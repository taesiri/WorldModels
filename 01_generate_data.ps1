# Write-Output "Going to Start "  $args[2] " Envs"

for ($i = 1; $i -lt $args[1]; $i++) {
    # Write-Output $i
    Start-Process -NoNewWindow python -ArgumentList "01_generate_data.py", $args[0], "--total_episodes", $args[2], "--time_steps", $args[3], "--render", $args[4], "--action_refresh_rate", $args[5]
    # Start-Job { python 01_generate_data.py $args[0] --total_episodes $args[2] --time_steps $args[3] --render $args[4] --action_refresh_rate $args[5] }
    Start-Sleep -s 1
}

# python 01_generate_data.py car_racing --total_episodes 125 --time_steps 300 --render 0 --action_refresh_rate 5
# powershell -ExecutionPolicy ByPass -File 01_generate_data.ps1  car_racing 8 125 300 0 5