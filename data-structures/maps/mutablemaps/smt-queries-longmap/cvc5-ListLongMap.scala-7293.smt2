; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93216 () Bool)

(assert start!93216)

(declare-fun b!1056678 () Bool)

(declare-datatypes ((array!66635 0))(
  ( (array!66636 (arr!32038 (Array (_ BitVec 32) (_ BitVec 64))) (size!32575 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66635)

(declare-fun e!600835 () Bool)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun i!1381 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66635 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056678 (= e!600835 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056679 () Bool)

(declare-fun e!600836 () Bool)

(declare-fun e!600831 () Bool)

(assert (=> b!1056679 (= e!600836 e!600831)))

(declare-fun res!705534 () Bool)

(assert (=> b!1056679 (=> (not res!705534) (not e!600831))))

(declare-fun lt!466167 () (_ BitVec 32))

(assert (=> b!1056679 (= res!705534 (not (= lt!466167 i!1381)))))

(declare-fun lt!466168 () array!66635)

(declare-fun arrayScanForKey!0 (array!66635 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056679 (= lt!466167 (arrayScanForKey!0 lt!466168 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705536 () Bool)

(declare-fun e!600834 () Bool)

(assert (=> start!93216 (=> (not res!705536) (not e!600834))))

(assert (=> start!93216 (= res!705536 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32575 a!3488)) (bvslt (size!32575 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93216 e!600834))

(assert (=> start!93216 true))

(declare-fun array_inv!24660 (array!66635) Bool)

(assert (=> start!93216 (array_inv!24660 a!3488)))

(declare-fun b!1056680 () Bool)

(declare-fun res!705533 () Bool)

(assert (=> b!1056680 (=> (not res!705533) (not e!600834))))

(assert (=> b!1056680 (= res!705533 (= (select (arr!32038 a!3488) i!1381) k!2747))))

(declare-fun b!1056681 () Bool)

(declare-fun e!600833 () Bool)

(assert (=> b!1056681 (= e!600831 (not e!600833))))

(declare-fun res!705529 () Bool)

(assert (=> b!1056681 (=> res!705529 e!600833)))

(assert (=> b!1056681 (= res!705529 (or (bvsgt lt!466167 i!1381) (bvsle i!1381 lt!466167)))))

(declare-fun e!600830 () Bool)

(assert (=> b!1056681 e!600830))

(declare-fun res!705532 () Bool)

(assert (=> b!1056681 (=> (not res!705532) (not e!600830))))

(assert (=> b!1056681 (= res!705532 (= (select (store (arr!32038 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466167) k!2747))))

(declare-fun b!1056682 () Bool)

(declare-fun res!705537 () Bool)

(assert (=> b!1056682 (=> (not res!705537) (not e!600834))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056682 (= res!705537 (validKeyInArray!0 k!2747))))

(declare-fun b!1056683 () Bool)

(declare-fun res!705535 () Bool)

(assert (=> b!1056683 (=> (not res!705535) (not e!600834))))

(declare-datatypes ((List!22481 0))(
  ( (Nil!22478) (Cons!22477 (h!23686 (_ BitVec 64)) (t!31795 List!22481)) )
))
(declare-fun arrayNoDuplicates!0 (array!66635 (_ BitVec 32) List!22481) Bool)

(assert (=> b!1056683 (= res!705535 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22478))))

(declare-fun b!1056684 () Bool)

(assert (=> b!1056684 (= e!600834 e!600836)))

(declare-fun res!705531 () Bool)

(assert (=> b!1056684 (=> (not res!705531) (not e!600836))))

(assert (=> b!1056684 (= res!705531 (arrayContainsKey!0 lt!466168 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056684 (= lt!466168 (array!66636 (store (arr!32038 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32575 a!3488)))))

(declare-fun b!1056685 () Bool)

(assert (=> b!1056685 (= e!600830 e!600835)))

(declare-fun res!705530 () Bool)

(assert (=> b!1056685 (=> res!705530 e!600835)))

(assert (=> b!1056685 (= res!705530 (or (bvsgt lt!466167 i!1381) (bvsle i!1381 lt!466167)))))

(declare-fun b!1056686 () Bool)

(assert (=> b!1056686 (= e!600833 (bvsge (bvadd #b00000000000000000000000000000001 lt!466167) #b00000000000000000000000000000000))))

(assert (=> b!1056686 (arrayNoDuplicates!0 a!3488 lt!466167 Nil!22478)))

(declare-datatypes ((Unit!34607 0))(
  ( (Unit!34608) )
))
(declare-fun lt!466166 () Unit!34607)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66635 (_ BitVec 32) (_ BitVec 32)) Unit!34607)

(assert (=> b!1056686 (= lt!466166 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466167))))

(assert (= (and start!93216 res!705536) b!1056683))

(assert (= (and b!1056683 res!705535) b!1056682))

(assert (= (and b!1056682 res!705537) b!1056680))

(assert (= (and b!1056680 res!705533) b!1056684))

(assert (= (and b!1056684 res!705531) b!1056679))

(assert (= (and b!1056679 res!705534) b!1056681))

(assert (= (and b!1056681 res!705532) b!1056685))

(assert (= (and b!1056685 (not res!705530)) b!1056678))

(assert (= (and b!1056681 (not res!705529)) b!1056686))

(declare-fun m!976605 () Bool)

(assert (=> b!1056686 m!976605))

(declare-fun m!976607 () Bool)

(assert (=> b!1056686 m!976607))

(declare-fun m!976609 () Bool)

(assert (=> b!1056683 m!976609))

(declare-fun m!976611 () Bool)

(assert (=> b!1056678 m!976611))

(declare-fun m!976613 () Bool)

(assert (=> b!1056684 m!976613))

(declare-fun m!976615 () Bool)

(assert (=> b!1056684 m!976615))

(declare-fun m!976617 () Bool)

(assert (=> start!93216 m!976617))

(declare-fun m!976619 () Bool)

(assert (=> b!1056679 m!976619))

(declare-fun m!976621 () Bool)

(assert (=> b!1056682 m!976621))

(declare-fun m!976623 () Bool)

(assert (=> b!1056680 m!976623))

(assert (=> b!1056681 m!976615))

(declare-fun m!976625 () Bool)

(assert (=> b!1056681 m!976625))

(push 1)

(assert (not b!1056683))

(assert (not b!1056682))

(assert (not start!93216))

(assert (not b!1056679))

(assert (not b!1056678))

(assert (not b!1056684))

(assert (not b!1056686))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1056779 () Bool)

(declare-fun e!600913 () Bool)

(declare-fun e!600911 () Bool)

(assert (=> b!1056779 (= e!600913 e!600911)))

(declare-fun c!107043 () Bool)

(assert (=> b!1056779 (= c!107043 (validKeyInArray!0 (select (arr!32038 a!3488) lt!466167)))))

(declare-fun b!1056780 () Bool)

(declare-fun e!600912 () Bool)

(assert (=> b!1056780 (= e!600912 e!600913)))

(declare-fun res!705619 () Bool)

(assert (=> b!1056780 (=> (not res!705619) (not e!600913))))

(declare-fun e!600914 () Bool)

(assert (=> b!1056780 (= res!705619 (not e!600914))))

(declare-fun res!705620 () Bool)

(assert (=> b!1056780 (=> (not res!705620) (not e!600914))))

(assert (=> b!1056780 (= res!705620 (validKeyInArray!0 (select (arr!32038 a!3488) lt!466167)))))

(declare-fun b!1056781 () Bool)

(declare-fun contains!6212 (List!22481 (_ BitVec 64)) Bool)

(assert (=> b!1056781 (= e!600914 (contains!6212 Nil!22478 (select (arr!32038 a!3488) lt!466167)))))

(declare-fun b!1056782 () Bool)

(declare-fun call!44832 () Bool)

(assert (=> b!1056782 (= e!600911 call!44832)))

(declare-fun b!1056783 () Bool)

(assert (=> b!1056783 (= e!600911 call!44832)))

(declare-fun d!128289 () Bool)

(declare-fun res!705618 () Bool)

(assert (=> d!128289 (=> res!705618 e!600912)))

(assert (=> d!128289 (= res!705618 (bvsge lt!466167 (size!32575 a!3488)))))

(assert (=> d!128289 (= (arrayNoDuplicates!0 a!3488 lt!466167 Nil!22478) e!600912)))

(declare-fun bm!44829 () Bool)

(assert (=> bm!44829 (= call!44832 (arrayNoDuplicates!0 a!3488 (bvadd lt!466167 #b00000000000000000000000000000001) (ite c!107043 (Cons!22477 (select (arr!32038 a!3488) lt!466167) Nil!22478) Nil!22478)))))

(assert (= (and d!128289 (not res!705618)) b!1056780))

(assert (= (and b!1056780 res!705620) b!1056781))

(assert (= (and b!1056780 res!705619) b!1056779))

(assert (= (and b!1056779 c!107043) b!1056782))

(assert (= (and b!1056779 (not c!107043)) b!1056783))

(assert (= (or b!1056782 b!1056783) bm!44829))

(declare-fun m!976695 () Bool)

(assert (=> b!1056779 m!976695))

(assert (=> b!1056779 m!976695))

(declare-fun m!976697 () Bool)

(assert (=> b!1056779 m!976697))

(assert (=> b!1056780 m!976695))

(assert (=> b!1056780 m!976695))

(assert (=> b!1056780 m!976697))

(assert (=> b!1056781 m!976695))

(assert (=> b!1056781 m!976695))

(declare-fun m!976699 () Bool)

(assert (=> b!1056781 m!976699))

(assert (=> bm!44829 m!976695))

(declare-fun m!976701 () Bool)

(assert (=> bm!44829 m!976701))

(assert (=> b!1056686 d!128289))

(declare-fun d!128301 () Bool)

(assert (=> d!128301 (arrayNoDuplicates!0 a!3488 lt!466167 Nil!22478)))

(declare-fun lt!466192 () Unit!34607)

(declare-fun choose!39 (array!66635 (_ BitVec 32) (_ BitVec 32)) Unit!34607)

(assert (=> d!128301 (= lt!466192 (choose!39 a!3488 #b00000000000000000000000000000000 lt!466167))))

(assert (=> d!128301 (bvslt (size!32575 a!3488) #b01111111111111111111111111111111)))

(assert (=> d!128301 (= (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466167) lt!466192)))

(declare-fun bs!30979 () Bool)

(assert (= bs!30979 d!128301))

(assert (=> bs!30979 m!976605))

(declare-fun m!976705 () Bool)

(assert (=> bs!30979 m!976705))

(assert (=> b!1056686 d!128301))

(declare-fun d!128305 () Bool)

(assert (=> d!128305 (= (array_inv!24660 a!3488) (bvsge (size!32575 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93216 d!128305))

(declare-fun d!128307 () Bool)

(assert (=> d!128307 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056682 d!128307))

(declare-fun b!1056796 () Bool)

(declare-fun e!600927 () Bool)

(declare-fun e!600925 () Bool)

(assert (=> b!1056796 (= e!600927 e!600925)))

(declare-fun c!107046 () Bool)

(assert (=> b!1056796 (= c!107046 (validKeyInArray!0 (select (arr!32038 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056797 () Bool)

(declare-fun e!600926 () Bool)

(assert (=> b!1056797 (= e!600926 e!600927)))

(declare-fun res!705630 () Bool)

(assert (=> b!1056797 (=> (not res!705630) (not e!600927))))

(declare-fun e!600928 () Bool)

(assert (=> b!1056797 (= res!705630 (not e!600928))))

(declare-fun res!705631 () Bool)

(assert (=> b!1056797 (=> (not res!705631) (not e!600928))))

(assert (=> b!1056797 (= res!705631 (validKeyInArray!0 (select (arr!32038 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056798 () Bool)

(assert (=> b!1056798 (= e!600928 (contains!6212 Nil!22478 (select (arr!32038 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1056799 () Bool)

(declare-fun call!44833 () Bool)

(assert (=> b!1056799 (= e!600925 call!44833)))

(declare-fun b!1056800 () Bool)

(assert (=> b!1056800 (= e!600925 call!44833)))

(declare-fun d!128313 () Bool)

(declare-fun res!705629 () Bool)

(assert (=> d!128313 (=> res!705629 e!600926)))

(assert (=> d!128313 (= res!705629 (bvsge #b00000000000000000000000000000000 (size!32575 a!3488)))))

(assert (=> d!128313 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22478) e!600926)))

(declare-fun bm!44830 () Bool)

(assert (=> bm!44830 (= call!44833 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!107046 (Cons!22477 (select (arr!32038 a!3488) #b00000000000000000000000000000000) Nil!22478) Nil!22478)))))

(assert (= (and d!128313 (not res!705629)) b!1056797))

(assert (= (and b!1056797 res!705631) b!1056798))

(assert (= (and b!1056797 res!705630) b!1056796))

(assert (= (and b!1056796 c!107046) b!1056799))

(assert (= (and b!1056796 (not c!107046)) b!1056800))

(assert (= (or b!1056799 b!1056800) bm!44830))

(declare-fun m!976711 () Bool)

(assert (=> b!1056796 m!976711))

(assert (=> b!1056796 m!976711))

(declare-fun m!976713 () Bool)

(assert (=> b!1056796 m!976713))

(assert (=> b!1056797 m!976711))

(assert (=> b!1056797 m!976711))

(assert (=> b!1056797 m!976713))

(assert (=> b!1056798 m!976711))

(assert (=> b!1056798 m!976711))

(declare-fun m!976715 () Bool)

(assert (=> b!1056798 m!976715))

(assert (=> bm!44830 m!976711))

(declare-fun m!976717 () Bool)

(assert (=> bm!44830 m!976717))

(assert (=> b!1056683 d!128313))

(declare-fun d!128317 () Bool)

(declare-fun res!705636 () Bool)

(declare-fun e!600934 () Bool)

(assert (=> d!128317 (=> res!705636 e!600934)))

(assert (=> d!128317 (= res!705636 (= (select (arr!32038 a!3488) i!1381) k!2747))))

(assert (=> d!128317 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!600934)))

(declare-fun b!1056807 () Bool)

(declare-fun e!600935 () Bool)

(assert (=> b!1056807 (= e!600934 e!600935)))

(declare-fun res!705637 () Bool)

(assert (=> b!1056807 (=> (not res!705637) (not e!600935))))

(assert (=> b!1056807 (= res!705637 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32575 a!3488)))))

(declare-fun b!1056808 () Bool)

(assert (=> b!1056808 (= e!600935 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

