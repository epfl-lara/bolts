; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125102 () Bool)

(assert start!125102)

(declare-fun b!1455538 () Bool)

(declare-fun res!986292 () Bool)

(declare-fun e!819044 () Bool)

(assert (=> b!1455538 (=> (not res!986292) (not e!819044))))

(declare-datatypes ((SeekEntryResult!11792 0))(
  ( (MissingZero!11792 (index!49559 (_ BitVec 32))) (Found!11792 (index!49560 (_ BitVec 32))) (Intermediate!11792 (undefined!12604 Bool) (index!49561 (_ BitVec 32)) (x!131188 (_ BitVec 32))) (Undefined!11792) (MissingVacant!11792 (index!49562 (_ BitVec 32))) )
))
(declare-fun lt!637961 () SeekEntryResult!11792)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!98467 0))(
  ( (array!98468 (arr!47517 (Array (_ BitVec 32) (_ BitVec 64))) (size!48068 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98467)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98467 (_ BitVec 32)) SeekEntryResult!11792)

(assert (=> b!1455538 (= res!986292 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47517 a!2862) j!93) a!2862 mask!2687) lt!637961))))

(declare-fun lt!637960 () (_ BitVec 64))

(declare-fun e!819048 () Bool)

(declare-fun lt!637958 () array!98467)

(declare-fun b!1455539 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98467 (_ BitVec 32)) SeekEntryResult!11792)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98467 (_ BitVec 32)) SeekEntryResult!11792)

(assert (=> b!1455539 (= e!819048 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637960 lt!637958 mask!2687) (seekEntryOrOpen!0 lt!637960 lt!637958 mask!2687)))))

(declare-fun b!1455540 () Bool)

(declare-fun res!986284 () Bool)

(declare-fun e!819046 () Bool)

(assert (=> b!1455540 (=> (not res!986284) (not e!819046))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1455540 (= res!986284 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1455541 () Bool)

(declare-fun res!986279 () Bool)

(declare-fun e!819053 () Bool)

(assert (=> b!1455541 (=> (not res!986279) (not e!819053))))

(assert (=> b!1455541 (= res!986279 (= (seekEntryOrOpen!0 (select (arr!47517 a!2862) j!93) a!2862 mask!2687) (Found!11792 j!93)))))

(declare-fun b!1455542 () Bool)

(declare-fun e!819050 () Bool)

(assert (=> b!1455542 (= e!819050 e!819044)))

(declare-fun res!986291 () Bool)

(assert (=> b!1455542 (=> (not res!986291) (not e!819044))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455542 (= res!986291 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47517 a!2862) j!93) mask!2687) (select (arr!47517 a!2862) j!93) a!2862 mask!2687) lt!637961))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1455542 (= lt!637961 (Intermediate!11792 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun lt!637963 () SeekEntryResult!11792)

(declare-fun b!1455543 () Bool)

(assert (=> b!1455543 (= e!819048 (= lt!637963 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!637960 lt!637958 mask!2687)))))

(declare-fun res!986294 () Bool)

(declare-fun e!819051 () Bool)

