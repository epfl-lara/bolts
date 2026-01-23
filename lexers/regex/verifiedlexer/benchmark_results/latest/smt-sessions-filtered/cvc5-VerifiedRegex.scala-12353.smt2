; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692362 () Bool)

(assert start!692362)

(declare-fun b!7113055 () Bool)

(declare-fun e!4274557 () Bool)

(declare-fun tp_is_empty!45129 () Bool)

(assert (=> b!7113055 (= e!4274557 tp_is_empty!45129)))

(declare-fun b!7113057 () Bool)

(declare-fun res!2902559 () Bool)

(declare-fun e!4274556 () Bool)

(assert (=> b!7113057 (=> (not res!2902559) (not e!4274556))))

(declare-datatypes ((C!36166 0))(
  ( (C!36167 (val!27789 Int)) )
))
(declare-fun a!1901 () C!36166)

(declare-datatypes ((Regex!17948 0))(
  ( (ElementMatch!17948 (c!1327429 C!36166)) (Concat!26793 (regOne!36408 Regex!17948) (regTwo!36408 Regex!17948)) (EmptyExpr!17948) (Star!17948 (reg!18277 Regex!17948)) (EmptyLang!17948) (Union!17948 (regOne!36409 Regex!17948) (regTwo!36409 Regex!17948)) )
))
(declare-fun r!11554 () Regex!17948)

(declare-datatypes ((List!68909 0))(
  ( (Nil!68785) (Cons!68785 (h!75233 Regex!17948) (t!382746 List!68909)) )
))
(declare-fun lt!2560291 () List!68909)

(declare-datatypes ((Context!13884 0))(
  ( (Context!13885 (exprs!7442 List!68909)) )
))
(declare-fun derivationStepZipperDown!2455 (Regex!17948 Context!13884 C!36166) (Set Context!13884))

(declare-fun $colon$colon!2800 (List!68909 Regex!17948) List!68909)

(assert (=> b!7113057 (= res!2902559 (= (derivationStepZipperDown!2455 r!11554 (Context!13885 lt!2560291) a!1901) (derivationStepZipperDown!2455 (regOne!36408 r!11554) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) a!1901)))))

(declare-fun b!7113058 () Bool)

(declare-fun e!4274554 () Bool)

(declare-fun tp!1957176 () Bool)

(assert (=> b!7113058 (= e!4274554 tp!1957176)))

(declare-fun b!7113059 () Bool)

(declare-fun e!4274558 () Bool)

(declare-fun nullable!7585 (Regex!17948) Bool)

(assert (=> b!7113059 (= e!4274558 (not (nullable!7585 (regOne!36408 r!11554))))))

(declare-fun b!7113060 () Bool)

(declare-fun res!2902558 () Bool)

(declare-fun e!4274555 () Bool)

(assert (=> b!7113060 (=> (not res!2902558) (not e!4274555))))

(assert (=> b!7113060 (= res!2902558 (and (or (not (is-ElementMatch!17948 r!11554)) (not (= (c!1327429 r!11554) a!1901))) (not (is-Union!17948 r!11554))))))

(declare-fun b!7113061 () Bool)

(declare-fun res!2902561 () Bool)

(assert (=> b!7113061 (=> (not res!2902561) (not e!4274555))))

(assert (=> b!7113061 (= res!2902561 e!4274558)))

(declare-fun res!2902556 () Bool)

(assert (=> b!7113061 (=> res!2902556 e!4274558)))

(assert (=> b!7113061 (= res!2902556 (not (is-Concat!26793 r!11554)))))

(declare-fun b!7113062 () Bool)

(declare-fun e!4274553 () Bool)

(declare-fun tp!1957178 () Bool)

(assert (=> b!7113062 (= e!4274553 tp!1957178)))

(declare-fun b!7113063 () Bool)

(declare-fun tp!1957180 () Bool)

(assert (=> b!7113063 (= e!4274557 tp!1957180)))

(declare-fun b!7113064 () Bool)

(declare-fun tp!1957179 () Bool)

(declare-fun tp!1957177 () Bool)

(assert (=> b!7113064 (= e!4274557 (and tp!1957179 tp!1957177))))

(declare-fun b!7113065 () Bool)

(declare-fun c!9994 () Context!13884)

(declare-fun inv!87734 (Context!13884) Bool)

(assert (=> b!7113065 (= e!4274556 (not (inv!87734 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554))))))))

(declare-fun res!2902555 () Bool)

(assert (=> start!692362 (=> (not res!2902555) (not e!4274555))))

(declare-fun validRegex!9221 (Regex!17948) Bool)

(assert (=> start!692362 (= res!2902555 (validRegex!9221 r!11554))))

(assert (=> start!692362 e!4274555))

(assert (=> start!692362 e!4274557))

(assert (=> start!692362 tp_is_empty!45129))

(assert (=> start!692362 (and (inv!87734 c!9994) e!4274553)))

(declare-fun auxCtx!45 () Context!13884)

(assert (=> start!692362 (and (inv!87734 auxCtx!45) e!4274554)))

(declare-fun b!7113056 () Bool)

(declare-fun res!2902557 () Bool)

(assert (=> b!7113056 (=> (not res!2902557) (not e!4274555))))

(assert (=> b!7113056 (= res!2902557 (is-Concat!26793 r!11554))))

(declare-fun b!7113066 () Bool)

(assert (=> b!7113066 (= e!4274555 e!4274556)))

(declare-fun res!2902560 () Bool)

(assert (=> b!7113066 (=> (not res!2902560) (not e!4274556))))

(assert (=> b!7113066 (= res!2902560 (validRegex!9221 (regTwo!36408 r!11554)))))

(declare-fun ++!16100 (List!68909 List!68909) List!68909)

(assert (=> b!7113066 (= lt!2560291 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)))))

(declare-datatypes ((Unit!162567 0))(
  ( (Unit!162568) )
))
(declare-fun lt!2560289 () Unit!162567)

(declare-fun lambda!432174 () Int)

(declare-fun lemmaConcatPreservesForall!1233 (List!68909 List!68909 Int) Unit!162567)

(assert (=> b!7113066 (= lt!2560289 (lemmaConcatPreservesForall!1233 (exprs!7442 c!9994) (exprs!7442 auxCtx!45) lambda!432174))))

(declare-fun lt!2560290 () Unit!162567)

(assert (=> b!7113066 (= lt!2560290 (lemmaConcatPreservesForall!1233 (exprs!7442 c!9994) (exprs!7442 auxCtx!45) lambda!432174))))

(declare-fun b!7113067 () Bool)

(declare-fun tp!1957181 () Bool)

(declare-fun tp!1957175 () Bool)

(assert (=> b!7113067 (= e!4274557 (and tp!1957181 tp!1957175))))

(assert (= (and start!692362 res!2902555) b!7113060))

(assert (= (and b!7113060 res!2902558) b!7113061))

(assert (= (and b!7113061 (not res!2902556)) b!7113059))

(assert (= (and b!7113061 res!2902561) b!7113056))

(assert (= (and b!7113056 res!2902557) b!7113066))

(assert (= (and b!7113066 res!2902560) b!7113057))

(assert (= (and b!7113057 res!2902559) b!7113065))

(assert (= (and start!692362 (is-ElementMatch!17948 r!11554)) b!7113055))

(assert (= (and start!692362 (is-Concat!26793 r!11554)) b!7113067))

(assert (= (and start!692362 (is-Star!17948 r!11554)) b!7113063))

(assert (= (and start!692362 (is-Union!17948 r!11554)) b!7113064))

(assert (= start!692362 b!7113062))

(assert (= start!692362 b!7113058))

(declare-fun m!7833424 () Bool)

(assert (=> b!7113065 m!7833424))

(declare-fun m!7833426 () Bool)

(assert (=> b!7113065 m!7833426))

(declare-fun m!7833428 () Bool)

(assert (=> b!7113066 m!7833428))

(declare-fun m!7833430 () Bool)

(assert (=> b!7113066 m!7833430))

(declare-fun m!7833432 () Bool)

(assert (=> b!7113066 m!7833432))

(assert (=> b!7113066 m!7833432))

(declare-fun m!7833434 () Bool)

(assert (=> start!692362 m!7833434))

(declare-fun m!7833436 () Bool)

(assert (=> start!692362 m!7833436))

(declare-fun m!7833438 () Bool)

(assert (=> start!692362 m!7833438))

(declare-fun m!7833440 () Bool)

(assert (=> b!7113057 m!7833440))

(declare-fun m!7833442 () Bool)

(assert (=> b!7113057 m!7833442))

(declare-fun m!7833444 () Bool)

(assert (=> b!7113057 m!7833444))

(declare-fun m!7833446 () Bool)

(assert (=> b!7113059 m!7833446))

(push 1)

(assert (not b!7113064))

(assert (not b!7113065))

(assert (not start!692362))

(assert tp_is_empty!45129)

(assert (not b!7113067))

(assert (not b!7113059))

(assert (not b!7113057))

(assert (not b!7113063))

(assert (not b!7113066))

(assert (not b!7113062))

(assert (not b!7113058))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649197 () Bool)

(declare-fun call!649203 () Bool)

(declare-fun call!649202 () Bool)

(assert (=> bm!649197 (= call!649203 call!649202)))

(declare-fun b!7113143 () Bool)

(declare-fun e!4274609 () Bool)

(assert (=> b!7113143 (= e!4274609 call!649202)))

(declare-fun d!2220632 () Bool)

(declare-fun res!2902604 () Bool)

(declare-fun e!4274605 () Bool)

(assert (=> d!2220632 (=> res!2902604 e!4274605)))

(assert (=> d!2220632 (= res!2902604 (is-ElementMatch!17948 r!11554))))

(assert (=> d!2220632 (= (validRegex!9221 r!11554) e!4274605)))

(declare-fun b!7113144 () Bool)

(declare-fun e!4274608 () Bool)

(declare-fun e!4274610 () Bool)

(assert (=> b!7113144 (= e!4274608 e!4274610)))

(declare-fun res!2902605 () Bool)

(assert (=> b!7113144 (=> (not res!2902605) (not e!4274610))))

(assert (=> b!7113144 (= res!2902605 call!649203)))

(declare-fun b!7113145 () Bool)

(declare-fun res!2902603 () Bool)

(assert (=> b!7113145 (=> res!2902603 e!4274608)))

(assert (=> b!7113145 (= res!2902603 (not (is-Concat!26793 r!11554)))))

(declare-fun e!4274606 () Bool)

(assert (=> b!7113145 (= e!4274606 e!4274608)))

(declare-fun b!7113146 () Bool)

(declare-fun e!4274607 () Bool)

(assert (=> b!7113146 (= e!4274607 e!4274606)))

(declare-fun c!1327439 () Bool)

(assert (=> b!7113146 (= c!1327439 (is-Union!17948 r!11554))))

(declare-fun b!7113147 () Bool)

(assert (=> b!7113147 (= e!4274607 e!4274609)))

(declare-fun res!2902606 () Bool)

(assert (=> b!7113147 (= res!2902606 (not (nullable!7585 (reg!18277 r!11554))))))

(assert (=> b!7113147 (=> (not res!2902606) (not e!4274609))))

(declare-fun b!7113148 () Bool)

(assert (=> b!7113148 (= e!4274605 e!4274607)))

(declare-fun c!1327440 () Bool)

(assert (=> b!7113148 (= c!1327440 (is-Star!17948 r!11554))))

(declare-fun bm!649198 () Bool)

(assert (=> bm!649198 (= call!649202 (validRegex!9221 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))

(declare-fun b!7113149 () Bool)

(declare-fun e!4274611 () Bool)

(assert (=> b!7113149 (= e!4274611 call!649203)))

(declare-fun b!7113150 () Bool)

(declare-fun call!649204 () Bool)

(assert (=> b!7113150 (= e!4274610 call!649204)))

(declare-fun b!7113151 () Bool)

(declare-fun res!2902607 () Bool)

(assert (=> b!7113151 (=> (not res!2902607) (not e!4274611))))

(assert (=> b!7113151 (= res!2902607 call!649204)))

(assert (=> b!7113151 (= e!4274606 e!4274611)))

(declare-fun bm!649199 () Bool)

(assert (=> bm!649199 (= call!649204 (validRegex!9221 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))

(assert (= (and d!2220632 (not res!2902604)) b!7113148))

(assert (= (and b!7113148 c!1327440) b!7113147))

(assert (= (and b!7113148 (not c!1327440)) b!7113146))

(assert (= (and b!7113147 res!2902606) b!7113143))

(assert (= (and b!7113146 c!1327439) b!7113151))

(assert (= (and b!7113146 (not c!1327439)) b!7113145))

(assert (= (and b!7113151 res!2902607) b!7113149))

(assert (= (and b!7113145 (not res!2902603)) b!7113144))

(assert (= (and b!7113144 res!2902605) b!7113150))

(assert (= (or b!7113151 b!7113150) bm!649199))

(assert (= (or b!7113149 b!7113144) bm!649197))

(assert (= (or b!7113143 bm!649197) bm!649198))

(declare-fun m!7833474 () Bool)

(assert (=> b!7113147 m!7833474))

(declare-fun m!7833476 () Bool)

(assert (=> bm!649198 m!7833476))

(declare-fun m!7833478 () Bool)

(assert (=> bm!649199 m!7833478))

(assert (=> start!692362 d!2220632))

(declare-fun bs!1885350 () Bool)

(declare-fun d!2220634 () Bool)

(assert (= bs!1885350 (and d!2220634 b!7113066)))

(declare-fun lambda!432182 () Int)

(assert (=> bs!1885350 (= lambda!432182 lambda!432174)))

(declare-fun forall!16843 (List!68909 Int) Bool)

(assert (=> d!2220634 (= (inv!87734 c!9994) (forall!16843 (exprs!7442 c!9994) lambda!432182))))

(declare-fun bs!1885351 () Bool)

(assert (= bs!1885351 d!2220634))

(declare-fun m!7833480 () Bool)

(assert (=> bs!1885351 m!7833480))

(assert (=> start!692362 d!2220634))

(declare-fun bs!1885352 () Bool)

(declare-fun d!2220636 () Bool)

(assert (= bs!1885352 (and d!2220636 b!7113066)))

(declare-fun lambda!432183 () Int)

(assert (=> bs!1885352 (= lambda!432183 lambda!432174)))

(declare-fun bs!1885353 () Bool)

(assert (= bs!1885353 (and d!2220636 d!2220634)))

(assert (=> bs!1885353 (= lambda!432183 lambda!432182)))

(assert (=> d!2220636 (= (inv!87734 auxCtx!45) (forall!16843 (exprs!7442 auxCtx!45) lambda!432183))))

(declare-fun bs!1885354 () Bool)

(assert (= bs!1885354 d!2220636))

(declare-fun m!7833482 () Bool)

(assert (=> bs!1885354 m!7833482))

(assert (=> start!692362 d!2220636))

(declare-fun b!7113192 () Bool)

(declare-fun e!4274641 () (Set Context!13884))

(declare-fun call!649223 () (Set Context!13884))

(assert (=> b!7113192 (= e!4274641 call!649223)))

(declare-fun b!7113193 () Bool)

(declare-fun e!4274643 () (Set Context!13884))

(assert (=> b!7113193 (= e!4274643 (set.insert (Context!13885 lt!2560291) (as set.empty (Set Context!13884))))))

(declare-fun bm!649218 () Bool)

(declare-fun call!649224 () (Set Context!13884))

(declare-fun call!649228 () (Set Context!13884))

(assert (=> bm!649218 (= call!649224 call!649228)))

(declare-fun b!7113194 () Bool)

(declare-fun e!4274642 () (Set Context!13884))

(assert (=> b!7113194 (= e!4274642 e!4274641)))

(declare-fun c!1327459 () Bool)

(assert (=> b!7113194 (= c!1327459 (is-Concat!26793 r!11554))))

(declare-fun bm!649219 () Bool)

(declare-fun c!1327456 () Bool)

(declare-fun call!649225 () List!68909)

(declare-fun call!649226 () (Set Context!13884))

(assert (=> bm!649219 (= call!649226 (derivationStepZipperDown!2455 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)) (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225)) a!1901))))

(declare-fun b!7113195 () Bool)

(declare-fun e!4274639 () Bool)

(assert (=> b!7113195 (= e!4274639 (nullable!7585 (regOne!36408 r!11554)))))

(declare-fun b!7113197 () Bool)

(declare-fun c!1327455 () Bool)

(assert (=> b!7113197 (= c!1327455 (is-Star!17948 r!11554))))

(declare-fun e!4274638 () (Set Context!13884))

(assert (=> b!7113197 (= e!4274641 e!4274638)))

(declare-fun c!1327458 () Bool)

(declare-fun call!649227 () List!68909)

(declare-fun bm!649220 () Bool)

(assert (=> bm!649220 (= call!649228 (derivationStepZipperDown!2455 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))) (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227)) a!1901))))

(declare-fun b!7113198 () Bool)

(assert (=> b!7113198 (= e!4274638 call!649223)))

(declare-fun b!7113199 () Bool)

(declare-fun e!4274640 () (Set Context!13884))

(assert (=> b!7113199 (= e!4274640 (set.union call!649226 call!649228))))

(declare-fun b!7113200 () Bool)

(assert (=> b!7113200 (= e!4274643 e!4274640)))

(assert (=> b!7113200 (= c!1327456 (is-Union!17948 r!11554))))

(declare-fun bm!649221 () Bool)

(assert (=> bm!649221 (= call!649225 ($colon$colon!2800 (exprs!7442 (Context!13885 lt!2560291)) (ite (or c!1327458 c!1327459) (regTwo!36408 r!11554) r!11554)))))

(declare-fun bm!649222 () Bool)

(assert (=> bm!649222 (= call!649227 call!649225)))

(declare-fun b!7113201 () Bool)

(assert (=> b!7113201 (= e!4274642 (set.union call!649226 call!649224))))

(declare-fun b!7113196 () Bool)

(assert (=> b!7113196 (= c!1327458 e!4274639)))

(declare-fun res!2902620 () Bool)

(assert (=> b!7113196 (=> (not res!2902620) (not e!4274639))))

(assert (=> b!7113196 (= res!2902620 (is-Concat!26793 r!11554))))

(assert (=> b!7113196 (= e!4274640 e!4274642)))

(declare-fun d!2220638 () Bool)

(declare-fun c!1327457 () Bool)

(assert (=> d!2220638 (= c!1327457 (and (is-ElementMatch!17948 r!11554) (= (c!1327429 r!11554) a!1901)))))

(assert (=> d!2220638 (= (derivationStepZipperDown!2455 r!11554 (Context!13885 lt!2560291) a!1901) e!4274643)))

(declare-fun bm!649223 () Bool)

(assert (=> bm!649223 (= call!649223 call!649224)))

(declare-fun b!7113202 () Bool)

(assert (=> b!7113202 (= e!4274638 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220638 c!1327457) b!7113193))

(assert (= (and d!2220638 (not c!1327457)) b!7113200))

(assert (= (and b!7113200 c!1327456) b!7113199))

(assert (= (and b!7113200 (not c!1327456)) b!7113196))

(assert (= (and b!7113196 res!2902620) b!7113195))

(assert (= (and b!7113196 c!1327458) b!7113201))

(assert (= (and b!7113196 (not c!1327458)) b!7113194))

(assert (= (and b!7113194 c!1327459) b!7113192))

(assert (= (and b!7113194 (not c!1327459)) b!7113197))

(assert (= (and b!7113197 c!1327455) b!7113198))

(assert (= (and b!7113197 (not c!1327455)) b!7113202))

(assert (= (or b!7113192 b!7113198) bm!649222))

(assert (= (or b!7113192 b!7113198) bm!649223))

(assert (= (or b!7113201 bm!649223) bm!649218))

