; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36496 () Bool)

(assert start!36496)

(declare-fun b!364560 () Bool)

(declare-fun res!203871 () Bool)

(declare-fun e!223173 () Bool)

(assert (=> b!364560 (=> (not res!203871) (not e!223173))))

(declare-fun k0!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364560 (= res!203871 (validKeyInArray!0 k0!2974))))

(declare-fun res!203875 () Bool)

(assert (=> start!36496 (=> (not res!203875) (not e!223173))))

(declare-fun i!1472 () (_ BitVec 32))

(declare-datatypes ((array!20738 0))(
  ( (array!20739 (arr!9845 (Array (_ BitVec 32) (_ BitVec 64))) (size!10197 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20738)

(assert (=> start!36496 (= res!203875 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10197 a!4289))))))

(assert (=> start!36496 e!223173))

(assert (=> start!36496 true))

(declare-fun array_inv!7283 (array!20738) Bool)

(assert (=> start!36496 (array_inv!7283 a!4289)))

(declare-fun b!364561 () Bool)

(declare-fun e!223175 () Bool)

(assert (=> b!364561 (= e!223173 e!223175)))

(declare-fun res!203874 () Bool)

(assert (=> b!364561 (=> (not res!203874) (not e!223175))))

(declare-fun lt!168758 () (_ BitVec 32))

(declare-fun lt!168752 () (_ BitVec 32))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364561 (= res!203874 (and (= lt!168752 (bvadd #b00000000000000000000000000000001 lt!168758)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(declare-fun lt!168755 () array!20738)

(declare-fun arrayCountValidKeys!0 (array!20738 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364561 (= lt!168752 (arrayCountValidKeys!0 lt!168755 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364561 (= lt!168758 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364561 (= lt!168755 (array!20739 (store (arr!9845 a!4289) i!1472 k0!2974) (size!10197 a!4289)))))

(declare-fun b!364562 () Bool)

(declare-fun lt!168750 () (_ BitVec 32))

(declare-fun lt!168756 () (_ BitVec 32))

(assert (=> b!364562 (= e!223175 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10197 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (= lt!168756 (bvadd #b00000000000000000000000000000001 lt!168750)))))))

(declare-fun lt!168751 () (_ BitVec 32))

(assert (=> b!364562 (= (bvadd lt!168751 lt!168752) lt!168756)))

(assert (=> b!364562 (= lt!168756 (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364562 (= lt!168751 (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11349 0))(
  ( (Unit!11350) )
))
(declare-fun lt!168757 () Unit!11349)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11349)

(assert (=> b!364562 (= lt!168757 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168754 () (_ BitVec 32))

(assert (=> b!364562 (= (bvadd lt!168754 lt!168758) lt!168750)))

(assert (=> b!364562 (= lt!168750 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364562 (= lt!168754 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168753 () Unit!11349)

(assert (=> b!364562 (= lt!168753 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun b!364563 () Bool)

(declare-fun res!203873 () Bool)

(assert (=> b!364563 (=> (not res!203873) (not e!223173))))

(assert (=> b!364563 (= res!203873 (not (validKeyInArray!0 (select (arr!9845 a!4289) i!1472))))))

(declare-fun b!364564 () Bool)

(declare-fun res!203872 () Bool)

(assert (=> b!364564 (=> (not res!203872) (not e!223173))))

(assert (=> b!364564 (= res!203872 (and (bvslt (size!10197 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10197 a!4289)) (bvsge i!1472 from!3650)))))

(assert (= (and start!36496 res!203875) b!364563))

(assert (= (and b!364563 res!203873) b!364560))

(assert (= (and b!364560 res!203871) b!364564))

(assert (= (and b!364564 res!203872) b!364561))

(assert (= (and b!364561 res!203874) b!364562))

(declare-fun m!362295 () Bool)

(assert (=> b!364563 m!362295))

(assert (=> b!364563 m!362295))

(declare-fun m!362297 () Bool)

(assert (=> b!364563 m!362297))

(declare-fun m!362299 () Bool)

(assert (=> b!364562 m!362299))

(declare-fun m!362301 () Bool)

(assert (=> b!364562 m!362301))

(declare-fun m!362303 () Bool)

(assert (=> b!364562 m!362303))

(declare-fun m!362305 () Bool)

(assert (=> b!364562 m!362305))

(declare-fun m!362307 () Bool)

(assert (=> b!364562 m!362307))

(declare-fun m!362309 () Bool)

(assert (=> b!364562 m!362309))

(declare-fun m!362311 () Bool)

(assert (=> b!364561 m!362311))

(declare-fun m!362313 () Bool)

(assert (=> b!364561 m!362313))

(declare-fun m!362315 () Bool)

(assert (=> b!364561 m!362315))

(declare-fun m!362317 () Bool)

(assert (=> b!364560 m!362317))

(declare-fun m!362319 () Bool)

(assert (=> start!36496 m!362319))

(check-sat (not b!364560) (not b!364562) (not b!364561) (not start!36496) (not b!364563))
(check-sat)
(get-model)

(declare-fun d!72095 () Bool)

(assert (=> d!72095 (= (validKeyInArray!0 (select (arr!9845 a!4289) i!1472)) (and (not (= (select (arr!9845 a!4289) i!1472) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9845 a!4289) i!1472) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364563 d!72095))

(declare-fun bm!27242 () Bool)

(declare-fun call!27245 () (_ BitVec 32))

(assert (=> bm!27242 (= call!27245 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364588 () Bool)

(declare-fun e!223189 () (_ BitVec 32))

(declare-fun e!223190 () (_ BitVec 32))

(assert (=> b!364588 (= e!223189 e!223190)))

(declare-fun c!53768 () Bool)

(assert (=> b!364588 (= c!53768 (validKeyInArray!0 (select (arr!9845 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364589 () Bool)

(assert (=> b!364589 (= e!223189 #b00000000000000000000000000000000)))

(declare-fun d!72097 () Bool)

(declare-fun lt!168788 () (_ BitVec 32))

(assert (=> d!72097 (and (bvsge lt!168788 #b00000000000000000000000000000000) (bvsle lt!168788 (bvsub (size!10197 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72097 (= lt!168788 e!223189)))

(declare-fun c!53767 () Bool)

(assert (=> d!72097 (= c!53767 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72097 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10197 a!4289)))))

(assert (=> d!72097 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168788)))

(declare-fun b!364590 () Bool)

(assert (=> b!364590 (= e!223190 (bvadd #b00000000000000000000000000000001 call!27245))))

(declare-fun b!364591 () Bool)

(assert (=> b!364591 (= e!223190 call!27245)))

(assert (= (and d!72097 c!53767) b!364589))

(assert (= (and d!72097 (not c!53767)) b!364588))

(assert (= (and b!364588 c!53768) b!364590))

(assert (= (and b!364588 (not c!53768)) b!364591))

(assert (= (or b!364590 b!364591) bm!27242))

(declare-fun m!362347 () Bool)

(assert (=> bm!27242 m!362347))

(declare-fun m!362349 () Bool)

(assert (=> b!364588 m!362349))

(assert (=> b!364588 m!362349))

(declare-fun m!362351 () Bool)

(assert (=> b!364588 m!362351))

(assert (=> b!364562 d!72097))

(declare-fun call!27246 () (_ BitVec 32))

(declare-fun bm!27243 () Bool)

(assert (=> bm!27243 (= call!27246 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364592 () Bool)

(declare-fun e!223191 () (_ BitVec 32))

(declare-fun e!223192 () (_ BitVec 32))

(assert (=> b!364592 (= e!223191 e!223192)))

(declare-fun c!53770 () Bool)

(assert (=> b!364592 (= c!53770 (validKeyInArray!0 (select (arr!9845 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364593 () Bool)

(assert (=> b!364593 (= e!223191 #b00000000000000000000000000000000)))

(declare-fun d!72099 () Bool)

(declare-fun lt!168789 () (_ BitVec 32))

(assert (=> d!72099 (and (bvsge lt!168789 #b00000000000000000000000000000000) (bvsle lt!168789 (bvsub (size!10197 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72099 (= lt!168789 e!223191)))

(declare-fun c!53769 () Bool)

(assert (=> d!72099 (= c!53769 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72099 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 a!4289)))))

(assert (=> d!72099 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168789)))

(declare-fun b!364594 () Bool)

(assert (=> b!364594 (= e!223192 (bvadd #b00000000000000000000000000000001 call!27246))))

(declare-fun b!364595 () Bool)

(assert (=> b!364595 (= e!223192 call!27246)))

(assert (= (and d!72099 c!53769) b!364593))

(assert (= (and d!72099 (not c!53769)) b!364592))

(assert (= (and b!364592 c!53770) b!364594))

(assert (= (and b!364592 (not c!53770)) b!364595))

(assert (= (or b!364594 b!364595) bm!27243))

(declare-fun m!362353 () Bool)

(assert (=> bm!27243 m!362353))

(assert (=> b!364592 m!362349))

(assert (=> b!364592 m!362349))

(assert (=> b!364592 m!362351))

(assert (=> b!364562 d!72099))

(declare-fun bm!27244 () Bool)

(declare-fun call!27247 () (_ BitVec 32))

(assert (=> bm!27244 (= call!27247 (arrayCountValidKeys!0 lt!168755 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364596 () Bool)

(declare-fun e!223193 () (_ BitVec 32))

(declare-fun e!223194 () (_ BitVec 32))

(assert (=> b!364596 (= e!223193 e!223194)))

(declare-fun c!53772 () Bool)

(assert (=> b!364596 (= c!53772 (validKeyInArray!0 (select (arr!9845 lt!168755) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364597 () Bool)

(assert (=> b!364597 (= e!223193 #b00000000000000000000000000000000)))

(declare-fun d!72101 () Bool)

(declare-fun lt!168790 () (_ BitVec 32))

(assert (=> d!72101 (and (bvsge lt!168790 #b00000000000000000000000000000000) (bvsle lt!168790 (bvsub (size!10197 lt!168755) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72101 (= lt!168790 e!223193)))

(declare-fun c!53771 () Bool)

(assert (=> d!72101 (= c!53771 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72101 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10197 lt!168755)))))

(assert (=> d!72101 (= (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168790)))

(declare-fun b!364598 () Bool)

(assert (=> b!364598 (= e!223194 (bvadd #b00000000000000000000000000000001 call!27247))))

(declare-fun b!364599 () Bool)

(assert (=> b!364599 (= e!223194 call!27247)))

(assert (= (and d!72101 c!53771) b!364597))

(assert (= (and d!72101 (not c!53771)) b!364596))

(assert (= (and b!364596 c!53772) b!364598))

(assert (= (and b!364596 (not c!53772)) b!364599))

(assert (= (or b!364598 b!364599) bm!27244))

(declare-fun m!362355 () Bool)

(assert (=> bm!27244 m!362355))

(declare-fun m!362357 () Bool)

(assert (=> b!364596 m!362357))

(assert (=> b!364596 m!362357))

(declare-fun m!362359 () Bool)

(assert (=> b!364596 m!362359))

(assert (=> b!364562 d!72101))

(declare-fun d!72103 () Bool)

(assert (=> d!72103 (= (bvadd (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 lt!168755 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168793 () Unit!11349)

(declare-fun choose!61 (array!20738 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11349)

(assert (=> d!72103 (= lt!168793 (choose!61 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72103 (and (bvslt (size!10197 lt!168755) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 lt!168755)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72103 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168793)))

(declare-fun bs!12516 () Bool)

(assert (= bs!12516 d!72103))

(assert (=> bs!12516 m!362303))

(assert (=> bs!12516 m!362311))

(assert (=> bs!12516 m!362305))

(declare-fun m!362361 () Bool)

(assert (=> bs!12516 m!362361))

(assert (=> b!364562 d!72103))

(declare-fun bm!27245 () Bool)

(declare-fun call!27248 () (_ BitVec 32))

(assert (=> bm!27245 (= call!27248 (arrayCountValidKeys!0 lt!168755 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364600 () Bool)

(declare-fun e!223195 () (_ BitVec 32))

(declare-fun e!223196 () (_ BitVec 32))

(assert (=> b!364600 (= e!223195 e!223196)))

(declare-fun c!53774 () Bool)

(assert (=> b!364600 (= c!53774 (validKeyInArray!0 (select (arr!9845 lt!168755) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364601 () Bool)

(assert (=> b!364601 (= e!223195 #b00000000000000000000000000000000)))

(declare-fun d!72105 () Bool)

(declare-fun lt!168794 () (_ BitVec 32))

(assert (=> d!72105 (and (bvsge lt!168794 #b00000000000000000000000000000000) (bvsle lt!168794 (bvsub (size!10197 lt!168755) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72105 (= lt!168794 e!223195)))

(declare-fun c!53773 () Bool)

(assert (=> d!72105 (= c!53773 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72105 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 lt!168755)))))

(assert (=> d!72105 (= (arrayCountValidKeys!0 lt!168755 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168794)))

(declare-fun b!364602 () Bool)

(assert (=> b!364602 (= e!223196 (bvadd #b00000000000000000000000000000001 call!27248))))

(declare-fun b!364603 () Bool)

(assert (=> b!364603 (= e!223196 call!27248)))

(assert (= (and d!72105 c!53773) b!364601))

(assert (= (and d!72105 (not c!53773)) b!364600))

(assert (= (and b!364600 c!53774) b!364602))

(assert (= (and b!364600 (not c!53774)) b!364603))

(assert (= (or b!364602 b!364603) bm!27245))

(declare-fun m!362363 () Bool)

(assert (=> bm!27245 m!362363))

(assert (=> b!364600 m!362357))

(assert (=> b!364600 m!362357))

(assert (=> b!364600 m!362359))

(assert (=> b!364562 d!72105))

(declare-fun d!72107 () Bool)

(assert (=> d!72107 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168795 () Unit!11349)

(assert (=> d!72107 (= lt!168795 (choose!61 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72107 (and (bvslt (size!10197 a!4289) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 a!4289)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72107 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168795)))

(declare-fun bs!12517 () Bool)

(assert (= bs!12517 d!72107))

(assert (=> bs!12517 m!362309))

(assert (=> bs!12517 m!362313))

(assert (=> bs!12517 m!362307))

(declare-fun m!362365 () Bool)

(assert (=> bs!12517 m!362365))

(assert (=> b!364562 d!72107))

(declare-fun d!72109 () Bool)

(assert (=> d!72109 (= (array_inv!7283 a!4289) (bvsge (size!10197 a!4289) #b00000000000000000000000000000000))))

(assert (=> start!36496 d!72109))

(declare-fun bm!27246 () Bool)

(declare-fun call!27249 () (_ BitVec 32))

(assert (=> bm!27246 (= call!27249 (arrayCountValidKeys!0 lt!168755 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364604 () Bool)

(declare-fun e!223197 () (_ BitVec 32))

(declare-fun e!223198 () (_ BitVec 32))

(assert (=> b!364604 (= e!223197 e!223198)))

(declare-fun c!53776 () Bool)

(assert (=> b!364604 (= c!53776 (validKeyInArray!0 (select (arr!9845 lt!168755) from!3650)))))

(declare-fun b!364605 () Bool)

(assert (=> b!364605 (= e!223197 #b00000000000000000000000000000000)))

(declare-fun d!72111 () Bool)

(declare-fun lt!168796 () (_ BitVec 32))

(assert (=> d!72111 (and (bvsge lt!168796 #b00000000000000000000000000000000) (bvsle lt!168796 (bvsub (size!10197 lt!168755) from!3650)))))

(assert (=> d!72111 (= lt!168796 e!223197)))

(declare-fun c!53775 () Bool)

(assert (=> d!72111 (= c!53775 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72111 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 lt!168755)))))

(assert (=> d!72111 (= (arrayCountValidKeys!0 lt!168755 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168796)))

(declare-fun b!364606 () Bool)

(assert (=> b!364606 (= e!223198 (bvadd #b00000000000000000000000000000001 call!27249))))

(declare-fun b!364607 () Bool)

(assert (=> b!364607 (= e!223198 call!27249)))

(assert (= (and d!72111 c!53775) b!364605))

(assert (= (and d!72111 (not c!53775)) b!364604))

(assert (= (and b!364604 c!53776) b!364606))

(assert (= (and b!364604 (not c!53776)) b!364607))

(assert (= (or b!364606 b!364607) bm!27246))

(declare-fun m!362367 () Bool)

(assert (=> bm!27246 m!362367))

(declare-fun m!362369 () Bool)

(assert (=> b!364604 m!362369))

(assert (=> b!364604 m!362369))

(declare-fun m!362371 () Bool)

(assert (=> b!364604 m!362371))

(assert (=> b!364561 d!72111))

(declare-fun call!27250 () (_ BitVec 32))

(declare-fun bm!27247 () Bool)

(assert (=> bm!27247 (= call!27250 (arrayCountValidKeys!0 a!4289 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364608 () Bool)

(declare-fun e!223199 () (_ BitVec 32))

(declare-fun e!223200 () (_ BitVec 32))

(assert (=> b!364608 (= e!223199 e!223200)))

(declare-fun c!53778 () Bool)

(assert (=> b!364608 (= c!53778 (validKeyInArray!0 (select (arr!9845 a!4289) from!3650)))))

(declare-fun b!364609 () Bool)

(assert (=> b!364609 (= e!223199 #b00000000000000000000000000000000)))

(declare-fun d!72113 () Bool)

(declare-fun lt!168797 () (_ BitVec 32))

(assert (=> d!72113 (and (bvsge lt!168797 #b00000000000000000000000000000000) (bvsle lt!168797 (bvsub (size!10197 a!4289) from!3650)))))

(assert (=> d!72113 (= lt!168797 e!223199)))

(declare-fun c!53777 () Bool)

(assert (=> d!72113 (= c!53777 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72113 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10197 a!4289)))))

(assert (=> d!72113 (= (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168797)))

(declare-fun b!364610 () Bool)

(assert (=> b!364610 (= e!223200 (bvadd #b00000000000000000000000000000001 call!27250))))

(declare-fun b!364611 () Bool)

(assert (=> b!364611 (= e!223200 call!27250)))

(assert (= (and d!72113 c!53777) b!364609))

(assert (= (and d!72113 (not c!53777)) b!364608))

(assert (= (and b!364608 c!53778) b!364610))

(assert (= (and b!364608 (not c!53778)) b!364611))

(assert (= (or b!364610 b!364611) bm!27247))

(declare-fun m!362373 () Bool)

(assert (=> bm!27247 m!362373))

(declare-fun m!362375 () Bool)

(assert (=> b!364608 m!362375))

(assert (=> b!364608 m!362375))

(declare-fun m!362377 () Bool)

(assert (=> b!364608 m!362377))

(assert (=> b!364561 d!72113))

(declare-fun d!72115 () Bool)

(assert (=> d!72115 (= (validKeyInArray!0 k0!2974) (and (not (= k0!2974 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2974 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364560 d!72115))

(check-sat (not b!364604) (not d!72103) (not d!72107) (not bm!27243) (not b!364596) (not b!364592) (not b!364588) (not bm!27247) (not bm!27244) (not b!364608) (not bm!27245) (not bm!27242) (not bm!27246) (not b!364600))
(check-sat)
