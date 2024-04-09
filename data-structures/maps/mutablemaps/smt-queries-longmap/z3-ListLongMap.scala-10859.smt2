; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!127242 () Bool)

(assert start!127242)

(declare-fun b!1494988 () Bool)

(declare-fun e!837410 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99743 0))(
  ( (array!99744 (arr!48134 (Array (_ BitVec 32) (_ BitVec 64))) (size!48685 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99743)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1494988 (= e!837410 (or (= (select (arr!48134 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48134 a!2862) intermediateBeforeIndex!19) (select (arr!48134 a!2862) j!93))))))

(declare-fun b!1494989 () Bool)

(declare-fun e!837407 () Bool)

(declare-fun e!837411 () Bool)

(assert (=> b!1494989 (= e!837407 e!837411)))

(declare-fun c!138455 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494989 (= c!138455 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-datatypes ((SeekEntryResult!12397 0))(
  ( (MissingZero!12397 (index!51979 (_ BitVec 32))) (Found!12397 (index!51980 (_ BitVec 32))) (Intermediate!12397 (undefined!13209 Bool) (index!51981 (_ BitVec 32)) (x!133588 (_ BitVec 32))) (Undefined!12397) (MissingVacant!12397 (index!51982 (_ BitVec 32))) )
))
(declare-fun lt!651545 () SeekEntryResult!12397)

(declare-fun lt!651543 () (_ BitVec 64))

(declare-fun b!1494990 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!651547 () (_ BitVec 32))

(declare-fun lt!651542 () array!99743)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99743 (_ BitVec 32)) SeekEntryResult!12397)

(assert (=> b!1494990 (= e!837411 (= lt!651545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 lt!651543 lt!651542 mask!2687)))))

(declare-fun b!1494991 () Bool)

(declare-fun e!837406 () Bool)

(declare-fun e!837405 () Bool)

(assert (=> b!1494991 (= e!837406 (not e!837405))))

(declare-fun res!1017165 () Bool)