(assert (= (or b!7113201 bm!649222) bm!649221))

(assert (= (or b!7113199 bm!649218) bm!649220))

(assert (= (or b!7113199 b!7113201) bm!649219))

(assert (=> b!7113195 m!7833446))

(declare-fun m!7833500 () Bool)

(assert (=> bm!649220 m!7833500))

(declare-fun m!7833502 () Bool)

(assert (=> b!7113193 m!7833502))

(declare-fun m!7833504 () Bool)

(assert (=> bm!649221 m!7833504))

(declare-fun m!7833506 () Bool)

(assert (=> bm!649219 m!7833506))

(assert (=> b!7113057 d!2220638))

(declare-fun b!7113203 () Bool)

(declare-fun e!4274647 () (Set Context!13884))

(declare-fun call!649229 () (Set Context!13884))

(assert (=> b!7113203 (= e!4274647 call!649229)))

(declare-fun b!7113204 () Bool)

(declare-fun e!4274649 () (Set Context!13884))

(assert (=> b!7113204 (= e!4274649 (set.insert (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (as set.empty (Set Context!13884))))))

(declare-fun bm!649224 () Bool)

(declare-fun call!649230 () (Set Context!13884))

(declare-fun call!649234 () (Set Context!13884))

(assert (=> bm!649224 (= call!649230 call!649234)))

(declare-fun b!7113205 () Bool)

(declare-fun e!4274648 () (Set Context!13884))

(assert (=> b!7113205 (= e!4274648 e!4274647)))

(declare-fun c!1327464 () Bool)

(assert (=> b!7113205 (= c!1327464 (is-Concat!26793 (regOne!36408 r!11554)))))

(declare-fun call!649232 () (Set Context!13884))

(declare-fun call!649231 () List!68909)

(declare-fun bm!649225 () Bool)

(declare-fun c!1327461 () Bool)

(assert (=> bm!649225 (= call!649232 (derivationStepZipperDown!2455 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))) (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231)) a!1901))))

(declare-fun b!7113206 () Bool)

(declare-fun e!4274645 () Bool)

(assert (=> b!7113206 (= e!4274645 (nullable!7585 (regOne!36408 (regOne!36408 r!11554))))))

(declare-fun b!7113208 () Bool)

(declare-fun c!1327460 () Bool)

(assert (=> b!7113208 (= c!1327460 (is-Star!17948 (regOne!36408 r!11554)))))

(declare-fun e!4274644 () (Set Context!13884))

(assert (=> b!7113208 (= e!4274647 e!4274644)))

(declare-fun call!649233 () List!68909)

(declare-fun bm!649226 () Bool)

(declare-fun c!1327463 () Bool)

(assert (=> bm!649226 (= call!649234 (derivationStepZipperDown!2455 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))) (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233)) a!1901))))

(declare-fun b!7113209 () Bool)

(assert (=> b!7113209 (= e!4274644 call!649229)))

(declare-fun b!7113210 () Bool)

(declare-fun e!4274646 () (Set Context!13884))

(assert (=> b!7113210 (= e!4274646 (set.union call!649232 call!649234))))

(declare-fun b!7113211 () Bool)

(assert (=> b!7113211 (= e!4274649 e!4274646)))

(assert (=> b!7113211 (= c!1327461 (is-Union!17948 (regOne!36408 r!11554)))))

(declare-fun bm!649227 () Bool)

(assert (=> bm!649227 (= call!649231 ($colon$colon!2800 (exprs!7442 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554)))) (ite (or c!1327463 c!1327464) (regTwo!36408 (regOne!36408 r!11554)) (regOne!36408 r!11554))))))

(declare-fun bm!649228 () Bool)

(assert (=> bm!649228 (= call!649233 call!649231)))

(declare-fun b!7113212 () Bool)

(assert (=> b!7113212 (= e!4274648 (set.union call!649232 call!649230))))

(declare-fun b!7113207 () Bool)

(assert (=> b!7113207 (= c!1327463 e!4274645)))

(declare-fun res!2902621 () Bool)

(assert (=> b!7113207 (=> (not res!2902621) (not e!4274645))))

(assert (=> b!7113207 (= res!2902621 (is-Concat!26793 (regOne!36408 r!11554)))))

(assert (=> b!7113207 (= e!4274646 e!4274648)))

(declare-fun d!2220648 () Bool)

(declare-fun c!1327462 () Bool)

(assert (=> d!2220648 (= c!1327462 (and (is-ElementMatch!17948 (regOne!36408 r!11554)) (= (c!1327429 (regOne!36408 r!11554)) a!1901)))))

(assert (=> d!2220648 (= (derivationStepZipperDown!2455 (regOne!36408 r!11554) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) a!1901) e!4274649)))

(declare-fun bm!649229 () Bool)

(assert (=> bm!649229 (= call!649229 call!649230)))

(declare-fun b!7113213 () Bool)

(assert (=> b!7113213 (= e!4274644 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220648 c!1327462) b!7113204))

(assert (= (and d!2220648 (not c!1327462)) b!7113211))

(assert (= (and b!7113211 c!1327461) b!7113210))

(assert (= (and b!7113211 (not c!1327461)) b!7113207))

(assert (= (and b!7113207 res!2902621) b!7113206))

(assert (= (and b!7113207 c!1327463) b!7113212))

(assert (= (and b!7113207 (not c!1327463)) b!7113205))

(assert (= (and b!7113205 c!1327464) b!7113203))

(assert (= (and b!7113205 (not c!1327464)) b!7113208))

(assert (= (and b!7113208 c!1327460) b!7113209))

(assert (= (and b!7113208 (not c!1327460)) b!7113213))

(assert (= (or b!7113203 b!7113209) bm!649228))

(assert (= (or b!7113203 b!7113209) bm!649229))

(assert (= (or b!7113212 bm!649229) bm!649224))

(assert (= (or b!7113212 bm!649228) bm!649227))

(assert (= (or b!7113210 bm!649224) bm!649226))

(assert (= (or b!7113210 b!7113212) bm!649225))

(declare-fun m!7833508 () Bool)

(assert (=> b!7113206 m!7833508))

(declare-fun m!7833510 () Bool)

(assert (=> bm!649226 m!7833510))

(declare-fun m!7833512 () Bool)

(assert (=> b!7113204 m!7833512))

(declare-fun m!7833514 () Bool)

(assert (=> bm!649227 m!7833514))

(declare-fun m!7833516 () Bool)

(assert (=> bm!649225 m!7833516))

(assert (=> b!7113057 d!2220648))

(declare-fun d!2220650 () Bool)

(assert (=> d!2220650 (= ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554)) (Cons!68785 (regTwo!36408 r!11554) lt!2560291))))

(assert (=> b!7113057 d!2220650))

(declare-fun bm!649230 () Bool)

(declare-fun call!649236 () Bool)

(declare-fun call!649235 () Bool)

(assert (=> bm!649230 (= call!649236 call!649235)))

(declare-fun b!7113214 () Bool)

(declare-fun e!4274654 () Bool)

(assert (=> b!7113214 (= e!4274654 call!649235)))

(declare-fun d!2220652 () Bool)

(declare-fun res!2902623 () Bool)

(declare-fun e!4274650 () Bool)

(assert (=> d!2220652 (=> res!2902623 e!4274650)))

(assert (=> d!2220652 (= res!2902623 (is-ElementMatch!17948 (regTwo!36408 r!11554)))))

(assert (=> d!2220652 (= (validRegex!9221 (regTwo!36408 r!11554)) e!4274650)))

(declare-fun b!7113215 () Bool)

(declare-fun e!4274653 () Bool)

(declare-fun e!4274655 () Bool)

(assert (=> b!7113215 (= e!4274653 e!4274655)))

(declare-fun res!2902624 () Bool)

(assert (=> b!7113215 (=> (not res!2902624) (not e!4274655))))

(assert (=> b!7113215 (= res!2902624 call!649236)))

(declare-fun b!7113216 () Bool)

(declare-fun res!2902622 () Bool)

(assert (=> b!7113216 (=> res!2902622 e!4274653)))

(assert (=> b!7113216 (= res!2902622 (not (is-Concat!26793 (regTwo!36408 r!11554))))))

(declare-fun e!4274651 () Bool)

(assert (=> b!7113216 (= e!4274651 e!4274653)))

(declare-fun b!7113217 () Bool)

(declare-fun e!4274652 () Bool)

(assert (=> b!7113217 (= e!4274652 e!4274651)))

(declare-fun c!1327465 () Bool)

(assert (=> b!7113217 (= c!1327465 (is-Union!17948 (regTwo!36408 r!11554)))))

(declare-fun b!7113218 () Bool)

(assert (=> b!7113218 (= e!4274652 e!4274654)))

(declare-fun res!2902625 () Bool)

(assert (=> b!7113218 (= res!2902625 (not (nullable!7585 (reg!18277 (regTwo!36408 r!11554)))))))

(assert (=> b!7113218 (=> (not res!2902625) (not e!4274654))))

(declare-fun b!7113219 () Bool)

(assert (=> b!7113219 (= e!4274650 e!4274652)))

(declare-fun c!1327466 () Bool)

(assert (=> b!7113219 (= c!1327466 (is-Star!17948 (regTwo!36408 r!11554)))))

(declare-fun bm!649231 () Bool)

(assert (=> bm!649231 (= call!649235 (validRegex!9221 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))

(declare-fun b!7113220 () Bool)

(declare-fun e!4274656 () Bool)

(assert (=> b!7113220 (= e!4274656 call!649236)))

(declare-fun b!7113221 () Bool)

(declare-fun call!649237 () Bool)

(assert (=> b!7113221 (= e!4274655 call!649237)))

(declare-fun b!7113222 () Bool)

(declare-fun res!2902626 () Bool)

(assert (=> b!7113222 (=> (not res!2902626) (not e!4274656))))

(assert (=> b!7113222 (= res!2902626 call!649237)))

(assert (=> b!7113222 (= e!4274651 e!4274656)))

(declare-fun bm!649232 () Bool)

(assert (=> bm!649232 (= call!649237 (validRegex!9221 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))

(assert (= (and d!2220652 (not res!2902623)) b!7113219))

(assert (= (and b!7113219 c!1327466) b!7113218))

(assert (= (and b!7113219 (not c!1327466)) b!7113217))

(assert (= (and b!7113218 res!2902625) b!7113214))

(assert (= (and b!7113217 c!1327465) b!7113222))

(assert (= (and b!7113217 (not c!1327465)) b!7113216))

(assert (= (and b!7113222 res!2902626) b!7113220))

(assert (= (and b!7113216 (not res!2902622)) b!7113215))

(assert (= (and b!7113215 res!2902624) b!7113221))

(assert (= (or b!7113222 b!7113221) bm!649232))

(assert (= (or b!7113220 b!7113215) bm!649230))

(assert (= (or b!7113214 bm!649230) bm!649231))

(declare-fun m!7833518 () Bool)

(assert (=> b!7113218 m!7833518))

(declare-fun m!7833520 () Bool)

(assert (=> bm!649231 m!7833520))

(declare-fun m!7833522 () Bool)

(assert (=> bm!649232 m!7833522))

(assert (=> b!7113066 d!2220652))

(declare-fun b!7113240 () Bool)

(declare-fun e!4274665 () List!68909)

(assert (=> b!7113240 (= e!4274665 (Cons!68785 (h!75233 (exprs!7442 c!9994)) (++!16100 (t!382746 (exprs!7442 c!9994)) (exprs!7442 auxCtx!45))))))

(declare-fun d!2220654 () Bool)

(declare-fun e!4274666 () Bool)

(assert (=> d!2220654 e!4274666))

(declare-fun res!2902636 () Bool)

(assert (=> d!2220654 (=> (not res!2902636) (not e!4274666))))

(declare-fun lt!2560305 () List!68909)

(declare-fun content!14028 (List!68909) (Set Regex!17948))

(assert (=> d!2220654 (= res!2902636 (= (content!14028 lt!2560305) (set.union (content!14028 (exprs!7442 c!9994)) (content!14028 (exprs!7442 auxCtx!45)))))))

(assert (=> d!2220654 (= lt!2560305 e!4274665)))

(declare-fun c!1327471 () Bool)

(assert (=> d!2220654 (= c!1327471 (is-Nil!68785 (exprs!7442 c!9994)))))

(assert (=> d!2220654 (= (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)) lt!2560305)))

(declare-fun b!7113242 () Bool)

(assert (=> b!7113242 (= e!4274666 (or (not (= (exprs!7442 auxCtx!45) Nil!68785)) (= lt!2560305 (exprs!7442 c!9994))))))

(declare-fun b!7113239 () Bool)

(assert (=> b!7113239 (= e!4274665 (exprs!7442 auxCtx!45))))

(declare-fun b!7113241 () Bool)

(declare-fun res!2902635 () Bool)

(assert (=> b!7113241 (=> (not res!2902635) (not e!4274666))))

(declare-fun size!41403 (List!68909) Int)

(assert (=> b!7113241 (= res!2902635 (= (size!41403 lt!2560305) (+ (size!41403 (exprs!7442 c!9994)) (size!41403 (exprs!7442 auxCtx!45)))))))

(assert (= (and d!2220654 c!1327471) b!7113239))

(assert (= (and d!2220654 (not c!1327471)) b!7113240))

(assert (= (and d!2220654 res!2902636) b!7113241))

(assert (= (and b!7113241 res!2902635) b!7113242))

(declare-fun m!7833524 () Bool)

(assert (=> b!7113240 m!7833524))

(declare-fun m!7833526 () Bool)

(assert (=> d!2220654 m!7833526))

(declare-fun m!7833528 () Bool)

(assert (=> d!2220654 m!7833528))

(declare-fun m!7833530 () Bool)

(assert (=> d!2220654 m!7833530))

(declare-fun m!7833532 () Bool)

(assert (=> b!7113241 m!7833532))

(declare-fun m!7833534 () Bool)

(assert (=> b!7113241 m!7833534))

(declare-fun m!7833536 () Bool)

(assert (=> b!7113241 m!7833536))

(assert (=> b!7113066 d!2220654))

(declare-fun d!2220656 () Bool)

(assert (=> d!2220656 (forall!16843 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)) lambda!432174)))

(declare-fun lt!2560308 () Unit!162567)

(declare-fun choose!54872 (List!68909 List!68909 Int) Unit!162567)

(assert (=> d!2220656 (= lt!2560308 (choose!54872 (exprs!7442 c!9994) (exprs!7442 auxCtx!45) lambda!432174))))

(assert (=> d!2220656 (forall!16843 (exprs!7442 c!9994) lambda!432174)))

(assert (=> d!2220656 (= (lemmaConcatPreservesForall!1233 (exprs!7442 c!9994) (exprs!7442 auxCtx!45) lambda!432174) lt!2560308)))

(declare-fun bs!1885360 () Bool)

(assert (= bs!1885360 d!2220656))

(assert (=> bs!1885360 m!7833430))

(assert (=> bs!1885360 m!7833430))

(declare-fun m!7833538 () Bool)

(assert (=> bs!1885360 m!7833538))

(declare-fun m!7833540 () Bool)

(assert (=> bs!1885360 m!7833540))

(declare-fun m!7833542 () Bool)

(assert (=> bs!1885360 m!7833542))

(assert (=> b!7113066 d!2220656))

(declare-fun bs!1885361 () Bool)

(declare-fun d!2220658 () Bool)

(assert (= bs!1885361 (and d!2220658 b!7113066)))

(declare-fun lambda!432188 () Int)

(assert (=> bs!1885361 (= lambda!432188 lambda!432174)))

(declare-fun bs!1885362 () Bool)

(assert (= bs!1885362 (and d!2220658 d!2220634)))

(assert (=> bs!1885362 (= lambda!432188 lambda!432182)))

(declare-fun bs!1885363 () Bool)

(assert (= bs!1885363 (and d!2220658 d!2220636)))

(assert (=> bs!1885363 (= lambda!432188 lambda!432183)))

(assert (=> d!2220658 (= (inv!87734 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))) (forall!16843 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))) lambda!432188))))

(declare-fun bs!1885364 () Bool)

(assert (= bs!1885364 d!2220658))

(declare-fun m!7833544 () Bool)

(assert (=> bs!1885364 m!7833544))

(assert (=> b!7113065 d!2220658))

(declare-fun d!2220660 () Bool)

(assert (=> d!2220660 (= ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)) (Cons!68785 (regTwo!36408 r!11554) (exprs!7442 c!9994)))))

(assert (=> b!7113065 d!2220660))

(declare-fun d!2220662 () Bool)

(declare-fun nullableFct!2936 (Regex!17948) Bool)

(assert (=> d!2220662 (= (nullable!7585 (regOne!36408 r!11554)) (nullableFct!2936 (regOne!36408 r!11554)))))

(declare-fun bs!1885365 () Bool)

(assert (= bs!1885365 d!2220662))

(declare-fun m!7833560 () Bool)

(assert (=> bs!1885365 m!7833560))

(assert (=> b!7113059 d!2220662))

(declare-fun b!7113260 () Bool)

(declare-fun e!4274671 () Bool)

(declare-fun tp!1957216 () Bool)

(declare-fun tp!1957215 () Bool)

(assert (=> b!7113260 (= e!4274671 (and tp!1957216 tp!1957215))))

(declare-fun b!7113257 () Bool)

(assert (=> b!7113257 (= e!4274671 tp_is_empty!45129)))

(declare-fun b!7113259 () Bool)

(declare-fun tp!1957214 () Bool)

(assert (=> b!7113259 (= e!4274671 tp!1957214)))

(assert (=> b!7113063 (= tp!1957180 e!4274671)))

(declare-fun b!7113258 () Bool)

(declare-fun tp!1957213 () Bool)

(declare-fun tp!1957217 () Bool)

(assert (=> b!7113258 (= e!4274671 (and tp!1957213 tp!1957217))))

(assert (= (and b!7113063 (is-ElementMatch!17948 (reg!18277 r!11554))) b!7113257))

(assert (= (and b!7113063 (is-Concat!26793 (reg!18277 r!11554))) b!7113258))

(assert (= (and b!7113063 (is-Star!17948 (reg!18277 r!11554))) b!7113259))

(assert (= (and b!7113063 (is-Union!17948 (reg!18277 r!11554))) b!7113260))

(declare-fun b!7113265 () Bool)

(declare-fun e!4274674 () Bool)

(declare-fun tp!1957222 () Bool)

(declare-fun tp!1957223 () Bool)

(assert (=> b!7113265 (= e!4274674 (and tp!1957222 tp!1957223))))

(assert (=> b!7113062 (= tp!1957178 e!4274674)))

(assert (= (and b!7113062 (is-Cons!68785 (exprs!7442 c!9994))) b!7113265))

(declare-fun b!7113269 () Bool)

(declare-fun e!4274675 () Bool)

(declare-fun tp!1957227 () Bool)

(declare-fun tp!1957226 () Bool)

(assert (=> b!7113269 (= e!4274675 (and tp!1957227 tp!1957226))))

(declare-fun b!7113266 () Bool)

(assert (=> b!7113266 (= e!4274675 tp_is_empty!45129)))

(declare-fun b!7113268 () Bool)

(declare-fun tp!1957225 () Bool)

(assert (=> b!7113268 (= e!4274675 tp!1957225)))

(assert (=> b!7113067 (= tp!1957181 e!4274675)))

(declare-fun b!7113267 () Bool)

(declare-fun tp!1957224 () Bool)

(declare-fun tp!1957228 () Bool)

(assert (=> b!7113267 (= e!4274675 (and tp!1957224 tp!1957228))))

(assert (= (and b!7113067 (is-ElementMatch!17948 (regOne!36408 r!11554))) b!7113266))

(assert (= (and b!7113067 (is-Concat!26793 (regOne!36408 r!11554))) b!7113267))

