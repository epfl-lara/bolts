; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!126966 () Bool)

(assert start!126966)

(declare-fun e!835751 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99656 0))(
  ( (array!99657 (arr!48095 (Array (_ BitVec 32) (_ BitVec 64))) (size!48646 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99656)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1491674 () Bool)

(assert (=> b!1491674 (= e!835751 (or (= (select (arr!48095 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48095 a!2862) intermediateBeforeIndex!19) (select (arr!48095 a!2862) j!93))))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1491675 () Bool)

(declare-fun e!835756 () Bool)

(declare-datatypes ((SeekEntryResult!12358 0))(
  ( (MissingZero!12358 (index!51823 (_ BitVec 32))) (Found!12358 (index!51824 (_ BitVec 32))) (Intermediate!12358 (undefined!13170 Bool) (index!51825 (_ BitVec 32)) (x!133409 (_ BitVec 32))) (Undefined!12358) (MissingVacant!12358 (index!51826 (_ BitVec 32))) )
))
(declare-fun lt!650326 () SeekEntryResult!12358)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!650324 () array!99656)

(declare-fun lt!650325 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99656 (_ BitVec 32)) SeekEntryResult!12358)

(assert (=> b!1491675 (= e!835756 (= lt!650326 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650325 lt!650324 mask!2687)))))

(declare-fun b!1491676 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99656 (_ BitVec 32)) SeekEntryResult!12358)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99656 (_ BitVec 32)) SeekEntryResult!12358)

(assert (=> b!1491676 (= e!835756 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650325 lt!650324 mask!2687) (seekEntryOrOpen!0 lt!650325 lt!650324 mask!2687)))))

(declare-fun b!1491677 () Bool)

(declare-fun res!1014924 () Bool)

(declare-fun e!835757 () Bool)

(assert (=> b!1491677 (=> (not res!1014924) (not e!835757))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1491677 (= res!1014924 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1491678 () Bool)

(declare-fun e!835750 () Bool)

(declare-fun e!835753 () Bool)

(assert (=> b!1491678 (= e!835750 e!835753)))

(declare-fun res!1014930 () Bool)

(assert (=> b!1491678 (=> (not res!1014930) (not e!835753))))

(declare-fun lt!650322 () SeekEntryResult!12358)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491678 (= res!1014930 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48095 a!2862) j!93) mask!2687) (select (arr!48095 a!2862) j!93) a!2862 mask!2687) lt!650322))))

