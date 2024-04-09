; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!93404 () Bool)

(assert start!93404)

(declare-fun b!1057873 () Bool)

(declare-fun res!706600 () Bool)

(declare-fun e!601772 () Bool)

(assert (=> b!1057873 (=> (not res!706600) (not e!601772))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057873 (= res!706600 (validKeyInArray!0 k0!2747))))

(declare-fun b!1057874 () Bool)

(declare-fun e!601777 () Bool)

(declare-fun e!601771 () Bool)

(assert (=> b!1057874 (= e!601777 e!601771)))

(declare-fun res!706605 () Bool)

(assert (=> b!1057874 (=> res!706605 e!601771)))

(declare-fun lt!466639 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057874 (= res!706605 (or (bvsgt lt!466639 i!1381) (bvsle i!1381 lt!466639)))))

(declare-fun b!1057875 () Bool)

(declare-fun e!601773 () Bool)

(declare-fun e!601774 () Bool)

(assert (=> b!1057875 (= e!601773 e!601774)))

(declare-fun res!706602 () Bool)

(assert (=> b!1057875 (=> (not res!706602) (not e!601774))))

(declare-datatypes ((List!22512 0))(
  ( (Nil!22509) (Cons!22508 (h!23717 (_ BitVec 64)) (t!31826 List!22512)) )
))
(declare-fun contains!6218 (List!22512 (_ BitVec 64)) Bool)

