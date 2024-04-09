; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130988 () Bool)

(assert start!130988)

(declare-fun b!1536072 () Bool)

(declare-fun e!855023 () Bool)

(declare-fun e!855024 () Bool)

(assert (=> b!1536072 (= e!855023 e!855024)))

(declare-fun res!1053300 () Bool)

(assert (=> b!1536072 (=> (not res!1053300) (not e!855024))))

(declare-datatypes ((array!102013 0))(
  ( (array!102014 (arr!49218 (Array (_ BitVec 32) (_ BitVec 64))) (size!49769 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102013)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664182 () (_ BitVec 32))

(assert (=> b!1536072 (= res!1053300 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664182 #b00000000000000000000000000000000) (bvslt lt!664182 (size!49769 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536072 (= lt!664182 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536073 () Bool)

(declare-fun e!855022 () Bool)

(assert (=> b!1536073 (= e!855022 (not true))))

(declare-datatypes ((SeekEntryResult!13373 0))(
  ( (MissingZero!13373 (index!55886 (_ BitVec 32))) (Found!13373 (index!55887 (_ BitVec 32))) (Intermediate!13373 (undefined!14185 Bool) (index!55888 (_ BitVec 32)) (x!137626 (_ BitVec 32))) (Undefined!13373) (MissingVacant!13373 (index!55889 (_ BitVec 32))) )
))
(declare-fun lt!664181 () SeekEntryResult!13373)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102013 (_ BitVec 32)) SeekEntryResult!13373)

(assert (=> b!1536073 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664182 vacantIndex!5 (select (store (arr!49218 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102014 (store (arr!49218 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49769 a!2792)) mask!2480) lt!664181)))

(declare-datatypes ((Unit!51270 0))(
  ( (Unit!51271) )
))
(declare-fun lt!664183 () Unit!51270)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102013 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51270)

(assert (=> b!1536073 (= lt!664183 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664182 vacantIndex!5 mask!2480))))

(declare-fun b!1536074 () Bool)

(declare-fun res!1053296 () Bool)

(declare-fun e!855025 () Bool)

(assert (=> b!1536074 (=> (not res!1053296) (not e!855025))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536074 (= res!1053296 (validKeyInArray!0 (select (arr!49218 a!2792) j!64)))))

(declare-fun res!1053302 () Bool)

(assert (=> start!130988 (=> (not res!1053302) (not e!855025))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130988 (= res!1053302 (validMask!0 mask!2480))))

(assert (=> start!130988 e!855025))

(assert (=> start!130988 true))

(declare-fun array_inv!38163 (array!102013) Bool)

(assert (=> start!130988 (array_inv!38163 a!2792)))

(declare-fun b!1536075 () Bool)

(declare-fun res!1053305 () Bool)

(assert (=> b!1536075 (=> (not res!1053305) (not e!855023))))

(assert (=> b!1536075 (= res!1053305 (not (= (select (arr!49218 a!2792) index!463) (select (arr!49218 a!2792) j!64))))))

(declare-fun b!1536076 () Bool)

(declare-fun res!1053297 () Bool)

(assert (=> b!1536076 (=> (not res!1053297) (not e!855025))))

(assert (=> b!1536076 (= res!1053297 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49769 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49769 a!2792)) (= (select (arr!49218 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536077 () Bool)

(declare-fun res!1053304 () Bool)

(assert (=> b!1536077 (=> (not res!1053304) (not e!855025))))

(assert (=> b!1536077 (= res!1053304 (validKeyInArray!0 (select (arr!49218 a!2792) i!951)))))

(declare-fun b!1536078 () Bool)

(assert (=> b!1536078 (= e!855025 e!855023)))

(declare-fun res!1053303 () Bool)

(assert (=> b!1536078 (=> (not res!1053303) (not e!855023))))

(declare-fun lt!664180 () SeekEntryResult!13373)

(assert (=> b!1536078 (= res!1053303 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49218 a!2792) j!64) a!2792 mask!2480) lt!664180))))

(assert (=> b!1536078 (= lt!664180 (Found!13373 j!64))))

(declare-fun b!1536079 () Bool)

(declare-fun res!1053298 () Bool)

(assert (=> b!1536079 (=> (not res!1053298) (not e!855025))))

(assert (=> b!1536079 (= res!1053298 (and (= (size!49769 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49769 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49769 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536080 () Bool)

(declare-fun res!1053306 () Bool)

(assert (=> b!1536080 (=> (not res!1053306) (not e!855025))))

(declare-datatypes ((List!35872 0))(
  ( (Nil!35869) (Cons!35868 (h!37314 (_ BitVec 64)) (t!50573 List!35872)) )
))
(declare-fun arrayNoDuplicates!0 (array!102013 (_ BitVec 32) List!35872) Bool)

(assert (=> b!1536080 (= res!1053306 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35869))))

(declare-fun b!1536081 () Bool)

(assert (=> b!1536081 (= e!855024 e!855022)))

(declare-fun res!1053301 () Bool)

(assert (=> b!1536081 (=> (not res!1053301) (not e!855022))))

(assert (=> b!1536081 (= res!1053301 (= lt!664181 lt!664180))))

(assert (=> b!1536081 (= lt!664181 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664182 vacantIndex!5 (select (arr!49218 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536082 () Bool)

(declare-fun res!1053299 () Bool)

(assert (=> b!1536082 (=> (not res!1053299) (not e!855025))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102013 (_ BitVec 32)) Bool)

(assert (=> b!1536082 (= res!1053299 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130988 res!1053302) b!1536079))

(assert (= (and b!1536079 res!1053298) b!1536077))

(assert (= (and b!1536077 res!1053304) b!1536074))

(assert (= (and b!1536074 res!1053296) b!1536082))

(assert (= (and b!1536082 res!1053299) b!1536080))

(assert (= (and b!1536080 res!1053306) b!1536076))

(assert (= (and b!1536076 res!1053297) b!1536078))

(assert (= (and b!1536078 res!1053303) b!1536075))

(assert (= (and b!1536075 res!1053305) b!1536072))

(assert (= (and b!1536072 res!1053300) b!1536081))

(assert (= (and b!1536081 res!1053301) b!1536073))

(declare-fun m!1418579 () Bool)

(assert (=> b!1536082 m!1418579))

(declare-fun m!1418581 () Bool)

(assert (=> b!1536076 m!1418581))

(declare-fun m!1418583 () Bool)

(assert (=> b!1536075 m!1418583))

(declare-fun m!1418585 () Bool)

(assert (=> b!1536075 m!1418585))

(assert (=> b!1536078 m!1418585))

(assert (=> b!1536078 m!1418585))

(declare-fun m!1418587 () Bool)

(assert (=> b!1536078 m!1418587))

(assert (=> b!1536081 m!1418585))

(assert (=> b!1536081 m!1418585))

(declare-fun m!1418589 () Bool)

(assert (=> b!1536081 m!1418589))

(declare-fun m!1418591 () Bool)

(assert (=> b!1536072 m!1418591))

(assert (=> b!1536074 m!1418585))

(assert (=> b!1536074 m!1418585))

(declare-fun m!1418593 () Bool)

(assert (=> b!1536074 m!1418593))

(declare-fun m!1418595 () Bool)

(assert (=> b!1536077 m!1418595))

(assert (=> b!1536077 m!1418595))

(declare-fun m!1418597 () Bool)

(assert (=> b!1536077 m!1418597))

(declare-fun m!1418599 () Bool)

(assert (=> start!130988 m!1418599))

(declare-fun m!1418601 () Bool)

(assert (=> start!130988 m!1418601))

(declare-fun m!1418603 () Bool)

(assert (=> b!1536073 m!1418603))

(declare-fun m!1418605 () Bool)

(assert (=> b!1536073 m!1418605))

(assert (=> b!1536073 m!1418605))

(declare-fun m!1418607 () Bool)

(assert (=> b!1536073 m!1418607))

(declare-fun m!1418609 () Bool)

(assert (=> b!1536073 m!1418609))

(declare-fun m!1418611 () Bool)

(assert (=> b!1536080 m!1418611))

(push 1)

(assert (not start!130988))

(assert (not b!1536074))

(assert (not b!1536082))