(assert (=> b!1491678 (= lt!650322 (Intermediate!12358 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun res!1014927 () Bool)

(declare-fun e!835754 () Bool)

(assert (=> start!126966 (=> (not res!1014927) (not e!835754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126966 (= res!1014927 (validMask!0 mask!2687))))

(assert (=> start!126966 e!835754))

(assert (=> start!126966 true))

(declare-fun array_inv!37040 (array!99656) Bool)

(assert (=> start!126966 (array_inv!37040 a!2862)))

(declare-fun b!1491679 () Bool)

(assert (=> b!1491679 (= e!835754 e!835750)))

(declare-fun res!1014918 () Bool)

(assert (=> b!1491679 (=> (not res!1014918) (not e!835750))))

(assert (=> b!1491679 (= res!1014918 (= (select (store (arr!48095 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1491679 (= lt!650324 (array!99657 (store (arr!48095 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48646 a!2862)))))

(declare-fun b!1491680 () Bool)

(declare-fun res!1014925 () Bool)

(assert (=> b!1491680 (=> (not res!1014925) (not e!835757))))

(assert (=> b!1491680 (= res!1014925 e!835756)))

(declare-fun c!137909 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1491680 (= c!137909 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1491681 () Bool)

(declare-fun res!1014919 () Bool)

(assert (=> b!1491681 (=> (not res!1014919) (not e!835754))))

(declare-datatypes ((List!34776 0))(
  ( (Nil!34773) (Cons!34772 (h!36155 (_ BitVec 64)) (t!49477 List!34776)) )
))
(declare-fun arrayNoDuplicates!0 (array!99656 (_ BitVec 32) List!34776) Bool)

(assert (=> b!1491681 (= res!1014919 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34773))))

(declare-fun b!1491682 () Bool)

(declare-fun res!1014917 () Bool)

(assert (=> b!1491682 (=> (not res!1014917) (not e!835753))))

(assert (=> b!1491682 (= res!1014917 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48095 a!2862) j!93) a!2862 mask!2687) lt!650322))))

(declare-fun b!1491683 () Bool)

(declare-fun e!835752 () Bool)

(assert (=> b!1491683 (= e!835752 true)))

(declare-fun lt!650323 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1491683 (= lt!650323 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1491684 () Bool)

(declare-fun res!1014916 () Bool)

(assert (=> b!1491684 (=> (not res!1014916) (not e!835754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1491684 (= res!1014916 (validKeyInArray!0 (select (arr!48095 a!2862) j!93)))))

(declare-fun b!1491685 () Bool)

(declare-fun res!1014920 () Bool)

(assert (=> b!1491685 (=> (not res!1014920) (not e!835751))))

(assert (=> b!1491685 (= res!1014920 (= (seekEntryOrOpen!0 (select (arr!48095 a!2862) j!93) a!2862 mask!2687) (Found!12358 j!93)))))

(declare-fun b!1491686 () Bool)

(declare-fun res!1014928 () Bool)

(assert (=> b!1491686 (=> (not res!1014928) (not e!835754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99656 (_ BitVec 32)) Bool)

(assert (=> b!1491686 (= res!1014928 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1491687 () Bool)

(assert (=> b!1491687 (= e!835757 (not e!835752))))

(declare-fun res!1014929 () Bool)

(assert (=> b!1491687 (=> res!1014929 e!835752)))

(assert (=> b!1491687 (= res!1014929 (or (and (= (select (arr!48095 a!2862) index!646) (select (store (arr!48095 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48095 a!2862) index!646) (select (arr!48095 a!2862) j!93))) (= (select (arr!48095 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1491687 e!835751))

(declare-fun res!1014922 () Bool)

(assert (=> b!1491687 (=> (not res!1014922) (not e!835751))))

(assert (=> b!1491687 (= res!1014922 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50004 0))(
  ( (Unit!50005) )
))
(declare-fun lt!650321 () Unit!50004)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50004)

(assert (=> b!1491687 (= lt!650321 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1491688 () Bool)

(declare-fun res!1014915 () Bool)

(assert (=> b!1491688 (=> (not res!1014915) (not e!835754))))

(assert (=> b!1491688 (= res!1014915 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48646 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48646 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48646 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1491689 () Bool)

(assert (=> b!1491689 (= e!835753 e!835757)))

(declare-fun res!1014923 () Bool)

(assert (=> b!1491689 (=> (not res!1014923) (not e!835757))))

(assert (=> b!1491689 (= res!1014923 (= lt!650326 (Intermediate!12358 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1491689 (= lt!650326 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650325 mask!2687) lt!650325 lt!650324 mask!2687))))

(assert (=> b!1491689 (= lt!650325 (select (store (arr!48095 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1491690 () Bool)

(declare-fun res!1014926 () Bool)

(assert (=> b!1491690 (=> (not res!1014926) (not e!835754))))

(assert (=> b!1491690 (= res!1014926 (and (= (size!48646 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48646 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48646 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1491691 () Bool)

(declare-fun res!1014921 () Bool)

(assert (=> b!1491691 (=> (not res!1014921) (not e!835754))))

(assert (=> b!1491691 (= res!1014921 (validKeyInArray!0 (select (arr!48095 a!2862) i!1006)))))

(assert (= (and start!126966 res!1014927) b!1491690))

(assert (= (and b!1491690 res!1014926) b!1491691))

(assert (= (and b!1491691 res!1014921) b!1491684))

(assert (= (and b!1491684 res!1014916) b!1491686))

(assert (= (and b!1491686 res!1014928) b!1491681))

(assert (= (and b!1491681 res!1014919) b!1491688))

(assert (= (and b!1491688 res!1014915) b!1491679))

(assert (= (and b!1491679 res!1014918) b!1491678))

(assert (= (and b!1491678 res!1014930) b!1491682))

(assert (= (and b!1491682 res!1014917) b!1491689))

(assert (= (and b!1491689 res!1014923) b!1491680))

(assert (= (and b!1491680 c!137909) b!1491675))

(assert (= (and b!1491680 (not c!137909)) b!1491676))

(assert (= (and b!1491680 res!1014925) b!1491677))

(assert (= (and b!1491677 res!1014924) b!1491687))

(assert (= (and b!1491687 res!1014922) b!1491685))

(assert (= (and b!1491685 res!1014920) b!1491674))

(assert (= (and b!1491687 (not res!1014929)) b!1491683))

(declare-fun m!1375843 () Bool)

(assert (=> b!1491691 m!1375843))

(assert (=> b!1491691 m!1375843))

(declare-fun m!1375845 () Bool)

(assert (=> b!1491691 m!1375845))

(declare-fun m!1375847 () Bool)

(assert (=> b!1491687 m!1375847))

(declare-fun m!1375849 () Bool)

(assert (=> b!1491687 m!1375849))

(declare-fun m!1375851 () Bool)

(assert (=> b!1491687 m!1375851))

(declare-fun m!1375853 () Bool)

(assert (=> b!1491687 m!1375853))

(declare-fun m!1375855 () Bool)

(assert (=> b!1491687 m!1375855))

(declare-fun m!1375857 () Bool)

(assert (=> b!1491687 m!1375857))

(declare-fun m!1375859 () Bool)

(assert (=> start!126966 m!1375859))

(declare-fun m!1375861 () Bool)

(assert (=> start!126966 m!1375861))

(declare-fun m!1375863 () Bool)

(assert (=> b!1491681 m!1375863))

(declare-fun m!1375865 () Bool)

(assert (=> b!1491686 m!1375865))

(assert (=> b!1491679 m!1375849))

(declare-fun m!1375867 () Bool)

(assert (=> b!1491679 m!1375867))

(assert (=> b!1491685 m!1375857))

(assert (=> b!1491685 m!1375857))

(declare-fun m!1375869 () Bool)

(assert (=> b!1491685 m!1375869))

(assert (=> b!1491684 m!1375857))

(assert (=> b!1491684 m!1375857))

(declare-fun m!1375871 () Bool)

(assert (=> b!1491684 m!1375871))

(assert (=> b!1491682 m!1375857))

(assert (=> b!1491682 m!1375857))

(declare-fun m!1375873 () Bool)

(assert (=> b!1491682 m!1375873))

(declare-fun m!1375875 () Bool)

(assert (=> b!1491676 m!1375875))

(declare-fun m!1375877 () Bool)

(assert (=> b!1491676 m!1375877))

(assert (=> b!1491678 m!1375857))

(assert (=> b!1491678 m!1375857))

(declare-fun m!1375879 () Bool)

(assert (=> b!1491678 m!1375879))

(assert (=> b!1491678 m!1375879))

(assert (=> b!1491678 m!1375857))

(declare-fun m!1375881 () Bool)

(assert (=> b!1491678 m!1375881))

(declare-fun m!1375883 () Bool)

(assert (=> b!1491689 m!1375883))

(assert (=> b!1491689 m!1375883))

(declare-fun m!1375885 () Bool)

(assert (=> b!1491689 m!1375885))

(assert (=> b!1491689 m!1375849))

(declare-fun m!1375887 () Bool)

(assert (=> b!1491689 m!1375887))

(declare-fun m!1375889 () Bool)

(assert (=> b!1491683 m!1375889))

(declare-fun m!1375891 () Bool)

(assert (=> b!1491675 m!1375891))

(declare-fun m!1375893 () Bool)

(assert (=> b!1491674 m!1375893))

(assert (=> b!1491674 m!1375857))

(check-sat (not b!1491686) (not b!1491678) (not start!126966) (not b!1491687) (not b!1491689) (not b!1491683) (not b!1491681) (not b!1491684) (not b!1491685) (not b!1491675) (not b!1491691) (not b!1491676) (not b!1491682))
(check-sat)
