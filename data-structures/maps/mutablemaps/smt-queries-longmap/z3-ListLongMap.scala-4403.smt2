; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60596 () Bool)

(assert start!60596)

(declare-fun b!680530 () Bool)

(declare-datatypes ((Unit!23858 0))(
  ( (Unit!23859) )
))
(declare-fun e!387648 () Unit!23858)

(declare-fun Unit!23860 () Unit!23858)

(assert (=> b!680530 (= e!387648 Unit!23860)))

(declare-fun lt!313080 () Unit!23858)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-datatypes ((array!39476 0))(
  ( (array!39477 (arr!18922 (Array (_ BitVec 32) (_ BitVec 64))) (size!19286 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39476)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39476 (_ BitVec 64) (_ BitVec 32)) Unit!23858)

(assert (=> b!680530 (= lt!313080 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!680530 false))

(declare-fun b!680531 () Bool)

(declare-fun e!387650 () Bool)

(declare-datatypes ((List!13016 0))(
  ( (Nil!13013) (Cons!13012 (h!14057 (_ BitVec 64)) (t!19255 List!13016)) )
))
(declare-fun lt!313081 () List!13016)

(declare-fun contains!3559 (List!13016 (_ BitVec 64)) Bool)

(assert (=> b!680531 (= e!387650 (not (contains!3559 lt!313081 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680532 () Bool)

(declare-fun e!387653 () Bool)

(declare-fun acc!681 () List!13016)

(assert (=> b!680532 (= e!387653 (not (contains!3559 acc!681 k0!2843)))))

(declare-fun b!680533 () Bool)

(declare-fun res!446938 () Bool)

(declare-fun e!387647 () Bool)

(assert (=> b!680533 (=> (not res!446938) (not e!387647))))

(declare-fun arrayNoDuplicates!0 (array!39476 (_ BitVec 32) List!13016) Bool)

(assert (=> b!680533 (= res!446938 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680534 () Bool)

(declare-fun res!446922 () Bool)

(assert (=> b!680534 (=> (not res!446922) (not e!387647))))

(assert (=> b!680534 (= res!446922 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13013))))

(declare-fun b!680535 () Bool)

(declare-fun res!446932 () Bool)

(assert (=> b!680535 (=> (not res!446932) (not e!387647))))

(assert (=> b!680535 (= res!446932 (not (contains!3559 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680536 () Bool)

(declare-fun res!446923 () Bool)

(assert (=> b!680536 (=> (not res!446923) (not e!387647))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680536 (= res!446923 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19286 a!3626))))))

(declare-fun b!680537 () Bool)

(declare-fun res!446927 () Bool)

(assert (=> b!680537 (=> (not res!446927) (not e!387647))))

(assert (=> b!680537 (= res!446927 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19286 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680538 () Bool)

(declare-fun res!446930 () Bool)

(declare-fun e!387654 () Bool)

(assert (=> b!680538 (=> res!446930 e!387654)))

(declare-fun noDuplicate!806 (List!13016) Bool)

(assert (=> b!680538 (= res!446930 (not (noDuplicate!806 lt!313081)))))

(declare-fun b!680539 () Bool)

(declare-fun res!446937 () Bool)

(assert (=> b!680539 (=> (not res!446937) (not e!387647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680539 (= res!446937 (validKeyInArray!0 k0!2843))))

(declare-fun b!680540 () Bool)

(declare-fun e!387655 () Bool)

(assert (=> b!680540 (= e!387655 (contains!3559 acc!681 k0!2843))))

(declare-fun b!680541 () Bool)

(declare-fun res!446939 () Bool)

(assert (=> b!680541 (=> (not res!446939) (not e!387647))))

(declare-fun e!387651 () Bool)

(assert (=> b!680541 (= res!446939 e!387651)))

(declare-fun res!446929 () Bool)

(assert (=> b!680541 (=> res!446929 e!387651)))

(assert (=> b!680541 (= res!446929 e!387655)))

(declare-fun res!446931 () Bool)

(assert (=> b!680541 (=> (not res!446931) (not e!387655))))

(assert (=> b!680541 (= res!446931 (bvsgt from!3004 i!1382))))

(declare-fun b!680542 () Bool)

(assert (=> b!680542 (= e!387651 e!387653)))

(declare-fun res!446924 () Bool)

(assert (=> b!680542 (=> (not res!446924) (not e!387653))))

(assert (=> b!680542 (= res!446924 (bvsle from!3004 i!1382))))

(declare-fun b!680543 () Bool)

(assert (=> b!680543 (= e!387654 e!387650)))

(declare-fun res!446926 () Bool)

(assert (=> b!680543 (=> (not res!446926) (not e!387650))))

(assert (=> b!680543 (= res!446926 (not (contains!3559 lt!313081 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680544 () Bool)

(declare-fun e!387652 () Bool)

(assert (=> b!680544 (= e!387652 e!387654)))

(declare-fun res!446934 () Bool)

(assert (=> b!680544 (=> res!446934 e!387654)))

(assert (=> b!680544 (= res!446934 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!308 (List!13016 (_ BitVec 64)) List!13016)

(assert (=> b!680544 (= lt!313081 ($colon$colon!308 acc!681 (select (arr!18922 a!3626) from!3004)))))

(declare-fun subseq!144 (List!13016 List!13016) Bool)

(assert (=> b!680544 (subseq!144 acc!681 acc!681)))

(declare-fun lt!313082 () Unit!23858)

(declare-fun lemmaListSubSeqRefl!0 (List!13016) Unit!23858)

(assert (=> b!680544 (= lt!313082 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680545 () Bool)

(declare-fun res!446933 () Bool)

(assert (=> b!680545 (=> (not res!446933) (not e!387647))))

(declare-fun arrayContainsKey!0 (array!39476 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680545 (= res!446933 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun res!446925 () Bool)

(assert (=> start!60596 (=> (not res!446925) (not e!387647))))

(assert (=> start!60596 (= res!446925 (and (bvslt (size!19286 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19286 a!3626))))))

(assert (=> start!60596 e!387647))

(assert (=> start!60596 true))

(declare-fun array_inv!14696 (array!39476) Bool)

(assert (=> start!60596 (array_inv!14696 a!3626)))

(declare-fun b!680546 () Bool)

(assert (=> b!680546 (= e!387647 (not e!387652))))

(declare-fun res!446935 () Bool)

(assert (=> b!680546 (=> res!446935 e!387652)))

(assert (=> b!680546 (= res!446935 (not (validKeyInArray!0 (select (arr!18922 a!3626) from!3004))))))

(declare-fun lt!313083 () Unit!23858)

(assert (=> b!680546 (= lt!313083 e!387648)))

(declare-fun c!77171 () Bool)

(assert (=> b!680546 (= c!77171 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680546 (arrayContainsKey!0 (array!39477 (store (arr!18922 a!3626) i!1382 k0!2843) (size!19286 a!3626)) k0!2843 from!3004)))

(declare-fun b!680547 () Bool)

(declare-fun res!446928 () Bool)

(assert (=> b!680547 (=> (not res!446928) (not e!387647))))

(assert (=> b!680547 (= res!446928 (noDuplicate!806 acc!681))))

(declare-fun b!680548 () Bool)

(declare-fun res!446936 () Bool)

(assert (=> b!680548 (=> (not res!446936) (not e!387647))))

(assert (=> b!680548 (= res!446936 (not (contains!3559 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680549 () Bool)

(declare-fun Unit!23861 () Unit!23858)

(assert (=> b!680549 (= e!387648 Unit!23861)))

(assert (= (and start!60596 res!446925) b!680547))

(assert (= (and b!680547 res!446928) b!680535))

(assert (= (and b!680535 res!446932) b!680548))

(assert (= (and b!680548 res!446936) b!680541))

(assert (= (and b!680541 res!446931) b!680540))

(assert (= (and b!680541 (not res!446929)) b!680542))

(assert (= (and b!680542 res!446924) b!680532))

(assert (= (and b!680541 res!446939) b!680534))

(assert (= (and b!680534 res!446922) b!680533))

(assert (= (and b!680533 res!446938) b!680536))

(assert (= (and b!680536 res!446923) b!680539))

(assert (= (and b!680539 res!446937) b!680545))

(assert (= (and b!680545 res!446933) b!680537))

(assert (= (and b!680537 res!446927) b!680546))

(assert (= (and b!680546 c!77171) b!680530))

(assert (= (and b!680546 (not c!77171)) b!680549))

(assert (= (and b!680546 (not res!446935)) b!680544))

(assert (= (and b!680544 (not res!446934)) b!680538))

(assert (= (and b!680538 (not res!446930)) b!680543))

(assert (= (and b!680543 res!446926) b!680531))

(declare-fun m!645591 () Bool)

(assert (=> b!680535 m!645591))

(declare-fun m!645593 () Bool)

(assert (=> b!680548 m!645593))

(declare-fun m!645595 () Bool)

(assert (=> b!680543 m!645595))

(declare-fun m!645597 () Bool)

(assert (=> b!680539 m!645597))

(declare-fun m!645599 () Bool)

(assert (=> b!680538 m!645599))

(declare-fun m!645601 () Bool)

(assert (=> b!680532 m!645601))

(declare-fun m!645603 () Bool)

(assert (=> b!680546 m!645603))

(declare-fun m!645605 () Bool)

(assert (=> b!680546 m!645605))

(declare-fun m!645607 () Bool)

(assert (=> b!680546 m!645607))

(assert (=> b!680546 m!645603))

(declare-fun m!645609 () Bool)

(assert (=> b!680546 m!645609))

(declare-fun m!645611 () Bool)

(assert (=> b!680546 m!645611))

(declare-fun m!645613 () Bool)

(assert (=> b!680533 m!645613))

(declare-fun m!645615 () Bool)

(assert (=> b!680547 m!645615))

(declare-fun m!645617 () Bool)

(assert (=> b!680545 m!645617))

(declare-fun m!645619 () Bool)

(assert (=> b!680534 m!645619))

(declare-fun m!645621 () Bool)

(assert (=> b!680530 m!645621))

(assert (=> b!680540 m!645601))

(declare-fun m!645623 () Bool)

(assert (=> start!60596 m!645623))

(assert (=> b!680544 m!645603))

(assert (=> b!680544 m!645603))

(declare-fun m!645625 () Bool)

(assert (=> b!680544 m!645625))

(declare-fun m!645627 () Bool)

(assert (=> b!680544 m!645627))

(declare-fun m!645629 () Bool)

(assert (=> b!680544 m!645629))

(declare-fun m!645631 () Bool)

(assert (=> b!680531 m!645631))

(check-sat (not b!680544) (not b!680539) (not b!680543) (not b!680534) (not b!680530) (not b!680532) (not b!680531) (not start!60596) (not b!680538) (not b!680540) (not b!680546) (not b!680545) (not b!680548) (not b!680535) (not b!680533) (not b!680547))
(check-sat)
(get-model)

(declare-fun d!93553 () Bool)

(declare-fun res!446998 () Bool)

(declare-fun e!387687 () Bool)

(assert (=> d!93553 (=> res!446998 e!387687)))

(get-info :version)

(assert (=> d!93553 (= res!446998 ((_ is Nil!13013) acc!681))))

(assert (=> d!93553 (= (noDuplicate!806 acc!681) e!387687)))

(declare-fun b!680614 () Bool)

(declare-fun e!387688 () Bool)

(assert (=> b!680614 (= e!387687 e!387688)))

(declare-fun res!446999 () Bool)

(assert (=> b!680614 (=> (not res!446999) (not e!387688))))

(assert (=> b!680614 (= res!446999 (not (contains!3559 (t!19255 acc!681) (h!14057 acc!681))))))

(declare-fun b!680615 () Bool)

(assert (=> b!680615 (= e!387688 (noDuplicate!806 (t!19255 acc!681)))))

(assert (= (and d!93553 (not res!446998)) b!680614))

(assert (= (and b!680614 res!446999) b!680615))

(declare-fun m!645675 () Bool)

(assert (=> b!680614 m!645675))

(declare-fun m!645677 () Bool)

(assert (=> b!680615 m!645677))

(assert (=> b!680547 d!93553))

(declare-fun d!93555 () Bool)

(declare-fun res!447004 () Bool)

(declare-fun e!387693 () Bool)

(assert (=> d!93555 (=> res!447004 e!387693)))

(assert (=> d!93555 (= res!447004 (= (select (arr!18922 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93555 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!387693)))

(declare-fun b!680620 () Bool)

(declare-fun e!387694 () Bool)

(assert (=> b!680620 (= e!387693 e!387694)))

(declare-fun res!447005 () Bool)

(assert (=> b!680620 (=> (not res!447005) (not e!387694))))

(assert (=> b!680620 (= res!447005 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19286 a!3626)))))

(declare-fun b!680621 () Bool)

(assert (=> b!680621 (= e!387694 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93555 (not res!447004)) b!680620))

(assert (= (and b!680620 res!447005) b!680621))

(declare-fun m!645679 () Bool)

(assert (=> d!93555 m!645679))

(declare-fun m!645681 () Bool)

(assert (=> b!680621 m!645681))

(assert (=> b!680545 d!93555))

(declare-fun d!93557 () Bool)

(assert (=> d!93557 (= (validKeyInArray!0 (select (arr!18922 a!3626) from!3004)) (and (not (= (select (arr!18922 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18922 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680546 d!93557))

(declare-fun d!93561 () Bool)

(declare-fun res!447006 () Bool)

(declare-fun e!387695 () Bool)

(assert (=> d!93561 (=> res!447006 e!387695)))

(assert (=> d!93561 (= res!447006 (= (select (arr!18922 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93561 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!387695)))

(declare-fun b!680622 () Bool)

(declare-fun e!387696 () Bool)

(assert (=> b!680622 (= e!387695 e!387696)))

(declare-fun res!447007 () Bool)

(assert (=> b!680622 (=> (not res!447007) (not e!387696))))

(assert (=> b!680622 (= res!447007 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19286 a!3626)))))

(declare-fun b!680623 () Bool)

(assert (=> b!680623 (= e!387696 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93561 (not res!447006)) b!680622))

(assert (= (and b!680622 res!447007) b!680623))

(declare-fun m!645683 () Bool)

(assert (=> d!93561 m!645683))

(declare-fun m!645685 () Bool)

(assert (=> b!680623 m!645685))

(assert (=> b!680546 d!93561))

(declare-fun d!93565 () Bool)

(declare-fun res!447008 () Bool)

(declare-fun e!387697 () Bool)

(assert (=> d!93565 (=> res!447008 e!387697)))

(assert (=> d!93565 (= res!447008 (= (select (arr!18922 (array!39477 (store (arr!18922 a!3626) i!1382 k0!2843) (size!19286 a!3626))) from!3004) k0!2843))))

(assert (=> d!93565 (= (arrayContainsKey!0 (array!39477 (store (arr!18922 a!3626) i!1382 k0!2843) (size!19286 a!3626)) k0!2843 from!3004) e!387697)))

(declare-fun b!680624 () Bool)

(declare-fun e!387698 () Bool)

(assert (=> b!680624 (= e!387697 e!387698)))

(declare-fun res!447009 () Bool)

(assert (=> b!680624 (=> (not res!447009) (not e!387698))))

(assert (=> b!680624 (= res!447009 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19286 (array!39477 (store (arr!18922 a!3626) i!1382 k0!2843) (size!19286 a!3626)))))))

(declare-fun b!680625 () Bool)

(assert (=> b!680625 (= e!387698 (arrayContainsKey!0 (array!39477 (store (arr!18922 a!3626) i!1382 k0!2843) (size!19286 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93565 (not res!447008)) b!680624))

(assert (= (and b!680624 res!447009) b!680625))

(declare-fun m!645687 () Bool)

(assert (=> d!93565 m!645687))

(declare-fun m!645689 () Bool)

(assert (=> b!680625 m!645689))

(assert (=> b!680546 d!93565))

(declare-fun d!93567 () Bool)

(declare-fun lt!313101 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!272 (List!13016) (InoxSet (_ BitVec 64)))

(assert (=> d!93567 (= lt!313101 (select (content!272 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387715 () Bool)

(assert (=> d!93567 (= lt!313101 e!387715)))

(declare-fun res!447026 () Bool)

(assert (=> d!93567 (=> (not res!447026) (not e!387715))))

(assert (=> d!93567 (= res!447026 ((_ is Cons!13012) acc!681))))

(assert (=> d!93567 (= (contains!3559 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313101)))

(declare-fun b!680642 () Bool)

(declare-fun e!387716 () Bool)

(assert (=> b!680642 (= e!387715 e!387716)))

(declare-fun res!447027 () Bool)

(assert (=> b!680642 (=> res!447027 e!387716)))

(assert (=> b!680642 (= res!447027 (= (h!14057 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680643 () Bool)

(assert (=> b!680643 (= e!387716 (contains!3559 (t!19255 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93567 res!447026) b!680642))

(assert (= (and b!680642 (not res!447027)) b!680643))

(declare-fun m!645701 () Bool)

(assert (=> d!93567 m!645701))

(declare-fun m!645703 () Bool)

(assert (=> d!93567 m!645703))

(declare-fun m!645705 () Bool)

(assert (=> b!680643 m!645705))

(assert (=> b!680535 d!93567))

(declare-fun d!93577 () Bool)

(assert (=> d!93577 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680539 d!93577))

(declare-fun d!93579 () Bool)

(declare-fun lt!313102 () Bool)

(assert (=> d!93579 (= lt!313102 (select (content!272 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387719 () Bool)

(assert (=> d!93579 (= lt!313102 e!387719)))

(declare-fun res!447030 () Bool)

(assert (=> d!93579 (=> (not res!447030) (not e!387719))))

(assert (=> d!93579 (= res!447030 ((_ is Cons!13012) acc!681))))

(assert (=> d!93579 (= (contains!3559 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313102)))

(declare-fun b!680646 () Bool)

(declare-fun e!387720 () Bool)

(assert (=> b!680646 (= e!387719 e!387720)))

(declare-fun res!447031 () Bool)

(assert (=> b!680646 (=> res!447031 e!387720)))

(assert (=> b!680646 (= res!447031 (= (h!14057 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680647 () Bool)

(assert (=> b!680647 (= e!387720 (contains!3559 (t!19255 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93579 res!447030) b!680646))

(assert (= (and b!680646 (not res!447031)) b!680647))

(assert (=> d!93579 m!645701))

(declare-fun m!645711 () Bool)

(assert (=> d!93579 m!645711))

(declare-fun m!645713 () Bool)

(assert (=> b!680647 m!645713))

(assert (=> b!680548 d!93579))

(declare-fun d!93583 () Bool)

(declare-fun res!447032 () Bool)

(declare-fun e!387721 () Bool)

(assert (=> d!93583 (=> res!447032 e!387721)))

(assert (=> d!93583 (= res!447032 ((_ is Nil!13013) lt!313081))))

(assert (=> d!93583 (= (noDuplicate!806 lt!313081) e!387721)))

(declare-fun b!680648 () Bool)

(declare-fun e!387722 () Bool)

(assert (=> b!680648 (= e!387721 e!387722)))

(declare-fun res!447033 () Bool)

(assert (=> b!680648 (=> (not res!447033) (not e!387722))))

(assert (=> b!680648 (= res!447033 (not (contains!3559 (t!19255 lt!313081) (h!14057 lt!313081))))))

(declare-fun b!680649 () Bool)

(assert (=> b!680649 (= e!387722 (noDuplicate!806 (t!19255 lt!313081)))))

(assert (= (and d!93583 (not res!447032)) b!680648))

(assert (= (and b!680648 res!447033) b!680649))

(declare-fun m!645715 () Bool)

(assert (=> b!680648 m!645715))

(declare-fun m!645717 () Bool)

(assert (=> b!680649 m!645717))

(assert (=> b!680538 d!93583))

(declare-fun d!93585 () Bool)

(declare-fun lt!313103 () Bool)

(assert (=> d!93585 (= lt!313103 (select (content!272 lt!313081) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387723 () Bool)

(assert (=> d!93585 (= lt!313103 e!387723)))

(declare-fun res!447034 () Bool)

(assert (=> d!93585 (=> (not res!447034) (not e!387723))))

(assert (=> d!93585 (= res!447034 ((_ is Cons!13012) lt!313081))))

(assert (=> d!93585 (= (contains!3559 lt!313081 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313103)))

(declare-fun b!680650 () Bool)

(declare-fun e!387724 () Bool)

(assert (=> b!680650 (= e!387723 e!387724)))

(declare-fun res!447035 () Bool)

(assert (=> b!680650 (=> res!447035 e!387724)))

(assert (=> b!680650 (= res!447035 (= (h!14057 lt!313081) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680651 () Bool)

(assert (=> b!680651 (= e!387724 (contains!3559 (t!19255 lt!313081) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93585 res!447034) b!680650))

(assert (= (and b!680650 (not res!447035)) b!680651))

(declare-fun m!645719 () Bool)

(assert (=> d!93585 m!645719))

(declare-fun m!645721 () Bool)

(assert (=> d!93585 m!645721))

(declare-fun m!645723 () Bool)

(assert (=> b!680651 m!645723))

(assert (=> b!680531 d!93585))

(declare-fun d!93587 () Bool)

(declare-fun lt!313104 () Bool)

(assert (=> d!93587 (= lt!313104 (select (content!272 acc!681) k0!2843))))

(declare-fun e!387725 () Bool)

(assert (=> d!93587 (= lt!313104 e!387725)))

(declare-fun res!447036 () Bool)

(assert (=> d!93587 (=> (not res!447036) (not e!387725))))

(assert (=> d!93587 (= res!447036 ((_ is Cons!13012) acc!681))))

(assert (=> d!93587 (= (contains!3559 acc!681 k0!2843) lt!313104)))

(declare-fun b!680652 () Bool)

(declare-fun e!387726 () Bool)

(assert (=> b!680652 (= e!387725 e!387726)))

(declare-fun res!447037 () Bool)

(assert (=> b!680652 (=> res!447037 e!387726)))

(assert (=> b!680652 (= res!447037 (= (h!14057 acc!681) k0!2843))))

(declare-fun b!680653 () Bool)

(assert (=> b!680653 (= e!387726 (contains!3559 (t!19255 acc!681) k0!2843))))

(assert (= (and d!93587 res!447036) b!680652))

(assert (= (and b!680652 (not res!447037)) b!680653))

(assert (=> d!93587 m!645701))

(declare-fun m!645725 () Bool)

(assert (=> d!93587 m!645725))

(declare-fun m!645727 () Bool)

(assert (=> b!680653 m!645727))

(assert (=> b!680540 d!93587))

(declare-fun d!93589 () Bool)

(assert (=> d!93589 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313107 () Unit!23858)

(declare-fun choose!13 (array!39476 (_ BitVec 64) (_ BitVec 32)) Unit!23858)

(assert (=> d!93589 (= lt!313107 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!93589 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93589 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313107)))

(declare-fun bs!19982 () Bool)

(assert (= bs!19982 d!93589))

(assert (=> bs!19982 m!645617))

(declare-fun m!645737 () Bool)

(assert (=> bs!19982 m!645737))

(assert (=> b!680530 d!93589))

(declare-fun d!93597 () Bool)

(assert (=> d!93597 (= ($colon$colon!308 acc!681 (select (arr!18922 a!3626) from!3004)) (Cons!13012 (select (arr!18922 a!3626) from!3004) acc!681))))

(assert (=> b!680544 d!93597))

(declare-fun b!680699 () Bool)

(declare-fun e!387767 () Bool)

(declare-fun e!387769 () Bool)

(assert (=> b!680699 (= e!387767 e!387769)))

(declare-fun res!447074 () Bool)

(assert (=> b!680699 (=> res!447074 e!387769)))

(declare-fun e!387770 () Bool)

(assert (=> b!680699 (= res!447074 e!387770)))

(declare-fun res!447075 () Bool)

(assert (=> b!680699 (=> (not res!447075) (not e!387770))))

(assert (=> b!680699 (= res!447075 (= (h!14057 acc!681) (h!14057 acc!681)))))

(declare-fun b!680701 () Bool)

(assert (=> b!680701 (= e!387769 (subseq!144 acc!681 (t!19255 acc!681)))))

(declare-fun b!680700 () Bool)

(assert (=> b!680700 (= e!387770 (subseq!144 (t!19255 acc!681) (t!19255 acc!681)))))

(declare-fun b!680698 () Bool)

(declare-fun e!387768 () Bool)

(assert (=> b!680698 (= e!387768 e!387767)))

(declare-fun res!447077 () Bool)

(assert (=> b!680698 (=> (not res!447077) (not e!387767))))

(assert (=> b!680698 (= res!447077 ((_ is Cons!13012) acc!681))))

(declare-fun d!93599 () Bool)

(declare-fun res!447076 () Bool)

(assert (=> d!93599 (=> res!447076 e!387768)))

(assert (=> d!93599 (= res!447076 ((_ is Nil!13013) acc!681))))

(assert (=> d!93599 (= (subseq!144 acc!681 acc!681) e!387768)))

(assert (= (and d!93599 (not res!447076)) b!680698))

(assert (= (and b!680698 res!447077) b!680699))

(assert (= (and b!680699 res!447075) b!680700))

(assert (= (and b!680699 (not res!447074)) b!680701))

(declare-fun m!645763 () Bool)

(assert (=> b!680701 m!645763))

(declare-fun m!645765 () Bool)

(assert (=> b!680700 m!645765))

(assert (=> b!680544 d!93599))

(declare-fun d!93611 () Bool)

(assert (=> d!93611 (subseq!144 acc!681 acc!681)))

(declare-fun lt!313118 () Unit!23858)

(declare-fun choose!36 (List!13016) Unit!23858)

(assert (=> d!93611 (= lt!313118 (choose!36 acc!681))))

(assert (=> d!93611 (= (lemmaListSubSeqRefl!0 acc!681) lt!313118)))

(declare-fun bs!19984 () Bool)

(assert (= bs!19984 d!93611))

(assert (=> bs!19984 m!645627))

(declare-fun m!645775 () Bool)

(assert (=> bs!19984 m!645775))

(assert (=> b!680544 d!93611))

(declare-fun b!680749 () Bool)

(declare-fun e!387815 () Bool)

(declare-fun call!33957 () Bool)

(assert (=> b!680749 (= e!387815 call!33957)))

(declare-fun e!387814 () Bool)

(declare-fun b!680750 () Bool)

(assert (=> b!680750 (= e!387814 (contains!3559 acc!681 (select (arr!18922 a!3626) from!3004)))))

(declare-fun b!680751 () Bool)

(declare-fun e!387813 () Bool)

(assert (=> b!680751 (= e!387813 e!387815)))

(declare-fun c!77184 () Bool)

(assert (=> b!680751 (= c!77184 (validKeyInArray!0 (select (arr!18922 a!3626) from!3004)))))

(declare-fun b!680752 () Bool)

(declare-fun e!387816 () Bool)

(assert (=> b!680752 (= e!387816 e!387813)))

(declare-fun res!447116 () Bool)

(assert (=> b!680752 (=> (not res!447116) (not e!387813))))

(assert (=> b!680752 (= res!447116 (not e!387814))))

(declare-fun res!447115 () Bool)

(assert (=> b!680752 (=> (not res!447115) (not e!387814))))

(assert (=> b!680752 (= res!447115 (validKeyInArray!0 (select (arr!18922 a!3626) from!3004)))))

(declare-fun b!680753 () Bool)

(assert (=> b!680753 (= e!387815 call!33957)))

(declare-fun bm!33954 () Bool)

(assert (=> bm!33954 (= call!33957 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77184 (Cons!13012 (select (arr!18922 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun d!93619 () Bool)

(declare-fun res!447117 () Bool)

(assert (=> d!93619 (=> res!447117 e!387816)))

(assert (=> d!93619 (= res!447117 (bvsge from!3004 (size!19286 a!3626)))))

(assert (=> d!93619 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387816)))

(assert (= (and d!93619 (not res!447117)) b!680752))

(assert (= (and b!680752 res!447115) b!680750))

(assert (= (and b!680752 res!447116) b!680751))

(assert (= (and b!680751 c!77184) b!680753))

(assert (= (and b!680751 (not c!77184)) b!680749))

(assert (= (or b!680753 b!680749) bm!33954))

(assert (=> b!680750 m!645603))

(assert (=> b!680750 m!645603))

(declare-fun m!645795 () Bool)

(assert (=> b!680750 m!645795))

(assert (=> b!680751 m!645603))

(assert (=> b!680751 m!645603))

(assert (=> b!680751 m!645609))

(assert (=> b!680752 m!645603))

(assert (=> b!680752 m!645603))

(assert (=> b!680752 m!645609))

(assert (=> bm!33954 m!645603))

(declare-fun m!645799 () Bool)

(assert (=> bm!33954 m!645799))

(assert (=> b!680533 d!93619))

(declare-fun b!680760 () Bool)

(declare-fun e!387825 () Bool)

(declare-fun call!33958 () Bool)

(assert (=> b!680760 (= e!387825 call!33958)))

(declare-fun b!680761 () Bool)

(declare-fun e!387824 () Bool)

(assert (=> b!680761 (= e!387824 (contains!3559 Nil!13013 (select (arr!18922 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680762 () Bool)

(declare-fun e!387823 () Bool)

(assert (=> b!680762 (= e!387823 e!387825)))

(declare-fun c!77185 () Bool)

(assert (=> b!680762 (= c!77185 (validKeyInArray!0 (select (arr!18922 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680763 () Bool)

(declare-fun e!387826 () Bool)

(assert (=> b!680763 (= e!387826 e!387823)))

(declare-fun res!447125 () Bool)

(assert (=> b!680763 (=> (not res!447125) (not e!387823))))

(assert (=> b!680763 (= res!447125 (not e!387824))))

(declare-fun res!447124 () Bool)

(assert (=> b!680763 (=> (not res!447124) (not e!387824))))

(assert (=> b!680763 (= res!447124 (validKeyInArray!0 (select (arr!18922 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680764 () Bool)

(assert (=> b!680764 (= e!387825 call!33958)))

(declare-fun bm!33955 () Bool)

(assert (=> bm!33955 (= call!33958 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77185 (Cons!13012 (select (arr!18922 a!3626) #b00000000000000000000000000000000) Nil!13013) Nil!13013)))))

(declare-fun d!93633 () Bool)

(declare-fun res!447126 () Bool)

(assert (=> d!93633 (=> res!447126 e!387826)))

(assert (=> d!93633 (= res!447126 (bvsge #b00000000000000000000000000000000 (size!19286 a!3626)))))

(assert (=> d!93633 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13013) e!387826)))

(assert (= (and d!93633 (not res!447126)) b!680763))

(assert (= (and b!680763 res!447124) b!680761))

(assert (= (and b!680763 res!447125) b!680762))

(assert (= (and b!680762 c!77185) b!680764))

(assert (= (and b!680762 (not c!77185)) b!680760))

(assert (= (or b!680764 b!680760) bm!33955))

(assert (=> b!680761 m!645679))

(assert (=> b!680761 m!645679))

(declare-fun m!645813 () Bool)

(assert (=> b!680761 m!645813))

(assert (=> b!680762 m!645679))

(assert (=> b!680762 m!645679))

(declare-fun m!645815 () Bool)

(assert (=> b!680762 m!645815))

(assert (=> b!680763 m!645679))

(assert (=> b!680763 m!645679))

(assert (=> b!680763 m!645815))

(assert (=> bm!33955 m!645679))

(declare-fun m!645817 () Bool)

(assert (=> bm!33955 m!645817))

(assert (=> b!680534 d!93633))

(assert (=> b!680532 d!93587))

(declare-fun d!93641 () Bool)

(assert (=> d!93641 (= (array_inv!14696 a!3626) (bvsge (size!19286 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60596 d!93641))

(declare-fun d!93647 () Bool)

(declare-fun lt!313127 () Bool)

(assert (=> d!93647 (= lt!313127 (select (content!272 lt!313081) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387831 () Bool)

(assert (=> d!93647 (= lt!313127 e!387831)))

(declare-fun res!447131 () Bool)

(assert (=> d!93647 (=> (not res!447131) (not e!387831))))

(assert (=> d!93647 (= res!447131 ((_ is Cons!13012) lt!313081))))

(assert (=> d!93647 (= (contains!3559 lt!313081 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313127)))

(declare-fun b!680769 () Bool)

(declare-fun e!387832 () Bool)

(assert (=> b!680769 (= e!387831 e!387832)))

(declare-fun res!447132 () Bool)

(assert (=> b!680769 (=> res!447132 e!387832)))

(assert (=> b!680769 (= res!447132 (= (h!14057 lt!313081) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680770 () Bool)

(assert (=> b!680770 (= e!387832 (contains!3559 (t!19255 lt!313081) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93647 res!447131) b!680769))

(assert (= (and b!680769 (not res!447132)) b!680770))

(assert (=> d!93647 m!645719))

(declare-fun m!645825 () Bool)

(assert (=> d!93647 m!645825))

(declare-fun m!645827 () Bool)

(assert (=> b!680770 m!645827))

(assert (=> b!680543 d!93647))

(check-sat (not d!93611) (not b!680647) (not b!680653) (not b!680762) (not b!680750) (not bm!33954) (not b!680625) (not d!93567) (not d!93587) (not b!680621) (not d!93585) (not b!680752) (not b!680751) (not b!680643) (not b!680649) (not b!680761) (not d!93647) (not d!93579) (not b!680770) (not d!93589) (not b!680615) (not b!680651) (not b!680763) (not b!680614) (not b!680701) (not b!680623) (not b!680700) (not b!680648) (not bm!33955))
(check-sat)
