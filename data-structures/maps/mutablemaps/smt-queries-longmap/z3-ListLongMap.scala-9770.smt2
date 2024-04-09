; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!115780 () Bool)

(assert start!115780)

(declare-fun b!1368729 () Bool)

(declare-fun e!775408 () Bool)

(declare-datatypes ((List!32115 0))(
  ( (Nil!32112) (Cons!32111 (h!33320 (_ BitVec 64)) (t!46816 List!32115)) )
))
(declare-fun newAcc!98 () List!32115)

(declare-fun noDuplicate!2532 (List!32115) Bool)

(assert (=> b!1368729 (= e!775408 (not (noDuplicate!2532 newAcc!98)))))

(declare-datatypes ((array!92895 0))(
  ( (array!92896 (arr!44867 (Array (_ BitVec 32) (_ BitVec 64))) (size!45418 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92895)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!92895 (_ BitVec 32) List!32115) Bool)

(assert (=> b!1368729 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-datatypes ((Unit!45169 0))(
  ( (Unit!45170) )
))
(declare-fun lt!602066 () Unit!45169)

(declare-fun acc!866 () List!32115)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!92895 List!32115 List!32115 (_ BitVec 32)) Unit!45169)

(assert (=> b!1368729 (= lt!602066 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(declare-fun b!1368730 () Bool)

(declare-fun res!912362 () Bool)

(declare-fun e!775407 () Bool)

(assert (=> b!1368730 (=> (not res!912362) (not e!775407))))

(declare-fun contains!9653 (List!32115 (_ BitVec 64)) Bool)

(assert (=> b!1368730 (= res!912362 (not (contains!9653 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368731 () Bool)

(declare-fun res!912367 () Bool)

(assert (=> b!1368731 (=> (not res!912367) (not e!775407))))

(declare-fun subseq!1044 (List!32115 List!32115) Bool)

(assert (=> b!1368731 (= res!912367 (subseq!1044 newAcc!98 acc!866))))

(declare-fun b!1368732 () Bool)

(assert (=> b!1368732 (= e!775407 e!775408)))

(declare-fun res!912364 () Bool)

(assert (=> b!1368732 (=> (not res!912364) (not e!775408))))

(assert (=> b!1368732 (= res!912364 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-fun lt!602065 () Unit!45169)

(declare-fun noDuplicateSubseq!231 (List!32115 List!32115) Unit!45169)

(assert (=> b!1368732 (= lt!602065 (noDuplicateSubseq!231 newAcc!98 acc!866))))

(declare-fun b!1368733 () Bool)

(declare-fun res!912365 () Bool)

(assert (=> b!1368733 (=> (not res!912365) (not e!775408))))

(assert (=> b!1368733 (= res!912365 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1368734 () Bool)

(declare-fun res!912363 () Bool)

(assert (=> b!1368734 (=> (not res!912363) (not e!775407))))

(assert (=> b!1368734 (= res!912363 (not (contains!9653 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368735 () Bool)

(declare-fun res!912359 () Bool)

(assert (=> b!1368735 (=> (not res!912359) (not e!775408))))

(assert (=> b!1368735 (= res!912359 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866))))

(declare-fun b!1368737 () Bool)

(declare-fun res!912369 () Bool)

(assert (=> b!1368737 (=> (not res!912369) (not e!775408))))

(assert (=> b!1368737 (= res!912369 (bvslt from!3239 (size!45418 a!3861)))))

(declare-fun b!1368738 () Bool)

(declare-fun res!912361 () Bool)

(assert (=> b!1368738 (=> (not res!912361) (not e!775408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1368738 (= res!912361 (not (validKeyInArray!0 (select (arr!44867 a!3861) from!3239))))))

(declare-fun b!1368739 () Bool)

(declare-fun res!912360 () Bool)

(assert (=> b!1368739 (=> (not res!912360) (not e!775407))))

(assert (=> b!1368739 (= res!912360 (not (contains!9653 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1368740 () Bool)

(declare-fun res!912368 () Bool)

(assert (=> b!1368740 (=> (not res!912368) (not e!775407))))

(assert (=> b!1368740 (= res!912368 (noDuplicate!2532 acc!866))))

(declare-fun b!1368736 () Bool)

(declare-fun res!912366 () Bool)

(assert (=> b!1368736 (=> (not res!912366) (not e!775407))))

(assert (=> b!1368736 (= res!912366 (not (contains!9653 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!912358 () Bool)

(assert (=> start!115780 (=> (not res!912358) (not e!775407))))

(assert (=> start!115780 (= res!912358 (and (bvslt (size!45418 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45418 a!3861))))))

(assert (=> start!115780 e!775407))

(declare-fun array_inv!33812 (array!92895) Bool)

(assert (=> start!115780 (array_inv!33812 a!3861)))

(assert (=> start!115780 true))

(assert (= (and start!115780 res!912358) b!1368740))

(assert (= (and b!1368740 res!912368) b!1368730))

(assert (= (and b!1368730 res!912362) b!1368739))

(assert (= (and b!1368739 res!912360) b!1368734))

(assert (= (and b!1368734 res!912363) b!1368736))

(assert (= (and b!1368736 res!912366) b!1368731))

(assert (= (and b!1368731 res!912367) b!1368732))

(assert (= (and b!1368732 res!912364) b!1368737))

(assert (= (and b!1368737 res!912369) b!1368738))

(assert (= (and b!1368738 res!912361) b!1368733))

(assert (= (and b!1368733 res!912365) b!1368735))

(assert (= (and b!1368735 res!912359) b!1368729))

(declare-fun m!1252645 () Bool)

(assert (=> b!1368736 m!1252645))

(declare-fun m!1252647 () Bool)

(assert (=> b!1368740 m!1252647))

(declare-fun m!1252649 () Bool)

(assert (=> b!1368739 m!1252649))

(declare-fun m!1252651 () Bool)

(assert (=> start!115780 m!1252651))

(declare-fun m!1252653 () Bool)

(assert (=> b!1368730 m!1252653))

(declare-fun m!1252655 () Bool)

(assert (=> b!1368738 m!1252655))

(assert (=> b!1368738 m!1252655))

(declare-fun m!1252657 () Bool)

(assert (=> b!1368738 m!1252657))

(declare-fun m!1252659 () Bool)

(assert (=> b!1368734 m!1252659))

(declare-fun m!1252661 () Bool)

(assert (=> b!1368735 m!1252661))

(declare-fun m!1252663 () Bool)

(assert (=> b!1368729 m!1252663))

(declare-fun m!1252665 () Bool)

(assert (=> b!1368729 m!1252665))

(declare-fun m!1252667 () Bool)

(assert (=> b!1368729 m!1252667))

(declare-fun m!1252669 () Bool)

(assert (=> b!1368732 m!1252669))

(declare-fun m!1252671 () Bool)

(assert (=> b!1368732 m!1252671))

(declare-fun m!1252673 () Bool)

(assert (=> b!1368731 m!1252673))

(check-sat (not b!1368729) (not b!1368732) (not b!1368734) (not b!1368739) (not b!1368735) (not b!1368740) (not b!1368731) (not b!1368738) (not b!1368730) (not b!1368736) (not start!115780))
(check-sat)
(get-model)

(declare-fun d!146831 () Bool)

(declare-fun lt!602075 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!726 (List!32115) (InoxSet (_ BitVec 64)))

(assert (=> d!146831 (= lt!602075 (select (content!726 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775422 () Bool)

(assert (=> d!146831 (= lt!602075 e!775422)))

(declare-fun res!912410 () Bool)

(assert (=> d!146831 (=> (not res!912410) (not e!775422))))

(get-info :version)

(assert (=> d!146831 (= res!912410 ((_ is Cons!32111) newAcc!98))))

(assert (=> d!146831 (= (contains!9653 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602075)))

(declare-fun b!1368781 () Bool)

(declare-fun e!775423 () Bool)

(assert (=> b!1368781 (= e!775422 e!775423)))

(declare-fun res!912411 () Bool)

(assert (=> b!1368781 (=> res!912411 e!775423)))

(assert (=> b!1368781 (= res!912411 (= (h!33320 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368782 () Bool)

(assert (=> b!1368782 (= e!775423 (contains!9653 (t!46816 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146831 res!912410) b!1368781))

(assert (= (and b!1368781 (not res!912411)) b!1368782))

(declare-fun m!1252705 () Bool)

(assert (=> d!146831 m!1252705))

(declare-fun m!1252707 () Bool)

(assert (=> d!146831 m!1252707))

(declare-fun m!1252709 () Bool)

(assert (=> b!1368782 m!1252709))

(assert (=> b!1368734 d!146831))

(declare-fun d!146835 () Bool)

(declare-fun lt!602076 () Bool)

(assert (=> d!146835 (= lt!602076 (select (content!726 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775424 () Bool)

(assert (=> d!146835 (= lt!602076 e!775424)))

(declare-fun res!912412 () Bool)

(assert (=> d!146835 (=> (not res!912412) (not e!775424))))

(assert (=> d!146835 (= res!912412 ((_ is Cons!32111) acc!866))))

(assert (=> d!146835 (= (contains!9653 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602076)))

(declare-fun b!1368783 () Bool)

(declare-fun e!775425 () Bool)

(assert (=> b!1368783 (= e!775424 e!775425)))

(declare-fun res!912413 () Bool)

(assert (=> b!1368783 (=> res!912413 e!775425)))

(assert (=> b!1368783 (= res!912413 (= (h!33320 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368784 () Bool)

(assert (=> b!1368784 (= e!775425 (contains!9653 (t!46816 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146835 res!912412) b!1368783))

(assert (= (and b!1368783 (not res!912413)) b!1368784))

(declare-fun m!1252711 () Bool)

(assert (=> d!146835 m!1252711))

(declare-fun m!1252713 () Bool)

(assert (=> d!146835 m!1252713))

(declare-fun m!1252715 () Bool)

(assert (=> b!1368784 m!1252715))

(assert (=> b!1368739 d!146835))

(declare-fun d!146837 () Bool)

(declare-fun res!912422 () Bool)

(declare-fun e!775434 () Bool)

(assert (=> d!146837 (=> res!912422 e!775434)))

(assert (=> d!146837 (= res!912422 ((_ is Nil!32112) acc!866))))

(assert (=> d!146837 (= (noDuplicate!2532 acc!866) e!775434)))

(declare-fun b!1368793 () Bool)

(declare-fun e!775435 () Bool)

(assert (=> b!1368793 (= e!775434 e!775435)))

(declare-fun res!912423 () Bool)

(assert (=> b!1368793 (=> (not res!912423) (not e!775435))))

(assert (=> b!1368793 (= res!912423 (not (contains!9653 (t!46816 acc!866) (h!33320 acc!866))))))

(declare-fun b!1368794 () Bool)

(assert (=> b!1368794 (= e!775435 (noDuplicate!2532 (t!46816 acc!866)))))

(assert (= (and d!146837 (not res!912422)) b!1368793))

(assert (= (and b!1368793 res!912423) b!1368794))

(declare-fun m!1252717 () Bool)

(assert (=> b!1368793 m!1252717))

(declare-fun m!1252719 () Bool)

(assert (=> b!1368794 m!1252719))

(assert (=> b!1368740 d!146837))

(declare-fun d!146841 () Bool)

(declare-fun res!912426 () Bool)

(declare-fun e!775438 () Bool)

(assert (=> d!146841 (=> res!912426 e!775438)))

(assert (=> d!146841 (= res!912426 ((_ is Nil!32112) newAcc!98))))

(assert (=> d!146841 (= (noDuplicate!2532 newAcc!98) e!775438)))

(declare-fun b!1368797 () Bool)

(declare-fun e!775439 () Bool)

(assert (=> b!1368797 (= e!775438 e!775439)))

(declare-fun res!912427 () Bool)

(assert (=> b!1368797 (=> (not res!912427) (not e!775439))))

(assert (=> b!1368797 (= res!912427 (not (contains!9653 (t!46816 newAcc!98) (h!33320 newAcc!98))))))

(declare-fun b!1368798 () Bool)

(assert (=> b!1368798 (= e!775439 (noDuplicate!2532 (t!46816 newAcc!98)))))

(assert (= (and d!146841 (not res!912426)) b!1368797))

(assert (= (and b!1368797 res!912427) b!1368798))

(declare-fun m!1252723 () Bool)

(assert (=> b!1368797 m!1252723))

(declare-fun m!1252727 () Bool)

(assert (=> b!1368798 m!1252727))

(assert (=> b!1368729 d!146841))

(declare-fun b!1368839 () Bool)

(declare-fun e!775472 () Bool)

(declare-fun call!65497 () Bool)

(assert (=> b!1368839 (= e!775472 call!65497)))

(declare-fun d!146843 () Bool)

(declare-fun res!912453 () Bool)

(declare-fun e!775473 () Bool)

(assert (=> d!146843 (=> res!912453 e!775473)))

(assert (=> d!146843 (= res!912453 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45418 a!3861)))))

(assert (=> d!146843 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98) e!775473)))

(declare-fun bm!65494 () Bool)

(declare-fun c!127636 () Bool)

(assert (=> bm!65494 (= call!65497 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127636 (Cons!32111 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) newAcc!98) newAcc!98)))))

(declare-fun b!1368840 () Bool)

(declare-fun e!775474 () Bool)

(assert (=> b!1368840 (= e!775474 e!775472)))

(assert (=> b!1368840 (= c!127636 (validKeyInArray!0 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368841 () Bool)

(assert (=> b!1368841 (= e!775473 e!775474)))

(declare-fun res!912454 () Bool)

(assert (=> b!1368841 (=> (not res!912454) (not e!775474))))

(declare-fun e!775475 () Bool)

(assert (=> b!1368841 (= res!912454 (not e!775475))))

(declare-fun res!912452 () Bool)

(assert (=> b!1368841 (=> (not res!912452) (not e!775475))))

(assert (=> b!1368841 (= res!912452 (validKeyInArray!0 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368842 () Bool)

(assert (=> b!1368842 (= e!775475 (contains!9653 newAcc!98 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368843 () Bool)

(assert (=> b!1368843 (= e!775472 call!65497)))

(assert (= (and d!146843 (not res!912453)) b!1368841))

(assert (= (and b!1368841 res!912452) b!1368842))

(assert (= (and b!1368841 res!912454) b!1368840))

(assert (= (and b!1368840 c!127636) b!1368839))

(assert (= (and b!1368840 (not c!127636)) b!1368843))

(assert (= (or b!1368839 b!1368843) bm!65494))

(declare-fun m!1252735 () Bool)

(assert (=> bm!65494 m!1252735))

(declare-fun m!1252739 () Bool)

(assert (=> bm!65494 m!1252739))

(assert (=> b!1368840 m!1252735))

(assert (=> b!1368840 m!1252735))

(declare-fun m!1252741 () Bool)

(assert (=> b!1368840 m!1252741))

(assert (=> b!1368841 m!1252735))

(assert (=> b!1368841 m!1252735))

(assert (=> b!1368841 m!1252741))

(assert (=> b!1368842 m!1252735))

(assert (=> b!1368842 m!1252735))

(declare-fun m!1252745 () Bool)

(assert (=> b!1368842 m!1252745))

(assert (=> b!1368729 d!146843))

(declare-fun d!146851 () Bool)

(assert (=> d!146851 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) newAcc!98)))

(declare-fun lt!602087 () Unit!45169)

(declare-fun choose!80 (array!92895 List!32115 List!32115 (_ BitVec 32)) Unit!45169)

(assert (=> d!146851 (= lt!602087 (choose!80 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)))))

(assert (=> d!146851 (bvslt (size!45418 a!3861) #b01111111111111111111111111111111)))

(assert (=> d!146851 (= (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3861 acc!866 newAcc!98 (bvadd #b00000000000000000000000000000001 from!3239)) lt!602087)))

(declare-fun bs!39260 () Bool)

(assert (= bs!39260 d!146851))

(assert (=> bs!39260 m!1252665))

(declare-fun m!1252749 () Bool)

(assert (=> bs!39260 m!1252749))

(assert (=> b!1368729 d!146851))

(declare-fun d!146857 () Bool)

(assert (=> d!146857 (= (validKeyInArray!0 (select (arr!44867 a!3861) from!3239)) (and (not (= (select (arr!44867 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44867 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1368738 d!146857))

(declare-fun d!146861 () Bool)

(assert (=> d!146861 (= (array_inv!33812 a!3861) (bvsge (size!45418 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115780 d!146861))

(declare-fun d!146865 () Bool)

(declare-fun res!912494 () Bool)

(declare-fun e!775514 () Bool)

(assert (=> d!146865 (=> res!912494 e!775514)))

(assert (=> d!146865 (= res!912494 ((_ is Nil!32112) newAcc!98))))

(assert (=> d!146865 (= (subseq!1044 newAcc!98 acc!866) e!775514)))

(declare-fun b!1368886 () Bool)

(declare-fun e!775517 () Bool)

(assert (=> b!1368886 (= e!775517 (subseq!1044 newAcc!98 (t!46816 acc!866)))))

(declare-fun b!1368885 () Bool)

(declare-fun e!775516 () Bool)

(assert (=> b!1368885 (= e!775516 (subseq!1044 (t!46816 newAcc!98) (t!46816 acc!866)))))

(declare-fun b!1368883 () Bool)

(declare-fun e!775515 () Bool)

(assert (=> b!1368883 (= e!775514 e!775515)))

(declare-fun res!912495 () Bool)

(assert (=> b!1368883 (=> (not res!912495) (not e!775515))))

(assert (=> b!1368883 (= res!912495 ((_ is Cons!32111) acc!866))))

(declare-fun b!1368884 () Bool)

(assert (=> b!1368884 (= e!775515 e!775517)))

(declare-fun res!912493 () Bool)

(assert (=> b!1368884 (=> res!912493 e!775517)))

(assert (=> b!1368884 (= res!912493 e!775516)))

(declare-fun res!912492 () Bool)

(assert (=> b!1368884 (=> (not res!912492) (not e!775516))))

(assert (=> b!1368884 (= res!912492 (= (h!33320 newAcc!98) (h!33320 acc!866)))))

(assert (= (and d!146865 (not res!912494)) b!1368883))

(assert (= (and b!1368883 res!912495) b!1368884))

(assert (= (and b!1368884 res!912492) b!1368885))

(assert (= (and b!1368884 (not res!912493)) b!1368886))

(declare-fun m!1252781 () Bool)

(assert (=> b!1368886 m!1252781))

(declare-fun m!1252783 () Bool)

(assert (=> b!1368885 m!1252783))

(assert (=> b!1368731 d!146865))

(declare-fun b!1368887 () Bool)

(declare-fun e!775518 () Bool)

(declare-fun call!65499 () Bool)

(assert (=> b!1368887 (= e!775518 call!65499)))

(declare-fun d!146879 () Bool)

(declare-fun res!912497 () Bool)

(declare-fun e!775519 () Bool)

(assert (=> d!146879 (=> res!912497 e!775519)))

(assert (=> d!146879 (= res!912497 (bvsge from!3239 (size!45418 a!3861)))))

(assert (=> d!146879 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!775519)))

(declare-fun bm!65496 () Bool)

(declare-fun c!127638 () Bool)

(assert (=> bm!65496 (= call!65499 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127638 (Cons!32111 (select (arr!44867 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1368888 () Bool)

(declare-fun e!775520 () Bool)

(assert (=> b!1368888 (= e!775520 e!775518)))

(assert (=> b!1368888 (= c!127638 (validKeyInArray!0 (select (arr!44867 a!3861) from!3239)))))

(declare-fun b!1368889 () Bool)

(assert (=> b!1368889 (= e!775519 e!775520)))

(declare-fun res!912498 () Bool)

(assert (=> b!1368889 (=> (not res!912498) (not e!775520))))

(declare-fun e!775521 () Bool)

(assert (=> b!1368889 (= res!912498 (not e!775521))))

(declare-fun res!912496 () Bool)

(assert (=> b!1368889 (=> (not res!912496) (not e!775521))))

(assert (=> b!1368889 (= res!912496 (validKeyInArray!0 (select (arr!44867 a!3861) from!3239)))))

(declare-fun b!1368890 () Bool)

(assert (=> b!1368890 (= e!775521 (contains!9653 acc!866 (select (arr!44867 a!3861) from!3239)))))

(declare-fun b!1368891 () Bool)

(assert (=> b!1368891 (= e!775518 call!65499)))

(assert (= (and d!146879 (not res!912497)) b!1368889))

(assert (= (and b!1368889 res!912496) b!1368890))

(assert (= (and b!1368889 res!912498) b!1368888))

(assert (= (and b!1368888 c!127638) b!1368887))

(assert (= (and b!1368888 (not c!127638)) b!1368891))

(assert (= (or b!1368887 b!1368891) bm!65496))

(assert (=> bm!65496 m!1252655))

(declare-fun m!1252789 () Bool)

(assert (=> bm!65496 m!1252789))

(assert (=> b!1368888 m!1252655))

(assert (=> b!1368888 m!1252655))

(assert (=> b!1368888 m!1252657))

(assert (=> b!1368889 m!1252655))

(assert (=> b!1368889 m!1252655))

(assert (=> b!1368889 m!1252657))

(assert (=> b!1368890 m!1252655))

(assert (=> b!1368890 m!1252655))

(declare-fun m!1252791 () Bool)

(assert (=> b!1368890 m!1252791))

(assert (=> b!1368732 d!146879))

(declare-fun d!146883 () Bool)

(assert (=> d!146883 (noDuplicate!2532 newAcc!98)))

(declare-fun lt!602103 () Unit!45169)

(declare-fun choose!2008 (List!32115 List!32115) Unit!45169)

(assert (=> d!146883 (= lt!602103 (choose!2008 newAcc!98 acc!866))))

(declare-fun e!775534 () Bool)

(assert (=> d!146883 e!775534))

(declare-fun res!912510 () Bool)

(assert (=> d!146883 (=> (not res!912510) (not e!775534))))

(assert (=> d!146883 (= res!912510 (subseq!1044 newAcc!98 acc!866))))

(assert (=> d!146883 (= (noDuplicateSubseq!231 newAcc!98 acc!866) lt!602103)))

(declare-fun b!1368905 () Bool)

(assert (=> b!1368905 (= e!775534 (noDuplicate!2532 acc!866))))

(assert (= (and d!146883 res!912510) b!1368905))

(assert (=> d!146883 m!1252663))

(declare-fun m!1252813 () Bool)

(assert (=> d!146883 m!1252813))

(assert (=> d!146883 m!1252673))

(assert (=> b!1368905 m!1252647))

(assert (=> b!1368732 d!146883))

(declare-fun d!146895 () Bool)

(declare-fun lt!602105 () Bool)

(assert (=> d!146895 (= lt!602105 (select (content!726 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775535 () Bool)

(assert (=> d!146895 (= lt!602105 e!775535)))

(declare-fun res!912511 () Bool)

(assert (=> d!146895 (=> (not res!912511) (not e!775535))))

(assert (=> d!146895 (= res!912511 ((_ is Cons!32111) acc!866))))

(assert (=> d!146895 (= (contains!9653 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602105)))

(declare-fun b!1368906 () Bool)

(declare-fun e!775536 () Bool)

(assert (=> b!1368906 (= e!775535 e!775536)))

(declare-fun res!912512 () Bool)

(assert (=> b!1368906 (=> res!912512 e!775536)))

(assert (=> b!1368906 (= res!912512 (= (h!33320 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368907 () Bool)

(assert (=> b!1368907 (= e!775536 (contains!9653 (t!46816 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146895 res!912511) b!1368906))

(assert (= (and b!1368906 (not res!912512)) b!1368907))

(assert (=> d!146895 m!1252711))

(declare-fun m!1252817 () Bool)

(assert (=> d!146895 m!1252817))

(declare-fun m!1252819 () Bool)

(assert (=> b!1368907 m!1252819))

(assert (=> b!1368730 d!146895))

(declare-fun b!1368913 () Bool)

(declare-fun e!775541 () Bool)

(declare-fun call!65502 () Bool)

(assert (=> b!1368913 (= e!775541 call!65502)))

(declare-fun d!146899 () Bool)

(declare-fun res!912517 () Bool)

(declare-fun e!775542 () Bool)

(assert (=> d!146899 (=> res!912517 e!775542)))

(assert (=> d!146899 (= res!912517 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45418 a!3861)))))

(assert (=> d!146899 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!775542)))

(declare-fun c!127641 () Bool)

(declare-fun bm!65499 () Bool)

(assert (=> bm!65499 (= call!65502 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127641 (Cons!32111 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(declare-fun b!1368914 () Bool)

(declare-fun e!775543 () Bool)

(assert (=> b!1368914 (= e!775543 e!775541)))

(assert (=> b!1368914 (= c!127641 (validKeyInArray!0 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368915 () Bool)

(assert (=> b!1368915 (= e!775542 e!775543)))

(declare-fun res!912518 () Bool)

(assert (=> b!1368915 (=> (not res!912518) (not e!775543))))

(declare-fun e!775544 () Bool)

(assert (=> b!1368915 (= res!912518 (not e!775544))))

(declare-fun res!912516 () Bool)

(assert (=> b!1368915 (=> (not res!912516) (not e!775544))))

(assert (=> b!1368915 (= res!912516 (validKeyInArray!0 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368916 () Bool)

(assert (=> b!1368916 (= e!775544 (contains!9653 acc!866 (select (arr!44867 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1368917 () Bool)

(assert (=> b!1368917 (= e!775541 call!65502)))

(assert (= (and d!146899 (not res!912517)) b!1368915))

(assert (= (and b!1368915 res!912516) b!1368916))

(assert (= (and b!1368915 res!912518) b!1368914))

(assert (= (and b!1368914 c!127641) b!1368913))

(assert (= (and b!1368914 (not c!127641)) b!1368917))

(assert (= (or b!1368913 b!1368917) bm!65499))

(assert (=> bm!65499 m!1252735))

(declare-fun m!1252825 () Bool)

(assert (=> bm!65499 m!1252825))

(assert (=> b!1368914 m!1252735))

(assert (=> b!1368914 m!1252735))

(assert (=> b!1368914 m!1252741))

(assert (=> b!1368915 m!1252735))

(assert (=> b!1368915 m!1252735))

(assert (=> b!1368915 m!1252741))

(assert (=> b!1368916 m!1252735))

(assert (=> b!1368916 m!1252735))

(declare-fun m!1252827 () Bool)

(assert (=> b!1368916 m!1252827))

(assert (=> b!1368735 d!146899))

(declare-fun d!146903 () Bool)

(declare-fun lt!602107 () Bool)

(assert (=> d!146903 (= lt!602107 (select (content!726 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!775555 () Bool)

(assert (=> d!146903 (= lt!602107 e!775555)))

(declare-fun res!912529 () Bool)

(assert (=> d!146903 (=> (not res!912529) (not e!775555))))

(assert (=> d!146903 (= res!912529 ((_ is Cons!32111) newAcc!98))))

(assert (=> d!146903 (= (contains!9653 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602107)))

(declare-fun b!1368928 () Bool)

(declare-fun e!775556 () Bool)

(assert (=> b!1368928 (= e!775555 e!775556)))

(declare-fun res!912530 () Bool)

(assert (=> b!1368928 (=> res!912530 e!775556)))

(assert (=> b!1368928 (= res!912530 (= (h!33320 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1368929 () Bool)

(assert (=> b!1368929 (= e!775556 (contains!9653 (t!46816 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!146903 res!912529) b!1368928))

(assert (= (and b!1368928 (not res!912530)) b!1368929))

(assert (=> d!146903 m!1252705))

(declare-fun m!1252833 () Bool)

(assert (=> d!146903 m!1252833))

(declare-fun m!1252835 () Bool)

(assert (=> b!1368929 m!1252835))

(assert (=> b!1368736 d!146903))

(check-sat (not b!1368905) (not b!1368885) (not bm!65499) (not b!1368907) (not b!1368782) (not b!1368794) (not b!1368889) (not b!1368784) (not b!1368840) (not b!1368888) (not b!1368915) (not b!1368886) (not d!146883) (not bm!65494) (not b!1368929) (not b!1368797) (not b!1368841) (not d!146851) (not d!146831) (not d!146903) (not d!146895) (not b!1368798) (not bm!65496) (not b!1368914) (not b!1368842) (not b!1368793) (not b!1368890) (not d!146835) (not b!1368916))
(check-sat)
