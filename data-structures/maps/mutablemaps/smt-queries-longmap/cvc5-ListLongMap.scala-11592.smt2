; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135162 () Bool)

(assert start!135162)

(declare-fun b!1572728 () Bool)

(declare-fun e!877016 () Bool)

(assert (=> b!1572728 (= e!877016 false)))

(declare-fun k!754 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!13606 0))(
  ( (MissingZero!13606 (index!56821 (_ BitVec 32))) (Found!13606 (index!56822 (_ BitVec 32))) (Intermediate!13606 (undefined!14418 Bool) (index!56823 (_ BitVec 32)) (x!141611 (_ BitVec 32))) (Undefined!13606) (MissingVacant!13606 (index!56824 (_ BitVec 32))) )
))
(declare-fun lt!674074 () SeekEntryResult!13606)

(declare-fun mask!889 () (_ BitVec 32))

(declare-datatypes ((array!105040 0))(
  ( (array!105041 (arr!50677 (Array (_ BitVec 32) (_ BitVec 64))) (size!51228 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105040)

(declare-fun lt!674073 () SeekEntryResult!13606)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105040 (_ BitVec 32)) SeekEntryResult!13606)

(assert (=> b!1572728 (= lt!674074 (seekKeyOrZeroReturnVacant!0 (x!141611 lt!674073) (index!56823 lt!674073) (index!56823 lt!674073) k!754 _keys!600 mask!889))))

(declare-fun res!1074674 () Bool)

(declare-fun e!877017 () Bool)

(assert (=> start!135162 (=> (not res!1074674) (not e!877017))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135162 (= res!1074674 (validMask!0 mask!889))))

(assert (=> start!135162 e!877017))

(assert (=> start!135162 true))

(declare-fun array_inv!39322 (array!105040) Bool)

(assert (=> start!135162 (array_inv!39322 _keys!600)))

(declare-fun b!1572725 () Bool)

(declare-fun res!1074677 () Bool)

(assert (=> b!1572725 (=> (not res!1074677) (not e!877017))))

(assert (=> b!1572725 (= res!1074677 (= (size!51228 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572727 () Bool)

(assert (=> b!1572727 (= e!877017 e!877016)))

(declare-fun res!1074676 () Bool)

(assert (=> b!1572727 (=> (not res!1074676) (not e!877016))))

(assert (=> b!1572727 (= res!1074676 (and (not (undefined!14418 lt!674073)) (is-Intermediate!13606 lt!674073) (not (= (select (arr!50677 _keys!600) (index!56823 lt!674073)) k!754)) (not (= (select (arr!50677 _keys!600) (index!56823 lt!674073)) #b0000000000000000000000000000000000000000000000000000000000000000)) (= (select (arr!50677 _keys!600) (index!56823 lt!674073)) #b1000000000000000000000000000000000000000000000000000000000000000) (bvsge (index!56823 lt!674073) #b00000000000000000000000000000000) (bvslt (index!56823 lt!674073) (bvadd #b00000000000000000000000000000001 mask!889))))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105040 (_ BitVec 32)) SeekEntryResult!13606)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572727 (= lt!674073 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(declare-fun b!1572726 () Bool)

(declare-fun res!1074675 () Bool)

(assert (=> b!1572726 (=> (not res!1074675) (not e!877017))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572726 (= res!1074675 (validKeyInArray!0 k!754))))

(assert (= (and start!135162 res!1074674) b!1572725))

(assert (= (and b!1572725 res!1074677) b!1572726))

(assert (= (and b!1572726 res!1074675) b!1572727))

(assert (= (and b!1572727 res!1074676) b!1572728))

(declare-fun m!1446403 () Bool)

(assert (=> b!1572728 m!1446403))

(declare-fun m!1446405 () Bool)

(assert (=> start!135162 m!1446405))

(declare-fun m!1446407 () Bool)

(assert (=> start!135162 m!1446407))

(declare-fun m!1446409 () Bool)

(assert (=> b!1572727 m!1446409))

(declare-fun m!1446411 () Bool)

(assert (=> b!1572727 m!1446411))

(assert (=> b!1572727 m!1446411))

(declare-fun m!1446413 () Bool)

(assert (=> b!1572727 m!1446413))

(declare-fun m!1446415 () Bool)

(assert (=> b!1572726 m!1446415))

(push 1)

(assert (not b!1572726))

