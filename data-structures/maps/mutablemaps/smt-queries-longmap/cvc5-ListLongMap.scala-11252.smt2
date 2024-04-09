; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131212 () Bool)

(assert start!131212)

(declare-fun b!1538801 () Bool)

(declare-fun res!1055918 () Bool)

(declare-fun e!856058 () Bool)

(assert (=> b!1538801 (=> (not res!1055918) (not e!856058))))

(declare-datatypes ((array!102204 0))(
  ( (array!102205 (arr!49312 (Array (_ BitVec 32) (_ BitVec 64))) (size!49863 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102204)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1538801 (= res!1055918 (validKeyInArray!0 (select (arr!49312 a!2792) j!64)))))

(declare-fun res!1055921 () Bool)

(assert (=> start!131212 (=> (not res!1055921) (not e!856058))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131212 (= res!1055921 (validMask!0 mask!2480))))

(assert (=> start!131212 e!856058))

(assert (=> start!131212 true))

(declare-fun array_inv!38257 (array!102204) Bool)

(assert (=> start!131212 (array_inv!38257 a!2792)))

(declare-fun b!1538802 () Bool)

(declare-fun res!1055923 () Bool)

(assert (=> b!1538802 (=> (not res!1055923) (not e!856058))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1538802 (= res!1055923 (and (= (size!49863 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49863 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49863 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1538803 () Bool)

(assert (=> b!1538803 (= e!856058 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664876 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1538803 (= lt!664876 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1538804 () Bool)

(declare-fun res!1055919 () Bool)

(assert (=> b!1538804 (=> (not res!1055919) (not e!856058))))

(declare-datatypes ((List!35966 0))(
  ( (Nil!35963) (Cons!35962 (h!37408 (_ BitVec 64)) (t!50667 List!35966)) )
))
(declare-fun arrayNoDuplicates!0 (array!102204 (_ BitVec 32) List!35966) Bool)

(assert (=> b!1538804 (= res!1055919 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35963))))

(declare-fun b!1538805 () Bool)

(declare-fun res!1055917 () Bool)

(assert (=> b!1538805 (=> (not res!1055917) (not e!856058))))

(assert (=> b!1538805 (= res!1055917 (validKeyInArray!0 (select (arr!49312 a!2792) i!951)))))

(declare-fun b!1538806 () Bool)

(declare-fun res!1055924 () Bool)

(assert (=> b!1538806 (=> (not res!1055924) (not e!856058))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13461 0))(
  ( (MissingZero!13461 (index!56238 (_ BitVec 32))) (Found!13461 (index!56239 (_ BitVec 32))) (Intermediate!13461 (undefined!14273 Bool) (index!56240 (_ BitVec 32)) (x!137973 (_ BitVec 32))) (Undefined!13461) (MissingVacant!13461 (index!56241 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102204 (_ BitVec 32)) SeekEntryResult!13461)

(assert (=> b!1538806 (= res!1055924 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49312 a!2792) j!64) a!2792 mask!2480) (Found!13461 j!64)))))

(declare-fun b!1538807 () Bool)

(declare-fun res!1055922 () Bool)

(assert (=> b!1538807 (=> (not res!1055922) (not e!856058))))

(assert (=> b!1538807 (= res!1055922 (not (= (select (arr!49312 a!2792) index!463) (select (arr!49312 a!2792) j!64))))))

(declare-fun b!1538808 () Bool)

(declare-fun res!1055920 () Bool)

(assert (=> b!1538808 (=> (not res!1055920) (not e!856058))))

(assert (=> b!1538808 (= res!1055920 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49863 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49863 a!2792)) (= (select (arr!49312 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1538809 () Bool)

(declare-fun res!1055925 () Bool)

(assert (=> b!1538809 (=> (not res!1055925) (not e!856058))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102204 (_ BitVec 32)) Bool)

(assert (=> b!1538809 (= res!1055925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!131212 res!1055921) b!1538802))

(assert (= (and b!1538802 res!1055923) b!1538805))

(assert (= (and b!1538805 res!1055917) b!1538801))

(assert (= (and b!1538801 res!1055918) b!1538809))

(assert (= (and b!1538809 res!1055925) b!1538804))

(assert (= (and b!1538804 res!1055919) b!1538808))

(assert (= (and b!1538808 res!1055920) b!1538806))

(assert (= (and b!1538806 res!1055924) b!1538807))

(assert (= (and b!1538807 res!1055922) b!1538803))

(declare-fun m!1421229 () Bool)

(assert (=> b!1538804 m!1421229))

(declare-fun m!1421231 () Bool)

(assert (=> b!1538809 m!1421231))

(declare-fun m!1421233 () Bool)

(assert (=> b!1538807 m!1421233))

(declare-fun m!1421235 () Bool)

(assert (=> b!1538807 m!1421235))

(declare-fun m!1421237 () Bool)

(assert (=> start!131212 m!1421237))

(declare-fun m!1421239 () Bool)

(assert (=> start!131212 m!1421239))

(assert (=> b!1538801 m!1421235))

(assert (=> b!1538801 m!1421235))

(declare-fun m!1421241 () Bool)

(assert (=> b!1538801 m!1421241))

(declare-fun m!1421243 () Bool)

(assert (=> b!1538803 m!1421243))

(assert (=> b!1538806 m!1421235))

(assert (=> b!1538806 m!1421235))

(declare-fun m!1421245 () Bool)

(assert (=> b!1538806 m!1421245))

(declare-fun m!1421247 () Bool)

(assert (=> b!1538808 m!1421247))

(declare-fun m!1421249 () Bool)

(assert (=> b!1538805 m!1421249))

(assert (=> b!1538805 m!1421249))

(declare-fun m!1421251 () Bool)

(assert (=> b!1538805 m!1421251))

(push 1)

(assert (not b!1538801))

(assert (not b!1538806))

(assert (not b!1538805))

(assert (not b!1538804))

(assert (not b!1538809))

(assert (not start!131212))

(assert (not b!1538803))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

