; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125352 () Bool)

(assert start!125352)

(declare-fun b!1463617 () Bool)

(declare-fun res!992934 () Bool)

(declare-fun e!822632 () Bool)

(assert (=> b!1463617 (=> (not res!992934) (not e!822632))))

(declare-datatypes ((array!98717 0))(
  ( (array!98718 (arr!47642 (Array (_ BitVec 32) (_ BitVec 64))) (size!48193 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98717)

(declare-datatypes ((List!34323 0))(
  ( (Nil!34320) (Cons!34319 (h!35669 (_ BitVec 64)) (t!49024 List!34323)) )
))
(declare-fun arrayNoDuplicates!0 (array!98717 (_ BitVec 32) List!34323) Bool)

(assert (=> b!1463617 (= res!992934 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34320))))

(declare-fun b!1463618 () Bool)

(declare-fun e!822623 () Bool)

(declare-fun e!822628 () Bool)

(assert (=> b!1463618 (= e!822623 (not e!822628))))

(declare-fun res!992931 () Bool)

(assert (=> b!1463618 (=> res!992931 e!822628)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1463618 (= res!992931 (or (and (= (select (arr!47642 a!2862) index!646) (select (store (arr!47642 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47642 a!2862) index!646) (select (arr!47642 a!2862) j!93))) (= (select (arr!47642 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!822624 () Bool)

(assert (=> b!1463618 e!822624))

(declare-fun res!992944 () Bool)

(assert (=> b!1463618 (=> (not res!992944) (not e!822624))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98717 (_ BitVec 32)) Bool)

(assert (=> b!1463618 (= res!992944 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49278 0))(
  ( (Unit!49279) )
))
(declare-fun lt!640792 () Unit!49278)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98717 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49278)

(assert (=> b!1463618 (= lt!640792 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1463619 () Bool)

(declare-fun res!992941 () Bool)

(assert (=> b!1463619 (=> (not res!992941) (not e!822632))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1463619 (= res!992941 (validKeyInArray!0 (select (arr!47642 a!2862) j!93)))))

(declare-fun b!1463620 () Bool)

(declare-fun e!822625 () Bool)

(assert (=> b!1463620 (= e!822632 e!822625)))

(declare-fun res!992933 () Bool)

(assert (=> b!1463620 (=> (not res!992933) (not e!822625))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1463620 (= res!992933 (= (select (store (arr!47642 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!640795 () array!98717)

(assert (=> b!1463620 (= lt!640795 (array!98718 (store (arr!47642 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48193 a!2862)))))

(declare-fun b!1463621 () Bool)

(declare-fun res!992939 () Bool)

(assert (=> b!1463621 (=> (not res!992939) (not e!822632))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1463621 (= res!992939 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48193 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48193 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48193 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1463622 () Bool)

(declare-fun res!992935 () Bool)

(assert (=> b!1463622 (=> (not res!992935) (not e!822624))))

(declare-datatypes ((SeekEntryResult!11917 0))(
  ( (MissingZero!11917 (index!50059 (_ BitVec 32))) (Found!11917 (index!50060 (_ BitVec 32))) (Intermediate!11917 (undefined!12729 Bool) (index!50061 (_ BitVec 32)) (x!131649 (_ BitVec 32))) (Undefined!11917) (MissingVacant!11917 (index!50062 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98717 (_ BitVec 32)) SeekEntryResult!11917)

(assert (=> b!1463622 (= res!992935 (= (seekEntryOrOpen!0 (select (arr!47642 a!2862) j!93) a!2862 mask!2687) (Found!11917 j!93)))))

(declare-fun b!1463623 () Bool)

(declare-fun e!822630 () Bool)

(assert (=> b!1463623 (= e!822628 e!822630)))

(declare-fun res!992940 () Bool)

(assert (=> b!1463623 (=> res!992940 e!822630)))

(declare-fun lt!640793 () (_ BitVec 32))

(assert (=> b!1463623 (= res!992940 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640793 #b00000000000000000000000000000000) (bvsge lt!640793 (size!48193 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463623 (= lt!640793 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!640794 () SeekEntryResult!11917)

(declare-fun lt!640789 () (_ BitVec 64))

(declare-fun b!1463624 () Bool)

(declare-fun e!822627 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98717 (_ BitVec 32)) SeekEntryResult!11917)

(assert (=> b!1463624 (= e!822627 (not (= lt!640794 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640793 lt!640789 lt!640795 mask!2687))))))

(declare-fun b!1463625 () Bool)

(assert (=> b!1463625 (= e!822630 true)))

(declare-fun lt!640790 () Bool)

(assert (=> b!1463625 (= lt!640790 e!822627)))

(declare-fun c!134857 () Bool)

(assert (=> b!1463625 (= c!134857 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1463626 () Bool)

(declare-fun res!992943 () Bool)

(assert (=> b!1463626 (=> (not res!992943) (not e!822632))))

(assert (=> b!1463626 (= res!992943 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1463627 () Bool)

(declare-fun e!822626 () Bool)

(assert (=> b!1463627 (= e!822626 e!822623)))

(declare-fun res!992932 () Bool)

(assert (=> b!1463627 (=> (not res!992932) (not e!822623))))

(assert (=> b!1463627 (= res!992932 (= lt!640794 (Intermediate!11917 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1463627 (= lt!640794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640789 mask!2687) lt!640789 lt!640795 mask!2687))))

(assert (=> b!1463627 (= lt!640789 (select (store (arr!47642 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1463628 () Bool)

(declare-fun res!992936 () Bool)

(assert (=> b!1463628 (=> (not res!992936) (not e!822632))))

(assert (=> b!1463628 (= res!992936 (and (= (size!48193 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48193 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48193 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1463629 () Bool)

(declare-fun res!992946 () Bool)

(assert (=> b!1463629 (=> (not res!992946) (not e!822623))))

(declare-fun e!822629 () Bool)

(assert (=> b!1463629 (= res!992946 e!822629)))

(declare-fun c!134858 () Bool)

(assert (=> b!1463629 (= c!134858 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!992942 () Bool)

(assert (=> start!125352 (=> (not res!992942) (not e!822632))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125352 (= res!992942 (validMask!0 mask!2687))))

(assert (=> start!125352 e!822632))

(assert (=> start!125352 true))

(declare-fun array_inv!36587 (array!98717) Bool)

(assert (=> start!125352 (array_inv!36587 a!2862)))

(declare-fun b!1463630 () Bool)

(declare-fun res!992929 () Bool)

(assert (=> b!1463630 (=> (not res!992929) (not e!822623))))

(assert (=> b!1463630 (= res!992929 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1463631 () Bool)

(assert (=> b!1463631 (= e!822625 e!822626)))

(declare-fun res!992937 () Bool)

(assert (=> b!1463631 (=> (not res!992937) (not e!822626))))

(declare-fun lt!640791 () SeekEntryResult!11917)

(assert (=> b!1463631 (= res!992937 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47642 a!2862) j!93) mask!2687) (select (arr!47642 a!2862) j!93) a!2862 mask!2687) lt!640791))))

(assert (=> b!1463631 (= lt!640791 (Intermediate!11917 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1463632 () Bool)

(declare-fun res!992938 () Bool)

(assert (=> b!1463632 (=> (not res!992938) (not e!822626))))

(assert (=> b!1463632 (= res!992938 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47642 a!2862) j!93) a!2862 mask!2687) lt!640791))))

(declare-fun b!1463633 () Bool)

(assert (=> b!1463633 (= e!822629 (= lt!640794 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640789 lt!640795 mask!2687)))))

(declare-fun b!1463634 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98717 (_ BitVec 32)) SeekEntryResult!11917)

(assert (=> b!1463634 (= e!822627 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640793 intermediateAfterIndex!19 lt!640789 lt!640795 mask!2687) (seekEntryOrOpen!0 lt!640789 lt!640795 mask!2687))))))

(declare-fun b!1463635 () Bool)

(declare-fun res!992945 () Bool)

(assert (=> b!1463635 (=> (not res!992945) (not e!822632))))

(assert (=> b!1463635 (= res!992945 (validKeyInArray!0 (select (arr!47642 a!2862) i!1006)))))

(declare-fun b!1463636 () Bool)

(assert (=> b!1463636 (= e!822624 (or (= (select (arr!47642 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47642 a!2862) intermediateBeforeIndex!19) (select (arr!47642 a!2862) j!93))))))

(declare-fun b!1463637 () Bool)

(declare-fun res!992930 () Bool)

(assert (=> b!1463637 (=> res!992930 e!822630)))

(assert (=> b!1463637 (= res!992930 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640793 (select (arr!47642 a!2862) j!93) a!2862 mask!2687) lt!640791)))))

(declare-fun b!1463638 () Bool)

(assert (=> b!1463638 (= e!822629 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640789 lt!640795 mask!2687) (seekEntryOrOpen!0 lt!640789 lt!640795 mask!2687)))))

(assert (= (and start!125352 res!992942) b!1463628))

(assert (= (and b!1463628 res!992936) b!1463635))

(assert (= (and b!1463635 res!992945) b!1463619))

(assert (= (and b!1463619 res!992941) b!1463626))

(assert (= (and b!1463626 res!992943) b!1463617))

(assert (= (and b!1463617 res!992934) b!1463621))

(assert (= (and b!1463621 res!992939) b!1463620))

(assert (= (and b!1463620 res!992933) b!1463631))

(assert (= (and b!1463631 res!992937) b!1463632))

(assert (= (and b!1463632 res!992938) b!1463627))

(assert (= (and b!1463627 res!992932) b!1463629))

(assert (= (and b!1463629 c!134858) b!1463633))

(assert (= (and b!1463629 (not c!134858)) b!1463638))

(assert (= (and b!1463629 res!992946) b!1463630))

(assert (= (and b!1463630 res!992929) b!1463618))

(assert (= (and b!1463618 res!992944) b!1463622))

(assert (= (and b!1463622 res!992935) b!1463636))

(assert (= (and b!1463618 (not res!992931)) b!1463623))

(assert (= (and b!1463623 (not res!992940)) b!1463637))

(assert (= (and b!1463637 (not res!992930)) b!1463625))

(assert (= (and b!1463625 c!134857) b!1463624))

(assert (= (and b!1463625 (not c!134857)) b!1463634))

(declare-fun m!1350979 () Bool)

(assert (=> b!1463636 m!1350979))

(declare-fun m!1350981 () Bool)

(assert (=> b!1463636 m!1350981))

(declare-fun m!1350983 () Bool)

(assert (=> b!1463618 m!1350983))

(declare-fun m!1350985 () Bool)

(assert (=> b!1463618 m!1350985))

(declare-fun m!1350987 () Bool)

(assert (=> b!1463618 m!1350987))

(declare-fun m!1350989 () Bool)

(assert (=> b!1463618 m!1350989))

(declare-fun m!1350991 () Bool)

(assert (=> b!1463618 m!1350991))

(assert (=> b!1463618 m!1350981))

(assert (=> b!1463632 m!1350981))

(assert (=> b!1463632 m!1350981))

(declare-fun m!1350993 () Bool)

(assert (=> b!1463632 m!1350993))

(declare-fun m!1350995 () Bool)

(assert (=> b!1463623 m!1350995))

(declare-fun m!1350997 () Bool)

(assert (=> b!1463634 m!1350997))

(declare-fun m!1350999 () Bool)

(assert (=> b!1463634 m!1350999))

(declare-fun m!1351001 () Bool)

(assert (=> b!1463638 m!1351001))

(assert (=> b!1463638 m!1350999))

(declare-fun m!1351003 () Bool)

(assert (=> b!1463627 m!1351003))

(assert (=> b!1463627 m!1351003))

(declare-fun m!1351005 () Bool)

(assert (=> b!1463627 m!1351005))

(assert (=> b!1463627 m!1350985))

(declare-fun m!1351007 () Bool)

(assert (=> b!1463627 m!1351007))

(assert (=> b!1463631 m!1350981))

(assert (=> b!1463631 m!1350981))

(declare-fun m!1351009 () Bool)

(assert (=> b!1463631 m!1351009))

(assert (=> b!1463631 m!1351009))

(assert (=> b!1463631 m!1350981))

(declare-fun m!1351011 () Bool)

(assert (=> b!1463631 m!1351011))

(assert (=> b!1463620 m!1350985))

(declare-fun m!1351013 () Bool)

(assert (=> b!1463620 m!1351013))

(declare-fun m!1351015 () Bool)

(assert (=> b!1463624 m!1351015))

(declare-fun m!1351017 () Bool)

(assert (=> b!1463633 m!1351017))

(assert (=> b!1463637 m!1350981))

(assert (=> b!1463637 m!1350981))

(declare-fun m!1351019 () Bool)

(assert (=> b!1463637 m!1351019))

(assert (=> b!1463619 m!1350981))

(assert (=> b!1463619 m!1350981))

(declare-fun m!1351021 () Bool)

(assert (=> b!1463619 m!1351021))

(declare-fun m!1351023 () Bool)

(assert (=> b!1463626 m!1351023))

(declare-fun m!1351025 () Bool)

(assert (=> start!125352 m!1351025))

(declare-fun m!1351027 () Bool)

(assert (=> start!125352 m!1351027))

(declare-fun m!1351029 () Bool)

(assert (=> b!1463635 m!1351029))

(assert (=> b!1463635 m!1351029))

(declare-fun m!1351031 () Bool)

(assert (=> b!1463635 m!1351031))

(assert (=> b!1463622 m!1350981))

(assert (=> b!1463622 m!1350981))

(declare-fun m!1351033 () Bool)

(assert (=> b!1463622 m!1351033))

(declare-fun m!1351035 () Bool)

(assert (=> b!1463617 m!1351035))

(check-sat (not b!1463631) (not b!1463623) (not b!1463632) (not b!1463627) (not b!1463617) (not b!1463637) (not b!1463619) (not b!1463633) (not b!1463626) (not b!1463638) (not b!1463635) (not start!125352) (not b!1463624) (not b!1463618) (not b!1463622) (not b!1463634))
(check-sat)
