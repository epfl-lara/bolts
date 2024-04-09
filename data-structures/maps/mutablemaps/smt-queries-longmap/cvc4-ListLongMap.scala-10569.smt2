; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124598 () Bool)

(assert start!124598)

(declare-fun b!1441541 () Bool)

(declare-fun res!973973 () Bool)

(declare-fun e!812631 () Bool)

(assert (=> b!1441541 (=> (not res!973973) (not e!812631))))

(declare-datatypes ((array!97963 0))(
  ( (array!97964 (arr!47265 (Array (_ BitVec 32) (_ BitVec 64))) (size!47816 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97963)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1441541 (= res!973973 (validKeyInArray!0 (select (arr!47265 a!2862) i!1006)))))

(declare-fun b!1441542 () Bool)

(declare-fun res!973978 () Bool)

(assert (=> b!1441542 (=> (not res!973978) (not e!812631))))

(declare-datatypes ((List!33946 0))(
  ( (Nil!33943) (Cons!33942 (h!35292 (_ BitVec 64)) (t!48647 List!33946)) )
))
(declare-fun arrayNoDuplicates!0 (array!97963 (_ BitVec 32) List!33946) Bool)

(assert (=> b!1441542 (= res!973978 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33943))))

(declare-fun e!812632 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!633247 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1441544 () Bool)

(declare-fun lt!633243 () array!97963)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11540 0))(
  ( (MissingZero!11540 (index!48551 (_ BitVec 32))) (Found!11540 (index!48552 (_ BitVec 32))) (Intermediate!11540 (undefined!12352 Bool) (index!48553 (_ BitVec 32)) (x!130264 (_ BitVec 32))) (Undefined!11540) (MissingVacant!11540 (index!48554 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97963 (_ BitVec 32)) SeekEntryResult!11540)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97963 (_ BitVec 32)) SeekEntryResult!11540)

(assert (=> b!1441544 (= e!812632 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!633247 lt!633243 mask!2687) (seekEntryOrOpen!0 lt!633247 lt!633243 mask!2687)))))

(declare-fun b!1441545 () Bool)

(declare-fun res!973977 () Bool)

(declare-fun e!812634 () Bool)

(assert (=> b!1441545 (=> (not res!973977) (not e!812634))))

(declare-fun lt!633244 () SeekEntryResult!11540)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97963 (_ BitVec 32)) SeekEntryResult!11540)

(assert (=> b!1441545 (= res!973977 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47265 a!2862) j!93) a!2862 mask!2687) lt!633244))))

(declare-fun b!1441546 () Bool)

(declare-fun e!812635 () Bool)

(assert (=> b!1441546 (= e!812635 e!812634)))

(declare-fun res!973983 () Bool)

