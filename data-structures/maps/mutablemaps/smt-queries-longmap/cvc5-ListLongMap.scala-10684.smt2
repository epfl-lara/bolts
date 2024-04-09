; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125284 () Bool)

(assert start!125284)

(declare-datatypes ((array!98649 0))(
  ( (array!98650 (arr!47608 (Array (_ BitVec 32) (_ BitVec 64))) (size!48159 (_ BitVec 32))) )
))
(declare-fun lt!640080 () array!98649)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1461373 () Bool)

(declare-fun e!821611 () Bool)

(declare-datatypes ((SeekEntryResult!11883 0))(
  ( (MissingZero!11883 (index!49923 (_ BitVec 32))) (Found!11883 (index!49924 (_ BitVec 32))) (Intermediate!11883 (undefined!12695 Bool) (index!49925 (_ BitVec 32)) (x!131527 (_ BitVec 32))) (Undefined!11883) (MissingVacant!11883 (index!49926 (_ BitVec 32))) )
))
(declare-fun lt!640081 () SeekEntryResult!11883)

(declare-fun lt!640079 () (_ BitVec 64))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98649 (_ BitVec 32)) SeekEntryResult!11883)

(assert (=> b!1461373 (= e!821611 (= lt!640081 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640079 lt!640080 mask!2687)))))

(declare-fun res!991098 () Bool)

(declare-fun e!821610 () Bool)

(assert (=> start!125284 (=> (not res!991098) (not e!821610))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125284 (= res!991098 (validMask!0 mask!2687))))

(assert (=> start!125284 e!821610))

(assert (=> start!125284 true))

(declare-fun a!2862 () array!98649)

(declare-fun array_inv!36553 (array!98649) Bool)

(assert (=> start!125284 (array_inv!36553 a!2862)))

(declare-fun b!1461374 () Bool)

(declare-fun res!991106 () Bool)

(declare-fun e!821604 () Bool)

(assert (=> b!1461374 (=> (not res!991106) (not e!821604))))

(assert (=> b!1461374 (= res!991106 e!821611)))

(declare-fun c!134653 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1461374 (= c!134653 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461375 () Bool)

(declare-fun e!821612 () Bool)

(assert (=> b!1461375 (= e!821612 true)))

(declare-fun lt!640076 () Bool)

(declare-fun e!821603 () Bool)

(assert (=> b!1461375 (= lt!640076 e!821603)))

(declare-fun c!134654 () Bool)

(assert (=> b!1461375 (= c!134654 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461376 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98649 (_ BitVec 32)) SeekEntryResult!11883)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98649 (_ BitVec 32)) SeekEntryResult!11883)

(assert (=> b!1461376 (= e!821611 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640079 lt!640080 mask!2687) (seekEntryOrOpen!0 lt!640079 lt!640080 mask!2687)))))

(declare-fun b!1461377 () Bool)

(declare-fun res!991096 () Bool)

(assert (=> b!1461377 (=> (not res!991096) (not e!821604))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461377 (= res!991096 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun b!1461378 () Bool)

(declare-fun e!821605 () Bool)

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1461378 (= e!821605 (or (= (select (arr!47608 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47608 a!2862) intermediateBeforeIndex!19) (select (arr!47608 a!2862) j!93))))))

(declare-fun b!1461379 () Bool)

(declare-fun e!821606 () Bool)

(assert (=> b!1461379 (= e!821604 (not e!821606))))

(declare-fun res!991101 () Bool)

(assert (=> b!1461379 (=> res!991101 e!821606)))

