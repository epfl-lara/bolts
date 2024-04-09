; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136750 () Bool)

(assert start!136750)

(declare-fun b!1578303 () Bool)

(declare-fun res!1078434 () Bool)

(declare-fun e!880355 () Bool)

(assert (=> b!1578303 (=> (not res!1078434) (not e!880355))))

(declare-fun k!772 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1578303 (= res!1078434 (validKeyInArray!0 k!772))))

(declare-fun vacantSpotIndex!10 () (_ BitVec 32))

(declare-fun b!1578305 () Bool)

(declare-datatypes ((SeekEntryResult!13767 0))(
  ( (MissingZero!13767 (index!57465 (_ BitVec 32))) (Found!13767 (index!57466 (_ BitVec 32))) (Intermediate!13767 (undefined!14579 Bool) (index!57467 (_ BitVec 32)) (x!142730 (_ BitVec 32))) (Undefined!13767) (MissingVacant!13767 (index!57468 (_ BitVec 32))) )
))
(declare-fun lt!676183 () SeekEntryResult!13767)

(declare-datatypes ((array!105716 0))(
  ( (array!105717 (arr!50964 (Array (_ BitVec 32) (_ BitVec 64))) (size!51515 (_ BitVec 32))) )
))
(declare-fun _keys!614 () array!105716)

(assert (=> b!1578305 (= e!880355 (and (not (is-Undefined!13767 lt!676183)) (not (is-Found!13767 lt!676183)) (is-MissingVacant!13767 lt!676183) (= (index!57468 lt!676183) vacantSpotIndex!10) (or (bvslt (index!57468 lt!676183) #b00000000000000000000000000000000) (bvsge (index!57468 lt!676183) (size!51515 _keys!614)))))))

(declare-fun x!466 () (_ BitVec 32))

(declare-fun mask!918 () (_ BitVec 32))

(declare-fun ee!18 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105716 (_ BitVec 32)) SeekEntryResult!13767)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1578305 (= lt!676183 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!466) (nextIndex!0 ee!18 x!466 mask!918) vacantSpotIndex!10 k!772 _keys!614 mask!918))))

(declare-fun b!1578304 () Bool)

(declare-fun res!1078435 () Bool)

(assert (=> b!1578304 (=> (not res!1078435) (not e!880355))))

(assert (=> b!1578304 (= res!1078435 (and (bvslt x!466 #b01111111111111111111111111111110) (not (= (select (arr!50964 _keys!614) ee!18) k!772)) (not (= (select (arr!50964 _keys!614) ee!18) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1578302 () Bool)

(declare-fun res!1078433 () Bool)

(assert (=> b!1578302 (=> (not res!1078433) (not e!880355))))

(assert (=> b!1578302 (= res!1078433 (and (bvsge mask!918 #b00000000000000000000000000000000) (= (size!51515 _keys!614) (bvadd #b00000000000000000000000000000001 mask!918)) (bvsge ee!18 #b00000000000000000000000000000000) (bvslt ee!18 (bvadd #b00000000000000000000000000000001 mask!918)) (bvsle x!466 #b01111111111111111111111111111110) (bvsge x!466 #b00000000000000000000000000000000) (bvsge vacantSpotIndex!10 #b00000000000000000000000000000000) (bvslt vacantSpotIndex!10 (bvadd #b00000000000000000000000000000001 mask!918)) (= (select (arr!50964 _keys!614) vacantSpotIndex!10) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1078436 () Bool)

(assert (=> start!136750 (=> (not res!1078436) (not e!880355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136750 (= res!1078436 (validMask!0 mask!918))))

(assert (=> start!136750 e!880355))

(assert (=> start!136750 true))

(declare-fun array_inv!39609 (array!105716) Bool)

(assert (=> start!136750 (array_inv!39609 _keys!614)))

(assert (= (and start!136750 res!1078436) b!1578302))

(assert (= (and b!1578302 res!1078433) b!1578303))

(assert (= (and b!1578303 res!1078434) b!1578304))

(assert (= (and b!1578304 res!1078435) b!1578305))

(declare-fun m!1450437 () Bool)

(assert (=> b!1578302 m!1450437))

(declare-fun m!1450439 () Bool)

(assert (=> start!136750 m!1450439))

(declare-fun m!1450441 () Bool)

(assert (=> start!136750 m!1450441))

(declare-fun m!1450443 () Bool)

(assert (=> b!1578303 m!1450443))

(declare-fun m!1450445 () Bool)

(assert (=> b!1578305 m!1450445))

(assert (=> b!1578305 m!1450445))

(declare-fun m!1450447 () Bool)

(assert (=> b!1578305 m!1450447))

(declare-fun m!1450449 () Bool)

(assert (=> b!1578304 m!1450449))

(push 1)

(assert (not b!1578305))

(assert (not b!1578303))

(assert (not start!136750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

