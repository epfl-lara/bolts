; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135110 () Bool)

(assert start!135110)

(declare-fun res!1074544 () Bool)

(declare-fun e!876902 () Bool)

(assert (=> start!135110 (=> (not res!1074544) (not e!876902))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135110 (= res!1074544 (validMask!0 mask!889))))

(assert (=> start!135110 e!876902))

(assert (=> start!135110 true))

(declare-datatypes ((array!105015 0))(
  ( (array!105016 (arr!50666 (Array (_ BitVec 32) (_ BitVec 64))) (size!51217 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105015)

(declare-fun array_inv!39311 (array!105015) Bool)

(assert (=> start!135110 (array_inv!39311 _keys!600)))

(declare-fun b!1572543 () Bool)

(declare-fun res!1074543 () Bool)

(assert (=> b!1572543 (=> (not res!1074543) (not e!876902))))

(assert (=> b!1572543 (= res!1074543 (= (size!51217 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572544 () Bool)

(declare-fun res!1074545 () Bool)

(assert (=> b!1572544 (=> (not res!1074545) (not e!876902))))

(declare-fun k0!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572544 (= res!1074545 (validKeyInArray!0 k0!754))))

(declare-fun b!1572545 () Bool)

(assert (=> b!1572545 (= e!876902 false)))

(declare-datatypes ((SeekEntryResult!13595 0))(
  ( (MissingZero!13595 (index!56777 (_ BitVec 32))) (Found!13595 (index!56778 (_ BitVec 32))) (Intermediate!13595 (undefined!14407 Bool) (index!56779 (_ BitVec 32)) (x!141562 (_ BitVec 32))) (Undefined!13595) (MissingVacant!13595 (index!56780 (_ BitVec 32))) )
))
(declare-fun lt!674002 () SeekEntryResult!13595)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105015 (_ BitVec 32)) SeekEntryResult!13595)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572545 (= lt!674002 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!754 mask!889) k0!754 _keys!600 mask!889))))

(assert (= (and start!135110 res!1074544) b!1572543))

(assert (= (and b!1572543 res!1074543) b!1572544))

(assert (= (and b!1572544 res!1074545) b!1572545))

(declare-fun m!1446263 () Bool)

(assert (=> start!135110 m!1446263))

(declare-fun m!1446265 () Bool)

(assert (=> start!135110 m!1446265))

(declare-fun m!1446267 () Bool)

(assert (=> b!1572544 m!1446267))

(declare-fun m!1446269 () Bool)

(assert (=> b!1572545 m!1446269))

(assert (=> b!1572545 m!1446269))

(declare-fun m!1446271 () Bool)

(assert (=> b!1572545 m!1446271))

(check-sat (not b!1572545) (not start!135110) (not b!1572544))
(check-sat)
