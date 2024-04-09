; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!116602 () Bool)

(assert start!116602)

(declare-fun i!1457 () (_ BitVec 32))

(declare-datatypes ((array!93225 0))(
  ( (array!93226 (arr!45014 (Array (_ BitVec 32) (_ BitVec 64))) (size!45565 (_ BitVec 32))) )
))
(declare-fun a!4142 () array!93225)

(declare-fun k0!2959 () (_ BitVec 64))

(declare-fun b!1374560 () Bool)

(declare-fun e!778732 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93225 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1374560 (= e!778732 (not (= (arrayCountValidKeys!0 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsub (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) #b00000000000000000000000000000001))))))

(declare-fun res!917864 () Bool)

(assert (=> start!116602 (=> (not res!917864) (not e!778732))))

(assert (=> start!116602 (= res!917864 (and (bvsge i!1457 #b00000000000000000000000000000000) (bvslt i!1457 (size!45565 a!4142))))))

(assert (=> start!116602 e!778732))

(assert (=> start!116602 true))

(declare-fun array_inv!33959 (array!93225) Bool)

(assert (=> start!116602 (array_inv!33959 a!4142)))

(declare-fun b!1374558 () Bool)

(declare-fun res!917863 () Bool)

(assert (=> b!1374558 (=> (not res!917863) (not e!778732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1374558 (= res!917863 (not (validKeyInArray!0 k0!2959)))))

(declare-fun b!1374559 () Bool)

(declare-fun res!917865 () Bool)

(assert (=> b!1374559 (=> (not res!917865) (not e!778732))))

(assert (=> b!1374559 (= res!917865 (and (bvslt (size!45565 a!4142) #b01111111111111111111111111111111) (bvsle i!1457 (size!45565 a!4142))))))

(declare-fun b!1374557 () Bool)

(declare-fun res!917862 () Bool)

(assert (=> b!1374557 (=> (not res!917862) (not e!778732))))

(assert (=> b!1374557 (= res!917862 (validKeyInArray!0 (select (arr!45014 a!4142) i!1457)))))

(assert (= (and start!116602 res!917864) b!1374557))

(assert (= (and b!1374557 res!917862) b!1374558))

(assert (= (and b!1374558 res!917863) b!1374559))

(assert (= (and b!1374559 res!917865) b!1374560))

(declare-fun m!1258155 () Bool)

(assert (=> b!1374560 m!1258155))

(declare-fun m!1258157 () Bool)

(assert (=> b!1374560 m!1258157))

(declare-fun m!1258159 () Bool)

(assert (=> b!1374560 m!1258159))

(declare-fun m!1258161 () Bool)

(assert (=> start!116602 m!1258161))

(declare-fun m!1258163 () Bool)

(assert (=> b!1374558 m!1258163))

(declare-fun m!1258165 () Bool)

(assert (=> b!1374557 m!1258165))

(assert (=> b!1374557 m!1258165))

(declare-fun m!1258167 () Bool)

(assert (=> b!1374557 m!1258167))

(check-sat (not b!1374558) (not b!1374557) (not start!116602) (not b!1374560))
(check-sat)
(get-model)

(declare-fun d!148057 () Bool)

(assert (=> d!148057 (= (validKeyInArray!0 k0!2959) (and (not (= k0!2959 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2959 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374558 d!148057))

(declare-fun d!148059 () Bool)

(assert (=> d!148059 (= (validKeyInArray!0 (select (arr!45014 a!4142) i!1457)) (and (not (= (select (arr!45014 a!4142) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45014 a!4142) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374557 d!148059))

(declare-fun d!148061 () Bool)

(assert (=> d!148061 (= (array_inv!33959 a!4142) (bvsge (size!45565 a!4142) #b00000000000000000000000000000000))))

(assert (=> start!116602 d!148061))

(declare-fun b!1374581 () Bool)

(declare-fun e!778744 () (_ BitVec 32))

(declare-fun call!65641 () (_ BitVec 32))

(assert (=> b!1374581 (= e!778744 (bvadd #b00000000000000000000000000000001 call!65641))))

(declare-fun b!1374582 () Bool)

(declare-fun e!778743 () (_ BitVec 32))

(assert (=> b!1374582 (= e!778743 #b00000000000000000000000000000000)))

(declare-fun lt!603797 () (_ BitVec 32))

(declare-fun d!148063 () Bool)

(assert (=> d!148063 (and (bvsge lt!603797 #b00000000000000000000000000000000) (bvsle lt!603797 (bvsub (size!45565 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) i!1457)))))

(assert (=> d!148063 (= lt!603797 e!778743)))

(declare-fun c!127795 () Bool)

(assert (=> d!148063 (= c!127795 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148063 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45565 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)))))))

(assert (=> d!148063 (= (arrayCountValidKeys!0 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)) i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603797)))

(declare-fun b!1374583 () Bool)

(assert (=> b!1374583 (= e!778743 e!778744)))

(declare-fun c!127794 () Bool)

(assert (=> b!1374583 (= c!127794 (validKeyInArray!0 (select (arr!45014 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) i!1457)))))

(declare-fun b!1374584 () Bool)

(assert (=> b!1374584 (= e!778744 call!65641)))

(declare-fun bm!65638 () Bool)

(assert (=> bm!65638 (= call!65641 (arrayCountValidKeys!0 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)) (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148063 c!127795) b!1374582))

(assert (= (and d!148063 (not c!127795)) b!1374583))

(assert (= (and b!1374583 c!127794) b!1374581))

(assert (= (and b!1374583 (not c!127794)) b!1374584))

(assert (= (or b!1374581 b!1374584) bm!65638))

(declare-fun m!1258183 () Bool)

(assert (=> b!1374583 m!1258183))

(assert (=> b!1374583 m!1258183))

(declare-fun m!1258185 () Bool)

(assert (=> b!1374583 m!1258185))

(declare-fun m!1258187 () Bool)

(assert (=> bm!65638 m!1258187))

(assert (=> b!1374560 d!148063))

(declare-fun b!1374585 () Bool)

(declare-fun e!778746 () (_ BitVec 32))

(declare-fun call!65642 () (_ BitVec 32))

(assert (=> b!1374585 (= e!778746 (bvadd #b00000000000000000000000000000001 call!65642))))

(declare-fun b!1374586 () Bool)

(declare-fun e!778745 () (_ BitVec 32))

(assert (=> b!1374586 (= e!778745 #b00000000000000000000000000000000)))

(declare-fun d!148069 () Bool)

(declare-fun lt!603798 () (_ BitVec 32))

(assert (=> d!148069 (and (bvsge lt!603798 #b00000000000000000000000000000000) (bvsle lt!603798 (bvsub (size!45565 a!4142) i!1457)))))

(assert (=> d!148069 (= lt!603798 e!778745)))

(declare-fun c!127797 () Bool)

(assert (=> d!148069 (= c!127797 (bvsge i!1457 (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148069 (and (bvsle i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge i!1457 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45565 a!4142)))))

(assert (=> d!148069 (= (arrayCountValidKeys!0 a!4142 i!1457 (bvadd #b00000000000000000000000000000001 i!1457)) lt!603798)))

(declare-fun b!1374587 () Bool)

(assert (=> b!1374587 (= e!778745 e!778746)))

(declare-fun c!127796 () Bool)

(assert (=> b!1374587 (= c!127796 (validKeyInArray!0 (select (arr!45014 a!4142) i!1457)))))

(declare-fun b!1374588 () Bool)

(assert (=> b!1374588 (= e!778746 call!65642)))

(declare-fun bm!65639 () Bool)

(assert (=> bm!65639 (= call!65642 (arrayCountValidKeys!0 a!4142 (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148069 c!127797) b!1374586))

(assert (= (and d!148069 (not c!127797)) b!1374587))

(assert (= (and b!1374587 c!127796) b!1374585))

(assert (= (and b!1374587 (not c!127796)) b!1374588))

(assert (= (or b!1374585 b!1374588) bm!65639))

(assert (=> b!1374587 m!1258165))

(assert (=> b!1374587 m!1258165))

(assert (=> b!1374587 m!1258167))

(declare-fun m!1258189 () Bool)

(assert (=> bm!65639 m!1258189))

(assert (=> b!1374560 d!148069))

(check-sat (not bm!65638) (not bm!65639) (not b!1374583) (not b!1374587))
(check-sat)
(get-model)

(declare-fun b!1374621 () Bool)

(declare-fun e!778764 () (_ BitVec 32))

(declare-fun call!65651 () (_ BitVec 32))

(assert (=> b!1374621 (= e!778764 (bvadd #b00000000000000000000000000000001 call!65651))))

(declare-fun b!1374622 () Bool)

(declare-fun e!778763 () (_ BitVec 32))

(assert (=> b!1374622 (= e!778763 #b00000000000000000000000000000000)))

(declare-fun d!148087 () Bool)

(declare-fun lt!603807 () (_ BitVec 32))

(assert (=> d!148087 (and (bvsge lt!603807 #b00000000000000000000000000000000) (bvsle lt!603807 (bvsub (size!45565 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) (bvadd i!1457 #b00000000000000000000000000000001))))))

(assert (=> d!148087 (= lt!603807 e!778763)))

(declare-fun c!127815 () Bool)

(assert (=> d!148087 (= c!127815 (bvsge (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148087 (and (bvsle (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd i!1457 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45565 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)))))))

(assert (=> d!148087 (= (arrayCountValidKeys!0 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)) (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603807)))

(declare-fun b!1374623 () Bool)

(assert (=> b!1374623 (= e!778763 e!778764)))

(declare-fun c!127814 () Bool)

(assert (=> b!1374623 (= c!127814 (validKeyInArray!0 (select (arr!45014 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) (bvadd i!1457 #b00000000000000000000000000000001))))))

(declare-fun b!1374624 () Bool)

(assert (=> b!1374624 (= e!778764 call!65651)))

(declare-fun bm!65648 () Bool)

(assert (=> bm!65648 (= call!65651 (arrayCountValidKeys!0 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142)) (bvadd i!1457 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148087 c!127815) b!1374622))

(assert (= (and d!148087 (not c!127815)) b!1374623))

(assert (= (and b!1374623 c!127814) b!1374621))

(assert (= (and b!1374623 (not c!127814)) b!1374624))

(assert (= (or b!1374621 b!1374624) bm!65648))

(declare-fun m!1258207 () Bool)

(assert (=> b!1374623 m!1258207))

(assert (=> b!1374623 m!1258207))

(declare-fun m!1258209 () Bool)

(assert (=> b!1374623 m!1258209))

(declare-fun m!1258211 () Bool)

(assert (=> bm!65648 m!1258211))

(assert (=> bm!65638 d!148087))

(declare-fun b!1374625 () Bool)

(declare-fun e!778766 () (_ BitVec 32))

(declare-fun call!65652 () (_ BitVec 32))

(assert (=> b!1374625 (= e!778766 (bvadd #b00000000000000000000000000000001 call!65652))))

(declare-fun b!1374626 () Bool)

(declare-fun e!778765 () (_ BitVec 32))

(assert (=> b!1374626 (= e!778765 #b00000000000000000000000000000000)))

(declare-fun d!148089 () Bool)

(declare-fun lt!603808 () (_ BitVec 32))

(assert (=> d!148089 (and (bvsge lt!603808 #b00000000000000000000000000000000) (bvsle lt!603808 (bvsub (size!45565 a!4142) (bvadd i!1457 #b00000000000000000000000000000001))))))

(assert (=> d!148089 (= lt!603808 e!778765)))

(declare-fun c!127817 () Bool)

(assert (=> d!148089 (= c!127817 (bvsge (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (=> d!148089 (and (bvsle (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)) (bvsge (bvadd i!1457 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1457) (size!45565 a!4142)))))

(assert (=> d!148089 (= (arrayCountValidKeys!0 a!4142 (bvadd i!1457 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)) lt!603808)))

(declare-fun b!1374627 () Bool)

(assert (=> b!1374627 (= e!778765 e!778766)))

(declare-fun c!127816 () Bool)

(assert (=> b!1374627 (= c!127816 (validKeyInArray!0 (select (arr!45014 a!4142) (bvadd i!1457 #b00000000000000000000000000000001))))))

(declare-fun b!1374628 () Bool)

(assert (=> b!1374628 (= e!778766 call!65652)))

(declare-fun bm!65649 () Bool)

(assert (=> bm!65649 (= call!65652 (arrayCountValidKeys!0 a!4142 (bvadd i!1457 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1457)))))

(assert (= (and d!148089 c!127817) b!1374626))

(assert (= (and d!148089 (not c!127817)) b!1374627))

(assert (= (and b!1374627 c!127816) b!1374625))

(assert (= (and b!1374627 (not c!127816)) b!1374628))

(assert (= (or b!1374625 b!1374628) bm!65649))

(declare-fun m!1258213 () Bool)

(assert (=> b!1374627 m!1258213))

(assert (=> b!1374627 m!1258213))

(declare-fun m!1258215 () Bool)

(assert (=> b!1374627 m!1258215))

(declare-fun m!1258217 () Bool)

(assert (=> bm!65649 m!1258217))

(assert (=> bm!65639 d!148089))

(declare-fun d!148091 () Bool)

(assert (=> d!148091 (= (validKeyInArray!0 (select (arr!45014 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) i!1457)) (and (not (= (select (arr!45014 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) i!1457) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45014 (array!93226 (store (arr!45014 a!4142) i!1457 k0!2959) (size!45565 a!4142))) i!1457) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1374583 d!148091))

(assert (=> b!1374587 d!148059))

(check-sat (not bm!65648) (not b!1374627) (not bm!65649) (not b!1374623))
(check-sat)
