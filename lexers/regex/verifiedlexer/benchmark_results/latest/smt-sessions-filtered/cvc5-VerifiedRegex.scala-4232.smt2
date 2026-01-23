; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!228572 () Bool)

(assert start!228572)

(declare-fun b!2316404 () Bool)

(declare-fun e!1485077 () Bool)

(declare-datatypes ((T!43724 0))(
  ( (T!43725 (val!7953 Int)) )
))
(declare-datatypes ((List!27739 0))(
  ( (Nil!27641) (Cons!27641 (h!33042 T!43724) (t!207355 List!27739)) )
))
(declare-datatypes ((IArray!18097 0))(
  ( (IArray!18098 (innerList!9106 List!27739)) )
))
(declare-datatypes ((Conc!9046 0))(
  ( (Node!9046 (left!20966 Conc!9046) (right!21296 Conc!9046) (csize!18322 Int) (cheight!9257 Int)) (Leaf!13279 (xs!11992 IArray!18097) (csize!18323 Int)) (Empty!9046) )
))
(declare-fun lt!858918 () Conc!9046)

(declare-fun isBalanced!2740 (Conc!9046) Bool)

(assert (=> b!2316404 (= e!1485077 (isBalanced!2740 lt!858918))))

(declare-fun b!2316405 () Bool)

(declare-fun e!1485076 () Bool)

(declare-fun tp!735788 () Bool)

(assert (=> b!2316405 (= e!1485076 tp!735788)))

(declare-fun b!2316406 () Bool)

(declare-fun res!989760 () Bool)

(declare-fun e!1485080 () Bool)

(assert (=> b!2316406 (=> res!989760 e!1485080)))

(declare-fun lt!858919 () Conc!9046)

(assert (=> b!2316406 (= res!989760 (not (isBalanced!2740 lt!858919)))))

(declare-fun b!2316407 () Bool)

(declare-fun e!1485081 () Bool)

(declare-fun tp!735790 () Bool)

(assert (=> b!2316407 (= e!1485081 tp!735790)))

(declare-fun b!2316408 () Bool)

(declare-fun res!989761 () Bool)

(assert (=> b!2316408 (=> res!989761 e!1485077)))

(declare-fun lt!858916 () List!27739)

(declare-fun lt!858907 () List!27739)

(declare-fun lt!858906 () List!27739)

(declare-fun ++!6785 (List!27739 List!27739) List!27739)

(assert (=> b!2316408 (= res!989761 (not (= lt!858916 (++!6785 lt!858907 lt!858906))))))

(declare-fun acc!252 () Conc!9046)

(declare-fun b!2316409 () Bool)

(declare-fun e!1485079 () Bool)

(declare-fun tp!735789 () Bool)

(declare-fun tp!735791 () Bool)

(declare-fun inv!37506 (Conc!9046) Bool)

(assert (=> b!2316409 (= e!1485079 (and (inv!37506 (left!20966 acc!252)) tp!735791 (inv!37506 (right!21296 acc!252)) tp!735789))))

(declare-fun b!2316410 () Bool)

(declare-fun inv!37507 (IArray!18097) Bool)

(assert (=> b!2316410 (= e!1485079 (and (inv!37507 (xs!11992 acc!252)) e!1485076))))

(declare-fun res!989755 () Bool)

(declare-fun e!1485078 () Bool)

(assert (=> start!228572 (=> (not res!989755) (not e!1485078))))

(assert (=> start!228572 (= res!989755 (isBalanced!2740 acc!252))))

(assert (=> start!228572 e!1485078))

(assert (=> start!228572 (and (inv!37506 acc!252) e!1485079)))

(declare-fun arr!18 () IArray!18097)

(assert (=> start!228572 (and (inv!37507 arr!18) e!1485081)))

(declare-fun b!2316411 () Bool)

(declare-fun e!1485082 () Bool)

(assert (=> b!2316411 (= e!1485078 e!1485082)))

(declare-fun res!989759 () Bool)

(assert (=> b!2316411 (=> (not res!989759) (not e!1485082))))

(declare-fun lt!858915 () Int)

(assert (=> b!2316411 (= res!989759 (> lt!858915 512))))

(declare-fun size!21871 (IArray!18097) Int)

(assert (=> b!2316411 (= lt!858915 (size!21871 arr!18))))

(declare-fun b!2316412 () Bool)

(assert (=> b!2316412 (= e!1485080 e!1485077)))

(declare-fun res!989756 () Bool)

(assert (=> b!2316412 (=> res!989756 e!1485077)))

(declare-fun lt!858913 () List!27739)

(assert (=> b!2316412 (= res!989756 (not (= lt!858913 lt!858906)))))

(declare-fun slice!666 (List!27739 Int Int) List!27739)

(declare-fun size!21872 (List!27739) Int)

(assert (=> b!2316412 (= (++!6785 (slice!666 lt!858906 0 512) (slice!666 lt!858906 512 (size!21872 lt!858906))) lt!858906)))

(declare-datatypes ((Unit!40488 0))(
  ( (Unit!40489) )
))
(declare-fun lt!858910 () Unit!40488)

(declare-fun sliceSplit!9 (List!27739 Int) Unit!40488)

(assert (=> b!2316412 (= lt!858910 (sliceSplit!9 lt!858906 512))))

(declare-fun list!10962 (IArray!18097) List!27739)

(assert (=> b!2316412 (= lt!858906 (list!10962 arr!18))))

(declare-fun b!2316413 () Bool)

(declare-fun e!1485083 () Bool)

(assert (=> b!2316413 (= e!1485082 e!1485083)))

(declare-fun res!989758 () Bool)

(assert (=> b!2316413 (=> (not res!989758) (not e!1485083))))

(declare-fun lt!858912 () List!27739)

(assert (=> b!2316413 (= res!989758 (= lt!858912 lt!858916))))

(declare-fun list!10963 (Conc!9046) List!27739)

(assert (=> b!2316413 (= lt!858916 (list!10963 lt!858919))))

(declare-fun lt!858911 () List!27739)

(declare-fun lt!858908 () List!27739)

(assert (=> b!2316413 (= lt!858912 (++!6785 (++!6785 lt!858907 lt!858911) lt!858908))))

(declare-fun lt!858909 () IArray!18097)

(assert (=> b!2316413 (= lt!858908 (list!10962 lt!858909))))

(assert (=> b!2316413 (= lt!858911 (list!10963 lt!858918))))

(assert (=> b!2316413 (= lt!858907 (list!10963 acc!252))))

(declare-fun fromArray!18 (IArray!18097 Conc!9046) Conc!9046)

(declare-fun ++!6786 (Conc!9046 Conc!9046) Conc!9046)

(assert (=> b!2316413 (= lt!858919 (fromArray!18 lt!858909 (++!6786 acc!252 lt!858918)))))

(declare-fun slice!667 (IArray!18097 Int Int) IArray!18097)

(assert (=> b!2316413 (= lt!858909 (slice!667 arr!18 512 lt!858915))))

(assert (=> b!2316413 (= lt!858918 (Leaf!13279 (slice!667 arr!18 0 512) 512))))

(declare-fun b!2316414 () Bool)

(assert (=> b!2316414 (= e!1485083 (not e!1485080))))

(declare-fun res!989757 () Bool)

(assert (=> b!2316414 (=> res!989757 e!1485080)))

(declare-fun lt!858914 () List!27739)

(assert (=> b!2316414 (= res!989757 (not (= lt!858914 lt!858916)))))

(assert (=> b!2316414 (= lt!858912 lt!858914)))

(assert (=> b!2316414 (= lt!858914 (++!6785 lt!858907 lt!858913))))

(assert (=> b!2316414 (= lt!858913 (++!6785 lt!858911 lt!858908))))

(declare-fun lt!858917 () Unit!40488)

(declare-fun lemmaConcatAssociativity!1442 (List!27739 List!27739 List!27739) Unit!40488)

(assert (=> b!2316414 (= lt!858917 (lemmaConcatAssociativity!1442 lt!858907 lt!858911 lt!858908))))

(assert (= (and start!228572 res!989755) b!2316411))

(assert (= (and b!2316411 res!989759) b!2316413))

(assert (= (and b!2316413 res!989758) b!2316414))

(assert (= (and b!2316414 (not res!989757)) b!2316406))

(assert (= (and b!2316406 (not res!989760)) b!2316412))

(assert (= (and b!2316412 (not res!989756)) b!2316408))

(assert (= (and b!2316408 (not res!989761)) b!2316404))

(assert (= (and start!228572 (is-Node!9046 acc!252)) b!2316409))

(assert (= b!2316410 b!2316405))

(assert (= (and start!228572 (is-Leaf!13279 acc!252)) b!2316410))

(assert (= start!228572 b!2316407))

(declare-fun m!2743667 () Bool)

(assert (=> b!2316414 m!2743667))

(declare-fun m!2743669 () Bool)

(assert (=> b!2316414 m!2743669))

(declare-fun m!2743671 () Bool)

(assert (=> b!2316414 m!2743671))

(declare-fun m!2743673 () Bool)

(assert (=> b!2316404 m!2743673))

(declare-fun m!2743675 () Bool)

(assert (=> b!2316408 m!2743675))

(declare-fun m!2743677 () Bool)

(assert (=> b!2316412 m!2743677))

(assert (=> b!2316412 m!2743677))

(declare-fun m!2743679 () Bool)

(assert (=> b!2316412 m!2743679))

(declare-fun m!2743681 () Bool)

(assert (=> b!2316412 m!2743681))

(declare-fun m!2743683 () Bool)

(assert (=> b!2316412 m!2743683))

(declare-fun m!2743685 () Bool)

(assert (=> b!2316412 m!2743685))

(declare-fun m!2743687 () Bool)

(assert (=> b!2316412 m!2743687))

(assert (=> b!2316412 m!2743687))

(assert (=> b!2316412 m!2743679))

(declare-fun m!2743689 () Bool)

(assert (=> b!2316411 m!2743689))

(declare-fun m!2743691 () Bool)

(assert (=> start!228572 m!2743691))

(declare-fun m!2743693 () Bool)

(assert (=> start!228572 m!2743693))

(declare-fun m!2743695 () Bool)

(assert (=> start!228572 m!2743695))

(declare-fun m!2743697 () Bool)

(assert (=> b!2316406 m!2743697))

(declare-fun m!2743699 () Bool)

(assert (=> b!2316409 m!2743699))

(declare-fun m!2743701 () Bool)

(assert (=> b!2316409 m!2743701))

(declare-fun m!2743703 () Bool)

(assert (=> b!2316413 m!2743703))

(declare-fun m!2743705 () Bool)

