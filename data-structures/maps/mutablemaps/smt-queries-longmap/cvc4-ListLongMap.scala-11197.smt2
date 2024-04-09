; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130850 () Bool)

(assert start!130850)

(declare-fun b!1534069 () Bool)

(declare-fun e!854386 () Bool)

(assert (=> b!1534069 (= e!854386 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((array!101875 0))(
  ( (array!101876 (arr!49149 (Array (_ BitVec 32) (_ BitVec 64))) (size!49700 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101875)

(declare-datatypes ((SeekEntryResult!13304 0))(
  ( (MissingZero!13304 (index!55610 (_ BitVec 32))) (Found!13304 (index!55611 (_ BitVec 32))) (Intermediate!13304 (undefined!14116 Bool) (index!55612 (_ BitVec 32)) (x!137373 (_ BitVec 32))) (Undefined!13304) (MissingVacant!13304 (index!55613 (_ BitVec 32))) )
))
(declare-fun lt!663769 () SeekEntryResult!13304)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101875 (_ BitVec 32)) SeekEntryResult!13304)

(assert (=> b!1534069 (= lt!663769 (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49149 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534070 () Bool)

(declare-fun res!1051293 () Bool)

(assert (=> b!1534070 (=> (not res!1051293) (not e!854386))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534070 (= res!1051293 (validKeyInArray!0 (select (arr!49149 a!2792) j!64)))))

(declare-fun b!1534071 () Bool)

(declare-fun res!1051294 () Bool)

(assert (=> b!1534071 (=> (not res!1051294) (not e!854386))))

(assert (=> b!1534071 (= res!1051294 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49700 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49700 a!2792)) (= (select (arr!49149 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1051298 () Bool)

(assert (=> start!130850 (=> (not res!1051298) (not e!854386))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130850 (= res!1051298 (validMask!0 mask!2480))))

(assert (=> start!130850 e!854386))

(assert (=> start!130850 true))

(declare-fun array_inv!38094 (array!101875) Bool)

(assert (=> start!130850 (array_inv!38094 a!2792)))

(declare-fun b!1534072 () Bool)

(declare-fun res!1051296 () Bool)

(assert (=> b!1534072 (=> (not res!1051296) (not e!854386))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1534072 (= res!1051296 (validKeyInArray!0 (select (arr!49149 a!2792) i!951)))))

(declare-fun b!1534073 () Bool)

(declare-fun res!1051295 () Bool)

(assert (=> b!1534073 (=> (not res!1051295) (not e!854386))))

(declare-datatypes ((List!35803 0))(
  ( (Nil!35800) (Cons!35799 (h!37245 (_ BitVec 64)) (t!50504 List!35803)) )
))
(declare-fun arrayNoDuplicates!0 (array!101875 (_ BitVec 32) List!35803) Bool)

(assert (=> b!1534073 (= res!1051295 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35800))))

(declare-fun b!1534074 () Bool)

(declare-fun res!1051299 () Bool)

(assert (=> b!1534074 (=> (not res!1051299) (not e!854386))))

(assert (=> b!1534074 (= res!1051299 (and (= (size!49700 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49700 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49700 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1534075 () Bool)

(declare-fun res!1051297 () Bool)

(assert (=> b!1534075 (=> (not res!1051297) (not e!854386))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101875 (_ BitVec 32)) Bool)

(assert (=> b!1534075 (= res!1051297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(assert (= (and start!130850 res!1051298) b!1534074))

(assert (= (and b!1534074 res!1051299) b!1534072))

(assert (= (and b!1534072 res!1051296) b!1534070))

(assert (= (and b!1534070 res!1051293) b!1534075))

(assert (= (and b!1534075 res!1051297) b!1534073))

(assert (= (and b!1534073 res!1051295) b!1534071))

(assert (= (and b!1534071 res!1051294) b!1534069))

(declare-fun m!1416787 () Bool)

(assert (=> start!130850 m!1416787))

(declare-fun m!1416789 () Bool)

(assert (=> start!130850 m!1416789))

(declare-fun m!1416791 () Bool)

(assert (=> b!1534073 m!1416791))

(declare-fun m!1416793 () Bool)

(assert (=> b!1534072 m!1416793))

(assert (=> b!1534072 m!1416793))

(declare-fun m!1416795 () Bool)

(assert (=> b!1534072 m!1416795))

(declare-fun m!1416797 () Bool)

(assert (=> b!1534075 m!1416797))

(declare-fun m!1416799 () Bool)

(assert (=> b!1534069 m!1416799))

(assert (=> b!1534069 m!1416799))

(declare-fun m!1416801 () Bool)

(assert (=> b!1534069 m!1416801))

(declare-fun m!1416803 () Bool)

(assert (=> b!1534071 m!1416803))

(assert (=> b!1534070 m!1416799))

(assert (=> b!1534070 m!1416799))

(declare-fun m!1416805 () Bool)

(assert (=> b!1534070 m!1416805))

(push 1)

(assert (not b!1534075))

(assert (not b!1534072))

(assert (not b!1534070))

(assert (not start!130850))

(assert (not b!1534073))

(assert (not b!1534069))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

