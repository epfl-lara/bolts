; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136756 () Bool)

(assert start!136756)

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13770 0))(
  ( (MissingZero!13770 (index!57477 (_ BitVec 32))) (Found!13770 (index!57478 (_ BitVec 32))) (Intermediate!13770 (undefined!14582 Bool) (index!57479 (_ BitVec 32)) (x!142741 (_ BitVec 32))) (Undefined!13770) (MissingVacant!13770 (index!57480 (_ BitVec 32))) )
))
(declare-fun lt!676192 () SeekEntryResult!13770)

(declare-fun b!1578341 () Bool)

(declare-datatypes ((array!105722 0))(
  ( (array!105723 (arr!50967 (Array (_ BitVec 32) (_ BitVec 64))) (size!51518 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105722)

(declare-fun k!772 () (_ BitVec 64))

(declare-fun e!880374 () Bool)

(assert (=> b!1578341 (= e!880374 (and (not (is-Undefined!13770 lt!676192)) (ite (is-Found!13770 lt!676192) (not (= (select (arr!50967 _keys!614) (index!57478 lt!676192)) k!772)) (or (not (is-MissingVacant!13770 lt!676192)) (not (= (index!57480 lt!676192) vacantSpotIndex!10)) (not (= (select (arr!50967 _keys!614) (index!57480 lt!676192)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105722 (_ BitVec 32)) SeekEntryResult!13770)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578341 (= lt!676192 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578338 () Bool)

(declare-fun res!1078470 () Bool)

(assert (=> b!1578338 (=> (not res!1078470) (not e!880374))))

(assert (=> b!1578338 (= res!1078470 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51518 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50967 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1578340 () Bool)

(declare-fun res!1078472 () Bool)

(assert (=> b!1578340 (=> (not res!1078472) (not e!880374))))

(assert (=> b!1578340 (= res!1078472 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50967 _keys!614) ee!18) k!772)) (not (= (select (arr!50967 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578339 () Bool)

(declare-fun res!1078471 () Bool)

(assert (=> b!1578339 (=> (not res!1078471) (not e!880374))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578339 (= res!1078471 (validKeyInArray!0 k!772))))

(declare-fun res!1078469 () Bool)

(assert (=> start!136756 (=> (not res!1078469) (not e!880374))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136756 (= res!1078469 (validMask!0 mask!918))))

(assert (=> start!136756 e!880374))

(assert (=> start!136756 true))

(declare-fun array_inv!39612 (array!105722) Bool)

(assert (=> start!136756 (array_inv!39612 _keys!614)))

(assert (= (and start!136756 res!1078469) b!1578338))

(assert (= (and b!1578338 res!1078470) b!1578339))

(assert (= (and b!1578339 res!1078471) b!1578340))

(assert (= (and b!1578340 res!1078472) b!1578341))

(declare-fun m!1450487 () Bool)

(assert (=> b!1578340 m!1450487))

(declare-fun m!1450489 () Bool)

(assert (=> b!1578338 m!1450489))

(declare-fun m!1450491 () Bool)

(assert (=> b!1578341 m!1450491))

(declare-fun m!1450493 () Bool)

(assert (=> b!1578341 m!1450493))

(declare-fun m!1450495 () Bool)

(assert (=> b!1578341 m!1450495))

(assert (=> b!1578341 m!1450495))

(declare-fun m!1450497 () Bool)

(assert (=> b!1578341 m!1450497))

(declare-fun m!1450499 () Bool)

(assert (=> b!1578339 m!1450499))

(declare-fun m!1450501 () Bool)

(assert (=> start!136756 m!1450501))

(declare-fun m!1450503 () Bool)

(assert (=> start!136756 m!1450503))

(push 1)

(assert (not b!1578339))

(assert (not start!136756))

(assert (not b!1578341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

