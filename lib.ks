


function smoothTurn {
    parameter startPitch
    parameter endPitch
    parameter duration

    set startTime to time:seconds.

    until time:seconds - startTime >= duration {
	set fraction to (time:seconds - startTime) / duration.
	set pitch to startPitch + (endPitch - startPitch) * fraction.

	lock steering to heading(90, pitch).
	wait 0.
    }

    lock steering to heading(90, endPitch)

}
