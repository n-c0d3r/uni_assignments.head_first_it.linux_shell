
# 8.
cd ~/lab1/data

touch exercise.txt

echo "ACM International Collegiate Programming Contest (ACM ICPC)\n
is the largest compuer programming contest in the world.\n
The ACM ICPC is\n
an activity of the ACM\n
that provides college students with an opportunity\n
to demonstrate and sharpen\n
their problem-solving and computing skills." > exercise.txt



# 9.
cat exercise.txt



# 10.
cp /etc/passwd ./passwd



# 11.
grep ssh ./passwd



# 12.
CROSS_PLATFORM_INITTAB=/etc/inittab

# /etc/inittab may be not exist on some unix or unix-like platforms
if [ -f "$CROSS_PLATFORM_INITTAB" ]; then
    ls -l "$CROSS_PLATFORM_INITTAB"
else

  # /etc/inittab is not exist on macos, so use another sample file
  CROSS_PLATFORM_INITTAB=/System/Library/LaunchDaemons/bootps.plist
  if [ -f "$CROSS_PLATFORM_INITTAB" ]; then
    ls -l "$CROSS_PLATFORM_INITTAB"
  else

    # /etc/inittab may not exist on ubuntu, so use another file
    CROSS_PLATFORM_INITTAB=/etc/init/rc-sysinit.conf
    if [ -f "$CROSS_PLATFORM_INITTAB" ]; then
        ls -l "$CROSS_PLATFORM_INITTAB"
    fi
  fi
fi



# 13. 
echo "owner's access right: 7 = 111 = read - write - execute "
echo "group's access right: 5 = 101 = read - execute "
echo "others's access right: 1 = execute "



# 14.
chmod u+r+w-x,g+r+w-x,o+r-w-x exercise.txt
ls -l exercise.txt



# 15.
touch tmp1
echo "The line-storm clouds fly tattered and swift,\n
  The road is forlorn all day,\n
Where a myriad snowy quartz stones lift,\n
  And the hoof-prints vanish away.\n
The roadside flowers, too wet for the bee,\n
  Expend their bloom in vain.\n
Come over the hills and far with me,\n
  And be my love in the rain." > tmp1
cat tmp1

touch tmp2
echo "The birds have less to say for themselves \n
  In the wood-world’s torn despair\n
Than now these numberless years the elves,\n
  Although they are no less there: " > tmp2
cat tmp2

echo "cp tmp1 tmp2: copy content of tmp1 to tmp2 but not remove the tmp1 file"
echo "mv tmp1 tmp2: copy content of tmp1 to tmp2 but remove the tmp1 file"