(assert (=> b!1494991 (=> res!1017165 e!837405)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1494991 (= res!1017165 (or (and (= (select (arr!48134 a!2862) index!646) (select (store (arr!48134 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48134 a!2862) index!646) (select (arr!48134 a!2862) j!93))) (= (select (arr!48134 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494991 e!837410))

(declare-fun res!1017150 () Bool)

(assert (=> b!1494991 (=> (not res!1017150) (not e!837410))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99743 (_ BitVec 32)) Bool)

(assert (=> b!1494991 (= res!1017150 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50082 0))(
  ( (Unit!50083) )
))
(declare-fun lt!651544 () Unit!50082)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50082)

(assert (=> b!1494991 (= lt!651544 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494992 () Bool)

(declare-fun res!1017160 () Bool)

(declare-fun e!837409 () Bool)

(assert (=> b!1494992 (=> (not res!1017160) (not e!837409))))

(declare-datatypes ((List!34815 0))(
  ( (Nil!34812) (Cons!34811 (h!36203 (_ BitVec 64)) (t!49516 List!34815)) )
))
(declare-fun arrayNoDuplicates!0 (array!99743 (_ BitVec 32) List!34815) Bool)

(assert (=> b!1494992 (= res!1017160 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34812))))

(declare-fun res!1017161 () Bool)

(assert (=> start!127242 (=> (not res!1017161) (not e!837409))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127242 (= res!1017161 (validMask!0 mask!2687))))

(assert (=> start!127242 e!837409))

(assert (=> start!127242 true))

(declare-fun array_inv!37079 (array!99743) Bool)

(assert (=> start!127242 (array_inv!37079 a!2862)))

(declare-fun b!1494993 () Bool)

(declare-fun res!1017159 () Bool)

(assert (=> b!1494993 (=> (not res!1017159) (not e!837409))))

(assert (=> b!1494993 (= res!1017159 (and (= (size!48685 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48685 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48685 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494994 () Bool)

(declare-fun res!1017162 () Bool)

(assert (=> b!1494994 (=> (not res!1017162) (not e!837410))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99743 (_ BitVec 32)) SeekEntryResult!12397)

(assert (=> b!1494994 (= res!1017162 (= (seekEntryOrOpen!0 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) (Found!12397 j!93)))))

(declare-fun b!1494995 () Bool)

(declare-fun e!837413 () Bool)

(declare-fun e!837404 () Bool)

(assert (=> b!1494995 (= e!837413 e!837404)))

(declare-fun res!1017153 () Bool)

(assert (=> b!1494995 (=> (not res!1017153) (not e!837404))))

(declare-fun lt!651546 () SeekEntryResult!12397)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494995 (= res!1017153 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651546))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494995 (= lt!651546 (Intermediate!12397 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494996 () Bool)

(declare-fun res!1017148 () Bool)

(assert (=> b!1494996 (=> (not res!1017148) (not e!837409))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1494996 (= res!1017148 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48685 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48685 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48685 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun e!837408 () Bool)

(declare-fun b!1494997 () Bool)

(assert (=> b!1494997 (= e!837408 (= lt!651545 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651543 lt!651542 mask!2687)))))

(declare-fun b!1494998 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99743 (_ BitVec 32)) SeekEntryResult!12397)

(assert (=> b!1494998 (= e!837411 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687) (seekEntryOrOpen!0 lt!651543 lt!651542 mask!2687)))))

(declare-fun b!1494999 () Bool)

(declare-fun res!1017157 () Bool)

(assert (=> b!1494999 (=> res!1017157 e!837407)))

(assert (=> b!1494999 (= res!1017157 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651546)))))

(declare-fun b!1495000 () Bool)

(declare-fun res!1017155 () Bool)

(assert (=> b!1495000 (=> (not res!1017155) (not e!837409))))

(assert (=> b!1495000 (= res!1017155 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1495001 () Bool)

(assert (=> b!1495001 (= e!837408 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687) (seekEntryOrOpen!0 lt!651543 lt!651542 mask!2687)))))

(declare-fun b!1495002 () Bool)

(declare-fun res!1017151 () Bool)

(assert (=> b!1495002 (=> (not res!1017151) (not e!837409))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1495002 (= res!1017151 (validKeyInArray!0 (select (arr!48134 a!2862) j!93)))))

(declare-fun b!1495003 () Bool)

(declare-fun res!1017158 () Bool)

(assert (=> b!1495003 (=> (not res!1017158) (not e!837404))))

(assert (=> b!1495003 (= res!1017158 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651546))))

(declare-fun b!1495004 () Bool)

(assert (=> b!1495004 (= e!837405 e!837407)))

(declare-fun res!1017152 () Bool)

(assert (=> b!1495004 (=> res!1017152 e!837407)))

(assert (=> b!1495004 (= res!1017152 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651547 #b00000000000000000000000000000000) (bvsge lt!651547 (size!48685 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1495004 (= lt!651547 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1495005 () Bool)

(declare-fun res!1017156 () Bool)

(assert (=> b!1495005 (=> (not res!1017156) (not e!837406))))

(assert (=> b!1495005 (= res!1017156 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1495006 () Bool)

(declare-fun res!1017163 () Bool)

(assert (=> b!1495006 (=> (not res!1017163) (not e!837406))))

(assert (=> b!1495006 (= res!1017163 e!837408)))

(declare-fun c!138454 () Bool)

(assert (=> b!1495006 (= c!138454 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1495007 () Bool)

(assert (=> b!1495007 (= e!837404 e!837406)))

(declare-fun res!1017154 () Bool)

(assert (=> b!1495007 (=> (not res!1017154) (not e!837406))))

(assert (=> b!1495007 (= res!1017154 (= lt!651545 (Intermediate!12397 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1495007 (= lt!651545 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651543 mask!2687) lt!651543 lt!651542 mask!2687))))

(assert (=> b!1495007 (= lt!651543 (select (store (arr!48134 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1495008 () Bool)

(declare-fun res!1017164 () Bool)

(assert (=> b!1495008 (=> (not res!1017164) (not e!837409))))

(assert (=> b!1495008 (= res!1017164 (validKeyInArray!0 (select (arr!48134 a!2862) i!1006)))))

(declare-fun b!1495009 () Bool)

(assert (=> b!1495009 (= e!837409 e!837413)))

(declare-fun res!1017149 () Bool)

(assert (=> b!1495009 (=> (not res!1017149) (not e!837413))))

(assert (=> b!1495009 (= res!1017149 (= (select (store (arr!48134 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495009 (= lt!651542 (array!99744 (store (arr!48134 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48685 a!2862)))))

(assert (= (and start!127242 res!1017161) b!1494993))

(assert (= (and b!1494993 res!1017159) b!1495008))

(assert (= (and b!1495008 res!1017164) b!1495002))

(assert (= (and b!1495002 res!1017151) b!1495000))

(assert (= (and b!1495000 res!1017155) b!1494992))

(assert (= (and b!1494992 res!1017160) b!1494996))

(assert (= (and b!1494996 res!1017148) b!1495009))

(assert (= (and b!1495009 res!1017149) b!1494995))

(assert (= (and b!1494995 res!1017153) b!1495003))

(assert (= (and b!1495003 res!1017158) b!1495007))

(assert (= (and b!1495007 res!1017154) b!1495006))

(assert (= (and b!1495006 c!138454) b!1494997))

(assert (= (and b!1495006 (not c!138454)) b!1495001))

(assert (= (and b!1495006 res!1017163) b!1495005))

(assert (= (and b!1495005 res!1017156) b!1494991))

(assert (= (and b!1494991 res!1017150) b!1494994))

(assert (= (and b!1494994 res!1017162) b!1494988))

(assert (= (and b!1494991 (not res!1017165)) b!1495004))

(assert (= (and b!1495004 (not res!1017152)) b!1494999))

(assert (= (and b!1494999 (not res!1017157)) b!1494989))

(assert (= (and b!1494989 c!138455) b!1494990))

(assert (= (and b!1494989 (not c!138455)) b!1494998))

(declare-fun m!1378615 () Bool)

(assert (=> b!1495009 m!1378615))

(declare-fun m!1378617 () Bool)

(assert (=> b!1495009 m!1378617))

(declare-fun m!1378619 () Bool)

(assert (=> b!1495002 m!1378619))

(assert (=> b!1495002 m!1378619))

(declare-fun m!1378621 () Bool)

(assert (=> b!1495002 m!1378621))

(declare-fun m!1378623 () Bool)

(assert (=> b!1495008 m!1378623))

(assert (=> b!1495008 m!1378623))

(declare-fun m!1378625 () Bool)

(assert (=> b!1495008 m!1378625))

(declare-fun m!1378627 () Bool)

(assert (=> b!1494997 m!1378627))

(declare-fun m!1378629 () Bool)

(assert (=> b!1494990 m!1378629))

(declare-fun m!1378631 () Bool)

(assert (=> b!1494998 m!1378631))

(declare-fun m!1378633 () Bool)

(assert (=> b!1494998 m!1378633))

(assert (=> b!1495003 m!1378619))

(assert (=> b!1495003 m!1378619))

(declare-fun m!1378635 () Bool)

(assert (=> b!1495003 m!1378635))

(assert (=> b!1494995 m!1378619))

(assert (=> b!1494995 m!1378619))

(declare-fun m!1378637 () Bool)

(assert (=> b!1494995 m!1378637))

(assert (=> b!1494995 m!1378637))

(assert (=> b!1494995 m!1378619))

(declare-fun m!1378639 () Bool)

(assert (=> b!1494995 m!1378639))

(declare-fun m!1378641 () Bool)

(assert (=> b!1495001 m!1378641))

(assert (=> b!1495001 m!1378633))

(declare-fun m!1378643 () Bool)

(assert (=> b!1495004 m!1378643))

(declare-fun m!1378645 () Bool)

(assert (=> b!1494991 m!1378645))

(assert (=> b!1494991 m!1378615))

(declare-fun m!1378647 () Bool)

(assert (=> b!1494991 m!1378647))

(declare-fun m!1378649 () Bool)

(assert (=> b!1494991 m!1378649))

(declare-fun m!1378651 () Bool)

(assert (=> b!1494991 m!1378651))

(assert (=> b!1494991 m!1378619))

(assert (=> b!1494999 m!1378619))

(assert (=> b!1494999 m!1378619))

(declare-fun m!1378653 () Bool)

(assert (=> b!1494999 m!1378653))

(declare-fun m!1378655 () Bool)

(assert (=> start!127242 m!1378655))

(declare-fun m!1378657 () Bool)

(assert (=> start!127242 m!1378657))

(assert (=> b!1494994 m!1378619))

(assert (=> b!1494994 m!1378619))

(declare-fun m!1378659 () Bool)

(assert (=> b!1494994 m!1378659))

(declare-fun m!1378661 () Bool)

(assert (=> b!1495007 m!1378661))

(assert (=> b!1495007 m!1378661))

(declare-fun m!1378663 () Bool)

(assert (=> b!1495007 m!1378663))

(assert (=> b!1495007 m!1378615))

(declare-fun m!1378665 () Bool)

(assert (=> b!1495007 m!1378665))

(declare-fun m!1378667 () Bool)

(assert (=> b!1494992 m!1378667))

(declare-fun m!1378669 () Bool)

(assert (=> b!1494988 m!1378669))

(assert (=> b!1494988 m!1378619))

(declare-fun m!1378671 () Bool)

(assert (=> b!1495000 m!1378671))

(check-sat (not b!1495000) (not b!1494997) (not b!1494991) (not b!1494995) (not b!1494998) (not b!1495001) (not b!1494992) (not b!1494994) (not b!1495007) (not b!1495008) (not b!1494990) (not b!1494999) (not b!1495003) (not b!1495004) (not b!1495002) (not start!127242))
(check-sat)
(get-model)

(declare-fun bm!67998 () Bool)

(declare-fun call!68001 () Bool)

(assert (=> bm!67998 (= call!68001 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!157111 () Bool)

(declare-fun res!1017224 () Bool)

(declare-fun e!837450 () Bool)

(assert (=> d!157111 (=> res!1017224 e!837450)))

(assert (=> d!157111 (= res!1017224 (bvsge #b00000000000000000000000000000000 (size!48685 a!2862)))))

(assert (=> d!157111 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837450)))

(declare-fun b!1495084 () Bool)

(declare-fun e!837452 () Bool)

(assert (=> b!1495084 (= e!837452 call!68001)))

(declare-fun b!1495085 () Bool)

(declare-fun e!837451 () Bool)

(assert (=> b!1495085 (= e!837450 e!837451)))

(declare-fun c!138464 () Bool)

(assert (=> b!1495085 (= c!138464 (validKeyInArray!0 (select (arr!48134 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495086 () Bool)

(assert (=> b!1495086 (= e!837451 call!68001)))

(declare-fun b!1495087 () Bool)

(assert (=> b!1495087 (= e!837451 e!837452)))

(declare-fun lt!651572 () (_ BitVec 64))

(assert (=> b!1495087 (= lt!651572 (select (arr!48134 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651573 () Unit!50082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99743 (_ BitVec 64) (_ BitVec 32)) Unit!50082)

(assert (=> b!1495087 (= lt!651573 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651572 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99743 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1495087 (arrayContainsKey!0 a!2862 lt!651572 #b00000000000000000000000000000000)))

(declare-fun lt!651574 () Unit!50082)

(assert (=> b!1495087 (= lt!651574 lt!651573)))

(declare-fun res!1017225 () Bool)

(assert (=> b!1495087 (= res!1017225 (= (seekEntryOrOpen!0 (select (arr!48134 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12397 #b00000000000000000000000000000000)))))

(assert (=> b!1495087 (=> (not res!1017225) (not e!837452))))

(assert (= (and d!157111 (not res!1017224)) b!1495085))

(assert (= (and b!1495085 c!138464) b!1495087))

(assert (= (and b!1495085 (not c!138464)) b!1495086))

(assert (= (and b!1495087 res!1017225) b!1495084))

(assert (= (or b!1495084 b!1495086) bm!67998))

(declare-fun m!1378731 () Bool)

(assert (=> bm!67998 m!1378731))

(declare-fun m!1378733 () Bool)

(assert (=> b!1495085 m!1378733))

(assert (=> b!1495085 m!1378733))

(declare-fun m!1378735 () Bool)

(assert (=> b!1495085 m!1378735))

(assert (=> b!1495087 m!1378733))

(declare-fun m!1378737 () Bool)

(assert (=> b!1495087 m!1378737))

(declare-fun m!1378739 () Bool)

(assert (=> b!1495087 m!1378739))

(assert (=> b!1495087 m!1378733))

(declare-fun m!1378741 () Bool)

(assert (=> b!1495087 m!1378741))

(assert (=> b!1495000 d!157111))

(declare-fun b!1495100 () Bool)

(declare-fun e!837459 () SeekEntryResult!12397)

(declare-fun e!837461 () SeekEntryResult!12397)

(assert (=> b!1495100 (= e!837459 e!837461)))

(declare-fun c!138472 () Bool)

(declare-fun lt!651580 () (_ BitVec 64))

(assert (=> b!1495100 (= c!138472 (= lt!651580 lt!651543))))

(declare-fun b!1495101 () Bool)

(assert (=> b!1495101 (= e!837461 (Found!12397 lt!651547))))

(declare-fun e!837460 () SeekEntryResult!12397)

(declare-fun b!1495102 () Bool)

(assert (=> b!1495102 (= e!837460 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651547 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687))))

(declare-fun b!1495103 () Bool)

(declare-fun c!138473 () Bool)

(assert (=> b!1495103 (= c!138473 (= lt!651580 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495103 (= e!837461 e!837460)))

(declare-fun b!1495104 () Bool)

(assert (=> b!1495104 (= e!837459 Undefined!12397)))

(declare-fun b!1495105 () Bool)

(assert (=> b!1495105 (= e!837460 (MissingVacant!12397 intermediateAfterIndex!19))))

(declare-fun d!157113 () Bool)

(declare-fun lt!651579 () SeekEntryResult!12397)

(get-info :version)

(assert (=> d!157113 (and (or ((_ is Undefined!12397) lt!651579) (not ((_ is Found!12397) lt!651579)) (and (bvsge (index!51980 lt!651579) #b00000000000000000000000000000000) (bvslt (index!51980 lt!651579) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651579) ((_ is Found!12397) lt!651579) (not ((_ is MissingVacant!12397) lt!651579)) (not (= (index!51982 lt!651579) intermediateAfterIndex!19)) (and (bvsge (index!51982 lt!651579) #b00000000000000000000000000000000) (bvslt (index!51982 lt!651579) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651579) (ite ((_ is Found!12397) lt!651579) (= (select (arr!48134 lt!651542) (index!51980 lt!651579)) lt!651543) (and ((_ is MissingVacant!12397) lt!651579) (= (index!51982 lt!651579) intermediateAfterIndex!19) (= (select (arr!48134 lt!651542) (index!51982 lt!651579)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157113 (= lt!651579 e!837459)))

(declare-fun c!138471 () Bool)

(assert (=> d!157113 (= c!138471 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157113 (= lt!651580 (select (arr!48134 lt!651542) lt!651547))))

(assert (=> d!157113 (validMask!0 mask!2687)))

(assert (=> d!157113 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687) lt!651579)))

(assert (= (and d!157113 c!138471) b!1495104))

(assert (= (and d!157113 (not c!138471)) b!1495100))

(assert (= (and b!1495100 c!138472) b!1495101))

(assert (= (and b!1495100 (not c!138472)) b!1495103))

(assert (= (and b!1495103 c!138473) b!1495105))

(assert (= (and b!1495103 (not c!138473)) b!1495102))

(declare-fun m!1378743 () Bool)

(assert (=> b!1495102 m!1378743))

(assert (=> b!1495102 m!1378743))

(declare-fun m!1378745 () Bool)

(assert (=> b!1495102 m!1378745))

(declare-fun m!1378747 () Bool)

(assert (=> d!157113 m!1378747))

(declare-fun m!1378749 () Bool)

(assert (=> d!157113 m!1378749))

(declare-fun m!1378751 () Bool)

(assert (=> d!157113 m!1378751))

(assert (=> d!157113 m!1378655))

(assert (=> b!1494998 d!157113))

(declare-fun b!1495118 () Bool)

(declare-fun e!837468 () SeekEntryResult!12397)

(declare-fun lt!651587 () SeekEntryResult!12397)

(assert (=> b!1495118 (= e!837468 (seekKeyOrZeroReturnVacant!0 (x!133588 lt!651587) (index!51981 lt!651587) (index!51981 lt!651587) lt!651543 lt!651542 mask!2687))))

(declare-fun d!157115 () Bool)

(declare-fun lt!651589 () SeekEntryResult!12397)

(assert (=> d!157115 (and (or ((_ is Undefined!12397) lt!651589) (not ((_ is Found!12397) lt!651589)) (and (bvsge (index!51980 lt!651589) #b00000000000000000000000000000000) (bvslt (index!51980 lt!651589) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651589) ((_ is Found!12397) lt!651589) (not ((_ is MissingZero!12397) lt!651589)) (and (bvsge (index!51979 lt!651589) #b00000000000000000000000000000000) (bvslt (index!51979 lt!651589) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651589) ((_ is Found!12397) lt!651589) ((_ is MissingZero!12397) lt!651589) (not ((_ is MissingVacant!12397) lt!651589)) (and (bvsge (index!51982 lt!651589) #b00000000000000000000000000000000) (bvslt (index!51982 lt!651589) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651589) (ite ((_ is Found!12397) lt!651589) (= (select (arr!48134 lt!651542) (index!51980 lt!651589)) lt!651543) (ite ((_ is MissingZero!12397) lt!651589) (= (select (arr!48134 lt!651542) (index!51979 lt!651589)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12397) lt!651589) (= (select (arr!48134 lt!651542) (index!51982 lt!651589)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837469 () SeekEntryResult!12397)

(assert (=> d!157115 (= lt!651589 e!837469)))

(declare-fun c!138480 () Bool)

(assert (=> d!157115 (= c!138480 (and ((_ is Intermediate!12397) lt!651587) (undefined!13209 lt!651587)))))

(assert (=> d!157115 (= lt!651587 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651543 mask!2687) lt!651543 lt!651542 mask!2687))))

(assert (=> d!157115 (validMask!0 mask!2687)))

(assert (=> d!157115 (= (seekEntryOrOpen!0 lt!651543 lt!651542 mask!2687) lt!651589)))

(declare-fun b!1495119 () Bool)

(declare-fun c!138481 () Bool)

(declare-fun lt!651588 () (_ BitVec 64))

(assert (=> b!1495119 (= c!138481 (= lt!651588 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837470 () SeekEntryResult!12397)

(assert (=> b!1495119 (= e!837470 e!837468)))

(declare-fun b!1495120 () Bool)

(assert (=> b!1495120 (= e!837469 e!837470)))

(assert (=> b!1495120 (= lt!651588 (select (arr!48134 lt!651542) (index!51981 lt!651587)))))

(declare-fun c!138482 () Bool)

(assert (=> b!1495120 (= c!138482 (= lt!651588 lt!651543))))

(declare-fun b!1495121 () Bool)

(assert (=> b!1495121 (= e!837470 (Found!12397 (index!51981 lt!651587)))))

(declare-fun b!1495122 () Bool)

(assert (=> b!1495122 (= e!837469 Undefined!12397)))

(declare-fun b!1495123 () Bool)

(assert (=> b!1495123 (= e!837468 (MissingZero!12397 (index!51981 lt!651587)))))

(assert (= (and d!157115 c!138480) b!1495122))

(assert (= (and d!157115 (not c!138480)) b!1495120))

(assert (= (and b!1495120 c!138482) b!1495121))

(assert (= (and b!1495120 (not c!138482)) b!1495119))

(assert (= (and b!1495119 c!138481) b!1495123))

(assert (= (and b!1495119 (not c!138481)) b!1495118))

(declare-fun m!1378753 () Bool)

(assert (=> b!1495118 m!1378753))

(assert (=> d!157115 m!1378661))

(assert (=> d!157115 m!1378663))

(declare-fun m!1378755 () Bool)

(assert (=> d!157115 m!1378755))

(assert (=> d!157115 m!1378661))

(declare-fun m!1378757 () Bool)

(assert (=> d!157115 m!1378757))

(declare-fun m!1378759 () Bool)

(assert (=> d!157115 m!1378759))

(assert (=> d!157115 m!1378655))

(declare-fun m!1378761 () Bool)

(assert (=> b!1495120 m!1378761))

(assert (=> b!1494998 d!157115))

(declare-fun b!1495142 () Bool)

(declare-fun e!837485 () SeekEntryResult!12397)

(assert (=> b!1495142 (= e!837485 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651547 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495143 () Bool)

(declare-fun lt!651595 () SeekEntryResult!12397)

(assert (=> b!1495143 (and (bvsge (index!51981 lt!651595) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651595) (size!48685 a!2862)))))

(declare-fun res!1017233 () Bool)

(assert (=> b!1495143 (= res!1017233 (= (select (arr!48134 a!2862) (index!51981 lt!651595)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837484 () Bool)

(assert (=> b!1495143 (=> res!1017233 e!837484)))

(declare-fun b!1495144 () Bool)

(declare-fun e!837483 () SeekEntryResult!12397)

(assert (=> b!1495144 (= e!837483 (Intermediate!12397 true lt!651547 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495145 () Bool)

(declare-fun e!837481 () Bool)

(assert (=> b!1495145 (= e!837481 (bvsge (x!133588 lt!651595) #b01111111111111111111111111111110))))

(declare-fun b!1495146 () Bool)

(assert (=> b!1495146 (and (bvsge (index!51981 lt!651595) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651595) (size!48685 a!2862)))))

(declare-fun res!1017234 () Bool)

(assert (=> b!1495146 (= res!1017234 (= (select (arr!48134 a!2862) (index!51981 lt!651595)) (select (arr!48134 a!2862) j!93)))))

(assert (=> b!1495146 (=> res!1017234 e!837484)))

(declare-fun e!837482 () Bool)

(assert (=> b!1495146 (= e!837482 e!837484)))

(declare-fun b!1495147 () Bool)

(assert (=> b!1495147 (= e!837481 e!837482)))

(declare-fun res!1017232 () Bool)

(assert (=> b!1495147 (= res!1017232 (and ((_ is Intermediate!12397) lt!651595) (not (undefined!13209 lt!651595)) (bvslt (x!133588 lt!651595) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651595) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651595) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495147 (=> (not res!1017232) (not e!837482))))

(declare-fun b!1495149 () Bool)

(assert (=> b!1495149 (and (bvsge (index!51981 lt!651595) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651595) (size!48685 a!2862)))))

(assert (=> b!1495149 (= e!837484 (= (select (arr!48134 a!2862) (index!51981 lt!651595)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495150 () Bool)

(assert (=> b!1495150 (= e!837483 e!837485)))

(declare-fun lt!651594 () (_ BitVec 64))

(declare-fun c!138489 () Bool)

(assert (=> b!1495150 (= c!138489 (or (= lt!651594 (select (arr!48134 a!2862) j!93)) (= (bvadd lt!651594 lt!651594) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495148 () Bool)

(assert (=> b!1495148 (= e!837485 (Intermediate!12397 false lt!651547 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!157117 () Bool)

(assert (=> d!157117 e!837481))

(declare-fun c!138491 () Bool)

(assert (=> d!157117 (= c!138491 (and ((_ is Intermediate!12397) lt!651595) (undefined!13209 lt!651595)))))

(assert (=> d!157117 (= lt!651595 e!837483)))

(declare-fun c!138490 () Bool)

(assert (=> d!157117 (= c!138490 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157117 (= lt!651594 (select (arr!48134 a!2862) lt!651547))))

(assert (=> d!157117 (validMask!0 mask!2687)))

(assert (=> d!157117 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651595)))

(assert (= (and d!157117 c!138490) b!1495144))

(assert (= (and d!157117 (not c!138490)) b!1495150))

(assert (= (and b!1495150 c!138489) b!1495148))

(assert (= (and b!1495150 (not c!138489)) b!1495142))

(assert (= (and d!157117 c!138491) b!1495145))

(assert (= (and d!157117 (not c!138491)) b!1495147))

(assert (= (and b!1495147 res!1017232) b!1495146))

(assert (= (and b!1495146 (not res!1017234)) b!1495143))

(assert (= (and b!1495143 (not res!1017233)) b!1495149))

(declare-fun m!1378763 () Bool)

(assert (=> b!1495146 m!1378763))

(declare-fun m!1378765 () Bool)

(assert (=> d!157117 m!1378765))

(assert (=> d!157117 m!1378655))

(assert (=> b!1495142 m!1378743))

(assert (=> b!1495142 m!1378743))

(assert (=> b!1495142 m!1378619))

(declare-fun m!1378767 () Bool)

(assert (=> b!1495142 m!1378767))

(assert (=> b!1495143 m!1378763))

(assert (=> b!1495149 m!1378763))

(assert (=> b!1494999 d!157117))

(declare-fun d!157121 () Bool)

(assert (=> d!157121 (= (validKeyInArray!0 (select (arr!48134 a!2862) j!93)) (and (not (= (select (arr!48134 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48134 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495002 d!157121))

(declare-fun b!1495161 () Bool)

(declare-fun e!837496 () Bool)

(declare-fun call!68004 () Bool)

(assert (=> b!1495161 (= e!837496 call!68004)))

(declare-fun bm!68001 () Bool)

(declare-fun c!138494 () Bool)

(assert (=> bm!68001 (= call!68004 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138494 (Cons!34811 (select (arr!48134 a!2862) #b00000000000000000000000000000000) Nil!34812) Nil!34812)))))

(declare-fun b!1495162 () Bool)

(declare-fun e!837495 () Bool)

(assert (=> b!1495162 (= e!837495 e!837496)))

(assert (=> b!1495162 (= c!138494 (validKeyInArray!0 (select (arr!48134 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495163 () Bool)

(assert (=> b!1495163 (= e!837496 call!68004)))

(declare-fun b!1495164 () Bool)

(declare-fun e!837494 () Bool)

(declare-fun contains!9942 (List!34815 (_ BitVec 64)) Bool)

(assert (=> b!1495164 (= e!837494 (contains!9942 Nil!34812 (select (arr!48134 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157125 () Bool)

(declare-fun res!1017242 () Bool)

(declare-fun e!837497 () Bool)

(assert (=> d!157125 (=> res!1017242 e!837497)))

(assert (=> d!157125 (= res!1017242 (bvsge #b00000000000000000000000000000000 (size!48685 a!2862)))))

(assert (=> d!157125 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34812) e!837497)))

(declare-fun b!1495165 () Bool)

(assert (=> b!1495165 (= e!837497 e!837495)))

(declare-fun res!1017243 () Bool)

(assert (=> b!1495165 (=> (not res!1017243) (not e!837495))))

(assert (=> b!1495165 (= res!1017243 (not e!837494))))

(declare-fun res!1017241 () Bool)

(assert (=> b!1495165 (=> (not res!1017241) (not e!837494))))

(assert (=> b!1495165 (= res!1017241 (validKeyInArray!0 (select (arr!48134 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!157125 (not res!1017242)) b!1495165))

(assert (= (and b!1495165 res!1017241) b!1495164))

(assert (= (and b!1495165 res!1017243) b!1495162))

(assert (= (and b!1495162 c!138494) b!1495161))

(assert (= (and b!1495162 (not c!138494)) b!1495163))

(assert (= (or b!1495161 b!1495163) bm!68001))

(assert (=> bm!68001 m!1378733))

(declare-fun m!1378769 () Bool)

(assert (=> bm!68001 m!1378769))

(assert (=> b!1495162 m!1378733))

(assert (=> b!1495162 m!1378733))

(assert (=> b!1495162 m!1378735))

(assert (=> b!1495164 m!1378733))

(assert (=> b!1495164 m!1378733))

(declare-fun m!1378771 () Bool)

(assert (=> b!1495164 m!1378771))

(assert (=> b!1495165 m!1378733))

(assert (=> b!1495165 m!1378733))

(assert (=> b!1495165 m!1378735))

(assert (=> b!1494992 d!157125))

(declare-fun b!1495166 () Bool)

(declare-fun e!837502 () SeekEntryResult!12397)

(assert (=> b!1495166 (= e!837502 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495167 () Bool)

(declare-fun lt!651597 () SeekEntryResult!12397)

(assert (=> b!1495167 (and (bvsge (index!51981 lt!651597) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651597) (size!48685 a!2862)))))

(declare-fun res!1017245 () Bool)

(assert (=> b!1495167 (= res!1017245 (= (select (arr!48134 a!2862) (index!51981 lt!651597)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837501 () Bool)

(assert (=> b!1495167 (=> res!1017245 e!837501)))

(declare-fun b!1495168 () Bool)

(declare-fun e!837500 () SeekEntryResult!12397)

(assert (=> b!1495168 (= e!837500 (Intermediate!12397 true index!646 x!665))))

(declare-fun b!1495169 () Bool)

(declare-fun e!837498 () Bool)

(assert (=> b!1495169 (= e!837498 (bvsge (x!133588 lt!651597) #b01111111111111111111111111111110))))

(declare-fun b!1495170 () Bool)

(assert (=> b!1495170 (and (bvsge (index!51981 lt!651597) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651597) (size!48685 a!2862)))))

(declare-fun res!1017246 () Bool)

(assert (=> b!1495170 (= res!1017246 (= (select (arr!48134 a!2862) (index!51981 lt!651597)) (select (arr!48134 a!2862) j!93)))))

(assert (=> b!1495170 (=> res!1017246 e!837501)))

(declare-fun e!837499 () Bool)

(assert (=> b!1495170 (= e!837499 e!837501)))

(declare-fun b!1495171 () Bool)

(assert (=> b!1495171 (= e!837498 e!837499)))

(declare-fun res!1017244 () Bool)

(assert (=> b!1495171 (= res!1017244 (and ((_ is Intermediate!12397) lt!651597) (not (undefined!13209 lt!651597)) (bvslt (x!133588 lt!651597) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651597) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651597) x!665)))))

(assert (=> b!1495171 (=> (not res!1017244) (not e!837499))))

(declare-fun b!1495173 () Bool)

(assert (=> b!1495173 (and (bvsge (index!51981 lt!651597) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651597) (size!48685 a!2862)))))

(assert (=> b!1495173 (= e!837501 (= (select (arr!48134 a!2862) (index!51981 lt!651597)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495174 () Bool)

(assert (=> b!1495174 (= e!837500 e!837502)))

(declare-fun lt!651596 () (_ BitVec 64))

(declare-fun c!138495 () Bool)

(assert (=> b!1495174 (= c!138495 (or (= lt!651596 (select (arr!48134 a!2862) j!93)) (= (bvadd lt!651596 lt!651596) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495172 () Bool)

(assert (=> b!1495172 (= e!837502 (Intermediate!12397 false index!646 x!665))))

(declare-fun d!157127 () Bool)

(assert (=> d!157127 e!837498))

(declare-fun c!138497 () Bool)

(assert (=> d!157127 (= c!138497 (and ((_ is Intermediate!12397) lt!651597) (undefined!13209 lt!651597)))))

(assert (=> d!157127 (= lt!651597 e!837500)))

(declare-fun c!138496 () Bool)

(assert (=> d!157127 (= c!138496 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157127 (= lt!651596 (select (arr!48134 a!2862) index!646))))

(assert (=> d!157127 (validMask!0 mask!2687)))

(assert (=> d!157127 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651597)))

(assert (= (and d!157127 c!138496) b!1495168))

(assert (= (and d!157127 (not c!138496)) b!1495174))

(assert (= (and b!1495174 c!138495) b!1495172))

(assert (= (and b!1495174 (not c!138495)) b!1495166))

(assert (= (and d!157127 c!138497) b!1495169))

(assert (= (and d!157127 (not c!138497)) b!1495171))

(assert (= (and b!1495171 res!1017244) b!1495170))

(assert (= (and b!1495170 (not res!1017246)) b!1495167))

(assert (= (and b!1495167 (not res!1017245)) b!1495173))

(declare-fun m!1378773 () Bool)

(assert (=> b!1495170 m!1378773))

(assert (=> d!157127 m!1378649))

(assert (=> d!157127 m!1378655))

(assert (=> b!1495166 m!1378643))

(assert (=> b!1495166 m!1378643))

(assert (=> b!1495166 m!1378619))

(declare-fun m!1378775 () Bool)

(assert (=> b!1495166 m!1378775))

(assert (=> b!1495167 m!1378773))

(assert (=> b!1495173 m!1378773))

(assert (=> b!1495003 d!157127))

(declare-fun b!1495175 () Bool)

(declare-fun e!837507 () SeekEntryResult!12397)

(assert (=> b!1495175 (= e!837507 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651547 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651543 lt!651542 mask!2687))))

(declare-fun b!1495176 () Bool)

(declare-fun lt!651599 () SeekEntryResult!12397)

(assert (=> b!1495176 (and (bvsge (index!51981 lt!651599) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651599) (size!48685 lt!651542)))))

(declare-fun res!1017248 () Bool)

(assert (=> b!1495176 (= res!1017248 (= (select (arr!48134 lt!651542) (index!51981 lt!651599)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837506 () Bool)

(assert (=> b!1495176 (=> res!1017248 e!837506)))

(declare-fun b!1495177 () Bool)

(declare-fun e!837505 () SeekEntryResult!12397)

(assert (=> b!1495177 (= e!837505 (Intermediate!12397 true lt!651547 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495178 () Bool)

(declare-fun e!837503 () Bool)

(assert (=> b!1495178 (= e!837503 (bvsge (x!133588 lt!651599) #b01111111111111111111111111111110))))

(declare-fun b!1495179 () Bool)

(assert (=> b!1495179 (and (bvsge (index!51981 lt!651599) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651599) (size!48685 lt!651542)))))

(declare-fun res!1017249 () Bool)

(assert (=> b!1495179 (= res!1017249 (= (select (arr!48134 lt!651542) (index!51981 lt!651599)) lt!651543))))

(assert (=> b!1495179 (=> res!1017249 e!837506)))

(declare-fun e!837504 () Bool)

(assert (=> b!1495179 (= e!837504 e!837506)))

(declare-fun b!1495180 () Bool)

(assert (=> b!1495180 (= e!837503 e!837504)))

(declare-fun res!1017247 () Bool)

(assert (=> b!1495180 (= res!1017247 (and ((_ is Intermediate!12397) lt!651599) (not (undefined!13209 lt!651599)) (bvslt (x!133588 lt!651599) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651599) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651599) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495180 (=> (not res!1017247) (not e!837504))))

(declare-fun b!1495182 () Bool)

(assert (=> b!1495182 (and (bvsge (index!51981 lt!651599) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651599) (size!48685 lt!651542)))))

(assert (=> b!1495182 (= e!837506 (= (select (arr!48134 lt!651542) (index!51981 lt!651599)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495183 () Bool)

(assert (=> b!1495183 (= e!837505 e!837507)))

(declare-fun c!138498 () Bool)

(declare-fun lt!651598 () (_ BitVec 64))

(assert (=> b!1495183 (= c!138498 (or (= lt!651598 lt!651543) (= (bvadd lt!651598 lt!651598) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495181 () Bool)

(assert (=> b!1495181 (= e!837507 (Intermediate!12397 false lt!651547 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!157129 () Bool)

(assert (=> d!157129 e!837503))

(declare-fun c!138500 () Bool)

(assert (=> d!157129 (= c!138500 (and ((_ is Intermediate!12397) lt!651599) (undefined!13209 lt!651599)))))

(assert (=> d!157129 (= lt!651599 e!837505)))

(declare-fun c!138499 () Bool)

(assert (=> d!157129 (= c!138499 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157129 (= lt!651598 (select (arr!48134 lt!651542) lt!651547))))

(assert (=> d!157129 (validMask!0 mask!2687)))

(assert (=> d!157129 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651547 lt!651543 lt!651542 mask!2687) lt!651599)))

(assert (= (and d!157129 c!138499) b!1495177))

(assert (= (and d!157129 (not c!138499)) b!1495183))

(assert (= (and b!1495183 c!138498) b!1495181))

(assert (= (and b!1495183 (not c!138498)) b!1495175))

(assert (= (and d!157129 c!138500) b!1495178))

(assert (= (and d!157129 (not c!138500)) b!1495180))

(assert (= (and b!1495180 res!1017247) b!1495179))

(assert (= (and b!1495179 (not res!1017249)) b!1495176))

(assert (= (and b!1495176 (not res!1017248)) b!1495182))

(declare-fun m!1378777 () Bool)

(assert (=> b!1495179 m!1378777))

(assert (=> d!157129 m!1378751))

(assert (=> d!157129 m!1378655))

(assert (=> b!1495175 m!1378743))

(assert (=> b!1495175 m!1378743))

(declare-fun m!1378779 () Bool)

(assert (=> b!1495175 m!1378779))

(assert (=> b!1495176 m!1378777))

(assert (=> b!1495182 m!1378777))

(assert (=> b!1494990 d!157129))

(declare-fun b!1495184 () Bool)

(declare-fun e!837508 () SeekEntryResult!12397)

(declare-fun e!837510 () SeekEntryResult!12397)

(assert (=> b!1495184 (= e!837508 e!837510)))

(declare-fun c!138502 () Bool)

(declare-fun lt!651601 () (_ BitVec 64))

(assert (=> b!1495184 (= c!138502 (= lt!651601 lt!651543))))

(declare-fun b!1495185 () Bool)

(assert (=> b!1495185 (= e!837510 (Found!12397 index!646))))

(declare-fun e!837509 () SeekEntryResult!12397)

(declare-fun b!1495186 () Bool)

(assert (=> b!1495186 (= e!837509 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687))))

(declare-fun b!1495187 () Bool)

(declare-fun c!138503 () Bool)

(assert (=> b!1495187 (= c!138503 (= lt!651601 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495187 (= e!837510 e!837509)))

(declare-fun b!1495188 () Bool)

(assert (=> b!1495188 (= e!837508 Undefined!12397)))

(declare-fun b!1495189 () Bool)

(assert (=> b!1495189 (= e!837509 (MissingVacant!12397 intermediateAfterIndex!19))))

(declare-fun d!157131 () Bool)

(declare-fun lt!651600 () SeekEntryResult!12397)

(assert (=> d!157131 (and (or ((_ is Undefined!12397) lt!651600) (not ((_ is Found!12397) lt!651600)) (and (bvsge (index!51980 lt!651600) #b00000000000000000000000000000000) (bvslt (index!51980 lt!651600) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651600) ((_ is Found!12397) lt!651600) (not ((_ is MissingVacant!12397) lt!651600)) (not (= (index!51982 lt!651600) intermediateAfterIndex!19)) (and (bvsge (index!51982 lt!651600) #b00000000000000000000000000000000) (bvslt (index!51982 lt!651600) (size!48685 lt!651542)))) (or ((_ is Undefined!12397) lt!651600) (ite ((_ is Found!12397) lt!651600) (= (select (arr!48134 lt!651542) (index!51980 lt!651600)) lt!651543) (and ((_ is MissingVacant!12397) lt!651600) (= (index!51982 lt!651600) intermediateAfterIndex!19) (= (select (arr!48134 lt!651542) (index!51982 lt!651600)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157131 (= lt!651600 e!837508)))

(declare-fun c!138501 () Bool)

(assert (=> d!157131 (= c!138501 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157131 (= lt!651601 (select (arr!48134 lt!651542) index!646))))

(assert (=> d!157131 (validMask!0 mask!2687)))

(assert (=> d!157131 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651543 lt!651542 mask!2687) lt!651600)))

(assert (= (and d!157131 c!138501) b!1495188))

(assert (= (and d!157131 (not c!138501)) b!1495184))

(assert (= (and b!1495184 c!138502) b!1495185))

(assert (= (and b!1495184 (not c!138502)) b!1495187))

(assert (= (and b!1495187 c!138503) b!1495189))

(assert (= (and b!1495187 (not c!138503)) b!1495186))

(assert (=> b!1495186 m!1378643))

(assert (=> b!1495186 m!1378643))

(declare-fun m!1378781 () Bool)

(assert (=> b!1495186 m!1378781))

(declare-fun m!1378783 () Bool)

(assert (=> d!157131 m!1378783))

(declare-fun m!1378785 () Bool)

(assert (=> d!157131 m!1378785))

(declare-fun m!1378787 () Bool)

(assert (=> d!157131 m!1378787))

(assert (=> d!157131 m!1378655))

(assert (=> b!1495001 d!157131))

(assert (=> b!1495001 d!157115))

(declare-fun call!68005 () Bool)

(declare-fun bm!68002 () Bool)

(assert (=> bm!68002 (= call!68005 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!157133 () Bool)

(declare-fun res!1017250 () Bool)

(declare-fun e!837511 () Bool)

(assert (=> d!157133 (=> res!1017250 e!837511)))

(assert (=> d!157133 (= res!1017250 (bvsge j!93 (size!48685 a!2862)))))

(assert (=> d!157133 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837511)))

(declare-fun b!1495190 () Bool)

(declare-fun e!837513 () Bool)

(assert (=> b!1495190 (= e!837513 call!68005)))

(declare-fun b!1495191 () Bool)

(declare-fun e!837512 () Bool)

(assert (=> b!1495191 (= e!837511 e!837512)))

(declare-fun c!138504 () Bool)

(assert (=> b!1495191 (= c!138504 (validKeyInArray!0 (select (arr!48134 a!2862) j!93)))))

(declare-fun b!1495192 () Bool)

(assert (=> b!1495192 (= e!837512 call!68005)))

(declare-fun b!1495193 () Bool)

(assert (=> b!1495193 (= e!837512 e!837513)))

(declare-fun lt!651602 () (_ BitVec 64))

(assert (=> b!1495193 (= lt!651602 (select (arr!48134 a!2862) j!93))))

(declare-fun lt!651603 () Unit!50082)

(assert (=> b!1495193 (= lt!651603 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651602 j!93))))

(assert (=> b!1495193 (arrayContainsKey!0 a!2862 lt!651602 #b00000000000000000000000000000000)))

(declare-fun lt!651604 () Unit!50082)

(assert (=> b!1495193 (= lt!651604 lt!651603)))

(declare-fun res!1017251 () Bool)

(assert (=> b!1495193 (= res!1017251 (= (seekEntryOrOpen!0 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) (Found!12397 j!93)))))

(assert (=> b!1495193 (=> (not res!1017251) (not e!837513))))

(assert (= (and d!157133 (not res!1017250)) b!1495191))

(assert (= (and b!1495191 c!138504) b!1495193))

(assert (= (and b!1495191 (not c!138504)) b!1495192))

(assert (= (and b!1495193 res!1017251) b!1495190))

(assert (= (or b!1495190 b!1495192) bm!68002))

(declare-fun m!1378789 () Bool)

(assert (=> bm!68002 m!1378789))

(assert (=> b!1495191 m!1378619))

(assert (=> b!1495191 m!1378619))

(assert (=> b!1495191 m!1378621))

(assert (=> b!1495193 m!1378619))

(declare-fun m!1378791 () Bool)

(assert (=> b!1495193 m!1378791))

(declare-fun m!1378793 () Bool)

(assert (=> b!1495193 m!1378793))

(assert (=> b!1495193 m!1378619))

(assert (=> b!1495193 m!1378659))

(assert (=> b!1494991 d!157133))

(declare-fun d!157135 () Bool)

(assert (=> d!157135 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651617 () Unit!50082)

(declare-fun choose!38 (array!99743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50082)

(assert (=> d!157135 (= lt!651617 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157135 (validMask!0 mask!2687)))

(assert (=> d!157135 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651617)))

(declare-fun bs!42905 () Bool)

(assert (= bs!42905 d!157135))

(assert (=> bs!42905 m!1378651))

(declare-fun m!1378795 () Bool)

(assert (=> bs!42905 m!1378795))

(assert (=> bs!42905 m!1378655))

(assert (=> b!1494991 d!157135))

(declare-fun lt!651618 () SeekEntryResult!12397)

(declare-fun e!837530 () SeekEntryResult!12397)

(declare-fun b!1495224 () Bool)

(assert (=> b!1495224 (= e!837530 (seekKeyOrZeroReturnVacant!0 (x!133588 lt!651618) (index!51981 lt!651618) (index!51981 lt!651618) (select (arr!48134 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!157137 () Bool)

(declare-fun lt!651620 () SeekEntryResult!12397)

(assert (=> d!157137 (and (or ((_ is Undefined!12397) lt!651620) (not ((_ is Found!12397) lt!651620)) (and (bvsge (index!51980 lt!651620) #b00000000000000000000000000000000) (bvslt (index!51980 lt!651620) (size!48685 a!2862)))) (or ((_ is Undefined!12397) lt!651620) ((_ is Found!12397) lt!651620) (not ((_ is MissingZero!12397) lt!651620)) (and (bvsge (index!51979 lt!651620) #b00000000000000000000000000000000) (bvslt (index!51979 lt!651620) (size!48685 a!2862)))) (or ((_ is Undefined!12397) lt!651620) ((_ is Found!12397) lt!651620) ((_ is MissingZero!12397) lt!651620) (not ((_ is MissingVacant!12397) lt!651620)) (and (bvsge (index!51982 lt!651620) #b00000000000000000000000000000000) (bvslt (index!51982 lt!651620) (size!48685 a!2862)))) (or ((_ is Undefined!12397) lt!651620) (ite ((_ is Found!12397) lt!651620) (= (select (arr!48134 a!2862) (index!51980 lt!651620)) (select (arr!48134 a!2862) j!93)) (ite ((_ is MissingZero!12397) lt!651620) (= (select (arr!48134 a!2862) (index!51979 lt!651620)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!12397) lt!651620) (= (select (arr!48134 a!2862) (index!51982 lt!651620)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837531 () SeekEntryResult!12397)

(assert (=> d!157137 (= lt!651620 e!837531)))

(declare-fun c!138517 () Bool)

(assert (=> d!157137 (= c!138517 (and ((_ is Intermediate!12397) lt!651618) (undefined!13209 lt!651618)))))

(assert (=> d!157137 (= lt!651618 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157137 (validMask!0 mask!2687)))

(assert (=> d!157137 (= (seekEntryOrOpen!0 (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651620)))

(declare-fun b!1495225 () Bool)

(declare-fun c!138518 () Bool)

(declare-fun lt!651619 () (_ BitVec 64))

(assert (=> b!1495225 (= c!138518 (= lt!651619 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837532 () SeekEntryResult!12397)

(assert (=> b!1495225 (= e!837532 e!837530)))

(declare-fun b!1495226 () Bool)

(assert (=> b!1495226 (= e!837531 e!837532)))

(assert (=> b!1495226 (= lt!651619 (select (arr!48134 a!2862) (index!51981 lt!651618)))))

(declare-fun c!138519 () Bool)

(assert (=> b!1495226 (= c!138519 (= lt!651619 (select (arr!48134 a!2862) j!93)))))

(declare-fun b!1495227 () Bool)

(assert (=> b!1495227 (= e!837532 (Found!12397 (index!51981 lt!651618)))))

(declare-fun b!1495228 () Bool)

(assert (=> b!1495228 (= e!837531 Undefined!12397)))

(declare-fun b!1495229 () Bool)

(assert (=> b!1495229 (= e!837530 (MissingZero!12397 (index!51981 lt!651618)))))

(assert (= (and d!157137 c!138517) b!1495228))

(assert (= (and d!157137 (not c!138517)) b!1495226))

(assert (= (and b!1495226 c!138519) b!1495227))

(assert (= (and b!1495226 (not c!138519)) b!1495225))

(assert (= (and b!1495225 c!138518) b!1495229))

(assert (= (and b!1495225 (not c!138518)) b!1495224))

(assert (=> b!1495224 m!1378619))

(declare-fun m!1378797 () Bool)

(assert (=> b!1495224 m!1378797))

(assert (=> d!157137 m!1378637))

(assert (=> d!157137 m!1378619))

(assert (=> d!157137 m!1378639))

(declare-fun m!1378799 () Bool)

(assert (=> d!157137 m!1378799))

(assert (=> d!157137 m!1378619))

(assert (=> d!157137 m!1378637))

(declare-fun m!1378801 () Bool)

(assert (=> d!157137 m!1378801))

(declare-fun m!1378803 () Bool)

(assert (=> d!157137 m!1378803))

(assert (=> d!157137 m!1378655))

(declare-fun m!1378805 () Bool)

(assert (=> b!1495226 m!1378805))

(assert (=> b!1494994 d!157137))

(declare-fun d!157139 () Bool)

(assert (=> d!157139 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127242 d!157139))

(declare-fun d!157145 () Bool)

(assert (=> d!157145 (= (array_inv!37079 a!2862) (bvsge (size!48685 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127242 d!157145))

(declare-fun e!837545 () SeekEntryResult!12397)

(declare-fun b!1495245 () Bool)

(assert (=> b!1495245 (= e!837545 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495246 () Bool)

(declare-fun lt!651627 () SeekEntryResult!12397)

(assert (=> b!1495246 (and (bvsge (index!51981 lt!651627) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651627) (size!48685 a!2862)))))

(declare-fun res!1017262 () Bool)

(assert (=> b!1495246 (= res!1017262 (= (select (arr!48134 a!2862) (index!51981 lt!651627)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837544 () Bool)

(assert (=> b!1495246 (=> res!1017262 e!837544)))

(declare-fun e!837543 () SeekEntryResult!12397)

(declare-fun b!1495247 () Bool)

(assert (=> b!1495247 (= e!837543 (Intermediate!12397 true (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495248 () Bool)

(declare-fun e!837541 () Bool)

(assert (=> b!1495248 (= e!837541 (bvsge (x!133588 lt!651627) #b01111111111111111111111111111110))))

(declare-fun b!1495249 () Bool)

(assert (=> b!1495249 (and (bvsge (index!51981 lt!651627) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651627) (size!48685 a!2862)))))

(declare-fun res!1017263 () Bool)

(assert (=> b!1495249 (= res!1017263 (= (select (arr!48134 a!2862) (index!51981 lt!651627)) (select (arr!48134 a!2862) j!93)))))

(assert (=> b!1495249 (=> res!1017263 e!837544)))

(declare-fun e!837542 () Bool)

(assert (=> b!1495249 (= e!837542 e!837544)))

(declare-fun b!1495250 () Bool)

(assert (=> b!1495250 (= e!837541 e!837542)))

(declare-fun res!1017261 () Bool)

(assert (=> b!1495250 (= res!1017261 (and ((_ is Intermediate!12397) lt!651627) (not (undefined!13209 lt!651627)) (bvslt (x!133588 lt!651627) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651627) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651627) #b00000000000000000000000000000000)))))

(assert (=> b!1495250 (=> (not res!1017261) (not e!837542))))

(declare-fun b!1495252 () Bool)

(assert (=> b!1495252 (and (bvsge (index!51981 lt!651627) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651627) (size!48685 a!2862)))))

(assert (=> b!1495252 (= e!837544 (= (select (arr!48134 a!2862) (index!51981 lt!651627)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495253 () Bool)

(assert (=> b!1495253 (= e!837543 e!837545)))

(declare-fun lt!651626 () (_ BitVec 64))

(declare-fun c!138526 () Bool)

(assert (=> b!1495253 (= c!138526 (or (= lt!651626 (select (arr!48134 a!2862) j!93)) (= (bvadd lt!651626 lt!651626) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495251 () Bool)

(assert (=> b!1495251 (= e!837545 (Intermediate!12397 false (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!157147 () Bool)

(assert (=> d!157147 e!837541))

(declare-fun c!138528 () Bool)

(assert (=> d!157147 (= c!138528 (and ((_ is Intermediate!12397) lt!651627) (undefined!13209 lt!651627)))))

(assert (=> d!157147 (= lt!651627 e!837543)))

(declare-fun c!138527 () Bool)

(assert (=> d!157147 (= c!138527 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!157147 (= lt!651626 (select (arr!48134 a!2862) (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687)))))

(assert (=> d!157147 (validMask!0 mask!2687)))

(assert (=> d!157147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) (select (arr!48134 a!2862) j!93) a!2862 mask!2687) lt!651627)))

(assert (= (and d!157147 c!138527) b!1495247))

(assert (= (and d!157147 (not c!138527)) b!1495253))

(assert (= (and b!1495253 c!138526) b!1495251))

(assert (= (and b!1495253 (not c!138526)) b!1495245))

(assert (= (and d!157147 c!138528) b!1495248))

(assert (= (and d!157147 (not c!138528)) b!1495250))

(assert (= (and b!1495250 res!1017261) b!1495249))

(assert (= (and b!1495249 (not res!1017263)) b!1495246))

(assert (= (and b!1495246 (not res!1017262)) b!1495252))

(declare-fun m!1378825 () Bool)

(assert (=> b!1495249 m!1378825))

(assert (=> d!157147 m!1378637))

(declare-fun m!1378827 () Bool)

(assert (=> d!157147 m!1378827))

(assert (=> d!157147 m!1378655))

(assert (=> b!1495245 m!1378637))

(declare-fun m!1378829 () Bool)

(assert (=> b!1495245 m!1378829))

(assert (=> b!1495245 m!1378829))

(assert (=> b!1495245 m!1378619))

(declare-fun m!1378831 () Bool)

(assert (=> b!1495245 m!1378831))

(assert (=> b!1495246 m!1378825))

(assert (=> b!1495252 m!1378825))

(assert (=> b!1494995 d!157147))

(declare-fun d!157149 () Bool)

(declare-fun lt!651637 () (_ BitVec 32))

(declare-fun lt!651636 () (_ BitVec 32))

(assert (=> d!157149 (= lt!651637 (bvmul (bvxor lt!651636 (bvlshr lt!651636 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157149 (= lt!651636 ((_ extract 31 0) (bvand (bvxor (select (arr!48134 a!2862) j!93) (bvlshr (select (arr!48134 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157149 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017264 (let ((h!36205 ((_ extract 31 0) (bvand (bvxor (select (arr!48134 a!2862) j!93) (bvlshr (select (arr!48134 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133593 (bvmul (bvxor h!36205 (bvlshr h!36205 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133593 (bvlshr x!133593 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017264 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017264 #b00000000000000000000000000000000))))))

(assert (=> d!157149 (= (toIndex!0 (select (arr!48134 a!2862) j!93) mask!2687) (bvand (bvxor lt!651637 (bvlshr lt!651637 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1494995 d!157149))

(declare-fun d!157151 () Bool)

(declare-fun lt!651646 () (_ BitVec 32))

(assert (=> d!157151 (and (bvsge lt!651646 #b00000000000000000000000000000000) (bvslt lt!651646 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157151 (= lt!651646 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157151 (validMask!0 mask!2687)))

(assert (=> d!157151 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651646)))

(declare-fun bs!42906 () Bool)

(assert (= bs!42906 d!157151))

(declare-fun m!1378841 () Bool)

(assert (=> bs!42906 m!1378841))

(assert (=> bs!42906 m!1378655))

(assert (=> b!1495004 d!157151))

(declare-fun e!837567 () SeekEntryResult!12397)

(declare-fun b!1495284 () Bool)

(assert (=> b!1495284 (= e!837567 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651543 lt!651542 mask!2687))))

(declare-fun b!1495285 () Bool)

(declare-fun lt!651648 () SeekEntryResult!12397)

(assert (=> b!1495285 (and (bvsge (index!51981 lt!651648) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651648) (size!48685 lt!651542)))))

(declare-fun res!1017268 () Bool)

(assert (=> b!1495285 (= res!1017268 (= (select (arr!48134 lt!651542) (index!51981 lt!651648)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837566 () Bool)

(assert (=> b!1495285 (=> res!1017268 e!837566)))

(declare-fun b!1495286 () Bool)

(declare-fun e!837565 () SeekEntryResult!12397)

(assert (=> b!1495286 (= e!837565 (Intermediate!12397 true index!646 x!665))))

(declare-fun b!1495287 () Bool)

(declare-fun e!837563 () Bool)

(assert (=> b!1495287 (= e!837563 (bvsge (x!133588 lt!651648) #b01111111111111111111111111111110))))

(declare-fun b!1495288 () Bool)

(assert (=> b!1495288 (and (bvsge (index!51981 lt!651648) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651648) (size!48685 lt!651542)))))

(declare-fun res!1017269 () Bool)

(assert (=> b!1495288 (= res!1017269 (= (select (arr!48134 lt!651542) (index!51981 lt!651648)) lt!651543))))

(assert (=> b!1495288 (=> res!1017269 e!837566)))

(declare-fun e!837564 () Bool)

(assert (=> b!1495288 (= e!837564 e!837566)))

(declare-fun b!1495289 () Bool)

(assert (=> b!1495289 (= e!837563 e!837564)))

(declare-fun res!1017267 () Bool)

(assert (=> b!1495289 (= res!1017267 (and ((_ is Intermediate!12397) lt!651648) (not (undefined!13209 lt!651648)) (bvslt (x!133588 lt!651648) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651648) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651648) x!665)))))

(assert (=> b!1495289 (=> (not res!1017267) (not e!837564))))

(declare-fun b!1495291 () Bool)

(assert (=> b!1495291 (and (bvsge (index!51981 lt!651648) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651648) (size!48685 lt!651542)))))

(assert (=> b!1495291 (= e!837566 (= (select (arr!48134 lt!651542) (index!51981 lt!651648)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495292 () Bool)

(assert (=> b!1495292 (= e!837565 e!837567)))

(declare-fun c!138544 () Bool)

(declare-fun lt!651647 () (_ BitVec 64))

(assert (=> b!1495292 (= c!138544 (or (= lt!651647 lt!651543) (= (bvadd lt!651647 lt!651647) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495290 () Bool)

(assert (=> b!1495290 (= e!837567 (Intermediate!12397 false index!646 x!665))))

(declare-fun d!157155 () Bool)

(assert (=> d!157155 e!837563))

(declare-fun c!138546 () Bool)

(assert (=> d!157155 (= c!138546 (and ((_ is Intermediate!12397) lt!651648) (undefined!13209 lt!651648)))))

(assert (=> d!157155 (= lt!651648 e!837565)))

(declare-fun c!138545 () Bool)

(assert (=> d!157155 (= c!138545 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157155 (= lt!651647 (select (arr!48134 lt!651542) index!646))))

(assert (=> d!157155 (validMask!0 mask!2687)))

(assert (=> d!157155 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651543 lt!651542 mask!2687) lt!651648)))

(assert (= (and d!157155 c!138545) b!1495286))

(assert (= (and d!157155 (not c!138545)) b!1495292))

(assert (= (and b!1495292 c!138544) b!1495290))

(assert (= (and b!1495292 (not c!138544)) b!1495284))

(assert (= (and d!157155 c!138546) b!1495287))

(assert (= (and d!157155 (not c!138546)) b!1495289))

(assert (= (and b!1495289 res!1017267) b!1495288))

(assert (= (and b!1495288 (not res!1017269)) b!1495285))

(assert (= (and b!1495285 (not res!1017268)) b!1495291))

(declare-fun m!1378843 () Bool)

(assert (=> b!1495288 m!1378843))

(assert (=> d!157155 m!1378787))

(assert (=> d!157155 m!1378655))

(assert (=> b!1495284 m!1378643))

(assert (=> b!1495284 m!1378643))

(declare-fun m!1378845 () Bool)

(assert (=> b!1495284 m!1378845))

(assert (=> b!1495285 m!1378843))

(assert (=> b!1495291 m!1378843))

(assert (=> b!1494997 d!157155))

(declare-fun d!157157 () Bool)

(assert (=> d!157157 (= (validKeyInArray!0 (select (arr!48134 a!2862) i!1006)) (and (not (= (select (arr!48134 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48134 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1495008 d!157157))

(declare-fun e!837574 () SeekEntryResult!12397)

(declare-fun b!1495299 () Bool)

(assert (=> b!1495299 (= e!837574 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651543 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651543 lt!651542 mask!2687))))

(declare-fun b!1495300 () Bool)

(declare-fun lt!651650 () SeekEntryResult!12397)

(assert (=> b!1495300 (and (bvsge (index!51981 lt!651650) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651650) (size!48685 lt!651542)))))

(declare-fun res!1017275 () Bool)

(assert (=> b!1495300 (= res!1017275 (= (select (arr!48134 lt!651542) (index!51981 lt!651650)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837573 () Bool)

(assert (=> b!1495300 (=> res!1017275 e!837573)))

(declare-fun b!1495301 () Bool)

(declare-fun e!837572 () SeekEntryResult!12397)

(assert (=> b!1495301 (= e!837572 (Intermediate!12397 true (toIndex!0 lt!651543 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495302 () Bool)

(declare-fun e!837570 () Bool)

(assert (=> b!1495302 (= e!837570 (bvsge (x!133588 lt!651650) #b01111111111111111111111111111110))))

(declare-fun b!1495303 () Bool)

(assert (=> b!1495303 (and (bvsge (index!51981 lt!651650) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651650) (size!48685 lt!651542)))))

(declare-fun res!1017276 () Bool)

(assert (=> b!1495303 (= res!1017276 (= (select (arr!48134 lt!651542) (index!51981 lt!651650)) lt!651543))))

(assert (=> b!1495303 (=> res!1017276 e!837573)))

(declare-fun e!837571 () Bool)

(assert (=> b!1495303 (= e!837571 e!837573)))

(declare-fun b!1495304 () Bool)

(assert (=> b!1495304 (= e!837570 e!837571)))

(declare-fun res!1017274 () Bool)

(assert (=> b!1495304 (= res!1017274 (and ((_ is Intermediate!12397) lt!651650) (not (undefined!13209 lt!651650)) (bvslt (x!133588 lt!651650) #b01111111111111111111111111111110) (bvsge (x!133588 lt!651650) #b00000000000000000000000000000000) (bvsge (x!133588 lt!651650) #b00000000000000000000000000000000)))))

(assert (=> b!1495304 (=> (not res!1017274) (not e!837571))))

(declare-fun b!1495306 () Bool)

(assert (=> b!1495306 (and (bvsge (index!51981 lt!651650) #b00000000000000000000000000000000) (bvslt (index!51981 lt!651650) (size!48685 lt!651542)))))

(assert (=> b!1495306 (= e!837573 (= (select (arr!48134 lt!651542) (index!51981 lt!651650)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495307 () Bool)

(assert (=> b!1495307 (= e!837572 e!837574)))

(declare-fun c!138547 () Bool)

(declare-fun lt!651649 () (_ BitVec 64))

(assert (=> b!1495307 (= c!138547 (or (= lt!651649 lt!651543) (= (bvadd lt!651649 lt!651649) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495305 () Bool)

(assert (=> b!1495305 (= e!837574 (Intermediate!12397 false (toIndex!0 lt!651543 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!157159 () Bool)

(assert (=> d!157159 e!837570))

(declare-fun c!138549 () Bool)

(assert (=> d!157159 (= c!138549 (and ((_ is Intermediate!12397) lt!651650) (undefined!13209 lt!651650)))))

(assert (=> d!157159 (= lt!651650 e!837572)))

(declare-fun c!138548 () Bool)

(assert (=> d!157159 (= c!138548 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!157159 (= lt!651649 (select (arr!48134 lt!651542) (toIndex!0 lt!651543 mask!2687)))))

(assert (=> d!157159 (validMask!0 mask!2687)))

(assert (=> d!157159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651543 mask!2687) lt!651543 lt!651542 mask!2687) lt!651650)))

(assert (= (and d!157159 c!138548) b!1495301))

(assert (= (and d!157159 (not c!138548)) b!1495307))

(assert (= (and b!1495307 c!138547) b!1495305))

(assert (= (and b!1495307 (not c!138547)) b!1495299))

(assert (= (and d!157159 c!138549) b!1495302))

(assert (= (and d!157159 (not c!138549)) b!1495304))

(assert (= (and b!1495304 res!1017274) b!1495303))

(assert (= (and b!1495303 (not res!1017276)) b!1495300))

(assert (= (and b!1495300 (not res!1017275)) b!1495306))

(declare-fun m!1378847 () Bool)

(assert (=> b!1495303 m!1378847))

(assert (=> d!157159 m!1378661))

(declare-fun m!1378849 () Bool)

(assert (=> d!157159 m!1378849))

(assert (=> d!157159 m!1378655))

(assert (=> b!1495299 m!1378661))

(declare-fun m!1378851 () Bool)

(assert (=> b!1495299 m!1378851))

(assert (=> b!1495299 m!1378851))

(declare-fun m!1378853 () Bool)

(assert (=> b!1495299 m!1378853))

(assert (=> b!1495300 m!1378847))

(assert (=> b!1495306 m!1378847))

(assert (=> b!1495007 d!157159))

(declare-fun d!157161 () Bool)

(declare-fun lt!651652 () (_ BitVec 32))

(declare-fun lt!651651 () (_ BitVec 32))

(assert (=> d!157161 (= lt!651652 (bvmul (bvxor lt!651651 (bvlshr lt!651651 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157161 (= lt!651651 ((_ extract 31 0) (bvand (bvxor lt!651543 (bvlshr lt!651543 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157161 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017264 (let ((h!36205 ((_ extract 31 0) (bvand (bvxor lt!651543 (bvlshr lt!651543 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133593 (bvmul (bvxor h!36205 (bvlshr h!36205 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133593 (bvlshr x!133593 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017264 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017264 #b00000000000000000000000000000000))))))

(assert (=> d!157161 (= (toIndex!0 lt!651543 mask!2687) (bvand (bvxor lt!651652 (bvlshr lt!651652 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1495007 d!157161))

(check-sat (not b!1495245) (not b!1495087) (not b!1495164) (not d!157151) (not b!1495165) (not d!157155) (not b!1495224) (not b!1495085) (not b!1495191) (not d!157127) (not d!157115) (not b!1495118) (not b!1495284) (not d!157137) (not b!1495142) (not b!1495193) (not d!157147) (not d!157113) (not b!1495299) (not bm!67998) (not b!1495175) (not bm!68002) (not d!157159) (not b!1495186) (not d!157135) (not b!1495102) (not bm!68001) (not b!1495162) (not d!157117) (not d!157129) (not d!157131) (not b!1495166))
(check-sat)
