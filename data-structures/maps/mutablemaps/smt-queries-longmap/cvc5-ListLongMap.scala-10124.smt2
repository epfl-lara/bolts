; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!119386 () Bool)

(assert start!119386)

(declare-fun mask!2840 () (_ BitVec 32))

(declare-datatypes ((array!95139 0))(
  ( (array!95140 (arr!45928 (Array (_ BitVec 32) (_ BitVec 64))) (size!46479 (_ BitVec 32))) )
))
(declare-fun a!2901 () array!95139)

(declare-fun b!1391245 () Bool)

(declare-fun j!112 () (_ BitVec 32))

(declare-fun e!787875 () Bool)

(declare-datatypes ((SeekEntryResult!10267 0))(
  ( (MissingZero!10267 (index!43438 (_ BitVec 32))) (Found!10267 (index!43439 (_ BitVec 32))) (Intermediate!10267 (undefined!11079 Bool) (index!43440 (_ BitVec 32)) (x!125128 (_ BitVec 32))) (Undefined!10267) (MissingVacant!10267 (index!43441 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!95139 (_ BitVec 32)) SeekEntryResult!10267)

(assert (=> b!1391245 (= e!787875 (= (seekEntryOrOpen!0 (select (arr!45928 a!2901) j!112) a!2901 mask!2840) (Found!10267 j!112)))))

(declare-fun b!1391246 () Bool)

(declare-fun res!931225 () Bool)

(declare-fun e!787877 () Bool)

(assert (=> b!1391246 (=> (not res!931225) (not e!787877))))

(declare-fun i!1037 () (_ BitVec 32))

(assert (=> b!1391246 (= res!931225 (and (= (size!46479 a!2901) (bvadd #b00000000000000000000000000000001 mask!2840)) (bvsge i!1037 #b00000000000000000000000000000000) (bvslt i!1037 (size!46479 a!2901)) (bvsge j!112 #b00000000000000000000000000000000) (bvslt j!112 (size!46479 a!2901)) (not (= i!1037 j!112))))))

(declare-fun b!1391247 () Bool)

(declare-fun res!931227 () Bool)

(assert (=> b!1391247 (=> (not res!931227) (not e!787877))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!95139 (_ BitVec 32)) Bool)

(assert (=> b!1391247 (= res!931227 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2901 mask!2840))))

(declare-fun b!1391248 () Bool)

(assert (=> b!1391248 (= e!787877 (not true))))

(assert (=> b!1391248 e!787875))

(declare-fun res!931221 () Bool)

(assert (=> b!1391248 (=> (not res!931221) (not e!787875))))

(assert (=> b!1391248 (= res!931221 (arrayForallSeekEntryOrOpenFound!0 j!112 a!2901 mask!2840))))

(declare-datatypes ((Unit!46488 0))(
  ( (Unit!46489) )
))
(declare-fun lt!611112 () Unit!46488)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!95139 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!46488)

(assert (=> b!1391248 (= lt!611112 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2901 mask!2840 #b00000000000000000000000000000000 j!112))))

(declare-fun lt!611113 () SeekEntryResult!10267)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!95139 (_ BitVec 32)) SeekEntryResult!10267)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1391248 (= lt!611113 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!45928 a!2901) j!112) mask!2840) (select (arr!45928 a!2901) j!112) a!2901 mask!2840))))

(declare-fun res!931222 () Bool)

(assert (=> start!119386 (=> (not res!931222) (not e!787877))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!119386 (= res!931222 (validMask!0 mask!2840))))

(assert (=> start!119386 e!787877))

(assert (=> start!119386 true))

(declare-fun array_inv!34873 (array!95139) Bool)

(assert (=> start!119386 (array_inv!34873 a!2901)))

(declare-fun b!1391249 () Bool)

(declare-fun res!931224 () Bool)

(assert (=> b!1391249 (=> (not res!931224) (not e!787877))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1391249 (= res!931224 (validKeyInArray!0 (select (arr!45928 a!2901) j!112)))))

(declare-fun b!1391250 () Bool)

(declare-fun res!931223 () Bool)

(assert (=> b!1391250 (=> (not res!931223) (not e!787877))))

(declare-datatypes ((List!32627 0))(
  ( (Nil!32624) (Cons!32623 (h!33847 (_ BitVec 64)) (t!47328 List!32627)) )
))
(declare-fun arrayNoDuplicates!0 (array!95139 (_ BitVec 32) List!32627) Bool)

(assert (=> b!1391250 (= res!931223 (arrayNoDuplicates!0 a!2901 #b00000000000000000000000000000000 Nil!32624))))

(declare-fun b!1391251 () Bool)

(declare-fun res!931226 () Bool)

(assert (=> b!1391251 (=> (not res!931226) (not e!787877))))

(assert (=> b!1391251 (= res!931226 (validKeyInArray!0 (select (arr!45928 a!2901) i!1037)))))

(assert (= (and start!119386 res!931222) b!1391246))

(assert (= (and b!1391246 res!931225) b!1391251))

(assert (= (and b!1391251 res!931226) b!1391249))

(assert (= (and b!1391249 res!931224) b!1391247))

(assert (= (and b!1391247 res!931227) b!1391250))

(assert (= (and b!1391250 res!931223) b!1391248))

(assert (= (and b!1391248 res!931221) b!1391245))

(declare-fun m!1277057 () Bool)

(assert (=> b!1391249 m!1277057))

(assert (=> b!1391249 m!1277057))

(declare-fun m!1277059 () Bool)

(assert (=> b!1391249 m!1277059))

(declare-fun m!1277061 () Bool)

(assert (=> b!1391251 m!1277061))

(assert (=> b!1391251 m!1277061))

(declare-fun m!1277063 () Bool)

(assert (=> b!1391251 m!1277063))

(declare-fun m!1277065 () Bool)

(assert (=> start!119386 m!1277065))

(declare-fun m!1277067 () Bool)

(assert (=> start!119386 m!1277067))

(declare-fun m!1277069 () Bool)

(assert (=> b!1391247 m!1277069))

(declare-fun m!1277071 () Bool)

(assert (=> b!1391250 m!1277071))

(assert (=> b!1391245 m!1277057))

(assert (=> b!1391245 m!1277057))

(declare-fun m!1277073 () Bool)

(assert (=> b!1391245 m!1277073))

(assert (=> b!1391248 m!1277057))

(declare-fun m!1277075 () Bool)

(assert (=> b!1391248 m!1277075))

(assert (=> b!1391248 m!1277057))

(declare-fun m!1277077 () Bool)

(assert (=> b!1391248 m!1277077))

(assert (=> b!1391248 m!1277075))

(assert (=> b!1391248 m!1277057))

(declare-fun m!1277079 () Bool)

(assert (=> b!1391248 m!1277079))

(declare-fun m!1277081 () Bool)

(assert (=> b!1391248 m!1277081))

(push 1)

(assert (not start!119386))

(assert (not b!1391251))

(assert (not b!1391250))

(assert (not b!1391247))

(assert (not b!1391249))

(assert (not b!1391245))

(assert (not b!1391248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

