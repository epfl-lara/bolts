; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136746 () Bool)

(assert start!136746)

(declare-fun res!1078411 () Bool)

(declare-fun e!880344 () Bool)

(assert (=> start!136746 (=> (not res!1078411) (not e!880344))))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136746 (= res!1078411 (validMask!0 mask!918))))

(assert (=> start!136746 e!880344))

(assert (=> start!136746 true))

(declare-datatypes ((array!105712 0))(
  ( (array!105713 (arr!50962 (Array (_ BitVec 32) (_ BitVec 64))) (size!51513 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105712)

(declare-fun array_inv!39607 (array!105712) Bool)

(assert (=> start!136746 (array_inv!39607 _keys!614)))

(declare-fun b!1578280 () Bool)

(declare-fun res!1078410 () Bool)

(assert (=> b!1578280 (=> (not res!1078410) (not e!880344))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun ee!18 () (_ BitVec 32))

(assert (=> b!1578280 (= res!1078410 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50962 _keys!614) ee!18) k!772)) (not (= (select (arr!50962 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578279 () Bool)

(declare-fun res!1078412 () Bool)

(assert (=> b!1578279 (=> (not res!1078412) (not e!880344))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578279 (= res!1078412 (validKeyInArray!0 k!772))))

(declare-fun b!1578278 () Bool)

(declare-fun res!1078409 () Bool)

(assert (=> b!1578278 (=> (not res!1078409) (not e!880344))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(assert (=> b!1578278 (= res!1078409 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51513 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50962 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-datatypes ((SeekEntryResult!13765 0))(
  ( (MissingZero!13765 (index!57457 (_ BitVec 32))) (Found!13765 (index!57458 (_ BitVec 32))) (Intermediate!13765 (undefined!14577 Bool) (index!57459 (_ BitVec 32)) (x!142728 (_ BitVec 32))) (Undefined!13765) (MissingVacant!13765 (index!57460 (_ BitVec 32))) )
))
(declare-fun lt!676177 () SeekEntryResult!13765)

(declare-fun b!1578281 () Bool)

(assert (=> b!1578281 (= e!880344 (and (not (is-Undefined!13765 lt!676177)) (not (is-Found!13765 lt!676177)) (is-MissingVacant!13765 lt!676177) (= (index!57460 lt!676177) vacantSpotIndex!10) (or (bvslt (index!57460 lt!676177) #b00000000000000000000000000000000) (bvsge (index!57460 lt!676177) (size!51513 _keys!614)))))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105712 (_ BitVec 32)) SeekEntryResult!13765)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578281 (= lt!676177 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(assert (= (and start!136746 res!1078411) b!1578278))

(assert (= (and b!1578278 res!1078409) b!1578279))

(assert (= (and b!1578279 res!1078412) b!1578280))

(assert (= (and b!1578280 res!1078410) b!1578281))

(declare-fun m!1450409 () Bool)

(assert (=> start!136746 m!1450409))

(declare-fun m!1450411 () Bool)

(assert (=> start!136746 m!1450411))

(declare-fun m!1450413 () Bool)

(assert (=> b!1578280 m!1450413))

(declare-fun m!1450415 () Bool)

(assert (=> b!1578279 m!1450415))

(declare-fun m!1450417 () Bool)

(assert (=> b!1578281 m!1450417))

(assert (=> b!1578281 m!1450417))

(declare-fun m!1450419 () Bool)

(assert (=> b!1578281 m!1450419))

(declare-fun m!1450421 () Bool)

(assert (=> b!1578278 m!1450421))

(push 1)

(assert (not b!1578279))

(assert (not start!136746))

(assert (not b!1578281))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

