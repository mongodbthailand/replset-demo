let cfg = rs.conf()
cfg.members[0].priority = 0;
cfg.members[0].votes = 0;
cfg.members[1].priority = 0;
cfg.members[1].votes = 0;
rs.reconfig(cfg, {force: true})