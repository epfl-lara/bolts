; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!749154 () Bool)

(assert start!749154)

(declare-fun b!7937862 () Bool)

(declare-fun e!4683808 () Bool)

(declare-datatypes ((T!145982 0))(
  ( (T!145983 (val!32086 Int)) )
))
(declare-datatypes ((List!74598 0))(
  ( (Nil!74474) (Cons!74474 (h!80922 T!145982) (t!390315 List!74598)) )
))
(declare-datatypes ((IArray!31913 0))(
  ( (IArray!31914 (innerList!16014 List!74598)) )
))
(declare-datatypes ((Conc!15926 0))(
  ( (Node!15926 (left!56910 Conc!15926) (right!57240 Conc!15926) (csize!32082 Int) (cheight!16137 Int)) (Leaf!30271 (xs!19324 IArray!31913) (csize!32083 Int)) (Empty!15926) )
))
(declare-fun ys!40 () Conc!15926)

(declare-fun tp!2360018 () Bool)

(declare-fun tp!2360017 () Bool)

(declare-fun inv!95850 (Conc!15926) Bool)

(assert (=> b!7937862 (= e!4683808 (and (inv!95850 (left!56910 ys!40)) tp!2360018 (inv!95850 (right!57240 ys!40)) tp!2360017))))

(declare-fun res!3149232 () Bool)

(declare-fun e!4683809 () Bool)

(assert (=> start!749154 (=> (not res!3149232) (not e!4683809))))

(declare-fun xs!273 () Conc!15926)

(assert (=> start!749154 (= res!3149232 (and (not (= xs!273 Empty!15926)) (not (= ys!40 Empty!15926))))))

(assert (=> start!749154 e!4683809))

(declare-fun e!4683806 () Bool)

(assert (=> start!749154 (and (inv!95850 xs!273) e!4683806)))

(assert (=> start!749154 (and (inv!95850 ys!40) e!4683808)))

(declare-fun b!7937863 () Bool)

(declare-fun e!4683807 () Bool)

(declare-fun inv!95851 (IArray!31913) Bool)

(assert (=> b!7937863 (= e!4683806 (and (inv!95851 (xs!19324 xs!273)) e!4683807))))

(declare-fun b!7937864 () Bool)

(declare-fun tp!2360022 () Bool)

(assert (=> b!7937864 (= e!4683807 tp!2360022)))

(declare-fun b!7937865 () Bool)

(declare-fun size!43298 (Conc!15926) Int)

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2233 (Conc!15926) Int)

(assert (=> b!7937865 (= e!4683809 (not (inv!95850 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))))))

(declare-fun b!7937866 () Bool)

(declare-fun e!4683810 () Bool)

(declare-fun tp!2360019 () Bool)

(assert (=> b!7937866 (= e!4683810 tp!2360019)))

(declare-fun b!7937867 () Bool)

(assert (=> b!7937867 (= e!4683808 (and (inv!95851 (xs!19324 ys!40)) e!4683810))))

(declare-fun tp!2360020 () Bool)

(declare-fun b!7937868 () Bool)

(declare-fun tp!2360021 () Bool)

(assert (=> b!7937868 (= e!4683806 (and (inv!95850 (left!56910 xs!273)) tp!2360021 (inv!95850 (right!57240 xs!273)) tp!2360020))))

(assert (= (and start!749154 res!3149232) b!7937865))

(get-info :version)

(assert (= (and start!749154 ((_ is Node!15926) xs!273)) b!7937868))

(assert (= b!7937863 b!7937864))

(assert (= (and start!749154 ((_ is Leaf!30271) xs!273)) b!7937863))

(assert (= (and start!749154 ((_ is Node!15926) ys!40)) b!7937862))

(assert (= b!7937867 b!7937866))

(assert (= (and start!749154 ((_ is Leaf!30271) ys!40)) b!7937867))

(declare-fun m!8326744 () Bool)

(assert (=> start!749154 m!8326744))

(declare-fun m!8326746 () Bool)

(assert (=> start!749154 m!8326746))

(declare-fun m!8326748 () Bool)

(assert (=> b!7937865 m!8326748))

(declare-fun m!8326750 () Bool)

(assert (=> b!7937865 m!8326750))

(declare-fun m!8326752 () Bool)

(assert (=> b!7937865 m!8326752))

(declare-fun m!8326754 () Bool)

(assert (=> b!7937865 m!8326754))

(declare-fun m!8326756 () Bool)

(assert (=> b!7937865 m!8326756))

(declare-fun m!8326758 () Bool)

(assert (=> b!7937865 m!8326758))

(assert (=> b!7937865 m!8326750))

(assert (=> b!7937865 m!8326748))

(declare-fun m!8326760 () Bool)

(assert (=> b!7937863 m!8326760))

(declare-fun m!8326762 () Bool)

(assert (=> b!7937868 m!8326762))

(declare-fun m!8326764 () Bool)

(assert (=> b!7937868 m!8326764))

(declare-fun m!8326766 () Bool)

(assert (=> b!7937862 m!8326766))

(declare-fun m!8326768 () Bool)

(assert (=> b!7937862 m!8326768))

(declare-fun m!8326770 () Bool)

(assert (=> b!7937867 m!8326770))

(check-sat (not b!7937863) (not b!7937862) (not b!7937866) (not b!7937868) (not b!7937865) (not b!7937864) (not start!749154) (not b!7937867))
(check-sat)
(get-model)

(declare-fun d!2374059 () Bool)

(declare-fun size!43300 (List!74598) Int)

(assert (=> d!2374059 (= (inv!95851 (xs!19324 xs!273)) (<= (size!43300 (innerList!16014 (xs!19324 xs!273))) 2147483647))))

(declare-fun bs!1969283 () Bool)

(assert (= bs!1969283 d!2374059))

(declare-fun m!8326772 () Bool)

(assert (=> bs!1969283 m!8326772))

(assert (=> b!7937863 d!2374059))

(declare-fun d!2374061 () Bool)

(declare-fun c!1458363 () Bool)

(assert (=> d!2374061 (= c!1458363 ((_ is Node!15926) (left!56910 xs!273)))))

(declare-fun e!4683815 () Bool)

(assert (=> d!2374061 (= (inv!95850 (left!56910 xs!273)) e!4683815)))

(declare-fun b!7937875 () Bool)

(declare-fun inv!95853 (Conc!15926) Bool)

(assert (=> b!7937875 (= e!4683815 (inv!95853 (left!56910 xs!273)))))

(declare-fun b!7937876 () Bool)

(declare-fun e!4683816 () Bool)

(assert (=> b!7937876 (= e!4683815 e!4683816)))

(declare-fun res!3149235 () Bool)

(assert (=> b!7937876 (= res!3149235 (not ((_ is Leaf!30271) (left!56910 xs!273))))))

(assert (=> b!7937876 (=> res!3149235 e!4683816)))

(declare-fun b!7937877 () Bool)

(declare-fun inv!95855 (Conc!15926) Bool)

(assert (=> b!7937877 (= e!4683816 (inv!95855 (left!56910 xs!273)))))

(assert (= (and d!2374061 c!1458363) b!7937875))

(assert (= (and d!2374061 (not c!1458363)) b!7937876))

(assert (= (and b!7937876 (not res!3149235)) b!7937877))

(declare-fun m!8326776 () Bool)

(assert (=> b!7937875 m!8326776))

(declare-fun m!8326778 () Bool)

(assert (=> b!7937877 m!8326778))

(assert (=> b!7937868 d!2374061))

(declare-fun d!2374067 () Bool)

(declare-fun c!1458366 () Bool)

(assert (=> d!2374067 (= c!1458366 ((_ is Node!15926) (right!57240 xs!273)))))

(declare-fun e!4683819 () Bool)

(assert (=> d!2374067 (= (inv!95850 (right!57240 xs!273)) e!4683819)))

(declare-fun b!7937882 () Bool)

(assert (=> b!7937882 (= e!4683819 (inv!95853 (right!57240 xs!273)))))

(declare-fun b!7937883 () Bool)

(declare-fun e!4683820 () Bool)

(assert (=> b!7937883 (= e!4683819 e!4683820)))

(declare-fun res!3149236 () Bool)

(assert (=> b!7937883 (= res!3149236 (not ((_ is Leaf!30271) (right!57240 xs!273))))))

(assert (=> b!7937883 (=> res!3149236 e!4683820)))

(declare-fun b!7937884 () Bool)

(assert (=> b!7937884 (= e!4683820 (inv!95855 (right!57240 xs!273)))))

(assert (= (and d!2374067 c!1458366) b!7937882))

(assert (= (and d!2374067 (not c!1458366)) b!7937883))

(assert (= (and b!7937883 (not res!3149236)) b!7937884))

(declare-fun m!8326780 () Bool)

(assert (=> b!7937882 m!8326780))

(declare-fun m!8326782 () Bool)

(assert (=> b!7937884 m!8326782))

(assert (=> b!7937868 d!2374067))

(declare-fun d!2374069 () Bool)

(declare-fun c!1458367 () Bool)

(assert (=> d!2374069 (= c!1458367 ((_ is Node!15926) xs!273))))

(declare-fun e!4683823 () Bool)

(assert (=> d!2374069 (= (inv!95850 xs!273) e!4683823)))

(declare-fun b!7937887 () Bool)

(assert (=> b!7937887 (= e!4683823 (inv!95853 xs!273))))

(declare-fun b!7937888 () Bool)

(declare-fun e!4683824 () Bool)

(assert (=> b!7937888 (= e!4683823 e!4683824)))

(declare-fun res!3149239 () Bool)

(assert (=> b!7937888 (= res!3149239 (not ((_ is Leaf!30271) xs!273)))))

(assert (=> b!7937888 (=> res!3149239 e!4683824)))

(declare-fun b!7937889 () Bool)

(assert (=> b!7937889 (= e!4683824 (inv!95855 xs!273))))

(assert (= (and d!2374069 c!1458367) b!7937887))

(assert (= (and d!2374069 (not c!1458367)) b!7937888))

(assert (= (and b!7937888 (not res!3149239)) b!7937889))

(declare-fun m!8326784 () Bool)

(assert (=> b!7937887 m!8326784))

(declare-fun m!8326786 () Bool)

(assert (=> b!7937889 m!8326786))

(assert (=> start!749154 d!2374069))

(declare-fun d!2374071 () Bool)

(declare-fun c!1458368 () Bool)

(assert (=> d!2374071 (= c!1458368 ((_ is Node!15926) ys!40))))

(declare-fun e!4683825 () Bool)

(assert (=> d!2374071 (= (inv!95850 ys!40) e!4683825)))

(declare-fun b!7937890 () Bool)

(assert (=> b!7937890 (= e!4683825 (inv!95853 ys!40))))

(declare-fun b!7937891 () Bool)

(declare-fun e!4683826 () Bool)

(assert (=> b!7937891 (= e!4683825 e!4683826)))

(declare-fun res!3149240 () Bool)

(assert (=> b!7937891 (= res!3149240 (not ((_ is Leaf!30271) ys!40)))))

(assert (=> b!7937891 (=> res!3149240 e!4683826)))

(declare-fun b!7937892 () Bool)

(assert (=> b!7937892 (= e!4683826 (inv!95855 ys!40))))

(assert (= (and d!2374071 c!1458368) b!7937890))

(assert (= (and d!2374071 (not c!1458368)) b!7937891))

(assert (= (and b!7937891 (not res!3149240)) b!7937892))

(declare-fun m!8326788 () Bool)

(assert (=> b!7937890 m!8326788))

(declare-fun m!8326790 () Bool)

(assert (=> b!7937892 m!8326790))

(assert (=> start!749154 d!2374071))

