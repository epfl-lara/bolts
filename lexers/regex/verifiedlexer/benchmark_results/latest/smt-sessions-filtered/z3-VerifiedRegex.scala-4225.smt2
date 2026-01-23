; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!228522 () Bool)

(assert start!228522)

(declare-fun b!2315830 () Bool)

(declare-fun e!1484696 () Bool)

(declare-datatypes ((T!43628 0))(
  ( (T!43629 (val!7940 Int)) )
))
(declare-datatypes ((List!27726 0))(
  ( (Nil!27628) (Cons!27628 (h!33029 T!43628) (t!207340 List!27726)) )
))
(declare-datatypes ((IArray!18071 0))(
  ( (IArray!18072 (innerList!9093 List!27726)) )
))
(declare-datatypes ((Conc!9033 0))(
  ( (Node!9033 (left!20946 Conc!9033) (right!21276 Conc!9033) (csize!18296 Int) (cheight!9244 Int)) (Leaf!13259 (xs!11977 IArray!18071) (csize!18297 Int)) (Empty!9033) )
))
(declare-fun acc!252 () Conc!9033)

(declare-fun e!1484697 () Bool)

(declare-fun inv!37455 (IArray!18071) Bool)

(assert (=> b!2315830 (= e!1484696 (and (inv!37455 (xs!11977 acc!252)) e!1484697))))

(declare-fun b!2315831 () Bool)

(declare-fun e!1484693 () Bool)

(declare-fun e!1484695 () Bool)

(assert (=> b!2315831 (= e!1484693 e!1484695)))

(declare-fun res!989493 () Bool)

(assert (=> b!2315831 (=> (not res!989493) (not e!1484695))))

(declare-fun lt!858509 () Int)

(assert (=> b!2315831 (= res!989493 (> lt!858509 512))))

(declare-fun arr!18 () IArray!18071)

(declare-fun size!21850 (IArray!18071) Int)

(assert (=> b!2315831 (= lt!858509 (size!21850 arr!18))))

(declare-fun b!2315832 () Bool)

(declare-fun e!1484694 () Bool)

(declare-fun tp!735601 () Bool)

(assert (=> b!2315832 (= e!1484694 tp!735601)))

(declare-fun b!2315833 () Bool)

(declare-fun lt!858508 () IArray!18071)

(declare-fun isBalanced!2727 (Conc!9033) Bool)

(declare-fun ++!6758 (Conc!9033 Conc!9033) Conc!9033)

(assert (=> b!2315833 (= e!1484695 (not (isBalanced!2727 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))))))

(declare-fun lt!858507 () IArray!18071)

(declare-fun slice!647 (IArray!18071 Int Int) IArray!18071)

(assert (=> b!2315833 (= lt!858507 (slice!647 arr!18 512 lt!858509))))

(assert (=> b!2315833 (= lt!858508 (slice!647 arr!18 0 512))))

(declare-fun b!2315834 () Bool)

(declare-fun tp!735600 () Bool)

(declare-fun tp!735602 () Bool)

(declare-fun inv!37456 (Conc!9033) Bool)

(assert (=> b!2315834 (= e!1484696 (and (inv!37456 (left!20946 acc!252)) tp!735600 (inv!37456 (right!21276 acc!252)) tp!735602))))

(declare-fun b!2315835 () Bool)

(declare-fun tp!735603 () Bool)

(assert (=> b!2315835 (= e!1484697 tp!735603)))

(declare-fun res!989494 () Bool)

(assert (=> start!228522 (=> (not res!989494) (not e!1484693))))

(assert (=> start!228522 (= res!989494 (isBalanced!2727 acc!252))))

(assert (=> start!228522 e!1484693))

(assert (=> start!228522 (and (inv!37456 acc!252) e!1484696)))

(assert (=> start!228522 (and (inv!37455 arr!18) e!1484694)))

(assert (= (and start!228522 res!989494) b!2315831))

(assert (= (and b!2315831 res!989493) b!2315833))

(get-info :version)

(assert (= (and start!228522 ((_ is Node!9033) acc!252)) b!2315834))

(assert (= b!2315830 b!2315835))

(assert (= (and start!228522 ((_ is Leaf!13259) acc!252)) b!2315830))

(assert (= start!228522 b!2315832))

(declare-fun m!2742925 () Bool)

(assert (=> b!2315831 m!2742925))

(declare-fun m!2742927 () Bool)

(assert (=> b!2315830 m!2742927))

(declare-fun m!2742929 () Bool)

(assert (=> start!228522 m!2742929))

(declare-fun m!2742931 () Bool)

(assert (=> start!228522 m!2742931))

(declare-fun m!2742933 () Bool)

(assert (=> start!228522 m!2742933))

(declare-fun m!2742935 () Bool)

(assert (=> b!2315834 m!2742935))

(declare-fun m!2742937 () Bool)

(assert (=> b!2315834 m!2742937))

(declare-fun m!2742939 () Bool)

(assert (=> b!2315833 m!2742939))

(assert (=> b!2315833 m!2742939))

(declare-fun m!2742941 () Bool)

(assert (=> b!2315833 m!2742941))

(declare-fun m!2742943 () Bool)

(assert (=> b!2315833 m!2742943))

