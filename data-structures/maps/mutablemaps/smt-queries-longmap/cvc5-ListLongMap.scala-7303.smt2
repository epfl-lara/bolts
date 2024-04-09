; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93402 () Bool)

(assert start!93402)

(declare-fun b!1057837 () Bool)

(declare-fun res!706564 () Bool)

(declare-fun e!601744 () Bool)

(assert (=> b!1057837 (=> (not res!706564) (not e!601744))))

(declare-datatypes ((array!66704 0))(
  ( (array!66705 (arr!32068 (Array (_ BitVec 32) (_ BitVec 64))) (size!32605 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66704)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1057837 (= res!706564 (= (select (arr!32068 a!3488) i!1381) k!2747))))

(declare-fun b!1057838 () Bool)

(declare-fun e!601746 () Bool)

(declare-fun arrayContainsKey!0 (array!66704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057838 (= e!601746 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057839 () Bool)

(declare-fun e!601751 () Bool)

(declare-fun e!601752 () Bool)

(assert (=> b!1057839 (= e!601751 e!601752)))

(declare-fun res!706567 () Bool)

(assert (=> b!1057839 (=> res!706567 e!601752)))

(declare-fun lt!466623 () (_ BitVec 32))

(declare-fun lt!466622 () (_ BitVec 32))

(assert (=> b!1057839 (= res!706567 (or (bvslt lt!466622 #b00000000000000000000000000000000) (bvsge lt!466623 (size!32605 a!3488)) (bvsge lt!466622 (size!32605 a!3488))))))

(assert (=> b!1057839 (arrayContainsKey!0 a!3488 k!2747 lt!466623)))

(declare-datatypes ((Unit!34667 0))(
  ( (Unit!34668) )
))
(declare-fun lt!466620 () Unit!34667)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34667)

(assert (=> b!1057839 (= lt!466620 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466623))))

(assert (=> b!1057839 (= lt!466623 (bvadd #b00000000000000000000000000000001 lt!466622))))

(declare-datatypes ((List!22511 0))(
  ( (Nil!22508) (Cons!22507 (h!23716 (_ BitVec 64)) (t!31825 List!22511)) )
))
(declare-fun arrayNoDuplicates!0 (array!66704 (_ BitVec 32) List!22511) Bool)

(assert (=> b!1057839 (arrayNoDuplicates!0 a!3488 lt!466622 Nil!22508)))

(declare-fun lt!466624 () Unit!34667)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66704 (_ BitVec 32) (_ BitVec 32)) Unit!34667)

(assert (=> b!1057839 (= lt!466624 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466622))))

(declare-fun res!706565 () Bool)

(assert (=> start!93402 (=> (not res!706565) (not e!601744))))

(assert (=> start!93402 (= res!706565 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32605 a!3488)) (bvslt (size!32605 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93402 e!601744))

(assert (=> start!93402 true))

(declare-fun array_inv!24690 (array!66704) Bool)

(assert (=> start!93402 (array_inv!24690 a!3488)))

(declare-fun b!1057840 () Bool)

(declare-fun e!601750 () Bool)

(declare-fun contains!6217 (List!22511 (_ BitVec 64)) Bool)

(assert (=> b!1057840 (= e!601750 (not (contains!6217 Nil!22508 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1057841 () Bool)

(declare-fun res!706563 () Bool)

(assert (=> b!1057841 (=> (not res!706563) (not e!601744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057841 (= res!706563 (validKeyInArray!0 k!2747))))

(declare-fun b!1057842 () Bool)

(declare-fun e!601749 () Bool)

(declare-fun e!601748 () Bool)

(assert (=> b!1057842 (= e!601749 e!601748)))

(declare-fun res!706568 () Bool)

(assert (=> b!1057842 (=> (not res!706568) (not e!601748))))

(assert (=> b!1057842 (= res!706568 (not (= lt!466622 i!1381)))))

(declare-fun lt!466621 () array!66704)

(declare-fun arrayScanForKey!0 (array!66704 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057842 (= lt!466622 (arrayScanForKey!0 lt!466621 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057843 () Bool)

(declare-fun res!706570 () Bool)

(assert (=> b!1057843 (=> (not res!706570) (not e!601744))))

(assert (=> b!1057843 (= res!706570 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22508))))

(declare-fun b!1057844 () Bool)

(assert (=> b!1057844 (= e!601748 (not e!601751))))

(declare-fun res!706566 () Bool)

(assert (=> b!1057844 (=> res!706566 e!601751)))

(assert (=> b!1057844 (= res!706566 (or (bvsgt lt!466622 i!1381) (bvsle i!1381 lt!466622)))))

(declare-fun e!601745 () Bool)

(assert (=> b!1057844 e!601745))

(declare-fun res!706573 () Bool)

(assert (=> b!1057844 (=> (not res!706573) (not e!601745))))

(assert (=> b!1057844 (= res!706573 (= (select (store (arr!32068 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466622) k!2747))))

(declare-fun b!1057845 () Bool)

(assert (=> b!1057845 (= e!601745 e!601746)))

(declare-fun res!706569 () Bool)

(assert (=> b!1057845 (=> res!706569 e!601746)))

(assert (=> b!1057845 (= res!706569 (or (bvsgt lt!466622 i!1381) (bvsle i!1381 lt!466622)))))

(declare-fun b!1057846 () Bool)

(assert (=> b!1057846 (= e!601752 e!601750)))

(declare-fun res!706562 () Bool)

(assert (=> b!1057846 (=> (not res!706562) (not e!601750))))

(assert (=> b!1057846 (= res!706562 (not (contains!6217 Nil!22508 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1057847 () Bool)

(declare-fun res!706572 () Bool)

(assert (=> b!1057847 (=> res!706572 e!601752)))

(declare-fun noDuplicate!1578 (List!22511) Bool)

(assert (=> b!1057847 (= res!706572 (not (noDuplicate!1578 Nil!22508)))))

(declare-fun b!1057848 () Bool)

(assert (=> b!1057848 (= e!601744 e!601749)))

(declare-fun res!706571 () Bool)

(assert (=> b!1057848 (=> (not res!706571) (not e!601749))))

(assert (=> b!1057848 (= res!706571 (arrayContainsKey!0 lt!466621 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057848 (= lt!466621 (array!66705 (store (arr!32068 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32605 a!3488)))))

(assert (= (and start!93402 res!706565) b!1057843))

(assert (= (and b!1057843 res!706570) b!1057841))

(assert (= (and b!1057841 res!706563) b!1057837))

(assert (= (and b!1057837 res!706564) b!1057848))

(assert (= (and b!1057848 res!706571) b!1057842))

(assert (= (and b!1057842 res!706568) b!1057844))

(assert (= (and b!1057844 res!706573) b!1057845))

(assert (= (and b!1057845 (not res!706569)) b!1057838))

(assert (= (and b!1057844 (not res!706566)) b!1057839))

(assert (= (and b!1057839 (not res!706567)) b!1057847))

(assert (= (and b!1057847 (not res!706572)) b!1057846))

(assert (= (and b!1057846 res!706562) b!1057840))

(declare-fun m!977637 () Bool)

(assert (=> b!1057841 m!977637))

(declare-fun m!977639 () Bool)

(assert (=> b!1057837 m!977639))

(declare-fun m!977641 () Bool)

(assert (=> b!1057838 m!977641))

(declare-fun m!977643 () Bool)

(assert (=> b!1057848 m!977643))

(declare-fun m!977645 () Bool)

(assert (=> b!1057848 m!977645))

(declare-fun m!977647 () Bool)

(assert (=> b!1057842 m!977647))

(declare-fun m!977649 () Bool)

(assert (=> b!1057846 m!977649))

(declare-fun m!977651 () Bool)

(assert (=> b!1057843 m!977651))

(declare-fun m!977653 () Bool)

(assert (=> b!1057840 m!977653))

(declare-fun m!977655 () Bool)

(assert (=> start!93402 m!977655))

(declare-fun m!977657 () Bool)

(assert (=> b!1057847 m!977657))

(assert (=> b!1057844 m!977645))

(declare-fun m!977659 () Bool)

(assert (=> b!1057844 m!977659))

(declare-fun m!977661 () Bool)

(assert (=> b!1057839 m!977661))

(declare-fun m!977663 () Bool)

(assert (=> b!1057839 m!977663))

(declare-fun m!977665 () Bool)

(assert (=> b!1057839 m!977665))

(declare-fun m!977667 () Bool)

(assert (=> b!1057839 m!977667))

(push 1)

(assert (not b!1057842))

(assert (not b!1057846))

(assert (not b!1057839))

(assert (not start!93402))

(assert (not b!1057838))

(assert (not b!1057840))

(assert (not b!1057847))

(assert (not b!1057843))

(assert (not b!1057841))

(assert (not b!1057848))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128487 () Bool)

(declare-fun res!706672 () Bool)

(declare-fun e!601838 () Bool)

(assert (=> d!128487 (=> res!706672 e!601838)))

(assert (=> d!128487 (= res!706672 (= (select (arr!32068 a!3488) lt!466623) k!2747))))

(assert (=> d!128487 (= (arrayContainsKey!0 a!3488 k!2747 lt!466623) e!601838)))

(declare-fun b!1057957 () Bool)

(declare-fun e!601839 () Bool)

(assert (=> b!1057957 (= e!601838 e!601839)))

(declare-fun res!706673 () Bool)

(assert (=> b!1057957 (=> (not res!706673) (not e!601839))))

(assert (=> b!1057957 (= res!706673 (bvslt (bvadd lt!466623 #b00000000000000000000000000000001) (size!32605 a!3488)))))

(declare-fun b!1057958 () Bool)

(assert (=> b!1057958 (= e!601839 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!466623 #b00000000000000000000000000000001)))))

(assert (= (and d!128487 (not res!706672)) b!1057957))

(assert (= (and b!1057957 res!706673) b!1057958))

(declare-fun m!977753 () Bool)

(assert (=> d!128487 m!977753))

(declare-fun m!977755 () Bool)

(assert (=> b!1057958 m!977755))

(assert (=> b!1057839 d!128487))

(declare-fun d!128491 () Bool)

(assert (=> d!128491 (arrayContainsKey!0 a!3488 k!2747 lt!466623)))

(declare-fun lt!466667 () Unit!34667)

(declare-fun choose!114 (array!66704 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34667)

(assert (=> d!128491 (= lt!466667 (choose!114 a!3488 k!2747 i!1381 lt!466623))))

(assert (=> d!128491 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128491 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466623) lt!466667)))

(declare-fun bs!31024 () Bool)

(assert (= bs!31024 d!128491))

(assert (=> bs!31024 m!977661))

(declare-fun m!977773 () Bool)

(assert (=> bs!31024 m!977773))

(assert (=> b!1057839 d!128491))

(declare-fun b!1057992 () Bool)

(declare-fun e!601872 () Bool)

(assert (=> b!1057992 (= e!601872 (contains!6217 Nil!22508 (select (arr!32068 a!3488) lt!466622)))))

(declare-fun b!1057993 () Bool)

(declare-fun e!601871 () Bool)

(declare-fun call!44867 () Bool)

(assert (=> b!1057993 (= e!601871 call!44867)))

(declare-fun d!128501 () Bool)

(declare-fun res!706701 () Bool)

(declare-fun e!601870 () Bool)

(assert (=> d!128501 (=> res!706701 e!601870)))

(assert (=> d!128501 (= res!706701 (bvsge lt!466622 (size!32605 a!3488)))))

(assert (=> d!128501 (= (arrayNoDuplicates!0 a!3488 lt!466622 Nil!22508) e!601870)))

(declare-fun b!1057994 () Bool)

(assert (=> b!1057994 (= e!601871 call!44867)))

(declare-fun c!107108 () Bool)

(declare-fun bm!44864 () Bool)

(assert (=> bm!44864 (= call!44867 (arrayNoDuplicates!0 a!3488 (bvadd lt!466622 #b00000000000000000000000000000001) (ite c!107108 (Cons!22507 (select (arr!32068 a!3488) lt!466622) Nil!22508) Nil!22508)))))

(declare-fun b!1057995 () Bool)

(declare-fun e!601873 () Bool)

(assert (=> b!1057995 (= e!601870 e!601873)))

(declare-fun res!706703 () Bool)

(assert (=> b!1057995 (=> (not res!706703) (not e!601873))))

(assert (=> b!1057995 (= res!706703 (not e!601872))))

(declare-fun res!706702 () Bool)

(assert (=> b!1057995 (=> (not res!706702) (not e!601872))))

(assert (=> b!1057995 (= res!706702 (validKeyInArray!0 (select (arr!32068 a!3488) lt!466622)))))

(declare-fun b!1057996 () Bool)

(assert (=> b!1057996 (= e!601873 e!601871)))

(assert (=> b!1057996 (= c!107108 (validKeyInArray!0 (select (arr!32068 a!3488) lt!466622)))))

(assert (= (and d!128501 (not res!706701)) b!1057995))

(assert (= (and b!1057995 res!706702) b!1057992))

(assert (= (and b!1057995 res!706703) b!1057996))

(assert (= (and b!1057996 c!107108) b!1057993))

(assert (= (and b!1057996 (not c!107108)) b!1057994))

(assert (= (or b!1057993 b!1057994) bm!44864))

(declare-fun m!977787 () Bool)

(assert (=> b!1057992 m!977787))

(assert (=> b!1057992 m!977787))

(declare-fun m!977789 () Bool)

(assert (=> b!1057992 m!977789))

(assert (=> bm!44864 m!977787))

(declare-fun m!977791 () Bool)

(assert (=> bm!44864 m!977791))

(assert (=> b!1057995 m!977787))

(assert (=> b!1057995 m!977787))

(declare-fun m!977793 () Bool)

(assert (=> b!1057995 m!977793))

(assert (=> b!1057996 m!977787))

(assert (=> b!1057996 m!977787))

(assert (=> b!1057996 m!977793))

(assert (=> b!1057839 d!128501))

(declare-fun d!128511 () Bool)

(assert (=> d!128511 (arrayNoDuplicates!0 a!3488 lt!466622 Nil!22508)))

(declare-fun lt!466680 () Unit!34667)

(declare-fun choose!39 (array!66704 (_ BitVec 32) (_ BitVec 32)) Unit!34667)

(assert (=> d!128511 (= lt!466680 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466622))))

(assert (=> d!128511 (bvslt (size!32605 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128511 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466622) lt!466680)))

(declare-fun bs!31026 () Bool)

(assert (= bs!31026 d!128511))

(assert (=> bs!31026 m!977665))

(declare-fun m!977809 () Bool)

(assert (=> bs!31026 m!977809))

(assert (=> b!1057839 d!128511))

(declare-fun d!128517 () Bool)

(assert (=> d!128517 (= (array_inv!24690 a!3488) (bvsge (size!32605 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93402 d!128517))

(declare-fun d!128525 () Bool)

(declare-fun lt!466686 () Bool)

(declare-fun content!538 (List!22511) (Set (_ BitVec 64)))

(assert (=> d!128525 (= lt!466686 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!538 Nil!22508)))))

(declare-fun e!601900 () Bool)

(assert (=> d!128525 (= lt!466686 e!601900)))

(declare-fun res!706725 () Bool)

(assert (=> d!128525 (=> (not res!706725) (not e!601900))))

(assert (=> d!128525 (= res!706725 (is-Cons!22507 Nil!22508))))

(assert (=> d!128525 (= (contains!6217 Nil!22508 #b0000000000000000000000000000000000000000000000000000000000000000) lt!466686)))

(declare-fun b!1058026 () Bool)

(declare-fun e!601899 () Bool)

(assert (=> b!1058026 (= e!601900 e!601899)))

(declare-fun res!706726 () Bool)

(assert (=> b!1058026 (=> res!706726 e!601899)))

(assert (=> b!1058026 (= res!706726 (= (h!23716 Nil!22508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058027 () Bool)

(assert (=> b!1058027 (= e!601899 (contains!6217 (t!31825 Nil!22508) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128525 res!706725) b!1058026))

(assert (= (and b!1058026 (not res!706726)) b!1058027))

(declare-fun m!977827 () Bool)

(assert (=> d!128525 m!977827))

(declare-fun m!977829 () Bool)

(assert (=> d!128525 m!977829))

(declare-fun m!977831 () Bool)

(assert (=> b!1058027 m!977831))

(assert (=> b!1057846 d!128525))

(declare-fun d!128533 () Bool)

(assert (=> d!128533 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057841 d!128533))

(declare-fun d!128535 () Bool)

(declare-fun lt!466687 () Bool)

(assert (=> d!128535 (= lt!466687 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!538 Nil!22508)))))

(declare-fun e!601902 () Bool)

(assert (=> d!128535 (= lt!466687 e!601902)))

(declare-fun res!706727 () Bool)

(assert (=> d!128535 (=> (not res!706727) (not e!601902))))

(assert (=> d!128535 (= res!706727 (is-Cons!22507 Nil!22508))))

(assert (=> d!128535 (= (contains!6217 Nil!22508 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466687)))

(declare-fun b!1058028 () Bool)

(declare-fun e!601901 () Bool)

(assert (=> b!1058028 (= e!601902 e!601901)))

(declare-fun res!706728 () Bool)

(assert (=> b!1058028 (=> res!706728 e!601901)))

(assert (=> b!1058028 (= res!706728 (= (h!23716 Nil!22508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1058029 () Bool)

(assert (=> b!1058029 (= e!601901 (contains!6217 (t!31825 Nil!22508) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128535 res!706727) b!1058028))

(assert (= (and b!1058028 (not res!706728)) b!1058029))

(assert (=> d!128535 m!977827))

(declare-fun m!977833 () Bool)

(assert (=> d!128535 m!977833))

(declare-fun m!977835 () Bool)

(assert (=> b!1058029 m!977835))

(assert (=> b!1057840 d!128535))

(declare-fun d!128537 () Bool)

(declare-fun lt!466690 () (_ BitVec 32))

(assert (=> d!128537 (and (or (bvslt lt!466690 #b00000000000000000000000000000000) (bvsge lt!466690 (size!32605 lt!466621)) (and (bvsge lt!466690 #b00000000000000000000000000000000) (bvslt lt!466690 (size!32605 lt!466621)))) (bvsge lt!466690 #b00000000000000000000000000000000) (bvslt lt!466690 (size!32605 lt!466621)) (= (select (arr!32068 lt!466621) lt!466690) k!2747))))

(declare-fun e!601917 () (_ BitVec 32))

(assert (=> d!128537 (= lt!466690 e!601917)))

(declare-fun c!107118 () Bool)

(assert (=> d!128537 (= c!107118 (= (select (arr!32068 lt!466621) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128537 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32605 lt!466621)) (bvslt (size!32605 lt!466621) #b01111111111111111111111111111111))))

(assert (=> d!128537 (= (arrayScanForKey!0 lt!466621 k!2747 #b00000000000000000000000000000000) lt!466690)))

(declare-fun b!1058049 () Bool)

(assert (=> b!1058049 (= e!601917 #b00000000000000000000000000000000)))

(declare-fun b!1058050 () Bool)

(assert (=> b!1058050 (= e!601917 (arrayScanForKey!0 lt!466621 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128537 c!107118) b!1058049))

(assert (= (and d!128537 (not c!107118)) b!1058050))

(declare-fun m!977843 () Bool)

(assert (=> d!128537 m!977843))

(declare-fun m!977845 () Bool)

(assert (=> d!128537 m!977845))

(declare-fun m!977847 () Bool)

(assert (=> b!1058050 m!977847))

(assert (=> b!1057842 d!128537))

(declare-fun d!128539 () Bool)

(declare-fun res!706742 () Bool)

(declare-fun e!601922 () Bool)

(assert (=> d!128539 (=> res!706742 e!601922)))

(assert (=> d!128539 (= res!706742 (is-Nil!22508 Nil!22508))))

(assert (=> d!128539 (= (noDuplicate!1578 Nil!22508) e!601922)))

(declare-fun b!1058055 () Bool)

(declare-fun e!601923 () Bool)

(assert (=> b!1058055 (= e!601922 e!601923)))

(declare-fun res!706743 () Bool)

(assert (=> b!1058055 (=> (not res!706743) (not e!601923))))

(assert (=> b!1058055 (= res!706743 (not (contains!6217 (t!31825 Nil!22508) (h!23716 Nil!22508))))))

(declare-fun b!1058056 () Bool)

(assert (=> b!1058056 (= e!601923 (noDuplicate!1578 (t!31825 Nil!22508)))))

(assert (= (and d!128539 (not res!706742)) b!1058055))

(assert (= (and b!1058055 res!706743) b!1058056))

(declare-fun m!977851 () Bool)

(assert (=> b!1058055 m!977851))

(declare-fun m!977853 () Bool)

(assert (=> b!1058056 m!977853))

(assert (=> b!1057847 d!128539))

(declare-fun d!128543 () Bool)

(declare-fun res!706744 () Bool)

(declare-fun e!601924 () Bool)

(assert (=> d!128543 (=> res!706744 e!601924)))

(assert (=> d!128543 (= res!706744 (= (select (arr!32068 a!3488) i!1381) k!2747))))

(assert (=> d!128543 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!601924)))

(declare-fun b!1058057 () Bool)

(declare-fun e!601925 () Bool)

(assert (=> b!1058057 (= e!601924 e!601925)))

(declare-fun res!706745 () Bool)

(assert (=> b!1058057 (=> (not res!706745) (not e!601925))))

(assert (=> b!1058057 (= res!706745 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32605 a!3488)))))

(declare-fun b!1058058 () Bool)

(assert (=> b!1058058 (= e!601925 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128543 (not res!706744)) b!1058057))

(assert (= (and b!1058057 res!706745) b!1058058))

(assert (=> d!128543 m!977639))

(declare-fun m!977855 () Bool)

(assert (=> b!1058058 m!977855))

(assert (=> b!1057838 d!128543))

(declare-fun d!128545 () Bool)

(declare-fun res!706746 () Bool)

(declare-fun e!601926 () Bool)

(assert (=> d!128545 (=> res!706746 e!601926)))

(assert (=> d!128545 (= res!706746 (= (select (arr!32068 lt!466621) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128545 (= (arrayContainsKey!0 lt!466621 k!2747 #b00000000000000000000000000000000) e!601926)))

(declare-fun b!1058059 () Bool)

(declare-fun e!601927 () Bool)

(assert (=> b!1058059 (= e!601926 e!601927)))

(declare-fun res!706747 () Bool)

(assert (=> b!1058059 (=> (not res!706747) (not e!601927))))

(assert (=> b!1058059 (= res!706747 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32605 lt!466621)))))

(declare-fun b!1058060 () Bool)

(assert (=> b!1058060 (= e!601927 (arrayContainsKey!0 lt!466621 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128545 (not res!706746)) b!1058059))

(assert (= (and b!1058059 res!706747) b!1058060))

(assert (=> d!128545 m!977845))

(declare-fun m!977857 () Bool)

(assert (=> b!1058060 m!977857))

(assert (=> b!1057848 d!128545))

(declare-fun b!1058061 () Bool)

(declare-fun e!601930 () Bool)

(assert (=> b!1058061 (= e!601930 (contains!6217 Nil!22508 (select (arr!32068 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1058062 () Bool)

(declare-fun e!601929 () Bool)

(declare-fun call!44872 () Bool)

(assert (=> b!1058062 (= e!601929 call!44872)))

(declare-fun d!128547 () Bool)

(declare-fun res!706748 () Bool)

(declare-fun e!601928 () Bool)

(assert (=> d!128547 (=> res!706748 e!601928)))

(assert (=> d!128547 (= res!706748 (bvsge #b00000000000000000000000000000000 (size!32605 a!3488)))))

(assert (=> d!128547 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22508) e!601928)))

(declare-fun b!1058063 () Bool)

(assert (=> b!1058063 (= e!601929 call!44872)))

(declare-fun bm!44869 () Bool)

(declare-fun c!107119 () Bool)

(assert (=> bm!44869 (= call!44872 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107119 (Cons!22507 (select (arr!32068 a!3488) #b00000000000000000000000000000000) Nil!22508) Nil!22508)))))

(declare-fun b!1058064 () Bool)

(declare-fun e!601931 () Bool)

