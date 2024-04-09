; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119250 () Bool)

(assert start!119250)

(declare-fun b!1390495 () Bool)

(declare-fun res!930765 () Bool)

(declare-fun e!787463 () Bool)

(assert (=> b!1390495 (=> (not res!930765) (not e!787463))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95105 0))(
  ( (array!95106 (arr!45914 (Array (_ BitVec 32) (_ BitVec 64))) (size!46465 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95105)

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1390495 (= res!930765 (and (= (size!46465 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46465 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46465 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1390496 () Bool)

(declare-fun e!787461 () Bool)

(declare-datatypes ((SeekEntryResult!10253 0))(
  ( (MissingZero!10253 (index!43382 (_ BitVec 32))) (Found!10253 (index!43383 (_ BitVec 32))) (Intermediate!10253 (undefined!11065 Bool) (index!43384 (_ BitVec 32)) (x!125062 (_ BitVec 32))) (Undefined!10253) (MissingVacant!10253 (index!43385 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95105 (_ BitVec 32)) SeekEntryResult!10253)

(assert (=> b!1390496 (= e!787461 (= (seekEntryOrOpen!0 (select (arr!45914 a!2901) j!112) a!2901 mask!2840) (Found!10253 j!112)))))

(declare-fun b!1390497 () Bool)

(declare-fun res!930769 () Bool)

(assert (=> b!1390497 (=> (not res!930769) (not e!787463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1390497 (= res!930769 (validKeyInArray!0 (select (arr!45914 a!2901) i!1037)))))

(declare-fun res!930771 () Bool)

(assert (=> start!119250 (=> (not res!930771) (not e!787463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119250 (= res!930771 (validMask!0 mask!2840))))

(assert (=> start!119250 e!787463))

(assert (=> start!119250 true))

(declare-fun array_inv!34859 (array!95105) Bool)

(assert (=> start!119250 (array_inv!34859 a!2901)))

(declare-fun b!1390498 () Bool)

(declare-fun lt!610804 () SeekEntryResult!10253)

(get-info :version)

(assert (=> b!1390498 (= e!787463 (not (or (not ((_ is Intermediate!10253) lt!610804)) (undefined!11065 lt!610804) (bvslt mask!2840 #b00000000000000000000000000000000) (bvsle mask!2840 #b00111111111111111111111111111111))))))

(assert (=> b!1390498 e!787461))

(declare-fun res!930768 () Bool)

(assert (=> b!1390498 (=> (not res!930768) (not e!787461))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95105 (_ BitVec 32)) Bool)

(assert (=> b!1390498 (= res!930768 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46460 0))(
  ( (Unit!46461) )
))
(declare-fun lt!610803 () Unit!46460)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46460)

(assert (=> b!1390498 (= lt!610803 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95105 (_ BitVec 32)) SeekEntryResult!10253)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390498 (= lt!610804 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) (select (arr!45914 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390499 () Bool)

(declare-fun res!930766 () Bool)

(assert (=> b!1390499 (=> (not res!930766) (not e!787463))))

(assert (=> b!1390499 (= res!930766 (validKeyInArray!0 (select (arr!45914 a!2901) j!112)))))

(declare-fun b!1390500 () Bool)

(declare-fun res!930767 () Bool)

(assert (=> b!1390500 (=> (not res!930767) (not e!787463))))

(assert (=> b!1390500 (= res!930767 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1390501 () Bool)

(declare-fun res!930770 () Bool)

(assert (=> b!1390501 (=> (not res!930770) (not e!787463))))

(declare-datatypes ((List!32613 0))(
  ( (Nil!32610) (Cons!32609 (h!33827 (_ BitVec 64)) (t!47314 List!32613)) )
))
(declare-fun arrayNoDuplicates!0 (array!95105 (_ BitVec 32) List!32613) Bool)

(assert (=> b!1390501 (= res!930770 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32610))))

(assert (= (and start!119250 res!930771) b!1390495))

(assert (= (and b!1390495 res!930765) b!1390497))

(assert (= (and b!1390497 res!930769) b!1390499))

(assert (= (and b!1390499 res!930766) b!1390500))

(assert (= (and b!1390500 res!930767) b!1390501))

(assert (= (and b!1390501 res!930770) b!1390498))

(assert (= (and b!1390498 res!930768) b!1390496))

(declare-fun m!1276435 () Bool)

(assert (=> b!1390497 m!1276435))

(assert (=> b!1390497 m!1276435))

(declare-fun m!1276437 () Bool)

(assert (=> b!1390497 m!1276437))

(declare-fun m!1276439 () Bool)

(assert (=> b!1390498 m!1276439))

(declare-fun m!1276441 () Bool)

(assert (=> b!1390498 m!1276441))

(assert (=> b!1390498 m!1276439))

(declare-fun m!1276443 () Bool)

(assert (=> b!1390498 m!1276443))

(assert (=> b!1390498 m!1276441))

(assert (=> b!1390498 m!1276439))

(declare-fun m!1276445 () Bool)

(assert (=> b!1390498 m!1276445))

(declare-fun m!1276447 () Bool)

(assert (=> b!1390498 m!1276447))

(declare-fun m!1276449 () Bool)

(assert (=> b!1390500 m!1276449))

(assert (=> b!1390496 m!1276439))

(assert (=> b!1390496 m!1276439))

(declare-fun m!1276451 () Bool)

(assert (=> b!1390496 m!1276451))

(assert (=> b!1390499 m!1276439))

(assert (=> b!1390499 m!1276439))

(declare-fun m!1276453 () Bool)

(assert (=> b!1390499 m!1276453))

(declare-fun m!1276455 () Bool)

(assert (=> b!1390501 m!1276455))

(declare-fun m!1276457 () Bool)

(assert (=> start!119250 m!1276457))

(declare-fun m!1276459 () Bool)

(assert (=> start!119250 m!1276459))

(check-sat (not b!1390498) (not start!119250) (not b!1390500) (not b!1390501) (not b!1390499) (not b!1390497) (not b!1390496))
(check-sat)
(get-model)

(declare-fun d!150129 () Bool)

(assert (=> d!150129 (= (validKeyInArray!0 (select (arr!45914 a!2901) i!1037)) (and (not (= (select (arr!45914 a!2901) i!1037) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45914 a!2901) i!1037) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390497 d!150129))

(declare-fun b!1390551 () Bool)

(declare-fun e!787492 () SeekEntryResult!10253)

(declare-fun lt!610830 () SeekEntryResult!10253)

(assert (=> b!1390551 (= e!787492 (Found!10253 (index!43384 lt!610830)))))

(declare-fun b!1390552 () Bool)

(declare-fun e!787490 () SeekEntryResult!10253)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95105 (_ BitVec 32)) SeekEntryResult!10253)

(assert (=> b!1390552 (= e!787490 (seekKeyOrZeroReturnVacant!0 (x!125062 lt!610830) (index!43384 lt!610830) (index!43384 lt!610830) (select (arr!45914 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390553 () Bool)

(declare-fun c!129323 () Bool)

(declare-fun lt!610832 () (_ BitVec 64))

(assert (=> b!1390553 (= c!129323 (= lt!610832 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1390553 (= e!787492 e!787490)))

(declare-fun d!150131 () Bool)

(declare-fun lt!610831 () SeekEntryResult!10253)

(assert (=> d!150131 (and (or ((_ is Undefined!10253) lt!610831) (not ((_ is Found!10253) lt!610831)) (and (bvsge (index!43383 lt!610831) #b00000000000000000000000000000000) (bvslt (index!43383 lt!610831) (size!46465 a!2901)))) (or ((_ is Undefined!10253) lt!610831) ((_ is Found!10253) lt!610831) (not ((_ is MissingZero!10253) lt!610831)) (and (bvsge (index!43382 lt!610831) #b00000000000000000000000000000000) (bvslt (index!43382 lt!610831) (size!46465 a!2901)))) (or ((_ is Undefined!10253) lt!610831) ((_ is Found!10253) lt!610831) ((_ is MissingZero!10253) lt!610831) (not ((_ is MissingVacant!10253) lt!610831)) (and (bvsge (index!43385 lt!610831) #b00000000000000000000000000000000) (bvslt (index!43385 lt!610831) (size!46465 a!2901)))) (or ((_ is Undefined!10253) lt!610831) (ite ((_ is Found!10253) lt!610831) (= (select (arr!45914 a!2901) (index!43383 lt!610831)) (select (arr!45914 a!2901) j!112)) (ite ((_ is MissingZero!10253) lt!610831) (= (select (arr!45914 a!2901) (index!43382 lt!610831)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!10253) lt!610831) (= (select (arr!45914 a!2901) (index!43385 lt!610831)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!787491 () SeekEntryResult!10253)

(assert (=> d!150131 (= lt!610831 e!787491)))

(declare-fun c!129324 () Bool)

(assert (=> d!150131 (= c!129324 (and ((_ is Intermediate!10253) lt!610830) (undefined!11065 lt!610830)))))

(assert (=> d!150131 (= lt!610830 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) (select (arr!45914 a!2901) j!112) a!2901 mask!2840))))

(assert (=> d!150131 (validMask!0 mask!2840)))

(assert (=> d!150131 (= (seekEntryOrOpen!0 (select (arr!45914 a!2901) j!112) a!2901 mask!2840) lt!610831)))

(declare-fun b!1390554 () Bool)

(assert (=> b!1390554 (= e!787491 Undefined!10253)))

(declare-fun b!1390555 () Bool)

(assert (=> b!1390555 (= e!787490 (MissingZero!10253 (index!43384 lt!610830)))))

(declare-fun b!1390556 () Bool)

(assert (=> b!1390556 (= e!787491 e!787492)))

(assert (=> b!1390556 (= lt!610832 (select (arr!45914 a!2901) (index!43384 lt!610830)))))

(declare-fun c!129325 () Bool)

(assert (=> b!1390556 (= c!129325 (= lt!610832 (select (arr!45914 a!2901) j!112)))))

(assert (= (and d!150131 c!129324) b!1390554))

(assert (= (and d!150131 (not c!129324)) b!1390556))

(assert (= (and b!1390556 c!129325) b!1390551))

(assert (= (and b!1390556 (not c!129325)) b!1390553))

(assert (= (and b!1390553 c!129323) b!1390555))

(assert (= (and b!1390553 (not c!129323)) b!1390552))

(assert (=> b!1390552 m!1276439))

(declare-fun m!1276499 () Bool)

(assert (=> b!1390552 m!1276499))

(declare-fun m!1276501 () Bool)

(assert (=> d!150131 m!1276501))

(declare-fun m!1276503 () Bool)

(assert (=> d!150131 m!1276503))

(declare-fun m!1276505 () Bool)

(assert (=> d!150131 m!1276505))

(assert (=> d!150131 m!1276439))

(assert (=> d!150131 m!1276441))

(assert (=> d!150131 m!1276441))

(assert (=> d!150131 m!1276439))

(assert (=> d!150131 m!1276445))

(assert (=> d!150131 m!1276457))

(declare-fun m!1276507 () Bool)

(assert (=> b!1390556 m!1276507))

(assert (=> b!1390496 d!150131))

(declare-fun b!1390579 () Bool)

(declare-fun e!787507 () Bool)

(declare-fun e!787508 () Bool)

(assert (=> b!1390579 (= e!787507 e!787508)))

(declare-fun lt!610846 () (_ BitVec 64))

(assert (=> b!1390579 (= lt!610846 (select (arr!45914 a!2901) j!112))))

(declare-fun lt!610845 () Unit!46460)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!95105 (_ BitVec 64) (_ BitVec 32)) Unit!46460)

(assert (=> b!1390579 (= lt!610845 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610846 j!112))))

(declare-fun arrayContainsKey!0 (array!95105 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1390579 (arrayContainsKey!0 a!2901 lt!610846 #b00000000000000000000000000000000)))

(declare-fun lt!610844 () Unit!46460)

(assert (=> b!1390579 (= lt!610844 lt!610845)))

(declare-fun res!930803 () Bool)

(assert (=> b!1390579 (= res!930803 (= (seekEntryOrOpen!0 (select (arr!45914 a!2901) j!112) a!2901 mask!2840) (Found!10253 j!112)))))

(assert (=> b!1390579 (=> (not res!930803) (not e!787508))))

(declare-fun d!150139 () Bool)

(declare-fun res!930804 () Bool)

(declare-fun e!787506 () Bool)

(assert (=> d!150139 (=> res!930804 e!787506)))

(assert (=> d!150139 (= res!930804 (bvsge j!112 (size!46465 a!2901)))))

(assert (=> d!150139 (= (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840) e!787506)))

(declare-fun b!1390580 () Bool)

(declare-fun call!66702 () Bool)

(assert (=> b!1390580 (= e!787508 call!66702)))

(declare-fun b!1390581 () Bool)

(assert (=> b!1390581 (= e!787506 e!787507)))

(declare-fun c!129335 () Bool)

(assert (=> b!1390581 (= c!129335 (validKeyInArray!0 (select (arr!45914 a!2901) j!112)))))

(declare-fun bm!66699 () Bool)

(assert (=> bm!66699 (= call!66702 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!112 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390582 () Bool)

(assert (=> b!1390582 (= e!787507 call!66702)))

(assert (= (and d!150139 (not res!930804)) b!1390581))

(assert (= (and b!1390581 c!129335) b!1390579))

(assert (= (and b!1390581 (not c!129335)) b!1390582))

(assert (= (and b!1390579 res!930803) b!1390580))

(assert (= (or b!1390580 b!1390582) bm!66699))

(assert (=> b!1390579 m!1276439))

(declare-fun m!1276519 () Bool)

(assert (=> b!1390579 m!1276519))

(declare-fun m!1276521 () Bool)

(assert (=> b!1390579 m!1276521))

(assert (=> b!1390579 m!1276439))

(assert (=> b!1390579 m!1276451))

(assert (=> b!1390581 m!1276439))

(assert (=> b!1390581 m!1276439))

(assert (=> b!1390581 m!1276453))

(declare-fun m!1276523 () Bool)

(assert (=> bm!66699 m!1276523))

(assert (=> b!1390498 d!150139))

(declare-fun d!150143 () Bool)

(assert (=> d!150143 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840)))

(declare-fun lt!610864 () Unit!46460)

(declare-fun choose!38 (array!95105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46460)

(assert (=> d!150143 (= lt!610864 (choose!38 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> d!150143 (validMask!0 mask!2840)))

(assert (=> d!150143 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112) lt!610864)))

(declare-fun bs!40448 () Bool)

(assert (= bs!40448 d!150143))

(assert (=> bs!40448 m!1276447))

(declare-fun m!1276531 () Bool)

(assert (=> bs!40448 m!1276531))

(assert (=> bs!40448 m!1276457))

(assert (=> b!1390498 d!150143))

(declare-fun b!1390660 () Bool)

(declare-fun lt!610879 () SeekEntryResult!10253)

(assert (=> b!1390660 (and (bvsge (index!43384 lt!610879) #b00000000000000000000000000000000) (bvslt (index!43384 lt!610879) (size!46465 a!2901)))))

(declare-fun res!930828 () Bool)

(assert (=> b!1390660 (= res!930828 (= (select (arr!45914 a!2901) (index!43384 lt!610879)) (select (arr!45914 a!2901) j!112)))))

(declare-fun e!787558 () Bool)

(assert (=> b!1390660 (=> res!930828 e!787558)))

(declare-fun e!787560 () Bool)

(assert (=> b!1390660 (= e!787560 e!787558)))

(declare-fun d!150147 () Bool)

(declare-fun e!787557 () Bool)

(assert (=> d!150147 e!787557))

(declare-fun c!129363 () Bool)

(assert (=> d!150147 (= c!129363 (and ((_ is Intermediate!10253) lt!610879) (undefined!11065 lt!610879)))))

(declare-fun e!787561 () SeekEntryResult!10253)

(assert (=> d!150147 (= lt!610879 e!787561)))

(declare-fun c!129365 () Bool)

(assert (=> d!150147 (= c!129365 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!610880 () (_ BitVec 64))

(assert (=> d!150147 (= lt!610880 (select (arr!45914 a!2901) (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840)))))

(assert (=> d!150147 (validMask!0 mask!2840)))

(assert (=> d!150147 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) (select (arr!45914 a!2901) j!112) a!2901 mask!2840) lt!610879)))

(declare-fun e!787559 () SeekEntryResult!10253)

(declare-fun b!1390661 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1390661 (= e!787559 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) #b00000000000000000000000000000000 mask!2840) (select (arr!45914 a!2901) j!112) a!2901 mask!2840))))

(declare-fun b!1390662 () Bool)

(assert (=> b!1390662 (and (bvsge (index!43384 lt!610879) #b00000000000000000000000000000000) (bvslt (index!43384 lt!610879) (size!46465 a!2901)))))

(assert (=> b!1390662 (= e!787558 (= (select (arr!45914 a!2901) (index!43384 lt!610879)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1390663 () Bool)

(assert (=> b!1390663 (and (bvsge (index!43384 lt!610879) #b00000000000000000000000000000000) (bvslt (index!43384 lt!610879) (size!46465 a!2901)))))

(declare-fun res!930830 () Bool)

(assert (=> b!1390663 (= res!930830 (= (select (arr!45914 a!2901) (index!43384 lt!610879)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1390663 (=> res!930830 e!787558)))

(declare-fun b!1390664 () Bool)

(assert (=> b!1390664 (= e!787557 e!787560)))

(declare-fun res!930829 () Bool)

(assert (=> b!1390664 (= res!930829 (and ((_ is Intermediate!10253) lt!610879) (not (undefined!11065 lt!610879)) (bvslt (x!125062 lt!610879) #b01111111111111111111111111111110) (bvsge (x!125062 lt!610879) #b00000000000000000000000000000000) (bvsge (x!125062 lt!610879) #b00000000000000000000000000000000)))))

(assert (=> b!1390664 (=> (not res!930829) (not e!787560))))

(declare-fun b!1390665 () Bool)

(assert (=> b!1390665 (= e!787559 (Intermediate!10253 false (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(declare-fun b!1390666 () Bool)

(assert (=> b!1390666 (= e!787561 e!787559)))

(declare-fun c!129364 () Bool)

(assert (=> b!1390666 (= c!129364 (or (= lt!610880 (select (arr!45914 a!2901) j!112)) (= (bvadd lt!610880 lt!610880) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1390667 () Bool)

(assert (=> b!1390667 (= e!787557 (bvsge (x!125062 lt!610879) #b01111111111111111111111111111110))))

(declare-fun b!1390668 () Bool)

(assert (=> b!1390668 (= e!787561 (Intermediate!10253 true (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) #b00000000000000000000000000000000))))

(assert (= (and d!150147 c!129365) b!1390668))

(assert (= (and d!150147 (not c!129365)) b!1390666))

(assert (= (and b!1390666 c!129364) b!1390665))

(assert (= (and b!1390666 (not c!129364)) b!1390661))

(assert (= (and d!150147 c!129363) b!1390667))

(assert (= (and d!150147 (not c!129363)) b!1390664))

(assert (= (and b!1390664 res!930829) b!1390660))

(assert (= (and b!1390660 (not res!930828)) b!1390663))

(assert (= (and b!1390663 (not res!930830)) b!1390662))

(declare-fun m!1276549 () Bool)

(assert (=> b!1390663 m!1276549))

(assert (=> b!1390662 m!1276549))

(assert (=> b!1390661 m!1276441))

(declare-fun m!1276551 () Bool)

(assert (=> b!1390661 m!1276551))

(assert (=> b!1390661 m!1276551))

(assert (=> b!1390661 m!1276439))

(declare-fun m!1276553 () Bool)

(assert (=> b!1390661 m!1276553))

(assert (=> b!1390660 m!1276549))

(assert (=> d!150147 m!1276441))

(declare-fun m!1276555 () Bool)

(assert (=> d!150147 m!1276555))

(assert (=> d!150147 m!1276457))

(assert (=> b!1390498 d!150147))

(declare-fun d!150161 () Bool)

(declare-fun lt!610893 () (_ BitVec 32))

(declare-fun lt!610892 () (_ BitVec 32))

(assert (=> d!150161 (= lt!610893 (bvmul (bvxor lt!610892 (bvlshr lt!610892 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!150161 (= lt!610892 ((_ extract 31 0) (bvand (bvxor (select (arr!45914 a!2901) j!112) (bvlshr (select (arr!45914 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!150161 (and (bvsge mask!2840 #b00000000000000000000000000000000) (let ((res!930837 (let ((h!33829 ((_ extract 31 0) (bvand (bvxor (select (arr!45914 a!2901) j!112) (bvlshr (select (arr!45914 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!125066 (bvmul (bvxor h!33829 (bvlshr h!33829 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!125066 (bvlshr x!125066 #b00000000000000000000000000001101)) mask!2840))))) (and (bvslt res!930837 (bvadd mask!2840 #b00000000000000000000000000000001)) (bvsge res!930837 #b00000000000000000000000000000000))))))

(assert (=> d!150161 (= (toIndex!0 (select (arr!45914 a!2901) j!112) mask!2840) (bvand (bvxor lt!610893 (bvlshr lt!610893 #b00000000000000000000000000001101)) mask!2840))))

(assert (=> b!1390498 d!150161))

(declare-fun d!150169 () Bool)

(assert (=> d!150169 (= (validMask!0 mask!2840) (and (or (= mask!2840 #b00000000000000000000000000000111) (= mask!2840 #b00000000000000000000000000001111) (= mask!2840 #b00000000000000000000000000011111) (= mask!2840 #b00000000000000000000000000111111) (= mask!2840 #b00000000000000000000000001111111) (= mask!2840 #b00000000000000000000000011111111) (= mask!2840 #b00000000000000000000000111111111) (= mask!2840 #b00000000000000000000001111111111) (= mask!2840 #b00000000000000000000011111111111) (= mask!2840 #b00000000000000000000111111111111) (= mask!2840 #b00000000000000000001111111111111) (= mask!2840 #b00000000000000000011111111111111) (= mask!2840 #b00000000000000000111111111111111) (= mask!2840 #b00000000000000001111111111111111) (= mask!2840 #b00000000000000011111111111111111) (= mask!2840 #b00000000000000111111111111111111) (= mask!2840 #b00000000000001111111111111111111) (= mask!2840 #b00000000000011111111111111111111) (= mask!2840 #b00000000000111111111111111111111) (= mask!2840 #b00000000001111111111111111111111) (= mask!2840 #b00000000011111111111111111111111) (= mask!2840 #b00000000111111111111111111111111) (= mask!2840 #b00000001111111111111111111111111) (= mask!2840 #b00000011111111111111111111111111) (= mask!2840 #b00000111111111111111111111111111) (= mask!2840 #b00001111111111111111111111111111) (= mask!2840 #b00011111111111111111111111111111) (= mask!2840 #b00111111111111111111111111111111)) (bvsle mask!2840 #b00111111111111111111111111111111)))))

(assert (=> start!119250 d!150169))

(declare-fun d!150179 () Bool)

(assert (=> d!150179 (= (array_inv!34859 a!2901) (bvsge (size!46465 a!2901) #b00000000000000000000000000000000))))

(assert (=> start!119250 d!150179))

(declare-fun d!150181 () Bool)

(assert (=> d!150181 (= (validKeyInArray!0 (select (arr!45914 a!2901) j!112)) (and (not (= (select (arr!45914 a!2901) j!112) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45914 a!2901) j!112) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1390499 d!150181))

(declare-fun b!1390729 () Bool)

(declare-fun e!787608 () Bool)

(declare-fun e!787607 () Bool)

(assert (=> b!1390729 (= e!787608 e!787607)))

(declare-fun res!930865 () Bool)

(assert (=> b!1390729 (=> (not res!930865) (not e!787607))))

(declare-fun e!787605 () Bool)

(assert (=> b!1390729 (= res!930865 (not e!787605))))

(declare-fun res!930863 () Bool)

(assert (=> b!1390729 (=> (not res!930863) (not e!787605))))

(assert (=> b!1390729 (= res!930863 (validKeyInArray!0 (select (arr!45914 a!2901) #b00000000000000000000000000000000)))))

(declare-fun d!150183 () Bool)

(declare-fun res!930864 () Bool)

(assert (=> d!150183 (=> res!930864 e!787608)))

(assert (=> d!150183 (= res!930864 (bvsge #b00000000000000000000000000000000 (size!46465 a!2901)))))

(assert (=> d!150183 (= (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32610) e!787608)))

(declare-fun bm!66713 () Bool)

(declare-fun call!66716 () Bool)

(declare-fun c!129382 () Bool)

(assert (=> bm!66713 (= call!66716 (arrayNoDuplicates!0 a!2901 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!129382 (Cons!32609 (select (arr!45914 a!2901) #b00000000000000000000000000000000) Nil!32610) Nil!32610)))))

(declare-fun b!1390730 () Bool)

(declare-fun contains!9773 (List!32613 (_ BitVec 64)) Bool)

(assert (=> b!1390730 (= e!787605 (contains!9773 Nil!32610 (select (arr!45914 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390731 () Bool)

(declare-fun e!787606 () Bool)

(assert (=> b!1390731 (= e!787607 e!787606)))

(assert (=> b!1390731 (= c!129382 (validKeyInArray!0 (select (arr!45914 a!2901) #b00000000000000000000000000000000)))))

(declare-fun b!1390732 () Bool)

(assert (=> b!1390732 (= e!787606 call!66716)))

(declare-fun b!1390733 () Bool)

(assert (=> b!1390733 (= e!787606 call!66716)))

(assert (= (and d!150183 (not res!930864)) b!1390729))

(assert (= (and b!1390729 res!930863) b!1390730))

(assert (= (and b!1390729 res!930865) b!1390731))

(assert (= (and b!1390731 c!129382) b!1390733))

(assert (= (and b!1390731 (not c!129382)) b!1390732))

(assert (= (or b!1390733 b!1390732) bm!66713))

(declare-fun m!1276589 () Bool)

(assert (=> b!1390729 m!1276589))

(assert (=> b!1390729 m!1276589))

(declare-fun m!1276591 () Bool)

(assert (=> b!1390729 m!1276591))

(assert (=> bm!66713 m!1276589))

(declare-fun m!1276593 () Bool)

(assert (=> bm!66713 m!1276593))

(assert (=> b!1390730 m!1276589))

(assert (=> b!1390730 m!1276589))

(declare-fun m!1276595 () Bool)

(assert (=> b!1390730 m!1276595))

(assert (=> b!1390731 m!1276589))

(assert (=> b!1390731 m!1276589))

(assert (=> b!1390731 m!1276591))

(assert (=> b!1390501 d!150183))

(declare-fun b!1390738 () Bool)

(declare-fun e!787610 () Bool)

(declare-fun e!787611 () Bool)

(assert (=> b!1390738 (= e!787610 e!787611)))

(declare-fun lt!610910 () (_ BitVec 64))

(assert (=> b!1390738 (= lt!610910 (select (arr!45914 a!2901) #b00000000000000000000000000000000))))

(declare-fun lt!610909 () Unit!46460)

(assert (=> b!1390738 (= lt!610909 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2901 lt!610910 #b00000000000000000000000000000000))))

(assert (=> b!1390738 (arrayContainsKey!0 a!2901 lt!610910 #b00000000000000000000000000000000)))

(declare-fun lt!610908 () Unit!46460)

(assert (=> b!1390738 (= lt!610908 lt!610909)))

(declare-fun res!930868 () Bool)

(assert (=> b!1390738 (= res!930868 (= (seekEntryOrOpen!0 (select (arr!45914 a!2901) #b00000000000000000000000000000000) a!2901 mask!2840) (Found!10253 #b00000000000000000000000000000000)))))

(assert (=> b!1390738 (=> (not res!930868) (not e!787611))))

(declare-fun d!150189 () Bool)

(declare-fun res!930869 () Bool)

(declare-fun e!787609 () Bool)

(assert (=> d!150189 (=> res!930869 e!787609)))

(assert (=> d!150189 (= res!930869 (bvsge #b00000000000000000000000000000000 (size!46465 a!2901)))))

(assert (=> d!150189 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840) e!787609)))

(declare-fun b!1390739 () Bool)

(declare-fun call!66717 () Bool)

(assert (=> b!1390739 (= e!787611 call!66717)))

(declare-fun b!1390740 () Bool)

(assert (=> b!1390740 (= e!787609 e!787610)))

(declare-fun c!129383 () Bool)

(assert (=> b!1390740 (= c!129383 (validKeyInArray!0 (select (arr!45914 a!2901) #b00000000000000000000000000000000)))))

(declare-fun bm!66714 () Bool)

(assert (=> bm!66714 (= call!66717 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2901 mask!2840))))

(declare-fun b!1390741 () Bool)

(assert (=> b!1390741 (= e!787610 call!66717)))

(assert (= (and d!150189 (not res!930869)) b!1390740))

(assert (= (and b!1390740 c!129383) b!1390738))

(assert (= (and b!1390740 (not c!129383)) b!1390741))

(assert (= (and b!1390738 res!930868) b!1390739))

(assert (= (or b!1390739 b!1390741) bm!66714))

(assert (=> b!1390738 m!1276589))

(declare-fun m!1276597 () Bool)

(assert (=> b!1390738 m!1276597))

(declare-fun m!1276599 () Bool)

(assert (=> b!1390738 m!1276599))

(assert (=> b!1390738 m!1276589))

(declare-fun m!1276601 () Bool)

(assert (=> b!1390738 m!1276601))

(assert (=> b!1390740 m!1276589))

(assert (=> b!1390740 m!1276589))

(assert (=> b!1390740 m!1276591))

(declare-fun m!1276603 () Bool)

(assert (=> bm!66714 m!1276603))

(assert (=> b!1390500 d!150189))

(check-sat (not bm!66713) (not b!1390731) (not b!1390738) (not b!1390740) (not b!1390661) (not b!1390729) (not d!150143) (not b!1390552) (not d!150131) (not b!1390579) (not b!1390581) (not b!1390730) (not bm!66699) (not bm!66714) (not d!150147))
(check-sat)