(assert (=> b!2316413 m!2743705))

(declare-fun m!2743707 () Bool)

(assert (=> b!2316413 m!2743707))

(declare-fun m!2743709 () Bool)

(assert (=> b!2316413 m!2743709))

(declare-fun m!2743711 () Bool)

(assert (=> b!2316413 m!2743711))

(assert (=> b!2316413 m!2743703))

(declare-fun m!2743713 () Bool)

(assert (=> b!2316413 m!2743713))

(declare-fun m!2743715 () Bool)

(assert (=> b!2316413 m!2743715))

(declare-fun m!2743717 () Bool)

(assert (=> b!2316413 m!2743717))

(declare-fun m!2743719 () Bool)

(assert (=> b!2316413 m!2743719))

(assert (=> b!2316413 m!2743707))

(declare-fun m!2743721 () Bool)

(assert (=> b!2316413 m!2743721))

(declare-fun m!2743723 () Bool)

(assert (=> b!2316410 m!2743723))

(push 1)

(assert (not b!2316411))

(assert (not b!2316409))

(assert (not b!2316413))

(assert (not b!2316408))

(assert (not b!2316406))

(assert (not b!2316407))

(assert (not start!228572))

(assert (not b!2316412))

(assert (not b!2316404))

(assert (not b!2316410))

(assert (not b!2316414))

