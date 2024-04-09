; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135560 () Bool)

(assert start!135560)

(declare-fun res!1075577 () Bool)

(declare-fun e!877901 () Bool)

(assert (=> start!135560 (=> (not res!1075577) (not e!877901))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135560 (= res!1075577 (validMask!0 mask!877))))

(assert (=> start!135560 e!877901))

(assert (=> start!135560 true))

(declare-datatypes ((array!105195 0))(
  ( (array!105196 (arr!50741 (Array (_ BitVec 32) (_ BitVec 64))) (size!51292 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105195)

(declare-fun array_inv!39386 (array!105195) Bool)

(assert (=> start!135560 (array_inv!39386 _keys!591)))

(declare-fun b!1574145 () Bool)

(declare-fun res!1075576 () Bool)

(assert (=> b!1574145 (=> (not res!1075576) (not e!877901))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574145 (= res!1075576 (and (= (size!51292 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51292 _keys!591)) (bvslt i!537 (size!51292 _keys!591))))))

(declare-fun b!1574146 () Bool)

(declare-fun res!1075575 () Bool)

(assert (=> b!1574146 (=> (not res!1075575) (not e!877901))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574146 (= res!1075575 (validKeyInArray!0 (select (arr!50741 _keys!591) i!537)))))

(declare-fun b!1574147 () Bool)

(assert (=> b!1574147 (= e!877901 (not true))))

(declare-fun arrayContainsKey!0 (array!105195 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574147 (arrayContainsKey!0 _keys!591 (select (arr!50741 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52104 0))(
  ( (Unit!52105) )
))
(declare-fun lt!674686 () Unit!52104)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105195 (_ BitVec 64) (_ BitVec 32)) Unit!52104)

(assert (=> b!1574147 (= lt!674686 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50741 _keys!591) i!537) i!537))))

(assert (= (and start!135560 res!1075577) b!1574145))

(assert (= (and b!1574145 res!1075576) b!1574146))

(assert (= (and b!1574146 res!1075575) b!1574147))

(declare-fun m!1447435 () Bool)

(assert (=> start!135560 m!1447435))

(declare-fun m!1447437 () Bool)

(assert (=> start!135560 m!1447437))

(declare-fun m!1447439 () Bool)

(assert (=> b!1574146 m!1447439))

(assert (=> b!1574146 m!1447439))

(declare-fun m!1447441 () Bool)

(assert (=> b!1574146 m!1447441))

(assert (=> b!1574147 m!1447439))

(assert (=> b!1574147 m!1447439))

(declare-fun m!1447443 () Bool)

(assert (=> b!1574147 m!1447443))

(assert (=> b!1574147 m!1447439))

(declare-fun m!1447445 () Bool)

(assert (=> b!1574147 m!1447445))

(check-sat (not b!1574147) (not b!1574146) (not start!135560))
