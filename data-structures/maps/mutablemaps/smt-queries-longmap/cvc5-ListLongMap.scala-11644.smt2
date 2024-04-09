; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135966 () Bool)

(assert start!135966)

(declare-fun res!1076595 () Bool)

(declare-fun e!878733 () Bool)

(assert (=> start!135966 (=> (not res!1076595) (not e!878733))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135966 (= res!1076595 (validMask!0 mask!898))))

(assert (=> start!135966 e!878733))

(assert (=> start!135966 true))

(declare-datatypes ((array!105403 0))(
  ( (array!105404 (arr!50833 (Array (_ BitVec 32) (_ BitVec 64))) (size!51384 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105403)

(declare-fun array_inv!39478 (array!105403) Bool)

(assert (=> start!135966 (array_inv!39478 _keys!605)))

(declare-fun b!1575468 () Bool)

(declare-fun res!1076596 () Bool)

(assert (=> b!1575468 (=> (not res!1076596) (not e!878733))))

(assert (=> b!1575468 (= res!1076596 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51384 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1575469 () Bool)

(declare-fun res!1076597 () Bool)

(assert (=> b!1575469 (=> (not res!1076597) (not e!878733))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1575469 (= res!1076597 (validKeyInArray!0 k!761))))

(declare-fun b!1575470 () Bool)

(assert (=> b!1575470 (= e!878733 false)))

(declare-datatypes ((SeekEntryResult!13714 0))(
  ( (MissingZero!13714 (index!57253 (_ BitVec 32))) (Found!13714 (index!57254 (_ BitVec 32))) (Intermediate!13714 (undefined!14526 Bool) (index!57255 (_ BitVec 32)) (x!142225 (_ BitVec 32))) (Undefined!13714) (MissingVacant!13714 (index!57256 (_ BitVec 32))) )
))
(declare-fun lt!675178 () SeekEntryResult!13714)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105403 (_ BitVec 32)) SeekEntryResult!13714)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1575470 (= lt!675178 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135966 res!1076595) b!1575468))

(assert (= (and b!1575468 res!1076596) b!1575469))

(assert (= (and b!1575469 res!1076597) b!1575470))

(declare-fun m!1448491 () Bool)

(assert (=> start!135966 m!1448491))

(declare-fun m!1448493 () Bool)

(assert (=> start!135966 m!1448493))

(declare-fun m!1448495 () Bool)

(assert (=> b!1575469 m!1448495))

(declare-fun m!1448497 () Bool)

(assert (=> b!1575470 m!1448497))

(assert (=> b!1575470 m!1448497))

(declare-fun m!1448499 () Bool)

(assert (=> b!1575470 m!1448499))

(push 1)

(assert (not b!1575470))

(assert (not start!135966))

(assert (not b!1575469))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

