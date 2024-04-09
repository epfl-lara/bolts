; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117534 () Bool)

(assert start!117534)

(declare-fun res!922564 () Bool)

(declare-fun e!782117 () Bool)

(assert (=> start!117534 (=> (not res!922564) (not e!782117))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-datatypes ((array!94001 0))(
  ( (array!94002 (arr!45390 (Array (_ BitVec 32) (_ BitVec 64))) (size!45941 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!94001)

(declare-fun to!135 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(assert (=> start!117534 (= res!922564 (and (bvslt (size!45941 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45941 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117534 e!782117))

(declare-fun array_inv!34335 (array!94001) Bool)

(assert (=> start!117534 (array_inv!34335 a!3961)))

(assert (=> start!117534 true))

(declare-fun b!1380219 () Bool)

(declare-fun e!782116 () Bool)

(declare-fun call!66161 () (_ BitVec 32))

(declare-fun call!66162 () (_ BitVec 32))

(assert (=> b!1380219 (= e!782116 (= call!66161 call!66162))))

(declare-fun b!1380220 () Bool)

(assert (=> b!1380220 (= e!782116 (= (bvadd #b00000000000000000000000000000001 call!66161) call!66162))))

(declare-fun b!1380221 () Bool)

(declare-fun isPivot!0 (array!94001 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380221 (= e!782117 (not (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> b!1380221 e!782116))

(declare-fun c!128270 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380221 (= c!128270 (validKeyInArray!0 (select (arr!45390 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45909 0))(
  ( (Unit!45910) )
))
(declare-fun lt!607849 () Unit!45909)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!94001 (_ BitVec 32) (_ BitVec 32)) Unit!45909)

(assert (=> b!1380221 (= lt!607849 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380222 () Bool)

(declare-fun res!922566 () Bool)

(assert (=> b!1380222 (=> (not res!922566) (not e!782117))))

(assert (=> b!1380222 (= res!922566 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun bm!66158 () Bool)

(declare-fun arrayCountValidKeys!0 (array!94001 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66158 (= call!66162 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun bm!66159 () Bool)

(assert (=> bm!66159 (= call!66161 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(declare-fun b!1380223 () Bool)

(declare-fun res!922565 () Bool)

(assert (=> b!1380223 (=> (not res!922565) (not e!782117))))

(assert (=> b!1380223 (= res!922565 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45941 a!3961)))))

(assert (= (and start!117534 res!922564) b!1380222))

(assert (= (and b!1380222 res!922566) b!1380223))

(assert (= (and b!1380223 res!922565) b!1380221))

(assert (= (and b!1380221 c!128270) b!1380220))

(assert (= (and b!1380221 (not c!128270)) b!1380219))

(assert (= (or b!1380220 b!1380219) bm!66159))

(assert (= (or b!1380220 b!1380219) bm!66158))

(declare-fun m!1265471 () Bool)

(assert (=> b!1380222 m!1265471))

(declare-fun m!1265473 () Bool)

(assert (=> bm!66159 m!1265473))

(declare-fun m!1265475 () Bool)

(assert (=> bm!66158 m!1265475))

(declare-fun m!1265477 () Bool)

(assert (=> start!117534 m!1265477))

(declare-fun m!1265479 () Bool)

(assert (=> b!1380221 m!1265479))

(declare-fun m!1265481 () Bool)

(assert (=> b!1380221 m!1265481))

(assert (=> b!1380221 m!1265481))

(declare-fun m!1265483 () Bool)

(assert (=> b!1380221 m!1265483))

(declare-fun m!1265485 () Bool)

(assert (=> b!1380221 m!1265485))

(push 1)

(assert (not start!117534))

(assert (not b!1380222))

(assert (not bm!66158))

(assert (not b!1380221))

(assert (not bm!66159))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380274 () Bool)

(declare-fun e!782145 () (_ BitVec 32))

(declare-fun e!782144 () (_ BitVec 32))

(assert (=> b!1380274 (= e!782145 e!782144)))

(declare-fun c!128295 () Bool)

(assert (=> b!1380274 (= c!128295 (validKeyInArray!0 (select (arr!45390 a!3961) from!3339)))))

(declare-fun bm!66176 () Bool)

(declare-fun call!66179 () (_ BitVec 32))

(assert (=> bm!66176 (= call!66179 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380275 () Bool)

(assert (=> b!1380275 (= e!782144 call!66179)))

(declare-fun b!1380276 () Bool)

(assert (=> b!1380276 (= e!782145 #b00000000000000000000000000000000)))

(declare-fun d!148693 () Bool)

(declare-fun lt!607866 () (_ BitVec 32))

(assert (=> d!148693 (and (bvsge lt!607866 #b00000000000000000000000000000000) (bvsle lt!607866 (bvsub (size!45941 a!3961) from!3339)))))

(assert (=> d!148693 (= lt!607866 e!782145)))

(declare-fun c!128294 () Bool)

(assert (=> d!148693 (= c!128294 (bvsge from!3339 pivot!34))))

(assert (=> d!148693 (and (bvsle from!3339 pivot!34) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle pivot!34 (size!45941 a!3961)))))

(assert (=> d!148693 (= (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) lt!607866)))

(declare-fun b!1380273 () Bool)

(assert (=> b!1380273 (= e!782144 (bvadd #b00000000000000000000000000000001 call!66179))))

(assert (= (and d!148693 c!128294) b!1380276))

(assert (= (and d!148693 (not c!128294)) b!1380274))

(assert (= (and b!1380274 c!128295) b!1380273))

(assert (= (and b!1380274 (not c!128295)) b!1380275))

(assert (= (or b!1380273 b!1380275) bm!66176))

(declare-fun m!1265523 () Bool)

(assert (=> b!1380274 m!1265523))

(assert (=> b!1380274 m!1265523))

(declare-fun m!1265525 () Bool)

(assert (=> b!1380274 m!1265525))

(declare-fun m!1265527 () Bool)

(assert (=> bm!66176 m!1265527))

(assert (=> bm!66159 d!148693))

(declare-fun d!148709 () Bool)

(assert (=> d!148709 (= (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34)) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39849 () Bool)

(assert (= bs!39849 d!148709))

(assert (=> bs!39849 m!1265475))

(declare-fun m!1265529 () Bool)

(assert (=> bs!39849 m!1265529))

(declare-fun m!1265531 () Bool)

(assert (=> bs!39849 m!1265531))

(assert (=> b!1380221 d!148709))

(declare-fun d!148711 () Bool)

(assert (=> d!148711 (= (validKeyInArray!0 (select (arr!45390 a!3961) pivot!34)) (and (not (= (select (arr!45390 a!3961) pivot!34) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45390 a!3961) pivot!34) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380221 d!148711))

(declare-fun d!148713 () Bool)

(declare-fun e!782156 () Bool)

(assert (=> d!148713 e!782156))

(declare-fun res!922575 () Bool)

(assert (=> d!148713 (=> (not res!922575) (not e!782156))))

(declare-fun lt!607878 () (_ BitVec 32))

(assert (=> d!148713 (= res!922575 (and (bvsge lt!607878 #b00000000000000000000000000000000) (bvslt lt!607878 (size!45941 a!3961))))))

(assert (=> d!148713 (= lt!607878 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))

(declare-fun lt!607877 () Unit!45909)

(declare-fun choose!86 (array!94001 (_ BitVec 32) (_ BitVec 32)) Unit!45909)

(assert (=> d!148713 (= lt!607877 (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148713 (and (bvslt (size!45941 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) from!3339) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45941 a!3961)))))

(assert (=> d!148713 (= (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607877)))

(declare-fun b!1380292 () Bool)

(declare-fun e!782157 () Bool)

(declare-fun call!66191 () (_ BitVec 32))

(declare-fun call!66190 () (_ BitVec 32))

(assert (=> b!1380292 (= e!782157 (= (bvadd call!66191 #b00000000000000000000000000000001) call!66190))))

(declare-fun b!1380293 () Bool)

(assert (=> b!1380293 (= e!782157 (= call!66191 call!66190))))

(declare-fun b!1380294 () Bool)

(assert (=> b!1380294 (= e!782156 e!782157)))

(declare-fun c!128301 () Bool)

(assert (=> b!1380294 (= c!128301 (validKeyInArray!0 (select (arr!45390 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(declare-fun bm!66187 () Bool)

(assert (=> bm!66187 (= call!66190 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun bm!66188 () Bool)

(assert (=> bm!66188 (= call!66191 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(assert (= (and d!148713 res!922575) b!1380294))

(assert (= (and b!1380294 c!128301) b!1380292))

(assert (= (and b!1380294 (not c!128301)) b!1380293))

(assert (= (or b!1380292 b!1380293) bm!66187))

(assert (= (or b!1380292 b!1380293) bm!66188))

(declare-fun m!1265541 () Bool)

(assert (=> d!148713 m!1265541))

(declare-fun m!1265543 () Bool)

(assert (=> b!1380294 m!1265543))

(assert (=> b!1380294 m!1265543))

(declare-fun m!1265545 () Bool)

(assert (=> b!1380294 m!1265545))

(assert (=> bm!66187 m!1265475))

(declare-fun m!1265547 () Bool)

(assert (=> bm!66188 m!1265547))

(assert (=> b!1380221 d!148713))

(declare-fun d!148715 () Bool)

(assert (=> d!148715 (= (array_inv!34335 a!3961) (bvsge (size!45941 a!3961) #b00000000000000000000000000000000))))

(assert (=> start!117534 d!148715))

(declare-fun d!148717 () Bool)

(assert (=> d!148717 (= (isPivot!0 a!3961 from!3339 to!135 pivot!34) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) (arrayCountValidKeys!0 a!3961 pivot!34 to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39850 () Bool)

(assert (= bs!39850 d!148717))

(assert (=> bs!39850 m!1265473))

(declare-fun m!1265549 () Bool)

(assert (=> bs!39850 m!1265549))

(assert (=> bs!39850 m!1265531))

(assert (=> b!1380222 d!148717))

(declare-fun b!1380296 () Bool)

(declare-fun e!782159 () (_ BitVec 32))

(declare-fun e!782158 () (_ BitVec 32))

(assert (=> b!1380296 (= e!782159 e!782158)))

(declare-fun c!128303 () Bool)

(assert (=> b!1380296 (= c!128303 (validKeyInArray!0 (select (arr!45390 a!3961) from!3339)))))

(declare-fun call!66192 () (_ BitVec 32))

(declare-fun bm!66189 () Bool)

(assert (=> bm!66189 (= call!66192 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380297 () Bool)

(assert (=> b!1380297 (= e!782158 call!66192)))

(declare-fun b!1380298 () Bool)

(assert (=> b!1380298 (= e!782159 #b00000000000000000000000000000000)))

(declare-fun d!148719 () Bool)

(declare-fun lt!607879 () (_ BitVec 32))

(assert (=> d!148719 (and (bvsge lt!607879 #b00000000000000000000000000000000) (bvsle lt!607879 (bvsub (size!45941 a!3961) from!3339)))))

(assert (=> d!148719 (= lt!607879 e!782159)))

(declare-fun c!128302 () Bool)

(assert (=> d!148719 (= c!128302 (bvsge from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148719 (and (bvsle from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45941 a!3961)))))

(assert (=> d!148719 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607879)))

(declare-fun b!1380295 () Bool)

(assert (=> b!1380295 (= e!782158 (bvadd #b00000000000000000000000000000001 call!66192))))

(assert (= (and d!148719 c!128302) b!1380298))

(assert (= (and d!148719 (not c!128302)) b!1380296))

(assert (= (and b!1380296 c!128303) b!1380295))

(assert (= (and b!1380296 (not c!128303)) b!1380297))

(assert (= (or b!1380295 b!1380297) bm!66189))

(assert (=> b!1380296 m!1265523))

(assert (=> b!1380296 m!1265523))

(assert (=> b!1380296 m!1265525))

(declare-fun m!1265551 () Bool)

(assert (=> bm!66189 m!1265551))

(assert (=> bm!66158 d!148719))

(push 1)

(assert (not b!1380294))

(assert (not bm!66189))

(assert (not d!148709))

(assert (not bm!66176))

(assert (not bm!66187))

(assert (not b!1380296))

(assert (not d!148713))

(assert (not d!148717))

(assert (not bm!66188))

(assert (not b!1380274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380360 () Bool)

(declare-fun e!782191 () (_ BitVec 32))

(declare-fun e!782190 () (_ BitVec 32))

(assert (=> b!1380360 (= e!782191 e!782190)))

(declare-fun c!128335 () Bool)

(assert (=> b!1380360 (= c!128335 (validKeyInArray!0 (select (arr!45390 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun bm!66214 () Bool)

(declare-fun call!66217 () (_ BitVec 32))

(assert (=> bm!66214 (= call!66217 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380361 () Bool)

(assert (=> b!1380361 (= e!782190 call!66217)))

(declare-fun b!1380362 () Bool)

(assert (=> b!1380362 (= e!782191 #b00000000000000000000000000000000)))

(declare-fun d!148757 () Bool)

(declare-fun lt!607892 () (_ BitVec 32))

(assert (=> d!148757 (and (bvsge lt!607892 #b00000000000000000000000000000000) (bvsle lt!607892 (bvsub (size!45941 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148757 (= lt!607892 e!782191)))

(declare-fun c!128334 () Bool)

(assert (=> d!148757 (= c!128334 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(assert (=> d!148757 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle pivot!34 (size!45941 a!3961)))))

(assert (=> d!148757 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) lt!607892)))

(declare-fun b!1380359 () Bool)

(assert (=> b!1380359 (= e!782190 (bvadd #b00000000000000000000000000000001 call!66217))))

(assert (= (and d!148757 c!128334) b!1380362))

(assert (= (and d!148757 (not c!128334)) b!1380360))

(assert (= (and b!1380360 c!128335) b!1380359))

(assert (= (and b!1380360 (not c!128335)) b!1380361))

(assert (= (or b!1380359 b!1380361) bm!66214))

(declare-fun m!1265593 () Bool)

(assert (=> b!1380360 m!1265593))

(assert (=> b!1380360 m!1265593))

(declare-fun m!1265595 () Bool)

(assert (=> b!1380360 m!1265595))

(declare-fun m!1265597 () Bool)

(assert (=> bm!66214 m!1265597))

(assert (=> bm!66176 d!148757))

(declare-fun d!148759 () Bool)

(assert (=> d!148759 (= (validKeyInArray!0 (select (arr!45390 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))) (and (not (= (select (arr!45390 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45390 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380294 d!148759))

(declare-fun b!1380367 () Bool)

(declare-fun e!782194 () Bool)

(declare-fun call!66223 () (_ BitVec 32))

(declare-fun call!66222 () (_ BitVec 32))

(assert (=> b!1380367 (= e!782194 (= (bvadd call!66223 #b00000000000000000000000000000001) call!66222))))

(declare-fun d!148761 () Bool)

(assert (=> d!148761 e!782194))

(declare-fun c!128338 () Bool)

(assert (=> d!148761 (= c!128338 (validKeyInArray!0 (select (arr!45390 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(assert (=> d!148761 true))

(declare-fun _$73!20 () Unit!45909)

(assert (=> d!148761 (= (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) _$73!20)))

(declare-fun bm!66220 () Bool)

(assert (=> bm!66220 (= call!66222 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun bm!66219 () Bool)

(assert (=> bm!66219 (= call!66223 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380368 () Bool)

(assert (=> b!1380368 (= e!782194 (= call!66223 call!66222))))

(assert (= (and d!148761 c!128338) b!1380367))

(assert (= (and d!148761 (not c!128338)) b!1380368))

(assert (= (or b!1380367 b!1380368) bm!66219))

(assert (= (or b!1380367 b!1380368) bm!66220))

(assert (=> d!148761 m!1265543))

(assert (=> d!148761 m!1265543))

(assert (=> d!148761 m!1265545))

(assert (=> bm!66220 m!1265475))

(assert (=> bm!66219 m!1265547))

(assert (=> d!148713 d!148761))

(assert (=> bm!66187 d!148719))

(assert (=> d!148717 d!148693))

(declare-fun b!1380370 () Bool)

(declare-fun e!782196 () (_ BitVec 32))

(declare-fun e!782195 () (_ BitVec 32))

(assert (=> b!1380370 (= e!782196 e!782195)))

(declare-fun c!128340 () Bool)

(assert (=> b!1380370 (= c!128340 (validKeyInArray!0 (select (arr!45390 a!3961) pivot!34)))))

(declare-fun call!66224 () (_ BitVec 32))

(declare-fun bm!66221 () Bool)

(assert (=> bm!66221 (= call!66224 (arrayCountValidKeys!0 a!3961 (bvadd pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380371 () Bool)

(assert (=> b!1380371 (= e!782195 call!66224)))

(declare-fun b!1380372 () Bool)

(assert (=> b!1380372 (= e!782196 #b00000000000000000000000000000000)))

(declare-fun d!148763 () Bool)

(declare-fun lt!607893 () (_ BitVec 32))

(assert (=> d!148763 (and (bvsge lt!607893 #b00000000000000000000000000000000) (bvsle lt!607893 (bvsub (size!45941 a!3961) pivot!34)))))

(assert (=> d!148763 (= lt!607893 e!782196)))

(declare-fun c!128339 () Bool)

(assert (=> d!148763 (= c!128339 (bvsge pivot!34 to!135))))

(assert (=> d!148763 (and (bvsle pivot!34 to!135) (bvsge pivot!34 #b00000000000000000000000000000000) (bvsle to!135 (size!45941 a!3961)))))

(assert (=> d!148763 (= (arrayCountValidKeys!0 a!3961 pivot!34 to!135) lt!607893)))

(declare-fun b!1380369 () Bool)

(assert (=> b!1380369 (= e!782195 (bvadd #b00000000000000000000000000000001 call!66224))))

(assert (= (and d!148763 c!128339) b!1380372))

(assert (= (and d!148763 (not c!128339)) b!1380370))

(assert (= (and b!1380370 c!128340) b!1380369))

(assert (= (and b!1380370 (not c!128340)) b!1380371))

(assert (= (or b!1380369 b!1380371) bm!66221))

(assert (=> b!1380370 m!1265481))

(assert (=> b!1380370 m!1265481))

(assert (=> b!1380370 m!1265483))

(declare-fun m!1265599 () Bool)

(assert (=> bm!66221 m!1265599))

(assert (=> d!148717 d!148763))

(declare-fun b!1380374 () Bool)

(declare-fun e!782198 () (_ BitVec 32))

(declare-fun e!782197 () (_ BitVec 32))

(assert (=> b!1380374 (= e!782198 e!782197)))

(declare-fun c!128342 () Bool)

(assert (=> b!1380374 (= c!128342 (validKeyInArray!0 (select (arr!45390 a!3961) from!3339)))))

(declare-fun call!66225 () (_ BitVec 32))

(declare-fun bm!66222 () Bool)

(assert (=> bm!66222 (= call!66225 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380375 () Bool)

(assert (=> b!1380375 (= e!782197 call!66225)))

(declare-fun b!1380376 () Bool)

(assert (=> b!1380376 (= e!782198 #b00000000000000000000000000000000)))

(declare-fun d!148765 () Bool)

(declare-fun lt!607894 () (_ BitVec 32))

(assert (=> d!148765 (and (bvsge lt!607894 #b00000000000000000000000000000000) (bvsle lt!607894 (bvsub (size!45941 a!3961) from!3339)))))

(assert (=> d!148765 (= lt!607894 e!782198)))

(declare-fun c!128341 () Bool)

(assert (=> d!148765 (= c!128341 (bvsge from!3339 to!135))))

(assert (=> d!148765 (and (bvsle from!3339 to!135) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle to!135 (size!45941 a!3961)))))

(assert (=> d!148765 (= (arrayCountValidKeys!0 a!3961 from!3339 to!135) lt!607894)))

(declare-fun b!1380373 () Bool)

(assert (=> b!1380373 (= e!782197 (bvadd #b00000000000000000000000000000001 call!66225))))

(assert (= (and d!148765 c!128341) b!1380376))

(assert (= (and d!148765 (not c!128341)) b!1380374))

(assert (= (and b!1380374 c!128342) b!1380373))

(assert (= (and b!1380374 (not c!128342)) b!1380375))

(assert (= (or b!1380373 b!1380375) bm!66222))

(assert (=> b!1380374 m!1265523))

(assert (=> b!1380374 m!1265523))

(assert (=> b!1380374 m!1265525))

(declare-fun m!1265601 () Bool)

(assert (=> bm!66222 m!1265601))

(assert (=> d!148717 d!148765))

(declare-fun b!1380378 () Bool)

(declare-fun e!782200 () (_ BitVec 32))

(declare-fun e!782199 () (_ BitVec 32))

(assert (=> b!1380378 (= e!782200 e!782199)))

(declare-fun c!128344 () Bool)

(assert (=> b!1380378 (= c!128344 (validKeyInArray!0 (select (arr!45390 a!3961) from!3339)))))

(declare-fun bm!66223 () Bool)

(declare-fun call!66226 () (_ BitVec 32))

(assert (=> bm!66223 (= call!66226 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380379 () Bool)

(assert (=> b!1380379 (= e!782199 call!66226)))

(declare-fun b!1380380 () Bool)

(assert (=> b!1380380 (= e!782200 #b00000000000000000000000000000000)))

(declare-fun d!148767 () Bool)

(declare-fun lt!607895 () (_ BitVec 32))

(assert (=> d!148767 (and (bvsge lt!607895 #b00000000000000000000000000000000) (bvsle lt!607895 (bvsub (size!45941 a!3961) from!3339)))))

(assert (=> d!148767 (= lt!607895 e!782200)))

(declare-fun c!128343 () Bool)

(assert (=> d!148767 (= c!128343 (bvsge from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(assert (=> d!148767 (and (bvsle from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001) (size!45941 a!3961)))))

(assert (=> d!148767 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) lt!607895)))

(declare-fun b!1380377 () Bool)

(assert (=> b!1380377 (= e!782199 (bvadd #b00000000000000000000000000000001 call!66226))))

(assert (= (and d!148767 c!128343) b!1380380))

(assert (= (and d!148767 (not c!128343)) b!1380378))

(assert (= (and b!1380378 c!128344) b!1380377))

(assert (= (and b!1380378 (not c!128344)) b!1380379))

(assert (= (or b!1380377 b!1380379) bm!66223))

(assert (=> b!1380378 m!1265523))

(assert (=> b!1380378 m!1265523))

(assert (=> b!1380378 m!1265525))

(declare-fun m!1265603 () Bool)

(assert (=> bm!66223 m!1265603))

(assert (=> bm!66188 d!148767))

(declare-fun d!148769 () Bool)

(assert (=> d!148769 (= (validKeyInArray!0 (select (arr!45390 a!3961) from!3339)) (and (not (= (select (arr!45390 a!3961) from!3339) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45390 a!3961) from!3339) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380296 d!148769))

(assert (=> b!1380274 d!148769))

(assert (=> d!148709 d!148719))

(declare-fun b!1380382 () Bool)

(declare-fun e!782202 () (_ BitVec 32))

(declare-fun e!782201 () (_ BitVec 32))

(assert (=> b!1380382 (= e!782202 e!782201)))

(declare-fun c!128346 () Bool)

(assert (=> b!1380382 (= c!128346 (validKeyInArray!0 (select (arr!45390 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(declare-fun call!66227 () (_ BitVec 32))

(declare-fun bm!66224 () Bool)

(assert (=> bm!66224 (= call!66227 (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380383 () Bool)

(assert (=> b!1380383 (= e!782201 call!66227)))

(declare-fun b!1380384 () Bool)

(assert (=> b!1380384 (= e!782202 #b00000000000000000000000000000000)))

(declare-fun d!148771 () Bool)

(declare-fun lt!607896 () (_ BitVec 32))

(assert (=> d!148771 (and (bvsge lt!607896 #b00000000000000000000000000000000) (bvsle lt!607896 (bvsub (size!45941 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> d!148771 (= lt!607896 e!782202)))

(declare-fun c!128345 () Bool)

(assert (=> d!148771 (= c!128345 (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) to!135))))

(assert (=> d!148771 (and (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) to!135) (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000000) (bvsle to!135 (size!45941 a!3961)))))

(assert (=> d!148771 (= (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135) lt!607896)))

(declare-fun b!1380381 () Bool)

(assert (=> b!1380381 (= e!782201 (bvadd #b00000000000000000000000000000001 call!66227))))

(assert (= (and d!148771 c!128345) b!1380384))

(assert (= (and d!148771 (not c!128345)) b!1380382))

(assert (= (and b!1380382 c!128346) b!1380381))

(assert (= (and b!1380382 (not c!128346)) b!1380383))

(assert (= (or b!1380381 b!1380383) bm!66224))

(declare-fun m!1265605 () Bool)

(assert (=> b!1380382 m!1265605))

(assert (=> b!1380382 m!1265605))

(declare-fun m!1265607 () Bool)

(assert (=> b!1380382 m!1265607))

(declare-fun m!1265609 () Bool)

(assert (=> bm!66224 m!1265609))

(assert (=> d!148709 d!148771))

(assert (=> d!148709 d!148765))

(declare-fun b!1380386 () Bool)

(declare-fun e!782204 () (_ BitVec 32))

(declare-fun e!782203 () (_ BitVec 32))

(assert (=> b!1380386 (= e!782204 e!782203)))

(declare-fun c!128348 () Bool)

(assert (=> b!1380386 (= c!128348 (validKeyInArray!0 (select (arr!45390 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun call!66228 () (_ BitVec 32))

(declare-fun bm!66225 () Bool)

(assert (=> bm!66225 (= call!66228 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380387 () Bool)

(assert (=> b!1380387 (= e!782203 call!66228)))

(declare-fun b!1380388 () Bool)

(assert (=> b!1380388 (= e!782204 #b00000000000000000000000000000000)))

(declare-fun d!148773 () Bool)

(declare-fun lt!607897 () (_ BitVec 32))

(assert (=> d!148773 (and (bvsge lt!607897 #b00000000000000000000000000000000) (bvsle lt!607897 (bvsub (size!45941 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148773 (= lt!607897 e!782204)))

(declare-fun c!128347 () Bool)

(assert (=> d!148773 (= c!128347 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148773 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45941 a!3961)))))

(assert (=> d!148773 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607897)))

(declare-fun b!1380385 () Bool)

(assert (=> b!1380385 (= e!782203 (bvadd #b00000000000000000000000000000001 call!66228))))

(assert (= (and d!148773 c!128347) b!1380388))

(assert (= (and d!148773 (not c!128347)) b!1380386))

(assert (= (and b!1380386 c!128348) b!1380385))

(assert (= (and b!1380386 (not c!128348)) b!1380387))

(assert (= (or b!1380385 b!1380387) bm!66225))

(assert (=> b!1380386 m!1265593))

(assert (=> b!1380386 m!1265593))

(assert (=> b!1380386 m!1265595))

(declare-fun m!1265611 () Bool)

(assert (=> bm!66225 m!1265611))

(assert (=> bm!66189 d!148773))

(push 1)

(assert (not b!1380360))

(assert (not d!148761))

(assert (not bm!66219))

(assert (not b!1380370))

(assert (not bm!66220))

(assert (not bm!66223))

(assert (not bm!66214))

(assert (not b!1380378))

(assert (not b!1380374))

(assert (not bm!66221))

(assert (not bm!66222))

(assert (not bm!66224))

(assert (not bm!66225))

(assert (not b!1380386))

(assert (not b!1380382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

