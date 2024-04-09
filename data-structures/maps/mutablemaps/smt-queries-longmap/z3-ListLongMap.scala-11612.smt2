; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135530 () Bool)

(assert start!135530)

(declare-fun b!1574099 () Bool)

(declare-fun e!877866 () Bool)

(declare-datatypes ((array!105186 0))(
  ( (array!105187 (arr!50738 (Array (_ BitVec 32) (_ BitVec 64))) (size!51289 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105186)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!105186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574099 (= e!877866 (not (arrayContainsKey!0 _keys!591 (select (arr!50738 _keys!591) i!537) i!537)))))

(declare-fun b!1574096 () Bool)

(declare-fun res!1075526 () Bool)

(assert (=> b!1574096 (=> (not res!1075526) (not e!877866))))

(declare-fun mask!877 () (_ BitVec 32))

(assert (=> b!1574096 (= res!1075526 (and (= (size!51289 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51289 _keys!591)) (bvslt i!537 (size!51289 _keys!591))))))

(declare-fun b!1574098 () Bool)

(declare-fun res!1075529 () Bool)

(assert (=> b!1574098 (=> (not res!1075529) (not e!877866))))

(assert (=> b!1574098 (= res!1075529 (bvslt (size!51289 _keys!591) #b01111111111111111111111111111111))))

(declare-fun b!1574097 () Bool)

(declare-fun res!1075527 () Bool)

(assert (=> b!1574097 (=> (not res!1075527) (not e!877866))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574097 (= res!1075527 (validKeyInArray!0 (select (arr!50738 _keys!591) i!537)))))

(declare-fun res!1075528 () Bool)

(assert (=> start!135530 (=> (not res!1075528) (not e!877866))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135530 (= res!1075528 (validMask!0 mask!877))))

(assert (=> start!135530 e!877866))

(assert (=> start!135530 true))

(declare-fun array_inv!39383 (array!105186) Bool)

(assert (=> start!135530 (array_inv!39383 _keys!591)))

(assert (= (and start!135530 res!1075528) b!1574096))

(assert (= (and b!1574096 res!1075526) b!1574097))

(assert (= (and b!1574097 res!1075527) b!1574098))

(assert (= (and b!1574098 res!1075529) b!1574099))

(declare-fun m!1447397 () Bool)

(assert (=> b!1574099 m!1447397))

(assert (=> b!1574099 m!1447397))

(declare-fun m!1447399 () Bool)

(assert (=> b!1574099 m!1447399))

(assert (=> b!1574097 m!1447397))

(assert (=> b!1574097 m!1447397))

(declare-fun m!1447401 () Bool)

(assert (=> b!1574097 m!1447401))

(declare-fun m!1447403 () Bool)

(assert (=> start!135530 m!1447403))

(declare-fun m!1447405 () Bool)

(assert (=> start!135530 m!1447405))

(check-sat (not b!1574099) (not start!135530) (not b!1574097))
(check-sat)
(get-model)

(declare-fun d!165089 () Bool)

(declare-fun res!1075550 () Bool)

(declare-fun e!877881 () Bool)

(assert (=> d!165089 (=> res!1075550 e!877881)))

(assert (=> d!165089 (= res!1075550 (= (select (arr!50738 _keys!591) i!537) (select (arr!50738 _keys!591) i!537)))))

(assert (=> d!165089 (= (arrayContainsKey!0 _keys!591 (select (arr!50738 _keys!591) i!537) i!537) e!877881)))

(declare-fun b!1574120 () Bool)

(declare-fun e!877882 () Bool)

(assert (=> b!1574120 (= e!877881 e!877882)))

(declare-fun res!1075551 () Bool)

(assert (=> b!1574120 (=> (not res!1075551) (not e!877882))))

(assert (=> b!1574120 (= res!1075551 (bvslt (bvadd i!537 #b00000000000000000000000000000001) (size!51289 _keys!591)))))

(declare-fun b!1574121 () Bool)

(assert (=> b!1574121 (= e!877882 (arrayContainsKey!0 _keys!591 (select (arr!50738 _keys!591) i!537) (bvadd i!537 #b00000000000000000000000000000001)))))

(assert (= (and d!165089 (not res!1075550)) b!1574120))

(assert (= (and b!1574120 res!1075551) b!1574121))

(assert (=> d!165089 m!1447397))

(assert (=> b!1574121 m!1447397))

(declare-fun m!1447417 () Bool)

(assert (=> b!1574121 m!1447417))

(assert (=> b!1574099 d!165089))

(declare-fun d!165095 () Bool)

(assert (=> d!165095 (= (validMask!0 mask!877) (and (or (= mask!877 #b00000000000000000000000000000111) (= mask!877 #b00000000000000000000000000001111) (= mask!877 #b00000000000000000000000000011111) (= mask!877 #b00000000000000000000000000111111) (= mask!877 #b00000000000000000000000001111111) (= mask!877 #b00000000000000000000000011111111) (= mask!877 #b00000000000000000000000111111111) (= mask!877 #b00000000000000000000001111111111) (= mask!877 #b00000000000000000000011111111111) (= mask!877 #b00000000000000000000111111111111) (= mask!877 #b00000000000000000001111111111111) (= mask!877 #b00000000000000000011111111111111) (= mask!877 #b00000000000000000111111111111111) (= mask!877 #b00000000000000001111111111111111) (= mask!877 #b00000000000000011111111111111111) (= mask!877 #b00000000000000111111111111111111) (= mask!877 #b00000000000001111111111111111111) (= mask!877 #b00000000000011111111111111111111) (= mask!877 #b00000000000111111111111111111111) (= mask!877 #b00000000001111111111111111111111) (= mask!877 #b00000000011111111111111111111111) (= mask!877 #b00000000111111111111111111111111) (= mask!877 #b00000001111111111111111111111111) (= mask!877 #b00000011111111111111111111111111) (= mask!877 #b00000111111111111111111111111111) (= mask!877 #b00001111111111111111111111111111) (= mask!877 #b00011111111111111111111111111111) (= mask!877 #b00111111111111111111111111111111)) (bvsle mask!877 #b00111111111111111111111111111111)))))

(assert (=> start!135530 d!165095))

(declare-fun d!165105 () Bool)

(assert (=> d!165105 (= (array_inv!39383 _keys!591) (bvsge (size!51289 _keys!591) #b00000000000000000000000000000000))))

(assert (=> start!135530 d!165105))

(declare-fun d!165107 () Bool)

(assert (=> d!165107 (= (validKeyInArray!0 (select (arr!50738 _keys!591) i!537)) (and (not (= (select (arr!50738 _keys!591) i!537) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50738 _keys!591) i!537) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574097 d!165107))

(check-sat (not b!1574121))
