; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135476 () Bool)

(assert start!135476)

(declare-fun res!1075352 () Bool)

(declare-fun e!877748 () Bool)

(assert (=> start!135476 (=> (not res!1075352) (not e!877748))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135476 (= res!1075352 (validMask!0 mask!877))))

(assert (=> start!135476 e!877748))

(assert (=> start!135476 true))

(declare-datatypes ((array!105147 0))(
  ( (array!105148 (arr!50720 (Array (_ BitVec 32) (_ BitVec 64))) (size!51271 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105147)

(declare-fun array_inv!39365 (array!105147) Bool)

(assert (=> start!135476 (array_inv!39365 _keys!591)))

(declare-fun b!1573920 () Bool)

(declare-fun res!1075350 () Bool)

(assert (=> b!1573920 (=> (not res!1075350) (not e!877748))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1573920 (= res!1075350 (and (= (size!51271 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51271 _keys!591)) (bvslt i!537 (size!51271 _keys!591))))))

(declare-fun b!1573921 () Bool)

(declare-fun res!1075351 () Bool)

(assert (=> b!1573921 (=> (not res!1075351) (not e!877748))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1573921 (= res!1075351 (validKeyInArray!0 (select (arr!50720 _keys!591) i!537)))))

(declare-fun b!1573922 () Bool)

(assert (=> b!1573922 (= e!877748 (not true))))

(declare-datatypes ((SeekEntryResult!13637 0))(
  ( (MissingZero!13637 (index!56945 (_ BitVec 32))) (Found!13637 (index!56946 (_ BitVec 32))) (Intermediate!13637 (undefined!14449 Bool) (index!56947 (_ BitVec 32)) (x!141805 (_ BitVec 32))) (Undefined!13637) (MissingVacant!13637 (index!56948 (_ BitVec 32))) )
))
(declare-fun lt!674628 () SeekEntryResult!13637)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105147 (_ BitVec 32)) SeekEntryResult!13637)

(assert (=> b!1573922 (= lt!674628 (seekEntryOrOpen!0 (select (arr!50720 _keys!591) i!537) _keys!591 mask!877))))

(declare-fun arrayContainsKey!0 (array!105147 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1573922 (arrayContainsKey!0 _keys!591 (select (arr!50720 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52080 0))(
  ( (Unit!52081) )
))
(declare-fun lt!674629 () Unit!52080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105147 (_ BitVec 64) (_ BitVec 32)) Unit!52080)

(assert (=> b!1573922 (= lt!674629 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50720 _keys!591) i!537) i!537))))

(assert (= (and start!135476 res!1075352) b!1573920))

(assert (= (and b!1573920 res!1075350) b!1573921))

(assert (= (and b!1573921 res!1075351) b!1573922))

(declare-fun m!1447185 () Bool)

(assert (=> start!135476 m!1447185))

(declare-fun m!1447187 () Bool)

(assert (=> start!135476 m!1447187))

(declare-fun m!1447189 () Bool)

(assert (=> b!1573921 m!1447189))

(assert (=> b!1573921 m!1447189))

(declare-fun m!1447191 () Bool)

(assert (=> b!1573921 m!1447191))

(assert (=> b!1573922 m!1447189))

(assert (=> b!1573922 m!1447189))

(declare-fun m!1447193 () Bool)

(assert (=> b!1573922 m!1447193))

(assert (=> b!1573922 m!1447189))

(declare-fun m!1447195 () Bool)

(assert (=> b!1573922 m!1447195))

(assert (=> b!1573922 m!1447189))

(declare-fun m!1447197 () Bool)

(assert (=> b!1573922 m!1447197))

(check-sat (not b!1573921) (not b!1573922) (not start!135476))
