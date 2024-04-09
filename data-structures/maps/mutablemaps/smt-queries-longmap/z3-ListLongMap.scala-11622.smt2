; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135656 () Bool)

(assert start!135656)

(declare-fun res!1075832 () Bool)

(declare-fun e!878072 () Bool)

(assert (=> start!135656 (=> (not res!1075832) (not e!878072))))

(declare-fun mask!898 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135656 (= res!1075832 (validMask!0 mask!898))))

(assert (=> start!135656 e!878072))

(assert (=> start!135656 true))

(declare-datatypes ((array!105255 0))(
  ( (array!105256 (arr!50768 (Array (_ BitVec 32) (_ BitVec 64))) (size!51319 (_ BitVec 32))) )
))
(declare-fun _keys!605 () array!105255)

(declare-fun array_inv!39413 (array!105255) Bool)

(assert (=> start!135656 (array_inv!39413 _keys!605)))

(declare-fun b!1574397 () Bool)

(declare-fun res!1075830 () Bool)

(assert (=> b!1574397 (=> (not res!1075830) (not e!878072))))

(assert (=> b!1574397 (= res!1075830 (and (bvsge mask!898 #b00000000000000000000000000000000) (= (size!51319 _keys!605) (bvadd #b00000000000000000000000000000001 mask!898))))))

(declare-fun b!1574398 () Bool)

(declare-fun res!1075831 () Bool)

(assert (=> b!1574398 (=> (not res!1075831) (not e!878072))))

(declare-fun k0!761 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574398 (= res!1075831 (validKeyInArray!0 k0!761))))

(declare-fun b!1574399 () Bool)

(assert (=> b!1574399 (= e!878072 false)))

(declare-fun lt!674767 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1574399 (= lt!674767 (toIndex!0 k0!761 mask!898))))

(assert (= (and start!135656 res!1075832) b!1574397))

(assert (= (and b!1574397 res!1075830) b!1574398))

(assert (= (and b!1574398 res!1075831) b!1574399))

(declare-fun m!1447671 () Bool)

(assert (=> start!135656 m!1447671))

(declare-fun m!1447673 () Bool)

(assert (=> start!135656 m!1447673))

(declare-fun m!1447675 () Bool)

(assert (=> b!1574398 m!1447675))

(declare-fun m!1447677 () Bool)

(assert (=> b!1574399 m!1447677))

(check-sat (not start!135656) (not b!1574399) (not b!1574398))
