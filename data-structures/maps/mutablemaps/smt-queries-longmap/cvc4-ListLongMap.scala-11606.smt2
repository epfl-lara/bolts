; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135478 () Bool)

(assert start!135478)

(declare-fun res!1075361 () Bool)

(declare-fun e!877755 () Bool)

(assert (=> start!135478 (=> (not res!1075361) (not e!877755))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135478 (= res!1075361 (validMask!0 mask!877))))

(assert (=> start!135478 e!877755))

(assert (=> start!135478 true))

(declare-datatypes ((array!105149 0))(
  ( (array!105150 (arr!50721 (Array (_ BitVec 32) (_ BitVec 64))) (size!51272 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105149)

(declare-fun array_inv!39366 (array!105149) Bool)

(assert (=> start!135478 (array_inv!39366 _keys!591)))

(declare-fun b!1573929 () Bool)

(declare-fun res!1075360 () Bool)

(assert (=> b!1573929 (=> (not res!1075360) (not e!877755))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573929 (= res!1075360 (and (= (size!51272 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51272 _keys!591)) (bvslt i!537 (size!51272 _keys!591))))))

(declare-fun b!1573930 () Bool)

(declare-fun res!1075359 () Bool)

(assert (=> b!1573930 (=> (not res!1075359) (not e!877755))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573930 (= res!1075359 (validKeyInArray!0 (select (arr!50721 _keys!591) i!537)))))

(declare-fun b!1573931 () Bool)

(assert (=> b!1573931 (= e!877755 (not true))))

(declare-datatypes ((SeekEntryResult!13638 0))(
  ( (MissingZero!13638 (index!56949 (_ BitVec 32))) (Found!13638 (index!56950 (_ BitVec 32))) (Intermediate!13638 (undefined!14450 Bool) (index!56951 (_ BitVec 32)) (x!141806 (_ BitVec 32))) (Undefined!13638) (MissingVacant!13638 (index!56952 (_ BitVec 32))) )
))
(declare-fun lt!674634 () SeekEntryResult!13638)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105149 (_ BitVec 32)) SeekEntryResult!13638)

(assert (=> b!1573931 (= lt!674634 (seekEntryOrOpen!0 (select (arr!50721 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105149 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573931 (arrayContainsKey!0 _keys!591 (select (arr!50721 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52082 0))(
  ( (Unit!52083) )
))
(declare-fun lt!674635 () Unit!52082)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105149 (_ BitVec 64) (_ BitVec 32)) Unit!52082)

(assert (=> b!1573931 (= lt!674635 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50721 _keys!591) i!537) i!537))))

(assert (= (and start!135478 res!1075361) b!1573929))

(assert (= (and b!1573929 res!1075360) b!1573930))

(assert (= (and b!1573930 res!1075359) b!1573931))

(declare-fun m!1447199 () Bool)

(assert (=> start!135478 m!1447199))

(declare-fun m!1447201 () Bool)

(assert (=> start!135478 m!1447201))

(declare-fun m!1447203 () Bool)

(assert (=> b!1573930 m!1447203))

(assert (=> b!1573930 m!1447203))

(declare-fun m!1447205 () Bool)

(assert (=> b!1573930 m!1447205))

(assert (=> b!1573931 m!1447203))

(assert (=> b!1573931 m!1447203))

(declare-fun m!1447207 () Bool)

(assert (=> b!1573931 m!1447207))

(assert (=> b!1573931 m!1447203))

(declare-fun m!1447209 () Bool)

(assert (=> b!1573931 m!1447209))

(assert (=> b!1573931 m!1447203))

(declare-fun m!1447211 () Bool)

(assert (=> b!1573931 m!1447211))

(push 1)

(assert (not start!135478))

(assert (not b!1573931))

(assert (not b!1573930))

(check-sat)