(declare-fun d!2374073 () Bool)

(declare-fun c!1458370 () Bool)

(assert (=> d!2374073 (= c!1458370 ((_ is Node!15926) (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))))))

(declare-fun e!4683829 () Bool)

(assert (=> d!2374073 (= (inv!95850 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) e!4683829)))

(declare-fun b!7937896 () Bool)

(assert (=> b!7937896 (= e!4683829 (inv!95853 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))))))

(declare-fun b!7937897 () Bool)

(declare-fun e!4683830 () Bool)

(assert (=> b!7937897 (= e!4683829 e!4683830)))

(declare-fun res!3149242 () Bool)

(assert (=> b!7937897 (= res!3149242 (not ((_ is Leaf!30271) (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))))))

(assert (=> b!7937897 (=> res!3149242 e!4683830)))

(declare-fun b!7937898 () Bool)

(assert (=> b!7937898 (= e!4683830 (inv!95855 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))))))

(assert (= (and d!2374073 c!1458370) b!7937896))

(assert (= (and d!2374073 (not c!1458370)) b!7937897))

(assert (= (and b!7937897 (not res!3149242)) b!7937898))

(declare-fun m!8326796 () Bool)

(assert (=> b!7937896 m!8326796))

(declare-fun m!8326798 () Bool)

(assert (=> b!7937898 m!8326798))

(assert (=> b!7937865 d!2374073))

(declare-fun d!2374077 () Bool)

(assert (=> d!2374077 (= (height!2233 ys!40) (ite ((_ is Empty!15926) ys!40) 0 (ite ((_ is Leaf!30271) ys!40) 1 (cheight!16137 ys!40))))))

(assert (=> b!7937865 d!2374077))

(declare-fun d!2374087 () Bool)

(assert (=> d!2374087 (= (max!0 (height!2233 xs!273) (height!2233 ys!40)) (ite (< (height!2233 xs!273) (height!2233 ys!40)) (height!2233 ys!40) (height!2233 xs!273)))))

(assert (=> b!7937865 d!2374087))

(declare-fun d!2374095 () Bool)

(declare-fun lt!2695603 () Int)

(declare-fun list!19452 (Conc!15926) List!74598)

(assert (=> d!2374095 (= lt!2695603 (size!43300 (list!19452 ys!40)))))

(assert (=> d!2374095 (= lt!2695603 (ite ((_ is Empty!15926) ys!40) 0 (ite ((_ is Leaf!30271) ys!40) (csize!32083 ys!40) (csize!32082 ys!40))))))

(assert (=> d!2374095 (= (size!43298 ys!40) lt!2695603)))

(declare-fun bs!1969286 () Bool)

(assert (= bs!1969286 d!2374095))

(declare-fun m!8326826 () Bool)

(assert (=> bs!1969286 m!8326826))

(assert (=> bs!1969286 m!8326826))

(declare-fun m!8326828 () Bool)

(assert (=> bs!1969286 m!8326828))

(assert (=> b!7937865 d!2374095))

(declare-fun d!2374101 () Bool)

(declare-fun lt!2695604 () Int)

(assert (=> d!2374101 (= lt!2695604 (size!43300 (list!19452 xs!273)))))

(assert (=> d!2374101 (= lt!2695604 (ite ((_ is Empty!15926) xs!273) 0 (ite ((_ is Leaf!30271) xs!273) (csize!32083 xs!273) (csize!32082 xs!273))))))

(assert (=> d!2374101 (= (size!43298 xs!273) lt!2695604)))

(declare-fun bs!1969287 () Bool)

(assert (= bs!1969287 d!2374101))

(declare-fun m!8326830 () Bool)

(assert (=> bs!1969287 m!8326830))

(assert (=> bs!1969287 m!8326830))

(declare-fun m!8326832 () Bool)

(assert (=> bs!1969287 m!8326832))

(assert (=> b!7937865 d!2374101))

(declare-fun d!2374103 () Bool)

(assert (=> d!2374103 (= (height!2233 xs!273) (ite ((_ is Empty!15926) xs!273) 0 (ite ((_ is Leaf!30271) xs!273) 1 (cheight!16137 xs!273))))))

(assert (=> b!7937865 d!2374103))

(declare-fun d!2374105 () Bool)

(assert (=> d!2374105 (= (inv!95851 (xs!19324 ys!40)) (<= (size!43300 (innerList!16014 (xs!19324 ys!40))) 2147483647))))

(declare-fun bs!1969288 () Bool)

(assert (= bs!1969288 d!2374105))

(declare-fun m!8326834 () Bool)

(assert (=> bs!1969288 m!8326834))

(assert (=> b!7937867 d!2374105))

(declare-fun d!2374107 () Bool)

(declare-fun c!1458377 () Bool)

(assert (=> d!2374107 (= c!1458377 ((_ is Node!15926) (left!56910 ys!40)))))

(declare-fun e!4683843 () Bool)

(assert (=> d!2374107 (= (inv!95850 (left!56910 ys!40)) e!4683843)))

(declare-fun b!7937917 () Bool)

(assert (=> b!7937917 (= e!4683843 (inv!95853 (left!56910 ys!40)))))

(declare-fun b!7937918 () Bool)

(declare-fun e!4683844 () Bool)

(assert (=> b!7937918 (= e!4683843 e!4683844)))

(declare-fun res!3149249 () Bool)

(assert (=> b!7937918 (= res!3149249 (not ((_ is Leaf!30271) (left!56910 ys!40))))))

(assert (=> b!7937918 (=> res!3149249 e!4683844)))

(declare-fun b!7937919 () Bool)

(assert (=> b!7937919 (= e!4683844 (inv!95855 (left!56910 ys!40)))))

(assert (= (and d!2374107 c!1458377) b!7937917))

(assert (= (and d!2374107 (not c!1458377)) b!7937918))

(assert (= (and b!7937918 (not res!3149249)) b!7937919))

(declare-fun m!8326836 () Bool)

(assert (=> b!7937917 m!8326836))

(declare-fun m!8326839 () Bool)

(assert (=> b!7937919 m!8326839))

(assert (=> b!7937862 d!2374107))

(declare-fun d!2374109 () Bool)

(declare-fun c!1458378 () Bool)

(assert (=> d!2374109 (= c!1458378 ((_ is Node!15926) (right!57240 ys!40)))))

(declare-fun e!4683845 () Bool)

(assert (=> d!2374109 (= (inv!95850 (right!57240 ys!40)) e!4683845)))

(declare-fun b!7937920 () Bool)

(assert (=> b!7937920 (= e!4683845 (inv!95853 (right!57240 ys!40)))))

(declare-fun b!7937921 () Bool)

(declare-fun e!4683846 () Bool)

(assert (=> b!7937921 (= e!4683845 e!4683846)))

(declare-fun res!3149250 () Bool)

(assert (=> b!7937921 (= res!3149250 (not ((_ is Leaf!30271) (right!57240 ys!40))))))

(assert (=> b!7937921 (=> res!3149250 e!4683846)))

(declare-fun b!7937922 () Bool)

(assert (=> b!7937922 (= e!4683846 (inv!95855 (right!57240 ys!40)))))

(assert (= (and d!2374109 c!1458378) b!7937920))

(assert (= (and d!2374109 (not c!1458378)) b!7937921))

(assert (= (and b!7937921 (not res!3149250)) b!7937922))

(declare-fun m!8326848 () Bool)

(assert (=> b!7937920 m!8326848))

(declare-fun m!8326850 () Bool)

(assert (=> b!7937922 m!8326850))

(assert (=> b!7937862 d!2374109))

(declare-fun e!4683859 () Bool)

(declare-fun b!7937944 () Bool)

(declare-fun tp!2360039 () Bool)

(declare-fun tp!2360040 () Bool)

(assert (=> b!7937944 (= e!4683859 (and (inv!95850 (left!56910 (left!56910 xs!273))) tp!2360039 (inv!95850 (right!57240 (left!56910 xs!273))) tp!2360040))))

(declare-fun b!7937946 () Bool)

(declare-fun e!4683858 () Bool)

(declare-fun tp!2360038 () Bool)

(assert (=> b!7937946 (= e!4683858 tp!2360038)))

(declare-fun b!7937945 () Bool)

(assert (=> b!7937945 (= e!4683859 (and (inv!95851 (xs!19324 (left!56910 xs!273))) e!4683858))))

(assert (=> b!7937868 (= tp!2360021 (and (inv!95850 (left!56910 xs!273)) e!4683859))))

(assert (= (and b!7937868 ((_ is Node!15926) (left!56910 xs!273))) b!7937944))

(assert (= b!7937945 b!7937946))

(assert (= (and b!7937868 ((_ is Leaf!30271) (left!56910 xs!273))) b!7937945))

(declare-fun m!8326852 () Bool)

(assert (=> b!7937944 m!8326852))

(declare-fun m!8326854 () Bool)

(assert (=> b!7937944 m!8326854))

(declare-fun m!8326856 () Bool)

(assert (=> b!7937945 m!8326856))

(assert (=> b!7937868 m!8326762))

(declare-fun tp!2360045 () Bool)

(declare-fun b!7937950 () Bool)

(declare-fun tp!2360046 () Bool)

(declare-fun e!4683863 () Bool)

(assert (=> b!7937950 (= e!4683863 (and (inv!95850 (left!56910 (right!57240 xs!273))) tp!2360045 (inv!95850 (right!57240 (right!57240 xs!273))) tp!2360046))))

(declare-fun b!7937952 () Bool)

(declare-fun e!4683862 () Bool)

(declare-fun tp!2360044 () Bool)

(assert (=> b!7937952 (= e!4683862 tp!2360044)))

(declare-fun b!7937951 () Bool)

(assert (=> b!7937951 (= e!4683863 (and (inv!95851 (xs!19324 (right!57240 xs!273))) e!4683862))))

(assert (=> b!7937868 (= tp!2360020 (and (inv!95850 (right!57240 xs!273)) e!4683863))))

(assert (= (and b!7937868 ((_ is Node!15926) (right!57240 xs!273))) b!7937950))

(assert (= b!7937951 b!7937952))

(assert (= (and b!7937868 ((_ is Leaf!30271) (right!57240 xs!273))) b!7937951))

(declare-fun m!8326864 () Bool)

(assert (=> b!7937950 m!8326864))

(declare-fun m!8326866 () Bool)

(assert (=> b!7937950 m!8326866))

(declare-fun m!8326870 () Bool)

(assert (=> b!7937951 m!8326870))

(assert (=> b!7937868 m!8326764))

(declare-fun b!7937966 () Bool)

(declare-fun e!4683872 () Bool)

(declare-fun tp_is_empty!53281 () Bool)

(declare-fun tp!2360058 () Bool)

(assert (=> b!7937966 (= e!4683872 (and tp_is_empty!53281 tp!2360058))))

(assert (=> b!7937864 (= tp!2360022 e!4683872)))

(assert (= (and b!7937864 ((_ is Cons!74474) (innerList!16014 (xs!19324 xs!273)))) b!7937966))

(declare-fun b!7937967 () Bool)

(declare-fun e!4683873 () Bool)

(declare-fun tp!2360059 () Bool)

(assert (=> b!7937967 (= e!4683873 (and tp_is_empty!53281 tp!2360059))))

(assert (=> b!7937866 (= tp!2360019 e!4683873)))

(assert (= (and b!7937866 ((_ is Cons!74474) (innerList!16014 (xs!19324 ys!40)))) b!7937967))

(declare-fun tp!2360061 () Bool)

(declare-fun b!7937968 () Bool)

(declare-fun tp!2360062 () Bool)

(declare-fun e!4683875 () Bool)

