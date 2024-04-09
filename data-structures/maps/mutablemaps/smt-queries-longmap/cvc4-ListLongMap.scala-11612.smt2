; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!135532 () Bool)

(assert start!135532)

(declare-fun res!1075539 () Bool)

(declare-fun e!877871 () Bool)

(assert (=> start!135532 (=> (not res!1075539) (not e!877871))))

(declare-fun mask!877 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!135532 (= res!1075539 (validMask!0 mask!877))))

(assert (=> start!135532 e!877871))

(assert (=> start!135532 true))

(declare-datatypes ((array!105188 0))(
  ( (array!105189 (arr!50739 (Array (_ BitVec 32) (_ BitVec 64))) (size!51290 (_ BitVec 32))) )
))
(declare-fun _keys!591 () array!105188)

(declare-fun array_inv!39384 (array!105188) Bool)

(assert (=> start!135532 (array_inv!39384 _keys!591)))

(declare-fun b!1574111 () Bool)

(declare-fun i!537 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!105188 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1574111 (= e!877871 (not (arrayContainsKey!0 _keys!591 (select (arr!50739 _keys!591) i!537) i!537)))))

(declare-fun b!1574108 () Bool)

(declare-fun res!1075540 () Bool)

(assert (=> b!1574108 (=> (not res!1075540) (not e!877871))))

(assert (=> b!1574108 (= res!1075540 (and (= (size!51290 _keys!591) (bvadd #b00000000000000000000000000000001 mask!877)) (bvsge i!537 #b00000000000000000000000000000000) (bvsle i!537 (size!51290 _keys!591)) (bvslt i!537 (size!51290 _keys!591))))))

(declare-fun b!1574110 () Bool)

(declare-fun res!1075541 () Bool)

(assert (=> b!1574110 (=> (not res!1075541) (not e!877871))))

(assert (=> b!1574110 (= res!1075541 (bvslt (size!51290 _keys!591) #b01111111111111111111111111111111))))

(declare-fun b!1574109 () Bool)

(declare-fun res!1075538 () Bool)

(assert (=> b!1574109 (=> (not res!1075538) (not e!877871))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1574109 (= res!1075538 (validKeyInArray!0 (select (arr!50739 _keys!591) i!537)))))

(assert (= (and start!135532 res!1075539) b!1574108))

(assert (= (and b!1574108 res!1075540) b!1574109))

(assert (= (and b!1574109 res!1075538) b!1574110))

(assert (= (and b!1574110 res!1075541) b!1574111))

(declare-fun m!1447407 () Bool)

(assert (=> start!135532 m!1447407))

(declare-fun m!1447409 () Bool)

(assert (=> start!135532 m!1447409))

(declare-fun m!1447411 () Bool)

(assert (=> b!1574111 m!1447411))

(assert (=> b!1574111 m!1447411))

(declare-fun m!1447413 () Bool)

(assert (=> b!1574111 m!1447413))

(assert (=> b!1574109 m!1447411))

(assert (=> b!1574109 m!1447411))

(declare-fun m!1447415 () Bool)

(assert (=> b!1574109 m!1447415))

(push 1)

(assert (not b!1574111))

(assert (not start!135532))

(assert (not b!1574109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!165099 () Bool)

(declare-fun res!1075558 () Bool)

(declare-fun e!877889 () Bool)

(assert (=> d!165099 (=> res!1075558 e!877889)))

(assert (=> d!165099 (= res!1075558 (= (select (arr!50739 _keys!591) i!537) (select (arr!50739 _keys!591) i!537)))))

(assert (=> d!165099 (= (arrayContainsKey!0 _keys!591 (select (arr!50739 _keys!591) i!537) i!537) e!877889)))

(declare-fun b!1574128 () Bool)

(declare-fun e!877890 () Bool)

(assert (=> b!1574128 (= e!877889 e!877890)))

(declare-fun res!1075559 () Bool)

(assert (=> b!1574128 (=> (not res!1075559) (not e!877890))))

