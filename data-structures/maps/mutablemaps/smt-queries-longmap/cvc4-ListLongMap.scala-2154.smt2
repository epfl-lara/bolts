; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36228 () Bool)

(assert start!36228)

(declare-fun b!362797 () Bool)

(declare-fun res!202243 () Bool)

(declare-fun e!222191 () Bool)

(assert (=> b!362797 (=> (not res!202243) (not e!222191))))

(declare-datatypes ((array!20506 0))(
  ( (array!20507 (arr!9732 (Array (_ BitVec 32) (_ BitVec 64))) (size!10084 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20506)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!362797 (= res!202243 (not (validKeyInArray!0 (select (arr!9732 a!4337) i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(declare-fun b!362800 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20506 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!362800 (= e!222191 (not (= (arrayCountValidKeys!0 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478))))))))

(declare-fun b!362799 () Bool)

(declare-fun res!202241 () Bool)

(assert (=> b!362799 (=> (not res!202241) (not e!222191))))

(assert (=> b!362799 (= res!202241 (and (bvslt (size!10084 a!4337) #b01111111111111111111111111111111) (bvsle i!1478 (size!10084 a!4337))))))

(declare-fun b!362798 () Bool)

(declare-fun res!202240 () Bool)

(assert (=> b!362798 (=> (not res!202240) (not e!222191))))

(assert (=> b!362798 (= res!202240 (validKeyInArray!0 k!2980))))

(declare-fun res!202242 () Bool)

(assert (=> start!36228 (=> (not res!202242) (not e!222191))))

(assert (=> start!36228 (= res!202242 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10084 a!4337))))))

(assert (=> start!36228 e!222191))

(assert (=> start!36228 true))

(declare-fun array_inv!7170 (array!20506) Bool)

(assert (=> start!36228 (array_inv!7170 a!4337)))

(assert (= (and start!36228 res!202242) b!362797))

(assert (= (and b!362797 res!202243) b!362798))

(assert (= (and b!362798 res!202240) b!362799))

(assert (= (and b!362799 res!202241) b!362800))

(declare-fun m!359711 () Bool)

(assert (=> b!362797 m!359711))

(assert (=> b!362797 m!359711))

(declare-fun m!359713 () Bool)

(assert (=> b!362797 m!359713))

(declare-fun m!359715 () Bool)

(assert (=> b!362800 m!359715))

(declare-fun m!359717 () Bool)

(assert (=> b!362800 m!359717))

(declare-fun m!359719 () Bool)

(assert (=> b!362800 m!359719))

(declare-fun m!359721 () Bool)

(assert (=> b!362798 m!359721))

(declare-fun m!359723 () Bool)

(assert (=> start!36228 m!359723))

(push 1)

(assert (not b!362797))

(assert (not start!36228))

(assert (not b!362798))

(assert (not b!362800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71951 () Bool)

(assert (=> d!71951 (= (validKeyInArray!0 (select (arr!9732 a!4337) i!1478)) (and (not (= (select (arr!9732 a!4337) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9732 a!4337) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362797 d!71951))

(declare-fun d!71953 () Bool)

(assert (=> d!71953 (= (array_inv!7170 a!4337) (bvsge (size!10084 a!4337) #b00000000000000000000000000000000))))

(assert (=> start!36228 d!71953))

(declare-fun d!71955 () Bool)

(assert (=> d!71955 (= (validKeyInArray!0 k!2980) (and (not (= k!2980 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2980 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!362798 d!71955))

(declare-fun b!362841 () Bool)

(declare-fun e!222212 () (_ BitVec 32))

(declare-fun e!222213 () (_ BitVec 32))

(assert (=> b!362841 (= e!222212 e!222213)))

(declare-fun c!53717 () Bool)

(assert (=> b!362841 (= c!53717 (validKeyInArray!0 (select (arr!9732 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337))) i!1478)))))

(declare-fun lt!167305 () (_ BitVec 32))

(declare-fun d!71957 () Bool)

(assert (=> d!71957 (and (bvsge lt!167305 #b00000000000000000000000000000000) (bvsle lt!167305 (bvsub (size!10084 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337))) i!1478)))))

(assert (=> d!71957 (= lt!167305 e!222212)))

(declare-fun c!53718 () Bool)

(assert (=> d!71957 (= c!53718 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71957 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10084 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337)))))))

(assert (=> d!71957 (= (arrayCountValidKeys!0 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337)) i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167305)))

(declare-fun b!362842 () Bool)

(declare-fun call!27220 () (_ BitVec 32))

(assert (=> b!362842 (= e!222213 call!27220)))

(declare-fun b!362843 () Bool)

(assert (=> b!362843 (= e!222213 (bvadd #b00000000000000000000000000000001 call!27220))))

(declare-fun bm!27217 () Bool)

(assert (=> bm!27217 (= call!27220 (arrayCountValidKeys!0 (array!20507 (store (arr!9732 a!4337) i!1478 k!2980) (size!10084 a!4337)) (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362844 () Bool)

(assert (=> b!362844 (= e!222212 #b00000000000000000000000000000000)))

(assert (= (and d!71957 c!53718) b!362844))

(assert (= (and d!71957 (not c!53718)) b!362841))

(assert (= (and b!362841 c!53717) b!362843))

(assert (= (and b!362841 (not c!53717)) b!362842))

(assert (= (or b!362843 b!362842) bm!27217))

(declare-fun m!359741 () Bool)

(assert (=> b!362841 m!359741))

(assert (=> b!362841 m!359741))

(declare-fun m!359743 () Bool)

(assert (=> b!362841 m!359743))

(declare-fun m!359745 () Bool)

(assert (=> bm!27217 m!359745))

(assert (=> b!362800 d!71957))

(declare-fun b!362845 () Bool)

(declare-fun e!222214 () (_ BitVec 32))

(declare-fun e!222215 () (_ BitVec 32))

(assert (=> b!362845 (= e!222214 e!222215)))

(declare-fun c!53719 () Bool)

(assert (=> b!362845 (= c!53719 (validKeyInArray!0 (select (arr!9732 a!4337) i!1478)))))

(declare-fun d!71961 () Bool)

(declare-fun lt!167306 () (_ BitVec 32))

(assert (=> d!71961 (and (bvsge lt!167306 #b00000000000000000000000000000000) (bvsle lt!167306 (bvsub (size!10084 a!4337) i!1478)))))

(assert (=> d!71961 (= lt!167306 e!222214)))

(declare-fun c!53720 () Bool)

(assert (=> d!71961 (= c!53720 (bvsge i!1478 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71961 (and (bvsle i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge i!1478 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10084 a!4337)))))

(assert (=> d!71961 (= (arrayCountValidKeys!0 a!4337 i!1478 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167306)))

(declare-fun b!362846 () Bool)

(declare-fun call!27221 () (_ BitVec 32))

(assert (=> b!362846 (= e!222215 call!27221)))

(declare-fun b!362847 () Bool)

(assert (=> b!362847 (= e!222215 (bvadd #b00000000000000000000000000000001 call!27221))))

(declare-fun bm!27218 () Bool)

(assert (=> bm!27218 (= call!27221 (arrayCountValidKeys!0 a!4337 (bvadd i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!362848 () Bool)

(assert (=> b!362848 (= e!222214 #b00000000000000000000000000000000)))

(assert (= (and d!71961 c!53720) b!362848))

(assert (= (and d!71961 (not c!53720)) b!362845))

(assert (= (and b!362845 c!53719) b!362847))

(assert (= (and b!362845 (not c!53719)) b!362846))

(assert (= (or b!362847 b!362846) bm!27218))

(assert (=> b!362845 m!359711))

(assert (=> b!362845 m!359711))

(assert (=> b!362845 m!359713))

(declare-fun m!359747 () Bool)

(assert (=> bm!27218 m!359747))

(assert (=> b!362800 d!71961))

(push 1)

(assert (not bm!27218))

(assert (not bm!27217))

(assert (not b!362845))

(assert (not b!362841))

(check-sat)

(pop 1)

(push 1)

