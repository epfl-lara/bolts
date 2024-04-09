; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135508 () Bool)

(assert start!135508)

(declare-fun res!1075504 () Bool)

(declare-fun e!877853 () Bool)

(assert (=> start!135508 (=> (not res!1075504) (not e!877853))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135508 (= res!1075504 (validMask!0 mask!877))))

(assert (=> start!135508 e!877853))

(assert (=> start!135508 true))

(declare-datatypes ((array!105179 0))(
  ( (array!105180 (arr!50736 (Array (_ BitVec 32) (_ BitVec 64))) (size!51287 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105179)

(declare-fun array_inv!39381 (array!105179) Bool)

(assert (=> start!135508 (array_inv!39381 _keys!591)))

(declare-fun b!1574073 () Bool)

(declare-fun res!1075503 () Bool)

(assert (=> b!1574073 (=> (not res!1075503) (not e!877853))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574073 (= res!1075503 (and (= (size!51287 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51287 _keys!591)) (bvslt i!537 (size!51287 _keys!591))))))

(declare-fun b!1574074 () Bool)

(declare-fun res!1075505 () Bool)

(assert (=> b!1574074 (=> (not res!1075505) (not e!877853))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574074 (= res!1075505 (validKeyInArray!0 (select (arr!50736 _keys!591) i!537)))))

(declare-fun b!1574075 () Bool)

(assert (=> b!1574075 (= e!877853 (bvsge (size!51287 _keys!591) #b01111111111111111111111111111111))))

(assert (= (and start!135508 res!1075504) b!1574073))

(assert (= (and b!1574073 res!1075503) b!1574074))

(assert (= (and b!1574074 res!1075505) b!1574075))

(declare-fun m!1447379 () Bool)

(assert (=> start!135508 m!1447379))

(declare-fun m!1447381 () Bool)

(assert (=> start!135508 m!1447381))

(declare-fun m!1447383 () Bool)

(assert (=> b!1574074 m!1447383))

(assert (=> b!1574074 m!1447383))

(declare-fun m!1447385 () Bool)

(assert (=> b!1574074 m!1447385))

(push 1)

(assert (not start!135508))

(assert (not b!1574074))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165075 () Bool)

(assert (=> d!165075 (= (validMask!0 mask!877) (and (or (= mask!877 #b00000000000000000000000000000111) (= mask!877 #b00000000000000000000000000001111) (= mask!877 #b00000000000000000000000000011111) (= mask!877 #b00000000000000000000000000111111) (= mask!877 #b00000000000000000000000001111111) (= mask!877 #b00000000000000000000000011111111) (= mask!877 #b00000000000000000000000111111111) (= mask!877 #b00000000000000000000001111111111) (= mask!877 #b00000000000000000000011111111111) (= mask!877 #b00000000000000000000111111111111) (= mask!877 #b00000000000000000001111111111111) (= mask!877 #b00000000000000000011111111111111) (= mask!877 #b00000000000000000111111111111111) (= mask!877 #b00000000000000001111111111111111) (= mask!877 #b00000000000000011111111111111111) (= mask!877 #b00000000000000111111111111111111) (= mask!877 #b00000000000001111111111111111111) (= mask!877 #b00000000000011111111111111111111) (= mask!877 #b00000000000111111111111111111111) (= mask!877 #b00000000001111111111111111111111) (= mask!877 #b00000000011111111111111111111111) (= mask!877 #b00000000111111111111111111111111) (= mask!877 #b00000001111111111111111111111111) (= mask!877 #b00000011111111111111111111111111) (= mask!877 #b00000111111111111111111111111111) (= mask!877 #b00001111111111111111111111111111) (= mask!877 #b00011111111111111111111111111111) (= mask!877 #b00111111111111111111111111111111)) (bvsle mask!877 #b00111111111111111111111111111111)))))

(assert (=> start!135508 d!165075))

(declare-fun d!165081 () Bool)

(assert (=> d!165081 (= (array_inv!39381 _keys!591) (bvsge (size!51287 _keys!591) #b00000000000000000000000000000000))))

(assert (=> start!135508 d!165081))

(declare-fun d!165083 () Bool)

(assert (=> d!165083 (= (validKeyInArray!0 (select (arr!50736 _keys!591) i!537)) (and (not (= (select (arr!50736 _keys!591) i!537) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50736 _keys!591) i!537) #b1000000000000000000000000000000000000000000000000000000000000000))))))

