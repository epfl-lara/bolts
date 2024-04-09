; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126188 () Bool)

(assert start!126188)

(declare-fun b!1476836 () Bool)

(declare-fun res!1003137 () Bool)

(declare-fun e!828568 () Bool)

(assert (=> b!1476836 (=> (not res!1003137) (not e!828568))))

(declare-datatypes ((array!99211 0))(
  ( (array!99212 (arr!47880 (Array (_ BitVec 32) (_ BitVec 64))) (size!48431 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99211)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476836 (= res!1003137 (validKeyInArray!0 (select (arr!47880 a!2862) i!1006)))))

(declare-fun b!1476837 () Bool)

(declare-fun e!828569 () Bool)

(assert (=> b!1476837 (= e!828568 e!828569)))

(declare-fun res!1003141 () Bool)

(assert (=> b!1476837 (=> (not res!1003141) (not e!828569))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1476837 (= res!1003141 (= (select (store (arr!47880 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!645114 () array!99211)

(assert (=> b!1476837 (= lt!645114 (array!99212 (store (arr!47880 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48431 a!2862)))))

(declare-fun b!1476838 () Bool)

(declare-fun res!1003131 () Bool)

(assert (=> b!1476838 (=> (not res!1003131) (not e!828568))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1476838 (= res!1003131 (validKeyInArray!0 (select (arr!47880 a!2862) j!93)))))

(declare-fun b!1476839 () Bool)

(declare-fun res!1003134 () Bool)

(assert (=> b!1476839 (=> (not res!1003134) (not e!828568))))

(declare-datatypes ((List!34561 0))(
  ( (Nil!34558) (Cons!34557 (h!35925 (_ BitVec 64)) (t!49262 List!34561)) )
))
(declare-fun arrayNoDuplicates!0 (array!99211 (_ BitVec 32) List!34561) Bool)

(assert (=> b!1476839 (= res!1003134 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34558))))

(declare-fun b!1476840 () Bool)

(declare-fun e!828570 () Bool)

(declare-fun e!828574 () Bool)

(assert (=> b!1476840 (= e!828570 e!828574)))

(declare-fun res!1003142 () Bool)

(assert (=> b!1476840 (=> res!1003142 e!828574)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1476840 (= res!1003142 (or (and (= (select (arr!47880 a!2862) index!646) (select (store (arr!47880 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47880 a!2862) index!646) (select (arr!47880 a!2862) j!93))) (not (= (select (arr!47880 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476841 () Bool)

(declare-fun res!1003130 () Bool)

(assert (=> b!1476841 (=> (not res!1003130) (not e!828568))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476841 (= res!1003130 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48431 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48431 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48431 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1476842 () Bool)

(declare-fun res!1003138 () Bool)

(declare-fun e!828567 () Bool)

(assert (=> b!1476842 (=> (not res!1003138) (not e!828567))))

(declare-datatypes ((SeekEntryResult!12143 0))(
  ( (MissingZero!12143 (index!50963 (_ BitVec 32))) (Found!12143 (index!50964 (_ BitVec 32))) (Intermediate!12143 (undefined!12955 Bool) (index!50965 (_ BitVec 32)) (x!132561 (_ BitVec 32))) (Undefined!12143) (MissingVacant!12143 (index!50966 (_ BitVec 32))) )
))
(declare-fun lt!645117 () SeekEntryResult!12143)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99211 (_ BitVec 32)) SeekEntryResult!12143)

(assert (=> b!1476842 (= res!1003138 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47880 a!2862) j!93) a!2862 mask!2687) lt!645117))))

(declare-fun b!1476843 () Bool)

(declare-fun e!828572 () Bool)

(assert (=> b!1476843 (= e!828567 e!828572)))

(declare-fun res!1003139 () Bool)

(assert (=> b!1476843 (=> (not res!1003139) (not e!828572))))

(declare-fun lt!645116 () SeekEntryResult!12143)

(assert (=> b!1476843 (= res!1003139 (= lt!645116 (Intermediate!12143 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645118 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476843 (= lt!645116 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645118 mask!2687) lt!645118 lt!645114 mask!2687))))

(assert (=> b!1476843 (= lt!645118 (select (store (arr!47880 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476844 () Bool)

(declare-fun e!828575 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99211 (_ BitVec 32)) SeekEntryResult!12143)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99211 (_ BitVec 32)) SeekEntryResult!12143)

(assert (=> b!1476844 (= e!828575 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645118 lt!645114 mask!2687) (seekEntryOrOpen!0 lt!645118 lt!645114 mask!2687)))))

(declare-fun b!1476845 () Bool)

(declare-fun e!828573 () Bool)

(assert (=> b!1476845 (= e!828574 e!828573)))

(declare-fun res!1003129 () Bool)

(assert (=> b!1476845 (=> (not res!1003129) (not e!828573))))

(declare-fun lt!645115 () SeekEntryResult!12143)

(assert (=> b!1476845 (= res!1003129 (= lt!645115 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47880 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476846 () Bool)

(declare-fun res!1003133 () Bool)

(assert (=> b!1476846 (=> (not res!1003133) (not e!828572))))

(assert (=> b!1476846 (= res!1003133 e!828575)))

(declare-fun c!136376 () Bool)

(assert (=> b!1476846 (= c!136376 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1476847 () Bool)

(assert (=> b!1476847 (= e!828573 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476848 () Bool)

(assert (=> b!1476848 (= e!828569 e!828567)))

(declare-fun res!1003143 () Bool)

(assert (=> b!1476848 (=> (not res!1003143) (not e!828567))))

(assert (=> b!1476848 (= res!1003143 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47880 a!2862) j!93) mask!2687) (select (arr!47880 a!2862) j!93) a!2862 mask!2687) lt!645117))))

(assert (=> b!1476848 (= lt!645117 (Intermediate!12143 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476850 () Bool)

(declare-fun res!1003132 () Bool)

(assert (=> b!1476850 (=> (not res!1003132) (not e!828568))))

(assert (=> b!1476850 (= res!1003132 (and (= (size!48431 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48431 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48431 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476851 () Bool)

(assert (=> b!1476851 (= e!828575 (= lt!645116 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645118 lt!645114 mask!2687)))))

(declare-fun b!1476852 () Bool)

(declare-fun res!1003136 () Bool)

(assert (=> b!1476852 (=> (not res!1003136) (not e!828572))))

(assert (=> b!1476852 (= res!1003136 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476853 () Bool)

(declare-fun res!1003135 () Bool)

(assert (=> b!1476853 (=> (not res!1003135) (not e!828568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99211 (_ BitVec 32)) Bool)

(assert (=> b!1476853 (= res!1003135 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1003128 () Bool)

(assert (=> start!126188 (=> (not res!1003128) (not e!828568))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126188 (= res!1003128 (validMask!0 mask!2687))))

(assert (=> start!126188 e!828568))

(assert (=> start!126188 true))

(declare-fun array_inv!36825 (array!99211) Bool)

(assert (=> start!126188 (array_inv!36825 a!2862)))

(declare-fun b!1476849 () Bool)

(assert (=> b!1476849 (= e!828572 (not true))))

(assert (=> b!1476849 e!828570))

(declare-fun res!1003140 () Bool)

(assert (=> b!1476849 (=> (not res!1003140) (not e!828570))))

(assert (=> b!1476849 (= res!1003140 (and (= lt!645115 (Found!12143 j!93)) (or (= (select (arr!47880 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47880 a!2862) intermediateBeforeIndex!19) (select (arr!47880 a!2862) j!93)))))))

(assert (=> b!1476849 (= lt!645115 (seekEntryOrOpen!0 (select (arr!47880 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476849 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49574 0))(
  ( (Unit!49575) )
))
(declare-fun lt!645113 () Unit!49574)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99211 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49574)

(assert (=> b!1476849 (= lt!645113 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (= (and start!126188 res!1003128) b!1476850))

(assert (= (and b!1476850 res!1003132) b!1476836))

(assert (= (and b!1476836 res!1003137) b!1476838))

(assert (= (and b!1476838 res!1003131) b!1476853))

(assert (= (and b!1476853 res!1003135) b!1476839))

(assert (= (and b!1476839 res!1003134) b!1476841))

(assert (= (and b!1476841 res!1003130) b!1476837))

(assert (= (and b!1476837 res!1003141) b!1476848))

(assert (= (and b!1476848 res!1003143) b!1476842))

(assert (= (and b!1476842 res!1003138) b!1476843))

(assert (= (and b!1476843 res!1003139) b!1476846))

(assert (= (and b!1476846 c!136376) b!1476851))

(assert (= (and b!1476846 (not c!136376)) b!1476844))

(assert (= (and b!1476846 res!1003133) b!1476852))

(assert (= (and b!1476852 res!1003136) b!1476849))

(assert (= (and b!1476849 res!1003140) b!1476840))

(assert (= (and b!1476840 (not res!1003142)) b!1476845))

(assert (= (and b!1476845 res!1003129) b!1476847))

(declare-fun m!1362863 () Bool)

(assert (=> b!1476843 m!1362863))

(assert (=> b!1476843 m!1362863))

(declare-fun m!1362865 () Bool)

(assert (=> b!1476843 m!1362865))

(declare-fun m!1362867 () Bool)

(assert (=> b!1476843 m!1362867))

(declare-fun m!1362869 () Bool)

(assert (=> b!1476843 m!1362869))

(declare-fun m!1362871 () Bool)

(assert (=> start!126188 m!1362871))

(declare-fun m!1362873 () Bool)

(assert (=> start!126188 m!1362873))

(declare-fun m!1362875 () Bool)

(assert (=> b!1476838 m!1362875))

(assert (=> b!1476838 m!1362875))

(declare-fun m!1362877 () Bool)

(assert (=> b!1476838 m!1362877))

(declare-fun m!1362879 () Bool)

(assert (=> b!1476849 m!1362879))

(declare-fun m!1362881 () Bool)

(assert (=> b!1476849 m!1362881))

(assert (=> b!1476849 m!1362875))

(declare-fun m!1362883 () Bool)

(assert (=> b!1476849 m!1362883))

(declare-fun m!1362885 () Bool)

(assert (=> b!1476849 m!1362885))

(assert (=> b!1476849 m!1362875))

(declare-fun m!1362887 () Bool)

(assert (=> b!1476840 m!1362887))

(assert (=> b!1476840 m!1362867))

(declare-fun m!1362889 () Bool)

(assert (=> b!1476840 m!1362889))

(assert (=> b!1476840 m!1362875))

(assert (=> b!1476837 m!1362867))

(declare-fun m!1362891 () Bool)

(assert (=> b!1476837 m!1362891))

(declare-fun m!1362893 () Bool)

(assert (=> b!1476844 m!1362893))

(declare-fun m!1362895 () Bool)

(assert (=> b!1476844 m!1362895))

(declare-fun m!1362897 () Bool)

(assert (=> b!1476839 m!1362897))

(assert (=> b!1476842 m!1362875))

(assert (=> b!1476842 m!1362875))

(declare-fun m!1362899 () Bool)

(assert (=> b!1476842 m!1362899))

(declare-fun m!1362901 () Bool)

(assert (=> b!1476836 m!1362901))

(assert (=> b!1476836 m!1362901))

(declare-fun m!1362903 () Bool)

(assert (=> b!1476836 m!1362903))

(declare-fun m!1362905 () Bool)

(assert (=> b!1476853 m!1362905))

(assert (=> b!1476848 m!1362875))

(assert (=> b!1476848 m!1362875))

(declare-fun m!1362907 () Bool)

(assert (=> b!1476848 m!1362907))

(assert (=> b!1476848 m!1362907))

(assert (=> b!1476848 m!1362875))

(declare-fun m!1362909 () Bool)

(assert (=> b!1476848 m!1362909))

(declare-fun m!1362911 () Bool)

(assert (=> b!1476851 m!1362911))

(assert (=> b!1476845 m!1362875))

(assert (=> b!1476845 m!1362875))

(declare-fun m!1362913 () Bool)

(assert (=> b!1476845 m!1362913))

(push 1)

