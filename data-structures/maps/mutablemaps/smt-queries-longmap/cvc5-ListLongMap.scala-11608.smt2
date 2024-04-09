; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135486 () Bool)

(assert start!135486)

(declare-fun b!1573968 () Bool)

(declare-fun res!1075400 () Bool)

(declare-fun e!877780 () Bool)

(assert (=> b!1573968 (=> (not res!1075400) (not e!877780))))

(declare-datatypes ((array!105157 0))(
  ( (array!105158 (arr!50725 (Array (_ BitVec 32) (_ BitVec 64))) (size!51276 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105157)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573968 (= res!1075400 (validKeyInArray!0 (select (arr!50725 _keys!591) i!537)))))

(declare-fun b!1573970 () Bool)

(declare-fun e!877782 () Bool)

(assert (=> b!1573970 (= e!877782 (bvsge (bvadd #b00000000000000000000000000000001 i!537) #b00000000000000000000000000000000))))

(declare-fun res!1075397 () Bool)

(assert (=> start!135486 (=> (not res!1075397) (not e!877780))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135486 (= res!1075397 (validMask!0 mask!877))))

(assert (=> start!135486 e!877780))

(assert (=> start!135486 true))

(declare-fun array_inv!39370 (array!105157) Bool)

(assert (=> start!135486 (array_inv!39370 _keys!591)))

(declare-fun b!1573969 () Bool)

(assert (=> b!1573969 (= e!877780 (not e!877782))))

(declare-fun res!1075399 () Bool)

(assert (=> b!1573969 (=> res!1075399 e!877782)))

(declare-datatypes ((SeekEntryResult!13642 0))(
  ( (MissingZero!13642 (index!56965 (_ BitVec 32))) (Found!13642 (index!56966 (_ BitVec 32))) (Intermediate!13642 (undefined!14454 Bool) (index!56967 (_ BitVec 32)) (x!141826 (_ BitVec 32))) (Undefined!13642) (MissingVacant!13642 (index!56968 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105157 (_ BitVec 32)) SeekEntryResult!13642)

(assert (=> b!1573969 (= res!1075399 (not (= (seekEntryOrOpen!0 (select (arr!50725 _keys!591) i!537) _keys!591 mask!877) (Found!13642 i!537))))))

(declare-fun arrayContainsKey!0 (array!105157 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573969 (arrayContainsKey!0 _keys!591 (select (arr!50725 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52090 0))(
  ( (Unit!52091) )
))
(declare-fun lt!674656 () Unit!52090)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105157 (_ BitVec 64) (_ BitVec 32)) Unit!52090)

(assert (=> b!1573969 (= lt!674656 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50725 _keys!591) i!537) i!537))))

(declare-fun b!1573967 () Bool)

(declare-fun res!1075398 () Bool)

(assert (=> b!1573967 (=> (not res!1075398) (not e!877780))))

(assert (=> b!1573967 (= res!1075398 (and (= (size!51276 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51276 _keys!591)) (bvslt i!537 (size!51276 _keys!591))))))

(assert (= (and start!135486 res!1075397) b!1573967))

(assert (= (and b!1573967 res!1075398) b!1573968))

(assert (= (and b!1573968 res!1075400) b!1573969))

(assert (= (and b!1573969 (not res!1075399)) b!1573970))

(declare-fun m!1447255 () Bool)

(assert (=> b!1573968 m!1447255))

(assert (=> b!1573968 m!1447255))

(declare-fun m!1447257 () Bool)

(assert (=> b!1573968 m!1447257))

(declare-fun m!1447259 () Bool)

(assert (=> start!135486 m!1447259))

(declare-fun m!1447261 () Bool)

(assert (=> start!135486 m!1447261))

(assert (=> b!1573969 m!1447255))

(assert (=> b!1573969 m!1447255))

(declare-fun m!1447263 () Bool)

(assert (=> b!1573969 m!1447263))

(assert (=> b!1573969 m!1447255))

(declare-fun m!1447265 () Bool)

(assert (=> b!1573969 m!1447265))

(assert (=> b!1573969 m!1447255))

(declare-fun m!1447267 () Bool)

(assert (=> b!1573969 m!1447267))

(push 1)

(assert (not start!135486))

(assert (not b!1573969))

(assert (not b!1573968))

(check-sat)

(pop 1)

(push 1)

(check-sat)

