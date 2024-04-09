; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125822 () Bool)

(assert start!125822)

(declare-fun b!1471974 () Bool)

(declare-fun res!999790 () Bool)

(declare-fun e!826180 () Bool)

(assert (=> b!1471974 (=> (not res!999790) (not e!826180))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99073 0))(
  ( (array!99074 (arr!47817 (Array (_ BitVec 32) (_ BitVec 64))) (size!48368 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99073)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1471974 (= res!999790 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48368 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48368 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48368 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!999794 () Bool)

(assert (=> start!125822 (=> (not res!999794) (not e!826180))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125822 (= res!999794 (validMask!0 mask!2687))))

(assert (=> start!125822 e!826180))

(assert (=> start!125822 true))

(declare-fun array_inv!36762 (array!99073) Bool)

(assert (=> start!125822 (array_inv!36762 a!2862)))

(declare-fun b!1471975 () Bool)

(declare-fun res!999801 () Bool)

(assert (=> b!1471975 (=> (not res!999801) (not e!826180))))

(declare-datatypes ((List!34498 0))(
  ( (Nil!34495) (Cons!34494 (h!35850 (_ BitVec 64)) (t!49199 List!34498)) )
))
(declare-fun arrayNoDuplicates!0 (array!99073 (_ BitVec 32) List!34498) Bool)

(assert (=> b!1471975 (= res!999801 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34495))))

(declare-fun b!1471976 () Bool)

(declare-fun e!826178 () Bool)

(assert (=> b!1471976 (= e!826178 (not true))))

(declare-fun e!826177 () Bool)

(assert (=> b!1471976 e!826177))

(declare-fun res!999792 () Bool)

(assert (=> b!1471976 (=> (not res!999792) (not e!826177))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99073 (_ BitVec 32)) Bool)

(assert (=> b!1471976 (= res!999792 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49448 0))(
  ( (Unit!49449) )
))
(declare-fun lt!643402 () Unit!49448)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99073 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49448)

(assert (=> b!1471976 (= lt!643402 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-datatypes ((SeekEntryResult!12080 0))(
  ( (MissingZero!12080 (index!50711 (_ BitVec 32))) (Found!12080 (index!50712 (_ BitVec 32))) (Intermediate!12080 (undefined!12892 Bool) (index!50713 (_ BitVec 32)) (x!132294 (_ BitVec 32))) (Undefined!12080) (MissingVacant!12080 (index!50714 (_ BitVec 32))) )
))
(declare-fun lt!643400 () SeekEntryResult!12080)

(declare-fun lt!643401 () array!99073)

(declare-fun e!826176 () Bool)

(declare-fun lt!643399 () (_ BitVec 64))

(declare-fun b!1471977 () Bool)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99073 (_ BitVec 32)) SeekEntryResult!12080)

(assert (=> b!1471977 (= e!826176 (= lt!643400 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!643399 lt!643401 mask!2687)))))

(declare-fun b!1471978 () Bool)

(declare-fun e!826181 () Bool)

(assert (=> b!1471978 (= e!826180 e!826181)))

(declare-fun res!999800 () Bool)