(declare-fun m!2742945 () Bool)

(assert (=> b!2315833 m!2742945))

(check-sat (not b!2315831) (not b!2315833) (not b!2315834) (not start!228522) (not b!2315835) (not b!2315830) (not b!2315832))
(check-sat)
(get-model)

(declare-fun d!684762 () Bool)

(declare-fun c!367048 () Bool)

(assert (=> d!684762 (= c!367048 ((_ is Node!9033) (left!20946 acc!252)))))

(declare-fun e!1484702 () Bool)

(assert (=> d!684762 (= (inv!37456 (left!20946 acc!252)) e!1484702)))

(declare-fun b!2315842 () Bool)

(declare-fun inv!37457 (Conc!9033) Bool)

(assert (=> b!2315842 (= e!1484702 (inv!37457 (left!20946 acc!252)))))

(declare-fun b!2315843 () Bool)

(declare-fun e!1484703 () Bool)

(assert (=> b!2315843 (= e!1484702 e!1484703)))

(declare-fun res!989497 () Bool)

(assert (=> b!2315843 (= res!989497 (not ((_ is Leaf!13259) (left!20946 acc!252))))))

(assert (=> b!2315843 (=> res!989497 e!1484703)))

(declare-fun b!2315844 () Bool)

(declare-fun inv!37458 (Conc!9033) Bool)

(assert (=> b!2315844 (= e!1484703 (inv!37458 (left!20946 acc!252)))))

(assert (= (and d!684762 c!367048) b!2315842))

(assert (= (and d!684762 (not c!367048)) b!2315843))

(assert (= (and b!2315843 (not res!989497)) b!2315844))

(declare-fun m!2742949 () Bool)

(assert (=> b!2315842 m!2742949))

(declare-fun m!2742951 () Bool)

(assert (=> b!2315844 m!2742951))

(assert (=> b!2315834 d!684762))

(declare-fun d!684768 () Bool)

(declare-fun c!367049 () Bool)

(assert (=> d!684768 (= c!367049 ((_ is Node!9033) (right!21276 acc!252)))))

(declare-fun e!1484704 () Bool)

(assert (=> d!684768 (= (inv!37456 (right!21276 acc!252)) e!1484704)))

(declare-fun b!2315845 () Bool)

(assert (=> b!2315845 (= e!1484704 (inv!37457 (right!21276 acc!252)))))

(declare-fun b!2315846 () Bool)

(declare-fun e!1484705 () Bool)

(assert (=> b!2315846 (= e!1484704 e!1484705)))

(declare-fun res!989498 () Bool)

(assert (=> b!2315846 (= res!989498 (not ((_ is Leaf!13259) (right!21276 acc!252))))))

(assert (=> b!2315846 (=> res!989498 e!1484705)))

(declare-fun b!2315847 () Bool)

(assert (=> b!2315847 (= e!1484705 (inv!37458 (right!21276 acc!252)))))

(assert (= (and d!684768 c!367049) b!2315845))

(assert (= (and d!684768 (not c!367049)) b!2315846))

(assert (= (and b!2315846 (not res!989498)) b!2315847))

(declare-fun m!2742953 () Bool)

(assert (=> b!2315845 m!2742953))

(declare-fun m!2742955 () Bool)

(assert (=> b!2315847 m!2742955))

(assert (=> b!2315834 d!684768))

(declare-fun d!684770 () Bool)

(declare-fun size!21852 (List!27726) Int)

(assert (=> d!684770 (= (inv!37455 (xs!11977 acc!252)) (<= (size!21852 (innerList!9093 (xs!11977 acc!252))) 2147483647))))

(declare-fun bs!458831 () Bool)

(assert (= bs!458831 d!684770))

(declare-fun m!2742957 () Bool)

(assert (=> bs!458831 m!2742957))

(assert (=> b!2315830 d!684770))

(declare-fun d!684772 () Bool)

(declare-fun lt!858512 () Int)

(declare-fun list!10936 (IArray!18071) List!27726)

(assert (=> d!684772 (= lt!858512 (size!21852 (list!10936 arr!18)))))

(declare-fun choose!13547 (IArray!18071) Int)

(assert (=> d!684772 (= lt!858512 (choose!13547 arr!18))))

(assert (=> d!684772 (= (size!21850 arr!18) lt!858512)))

(declare-fun bs!458832 () Bool)

(assert (= bs!458832 d!684772))

(declare-fun m!2742959 () Bool)

(assert (=> bs!458832 m!2742959))

(assert (=> bs!458832 m!2742959))

(declare-fun m!2742961 () Bool)

(assert (=> bs!458832 m!2742961))

(declare-fun m!2742963 () Bool)

(assert (=> bs!458832 m!2742963))

(assert (=> b!2315831 d!684772))

(declare-fun b!2315884 () Bool)

(declare-fun res!989534 () Bool)

(declare-fun e!1484721 () Bool)

(assert (=> b!2315884 (=> (not res!989534) (not e!1484721))))

(declare-fun isEmpty!15764 (Conc!9033) Bool)

(assert (=> b!2315884 (= res!989534 (not (isEmpty!15764 (left!20946 (++!6758 acc!252 (Leaf!13259 lt!858508 512))))))))

(declare-fun d!684774 () Bool)

