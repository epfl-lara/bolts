; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105948 () Bool)

(assert start!105948)

(declare-fun b!1191648 () Bool)

(declare-fun res!538307 () Bool)

(declare-fun e!765976 () Bool)

(assert (=> b!1191648 (=> (not res!538307) (not e!765976))))

(declare-datatypes ((T!21516 0))(
  ( (T!21517 (val!3850 Int)) )
))
(declare-datatypes ((List!12029 0))(
  ( (Nil!12005) (Cons!12005 (h!17406 T!21516) (t!112263 List!12029)) )
))
(declare-datatypes ((IArray!7881 0))(
  ( (IArray!7882 (innerList!3998 List!12029)) )
))
(declare-datatypes ((Conc!3938 0))(
  ( (Node!3938 (left!10455 Conc!3938) (right!10785 Conc!3938) (csize!8106 Int) (cheight!4149 Int)) (Leaf!6032 (xs!6643 IArray!7881) (csize!8107 Int)) (Empty!3938) )
))
(declare-fun t!4115 () Conc!3938)

(declare-fun isBalanced!1123 (Conc!3938) Bool)

(assert (=> b!1191648 (= res!538307 (isBalanced!1123 t!4115))))

(declare-fun b!1191649 () Bool)

(declare-fun res!538306 () Bool)

(assert (=> b!1191649 (=> (not res!538306) (not e!765976))))

(declare-fun until!31 () Int)

(declare-fun size!9494 (Conc!3938) Int)

(assert (=> b!1191649 (= res!538306 (<= until!31 (size!9494 t!4115)))))

(declare-fun b!1191650 () Bool)

(declare-fun e!765973 () Bool)

(declare-fun e!765975 () Bool)

(declare-fun inv!15914 (IArray!7881) Bool)

(assert (=> b!1191650 (= e!765973 (and (inv!15914 (xs!6643 t!4115)) e!765975))))

(declare-fun b!1191651 () Bool)

(declare-fun tp!340009 () Bool)

(assert (=> b!1191651 (= e!765975 tp!340009)))

(declare-fun lt!409377 () List!12029)

(declare-fun from!553 () Int)

(declare-fun call!82723 () List!12029)

(declare-fun lt!409378 () Int)

(declare-fun e!765978 () List!12029)

(declare-fun b!1191652 () Bool)

(declare-fun ++!3038 (List!12029 List!12029) List!12029)

(declare-fun slice!416 (List!12029 Int Int) List!12029)

(assert (=> b!1191652 (= e!765978 (++!3038 (slice!416 lt!409377 from!553 lt!409378) call!82723))))

(declare-fun b!1191653 () Bool)

(declare-fun e!765977 () Bool)

(declare-fun lt!409379 () List!12029)

(assert (=> b!1191653 (= e!765977 (= lt!409379 e!765978))))

(declare-fun c!197761 () Bool)

(assert (=> b!1191653 (= c!197761 (<= until!31 lt!409378))))

(declare-fun b!1191654 () Bool)

(declare-fun e!765974 () Bool)

(assert (=> b!1191654 (= e!765976 (not e!765974))))

(declare-fun res!538308 () Bool)

(assert (=> b!1191654 (=> res!538308 e!765974)))

(declare-fun lt!409380 () Int)

(assert (=> b!1191654 (= res!538308 (> lt!409380 from!553))))

(assert (=> b!1191654 (= lt!409380 (size!9494 (left!10455 t!4115)))))

(assert (=> b!1191654 e!765977))

(declare-fun c!197762 () Bool)

(assert (=> b!1191654 (= c!197762 (<= lt!409378 from!553))))

(declare-fun lt!409381 () List!12029)

(assert (=> b!1191654 (= lt!409379 (slice!416 (++!3038 lt!409377 lt!409381) from!553 until!31))))

(declare-fun size!9495 (List!12029) Int)

(assert (=> b!1191654 (= lt!409378 (size!9495 lt!409377))))

(declare-datatypes ((Unit!18416 0))(
  ( (Unit!18417) )
))
(declare-fun lt!409382 () Unit!18416)

(declare-fun sliceLemma!19 (List!12029 List!12029 Int Int) Unit!18416)

(assert (=> b!1191654 (= lt!409382 (sliceLemma!19 lt!409377 lt!409381 from!553 until!31))))

(declare-fun list!4419 (Conc!3938) List!12029)

(assert (=> b!1191654 (= lt!409381 (list!4419 (right!10785 t!4115)))))

(assert (=> b!1191654 (= lt!409377 (list!4419 (left!10455 t!4115)))))

(declare-fun bm!82718 () Bool)

(declare-fun call!82724 () List!12029)

(assert (=> bm!82718 (= call!82723 call!82724)))

(declare-fun b!1191655 () Bool)

(assert (=> b!1191655 (= e!765977 (= lt!409379 call!82724))))

(declare-fun res!538309 () Bool)

(assert (=> start!105948 (=> (not res!538309) (not e!765976))))

(assert (=> start!105948 (= res!538309 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> start!105948 e!765976))

(assert (=> start!105948 true))

(declare-fun inv!15915 (Conc!3938) Bool)

(assert (=> start!105948 (and (inv!15915 t!4115) e!765973)))

(declare-fun tp!340008 () Bool)

(declare-fun b!1191656 () Bool)

(declare-fun tp!340007 () Bool)

(assert (=> b!1191656 (= e!765973 (and (inv!15915 (left!10455 t!4115)) tp!340008 (inv!15915 (right!10785 t!4115)) tp!340007))))

(declare-fun bm!82719 () Bool)

(assert (=> bm!82719 (= call!82724 (slice!416 (ite c!197762 lt!409381 (ite c!197761 lt!409377 lt!409381)) (ite c!197762 (- from!553 lt!409378) (ite c!197761 from!553 0)) (ite c!197762 (- until!31 lt!409378) (ite c!197761 until!31 (- until!31 lt!409378)))))))

(declare-fun b!1191657 () Bool)

(assert (=> b!1191657 (= e!765978 call!82723)))

(declare-fun b!1191658 () Bool)

(assert (=> b!1191658 (= e!765974 (<= until!31 (size!9495 (list!4419 t!4115))))))

(declare-fun b!1191659 () Bool)

(declare-fun res!538310 () Bool)

(assert (=> b!1191659 (=> res!538310 e!765974)))

(declare-fun slice!417 (Conc!3938 Int Int) Conc!3938)

(assert (=> b!1191659 (= res!538310 (not (isBalanced!1123 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))))))

(declare-fun b!1191660 () Bool)

(declare-fun res!538305 () Bool)

(assert (=> b!1191660 (=> (not res!538305) (not e!765976))))

(get-info :version)

(assert (=> b!1191660 (= res!538305 (and (not (= from!553 until!31)) (not ((_ is Leaf!6032) t!4115)) ((_ is Node!3938) t!4115)))))

(assert (= (and start!105948 res!538309) b!1191649))

(assert (= (and b!1191649 res!538306) b!1191648))

(assert (= (and b!1191648 res!538307) b!1191660))

(assert (= (and b!1191660 res!538305) b!1191654))

(assert (= (and b!1191654 c!197762) b!1191655))

(assert (= (and b!1191654 (not c!197762)) b!1191653))

(assert (= (and b!1191653 c!197761) b!1191657))

(assert (= (and b!1191653 (not c!197761)) b!1191652))

(assert (= (or b!1191657 b!1191652) bm!82718))

(assert (= (or b!1191655 bm!82718) bm!82719))

(assert (= (and b!1191654 (not res!538308)) b!1191659))

