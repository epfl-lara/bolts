; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135664 () Bool)

(assert start!135664)

(declare-fun res!1075868 () Bool)

(declare-fun e!878097 () Bool)

(assert (=> start!135664 (=> (not res!1075868) (not e!878097))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135664 (= res!1075868 (validMask!0 mask!898))))

(assert (=> start!135664 e!878097))

(assert (=> start!135664 true))

(declare-datatypes ((array!105263 0))(
  ( (array!105264 (arr!50772 (Array (_ BitVec 32) (_ BitVec 64))) (size!51323 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105263)

(declare-fun array_inv!39417 (array!105263) Bool)

(assert (=> start!135664 (array_inv!39417 _keys!605)))

(declare-fun b!1574433 () Bool)

(declare-fun res!1075867 () Bool)

(assert (=> b!1574433 (=> (not res!1075867) (not e!878097))))

(assert (=> b!1574433 (= res!1075867 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51323 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574434 () Bool)

(declare-fun res!1075866 () Bool)

(assert (=> b!1574434 (=> (not res!1075866) (not e!878097))))

(declare-fun k!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574434 (= res!1075866 (validKeyInArray!0 k!761))))

(declare-fun b!1574435 () Bool)

(assert (=> b!1574435 (= e!878097 false)))

(declare-datatypes ((SeekEntryResult!13653 0))(
  ( (MissingZero!13653 (index!57009 (_ BitVec 32))) (Found!13653 (index!57010 (_ BitVec 32))) (Intermediate!13653 (undefined!14465 Bool) (index!57011 (_ BitVec 32)) (x!141960 (_ BitVec 32))) (Undefined!13653) (MissingVacant!13653 (index!57012 (_ BitVec 32))) )
))
(declare-fun lt!674779 () SeekEntryResult!13653)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!105263 (_ BitVec 32)) SeekEntryResult!13653)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574435 (= lt!674779 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!761 mask!898) k!761 _keys!605 mask!898))))

(assert (= (and start!135664 res!1075868) b!1574433))

(assert (= (and b!1574433 res!1075867) b!1574434))

(assert (= (and b!1574434 res!1075866) b!1574435))

(declare-fun m!1447707 () Bool)

(assert (=> start!135664 m!1447707))

(declare-fun m!1447709 () Bool)

(assert (=> start!135664 m!1447709))

(declare-fun m!1447711 () Bool)

(assert (=> b!1574434 m!1447711))

(declare-fun m!1447713 () Bool)

(assert (=> b!1574435 m!1447713))

(assert (=> b!1574435 m!1447713))

(declare-fun m!1447715 () Bool)

(assert (=> b!1574435 m!1447715))

(push 1)

(assert (not b!1574434))

(assert (not start!135664))

(assert (not b!1574435))