(declare-fun res!989536 () Bool)

(declare-fun e!1484720 () Bool)

(assert (=> d!684774 (=> res!989536 e!1484720)))

(assert (=> d!684774 (= res!989536 (not ((_ is Node!9033) (++!6758 acc!252 (Leaf!13259 lt!858508 512)))))))

(assert (=> d!684774 (= (isBalanced!2727 (++!6758 acc!252 (Leaf!13259 lt!858508 512))) e!1484720)))

(declare-fun b!2315885 () Bool)

(assert (=> b!2315885 (= e!1484721 (not (isEmpty!15764 (right!21276 (++!6758 acc!252 (Leaf!13259 lt!858508 512))))))))

(declare-fun b!2315886 () Bool)

(assert (=> b!2315886 (= e!1484720 e!1484721)))

(declare-fun res!989533 () Bool)

(assert (=> b!2315886 (=> (not res!989533) (not e!1484721))))

(declare-fun height!1310 (Conc!9033) Int)

(assert (=> b!2315886 (= res!989533 (<= (- 1) (- (height!1310 (left!20946 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))) (height!1310 (right!21276 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))))))))

(declare-fun b!2315887 () Bool)

(declare-fun res!989532 () Bool)

(assert (=> b!2315887 (=> (not res!989532) (not e!1484721))))

(assert (=> b!2315887 (= res!989532 (isBalanced!2727 (left!20946 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))))))

(declare-fun b!2315888 () Bool)

(declare-fun res!989531 () Bool)

(assert (=> b!2315888 (=> (not res!989531) (not e!1484721))))

(assert (=> b!2315888 (= res!989531 (isBalanced!2727 (right!21276 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))))))

(declare-fun b!2315889 () Bool)

(declare-fun res!989535 () Bool)

(assert (=> b!2315889 (=> (not res!989535) (not e!1484721))))

(assert (=> b!2315889 (= res!989535 (<= (- (height!1310 (left!20946 (++!6758 acc!252 (Leaf!13259 lt!858508 512)))) (height!1310 (right!21276 (++!6758 acc!252 (Leaf!13259 lt!858508 512))))) 1))))

(assert (= (and d!684774 (not res!989536)) b!2315886))

(assert (= (and b!2315886 res!989533) b!2315889))

(assert (= (and b!2315889 res!989535) b!2315887))

(assert (= (and b!2315887 res!989532) b!2315888))

(assert (= (and b!2315888 res!989531) b!2315884))

(assert (= (and b!2315884 res!989534) b!2315885))

(declare-fun m!2742983 () Bool)

(assert (=> b!2315888 m!2742983))

(declare-fun m!2742985 () Bool)

(assert (=> b!2315889 m!2742985))

(declare-fun m!2742987 () Bool)

(assert (=> b!2315889 m!2742987))

(declare-fun m!2742989 () Bool)

(assert (=> b!2315884 m!2742989))

(declare-fun m!2742991 () Bool)

(assert (=> b!2315885 m!2742991))

(assert (=> b!2315886 m!2742985))

(assert (=> b!2315886 m!2742987))

(declare-fun m!2742993 () Bool)

(assert (=> b!2315887 m!2742993))

(assert (=> b!2315833 d!684774))

(declare-fun call!137649 () Int)

(declare-fun bm!137636 () Bool)

(declare-fun c!367094 () Bool)

(assert (=> bm!137636 (= call!137649 (height!1310 (ite c!367094 acc!252 (right!21276 (Leaf!13259 lt!858508 512)))))))

(declare-fun b!2316004 () Bool)

(declare-fun e!1484778 () Conc!9033)

(declare-fun call!137654 () Conc!9033)

(assert (=> b!2316004 (= e!1484778 call!137654)))

(declare-fun b!2316005 () Bool)

(assert (=> b!2316005 (= e!1484778 call!137654)))

(declare-fun lt!858534 () Conc!9033)

(declare-fun bm!137637 () Bool)

(declare-fun call!137646 () Int)

(assert (=> bm!137637 (= call!137646 (height!1310 (ite c!367094 lt!858534 (left!20946 (Leaf!13259 lt!858508 512)))))))

(declare-fun b!2316006 () Bool)

(declare-fun c!367095 () Bool)

(assert (=> b!2316006 (= c!367095 (>= call!137649 call!137646))))

(declare-fun e!1484777 () Conc!9033)

(declare-fun e!1484779 () Conc!9033)

(assert (=> b!2316006 (= e!1484777 e!1484779)))

(declare-fun b!2316007 () Bool)

(declare-fun e!1484780 () Bool)

(assert (=> b!2316007 (= e!1484780 (isBalanced!2727 (Leaf!13259 lt!858508 512)))))

(declare-fun b!2316009 () Bool)

(declare-fun e!1484785 () Conc!9033)

(declare-fun e!1484784 () Conc!9033)

(assert (=> b!2316009 (= e!1484785 e!1484784)))

(declare-fun c!367096 () Bool)

(assert (=> b!2316009 (= c!367096 (= (Leaf!13259 lt!858508 512) Empty!9033))))

(declare-fun bm!137638 () Bool)

(declare-fun call!137643 () Conc!9033)

(declare-fun call!137645 () Conc!9033)

