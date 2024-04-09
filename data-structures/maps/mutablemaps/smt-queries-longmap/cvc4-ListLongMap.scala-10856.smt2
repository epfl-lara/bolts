; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127160 () Bool)

(assert start!127160)

(declare-fun b!1494110 () Bool)

(declare-fun res!1016626 () Bool)

(declare-fun e!836946 () Bool)

(assert (=> b!1494110 (=> (not res!1016626) (not e!836946))))

(declare-datatypes ((array!99724 0))(
  ( (array!99725 (arr!48126 (Array (_ BitVec 32) (_ BitVec 64))) (size!48677 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99724)

(declare-datatypes ((List!34807 0))(
  ( (Nil!34804) (Cons!34803 (h!36192 (_ BitVec 64)) (t!49508 List!34807)) )
))
(declare-fun arrayNoDuplicates!0 (array!99724 (_ BitVec 32) List!34807) Bool)

(assert (=> b!1494110 (= res!1016626 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34804))))

(declare-fun b!1494111 () Bool)

(declare-fun e!836950 () Bool)

(declare-fun e!836945 () Bool)

(assert (=> b!1494111 (= e!836950 (not e!836945))))

(declare-fun res!1016629 () Bool)

(assert (=> b!1494111 (=> res!1016629 e!836945)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1494111 (= res!1016629 (or (and (= (select (arr!48126 a!2862) index!646) (select (store (arr!48126 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48126 a!2862) index!646) (select (arr!48126 a!2862) j!93))) (= (select (arr!48126 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836951 () Bool)

(assert (=> b!1494111 e!836951))

(declare-fun res!1016620 () Bool)

(assert (=> b!1494111 (=> (not res!1016620) (not e!836951))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99724 (_ BitVec 32)) Bool)

(assert (=> b!1494111 (= res!1016620 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50066 0))(
  ( (Unit!50067) )
))
(declare-fun lt!651216 () Unit!50066)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99724 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50066)

(assert (=> b!1494111 (= lt!651216 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494112 () Bool)

(declare-fun res!1016627 () Bool)

(assert (=> b!1494112 (=> (not res!1016627) (not e!836946))))

(assert (=> b!1494112 (= res!1016627 (and (= (size!48677 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48677 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48677 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494113 () Bool)

(declare-fun res!1016623 () Bool)

(assert (=> b!1494113 (=> (not res!1016623) (not e!836951))))

(declare-datatypes ((SeekEntryResult!12389 0))(
  ( (MissingZero!12389 (index!51947 (_ BitVec 32))) (Found!12389 (index!51948 (_ BitVec 32))) (Intermediate!12389 (undefined!13201 Bool) (index!51949 (_ BitVec 32)) (x!133544 (_ BitVec 32))) (Undefined!12389) (MissingVacant!12389 (index!51950 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99724 (_ BitVec 32)) SeekEntryResult!12389)

(assert (=> b!1494113 (= res!1016623 (= (seekEntryOrOpen!0 (select (arr!48126 a!2862) j!93) a!2862 mask!2687) (Found!12389 j!93)))))

(declare-fun b!1494115 () Bool)

(declare-fun res!1016625 () Bool)

(assert (=> b!1494115 (=> (not res!1016625) (not e!836950))))

(declare-fun e!836948 () Bool)

(assert (=> b!1494115 (= res!1016625 e!836948)))

(declare-fun c!138278 () Bool)

(assert (=> b!1494115 (= c!138278 (bvsle x!665 intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1494116 () Bool)

(assert (=> b!1494116 (= e!836951 (or (= (select (arr!48126 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48126 a!2862) intermediateBeforeIndex!19) (select (arr!48126 a!2862) j!93))))))

(declare-fun b!1494117 () Bool)

(declare-fun res!1016619 () Bool)

(declare-fun e!836949 () Bool)

(assert (=> b!1494117 (=> (not res!1016619) (not e!836949))))

(declare-fun lt!651219 () SeekEntryResult!12389)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99724 (_ BitVec 32)) SeekEntryResult!12389)

(assert (=> b!1494117 (= res!1016619 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48126 a!2862) j!93) a!2862 mask!2687) lt!651219))))

(declare-fun b!1494118 () Bool)

(declare-fun res!1016634 () Bool)

(assert (=> b!1494118 (=> (not res!1016634) (not e!836946))))

(assert (=> b!1494118 (= res!1016634 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494119 () Bool)

(declare-fun e!836947 () Bool)

(assert (=> b!1494119 (= e!836947 e!836949)))

(declare-fun res!1016632 () Bool)

(assert (=> b!1494119 (=> (not res!1016632) (not e!836949))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494119 (= res!1016632 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48126 a!2862) j!93) mask!2687) (select (arr!48126 a!2862) j!93) a!2862 mask!2687) lt!651219))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494119 (= lt!651219 (Intermediate!12389 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494120 () Bool)

(declare-fun res!1016633 () Bool)

(assert (=> b!1494120 (=> (not res!1016633) (not e!836946))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494120 (= res!1016633 (validKeyInArray!0 (select (arr!48126 a!2862) i!1006)))))

(declare-fun b!1494121 () Bool)

(declare-fun lt!651220 () array!99724)

(declare-fun lt!651218 () (_ BitVec 64))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99724 (_ BitVec 32)) SeekEntryResult!12389)

(assert (=> b!1494121 (= e!836948 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651218 lt!651220 mask!2687) (seekEntryOrOpen!0 lt!651218 lt!651220 mask!2687)))))

(declare-fun b!1494122 () Bool)

(declare-fun res!1016628 () Bool)

(assert (=> b!1494122 (=> (not res!1016628) (not e!836946))))

(assert (=> b!1494122 (= res!1016628 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48677 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48677 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48677 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun lt!651217 () SeekEntryResult!12389)

(declare-fun b!1494123 () Bool)

(assert (=> b!1494123 (= e!836948 (= lt!651217 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651218 lt!651220 mask!2687)))))

(declare-fun b!1494124 () Bool)

(assert (=> b!1494124 (= e!836949 e!836950)))

(declare-fun res!1016624 () Bool)

(assert (=> b!1494124 (=> (not res!1016624) (not e!836950))))

(assert (=> b!1494124 (= res!1016624 (= lt!651217 (Intermediate!12389 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1494124 (= lt!651217 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651218 mask!2687) lt!651218 lt!651220 mask!2687))))

(assert (=> b!1494124 (= lt!651218 (select (store (arr!48126 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun res!1016621 () Bool)

(assert (=> start!127160 (=> (not res!1016621) (not e!836946))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127160 (= res!1016621 (validMask!0 mask!2687))))

(assert (=> start!127160 e!836946))

(assert (=> start!127160 true))

(declare-fun array_inv!37071 (array!99724) Bool)

(assert (=> start!127160 (array_inv!37071 a!2862)))

(declare-fun b!1494114 () Bool)

(assert (=> b!1494114 (= e!836946 e!836947)))

(declare-fun res!1016630 () Bool)

(assert (=> b!1494114 (=> (not res!1016630) (not e!836947))))

(assert (=> b!1494114 (= res!1016630 (= (select (store (arr!48126 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494114 (= lt!651220 (array!99725 (store (arr!48126 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48677 a!2862)))))

(declare-fun b!1494125 () Bool)

(assert (=> b!1494125 (= e!836945 true)))

(declare-fun lt!651215 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494125 (= lt!651215 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494126 () Bool)

(declare-fun res!1016622 () Bool)

(assert (=> b!1494126 (=> (not res!1016622) (not e!836950))))

(assert (=> b!1494126 (= res!1016622 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1494127 () Bool)

(declare-fun res!1016631 () Bool)

(assert (=> b!1494127 (=> (not res!1016631) (not e!836946))))

(assert (=> b!1494127 (= res!1016631 (validKeyInArray!0 (select (arr!48126 a!2862) j!93)))))

(assert (= (and start!127160 res!1016621) b!1494112))

(assert (= (and b!1494112 res!1016627) b!1494120))

(assert (= (and b!1494120 res!1016633) b!1494127))

(assert (= (and b!1494127 res!1016631) b!1494118))

(assert (= (and b!1494118 res!1016634) b!1494110))

(assert (= (and b!1494110 res!1016626) b!1494122))

(assert (= (and b!1494122 res!1016628) b!1494114))

(assert (= (and b!1494114 res!1016630) b!1494119))

(assert (= (and b!1494119 res!1016632) b!1494117))

(assert (= (and b!1494117 res!1016619) b!1494124))

(assert (= (and b!1494124 res!1016624) b!1494115))

(assert (= (and b!1494115 c!138278) b!1494123))

(assert (= (and b!1494115 (not c!138278)) b!1494121))

(assert (= (and b!1494115 res!1016625) b!1494126))

(assert (= (and b!1494126 res!1016622) b!1494111))

(assert (= (and b!1494111 res!1016620) b!1494113))

(assert (= (and b!1494113 res!1016623) b!1494116))

(assert (= (and b!1494111 (not res!1016629)) b!1494125))

(declare-fun m!1377923 () Bool)

(assert (=> b!1494121 m!1377923))

(declare-fun m!1377925 () Bool)

(assert (=> b!1494121 m!1377925))

(declare-fun m!1377927 () Bool)

(assert (=> b!1494111 m!1377927))

(declare-fun m!1377929 () Bool)

(assert (=> b!1494111 m!1377929))

(declare-fun m!1377931 () Bool)

(assert (=> b!1494111 m!1377931))

(declare-fun m!1377933 () Bool)

(assert (=> b!1494111 m!1377933))

(declare-fun m!1377935 () Bool)

(assert (=> b!1494111 m!1377935))

(declare-fun m!1377937 () Bool)

(assert (=> b!1494111 m!1377937))

(declare-fun m!1377939 () Bool)

(assert (=> b!1494118 m!1377939))

(declare-fun m!1377941 () Bool)

(assert (=> b!1494116 m!1377941))

(assert (=> b!1494116 m!1377937))

(assert (=> b!1494119 m!1377937))

(assert (=> b!1494119 m!1377937))

(declare-fun m!1377943 () Bool)

(assert (=> b!1494119 m!1377943))

(assert (=> b!1494119 m!1377943))

(assert (=> b!1494119 m!1377937))

(declare-fun m!1377945 () Bool)

(assert (=> b!1494119 m!1377945))

(declare-fun m!1377947 () Bool)

(assert (=> b!1494110 m!1377947))

(declare-fun m!1377949 () Bool)

(assert (=> b!1494124 m!1377949))

(assert (=> b!1494124 m!1377949))

(declare-fun m!1377951 () Bool)

(assert (=> b!1494124 m!1377951))

(assert (=> b!1494124 m!1377929))

(declare-fun m!1377953 () Bool)

(assert (=> b!1494124 m!1377953))

(declare-fun m!1377955 () Bool)

(assert (=> start!127160 m!1377955))

(declare-fun m!1377957 () Bool)

(assert (=> start!127160 m!1377957))

(assert (=> b!1494113 m!1377937))

(assert (=> b!1494113 m!1377937))

(declare-fun m!1377959 () Bool)

(assert (=> b!1494113 m!1377959))

(assert (=> b!1494127 m!1377937))

(assert (=> b!1494127 m!1377937))

(declare-fun m!1377961 () Bool)

(assert (=> b!1494127 m!1377961))

(assert (=> b!1494114 m!1377929))

(declare-fun m!1377963 () Bool)

(assert (=> b!1494114 m!1377963))

(declare-fun m!1377965 () Bool)

(assert (=> b!1494125 m!1377965))

(declare-fun m!1377967 () Bool)

(assert (=> b!1494123 m!1377967))

(declare-fun m!1377969 () Bool)

(assert (=> b!1494120 m!1377969))

(assert (=> b!1494120 m!1377969))

(declare-fun m!1377971 () Bool)

(assert (=> b!1494120 m!1377971))

(assert (=> b!1494117 m!1377937))

(assert (=> b!1494117 m!1377937))

(declare-fun m!1377973 () Bool)

(assert (=> b!1494117 m!1377973))

(push 1)

