; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124848 () Bool)

(assert start!124848)

(declare-fun b!1448113 () Bool)

(declare-fun res!979793 () Bool)

(declare-fun e!815576 () Bool)

(assert (=> b!1448113 (=> (not res!979793) (not e!815576))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98213 0))(
  ( (array!98214 (arr!47390 (Array (_ BitVec 32) (_ BitVec 64))) (size!47941 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98213)

(assert (=> b!1448113 (= res!979793 (and (= (size!47941 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47941 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47941 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1448114 () Bool)

(declare-fun res!979795 () Bool)

(assert (=> b!1448114 (=> (not res!979795) (not e!815576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1448114 (= res!979795 (validKeyInArray!0 (select (arr!47390 a!2862) i!1006)))))

(declare-fun b!1448115 () Bool)

(declare-fun res!979801 () Bool)

(assert (=> b!1448115 (=> (not res!979801) (not e!815576))))

(assert (=> b!1448115 (= res!979801 (validKeyInArray!0 (select (arr!47390 a!2862) j!93)))))

(declare-fun b!1448116 () Bool)

(declare-fun e!815572 () Bool)

(declare-fun e!815573 () Bool)

(assert (=> b!1448116 (= e!815572 e!815573)))

(declare-fun res!979800 () Bool)

(assert (=> b!1448116 (=> (not res!979800) (not e!815573))))

(declare-datatypes ((SeekEntryResult!11665 0))(
  ( (MissingZero!11665 (index!49051 (_ BitVec 32))) (Found!11665 (index!49052 (_ BitVec 32))) (Intermediate!11665 (undefined!12477 Bool) (index!49053 (_ BitVec 32)) (x!130725 (_ BitVec 32))) (Undefined!11665) (MissingVacant!11665 (index!49054 (_ BitVec 32))) )
))
(declare-fun lt!635382 () SeekEntryResult!11665)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1448116 (= res!979800 (= lt!635382 (Intermediate!11665 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!635384 () array!98213)

(declare-fun lt!635383 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98213 (_ BitVec 32)) SeekEntryResult!11665)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1448116 (= lt!635382 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!635383 mask!2687) lt!635383 lt!635384 mask!2687))))

(assert (=> b!1448116 (= lt!635383 (select (store (arr!47390 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1448117 () Bool)

(declare-fun e!815570 () Bool)

(declare-fun e!815574 () Bool)

(assert (=> b!1448117 (= e!815570 e!815574)))

(declare-fun res!979809 () Bool)

(assert (=> b!1448117 (=> (not res!979809) (not e!815574))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!635386 () SeekEntryResult!11665)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98213 (_ BitVec 32)) SeekEntryResult!11665)

(assert (=> b!1448117 (= res!979809 (= lt!635386 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47390 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun res!979794 () Bool)

(assert (=> start!124848 (=> (not res!979794) (not e!815576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124848 (= res!979794 (validMask!0 mask!2687))))

(assert (=> start!124848 e!815576))

(assert (=> start!124848 true))

(declare-fun array_inv!36335 (array!98213) Bool)

(assert (=> start!124848 (array_inv!36335 a!2862)))

(declare-fun b!1448118 () Bool)

(declare-fun e!815567 () Bool)

(assert (=> b!1448118 (= e!815567 true)))

(declare-fun lt!635385 () SeekEntryResult!11665)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1448118 (= lt!635385 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateBeforeIndex!19 (select (arr!47390 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1448119 () Bool)

(assert (=> b!1448119 (= e!815573 (not e!815567))))

(declare-fun res!979808 () Bool)

(assert (=> b!1448119 (=> res!979808 e!815567)))

(assert (=> b!1448119 (= res!979808 (or (and (= (select (arr!47390 a!2862) index!646) (select (store (arr!47390 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47390 a!2862) index!646) (select (arr!47390 a!2862) j!93))) (not (= (select (arr!47390 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47390 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!815569 () Bool)

(assert (=> b!1448119 e!815569))

(declare-fun res!979806 () Bool)

(assert (=> b!1448119 (=> (not res!979806) (not e!815569))))

(assert (=> b!1448119 (= res!979806 (and (= lt!635386 (Found!11665 j!93)) (or (= (select (arr!47390 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47390 a!2862) intermediateBeforeIndex!19) (select (arr!47390 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98213 (_ BitVec 32)) SeekEntryResult!11665)

(assert (=> b!1448119 (= lt!635386 (seekEntryOrOpen!0 (select (arr!47390 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98213 (_ BitVec 32)) Bool)

(assert (=> b!1448119 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48774 0))(
  ( (Unit!48775) )
))
(declare-fun lt!635381 () Unit!48774)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98213 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48774)

(assert (=> b!1448119 (= lt!635381 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1448120 () Bool)

(declare-fun res!979798 () Bool)

(assert (=> b!1448120 (=> (not res!979798) (not e!815573))))

(declare-fun e!815571 () Bool)

(assert (=> b!1448120 (= res!979798 e!815571)))

(declare-fun c!133673 () Bool)

(assert (=> b!1448120 (= c!133673 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1448121 () Bool)

(declare-fun res!979796 () Bool)

(assert (=> b!1448121 (=> (not res!979796) (not e!815576))))

(declare-datatypes ((List!34071 0))(
  ( (Nil!34068) (Cons!34067 (h!35417 (_ BitVec 64)) (t!48772 List!34071)) )
))
(declare-fun arrayNoDuplicates!0 (array!98213 (_ BitVec 32) List!34071) Bool)

(assert (=> b!1448121 (= res!979796 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34068))))

(declare-fun b!1448122 () Bool)

(declare-fun e!815575 () Bool)

(assert (=> b!1448122 (= e!815576 e!815575)))

(declare-fun res!979807 () Bool)

(assert (=> b!1448122 (=> (not res!979807) (not e!815575))))

(assert (=> b!1448122 (= res!979807 (= (select (store (arr!47390 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1448122 (= lt!635384 (array!98214 (store (arr!47390 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47941 a!2862)))))

(declare-fun b!1448123 () Bool)

(assert (=> b!1448123 (= e!815569 e!815570)))

(declare-fun res!979805 () Bool)

(assert (=> b!1448123 (=> res!979805 e!815570)))

(assert (=> b!1448123 (= res!979805 (or (and (= (select (arr!47390 a!2862) index!646) (select (store (arr!47390 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47390 a!2862) index!646) (select (arr!47390 a!2862) j!93))) (not (= (select (arr!47390 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1448124 () Bool)

(assert (=> b!1448124 (= e!815575 e!815572)))

(declare-fun res!979799 () Bool)

(assert (=> b!1448124 (=> (not res!979799) (not e!815572))))

(declare-fun lt!635380 () SeekEntryResult!11665)

(assert (=> b!1448124 (= res!979799 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47390 a!2862) j!93) mask!2687) (select (arr!47390 a!2862) j!93) a!2862 mask!2687) lt!635380))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1448124 (= lt!635380 (Intermediate!11665 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1448125 () Bool)

(declare-fun res!979797 () Bool)

(assert (=> b!1448125 (=> (not res!979797) (not e!815573))))

(assert (=> b!1448125 (= res!979797 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1448126 () Bool)

(declare-fun res!979803 () Bool)

(assert (=> b!1448126 (=> (not res!979803) (not e!815576))))

(assert (=> b!1448126 (= res!979803 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1448127 () Bool)

(declare-fun res!979804 () Bool)

(assert (=> b!1448127 (=> (not res!979804) (not e!815576))))

(assert (=> b!1448127 (= res!979804 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47941 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47941 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47941 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1448128 () Bool)

(declare-fun res!979802 () Bool)

(assert (=> b!1448128 (=> (not res!979802) (not e!815572))))

(assert (=> b!1448128 (= res!979802 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47390 a!2862) j!93) a!2862 mask!2687) lt!635380))))

(declare-fun b!1448129 () Bool)

(assert (=> b!1448129 (= e!815571 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!635383 lt!635384 mask!2687) (seekEntryOrOpen!0 lt!635383 lt!635384 mask!2687)))))

(declare-fun b!1448130 () Bool)

(assert (=> b!1448130 (= e!815571 (= lt!635382 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!635383 lt!635384 mask!2687)))))

(declare-fun b!1448131 () Bool)

(assert (=> b!1448131 (= e!815574 (and (= index!646 intermediateBeforeIndex!19) (= x!665 intermediateBeforeX!19)))))

(assert (= (and start!124848 res!979794) b!1448113))

(assert (= (and b!1448113 res!979793) b!1448114))

(assert (= (and b!1448114 res!979795) b!1448115))

(assert (= (and b!1448115 res!979801) b!1448126))

(assert (= (and b!1448126 res!979803) b!1448121))

(assert (= (and b!1448121 res!979796) b!1448127))

(assert (= (and b!1448127 res!979804) b!1448122))

(assert (= (and b!1448122 res!979807) b!1448124))

(assert (= (and b!1448124 res!979799) b!1448128))

(assert (= (and b!1448128 res!979802) b!1448116))

(assert (= (and b!1448116 res!979800) b!1448120))

(assert (= (and b!1448120 c!133673) b!1448130))

(assert (= (and b!1448120 (not c!133673)) b!1448129))

(assert (= (and b!1448120 res!979798) b!1448125))

(assert (= (and b!1448125 res!979797) b!1448119))

(assert (= (and b!1448119 res!979806) b!1448123))

(assert (= (and b!1448123 (not res!979805)) b!1448117))

(assert (= (and b!1448117 res!979809) b!1448131))

(assert (= (and b!1448119 (not res!979808)) b!1448118))

(declare-fun m!1336947 () Bool)

(assert (=> b!1448122 m!1336947))

(declare-fun m!1336949 () Bool)

(assert (=> b!1448122 m!1336949))

(declare-fun m!1336951 () Bool)

(assert (=> start!124848 m!1336951))

(declare-fun m!1336953 () Bool)

(assert (=> start!124848 m!1336953))

(declare-fun m!1336955 () Bool)

(assert (=> b!1448121 m!1336955))

(declare-fun m!1336957 () Bool)

(assert (=> b!1448128 m!1336957))

(assert (=> b!1448128 m!1336957))

(declare-fun m!1336959 () Bool)

(assert (=> b!1448128 m!1336959))

(declare-fun m!1336961 () Bool)

(assert (=> b!1448126 m!1336961))

(declare-fun m!1336963 () Bool)

(assert (=> b!1448119 m!1336963))

(assert (=> b!1448119 m!1336947))

(declare-fun m!1336965 () Bool)

(assert (=> b!1448119 m!1336965))

(declare-fun m!1336967 () Bool)

(assert (=> b!1448119 m!1336967))

(declare-fun m!1336969 () Bool)

(assert (=> b!1448119 m!1336969))

(assert (=> b!1448119 m!1336957))

(declare-fun m!1336971 () Bool)

(assert (=> b!1448119 m!1336971))

(declare-fun m!1336973 () Bool)

(assert (=> b!1448119 m!1336973))

(assert (=> b!1448119 m!1336957))

(declare-fun m!1336975 () Bool)

(assert (=> b!1448116 m!1336975))

(assert (=> b!1448116 m!1336975))

(declare-fun m!1336977 () Bool)

(assert (=> b!1448116 m!1336977))

(assert (=> b!1448116 m!1336947))

(declare-fun m!1336979 () Bool)

(assert (=> b!1448116 m!1336979))

(declare-fun m!1336981 () Bool)

(assert (=> b!1448114 m!1336981))

(assert (=> b!1448114 m!1336981))

(declare-fun m!1336983 () Bool)

(assert (=> b!1448114 m!1336983))

(assert (=> b!1448123 m!1336969))

(assert (=> b!1448123 m!1336947))

(assert (=> b!1448123 m!1336967))

(assert (=> b!1448123 m!1336957))

(assert (=> b!1448124 m!1336957))

(assert (=> b!1448124 m!1336957))

(declare-fun m!1336985 () Bool)

(assert (=> b!1448124 m!1336985))

(assert (=> b!1448124 m!1336985))

(assert (=> b!1448124 m!1336957))

(declare-fun m!1336987 () Bool)

(assert (=> b!1448124 m!1336987))

(assert (=> b!1448115 m!1336957))

(assert (=> b!1448115 m!1336957))

(declare-fun m!1336989 () Bool)

(assert (=> b!1448115 m!1336989))

(declare-fun m!1336991 () Bool)

(assert (=> b!1448130 m!1336991))

(declare-fun m!1336993 () Bool)

(assert (=> b!1448129 m!1336993))

(declare-fun m!1336995 () Bool)

(assert (=> b!1448129 m!1336995))

(assert (=> b!1448117 m!1336957))

(assert (=> b!1448117 m!1336957))

(declare-fun m!1336997 () Bool)

(assert (=> b!1448117 m!1336997))

(assert (=> b!1448118 m!1336957))

(assert (=> b!1448118 m!1336957))

(declare-fun m!1336999 () Bool)

(assert (=> b!1448118 m!1336999))

(check-sat (not b!1448117) (not b!1448116) (not b!1448115) (not b!1448124) (not b!1448130) (not b!1448129) (not b!1448126) (not b!1448121) (not b!1448118) (not b!1448114) (not start!124848) (not b!1448119) (not b!1448128))
(check-sat)
