; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125820 () Bool)

(assert start!125820)

(declare-fun res!999753 () Bool)

(declare-fun e!826159 () Bool)

(assert (=> start!125820 (=> (not res!999753) (not e!826159))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125820 (= res!999753 (validMask!0 mask!2687))))

(assert (=> start!125820 e!826159))

(assert (=> start!125820 true))

(declare-datatypes ((array!99071 0))(
  ( (array!99072 (arr!47816 (Array (_ BitVec 32) (_ BitVec 64))) (size!48367 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99071)

(declare-fun array_inv!36761 (array!99071) Bool)

(assert (=> start!125820 (array_inv!36761 a!2862)))

(declare-fun b!1471923 () Bool)

(declare-fun res!999756 () Bool)

(declare-fun e!826157 () Bool)

(assert (=> b!1471923 (=> (not res!999756) (not e!826157))))

(declare-fun e!826155 () Bool)

(assert (=> b!1471923 (= res!999756 e!826155)))

(declare-fun c!135605 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1471923 (= c!135605 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471924 () Bool)

(declare-fun e!826158 () Bool)

(declare-fun e!826154 () Bool)

(assert (=> b!1471924 (= e!826158 e!826154)))

(declare-fun res!999746 () Bool)

(assert (=> b!1471924 (=> (not res!999746) (not e!826154))))

(declare-datatypes ((SeekEntryResult!12079 0))(
  ( (MissingZero!12079 (index!50707 (_ BitVec 32))) (Found!12079 (index!50708 (_ BitVec 32))) (Intermediate!12079 (undefined!12891 Bool) (index!50709 (_ BitVec 32)) (x!132293 (_ BitVec 32))) (Undefined!12079) (MissingVacant!12079 (index!50710 (_ BitVec 32))) )
))
(declare-fun lt!643387 () SeekEntryResult!12079)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99071 (_ BitVec 32)) SeekEntryResult!12079)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471924 (= res!999746 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47816 a!2862) j!93) mask!2687) (select (arr!47816 a!2862) j!93) a!2862 mask!2687) lt!643387))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1471924 (= lt!643387 (Intermediate!12079 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471925 () Bool)

(declare-fun res!999752 () Bool)

(assert (=> b!1471925 (=> (not res!999752) (not e!826157))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1471925 (= res!999752 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471926 () Bool)

(declare-fun res!999747 () Bool)

(assert (=> b!1471926 (=> (not res!999747) (not e!826159))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471926 (= res!999747 (validKeyInArray!0 (select (arr!47816 a!2862) i!1006)))))

(declare-fun b!1471927 () Bool)

(declare-fun res!999755 () Bool)

(declare-fun e!826156 () Bool)

(assert (=> b!1471927 (=> (not res!999755) (not e!826156))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99071 (_ BitVec 32)) SeekEntryResult!12079)

(assert (=> b!1471927 (= res!999755 (= (seekEntryOrOpen!0 (select (arr!47816 a!2862) j!93) a!2862 mask!2687) (Found!12079 j!93)))))

(declare-fun b!1471928 () Bool)

(declare-fun res!999754 () Bool)

(assert (=> b!1471928 (=> (not res!999754) (not e!826159))))

(declare-datatypes ((List!34497 0))(
  ( (Nil!34494) (Cons!34493 (h!35849 (_ BitVec 64)) (t!49198 List!34497)) )
))
(declare-fun arrayNoDuplicates!0 (array!99071 (_ BitVec 32) List!34497) Bool)

(assert (=> b!1471928 (= res!999754 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34494))))

(declare-fun b!1471929 () Bool)

(assert (=> b!1471929 (= e!826157 (not true))))

(assert (=> b!1471929 e!826156))

(declare-fun res!999757 () Bool)

(assert (=> b!1471929 (=> (not res!999757) (not e!826156))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99071 (_ BitVec 32)) Bool)

(assert (=> b!1471929 (= res!999757 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49446 0))(
  ( (Unit!49447) )
))
(declare-fun lt!643386 () Unit!49446)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99071 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49446)

(assert (=> b!1471929 (= lt!643386 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1471930 () Bool)

(assert (=> b!1471930 (= e!826154 e!826157)))

(declare-fun res!999758 () Bool)

(assert (=> b!1471930 (=> (not res!999758) (not e!826157))))

(declare-fun lt!643385 () SeekEntryResult!12079)

(assert (=> b!1471930 (= res!999758 (= lt!643385 (Intermediate!12079 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!643384 () (_ BitVec 64))

(declare-fun lt!643383 () array!99071)

(assert (=> b!1471930 (= lt!643385 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643384 mask!2687) lt!643384 lt!643383 mask!2687))))

(assert (=> b!1471930 (= lt!643384 (select (store (arr!47816 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471931 () Bool)

(assert (=> b!1471931 (= e!826159 e!826158)))

(declare-fun res!999745 () Bool)

(assert (=> b!1471931 (=> (not res!999745) (not e!826158))))

(assert (=> b!1471931 (= res!999745 (= (select (store (arr!47816 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471931 (= lt!643383 (array!99072 (store (arr!47816 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48367 a!2862)))))

(declare-fun b!1471932 () Bool)

(declare-fun res!999759 () Bool)

(assert (=> b!1471932 (=> (not res!999759) (not e!826159))))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1471932 (= res!999759 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48367 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48367 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48367 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1471933 () Bool)

(declare-fun res!999751 () Bool)

(assert (=> b!1471933 (=> (not res!999751) (not e!826159))))

(assert (=> b!1471933 (= res!999751 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471934 () Bool)

(assert (=> b!1471934 (= e!826155 (= lt!643385 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643384 lt!643383 mask!2687)))))

(declare-fun b!1471935 () Bool)

(declare-fun res!999748 () Bool)

(assert (=> b!1471935 (=> (not res!999748) (not e!826159))))

(assert (=> b!1471935 (= res!999748 (and (= (size!48367 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48367 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48367 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471936 () Bool)

(declare-fun res!999750 () Bool)

(assert (=> b!1471936 (=> (not res!999750) (not e!826159))))

(assert (=> b!1471936 (= res!999750 (validKeyInArray!0 (select (arr!47816 a!2862) j!93)))))

(declare-fun b!1471937 () Bool)

(assert (=> b!1471937 (= e!826156 (or (= (select (arr!47816 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47816 a!2862) intermediateBeforeIndex!19) (select (arr!47816 a!2862) j!93))))))

(declare-fun b!1471938 () Bool)

(declare-fun res!999749 () Bool)

(assert (=> b!1471938 (=> (not res!999749) (not e!826154))))

(assert (=> b!1471938 (= res!999749 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47816 a!2862) j!93) a!2862 mask!2687) lt!643387))))

(declare-fun b!1471939 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99071 (_ BitVec 32)) SeekEntryResult!12079)

(assert (=> b!1471939 (= e!826155 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643384 lt!643383 mask!2687) (seekEntryOrOpen!0 lt!643384 lt!643383 mask!2687)))))

(assert (= (and start!125820 res!999753) b!1471935))

(assert (= (and b!1471935 res!999748) b!1471926))

(assert (= (and b!1471926 res!999747) b!1471936))

(assert (= (and b!1471936 res!999750) b!1471933))

(assert (= (and b!1471933 res!999751) b!1471928))

(assert (= (and b!1471928 res!999754) b!1471932))

(assert (= (and b!1471932 res!999759) b!1471931))

(assert (= (and b!1471931 res!999745) b!1471924))

(assert (= (and b!1471924 res!999746) b!1471938))

(assert (= (and b!1471938 res!999749) b!1471930))

(assert (= (and b!1471930 res!999758) b!1471923))

(assert (= (and b!1471923 c!135605) b!1471934))

(assert (= (and b!1471923 (not c!135605)) b!1471939))

(assert (= (and b!1471923 res!999756) b!1471925))

(assert (= (and b!1471925 res!999752) b!1471929))

(assert (= (and b!1471929 res!999757) b!1471927))

(assert (= (and b!1471927 res!999755) b!1471937))

(declare-fun m!1358737 () Bool)

(assert (=> b!1471934 m!1358737))

(declare-fun m!1358739 () Bool)

(assert (=> b!1471936 m!1358739))

(assert (=> b!1471936 m!1358739))

(declare-fun m!1358741 () Bool)

(assert (=> b!1471936 m!1358741))

(declare-fun m!1358743 () Bool)

(assert (=> start!125820 m!1358743))

(declare-fun m!1358745 () Bool)

(assert (=> start!125820 m!1358745))

(declare-fun m!1358747 () Bool)

(assert (=> b!1471930 m!1358747))

(assert (=> b!1471930 m!1358747))

(declare-fun m!1358749 () Bool)

(assert (=> b!1471930 m!1358749))

(declare-fun m!1358751 () Bool)

(assert (=> b!1471930 m!1358751))

(declare-fun m!1358753 () Bool)

(assert (=> b!1471930 m!1358753))

(assert (=> b!1471927 m!1358739))

(assert (=> b!1471927 m!1358739))

(declare-fun m!1358755 () Bool)

(assert (=> b!1471927 m!1358755))

(assert (=> b!1471938 m!1358739))

(assert (=> b!1471938 m!1358739))

(declare-fun m!1358757 () Bool)

(assert (=> b!1471938 m!1358757))

(declare-fun m!1358759 () Bool)

(assert (=> b!1471933 m!1358759))

(assert (=> b!1471931 m!1358751))

(declare-fun m!1358761 () Bool)

(assert (=> b!1471931 m!1358761))

(assert (=> b!1471924 m!1358739))

(assert (=> b!1471924 m!1358739))

(declare-fun m!1358763 () Bool)

(assert (=> b!1471924 m!1358763))

(assert (=> b!1471924 m!1358763))

(assert (=> b!1471924 m!1358739))

(declare-fun m!1358765 () Bool)

(assert (=> b!1471924 m!1358765))

(declare-fun m!1358767 () Bool)

(assert (=> b!1471939 m!1358767))

(declare-fun m!1358769 () Bool)

(assert (=> b!1471939 m!1358769))

(declare-fun m!1358771 () Bool)

(assert (=> b!1471928 m!1358771))

(declare-fun m!1358773 () Bool)

(assert (=> b!1471929 m!1358773))

(declare-fun m!1358775 () Bool)

(assert (=> b!1471929 m!1358775))

(declare-fun m!1358777 () Bool)

(assert (=> b!1471926 m!1358777))

(assert (=> b!1471926 m!1358777))

(declare-fun m!1358779 () Bool)

(assert (=> b!1471926 m!1358779))

(declare-fun m!1358781 () Bool)

(assert (=> b!1471937 m!1358781))

(assert (=> b!1471937 m!1358739))

(check-sat (not b!1471927) (not b!1471933) (not b!1471928) (not b!1471936) (not b!1471938) (not b!1471926) (not b!1471924) (not b!1471930) (not start!125820) (not b!1471929) (not b!1471939) (not b!1471934))
(check-sat)
