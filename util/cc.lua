#!/usr/bin/env lua

cc = 0

controls = {
  "gain",
  "position",
  "speed",
  "jitter",
  "size",
  "pitch",
  "fdbk",
  "density",
  "trig_mode",
  "spread",
  "cutoff",
  "rq",
  "send",
  "gain_slew",
  "jitter_slew",
  "size_slew",
  "density_slew",
  "pitch_slew",
  "cutoff_slew",
  "fade_time",
  "gate",
  "record"
}

-- byname = {}
-- for i = 1, #controls do
--   byname[controls[i]] = i
-- end

-- for k, v in pairs(byname) do
--   print(k, v)
-- end

--"1gate":"{accum=false, in_hi=127, dev=1, value=0, cc=0, ch=1, in_lo=0, out_lo=0, out_hi=1}"

for track = 1, 4 do
  for control = 1, #controls do
    print('"' .. track .. controls[control] .. '":"{accum=false, in_hi=127, dev=1, value=0, cc=' .. cc .. ', ch=1, in_lo=0, out_lo=0, out_hi=1}"')
    cc = cc + 1
  end  
end
