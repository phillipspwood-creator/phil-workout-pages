#!/bin/bash
declare -A gifs=(
  ["incline_dumbbell_press"]="31"
  ["incline_barbell_press"]="30"
  ["overhead_barbell_press"]="20"
  ["lateral_raises"]="45"
  ["one_arm_lat_pulldown"]="51"
  ["vbar_lat_pulldown"]="50"
  ["tbar_row"]="11"
  ["face_pull"]="160"
  ["squats"]="1"
  ["romanian_deadlifts"]="75"
  ["hanging_leg_raises"]="110"
  ["cable_crunches"]="100"
  ["flat_barbell_bench_press"]="5"
  ["barbell_rows"]="10"
  ["arnold_press"]="21"
  ["weighted_dips"]="7"
  ["barbell_curls"]="85"
  ["tricep_extensions"]="90"
  ["cable_lateral_raises"]="46"
  ["ab_wheel_rollout"]="115"
)

for name in "${!gifs[@]}"; do
  id="${gifs[$name]}"
  url="https://cdn.jefit.com/assets/img/exercises/gifs/${id}.gif"
  curl -s -A "Mozilla/5.0" -o "${name}.gif" "$url"
  echo "✓ $name.gif"
done
