; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36092 () Bool)

(assert start!36092)

(declare-fun res!201469 () Bool)

(declare-fun e!221732 () Bool)

(assert (=> start!36092 (=> (not res!201469) (not e!221732))))

(declare-fun i!1487 () (_ BitVec 32))

(declare-datatypes ((array!20385 0))(
  ( (array!20386 (arr!9673 (Array (_ BitVec 32) (_ BitVec 64))) (size!10025 (_ BitVec 32))) )
))
(declare-fun a!4392 () array!20385)

(assert (=> start!36092 (= res!201469 (and (bvsge i!1487 #b00000000000000000000000000000000) (bvslt i!1487 (size!10025 a!4392))))))

(assert (=> start!36092 e!221732))

(assert (=> start!36092 true))

(declare-fun array_inv!7111 (array!20385) Bool)

(assert (=> start!36092 (array_inv!7111 a!4392)))

(declare-fun b!361976 () Bool)

(declare-fun res!201468 () Bool)

(assert (=> b!361976 (=> (not res!201468) (not e!221732))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!361976 (= res!201468 (validKeyInArray!0 (select (arr!9673 a!4392) i!1487)))))

(declare-fun b!361977 () Bool)

(declare-fun res!201467 () Bool)

(assert (=> b!361977 (=> (not res!201467) (not e!221732))))

(assert (=> b!361977 (= res!201467 (bvslt (size!10025 a!4392) #b01111111111111111111111111111111))))

(declare-fun b!361978 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20385 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!361978 (= e!221732 (not (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) #b00000000000000000000000000000001)))))

(assert (= (and start!36092 res!201469) b!361976))

(assert (= (and b!361976 res!201468) b!361977))

(assert (= (and b!361977 res!201467) b!361978))

(declare-fun m!358555 () Bool)

(assert (=> start!36092 m!358555))

(declare-fun m!358557 () Bool)

(assert (=> b!361976 m!358557))

(assert (=> b!361976 m!358557))

(declare-fun m!358559 () Bool)

(assert (=> b!361976 m!358559))

(declare-fun m!358561 () Bool)

(assert (=> b!361978 m!358561))

(push 1)

(assert (not start!36092))

(assert (not b!361976))

(assert (not b!361978))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71873 () Bool)

(assert (=> d!71873 (= (array_inv!7111 a!4392) (bvsge (size!10025 a!4392) #b00000000000000000000000000000000))))

(assert (=> start!36092 d!71873))

(declare-fun d!71875 () Bool)

(assert (=> d!71875 (= (validKeyInArray!0 (select (arr!9673 a!4392) i!1487)) (and (not (= (select (arr!9673 a!4392) i!1487) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9673 a!4392) i!1487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!361976 d!71875))

(declare-fun b!362019 () Bool)

(declare-fun e!221756 () (_ BitVec 32))

(assert (=> b!362019 (= e!221756 #b00000000000000000000000000000000)))

(declare-fun bm!27200 () Bool)

(declare-fun call!27203 () (_ BitVec 32))

(assert (=> bm!27200 (= call!27203 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun d!71879 () Bool)

(declare-fun lt!166588 () (_ BitVec 32))

(assert (=> d!71879 (and (bvsge lt!166588 #b00000000000000000000000000000000) (bvsle lt!166588 (bvsub (size!10025 a!4392) i!1487)))))

(assert (=> d!71879 (= lt!166588 e!221756)))

(declare-fun c!53683 () Bool)

(assert (=> d!71879 (= c!53683 (bvsge i!1487 (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71879 (and (bvsle i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge i!1487 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10025 a!4392)))))

(assert (=> d!71879 (= (arrayCountValidKeys!0 a!4392 i!1487 (bvadd #b00000000000000000000000000000001 i!1487)) lt!166588)))

(declare-fun b!362020 () Bool)

(declare-fun e!221755 () (_ BitVec 32))

(assert (=> b!362020 (= e!221755 call!27203)))

(declare-fun b!362021 () Bool)

(assert (=> b!362021 (= e!221756 e!221755)))

(declare-fun c!53684 () Bool)

(assert (=> b!362021 (= c!53684 (validKeyInArray!0 (select (arr!9673 a!4392) i!1487)))))

(declare-fun b!362022 () Bool)

(assert (=> b!362022 (= e!221755 (bvadd #b00000000000000000000000000000001 call!27203))))

(assert (= (and d!71879 c!53683) b!362019))

(assert (= (and d!71879 (not c!53683)) b!362021))

(assert (= (and b!362021 c!53684) b!362022))

(assert (= (and b!362021 (not c!53684)) b!362020))

(assert (= (or b!362022 b!362020) bm!27200))

(declare-fun m!358581 () Bool)

(assert (=> bm!27200 m!358581))

(assert (=> b!362021 m!358557))

(assert (=> b!362021 m!358557))

(assert (=> b!362021 m!358559))

(assert (=> b!361978 d!71879))

(push 1)

(assert (not b!362021))

(assert (not bm!27200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!362021 d!71875))

(declare-fun b!362033 () Bool)

(declare-fun e!221764 () (_ BitVec 32))

(assert (=> b!362033 (= e!221764 #b00000000000000000000000000000000)))

(declare-fun bm!27204 () Bool)

(declare-fun call!27207 () (_ BitVec 32))

(assert (=> bm!27204 (= call!27207 (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(declare-fun d!71889 () Bool)

(declare-fun lt!166590 () (_ BitVec 32))

(assert (=> d!71889 (and (bvsge lt!166590 #b00000000000000000000000000000000) (bvsle lt!166590 (bvsub (size!10025 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(assert (=> d!71889 (= lt!166590 e!221764)))

(declare-fun c!53691 () Bool)

(assert (=> d!71889 (= c!53691 (bvsge (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)))))

(assert (=> d!71889 (and (bvsle (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) (bvsge (bvadd i!1487 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1487) (size!10025 a!4392)))))

(assert (=> d!71889 (= (arrayCountValidKeys!0 a!4392 (bvadd i!1487 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1487)) lt!166590)))

(declare-fun b!362034 () Bool)

(declare-fun e!221763 () (_ BitVec 32))

(assert (=> b!362034 (= e!221763 call!27207)))

(declare-fun b!362035 () Bool)

(assert (=> b!362035 (= e!221764 e!221763)))

(declare-fun c!53692 () Bool)

(assert (=> b!362035 (= c!53692 (validKeyInArray!0 (select (arr!9673 a!4392) (bvadd i!1487 #b00000000000000000000000000000001))))))

(declare-fun b!362036 () Bool)

(assert (=> b!362036 (= e!221763 (bvadd #b00000000000000000000000000000001 call!27207))))

(assert (= (and d!71889 c!53691) b!362033))

(assert (= (and d!71889 (not c!53691)) b!362035))

(assert (= (and b!362035 c!53692) b!362036))

(assert (= (and b!362035 (not c!53692)) b!362034))

(assert (= (or b!362036 b!362034) bm!27204))

(declare-fun m!358585 () Bool)

(assert (=> bm!27204 m!358585))

(declare-fun m!358587 () Bool)

(assert (=> b!362035 m!358587))

(assert (=> b!362035 m!358587))

(declare-fun m!358589 () Bool)

(assert (=> b!362035 m!358589))

(assert (=> bm!27200 d!71889))

(push 1)

(assert (not b!362035))

(assert (not bm!27204))

(check-sat)

(pop 1)

(push 1)

(check-sat)

