; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124104 () Bool)

(assert start!124104)

(declare-fun b!1436470 () Bool)

(declare-fun res!969496 () Bool)

(declare-fun e!810632 () Bool)

(assert (=> b!1436470 (=> (not res!969496) (not e!810632))))

(declare-datatypes ((array!97658 0))(
  ( (array!97659 (arr!47120 (Array (_ BitVec 32) (_ BitVec 64))) (size!47671 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97658)

(declare-datatypes ((List!33801 0))(
  ( (Nil!33798) (Cons!33797 (h!35132 (_ BitVec 64)) (t!48502 List!33801)) )
))
(declare-fun arrayNoDuplicates!0 (array!97658 (_ BitVec 32) List!33801) Bool)

(assert (=> b!1436470 (= res!969496 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33798))))

(declare-fun b!1436471 () Bool)

(declare-fun res!969499 () Bool)

(assert (=> b!1436471 (=> (not res!969499) (not e!810632))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436471 (= res!969499 (validKeyInArray!0 (select (arr!47120 a!2862) i!1006)))))

(declare-fun b!1436472 () Bool)

(declare-fun res!969497 () Bool)

(assert (=> b!1436472 (=> (not res!969497) (not e!810632))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1436472 (= res!969497 (and (= (size!47671 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47671 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47671 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436473 () Bool)

(declare-fun res!969500 () Bool)

(assert (=> b!1436473 (=> (not res!969500) (not e!810632))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97658 (_ BitVec 32)) Bool)

(assert (=> b!1436473 (= res!969500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436474 () Bool)

(declare-fun lt!632083 () (_ BitVec 32))

(assert (=> b!1436474 (= e!810632 (and (bvsge mask!2687 #b00000000000000000000000000000000) (or (bvslt lt!632083 #b00000000000000000000000000000000) (bvsge lt!632083 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436474 (= lt!632083 (toIndex!0 (select (arr!47120 a!2862) j!93) mask!2687))))

(declare-fun res!969498 () Bool)

(assert (=> start!124104 (=> (not res!969498) (not e!810632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124104 (= res!969498 (validMask!0 mask!2687))))

(assert (=> start!124104 e!810632))

(assert (=> start!124104 true))

(declare-fun array_inv!36065 (array!97658) Bool)

(assert (=> start!124104 (array_inv!36065 a!2862)))

(declare-fun b!1436475 () Bool)

(declare-fun res!969495 () Bool)

(assert (=> b!1436475 (=> (not res!969495) (not e!810632))))

(assert (=> b!1436475 (= res!969495 (validKeyInArray!0 (select (arr!47120 a!2862) j!93)))))

(declare-fun b!1436476 () Bool)

(declare-fun res!969501 () Bool)

(assert (=> b!1436476 (=> (not res!969501) (not e!810632))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436476 (= res!969501 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47671 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47671 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47671 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47120 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!124104 res!969498) b!1436472))

(assert (= (and b!1436472 res!969497) b!1436471))

(assert (= (and b!1436471 res!969499) b!1436475))

(assert (= (and b!1436475 res!969495) b!1436473))

(assert (= (and b!1436473 res!969500) b!1436470))

(assert (= (and b!1436470 res!969496) b!1436476))

(assert (= (and b!1436476 res!969501) b!1436474))

(declare-fun m!1325845 () Bool)

(assert (=> b!1436475 m!1325845))

(assert (=> b!1436475 m!1325845))

(declare-fun m!1325847 () Bool)

(assert (=> b!1436475 m!1325847))

(declare-fun m!1325849 () Bool)

(assert (=> b!1436471 m!1325849))

(assert (=> b!1436471 m!1325849))

(declare-fun m!1325851 () Bool)

(assert (=> b!1436471 m!1325851))

(declare-fun m!1325853 () Bool)

(assert (=> b!1436470 m!1325853))

(declare-fun m!1325855 () Bool)

(assert (=> start!124104 m!1325855))

(declare-fun m!1325857 () Bool)

(assert (=> start!124104 m!1325857))

(declare-fun m!1325859 () Bool)

(assert (=> b!1436476 m!1325859))

(declare-fun m!1325861 () Bool)

(assert (=> b!1436476 m!1325861))

(assert (=> b!1436474 m!1325845))

(assert (=> b!1436474 m!1325845))

(declare-fun m!1325863 () Bool)

(assert (=> b!1436474 m!1325863))

(declare-fun m!1325865 () Bool)

(assert (=> b!1436473 m!1325865))

(check-sat (not b!1436470) (not b!1436471) (not start!124104) (not b!1436474) (not b!1436473) (not b!1436475))
(check-sat)
(get-model)

(declare-fun d!154509 () Bool)

(assert (=> d!154509 (= (validKeyInArray!0 (select (arr!47120 a!2862) i!1006)) (and (not (= (select (arr!47120 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47120 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436471 d!154509))

(declare-fun d!154511 () Bool)

(assert (=> d!154511 (= (validKeyInArray!0 (select (arr!47120 a!2862) j!93)) (and (not (= (select (arr!47120 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47120 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1436475 d!154511))

(declare-fun b!1436508 () Bool)

(declare-fun e!810647 () Bool)

(declare-fun contains!9895 (List!33801 (_ BitVec 64)) Bool)

(assert (=> b!1436508 (= e!810647 (contains!9895 Nil!33798 (select (arr!47120 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!154513 () Bool)

(declare-fun res!969529 () Bool)

(declare-fun e!810649 () Bool)

(assert (=> d!154513 (=> res!969529 e!810649)))

(assert (=> d!154513 (= res!969529 (bvsge #b00000000000000000000000000000000 (size!47671 a!2862)))))

(assert (=> d!154513 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33798) e!810649)))

(declare-fun b!1436509 () Bool)

(declare-fun e!810648 () Bool)

(declare-fun call!67608 () Bool)

(assert (=> b!1436509 (= e!810648 call!67608)))

(declare-fun b!1436510 () Bool)

(declare-fun e!810650 () Bool)

(assert (=> b!1436510 (= e!810649 e!810650)))

(declare-fun res!969531 () Bool)

(assert (=> b!1436510 (=> (not res!969531) (not e!810650))))

(assert (=> b!1436510 (= res!969531 (not e!810647))))

(declare-fun res!969530 () Bool)

(assert (=> b!1436510 (=> (not res!969530) (not e!810647))))

(assert (=> b!1436510 (= res!969530 (validKeyInArray!0 (select (arr!47120 a!2862) #b00000000000000000000000000000000)))))

(declare-fun bm!67605 () Bool)

(declare-fun c!132995 () Bool)

(assert (=> bm!67605 (= call!67608 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!132995 (Cons!33797 (select (arr!47120 a!2862) #b00000000000000000000000000000000) Nil!33798) Nil!33798)))))

(declare-fun b!1436511 () Bool)

(assert (=> b!1436511 (= e!810648 call!67608)))

(declare-fun b!1436512 () Bool)

(assert (=> b!1436512 (= e!810650 e!810648)))

(assert (=> b!1436512 (= c!132995 (validKeyInArray!0 (select (arr!47120 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!154513 (not res!969529)) b!1436510))

(assert (= (and b!1436510 res!969530) b!1436508))

(assert (= (and b!1436510 res!969531) b!1436512))

(assert (= (and b!1436512 c!132995) b!1436511))

(assert (= (and b!1436512 (not c!132995)) b!1436509))

(assert (= (or b!1436511 b!1436509) bm!67605))

(declare-fun m!1325889 () Bool)

(assert (=> b!1436508 m!1325889))

(assert (=> b!1436508 m!1325889))

(declare-fun m!1325891 () Bool)

(assert (=> b!1436508 m!1325891))

(assert (=> b!1436510 m!1325889))

(assert (=> b!1436510 m!1325889))

(declare-fun m!1325893 () Bool)

(assert (=> b!1436510 m!1325893))

(assert (=> bm!67605 m!1325889))

(declare-fun m!1325895 () Bool)

(assert (=> bm!67605 m!1325895))

(assert (=> b!1436512 m!1325889))

(assert (=> b!1436512 m!1325889))

(assert (=> b!1436512 m!1325893))

(assert (=> b!1436470 d!154513))

(declare-fun d!154515 () Bool)

(assert (=> d!154515 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!124104 d!154515))

(declare-fun d!154523 () Bool)

(assert (=> d!154523 (= (array_inv!36065 a!2862) (bvsge (size!47671 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!124104 d!154523))

(declare-fun b!1436545 () Bool)

(declare-fun e!810675 () Bool)

(declare-fun e!810677 () Bool)

(assert (=> b!1436545 (= e!810675 e!810677)))

(declare-fun c!133004 () Bool)

(assert (=> b!1436545 (= c!133004 (validKeyInArray!0 (select (arr!47120 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1436546 () Bool)

(declare-fun e!810676 () Bool)

(assert (=> b!1436546 (= e!810677 e!810676)))

(declare-fun lt!632119 () (_ BitVec 64))

(assert (=> b!1436546 (= lt!632119 (select (arr!47120 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48494 0))(
  ( (Unit!48495) )
))
(declare-fun lt!632118 () Unit!48494)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97658 (_ BitVec 64) (_ BitVec 32)) Unit!48494)

(assert (=> b!1436546 (= lt!632118 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632119 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1436546 (arrayContainsKey!0 a!2862 lt!632119 #b00000000000000000000000000000000)))

(declare-fun lt!632117 () Unit!48494)

(assert (=> b!1436546 (= lt!632117 lt!632118)))

(declare-fun res!969549 () Bool)

(declare-datatypes ((SeekEntryResult!11400 0))(
  ( (MissingZero!11400 (index!47991 (_ BitVec 32))) (Found!11400 (index!47992 (_ BitVec 32))) (Intermediate!11400 (undefined!12212 Bool) (index!47993 (_ BitVec 32)) (x!129716 (_ BitVec 32))) (Undefined!11400) (MissingVacant!11400 (index!47994 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97658 (_ BitVec 32)) SeekEntryResult!11400)

(assert (=> b!1436546 (= res!969549 (= (seekEntryOrOpen!0 (select (arr!47120 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11400 #b00000000000000000000000000000000)))))

(assert (=> b!1436546 (=> (not res!969549) (not e!810676))))

(declare-fun bm!67614 () Bool)

(declare-fun call!67617 () Bool)

(assert (=> bm!67614 (= call!67617 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1436547 () Bool)

(assert (=> b!1436547 (= e!810677 call!67617)))

(declare-fun d!154525 () Bool)

(declare-fun res!969550 () Bool)

(assert (=> d!154525 (=> res!969550 e!810675)))

(assert (=> d!154525 (= res!969550 (bvsge #b00000000000000000000000000000000 (size!47671 a!2862)))))

(assert (=> d!154525 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810675)))

(declare-fun b!1436548 () Bool)

(assert (=> b!1436548 (= e!810676 call!67617)))

(assert (= (and d!154525 (not res!969550)) b!1436545))

(assert (= (and b!1436545 c!133004) b!1436546))

(assert (= (and b!1436545 (not c!133004)) b!1436547))

(assert (= (and b!1436546 res!969549) b!1436548))

(assert (= (or b!1436548 b!1436547) bm!67614))

(assert (=> b!1436545 m!1325889))

(assert (=> b!1436545 m!1325889))

(assert (=> b!1436545 m!1325893))

(assert (=> b!1436546 m!1325889))

(declare-fun m!1325921 () Bool)

(assert (=> b!1436546 m!1325921))

(declare-fun m!1325923 () Bool)

(assert (=> b!1436546 m!1325923))

(assert (=> b!1436546 m!1325889))

(declare-fun m!1325925 () Bool)

(assert (=> b!1436546 m!1325925))

(declare-fun m!1325927 () Bool)

(assert (=> bm!67614 m!1325927))

(assert (=> b!1436473 d!154525))

(declare-fun d!154535 () Bool)

(declare-fun lt!632125 () (_ BitVec 32))

(declare-fun lt!632124 () (_ BitVec 32))

(assert (=> d!154535 (= lt!632125 (bvmul (bvxor lt!632124 (bvlshr lt!632124 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154535 (= lt!632124 ((_ extract 31 0) (bvand (bvxor (select (arr!47120 a!2862) j!93) (bvlshr (select (arr!47120 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154535 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!969557 (let ((h!35135 ((_ extract 31 0) (bvand (bvxor (select (arr!47120 a!2862) j!93) (bvlshr (select (arr!47120 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129714 (bvmul (bvxor h!35135 (bvlshr h!35135 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129714 (bvlshr x!129714 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!969557 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!969557 #b00000000000000000000000000000000))))))

(assert (=> d!154535 (= (toIndex!0 (select (arr!47120 a!2862) j!93) mask!2687) (bvand (bvxor lt!632125 (bvlshr lt!632125 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1436474 d!154535))

(check-sat (not bm!67614) (not bm!67605) (not b!1436510) (not b!1436546) (not b!1436512) (not b!1436508) (not b!1436545))
(check-sat)