(assert (=> b!7937968 (= e!4683875 (and (inv!95850 (left!56910 (left!56910 ys!40))) tp!2360061 (inv!95850 (right!57240 (left!56910 ys!40))) tp!2360062))))

(declare-fun b!7937970 () Bool)

(declare-fun e!4683874 () Bool)

(declare-fun tp!2360060 () Bool)

(assert (=> b!7937970 (= e!4683874 tp!2360060)))

(declare-fun b!7937969 () Bool)

(assert (=> b!7937969 (= e!4683875 (and (inv!95851 (xs!19324 (left!56910 ys!40))) e!4683874))))

(assert (=> b!7937862 (= tp!2360018 (and (inv!95850 (left!56910 ys!40)) e!4683875))))

(assert (= (and b!7937862 ((_ is Node!15926) (left!56910 ys!40))) b!7937968))

(assert (= b!7937969 b!7937970))

(assert (= (and b!7937862 ((_ is Leaf!30271) (left!56910 ys!40))) b!7937969))

(declare-fun m!8326888 () Bool)

(assert (=> b!7937968 m!8326888))

(declare-fun m!8326890 () Bool)

(assert (=> b!7937968 m!8326890))

(declare-fun m!8326892 () Bool)

(assert (=> b!7937969 m!8326892))

(assert (=> b!7937862 m!8326766))

(declare-fun b!7937972 () Bool)

(declare-fun tp!2360065 () Bool)

(declare-fun e!4683878 () Bool)

(declare-fun tp!2360066 () Bool)

(assert (=> b!7937972 (= e!4683878 (and (inv!95850 (left!56910 (right!57240 ys!40))) tp!2360065 (inv!95850 (right!57240 (right!57240 ys!40))) tp!2360066))))

(declare-fun b!7937974 () Bool)

(declare-fun e!4683877 () Bool)

(declare-fun tp!2360064 () Bool)

(assert (=> b!7937974 (= e!4683877 tp!2360064)))

(declare-fun b!7937973 () Bool)

(assert (=> b!7937973 (= e!4683878 (and (inv!95851 (xs!19324 (right!57240 ys!40))) e!4683877))))

(assert (=> b!7937862 (= tp!2360017 (and (inv!95850 (right!57240 ys!40)) e!4683878))))

(assert (= (and b!7937862 ((_ is Node!15926) (right!57240 ys!40))) b!7937972))

(assert (= b!7937973 b!7937974))

(assert (= (and b!7937862 ((_ is Leaf!30271) (right!57240 ys!40))) b!7937973))

(declare-fun m!8326894 () Bool)

(assert (=> b!7937972 m!8326894))

(declare-fun m!8326896 () Bool)

(assert (=> b!7937972 m!8326896))

(declare-fun m!8326898 () Bool)

(assert (=> b!7937973 m!8326898))

(assert (=> b!7937862 m!8326768))

(check-sat tp_is_empty!53281 (not b!7937966) (not b!7937952) (not b!7937890) (not b!7937862) (not d!2374105) (not b!7937875) (not b!7937967) (not b!7937972) (not b!7937944) (not d!2374095) (not b!7937970) (not b!7937919) (not b!7937917) (not b!7937889) (not b!7937974) (not b!7937868) (not b!7937968) (not b!7937892) (not b!7937973) (not b!7937969) (not b!7937882) (not b!7937920) (not d!2374101) (not b!7937951) (not b!7937898) (not b!7937896) (not b!7937887) (not b!7937922) (not b!7937950) (not b!7937884) (not d!2374059) (not b!7937877) (not b!7937946) (not b!7937945))
(check-sat)
(get-model)

(declare-fun d!2374115 () Bool)

(declare-fun res!3149255 () Bool)

(declare-fun e!4683881 () Bool)

(assert (=> d!2374115 (=> (not res!3149255) (not e!4683881))))

(declare-fun list!19454 (IArray!31913) List!74598)

(assert (=> d!2374115 (= res!3149255 (<= (size!43300 (list!19454 (xs!19324 (right!57240 ys!40)))) 512))))

(assert (=> d!2374115 (= (inv!95855 (right!57240 ys!40)) e!4683881)))

(declare-fun b!7937979 () Bool)

(declare-fun res!3149256 () Bool)

(assert (=> b!7937979 (=> (not res!3149256) (not e!4683881))))

(assert (=> b!7937979 (= res!3149256 (= (csize!32083 (right!57240 ys!40)) (size!43300 (list!19454 (xs!19324 (right!57240 ys!40))))))))

(declare-fun b!7937980 () Bool)

(assert (=> b!7937980 (= e!4683881 (and (> (csize!32083 (right!57240 ys!40)) 0) (<= (csize!32083 (right!57240 ys!40)) 512)))))

(assert (= (and d!2374115 res!3149255) b!7937979))

(assert (= (and b!7937979 res!3149256) b!7937980))

(declare-fun m!8326900 () Bool)

(assert (=> d!2374115 m!8326900))

(assert (=> d!2374115 m!8326900))

(declare-fun m!8326902 () Bool)

(assert (=> d!2374115 m!8326902))

(assert (=> b!7937979 m!8326900))

(assert (=> b!7937979 m!8326900))

(assert (=> b!7937979 m!8326902))

(assert (=> b!7937922 d!2374115))

(declare-fun d!2374117 () Bool)

(declare-fun res!3149257 () Bool)

(declare-fun e!4683882 () Bool)

(assert (=> d!2374117 (=> (not res!3149257) (not e!4683882))))

(assert (=> d!2374117 (= res!3149257 (<= (size!43300 (list!19454 (xs!19324 ys!40))) 512))))

(assert (=> d!2374117 (= (inv!95855 ys!40) e!4683882)))

(declare-fun b!7937981 () Bool)

(declare-fun res!3149258 () Bool)

(assert (=> b!7937981 (=> (not res!3149258) (not e!4683882))))

(assert (=> b!7937981 (= res!3149258 (= (csize!32083 ys!40) (size!43300 (list!19454 (xs!19324 ys!40)))))))

(declare-fun b!7937982 () Bool)

(assert (=> b!7937982 (= e!4683882 (and (> (csize!32083 ys!40) 0) (<= (csize!32083 ys!40) 512)))))

(assert (= (and d!2374117 res!3149257) b!7937981))

(assert (= (and b!7937981 res!3149258) b!7937982))

(declare-fun m!8326904 () Bool)

(assert (=> d!2374117 m!8326904))

(assert (=> d!2374117 m!8326904))

(declare-fun m!8326906 () Bool)

(assert (=> d!2374117 m!8326906))

(assert (=> b!7937981 m!8326904))

(assert (=> b!7937981 m!8326904))

(assert (=> b!7937981 m!8326906))

(assert (=> b!7937892 d!2374117))

(declare-fun d!2374119 () Bool)

(declare-fun res!3149265 () Bool)

(declare-fun e!4683885 () Bool)

(assert (=> d!2374119 (=> (not res!3149265) (not e!4683885))))

(assert (=> d!2374119 (= res!3149265 (= (csize!32082 (right!57240 ys!40)) (+ (size!43298 (left!56910 (right!57240 ys!40))) (size!43298 (right!57240 (right!57240 ys!40))))))))

(assert (=> d!2374119 (= (inv!95853 (right!57240 ys!40)) e!4683885)))

(declare-fun b!7937989 () Bool)

(declare-fun res!3149266 () Bool)

(assert (=> b!7937989 (=> (not res!3149266) (not e!4683885))))

(assert (=> b!7937989 (= res!3149266 (and (not (= (left!56910 (right!57240 ys!40)) Empty!15926)) (not (= (right!57240 (right!57240 ys!40)) Empty!15926))))))

(declare-fun b!7937990 () Bool)

(declare-fun res!3149267 () Bool)

(assert (=> b!7937990 (=> (not res!3149267) (not e!4683885))))

(assert (=> b!7937990 (= res!3149267 (= (cheight!16137 (right!57240 ys!40)) (+ (max!0 (height!2233 (left!56910 (right!57240 ys!40))) (height!2233 (right!57240 (right!57240 ys!40)))) 1)))))

(declare-fun b!7937991 () Bool)

(assert (=> b!7937991 (= e!4683885 (<= 0 (cheight!16137 (right!57240 ys!40))))))

(assert (= (and d!2374119 res!3149265) b!7937989))

(assert (= (and b!7937989 res!3149266) b!7937990))

(assert (= (and b!7937990 res!3149267) b!7937991))

(declare-fun m!8326908 () Bool)

(assert (=> d!2374119 m!8326908))

(declare-fun m!8326910 () Bool)

(assert (=> d!2374119 m!8326910))

(declare-fun m!8326912 () Bool)

(assert (=> b!7937990 m!8326912))

(declare-fun m!8326914 () Bool)

(assert (=> b!7937990 m!8326914))

(assert (=> b!7937990 m!8326912))

(assert (=> b!7937990 m!8326914))

(declare-fun m!8326916 () Bool)

(assert (=> b!7937990 m!8326916))

(assert (=> b!7937920 d!2374119))

(declare-fun d!2374121 () Bool)

(declare-fun c!1458379 () Bool)

(assert (=> d!2374121 (= c!1458379 ((_ is Node!15926) (left!56910 (left!56910 xs!273))))))

(declare-fun e!4683886 () Bool)

(assert (=> d!2374121 (= (inv!95850 (left!56910 (left!56910 xs!273))) e!4683886)))

(declare-fun b!7937992 () Bool)

(assert (=> b!7937992 (= e!4683886 (inv!95853 (left!56910 (left!56910 xs!273))))))

(declare-fun b!7937993 () Bool)

(declare-fun e!4683887 () Bool)

(assert (=> b!7937993 (= e!4683886 e!4683887)))

(declare-fun res!3149268 () Bool)

(assert (=> b!7937993 (= res!3149268 (not ((_ is Leaf!30271) (left!56910 (left!56910 xs!273)))))))

(assert (=> b!7937993 (=> res!3149268 e!4683887)))

(declare-fun b!7937994 () Bool)

(assert (=> b!7937994 (= e!4683887 (inv!95855 (left!56910 (left!56910 xs!273))))))

(assert (= (and d!2374121 c!1458379) b!7937992))

(assert (= (and d!2374121 (not c!1458379)) b!7937993))

(assert (= (and b!7937993 (not res!3149268)) b!7937994))

(declare-fun m!8326918 () Bool)

(assert (=> b!7937992 m!8326918))

(declare-fun m!8326920 () Bool)

(assert (=> b!7937994 m!8326920))

(assert (=> b!7937944 d!2374121))

(declare-fun d!2374123 () Bool)

(declare-fun c!1458380 () Bool)

(assert (=> d!2374123 (= c!1458380 ((_ is Node!15926) (right!57240 (left!56910 xs!273))))))

(declare-fun e!4683888 () Bool)

(assert (=> d!2374123 (= (inv!95850 (right!57240 (left!56910 xs!273))) e!4683888)))

(declare-fun b!7937995 () Bool)

(assert (=> b!7937995 (= e!4683888 (inv!95853 (right!57240 (left!56910 xs!273))))))

(declare-fun b!7937996 () Bool)

(declare-fun e!4683889 () Bool)

(assert (=> b!7937996 (= e!4683888 e!4683889)))

(declare-fun res!3149269 () Bool)

(assert (=> b!7937996 (= res!3149269 (not ((_ is Leaf!30271) (right!57240 (left!56910 xs!273)))))))

(assert (=> b!7937996 (=> res!3149269 e!4683889)))

(declare-fun b!7937997 () Bool)

(assert (=> b!7937997 (= e!4683889 (inv!95855 (right!57240 (left!56910 xs!273))))))

(assert (= (and d!2374123 c!1458380) b!7937995))

(assert (= (and d!2374123 (not c!1458380)) b!7937996))

