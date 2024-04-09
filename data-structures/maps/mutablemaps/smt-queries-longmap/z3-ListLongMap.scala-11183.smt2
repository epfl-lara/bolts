; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130764 () Bool)

(assert start!130764)

(declare-fun b!1533091 () Bool)

(declare-fun res!1050321 () Bool)

(declare-fun e!854128 () Bool)

(assert (=> b!1533091 (=> (not res!1050321) (not e!854128))))

(declare-datatypes ((array!101789 0))(
  ( (array!101790 (arr!49106 (Array (_ BitVec 32) (_ BitVec 64))) (size!49657 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101789)

(declare-datatypes ((List!35760 0))(
  ( (Nil!35757) (Cons!35756 (h!37202 (_ BitVec 64)) (t!50461 List!35760)) )
))
(declare-fun arrayNoDuplicates!0 (array!101789 (_ BitVec 32) List!35760) Bool)

(assert (=> b!1533091 (= res!1050321 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35757))))

(declare-fun b!1533092 () Bool)

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1533092 (= e!854128 (and (= (select (arr!49106 a!2792) index!463) (select (arr!49106 a!2792) j!64)) (bvslt mask!2480 #b00000000000000000000000000000000)))))

(declare-fun b!1533093 () Bool)

(declare-fun res!1050316 () Bool)

(assert (=> b!1533093 (=> (not res!1050316) (not e!854128))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13261 0))(
  ( (MissingZero!13261 (index!55438 (_ BitVec 32))) (Found!13261 (index!55439 (_ BitVec 32))) (Intermediate!13261 (undefined!14073 Bool) (index!55440 (_ BitVec 32)) (x!137218 (_ BitVec 32))) (Undefined!13261) (MissingVacant!13261 (index!55441 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101789 (_ BitVec 32)) SeekEntryResult!13261)

(assert (=> b!1533093 (= res!1050316 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49106 a!2792) j!64) a!2792 mask!2480) (Found!13261 j!64)))))

(declare-fun b!1533094 () Bool)

(declare-fun res!1050319 () Bool)

(assert (=> b!1533094 (=> (not res!1050319) (not e!854128))))

(assert (=> b!1533094 (= res!1050319 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49657 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49657 a!2792)) (= (select (arr!49106 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1533095 () Bool)

(declare-fun res!1050314 () Bool)

(assert (=> b!1533095 (=> (not res!1050314) (not e!854128))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1533095 (= res!1050314 (and (= (size!49657 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49657 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49657 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1533090 () Bool)

(declare-fun res!1050315 () Bool)

(assert (=> b!1533090 (=> (not res!1050315) (not e!854128))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533090 (= res!1050315 (validKeyInArray!0 (select (arr!49106 a!2792) i!951)))))

(declare-fun res!1050318 () Bool)

(assert (=> start!130764 (=> (not res!1050318) (not e!854128))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130764 (= res!1050318 (validMask!0 mask!2480))))

(assert (=> start!130764 e!854128))

(assert (=> start!130764 true))

(declare-fun array_inv!38051 (array!101789) Bool)

(assert (=> start!130764 (array_inv!38051 a!2792)))

(declare-fun b!1533096 () Bool)

(declare-fun res!1050317 () Bool)

(assert (=> b!1533096 (=> (not res!1050317) (not e!854128))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101789 (_ BitVec 32)) Bool)

(assert (=> b!1533096 (= res!1050317 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533097 () Bool)

(declare-fun res!1050320 () Bool)

(assert (=> b!1533097 (=> (not res!1050320) (not e!854128))))

(assert (=> b!1533097 (= res!1050320 (validKeyInArray!0 (select (arr!49106 a!2792) j!64)))))

(assert (= (and start!130764 res!1050318) b!1533095))

(assert (= (and b!1533095 res!1050314) b!1533090))

(assert (= (and b!1533090 res!1050315) b!1533097))

(assert (= (and b!1533097 res!1050320) b!1533096))

(assert (= (and b!1533096 res!1050317) b!1533091))

(assert (= (and b!1533091 res!1050321) b!1533094))

(assert (= (and b!1533094 res!1050319) b!1533093))

(assert (= (and b!1533093 res!1050316) b!1533092))

(declare-fun m!1415845 () Bool)

(assert (=> start!130764 m!1415845))

(declare-fun m!1415847 () Bool)

(assert (=> start!130764 m!1415847))

(declare-fun m!1415849 () Bool)

(assert (=> b!1533097 m!1415849))

(assert (=> b!1533097 m!1415849))

(declare-fun m!1415851 () Bool)

(assert (=> b!1533097 m!1415851))

(declare-fun m!1415853 () Bool)

(assert (=> b!1533092 m!1415853))

(assert (=> b!1533092 m!1415849))

(declare-fun m!1415855 () Bool)

(assert (=> b!1533096 m!1415855))

(declare-fun m!1415857 () Bool)

(assert (=> b!1533094 m!1415857))

(declare-fun m!1415859 () Bool)

(assert (=> b!1533090 m!1415859))

(assert (=> b!1533090 m!1415859))

(declare-fun m!1415861 () Bool)

(assert (=> b!1533090 m!1415861))

(assert (=> b!1533093 m!1415849))

(assert (=> b!1533093 m!1415849))

(declare-fun m!1415863 () Bool)

(assert (=> b!1533093 m!1415863))

(declare-fun m!1415865 () Bool)

(assert (=> b!1533091 m!1415865))

(check-sat (not b!1533096) (not b!1533091) (not b!1533093) (not b!1533090) (not start!130764) (not b!1533097))
(check-sat)