(assert (= (and b!1191659 (not res!538310)) b!1191658))

(assert (= (and start!105948 ((_ is Node!3938) t!4115)) b!1191656))

(assert (= b!1191650 b!1191651))

(assert (= (and start!105948 ((_ is Leaf!6032) t!4115)) b!1191650))

(declare-fun m!1366571 () Bool)

(assert (=> b!1191654 m!1366571))

(declare-fun m!1366573 () Bool)

(assert (=> b!1191654 m!1366573))

(declare-fun m!1366575 () Bool)

(assert (=> b!1191654 m!1366575))

(declare-fun m!1366577 () Bool)

(assert (=> b!1191654 m!1366577))

(assert (=> b!1191654 m!1366575))

(declare-fun m!1366579 () Bool)

(assert (=> b!1191654 m!1366579))

(declare-fun m!1366581 () Bool)

(assert (=> b!1191654 m!1366581))

(declare-fun m!1366583 () Bool)

(assert (=> b!1191654 m!1366583))

(declare-fun m!1366585 () Bool)

(assert (=> start!105948 m!1366585))

(declare-fun m!1366587 () Bool)

(assert (=> b!1191648 m!1366587))

(declare-fun m!1366589 () Bool)

(assert (=> bm!82719 m!1366589))

(declare-fun m!1366591 () Bool)

(assert (=> b!1191659 m!1366591))

(assert (=> b!1191659 m!1366591))

(declare-fun m!1366593 () Bool)

(assert (=> b!1191659 m!1366593))

(declare-fun m!1366595 () Bool)

(assert (=> b!1191656 m!1366595))

(declare-fun m!1366597 () Bool)

(assert (=> b!1191656 m!1366597))

(declare-fun m!1366599 () Bool)

(assert (=> b!1191658 m!1366599))

(assert (=> b!1191658 m!1366599))

(declare-fun m!1366601 () Bool)

(assert (=> b!1191658 m!1366601))

(declare-fun m!1366603 () Bool)

(assert (=> b!1191652 m!1366603))

(assert (=> b!1191652 m!1366603))

(declare-fun m!1366605 () Bool)

(assert (=> b!1191652 m!1366605))

(declare-fun m!1366607 () Bool)

(assert (=> b!1191649 m!1366607))

(declare-fun m!1366609 () Bool)

(assert (=> b!1191650 m!1366609))

(check-sat (not start!105948) (not b!1191656) (not b!1191654) (not b!1191648) (not b!1191651) (not b!1191659) (not b!1191650) (not b!1191649) (not b!1191652) (not bm!82719) (not b!1191658))
(check-sat)
(get-model)

(declare-fun d!340472 () Bool)

(assert (=> d!340472 (= (inv!15914 (xs!6643 t!4115)) (<= (size!9495 (innerList!3998 (xs!6643 t!4115))) 2147483647))))

(declare-fun bs!287911 () Bool)

(assert (= bs!287911 d!340472))

(declare-fun m!1366611 () Bool)

(assert (=> bs!287911 m!1366611))

(assert (=> b!1191650 d!340472))

(declare-fun b!1191673 () Bool)

(declare-fun res!538324 () Bool)

(declare-fun e!765984 () Bool)

(assert (=> b!1191673 (=> (not res!538324) (not e!765984))))

(assert (=> b!1191673 (= res!538324 (isBalanced!1123 (right!10785 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))))))

(declare-fun b!1191674 () Bool)

(declare-fun res!538328 () Bool)

(assert (=> b!1191674 (=> (not res!538328) (not e!765984))))

(declare-fun height!536 (Conc!3938) Int)

(assert (=> b!1191674 (= res!538328 (<= (- (height!536 (left!10455 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))) (height!536 (right!10785 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380))))) 1))))

(declare-fun b!1191675 () Bool)

(declare-fun isEmpty!7217 (Conc!3938) Bool)

(assert (=> b!1191675 (= e!765984 (not (isEmpty!7217 (right!10785 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380))))))))

(declare-fun b!1191676 () Bool)

(declare-fun res!538327 () Bool)

(assert (=> b!1191676 (=> (not res!538327) (not e!765984))))

(assert (=> b!1191676 (= res!538327 (isBalanced!1123 (left!10455 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))))))

(declare-fun b!1191677 () Bool)

(declare-fun res!538326 () Bool)

(assert (=> b!1191677 (=> (not res!538326) (not e!765984))))

(assert (=> b!1191677 (= res!538326 (not (isEmpty!7217 (left!10455 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380))))))))

(declare-fun b!1191678 () Bool)

(declare-fun e!765983 () Bool)

(assert (=> b!1191678 (= e!765983 e!765984)))

(declare-fun res!538325 () Bool)

(assert (=> b!1191678 (=> (not res!538325) (not e!765984))))

(assert (=> b!1191678 (= res!538325 (<= (- 1) (- (height!536 (left!10455 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))) (height!536 (right!10785 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))))))))

(declare-fun d!340474 () Bool)

(declare-fun res!538323 () Bool)

(assert (=> d!340474 (=> res!538323 e!765983)))

(assert (=> d!340474 (= res!538323 (not ((_ is Node!3938) (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)))))))

(assert (=> d!340474 (= (isBalanced!1123 (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380))) e!765983)))

(assert (= (and d!340474 (not res!538323)) b!1191678))

(assert (= (and b!1191678 res!538325) b!1191674))

(assert (= (and b!1191674 res!538328) b!1191676))

(assert (= (and b!1191676 res!538327) b!1191673))

(assert (= (and b!1191673 res!538324) b!1191677))

(assert (= (and b!1191677 res!538326) b!1191675))

(declare-fun m!1366613 () Bool)

(assert (=> b!1191675 m!1366613))

(declare-fun m!1366615 () Bool)

(assert (=> b!1191673 m!1366615))

(declare-fun m!1366617 () Bool)

(assert (=> b!1191676 m!1366617))

(declare-fun m!1366619 () Bool)

(assert (=> b!1191674 m!1366619))

(declare-fun m!1366621 () Bool)

(assert (=> b!1191674 m!1366621))

(declare-fun m!1366623 () Bool)

(assert (=> b!1191677 m!1366623))

(assert (=> b!1191678 m!1366619))

(assert (=> b!1191678 m!1366621))

(assert (=> b!1191659 d!340474))

(declare-fun b!1191800 () Bool)

(declare-fun call!82743 () Int)

(declare-fun e!766047 () Int)

(assert (=> b!1191800 (= e!766047 (- (- until!31 lt!409380) call!82743))))

(declare-fun bm!82738 () Bool)

(declare-fun c!197813 () Bool)

(declare-fun c!197810 () Bool)

(assert (=> bm!82738 (= c!197813 c!197810)))

(declare-fun call!82746 () List!12029)

(declare-fun call!82745 () List!12029)

(assert (=> bm!82738 (= call!82746 call!82745)))

(declare-fun b!1191801 () Bool)

(declare-fun e!766055 () Conc!3938)

(declare-fun call!82744 () Conc!3938)

(assert (=> b!1191801 (= e!766055 call!82744)))

(declare-fun b!1191802 () Bool)

(declare-fun e!766046 () Conc!3938)

(assert (=> b!1191802 (= e!766046 Empty!3938)))

(declare-fun b!1191803 () Bool)

(declare-fun e!766054 () Conc!3938)

(assert (=> b!1191803 (= e!766055 e!766054)))

(declare-fun c!197809 () Bool)

(declare-fun call!82747 () Int)