(assert (=> b!1461379 (= res!991101 (or (and (= (select (arr!47608 a!2862) index!646) (select (store (arr!47608 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47608 a!2862) index!646) (select (arr!47608 a!2862) j!93))) (= (select (arr!47608 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1461379 e!821605))

(declare-fun res!991110 () Bool)

(assert (=> b!1461379 (=> (not res!991110) (not e!821605))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98649 (_ BitVec 32)) Bool)

(assert (=> b!1461379 (= res!991110 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49210 0))(
  ( (Unit!49211) )
))
(declare-fun lt!640075 () Unit!49210)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98649 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49210)

(assert (=> b!1461379 (= lt!640075 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461380 () Bool)

(declare-fun res!991104 () Bool)

(assert (=> b!1461380 (=> (not res!991104) (not e!821610))))

(declare-datatypes ((List!34289 0))(
  ( (Nil!34286) (Cons!34285 (h!35635 (_ BitVec 64)) (t!48990 List!34289)) )
))
(declare-fun arrayNoDuplicates!0 (array!98649 (_ BitVec 32) List!34289) Bool)

(assert (=> b!1461380 (= res!991104 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34286))))

(declare-fun b!1461381 () Bool)

(declare-fun res!991094 () Bool)

(assert (=> b!1461381 (=> (not res!991094) (not e!821610))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461381 (= res!991094 (validKeyInArray!0 (select (arr!47608 a!2862) j!93)))))

(declare-fun b!1461382 () Bool)

(declare-fun e!821608 () Bool)

(assert (=> b!1461382 (= e!821608 e!821604)))

(declare-fun res!991108 () Bool)

(assert (=> b!1461382 (=> (not res!991108) (not e!821604))))

(assert (=> b!1461382 (= res!991108 (= lt!640081 (Intermediate!11883 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461382 (= lt!640081 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640079 mask!2687) lt!640079 lt!640080 mask!2687))))

(assert (=> b!1461382 (= lt!640079 (select (store (arr!47608 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461383 () Bool)

(declare-fun lt!640077 () (_ BitVec 32))

(assert (=> b!1461383 (= e!821603 (not (= lt!640081 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640077 lt!640079 lt!640080 mask!2687))))))

(declare-fun b!1461384 () Bool)

(assert (=> b!1461384 (= e!821606 e!821612)))

(declare-fun res!991109 () Bool)

(assert (=> b!1461384 (=> res!991109 e!821612)))

(assert (=> b!1461384 (= res!991109 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640077 #b00000000000000000000000000000000) (bvsge lt!640077 (size!48159 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461384 (= lt!640077 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461385 () Bool)

(declare-fun res!991093 () Bool)

(assert (=> b!1461385 (=> (not res!991093) (not e!821610))))

(assert (=> b!1461385 (= res!991093 (validKeyInArray!0 (select (arr!47608 a!2862) i!1006)))))

(declare-fun b!1461386 () Bool)

(assert (=> b!1461386 (= e!821603 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640077 intermediateAfterIndex!19 lt!640079 lt!640080 mask!2687) (seekEntryOrOpen!0 lt!640079 lt!640080 mask!2687))))))

(declare-fun b!1461387 () Bool)

(declare-fun res!991107 () Bool)

(assert (=> b!1461387 (=> (not res!991107) (not e!821610))))

(assert (=> b!1461387 (= res!991107 (and (= (size!48159 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48159 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48159 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461388 () Bool)

(declare-fun e!821609 () Bool)

(assert (=> b!1461388 (= e!821609 e!821608)))

(declare-fun res!991103 () Bool)

(assert (=> b!1461388 (=> (not res!991103) (not e!821608))))

(declare-fun lt!640078 () SeekEntryResult!11883)

(assert (=> b!1461388 (= res!991103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47608 a!2862) j!93) mask!2687) (select (arr!47608 a!2862) j!93) a!2862 mask!2687) lt!640078))))

(assert (=> b!1461388 (= lt!640078 (Intermediate!11883 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461389 () Bool)

(assert (=> b!1461389 (= e!821610 e!821609)))

(declare-fun res!991102 () Bool)

(assert (=> b!1461389 (=> (not res!991102) (not e!821609))))

(assert (=> b!1461389 (= res!991102 (= (select (store (arr!47608 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461389 (= lt!640080 (array!98650 (store (arr!47608 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48159 a!2862)))))

(declare-fun b!1461390 () Bool)

(declare-fun res!991097 () Bool)

(assert (=> b!1461390 (=> (not res!991097) (not e!821605))))

(assert (=> b!1461390 (= res!991097 (= (seekEntryOrOpen!0 (select (arr!47608 a!2862) j!93) a!2862 mask!2687) (Found!11883 j!93)))))

(declare-fun b!1461391 () Bool)

(declare-fun res!991100 () Bool)

(assert (=> b!1461391 (=> (not res!991100) (not e!821610))))

(assert (=> b!1461391 (= res!991100 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461392 () Bool)

(declare-fun res!991099 () Bool)

(assert (=> b!1461392 (=> (not res!991099) (not e!821610))))

(assert (=> b!1461392 (= res!991099 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48159 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48159 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48159 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461393 () Bool)

(declare-fun res!991095 () Bool)

(assert (=> b!1461393 (=> (not res!991095) (not e!821608))))

(assert (=> b!1461393 (= res!991095 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47608 a!2862) j!93) a!2862 mask!2687) lt!640078))))

(declare-fun b!1461394 () Bool)

(declare-fun res!991105 () Bool)

(assert (=> b!1461394 (=> res!991105 e!821612)))

(assert (=> b!1461394 (= res!991105 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640077 (select (arr!47608 a!2862) j!93) a!2862 mask!2687) lt!640078)))))

(assert (= (and start!125284 res!991098) b!1461387))

(assert (= (and b!1461387 res!991107) b!1461385))

(assert (= (and b!1461385 res!991093) b!1461381))

(assert (= (and b!1461381 res!991094) b!1461391))

(assert (= (and b!1461391 res!991100) b!1461380))

(assert (= (and b!1461380 res!991104) b!1461392))

(assert (= (and b!1461392 res!991099) b!1461389))

(assert (= (and b!1461389 res!991102) b!1461388))

(assert (= (and b!1461388 res!991103) b!1461393))

(assert (= (and b!1461393 res!991095) b!1461382))

(assert (= (and b!1461382 res!991108) b!1461374))

(assert (= (and b!1461374 c!134653) b!1461373))

(assert (= (and b!1461374 (not c!134653)) b!1461376))

(assert (= (and b!1461374 res!991106) b!1461377))

(assert (= (and b!1461377 res!991096) b!1461379))

(assert (= (and b!1461379 res!991110) b!1461390))

(assert (= (and b!1461390 res!991097) b!1461378))

(assert (= (and b!1461379 (not res!991101)) b!1461384))

(assert (= (and b!1461384 (not res!991109)) b!1461394))

(assert (= (and b!1461394 (not res!991105)) b!1461375))

(assert (= (and b!1461375 c!134654) b!1461383))

(assert (= (and b!1461375 (not c!134654)) b!1461386))

(declare-fun m!1349007 () Bool)

(assert (=> b!1461390 m!1349007))

(assert (=> b!1461390 m!1349007))

(declare-fun m!1349009 () Bool)

(assert (=> b!1461390 m!1349009))

(declare-fun m!1349011 () Bool)

(assert (=> b!1461385 m!1349011))

(assert (=> b!1461385 m!1349011))

(declare-fun m!1349013 () Bool)

(assert (=> b!1461385 m!1349013))

(assert (=> b!1461394 m!1349007))

(assert (=> b!1461394 m!1349007))

(declare-fun m!1349015 () Bool)

(assert (=> b!1461394 m!1349015))

(declare-fun m!1349017 () Bool)

(assert (=> b!1461391 m!1349017))

(declare-fun m!1349019 () Bool)

(assert (=> b!1461378 m!1349019))

(assert (=> b!1461378 m!1349007))

(declare-fun m!1349021 () Bool)

(assert (=> b!1461379 m!1349021))

(declare-fun m!1349023 () Bool)

(assert (=> b!1461379 m!1349023))

(declare-fun m!1349025 () Bool)

(assert (=> b!1461379 m!1349025))

(declare-fun m!1349027 () Bool)

(assert (=> b!1461379 m!1349027))

(declare-fun m!1349029 () Bool)

(assert (=> b!1461379 m!1349029))

(assert (=> b!1461379 m!1349007))

(declare-fun m!1349031 () Bool)

(assert (=> b!1461376 m!1349031))

(declare-fun m!1349033 () Bool)

(assert (=> b!1461376 m!1349033))

(declare-fun m!1349035 () Bool)

(assert (=> start!125284 m!1349035))

(declare-fun m!1349037 () Bool)

(assert (=> start!125284 m!1349037))

(declare-fun m!1349039 () Bool)

(assert (=> b!1461384 m!1349039))

(assert (=> b!1461393 m!1349007))

(assert (=> b!1461393 m!1349007))

(declare-fun m!1349041 () Bool)

(assert (=> b!1461393 m!1349041))

(assert (=> b!1461388 m!1349007))

(assert (=> b!1461388 m!1349007))

(declare-fun m!1349043 () Bool)

(assert (=> b!1461388 m!1349043))

(assert (=> b!1461388 m!1349043))

(assert (=> b!1461388 m!1349007))

(declare-fun m!1349045 () Bool)

(assert (=> b!1461388 m!1349045))

(declare-fun m!1349047 () Bool)

(assert (=> b!1461383 m!1349047))

(declare-fun m!1349049 () Bool)

(assert (=> b!1461380 m!1349049))

(declare-fun m!1349051 () Bool)

(assert (=> b!1461382 m!1349051))

(assert (=> b!1461382 m!1349051))

(declare-fun m!1349053 () Bool)

(assert (=> b!1461382 m!1349053))

(assert (=> b!1461382 m!1349023))

(declare-fun m!1349055 () Bool)

(assert (=> b!1461382 m!1349055))

(assert (=> b!1461389 m!1349023))

(declare-fun m!1349057 () Bool)

(assert (=> b!1461389 m!1349057))

(declare-fun m!1349059 () Bool)

(assert (=> b!1461373 m!1349059))

(assert (=> b!1461381 m!1349007))

(assert (=> b!1461381 m!1349007))

(declare-fun m!1349061 () Bool)

(assert (=> b!1461381 m!1349061))

(declare-fun m!1349063 () Bool)

(assert (=> b!1461386 m!1349063))

(assert (=> b!1461386 m!1349033))

(push 1)

