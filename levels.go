// Package arclog is the main entity for this logger
package arclog

// Level of log severity
type Level int

// Log Levels
const (
	Invalid Level = iota - 1
	Info
	Warn
	Error
	Fatal
	Debug
)

var levelNames = [...]string{
	Info:  "info",
	Warn:  "warn",
	Error: "error",
	Fatal: "fatal",
	Debug: "debug",
}
