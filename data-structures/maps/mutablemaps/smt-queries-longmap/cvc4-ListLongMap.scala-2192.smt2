; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36498 () Bool)

(assert start!36498)

(declare-fun b!364575 () Bool)

(declare-fun res!203886 () Bool)

(declare-fun e!223182 () Bool)

(assert (=> b!364575 (=> (not res!203886) (not e!223182))))

(declare-fun k!2974 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!364575 (= res!203886 (validKeyInArray!0 k!2974))))

(declare-fun b!364576 () Bool)

(declare-fun res!203889 () Bool)

(assert (=> b!364576 (=> (not res!203889) (not e!223182))))

(declare-datatypes ((array!20740 0))(
  ( (array!20741 (arr!9846 (Array (_ BitVec 32) (_ BitVec 64))) (size!10198 (_ BitVec 32))) )
))
(declare-fun a!4289 () array!20740)

(declare-fun i!1472 () (_ BitVec 32))

(assert (=> b!364576 (= res!203889 (not (validKeyInArray!0 (select (arr!9846 a!4289) i!1472))))))

(declare-fun b!364577 () Bool)

(declare-fun res!203888 () Bool)

(assert (=> b!364577 (=> (not res!203888) (not e!223182))))

(declare-fun from!3650 () (_ BitVec 32))

