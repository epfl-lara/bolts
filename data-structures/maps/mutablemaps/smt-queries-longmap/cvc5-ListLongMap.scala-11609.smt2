; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135492 () Bool)

(assert start!135492)

(declare-fun res!1075433 () Bool)

(declare-fun e!877806 () Bool)

(assert (=> start!135492 (=> (not res!1075433) (not e!877806))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135492 (= res!1075433 (validMask!0 mask!877))))

(assert (=> start!135492 e!877806))

(assert (=> start!135492 true))

(declare-datatypes ((array!105163 0))(
  ( (array!105164 (arr!50728 (Array (_ BitVec 32) (_ BitVec 64))) (size!51279 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105163)

(declare-fun array_inv!39373 (array!105163) Bool)

(assert (=> start!135492 (array_inv!39373 _keys!591)))

(declare-fun b!1574001 () Bool)

(declare-fun res!1075432 () Bool)

(assert (=> b!1574001 (=> (not res!1075432) (not e!877806))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574001 (= res!1075432 (and (= (size!51279 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51279 _keys!591)) (bvslt i!537 (size!51279 _keys!591))))))

(declare-fun b!1574002 () Bool)

(declare-fun res!1075431 () Bool)

(assert (=> b!1574002 (=> (not res!1075431) (not e!877806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574002 (= res!1075431 (validKeyInArray!0 (select (arr!50728 _keys!591) i!537)))))

(declare-fun b!1574003 () Bool)

(assert (=> b!1574003 (= e!877806 (not true))))

(declare-datatypes ((SeekEntryResult!13645 0))(
  ( (MissingZero!13645 (index!56977 (_ BitVec 32))) (Found!13645 (index!56978 (_ BitVec 32))) (Intermediate!13645 (undefined!14457 Bool) (index!56979 (_ BitVec 32)) (x!141837 (_ BitVec 32))) (Undefined!13645) (MissingVacant!13645 (index!56980 (_ BitVec 32))) )
))
(declare-fun lt!674667 () SeekEntryResult!13645)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105163 (_ BitVec 32)) SeekEntryResult!13645)

(assert (=> b!1574003 (= lt!674667 (seekEntryOrOpen!0 (select (arr!50728 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105163 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574003 (arrayContainsKey!0 _keys!591 (select (arr!50728 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52096 0))(
  ( (Unit!52097) )
))
(declare-fun lt!674668 () Unit!52096)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105163 (_ BitVec 64) (_ BitVec 32)) Unit!52096)

(assert (=> b!1574003 (= lt!674668 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50728 _keys!591) i!537) i!537))))

(assert (= (and start!135492 res!1075433) b!1574001))

(assert (= (and b!1574001 res!1075432) b!1574002))

(assert (= (and b!1574002 res!1075431) b!1574003))

(declare-fun m!1447297 () Bool)

(assert (=> start!135492 m!1447297))

(declare-fun m!1447299 () Bool)

(assert (=> start!135492 m!1447299))

(declare-fun m!1447301 () Bool)

(assert (=> b!1574002 m!1447301))

(assert (=> b!1574002 m!1447301))

(declare-fun m!1447303 () Bool)

(assert (=> b!1574002 m!1447303))

(assert (=> b!1574003 m!1447301))

(assert (=> b!1574003 m!1447301))

(declare-fun m!1447305 () Bool)

(assert (=> b!1574003 m!1447305))

(assert (=> b!1574003 m!1447301))

(declare-fun m!1447307 () Bool)

(assert (=> b!1574003 m!1447307))

(assert (=> b!1574003 m!1447301))

(declare-fun m!1447309 () Bool)

(assert (=> b!1574003 m!1447309))

(push 1)

(assert (not start!135492))

(assert (not b!1574002))

(assert (not b!1574003))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

