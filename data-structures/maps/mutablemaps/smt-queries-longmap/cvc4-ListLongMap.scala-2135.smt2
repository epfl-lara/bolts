; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36096 () Bool)

(assert start!36096)

(declare-fun res!201485 () Bool)

(declare-fun e!221744 () Bool)

(assert (=> start!36096 (=> (not res!201485) (not e!221744))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20389 0))(
  ( (array!20390 (arr!9675 (Array (_ BitVec 32) (_ BitVec 64))) (size!10027 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20389)

(assert (=> start!36096 (= res!201485 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10027 a!4392))))))

(assert (=> start!36096 e!221744))

(assert (=> start!36096 true))

(declare-fun array_inv!7113 (array!20389) Bool)

(assert (=> start!36096 (array_inv!7113 a!4392)))

(declare-fun b!361994 () Bool)

(declare-fun res!201486 () Bool)

(assert (=> b!361994 (=> (not res!201486) (not e!221744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361994 (= res!201486 (validKeyInArray!0 (select (arr!9675 a!4392) i!1487)))))

(declare-fun b!361995 () Bool)

(declare-fun res!201487 () Bool)

(assert (=> b!361995 (=> (not res!201487) (not e!221744))))

(assert (=> b!361995 (= res!201487 (bvslt (size!10027 a!4392) #b01111111111111111111111111111111))))

(declare-fun b!361996 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20389 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!361996 (= e!221744 (not (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) #b00000000000000000000000000000001)))))

(assert (= (and start!36096 res!201485) b!361994))

(assert (= (and b!361994 res!201486) b!361995))

(assert (= (and b!361995 res!201487) b!361996))

(declare-fun m!358571 () Bool)

(assert (=> start!36096 m!358571))

(declare-fun m!358573 () Bool)

(assert (=> b!361994 m!358573))

(assert (=> b!361994 m!358573))

(declare-fun m!358575 () Bool)

(assert (=> b!361994 m!358575))

(declare-fun m!358577 () Bool)

(assert (=> b!361996 m!358577))

(push 1)

(assert (not b!361994))

(assert (not b!361996))

(assert (not start!36096))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71877 () Bool)

(assert (=> d!71877 (= (validKeyInArray!0 (select (arr!9675 a!4392) i!1487)) (and (not (= (select (arr!9675 a!4392) i!1487) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9675 a!4392) i!1487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!361994 d!71877))

(declare-fun b!362029 () Bool)

(declare-fun e!221761 () (_ BitVec 32))

(assert (=> b!362029 (= e!221761 #b00000000000000000000000000000000)))

(declare-fun d!71881 () Bool)

(declare-fun lt!166589 () (_ BitVec 32))

(assert (=> d!71881 (and (bvsge lt!166589 #b00000000000000000000000000000000) (bvsle lt!166589 (bvsub (size!10027 a!4392) i!1487)))))

(assert (=> d!71881 (= lt!166589 e!221761)))

(declare-fun c!53690 () Bool)

(assert (=> d!71881 (= c!53690 (bvsge i!1487 (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71881 (and (bvsle i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge i!1487 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10027 a!4392)))))

(assert (=> d!71881 (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) lt!166589)))

(declare-fun b!362030 () Bool)

(declare-fun e!221762 () (_ BitVec 32))

(assert (=> b!362030 (= e!221761 e!221762)))

(declare-fun c!53689 () Bool)

(assert (=> b!362030 (= c!53689 (validKeyInArray!0 (select (arr!9675 a!4392) i!1487)))))

(declare-fun b!362031 () Bool)

(declare-fun call!27206 () (_ BitVec 32))

(assert (=> b!362031 (= e!221762 (bvadd #b00000000000000000000000000000001 call!27206))))

(declare-fun bm!27203 () Bool)

(assert (=> bm!27203 (= call!27206 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun b!362032 () Bool)

(assert (=> b!362032 (= e!221762 call!27206)))

(assert (= (and d!71881 c!53690) b!362029))

(assert (= (and d!71881 (not c!53690)) b!362030))

(assert (= (and b!362030 c!53689) b!362031))

(assert (= (and b!362030 (not c!53689)) b!362032))

(assert (= (or b!362031 b!362032) bm!27203))

(assert (=> b!362030 m!358573))

(assert (=> b!362030 m!358573))

(assert (=> b!362030 m!358575))

(declare-fun m!358583 () Bool)

(assert (=> bm!27203 m!358583))

(assert (=> b!361996 d!71881))

(declare-fun d!71887 () Bool)

(assert (=> d!71887 (= (array_inv!7113 a!4392) (bvsge (size!10027 a!4392) #b00000000000000000000000000000000))))

(assert (=> start!36096 d!71887))

(push 1)

(assert (not b!362030))

(assert (not bm!27203))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!362030 d!71877))

(declare-fun b!362041 () Bool)

(declare-fun e!221767 () (_ BitVec 32))

(assert (=> b!362041 (= e!221767 #b00000000000000000000000000000000)))

(declare-fun d!71893 () Bool)

(declare-fun lt!166592 () (_ BitVec 32))

(assert (=> d!71893 (and (bvsge lt!166592 #b00000000000000000000000000000000) (bvsle lt!166592 (bvsub (size!10027 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(assert (=> d!71893 (= lt!166592 e!221767)))

(declare-fun c!53696 () Bool)

(assert (=> d!71893 (= c!53696 (bvsge (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71893 (and (bvsle (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge (bvadd i!1487 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10027 a!4392)))))

(assert (=> d!71893 (= (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) lt!166592)))

(declare-fun b!362042 () Bool)

(declare-fun e!221768 () (_ BitVec 32))

(assert (=> b!362042 (= e!221767 e!221768)))

(declare-fun c!53695 () Bool)

(assert (=> b!362042 (= c!53695 (validKeyInArray!0 (select (arr!9675 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(declare-fun b!362043 () Bool)

(declare-fun call!27209 () (_ BitVec 32))

(assert (=> b!362043 (= e!221768 (bvadd #b00000000000000000000000000000001 call!27209))))

(declare-fun bm!27206 () Bool)

(assert (=> bm!27206 (= call!27209 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun b!362044 () Bool)

(assert (=> b!362044 (= e!221768 call!27209)))

(assert (= (and d!71893 c!53696) b!362041))

(assert (= (and d!71893 (not c!53696)) b!362042))

(assert (= (and b!362042 c!53695) b!362043))

(assert (= (and b!362042 (not c!53695)) b!362044))

(assert (= (or b!362043 b!362044) bm!27206))

(declare-fun m!358597 () Bool)

(assert (=> b!362042 m!358597))

