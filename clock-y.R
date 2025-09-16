library(clock)
zone <- "America/Los_Angeles"
# 1am Los Angeles time
today <- date_time_parse("2025-03-09 01:00:00", zone = zone)
date_time_set_zone(today, zone = "UTC")
#> [1] "2025-03-09 09:00:00 UTC"
# Tomorrow
tomorrow <- date_time_parse("2025-03-10 09:00:00", zone = "UTC")
date_time_set_zone(tomorrow, zone = zone)
#> [1] "2025-03-10 02:00:00 PDT"
# Shift from 2am->3am on the 9th. 1am local is no longer 9am UTC!
date_time_parse("2025-03-09 02:00:00", zone = zone)
#> Error:
#> ! Nonexistent time due to daylight saving time
