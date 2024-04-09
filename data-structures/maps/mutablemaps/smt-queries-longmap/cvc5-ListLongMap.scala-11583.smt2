; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135018 () Bool)

(assert start!135018)

(declare-fun res!1074340 () Bool)

(declare-fun e!876716 () Bool)

(assert (=> start!135018 (=> (not res!1074340) (not e!876716))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135018 (= res!1074340 (validMask!0 mask!889))))

(assert (=> start!135018 e!876716))

(assert (=> start!135018 true))

(declare-datatypes ((array!104977 0))(
  ( (array!104978 (arr!50650 (Array (_ BitVec 32) (_ BitVec 64))) (size!51201 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!104977)

(declare-fun array_inv!39295 (array!104977) Bool)

(assert (=> start!135018 (array_inv!39295 _keys!600)))

(declare-fun b!1572237 () Bool)

(declare-fun res!1074341 () Bool)

(assert (=> b!1572237 (=> (not res!1074341) (not e!876716))))

(assert (=> b!1572237 (= res!1074341 (= (size!51201 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572238 () Bool)

(declare-fun res!1074339 () Bool)

(assert (=> b!1572238 (=> (not res!1074339) (not e!876716))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572238 (= res!1074339 (validKeyInArray!0 k!754))))

(declare-fun b!1572239 () Bool)

(assert (=> b!1572239 (= e!876716 false)))

(declare-datatypes ((SeekEntryResult!13579 0))(
  ( (MissingZero!13579 (index!56713 (_ BitVec 32))) (Found!13579 (index!56714 (_ BitVec 32))) (Intermediate!13579 (undefined!14391 Bool) (index!56715 (_ BitVec 32)) (x!141494 (_ BitVec 32))) (Undefined!13579) (MissingVacant!13579 (index!56716 (_ BitVec 32))) )
))
(declare-fun lt!673882 () SeekEntryResult!13579)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!104977 (_ BitVec 32)) SeekEntryResult!13579)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572239 (= lt!673882 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135018 res!1074340) b!1572237))

(assert (= (and b!1572237 res!1074341) b!1572238))

(assert (= (and b!1572238 res!1074339) b!1572239))

(declare-fun m!1446049 () Bool)

(assert (=> start!135018 m!1446049))

(declare-fun m!1446051 () Bool)

(assert (=> start!135018 m!1446051))

(declare-fun m!1446053 () Bool)

(assert (=> b!1572238 m!1446053))

(declare-fun m!1446055 () Bool)

(assert (=> b!1572239 m!1446055))

(assert (=> b!1572239 m!1446055))

(declare-fun m!1446057 () Bool)

(assert (=> b!1572239 m!1446057))

(push 1)

(assert (not start!135018))

(assert (not b!1572239))

(assert (not b!1572238))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