(assert (= (and b!7113067 (is-Star!17948 (regOne!36408 r!11554))) b!7113268))

(assert (= (and b!7113067 (is-Union!17948 (regOne!36408 r!11554))) b!7113269))

(declare-fun b!7113273 () Bool)

(declare-fun e!4274676 () Bool)

(declare-fun tp!1957232 () Bool)

(declare-fun tp!1957231 () Bool)

(assert (=> b!7113273 (= e!4274676 (and tp!1957232 tp!1957231))))

(declare-fun b!7113270 () Bool)

(assert (=> b!7113270 (= e!4274676 tp_is_empty!45129)))

(declare-fun b!7113272 () Bool)

(declare-fun tp!1957230 () Bool)

(assert (=> b!7113272 (= e!4274676 tp!1957230)))

(assert (=> b!7113067 (= tp!1957175 e!4274676)))

(declare-fun b!7113271 () Bool)

(declare-fun tp!1957229 () Bool)

(declare-fun tp!1957233 () Bool)

(assert (=> b!7113271 (= e!4274676 (and tp!1957229 tp!1957233))))

(assert (= (and b!7113067 (is-ElementMatch!17948 (regTwo!36408 r!11554))) b!7113270))

(assert (= (and b!7113067 (is-Concat!26793 (regTwo!36408 r!11554))) b!7113271))

(assert (= (and b!7113067 (is-Star!17948 (regTwo!36408 r!11554))) b!7113272))

(assert (= (and b!7113067 (is-Union!17948 (regTwo!36408 r!11554))) b!7113273))

(declare-fun b!7113277 () Bool)

(declare-fun e!4274677 () Bool)

(declare-fun tp!1957237 () Bool)

(declare-fun tp!1957236 () Bool)

(assert (=> b!7113277 (= e!4274677 (and tp!1957237 tp!1957236))))

(declare-fun b!7113274 () Bool)

(assert (=> b!7113274 (= e!4274677 tp_is_empty!45129)))

(declare-fun b!7113276 () Bool)

(declare-fun tp!1957235 () Bool)

(assert (=> b!7113276 (= e!4274677 tp!1957235)))

(assert (=> b!7113064 (= tp!1957179 e!4274677)))

(declare-fun b!7113275 () Bool)

(declare-fun tp!1957234 () Bool)

(declare-fun tp!1957238 () Bool)

(assert (=> b!7113275 (= e!4274677 (and tp!1957234 tp!1957238))))

(assert (= (and b!7113064 (is-ElementMatch!17948 (regOne!36409 r!11554))) b!7113274))

(assert (= (and b!7113064 (is-Concat!26793 (regOne!36409 r!11554))) b!7113275))

(assert (= (and b!7113064 (is-Star!17948 (regOne!36409 r!11554))) b!7113276))

(assert (= (and b!7113064 (is-Union!17948 (regOne!36409 r!11554))) b!7113277))

(declare-fun b!7113281 () Bool)

(declare-fun e!4274678 () Bool)

(declare-fun tp!1957242 () Bool)

(declare-fun tp!1957241 () Bool)

(assert (=> b!7113281 (= e!4274678 (and tp!1957242 tp!1957241))))

(declare-fun b!7113278 () Bool)

(assert (=> b!7113278 (= e!4274678 tp_is_empty!45129)))

(declare-fun b!7113280 () Bool)

(declare-fun tp!1957240 () Bool)

(assert (=> b!7113280 (= e!4274678 tp!1957240)))

(assert (=> b!7113064 (= tp!1957177 e!4274678)))

(declare-fun b!7113279 () Bool)

(declare-fun tp!1957239 () Bool)

(declare-fun tp!1957243 () Bool)

(assert (=> b!7113279 (= e!4274678 (and tp!1957239 tp!1957243))))

(assert (= (and b!7113064 (is-ElementMatch!17948 (regTwo!36409 r!11554))) b!7113278))

(assert (= (and b!7113064 (is-Concat!26793 (regTwo!36409 r!11554))) b!7113279))

(assert (= (and b!7113064 (is-Star!17948 (regTwo!36409 r!11554))) b!7113280))

(assert (= (and b!7113064 (is-Union!17948 (regTwo!36409 r!11554))) b!7113281))

(declare-fun b!7113282 () Bool)

(declare-fun e!4274679 () Bool)

(declare-fun tp!1957244 () Bool)

(declare-fun tp!1957245 () Bool)

(assert (=> b!7113282 (= e!4274679 (and tp!1957244 tp!1957245))))

(assert (=> b!7113058 (= tp!1957176 e!4274679)))

(assert (= (and b!7113058 (is-Cons!68785 (exprs!7442 auxCtx!45))) b!7113282))

(push 1)

(assert (not d!2220636))

(assert (not b!7113240))

(assert (not b!7113272))

(assert (not d!2220658))

(assert (not bm!649227))

(assert (not b!7113279))

(assert (not bm!649220))

(assert (not b!7113281))

(assert (not b!7113268))

(assert (not b!7113195))

(assert (not bm!649226))

(assert (not b!7113269))

(assert (not b!7113241))

(assert (not b!7113265))

(assert (not b!7113271))

(assert (not bm!649225))

(assert (not bm!649221))

(assert (not bm!649198))

(assert (not bm!649231))

(assert (not b!7113259))

(assert (not d!2220662))

(assert (not d!2220656))

(assert (not b!7113276))

(assert tp_is_empty!45129)

(assert (not d!2220654))

(assert (not b!7113273))

(assert (not b!7113282))

(assert (not d!2220634))

(assert (not b!7113275))

(assert (not b!7113206))

(assert (not b!7113258))

(assert (not b!7113280))

(assert (not b!7113147))

(assert (not b!7113218))

(assert (not b!7113260))

(assert (not b!7113277))

(assert (not bm!649232))

(assert (not b!7113267))

(assert (not bm!649219))

(assert (not bm!649199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649257 () Bool)

(declare-fun call!649263 () Bool)

(declare-fun call!649262 () Bool)

(assert (=> bm!649257 (= call!649263 call!649262)))

(declare-fun b!7113363 () Bool)

(declare-fun e!4274719 () Bool)

(assert (=> b!7113363 (= e!4274719 call!649262)))

(declare-fun d!2220676 () Bool)

(declare-fun res!2902644 () Bool)

(declare-fun e!4274715 () Bool)

(assert (=> d!2220676 (=> res!2902644 e!4274715)))

(assert (=> d!2220676 (= res!2902644 (is-ElementMatch!17948 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))

(assert (=> d!2220676 (= (validRegex!9221 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))) e!4274715)))

(declare-fun b!7113364 () Bool)

(declare-fun e!4274718 () Bool)

(declare-fun e!4274720 () Bool)

(assert (=> b!7113364 (= e!4274718 e!4274720)))

(declare-fun res!2902645 () Bool)

(assert (=> b!7113364 (=> (not res!2902645) (not e!4274720))))

(assert (=> b!7113364 (= res!2902645 call!649263)))

(declare-fun b!7113365 () Bool)

(declare-fun res!2902643 () Bool)

(assert (=> b!7113365 (=> res!2902643 e!4274718)))

(assert (=> b!7113365 (= res!2902643 (not (is-Concat!26793 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554))))))))

(declare-fun e!4274716 () Bool)

(assert (=> b!7113365 (= e!4274716 e!4274718)))

(declare-fun b!7113366 () Bool)

(declare-fun e!4274717 () Bool)

(assert (=> b!7113366 (= e!4274717 e!4274716)))

(declare-fun c!1327493 () Bool)

(assert (=> b!7113366 (= c!1327493 (is-Union!17948 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))

(declare-fun b!7113367 () Bool)

(assert (=> b!7113367 (= e!4274717 e!4274719)))

(declare-fun res!2902646 () Bool)

(assert (=> b!7113367 (= res!2902646 (not (nullable!7585 (reg!18277 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))))

(assert (=> b!7113367 (=> (not res!2902646) (not e!4274719))))

(declare-fun b!7113368 () Bool)

(assert (=> b!7113368 (= e!4274715 e!4274717)))

(declare-fun c!1327494 () Bool)

(assert (=> b!7113368 (= c!1327494 (is-Star!17948 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))

(declare-fun bm!649258 () Bool)

(assert (=> bm!649258 (= call!649262 (validRegex!9221 (ite c!1327494 (reg!18277 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))) (ite c!1327493 (regTwo!36409 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))) (regOne!36408 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554))))))))))

(declare-fun b!7113369 () Bool)

(declare-fun e!4274721 () Bool)

(assert (=> b!7113369 (= e!4274721 call!649263)))

(declare-fun b!7113370 () Bool)

(declare-fun call!649264 () Bool)

(assert (=> b!7113370 (= e!4274720 call!649264)))

(declare-fun b!7113371 () Bool)

(declare-fun res!2902647 () Bool)

(assert (=> b!7113371 (=> (not res!2902647) (not e!4274721))))

(assert (=> b!7113371 (= res!2902647 call!649264)))

(assert (=> b!7113371 (= e!4274716 e!4274721)))

(declare-fun bm!649259 () Bool)

(assert (=> bm!649259 (= call!649264 (validRegex!9221 (ite c!1327493 (regOne!36409 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))) (regTwo!36408 (ite c!1327440 (reg!18277 r!11554) (ite c!1327439 (regTwo!36409 r!11554) (regOne!36408 r!11554)))))))))

(assert (= (and d!2220676 (not res!2902644)) b!7113368))

(assert (= (and b!7113368 c!1327494) b!7113367))

(assert (= (and b!7113368 (not c!1327494)) b!7113366))

(assert (= (and b!7113367 res!2902646) b!7113363))

(assert (= (and b!7113366 c!1327493) b!7113371))

(assert (= (and b!7113366 (not c!1327493)) b!7113365))

(assert (= (and b!7113371 res!2902647) b!7113369))

(assert (= (and b!7113365 (not res!2902643)) b!7113364))

(assert (= (and b!7113364 res!2902645) b!7113370))

(assert (= (or b!7113371 b!7113370) bm!649259))

(assert (= (or b!7113369 b!7113364) bm!649257))

(assert (= (or b!7113363 bm!649257) bm!649258))

(declare-fun m!7833588 () Bool)

(assert (=> b!7113367 m!7833588))

(declare-fun m!7833590 () Bool)

(assert (=> bm!649258 m!7833590))

(declare-fun m!7833592 () Bool)

(assert (=> bm!649259 m!7833592))

(assert (=> bm!649198 d!2220676))

(declare-fun d!2220678 () Bool)

(declare-fun c!1327497 () Bool)

(assert (=> d!2220678 (= c!1327497 (is-Nil!68785 lt!2560305))))

(declare-fun e!4274724 () (Set Regex!17948))

(assert (=> d!2220678 (= (content!14028 lt!2560305) e!4274724)))

(declare-fun b!7113376 () Bool)

(assert (=> b!7113376 (= e!4274724 (as set.empty (Set Regex!17948)))))

(declare-fun b!7113377 () Bool)

(assert (=> b!7113377 (= e!4274724 (set.union (set.insert (h!75233 lt!2560305) (as set.empty (Set Regex!17948))) (content!14028 (t!382746 lt!2560305))))))

(assert (= (and d!2220678 c!1327497) b!7113376))

(assert (= (and d!2220678 (not c!1327497)) b!7113377))

(declare-fun m!7833594 () Bool)

(assert (=> b!7113377 m!7833594))

(declare-fun m!7833596 () Bool)

(assert (=> b!7113377 m!7833596))

(assert (=> d!2220654 d!2220678))

(declare-fun d!2220680 () Bool)

(declare-fun c!1327498 () Bool)

(assert (=> d!2220680 (= c!1327498 (is-Nil!68785 (exprs!7442 c!9994)))))

(declare-fun e!4274725 () (Set Regex!17948))

(assert (=> d!2220680 (= (content!14028 (exprs!7442 c!9994)) e!4274725)))

(declare-fun b!7113378 () Bool)

(assert (=> b!7113378 (= e!4274725 (as set.empty (Set Regex!17948)))))

(declare-fun b!7113379 () Bool)

(assert (=> b!7113379 (= e!4274725 (set.union (set.insert (h!75233 (exprs!7442 c!9994)) (as set.empty (Set Regex!17948))) (content!14028 (t!382746 (exprs!7442 c!9994)))))))

(assert (= (and d!2220680 c!1327498) b!7113378))

(assert (= (and d!2220680 (not c!1327498)) b!7113379))

(declare-fun m!7833598 () Bool)

(assert (=> b!7113379 m!7833598))

(declare-fun m!7833600 () Bool)

(assert (=> b!7113379 m!7833600))

(assert (=> d!2220654 d!2220680))

(declare-fun d!2220682 () Bool)

(declare-fun c!1327499 () Bool)

(assert (=> d!2220682 (= c!1327499 (is-Nil!68785 (exprs!7442 auxCtx!45)))))

(declare-fun e!4274726 () (Set Regex!17948))

(assert (=> d!2220682 (= (content!14028 (exprs!7442 auxCtx!45)) e!4274726)))

(declare-fun b!7113380 () Bool)

(assert (=> b!7113380 (= e!4274726 (as set.empty (Set Regex!17948)))))

(declare-fun b!7113381 () Bool)

(assert (=> b!7113381 (= e!4274726 (set.union (set.insert (h!75233 (exprs!7442 auxCtx!45)) (as set.empty (Set Regex!17948))) (content!14028 (t!382746 (exprs!7442 auxCtx!45)))))))

(assert (= (and d!2220682 c!1327499) b!7113380))

(assert (= (and d!2220682 (not c!1327499)) b!7113381))

(declare-fun m!7833602 () Bool)

(assert (=> b!7113381 m!7833602))

(declare-fun m!7833604 () Bool)

(assert (=> b!7113381 m!7833604))

(assert (=> d!2220654 d!2220682))

(declare-fun b!7113382 () Bool)

(declare-fun e!4274730 () (Set Context!13884))

(declare-fun call!649265 () (Set Context!13884))

(assert (=> b!7113382 (= e!4274730 call!649265)))

(declare-fun e!4274732 () (Set Context!13884))

(declare-fun b!7113383 () Bool)

(assert (=> b!7113383 (= e!4274732 (set.insert (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233)) (as set.empty (Set Context!13884))))))

(declare-fun bm!649260 () Bool)

(declare-fun call!649266 () (Set Context!13884))

(declare-fun call!649270 () (Set Context!13884))

(assert (=> bm!649260 (= call!649266 call!649270)))

(declare-fun b!7113384 () Bool)

(declare-fun e!4274731 () (Set Context!13884))

(assert (=> b!7113384 (= e!4274731 e!4274730)))

(declare-fun c!1327504 () Bool)

(assert (=> b!7113384 (= c!1327504 (is-Concat!26793 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))))))

(declare-fun bm!649261 () Bool)

(declare-fun c!1327501 () Bool)

(declare-fun call!649267 () List!68909)

(declare-fun call!649268 () (Set Context!13884))

(assert (=> bm!649261 (= call!649268 (derivationStepZipperDown!2455 (ite c!1327501 (regOne!36409 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (regOne!36408 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))))) (ite c!1327501 (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233)) (Context!13885 call!649267)) a!1901))))

(declare-fun e!4274728 () Bool)

(declare-fun b!7113385 () Bool)

(assert (=> b!7113385 (= e!4274728 (nullable!7585 (regOne!36408 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))))))))

(declare-fun b!7113387 () Bool)

(declare-fun c!1327500 () Bool)

(assert (=> b!7113387 (= c!1327500 (is-Star!17948 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))))))

(declare-fun e!4274727 () (Set Context!13884))

(assert (=> b!7113387 (= e!4274730 e!4274727)))

(declare-fun c!1327503 () Bool)

(declare-fun call!649269 () List!68909)

(declare-fun bm!649262 () Bool)

(assert (=> bm!649262 (= call!649270 (derivationStepZipperDown!2455 (ite c!1327501 (regTwo!36409 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (ite c!1327503 (regTwo!36408 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (ite c!1327504 (regOne!36408 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (reg!18277 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))))))) (ite (or c!1327501 c!1327503) (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233)) (Context!13885 call!649269)) a!1901))))

(declare-fun b!7113388 () Bool)

(assert (=> b!7113388 (= e!4274727 call!649265)))

(declare-fun b!7113389 () Bool)

(declare-fun e!4274729 () (Set Context!13884))

(assert (=> b!7113389 (= e!4274729 (set.union call!649268 call!649270))))

(declare-fun b!7113390 () Bool)

(assert (=> b!7113390 (= e!4274732 e!4274729)))

(assert (=> b!7113390 (= c!1327501 (is-Union!17948 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))))))

(declare-fun bm!649263 () Bool)

(assert (=> bm!649263 (= call!649267 ($colon$colon!2800 (exprs!7442 (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233))) (ite (or c!1327503 c!1327504) (regTwo!36408 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))))))))

(declare-fun bm!649264 () Bool)

(assert (=> bm!649264 (= call!649269 call!649267)))

(declare-fun b!7113391 () Bool)

(assert (=> b!7113391 (= e!4274731 (set.union call!649268 call!649266))))

(declare-fun b!7113386 () Bool)

(assert (=> b!7113386 (= c!1327503 e!4274728)))

(declare-fun res!2902648 () Bool)

(assert (=> b!7113386 (=> (not res!2902648) (not e!4274728))))

(assert (=> b!7113386 (= res!2902648 (is-Concat!26793 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))))))

(assert (=> b!7113386 (= e!4274729 e!4274731)))

(declare-fun d!2220684 () Bool)

(declare-fun c!1327502 () Bool)

(assert (=> d!2220684 (= c!1327502 (and (is-ElementMatch!17948 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) (= (c!1327429 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554)))))) a!1901)))))

(assert (=> d!2220684 (= (derivationStepZipperDown!2455 (ite c!1327461 (regTwo!36409 (regOne!36408 r!11554)) (ite c!1327463 (regTwo!36408 (regOne!36408 r!11554)) (ite c!1327464 (regOne!36408 (regOne!36408 r!11554)) (reg!18277 (regOne!36408 r!11554))))) (ite (or c!1327461 c!1327463) (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649233)) a!1901) e!4274732)))

(declare-fun bm!649265 () Bool)

(assert (=> bm!649265 (= call!649265 call!649266)))

(declare-fun b!7113392 () Bool)

(assert (=> b!7113392 (= e!4274727 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220684 c!1327502) b!7113383))

(assert (= (and d!2220684 (not c!1327502)) b!7113390))

(assert (= (and b!7113390 c!1327501) b!7113389))

(assert (= (and b!7113390 (not c!1327501)) b!7113386))

(assert (= (and b!7113386 res!2902648) b!7113385))

(assert (= (and b!7113386 c!1327503) b!7113391))

(assert (= (and b!7113386 (not c!1327503)) b!7113384))

(assert (= (and b!7113384 c!1327504) b!7113382))

(assert (= (and b!7113384 (not c!1327504)) b!7113387))

(assert (= (and b!7113387 c!1327500) b!7113388))

(assert (= (and b!7113387 (not c!1327500)) b!7113392))

(assert (= (or b!7113382 b!7113388) bm!649264))

(assert (= (or b!7113382 b!7113388) bm!649265))

(assert (= (or b!7113391 bm!649265) bm!649260))

(assert (= (or b!7113391 bm!649264) bm!649263))

(assert (= (or b!7113389 bm!649260) bm!649262))

(assert (= (or b!7113389 b!7113391) bm!649261))

(declare-fun m!7833606 () Bool)

(assert (=> b!7113385 m!7833606))

(declare-fun m!7833608 () Bool)

(assert (=> bm!649262 m!7833608))

(declare-fun m!7833610 () Bool)

(assert (=> b!7113383 m!7833610))

