; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!120000 () Bool)

(assert start!120000)

(declare-fun res!935364 () Bool)

(declare-fun e!790548 () Bool)

(assert (=> start!120000 (=> (not res!935364) (not e!790548))))

(declare-fun mask!2840 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!120000 (= res!935364 (validMask!0 mask!2840))))

(assert (=> start!120000 e!790548))

(assert (=> start!120000 true))

(declare-datatypes ((array!95447 0))(
  ( (array!95448 (arr!46073 (Array (_ BitVec 32) (_ BitVec 64))) (size!46624 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95447)

(declare-fun array_inv!35018 (array!95447) Bool)

(assert (=> start!120000 (array_inv!35018 a!2901)))

(declare-fun b!1396334 () Bool)

(declare-fun res!935362 () Bool)

(assert (=> b!1396334 (=> (not res!935362) (not e!790548))))

(declare-fun j!112 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1396334 (= res!935362 (validKeyInArray!0 (select (arr!46073 a!2901) j!112)))))

(declare-fun b!1396335 () Bool)

(declare-fun res!935363 () Bool)

(assert (=> b!1396335 (=> (not res!935363) (not e!790548))))

(declare-datatypes ((List!32772 0))(
  ( (Nil!32769) (Cons!32768 (h!34010 (_ BitVec 64)) (t!47473 List!32772)) )
))
(declare-fun arrayNoDuplicates!0 (array!95447 (_ BitVec 32) List!32772) Bool)

(assert (=> b!1396335 (= res!935363 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32769))))

(declare-fun b!1396336 () Bool)

(declare-fun e!790546 () Bool)

(declare-fun e!790547 () Bool)

(assert (=> b!1396336 (= e!790546 e!790547)))

(declare-fun res!935356 () Bool)

(assert (=> b!1396336 (=> res!935356 e!790547)))

(declare-fun lt!613349 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!10412 0))(
  ( (MissingZero!10412 (index!44018 (_ BitVec 32))) (Found!10412 (index!44019 (_ BitVec 32))) (Intermediate!10412 (undefined!11224 Bool) (index!44020 (_ BitVec 32)) (x!125693 (_ BitVec 32))) (Undefined!10412) (MissingVacant!10412 (index!44021 (_ BitVec 32))) )
))
(declare-fun lt!613350 () SeekEntryResult!10412)

(declare-fun lt!613352 () SeekEntryResult!10412)

(get-info :version)