(assert (=> bm!137638 (= call!137643 call!137645)))

(declare-fun b!2316010 () Bool)

(assert (=> b!2316010 (= e!1484779 e!1484778)))

(declare-fun lt!858536 () Conc!9033)

(assert (=> b!2316010 (= lt!858536 call!137643)))

(declare-fun c!367099 () Bool)

(declare-fun call!137651 () Int)

(declare-fun call!137647 () Int)

(assert (=> b!2316010 (= c!367099 (= call!137651 (- call!137647 3)))))

(declare-fun b!2316011 () Bool)

(declare-fun res!989573 () Bool)

(declare-fun e!1484782 () Bool)

(assert (=> b!2316011 (=> (not res!989573) (not e!1484782))))

(declare-fun lt!858533 () Conc!9033)

(assert (=> b!2316011 (= res!989573 (isBalanced!2727 lt!858533))))

(declare-fun c!367093 () Bool)

(declare-fun bm!137639 () Bool)

(assert (=> bm!137639 (= call!137645 (++!6758 (ite c!367094 (ite c!367093 (right!21276 acc!252) (right!21276 (right!21276 acc!252))) acc!252) (ite c!367094 (Leaf!13259 lt!858508 512) (ite c!367095 (left!20946 (Leaf!13259 lt!858508 512)) (left!20946 (left!20946 (Leaf!13259 lt!858508 512)))))))))

(declare-fun b!2316012 () Bool)

(declare-fun c!367097 () Bool)

(declare-fun lt!858535 () Int)

(assert (=> b!2316012 (= c!367097 (and (<= (- 1) lt!858535) (<= lt!858535 1)))))

(assert (=> b!2316012 (= lt!858535 (- (height!1310 (Leaf!13259 lt!858508 512)) (height!1310 acc!252)))))

(declare-fun e!1484776 () Conc!9033)

(assert (=> b!2316012 (= e!1484784 e!1484776)))

(declare-fun bm!137640 () Bool)

(declare-fun call!137656 () Conc!9033)

(declare-fun call!137653 () Conc!9033)

(assert (=> bm!137640 (= call!137656 call!137653)))

(declare-fun b!2316013 () Bool)

(assert (=> b!2316013 (= c!367093 (>= call!137647 call!137651))))

(declare-fun e!1484781 () Conc!9033)

(assert (=> b!2316013 (= e!1484777 e!1484781)))

(declare-fun b!2316014 () Bool)

(assert (=> b!2316014 (= e!1484784 acc!252)))

(declare-fun b!2316015 () Bool)

(declare-fun e!1484783 () Conc!9033)

(declare-fun call!137641 () Conc!9033)

(assert (=> b!2316015 (= e!1484783 call!137641)))

(declare-fun bm!137641 () Bool)

(assert (=> bm!137641 (= call!137651 (height!1310 (ite c!367094 (right!21276 acc!252) lt!858536)))))

(declare-fun b!2316016 () Bool)

(assert (=> b!2316016 (= e!1484776 call!137653)))

(declare-fun bm!137642 () Bool)

(declare-fun call!137652 () Conc!9033)

(assert (=> bm!137642 (= call!137652 call!137645)))

(declare-fun b!2316017 () Bool)

(assert (=> b!2316017 (= e!1484776 e!1484777)))

(assert (=> b!2316017 (= c!367094 (< lt!858535 (- 1)))))

(declare-fun b!2316018 () Bool)

(assert (=> b!2316018 (= e!1484783 call!137641)))

(declare-fun bm!137643 () Bool)

(declare-fun call!137648 () Conc!9033)

(assert (=> bm!137643 (= call!137654 call!137648)))

(declare-fun c!367100 () Bool)

(declare-fun bm!137644 () Bool)

(declare-fun <>!200 (Conc!9033 Conc!9033) Conc!9033)

(assert (=> bm!137644 (= call!137653 (<>!200 (ite c!367097 acc!252 (ite c!367094 (ite c!367093 (left!20946 acc!252) (ite c!367100 (left!20946 (right!21276 acc!252)) (left!20946 acc!252))) (ite c!367095 call!137643 (ite c!367099 lt!858536 (right!21276 (left!20946 (Leaf!13259 lt!858508 512))))))) (ite c!367097 (Leaf!13259 lt!858508 512) (ite c!367094 (ite c!367093 call!137652 (ite c!367100 lt!858534 (left!20946 (right!21276 acc!252)))) (ite c!367095 (right!21276 (Leaf!13259 lt!858508 512)) (ite c!367099 (right!21276 (left!20946 (Leaf!13259 lt!858508 512))) (right!21276 (Leaf!13259 lt!858508 512))))))))))

(declare-fun bm!137645 () Bool)

(assert (=> bm!137645 (= call!137641 call!137648)))

(declare-fun b!2316019 () Bool)

(declare-fun res!989571 () Bool)

(assert (=> b!2316019 (=> (not res!989571) (not e!1484782))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2316019 (= res!989571 (<= (height!1310 lt!858533) (+ (max!0 (height!1310 acc!252) (height!1310 (Leaf!13259 lt!858508 512))) 1)))))

(declare-fun bm!137646 () Bool)

(assert (=> bm!137646 (= call!137647 (height!1310 (ite c!367094 (left!20946 acc!252) (Leaf!13259 lt!858508 512))))))