(declare-fun m!7833612 () Bool)

(assert (=> bm!649263 m!7833612))

(declare-fun m!7833614 () Bool)

(assert (=> bm!649261 m!7833614))

(assert (=> bm!649226 d!2220684))

(declare-fun d!2220686 () Bool)

(assert (=> d!2220686 (= (nullable!7585 (reg!18277 r!11554)) (nullableFct!2936 (reg!18277 r!11554)))))

(declare-fun bs!1885371 () Bool)

(assert (= bs!1885371 d!2220686))

(declare-fun m!7833616 () Bool)

(assert (=> bs!1885371 m!7833616))

(assert (=> b!7113147 d!2220686))

(declare-fun b!7113393 () Bool)

(declare-fun e!4274736 () (Set Context!13884))

(declare-fun call!649271 () (Set Context!13884))

(assert (=> b!7113393 (= e!4274736 call!649271)))

(declare-fun b!7113394 () Bool)

(declare-fun e!4274738 () (Set Context!13884))

(assert (=> b!7113394 (= e!4274738 (set.insert (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227)) (as set.empty (Set Context!13884))))))

(declare-fun bm!649266 () Bool)

(declare-fun call!649272 () (Set Context!13884))

(declare-fun call!649276 () (Set Context!13884))

(assert (=> bm!649266 (= call!649272 call!649276)))

(declare-fun b!7113395 () Bool)

(declare-fun e!4274737 () (Set Context!13884))

(assert (=> b!7113395 (= e!4274737 e!4274736)))

(declare-fun c!1327509 () Bool)

(assert (=> b!7113395 (= c!1327509 (is-Concat!26793 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))))))

(declare-fun call!649273 () List!68909)

(declare-fun c!1327506 () Bool)

(declare-fun call!649274 () (Set Context!13884))

(declare-fun bm!649267 () Bool)

(assert (=> bm!649267 (= call!649274 (derivationStepZipperDown!2455 (ite c!1327506 (regOne!36409 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (regOne!36408 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))))) (ite c!1327506 (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227)) (Context!13885 call!649273)) a!1901))))

(declare-fun b!7113396 () Bool)

(declare-fun e!4274734 () Bool)

(assert (=> b!7113396 (= e!4274734 (nullable!7585 (regOne!36408 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))))))))

(declare-fun b!7113398 () Bool)

(declare-fun c!1327505 () Bool)

(assert (=> b!7113398 (= c!1327505 (is-Star!17948 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))))))

(declare-fun e!4274733 () (Set Context!13884))

(assert (=> b!7113398 (= e!4274736 e!4274733)))

(declare-fun call!649275 () List!68909)

(declare-fun bm!649268 () Bool)

(declare-fun c!1327508 () Bool)

(assert (=> bm!649268 (= call!649276 (derivationStepZipperDown!2455 (ite c!1327506 (regTwo!36409 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (ite c!1327508 (regTwo!36408 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (ite c!1327509 (regOne!36408 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (reg!18277 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))))))) (ite (or c!1327506 c!1327508) (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227)) (Context!13885 call!649275)) a!1901))))

(declare-fun b!7113399 () Bool)

(assert (=> b!7113399 (= e!4274733 call!649271)))

(declare-fun b!7113400 () Bool)

(declare-fun e!4274735 () (Set Context!13884))

(assert (=> b!7113400 (= e!4274735 (set.union call!649274 call!649276))))

(declare-fun b!7113401 () Bool)

(assert (=> b!7113401 (= e!4274738 e!4274735)))

(assert (=> b!7113401 (= c!1327506 (is-Union!17948 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))))))

(declare-fun bm!649269 () Bool)

(assert (=> bm!649269 (= call!649273 ($colon$colon!2800 (exprs!7442 (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227))) (ite (or c!1327508 c!1327509) (regTwo!36408 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))))))))

(declare-fun bm!649270 () Bool)

(assert (=> bm!649270 (= call!649275 call!649273)))

(declare-fun b!7113402 () Bool)

(assert (=> b!7113402 (= e!4274737 (set.union call!649274 call!649272))))

(declare-fun b!7113397 () Bool)

(assert (=> b!7113397 (= c!1327508 e!4274734)))

(declare-fun res!2902649 () Bool)

(assert (=> b!7113397 (=> (not res!2902649) (not e!4274734))))

(assert (=> b!7113397 (= res!2902649 (is-Concat!26793 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))))))

(assert (=> b!7113397 (= e!4274735 e!4274737)))

(declare-fun c!1327507 () Bool)

(declare-fun d!2220688 () Bool)

(assert (=> d!2220688 (= c!1327507 (and (is-ElementMatch!17948 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) (= (c!1327429 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554))))) a!1901)))))

(assert (=> d!2220688 (= (derivationStepZipperDown!2455 (ite c!1327456 (regTwo!36409 r!11554) (ite c!1327458 (regTwo!36408 r!11554) (ite c!1327459 (regOne!36408 r!11554) (reg!18277 r!11554)))) (ite (or c!1327456 c!1327458) (Context!13885 lt!2560291) (Context!13885 call!649227)) a!1901) e!4274738)))

(declare-fun bm!649271 () Bool)

(assert (=> bm!649271 (= call!649271 call!649272)))

(declare-fun b!7113403 () Bool)

(assert (=> b!7113403 (= e!4274733 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220688 c!1327507) b!7113394))

(assert (= (and d!2220688 (not c!1327507)) b!7113401))

(assert (= (and b!7113401 c!1327506) b!7113400))

(assert (= (and b!7113401 (not c!1327506)) b!7113397))

(assert (= (and b!7113397 res!2902649) b!7113396))

(assert (= (and b!7113397 c!1327508) b!7113402))

(assert (= (and b!7113397 (not c!1327508)) b!7113395))

(assert (= (and b!7113395 c!1327509) b!7113393))

(assert (= (and b!7113395 (not c!1327509)) b!7113398))

(assert (= (and b!7113398 c!1327505) b!7113399))

(assert (= (and b!7113398 (not c!1327505)) b!7113403))

(assert (= (or b!7113393 b!7113399) bm!649270))

(assert (= (or b!7113393 b!7113399) bm!649271))

(assert (= (or b!7113402 bm!649271) bm!649266))

(assert (= (or b!7113402 bm!649270) bm!649269))

(assert (= (or b!7113400 bm!649266) bm!649268))

(assert (= (or b!7113400 b!7113402) bm!649267))

(declare-fun m!7833618 () Bool)

(assert (=> b!7113396 m!7833618))

(declare-fun m!7833620 () Bool)

(assert (=> bm!649268 m!7833620))

(declare-fun m!7833622 () Bool)

(assert (=> b!7113394 m!7833622))

(declare-fun m!7833624 () Bool)

(assert (=> bm!649269 m!7833624))

(declare-fun m!7833626 () Bool)

(assert (=> bm!649267 m!7833626))

(assert (=> bm!649220 d!2220688))

(declare-fun bm!649272 () Bool)

(declare-fun call!649278 () Bool)

(declare-fun call!649277 () Bool)

(assert (=> bm!649272 (= call!649278 call!649277)))

(declare-fun b!7113404 () Bool)

(declare-fun e!4274743 () Bool)

(assert (=> b!7113404 (= e!4274743 call!649277)))

(declare-fun d!2220690 () Bool)

(declare-fun res!2902651 () Bool)

(declare-fun e!4274739 () Bool)

(assert (=> d!2220690 (=> res!2902651 e!4274739)))

(assert (=> d!2220690 (= res!2902651 (is-ElementMatch!17948 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))

(assert (=> d!2220690 (= (validRegex!9221 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))) e!4274739)))

(declare-fun b!7113405 () Bool)

(declare-fun e!4274742 () Bool)

(declare-fun e!4274744 () Bool)

(assert (=> b!7113405 (= e!4274742 e!4274744)))

(declare-fun res!2902652 () Bool)

(assert (=> b!7113405 (=> (not res!2902652) (not e!4274744))))

(assert (=> b!7113405 (= res!2902652 call!649278)))

(declare-fun b!7113406 () Bool)

(declare-fun res!2902650 () Bool)

(assert (=> b!7113406 (=> res!2902650 e!4274742)))

(assert (=> b!7113406 (= res!2902650 (not (is-Concat!26793 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554)))))))))

(declare-fun e!4274740 () Bool)

(assert (=> b!7113406 (= e!4274740 e!4274742)))

(declare-fun b!7113407 () Bool)

(declare-fun e!4274741 () Bool)

(assert (=> b!7113407 (= e!4274741 e!4274740)))

(declare-fun c!1327510 () Bool)

(assert (=> b!7113407 (= c!1327510 (is-Union!17948 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))

(declare-fun b!7113408 () Bool)

(assert (=> b!7113408 (= e!4274741 e!4274743)))

(declare-fun res!2902653 () Bool)

(assert (=> b!7113408 (= res!2902653 (not (nullable!7585 (reg!18277 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))))

(assert (=> b!7113408 (=> (not res!2902653) (not e!4274743))))

(declare-fun b!7113409 () Bool)

(assert (=> b!7113409 (= e!4274739 e!4274741)))

(declare-fun c!1327511 () Bool)

(assert (=> b!7113409 (= c!1327511 (is-Star!17948 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))

(declare-fun bm!649273 () Bool)

(assert (=> bm!649273 (= call!649277 (validRegex!9221 (ite c!1327511 (reg!18277 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))) (ite c!1327510 (regTwo!36409 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))) (regOne!36408 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554)))))))))))

(declare-fun b!7113410 () Bool)

(declare-fun e!4274745 () Bool)

(assert (=> b!7113410 (= e!4274745 call!649278)))

(declare-fun b!7113411 () Bool)

(declare-fun call!649279 () Bool)

(assert (=> b!7113411 (= e!4274744 call!649279)))

(declare-fun b!7113412 () Bool)

(declare-fun res!2902654 () Bool)

(assert (=> b!7113412 (=> (not res!2902654) (not e!4274745))))

(assert (=> b!7113412 (= res!2902654 call!649279)))

(assert (=> b!7113412 (= e!4274740 e!4274745)))

(declare-fun bm!649274 () Bool)

(assert (=> bm!649274 (= call!649279 (validRegex!9221 (ite c!1327510 (regOne!36409 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))) (regTwo!36408 (ite c!1327466 (reg!18277 (regTwo!36408 r!11554)) (ite c!1327465 (regTwo!36409 (regTwo!36408 r!11554)) (regOne!36408 (regTwo!36408 r!11554))))))))))

(assert (= (and d!2220690 (not res!2902651)) b!7113409))

(assert (= (and b!7113409 c!1327511) b!7113408))

(assert (= (and b!7113409 (not c!1327511)) b!7113407))

(assert (= (and b!7113408 res!2902653) b!7113404))

(assert (= (and b!7113407 c!1327510) b!7113412))

(assert (= (and b!7113407 (not c!1327510)) b!7113406))

(assert (= (and b!7113412 res!2902654) b!7113410))

(assert (= (and b!7113406 (not res!2902650)) b!7113405))

(assert (= (and b!7113405 res!2902652) b!7113411))

(assert (= (or b!7113412 b!7113411) bm!649274))

(assert (= (or b!7113410 b!7113405) bm!649272))

(assert (= (or b!7113404 bm!649272) bm!649273))

(declare-fun m!7833628 () Bool)

(assert (=> b!7113408 m!7833628))

(declare-fun m!7833630 () Bool)

(assert (=> bm!649273 m!7833630))

(declare-fun m!7833632 () Bool)

(assert (=> bm!649274 m!7833632))

(assert (=> bm!649231 d!2220690))

(declare-fun d!2220692 () Bool)

(declare-fun res!2902659 () Bool)

(declare-fun e!4274750 () Bool)

(assert (=> d!2220692 (=> res!2902659 e!4274750)))

(assert (=> d!2220692 (= res!2902659 (is-Nil!68785 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45))))))

(assert (=> d!2220692 (= (forall!16843 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)) lambda!432174) e!4274750)))

(declare-fun b!7113417 () Bool)

(declare-fun e!4274751 () Bool)

(assert (=> b!7113417 (= e!4274750 e!4274751)))

(declare-fun res!2902660 () Bool)

(assert (=> b!7113417 (=> (not res!2902660) (not e!4274751))))

(declare-fun dynLambda!28058 (Int Regex!17948) Bool)

(assert (=> b!7113417 (= res!2902660 (dynLambda!28058 lambda!432174 (h!75233 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)))))))

(declare-fun b!7113418 () Bool)

(assert (=> b!7113418 (= e!4274751 (forall!16843 (t!382746 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45))) lambda!432174))))

(assert (= (and d!2220692 (not res!2902659)) b!7113417))

(assert (= (and b!7113417 res!2902660) b!7113418))

(declare-fun b_lambda!271457 () Bool)

(assert (=> (not b_lambda!271457) (not b!7113417)))

(declare-fun m!7833634 () Bool)

(assert (=> b!7113417 m!7833634))

(declare-fun m!7833636 () Bool)

(assert (=> b!7113418 m!7833636))

(assert (=> d!2220656 d!2220692))

(assert (=> d!2220656 d!2220654))

(declare-fun d!2220694 () Bool)

(assert (=> d!2220694 (forall!16843 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)) lambda!432174)))

(assert (=> d!2220694 true))

(declare-fun _$78!701 () Unit!162567)

(assert (=> d!2220694 (= (choose!54872 (exprs!7442 c!9994) (exprs!7442 auxCtx!45) lambda!432174) _$78!701)))

(declare-fun bs!1885372 () Bool)

(assert (= bs!1885372 d!2220694))

(assert (=> bs!1885372 m!7833430))

(assert (=> bs!1885372 m!7833430))

(assert (=> bs!1885372 m!7833538))

(assert (=> d!2220656 d!2220694))

(declare-fun d!2220696 () Bool)

(declare-fun res!2902661 () Bool)

(declare-fun e!4274752 () Bool)

(assert (=> d!2220696 (=> res!2902661 e!4274752)))

(assert (=> d!2220696 (= res!2902661 (is-Nil!68785 (exprs!7442 c!9994)))))

(assert (=> d!2220696 (= (forall!16843 (exprs!7442 c!9994) lambda!432174) e!4274752)))

(declare-fun b!7113419 () Bool)

(declare-fun e!4274753 () Bool)

(assert (=> b!7113419 (= e!4274752 e!4274753)))

(declare-fun res!2902662 () Bool)

(assert (=> b!7113419 (=> (not res!2902662) (not e!4274753))))

(assert (=> b!7113419 (= res!2902662 (dynLambda!28058 lambda!432174 (h!75233 (exprs!7442 c!9994))))))

(declare-fun b!7113420 () Bool)

(assert (=> b!7113420 (= e!4274753 (forall!16843 (t!382746 (exprs!7442 c!9994)) lambda!432174))))

(assert (= (and d!2220696 (not res!2902661)) b!7113419))

(assert (= (and b!7113419 res!2902662) b!7113420))

(declare-fun b_lambda!271459 () Bool)

(assert (=> (not b_lambda!271459) (not b!7113419)))

(declare-fun m!7833638 () Bool)

(assert (=> b!7113419 m!7833638))

(declare-fun m!7833640 () Bool)

(assert (=> b!7113420 m!7833640))

(assert (=> d!2220656 d!2220696))

(declare-fun d!2220698 () Bool)

(assert (=> d!2220698 (= (nullable!7585 (regOne!36408 (regOne!36408 r!11554))) (nullableFct!2936 (regOne!36408 (regOne!36408 r!11554))))))

(declare-fun bs!1885373 () Bool)

(assert (= bs!1885373 d!2220698))

(declare-fun m!7833642 () Bool)

(assert (=> bs!1885373 m!7833642))

(assert (=> b!7113206 d!2220698))

(declare-fun b!7113421 () Bool)

(declare-fun e!4274757 () (Set Context!13884))

(declare-fun call!649280 () (Set Context!13884))

(assert (=> b!7113421 (= e!4274757 call!649280)))

(declare-fun e!4274759 () (Set Context!13884))

(declare-fun b!7113422 () Bool)

(assert (=> b!7113422 (= e!4274759 (set.insert (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231)) (as set.empty (Set Context!13884))))))

(declare-fun bm!649275 () Bool)

(declare-fun call!649281 () (Set Context!13884))

(declare-fun call!649285 () (Set Context!13884))

(assert (=> bm!649275 (= call!649281 call!649285)))

(declare-fun b!7113423 () Bool)

(declare-fun e!4274758 () (Set Context!13884))

(assert (=> b!7113423 (= e!4274758 e!4274757)))

(declare-fun c!1327516 () Bool)

(assert (=> b!7113423 (= c!1327516 (is-Concat!26793 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))))))

(declare-fun call!649282 () List!68909)

(declare-fun bm!649276 () Bool)

(declare-fun call!649283 () (Set Context!13884))

(declare-fun c!1327513 () Bool)

(assert (=> bm!649276 (= call!649283 (derivationStepZipperDown!2455 (ite c!1327513 (regOne!36409 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (regOne!36408 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))))) (ite c!1327513 (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231)) (Context!13885 call!649282)) a!1901))))

(declare-fun b!7113424 () Bool)

(declare-fun e!4274755 () Bool)

(assert (=> b!7113424 (= e!4274755 (nullable!7585 (regOne!36408 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))))))))

(declare-fun b!7113426 () Bool)

(declare-fun c!1327512 () Bool)

(assert (=> b!7113426 (= c!1327512 (is-Star!17948 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))))))

(declare-fun e!4274754 () (Set Context!13884))

(assert (=> b!7113426 (= e!4274757 e!4274754)))

(declare-fun bm!649277 () Bool)

(declare-fun c!1327515 () Bool)

(declare-fun call!649284 () List!68909)

(assert (=> bm!649277 (= call!649285 (derivationStepZipperDown!2455 (ite c!1327513 (regTwo!36409 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (ite c!1327515 (regTwo!36408 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (ite c!1327516 (regOne!36408 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (reg!18277 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))))))) (ite (or c!1327513 c!1327515) (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231)) (Context!13885 call!649284)) a!1901))))

(declare-fun b!7113427 () Bool)

(assert (=> b!7113427 (= e!4274754 call!649280)))

(declare-fun b!7113428 () Bool)

(declare-fun e!4274756 () (Set Context!13884))

(assert (=> b!7113428 (= e!4274756 (set.union call!649283 call!649285))))

(declare-fun b!7113429 () Bool)

(assert (=> b!7113429 (= e!4274759 e!4274756)))

(assert (=> b!7113429 (= c!1327513 (is-Union!17948 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))))))

(declare-fun bm!649278 () Bool)

(assert (=> bm!649278 (= call!649282 ($colon$colon!2800 (exprs!7442 (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231))) (ite (or c!1327515 c!1327516) (regTwo!36408 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))))))))

(declare-fun bm!649279 () Bool)

(assert (=> bm!649279 (= call!649284 call!649282)))

(declare-fun b!7113430 () Bool)

(assert (=> b!7113430 (= e!4274758 (set.union call!649283 call!649281))))

(declare-fun b!7113425 () Bool)

(assert (=> b!7113425 (= c!1327515 e!4274755)))

(declare-fun res!2902663 () Bool)

(assert (=> b!7113425 (=> (not res!2902663) (not e!4274755))))

(assert (=> b!7113425 (= res!2902663 (is-Concat!26793 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))))))

(assert (=> b!7113425 (= e!4274756 e!4274758)))

(declare-fun c!1327514 () Bool)

(declare-fun d!2220700 () Bool)

(assert (=> d!2220700 (= c!1327514 (and (is-ElementMatch!17948 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) (= (c!1327429 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))) a!1901)))))

(assert (=> d!2220700 (= (derivationStepZipperDown!2455 (ite c!1327461 (regOne!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554))) (ite c!1327461 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))) (Context!13885 call!649231)) a!1901) e!4274759)))

