; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135566 () Bool)

(assert start!135566)

(declare-fun b!1574178 () Bool)

(declare-fun res!1075609 () Bool)

(declare-fun e!877926 () Bool)

(assert (=> b!1574178 (=> (not res!1075609) (not e!877926))))

(declare-datatypes ((array!105201 0))(
  ( (array!105202 (arr!50744 (Array (_ BitVec 32) (_ BitVec 64))) (size!51295 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105201)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574178 (= res!1075609 (validKeyInArray!0 (select (arr!50744 _keys!591) i!537)))))

(declare-fun res!1075608 () Bool)

(assert (=> start!135566 (=> (not res!1075608) (not e!877926))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135566 (= res!1075608 (validMask!0 mask!877))))

(assert (=> start!135566 e!877926))

(assert (=> start!135566 true))

(declare-fun array_inv!39389 (array!105201) Bool)

(assert (=> start!135566 (array_inv!39389 _keys!591)))

(declare-fun b!1574180 () Bool)

(declare-fun e!877925 () Bool)

(assert (=> b!1574180 (= e!877925 (bvslt (bvsub (size!51295 _keys!591) (bvadd #b00000000000000000000000000000001 i!537)) (bvsub (size!51295 _keys!591) i!537)))))

(declare-fun b!1574177 () Bool)

(declare-fun res!1075607 () Bool)

(assert (=> b!1574177 (=> (not res!1075607) (not e!877926))))

(assert (=> b!1574177 (= res!1075607 (and (= (size!51295 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51295 _keys!591)) (bvslt i!537 (size!51295 _keys!591))))))

(declare-fun b!1574179 () Bool)

(assert (=> b!1574179 (= e!877926 (not e!877925))))

(declare-fun res!1075610 () Bool)

(assert (=> b!1574179 (=> res!1075610 e!877925)))

(declare-datatypes ((SeekEntryResult!13649 0))(
  ( (MissingZero!13649 (index!56993 (_ BitVec 32))) (Found!13649 (index!56994 (_ BitVec 32))) (Intermediate!13649 (undefined!14461 Bool) (index!56995 (_ BitVec 32)) (x!141881 (_ BitVec 32))) (Undefined!13649) (MissingVacant!13649 (index!56996 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!105201 (_ BitVec 32)) SeekEntryResult!13649)

(assert (=> b!1574179 (= res!1075610 (not (= (seekEntryOrOpen!0 (select (arr!50744 _keys!591) i!537) _keys!591 mask!877) (Found!13649 i!537))))))

(declare-fun arrayContainsKey!0 (array!105201 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574179 (arrayContainsKey!0 _keys!591 (select (arr!50744 _keys!591) i!537) #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!52110 0))(
  ( (Unit!52111) )
))
(declare-fun lt!674695 () Unit!52110)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!105201 (_ BitVec 64) (_ BitVec 32)) Unit!52110)

(assert (=> b!1574179 (= lt!674695 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!591 (select (arr!50744 _keys!591) i!537) i!537))))

(assert (= (and start!135566 res!1075608) b!1574177))

(assert (= (and b!1574177 res!1075607) b!1574178))

(assert (= (and b!1574178 res!1075609) b!1574179))

(assert (= (and b!1574179 (not res!1075610)) b!1574180))

(declare-fun m!1447473 () Bool)

(assert (=> b!1574178 m!1447473))

(assert (=> b!1574178 m!1447473))

(declare-fun m!1447475 () Bool)

(assert (=> b!1574178 m!1447475))

(declare-fun m!1447477 () Bool)

(assert (=> start!135566 m!1447477))

(declare-fun m!1447479 () Bool)

(assert (=> start!135566 m!1447479))

(assert (=> b!1574179 m!1447473))

(assert (=> b!1574179 m!1447473))

(declare-fun m!1447481 () Bool)

(assert (=> b!1574179 m!1447481))

(assert (=> b!1574179 m!1447473))

(declare-fun m!1447483 () Bool)

(assert (=> b!1574179 m!1447483))

(assert (=> b!1574179 m!1447473))

(declare-fun m!1447485 () Bool)

(assert (=> b!1574179 m!1447485))

(check-sat (not start!135566) (not b!1574178) (not b!1574179))
(check-sat)