(assert (=> b!1396336 (= res!935356 (or (= lt!613352 lt!613350) (not ((_ is Intermediate!10412) lt!613350)) (bvslt (x!125693 lt!613352) #b00000000000000000000000000000000) (bvsgt (x!125693 lt!613352) #b01111111111111111111111111111110) (bvslt lt!613349 #b00000000000000000000000000000000) (bvsge lt!613349 (size!46624 a!2901)) (bvslt (index!44020 lt!613352) #b00000000000000000000000000000000) (bvsge (index!44020 lt!613352) (size!46624 a!2901)) (not (= lt!613352 (Intermediate!10412 false (index!44020 lt!613352) (x!125693 lt!613352)))) (not (= lt!613350 (Intermediate!10412 (undefined!11224 lt!613350) (index!44020 lt!613350) (x!125693 lt!613350))))))))

(declare-fun lt!613351 () (_ BitVec 64))

(declare-fun lt!613354 () array!95447)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95447 (_ BitVec 32)) SeekEntryResult!10412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1396336 (= lt!613350 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!613351 mask!2840) lt!613351 lt!613354 mask!2840))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1396336 (= lt!613351 (select (store (arr!46073 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) j!112))))

(assert (=> b!1396336 (= lt!613354 (array!95448 (store (arr!46073 a!2901) i!1037 #b1000000000000000000000000000000000000000000000000000000000000000) (size!46624 a!2901)))))

(declare-fun b!1396337 () Bool)

(assert (=> b!1396337 (= e!790547 true)))

(declare-fun lt!613353 () SeekEntryResult!10412)

(assert (=> b!1396337 (= lt!613353 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613349 lt!613351 lt!613354 mask!2840))))

(declare-fun e!790550 () Bool)

(declare-fun b!1396338 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95447 (_ BitVec 32)) SeekEntryResult!10412)

(assert (=> b!1396338 (= e!790550 (= (seekEntryOrOpen!0 (select (arr!46073 a!2901) j!112) a!2901 mask!2840) (Found!10412 j!112)))))

(declare-fun b!1396339 () Bool)

(declare-fun res!935357 () Bool)

(assert (=> b!1396339 (=> (not res!935357) (not e!790548))))

(assert (=> b!1396339 (= res!935357 (and (= (size!46624 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46624 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46624 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1396340 () Bool)

(declare-fun res!935359 () Bool)

(assert (=> b!1396340 (=> (not res!935359) (not e!790548))))

(assert (=> b!1396340 (= res!935359 (validKeyInArray!0 (select (arr!46073 a!2901) i!1037)))))

(declare-fun b!1396341 () Bool)

(assert (=> b!1396341 (= e!790548 (not e!790546))))

(declare-fun res!935361 () Bool)

(assert (=> b!1396341 (=> res!935361 e!790546)))

(assert (=> b!1396341 (= res!935361 (or (not ((_ is Intermediate!10412) lt!613352)) (undefined!11224 lt!613352)))))

(assert (=> b!1396341 e!790550))

(declare-fun res!935360 () Bool)

(assert (=> b!1396341 (=> (not res!935360) (not e!790550))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95447 (_ BitVec 32)) Bool)

(assert (=> b!1396341 (= res!935360 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46778 0))(
  ( (Unit!46779) )
))
(declare-fun lt!613348 () Unit!46778)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46778)

(assert (=> b!1396341 (= lt!613348 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(assert (=> b!1396341 (= lt!613352 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!613349 (select (arr!46073 a!2901) j!112) a!2901 mask!2840))))

(assert (=> b!1396341 (= lt!613349 (toIndex!0 (select (arr!46073 a!2901) j!112) mask!2840))))

(declare-fun b!1396342 () Bool)

(declare-fun res!935358 () Bool)

(assert (=> b!1396342 (=> (not res!935358) (not e!790548))))

(assert (=> b!1396342 (= res!935358 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(assert (= (and start!120000 res!935364) b!1396339))

(assert (= (and b!1396339 res!935357) b!1396340))

(assert (= (and b!1396340 res!935359) b!1396334))

(assert (= (and b!1396334 res!935362) b!1396342))

(assert (= (and b!1396342 res!935358) b!1396335))

(assert (= (and b!1396335 res!935363) b!1396341))

(assert (= (and b!1396341 res!935360) b!1396338))

(assert (= (and b!1396341 (not res!935361)) b!1396336))

(assert (= (and b!1396336 (not res!935356)) b!1396337))

(declare-fun m!1282823 () Bool)

(assert (=> b!1396337 m!1282823))

(declare-fun m!1282825 () Bool)

(assert (=> b!1396335 m!1282825))

(declare-fun m!1282827 () Bool)

(assert (=> b!1396340 m!1282827))

(assert (=> b!1396340 m!1282827))

(declare-fun m!1282829 () Bool)

(assert (=> b!1396340 m!1282829))

(declare-fun m!1282831 () Bool)

(assert (=> b!1396338 m!1282831))

(assert (=> b!1396338 m!1282831))

(declare-fun m!1282833 () Bool)

(assert (=> b!1396338 m!1282833))

(declare-fun m!1282835 () Bool)

(assert (=> start!120000 m!1282835))

(declare-fun m!1282837 () Bool)

(assert (=> start!120000 m!1282837))

(declare-fun m!1282839 () Bool)

(assert (=> b!1396336 m!1282839))

(assert (=> b!1396336 m!1282839))

(declare-fun m!1282841 () Bool)

(assert (=> b!1396336 m!1282841))

(declare-fun m!1282843 () Bool)

(assert (=> b!1396336 m!1282843))

(declare-fun m!1282845 () Bool)

(assert (=> b!1396336 m!1282845))

(assert (=> b!1396341 m!1282831))

(declare-fun m!1282847 () Bool)

(assert (=> b!1396341 m!1282847))

(assert (=> b!1396341 m!1282831))

(declare-fun m!1282849 () Bool)

(assert (=> b!1396341 m!1282849))

(declare-fun m!1282851 () Bool)

(assert (=> b!1396341 m!1282851))

(assert (=> b!1396341 m!1282831))

(declare-fun m!1282853 () Bool)

(assert (=> b!1396341 m!1282853))

(declare-fun m!1282855 () Bool)

(assert (=> b!1396342 m!1282855))

(assert (=> b!1396334 m!1282831))

(assert (=> b!1396334 m!1282831))

(declare-fun m!1282857 () Bool)

(assert (=> b!1396334 m!1282857))

(check-sat (not b!1396337) (not b!1396335) (not b!1396341) (not b!1396340) (not b!1396342) (not b!1396336) (not b!1396338) (not start!120000) (not b!1396334))
(check-sat)