(assert (=> b!1191803 (= c!197809 (<= (- until!31 lt!409380) call!82747))))

(declare-fun b!1191804 () Bool)

(declare-fun slice!418 (IArray!7881 Int Int) IArray!7881)

(assert (=> b!1191804 (= e!766046 (Leaf!6032 (slice!418 (xs!6643 (right!10785 t!4115)) (- from!553 lt!409380) (- until!31 lt!409380)) (- (- until!31 lt!409380) (- from!553 lt!409380))))))

(declare-fun bm!82740 () Bool)

(declare-fun lt!409409 () List!12029)

(assert (=> bm!82740 (= call!82743 (size!9495 lt!409409))))

(declare-fun b!1191805 () Bool)

(declare-fun e!766049 () List!12029)

(assert (=> b!1191805 (= e!766049 (++!3038 (slice!416 lt!409409 (- from!553 lt!409380) call!82743) call!82746))))

(declare-fun c!197814 () Bool)

(declare-fun b!1191806 () Bool)

(assert (=> b!1191806 (= c!197814 (= (- (- until!31 lt!409380) (- from!553 lt!409380)) 0))))

(declare-fun e!766050 () Conc!3938)

(assert (=> b!1191806 (= e!766050 e!766046)))

(declare-fun call!82748 () Conc!3938)

(declare-fun b!1191807 () Bool)

(declare-fun ++!3039 (Conc!3938 Conc!3938) Conc!3938)

(assert (=> b!1191807 (= e!766054 (++!3039 (slice!417 (left!10455 (right!10785 t!4115)) (- from!553 lt!409380) call!82747) call!82748))))

(declare-fun b!1191808 () Bool)

(declare-fun lt!409407 () Conc!3938)

(declare-fun e!766056 () Bool)

(assert (=> b!1191808 (= e!766056 (= (list!4419 lt!409407) (slice!416 (list!4419 (right!10785 t!4115)) (- from!553 lt!409380) (- until!31 lt!409380))))))

(declare-fun b!1191809 () Bool)

(declare-fun e!766052 () Int)

(assert (=> b!1191809 (= e!766052 (- (- until!31 lt!409380) call!82747))))

(declare-fun b!1191810 () Bool)

(declare-fun e!766053 () Conc!3938)

(assert (=> b!1191810 (= e!766053 Empty!3938)))

(declare-fun b!1191811 () Bool)

(assert (=> b!1191811 (= e!766054 call!82748)))

(declare-fun b!1191812 () Bool)

(declare-fun e!766051 () List!12029)

(assert (=> b!1191812 (= e!766051 call!82745)))

(declare-fun b!1191813 () Bool)

(assert (=> b!1191813 (= e!766051 e!766049)))

(assert (=> b!1191813 (= c!197810 (<= (- until!31 lt!409380) call!82743))))

(declare-fun b!1191814 () Bool)

(assert (=> b!1191814 (= e!766047 (- until!31 lt!409380))))

(declare-fun lt!409406 () List!12029)

(declare-fun c!197812 () Bool)

(declare-fun bm!82739 () Bool)

(assert (=> bm!82739 (= call!82745 (slice!416 (ite c!197812 lt!409406 (ite c!197810 lt!409409 lt!409406)) (ite c!197812 (- (- from!553 lt!409380) call!82743) (ite c!197810 (- from!553 lt!409380) 0)) (ite c!197812 (- (- until!31 lt!409380) call!82743) e!766047)))))

(declare-fun d!340478 () Bool)

(assert (=> d!340478 e!766056))

(declare-fun res!538364 () Bool)

(assert (=> d!340478 (=> (not res!538364) (not e!766056))))

(assert (=> d!340478 (= res!538364 (isBalanced!1123 lt!409407))))

(assert (=> d!340478 (= lt!409407 e!766053)))

(declare-fun c!197808 () Bool)

(assert (=> d!340478 (= c!197808 (= (- from!553 lt!409380) (- until!31 lt!409380)))))

(declare-fun e!766048 () Bool)

(assert (=> d!340478 e!766048))

(declare-fun res!538366 () Bool)

(assert (=> d!340478 (=> (not res!538366) (not e!766048))))

(assert (=> d!340478 (= res!538366 (and (<= 0 (- from!553 lt!409380)) (<= (- from!553 lt!409380) (- until!31 lt!409380))))))

(assert (=> d!340478 (= (slice!417 (right!10785 t!4115) (- from!553 lt!409380) (- until!31 lt!409380)) lt!409407)))

(declare-fun b!1191815 () Bool)

(assert (=> b!1191815 (= e!766048 (isBalanced!1123 (right!10785 t!4115)))))

(declare-fun b!1191816 () Bool)

(assert (=> b!1191816 (= e!766053 e!766050)))

(declare-fun c!197811 () Bool)

(assert (=> b!1191816 (= c!197811 ((_ is Leaf!6032) (right!10785 t!4115)))))

(declare-fun b!1191817 () Bool)

(declare-fun res!538365 () Bool)

(assert (=> b!1191817 (=> (not res!538365) (not e!766048))))

(assert (=> b!1191817 (= res!538365 (<= (- until!31 lt!409380) (size!9494 (right!10785 t!4115))))))

(declare-fun bm!82741 () Bool)

(declare-fun c!197807 () Bool)

(assert (=> bm!82741 (= c!197807 c!197809)))

(assert (=> bm!82741 (= call!82748 call!82744)))

(declare-fun b!1191818 () Bool)

(declare-fun c!197806 () Bool)

(assert (=> b!1191818 (= c!197806 (<= (size!9494 (left!10455 (right!10785 t!4115))) (- from!553 lt!409380)))))

(declare-fun lt!409408 () Unit!18416)

(declare-fun lt!409405 () Unit!18416)

(assert (=> b!1191818 (= lt!409408 lt!409405)))

(assert (=> b!1191818 (= (slice!416 (++!3038 lt!409409 lt!409406) (- from!553 lt!409380) (- until!31 lt!409380)) e!766051)))

(assert (=> b!1191818 (= c!197812 (<= (size!9495 lt!409409) (- from!553 lt!409380)))))

(assert (=> b!1191818 (= lt!409405 (sliceLemma!19 lt!409409 lt!409406 (- from!553 lt!409380) (- until!31 lt!409380)))))

(assert (=> b!1191818 (= lt!409406 (list!4419 (right!10785 (right!10785 t!4115))))))

(assert (=> b!1191818 (= lt!409409 (list!4419 (left!10455 (right!10785 t!4115))))))

(assert (=> b!1191818 (= e!766050 e!766055)))

(declare-fun bm!82742 () Bool)

(assert (=> bm!82742 (= call!82747 (size!9494 (left!10455 (right!10785 t!4115))))))

(declare-fun b!1191819 () Bool)

(assert (=> b!1191819 (= e!766049 call!82746)))

(declare-fun b!1191820 () Bool)

(assert (=> b!1191820 (= e!766052 (- until!31 lt!409380))))

(declare-fun bm!82743 () Bool)

(assert (=> bm!82743 (= call!82744 (slice!417 (ite c!197806 (right!10785 (right!10785 t!4115)) (ite c!197809 (left!10455 (right!10785 t!4115)) (right!10785 (right!10785 t!4115)))) (ite c!197806 (- (- from!553 lt!409380) call!82747) (ite c!197809 (- from!553 lt!409380) 0)) (ite c!197806 (- (- until!31 lt!409380) call!82747) e!766052)))))

(assert (= (and d!340478 res!538366) b!1191817))

(assert (= (and b!1191817 res!538365) b!1191815))

