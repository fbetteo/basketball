#!/bin/bash

psql basketball -f sos/normalize_factors.sql
psql basketball -f sos/schedule_factors.sql

psql basketball -f sos/connectivity.sql > sos/connectivity.txt
psql basketball -f sos/current_ranking.sql > sos/current_ranking.txt
psql basketball -f sos/division_ranking.sql > sos/division_ranking.txt

psql basketball -f sos/test_predictions.sql > sos/test_predictions.txt

psql basketball -f sos/predict_daily.sql > sos/predict_daily.txt