(assert (=> start!125102 (=> (not res!986294) (not e!819051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125102 (= res!986294 (validMask!0 mask!2687))))

(assert (=> start!125102 e!819051))

(assert (=> start!125102 true))

(declare-fun array_inv!36462 (array!98467) Bool)

(assert (=> start!125102 (array_inv!36462 a!2862)))

(declare-fun b!1455544 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1455544 (= e!819053 (and (or (= (select (arr!47517 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47517 a!2862) intermediateBeforeIndex!19) (select (arr!47517 a!2862) j!93))) (let ((bdg!53167 (select (store (arr!47517 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))) (or (and (= (select (arr!47517 a!2862) index!646) bdg!53167) (= (select (arr!47517 a!2862) index!646) (select (arr!47517 a!2862) j!93))) (= (select (arr!47517 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= bdg!53167 #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!1455545 () Bool)

(declare-fun res!986283 () Bool)

(assert (=> b!1455545 (=> (not res!986283) (not e!819051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98467 (_ BitVec 32)) Bool)

(assert (=> b!1455545 (= res!986283 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun e!819045 () Bool)

(declare-fun b!1455546 () Bool)

(declare-fun lt!637962 () (_ BitVec 32))

(assert (=> b!1455546 (= e!819045 (not (= lt!637963 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637962 lt!637960 lt!637958 mask!2687))))))

(declare-fun b!1455547 () Bool)

(declare-fun res!986286 () Bool)

(assert (=> b!1455547 (=> (not res!986286) (not e!819051))))

(declare-datatypes ((List!34198 0))(
  ( (Nil!34195) (Cons!34194 (h!35544 (_ BitVec 64)) (t!48899 List!34198)) )
))
(declare-fun arrayNoDuplicates!0 (array!98467 (_ BitVec 32) List!34198) Bool)

(assert (=> b!1455547 (= res!986286 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34195))))

(declare-fun b!1455548 () Bool)

(declare-fun e!819047 () Bool)

(assert (=> b!1455548 (= e!819047 true)))

(declare-fun lt!637959 () Bool)

(assert (=> b!1455548 (= lt!637959 e!819045)))

(declare-fun c!134143 () Bool)

(assert (=> b!1455548 (= c!134143 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1455549 () Bool)

(declare-fun res!986281 () Bool)

(assert (=> b!1455549 (=> res!986281 e!819047)))

(assert (=> b!1455549 (= res!986281 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637962 (select (arr!47517 a!2862) j!93) a!2862 mask!2687) lt!637961)))))

(declare-fun b!1455550 () Bool)

(declare-fun res!986280 () Bool)

(assert (=> b!1455550 (=> (not res!986280) (not e!819051))))

(assert (=> b!1455550 (= res!986280 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48068 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48068 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48068 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1455551 () Bool)

(declare-fun res!986285 () Bool)

(assert (=> b!1455551 (=> (not res!986285) (not e!819046))))

(assert (=> b!1455551 (= res!986285 e!819048)))

(declare-fun c!134144 () Bool)

(assert (=> b!1455551 (= c!134144 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1455552 () Bool)

(declare-fun e!819049 () Bool)

(assert (=> b!1455552 (= e!819049 e!819047)))

(declare-fun res!986278 () Bool)

(assert (=> b!1455552 (=> res!986278 e!819047)))

(assert (=> b!1455552 (= res!986278 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!637962 #b00000000000000000000000000000000) (bvsge lt!637962 (size!48068 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1455552 (= lt!637962 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun lt!637957 () SeekEntryResult!11792)

(assert (=> b!1455552 (= lt!637957 (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!637960 lt!637958 mask!2687))))

(assert (=> b!1455552 (= lt!637957 (seekEntryOrOpen!0 lt!637960 lt!637958 mask!2687))))

(declare-fun b!1455553 () Bool)

(declare-fun res!986282 () Bool)

(assert (=> b!1455553 (=> (not res!986282) (not e!819051))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1455553 (= res!986282 (validKeyInArray!0 (select (arr!47517 a!2862) j!93)))))

(declare-fun b!1455554 () Bool)

(assert (=> b!1455554 (= e!819044 e!819046)))

(declare-fun res!986290 () Bool)

(assert (=> b!1455554 (=> (not res!986290) (not e!819046))))

(assert (=> b!1455554 (= res!986290 (= lt!637963 (Intermediate!11792 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1455554 (= lt!637963 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!637960 mask!2687) lt!637960 lt!637958 mask!2687))))

(assert (=> b!1455554 (= lt!637960 (select (store (arr!47517 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1455555 () Bool)

(declare-fun res!986287 () Bool)

(assert (=> b!1455555 (=> (not res!986287) (not e!819051))))

(assert (=> b!1455555 (= res!986287 (and (= (size!48068 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48068 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48068 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1455556 () Bool)

(assert (=> b!1455556 (= e!819045 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!637962 intermediateAfterIndex!19 lt!637960 lt!637958 mask!2687) lt!637957)))))

(declare-fun b!1455557 () Bool)

(declare-fun res!986288 () Bool)

(assert (=> b!1455557 (=> (not res!986288) (not e!819051))))

(assert (=> b!1455557 (= res!986288 (validKeyInArray!0 (select (arr!47517 a!2862) i!1006)))))

(declare-fun b!1455558 () Bool)

(assert (=> b!1455558 (= e!819046 (not e!819049))))

(declare-fun res!986295 () Bool)

(assert (=> b!1455558 (=> res!986295 e!819049)))

(assert (=> b!1455558 (= res!986295 (or (and (= (select (arr!47517 a!2862) index!646) (select (store (arr!47517 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47517 a!2862) index!646) (select (arr!47517 a!2862) j!93))) (= (select (arr!47517 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1455558 e!819053))

(declare-fun res!986289 () Bool)

(assert (=> b!1455558 (=> (not res!986289) (not e!819053))))

(assert (=> b!1455558 (= res!986289 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49028 0))(
  ( (Unit!49029) )
))
(declare-fun lt!637956 () Unit!49028)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98467 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49028)

(assert (=> b!1455558 (= lt!637956 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1455559 () Bool)

(assert (=> b!1455559 (= e!819051 e!819050)))

(declare-fun res!986293 () Bool)

(assert (=> b!1455559 (=> (not res!986293) (not e!819050))))

(assert (=> b!1455559 (= res!986293 (= (select (store (arr!47517 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1455559 (= lt!637958 (array!98468 (store (arr!47517 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48068 a!2862)))))

(assert (= (and start!125102 res!986294) b!1455555))

(assert (= (and b!1455555 res!986287) b!1455557))

(assert (= (and b!1455557 res!986288) b!1455553))

(assert (= (and b!1455553 res!986282) b!1455545))

(assert (= (and b!1455545 res!986283) b!1455547))

(assert (= (and b!1455547 res!986286) b!1455550))

(assert (= (and b!1455550 res!986280) b!1455559))

(assert (= (and b!1455559 res!986293) b!1455542))

(assert (= (and b!1455542 res!986291) b!1455538))

(assert (= (and b!1455538 res!986292) b!1455554))

(assert (= (and b!1455554 res!986290) b!1455551))

(assert (= (and b!1455551 c!134144) b!1455543))

(assert (= (and b!1455551 (not c!134144)) b!1455539))

(assert (= (and b!1455551 res!986285) b!1455540))

(assert (= (and b!1455540 res!986284) b!1455558))

(assert (= (and b!1455558 res!986289) b!1455541))

(assert (= (and b!1455541 res!986279) b!1455544))

(assert (= (and b!1455558 (not res!986295)) b!1455552))

(assert (= (and b!1455552 (not res!986278)) b!1455549))

(assert (= (and b!1455549 (not res!986281)) b!1455548))

(assert (= (and b!1455548 c!134143) b!1455546))

(assert (= (and b!1455548 (not c!134143)) b!1455556))

(declare-fun m!1343795 () Bool)

(assert (=> b!1455538 m!1343795))

(assert (=> b!1455538 m!1343795))

(declare-fun m!1343797 () Bool)

(assert (=> b!1455538 m!1343797))

(assert (=> b!1455549 m!1343795))

(assert (=> b!1455549 m!1343795))

(declare-fun m!1343799 () Bool)

(assert (=> b!1455549 m!1343799))

(declare-fun m!1343801 () Bool)

(assert (=> b!1455559 m!1343801))

(declare-fun m!1343803 () Bool)

(assert (=> b!1455559 m!1343803))

(declare-fun m!1343805 () Bool)

(assert (=> b!1455539 m!1343805))

(declare-fun m!1343807 () Bool)

(assert (=> b!1455539 m!1343807))

(assert (=> b!1455541 m!1343795))

(assert (=> b!1455541 m!1343795))

(declare-fun m!1343809 () Bool)

(assert (=> b!1455541 m!1343809))

(declare-fun m!1343811 () Bool)

(assert (=> b!1455552 m!1343811))

(assert (=> b!1455552 m!1343805))

(assert (=> b!1455552 m!1343807))

(assert (=> b!1455542 m!1343795))

(assert (=> b!1455542 m!1343795))

(declare-fun m!1343813 () Bool)

(assert (=> b!1455542 m!1343813))

(assert (=> b!1455542 m!1343813))

(assert (=> b!1455542 m!1343795))

(declare-fun m!1343815 () Bool)

(assert (=> b!1455542 m!1343815))

(declare-fun m!1343817 () Bool)

(assert (=> b!1455557 m!1343817))

(assert (=> b!1455557 m!1343817))

(declare-fun m!1343819 () Bool)

(assert (=> b!1455557 m!1343819))

(declare-fun m!1343821 () Bool)

(assert (=> b!1455558 m!1343821))

(assert (=> b!1455558 m!1343801))

(declare-fun m!1343823 () Bool)

(assert (=> b!1455558 m!1343823))

(declare-fun m!1343825 () Bool)

(assert (=> b!1455558 m!1343825))

(declare-fun m!1343827 () Bool)

(assert (=> b!1455558 m!1343827))

(assert (=> b!1455558 m!1343795))

(assert (=> b!1455553 m!1343795))

(assert (=> b!1455553 m!1343795))

(declare-fun m!1343829 () Bool)

(assert (=> b!1455553 m!1343829))

(declare-fun m!1343831 () Bool)

(assert (=> b!1455543 m!1343831))

(declare-fun m!1343833 () Bool)

(assert (=> b!1455556 m!1343833))

(declare-fun m!1343835 () Bool)

(assert (=> b!1455546 m!1343835))

(assert (=> b!1455544 m!1343801))

(declare-fun m!1343837 () Bool)

(assert (=> b!1455544 m!1343837))

(assert (=> b!1455544 m!1343823))

(assert (=> b!1455544 m!1343825))

(assert (=> b!1455544 m!1343795))

(declare-fun m!1343839 () Bool)

(assert (=> b!1455554 m!1343839))

(assert (=> b!1455554 m!1343839))

(declare-fun m!1343841 () Bool)

(assert (=> b!1455554 m!1343841))

(assert (=> b!1455554 m!1343801))

(declare-fun m!1343843 () Bool)

(assert (=> b!1455554 m!1343843))

(declare-fun m!1343845 () Bool)

(assert (=> start!125102 m!1343845))

(declare-fun m!1343847 () Bool)

(assert (=> start!125102 m!1343847))

(declare-fun m!1343849 () Bool)

(assert (=> b!1455545 m!1343849))

(declare-fun m!1343851 () Bool)

(assert (=> b!1455547 m!1343851))

(push 1)