(declare-fun bm!649280 () Bool)

(assert (=> bm!649280 (= call!649280 call!649281)))

(declare-fun b!7113431 () Bool)

(assert (=> b!7113431 (= e!4274754 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220700 c!1327514) b!7113422))

(assert (= (and d!2220700 (not c!1327514)) b!7113429))

(assert (= (and b!7113429 c!1327513) b!7113428))

(assert (= (and b!7113429 (not c!1327513)) b!7113425))

(assert (= (and b!7113425 res!2902663) b!7113424))

(assert (= (and b!7113425 c!1327515) b!7113430))

(assert (= (and b!7113425 (not c!1327515)) b!7113423))

(assert (= (and b!7113423 c!1327516) b!7113421))

(assert (= (and b!7113423 (not c!1327516)) b!7113426))

(assert (= (and b!7113426 c!1327512) b!7113427))

(assert (= (and b!7113426 (not c!1327512)) b!7113431))

(assert (= (or b!7113421 b!7113427) bm!649279))

(assert (= (or b!7113421 b!7113427) bm!649280))

(assert (= (or b!7113430 bm!649280) bm!649275))

(assert (= (or b!7113430 bm!649279) bm!649278))

(assert (= (or b!7113428 bm!649275) bm!649277))

(assert (= (or b!7113428 b!7113430) bm!649276))

(declare-fun m!7833644 () Bool)

(assert (=> b!7113424 m!7833644))

(declare-fun m!7833646 () Bool)

(assert (=> bm!649277 m!7833646))

(declare-fun m!7833648 () Bool)

(assert (=> b!7113422 m!7833648))

(declare-fun m!7833650 () Bool)

(assert (=> bm!649278 m!7833650))

(declare-fun m!7833652 () Bool)

(assert (=> bm!649276 m!7833652))

(assert (=> bm!649225 d!2220700))

(declare-fun d!2220702 () Bool)

(assert (=> d!2220702 (= (nullable!7585 (reg!18277 (regTwo!36408 r!11554))) (nullableFct!2936 (reg!18277 (regTwo!36408 r!11554))))))

(declare-fun bs!1885374 () Bool)

(assert (= bs!1885374 d!2220702))

(declare-fun m!7833654 () Bool)

(assert (=> bs!1885374 m!7833654))

(assert (=> b!7113218 d!2220702))

(declare-fun d!2220704 () Bool)

(declare-fun res!2902664 () Bool)

(declare-fun e!4274760 () Bool)

(assert (=> d!2220704 (=> res!2902664 e!4274760)))

(assert (=> d!2220704 (= res!2902664 (is-Nil!68785 (exprs!7442 auxCtx!45)))))

(assert (=> d!2220704 (= (forall!16843 (exprs!7442 auxCtx!45) lambda!432183) e!4274760)))

(declare-fun b!7113432 () Bool)

(declare-fun e!4274761 () Bool)

(assert (=> b!7113432 (= e!4274760 e!4274761)))

(declare-fun res!2902665 () Bool)

(assert (=> b!7113432 (=> (not res!2902665) (not e!4274761))))

(assert (=> b!7113432 (= res!2902665 (dynLambda!28058 lambda!432183 (h!75233 (exprs!7442 auxCtx!45))))))

(declare-fun b!7113433 () Bool)

(assert (=> b!7113433 (= e!4274761 (forall!16843 (t!382746 (exprs!7442 auxCtx!45)) lambda!432183))))

(assert (= (and d!2220704 (not res!2902664)) b!7113432))

(assert (= (and b!7113432 res!2902665) b!7113433))

(declare-fun b_lambda!271461 () Bool)

(assert (=> (not b_lambda!271461) (not b!7113432)))

(declare-fun m!7833656 () Bool)

(assert (=> b!7113432 m!7833656))

(declare-fun m!7833658 () Bool)

(assert (=> b!7113433 m!7833658))

(assert (=> d!2220636 d!2220704))

(declare-fun b!7113434 () Bool)

(declare-fun e!4274765 () (Set Context!13884))

(declare-fun call!649286 () (Set Context!13884))

(assert (=> b!7113434 (= e!4274765 call!649286)))

(declare-fun b!7113435 () Bool)

(declare-fun e!4274767 () (Set Context!13884))

(assert (=> b!7113435 (= e!4274767 (set.insert (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225)) (as set.empty (Set Context!13884))))))

(declare-fun bm!649281 () Bool)

(declare-fun call!649287 () (Set Context!13884))

(declare-fun call!649291 () (Set Context!13884))

(assert (=> bm!649281 (= call!649287 call!649291)))

(declare-fun b!7113436 () Bool)

(declare-fun e!4274766 () (Set Context!13884))

(assert (=> b!7113436 (= e!4274766 e!4274765)))

(declare-fun c!1327521 () Bool)

(assert (=> b!7113436 (= c!1327521 (is-Concat!26793 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))))))

(declare-fun call!649289 () (Set Context!13884))

(declare-fun call!649288 () List!68909)

(declare-fun c!1327518 () Bool)

(declare-fun bm!649282 () Bool)

(assert (=> bm!649282 (= call!649289 (derivationStepZipperDown!2455 (ite c!1327518 (regOne!36409 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (regOne!36408 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)))) (ite c!1327518 (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225)) (Context!13885 call!649288)) a!1901))))

(declare-fun b!7113437 () Bool)

(declare-fun e!4274763 () Bool)

(assert (=> b!7113437 (= e!4274763 (nullable!7585 (regOne!36408 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)))))))

(declare-fun b!7113439 () Bool)

(declare-fun c!1327517 () Bool)

(assert (=> b!7113439 (= c!1327517 (is-Star!17948 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))))))

(declare-fun e!4274762 () (Set Context!13884))

(assert (=> b!7113439 (= e!4274765 e!4274762)))

(declare-fun bm!649283 () Bool)

(declare-fun c!1327520 () Bool)

(declare-fun call!649290 () List!68909)

(assert (=> bm!649283 (= call!649291 (derivationStepZipperDown!2455 (ite c!1327518 (regTwo!36409 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (ite c!1327520 (regTwo!36408 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (ite c!1327521 (regOne!36408 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (reg!18277 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)))))) (ite (or c!1327518 c!1327520) (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225)) (Context!13885 call!649290)) a!1901))))

(declare-fun b!7113440 () Bool)

(assert (=> b!7113440 (= e!4274762 call!649286)))

(declare-fun b!7113441 () Bool)

(declare-fun e!4274764 () (Set Context!13884))

(assert (=> b!7113441 (= e!4274764 (set.union call!649289 call!649291))))

(declare-fun b!7113442 () Bool)

(assert (=> b!7113442 (= e!4274767 e!4274764)))

(assert (=> b!7113442 (= c!1327518 (is-Union!17948 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))))))

(declare-fun bm!649284 () Bool)

(assert (=> bm!649284 (= call!649288 ($colon$colon!2800 (exprs!7442 (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225))) (ite (or c!1327520 c!1327521) (regTwo!36408 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)))))))

(declare-fun bm!649285 () Bool)

(assert (=> bm!649285 (= call!649290 call!649288)))

(declare-fun b!7113443 () Bool)

(assert (=> b!7113443 (= e!4274766 (set.union call!649289 call!649287))))

(declare-fun b!7113438 () Bool)

(assert (=> b!7113438 (= c!1327520 e!4274763)))

(declare-fun res!2902666 () Bool)

(assert (=> b!7113438 (=> (not res!2902666) (not e!4274763))))

(assert (=> b!7113438 (= res!2902666 (is-Concat!26793 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))))))

(assert (=> b!7113438 (= e!4274764 e!4274766)))

(declare-fun c!1327519 () Bool)

(declare-fun d!2220706 () Bool)

(assert (=> d!2220706 (= c!1327519 (and (is-ElementMatch!17948 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) (= (c!1327429 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554))) a!1901)))))

(assert (=> d!2220706 (= (derivationStepZipperDown!2455 (ite c!1327456 (regOne!36409 r!11554) (regOne!36408 r!11554)) (ite c!1327456 (Context!13885 lt!2560291) (Context!13885 call!649225)) a!1901) e!4274767)))

(declare-fun bm!649286 () Bool)

(assert (=> bm!649286 (= call!649286 call!649287)))

(declare-fun b!7113444 () Bool)

(assert (=> b!7113444 (= e!4274762 (as set.empty (Set Context!13884)))))

(assert (= (and d!2220706 c!1327519) b!7113435))

(assert (= (and d!2220706 (not c!1327519)) b!7113442))

(assert (= (and b!7113442 c!1327518) b!7113441))

(assert (= (and b!7113442 (not c!1327518)) b!7113438))

(assert (= (and b!7113438 res!2902666) b!7113437))

(assert (= (and b!7113438 c!1327520) b!7113443))

(assert (= (and b!7113438 (not c!1327520)) b!7113436))

(assert (= (and b!7113436 c!1327521) b!7113434))

(assert (= (and b!7113436 (not c!1327521)) b!7113439))

(assert (= (and b!7113439 c!1327517) b!7113440))

(assert (= (and b!7113439 (not c!1327517)) b!7113444))

(assert (= (or b!7113434 b!7113440) bm!649285))

(assert (= (or b!7113434 b!7113440) bm!649286))

(assert (= (or b!7113443 bm!649286) bm!649281))

(assert (= (or b!7113443 bm!649285) bm!649284))

(assert (= (or b!7113441 bm!649281) bm!649283))

(assert (= (or b!7113441 b!7113443) bm!649282))

(declare-fun m!7833660 () Bool)

(assert (=> b!7113437 m!7833660))

(declare-fun m!7833662 () Bool)

(assert (=> bm!649283 m!7833662))

(declare-fun m!7833664 () Bool)

(assert (=> b!7113435 m!7833664))

(declare-fun m!7833666 () Bool)

(assert (=> bm!649284 m!7833666))

(declare-fun m!7833668 () Bool)

(assert (=> bm!649282 m!7833668))

(assert (=> bm!649219 d!2220706))

(declare-fun b!7113459 () Bool)

(declare-fun e!4274782 () Bool)

(declare-fun e!4274783 () Bool)

(assert (=> b!7113459 (= e!4274782 e!4274783)))

(declare-fun res!2902680 () Bool)

(assert (=> b!7113459 (=> res!2902680 e!4274783)))

(assert (=> b!7113459 (= res!2902680 (is-Star!17948 (regOne!36408 r!11554)))))

(declare-fun bm!649291 () Bool)

(declare-fun call!649297 () Bool)

(declare-fun c!1327524 () Bool)

(assert (=> bm!649291 (= call!649297 (nullable!7585 (ite c!1327524 (regOne!36409 (regOne!36408 r!11554)) (regTwo!36408 (regOne!36408 r!11554)))))))

(declare-fun b!7113460 () Bool)

(declare-fun e!4274784 () Bool)

(assert (=> b!7113460 (= e!4274784 e!4274782)))

(declare-fun res!2902677 () Bool)

(assert (=> b!7113460 (=> (not res!2902677) (not e!4274782))))

(assert (=> b!7113460 (= res!2902677 (and (not (is-EmptyLang!17948 (regOne!36408 r!11554))) (not (is-ElementMatch!17948 (regOne!36408 r!11554)))))))

(declare-fun b!7113461 () Bool)

(declare-fun e!4274781 () Bool)

(declare-fun e!4274785 () Bool)

(assert (=> b!7113461 (= e!4274781 e!4274785)))

(declare-fun res!2902681 () Bool)

(declare-fun call!649296 () Bool)

(assert (=> b!7113461 (= res!2902681 call!649296)))

(assert (=> b!7113461 (=> (not res!2902681) (not e!4274785))))

(declare-fun b!7113462 () Bool)

(assert (=> b!7113462 (= e!4274783 e!4274781)))

(assert (=> b!7113462 (= c!1327524 (is-Union!17948 (regOne!36408 r!11554)))))

(declare-fun d!2220708 () Bool)

(declare-fun res!2902679 () Bool)

(assert (=> d!2220708 (=> res!2902679 e!4274784)))

(assert (=> d!2220708 (= res!2902679 (is-EmptyExpr!17948 (regOne!36408 r!11554)))))

(assert (=> d!2220708 (= (nullableFct!2936 (regOne!36408 r!11554)) e!4274784)))

(declare-fun b!7113463 () Bool)

(declare-fun e!4274780 () Bool)

(assert (=> b!7113463 (= e!4274780 call!649296)))

(declare-fun b!7113464 () Bool)

(assert (=> b!7113464 (= e!4274785 call!649297)))

(declare-fun bm!649292 () Bool)

(assert (=> bm!649292 (= call!649296 (nullable!7585 (ite c!1327524 (regTwo!36409 (regOne!36408 r!11554)) (regOne!36408 (regOne!36408 r!11554)))))))

(declare-fun b!7113465 () Bool)

(assert (=> b!7113465 (= e!4274781 e!4274780)))

(declare-fun res!2902678 () Bool)

(assert (=> b!7113465 (= res!2902678 call!649297)))

(assert (=> b!7113465 (=> res!2902678 e!4274780)))

(assert (= (and d!2220708 (not res!2902679)) b!7113460))

(assert (= (and b!7113460 res!2902677) b!7113459))

(assert (= (and b!7113459 (not res!2902680)) b!7113462))

(assert (= (and b!7113462 c!1327524) b!7113465))

(assert (= (and b!7113462 (not c!1327524)) b!7113461))

(assert (= (and b!7113465 (not res!2902678)) b!7113463))

(assert (= (and b!7113461 res!2902681) b!7113464))

(assert (= (or b!7113465 b!7113464) bm!649291))

(assert (= (or b!7113463 b!7113461) bm!649292))

(declare-fun m!7833670 () Bool)

(assert (=> bm!649291 m!7833670))

(declare-fun m!7833672 () Bool)

(assert (=> bm!649292 m!7833672))

(assert (=> d!2220662 d!2220708))

(declare-fun bm!649293 () Bool)

(declare-fun call!649299 () Bool)

(declare-fun call!649298 () Bool)

(assert (=> bm!649293 (= call!649299 call!649298)))

(declare-fun b!7113466 () Bool)

(declare-fun e!4274790 () Bool)

(assert (=> b!7113466 (= e!4274790 call!649298)))

(declare-fun d!2220710 () Bool)

(declare-fun res!2902683 () Bool)

(declare-fun e!4274786 () Bool)

(assert (=> d!2220710 (=> res!2902683 e!4274786)))

(assert (=> d!2220710 (= res!2902683 (is-ElementMatch!17948 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))

(assert (=> d!2220710 (= (validRegex!9221 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))) e!4274786)))

(declare-fun b!7113467 () Bool)

(declare-fun e!4274789 () Bool)

(declare-fun e!4274791 () Bool)

(assert (=> b!7113467 (= e!4274789 e!4274791)))

(declare-fun res!2902684 () Bool)

(assert (=> b!7113467 (=> (not res!2902684) (not e!4274791))))

(assert (=> b!7113467 (= res!2902684 call!649299)))

(declare-fun b!7113468 () Bool)

(declare-fun res!2902682 () Bool)

(assert (=> b!7113468 (=> res!2902682 e!4274789)))

(assert (=> b!7113468 (= res!2902682 (not (is-Concat!26793 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554)))))))

(declare-fun e!4274787 () Bool)

(assert (=> b!7113468 (= e!4274787 e!4274789)))

(declare-fun b!7113469 () Bool)

(declare-fun e!4274788 () Bool)

(assert (=> b!7113469 (= e!4274788 e!4274787)))

(declare-fun c!1327525 () Bool)

(assert (=> b!7113469 (= c!1327525 (is-Union!17948 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))

(declare-fun b!7113470 () Bool)

(assert (=> b!7113470 (= e!4274788 e!4274790)))

(declare-fun res!2902685 () Bool)

(assert (=> b!7113470 (= res!2902685 (not (nullable!7585 (reg!18277 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))))

(assert (=> b!7113470 (=> (not res!2902685) (not e!4274790))))

(declare-fun b!7113471 () Bool)

(assert (=> b!7113471 (= e!4274786 e!4274788)))

(declare-fun c!1327526 () Bool)

(assert (=> b!7113471 (= c!1327526 (is-Star!17948 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))

(declare-fun bm!649294 () Bool)

(assert (=> bm!649294 (= call!649298 (validRegex!9221 (ite c!1327526 (reg!18277 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))) (ite c!1327525 (regTwo!36409 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))) (regOne!36408 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554)))))))))

(declare-fun b!7113472 () Bool)

(declare-fun e!4274792 () Bool)

(assert (=> b!7113472 (= e!4274792 call!649299)))

(declare-fun b!7113473 () Bool)

(declare-fun call!649300 () Bool)

(assert (=> b!7113473 (= e!4274791 call!649300)))

(declare-fun b!7113474 () Bool)

(declare-fun res!2902686 () Bool)

(assert (=> b!7113474 (=> (not res!2902686) (not e!4274792))))

(assert (=> b!7113474 (= res!2902686 call!649300)))

(assert (=> b!7113474 (= e!4274787 e!4274792)))

(declare-fun bm!649295 () Bool)

(assert (=> bm!649295 (= call!649300 (validRegex!9221 (ite c!1327525 (regOne!36409 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))) (regTwo!36408 (ite c!1327439 (regOne!36409 r!11554) (regTwo!36408 r!11554))))))))

(assert (= (and d!2220710 (not res!2902683)) b!7113471))

(assert (= (and b!7113471 c!1327526) b!7113470))

(assert (= (and b!7113471 (not c!1327526)) b!7113469))

(assert (= (and b!7113470 res!2902685) b!7113466))

(assert (= (and b!7113469 c!1327525) b!7113474))

(assert (= (and b!7113469 (not c!1327525)) b!7113468))

(assert (= (and b!7113474 res!2902686) b!7113472))

(assert (= (and b!7113468 (not res!2902682)) b!7113467))

(assert (= (and b!7113467 res!2902684) b!7113473))

(assert (= (or b!7113474 b!7113473) bm!649295))

(assert (= (or b!7113472 b!7113467) bm!649293))

(assert (= (or b!7113466 bm!649293) bm!649294))

(declare-fun m!7833674 () Bool)

(assert (=> b!7113470 m!7833674))

(declare-fun m!7833676 () Bool)

(assert (=> bm!649294 m!7833676))

(declare-fun m!7833678 () Bool)

(assert (=> bm!649295 m!7833678))

(assert (=> bm!649199 d!2220710))

(assert (=> b!7113195 d!2220662))

(declare-fun d!2220712 () Bool)

(assert (=> d!2220712 (= ($colon$colon!2800 (exprs!7442 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554)))) (ite (or c!1327463 c!1327464) (regTwo!36408 (regOne!36408 r!11554)) (regOne!36408 r!11554))) (Cons!68785 (ite (or c!1327463 c!1327464) (regTwo!36408 (regOne!36408 r!11554)) (regOne!36408 r!11554)) (exprs!7442 (Context!13885 ($colon$colon!2800 lt!2560291 (regTwo!36408 r!11554))))))))

(assert (=> bm!649227 d!2220712))

(declare-fun d!2220714 () Bool)

(declare-fun res!2902687 () Bool)

(declare-fun e!4274793 () Bool)

(assert (=> d!2220714 (=> res!2902687 e!4274793)))

(assert (=> d!2220714 (= res!2902687 (is-Nil!68785 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554))))))))

(assert (=> d!2220714 (= (forall!16843 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))) lambda!432188) e!4274793)))

(declare-fun b!7113475 () Bool)

(declare-fun e!4274794 () Bool)

(assert (=> b!7113475 (= e!4274793 e!4274794)))

(declare-fun res!2902688 () Bool)

(assert (=> b!7113475 (=> (not res!2902688) (not e!4274794))))

