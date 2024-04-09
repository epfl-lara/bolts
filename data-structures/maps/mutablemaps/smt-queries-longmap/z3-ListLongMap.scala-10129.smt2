; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!119472 () Bool)

(assert start!119472)

(declare-fun b!1391823 () Bool)

(declare-fun res!931652 () Bool)

(declare-fun e!788177 () Bool)

(assert (=> b!1391823 (=> (not res!931652) (not e!788177))))

(declare-datatypes ((array!95174 0))(
  ( (array!95175 (arr!45944 (Array (_ BitVec 32) (_ BitVec 64))) (size!46495 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95174)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95174 (_ BitVec 32)) Bool)

(assert (=> b!1391823 (= res!931652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391824 () Bool)

(declare-fun res!931656 () Bool)

(assert (=> b!1391824 (=> (not res!931656) (not e!788177))))

(declare-fun i!1037 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391824 (= res!931656 (validKeyInArray!0 (select (arr!45944 a!2901) i!1037)))))

(declare-fun b!1391825 () Bool)

(declare-fun res!931655 () Bool)

(assert (=> b!1391825 (=> (not res!931655) (not e!788177))))

(declare-fun j!112 () (_ BitVec 32))

(assert (=> b!1391825 (= res!931655 (and (= (size!46495 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46495 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46495 a!2901)) (not (= i!1037 j!112))))))

(declare-fun e!788178 () Bool)

(declare-fun b!1391826 () Bool)

(declare-datatypes ((SeekEntryResult!10283 0))(
  ( (MissingZero!10283 (index!43502 (_ BitVec 32))) (Found!10283 (index!43503 (_ BitVec 32))) (Intermediate!10283 (undefined!11095 Bool) (index!43504 (_ BitVec 32)) (x!125190 (_ BitVec 32))) (Undefined!10283) (MissingVacant!10283 (index!43505 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95174 (_ BitVec 32)) SeekEntryResult!10283)

(assert (=> b!1391826 (= e!788178 (= (seekEntryOrOpen!0 (select (arr!45944 a!2901) j!112) a!2901 mask!2840) (Found!10283 j!112)))))

(declare-fun b!1391827 () Bool)

(declare-fun res!931658 () Bool)

(assert (=> b!1391827 (=> (not res!931658) (not e!788177))))

(declare-datatypes ((List!32643 0))(
  ( (Nil!32640) (Cons!32639 (h!33866 (_ BitVec 64)) (t!47344 List!32643)) )
))
(declare-fun arrayNoDuplicates!0 (array!95174 (_ BitVec 32) List!32643) Bool)

(assert (=> b!1391827 (= res!931658 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32640))))

(declare-fun b!1391828 () Bool)

(declare-fun e!788180 () Bool)

(assert (=> b!1391828 (= e!788177 (not e!788180))))

(declare-fun res!931657 () Bool)

(assert (=> b!1391828 (=> res!931657 e!788180)))

(declare-fun lt!611331 () SeekEntryResult!10283)

(get-info :version)

(assert (=> b!1391828 (= res!931657 (or (not ((_ is Intermediate!10283) lt!611331)) (undefined!11095 lt!611331)))))

(assert (=> b!1391828 e!788178))

(declare-fun res!931659 () Bool)

(assert (=> b!1391828 (=> (not res!931659) (not e!788178))))

(assert (=> b!1391828 (= res!931659 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46520 0))(
  ( (Unit!46521) )
))
(declare-fun lt!611332 () Unit!46520)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95174 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46520)

(assert (=> b!1391828 (= lt!611332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95174 (_ BitVec 32)) SeekEntryResult!10283)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391828 (= lt!611331 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45944 a!2901) j!112) mask!2840) (select (arr!45944 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!931654 () Bool)

(assert (=> start!119472 (=> (not res!931654) (not e!788177))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119472 (= res!931654 (validMask!0 mask!2840))))

(assert (=> start!119472 e!788177))

(assert (=> start!119472 true))

(declare-fun array_inv!34889 (array!95174) Bool)

(assert (=> start!119472 (array_inv!34889 a!2901)))

(declare-fun b!1391829 () Bool)

(assert (=> b!1391829 (= e!788180 (bvsge mask!2840 #b00000000000000000000000000000000))))

(declare-fun lt!611330 () (_ BitVec 32))

(assert (=> b!1391829 (= lt!611330 (toIndex!0 (select (store (arr!45944 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112) mask!2840))))

(declare-fun b!1391830 () Bool)

(declare-fun res!931653 () Bool)

(assert (=> b!1391830 (=> (not res!931653) (not e!788177))))

(assert (=> b!1391830 (= res!931653 (validKeyInArray!0 (select (arr!45944 a!2901) j!112)))))

(assert (= (and start!119472 res!931654) b!1391825))

(assert (= (and b!1391825 res!931655) b!1391824))

(assert (= (and b!1391824 res!931656) b!1391830))

(assert (= (and b!1391830 res!931653) b!1391823))

(assert (= (and b!1391823 res!931652) b!1391827))

(assert (= (and b!1391827 res!931658) b!1391828))

(assert (= (and b!1391828 res!931659) b!1391826))

(assert (= (and b!1391828 (not res!931657)) b!1391829))

(declare-fun m!1277623 () Bool)

(assert (=> b!1391828 m!1277623))

(declare-fun m!1277625 () Bool)

(assert (=> b!1391828 m!1277625))

(assert (=> b!1391828 m!1277623))

(declare-fun m!1277627 () Bool)

(assert (=> b!1391828 m!1277627))

(assert (=> b!1391828 m!1277625))

(assert (=> b!1391828 m!1277623))

(declare-fun m!1277629 () Bool)

(assert (=> b!1391828 m!1277629))

(declare-fun m!1277631 () Bool)

(assert (=> b!1391828 m!1277631))

(declare-fun m!1277633 () Bool)

(assert (=> start!119472 m!1277633))

(declare-fun m!1277635 () Bool)

(assert (=> start!119472 m!1277635))

(declare-fun m!1277637 () Bool)

(assert (=> b!1391824 m!1277637))

(assert (=> b!1391824 m!1277637))

(declare-fun m!1277639 () Bool)

(assert (=> b!1391824 m!1277639))

(declare-fun m!1277641 () Bool)

(assert (=> b!1391823 m!1277641))

(assert (=> b!1391830 m!1277623))

(assert (=> b!1391830 m!1277623))

(declare-fun m!1277643 () Bool)

(assert (=> b!1391830 m!1277643))

(declare-fun m!1277645 () Bool)

(assert (=> b!1391827 m!1277645))

(assert (=> b!1391826 m!1277623))

(assert (=> b!1391826 m!1277623))

(declare-fun m!1277647 () Bool)

(assert (=> b!1391826 m!1277647))

(declare-fun m!1277649 () Bool)

(assert (=> b!1391829 m!1277649))

(declare-fun m!1277651 () Bool)

(assert (=> b!1391829 m!1277651))

(assert (=> b!1391829 m!1277651))

(declare-fun m!1277653 () Bool)

(assert (=> b!1391829 m!1277653))

(check-sat (not b!1391828) (not b!1391829) (not b!1391823) (not b!1391830) (not b!1391827) (not start!119472) (not b!1391826) (not b!1391824))
(check-sat)