(assert (=> b!364577 (= res!203888 (and (bvslt (size!10198 a!4289) #b01111111111111111111111111111111) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle from!3650 (size!10198 a!4289)) (bvsge i!1472 from!3650)))))

(declare-fun lt!168779 () (_ BitVec 32))

(declare-fun b!364578 () Bool)

(declare-fun lt!168785 () (_ BitVec 32))

(declare-fun e!223184 () Bool)

(assert (=> b!364578 (= e!223184 (not (or (bvsgt (bvsub from!3650 #b00000000000000000000000000000001) (size!10198 a!4289)) (bvslt i!1472 (bvsub from!3650 #b00000000000000000000000000000001)) (= lt!168779 (bvadd #b00000000000000000000000000000001 lt!168785)))))))

(declare-fun lt!168781 () (_ BitVec 32))

(declare-fun lt!168782 () (_ BitVec 32))

(assert (=> b!364578 (= (bvadd lt!168781 lt!168782) lt!168779)))

(declare-fun lt!168778 () array!20740)

(declare-fun arrayCountValidKeys!0 (array!20740 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!364578 (= lt!168779 (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364578 (= lt!168781 (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-datatypes ((Unit!11351 0))(
  ( (Unit!11352) )
))
(declare-fun lt!168783 () Unit!11351)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!20740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11351)

(assert (=> b!364578 (= lt!168783 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun lt!168777 () (_ BitVec 32))

(declare-fun lt!168784 () (_ BitVec 32))

(assert (=> b!364578 (= (bvadd lt!168777 lt!168784) lt!168785)))

(assert (=> b!364578 (= lt!168785 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364578 (= lt!168777 (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(declare-fun lt!168780 () Unit!11351)

(assert (=> b!364578 (= lt!168780 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(declare-fun res!203887 () Bool)

(assert (=> start!36498 (=> (not res!203887) (not e!223182))))

(assert (=> start!36498 (= res!203887 (and (bvsge i!1472 #b00000000000000000000000000000000) (bvslt i!1472 (size!10198 a!4289))))))

(assert (=> start!36498 e!223182))

(assert (=> start!36498 true))

(declare-fun array_inv!7284 (array!20740) Bool)

(assert (=> start!36498 (array_inv!7284 a!4289)))

(declare-fun b!364579 () Bool)

(assert (=> b!364579 (= e!223182 e!223184)))

(declare-fun res!203890 () Bool)

(assert (=> b!364579 (=> (not res!203890) (not e!223184))))

(assert (=> b!364579 (= res!203890 (and (= lt!168782 (bvadd #b00000000000000000000000000000001 lt!168784)) (bvsgt from!3650 #b00000000000000000000000000000000)))))

(assert (=> b!364579 (= lt!168782 (arrayCountValidKeys!0 lt!168778 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364579 (= lt!168784 (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> b!364579 (= lt!168778 (array!20741 (store (arr!9846 a!4289) i!1472 k!2974) (size!10198 a!4289)))))

(assert (= (and start!36498 res!203887) b!364576))

(assert (= (and b!364576 res!203889) b!364575))

(assert (= (and b!364575 res!203886) b!364577))

(assert (= (and b!364577 res!203888) b!364579))

(assert (= (and b!364579 res!203890) b!364578))

(declare-fun m!362321 () Bool)

(assert (=> b!364575 m!362321))

(declare-fun m!362323 () Bool)

(assert (=> b!364576 m!362323))

(assert (=> b!364576 m!362323))

(declare-fun m!362325 () Bool)

(assert (=> b!364576 m!362325))

(declare-fun m!362327 () Bool)

(assert (=> b!364578 m!362327))

(declare-fun m!362329 () Bool)

(assert (=> b!364578 m!362329))

(declare-fun m!362331 () Bool)

(assert (=> b!364578 m!362331))

(declare-fun m!362333 () Bool)

(assert (=> b!364578 m!362333))

(declare-fun m!362335 () Bool)

(assert (=> b!364578 m!362335))

(declare-fun m!362337 () Bool)

(assert (=> b!364578 m!362337))

(declare-fun m!362339 () Bool)

(assert (=> b!364579 m!362339))

(declare-fun m!362341 () Bool)

(assert (=> b!364579 m!362341))

(declare-fun m!362343 () Bool)

(assert (=> b!364579 m!362343))

(declare-fun m!362345 () Bool)

(assert (=> start!36498 m!362345))

(push 1)

(assert (not start!36498))

(assert (not b!364575))

(assert (not b!364578))

(assert (not b!364579))

(assert (not b!364576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!27258 () Bool)

(declare-fun call!27261 () (_ BitVec 32))

(assert (=> bm!27258 (= call!27261 (arrayCountValidKeys!0 lt!168778 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364652 () Bool)

(declare-fun e!223221 () (_ BitVec 32))

(declare-fun e!223222 () (_ BitVec 32))

(assert (=> b!364652 (= e!223221 e!223222)))

(declare-fun c!53800 () Bool)

(assert (=> b!364652 (= c!53800 (validKeyInArray!0 (select (arr!9846 lt!168778) from!3650)))))

(declare-fun b!364654 () Bool)

(assert (=> b!364654 (= e!223222 (bvadd #b00000000000000000000000000000001 call!27261))))

(declare-fun b!364655 () Bool)

(assert (=> b!364655 (= e!223221 #b00000000000000000000000000000000)))

(declare-fun b!364653 () Bool)

(assert (=> b!364653 (= e!223222 call!27261)))

(declare-fun d!72129 () Bool)

(declare-fun lt!168812 () (_ BitVec 32))

(assert (=> d!72129 (and (bvsge lt!168812 #b00000000000000000000000000000000) (bvsle lt!168812 (bvsub (size!10198 lt!168778) from!3650)))))

(assert (=> d!72129 (= lt!168812 e!223221)))

(declare-fun c!53799 () Bool)

(assert (=> d!72129 (= c!53799 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72129 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 lt!168778)))))

(assert (=> d!72129 (= (arrayCountValidKeys!0 lt!168778 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168812)))

(assert (= (and d!72129 c!53799) b!364655))

(assert (= (and d!72129 (not c!53799)) b!364652))

(assert (= (and b!364652 c!53800) b!364654))

(assert (= (and b!364652 (not c!53800)) b!364653))

(assert (= (or b!364654 b!364653) bm!27258))

(declare-fun m!362411 () Bool)

(assert (=> bm!27258 m!362411))

(declare-fun m!362413 () Bool)

(assert (=> b!364652 m!362413))

(assert (=> b!364652 m!362413))

(declare-fun m!362415 () Bool)

(assert (=> b!364652 m!362415))

(assert (=> b!364579 d!72129))

(declare-fun call!27262 () (_ BitVec 32))

(declare-fun bm!27259 () Bool)

(assert (=> bm!27259 (= call!27262 (arrayCountValidKeys!0 a!4289 (bvadd from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364656 () Bool)

(declare-fun e!223223 () (_ BitVec 32))

(declare-fun e!223224 () (_ BitVec 32))

(assert (=> b!364656 (= e!223223 e!223224)))

(declare-fun c!53802 () Bool)

(assert (=> b!364656 (= c!53802 (validKeyInArray!0 (select (arr!9846 a!4289) from!3650)))))

(declare-fun b!364658 () Bool)

(assert (=> b!364658 (= e!223224 (bvadd #b00000000000000000000000000000001 call!27262))))

(declare-fun b!364659 () Bool)

(assert (=> b!364659 (= e!223223 #b00000000000000000000000000000000)))

(declare-fun b!364657 () Bool)

(assert (=> b!364657 (= e!223224 call!27262)))

(declare-fun d!72141 () Bool)

(declare-fun lt!168813 () (_ BitVec 32))

(assert (=> d!72141 (and (bvsge lt!168813 #b00000000000000000000000000000000) (bvsle lt!168813 (bvsub (size!10198 a!4289) from!3650)))))

(assert (=> d!72141 (= lt!168813 e!223223)))

(declare-fun c!53801 () Bool)

(assert (=> d!72141 (= c!53801 (bvsge from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72141 (and (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge from!3650 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 a!4289)))))

(assert (=> d!72141 (= (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472)) lt!168813)))

(assert (= (and d!72141 c!53801) b!364659))

(assert (= (and d!72141 (not c!53801)) b!364656))

(assert (= (and b!364656 c!53802) b!364658))

(assert (= (and b!364656 (not c!53802)) b!364657))

(assert (= (or b!364658 b!364657) bm!27259))

(declare-fun m!362417 () Bool)

(assert (=> bm!27259 m!362417))

(declare-fun m!362419 () Bool)

(assert (=> b!364656 m!362419))

(assert (=> b!364656 m!362419))

(declare-fun m!362421 () Bool)

(assert (=> b!364656 m!362421))

(assert (=> b!364579 d!72141))

(declare-fun d!72143 () Bool)

(assert (=> d!72143 (= (array_inv!7284 a!4289) (bvsge (size!10198 a!4289) #b00000000000000000000000000000000))))

(assert (=> start!36498 d!72143))

(declare-fun bm!27260 () Bool)

(declare-fun call!27263 () (_ BitVec 32))

(assert (=> bm!27260 (= call!27263 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364660 () Bool)

(declare-fun e!223225 () (_ BitVec 32))

(declare-fun e!223226 () (_ BitVec 32))

(assert (=> b!364660 (= e!223225 e!223226)))

(declare-fun c!53804 () Bool)

(assert (=> b!364660 (= c!53804 (validKeyInArray!0 (select (arr!9846 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364662 () Bool)

(assert (=> b!364662 (= e!223226 (bvadd #b00000000000000000000000000000001 call!27263))))

(declare-fun b!364663 () Bool)

(assert (=> b!364663 (= e!223225 #b00000000000000000000000000000000)))

(declare-fun b!364661 () Bool)

(assert (=> b!364661 (= e!223226 call!27263)))

(declare-fun d!72145 () Bool)

(declare-fun lt!168814 () (_ BitVec 32))

(assert (=> d!72145 (and (bvsge lt!168814 #b00000000000000000000000000000000) (bvsle lt!168814 (bvsub (size!10198 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72145 (= lt!168814 e!223225)))

(declare-fun c!53803 () Bool)

(assert (=> d!72145 (= c!53803 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72145 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10198 a!4289)))))

(assert (=> d!72145 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168814)))

(assert (= (and d!72145 c!53803) b!364663))

(assert (= (and d!72145 (not c!53803)) b!364660))

(assert (= (and b!364660 c!53804) b!364662))

(assert (= (and b!364660 (not c!53804)) b!364661))

(assert (= (or b!364662 b!364661) bm!27260))

(declare-fun m!362423 () Bool)

(assert (=> bm!27260 m!362423))

(declare-fun m!362425 () Bool)

(assert (=> b!364660 m!362425))

(assert (=> b!364660 m!362425))

(declare-fun m!362427 () Bool)

(assert (=> b!364660 m!362427))

(assert (=> b!364578 d!72145))

(declare-fun bm!27261 () Bool)

(declare-fun call!27264 () (_ BitVec 32))

(assert (=> bm!27261 (= call!27264 (arrayCountValidKeys!0 lt!168778 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364664 () Bool)

(declare-fun e!223227 () (_ BitVec 32))

(declare-fun e!223228 () (_ BitVec 32))

(assert (=> b!364664 (= e!223227 e!223228)))

(declare-fun c!53806 () Bool)

(assert (=> b!364664 (= c!53806 (validKeyInArray!0 (select (arr!9846 lt!168778) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364666 () Bool)

(assert (=> b!364666 (= e!223228 (bvadd #b00000000000000000000000000000001 call!27264))))

(declare-fun b!364667 () Bool)

(assert (=> b!364667 (= e!223227 #b00000000000000000000000000000000)))

(declare-fun b!364665 () Bool)

(assert (=> b!364665 (= e!223228 call!27264)))

(declare-fun d!72147 () Bool)

(declare-fun lt!168815 () (_ BitVec 32))

(assert (=> d!72147 (and (bvsge lt!168815 #b00000000000000000000000000000000) (bvsle lt!168815 (bvsub (size!10198 lt!168778) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72147 (= lt!168815 e!223227)))

(declare-fun c!53805 () Bool)

(assert (=> d!72147 (= c!53805 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72147 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 lt!168778)))))

(assert (=> d!72147 (= (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168815)))

(assert (= (and d!72147 c!53805) b!364667))

(assert (= (and d!72147 (not c!53805)) b!364664))

(assert (= (and b!364664 c!53806) b!364666))

(assert (= (and b!364664 (not c!53806)) b!364665))

(assert (= (or b!364666 b!364665) bm!27261))

(declare-fun m!362429 () Bool)

(assert (=> bm!27261 m!362429))

(declare-fun m!362431 () Bool)

(assert (=> b!364664 m!362431))

(assert (=> b!364664 m!362431))

(declare-fun m!362433 () Bool)

(assert (=> b!364664 m!362433))

(assert (=> b!364578 d!72147))

(declare-fun bm!27262 () Bool)

(declare-fun call!27265 () (_ BitVec 32))

(assert (=> bm!27262 (= call!27265 (arrayCountValidKeys!0 lt!168778 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) from!3650))))

(declare-fun b!364668 () Bool)

(declare-fun e!223229 () (_ BitVec 32))

(declare-fun e!223230 () (_ BitVec 32))

(assert (=> b!364668 (= e!223229 e!223230)))

(declare-fun c!53808 () Bool)

(assert (=> b!364668 (= c!53808 (validKeyInArray!0 (select (arr!9846 lt!168778) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364670 () Bool)

(assert (=> b!364670 (= e!223230 (bvadd #b00000000000000000000000000000001 call!27265))))

(declare-fun b!364671 () Bool)

(assert (=> b!364671 (= e!223229 #b00000000000000000000000000000000)))

(declare-fun b!364669 () Bool)

(assert (=> b!364669 (= e!223230 call!27265)))

(declare-fun d!72149 () Bool)

(declare-fun lt!168816 () (_ BitVec 32))

(assert (=> d!72149 (and (bvsge lt!168816 #b00000000000000000000000000000000) (bvsle lt!168816 (bvsub (size!10198 lt!168778) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72149 (= lt!168816 e!223229)))

(declare-fun c!53807 () Bool)

(assert (=> d!72149 (= c!53807 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) from!3650))))

(assert (=> d!72149 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle from!3650 (size!10198 lt!168778)))))

(assert (=> d!72149 (= (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) lt!168816)))

(assert (= (and d!72149 c!53807) b!364671))

(assert (= (and d!72149 (not c!53807)) b!364668))

(assert (= (and b!364668 c!53808) b!364670))

(assert (= (and b!364668 (not c!53808)) b!364669))

(assert (= (or b!364670 b!364669) bm!27262))

(declare-fun m!362435 () Bool)

(assert (=> bm!27262 m!362435))

(assert (=> b!364668 m!362431))

(assert (=> b!364668 m!362431))

(assert (=> b!364668 m!362433))

(assert (=> b!364578 d!72149))

(declare-fun d!72151 () Bool)

(assert (=> d!72151 (= (bvadd (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 lt!168778 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168819 () Unit!11351)

(declare-fun choose!61 (array!20740 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!11351)

(assert (=> d!72151 (= lt!168819 (choose!61 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72151 (and (bvslt (size!10198 lt!168778) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 lt!168778)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72151 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!168778 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168819)))

(declare-fun bs!12520 () Bool)

(assert (= bs!12520 d!72151))

(assert (=> bs!12520 m!362337))

(assert (=> bs!12520 m!362339))

(assert (=> bs!12520 m!362331))

(declare-fun m!362437 () Bool)

(assert (=> bs!12520 m!362437))

(assert (=> b!364578 d!72151))

(declare-fun bm!27263 () Bool)

(declare-fun call!27266 () (_ BitVec 32))

(assert (=> bm!27263 (= call!27266 (arrayCountValidKeys!0 a!4289 (bvadd (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun b!364672 () Bool)

(declare-fun e!223231 () (_ BitVec 32))

(declare-fun e!223232 () (_ BitVec 32))

(assert (=> b!364672 (= e!223231 e!223232)))

(declare-fun c!53810 () Bool)

(assert (=> b!364672 (= c!53810 (validKeyInArray!0 (select (arr!9846 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(declare-fun b!364674 () Bool)

(assert (=> b!364674 (= e!223232 (bvadd #b00000000000000000000000000000001 call!27266))))

(declare-fun b!364675 () Bool)

(assert (=> b!364675 (= e!223231 #b00000000000000000000000000000000)))

(declare-fun b!364673 () Bool)

(assert (=> b!364673 (= e!223232 call!27266)))

(declare-fun d!72153 () Bool)

(declare-fun lt!168820 () (_ BitVec 32))

(assert (=> d!72153 (and (bvsge lt!168820 #b00000000000000000000000000000000) (bvsle lt!168820 (bvsub (size!10198 a!4289) (bvsub from!3650 #b00000000000000000000000000000001))))))

(assert (=> d!72153 (= lt!168820 e!223231)))

(declare-fun c!53809 () Bool)

(assert (=> d!72153 (= c!53809 (bvsge (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72153 (and (bvsle (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 a!4289)))))

(assert (=> d!72153 (= (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)) lt!168820)))

(assert (= (and d!72153 c!53809) b!364675))

(assert (= (and d!72153 (not c!53809)) b!364672))

(assert (= (and b!364672 c!53810) b!364674))

(assert (= (and b!364672 (not c!53810)) b!364673))

(assert (= (or b!364674 b!364673) bm!27263))

(declare-fun m!362439 () Bool)

(assert (=> bm!27263 m!362439))

(assert (=> b!364672 m!362425))

(assert (=> b!364672 m!362425))

(assert (=> b!364672 m!362427))

(assert (=> b!364578 d!72153))

(declare-fun d!72155 () Bool)

(assert (=> d!72155 (= (bvadd (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) from!3650) (arrayCountValidKeys!0 a!4289 from!3650 (bvadd #b00000000000000000000000000000001 i!1472))) (arrayCountValidKeys!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472)))))

(declare-fun lt!168821 () Unit!11351)

(assert (=> d!72155 (= lt!168821 (choose!61 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650))))

(assert (=> d!72155 (and (bvslt (size!10198 a!4289) #b01111111111111111111111111111111) (bvsge (bvsub from!3650 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 i!1472) (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle (bvadd #b00000000000000000000000000000001 i!1472) (size!10198 a!4289)) (bvsge from!3650 (bvsub from!3650 #b00000000000000000000000000000001)) (bvsle from!3650 (bvadd #b00000000000000000000000000000001 i!1472)))))

(assert (=> d!72155 (= (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4289 (bvsub from!3650 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1472) from!3650) lt!168821)))

(declare-fun bs!12521 () Bool)

(assert (= bs!12521 d!72155))

(assert (=> bs!12521 m!362335))

(assert (=> bs!12521 m!362341))

(assert (=> bs!12521 m!362333))

(declare-fun m!362441 () Bool)

(assert (=> bs!12521 m!362441))

(assert (=> b!364578 d!72155))

(declare-fun d!72157 () Bool)

(assert (=> d!72157 (= (validKeyInArray!0 (select (arr!9846 a!4289) i!1472)) (and (not (= (select (arr!9846 a!4289) i!1472) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9846 a!4289) i!1472) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364576 d!72157))

(declare-fun d!72159 () Bool)

(assert (=> d!72159 (= (validKeyInArray!0 k!2974) (and (not (= k!2974 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2974 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!364575 d!72159))

(push 1)

(assert (not d!72151))

(assert (not b!364664))

(assert (not bm!27259))

(assert (not bm!27263))

(assert (not b!364656))

(assert (not bm!27258))

(assert (not d!72155))

(assert (not bm!27260))

(assert (not b!364660))

(assert (not bm!27261))

(assert (not b!364672))

(assert (not bm!27262))

(assert (not b!364668))

(assert (not b!364652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