(assert (=> b!7113475 (= res!2902688 (dynLambda!28058 lambda!432188 (h!75233 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))))))))

(declare-fun b!7113476 () Bool)

(assert (=> b!7113476 (= e!4274794 (forall!16843 (t!382746 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554))))) lambda!432188))))

(assert (= (and d!2220714 (not res!2902687)) b!7113475))

(assert (= (and b!7113475 res!2902688) b!7113476))

(declare-fun b_lambda!271463 () Bool)

(assert (=> (not b_lambda!271463) (not b!7113475)))

(declare-fun m!7833680 () Bool)

(assert (=> b!7113475 m!7833680))

(declare-fun m!7833682 () Bool)

(assert (=> b!7113476 m!7833682))

(assert (=> d!2220658 d!2220714))

(declare-fun d!2220716 () Bool)

(assert (=> d!2220716 (= ($colon$colon!2800 (exprs!7442 (Context!13885 lt!2560291)) (ite (or c!1327458 c!1327459) (regTwo!36408 r!11554) r!11554)) (Cons!68785 (ite (or c!1327458 c!1327459) (regTwo!36408 r!11554) r!11554) (exprs!7442 (Context!13885 lt!2560291))))))

(assert (=> bm!649221 d!2220716))

(declare-fun bm!649296 () Bool)

(declare-fun call!649302 () Bool)

(declare-fun call!649301 () Bool)

(assert (=> bm!649296 (= call!649302 call!649301)))

(declare-fun b!7113477 () Bool)

(declare-fun e!4274799 () Bool)

(assert (=> b!7113477 (= e!4274799 call!649301)))

(declare-fun d!2220718 () Bool)

(declare-fun res!2902690 () Bool)

(declare-fun e!4274795 () Bool)

(assert (=> d!2220718 (=> res!2902690 e!4274795)))

(assert (=> d!2220718 (= res!2902690 (is-ElementMatch!17948 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))

(assert (=> d!2220718 (= (validRegex!9221 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))) e!4274795)))

(declare-fun b!7113478 () Bool)

(declare-fun e!4274798 () Bool)

(declare-fun e!4274800 () Bool)

(assert (=> b!7113478 (= e!4274798 e!4274800)))

(declare-fun res!2902691 () Bool)

(assert (=> b!7113478 (=> (not res!2902691) (not e!4274800))))

(assert (=> b!7113478 (= res!2902691 call!649302)))

(declare-fun b!7113479 () Bool)

(declare-fun res!2902689 () Bool)

(assert (=> b!7113479 (=> res!2902689 e!4274798)))

(assert (=> b!7113479 (= res!2902689 (not (is-Concat!26793 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554))))))))

(declare-fun e!4274796 () Bool)

(assert (=> b!7113479 (= e!4274796 e!4274798)))

(declare-fun b!7113480 () Bool)

(declare-fun e!4274797 () Bool)

(assert (=> b!7113480 (= e!4274797 e!4274796)))

(declare-fun c!1327527 () Bool)

(assert (=> b!7113480 (= c!1327527 (is-Union!17948 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))

(declare-fun b!7113481 () Bool)

(assert (=> b!7113481 (= e!4274797 e!4274799)))

(declare-fun res!2902692 () Bool)

(assert (=> b!7113481 (= res!2902692 (not (nullable!7585 (reg!18277 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))))

(assert (=> b!7113481 (=> (not res!2902692) (not e!4274799))))

(declare-fun b!7113482 () Bool)

(assert (=> b!7113482 (= e!4274795 e!4274797)))

(declare-fun c!1327528 () Bool)

(assert (=> b!7113482 (= c!1327528 (is-Star!17948 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))

(declare-fun bm!649297 () Bool)

(assert (=> bm!649297 (= call!649301 (validRegex!9221 (ite c!1327528 (reg!18277 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))) (ite c!1327527 (regTwo!36409 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))) (regOne!36408 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554))))))))))

(declare-fun b!7113483 () Bool)

(declare-fun e!4274801 () Bool)

(assert (=> b!7113483 (= e!4274801 call!649302)))

(declare-fun b!7113484 () Bool)

(declare-fun call!649303 () Bool)

(assert (=> b!7113484 (= e!4274800 call!649303)))

(declare-fun b!7113485 () Bool)

(declare-fun res!2902693 () Bool)

(assert (=> b!7113485 (=> (not res!2902693) (not e!4274801))))

(assert (=> b!7113485 (= res!2902693 call!649303)))

(assert (=> b!7113485 (= e!4274796 e!4274801)))

(declare-fun bm!649298 () Bool)

(assert (=> bm!649298 (= call!649303 (validRegex!9221 (ite c!1327527 (regOne!36409 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))) (regTwo!36408 (ite c!1327465 (regOne!36409 (regTwo!36408 r!11554)) (regTwo!36408 (regTwo!36408 r!11554)))))))))

(assert (= (and d!2220718 (not res!2902690)) b!7113482))

(assert (= (and b!7113482 c!1327528) b!7113481))

(assert (= (and b!7113482 (not c!1327528)) b!7113480))

(assert (= (and b!7113481 res!2902692) b!7113477))

(assert (= (and b!7113480 c!1327527) b!7113485))

(assert (= (and b!7113480 (not c!1327527)) b!7113479))

(assert (= (and b!7113485 res!2902693) b!7113483))

(assert (= (and b!7113479 (not res!2902689)) b!7113478))

(assert (= (and b!7113478 res!2902691) b!7113484))

(assert (= (or b!7113485 b!7113484) bm!649298))

(assert (= (or b!7113483 b!7113478) bm!649296))

(assert (= (or b!7113477 bm!649296) bm!649297))

(declare-fun m!7833684 () Bool)

(assert (=> b!7113481 m!7833684))

(declare-fun m!7833686 () Bool)

(assert (=> bm!649297 m!7833686))

(declare-fun m!7833688 () Bool)

(assert (=> bm!649298 m!7833688))

(assert (=> bm!649232 d!2220718))

(declare-fun b!7113487 () Bool)

(declare-fun e!4274802 () List!68909)

(assert (=> b!7113487 (= e!4274802 (Cons!68785 (h!75233 (t!382746 (exprs!7442 c!9994))) (++!16100 (t!382746 (t!382746 (exprs!7442 c!9994))) (exprs!7442 auxCtx!45))))))

(declare-fun d!2220720 () Bool)

(declare-fun e!4274803 () Bool)

(assert (=> d!2220720 e!4274803))

(declare-fun res!2902695 () Bool)

(assert (=> d!2220720 (=> (not res!2902695) (not e!4274803))))

(declare-fun lt!2560313 () List!68909)

(assert (=> d!2220720 (= res!2902695 (= (content!14028 lt!2560313) (set.union (content!14028 (t!382746 (exprs!7442 c!9994))) (content!14028 (exprs!7442 auxCtx!45)))))))

(assert (=> d!2220720 (= lt!2560313 e!4274802)))

(declare-fun c!1327529 () Bool)

(assert (=> d!2220720 (= c!1327529 (is-Nil!68785 (t!382746 (exprs!7442 c!9994))))))

(assert (=> d!2220720 (= (++!16100 (t!382746 (exprs!7442 c!9994)) (exprs!7442 auxCtx!45)) lt!2560313)))

(declare-fun b!7113489 () Bool)

(assert (=> b!7113489 (= e!4274803 (or (not (= (exprs!7442 auxCtx!45) Nil!68785)) (= lt!2560313 (t!382746 (exprs!7442 c!9994)))))))

(declare-fun b!7113486 () Bool)

(assert (=> b!7113486 (= e!4274802 (exprs!7442 auxCtx!45))))

(declare-fun b!7113488 () Bool)

(declare-fun res!2902694 () Bool)

(assert (=> b!7113488 (=> (not res!2902694) (not e!4274803))))

(assert (=> b!7113488 (= res!2902694 (= (size!41403 lt!2560313) (+ (size!41403 (t!382746 (exprs!7442 c!9994))) (size!41403 (exprs!7442 auxCtx!45)))))))

(assert (= (and d!2220720 c!1327529) b!7113486))

(assert (= (and d!2220720 (not c!1327529)) b!7113487))

(assert (= (and d!2220720 res!2902695) b!7113488))

(assert (= (and b!7113488 res!2902694) b!7113489))

(declare-fun m!7833690 () Bool)

(assert (=> b!7113487 m!7833690))

(declare-fun m!7833692 () Bool)

(assert (=> d!2220720 m!7833692))

(assert (=> d!2220720 m!7833600))

(assert (=> d!2220720 m!7833530))

(declare-fun m!7833694 () Bool)

(assert (=> b!7113488 m!7833694))

(declare-fun m!7833696 () Bool)

(assert (=> b!7113488 m!7833696))

(assert (=> b!7113488 m!7833536))

(assert (=> b!7113240 d!2220720))

(declare-fun d!2220722 () Bool)

(declare-fun res!2902696 () Bool)

(declare-fun e!4274804 () Bool)

(assert (=> d!2220722 (=> res!2902696 e!4274804)))

(assert (=> d!2220722 (= res!2902696 (is-Nil!68785 (exprs!7442 c!9994)))))

(assert (=> d!2220722 (= (forall!16843 (exprs!7442 c!9994) lambda!432182) e!4274804)))

(declare-fun b!7113490 () Bool)

(declare-fun e!4274805 () Bool)

(assert (=> b!7113490 (= e!4274804 e!4274805)))

(declare-fun res!2902697 () Bool)

(assert (=> b!7113490 (=> (not res!2902697) (not e!4274805))))

(assert (=> b!7113490 (= res!2902697 (dynLambda!28058 lambda!432182 (h!75233 (exprs!7442 c!9994))))))

(declare-fun b!7113491 () Bool)

(assert (=> b!7113491 (= e!4274805 (forall!16843 (t!382746 (exprs!7442 c!9994)) lambda!432182))))

(assert (= (and d!2220722 (not res!2902696)) b!7113490))

(assert (= (and b!7113490 res!2902697) b!7113491))

(declare-fun b_lambda!271465 () Bool)

(assert (=> (not b_lambda!271465) (not b!7113490)))

(declare-fun m!7833698 () Bool)

(assert (=> b!7113490 m!7833698))

(declare-fun m!7833700 () Bool)

(assert (=> b!7113491 m!7833700))

(assert (=> d!2220634 d!2220722))

(declare-fun d!2220724 () Bool)

(declare-fun lt!2560316 () Int)

(assert (=> d!2220724 (>= lt!2560316 0)))

(declare-fun e!4274808 () Int)

(assert (=> d!2220724 (= lt!2560316 e!4274808)))

(declare-fun c!1327532 () Bool)

(assert (=> d!2220724 (= c!1327532 (is-Nil!68785 lt!2560305))))

(assert (=> d!2220724 (= (size!41403 lt!2560305) lt!2560316)))

(declare-fun b!7113496 () Bool)

(assert (=> b!7113496 (= e!4274808 0)))

(declare-fun b!7113497 () Bool)

(assert (=> b!7113497 (= e!4274808 (+ 1 (size!41403 (t!382746 lt!2560305))))))

(assert (= (and d!2220724 c!1327532) b!7113496))

(assert (= (and d!2220724 (not c!1327532)) b!7113497))

(declare-fun m!7833702 () Bool)

(assert (=> b!7113497 m!7833702))

(assert (=> b!7113241 d!2220724))

(declare-fun d!2220726 () Bool)

(declare-fun lt!2560317 () Int)

(assert (=> d!2220726 (>= lt!2560317 0)))

(declare-fun e!4274809 () Int)

(assert (=> d!2220726 (= lt!2560317 e!4274809)))

(declare-fun c!1327533 () Bool)

(assert (=> d!2220726 (= c!1327533 (is-Nil!68785 (exprs!7442 c!9994)))))

(assert (=> d!2220726 (= (size!41403 (exprs!7442 c!9994)) lt!2560317)))

(declare-fun b!7113498 () Bool)

(assert (=> b!7113498 (= e!4274809 0)))

(declare-fun b!7113499 () Bool)

(assert (=> b!7113499 (= e!4274809 (+ 1 (size!41403 (t!382746 (exprs!7442 c!9994)))))))

(assert (= (and d!2220726 c!1327533) b!7113498))

(assert (= (and d!2220726 (not c!1327533)) b!7113499))

(assert (=> b!7113499 m!7833696))

(assert (=> b!7113241 d!2220726))

(declare-fun d!2220728 () Bool)

(declare-fun lt!2560318 () Int)

(assert (=> d!2220728 (>= lt!2560318 0)))

(declare-fun e!4274810 () Int)

(assert (=> d!2220728 (= lt!2560318 e!4274810)))

(declare-fun c!1327534 () Bool)

(assert (=> d!2220728 (= c!1327534 (is-Nil!68785 (exprs!7442 auxCtx!45)))))

(assert (=> d!2220728 (= (size!41403 (exprs!7442 auxCtx!45)) lt!2560318)))

(declare-fun b!7113500 () Bool)

(assert (=> b!7113500 (= e!4274810 0)))

(declare-fun b!7113501 () Bool)

(assert (=> b!7113501 (= e!4274810 (+ 1 (size!41403 (t!382746 (exprs!7442 auxCtx!45)))))))

(assert (= (and d!2220728 c!1327534) b!7113500))

(assert (= (and d!2220728 (not c!1327534)) b!7113501))

(declare-fun m!7833704 () Bool)

(assert (=> b!7113501 m!7833704))

(assert (=> b!7113241 d!2220728))

(declare-fun b!7113505 () Bool)

(declare-fun e!4274811 () Bool)

(declare-fun tp!1957292 () Bool)

(declare-fun tp!1957291 () Bool)

(assert (=> b!7113505 (= e!4274811 (and tp!1957292 tp!1957291))))

(declare-fun b!7113502 () Bool)

(assert (=> b!7113502 (= e!4274811 tp_is_empty!45129)))

(declare-fun b!7113504 () Bool)

(declare-fun tp!1957290 () Bool)

(assert (=> b!7113504 (= e!4274811 tp!1957290)))

(assert (=> b!7113279 (= tp!1957239 e!4274811)))

(declare-fun b!7113503 () Bool)

(declare-fun tp!1957289 () Bool)

(declare-fun tp!1957293 () Bool)

(assert (=> b!7113503 (= e!4274811 (and tp!1957289 tp!1957293))))

(assert (= (and b!7113279 (is-ElementMatch!17948 (regOne!36408 (regTwo!36409 r!11554)))) b!7113502))

(assert (= (and b!7113279 (is-Concat!26793 (regOne!36408 (regTwo!36409 r!11554)))) b!7113503))

(assert (= (and b!7113279 (is-Star!17948 (regOne!36408 (regTwo!36409 r!11554)))) b!7113504))

(assert (= (and b!7113279 (is-Union!17948 (regOne!36408 (regTwo!36409 r!11554)))) b!7113505))

(declare-fun b!7113509 () Bool)

(declare-fun e!4274812 () Bool)

(declare-fun tp!1957297 () Bool)

(declare-fun tp!1957296 () Bool)

(assert (=> b!7113509 (= e!4274812 (and tp!1957297 tp!1957296))))

(declare-fun b!7113506 () Bool)

(assert (=> b!7113506 (= e!4274812 tp_is_empty!45129)))

(declare-fun b!7113508 () Bool)

(declare-fun tp!1957295 () Bool)

(assert (=> b!7113508 (= e!4274812 tp!1957295)))

(assert (=> b!7113279 (= tp!1957243 e!4274812)))

(declare-fun b!7113507 () Bool)

(declare-fun tp!1957294 () Bool)

(declare-fun tp!1957298 () Bool)

(assert (=> b!7113507 (= e!4274812 (and tp!1957294 tp!1957298))))

(assert (= (and b!7113279 (is-ElementMatch!17948 (regTwo!36408 (regTwo!36409 r!11554)))) b!7113506))

(assert (= (and b!7113279 (is-Concat!26793 (regTwo!36408 (regTwo!36409 r!11554)))) b!7113507))

(assert (= (and b!7113279 (is-Star!17948 (regTwo!36408 (regTwo!36409 r!11554)))) b!7113508))

(assert (= (and b!7113279 (is-Union!17948 (regTwo!36408 (regTwo!36409 r!11554)))) b!7113509))

(declare-fun b!7113513 () Bool)

(declare-fun e!4274813 () Bool)

(declare-fun tp!1957302 () Bool)

(declare-fun tp!1957301 () Bool)

(assert (=> b!7113513 (= e!4274813 (and tp!1957302 tp!1957301))))

(declare-fun b!7113510 () Bool)

(assert (=> b!7113510 (= e!4274813 tp_is_empty!45129)))

(declare-fun b!7113512 () Bool)

(declare-fun tp!1957300 () Bool)

(assert (=> b!7113512 (= e!4274813 tp!1957300)))

(assert (=> b!7113260 (= tp!1957216 e!4274813)))

(declare-fun b!7113511 () Bool)

(declare-fun tp!1957299 () Bool)

(declare-fun tp!1957303 () Bool)

(assert (=> b!7113511 (= e!4274813 (and tp!1957299 tp!1957303))))

(assert (= (and b!7113260 (is-ElementMatch!17948 (regOne!36409 (reg!18277 r!11554)))) b!7113510))

(assert (= (and b!7113260 (is-Concat!26793 (regOne!36409 (reg!18277 r!11554)))) b!7113511))

(assert (= (and b!7113260 (is-Star!17948 (regOne!36409 (reg!18277 r!11554)))) b!7113512))

(assert (= (and b!7113260 (is-Union!17948 (regOne!36409 (reg!18277 r!11554)))) b!7113513))

(declare-fun b!7113517 () Bool)

(declare-fun e!4274814 () Bool)

(declare-fun tp!1957307 () Bool)

(declare-fun tp!1957306 () Bool)

(assert (=> b!7113517 (= e!4274814 (and tp!1957307 tp!1957306))))

(declare-fun b!7113514 () Bool)

(assert (=> b!7113514 (= e!4274814 tp_is_empty!45129)))

(declare-fun b!7113516 () Bool)

(declare-fun tp!1957305 () Bool)

(assert (=> b!7113516 (= e!4274814 tp!1957305)))

(assert (=> b!7113260 (= tp!1957215 e!4274814)))

(declare-fun b!7113515 () Bool)

(declare-fun tp!1957304 () Bool)

(declare-fun tp!1957308 () Bool)

(assert (=> b!7113515 (= e!4274814 (and tp!1957304 tp!1957308))))

(assert (= (and b!7113260 (is-ElementMatch!17948 (regTwo!36409 (reg!18277 r!11554)))) b!7113514))

(assert (= (and b!7113260 (is-Concat!26793 (regTwo!36409 (reg!18277 r!11554)))) b!7113515))

(assert (= (and b!7113260 (is-Star!17948 (regTwo!36409 (reg!18277 r!11554)))) b!7113516))

(assert (= (and b!7113260 (is-Union!17948 (regTwo!36409 (reg!18277 r!11554)))) b!7113517))

(declare-fun b!7113521 () Bool)

(declare-fun e!4274815 () Bool)

(declare-fun tp!1957312 () Bool)

(declare-fun tp!1957311 () Bool)

(assert (=> b!7113521 (= e!4274815 (and tp!1957312 tp!1957311))))

(declare-fun b!7113518 () Bool)

(assert (=> b!7113518 (= e!4274815 tp_is_empty!45129)))

(declare-fun b!7113520 () Bool)

(declare-fun tp!1957310 () Bool)

(assert (=> b!7113520 (= e!4274815 tp!1957310)))

(assert (=> b!7113258 (= tp!1957213 e!4274815)))

(declare-fun b!7113519 () Bool)

(declare-fun tp!1957309 () Bool)

(declare-fun tp!1957313 () Bool)

