; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124726 () Bool)

(assert start!124726)

(declare-fun b!1444813 () Bool)

(declare-fun e!814003 () Bool)

(declare-fun e!814006 () Bool)

(assert (=> b!1444813 (= e!814003 e!814006)))

(declare-fun res!976868 () Bool)

(assert (=> b!1444813 (=> (not res!976868) (not e!814006))))

(declare-datatypes ((array!98091 0))(
  ( (array!98092 (arr!47329 (Array (_ BitVec 32) (_ BitVec 64))) (size!47880 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98091)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11604 0))(
  ( (MissingZero!11604 (index!48807 (_ BitVec 32))) (Found!11604 (index!48808 (_ BitVec 32))) (Intermediate!11604 (undefined!12416 Bool) (index!48809 (_ BitVec 32)) (x!130504 (_ BitVec 32))) (Undefined!11604) (MissingVacant!11604 (index!48810 (_ BitVec 32))) )
))
(declare-fun lt!634279 () SeekEntryResult!11604)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98091 (_ BitVec 32)) SeekEntryResult!11604)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1444813 (= res!976868 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47329 a!2862) j!93) mask!2687) (select (arr!47329 a!2862) j!93) a!2862 mask!2687) lt!634279))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1444813 (= lt!634279 (Intermediate!11604 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1444814 () Bool)

(declare-fun res!976866 () Bool)

(declare-fun e!814004 () Bool)

(assert (=> b!1444814 (=> (not res!976866) (not e!814004))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1444814 (= res!976866 (validKeyInArray!0 (select (arr!47329 a!2862) i!1006)))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!634278 () (_ BitVec 64))

(declare-fun b!1444815 () Bool)

(declare-fun lt!634277 () array!98091)

(declare-fun e!814005 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!634275 () SeekEntryResult!11604)

(assert (=> b!1444815 (= e!814005 (= lt!634275 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634278 lt!634277 mask!2687)))))

(declare-fun b!1444816 () Bool)

(declare-fun e!814001 () Bool)

(assert (=> b!1444816 (= e!814006 e!814001)))

(declare-fun res!976864 () Bool)

(assert (=> b!1444816 (=> (not res!976864) (not e!814001))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1444816 (= res!976864 (= lt!634275 (Intermediate!11604 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1444816 (= lt!634275 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634278 mask!2687) lt!634278 lt!634277 mask!2687))))

(assert (=> b!1444816 (= lt!634278 (select (store (arr!47329 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1444817 () Bool)

(declare-fun res!976870 () Bool)

(declare-fun e!814002 () Bool)

(assert (=> b!1444817 (=> (not res!976870) (not e!814002))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98091 (_ BitVec 32)) SeekEntryResult!11604)

(assert (=> b!1444817 (= res!976870 (= (seekEntryOrOpen!0 (select (arr!47329 a!2862) j!93) a!2862 mask!2687) (Found!11604 j!93)))))

(declare-fun b!1444818 () Bool)

(declare-fun res!976858 () Bool)

(assert (=> b!1444818 (=> (not res!976858) (not e!814004))))

(declare-datatypes ((List!34010 0))(
  ( (Nil!34007) (Cons!34006 (h!35356 (_ BitVec 64)) (t!48711 List!34010)) )
))
(declare-fun arrayNoDuplicates!0 (array!98091 (_ BitVec 32) List!34010) Bool)

(assert (=> b!1444818 (= res!976858 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34007))))

(declare-fun b!1444819 () Bool)

(declare-fun res!976860 () Bool)

(assert (=> b!1444819 (=> (not res!976860) (not e!814001))))

(assert (=> b!1444819 (= res!976860 e!814005)))

(declare-fun c!133490 () Bool)

(assert (=> b!1444819 (= c!133490 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1444820 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98091 (_ BitVec 32)) SeekEntryResult!11604)

(assert (=> b!1444820 (= e!814005 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634278 lt!634277 mask!2687) (seekEntryOrOpen!0 lt!634278 lt!634277 mask!2687)))))

(declare-fun res!976862 () Bool)

(assert (=> start!124726 (=> (not res!976862) (not e!814004))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124726 (= res!976862 (validMask!0 mask!2687))))

(assert (=> start!124726 e!814004))

(assert (=> start!124726 true))

(declare-fun array_inv!36274 (array!98091) Bool)

(assert (=> start!124726 (array_inv!36274 a!2862)))

(declare-fun b!1444812 () Bool)

(declare-fun res!976872 () Bool)

(assert (=> b!1444812 (=> (not res!976872) (not e!814004))))

(assert (=> b!1444812 (= res!976872 (validKeyInArray!0 (select (arr!47329 a!2862) j!93)))))

(declare-fun b!1444821 () Bool)

(assert (=> b!1444821 (= e!814004 e!814003)))

(declare-fun res!976871 () Bool)

(assert (=> b!1444821 (=> (not res!976871) (not e!814003))))

(assert (=> b!1444821 (= res!976871 (= (select (store (arr!47329 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1444821 (= lt!634277 (array!98092 (store (arr!47329 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47880 a!2862)))))

(declare-fun b!1444822 () Bool)

(assert (=> b!1444822 (= e!814001 (not true))))

(assert (=> b!1444822 e!814002))

(declare-fun res!976861 () Bool)

(assert (=> b!1444822 (=> (not res!976861) (not e!814002))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98091 (_ BitVec 32)) Bool)

(assert (=> b!1444822 (= res!976861 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48652 0))(
  ( (Unit!48653) )
))
(declare-fun lt!634276 () Unit!48652)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98091 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48652)

(assert (=> b!1444822 (= lt!634276 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1444823 () Bool)

(declare-fun res!976869 () Bool)

(assert (=> b!1444823 (=> (not res!976869) (not e!814006))))

(assert (=> b!1444823 (= res!976869 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47329 a!2862) j!93) a!2862 mask!2687) lt!634279))))

(declare-fun b!1444824 () Bool)

(declare-fun res!976867 () Bool)

(assert (=> b!1444824 (=> (not res!976867) (not e!814004))))

(assert (=> b!1444824 (= res!976867 (and (= (size!47880 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47880 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47880 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1444825 () Bool)

(declare-fun res!976865 () Bool)

(assert (=> b!1444825 (=> (not res!976865) (not e!814004))))

(assert (=> b!1444825 (= res!976865 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47880 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47880 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47880 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1444826 () Bool)

(declare-fun res!976863 () Bool)

(assert (=> b!1444826 (=> (not res!976863) (not e!814004))))

(assert (=> b!1444826 (= res!976863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1444827 () Bool)

(declare-fun res!976859 () Bool)

(assert (=> b!1444827 (=> (not res!976859) (not e!814001))))

(assert (=> b!1444827 (= res!976859 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1444828 () Bool)

(assert (=> b!1444828 (= e!814002 (or (= (select (arr!47329 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47329 a!2862) intermediateBeforeIndex!19) (select (arr!47329 a!2862) j!93))))))

(assert (= (and start!124726 res!976862) b!1444824))

(assert (= (and b!1444824 res!976867) b!1444814))

(assert (= (and b!1444814 res!976866) b!1444812))

(assert (= (and b!1444812 res!976872) b!1444826))

(assert (= (and b!1444826 res!976863) b!1444818))

(assert (= (and b!1444818 res!976858) b!1444825))

(assert (= (and b!1444825 res!976865) b!1444821))

(assert (= (and b!1444821 res!976871) b!1444813))

(assert (= (and b!1444813 res!976868) b!1444823))

(assert (= (and b!1444823 res!976869) b!1444816))

(assert (= (and b!1444816 res!976864) b!1444819))

(assert (= (and b!1444819 c!133490) b!1444815))

(assert (= (and b!1444819 (not c!133490)) b!1444820))

(assert (= (and b!1444819 res!976860) b!1444827))

(assert (= (and b!1444827 res!976859) b!1444822))

(assert (= (and b!1444822 res!976861) b!1444817))

(assert (= (and b!1444817 res!976870) b!1444828))

(declare-fun m!1333869 () Bool)

(assert (=> b!1444815 m!1333869))

(declare-fun m!1333871 () Bool)

(assert (=> b!1444820 m!1333871))

(declare-fun m!1333873 () Bool)

(assert (=> b!1444820 m!1333873))

(declare-fun m!1333875 () Bool)

(assert (=> b!1444828 m!1333875))

(declare-fun m!1333877 () Bool)

(assert (=> b!1444828 m!1333877))

(declare-fun m!1333879 () Bool)

(assert (=> b!1444822 m!1333879))

(declare-fun m!1333881 () Bool)

(assert (=> b!1444822 m!1333881))

(assert (=> b!1444823 m!1333877))

(assert (=> b!1444823 m!1333877))

(declare-fun m!1333883 () Bool)

(assert (=> b!1444823 m!1333883))

(assert (=> b!1444817 m!1333877))

(assert (=> b!1444817 m!1333877))

(declare-fun m!1333885 () Bool)

(assert (=> b!1444817 m!1333885))

(declare-fun m!1333887 () Bool)

(assert (=> b!1444816 m!1333887))

(assert (=> b!1444816 m!1333887))

(declare-fun m!1333889 () Bool)

(assert (=> b!1444816 m!1333889))

(declare-fun m!1333891 () Bool)

(assert (=> b!1444816 m!1333891))

(declare-fun m!1333893 () Bool)

(assert (=> b!1444816 m!1333893))

(assert (=> b!1444821 m!1333891))

(declare-fun m!1333895 () Bool)

(assert (=> b!1444821 m!1333895))

(declare-fun m!1333897 () Bool)

(assert (=> b!1444826 m!1333897))

(declare-fun m!1333899 () Bool)

(assert (=> b!1444818 m!1333899))

(assert (=> b!1444813 m!1333877))

(assert (=> b!1444813 m!1333877))

(declare-fun m!1333901 () Bool)

(assert (=> b!1444813 m!1333901))

(assert (=> b!1444813 m!1333901))

(assert (=> b!1444813 m!1333877))

(declare-fun m!1333903 () Bool)

(assert (=> b!1444813 m!1333903))

(assert (=> b!1444812 m!1333877))

(assert (=> b!1444812 m!1333877))

(declare-fun m!1333905 () Bool)

(assert (=> b!1444812 m!1333905))

(declare-fun m!1333907 () Bool)

(assert (=> start!124726 m!1333907))

(declare-fun m!1333909 () Bool)

(assert (=> start!124726 m!1333909))

(declare-fun m!1333911 () Bool)

(assert (=> b!1444814 m!1333911))

(assert (=> b!1444814 m!1333911))

(declare-fun m!1333913 () Bool)

(assert (=> b!1444814 m!1333913))

(push 1)

