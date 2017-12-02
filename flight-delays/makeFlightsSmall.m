%% MATLAB script for creating the small sample file

%% Create datastore
ds = datastore('flights.csv');
ds.SelectedFormats = {'%d' ... % YEAR 
                      '%d' ... % MONTH
                      '%d' ... % DAY	
                      '%d' ... % DAY_OF_WEEK	
                      '%s' ... % AIRLINE
                      '%d' ... % FLIGHT_NUMBER
                      '%s' ... %TAIL_NUMBER	
                      '%s' ... % ORIGIN_AIRPORT	
                      '%s' ... % DESTINATION_AIRPORT	
                      '%d' ... % SCHEDULED_DEPARTURE
                      '%d' ... % DEPARTURE_TIME	
                      '%d' ... % DEPARTURE_DELAY	
                      '%d' ... % TAXI_OUT	
                      '%d' ... % WHEELS_OFF	
                      '%d' ... % SCHEDULED_TIME	
                      '%d' ... % ELAPSED_TIME	
                      '%d' ... % AIR_TIME	
                      '%d' ... % DISTANCE	
                      '%d' ... % WHEELS_ON	
                      '%d' ... % TAXI_IN	
                      '%d' ... % SCHEDULED_ARRIVAL	
                      '%d' ... % ARRIVAL_TIME	
                      '%d' ... % ARRIVAL_DELAY	
                      '%d' ... % DIVERTED	
                      '%d' ... % CANCELLED	
                      '%s' ... % CANCELLATION_REASON	
                      '%d' ... % AIR_SYSTEM_DELAY	
                      '%d' ... % SECURITY_DELAY	
                      '%d' ... % AIRLINE_DELAY	
                      '%d' ... % LATE_AIRCRAFT_DELAY	
                      '%d'}; % WEATHER_DELAY

%% Create tall array
dstall = tall(ds);

%% Create small random sampled subset
% Sample and gather
[flightssmall,ismall] = datasample(dstall,100000,'Replace',false);
flightssmall = gather(flightssmall);

% Write out file
writetable(flightssmall,'flightssmall.csv')

%% Break all samples into 10 files
nfiles = 10;
nsamples = gather(height(dstall));
nloop = round(nsamples/nfiles);

for ifile = 0:nfiles-1
    istart = ifile*nloop + 1;
    iend = istart + nloop - 1;
    if iend > nsamples
        flightloop = gather(dstall(istart:end,:));
    else
        flightloop = gather(dstall(istart:iend,:));
    end
    writetable(flightloop,['flights' num2str(ifile) '.csv'])
end