(assert (=> b!1471978 (=> (not res!999800) (not e!826181))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1471978 (= res!999800 (= (select (store (arr!47817 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1471978 (= lt!643401 (array!99074 (store (arr!47817 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48368 a!2862)))))

(declare-fun b!1471979 () Bool)

(declare-fun res!999791 () Bool)

(declare-fun e!826179 () Bool)

(assert (=> b!1471979 (=> (not res!999791) (not e!826179))))

(declare-fun lt!643398 () SeekEntryResult!12080)

(assert (=> b!1471979 (= res!999791 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47817 a!2862) j!93) a!2862 mask!2687) lt!643398))))

(declare-fun b!1471980 () Bool)

(declare-fun res!999799 () Bool)

(assert (=> b!1471980 (=> (not res!999799) (not e!826180))))

(assert (=> b!1471980 (= res!999799 (and (= (size!48368 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48368 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48368 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1471981 () Bool)

(declare-fun res!999803 () Bool)

(assert (=> b!1471981 (=> (not res!999803) (not e!826177))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99073 (_ BitVec 32)) SeekEntryResult!12080)

(assert (=> b!1471981 (= res!999803 (= (seekEntryOrOpen!0 (select (arr!47817 a!2862) j!93) a!2862 mask!2687) (Found!12080 j!93)))))

(declare-fun b!1471982 () Bool)

(assert (=> b!1471982 (= e!826181 e!826179)))

(declare-fun res!999796 () Bool)

(assert (=> b!1471982 (=> (not res!999796) (not e!826179))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1471982 (= res!999796 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47817 a!2862) j!93) mask!2687) (select (arr!47817 a!2862) j!93) a!2862 mask!2687) lt!643398))))

(assert (=> b!1471982 (= lt!643398 (Intermediate!12080 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1471983 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99073 (_ BitVec 32)) SeekEntryResult!12080)

(assert (=> b!1471983 (= e!826176 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!643399 lt!643401 mask!2687) (seekEntryOrOpen!0 lt!643399 lt!643401 mask!2687)))))

(declare-fun b!1471984 () Bool)

(assert (=> b!1471984 (= e!826179 e!826178)))

(declare-fun res!999798 () Bool)

(assert (=> b!1471984 (=> (not res!999798) (not e!826178))))

(assert (=> b!1471984 (= res!999798 (= lt!643400 (Intermediate!12080 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1471984 (= lt!643400 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!643399 mask!2687) lt!643399 lt!643401 mask!2687))))

(assert (=> b!1471984 (= lt!643399 (select (store (arr!47817 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1471985 () Bool)

(declare-fun res!999804 () Bool)

(assert (=> b!1471985 (=> (not res!999804) (not e!826178))))

(assert (=> b!1471985 (= res!999804 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1471986 () Bool)

(declare-fun res!999797 () Bool)

(assert (=> b!1471986 (=> (not res!999797) (not e!826180))))

(assert (=> b!1471986 (= res!999797 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1471987 () Bool)

(declare-fun res!999795 () Bool)

(assert (=> b!1471987 (=> (not res!999795) (not e!826180))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1471987 (= res!999795 (validKeyInArray!0 (select (arr!47817 a!2862) i!1006)))))

(declare-fun b!1471988 () Bool)

(declare-fun res!999802 () Bool)

(assert (=> b!1471988 (=> (not res!999802) (not e!826180))))

(assert (=> b!1471988 (= res!999802 (validKeyInArray!0 (select (arr!47817 a!2862) j!93)))))

(declare-fun b!1471989 () Bool)

(declare-fun res!999793 () Bool)

(assert (=> b!1471989 (=> (not res!999793) (not e!826178))))

(assert (=> b!1471989 (= res!999793 e!826176)))

(declare-fun c!135608 () Bool)

(assert (=> b!1471989 (= c!135608 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1471990 () Bool)

(assert (=> b!1471990 (= e!826177 (or (= (select (arr!47817 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47817 a!2862) intermediateBeforeIndex!19) (select (arr!47817 a!2862) j!93))))))

(assert (= (and start!125822 res!999794) b!1471980))

(assert (= (and b!1471980 res!999799) b!1471987))

(assert (= (and b!1471987 res!999795) b!1471988))

(assert (= (and b!1471988 res!999802) b!1471986))

(assert (= (and b!1471986 res!999797) b!1471975))

(assert (= (and b!1471975 res!999801) b!1471974))

(assert (= (and b!1471974 res!999790) b!1471978))

(assert (= (and b!1471978 res!999800) b!1471982))

(assert (= (and b!1471982 res!999796) b!1471979))

(assert (= (and b!1471979 res!999791) b!1471984))

(assert (= (and b!1471984 res!999798) b!1471989))

(assert (= (and b!1471989 c!135608) b!1471977))

(assert (= (and b!1471989 (not c!135608)) b!1471983))

(assert (= (and b!1471989 res!999793) b!1471985))

(assert (= (and b!1471985 res!999804) b!1471976))

(assert (= (and b!1471976 res!999792) b!1471981))

(assert (= (and b!1471981 res!999803) b!1471990))

(declare-fun m!1358783 () Bool)

(assert (=> b!1471975 m!1358783))

(declare-fun m!1358785 () Bool)

(assert (=> b!1471976 m!1358785))

(declare-fun m!1358787 () Bool)

(assert (=> b!1471976 m!1358787))

(declare-fun m!1358789 () Bool)

(assert (=> b!1471983 m!1358789))

(declare-fun m!1358791 () Bool)

(assert (=> b!1471983 m!1358791))

(declare-fun m!1358793 () Bool)

(assert (=> b!1471978 m!1358793))

(declare-fun m!1358795 () Bool)

(assert (=> b!1471978 m!1358795))

(declare-fun m!1358797 () Bool)

(assert (=> b!1471979 m!1358797))

(assert (=> b!1471979 m!1358797))

(declare-fun m!1358799 () Bool)

(assert (=> b!1471979 m!1358799))

(assert (=> b!1471981 m!1358797))

(assert (=> b!1471981 m!1358797))

(declare-fun m!1358801 () Bool)

(assert (=> b!1471981 m!1358801))

(declare-fun m!1358803 () Bool)

(assert (=> b!1471987 m!1358803))

(assert (=> b!1471987 m!1358803))

(declare-fun m!1358805 () Bool)

(assert (=> b!1471987 m!1358805))

(declare-fun m!1358807 () Bool)

(assert (=> b!1471986 m!1358807))

(declare-fun m!1358809 () Bool)

(assert (=> b!1471977 m!1358809))

(declare-fun m!1358811 () Bool)

(assert (=> b!1471990 m!1358811))

(assert (=> b!1471990 m!1358797))

(declare-fun m!1358813 () Bool)

(assert (=> start!125822 m!1358813))

(declare-fun m!1358815 () Bool)

(assert (=> start!125822 m!1358815))

(assert (=> b!1471982 m!1358797))

(assert (=> b!1471982 m!1358797))

(declare-fun m!1358817 () Bool)

(assert (=> b!1471982 m!1358817))

(assert (=> b!1471982 m!1358817))

(assert (=> b!1471982 m!1358797))

(declare-fun m!1358819 () Bool)

(assert (=> b!1471982 m!1358819))

(declare-fun m!1358821 () Bool)

(assert (=> b!1471984 m!1358821))

(assert (=> b!1471984 m!1358821))

(declare-fun m!1358823 () Bool)

(assert (=> b!1471984 m!1358823))

(assert (=> b!1471984 m!1358793))

(declare-fun m!1358825 () Bool)

(assert (=> b!1471984 m!1358825))

(assert (=> b!1471988 m!1358797))

(assert (=> b!1471988 m!1358797))

(declare-fun m!1358827 () Bool)

(assert (=> b!1471988 m!1358827))

(push 1)

