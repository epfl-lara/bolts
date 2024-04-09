; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135674 () Bool)

(assert start!135674)

(declare-fun res!1075911 () Bool)

(declare-fun e!878126 () Bool)

(assert (=> start!135674 (=> (not res!1075911) (not e!878126))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135674 (= res!1075911 (validMask!0 mask!898))))

(assert (=> start!135674 e!878126))

(assert (=> start!135674 true))

(declare-datatypes ((array!105273 0))(
  ( (array!105274 (arr!50777 (Array (_ BitVec 32) (_ BitVec 64))) (size!51328 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105273)

(declare-fun array_inv!39422 (array!105273) Bool)

(assert (=> start!135674 (array_inv!39422 _keys!605)))

(declare-fun b!1574478 () Bool)

(declare-fun res!1075912 () Bool)

(assert (=> b!1574478 (=> (not res!1075912) (not e!878126))))

(assert (=> b!1574478 (= res!1075912 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51328 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574479 () Bool)

(declare-fun res!1075913 () Bool)

(assert (=> b!1574479 (=> (not res!1075913) (not e!878126))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574479 (= res!1075913 (validKeyInArray!0 k0!761))))

(declare-fun b!1574480 () Bool)

(assert (=> b!1574480 (= e!878126 false)))

(declare-datatypes ((SeekEntryResult!13658 0))(
  ( (MissingZero!13658 (index!57029 (_ BitVec 32))) (Found!13658 (index!57030 (_ BitVec 32))) (Intermediate!13658 (undefined!14470 Bool) (index!57031 (_ BitVec 32)) (x!141981 (_ BitVec 32))) (Undefined!13658) (MissingVacant!13658 (index!57032 (_ BitVec 32))) )
))
(declare-fun lt!674794 () SeekEntryResult!13658)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105273 (_ BitVec 32)) SeekEntryResult!13658)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574480 (= lt!674794 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!761 mask!898) k0!761 _keys!605 mask!898))))

(assert (= (and start!135674 res!1075911) b!1574478))

(assert (= (and b!1574478 res!1075912) b!1574479))

(assert (= (and b!1574479 res!1075913) b!1574480))

(declare-fun m!1447757 () Bool)

(assert (=> start!135674 m!1447757))

(declare-fun m!1447759 () Bool)

(assert (=> start!135674 m!1447759))

(declare-fun m!1447761 () Bool)

(assert (=> b!1574479 m!1447761))

(declare-fun m!1447763 () Bool)

(assert (=> b!1574480 m!1447763))

(assert (=> b!1574480 m!1447763))

(declare-fun m!1447765 () Bool)

(assert (=> b!1574480 m!1447765))

(check-sat (not start!135674) (not b!1574480) (not b!1574479))
