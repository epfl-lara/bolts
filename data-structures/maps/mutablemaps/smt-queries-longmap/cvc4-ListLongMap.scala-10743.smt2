; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125642 () Bool)

(assert start!125642)

(declare-fun res!998302 () Bool)

(declare-fun e!825118 () Bool)

(assert (=> start!125642 (=> (not res!998302) (not e!825118))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125642 (= res!998302 (validMask!0 mask!2687))))

(assert (=> start!125642 e!825118))

(assert (=> start!125642 true))

(declare-datatypes ((array!99007 0))(
  ( (array!99008 (arr!47787 (Array (_ BitVec 32) (_ BitVec 64))) (size!48338 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99007)

(declare-fun array_inv!36732 (array!99007) Bool)

(assert (=> start!125642 (array_inv!36732 a!2862)))

(declare-fun b!1469758 () Bool)

(declare-fun e!825116 () Bool)

(declare-fun e!825115 () Bool)

(assert (=> b!1469758 (= e!825116 e!825115)))

(declare-fun res!998306 () Bool)

(assert (=> b!1469758 (=> (not res!998306) (not e!825115))))

(declare-datatypes ((SeekEntryResult!12050 0))(
  ( (MissingZero!12050 (index!50591 (_ BitVec 32))) (Found!12050 (index!50592 (_ BitVec 32))) (Intermediate!12050 (undefined!12862 Bool) (index!50593 (_ BitVec 32)) (x!132166 (_ BitVec 32))) (Undefined!12050) (MissingVacant!12050 (index!50594 (_ BitVec 32))) )
))
(declare-fun lt!642630 () SeekEntryResult!12050)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99007 (_ BitVec 32)) SeekEntryResult!12050)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1469758 (= res!998306 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47787 a!2862) j!93) mask!2687) (select (arr!47787 a!2862) j!93) a!2862 mask!2687) lt!642630))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1469758 (= lt!642630 (Intermediate!12050 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1469759 () Bool)

(declare-fun res!998301 () Bool)

(assert (=> b!1469759 (=> (not res!998301) (not e!825118))))

(declare-datatypes ((List!34468 0))(
  ( (Nil!34465) (Cons!34464 (h!35814 (_ BitVec 64)) (t!49169 List!34468)) )
))
(declare-fun arrayNoDuplicates!0 (array!99007 (_ BitVec 32) List!34468) Bool)

(assert (=> b!1469759 (= res!998301 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34465))))

(declare-fun b!1469760 () Bool)

(declare-fun e!825114 () Bool)

(assert (=> b!1469760 (= e!825114 false)))

(declare-fun lt!642632 () Bool)

(declare-fun e!825119 () Bool)

(assert (=> b!1469760 (= lt!642632 e!825119)))

