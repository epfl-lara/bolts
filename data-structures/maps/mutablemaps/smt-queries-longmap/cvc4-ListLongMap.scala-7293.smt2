; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93220 () Bool)

(assert start!93220)

(declare-fun b!1056732 () Bool)

(declare-fun e!600875 () Bool)

(declare-fun lt!466186 () (_ BitVec 32))

(assert (=> b!1056732 (= e!600875 (bvsge (bvadd #b00000000000000000000000000000001 lt!466186) #b00000000000000000000000000000000))))

(declare-datatypes ((array!66639 0))(
  ( (array!66640 (arr!32040 (Array (_ BitVec 32) (_ BitVec 64))) (size!32577 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66639)

(declare-datatypes ((List!22483 0))(
  ( (Nil!22480) (Cons!22479 (h!23688 (_ BitVec 64)) (t!31797 List!22483)) )
))
(declare-fun arrayNoDuplicates!0 (array!66639 (_ BitVec 32) List!22483) Bool)

(assert (=> b!1056732 (arrayNoDuplicates!0 a!3488 lt!466186 Nil!22480)))

(declare-datatypes ((Unit!34611 0))(
  ( (Unit!34612) )
))
(declare-fun lt!466185 () Unit!34611)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66639 (_ BitVec 32) (_ BitVec 32)) Unit!34611)

(assert (=> b!1056732 (= lt!466185 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466186))))

(declare-fun b!1056733 () Bool)

(declare-fun res!705591 () Bool)

(declare-fun e!600878 () Bool)

(assert (=> b!1056733 (=> (not res!705591) (not e!600878))))

(assert (=> b!1056733 (= res!705591 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22480))))

(declare-fun b!1056734 () Bool)

(declare-fun e!600873 () Bool)

(declare-fun e!600874 () Bool)

(assert (=> b!1056734 (= e!600873 e!600874)))

(declare-fun res!705585 () Bool)

(assert (=> b!1056734 (=> res!705585 e!600874)))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1056734 (= res!705585 (or (bvsgt lt!466186 i!1381) (bvsle i!1381 lt!466186)))))

(declare-fun b!1056735 () Bool)

(declare-fun res!705583 () Bool)

(assert (=> b!1056735 (=> (not res!705583) (not e!600878))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1056735 (= res!705583 (validKeyInArray!0 k!2747))))

(declare-fun b!1056736 () Bool)

(declare-fun e!600872 () Bool)

(assert (=> b!1056736 (= e!600878 e!600872)))

(declare-fun res!705590 () Bool)

(assert (=> b!1056736 (=> (not res!705590) (not e!600872))))

(declare-fun lt!466184 () array!66639)

(declare-fun arrayContainsKey!0 (array!66639 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1056736 (= res!705590 (arrayContainsKey!0 lt!466184 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1056736 (= lt!466184 (array!66640 (store (arr!32040 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32577 a!3488)))))

(declare-fun b!1056737 () Bool)

(declare-fun e!600877 () Bool)

(assert (=> b!1056737 (= e!600872 e!600877)))

(declare-fun res!705589 () Bool)

(assert (=> b!1056737 (=> (not res!705589) (not e!600877))))

(assert (=> b!1056737 (= res!705589 (not (= lt!466186 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66639 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1056737 (= lt!466186 (arrayScanForKey!0 lt!466184 k!2747 #b00000000000000000000000000000000))))

(declare-fun res!705586 () Bool)

(assert (=> start!93220 (=> (not res!705586) (not e!600878))))

(assert (=> start!93220 (= res!705586 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32577 a!3488)) (bvslt (size!32577 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93220 e!600878))

(assert (=> start!93220 true))

(declare-fun array_inv!24662 (array!66639) Bool)

(assert (=> start!93220 (array_inv!24662 a!3488)))

(declare-fun b!1056738 () Bool)

(declare-fun res!705588 () Bool)

(assert (=> b!1056738 (=> (not res!705588) (not e!600878))))

(assert (=> b!1056738 (= res!705588 (= (select (arr!32040 a!3488) i!1381) k!2747))))

(declare-fun b!1056739 () Bool)

(assert (=> b!1056739 (= e!600874 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1056740 () Bool)

(assert (=> b!1056740 (= e!600877 (not e!600875))))

(declare-fun res!705584 () Bool)

(assert (=> b!1056740 (=> res!705584 e!600875)))

(assert (=> b!1056740 (= res!705584 (or (bvsgt lt!466186 i!1381) (bvsle i!1381 lt!466186)))))

(assert (=> b!1056740 e!600873))

(declare-fun res!705587 () Bool)

(assert (=> b!1056740 (=> (not res!705587) (not e!600873))))

(assert (=> b!1056740 (= res!705587 (= (select (store (arr!32040 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466186) k!2747))))

(assert (= (and start!93220 res!705586) b!1056733))

(assert (= (and b!1056733 res!705591) b!1056735))

(assert (= (and b!1056735 res!705583) b!1056738))

(assert (= (and b!1056738 res!705588) b!1056736))

(assert (= (and b!1056736 res!705590) b!1056737))

(assert (= (and b!1056737 res!705589) b!1056740))

(assert (= (and b!1056740 res!705587) b!1056734))

(assert (= (and b!1056734 (not res!705585)) b!1056739))

(assert (= (and b!1056740 (not res!705584)) b!1056732))

(declare-fun m!976649 () Bool)

(assert (=> b!1056733 m!976649))

(declare-fun m!976651 () Bool)

(assert (=> start!93220 m!976651))

(declare-fun m!976653 () Bool)

(assert (=> b!1056736 m!976653))

(declare-fun m!976655 () Bool)

(assert (=> b!1056736 m!976655))

(declare-fun m!976657 () Bool)

(assert (=> b!1056737 m!976657))

(assert (=> b!1056740 m!976655))

(declare-fun m!976659 () Bool)

(assert (=> b!1056740 m!976659))

(declare-fun m!976661 () Bool)

(assert (=> b!1056738 m!976661))

(declare-fun m!976663 () Bool)

(assert (=> b!1056735 m!976663))

(declare-fun m!976665 () Bool)

(assert (=> b!1056739 m!976665))

(declare-fun m!976667 () Bool)

(assert (=> b!1056732 m!976667))

(declare-fun m!976669 () Bool)

(assert (=> b!1056732 m!976669))

(push 1)

(assert (not b!1056736))

(assert (not start!93220))

(assert (not b!1056739))

(assert (not b!1056733))

(assert (not b!1056735))

(assert (not b!1056737))

(assert (not b!1056732))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128297 () Bool)

(declare-fun res!705625 () Bool)

(declare-fun e!600919 () Bool)

(assert (=> d!128297 (=> res!705625 e!600919)))

(assert (=> d!128297 (= res!705625 (= (select (arr!32040 a!3488) i!1381) k!2747))))

(assert (=> d!128297 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!600919)))

(declare-fun b!1056788 () Bool)

(declare-fun e!600920 () Bool)

(assert (=> b!1056788 (= e!600919 e!600920)))

(declare-fun res!705626 () Bool)

(assert (=> b!1056788 (=> (not res!705626) (not e!600920))))

(assert (=> b!1056788 (= res!705626 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32577 a!3488)))))

(declare-fun b!1056789 () Bool)

(assert (=> b!1056789 (= e!600920 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128297 (not res!705625)) b!1056788))

(assert (= (and b!1056788 res!705626) b!1056789))

(assert (=> d!128297 m!976661))

(declare-fun m!976703 () Bool)

(assert (=> b!1056789 m!976703))

(assert (=> b!1056739 d!128297))

(declare-fun d!128303 () Bool)

(assert (=> d!128303 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1056735 d!128303))

(declare-fun d!128309 () Bool)

(assert (=> d!128309 (= (array_inv!24662 a!3488) (bvsge (size!32577 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93220 d!128309))

(declare-fun d!128311 () Bool)

(declare-fun res!705627 () Bool)

(declare-fun e!600923 () Bool)

(assert (=> d!128311 (=> res!705627 e!600923)))

(assert (=> d!128311 (= res!705627 (= (select (arr!32040 lt!466184) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128311 (= (arrayContainsKey!0 lt!466184 k!2747 #b00000000000000000000000000000000) e!600923)))

(declare-fun b!1056794 () Bool)

(declare-fun e!600924 () Bool)

(assert (=> b!1056794 (= e!600923 e!600924)))

(declare-fun res!705628 () Bool)

(assert (=> b!1056794 (=> (not res!705628) (not e!600924))))

(assert (=> b!1056794 (= res!705628 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32577 lt!466184)))))

(declare-fun b!1056795 () Bool)

(assert (=> b!1056795 (= e!600924 (arrayContainsKey!0 lt!466184 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128311 (not res!705627)) b!1056794))

(assert (= (and b!1056794 res!705628) b!1056795))

(declare-fun m!976707 () Bool)

(assert (=> d!128311 m!976707))

(declare-fun m!976709 () Bool)

(assert (=> b!1056795 m!976709))

(assert (=> b!1056736 d!128311))

(declare-fun d!128315 () Bool)

(declare-fun lt!466198 () (_ BitVec 32))

(assert (=> d!128315 (and (or (bvslt lt!466198 #b00000000000000000000000000000000) (bvsge lt!466198 (size!32577 lt!466184)) (and (bvsge lt!466198 #b00000000000000000000000000000000) (bvslt lt!466198 (size!32577 lt!466184)))) (bvsge lt!466198 #b00000000000000000000000000000000) (bvslt lt!466198 (size!32577 lt!466184)) (= (select (arr!32040 lt!466184) lt!466198) k!2747))))

(declare-fun e!600940 () (_ BitVec 32))

(assert (=> d!128315 (= lt!466198 e!600940)))

(declare-fun c!107050 () Bool)

(assert (=> d!128315 (= c!107050 (= (select (arr!32040 lt!466184) #b00000000000000000000000000000000) k!2747))))

