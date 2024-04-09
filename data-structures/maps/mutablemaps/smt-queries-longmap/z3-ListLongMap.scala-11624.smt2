; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135668 () Bool)

(assert start!135668)

(declare-fun res!1075884 () Bool)

(declare-fun e!878108 () Bool)

(assert (=> start!135668 (=> (not res!1075884) (not e!878108))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135668 (= res!1075884 (validMask!0 mask!898))))

(assert (=> start!135668 e!878108))

(assert (=> start!135668 true))

(declare-datatypes ((array!105267 0))(
  ( (array!105268 (arr!50774 (Array (_ BitVec 32) (_ BitVec 64))) (size!51325 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105267)

(declare-fun array_inv!39419 (array!105267) Bool)

(assert (=> start!135668 (array_inv!39419 _keys!605)))

(declare-fun b!1574451 () Bool)

(declare-fun res!1075885 () Bool)

(assert (=> b!1574451 (=> (not res!1075885) (not e!878108))))

(assert (=> b!1574451 (= res!1075885 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51325 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574452 () Bool)

(declare-fun res!1075886 () Bool)

(assert (=> b!1574452 (=> (not res!1075886) (not e!878108))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574452 (= res!1075886 (validKeyInArray!0 k0!761))))

(declare-fun b!1574453 () Bool)

(assert (=> b!1574453 (= e!878108 false)))

(declare-datatypes ((SeekEntryResult!13655 0))(
  ( (MissingZero!13655 (index!57017 (_ BitVec 32))) (Found!13655 (index!57018 (_ BitVec 32))) (Intermediate!13655 (undefined!14467 Bool) (index!57019 (_ BitVec 32)) (x!141970 (_ BitVec 32))) (Undefined!13655) (MissingVacant!13655 (index!57020 (_ BitVec 32))) )
))
(declare-fun lt!674785 () SeekEntryResult!13655)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105267 (_ BitVec 32)) SeekEntryResult!13655)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574453 (= lt!674785 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135668 res!1075884) b!1574451))

(assert (= (and b!1574451 res!1075885) b!1574452))

(assert (= (and b!1574452 res!1075886) b!1574453))

(declare-fun m!1447727 () Bool)

(assert (=> start!135668 m!1447727))

(declare-fun m!1447729 () Bool)

(assert (=> start!135668 m!1447729))

(declare-fun m!1447731 () Bool)

(assert (=> b!1574452 m!1447731))

(declare-fun m!1447733 () Bool)

(assert (=> b!1574453 m!1447733))

(assert (=> b!1574453 m!1447733))

(declare-fun m!1447735 () Bool)

(assert (=> b!1574453 m!1447735))

(check-sat (not b!1574452) (not b!1574453) (not start!135668))
