; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135504 () Bool)

(assert start!135504)

(declare-fun res!1075487 () Bool)

(declare-fun e!877841 () Bool)

(assert (=> start!135504 (=> (not res!1075487) (not e!877841))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135504 (= res!1075487 (validMask!0 mask!877))))

(assert (=> start!135504 e!877841))

(assert (=> start!135504 true))

(declare-datatypes ((array!105175 0))(
  ( (array!105176 (arr!50734 (Array (_ BitVec 32) (_ BitVec 64))) (size!51285 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105175)

(declare-fun array_inv!39379 (array!105175) Bool)

(assert (=> start!135504 (array_inv!39379 _keys!591)))

(declare-fun b!1574055 () Bool)

(declare-fun res!1075486 () Bool)

(assert (=> b!1574055 (=> (not res!1075486) (not e!877841))))

(declare-fun i!537 () (_ BitVec 32))

(assert (=> b!1574055 (= res!1075486 (and (= (size!51285 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51285 _keys!591)) (bvslt i!537 (size!51285 _keys!591))))))

(declare-fun b!1574056 () Bool)

(declare-fun res!1075485 () Bool)

(assert (=> b!1574056 (=> (not res!1075485) (not e!877841))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574056 (= res!1075485 (validKeyInArray!0 (select (arr!50734 _keys!591) i!537)))))

(declare-fun b!1574057 () Bool)

(assert (=> b!1574057 (= e!877841 (bvsge (size!51285 _keys!591) #b01111111111111111111111111111111))))

(assert (= (and start!135504 res!1075487) b!1574055))

(assert (= (and b!1574055 res!1075486) b!1574056))

(assert (= (and b!1574056 res!1075485) b!1574057))

(declare-fun m!1447363 () Bool)

(assert (=> start!135504 m!1447363))

(declare-fun m!1447365 () Bool)

(assert (=> start!135504 m!1447365))

(declare-fun m!1447367 () Bool)

(assert (=> b!1574056 m!1447367))

(assert (=> b!1574056 m!1447367))

(declare-fun m!1447369 () Bool)

(assert (=> b!1574056 m!1447369))

(push 1)

(assert (not start!135504))

(assert (not b!1574056))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165069 () Bool)

(assert (=> d!165069 (= (validMask!0 mask!877) (and (or (= mask!877 #b00000000000000000000000000000111) (= mask!877 #b00000000000000000000000000001111) (= mask!877 #b00000000000000000000000000011111) (= mask!877 #b00000000000000000000000000111111) (= mask!877 #b00000000000000000000000001111111) (= mask!877 #b00000000000000000000000011111111) (= mask!877 #b00000000000000000000000111111111) (= mask!877 #b00000000000000000000001111111111) (= mask!877 #b00000000000000000000011111111111) (= mask!877 #b00000000000000000000111111111111) (= mask!877 #b00000000000000000001111111111111) (= mask!877 #b00000000000000000011111111111111) (= mask!877 #b00000000000000000111111111111111) (= mask!877 #b00000000000000001111111111111111) (= mask!877 #b00000000000000011111111111111111) (= mask!877 #b00000000000000111111111111111111) (= mask!877 #b00000000000001111111111111111111) (= mask!877 #b00000000000011111111111111111111) (= mask!877 #b00000000000111111111111111111111) (= mask!877 #b00000000001111111111111111111111) (= mask!877 #b00000000011111111111111111111111) (= mask!877 #b00000000111111111111111111111111) (= mask!877 #b00000001111111111111111111111111) (= mask!877 #b00000011111111111111111111111111) (= mask!877 #b00000111111111111111111111111111) (= mask!877 #b00001111111111111111111111111111) (= mask!877 #b00011111111111111111111111111111) (= mask!877 #b00111111111111111111111111111111)) (bvsle mask!877 #b00111111111111111111111111111111)))))

(assert (=> start!135504 d!165069))

(declare-fun d!165077 () Bool)

(assert (=> d!165077 (= (array_inv!39379 _keys!591) (bvsge (size!51285 _keys!591) #b00000000000000000000000000000000))))

(assert (=> start!135504 d!165077))

(declare-fun d!165079 () Bool)

(assert (=> d!165079 (= (validKeyInArray!0 (select (arr!50734 _keys!591) i!537)) (and (not (= (select (arr!50734 _keys!591) i!537) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!50734 _keys!591) i!537) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1574056 d!165079))

(push 1)

(check-sat)

