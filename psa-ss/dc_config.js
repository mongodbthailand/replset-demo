let cfg = rs.conf()
cfg.members[0].priority = 2;
cfg.members[0].votes = 1;
cfg.members[1].priority = 2;
cfg.members[1].votes = 1;
rs.reconfig(cfg, {force: true})