(assert (= (and b!7937996 (not res!3149269)) b!7937997))

(declare-fun m!8326922 () Bool)

(assert (=> b!7937995 m!8326922))

(declare-fun m!8326924 () Bool)

(assert (=> b!7937997 m!8326924))

(assert (=> b!7937944 d!2374123))

(declare-fun d!2374125 () Bool)

(declare-fun lt!2695611 () Int)

(assert (=> d!2374125 (>= lt!2695611 0)))

(declare-fun e!4683892 () Int)

(assert (=> d!2374125 (= lt!2695611 e!4683892)))

(declare-fun c!1458383 () Bool)

(assert (=> d!2374125 (= c!1458383 ((_ is Nil!74474) (list!19452 xs!273)))))

(assert (=> d!2374125 (= (size!43300 (list!19452 xs!273)) lt!2695611)))

(declare-fun b!7938002 () Bool)

(assert (=> b!7938002 (= e!4683892 0)))

(declare-fun b!7938003 () Bool)

(assert (=> b!7938003 (= e!4683892 (+ 1 (size!43300 (t!390315 (list!19452 xs!273)))))))

(assert (= (and d!2374125 c!1458383) b!7938002))

(assert (= (and d!2374125 (not c!1458383)) b!7938003))

(declare-fun m!8326926 () Bool)

(assert (=> b!7938003 m!8326926))

(assert (=> d!2374101 d!2374125))

(declare-fun b!7938013 () Bool)

(declare-fun e!4683897 () List!74598)

(declare-fun e!4683898 () List!74598)

(assert (=> b!7938013 (= e!4683897 e!4683898)))

(declare-fun c!1458389 () Bool)

(assert (=> b!7938013 (= c!1458389 ((_ is Leaf!30271) xs!273))))

(declare-fun d!2374127 () Bool)

(declare-fun c!1458388 () Bool)

(assert (=> d!2374127 (= c!1458388 ((_ is Empty!15926) xs!273))))

(assert (=> d!2374127 (= (list!19452 xs!273) e!4683897)))

(declare-fun b!7938015 () Bool)

(declare-fun ++!18280 (List!74598 List!74598) List!74598)

(assert (=> b!7938015 (= e!4683898 (++!18280 (list!19452 (left!56910 xs!273)) (list!19452 (right!57240 xs!273))))))

(declare-fun b!7938014 () Bool)

(assert (=> b!7938014 (= e!4683898 (list!19454 (xs!19324 xs!273)))))

(declare-fun b!7938012 () Bool)

(assert (=> b!7938012 (= e!4683897 Nil!74474)))

(assert (= (and d!2374127 c!1458388) b!7938012))

(assert (= (and d!2374127 (not c!1458388)) b!7938013))

(assert (= (and b!7938013 c!1458389) b!7938014))

(assert (= (and b!7938013 (not c!1458389)) b!7938015))

(declare-fun m!8326928 () Bool)

(assert (=> b!7938015 m!8326928))

(declare-fun m!8326930 () Bool)

(assert (=> b!7938015 m!8326930))

(assert (=> b!7938015 m!8326928))

(assert (=> b!7938015 m!8326930))

(declare-fun m!8326932 () Bool)

(assert (=> b!7938015 m!8326932))

(declare-fun m!8326934 () Bool)

(assert (=> b!7938014 m!8326934))

(assert (=> d!2374101 d!2374127))

(declare-fun d!2374129 () Bool)

(assert (=> d!2374129 (= (inv!95851 (xs!19324 (left!56910 xs!273))) (<= (size!43300 (innerList!16014 (xs!19324 (left!56910 xs!273)))) 2147483647))))

(declare-fun bs!1969291 () Bool)

(assert (= bs!1969291 d!2374129))

(declare-fun m!8326936 () Bool)

(assert (=> bs!1969291 m!8326936))

(assert (=> b!7937945 d!2374129))

(declare-fun d!2374131 () Bool)

(declare-fun c!1458390 () Bool)

(assert (=> d!2374131 (= c!1458390 ((_ is Node!15926) (left!56910 (right!57240 xs!273))))))

(declare-fun e!4683899 () Bool)

(assert (=> d!2374131 (= (inv!95850 (left!56910 (right!57240 xs!273))) e!4683899)))

(declare-fun b!7938016 () Bool)

(assert (=> b!7938016 (= e!4683899 (inv!95853 (left!56910 (right!57240 xs!273))))))

(declare-fun b!7938017 () Bool)

(declare-fun e!4683900 () Bool)

(assert (=> b!7938017 (= e!4683899 e!4683900)))

(declare-fun res!3149270 () Bool)

(assert (=> b!7938017 (= res!3149270 (not ((_ is Leaf!30271) (left!56910 (right!57240 xs!273)))))))

(assert (=> b!7938017 (=> res!3149270 e!4683900)))

(declare-fun b!7938018 () Bool)

(assert (=> b!7938018 (= e!4683900 (inv!95855 (left!56910 (right!57240 xs!273))))))

(assert (= (and d!2374131 c!1458390) b!7938016))

(assert (= (and d!2374131 (not c!1458390)) b!7938017))

(assert (= (and b!7938017 (not res!3149270)) b!7938018))

(declare-fun m!8326938 () Bool)

(assert (=> b!7938016 m!8326938))

(declare-fun m!8326940 () Bool)

(assert (=> b!7938018 m!8326940))

(assert (=> b!7937950 d!2374131))

(declare-fun d!2374133 () Bool)

(declare-fun c!1458391 () Bool)

(assert (=> d!2374133 (= c!1458391 ((_ is Node!15926) (right!57240 (right!57240 xs!273))))))

(declare-fun e!4683901 () Bool)

(assert (=> d!2374133 (= (inv!95850 (right!57240 (right!57240 xs!273))) e!4683901)))

(declare-fun b!7938019 () Bool)

(assert (=> b!7938019 (= e!4683901 (inv!95853 (right!57240 (right!57240 xs!273))))))

(declare-fun b!7938020 () Bool)

(declare-fun e!4683902 () Bool)

(assert (=> b!7938020 (= e!4683901 e!4683902)))

(declare-fun res!3149271 () Bool)

(assert (=> b!7938020 (= res!3149271 (not ((_ is Leaf!30271) (right!57240 (right!57240 xs!273)))))))

(assert (=> b!7938020 (=> res!3149271 e!4683902)))

(declare-fun b!7938021 () Bool)

(assert (=> b!7938021 (= e!4683902 (inv!95855 (right!57240 (right!57240 xs!273))))))

(assert (= (and d!2374133 c!1458391) b!7938019))

(assert (= (and d!2374133 (not c!1458391)) b!7938020))

(assert (= (and b!7938020 (not res!3149271)) b!7938021))

(declare-fun m!8326942 () Bool)

(assert (=> b!7938019 m!8326942))

(declare-fun m!8326944 () Bool)

(assert (=> b!7938021 m!8326944))

(assert (=> b!7937950 d!2374133))

(declare-fun d!2374135 () Bool)

(assert (=> d!2374135 (= (inv!95851 (xs!19324 (right!57240 xs!273))) (<= (size!43300 (innerList!16014 (xs!19324 (right!57240 xs!273)))) 2147483647))))

(declare-fun bs!1969292 () Bool)

(assert (= bs!1969292 d!2374135))

(declare-fun m!8326946 () Bool)

(assert (=> bs!1969292 m!8326946))

(assert (=> b!7937951 d!2374135))

(declare-fun d!2374137 () Bool)

(declare-fun res!3149272 () Bool)

(declare-fun e!4683903 () Bool)

(assert (=> d!2374137 (=> (not res!3149272) (not e!4683903))))

(assert (=> d!2374137 (= res!3149272 (<= (size!43300 (list!19454 (xs!19324 (left!56910 xs!273)))) 512))))

(assert (=> d!2374137 (= (inv!95855 (left!56910 xs!273)) e!4683903)))

(declare-fun b!7938022 () Bool)

(declare-fun res!3149273 () Bool)

(assert (=> b!7938022 (=> (not res!3149273) (not e!4683903))))

(assert (=> b!7938022 (= res!3149273 (= (csize!32083 (left!56910 xs!273)) (size!43300 (list!19454 (xs!19324 (left!56910 xs!273))))))))

(declare-fun b!7938023 () Bool)

(assert (=> b!7938023 (= e!4683903 (and (> (csize!32083 (left!56910 xs!273)) 0) (<= (csize!32083 (left!56910 xs!273)) 512)))))

(assert (= (and d!2374137 res!3149272) b!7938022))

(assert (= (and b!7938022 res!3149273) b!7938023))

(declare-fun m!8326948 () Bool)

(assert (=> d!2374137 m!8326948))

(assert (=> d!2374137 m!8326948))

(declare-fun m!8326950 () Bool)

(assert (=> d!2374137 m!8326950))

(assert (=> b!7938022 m!8326948))

(assert (=> b!7938022 m!8326948))

(assert (=> b!7938022 m!8326950))

(assert (=> b!7937877 d!2374137))

(declare-fun d!2374139 () Bool)

(declare-fun lt!2695612 () Int)

(assert (=> d!2374139 (>= lt!2695612 0)))

(declare-fun e!4683904 () Int)

(assert (=> d!2374139 (= lt!2695612 e!4683904)))

(declare-fun c!1458392 () Bool)

(assert (=> d!2374139 (= c!1458392 ((_ is Nil!74474) (innerList!16014 (xs!19324 xs!273))))))

(assert (=> d!2374139 (= (size!43300 (innerList!16014 (xs!19324 xs!273))) lt!2695612)))

(declare-fun b!7938024 () Bool)

(assert (=> b!7938024 (= e!4683904 0)))

(declare-fun b!7938025 () Bool)

(assert (=> b!7938025 (= e!4683904 (+ 1 (size!43300 (t!390315 (innerList!16014 (xs!19324 xs!273))))))))

(assert (= (and d!2374139 c!1458392) b!7938024))

(assert (= (and d!2374139 (not c!1458392)) b!7938025))

(declare-fun m!8326952 () Bool)

(assert (=> b!7938025 m!8326952))

(assert (=> d!2374059 d!2374139))

(declare-fun d!2374141 () Bool)

(declare-fun res!3149274 () Bool)

(declare-fun e!4683905 () Bool)

(assert (=> d!2374141 (=> (not res!3149274) (not e!4683905))))

(assert (=> d!2374141 (= res!3149274 (= (csize!32082 (right!57240 xs!273)) (+ (size!43298 (left!56910 (right!57240 xs!273))) (size!43298 (right!57240 (right!57240 xs!273))))))))

(assert (=> d!2374141 (= (inv!95853 (right!57240 xs!273)) e!4683905)))

(declare-fun b!7938026 () Bool)

(declare-fun res!3149275 () Bool)

(assert (=> b!7938026 (=> (not res!3149275) (not e!4683905))))

(assert (=> b!7938026 (= res!3149275 (and (not (= (left!56910 (right!57240 xs!273)) Empty!15926)) (not (= (right!57240 (right!57240 xs!273)) Empty!15926))))))

(declare-fun b!7938027 () Bool)

(declare-fun res!3149276 () Bool)

(assert (=> b!7938027 (=> (not res!3149276) (not e!4683905))))

(assert (=> b!7938027 (= res!3149276 (= (cheight!16137 (right!57240 xs!273)) (+ (max!0 (height!2233 (left!56910 (right!57240 xs!273))) (height!2233 (right!57240 (right!57240 xs!273)))) 1)))))

(declare-fun b!7938028 () Bool)

(assert (=> b!7938028 (= e!4683905 (<= 0 (cheight!16137 (right!57240 xs!273))))))

