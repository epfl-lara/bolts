; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!747814 () Bool)

(assert start!747814)

(declare-fun res!3142484 () Bool)

(declare-fun e!4673588 () Bool)

(assert (=> start!747814 (=> (not res!3142484) (not e!4673588))))

(declare-datatypes ((T!145636 0))(
  ( (T!145637 (val!32036 Int)) )
))
(declare-datatypes ((List!74548 0))(
  ( (Nil!74424) (Cons!74424 (h!80872 T!145636) (t!390083 List!74548)) )
))
(declare-datatypes ((IArray!31817 0))(
  ( (IArray!31818 (innerList!15966 List!74548)) )
))
(declare-datatypes ((Conc!15878 0))(
  ( (Node!15878 (left!56837 Conc!15878) (right!57167 Conc!15878) (csize!31986 Int) (cheight!16089 Int)) (Leaf!30198 (xs!19264 IArray!31817) (csize!31987 Int)) (Empty!15878) )
))
(declare-fun c!5365 () Conc!15878)

(declare-fun isBalanced!4504 (Conc!15878) Bool)

(assert (=> start!747814 (= res!3142484 (isBalanced!4504 c!5365))))

(assert (=> start!747814 e!4673588))

(declare-fun e!4673586 () Bool)

(declare-fun inv!95589 (Conc!15878) Bool)

(assert (=> start!747814 (and (inv!95589 c!5365) e!4673586)))

(declare-fun e!4673585 () Bool)

(assert (=> start!747814 e!4673585))

(declare-fun b!7917808 () Bool)

(declare-fun tp_is_empty!53181 () Bool)

(declare-fun tp!2357593 () Bool)

(assert (=> b!7917808 (= e!4673585 (and tp_is_empty!53181 tp!2357593))))

(declare-fun b!7917809 () Bool)

(declare-fun e!4673587 () Bool)

(declare-fun inv!95590 (IArray!31817) Bool)

(assert (=> b!7917809 (= e!4673586 (and (inv!95590 (xs!19264 c!5365)) e!4673587))))

(declare-fun tp!2357594 () Bool)

(declare-fun tp!2357591 () Bool)

(declare-fun b!7917810 () Bool)

(assert (=> b!7917810 (= e!4673586 (and (inv!95589 (left!56837 c!5365)) tp!2357591 (inv!95589 (right!57167 c!5365)) tp!2357594))))

(declare-fun b!7917811 () Bool)

(declare-fun tp!2357592 () Bool)

(assert (=> b!7917811 (= e!4673587 tp!2357592)))

(declare-fun b!7917812 () Bool)

(declare-fun ll!14 () List!74548)

(declare-fun size!43209 (List!74548) Int)

(assert (=> b!7917812 (= e!4673588 (< (size!43209 ll!14) 0))))

(assert (= (and start!747814 res!3142484) b!7917812))

(get-info :version)

(assert (= (and start!747814 ((_ is Node!15878) c!5365)) b!7917810))

(assert (= b!7917809 b!7917811))

(assert (= (and start!747814 ((_ is Leaf!30198) c!5365)) b!7917809))

(assert (= (and start!747814 ((_ is Cons!74424) ll!14)) b!7917808))

(declare-fun m!8293680 () Bool)

(assert (=> start!747814 m!8293680))

(declare-fun m!8293682 () Bool)

(assert (=> start!747814 m!8293682))

(declare-fun m!8293684 () Bool)

(assert (=> b!7917809 m!8293684))

(declare-fun m!8293686 () Bool)

(assert (=> b!7917810 m!8293686))

(declare-fun m!8293688 () Bool)

(assert (=> b!7917810 m!8293688))

(declare-fun m!8293690 () Bool)

(assert (=> b!7917812 m!8293690))

(check-sat (not b!7917811) (not b!7917808) (not b!7917812) (not b!7917810) (not start!747814) (not b!7917809) tp_is_empty!53181)
(check-sat)
(get-model)

(declare-fun d!2362404 () Bool)

(declare-fun c!1453013 () Bool)

(assert (=> d!2362404 (= c!1453013 ((_ is Node!15878) (left!56837 c!5365)))))

(declare-fun e!4673597 () Bool)

(assert (=> d!2362404 (= (inv!95589 (left!56837 c!5365)) e!4673597)))

(declare-fun b!7917831 () Bool)

(declare-fun inv!95591 (Conc!15878) Bool)

(assert (=> b!7917831 (= e!4673597 (inv!95591 (left!56837 c!5365)))))

