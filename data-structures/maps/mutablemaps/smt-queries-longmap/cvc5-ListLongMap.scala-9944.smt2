; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117530 () Bool)

(assert start!117530)

(declare-fun b!1380189 () Bool)

(declare-fun e!782098 () Bool)

(declare-fun call!66150 () (_ BitVec 32))

(declare-fun call!66149 () (_ BitVec 32))

(assert (=> b!1380189 (= e!782098 (= call!66150 call!66149))))

(declare-fun res!922547 () Bool)

(declare-fun e!782099 () Bool)

(assert (=> start!117530 (=> (not res!922547) (not e!782099))))

(declare-fun from!3339 () (_ BitVec 32))

(declare-fun pivot!34 () (_ BitVec 32))

(declare-datatypes ((array!93997 0))(
  ( (array!93998 (arr!45388 (Array (_ BitVec 32) (_ BitVec 64))) (size!45939 (_ BitVec 32))) )
))
(declare-fun a!3961 () array!93997)

(declare-fun to!135 () (_ BitVec 32))

(assert (=> start!117530 (= res!922547 (and (bvslt (size!45939 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt to!135 from!3339) (bvsle to!135 (size!45939 a!3961)) (bvsge pivot!34 from!3339) (bvslt pivot!34 (bvsub to!135 #b00000000000000000000000000000001))))))

(assert (=> start!117530 e!782099))

(declare-fun array_inv!34333 (array!93997) Bool)

(assert (=> start!117530 (array_inv!34333 a!3961)))

(assert (=> start!117530 true))

(declare-fun b!1380190 () Bool)

(assert (=> b!1380190 (= e!782098 (= (bvadd #b00000000000000000000000000000001 call!66150) call!66149))))

(declare-fun bm!66146 () Bool)

(declare-fun arrayCountValidKeys!0 (array!93997 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> bm!66146 (= call!66149 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380191 () Bool)

(declare-fun res!922548 () Bool)

(assert (=> b!1380191 (=> (not res!922548) (not e!782099))))

(assert (=> b!1380191 (= res!922548 (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45939 a!3961)))))

(declare-fun bm!66147 () Bool)

(assert (=> bm!66147 (= call!66150 (arrayCountValidKeys!0 a!3961 from!3339 pivot!34))))

(declare-fun b!1380192 () Bool)

(declare-fun res!922546 () Bool)

(assert (=> b!1380192 (=> (not res!922546) (not e!782099))))

(declare-fun isPivot!0 (array!93997 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!1380192 (= res!922546 (isPivot!0 a!3961 from!3339 to!135 pivot!34))))

(declare-fun b!1380193 () Bool)

(assert (=> b!1380193 (= e!782099 (not (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> b!1380193 e!782098))

(declare-fun c!128264 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1380193 (= c!128264 (validKeyInArray!0 (select (arr!45388 a!3961) pivot!34)))))

(declare-datatypes ((Unit!45905 0))(
  ( (Unit!45906) )
))
(declare-fun lt!607843 () Unit!45905)

(declare-fun lemmaCountingValidKeysAtTheEnd!0 (array!93997 (_ BitVec 32) (_ BitVec 32)) Unit!45905)

(assert (=> b!1380193 (= lt!607843 (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (= (and start!117530 res!922547) b!1380192))

(assert (= (and b!1380192 res!922546) b!1380191))

(assert (= (and b!1380191 res!922548) b!1380193))

(assert (= (and b!1380193 c!128264) b!1380190))

(assert (= (and b!1380193 (not c!128264)) b!1380189))

(assert (= (or b!1380190 b!1380189) bm!66147))

(assert (= (or b!1380190 b!1380189) bm!66146))

(declare-fun m!1265439 () Bool)

(assert (=> bm!66146 m!1265439))

(declare-fun m!1265441 () Bool)

(assert (=> b!1380193 m!1265441))

(declare-fun m!1265443 () Bool)

(assert (=> b!1380193 m!1265443))

(assert (=> b!1380193 m!1265443))

(declare-fun m!1265445 () Bool)

(assert (=> b!1380193 m!1265445))

(declare-fun m!1265447 () Bool)

(assert (=> b!1380193 m!1265447))

(declare-fun m!1265449 () Bool)

(assert (=> bm!66147 m!1265449))

(declare-fun m!1265451 () Bool)

(assert (=> start!117530 m!1265451))

(declare-fun m!1265453 () Bool)

(assert (=> b!1380192 m!1265453))

(push 1)

(assert (not start!117530))

(assert (not b!1380192))

(assert (not bm!66147))

(assert (not b!1380193))

(assert (not bm!66146))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1380249 () Bool)

(declare-fun e!782132 () (_ BitVec 32))

(declare-fun e!782133 () (_ BitVec 32))

(assert (=> b!1380249 (= e!782132 e!782133)))

(declare-fun c!128283 () Bool)

(assert (=> b!1380249 (= c!128283 (validKeyInArray!0 (select (arr!45388 a!3961) from!3339)))))

(declare-fun b!1380251 () Bool)

(declare-fun call!66173 () (_ BitVec 32))

(assert (=> b!1380251 (= e!782133 call!66173)))

(declare-fun bm!66170 () Bool)

(assert (=> bm!66170 (= call!66173 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380252 () Bool)

(assert (=> b!1380252 (= e!782132 #b00000000000000000000000000000000)))

(declare-fun b!1380250 () Bool)

(assert (=> b!1380250 (= e!782133 (bvadd #b00000000000000000000000000000001 call!66173))))

(declare-fun d!148687 () Bool)

(declare-fun lt!607860 () (_ BitVec 32))

(assert (=> d!148687 (and (bvsge lt!607860 #b00000000000000000000000000000000) (bvsle lt!607860 (bvsub (size!45939 a!3961) from!3339)))))

(assert (=> d!148687 (= lt!607860 e!782132)))

(declare-fun c!128282 () Bool)

(assert (=> d!148687 (= c!128282 (bvsge from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148687 (and (bvsle from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45939 a!3961)))))

(assert (=> d!148687 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607860)))

(assert (= (and d!148687 c!128282) b!1380252))

(assert (= (and d!148687 (not c!128282)) b!1380249))

(assert (= (and b!1380249 c!128283) b!1380250))

(assert (= (and b!1380249 (not c!128283)) b!1380251))

(assert (= (or b!1380250 b!1380251) bm!66170))

(declare-fun m!1265501 () Bool)

(assert (=> b!1380249 m!1265501))

(assert (=> b!1380249 m!1265501))

(declare-fun m!1265503 () Bool)

(assert (=> b!1380249 m!1265503))

(declare-fun m!1265505 () Bool)

(assert (=> bm!66170 m!1265505))

(assert (=> bm!66146 d!148687))

(declare-fun d!148695 () Bool)

(assert (=> d!148695 (= (array_inv!34333 a!3961) (bvsge (size!45939 a!3961) #b00000000000000000000000000000000))))

(assert (=> start!117530 d!148695))

(declare-fun b!1380253 () Bool)

(declare-fun e!782134 () (_ BitVec 32))

(declare-fun e!782135 () (_ BitVec 32))

(assert (=> b!1380253 (= e!782134 e!782135)))

(declare-fun c!128285 () Bool)

(assert (=> b!1380253 (= c!128285 (validKeyInArray!0 (select (arr!45388 a!3961) from!3339)))))

(declare-fun b!1380255 () Bool)

(declare-fun call!66174 () (_ BitVec 32))

(assert (=> b!1380255 (= e!782135 call!66174)))

(declare-fun bm!66171 () Bool)

(assert (=> bm!66171 (= call!66174 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380256 () Bool)

(assert (=> b!1380256 (= e!782134 #b00000000000000000000000000000000)))

(declare-fun b!1380254 () Bool)

(assert (=> b!1380254 (= e!782135 (bvadd #b00000000000000000000000000000001 call!66174))))

(declare-fun d!148697 () Bool)

(declare-fun lt!607861 () (_ BitVec 32))

(assert (=> d!148697 (and (bvsge lt!607861 #b00000000000000000000000000000000) (bvsle lt!607861 (bvsub (size!45939 a!3961) from!3339)))))

(assert (=> d!148697 (= lt!607861 e!782134)))

(declare-fun c!128284 () Bool)

(assert (=> d!148697 (= c!128284 (bvsge from!3339 pivot!34))))

(assert (=> d!148697 (and (bvsle from!3339 pivot!34) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle pivot!34 (size!45939 a!3961)))))

(assert (=> d!148697 (= (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) lt!607861)))

(assert (= (and d!148697 c!128284) b!1380256))

(assert (= (and d!148697 (not c!128284)) b!1380253))

(assert (= (and b!1380253 c!128285) b!1380254))

(assert (= (and b!1380253 (not c!128285)) b!1380255))

(assert (= (or b!1380254 b!1380255) bm!66171))

(assert (=> b!1380253 m!1265501))

(assert (=> b!1380253 m!1265501))

(assert (=> b!1380253 m!1265503))

(declare-fun m!1265509 () Bool)

(assert (=> bm!66171 m!1265509))

(assert (=> bm!66147 d!148697))

(declare-fun d!148699 () Bool)

(assert (=> d!148699 (= (isPivot!0 a!3961 from!3339 to!135 pivot!34) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 pivot!34) (arrayCountValidKeys!0 a!3961 pivot!34 to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39847 () Bool)

(assert (= bs!39847 d!148699))

(assert (=> bs!39847 m!1265449))

(declare-fun m!1265517 () Bool)

(assert (=> bs!39847 m!1265517))

(declare-fun m!1265519 () Bool)

(assert (=> bs!39847 m!1265519))

(assert (=> b!1380192 d!148699))

(declare-fun d!148703 () Bool)

(assert (=> d!148703 (= (isPivot!0 a!3961 from!3339 to!135 (bvadd #b00000000000000000000000000000001 pivot!34)) (= (bvadd (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135)) (arrayCountValidKeys!0 a!3961 from!3339 to!135)))))

(declare-fun bs!39848 () Bool)

(assert (= bs!39848 d!148703))

(assert (=> bs!39848 m!1265439))

(declare-fun m!1265521 () Bool)

(assert (=> bs!39848 m!1265521))

(assert (=> bs!39848 m!1265519))

(assert (=> b!1380193 d!148703))

(declare-fun d!148705 () Bool)

(assert (=> d!148705 (= (validKeyInArray!0 (select (arr!45388 a!3961) pivot!34)) (and (not (= (select (arr!45388 a!3961) pivot!34) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45388 a!3961) pivot!34) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380193 d!148705))

(declare-fun b!1380283 () Bool)

(declare-fun e!782150 () Bool)

(declare-fun call!66184 () (_ BitVec 32))

(declare-fun call!66185 () (_ BitVec 32))

(assert (=> b!1380283 (= e!782150 (= (bvadd call!66184 #b00000000000000000000000000000001) call!66185))))

(declare-fun d!148707 () Bool)

(declare-fun e!782151 () Bool)

(assert (=> d!148707 e!782151))

(declare-fun res!922572 () Bool)

(assert (=> d!148707 (=> (not res!922572) (not e!782151))))

(declare-fun lt!607871 () (_ BitVec 32))

(assert (=> d!148707 (= res!922572 (and (bvsge lt!607871 #b00000000000000000000000000000000) (bvslt lt!607871 (size!45939 a!3961))))))

(assert (=> d!148707 (= lt!607871 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))

(declare-fun lt!607872 () Unit!45905)

(declare-fun choose!86 (array!93997 (_ BitVec 32) (_ BitVec 32)) Unit!45905)

(assert (=> d!148707 (= lt!607872 (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148707 (and (bvslt (size!45939 a!3961) #b01111111111111111111111111111111) (bvsge from!3339 #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 pivot!34) from!3339) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45939 a!3961)))))

(assert (=> d!148707 (= (lemmaCountingValidKeysAtTheEnd!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607872)))

(declare-fun b!1380284 () Bool)

(assert (=> b!1380284 (= e!782151 e!782150)))

(declare-fun c!128298 () Bool)

(assert (=> b!1380284 (= c!128298 (validKeyInArray!0 (select (arr!45388 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(declare-fun b!1380285 () Bool)

(assert (=> b!1380285 (= e!782150 (= call!66184 call!66185))))

(declare-fun bm!66181 () Bool)

(assert (=> bm!66181 (= call!66184 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun bm!66182 () Bool)

(assert (=> bm!66182 (= call!66185 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (= (and d!148707 res!922572) b!1380284))

(assert (= (and b!1380284 c!128298) b!1380283))

(assert (= (and b!1380284 (not c!128298)) b!1380285))

(assert (= (or b!1380283 b!1380285) bm!66182))

(assert (= (or b!1380283 b!1380285) bm!66181))

(declare-fun m!1265533 () Bool)

(assert (=> d!148707 m!1265533))

(declare-fun m!1265535 () Bool)

(assert (=> b!1380284 m!1265535))

(assert (=> b!1380284 m!1265535))

(declare-fun m!1265537 () Bool)

(assert (=> b!1380284 m!1265537))

(declare-fun m!1265539 () Bool)

(assert (=> bm!66181 m!1265539))

(assert (=> bm!66182 m!1265439))

(assert (=> b!1380193 d!148707))

(push 1)

(assert (not b!1380249))

(assert (not d!148699))

(assert (not bm!66182))

(assert (not b!1380253))

(assert (not bm!66181))

(assert (not b!1380284))

(assert (not d!148707))

(assert (not bm!66170))

(assert (not bm!66171))

(assert (not d!148703))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!66206 () Bool)

(declare-fun call!66210 () (_ BitVec 32))

(assert (=> bm!66206 (= call!66210 (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380333 () Bool)

(declare-fun e!782177 () Bool)

(declare-fun call!66209 () (_ BitVec 32))

(assert (=> b!1380333 (= e!782177 (= (bvadd call!66210 #b00000000000000000000000000000001) call!66209))))

(declare-fun bm!66207 () Bool)

(assert (=> bm!66207 (= call!66209 (arrayCountValidKeys!0 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380334 () Bool)

(assert (=> b!1380334 (= e!782177 (= call!66210 call!66209))))

(declare-fun d!148739 () Bool)

(assert (=> d!148739 e!782177))

(declare-fun c!128321 () Bool)

(assert (=> d!148739 (= c!128321 (validKeyInArray!0 (select (arr!45388 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))))))

(assert (=> d!148739 true))

(declare-fun _$73!17 () Unit!45905)

(assert (=> d!148739 (= (choose!86 a!3961 from!3339 (bvadd #b00000000000000000000000000000001 pivot!34)) _$73!17)))

(assert (= (and d!148739 c!128321) b!1380333))

(assert (= (and d!148739 (not c!128321)) b!1380334))

(assert (= (or b!1380333 b!1380334) bm!66206))

(assert (= (or b!1380333 b!1380334) bm!66207))

(assert (=> bm!66206 m!1265539))

(assert (=> bm!66207 m!1265439))

(assert (=> d!148739 m!1265535))

(assert (=> d!148739 m!1265535))

(assert (=> d!148739 m!1265537))

(assert (=> d!148707 d!148739))

(declare-fun d!148741 () Bool)

(assert (=> d!148741 (= (validKeyInArray!0 (select (arr!45388 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001))) (and (not (= (select (arr!45388 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45388 a!3961) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380284 d!148741))

(declare-fun d!148743 () Bool)

(assert (=> d!148743 (= (validKeyInArray!0 (select (arr!45388 a!3961) from!3339)) (and (not (= (select (arr!45388 a!3961) from!3339) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!45388 a!3961) from!3339) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1380253 d!148743))

(declare-fun b!1380335 () Bool)

(declare-fun e!782178 () (_ BitVec 32))

(declare-fun e!782179 () (_ BitVec 32))

(assert (=> b!1380335 (= e!782178 e!782179)))

(declare-fun c!128323 () Bool)

(assert (=> b!1380335 (= c!128323 (validKeyInArray!0 (select (arr!45388 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun b!1380337 () Bool)

(declare-fun call!66211 () (_ BitVec 32))

(assert (=> b!1380337 (= e!782179 call!66211)))

(declare-fun bm!66208 () Bool)

(assert (=> bm!66208 (= call!66211 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(declare-fun b!1380338 () Bool)

(assert (=> b!1380338 (= e!782178 #b00000000000000000000000000000000)))

(declare-fun b!1380336 () Bool)

(assert (=> b!1380336 (= e!782179 (bvadd #b00000000000000000000000000000001 call!66211))))

(declare-fun d!148745 () Bool)

(declare-fun lt!607886 () (_ BitVec 32))

(assert (=> d!148745 (and (bvsge lt!607886 #b00000000000000000000000000000000) (bvsle lt!607886 (bvsub (size!45939 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148745 (= lt!607886 e!782178)))

(declare-fun c!128322 () Bool)

(assert (=> d!148745 (= c!128322 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)))))

(assert (=> d!148745 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) (size!45939 a!3961)))))

(assert (=> d!148745 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 pivot!34)) lt!607886)))

(assert (= (and d!148745 c!128322) b!1380338))

(assert (= (and d!148745 (not c!128322)) b!1380335))

(assert (= (and b!1380335 c!128323) b!1380336))

(assert (= (and b!1380335 (not c!128323)) b!1380337))

(assert (= (or b!1380336 b!1380337) bm!66208))

(declare-fun m!1265573 () Bool)

(assert (=> b!1380335 m!1265573))

(assert (=> b!1380335 m!1265573))

(declare-fun m!1265575 () Bool)

(assert (=> b!1380335 m!1265575))

(declare-fun m!1265577 () Bool)

(assert (=> bm!66208 m!1265577))

(assert (=> bm!66170 d!148745))

(assert (=> d!148703 d!148687))

(declare-fun b!1380339 () Bool)

(declare-fun e!782180 () (_ BitVec 32))

(declare-fun e!782181 () (_ BitVec 32))

(assert (=> b!1380339 (= e!782180 e!782181)))

(declare-fun c!128325 () Bool)

(assert (=> b!1380339 (= c!128325 (validKeyInArray!0 (select (arr!45388 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(declare-fun b!1380341 () Bool)

(declare-fun call!66212 () (_ BitVec 32))

(assert (=> b!1380341 (= e!782181 call!66212)))

(declare-fun bm!66209 () Bool)

(assert (=> bm!66209 (= call!66212 (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380342 () Bool)

(assert (=> b!1380342 (= e!782180 #b00000000000000000000000000000000)))

(declare-fun b!1380340 () Bool)

(assert (=> b!1380340 (= e!782181 (bvadd #b00000000000000000000000000000001 call!66212))))

(declare-fun d!148747 () Bool)

(declare-fun lt!607887 () (_ BitVec 32))

(assert (=> d!148747 (and (bvsge lt!607887 #b00000000000000000000000000000000) (bvsle lt!607887 (bvsub (size!45939 a!3961) (bvadd #b00000000000000000000000000000001 pivot!34))))))

(assert (=> d!148747 (= lt!607887 e!782180)))

(declare-fun c!128324 () Bool)

(assert (=> d!148747 (= c!128324 (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) to!135))))

(assert (=> d!148747 (and (bvsle (bvadd #b00000000000000000000000000000001 pivot!34) to!135) (bvsge (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000000) (bvsle to!135 (size!45939 a!3961)))))

(assert (=> d!148747 (= (arrayCountValidKeys!0 a!3961 (bvadd #b00000000000000000000000000000001 pivot!34) to!135) lt!607887)))

(assert (= (and d!148747 c!128324) b!1380342))

(assert (= (and d!148747 (not c!128324)) b!1380339))

(assert (= (and b!1380339 c!128325) b!1380340))

(assert (= (and b!1380339 (not c!128325)) b!1380341))

(assert (= (or b!1380340 b!1380341) bm!66209))

(declare-fun m!1265579 () Bool)

(assert (=> b!1380339 m!1265579))

(assert (=> b!1380339 m!1265579))

(declare-fun m!1265581 () Bool)

(assert (=> b!1380339 m!1265581))

(declare-fun m!1265583 () Bool)

(assert (=> bm!66209 m!1265583))

(assert (=> d!148703 d!148747))

(declare-fun b!1380343 () Bool)

(declare-fun e!782182 () (_ BitVec 32))

(declare-fun e!782183 () (_ BitVec 32))

(assert (=> b!1380343 (= e!782182 e!782183)))

(declare-fun c!128327 () Bool)

(assert (=> b!1380343 (= c!128327 (validKeyInArray!0 (select (arr!45388 a!3961) from!3339)))))

(declare-fun b!1380345 () Bool)

(declare-fun call!66213 () (_ BitVec 32))

(assert (=> b!1380345 (= e!782183 call!66213)))

(declare-fun bm!66210 () Bool)

(assert (=> bm!66210 (= call!66213 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380346 () Bool)

(assert (=> b!1380346 (= e!782182 #b00000000000000000000000000000000)))

(declare-fun b!1380344 () Bool)

(assert (=> b!1380344 (= e!782183 (bvadd #b00000000000000000000000000000001 call!66213))))

(declare-fun d!148749 () Bool)

(declare-fun lt!607888 () (_ BitVec 32))

(assert (=> d!148749 (and (bvsge lt!607888 #b00000000000000000000000000000000) (bvsle lt!607888 (bvsub (size!45939 a!3961) from!3339)))))

(assert (=> d!148749 (= lt!607888 e!782182)))

(declare-fun c!128326 () Bool)

(assert (=> d!148749 (= c!128326 (bvsge from!3339 to!135))))

(assert (=> d!148749 (and (bvsle from!3339 to!135) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle to!135 (size!45939 a!3961)))))

(assert (=> d!148749 (= (arrayCountValidKeys!0 a!3961 from!3339 to!135) lt!607888)))

(assert (= (and d!148749 c!128326) b!1380346))

(assert (= (and d!148749 (not c!128326)) b!1380343))

(assert (= (and b!1380343 c!128327) b!1380344))

(assert (= (and b!1380343 (not c!128327)) b!1380345))

(assert (= (or b!1380344 b!1380345) bm!66210))

(assert (=> b!1380343 m!1265501))

(assert (=> b!1380343 m!1265501))

(assert (=> b!1380343 m!1265503))

(declare-fun m!1265585 () Bool)

(assert (=> bm!66210 m!1265585))

(assert (=> d!148703 d!148749))

(declare-fun b!1380347 () Bool)

(declare-fun e!782184 () (_ BitVec 32))

(declare-fun e!782185 () (_ BitVec 32))

(assert (=> b!1380347 (= e!782184 e!782185)))

(declare-fun c!128329 () Bool)

(assert (=> b!1380347 (= c!128329 (validKeyInArray!0 (select (arr!45388 a!3961) from!3339)))))

(declare-fun b!1380349 () Bool)

(declare-fun call!66214 () (_ BitVec 32))

(assert (=> b!1380349 (= e!782185 call!66214)))

(declare-fun bm!66211 () Bool)

(assert (=> bm!66211 (= call!66214 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(declare-fun b!1380350 () Bool)

(assert (=> b!1380350 (= e!782184 #b00000000000000000000000000000000)))

(declare-fun b!1380348 () Bool)

(assert (=> b!1380348 (= e!782185 (bvadd #b00000000000000000000000000000001 call!66214))))

(declare-fun d!148751 () Bool)

(declare-fun lt!607889 () (_ BitVec 32))

(assert (=> d!148751 (and (bvsge lt!607889 #b00000000000000000000000000000000) (bvsle lt!607889 (bvsub (size!45939 a!3961) from!3339)))))

(assert (=> d!148751 (= lt!607889 e!782184)))

(declare-fun c!128328 () Bool)

(assert (=> d!148751 (= c!128328 (bvsge from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)))))

(assert (=> d!148751 (and (bvsle from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) (bvsge from!3339 #b00000000000000000000000000000000) (bvsle (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001) (size!45939 a!3961)))))

(assert (=> d!148751 (= (arrayCountValidKeys!0 a!3961 from!3339 (bvsub (bvadd #b00000000000000000000000000000001 pivot!34) #b00000000000000000000000000000001)) lt!607889)))

(assert (= (and d!148751 c!128328) b!1380350))

(assert (= (and d!148751 (not c!128328)) b!1380347))

(assert (= (and b!1380347 c!128329) b!1380348))

(assert (= (and b!1380347 (not c!128329)) b!1380349))

(assert (= (or b!1380348 b!1380349) bm!66211))

(assert (=> b!1380347 m!1265501))

(assert (=> b!1380347 m!1265501))

(assert (=> b!1380347 m!1265503))

(declare-fun m!1265587 () Bool)

(assert (=> bm!66211 m!1265587))

(assert (=> bm!66181 d!148751))

(assert (=> d!148699 d!148697))

(declare-fun b!1380351 () Bool)

(declare-fun e!782186 () (_ BitVec 32))

(declare-fun e!782187 () (_ BitVec 32))

(assert (=> b!1380351 (= e!782186 e!782187)))

(declare-fun c!128331 () Bool)

(assert (=> b!1380351 (= c!128331 (validKeyInArray!0 (select (arr!45388 a!3961) pivot!34)))))

(declare-fun b!1380353 () Bool)

(declare-fun call!66215 () (_ BitVec 32))

(assert (=> b!1380353 (= e!782187 call!66215)))

(declare-fun bm!66212 () Bool)

(assert (=> bm!66212 (= call!66215 (arrayCountValidKeys!0 a!3961 (bvadd pivot!34 #b00000000000000000000000000000001) to!135))))

(declare-fun b!1380354 () Bool)

(assert (=> b!1380354 (= e!782186 #b00000000000000000000000000000000)))

(declare-fun b!1380352 () Bool)

(assert (=> b!1380352 (= e!782187 (bvadd #b00000000000000000000000000000001 call!66215))))

(declare-fun d!148753 () Bool)

(declare-fun lt!607890 () (_ BitVec 32))

(assert (=> d!148753 (and (bvsge lt!607890 #b00000000000000000000000000000000) (bvsle lt!607890 (bvsub (size!45939 a!3961) pivot!34)))))

(assert (=> d!148753 (= lt!607890 e!782186)))

(declare-fun c!128330 () Bool)

(assert (=> d!148753 (= c!128330 (bvsge pivot!34 to!135))))

(assert (=> d!148753 (and (bvsle pivot!34 to!135) (bvsge pivot!34 #b00000000000000000000000000000000) (bvsle to!135 (size!45939 a!3961)))))

(assert (=> d!148753 (= (arrayCountValidKeys!0 a!3961 pivot!34 to!135) lt!607890)))

(assert (= (and d!148753 c!128330) b!1380354))

(assert (= (and d!148753 (not c!128330)) b!1380351))

(assert (= (and b!1380351 c!128331) b!1380352))

(assert (= (and b!1380351 (not c!128331)) b!1380353))

(assert (= (or b!1380352 b!1380353) bm!66212))

(assert (=> b!1380351 m!1265443))

(assert (=> b!1380351 m!1265443))

(assert (=> b!1380351 m!1265445))

(declare-fun m!1265589 () Bool)

(assert (=> bm!66212 m!1265589))

(assert (=> d!148699 d!148753))

(assert (=> d!148699 d!148749))

(assert (=> bm!66182 d!148687))

(assert (=> b!1380249 d!148743))

(declare-fun b!1380355 () Bool)

(declare-fun e!782188 () (_ BitVec 32))

(declare-fun e!782189 () (_ BitVec 32))

(assert (=> b!1380355 (= e!782188 e!782189)))

(declare-fun c!128333 () Bool)

(assert (=> b!1380355 (= c!128333 (validKeyInArray!0 (select (arr!45388 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(declare-fun b!1380357 () Bool)

(declare-fun call!66216 () (_ BitVec 32))

(assert (=> b!1380357 (= e!782189 call!66216)))

(declare-fun bm!66213 () Bool)

(assert (=> bm!66213 (= call!66216 (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001 #b00000000000000000000000000000001) pivot!34))))

(declare-fun b!1380358 () Bool)

(assert (=> b!1380358 (= e!782188 #b00000000000000000000000000000000)))

(declare-fun b!1380356 () Bool)

(assert (=> b!1380356 (= e!782189 (bvadd #b00000000000000000000000000000001 call!66216))))

(declare-fun d!148755 () Bool)

(declare-fun lt!607891 () (_ BitVec 32))

(assert (=> d!148755 (and (bvsge lt!607891 #b00000000000000000000000000000000) (bvsle lt!607891 (bvsub (size!45939 a!3961) (bvadd from!3339 #b00000000000000000000000000000001))))))

(assert (=> d!148755 (= lt!607891 e!782188)))

(declare-fun c!128332 () Bool)

(assert (=> d!148755 (= c!128332 (bvsge (bvadd from!3339 #b00000000000000000000000000000001) pivot!34))))

(assert (=> d!148755 (and (bvsle (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) (bvsge (bvadd from!3339 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle pivot!34 (size!45939 a!3961)))))

(assert (=> d!148755 (= (arrayCountValidKeys!0 a!3961 (bvadd from!3339 #b00000000000000000000000000000001) pivot!34) lt!607891)))

(assert (= (and d!148755 c!128332) b!1380358))

(assert (= (and d!148755 (not c!128332)) b!1380355))

(assert (= (and b!1380355 c!128333) b!1380356))

(assert (= (and b!1380355 (not c!128333)) b!1380357))

(assert (= (or b!1380356 b!1380357) bm!66213))

(assert (=> b!1380355 m!1265573))

(assert (=> b!1380355 m!1265573))

(assert (=> b!1380355 m!1265575))

(declare-fun m!1265591 () Bool)

(assert (=> bm!66213 m!1265591))

(assert (=> bm!66171 d!148755))

(push 1)

(assert (not b!1380351))

(assert (not bm!66208))

(assert (not bm!66213))

(assert (not b!1380335))

(assert (not b!1380355))

(assert (not d!148739))

(assert (not bm!66206))

(assert (not bm!66209))

(assert (not b!1380343))

(assert (not bm!66207))

(assert (not bm!66211))

(assert (not b!1380339))

(assert (not bm!66210))

(assert (not bm!66212))

(assert (not b!1380347))

(check-sat)

(pop 1)

(push 1)

(check-sat)

