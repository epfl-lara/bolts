; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130922 () Bool)

(assert start!130922)

(declare-fun b!1535056 () Bool)

(declare-fun res!1052281 () Bool)

(declare-fun e!854675 () Bool)

(assert (=> b!1535056 (=> (not res!1052281) (not e!854675))))

(declare-datatypes ((array!101947 0))(
  ( (array!101948 (arr!49185 (Array (_ BitVec 32) (_ BitVec 64))) (size!49736 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101947)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535056 (= res!1052281 (validKeyInArray!0 (select (arr!49185 a!2792) i!951)))))

(declare-fun b!1535057 () Bool)

(declare-fun res!1052283 () Bool)

(assert (=> b!1535057 (=> (not res!1052283) (not e!854675))))

(declare-datatypes ((List!35839 0))(
  ( (Nil!35836) (Cons!35835 (h!37281 (_ BitVec 64)) (t!50540 List!35839)) )
))
(declare-fun arrayNoDuplicates!0 (array!101947 (_ BitVec 32) List!35839) Bool)

(assert (=> b!1535057 (= res!1052283 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35836))))

(declare-fun b!1535058 () Bool)

(declare-fun res!1052286 () Bool)

(assert (=> b!1535058 (=> (not res!1052286) (not e!854675))))

(declare-fun j!64 () (_ BitVec 32))

(assert (=> b!1535058 (= res!1052286 (validKeyInArray!0 (select (arr!49185 a!2792) j!64)))))

(declare-fun b!1535060 () Bool)

(declare-fun e!854673 () Bool)

(assert (=> b!1535060 (= e!854673 false)))

(declare-fun lt!663930 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13340 0))(
  ( (MissingZero!13340 (index!55754 (_ BitVec 32))) (Found!13340 (index!55755 (_ BitVec 32))) (Intermediate!13340 (undefined!14152 Bool) (index!55756 (_ BitVec 32)) (x!137505 (_ BitVec 32))) (Undefined!13340) (MissingVacant!13340 (index!55757 (_ BitVec 32))) )
))
(declare-fun lt!663931 () SeekEntryResult!13340)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101947 (_ BitVec 32)) SeekEntryResult!13340)

(assert (=> b!1535060 (= lt!663931 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663930 vacantIndex!5 (select (arr!49185 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535061 () Bool)

(declare-fun res!1052284 () Bool)

(assert (=> b!1535061 (=> (not res!1052284) (not e!854675))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535061 (= res!1052284 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49736 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49736 a!2792)) (= (select (arr!49185 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535062 () Bool)

(declare-fun res!1052282 () Bool)

(assert (=> b!1535062 (=> (not res!1052282) (not e!854675))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101947 (_ BitVec 32)) Bool)

(assert (=> b!1535062 (= res!1052282 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535063 () Bool)

(declare-fun res!1052280 () Bool)

(assert (=> b!1535063 (=> (not res!1052280) (not e!854675))))

(assert (=> b!1535063 (= res!1052280 (and (= (size!49736 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49736 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49736 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535064 () Bool)

(assert (=> b!1535064 (= e!854675 e!854673)))

(declare-fun res!1052289 () Bool)

(assert (=> b!1535064 (=> (not res!1052289) (not e!854673))))

(assert (=> b!1535064 (= res!1052289 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663930 #b00000000000000000000000000000000) (bvslt lt!663930 (size!49736 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535064 (= lt!663930 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535065 () Bool)

(declare-fun res!1052287 () Bool)

(assert (=> b!1535065 (=> (not res!1052287) (not e!854675))))

(assert (=> b!1535065 (= res!1052287 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49185 a!2792) j!64) a!2792 mask!2480) (Found!13340 j!64)))))

(declare-fun res!1052288 () Bool)

(assert (=> start!130922 (=> (not res!1052288) (not e!854675))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130922 (= res!1052288 (validMask!0 mask!2480))))

(assert (=> start!130922 e!854675))

(assert (=> start!130922 true))

(declare-fun array_inv!38130 (array!101947) Bool)

(assert (=> start!130922 (array_inv!38130 a!2792)))

(declare-fun b!1535059 () Bool)

(declare-fun res!1052285 () Bool)

(assert (=> b!1535059 (=> (not res!1052285) (not e!854675))))

(assert (=> b!1535059 (= res!1052285 (not (= (select (arr!49185 a!2792) index!463) (select (arr!49185 a!2792) j!64))))))

(assert (= (and start!130922 res!1052288) b!1535063))

(assert (= (and b!1535063 res!1052280) b!1535056))

(assert (= (and b!1535056 res!1052281) b!1535058))

(assert (= (and b!1535058 res!1052286) b!1535062))

(assert (= (and b!1535062 res!1052282) b!1535057))

(assert (= (and b!1535057 res!1052283) b!1535061))

(assert (= (and b!1535061 res!1052284) b!1535065))

(assert (= (and b!1535065 res!1052287) b!1535059))

(assert (= (and b!1535059 res!1052285) b!1535064))

(assert (= (and b!1535064 res!1052289) b!1535060))

(declare-fun m!1417657 () Bool)

(assert (=> b!1535064 m!1417657))

(declare-fun m!1417659 () Bool)

(assert (=> b!1535058 m!1417659))

(assert (=> b!1535058 m!1417659))

(declare-fun m!1417661 () Bool)

(assert (=> b!1535058 m!1417661))

(assert (=> b!1535065 m!1417659))

(assert (=> b!1535065 m!1417659))

(declare-fun m!1417663 () Bool)

(assert (=> b!1535065 m!1417663))

(declare-fun m!1417665 () Bool)

(assert (=> start!130922 m!1417665))

(declare-fun m!1417667 () Bool)

(assert (=> start!130922 m!1417667))

(assert (=> b!1535060 m!1417659))

(assert (=> b!1535060 m!1417659))

(declare-fun m!1417669 () Bool)

(assert (=> b!1535060 m!1417669))

(declare-fun m!1417671 () Bool)

(assert (=> b!1535059 m!1417671))

(assert (=> b!1535059 m!1417659))

(declare-fun m!1417673 () Bool)

(assert (=> b!1535057 m!1417673))

(declare-fun m!1417675 () Bool)

(assert (=> b!1535061 m!1417675))

(declare-fun m!1417677 () Bool)

(assert (=> b!1535056 m!1417677))

(assert (=> b!1535056 m!1417677))

(declare-fun m!1417679 () Bool)

(assert (=> b!1535056 m!1417679))

(declare-fun m!1417681 () Bool)

(assert (=> b!1535062 m!1417681))

(push 1)

(assert (not b!1535058))

(assert (not b!1535062))

(assert (not b!1535065))

(assert (not b!1535060))

(assert (not start!130922))

(assert (not b!1535056))