(declare-fun b!7917832 () Bool)

(declare-fun e!4673598 () Bool)

(assert (=> b!7917832 (= e!4673597 e!4673598)))

(declare-fun res!3142499 () Bool)

(assert (=> b!7917832 (= res!3142499 (not ((_ is Leaf!30198) (left!56837 c!5365))))))

(assert (=> b!7917832 (=> res!3142499 e!4673598)))

(declare-fun b!7917833 () Bool)

(declare-fun inv!95592 (Conc!15878) Bool)

(assert (=> b!7917833 (= e!4673598 (inv!95592 (left!56837 c!5365)))))

(assert (= (and d!2362404 c!1453013) b!7917831))

(assert (= (and d!2362404 (not c!1453013)) b!7917832))

(assert (= (and b!7917832 (not res!3142499)) b!7917833))

(declare-fun m!8293692 () Bool)

(assert (=> b!7917831 m!8293692))

(declare-fun m!8293694 () Bool)

(assert (=> b!7917833 m!8293694))

(assert (=> b!7917810 d!2362404))

(declare-fun d!2362406 () Bool)

(declare-fun c!1453014 () Bool)

(assert (=> d!2362406 (= c!1453014 ((_ is Node!15878) (right!57167 c!5365)))))

(declare-fun e!4673599 () Bool)

(assert (=> d!2362406 (= (inv!95589 (right!57167 c!5365)) e!4673599)))

(declare-fun b!7917834 () Bool)

(assert (=> b!7917834 (= e!4673599 (inv!95591 (right!57167 c!5365)))))

(declare-fun b!7917835 () Bool)

(declare-fun e!4673600 () Bool)

(assert (=> b!7917835 (= e!4673599 e!4673600)))

(declare-fun res!3142500 () Bool)

(assert (=> b!7917835 (= res!3142500 (not ((_ is Leaf!30198) (right!57167 c!5365))))))

(assert (=> b!7917835 (=> res!3142500 e!4673600)))

(declare-fun b!7917836 () Bool)

(assert (=> b!7917836 (= e!4673600 (inv!95592 (right!57167 c!5365)))))

(assert (= (and d!2362406 c!1453014) b!7917834))

(assert (= (and d!2362406 (not c!1453014)) b!7917835))

(assert (= (and b!7917835 (not res!3142500)) b!7917836))

(declare-fun m!8293696 () Bool)

(assert (=> b!7917834 m!8293696))

(declare-fun m!8293698 () Bool)

(assert (=> b!7917836 m!8293698))

(assert (=> b!7917810 d!2362406))

(declare-fun d!2362408 () Bool)

(assert (=> d!2362408 (= (inv!95590 (xs!19264 c!5365)) (<= (size!43209 (innerList!15966 (xs!19264 c!5365))) 2147483647))))

(declare-fun bs!1968501 () Bool)

(assert (= bs!1968501 d!2362408))

(declare-fun m!8293700 () Bool)

(assert (=> bs!1968501 m!8293700))

(assert (=> b!7917809 d!2362408))

(declare-fun b!7917868 () Bool)

(declare-fun res!3142523 () Bool)

(declare-fun e!4673615 () Bool)

(assert (=> b!7917868 (=> (not res!3142523) (not e!4673615))))

(assert (=> b!7917868 (= res!3142523 (isBalanced!4504 (right!57167 c!5365)))))

(declare-fun b!7917869 () Bool)

(declare-fun isEmpty!42743 (Conc!15878) Bool)

(assert (=> b!7917869 (= e!4673615 (not (isEmpty!42743 (right!57167 c!5365))))))

(declare-fun b!7917870 () Bool)

(declare-fun res!3142524 () Bool)

(assert (=> b!7917870 (=> (not res!3142524) (not e!4673615))))

(assert (=> b!7917870 (= res!3142524 (not (isEmpty!42743 (left!56837 c!5365))))))

(declare-fun b!7917872 () Bool)

(declare-fun res!3142525 () Bool)

(assert (=> b!7917872 (=> (not res!3142525) (not e!4673615))))

(declare-fun height!2194 (Conc!15878) Int)

(assert (=> b!7917872 (= res!3142525 (<= (- (height!2194 (left!56837 c!5365)) (height!2194 (right!57167 c!5365))) 1))))

(declare-fun b!7917873 () Bool)

(declare-fun e!4673616 () Bool)

(assert (=> b!7917873 (= e!4673616 e!4673615)))

