; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92756 () Bool)

(assert start!92756)

(declare-fun res!702523 () Bool)

(declare-fun e!598297 () Bool)

(assert (=> start!92756 (=> (not res!702523) (not e!598297))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66424 0))(
  ( (array!66425 (arr!31943 (Array (_ BitVec 32) (_ BitVec 64))) (size!32480 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66424)

(assert (=> start!92756 (= res!702523 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32480 a!3488)) (bvslt (size!32480 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92756 e!598297))

(assert (=> start!92756 true))

(declare-fun array_inv!24565 (array!66424) Bool)

(assert (=> start!92756 (array_inv!24565 a!3488)))

(declare-fun b!1053392 () Bool)

(declare-fun e!598299 () Bool)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun lt!465124 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!66424 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053392 (= e!598299 (arrayContainsKey!0 a!3488 k0!2747 lt!465124))))

(declare-fun b!1053393 () Bool)

(declare-fun e!598301 () Bool)

(assert (=> b!1053393 (= e!598301 (not e!598299))))

(declare-fun res!702525 () Bool)

(assert (=> b!1053393 (=> res!702525 e!598299)))

(assert (=> b!1053393 (= res!702525 (bvsle lt!465124 i!1381))))

(assert (=> b!1053393 (= (select (store (arr!31943 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465124) k0!2747)))

(declare-fun b!1053394 () Bool)

(declare-fun e!598298 () Bool)

(assert (=> b!1053394 (= e!598297 e!598298)))

(declare-fun res!702519 () Bool)

(assert (=> b!1053394 (=> (not res!702519) (not e!598298))))

(declare-fun lt!465123 () array!66424)

(assert (=> b!1053394 (= res!702519 (arrayContainsKey!0 lt!465123 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053394 (= lt!465123 (array!66425 (store (arr!31943 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32480 a!3488)))))

(declare-fun b!1053395 () Bool)

(declare-fun res!702521 () Bool)

(assert (=> b!1053395 (=> (not res!702521) (not e!598297))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053395 (= res!702521 (validKeyInArray!0 k0!2747))))

(declare-fun b!1053396 () Bool)

(declare-fun res!702522 () Bool)

(assert (=> b!1053396 (=> (not res!702522) (not e!598297))))

(assert (=> b!1053396 (= res!702522 (= (select (arr!31943 a!3488) i!1381) k0!2747))))

(declare-fun b!1053397 () Bool)

(declare-fun res!702524 () Bool)

(assert (=> b!1053397 (=> (not res!702524) (not e!598297))))

(declare-datatypes ((List!22386 0))(
  ( (Nil!22383) (Cons!22382 (h!23591 (_ BitVec 64)) (t!31700 List!22386)) )
))
(declare-fun arrayNoDuplicates!0 (array!66424 (_ BitVec 32) List!22386) Bool)

(assert (=> b!1053397 (= res!702524 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22383))))

(declare-fun b!1053398 () Bool)

(assert (=> b!1053398 (= e!598298 e!598301)))

(declare-fun res!702520 () Bool)

(assert (=> b!1053398 (=> (not res!702520) (not e!598301))))

(assert (=> b!1053398 (= res!702520 (not (= lt!465124 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66424 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053398 (= lt!465124 (arrayScanForKey!0 lt!465123 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92756 res!702523) b!1053397))

(assert (= (and b!1053397 res!702524) b!1053395))

(assert (= (and b!1053395 res!702521) b!1053396))

(assert (= (and b!1053396 res!702522) b!1053394))

(assert (= (and b!1053394 res!702519) b!1053398))

(assert (= (and b!1053398 res!702520) b!1053393))

(assert (= (and b!1053393 (not res!702525)) b!1053392))

(declare-fun m!973821 () Bool)

(assert (=> b!1053398 m!973821))

(declare-fun m!973823 () Bool)

(assert (=> b!1053392 m!973823))

(declare-fun m!973825 () Bool)

(assert (=> b!1053396 m!973825))

(declare-fun m!973827 () Bool)

(assert (=> b!1053394 m!973827))

(declare-fun m!973829 () Bool)

(assert (=> b!1053394 m!973829))

(assert (=> b!1053393 m!973829))

(declare-fun m!973831 () Bool)

(assert (=> b!1053393 m!973831))

(declare-fun m!973833 () Bool)

(assert (=> start!92756 m!973833))

(declare-fun m!973835 () Bool)

(assert (=> b!1053397 m!973835))

(declare-fun m!973837 () Bool)

(assert (=> b!1053395 m!973837))

(check-sat (not b!1053397) (not start!92756) (not b!1053392) (not b!1053395) (not b!1053394) (not b!1053398))
(check-sat)
(get-model)

(declare-fun d!127857 () Bool)

(declare-fun res!702551 () Bool)

(declare-fun e!598321 () Bool)

(assert (=> d!127857 (=> res!702551 e!598321)))

(assert (=> d!127857 (= res!702551 (= (select (arr!31943 lt!465123) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127857 (= (arrayContainsKey!0 lt!465123 k0!2747 #b00000000000000000000000000000000) e!598321)))

(declare-fun b!1053424 () Bool)

(declare-fun e!598322 () Bool)

(assert (=> b!1053424 (= e!598321 e!598322)))

(declare-fun res!702552 () Bool)

(assert (=> b!1053424 (=> (not res!702552) (not e!598322))))

(assert (=> b!1053424 (= res!702552 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32480 lt!465123)))))

(declare-fun b!1053425 () Bool)

(assert (=> b!1053425 (= e!598322 (arrayContainsKey!0 lt!465123 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127857 (not res!702551)) b!1053424))

(assert (= (and b!1053424 res!702552) b!1053425))

(declare-fun m!973857 () Bool)

(assert (=> d!127857 m!973857))

(declare-fun m!973859 () Bool)

(assert (=> b!1053425 m!973859))

(assert (=> b!1053394 d!127857))

(declare-fun d!127859 () Bool)

(assert (=> d!127859 (= (array_inv!24565 a!3488) (bvsge (size!32480 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!92756 d!127859))

(declare-fun d!127861 () Bool)

(assert (=> d!127861 (= (validKeyInArray!0 k0!2747) (and (not (= k0!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1053395 d!127861))

(declare-fun d!127863 () Bool)

(declare-fun lt!465133 () (_ BitVec 32))

(assert (=> d!127863 (and (or (bvslt lt!465133 #b00000000000000000000000000000000) (bvsge lt!465133 (size!32480 lt!465123)) (and (bvsge lt!465133 #b00000000000000000000000000000000) (bvslt lt!465133 (size!32480 lt!465123)))) (bvsge lt!465133 #b00000000000000000000000000000000) (bvslt lt!465133 (size!32480 lt!465123)) (= (select (arr!31943 lt!465123) lt!465133) k0!2747))))

(declare-fun e!598331 () (_ BitVec 32))

(assert (=> d!127863 (= lt!465133 e!598331)))

(declare-fun c!106901 () Bool)

(assert (=> d!127863 (= c!106901 (= (select (arr!31943 lt!465123) #b00000000000000000000000000000000) k0!2747))))

(assert (=> d!127863 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32480 lt!465123)) (bvslt (size!32480 lt!465123) #b01111111111111111111111111111111))))

(assert (=> d!127863 (= (arrayScanForKey!0 lt!465123 k0!2747 #b00000000000000000000000000000000) lt!465133)))

(declare-fun b!1053436 () Bool)

(assert (=> b!1053436 (= e!598331 #b00000000000000000000000000000000)))

(declare-fun b!1053437 () Bool)

(assert (=> b!1053437 (= e!598331 (arrayScanForKey!0 lt!465123 k0!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!127863 c!106901) b!1053436))

(assert (= (and d!127863 (not c!106901)) b!1053437))

(declare-fun m!973865 () Bool)

(assert (=> d!127863 m!973865))

(assert (=> d!127863 m!973857))

(declare-fun m!973867 () Bool)

(assert (=> b!1053437 m!973867))

(assert (=> b!1053398 d!127863))

(declare-fun d!127871 () Bool)

(declare-fun res!702559 () Bool)

(declare-fun e!598332 () Bool)

(assert (=> d!127871 (=> res!702559 e!598332)))

(assert (=> d!127871 (= res!702559 (= (select (arr!31943 a!3488) lt!465124) k0!2747))))

(assert (=> d!127871 (= (arrayContainsKey!0 a!3488 k0!2747 lt!465124) e!598332)))

(declare-fun b!1053438 () Bool)

(declare-fun e!598333 () Bool)

(assert (=> b!1053438 (= e!598332 e!598333)))

(declare-fun res!702560 () Bool)

(assert (=> b!1053438 (=> (not res!702560) (not e!598333))))

(assert (=> b!1053438 (= res!702560 (bvslt (bvadd lt!465124 #b00000000000000000000000000000001) (size!32480 a!3488)))))

(declare-fun b!1053439 () Bool)

(assert (=> b!1053439 (= e!598333 (arrayContainsKey!0 a!3488 k0!2747 (bvadd lt!465124 #b00000000000000000000000000000001)))))

(assert (= (and d!127871 (not res!702559)) b!1053438))

(assert (= (and b!1053438 res!702560) b!1053439))

(declare-fun m!973869 () Bool)

(assert (=> d!127871 m!973869))

(declare-fun m!973871 () Bool)

(assert (=> b!1053439 m!973871))

(assert (=> b!1053392 d!127871))

(declare-fun b!1053471 () Bool)

(declare-fun e!598360 () Bool)

(declare-fun call!44756 () Bool)

(assert (=> b!1053471 (= e!598360 call!44756)))

(declare-fun bm!44753 () Bool)

(declare-fun c!106910 () Bool)

(assert (=> bm!44753 (= call!44756 (arrayNoDuplicates!0 a!3488 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!106910 (Cons!22382 (select (arr!31943 a!3488) #b00000000000000000000000000000000) Nil!22383) Nil!22383)))))

(declare-fun b!1053472 () Bool)

(declare-fun e!598359 () Bool)

(declare-fun e!598357 () Bool)

(assert (=> b!1053472 (= e!598359 e!598357)))

(declare-fun res!702576 () Bool)

(assert (=> b!1053472 (=> (not res!702576) (not e!598357))))

(declare-fun e!598358 () Bool)

(assert (=> b!1053472 (= res!702576 (not e!598358))))

(declare-fun res!702577 () Bool)

(assert (=> b!1053472 (=> (not res!702577) (not e!598358))))

(assert (=> b!1053472 (= res!702577 (validKeyInArray!0 (select (arr!31943 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053473 () Bool)

(assert (=> b!1053473 (= e!598360 call!44756)))

(declare-fun b!1053474 () Bool)

(assert (=> b!1053474 (= e!598357 e!598360)))

(assert (=> b!1053474 (= c!106910 (validKeyInArray!0 (select (arr!31943 a!3488) #b00000000000000000000000000000000)))))

(declare-fun b!1053475 () Bool)

(declare-fun contains!6187 (List!22386 (_ BitVec 64)) Bool)

(assert (=> b!1053475 (= e!598358 (contains!6187 Nil!22383 (select (arr!31943 a!3488) #b00000000000000000000000000000000)))))

(declare-fun d!127873 () Bool)

(declare-fun res!702578 () Bool)

(assert (=> d!127873 (=> res!702578 e!598359)))

(assert (=> d!127873 (= res!702578 (bvsge #b00000000000000000000000000000000 (size!32480 a!3488)))))

(assert (=> d!127873 (= (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22383) e!598359)))

(assert (= (and d!127873 (not res!702578)) b!1053472))

(assert (= (and b!1053472 res!702577) b!1053475))

(assert (= (and b!1053472 res!702576) b!1053474))

(assert (= (and b!1053474 c!106910) b!1053471))

(assert (= (and b!1053474 (not c!106910)) b!1053473))

(assert (= (or b!1053471 b!1053473) bm!44753))

(declare-fun m!973891 () Bool)

(assert (=> bm!44753 m!973891))

(declare-fun m!973893 () Bool)

(assert (=> bm!44753 m!973893))

(assert (=> b!1053472 m!973891))

(assert (=> b!1053472 m!973891))

(declare-fun m!973895 () Bool)

(assert (=> b!1053472 m!973895))

(assert (=> b!1053474 m!973891))

(assert (=> b!1053474 m!973891))

(assert (=> b!1053474 m!973895))

(assert (=> b!1053475 m!973891))

(assert (=> b!1053475 m!973891))

(declare-fun m!973897 () Bool)

(assert (=> b!1053475 m!973897))

(assert (=> b!1053397 d!127873))

(check-sat (not b!1053472) (not b!1053439) (not b!1053437) (not bm!44753) (not b!1053475) (not b!1053474) (not b!1053425))
(check-sat)
