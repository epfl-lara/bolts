; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130942 () Bool)

(assert start!130942)

(declare-fun b!1535356 () Bool)

(declare-fun e!854763 () Bool)

(assert (=> b!1535356 (= e!854763 false)))

(declare-fun lt!663990 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13350 0))(
  ( (MissingZero!13350 (index!55794 (_ BitVec 32))) (Found!13350 (index!55795 (_ BitVec 32))) (Intermediate!13350 (undefined!14162 Bool) (index!55796 (_ BitVec 32)) (x!137547 (_ BitVec 32))) (Undefined!13350) (MissingVacant!13350 (index!55797 (_ BitVec 32))) )
))
(declare-fun lt!663991 () SeekEntryResult!13350)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((array!101967 0))(
  ( (array!101968 (arr!49195 (Array (_ BitVec 32) (_ BitVec 64))) (size!49746 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101967)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101967 (_ BitVec 32)) SeekEntryResult!13350)

(assert (=> b!1535356 (= lt!663991 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663990 vacantIndex!5 (select (arr!49195 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535357 () Bool)

(declare-fun res!1052582 () Bool)

(declare-fun e!854764 () Bool)

(assert (=> b!1535357 (=> (not res!1052582) (not e!854764))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535357 (= res!1052582 (not (= (select (arr!49195 a!2792) index!463) (select (arr!49195 a!2792) j!64))))))

(declare-fun b!1535358 () Bool)

(declare-fun res!1052584 () Bool)

(assert (=> b!1535358 (=> (not res!1052584) (not e!854764))))

(declare-datatypes ((List!35849 0))(
  ( (Nil!35846) (Cons!35845 (h!37291 (_ BitVec 64)) (t!50550 List!35849)) )
))
(declare-fun arrayNoDuplicates!0 (array!101967 (_ BitVec 32) List!35849) Bool)

(assert (=> b!1535358 (= res!1052584 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35846))))

(declare-fun b!1535359 () Bool)

(declare-fun res!1052581 () Bool)

(assert (=> b!1535359 (=> (not res!1052581) (not e!854764))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101967 (_ BitVec 32)) Bool)

(assert (=> b!1535359 (= res!1052581 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1052586 () Bool)

(assert (=> start!130942 (=> (not res!1052586) (not e!854764))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130942 (= res!1052586 (validMask!0 mask!2480))))

(assert (=> start!130942 e!854764))

(assert (=> start!130942 true))

(declare-fun array_inv!38140 (array!101967) Bool)

(assert (=> start!130942 (array_inv!38140 a!2792)))

(declare-fun b!1535360 () Bool)

(declare-fun res!1052583 () Bool)

(assert (=> b!1535360 (=> (not res!1052583) (not e!854764))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535360 (= res!1052583 (validKeyInArray!0 (select (arr!49195 a!2792) i!951)))))

(declare-fun b!1535361 () Bool)

(declare-fun res!1052589 () Bool)

(assert (=> b!1535361 (=> (not res!1052589) (not e!854764))))

(assert (=> b!1535361 (= res!1052589 (validKeyInArray!0 (select (arr!49195 a!2792) j!64)))))

(declare-fun b!1535362 () Bool)

(declare-fun res!1052587 () Bool)

(assert (=> b!1535362 (=> (not res!1052587) (not e!854764))))

(assert (=> b!1535362 (= res!1052587 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49746 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49746 a!2792)) (= (select (arr!49195 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535363 () Bool)

(assert (=> b!1535363 (= e!854764 e!854763)))

(declare-fun res!1052580 () Bool)

(assert (=> b!1535363 (=> (not res!1052580) (not e!854763))))

(assert (=> b!1535363 (= res!1052580 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663990 #b00000000000000000000000000000000) (bvslt lt!663990 (size!49746 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535363 (= lt!663990 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535364 () Bool)

(declare-fun res!1052585 () Bool)

(assert (=> b!1535364 (=> (not res!1052585) (not e!854764))))

(assert (=> b!1535364 (= res!1052585 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49195 a!2792) j!64) a!2792 mask!2480) (Found!13350 j!64)))))

(declare-fun b!1535365 () Bool)

(declare-fun res!1052588 () Bool)

(assert (=> b!1535365 (=> (not res!1052588) (not e!854764))))

(assert (=> b!1535365 (= res!1052588 (and (= (size!49746 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49746 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49746 a!2792)) (not (= i!951 j!64))))))

(assert (= (and start!130942 res!1052586) b!1535365))

(assert (= (and b!1535365 res!1052588) b!1535360))

(assert (= (and b!1535360 res!1052583) b!1535361))

(assert (= (and b!1535361 res!1052589) b!1535359))

(assert (= (and b!1535359 res!1052581) b!1535358))

(assert (= (and b!1535358 res!1052584) b!1535362))

(assert (= (and b!1535362 res!1052587) b!1535364))

(assert (= (and b!1535364 res!1052585) b!1535357))

(assert (= (and b!1535357 res!1052582) b!1535363))

(assert (= (and b!1535363 res!1052580) b!1535356))

(declare-fun m!1417917 () Bool)

(assert (=> start!130942 m!1417917))

(declare-fun m!1417919 () Bool)

(assert (=> start!130942 m!1417919))

(declare-fun m!1417921 () Bool)

(assert (=> b!1535357 m!1417921))

(declare-fun m!1417923 () Bool)

(assert (=> b!1535357 m!1417923))

(declare-fun m!1417925 () Bool)

(assert (=> b!1535359 m!1417925))

(declare-fun m!1417927 () Bool)

(assert (=> b!1535358 m!1417927))

(declare-fun m!1417929 () Bool)

(assert (=> b!1535362 m!1417929))

(assert (=> b!1535361 m!1417923))

(assert (=> b!1535361 m!1417923))

(declare-fun m!1417931 () Bool)

(assert (=> b!1535361 m!1417931))

(assert (=> b!1535356 m!1417923))

(assert (=> b!1535356 m!1417923))

(declare-fun m!1417933 () Bool)

(assert (=> b!1535356 m!1417933))

(declare-fun m!1417935 () Bool)

(assert (=> b!1535360 m!1417935))

(assert (=> b!1535360 m!1417935))

(declare-fun m!1417937 () Bool)

(assert (=> b!1535360 m!1417937))

(declare-fun m!1417939 () Bool)

(assert (=> b!1535363 m!1417939))

(assert (=> b!1535364 m!1417923))

(assert (=> b!1535364 m!1417923))

(declare-fun m!1417941 () Bool)

(assert (=> b!1535364 m!1417941))

(push 1)