(declare-fun b!2316020 () Bool)

(declare-fun call!137644 () Conc!9033)

(assert (=> b!2316020 (= e!1484781 call!137644)))

(declare-fun call!137650 () Conc!9033)

(declare-fun bm!137647 () Bool)

(declare-fun call!137655 () Conc!9033)

(assert (=> bm!137647 (= call!137648 (<>!200 (ite c!367094 (ite c!367100 (left!20946 acc!252) call!137655) (ite c!367099 call!137650 lt!858536)) (ite c!367094 (ite c!367100 call!137655 lt!858534) (ite c!367099 (right!21276 (Leaf!13259 lt!858508 512)) call!137650))))))

(declare-fun bm!137648 () Bool)

(assert (=> bm!137648 (= call!137644 call!137656)))

(declare-fun b!2316021 () Bool)

(declare-fun res!989572 () Bool)

(assert (=> b!2316021 (=> (not res!989572) (not e!1484782))))

(assert (=> b!2316021 (= res!989572 (>= (height!1310 lt!858533) (max!0 (height!1310 acc!252) (height!1310 (Leaf!13259 lt!858508 512)))))))

(declare-fun b!2316022 () Bool)

(declare-fun call!137642 () Conc!9033)

(assert (=> b!2316022 (= e!1484779 call!137642)))

(declare-fun bm!137649 () Bool)

(assert (=> bm!137649 (= call!137650 call!137642)))

(declare-fun bm!137650 () Bool)

(assert (=> bm!137650 (= call!137655 call!137644)))

(declare-fun bm!137651 () Bool)

(assert (=> bm!137651 (= call!137642 call!137656)))

(declare-fun b!2316008 () Bool)

(declare-fun list!10938 (Conc!9033) List!27726)

(declare-fun ++!6760 (List!27726 List!27726) List!27726)

(assert (=> b!2316008 (= e!1484782 (= (list!10938 lt!858533) (++!6760 (list!10938 acc!252) (list!10938 (Leaf!13259 lt!858508 512)))))))

(declare-fun d!684782 () Bool)

(assert (=> d!684782 e!1484782))

(declare-fun res!989569 () Bool)

(assert (=> d!684782 (=> (not res!989569) (not e!1484782))))

(declare-fun appendAssocInst!594 (Conc!9033 Conc!9033) Bool)

(assert (=> d!684782 (= res!989569 (appendAssocInst!594 acc!252 (Leaf!13259 lt!858508 512)))))

(assert (=> d!684782 (= lt!858533 e!1484785)))

(declare-fun c!367098 () Bool)

(assert (=> d!684782 (= c!367098 (= acc!252 Empty!9033))))

(assert (=> d!684782 e!1484780))

(declare-fun res!989570 () Bool)

(assert (=> d!684782 (=> (not res!989570) (not e!1484780))))

(assert (=> d!684782 (= res!989570 (isBalanced!2727 acc!252))))

(assert (=> d!684782 (= (++!6758 acc!252 (Leaf!13259 lt!858508 512)) lt!858533)))

(declare-fun b!2316023 () Bool)

(assert (=> b!2316023 (= e!1484781 e!1484783)))

(assert (=> b!2316023 (= lt!858534 call!137652)))

(assert (=> b!2316023 (= c!367100 (= call!137646 (- call!137649 3)))))

(declare-fun b!2316024 () Bool)

(assert (=> b!2316024 (= e!1484785 (Leaf!13259 lt!858508 512))))

(assert (= (and d!684782 res!989570) b!2316007))

(assert (= (and d!684782 c!367098) b!2316024))

(assert (= (and d!684782 (not c!367098)) b!2316009))

(assert (= (and b!2316009 c!367096) b!2316014))

(assert (= (and b!2316009 (not c!367096)) b!2316012))

(assert (= (and b!2316012 c!367097) b!2316016))

(assert (= (and b!2316012 (not c!367097)) b!2316017))

(assert (= (and b!2316017 c!367094) b!2316013))

(assert (= (and b!2316017 (not c!367094)) b!2316006))

(assert (= (and b!2316013 c!367093) b!2316020))

(assert (= (and b!2316013 (not c!367093)) b!2316023))

(assert (= (and b!2316023 c!367100) b!2316015))

(assert (= (and b!2316023 (not c!367100)) b!2316018))

(assert (= (or b!2316015 b!2316018) bm!137650))

(assert (= (or b!2316015 b!2316018) bm!137645))

(assert (= (or b!2316020 b!2316023) bm!137642))

(assert (= (or b!2316020 bm!137650) bm!137648))

(assert (= (and b!2316006 c!367095) b!2316022))

(assert (= (and b!2316006 (not c!367095)) b!2316010))

(assert (= (and b!2316010 c!367099) b!2316004))

(assert (= (and b!2316010 (not c!367099)) b!2316005))

(assert (= (or b!2316004 b!2316005) bm!137649))

(assert (= (or b!2316004 b!2316005) bm!137643))

(assert (= (or b!2316022 b!2316010) bm!137638))

(assert (= (or b!2316022 bm!137649) bm!137651))

(assert (= (or bm!137645 bm!137643) bm!137647))