(assert (= (and d!2374141 res!3149274) b!7938026))

(assert (= (and b!7938026 res!3149275) b!7938027))

(assert (= (and b!7938027 res!3149276) b!7938028))

(declare-fun m!8326954 () Bool)

(assert (=> d!2374141 m!8326954))

(declare-fun m!8326956 () Bool)

(assert (=> d!2374141 m!8326956))

(declare-fun m!8326958 () Bool)

(assert (=> b!7938027 m!8326958))

(declare-fun m!8326960 () Bool)

(assert (=> b!7938027 m!8326960))

(assert (=> b!7938027 m!8326958))

(assert (=> b!7938027 m!8326960))

(declare-fun m!8326962 () Bool)

(assert (=> b!7938027 m!8326962))

(assert (=> b!7937882 d!2374141))

(declare-fun d!2374143 () Bool)

(declare-fun res!3149277 () Bool)

(declare-fun e!4683906 () Bool)

(assert (=> d!2374143 (=> (not res!3149277) (not e!4683906))))

(assert (=> d!2374143 (= res!3149277 (<= (size!43300 (list!19454 (xs!19324 xs!273))) 512))))

(assert (=> d!2374143 (= (inv!95855 xs!273) e!4683906)))

(declare-fun b!7938029 () Bool)

(declare-fun res!3149278 () Bool)

(assert (=> b!7938029 (=> (not res!3149278) (not e!4683906))))

(assert (=> b!7938029 (= res!3149278 (= (csize!32083 xs!273) (size!43300 (list!19454 (xs!19324 xs!273)))))))

(declare-fun b!7938030 () Bool)

(assert (=> b!7938030 (= e!4683906 (and (> (csize!32083 xs!273) 0) (<= (csize!32083 xs!273) 512)))))

(assert (= (and d!2374143 res!3149277) b!7938029))

(assert (= (and b!7938029 res!3149278) b!7938030))

(assert (=> d!2374143 m!8326934))

(assert (=> d!2374143 m!8326934))

(declare-fun m!8326964 () Bool)

(assert (=> d!2374143 m!8326964))

(assert (=> b!7938029 m!8326934))

(assert (=> b!7938029 m!8326934))

(assert (=> b!7938029 m!8326964))

(assert (=> b!7937889 d!2374143))

(declare-fun d!2374145 () Bool)

(declare-fun res!3149279 () Bool)

(declare-fun e!4683907 () Bool)

(assert (=> d!2374145 (=> (not res!3149279) (not e!4683907))))

(assert (=> d!2374145 (= res!3149279 (= (csize!32082 (left!56910 ys!40)) (+ (size!43298 (left!56910 (left!56910 ys!40))) (size!43298 (right!57240 (left!56910 ys!40))))))))

(assert (=> d!2374145 (= (inv!95853 (left!56910 ys!40)) e!4683907)))

(declare-fun b!7938031 () Bool)

(declare-fun res!3149280 () Bool)

(assert (=> b!7938031 (=> (not res!3149280) (not e!4683907))))

(assert (=> b!7938031 (= res!3149280 (and (not (= (left!56910 (left!56910 ys!40)) Empty!15926)) (not (= (right!57240 (left!56910 ys!40)) Empty!15926))))))

(declare-fun b!7938032 () Bool)

(declare-fun res!3149281 () Bool)

(assert (=> b!7938032 (=> (not res!3149281) (not e!4683907))))

(assert (=> b!7938032 (= res!3149281 (= (cheight!16137 (left!56910 ys!40)) (+ (max!0 (height!2233 (left!56910 (left!56910 ys!40))) (height!2233 (right!57240 (left!56910 ys!40)))) 1)))))

(declare-fun b!7938033 () Bool)

(assert (=> b!7938033 (= e!4683907 (<= 0 (cheight!16137 (left!56910 ys!40))))))

(assert (= (and d!2374145 res!3149279) b!7938031))

(assert (= (and b!7938031 res!3149280) b!7938032))

(assert (= (and b!7938032 res!3149281) b!7938033))

(declare-fun m!8326966 () Bool)

(assert (=> d!2374145 m!8326966))

(declare-fun m!8326968 () Bool)

(assert (=> d!2374145 m!8326968))

(declare-fun m!8326970 () Bool)

(assert (=> b!7938032 m!8326970))

(declare-fun m!8326972 () Bool)

(assert (=> b!7938032 m!8326972))

(assert (=> b!7938032 m!8326970))

(assert (=> b!7938032 m!8326972))

(declare-fun m!8326974 () Bool)

(assert (=> b!7938032 m!8326974))

(assert (=> b!7937917 d!2374145))

(declare-fun d!2374147 () Bool)

(declare-fun res!3149282 () Bool)

(declare-fun e!4683908 () Bool)

(assert (=> d!2374147 (=> (not res!3149282) (not e!4683908))))

(assert (=> d!2374147 (= res!3149282 (= (csize!32082 (left!56910 xs!273)) (+ (size!43298 (left!56910 (left!56910 xs!273))) (size!43298 (right!57240 (left!56910 xs!273))))))))

(assert (=> d!2374147 (= (inv!95853 (left!56910 xs!273)) e!4683908)))

(declare-fun b!7938034 () Bool)

(declare-fun res!3149283 () Bool)

(assert (=> b!7938034 (=> (not res!3149283) (not e!4683908))))

(assert (=> b!7938034 (= res!3149283 (and (not (= (left!56910 (left!56910 xs!273)) Empty!15926)) (not (= (right!57240 (left!56910 xs!273)) Empty!15926))))))

(declare-fun b!7938035 () Bool)

(declare-fun res!3149284 () Bool)

(assert (=> b!7938035 (=> (not res!3149284) (not e!4683908))))

(assert (=> b!7938035 (= res!3149284 (= (cheight!16137 (left!56910 xs!273)) (+ (max!0 (height!2233 (left!56910 (left!56910 xs!273))) (height!2233 (right!57240 (left!56910 xs!273)))) 1)))))

(declare-fun b!7938036 () Bool)

(assert (=> b!7938036 (= e!4683908 (<= 0 (cheight!16137 (left!56910 xs!273))))))

(assert (= (and d!2374147 res!3149282) b!7938034))

(assert (= (and b!7938034 res!3149283) b!7938035))

(assert (= (and b!7938035 res!3149284) b!7938036))

(declare-fun m!8326976 () Bool)

(assert (=> d!2374147 m!8326976))

(declare-fun m!8326978 () Bool)

(assert (=> d!2374147 m!8326978))

(declare-fun m!8326980 () Bool)

(assert (=> b!7938035 m!8326980))

(declare-fun m!8326982 () Bool)

(assert (=> b!7938035 m!8326982))

(assert (=> b!7938035 m!8326980))

(assert (=> b!7938035 m!8326982))

(declare-fun m!8326984 () Bool)

(assert (=> b!7938035 m!8326984))

(assert (=> b!7937875 d!2374147))

(declare-fun d!2374149 () Bool)

(declare-fun res!3149285 () Bool)

(declare-fun e!4683909 () Bool)

(assert (=> d!2374149 (=> (not res!3149285) (not e!4683909))))

(assert (=> d!2374149 (= res!3149285 (= (csize!32082 xs!273) (+ (size!43298 (left!56910 xs!273)) (size!43298 (right!57240 xs!273)))))))

(assert (=> d!2374149 (= (inv!95853 xs!273) e!4683909)))

(declare-fun b!7938037 () Bool)

(declare-fun res!3149286 () Bool)

(assert (=> b!7938037 (=> (not res!3149286) (not e!4683909))))

(assert (=> b!7938037 (= res!3149286 (and (not (= (left!56910 xs!273) Empty!15926)) (not (= (right!57240 xs!273) Empty!15926))))))

(declare-fun b!7938038 () Bool)

(declare-fun res!3149287 () Bool)

(assert (=> b!7938038 (=> (not res!3149287) (not e!4683909))))

(assert (=> b!7938038 (= res!3149287 (= (cheight!16137 xs!273) (+ (max!0 (height!2233 (left!56910 xs!273)) (height!2233 (right!57240 xs!273))) 1)))))

(declare-fun b!7938039 () Bool)

(assert (=> b!7938039 (= e!4683909 (<= 0 (cheight!16137 xs!273)))))

(assert (= (and d!2374149 res!3149285) b!7938037))

(assert (= (and b!7938037 res!3149286) b!7938038))

(assert (= (and b!7938038 res!3149287) b!7938039))

(declare-fun m!8326986 () Bool)

(assert (=> d!2374149 m!8326986))

(declare-fun m!8326988 () Bool)

(assert (=> d!2374149 m!8326988))

(declare-fun m!8326990 () Bool)

(assert (=> b!7938038 m!8326990))

(declare-fun m!8326992 () Bool)

(assert (=> b!7938038 m!8326992))

(assert (=> b!7938038 m!8326990))

(assert (=> b!7938038 m!8326992))

(declare-fun m!8326994 () Bool)

(assert (=> b!7938038 m!8326994))

(assert (=> b!7937887 d!2374149))

(declare-fun d!2374151 () Bool)

(declare-fun res!3149288 () Bool)

(declare-fun e!4683910 () Bool)

(assert (=> d!2374151 (=> (not res!3149288) (not e!4683910))))

(assert (=> d!2374151 (= res!3149288 (<= (size!43300 (list!19454 (xs!19324 (left!56910 ys!40)))) 512))))

(assert (=> d!2374151 (= (inv!95855 (left!56910 ys!40)) e!4683910)))

(declare-fun b!7938040 () Bool)

(declare-fun res!3149289 () Bool)

(assert (=> b!7938040 (=> (not res!3149289) (not e!4683910))))

(assert (=> b!7938040 (= res!3149289 (= (csize!32083 (left!56910 ys!40)) (size!43300 (list!19454 (xs!19324 (left!56910 ys!40))))))))

(declare-fun b!7938041 () Bool)

(assert (=> b!7938041 (= e!4683910 (and (> (csize!32083 (left!56910 ys!40)) 0) (<= (csize!32083 (left!56910 ys!40)) 512)))))

(assert (= (and d!2374151 res!3149288) b!7938040))

(assert (= (and b!7938040 res!3149289) b!7938041))

(declare-fun m!8326996 () Bool)

(assert (=> d!2374151 m!8326996))

(assert (=> d!2374151 m!8326996))

(declare-fun m!8326998 () Bool)

(assert (=> d!2374151 m!8326998))

(assert (=> b!7938040 m!8326996))

(assert (=> b!7938040 m!8326996))

(assert (=> b!7938040 m!8326998))

(assert (=> b!7937919 d!2374151))

(declare-fun d!2374153 () Bool)

(declare-fun c!1458393 () Bool)

(assert (=> d!2374153 (= c!1458393 ((_ is Node!15926) (left!56910 (right!57240 ys!40))))))

(declare-fun e!4683911 () Bool)

(assert (=> d!2374153 (= (inv!95850 (left!56910 (right!57240 ys!40))) e!4683911)))

(declare-fun b!7938042 () Bool)

(assert (=> b!7938042 (= e!4683911 (inv!95853 (left!56910 (right!57240 ys!40))))))

(declare-fun b!7938043 () Bool)

(declare-fun e!4683912 () Bool)

(assert (=> b!7938043 (= e!4683911 e!4683912)))

(declare-fun res!3149290 () Bool)

(assert (=> b!7938043 (= res!3149290 (not ((_ is Leaf!30271) (left!56910 (right!57240 ys!40)))))))

(assert (=> b!7938043 (=> res!3149290 e!4683912)))

(declare-fun b!7938044 () Bool)

(assert (=> b!7938044 (= e!4683912 (inv!95855 (left!56910 (right!57240 ys!40))))))

