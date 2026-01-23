; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229402 () Bool)

(assert start!229402)

(declare-fun b!2324331 () Bool)

(declare-fun e!1489435 () Bool)

(declare-fun e!1489432 () Bool)

(assert (=> b!2324331 (= e!1489435 e!1489432)))

(declare-fun res!992836 () Bool)

(assert (=> b!2324331 (=> res!992836 e!1489432)))

(declare-datatypes ((T!43936 0))(
  ( (T!43937 (val!7984 Int)) )
))
(declare-datatypes ((List!27770 0))(
  ( (Nil!27672) (Cons!27672 (h!33073 T!43936) (t!207464 List!27770)) )
))
(declare-fun lt!861057 () List!27770)

(declare-fun lt!861058 () List!27770)

(assert (=> b!2324331 (= res!992836 (not (= lt!861057 lt!861058)))))

(declare-fun ++!6831 (List!27770 List!27770) List!27770)

(declare-fun slice!708 (List!27770 Int Int) List!27770)

(declare-fun size!21943 (List!27770) Int)

(assert (=> b!2324331 (= (++!6831 (slice!708 lt!861058 0 512) (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861058)))

(declare-datatypes ((Unit!40522 0))(
  ( (Unit!40523) )
))
(declare-fun lt!861065 () Unit!40522)

(declare-fun sliceSplit!24 (List!27770 Int) Unit!40522)

(assert (=> b!2324331 (= lt!861065 (sliceSplit!24 lt!861058 512))))

(declare-datatypes ((IArray!18159 0))(
  ( (IArray!18160 (innerList!9137 List!27770)) )
))
(declare-fun arr!18 () IArray!18159)

(declare-fun list!11020 (IArray!18159) List!27770)

(assert (=> b!2324331 (= lt!861058 (list!11020 arr!18))))

(declare-fun b!2324332 () Bool)

(declare-fun res!992834 () Bool)

(assert (=> b!2324332 (=> res!992834 e!1489435)))

(declare-datatypes ((Conc!9077 0))(
  ( (Node!9077 (left!21012 Conc!9077) (right!21342 Conc!9077) (csize!18384 Int) (cheight!9288 Int)) (Leaf!13325 (xs!12051 IArray!18159) (csize!18385 Int)) (Empty!9077) )
))
(declare-fun lt!861063 () Conc!9077)

(declare-fun isBalanced!2771 (Conc!9077) Bool)

(assert (=> b!2324332 (= res!992834 (not (isBalanced!2771 lt!861063)))))

(declare-fun acc!252 () Conc!9077)

(declare-fun b!2324333 () Bool)

(declare-fun tp!736990 () Bool)

(declare-fun e!1489430 () Bool)

(declare-fun tp!736989 () Bool)

(declare-fun inv!37661 (Conc!9077) Bool)

(assert (=> b!2324333 (= e!1489430 (and (inv!37661 (left!21012 acc!252)) tp!736990 (inv!37661 (right!21342 acc!252)) tp!736989))))

(declare-fun b!2324334 () Bool)

(declare-fun e!1489431 () Bool)

(declare-fun e!1489434 () Bool)

(assert (=> b!2324334 (= e!1489431 e!1489434)))

(declare-fun res!992830 () Bool)

(assert (=> b!2324334 (=> (not res!992830) (not e!1489434))))

(declare-fun lt!861067 () List!27770)

(declare-fun lt!861066 () List!27770)

(assert (=> b!2324334 (= res!992830 (= lt!861067 lt!861066))))

(declare-fun list!11021 (Conc!9077) List!27770)

(assert (=> b!2324334 (= lt!861066 (list!11021 lt!861063))))

(declare-fun lt!861059 () List!27770)

(declare-fun lt!861064 () List!27770)

(declare-fun lt!861068 () List!27770)

(assert (=> b!2324334 (= lt!861067 (++!6831 (++!6831 lt!861059 lt!861064) lt!861068))))

(declare-fun lt!861069 () IArray!18159)

(assert (=> b!2324334 (= lt!861068 (list!11020 lt!861069))))

(declare-fun lt!861061 () Conc!9077)

(assert (=> b!2324334 (= lt!861064 (list!11021 lt!861061))))

(assert (=> b!2324334 (= lt!861059 (list!11021 acc!252))))

(declare-fun fromArray!35 (IArray!18159 Conc!9077) Conc!9077)

(declare-fun ++!6832 (Conc!9077 Conc!9077) Conc!9077)

(assert (=> b!2324334 (= lt!861063 (fromArray!35 lt!861069 (++!6832 acc!252 lt!861061)))))

(declare-fun lt!861062 () Int)

(declare-fun slice!709 (IArray!18159 Int Int) IArray!18159)

(assert (=> b!2324334 (= lt!861069 (slice!709 arr!18 512 lt!861062))))

(assert (=> b!2324334 (= lt!861061 (Leaf!13325 (slice!709 arr!18 0 512) 512))))

(declare-fun b!2324335 () Bool)

(declare-fun e!1489437 () Bool)

(declare-fun inv!37662 (IArray!18159) Bool)

(assert (=> b!2324335 (= e!1489430 (and (inv!37662 (xs!12051 acc!252)) e!1489437))))

(declare-fun b!2324336 () Bool)

(declare-fun res!992832 () Bool)

(assert (=> b!2324336 (=> res!992832 e!1489432)))

(assert (=> b!2324336 (= res!992832 (not (= lt!861066 (++!6831 lt!861059 lt!861058))))))

(declare-fun res!992831 () Bool)

(declare-fun e!1489436 () Bool)

(assert (=> start!229402 (=> (not res!992831) (not e!1489436))))

(assert (=> start!229402 (= res!992831 (isBalanced!2771 acc!252))))

(assert (=> start!229402 e!1489436))

(assert (=> start!229402 (and (inv!37661 acc!252) e!1489430)))

(declare-fun e!1489433 () Bool)

(assert (=> start!229402 (and (inv!37662 arr!18) e!1489433)))

(declare-fun b!2324337 () Bool)

(declare-fun tp!736988 () Bool)

(assert (=> b!2324337 (= e!1489433 tp!736988)))

(declare-fun b!2324338 () Bool)

(declare-fun tp!736991 () Bool)

(assert (=> b!2324338 (= e!1489437 tp!736991)))

(declare-fun b!2324339 () Bool)

(assert (=> b!2324339 (= e!1489436 e!1489431)))

(declare-fun res!992835 () Bool)

(assert (=> b!2324339 (=> (not res!992835) (not e!1489431))))

(assert (=> b!2324339 (= res!992835 (> lt!861062 512))))

(declare-fun size!21944 (IArray!18159) Int)

(assert (=> b!2324339 (= lt!861062 (size!21944 arr!18))))

(declare-fun b!2324340 () Bool)

(assert (=> b!2324340 (= e!1489434 (not e!1489435))))

(declare-fun res!992833 () Bool)

(assert (=> b!2324340 (=> res!992833 e!1489435)))

(declare-fun lt!861056 () List!27770)

(assert (=> b!2324340 (= res!992833 (not (= lt!861056 lt!861066)))))

(assert (=> b!2324340 (= lt!861067 lt!861056)))

(assert (=> b!2324340 (= lt!861056 (++!6831 lt!861059 lt!861057))))

(assert (=> b!2324340 (= lt!861057 (++!6831 lt!861064 lt!861068))))

(declare-fun lt!861060 () Unit!40522)

(declare-fun lemmaConcatAssociativity!1459 (List!27770 List!27770 List!27770) Unit!40522)

(assert (=> b!2324340 (= lt!861060 (lemmaConcatAssociativity!1459 lt!861059 lt!861064 lt!861068))))

(declare-fun b!2324341 () Bool)

(assert (=> b!2324341 (= e!1489432 (< (size!21944 lt!861069) lt!861062))))

(assert (= (and start!229402 res!992831) b!2324339))

(assert (= (and b!2324339 res!992835) b!2324334))

(assert (= (and b!2324334 res!992830) b!2324340))

(assert (= (and b!2324340 (not res!992833)) b!2324332))

(assert (= (and b!2324332 (not res!992834)) b!2324331))

(assert (= (and b!2324331 (not res!992836)) b!2324336))

(assert (= (and b!2324336 (not res!992832)) b!2324341))

(get-info :version)

(assert (= (and start!229402 ((_ is Node!9077) acc!252)) b!2324333))

(assert (= b!2324335 b!2324338))

(assert (= (and start!229402 ((_ is Leaf!13325) acc!252)) b!2324335))

(assert (= start!229402 b!2324337))

(declare-fun m!2754765 () Bool)

(assert (=> b!2324339 m!2754765))

(declare-fun m!2754767 () Bool)

(assert (=> b!2324334 m!2754767))

(declare-fun m!2754769 () Bool)

(assert (=> b!2324334 m!2754769))

(declare-fun m!2754771 () Bool)

(assert (=> b!2324334 m!2754771))

(assert (=> b!2324334 m!2754769))

(declare-fun m!2754773 () Bool)

(assert (=> b!2324334 m!2754773))

(declare-fun m!2754775 () Bool)

(assert (=> b!2324334 m!2754775))

(declare-fun m!2754777 () Bool)

(assert (=> b!2324334 m!2754777))

(declare-fun m!2754779 () Bool)

(assert (=> b!2324334 m!2754779))

(declare-fun m!2754781 () Bool)

(assert (=> b!2324334 m!2754781))

(declare-fun m!2754783 () Bool)

(assert (=> b!2324334 m!2754783))

(declare-fun m!2754785 () Bool)

(assert (=> b!2324334 m!2754785))

(assert (=> b!2324334 m!2754775))

(declare-fun m!2754787 () Bool)

(assert (=> b!2324332 m!2754787))

(declare-fun m!2754789 () Bool)

(assert (=> b!2324335 m!2754789))

(declare-fun m!2754791 () Bool)

(assert (=> b!2324331 m!2754791))

(declare-fun m!2754793 () Bool)

(assert (=> b!2324331 m!2754793))

(assert (=> b!2324331 m!2754791))

(declare-fun m!2754795 () Bool)

(assert (=> b!2324331 m!2754795))

(declare-fun m!2754797 () Bool)

(assert (=> b!2324331 m!2754797))

(assert (=> b!2324331 m!2754793))

(assert (=> b!2324331 m!2754795))

(declare-fun m!2754799 () Bool)

(assert (=> b!2324331 m!2754799))

(declare-fun m!2754801 () Bool)

(assert (=> b!2324331 m!2754801))

(declare-fun m!2754803 () Bool)

(assert (=> b!2324333 m!2754803))

(declare-fun m!2754805 () Bool)

(assert (=> b!2324333 m!2754805))

(declare-fun m!2754807 () Bool)

(assert (=> b!2324340 m!2754807))

(declare-fun m!2754809 () Bool)

(assert (=> b!2324340 m!2754809))

(declare-fun m!2754811 () Bool)

(assert (=> b!2324340 m!2754811))

(declare-fun m!2754813 () Bool)

(assert (=> b!2324336 m!2754813))

(declare-fun m!2754815 () Bool)

(assert (=> b!2324341 m!2754815))

(declare-fun m!2754817 () Bool)

(assert (=> start!229402 m!2754817))

(declare-fun m!2754819 () Bool)

(assert (=> start!229402 m!2754819))

(declare-fun m!2754821 () Bool)

(assert (=> start!229402 m!2754821))

(check-sat (not b!2324340) (not b!2324337) (not b!2324334) (not start!229402) (not b!2324332) (not b!2324333) (not b!2324338) (not b!2324336) (not b!2324335) (not b!2324341) (not b!2324331) (not b!2324339))
(check-sat)
(get-model)

(declare-fun d!688096 () Bool)

(declare-fun c!368884 () Bool)

(assert (=> d!688096 (= c!368884 ((_ is Node!9077) (left!21012 acc!252)))))

(declare-fun e!1489442 () Bool)

(assert (=> d!688096 (= (inv!37661 (left!21012 acc!252)) e!1489442)))

(declare-fun b!2324348 () Bool)

(declare-fun inv!37665 (Conc!9077) Bool)

(assert (=> b!2324348 (= e!1489442 (inv!37665 (left!21012 acc!252)))))

(declare-fun b!2324349 () Bool)

(declare-fun e!1489443 () Bool)

(assert (=> b!2324349 (= e!1489442 e!1489443)))

(declare-fun res!992839 () Bool)

(assert (=> b!2324349 (= res!992839 (not ((_ is Leaf!13325) (left!21012 acc!252))))))

(assert (=> b!2324349 (=> res!992839 e!1489443)))

(declare-fun b!2324350 () Bool)

(declare-fun inv!37666 (Conc!9077) Bool)

(assert (=> b!2324350 (= e!1489443 (inv!37666 (left!21012 acc!252)))))

(assert (= (and d!688096 c!368884) b!2324348))

(assert (= (and d!688096 (not c!368884)) b!2324349))

(assert (= (and b!2324349 (not res!992839)) b!2324350))

(declare-fun m!2754829 () Bool)

(assert (=> b!2324348 m!2754829))

(declare-fun m!2754831 () Bool)

(assert (=> b!2324350 m!2754831))

(assert (=> b!2324333 d!688096))

(declare-fun d!688104 () Bool)

(declare-fun c!368885 () Bool)

(assert (=> d!688104 (= c!368885 ((_ is Node!9077) (right!21342 acc!252)))))

(declare-fun e!1489444 () Bool)

(assert (=> d!688104 (= (inv!37661 (right!21342 acc!252)) e!1489444)))

(declare-fun b!2324351 () Bool)

(assert (=> b!2324351 (= e!1489444 (inv!37665 (right!21342 acc!252)))))

(declare-fun b!2324352 () Bool)

(declare-fun e!1489445 () Bool)

(assert (=> b!2324352 (= e!1489444 e!1489445)))

(declare-fun res!992840 () Bool)

(assert (=> b!2324352 (= res!992840 (not ((_ is Leaf!13325) (right!21342 acc!252))))))

(assert (=> b!2324352 (=> res!992840 e!1489445)))

(declare-fun b!2324353 () Bool)

(assert (=> b!2324353 (= e!1489445 (inv!37666 (right!21342 acc!252)))))

(assert (= (and d!688104 c!368885) b!2324351))

(assert (= (and d!688104 (not c!368885)) b!2324352))

(assert (= (and b!2324352 (not res!992840)) b!2324353))

(declare-fun m!2754833 () Bool)

(assert (=> b!2324351 m!2754833))

(declare-fun m!2754835 () Bool)

(assert (=> b!2324353 m!2754835))

(assert (=> b!2324333 d!688104))

(declare-fun b!2324384 () Bool)

(declare-fun res!992872 () Bool)

(declare-fun e!1489456 () Bool)

(assert (=> b!2324384 (=> (not res!992872) (not e!1489456))))

(assert (=> b!2324384 (= res!992872 (isBalanced!2771 (right!21342 lt!861063)))))

(declare-fun b!2324385 () Bool)

(declare-fun res!992874 () Bool)

(assert (=> b!2324385 (=> (not res!992874) (not e!1489456))))

(declare-fun height!1336 (Conc!9077) Int)

(assert (=> b!2324385 (= res!992874 (<= (- (height!1336 (left!21012 lt!861063)) (height!1336 (right!21342 lt!861063))) 1))))

(declare-fun b!2324387 () Bool)

(declare-fun e!1489457 () Bool)

(assert (=> b!2324387 (= e!1489457 e!1489456)))

(declare-fun res!992876 () Bool)

(assert (=> b!2324387 (=> (not res!992876) (not e!1489456))))

(assert (=> b!2324387 (= res!992876 (<= (- 1) (- (height!1336 (left!21012 lt!861063)) (height!1336 (right!21342 lt!861063)))))))

(declare-fun b!2324388 () Bool)

(declare-fun res!992873 () Bool)

(assert (=> b!2324388 (=> (not res!992873) (not e!1489456))))

(assert (=> b!2324388 (= res!992873 (isBalanced!2771 (left!21012 lt!861063)))))

(declare-fun b!2324389 () Bool)

(declare-fun isEmpty!15804 (Conc!9077) Bool)

(assert (=> b!2324389 (= e!1489456 (not (isEmpty!15804 (right!21342 lt!861063))))))

(declare-fun d!688106 () Bool)

(declare-fun res!992875 () Bool)

(assert (=> d!688106 (=> res!992875 e!1489457)))

(assert (=> d!688106 (= res!992875 (not ((_ is Node!9077) lt!861063)))))

(assert (=> d!688106 (= (isBalanced!2771 lt!861063) e!1489457)))

(declare-fun b!2324386 () Bool)

(declare-fun res!992871 () Bool)

(assert (=> b!2324386 (=> (not res!992871) (not e!1489456))))

(assert (=> b!2324386 (= res!992871 (not (isEmpty!15804 (left!21012 lt!861063))))))

(assert (= (and d!688106 (not res!992875)) b!2324387))

(assert (= (and b!2324387 res!992876) b!2324385))

(assert (= (and b!2324385 res!992874) b!2324388))

(assert (= (and b!2324388 res!992873) b!2324384))

(assert (= (and b!2324384 res!992872) b!2324386))

(assert (= (and b!2324386 res!992871) b!2324389))

(declare-fun m!2754849 () Bool)

(assert (=> b!2324386 m!2754849))

(declare-fun m!2754851 () Bool)

(assert (=> b!2324389 m!2754851))

(declare-fun m!2754853 () Bool)

(assert (=> b!2324388 m!2754853))

(declare-fun m!2754855 () Bool)

(assert (=> b!2324385 m!2754855))

(declare-fun m!2754857 () Bool)

(assert (=> b!2324385 m!2754857))

(declare-fun m!2754859 () Bool)

(assert (=> b!2324384 m!2754859))

(assert (=> b!2324387 m!2754855))

(assert (=> b!2324387 m!2754857))

(assert (=> b!2324332 d!688106))

(declare-fun b!2324390 () Bool)

(declare-fun res!992878 () Bool)

(declare-fun e!1489458 () Bool)

(assert (=> b!2324390 (=> (not res!992878) (not e!1489458))))

(assert (=> b!2324390 (= res!992878 (isBalanced!2771 (right!21342 acc!252)))))

(declare-fun b!2324391 () Bool)

(declare-fun res!992880 () Bool)

(assert (=> b!2324391 (=> (not res!992880) (not e!1489458))))

(assert (=> b!2324391 (= res!992880 (<= (- (height!1336 (left!21012 acc!252)) (height!1336 (right!21342 acc!252))) 1))))

(declare-fun b!2324393 () Bool)

(declare-fun e!1489459 () Bool)

(assert (=> b!2324393 (= e!1489459 e!1489458)))

(declare-fun res!992882 () Bool)

(assert (=> b!2324393 (=> (not res!992882) (not e!1489458))))

(assert (=> b!2324393 (= res!992882 (<= (- 1) (- (height!1336 (left!21012 acc!252)) (height!1336 (right!21342 acc!252)))))))

(declare-fun b!2324394 () Bool)

(declare-fun res!992879 () Bool)

(assert (=> b!2324394 (=> (not res!992879) (not e!1489458))))

(assert (=> b!2324394 (= res!992879 (isBalanced!2771 (left!21012 acc!252)))))

(declare-fun b!2324395 () Bool)

(assert (=> b!2324395 (= e!1489458 (not (isEmpty!15804 (right!21342 acc!252))))))

(declare-fun d!688110 () Bool)

(declare-fun res!992881 () Bool)

(assert (=> d!688110 (=> res!992881 e!1489459)))

(assert (=> d!688110 (= res!992881 (not ((_ is Node!9077) acc!252)))))

(assert (=> d!688110 (= (isBalanced!2771 acc!252) e!1489459)))

(declare-fun b!2324392 () Bool)

(declare-fun res!992877 () Bool)

(assert (=> b!2324392 (=> (not res!992877) (not e!1489458))))

(assert (=> b!2324392 (= res!992877 (not (isEmpty!15804 (left!21012 acc!252))))))

(assert (= (and d!688110 (not res!992881)) b!2324393))

(assert (= (and b!2324393 res!992882) b!2324391))

(assert (= (and b!2324391 res!992880) b!2324394))

(assert (= (and b!2324394 res!992879) b!2324390))

(assert (= (and b!2324390 res!992878) b!2324392))

(assert (= (and b!2324392 res!992877) b!2324395))

(declare-fun m!2754861 () Bool)

(assert (=> b!2324392 m!2754861))

(declare-fun m!2754863 () Bool)

(assert (=> b!2324395 m!2754863))

(declare-fun m!2754865 () Bool)

(assert (=> b!2324394 m!2754865))

(declare-fun m!2754867 () Bool)

(assert (=> b!2324391 m!2754867))

(declare-fun m!2754869 () Bool)

(assert (=> b!2324391 m!2754869))

(declare-fun m!2754871 () Bool)

(assert (=> b!2324390 m!2754871))

(assert (=> b!2324393 m!2754867))

(assert (=> b!2324393 m!2754869))

(assert (=> start!229402 d!688110))

(declare-fun d!688112 () Bool)

(declare-fun c!368886 () Bool)

(assert (=> d!688112 (= c!368886 ((_ is Node!9077) acc!252))))

(declare-fun e!1489460 () Bool)

(assert (=> d!688112 (= (inv!37661 acc!252) e!1489460)))

(declare-fun b!2324396 () Bool)

(assert (=> b!2324396 (= e!1489460 (inv!37665 acc!252))))

(declare-fun b!2324397 () Bool)

(declare-fun e!1489461 () Bool)

(assert (=> b!2324397 (= e!1489460 e!1489461)))

(declare-fun res!992883 () Bool)

(assert (=> b!2324397 (= res!992883 (not ((_ is Leaf!13325) acc!252)))))

(assert (=> b!2324397 (=> res!992883 e!1489461)))

(declare-fun b!2324398 () Bool)

(assert (=> b!2324398 (= e!1489461 (inv!37666 acc!252))))

(assert (= (and d!688112 c!368886) b!2324396))

(assert (= (and d!688112 (not c!368886)) b!2324397))

(assert (= (and b!2324397 (not res!992883)) b!2324398))

(declare-fun m!2754873 () Bool)

(assert (=> b!2324396 m!2754873))

(declare-fun m!2754875 () Bool)

(assert (=> b!2324398 m!2754875))

(assert (=> start!229402 d!688112))

(declare-fun d!688114 () Bool)

(assert (=> d!688114 (= (inv!37662 arr!18) (<= (size!21943 (innerList!9137 arr!18)) 2147483647))))

(declare-fun bs!459198 () Bool)

(assert (= bs!459198 d!688114))

(declare-fun m!2754877 () Bool)

(assert (=> bs!459198 m!2754877))

(assert (=> start!229402 d!688114))

(declare-fun b!2324417 () Bool)

(declare-fun e!1489473 () List!27770)

(assert (=> b!2324417 (= e!1489473 (Cons!27672 (h!33073 lt!861059) (++!6831 (t!207464 lt!861059) lt!861058)))))

(declare-fun e!1489472 () Bool)

(declare-fun b!2324419 () Bool)

(declare-fun lt!861077 () List!27770)

(assert (=> b!2324419 (= e!1489472 (or (not (= lt!861058 Nil!27672)) (= lt!861077 lt!861059)))))

(declare-fun d!688116 () Bool)

(assert (=> d!688116 e!1489472))

(declare-fun res!992891 () Bool)

(assert (=> d!688116 (=> (not res!992891) (not e!1489472))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3748 (List!27770) (InoxSet T!43936))

(assert (=> d!688116 (= res!992891 (= (content!3748 lt!861077) ((_ map or) (content!3748 lt!861059) (content!3748 lt!861058))))))

(assert (=> d!688116 (= lt!861077 e!1489473)))

(declare-fun c!368892 () Bool)

(assert (=> d!688116 (= c!368892 ((_ is Nil!27672) lt!861059))))

(assert (=> d!688116 (= (++!6831 lt!861059 lt!861058) lt!861077)))

(declare-fun b!2324418 () Bool)

(declare-fun res!992892 () Bool)

(assert (=> b!2324418 (=> (not res!992892) (not e!1489472))))

(assert (=> b!2324418 (= res!992892 (= (size!21943 lt!861077) (+ (size!21943 lt!861059) (size!21943 lt!861058))))))

(declare-fun b!2324416 () Bool)

(assert (=> b!2324416 (= e!1489473 lt!861058)))

(assert (= (and d!688116 c!368892) b!2324416))

(assert (= (and d!688116 (not c!368892)) b!2324417))

(assert (= (and d!688116 res!992891) b!2324418))

(assert (= (and b!2324418 res!992892) b!2324419))

(declare-fun m!2754891 () Bool)

(assert (=> b!2324417 m!2754891))

(declare-fun m!2754893 () Bool)

(assert (=> d!688116 m!2754893))

(declare-fun m!2754895 () Bool)

(assert (=> d!688116 m!2754895))

(declare-fun m!2754897 () Bool)

(assert (=> d!688116 m!2754897))

(declare-fun m!2754899 () Bool)

(assert (=> b!2324418 m!2754899))

(declare-fun m!2754901 () Bool)

(assert (=> b!2324418 m!2754901))

(assert (=> b!2324418 m!2754791))

(assert (=> b!2324336 d!688116))

(declare-fun d!688126 () Bool)

(declare-fun lt!861081 () Int)

(assert (=> d!688126 (>= lt!861081 0)))

(declare-fun e!1489476 () Int)

(assert (=> d!688126 (= lt!861081 e!1489476)))

(declare-fun c!368895 () Bool)

(assert (=> d!688126 (= c!368895 ((_ is Nil!27672) lt!861058))))

(assert (=> d!688126 (= (size!21943 lt!861058) lt!861081)))

(declare-fun b!2324424 () Bool)

(assert (=> b!2324424 (= e!1489476 0)))

(declare-fun b!2324425 () Bool)

(assert (=> b!2324425 (= e!1489476 (+ 1 (size!21943 (t!207464 lt!861058))))))

(assert (= (and d!688126 c!368895) b!2324424))

(assert (= (and d!688126 (not c!368895)) b!2324425))

(declare-fun m!2754903 () Bool)

(assert (=> b!2324425 m!2754903))

(assert (=> b!2324331 d!688126))

(declare-fun d!688130 () Bool)

(declare-fun take!487 (List!27770 Int) List!27770)

(declare-fun drop!1510 (List!27770 Int) List!27770)

(assert (=> d!688130 (= (slice!708 lt!861058 512 (size!21943 lt!861058)) (take!487 (drop!1510 lt!861058 512) (- (size!21943 lt!861058) 512)))))

(declare-fun bs!459202 () Bool)

(assert (= bs!459202 d!688130))

(declare-fun m!2754905 () Bool)

(assert (=> bs!459202 m!2754905))

(assert (=> bs!459202 m!2754905))

(declare-fun m!2754907 () Bool)

(assert (=> bs!459202 m!2754907))

(assert (=> b!2324331 d!688130))

(declare-fun d!688132 () Bool)

(assert (=> d!688132 (= (slice!708 lt!861058 0 512) (take!487 (drop!1510 lt!861058 0) (- 512 0)))))

(declare-fun bs!459203 () Bool)

(assert (= bs!459203 d!688132))

(declare-fun m!2754909 () Bool)

(assert (=> bs!459203 m!2754909))

(assert (=> bs!459203 m!2754909))

(declare-fun m!2754911 () Bool)

(assert (=> bs!459203 m!2754911))

(assert (=> b!2324331 d!688132))

(declare-fun b!2324439 () Bool)

(declare-fun e!1489484 () List!27770)

(assert (=> b!2324439 (= e!1489484 (Cons!27672 (h!33073 (slice!708 lt!861058 0 512)) (++!6831 (t!207464 (slice!708 lt!861058 0 512)) (slice!708 lt!861058 512 (size!21943 lt!861058)))))))

(declare-fun b!2324441 () Bool)

(declare-fun e!1489483 () Bool)

(declare-fun lt!861085 () List!27770)

(assert (=> b!2324441 (= e!1489483 (or (not (= (slice!708 lt!861058 512 (size!21943 lt!861058)) Nil!27672)) (= lt!861085 (slice!708 lt!861058 0 512))))))

(declare-fun d!688134 () Bool)

(assert (=> d!688134 e!1489483))

(declare-fun res!992899 () Bool)

(assert (=> d!688134 (=> (not res!992899) (not e!1489483))))

(assert (=> d!688134 (= res!992899 (= (content!3748 lt!861085) ((_ map or) (content!3748 (slice!708 lt!861058 0 512)) (content!3748 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(assert (=> d!688134 (= lt!861085 e!1489484)))

(declare-fun c!368899 () Bool)

(assert (=> d!688134 (= c!368899 ((_ is Nil!27672) (slice!708 lt!861058 0 512)))))

(assert (=> d!688134 (= (++!6831 (slice!708 lt!861058 0 512) (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861085)))

(declare-fun b!2324440 () Bool)

(declare-fun res!992900 () Bool)

(assert (=> b!2324440 (=> (not res!992900) (not e!1489483))))

(assert (=> b!2324440 (= res!992900 (= (size!21943 lt!861085) (+ (size!21943 (slice!708 lt!861058 0 512)) (size!21943 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(declare-fun b!2324438 () Bool)

(assert (=> b!2324438 (= e!1489484 (slice!708 lt!861058 512 (size!21943 lt!861058)))))

(assert (= (and d!688134 c!368899) b!2324438))

(assert (= (and d!688134 (not c!368899)) b!2324439))

(assert (= (and d!688134 res!992899) b!2324440))

(assert (= (and b!2324440 res!992900) b!2324441))

(assert (=> b!2324439 m!2754795))

(declare-fun m!2754925 () Bool)

(assert (=> b!2324439 m!2754925))

(declare-fun m!2754929 () Bool)

(assert (=> d!688134 m!2754929))

(assert (=> d!688134 m!2754793))

(declare-fun m!2754931 () Bool)

(assert (=> d!688134 m!2754931))

(assert (=> d!688134 m!2754795))

(declare-fun m!2754933 () Bool)

(assert (=> d!688134 m!2754933))

(declare-fun m!2754935 () Bool)

(assert (=> b!2324440 m!2754935))

(assert (=> b!2324440 m!2754793))

(declare-fun m!2754937 () Bool)

(assert (=> b!2324440 m!2754937))

(assert (=> b!2324440 m!2754795))

(declare-fun m!2754939 () Bool)

(assert (=> b!2324440 m!2754939))

(assert (=> b!2324331 d!688134))

(declare-fun d!688138 () Bool)

(assert (=> d!688138 (= (list!11020 arr!18) (innerList!9137 arr!18))))

(assert (=> b!2324331 d!688138))

(declare-fun d!688142 () Bool)

(assert (=> d!688142 (= (++!6831 (slice!708 lt!861058 0 512) (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861058)))

(declare-fun lt!861093 () Unit!40522)

(declare-fun choose!13610 (List!27770 Int) Unit!40522)

(assert (=> d!688142 (= lt!861093 (choose!13610 lt!861058 512))))

(assert (=> d!688142 (= (sliceSplit!24 lt!861058 512) lt!861093)))

(declare-fun bs!459205 () Bool)

(assert (= bs!459205 d!688142))

(assert (=> bs!459205 m!2754793))

(assert (=> bs!459205 m!2754795))

(assert (=> bs!459205 m!2754799))

(assert (=> bs!459205 m!2754791))

(assert (=> bs!459205 m!2754791))

(assert (=> bs!459205 m!2754795))

(assert (=> bs!459205 m!2754793))

(declare-fun m!2754985 () Bool)

(assert (=> bs!459205 m!2754985))

(assert (=> b!2324331 d!688142))

(declare-fun d!688154 () Bool)

(declare-fun lt!861099 () Int)

(assert (=> d!688154 (= lt!861099 (size!21943 (list!11020 lt!861069)))))

(declare-fun choose!13611 (IArray!18159) Int)

(assert (=> d!688154 (= lt!861099 (choose!13611 lt!861069))))

(assert (=> d!688154 (= (size!21944 lt!861069) lt!861099)))

(declare-fun bs!459206 () Bool)

(assert (= bs!459206 d!688154))

(assert (=> bs!459206 m!2754779))

(assert (=> bs!459206 m!2754779))

(declare-fun m!2754993 () Bool)

(assert (=> bs!459206 m!2754993))

(declare-fun m!2754995 () Bool)

(assert (=> bs!459206 m!2754995))

(assert (=> b!2324341 d!688154))

(declare-fun b!2324467 () Bool)

(declare-fun e!1489499 () List!27770)

(assert (=> b!2324467 (= e!1489499 (Cons!27672 (h!33073 lt!861059) (++!6831 (t!207464 lt!861059) lt!861057)))))

(declare-fun e!1489498 () Bool)

(declare-fun lt!861100 () List!27770)

(declare-fun b!2324469 () Bool)

(assert (=> b!2324469 (= e!1489498 (or (not (= lt!861057 Nil!27672)) (= lt!861100 lt!861059)))))

(declare-fun d!688158 () Bool)

(assert (=> d!688158 e!1489498))

(declare-fun res!992909 () Bool)

(assert (=> d!688158 (=> (not res!992909) (not e!1489498))))

(assert (=> d!688158 (= res!992909 (= (content!3748 lt!861100) ((_ map or) (content!3748 lt!861059) (content!3748 lt!861057))))))

(assert (=> d!688158 (= lt!861100 e!1489499)))

(declare-fun c!368908 () Bool)

(assert (=> d!688158 (= c!368908 ((_ is Nil!27672) lt!861059))))

(assert (=> d!688158 (= (++!6831 lt!861059 lt!861057) lt!861100)))

(declare-fun b!2324468 () Bool)

(declare-fun res!992910 () Bool)

(assert (=> b!2324468 (=> (not res!992910) (not e!1489498))))

(assert (=> b!2324468 (= res!992910 (= (size!21943 lt!861100) (+ (size!21943 lt!861059) (size!21943 lt!861057))))))

(declare-fun b!2324466 () Bool)

(assert (=> b!2324466 (= e!1489499 lt!861057)))

(assert (= (and d!688158 c!368908) b!2324466))

(assert (= (and d!688158 (not c!368908)) b!2324467))

(assert (= (and d!688158 res!992909) b!2324468))

(assert (= (and b!2324468 res!992910) b!2324469))

(declare-fun m!2754997 () Bool)

(assert (=> b!2324467 m!2754997))

(declare-fun m!2754999 () Bool)

(assert (=> d!688158 m!2754999))

(assert (=> d!688158 m!2754895))

(declare-fun m!2755001 () Bool)

(assert (=> d!688158 m!2755001))

(declare-fun m!2755003 () Bool)

(assert (=> b!2324468 m!2755003))

(assert (=> b!2324468 m!2754901))

(declare-fun m!2755007 () Bool)

(assert (=> b!2324468 m!2755007))

(assert (=> b!2324340 d!688158))

(declare-fun b!2324471 () Bool)

(declare-fun e!1489501 () List!27770)

(assert (=> b!2324471 (= e!1489501 (Cons!27672 (h!33073 lt!861064) (++!6831 (t!207464 lt!861064) lt!861068)))))

(declare-fun e!1489500 () Bool)

(declare-fun lt!861102 () List!27770)

(declare-fun b!2324473 () Bool)

(assert (=> b!2324473 (= e!1489500 (or (not (= lt!861068 Nil!27672)) (= lt!861102 lt!861064)))))

(declare-fun d!688160 () Bool)

(assert (=> d!688160 e!1489500))

(declare-fun res!992911 () Bool)

(assert (=> d!688160 (=> (not res!992911) (not e!1489500))))

(assert (=> d!688160 (= res!992911 (= (content!3748 lt!861102) ((_ map or) (content!3748 lt!861064) (content!3748 lt!861068))))))

(assert (=> d!688160 (= lt!861102 e!1489501)))

(declare-fun c!368909 () Bool)

(assert (=> d!688160 (= c!368909 ((_ is Nil!27672) lt!861064))))

(assert (=> d!688160 (= (++!6831 lt!861064 lt!861068) lt!861102)))

(declare-fun b!2324472 () Bool)

(declare-fun res!992912 () Bool)

(assert (=> b!2324472 (=> (not res!992912) (not e!1489500))))

(assert (=> b!2324472 (= res!992912 (= (size!21943 lt!861102) (+ (size!21943 lt!861064) (size!21943 lt!861068))))))

(declare-fun b!2324470 () Bool)

(assert (=> b!2324470 (= e!1489501 lt!861068)))

(assert (= (and d!688160 c!368909) b!2324470))

(assert (= (and d!688160 (not c!368909)) b!2324471))

(assert (= (and d!688160 res!992911) b!2324472))

(assert (= (and b!2324472 res!992912) b!2324473))

(declare-fun m!2755011 () Bool)

(assert (=> b!2324471 m!2755011))

(declare-fun m!2755013 () Bool)

(assert (=> d!688160 m!2755013))

(declare-fun m!2755015 () Bool)

(assert (=> d!688160 m!2755015))

(declare-fun m!2755017 () Bool)

(assert (=> d!688160 m!2755017))

(declare-fun m!2755019 () Bool)

(assert (=> b!2324472 m!2755019))

(declare-fun m!2755021 () Bool)

(assert (=> b!2324472 m!2755021))

(declare-fun m!2755023 () Bool)

(assert (=> b!2324472 m!2755023))

(assert (=> b!2324340 d!688160))

(declare-fun d!688164 () Bool)

(assert (=> d!688164 (= (++!6831 (++!6831 lt!861059 lt!861064) lt!861068) (++!6831 lt!861059 (++!6831 lt!861064 lt!861068)))))

(declare-fun lt!861106 () Unit!40522)

(declare-fun choose!13613 (List!27770 List!27770 List!27770) Unit!40522)

(assert (=> d!688164 (= lt!861106 (choose!13613 lt!861059 lt!861064 lt!861068))))

(assert (=> d!688164 (= (lemmaConcatAssociativity!1459 lt!861059 lt!861064 lt!861068) lt!861106)))

(declare-fun bs!459209 () Bool)

(assert (= bs!459209 d!688164))

(assert (=> bs!459209 m!2754769))

(assert (=> bs!459209 m!2754809))

(declare-fun m!2755041 () Bool)

(assert (=> bs!459209 m!2755041))

(declare-fun m!2755043 () Bool)

(assert (=> bs!459209 m!2755043))

(assert (=> bs!459209 m!2754769))

(assert (=> bs!459209 m!2754771))

(assert (=> bs!459209 m!2754809))

(assert (=> b!2324340 d!688164))

(declare-fun d!688170 () Bool)

(assert (=> d!688170 (= (inv!37662 (xs!12051 acc!252)) (<= (size!21943 (innerList!9137 (xs!12051 acc!252))) 2147483647))))

(declare-fun bs!459210 () Bool)

(assert (= bs!459210 d!688170))

(declare-fun m!2755045 () Bool)

(assert (=> bs!459210 m!2755045))

(assert (=> b!2324335 d!688170))

(declare-fun b!2324490 () Bool)

(declare-fun e!1489509 () List!27770)

(assert (=> b!2324490 (= e!1489509 (list!11020 (xs!12051 lt!861063)))))

(declare-fun b!2324491 () Bool)

(assert (=> b!2324491 (= e!1489509 (++!6831 (list!11021 (left!21012 lt!861063)) (list!11021 (right!21342 lt!861063))))))

(declare-fun d!688172 () Bool)

(declare-fun c!368914 () Bool)

(assert (=> d!688172 (= c!368914 ((_ is Empty!9077) lt!861063))))

(declare-fun e!1489508 () List!27770)

(assert (=> d!688172 (= (list!11021 lt!861063) e!1489508)))

(declare-fun b!2324489 () Bool)

(assert (=> b!2324489 (= e!1489508 e!1489509)))

(declare-fun c!368915 () Bool)

(assert (=> b!2324489 (= c!368915 ((_ is Leaf!13325) lt!861063))))

(declare-fun b!2324488 () Bool)

(assert (=> b!2324488 (= e!1489508 Nil!27672)))

(assert (= (and d!688172 c!368914) b!2324488))

(assert (= (and d!688172 (not c!368914)) b!2324489))

(assert (= (and b!2324489 c!368915) b!2324490))

(assert (= (and b!2324489 (not c!368915)) b!2324491))

(declare-fun m!2755047 () Bool)

(assert (=> b!2324490 m!2755047))

(declare-fun m!2755049 () Bool)

(assert (=> b!2324491 m!2755049))

(declare-fun m!2755051 () Bool)

(assert (=> b!2324491 m!2755051))

(assert (=> b!2324491 m!2755049))

(assert (=> b!2324491 m!2755051))

(declare-fun m!2755053 () Bool)

(assert (=> b!2324491 m!2755053))

(assert (=> b!2324334 d!688172))

(declare-fun b!2324493 () Bool)

(declare-fun e!1489511 () List!27770)

(assert (=> b!2324493 (= e!1489511 (Cons!27672 (h!33073 (++!6831 lt!861059 lt!861064)) (++!6831 (t!207464 (++!6831 lt!861059 lt!861064)) lt!861068)))))

(declare-fun e!1489510 () Bool)

(declare-fun b!2324495 () Bool)

(declare-fun lt!861107 () List!27770)

(assert (=> b!2324495 (= e!1489510 (or (not (= lt!861068 Nil!27672)) (= lt!861107 (++!6831 lt!861059 lt!861064))))))

(declare-fun d!688174 () Bool)

(assert (=> d!688174 e!1489510))

(declare-fun res!992919 () Bool)

(assert (=> d!688174 (=> (not res!992919) (not e!1489510))))

(assert (=> d!688174 (= res!992919 (= (content!3748 lt!861107) ((_ map or) (content!3748 (++!6831 lt!861059 lt!861064)) (content!3748 lt!861068))))))

(assert (=> d!688174 (= lt!861107 e!1489511)))

(declare-fun c!368916 () Bool)

(assert (=> d!688174 (= c!368916 ((_ is Nil!27672) (++!6831 lt!861059 lt!861064)))))

(assert (=> d!688174 (= (++!6831 (++!6831 lt!861059 lt!861064) lt!861068) lt!861107)))

(declare-fun b!2324494 () Bool)

(declare-fun res!992920 () Bool)

(assert (=> b!2324494 (=> (not res!992920) (not e!1489510))))

(assert (=> b!2324494 (= res!992920 (= (size!21943 lt!861107) (+ (size!21943 (++!6831 lt!861059 lt!861064)) (size!21943 lt!861068))))))

(declare-fun b!2324492 () Bool)

(assert (=> b!2324492 (= e!1489511 lt!861068)))

(assert (= (and d!688174 c!368916) b!2324492))

(assert (= (and d!688174 (not c!368916)) b!2324493))

(assert (= (and d!688174 res!992919) b!2324494))

(assert (= (and b!2324494 res!992920) b!2324495))

(declare-fun m!2755055 () Bool)

(assert (=> b!2324493 m!2755055))

(declare-fun m!2755057 () Bool)

(assert (=> d!688174 m!2755057))

(assert (=> d!688174 m!2754769))

(declare-fun m!2755059 () Bool)

(assert (=> d!688174 m!2755059))

(assert (=> d!688174 m!2755017))

(declare-fun m!2755061 () Bool)

(assert (=> b!2324494 m!2755061))

(assert (=> b!2324494 m!2754769))

(declare-fun m!2755063 () Bool)

(assert (=> b!2324494 m!2755063))

(assert (=> b!2324494 m!2755023))

(assert (=> b!2324334 d!688174))

(declare-fun b!2324498 () Bool)

(declare-fun e!1489513 () List!27770)

(assert (=> b!2324498 (= e!1489513 (list!11020 (xs!12051 lt!861061)))))

(declare-fun b!2324499 () Bool)

(assert (=> b!2324499 (= e!1489513 (++!6831 (list!11021 (left!21012 lt!861061)) (list!11021 (right!21342 lt!861061))))))

(declare-fun d!688176 () Bool)

(declare-fun c!368917 () Bool)

(assert (=> d!688176 (= c!368917 ((_ is Empty!9077) lt!861061))))

(declare-fun e!1489512 () List!27770)

(assert (=> d!688176 (= (list!11021 lt!861061) e!1489512)))

(declare-fun b!2324497 () Bool)

(assert (=> b!2324497 (= e!1489512 e!1489513)))

(declare-fun c!368918 () Bool)

(assert (=> b!2324497 (= c!368918 ((_ is Leaf!13325) lt!861061))))

(declare-fun b!2324496 () Bool)

(assert (=> b!2324496 (= e!1489512 Nil!27672)))

(assert (= (and d!688176 c!368917) b!2324496))

(assert (= (and d!688176 (not c!368917)) b!2324497))

(assert (= (and b!2324497 c!368918) b!2324498))

(assert (= (and b!2324497 (not c!368918)) b!2324499))

(declare-fun m!2755065 () Bool)

(assert (=> b!2324498 m!2755065))

(declare-fun m!2755067 () Bool)

(assert (=> b!2324499 m!2755067))

(declare-fun m!2755069 () Bool)

(assert (=> b!2324499 m!2755069))

(assert (=> b!2324499 m!2755067))

(assert (=> b!2324499 m!2755069))

(declare-fun m!2755071 () Bool)

(assert (=> b!2324499 m!2755071))

(assert (=> b!2324334 d!688176))

(declare-fun d!688178 () Bool)

(assert (=> d!688178 (= (list!11020 lt!861069) (innerList!9137 lt!861069))))

(assert (=> b!2324334 d!688178))

(declare-fun b!2324501 () Bool)

(declare-fun e!1489515 () List!27770)

(assert (=> b!2324501 (= e!1489515 (Cons!27672 (h!33073 lt!861059) (++!6831 (t!207464 lt!861059) lt!861064)))))

(declare-fun lt!861108 () List!27770)

(declare-fun e!1489514 () Bool)

(declare-fun b!2324503 () Bool)

(assert (=> b!2324503 (= e!1489514 (or (not (= lt!861064 Nil!27672)) (= lt!861108 lt!861059)))))

(declare-fun d!688180 () Bool)

(assert (=> d!688180 e!1489514))

(declare-fun res!992921 () Bool)

(assert (=> d!688180 (=> (not res!992921) (not e!1489514))))

(assert (=> d!688180 (= res!992921 (= (content!3748 lt!861108) ((_ map or) (content!3748 lt!861059) (content!3748 lt!861064))))))

(assert (=> d!688180 (= lt!861108 e!1489515)))

(declare-fun c!368919 () Bool)

(assert (=> d!688180 (= c!368919 ((_ is Nil!27672) lt!861059))))

(assert (=> d!688180 (= (++!6831 lt!861059 lt!861064) lt!861108)))

(declare-fun b!2324502 () Bool)

(declare-fun res!992922 () Bool)

(assert (=> b!2324502 (=> (not res!992922) (not e!1489514))))

(assert (=> b!2324502 (= res!992922 (= (size!21943 lt!861108) (+ (size!21943 lt!861059) (size!21943 lt!861064))))))

(declare-fun b!2324500 () Bool)

(assert (=> b!2324500 (= e!1489515 lt!861064)))

(assert (= (and d!688180 c!368919) b!2324500))

(assert (= (and d!688180 (not c!368919)) b!2324501))

(assert (= (and d!688180 res!992921) b!2324502))

(assert (= (and b!2324502 res!992922) b!2324503))

(declare-fun m!2755073 () Bool)

(assert (=> b!2324501 m!2755073))

(declare-fun m!2755075 () Bool)

(assert (=> d!688180 m!2755075))

(assert (=> d!688180 m!2754895))

(assert (=> d!688180 m!2755015))

(declare-fun m!2755077 () Bool)

(assert (=> b!2324502 m!2755077))

(assert (=> b!2324502 m!2754901))

(assert (=> b!2324502 m!2755021))

(assert (=> b!2324334 d!688180))

(declare-fun d!688182 () Bool)

(declare-fun lt!861111 () IArray!18159)

(assert (=> d!688182 (= lt!861111 (IArray!18160 (slice!708 (list!11020 arr!18) 0 512)))))

(declare-fun choose!13614 (IArray!18159 Int Int) IArray!18159)

(assert (=> d!688182 (= lt!861111 (choose!13614 arr!18 0 512))))

(declare-fun e!1489518 () Bool)

(assert (=> d!688182 e!1489518))

(declare-fun res!992925 () Bool)

(assert (=> d!688182 (=> (not res!992925) (not e!1489518))))

(assert (=> d!688182 (= res!992925 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!688182 (= (slice!709 arr!18 0 512) lt!861111)))

(declare-fun b!2324506 () Bool)

(assert (=> b!2324506 (= e!1489518 (<= 512 (size!21944 arr!18)))))

(assert (= (and d!688182 res!992925) b!2324506))

(assert (=> d!688182 m!2754797))

(assert (=> d!688182 m!2754797))

(declare-fun m!2755079 () Bool)

(assert (=> d!688182 m!2755079))

(declare-fun m!2755081 () Bool)

(assert (=> d!688182 m!2755081))

(assert (=> b!2324506 m!2754765))

(assert (=> b!2324334 d!688182))

(declare-fun b!2324679 () Bool)

(declare-fun res!992962 () Bool)

(declare-fun e!1489616 () Bool)

(assert (=> b!2324679 (=> (not res!992962) (not e!1489616))))

(declare-fun lt!861174 () Conc!9077)

(assert (=> b!2324679 (= res!992962 (isBalanced!2771 lt!861174))))

(declare-fun b!2324680 () Bool)

(declare-fun e!1489613 () Conc!9077)

(declare-fun call!138840 () Conc!9077)

(assert (=> b!2324680 (= e!1489613 call!138840)))

(declare-fun call!138835 () Int)

(declare-fun c!368981 () Bool)

(declare-fun bm!138828 () Bool)

(assert (=> bm!138828 (= call!138835 (height!1336 (ite c!368981 acc!252 (left!21012 lt!861061))))))

(declare-fun b!2324681 () Bool)

(declare-fun e!1489608 () Conc!9077)

(declare-fun e!1489611 () Conc!9077)

(assert (=> b!2324681 (= e!1489608 e!1489611)))

(declare-fun lt!861175 () Conc!9077)

(declare-fun call!138844 () Conc!9077)

(assert (=> b!2324681 (= lt!861175 call!138844)))

(declare-fun c!368979 () Bool)

(declare-fun call!138845 () Int)

(declare-fun call!138834 () Int)

(assert (=> b!2324681 (= c!368979 (= call!138845 (- call!138834 3)))))

(declare-fun b!2324682 () Bool)

(declare-fun e!1489610 () Conc!9077)

(declare-fun e!1489612 () Conc!9077)

(assert (=> b!2324682 (= e!1489610 e!1489612)))

(declare-fun c!368980 () Bool)

(assert (=> b!2324682 (= c!368980 (= lt!861061 Empty!9077))))

(declare-fun b!2324683 () Bool)

(declare-fun e!1489617 () Conc!9077)

(assert (=> b!2324683 (= e!1489617 e!1489613)))

(declare-fun lt!861176 () Conc!9077)

(declare-fun call!138833 () Conc!9077)

(assert (=> b!2324683 (= lt!861176 call!138833)))

(declare-fun c!368978 () Bool)

(declare-fun call!138843 () Int)

(assert (=> b!2324683 (= c!368978 (= call!138843 (- call!138835 3)))))

(declare-fun bm!138829 () Bool)

(declare-fun call!138838 () Conc!9077)

(assert (=> bm!138829 (= call!138833 call!138838)))

(declare-fun b!2324685 () Bool)

(declare-fun c!368982 () Bool)

(assert (=> b!2324685 (= c!368982 (>= call!138843 call!138835))))

(declare-fun e!1489609 () Conc!9077)

(assert (=> b!2324685 (= e!1489609 e!1489608)))

(declare-fun bm!138830 () Bool)

(declare-fun call!138847 () Conc!9077)

(declare-fun call!138842 () Conc!9077)

(assert (=> bm!138830 (= call!138847 call!138842)))

(declare-fun bm!138831 () Bool)

(declare-fun call!138841 () Conc!9077)

(assert (=> bm!138831 (= call!138842 call!138841)))

(declare-fun bm!138832 () Bool)

(declare-fun call!138846 () Conc!9077)

(declare-fun call!138848 () Conc!9077)

(assert (=> bm!138832 (= call!138846 call!138848)))

(declare-fun c!368984 () Bool)

(declare-fun bm!138833 () Bool)

(assert (=> bm!138833 (= call!138838 (++!6832 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))

(declare-fun bm!138834 () Bool)

(declare-fun call!138837 () Conc!9077)

(assert (=> bm!138834 (= call!138837 call!138848)))

(declare-fun b!2324686 () Bool)

(declare-fun e!1489614 () Bool)

(assert (=> b!2324686 (= e!1489614 (isBalanced!2771 lt!861061))))

(declare-fun bm!138835 () Bool)

(assert (=> bm!138835 (= call!138834 (height!1336 (ite c!368981 (left!21012 acc!252) lt!861061)))))

(declare-fun b!2324687 () Bool)

(assert (=> b!2324687 (= e!1489616 (= (list!11021 lt!861174) (++!6831 (list!11021 acc!252) (list!11021 lt!861061))))))

(declare-fun b!2324688 () Bool)

(assert (=> b!2324688 (= e!1489611 call!138847)))

(declare-fun b!2324684 () Bool)

(declare-fun res!992963 () Bool)

(assert (=> b!2324684 (=> (not res!992963) (not e!1489616))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2324684 (= res!992963 (<= (height!1336 lt!861174) (+ (max!0 (height!1336 acc!252) (height!1336 lt!861061)) 1)))))

(declare-fun d!688184 () Bool)

(assert (=> d!688184 e!1489616))

(declare-fun res!992964 () Bool)

(assert (=> d!688184 (=> (not res!992964) (not e!1489616))))

(declare-fun appendAssocInst!612 (Conc!9077 Conc!9077) Bool)

(assert (=> d!688184 (= res!992964 (appendAssocInst!612 acc!252 lt!861061))))

(assert (=> d!688184 (= lt!861174 e!1489610)))

(declare-fun c!368985 () Bool)

(assert (=> d!688184 (= c!368985 (= acc!252 Empty!9077))))

(assert (=> d!688184 e!1489614))

(declare-fun res!992966 () Bool)

(assert (=> d!688184 (=> (not res!992966) (not e!1489614))))

(assert (=> d!688184 (= res!992966 (isBalanced!2771 acc!252))))

(assert (=> d!688184 (= (++!6832 acc!252 lt!861061) lt!861174)))

(declare-fun b!2324689 () Bool)

(assert (=> b!2324689 (= e!1489613 call!138840)))

(declare-fun b!2324690 () Bool)

(declare-fun call!138836 () Conc!9077)

(assert (=> b!2324690 (= e!1489617 call!138836)))

(declare-fun b!2324691 () Bool)

(assert (=> b!2324691 (= e!1489608 call!138837)))

(declare-fun b!2324692 () Bool)

(assert (=> b!2324692 (= e!1489610 lt!861061)))

(declare-fun b!2324693 () Bool)

(declare-fun e!1489615 () Conc!9077)

(assert (=> b!2324693 (= e!1489615 e!1489609)))

(declare-fun lt!861177 () Int)

(assert (=> b!2324693 (= c!368981 (< lt!861177 (- 1)))))

(declare-fun c!368983 () Bool)

(declare-fun call!138839 () Conc!9077)

(declare-fun bm!138836 () Bool)

(declare-fun <>!218 (Conc!9077 Conc!9077) Conc!9077)

(assert (=> bm!138836 (= call!138841 (<>!218 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175))) (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839)))))))

(declare-fun b!2324694 () Bool)

(assert (=> b!2324694 (= c!368983 (and (<= (- 1) lt!861177) (<= lt!861177 1)))))

(assert (=> b!2324694 (= lt!861177 (- (height!1336 lt!861061) (height!1336 acc!252)))))

(assert (=> b!2324694 (= e!1489612 e!1489615)))

(declare-fun b!2324695 () Bool)

(declare-fun res!992965 () Bool)

(assert (=> b!2324695 (=> (not res!992965) (not e!1489616))))

(assert (=> b!2324695 (= res!992965 (>= (height!1336 lt!861174) (max!0 (height!1336 acc!252) (height!1336 lt!861061))))))

(declare-fun b!2324696 () Bool)

(assert (=> b!2324696 (= c!368984 (>= call!138834 call!138845))))

(assert (=> b!2324696 (= e!1489609 e!1489617)))

(declare-fun bm!138837 () Bool)

(assert (=> bm!138837 (= call!138844 call!138838)))

(declare-fun bm!138838 () Bool)

(assert (=> bm!138838 (= call!138845 (height!1336 (ite c!368981 (right!21342 acc!252) lt!861175)))))

(declare-fun b!2324697 () Bool)

(assert (=> b!2324697 (= e!1489612 acc!252)))

(declare-fun bm!138839 () Bool)

(assert (=> bm!138839 (= call!138840 call!138836)))

(declare-fun bm!138840 () Bool)

(assert (=> bm!138840 (= call!138843 (height!1336 (ite c!368981 lt!861176 (right!21342 lt!861061))))))

(declare-fun b!2324698 () Bool)

(assert (=> b!2324698 (= e!1489615 call!138841)))

(declare-fun b!2324699 () Bool)

(assert (=> b!2324699 (= e!1489611 call!138847)))

(declare-fun bm!138841 () Bool)

(assert (=> bm!138841 (= call!138848 (<>!218 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061))))) (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061))))))))

(declare-fun bm!138842 () Bool)

(assert (=> bm!138842 (= call!138839 call!138837)))

(declare-fun bm!138843 () Bool)

(assert (=> bm!138843 (= call!138836 call!138842)))

(assert (= (and d!688184 res!992966) b!2324686))

(assert (= (and d!688184 c!368985) b!2324692))

(assert (= (and d!688184 (not c!368985)) b!2324682))

(assert (= (and b!2324682 c!368980) b!2324697))

(assert (= (and b!2324682 (not c!368980)) b!2324694))

(assert (= (and b!2324694 c!368983) b!2324698))

(assert (= (and b!2324694 (not c!368983)) b!2324693))

(assert (= (and b!2324693 c!368981) b!2324696))

(assert (= (and b!2324693 (not c!368981)) b!2324685))

(assert (= (and b!2324696 c!368984) b!2324690))

(assert (= (and b!2324696 (not c!368984)) b!2324683))

(assert (= (and b!2324683 c!368978) b!2324680))

(assert (= (and b!2324683 (not c!368978)) b!2324689))

(assert (= (or b!2324680 b!2324689) bm!138832))

(assert (= (or b!2324680 b!2324689) bm!138839))

(assert (= (or b!2324690 b!2324683) bm!138829))

(assert (= (or b!2324690 bm!138839) bm!138843))

(assert (= (and b!2324685 c!368982) b!2324691))

(assert (= (and b!2324685 (not c!368982)) b!2324681))

(assert (= (and b!2324681 c!368979) b!2324688))

(assert (= (and b!2324681 (not c!368979)) b!2324699))

(assert (= (or b!2324688 b!2324699) bm!138842))

(assert (= (or b!2324688 b!2324699) bm!138830))

(assert (= (or b!2324691 b!2324681) bm!138837))

(assert (= (or b!2324691 bm!138842) bm!138834))

(assert (= (or b!2324696 b!2324681) bm!138838))

(assert (= (or b!2324696 b!2324681) bm!138835))

(assert (= (or bm!138829 bm!138837) bm!138833))

(assert (= (or bm!138843 bm!138830) bm!138831))

(assert (= (or bm!138832 bm!138834) bm!138841))

(assert (= (or b!2324683 b!2324685) bm!138828))

(assert (= (or b!2324683 b!2324685) bm!138840))

(assert (= (or b!2324698 bm!138831) bm!138836))

(assert (= (and d!688184 res!992964) b!2324679))

(assert (= (and b!2324679 res!992962) b!2324684))

(assert (= (and b!2324684 res!992963) b!2324695))

(assert (= (and b!2324695 res!992965) b!2324687))

(declare-fun m!2755217 () Bool)

(assert (=> bm!138840 m!2755217))

(declare-fun m!2755219 () Bool)

(assert (=> bm!138835 m!2755219))

(declare-fun m!2755221 () Bool)

(assert (=> b!2324684 m!2755221))

(declare-fun m!2755223 () Bool)

(assert (=> b!2324684 m!2755223))

(declare-fun m!2755225 () Bool)

(assert (=> b!2324684 m!2755225))

(assert (=> b!2324684 m!2755223))

(assert (=> b!2324684 m!2755225))

(declare-fun m!2755227 () Bool)

(assert (=> b!2324684 m!2755227))

(declare-fun m!2755229 () Bool)

(assert (=> bm!138838 m!2755229))

(declare-fun m!2755231 () Bool)

(assert (=> b!2324679 m!2755231))

(declare-fun m!2755233 () Bool)

(assert (=> bm!138828 m!2755233))

(declare-fun m!2755235 () Bool)

(assert (=> bm!138836 m!2755235))

(assert (=> b!2324694 m!2755225))

(assert (=> b!2324694 m!2755223))

(declare-fun m!2755237 () Bool)

(assert (=> b!2324686 m!2755237))

(declare-fun m!2755239 () Bool)

(assert (=> bm!138841 m!2755239))

(declare-fun m!2755241 () Bool)

(assert (=> b!2324687 m!2755241))

(assert (=> b!2324687 m!2754767))

(assert (=> b!2324687 m!2754773))

(assert (=> b!2324687 m!2754767))

(assert (=> b!2324687 m!2754773))

(declare-fun m!2755243 () Bool)

(assert (=> b!2324687 m!2755243))

(declare-fun m!2755245 () Bool)

(assert (=> d!688184 m!2755245))

(assert (=> d!688184 m!2754817))

(declare-fun m!2755247 () Bool)

(assert (=> bm!138833 m!2755247))

(assert (=> b!2324695 m!2755221))

(assert (=> b!2324695 m!2755223))

(assert (=> b!2324695 m!2755225))

(assert (=> b!2324695 m!2755223))

(assert (=> b!2324695 m!2755225))

(assert (=> b!2324695 m!2755227))

(assert (=> b!2324334 d!688184))

(declare-fun call!138853 () Conc!9077)

(declare-fun e!1489625 () Conc!9077)

(declare-fun b!2324710 () Bool)

(declare-fun call!138854 () Int)

(assert (=> b!2324710 (= e!1489625 (fromArray!35 (slice!709 lt!861069 512 call!138854) call!138853))))

(declare-fun lt!861210 () Conc!9077)

(assert (=> b!2324710 (= lt!861210 (Leaf!13325 (slice!709 lt!861069 0 512) 512))))

(declare-fun lt!861207 () Conc!9077)

(assert (=> b!2324710 (= lt!861207 (fromArray!35 (slice!709 lt!861069 512 call!138854) call!138853))))

(declare-fun lt!861212 () List!27770)

(assert (=> b!2324710 (= lt!861212 (list!11021 (++!6832 acc!252 lt!861061)))))

(declare-fun lt!861206 () List!27770)

(assert (=> b!2324710 (= lt!861206 (list!11021 lt!861210))))

(declare-fun lt!861211 () List!27770)

(assert (=> b!2324710 (= lt!861211 (list!11020 (slice!709 lt!861069 512 call!138854)))))

(declare-fun lt!861209 () Unit!40522)

(assert (=> b!2324710 (= lt!861209 (lemmaConcatAssociativity!1459 lt!861212 lt!861206 lt!861211))))

(assert (=> b!2324710 (= (++!6831 (++!6831 lt!861212 lt!861206) lt!861211) (++!6831 lt!861212 (++!6831 lt!861206 lt!861211)))))

(declare-fun lt!861213 () Unit!40522)

(assert (=> b!2324710 (= lt!861213 lt!861209)))

(declare-fun lt!861203 () List!27770)

(assert (=> b!2324710 (= lt!861203 (list!11020 lt!861069))))

(declare-fun lt!861204 () Int)

(assert (=> b!2324710 (= lt!861204 512)))

(declare-fun lt!861205 () Unit!40522)

(assert (=> b!2324710 (= lt!861205 (sliceSplit!24 lt!861203 lt!861204))))

(assert (=> b!2324710 (= (++!6831 (slice!708 lt!861203 0 lt!861204) (slice!708 lt!861203 lt!861204 (size!21943 lt!861203))) lt!861203)))

(declare-fun lt!861202 () Unit!40522)

(assert (=> b!2324710 (= lt!861202 lt!861205)))

(declare-fun b!2324711 () Bool)

(declare-fun e!1489626 () Conc!9077)

(assert (=> b!2324711 (= e!1489626 call!138853)))

(declare-fun d!688204 () Bool)

(declare-fun e!1489624 () Bool)

(assert (=> d!688204 e!1489624))

(declare-fun res!992969 () Bool)

(assert (=> d!688204 (=> (not res!992969) (not e!1489624))))

(declare-fun lt!861208 () Conc!9077)

(assert (=> d!688204 (= res!992969 (isBalanced!2771 lt!861208))))

(assert (=> d!688204 (= lt!861208 e!1489625)))

(declare-fun c!368991 () Bool)

(assert (=> d!688204 (= c!368991 (<= (size!21944 lt!861069) 512))))

(assert (=> d!688204 (isBalanced!2771 (++!6832 acc!252 lt!861061))))

(assert (=> d!688204 (= (fromArray!35 lt!861069 (++!6832 acc!252 lt!861061)) lt!861208)))

(declare-fun bm!138848 () Bool)

(assert (=> bm!138848 (= call!138853 (++!6832 (++!6832 acc!252 lt!861061) (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))

(declare-fun b!2324712 () Bool)

(assert (=> b!2324712 (= e!1489624 (= (list!11021 lt!861208) (++!6831 (list!11021 (++!6832 acc!252 lt!861061)) (list!11020 lt!861069))))))

(declare-fun b!2324713 () Bool)

(assert (=> b!2324713 (= e!1489626 (++!6832 acc!252 lt!861061))))

(declare-fun b!2324714 () Bool)

(assert (=> b!2324714 (= e!1489625 e!1489626)))

(declare-fun c!368990 () Bool)

(assert (=> b!2324714 (= c!368990 (= call!138854 0))))

(declare-fun bm!138849 () Bool)

(assert (=> bm!138849 (= call!138854 (size!21944 lt!861069))))

(assert (= (and d!688204 c!368991) b!2324714))

(assert (= (and d!688204 (not c!368991)) b!2324710))

(assert (= (and b!2324714 c!368990) b!2324713))

(assert (= (and b!2324714 (not c!368990)) b!2324711))

(assert (= (or b!2324714 b!2324711 b!2324710) bm!138849))

(assert (= (or b!2324711 b!2324710) bm!138848))

(assert (= (and d!688204 res!992969) b!2324712))

(assert (=> bm!138848 m!2754775))

(declare-fun m!2755249 () Bool)

(assert (=> bm!138848 m!2755249))

(assert (=> bm!138849 m!2754815))

(declare-fun m!2755251 () Bool)

(assert (=> d!688204 m!2755251))

(assert (=> d!688204 m!2754815))

(assert (=> d!688204 m!2754775))

(declare-fun m!2755253 () Bool)

(assert (=> d!688204 m!2755253))

(declare-fun m!2755255 () Bool)

(assert (=> b!2324712 m!2755255))

(assert (=> b!2324712 m!2754775))

(declare-fun m!2755257 () Bool)

(assert (=> b!2324712 m!2755257))

(assert (=> b!2324712 m!2754779))

(assert (=> b!2324712 m!2755257))

(assert (=> b!2324712 m!2754779))

(declare-fun m!2755259 () Bool)

(assert (=> b!2324712 m!2755259))

(declare-fun m!2755261 () Bool)

(assert (=> b!2324710 m!2755261))

(declare-fun m!2755263 () Bool)

(assert (=> b!2324710 m!2755263))

(declare-fun m!2755265 () Bool)

(assert (=> b!2324710 m!2755265))

(declare-fun m!2755267 () Bool)

(assert (=> b!2324710 m!2755267))

(assert (=> b!2324710 m!2755265))

(declare-fun m!2755269 () Bool)

(assert (=> b!2324710 m!2755269))

(declare-fun m!2755271 () Bool)

(assert (=> b!2324710 m!2755271))

(declare-fun m!2755273 () Bool)

(assert (=> b!2324710 m!2755273))

(assert (=> b!2324710 m!2755271))

(declare-fun m!2755275 () Bool)

(assert (=> b!2324710 m!2755275))

(assert (=> b!2324710 m!2755271))

(declare-fun m!2755277 () Bool)

(assert (=> b!2324710 m!2755277))

(declare-fun m!2755279 () Bool)

(assert (=> b!2324710 m!2755279))

(assert (=> b!2324710 m!2754779))

(declare-fun m!2755281 () Bool)

(assert (=> b!2324710 m!2755281))

(assert (=> b!2324710 m!2755263))

(declare-fun m!2755283 () Bool)

(assert (=> b!2324710 m!2755283))

(assert (=> b!2324710 m!2755281))

(declare-fun m!2755285 () Bool)

(assert (=> b!2324710 m!2755285))

(assert (=> b!2324710 m!2755279))

(assert (=> b!2324710 m!2755285))

(declare-fun m!2755287 () Bool)

(assert (=> b!2324710 m!2755287))

(assert (=> b!2324710 m!2754775))

(assert (=> b!2324710 m!2755257))

(declare-fun m!2755289 () Bool)

(assert (=> b!2324710 m!2755289))

(assert (=> b!2324334 d!688204))

(declare-fun d!688206 () Bool)

(declare-fun lt!861214 () IArray!18159)

(assert (=> d!688206 (= lt!861214 (IArray!18160 (slice!708 (list!11020 arr!18) 512 lt!861062)))))

(assert (=> d!688206 (= lt!861214 (choose!13614 arr!18 512 lt!861062))))

(declare-fun e!1489627 () Bool)

(assert (=> d!688206 e!1489627))

(declare-fun res!992970 () Bool)

(assert (=> d!688206 (=> (not res!992970) (not e!1489627))))

(assert (=> d!688206 (= res!992970 (and (<= 0 512) (<= 512 lt!861062)))))

(assert (=> d!688206 (= (slice!709 arr!18 512 lt!861062) lt!861214)))

(declare-fun b!2324715 () Bool)

(assert (=> b!2324715 (= e!1489627 (<= lt!861062 (size!21944 arr!18)))))

(assert (= (and d!688206 res!992970) b!2324715))

(assert (=> d!688206 m!2754797))

(assert (=> d!688206 m!2754797))

(declare-fun m!2755291 () Bool)

(assert (=> d!688206 m!2755291))

(declare-fun m!2755293 () Bool)

(assert (=> d!688206 m!2755293))

(assert (=> b!2324715 m!2754765))

(assert (=> b!2324334 d!688206))

(declare-fun b!2324718 () Bool)

(declare-fun e!1489629 () List!27770)

(assert (=> b!2324718 (= e!1489629 (list!11020 (xs!12051 acc!252)))))

(declare-fun b!2324719 () Bool)

(assert (=> b!2324719 (= e!1489629 (++!6831 (list!11021 (left!21012 acc!252)) (list!11021 (right!21342 acc!252))))))

(declare-fun d!688208 () Bool)

(declare-fun c!368992 () Bool)

(assert (=> d!688208 (= c!368992 ((_ is Empty!9077) acc!252))))

(declare-fun e!1489628 () List!27770)

(assert (=> d!688208 (= (list!11021 acc!252) e!1489628)))

(declare-fun b!2324717 () Bool)

(assert (=> b!2324717 (= e!1489628 e!1489629)))

(declare-fun c!368993 () Bool)

(assert (=> b!2324717 (= c!368993 ((_ is Leaf!13325) acc!252))))

(declare-fun b!2324716 () Bool)

(assert (=> b!2324716 (= e!1489628 Nil!27672)))

(assert (= (and d!688208 c!368992) b!2324716))

(assert (= (and d!688208 (not c!368992)) b!2324717))

(assert (= (and b!2324717 c!368993) b!2324718))

(assert (= (and b!2324717 (not c!368993)) b!2324719))

(declare-fun m!2755295 () Bool)

(assert (=> b!2324718 m!2755295))

(declare-fun m!2755297 () Bool)

(assert (=> b!2324719 m!2755297))

(declare-fun m!2755299 () Bool)

(assert (=> b!2324719 m!2755299))

(assert (=> b!2324719 m!2755297))

(assert (=> b!2324719 m!2755299))

(declare-fun m!2755301 () Bool)

(assert (=> b!2324719 m!2755301))

(assert (=> b!2324334 d!688208))

(declare-fun d!688210 () Bool)

(declare-fun lt!861215 () Int)

(assert (=> d!688210 (= lt!861215 (size!21943 (list!11020 arr!18)))))

(assert (=> d!688210 (= lt!861215 (choose!13611 arr!18))))

(assert (=> d!688210 (= (size!21944 arr!18) lt!861215)))

(declare-fun bs!459211 () Bool)

(assert (= bs!459211 d!688210))

(assert (=> bs!459211 m!2754797))

(assert (=> bs!459211 m!2754797))

(declare-fun m!2755303 () Bool)

(assert (=> bs!459211 m!2755303))

(declare-fun m!2755305 () Bool)

(assert (=> bs!459211 m!2755305))

(assert (=> b!2324339 d!688210))

(declare-fun b!2324724 () Bool)

(declare-fun e!1489632 () Bool)

(declare-fun tp_is_empty!10837 () Bool)

(declare-fun tp!737010 () Bool)

(assert (=> b!2324724 (= e!1489632 (and tp_is_empty!10837 tp!737010))))

(assert (=> b!2324338 (= tp!736991 e!1489632)))

(assert (= (and b!2324338 ((_ is Cons!27672) (innerList!9137 (xs!12051 acc!252)))) b!2324724))

(declare-fun b!2324733 () Bool)

(declare-fun tp!737019 () Bool)

(declare-fun e!1489637 () Bool)

(declare-fun tp!737018 () Bool)

(assert (=> b!2324733 (= e!1489637 (and (inv!37661 (left!21012 (left!21012 acc!252))) tp!737018 (inv!37661 (right!21342 (left!21012 acc!252))) tp!737019))))

(declare-fun b!2324735 () Bool)

(declare-fun e!1489638 () Bool)

(declare-fun tp!737017 () Bool)

(assert (=> b!2324735 (= e!1489638 tp!737017)))

(declare-fun b!2324734 () Bool)

(assert (=> b!2324734 (= e!1489637 (and (inv!37662 (xs!12051 (left!21012 acc!252))) e!1489638))))

(assert (=> b!2324333 (= tp!736990 (and (inv!37661 (left!21012 acc!252)) e!1489637))))

(assert (= (and b!2324333 ((_ is Node!9077) (left!21012 acc!252))) b!2324733))

(assert (= b!2324734 b!2324735))

(assert (= (and b!2324333 ((_ is Leaf!13325) (left!21012 acc!252))) b!2324734))

(declare-fun m!2755307 () Bool)

(assert (=> b!2324733 m!2755307))

(declare-fun m!2755309 () Bool)

(assert (=> b!2324733 m!2755309))

(declare-fun m!2755311 () Bool)

(assert (=> b!2324734 m!2755311))

(assert (=> b!2324333 m!2754803))

(declare-fun tp!737021 () Bool)

(declare-fun b!2324736 () Bool)

(declare-fun tp!737022 () Bool)

(declare-fun e!1489639 () Bool)

(assert (=> b!2324736 (= e!1489639 (and (inv!37661 (left!21012 (right!21342 acc!252))) tp!737021 (inv!37661 (right!21342 (right!21342 acc!252))) tp!737022))))

(declare-fun b!2324738 () Bool)

(declare-fun e!1489640 () Bool)

(declare-fun tp!737020 () Bool)

(assert (=> b!2324738 (= e!1489640 tp!737020)))

(declare-fun b!2324737 () Bool)

(assert (=> b!2324737 (= e!1489639 (and (inv!37662 (xs!12051 (right!21342 acc!252))) e!1489640))))

(assert (=> b!2324333 (= tp!736989 (and (inv!37661 (right!21342 acc!252)) e!1489639))))

(assert (= (and b!2324333 ((_ is Node!9077) (right!21342 acc!252))) b!2324736))

(assert (= b!2324737 b!2324738))

(assert (= (and b!2324333 ((_ is Leaf!13325) (right!21342 acc!252))) b!2324737))

(declare-fun m!2755313 () Bool)

(assert (=> b!2324736 m!2755313))

(declare-fun m!2755315 () Bool)

(assert (=> b!2324736 m!2755315))

(declare-fun m!2755317 () Bool)

(assert (=> b!2324737 m!2755317))

(assert (=> b!2324333 m!2754805))

(declare-fun b!2324739 () Bool)

(declare-fun e!1489641 () Bool)

(declare-fun tp!737023 () Bool)

(assert (=> b!2324739 (= e!1489641 (and tp_is_empty!10837 tp!737023))))

(assert (=> b!2324337 (= tp!736988 e!1489641)))

(assert (= (and b!2324337 ((_ is Cons!27672) (innerList!9137 arr!18))) b!2324739))

(check-sat (not b!2324687) (not b!2324686) (not b!2324695) (not bm!138841) (not b!2324490) (not b!2324498) (not b!2324351) (not bm!138848) (not b!2324501) (not d!688164) (not b!2324392) (not d!688184) (not b!2324394) (not d!688134) (not b!2324395) (not d!688204) (not b!2324439) (not b!2324679) (not b!2324738) (not bm!138828) (not b!2324353) (not b!2324390) (not bm!138833) (not d!688116) (not b!2324398) (not bm!138840) (not b!2324388) (not b!2324467) (not bm!138849) (not b!2324385) (not b!2324471) (not b!2324718) (not d!688180) (not b!2324502) (not b!2324712) (not b!2324396) (not b!2324739) (not d!688142) (not b!2324735) (not b!2324418) (not d!688160) (not d!688174) (not b!2324472) (not b!2324684) tp_is_empty!10837 (not d!688130) (not b!2324348) (not bm!138838) (not b!2324350) (not b!2324391) (not d!688206) (not b!2324724) (not b!2324506) (not d!688170) (not b!2324719) (not b!2324384) (not d!688182) (not d!688114) (not bm!138836) (not b!2324737) (not b!2324499) (not b!2324710) (not d!688158) (not b!2324736) (not b!2324733) (not b!2324386) (not bm!138835) (not b!2324333) (not b!2324417) (not b!2324387) (not b!2324493) (not b!2324389) (not b!2324715) (not d!688210) (not b!2324494) (not b!2324734) (not b!2324425) (not d!688132) (not b!2324393) (not b!2324440) (not d!688154) (not b!2324491) (not b!2324694) (not b!2324468))
(check-sat)
(get-model)

(declare-fun d!688236 () Bool)

(assert (=> d!688236 (= (inv!37662 (xs!12051 (right!21342 acc!252))) (<= (size!21943 (innerList!9137 (xs!12051 (right!21342 acc!252)))) 2147483647))))

(declare-fun bs!459213 () Bool)

(assert (= bs!459213 d!688236))

(declare-fun m!2755357 () Bool)

(assert (=> bs!459213 m!2755357))

(assert (=> b!2324737 d!688236))

(declare-fun b!2324769 () Bool)

(declare-fun res!992982 () Bool)

(declare-fun e!1489658 () Bool)

(assert (=> b!2324769 (=> (not res!992982) (not e!1489658))))

(assert (=> b!2324769 (= res!992982 (isBalanced!2771 (right!21342 (left!21012 acc!252))))))

(declare-fun b!2324770 () Bool)

(declare-fun res!992984 () Bool)

(assert (=> b!2324770 (=> (not res!992984) (not e!1489658))))

(assert (=> b!2324770 (= res!992984 (<= (- (height!1336 (left!21012 (left!21012 acc!252))) (height!1336 (right!21342 (left!21012 acc!252)))) 1))))

(declare-fun b!2324772 () Bool)

(declare-fun e!1489659 () Bool)

(assert (=> b!2324772 (= e!1489659 e!1489658)))

(declare-fun res!992986 () Bool)

(assert (=> b!2324772 (=> (not res!992986) (not e!1489658))))

(assert (=> b!2324772 (= res!992986 (<= (- 1) (- (height!1336 (left!21012 (left!21012 acc!252))) (height!1336 (right!21342 (left!21012 acc!252))))))))

(declare-fun b!2324773 () Bool)

(declare-fun res!992983 () Bool)

(assert (=> b!2324773 (=> (not res!992983) (not e!1489658))))

(assert (=> b!2324773 (= res!992983 (isBalanced!2771 (left!21012 (left!21012 acc!252))))))

(declare-fun b!2324774 () Bool)

(assert (=> b!2324774 (= e!1489658 (not (isEmpty!15804 (right!21342 (left!21012 acc!252)))))))

(declare-fun d!688240 () Bool)

(declare-fun res!992985 () Bool)

(assert (=> d!688240 (=> res!992985 e!1489659)))

(assert (=> d!688240 (= res!992985 (not ((_ is Node!9077) (left!21012 acc!252))))))

(assert (=> d!688240 (= (isBalanced!2771 (left!21012 acc!252)) e!1489659)))

(declare-fun b!2324771 () Bool)

(declare-fun res!992981 () Bool)

(assert (=> b!2324771 (=> (not res!992981) (not e!1489658))))

(assert (=> b!2324771 (= res!992981 (not (isEmpty!15804 (left!21012 (left!21012 acc!252)))))))

(assert (= (and d!688240 (not res!992985)) b!2324772))

(assert (= (and b!2324772 res!992986) b!2324770))

(assert (= (and b!2324770 res!992984) b!2324773))

(assert (= (and b!2324773 res!992983) b!2324769))

(assert (= (and b!2324769 res!992982) b!2324771))

(assert (= (and b!2324771 res!992981) b!2324774))

(declare-fun m!2755371 () Bool)

(assert (=> b!2324771 m!2755371))

(declare-fun m!2755373 () Bool)

(assert (=> b!2324774 m!2755373))

(declare-fun m!2755375 () Bool)

(assert (=> b!2324773 m!2755375))

(declare-fun m!2755377 () Bool)

(assert (=> b!2324770 m!2755377))

(declare-fun m!2755379 () Bool)

(assert (=> b!2324770 m!2755379))

(declare-fun m!2755381 () Bool)

(assert (=> b!2324769 m!2755381))

(assert (=> b!2324772 m!2755377))

(assert (=> b!2324772 m!2755379))

(assert (=> b!2324394 d!688240))

(assert (=> d!688142 d!688126))

(assert (=> d!688142 d!688130))

(declare-fun d!688248 () Bool)

(assert (=> d!688248 (= (++!6831 (slice!708 lt!861058 0 512) (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861058)))

(assert (=> d!688248 true))

(declare-fun _$14!675 () Unit!40522)

(assert (=> d!688248 (= (choose!13610 lt!861058 512) _$14!675)))

(declare-fun bs!459214 () Bool)

(assert (= bs!459214 d!688248))

(assert (=> bs!459214 m!2754793))

(assert (=> bs!459214 m!2754791))

(assert (=> bs!459214 m!2754791))

(assert (=> bs!459214 m!2754795))

(assert (=> bs!459214 m!2754793))

(assert (=> bs!459214 m!2754795))

(assert (=> bs!459214 m!2754799))

(assert (=> d!688142 d!688248))

(assert (=> d!688142 d!688132))

(assert (=> d!688142 d!688134))

(declare-fun d!688250 () Bool)

(declare-fun lt!861219 () Int)

(assert (=> d!688250 (>= lt!861219 0)))

(declare-fun e!1489666 () Int)

(assert (=> d!688250 (= lt!861219 e!1489666)))

(declare-fun c!369004 () Bool)

(assert (=> d!688250 (= c!369004 ((_ is Nil!27672) (list!11020 lt!861069)))))

(assert (=> d!688250 (= (size!21943 (list!11020 lt!861069)) lt!861219)))

(declare-fun b!2324787 () Bool)

(assert (=> b!2324787 (= e!1489666 0)))

(declare-fun b!2324788 () Bool)

(assert (=> b!2324788 (= e!1489666 (+ 1 (size!21943 (t!207464 (list!11020 lt!861069)))))))

(assert (= (and d!688250 c!369004) b!2324787))

(assert (= (and d!688250 (not c!369004)) b!2324788))

(declare-fun m!2755383 () Bool)

(assert (=> b!2324788 m!2755383))

(assert (=> d!688154 d!688250))

(assert (=> d!688154 d!688178))

(declare-fun d!688252 () Bool)

(declare-fun _$1!10227 () Int)

(assert (=> d!688252 (= _$1!10227 (size!21943 (list!11020 lt!861069)))))

(assert (=> d!688252 true))

(assert (=> d!688252 (= (choose!13611 lt!861069) _$1!10227)))

(declare-fun bs!459215 () Bool)

(assert (= bs!459215 d!688252))

(assert (=> bs!459215 m!2754779))

(assert (=> bs!459215 m!2754779))

(assert (=> bs!459215 m!2754993))

(assert (=> d!688154 d!688252))

(declare-fun d!688254 () Bool)

(declare-fun e!1489714 () Bool)

(assert (=> d!688254 e!1489714))

(declare-fun res!993028 () Bool)

(assert (=> d!688254 (=> (not res!993028) (not e!1489714))))

(declare-fun e!1489712 () Bool)

(assert (=> d!688254 (= res!993028 e!1489712)))

(declare-fun res!993029 () Bool)

(assert (=> d!688254 (=> res!993029 e!1489712)))

(assert (=> d!688254 (= res!993029 (not ((_ is Node!9077) acc!252)))))

(assert (=> d!688254 (= (appendAssocInst!612 acc!252 lt!861061) true)))

(declare-fun b!2324853 () Bool)

(declare-fun e!1489711 () Bool)

(declare-fun appendAssoc!159 (List!27770 List!27770 List!27770) Bool)

(assert (=> b!2324853 (= e!1489711 (appendAssoc!159 (++!6831 (list!11021 acc!252) (list!11021 (left!21012 (left!21012 lt!861061)))) (list!11021 (right!21342 (left!21012 lt!861061))) (list!11021 (right!21342 lt!861061))))))

(declare-fun b!2324854 () Bool)

(declare-fun e!1489716 () Bool)

(assert (=> b!2324854 (= e!1489716 (appendAssoc!159 (list!11021 (left!21012 acc!252)) (list!11021 (left!21012 (right!21342 acc!252))) (++!6831 (list!11021 (right!21342 (right!21342 acc!252))) (list!11021 lt!861061))))))

(declare-fun b!2324855 () Bool)

(declare-fun e!1489709 () Bool)

(declare-fun e!1489718 () Bool)

(assert (=> b!2324855 (= e!1489709 e!1489718)))

(declare-fun res!993031 () Bool)

(assert (=> b!2324855 (=> res!993031 e!1489718)))

(assert (=> b!2324855 (= res!993031 (not ((_ is Node!9077) (left!21012 lt!861061))))))

(declare-fun b!2324856 () Bool)

(declare-fun e!1489710 () Bool)

(assert (=> b!2324856 (= e!1489714 e!1489710)))

(declare-fun res!993030 () Bool)

(assert (=> b!2324856 (=> res!993030 e!1489710)))

(assert (=> b!2324856 (= res!993030 (not ((_ is Node!9077) lt!861061)))))

(declare-fun b!2324858 () Bool)

(declare-fun e!1489715 () Bool)

(assert (=> b!2324858 (= e!1489712 e!1489715)))

(declare-fun res!993026 () Bool)

(assert (=> b!2324858 (=> (not res!993026) (not e!1489715))))

(assert (=> b!2324858 (= res!993026 (appendAssoc!159 (list!11021 (left!21012 acc!252)) (list!11021 (right!21342 acc!252)) (list!11021 lt!861061)))))

(declare-fun b!2324860 () Bool)

(declare-fun e!1489713 () Bool)

(assert (=> b!2324860 (= e!1489715 e!1489713)))

(declare-fun res!993025 () Bool)

(assert (=> b!2324860 (=> res!993025 e!1489713)))

(assert (=> b!2324860 (= res!993025 (not ((_ is Node!9077) (right!21342 acc!252))))))

(declare-fun b!2324862 () Bool)

(assert (=> b!2324862 (= e!1489718 e!1489711)))

(declare-fun res!993033 () Bool)

(assert (=> b!2324862 (=> (not res!993033) (not e!1489711))))

(assert (=> b!2324862 (= res!993033 (appendAssoc!159 (list!11021 acc!252) (list!11021 (left!21012 (left!21012 lt!861061))) (list!11021 (right!21342 (left!21012 lt!861061)))))))

(declare-fun b!2324864 () Bool)

(assert (=> b!2324864 (= e!1489710 e!1489709)))

(declare-fun res!993027 () Bool)

(assert (=> b!2324864 (=> (not res!993027) (not e!1489709))))

(assert (=> b!2324864 (= res!993027 (appendAssoc!159 (list!11021 acc!252) (list!11021 (left!21012 lt!861061)) (list!11021 (right!21342 lt!861061))))))

(declare-fun b!2324865 () Bool)

(assert (=> b!2324865 (= e!1489713 e!1489716)))

(declare-fun res!993032 () Bool)

(assert (=> b!2324865 (=> (not res!993032) (not e!1489716))))

(assert (=> b!2324865 (= res!993032 (appendAssoc!159 (list!11021 (left!21012 (right!21342 acc!252))) (list!11021 (right!21342 (right!21342 acc!252))) (list!11021 lt!861061)))))

(assert (= (and d!688254 (not res!993029)) b!2324858))

(assert (= (and b!2324858 res!993026) b!2324860))

(assert (= (and b!2324860 (not res!993025)) b!2324865))

(assert (= (and b!2324865 res!993032) b!2324854))

(assert (= (and d!688254 res!993028) b!2324856))

(assert (= (and b!2324856 (not res!993030)) b!2324864))

(assert (= (and b!2324864 res!993027) b!2324855))

(assert (= (and b!2324855 (not res!993031)) b!2324862))

(assert (= (and b!2324862 res!993033) b!2324853))

(assert (=> b!2324854 m!2754773))

(assert (=> b!2324854 m!2755297))

(assert (=> b!2324854 m!2755297))

(declare-fun m!2755565 () Bool)

(assert (=> b!2324854 m!2755565))

(declare-fun m!2755567 () Bool)

(assert (=> b!2324854 m!2755567))

(declare-fun m!2755571 () Bool)

(assert (=> b!2324854 m!2755571))

(declare-fun m!2755573 () Bool)

(assert (=> b!2324854 m!2755573))

(assert (=> b!2324854 m!2755565))

(assert (=> b!2324854 m!2755573))

(assert (=> b!2324854 m!2754773))

(assert (=> b!2324854 m!2755567))

(assert (=> b!2324853 m!2755069))

(assert (=> b!2324853 m!2754767))

(declare-fun m!2755575 () Bool)

(assert (=> b!2324853 m!2755575))

(declare-fun m!2755577 () Bool)

(assert (=> b!2324853 m!2755577))

(assert (=> b!2324853 m!2755577))

(declare-fun m!2755581 () Bool)

(assert (=> b!2324853 m!2755581))

(assert (=> b!2324853 m!2755069))

(declare-fun m!2755585 () Bool)

(assert (=> b!2324853 m!2755585))

(assert (=> b!2324853 m!2755581))

(assert (=> b!2324853 m!2755575))

(assert (=> b!2324853 m!2754767))

(assert (=> b!2324864 m!2754767))

(assert (=> b!2324864 m!2755067))

(assert (=> b!2324864 m!2755069))

(assert (=> b!2324864 m!2754767))

(assert (=> b!2324864 m!2755067))

(assert (=> b!2324864 m!2755069))

(declare-fun m!2755589 () Bool)

(assert (=> b!2324864 m!2755589))

(assert (=> b!2324865 m!2755565))

(assert (=> b!2324865 m!2755573))

(assert (=> b!2324865 m!2754773))

(assert (=> b!2324865 m!2755565))

(assert (=> b!2324865 m!2755573))

(assert (=> b!2324865 m!2754773))

(declare-fun m!2755591 () Bool)

(assert (=> b!2324865 m!2755591))

(assert (=> b!2324858 m!2755297))

(assert (=> b!2324858 m!2755299))

(assert (=> b!2324858 m!2754773))

(assert (=> b!2324858 m!2755297))

(assert (=> b!2324858 m!2755299))

(assert (=> b!2324858 m!2754773))

(declare-fun m!2755599 () Bool)

(assert (=> b!2324858 m!2755599))

(assert (=> b!2324862 m!2754767))

(assert (=> b!2324862 m!2755575))

(assert (=> b!2324862 m!2755581))

(assert (=> b!2324862 m!2754767))

(assert (=> b!2324862 m!2755575))

(assert (=> b!2324862 m!2755581))

(declare-fun m!2755603 () Bool)

(assert (=> b!2324862 m!2755603))

(assert (=> d!688184 d!688254))

(assert (=> d!688184 d!688110))

(declare-fun b!2324928 () Bool)

(declare-fun e!1489755 () Int)

(assert (=> b!2324928 (= e!1489755 (- (size!21943 lt!861058) 512))))

(declare-fun d!688320 () Bool)

(declare-fun e!1489754 () Bool)

(assert (=> d!688320 e!1489754))

(declare-fun res!993052 () Bool)

(assert (=> d!688320 (=> (not res!993052) (not e!1489754))))

(declare-fun lt!861258 () List!27770)

(assert (=> d!688320 (= res!993052 (= ((_ map implies) (content!3748 lt!861258) (content!3748 (drop!1510 lt!861058 512))) ((as const (InoxSet T!43936)) true)))))

(declare-fun e!1489753 () List!27770)

(assert (=> d!688320 (= lt!861258 e!1489753)))

(declare-fun c!369047 () Bool)

(assert (=> d!688320 (= c!369047 (or ((_ is Nil!27672) (drop!1510 lt!861058 512)) (<= (- (size!21943 lt!861058) 512) 0)))))

(assert (=> d!688320 (= (take!487 (drop!1510 lt!861058 512) (- (size!21943 lt!861058) 512)) lt!861258)))

(declare-fun b!2324929 () Bool)

(assert (=> b!2324929 (= e!1489753 Nil!27672)))

(declare-fun b!2324930 () Bool)

(assert (=> b!2324930 (= e!1489753 (Cons!27672 (h!33073 (drop!1510 lt!861058 512)) (take!487 (t!207464 (drop!1510 lt!861058 512)) (- (- (size!21943 lt!861058) 512) 1))))))

(declare-fun b!2324931 () Bool)

(declare-fun e!1489756 () Int)

(assert (=> b!2324931 (= e!1489756 e!1489755)))

(declare-fun c!369046 () Bool)

(assert (=> b!2324931 (= c!369046 (>= (- (size!21943 lt!861058) 512) (size!21943 (drop!1510 lt!861058 512))))))

(declare-fun b!2324932 () Bool)

(assert (=> b!2324932 (= e!1489756 0)))

(declare-fun b!2324933 () Bool)

(assert (=> b!2324933 (= e!1489755 (size!21943 (drop!1510 lt!861058 512)))))

(declare-fun b!2324934 () Bool)

(assert (=> b!2324934 (= e!1489754 (= (size!21943 lt!861258) e!1489756))))

(declare-fun c!369048 () Bool)

(assert (=> b!2324934 (= c!369048 (<= (- (size!21943 lt!861058) 512) 0))))

(assert (= (and d!688320 c!369047) b!2324929))

(assert (= (and d!688320 (not c!369047)) b!2324930))

(assert (= (and d!688320 res!993052) b!2324934))

(assert (= (and b!2324934 c!369048) b!2324932))

(assert (= (and b!2324934 (not c!369048)) b!2324931))

(assert (= (and b!2324931 c!369046) b!2324933))

(assert (= (and b!2324931 (not c!369046)) b!2324928))

(declare-fun m!2755635 () Bool)

(assert (=> d!688320 m!2755635))

(assert (=> d!688320 m!2754905))

(declare-fun m!2755637 () Bool)

(assert (=> d!688320 m!2755637))

(declare-fun m!2755639 () Bool)

(assert (=> b!2324934 m!2755639))

(assert (=> b!2324933 m!2754905))

(declare-fun m!2755641 () Bool)

(assert (=> b!2324933 m!2755641))

(assert (=> b!2324931 m!2754905))

(assert (=> b!2324931 m!2755641))

(declare-fun m!2755643 () Bool)

(assert (=> b!2324930 m!2755643))

(assert (=> d!688130 d!688320))

(declare-fun b!2324978 () Bool)

(declare-fun e!1489783 () List!27770)

(declare-fun e!1489784 () List!27770)

(assert (=> b!2324978 (= e!1489783 e!1489784)))

(declare-fun c!369069 () Bool)

(assert (=> b!2324978 (= c!369069 (<= 512 0))))

(declare-fun b!2324979 () Bool)

(declare-fun e!1489785 () Int)

(declare-fun call!138859 () Int)

(assert (=> b!2324979 (= e!1489785 (- call!138859 512))))

(declare-fun b!2324980 () Bool)

(declare-fun e!1489782 () Int)

(assert (=> b!2324980 (= e!1489782 e!1489785)))

(declare-fun c!369068 () Bool)

(assert (=> b!2324980 (= c!369068 (>= 512 call!138859))))

(declare-fun b!2324981 () Bool)

(assert (=> b!2324981 (= e!1489782 call!138859)))

(declare-fun b!2324982 () Bool)

(assert (=> b!2324982 (= e!1489784 lt!861058)))

(declare-fun b!2324983 () Bool)

(declare-fun e!1489781 () Bool)

(declare-fun lt!861264 () List!27770)

(assert (=> b!2324983 (= e!1489781 (= (size!21943 lt!861264) e!1489782))))

(declare-fun c!369070 () Bool)

(assert (=> b!2324983 (= c!369070 (<= 512 0))))

(declare-fun b!2324984 () Bool)

(assert (=> b!2324984 (= e!1489783 Nil!27672)))

(declare-fun b!2324985 () Bool)

(assert (=> b!2324985 (= e!1489785 0)))

(declare-fun d!688338 () Bool)

(assert (=> d!688338 e!1489781))

(declare-fun res!993058 () Bool)

(assert (=> d!688338 (=> (not res!993058) (not e!1489781))))

(assert (=> d!688338 (= res!993058 (= ((_ map implies) (content!3748 lt!861264) (content!3748 lt!861058)) ((as const (InoxSet T!43936)) true)))))

(assert (=> d!688338 (= lt!861264 e!1489783)))

(declare-fun c!369071 () Bool)

(assert (=> d!688338 (= c!369071 ((_ is Nil!27672) lt!861058))))

(assert (=> d!688338 (= (drop!1510 lt!861058 512) lt!861264)))

(declare-fun bm!138854 () Bool)

(assert (=> bm!138854 (= call!138859 (size!21943 lt!861058))))

(declare-fun b!2324986 () Bool)

(assert (=> b!2324986 (= e!1489784 (drop!1510 (t!207464 lt!861058) (- 512 1)))))

(assert (= (and d!688338 c!369071) b!2324984))

(assert (= (and d!688338 (not c!369071)) b!2324978))

(assert (= (and b!2324978 c!369069) b!2324982))

(assert (= (and b!2324978 (not c!369069)) b!2324986))

(assert (= (and d!688338 res!993058) b!2324983))

(assert (= (and b!2324983 c!369070) b!2324981))

(assert (= (and b!2324983 (not c!369070)) b!2324980))

(assert (= (and b!2324980 c!369068) b!2324985))

(assert (= (and b!2324980 (not c!369068)) b!2324979))

(assert (= (or b!2324981 b!2324980 b!2324979) bm!138854))

(declare-fun m!2755655 () Bool)

(assert (=> b!2324983 m!2755655))

(declare-fun m!2755657 () Bool)

(assert (=> d!688338 m!2755657))

(assert (=> d!688338 m!2754897))

(assert (=> bm!138854 m!2754791))

(declare-fun m!2755659 () Bool)

(assert (=> b!2324986 m!2755659))

(assert (=> d!688130 d!688338))

(assert (=> b!2324715 d!688210))

(declare-fun d!688342 () Bool)

(declare-fun lt!861267 () Bool)

(declare-fun isEmpty!15805 (List!27770) Bool)

(assert (=> d!688342 (= lt!861267 (isEmpty!15805 (list!11021 (left!21012 acc!252))))))

(declare-fun size!21946 (Conc!9077) Int)

(assert (=> d!688342 (= lt!861267 (= (size!21946 (left!21012 acc!252)) 0))))

(assert (=> d!688342 (= (isEmpty!15804 (left!21012 acc!252)) lt!861267)))

(declare-fun bs!459222 () Bool)

(assert (= bs!459222 d!688342))

(assert (=> bs!459222 m!2755297))

(assert (=> bs!459222 m!2755297))

(declare-fun m!2755661 () Bool)

(assert (=> bs!459222 m!2755661))

(declare-fun m!2755663 () Bool)

(assert (=> bs!459222 m!2755663))

(assert (=> b!2324392 d!688342))

(declare-fun d!688344 () Bool)

(assert (=> d!688344 (= (slice!708 (list!11020 arr!18) 0 512) (take!487 (drop!1510 (list!11020 arr!18) 0) (- 512 0)))))

(declare-fun bs!459223 () Bool)

(assert (= bs!459223 d!688344))

(assert (=> bs!459223 m!2754797))

(declare-fun m!2755665 () Bool)

(assert (=> bs!459223 m!2755665))

(assert (=> bs!459223 m!2755665))

(declare-fun m!2755667 () Bool)

(assert (=> bs!459223 m!2755667))

(assert (=> d!688182 d!688344))

(assert (=> d!688182 d!688138))

(declare-fun d!688346 () Bool)

(declare-fun _$4!1122 () IArray!18159)

(assert (=> d!688346 (= _$4!1122 (IArray!18160 (slice!708 (list!11020 arr!18) 0 512)))))

(declare-fun e!1489793 () Bool)

(assert (=> d!688346 (and (inv!37662 _$4!1122) e!1489793)))

(assert (=> d!688346 (= (choose!13614 arr!18 0 512) _$4!1122)))

(declare-fun b!2324998 () Bool)

(declare-fun tp!737029 () Bool)

(assert (=> b!2324998 (= e!1489793 tp!737029)))

(assert (= d!688346 b!2324998))

(assert (=> d!688346 m!2754797))

(assert (=> d!688346 m!2754797))

(assert (=> d!688346 m!2755079))

(declare-fun m!2755669 () Bool)

(assert (=> d!688346 m!2755669))

(assert (=> d!688182 d!688346))

(declare-fun b!2324999 () Bool)

(declare-fun res!993061 () Bool)

(declare-fun e!1489794 () Bool)

(assert (=> b!2324999 (=> (not res!993061) (not e!1489794))))

(assert (=> b!2324999 (= res!993061 (isBalanced!2771 (right!21342 (right!21342 acc!252))))))

(declare-fun b!2325000 () Bool)

(declare-fun res!993063 () Bool)

(assert (=> b!2325000 (=> (not res!993063) (not e!1489794))))

(assert (=> b!2325000 (= res!993063 (<= (- (height!1336 (left!21012 (right!21342 acc!252))) (height!1336 (right!21342 (right!21342 acc!252)))) 1))))

(declare-fun b!2325002 () Bool)

(declare-fun e!1489795 () Bool)

(assert (=> b!2325002 (= e!1489795 e!1489794)))

(declare-fun res!993065 () Bool)

(assert (=> b!2325002 (=> (not res!993065) (not e!1489794))))

(assert (=> b!2325002 (= res!993065 (<= (- 1) (- (height!1336 (left!21012 (right!21342 acc!252))) (height!1336 (right!21342 (right!21342 acc!252))))))))

(declare-fun b!2325003 () Bool)

(declare-fun res!993062 () Bool)

(assert (=> b!2325003 (=> (not res!993062) (not e!1489794))))

(assert (=> b!2325003 (= res!993062 (isBalanced!2771 (left!21012 (right!21342 acc!252))))))

(declare-fun b!2325004 () Bool)

(assert (=> b!2325004 (= e!1489794 (not (isEmpty!15804 (right!21342 (right!21342 acc!252)))))))

(declare-fun d!688348 () Bool)

(declare-fun res!993064 () Bool)

(assert (=> d!688348 (=> res!993064 e!1489795)))

(assert (=> d!688348 (= res!993064 (not ((_ is Node!9077) (right!21342 acc!252))))))

(assert (=> d!688348 (= (isBalanced!2771 (right!21342 acc!252)) e!1489795)))

(declare-fun b!2325001 () Bool)

(declare-fun res!993060 () Bool)

(assert (=> b!2325001 (=> (not res!993060) (not e!1489794))))

(assert (=> b!2325001 (= res!993060 (not (isEmpty!15804 (left!21012 (right!21342 acc!252)))))))

(assert (= (and d!688348 (not res!993064)) b!2325002))

(assert (= (and b!2325002 res!993065) b!2325000))

(assert (= (and b!2325000 res!993063) b!2325003))

(assert (= (and b!2325003 res!993062) b!2324999))

(assert (= (and b!2324999 res!993061) b!2325001))

(assert (= (and b!2325001 res!993060) b!2325004))

(declare-fun m!2755673 () Bool)

(assert (=> b!2325001 m!2755673))

(declare-fun m!2755675 () Bool)

(assert (=> b!2325004 m!2755675))

(declare-fun m!2755679 () Bool)

(assert (=> b!2325003 m!2755679))

(declare-fun m!2755681 () Bool)

(assert (=> b!2325000 m!2755681))

(declare-fun m!2755683 () Bool)

(assert (=> b!2325000 m!2755683))

(declare-fun m!2755685 () Bool)

(assert (=> b!2324999 m!2755685))

(assert (=> b!2325002 m!2755681))

(assert (=> b!2325002 m!2755683))

(assert (=> b!2324390 d!688348))

(assert (=> b!2324333 d!688096))

(assert (=> b!2324333 d!688104))

(declare-fun b!2325006 () Bool)

(declare-fun e!1489797 () List!27770)

(assert (=> b!2325006 (= e!1489797 (Cons!27672 (h!33073 (t!207464 (slice!708 lt!861058 0 512))) (++!6831 (t!207464 (t!207464 (slice!708 lt!861058 0 512))) (slice!708 lt!861058 512 (size!21943 lt!861058)))))))

(declare-fun b!2325008 () Bool)

(declare-fun e!1489796 () Bool)

(declare-fun lt!861269 () List!27770)

(assert (=> b!2325008 (= e!1489796 (or (not (= (slice!708 lt!861058 512 (size!21943 lt!861058)) Nil!27672)) (= lt!861269 (t!207464 (slice!708 lt!861058 0 512)))))))

(declare-fun d!688350 () Bool)

(assert (=> d!688350 e!1489796))

(declare-fun res!993066 () Bool)

(assert (=> d!688350 (=> (not res!993066) (not e!1489796))))

(assert (=> d!688350 (= res!993066 (= (content!3748 lt!861269) ((_ map or) (content!3748 (t!207464 (slice!708 lt!861058 0 512))) (content!3748 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(assert (=> d!688350 (= lt!861269 e!1489797)))

(declare-fun c!369076 () Bool)

(assert (=> d!688350 (= c!369076 ((_ is Nil!27672) (t!207464 (slice!708 lt!861058 0 512))))))

(assert (=> d!688350 (= (++!6831 (t!207464 (slice!708 lt!861058 0 512)) (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861269)))

(declare-fun b!2325007 () Bool)

(declare-fun res!993067 () Bool)

(assert (=> b!2325007 (=> (not res!993067) (not e!1489796))))

(assert (=> b!2325007 (= res!993067 (= (size!21943 lt!861269) (+ (size!21943 (t!207464 (slice!708 lt!861058 0 512))) (size!21943 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(declare-fun b!2325005 () Bool)

(assert (=> b!2325005 (= e!1489797 (slice!708 lt!861058 512 (size!21943 lt!861058)))))

(assert (= (and d!688350 c!369076) b!2325005))

(assert (= (and d!688350 (not c!369076)) b!2325006))

(assert (= (and d!688350 res!993066) b!2325007))

(assert (= (and b!2325007 res!993067) b!2325008))

(assert (=> b!2325006 m!2754795))

(declare-fun m!2755689 () Bool)

(assert (=> b!2325006 m!2755689))

(declare-fun m!2755691 () Bool)

(assert (=> d!688350 m!2755691))

(declare-fun m!2755693 () Bool)

(assert (=> d!688350 m!2755693))

(assert (=> d!688350 m!2754795))

(assert (=> d!688350 m!2754933))

(declare-fun m!2755695 () Bool)

(assert (=> b!2325007 m!2755695))

(declare-fun m!2755697 () Bool)

(assert (=> b!2325007 m!2755697))

(assert (=> b!2325007 m!2754795))

(assert (=> b!2325007 m!2754939))

(assert (=> b!2324439 d!688350))

(declare-fun d!688354 () Bool)

(declare-fun lt!861271 () Int)

(assert (=> d!688354 (>= lt!861271 0)))

(declare-fun e!1489800 () Int)

(assert (=> d!688354 (= lt!861271 e!1489800)))

(declare-fun c!369078 () Bool)

(assert (=> d!688354 (= c!369078 ((_ is Nil!27672) lt!861102))))

(assert (=> d!688354 (= (size!21943 lt!861102) lt!861271)))

(declare-fun b!2325013 () Bool)

(assert (=> b!2325013 (= e!1489800 0)))

(declare-fun b!2325014 () Bool)

(assert (=> b!2325014 (= e!1489800 (+ 1 (size!21943 (t!207464 lt!861102))))))

(assert (= (and d!688354 c!369078) b!2325013))

(assert (= (and d!688354 (not c!369078)) b!2325014))

(declare-fun m!2755705 () Bool)

(assert (=> b!2325014 m!2755705))

(assert (=> b!2324472 d!688354))

(declare-fun d!688356 () Bool)

(declare-fun lt!861272 () Int)

(assert (=> d!688356 (>= lt!861272 0)))

(declare-fun e!1489801 () Int)

(assert (=> d!688356 (= lt!861272 e!1489801)))

(declare-fun c!369079 () Bool)

(assert (=> d!688356 (= c!369079 ((_ is Nil!27672) lt!861064))))

(assert (=> d!688356 (= (size!21943 lt!861064) lt!861272)))

(declare-fun b!2325015 () Bool)

(assert (=> b!2325015 (= e!1489801 0)))

(declare-fun b!2325016 () Bool)

(assert (=> b!2325016 (= e!1489801 (+ 1 (size!21943 (t!207464 lt!861064))))))

(assert (= (and d!688356 c!369079) b!2325015))

(assert (= (and d!688356 (not c!369079)) b!2325016))

(declare-fun m!2755715 () Bool)

(assert (=> b!2325016 m!2755715))

(assert (=> b!2324472 d!688356))

(declare-fun d!688360 () Bool)

(declare-fun lt!861273 () Int)

(assert (=> d!688360 (>= lt!861273 0)))

(declare-fun e!1489804 () Int)

(assert (=> d!688360 (= lt!861273 e!1489804)))

(declare-fun c!369082 () Bool)

(assert (=> d!688360 (= c!369082 ((_ is Nil!27672) lt!861068))))

(assert (=> d!688360 (= (size!21943 lt!861068) lt!861273)))

(declare-fun b!2325021 () Bool)

(assert (=> b!2325021 (= e!1489804 0)))

(declare-fun b!2325022 () Bool)

(assert (=> b!2325022 (= e!1489804 (+ 1 (size!21943 (t!207464 lt!861068))))))

(assert (= (and d!688360 c!369082) b!2325021))

(assert (= (and d!688360 (not c!369082)) b!2325022))

(declare-fun m!2755717 () Bool)

(assert (=> b!2325022 m!2755717))

(assert (=> b!2324472 d!688360))

(declare-fun b!2325025 () Bool)

(declare-fun e!1489806 () List!27770)

(assert (=> b!2325025 (= e!1489806 (list!11020 (xs!12051 lt!861174)))))

(declare-fun b!2325026 () Bool)

(assert (=> b!2325026 (= e!1489806 (++!6831 (list!11021 (left!21012 lt!861174)) (list!11021 (right!21342 lt!861174))))))

(declare-fun d!688362 () Bool)

(declare-fun c!369083 () Bool)

(assert (=> d!688362 (= c!369083 ((_ is Empty!9077) lt!861174))))

(declare-fun e!1489805 () List!27770)

(assert (=> d!688362 (= (list!11021 lt!861174) e!1489805)))

(declare-fun b!2325024 () Bool)

(assert (=> b!2325024 (= e!1489805 e!1489806)))

(declare-fun c!369084 () Bool)

(assert (=> b!2325024 (= c!369084 ((_ is Leaf!13325) lt!861174))))

(declare-fun b!2325023 () Bool)

(assert (=> b!2325023 (= e!1489805 Nil!27672)))

(assert (= (and d!688362 c!369083) b!2325023))

(assert (= (and d!688362 (not c!369083)) b!2325024))

(assert (= (and b!2325024 c!369084) b!2325025))

(assert (= (and b!2325024 (not c!369084)) b!2325026))

(declare-fun m!2755727 () Bool)

(assert (=> b!2325025 m!2755727))

(declare-fun m!2755729 () Bool)

(assert (=> b!2325026 m!2755729))

(declare-fun m!2755731 () Bool)

(assert (=> b!2325026 m!2755731))

(assert (=> b!2325026 m!2755729))

(assert (=> b!2325026 m!2755731))

(declare-fun m!2755733 () Bool)

(assert (=> b!2325026 m!2755733))

(assert (=> b!2324687 d!688362))

(declare-fun b!2325032 () Bool)

(declare-fun e!1489810 () List!27770)

(assert (=> b!2325032 (= e!1489810 (Cons!27672 (h!33073 (list!11021 acc!252)) (++!6831 (t!207464 (list!11021 acc!252)) (list!11021 lt!861061))))))

(declare-fun e!1489809 () Bool)

(declare-fun lt!861274 () List!27770)

(declare-fun b!2325034 () Bool)

(assert (=> b!2325034 (= e!1489809 (or (not (= (list!11021 lt!861061) Nil!27672)) (= lt!861274 (list!11021 acc!252))))))

(declare-fun d!688366 () Bool)

(assert (=> d!688366 e!1489809))

(declare-fun res!993070 () Bool)

(assert (=> d!688366 (=> (not res!993070) (not e!1489809))))

(assert (=> d!688366 (= res!993070 (= (content!3748 lt!861274) ((_ map or) (content!3748 (list!11021 acc!252)) (content!3748 (list!11021 lt!861061)))))))

(assert (=> d!688366 (= lt!861274 e!1489810)))

(declare-fun c!369087 () Bool)

(assert (=> d!688366 (= c!369087 ((_ is Nil!27672) (list!11021 acc!252)))))

(assert (=> d!688366 (= (++!6831 (list!11021 acc!252) (list!11021 lt!861061)) lt!861274)))

(declare-fun b!2325033 () Bool)

(declare-fun res!993071 () Bool)

(assert (=> b!2325033 (=> (not res!993071) (not e!1489809))))

(assert (=> b!2325033 (= res!993071 (= (size!21943 lt!861274) (+ (size!21943 (list!11021 acc!252)) (size!21943 (list!11021 lt!861061)))))))

(declare-fun b!2325031 () Bool)

(assert (=> b!2325031 (= e!1489810 (list!11021 lt!861061))))

(assert (= (and d!688366 c!369087) b!2325031))

(assert (= (and d!688366 (not c!369087)) b!2325032))

(assert (= (and d!688366 res!993070) b!2325033))

(assert (= (and b!2325033 res!993071) b!2325034))

(assert (=> b!2325032 m!2754773))

(declare-fun m!2755743 () Bool)

(assert (=> b!2325032 m!2755743))

(declare-fun m!2755745 () Bool)

(assert (=> d!688366 m!2755745))

(assert (=> d!688366 m!2754767))

(declare-fun m!2755749 () Bool)

(assert (=> d!688366 m!2755749))

(assert (=> d!688366 m!2754773))

(declare-fun m!2755753 () Bool)

(assert (=> d!688366 m!2755753))

(declare-fun m!2755755 () Bool)

(assert (=> b!2325033 m!2755755))

(assert (=> b!2325033 m!2754767))

(declare-fun m!2755759 () Bool)

(assert (=> b!2325033 m!2755759))

(assert (=> b!2325033 m!2754773))

(declare-fun m!2755763 () Bool)

(assert (=> b!2325033 m!2755763))

(assert (=> b!2324687 d!688366))

(assert (=> b!2324687 d!688208))

(assert (=> b!2324687 d!688176))

(declare-fun d!688372 () Bool)

(declare-fun lt!861275 () Bool)

(assert (=> d!688372 (= lt!861275 (isEmpty!15805 (list!11021 (right!21342 lt!861063))))))

(assert (=> d!688372 (= lt!861275 (= (size!21946 (right!21342 lt!861063)) 0))))

(assert (=> d!688372 (= (isEmpty!15804 (right!21342 lt!861063)) lt!861275)))

(declare-fun bs!459224 () Bool)

(assert (= bs!459224 d!688372))

(assert (=> bs!459224 m!2755051))

(assert (=> bs!459224 m!2755051))

(declare-fun m!2755765 () Bool)

(assert (=> bs!459224 m!2755765))

(declare-fun m!2755767 () Bool)

(assert (=> bs!459224 m!2755767))

(assert (=> b!2324389 d!688372))

(declare-fun d!688374 () Bool)

(declare-fun lt!861277 () Int)

(assert (=> d!688374 (>= lt!861277 0)))

(declare-fun e!1489815 () Int)

(assert (=> d!688374 (= lt!861277 e!1489815)))

(declare-fun c!369091 () Bool)

(assert (=> d!688374 (= c!369091 ((_ is Nil!27672) (t!207464 lt!861058)))))

(assert (=> d!688374 (= (size!21943 (t!207464 lt!861058)) lt!861277)))

(declare-fun b!2325043 () Bool)

(assert (=> b!2325043 (= e!1489815 0)))

(declare-fun b!2325044 () Bool)

(assert (=> b!2325044 (= e!1489815 (+ 1 (size!21943 (t!207464 (t!207464 lt!861058)))))))

(assert (= (and d!688374 c!369091) b!2325043))

(assert (= (and d!688374 (not c!369091)) b!2325044))

(declare-fun m!2755769 () Bool)

(assert (=> b!2325044 m!2755769))

(assert (=> b!2324425 d!688374))

(declare-fun d!688376 () Bool)

(assert (=> d!688376 (= (slice!708 (list!11020 arr!18) 512 lt!861062) (take!487 (drop!1510 (list!11020 arr!18) 512) (- lt!861062 512)))))

(declare-fun bs!459225 () Bool)

(assert (= bs!459225 d!688376))

(assert (=> bs!459225 m!2754797))

(declare-fun m!2755781 () Bool)

(assert (=> bs!459225 m!2755781))

(assert (=> bs!459225 m!2755781))

(declare-fun m!2755785 () Bool)

(assert (=> bs!459225 m!2755785))

(assert (=> d!688206 d!688376))

(assert (=> d!688206 d!688138))

(declare-fun d!688378 () Bool)

(declare-fun _$4!1123 () IArray!18159)

(assert (=> d!688378 (= _$4!1123 (IArray!18160 (slice!708 (list!11020 arr!18) 512 lt!861062)))))

(declare-fun e!1489816 () Bool)

(assert (=> d!688378 (and (inv!37662 _$4!1123) e!1489816)))

(assert (=> d!688378 (= (choose!13614 arr!18 512 lt!861062) _$4!1123)))

(declare-fun b!2325045 () Bool)

(declare-fun tp!737030 () Bool)

(assert (=> b!2325045 (= e!1489816 tp!737030)))

(assert (= d!688378 b!2325045))

(assert (=> d!688378 m!2754797))

(assert (=> d!688378 m!2754797))

(assert (=> d!688378 m!2755291))

(declare-fun m!2755787 () Bool)

(assert (=> d!688378 m!2755787))

(assert (=> d!688206 d!688378))

(declare-fun d!688382 () Bool)

(declare-fun lt!861278 () Int)

(assert (=> d!688382 (>= lt!861278 0)))

(declare-fun e!1489819 () Int)

(assert (=> d!688382 (= lt!861278 e!1489819)))

(declare-fun c!369092 () Bool)

(assert (=> d!688382 (= c!369092 ((_ is Nil!27672) lt!861077))))

(assert (=> d!688382 (= (size!21943 lt!861077) lt!861278)))

(declare-fun b!2325052 () Bool)

(assert (=> b!2325052 (= e!1489819 0)))

(declare-fun b!2325053 () Bool)

(assert (=> b!2325053 (= e!1489819 (+ 1 (size!21943 (t!207464 lt!861077))))))

(assert (= (and d!688382 c!369092) b!2325052))

(assert (= (and d!688382 (not c!369092)) b!2325053))

(declare-fun m!2755789 () Bool)

(assert (=> b!2325053 m!2755789))

(assert (=> b!2324418 d!688382))

(declare-fun d!688384 () Bool)

(declare-fun lt!861279 () Int)

(assert (=> d!688384 (>= lt!861279 0)))

(declare-fun e!1489820 () Int)

(assert (=> d!688384 (= lt!861279 e!1489820)))

(declare-fun c!369093 () Bool)

(assert (=> d!688384 (= c!369093 ((_ is Nil!27672) lt!861059))))

(assert (=> d!688384 (= (size!21943 lt!861059) lt!861279)))

(declare-fun b!2325054 () Bool)

(assert (=> b!2325054 (= e!1489820 0)))

(declare-fun b!2325055 () Bool)

(assert (=> b!2325055 (= e!1489820 (+ 1 (size!21943 (t!207464 lt!861059))))))

(assert (= (and d!688384 c!369093) b!2325054))

(assert (= (and d!688384 (not c!369093)) b!2325055))

(declare-fun m!2755801 () Bool)

(assert (=> b!2325055 m!2755801))

(assert (=> b!2324418 d!688384))

(assert (=> b!2324418 d!688126))

(assert (=> b!2324506 d!688210))

(assert (=> bm!138849 d!688154))

(declare-fun b!2325058 () Bool)

(declare-fun e!1489824 () Int)

(assert (=> b!2325058 (= e!1489824 (- 512 0))))

(declare-fun d!688388 () Bool)

(declare-fun e!1489823 () Bool)

(assert (=> d!688388 e!1489823))

(declare-fun res!993080 () Bool)

(assert (=> d!688388 (=> (not res!993080) (not e!1489823))))

(declare-fun lt!861281 () List!27770)

(assert (=> d!688388 (= res!993080 (= ((_ map implies) (content!3748 lt!861281) (content!3748 (drop!1510 lt!861058 0))) ((as const (InoxSet T!43936)) true)))))

(declare-fun e!1489822 () List!27770)

(assert (=> d!688388 (= lt!861281 e!1489822)))

(declare-fun c!369096 () Bool)

(assert (=> d!688388 (= c!369096 (or ((_ is Nil!27672) (drop!1510 lt!861058 0)) (<= (- 512 0) 0)))))

(assert (=> d!688388 (= (take!487 (drop!1510 lt!861058 0) (- 512 0)) lt!861281)))

(declare-fun b!2325059 () Bool)

(assert (=> b!2325059 (= e!1489822 Nil!27672)))

(declare-fun b!2325060 () Bool)

(assert (=> b!2325060 (= e!1489822 (Cons!27672 (h!33073 (drop!1510 lt!861058 0)) (take!487 (t!207464 (drop!1510 lt!861058 0)) (- (- 512 0) 1))))))

(declare-fun b!2325061 () Bool)

(declare-fun e!1489825 () Int)

(assert (=> b!2325061 (= e!1489825 e!1489824)))

(declare-fun c!369095 () Bool)

(assert (=> b!2325061 (= c!369095 (>= (- 512 0) (size!21943 (drop!1510 lt!861058 0))))))

(declare-fun b!2325062 () Bool)

(assert (=> b!2325062 (= e!1489825 0)))

(declare-fun b!2325063 () Bool)

(assert (=> b!2325063 (= e!1489824 (size!21943 (drop!1510 lt!861058 0)))))

(declare-fun b!2325064 () Bool)

(assert (=> b!2325064 (= e!1489823 (= (size!21943 lt!861281) e!1489825))))

(declare-fun c!369097 () Bool)

(assert (=> b!2325064 (= c!369097 (<= (- 512 0) 0))))

(assert (= (and d!688388 c!369096) b!2325059))

(assert (= (and d!688388 (not c!369096)) b!2325060))

(assert (= (and d!688388 res!993080) b!2325064))

(assert (= (and b!2325064 c!369097) b!2325062))

(assert (= (and b!2325064 (not c!369097)) b!2325061))

(assert (= (and b!2325061 c!369095) b!2325063))

(assert (= (and b!2325061 (not c!369095)) b!2325058))

(declare-fun m!2755807 () Bool)

(assert (=> d!688388 m!2755807))

(assert (=> d!688388 m!2754909))

(declare-fun m!2755809 () Bool)

(assert (=> d!688388 m!2755809))

(declare-fun m!2755811 () Bool)

(assert (=> b!2325064 m!2755811))

(assert (=> b!2325063 m!2754909))

(declare-fun m!2755813 () Bool)

(assert (=> b!2325063 m!2755813))

(assert (=> b!2325061 m!2754909))

(assert (=> b!2325061 m!2755813))

(declare-fun m!2755815 () Bool)

(assert (=> b!2325060 m!2755815))

(assert (=> d!688132 d!688388))

(declare-fun b!2325065 () Bool)

(declare-fun e!1489828 () List!27770)

(declare-fun e!1489829 () List!27770)

(assert (=> b!2325065 (= e!1489828 e!1489829)))

(declare-fun c!369099 () Bool)

(assert (=> b!2325065 (= c!369099 (<= 0 0))))

(declare-fun b!2325066 () Bool)

(declare-fun e!1489830 () Int)

(declare-fun call!138863 () Int)

(assert (=> b!2325066 (= e!1489830 (- call!138863 0))))

(declare-fun b!2325067 () Bool)

(declare-fun e!1489827 () Int)

(assert (=> b!2325067 (= e!1489827 e!1489830)))

(declare-fun c!369098 () Bool)

(assert (=> b!2325067 (= c!369098 (>= 0 call!138863))))

(declare-fun b!2325068 () Bool)

(assert (=> b!2325068 (= e!1489827 call!138863)))

(declare-fun b!2325069 () Bool)

(assert (=> b!2325069 (= e!1489829 lt!861058)))

(declare-fun b!2325070 () Bool)

(declare-fun e!1489826 () Bool)

(declare-fun lt!861282 () List!27770)

(assert (=> b!2325070 (= e!1489826 (= (size!21943 lt!861282) e!1489827))))

(declare-fun c!369100 () Bool)

(assert (=> b!2325070 (= c!369100 (<= 0 0))))

(declare-fun b!2325071 () Bool)

(assert (=> b!2325071 (= e!1489828 Nil!27672)))

(declare-fun b!2325072 () Bool)

(assert (=> b!2325072 (= e!1489830 0)))

(declare-fun d!688392 () Bool)

(assert (=> d!688392 e!1489826))

(declare-fun res!993081 () Bool)

(assert (=> d!688392 (=> (not res!993081) (not e!1489826))))

(assert (=> d!688392 (= res!993081 (= ((_ map implies) (content!3748 lt!861282) (content!3748 lt!861058)) ((as const (InoxSet T!43936)) true)))))

(assert (=> d!688392 (= lt!861282 e!1489828)))

(declare-fun c!369101 () Bool)

(assert (=> d!688392 (= c!369101 ((_ is Nil!27672) lt!861058))))

(assert (=> d!688392 (= (drop!1510 lt!861058 0) lt!861282)))

(declare-fun bm!138858 () Bool)

(assert (=> bm!138858 (= call!138863 (size!21943 lt!861058))))

(declare-fun b!2325073 () Bool)

(assert (=> b!2325073 (= e!1489829 (drop!1510 (t!207464 lt!861058) (- 0 1)))))

(assert (= (and d!688392 c!369101) b!2325071))

(assert (= (and d!688392 (not c!369101)) b!2325065))

(assert (= (and b!2325065 c!369099) b!2325069))

(assert (= (and b!2325065 (not c!369099)) b!2325073))

(assert (= (and d!688392 res!993081) b!2325070))

(assert (= (and b!2325070 c!369100) b!2325068))

(assert (= (and b!2325070 (not c!369100)) b!2325067))

(assert (= (and b!2325067 c!369098) b!2325072))

(assert (= (and b!2325067 (not c!369098)) b!2325066))

(assert (= (or b!2325068 b!2325067 b!2325066) bm!138858))

(declare-fun m!2755817 () Bool)

(assert (=> b!2325070 m!2755817))

(declare-fun m!2755819 () Bool)

(assert (=> d!688392 m!2755819))

(assert (=> d!688392 m!2754897))

(assert (=> bm!138858 m!2754791))

(declare-fun m!2755821 () Bool)

(assert (=> b!2325073 m!2755821))

(assert (=> d!688132 d!688392))

(declare-fun b!2325074 () Bool)

(declare-fun res!993083 () Bool)

(declare-fun e!1489831 () Bool)

(assert (=> b!2325074 (=> (not res!993083) (not e!1489831))))

(assert (=> b!2325074 (= res!993083 (isBalanced!2771 (right!21342 lt!861061)))))

(declare-fun b!2325075 () Bool)

(declare-fun res!993085 () Bool)

(assert (=> b!2325075 (=> (not res!993085) (not e!1489831))))

(assert (=> b!2325075 (= res!993085 (<= (- (height!1336 (left!21012 lt!861061)) (height!1336 (right!21342 lt!861061))) 1))))

(declare-fun b!2325077 () Bool)

(declare-fun e!1489832 () Bool)

(assert (=> b!2325077 (= e!1489832 e!1489831)))

(declare-fun res!993087 () Bool)

(assert (=> b!2325077 (=> (not res!993087) (not e!1489831))))

(assert (=> b!2325077 (= res!993087 (<= (- 1) (- (height!1336 (left!21012 lt!861061)) (height!1336 (right!21342 lt!861061)))))))

(declare-fun b!2325078 () Bool)

(declare-fun res!993084 () Bool)

(assert (=> b!2325078 (=> (not res!993084) (not e!1489831))))

(assert (=> b!2325078 (= res!993084 (isBalanced!2771 (left!21012 lt!861061)))))

(declare-fun b!2325079 () Bool)

(assert (=> b!2325079 (= e!1489831 (not (isEmpty!15804 (right!21342 lt!861061))))))

(declare-fun d!688396 () Bool)

(declare-fun res!993086 () Bool)

(assert (=> d!688396 (=> res!993086 e!1489832)))

(assert (=> d!688396 (= res!993086 (not ((_ is Node!9077) lt!861061)))))

(assert (=> d!688396 (= (isBalanced!2771 lt!861061) e!1489832)))

(declare-fun b!2325076 () Bool)

(declare-fun res!993082 () Bool)

(assert (=> b!2325076 (=> (not res!993082) (not e!1489831))))

(assert (=> b!2325076 (= res!993082 (not (isEmpty!15804 (left!21012 lt!861061))))))

(assert (= (and d!688396 (not res!993086)) b!2325077))

(assert (= (and b!2325077 res!993087) b!2325075))

(assert (= (and b!2325075 res!993085) b!2325078))

(assert (= (and b!2325078 res!993084) b!2325074))

(assert (= (and b!2325074 res!993083) b!2325076))

(assert (= (and b!2325076 res!993082) b!2325079))

(declare-fun m!2755823 () Bool)

(assert (=> b!2325076 m!2755823))

(declare-fun m!2755825 () Bool)

(assert (=> b!2325079 m!2755825))

(declare-fun m!2755827 () Bool)

(assert (=> b!2325078 m!2755827))

(declare-fun m!2755829 () Bool)

(assert (=> b!2325075 m!2755829))

(declare-fun m!2755831 () Bool)

(assert (=> b!2325075 m!2755831))

(declare-fun m!2755833 () Bool)

(assert (=> b!2325074 m!2755833))

(assert (=> b!2325077 m!2755829))

(assert (=> b!2325077 m!2755831))

(assert (=> b!2324686 d!688396))

(declare-fun d!688398 () Bool)

(assert (=> d!688398 (= (height!1336 (left!21012 lt!861063)) (ite ((_ is Empty!9077) (left!21012 lt!861063)) 0 (ite ((_ is Leaf!13325) (left!21012 lt!861063)) 1 (cheight!9288 (left!21012 lt!861063)))))))

(assert (=> b!2324387 d!688398))

(declare-fun d!688400 () Bool)

(assert (=> d!688400 (= (height!1336 (right!21342 lt!861063)) (ite ((_ is Empty!9077) (right!21342 lt!861063)) 0 (ite ((_ is Leaf!13325) (right!21342 lt!861063)) 1 (cheight!9288 (right!21342 lt!861063)))))))

(assert (=> b!2324387 d!688400))

(declare-fun d!688402 () Bool)

(declare-fun lt!861283 () Bool)

(assert (=> d!688402 (= lt!861283 (isEmpty!15805 (list!11021 (left!21012 lt!861063))))))

(assert (=> d!688402 (= lt!861283 (= (size!21946 (left!21012 lt!861063)) 0))))

(assert (=> d!688402 (= (isEmpty!15804 (left!21012 lt!861063)) lt!861283)))

(declare-fun bs!459227 () Bool)

(assert (= bs!459227 d!688402))

(assert (=> bs!459227 m!2755049))

(assert (=> bs!459227 m!2755049))

(declare-fun m!2755835 () Bool)

(assert (=> bs!459227 m!2755835))

(declare-fun m!2755837 () Bool)

(assert (=> bs!459227 m!2755837))

(assert (=> b!2324386 d!688402))

(declare-fun d!688404 () Bool)

(declare-fun lt!861293 () Conc!9077)

(assert (=> d!688404 (= (list!11021 lt!861293) (++!6831 (list!11021 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061)))))) (list!11021 (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))))))))

(declare-fun e!1489849 () Conc!9077)

(assert (=> d!688404 (= lt!861293 e!1489849)))

(declare-fun c!369116 () Bool)

(assert (=> d!688404 (= c!369116 (= (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061))))) Empty!9077))))

(assert (=> d!688404 (= (<>!218 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061))))) (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061))))) lt!861293)))

(declare-fun b!2325111 () Bool)

(declare-fun e!1489848 () Conc!9077)

(assert (=> b!2325111 (= e!1489849 e!1489848)))

(declare-fun c!369117 () Bool)

(assert (=> b!2325111 (= c!369117 (= (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))) Empty!9077))))

(declare-fun b!2325110 () Bool)

(assert (=> b!2325110 (= e!1489849 (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))))))

(declare-fun b!2325112 () Bool)

(assert (=> b!2325112 (= e!1489848 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061))))))))

(declare-fun b!2325113 () Bool)

(assert (=> b!2325113 (= e!1489848 (Node!9077 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061))))) (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))) (+ (size!21946 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061)))))) (size!21946 (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))))) (+ (max!0 (height!1336 (ite c!368981 (ite c!368978 (left!21012 (right!21342 acc!252)) (left!21012 acc!252)) (ite c!368982 call!138844 (ite c!368979 lt!861175 (right!21342 (left!21012 lt!861061)))))) (height!1336 (ite c!368981 (ite c!368978 lt!861176 (left!21012 (right!21342 acc!252))) (ite c!368982 (right!21342 lt!861061) (ite c!368979 (right!21342 (left!21012 lt!861061)) (right!21342 lt!861061)))))) 1)))))

(assert (= (and d!688404 c!369116) b!2325110))

(assert (= (and d!688404 (not c!369116)) b!2325111))

(assert (= (and b!2325111 c!369117) b!2325112))

(assert (= (and b!2325111 (not c!369117)) b!2325113))

(declare-fun m!2755873 () Bool)

(assert (=> d!688404 m!2755873))

(declare-fun m!2755875 () Bool)

(assert (=> d!688404 m!2755875))

(declare-fun m!2755877 () Bool)

(assert (=> d!688404 m!2755877))

(assert (=> d!688404 m!2755875))

(assert (=> d!688404 m!2755877))

(declare-fun m!2755879 () Bool)

(assert (=> d!688404 m!2755879))

(declare-fun m!2755881 () Bool)

(assert (=> b!2325113 m!2755881))

(declare-fun m!2755883 () Bool)

(assert (=> b!2325113 m!2755883))

(declare-fun m!2755885 () Bool)

(assert (=> b!2325113 m!2755885))

(assert (=> b!2325113 m!2755881))

(declare-fun m!2755887 () Bool)

(assert (=> b!2325113 m!2755887))

(declare-fun m!2755889 () Bool)

(assert (=> b!2325113 m!2755889))

(assert (=> b!2325113 m!2755885))

(assert (=> bm!138841 d!688404))

(declare-fun d!688416 () Bool)

(declare-fun res!993099 () Bool)

(declare-fun e!1489862 () Bool)

(assert (=> d!688416 (=> (not res!993099) (not e!1489862))))

(assert (=> d!688416 (= res!993099 (<= (size!21943 (list!11020 (xs!12051 (right!21342 acc!252)))) 512))))

(assert (=> d!688416 (= (inv!37666 (right!21342 acc!252)) e!1489862)))

(declare-fun b!2325139 () Bool)

(declare-fun res!993100 () Bool)

(assert (=> b!2325139 (=> (not res!993100) (not e!1489862))))

(assert (=> b!2325139 (= res!993100 (= (csize!18385 (right!21342 acc!252)) (size!21943 (list!11020 (xs!12051 (right!21342 acc!252))))))))

(declare-fun b!2325140 () Bool)

(assert (=> b!2325140 (= e!1489862 (and (> (csize!18385 (right!21342 acc!252)) 0) (<= (csize!18385 (right!21342 acc!252)) 512)))))

(assert (= (and d!688416 res!993099) b!2325139))

(assert (= (and b!2325139 res!993100) b!2325140))

(declare-fun m!2755891 () Bool)

(assert (=> d!688416 m!2755891))

(assert (=> d!688416 m!2755891))

(declare-fun m!2755893 () Bool)

(assert (=> d!688416 m!2755893))

(assert (=> b!2325139 m!2755891))

(assert (=> b!2325139 m!2755891))

(assert (=> b!2325139 m!2755893))

(assert (=> b!2324353 d!688416))

(declare-fun b!2325141 () Bool)

(declare-fun res!993102 () Bool)

(declare-fun e!1489863 () Bool)

(assert (=> b!2325141 (=> (not res!993102) (not e!1489863))))

(assert (=> b!2325141 (= res!993102 (isBalanced!2771 (right!21342 (right!21342 lt!861063))))))

(declare-fun b!2325142 () Bool)

(declare-fun res!993104 () Bool)

(assert (=> b!2325142 (=> (not res!993104) (not e!1489863))))

(assert (=> b!2325142 (= res!993104 (<= (- (height!1336 (left!21012 (right!21342 lt!861063))) (height!1336 (right!21342 (right!21342 lt!861063)))) 1))))

(declare-fun b!2325144 () Bool)

(declare-fun e!1489864 () Bool)

(assert (=> b!2325144 (= e!1489864 e!1489863)))

(declare-fun res!993106 () Bool)

(assert (=> b!2325144 (=> (not res!993106) (not e!1489863))))

(assert (=> b!2325144 (= res!993106 (<= (- 1) (- (height!1336 (left!21012 (right!21342 lt!861063))) (height!1336 (right!21342 (right!21342 lt!861063))))))))

(declare-fun b!2325145 () Bool)

(declare-fun res!993103 () Bool)

(assert (=> b!2325145 (=> (not res!993103) (not e!1489863))))

(assert (=> b!2325145 (= res!993103 (isBalanced!2771 (left!21012 (right!21342 lt!861063))))))

(declare-fun b!2325146 () Bool)

(assert (=> b!2325146 (= e!1489863 (not (isEmpty!15804 (right!21342 (right!21342 lt!861063)))))))

(declare-fun d!688420 () Bool)

(declare-fun res!993105 () Bool)

(assert (=> d!688420 (=> res!993105 e!1489864)))

(assert (=> d!688420 (= res!993105 (not ((_ is Node!9077) (right!21342 lt!861063))))))

(assert (=> d!688420 (= (isBalanced!2771 (right!21342 lt!861063)) e!1489864)))

(declare-fun b!2325143 () Bool)

(declare-fun res!993101 () Bool)

(assert (=> b!2325143 (=> (not res!993101) (not e!1489863))))

(assert (=> b!2325143 (= res!993101 (not (isEmpty!15804 (left!21012 (right!21342 lt!861063)))))))

(assert (= (and d!688420 (not res!993105)) b!2325144))

(assert (= (and b!2325144 res!993106) b!2325142))

(assert (= (and b!2325142 res!993104) b!2325145))

(assert (= (and b!2325145 res!993103) b!2325141))

(assert (= (and b!2325141 res!993102) b!2325143))

(assert (= (and b!2325143 res!993101) b!2325146))

(declare-fun m!2755895 () Bool)

(assert (=> b!2325143 m!2755895))

(declare-fun m!2755897 () Bool)

(assert (=> b!2325146 m!2755897))

(declare-fun m!2755899 () Bool)

(assert (=> b!2325145 m!2755899))

(declare-fun m!2755901 () Bool)

(assert (=> b!2325142 m!2755901))

(declare-fun m!2755903 () Bool)

(assert (=> b!2325142 m!2755903))

(declare-fun m!2755905 () Bool)

(assert (=> b!2325141 m!2755905))

(assert (=> b!2325144 m!2755901))

(assert (=> b!2325144 m!2755903))

(assert (=> b!2324384 d!688420))

(declare-fun b!2325148 () Bool)

(declare-fun e!1489866 () List!27770)

(assert (=> b!2325148 (= e!1489866 (Cons!27672 (h!33073 (list!11021 (left!21012 lt!861061))) (++!6831 (t!207464 (list!11021 (left!21012 lt!861061))) (list!11021 (right!21342 lt!861061)))))))

(declare-fun b!2325150 () Bool)

(declare-fun e!1489865 () Bool)

(declare-fun lt!861298 () List!27770)

(assert (=> b!2325150 (= e!1489865 (or (not (= (list!11021 (right!21342 lt!861061)) Nil!27672)) (= lt!861298 (list!11021 (left!21012 lt!861061)))))))

(declare-fun d!688422 () Bool)

(assert (=> d!688422 e!1489865))

(declare-fun res!993107 () Bool)

(assert (=> d!688422 (=> (not res!993107) (not e!1489865))))

(assert (=> d!688422 (= res!993107 (= (content!3748 lt!861298) ((_ map or) (content!3748 (list!11021 (left!21012 lt!861061))) (content!3748 (list!11021 (right!21342 lt!861061))))))))

(assert (=> d!688422 (= lt!861298 e!1489866)))

(declare-fun c!369126 () Bool)

(assert (=> d!688422 (= c!369126 ((_ is Nil!27672) (list!11021 (left!21012 lt!861061))))))

(assert (=> d!688422 (= (++!6831 (list!11021 (left!21012 lt!861061)) (list!11021 (right!21342 lt!861061))) lt!861298)))

(declare-fun b!2325149 () Bool)

(declare-fun res!993108 () Bool)

(assert (=> b!2325149 (=> (not res!993108) (not e!1489865))))

(assert (=> b!2325149 (= res!993108 (= (size!21943 lt!861298) (+ (size!21943 (list!11021 (left!21012 lt!861061))) (size!21943 (list!11021 (right!21342 lt!861061))))))))

(declare-fun b!2325147 () Bool)

(assert (=> b!2325147 (= e!1489866 (list!11021 (right!21342 lt!861061)))))

(assert (= (and d!688422 c!369126) b!2325147))

(assert (= (and d!688422 (not c!369126)) b!2325148))

(assert (= (and d!688422 res!993107) b!2325149))

(assert (= (and b!2325149 res!993108) b!2325150))

(assert (=> b!2325148 m!2755069))

(declare-fun m!2755907 () Bool)

(assert (=> b!2325148 m!2755907))

(declare-fun m!2755909 () Bool)

(assert (=> d!688422 m!2755909))

(assert (=> d!688422 m!2755067))

(declare-fun m!2755911 () Bool)

(assert (=> d!688422 m!2755911))

(assert (=> d!688422 m!2755069))

(declare-fun m!2755913 () Bool)

(assert (=> d!688422 m!2755913))

(declare-fun m!2755915 () Bool)

(assert (=> b!2325149 m!2755915))

(assert (=> b!2325149 m!2755067))

(declare-fun m!2755917 () Bool)

(assert (=> b!2325149 m!2755917))

(assert (=> b!2325149 m!2755069))

(declare-fun m!2755919 () Bool)

(assert (=> b!2325149 m!2755919))

(assert (=> b!2324499 d!688422))

(declare-fun b!2325153 () Bool)

(declare-fun e!1489868 () List!27770)

(assert (=> b!2325153 (= e!1489868 (list!11020 (xs!12051 (left!21012 lt!861061))))))

(declare-fun b!2325154 () Bool)

(assert (=> b!2325154 (= e!1489868 (++!6831 (list!11021 (left!21012 (left!21012 lt!861061))) (list!11021 (right!21342 (left!21012 lt!861061)))))))

(declare-fun d!688424 () Bool)

(declare-fun c!369127 () Bool)

(assert (=> d!688424 (= c!369127 ((_ is Empty!9077) (left!21012 lt!861061)))))

(declare-fun e!1489867 () List!27770)

(assert (=> d!688424 (= (list!11021 (left!21012 lt!861061)) e!1489867)))

(declare-fun b!2325152 () Bool)

(assert (=> b!2325152 (= e!1489867 e!1489868)))

(declare-fun c!369128 () Bool)

(assert (=> b!2325152 (= c!369128 ((_ is Leaf!13325) (left!21012 lt!861061)))))

(declare-fun b!2325151 () Bool)

(assert (=> b!2325151 (= e!1489867 Nil!27672)))

(assert (= (and d!688424 c!369127) b!2325151))

(assert (= (and d!688424 (not c!369127)) b!2325152))

(assert (= (and b!2325152 c!369128) b!2325153))

(assert (= (and b!2325152 (not c!369128)) b!2325154))

(declare-fun m!2755929 () Bool)

(assert (=> b!2325153 m!2755929))

(assert (=> b!2325154 m!2755575))

(assert (=> b!2325154 m!2755581))

(assert (=> b!2325154 m!2755575))

(assert (=> b!2325154 m!2755581))

(declare-fun m!2755935 () Bool)

(assert (=> b!2325154 m!2755935))

(assert (=> b!2324499 d!688424))

(declare-fun b!2325157 () Bool)

(declare-fun e!1489870 () List!27770)

(assert (=> b!2325157 (= e!1489870 (list!11020 (xs!12051 (right!21342 lt!861061))))))

(declare-fun b!2325158 () Bool)

(assert (=> b!2325158 (= e!1489870 (++!6831 (list!11021 (left!21012 (right!21342 lt!861061))) (list!11021 (right!21342 (right!21342 lt!861061)))))))

(declare-fun d!688426 () Bool)

(declare-fun c!369129 () Bool)

(assert (=> d!688426 (= c!369129 ((_ is Empty!9077) (right!21342 lt!861061)))))

(declare-fun e!1489869 () List!27770)

(assert (=> d!688426 (= (list!11021 (right!21342 lt!861061)) e!1489869)))

(declare-fun b!2325156 () Bool)

(assert (=> b!2325156 (= e!1489869 e!1489870)))

(declare-fun c!369130 () Bool)

(assert (=> b!2325156 (= c!369130 ((_ is Leaf!13325) (right!21342 lt!861061)))))

(declare-fun b!2325155 () Bool)

(assert (=> b!2325155 (= e!1489869 Nil!27672)))

(assert (= (and d!688426 c!369129) b!2325155))

(assert (= (and d!688426 (not c!369129)) b!2325156))

(assert (= (and b!2325156 c!369130) b!2325157))

(assert (= (and b!2325156 (not c!369130)) b!2325158))

(declare-fun m!2755939 () Bool)

(assert (=> b!2325157 m!2755939))

(declare-fun m!2755941 () Bool)

(assert (=> b!2325158 m!2755941))

(declare-fun m!2755943 () Bool)

(assert (=> b!2325158 m!2755943))

(assert (=> b!2325158 m!2755941))

(assert (=> b!2325158 m!2755943))

(declare-fun m!2755945 () Bool)

(assert (=> b!2325158 m!2755945))

(assert (=> b!2324499 d!688426))

(declare-fun b!2325161 () Bool)

(declare-fun e!1489872 () List!27770)

(assert (=> b!2325161 (= e!1489872 (list!11020 (xs!12051 lt!861208)))))

(declare-fun b!2325162 () Bool)

(assert (=> b!2325162 (= e!1489872 (++!6831 (list!11021 (left!21012 lt!861208)) (list!11021 (right!21342 lt!861208))))))

(declare-fun d!688428 () Bool)

(declare-fun c!369131 () Bool)

(assert (=> d!688428 (= c!369131 ((_ is Empty!9077) lt!861208))))

(declare-fun e!1489871 () List!27770)

(assert (=> d!688428 (= (list!11021 lt!861208) e!1489871)))

(declare-fun b!2325160 () Bool)

(assert (=> b!2325160 (= e!1489871 e!1489872)))

(declare-fun c!369132 () Bool)

(assert (=> b!2325160 (= c!369132 ((_ is Leaf!13325) lt!861208))))

(declare-fun b!2325159 () Bool)

(assert (=> b!2325159 (= e!1489871 Nil!27672)))

(assert (= (and d!688428 c!369131) b!2325159))

(assert (= (and d!688428 (not c!369131)) b!2325160))

(assert (= (and b!2325160 c!369132) b!2325161))

(assert (= (and b!2325160 (not c!369132)) b!2325162))

(declare-fun m!2755955 () Bool)

(assert (=> b!2325161 m!2755955))

(declare-fun m!2755957 () Bool)

(assert (=> b!2325162 m!2755957))

(declare-fun m!2755959 () Bool)

(assert (=> b!2325162 m!2755959))

(assert (=> b!2325162 m!2755957))

(assert (=> b!2325162 m!2755959))

(declare-fun m!2755961 () Bool)

(assert (=> b!2325162 m!2755961))

(assert (=> b!2324712 d!688428))

(declare-fun e!1489874 () List!27770)

(declare-fun b!2325164 () Bool)

(assert (=> b!2325164 (= e!1489874 (Cons!27672 (h!33073 (list!11021 (++!6832 acc!252 lt!861061))) (++!6831 (t!207464 (list!11021 (++!6832 acc!252 lt!861061))) (list!11020 lt!861069))))))

(declare-fun e!1489873 () Bool)

(declare-fun b!2325166 () Bool)

(declare-fun lt!861299 () List!27770)

(assert (=> b!2325166 (= e!1489873 (or (not (= (list!11020 lt!861069) Nil!27672)) (= lt!861299 (list!11021 (++!6832 acc!252 lt!861061)))))))

(declare-fun d!688430 () Bool)

(assert (=> d!688430 e!1489873))

(declare-fun res!993109 () Bool)

(assert (=> d!688430 (=> (not res!993109) (not e!1489873))))

(assert (=> d!688430 (= res!993109 (= (content!3748 lt!861299) ((_ map or) (content!3748 (list!11021 (++!6832 acc!252 lt!861061))) (content!3748 (list!11020 lt!861069)))))))

(assert (=> d!688430 (= lt!861299 e!1489874)))

(declare-fun c!369133 () Bool)

(assert (=> d!688430 (= c!369133 ((_ is Nil!27672) (list!11021 (++!6832 acc!252 lt!861061))))))

(assert (=> d!688430 (= (++!6831 (list!11021 (++!6832 acc!252 lt!861061)) (list!11020 lt!861069)) lt!861299)))

(declare-fun b!2325165 () Bool)

(declare-fun res!993110 () Bool)

(assert (=> b!2325165 (=> (not res!993110) (not e!1489873))))

(assert (=> b!2325165 (= res!993110 (= (size!21943 lt!861299) (+ (size!21943 (list!11021 (++!6832 acc!252 lt!861061))) (size!21943 (list!11020 lt!861069)))))))

(declare-fun b!2325163 () Bool)

(assert (=> b!2325163 (= e!1489874 (list!11020 lt!861069))))

(assert (= (and d!688430 c!369133) b!2325163))

(assert (= (and d!688430 (not c!369133)) b!2325164))

(assert (= (and d!688430 res!993109) b!2325165))

(assert (= (and b!2325165 res!993110) b!2325166))

(assert (=> b!2325164 m!2754779))

(declare-fun m!2755979 () Bool)

(assert (=> b!2325164 m!2755979))

(declare-fun m!2755981 () Bool)

(assert (=> d!688430 m!2755981))

(assert (=> d!688430 m!2755257))

(declare-fun m!2755983 () Bool)

(assert (=> d!688430 m!2755983))

(assert (=> d!688430 m!2754779))

(declare-fun m!2755985 () Bool)

(assert (=> d!688430 m!2755985))

(declare-fun m!2755987 () Bool)

(assert (=> b!2325165 m!2755987))

(assert (=> b!2325165 m!2755257))

(declare-fun m!2755989 () Bool)

(assert (=> b!2325165 m!2755989))

(assert (=> b!2325165 m!2754779))

(assert (=> b!2325165 m!2754993))

(assert (=> b!2324712 d!688430))

(declare-fun b!2325171 () Bool)

(declare-fun e!1489877 () List!27770)

(assert (=> b!2325171 (= e!1489877 (list!11020 (xs!12051 (++!6832 acc!252 lt!861061))))))

(declare-fun b!2325172 () Bool)

(assert (=> b!2325172 (= e!1489877 (++!6831 (list!11021 (left!21012 (++!6832 acc!252 lt!861061))) (list!11021 (right!21342 (++!6832 acc!252 lt!861061)))))))

(declare-fun d!688436 () Bool)

(declare-fun c!369135 () Bool)

(assert (=> d!688436 (= c!369135 ((_ is Empty!9077) (++!6832 acc!252 lt!861061)))))

(declare-fun e!1489876 () List!27770)

(assert (=> d!688436 (= (list!11021 (++!6832 acc!252 lt!861061)) e!1489876)))

(declare-fun b!2325170 () Bool)

(assert (=> b!2325170 (= e!1489876 e!1489877)))

(declare-fun c!369136 () Bool)

(assert (=> b!2325170 (= c!369136 ((_ is Leaf!13325) (++!6832 acc!252 lt!861061)))))

(declare-fun b!2325169 () Bool)

(assert (=> b!2325169 (= e!1489876 Nil!27672)))

(assert (= (and d!688436 c!369135) b!2325169))

(assert (= (and d!688436 (not c!369135)) b!2325170))

(assert (= (and b!2325170 c!369136) b!2325171))

(assert (= (and b!2325170 (not c!369136)) b!2325172))

(declare-fun m!2755995 () Bool)

(assert (=> b!2325171 m!2755995))

(declare-fun m!2755997 () Bool)

(assert (=> b!2325172 m!2755997))

(declare-fun m!2755999 () Bool)

(assert (=> b!2325172 m!2755999))

(assert (=> b!2325172 m!2755997))

(assert (=> b!2325172 m!2755999))

(declare-fun m!2756003 () Bool)

(assert (=> b!2325172 m!2756003))

(assert (=> b!2324712 d!688436))

(assert (=> b!2324712 d!688178))

(declare-fun d!688444 () Bool)

(declare-fun res!993126 () Bool)

(declare-fun e!1489899 () Bool)

(assert (=> d!688444 (=> (not res!993126) (not e!1489899))))

(assert (=> d!688444 (= res!993126 (= (csize!18384 (right!21342 acc!252)) (+ (size!21946 (left!21012 (right!21342 acc!252))) (size!21946 (right!21342 (right!21342 acc!252))))))))

(assert (=> d!688444 (= (inv!37665 (right!21342 acc!252)) e!1489899)))

(declare-fun b!2325218 () Bool)

(declare-fun res!993127 () Bool)

(assert (=> b!2325218 (=> (not res!993127) (not e!1489899))))

(assert (=> b!2325218 (= res!993127 (and (not (= (left!21012 (right!21342 acc!252)) Empty!9077)) (not (= (right!21342 (right!21342 acc!252)) Empty!9077))))))

(declare-fun b!2325219 () Bool)

(declare-fun res!993128 () Bool)

(assert (=> b!2325219 (=> (not res!993128) (not e!1489899))))

(assert (=> b!2325219 (= res!993128 (= (cheight!9288 (right!21342 acc!252)) (+ (max!0 (height!1336 (left!21012 (right!21342 acc!252))) (height!1336 (right!21342 (right!21342 acc!252)))) 1)))))

(declare-fun b!2325220 () Bool)

(assert (=> b!2325220 (= e!1489899 (<= 0 (cheight!9288 (right!21342 acc!252))))))

(assert (= (and d!688444 res!993126) b!2325218))

(assert (= (and b!2325218 res!993127) b!2325219))

(assert (= (and b!2325219 res!993128) b!2325220))

(declare-fun m!2756075 () Bool)

(assert (=> d!688444 m!2756075))

(declare-fun m!2756077 () Bool)

(assert (=> d!688444 m!2756077))

(assert (=> b!2325219 m!2755681))

(assert (=> b!2325219 m!2755683))

(assert (=> b!2325219 m!2755681))

(assert (=> b!2325219 m!2755683))

(declare-fun m!2756079 () Bool)

(assert (=> b!2325219 m!2756079))

(assert (=> b!2324351 d!688444))

(declare-fun d!688472 () Bool)

(declare-fun lt!861307 () Int)

(assert (=> d!688472 (>= lt!861307 0)))

(declare-fun e!1489905 () Int)

(assert (=> d!688472 (= lt!861307 e!1489905)))

(declare-fun c!369156 () Bool)

(assert (=> d!688472 (= c!369156 ((_ is Nil!27672) lt!861108))))

(assert (=> d!688472 (= (size!21943 lt!861108) lt!861307)))

(declare-fun b!2325230 () Bool)

(assert (=> b!2325230 (= e!1489905 0)))

(declare-fun b!2325231 () Bool)

(assert (=> b!2325231 (= e!1489905 (+ 1 (size!21943 (t!207464 lt!861108))))))

(assert (= (and d!688472 c!369156) b!2325230))

(assert (= (and d!688472 (not c!369156)) b!2325231))

(declare-fun m!2756081 () Bool)

(assert (=> b!2325231 m!2756081))

(assert (=> b!2324502 d!688472))

(assert (=> b!2324502 d!688384))

(assert (=> b!2324502 d!688356))

(declare-fun d!688474 () Bool)

(declare-fun lt!861308 () Int)

(assert (=> d!688474 (>= lt!861308 0)))

(declare-fun e!1489906 () Int)

(assert (=> d!688474 (= lt!861308 e!1489906)))

(declare-fun c!369157 () Bool)

(assert (=> d!688474 (= c!369157 ((_ is Nil!27672) lt!861100))))

(assert (=> d!688474 (= (size!21943 lt!861100) lt!861308)))

(declare-fun b!2325232 () Bool)

(assert (=> b!2325232 (= e!1489906 0)))

(declare-fun b!2325233 () Bool)

(assert (=> b!2325233 (= e!1489906 (+ 1 (size!21943 (t!207464 lt!861100))))))

(assert (= (and d!688474 c!369157) b!2325232))

(assert (= (and d!688474 (not c!369157)) b!2325233))

(declare-fun m!2756085 () Bool)

(assert (=> b!2325233 m!2756085))

(assert (=> b!2324468 d!688474))

(assert (=> b!2324468 d!688384))

(declare-fun d!688476 () Bool)

(declare-fun lt!861309 () Int)

(assert (=> d!688476 (>= lt!861309 0)))

(declare-fun e!1489907 () Int)

(assert (=> d!688476 (= lt!861309 e!1489907)))

(declare-fun c!369158 () Bool)

(assert (=> d!688476 (= c!369158 ((_ is Nil!27672) lt!861057))))

(assert (=> d!688476 (= (size!21943 lt!861057) lt!861309)))

(declare-fun b!2325234 () Bool)

(assert (=> b!2325234 (= e!1489907 0)))

(declare-fun b!2325235 () Bool)

(assert (=> b!2325235 (= e!1489907 (+ 1 (size!21943 (t!207464 lt!861057))))))

(assert (= (and d!688476 c!369158) b!2325234))

(assert (= (and d!688476 (not c!369158)) b!2325235))

(declare-fun m!2756091 () Bool)

(assert (=> b!2325235 m!2756091))

(assert (=> b!2324468 d!688476))

(declare-fun d!688482 () Bool)

(declare-fun lt!861310 () Int)

(assert (=> d!688482 (>= lt!861310 0)))

(declare-fun e!1489908 () Int)

(assert (=> d!688482 (= lt!861310 e!1489908)))

(declare-fun c!369159 () Bool)

(assert (=> d!688482 (= c!369159 ((_ is Nil!27672) lt!861107))))

(assert (=> d!688482 (= (size!21943 lt!861107) lt!861310)))

(declare-fun b!2325236 () Bool)

(assert (=> b!2325236 (= e!1489908 0)))

(declare-fun b!2325237 () Bool)

(assert (=> b!2325237 (= e!1489908 (+ 1 (size!21943 (t!207464 lt!861107))))))

(assert (= (and d!688482 c!369159) b!2325236))

(assert (= (and d!688482 (not c!369159)) b!2325237))

(declare-fun m!2756093 () Bool)

(assert (=> b!2325237 m!2756093))

(assert (=> b!2324494 d!688482))

(declare-fun d!688484 () Bool)

(declare-fun lt!861311 () Int)

(assert (=> d!688484 (>= lt!861311 0)))

(declare-fun e!1489909 () Int)

(assert (=> d!688484 (= lt!861311 e!1489909)))

(declare-fun c!369160 () Bool)

(assert (=> d!688484 (= c!369160 ((_ is Nil!27672) (++!6831 lt!861059 lt!861064)))))

(assert (=> d!688484 (= (size!21943 (++!6831 lt!861059 lt!861064)) lt!861311)))

(declare-fun b!2325238 () Bool)

(assert (=> b!2325238 (= e!1489909 0)))

(declare-fun b!2325239 () Bool)

(assert (=> b!2325239 (= e!1489909 (+ 1 (size!21943 (t!207464 (++!6831 lt!861059 lt!861064)))))))

(assert (= (and d!688484 c!369160) b!2325238))

(assert (= (and d!688484 (not c!369160)) b!2325239))

(declare-fun m!2756095 () Bool)

(assert (=> b!2325239 m!2756095))

(assert (=> b!2324494 d!688484))

(assert (=> b!2324494 d!688360))

(declare-fun b!2325241 () Bool)

(declare-fun e!1489911 () List!27770)

(assert (=> b!2325241 (= e!1489911 (Cons!27672 (h!33073 (list!11021 (left!21012 acc!252))) (++!6831 (t!207464 (list!11021 (left!21012 acc!252))) (list!11021 (right!21342 acc!252)))))))

(declare-fun b!2325243 () Bool)

(declare-fun e!1489910 () Bool)

(declare-fun lt!861312 () List!27770)

(assert (=> b!2325243 (= e!1489910 (or (not (= (list!11021 (right!21342 acc!252)) Nil!27672)) (= lt!861312 (list!11021 (left!21012 acc!252)))))))

(declare-fun d!688486 () Bool)

(assert (=> d!688486 e!1489910))

(declare-fun res!993130 () Bool)

(assert (=> d!688486 (=> (not res!993130) (not e!1489910))))

(assert (=> d!688486 (= res!993130 (= (content!3748 lt!861312) ((_ map or) (content!3748 (list!11021 (left!21012 acc!252))) (content!3748 (list!11021 (right!21342 acc!252))))))))

(assert (=> d!688486 (= lt!861312 e!1489911)))

(declare-fun c!369161 () Bool)

(assert (=> d!688486 (= c!369161 ((_ is Nil!27672) (list!11021 (left!21012 acc!252))))))

(assert (=> d!688486 (= (++!6831 (list!11021 (left!21012 acc!252)) (list!11021 (right!21342 acc!252))) lt!861312)))

(declare-fun b!2325242 () Bool)

(declare-fun res!993131 () Bool)

(assert (=> b!2325242 (=> (not res!993131) (not e!1489910))))

(assert (=> b!2325242 (= res!993131 (= (size!21943 lt!861312) (+ (size!21943 (list!11021 (left!21012 acc!252))) (size!21943 (list!11021 (right!21342 acc!252))))))))

(declare-fun b!2325240 () Bool)

(assert (=> b!2325240 (= e!1489911 (list!11021 (right!21342 acc!252)))))

(assert (= (and d!688486 c!369161) b!2325240))

(assert (= (and d!688486 (not c!369161)) b!2325241))

(assert (= (and d!688486 res!993130) b!2325242))

(assert (= (and b!2325242 res!993131) b!2325243))

(assert (=> b!2325241 m!2755299))

(declare-fun m!2756097 () Bool)

(assert (=> b!2325241 m!2756097))

(declare-fun m!2756099 () Bool)

(assert (=> d!688486 m!2756099))

(assert (=> d!688486 m!2755297))

(declare-fun m!2756101 () Bool)

(assert (=> d!688486 m!2756101))

(assert (=> d!688486 m!2755299))

(declare-fun m!2756103 () Bool)

(assert (=> d!688486 m!2756103))

(declare-fun m!2756105 () Bool)

(assert (=> b!2325242 m!2756105))

(assert (=> b!2325242 m!2755297))

(declare-fun m!2756107 () Bool)

(assert (=> b!2325242 m!2756107))

(assert (=> b!2325242 m!2755299))

(declare-fun m!2756109 () Bool)

(assert (=> b!2325242 m!2756109))

(assert (=> b!2324719 d!688486))

(declare-fun b!2325246 () Bool)

(declare-fun e!1489913 () List!27770)

(assert (=> b!2325246 (= e!1489913 (list!11020 (xs!12051 (left!21012 acc!252))))))

(declare-fun b!2325247 () Bool)

(assert (=> b!2325247 (= e!1489913 (++!6831 (list!11021 (left!21012 (left!21012 acc!252))) (list!11021 (right!21342 (left!21012 acc!252)))))))

(declare-fun d!688488 () Bool)

(declare-fun c!369162 () Bool)

(assert (=> d!688488 (= c!369162 ((_ is Empty!9077) (left!21012 acc!252)))))

(declare-fun e!1489912 () List!27770)

(assert (=> d!688488 (= (list!11021 (left!21012 acc!252)) e!1489912)))

(declare-fun b!2325245 () Bool)

(assert (=> b!2325245 (= e!1489912 e!1489913)))

(declare-fun c!369163 () Bool)

(assert (=> b!2325245 (= c!369163 ((_ is Leaf!13325) (left!21012 acc!252)))))

(declare-fun b!2325244 () Bool)

(assert (=> b!2325244 (= e!1489912 Nil!27672)))

(assert (= (and d!688488 c!369162) b!2325244))

(assert (= (and d!688488 (not c!369162)) b!2325245))

(assert (= (and b!2325245 c!369163) b!2325246))

(assert (= (and b!2325245 (not c!369163)) b!2325247))

(declare-fun m!2756111 () Bool)

(assert (=> b!2325246 m!2756111))

(declare-fun m!2756113 () Bool)

(assert (=> b!2325247 m!2756113))

(declare-fun m!2756115 () Bool)

(assert (=> b!2325247 m!2756115))

(assert (=> b!2325247 m!2756113))

(assert (=> b!2325247 m!2756115))

(declare-fun m!2756117 () Bool)

(assert (=> b!2325247 m!2756117))

(assert (=> b!2324719 d!688488))

(declare-fun b!2325250 () Bool)

(declare-fun e!1489915 () List!27770)

(assert (=> b!2325250 (= e!1489915 (list!11020 (xs!12051 (right!21342 acc!252))))))

(declare-fun b!2325251 () Bool)

(assert (=> b!2325251 (= e!1489915 (++!6831 (list!11021 (left!21012 (right!21342 acc!252))) (list!11021 (right!21342 (right!21342 acc!252)))))))

(declare-fun d!688490 () Bool)

(declare-fun c!369164 () Bool)

(assert (=> d!688490 (= c!369164 ((_ is Empty!9077) (right!21342 acc!252)))))

(declare-fun e!1489914 () List!27770)

(assert (=> d!688490 (= (list!11021 (right!21342 acc!252)) e!1489914)))

(declare-fun b!2325249 () Bool)

(assert (=> b!2325249 (= e!1489914 e!1489915)))

(declare-fun c!369165 () Bool)

(assert (=> b!2325249 (= c!369165 ((_ is Leaf!13325) (right!21342 acc!252)))))

(declare-fun b!2325248 () Bool)

(assert (=> b!2325248 (= e!1489914 Nil!27672)))

(assert (= (and d!688490 c!369164) b!2325248))

(assert (= (and d!688490 (not c!369164)) b!2325249))

(assert (= (and b!2325249 c!369165) b!2325250))

(assert (= (and b!2325249 (not c!369165)) b!2325251))

(assert (=> b!2325250 m!2755891))

(assert (=> b!2325251 m!2755565))

(assert (=> b!2325251 m!2755573))

(assert (=> b!2325251 m!2755565))

(assert (=> b!2325251 m!2755573))

(declare-fun m!2756119 () Bool)

(assert (=> b!2325251 m!2756119))

(assert (=> b!2324719 d!688490))

(declare-fun b!2325252 () Bool)

(declare-fun res!993133 () Bool)

(declare-fun e!1489916 () Bool)

(assert (=> b!2325252 (=> (not res!993133) (not e!1489916))))

(assert (=> b!2325252 (= res!993133 (isBalanced!2771 (right!21342 lt!861208)))))

(declare-fun b!2325253 () Bool)

(declare-fun res!993135 () Bool)

(assert (=> b!2325253 (=> (not res!993135) (not e!1489916))))

(assert (=> b!2325253 (= res!993135 (<= (- (height!1336 (left!21012 lt!861208)) (height!1336 (right!21342 lt!861208))) 1))))

(declare-fun b!2325255 () Bool)

(declare-fun e!1489917 () Bool)

(assert (=> b!2325255 (= e!1489917 e!1489916)))

(declare-fun res!993137 () Bool)

(assert (=> b!2325255 (=> (not res!993137) (not e!1489916))))

(assert (=> b!2325255 (= res!993137 (<= (- 1) (- (height!1336 (left!21012 lt!861208)) (height!1336 (right!21342 lt!861208)))))))

(declare-fun b!2325256 () Bool)

(declare-fun res!993134 () Bool)

(assert (=> b!2325256 (=> (not res!993134) (not e!1489916))))

(assert (=> b!2325256 (= res!993134 (isBalanced!2771 (left!21012 lt!861208)))))

(declare-fun b!2325257 () Bool)

(assert (=> b!2325257 (= e!1489916 (not (isEmpty!15804 (right!21342 lt!861208))))))

(declare-fun d!688492 () Bool)

(declare-fun res!993136 () Bool)

(assert (=> d!688492 (=> res!993136 e!1489917)))

(assert (=> d!688492 (= res!993136 (not ((_ is Node!9077) lt!861208)))))

(assert (=> d!688492 (= (isBalanced!2771 lt!861208) e!1489917)))

(declare-fun b!2325254 () Bool)

(declare-fun res!993132 () Bool)

(assert (=> b!2325254 (=> (not res!993132) (not e!1489916))))

(assert (=> b!2325254 (= res!993132 (not (isEmpty!15804 (left!21012 lt!861208))))))

(assert (= (and d!688492 (not res!993136)) b!2325255))

(assert (= (and b!2325255 res!993137) b!2325253))

(assert (= (and b!2325253 res!993135) b!2325256))

(assert (= (and b!2325256 res!993134) b!2325252))

(assert (= (and b!2325252 res!993133) b!2325254))

(assert (= (and b!2325254 res!993132) b!2325257))

(declare-fun m!2756121 () Bool)

(assert (=> b!2325254 m!2756121))

(declare-fun m!2756123 () Bool)

(assert (=> b!2325257 m!2756123))

(declare-fun m!2756125 () Bool)

(assert (=> b!2325256 m!2756125))

(declare-fun m!2756127 () Bool)

(assert (=> b!2325253 m!2756127))

(declare-fun m!2756129 () Bool)

(assert (=> b!2325253 m!2756129))

(declare-fun m!2756131 () Bool)

(assert (=> b!2325252 m!2756131))

(assert (=> b!2325255 m!2756127))

(assert (=> b!2325255 m!2756129))

(assert (=> d!688204 d!688492))

(assert (=> d!688204 d!688154))

(declare-fun b!2325260 () Bool)

(declare-fun res!993141 () Bool)

(declare-fun e!1489919 () Bool)

(assert (=> b!2325260 (=> (not res!993141) (not e!1489919))))

(assert (=> b!2325260 (= res!993141 (isBalanced!2771 (right!21342 (++!6832 acc!252 lt!861061))))))

(declare-fun b!2325261 () Bool)

(declare-fun res!993143 () Bool)

(assert (=> b!2325261 (=> (not res!993143) (not e!1489919))))

(assert (=> b!2325261 (= res!993143 (<= (- (height!1336 (left!21012 (++!6832 acc!252 lt!861061))) (height!1336 (right!21342 (++!6832 acc!252 lt!861061)))) 1))))

(declare-fun b!2325263 () Bool)

(declare-fun e!1489920 () Bool)

(assert (=> b!2325263 (= e!1489920 e!1489919)))

(declare-fun res!993145 () Bool)

(assert (=> b!2325263 (=> (not res!993145) (not e!1489919))))

(assert (=> b!2325263 (= res!993145 (<= (- 1) (- (height!1336 (left!21012 (++!6832 acc!252 lt!861061))) (height!1336 (right!21342 (++!6832 acc!252 lt!861061))))))))

(declare-fun b!2325264 () Bool)

(declare-fun res!993142 () Bool)

(assert (=> b!2325264 (=> (not res!993142) (not e!1489919))))

(assert (=> b!2325264 (= res!993142 (isBalanced!2771 (left!21012 (++!6832 acc!252 lt!861061))))))

(declare-fun b!2325265 () Bool)

(assert (=> b!2325265 (= e!1489919 (not (isEmpty!15804 (right!21342 (++!6832 acc!252 lt!861061)))))))

(declare-fun d!688496 () Bool)

(declare-fun res!993144 () Bool)

(assert (=> d!688496 (=> res!993144 e!1489920)))

(assert (=> d!688496 (= res!993144 (not ((_ is Node!9077) (++!6832 acc!252 lt!861061))))))

(assert (=> d!688496 (= (isBalanced!2771 (++!6832 acc!252 lt!861061)) e!1489920)))

(declare-fun b!2325262 () Bool)

(declare-fun res!993140 () Bool)

(assert (=> b!2325262 (=> (not res!993140) (not e!1489919))))

(assert (=> b!2325262 (= res!993140 (not (isEmpty!15804 (left!21012 (++!6832 acc!252 lt!861061)))))))

(assert (= (and d!688496 (not res!993144)) b!2325263))

(assert (= (and b!2325263 res!993145) b!2325261))

(assert (= (and b!2325261 res!993143) b!2325264))

(assert (= (and b!2325264 res!993142) b!2325260))

(assert (= (and b!2325260 res!993141) b!2325262))

(assert (= (and b!2325262 res!993140) b!2325265))

(declare-fun m!2756139 () Bool)

(assert (=> b!2325262 m!2756139))

(declare-fun m!2756141 () Bool)

(assert (=> b!2325265 m!2756141))

(declare-fun m!2756143 () Bool)

(assert (=> b!2325264 m!2756143))

(declare-fun m!2756145 () Bool)

(assert (=> b!2325261 m!2756145))

(declare-fun m!2756147 () Bool)

(assert (=> b!2325261 m!2756147))

(declare-fun m!2756149 () Bool)

(assert (=> b!2325260 m!2756149))

(assert (=> b!2325263 m!2756145))

(assert (=> b!2325263 m!2756147))

(assert (=> d!688204 d!688496))

(declare-fun d!688502 () Bool)

(declare-fun c!369166 () Bool)

(assert (=> d!688502 (= c!369166 ((_ is Node!9077) (left!21012 (left!21012 acc!252))))))

(declare-fun e!1489922 () Bool)

(assert (=> d!688502 (= (inv!37661 (left!21012 (left!21012 acc!252))) e!1489922)))

(declare-fun b!2325267 () Bool)

(assert (=> b!2325267 (= e!1489922 (inv!37665 (left!21012 (left!21012 acc!252))))))

(declare-fun b!2325268 () Bool)

(declare-fun e!1489923 () Bool)

(assert (=> b!2325268 (= e!1489922 e!1489923)))

(declare-fun res!993146 () Bool)

(assert (=> b!2325268 (= res!993146 (not ((_ is Leaf!13325) (left!21012 (left!21012 acc!252)))))))

(assert (=> b!2325268 (=> res!993146 e!1489923)))

(declare-fun b!2325269 () Bool)

(assert (=> b!2325269 (= e!1489923 (inv!37666 (left!21012 (left!21012 acc!252))))))

(assert (= (and d!688502 c!369166) b!2325267))

(assert (= (and d!688502 (not c!369166)) b!2325268))

(assert (= (and b!2325268 (not res!993146)) b!2325269))

(declare-fun m!2756155 () Bool)

(assert (=> b!2325267 m!2756155))

(declare-fun m!2756157 () Bool)

(assert (=> b!2325269 m!2756157))

(assert (=> b!2324733 d!688502))

(declare-fun d!688508 () Bool)

(declare-fun c!369169 () Bool)

(assert (=> d!688508 (= c!369169 ((_ is Node!9077) (right!21342 (left!21012 acc!252))))))

(declare-fun e!1489926 () Bool)

(assert (=> d!688508 (= (inv!37661 (right!21342 (left!21012 acc!252))) e!1489926)))

(declare-fun b!2325274 () Bool)

(assert (=> b!2325274 (= e!1489926 (inv!37665 (right!21342 (left!21012 acc!252))))))

(declare-fun b!2325275 () Bool)

(declare-fun e!1489927 () Bool)

(assert (=> b!2325275 (= e!1489926 e!1489927)))

(declare-fun res!993147 () Bool)

(assert (=> b!2325275 (= res!993147 (not ((_ is Leaf!13325) (right!21342 (left!21012 acc!252)))))))

(assert (=> b!2325275 (=> res!993147 e!1489927)))

(declare-fun b!2325276 () Bool)

(assert (=> b!2325276 (= e!1489927 (inv!37666 (right!21342 (left!21012 acc!252))))))

(assert (= (and d!688508 c!369169) b!2325274))

(assert (= (and d!688508 (not c!369169)) b!2325275))

(assert (= (and b!2325275 (not res!993147)) b!2325276))

(declare-fun m!2756163 () Bool)

(assert (=> b!2325274 m!2756163))

(declare-fun m!2756165 () Bool)

(assert (=> b!2325276 m!2756165))

(assert (=> b!2324733 d!688508))

(assert (=> d!688164 d!688174))

(assert (=> d!688164 d!688180))

(declare-fun d!688512 () Bool)

(assert (=> d!688512 (= (++!6831 (++!6831 lt!861059 lt!861064) lt!861068) (++!6831 lt!861059 (++!6831 lt!861064 lt!861068)))))

(assert (=> d!688512 true))

(declare-fun _$15!491 () Unit!40522)

(assert (=> d!688512 (= (choose!13613 lt!861059 lt!861064 lt!861068) _$15!491)))

(declare-fun bs!459233 () Bool)

(assert (= bs!459233 d!688512))

(assert (=> bs!459233 m!2754769))

(assert (=> bs!459233 m!2754769))

(assert (=> bs!459233 m!2754771))

(assert (=> bs!459233 m!2754809))

(assert (=> bs!459233 m!2754809))

(assert (=> bs!459233 m!2755041))

(assert (=> d!688164 d!688512))

(declare-fun b!2325290 () Bool)

(declare-fun e!1489934 () List!27770)

(assert (=> b!2325290 (= e!1489934 (Cons!27672 (h!33073 lt!861059) (++!6831 (t!207464 lt!861059) (++!6831 lt!861064 lt!861068))))))

(declare-fun e!1489933 () Bool)

(declare-fun lt!861315 () List!27770)

(declare-fun b!2325292 () Bool)

(assert (=> b!2325292 (= e!1489933 (or (not (= (++!6831 lt!861064 lt!861068) Nil!27672)) (= lt!861315 lt!861059)))))

(declare-fun d!688520 () Bool)

(assert (=> d!688520 e!1489933))

(declare-fun res!993154 () Bool)

(assert (=> d!688520 (=> (not res!993154) (not e!1489933))))

(assert (=> d!688520 (= res!993154 (= (content!3748 lt!861315) ((_ map or) (content!3748 lt!861059) (content!3748 (++!6831 lt!861064 lt!861068)))))))

(assert (=> d!688520 (= lt!861315 e!1489934)))

(declare-fun c!369173 () Bool)

(assert (=> d!688520 (= c!369173 ((_ is Nil!27672) lt!861059))))

(assert (=> d!688520 (= (++!6831 lt!861059 (++!6831 lt!861064 lt!861068)) lt!861315)))

(declare-fun b!2325291 () Bool)

(declare-fun res!993155 () Bool)

(assert (=> b!2325291 (=> (not res!993155) (not e!1489933))))

(assert (=> b!2325291 (= res!993155 (= (size!21943 lt!861315) (+ (size!21943 lt!861059) (size!21943 (++!6831 lt!861064 lt!861068)))))))

(declare-fun b!2325289 () Bool)

(assert (=> b!2325289 (= e!1489934 (++!6831 lt!861064 lt!861068))))

(assert (= (and d!688520 c!369173) b!2325289))

(assert (= (and d!688520 (not c!369173)) b!2325290))

(assert (= (and d!688520 res!993154) b!2325291))

(assert (= (and b!2325291 res!993155) b!2325292))

(assert (=> b!2325290 m!2754809))

(declare-fun m!2756201 () Bool)

(assert (=> b!2325290 m!2756201))

(declare-fun m!2756205 () Bool)

(assert (=> d!688520 m!2756205))

(assert (=> d!688520 m!2754895))

(assert (=> d!688520 m!2754809))

(declare-fun m!2756207 () Bool)

(assert (=> d!688520 m!2756207))

(declare-fun m!2756209 () Bool)

(assert (=> b!2325291 m!2756209))

(assert (=> b!2325291 m!2754901))

(assert (=> b!2325291 m!2754809))

(declare-fun m!2756211 () Bool)

(assert (=> b!2325291 m!2756211))

(assert (=> d!688164 d!688520))

(assert (=> d!688164 d!688160))

(declare-fun d!688524 () Bool)

(assert (=> d!688524 (= (height!1336 (ite c!368981 (right!21342 acc!252) lt!861175)) (ite ((_ is Empty!9077) (ite c!368981 (right!21342 acc!252) lt!861175)) 0 (ite ((_ is Leaf!13325) (ite c!368981 (right!21342 acc!252) lt!861175)) 1 (cheight!9288 (ite c!368981 (right!21342 acc!252) lt!861175)))))))

(assert (=> bm!138838 d!688524))

(declare-fun d!688526 () Bool)

(declare-fun c!369184 () Bool)

(assert (=> d!688526 (= c!369184 ((_ is Nil!27672) lt!861102))))

(declare-fun e!1489948 () (InoxSet T!43936))

(assert (=> d!688526 (= (content!3748 lt!861102) e!1489948)))

(declare-fun b!2325321 () Bool)

(assert (=> b!2325321 (= e!1489948 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325322 () Bool)

(assert (=> b!2325322 (= e!1489948 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861102) true) (content!3748 (t!207464 lt!861102))))))

(assert (= (and d!688526 c!369184) b!2325321))

(assert (= (and d!688526 (not c!369184)) b!2325322))

(declare-fun m!2756217 () Bool)

(assert (=> b!2325322 m!2756217))

(declare-fun m!2756219 () Bool)

(assert (=> b!2325322 m!2756219))

(assert (=> d!688160 d!688526))

(declare-fun d!688530 () Bool)

(declare-fun c!369185 () Bool)

(assert (=> d!688530 (= c!369185 ((_ is Nil!27672) lt!861064))))

(declare-fun e!1489949 () (InoxSet T!43936))

(assert (=> d!688530 (= (content!3748 lt!861064) e!1489949)))

(declare-fun b!2325323 () Bool)

(assert (=> b!2325323 (= e!1489949 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325324 () Bool)

(assert (=> b!2325324 (= e!1489949 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861064) true) (content!3748 (t!207464 lt!861064))))))

(assert (= (and d!688530 c!369185) b!2325323))

(assert (= (and d!688530 (not c!369185)) b!2325324))

(declare-fun m!2756221 () Bool)

(assert (=> b!2325324 m!2756221))

(declare-fun m!2756223 () Bool)

(assert (=> b!2325324 m!2756223))

(assert (=> d!688160 d!688530))

(declare-fun d!688532 () Bool)

(declare-fun c!369186 () Bool)

(assert (=> d!688532 (= c!369186 ((_ is Nil!27672) lt!861068))))

(declare-fun e!1489950 () (InoxSet T!43936))

(assert (=> d!688532 (= (content!3748 lt!861068) e!1489950)))

(declare-fun b!2325325 () Bool)

(assert (=> b!2325325 (= e!1489950 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325326 () Bool)

(assert (=> b!2325326 (= e!1489950 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861068) true) (content!3748 (t!207464 lt!861068))))))

(assert (= (and d!688532 c!369186) b!2325325))

(assert (= (and d!688532 (not c!369186)) b!2325326))

(declare-fun m!2756225 () Bool)

(assert (=> b!2325326 m!2756225))

(declare-fun m!2756227 () Bool)

(assert (=> b!2325326 m!2756227))

(assert (=> d!688160 d!688532))

(declare-fun d!688534 () Bool)

(assert (=> d!688534 (= (height!1336 lt!861061) (ite ((_ is Empty!9077) lt!861061) 0 (ite ((_ is Leaf!13325) lt!861061) 1 (cheight!9288 lt!861061))))))

(assert (=> b!2324694 d!688534))

(declare-fun d!688536 () Bool)

(assert (=> d!688536 (= (height!1336 acc!252) (ite ((_ is Empty!9077) acc!252) 0 (ite ((_ is Leaf!13325) acc!252) 1 (cheight!9288 acc!252))))))

(assert (=> b!2324694 d!688536))

(declare-fun d!688538 () Bool)

(declare-fun c!369187 () Bool)

(assert (=> d!688538 (= c!369187 ((_ is Nil!27672) lt!861108))))

(declare-fun e!1489951 () (InoxSet T!43936))

(assert (=> d!688538 (= (content!3748 lt!861108) e!1489951)))

(declare-fun b!2325327 () Bool)

(assert (=> b!2325327 (= e!1489951 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325328 () Bool)

(assert (=> b!2325328 (= e!1489951 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861108) true) (content!3748 (t!207464 lt!861108))))))

(assert (= (and d!688538 c!369187) b!2325327))

(assert (= (and d!688538 (not c!369187)) b!2325328))

(declare-fun m!2756229 () Bool)

(assert (=> b!2325328 m!2756229))

(declare-fun m!2756231 () Bool)

(assert (=> b!2325328 m!2756231))

(assert (=> d!688180 d!688538))

(declare-fun d!688540 () Bool)

(declare-fun c!369188 () Bool)

(assert (=> d!688540 (= c!369188 ((_ is Nil!27672) lt!861059))))

(declare-fun e!1489952 () (InoxSet T!43936))

(assert (=> d!688540 (= (content!3748 lt!861059) e!1489952)))

(declare-fun b!2325329 () Bool)

(assert (=> b!2325329 (= e!1489952 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325330 () Bool)

(assert (=> b!2325330 (= e!1489952 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861059) true) (content!3748 (t!207464 lt!861059))))))

(assert (= (and d!688540 c!369188) b!2325329))

(assert (= (and d!688540 (not c!369188)) b!2325330))

(declare-fun m!2756233 () Bool)

(assert (=> b!2325330 m!2756233))

(declare-fun m!2756235 () Bool)

(assert (=> b!2325330 m!2756235))

(assert (=> d!688180 d!688540))

(assert (=> d!688180 d!688530))

(declare-fun d!688542 () Bool)

(declare-fun c!369189 () Bool)

(assert (=> d!688542 (= c!369189 ((_ is Node!9077) (left!21012 (right!21342 acc!252))))))

(declare-fun e!1489953 () Bool)

(assert (=> d!688542 (= (inv!37661 (left!21012 (right!21342 acc!252))) e!1489953)))

(declare-fun b!2325331 () Bool)

(assert (=> b!2325331 (= e!1489953 (inv!37665 (left!21012 (right!21342 acc!252))))))

(declare-fun b!2325332 () Bool)

(declare-fun e!1489954 () Bool)

(assert (=> b!2325332 (= e!1489953 e!1489954)))

(declare-fun res!993164 () Bool)

(assert (=> b!2325332 (= res!993164 (not ((_ is Leaf!13325) (left!21012 (right!21342 acc!252)))))))

(assert (=> b!2325332 (=> res!993164 e!1489954)))

(declare-fun b!2325333 () Bool)

(assert (=> b!2325333 (= e!1489954 (inv!37666 (left!21012 (right!21342 acc!252))))))

(assert (= (and d!688542 c!369189) b!2325331))

(assert (= (and d!688542 (not c!369189)) b!2325332))

(assert (= (and b!2325332 (not res!993164)) b!2325333))

(declare-fun m!2756245 () Bool)

(assert (=> b!2325331 m!2756245))

(declare-fun m!2756249 () Bool)

(assert (=> b!2325333 m!2756249))

(assert (=> b!2324736 d!688542))

(declare-fun d!688544 () Bool)

(declare-fun c!369190 () Bool)

(assert (=> d!688544 (= c!369190 ((_ is Node!9077) (right!21342 (right!21342 acc!252))))))

(declare-fun e!1489955 () Bool)

(assert (=> d!688544 (= (inv!37661 (right!21342 (right!21342 acc!252))) e!1489955)))

(declare-fun b!2325334 () Bool)

(assert (=> b!2325334 (= e!1489955 (inv!37665 (right!21342 (right!21342 acc!252))))))

(declare-fun b!2325335 () Bool)

(declare-fun e!1489956 () Bool)

(assert (=> b!2325335 (= e!1489955 e!1489956)))

(declare-fun res!993165 () Bool)

(assert (=> b!2325335 (= res!993165 (not ((_ is Leaf!13325) (right!21342 (right!21342 acc!252)))))))

(assert (=> b!2325335 (=> res!993165 e!1489956)))

(declare-fun b!2325336 () Bool)

(assert (=> b!2325336 (= e!1489956 (inv!37666 (right!21342 (right!21342 acc!252))))))

(assert (= (and d!688544 c!369190) b!2325334))

(assert (= (and d!688544 (not c!369190)) b!2325335))

(assert (= (and b!2325335 (not res!993165)) b!2325336))

(declare-fun m!2756253 () Bool)

(assert (=> b!2325334 m!2756253))

(declare-fun m!2756255 () Bool)

(assert (=> b!2325336 m!2756255))

(assert (=> b!2324736 d!688544))

(declare-fun d!688546 () Bool)

(declare-fun lt!861320 () Bool)

(assert (=> d!688546 (= lt!861320 (isEmpty!15805 (list!11021 (right!21342 acc!252))))))

(assert (=> d!688546 (= lt!861320 (= (size!21946 (right!21342 acc!252)) 0))))

(assert (=> d!688546 (= (isEmpty!15804 (right!21342 acc!252)) lt!861320)))

(declare-fun bs!459234 () Bool)

(assert (= bs!459234 d!688546))

(assert (=> bs!459234 m!2755299))

(assert (=> bs!459234 m!2755299))

(declare-fun m!2756259 () Bool)

(assert (=> bs!459234 m!2756259))

(declare-fun m!2756263 () Bool)

(assert (=> bs!459234 m!2756263))

(assert (=> b!2324395 d!688546))

(declare-fun lt!861321 () Conc!9077)

(declare-fun d!688548 () Bool)

(assert (=> d!688548 (= (list!11021 lt!861321) (++!6831 (list!11021 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175)))) (list!11021 (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))))))))

(declare-fun e!1489958 () Conc!9077)

(assert (=> d!688548 (= lt!861321 e!1489958)))

(declare-fun c!369191 () Bool)

(assert (=> d!688548 (= c!369191 (= (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175))) Empty!9077))))

(assert (=> d!688548 (= (<>!218 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175))) (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839)))) lt!861321)))

(declare-fun b!2325338 () Bool)

(declare-fun e!1489957 () Conc!9077)

(assert (=> b!2325338 (= e!1489958 e!1489957)))

(declare-fun c!369192 () Bool)

(assert (=> b!2325338 (= c!369192 (= (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))) Empty!9077))))

(declare-fun b!2325337 () Bool)

(assert (=> b!2325337 (= e!1489958 (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))))))

(declare-fun b!2325339 () Bool)

(assert (=> b!2325339 (= e!1489957 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175))))))

(declare-fun b!2325340 () Bool)

(assert (=> b!2325340 (= e!1489957 (Node!9077 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175))) (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))) (+ (size!21946 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175)))) (size!21946 (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))))) (+ (max!0 (height!1336 (ite c!368983 acc!252 (ite c!368981 (ite (or c!368984 c!368978) (left!21012 acc!252) call!138846) (ite c!368979 call!138839 lt!861175)))) (height!1336 (ite c!368983 lt!861061 (ite c!368981 (ite c!368984 call!138833 (ite c!368978 call!138846 lt!861176)) (ite c!368979 (right!21342 lt!861061) call!138839))))) 1)))))

(assert (= (and d!688548 c!369191) b!2325337))

(assert (= (and d!688548 (not c!369191)) b!2325338))

(assert (= (and b!2325338 c!369192) b!2325339))

(assert (= (and b!2325338 (not c!369192)) b!2325340))

(declare-fun m!2756283 () Bool)

(assert (=> d!688548 m!2756283))

(declare-fun m!2756285 () Bool)

(assert (=> d!688548 m!2756285))

(declare-fun m!2756287 () Bool)

(assert (=> d!688548 m!2756287))

(assert (=> d!688548 m!2756285))

(assert (=> d!688548 m!2756287))

(declare-fun m!2756289 () Bool)

(assert (=> d!688548 m!2756289))

(declare-fun m!2756295 () Bool)

(assert (=> b!2325340 m!2756295))

(declare-fun m!2756297 () Bool)

(assert (=> b!2325340 m!2756297))

(declare-fun m!2756299 () Bool)

(assert (=> b!2325340 m!2756299))

(assert (=> b!2325340 m!2756295))

(declare-fun m!2756301 () Bool)

(assert (=> b!2325340 m!2756301))

(declare-fun m!2756303 () Bool)

(assert (=> b!2325340 m!2756303))

(assert (=> b!2325340 m!2756299))

(assert (=> bm!138836 d!688548))

(declare-fun d!688556 () Bool)

(declare-fun c!369193 () Bool)

(assert (=> d!688556 (= c!369193 ((_ is Nil!27672) lt!861107))))

(declare-fun e!1489959 () (InoxSet T!43936))

(assert (=> d!688556 (= (content!3748 lt!861107) e!1489959)))

(declare-fun b!2325341 () Bool)

(assert (=> b!2325341 (= e!1489959 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325342 () Bool)

(assert (=> b!2325342 (= e!1489959 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861107) true) (content!3748 (t!207464 lt!861107))))))

(assert (= (and d!688556 c!369193) b!2325341))

(assert (= (and d!688556 (not c!369193)) b!2325342))

(declare-fun m!2756305 () Bool)

(assert (=> b!2325342 m!2756305))

(declare-fun m!2756307 () Bool)

(assert (=> b!2325342 m!2756307))

(assert (=> d!688174 d!688556))

(declare-fun d!688558 () Bool)

(declare-fun c!369194 () Bool)

(assert (=> d!688558 (= c!369194 ((_ is Nil!27672) (++!6831 lt!861059 lt!861064)))))

(declare-fun e!1489960 () (InoxSet T!43936))

(assert (=> d!688558 (= (content!3748 (++!6831 lt!861059 lt!861064)) e!1489960)))

(declare-fun b!2325343 () Bool)

(assert (=> b!2325343 (= e!1489960 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325344 () Bool)

(assert (=> b!2325344 (= e!1489960 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 (++!6831 lt!861059 lt!861064)) true) (content!3748 (t!207464 (++!6831 lt!861059 lt!861064)))))))

(assert (= (and d!688558 c!369194) b!2325343))

(assert (= (and d!688558 (not c!369194)) b!2325344))

(declare-fun m!2756309 () Bool)

(assert (=> b!2325344 m!2756309))

(declare-fun m!2756311 () Bool)

(assert (=> b!2325344 m!2756311))

(assert (=> d!688174 d!688558))

(assert (=> d!688174 d!688532))

(declare-fun d!688560 () Bool)

(assert (=> d!688560 (= (height!1336 (ite c!368981 acc!252 (left!21012 lt!861061))) (ite ((_ is Empty!9077) (ite c!368981 acc!252 (left!21012 lt!861061))) 0 (ite ((_ is Leaf!13325) (ite c!368981 acc!252 (left!21012 lt!861061))) 1 (cheight!9288 (ite c!368981 acc!252 (left!21012 lt!861061))))))))

(assert (=> bm!138828 d!688560))

(declare-fun b!2325345 () Bool)

(declare-fun res!993167 () Bool)

(declare-fun e!1489961 () Bool)

(assert (=> b!2325345 (=> (not res!993167) (not e!1489961))))

(assert (=> b!2325345 (= res!993167 (isBalanced!2771 (right!21342 lt!861174)))))

(declare-fun b!2325346 () Bool)

(declare-fun res!993169 () Bool)

(assert (=> b!2325346 (=> (not res!993169) (not e!1489961))))

(assert (=> b!2325346 (= res!993169 (<= (- (height!1336 (left!21012 lt!861174)) (height!1336 (right!21342 lt!861174))) 1))))

(declare-fun b!2325348 () Bool)

(declare-fun e!1489962 () Bool)

(assert (=> b!2325348 (= e!1489962 e!1489961)))

(declare-fun res!993171 () Bool)

(assert (=> b!2325348 (=> (not res!993171) (not e!1489961))))

(assert (=> b!2325348 (= res!993171 (<= (- 1) (- (height!1336 (left!21012 lt!861174)) (height!1336 (right!21342 lt!861174)))))))

(declare-fun b!2325349 () Bool)

(declare-fun res!993168 () Bool)

(assert (=> b!2325349 (=> (not res!993168) (not e!1489961))))

(assert (=> b!2325349 (= res!993168 (isBalanced!2771 (left!21012 lt!861174)))))

(declare-fun b!2325350 () Bool)

(assert (=> b!2325350 (= e!1489961 (not (isEmpty!15804 (right!21342 lt!861174))))))

(declare-fun d!688562 () Bool)

(declare-fun res!993170 () Bool)

(assert (=> d!688562 (=> res!993170 e!1489962)))

(assert (=> d!688562 (= res!993170 (not ((_ is Node!9077) lt!861174)))))

(assert (=> d!688562 (= (isBalanced!2771 lt!861174) e!1489962)))

(declare-fun b!2325347 () Bool)

(declare-fun res!993166 () Bool)

(assert (=> b!2325347 (=> (not res!993166) (not e!1489961))))

(assert (=> b!2325347 (= res!993166 (not (isEmpty!15804 (left!21012 lt!861174))))))

(assert (= (and d!688562 (not res!993170)) b!2325348))

(assert (= (and b!2325348 res!993171) b!2325346))

(assert (= (and b!2325346 res!993169) b!2325349))

(assert (= (and b!2325349 res!993168) b!2325345))

(assert (= (and b!2325345 res!993167) b!2325347))

(assert (= (and b!2325347 res!993166) b!2325350))

(declare-fun m!2756313 () Bool)

(assert (=> b!2325347 m!2756313))

(declare-fun m!2756315 () Bool)

(assert (=> b!2325350 m!2756315))

(declare-fun m!2756317 () Bool)

(assert (=> b!2325349 m!2756317))

(declare-fun m!2756319 () Bool)

(assert (=> b!2325346 m!2756319))

(declare-fun m!2756321 () Bool)

(assert (=> b!2325346 m!2756321))

(declare-fun m!2756323 () Bool)

(assert (=> b!2325345 m!2756323))

(assert (=> b!2325348 m!2756319))

(assert (=> b!2325348 m!2756321))

(assert (=> b!2324679 d!688562))

(declare-fun d!688564 () Bool)

(declare-fun c!369195 () Bool)

(assert (=> d!688564 (= c!369195 ((_ is Nil!27672) lt!861085))))

(declare-fun e!1489963 () (InoxSet T!43936))

(assert (=> d!688564 (= (content!3748 lt!861085) e!1489963)))

(declare-fun b!2325351 () Bool)

(assert (=> b!2325351 (= e!1489963 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325352 () Bool)

(assert (=> b!2325352 (= e!1489963 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861085) true) (content!3748 (t!207464 lt!861085))))))

(assert (= (and d!688564 c!369195) b!2325351))

(assert (= (and d!688564 (not c!369195)) b!2325352))

(declare-fun m!2756325 () Bool)

(assert (=> b!2325352 m!2756325))

(declare-fun m!2756327 () Bool)

(assert (=> b!2325352 m!2756327))

(assert (=> d!688134 d!688564))

(declare-fun d!688566 () Bool)

(declare-fun c!369196 () Bool)

(assert (=> d!688566 (= c!369196 ((_ is Nil!27672) (slice!708 lt!861058 0 512)))))

(declare-fun e!1489964 () (InoxSet T!43936))

(assert (=> d!688566 (= (content!3748 (slice!708 lt!861058 0 512)) e!1489964)))

(declare-fun b!2325353 () Bool)

(assert (=> b!2325353 (= e!1489964 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325354 () Bool)

(assert (=> b!2325354 (= e!1489964 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 (slice!708 lt!861058 0 512)) true) (content!3748 (t!207464 (slice!708 lt!861058 0 512)))))))

(assert (= (and d!688566 c!369196) b!2325353))

(assert (= (and d!688566 (not c!369196)) b!2325354))

(declare-fun m!2756329 () Bool)

(assert (=> b!2325354 m!2756329))

(assert (=> b!2325354 m!2755693))

(assert (=> d!688134 d!688566))

(declare-fun d!688568 () Bool)

(declare-fun c!369197 () Bool)

(assert (=> d!688568 (= c!369197 ((_ is Nil!27672) (slice!708 lt!861058 512 (size!21943 lt!861058))))))

(declare-fun e!1489965 () (InoxSet T!43936))

(assert (=> d!688568 (= (content!3748 (slice!708 lt!861058 512 (size!21943 lt!861058))) e!1489965)))

(declare-fun b!2325355 () Bool)

(assert (=> b!2325355 (= e!1489965 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325356 () Bool)

(assert (=> b!2325356 (= e!1489965 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 (slice!708 lt!861058 512 (size!21943 lt!861058))) true) (content!3748 (t!207464 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(assert (= (and d!688568 c!369197) b!2325355))

(assert (= (and d!688568 (not c!369197)) b!2325356))

(declare-fun m!2756331 () Bool)

(assert (=> b!2325356 m!2756331))

(declare-fun m!2756333 () Bool)

(assert (=> b!2325356 m!2756333))

(assert (=> d!688134 d!688568))

(declare-fun d!688570 () Bool)

(declare-fun lt!861323 () Int)

(assert (=> d!688570 (>= lt!861323 0)))

(declare-fun e!1489966 () Int)

(assert (=> d!688570 (= lt!861323 e!1489966)))

(declare-fun c!369198 () Bool)

(assert (=> d!688570 (= c!369198 ((_ is Nil!27672) (list!11020 arr!18)))))

(assert (=> d!688570 (= (size!21943 (list!11020 arr!18)) lt!861323)))

(declare-fun b!2325357 () Bool)

(assert (=> b!2325357 (= e!1489966 0)))

(declare-fun b!2325358 () Bool)

(assert (=> b!2325358 (= e!1489966 (+ 1 (size!21943 (t!207464 (list!11020 arr!18)))))))

(assert (= (and d!688570 c!369198) b!2325357))

(assert (= (and d!688570 (not c!369198)) b!2325358))

(declare-fun m!2756335 () Bool)

(assert (=> b!2325358 m!2756335))

(assert (=> d!688210 d!688570))

(assert (=> d!688210 d!688138))

(declare-fun d!688572 () Bool)

(declare-fun _$1!10232 () Int)

(assert (=> d!688572 (= _$1!10232 (size!21943 (list!11020 arr!18)))))

(assert (=> d!688572 true))

(assert (=> d!688572 (= (choose!13611 arr!18) _$1!10232)))

(declare-fun bs!459236 () Bool)

(assert (= bs!459236 d!688572))

(assert (=> bs!459236 m!2754797))

(assert (=> bs!459236 m!2754797))

(assert (=> bs!459236 m!2755303))

(assert (=> d!688210 d!688572))

(declare-fun d!688574 () Bool)

(declare-fun res!993172 () Bool)

(declare-fun e!1489967 () Bool)

(assert (=> d!688574 (=> (not res!993172) (not e!1489967))))

(assert (=> d!688574 (= res!993172 (<= (size!21943 (list!11020 (xs!12051 acc!252))) 512))))

(assert (=> d!688574 (= (inv!37666 acc!252) e!1489967)))

(declare-fun b!2325359 () Bool)

(declare-fun res!993173 () Bool)

(assert (=> b!2325359 (=> (not res!993173) (not e!1489967))))

(assert (=> b!2325359 (= res!993173 (= (csize!18385 acc!252) (size!21943 (list!11020 (xs!12051 acc!252)))))))

(declare-fun b!2325360 () Bool)

(assert (=> b!2325360 (= e!1489967 (and (> (csize!18385 acc!252) 0) (<= (csize!18385 acc!252) 512)))))

(assert (= (and d!688574 res!993172) b!2325359))

(assert (= (and b!2325359 res!993173) b!2325360))

(assert (=> d!688574 m!2755295))

(assert (=> d!688574 m!2755295))

(declare-fun m!2756337 () Bool)

(assert (=> d!688574 m!2756337))

(assert (=> b!2325359 m!2755295))

(assert (=> b!2325359 m!2755295))

(assert (=> b!2325359 m!2756337))

(assert (=> b!2324398 d!688574))

(declare-fun d!688576 () Bool)

(declare-fun res!993174 () Bool)

(declare-fun e!1489968 () Bool)

(assert (=> d!688576 (=> (not res!993174) (not e!1489968))))

(assert (=> d!688576 (= res!993174 (= (csize!18384 acc!252) (+ (size!21946 (left!21012 acc!252)) (size!21946 (right!21342 acc!252)))))))

(assert (=> d!688576 (= (inv!37665 acc!252) e!1489968)))

(declare-fun b!2325361 () Bool)

(declare-fun res!993175 () Bool)

(assert (=> b!2325361 (=> (not res!993175) (not e!1489968))))

(assert (=> b!2325361 (= res!993175 (and (not (= (left!21012 acc!252) Empty!9077)) (not (= (right!21342 acc!252) Empty!9077))))))

(declare-fun b!2325362 () Bool)

(declare-fun res!993176 () Bool)

(assert (=> b!2325362 (=> (not res!993176) (not e!1489968))))

(assert (=> b!2325362 (= res!993176 (= (cheight!9288 acc!252) (+ (max!0 (height!1336 (left!21012 acc!252)) (height!1336 (right!21342 acc!252))) 1)))))

(declare-fun b!2325363 () Bool)

(assert (=> b!2325363 (= e!1489968 (<= 0 (cheight!9288 acc!252)))))

(assert (= (and d!688576 res!993174) b!2325361))

(assert (= (and b!2325361 res!993175) b!2325362))

(assert (= (and b!2325362 res!993176) b!2325363))

(assert (=> d!688576 m!2755663))

(assert (=> d!688576 m!2756263))

(assert (=> b!2325362 m!2754867))

(assert (=> b!2325362 m!2754869))

(assert (=> b!2325362 m!2754867))

(assert (=> b!2325362 m!2754869))

(declare-fun m!2756339 () Bool)

(assert (=> b!2325362 m!2756339))

(assert (=> b!2324396 d!688576))

(declare-fun d!688578 () Bool)

(declare-fun res!993177 () Bool)

(declare-fun e!1489969 () Bool)

(assert (=> d!688578 (=> (not res!993177) (not e!1489969))))

(assert (=> d!688578 (= res!993177 (<= (size!21943 (list!11020 (xs!12051 (left!21012 acc!252)))) 512))))

(assert (=> d!688578 (= (inv!37666 (left!21012 acc!252)) e!1489969)))

(declare-fun b!2325364 () Bool)

(declare-fun res!993178 () Bool)

(assert (=> b!2325364 (=> (not res!993178) (not e!1489969))))

(assert (=> b!2325364 (= res!993178 (= (csize!18385 (left!21012 acc!252)) (size!21943 (list!11020 (xs!12051 (left!21012 acc!252))))))))

(declare-fun b!2325365 () Bool)

(assert (=> b!2325365 (= e!1489969 (and (> (csize!18385 (left!21012 acc!252)) 0) (<= (csize!18385 (left!21012 acc!252)) 512)))))

(assert (= (and d!688578 res!993177) b!2325364))

(assert (= (and b!2325364 res!993178) b!2325365))

(assert (=> d!688578 m!2756111))

(assert (=> d!688578 m!2756111))

(declare-fun m!2756341 () Bool)

(assert (=> d!688578 m!2756341))

(assert (=> b!2325364 m!2756111))

(assert (=> b!2325364 m!2756111))

(assert (=> b!2325364 m!2756341))

(assert (=> b!2324350 d!688578))

(declare-fun d!688580 () Bool)

(assert (=> d!688580 (= (height!1336 (left!21012 acc!252)) (ite ((_ is Empty!9077) (left!21012 acc!252)) 0 (ite ((_ is Leaf!13325) (left!21012 acc!252)) 1 (cheight!9288 (left!21012 acc!252)))))))

(assert (=> b!2324393 d!688580))

(declare-fun d!688582 () Bool)

(assert (=> d!688582 (= (height!1336 (right!21342 acc!252)) (ite ((_ is Empty!9077) (right!21342 acc!252)) 0 (ite ((_ is Leaf!13325) (right!21342 acc!252)) 1 (cheight!9288 (right!21342 acc!252)))))))

(assert (=> b!2324393 d!688582))

(declare-fun d!688584 () Bool)

(declare-fun res!993179 () Bool)

(declare-fun e!1489970 () Bool)

(assert (=> d!688584 (=> (not res!993179) (not e!1489970))))

(assert (=> d!688584 (= res!993179 (= (csize!18384 (left!21012 acc!252)) (+ (size!21946 (left!21012 (left!21012 acc!252))) (size!21946 (right!21342 (left!21012 acc!252))))))))

(assert (=> d!688584 (= (inv!37665 (left!21012 acc!252)) e!1489970)))

(declare-fun b!2325366 () Bool)

(declare-fun res!993180 () Bool)

(assert (=> b!2325366 (=> (not res!993180) (not e!1489970))))

(assert (=> b!2325366 (= res!993180 (and (not (= (left!21012 (left!21012 acc!252)) Empty!9077)) (not (= (right!21342 (left!21012 acc!252)) Empty!9077))))))

(declare-fun b!2325367 () Bool)

(declare-fun res!993181 () Bool)

(assert (=> b!2325367 (=> (not res!993181) (not e!1489970))))

(assert (=> b!2325367 (= res!993181 (= (cheight!9288 (left!21012 acc!252)) (+ (max!0 (height!1336 (left!21012 (left!21012 acc!252))) (height!1336 (right!21342 (left!21012 acc!252)))) 1)))))

(declare-fun b!2325368 () Bool)

(assert (=> b!2325368 (= e!1489970 (<= 0 (cheight!9288 (left!21012 acc!252))))))

(assert (= (and d!688584 res!993179) b!2325366))

(assert (= (and b!2325366 res!993180) b!2325367))

(assert (= (and b!2325367 res!993181) b!2325368))

(declare-fun m!2756343 () Bool)

(assert (=> d!688584 m!2756343))

(declare-fun m!2756345 () Bool)

(assert (=> d!688584 m!2756345))

(assert (=> b!2325367 m!2755377))

(assert (=> b!2325367 m!2755379))

(assert (=> b!2325367 m!2755377))

(assert (=> b!2325367 m!2755379))

(declare-fun m!2756347 () Bool)

(assert (=> b!2325367 m!2756347))

(assert (=> b!2324348 d!688584))

(declare-fun d!688586 () Bool)

(declare-fun lt!861324 () Int)

(assert (=> d!688586 (>= lt!861324 0)))

(declare-fun e!1489971 () Int)

(assert (=> d!688586 (= lt!861324 e!1489971)))

(declare-fun c!369199 () Bool)

(assert (=> d!688586 (= c!369199 ((_ is Nil!27672) lt!861085))))

(assert (=> d!688586 (= (size!21943 lt!861085) lt!861324)))

(declare-fun b!2325369 () Bool)

(assert (=> b!2325369 (= e!1489971 0)))

(declare-fun b!2325370 () Bool)

(assert (=> b!2325370 (= e!1489971 (+ 1 (size!21943 (t!207464 lt!861085))))))

(assert (= (and d!688586 c!369199) b!2325369))

(assert (= (and d!688586 (not c!369199)) b!2325370))

(declare-fun m!2756349 () Bool)

(assert (=> b!2325370 m!2756349))

(assert (=> b!2324440 d!688586))

(declare-fun d!688588 () Bool)

(declare-fun lt!861325 () Int)

(assert (=> d!688588 (>= lt!861325 0)))

(declare-fun e!1489972 () Int)

(assert (=> d!688588 (= lt!861325 e!1489972)))

(declare-fun c!369200 () Bool)

(assert (=> d!688588 (= c!369200 ((_ is Nil!27672) (slice!708 lt!861058 0 512)))))

(assert (=> d!688588 (= (size!21943 (slice!708 lt!861058 0 512)) lt!861325)))

(declare-fun b!2325371 () Bool)

(assert (=> b!2325371 (= e!1489972 0)))

(declare-fun b!2325372 () Bool)

(assert (=> b!2325372 (= e!1489972 (+ 1 (size!21943 (t!207464 (slice!708 lt!861058 0 512)))))))

(assert (= (and d!688588 c!369200) b!2325371))

(assert (= (and d!688588 (not c!369200)) b!2325372))

(assert (=> b!2325372 m!2755697))

(assert (=> b!2324440 d!688588))

(declare-fun d!688590 () Bool)

(declare-fun lt!861326 () Int)

(assert (=> d!688590 (>= lt!861326 0)))

(declare-fun e!1489973 () Int)

(assert (=> d!688590 (= lt!861326 e!1489973)))

(declare-fun c!369201 () Bool)

(assert (=> d!688590 (= c!369201 ((_ is Nil!27672) (slice!708 lt!861058 512 (size!21943 lt!861058))))))

(assert (=> d!688590 (= (size!21943 (slice!708 lt!861058 512 (size!21943 lt!861058))) lt!861326)))

(declare-fun b!2325373 () Bool)

(assert (=> b!2325373 (= e!1489973 0)))

(declare-fun b!2325374 () Bool)

(assert (=> b!2325374 (= e!1489973 (+ 1 (size!21943 (t!207464 (slice!708 lt!861058 512 (size!21943 lt!861058))))))))

(assert (= (and d!688590 c!369201) b!2325373))

(assert (= (and d!688590 (not c!369201)) b!2325374))

(declare-fun m!2756351 () Bool)

(assert (=> b!2325374 m!2756351))

(assert (=> b!2324440 d!688590))

(assert (=> b!2324391 d!688580))

(assert (=> b!2324391 d!688582))

(declare-fun d!688592 () Bool)

(declare-fun lt!861327 () Int)

(assert (=> d!688592 (>= lt!861327 0)))

(declare-fun e!1489974 () Int)

(assert (=> d!688592 (= lt!861327 e!1489974)))

(declare-fun c!369202 () Bool)

(assert (=> d!688592 (= c!369202 ((_ is Nil!27672) (innerList!9137 arr!18)))))

(assert (=> d!688592 (= (size!21943 (innerList!9137 arr!18)) lt!861327)))

(declare-fun b!2325375 () Bool)

(assert (=> b!2325375 (= e!1489974 0)))

(declare-fun b!2325376 () Bool)

(assert (=> b!2325376 (= e!1489974 (+ 1 (size!21943 (t!207464 (innerList!9137 arr!18)))))))

(assert (= (and d!688592 c!369202) b!2325375))

(assert (= (and d!688592 (not c!369202)) b!2325376))

(declare-fun m!2756353 () Bool)

(assert (=> b!2325376 m!2756353))

(assert (=> d!688114 d!688592))

(declare-fun b!2325377 () Bool)

(declare-fun res!993183 () Bool)

(declare-fun e!1489975 () Bool)

(assert (=> b!2325377 (=> (not res!993183) (not e!1489975))))

(assert (=> b!2325377 (= res!993183 (isBalanced!2771 (right!21342 (left!21012 lt!861063))))))

(declare-fun b!2325378 () Bool)

(declare-fun res!993185 () Bool)

(assert (=> b!2325378 (=> (not res!993185) (not e!1489975))))

(assert (=> b!2325378 (= res!993185 (<= (- (height!1336 (left!21012 (left!21012 lt!861063))) (height!1336 (right!21342 (left!21012 lt!861063)))) 1))))

(declare-fun b!2325380 () Bool)

(declare-fun e!1489976 () Bool)

(assert (=> b!2325380 (= e!1489976 e!1489975)))

(declare-fun res!993187 () Bool)

(assert (=> b!2325380 (=> (not res!993187) (not e!1489975))))

(assert (=> b!2325380 (= res!993187 (<= (- 1) (- (height!1336 (left!21012 (left!21012 lt!861063))) (height!1336 (right!21342 (left!21012 lt!861063))))))))

(declare-fun b!2325381 () Bool)

(declare-fun res!993184 () Bool)

(assert (=> b!2325381 (=> (not res!993184) (not e!1489975))))

(assert (=> b!2325381 (= res!993184 (isBalanced!2771 (left!21012 (left!21012 lt!861063))))))

(declare-fun b!2325382 () Bool)

(assert (=> b!2325382 (= e!1489975 (not (isEmpty!15804 (right!21342 (left!21012 lt!861063)))))))

(declare-fun d!688594 () Bool)

(declare-fun res!993186 () Bool)

(assert (=> d!688594 (=> res!993186 e!1489976)))

(assert (=> d!688594 (= res!993186 (not ((_ is Node!9077) (left!21012 lt!861063))))))

(assert (=> d!688594 (= (isBalanced!2771 (left!21012 lt!861063)) e!1489976)))

(declare-fun b!2325379 () Bool)

(declare-fun res!993182 () Bool)

(assert (=> b!2325379 (=> (not res!993182) (not e!1489975))))

(assert (=> b!2325379 (= res!993182 (not (isEmpty!15804 (left!21012 (left!21012 lt!861063)))))))

(assert (= (and d!688594 (not res!993186)) b!2325380))

(assert (= (and b!2325380 res!993187) b!2325378))

(assert (= (and b!2325378 res!993185) b!2325381))

(assert (= (and b!2325381 res!993184) b!2325377))

(assert (= (and b!2325377 res!993183) b!2325379))

(assert (= (and b!2325379 res!993182) b!2325382))

(declare-fun m!2756355 () Bool)

(assert (=> b!2325379 m!2756355))

(declare-fun m!2756357 () Bool)

(assert (=> b!2325382 m!2756357))

(declare-fun m!2756359 () Bool)

(assert (=> b!2325381 m!2756359))

(declare-fun m!2756361 () Bool)

(assert (=> b!2325378 m!2756361))

(declare-fun m!2756363 () Bool)

(assert (=> b!2325378 m!2756363))

(declare-fun m!2756365 () Bool)

(assert (=> b!2325377 m!2756365))

(assert (=> b!2325380 m!2756361))

(assert (=> b!2325380 m!2756363))

(assert (=> b!2324388 d!688594))

(declare-fun b!2325384 () Bool)

(declare-fun e!1489978 () List!27770)

(assert (=> b!2325384 (= e!1489978 (Cons!27672 (h!33073 (t!207464 lt!861059)) (++!6831 (t!207464 (t!207464 lt!861059)) lt!861058)))))

(declare-fun lt!861328 () List!27770)

(declare-fun b!2325386 () Bool)

(declare-fun e!1489977 () Bool)

(assert (=> b!2325386 (= e!1489977 (or (not (= lt!861058 Nil!27672)) (= lt!861328 (t!207464 lt!861059))))))

(declare-fun d!688596 () Bool)

(assert (=> d!688596 e!1489977))

(declare-fun res!993188 () Bool)

(assert (=> d!688596 (=> (not res!993188) (not e!1489977))))

(assert (=> d!688596 (= res!993188 (= (content!3748 lt!861328) ((_ map or) (content!3748 (t!207464 lt!861059)) (content!3748 lt!861058))))))

(assert (=> d!688596 (= lt!861328 e!1489978)))

(declare-fun c!369203 () Bool)

(assert (=> d!688596 (= c!369203 ((_ is Nil!27672) (t!207464 lt!861059)))))

(assert (=> d!688596 (= (++!6831 (t!207464 lt!861059) lt!861058) lt!861328)))

(declare-fun b!2325385 () Bool)

(declare-fun res!993189 () Bool)

(assert (=> b!2325385 (=> (not res!993189) (not e!1489977))))

(assert (=> b!2325385 (= res!993189 (= (size!21943 lt!861328) (+ (size!21943 (t!207464 lt!861059)) (size!21943 lt!861058))))))

(declare-fun b!2325383 () Bool)

(assert (=> b!2325383 (= e!1489978 lt!861058)))

(assert (= (and d!688596 c!369203) b!2325383))

(assert (= (and d!688596 (not c!369203)) b!2325384))

(assert (= (and d!688596 res!993188) b!2325385))

(assert (= (and b!2325385 res!993189) b!2325386))

(declare-fun m!2756367 () Bool)

(assert (=> b!2325384 m!2756367))

(declare-fun m!2756369 () Bool)

(assert (=> d!688596 m!2756369))

(assert (=> d!688596 m!2756235))

(assert (=> d!688596 m!2754897))

(declare-fun m!2756371 () Bool)

(assert (=> b!2325385 m!2756371))

(assert (=> b!2325385 m!2755801))

(assert (=> b!2325385 m!2754791))

(assert (=> b!2324417 d!688596))

(declare-fun d!688598 () Bool)

(assert (=> d!688598 (= (height!1336 (ite c!368981 (left!21012 acc!252) lt!861061)) (ite ((_ is Empty!9077) (ite c!368981 (left!21012 acc!252) lt!861061)) 0 (ite ((_ is Leaf!13325) (ite c!368981 (left!21012 acc!252) lt!861061)) 1 (cheight!9288 (ite c!368981 (left!21012 acc!252) lt!861061)))))))

(assert (=> bm!138835 d!688598))

(declare-fun b!2325388 () Bool)

(declare-fun e!1489982 () List!27770)

(assert (=> b!2325388 (= e!1489982 (Cons!27672 (h!33073 (t!207464 lt!861064)) (++!6831 (t!207464 (t!207464 lt!861064)) lt!861068)))))

(declare-fun b!2325390 () Bool)

(declare-fun lt!861329 () List!27770)

(declare-fun e!1489981 () Bool)

(assert (=> b!2325390 (= e!1489981 (or (not (= lt!861068 Nil!27672)) (= lt!861329 (t!207464 lt!861064))))))

(declare-fun d!688600 () Bool)

(assert (=> d!688600 e!1489981))

(declare-fun res!993190 () Bool)

(assert (=> d!688600 (=> (not res!993190) (not e!1489981))))

(assert (=> d!688600 (= res!993190 (= (content!3748 lt!861329) ((_ map or) (content!3748 (t!207464 lt!861064)) (content!3748 lt!861068))))))

(assert (=> d!688600 (= lt!861329 e!1489982)))

(declare-fun c!369204 () Bool)

(assert (=> d!688600 (= c!369204 ((_ is Nil!27672) (t!207464 lt!861064)))))

(assert (=> d!688600 (= (++!6831 (t!207464 lt!861064) lt!861068) lt!861329)))

(declare-fun b!2325389 () Bool)

(declare-fun res!993193 () Bool)

(assert (=> b!2325389 (=> (not res!993193) (not e!1489981))))

(assert (=> b!2325389 (= res!993193 (= (size!21943 lt!861329) (+ (size!21943 (t!207464 lt!861064)) (size!21943 lt!861068))))))

(declare-fun b!2325387 () Bool)

(assert (=> b!2325387 (= e!1489982 lt!861068)))

(assert (= (and d!688600 c!369204) b!2325387))

(assert (= (and d!688600 (not c!369204)) b!2325388))

(assert (= (and d!688600 res!993190) b!2325389))

(assert (= (and b!2325389 res!993193) b!2325390))

(declare-fun m!2756373 () Bool)

(assert (=> b!2325388 m!2756373))

(declare-fun m!2756375 () Bool)

(assert (=> d!688600 m!2756375))

(assert (=> d!688600 m!2756223))

(assert (=> d!688600 m!2755017))

(declare-fun m!2756377 () Bool)

(assert (=> b!2325389 m!2756377))

(assert (=> b!2325389 m!2755715))

(assert (=> b!2325389 m!2755023))

(assert (=> b!2324471 d!688600))

(declare-fun b!2325402 () Bool)

(declare-fun e!1489992 () List!27770)

(assert (=> b!2325402 (= e!1489992 (Cons!27672 (h!33073 (list!11021 (left!21012 lt!861063))) (++!6831 (t!207464 (list!11021 (left!21012 lt!861063))) (list!11021 (right!21342 lt!861063)))))))

(declare-fun b!2325404 () Bool)

(declare-fun e!1489991 () Bool)

(declare-fun lt!861330 () List!27770)

(assert (=> b!2325404 (= e!1489991 (or (not (= (list!11021 (right!21342 lt!861063)) Nil!27672)) (= lt!861330 (list!11021 (left!21012 lt!861063)))))))

(declare-fun d!688602 () Bool)

(assert (=> d!688602 e!1489991))

(declare-fun res!993202 () Bool)

(assert (=> d!688602 (=> (not res!993202) (not e!1489991))))

(assert (=> d!688602 (= res!993202 (= (content!3748 lt!861330) ((_ map or) (content!3748 (list!11021 (left!21012 lt!861063))) (content!3748 (list!11021 (right!21342 lt!861063))))))))

(assert (=> d!688602 (= lt!861330 e!1489992)))

(declare-fun c!369205 () Bool)

(assert (=> d!688602 (= c!369205 ((_ is Nil!27672) (list!11021 (left!21012 lt!861063))))))

(assert (=> d!688602 (= (++!6831 (list!11021 (left!21012 lt!861063)) (list!11021 (right!21342 lt!861063))) lt!861330)))

(declare-fun b!2325403 () Bool)

(declare-fun res!993203 () Bool)

(assert (=> b!2325403 (=> (not res!993203) (not e!1489991))))

(assert (=> b!2325403 (= res!993203 (= (size!21943 lt!861330) (+ (size!21943 (list!11021 (left!21012 lt!861063))) (size!21943 (list!11021 (right!21342 lt!861063))))))))

(declare-fun b!2325401 () Bool)

(assert (=> b!2325401 (= e!1489992 (list!11021 (right!21342 lt!861063)))))

(assert (= (and d!688602 c!369205) b!2325401))

(assert (= (and d!688602 (not c!369205)) b!2325402))

(assert (= (and d!688602 res!993202) b!2325403))

(assert (= (and b!2325403 res!993203) b!2325404))

(assert (=> b!2325402 m!2755051))

(declare-fun m!2756379 () Bool)

(assert (=> b!2325402 m!2756379))

(declare-fun m!2756381 () Bool)

(assert (=> d!688602 m!2756381))

(assert (=> d!688602 m!2755049))

(declare-fun m!2756383 () Bool)

(assert (=> d!688602 m!2756383))

(assert (=> d!688602 m!2755051))

(declare-fun m!2756385 () Bool)

(assert (=> d!688602 m!2756385))

(declare-fun m!2756387 () Bool)

(assert (=> b!2325403 m!2756387))

(assert (=> b!2325403 m!2755049))

(declare-fun m!2756389 () Bool)

(assert (=> b!2325403 m!2756389))

(assert (=> b!2325403 m!2755051))

(declare-fun m!2756391 () Bool)

(assert (=> b!2325403 m!2756391))

(assert (=> b!2324491 d!688602))

(declare-fun b!2325415 () Bool)

(declare-fun e!1490002 () List!27770)

(assert (=> b!2325415 (= e!1490002 (list!11020 (xs!12051 (left!21012 lt!861063))))))

(declare-fun b!2325416 () Bool)

(assert (=> b!2325416 (= e!1490002 (++!6831 (list!11021 (left!21012 (left!21012 lt!861063))) (list!11021 (right!21342 (left!21012 lt!861063)))))))

(declare-fun d!688604 () Bool)

(declare-fun c!369206 () Bool)

(assert (=> d!688604 (= c!369206 ((_ is Empty!9077) (left!21012 lt!861063)))))

(declare-fun e!1490001 () List!27770)

(assert (=> d!688604 (= (list!11021 (left!21012 lt!861063)) e!1490001)))

(declare-fun b!2325414 () Bool)

(assert (=> b!2325414 (= e!1490001 e!1490002)))

(declare-fun c!369207 () Bool)

(assert (=> b!2325414 (= c!369207 ((_ is Leaf!13325) (left!21012 lt!861063)))))

(declare-fun b!2325413 () Bool)

(assert (=> b!2325413 (= e!1490001 Nil!27672)))

(assert (= (and d!688604 c!369206) b!2325413))

(assert (= (and d!688604 (not c!369206)) b!2325414))

(assert (= (and b!2325414 c!369207) b!2325415))

(assert (= (and b!2325414 (not c!369207)) b!2325416))

(declare-fun m!2756393 () Bool)

(assert (=> b!2325415 m!2756393))

(declare-fun m!2756395 () Bool)

(assert (=> b!2325416 m!2756395))

(declare-fun m!2756397 () Bool)

(assert (=> b!2325416 m!2756397))

(assert (=> b!2325416 m!2756395))

(assert (=> b!2325416 m!2756397))

(declare-fun m!2756399 () Bool)

(assert (=> b!2325416 m!2756399))

(assert (=> b!2324491 d!688604))

(declare-fun b!2325419 () Bool)

(declare-fun e!1490004 () List!27770)

(assert (=> b!2325419 (= e!1490004 (list!11020 (xs!12051 (right!21342 lt!861063))))))

(declare-fun b!2325420 () Bool)

(assert (=> b!2325420 (= e!1490004 (++!6831 (list!11021 (left!21012 (right!21342 lt!861063))) (list!11021 (right!21342 (right!21342 lt!861063)))))))

(declare-fun d!688606 () Bool)

(declare-fun c!369208 () Bool)

(assert (=> d!688606 (= c!369208 ((_ is Empty!9077) (right!21342 lt!861063)))))

(declare-fun e!1490003 () List!27770)

(assert (=> d!688606 (= (list!11021 (right!21342 lt!861063)) e!1490003)))

(declare-fun b!2325418 () Bool)

(assert (=> b!2325418 (= e!1490003 e!1490004)))

(declare-fun c!369209 () Bool)

(assert (=> b!2325418 (= c!369209 ((_ is Leaf!13325) (right!21342 lt!861063)))))

(declare-fun b!2325417 () Bool)

(assert (=> b!2325417 (= e!1490003 Nil!27672)))

(assert (= (and d!688606 c!369208) b!2325417))

(assert (= (and d!688606 (not c!369208)) b!2325418))

(assert (= (and b!2325418 c!369209) b!2325419))

(assert (= (and b!2325418 (not c!369209)) b!2325420))

(declare-fun m!2756401 () Bool)

(assert (=> b!2325419 m!2756401))

(declare-fun m!2756403 () Bool)

(assert (=> b!2325420 m!2756403))

(declare-fun m!2756405 () Bool)

(assert (=> b!2325420 m!2756405))

(assert (=> b!2325420 m!2756403))

(assert (=> b!2325420 m!2756405))

(declare-fun m!2756407 () Bool)

(assert (=> b!2325420 m!2756407))

(assert (=> b!2324491 d!688606))

(declare-fun b!2325421 () Bool)

(declare-fun res!993212 () Bool)

(declare-fun e!1490013 () Bool)

(assert (=> b!2325421 (=> (not res!993212) (not e!1490013))))

(declare-fun lt!861331 () Conc!9077)

(assert (=> b!2325421 (= res!993212 (isBalanced!2771 lt!861331))))

(declare-fun b!2325422 () Bool)

(declare-fun e!1490010 () Conc!9077)

(declare-fun call!138904 () Conc!9077)

(assert (=> b!2325422 (= e!1490010 call!138904)))

(declare-fun c!369213 () Bool)

(declare-fun call!138899 () Int)

(declare-fun bm!138892 () Bool)

(assert (=> bm!138892 (= call!138899 (height!1336 (ite c!369213 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) (left!21012 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))

(declare-fun b!2325423 () Bool)

(declare-fun e!1490005 () Conc!9077)

(declare-fun e!1490008 () Conc!9077)

(assert (=> b!2325423 (= e!1490005 e!1490008)))

(declare-fun lt!861332 () Conc!9077)

(declare-fun call!138908 () Conc!9077)

(assert (=> b!2325423 (= lt!861332 call!138908)))

(declare-fun c!369211 () Bool)

(declare-fun call!138909 () Int)

(declare-fun call!138898 () Int)

(assert (=> b!2325423 (= c!369211 (= call!138909 (- call!138898 3)))))

(declare-fun b!2325424 () Bool)

(declare-fun e!1490007 () Conc!9077)

(declare-fun e!1490009 () Conc!9077)

(assert (=> b!2325424 (= e!1490007 e!1490009)))

(declare-fun c!369212 () Bool)

(assert (=> b!2325424 (= c!369212 (= (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))) Empty!9077))))

(declare-fun b!2325425 () Bool)

(declare-fun e!1490014 () Conc!9077)

(assert (=> b!2325425 (= e!1490014 e!1490010)))

(declare-fun lt!861333 () Conc!9077)

(declare-fun call!138897 () Conc!9077)

(assert (=> b!2325425 (= lt!861333 call!138897)))

(declare-fun c!369210 () Bool)

(declare-fun call!138907 () Int)

(assert (=> b!2325425 (= c!369210 (= call!138907 (- call!138899 3)))))

(declare-fun bm!138893 () Bool)

(declare-fun call!138902 () Conc!9077)

(assert (=> bm!138893 (= call!138897 call!138902)))

(declare-fun b!2325427 () Bool)

(declare-fun c!369214 () Bool)

(assert (=> b!2325427 (= c!369214 (>= call!138907 call!138899))))

(declare-fun e!1490006 () Conc!9077)

(assert (=> b!2325427 (= e!1490006 e!1490005)))

(declare-fun bm!138894 () Bool)

(declare-fun call!138911 () Conc!9077)

(declare-fun call!138906 () Conc!9077)

(assert (=> bm!138894 (= call!138911 call!138906)))

(declare-fun bm!138895 () Bool)

(declare-fun call!138905 () Conc!9077)

(assert (=> bm!138895 (= call!138906 call!138905)))

(declare-fun bm!138896 () Bool)

(declare-fun call!138910 () Conc!9077)

(declare-fun call!138912 () Conc!9077)

(assert (=> bm!138896 (= call!138910 call!138912)))

(declare-fun bm!138897 () Bool)

(declare-fun c!369216 () Bool)

(assert (=> bm!138897 (= call!138902 (++!6832 (ite c!369213 (ite c!369216 (right!21342 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (right!21342 (right!21342 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)))) (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (ite c!369213 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))) (ite c!369214 (left!21012 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))) (left!21012 (left!21012 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))))

(declare-fun bm!138898 () Bool)

(declare-fun call!138901 () Conc!9077)

(assert (=> bm!138898 (= call!138901 call!138912)))

(declare-fun b!2325428 () Bool)

(declare-fun e!1490011 () Bool)

(assert (=> b!2325428 (= e!1490011 (isBalanced!2771 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))

(declare-fun bm!138899 () Bool)

(assert (=> bm!138899 (= call!138898 (height!1336 (ite c!369213 (left!21012 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))))))))

(declare-fun b!2325429 () Bool)

(assert (=> b!2325429 (= e!1490013 (= (list!11021 lt!861331) (++!6831 (list!11021 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (list!11021 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))

(declare-fun b!2325430 () Bool)

(assert (=> b!2325430 (= e!1490008 call!138911)))

(declare-fun b!2325426 () Bool)

(declare-fun res!993213 () Bool)

(assert (=> b!2325426 (=> (not res!993213) (not e!1490013))))

(assert (=> b!2325426 (= res!993213 (<= (height!1336 lt!861331) (+ (max!0 (height!1336 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (height!1336 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))))) 1)))))

(declare-fun d!688608 () Bool)

(assert (=> d!688608 e!1490013))

(declare-fun res!993214 () Bool)

(assert (=> d!688608 (=> (not res!993214) (not e!1490013))))

(assert (=> d!688608 (= res!993214 (appendAssocInst!612 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))

(assert (=> d!688608 (= lt!861331 e!1490007)))

(declare-fun c!369217 () Bool)

(assert (=> d!688608 (= c!369217 (= (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) Empty!9077))))

(assert (=> d!688608 e!1490011))

(declare-fun res!993216 () Bool)

(assert (=> d!688608 (=> (not res!993216) (not e!1490011))))

(assert (=> d!688608 (= res!993216 (isBalanced!2771 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)))))

(assert (=> d!688608 (= (++!6832 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))) lt!861331)))

(declare-fun b!2325431 () Bool)

(assert (=> b!2325431 (= e!1490010 call!138904)))

(declare-fun b!2325432 () Bool)

(declare-fun call!138900 () Conc!9077)

(assert (=> b!2325432 (= e!1490014 call!138900)))

(declare-fun b!2325433 () Bool)

(assert (=> b!2325433 (= e!1490005 call!138901)))

(declare-fun b!2325434 () Bool)

(assert (=> b!2325434 (= e!1490007 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))))))

(declare-fun b!2325435 () Bool)

(declare-fun e!1490012 () Conc!9077)

(assert (=> b!2325435 (= e!1490012 e!1490006)))

(declare-fun lt!861334 () Int)

(assert (=> b!2325435 (= c!369213 (< lt!861334 (- 1)))))

(declare-fun bm!138900 () Bool)

(declare-fun c!369215 () Bool)

(declare-fun call!138903 () Conc!9077)

(assert (=> bm!138900 (= call!138905 (<>!218 (ite c!369215 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252) (ite c!369213 (ite (or c!369216 c!369210) (left!21012 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) call!138910) (ite c!369211 call!138903 lt!861332))) (ite c!369215 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))) (ite c!369213 (ite c!369216 call!138897 (ite c!369210 call!138910 lt!861333)) (ite c!369211 (right!21342 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))) call!138903)))))))

(declare-fun b!2325436 () Bool)

(assert (=> b!2325436 (= c!369215 (and (<= (- 1) lt!861334) (<= lt!861334 1)))))

(assert (=> b!2325436 (= lt!861334 (- (height!1336 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))) (height!1336 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252))))))

(assert (=> b!2325436 (= e!1490009 e!1490012)))

(declare-fun b!2325437 () Bool)

(declare-fun res!993215 () Bool)

(assert (=> b!2325437 (=> (not res!993215) (not e!1490013))))

(assert (=> b!2325437 (= res!993215 (>= (height!1336 lt!861331) (max!0 (height!1336 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) (height!1336 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))

(declare-fun b!2325438 () Bool)

(assert (=> b!2325438 (= c!369216 (>= call!138898 call!138909))))

(assert (=> b!2325438 (= e!1490006 e!1490014)))

(declare-fun bm!138901 () Bool)

(assert (=> bm!138901 (= call!138908 call!138902)))

(declare-fun bm!138902 () Bool)

(assert (=> bm!138902 (= call!138909 (height!1336 (ite c!369213 (right!21342 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)) lt!861332)))))

(declare-fun b!2325439 () Bool)

(assert (=> b!2325439 (= e!1490009 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252))))

(declare-fun bm!138903 () Bool)

(assert (=> bm!138903 (= call!138904 call!138900)))

(declare-fun bm!138904 () Bool)

(assert (=> bm!138904 (= call!138907 (height!1336 (ite c!369213 lt!861333 (right!21342 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))

(declare-fun b!2325440 () Bool)

(assert (=> b!2325440 (= e!1490012 call!138905)))

(declare-fun b!2325441 () Bool)

(assert (=> b!2325441 (= e!1490008 call!138911)))

(declare-fun bm!138905 () Bool)

(assert (=> bm!138905 (= call!138912 (<>!218 (ite c!369213 (ite c!369210 (left!21012 (right!21342 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252))) (left!21012 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252))) (ite c!369214 call!138908 (ite c!369211 lt!861332 (right!21342 (left!21012 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))) (ite c!369213 (ite c!369210 lt!861333 (left!21012 (right!21342 (ite c!368981 (ite c!368984 (right!21342 acc!252) (right!21342 (right!21342 acc!252))) acc!252)))) (ite c!369214 (right!21342 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))) (ite c!369211 (right!21342 (left!21012 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061)))))) (right!21342 (ite c!368981 lt!861061 (ite c!368982 (left!21012 lt!861061) (left!21012 (left!21012 lt!861061))))))))))))

(declare-fun bm!138906 () Bool)

(assert (=> bm!138906 (= call!138903 call!138901)))

(declare-fun bm!138907 () Bool)

(assert (=> bm!138907 (= call!138900 call!138906)))

(assert (= (and d!688608 res!993216) b!2325428))

(assert (= (and d!688608 c!369217) b!2325434))

(assert (= (and d!688608 (not c!369217)) b!2325424))

(assert (= (and b!2325424 c!369212) b!2325439))

(assert (= (and b!2325424 (not c!369212)) b!2325436))

(assert (= (and b!2325436 c!369215) b!2325440))

(assert (= (and b!2325436 (not c!369215)) b!2325435))

(assert (= (and b!2325435 c!369213) b!2325438))

(assert (= (and b!2325435 (not c!369213)) b!2325427))

(assert (= (and b!2325438 c!369216) b!2325432))

(assert (= (and b!2325438 (not c!369216)) b!2325425))

(assert (= (and b!2325425 c!369210) b!2325422))

(assert (= (and b!2325425 (not c!369210)) b!2325431))

(assert (= (or b!2325422 b!2325431) bm!138896))

(assert (= (or b!2325422 b!2325431) bm!138903))

(assert (= (or b!2325432 b!2325425) bm!138893))

(assert (= (or b!2325432 bm!138903) bm!138907))

(assert (= (and b!2325427 c!369214) b!2325433))

(assert (= (and b!2325427 (not c!369214)) b!2325423))

(assert (= (and b!2325423 c!369211) b!2325430))

(assert (= (and b!2325423 (not c!369211)) b!2325441))

(assert (= (or b!2325430 b!2325441) bm!138906))

(assert (= (or b!2325430 b!2325441) bm!138894))

(assert (= (or b!2325433 b!2325423) bm!138901))

(assert (= (or b!2325433 bm!138906) bm!138898))

(assert (= (or b!2325438 b!2325423) bm!138902))

(assert (= (or b!2325438 b!2325423) bm!138899))

(assert (= (or bm!138893 bm!138901) bm!138897))

(assert (= (or bm!138907 bm!138894) bm!138895))

(assert (= (or bm!138896 bm!138898) bm!138905))

(assert (= (or b!2325425 b!2325427) bm!138892))

(assert (= (or b!2325425 b!2325427) bm!138904))

(assert (= (or b!2325440 bm!138895) bm!138900))

(assert (= (and d!688608 res!993214) b!2325421))

(assert (= (and b!2325421 res!993212) b!2325426))

(assert (= (and b!2325426 res!993213) b!2325437))

(assert (= (and b!2325437 res!993215) b!2325429))

(declare-fun m!2756409 () Bool)

(assert (=> bm!138904 m!2756409))

(declare-fun m!2756411 () Bool)

(assert (=> bm!138899 m!2756411))

(declare-fun m!2756413 () Bool)

(assert (=> b!2325426 m!2756413))

(declare-fun m!2756415 () Bool)

(assert (=> b!2325426 m!2756415))

(declare-fun m!2756417 () Bool)

(assert (=> b!2325426 m!2756417))

(assert (=> b!2325426 m!2756415))

(assert (=> b!2325426 m!2756417))

(declare-fun m!2756419 () Bool)

(assert (=> b!2325426 m!2756419))

(declare-fun m!2756421 () Bool)

(assert (=> bm!138902 m!2756421))

(declare-fun m!2756423 () Bool)

(assert (=> b!2325421 m!2756423))

(declare-fun m!2756425 () Bool)

(assert (=> bm!138892 m!2756425))

(declare-fun m!2756427 () Bool)

(assert (=> bm!138900 m!2756427))

(assert (=> b!2325436 m!2756417))

(assert (=> b!2325436 m!2756415))

(declare-fun m!2756429 () Bool)

(assert (=> b!2325428 m!2756429))

(declare-fun m!2756431 () Bool)

(assert (=> bm!138905 m!2756431))

(declare-fun m!2756433 () Bool)

(assert (=> b!2325429 m!2756433))

(declare-fun m!2756435 () Bool)

(assert (=> b!2325429 m!2756435))

(declare-fun m!2756437 () Bool)

(assert (=> b!2325429 m!2756437))

(assert (=> b!2325429 m!2756435))

(assert (=> b!2325429 m!2756437))

(declare-fun m!2756439 () Bool)

(assert (=> b!2325429 m!2756439))

(declare-fun m!2756441 () Bool)

(assert (=> d!688608 m!2756441))

(declare-fun m!2756443 () Bool)

(assert (=> d!688608 m!2756443))

(declare-fun m!2756445 () Bool)

(assert (=> bm!138897 m!2756445))

(assert (=> b!2325437 m!2756413))

(assert (=> b!2325437 m!2756415))

(assert (=> b!2325437 m!2756417))

(assert (=> b!2325437 m!2756415))

(assert (=> b!2325437 m!2756417))

(assert (=> b!2325437 m!2756419))

(assert (=> bm!138833 d!688608))

(assert (=> b!2324385 d!688398))

(assert (=> b!2324385 d!688400))

(declare-fun d!688610 () Bool)

(assert (=> d!688610 (= (list!11020 (xs!12051 lt!861063)) (innerList!9137 (xs!12051 lt!861063)))))

(assert (=> b!2324490 d!688610))

(declare-fun d!688612 () Bool)

(assert (=> d!688612 (= (list!11020 (xs!12051 acc!252)) (innerList!9137 (xs!12051 acc!252)))))

(assert (=> b!2324718 d!688612))

(declare-fun d!688614 () Bool)

(declare-fun c!369218 () Bool)

(assert (=> d!688614 (= c!369218 ((_ is Nil!27672) lt!861077))))

(declare-fun e!1490024 () (InoxSet T!43936))

(assert (=> d!688614 (= (content!3748 lt!861077) e!1490024)))

(declare-fun b!2325451 () Bool)

(assert (=> b!2325451 (= e!1490024 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325452 () Bool)

(assert (=> b!2325452 (= e!1490024 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861077) true) (content!3748 (t!207464 lt!861077))))))

(assert (= (and d!688614 c!369218) b!2325451))

(assert (= (and d!688614 (not c!369218)) b!2325452))

(declare-fun m!2756447 () Bool)

(assert (=> b!2325452 m!2756447))

(declare-fun m!2756449 () Bool)

(assert (=> b!2325452 m!2756449))

(assert (=> d!688116 d!688614))

(assert (=> d!688116 d!688540))

(declare-fun d!688616 () Bool)

(declare-fun c!369219 () Bool)

(assert (=> d!688616 (= c!369219 ((_ is Nil!27672) lt!861058))))

(declare-fun e!1490025 () (InoxSet T!43936))

(assert (=> d!688616 (= (content!3748 lt!861058) e!1490025)))

(declare-fun b!2325453 () Bool)

(assert (=> b!2325453 (= e!1490025 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325454 () Bool)

(assert (=> b!2325454 (= e!1490025 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861058) true) (content!3748 (t!207464 lt!861058))))))

(assert (= (and d!688616 c!369219) b!2325453))

(assert (= (and d!688616 (not c!369219)) b!2325454))

(declare-fun m!2756451 () Bool)

(assert (=> b!2325454 m!2756451))

(declare-fun m!2756453 () Bool)

(assert (=> b!2325454 m!2756453))

(assert (=> d!688116 d!688616))

(declare-fun b!2325456 () Bool)

(declare-fun e!1490027 () List!27770)

(assert (=> b!2325456 (= e!1490027 (Cons!27672 (h!33073 (t!207464 lt!861059)) (++!6831 (t!207464 (t!207464 lt!861059)) lt!861057)))))

(declare-fun b!2325458 () Bool)

(declare-fun lt!861335 () List!27770)

(declare-fun e!1490026 () Bool)

(assert (=> b!2325458 (= e!1490026 (or (not (= lt!861057 Nil!27672)) (= lt!861335 (t!207464 lt!861059))))))

(declare-fun d!688618 () Bool)

(assert (=> d!688618 e!1490026))

(declare-fun res!993226 () Bool)

(assert (=> d!688618 (=> (not res!993226) (not e!1490026))))

(assert (=> d!688618 (= res!993226 (= (content!3748 lt!861335) ((_ map or) (content!3748 (t!207464 lt!861059)) (content!3748 lt!861057))))))

(assert (=> d!688618 (= lt!861335 e!1490027)))

(declare-fun c!369220 () Bool)

(assert (=> d!688618 (= c!369220 ((_ is Nil!27672) (t!207464 lt!861059)))))

(assert (=> d!688618 (= (++!6831 (t!207464 lt!861059) lt!861057) lt!861335)))

(declare-fun b!2325457 () Bool)

(declare-fun res!993227 () Bool)

(assert (=> b!2325457 (=> (not res!993227) (not e!1490026))))

(assert (=> b!2325457 (= res!993227 (= (size!21943 lt!861335) (+ (size!21943 (t!207464 lt!861059)) (size!21943 lt!861057))))))

(declare-fun b!2325455 () Bool)

(assert (=> b!2325455 (= e!1490027 lt!861057)))

(assert (= (and d!688618 c!369220) b!2325455))

(assert (= (and d!688618 (not c!369220)) b!2325456))

(assert (= (and d!688618 res!993226) b!2325457))

(assert (= (and b!2325457 res!993227) b!2325458))

(declare-fun m!2756455 () Bool)

(assert (=> b!2325456 m!2756455))

(declare-fun m!2756457 () Bool)

(assert (=> d!688618 m!2756457))

(assert (=> d!688618 m!2756235))

(assert (=> d!688618 m!2755001))

(declare-fun m!2756459 () Bool)

(assert (=> b!2325457 m!2756459))

(assert (=> b!2325457 m!2755801))

(assert (=> b!2325457 m!2755007))

(assert (=> b!2324467 d!688618))

(declare-fun b!2325460 () Bool)

(declare-fun e!1490029 () List!27770)

(assert (=> b!2325460 (= e!1490029 (Cons!27672 (h!33073 (t!207464 lt!861059)) (++!6831 (t!207464 (t!207464 lt!861059)) lt!861064)))))

(declare-fun lt!861336 () List!27770)

(declare-fun e!1490028 () Bool)

(declare-fun b!2325462 () Bool)

(assert (=> b!2325462 (= e!1490028 (or (not (= lt!861064 Nil!27672)) (= lt!861336 (t!207464 lt!861059))))))

(declare-fun d!688620 () Bool)

(assert (=> d!688620 e!1490028))

(declare-fun res!993228 () Bool)

(assert (=> d!688620 (=> (not res!993228) (not e!1490028))))

(assert (=> d!688620 (= res!993228 (= (content!3748 lt!861336) ((_ map or) (content!3748 (t!207464 lt!861059)) (content!3748 lt!861064))))))

(assert (=> d!688620 (= lt!861336 e!1490029)))

(declare-fun c!369221 () Bool)

(assert (=> d!688620 (= c!369221 ((_ is Nil!27672) (t!207464 lt!861059)))))

(assert (=> d!688620 (= (++!6831 (t!207464 lt!861059) lt!861064) lt!861336)))

(declare-fun b!2325461 () Bool)

(declare-fun res!993229 () Bool)

(assert (=> b!2325461 (=> (not res!993229) (not e!1490028))))

(assert (=> b!2325461 (= res!993229 (= (size!21943 lt!861336) (+ (size!21943 (t!207464 lt!861059)) (size!21943 lt!861064))))))

(declare-fun b!2325459 () Bool)

(assert (=> b!2325459 (= e!1490029 lt!861064)))

(assert (= (and d!688620 c!369221) b!2325459))

(assert (= (and d!688620 (not c!369221)) b!2325460))

(assert (= (and d!688620 res!993228) b!2325461))

(assert (= (and b!2325461 res!993229) b!2325462))

(declare-fun m!2756471 () Bool)

(assert (=> b!2325460 m!2756471))

(declare-fun m!2756473 () Bool)

(assert (=> d!688620 m!2756473))

(assert (=> d!688620 m!2756235))

(assert (=> d!688620 m!2755015))

(declare-fun m!2756475 () Bool)

(assert (=> b!2325461 m!2756475))

(assert (=> b!2325461 m!2755801))

(assert (=> b!2325461 m!2755021))

(assert (=> b!2324501 d!688620))

(declare-fun b!2325463 () Bool)

(declare-fun res!993230 () Bool)

(declare-fun e!1490038 () Bool)

(assert (=> b!2325463 (=> (not res!993230) (not e!1490038))))

(declare-fun lt!861337 () Conc!9077)

(assert (=> b!2325463 (= res!993230 (isBalanced!2771 lt!861337))))

(declare-fun b!2325464 () Bool)

(declare-fun e!1490035 () Conc!9077)

(declare-fun call!138920 () Conc!9077)

(assert (=> b!2325464 (= e!1490035 call!138920)))

(declare-fun call!138915 () Int)

(declare-fun bm!138908 () Bool)

(declare-fun c!369225 () Bool)

(assert (=> bm!138908 (= call!138915 (height!1336 (ite c!369225 (++!6832 acc!252 lt!861061) (left!21012 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))

(declare-fun b!2325465 () Bool)

(declare-fun e!1490030 () Conc!9077)

(declare-fun e!1490033 () Conc!9077)

(assert (=> b!2325465 (= e!1490030 e!1490033)))

(declare-fun lt!861338 () Conc!9077)

(declare-fun call!138924 () Conc!9077)

(assert (=> b!2325465 (= lt!861338 call!138924)))

(declare-fun c!369223 () Bool)

(declare-fun call!138925 () Int)

(declare-fun call!138914 () Int)

(assert (=> b!2325465 (= c!369223 (= call!138925 (- call!138914 3)))))

(declare-fun b!2325466 () Bool)

(declare-fun e!1490032 () Conc!9077)

(declare-fun e!1490034 () Conc!9077)

(assert (=> b!2325466 (= e!1490032 e!1490034)))

(declare-fun c!369224 () Bool)

(assert (=> b!2325466 (= c!369224 (= (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210) Empty!9077))))

(declare-fun b!2325467 () Bool)

(declare-fun e!1490039 () Conc!9077)

(assert (=> b!2325467 (= e!1490039 e!1490035)))

(declare-fun lt!861339 () Conc!9077)

(declare-fun call!138913 () Conc!9077)

(assert (=> b!2325467 (= lt!861339 call!138913)))

(declare-fun c!369222 () Bool)

(declare-fun call!138923 () Int)

(assert (=> b!2325467 (= c!369222 (= call!138923 (- call!138915 3)))))

(declare-fun bm!138909 () Bool)

(declare-fun call!138918 () Conc!9077)

(assert (=> bm!138909 (= call!138913 call!138918)))

(declare-fun b!2325469 () Bool)

(declare-fun c!369226 () Bool)

(assert (=> b!2325469 (= c!369226 (>= call!138923 call!138915))))

(declare-fun e!1490031 () Conc!9077)

(assert (=> b!2325469 (= e!1490031 e!1490030)))

(declare-fun bm!138910 () Bool)

(declare-fun call!138927 () Conc!9077)

(declare-fun call!138922 () Conc!9077)

(assert (=> bm!138910 (= call!138927 call!138922)))

(declare-fun bm!138911 () Bool)

(declare-fun call!138921 () Conc!9077)

(assert (=> bm!138911 (= call!138922 call!138921)))

(declare-fun bm!138912 () Bool)

(declare-fun call!138926 () Conc!9077)

(declare-fun call!138928 () Conc!9077)

(assert (=> bm!138912 (= call!138926 call!138928)))

(declare-fun c!369228 () Bool)

(declare-fun bm!138913 () Bool)

(assert (=> bm!138913 (= call!138918 (++!6832 (ite c!369225 (ite c!369228 (right!21342 (++!6832 acc!252 lt!861061)) (right!21342 (right!21342 (++!6832 acc!252 lt!861061)))) (++!6832 acc!252 lt!861061)) (ite c!369225 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210) (ite c!369226 (left!21012 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)) (left!21012 (left!21012 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))))

(declare-fun bm!138914 () Bool)

(declare-fun call!138917 () Conc!9077)

(assert (=> bm!138914 (= call!138917 call!138928)))

(declare-fun e!1490036 () Bool)

(declare-fun b!2325470 () Bool)

(assert (=> b!2325470 (= e!1490036 (isBalanced!2771 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))

(declare-fun bm!138915 () Bool)

(assert (=> bm!138915 (= call!138914 (height!1336 (ite c!369225 (left!21012 (++!6832 acc!252 lt!861061)) (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210))))))

(declare-fun b!2325471 () Bool)

(assert (=> b!2325471 (= e!1490038 (= (list!11021 lt!861337) (++!6831 (list!11021 (++!6832 acc!252 lt!861061)) (list!11021 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))

(declare-fun b!2325472 () Bool)

(assert (=> b!2325472 (= e!1490033 call!138927)))

(declare-fun b!2325468 () Bool)

(declare-fun res!993231 () Bool)

(assert (=> b!2325468 (=> (not res!993231) (not e!1490038))))

(assert (=> b!2325468 (= res!993231 (<= (height!1336 lt!861337) (+ (max!0 (height!1336 (++!6832 acc!252 lt!861061)) (height!1336 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210))) 1)))))

(declare-fun d!688622 () Bool)

(assert (=> d!688622 e!1490038))

(declare-fun res!993232 () Bool)

(assert (=> d!688622 (=> (not res!993232) (not e!1490038))))

(assert (=> d!688622 (= res!993232 (appendAssocInst!612 (++!6832 acc!252 lt!861061) (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))

(assert (=> d!688622 (= lt!861337 e!1490032)))

(declare-fun c!369229 () Bool)

(assert (=> d!688622 (= c!369229 (= (++!6832 acc!252 lt!861061) Empty!9077))))

(assert (=> d!688622 e!1490036))

(declare-fun res!993234 () Bool)

(assert (=> d!688622 (=> (not res!993234) (not e!1490036))))

(assert (=> d!688622 (= res!993234 (isBalanced!2771 (++!6832 acc!252 lt!861061)))))

(assert (=> d!688622 (= (++!6832 (++!6832 acc!252 lt!861061) (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)) lt!861337)))

(declare-fun b!2325473 () Bool)

(assert (=> b!2325473 (= e!1490035 call!138920)))

(declare-fun b!2325474 () Bool)

(declare-fun call!138916 () Conc!9077)

(assert (=> b!2325474 (= e!1490039 call!138916)))

(declare-fun b!2325475 () Bool)

(assert (=> b!2325475 (= e!1490030 call!138917)))

(declare-fun b!2325476 () Bool)

(assert (=> b!2325476 (= e!1490032 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210))))

(declare-fun b!2325477 () Bool)

(declare-fun e!1490037 () Conc!9077)

(assert (=> b!2325477 (= e!1490037 e!1490031)))

(declare-fun lt!861340 () Int)

(assert (=> b!2325477 (= c!369225 (< lt!861340 (- 1)))))

(declare-fun c!369227 () Bool)

(declare-fun bm!138916 () Bool)

(declare-fun call!138919 () Conc!9077)

(assert (=> bm!138916 (= call!138921 (<>!218 (ite c!369227 (++!6832 acc!252 lt!861061) (ite c!369225 (ite (or c!369228 c!369222) (left!21012 (++!6832 acc!252 lt!861061)) call!138926) (ite c!369223 call!138919 lt!861338))) (ite c!369227 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210) (ite c!369225 (ite c!369228 call!138913 (ite c!369222 call!138926 lt!861339)) (ite c!369223 (right!21342 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)) call!138919)))))))

(declare-fun b!2325478 () Bool)

(assert (=> b!2325478 (= c!369227 (and (<= (- 1) lt!861340) (<= lt!861340 1)))))

(assert (=> b!2325478 (= lt!861340 (- (height!1336 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)) (height!1336 (++!6832 acc!252 lt!861061))))))

(assert (=> b!2325478 (= e!1490034 e!1490037)))

(declare-fun b!2325479 () Bool)

(declare-fun res!993233 () Bool)

(assert (=> b!2325479 (=> (not res!993233) (not e!1490038))))

(assert (=> b!2325479 (= res!993233 (>= (height!1336 lt!861337) (max!0 (height!1336 (++!6832 acc!252 lt!861061)) (height!1336 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))

(declare-fun b!2325480 () Bool)

(assert (=> b!2325480 (= c!369228 (>= call!138914 call!138925))))

(assert (=> b!2325480 (= e!1490031 e!1490039)))

(declare-fun bm!138917 () Bool)

(assert (=> bm!138917 (= call!138924 call!138918)))

(declare-fun bm!138918 () Bool)

(assert (=> bm!138918 (= call!138925 (height!1336 (ite c!369225 (right!21342 (++!6832 acc!252 lt!861061)) lt!861338)))))

(declare-fun b!2325481 () Bool)

(assert (=> b!2325481 (= e!1490034 (++!6832 acc!252 lt!861061))))

(declare-fun bm!138919 () Bool)

(assert (=> bm!138919 (= call!138920 call!138916)))

(declare-fun bm!138920 () Bool)

(assert (=> bm!138920 (= call!138923 (height!1336 (ite c!369225 lt!861339 (right!21342 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))

(declare-fun b!2325482 () Bool)

(assert (=> b!2325482 (= e!1490037 call!138921)))

(declare-fun b!2325483 () Bool)

(assert (=> b!2325483 (= e!1490033 call!138927)))

(declare-fun bm!138921 () Bool)

(assert (=> bm!138921 (= call!138928 (<>!218 (ite c!369225 (ite c!369222 (left!21012 (right!21342 (++!6832 acc!252 lt!861061))) (left!21012 (++!6832 acc!252 lt!861061))) (ite c!369226 call!138924 (ite c!369223 lt!861338 (right!21342 (left!21012 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))) (ite c!369225 (ite c!369222 lt!861339 (left!21012 (right!21342 (++!6832 acc!252 lt!861061)))) (ite c!369226 (right!21342 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)) (ite c!369223 (right!21342 (left!21012 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210))) (right!21342 (ite c!368991 (Leaf!13325 lt!861069 call!138854) lt!861210)))))))))

(declare-fun bm!138922 () Bool)

(assert (=> bm!138922 (= call!138919 call!138917)))

(declare-fun bm!138923 () Bool)

(assert (=> bm!138923 (= call!138916 call!138922)))

(assert (= (and d!688622 res!993234) b!2325470))

(assert (= (and d!688622 c!369229) b!2325476))

(assert (= (and d!688622 (not c!369229)) b!2325466))

(assert (= (and b!2325466 c!369224) b!2325481))

(assert (= (and b!2325466 (not c!369224)) b!2325478))

(assert (= (and b!2325478 c!369227) b!2325482))

(assert (= (and b!2325478 (not c!369227)) b!2325477))

(assert (= (and b!2325477 c!369225) b!2325480))

(assert (= (and b!2325477 (not c!369225)) b!2325469))

(assert (= (and b!2325480 c!369228) b!2325474))

(assert (= (and b!2325480 (not c!369228)) b!2325467))

(assert (= (and b!2325467 c!369222) b!2325464))

(assert (= (and b!2325467 (not c!369222)) b!2325473))

(assert (= (or b!2325464 b!2325473) bm!138912))

(assert (= (or b!2325464 b!2325473) bm!138919))

(assert (= (or b!2325474 b!2325467) bm!138909))

(assert (= (or b!2325474 bm!138919) bm!138923))

(assert (= (and b!2325469 c!369226) b!2325475))

(assert (= (and b!2325469 (not c!369226)) b!2325465))

(assert (= (and b!2325465 c!369223) b!2325472))

(assert (= (and b!2325465 (not c!369223)) b!2325483))

(assert (= (or b!2325472 b!2325483) bm!138922))

(assert (= (or b!2325472 b!2325483) bm!138910))

(assert (= (or b!2325475 b!2325465) bm!138917))

(assert (= (or b!2325475 bm!138922) bm!138914))

(assert (= (or b!2325480 b!2325465) bm!138918))

(assert (= (or b!2325480 b!2325465) bm!138915))

(assert (= (or bm!138909 bm!138917) bm!138913))

(assert (= (or bm!138923 bm!138910) bm!138911))

(assert (= (or bm!138912 bm!138914) bm!138921))

(assert (= (or b!2325467 b!2325469) bm!138908))

(assert (= (or b!2325467 b!2325469) bm!138920))

(assert (= (or b!2325482 bm!138911) bm!138916))

(assert (= (and d!688622 res!993232) b!2325463))

(assert (= (and b!2325463 res!993230) b!2325468))

(assert (= (and b!2325468 res!993231) b!2325479))

(assert (= (and b!2325479 res!993233) b!2325471))

(declare-fun m!2756513 () Bool)

(assert (=> bm!138920 m!2756513))

(declare-fun m!2756515 () Bool)

(assert (=> bm!138915 m!2756515))

(declare-fun m!2756517 () Bool)

(assert (=> b!2325468 m!2756517))

(assert (=> b!2325468 m!2754775))

(declare-fun m!2756519 () Bool)

(assert (=> b!2325468 m!2756519))

(declare-fun m!2756521 () Bool)

(assert (=> b!2325468 m!2756521))

(assert (=> b!2325468 m!2756519))

(assert (=> b!2325468 m!2756521))

(declare-fun m!2756523 () Bool)

(assert (=> b!2325468 m!2756523))

(declare-fun m!2756525 () Bool)

(assert (=> bm!138918 m!2756525))

(declare-fun m!2756527 () Bool)

(assert (=> b!2325463 m!2756527))

(declare-fun m!2756529 () Bool)

(assert (=> bm!138908 m!2756529))

(declare-fun m!2756535 () Bool)

(assert (=> bm!138916 m!2756535))

(assert (=> b!2325478 m!2756521))

(assert (=> b!2325478 m!2754775))

(assert (=> b!2325478 m!2756519))

(declare-fun m!2756541 () Bool)

(assert (=> b!2325470 m!2756541))

(declare-fun m!2756547 () Bool)

(assert (=> bm!138921 m!2756547))

(declare-fun m!2756549 () Bool)

(assert (=> b!2325471 m!2756549))

(assert (=> b!2325471 m!2754775))

(assert (=> b!2325471 m!2755257))

(declare-fun m!2756551 () Bool)

(assert (=> b!2325471 m!2756551))

(assert (=> b!2325471 m!2755257))

(assert (=> b!2325471 m!2756551))

(declare-fun m!2756553 () Bool)

(assert (=> b!2325471 m!2756553))

(assert (=> d!688622 m!2754775))

(declare-fun m!2756555 () Bool)

(assert (=> d!688622 m!2756555))

(assert (=> d!688622 m!2754775))

(assert (=> d!688622 m!2755253))

(declare-fun m!2756563 () Bool)

(assert (=> bm!138913 m!2756563))

(assert (=> b!2325479 m!2756517))

(assert (=> b!2325479 m!2754775))

(assert (=> b!2325479 m!2756519))

(assert (=> b!2325479 m!2756521))

(assert (=> b!2325479 m!2756519))

(assert (=> b!2325479 m!2756521))

(assert (=> b!2325479 m!2756523))

(assert (=> bm!138848 d!688622))

(declare-fun d!688636 () Bool)

(assert (=> d!688636 (= (height!1336 (ite c!368981 lt!861176 (right!21342 lt!861061))) (ite ((_ is Empty!9077) (ite c!368981 lt!861176 (right!21342 lt!861061))) 0 (ite ((_ is Leaf!13325) (ite c!368981 lt!861176 (right!21342 lt!861061))) 1 (cheight!9288 (ite c!368981 lt!861176 (right!21342 lt!861061))))))))

(assert (=> bm!138840 d!688636))

(declare-fun d!688640 () Bool)

(assert (=> d!688640 (= (inv!37662 (xs!12051 (left!21012 acc!252))) (<= (size!21943 (innerList!9137 (xs!12051 (left!21012 acc!252)))) 2147483647))))

(declare-fun bs!459238 () Bool)

(assert (= bs!459238 d!688640))

(declare-fun m!2756567 () Bool)

(assert (=> bs!459238 m!2756567))

(assert (=> b!2324734 d!688640))

(declare-fun b!2325511 () Bool)

(declare-fun e!1490053 () List!27770)

(assert (=> b!2325511 (= e!1490053 (Cons!27672 (h!33073 (t!207464 (++!6831 lt!861059 lt!861064))) (++!6831 (t!207464 (t!207464 (++!6831 lt!861059 lt!861064))) lt!861068)))))

(declare-fun b!2325513 () Bool)

(declare-fun e!1490052 () Bool)

(declare-fun lt!861345 () List!27770)

(assert (=> b!2325513 (= e!1490052 (or (not (= lt!861068 Nil!27672)) (= lt!861345 (t!207464 (++!6831 lt!861059 lt!861064)))))))

(declare-fun d!688642 () Bool)

(assert (=> d!688642 e!1490052))

(declare-fun res!993247 () Bool)

(assert (=> d!688642 (=> (not res!993247) (not e!1490052))))

(assert (=> d!688642 (= res!993247 (= (content!3748 lt!861345) ((_ map or) (content!3748 (t!207464 (++!6831 lt!861059 lt!861064))) (content!3748 lt!861068))))))

(assert (=> d!688642 (= lt!861345 e!1490053)))

(declare-fun c!369237 () Bool)

(assert (=> d!688642 (= c!369237 ((_ is Nil!27672) (t!207464 (++!6831 lt!861059 lt!861064))))))

(assert (=> d!688642 (= (++!6831 (t!207464 (++!6831 lt!861059 lt!861064)) lt!861068) lt!861345)))

(declare-fun b!2325512 () Bool)

(declare-fun res!993248 () Bool)

(assert (=> b!2325512 (=> (not res!993248) (not e!1490052))))

(assert (=> b!2325512 (= res!993248 (= (size!21943 lt!861345) (+ (size!21943 (t!207464 (++!6831 lt!861059 lt!861064))) (size!21943 lt!861068))))))

(declare-fun b!2325510 () Bool)

(assert (=> b!2325510 (= e!1490053 lt!861068)))

(assert (= (and d!688642 c!369237) b!2325510))

(assert (= (and d!688642 (not c!369237)) b!2325511))

(assert (= (and d!688642 res!993247) b!2325512))

(assert (= (and b!2325512 res!993248) b!2325513))

(declare-fun m!2756573 () Bool)

(assert (=> b!2325511 m!2756573))

(declare-fun m!2756577 () Bool)

(assert (=> d!688642 m!2756577))

(assert (=> d!688642 m!2756311))

(assert (=> d!688642 m!2755017))

(declare-fun m!2756579 () Bool)

(assert (=> b!2325512 m!2756579))

(assert (=> b!2325512 m!2756095))

(assert (=> b!2325512 m!2755023))

(assert (=> b!2324493 d!688642))

(declare-fun d!688646 () Bool)

(assert (=> d!688646 (= (list!11020 (xs!12051 lt!861061)) (innerList!9137 (xs!12051 lt!861061)))))

(assert (=> b!2324498 d!688646))

(declare-fun d!688648 () Bool)

(declare-fun lt!861346 () IArray!18159)

(assert (=> d!688648 (= lt!861346 (IArray!18160 (slice!708 (list!11020 lt!861069) 512 call!138854)))))

(assert (=> d!688648 (= lt!861346 (choose!13614 lt!861069 512 call!138854))))

(declare-fun e!1490055 () Bool)

(assert (=> d!688648 e!1490055))

(declare-fun res!993251 () Bool)

(assert (=> d!688648 (=> (not res!993251) (not e!1490055))))

(assert (=> d!688648 (= res!993251 (and (<= 0 512) (<= 512 call!138854)))))

(assert (=> d!688648 (= (slice!709 lt!861069 512 call!138854) lt!861346)))

(declare-fun b!2325516 () Bool)

(assert (=> b!2325516 (= e!1490055 (<= call!138854 (size!21944 lt!861069)))))

(assert (= (and d!688648 res!993251) b!2325516))

(assert (=> d!688648 m!2754779))

(assert (=> d!688648 m!2754779))

(declare-fun m!2756583 () Bool)

(assert (=> d!688648 m!2756583))

(declare-fun m!2756585 () Bool)

(assert (=> d!688648 m!2756585))

(assert (=> b!2325516 m!2754815))

(assert (=> b!2324710 d!688648))

(assert (=> b!2324710 d!688436))

(declare-fun b!2325522 () Bool)

(declare-fun e!1490059 () List!27770)

(assert (=> b!2325522 (= e!1490059 (Cons!27672 (h!33073 lt!861212) (++!6831 (t!207464 lt!861212) lt!861206)))))

(declare-fun b!2325524 () Bool)

(declare-fun e!1490058 () Bool)

(declare-fun lt!861348 () List!27770)

(assert (=> b!2325524 (= e!1490058 (or (not (= lt!861206 Nil!27672)) (= lt!861348 lt!861212)))))

(declare-fun d!688652 () Bool)

(assert (=> d!688652 e!1490058))

(declare-fun res!993254 () Bool)

(assert (=> d!688652 (=> (not res!993254) (not e!1490058))))

(assert (=> d!688652 (= res!993254 (= (content!3748 lt!861348) ((_ map or) (content!3748 lt!861212) (content!3748 lt!861206))))))

(assert (=> d!688652 (= lt!861348 e!1490059)))

(declare-fun c!369239 () Bool)

(assert (=> d!688652 (= c!369239 ((_ is Nil!27672) lt!861212))))

(assert (=> d!688652 (= (++!6831 lt!861212 lt!861206) lt!861348)))

(declare-fun b!2325523 () Bool)

(declare-fun res!993255 () Bool)

(assert (=> b!2325523 (=> (not res!993255) (not e!1490058))))

(assert (=> b!2325523 (= res!993255 (= (size!21943 lt!861348) (+ (size!21943 lt!861212) (size!21943 lt!861206))))))

(declare-fun b!2325521 () Bool)

(assert (=> b!2325521 (= e!1490059 lt!861206)))

(assert (= (and d!688652 c!369239) b!2325521))

(assert (= (and d!688652 (not c!369239)) b!2325522))

(assert (= (and d!688652 res!993254) b!2325523))

(assert (= (and b!2325523 res!993255) b!2325524))

(declare-fun m!2756593 () Bool)

(assert (=> b!2325522 m!2756593))

(declare-fun m!2756597 () Bool)

(assert (=> d!688652 m!2756597))

(declare-fun m!2756599 () Bool)

(assert (=> d!688652 m!2756599))

(declare-fun m!2756601 () Bool)

(assert (=> d!688652 m!2756601))

(declare-fun m!2756603 () Bool)

(assert (=> b!2325523 m!2756603))

(declare-fun m!2756605 () Bool)

(assert (=> b!2325523 m!2756605))

(declare-fun m!2756607 () Bool)

(assert (=> b!2325523 m!2756607))

(assert (=> b!2324710 d!688652))

(declare-fun d!688658 () Bool)

(declare-fun lt!861349 () IArray!18159)

(assert (=> d!688658 (= lt!861349 (IArray!18160 (slice!708 (list!11020 lt!861069) 0 512)))))

(assert (=> d!688658 (= lt!861349 (choose!13614 lt!861069 0 512))))

(declare-fun e!1490061 () Bool)

(assert (=> d!688658 e!1490061))

(declare-fun res!993259 () Bool)

(assert (=> d!688658 (=> (not res!993259) (not e!1490061))))

(assert (=> d!688658 (= res!993259 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!688658 (= (slice!709 lt!861069 0 512) lt!861349)))

(declare-fun b!2325525 () Bool)

(assert (=> b!2325525 (= e!1490061 (<= 512 (size!21944 lt!861069)))))

(assert (= (and d!688658 res!993259) b!2325525))

(assert (=> d!688658 m!2754779))

(assert (=> d!688658 m!2754779))

(declare-fun m!2756609 () Bool)

(assert (=> d!688658 m!2756609))

(declare-fun m!2756611 () Bool)

(assert (=> d!688658 m!2756611))

(assert (=> b!2325525 m!2754815))

(assert (=> b!2324710 d!688658))

(declare-fun e!1490064 () List!27770)

(declare-fun b!2325533 () Bool)

(assert (=> b!2325533 (= e!1490064 (Cons!27672 (h!33073 lt!861212) (++!6831 (t!207464 lt!861212) (++!6831 lt!861206 lt!861211))))))

(declare-fun lt!861350 () List!27770)

(declare-fun e!1490063 () Bool)

(declare-fun b!2325535 () Bool)

(assert (=> b!2325535 (= e!1490063 (or (not (= (++!6831 lt!861206 lt!861211) Nil!27672)) (= lt!861350 lt!861212)))))

(declare-fun d!688662 () Bool)

(assert (=> d!688662 e!1490063))

(declare-fun res!993263 () Bool)

(assert (=> d!688662 (=> (not res!993263) (not e!1490063))))

(assert (=> d!688662 (= res!993263 (= (content!3748 lt!861350) ((_ map or) (content!3748 lt!861212) (content!3748 (++!6831 lt!861206 lt!861211)))))))

(assert (=> d!688662 (= lt!861350 e!1490064)))

(declare-fun c!369240 () Bool)

(assert (=> d!688662 (= c!369240 ((_ is Nil!27672) lt!861212))))

(assert (=> d!688662 (= (++!6831 lt!861212 (++!6831 lt!861206 lt!861211)) lt!861350)))

(declare-fun b!2325534 () Bool)

(declare-fun res!993264 () Bool)

(assert (=> b!2325534 (=> (not res!993264) (not e!1490063))))

(assert (=> b!2325534 (= res!993264 (= (size!21943 lt!861350) (+ (size!21943 lt!861212) (size!21943 (++!6831 lt!861206 lt!861211)))))))

(declare-fun b!2325532 () Bool)

(assert (=> b!2325532 (= e!1490064 (++!6831 lt!861206 lt!861211))))

(assert (= (and d!688662 c!369240) b!2325532))

(assert (= (and d!688662 (not c!369240)) b!2325533))

(assert (= (and d!688662 res!993263) b!2325534))

(assert (= (and b!2325534 res!993264) b!2325535))

(assert (=> b!2325533 m!2755265))

(declare-fun m!2756625 () Bool)

(assert (=> b!2325533 m!2756625))

(declare-fun m!2756627 () Bool)

(assert (=> d!688662 m!2756627))

(assert (=> d!688662 m!2756599))

(assert (=> d!688662 m!2755265))

(declare-fun m!2756629 () Bool)

(assert (=> d!688662 m!2756629))

(declare-fun m!2756631 () Bool)

(assert (=> b!2325534 m!2756631))

(assert (=> b!2325534 m!2756605))

(assert (=> b!2325534 m!2755265))

(declare-fun m!2756633 () Bool)

(assert (=> b!2325534 m!2756633))

(assert (=> b!2324710 d!688662))

(declare-fun call!138930 () Int)

(declare-fun call!138929 () Conc!9077)

(declare-fun b!2325542 () Bool)

(declare-fun e!1490068 () Conc!9077)

(assert (=> b!2325542 (= e!1490068 (fromArray!35 (slice!709 (slice!709 lt!861069 512 call!138854) 512 call!138930) call!138929))))

(declare-fun lt!861359 () Conc!9077)

(assert (=> b!2325542 (= lt!861359 (Leaf!13325 (slice!709 (slice!709 lt!861069 512 call!138854) 0 512) 512))))

(declare-fun lt!861356 () Conc!9077)

(assert (=> b!2325542 (= lt!861356 (fromArray!35 (slice!709 (slice!709 lt!861069 512 call!138854) 512 call!138930) call!138929))))

(declare-fun lt!861361 () List!27770)

(assert (=> b!2325542 (= lt!861361 (list!11021 call!138853))))

(declare-fun lt!861355 () List!27770)

(assert (=> b!2325542 (= lt!861355 (list!11021 lt!861359))))

(declare-fun lt!861360 () List!27770)

(assert (=> b!2325542 (= lt!861360 (list!11020 (slice!709 (slice!709 lt!861069 512 call!138854) 512 call!138930)))))

(declare-fun lt!861358 () Unit!40522)

(assert (=> b!2325542 (= lt!861358 (lemmaConcatAssociativity!1459 lt!861361 lt!861355 lt!861360))))

(assert (=> b!2325542 (= (++!6831 (++!6831 lt!861361 lt!861355) lt!861360) (++!6831 lt!861361 (++!6831 lt!861355 lt!861360)))))

(declare-fun lt!861362 () Unit!40522)

(assert (=> b!2325542 (= lt!861362 lt!861358)))

(declare-fun lt!861352 () List!27770)

(assert (=> b!2325542 (= lt!861352 (list!11020 (slice!709 lt!861069 512 call!138854)))))

(declare-fun lt!861353 () Int)

(assert (=> b!2325542 (= lt!861353 512)))

(declare-fun lt!861354 () Unit!40522)

(assert (=> b!2325542 (= lt!861354 (sliceSplit!24 lt!861352 lt!861353))))

(assert (=> b!2325542 (= (++!6831 (slice!708 lt!861352 0 lt!861353) (slice!708 lt!861352 lt!861353 (size!21943 lt!861352))) lt!861352)))

(declare-fun lt!861351 () Unit!40522)

(assert (=> b!2325542 (= lt!861351 lt!861354)))

(declare-fun b!2325543 () Bool)

(declare-fun e!1490069 () Conc!9077)

(assert (=> b!2325543 (= e!1490069 call!138929)))

(declare-fun d!688666 () Bool)

(declare-fun e!1490067 () Bool)

(assert (=> d!688666 e!1490067))

(declare-fun res!993271 () Bool)

(assert (=> d!688666 (=> (not res!993271) (not e!1490067))))

(declare-fun lt!861357 () Conc!9077)

(assert (=> d!688666 (= res!993271 (isBalanced!2771 lt!861357))))

(assert (=> d!688666 (= lt!861357 e!1490068)))

(declare-fun c!369242 () Bool)

(assert (=> d!688666 (= c!369242 (<= (size!21944 (slice!709 lt!861069 512 call!138854)) 512))))

(assert (=> d!688666 (isBalanced!2771 call!138853)))

(assert (=> d!688666 (= (fromArray!35 (slice!709 lt!861069 512 call!138854) call!138853) lt!861357)))

(declare-fun bm!138924 () Bool)

(assert (=> bm!138924 (= call!138929 (++!6832 call!138853 (ite c!369242 (Leaf!13325 (slice!709 lt!861069 512 call!138854) call!138930) lt!861359)))))

(declare-fun b!2325544 () Bool)

(assert (=> b!2325544 (= e!1490067 (= (list!11021 lt!861357) (++!6831 (list!11021 call!138853) (list!11020 (slice!709 lt!861069 512 call!138854)))))))

(declare-fun b!2325545 () Bool)

(assert (=> b!2325545 (= e!1490069 call!138853)))

(declare-fun b!2325546 () Bool)

(assert (=> b!2325546 (= e!1490068 e!1490069)))

(declare-fun c!369241 () Bool)

(assert (=> b!2325546 (= c!369241 (= call!138930 0))))

(declare-fun bm!138925 () Bool)

(assert (=> bm!138925 (= call!138930 (size!21944 (slice!709 lt!861069 512 call!138854)))))

(assert (= (and d!688666 c!369242) b!2325546))

(assert (= (and d!688666 (not c!369242)) b!2325542))

(assert (= (and b!2325546 c!369241) b!2325545))

(assert (= (and b!2325546 (not c!369241)) b!2325543))

(assert (= (or b!2325546 b!2325543 b!2325542) bm!138925))

(assert (= (or b!2325543 b!2325542) bm!138924))

(assert (= (and d!688666 res!993271) b!2325544))

(declare-fun m!2756653 () Bool)

(assert (=> bm!138924 m!2756653))

(assert (=> bm!138925 m!2755271))

(declare-fun m!2756655 () Bool)

(assert (=> bm!138925 m!2756655))

(declare-fun m!2756657 () Bool)

(assert (=> d!688666 m!2756657))

(assert (=> d!688666 m!2755271))

(assert (=> d!688666 m!2756655))

(declare-fun m!2756659 () Bool)

(assert (=> d!688666 m!2756659))

(declare-fun m!2756661 () Bool)

(assert (=> b!2325544 m!2756661))

(declare-fun m!2756663 () Bool)

(assert (=> b!2325544 m!2756663))

(assert (=> b!2325544 m!2755271))

(assert (=> b!2325544 m!2755275))

(assert (=> b!2325544 m!2756663))

(assert (=> b!2325544 m!2755275))

(declare-fun m!2756665 () Bool)

(assert (=> b!2325544 m!2756665))

(declare-fun m!2756667 () Bool)

(assert (=> b!2325542 m!2756667))

(declare-fun m!2756669 () Bool)

(assert (=> b!2325542 m!2756669))

(declare-fun m!2756671 () Bool)

(assert (=> b!2325542 m!2756671))

(declare-fun m!2756673 () Bool)

(assert (=> b!2325542 m!2756673))

(assert (=> b!2325542 m!2756671))

(declare-fun m!2756675 () Bool)

(assert (=> b!2325542 m!2756675))

(declare-fun m!2756679 () Bool)

(assert (=> b!2325542 m!2756679))

(declare-fun m!2756681 () Bool)

(assert (=> b!2325542 m!2756681))

(assert (=> b!2325542 m!2756679))

(declare-fun m!2756687 () Bool)

(assert (=> b!2325542 m!2756687))

(assert (=> b!2325542 m!2755271))

(assert (=> b!2325542 m!2756679))

(declare-fun m!2756691 () Bool)

(assert (=> b!2325542 m!2756691))

(declare-fun m!2756693 () Bool)

(assert (=> b!2325542 m!2756693))

(assert (=> b!2325542 m!2755271))

(assert (=> b!2325542 m!2755275))

(declare-fun m!2756695 () Bool)

(assert (=> b!2325542 m!2756695))

(assert (=> b!2325542 m!2756669))

(declare-fun m!2756697 () Bool)

(assert (=> b!2325542 m!2756697))

(assert (=> b!2325542 m!2756695))

(declare-fun m!2756699 () Bool)

(assert (=> b!2325542 m!2756699))

(assert (=> b!2325542 m!2756693))

(assert (=> b!2325542 m!2756699))

(declare-fun m!2756701 () Bool)

(assert (=> b!2325542 m!2756701))

(assert (=> b!2325542 m!2756663))

(assert (=> b!2325542 m!2755271))

(declare-fun m!2756703 () Bool)

(assert (=> b!2325542 m!2756703))

(assert (=> b!2324710 d!688666))

(declare-fun b!2325561 () Bool)

(declare-fun e!1490076 () List!27770)

(assert (=> b!2325561 (= e!1490076 (Cons!27672 (h!33073 (++!6831 lt!861212 lt!861206)) (++!6831 (t!207464 (++!6831 lt!861212 lt!861206)) lt!861211)))))

(declare-fun b!2325563 () Bool)

(declare-fun e!1490075 () Bool)

(declare-fun lt!861364 () List!27770)

(assert (=> b!2325563 (= e!1490075 (or (not (= lt!861211 Nil!27672)) (= lt!861364 (++!6831 lt!861212 lt!861206))))))

(declare-fun d!688676 () Bool)

(assert (=> d!688676 e!1490075))

(declare-fun res!993283 () Bool)

(assert (=> d!688676 (=> (not res!993283) (not e!1490075))))

(assert (=> d!688676 (= res!993283 (= (content!3748 lt!861364) ((_ map or) (content!3748 (++!6831 lt!861212 lt!861206)) (content!3748 lt!861211))))))

(assert (=> d!688676 (= lt!861364 e!1490076)))

(declare-fun c!369244 () Bool)

(assert (=> d!688676 (= c!369244 ((_ is Nil!27672) (++!6831 lt!861212 lt!861206)))))

(assert (=> d!688676 (= (++!6831 (++!6831 lt!861212 lt!861206) lt!861211) lt!861364)))

(declare-fun b!2325562 () Bool)

(declare-fun res!993284 () Bool)

(assert (=> b!2325562 (=> (not res!993284) (not e!1490075))))

(assert (=> b!2325562 (= res!993284 (= (size!21943 lt!861364) (+ (size!21943 (++!6831 lt!861212 lt!861206)) (size!21943 lt!861211))))))

(declare-fun b!2325560 () Bool)

(assert (=> b!2325560 (= e!1490076 lt!861211)))

(assert (= (and d!688676 c!369244) b!2325560))

(assert (= (and d!688676 (not c!369244)) b!2325561))

(assert (= (and d!688676 res!993283) b!2325562))

(assert (= (and b!2325562 res!993284) b!2325563))

(declare-fun m!2756713 () Bool)

(assert (=> b!2325561 m!2756713))

(declare-fun m!2756715 () Bool)

(assert (=> d!688676 m!2756715))

(assert (=> d!688676 m!2755263))

(declare-fun m!2756717 () Bool)

(assert (=> d!688676 m!2756717))

(declare-fun m!2756719 () Bool)

(assert (=> d!688676 m!2756719))

(declare-fun m!2756721 () Bool)

(assert (=> b!2325562 m!2756721))

(assert (=> b!2325562 m!2755263))

(declare-fun m!2756723 () Bool)

(assert (=> b!2325562 m!2756723))

(declare-fun m!2756725 () Bool)

(assert (=> b!2325562 m!2756725))

(assert (=> b!2324710 d!688676))

(declare-fun b!2325568 () Bool)

(declare-fun e!1490079 () List!27770)

(assert (=> b!2325568 (= e!1490079 (list!11020 (xs!12051 lt!861210)))))

(declare-fun b!2325569 () Bool)

(assert (=> b!2325569 (= e!1490079 (++!6831 (list!11021 (left!21012 lt!861210)) (list!11021 (right!21342 lt!861210))))))

(declare-fun d!688680 () Bool)

(declare-fun c!369246 () Bool)

(assert (=> d!688680 (= c!369246 ((_ is Empty!9077) lt!861210))))

(declare-fun e!1490078 () List!27770)

(assert (=> d!688680 (= (list!11021 lt!861210) e!1490078)))

(declare-fun b!2325567 () Bool)

(assert (=> b!2325567 (= e!1490078 e!1490079)))

(declare-fun c!369247 () Bool)

(assert (=> b!2325567 (= c!369247 ((_ is Leaf!13325) lt!861210))))

(declare-fun b!2325566 () Bool)

(assert (=> b!2325566 (= e!1490078 Nil!27672)))

(assert (= (and d!688680 c!369246) b!2325566))

(assert (= (and d!688680 (not c!369246)) b!2325567))

(assert (= (and b!2325567 c!369247) b!2325568))

(assert (= (and b!2325567 (not c!369247)) b!2325569))

(declare-fun m!2756727 () Bool)

(assert (=> b!2325568 m!2756727))

(declare-fun m!2756729 () Bool)

(assert (=> b!2325569 m!2756729))

(declare-fun m!2756731 () Bool)

(assert (=> b!2325569 m!2756731))

(assert (=> b!2325569 m!2756729))

(assert (=> b!2325569 m!2756731))

(declare-fun m!2756733 () Bool)

(assert (=> b!2325569 m!2756733))

(assert (=> b!2324710 d!688680))

(declare-fun b!2325575 () Bool)

(declare-fun e!1490084 () List!27770)

(assert (=> b!2325575 (= e!1490084 (Cons!27672 (h!33073 (slice!708 lt!861203 0 lt!861204)) (++!6831 (t!207464 (slice!708 lt!861203 0 lt!861204)) (slice!708 lt!861203 lt!861204 (size!21943 lt!861203)))))))

(declare-fun b!2325577 () Bool)

(declare-fun lt!861366 () List!27770)

(declare-fun e!1490083 () Bool)

(assert (=> b!2325577 (= e!1490083 (or (not (= (slice!708 lt!861203 lt!861204 (size!21943 lt!861203)) Nil!27672)) (= lt!861366 (slice!708 lt!861203 0 lt!861204))))))

(declare-fun d!688682 () Bool)

(assert (=> d!688682 e!1490083))

(declare-fun res!993285 () Bool)

(assert (=> d!688682 (=> (not res!993285) (not e!1490083))))

(assert (=> d!688682 (= res!993285 (= (content!3748 lt!861366) ((_ map or) (content!3748 (slice!708 lt!861203 0 lt!861204)) (content!3748 (slice!708 lt!861203 lt!861204 (size!21943 lt!861203))))))))

(assert (=> d!688682 (= lt!861366 e!1490084)))

(declare-fun c!369248 () Bool)

(assert (=> d!688682 (= c!369248 ((_ is Nil!27672) (slice!708 lt!861203 0 lt!861204)))))

(assert (=> d!688682 (= (++!6831 (slice!708 lt!861203 0 lt!861204) (slice!708 lt!861203 lt!861204 (size!21943 lt!861203))) lt!861366)))

(declare-fun b!2325576 () Bool)

(declare-fun res!993286 () Bool)

(assert (=> b!2325576 (=> (not res!993286) (not e!1490083))))

(assert (=> b!2325576 (= res!993286 (= (size!21943 lt!861366) (+ (size!21943 (slice!708 lt!861203 0 lt!861204)) (size!21943 (slice!708 lt!861203 lt!861204 (size!21943 lt!861203))))))))

(declare-fun b!2325574 () Bool)

(assert (=> b!2325574 (= e!1490084 (slice!708 lt!861203 lt!861204 (size!21943 lt!861203)))))

(assert (= (and d!688682 c!369248) b!2325574))

(assert (= (and d!688682 (not c!369248)) b!2325575))

(assert (= (and d!688682 res!993285) b!2325576))

(assert (= (and b!2325576 res!993286) b!2325577))

(assert (=> b!2325575 m!2755285))

(declare-fun m!2756741 () Bool)

(assert (=> b!2325575 m!2756741))

(declare-fun m!2756743 () Bool)

(assert (=> d!688682 m!2756743))

(assert (=> d!688682 m!2755279))

(declare-fun m!2756747 () Bool)

(assert (=> d!688682 m!2756747))

(assert (=> d!688682 m!2755285))

(declare-fun m!2756753 () Bool)

(assert (=> d!688682 m!2756753))

(declare-fun m!2756755 () Bool)

(assert (=> b!2325576 m!2756755))

(assert (=> b!2325576 m!2755279))

(declare-fun m!2756757 () Bool)

(assert (=> b!2325576 m!2756757))

(assert (=> b!2325576 m!2755285))

(declare-fun m!2756759 () Bool)

(assert (=> b!2325576 m!2756759))

(assert (=> b!2324710 d!688682))

(declare-fun d!688684 () Bool)

(assert (=> d!688684 (= (++!6831 (slice!708 lt!861203 0 lt!861204) (slice!708 lt!861203 lt!861204 (size!21943 lt!861203))) lt!861203)))

(declare-fun lt!861367 () Unit!40522)

(assert (=> d!688684 (= lt!861367 (choose!13610 lt!861203 lt!861204))))

(assert (=> d!688684 (= (sliceSplit!24 lt!861203 lt!861204) lt!861367)))

(declare-fun bs!459240 () Bool)

(assert (= bs!459240 d!688684))

(assert (=> bs!459240 m!2755279))

(assert (=> bs!459240 m!2755285))

(assert (=> bs!459240 m!2755287))

(assert (=> bs!459240 m!2755281))

(assert (=> bs!459240 m!2755281))

(assert (=> bs!459240 m!2755285))

(assert (=> bs!459240 m!2755279))

(declare-fun m!2756767 () Bool)

(assert (=> bs!459240 m!2756767))

(assert (=> b!2324710 d!688684))

(declare-fun d!688686 () Bool)

(assert (=> d!688686 (= (slice!708 lt!861203 lt!861204 (size!21943 lt!861203)) (take!487 (drop!1510 lt!861203 lt!861204) (- (size!21943 lt!861203) lt!861204)))))

(declare-fun bs!459241 () Bool)

(assert (= bs!459241 d!688686))

(declare-fun m!2756769 () Bool)

(assert (=> bs!459241 m!2756769))

(assert (=> bs!459241 m!2756769))

(declare-fun m!2756777 () Bool)

(assert (=> bs!459241 m!2756777))

(assert (=> b!2324710 d!688686))

(assert (=> b!2324710 d!688178))

(declare-fun d!688688 () Bool)

(assert (=> d!688688 (= (slice!708 lt!861203 0 lt!861204) (take!487 (drop!1510 lt!861203 0) (- lt!861204 0)))))

(declare-fun bs!459242 () Bool)

(assert (= bs!459242 d!688688))

(declare-fun m!2756779 () Bool)

(assert (=> bs!459242 m!2756779))

(assert (=> bs!459242 m!2756779))

(declare-fun m!2756781 () Bool)

(assert (=> bs!459242 m!2756781))

(assert (=> b!2324710 d!688688))

(declare-fun d!688690 () Bool)

(assert (=> d!688690 (= (++!6831 (++!6831 lt!861212 lt!861206) lt!861211) (++!6831 lt!861212 (++!6831 lt!861206 lt!861211)))))

(declare-fun lt!861368 () Unit!40522)

(assert (=> d!688690 (= lt!861368 (choose!13613 lt!861212 lt!861206 lt!861211))))

(assert (=> d!688690 (= (lemmaConcatAssociativity!1459 lt!861212 lt!861206 lt!861211) lt!861368)))

(declare-fun bs!459243 () Bool)

(assert (= bs!459243 d!688690))

(assert (=> bs!459243 m!2755263))

(assert (=> bs!459243 m!2755265))

(assert (=> bs!459243 m!2755269))

(declare-fun m!2756783 () Bool)

(assert (=> bs!459243 m!2756783))

(assert (=> bs!459243 m!2755263))

(assert (=> bs!459243 m!2755283))

(assert (=> bs!459243 m!2755265))

(assert (=> b!2324710 d!688690))

(declare-fun b!2325591 () Bool)

(declare-fun e!1490095 () List!27770)

(assert (=> b!2325591 (= e!1490095 (Cons!27672 (h!33073 lt!861206) (++!6831 (t!207464 lt!861206) lt!861211)))))

(declare-fun b!2325593 () Bool)

(declare-fun lt!861369 () List!27770)

(declare-fun e!1490094 () Bool)

(assert (=> b!2325593 (= e!1490094 (or (not (= lt!861211 Nil!27672)) (= lt!861369 lt!861206)))))

(declare-fun d!688692 () Bool)

(assert (=> d!688692 e!1490094))

(declare-fun res!993287 () Bool)

(assert (=> d!688692 (=> (not res!993287) (not e!1490094))))

(assert (=> d!688692 (= res!993287 (= (content!3748 lt!861369) ((_ map or) (content!3748 lt!861206) (content!3748 lt!861211))))))

(assert (=> d!688692 (= lt!861369 e!1490095)))

(declare-fun c!369249 () Bool)

(assert (=> d!688692 (= c!369249 ((_ is Nil!27672) lt!861206))))

(assert (=> d!688692 (= (++!6831 lt!861206 lt!861211) lt!861369)))

(declare-fun b!2325592 () Bool)

(declare-fun res!993288 () Bool)

(assert (=> b!2325592 (=> (not res!993288) (not e!1490094))))

(assert (=> b!2325592 (= res!993288 (= (size!21943 lt!861369) (+ (size!21943 lt!861206) (size!21943 lt!861211))))))

(declare-fun b!2325590 () Bool)

(assert (=> b!2325590 (= e!1490095 lt!861211)))

(assert (= (and d!688692 c!369249) b!2325590))

(assert (= (and d!688692 (not c!369249)) b!2325591))

(assert (= (and d!688692 res!993287) b!2325592))

(assert (= (and b!2325592 res!993288) b!2325593))

(declare-fun m!2756785 () Bool)

(assert (=> b!2325591 m!2756785))

(declare-fun m!2756787 () Bool)

(assert (=> d!688692 m!2756787))

(assert (=> d!688692 m!2756601))

(assert (=> d!688692 m!2756719))

(declare-fun m!2756789 () Bool)

(assert (=> b!2325592 m!2756789))

(assert (=> b!2325592 m!2756607))

(assert (=> b!2325592 m!2756725))

(assert (=> b!2324710 d!688692))

(declare-fun d!688694 () Bool)

(assert (=> d!688694 (= (list!11020 (slice!709 lt!861069 512 call!138854)) (innerList!9137 (slice!709 lt!861069 512 call!138854)))))

(assert (=> b!2324710 d!688694))

(declare-fun d!688696 () Bool)

(declare-fun lt!861370 () Int)

(assert (=> d!688696 (>= lt!861370 0)))

(declare-fun e!1490096 () Int)

(assert (=> d!688696 (= lt!861370 e!1490096)))

(declare-fun c!369250 () Bool)

(assert (=> d!688696 (= c!369250 ((_ is Nil!27672) lt!861203))))

(assert (=> d!688696 (= (size!21943 lt!861203) lt!861370)))

(declare-fun b!2325594 () Bool)

(assert (=> b!2325594 (= e!1490096 0)))

(declare-fun b!2325595 () Bool)

(assert (=> b!2325595 (= e!1490096 (+ 1 (size!21943 (t!207464 lt!861203))))))

(assert (= (and d!688696 c!369250) b!2325594))

(assert (= (and d!688696 (not c!369250)) b!2325595))

(declare-fun m!2756791 () Bool)

(assert (=> b!2325595 m!2756791))

(assert (=> b!2324710 d!688696))

(declare-fun d!688698 () Bool)

(assert (=> d!688698 (= (height!1336 lt!861174) (ite ((_ is Empty!9077) lt!861174) 0 (ite ((_ is Leaf!13325) lt!861174) 1 (cheight!9288 lt!861174))))))

(assert (=> b!2324684 d!688698))

(declare-fun d!688700 () Bool)

(assert (=> d!688700 (= (max!0 (height!1336 acc!252) (height!1336 lt!861061)) (ite (< (height!1336 acc!252) (height!1336 lt!861061)) (height!1336 lt!861061) (height!1336 acc!252)))))

(assert (=> b!2324684 d!688700))

(assert (=> b!2324684 d!688536))

(assert (=> b!2324684 d!688534))

(declare-fun d!688702 () Bool)

(declare-fun lt!861371 () Int)

(assert (=> d!688702 (>= lt!861371 0)))

(declare-fun e!1490097 () Int)

(assert (=> d!688702 (= lt!861371 e!1490097)))

(declare-fun c!369251 () Bool)

(assert (=> d!688702 (= c!369251 ((_ is Nil!27672) (innerList!9137 (xs!12051 acc!252))))))

(assert (=> d!688702 (= (size!21943 (innerList!9137 (xs!12051 acc!252))) lt!861371)))

(declare-fun b!2325596 () Bool)

(assert (=> b!2325596 (= e!1490097 0)))

(declare-fun b!2325597 () Bool)

(assert (=> b!2325597 (= e!1490097 (+ 1 (size!21943 (t!207464 (innerList!9137 (xs!12051 acc!252))))))))

(assert (= (and d!688702 c!369251) b!2325596))

(assert (= (and d!688702 (not c!369251)) b!2325597))

(declare-fun m!2756793 () Bool)

(assert (=> b!2325597 m!2756793))

(assert (=> d!688170 d!688702))

(declare-fun d!688704 () Bool)

(declare-fun c!369252 () Bool)

(assert (=> d!688704 (= c!369252 ((_ is Nil!27672) lt!861100))))

(declare-fun e!1490098 () (InoxSet T!43936))

(assert (=> d!688704 (= (content!3748 lt!861100) e!1490098)))

(declare-fun b!2325598 () Bool)

(assert (=> b!2325598 (= e!1490098 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325599 () Bool)

(assert (=> b!2325599 (= e!1490098 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861100) true) (content!3748 (t!207464 lt!861100))))))

(assert (= (and d!688704 c!369252) b!2325598))

(assert (= (and d!688704 (not c!369252)) b!2325599))

(declare-fun m!2756795 () Bool)

(assert (=> b!2325599 m!2756795))

(declare-fun m!2756797 () Bool)

(assert (=> b!2325599 m!2756797))

(assert (=> d!688158 d!688704))

(assert (=> d!688158 d!688540))

(declare-fun d!688706 () Bool)

(declare-fun c!369253 () Bool)

(assert (=> d!688706 (= c!369253 ((_ is Nil!27672) lt!861057))))

(declare-fun e!1490099 () (InoxSet T!43936))

(assert (=> d!688706 (= (content!3748 lt!861057) e!1490099)))

(declare-fun b!2325600 () Bool)

(assert (=> b!2325600 (= e!1490099 ((as const (Array T!43936 Bool)) false))))

(declare-fun b!2325601 () Bool)

(assert (=> b!2325601 (= e!1490099 ((_ map or) (store ((as const (Array T!43936 Bool)) false) (h!33073 lt!861057) true) (content!3748 (t!207464 lt!861057))))))

(assert (= (and d!688706 c!369253) b!2325600))

(assert (= (and d!688706 (not c!369253)) b!2325601))

(declare-fun m!2756799 () Bool)

(assert (=> b!2325601 m!2756799))

(declare-fun m!2756801 () Bool)

(assert (=> b!2325601 m!2756801))

(assert (=> d!688158 d!688706))

(assert (=> b!2324695 d!688698))

(assert (=> b!2324695 d!688700))

(assert (=> b!2324695 d!688536))

(assert (=> b!2324695 d!688534))

(declare-fun e!1490100 () Bool)

(declare-fun b!2325602 () Bool)

(declare-fun tp!737049 () Bool)

(declare-fun tp!737050 () Bool)

(assert (=> b!2325602 (= e!1490100 (and (inv!37661 (left!21012 (left!21012 (right!21342 acc!252)))) tp!737049 (inv!37661 (right!21342 (left!21012 (right!21342 acc!252)))) tp!737050))))

(declare-fun b!2325604 () Bool)

(declare-fun e!1490101 () Bool)

(declare-fun tp!737048 () Bool)

(assert (=> b!2325604 (= e!1490101 tp!737048)))

(declare-fun b!2325603 () Bool)

(assert (=> b!2325603 (= e!1490100 (and (inv!37662 (xs!12051 (left!21012 (right!21342 acc!252)))) e!1490101))))

(assert (=> b!2324736 (= tp!737021 (and (inv!37661 (left!21012 (right!21342 acc!252))) e!1490100))))

(assert (= (and b!2324736 ((_ is Node!9077) (left!21012 (right!21342 acc!252)))) b!2325602))

(assert (= b!2325603 b!2325604))

(assert (= (and b!2324736 ((_ is Leaf!13325) (left!21012 (right!21342 acc!252)))) b!2325603))

(declare-fun m!2756803 () Bool)

(assert (=> b!2325602 m!2756803))

(declare-fun m!2756805 () Bool)

(assert (=> b!2325602 m!2756805))

(declare-fun m!2756807 () Bool)

(assert (=> b!2325603 m!2756807))

(assert (=> b!2324736 m!2755313))

(declare-fun tp!737052 () Bool)

(declare-fun tp!737053 () Bool)

(declare-fun e!1490102 () Bool)

(declare-fun b!2325605 () Bool)

(assert (=> b!2325605 (= e!1490102 (and (inv!37661 (left!21012 (right!21342 (right!21342 acc!252)))) tp!737052 (inv!37661 (right!21342 (right!21342 (right!21342 acc!252)))) tp!737053))))

(declare-fun b!2325607 () Bool)

(declare-fun e!1490103 () Bool)

(declare-fun tp!737051 () Bool)

(assert (=> b!2325607 (= e!1490103 tp!737051)))

(declare-fun b!2325606 () Bool)

(assert (=> b!2325606 (= e!1490102 (and (inv!37662 (xs!12051 (right!21342 (right!21342 acc!252)))) e!1490103))))

(assert (=> b!2324736 (= tp!737022 (and (inv!37661 (right!21342 (right!21342 acc!252))) e!1490102))))

(assert (= (and b!2324736 ((_ is Node!9077) (right!21342 (right!21342 acc!252)))) b!2325605))

(assert (= b!2325606 b!2325607))

(assert (= (and b!2324736 ((_ is Leaf!13325) (right!21342 (right!21342 acc!252)))) b!2325606))

(declare-fun m!2756809 () Bool)

(assert (=> b!2325605 m!2756809))

(declare-fun m!2756811 () Bool)

(assert (=> b!2325605 m!2756811))

(declare-fun m!2756813 () Bool)

(assert (=> b!2325606 m!2756813))

(assert (=> b!2324736 m!2755315))

(declare-fun b!2325608 () Bool)

(declare-fun e!1490104 () Bool)

(declare-fun tp!737054 () Bool)

(assert (=> b!2325608 (= e!1490104 (and tp_is_empty!10837 tp!737054))))

(assert (=> b!2324739 (= tp!737023 e!1490104)))

(assert (= (and b!2324739 ((_ is Cons!27672) (t!207464 (innerList!9137 arr!18)))) b!2325608))

(declare-fun b!2325609 () Bool)

(declare-fun e!1490105 () Bool)

(declare-fun tp!737055 () Bool)

(assert (=> b!2325609 (= e!1490105 (and tp_is_empty!10837 tp!737055))))

(assert (=> b!2324724 (= tp!737010 e!1490105)))

(assert (= (and b!2324724 ((_ is Cons!27672) (t!207464 (innerList!9137 (xs!12051 acc!252))))) b!2325609))

(declare-fun b!2325610 () Bool)

(declare-fun e!1490106 () Bool)

(declare-fun tp!737056 () Bool)

(assert (=> b!2325610 (= e!1490106 (and tp_is_empty!10837 tp!737056))))

(assert (=> b!2324735 (= tp!737017 e!1490106)))

(assert (= (and b!2324735 ((_ is Cons!27672) (innerList!9137 (xs!12051 (left!21012 acc!252))))) b!2325610))

(declare-fun e!1490107 () Bool)

(declare-fun tp!737058 () Bool)

(declare-fun b!2325611 () Bool)

(declare-fun tp!737059 () Bool)

(assert (=> b!2325611 (= e!1490107 (and (inv!37661 (left!21012 (left!21012 (left!21012 acc!252)))) tp!737058 (inv!37661 (right!21342 (left!21012 (left!21012 acc!252)))) tp!737059))))

(declare-fun b!2325613 () Bool)

(declare-fun e!1490108 () Bool)

(declare-fun tp!737057 () Bool)

(assert (=> b!2325613 (= e!1490108 tp!737057)))

(declare-fun b!2325612 () Bool)

(assert (=> b!2325612 (= e!1490107 (and (inv!37662 (xs!12051 (left!21012 (left!21012 acc!252)))) e!1490108))))

(assert (=> b!2324733 (= tp!737018 (and (inv!37661 (left!21012 (left!21012 acc!252))) e!1490107))))

(assert (= (and b!2324733 ((_ is Node!9077) (left!21012 (left!21012 acc!252)))) b!2325611))

(assert (= b!2325612 b!2325613))

(assert (= (and b!2324733 ((_ is Leaf!13325) (left!21012 (left!21012 acc!252)))) b!2325612))

(declare-fun m!2756815 () Bool)

(assert (=> b!2325611 m!2756815))

(declare-fun m!2756817 () Bool)

(assert (=> b!2325611 m!2756817))

(declare-fun m!2756819 () Bool)

(assert (=> b!2325612 m!2756819))

(assert (=> b!2324733 m!2755307))

(declare-fun e!1490109 () Bool)

(declare-fun tp!737061 () Bool)

(declare-fun b!2325614 () Bool)

(declare-fun tp!737062 () Bool)

(assert (=> b!2325614 (= e!1490109 (and (inv!37661 (left!21012 (right!21342 (left!21012 acc!252)))) tp!737061 (inv!37661 (right!21342 (right!21342 (left!21012 acc!252)))) tp!737062))))

(declare-fun b!2325616 () Bool)

(declare-fun e!1490110 () Bool)

(declare-fun tp!737060 () Bool)

(assert (=> b!2325616 (= e!1490110 tp!737060)))

(declare-fun b!2325615 () Bool)

(assert (=> b!2325615 (= e!1490109 (and (inv!37662 (xs!12051 (right!21342 (left!21012 acc!252)))) e!1490110))))

(assert (=> b!2324733 (= tp!737019 (and (inv!37661 (right!21342 (left!21012 acc!252))) e!1490109))))

(assert (= (and b!2324733 ((_ is Node!9077) (right!21342 (left!21012 acc!252)))) b!2325614))

(assert (= b!2325615 b!2325616))

(assert (= (and b!2324733 ((_ is Leaf!13325) (right!21342 (left!21012 acc!252)))) b!2325615))

(declare-fun m!2756821 () Bool)

(assert (=> b!2325614 m!2756821))

(declare-fun m!2756823 () Bool)

(assert (=> b!2325614 m!2756823))

(declare-fun m!2756825 () Bool)

(assert (=> b!2325615 m!2756825))

(assert (=> b!2324733 m!2755309))

(declare-fun b!2325617 () Bool)

(declare-fun e!1490111 () Bool)

(declare-fun tp!737063 () Bool)

(assert (=> b!2325617 (= e!1490111 (and tp_is_empty!10837 tp!737063))))

(assert (=> b!2324738 (= tp!737020 e!1490111)))

(assert (= (and b!2324738 ((_ is Cons!27672) (innerList!9137 (xs!12051 (right!21342 acc!252))))) b!2325617))

(check-sat (not b!2325576) (not bm!138925) (not d!688578) (not b!2325073) (not b!2325426) (not b!2325246) (not b!2325379) (not b!2325378) (not b!2325463) (not b!2325233) (not d!688320) (not bm!138920) (not b!2325562) (not b!2325336) (not b!2325609) (not b!2325561) (not b!2325242) (not b!2325237) (not b!2325172) (not b!2325468) (not b!2325610) (not bm!138908) (not d!688372) (not b!2325367) (not b!2325274) (not b!2325158) (not b!2325607) (not b!2325079) (not b!2325045) (not b!2325144) (not b!2325070) (not d!688252) (not b!2324933) (not b!2325544) (not d!688666) (not b!2325611) (not b!2325569) (not b!2325608) (not b!2325478) (not b!2325603) (not b!2325060) (not b!2325534) (not b!2325525) (not bm!138905) (not b!2325436) (not b!2325613) (not b!2324769) (not b!2325601) (not b!2325007) (not bm!138858) (not d!688512) (not d!688342) (not b!2325456) (not b!2324858) (not b!2325533) (not d!688378) (not b!2325523) (not d!688684) (not b!2325264) (not b!2325032) (not bm!138915) (not b!2324854) (not b!2325141) (not b!2325076) (not d!688392) (not b!2325016) (not d!688402) (not b!2324930) (not b!2325269) (not b!2325575) (not b!2325479) (not b!2325146) (not b!2325265) (not b!2325377) (not d!688574) (not d!688676) (not b!2325239) (not b!2325334) (not d!688338) (not bm!138900) (not d!688344) (not d!688248) (not d!688640) (not d!688346) (not b!2325253) (not d!688548) (not b!2325025) (not bm!138902) (not b!2325457) (not b!2325014) (not b!2325348) (not d!688692) (not b!2325616) (not b!2325235) (not b!2325061) (not b!2325322) (not d!688430) (not b!2325592) (not b!2325419) (not b!2325350) (not b!2325162) (not b!2324865) (not b!2325075) (not b!2325331) (not b!2324770) (not b!2324999) (not b!2325247) (not b!2325614) (not b!2325148) (not b!2325290) (not b!2325370) (not b!2325257) (not b!2325263) (not b!2325241) (not b!2325139) (not b!2325256) (not b!2325470) (not b!2325291) (not b!2325420) (not b!2325388) (not b!2325033) (not b!2325276) (not d!688662) (not bm!138913) (not b!2324934) (not b!2325026) (not b!2325403) (not b!2325374) (not b!2325333) (not b!2325461) (not d!688576) (not b!2325149) (not b!2325251) (not b!2325142) (not b!2325415) (not d!688376) (not b!2325591) (not b!2325064) (not b!2325001) (not bm!138916) (not b!2325340) (not d!688520) (not b!2325002) (not b!2325512) (not b!2324853) (not b!2325345) (not b!2325231) (not d!688690) (not b!2325347) (not d!688596) (not b!2325171) tp_is_empty!10837 (not d!688642) (not b!2325380) (not b!2325330) (not b!2325261) (not d!688572) (not b!2325516) (not d!688546) (not bm!138854) (not b!2325612) (not d!688652) (not d!688416) (not bm!138924) (not d!688648) (not b!2325359) (not b!2325428) (not b!2325044) (not b!2325617) (not b!2325161) (not b!2325219) (not b!2324931) (not b!2325437) (not d!688682) (not b!2325568) (not b!2324771) (not b!2325376) (not b!2325113) (not b!2325602) (not b!2324774) (not b!2325352) (not b!2325164) (not d!688366) (not b!2325542) (not b!2325429) (not b!2325252) (not b!2325372) (not d!688584) (not b!2325055) (not b!2325145) (not b!2324864) (not b!2325165) (not b!2325384) (not b!2325389) (not b!2325077) (not b!2325344) (not b!2325606) (not b!2325599) (not d!688422) (not b!2325078) (not b!2325354) (not b!2325000) (not b!2325267) (not b!2325262) (not d!688658) (not b!2325324) (not b!2325381) (not b!2325342) (not b!2325597) (not b!2324788) (not bm!138921) (not b!2325511) (not b!2325250) (not d!688388) (not d!688444) (not b!2324736) (not d!688686) (not bm!138899) (not bm!138904) (not b!2325402) (not b!2325074) (not b!2325349) (not b!2325595) (not b!2324733) (not b!2325522) (not b!2325362) (not b!2325003) (not b!2325605) (not bm!138897) (not b!2324986) (not b!2324983) (not b!2325421) (not b!2325385) (not b!2324772) (not d!688622) (not b!2325326) (not d!688600) (not b!2324998) (not b!2324862) (not b!2325615) (not d!688618) (not b!2325460) (not b!2325143) (not b!2325004) (not d!688602) (not d!688688) (not b!2325382) (not b!2324773) (not b!2325157) (not b!2325154) (not b!2325255) (not bm!138892) (not d!688608) (not b!2325260) (not b!2325604) (not b!2325356) (not d!688486) (not bm!138918) (not b!2325358) (not b!2325053) (not b!2325416) (not b!2325006) (not b!2325454) (not b!2325153) (not b!2325022) (not b!2325346) (not b!2325471) (not b!2325254) (not d!688350) (not b!2325328) (not b!2325364) (not b!2325452) (not d!688236) (not b!2325063) (not d!688620) (not d!688404))
(check-sat)
