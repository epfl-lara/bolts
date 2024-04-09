; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130768 () Bool)

(assert start!130768)

(declare-fun b!1533137 () Bool)

(declare-fun res!1050363 () Bool)

(declare-fun e!854141 () Bool)

(assert (=> b!1533137 (=> (not res!1050363) (not e!854141))))

(declare-datatypes ((array!101793 0))(
  ( (array!101794 (arr!49108 (Array (_ BitVec 32) (_ BitVec 64))) (size!49659 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101793)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1533137 (= res!1050363 (validKeyInArray!0 (select (arr!49108 a!2792) i!951)))))

(declare-fun b!1533138 () Bool)

(declare-fun res!1050361 () Bool)

(assert (=> b!1533138 (=> (not res!1050361) (not e!854141))))

(declare-datatypes ((List!35762 0))(
  ( (Nil!35759) (Cons!35758 (h!37204 (_ BitVec 64)) (t!50463 List!35762)) )
))
(declare-fun arrayNoDuplicates!0 (array!101793 (_ BitVec 32) List!35762) Bool)

(assert (=> b!1533138 (= res!1050361 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35759))))

(declare-fun b!1533136 () Bool)

(declare-fun res!1050362 () Bool)

(assert (=> b!1533136 (=> (not res!1050362) (not e!854141))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1533136 (= res!1050362 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49659 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49659 a!2792)) (= (select (arr!49108 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1050366 () Bool)

(assert (=> start!130768 (=> (not res!1050366) (not e!854141))))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130768 (= res!1050366 (validMask!0 mask!2480))))

(assert (=> start!130768 e!854141))

(assert (=> start!130768 true))

(declare-fun array_inv!38053 (array!101793) Bool)

(assert (=> start!130768 (array_inv!38053 a!2792)))

(declare-fun b!1533139 () Bool)

(declare-fun res!1050364 () Bool)

(assert (=> b!1533139 (=> (not res!1050364) (not e!854141))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1533139 (= res!1050364 (validKeyInArray!0 (select (arr!49108 a!2792) j!64)))))

(declare-fun b!1533140 () Bool)

(assert (=> b!1533140 (= e!854141 false)))

(declare-datatypes ((SeekEntryResult!13263 0))(
  ( (MissingZero!13263 (index!55446 (_ BitVec 32))) (Found!13263 (index!55447 (_ BitVec 32))) (Intermediate!13263 (undefined!14075 Bool) (index!55448 (_ BitVec 32)) (x!137228 (_ BitVec 32))) (Undefined!13263) (MissingVacant!13263 (index!55449 (_ BitVec 32))) )
))
(declare-fun lt!663709 () SeekEntryResult!13263)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101793 (_ BitVec 32)) SeekEntryResult!13263)

(assert (=> b!1533140 (= lt!663709 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49108 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1533141 () Bool)

(declare-fun res!1050360 () Bool)

(assert (=> b!1533141 (=> (not res!1050360) (not e!854141))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101793 (_ BitVec 32)) Bool)

(assert (=> b!1533141 (= res!1050360 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1533142 () Bool)

(declare-fun res!1050365 () Bool)

(assert (=> b!1533142 (=> (not res!1050365) (not e!854141))))

(assert (=> b!1533142 (= res!1050365 (and (= (size!49659 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49659 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49659 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130768 res!1050366) b!1533142))

(assert (= (and b!1533142 res!1050365) b!1533137))

(assert (= (and b!1533137 res!1050363) b!1533139))

(assert (= (and b!1533139 res!1050364) b!1533141))

(assert (= (and b!1533141 res!1050360) b!1533138))

(assert (= (and b!1533138 res!1050361) b!1533136))

(assert (= (and b!1533136 res!1050362) b!1533140))

(declare-fun m!1415889 () Bool)

(assert (=> b!1533141 m!1415889))

(declare-fun m!1415891 () Bool)

(assert (=> b!1533140 m!1415891))

(assert (=> b!1533140 m!1415891))

(declare-fun m!1415893 () Bool)

(assert (=> b!1533140 m!1415893))

(declare-fun m!1415895 () Bool)

(assert (=> b!1533136 m!1415895))

(declare-fun m!1415897 () Bool)

(assert (=> b!1533137 m!1415897))

(assert (=> b!1533137 m!1415897))

(declare-fun m!1415899 () Bool)

(assert (=> b!1533137 m!1415899))

(declare-fun m!1415901 () Bool)

(assert (=> start!130768 m!1415901))

(declare-fun m!1415903 () Bool)

(assert (=> start!130768 m!1415903))

(declare-fun m!1415905 () Bool)

(assert (=> b!1533138 m!1415905))

(assert (=> b!1533139 m!1415891))

(assert (=> b!1533139 m!1415891))

(declare-fun m!1415907 () Bool)

(assert (=> b!1533139 m!1415907))

(push 1)

(assert (not b!1533141))

(assert (not start!130768))

(assert (not b!1533137))

(assert (not b!1533138))

(assert (not b!1533140))

(assert (not b!1533139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