(declare-fun c!135242 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1469760 (= c!135242 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1469761 () Bool)

(declare-fun res!998307 () Bool)

(assert (=> b!1469761 (=> (not res!998307) (not e!825118))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1469761 (= res!998307 (validKeyInArray!0 (select (arr!47787 a!2862) j!93)))))

(declare-fun b!1469762 () Bool)

(declare-fun res!998303 () Bool)

(assert (=> b!1469762 (=> (not res!998303) (not e!825118))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1469762 (= res!998303 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48338 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48338 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48338 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1469763 () Bool)

(assert (=> b!1469763 (= e!825115 e!825114)))

(declare-fun res!998305 () Bool)

(assert (=> b!1469763 (=> (not res!998305) (not e!825114))))

(declare-fun lt!642633 () SeekEntryResult!12050)

(assert (=> b!1469763 (= res!998305 (= lt!642633 (Intermediate!12050 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!642631 () (_ BitVec 64))

(declare-fun lt!642634 () array!99007)

(assert (=> b!1469763 (= lt!642633 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!642631 mask!2687) lt!642631 lt!642634 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1469763 (= lt!642631 (select (store (arr!47787 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1469764 () Bool)

(declare-fun res!998308 () Bool)

(assert (=> b!1469764 (=> (not res!998308) (not e!825118))))

(assert (=> b!1469764 (= res!998308 (validKeyInArray!0 (select (arr!47787 a!2862) i!1006)))))

(declare-fun b!1469765 () Bool)

(declare-fun res!998309 () Bool)

(assert (=> b!1469765 (=> (not res!998309) (not e!825115))))

(assert (=> b!1469765 (= res!998309 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47787 a!2862) j!93) a!2862 mask!2687) lt!642630))))

(declare-fun b!1469766 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99007 (_ BitVec 32)) SeekEntryResult!12050)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99007 (_ BitVec 32)) SeekEntryResult!12050)

(assert (=> b!1469766 (= e!825119 (not (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!642631 lt!642634 mask!2687) (seekEntryOrOpen!0 lt!642631 lt!642634 mask!2687))))))

(declare-fun b!1469767 () Bool)

(assert (=> b!1469767 (= e!825118 e!825116)))

(declare-fun res!998300 () Bool)

(assert (=> b!1469767 (=> (not res!998300) (not e!825116))))

(assert (=> b!1469767 (= res!998300 (= (select (store (arr!47787 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1469767 (= lt!642634 (array!99008 (store (arr!47787 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48338 a!2862)))))

(declare-fun b!1469768 () Bool)

(assert (=> b!1469768 (= e!825119 (not (= lt!642633 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!642631 lt!642634 mask!2687))))))

(declare-fun b!1469769 () Bool)

(declare-fun res!998310 () Bool)

(assert (=> b!1469769 (=> (not res!998310) (not e!825118))))

(assert (=> b!1469769 (= res!998310 (and (= (size!48338 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48338 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48338 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1469770 () Bool)

(declare-fun res!998304 () Bool)

(assert (=> b!1469770 (=> (not res!998304) (not e!825118))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99007 (_ BitVec 32)) Bool)

(assert (=> b!1469770 (= res!998304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(assert (= (and start!125642 res!998302) b!1469769))

(assert (= (and b!1469769 res!998310) b!1469764))

(assert (= (and b!1469764 res!998308) b!1469761))

(assert (= (and b!1469761 res!998307) b!1469770))

(assert (= (and b!1469770 res!998304) b!1469759))

(assert (= (and b!1469759 res!998301) b!1469762))

(assert (= (and b!1469762 res!998303) b!1469767))

(assert (= (and b!1469767 res!998300) b!1469758))

(assert (= (and b!1469758 res!998306) b!1469765))

(assert (= (and b!1469765 res!998309) b!1469763))

(assert (= (and b!1469763 res!998305) b!1469760))

(assert (= (and b!1469760 c!135242) b!1469768))

(assert (= (and b!1469760 (not c!135242)) b!1469766))

(declare-fun m!1356967 () Bool)

(assert (=> b!1469767 m!1356967))

(declare-fun m!1356969 () Bool)

(assert (=> b!1469767 m!1356969))

(declare-fun m!1356971 () Bool)

(assert (=> start!125642 m!1356971))

(declare-fun m!1356973 () Bool)

(assert (=> start!125642 m!1356973))

(declare-fun m!1356975 () Bool)

(assert (=> b!1469759 m!1356975))

(declare-fun m!1356977 () Bool)

(assert (=> b!1469766 m!1356977))

(declare-fun m!1356979 () Bool)

(assert (=> b!1469766 m!1356979))

(declare-fun m!1356981 () Bool)

(assert (=> b!1469764 m!1356981))

(assert (=> b!1469764 m!1356981))

(declare-fun m!1356983 () Bool)

(assert (=> b!1469764 m!1356983))

(declare-fun m!1356985 () Bool)

(assert (=> b!1469758 m!1356985))

(assert (=> b!1469758 m!1356985))

(declare-fun m!1356987 () Bool)

(assert (=> b!1469758 m!1356987))

(assert (=> b!1469758 m!1356987))

(assert (=> b!1469758 m!1356985))

(declare-fun m!1356989 () Bool)

(assert (=> b!1469758 m!1356989))

(assert (=> b!1469765 m!1356985))

(assert (=> b!1469765 m!1356985))

(declare-fun m!1356991 () Bool)

(assert (=> b!1469765 m!1356991))

(assert (=> b!1469761 m!1356985))

(assert (=> b!1469761 m!1356985))

(declare-fun m!1356993 () Bool)

(assert (=> b!1469761 m!1356993))

(declare-fun m!1356995 () Bool)

(assert (=> b!1469768 m!1356995))

(declare-fun m!1356997 () Bool)

(assert (=> b!1469763 m!1356997))

(assert (=> b!1469763 m!1356997))

(declare-fun m!1356999 () Bool)

(assert (=> b!1469763 m!1356999))

(assert (=> b!1469763 m!1356967))

(declare-fun m!1357001 () Bool)

(assert (=> b!1469763 m!1357001))

(declare-fun m!1357003 () Bool)

(assert (=> b!1469770 m!1357003))

(push 1)

