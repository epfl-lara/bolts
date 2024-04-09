; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135474 () Bool)

(assert start!135474)

(declare-fun res!1075341 () Bool)

(declare-fun e!877742 () Bool)

(assert (=> start!135474 (=> (not res!1075341) (not e!877742))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135474 (= res!1075341 (validMask!0 mask!877))))

(assert (=> start!135474 e!877742))

(assert (=> start!135474 true))

(declare-datatypes ((array!105145 0))(
  ( (array!105146 (arr!50719 (Array (_ BitVec 32) (_ BitVec 64))) (size!51270 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105145)

(declare-fun array_inv!39364 (array!105145) Bool)

(assert (=> start!135474 (array_inv!39364 _keys!591)))

(declare-fun b!1573911 () Bool)

(declare-fun res!1075342 () Bool)

(assert (=> b!1573911 (=> (not res!1075342) (not e!877742))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573911 (= res!1075342 (and (= (size!51270 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51270 _keys!591)) (bvslt i!537 (size!51270 _keys!591))))))

(declare-fun b!1573912 () Bool)

(declare-fun res!1075343 () Bool)

(assert (=> b!1573912 (=> (not res!1075343) (not e!877742))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573912 (= res!1075343 (validKeyInArray!0 (select (arr!50719 _keys!591) i!537)))))

(declare-fun b!1573913 () Bool)

(assert (=> b!1573913 (= e!877742 (not true))))

(declare-datatypes ((SeekEntryResult!13636 0))(
  ( (MissingZero!13636 (index!56941 (_ BitVec 32))) (Found!13636 (index!56942 (_ BitVec 32))) (Intermediate!13636 (undefined!14448 Bool) (index!56943 (_ BitVec 32)) (x!141804 (_ BitVec 32))) (Undefined!13636) (MissingVacant!13636 (index!56944 (_ BitVec 32))) )
))
(declare-fun lt!674623 () SeekEntryResult!13636)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105145 (_ BitVec 32)) SeekEntryResult!13636)

(assert (=> b!1573913 (= lt!674623 (seekEntryOrOpen!0 (select (arr!50719 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105145 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573913 (arrayContainsKey!0 _keys!591 (select (arr!50719 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52078 0))(
  ( (Unit!52079) )
))
(declare-fun lt!674622 () Unit!52078)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105145 (_ BitVec 64) (_ BitVec 32)) Unit!52078)

(assert (=> b!1573913 (= lt!674622 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50719 _keys!591) i!537) i!537))))

(assert (= (and start!135474 res!1075341) b!1573911))

(assert (= (and b!1573911 res!1075342) b!1573912))

(assert (= (and b!1573912 res!1075343) b!1573913))

(declare-fun m!1447171 () Bool)

(assert (=> start!135474 m!1447171))

(declare-fun m!1447173 () Bool)

(assert (=> start!135474 m!1447173))

(declare-fun m!1447175 () Bool)

(assert (=> b!1573912 m!1447175))

(assert (=> b!1573912 m!1447175))

(declare-fun m!1447177 () Bool)

(assert (=> b!1573912 m!1447177))

(assert (=> b!1573913 m!1447175))

(assert (=> b!1573913 m!1447175))

(declare-fun m!1447179 () Bool)

(assert (=> b!1573913 m!1447179))

(assert (=> b!1573913 m!1447175))

(declare-fun m!1447181 () Bool)

(assert (=> b!1573913 m!1447181))

(assert (=> b!1573913 m!1447175))

(declare-fun m!1447183 () Bool)

(assert (=> b!1573913 m!1447183))

(push 1)

(assert (not b!1573912))

(assert (not b!1573913))

(assert (not start!135474))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

