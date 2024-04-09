; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36494 () Bool)

(assert start!36494)

(declare-fun b!364545 () Bool)

(declare-fun res!203858 () Bool)

(declare-fun e!223165 () Bool)

(assert (=> b!364545 (=> (not res!203858) (not e!223165))))

(declare-fun from!3650 () (_ BitVec 32))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20736 0))(
  ( (array!20737 (arr!9844 (Array (_ BitVec 32) (_ BitVec 64))) (size!10196 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20736)

(assert (=> b!364545 (= res!203858 (and (bvslt (size!10196 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10196 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun res!203856 () Bool)

(assert (=> start!36494 (=> (not res!203856) (not e!223165))))

(assert (=> start!36494 (= res!203856 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10196 a!4289))))))

(assert (=> start!36494 e!223165))

(assert (=> start!36494 true))

(declare-fun array_inv!7282 (array!20736) Bool)

(assert (=> start!36494 (array_inv!7282 a!4289)))

(declare-fun b!364546 () Bool)

(declare-fun e!223164 () Bool)

(declare-fun lt!168729 () (_ BitVec 32))

(declare-fun lt!168727 () (_ BitVec 32))

(assert (=> b!364546 (= e!223164 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10196 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (= lt!168729 (bvadd #b00000000000000000000000000000001 lt!168727)))))))

(declare-fun lt!168731 () (_ BitVec 32))

(declare-fun lt!168723 () (_ BitVec 32))

(assert (=> b!364546 (= (bvadd lt!168731 lt!168723) lt!168729)))

(declare-fun lt!168725 () array!20736)

(declare-fun arrayCountValidKeys!0 (array!20736 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364546 (= lt!168729 (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364546 (= lt!168731 (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11347 0))(
  ( (Unit!11348) )
))
(declare-fun lt!168724 () Unit!11347)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11347)

(assert (=> b!364546 (= lt!168724 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168726 () (_ BitVec 32))

(declare-fun lt!168728 () (_ BitVec 32))

(assert (=> b!364546 (= (bvadd lt!168726 lt!168728) lt!168727)))

(assert (=> b!364546 (= lt!168727 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364546 (= lt!168726 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168730 () Unit!11347)

(assert (=> b!364546 (= lt!168730 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364547 () Bool)

(declare-fun res!203857 () Bool)

(assert (=> b!364547 (=> (not res!203857) (not e!223165))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364547 (= res!203857 (validKeyInArray!0 k!2974))))

(declare-fun b!364548 () Bool)

(declare-fun res!203860 () Bool)

(assert (=> b!364548 (=> (not res!203860) (not e!223165))))

(assert (=> b!364548 (= res!203860 (not (validKeyInArray!0 (select (arr!9844 a!4289) i!1472))))))

(declare-fun b!364549 () Bool)

(assert (=> b!364549 (= e!223165 e!223164)))

(declare-fun res!203859 () Bool)

(assert (=> b!364549 (=> (not res!203859) (not e!223164))))

(assert (=> b!364549 (= res!203859 (and (= lt!168723 (bvadd #b00000000000000000000000000000001 lt!168728)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364549 (= lt!168723 (arrayCountValidKeys!0 lt!168725 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364549 (= lt!168728 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364549 (= lt!168725 (array!20737 (store (arr!9844 a!4289) i!1472 k!2974) (size!10196 a!4289)))))

(assert (= (and start!36494 res!203856) b!364548))

(assert (= (and b!364548 res!203860) b!364547))

(assert (= (and b!364547 res!203857) b!364545))

(assert (= (and b!364545 res!203858) b!364549))

(assert (= (and b!364549 res!203859) b!364546))

(declare-fun m!362269 () Bool)

(assert (=> b!364548 m!362269))

(assert (=> b!364548 m!362269))

(declare-fun m!362271 () Bool)

(assert (=> b!364548 m!362271))

(declare-fun m!362273 () Bool)

(assert (=> b!364549 m!362273))

(declare-fun m!362275 () Bool)

(assert (=> b!364549 m!362275))

(declare-fun m!362277 () Bool)

(assert (=> b!364549 m!362277))

(declare-fun m!362279 () Bool)

(assert (=> b!364546 m!362279))

(declare-fun m!362281 () Bool)

(assert (=> b!364546 m!362281))

(declare-fun m!362283 () Bool)

(assert (=> b!364546 m!362283))

(declare-fun m!362285 () Bool)

(assert (=> b!364546 m!362285))

(declare-fun m!362287 () Bool)

(assert (=> b!364546 m!362287))

(declare-fun m!362289 () Bool)

(assert (=> b!364546 m!362289))

(declare-fun m!362291 () Bool)

(assert (=> start!36494 m!362291))

(declare-fun m!362293 () Bool)

(assert (=> b!364547 m!362293))

(push 1)

(assert (not start!36494))

(assert (not b!364547))

(assert (not b!364549))

(assert (not b!364546))

(assert (not b!364548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!72117 () Bool)

(assert (=> d!72117 (= (validKeyInArray!0 (select (arr!9844 a!4289) i!1472)) (and (not (= (select (arr!9844 a!4289) i!1472) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9844 a!4289) i!1472) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364548 d!72117))

(declare-fun d!72119 () Bool)

(assert (=> d!72119 (= (validKeyInArray!0 k!2974) (and (not (= k!2974 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2974 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364547 d!72119))

(declare-fun d!72121 () Bool)

(assert (=> d!72121 (= (array_inv!7282 a!4289) (bvsge (size!10196 a!4289) #b00000000000000000000000000000000))))

(assert (=> start!36494 d!72121))

(declare-fun b!364620 () Bool)

(declare-fun e!223205 () (_ BitVec 32))

(declare-fun e!223206 () (_ BitVec 32))

(assert (=> b!364620 (= e!223205 e!223206)))

(declare-fun c!53784 () Bool)

(assert (=> b!364620 (= c!53784 (validKeyInArray!0 (select (arr!9844 lt!168725) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364621 () Bool)

(declare-fun call!27253 () (_ BitVec 32))

(assert (=> b!364621 (= e!223206 call!27253)))

(declare-fun bm!27250 () Bool)

(assert (=> bm!27250 (= call!27253 (arrayCountValidKeys!0 lt!168725 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364622 () Bool)

(assert (=> b!364622 (= e!223205 #b00000000000000000000000000000000)))

(declare-fun b!364623 () Bool)

(assert (=> b!364623 (= e!223206 (bvadd #b00000000000000000000000000000001 call!27253))))

(declare-fun d!72123 () Bool)

(declare-fun lt!168800 () (_ BitVec 32))

(assert (=> d!72123 (and (bvsge lt!168800 #b00000000000000000000000000000000) (bvsle lt!168800 (bvsub (size!10196 lt!168725) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72123 (= lt!168800 e!223205)))

(declare-fun c!53783 () Bool)

(assert (=> d!72123 (= c!53783 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72123 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10196 lt!168725)))))

(assert (=> d!72123 (= (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168800)))

(assert (= (and d!72123 c!53783) b!364622))

(assert (= (and d!72123 (not c!53783)) b!364620))

(assert (= (and b!364620 c!53784) b!364623))

(assert (= (and b!364620 (not c!53784)) b!364621))

(assert (= (or b!364623 b!364621) bm!27250))

(declare-fun m!362379 () Bool)

(assert (=> b!364620 m!362379))

(assert (=> b!364620 m!362379))

(declare-fun m!362381 () Bool)

(assert (=> b!364620 m!362381))

(declare-fun m!362383 () Bool)

(assert (=> bm!27250 m!362383))

(assert (=> b!364546 d!72123))

(declare-fun b!364624 () Bool)

(declare-fun e!223207 () (_ BitVec 32))

(declare-fun e!223208 () (_ BitVec 32))

(assert (=> b!364624 (= e!223207 e!223208)))

(declare-fun c!53786 () Bool)

(assert (=> b!364624 (= c!53786 (validKeyInArray!0 (select (arr!9844 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364625 () Bool)

(declare-fun call!27254 () (_ BitVec 32))

(assert (=> b!364625 (= e!223208 call!27254)))

(declare-fun bm!27251 () Bool)

(assert (=> bm!27251 (= call!27254 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364626 () Bool)

(assert (=> b!364626 (= e!223207 #b00000000000000000000000000000000)))

(declare-fun b!364627 () Bool)

(assert (=> b!364627 (= e!223208 (bvadd #b00000000000000000000000000000001 call!27254))))

(declare-fun d!72125 () Bool)

(declare-fun lt!168801 () (_ BitVec 32))

(assert (=> d!72125 (and (bvsge lt!168801 #b00000000000000000000000000000000) (bvsle lt!168801 (bvsub (size!10196 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72125 (= lt!168801 e!223207)))

(declare-fun c!53785 () Bool)

(assert (=> d!72125 (= c!53785 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72125 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10196 a!4289)))))

(assert (=> d!72125 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168801)))

(assert (= (and d!72125 c!53785) b!364626))

(assert (= (and d!72125 (not c!53785)) b!364624))

(assert (= (and b!364624 c!53786) b!364627))

(assert (= (and b!364624 (not c!53786)) b!364625))

(assert (= (or b!364627 b!364625) bm!27251))

(declare-fun m!362385 () Bool)

(assert (=> b!364624 m!362385))

(assert (=> b!364624 m!362385))

(declare-fun m!362387 () Bool)

(assert (=> b!364624 m!362387))

(declare-fun m!362389 () Bool)

(assert (=> bm!27251 m!362389))

(assert (=> b!364546 d!72125))

(declare-fun d!72127 () Bool)

(assert (=> d!72127 (= (bvadd (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 lt!168725 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168804 () Unit!11347)

(declare-fun choose!61 (array!20736 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11347)

(assert (=> d!72127 (= lt!168804 (choose!61 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72127 (and (bvslt (size!10196 lt!168725) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 lt!168725)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72127 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168804)))

(declare-fun bs!12518 () Bool)

(assert (= bs!12518 d!72127))

(assert (=> bs!12518 m!362279))

(assert (=> bs!12518 m!362273))

(assert (=> bs!12518 m!362285))

(declare-fun m!362391 () Bool)

(assert (=> bs!12518 m!362391))

(assert (=> b!364546 d!72127))

(declare-fun b!364628 () Bool)

(declare-fun e!223209 () (_ BitVec 32))

(declare-fun e!223210 () (_ BitVec 32))

(assert (=> b!364628 (= e!223209 e!223210)))

(declare-fun c!53788 () Bool)

(assert (=> b!364628 (= c!53788 (validKeyInArray!0 (select (arr!9844 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364629 () Bool)

(declare-fun call!27255 () (_ BitVec 32))

(assert (=> b!364629 (= e!223210 call!27255)))

(declare-fun bm!27252 () Bool)

(assert (=> bm!27252 (= call!27255 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364630 () Bool)

(assert (=> b!364630 (= e!223209 #b00000000000000000000000000000000)))

(declare-fun b!364631 () Bool)

(assert (=> b!364631 (= e!223210 (bvadd #b00000000000000000000000000000001 call!27255))))

(declare-fun d!72131 () Bool)

(declare-fun lt!168807 () (_ BitVec 32))

(assert (=> d!72131 (and (bvsge lt!168807 #b00000000000000000000000000000000) (bvsle lt!168807 (bvsub (size!10196 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72131 (= lt!168807 e!223209)))

(declare-fun c!53787 () Bool)

(assert (=> d!72131 (= c!53787 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72131 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 a!4289)))))

(assert (=> d!72131 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168807)))

(assert (= (and d!72131 c!53787) b!364630))

(assert (= (and d!72131 (not c!53787)) b!364628))

(assert (= (and b!364628 c!53788) b!364631))

(assert (= (and b!364628 (not c!53788)) b!364629))

(assert (= (or b!364631 b!364629) bm!27252))

(assert (=> b!364628 m!362385))

(assert (=> b!364628 m!362385))

(assert (=> b!364628 m!362387))

(declare-fun m!362393 () Bool)

(assert (=> bm!27252 m!362393))

(assert (=> b!364546 d!72131))

(declare-fun d!72133 () Bool)

(assert (=> d!72133 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168808 () Unit!11347)

(assert (=> d!72133 (= lt!168808 (choose!61 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72133 (and (bvslt (size!10196 a!4289) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 a!4289)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72133 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168808)))

(declare-fun bs!12519 () Bool)

(assert (= bs!12519 d!72133))

(assert (=> bs!12519 m!362289))

(assert (=> bs!12519 m!362275))

(assert (=> bs!12519 m!362287))

(declare-fun m!362395 () Bool)

(assert (=> bs!12519 m!362395))

(assert (=> b!364546 d!72133))

(declare-fun b!364640 () Bool)

(declare-fun e!223215 () (_ BitVec 32))

(declare-fun e!223216 () (_ BitVec 32))

(assert (=> b!364640 (= e!223215 e!223216)))

(declare-fun c!53794 () Bool)

(assert (=> b!364640 (= c!53794 (validKeyInArray!0 (select (arr!9844 lt!168725) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364641 () Bool)

(declare-fun call!27258 () (_ BitVec 32))

(assert (=> b!364641 (= e!223216 call!27258)))

(declare-fun bm!27255 () Bool)

(assert (=> bm!27255 (= call!27258 (arrayCountValidKeys!0 lt!168725 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364642 () Bool)

(assert (=> b!364642 (= e!223215 #b00000000000000000000000000000000)))

(declare-fun b!364643 () Bool)

(assert (=> b!364643 (= e!223216 (bvadd #b00000000000000000000000000000001 call!27258))))

(declare-fun d!72135 () Bool)

(declare-fun lt!168809 () (_ BitVec 32))

(assert (=> d!72135 (and (bvsge lt!168809 #b00000000000000000000000000000000) (bvsle lt!168809 (bvsub (size!10196 lt!168725) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72135 (= lt!168809 e!223215)))

(declare-fun c!53793 () Bool)

(assert (=> d!72135 (= c!53793 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72135 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 lt!168725)))))

(assert (=> d!72135 (= (arrayCountValidKeys!0 lt!168725 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168809)))

(assert (= (and d!72135 c!53793) b!364642))

(assert (= (and d!72135 (not c!53793)) b!364640))

(assert (= (and b!364640 c!53794) b!364643))

(assert (= (and b!364640 (not c!53794)) b!364641))

(assert (= (or b!364643 b!364641) bm!27255))

(assert (=> b!364640 m!362379))

(assert (=> b!364640 m!362379))

(assert (=> b!364640 m!362381))

(declare-fun m!362397 () Bool)

(assert (=> bm!27255 m!362397))

(assert (=> b!364546 d!72135))

(declare-fun b!364644 () Bool)

(declare-fun e!223217 () (_ BitVec 32))

(declare-fun e!223218 () (_ BitVec 32))

(assert (=> b!364644 (= e!223217 e!223218)))

(declare-fun c!53796 () Bool)

(assert (=> b!364644 (= c!53796 (validKeyInArray!0 (select (arr!9844 lt!168725) from!3650)))))

(declare-fun b!364645 () Bool)

(declare-fun call!27259 () (_ BitVec 32))

(assert (=> b!364645 (= e!223218 call!27259)))

(declare-fun bm!27256 () Bool)

(assert (=> bm!27256 (= call!27259 (arrayCountValidKeys!0 lt!168725 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364646 () Bool)

(assert (=> b!364646 (= e!223217 #b00000000000000000000000000000000)))

(declare-fun b!364647 () Bool)

(assert (=> b!364647 (= e!223218 (bvadd #b00000000000000000000000000000001 call!27259))))

(declare-fun d!72137 () Bool)

(declare-fun lt!168810 () (_ BitVec 32))

(assert (=> d!72137 (and (bvsge lt!168810 #b00000000000000000000000000000000) (bvsle lt!168810 (bvsub (size!10196 lt!168725) from!3650)))))

(assert (=> d!72137 (= lt!168810 e!223217)))

(declare-fun c!53795 () Bool)

(assert (=> d!72137 (= c!53795 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72137 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 lt!168725)))))

(assert (=> d!72137 (= (arrayCountValidKeys!0 lt!168725 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168810)))

(assert (= (and d!72137 c!53795) b!364646))

(assert (= (and d!72137 (not c!53795)) b!364644))

(assert (= (and b!364644 c!53796) b!364647))

(assert (= (and b!364644 (not c!53796)) b!364645))

(assert (= (or b!364647 b!364645) bm!27256))

(declare-fun m!362399 () Bool)

(assert (=> b!364644 m!362399))

(assert (=> b!364644 m!362399))

(declare-fun m!362401 () Bool)

(assert (=> b!364644 m!362401))

(declare-fun m!362403 () Bool)

(assert (=> bm!27256 m!362403))

(assert (=> b!364549 d!72137))

(declare-fun b!364648 () Bool)

(declare-fun e!223219 () (_ BitVec 32))

(declare-fun e!223220 () (_ BitVec 32))

(assert (=> b!364648 (= e!223219 e!223220)))

(declare-fun c!53798 () Bool)

(assert (=> b!364648 (= c!53798 (validKeyInArray!0 (select (arr!9844 a!4289) from!3650)))))

(declare-fun b!364649 () Bool)

(declare-fun call!27260 () (_ BitVec 32))

(assert (=> b!364649 (= e!223220 call!27260)))

(declare-fun bm!27257 () Bool)

(assert (=> bm!27257 (= call!27260 (arrayCountValidKeys!0 a!4289 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364650 () Bool)

(assert (=> b!364650 (= e!223219 #b00000000000000000000000000000000)))

(declare-fun b!364651 () Bool)

(assert (=> b!364651 (= e!223220 (bvadd #b00000000000000000000000000000001 call!27260))))

(declare-fun d!72139 () Bool)

(declare-fun lt!168811 () (_ BitVec 32))

(assert (=> d!72139 (and (bvsge lt!168811 #b00000000000000000000000000000000) (bvsle lt!168811 (bvsub (size!10196 a!4289) from!3650)))))

(assert (=> d!72139 (= lt!168811 e!223219)))

(declare-fun c!53797 () Bool)

(assert (=> d!72139 (= c!53797 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72139 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10196 a!4289)))))

(assert (=> d!72139 (= (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168811)))

(assert (= (and d!72139 c!53797) b!364650))

(assert (= (and d!72139 (not c!53797)) b!364648))

(assert (= (and b!364648 c!53798) b!364651))

(assert (= (and b!364648 (not c!53798)) b!364649))

(assert (= (or b!364651 b!364649) bm!27257))

(declare-fun m!362405 () Bool)

(assert (=> b!364648 m!362405))

(assert (=> b!364648 m!362405))

(declare-fun m!362407 () Bool)

(assert (=> b!364648 m!362407))

(declare-fun m!362409 () Bool)

(assert (=> bm!27257 m!362409))

(assert (=> b!364549 d!72139))

(push 1)

(assert (not b!364644))

(assert (not bm!27257))

(assert (not bm!27251))

(assert (not b!364648))

(assert (not b!364624))

(assert (not b!364640))

(assert (not d!72133))

(assert (not bm!27250))

(assert (not b!364628))

(assert (not b!364620))

(assert (not d!72127))

(assert (not bm!27255))

(assert (not bm!27252))

(assert (not bm!27256))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

