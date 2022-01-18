#!/bin/bash

pid=$(ps -ef | grep "FlinkxAdminApplication" | grep -v grep | awk '{print $2}')
kill -15 $pid
echo "AdminApplication的进程已经停止!!!!"

pid=$(ps -ef | grep "ExecutorApplication" | grep -v grep | awk '{print $2}')
kill -15 $pid
echo "ExecutorApplication的进程已经停止!!!!"