(assert (not b!2316405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2316458 () Bool)

(declare-fun res!989788 () Bool)

(declare-fun e!1485113 () Bool)

(assert (=> b!2316458 (=> (not res!989788) (not e!1485113))))

(declare-fun lt!858964 () List!27739)

(assert (=> b!2316458 (= res!989788 (= (size!21872 lt!858964) (+ (size!21872 (++!6785 lt!858907 lt!858911)) (size!21872 lt!858908))))))

(declare-fun b!2316459 () Bool)

(assert (=> b!2316459 (= e!1485113 (or (not (= lt!858908 Nil!27641)) (= lt!858964 (++!6785 lt!858907 lt!858911))))))

(declare-fun e!1485112 () List!27739)

(declare-fun b!2316457 () Bool)

(assert (=> b!2316457 (= e!1485112 (Cons!27641 (h!33042 (++!6785 lt!858907 lt!858911)) (++!6785 (t!207355 (++!6785 lt!858907 lt!858911)) lt!858908)))))

(declare-fun b!2316456 () Bool)

(assert (=> b!2316456 (= e!1485112 lt!858908)))

(declare-fun d!684813 () Bool)

(assert (=> d!684813 e!1485113))

(declare-fun res!989787 () Bool)

(assert (=> d!684813 (=> (not res!989787) (not e!1485113))))

(declare-fun content!3727 (List!27739) (Set T!43724))

(assert (=> d!684813 (= res!989787 (= (content!3727 lt!858964) (set.union (content!3727 (++!6785 lt!858907 lt!858911)) (content!3727 lt!858908))))))

(assert (=> d!684813 (= lt!858964 e!1485112)))

(declare-fun c!367106 () Bool)

(assert (=> d!684813 (= c!367106 (is-Nil!27641 (++!6785 lt!858907 lt!858911)))))

(assert (=> d!684813 (= (++!6785 (++!6785 lt!858907 lt!858911) lt!858908) lt!858964)))

(assert (= (and d!684813 c!367106) b!2316456))

(assert (= (and d!684813 (not c!367106)) b!2316457))

(assert (= (and d!684813 res!989787) b!2316458))

(assert (= (and b!2316458 res!989788) b!2316459))

(declare-fun m!2743783 () Bool)

(assert (=> b!2316458 m!2743783))

(assert (=> b!2316458 m!2743707))

(declare-fun m!2743785 () Bool)

(assert (=> b!2316458 m!2743785))

(declare-fun m!2743787 () Bool)

(assert (=> b!2316458 m!2743787))

(declare-fun m!2743789 () Bool)

(assert (=> b!2316457 m!2743789))

(declare-fun m!2743791 () Bool)

(assert (=> d!684813 m!2743791))

(assert (=> d!684813 m!2743707))

(declare-fun m!2743793 () Bool)

(assert (=> d!684813 m!2743793))

(declare-fun m!2743795 () Bool)

(assert (=> d!684813 m!2743795))

(assert (=> b!2316413 d!684813))

(declare-fun b!2316476 () Bool)

(declare-fun e!1485122 () List!27739)

(assert (=> b!2316476 (= e!1485122 Nil!27641)))

(declare-fun b!2316479 () Bool)

(declare-fun e!1485123 () List!27739)

(assert (=> b!2316479 (= e!1485123 (++!6785 (list!10963 (left!20966 lt!858918)) (list!10963 (right!21296 lt!858918))))))

(declare-fun d!684817 () Bool)

(declare-fun c!367113 () Bool)

(assert (=> d!684817 (= c!367113 (is-Empty!9046 lt!858918))))

(assert (=> d!684817 (= (list!10963 lt!858918) e!1485122)))

(declare-fun b!2316478 () Bool)

(assert (=> b!2316478 (= e!1485123 (list!10962 (xs!11992 lt!858918)))))

(declare-fun b!2316477 () Bool)

(assert (=> b!2316477 (= e!1485122 e!1485123)))

(declare-fun c!367114 () Bool)

(assert (=> b!2316477 (= c!367114 (is-Leaf!13279 lt!858918))))

(assert (= (and d!684817 c!367113) b!2316476))

(assert (= (and d!684817 (not c!367113)) b!2316477))

(assert (= (and b!2316477 c!367114) b!2316478))

(assert (= (and b!2316477 (not c!367114)) b!2316479))

(declare-fun m!2743797 () Bool)

(assert (=> b!2316479 m!2743797))

(declare-fun m!2743799 () Bool)

(assert (=> b!2316479 m!2743799))

(assert (=> b!2316479 m!2743797))

(assert (=> b!2316479 m!2743799))

(declare-fun m!2743801 () Bool)

(assert (=> b!2316479 m!2743801))

(declare-fun m!2743803 () Bool)

(assert (=> b!2316478 m!2743803))

(assert (=> b!2316413 d!684817))

(declare-fun b!2316484 () Bool)

(declare-fun e!1485126 () List!27739)

(assert (=> b!2316484 (= e!1485126 Nil!27641)))

(declare-fun b!2316487 () Bool)

(declare-fun e!1485127 () List!27739)

(assert (=> b!2316487 (= e!1485127 (++!6785 (list!10963 (left!20966 acc!252)) (list!10963 (right!21296 acc!252))))))

(declare-fun d!684819 () Bool)

(declare-fun c!367116 () Bool)

(assert (=> d!684819 (= c!367116 (is-Empty!9046 acc!252))))

(assert (=> d!684819 (= (list!10963 acc!252) e!1485126)))

(declare-fun b!2316486 () Bool)

(assert (=> b!2316486 (= e!1485127 (list!10962 (xs!11992 acc!252)))))

(declare-fun b!2316485 () Bool)

(assert (=> b!2316485 (= e!1485126 e!1485127)))

(declare-fun c!367117 () Bool)

(assert (=> b!2316485 (= c!367117 (is-Leaf!13279 acc!252))))

(assert (= (and d!684819 c!367116) b!2316484))

(assert (= (and d!684819 (not c!367116)) b!2316485))

(assert (= (and b!2316485 c!367117) b!2316486))

(assert (= (and b!2316485 (not c!367117)) b!2316487))

(declare-fun m!2743815 () Bool)

(assert (=> b!2316487 m!2743815))

(declare-fun m!2743817 () Bool)

(assert (=> b!2316487 m!2743817))

(assert (=> b!2316487 m!2743815))

(assert (=> b!2316487 m!2743817))

(declare-fun m!2743821 () Bool)

(assert (=> b!2316487 m!2743821))

(declare-fun m!2743825 () Bool)

(assert (=> b!2316486 m!2743825))

(assert (=> b!2316413 d!684819))

(declare-fun d!684823 () Bool)

(declare-fun lt!858973 () IArray!18097)

(assert (=> d!684823 (= lt!858973 (IArray!18098 (slice!666 (list!10962 arr!18) 512 lt!858915)))))

(declare-fun choose!13551 (IArray!18097 Int Int) IArray!18097)

(assert (=> d!684823 (= lt!858973 (choose!13551 arr!18 512 lt!858915))))

(declare-fun e!1485133 () Bool)

(assert (=> d!684823 e!1485133))

(declare-fun res!989797 () Bool)

(assert (=> d!684823 (=> (not res!989797) (not e!1485133))))

(assert (=> d!684823 (= res!989797 (and (<= 0 512) (<= 512 lt!858915)))))

(assert (=> d!684823 (= (slice!667 arr!18 512 lt!858915) lt!858973)))

(declare-fun b!2316496 () Bool)

(assert (=> b!2316496 (= e!1485133 (<= lt!858915 (size!21871 arr!18)))))

(assert (= (and d!684823 res!989797) b!2316496))

(assert (=> d!684823 m!2743685))

(assert (=> d!684823 m!2743685))

(declare-fun m!2743833 () Bool)

(assert (=> d!684823 m!2743833))

(declare-fun m!2743835 () Bool)

(assert (=> d!684823 m!2743835))

(assert (=> b!2316496 m!2743689))

(assert (=> b!2316413 d!684823))

(declare-fun b!2316591 () Bool)

(declare-fun c!367153 () Bool)

(declare-fun call!137712 () Int)

(declare-fun call!137706 () Int)

(assert (=> b!2316591 (= c!367153 (>= call!137712 call!137706))))

(declare-fun e!1485187 () Conc!9046)

(declare-fun e!1485186 () Conc!9046)

(assert (=> b!2316591 (= e!1485187 e!1485186)))

(declare-fun b!2316592 () Bool)

(declare-fun res!989831 () Bool)

(declare-fun e!1485182 () Bool)

(assert (=> b!2316592 (=> (not res!989831) (not e!1485182))))

(declare-fun lt!858995 () Conc!9046)

(assert (=> b!2316592 (= res!989831 (isBalanced!2740 lt!858995))))

(declare-fun d!684829 () Bool)

(assert (=> d!684829 e!1485182))

(declare-fun res!989829 () Bool)

(assert (=> d!684829 (=> (not res!989829) (not e!1485182))))

(declare-fun appendAssocInst!595 (Conc!9046 Conc!9046) Bool)

(assert (=> d!684829 (= res!989829 (appendAssocInst!595 acc!252 lt!858918))))

(declare-fun e!1485178 () Conc!9046)

(assert (=> d!684829 (= lt!858995 e!1485178)))

(declare-fun c!367156 () Bool)

(assert (=> d!684829 (= c!367156 (= acc!252 Empty!9046))))

(declare-fun e!1485184 () Bool)

(assert (=> d!684829 e!1485184))

(declare-fun res!989832 () Bool)

(assert (=> d!684829 (=> (not res!989832) (not e!1485184))))

(assert (=> d!684829 (= res!989832 (isBalanced!2740 acc!252))))

(assert (=> d!684829 (= (++!6786 acc!252 lt!858918) lt!858995)))

(declare-fun c!367159 () Bool)

(declare-fun bm!137698 () Bool)

(declare-fun height!1311 (Conc!9046) Int)

(assert (=> bm!137698 (= call!137712 (height!1311 (ite c!367159 acc!252 (right!21296 lt!858918))))))

(declare-fun b!2316593 () Bool)

(declare-fun c!367157 () Bool)

(declare-fun call!137716 () Int)

(assert (=> b!2316593 (= c!367157 (>= call!137716 call!137706))))

(declare-fun e!1485181 () Conc!9046)

(assert (=> b!2316593 (= e!1485187 e!1485181)))

(declare-fun bm!137699 () Bool)

(declare-fun call!137705 () Conc!9046)

(declare-fun call!137707 () Conc!9046)

(assert (=> bm!137699 (= call!137705 call!137707)))

(declare-fun b!2316594 () Bool)

(declare-fun call!137720 () Conc!9046)

(assert (=> b!2316594 (= e!1485181 call!137720)))

(declare-fun b!2316595 () Bool)

(declare-fun e!1485185 () Conc!9046)

(assert (=> b!2316595 (= e!1485185 call!137705)))

(declare-fun bm!137700 () Bool)

(assert (=> bm!137700 (= call!137716 (height!1311 (ite c!367159 (left!20966 acc!252) lt!858918)))))

(declare-fun bm!137701 () Bool)

(declare-fun call!137703 () Conc!9046)

(assert (=> bm!137701 (= call!137703 call!137707)))

(declare-fun b!2316596 () Bool)

(declare-fun res!989830 () Bool)

(assert (=> b!2316596 (=> (not res!989830) (not e!1485182))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2316596 (= res!989830 (>= (height!1311 lt!858995) (max!0 (height!1311 acc!252) (height!1311 lt!858918))))))

(declare-fun b!2316597 () Bool)

(assert (=> b!2316597 (= e!1485181 e!1485185)))

(declare-fun lt!858994 () Conc!9046)

(declare-fun call!137719 () Conc!9046)

(assert (=> b!2316597 (= lt!858994 call!137719)))

(declare-fun c!367158 () Bool)

(declare-fun call!137708 () Int)

(assert (=> b!2316597 (= c!367158 (= call!137708 (- call!137712 3)))))

(declare-fun b!2316598 () Bool)

(declare-fun e!1485180 () Conc!9046)

(assert (=> b!2316598 (= e!1485180 e!1485187)))

(declare-fun lt!858993 () Int)

(assert (=> b!2316598 (= c!367159 (< lt!858993 (- 1)))))

(declare-fun b!2316599 () Bool)

(declare-fun e!1485183 () Conc!9046)

(assert (=> b!2316599 (= e!1485183 acc!252)))

(declare-fun lt!858996 () Conc!9046)

(declare-fun c!367154 () Bool)

(declare-fun bm!137702 () Bool)

(declare-fun call!137704 () Conc!9046)

(declare-fun <>!201 (Conc!9046 Conc!9046) Conc!9046)

(assert (=> bm!137702 (= call!137704 (<>!201 (ite c!367159 (ite c!367157 (left!20966 acc!252) (ite c!367158 (left!20966 (right!21296 acc!252)) (left!20966 acc!252))) (ite c!367154 lt!858996 (right!21296 (left!20966 lt!858918)))) (ite c!367159 (ite c!367157 call!137719 (ite c!367158 lt!858994 (left!20966 (right!21296 acc!252)))) (ite c!367154 (right!21296 (left!20966 lt!858918)) (right!21296 lt!858918)))))))

(declare-fun bm!137703 () Bool)

(declare-fun call!137713 () Conc!9046)

(declare-fun call!137715 () Conc!9046)

(assert (=> bm!137703 (= call!137713 call!137715)))

(declare-fun b!2316600 () Bool)

(assert (=> b!2316600 (= e!1485178 e!1485183)))

(declare-fun c!367155 () Bool)

(assert (=> b!2316600 (= c!367155 (= lt!858918 Empty!9046))))

(declare-fun bm!137704 () Bool)

(assert (=> bm!137704 (= call!137720 call!137704)))

(declare-fun b!2316601 () Bool)

(declare-fun call!137714 () Conc!9046)

(assert (=> b!2316601 (= e!1485180 call!137714)))

(declare-fun b!2316602 () Bool)

(declare-fun e!1485179 () Conc!9046)

(assert (=> b!2316602 (= e!1485186 e!1485179)))

(assert (=> b!2316602 (= lt!858996 call!137713)))

(assert (=> b!2316602 (= c!367154 (= call!137708 (- call!137716 3)))))

(declare-fun bm!137705 () Bool)

(assert (=> bm!137705 (= call!137706 (height!1311 (ite c!367159 (right!21296 acc!252) (left!20966 lt!858918))))))

(declare-fun bm!137706 () Bool)

(declare-fun call!137718 () Conc!9046)

(assert (=> bm!137706 (= call!137718 call!137704)))

(declare-fun b!2316603 () Bool)

(declare-fun c!367160 () Bool)

(assert (=> b!2316603 (= c!367160 (and (<= (- 1) lt!858993) (<= lt!858993 1)))))

(assert (=> b!2316603 (= lt!858993 (- (height!1311 lt!858918) (height!1311 acc!252)))))

(assert (=> b!2316603 (= e!1485183 e!1485180)))

(declare-fun b!2316604 () Bool)

(assert (=> b!2316604 (= e!1485186 call!137703)))

(declare-fun b!2316605 () Bool)

(assert (=> b!2316605 (= e!1485178 lt!858918)))

(declare-fun b!2316606 () Bool)

(declare-fun res!989828 () Bool)

(assert (=> b!2316606 (=> (not res!989828) (not e!1485182))))

(assert (=> b!2316606 (= res!989828 (<= (height!1311 lt!858995) (+ (max!0 (height!1311 acc!252) (height!1311 lt!858918)) 1)))))

(declare-fun bm!137709 () Bool)

(assert (=> bm!137709 (= call!137708 (height!1311 (ite c!367159 lt!858994 lt!858996)))))

(declare-fun b!2316607 () Bool)

(declare-fun call!137717 () Conc!9046)

(assert (=> b!2316607 (= e!1485179 call!137717)))

(declare-fun bm!137710 () Bool)

(declare-fun call!137709 () Conc!9046)

(assert (=> bm!137710 (= call!137709 call!137720)))

(declare-fun bm!137711 () Bool)

(assert (=> bm!137711 (= call!137719 call!137715)))

(declare-fun b!2316608 () Bool)

(assert (=> b!2316608 (= e!1485179 call!137717)))

(declare-fun bm!137712 () Bool)

(assert (=> bm!137712 (= call!137714 (<>!201 (ite c!367160 acc!252 (ite c!367159 (ite c!367158 (left!20966 acc!252) call!137709) (ite c!367153 call!137713 (ite c!367154 call!137718 lt!858996)))) (ite c!367160 lt!858918 (ite c!367159 (ite c!367158 call!137709 lt!858994) (ite (or c!367153 c!367154) (right!21296 lt!858918) call!137718)))))))

(declare-fun bm!137713 () Bool)

(assert (=> bm!137713 (= call!137717 call!137703)))

(declare-fun b!2316609 () Bool)

(assert (=> b!2316609 (= e!1485184 (isBalanced!2740 lt!858918))))

(declare-fun bm!137714 () Bool)

(assert (=> bm!137714 (= call!137707 call!137714)))

(declare-fun b!2316610 () Bool)

(assert (=> b!2316610 (= e!1485185 call!137705)))

(declare-fun bm!137715 () Bool)

(assert (=> bm!137715 (= call!137715 (++!6786 (ite c!367159 (ite c!367157 (right!21296 acc!252) (right!21296 (right!21296 acc!252))) acc!252) (ite c!367159 lt!858918 (ite c!367153 (left!20966 lt!858918) (left!20966 (left!20966 lt!858918))))))))

(declare-fun b!2316611 () Bool)

(assert (=> b!2316611 (= e!1485182 (= (list!10963 lt!858995) (++!6785 (list!10963 acc!252) (list!10963 lt!858918))))))

(assert (= (and d!684829 res!989832) b!2316609))

(assert (= (and d!684829 c!367156) b!2316605))

(assert (= (and d!684829 (not c!367156)) b!2316600))

(assert (= (and b!2316600 c!367155) b!2316599))

(assert (= (and b!2316600 (not c!367155)) b!2316603))

(assert (= (and b!2316603 c!367160) b!2316601))

(assert (= (and b!2316603 (not c!367160)) b!2316598))

(assert (= (and b!2316598 c!367159) b!2316593))

(assert (= (and b!2316598 (not c!367159)) b!2316591))

(assert (= (and b!2316593 c!367157) b!2316594))

(assert (= (and b!2316593 (not c!367157)) b!2316597))

(assert (= (and b!2316597 c!367158) b!2316610))

(assert (= (and b!2316597 (not c!367158)) b!2316595))

(assert (= (or b!2316610 b!2316595) bm!137710))

(assert (= (or b!2316610 b!2316595) bm!137699))

(assert (= (or b!2316594 b!2316597) bm!137711))

(assert (= (or b!2316594 bm!137710) bm!137704))

(assert (= (and b!2316591 c!367153) b!2316604))

(assert (= (and b!2316591 (not c!367153)) b!2316602))

(assert (= (and b!2316602 c!367154) b!2316608))

(assert (= (and b!2316602 (not c!367154)) b!2316607))

(assert (= (or b!2316608 b!2316607) bm!137706))

(assert (= (or b!2316608 b!2316607) bm!137713))

(assert (= (or b!2316604 b!2316602) bm!137703))

(assert (= (or b!2316604 bm!137713) bm!137701))

(assert (= (or bm!137704 bm!137706) bm!137702))

(assert (= (or b!2316597 b!2316602) bm!137709))

(assert (= (or b!2316593 b!2316591) bm!137705))

(assert (= (or b!2316593 b!2316602) bm!137700))

(assert (= (or b!2316597 b!2316591) bm!137698))

(assert (= (or bm!137699 bm!137701) bm!137714))

(assert (= (or bm!137711 bm!137703) bm!137715))

(assert (= (or b!2316601 bm!137714) bm!137712))

(assert (= (and d!684829 res!989829) b!2316592))

(assert (= (and b!2316592 res!989831) b!2316606))

(assert (= (and b!2316606 res!989828) b!2316596))

(assert (= (and b!2316596 res!989830) b!2316611))

(declare-fun m!2743857 () Bool)

(assert (=> b!2316606 m!2743857))

(declare-fun m!2743859 () Bool)

(assert (=> b!2316606 m!2743859))

(declare-fun m!2743861 () Bool)

(assert (=> b!2316606 m!2743861))

(assert (=> b!2316606 m!2743859))

(assert (=> b!2316606 m!2743861))

(declare-fun m!2743863 () Bool)

(assert (=> b!2316606 m!2743863))

(declare-fun m!2743865 () Bool)

(assert (=> bm!137705 m!2743865))

(assert (=> b!2316609 m!2743673))

(declare-fun m!2743867 () Bool)

(assert (=> b!2316592 m!2743867))

(declare-fun m!2743869 () Bool)

(assert (=> bm!137702 m!2743869))

(declare-fun m!2743871 () Bool)

(assert (=> bm!137698 m!2743871))

(declare-fun m!2743873 () Bool)

(assert (=> bm!137715 m!2743873))

(assert (=> b!2316596 m!2743857))

(assert (=> b!2316596 m!2743859))

(assert (=> b!2316596 m!2743861))

(assert (=> b!2316596 m!2743859))

(assert (=> b!2316596 m!2743861))

(assert (=> b!2316596 m!2743863))

(declare-fun m!2743875 () Bool)

(assert (=> bm!137712 m!2743875))

(declare-fun m!2743877 () Bool)

(assert (=> bm!137709 m!2743877))

(declare-fun m!2743879 () Bool)

(assert (=> bm!137700 m!2743879))

(declare-fun m!2743881 () Bool)

(assert (=> b!2316611 m!2743881))

(assert (=> b!2316611 m!2743705))

(assert (=> b!2316611 m!2743715))

(assert (=> b!2316611 m!2743705))

(assert (=> b!2316611 m!2743715))

(declare-fun m!2743883 () Bool)

(assert (=> b!2316611 m!2743883))

(assert (=> b!2316603 m!2743861))

(assert (=> b!2316603 m!2743859))

(declare-fun m!2743885 () Bool)

(assert (=> d!684829 m!2743885))

(assert (=> d!684829 m!2743691))

(assert (=> b!2316413 d!684829))

(declare-fun b!2316612 () Bool)

(declare-fun e!1485188 () List!27739)

(assert (=> b!2316612 (= e!1485188 Nil!27641)))

(declare-fun b!2316615 () Bool)

(declare-fun e!1485189 () List!27739)

(assert (=> b!2316615 (= e!1485189 (++!6785 (list!10963 (left!20966 lt!858919)) (list!10963 (right!21296 lt!858919))))))

(declare-fun d!684841 () Bool)

(declare-fun c!367161 () Bool)

(assert (=> d!684841 (= c!367161 (is-Empty!9046 lt!858919))))

(assert (=> d!684841 (= (list!10963 lt!858919) e!1485188)))

(declare-fun b!2316614 () Bool)

(assert (=> b!2316614 (= e!1485189 (list!10962 (xs!11992 lt!858919)))))

(declare-fun b!2316613 () Bool)

(assert (=> b!2316613 (= e!1485188 e!1485189)))

(declare-fun c!367162 () Bool)

(assert (=> b!2316613 (= c!367162 (is-Leaf!13279 lt!858919))))

(assert (= (and d!684841 c!367161) b!2316612))

(assert (= (and d!684841 (not c!367161)) b!2316613))

(assert (= (and b!2316613 c!367162) b!2316614))

(assert (= (and b!2316613 (not c!367162)) b!2316615))

(declare-fun m!2743887 () Bool)

(assert (=> b!2316615 m!2743887))

(declare-fun m!2743889 () Bool)

(assert (=> b!2316615 m!2743889))

(assert (=> b!2316615 m!2743887))

(assert (=> b!2316615 m!2743889))

(declare-fun m!2743891 () Bool)

(assert (=> b!2316615 m!2743891))

(declare-fun m!2743893 () Bool)

(assert (=> b!2316614 m!2743893))

(assert (=> b!2316413 d!684841))

(declare-fun d!684843 () Bool)

(declare-fun lt!858997 () IArray!18097)

(assert (=> d!684843 (= lt!858997 (IArray!18098 (slice!666 (list!10962 arr!18) 0 512)))))

(assert (=> d!684843 (= lt!858997 (choose!13551 arr!18 0 512))))

(declare-fun e!1485190 () Bool)

(assert (=> d!684843 e!1485190))

(declare-fun res!989833 () Bool)

(assert (=> d!684843 (=> (not res!989833) (not e!1485190))))

(assert (=> d!684843 (= res!989833 (and (<= 0 0) (<= 0 512)))))

(assert (=> d!684843 (= (slice!667 arr!18 0 512) lt!858997)))

(declare-fun b!2316616 () Bool)

(assert (=> b!2316616 (= e!1485190 (<= 512 (size!21871 arr!18)))))

(assert (= (and d!684843 res!989833) b!2316616))

(assert (=> d!684843 m!2743685))

(assert (=> d!684843 m!2743685))

(declare-fun m!2743895 () Bool)

(assert (=> d!684843 m!2743895))

(declare-fun m!2743897 () Bool)

(assert (=> d!684843 m!2743897))

(assert (=> b!2316616 m!2743689))

(assert (=> b!2316413 d!684843))

(declare-fun b!2316619 () Bool)

(declare-fun res!989835 () Bool)

(declare-fun e!1485192 () Bool)

(assert (=> b!2316619 (=> (not res!989835) (not e!1485192))))

(declare-fun lt!858998 () List!27739)

(assert (=> b!2316619 (= res!989835 (= (size!21872 lt!858998) (+ (size!21872 lt!858907) (size!21872 lt!858911))))))

(declare-fun b!2316620 () Bool)

(assert (=> b!2316620 (= e!1485192 (or (not (= lt!858911 Nil!27641)) (= lt!858998 lt!858907)))))

(declare-fun b!2316618 () Bool)

(declare-fun e!1485191 () List!27739)

(assert (=> b!2316618 (= e!1485191 (Cons!27641 (h!33042 lt!858907) (++!6785 (t!207355 lt!858907) lt!858911)))))

(declare-fun b!2316617 () Bool)

(assert (=> b!2316617 (= e!1485191 lt!858911)))

(declare-fun d!684845 () Bool)

(assert (=> d!684845 e!1485192))

(declare-fun res!989834 () Bool)

(assert (=> d!684845 (=> (not res!989834) (not e!1485192))))

(assert (=> d!684845 (= res!989834 (= (content!3727 lt!858998) (set.union (content!3727 lt!858907) (content!3727 lt!858911))))))

(assert (=> d!684845 (= lt!858998 e!1485191)))

(declare-fun c!367163 () Bool)

(assert (=> d!684845 (= c!367163 (is-Nil!27641 lt!858907))))

(assert (=> d!684845 (= (++!6785 lt!858907 lt!858911) lt!858998)))

(assert (= (and d!684845 c!367163) b!2316617))

(assert (= (and d!684845 (not c!367163)) b!2316618))

(assert (= (and d!684845 res!989834) b!2316619))

(assert (= (and b!2316619 res!989835) b!2316620))

(declare-fun m!2743899 () Bool)

(assert (=> b!2316619 m!2743899))

(declare-fun m!2743901 () Bool)

(assert (=> b!2316619 m!2743901))

(declare-fun m!2743903 () Bool)

(assert (=> b!2316619 m!2743903))

(declare-fun m!2743905 () Bool)

(assert (=> b!2316618 m!2743905))

(declare-fun m!2743907 () Bool)

(assert (=> d!684845 m!2743907))

(declare-fun m!2743909 () Bool)

(assert (=> d!684845 m!2743909))

(declare-fun m!2743911 () Bool)

(assert (=> d!684845 m!2743911))

(assert (=> b!2316413 d!684845))

(declare-fun d!684847 () Bool)

(assert (=> d!684847 (= (list!10962 lt!858909) (innerList!9106 lt!858909))))

(assert (=> b!2316413 d!684847))

(declare-fun d!684849 () Bool)

(declare-fun e!1485203 () Bool)

(assert (=> d!684849 e!1485203))

(declare-fun res!989846 () Bool)

(assert (=> d!684849 (=> (not res!989846) (not e!1485203))))

(declare-fun lt!859028 () Conc!9046)

(assert (=> d!684849 (= res!989846 (isBalanced!2740 lt!859028))))

(declare-fun e!1485202 () Conc!9046)

(assert (=> d!684849 (= lt!859028 e!1485202)))

(declare-fun c!367168 () Bool)

(assert (=> d!684849 (= c!367168 (<= (size!21871 lt!858909) 512))))

(assert (=> d!684849 (isBalanced!2740 (++!6786 acc!252 lt!858918))))

(assert (=> d!684849 (= (fromArray!18 lt!858909 (++!6786 acc!252 lt!858918)) lt!859028)))

(declare-fun bm!137736 () Bool)

(declare-fun call!137742 () Int)

(assert (=> bm!137736 (= call!137742 (size!21871 lt!858909))))

(declare-fun b!2316639 () Bool)

(declare-fun e!1485201 () Conc!9046)

(declare-fun call!137741 () Conc!9046)

(assert (=> b!2316639 (= e!1485201 call!137741)))

(declare-fun bm!137737 () Bool)

(declare-fun lt!859024 () Conc!9046)

(assert (=> bm!137737 (= call!137741 (++!6786 (++!6786 acc!252 lt!858918) (ite c!367168 (Leaf!13279 lt!858909 call!137742) lt!859024)))))

(declare-fun b!2316640 () Bool)

(assert (=> b!2316640 (= e!1485203 (= (list!10963 lt!859028) (++!6785 (list!10963 (++!6786 acc!252 lt!858918)) (list!10962 lt!858909))))))

(declare-fun b!2316641 () Bool)

(assert (=> b!2316641 (= e!1485202 (fromArray!18 (slice!667 lt!858909 512 call!137742) call!137741))))

(assert (=> b!2316641 (= lt!859024 (Leaf!13279 (slice!667 lt!858909 0 512) 512))))

(declare-fun lt!859025 () Conc!9046)

(assert (=> b!2316641 (= lt!859025 (fromArray!18 (slice!667 lt!858909 512 call!137742) call!137741))))

(declare-fun lt!859031 () List!27739)

(assert (=> b!2316641 (= lt!859031 (list!10963 (++!6786 acc!252 lt!858918)))))

(declare-fun lt!859023 () List!27739)

(assert (=> b!2316641 (= lt!859023 (list!10963 lt!859024))))

(declare-fun lt!859026 () List!27739)

(assert (=> b!2316641 (= lt!859026 (list!10962 (slice!667 lt!858909 512 call!137742)))))

(declare-fun lt!859033 () Unit!40488)

(assert (=> b!2316641 (= lt!859033 (lemmaConcatAssociativity!1442 lt!859031 lt!859023 lt!859026))))

(assert (=> b!2316641 (= (++!6785 (++!6785 lt!859031 lt!859023) lt!859026) (++!6785 lt!859031 (++!6785 lt!859023 lt!859026)))))

(declare-fun lt!859027 () Unit!40488)

(assert (=> b!2316641 (= lt!859027 lt!859033)))

(declare-fun lt!859034 () List!27739)

(assert (=> b!2316641 (= lt!859034 (list!10962 lt!858909))))

(declare-fun lt!859030 () Int)

(assert (=> b!2316641 (= lt!859030 512)))

(declare-fun lt!859032 () Unit!40488)

(assert (=> b!2316641 (= lt!859032 (sliceSplit!9 lt!859034 lt!859030))))

(assert (=> b!2316641 (= (++!6785 (slice!666 lt!859034 0 lt!859030) (slice!666 lt!859034 lt!859030 (size!21872 lt!859034))) lt!859034)))

(declare-fun lt!859029 () Unit!40488)

(assert (=> b!2316641 (= lt!859029 lt!859032)))

(declare-fun b!2316642 () Bool)

(assert (=> b!2316642 (= e!1485201 (++!6786 acc!252 lt!858918))))

(declare-fun b!2316643 () Bool)

(assert (=> b!2316643 (= e!1485202 e!1485201)))

(declare-fun c!367169 () Bool)

(assert (=> b!2316643 (= c!367169 (= call!137742 0))))

(assert (= (and d!684849 c!367168) b!2316643))

(assert (= (and d!684849 (not c!367168)) b!2316641))

(assert (= (and b!2316643 c!367169) b!2316642))

(assert (= (and b!2316643 (not c!367169)) b!2316639))

(assert (= (or b!2316643 b!2316639 b!2316641) bm!137736))

(assert (= (or b!2316639 b!2316641) bm!137737))

(assert (= (and d!684849 res!989846) b!2316640))

(assert (=> bm!137737 m!2743703))

(declare-fun m!2743913 () Bool)

(assert (=> bm!137737 m!2743913))

(declare-fun m!2743915 () Bool)

(assert (=> b!2316641 m!2743915))

(declare-fun m!2743917 () Bool)

(assert (=> b!2316641 m!2743917))

(assert (=> b!2316641 m!2743721))

(declare-fun m!2743919 () Bool)

(assert (=> b!2316641 m!2743919))

(assert (=> b!2316641 m!2743919))

(declare-fun m!2743921 () Bool)

(assert (=> b!2316641 m!2743921))

(declare-fun m!2743923 () Bool)

(assert (=> b!2316641 m!2743923))

(declare-fun m!2743925 () Bool)

(assert (=> b!2316641 m!2743925))

(declare-fun m!2743927 () Bool)

(assert (=> b!2316641 m!2743927))

(declare-fun m!2743929 () Bool)

(assert (=> b!2316641 m!2743929))

(declare-fun m!2743931 () Bool)

(assert (=> b!2316641 m!2743931))

(declare-fun m!2743933 () Bool)

(assert (=> b!2316641 m!2743933))

(declare-fun m!2743935 () Bool)

(assert (=> b!2316641 m!2743935))

(assert (=> b!2316641 m!2743915))

(declare-fun m!2743937 () Bool)

(assert (=> b!2316641 m!2743937))

(assert (=> b!2316641 m!2743931))

(assert (=> b!2316641 m!2743921))

(declare-fun m!2743939 () Bool)

(assert (=> b!2316641 m!2743939))

(assert (=> b!2316641 m!2743927))

(declare-fun m!2743941 () Bool)

(assert (=> b!2316641 m!2743941))

(assert (=> b!2316641 m!2743933))

(declare-fun m!2743943 () Bool)

(assert (=> b!2316641 m!2743943))

(assert (=> b!2316641 m!2743703))

(declare-fun m!2743945 () Bool)

(assert (=> b!2316641 m!2743945))

(assert (=> b!2316641 m!2743915))

(declare-fun m!2743947 () Bool)

(assert (=> bm!137736 m!2743947))

(declare-fun m!2743949 () Bool)

(assert (=> b!2316640 m!2743949))

(assert (=> b!2316640 m!2743703))

(assert (=> b!2316640 m!2743945))

(assert (=> b!2316640 m!2743721))

(assert (=> b!2316640 m!2743945))

(assert (=> b!2316640 m!2743721))

(declare-fun m!2743951 () Bool)

(assert (=> b!2316640 m!2743951))

(declare-fun m!2743953 () Bool)

(assert (=> d!684849 m!2743953))

(assert (=> d!684849 m!2743947))

(assert (=> d!684849 m!2743703))

(declare-fun m!2743955 () Bool)

(assert (=> d!684849 m!2743955))

(assert (=> b!2316413 d!684849))

(declare-fun b!2316667 () Bool)

(declare-fun res!989853 () Bool)

(declare-fun e!1485215 () Bool)

(assert (=> b!2316667 (=> (not res!989853) (not e!1485215))))

(declare-fun lt!859039 () List!27739)

(assert (=> b!2316667 (= res!989853 (= (size!21872 lt!859039) (+ (size!21872 lt!858907) (size!21872 lt!858906))))))

(declare-fun b!2316668 () Bool)

(assert (=> b!2316668 (= e!1485215 (or (not (= lt!858906 Nil!27641)) (= lt!859039 lt!858907)))))

(declare-fun b!2316666 () Bool)

(declare-fun e!1485214 () List!27739)

(assert (=> b!2316666 (= e!1485214 (Cons!27641 (h!33042 lt!858907) (++!6785 (t!207355 lt!858907) lt!858906)))))

(declare-fun b!2316665 () Bool)

(assert (=> b!2316665 (= e!1485214 lt!858906)))

(declare-fun d!684851 () Bool)

(assert (=> d!684851 e!1485215))

(declare-fun res!989852 () Bool)

(assert (=> d!684851 (=> (not res!989852) (not e!1485215))))

(assert (=> d!684851 (= res!989852 (= (content!3727 lt!859039) (set.union (content!3727 lt!858907) (content!3727 lt!858906))))))

(assert (=> d!684851 (= lt!859039 e!1485214)))

(declare-fun c!367178 () Bool)

(assert (=> d!684851 (= c!367178 (is-Nil!27641 lt!858907))))

(assert (=> d!684851 (= (++!6785 lt!858907 lt!858906) lt!859039)))

(assert (= (and d!684851 c!367178) b!2316665))

(assert (= (and d!684851 (not c!367178)) b!2316666))

(assert (= (and d!684851 res!989852) b!2316667))

(assert (= (and b!2316667 res!989853) b!2316668))

(declare-fun m!2743957 () Bool)

(assert (=> b!2316667 m!2743957))

(assert (=> b!2316667 m!2743901))

(assert (=> b!2316667 m!2743687))

(declare-fun m!2743959 () Bool)

(assert (=> b!2316666 m!2743959))

(declare-fun m!2743961 () Bool)

(assert (=> d!684851 m!2743961))

(assert (=> d!684851 m!2743909))

(declare-fun m!2743963 () Bool)

(assert (=> d!684851 m!2743963))

(assert (=> b!2316408 d!684851))

(declare-fun d!684853 () Bool)

(declare-fun lt!859042 () Int)

(assert (=> d!684853 (= lt!859042 (size!21872 (list!10962 arr!18)))))

(declare-fun choose!13553 (IArray!18097) Int)

(assert (=> d!684853 (= lt!859042 (choose!13553 arr!18))))

(assert (=> d!684853 (= (size!21871 arr!18) lt!859042)))

(declare-fun bs!458854 () Bool)

(assert (= bs!458854 d!684853))

(assert (=> bs!458854 m!2743685))

(assert (=> bs!458854 m!2743685))

(declare-fun m!2743965 () Bool)

(assert (=> bs!458854 m!2743965))

(declare-fun m!2743967 () Bool)

(assert (=> bs!458854 m!2743967))

(assert (=> b!2316411 d!684853))

(declare-fun b!2316681 () Bool)

(declare-fun e!1485221 () Bool)

(declare-fun isEmpty!15766 (Conc!9046) Bool)

(assert (=> b!2316681 (= e!1485221 (not (isEmpty!15766 (right!21296 lt!858919))))))

(declare-fun b!2316682 () Bool)

(declare-fun res!989869 () Bool)

(assert (=> b!2316682 (=> (not res!989869) (not e!1485221))))

(assert (=> b!2316682 (= res!989869 (isBalanced!2740 (right!21296 lt!858919)))))

(declare-fun b!2316683 () Bool)

(declare-fun e!1485220 () Bool)

(assert (=> b!2316683 (= e!1485220 e!1485221)))

(declare-fun res!989868 () Bool)

(assert (=> b!2316683 (=> (not res!989868) (not e!1485221))))

(assert (=> b!2316683 (= res!989868 (<= (- 1) (- (height!1311 (left!20966 lt!858919)) (height!1311 (right!21296 lt!858919)))))))

(declare-fun d!684855 () Bool)

(declare-fun res!989870 () Bool)

(assert (=> d!684855 (=> res!989870 e!1485220)))

(assert (=> d!684855 (= res!989870 (not (is-Node!9046 lt!858919)))))

(assert (=> d!684855 (= (isBalanced!2740 lt!858919) e!1485220)))

(declare-fun b!2316684 () Bool)

(declare-fun res!989866 () Bool)

(assert (=> b!2316684 (=> (not res!989866) (not e!1485221))))

(assert (=> b!2316684 (= res!989866 (not (isEmpty!15766 (left!20966 lt!858919))))))

(declare-fun b!2316685 () Bool)

(declare-fun res!989867 () Bool)

(assert (=> b!2316685 (=> (not res!989867) (not e!1485221))))

(assert (=> b!2316685 (= res!989867 (<= (- (height!1311 (left!20966 lt!858919)) (height!1311 (right!21296 lt!858919))) 1))))

(declare-fun b!2316686 () Bool)

(declare-fun res!989871 () Bool)

(assert (=> b!2316686 (=> (not res!989871) (not e!1485221))))

(assert (=> b!2316686 (= res!989871 (isBalanced!2740 (left!20966 lt!858919)))))

(assert (= (and d!684855 (not res!989870)) b!2316683))

(assert (= (and b!2316683 res!989868) b!2316685))

(assert (= (and b!2316685 res!989867) b!2316686))

(assert (= (and b!2316686 res!989871) b!2316682))

(assert (= (and b!2316682 res!989869) b!2316684))

(assert (= (and b!2316684 res!989866) b!2316681))

(declare-fun m!2743999 () Bool)

(assert (=> b!2316683 m!2743999))

(declare-fun m!2744001 () Bool)

(assert (=> b!2316683 m!2744001))

(declare-fun m!2744003 () Bool)

(assert (=> b!2316684 m!2744003))

(declare-fun m!2744005 () Bool)

(assert (=> b!2316686 m!2744005))

(assert (=> b!2316685 m!2743999))

(assert (=> b!2316685 m!2744001))

(declare-fun m!2744007 () Bool)

(assert (=> b!2316681 m!2744007))

(declare-fun m!2744009 () Bool)

(assert (=> b!2316682 m!2744009))

(assert (=> b!2316406 d!684855))

(declare-fun d!684859 () Bool)

(assert (=> d!684859 (= (list!10962 arr!18) (innerList!9106 arr!18))))

(assert (=> b!2316412 d!684859))

(declare-fun d!684861 () Bool)

(declare-fun take!477 (List!27739 Int) List!27739)

(declare-fun drop!1500 (List!27739 Int) List!27739)

(assert (=> d!684861 (= (slice!666 lt!858906 0 512) (take!477 (drop!1500 lt!858906 0) (- 512 0)))))

(declare-fun bs!458855 () Bool)

(assert (= bs!458855 d!684861))

(declare-fun m!2744011 () Bool)

(assert (=> bs!458855 m!2744011))

(assert (=> bs!458855 m!2744011))

(declare-fun m!2744013 () Bool)

(assert (=> bs!458855 m!2744013))

(assert (=> b!2316412 d!684861))

(declare-fun d!684863 () Bool)

(declare-fun lt!859045 () Int)

(assert (=> d!684863 (>= lt!859045 0)))

(declare-fun e!1485224 () Int)

(assert (=> d!684863 (= lt!859045 e!1485224)))

(declare-fun c!367181 () Bool)

(assert (=> d!684863 (= c!367181 (is-Nil!27641 lt!858906))))

(assert (=> d!684863 (= (size!21872 lt!858906) lt!859045)))

(declare-fun b!2316691 () Bool)

(assert (=> b!2316691 (= e!1485224 0)))

(declare-fun b!2316692 () Bool)

(assert (=> b!2316692 (= e!1485224 (+ 1 (size!21872 (t!207355 lt!858906))))))

(assert (= (and d!684863 c!367181) b!2316691))

(assert (= (and d!684863 (not c!367181)) b!2316692))

(declare-fun m!2744015 () Bool)

(assert (=> b!2316692 m!2744015))

(assert (=> b!2316412 d!684863))

(declare-fun b!2316695 () Bool)

(declare-fun res!989873 () Bool)

(declare-fun e!1485226 () Bool)

(assert (=> b!2316695 (=> (not res!989873) (not e!1485226))))

(declare-fun lt!859046 () List!27739)

(assert (=> b!2316695 (= res!989873 (= (size!21872 lt!859046) (+ (size!21872 (slice!666 lt!858906 0 512)) (size!21872 (slice!666 lt!858906 512 (size!21872 lt!858906))))))))

(declare-fun b!2316696 () Bool)

(assert (=> b!2316696 (= e!1485226 (or (not (= (slice!666 lt!858906 512 (size!21872 lt!858906)) Nil!27641)) (= lt!859046 (slice!666 lt!858906 0 512))))))

(declare-fun b!2316694 () Bool)

(declare-fun e!1485225 () List!27739)

(assert (=> b!2316694 (= e!1485225 (Cons!27641 (h!33042 (slice!666 lt!858906 0 512)) (++!6785 (t!207355 (slice!666 lt!858906 0 512)) (slice!666 lt!858906 512 (size!21872 lt!858906)))))))

(declare-fun b!2316693 () Bool)

(assert (=> b!2316693 (= e!1485225 (slice!666 lt!858906 512 (size!21872 lt!858906)))))

(declare-fun d!684865 () Bool)

(assert (=> d!684865 e!1485226))

(declare-fun res!989872 () Bool)

(assert (=> d!684865 (=> (not res!989872) (not e!1485226))))

(assert (=> d!684865 (= res!989872 (= (content!3727 lt!859046) (set.union (content!3727 (slice!666 lt!858906 0 512)) (content!3727 (slice!666 lt!858906 512 (size!21872 lt!858906))))))))

(assert (=> d!684865 (= lt!859046 e!1485225)))

(declare-fun c!367182 () Bool)

(assert (=> d!684865 (= c!367182 (is-Nil!27641 (slice!666 lt!858906 0 512)))))

(assert (=> d!684865 (= (++!6785 (slice!666 lt!858906 0 512) (slice!666 lt!858906 512 (size!21872 lt!858906))) lt!859046)))

(assert (= (and d!684865 c!367182) b!2316693))

(assert (= (and d!684865 (not c!367182)) b!2316694))

(assert (= (and d!684865 res!989872) b!2316695))

(assert (= (and b!2316695 res!989873) b!2316696))

(declare-fun m!2744017 () Bool)

(assert (=> b!2316695 m!2744017))

(assert (=> b!2316695 m!2743677))

(declare-fun m!2744019 () Bool)

(assert (=> b!2316695 m!2744019))

(assert (=> b!2316695 m!2743679))

(declare-fun m!2744021 () Bool)

(assert (=> b!2316695 m!2744021))

(assert (=> b!2316694 m!2743679))

(declare-fun m!2744023 () Bool)

(assert (=> b!2316694 m!2744023))

(declare-fun m!2744025 () Bool)

(assert (=> d!684865 m!2744025))

(assert (=> d!684865 m!2743677))

(declare-fun m!2744027 () Bool)

(assert (=> d!684865 m!2744027))

(assert (=> d!684865 m!2743679))

(declare-fun m!2744029 () Bool)

(assert (=> d!684865 m!2744029))

(assert (=> b!2316412 d!684865))

(declare-fun d!684867 () Bool)

(assert (=> d!684867 (= (slice!666 lt!858906 512 (size!21872 lt!858906)) (take!477 (drop!1500 lt!858906 512) (- (size!21872 lt!858906) 512)))))

(declare-fun bs!458856 () Bool)

(assert (= bs!458856 d!684867))

(declare-fun m!2744031 () Bool)

(assert (=> bs!458856 m!2744031))

(assert (=> bs!458856 m!2744031))

(declare-fun m!2744033 () Bool)

(assert (=> bs!458856 m!2744033))

(assert (=> b!2316412 d!684867))

(declare-fun d!684869 () Bool)

(assert (=> d!684869 (= (++!6785 (slice!666 lt!858906 0 512) (slice!666 lt!858906 512 (size!21872 lt!858906))) lt!858906)))

(declare-fun lt!859051 () Unit!40488)

(declare-fun choose!13554 (List!27739 Int) Unit!40488)

(assert (=> d!684869 (= lt!859051 (choose!13554 lt!858906 512))))

(assert (=> d!684869 (= (sliceSplit!9 lt!858906 512) lt!859051)))

(declare-fun bs!458857 () Bool)

(assert (= bs!458857 d!684869))

(assert (=> bs!458857 m!2743677))

(assert (=> bs!458857 m!2743687))

(assert (=> bs!458857 m!2743679))

(assert (=> bs!458857 m!2743687))

(declare-fun m!2744035 () Bool)

(assert (=> bs!458857 m!2744035))

(assert (=> bs!458857 m!2743677))

(assert (=> bs!458857 m!2743679))

(assert (=> bs!458857 m!2743681))

(assert (=> b!2316412 d!684869))

(declare-fun b!2316699 () Bool)

(declare-fun e!1485230 () Bool)

(assert (=> b!2316699 (= e!1485230 (not (isEmpty!15766 (right!21296 acc!252))))))

(declare-fun b!2316700 () Bool)

(declare-fun res!989879 () Bool)

(assert (=> b!2316700 (=> (not res!989879) (not e!1485230))))

(assert (=> b!2316700 (= res!989879 (isBalanced!2740 (right!21296 acc!252)))))

(declare-fun b!2316701 () Bool)

(declare-fun e!1485229 () Bool)

(assert (=> b!2316701 (= e!1485229 e!1485230)))

(declare-fun res!989878 () Bool)

(assert (=> b!2316701 (=> (not res!989878) (not e!1485230))))

(assert (=> b!2316701 (= res!989878 (<= (- 1) (- (height!1311 (left!20966 acc!252)) (height!1311 (right!21296 acc!252)))))))

(declare-fun d!684871 () Bool)

(declare-fun res!989880 () Bool)

(assert (=> d!684871 (=> res!989880 e!1485229)))

(assert (=> d!684871 (= res!989880 (not (is-Node!9046 acc!252)))))

(assert (=> d!684871 (= (isBalanced!2740 acc!252) e!1485229)))

(declare-fun b!2316702 () Bool)

(declare-fun res!989876 () Bool)

(assert (=> b!2316702 (=> (not res!989876) (not e!1485230))))

(assert (=> b!2316702 (= res!989876 (not (isEmpty!15766 (left!20966 acc!252))))))

(declare-fun b!2316703 () Bool)

(declare-fun res!989877 () Bool)

(assert (=> b!2316703 (=> (not res!989877) (not e!1485230))))

(assert (=> b!2316703 (= res!989877 (<= (- (height!1311 (left!20966 acc!252)) (height!1311 (right!21296 acc!252))) 1))))

(declare-fun b!2316704 () Bool)

(declare-fun res!989881 () Bool)

(assert (=> b!2316704 (=> (not res!989881) (not e!1485230))))

(assert (=> b!2316704 (= res!989881 (isBalanced!2740 (left!20966 acc!252)))))

(assert (= (and d!684871 (not res!989880)) b!2316701))

(assert (= (and b!2316701 res!989878) b!2316703))

(assert (= (and b!2316703 res!989877) b!2316704))

(assert (= (and b!2316704 res!989881) b!2316700))

(assert (= (and b!2316700 res!989879) b!2316702))

(assert (= (and b!2316702 res!989876) b!2316699))

(declare-fun m!2744037 () Bool)

(assert (=> b!2316701 m!2744037))

(declare-fun m!2744039 () Bool)

(assert (=> b!2316701 m!2744039))

(declare-fun m!2744041 () Bool)

(assert (=> b!2316702 m!2744041))

(declare-fun m!2744043 () Bool)

(assert (=> b!2316704 m!2744043))

(assert (=> b!2316703 m!2744037))

(assert (=> b!2316703 m!2744039))

(declare-fun m!2744045 () Bool)

(assert (=> b!2316699 m!2744045))

(declare-fun m!2744047 () Bool)

(assert (=> b!2316700 m!2744047))

(assert (=> start!228572 d!684871))

(declare-fun d!684873 () Bool)

(declare-fun c!367186 () Bool)

(assert (=> d!684873 (= c!367186 (is-Node!9046 acc!252))))

(declare-fun e!1485238 () Bool)

(assert (=> d!684873 (= (inv!37506 acc!252) e!1485238)))

(declare-fun b!2316716 () Bool)

(declare-fun inv!37510 (Conc!9046) Bool)

(assert (=> b!2316716 (= e!1485238 (inv!37510 acc!252))))

(declare-fun b!2316717 () Bool)

(declare-fun e!1485239 () Bool)

(assert (=> b!2316717 (= e!1485238 e!1485239)))

(declare-fun res!989887 () Bool)

(assert (=> b!2316717 (= res!989887 (not (is-Leaf!13279 acc!252)))))

(assert (=> b!2316717 (=> res!989887 e!1485239)))

(declare-fun b!2316718 () Bool)

(declare-fun inv!37511 (Conc!9046) Bool)

(assert (=> b!2316718 (= e!1485239 (inv!37511 acc!252))))

(assert (= (and d!684873 c!367186) b!2316716))

(assert (= (and d!684873 (not c!367186)) b!2316717))

(assert (= (and b!2316717 (not res!989887)) b!2316718))

(declare-fun m!2744067 () Bool)

(assert (=> b!2316716 m!2744067))

(declare-fun m!2744069 () Bool)

(assert (=> b!2316718 m!2744069))

(assert (=> start!228572 d!684873))

(declare-fun d!684879 () Bool)

(assert (=> d!684879 (= (inv!37507 arr!18) (<= (size!21872 (innerList!9106 arr!18)) 2147483647))))

(declare-fun bs!458858 () Bool)

(assert (= bs!458858 d!684879))

(declare-fun m!2744071 () Bool)

(assert (=> bs!458858 m!2744071))

(assert (=> start!228572 d!684879))

(declare-fun d!684881 () Bool)

(assert (=> d!684881 (= (inv!37507 (xs!11992 acc!252)) (<= (size!21872 (innerList!9106 (xs!11992 acc!252))) 2147483647))))

(declare-fun bs!458859 () Bool)

(assert (= bs!458859 d!684881))

(declare-fun m!2744073 () Bool)

(assert (=> bs!458859 m!2744073))

(assert (=> b!2316410 d!684881))

(declare-fun b!2316729 () Bool)

(declare-fun res!989889 () Bool)

(declare-fun e!1485245 () Bool)

(assert (=> b!2316729 (=> (not res!989889) (not e!1485245))))

(declare-fun lt!859054 () List!27739)

(assert (=> b!2316729 (= res!989889 (= (size!21872 lt!859054) (+ (size!21872 lt!858907) (size!21872 lt!858913))))))

(declare-fun b!2316730 () Bool)

(assert (=> b!2316730 (= e!1485245 (or (not (= lt!858913 Nil!27641)) (= lt!859054 lt!858907)))))

(declare-fun b!2316728 () Bool)

(declare-fun e!1485244 () List!27739)

(assert (=> b!2316728 (= e!1485244 (Cons!27641 (h!33042 lt!858907) (++!6785 (t!207355 lt!858907) lt!858913)))))

(declare-fun b!2316727 () Bool)

(assert (=> b!2316727 (= e!1485244 lt!858913)))

(declare-fun d!684883 () Bool)

(assert (=> d!684883 e!1485245))

(declare-fun res!989888 () Bool)

(assert (=> d!684883 (=> (not res!989888) (not e!1485245))))

(assert (=> d!684883 (= res!989888 (= (content!3727 lt!859054) (set.union (content!3727 lt!858907) (content!3727 lt!858913))))))

(assert (=> d!684883 (= lt!859054 e!1485244)))

(declare-fun c!367191 () Bool)

(assert (=> d!684883 (= c!367191 (is-Nil!27641 lt!858907))))

(assert (=> d!684883 (= (++!6785 lt!858907 lt!858913) lt!859054)))

(assert (= (and d!684883 c!367191) b!2316727))

(assert (= (and d!684883 (not c!367191)) b!2316728))

(assert (= (and d!684883 res!989888) b!2316729))

(assert (= (and b!2316729 res!989889) b!2316730))

(declare-fun m!2744075 () Bool)

(assert (=> b!2316729 m!2744075))

(assert (=> b!2316729 m!2743901))

(declare-fun m!2744077 () Bool)

(assert (=> b!2316729 m!2744077))

(declare-fun m!2744079 () Bool)

(assert (=> b!2316728 m!2744079))

(declare-fun m!2744081 () Bool)

(assert (=> d!684883 m!2744081))

(assert (=> d!684883 m!2743909))

(declare-fun m!2744083 () Bool)

(assert (=> d!684883 m!2744083))

(assert (=> b!2316414 d!684883))

(declare-fun b!2316733 () Bool)

(declare-fun res!989891 () Bool)

(declare-fun e!1485247 () Bool)

(assert (=> b!2316733 (=> (not res!989891) (not e!1485247))))

(declare-fun lt!859055 () List!27739)

(assert (=> b!2316733 (= res!989891 (= (size!21872 lt!859055) (+ (size!21872 lt!858911) (size!21872 lt!858908))))))

(declare-fun b!2316734 () Bool)

(assert (=> b!2316734 (= e!1485247 (or (not (= lt!858908 Nil!27641)) (= lt!859055 lt!858911)))))

(declare-fun b!2316732 () Bool)

(declare-fun e!1485246 () List!27739)

(assert (=> b!2316732 (= e!1485246 (Cons!27641 (h!33042 lt!858911) (++!6785 (t!207355 lt!858911) lt!858908)))))

(declare-fun b!2316731 () Bool)

(assert (=> b!2316731 (= e!1485246 lt!858908)))

(declare-fun d!684885 () Bool)

(assert (=> d!684885 e!1485247))

(declare-fun res!989890 () Bool)

(assert (=> d!684885 (=> (not res!989890) (not e!1485247))))

(assert (=> d!684885 (= res!989890 (= (content!3727 lt!859055) (set.union (content!3727 lt!858911) (content!3727 lt!858908))))))

(assert (=> d!684885 (= lt!859055 e!1485246)))

(declare-fun c!367192 () Bool)

(assert (=> d!684885 (= c!367192 (is-Nil!27641 lt!858911))))

(assert (=> d!684885 (= (++!6785 lt!858911 lt!858908) lt!859055)))

(assert (= (and d!684885 c!367192) b!2316731))

(assert (= (and d!684885 (not c!367192)) b!2316732))

(assert (= (and d!684885 res!989890) b!2316733))

(assert (= (and b!2316733 res!989891) b!2316734))

(declare-fun m!2744085 () Bool)

(assert (=> b!2316733 m!2744085))

(assert (=> b!2316733 m!2743903))

(assert (=> b!2316733 m!2743787))

(declare-fun m!2744087 () Bool)

(assert (=> b!2316732 m!2744087))

(declare-fun m!2744089 () Bool)

(assert (=> d!684885 m!2744089))

(assert (=> d!684885 m!2743911))

(assert (=> d!684885 m!2743795))

(assert (=> b!2316414 d!684885))

(declare-fun d!684887 () Bool)

(assert (=> d!684887 (= (++!6785 (++!6785 lt!858907 lt!858911) lt!858908) (++!6785 lt!858907 (++!6785 lt!858911 lt!858908)))))

(declare-fun lt!859058 () Unit!40488)

(declare-fun choose!13555 (List!27739 List!27739 List!27739) Unit!40488)

(assert (=> d!684887 (= lt!859058 (choose!13555 lt!858907 lt!858911 lt!858908))))

(assert (=> d!684887 (= (lemmaConcatAssociativity!1442 lt!858907 lt!858911 lt!858908) lt!859058)))

(declare-fun bs!458860 () Bool)

(assert (= bs!458860 d!684887))

(assert (=> bs!458860 m!2743707))

(declare-fun m!2744091 () Bool)

(assert (=> bs!458860 m!2744091))

(assert (=> bs!458860 m!2743707))

(assert (=> bs!458860 m!2743709))

(assert (=> bs!458860 m!2743669))

(assert (=> bs!458860 m!2743669))

(declare-fun m!2744095 () Bool)

(assert (=> bs!458860 m!2744095))

(assert (=> b!2316414 d!684887))

(declare-fun d!684889 () Bool)

(declare-fun c!367195 () Bool)

(assert (=> d!684889 (= c!367195 (is-Node!9046 (left!20966 acc!252)))))

(declare-fun e!1485250 () Bool)

(assert (=> d!684889 (= (inv!37506 (left!20966 acc!252)) e!1485250)))

(declare-fun b!2316739 () Bool)

(assert (=> b!2316739 (= e!1485250 (inv!37510 (left!20966 acc!252)))))

(declare-fun b!2316740 () Bool)

(declare-fun e!1485251 () Bool)

(assert (=> b!2316740 (= e!1485250 e!1485251)))

(declare-fun res!989892 () Bool)

(assert (=> b!2316740 (= res!989892 (not (is-Leaf!13279 (left!20966 acc!252))))))

(assert (=> b!2316740 (=> res!989892 e!1485251)))

(declare-fun b!2316741 () Bool)

(assert (=> b!2316741 (= e!1485251 (inv!37511 (left!20966 acc!252)))))

(assert (= (and d!684889 c!367195) b!2316739))

(assert (= (and d!684889 (not c!367195)) b!2316740))

(assert (= (and b!2316740 (not res!989892)) b!2316741))

(declare-fun m!2744103 () Bool)

(assert (=> b!2316739 m!2744103))

(declare-fun m!2744105 () Bool)

(assert (=> b!2316741 m!2744105))

(assert (=> b!2316409 d!684889))

(declare-fun d!684893 () Bool)

(declare-fun c!367196 () Bool)

(assert (=> d!684893 (= c!367196 (is-Node!9046 (right!21296 acc!252)))))

(declare-fun e!1485252 () Bool)

(assert (=> d!684893 (= (inv!37506 (right!21296 acc!252)) e!1485252)))

(declare-fun b!2316742 () Bool)

(assert (=> b!2316742 (= e!1485252 (inv!37510 (right!21296 acc!252)))))

(declare-fun b!2316743 () Bool)

(declare-fun e!1485253 () Bool)

(assert (=> b!2316743 (= e!1485252 e!1485253)))

(declare-fun res!989893 () Bool)

(assert (=> b!2316743 (= res!989893 (not (is-Leaf!13279 (right!21296 acc!252))))))

(assert (=> b!2316743 (=> res!989893 e!1485253)))

(declare-fun b!2316744 () Bool)

(assert (=> b!2316744 (= e!1485253 (inv!37511 (right!21296 acc!252)))))

(assert (= (and d!684893 c!367196) b!2316742))

(assert (= (and d!684893 (not c!367196)) b!2316743))

(assert (= (and b!2316743 (not res!989893)) b!2316744))

(declare-fun m!2744107 () Bool)

(assert (=> b!2316742 m!2744107))

(declare-fun m!2744109 () Bool)

(assert (=> b!2316744 m!2744109))

(assert (=> b!2316409 d!684893))

(declare-fun b!2316745 () Bool)

(declare-fun e!1485255 () Bool)

(assert (=> b!2316745 (= e!1485255 (not (isEmpty!15766 (right!21296 lt!858918))))))

(declare-fun b!2316746 () Bool)

(declare-fun res!989897 () Bool)

(assert (=> b!2316746 (=> (not res!989897) (not e!1485255))))

(assert (=> b!2316746 (= res!989897 (isBalanced!2740 (right!21296 lt!858918)))))

(declare-fun b!2316747 () Bool)

(declare-fun e!1485254 () Bool)

(assert (=> b!2316747 (= e!1485254 e!1485255)))

(declare-fun res!989896 () Bool)

(assert (=> b!2316747 (=> (not res!989896) (not e!1485255))))

(assert (=> b!2316747 (= res!989896 (<= (- 1) (- (height!1311 (left!20966 lt!858918)) (height!1311 (right!21296 lt!858918)))))))

(declare-fun d!684895 () Bool)

(declare-fun res!989898 () Bool)

(assert (=> d!684895 (=> res!989898 e!1485254)))

(assert (=> d!684895 (= res!989898 (not (is-Node!9046 lt!858918)))))

(assert (=> d!684895 (= (isBalanced!2740 lt!858918) e!1485254)))

(declare-fun b!2316748 () Bool)

(declare-fun res!989894 () Bool)

(assert (=> b!2316748 (=> (not res!989894) (not e!1485255))))

(assert (=> b!2316748 (= res!989894 (not (isEmpty!15766 (left!20966 lt!858918))))))

(declare-fun b!2316749 () Bool)

(declare-fun res!989895 () Bool)

(assert (=> b!2316749 (=> (not res!989895) (not e!1485255))))

(assert (=> b!2316749 (= res!989895 (<= (- (height!1311 (left!20966 lt!858918)) (height!1311 (right!21296 lt!858918))) 1))))

(declare-fun b!2316750 () Bool)

(declare-fun res!989899 () Bool)

(assert (=> b!2316750 (=> (not res!989899) (not e!1485255))))

(assert (=> b!2316750 (= res!989899 (isBalanced!2740 (left!20966 lt!858918)))))

(assert (= (and d!684895 (not res!989898)) b!2316747))

(assert (= (and b!2316747 res!989896) b!2316749))

(assert (= (and b!2316749 res!989895) b!2316750))

(assert (= (and b!2316750 res!989899) b!2316746))

(assert (= (and b!2316746 res!989897) b!2316748))

(assert (= (and b!2316748 res!989894) b!2316745))

(declare-fun m!2744111 () Bool)

(assert (=> b!2316747 m!2744111))

(declare-fun m!2744113 () Bool)

(assert (=> b!2316747 m!2744113))

(declare-fun m!2744115 () Bool)

(assert (=> b!2316748 m!2744115))

(declare-fun m!2744117 () Bool)

(assert (=> b!2316750 m!2744117))

(assert (=> b!2316749 m!2744111))

(assert (=> b!2316749 m!2744113))

(declare-fun m!2744119 () Bool)

(assert (=> b!2316745 m!2744119))

(declare-fun m!2744121 () Bool)

(assert (=> b!2316746 m!2744121))

(assert (=> b!2316404 d!684895))

(declare-fun b!2316755 () Bool)

(declare-fun e!1485258 () Bool)

(declare-fun tp_is_empty!10787 () Bool)

(declare-fun tp!735806 () Bool)

(assert (=> b!2316755 (= e!1485258 (and tp_is_empty!10787 tp!735806))))

(assert (=> b!2316407 (= tp!735790 e!1485258)))

(assert (= (and b!2316407 (is-Cons!27641 (innerList!9106 arr!18))) b!2316755))

(declare-fun b!2316756 () Bool)

(declare-fun e!1485259 () Bool)

(declare-fun tp!735807 () Bool)

(assert (=> b!2316756 (= e!1485259 (and tp_is_empty!10787 tp!735807))))

(assert (=> b!2316405 (= tp!735788 e!1485259)))

(assert (= (and b!2316405 (is-Cons!27641 (innerList!9106 (xs!11992 acc!252)))) b!2316756))

(declare-fun tp!735815 () Bool)

(declare-fun e!1485265 () Bool)

(declare-fun b!2316765 () Bool)

(declare-fun tp!735816 () Bool)

(assert (=> b!2316765 (= e!1485265 (and (inv!37506 (left!20966 (left!20966 acc!252))) tp!735815 (inv!37506 (right!21296 (left!20966 acc!252))) tp!735816))))

(declare-fun b!2316767 () Bool)

(declare-fun e!1485264 () Bool)

(declare-fun tp!735814 () Bool)

(assert (=> b!2316767 (= e!1485264 tp!735814)))

(declare-fun b!2316766 () Bool)

(assert (=> b!2316766 (= e!1485265 (and (inv!37507 (xs!11992 (left!20966 acc!252))) e!1485264))))

(assert (=> b!2316409 (= tp!735791 (and (inv!37506 (left!20966 acc!252)) e!1485265))))

(assert (= (and b!2316409 (is-Node!9046 (left!20966 acc!252))) b!2316765))

(assert (= b!2316766 b!2316767))

(assert (= (and b!2316409 (is-Leaf!13279 (left!20966 acc!252))) b!2316766))

(declare-fun m!2744123 () Bool)

(assert (=> b!2316765 m!2744123))

(declare-fun m!2744125 () Bool)

(assert (=> b!2316765 m!2744125))

(declare-fun m!2744127 () Bool)

(assert (=> b!2316766 m!2744127))

(assert (=> b!2316409 m!2743699))

(declare-fun e!1485267 () Bool)

(declare-fun tp!735818 () Bool)

(declare-fun b!2316768 () Bool)

(declare-fun tp!735819 () Bool)

(assert (=> b!2316768 (= e!1485267 (and (inv!37506 (left!20966 (right!21296 acc!252))) tp!735818 (inv!37506 (right!21296 (right!21296 acc!252))) tp!735819))))

(declare-fun b!2316770 () Bool)

(declare-fun e!1485266 () Bool)

(declare-fun tp!735817 () Bool)

(assert (=> b!2316770 (= e!1485266 tp!735817)))

(declare-fun b!2316769 () Bool)

(assert (=> b!2316769 (= e!1485267 (and (inv!37507 (xs!11992 (right!21296 acc!252))) e!1485266))))

(assert (=> b!2316409 (= tp!735789 (and (inv!37506 (right!21296 acc!252)) e!1485267))))

(assert (= (and b!2316409 (is-Node!9046 (right!21296 acc!252))) b!2316768))

(assert (= b!2316769 b!2316770))

(assert (= (and b!2316409 (is-Leaf!13279 (right!21296 acc!252))) b!2316769))

(declare-fun m!2744129 () Bool)

(assert (=> b!2316768 m!2744129))

(declare-fun m!2744131 () Bool)

(assert (=> b!2316768 m!2744131))

(declare-fun m!2744133 () Bool)

(assert (=> b!2316769 m!2744133))

(assert (=> b!2316409 m!2743701))

(push 1)

(assert (not d!684869))

(assert (not d!684885))

(assert (not b!2316666))

(assert (not b!2316685))

(assert (not d!684887))

(assert (not bm!137736))

(assert (not b!2316703))

(assert (not d!684851))

(assert (not b!2316718))

(assert (not b!2316746))

(assert (not bm!137737))

(assert (not b!2316684))

(assert (not b!2316457))

(assert (not bm!137715))

(assert (not b!2316767))

(assert (not b!2316619))

(assert (not d!684823))

(assert (not b!2316729))

(assert (not b!2316409))

(assert (not d!684861))

(assert (not b!2316750))

(assert (not b!2316458))

(assert (not b!2316744))

(assert (not bm!137705))

(assert (not b!2316487))

(assert (not b!2316732))

(assert (not b!2316745))

(assert (not d!684879))

(assert (not d!684845))

(assert (not bm!137700))

(assert (not b!2316749))

(assert (not b!2316728))

(assert (not b!2316683))

(assert (not b!2316701))

(assert (not b!2316596))

(assert (not b!2316755))

(assert (not b!2316616))

(assert (not d!684843))

(assert (not d!684865))

(assert (not bm!137709))

(assert (not b!2316603))

(assert (not b!2316479))

(assert (not d!684867))

(assert (not d!684881))

(assert (not b!2316682))

(assert (not b!2316739))

(assert (not d!684849))

(assert (not b!2316694))

(assert (not b!2316681))

(assert (not bm!137702))

(assert (not b!2316618))

(assert (not b!2316611))

(assert (not b!2316770))

(assert (not d!684813))

(assert (not b!2316692))

(assert (not b!2316748))

(assert (not b!2316742))

(assert (not bm!137698))

(assert (not b!2316486))

(assert (not b!2316768))

(assert (not b!2316609))

(assert (not b!2316478))

(assert (not b!2316700))

(assert (not b!2316695))

(assert (not b!2316716))

(assert (not b!2316640))

(assert (not b!2316747))

(assert (not b!2316686))

(assert (not d!684883))

(assert (not b!2316704))

(assert (not b!2316615))

(assert (not b!2316667))

(assert (not b!2316702))

(assert (not b!2316592))

(assert (not b!2316614))

(assert (not d!684853))

(assert (not b!2316496))

(assert (not b!2316741))

(assert (not b!2316756))

(assert (not b!2316699))

(assert (not b!2316766))

(assert (not bm!137712))

(assert (not b!2316733))

(assert (not d!684829))

(assert (not b!2316769))

(assert tp_is_empty!10787)

(assert (not b!2316606))

(assert (not b!2316765))

(assert (not b!2316641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

