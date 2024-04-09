; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!135506 () Bool)

(assert start!135506)

(declare-fun res!1075496 () Bool)

(declare-fun e!877848 () Bool)

(assert (=> start!135506 (=> (not res!1075496) (not e!877848))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135506 (= res!1075496 (validMask!0 mask!877))))

(assert (=> start!135506 e!877848))

(assert (=> start!135506 true))

(declare-datatypes ((array!105177 0))(
  ( (array!105178 (arr!50735 (Array (_ BitVec 32) (_ BitVec 64))) (size!51286 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105177)

(declare-fun array_inv!39380 (array!105177) Bool)

(assert (=> start!135506 (array_inv!39380 _keys!591)))

(declare-fun b!1574064 () Bool)

(declare-fun res!1075494 () Bool)

(assert (=> b!1574064 (=> (not res!1075494) (not e!877848))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574064 (= res!1075494 (and (= (size!51286 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51286 _keys!591)) (bvslt i!537 (size!51286 _keys!591))))))

(declare-fun b!1574065 () Bool)

(declare-fun res!1075495 () Bool)

(assert (=> b!1574065 (=> (not res!1075495) (not e!877848))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574065 (= res!1075495 (validKeyInArray!0 (select (arr!50735 _keys!591) i!537)))))

(declare-fun b!1574066 () Bool)

(assert (=> b!1574066 (= e!877848 (bvsge (size!51286 _keys!591) #b01111111111111111111111111111111))))

(assert (= (and start!135506 res!1075496) b!1574064))

(assert (= (and b!1574064 res!1075494) b!1574065))

(assert (= (and b!1574065 res!1075495) b!1574066))

(declare-fun m!1447371 () Bool)

(assert (=> start!135506 m!1447371))

(declare-fun m!1447373 () Bool)

(assert (=> start!135506 m!1447373))

(declare-fun m!1447375 () Bool)

(assert (=> b!1574065 m!1447375))

(assert (=> b!1574065 m!1447375))

(declare-fun m!1447377 () Bool)

(assert (=> b!1574065 m!1447377))

(check-sat (not b!1574065) (not start!135506))
(check-sat)
(get-model)

(declare-fun d!165071 () Bool)

(assert (=> d!165071 (= (validKeyInArray!0 (select (arr!50735 _keys!591) i!537)) (and (not (= (select (arr!50735 _keys!591) i!537) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50735 _keys!591) i!537) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574065 d!165071))

(declare-fun d!165073 () Bool)

(assert (=> d!165073 (= (validMask!0 mask!877) (and (or (= mask!877 #b00000000000000000000000000000111) (= mask!877 #b00000000000000000000000000001111) (= mask!877 #b00000000000000000000000000011111) (= mask!877 #b00000000000000000000000000111111) (= mask!877 #b00000000000000000000000001111111) (= mask!877 #b00000000000000000000000011111111) (= mask!877 #b00000000000000000000000111111111) (= mask!877 #b00000000000000000000001111111111) (= mask!877 #b00000000000000000000011111111111) (= mask!877 #b00000000000000000000111111111111) (= mask!877 #b00000000000000000001111111111111) (= mask!877 #b00000000000000000011111111111111) (= mask!877 #b00000000000000000111111111111111) (= mask!877 #b00000000000000001111111111111111) (= mask!877 #b00000000000000011111111111111111) (= mask!877 #b00000000000000111111111111111111) (= mask!877 #b00000000000001111111111111111111) (= mask!877 #b00000000000011111111111111111111) (= mask!877 #b00000000000111111111111111111111) (= mask!877 #b00000000001111111111111111111111) (= mask!877 #b00000000011111111111111111111111) (= mask!877 #b00000000111111111111111111111111) (= mask!877 #b00000001111111111111111111111111) (= mask!877 #b00000011111111111111111111111111) (= mask!877 #b00000111111111111111111111111111) (= mask!877 #b00001111111111111111111111111111) (= mask!877 #b00011111111111111111111111111111) (= mask!877 #b00111111111111111111111111111111)) (bvsle mask!877 #b00111111111111111111111111111111)))))

(assert (=> start!135506 d!165073))

(declare-fun d!165085 () Bool)

(assert (=> d!165085 (= (array_inv!39380 _keys!591) (bvsge (size!51286 _keys!591) #b00000000000000000000000000000000))))

(assert (=> start!135506 d!165085))

(check-sat)
