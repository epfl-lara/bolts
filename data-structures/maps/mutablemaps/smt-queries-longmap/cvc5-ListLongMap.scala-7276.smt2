; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92910 () Bool)

(assert start!92910)

(declare-fun b!1054716 () Bool)

(declare-fun e!599324 () Bool)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66518 0))(
  ( (array!66519 (arr!31987 (Array (_ BitVec 32) (_ BitVec 64))) (size!32524 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66518)

(assert (=> b!1054716 (= e!599324 (bvslt (bvadd #b00000000000000000000000000000001 i!1381) (size!32524 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66518 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1054716 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34541 0))(
  ( (Unit!34542) )
))
(declare-fun lt!465526 () Unit!34541)

(declare-fun lt!465527 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34541)

(assert (=> b!1054716 (= lt!465526 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465527 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22430 0))(
  ( (Nil!22427) (Cons!22426 (h!23635 (_ BitVec 64)) (t!31744 List!22430)) )
))
(declare-fun arrayNoDuplicates!0 (array!66518 (_ BitVec 32) List!22430) Bool)

(assert (=> b!1054716 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22427)))

(declare-fun lt!465528 () Unit!34541)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66518 (_ BitVec 32) (_ BitVec 32)) Unit!34541)

(assert (=> b!1054716 (= lt!465528 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun res!703766 () Bool)

(declare-fun e!599322 () Bool)

(assert (=> start!92910 (=> (not res!703766) (not e!599322))))

(assert (=> start!92910 (= res!703766 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32524 a!3488)) (bvslt (size!32524 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92910 e!599322))

(assert (=> start!92910 true))

(declare-fun array_inv!24609 (array!66518) Bool)

(assert (=> start!92910 (array_inv!24609 a!3488)))

(declare-fun b!1054717 () Bool)

(declare-fun e!599320 () Bool)

(assert (=> b!1054717 (= e!599320 (arrayContainsKey!0 a!3488 k!2747 lt!465527))))

(declare-fun b!1054718 () Bool)

(declare-fun e!599323 () Bool)

(assert (=> b!1054718 (= e!599322 e!599323)))

(declare-fun res!703771 () Bool)

(assert (=> b!1054718 (=> (not res!703771) (not e!599323))))

(declare-fun lt!465529 () array!66518)

(assert (=> b!1054718 (= res!703771 (arrayContainsKey!0 lt!465529 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1054718 (= lt!465529 (array!66519 (store (arr!31987 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32524 a!3488)))))

(declare-fun b!1054719 () Bool)

(declare-fun res!703765 () Bool)

(assert (=> b!1054719 (=> (not res!703765) (not e!599322))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1054719 (= res!703765 (validKeyInArray!0 k!2747))))

(declare-fun b!1054720 () Bool)

(declare-fun e!599321 () Bool)

(assert (=> b!1054720 (= e!599321 (not e!599324))))

(declare-fun res!703768 () Bool)

(assert (=> b!1054720 (=> res!703768 e!599324)))

(assert (=> b!1054720 (= res!703768 (bvsle lt!465527 i!1381))))

(declare-fun e!599318 () Bool)

(assert (=> b!1054720 e!599318))

(declare-fun res!703773 () Bool)

(assert (=> b!1054720 (=> (not res!703773) (not e!599318))))

(assert (=> b!1054720 (= res!703773 (= (select (store (arr!31987 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465527) k!2747))))

(declare-fun b!1054721 () Bool)

(declare-fun res!703769 () Bool)

(assert (=> b!1054721 (=> (not res!703769) (not e!599322))))

(assert (=> b!1054721 (= res!703769 (= (select (arr!31987 a!3488) i!1381) k!2747))))

(declare-fun b!1054722 () Bool)

(declare-fun res!703770 () Bool)

(assert (=> b!1054722 (=> (not res!703770) (not e!599322))))

(assert (=> b!1054722 (= res!703770 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22427))))

(declare-fun b!1054723 () Bool)

(assert (=> b!1054723 (= e!599318 e!599320)))

(declare-fun res!703772 () Bool)

(assert (=> b!1054723 (=> res!703772 e!599320)))

(assert (=> b!1054723 (= res!703772 (bvsle lt!465527 i!1381))))

(declare-fun b!1054724 () Bool)

(assert (=> b!1054724 (= e!599323 e!599321)))

(declare-fun res!703767 () Bool)

(assert (=> b!1054724 (=> (not res!703767) (not e!599321))))

(assert (=> b!1054724 (= res!703767 (not (= lt!465527 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66518 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1054724 (= lt!465527 (arrayScanForKey!0 lt!465529 k!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92910 res!703766) b!1054722))

(assert (= (and b!1054722 res!703770) b!1054719))

(assert (= (and b!1054719 res!703765) b!1054721))

(assert (= (and b!1054721 res!703769) b!1054718))

(assert (= (and b!1054718 res!703771) b!1054724))

(assert (= (and b!1054724 res!703767) b!1054720))

(assert (= (and b!1054720 res!703773) b!1054723))

(assert (= (and b!1054723 (not res!703772)) b!1054717))

(assert (= (and b!1054720 (not res!703768)) b!1054716))

(declare-fun m!974901 () Bool)

(assert (=> b!1054720 m!974901))

(declare-fun m!974903 () Bool)

(assert (=> b!1054720 m!974903))

(declare-fun m!974905 () Bool)

(assert (=> b!1054718 m!974905))

(assert (=> b!1054718 m!974901))

(declare-fun m!974907 () Bool)

(assert (=> b!1054721 m!974907))

(declare-fun m!974909 () Bool)

(assert (=> b!1054716 m!974909))

(declare-fun m!974911 () Bool)

(assert (=> b!1054716 m!974911))

(declare-fun m!974913 () Bool)

(assert (=> b!1054716 m!974913))

(declare-fun m!974915 () Bool)

(assert (=> b!1054716 m!974915))

(declare-fun m!974917 () Bool)

(assert (=> start!92910 m!974917))

(declare-fun m!974919 () Bool)

(assert (=> b!1054717 m!974919))

(declare-fun m!974921 () Bool)

(assert (=> b!1054724 m!974921))

(declare-fun m!974923 () Bool)

(assert (=> b!1054719 m!974923))

(declare-fun m!974925 () Bool)

(assert (=> b!1054722 m!974925))

(push 1)

(assert (not b!1054724))

(assert (not b!1054716))

(assert (not start!92910))

(assert (not b!1054717))

(assert (not b!1054719))

(assert (not b!1054722))

(assert (not b!1054718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127981 () Bool)

(declare-fun res!703840 () Bool)

(declare-fun e!599382 () Bool)

(assert (=> d!127981 (=> res!703840 e!599382)))

(assert (=> d!127981 (= res!703840 (= (select (arr!31987 a!3488) (bvadd #b00000000000000000000000000000001 i!1381)) k!2747))))

(assert (=> d!127981 (= (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381)) e!599382)))

(declare-fun b!1054797 () Bool)

(declare-fun e!599383 () Bool)

(assert (=> b!1054797 (= e!599382 e!599383)))

(declare-fun res!703841 () Bool)

(assert (=> b!1054797 (=> (not res!703841) (not e!599383))))

(assert (=> b!1054797 (= res!703841 (bvslt (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001) (size!32524 a!3488)))))

(declare-fun b!1054798 () Bool)

(assert (=> b!1054798 (= e!599383 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!127981 (not res!703840)) b!1054797))

(assert (= (and b!1054797 res!703841) b!1054798))

(declare-fun m!974995 () Bool)

(assert (=> d!127981 m!974995))

(declare-fun m!974997 () Bool)

(assert (=> b!1054798 m!974997))

(assert (=> b!1054716 d!127981))

(declare-fun d!127985 () Bool)

(assert (=> d!127985 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!465562 () Unit!34541)

(declare-fun choose!114 (array!66518 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34541)

(assert (=> d!127985 (= lt!465562 (choose!114 a!3488 k!2747 lt!465527 (bvadd #b00000000000000000000000000000001 i!1381)))))

(assert (=> d!127985 (bvsge lt!465527 #b00000000000000000000000000000000)))

(assert (=> d!127985 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465527 (bvadd #b00000000000000000000000000000001 i!1381)) lt!465562)))

(declare-fun bs!30910 () Bool)

(assert (= bs!30910 d!127985))

(assert (=> bs!30910 m!974909))

(declare-fun m!974999 () Bool)

(assert (=> bs!30910 m!974999))

(assert (=> b!1054716 d!127985))

(declare-fun b!1054832 () Bool)

(declare-fun e!599413 () Bool)

(declare-fun e!599415 () Bool)

(assert (=> b!1054832 (= e!599413 e!599415)))

(declare-fun c!106946 () Bool)

(assert (=> b!1054832 (= c!106946 (validKeyInArray!0 (select (arr!31987 a!3488) i!1381)))))

(declare-fun b!1054833 () Bool)

(declare-fun e!599414 () Bool)

(assert (=> b!1054833 (= e!599414 e!599413)))

(declare-fun res!703868 () Bool)

(assert (=> b!1054833 (=> (not res!703868) (not e!599413))))

(declare-fun e!599412 () Bool)

(assert (=> b!1054833 (= res!703868 (not e!599412))))

(declare-fun res!703865 () Bool)

(assert (=> b!1054833 (=> (not res!703865) (not e!599412))))

(assert (=> b!1054833 (= res!703865 (validKeyInArray!0 (select (arr!31987 a!3488) i!1381)))))

(declare-fun b!1054834 () Bool)

(declare-fun contains!6193 (List!22430 (_ BitVec 64)) Bool)

(assert (=> b!1054834 (= e!599412 (contains!6193 Nil!22427 (select (arr!31987 a!3488) i!1381)))))

(declare-fun d!127991 () Bool)

(declare-fun res!703866 () Bool)

(assert (=> d!127991 (=> res!703866 e!599414)))

(assert (=> d!127991 (= res!703866 (bvsge i!1381 (size!32524 a!3488)))))

(assert (=> d!127991 (= (arrayNoDuplicates!0 a!3488 i!1381 Nil!22427) e!599414)))

(declare-fun b!1054835 () Bool)

(declare-fun call!44777 () Bool)

(assert (=> b!1054835 (= e!599415 call!44777)))

(declare-fun b!1054836 () Bool)

(assert (=> b!1054836 (= e!599415 call!44777)))

(declare-fun bm!44774 () Bool)

(assert (=> bm!44774 (= call!44777 (arrayNoDuplicates!0 a!3488 (bvadd i!1381 #b00000000000000000000000000000001) (ite c!106946 (Cons!22426 (select (arr!31987 a!3488) i!1381) Nil!22427) Nil!22427)))))

(assert (= (and d!127991 (not res!703866)) b!1054833))

(assert (= (and b!1054833 res!703865) b!1054834))

(assert (= (and b!1054833 res!703868) b!1054832))

(assert (= (and b!1054832 c!106946) b!1054836))

(assert (= (and b!1054832 (not c!106946)) b!1054835))

(assert (= (or b!1054836 b!1054835) bm!44774))

(assert (=> b!1054832 m!974907))

(assert (=> b!1054832 m!974907))

(declare-fun m!975021 () Bool)

(assert (=> b!1054832 m!975021))

(assert (=> b!1054833 m!974907))

(assert (=> b!1054833 m!974907))

(assert (=> b!1054833 m!975021))

(assert (=> b!1054834 m!974907))

(assert (=> b!1054834 m!974907))

(declare-fun m!975027 () Bool)

(assert (=> b!1054834 m!975027))

(assert (=> bm!44774 m!974907))

(declare-fun m!975031 () Bool)

(assert (=> bm!44774 m!975031))

(assert (=> b!1054716 d!127991))

(declare-fun d!128005 () Bool)

(assert (=> d!128005 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22427)))

(declare-fun lt!465571 () Unit!34541)

(declare-fun choose!39 (array!66518 (_ BitVec 32) (_ BitVec 32)) Unit!34541)

(assert (=> d!128005 (= lt!465571 (choose!39 a!3488 #b00000000000000000000000000000000 i!1381))))

(assert (=> d!128005 (bvslt (size!32524 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128005 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381) lt!465571)))

(declare-fun bs!30913 () Bool)

(assert (= bs!30913 d!128005))

(assert (=> bs!30913 m!974913))

(declare-fun m!975035 () Bool)

(assert (=> bs!30913 m!975035))

(assert (=> b!1054716 d!128005))

(declare-fun d!128009 () Bool)

(assert (=> d!128009 (= (array_inv!24609 a!3488) (bvsge (size!32524 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92910 d!128009))

(declare-fun d!128011 () Bool)

(declare-fun res!703879 () Bool)

(declare-fun e!599430 () Bool)

(assert (=> d!128011 (=> res!703879 e!599430)))

(assert (=> d!128011 (= res!703879 (= (select (arr!31987 a!3488) lt!465527) k!2747))))

(assert (=> d!128011 (= (arrayContainsKey!0 a!3488 k!2747 lt!465527) e!599430)))

(declare-fun b!1054854 () Bool)

(declare-fun e!599431 () Bool)

(assert (=> b!1054854 (= e!599430 e!599431)))

(declare-fun res!703880 () Bool)

(assert (=> b!1054854 (=> (not res!703880) (not e!599431))))

(assert (=> b!1054854 (= res!703880 (bvslt (bvadd lt!465527 #b00000000000000000000000000000001) (size!32524 a!3488)))))

(declare-fun b!1054855 () Bool)

(assert (=> b!1054855 (= e!599431 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!465527 #b00000000000000000000000000000001)))))

(assert (= (and d!128011 (not res!703879)) b!1054854))

(assert (= (and b!1054854 res!703880) b!1054855))

(declare-fun m!975037 () Bool)

(assert (=> d!128011 m!975037))

(declare-fun m!975039 () Bool)

(assert (=> b!1054855 m!975039))

(assert (=> b!1054717 d!128011))

(declare-fun b!1054861 () Bool)

(declare-fun e!599437 () Bool)

(declare-fun e!599439 () Bool)

(assert (=> b!1054861 (= e!599437 e!599439)))

(declare-fun c!106951 () Bool)

(assert (=> b!1054861 (= c!106951 (validKeyInArray!0 (select (arr!31987 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054862 () Bool)

(declare-fun e!599438 () Bool)

(assert (=> b!1054862 (= e!599438 e!599437)))

(declare-fun res!703886 () Bool)

(assert (=> b!1054862 (=> (not res!703886) (not e!599437))))

(declare-fun e!599436 () Bool)

(assert (=> b!1054862 (= res!703886 (not e!599436))))

(declare-fun res!703884 () Bool)

(assert (=> b!1054862 (=> (not res!703884) (not e!599436))))

(assert (=> b!1054862 (= res!703884 (validKeyInArray!0 (select (arr!31987 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1054863 () Bool)

(assert (=> b!1054863 (= e!599436 (contains!6193 Nil!22427 (select (arr!31987 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!128013 () Bool)

(declare-fun res!703885 () Bool)

(assert (=> d!128013 (=> res!703885 e!599438)))

(assert (=> d!128013 (= res!703885 (bvsge #b00000000000000000000000000000000 (size!32524 a!3488)))))

(assert (=> d!128013 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22427) e!599438)))

(declare-fun b!1054864 () Bool)

(declare-fun call!44782 () Bool)

(assert (=> b!1054864 (= e!599439 call!44782)))

(declare-fun b!1054865 () Bool)

(assert (=> b!1054865 (= e!599439 call!44782)))

(declare-fun bm!44779 () Bool)

(assert (=> bm!44779 (= call!44782 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106951 (Cons!22426 (select (arr!31987 a!3488) #b00000000000000000000000000000000) Nil!22427) Nil!22427)))))

(assert (= (and d!128013 (not res!703885)) b!1054862))

(assert (= (and b!1054862 res!703884) b!1054863))

(assert (= (and b!1054862 res!703886) b!1054861))

(assert (= (and b!1054861 c!106951) b!1054865))

(assert (= (and b!1054861 (not c!106951)) b!1054864))

(assert (= (or b!1054865 b!1054864) bm!44779))

(declare-fun m!975047 () Bool)

(assert (=> b!1054861 m!975047))

(assert (=> b!1054861 m!975047))

(declare-fun m!975049 () Bool)

(assert (=> b!1054861 m!975049))

(assert (=> b!1054862 m!975047))

(assert (=> b!1054862 m!975047))

(assert (=> b!1054862 m!975049))

(assert (=> b!1054863 m!975047))

(assert (=> b!1054863 m!975047))

(declare-fun m!975051 () Bool)

(assert (=> b!1054863 m!975051))

(assert (=> bm!44779 m!975047))

(declare-fun m!975053 () Bool)

(assert (=> bm!44779 m!975053))

(assert (=> b!1054722 d!128013))

(declare-fun d!128017 () Bool)

(assert (=> d!128017 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1054719 d!128017))

(declare-fun d!128019 () Bool)

(declare-fun lt!465579 () (_ BitVec 32))

(assert (=> d!128019 (and (or (bvslt lt!465579 #b00000000000000000000000000000000) (bvsge lt!465579 (size!32524 lt!465529)) (and (bvsge lt!465579 #b00000000000000000000000000000000) (bvslt lt!465579 (size!32524 lt!465529)))) (bvsge lt!465579 #b00000000000000000000000000000000) (bvslt lt!465579 (size!32524 lt!465529)) (= (select (arr!31987 lt!465529) lt!465579) k!2747))))

(declare-fun e!599444 () (_ BitVec 32))

(assert (=> d!128019 (= lt!465579 e!599444)))

(declare-fun c!106956 () Bool)

(assert (=> d!128019 (= c!106956 (= (select (arr!31987 lt!465529) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128019 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32524 lt!465529)) (bvslt (size!32524 lt!465529) #b01111111111111111111111111111111))))

(assert (=> d!128019 (= (arrayScanForKey!0 lt!465529 k!2747 #b00000000000000000000000000000000) lt!465579)))

(declare-fun b!1054874 () Bool)

(assert (=> b!1054874 (= e!599444 #b00000000000000000000000000000000)))

(declare-fun b!1054875 () Bool)

(assert (=> b!1054875 (= e!599444 (arrayScanForKey!0 lt!465529 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128019 c!106956) b!1054874))

(assert (= (and d!128019 (not c!106956)) b!1054875))

(declare-fun m!975057 () Bool)

(assert (=> d!128019 m!975057))

(declare-fun m!975059 () Bool)

(assert (=> d!128019 m!975059))

(declare-fun m!975061 () Bool)

(assert (=> b!1054875 m!975061))

(assert (=> b!1054724 d!128019))

(declare-fun d!128023 () Bool)

(declare-fun res!703887 () Bool)

(declare-fun e!599445 () Bool)

(assert (=> d!128023 (=> res!703887 e!599445)))

(assert (=> d!128023 (= res!703887 (= (select (arr!31987 lt!465529) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128023 (= (arrayContainsKey!0 lt!465529 k!2747 #b00000000000000000000000000000000) e!599445)))

(declare-fun b!1054876 () Bool)

(declare-fun e!599446 () Bool)

(assert (=> b!1054876 (= e!599445 e!599446)))

(declare-fun res!703888 () Bool)

(assert (=> b!1054876 (=> (not res!703888) (not e!599446))))

(assert (=> b!1054876 (= res!703888 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32524 lt!465529)))))

(declare-fun b!1054877 () Bool)

(assert (=> b!1054877 (= e!599446 (arrayContainsKey!0 lt!465529 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128023 (not res!703887)) b!1054876))

(assert (= (and b!1054876 res!703888) b!1054877))

(assert (=> d!128023 m!975059))

(declare-fun m!975063 () Bool)

(assert (=> b!1054877 m!975063))

(assert (=> b!1054718 d!128023))

(push 1)

(assert (not b!1054832))

(assert (not bm!44774))

(assert (not b!1054798))

(assert (not d!127985))

(assert (not b!1054863))

(assert (not b!1054861))

(assert (not b!1054877))

(assert (not b!1054834))

(assert (not b!1054862))

(assert (not b!1054855))

(assert (not b!1054833))

(assert (not b!1054875))

(assert (not d!128005))

(assert (not bm!44779))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

