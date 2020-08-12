# Part 1
As a member of the public
So I can return bikes I’ve hired
I want to dock my bike at the docking station

As a member of the public,
So that I can use a bike,
I’d like a docking station to release a bike.

# Part 2
As a member of the public,
So that I am not confused and charged unnecessarily,
I’d like docking stations not to release bikes when there are none available.

As a system maintainer,
So that I can control the distribution of bikes,
I’d like docking stations not to accept more bikes than their capacity, which is by default 20.


# Part 3
As a member of the public,
So that I can use a good bike,
I’d like to see if a bike is working

As a member of the public,
So that I reduce the chance of getting a broken bike in future,
I’d like to report a bike as broken when I return it.

As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I’d like docking stations not to release broken bikes.

object | messages | scenario
docking station | release(no arg) (string) | no working bikes
docking station | release(no arg) (string) | some working bikes
bike | working

As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I’d like docking stations to accept returning bikes (broken or not).

Extensions

As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I’d like vans to take broken bikes from docking stations and deliver them to garages to be fixed.

object | messages
bike (status: broken)
Vans | collect(broken bike), deliver(bikes)
Garages

deliver
- pops the bike out of the rack
- stores them into the garage

collect(broken bikes)
-which ones are broken
-bike class
-check in docking station

-check in docking station which ones are broken.
-van needs to look at bikes at docking station (docking_station.bikes)
-work out which ones are broken.
-applied to the result.

Isolating unit tests

- deliver to the garage





As a system maintainer,
So that I can manage broken bikes and not disappoint users,
I’d like vans to collect working bikes from garages and distribute them to docking stations.