(assert (=> b!7113519 (= e!4274815 (and tp!1957309 tp!1957313))))

(assert (= (and b!7113258 (is-ElementMatch!17948 (regOne!36408 (reg!18277 r!11554)))) b!7113518))

(assert (= (and b!7113258 (is-Concat!26793 (regOne!36408 (reg!18277 r!11554)))) b!7113519))

(assert (= (and b!7113258 (is-Star!17948 (regOne!36408 (reg!18277 r!11554)))) b!7113520))

(assert (= (and b!7113258 (is-Union!17948 (regOne!36408 (reg!18277 r!11554)))) b!7113521))

(declare-fun b!7113525 () Bool)

(declare-fun e!4274816 () Bool)

(declare-fun tp!1957317 () Bool)

(declare-fun tp!1957316 () Bool)

(assert (=> b!7113525 (= e!4274816 (and tp!1957317 tp!1957316))))

(declare-fun b!7113522 () Bool)

(assert (=> b!7113522 (= e!4274816 tp_is_empty!45129)))

(declare-fun b!7113524 () Bool)

(declare-fun tp!1957315 () Bool)

(assert (=> b!7113524 (= e!4274816 tp!1957315)))

(assert (=> b!7113258 (= tp!1957217 e!4274816)))

(declare-fun b!7113523 () Bool)

(declare-fun tp!1957314 () Bool)

(declare-fun tp!1957318 () Bool)

(assert (=> b!7113523 (= e!4274816 (and tp!1957314 tp!1957318))))

(assert (= (and b!7113258 (is-ElementMatch!17948 (regTwo!36408 (reg!18277 r!11554)))) b!7113522))

(assert (= (and b!7113258 (is-Concat!26793 (regTwo!36408 (reg!18277 r!11554)))) b!7113523))

(assert (= (and b!7113258 (is-Star!17948 (regTwo!36408 (reg!18277 r!11554)))) b!7113524))

(assert (= (and b!7113258 (is-Union!17948 (regTwo!36408 (reg!18277 r!11554)))) b!7113525))

(declare-fun b!7113529 () Bool)

(declare-fun e!4274817 () Bool)

(declare-fun tp!1957322 () Bool)

(declare-fun tp!1957321 () Bool)

(assert (=> b!7113529 (= e!4274817 (and tp!1957322 tp!1957321))))

(declare-fun b!7113526 () Bool)

(assert (=> b!7113526 (= e!4274817 tp_is_empty!45129)))

(declare-fun b!7113528 () Bool)

(declare-fun tp!1957320 () Bool)

(assert (=> b!7113528 (= e!4274817 tp!1957320)))

(assert (=> b!7113282 (= tp!1957244 e!4274817)))

(declare-fun b!7113527 () Bool)

(declare-fun tp!1957319 () Bool)

(declare-fun tp!1957323 () Bool)

(assert (=> b!7113527 (= e!4274817 (and tp!1957319 tp!1957323))))

(assert (= (and b!7113282 (is-ElementMatch!17948 (h!75233 (exprs!7442 auxCtx!45)))) b!7113526))

(assert (= (and b!7113282 (is-Concat!26793 (h!75233 (exprs!7442 auxCtx!45)))) b!7113527))

(assert (= (and b!7113282 (is-Star!17948 (h!75233 (exprs!7442 auxCtx!45)))) b!7113528))

(assert (= (and b!7113282 (is-Union!17948 (h!75233 (exprs!7442 auxCtx!45)))) b!7113529))

(declare-fun b!7113530 () Bool)

(declare-fun e!4274818 () Bool)

(declare-fun tp!1957324 () Bool)

(declare-fun tp!1957325 () Bool)

(assert (=> b!7113530 (= e!4274818 (and tp!1957324 tp!1957325))))

(assert (=> b!7113282 (= tp!1957245 e!4274818)))

(assert (= (and b!7113282 (is-Cons!68785 (t!382746 (exprs!7442 auxCtx!45)))) b!7113530))

(declare-fun b!7113534 () Bool)

(declare-fun e!4274819 () Bool)

(declare-fun tp!1957329 () Bool)

(declare-fun tp!1957328 () Bool)

(assert (=> b!7113534 (= e!4274819 (and tp!1957329 tp!1957328))))

(declare-fun b!7113531 () Bool)

(assert (=> b!7113531 (= e!4274819 tp_is_empty!45129)))

(declare-fun b!7113533 () Bool)

(declare-fun tp!1957327 () Bool)

(assert (=> b!7113533 (= e!4274819 tp!1957327)))

(assert (=> b!7113259 (= tp!1957214 e!4274819)))

(declare-fun b!7113532 () Bool)

(declare-fun tp!1957326 () Bool)

(declare-fun tp!1957330 () Bool)

(assert (=> b!7113532 (= e!4274819 (and tp!1957326 tp!1957330))))

(assert (= (and b!7113259 (is-ElementMatch!17948 (reg!18277 (reg!18277 r!11554)))) b!7113531))

(assert (= (and b!7113259 (is-Concat!26793 (reg!18277 (reg!18277 r!11554)))) b!7113532))

(assert (= (and b!7113259 (is-Star!17948 (reg!18277 (reg!18277 r!11554)))) b!7113533))

(assert (= (and b!7113259 (is-Union!17948 (reg!18277 (reg!18277 r!11554)))) b!7113534))

(declare-fun b!7113538 () Bool)

(declare-fun e!4274820 () Bool)

(declare-fun tp!1957334 () Bool)

(declare-fun tp!1957333 () Bool)

(assert (=> b!7113538 (= e!4274820 (and tp!1957334 tp!1957333))))

(declare-fun b!7113535 () Bool)

(assert (=> b!7113535 (= e!4274820 tp_is_empty!45129)))

(declare-fun b!7113537 () Bool)

(declare-fun tp!1957332 () Bool)

(assert (=> b!7113537 (= e!4274820 tp!1957332)))

(assert (=> b!7113265 (= tp!1957222 e!4274820)))

(declare-fun b!7113536 () Bool)

(declare-fun tp!1957331 () Bool)

(declare-fun tp!1957335 () Bool)

(assert (=> b!7113536 (= e!4274820 (and tp!1957331 tp!1957335))))

(assert (= (and b!7113265 (is-ElementMatch!17948 (h!75233 (exprs!7442 c!9994)))) b!7113535))

(assert (= (and b!7113265 (is-Concat!26793 (h!75233 (exprs!7442 c!9994)))) b!7113536))

(assert (= (and b!7113265 (is-Star!17948 (h!75233 (exprs!7442 c!9994)))) b!7113537))

(assert (= (and b!7113265 (is-Union!17948 (h!75233 (exprs!7442 c!9994)))) b!7113538))

(declare-fun b!7113539 () Bool)

(declare-fun e!4274821 () Bool)

(declare-fun tp!1957336 () Bool)

(declare-fun tp!1957337 () Bool)

(assert (=> b!7113539 (= e!4274821 (and tp!1957336 tp!1957337))))

(assert (=> b!7113265 (= tp!1957223 e!4274821)))

(assert (= (and b!7113265 (is-Cons!68785 (t!382746 (exprs!7442 c!9994)))) b!7113539))

(declare-fun b!7113543 () Bool)

(declare-fun e!4274822 () Bool)

(declare-fun tp!1957341 () Bool)

(declare-fun tp!1957340 () Bool)

(assert (=> b!7113543 (= e!4274822 (and tp!1957341 tp!1957340))))

(declare-fun b!7113540 () Bool)

(assert (=> b!7113540 (= e!4274822 tp_is_empty!45129)))

(declare-fun b!7113542 () Bool)

(declare-fun tp!1957339 () Bool)

(assert (=> b!7113542 (= e!4274822 tp!1957339)))

(assert (=> b!7113273 (= tp!1957232 e!4274822)))

(declare-fun b!7113541 () Bool)

(declare-fun tp!1957338 () Bool)

(declare-fun tp!1957342 () Bool)

(assert (=> b!7113541 (= e!4274822 (and tp!1957338 tp!1957342))))

(assert (= (and b!7113273 (is-ElementMatch!17948 (regOne!36409 (regTwo!36408 r!11554)))) b!7113540))

(assert (= (and b!7113273 (is-Concat!26793 (regOne!36409 (regTwo!36408 r!11554)))) b!7113541))

(assert (= (and b!7113273 (is-Star!17948 (regOne!36409 (regTwo!36408 r!11554)))) b!7113542))

(assert (= (and b!7113273 (is-Union!17948 (regOne!36409 (regTwo!36408 r!11554)))) b!7113543))

(declare-fun b!7113547 () Bool)

(declare-fun e!4274823 () Bool)

(declare-fun tp!1957346 () Bool)

(declare-fun tp!1957345 () Bool)

(assert (=> b!7113547 (= e!4274823 (and tp!1957346 tp!1957345))))

(declare-fun b!7113544 () Bool)

(assert (=> b!7113544 (= e!4274823 tp_is_empty!45129)))

(declare-fun b!7113546 () Bool)

(declare-fun tp!1957344 () Bool)

(assert (=> b!7113546 (= e!4274823 tp!1957344)))

(assert (=> b!7113273 (= tp!1957231 e!4274823)))

(declare-fun b!7113545 () Bool)

(declare-fun tp!1957343 () Bool)

(declare-fun tp!1957347 () Bool)

(assert (=> b!7113545 (= e!4274823 (and tp!1957343 tp!1957347))))

(assert (= (and b!7113273 (is-ElementMatch!17948 (regTwo!36409 (regTwo!36408 r!11554)))) b!7113544))

(assert (= (and b!7113273 (is-Concat!26793 (regTwo!36409 (regTwo!36408 r!11554)))) b!7113545))

(assert (= (and b!7113273 (is-Star!17948 (regTwo!36409 (regTwo!36408 r!11554)))) b!7113546))

(assert (= (and b!7113273 (is-Union!17948 (regTwo!36409 (regTwo!36408 r!11554)))) b!7113547))

(declare-fun b!7113551 () Bool)

(declare-fun e!4274824 () Bool)

(declare-fun tp!1957351 () Bool)

(declare-fun tp!1957350 () Bool)

(assert (=> b!7113551 (= e!4274824 (and tp!1957351 tp!1957350))))

(declare-fun b!7113548 () Bool)

(assert (=> b!7113548 (= e!4274824 tp_is_empty!45129)))

(declare-fun b!7113550 () Bool)

(declare-fun tp!1957349 () Bool)

(assert (=> b!7113550 (= e!4274824 tp!1957349)))

(assert (=> b!7113269 (= tp!1957227 e!4274824)))

(declare-fun b!7113549 () Bool)

(declare-fun tp!1957348 () Bool)

(declare-fun tp!1957352 () Bool)

(assert (=> b!7113549 (= e!4274824 (and tp!1957348 tp!1957352))))

(assert (= (and b!7113269 (is-ElementMatch!17948 (regOne!36409 (regOne!36408 r!11554)))) b!7113548))

(assert (= (and b!7113269 (is-Concat!26793 (regOne!36409 (regOne!36408 r!11554)))) b!7113549))

(assert (= (and b!7113269 (is-Star!17948 (regOne!36409 (regOne!36408 r!11554)))) b!7113550))

(assert (= (and b!7113269 (is-Union!17948 (regOne!36409 (regOne!36408 r!11554)))) b!7113551))

(declare-fun b!7113555 () Bool)

(declare-fun e!4274825 () Bool)

(declare-fun tp!1957356 () Bool)

(declare-fun tp!1957355 () Bool)

(assert (=> b!7113555 (= e!4274825 (and tp!1957356 tp!1957355))))

(declare-fun b!7113552 () Bool)

(assert (=> b!7113552 (= e!4274825 tp_is_empty!45129)))

(declare-fun b!7113554 () Bool)

(declare-fun tp!1957354 () Bool)

(assert (=> b!7113554 (= e!4274825 tp!1957354)))

(assert (=> b!7113269 (= tp!1957226 e!4274825)))

(declare-fun b!7113553 () Bool)

(declare-fun tp!1957353 () Bool)

(declare-fun tp!1957357 () Bool)

(assert (=> b!7113553 (= e!4274825 (and tp!1957353 tp!1957357))))

(assert (= (and b!7113269 (is-ElementMatch!17948 (regTwo!36409 (regOne!36408 r!11554)))) b!7113552))

(assert (= (and b!7113269 (is-Concat!26793 (regTwo!36409 (regOne!36408 r!11554)))) b!7113553))

(assert (= (and b!7113269 (is-Star!17948 (regTwo!36409 (regOne!36408 r!11554)))) b!7113554))

(assert (= (and b!7113269 (is-Union!17948 (regTwo!36409 (regOne!36408 r!11554)))) b!7113555))

(declare-fun b!7113559 () Bool)

(declare-fun e!4274826 () Bool)

(declare-fun tp!1957361 () Bool)

(declare-fun tp!1957360 () Bool)

(assert (=> b!7113559 (= e!4274826 (and tp!1957361 tp!1957360))))

(declare-fun b!7113556 () Bool)

(assert (=> b!7113556 (= e!4274826 tp_is_empty!45129)))

(declare-fun b!7113558 () Bool)

(declare-fun tp!1957359 () Bool)

(assert (=> b!7113558 (= e!4274826 tp!1957359)))

(assert (=> b!7113272 (= tp!1957230 e!4274826)))

(declare-fun b!7113557 () Bool)

(declare-fun tp!1957358 () Bool)

(declare-fun tp!1957362 () Bool)

(assert (=> b!7113557 (= e!4274826 (and tp!1957358 tp!1957362))))

(assert (= (and b!7113272 (is-ElementMatch!17948 (reg!18277 (regTwo!36408 r!11554)))) b!7113556))

(assert (= (and b!7113272 (is-Concat!26793 (reg!18277 (regTwo!36408 r!11554)))) b!7113557))

(assert (= (and b!7113272 (is-Star!17948 (reg!18277 (regTwo!36408 r!11554)))) b!7113558))

(assert (= (and b!7113272 (is-Union!17948 (reg!18277 (regTwo!36408 r!11554)))) b!7113559))

(declare-fun b!7113563 () Bool)

(declare-fun e!4274827 () Bool)

(declare-fun tp!1957366 () Bool)

(declare-fun tp!1957365 () Bool)

(assert (=> b!7113563 (= e!4274827 (and tp!1957366 tp!1957365))))

(declare-fun b!7113560 () Bool)

(assert (=> b!7113560 (= e!4274827 tp_is_empty!45129)))

(declare-fun b!7113562 () Bool)

(declare-fun tp!1957364 () Bool)

(assert (=> b!7113562 (= e!4274827 tp!1957364)))

(assert (=> b!7113267 (= tp!1957224 e!4274827)))

(declare-fun b!7113561 () Bool)

(declare-fun tp!1957363 () Bool)

(declare-fun tp!1957367 () Bool)

(assert (=> b!7113561 (= e!4274827 (and tp!1957363 tp!1957367))))

(assert (= (and b!7113267 (is-ElementMatch!17948 (regOne!36408 (regOne!36408 r!11554)))) b!7113560))

(assert (= (and b!7113267 (is-Concat!26793 (regOne!36408 (regOne!36408 r!11554)))) b!7113561))

(assert (= (and b!7113267 (is-Star!17948 (regOne!36408 (regOne!36408 r!11554)))) b!7113562))

(assert (= (and b!7113267 (is-Union!17948 (regOne!36408 (regOne!36408 r!11554)))) b!7113563))

(declare-fun b!7113567 () Bool)

(declare-fun e!4274828 () Bool)

(declare-fun tp!1957371 () Bool)

(declare-fun tp!1957370 () Bool)

(assert (=> b!7113567 (= e!4274828 (and tp!1957371 tp!1957370))))

(declare-fun b!7113564 () Bool)

(assert (=> b!7113564 (= e!4274828 tp_is_empty!45129)))

(declare-fun b!7113566 () Bool)

(declare-fun tp!1957369 () Bool)

(assert (=> b!7113566 (= e!4274828 tp!1957369)))

(assert (=> b!7113267 (= tp!1957228 e!4274828)))

(declare-fun b!7113565 () Bool)

(declare-fun tp!1957368 () Bool)

(declare-fun tp!1957372 () Bool)

(assert (=> b!7113565 (= e!4274828 (and tp!1957368 tp!1957372))))

(assert (= (and b!7113267 (is-ElementMatch!17948 (regTwo!36408 (regOne!36408 r!11554)))) b!7113564))

(assert (= (and b!7113267 (is-Concat!26793 (regTwo!36408 (regOne!36408 r!11554)))) b!7113565))

(assert (= (and b!7113267 (is-Star!17948 (regTwo!36408 (regOne!36408 r!11554)))) b!7113566))

(assert (= (and b!7113267 (is-Union!17948 (regTwo!36408 (regOne!36408 r!11554)))) b!7113567))

(declare-fun b!7113571 () Bool)

(declare-fun e!4274829 () Bool)

(declare-fun tp!1957376 () Bool)

(declare-fun tp!1957375 () Bool)

(assert (=> b!7113571 (= e!4274829 (and tp!1957376 tp!1957375))))

(declare-fun b!7113568 () Bool)

(assert (=> b!7113568 (= e!4274829 tp_is_empty!45129)))

(declare-fun b!7113570 () Bool)

(declare-fun tp!1957374 () Bool)

(assert (=> b!7113570 (= e!4274829 tp!1957374)))

(assert (=> b!7113281 (= tp!1957242 e!4274829)))

(declare-fun b!7113569 () Bool)

(declare-fun tp!1957373 () Bool)

(declare-fun tp!1957377 () Bool)

(assert (=> b!7113569 (= e!4274829 (and tp!1957373 tp!1957377))))

(assert (= (and b!7113281 (is-ElementMatch!17948 (regOne!36409 (regTwo!36409 r!11554)))) b!7113568))

(assert (= (and b!7113281 (is-Concat!26793 (regOne!36409 (regTwo!36409 r!11554)))) b!7113569))

(assert (= (and b!7113281 (is-Star!17948 (regOne!36409 (regTwo!36409 r!11554)))) b!7113570))

(assert (= (and b!7113281 (is-Union!17948 (regOne!36409 (regTwo!36409 r!11554)))) b!7113571))

(declare-fun b!7113575 () Bool)

(declare-fun e!4274830 () Bool)

(declare-fun tp!1957381 () Bool)

(declare-fun tp!1957380 () Bool)

(assert (=> b!7113575 (= e!4274830 (and tp!1957381 tp!1957380))))

(declare-fun b!7113572 () Bool)

(assert (=> b!7113572 (= e!4274830 tp_is_empty!45129)))

(declare-fun b!7113574 () Bool)

(declare-fun tp!1957379 () Bool)

(assert (=> b!7113574 (= e!4274830 tp!1957379)))

(assert (=> b!7113281 (= tp!1957241 e!4274830)))

(declare-fun b!7113573 () Bool)

(declare-fun tp!1957378 () Bool)

(declare-fun tp!1957382 () Bool)

(assert (=> b!7113573 (= e!4274830 (and tp!1957378 tp!1957382))))

(assert (= (and b!7113281 (is-ElementMatch!17948 (regTwo!36409 (regTwo!36409 r!11554)))) b!7113572))

(assert (= (and b!7113281 (is-Concat!26793 (regTwo!36409 (regTwo!36409 r!11554)))) b!7113573))

(assert (= (and b!7113281 (is-Star!17948 (regTwo!36409 (regTwo!36409 r!11554)))) b!7113574))

(assert (= (and b!7113281 (is-Union!17948 (regTwo!36409 (regTwo!36409 r!11554)))) b!7113575))

(declare-fun b!7113579 () Bool)

(declare-fun e!4274831 () Bool)

(declare-fun tp!1957386 () Bool)

(declare-fun tp!1957385 () Bool)

