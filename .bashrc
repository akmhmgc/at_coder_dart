export PATH="/root/.local/bin:$PATH"

function ojd () {
  contest_num=`echo "$PWD" | awk -F '/' '{print $(NF-1)}'`
  problem_num=`echo "$PWD" | awk -F '/' '{print $NF}'`
  oj d -d tests https://atcoder.jp/contests/${contest_num}/tasks/${contest_num}_${problem_num}
}

function ojs () {
  contest_num=`echo "$PWD" | awk -F '/' '{print $(NF-1)}'`
  problem_num=`echo "$PWD" | awk -F '/' '{print $NF}'`
  oj s https://atcoder.jp/contests/${contest_num}/tasks/${contest_num}_${problem_num} $1 -l=dart
}

function ojt () {
  oj t -d tests -c "dart $1"
}

alias g="git"
