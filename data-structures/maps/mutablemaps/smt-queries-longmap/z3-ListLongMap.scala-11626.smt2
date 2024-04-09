; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135680 () Bool)

(assert start!135680)

(declare-fun res!1075939 () Bool)

(declare-fun e!878145 () Bool)

(assert (=> start!135680 (=> (not res!1075939) (not e!878145))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135680 (= res!1075939 (validMask!0 mask!898))))

(assert (=> start!135680 e!878145))

(assert (=> start!135680 true))

(declare-datatypes ((array!105279 0))(
  ( (array!105280 (arr!50780 (Array (_ BitVec 32) (_ BitVec 64))) (size!51331 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105279)

(declare-fun array_inv!39425 (array!105279) Bool)

(assert (=> start!135680 (array_inv!39425 _keys!605)))

(declare-fun b!1574505 () Bool)

(declare-fun res!1075938 () Bool)

(assert (=> b!1574505 (=> (not res!1075938) (not e!878145))))

(assert (=> b!1574505 (= res!1075938 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51331 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574506 () Bool)

(declare-fun res!1075940 () Bool)

(assert (=> b!1574506 (=> (not res!1075940) (not e!878145))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574506 (= res!1075940 (validKeyInArray!0 k0!761))))

(declare-fun b!1574507 () Bool)

(assert (=> b!1574507 (= e!878145 false)))

(declare-datatypes ((SeekEntryResult!13661 0))(
  ( (MissingZero!13661 (index!57041 (_ BitVec 32))) (Found!13661 (index!57042 (_ BitVec 32))) (Intermediate!13661 (undefined!14473 Bool) (index!57043 (_ BitVec 32)) (x!141992 (_ BitVec 32))) (Undefined!13661) (MissingVacant!13661 (index!57044 (_ BitVec 32))) )
))
(declare-fun lt!674803 () SeekEntryResult!13661)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105279 (_ BitVec 32)) SeekEntryResult!13661)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574507 (= lt!674803 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135680 res!1075939) b!1574505))

(assert (= (and b!1574505 res!1075938) b!1574506))

(assert (= (and b!1574506 res!1075940) b!1574507))

(declare-fun m!1447787 () Bool)

(assert (=> start!135680 m!1447787))

(declare-fun m!1447789 () Bool)

(assert (=> start!135680 m!1447789))

(declare-fun m!1447791 () Bool)

(assert (=> b!1574506 m!1447791))

(declare-fun m!1447793 () Bool)

(assert (=> b!1574507 m!1447793))

(assert (=> b!1574507 m!1447793))

(declare-fun m!1447795 () Bool)

(assert (=> b!1574507 m!1447795))

(check-sat (not b!1574506) (not start!135680) (not b!1574507))
(check-sat)
