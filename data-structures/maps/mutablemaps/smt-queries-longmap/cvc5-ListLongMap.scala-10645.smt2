; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125050 () Bool)

(assert start!125050)

(declare-fun b!1453822 () Bool)

(declare-fun e!818265 () Bool)

(declare-fun e!818267 () Bool)

(assert (=> b!1453822 (= e!818265 e!818267)))

(declare-fun res!984880 () Bool)

(assert (=> b!1453822 (=> (not res!984880) (not e!818267))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98415 0))(
  ( (array!98416 (arr!47491 (Array (_ BitVec 32) (_ BitVec 64))) (size!48042 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98415)

(assert (=> b!1453822 (= res!984880 (= (select (store (arr!47491 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!637339 () array!98415)

(assert (=> b!1453822 (= lt!637339 (array!98416 (store (arr!47491 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48042 a!2862)))))

(declare-fun b!1453823 () Bool)

(declare-fun res!984891 () Bool)

(declare-fun e!818272 () Bool)

(assert (=> b!1453823 (=> (not res!984891) (not e!818272))))

(declare-fun e!818273 () Bool)

(assert (=> b!1453823 (= res!984891 e!818273)))

(declare-fun c!133987 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1453823 (= c!133987 (bvsle x!665 intermediateAfterX!19))))

(declare-fun res!984884 () Bool)

(assert (=> start!125050 (=> (not res!984884) (not e!818265))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125050 (= res!984884 (validMask!0 mask!2687))))

(assert (=> start!125050 e!818265))

(assert (=> start!125050 true))

(declare-fun array_inv!36436 (array!98415) Bool)

(assert (=> start!125050 (array_inv!36436 a!2862)))

(declare-fun b!1453824 () Bool)

(declare-fun res!984882 () Bool)

(assert (=> b!1453824 (=> (not res!984882) (not e!818265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1453824 (= res!984882 (validKeyInArray!0 (select (arr!47491 a!2862) i!1006)))))

(declare-fun b!1453825 () Bool)

(declare-fun e!818268 () Bool)

(assert (=> b!1453825 (= e!818272 (not e!818268))))

(declare-fun res!984881 () Bool)

(assert (=> b!1453825 (=> res!984881 e!818268)))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1453825 (= res!984881 (or (and (= (select (arr!47491 a!2862) index!646) (select (store (arr!47491 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47491 a!2862) index!646) (select (arr!47491 a!2862) j!93))) (= (select (arr!47491 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!818266 () Bool)

(assert (=> b!1453825 e!818266))

(declare-fun res!984874 () Bool)

(assert (=> b!1453825 (=> (not res!984874) (not e!818266))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98415 (_ BitVec 32)) Bool)

(assert (=> b!1453825 (= res!984874 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48976 0))(
  ( (Unit!48977) )
))
(declare-fun lt!637332 () Unit!48976)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98415 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48976)

(assert (=> b!1453825 (= lt!637332 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun lt!637338 () (_ BitVec 64))

(declare-fun b!1453826 () Bool)

(declare-datatypes ((SeekEntryResult!11766 0))(
  ( (MissingZero!11766 (index!49455 (_ BitVec 32))) (Found!11766 (index!49456 (_ BitVec 32))) (Intermediate!11766 (undefined!12578 Bool) (index!49457 (_ BitVec 32)) (x!131098 (_ BitVec 32))) (Undefined!11766) (MissingVacant!11766 (index!49458 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98415 (_ BitVec 32)) SeekEntryResult!11766)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98415 (_ BitVec 32)) SeekEntryResult!11766)

(assert (=> b!1453826 (= e!818273 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637338 lt!637339 mask!2687) (seekEntryOrOpen!0 lt!637338 lt!637339 mask!2687)))))

(declare-fun b!1453827 () Bool)

(declare-fun e!818271 () Bool)

(assert (=> b!1453827 (= e!818267 e!818271)))

(declare-fun res!984883 () Bool)

(assert (=> b!1453827 (=> (not res!984883) (not e!818271))))

(declare-fun lt!637334 () SeekEntryResult!11766)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98415 (_ BitVec 32)) SeekEntryResult!11766)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453827 (= res!984883 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47491 a!2862) j!93) mask!2687) (select (arr!47491 a!2862) j!93) a!2862 mask!2687) lt!637334))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1453827 (= lt!637334 (Intermediate!11766 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1453828 () Bool)

(declare-fun res!984885 () Bool)

(declare-fun e!818269 () Bool)

(assert (=> b!1453828 (=> res!984885 e!818269)))

(declare-fun lt!637337 () (_ BitVec 32))

(assert (=> b!1453828 (= res!984885 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637337 (select (arr!47491 a!2862) j!93) a!2862 mask!2687) lt!637334)))))

(declare-fun b!1453829 () Bool)

(declare-fun res!984878 () Bool)

(assert (=> b!1453829 (=> (not res!984878) (not e!818266))))

(assert (=> b!1453829 (= res!984878 (= (seekEntryOrOpen!0 (select (arr!47491 a!2862) j!93) a!2862 mask!2687) (Found!11766 j!93)))))

(declare-fun b!1453830 () Bool)

(assert (=> b!1453830 (= e!818268 e!818269)))

(declare-fun res!984887 () Bool)

(assert (=> b!1453830 (=> res!984887 e!818269)))

(assert (=> b!1453830 (= res!984887 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637337 #b00000000000000000000000000000000) (bvsge lt!637337 (size!48042 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1453830 (= lt!637337 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637336 () SeekEntryResult!11766)

(assert (=> b!1453830 (= lt!637336 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637338 lt!637339 mask!2687))))

(assert (=> b!1453830 (= lt!637336 (seekEntryOrOpen!0 lt!637338 lt!637339 mask!2687))))

(declare-fun b!1453831 () Bool)

(assert (=> b!1453831 (= e!818266 (and (or (= (select (arr!47491 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47491 a!2862) intermediateBeforeIndex!19) (select (arr!47491 a!2862) j!93))) (let ((bdg!53017 (select (store (arr!47491 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47491 a!2862) index!646) bdg!53017) (= (select (arr!47491 a!2862) index!646) (select (arr!47491 a!2862) j!93))) (= (select (arr!47491 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53017 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1453832 () Bool)

(declare-fun res!984875 () Bool)

(assert (=> b!1453832 (=> (not res!984875) (not e!818265))))

(declare-datatypes ((List!34172 0))(
  ( (Nil!34169) (Cons!34168 (h!35518 (_ BitVec 64)) (t!48873 List!34172)) )
))
(declare-fun arrayNoDuplicates!0 (array!98415 (_ BitVec 32) List!34172) Bool)

(assert (=> b!1453832 (= res!984875 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34169))))

(declare-fun lt!637333 () SeekEntryResult!11766)

(declare-fun b!1453833 () Bool)

(assert (=> b!1453833 (= e!818273 (= lt!637333 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637338 lt!637339 mask!2687)))))

(declare-fun b!1453834 () Bool)

(declare-fun res!984879 () Bool)

(assert (=> b!1453834 (=> (not res!984879) (not e!818265))))

(assert (=> b!1453834 (= res!984879 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48042 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48042 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48042 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1453835 () Bool)

(declare-fun res!984876 () Bool)

(assert (=> b!1453835 (=> (not res!984876) (not e!818265))))

(assert (=> b!1453835 (= res!984876 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1453836 () Bool)

(declare-fun e!818270 () Bool)

(assert (=> b!1453836 (= e!818270 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637337 intermediateAfterIndex!19 lt!637338 lt!637339 mask!2687) lt!637336)))))

(declare-fun b!1453837 () Bool)

(declare-fun res!984888 () Bool)

(assert (=> b!1453837 (=> (not res!984888) (not e!818265))))

(assert (=> b!1453837 (= res!984888 (and (= (size!48042 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48042 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48042 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1453838 () Bool)

(assert (=> b!1453838 (= e!818269 true)))

(declare-fun lt!637335 () Bool)

(assert (=> b!1453838 (= lt!637335 e!818270)))

(declare-fun c!133988 () Bool)

(assert (=> b!1453838 (= c!133988 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1453839 () Bool)

(assert (=> b!1453839 (= e!818270 (not (= lt!637333 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637337 lt!637338 lt!637339 mask!2687))))))

(declare-fun b!1453840 () Bool)

(declare-fun res!984890 () Bool)

(assert (=> b!1453840 (=> (not res!984890) (not e!818271))))

(assert (=> b!1453840 (= res!984890 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47491 a!2862) j!93) a!2862 mask!2687) lt!637334))))

(declare-fun b!1453841 () Bool)

(declare-fun res!984877 () Bool)

(assert (=> b!1453841 (=> (not res!984877) (not e!818272))))

(assert (=> b!1453841 (= res!984877 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1453842 () Bool)

(assert (=> b!1453842 (= e!818271 e!818272)))

(declare-fun res!984886 () Bool)

(assert (=> b!1453842 (=> (not res!984886) (not e!818272))))

(assert (=> b!1453842 (= res!984886 (= lt!637333 (Intermediate!11766 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1453842 (= lt!637333 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637338 mask!2687) lt!637338 lt!637339 mask!2687))))

(assert (=> b!1453842 (= lt!637338 (select (store (arr!47491 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1453843 () Bool)

(declare-fun res!984889 () Bool)

(assert (=> b!1453843 (=> (not res!984889) (not e!818265))))

(assert (=> b!1453843 (= res!984889 (validKeyInArray!0 (select (arr!47491 a!2862) j!93)))))

(assert (= (and start!125050 res!984884) b!1453837))

(assert (= (and b!1453837 res!984888) b!1453824))

(assert (= (and b!1453824 res!984882) b!1453843))

(assert (= (and b!1453843 res!984889) b!1453835))

(assert (= (and b!1453835 res!984876) b!1453832))

(assert (= (and b!1453832 res!984875) b!1453834))

(assert (= (and b!1453834 res!984879) b!1453822))

(assert (= (and b!1453822 res!984880) b!1453827))

(assert (= (and b!1453827 res!984883) b!1453840))

(assert (= (and b!1453840 res!984890) b!1453842))

(assert (= (and b!1453842 res!984886) b!1453823))

(assert (= (and b!1453823 c!133987) b!1453833))

(assert (= (and b!1453823 (not c!133987)) b!1453826))

(assert (= (and b!1453823 res!984891) b!1453841))

(assert (= (and b!1453841 res!984877) b!1453825))

(assert (= (and b!1453825 res!984874) b!1453829))

(assert (= (and b!1453829 res!984878) b!1453831))

(assert (= (and b!1453825 (not res!984881)) b!1453830))

(assert (= (and b!1453830 (not res!984887)) b!1453828))

(assert (= (and b!1453828 (not res!984885)) b!1453838))

(assert (= (and b!1453838 c!133988) b!1453839))

(assert (= (and b!1453838 (not c!133988)) b!1453836))

(declare-fun m!1342287 () Bool)

(assert (=> start!125050 m!1342287))

(declare-fun m!1342289 () Bool)

(assert (=> start!125050 m!1342289))

(declare-fun m!1342291 () Bool)

(assert (=> b!1453826 m!1342291))

(declare-fun m!1342293 () Bool)

(assert (=> b!1453826 m!1342293))

(declare-fun m!1342295 () Bool)

(assert (=> b!1453824 m!1342295))

(assert (=> b!1453824 m!1342295))

(declare-fun m!1342297 () Bool)

(assert (=> b!1453824 m!1342297))

(declare-fun m!1342299 () Bool)

(assert (=> b!1453829 m!1342299))

(assert (=> b!1453829 m!1342299))

(declare-fun m!1342301 () Bool)

(assert (=> b!1453829 m!1342301))

(declare-fun m!1342303 () Bool)

(assert (=> b!1453825 m!1342303))

(declare-fun m!1342305 () Bool)

(assert (=> b!1453825 m!1342305))

(declare-fun m!1342307 () Bool)

(assert (=> b!1453825 m!1342307))

(declare-fun m!1342309 () Bool)

(assert (=> b!1453825 m!1342309))

(declare-fun m!1342311 () Bool)

(assert (=> b!1453825 m!1342311))

(assert (=> b!1453825 m!1342299))

(declare-fun m!1342313 () Bool)

(assert (=> b!1453833 m!1342313))

(declare-fun m!1342315 () Bool)

(assert (=> b!1453830 m!1342315))

(assert (=> b!1453830 m!1342291))

(assert (=> b!1453830 m!1342293))

(declare-fun m!1342317 () Bool)

(assert (=> b!1453835 m!1342317))

(assert (=> b!1453831 m!1342305))

(declare-fun m!1342319 () Bool)

(assert (=> b!1453831 m!1342319))

(assert (=> b!1453831 m!1342307))

(assert (=> b!1453831 m!1342309))

(assert (=> b!1453831 m!1342299))

(declare-fun m!1342321 () Bool)

(assert (=> b!1453842 m!1342321))

(assert (=> b!1453842 m!1342321))

(declare-fun m!1342323 () Bool)

(assert (=> b!1453842 m!1342323))

(assert (=> b!1453842 m!1342305))

(declare-fun m!1342325 () Bool)

(assert (=> b!1453842 m!1342325))

(assert (=> b!1453828 m!1342299))

(assert (=> b!1453828 m!1342299))

(declare-fun m!1342327 () Bool)

(assert (=> b!1453828 m!1342327))

(assert (=> b!1453827 m!1342299))

(assert (=> b!1453827 m!1342299))

(declare-fun m!1342329 () Bool)

(assert (=> b!1453827 m!1342329))

(assert (=> b!1453827 m!1342329))

(assert (=> b!1453827 m!1342299))

(declare-fun m!1342331 () Bool)

(assert (=> b!1453827 m!1342331))

(declare-fun m!1342333 () Bool)

(assert (=> b!1453832 m!1342333))

(assert (=> b!1453840 m!1342299))

(assert (=> b!1453840 m!1342299))

(declare-fun m!1342335 () Bool)

(assert (=> b!1453840 m!1342335))

(declare-fun m!1342337 () Bool)

(assert (=> b!1453839 m!1342337))

(declare-fun m!1342339 () Bool)

(assert (=> b!1453836 m!1342339))

(assert (=> b!1453843 m!1342299))

(assert (=> b!1453843 m!1342299))

(declare-fun m!1342341 () Bool)

(assert (=> b!1453843 m!1342341))

(assert (=> b!1453822 m!1342305))

(declare-fun m!1342343 () Bool)

(assert (=> b!1453822 m!1342343))

(push 1)