(assert (=> b!7113579 (= e!4274831 (and tp!1957386 tp!1957385))))

(declare-fun b!7113576 () Bool)

(assert (=> b!7113576 (= e!4274831 tp_is_empty!45129)))

(declare-fun b!7113578 () Bool)

(declare-fun tp!1957384 () Bool)

(assert (=> b!7113578 (= e!4274831 tp!1957384)))

(assert (=> b!7113268 (= tp!1957225 e!4274831)))

(declare-fun b!7113577 () Bool)

(declare-fun tp!1957383 () Bool)

(declare-fun tp!1957387 () Bool)

(assert (=> b!7113577 (= e!4274831 (and tp!1957383 tp!1957387))))

(assert (= (and b!7113268 (is-ElementMatch!17948 (reg!18277 (regOne!36408 r!11554)))) b!7113576))

(assert (= (and b!7113268 (is-Concat!26793 (reg!18277 (regOne!36408 r!11554)))) b!7113577))

(assert (= (and b!7113268 (is-Star!17948 (reg!18277 (regOne!36408 r!11554)))) b!7113578))

(assert (= (and b!7113268 (is-Union!17948 (reg!18277 (regOne!36408 r!11554)))) b!7113579))

(declare-fun b!7113583 () Bool)

(declare-fun e!4274832 () Bool)

(declare-fun tp!1957391 () Bool)

(declare-fun tp!1957390 () Bool)

(assert (=> b!7113583 (= e!4274832 (and tp!1957391 tp!1957390))))

(declare-fun b!7113580 () Bool)

(assert (=> b!7113580 (= e!4274832 tp_is_empty!45129)))

(declare-fun b!7113582 () Bool)

(declare-fun tp!1957389 () Bool)

(assert (=> b!7113582 (= e!4274832 tp!1957389)))

(assert (=> b!7113277 (= tp!1957237 e!4274832)))

(declare-fun b!7113581 () Bool)

(declare-fun tp!1957388 () Bool)

(declare-fun tp!1957392 () Bool)

(assert (=> b!7113581 (= e!4274832 (and tp!1957388 tp!1957392))))

(assert (= (and b!7113277 (is-ElementMatch!17948 (regOne!36409 (regOne!36409 r!11554)))) b!7113580))

(assert (= (and b!7113277 (is-Concat!26793 (regOne!36409 (regOne!36409 r!11554)))) b!7113581))

(assert (= (and b!7113277 (is-Star!17948 (regOne!36409 (regOne!36409 r!11554)))) b!7113582))

(assert (= (and b!7113277 (is-Union!17948 (regOne!36409 (regOne!36409 r!11554)))) b!7113583))

(declare-fun b!7113587 () Bool)

(declare-fun e!4274833 () Bool)

(declare-fun tp!1957396 () Bool)

(declare-fun tp!1957395 () Bool)

(assert (=> b!7113587 (= e!4274833 (and tp!1957396 tp!1957395))))

(declare-fun b!7113584 () Bool)

(assert (=> b!7113584 (= e!4274833 tp_is_empty!45129)))

(declare-fun b!7113586 () Bool)

(declare-fun tp!1957394 () Bool)

(assert (=> b!7113586 (= e!4274833 tp!1957394)))

(assert (=> b!7113277 (= tp!1957236 e!4274833)))

(declare-fun b!7113585 () Bool)

(declare-fun tp!1957393 () Bool)

(declare-fun tp!1957397 () Bool)

(assert (=> b!7113585 (= e!4274833 (and tp!1957393 tp!1957397))))

(assert (= (and b!7113277 (is-ElementMatch!17948 (regTwo!36409 (regOne!36409 r!11554)))) b!7113584))

(assert (= (and b!7113277 (is-Concat!26793 (regTwo!36409 (regOne!36409 r!11554)))) b!7113585))

(assert (= (and b!7113277 (is-Star!17948 (regTwo!36409 (regOne!36409 r!11554)))) b!7113586))

(assert (= (and b!7113277 (is-Union!17948 (regTwo!36409 (regOne!36409 r!11554)))) b!7113587))

(declare-fun b!7113591 () Bool)

(declare-fun e!4274834 () Bool)

(declare-fun tp!1957401 () Bool)

(declare-fun tp!1957400 () Bool)

(assert (=> b!7113591 (= e!4274834 (and tp!1957401 tp!1957400))))

(declare-fun b!7113588 () Bool)

(assert (=> b!7113588 (= e!4274834 tp_is_empty!45129)))

(declare-fun b!7113590 () Bool)

(declare-fun tp!1957399 () Bool)

(assert (=> b!7113590 (= e!4274834 tp!1957399)))

(assert (=> b!7113280 (= tp!1957240 e!4274834)))

(declare-fun b!7113589 () Bool)

(declare-fun tp!1957398 () Bool)

(declare-fun tp!1957402 () Bool)

(assert (=> b!7113589 (= e!4274834 (and tp!1957398 tp!1957402))))

(assert (= (and b!7113280 (is-ElementMatch!17948 (reg!18277 (regTwo!36409 r!11554)))) b!7113588))

(assert (= (and b!7113280 (is-Concat!26793 (reg!18277 (regTwo!36409 r!11554)))) b!7113589))

(assert (= (and b!7113280 (is-Star!17948 (reg!18277 (regTwo!36409 r!11554)))) b!7113590))

(assert (= (and b!7113280 (is-Union!17948 (reg!18277 (regTwo!36409 r!11554)))) b!7113591))

(declare-fun b!7113595 () Bool)

(declare-fun e!4274835 () Bool)

(declare-fun tp!1957406 () Bool)

(declare-fun tp!1957405 () Bool)

(assert (=> b!7113595 (= e!4274835 (and tp!1957406 tp!1957405))))

(declare-fun b!7113592 () Bool)

(assert (=> b!7113592 (= e!4274835 tp_is_empty!45129)))

(declare-fun b!7113594 () Bool)

(declare-fun tp!1957404 () Bool)

(assert (=> b!7113594 (= e!4274835 tp!1957404)))

(assert (=> b!7113275 (= tp!1957234 e!4274835)))

(declare-fun b!7113593 () Bool)

(declare-fun tp!1957403 () Bool)

(declare-fun tp!1957407 () Bool)

(assert (=> b!7113593 (= e!4274835 (and tp!1957403 tp!1957407))))

(assert (= (and b!7113275 (is-ElementMatch!17948 (regOne!36408 (regOne!36409 r!11554)))) b!7113592))

(assert (= (and b!7113275 (is-Concat!26793 (regOne!36408 (regOne!36409 r!11554)))) b!7113593))

(assert (= (and b!7113275 (is-Star!17948 (regOne!36408 (regOne!36409 r!11554)))) b!7113594))

(assert (= (and b!7113275 (is-Union!17948 (regOne!36408 (regOne!36409 r!11554)))) b!7113595))

(declare-fun b!7113599 () Bool)

(declare-fun e!4274836 () Bool)

(declare-fun tp!1957411 () Bool)

(declare-fun tp!1957410 () Bool)

(assert (=> b!7113599 (= e!4274836 (and tp!1957411 tp!1957410))))

(declare-fun b!7113596 () Bool)

(assert (=> b!7113596 (= e!4274836 tp_is_empty!45129)))

(declare-fun b!7113598 () Bool)

(declare-fun tp!1957409 () Bool)

(assert (=> b!7113598 (= e!4274836 tp!1957409)))

(assert (=> b!7113275 (= tp!1957238 e!4274836)))

(declare-fun b!7113597 () Bool)

(declare-fun tp!1957408 () Bool)

(declare-fun tp!1957412 () Bool)

(assert (=> b!7113597 (= e!4274836 (and tp!1957408 tp!1957412))))

(assert (= (and b!7113275 (is-ElementMatch!17948 (regTwo!36408 (regOne!36409 r!11554)))) b!7113596))

(assert (= (and b!7113275 (is-Concat!26793 (regTwo!36408 (regOne!36409 r!11554)))) b!7113597))

(assert (= (and b!7113275 (is-Star!17948 (regTwo!36408 (regOne!36409 r!11554)))) b!7113598))

(assert (= (and b!7113275 (is-Union!17948 (regTwo!36408 (regOne!36409 r!11554)))) b!7113599))

(declare-fun b!7113603 () Bool)

(declare-fun e!4274837 () Bool)

(declare-fun tp!1957416 () Bool)

(declare-fun tp!1957415 () Bool)

(assert (=> b!7113603 (= e!4274837 (and tp!1957416 tp!1957415))))

(declare-fun b!7113600 () Bool)

(assert (=> b!7113600 (= e!4274837 tp_is_empty!45129)))

(declare-fun b!7113602 () Bool)

(declare-fun tp!1957414 () Bool)

(assert (=> b!7113602 (= e!4274837 tp!1957414)))

(assert (=> b!7113276 (= tp!1957235 e!4274837)))

(declare-fun b!7113601 () Bool)

(declare-fun tp!1957413 () Bool)

(declare-fun tp!1957417 () Bool)

(assert (=> b!7113601 (= e!4274837 (and tp!1957413 tp!1957417))))

(assert (= (and b!7113276 (is-ElementMatch!17948 (reg!18277 (regOne!36409 r!11554)))) b!7113600))

(assert (= (and b!7113276 (is-Concat!26793 (reg!18277 (regOne!36409 r!11554)))) b!7113601))

(assert (= (and b!7113276 (is-Star!17948 (reg!18277 (regOne!36409 r!11554)))) b!7113602))

(assert (= (and b!7113276 (is-Union!17948 (reg!18277 (regOne!36409 r!11554)))) b!7113603))

(declare-fun b!7113607 () Bool)

(declare-fun e!4274838 () Bool)

(declare-fun tp!1957421 () Bool)

(declare-fun tp!1957420 () Bool)

(assert (=> b!7113607 (= e!4274838 (and tp!1957421 tp!1957420))))

(declare-fun b!7113604 () Bool)

(assert (=> b!7113604 (= e!4274838 tp_is_empty!45129)))

(declare-fun b!7113606 () Bool)

(declare-fun tp!1957419 () Bool)

(assert (=> b!7113606 (= e!4274838 tp!1957419)))

(assert (=> b!7113271 (= tp!1957229 e!4274838)))

(declare-fun b!7113605 () Bool)

(declare-fun tp!1957418 () Bool)

(declare-fun tp!1957422 () Bool)

(assert (=> b!7113605 (= e!4274838 (and tp!1957418 tp!1957422))))

(assert (= (and b!7113271 (is-ElementMatch!17948 (regOne!36408 (regTwo!36408 r!11554)))) b!7113604))

(assert (= (and b!7113271 (is-Concat!26793 (regOne!36408 (regTwo!36408 r!11554)))) b!7113605))

(assert (= (and b!7113271 (is-Star!17948 (regOne!36408 (regTwo!36408 r!11554)))) b!7113606))

(assert (= (and b!7113271 (is-Union!17948 (regOne!36408 (regTwo!36408 r!11554)))) b!7113607))

(declare-fun b!7113611 () Bool)

(declare-fun e!4274839 () Bool)

(declare-fun tp!1957426 () Bool)

(declare-fun tp!1957425 () Bool)

(assert (=> b!7113611 (= e!4274839 (and tp!1957426 tp!1957425))))

(declare-fun b!7113608 () Bool)

(assert (=> b!7113608 (= e!4274839 tp_is_empty!45129)))

(declare-fun b!7113610 () Bool)

(declare-fun tp!1957424 () Bool)

(assert (=> b!7113610 (= e!4274839 tp!1957424)))

(assert (=> b!7113271 (= tp!1957233 e!4274839)))

(declare-fun b!7113609 () Bool)

(declare-fun tp!1957423 () Bool)

(declare-fun tp!1957427 () Bool)

(assert (=> b!7113609 (= e!4274839 (and tp!1957423 tp!1957427))))

(assert (= (and b!7113271 (is-ElementMatch!17948 (regTwo!36408 (regTwo!36408 r!11554)))) b!7113608))

(assert (= (and b!7113271 (is-Concat!26793 (regTwo!36408 (regTwo!36408 r!11554)))) b!7113609))

(assert (= (and b!7113271 (is-Star!17948 (regTwo!36408 (regTwo!36408 r!11554)))) b!7113610))

(assert (= (and b!7113271 (is-Union!17948 (regTwo!36408 (regTwo!36408 r!11554)))) b!7113611))

(declare-fun b_lambda!271467 () Bool)

(assert (= b_lambda!271459 (or b!7113066 b_lambda!271467)))

(declare-fun bs!1885375 () Bool)

(declare-fun d!2220730 () Bool)

(assert (= bs!1885375 (and d!2220730 b!7113066)))

(assert (=> bs!1885375 (= (dynLambda!28058 lambda!432174 (h!75233 (exprs!7442 c!9994))) (validRegex!9221 (h!75233 (exprs!7442 c!9994))))))

(declare-fun m!7833706 () Bool)

(assert (=> bs!1885375 m!7833706))

(assert (=> b!7113419 d!2220730))

(declare-fun b_lambda!271469 () Bool)

(assert (= b_lambda!271465 (or d!2220634 b_lambda!271469)))

(declare-fun bs!1885376 () Bool)

(declare-fun d!2220732 () Bool)

(assert (= bs!1885376 (and d!2220732 d!2220634)))

(assert (=> bs!1885376 (= (dynLambda!28058 lambda!432182 (h!75233 (exprs!7442 c!9994))) (validRegex!9221 (h!75233 (exprs!7442 c!9994))))))

(assert (=> bs!1885376 m!7833706))

(assert (=> b!7113490 d!2220732))

(declare-fun b_lambda!271471 () Bool)

(assert (= b_lambda!271461 (or d!2220636 b_lambda!271471)))

(declare-fun bs!1885377 () Bool)

(declare-fun d!2220734 () Bool)

(assert (= bs!1885377 (and d!2220734 d!2220636)))

(assert (=> bs!1885377 (= (dynLambda!28058 lambda!432183 (h!75233 (exprs!7442 auxCtx!45))) (validRegex!9221 (h!75233 (exprs!7442 auxCtx!45))))))

(declare-fun m!7833708 () Bool)

(assert (=> bs!1885377 m!7833708))

(assert (=> b!7113432 d!2220734))

(declare-fun b_lambda!271473 () Bool)

(assert (= b_lambda!271457 (or b!7113066 b_lambda!271473)))

(declare-fun bs!1885378 () Bool)

(declare-fun d!2220736 () Bool)

(assert (= bs!1885378 (and d!2220736 b!7113066)))

(assert (=> bs!1885378 (= (dynLambda!28058 lambda!432174 (h!75233 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)))) (validRegex!9221 (h!75233 (++!16100 (exprs!7442 c!9994) (exprs!7442 auxCtx!45)))))))

(declare-fun m!7833710 () Bool)

(assert (=> bs!1885378 m!7833710))

(assert (=> b!7113417 d!2220736))

(declare-fun b_lambda!271475 () Bool)

(assert (= b_lambda!271463 (or d!2220658 b_lambda!271475)))

(declare-fun bs!1885379 () Bool)

(declare-fun d!2220738 () Bool)

(assert (= bs!1885379 (and d!2220738 d!2220658)))

(assert (=> bs!1885379 (= (dynLambda!28058 lambda!432188 (h!75233 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))))) (validRegex!9221 (h!75233 (exprs!7442 (Context!13885 ($colon$colon!2800 (exprs!7442 c!9994) (regTwo!36408 r!11554)))))))))

(declare-fun m!7833712 () Bool)

(assert (=> bs!1885379 m!7833712))

(assert (=> b!7113475 d!2220738))

(push 1)

(assert (not b!7113606))

(assert (not b!7113541))

(assert (not b!7113515))

(assert (not b!7113561))

(assert (not b!7113508))

(assert (not bm!649284))

(assert (not bm!649292))

(assert (not b!7113603))

(assert (not b!7113501))

(assert (not b!7113610))

(assert (not b!7113601))

(assert (not b!7113553))

(assert (not b!7113532))

(assert (not b!7113562))

(assert (not b!7113533))

(assert (not b!7113582))

(assert (not b!7113504))

(assert (not b!7113555))

(assert (not bm!649298))

(assert (not b!7113575))

(assert (not b!7113530))

(assert (not bm!649258))

(assert (not b_lambda!271475))

(assert (not bm!649274))

(assert (not bm!649259))

(assert (not b!7113549))

(assert (not b!7113609))

(assert (not b!7113607))

(assert (not bm!649278))

(assert (not b!7113513))

(assert (not b!7113602))

(assert (not b!7113599))

(assert (not b!7113509))

(assert (not b!7113557))

(assert (not b_lambda!271473))

(assert (not b!7113524))

(assert (not b!7113550))

(assert (not b!7113558))

(assert (not b!7113481))

(assert (not b!7113590))

(assert (not b!7113598))

(assert (not b!7113594))

(assert (not b!7113579))

(assert (not b!7113589))

(assert (not b!7113396))

(assert (not b!7113581))

(assert (not bm!649273))

(assert (not b!7113569))

(assert (not b!7113538))

(assert (not b!7113595))

(assert (not b!7113367))

(assert (not bm!649283))

(assert (not b!7113517))

(assert (not bs!1885378))

(assert (not b!7113527))

(assert (not b!7113545))

(assert (not b!7113433))

(assert (not b!7113516))

(assert (not b!7113507))

(assert (not bm!649291))

(assert (not d!2220698))

(assert (not b!7113487))

(assert (not bs!1885379))

(assert (not b!7113591))

(assert (not b!7113420))

(assert (not b!7113408))

(assert (not b!7113488))

(assert (not bm!649268))

(assert (not b!7113605))

(assert (not bs!1885377))

(assert (not b!7113565))

(assert (not bm!649261))

(assert (not b!7113566))

(assert (not b!7113529))

(assert (not b!7113497))

(assert (not b!7113570))

(assert (not b!7113528))

(assert (not b!7113379))

(assert (not b!7113418))

(assert (not b!7113546))

(assert (not d!2220686))

(assert (not b!7113583))

(assert (not b!7113539))

(assert (not b!7113511))

(assert (not b!7113476))

(assert (not b!7113523))

(assert (not b_lambda!271471))

(assert (not b!7113585))

(assert (not bm!649277))

(assert (not b!7113377))

(assert (not b!7113537))

(assert tp_is_empty!45129)

(assert (not bs!1885376))

(assert (not b!7113587))

(assert (not b!7113611))

(assert (not b!7113512))

(assert (not bm!649282))

(assert (not b!7113470))

(assert (not b!7113525))

(assert (not b!7113542))

(assert (not b!7113551))

(assert (not b!7113381))

(assert (not b!7113505))

(assert (not b!7113563))

(assert (not b!7113491))

(assert (not b!7113424))

(assert (not b!7113437))

(assert (not b!7113597))

(assert (not bs!1885375))

(assert (not b!7113543))

(assert (not b!7113577))

(assert (not b!7113534))

(assert (not b!7113503))

(assert (not b!7113586))

(assert (not b_lambda!271469))

(assert (not b!7113519))

(assert (not b!7113547))

(assert (not b!7113571))

(assert (not b!7113559))

(assert (not b!7113536))

(assert (not b_lambda!271467))

(assert (not bm!649294))

(assert (not b!7113521))

(assert (not b!7113499))

(assert (not bm!649262))

(assert (not b!7113593))

(assert (not b!7113573))

(assert (not bm!649267))

(assert (not b!7113385))

(assert (not d!2220720))

(assert (not d!2220702))

(assert (not b!7113578))

(assert (not bm!649263))

(assert (not bm!649269))

(assert (not b!7113567))

(assert (not bm!649297))

(assert (not bm!649276))

(assert (not d!2220694))

(assert (not b!7113574))

(assert (not b!7113554))

(assert (not bm!649295))

(assert (not b!7113520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

