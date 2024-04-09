; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124252 () Bool)

(assert start!124252)

(declare-fun b!1437551 () Bool)

(declare-fun res!970444 () Bool)

(declare-fun e!811056 () Bool)

(assert (=> b!1437551 (=> (not res!970444) (not e!811056))))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11430 0))(
  ( (MissingZero!11430 (index!48111 (_ BitVec 32))) (Found!11430 (index!48112 (_ BitVec 32))) (Intermediate!11430 (undefined!12242 Bool) (index!48113 (_ BitVec 32)) (x!129848 (_ BitVec 32))) (Undefined!11430) (MissingVacant!11430 (index!48114 (_ BitVec 32))) )
))
(declare-fun lt!632296 () SeekEntryResult!11430)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!97734 0))(
  ( (array!97735 (arr!47155 (Array (_ BitVec 32) (_ BitVec 64))) (size!47706 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97734)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97734 (_ BitVec 32)) SeekEntryResult!11430)

(assert (=> b!1437551 (= res!970444 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47155 a!2862) j!93) a!2862 mask!2687) lt!632296))))

(declare-fun b!1437552 () Bool)

(declare-fun e!811058 () Bool)

(assert (=> b!1437552 (= e!811058 e!811056)))

(declare-fun res!970440 () Bool)

(assert (=> b!1437552 (=> (not res!970440) (not e!811056))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437552 (= res!970440 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47155 a!2862) j!93) mask!2687) (select (arr!47155 a!2862) j!93) a!2862 mask!2687) lt!632296))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1437552 (= lt!632296 (Intermediate!11430 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437554 () Bool)

(declare-fun res!970438 () Bool)

(assert (=> b!1437554 (=> (not res!970438) (not e!811058))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1437554 (= res!970438 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47706 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47706 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47706 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437555 () Bool)

(assert (=> b!1437555 (= e!811056 (bvslt mask!2687 #b00000000000000000000000000000000))))

(declare-fun lt!632295 () (_ BitVec 32))

(assert (=> b!1437555 (= lt!632295 (toIndex!0 (select (store (arr!47155 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687))))

(declare-fun b!1437556 () Bool)

(declare-fun res!970443 () Bool)

(assert (=> b!1437556 (=> (not res!970443) (not e!811058))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437556 (= res!970443 (validKeyInArray!0 (select (arr!47155 a!2862) i!1006)))))

(declare-fun b!1437557 () Bool)

(declare-fun res!970439 () Bool)

(assert (=> b!1437557 (=> (not res!970439) (not e!811058))))

(declare-datatypes ((List!33836 0))(
  ( (Nil!33833) (Cons!33832 (h!35173 (_ BitVec 64)) (t!48537 List!33836)) )
))
(declare-fun arrayNoDuplicates!0 (array!97734 (_ BitVec 32) List!33836) Bool)

(assert (=> b!1437557 (= res!970439 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33833))))

(declare-fun b!1437558 () Bool)

(declare-fun res!970441 () Bool)

(assert (=> b!1437558 (=> (not res!970441) (not e!811058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97734 (_ BitVec 32)) Bool)

(assert (=> b!1437558 (= res!970441 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1437559 () Bool)

(declare-fun res!970442 () Bool)

(assert (=> b!1437559 (=> (not res!970442) (not e!811058))))

(assert (=> b!1437559 (= res!970442 (and (= (size!47706 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47706 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47706 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!970445 () Bool)

(assert (=> start!124252 (=> (not res!970445) (not e!811058))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124252 (= res!970445 (validMask!0 mask!2687))))

(assert (=> start!124252 e!811058))

(assert (=> start!124252 true))

(declare-fun array_inv!36100 (array!97734) Bool)

(assert (=> start!124252 (array_inv!36100 a!2862)))

(declare-fun b!1437553 () Bool)

(declare-fun res!970446 () Bool)

(assert (=> b!1437553 (=> (not res!970446) (not e!811058))))

(assert (=> b!1437553 (= res!970446 (validKeyInArray!0 (select (arr!47155 a!2862) j!93)))))

(assert (= (and start!124252 res!970445) b!1437559))

(assert (= (and b!1437559 res!970442) b!1437556))

(assert (= (and b!1437556 res!970443) b!1437553))

(assert (= (and b!1437553 res!970446) b!1437558))

(assert (= (and b!1437558 res!970441) b!1437557))

(assert (= (and b!1437557 res!970439) b!1437554))

(assert (= (and b!1437554 res!970438) b!1437552))

(assert (= (and b!1437552 res!970440) b!1437551))

(assert (= (and b!1437551 res!970444) b!1437555))

(declare-fun m!1326843 () Bool)

(assert (=> b!1437554 m!1326843))

(declare-fun m!1326845 () Bool)

(assert (=> b!1437554 m!1326845))

(declare-fun m!1326847 () Bool)

(assert (=> start!124252 m!1326847))

(declare-fun m!1326849 () Bool)

(assert (=> start!124252 m!1326849))

(declare-fun m!1326851 () Bool)

(assert (=> b!1437552 m!1326851))

(assert (=> b!1437552 m!1326851))

(declare-fun m!1326853 () Bool)

(assert (=> b!1437552 m!1326853))

(assert (=> b!1437552 m!1326853))

(assert (=> b!1437552 m!1326851))

(declare-fun m!1326855 () Bool)

(assert (=> b!1437552 m!1326855))

(declare-fun m!1326857 () Bool)

(assert (=> b!1437557 m!1326857))

(assert (=> b!1437553 m!1326851))

(assert (=> b!1437553 m!1326851))

(declare-fun m!1326859 () Bool)

(assert (=> b!1437553 m!1326859))

(declare-fun m!1326861 () Bool)

(assert (=> b!1437556 m!1326861))

(assert (=> b!1437556 m!1326861))

(declare-fun m!1326863 () Bool)

(assert (=> b!1437556 m!1326863))

(assert (=> b!1437551 m!1326851))

(assert (=> b!1437551 m!1326851))

(declare-fun m!1326865 () Bool)

(assert (=> b!1437551 m!1326865))

(assert (=> b!1437555 m!1326843))

(declare-fun m!1326867 () Bool)

(assert (=> b!1437555 m!1326867))

(assert (=> b!1437555 m!1326867))

(declare-fun m!1326869 () Bool)

(assert (=> b!1437555 m!1326869))

(declare-fun m!1326871 () Bool)

(assert (=> b!1437558 m!1326871))

(push 1)