(assert (= (or bm!137642 bm!137638) bm!137639))

(assert (= (or b!2316013 b!2316010) bm!137641))

(assert (= (or b!2316023 b!2316006) bm!137637))

(assert (= (or bm!137648 bm!137651) bm!137640))

(assert (= (or b!2316023 b!2316006) bm!137636))

(assert (= (or b!2316013 b!2316010) bm!137646))

(assert (= (or b!2316016 bm!137640) bm!137644))

(assert (= (and d!684782 res!989569) b!2316011))

(assert (= (and b!2316011 res!989573) b!2316019))

(assert (= (and b!2316019 res!989571) b!2316021))

(assert (= (and b!2316021 res!989572) b!2316008))

(declare-fun m!2743043 () Bool)

(assert (=> d!684782 m!2743043))

(assert (=> d!684782 m!2742929))

(declare-fun m!2743045 () Bool)

(assert (=> b!2316007 m!2743045))

(declare-fun m!2743047 () Bool)

(assert (=> bm!137636 m!2743047))

(declare-fun m!2743049 () Bool)

(assert (=> b!2316008 m!2743049))

(declare-fun m!2743051 () Bool)

(assert (=> b!2316008 m!2743051))

(declare-fun m!2743053 () Bool)

(assert (=> b!2316008 m!2743053))

(assert (=> b!2316008 m!2743051))

(assert (=> b!2316008 m!2743053))

(declare-fun m!2743055 () Bool)

(assert (=> b!2316008 m!2743055))

(declare-fun m!2743057 () Bool)

(assert (=> bm!137637 m!2743057))

(declare-fun m!2743059 () Bool)

(assert (=> b!2316012 m!2743059))

(declare-fun m!2743061 () Bool)

(assert (=> b!2316012 m!2743061))

(declare-fun m!2743063 () Bool)

(assert (=> b!2316019 m!2743063))

(assert (=> b!2316019 m!2743061))

(assert (=> b!2316019 m!2743059))

(assert (=> b!2316019 m!2743061))

(assert (=> b!2316019 m!2743059))

(declare-fun m!2743065 () Bool)

(assert (=> b!2316019 m!2743065))

(declare-fun m!2743067 () Bool)

(assert (=> bm!137647 m!2743067))

(declare-fun m!2743069 () Bool)

(assert (=> b!2316011 m!2743069))

(declare-fun m!2743071 () Bool)

(assert (=> bm!137644 m!2743071))

(declare-fun m!2743073 () Bool)

(assert (=> bm!137639 m!2743073))

(assert (=> b!2316021 m!2743063))

(assert (=> b!2316021 m!2743061))

(assert (=> b!2316021 m!2743059))

(assert (=> b!2316021 m!2743061))

(assert (=> b!2316021 m!2743059))

(assert (=> b!2316021 m!2743065))

(declare-fun m!2743075 () Bool)

(assert (=> bm!137641 m!2743075))

(declare-fun m!2743077 () Bool)

(assert (=> bm!137646 m!2743077))

(assert (=> b!2315833 d!684782))

(declare-fun d!684788 () Bool)

(declare-fun lt!858546 () IArray!18071)

(declare-fun slice!649 (List!27726 Int Int) List!27726)

(assert (=> d!684788 (= lt!858546 (IArray!18072 (slice!649 (list!10936 arr!18) 512 lt!858509)))))

(declare-fun choose!13549 (IArray!18071 Int Int) IArray!18071)

(assert (=> d!684788 (= lt!858546 (choose!13549 arr!18 512 lt!858509))))

(declare-fun e!1484801 () Bool)

(assert (=> d!684788 e!1484801))

(declare-fun res!989582 () Bool)

(assert (=> d!684788 (=> (not res!989582) (not e!1484801))))

(assert (=> d!684788 (= res!989582 (and (<= 0 512) (<= 512 lt!858509)))))

(assert (=> d!684788 (= (slice!647 arr!18 512 lt!858509) lt!858546)))

(declare-fun b!2316050 () Bool)

(assert (=> b!2316050 (= e!1484801 (<= lt!858509 (size!21850 arr!18)))))

(assert (= (and d!684788 res!989582) b!2316050))

(assert (=> d!684788 m!2742959))

(assert (=> d!684788 m!2742959))

(declare-fun m!2743101 () Bool)

(assert (=> d!684788 m!2743101))

(declare-fun m!2743103 () Bool)

(assert (=> d!684788 m!2743103))

(assert (=> b!2316050 m!2742925))

(assert (=> b!2315833 d!684788))

(declare-fun d!684798 () Bool)

(declare-fun lt!858547 () IArray!18071)

(assert (=> d!684798 (= lt!858547 (IArray!18072 (slice!649 (list!10936 arr!18) 0 512)))))

(assert (=> d!684798 (= lt!858547 (choose!13549 arr!18 0 512))))

(declare-fun e!1484804 () Bool)

(assert (=> d!684798 e!1484804))

(declare-fun res!989583 () Bool)

(assert (=> d!684798 (=> (not res!989583) (not e!1484804))))

