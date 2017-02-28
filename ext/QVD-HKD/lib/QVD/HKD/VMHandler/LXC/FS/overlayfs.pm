package QVD::HKD::VMHandler::LXC::FS::overlayfs;

use strict;
use warnings;
use QVD::Log;

use parent qw(QVD::HKD::VMHandler::LXC::FS);

sub init_backend {
    my ($hkd, $on_done, $on_error) = @_;
    $hkd->_run_cmd({log_error => 'Unable to load kernel module overlayfs',
                    on_done => sub { $hkd->$on_done }, on_error => sub { $hkd->$on_error } },
                    modprobe => $hkd->_cfg('vm.lxc.unionfs.overlayfs.module.name'))
}

sub _mount_root {
    my ($self, $rootfs, $basefs, $overlayfs, $subdir, $workdir) = @_;
    $basefs = File::Spec->join($basefs, $subdir) if defined $subdir;
    my $mount_type = $self->_cfg('vm.lxc.unionfs.overlayfs.module.name');
    my $overlayfs_version = $self->_cfg('command.version.mount.overlayfs');
    my $o = "rw,upperdir=$overlayfs,lowerdir=$basefs";
    $o .= ",workdir=$workdir" if $overlayfs_version > 1;

    $self->_run_cmd({log_error => "Unable to mount $mount_type mix of '$basefs' (ro) and '$overlayfs' (rw) into '$rootfs'"},
                    'mount',
                    -t => $mount_type,
                    -o => $o, $mount_type, $rootfs);
}

sub _remove_old_workdir {
    my $self = shift;
    my $workdir = $self->{workdir};
    -e $workdir or return $self->_on_done;
    return $self->_move_dir($workdir, $self->{workdir_old});
}

sub _make_workdir {
    my $self = shift;
    my $overlayfs_version = $self->_cfg('command.version.mount.overlayfs');
    return $self->_on_done if $overlayfs_version <= 1;

    my $workdir = $self->{workdir};
    if (-e $workdir) {
        ERROR "Work directory still exists at '$workdir' for VM $self->{vm_id}";
        return $self->_on_error;
    }
    return $self->_make_dir($workdir, $self->{basefs});
}

1;