(assert (= (and d!340478 c!197808) b!1191810))

(assert (= (and d!340478 (not c!197808)) b!1191816))

(assert (= (and b!1191816 c!197811) b!1191806))

(assert (= (and b!1191816 (not c!197811)) b!1191818))

(assert (= (and b!1191806 c!197814) b!1191802))

(assert (= (and b!1191806 (not c!197814)) b!1191804))

(assert (= (and b!1191818 c!197812) b!1191812))

(assert (= (and b!1191818 (not c!197812)) b!1191813))

(assert (= (and b!1191813 c!197810) b!1191819))

(assert (= (and b!1191813 (not c!197810)) b!1191805))

(assert (= (or b!1191819 b!1191805) bm!82738))

(assert (= (and bm!82738 c!197813) b!1191814))

(assert (= (and bm!82738 (not c!197813)) b!1191800))

(assert (= (or b!1191812 b!1191800 b!1191805 b!1191813) bm!82740))

(assert (= (or b!1191812 bm!82738) bm!82739))

(assert (= (and b!1191818 c!197806) b!1191801))

(assert (= (and b!1191818 (not c!197806)) b!1191803))

(assert (= (and b!1191803 c!197809) b!1191811))

(assert (= (and b!1191803 (not c!197809)) b!1191807))

(assert (= (or b!1191811 b!1191807) bm!82741))

(assert (= (and bm!82741 c!197807) b!1191820))

(assert (= (and bm!82741 (not c!197807)) b!1191809))

(assert (= (or b!1191801 b!1191803 b!1191807 b!1191809) bm!82742))

(assert (= (or b!1191801 bm!82741) bm!82743))

(assert (= (and d!340478 res!538364) b!1191808))

(declare-fun m!1366693 () Bool)

(assert (=> bm!82742 m!1366693))

(declare-fun m!1366695 () Bool)

(assert (=> b!1191805 m!1366695))

(assert (=> b!1191805 m!1366695))

(declare-fun m!1366697 () Bool)

(assert (=> b!1191805 m!1366697))

(declare-fun m!1366699 () Bool)

(assert (=> b!1191807 m!1366699))

(assert (=> b!1191807 m!1366699))

(declare-fun m!1366701 () Bool)

(assert (=> b!1191807 m!1366701))

(declare-fun m!1366703 () Bool)

(assert (=> bm!82739 m!1366703))

(declare-fun m!1366705 () Bool)

(assert (=> bm!82743 m!1366705))

(declare-fun m!1366707 () Bool)

(assert (=> b!1191818 m!1366707))

(declare-fun m!1366709 () Bool)

(assert (=> b!1191818 m!1366709))

(declare-fun m!1366711 () Bool)

(assert (=> b!1191818 m!1366711))

(declare-fun m!1366713 () Bool)

(assert (=> b!1191818 m!1366713))

(declare-fun m!1366715 () Bool)

(assert (=> b!1191818 m!1366715))

(assert (=> b!1191818 m!1366711))

(declare-fun m!1366717 () Bool)

(assert (=> b!1191818 m!1366717))

(assert (=> b!1191818 m!1366693))

(declare-fun m!1366719 () Bool)

(assert (=> b!1191817 m!1366719))

(assert (=> bm!82740 m!1366717))

(declare-fun m!1366721 () Bool)

(assert (=> b!1191804 m!1366721))

(declare-fun m!1366723 () Bool)

(assert (=> b!1191808 m!1366723))

(assert (=> b!1191808 m!1366581))

(assert (=> b!1191808 m!1366581))

(declare-fun m!1366725 () Bool)

(assert (=> b!1191808 m!1366725))

(declare-fun m!1366727 () Bool)

(assert (=> d!340478 m!1366727))

(declare-fun m!1366729 () Bool)

(assert (=> b!1191815 m!1366729))

(assert (=> b!1191659 d!340478))

(declare-fun d!340506 () Bool)

(declare-fun c!197822 () Bool)

(assert (=> d!340506 (= c!197822 ((_ is Node!3938) (left!10455 t!4115)))))

(declare-fun e!766070 () Bool)

(assert (=> d!340506 (= (inv!15915 (left!10455 t!4115)) e!766070)))

(declare-fun b!1191846 () Bool)

(declare-fun inv!15918 (Conc!3938) Bool)

(assert (=> b!1191846 (= e!766070 (inv!15918 (left!10455 t!4115)))))

(declare-fun b!1191847 () Bool)

(declare-fun e!766071 () Bool)

(assert (=> b!1191847 (= e!766070 e!766071)))

(declare-fun res!538378 () Bool)

(assert (=> b!1191847 (= res!538378 (not ((_ is Leaf!6032) (left!10455 t!4115))))))

(assert (=> b!1191847 (=> res!538378 e!766071)))

(declare-fun b!1191848 () Bool)

(declare-fun inv!15919 (Conc!3938) Bool)

(assert (=> b!1191848 (= e!766071 (inv!15919 (left!10455 t!4115)))))

(assert (= (and d!340506 c!197822) b!1191846))

(assert (= (and d!340506 (not c!197822)) b!1191847))

(assert (= (and b!1191847 (not res!538378)) b!1191848))

(declare-fun m!1366765 () Bool)

(assert (=> b!1191846 m!1366765))

(declare-fun m!1366767 () Bool)

(assert (=> b!1191848 m!1366767))

(assert (=> b!1191656 d!340506))

(declare-fun d!340516 () Bool)

(declare-fun c!197823 () Bool)

(assert (=> d!340516 (= c!197823 ((_ is Node!3938) (right!10785 t!4115)))))

(declare-fun e!766072 () Bool)

(assert (=> d!340516 (= (inv!15915 (right!10785 t!4115)) e!766072)))

(declare-fun b!1191849 () Bool)

(assert (=> b!1191849 (= e!766072 (inv!15918 (right!10785 t!4115)))))

(declare-fun b!1191850 () Bool)

(declare-fun e!766073 () Bool)

(assert (=> b!1191850 (= e!766072 e!766073)))

(declare-fun res!538379 () Bool)

(assert (=> b!1191850 (= res!538379 (not ((_ is Leaf!6032) (right!10785 t!4115))))))

(assert (=> b!1191850 (=> res!538379 e!766073)))

(declare-fun b!1191851 () Bool)

(assert (=> b!1191851 (= e!766073 (inv!15919 (right!10785 t!4115)))))

(assert (= (and d!340516 c!197823) b!1191849))

(assert (= (and d!340516 (not c!197823)) b!1191850))

(assert (= (and b!1191850 (not res!538379)) b!1191851))

(declare-fun m!1366769 () Bool)

(assert (=> b!1191849 m!1366769))

(declare-fun m!1366771 () Bool)

(assert (=> b!1191851 m!1366771))

(assert (=> b!1191656 d!340516))

(declare-fun b!1191862 () Bool)

(declare-fun res!538384 () Bool)

(declare-fun e!766078 () Bool)

(assert (=> b!1191862 (=> (not res!538384) (not e!766078))))

(declare-fun lt!409415 () List!12029)

(assert (=> b!1191862 (= res!538384 (= (size!9495 lt!409415) (+ (size!9495 (slice!416 lt!409377 from!553 lt!409378)) (size!9495 call!82723))))))

(declare-fun d!340518 () Bool)

(assert (=> d!340518 e!766078))

(declare-fun res!538385 () Bool)