(assert (=> b!1441546 (=> (not res!973983) (not e!812634))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1441546 (= res!973983 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47265 a!2862) j!93) mask!2687) (select (arr!47265 a!2862) j!93) a!2862 mask!2687) lt!633244))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1441546 (= lt!633244 (Intermediate!11540 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1441547 () Bool)

(declare-fun res!973980 () Bool)

(assert (=> b!1441547 (=> (not res!973980) (not e!812631))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1441547 (= res!973980 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47816 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47816 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47816 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1441548 () Bool)

(assert (=> b!1441548 (= e!812631 e!812635)))

(declare-fun res!973976 () Bool)

(assert (=> b!1441548 (=> (not res!973976) (not e!812635))))

(assert (=> b!1441548 (= res!973976 (= (select (store (arr!47265 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1441548 (= lt!633243 (array!97964 (store (arr!47265 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47816 a!2862)))))

(declare-fun b!1441549 () Bool)

(declare-fun lt!633246 () SeekEntryResult!11540)

(assert (=> b!1441549 (= e!812632 (= lt!633246 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!633247 lt!633243 mask!2687)))))

(declare-fun b!1441550 () Bool)

(declare-fun e!812633 () Bool)

(assert (=> b!1441550 (= e!812634 e!812633)))

(declare-fun res!973974 () Bool)

(assert (=> b!1441550 (=> (not res!973974) (not e!812633))))

(assert (=> b!1441550 (= res!973974 (= lt!633246 (Intermediate!11540 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1441550 (= lt!633246 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!633247 mask!2687) lt!633247 lt!633243 mask!2687))))

(assert (=> b!1441550 (= lt!633247 (select (store (arr!47265 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1441551 () Bool)

(declare-fun res!973975 () Bool)

(assert (=> b!1441551 (=> (not res!973975) (not e!812631))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97963 (_ BitVec 32)) Bool)

(assert (=> b!1441551 (= res!973975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1441543 () Bool)

(assert (=> b!1441543 (= e!812633 (not true))))

(assert (=> b!1441543 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!48524 0))(
  ( (Unit!48525) )
))
(declare-fun lt!633245 () Unit!48524)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97963 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48524)

(assert (=> b!1441543 (= lt!633245 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun res!973971 () Bool)

(assert (=> start!124598 (=> (not res!973971) (not e!812631))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124598 (= res!973971 (validMask!0 mask!2687))))

(assert (=> start!124598 e!812631))

(assert (=> start!124598 true))

(declare-fun array_inv!36210 (array!97963) Bool)

(assert (=> start!124598 (array_inv!36210 a!2862)))

(declare-fun b!1441552 () Bool)

(declare-fun res!973972 () Bool)

(assert (=> b!1441552 (=> (not res!973972) (not e!812633))))

(assert (=> b!1441552 (= res!973972 e!812632)))

(declare-fun c!133298 () Bool)

(assert (=> b!1441552 (= c!133298 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1441553 () Bool)

(declare-fun res!973982 () Bool)

(assert (=> b!1441553 (=> (not res!973982) (not e!812631))))

(assert (=> b!1441553 (= res!973982 (and (= (size!47816 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47816 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47816 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1441554 () Bool)

(declare-fun res!973981 () Bool)

(assert (=> b!1441554 (=> (not res!973981) (not e!812631))))

(assert (=> b!1441554 (= res!973981 (validKeyInArray!0 (select (arr!47265 a!2862) j!93)))))

(declare-fun b!1441555 () Bool)

(declare-fun res!973979 () Bool)

(assert (=> b!1441555 (=> (not res!973979) (not e!812633))))

(assert (=> b!1441555 (= res!973979 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!124598 res!973971) b!1441553))

(assert (= (and b!1441553 res!973982) b!1441541))

(assert (= (and b!1441541 res!973973) b!1441554))

(assert (= (and b!1441554 res!973981) b!1441551))

(assert (= (and b!1441551 res!973975) b!1441542))

(assert (= (and b!1441542 res!973978) b!1441547))

(assert (= (and b!1441547 res!973980) b!1441548))

(assert (= (and b!1441548 res!973976) b!1441546))

(assert (= (and b!1441546 res!973983) b!1441545))

(assert (= (and b!1441545 res!973977) b!1441550))

(assert (= (and b!1441550 res!973974) b!1441552))

(assert (= (and b!1441552 c!133298) b!1441549))

(assert (= (and b!1441552 (not c!133298)) b!1441544))

(assert (= (and b!1441552 res!973972) b!1441555))

(assert (= (and b!1441555 res!973979) b!1441543))

(declare-fun m!1330809 () Bool)

(assert (=> b!1441554 m!1330809))

(assert (=> b!1441554 m!1330809))

(declare-fun m!1330811 () Bool)

(assert (=> b!1441554 m!1330811))

(declare-fun m!1330813 () Bool)

(assert (=> b!1441548 m!1330813))

(declare-fun m!1330815 () Bool)

(assert (=> b!1441548 m!1330815))

(declare-fun m!1330817 () Bool)

(assert (=> b!1441541 m!1330817))

(assert (=> b!1441541 m!1330817))

(declare-fun m!1330819 () Bool)

(assert (=> b!1441541 m!1330819))

(declare-fun m!1330821 () Bool)

(assert (=> b!1441551 m!1330821))

(assert (=> b!1441545 m!1330809))

(assert (=> b!1441545 m!1330809))

(declare-fun m!1330823 () Bool)

(assert (=> b!1441545 m!1330823))

(declare-fun m!1330825 () Bool)

(assert (=> start!124598 m!1330825))

(declare-fun m!1330827 () Bool)

(assert (=> start!124598 m!1330827))

(declare-fun m!1330829 () Bool)

(assert (=> b!1441544 m!1330829))

(declare-fun m!1330831 () Bool)

(assert (=> b!1441544 m!1330831))

(declare-fun m!1330833 () Bool)

(assert (=> b!1441542 m!1330833))

(declare-fun m!1330835 () Bool)

(assert (=> b!1441543 m!1330835))

(declare-fun m!1330837 () Bool)

(assert (=> b!1441543 m!1330837))

(assert (=> b!1441546 m!1330809))

(assert (=> b!1441546 m!1330809))

(declare-fun m!1330839 () Bool)

(assert (=> b!1441546 m!1330839))

(assert (=> b!1441546 m!1330839))

(assert (=> b!1441546 m!1330809))

(declare-fun m!1330841 () Bool)

(assert (=> b!1441546 m!1330841))

(declare-fun m!1330843 () Bool)

(assert (=> b!1441550 m!1330843))

(assert (=> b!1441550 m!1330843))

(declare-fun m!1330845 () Bool)

(assert (=> b!1441550 m!1330845))

(assert (=> b!1441550 m!1330813))

(declare-fun m!1330847 () Bool)

(assert (=> b!1441550 m!1330847))

(declare-fun m!1330849 () Bool)

(assert (=> b!1441549 m!1330849))

(push 1)

(assert (not b!1441546))

(assert (not b!1441550))

(assert (not b!1441542))

