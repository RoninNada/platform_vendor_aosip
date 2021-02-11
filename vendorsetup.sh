for f in $(cat vendor/zero/zero.devices); do
    add_lunch_combo zero_$f-userdebug;
done