(declare-fun res!3142522 () Bool)

(assert (=> b!7917873 (=> (not res!3142522) (not e!4673615))))

(assert (=> b!7917873 (= res!3142522 (<= (- 1) (- (height!2194 (left!56837 c!5365)) (height!2194 (right!57167 c!5365)))))))

(declare-fun b!7917871 () Bool)

(declare-fun res!3142526 () Bool)

(assert (=> b!7917871 (=> (not res!3142526) (not e!4673615))))

(assert (=> b!7917871 (= res!3142526 (isBalanced!4504 (left!56837 c!5365)))))

(declare-fun d!2362410 () Bool)

(declare-fun res!3142527 () Bool)

(assert (=> d!2362410 (=> res!3142527 e!4673616)))

(assert (=> d!2362410 (= res!3142527 (not ((_ is Node!15878) c!5365)))))

(assert (=> d!2362410 (= (isBalanced!4504 c!5365) e!4673616)))

(assert (= (and d!2362410 (not res!3142527)) b!7917873))

(assert (= (and b!7917873 res!3142522) b!7917872))

(assert (= (and b!7917872 res!3142525) b!7917871))

(assert (= (and b!7917871 res!3142526) b!7917868))

(assert (= (and b!7917868 res!3142523) b!7917870))

(assert (= (and b!7917870 res!3142524) b!7917869))

(declare-fun m!8293718 () Bool)

(assert (=> b!7917868 m!8293718))

(declare-fun m!8293720 () Bool)

(assert (=> b!7917871 m!8293720))

(declare-fun m!8293722 () Bool)

(assert (=> b!7917872 m!8293722))

(declare-fun m!8293724 () Bool)

(assert (=> b!7917872 m!8293724))

(assert (=> b!7917873 m!8293722))

(assert (=> b!7917873 m!8293724))

(declare-fun m!8293726 () Bool)

(assert (=> b!7917869 m!8293726))

(declare-fun m!8293728 () Bool)

(assert (=> b!7917870 m!8293728))

(assert (=> start!747814 d!2362410))

(declare-fun d!2362416 () Bool)

(declare-fun c!1453021 () Bool)

(assert (=> d!2362416 (= c!1453021 ((_ is Node!15878) c!5365))))

(declare-fun e!4673618 () Bool)

(assert (=> d!2362416 (= (inv!95589 c!5365) e!4673618)))

(declare-fun b!7917876 () Bool)

(assert (=> b!7917876 (= e!4673618 (inv!95591 c!5365))))

(declare-fun b!7917877 () Bool)

(declare-fun e!4673619 () Bool)

(assert (=> b!7917877 (= e!4673618 e!4673619)))

(declare-fun res!3142528 () Bool)

(assert (=> b!7917877 (= res!3142528 (not ((_ is Leaf!30198) c!5365)))))

(assert (=> b!7917877 (=> res!3142528 e!4673619)))

(declare-fun b!7917878 () Bool)

(assert (=> b!7917878 (= e!4673619 (inv!95592 c!5365))))

(assert (= (and d!2362416 c!1453021) b!7917876))

(assert (= (and d!2362416 (not c!1453021)) b!7917877))

(assert (= (and b!7917877 (not res!3142528)) b!7917878))

(declare-fun m!8293732 () Bool)

(assert (=> b!7917876 m!8293732))

(declare-fun m!8293734 () Bool)

(assert (=> b!7917878 m!8293734))

(assert (=> start!747814 d!2362416))

(declare-fun d!2362420 () Bool)

(declare-fun lt!2690899 () Int)

(assert (=> d!2362420 (>= lt!2690899 0)))

(declare-fun e!4673630 () Int)

(assert (=> d!2362420 (= lt!2690899 e!4673630)))

(declare-fun c!1453026 () Bool)

(assert (=> d!2362420 (= c!1453026 ((_ is Nil!74424) ll!14))))

(assert (=> d!2362420 (= (size!43209 ll!14) lt!2690899)))

(declare-fun b!7917897 () Bool)

(assert (=> b!7917897 (= e!4673630 0)))

(declare-fun b!7917898 () Bool)

(assert (=> b!7917898 (= e!4673630 (+ 1 (size!43209 (t!390083 ll!14))))))

(assert (= (and d!2362420 c!1453026) b!7917897))

(assert (= (and d!2362420 (not c!1453026)) b!7917898))

(declare-fun m!8293746 () Bool)

(assert (=> b!7917898 m!8293746))

(assert (=> b!7917812 d!2362420))

