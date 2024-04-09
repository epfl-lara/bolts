; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!63294 () Bool)

(assert start!63294)

(declare-fun b!712600 () Bool)

(declare-fun res!475941 () Bool)

(declare-fun e!400810 () Bool)

(assert (=> b!712600 (=> (not res!475941) (not e!400810))))

(declare-datatypes ((array!40409 0))(
  ( (array!40410 (arr!19342 (Array (_ BitVec 32) (_ BitVec 64))) (size!19751 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40409)

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40409 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!712600 (= res!475941 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712601 () Bool)

(declare-fun res!475958 () Bool)

(assert (=> b!712601 (=> (not res!475958) (not e!400810))))

(declare-datatypes ((List!13436 0))(
  ( (Nil!13433) (Cons!13432 (h!14477 (_ BitVec 64)) (t!19756 List!13436)) )
))
(declare-fun lt!318559 () List!13436)

(declare-fun contains!3979 (List!13436 (_ BitVec 64)) Bool)

(assert (=> b!712601 (= res!475958 (not (contains!3979 lt!318559 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712602 () Bool)

(declare-fun res!475955 () Bool)

(assert (=> b!712602 (=> (not res!475955) (not e!400810))))

(declare-fun lt!318560 () List!13436)

(declare-fun subseq!423 (List!13436 List!13436) Bool)

(assert (=> b!712602 (= res!475955 (subseq!423 lt!318559 lt!318560))))

(declare-fun res!475939 () Bool)

(declare-fun e!400811 () Bool)

(assert (=> start!63294 (=> (not res!475939) (not e!400811))))

(assert (=> start!63294 (= res!475939 (and (bvslt (size!19751 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19751 a!3591))))))

(assert (=> start!63294 e!400811))

(assert (=> start!63294 true))

(declare-fun array_inv!15116 (array!40409) Bool)

(assert (=> start!63294 (array_inv!15116 a!3591)))

(declare-fun b!712603 () Bool)

(declare-fun res!475934 () Bool)

(assert (=> b!712603 (=> (not res!475934) (not e!400810))))

(declare-fun noDuplicate!1226 (List!13436) Bool)

(assert (=> b!712603 (= res!475934 (noDuplicate!1226 lt!318560))))

(declare-fun b!712604 () Bool)

(declare-fun res!475943 () Bool)

(assert (=> b!712604 (=> (not res!475943) (not e!400810))))

(assert (=> b!712604 (= res!475943 (not (contains!3979 lt!318560 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712605 () Bool)

(declare-fun res!475956 () Bool)

(assert (=> b!712605 (=> (not res!475956) (not e!400811))))

(assert (=> b!712605 (= res!475956 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19751 a!3591)))))

(declare-fun b!712606 () Bool)

(declare-fun res!475949 () Bool)

(assert (=> b!712606 (=> (not res!475949) (not e!400811))))

(declare-fun acc!652 () List!13436)

(assert (=> b!712606 (= res!475949 (not (contains!3979 acc!652 k0!2824)))))

(declare-fun b!712607 () Bool)

(declare-fun res!475952 () Bool)

(assert (=> b!712607 (=> (not res!475952) (not e!400810))))

(assert (=> b!712607 (= res!475952 (not (contains!3979 lt!318559 k0!2824)))))

(declare-fun b!712608 () Bool)

(declare-fun res!475950 () Bool)

(assert (=> b!712608 (=> (not res!475950) (not e!400810))))

(assert (=> b!712608 (= res!475950 (not (contains!3979 lt!318560 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712609 () Bool)

(declare-fun res!475962 () Bool)

(assert (=> b!712609 (=> (not res!475962) (not e!400811))))

(assert (=> b!712609 (= res!475962 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!712610 () Bool)

(declare-fun res!475945 () Bool)

(assert (=> b!712610 (=> (not res!475945) (not e!400811))))

(assert (=> b!712610 (= res!475945 (not (contains!3979 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712611 () Bool)

(declare-fun res!475938 () Bool)

(assert (=> b!712611 (=> (not res!475938) (not e!400811))))

(assert (=> b!712611 (= res!475938 (not (contains!3979 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712612 () Bool)

(declare-fun res!475957 () Bool)

(assert (=> b!712612 (=> (not res!475957) (not e!400811))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!712612 (= res!475957 (validKeyInArray!0 k0!2824))))

(declare-fun b!712613 () Bool)

(declare-fun res!475935 () Bool)

(assert (=> b!712613 (=> (not res!475935) (not e!400811))))

(declare-fun newAcc!49 () List!13436)

(assert (=> b!712613 (= res!475935 (not (contains!3979 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712614 () Bool)

(declare-fun res!475948 () Bool)

(assert (=> b!712614 (=> (not res!475948) (not e!400810))))

(assert (=> b!712614 (= res!475948 (noDuplicate!1226 lt!318559))))

(declare-fun b!712615 () Bool)

(declare-fun res!475951 () Bool)

(assert (=> b!712615 (=> (not res!475951) (not e!400811))))

(assert (=> b!712615 (= res!475951 (noDuplicate!1226 newAcc!49))))

(declare-fun b!712616 () Bool)

(declare-fun res!475947 () Bool)

(assert (=> b!712616 (=> (not res!475947) (not e!400811))))

(assert (=> b!712616 (= res!475947 (contains!3979 newAcc!49 k0!2824))))

(declare-fun b!712617 () Bool)

(declare-fun res!475959 () Bool)

(assert (=> b!712617 (=> (not res!475959) (not e!400811))))

(declare-fun arrayNoDuplicates!0 (array!40409 (_ BitVec 32) List!13436) Bool)

(assert (=> b!712617 (= res!475959 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!712618 () Bool)

(declare-fun res!475953 () Bool)

(assert (=> b!712618 (=> (not res!475953) (not e!400811))))

(assert (=> b!712618 (= res!475953 (subseq!423 acc!652 newAcc!49))))

(declare-fun b!712619 () Bool)

(declare-fun res!475937 () Bool)

(assert (=> b!712619 (=> (not res!475937) (not e!400811))))

(declare-fun -!388 (List!13436 (_ BitVec 64)) List!13436)

(assert (=> b!712619 (= res!475937 (= (-!388 newAcc!49 k0!2824) acc!652))))

(declare-fun b!712620 () Bool)

(assert (=> b!712620 (= e!400811 e!400810)))

(declare-fun res!475954 () Bool)

(assert (=> b!712620 (=> (not res!475954) (not e!400810))))

(assert (=> b!712620 (= res!475954 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!533 (List!13436 (_ BitVec 64)) List!13436)

(assert (=> b!712620 (= lt!318560 ($colon$colon!533 newAcc!49 (select (arr!19342 a!3591) from!2969)))))

(assert (=> b!712620 (= lt!318559 ($colon$colon!533 acc!652 (select (arr!19342 a!3591) from!2969)))))

(declare-fun b!712621 () Bool)

(declare-fun res!475944 () Bool)

(assert (=> b!712621 (=> (not res!475944) (not e!400811))))

(assert (=> b!712621 (= res!475944 (not (contains!3979 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712622 () Bool)

(declare-fun res!475946 () Bool)

(assert (=> b!712622 (=> (not res!475946) (not e!400810))))

(assert (=> b!712622 (= res!475946 (= (-!388 lt!318560 k0!2824) lt!318559))))

(declare-fun b!712623 () Bool)

(declare-fun res!475942 () Bool)

(assert (=> b!712623 (=> (not res!475942) (not e!400811))))

(assert (=> b!712623 (= res!475942 (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)))))

(declare-fun b!712624 () Bool)

(assert (=> b!712624 (= e!400810 (not (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49)))))

(assert (=> b!712624 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318560)))

(declare-datatypes ((Unit!24612 0))(
  ( (Unit!24613) )
))
(declare-fun lt!318558 () Unit!24612)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40409 (_ BitVec 64) (_ BitVec 32) List!13436 List!13436) Unit!24612)

(assert (=> b!712624 (= lt!318558 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318559 lt!318560))))

(declare-fun b!712625 () Bool)

(declare-fun res!475940 () Bool)

(assert (=> b!712625 (=> (not res!475940) (not e!400810))))

(assert (=> b!712625 (= res!475940 (contains!3979 lt!318560 k0!2824))))

(declare-fun b!712626 () Bool)

(declare-fun res!475936 () Bool)

(assert (=> b!712626 (=> (not res!475936) (not e!400810))))

(assert (=> b!712626 (= res!475936 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318559))))

(declare-fun b!712627 () Bool)

(declare-fun res!475960 () Bool)

(assert (=> b!712627 (=> (not res!475960) (not e!400810))))

(assert (=> b!712627 (= res!475960 (not (contains!3979 lt!318559 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!712628 () Bool)

(declare-fun res!475961 () Bool)

(assert (=> b!712628 (=> (not res!475961) (not e!400811))))

(assert (=> b!712628 (= res!475961 (noDuplicate!1226 acc!652))))

(assert (= (and start!63294 res!475939) b!712628))

(assert (= (and b!712628 res!475961) b!712615))

(assert (= (and b!712615 res!475951) b!712610))

(assert (= (and b!712610 res!475945) b!712611))

(assert (= (and b!712611 res!475938) b!712609))

(assert (= (and b!712609 res!475962) b!712606))

(assert (= (and b!712606 res!475949) b!712612))

(assert (= (and b!712612 res!475957) b!712617))

(assert (= (and b!712617 res!475959) b!712618))

(assert (= (and b!712618 res!475953) b!712616))

(assert (= (and b!712616 res!475947) b!712619))

(assert (= (and b!712619 res!475937) b!712613))

(assert (= (and b!712613 res!475935) b!712621))

(assert (= (and b!712621 res!475944) b!712605))

(assert (= (and b!712605 res!475956) b!712623))

(assert (= (and b!712623 res!475942) b!712620))

(assert (= (and b!712620 res!475954) b!712614))

(assert (= (and b!712614 res!475948) b!712603))

(assert (= (and b!712603 res!475934) b!712601))

(assert (= (and b!712601 res!475958) b!712627))

(assert (= (and b!712627 res!475960) b!712600))

(assert (= (and b!712600 res!475941) b!712607))

(assert (= (and b!712607 res!475952) b!712626))

(assert (= (and b!712626 res!475936) b!712602))

(assert (= (and b!712602 res!475955) b!712625))

(assert (= (and b!712625 res!475940) b!712622))

(assert (= (and b!712622 res!475946) b!712608))

(assert (= (and b!712608 res!475950) b!712604))

(assert (= (and b!712604 res!475943) b!712624))

(declare-fun m!669525 () Bool)

(assert (=> b!712621 m!669525))

(declare-fun m!669527 () Bool)

(assert (=> b!712611 m!669527))

(declare-fun m!669529 () Bool)

(assert (=> b!712618 m!669529))

(declare-fun m!669531 () Bool)

(assert (=> b!712606 m!669531))

(declare-fun m!669533 () Bool)

(assert (=> b!712601 m!669533))

(declare-fun m!669535 () Bool)

(assert (=> b!712610 m!669535))

(declare-fun m!669537 () Bool)

(assert (=> b!712614 m!669537))

(declare-fun m!669539 () Bool)

(assert (=> b!712615 m!669539))

(declare-fun m!669541 () Bool)

(assert (=> b!712623 m!669541))

(assert (=> b!712623 m!669541))

(declare-fun m!669543 () Bool)

(assert (=> b!712623 m!669543))

(declare-fun m!669545 () Bool)

(assert (=> b!712627 m!669545))

(declare-fun m!669547 () Bool)

(assert (=> b!712608 m!669547))

(declare-fun m!669549 () Bool)

(assert (=> b!712612 m!669549))

(declare-fun m!669551 () Bool)

(assert (=> b!712616 m!669551))

(declare-fun m!669553 () Bool)

(assert (=> b!712617 m!669553))

(declare-fun m!669555 () Bool)

(assert (=> b!712613 m!669555))

(declare-fun m!669557 () Bool)

(assert (=> b!712622 m!669557))

(declare-fun m!669559 () Bool)

(assert (=> b!712602 m!669559))

(declare-fun m!669561 () Bool)

(assert (=> b!712619 m!669561))

(declare-fun m!669563 () Bool)

(assert (=> b!712604 m!669563))

(declare-fun m!669565 () Bool)

(assert (=> b!712609 m!669565))

(declare-fun m!669567 () Bool)

(assert (=> b!712603 m!669567))

(assert (=> b!712620 m!669541))

(assert (=> b!712620 m!669541))

(declare-fun m!669569 () Bool)

(assert (=> b!712620 m!669569))

(assert (=> b!712620 m!669541))

(declare-fun m!669571 () Bool)

(assert (=> b!712620 m!669571))

(declare-fun m!669573 () Bool)

(assert (=> b!712628 m!669573))

(declare-fun m!669575 () Bool)

(assert (=> b!712600 m!669575))

(declare-fun m!669577 () Bool)

(assert (=> b!712626 m!669577))

(declare-fun m!669579 () Bool)

(assert (=> start!63294 m!669579))

(declare-fun m!669581 () Bool)

(assert (=> b!712625 m!669581))

(declare-fun m!669583 () Bool)

(assert (=> b!712624 m!669583))

(declare-fun m!669585 () Bool)

(assert (=> b!712624 m!669585))

(declare-fun m!669587 () Bool)

(assert (=> b!712624 m!669587))

(declare-fun m!669589 () Bool)

(assert (=> b!712607 m!669589))

(check-sat (not b!712607) (not b!712610) (not b!712620) (not b!712627) (not b!712606) (not b!712622) (not b!712612) (not b!712608) (not b!712602) (not start!63294) (not b!712626) (not b!712619) (not b!712625) (not b!712618) (not b!712621) (not b!712604) (not b!712615) (not b!712600) (not b!712601) (not b!712603) (not b!712624) (not b!712623) (not b!712609) (not b!712613) (not b!712628) (not b!712614) (not b!712611) (not b!712617) (not b!712616))
(check-sat)
(get-model)

(declare-fun d!97915 () Bool)

(assert (=> d!97915 (= (array_inv!15116 a!3591) (bvsge (size!19751 a!3591) #b00000000000000000000000000000000))))

(assert (=> start!63294 d!97915))

(declare-fun d!97917 () Bool)

(declare-fun lt!318572 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!364 (List!13436) (InoxSet (_ BitVec 64)))

(assert (=> d!97917 (= lt!318572 (select (content!364 lt!318559) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400826 () Bool)

(assert (=> d!97917 (= lt!318572 e!400826)))

(declare-fun res!476054 () Bool)

(assert (=> d!97917 (=> (not res!476054) (not e!400826))))

(get-info :version)

(assert (=> d!97917 (= res!476054 ((_ is Cons!13432) lt!318559))))

(assert (=> d!97917 (= (contains!3979 lt!318559 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318572)))

(declare-fun b!712720 () Bool)

(declare-fun e!400827 () Bool)

(assert (=> b!712720 (= e!400826 e!400827)))

(declare-fun res!476055 () Bool)

(assert (=> b!712720 (=> res!476055 e!400827)))

(assert (=> b!712720 (= res!476055 (= (h!14477 lt!318559) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712721 () Bool)

(assert (=> b!712721 (= e!400827 (contains!3979 (t!19756 lt!318559) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97917 res!476054) b!712720))

(assert (= (and b!712720 (not res!476055)) b!712721))

(declare-fun m!669657 () Bool)

(assert (=> d!97917 m!669657))

(declare-fun m!669659 () Bool)

(assert (=> d!97917 m!669659))

(declare-fun m!669661 () Bool)

(assert (=> b!712721 m!669661))

(assert (=> b!712627 d!97917))

(declare-fun d!97919 () Bool)

(declare-fun res!476060 () Bool)

(declare-fun e!400832 () Bool)

(assert (=> d!97919 (=> res!476060 e!400832)))

(assert (=> d!97919 (= res!476060 ((_ is Nil!13433) acc!652))))

(assert (=> d!97919 (= (noDuplicate!1226 acc!652) e!400832)))

(declare-fun b!712726 () Bool)

(declare-fun e!400833 () Bool)

(assert (=> b!712726 (= e!400832 e!400833)))

(declare-fun res!476061 () Bool)

(assert (=> b!712726 (=> (not res!476061) (not e!400833))))

(assert (=> b!712726 (= res!476061 (not (contains!3979 (t!19756 acc!652) (h!14477 acc!652))))))

(declare-fun b!712727 () Bool)

(assert (=> b!712727 (= e!400833 (noDuplicate!1226 (t!19756 acc!652)))))

(assert (= (and d!97919 (not res!476060)) b!712726))

(assert (= (and b!712726 res!476061) b!712727))

(declare-fun m!669663 () Bool)

(assert (=> b!712726 m!669663))

(declare-fun m!669665 () Bool)

(assert (=> b!712727 m!669665))

(assert (=> b!712628 d!97919))

(declare-fun d!97921 () Bool)

(declare-fun lt!318573 () Bool)

(assert (=> d!97921 (= lt!318573 (select (content!364 acc!652) k0!2824))))

(declare-fun e!400834 () Bool)

(assert (=> d!97921 (= lt!318573 e!400834)))

(declare-fun res!476062 () Bool)

(assert (=> d!97921 (=> (not res!476062) (not e!400834))))

(assert (=> d!97921 (= res!476062 ((_ is Cons!13432) acc!652))))

(assert (=> d!97921 (= (contains!3979 acc!652 k0!2824) lt!318573)))

(declare-fun b!712728 () Bool)

(declare-fun e!400835 () Bool)

(assert (=> b!712728 (= e!400834 e!400835)))

(declare-fun res!476063 () Bool)

(assert (=> b!712728 (=> res!476063 e!400835)))

(assert (=> b!712728 (= res!476063 (= (h!14477 acc!652) k0!2824))))

(declare-fun b!712729 () Bool)

(assert (=> b!712729 (= e!400835 (contains!3979 (t!19756 acc!652) k0!2824))))

(assert (= (and d!97921 res!476062) b!712728))

(assert (= (and b!712728 (not res!476063)) b!712729))

(declare-fun m!669667 () Bool)

(assert (=> d!97921 m!669667))

(declare-fun m!669669 () Bool)

(assert (=> d!97921 m!669669))

(declare-fun m!669671 () Bool)

(assert (=> b!712729 m!669671))

(assert (=> b!712606 d!97921))

(declare-fun d!97923 () Bool)

(declare-fun lt!318574 () Bool)

(assert (=> d!97923 (= lt!318574 (select (content!364 lt!318560) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400836 () Bool)

(assert (=> d!97923 (= lt!318574 e!400836)))

(declare-fun res!476064 () Bool)

(assert (=> d!97923 (=> (not res!476064) (not e!400836))))

(assert (=> d!97923 (= res!476064 ((_ is Cons!13432) lt!318560))))

(assert (=> d!97923 (= (contains!3979 lt!318560 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318574)))

(declare-fun b!712730 () Bool)

(declare-fun e!400837 () Bool)

(assert (=> b!712730 (= e!400836 e!400837)))

(declare-fun res!476065 () Bool)

(assert (=> b!712730 (=> res!476065 e!400837)))

(assert (=> b!712730 (= res!476065 (= (h!14477 lt!318560) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712731 () Bool)

(assert (=> b!712731 (= e!400837 (contains!3979 (t!19756 lt!318560) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97923 res!476064) b!712730))

(assert (= (and b!712730 (not res!476065)) b!712731))

(declare-fun m!669673 () Bool)

(assert (=> d!97923 m!669673))

(declare-fun m!669675 () Bool)

(assert (=> d!97923 m!669675))

(declare-fun m!669677 () Bool)

(assert (=> b!712731 m!669677))

(assert (=> b!712608 d!97923))

(declare-fun d!97925 () Bool)

(declare-fun lt!318575 () Bool)

(assert (=> d!97925 (= lt!318575 (select (content!364 lt!318559) k0!2824))))

(declare-fun e!400838 () Bool)

(assert (=> d!97925 (= lt!318575 e!400838)))

(declare-fun res!476066 () Bool)

(assert (=> d!97925 (=> (not res!476066) (not e!400838))))

(assert (=> d!97925 (= res!476066 ((_ is Cons!13432) lt!318559))))

(assert (=> d!97925 (= (contains!3979 lt!318559 k0!2824) lt!318575)))

(declare-fun b!712732 () Bool)

(declare-fun e!400839 () Bool)

(assert (=> b!712732 (= e!400838 e!400839)))

(declare-fun res!476067 () Bool)

(assert (=> b!712732 (=> res!476067 e!400839)))

(assert (=> b!712732 (= res!476067 (= (h!14477 lt!318559) k0!2824))))

(declare-fun b!712733 () Bool)

(assert (=> b!712733 (= e!400839 (contains!3979 (t!19756 lt!318559) k0!2824))))

(assert (= (and d!97925 res!476066) b!712732))

(assert (= (and b!712732 (not res!476067)) b!712733))

(assert (=> d!97925 m!669657))

(declare-fun m!669679 () Bool)

(assert (=> d!97925 m!669679))

(declare-fun m!669681 () Bool)

(assert (=> b!712733 m!669681))

(assert (=> b!712607 d!97925))

(declare-fun d!97927 () Bool)

(declare-fun res!476072 () Bool)

(declare-fun e!400844 () Bool)

(assert (=> d!97927 (=> res!476072 e!400844)))

(assert (=> d!97927 (= res!476072 (= (select (arr!19342 a!3591) from!2969) k0!2824))))

(assert (=> d!97927 (= (arrayContainsKey!0 a!3591 k0!2824 from!2969) e!400844)))

(declare-fun b!712738 () Bool)

(declare-fun e!400845 () Bool)

(assert (=> b!712738 (= e!400844 e!400845)))

(declare-fun res!476073 () Bool)

(assert (=> b!712738 (=> (not res!476073) (not e!400845))))

(assert (=> b!712738 (= res!476073 (bvslt (bvadd from!2969 #b00000000000000000000000000000001) (size!19751 a!3591)))))

(declare-fun b!712739 () Bool)

(assert (=> b!712739 (= e!400845 (arrayContainsKey!0 a!3591 k0!2824 (bvadd from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97927 (not res!476072)) b!712738))

(assert (= (and b!712738 res!476073) b!712739))

(assert (=> d!97927 m!669541))

(declare-fun m!669683 () Bool)

(assert (=> b!712739 m!669683))

(assert (=> b!712609 d!97927))

(declare-fun d!97929 () Bool)

(declare-fun lt!318576 () Bool)

(assert (=> d!97929 (= lt!318576 (select (content!364 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400846 () Bool)

(assert (=> d!97929 (= lt!318576 e!400846)))

(declare-fun res!476074 () Bool)

(assert (=> d!97929 (=> (not res!476074) (not e!400846))))

(assert (=> d!97929 (= res!476074 ((_ is Cons!13432) acc!652))))

(assert (=> d!97929 (= (contains!3979 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318576)))

(declare-fun b!712740 () Bool)

(declare-fun e!400847 () Bool)

(assert (=> b!712740 (= e!400846 e!400847)))

(declare-fun res!476075 () Bool)

(assert (=> b!712740 (=> res!476075 e!400847)))

(assert (=> b!712740 (= res!476075 (= (h!14477 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712741 () Bool)

(assert (=> b!712741 (= e!400847 (contains!3979 (t!19756 acc!652) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97929 res!476074) b!712740))

(assert (= (and b!712740 (not res!476075)) b!712741))

(assert (=> d!97929 m!669667))

(declare-fun m!669685 () Bool)

(assert (=> d!97929 m!669685))

(declare-fun m!669687 () Bool)

(assert (=> b!712741 m!669687))

(assert (=> b!712610 d!97929))

(declare-fun d!97931 () Bool)

(assert (=> d!97931 (= (validKeyInArray!0 k0!2824) (and (not (= k0!2824 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2824 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!712612 d!97931))

(declare-fun d!97933 () Bool)

(declare-fun lt!318577 () Bool)

(assert (=> d!97933 (= lt!318577 (select (content!364 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400848 () Bool)

(assert (=> d!97933 (= lt!318577 e!400848)))

(declare-fun res!476076 () Bool)

(assert (=> d!97933 (=> (not res!476076) (not e!400848))))

(assert (=> d!97933 (= res!476076 ((_ is Cons!13432) acc!652))))

(assert (=> d!97933 (= (contains!3979 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318577)))

(declare-fun b!712742 () Bool)

(declare-fun e!400849 () Bool)

(assert (=> b!712742 (= e!400848 e!400849)))

(declare-fun res!476077 () Bool)

(assert (=> b!712742 (=> res!476077 e!400849)))

(assert (=> b!712742 (= res!476077 (= (h!14477 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712743 () Bool)

(assert (=> b!712743 (= e!400849 (contains!3979 (t!19756 acc!652) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97933 res!476076) b!712742))

(assert (= (and b!712742 (not res!476077)) b!712743))

(assert (=> d!97933 m!669667))

(declare-fun m!669689 () Bool)

(assert (=> d!97933 m!669689))

(declare-fun m!669691 () Bool)

(assert (=> b!712743 m!669691))

(assert (=> b!712611 d!97933))

(declare-fun d!97935 () Bool)

(declare-fun lt!318578 () Bool)

(assert (=> d!97935 (= lt!318578 (select (content!364 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400850 () Bool)

(assert (=> d!97935 (= lt!318578 e!400850)))

(declare-fun res!476078 () Bool)

(assert (=> d!97935 (=> (not res!476078) (not e!400850))))

(assert (=> d!97935 (= res!476078 ((_ is Cons!13432) newAcc!49))))

(assert (=> d!97935 (= (contains!3979 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318578)))

(declare-fun b!712744 () Bool)

(declare-fun e!400851 () Bool)

(assert (=> b!712744 (= e!400850 e!400851)))

(declare-fun res!476079 () Bool)

(assert (=> b!712744 (=> res!476079 e!400851)))

(assert (=> b!712744 (= res!476079 (= (h!14477 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712745 () Bool)

(assert (=> b!712745 (= e!400851 (contains!3979 (t!19756 newAcc!49) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97935 res!476078) b!712744))

(assert (= (and b!712744 (not res!476079)) b!712745))

(declare-fun m!669693 () Bool)

(assert (=> d!97935 m!669693))

(declare-fun m!669695 () Bool)

(assert (=> d!97935 m!669695))

(declare-fun m!669697 () Bool)

(assert (=> b!712745 m!669697))

(assert (=> b!712613 d!97935))

(declare-fun d!97937 () Bool)

(declare-fun res!476080 () Bool)

(declare-fun e!400852 () Bool)

(assert (=> d!97937 (=> res!476080 e!400852)))

(assert (=> d!97937 (= res!476080 ((_ is Nil!13433) lt!318559))))

(assert (=> d!97937 (= (noDuplicate!1226 lt!318559) e!400852)))

(declare-fun b!712746 () Bool)

(declare-fun e!400853 () Bool)

(assert (=> b!712746 (= e!400852 e!400853)))

(declare-fun res!476081 () Bool)

(assert (=> b!712746 (=> (not res!476081) (not e!400853))))

(assert (=> b!712746 (= res!476081 (not (contains!3979 (t!19756 lt!318559) (h!14477 lt!318559))))))

(declare-fun b!712747 () Bool)

(assert (=> b!712747 (= e!400853 (noDuplicate!1226 (t!19756 lt!318559)))))

(assert (= (and d!97937 (not res!476080)) b!712746))

(assert (= (and b!712746 res!476081) b!712747))

(declare-fun m!669699 () Bool)

(assert (=> b!712746 m!669699))

(declare-fun m!669701 () Bool)

(assert (=> b!712747 m!669701))

(assert (=> b!712614 d!97937))

(declare-fun d!97939 () Bool)

(declare-fun lt!318579 () Bool)

(assert (=> d!97939 (= lt!318579 (select (content!364 newAcc!49) k0!2824))))

(declare-fun e!400854 () Bool)

(assert (=> d!97939 (= lt!318579 e!400854)))

(declare-fun res!476082 () Bool)

(assert (=> d!97939 (=> (not res!476082) (not e!400854))))

(assert (=> d!97939 (= res!476082 ((_ is Cons!13432) newAcc!49))))

(assert (=> d!97939 (= (contains!3979 newAcc!49 k0!2824) lt!318579)))

(declare-fun b!712748 () Bool)

(declare-fun e!400855 () Bool)

(assert (=> b!712748 (= e!400854 e!400855)))

(declare-fun res!476083 () Bool)

(assert (=> b!712748 (=> res!476083 e!400855)))

(assert (=> b!712748 (= res!476083 (= (h!14477 newAcc!49) k0!2824))))

(declare-fun b!712749 () Bool)

(assert (=> b!712749 (= e!400855 (contains!3979 (t!19756 newAcc!49) k0!2824))))

(assert (= (and d!97939 res!476082) b!712748))

(assert (= (and b!712748 (not res!476083)) b!712749))

(assert (=> d!97939 m!669693))

(declare-fun m!669703 () Bool)

(assert (=> d!97939 m!669703))

(declare-fun m!669705 () Bool)

(assert (=> b!712749 m!669705))

(assert (=> b!712616 d!97939))

(declare-fun d!97941 () Bool)

(declare-fun res!476084 () Bool)

(declare-fun e!400856 () Bool)

(assert (=> d!97941 (=> res!476084 e!400856)))

(assert (=> d!97941 (= res!476084 ((_ is Nil!13433) newAcc!49))))

(assert (=> d!97941 (= (noDuplicate!1226 newAcc!49) e!400856)))

(declare-fun b!712750 () Bool)

(declare-fun e!400857 () Bool)

(assert (=> b!712750 (= e!400856 e!400857)))

(declare-fun res!476085 () Bool)

(assert (=> b!712750 (=> (not res!476085) (not e!400857))))

(assert (=> b!712750 (= res!476085 (not (contains!3979 (t!19756 newAcc!49) (h!14477 newAcc!49))))))

(declare-fun b!712751 () Bool)

(assert (=> b!712751 (= e!400857 (noDuplicate!1226 (t!19756 newAcc!49)))))

(assert (= (and d!97941 (not res!476084)) b!712750))

(assert (= (and b!712750 res!476085) b!712751))

(declare-fun m!669707 () Bool)

(assert (=> b!712750 m!669707))

(declare-fun m!669709 () Bool)

(assert (=> b!712751 m!669709))

(assert (=> b!712615 d!97941))

(declare-fun b!712762 () Bool)

(declare-fun e!400867 () Bool)

(declare-fun call!34563 () Bool)

(assert (=> b!712762 (= e!400867 call!34563)))

(declare-fun b!712763 () Bool)

(assert (=> b!712763 (= e!400867 call!34563)))

(declare-fun b!712764 () Bool)

(declare-fun e!400866 () Bool)

(assert (=> b!712764 (= e!400866 (contains!3979 acc!652 (select (arr!19342 a!3591) from!2969)))))

(declare-fun c!78702 () Bool)

(declare-fun bm!34560 () Bool)

(assert (=> bm!34560 (= call!34563 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78702 (Cons!13432 (select (arr!19342 a!3591) from!2969) acc!652) acc!652)))))

(declare-fun d!97943 () Bool)

(declare-fun res!476094 () Bool)

(declare-fun e!400869 () Bool)

(assert (=> d!97943 (=> res!476094 e!400869)))

(assert (=> d!97943 (= res!476094 (bvsge from!2969 (size!19751 a!3591)))))

(assert (=> d!97943 (= (arrayNoDuplicates!0 a!3591 from!2969 acc!652) e!400869)))

(declare-fun b!712765 () Bool)

(declare-fun e!400868 () Bool)

(assert (=> b!712765 (= e!400869 e!400868)))

(declare-fun res!476093 () Bool)

(assert (=> b!712765 (=> (not res!476093) (not e!400868))))

(assert (=> b!712765 (= res!476093 (not e!400866))))

(declare-fun res!476092 () Bool)

(assert (=> b!712765 (=> (not res!476092) (not e!400866))))

(assert (=> b!712765 (= res!476092 (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)))))

(declare-fun b!712766 () Bool)

(assert (=> b!712766 (= e!400868 e!400867)))

(assert (=> b!712766 (= c!78702 (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)))))

(assert (= (and d!97943 (not res!476094)) b!712765))

(assert (= (and b!712765 res!476092) b!712764))

(assert (= (and b!712765 res!476093) b!712766))

(assert (= (and b!712766 c!78702) b!712763))

(assert (= (and b!712766 (not c!78702)) b!712762))

(assert (= (or b!712763 b!712762) bm!34560))

(assert (=> b!712764 m!669541))

(assert (=> b!712764 m!669541))

(declare-fun m!669711 () Bool)

(assert (=> b!712764 m!669711))

(assert (=> bm!34560 m!669541))

(declare-fun m!669713 () Bool)

(assert (=> bm!34560 m!669713))

(assert (=> b!712765 m!669541))

(assert (=> b!712765 m!669541))

(assert (=> b!712765 m!669543))

(assert (=> b!712766 m!669541))

(assert (=> b!712766 m!669541))

(assert (=> b!712766 m!669543))

(assert (=> b!712617 d!97943))

(declare-fun b!712794 () Bool)

(declare-fun e!400896 () Bool)

(declare-fun e!400897 () Bool)

(assert (=> b!712794 (= e!400896 e!400897)))

(declare-fun res!476118 () Bool)

(assert (=> b!712794 (=> res!476118 e!400897)))

(declare-fun e!400894 () Bool)

(assert (=> b!712794 (= res!476118 e!400894)))

(declare-fun res!476120 () Bool)

(assert (=> b!712794 (=> (not res!476120) (not e!400894))))

(assert (=> b!712794 (= res!476120 (= (h!14477 acc!652) (h!14477 newAcc!49)))))

(declare-fun b!712793 () Bool)

(declare-fun e!400895 () Bool)

(assert (=> b!712793 (= e!400895 e!400896)))

(declare-fun res!476119 () Bool)

(assert (=> b!712793 (=> (not res!476119) (not e!400896))))

(assert (=> b!712793 (= res!476119 ((_ is Cons!13432) newAcc!49))))

(declare-fun b!712796 () Bool)

(assert (=> b!712796 (= e!400897 (subseq!423 acc!652 (t!19756 newAcc!49)))))

(declare-fun d!97949 () Bool)

(declare-fun res!476117 () Bool)

(assert (=> d!97949 (=> res!476117 e!400895)))

(assert (=> d!97949 (= res!476117 ((_ is Nil!13433) acc!652))))

(assert (=> d!97949 (= (subseq!423 acc!652 newAcc!49) e!400895)))

(declare-fun b!712795 () Bool)

(assert (=> b!712795 (= e!400894 (subseq!423 (t!19756 acc!652) (t!19756 newAcc!49)))))

(assert (= (and d!97949 (not res!476117)) b!712793))

(assert (= (and b!712793 res!476119) b!712794))

(assert (= (and b!712794 res!476120) b!712795))

(assert (= (and b!712794 (not res!476118)) b!712796))

(declare-fun m!669715 () Bool)

(assert (=> b!712796 m!669715))

(declare-fun m!669719 () Bool)

(assert (=> b!712795 m!669719))

(assert (=> b!712618 d!97949))

(declare-fun d!97951 () Bool)

(assert (=> d!97951 (= ($colon$colon!533 newAcc!49 (select (arr!19342 a!3591) from!2969)) (Cons!13432 (select (arr!19342 a!3591) from!2969) newAcc!49))))

(assert (=> b!712620 d!97951))

(declare-fun d!97955 () Bool)

(assert (=> d!97955 (= ($colon$colon!533 acc!652 (select (arr!19342 a!3591) from!2969)) (Cons!13432 (select (arr!19342 a!3591) from!2969) acc!652))))

(assert (=> b!712620 d!97955))

(declare-fun b!712836 () Bool)

(declare-fun e!400935 () List!13436)

(declare-fun e!400933 () List!13436)

(assert (=> b!712836 (= e!400935 e!400933)))

(declare-fun c!78710 () Bool)

(assert (=> b!712836 (= c!78710 (= k0!2824 (h!14477 newAcc!49)))))

(declare-fun b!712838 () Bool)

(assert (=> b!712838 (= e!400935 Nil!13433)))

(declare-fun b!712839 () Bool)

(declare-fun call!34569 () List!13436)

(assert (=> b!712839 (= e!400933 call!34569)))

(declare-fun b!712840 () Bool)

(declare-fun lt!318586 () List!13436)

(declare-fun e!400934 () Bool)

(assert (=> b!712840 (= e!400934 (= (content!364 lt!318586) ((_ map and) (content!364 newAcc!49) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun bm!34566 () Bool)

(assert (=> bm!34566 (= call!34569 (-!388 (t!19756 newAcc!49) k0!2824))))

(declare-fun b!712837 () Bool)

(assert (=> b!712837 (= e!400933 (Cons!13432 (h!14477 newAcc!49) call!34569))))

(declare-fun d!97957 () Bool)

(assert (=> d!97957 e!400934))

(declare-fun res!476150 () Bool)

(assert (=> d!97957 (=> (not res!476150) (not e!400934))))

(declare-fun size!19754 (List!13436) Int)

(assert (=> d!97957 (= res!476150 (<= (size!19754 lt!318586) (size!19754 newAcc!49)))))

(assert (=> d!97957 (= lt!318586 e!400935)))

(declare-fun c!78711 () Bool)

(assert (=> d!97957 (= c!78711 ((_ is Cons!13432) newAcc!49))))

(assert (=> d!97957 (= (-!388 newAcc!49 k0!2824) lt!318586)))

(assert (= (and d!97957 c!78711) b!712836))

(assert (= (and d!97957 (not c!78711)) b!712838))

(assert (= (and b!712836 c!78710) b!712839))

(assert (= (and b!712836 (not c!78710)) b!712837))

(assert (= (or b!712839 b!712837) bm!34566))

(assert (= (and d!97957 res!476150) b!712840))

(declare-fun m!669747 () Bool)

(assert (=> b!712840 m!669747))

(assert (=> b!712840 m!669693))

(declare-fun m!669749 () Bool)

(assert (=> b!712840 m!669749))

(declare-fun m!669751 () Bool)

(assert (=> bm!34566 m!669751))

(declare-fun m!669753 () Bool)

(assert (=> d!97957 m!669753))

(declare-fun m!669755 () Bool)

(assert (=> d!97957 m!669755))

(assert (=> b!712619 d!97957))

(declare-fun d!97971 () Bool)

(declare-fun lt!318589 () Bool)

(assert (=> d!97971 (= lt!318589 (select (content!364 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400937 () Bool)

(assert (=> d!97971 (= lt!318589 e!400937)))

(declare-fun res!476151 () Bool)

(assert (=> d!97971 (=> (not res!476151) (not e!400937))))

(assert (=> d!97971 (= res!476151 ((_ is Cons!13432) newAcc!49))))

(assert (=> d!97971 (= (contains!3979 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318589)))

(declare-fun b!712843 () Bool)

(declare-fun e!400938 () Bool)

(assert (=> b!712843 (= e!400937 e!400938)))

(declare-fun res!476152 () Bool)

(assert (=> b!712843 (=> res!476152 e!400938)))

(assert (=> b!712843 (= res!476152 (= (h!14477 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712844 () Bool)

(assert (=> b!712844 (= e!400938 (contains!3979 (t!19756 newAcc!49) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97971 res!476151) b!712843))

(assert (= (and b!712843 (not res!476152)) b!712844))

(assert (=> d!97971 m!669693))

(declare-fun m!669757 () Bool)

(assert (=> d!97971 m!669757))

(declare-fun m!669759 () Bool)

(assert (=> b!712844 m!669759))

(assert (=> b!712621 d!97971))

(declare-fun d!97973 () Bool)

(declare-fun res!476153 () Bool)

(declare-fun e!400943 () Bool)

(assert (=> d!97973 (=> res!476153 e!400943)))

(assert (=> d!97973 (= res!476153 (= (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) k0!2824))))

(assert (=> d!97973 (= (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969)) e!400943)))

(declare-fun b!712851 () Bool)

(declare-fun e!400944 () Bool)

(assert (=> b!712851 (= e!400943 e!400944)))

(declare-fun res!476154 () Bool)

(assert (=> b!712851 (=> (not res!476154) (not e!400944))))

(assert (=> b!712851 (= res!476154 (bvslt (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (size!19751 a!3591)))))

(declare-fun b!712852 () Bool)

(assert (=> b!712852 (= e!400944 (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001)))))

(assert (= (and d!97973 (not res!476153)) b!712851))

(assert (= (and b!712851 res!476154) b!712852))

(declare-fun m!669761 () Bool)

(assert (=> d!97973 m!669761))

(declare-fun m!669763 () Bool)

(assert (=> b!712852 m!669763))

(assert (=> b!712600 d!97973))

(declare-fun d!97977 () Bool)

(declare-fun lt!318590 () Bool)

(assert (=> d!97977 (= lt!318590 (select (content!364 lt!318559) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400945 () Bool)

(assert (=> d!97977 (= lt!318590 e!400945)))

(declare-fun res!476155 () Bool)

(assert (=> d!97977 (=> (not res!476155) (not e!400945))))

(assert (=> d!97977 (= res!476155 ((_ is Cons!13432) lt!318559))))

(assert (=> d!97977 (= (contains!3979 lt!318559 #b0000000000000000000000000000000000000000000000000000000000000000) lt!318590)))

(declare-fun b!712853 () Bool)

(declare-fun e!400946 () Bool)

(assert (=> b!712853 (= e!400945 e!400946)))

(declare-fun res!476156 () Bool)

(assert (=> b!712853 (=> res!476156 e!400946)))

(assert (=> b!712853 (= res!476156 (= (h!14477 lt!318559) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712854 () Bool)

(assert (=> b!712854 (= e!400946 (contains!3979 (t!19756 lt!318559) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!97977 res!476155) b!712853))

(assert (= (and b!712853 (not res!476156)) b!712854))

(assert (=> d!97977 m!669657))

(declare-fun m!669765 () Bool)

(assert (=> d!97977 m!669765))

(declare-fun m!669767 () Bool)

(assert (=> b!712854 m!669767))

(assert (=> b!712601 d!97977))

(declare-fun b!712857 () Bool)

(declare-fun e!400951 () List!13436)

(declare-fun e!400949 () List!13436)

(assert (=> b!712857 (= e!400951 e!400949)))

(declare-fun c!78716 () Bool)

(assert (=> b!712857 (= c!78716 (= k0!2824 (h!14477 lt!318560)))))

(declare-fun b!712859 () Bool)

(assert (=> b!712859 (= e!400951 Nil!13433)))

(declare-fun b!712860 () Bool)

(declare-fun call!34572 () List!13436)

(assert (=> b!712860 (= e!400949 call!34572)))

(declare-fun lt!318591 () List!13436)

(declare-fun e!400950 () Bool)

(declare-fun b!712861 () Bool)

(assert (=> b!712861 (= e!400950 (= (content!364 lt!318591) ((_ map and) (content!364 lt!318560) ((_ map not) (store ((as const (Array (_ BitVec 64) Bool)) false) k0!2824 true)))))))

(declare-fun bm!34569 () Bool)

(assert (=> bm!34569 (= call!34572 (-!388 (t!19756 lt!318560) k0!2824))))

(declare-fun b!712858 () Bool)

(assert (=> b!712858 (= e!400949 (Cons!13432 (h!14477 lt!318560) call!34572))))

(declare-fun d!97979 () Bool)

(assert (=> d!97979 e!400950))

(declare-fun res!476159 () Bool)

(assert (=> d!97979 (=> (not res!476159) (not e!400950))))

(assert (=> d!97979 (= res!476159 (<= (size!19754 lt!318591) (size!19754 lt!318560)))))

(assert (=> d!97979 (= lt!318591 e!400951)))

(declare-fun c!78717 () Bool)

(assert (=> d!97979 (= c!78717 ((_ is Cons!13432) lt!318560))))

(assert (=> d!97979 (= (-!388 lt!318560 k0!2824) lt!318591)))

(assert (= (and d!97979 c!78717) b!712857))

(assert (= (and d!97979 (not c!78717)) b!712859))

(assert (= (and b!712857 c!78716) b!712860))

(assert (= (and b!712857 (not c!78716)) b!712858))

(assert (= (or b!712860 b!712858) bm!34569))

(assert (= (and d!97979 res!476159) b!712861))

(declare-fun m!669769 () Bool)

(assert (=> b!712861 m!669769))

(assert (=> b!712861 m!669673))

(assert (=> b!712861 m!669749))

(declare-fun m!669771 () Bool)

(assert (=> bm!34569 m!669771))

(declare-fun m!669773 () Bool)

(assert (=> d!97979 m!669773))

(declare-fun m!669775 () Bool)

(assert (=> d!97979 m!669775))

(assert (=> b!712622 d!97979))

(declare-fun d!97981 () Bool)

(assert (=> d!97981 (= (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)) (and (not (= (select (arr!19342 a!3591) from!2969) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!19342 a!3591) from!2969) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!712623 d!97981))

(declare-fun b!712862 () Bool)

(declare-fun e!400953 () Bool)

(declare-fun call!34573 () Bool)

(assert (=> b!712862 (= e!400953 call!34573)))

(declare-fun b!712863 () Bool)

(assert (=> b!712863 (= e!400953 call!34573)))

(declare-fun b!712864 () Bool)

(declare-fun e!400952 () Bool)

(assert (=> b!712864 (= e!400952 (contains!3979 newAcc!49 (select (arr!19342 a!3591) from!2969)))))

(declare-fun c!78718 () Bool)

(declare-fun bm!34570 () Bool)

(assert (=> bm!34570 (= call!34573 (arrayNoDuplicates!0 a!3591 (bvadd from!2969 #b00000000000000000000000000000001) (ite c!78718 (Cons!13432 (select (arr!19342 a!3591) from!2969) newAcc!49) newAcc!49)))))

(declare-fun d!97983 () Bool)

(declare-fun res!476162 () Bool)

(declare-fun e!400955 () Bool)

(assert (=> d!97983 (=> res!476162 e!400955)))

(assert (=> d!97983 (= res!476162 (bvsge from!2969 (size!19751 a!3591)))))

(assert (=> d!97983 (= (arrayNoDuplicates!0 a!3591 from!2969 newAcc!49) e!400955)))

(declare-fun b!712865 () Bool)

(declare-fun e!400954 () Bool)

(assert (=> b!712865 (= e!400955 e!400954)))

(declare-fun res!476161 () Bool)

(assert (=> b!712865 (=> (not res!476161) (not e!400954))))

(assert (=> b!712865 (= res!476161 (not e!400952))))

(declare-fun res!476160 () Bool)

(assert (=> b!712865 (=> (not res!476160) (not e!400952))))

(assert (=> b!712865 (= res!476160 (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)))))

(declare-fun b!712866 () Bool)

(assert (=> b!712866 (= e!400954 e!400953)))

(assert (=> b!712866 (= c!78718 (validKeyInArray!0 (select (arr!19342 a!3591) from!2969)))))

(assert (= (and d!97983 (not res!476162)) b!712865))

(assert (= (and b!712865 res!476160) b!712864))

(assert (= (and b!712865 res!476161) b!712866))

(assert (= (and b!712866 c!78718) b!712863))

(assert (= (and b!712866 (not c!78718)) b!712862))

(assert (= (or b!712863 b!712862) bm!34570))

(assert (=> b!712864 m!669541))

(assert (=> b!712864 m!669541))

(declare-fun m!669777 () Bool)

(assert (=> b!712864 m!669777))

(assert (=> bm!34570 m!669541))

(declare-fun m!669779 () Bool)

(assert (=> bm!34570 m!669779))

(assert (=> b!712865 m!669541))

(assert (=> b!712865 m!669541))

(assert (=> b!712865 m!669543))

(assert (=> b!712866 m!669541))

(assert (=> b!712866 m!669541))

(assert (=> b!712866 m!669543))

(assert (=> b!712624 d!97983))

(declare-fun b!712867 () Bool)

(declare-fun e!400957 () Bool)

(declare-fun call!34574 () Bool)

(assert (=> b!712867 (= e!400957 call!34574)))

(declare-fun b!712868 () Bool)

(assert (=> b!712868 (= e!400957 call!34574)))

(declare-fun e!400956 () Bool)

(declare-fun b!712869 () Bool)

(assert (=> b!712869 (= e!400956 (contains!3979 lt!318560 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun bm!34571 () Bool)

(declare-fun c!78719 () Bool)

(assert (=> bm!34571 (= call!34574 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78719 (Cons!13432 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318560) lt!318560)))))

(declare-fun d!97985 () Bool)

(declare-fun res!476165 () Bool)

(declare-fun e!400959 () Bool)

(assert (=> d!97985 (=> res!476165 e!400959)))

(assert (=> d!97985 (= res!476165 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19751 a!3591)))))

(assert (=> d!97985 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318560) e!400959)))

(declare-fun b!712870 () Bool)

(declare-fun e!400958 () Bool)

(assert (=> b!712870 (= e!400959 e!400958)))

(declare-fun res!476164 () Bool)

(assert (=> b!712870 (=> (not res!476164) (not e!400958))))

(assert (=> b!712870 (= res!476164 (not e!400956))))

(declare-fun res!476163 () Bool)

(assert (=> b!712870 (=> (not res!476163) (not e!400956))))

(assert (=> b!712870 (= res!476163 (validKeyInArray!0 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712871 () Bool)

(assert (=> b!712871 (= e!400958 e!400957)))

(assert (=> b!712871 (= c!78719 (validKeyInArray!0 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!97985 (not res!476165)) b!712870))

(assert (= (and b!712870 res!476163) b!712869))

(assert (= (and b!712870 res!476164) b!712871))

(assert (= (and b!712871 c!78719) b!712868))

(assert (= (and b!712871 (not c!78719)) b!712867))

(assert (= (or b!712868 b!712867) bm!34571))

(assert (=> b!712869 m!669761))

(assert (=> b!712869 m!669761))

(declare-fun m!669787 () Bool)

(assert (=> b!712869 m!669787))

(assert (=> bm!34571 m!669761))

(declare-fun m!669795 () Bool)

(assert (=> bm!34571 m!669795))

(assert (=> b!712870 m!669761))

(assert (=> b!712870 m!669761))

(declare-fun m!669797 () Bool)

(assert (=> b!712870 m!669797))

(assert (=> b!712871 m!669761))

(assert (=> b!712871 m!669761))

(assert (=> b!712871 m!669797))

(assert (=> b!712624 d!97985))

(declare-fun d!97989 () Bool)

(assert (=> d!97989 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318560)))

(declare-fun lt!318595 () Unit!24612)

(declare-fun choose!66 (array!40409 (_ BitVec 64) (_ BitVec 32) List!13436 List!13436) Unit!24612)

(assert (=> d!97989 (= lt!318595 (choose!66 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318559 lt!318560))))

(assert (=> d!97989 (bvslt (size!19751 a!3591) #b01111111111111111111111111111111)))

(assert (=> d!97989 (= (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!318559 lt!318560) lt!318595)))

(declare-fun bs!20552 () Bool)

(assert (= bs!20552 d!97989))

(assert (=> bs!20552 m!669585))

(declare-fun m!669811 () Bool)

(assert (=> bs!20552 m!669811))

(assert (=> b!712624 d!97989))

(declare-fun b!712900 () Bool)

(declare-fun e!400983 () Bool)

(declare-fun e!400984 () Bool)

(assert (=> b!712900 (= e!400983 e!400984)))

(declare-fun res!476182 () Bool)

(assert (=> b!712900 (=> res!476182 e!400984)))

(declare-fun e!400981 () Bool)

(assert (=> b!712900 (= res!476182 e!400981)))

(declare-fun res!476184 () Bool)

(assert (=> b!712900 (=> (not res!476184) (not e!400981))))

(assert (=> b!712900 (= res!476184 (= (h!14477 lt!318559) (h!14477 lt!318560)))))

(declare-fun b!712899 () Bool)

(declare-fun e!400982 () Bool)

(assert (=> b!712899 (= e!400982 e!400983)))

(declare-fun res!476183 () Bool)

(assert (=> b!712899 (=> (not res!476183) (not e!400983))))

(assert (=> b!712899 (= res!476183 ((_ is Cons!13432) lt!318560))))

(declare-fun b!712902 () Bool)

(assert (=> b!712902 (= e!400984 (subseq!423 lt!318559 (t!19756 lt!318560)))))

(declare-fun d!98001 () Bool)

(declare-fun res!476181 () Bool)

(assert (=> d!98001 (=> res!476181 e!400982)))

(assert (=> d!98001 (= res!476181 ((_ is Nil!13433) lt!318559))))

(assert (=> d!98001 (= (subseq!423 lt!318559 lt!318560) e!400982)))

(declare-fun b!712901 () Bool)

(assert (=> b!712901 (= e!400981 (subseq!423 (t!19756 lt!318559) (t!19756 lt!318560)))))

(assert (= (and d!98001 (not res!476181)) b!712899))

(assert (= (and b!712899 res!476183) b!712900))

(assert (= (and b!712900 res!476184) b!712901))

(assert (= (and b!712900 (not res!476182)) b!712902))

(declare-fun m!669813 () Bool)

(assert (=> b!712902 m!669813))

(declare-fun m!669815 () Bool)

(assert (=> b!712901 m!669815))

(assert (=> b!712602 d!98001))

(declare-fun d!98003 () Bool)

(declare-fun lt!318596 () Bool)

(assert (=> d!98003 (= lt!318596 (select (content!364 lt!318560) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!400985 () Bool)

(assert (=> d!98003 (= lt!318596 e!400985)))

(declare-fun res!476185 () Bool)

(assert (=> d!98003 (=> (not res!476185) (not e!400985))))

(assert (=> d!98003 (= res!476185 ((_ is Cons!13432) lt!318560))))

(assert (=> d!98003 (= (contains!3979 lt!318560 #b1000000000000000000000000000000000000000000000000000000000000000) lt!318596)))

(declare-fun b!712903 () Bool)

(declare-fun e!400986 () Bool)

(assert (=> b!712903 (= e!400985 e!400986)))

(declare-fun res!476186 () Bool)

(assert (=> b!712903 (=> res!476186 e!400986)))

(assert (=> b!712903 (= res!476186 (= (h!14477 lt!318560) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!712904 () Bool)

(assert (=> b!712904 (= e!400986 (contains!3979 (t!19756 lt!318560) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!98003 res!476185) b!712903))

(assert (= (and b!712903 (not res!476186)) b!712904))

(assert (=> d!98003 m!669673))

(declare-fun m!669821 () Bool)

(assert (=> d!98003 m!669821))

(declare-fun m!669823 () Bool)

(assert (=> b!712904 m!669823))

(assert (=> b!712604 d!98003))

(declare-fun d!98007 () Bool)

(declare-fun res!476190 () Bool)

(declare-fun e!400991 () Bool)

(assert (=> d!98007 (=> res!476190 e!400991)))

(assert (=> d!98007 (= res!476190 ((_ is Nil!13433) lt!318560))))

(assert (=> d!98007 (= (noDuplicate!1226 lt!318560) e!400991)))

(declare-fun b!712910 () Bool)

(declare-fun e!400992 () Bool)

(assert (=> b!712910 (= e!400991 e!400992)))

(declare-fun res!476191 () Bool)

(assert (=> b!712910 (=> (not res!476191) (not e!400992))))

(assert (=> b!712910 (= res!476191 (not (contains!3979 (t!19756 lt!318560) (h!14477 lt!318560))))))

(declare-fun b!712911 () Bool)

(assert (=> b!712911 (= e!400992 (noDuplicate!1226 (t!19756 lt!318560)))))

(assert (= (and d!98007 (not res!476190)) b!712910))

(assert (= (and b!712910 res!476191) b!712911))

(declare-fun m!669825 () Bool)

(assert (=> b!712910 m!669825))

(declare-fun m!669827 () Bool)

(assert (=> b!712911 m!669827))

(assert (=> b!712603 d!98007))

(declare-fun d!98009 () Bool)

(declare-fun lt!318599 () Bool)

(assert (=> d!98009 (= lt!318599 (select (content!364 lt!318560) k0!2824))))

(declare-fun e!400997 () Bool)

(assert (=> d!98009 (= lt!318599 e!400997)))

(declare-fun res!476196 () Bool)

(assert (=> d!98009 (=> (not res!476196) (not e!400997))))

(assert (=> d!98009 (= res!476196 ((_ is Cons!13432) lt!318560))))

(assert (=> d!98009 (= (contains!3979 lt!318560 k0!2824) lt!318599)))

(declare-fun b!712916 () Bool)

(declare-fun e!400998 () Bool)

(assert (=> b!712916 (= e!400997 e!400998)))

(declare-fun res!476197 () Bool)

(assert (=> b!712916 (=> res!476197 e!400998)))

(assert (=> b!712916 (= res!476197 (= (h!14477 lt!318560) k0!2824))))

(declare-fun b!712917 () Bool)

(assert (=> b!712917 (= e!400998 (contains!3979 (t!19756 lt!318560) k0!2824))))

(assert (= (and d!98009 res!476196) b!712916))

(assert (= (and b!712916 (not res!476197)) b!712917))

(assert (=> d!98009 m!669673))

(declare-fun m!669833 () Bool)

(assert (=> d!98009 m!669833))

(declare-fun m!669835 () Bool)

(assert (=> b!712917 m!669835))

(assert (=> b!712625 d!98009))

(declare-fun b!712918 () Bool)

(declare-fun e!401000 () Bool)

(declare-fun call!34581 () Bool)

(assert (=> b!712918 (= e!401000 call!34581)))

(declare-fun b!712919 () Bool)

(assert (=> b!712919 (= e!401000 call!34581)))

(declare-fun e!400999 () Bool)

(declare-fun b!712920 () Bool)

(assert (=> b!712920 (= e!400999 (contains!3979 lt!318559 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun c!78727 () Bool)

(declare-fun bm!34578 () Bool)

(assert (=> bm!34578 (= call!34581 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969 #b00000000000000000000000000000001) (ite c!78727 (Cons!13432 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969)) lt!318559) lt!318559)))))

(declare-fun d!98011 () Bool)

(declare-fun res!476200 () Bool)

(declare-fun e!401002 () Bool)

(assert (=> d!98011 (=> res!476200 e!401002)))

(assert (=> d!98011 (= res!476200 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) (size!19751 a!3591)))))

(assert (=> d!98011 (= (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!318559) e!401002)))

(declare-fun b!712921 () Bool)

(declare-fun e!401001 () Bool)

(assert (=> b!712921 (= e!401002 e!401001)))

(declare-fun res!476199 () Bool)

(assert (=> b!712921 (=> (not res!476199) (not e!401001))))

(assert (=> b!712921 (= res!476199 (not e!400999))))

(declare-fun res!476198 () Bool)

(assert (=> b!712921 (=> (not res!476198) (not e!400999))))

(assert (=> b!712921 (= res!476198 (validKeyInArray!0 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!712922 () Bool)

(assert (=> b!712922 (= e!401001 e!401000)))

(assert (=> b!712922 (= c!78727 (validKeyInArray!0 (select (arr!19342 a!3591) (bvadd #b00000000000000000000000000000001 from!2969))))))

(assert (= (and d!98011 (not res!476200)) b!712921))

(assert (= (and b!712921 res!476198) b!712920))

(assert (= (and b!712921 res!476199) b!712922))

(assert (= (and b!712922 c!78727) b!712919))

(assert (= (and b!712922 (not c!78727)) b!712918))

(assert (= (or b!712919 b!712918) bm!34578))

(assert (=> b!712920 m!669761))

(assert (=> b!712920 m!669761))

(declare-fun m!669841 () Bool)

(assert (=> b!712920 m!669841))

(assert (=> bm!34578 m!669761))

(declare-fun m!669843 () Bool)

(assert (=> bm!34578 m!669843))

(assert (=> b!712921 m!669761))

(assert (=> b!712921 m!669761))

(assert (=> b!712921 m!669797))

(assert (=> b!712922 m!669761))

(assert (=> b!712922 m!669761))

(assert (=> b!712922 m!669797))

(assert (=> b!712626 d!98011))

(check-sat (not b!712741) (not b!712910) (not b!712747) (not b!712766) (not d!97921) (not bm!34571) (not bm!34569) (not d!97923) (not b!712840) (not b!712749) (not b!712844) (not b!712733) (not b!712920) (not b!712911) (not b!712743) (not b!712729) (not b!712869) (not b!712922) (not d!97929) (not b!712764) (not bm!34560) (not d!97935) (not d!98003) (not b!712902) (not d!97933) (not bm!34566) (not b!712917) (not b!712795) (not d!97957) (not b!712726) (not b!712870) (not d!97989) (not b!712921) (not b!712745) (not b!712746) (not b!712739) (not d!98009) (not b!712865) (not b!712864) (not b!712750) (not d!97939) (not bm!34578) (not b!712854) (not d!97917) (not b!712852) (not d!97977) (not b!712751) (not b!712871) (not d!97971) (not b!712727) (not d!97979) (not b!712904) (not b!712866) (not b!712901) (not b!712861) (not b!712731) (not bm!34570) (not b!712721) (not b!712765) (not b!712796) (not d!97925))
(check-sat)
