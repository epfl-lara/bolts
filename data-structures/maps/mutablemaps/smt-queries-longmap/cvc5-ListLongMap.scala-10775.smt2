; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126190 () Bool)

(assert start!126190)

(declare-fun b!1476890 () Bool)

(declare-fun e!828596 () Bool)

(declare-fun e!828601 () Bool)

(assert (=> b!1476890 (= e!828596 e!828601)))

(declare-fun res!1003187 () Bool)

(assert (=> b!1476890 (=> (not res!1003187) (not e!828601))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12144 0))(
  ( (MissingZero!12144 (index!50967 (_ BitVec 32))) (Found!12144 (index!50968 (_ BitVec 32))) (Intermediate!12144 (undefined!12956 Bool) (index!50969 (_ BitVec 32)) (x!132570 (_ BitVec 32))) (Undefined!12144) (MissingVacant!12144 (index!50970 (_ BitVec 32))) )
))
(declare-fun lt!645132 () SeekEntryResult!12144)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99213 0))(
  ( (array!99214 (arr!47881 (Array (_ BitVec 32) (_ BitVec 64))) (size!48432 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99213)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99213 (_ BitVec 32)) SeekEntryResult!12144)

(assert (=> b!1476890 (= res!1003187 (= lt!645132 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47881 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1476891 () Bool)

(declare-fun res!1003176 () Bool)

(declare-fun e!828597 () Bool)

(assert (=> b!1476891 (=> (not res!1003176) (not e!828597))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99213 (_ BitVec 32)) Bool)

(assert (=> b!1476891 (= res!1003176 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1476892 () Bool)

(declare-fun e!828594 () Bool)

(assert (=> b!1476892 (= e!828594 (not true))))

(declare-fun e!828598 () Bool)

(assert (=> b!1476892 e!828598))

(declare-fun res!1003185 () Bool)

(assert (=> b!1476892 (=> (not res!1003185) (not e!828598))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1476892 (= res!1003185 (and (= lt!645132 (Found!12144 j!93)) (or (= (select (arr!47881 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47881 a!2862) intermediateBeforeIndex!19) (select (arr!47881 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99213 (_ BitVec 32)) SeekEntryResult!12144)

(assert (=> b!1476892 (= lt!645132 (seekEntryOrOpen!0 (select (arr!47881 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1476892 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49576 0))(
  ( (Unit!49577) )
))
(declare-fun lt!645133 () Unit!49576)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49576)

(assert (=> b!1476892 (= lt!645133 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1476893 () Bool)

(declare-fun res!1003184 () Bool)

(assert (=> b!1476893 (=> (not res!1003184) (not e!828597))))

(declare-datatypes ((List!34562 0))(
  ( (Nil!34559) (Cons!34558 (h!35926 (_ BitVec 64)) (t!49263 List!34562)) )
))
(declare-fun arrayNoDuplicates!0 (array!99213 (_ BitVec 32) List!34562) Bool)

(assert (=> b!1476893 (= res!1003184 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34559))))

(declare-fun b!1476894 () Bool)

(declare-fun res!1003181 () Bool)

(assert (=> b!1476894 (=> (not res!1003181) (not e!828597))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1476894 (= res!1003181 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48432 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48432 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48432 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!1003186 () Bool)

(assert (=> start!126190 (=> (not res!1003186) (not e!828597))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126190 (= res!1003186 (validMask!0 mask!2687))))

(assert (=> start!126190 e!828597))

(assert (=> start!126190 true))

(declare-fun array_inv!36826 (array!99213) Bool)

(assert (=> start!126190 (array_inv!36826 a!2862)))

(declare-fun b!1476895 () Bool)

(declare-fun res!1003183 () Bool)

(declare-fun e!828600 () Bool)

(assert (=> b!1476895 (=> (not res!1003183) (not e!828600))))

(declare-fun lt!645135 () SeekEntryResult!12144)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99213 (_ BitVec 32)) SeekEntryResult!12144)

(assert (=> b!1476895 (= res!1003183 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47881 a!2862) j!93) a!2862 mask!2687) lt!645135))))

(declare-fun b!1476896 () Bool)

(declare-fun res!1003179 () Bool)

(assert (=> b!1476896 (=> (not res!1003179) (not e!828597))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1476896 (= res!1003179 (validKeyInArray!0 (select (arr!47881 a!2862) i!1006)))))

(declare-fun b!1476897 () Bool)

(assert (=> b!1476897 (= e!828600 e!828594)))

(declare-fun res!1003191 () Bool)

(assert (=> b!1476897 (=> (not res!1003191) (not e!828594))))

(declare-fun lt!645134 () SeekEntryResult!12144)

(assert (=> b!1476897 (= res!1003191 (= lt!645134 (Intermediate!12144 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!645136 () array!99213)

(declare-fun lt!645131 () (_ BitVec 64))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1476897 (= lt!645134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!645131 mask!2687) lt!645131 lt!645136 mask!2687))))

(assert (=> b!1476897 (= lt!645131 (select (store (arr!47881 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1476898 () Bool)

(declare-fun res!1003178 () Bool)

(assert (=> b!1476898 (=> (not res!1003178) (not e!828597))))

(assert (=> b!1476898 (= res!1003178 (and (= (size!48432 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48432 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48432 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1476899 () Bool)

(declare-fun e!828599 () Bool)

(assert (=> b!1476899 (= e!828599 (= lt!645134 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!645131 lt!645136 mask!2687)))))

(declare-fun b!1476900 () Bool)

(assert (=> b!1476900 (= e!828601 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(declare-fun b!1476901 () Bool)

(declare-fun res!1003180 () Bool)

(assert (=> b!1476901 (=> (not res!1003180) (not e!828597))))

(assert (=> b!1476901 (= res!1003180 (validKeyInArray!0 (select (arr!47881 a!2862) j!93)))))

(declare-fun b!1476902 () Bool)

(assert (=> b!1476902 (= e!828599 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!645131 lt!645136 mask!2687) (seekEntryOrOpen!0 lt!645131 lt!645136 mask!2687)))))

(declare-fun b!1476903 () Bool)

(declare-fun res!1003177 () Bool)

(assert (=> b!1476903 (=> (not res!1003177) (not e!828594))))

(assert (=> b!1476903 (= res!1003177 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1476904 () Bool)

(declare-fun e!828595 () Bool)

(assert (=> b!1476904 (= e!828597 e!828595)))

(declare-fun res!1003182 () Bool)

(assert (=> b!1476904 (=> (not res!1003182) (not e!828595))))

(assert (=> b!1476904 (= res!1003182 (= (select (store (arr!47881 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1476904 (= lt!645136 (array!99214 (store (arr!47881 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48432 a!2862)))))

(declare-fun b!1476905 () Bool)

(assert (=> b!1476905 (= e!828598 e!828596)))

(declare-fun res!1003190 () Bool)

(assert (=> b!1476905 (=> res!1003190 e!828596)))

(assert (=> b!1476905 (= res!1003190 (or (and (= (select (arr!47881 a!2862) index!646) (select (store (arr!47881 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47881 a!2862) index!646) (select (arr!47881 a!2862) j!93))) (not (= (select (arr!47881 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1476906 () Bool)

(assert (=> b!1476906 (= e!828595 e!828600)))

(declare-fun res!1003188 () Bool)

(assert (=> b!1476906 (=> (not res!1003188) (not e!828600))))

(assert (=> b!1476906 (= res!1003188 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47881 a!2862) j!93) mask!2687) (select (arr!47881 a!2862) j!93) a!2862 mask!2687) lt!645135))))

(assert (=> b!1476906 (= lt!645135 (Intermediate!12144 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1476907 () Bool)

(declare-fun res!1003189 () Bool)

(assert (=> b!1476907 (=> (not res!1003189) (not e!828594))))

(assert (=> b!1476907 (= res!1003189 e!828599)))

(declare-fun c!136379 () Bool)

(assert (=> b!1476907 (= c!136379 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126190 res!1003186) b!1476898))

(assert (= (and b!1476898 res!1003178) b!1476896))

(assert (= (and b!1476896 res!1003179) b!1476901))

(assert (= (and b!1476901 res!1003180) b!1476891))

(assert (= (and b!1476891 res!1003176) b!1476893))

(assert (= (and b!1476893 res!1003184) b!1476894))

(assert (= (and b!1476894 res!1003181) b!1476904))

(assert (= (and b!1476904 res!1003182) b!1476906))

(assert (= (and b!1476906 res!1003188) b!1476895))

(assert (= (and b!1476895 res!1003183) b!1476897))

(assert (= (and b!1476897 res!1003191) b!1476907))

(assert (= (and b!1476907 c!136379) b!1476899))

(assert (= (and b!1476907 (not c!136379)) b!1476902))

(assert (= (and b!1476907 res!1003189) b!1476903))

(assert (= (and b!1476903 res!1003177) b!1476892))

(assert (= (and b!1476892 res!1003185) b!1476905))

(assert (= (and b!1476905 (not res!1003190)) b!1476890))

(assert (= (and b!1476890 res!1003187) b!1476900))

(declare-fun m!1362915 () Bool)

(assert (=> b!1476892 m!1362915))

(declare-fun m!1362917 () Bool)

(assert (=> b!1476892 m!1362917))

(declare-fun m!1362919 () Bool)

(assert (=> b!1476892 m!1362919))

(declare-fun m!1362921 () Bool)

(assert (=> b!1476892 m!1362921))

(declare-fun m!1362923 () Bool)

(assert (=> b!1476892 m!1362923))

(assert (=> b!1476892 m!1362919))

(declare-fun m!1362925 () Bool)

(assert (=> b!1476896 m!1362925))

(assert (=> b!1476896 m!1362925))

(declare-fun m!1362927 () Bool)

(assert (=> b!1476896 m!1362927))

(assert (=> b!1476901 m!1362919))

(assert (=> b!1476901 m!1362919))

(declare-fun m!1362929 () Bool)

(assert (=> b!1476901 m!1362929))

(declare-fun m!1362931 () Bool)

(assert (=> b!1476905 m!1362931))

(declare-fun m!1362933 () Bool)

(assert (=> b!1476905 m!1362933))

(declare-fun m!1362935 () Bool)

(assert (=> b!1476905 m!1362935))

(assert (=> b!1476905 m!1362919))

(assert (=> b!1476906 m!1362919))

(assert (=> b!1476906 m!1362919))

(declare-fun m!1362937 () Bool)

(assert (=> b!1476906 m!1362937))

(assert (=> b!1476906 m!1362937))

(assert (=> b!1476906 m!1362919))

(declare-fun m!1362939 () Bool)

(assert (=> b!1476906 m!1362939))

(assert (=> b!1476890 m!1362919))

(assert (=> b!1476890 m!1362919))

(declare-fun m!1362941 () Bool)

(assert (=> b!1476890 m!1362941))

(assert (=> b!1476895 m!1362919))

(assert (=> b!1476895 m!1362919))

(declare-fun m!1362943 () Bool)

(assert (=> b!1476895 m!1362943))

(assert (=> b!1476904 m!1362933))

(declare-fun m!1362945 () Bool)

(assert (=> b!1476904 m!1362945))

(declare-fun m!1362947 () Bool)

(assert (=> start!126190 m!1362947))

(declare-fun m!1362949 () Bool)

(assert (=> start!126190 m!1362949))

(declare-fun m!1362951 () Bool)

(assert (=> b!1476897 m!1362951))

(assert (=> b!1476897 m!1362951))

(declare-fun m!1362953 () Bool)

(assert (=> b!1476897 m!1362953))

(assert (=> b!1476897 m!1362933))

(declare-fun m!1362955 () Bool)

(assert (=> b!1476897 m!1362955))

(declare-fun m!1362957 () Bool)

(assert (=> b!1476902 m!1362957))

(declare-fun m!1362959 () Bool)

(assert (=> b!1476902 m!1362959))

(declare-fun m!1362961 () Bool)

(assert (=> b!1476891 m!1362961))

(declare-fun m!1362963 () Bool)

(assert (=> b!1476893 m!1362963))

(declare-fun m!1362965 () Bool)

(assert (=> b!1476899 m!1362965))

(push 1)

