; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135114 () Bool)

(assert start!135114)

(declare-fun res!1074561 () Bool)

(declare-fun e!876914 () Bool)

(assert (=> start!135114 (=> (not res!1074561) (not e!876914))))

(declare-fun mask!889 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135114 (= res!1074561 (validMask!0 mask!889))))

(assert (=> start!135114 e!876914))

(assert (=> start!135114 true))

(declare-datatypes ((array!105019 0))(
  ( (array!105020 (arr!50668 (Array (_ BitVec 32) (_ BitVec 64))) (size!51219 (_ BitVec 32))) )
))
(declare-fun _keys!600 () array!105019)

(declare-fun array_inv!39313 (array!105019) Bool)

(assert (=> start!135114 (array_inv!39313 _keys!600)))

(declare-fun b!1572561 () Bool)

(declare-fun res!1074563 () Bool)

(assert (=> b!1572561 (=> (not res!1074563) (not e!876914))))

(assert (=> b!1572561 (= res!1074563 (= (size!51219 _keys!600) (bvadd #b00000000000000000000000000000001 mask!889)))))

(declare-fun b!1572562 () Bool)

(declare-fun res!1074562 () Bool)

(assert (=> b!1572562 (=> (not res!1074562) (not e!876914))))

(declare-fun k!754 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1572562 (= res!1074562 (validKeyInArray!0 k!754))))

(declare-fun b!1572563 () Bool)

(assert (=> b!1572563 (= e!876914 false)))

(declare-datatypes ((SeekEntryResult!13597 0))(
  ( (MissingZero!13597 (index!56785 (_ BitVec 32))) (Found!13597 (index!56786 (_ BitVec 32))) (Intermediate!13597 (undefined!14409 Bool) (index!56787 (_ BitVec 32)) (x!141572 (_ BitVec 32))) (Undefined!13597) (MissingVacant!13597 (index!56788 (_ BitVec 32))) )
))
(declare-fun lt!674008 () SeekEntryResult!13597)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105019 (_ BitVec 32)) SeekEntryResult!13597)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1572563 (= lt!674008 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!754 mask!889) k!754 _keys!600 mask!889))))

(assert (= (and start!135114 res!1074561) b!1572561))

(assert (= (and b!1572561 res!1074563) b!1572562))

(assert (= (and b!1572562 res!1074562) b!1572563))

(declare-fun m!1446283 () Bool)

(assert (=> start!135114 m!1446283))

(declare-fun m!1446285 () Bool)

(assert (=> start!135114 m!1446285))

(declare-fun m!1446287 () Bool)

(assert (=> b!1572562 m!1446287))

(declare-fun m!1446289 () Bool)

(assert (=> b!1572563 m!1446289))

(assert (=> b!1572563 m!1446289))

(declare-fun m!1446291 () Bool)

(assert (=> b!1572563 m!1446291))

(push 1)

(assert (not start!135114))

(assert (not b!1572562))

(assert (not b!1572563))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

