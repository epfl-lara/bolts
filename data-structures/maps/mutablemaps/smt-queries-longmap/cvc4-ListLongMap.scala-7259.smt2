; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92686 () Bool)

(assert start!92686)

(declare-datatypes ((array!66408 0))(
  ( (array!66409 (arr!31938 (Array (_ BitVec 32) (_ BitVec 64))) (size!32475 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66408)

(declare-fun lt!465076 () (_ BitVec 32))

(declare-fun b!1053145 () Bool)

(declare-fun e!598116 () Bool)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053145 (= e!598116 (and (not (= lt!465076 i!1381)) (or (bvslt lt!465076 #b00000000000000000000000000000000) (bvsge lt!465076 (size!32475 a!3488)))))))

(declare-fun lt!465075 () array!66408)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66408 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053145 (= lt!465076 (arrayScanForKey!0 lt!465075 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053146 () Bool)

(declare-fun res!702346 () Bool)

(declare-fun e!598117 () Bool)

(assert (=> b!1053146 (=> (not res!702346) (not e!598117))))

(declare-datatypes ((List!22381 0))(
  ( (Nil!22378) (Cons!22377 (h!23586 (_ BitVec 64)) (t!31695 List!22381)) )
))
(declare-fun arrayNoDuplicates!0 (array!66408 (_ BitVec 32) List!22381) Bool)

(assert (=> b!1053146 (= res!702346 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22378))))

(declare-fun b!1053147 () Bool)

(declare-fun res!702347 () Bool)

(assert (=> b!1053147 (=> (not res!702347) (not e!598117))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053147 (= res!702347 (validKeyInArray!0 k!2747))))

(declare-fun b!1053148 () Bool)

(declare-fun res!702344 () Bool)

(assert (=> b!1053148 (=> (not res!702344) (not e!598117))))

(assert (=> b!1053148 (= res!702344 (= (select (arr!31938 a!3488) i!1381) k!2747))))

(declare-fun b!1053149 () Bool)

(assert (=> b!1053149 (= e!598117 e!598116)))

(declare-fun res!702345 () Bool)

(assert (=> b!1053149 (=> (not res!702345) (not e!598116))))

(declare-fun arrayContainsKey!0 (array!66408 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053149 (= res!702345 (arrayContainsKey!0 lt!465075 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053149 (= lt!465075 (array!66409 (store (arr!31938 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32475 a!3488)))))

(declare-fun res!702348 () Bool)

(assert (=> start!92686 (=> (not res!702348) (not e!598117))))

(assert (=> start!92686 (= res!702348 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32475 a!3488)) (bvslt (size!32475 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92686 e!598117))

(assert (=> start!92686 true))

(declare-fun array_inv!24560 (array!66408) Bool)

(assert (=> start!92686 (array_inv!24560 a!3488)))

(assert (= (and start!92686 res!702348) b!1053146))

(assert (= (and b!1053146 res!702346) b!1053147))

(assert (= (and b!1053147 res!702347) b!1053148))

(assert (= (and b!1053148 res!702344) b!1053149))

(assert (= (and b!1053149 res!702345) b!1053145))

(declare-fun m!973645 () Bool)

(assert (=> b!1053148 m!973645))

(declare-fun m!973647 () Bool)

(assert (=> b!1053145 m!973647))

(declare-fun m!973649 () Bool)

(assert (=> b!1053146 m!973649))

(declare-fun m!973651 () Bool)

(assert (=> start!92686 m!973651))

(declare-fun m!973653 () Bool)

(assert (=> b!1053147 m!973653))

(declare-fun m!973655 () Bool)

(assert (=> b!1053149 m!973655))

(declare-fun m!973657 () Bool)

(assert (=> b!1053149 m!973657))

(push 1)

(assert (not b!1053149))

(assert (not b!1053147))

(assert (not start!92686))

(assert (not b!1053146))

(assert (not b!1053145))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!127809 () Bool)

(assert (=> d!127809 (= (array_inv!24560 a!3488) (bvsge (size!32475 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92686 d!127809))

(declare-fun d!127811 () Bool)

(assert (=> d!127811 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053147 d!127811))

(declare-fun d!127815 () Bool)

(declare-fun lt!465082 () (_ BitVec 32))

(assert (=> d!127815 (and (or (bvslt lt!465082 #b00000000000000000000000000000000) (bvsge lt!465082 (size!32475 lt!465075)) (and (bvsge lt!465082 #b00000000000000000000000000000000) (bvslt lt!465082 (size!32475 lt!465075)))) (bvsge lt!465082 #b00000000000000000000000000000000) (bvslt lt!465082 (size!32475 lt!465075)) (= (select (arr!31938 lt!465075) lt!465082) k!2747))))

(declare-fun e!598160 () (_ BitVec 32))

(assert (=> d!127815 (= lt!465082 e!598160)))

(declare-fun c!106874 () Bool)

(assert (=> d!127815 (= c!106874 (= (select (arr!31938 lt!465075) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127815 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32475 lt!465075)) (bvslt (size!32475 lt!465075) #b01111111111111111111111111111111))))

(assert (=> d!127815 (= (arrayScanForKey!0 lt!465075 k!2747 #b00000000000000000000000000000000) lt!465082)))

(declare-fun b!1053202 () Bool)

(assert (=> b!1053202 (= e!598160 #b00000000000000000000000000000000)))

(declare-fun b!1053203 () Bool)

(assert (=> b!1053203 (= e!598160 (arrayScanForKey!0 lt!465075 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127815 c!106874) b!1053202))

(assert (= (and d!127815 (not c!106874)) b!1053203))

(declare-fun m!973687 () Bool)

(assert (=> d!127815 m!973687))

(declare-fun m!973689 () Bool)

(assert (=> d!127815 m!973689))

(declare-fun m!973691 () Bool)

(assert (=> b!1053203 m!973691))

(assert (=> b!1053145 d!127815))

(declare-fun b!1053220 () Bool)

(declare-fun e!598173 () Bool)

(declare-fun call!44741 () Bool)

(assert (=> b!1053220 (= e!598173 call!44741)))

(declare-fun b!1053221 () Bool)

(declare-fun e!598172 () Bool)

(declare-fun e!598175 () Bool)

(assert (=> b!1053221 (= e!598172 e!598175)))

(declare-fun res!702387 () Bool)

(assert (=> b!1053221 (=> (not res!702387) (not e!598175))))

(declare-fun e!598174 () Bool)

(assert (=> b!1053221 (= res!702387 (not e!598174))))

(declare-fun res!702385 () Bool)

(assert (=> b!1053221 (=> (not res!702385) (not e!598174))))

(assert (=> b!1053221 (= res!702385 (validKeyInArray!0 (select (arr!31938 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!127819 () Bool)

(declare-fun res!702386 () Bool)

(assert (=> d!127819 (=> res!702386 e!598172)))

(assert (=> d!127819 (= res!702386 (bvsge #b00000000000000000000000000000000 (size!32475 a!3488)))))

(assert (=> d!127819 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22378) e!598172)))

(declare-fun b!1053222 () Bool)

(assert (=> b!1053222 (= e!598175 e!598173)))

(declare-fun c!106880 () Bool)

(assert (=> b!1053222 (= c!106880 (validKeyInArray!0 (select (arr!31938 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053223 () Bool)

(assert (=> b!1053223 (= e!598173 call!44741)))

(declare-fun b!1053224 () Bool)

(declare-fun contains!6182 (List!22381 (_ BitVec 64)) Bool)

(assert (=> b!1053224 (= e!598174 (contains!6182 Nil!22378 (select (arr!31938 a!3488) #b00000000000000000000000000000000)))))

(declare-fun bm!44738 () Bool)

(assert (=> bm!44738 (= call!44741 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106880 (Cons!22377 (select (arr!31938 a!3488) #b00000000000000000000000000000000) Nil!22378) Nil!22378)))))

(assert (= (and d!127819 (not res!702386)) b!1053221))

(assert (= (and b!1053221 res!702385) b!1053224))

(assert (= (and b!1053221 res!702387) b!1053222))

(assert (= (and b!1053222 c!106880) b!1053223))

(assert (= (and b!1053222 (not c!106880)) b!1053220))

(assert (= (or b!1053223 b!1053220) bm!44738))

(declare-fun m!973697 () Bool)

(assert (=> b!1053221 m!973697))

(assert (=> b!1053221 m!973697))

(declare-fun m!973699 () Bool)

(assert (=> b!1053221 m!973699))

(assert (=> b!1053222 m!973697))

(assert (=> b!1053222 m!973697))

(assert (=> b!1053222 m!973699))

(assert (=> b!1053224 m!973697))

(assert (=> b!1053224 m!973697))

(declare-fun m!973701 () Bool)

(assert (=> b!1053224 m!973701))

(assert (=> bm!44738 m!973697))

(declare-fun m!973703 () Bool)

(assert (=> bm!44738 m!973703))

(assert (=> b!1053146 d!127819))

(declare-fun d!127821 () Bool)

(declare-fun res!702392 () Bool)

(declare-fun e!598180 () Bool)

(assert (=> d!127821 (=> res!702392 e!598180)))

(assert (=> d!127821 (= res!702392 (= (select (arr!31938 lt!465075) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!127821 (= (arrayContainsKey!0 lt!465075 k!2747 #b00000000000000000000000000000000) e!598180)))

(declare-fun b!1053229 () Bool)

(declare-fun e!598181 () Bool)

(assert (=> b!1053229 (= e!598180 e!598181)))