(assert (= (and d!2374153 c!1458393) b!7938042))

(assert (= (and d!2374153 (not c!1458393)) b!7938043))

(assert (= (and b!7938043 (not res!3149290)) b!7938044))

(declare-fun m!8327000 () Bool)

(assert (=> b!7938042 m!8327000))

(declare-fun m!8327002 () Bool)

(assert (=> b!7938044 m!8327002))

(assert (=> b!7937972 d!2374153))

(declare-fun d!2374155 () Bool)

(declare-fun c!1458394 () Bool)

(assert (=> d!2374155 (= c!1458394 ((_ is Node!15926) (right!57240 (right!57240 ys!40))))))

(declare-fun e!4683913 () Bool)

(assert (=> d!2374155 (= (inv!95850 (right!57240 (right!57240 ys!40))) e!4683913)))

(declare-fun b!7938045 () Bool)

(assert (=> b!7938045 (= e!4683913 (inv!95853 (right!57240 (right!57240 ys!40))))))

(declare-fun b!7938046 () Bool)

(declare-fun e!4683914 () Bool)

(assert (=> b!7938046 (= e!4683913 e!4683914)))

(declare-fun res!3149291 () Bool)

(assert (=> b!7938046 (= res!3149291 (not ((_ is Leaf!30271) (right!57240 (right!57240 ys!40)))))))

(assert (=> b!7938046 (=> res!3149291 e!4683914)))

(declare-fun b!7938047 () Bool)

(assert (=> b!7938047 (= e!4683914 (inv!95855 (right!57240 (right!57240 ys!40))))))

(assert (= (and d!2374155 c!1458394) b!7938045))

(assert (= (and d!2374155 (not c!1458394)) b!7938046))

(assert (= (and b!7938046 (not res!3149291)) b!7938047))

(declare-fun m!8327004 () Bool)

(assert (=> b!7938045 m!8327004))

(declare-fun m!8327006 () Bool)

(assert (=> b!7938047 m!8327006))

(assert (=> b!7937972 d!2374155))

(declare-fun d!2374157 () Bool)

(declare-fun res!3149292 () Bool)

(declare-fun e!4683915 () Bool)

(assert (=> d!2374157 (=> (not res!3149292) (not e!4683915))))

(assert (=> d!2374157 (= res!3149292 (<= (size!43300 (list!19454 (xs!19324 (right!57240 xs!273)))) 512))))

(assert (=> d!2374157 (= (inv!95855 (right!57240 xs!273)) e!4683915)))

(declare-fun b!7938048 () Bool)

(declare-fun res!3149293 () Bool)

(assert (=> b!7938048 (=> (not res!3149293) (not e!4683915))))

(assert (=> b!7938048 (= res!3149293 (= (csize!32083 (right!57240 xs!273)) (size!43300 (list!19454 (xs!19324 (right!57240 xs!273))))))))

(declare-fun b!7938049 () Bool)

(assert (=> b!7938049 (= e!4683915 (and (> (csize!32083 (right!57240 xs!273)) 0) (<= (csize!32083 (right!57240 xs!273)) 512)))))

(assert (= (and d!2374157 res!3149292) b!7938048))

(assert (= (and b!7938048 res!3149293) b!7938049))

(declare-fun m!8327008 () Bool)

(assert (=> d!2374157 m!8327008))

(assert (=> d!2374157 m!8327008))

(declare-fun m!8327010 () Bool)

(assert (=> d!2374157 m!8327010))

(assert (=> b!7938048 m!8327008))

(assert (=> b!7938048 m!8327008))

(assert (=> b!7938048 m!8327010))

(assert (=> b!7937884 d!2374157))

(assert (=> b!7937862 d!2374107))

(assert (=> b!7937862 d!2374109))

(declare-fun d!2374159 () Bool)

(declare-fun res!3149294 () Bool)

(declare-fun e!4683916 () Bool)

(assert (=> d!2374159 (=> (not res!3149294) (not e!4683916))))

(assert (=> d!2374159 (= res!3149294 (= (csize!32082 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) (+ (size!43298 (left!56910 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))) (size!43298 (right!57240 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))))))))

(assert (=> d!2374159 (= (inv!95853 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) e!4683916)))

(declare-fun b!7938050 () Bool)

(declare-fun res!3149295 () Bool)

(assert (=> b!7938050 (=> (not res!3149295) (not e!4683916))))

(assert (=> b!7938050 (= res!3149295 (and (not (= (left!56910 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) Empty!15926)) (not (= (right!57240 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) Empty!15926))))))

(declare-fun b!7938051 () Bool)

(declare-fun res!3149296 () Bool)

(assert (=> b!7938051 (=> (not res!3149296) (not e!4683916))))

(assert (=> b!7938051 (= res!3149296 (= (cheight!16137 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) (+ (max!0 (height!2233 (left!56910 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))) (height!2233 (right!57240 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))))) 1)))))

(declare-fun b!7938052 () Bool)

(assert (=> b!7938052 (= e!4683916 (<= 0 (cheight!16137 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))))))

(assert (= (and d!2374159 res!3149294) b!7938050))

(assert (= (and b!7938050 res!3149295) b!7938051))

(assert (= (and b!7938051 res!3149296) b!7938052))

(declare-fun m!8327012 () Bool)

(assert (=> d!2374159 m!8327012))

(declare-fun m!8327014 () Bool)

(assert (=> d!2374159 m!8327014))

(declare-fun m!8327016 () Bool)

(assert (=> b!7938051 m!8327016))

(declare-fun m!8327018 () Bool)

(assert (=> b!7938051 m!8327018))

(assert (=> b!7938051 m!8327016))

(assert (=> b!7938051 m!8327018))

(declare-fun m!8327020 () Bool)

(assert (=> b!7938051 m!8327020))

(assert (=> b!7937896 d!2374159))

(assert (=> b!7937868 d!2374061))

(assert (=> b!7937868 d!2374067))

(declare-fun d!2374161 () Bool)

(declare-fun c!1458395 () Bool)

(assert (=> d!2374161 (= c!1458395 ((_ is Node!15926) (left!56910 (left!56910 ys!40))))))

(declare-fun e!4683917 () Bool)

(assert (=> d!2374161 (= (inv!95850 (left!56910 (left!56910 ys!40))) e!4683917)))

(declare-fun b!7938053 () Bool)

(assert (=> b!7938053 (= e!4683917 (inv!95853 (left!56910 (left!56910 ys!40))))))

(declare-fun b!7938054 () Bool)

(declare-fun e!4683918 () Bool)

(assert (=> b!7938054 (= e!4683917 e!4683918)))

(declare-fun res!3149297 () Bool)

(assert (=> b!7938054 (= res!3149297 (not ((_ is Leaf!30271) (left!56910 (left!56910 ys!40)))))))

(assert (=> b!7938054 (=> res!3149297 e!4683918)))

(declare-fun b!7938055 () Bool)

(assert (=> b!7938055 (= e!4683918 (inv!95855 (left!56910 (left!56910 ys!40))))))

(assert (= (and d!2374161 c!1458395) b!7938053))

(assert (= (and d!2374161 (not c!1458395)) b!7938054))

(assert (= (and b!7938054 (not res!3149297)) b!7938055))

(declare-fun m!8327022 () Bool)

(assert (=> b!7938053 m!8327022))

(declare-fun m!8327024 () Bool)

(assert (=> b!7938055 m!8327024))

(assert (=> b!7937968 d!2374161))

(declare-fun d!2374163 () Bool)

(declare-fun c!1458396 () Bool)

(assert (=> d!2374163 (= c!1458396 ((_ is Node!15926) (right!57240 (left!56910 ys!40))))))

(declare-fun e!4683919 () Bool)

(assert (=> d!2374163 (= (inv!95850 (right!57240 (left!56910 ys!40))) e!4683919)))

(declare-fun b!7938056 () Bool)

(assert (=> b!7938056 (= e!4683919 (inv!95853 (right!57240 (left!56910 ys!40))))))

(declare-fun b!7938057 () Bool)

(declare-fun e!4683920 () Bool)

(assert (=> b!7938057 (= e!4683919 e!4683920)))

(declare-fun res!3149298 () Bool)

(assert (=> b!7938057 (= res!3149298 (not ((_ is Leaf!30271) (right!57240 (left!56910 ys!40)))))))

(assert (=> b!7938057 (=> res!3149298 e!4683920)))

(declare-fun b!7938058 () Bool)

(assert (=> b!7938058 (= e!4683920 (inv!95855 (right!57240 (left!56910 ys!40))))))

(assert (= (and d!2374163 c!1458396) b!7938056))

(assert (= (and d!2374163 (not c!1458396)) b!7938057))

(assert (= (and b!7938057 (not res!3149298)) b!7938058))

(declare-fun m!8327026 () Bool)

(assert (=> b!7938056 m!8327026))

(declare-fun m!8327028 () Bool)

(assert (=> b!7938058 m!8327028))

(assert (=> b!7937968 d!2374163))

(declare-fun d!2374165 () Bool)

(assert (=> d!2374165 (= (inv!95851 (xs!19324 (left!56910 ys!40))) (<= (size!43300 (innerList!16014 (xs!19324 (left!56910 ys!40)))) 2147483647))))

(declare-fun bs!1969293 () Bool)

(assert (= bs!1969293 d!2374165))

(declare-fun m!8327030 () Bool)

(assert (=> bs!1969293 m!8327030))

(assert (=> b!7937969 d!2374165))

(declare-fun d!2374167 () Bool)

(declare-fun res!3149299 () Bool)

(declare-fun e!4683921 () Bool)

(assert (=> d!2374167 (=> (not res!3149299) (not e!4683921))))

(assert (=> d!2374167 (= res!3149299 (= (csize!32082 ys!40) (+ (size!43298 (left!56910 ys!40)) (size!43298 (right!57240 ys!40)))))))

(assert (=> d!2374167 (= (inv!95853 ys!40) e!4683921)))

(declare-fun b!7938059 () Bool)

(declare-fun res!3149300 () Bool)

(assert (=> b!7938059 (=> (not res!3149300) (not e!4683921))))

(assert (=> b!7938059 (= res!3149300 (and (not (= (left!56910 ys!40) Empty!15926)) (not (= (right!57240 ys!40) Empty!15926))))))

(declare-fun b!7938060 () Bool)

(declare-fun res!3149301 () Bool)

(assert (=> b!7938060 (=> (not res!3149301) (not e!4683921))))

(assert (=> b!7938060 (= res!3149301 (= (cheight!16137 ys!40) (+ (max!0 (height!2233 (left!56910 ys!40)) (height!2233 (right!57240 ys!40))) 1)))))

(declare-fun b!7938061 () Bool)

(assert (=> b!7938061 (= e!4683921 (<= 0 (cheight!16137 ys!40)))))

(assert (= (and d!2374167 res!3149299) b!7938059))

(assert (= (and b!7938059 res!3149300) b!7938060))

(assert (= (and b!7938060 res!3149301) b!7938061))

(declare-fun m!8327032 () Bool)

(assert (=> d!2374167 m!8327032))

(declare-fun m!8327034 () Bool)

(assert (=> d!2374167 m!8327034))

(declare-fun m!8327036 () Bool)

(assert (=> b!7938060 m!8327036))

(declare-fun m!8327038 () Bool)

(assert (=> b!7938060 m!8327038))

(assert (=> b!7938060 m!8327036))

(assert (=> b!7938060 m!8327038))

(declare-fun m!8327040 () Bool)

(assert (=> b!7938060 m!8327040))

(assert (=> b!7937890 d!2374167))

(declare-fun d!2374169 () Bool)

(declare-fun lt!2695613 () Int)

(assert (=> d!2374169 (>= lt!2695613 0)))

