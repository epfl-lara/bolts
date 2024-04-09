; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130852 () Bool)

(assert start!130852)

(declare-fun res!1051320 () Bool)

(declare-fun e!854392 () Bool)

(assert (=> start!130852 (=> (not res!1051320) (not e!854392))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130852 (= res!1051320 (validMask!0 mask!2480))))

(assert (=> start!130852 e!854392))

(assert (=> start!130852 true))

(declare-datatypes ((array!101877 0))(
  ( (array!101878 (arr!49150 (Array (_ BitVec 32) (_ BitVec 64))) (size!49701 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101877)

(declare-fun array_inv!38095 (array!101877) Bool)

(assert (=> start!130852 (array_inv!38095 a!2792)))

(declare-fun b!1534090 () Bool)

(declare-fun res!1051314 () Bool)

(assert (=> b!1534090 (=> (not res!1051314) (not e!854392))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534090 (= res!1051314 (validKeyInArray!0 (select (arr!49150 a!2792) j!64)))))

(declare-fun b!1534091 () Bool)

(declare-fun res!1051316 () Bool)

(assert (=> b!1534091 (=> (not res!1051316) (not e!854392))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534091 (= res!1051316 (validKeyInArray!0 (select (arr!49150 a!2792) i!951)))))

(declare-fun b!1534092 () Bool)

(assert (=> b!1534092 (= e!854392 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13305 0))(
  ( (MissingZero!13305 (index!55614 (_ BitVec 32))) (Found!13305 (index!55615 (_ BitVec 32))) (Intermediate!13305 (undefined!14117 Bool) (index!55616 (_ BitVec 32)) (x!137382 (_ BitVec 32))) (Undefined!13305) (MissingVacant!13305 (index!55617 (_ BitVec 32))) )
))
(declare-fun lt!663772 () SeekEntryResult!13305)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101877 (_ BitVec 32)) SeekEntryResult!13305)

(assert (=> b!1534092 (= lt!663772 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49150 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534093 () Bool)

(declare-fun res!1051317 () Bool)

(assert (=> b!1534093 (=> (not res!1051317) (not e!854392))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101877 (_ BitVec 32)) Bool)

(assert (=> b!1534093 (= res!1051317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534094 () Bool)

(declare-fun res!1051318 () Bool)

(assert (=> b!1534094 (=> (not res!1051318) (not e!854392))))

(assert (=> b!1534094 (= res!1051318 (and (= (size!49701 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49701 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49701 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534095 () Bool)

(declare-fun res!1051319 () Bool)

(assert (=> b!1534095 (=> (not res!1051319) (not e!854392))))

(declare-datatypes ((List!35804 0))(
  ( (Nil!35801) (Cons!35800 (h!37246 (_ BitVec 64)) (t!50505 List!35804)) )
))
(declare-fun arrayNoDuplicates!0 (array!101877 (_ BitVec 32) List!35804) Bool)

(assert (=> b!1534095 (= res!1051319 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35801))))

(declare-fun b!1534096 () Bool)

(declare-fun res!1051315 () Bool)

(assert (=> b!1534096 (=> (not res!1051315) (not e!854392))))

(assert (=> b!1534096 (= res!1051315 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49701 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49701 a!2792)) (= (select (arr!49150 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130852 res!1051320) b!1534094))

(assert (= (and b!1534094 res!1051318) b!1534091))

(assert (= (and b!1534091 res!1051316) b!1534090))

(assert (= (and b!1534090 res!1051314) b!1534093))

(assert (= (and b!1534093 res!1051317) b!1534095))

(assert (= (and b!1534095 res!1051319) b!1534096))

(assert (= (and b!1534096 res!1051315) b!1534092))

(declare-fun m!1416807 () Bool)

(assert (=> b!1534093 m!1416807))

(declare-fun m!1416809 () Bool)

(assert (=> b!1534091 m!1416809))

(assert (=> b!1534091 m!1416809))

(declare-fun m!1416811 () Bool)

(assert (=> b!1534091 m!1416811))

(declare-fun m!1416813 () Bool)

(assert (=> b!1534095 m!1416813))

(declare-fun m!1416815 () Bool)

(assert (=> b!1534090 m!1416815))

(assert (=> b!1534090 m!1416815))

(declare-fun m!1416817 () Bool)

(assert (=> b!1534090 m!1416817))

(declare-fun m!1416819 () Bool)

(assert (=> b!1534096 m!1416819))

(declare-fun m!1416821 () Bool)

(assert (=> start!130852 m!1416821))

(declare-fun m!1416823 () Bool)

(assert (=> start!130852 m!1416823))

(assert (=> b!1534092 m!1416815))

(assert (=> b!1534092 m!1416815))

(declare-fun m!1416825 () Bool)

(assert (=> b!1534092 m!1416825))

(push 1)

(assert (not start!130852))

(assert (not b!1534095))

(assert (not b!1534090))

(assert (not b!1534093))

(assert (not b!1534092))

(assert (not b!1534091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