(declare-fun b!7917906 () Bool)

(declare-fun e!4673635 () Bool)

(declare-fun tp!2357606 () Bool)

(assert (=> b!7917906 (= e!4673635 (and tp_is_empty!53181 tp!2357606))))

(assert (=> b!7917808 (= tp!2357593 e!4673635)))

(assert (= (and b!7917808 ((_ is Cons!74424) (t!390083 ll!14))) b!7917906))

(declare-fun e!4673646 () Bool)

(declare-fun tp!2357620 () Bool)

(declare-fun tp!2357621 () Bool)

(declare-fun b!7917924 () Bool)

(assert (=> b!7917924 (= e!4673646 (and (inv!95589 (left!56837 (left!56837 c!5365))) tp!2357620 (inv!95589 (right!57167 (left!56837 c!5365))) tp!2357621))))

(declare-fun b!7917926 () Bool)

(declare-fun e!4673647 () Bool)

(declare-fun tp!2357622 () Bool)

(assert (=> b!7917926 (= e!4673647 tp!2357622)))

(declare-fun b!7917925 () Bool)

(assert (=> b!7917925 (= e!4673646 (and (inv!95590 (xs!19264 (left!56837 c!5365))) e!4673647))))

(assert (=> b!7917810 (= tp!2357591 (and (inv!95589 (left!56837 c!5365)) e!4673646))))

(assert (= (and b!7917810 ((_ is Node!15878) (left!56837 c!5365))) b!7917924))

(assert (= b!7917925 b!7917926))

(assert (= (and b!7917810 ((_ is Leaf!30198) (left!56837 c!5365))) b!7917925))

(declare-fun m!8293760 () Bool)

(assert (=> b!7917924 m!8293760))

(declare-fun m!8293762 () Bool)

(assert (=> b!7917924 m!8293762))

(declare-fun m!8293764 () Bool)

(assert (=> b!7917925 m!8293764))

(assert (=> b!7917810 m!8293686))

(declare-fun e!4673648 () Bool)

(declare-fun tp!2357624 () Bool)

(declare-fun b!7917927 () Bool)

(declare-fun tp!2357623 () Bool)

(assert (=> b!7917927 (= e!4673648 (and (inv!95589 (left!56837 (right!57167 c!5365))) tp!2357623 (inv!95589 (right!57167 (right!57167 c!5365))) tp!2357624))))

(declare-fun b!7917929 () Bool)

(declare-fun e!4673649 () Bool)

(declare-fun tp!2357625 () Bool)

(assert (=> b!7917929 (= e!4673649 tp!2357625)))

(declare-fun b!7917928 () Bool)

(assert (=> b!7917928 (= e!4673648 (and (inv!95590 (xs!19264 (right!57167 c!5365))) e!4673649))))

(assert (=> b!7917810 (= tp!2357594 (and (inv!95589 (right!57167 c!5365)) e!4673648))))

(assert (= (and b!7917810 ((_ is Node!15878) (right!57167 c!5365))) b!7917927))

(assert (= b!7917928 b!7917929))

(assert (= (and b!7917810 ((_ is Leaf!30198) (right!57167 c!5365))) b!7917928))

(declare-fun m!8293766 () Bool)

(assert (=> b!7917927 m!8293766))

(declare-fun m!8293768 () Bool)

(assert (=> b!7917927 m!8293768))

(declare-fun m!8293770 () Bool)

(assert (=> b!7917928 m!8293770))

(assert (=> b!7917810 m!8293688))

(declare-fun b!7917930 () Bool)

(declare-fun e!4673650 () Bool)

(declare-fun tp!2357626 () Bool)

(assert (=> b!7917930 (= e!4673650 (and tp_is_empty!53181 tp!2357626))))

(assert (=> b!7917811 (= tp!2357592 e!4673650)))

(assert (= (and b!7917811 ((_ is Cons!74424) (innerList!15966 (xs!19264 c!5365)))) b!7917930))

(check-sat (not b!7917928) (not b!7917927) (not b!7917929) (not b!7917810) (not b!7917868) (not b!7917873) (not b!7917926) (not b!7917871) tp_is_empty!53181 (not b!7917906) (not b!7917876) (not b!7917831) (not b!7917924) (not b!7917878) (not b!7917834) (not b!7917930) (not b!7917870) (not d!2362408) (not b!7917833) (not b!7917836) (not b!7917925) (not b!7917869) (not b!7917872) (not b!7917898))
(check-sat)