(declare-fun e!4683922 () Int)

(assert (=> d!2374169 (= lt!2695613 e!4683922)))

(declare-fun c!1458397 () Bool)

(assert (=> d!2374169 (= c!1458397 ((_ is Nil!74474) (list!19452 ys!40)))))

(assert (=> d!2374169 (= (size!43300 (list!19452 ys!40)) lt!2695613)))

(declare-fun b!7938062 () Bool)

(assert (=> b!7938062 (= e!4683922 0)))

(declare-fun b!7938063 () Bool)

(assert (=> b!7938063 (= e!4683922 (+ 1 (size!43300 (t!390315 (list!19452 ys!40)))))))

(assert (= (and d!2374169 c!1458397) b!7938062))

(assert (= (and d!2374169 (not c!1458397)) b!7938063))

(declare-fun m!8327042 () Bool)

(assert (=> b!7938063 m!8327042))

(assert (=> d!2374095 d!2374169))

(declare-fun b!7938065 () Bool)

(declare-fun e!4683923 () List!74598)

(declare-fun e!4683924 () List!74598)

(assert (=> b!7938065 (= e!4683923 e!4683924)))

(declare-fun c!1458399 () Bool)

(assert (=> b!7938065 (= c!1458399 ((_ is Leaf!30271) ys!40))))

(declare-fun d!2374171 () Bool)

(declare-fun c!1458398 () Bool)

(assert (=> d!2374171 (= c!1458398 ((_ is Empty!15926) ys!40))))

(assert (=> d!2374171 (= (list!19452 ys!40) e!4683923)))

(declare-fun b!7938067 () Bool)

(assert (=> b!7938067 (= e!4683924 (++!18280 (list!19452 (left!56910 ys!40)) (list!19452 (right!57240 ys!40))))))

(declare-fun b!7938066 () Bool)

(assert (=> b!7938066 (= e!4683924 (list!19454 (xs!19324 ys!40)))))

(declare-fun b!7938064 () Bool)

(assert (=> b!7938064 (= e!4683923 Nil!74474)))

(assert (= (and d!2374171 c!1458398) b!7938064))

(assert (= (and d!2374171 (not c!1458398)) b!7938065))

(assert (= (and b!7938065 c!1458399) b!7938066))

(assert (= (and b!7938065 (not c!1458399)) b!7938067))

(declare-fun m!8327044 () Bool)

(assert (=> b!7938067 m!8327044))

(declare-fun m!8327046 () Bool)

(assert (=> b!7938067 m!8327046))

(assert (=> b!7938067 m!8327044))

(assert (=> b!7938067 m!8327046))

(declare-fun m!8327048 () Bool)

(assert (=> b!7938067 m!8327048))

(assert (=> b!7938066 m!8326904))

(assert (=> d!2374095 d!2374171))

(declare-fun d!2374173 () Bool)

(declare-fun res!3149302 () Bool)

(declare-fun e!4683925 () Bool)

(assert (=> d!2374173 (=> (not res!3149302) (not e!4683925))))

(assert (=> d!2374173 (= res!3149302 (<= (size!43300 (list!19454 (xs!19324 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))))) 512))))

(assert (=> d!2374173 (= (inv!95855 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) e!4683925)))

(declare-fun b!7938068 () Bool)

(declare-fun res!3149303 () Bool)

(assert (=> b!7938068 (=> (not res!3149303) (not e!4683925))))

(assert (=> b!7938068 (= res!3149303 (= (csize!32083 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) (size!43300 (list!19454 (xs!19324 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40)))))))))))

(declare-fun b!7938069 () Bool)

(assert (=> b!7938069 (= e!4683925 (and (> (csize!32083 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) 0) (<= (csize!32083 (Node!15926 xs!273 ys!40 (+ (size!43298 xs!273) (size!43298 ys!40)) (+ 1 (max!0 (height!2233 xs!273) (height!2233 ys!40))))) 512)))))

(assert (= (and d!2374173 res!3149302) b!7938068))

(assert (= (and b!7938068 res!3149303) b!7938069))

(declare-fun m!8327050 () Bool)

(assert (=> d!2374173 m!8327050))

(assert (=> d!2374173 m!8327050))

(declare-fun m!8327052 () Bool)

(assert (=> d!2374173 m!8327052))

(assert (=> b!7938068 m!8327050))

(assert (=> b!7938068 m!8327050))

(assert (=> b!7938068 m!8327052))

(assert (=> b!7937898 d!2374173))

(declare-fun d!2374177 () Bool)

(assert (=> d!2374177 (= (inv!95851 (xs!19324 (right!57240 ys!40))) (<= (size!43300 (innerList!16014 (xs!19324 (right!57240 ys!40)))) 2147483647))))

(declare-fun bs!1969294 () Bool)

(assert (= bs!1969294 d!2374177))

(declare-fun m!8327054 () Bool)

(assert (=> bs!1969294 m!8327054))

(assert (=> b!7937973 d!2374177))

(declare-fun d!2374179 () Bool)

(declare-fun lt!2695614 () Int)

(assert (=> d!2374179 (>= lt!2695614 0)))

(declare-fun e!4683926 () Int)

(assert (=> d!2374179 (= lt!2695614 e!4683926)))

(declare-fun c!1458400 () Bool)

(assert (=> d!2374179 (= c!1458400 ((_ is Nil!74474) (innerList!16014 (xs!19324 ys!40))))))

(assert (=> d!2374179 (= (size!43300 (innerList!16014 (xs!19324 ys!40))) lt!2695614)))

(declare-fun b!7938070 () Bool)

(assert (=> b!7938070 (= e!4683926 0)))

(declare-fun b!7938071 () Bool)

(assert (=> b!7938071 (= e!4683926 (+ 1 (size!43300 (t!390315 (innerList!16014 (xs!19324 ys!40))))))))

(assert (= (and d!2374179 c!1458400) b!7938070))

(assert (= (and d!2374179 (not c!1458400)) b!7938071))

(declare-fun m!8327056 () Bool)

(assert (=> b!7938071 m!8327056))

(assert (=> d!2374105 d!2374179))

(declare-fun b!7938076 () Bool)

(declare-fun e!4683929 () Bool)

(declare-fun tp!2360067 () Bool)

(assert (=> b!7938076 (= e!4683929 (and tp_is_empty!53281 tp!2360067))))

(assert (=> b!7937946 (= tp!2360038 e!4683929)))

(assert (= (and b!7937946 ((_ is Cons!74474) (innerList!16014 (xs!19324 (left!56910 xs!273))))) b!7938076))

(declare-fun e!4683931 () Bool)

(declare-fun b!7938077 () Bool)

(declare-fun tp!2360070 () Bool)

(declare-fun tp!2360069 () Bool)

(assert (=> b!7938077 (= e!4683931 (and (inv!95850 (left!56910 (left!56910 (left!56910 ys!40)))) tp!2360069 (inv!95850 (right!57240 (left!56910 (left!56910 ys!40)))) tp!2360070))))

(declare-fun b!7938079 () Bool)

(declare-fun e!4683930 () Bool)

(declare-fun tp!2360068 () Bool)

(assert (=> b!7938079 (= e!4683930 tp!2360068)))

(declare-fun b!7938078 () Bool)

(assert (=> b!7938078 (= e!4683931 (and (inv!95851 (xs!19324 (left!56910 (left!56910 ys!40)))) e!4683930))))

(assert (=> b!7937968 (= tp!2360061 (and (inv!95850 (left!56910 (left!56910 ys!40))) e!4683931))))

(assert (= (and b!7937968 ((_ is Node!15926) (left!56910 (left!56910 ys!40)))) b!7938077))

(assert (= b!7938078 b!7938079))

(assert (= (and b!7937968 ((_ is Leaf!30271) (left!56910 (left!56910 ys!40)))) b!7938078))

(declare-fun m!8327058 () Bool)

(assert (=> b!7938077 m!8327058))

(declare-fun m!8327060 () Bool)

(assert (=> b!7938077 m!8327060))

(declare-fun m!8327062 () Bool)

(assert (=> b!7938078 m!8327062))

(assert (=> b!7937968 m!8326888))

(declare-fun tp!2360073 () Bool)

(declare-fun e!4683933 () Bool)

(declare-fun tp!2360072 () Bool)

(declare-fun b!7938080 () Bool)

(assert (=> b!7938080 (= e!4683933 (and (inv!95850 (left!56910 (right!57240 (left!56910 ys!40)))) tp!2360072 (inv!95850 (right!57240 (right!57240 (left!56910 ys!40)))) tp!2360073))))

(declare-fun b!7938082 () Bool)

(declare-fun e!4683932 () Bool)

(declare-fun tp!2360071 () Bool)

(assert (=> b!7938082 (= e!4683932 tp!2360071)))

(declare-fun b!7938081 () Bool)

(assert (=> b!7938081 (= e!4683933 (and (inv!95851 (xs!19324 (right!57240 (left!56910 ys!40)))) e!4683932))))

(assert (=> b!7937968 (= tp!2360062 (and (inv!95850 (right!57240 (left!56910 ys!40))) e!4683933))))

(assert (= (and b!7937968 ((_ is Node!15926) (right!57240 (left!56910 ys!40)))) b!7938080))

(assert (= b!7938081 b!7938082))

(assert (= (and b!7937968 ((_ is Leaf!30271) (right!57240 (left!56910 ys!40)))) b!7938081))

(declare-fun m!8327064 () Bool)

(assert (=> b!7938080 m!8327064))

(declare-fun m!8327066 () Bool)

(assert (=> b!7938080 m!8327066))

(declare-fun m!8327068 () Bool)

(assert (=> b!7938081 m!8327068))

(assert (=> b!7937968 m!8326890))

(declare-fun b!7938083 () Bool)

(declare-fun e!4683934 () Bool)

(declare-fun tp!2360074 () Bool)

(assert (=> b!7938083 (= e!4683934 (and tp_is_empty!53281 tp!2360074))))

(assert (=> b!7937952 (= tp!2360044 e!4683934)))

(assert (= (and b!7937952 ((_ is Cons!74474) (innerList!16014 (xs!19324 (right!57240 xs!273))))) b!7938083))

(declare-fun e!4683937 () Bool)

(declare-fun b!7938086 () Bool)

(declare-fun tp!2360076 () Bool)

(declare-fun tp!2360077 () Bool)

(assert (=> b!7938086 (= e!4683937 (and (inv!95850 (left!56910 (left!56910 (right!57240 ys!40)))) tp!2360076 (inv!95850 (right!57240 (left!56910 (right!57240 ys!40)))) tp!2360077))))

(declare-fun b!7938088 () Bool)

(declare-fun e!4683936 () Bool)

(declare-fun tp!2360075 () Bool)

(assert (=> b!7938088 (= e!4683936 tp!2360075)))

(declare-fun b!7938087 () Bool)

(assert (=> b!7938087 (= e!4683937 (and (inv!95851 (xs!19324 (left!56910 (right!57240 ys!40)))) e!4683936))))

(assert (=> b!7937972 (= tp!2360065 (and (inv!95850 (left!56910 (right!57240 ys!40))) e!4683937))))

(assert (= (and b!7937972 ((_ is Node!15926) (left!56910 (right!57240 ys!40)))) b!7938086))

(assert (= b!7938087 b!7938088))

(assert (= (and b!7937972 ((_ is Leaf!30271) (left!56910 (right!57240 ys!40)))) b!7938087))

(declare-fun m!8327072 () Bool)

(assert (=> b!7938086 m!8327072))

(declare-fun m!8327074 () Bool)

(assert (=> b!7938086 m!8327074))

(declare-fun m!8327076 () Bool)

(assert (=> b!7938087 m!8327076))