(assert (=> d!340518 (=> (not res!538385) (not e!766078))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1662 (List!12029) (InoxSet T!21516))

(assert (=> d!340518 (= res!538385 (= (content!1662 lt!409415) ((_ map or) (content!1662 (slice!416 lt!409377 from!553 lt!409378)) (content!1662 call!82723))))))

(declare-fun e!766079 () List!12029)

(assert (=> d!340518 (= lt!409415 e!766079)))

(declare-fun c!197826 () Bool)

(assert (=> d!340518 (= c!197826 ((_ is Nil!12005) (slice!416 lt!409377 from!553 lt!409378)))))

(assert (=> d!340518 (= (++!3038 (slice!416 lt!409377 from!553 lt!409378) call!82723) lt!409415)))

(declare-fun b!1191861 () Bool)

(assert (=> b!1191861 (= e!766079 (Cons!12005 (h!17406 (slice!416 lt!409377 from!553 lt!409378)) (++!3038 (t!112263 (slice!416 lt!409377 from!553 lt!409378)) call!82723)))))

(declare-fun b!1191863 () Bool)

(assert (=> b!1191863 (= e!766078 (or (not (= call!82723 Nil!12005)) (= lt!409415 (slice!416 lt!409377 from!553 lt!409378))))))

(declare-fun b!1191860 () Bool)

(assert (=> b!1191860 (= e!766079 call!82723)))

(assert (= (and d!340518 c!197826) b!1191860))

(assert (= (and d!340518 (not c!197826)) b!1191861))

(assert (= (and d!340518 res!538385) b!1191862))

(assert (= (and b!1191862 res!538384) b!1191863))

(declare-fun m!1366773 () Bool)

(assert (=> b!1191862 m!1366773))

(assert (=> b!1191862 m!1366603))

(declare-fun m!1366775 () Bool)

(assert (=> b!1191862 m!1366775))

(declare-fun m!1366777 () Bool)

(assert (=> b!1191862 m!1366777))

(declare-fun m!1366779 () Bool)

(assert (=> d!340518 m!1366779))

(assert (=> d!340518 m!1366603))

(declare-fun m!1366781 () Bool)

(assert (=> d!340518 m!1366781))

(declare-fun m!1366783 () Bool)

(assert (=> d!340518 m!1366783))

(declare-fun m!1366785 () Bool)

(assert (=> b!1191861 m!1366785))

(assert (=> b!1191652 d!340518))

(declare-fun d!340520 () Bool)

(declare-fun take!103 (List!12029 Int) List!12029)

(declare-fun drop!575 (List!12029 Int) List!12029)

(assert (=> d!340520 (= (slice!416 lt!409377 from!553 lt!409378) (take!103 (drop!575 lt!409377 from!553) (- lt!409378 from!553)))))

(declare-fun bs!287918 () Bool)

(assert (= bs!287918 d!340520))

(declare-fun m!1366787 () Bool)

(assert (=> bs!287918 m!1366787))

(assert (=> bs!287918 m!1366787))

(declare-fun m!1366789 () Bool)

(assert (=> bs!287918 m!1366789))

(assert (=> b!1191652 d!340520))

(declare-fun d!340522 () Bool)

(assert (=> d!340522 (= (slice!416 (ite c!197762 lt!409381 (ite c!197761 lt!409377 lt!409381)) (ite c!197762 (- from!553 lt!409378) (ite c!197761 from!553 0)) (ite c!197762 (- until!31 lt!409378) (ite c!197761 until!31 (- until!31 lt!409378)))) (take!103 (drop!575 (ite c!197762 lt!409381 (ite c!197761 lt!409377 lt!409381)) (ite c!197762 (- from!553 lt!409378) (ite c!197761 from!553 0))) (- (ite c!197762 (- until!31 lt!409378) (ite c!197761 until!31 (- until!31 lt!409378))) (ite c!197762 (- from!553 lt!409378) (ite c!197761 from!553 0)))))))

(declare-fun bs!287919 () Bool)

(assert (= bs!287919 d!340522))

(declare-fun m!1366791 () Bool)

(assert (=> bs!287919 m!1366791))

(assert (=> bs!287919 m!1366791))

(declare-fun m!1366793 () Bool)

(assert (=> bs!287919 m!1366793))

(assert (=> bm!82719 d!340522))

(declare-fun b!1191864 () Bool)

(declare-fun res!538387 () Bool)

(declare-fun e!766081 () Bool)

(assert (=> b!1191864 (=> (not res!538387) (not e!766081))))

(assert (=> b!1191864 (= res!538387 (isBalanced!1123 (right!10785 t!4115)))))

(declare-fun b!1191865 () Bool)

(declare-fun res!538391 () Bool)

(assert (=> b!1191865 (=> (not res!538391) (not e!766081))))

(assert (=> b!1191865 (= res!538391 (<= (- (height!536 (left!10455 t!4115)) (height!536 (right!10785 t!4115))) 1))))

(declare-fun b!1191866 () Bool)

(assert (=> b!1191866 (= e!766081 (not (isEmpty!7217 (right!10785 t!4115))))))

(declare-fun b!1191867 () Bool)

(declare-fun res!538390 () Bool)

(assert (=> b!1191867 (=> (not res!538390) (not e!766081))))

(assert (=> b!1191867 (= res!538390 (isBalanced!1123 (left!10455 t!4115)))))

(declare-fun b!1191868 () Bool)

(declare-fun res!538389 () Bool)

(assert (=> b!1191868 (=> (not res!538389) (not e!766081))))

(assert (=> b!1191868 (= res!538389 (not (isEmpty!7217 (left!10455 t!4115))))))

(declare-fun b!1191869 () Bool)

(declare-fun e!766080 () Bool)

(assert (=> b!1191869 (= e!766080 e!766081)))

(declare-fun res!538388 () Bool)

(assert (=> b!1191869 (=> (not res!538388) (not e!766081))))

(assert (=> b!1191869 (= res!538388 (<= (- 1) (- (height!536 (left!10455 t!4115)) (height!536 (right!10785 t!4115)))))))

(declare-fun d!340524 () Bool)

(declare-fun res!538386 () Bool)

(assert (=> d!340524 (=> res!538386 e!766080)))

(assert (=> d!340524 (= res!538386 (not ((_ is Node!3938) t!4115)))))

(assert (=> d!340524 (= (isBalanced!1123 t!4115) e!766080)))

(assert (= (and d!340524 (not res!538386)) b!1191869))

(assert (= (and b!1191869 res!538388) b!1191865))

(assert (= (and b!1191865 res!538391) b!1191867))

(assert (= (and b!1191867 res!538390) b!1191864))

(assert (= (and b!1191864 res!538387) b!1191868))

(assert (= (and b!1191868 res!538389) b!1191866))

(declare-fun m!1366795 () Bool)

(assert (=> b!1191866 m!1366795))

(assert (=> b!1191864 m!1366729))

(declare-fun m!1366797 () Bool)

(assert (=> b!1191867 m!1366797))

(declare-fun m!1366799 () Bool)

(assert (=> b!1191865 m!1366799))

(declare-fun m!1366801 () Bool)

(assert (=> b!1191865 m!1366801))

(declare-fun m!1366803 () Bool)

(assert (=> b!1191868 m!1366803))

(assert (=> b!1191869 m!1366799))

(assert (=> b!1191869 m!1366801))

(assert (=> b!1191648 d!340524))

(declare-fun d!340526 () Bool)

(declare-fun c!197827 () Bool)

(assert (=> d!340526 (= c!197827 ((_ is Node!3938) t!4115))))

(declare-fun e!766082 () Bool)

(assert (=> d!340526 (= (inv!15915 t!4115) e!766082)))

(declare-fun b!1191870 () Bool)

(assert (=> b!1191870 (= e!766082 (inv!15918 t!4115))))

(declare-fun b!1191871 () Bool)

(declare-fun e!766083 () Bool)

(assert (=> b!1191871 (= e!766082 e!766083)))

(declare-fun res!538392 () Bool)

(assert (=> b!1191871 (= res!538392 (not ((_ is Leaf!6032) t!4115)))))

(assert (=> b!1191871 (=> res!538392 e!766083)))

(declare-fun b!1191872 () Bool)

(assert (=> b!1191872 (= e!766083 (inv!15919 t!4115))))

(assert (= (and d!340526 c!197827) b!1191870))

(assert (= (and d!340526 (not c!197827)) b!1191871))

(assert (= (and b!1191871 (not res!538392)) b!1191872))

(declare-fun m!1366805 () Bool)

(assert (=> b!1191870 m!1366805))

(declare-fun m!1366807 () Bool)

(assert (=> b!1191872 m!1366807))

(assert (=> start!105948 d!340526))

(declare-fun d!340528 () Bool)

(declare-fun lt!409418 () Int)

(assert (=> d!340528 (= lt!409418 (size!9495 (list!4419 (left!10455 t!4115))))))

(assert (=> d!340528 (= lt!409418 (ite ((_ is Empty!3938) (left!10455 t!4115)) 0 (ite ((_ is Leaf!6032) (left!10455 t!4115)) (csize!8107 (left!10455 t!4115)) (csize!8106 (left!10455 t!4115)))))))

(assert (=> d!340528 (= (size!9494 (left!10455 t!4115)) lt!409418)))

(declare-fun bs!287920 () Bool)

(assert (= bs!287920 d!340528))

(assert (=> bs!287920 m!1366571))

(assert (=> bs!287920 m!1366571))

(declare-fun m!1366809 () Bool)

(assert (=> bs!287920 m!1366809))

(assert (=> b!1191654 d!340528))

(declare-fun d!340530 () Bool)

(declare-fun lt!409421 () Int)

(assert (=> d!340530 (>= lt!409421 0)))

(declare-fun e!766086 () Int)

(assert (=> d!340530 (= lt!409421 e!766086)))

(declare-fun c!197830 () Bool)

(assert (=> d!340530 (= c!197830 ((_ is Nil!12005) lt!409377))))

(assert (=> d!340530 (= (size!9495 lt!409377) lt!409421)))

(declare-fun b!1191877 () Bool)

(assert (=> b!1191877 (= e!766086 0)))

(declare-fun b!1191878 () Bool)

(assert (=> b!1191878 (= e!766086 (+ 1 (size!9495 (t!112263 lt!409377))))))

(assert (= (and d!340530 c!197830) b!1191877))

(assert (= (and d!340530 (not c!197830)) b!1191878))

(declare-fun m!1366811 () Bool)

(assert (=> b!1191878 m!1366811))

(assert (=> b!1191654 d!340530))

(declare-fun d!340532 () Bool)

(declare-fun c!197853 () Bool)

(assert (=> d!340532 (= c!197853 ((_ is Empty!3938) (right!10785 t!4115)))))

(declare-fun e!766111 () List!12029)

(assert (=> d!340532 (= (list!4419 (right!10785 t!4115)) e!766111)))

(declare-fun b!1191930 () Bool)

(declare-fun e!766112 () List!12029)

(assert (=> b!1191930 (= e!766112 (++!3038 (list!4419 (left!10455 (right!10785 t!4115))) (list!4419 (right!10785 (right!10785 t!4115)))))))

(declare-fun b!1191929 () Bool)

(declare-fun list!4421 (IArray!7881) List!12029)

(assert (=> b!1191929 (= e!766112 (list!4421 (xs!6643 (right!10785 t!4115))))))

(declare-fun b!1191927 () Bool)

(assert (=> b!1191927 (= e!766111 Nil!12005)))

(declare-fun b!1191928 () Bool)

(assert (=> b!1191928 (= e!766111 e!766112)))

(declare-fun c!197854 () Bool)

(assert (=> b!1191928 (= c!197854 ((_ is Leaf!6032) (right!10785 t!4115)))))

(assert (= (and d!340532 c!197853) b!1191927))

(assert (= (and d!340532 (not c!197853)) b!1191928))

(assert (= (and b!1191928 c!197854) b!1191929))

(assert (= (and b!1191928 (not c!197854)) b!1191930))

(assert (=> b!1191930 m!1366709))

(assert (=> b!1191930 m!1366707))

(assert (=> b!1191930 m!1366709))

(assert (=> b!1191930 m!1366707))

(declare-fun m!1366813 () Bool)

(assert (=> b!1191930 m!1366813))

(declare-fun m!1366815 () Bool)

(assert (=> b!1191929 m!1366815))

(assert (=> b!1191654 d!340532))

(declare-fun d!340534 () Bool)

(assert (=> d!340534 (= (slice!416 (++!3038 lt!409377 lt!409381) from!553 until!31) (take!103 (drop!575 (++!3038 lt!409377 lt!409381) from!553) (- until!31 from!553)))))

(declare-fun bs!287921 () Bool)

(assert (= bs!287921 d!340534))

(assert (=> bs!287921 m!1366575))

(declare-fun m!1366817 () Bool)

(assert (=> bs!287921 m!1366817))

(assert (=> bs!287921 m!1366817))

(declare-fun m!1366819 () Bool)

(assert (=> bs!287921 m!1366819))

(assert (=> b!1191654 d!340534))

(declare-fun d!340536 () Bool)

(declare-fun e!766151 () List!12029)

(assert (=> d!340536 (= (slice!416 (++!3038 lt!409377 lt!409381) from!553 until!31) e!766151)))

(declare-fun c!197872 () Bool)

(assert (=> d!340536 (= c!197872 (<= (size!9495 lt!409377) from!553))))

(declare-fun lt!409439 () Unit!18416)

(declare-fun choose!7704 (List!12029 List!12029 Int Int) Unit!18416)

(assert (=> d!340536 (= lt!409439 (choose!7704 lt!409377 lt!409381 from!553 until!31))))

(declare-fun e!766150 () Bool)

(assert (=> d!340536 e!766150))

(declare-fun res!538406 () Bool)

(assert (=> d!340536 (=> (not res!538406) (not e!766150))))

(assert (=> d!340536 (= res!538406 (and (<= 0 from!553) (<= from!553 until!31)))))

(assert (=> d!340536 (= (sliceLemma!19 lt!409377 lt!409381 from!553 until!31) lt!409439)))

(declare-fun b!1191993 () Bool)

(assert (=> b!1191993 (= e!766150 (<= until!31 (+ (size!9495 lt!409377) (size!9495 lt!409381))))))

(declare-fun b!1191994 () Bool)

(declare-fun e!766149 () Int)

(assert (=> b!1191994 (= e!766149 until!31)))

(declare-fun call!82777 () List!12029)

(declare-fun call!82776 () Int)

(declare-fun e!766152 () List!12029)

(declare-fun b!1191995 () Bool)

(assert (=> b!1191995 (= e!766152 (++!3038 call!82777 (slice!416 lt!409381 0 (- until!31 call!82776))))))

(declare-fun bm!82771 () Bool)

(assert (=> bm!82771 (= call!82776 (size!9495 lt!409377))))

(declare-fun b!1191996 () Bool)

(assert (=> b!1191996 (= e!766151 e!766152)))

(declare-fun c!197873 () Bool)

(assert (=> b!1191996 (= c!197873 (<= until!31 call!82776))))

(declare-fun b!1191997 () Bool)

(declare-fun call!82778 () List!12029)

(assert (=> b!1191997 (= e!766151 call!82778)))

(declare-fun b!1191998 () Bool)

(assert (=> b!1191998 (= e!766149 call!82776)))

(declare-fun b!1191999 () Bool)

(assert (=> b!1191999 (= e!766152 call!82777)))

(declare-fun bm!82772 () Bool)

(declare-fun c!197874 () Bool)

(assert (=> bm!82772 (= c!197874 c!197873)))

(assert (=> bm!82772 (= call!82777 call!82778)))

(declare-fun bm!82773 () Bool)

(assert (=> bm!82773 (= call!82778 (slice!416 (ite c!197872 lt!409381 lt!409377) (ite c!197872 (- from!553 call!82776) from!553) (ite c!197872 (- until!31 call!82776) e!766149)))))

(assert (= (and d!340536 res!538406) b!1191993))

(assert (= (and d!340536 c!197872) b!1191997))

(assert (= (and d!340536 (not c!197872)) b!1191996))

(assert (= (and b!1191996 c!197873) b!1191999))

(assert (= (and b!1191996 (not c!197873)) b!1191995))

(assert (= (or b!1191999 b!1191995) bm!82772))

(assert (= (and bm!82772 c!197874) b!1191994))

(assert (= (and bm!82772 (not c!197874)) b!1191998))

(assert (= (or b!1191997 b!1191995 b!1191996 b!1191998) bm!82771))

(assert (= (or b!1191997 bm!82772) bm!82773))

(declare-fun m!1366873 () Bool)

(assert (=> b!1191995 m!1366873))

(assert (=> b!1191995 m!1366873))

(declare-fun m!1366875 () Bool)

(assert (=> b!1191995 m!1366875))

(assert (=> b!1191993 m!1366573))

(declare-fun m!1366877 () Bool)

(assert (=> b!1191993 m!1366877))

(declare-fun m!1366879 () Bool)

(assert (=> bm!82773 m!1366879))

(assert (=> bm!82771 m!1366573))

(assert (=> d!340536 m!1366575))

(assert (=> d!340536 m!1366575))

(assert (=> d!340536 m!1366577))

(assert (=> d!340536 m!1366573))

(declare-fun m!1366881 () Bool)

(assert (=> d!340536 m!1366881))

(assert (=> b!1191654 d!340536))

(declare-fun d!340542 () Bool)

(declare-fun c!197875 () Bool)

(assert (=> d!340542 (= c!197875 ((_ is Empty!3938) (left!10455 t!4115)))))

(declare-fun e!766153 () List!12029)

(assert (=> d!340542 (= (list!4419 (left!10455 t!4115)) e!766153)))

(declare-fun b!1192003 () Bool)

(declare-fun e!766154 () List!12029)

(assert (=> b!1192003 (= e!766154 (++!3038 (list!4419 (left!10455 (left!10455 t!4115))) (list!4419 (right!10785 (left!10455 t!4115)))))))

(declare-fun b!1192002 () Bool)

(assert (=> b!1192002 (= e!766154 (list!4421 (xs!6643 (left!10455 t!4115))))))

(declare-fun b!1192000 () Bool)

(assert (=> b!1192000 (= e!766153 Nil!12005)))

(declare-fun b!1192001 () Bool)

(assert (=> b!1192001 (= e!766153 e!766154)))

(declare-fun c!197876 () Bool)

(assert (=> b!1192001 (= c!197876 ((_ is Leaf!6032) (left!10455 t!4115)))))

(assert (= (and d!340542 c!197875) b!1192000))

(assert (= (and d!340542 (not c!197875)) b!1192001))

(assert (= (and b!1192001 c!197876) b!1192002))

(assert (= (and b!1192001 (not c!197876)) b!1192003))

(declare-fun m!1366883 () Bool)

(assert (=> b!1192003 m!1366883))

(declare-fun m!1366885 () Bool)

(assert (=> b!1192003 m!1366885))

(assert (=> b!1192003 m!1366883))

(assert (=> b!1192003 m!1366885))

(declare-fun m!1366887 () Bool)

(assert (=> b!1192003 m!1366887))

(declare-fun m!1366889 () Bool)

(assert (=> b!1192002 m!1366889))

(assert (=> b!1191654 d!340542))

(declare-fun b!1192006 () Bool)

(declare-fun res!538407 () Bool)

(declare-fun e!766155 () Bool)

(assert (=> b!1192006 (=> (not res!538407) (not e!766155))))

(declare-fun lt!409440 () List!12029)

(assert (=> b!1192006 (= res!538407 (= (size!9495 lt!409440) (+ (size!9495 lt!409377) (size!9495 lt!409381))))))

(declare-fun d!340544 () Bool)

(assert (=> d!340544 e!766155))

(declare-fun res!538408 () Bool)

(assert (=> d!340544 (=> (not res!538408) (not e!766155))))

(assert (=> d!340544 (= res!538408 (= (content!1662 lt!409440) ((_ map or) (content!1662 lt!409377) (content!1662 lt!409381))))))

(declare-fun e!766156 () List!12029)

(assert (=> d!340544 (= lt!409440 e!766156)))

(declare-fun c!197877 () Bool)

(assert (=> d!340544 (= c!197877 ((_ is Nil!12005) lt!409377))))

(assert (=> d!340544 (= (++!3038 lt!409377 lt!409381) lt!409440)))

(declare-fun b!1192005 () Bool)

(assert (=> b!1192005 (= e!766156 (Cons!12005 (h!17406 lt!409377) (++!3038 (t!112263 lt!409377) lt!409381)))))

(declare-fun b!1192007 () Bool)

(assert (=> b!1192007 (= e!766155 (or (not (= lt!409381 Nil!12005)) (= lt!409440 lt!409377)))))

(declare-fun b!1192004 () Bool)

(assert (=> b!1192004 (= e!766156 lt!409381)))

(assert (= (and d!340544 c!197877) b!1192004))

(assert (= (and d!340544 (not c!197877)) b!1192005))

(assert (= (and d!340544 res!538408) b!1192006))

(assert (= (and b!1192006 res!538407) b!1192007))

(declare-fun m!1366891 () Bool)

(assert (=> b!1192006 m!1366891))

(assert (=> b!1192006 m!1366573))

(assert (=> b!1192006 m!1366877))

(declare-fun m!1366893 () Bool)

(assert (=> d!340544 m!1366893))

(declare-fun m!1366895 () Bool)

(assert (=> d!340544 m!1366895))

(declare-fun m!1366897 () Bool)

(assert (=> d!340544 m!1366897))

(declare-fun m!1366899 () Bool)

(assert (=> b!1192005 m!1366899))

(assert (=> b!1191654 d!340544))

(declare-fun d!340546 () Bool)

(declare-fun lt!409441 () Int)

(assert (=> d!340546 (= lt!409441 (size!9495 (list!4419 t!4115)))))

(assert (=> d!340546 (= lt!409441 (ite ((_ is Empty!3938) t!4115) 0 (ite ((_ is Leaf!6032) t!4115) (csize!8107 t!4115) (csize!8106 t!4115))))))

(assert (=> d!340546 (= (size!9494 t!4115) lt!409441)))

(declare-fun bs!287922 () Bool)

(assert (= bs!287922 d!340546))

(assert (=> bs!287922 m!1366599))

(assert (=> bs!287922 m!1366599))

(assert (=> bs!287922 m!1366601))

(assert (=> b!1191649 d!340546))

(declare-fun d!340548 () Bool)

(declare-fun lt!409442 () Int)

(assert (=> d!340548 (>= lt!409442 0)))

(declare-fun e!766157 () Int)

(assert (=> d!340548 (= lt!409442 e!766157)))

(declare-fun c!197878 () Bool)

(assert (=> d!340548 (= c!197878 ((_ is Nil!12005) (list!4419 t!4115)))))

(assert (=> d!340548 (= (size!9495 (list!4419 t!4115)) lt!409442)))

(declare-fun b!1192008 () Bool)

(assert (=> b!1192008 (= e!766157 0)))

(declare-fun b!1192009 () Bool)

(assert (=> b!1192009 (= e!766157 (+ 1 (size!9495 (t!112263 (list!4419 t!4115)))))))

(assert (= (and d!340548 c!197878) b!1192008))

(assert (= (and d!340548 (not c!197878)) b!1192009))

(declare-fun m!1366901 () Bool)

(assert (=> b!1192009 m!1366901))

(assert (=> b!1191658 d!340548))

(declare-fun d!340550 () Bool)

(declare-fun c!197879 () Bool)

(assert (=> d!340550 (= c!197879 ((_ is Empty!3938) t!4115))))

(declare-fun e!766158 () List!12029)

(assert (=> d!340550 (= (list!4419 t!4115) e!766158)))

(declare-fun b!1192013 () Bool)

(declare-fun e!766159 () List!12029)

(assert (=> b!1192013 (= e!766159 (++!3038 (list!4419 (left!10455 t!4115)) (list!4419 (right!10785 t!4115))))))

(declare-fun b!1192012 () Bool)

(assert (=> b!1192012 (= e!766159 (list!4421 (xs!6643 t!4115)))))

(declare-fun b!1192010 () Bool)

(assert (=> b!1192010 (= e!766158 Nil!12005)))

(declare-fun b!1192011 () Bool)

(assert (=> b!1192011 (= e!766158 e!766159)))

(declare-fun c!197880 () Bool)

(assert (=> b!1192011 (= c!197880 ((_ is Leaf!6032) t!4115))))

(assert (= (and d!340550 c!197879) b!1192010))

(assert (= (and d!340550 (not c!197879)) b!1192011))

(assert (= (and b!1192011 c!197880) b!1192012))

(assert (= (and b!1192011 (not c!197880)) b!1192013))

(assert (=> b!1192013 m!1366571))

(assert (=> b!1192013 m!1366581))

(assert (=> b!1192013 m!1366571))

(assert (=> b!1192013 m!1366581))

(declare-fun m!1366903 () Bool)

(assert (=> b!1192013 m!1366903))

(declare-fun m!1366905 () Bool)

(assert (=> b!1192012 m!1366905))

(assert (=> b!1191658 d!340550))

(declare-fun b!1192018 () Bool)

(declare-fun e!766162 () Bool)

(declare-fun tp_is_empty!5911 () Bool)

(declare-fun tp!340027 () Bool)

(assert (=> b!1192018 (= e!766162 (and tp_is_empty!5911 tp!340027))))

(assert (=> b!1191651 (= tp!340009 e!766162)))

(assert (= (and b!1191651 ((_ is Cons!12005) (innerList!3998 (xs!6643 t!4115)))) b!1192018))

(declare-fun tp!340034 () Bool)

(declare-fun tp!340036 () Bool)

(declare-fun b!1192027 () Bool)

(declare-fun e!766168 () Bool)

(assert (=> b!1192027 (= e!766168 (and (inv!15915 (left!10455 (left!10455 t!4115))) tp!340034 (inv!15915 (right!10785 (left!10455 t!4115))) tp!340036))))

(declare-fun b!1192029 () Bool)

(declare-fun e!766167 () Bool)

(declare-fun tp!340035 () Bool)

(assert (=> b!1192029 (= e!766167 tp!340035)))

(declare-fun b!1192028 () Bool)

(assert (=> b!1192028 (= e!766168 (and (inv!15914 (xs!6643 (left!10455 t!4115))) e!766167))))

(assert (=> b!1191656 (= tp!340008 (and (inv!15915 (left!10455 t!4115)) e!766168))))

(assert (= (and b!1191656 ((_ is Node!3938) (left!10455 t!4115))) b!1192027))

(assert (= b!1192028 b!1192029))

(assert (= (and b!1191656 ((_ is Leaf!6032) (left!10455 t!4115))) b!1192028))

(declare-fun m!1366907 () Bool)

(assert (=> b!1192027 m!1366907))

(declare-fun m!1366909 () Bool)

(assert (=> b!1192027 m!1366909))

(declare-fun m!1366911 () Bool)

(assert (=> b!1192028 m!1366911))

(assert (=> b!1191656 m!1366595))

(declare-fun tp!340037 () Bool)

(declare-fun tp!340039 () Bool)

(declare-fun b!1192030 () Bool)

(declare-fun e!766170 () Bool)

(assert (=> b!1192030 (= e!766170 (and (inv!15915 (left!10455 (right!10785 t!4115))) tp!340037 (inv!15915 (right!10785 (right!10785 t!4115))) tp!340039))))

(declare-fun b!1192032 () Bool)

(declare-fun e!766169 () Bool)

(declare-fun tp!340038 () Bool)

(assert (=> b!1192032 (= e!766169 tp!340038)))

(declare-fun b!1192031 () Bool)

(assert (=> b!1192031 (= e!766170 (and (inv!15914 (xs!6643 (right!10785 t!4115))) e!766169))))

(assert (=> b!1191656 (= tp!340007 (and (inv!15915 (right!10785 t!4115)) e!766170))))

(assert (= (and b!1191656 ((_ is Node!3938) (right!10785 t!4115))) b!1192030))

(assert (= b!1192031 b!1192032))

(assert (= (and b!1191656 ((_ is Leaf!6032) (right!10785 t!4115))) b!1192031))

(declare-fun m!1366913 () Bool)

(assert (=> b!1192030 m!1366913))

(declare-fun m!1366915 () Bool)

(assert (=> b!1192030 m!1366915))

(declare-fun m!1366917 () Bool)

(assert (=> b!1192031 m!1366917))

(assert (=> b!1191656 m!1366597))

(check-sat (not b!1191995) (not d!340522) (not bm!82743) (not b!1191993) (not b!1191878) (not b!1191864) (not b!1191848) (not d!340546) (not b!1192032) (not b!1192013) (not b!1192012) (not b!1191862) (not b!1191804) (not b!1191678) (not b!1192002) (not b!1191846) (not b!1191861) (not b!1192027) (not b!1192005) (not b!1191815) (not d!340536) (not b!1191870) (not bm!82773) (not b!1191673) (not b!1191656) (not b!1192028) (not b!1192029) (not bm!82771) (not b!1191930) (not b!1191807) (not b!1191851) (not b!1191849) (not b!1191866) (not d!340544) (not b!1192009) (not b!1191872) (not b!1191867) (not bm!82739) (not bm!82740) (not b!1191929) (not b!1191805) (not b!1191676) (not d!340518) (not b!1192030) (not d!340478) (not d!340528) (not b!1192003) (not b!1191675) (not b!1191817) (not bm!82742) (not b!1191674) (not d!340472) (not b!1191868) (not b!1192018) (not b!1192031) (not b!1191818) (not b!1191869) (not d!340534) (not b!1192006) tp_is_empty!5911 (not d!340520) (not b!1191808) (not b!1191677) (not b!1191865))
(check-sat)
