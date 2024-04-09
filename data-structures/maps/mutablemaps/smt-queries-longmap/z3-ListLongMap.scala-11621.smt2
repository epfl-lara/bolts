; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135650 () Bool)

(assert start!135650)

(declare-fun res!1075805 () Bool)

(declare-fun e!878054 () Bool)

(assert (=> start!135650 (=> (not res!1075805) (not e!878054))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135650 (= res!1075805 (validMask!0 mask!898))))

(assert (=> start!135650 e!878054))

(assert (=> start!135650 true))

(declare-datatypes ((array!105249 0))(
  ( (array!105250 (arr!50765 (Array (_ BitVec 32) (_ BitVec 64))) (size!51316 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105249)

(declare-fun array_inv!39410 (array!105249) Bool)

(assert (=> start!135650 (array_inv!39410 _keys!605)))

(declare-fun b!1574370 () Bool)

(declare-fun res!1075804 () Bool)

(assert (=> b!1574370 (=> (not res!1075804) (not e!878054))))

(assert (=> b!1574370 (= res!1075804 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51316 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574371 () Bool)

(declare-fun res!1075803 () Bool)

(assert (=> b!1574371 (=> (not res!1075803) (not e!878054))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574371 (= res!1075803 (validKeyInArray!0 k0!761))))

(declare-fun b!1574372 () Bool)

(assert (=> b!1574372 (= e!878054 false)))

(declare-fun lt!674758 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574372 (= lt!674758 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135650 res!1075805) b!1574370))

(assert (= (and b!1574370 res!1075804) b!1574371))

(assert (= (and b!1574371 res!1075803) b!1574372))

(declare-fun m!1447647 () Bool)

(assert (=> start!135650 m!1447647))

(declare-fun m!1447649 () Bool)

(assert (=> start!135650 m!1447649))

(declare-fun m!1447651 () Bool)

(assert (=> b!1574371 m!1447651))

(declare-fun m!1447653 () Bool)

(assert (=> b!1574372 m!1447653))

(check-sat (not b!1574372) (not start!135650) (not b!1574371))