(assert (=> b!7937972 m!8326894))

(declare-fun e!4683939 () Bool)

(declare-fun tp!2360079 () Bool)

(declare-fun b!7938089 () Bool)

(declare-fun tp!2360080 () Bool)

(assert (=> b!7938089 (= e!4683939 (and (inv!95850 (left!56910 (right!57240 (right!57240 ys!40)))) tp!2360079 (inv!95850 (right!57240 (right!57240 (right!57240 ys!40)))) tp!2360080))))

(declare-fun b!7938091 () Bool)

(declare-fun e!4683938 () Bool)

(declare-fun tp!2360078 () Bool)

(assert (=> b!7938091 (= e!4683938 tp!2360078)))

(declare-fun b!7938090 () Bool)

(assert (=> b!7938090 (= e!4683939 (and (inv!95851 (xs!19324 (right!57240 (right!57240 ys!40)))) e!4683938))))

(assert (=> b!7937972 (= tp!2360066 (and (inv!95850 (right!57240 (right!57240 ys!40))) e!4683939))))

(assert (= (and b!7937972 ((_ is Node!15926) (right!57240 (right!57240 ys!40)))) b!7938089))

(assert (= b!7938090 b!7938091))

(assert (= (and b!7937972 ((_ is Leaf!30271) (right!57240 (right!57240 ys!40)))) b!7938090))

(declare-fun m!8327078 () Bool)

(assert (=> b!7938089 m!8327078))

(declare-fun m!8327080 () Bool)

(assert (=> b!7938089 m!8327080))

(declare-fun m!8327082 () Bool)

(assert (=> b!7938090 m!8327082))

(assert (=> b!7937972 m!8326896))

(declare-fun b!7938092 () Bool)

(declare-fun e!4683940 () Bool)

(declare-fun tp!2360081 () Bool)

(assert (=> b!7938092 (= e!4683940 (and tp_is_empty!53281 tp!2360081))))

(assert (=> b!7937966 (= tp!2360058 e!4683940)))

(assert (= (and b!7937966 ((_ is Cons!74474) (t!390315 (innerList!16014 (xs!19324 xs!273))))) b!7938092))

(declare-fun b!7938093 () Bool)

(declare-fun e!4683941 () Bool)

(declare-fun tp!2360082 () Bool)

(assert (=> b!7938093 (= e!4683941 (and tp_is_empty!53281 tp!2360082))))

(assert (=> b!7937970 (= tp!2360060 e!4683941)))

(assert (= (and b!7937970 ((_ is Cons!74474) (innerList!16014 (xs!19324 (left!56910 ys!40))))) b!7938093))

(declare-fun b!7938094 () Bool)

(declare-fun e!4683942 () Bool)

(declare-fun tp!2360083 () Bool)

(assert (=> b!7938094 (= e!4683942 (and tp_is_empty!53281 tp!2360083))))

(assert (=> b!7937974 (= tp!2360064 e!4683942)))

(assert (= (and b!7937974 ((_ is Cons!74474) (innerList!16014 (xs!19324 (right!57240 ys!40))))) b!7938094))

(declare-fun b!7938095 () Bool)

(declare-fun e!4683944 () Bool)

(declare-fun tp!2360085 () Bool)

(declare-fun tp!2360086 () Bool)

(assert (=> b!7938095 (= e!4683944 (and (inv!95850 (left!56910 (left!56910 (left!56910 xs!273)))) tp!2360085 (inv!95850 (right!57240 (left!56910 (left!56910 xs!273)))) tp!2360086))))

(declare-fun b!7938097 () Bool)

(declare-fun e!4683943 () Bool)

(declare-fun tp!2360084 () Bool)

(assert (=> b!7938097 (= e!4683943 tp!2360084)))

(declare-fun b!7938096 () Bool)

(assert (=> b!7938096 (= e!4683944 (and (inv!95851 (xs!19324 (left!56910 (left!56910 xs!273)))) e!4683943))))

(assert (=> b!7937944 (= tp!2360039 (and (inv!95850 (left!56910 (left!56910 xs!273))) e!4683944))))

(assert (= (and b!7937944 ((_ is Node!15926) (left!56910 (left!56910 xs!273)))) b!7938095))

(assert (= b!7938096 b!7938097))

(assert (= (and b!7937944 ((_ is Leaf!30271) (left!56910 (left!56910 xs!273)))) b!7938096))

(declare-fun m!8327084 () Bool)

(assert (=> b!7938095 m!8327084))

(declare-fun m!8327086 () Bool)

(assert (=> b!7938095 m!8327086))

(declare-fun m!8327088 () Bool)

(assert (=> b!7938096 m!8327088))

(assert (=> b!7937944 m!8326852))

(declare-fun e!4683946 () Bool)

(declare-fun tp!2360089 () Bool)

(declare-fun tp!2360088 () Bool)

(declare-fun b!7938098 () Bool)

(assert (=> b!7938098 (= e!4683946 (and (inv!95850 (left!56910 (right!57240 (left!56910 xs!273)))) tp!2360088 (inv!95850 (right!57240 (right!57240 (left!56910 xs!273)))) tp!2360089))))

(declare-fun b!7938100 () Bool)

(declare-fun e!4683945 () Bool)

(declare-fun tp!2360087 () Bool)

(assert (=> b!7938100 (= e!4683945 tp!2360087)))

(declare-fun b!7938099 () Bool)

(assert (=> b!7938099 (= e!4683946 (and (inv!95851 (xs!19324 (right!57240 (left!56910 xs!273)))) e!4683945))))

(assert (=> b!7937944 (= tp!2360040 (and (inv!95850 (right!57240 (left!56910 xs!273))) e!4683946))))

(assert (= (and b!7937944 ((_ is Node!15926) (right!57240 (left!56910 xs!273)))) b!7938098))

(assert (= b!7938099 b!7938100))

(assert (= (and b!7937944 ((_ is Leaf!30271) (right!57240 (left!56910 xs!273)))) b!7938099))

(declare-fun m!8327090 () Bool)

(assert (=> b!7938098 m!8327090))

(declare-fun m!8327092 () Bool)

(assert (=> b!7938098 m!8327092))

(declare-fun m!8327094 () Bool)

(assert (=> b!7938099 m!8327094))

(assert (=> b!7937944 m!8326854))

(declare-fun tp!2360091 () Bool)

(declare-fun b!7938101 () Bool)

(declare-fun tp!2360092 () Bool)

(declare-fun e!4683948 () Bool)

(assert (=> b!7938101 (= e!4683948 (and (inv!95850 (left!56910 (left!56910 (right!57240 xs!273)))) tp!2360091 (inv!95850 (right!57240 (left!56910 (right!57240 xs!273)))) tp!2360092))))

(declare-fun b!7938103 () Bool)

(declare-fun e!4683947 () Bool)

(declare-fun tp!2360090 () Bool)

(assert (=> b!7938103 (= e!4683947 tp!2360090)))

(declare-fun b!7938102 () Bool)

(assert (=> b!7938102 (= e!4683948 (and (inv!95851 (xs!19324 (left!56910 (right!57240 xs!273)))) e!4683947))))

(assert (=> b!7937950 (= tp!2360045 (and (inv!95850 (left!56910 (right!57240 xs!273))) e!4683948))))

(assert (= (and b!7937950 ((_ is Node!15926) (left!56910 (right!57240 xs!273)))) b!7938101))

(assert (= b!7938102 b!7938103))

(assert (= (and b!7937950 ((_ is Leaf!30271) (left!56910 (right!57240 xs!273)))) b!7938102))

(declare-fun m!8327096 () Bool)

(assert (=> b!7938101 m!8327096))

(declare-fun m!8327098 () Bool)

(assert (=> b!7938101 m!8327098))

(declare-fun m!8327100 () Bool)

(assert (=> b!7938102 m!8327100))

(assert (=> b!7937950 m!8326864))

(declare-fun tp!2360095 () Bool)

(declare-fun e!4683950 () Bool)

(declare-fun b!7938104 () Bool)

(declare-fun tp!2360094 () Bool)

(assert (=> b!7938104 (= e!4683950 (and (inv!95850 (left!56910 (right!57240 (right!57240 xs!273)))) tp!2360094 (inv!95850 (right!57240 (right!57240 (right!57240 xs!273)))) tp!2360095))))

(declare-fun b!7938106 () Bool)

(declare-fun e!4683949 () Bool)

(declare-fun tp!2360093 () Bool)

(assert (=> b!7938106 (= e!4683949 tp!2360093)))

(declare-fun b!7938105 () Bool)

(assert (=> b!7938105 (= e!4683950 (and (inv!95851 (xs!19324 (right!57240 (right!57240 xs!273)))) e!4683949))))

(assert (=> b!7937950 (= tp!2360046 (and (inv!95850 (right!57240 (right!57240 xs!273))) e!4683950))))

(assert (= (and b!7937950 ((_ is Node!15926) (right!57240 (right!57240 xs!273)))) b!7938104))

(assert (= b!7938105 b!7938106))

(assert (= (and b!7937950 ((_ is Leaf!30271) (right!57240 (right!57240 xs!273)))) b!7938105))

(declare-fun m!8327102 () Bool)

(assert (=> b!7938104 m!8327102))

(declare-fun m!8327104 () Bool)

(assert (=> b!7938104 m!8327104))

(declare-fun m!8327106 () Bool)

(assert (=> b!7938105 m!8327106))

(assert (=> b!7937950 m!8326866))

(declare-fun b!7938107 () Bool)

(declare-fun e!4683951 () Bool)

(declare-fun tp!2360096 () Bool)

(assert (=> b!7938107 (= e!4683951 (and tp_is_empty!53281 tp!2360096))))

(assert (=> b!7937967 (= tp!2360059 e!4683951)))

(assert (= (and b!7937967 ((_ is Cons!74474) (t!390315 (innerList!16014 (xs!19324 ys!40))))) b!7938107))

(check-sat (not b!7938088) (not b!7938096) (not b!7938067) (not b!7938032) (not d!2374135) (not b!7937979) (not b!7938083) tp_is_empty!53281 (not b!7938077) (not b!7938094) (not b!7938016) (not d!2374151) (not b!7938060) (not b!7937992) (not b!7938081) (not d!2374157) (not b!7937990) (not b!7938105) (not b!7938042) (not b!7938086) (not b!7938098) (not b!7938019) (not b!7938076) (not b!7938097) (not b!7938092) (not d!2374115) (not b!7938027) (not d!2374165) (not b!7938048) (not b!7938079) (not b!7938071) (not d!2374149) (not b!7938090) (not b!7938106) (not b!7938038) (not b!7937994) (not b!7938089) (not b!7938053) (not b!7937981) (not b!7937995) (not b!7938101) (not b!7938021) (not b!7938107) (not b!7937968) (not b!7938091) (not b!7938018) (not b!7938015) (not d!2374117) (not d!2374145) (not d!2374159) (not b!7938103) (not b!7937972) (not b!7938035) (not b!7937944) (not b!7938068) (not b!7938087) (not b!7938029) (not b!7938100) (not d!2374129) (not b!7938080) (not b!7938104) (not b!7938058) (not d!2374119) (not b!7938078) (not b!7938003) (not b!7938066) (not d!2374143) (not b!7938045) (not d!2374173) (not b!7938063) (not d!2374177) (not b!7938093) (not b!7938014) (not d!2374167) (not b!7938056) (not b!7938025) (not d!2374147) (not b!7938095) (not d!2374137) (not b!7938099) (not b!7938055) (not b!7938051) (not b!7938044) (not b!7938082) (not b!7937950) (not b!7937997) (not b!7938022) (not d!2374141) (not b!7938102) (not b!7938040) (not b!7938047))
(check-sat)