(assert (=> d!684798 (= res!989583 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!684798 (= (slice!647 arr!18 0 512) lt!858547)))

(declare-fun b!2316051 () Bool)

(assert (=> b!2316051 (= e!1484804 (<= 512 (size!21850 arr!18)))))

(assert (= (and d!684798 res!989583) b!2316051))

(assert (=> d!684798 m!2742959))

(assert (=> d!684798 m!2742959))

(declare-fun m!2743105 () Bool)

(assert (=> d!684798 m!2743105))

(declare-fun m!2743107 () Bool)

(assert (=> d!684798 m!2743107))

(assert (=> b!2316051 m!2742925))

(assert (=> b!2315833 d!684798))

(declare-fun b!2316052 () Bool)

(declare-fun res!989587 () Bool)

(declare-fun e!1484806 () Bool)

(assert (=> b!2316052 (=> (not res!989587) (not e!1484806))))

(assert (=> b!2316052 (= res!989587 (not (isEmpty!15764 (left!20946 acc!252))))))

(declare-fun d!684800 () Bool)

(declare-fun res!989589 () Bool)

(declare-fun e!1484805 () Bool)

(assert (=> d!684800 (=> res!989589 e!1484805)))

(assert (=> d!684800 (= res!989589 (not ((_ is Node!9033) acc!252)))))

(assert (=> d!684800 (= (isBalanced!2727 acc!252) e!1484805)))

(declare-fun b!2316053 () Bool)

(assert (=> b!2316053 (= e!1484806 (not (isEmpty!15764 (right!21276 acc!252))))))

(declare-fun b!2316054 () Bool)

(assert (=> b!2316054 (= e!1484805 e!1484806)))

(declare-fun res!989586 () Bool)

(assert (=> b!2316054 (=> (not res!989586) (not e!1484806))))

(assert (=> b!2316054 (= res!989586 (<= (- 1) (- (height!1310 (left!20946 acc!252)) (height!1310 (right!21276 acc!252)))))))

(declare-fun b!2316055 () Bool)

(declare-fun res!989585 () Bool)

(assert (=> b!2316055 (=> (not res!989585) (not e!1484806))))

(assert (=> b!2316055 (= res!989585 (isBalanced!2727 (left!20946 acc!252)))))

(declare-fun b!2316056 () Bool)

(declare-fun res!989584 () Bool)

(assert (=> b!2316056 (=> (not res!989584) (not e!1484806))))

(assert (=> b!2316056 (= res!989584 (isBalanced!2727 (right!21276 acc!252)))))

(declare-fun b!2316057 () Bool)

(declare-fun res!989588 () Bool)

(assert (=> b!2316057 (=> (not res!989588) (not e!1484806))))

(assert (=> b!2316057 (= res!989588 (<= (- (height!1310 (left!20946 acc!252)) (height!1310 (right!21276 acc!252))) 1))))

(assert (= (and d!684800 (not res!989589)) b!2316054))

(assert (= (and b!2316054 res!989586) b!2316057))

(assert (= (and b!2316057 res!989588) b!2316055))

(assert (= (and b!2316055 res!989585) b!2316056))

(assert (= (and b!2316056 res!989584) b!2316052))

(assert (= (and b!2316052 res!989587) b!2316053))

(declare-fun m!2743109 () Bool)

(assert (=> b!2316056 m!2743109))

(declare-fun m!2743111 () Bool)

(assert (=> b!2316057 m!2743111))

(declare-fun m!2743115 () Bool)

(assert (=> b!2316057 m!2743115))

(declare-fun m!2743117 () Bool)

(assert (=> b!2316052 m!2743117))

(declare-fun m!2743121 () Bool)

(assert (=> b!2316053 m!2743121))

(assert (=> b!2316054 m!2743111))

(assert (=> b!2316054 m!2743115))

(declare-fun m!2743125 () Bool)

(assert (=> b!2316055 m!2743125))

(assert (=> start!228522 d!684800))

(declare-fun d!684802 () Bool)

(declare-fun c!367103 () Bool)

(assert (=> d!684802 (= c!367103 ((_ is Node!9033) acc!252))))

(declare-fun e!1484811 () Bool)

(assert (=> d!684802 (= (inv!37456 acc!252) e!1484811)))

(declare-fun b!2316064 () Bool)

(assert (=> b!2316064 (= e!1484811 (inv!37457 acc!252))))

(declare-fun b!2316065 () Bool)

(declare-fun e!1484812 () Bool)

(assert (=> b!2316065 (= e!1484811 e!1484812)))

(declare-fun res!989590 () Bool)

(assert (=> b!2316065 (= res!989590 (not ((_ is Leaf!13259) acc!252)))))

(assert (=> b!2316065 (=> res!989590 e!1484812)))

(declare-fun b!2316066 () Bool)

(assert (=> b!2316066 (= e!1484812 (inv!37458 acc!252))))

(assert (= (and d!684802 c!367103) b!2316064))

(assert (= (and d!684802 (not c!367103)) b!2316065))

(assert (= (and b!2316065 (not res!989590)) b!2316066))

(declare-fun m!2743129 () Bool)

(assert (=> b!2316064 m!2743129))

(declare-fun m!2743133 () Bool)

(assert (=> b!2316066 m!2743133))

(assert (=> start!228522 d!684802))

(declare-fun d!684804 () Bool)

(assert (=> d!684804 (= (inv!37455 arr!18) (<= (size!21852 (innerList!9093 arr!18)) 2147483647))))

(declare-fun bs!458835 () Bool)

(assert (= bs!458835 d!684804))

(declare-fun m!2743137 () Bool)

(assert (=> bs!458835 m!2743137))

(assert (=> start!228522 d!684804))

(declare-fun b!2316076 () Bool)

(declare-fun e!1484818 () Bool)

(declare-fun tp!735628 () Bool)

(declare-fun tp!735627 () Bool)

(assert (=> b!2316076 (= e!1484818 (and (inv!37456 (left!20946 (left!20946 acc!252))) tp!735627 (inv!37456 (right!21276 (left!20946 acc!252))) tp!735628))))

(declare-fun b!2316078 () Bool)

(declare-fun e!1484819 () Bool)

(declare-fun tp!735626 () Bool)

(assert (=> b!2316078 (= e!1484819 tp!735626)))

(declare-fun b!2316077 () Bool)

(assert (=> b!2316077 (= e!1484818 (and (inv!37455 (xs!11977 (left!20946 acc!252))) e!1484819))))

(assert (=> b!2315834 (= tp!735600 (and (inv!37456 (left!20946 acc!252)) e!1484818))))

(assert (= (and b!2315834 ((_ is Node!9033) (left!20946 acc!252))) b!2316076))

(assert (= b!2316077 b!2316078))

(assert (= (and b!2315834 ((_ is Leaf!13259) (left!20946 acc!252))) b!2316077))

(declare-fun m!2743139 () Bool)

(assert (=> b!2316076 m!2743139))

(declare-fun m!2743141 () Bool)

(assert (=> b!2316076 m!2743141))

(declare-fun m!2743143 () Bool)

(assert (=> b!2316077 m!2743143))

(assert (=> b!2315834 m!2742935))

(declare-fun tp!735631 () Bool)

(declare-fun e!1484820 () Bool)

(declare-fun tp!735630 () Bool)

(declare-fun b!2316079 () Bool)

(assert (=> b!2316079 (= e!1484820 (and (inv!37456 (left!20946 (right!21276 acc!252))) tp!735630 (inv!37456 (right!21276 (right!21276 acc!252))) tp!735631))))

(declare-fun b!2316081 () Bool)

(declare-fun e!1484821 () Bool)

(declare-fun tp!735629 () Bool)

(assert (=> b!2316081 (= e!1484821 tp!735629)))

(declare-fun b!2316080 () Bool)

(assert (=> b!2316080 (= e!1484820 (and (inv!37455 (xs!11977 (right!21276 acc!252))) e!1484821))))

(assert (=> b!2315834 (= tp!735602 (and (inv!37456 (right!21276 acc!252)) e!1484820))))

(assert (= (and b!2315834 ((_ is Node!9033) (right!21276 acc!252))) b!2316079))

(assert (= b!2316080 b!2316081))

(assert (= (and b!2315834 ((_ is Leaf!13259) (right!21276 acc!252))) b!2316080))

(declare-fun m!2743145 () Bool)

(assert (=> b!2316079 m!2743145))

(declare-fun m!2743147 () Bool)

(assert (=> b!2316079 m!2743147))

(declare-fun m!2743149 () Bool)

(assert (=> b!2316080 m!2743149))

(assert (=> b!2315834 m!2742937))

(declare-fun b!2316086 () Bool)

(declare-fun e!1484824 () Bool)

(declare-fun tp_is_empty!10785 () Bool)

(declare-fun tp!735634 () Bool)

(assert (=> b!2316086 (= e!1484824 (and tp_is_empty!10785 tp!735634))))

(assert (=> b!2315835 (= tp!735603 e!1484824)))

(assert (= (and b!2315835 ((_ is Cons!27628) (innerList!9093 (xs!11977 acc!252)))) b!2316086))

(declare-fun b!2316087 () Bool)

(declare-fun e!1484825 () Bool)

(declare-fun tp!735635 () Bool)

(assert (=> b!2316087 (= e!1484825 (and tp_is_empty!10785 tp!735635))))

(assert (=> b!2315832 (= tp!735601 e!1484825)))

(assert (= (and b!2315832 ((_ is Cons!27628) (innerList!9093 arr!18))) b!2316087))

(check-sat (not b!2315885) (not b!2316052) tp_is_empty!10785 (not b!2316077) (not b!2316054) (not b!2316081) (not b!2316080) (not b!2315888) (not bm!137641) (not b!2316087) (not bm!137639) (not bm!137647) (not d!684804) (not b!2315889) (not b!2316019) (not bm!137646) (not b!2316076) (not d!684772) (not b!2316051) (not b!2315845) (not b!2316007) (not b!2316064) (not d!684782) (not b!2315847) (not b!2316079) (not bm!137644) (not b!2315887) (not b!2316021) (not b!2316057) (not b!2315842) (not b!2316066) (not bm!137637) (not d!684770) (not b!2315884) (not b!2316056) (not b!2316078) (not d!684788) (not d!684798) (not b!2316050) (not b!2316008) (not b!2316053) (not b!2315834) (not bm!137636) (not b!2316012) (not b!2315844) (not b!2316011) (not b!2315886) (not b!2316055) (not b!2316086))
(check-sat)