(assert (=> b!1057875 (= res!706602 (not (contains!6218 Nil!22509 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!706598 () Bool)

(assert (=> start!93404 (=> (not res!706598) (not e!601772))))

(declare-datatypes ((array!66706 0))(
  ( (array!66707 (arr!32069 (Array (_ BitVec 32) (_ BitVec 64))) (size!32606 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66706)

(assert (=> start!93404 (= res!706598 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32606 a!3488)) (bvslt (size!32606 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93404 e!601772))

(assert (=> start!93404 true))

(declare-fun array_inv!24691 (array!66706) Bool)

(assert (=> start!93404 (array_inv!24691 a!3488)))

(declare-fun b!1057876 () Bool)

(declare-fun res!706609 () Bool)

(assert (=> b!1057876 (=> res!706609 e!601773)))

(declare-fun noDuplicate!1579 (List!22512) Bool)

(assert (=> b!1057876 (= res!706609 (not (noDuplicate!1579 Nil!22509)))))

(declare-fun b!1057877 () Bool)

(declare-fun e!601775 () Bool)

(declare-fun e!601779 () Bool)

(assert (=> b!1057877 (= e!601775 (not e!601779))))

(declare-fun res!706604 () Bool)

(assert (=> b!1057877 (=> res!706604 e!601779)))

(assert (=> b!1057877 (= res!706604 (or (bvsgt lt!466639 i!1381) (bvsle i!1381 lt!466639)))))

(assert (=> b!1057877 e!601777))

(declare-fun res!706608 () Bool)

(assert (=> b!1057877 (=> (not res!706608) (not e!601777))))

(assert (=> b!1057877 (= res!706608 (= (select (store (arr!32069 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466639) k0!2747))))

(declare-fun b!1057878 () Bool)

(declare-fun res!706599 () Bool)

(assert (=> b!1057878 (=> (not res!706599) (not e!601772))))

(assert (=> b!1057878 (= res!706599 (= (select (arr!32069 a!3488) i!1381) k0!2747))))

(declare-fun b!1057879 () Bool)

(declare-fun e!601776 () Bool)

(assert (=> b!1057879 (= e!601772 e!601776)))

(declare-fun res!706606 () Bool)

(assert (=> b!1057879 (=> (not res!706606) (not e!601776))))

(declare-fun lt!466636 () array!66706)

(declare-fun arrayContainsKey!0 (array!66706 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057879 (= res!706606 (arrayContainsKey!0 lt!466636 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057879 (= lt!466636 (array!66707 (store (arr!32069 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32606 a!3488)))))

(declare-fun b!1057880 () Bool)

(assert (=> b!1057880 (= e!601779 e!601773)))

(declare-fun res!706607 () Bool)

(assert (=> b!1057880 (=> res!706607 e!601773)))

(declare-fun lt!466637 () (_ BitVec 32))

(assert (=> b!1057880 (= res!706607 (or (bvslt lt!466639 #b00000000000000000000000000000000) (bvsge lt!466637 (size!32606 a!3488)) (bvsge lt!466639 (size!32606 a!3488))))))

(assert (=> b!1057880 (arrayContainsKey!0 a!3488 k0!2747 lt!466637)))

(declare-datatypes ((Unit!34669 0))(
  ( (Unit!34670) )
))
(declare-fun lt!466638 () Unit!34669)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66706 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34669)

(assert (=> b!1057880 (= lt!466638 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466637))))

(assert (=> b!1057880 (= lt!466637 (bvadd #b00000000000000000000000000000001 lt!466639))))

(declare-fun arrayNoDuplicates!0 (array!66706 (_ BitVec 32) List!22512) Bool)

(assert (=> b!1057880 (arrayNoDuplicates!0 a!3488 lt!466639 Nil!22509)))

(declare-fun lt!466635 () Unit!34669)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66706 (_ BitVec 32) (_ BitVec 32)) Unit!34669)

(assert (=> b!1057880 (= lt!466635 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466639))))

(declare-fun b!1057881 () Bool)

(assert (=> b!1057881 (= e!601774 (not (contains!6218 Nil!22509 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1057882 () Bool)

(assert (=> b!1057882 (= e!601771 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1057883 () Bool)

(declare-fun res!706603 () Bool)

(assert (=> b!1057883 (=> (not res!706603) (not e!601772))))

(assert (=> b!1057883 (= res!706603 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22509))))

(declare-fun b!1057884 () Bool)

(assert (=> b!1057884 (= e!601776 e!601775)))

(declare-fun res!706601 () Bool)

(assert (=> b!1057884 (=> (not res!706601) (not e!601775))))

(assert (=> b!1057884 (= res!706601 (not (= lt!466639 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66706 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057884 (= lt!466639 (arrayScanForKey!0 lt!466636 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!93404 res!706598) b!1057883))

(assert (= (and b!1057883 res!706603) b!1057873))

(assert (= (and b!1057873 res!706600) b!1057878))

(assert (= (and b!1057878 res!706599) b!1057879))

(assert (= (and b!1057879 res!706606) b!1057884))

(assert (= (and b!1057884 res!706601) b!1057877))

(assert (= (and b!1057877 res!706608) b!1057874))

(assert (= (and b!1057874 (not res!706605)) b!1057882))

(assert (= (and b!1057877 (not res!706604)) b!1057880))

(assert (= (and b!1057880 (not res!706607)) b!1057876))

(assert (= (and b!1057876 (not res!706609)) b!1057875))

(assert (= (and b!1057875 res!706602) b!1057881))

(declare-fun m!977669 () Bool)

(assert (=> b!1057877 m!977669))

(declare-fun m!977671 () Bool)

(assert (=> b!1057877 m!977671))

(declare-fun m!977673 () Bool)

(assert (=> b!1057876 m!977673))

(declare-fun m!977675 () Bool)

(assert (=> b!1057882 m!977675))

(declare-fun m!977677 () Bool)

(assert (=> b!1057880 m!977677))

(declare-fun m!977679 () Bool)

(assert (=> b!1057880 m!977679))

(declare-fun m!977681 () Bool)

(assert (=> b!1057880 m!977681))

(declare-fun m!977683 () Bool)

(assert (=> b!1057880 m!977683))

(declare-fun m!977685 () Bool)

(assert (=> b!1057883 m!977685))

(declare-fun m!977687 () Bool)

(assert (=> b!1057873 m!977687))

(declare-fun m!977689 () Bool)

(assert (=> b!1057875 m!977689))

(declare-fun m!977691 () Bool)

(assert (=> b!1057879 m!977691))

(assert (=> b!1057879 m!977669))

(declare-fun m!977693 () Bool)

(assert (=> start!93404 m!977693))

(declare-fun m!977695 () Bool)

(assert (=> b!1057884 m!977695))

(declare-fun m!977697 () Bool)

(assert (=> b!1057881 m!977697))

(declare-fun m!977699 () Bool)

(assert (=> b!1057878 m!977699))

(check-sat (not b!1057884) (not b!1057880) (not b!1057879) (not b!1057873) (not b!1057876) (not b!1057875) (not start!93404) (not b!1057883) (not b!1057882) (not b!1057881))
(check-sat)
(get-model)

(declare-fun d!128473 () Bool)

(declare-fun lt!466657 () (_ BitVec 32))

(assert (=> d!128473 (and (or (bvslt lt!466657 #b00000000000000000000000000000000) (bvsge lt!466657 (size!32606 lt!466636)) (and (bvsge lt!466657 #b00000000000000000000000000000000) (bvslt lt!466657 (size!32606 lt!466636)))) (bvsge lt!466657 #b00000000000000000000000000000000) (bvslt lt!466657 (size!32606 lt!466636)) (= (select (arr!32069 lt!466636) lt!466657) k0!2747))))

(declare-fun e!601809 () (_ BitVec 32))

(assert (=> d!128473 (= lt!466657 e!601809)))

(declare-fun c!107102 () Bool)

(assert (=> d!128473 (= c!107102 (= (select (arr!32069 lt!466636) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128473 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32606 lt!466636)) (bvslt (size!32606 lt!466636) #b01111111111111111111111111111111))))

(assert (=> d!128473 (= (arrayScanForKey!0 lt!466636 k0!2747 #b00000000000000000000000000000000) lt!466657)))

(declare-fun b!1057925 () Bool)

(assert (=> b!1057925 (= e!601809 #b00000000000000000000000000000000)))

(declare-fun b!1057926 () Bool)

(assert (=> b!1057926 (= e!601809 (arrayScanForKey!0 lt!466636 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128473 c!107102) b!1057925))

(assert (= (and d!128473 (not c!107102)) b!1057926))

(declare-fun m!977733 () Bool)

(assert (=> d!128473 m!977733))

(declare-fun m!977735 () Bool)

(assert (=> d!128473 m!977735))

(declare-fun m!977737 () Bool)

(assert (=> b!1057926 m!977737))

(assert (=> b!1057884 d!128473))

(declare-fun d!128475 () Bool)

(declare-fun res!706650 () Bool)

(declare-fun e!601814 () Bool)

(assert (=> d!128475 (=> res!706650 e!601814)))

(assert (=> d!128475 (= res!706650 (= (select (arr!32069 lt!466636) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!128475 (= (arrayContainsKey!0 lt!466636 k0!2747 #b00000000000000000000000000000000) e!601814)))

(declare-fun b!1057931 () Bool)

(declare-fun e!601815 () Bool)

(assert (=> b!1057931 (= e!601814 e!601815)))

(declare-fun res!706651 () Bool)

(assert (=> b!1057931 (=> (not res!706651) (not e!601815))))

(assert (=> b!1057931 (= res!706651 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32606 lt!466636)))))

(declare-fun b!1057932 () Bool)

(assert (=> b!1057932 (= e!601815 (arrayContainsKey!0 lt!466636 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128475 (not res!706650)) b!1057931))

(assert (= (and b!1057931 res!706651) b!1057932))

(assert (=> d!128475 m!977735))

(declare-fun m!977739 () Bool)

(assert (=> b!1057932 m!977739))

(assert (=> b!1057879 d!128475))

(declare-fun d!128477 () Bool)

(assert (=> d!128477 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057873 d!128477))

(declare-fun d!128479 () Bool)

(declare-fun res!706652 () Bool)

(declare-fun e!601816 () Bool)

(assert (=> d!128479 (=> res!706652 e!601816)))

(assert (=> d!128479 (= res!706652 (= (select (arr!32069 a!3488) lt!466637) k0!2747))))

(assert (=> d!128479 (= (arrayContainsKey!0 a!3488 k0!2747 lt!466637) e!601816)))

(declare-fun b!1057933 () Bool)

(declare-fun e!601817 () Bool)

(assert (=> b!1057933 (= e!601816 e!601817)))

(declare-fun res!706653 () Bool)

(assert (=> b!1057933 (=> (not res!706653) (not e!601817))))

(assert (=> b!1057933 (= res!706653 (bvslt (bvadd lt!466637 #b00000000000000000000000000000001) (size!32606 a!3488)))))

(declare-fun b!1057934 () Bool)

(assert (=> b!1057934 (= e!601817 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!466637 #b00000000000000000000000000000001)))))

(assert (= (and d!128479 (not res!706652)) b!1057933))

(assert (= (and b!1057933 res!706653) b!1057934))

(declare-fun m!977741 () Bool)

(assert (=> d!128479 m!977741))

(declare-fun m!977743 () Bool)

(assert (=> b!1057934 m!977743))

(assert (=> b!1057880 d!128479))

(declare-fun d!128481 () Bool)

(assert (=> d!128481 (arrayContainsKey!0 a!3488 k0!2747 lt!466637)))

(declare-fun lt!466660 () Unit!34669)

(declare-fun choose!114 (array!66706 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34669)

(assert (=> d!128481 (= lt!466660 (choose!114 a!3488 k0!2747 i!1381 lt!466637))))

(assert (=> d!128481 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128481 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 i!1381 lt!466637) lt!466660)))

(declare-fun bs!31023 () Bool)

(assert (= bs!31023 d!128481))

(assert (=> bs!31023 m!977677))

(declare-fun m!977745 () Bool)

(assert (=> bs!31023 m!977745))

(assert (=> b!1057880 d!128481))

(declare-fun b!1057963 () Bool)

(declare-fun e!601845 () Bool)

(declare-fun call!44864 () Bool)

(assert (=> b!1057963 (= e!601845 call!44864)))

(declare-fun b!1057964 () Bool)

(declare-fun e!601847 () Bool)

(declare-fun e!601844 () Bool)

(assert (=> b!1057964 (= e!601847 e!601844)))

(declare-fun res!706680 () Bool)

(assert (=> b!1057964 (=> (not res!706680) (not e!601844))))

(declare-fun e!601846 () Bool)

(assert (=> b!1057964 (= res!706680 (not e!601846))))

(declare-fun res!706678 () Bool)

(assert (=> b!1057964 (=> (not res!706678) (not e!601846))))

(assert (=> b!1057964 (= res!706678 (validKeyInArray!0 (select (arr!32069 a!3488) lt!466639)))))

(declare-fun b!1057965 () Bool)

(assert (=> b!1057965 (= e!601844 e!601845)))

(declare-fun c!107105 () Bool)

(assert (=> b!1057965 (= c!107105 (validKeyInArray!0 (select (arr!32069 a!3488) lt!466639)))))

(declare-fun b!1057966 () Bool)

(assert (=> b!1057966 (= e!601845 call!44864)))

(declare-fun bm!44861 () Bool)

(assert (=> bm!44861 (= call!44864 (arrayNoDuplicates!0 a!3488 (bvadd lt!466639 #b00000000000000000000000000000001) (ite c!107105 (Cons!22508 (select (arr!32069 a!3488) lt!466639) Nil!22509) Nil!22509)))))

(declare-fun b!1057967 () Bool)

(assert (=> b!1057967 (= e!601846 (contains!6218 Nil!22509 (select (arr!32069 a!3488) lt!466639)))))

(declare-fun d!128483 () Bool)

(declare-fun res!706679 () Bool)

(assert (=> d!128483 (=> res!706679 e!601847)))

(assert (=> d!128483 (= res!706679 (bvsge lt!466639 (size!32606 a!3488)))))

(assert (=> d!128483 (= (arrayNoDuplicates!0 a!3488 lt!466639 Nil!22509) e!601847)))

(assert (= (and d!128483 (not res!706679)) b!1057964))

(assert (= (and b!1057964 res!706678) b!1057967))

(assert (= (and b!1057964 res!706680) b!1057965))

(assert (= (and b!1057965 c!107105) b!1057963))

(assert (= (and b!1057965 (not c!107105)) b!1057966))

(assert (= (or b!1057963 b!1057966) bm!44861))

(declare-fun m!977761 () Bool)

(assert (=> b!1057964 m!977761))

(assert (=> b!1057964 m!977761))

(declare-fun m!977763 () Bool)

(assert (=> b!1057964 m!977763))

(assert (=> b!1057965 m!977761))

(assert (=> b!1057965 m!977761))

(assert (=> b!1057965 m!977763))

(assert (=> bm!44861 m!977761))

(declare-fun m!977765 () Bool)

(assert (=> bm!44861 m!977765))

(assert (=> b!1057967 m!977761))

(assert (=> b!1057967 m!977761))

(declare-fun m!977767 () Bool)

(assert (=> b!1057967 m!977767))

(assert (=> b!1057880 d!128483))

(declare-fun d!128497 () Bool)

(assert (=> d!128497 (arrayNoDuplicates!0 a!3488 lt!466639 Nil!22509)))

(declare-fun lt!466670 () Unit!34669)

(declare-fun choose!39 (array!66706 (_ BitVec 32) (_ BitVec 32)) Unit!34669)

(assert (=> d!128497 (= lt!466670 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466639))))

(assert (=> d!128497 (bvslt (size!32606 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128497 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466639) lt!466670)))

(declare-fun bs!31025 () Bool)

(assert (= bs!31025 d!128497))

(assert (=> bs!31025 m!977681))

(declare-fun m!977775 () Bool)

(assert (=> bs!31025 m!977775))

(assert (=> b!1057880 d!128497))

(declare-fun d!128503 () Bool)

(declare-fun lt!466673 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!537 (List!22512) (InoxSet (_ BitVec 64)))

(assert (=> d!128503 (= lt!466673 (select (content!537 Nil!22509) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!601868 () Bool)

(assert (=> d!128503 (= lt!466673 e!601868)))

(declare-fun res!706699 () Bool)

(assert (=> d!128503 (=> (not res!706699) (not e!601868))))

(get-info :version)

(assert (=> d!128503 (= res!706699 ((_ is Cons!22508) Nil!22509))))

(assert (=> d!128503 (= (contains!6218 Nil!22509 #b0000000000000000000000000000000000000000000000000000000000000000) lt!466673)))

(declare-fun b!1057990 () Bool)

(declare-fun e!601869 () Bool)

(assert (=> b!1057990 (= e!601868 e!601869)))

(declare-fun res!706700 () Bool)

(assert (=> b!1057990 (=> res!706700 e!601869)))

(assert (=> b!1057990 (= res!706700 (= (h!23717 Nil!22509) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1057991 () Bool)

(assert (=> b!1057991 (= e!601869 (contains!6218 (t!31826 Nil!22509) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128503 res!706699) b!1057990))

(assert (= (and b!1057990 (not res!706700)) b!1057991))

(declare-fun m!977781 () Bool)

(assert (=> d!128503 m!977781))

(declare-fun m!977783 () Bool)

(assert (=> d!128503 m!977783))

(declare-fun m!977785 () Bool)

(assert (=> b!1057991 m!977785))

(assert (=> b!1057875 d!128503))

(declare-fun d!128509 () Bool)

(declare-fun res!706708 () Bool)

(declare-fun e!601880 () Bool)

(assert (=> d!128509 (=> res!706708 e!601880)))

(assert (=> d!128509 (= res!706708 ((_ is Nil!22509) Nil!22509))))

(assert (=> d!128509 (= (noDuplicate!1579 Nil!22509) e!601880)))

(declare-fun b!1058005 () Bool)

(declare-fun e!601881 () Bool)

(assert (=> b!1058005 (= e!601880 e!601881)))

(declare-fun res!706709 () Bool)

(assert (=> b!1058005 (=> (not res!706709) (not e!601881))))

(assert (=> b!1058005 (= res!706709 (not (contains!6218 (t!31826 Nil!22509) (h!23717 Nil!22509))))))

(declare-fun b!1058006 () Bool)

(assert (=> b!1058006 (= e!601881 (noDuplicate!1579 (t!31826 Nil!22509)))))

(assert (= (and d!128509 (not res!706708)) b!1058005))

(assert (= (and b!1058005 res!706709) b!1058006))

(declare-fun m!977795 () Bool)

(assert (=> b!1058005 m!977795))

(declare-fun m!977797 () Bool)

(assert (=> b!1058006 m!977797))

(assert (=> b!1057876 d!128509))

(declare-fun d!128513 () Bool)

(declare-fun lt!466676 () Bool)

(assert (=> d!128513 (= lt!466676 (select (content!537 Nil!22509) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!601882 () Bool)

(assert (=> d!128513 (= lt!466676 e!601882)))

(declare-fun res!706710 () Bool)

(assert (=> d!128513 (=> (not res!706710) (not e!601882))))

(assert (=> d!128513 (= res!706710 ((_ is Cons!22508) Nil!22509))))

(assert (=> d!128513 (= (contains!6218 Nil!22509 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466676)))

(declare-fun b!1058007 () Bool)

(declare-fun e!601883 () Bool)

(assert (=> b!1058007 (= e!601882 e!601883)))

(declare-fun res!706711 () Bool)

(assert (=> b!1058007 (=> res!706711 e!601883)))

(assert (=> b!1058007 (= res!706711 (= (h!23717 Nil!22509) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058008 () Bool)

(assert (=> b!1058008 (= e!601883 (contains!6218 (t!31826 Nil!22509) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128513 res!706710) b!1058007))

(assert (= (and b!1058007 (not res!706711)) b!1058008))

(assert (=> d!128513 m!977781))

(declare-fun m!977799 () Bool)

(assert (=> d!128513 m!977799))

(declare-fun m!977801 () Bool)

(assert (=> b!1058008 m!977801))

(assert (=> b!1057881 d!128513))

(declare-fun b!1058009 () Bool)

(declare-fun e!601885 () Bool)

(declare-fun call!44868 () Bool)

(assert (=> b!1058009 (= e!601885 call!44868)))

(declare-fun b!1058010 () Bool)

(declare-fun e!601887 () Bool)

(declare-fun e!601884 () Bool)

(assert (=> b!1058010 (= e!601887 e!601884)))

(declare-fun res!706714 () Bool)

(assert (=> b!1058010 (=> (not res!706714) (not e!601884))))

(declare-fun e!601886 () Bool)

(assert (=> b!1058010 (= res!706714 (not e!601886))))

(declare-fun res!706712 () Bool)

(assert (=> b!1058010 (=> (not res!706712) (not e!601886))))

(assert (=> b!1058010 (= res!706712 (validKeyInArray!0 (select (arr!32069 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1058011 () Bool)

(assert (=> b!1058011 (= e!601884 e!601885)))

(declare-fun c!107111 () Bool)

(assert (=> b!1058011 (= c!107111 (validKeyInArray!0 (select (arr!32069 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1058012 () Bool)

(assert (=> b!1058012 (= e!601885 call!44868)))

(declare-fun bm!44865 () Bool)

(assert (=> bm!44865 (= call!44868 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107111 (Cons!22508 (select (arr!32069 a!3488) #b00000000000000000000000000000000) Nil!22509) Nil!22509)))))

(declare-fun b!1058013 () Bool)

(assert (=> b!1058013 (= e!601886 (contains!6218 Nil!22509 (select (arr!32069 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128515 () Bool)

(declare-fun res!706713 () Bool)

(assert (=> d!128515 (=> res!706713 e!601887)))

(assert (=> d!128515 (= res!706713 (bvsge #b00000000000000000000000000000000 (size!32606 a!3488)))))

(assert (=> d!128515 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22509) e!601887)))

(assert (= (and d!128515 (not res!706713)) b!1058010))

(assert (= (and b!1058010 res!706712) b!1058013))

(assert (= (and b!1058010 res!706714) b!1058011))

(assert (= (and b!1058011 c!107111) b!1058009))

(assert (= (and b!1058011 (not c!107111)) b!1058012))

(assert (= (or b!1058009 b!1058012) bm!44865))

(declare-fun m!977803 () Bool)

(assert (=> b!1058010 m!977803))

(assert (=> b!1058010 m!977803))

(declare-fun m!977805 () Bool)

(assert (=> b!1058010 m!977805))

(assert (=> b!1058011 m!977803))

(assert (=> b!1058011 m!977803))

(assert (=> b!1058011 m!977805))

(assert (=> bm!44865 m!977803))

(declare-fun m!977807 () Bool)

(assert (=> bm!44865 m!977807))

(assert (=> b!1058013 m!977803))

(assert (=> b!1058013 m!977803))

(declare-fun m!977811 () Bool)

(assert (=> b!1058013 m!977811))

(assert (=> b!1057883 d!128515))

(declare-fun d!128519 () Bool)

(assert (=> d!128519 (= (array_inv!24691 a!3488) (bvsge (size!32606 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93404 d!128519))

(declare-fun d!128527 () Bool)

(declare-fun res!706719 () Bool)

(declare-fun e!601893 () Bool)

(assert (=> d!128527 (=> res!706719 e!601893)))

(assert (=> d!128527 (= res!706719 (= (select (arr!32069 a!3488) i!1381) k0!2747))))

(assert (=> d!128527 (= (arrayContainsKey!0 a!3488 k0!2747 i!1381) e!601893)))

(declare-fun b!1058020 () Bool)

(declare-fun e!601894 () Bool)

(assert (=> b!1058020 (= e!601893 e!601894)))

(declare-fun res!706720 () Bool)

(assert (=> b!1058020 (=> (not res!706720) (not e!601894))))

(assert (=> b!1058020 (= res!706720 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32606 a!3488)))))

(declare-fun b!1058021 () Bool)

(assert (=> b!1058021 (= e!601894 (arrayContainsKey!0 a!3488 k0!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128527 (not res!706719)) b!1058020))

(assert (= (and b!1058020 res!706720) b!1058021))

(assert (=> d!128527 m!977699))

(declare-fun m!977823 () Bool)

(assert (=> b!1058021 m!977823))

(assert (=> b!1057882 d!128527))

(check-sat (not b!1057926) (not b!1057967) (not b!1058005) (not d!128497) (not b!1058010) (not b!1058011) (not b!1057932) (not b!1058008) (not d!128481) (not d!128503) (not d!128513) (not b!1057934) (not bm!44861) (not b!1057964) (not b!1058006) (not b!1058021) (not b!1057991) (not bm!44865) (not b!1057965) (not b!1058013))
(check-sat)
