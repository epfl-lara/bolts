; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!734522 () Bool)

(assert start!734522)

(declare-fun b!7627346 () Bool)

(assert (=> b!7627346 true))

(assert (=> b!7627346 true))

(declare-fun b!7627336 () Bool)

(declare-fun e!4534764 () Bool)

(declare-datatypes ((C!41058 0))(
  ( (C!41059 (val!30969 Int)) )
))
(declare-datatypes ((Regex!20366 0))(
  ( (ElementMatch!20366 (c!1405307 C!41058)) (Concat!29211 (regOne!41244 Regex!20366) (regTwo!41244 Regex!20366)) (EmptyExpr!20366) (Star!20366 (reg!20695 Regex!20366)) (EmptyLang!20366) (Union!20366 (regOne!41245 Regex!20366) (regTwo!41245 Regex!20366)) )
))
(declare-fun r!14126 () Regex!20366)

(declare-fun validRegex!10784 (Regex!20366) Bool)

(assert (=> b!7627336 (= e!4534764 (validRegex!10784 (regOne!41244 r!14126)))))

(declare-fun b!7627337 () Bool)

(declare-fun e!4534769 () Bool)

(declare-fun tp_is_empty!51087 () Bool)

(declare-fun tp!2227008 () Bool)

(assert (=> b!7627337 (= e!4534769 (and tp_is_empty!51087 tp!2227008))))

(declare-fun res!3054310 () Bool)

(declare-fun e!4534771 () Bool)

(assert (=> start!734522 (=> (not res!3054310) (not e!4534771))))

(assert (=> start!734522 (= res!3054310 (validRegex!10784 r!14126))))

(assert (=> start!734522 e!4534771))

(declare-fun e!4534767 () Bool)

(assert (=> start!734522 e!4534767))

(assert (=> start!734522 e!4534769))

(declare-fun e!4534768 () Bool)

(declare-fun e!4534770 () Bool)

(assert (=> start!734522 (and e!4534768 e!4534770)))

(declare-fun b!7627338 () Bool)

(declare-fun res!3054313 () Bool)

(assert (=> b!7627338 (=> (not res!3054313) (not e!4534771))))

(assert (=> b!7627338 (= res!3054313 (and (not (is-EmptyExpr!20366 r!14126)) (not (is-EmptyLang!20366 r!14126)) (not (is-ElementMatch!20366 r!14126)) (not (is-Union!20366 r!14126)) (not (is-Star!20366 r!14126))))))

(declare-fun b!7627339 () Bool)

(declare-fun tp!2227013 () Bool)

(declare-fun tp!2227009 () Bool)

(assert (=> b!7627339 (= e!4534767 (and tp!2227013 tp!2227009))))

(declare-fun b!7627340 () Bool)

(declare-fun tp!2227007 () Bool)

(assert (=> b!7627340 (= e!4534770 (and tp_is_empty!51087 tp!2227007))))

(declare-fun b!7627341 () Bool)

(declare-fun tp!2227010 () Bool)

(assert (=> b!7627341 (= e!4534767 tp!2227010)))

(declare-fun b!7627342 () Bool)

(declare-fun tp!2227012 () Bool)

(assert (=> b!7627342 (= e!4534768 (and tp_is_empty!51087 tp!2227012))))

(declare-fun b!7627343 () Bool)

(declare-fun e!4534766 () Bool)

(declare-fun e!4534765 () Bool)

(assert (=> b!7627343 (= e!4534766 e!4534765)))

(declare-fun res!3054309 () Bool)

(assert (=> b!7627343 (=> res!3054309 e!4534765)))

(declare-fun lambda!468856 () Int)

(declare-fun Exists!4520 (Int) Bool)

(assert (=> b!7627343 (= res!3054309 (not (Exists!4520 lambda!468856)))))

(declare-fun lt!2658139 () Bool)

(assert (=> b!7627343 lt!2658139))

(declare-datatypes ((Unit!167660 0))(
  ( (Unit!167661) )
))
(declare-fun lt!2658137 () Unit!167660)

(declare-datatypes ((List!73217 0))(
  ( (Nil!73093) (Cons!73093 (h!79541 C!41058) (t!387952 List!73217)) )
))
(declare-fun s!9605 () List!73217)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!273 (Regex!20366 Regex!20366 List!73217) Unit!167660)

(assert (=> b!7627343 (= lt!2658137 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!273 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605))))

(declare-fun b!7627344 () Bool)

(assert (=> b!7627344 (= e!4534767 tp_is_empty!51087)))

(declare-fun b!7627345 () Bool)

(declare-fun tp!2227006 () Bool)

(declare-fun tp!2227011 () Bool)

(assert (=> b!7627345 (= e!4534767 (and tp!2227006 tp!2227011))))

(assert (=> b!7627346 (= e!4534771 (not e!4534766))))

(declare-fun res!3054312 () Bool)

(assert (=> b!7627346 (=> res!3054312 e!4534766)))

(declare-fun matchR!9869 (Regex!20366 List!73217) Bool)

(assert (=> b!7627346 (= res!3054312 (not (matchR!9869 r!14126 s!9605)))))

(assert (=> b!7627346 (= lt!2658139 (Exists!4520 lambda!468856))))

(declare-datatypes ((tuple2!69290 0))(
  ( (tuple2!69291 (_1!37948 List!73217) (_2!37948 List!73217)) )
))
(declare-datatypes ((Option!17439 0))(
  ( (None!17438) (Some!17438 (v!54573 tuple2!69290)) )
))
(declare-fun isDefined!14055 (Option!17439) Bool)

(declare-fun findConcatSeparation!3469 (Regex!20366 Regex!20366 List!73217 List!73217 List!73217) Option!17439)

(assert (=> b!7627346 (= lt!2658139 (isDefined!14055 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605)))))

(declare-fun lt!2658138 () Unit!167660)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3227 (Regex!20366 Regex!20366 List!73217) Unit!167660)

(assert (=> b!7627346 (= lt!2658138 (lemmaFindConcatSeparationEquivalentToExists!3227 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605))))

(declare-fun b!7627347 () Bool)

(assert (=> b!7627347 (= e!4534765 e!4534764)))

(declare-fun res!3054311 () Bool)

(assert (=> b!7627347 (=> res!3054311 e!4534764)))

(declare-fun cut!15 () tuple2!69290)

(declare-fun ++!17650 (List!73217 List!73217) List!73217)

(assert (=> b!7627347 (= res!3054311 (not (= (++!17650 (_1!37948 cut!15) (_2!37948 cut!15)) s!9605)))))

(declare-fun lt!2658140 () tuple2!69290)

(declare-fun matchRSpec!4529 (Regex!20366 List!73217) Bool)

(assert (=> b!7627347 (= (matchR!9869 (regTwo!41244 r!14126) (_2!37948 lt!2658140)) (matchRSpec!4529 (regTwo!41244 r!14126) (_2!37948 lt!2658140)))))

(declare-fun lt!2658135 () Unit!167660)

(declare-fun mainMatchTheorem!4519 (Regex!20366 List!73217) Unit!167660)

(assert (=> b!7627347 (= lt!2658135 (mainMatchTheorem!4519 (regTwo!41244 r!14126) (_2!37948 lt!2658140)))))

(assert (=> b!7627347 (= (matchR!9869 (regOne!41244 r!14126) (_1!37948 lt!2658140)) (matchRSpec!4529 (regOne!41244 r!14126) (_1!37948 lt!2658140)))))

(declare-fun lt!2658136 () Unit!167660)

(assert (=> b!7627347 (= lt!2658136 (mainMatchTheorem!4519 (regOne!41244 r!14126) (_1!37948 lt!2658140)))))

(declare-fun pickWitness!461 (Int) tuple2!69290)

(assert (=> b!7627347 (= lt!2658140 (pickWitness!461 lambda!468856))))

(assert (= (and start!734522 res!3054310) b!7627338))

(assert (= (and b!7627338 res!3054313) b!7627346))

(assert (= (and b!7627346 (not res!3054312)) b!7627343))

(assert (= (and b!7627343 (not res!3054309)) b!7627347))

(assert (= (and b!7627347 (not res!3054311)) b!7627336))

(assert (= (and start!734522 (is-ElementMatch!20366 r!14126)) b!7627344))

(assert (= (and start!734522 (is-Concat!29211 r!14126)) b!7627345))

(assert (= (and start!734522 (is-Star!20366 r!14126)) b!7627341))

(assert (= (and start!734522 (is-Union!20366 r!14126)) b!7627339))

(assert (= (and start!734522 (is-Cons!73093 s!9605)) b!7627337))

(assert (= (and start!734522 (is-Cons!73093 (_1!37948 cut!15))) b!7627342))

(assert (= (and start!734522 (is-Cons!73093 (_2!37948 cut!15))) b!7627340))

(declare-fun m!8156018 () Bool)

(assert (=> b!7627336 m!8156018))

(declare-fun m!8156020 () Bool)

(assert (=> b!7627347 m!8156020))

(declare-fun m!8156022 () Bool)

(assert (=> b!7627347 m!8156022))

(declare-fun m!8156024 () Bool)

(assert (=> b!7627347 m!8156024))

(declare-fun m!8156026 () Bool)

(assert (=> b!7627347 m!8156026))

(declare-fun m!8156028 () Bool)

(assert (=> b!7627347 m!8156028))

(declare-fun m!8156030 () Bool)

(assert (=> b!7627347 m!8156030))

(declare-fun m!8156032 () Bool)

(assert (=> b!7627347 m!8156032))

(declare-fun m!8156034 () Bool)

(assert (=> b!7627347 m!8156034))

(declare-fun m!8156036 () Bool)

(assert (=> b!7627346 m!8156036))

(declare-fun m!8156038 () Bool)

(assert (=> b!7627346 m!8156038))

(declare-fun m!8156040 () Bool)

(assert (=> b!7627346 m!8156040))

(assert (=> b!7627346 m!8156038))

(declare-fun m!8156042 () Bool)

(assert (=> b!7627346 m!8156042))

(declare-fun m!8156044 () Bool)

(assert (=> b!7627346 m!8156044))

(assert (=> b!7627343 m!8156044))

(declare-fun m!8156046 () Bool)

(assert (=> b!7627343 m!8156046))

(declare-fun m!8156048 () Bool)

(assert (=> start!734522 m!8156048))

(push 1)

(assert (not b!7627346))

(assert (not b!7627347))

(assert (not b!7627340))

(assert (not b!7627343))

(assert (not b!7627336))

(assert tp_is_empty!51087)

(assert (not b!7627342))

(assert (not b!7627337))

(assert (not b!7627345))

(assert (not start!734522))

(assert (not b!7627339))

(assert (not b!7627341))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1943689 () Bool)

(declare-fun b!7627442 () Bool)

(assert (= bs!1943689 (and b!7627442 b!7627346)))

(declare-fun lambda!468868 () Int)

(assert (=> bs!1943689 (not (= lambda!468868 lambda!468856))))

(assert (=> b!7627442 true))

(assert (=> b!7627442 true))

(declare-fun bs!1943690 () Bool)

(declare-fun b!7627436 () Bool)

(assert (= bs!1943690 (and b!7627436 b!7627346)))

(declare-fun lambda!468869 () Int)

(assert (=> bs!1943690 (not (= lambda!468869 lambda!468856))))

(declare-fun bs!1943691 () Bool)

(assert (= bs!1943691 (and b!7627436 b!7627442)))

(assert (=> bs!1943691 (not (= lambda!468869 lambda!468868))))

(assert (=> b!7627436 true))

(assert (=> b!7627436 true))

(declare-fun e!4534824 () Bool)

(declare-fun call!700252 () Bool)

(assert (=> b!7627436 (= e!4534824 call!700252)))

(declare-fun b!7627437 () Bool)

(declare-fun e!4534820 () Bool)

(declare-fun e!4534821 () Bool)

(assert (=> b!7627437 (= e!4534820 e!4534821)))

(declare-fun res!3054359 () Bool)

(assert (=> b!7627437 (= res!3054359 (matchRSpec!4529 (regOne!41245 (regOne!41244 r!14126)) (_1!37948 lt!2658140)))))

(assert (=> b!7627437 (=> res!3054359 e!4534821)))

(declare-fun b!7627438 () Bool)

(assert (=> b!7627438 (= e!4534821 (matchRSpec!4529 (regTwo!41245 (regOne!41244 r!14126)) (_1!37948 lt!2658140)))))

(declare-fun b!7627439 () Bool)

(declare-fun e!4534823 () Bool)

(declare-fun call!700251 () Bool)

(assert (=> b!7627439 (= e!4534823 call!700251)))

(declare-fun b!7627440 () Bool)

(declare-fun res!3054358 () Bool)

(declare-fun e!4534822 () Bool)

(assert (=> b!7627440 (=> res!3054358 e!4534822)))

(assert (=> b!7627440 (= res!3054358 call!700251)))

(assert (=> b!7627440 (= e!4534824 e!4534822)))

(declare-fun b!7627441 () Bool)

(declare-fun e!4534826 () Bool)

(assert (=> b!7627441 (= e!4534826 (= (_1!37948 lt!2658140) (Cons!73093 (c!1405307 (regOne!41244 r!14126)) Nil!73093)))))

(declare-fun bm!700246 () Bool)

(declare-fun isEmpty!41717 (List!73217) Bool)

(assert (=> bm!700246 (= call!700251 (isEmpty!41717 (_1!37948 lt!2658140)))))

(assert (=> b!7627442 (= e!4534822 call!700252)))

(declare-fun d!2323755 () Bool)

(declare-fun c!1405320 () Bool)

(assert (=> d!2323755 (= c!1405320 (is-EmptyExpr!20366 (regOne!41244 r!14126)))))

(assert (=> d!2323755 (= (matchRSpec!4529 (regOne!41244 r!14126) (_1!37948 lt!2658140)) e!4534823)))

(declare-fun b!7627443 () Bool)

(declare-fun c!1405319 () Bool)

(assert (=> b!7627443 (= c!1405319 (is-ElementMatch!20366 (regOne!41244 r!14126)))))

(declare-fun e!4534825 () Bool)

(assert (=> b!7627443 (= e!4534825 e!4534826)))

(declare-fun b!7627444 () Bool)

(assert (=> b!7627444 (= e!4534820 e!4534824)))

(declare-fun c!1405318 () Bool)

(assert (=> b!7627444 (= c!1405318 (is-Star!20366 (regOne!41244 r!14126)))))

(declare-fun b!7627445 () Bool)

(declare-fun c!1405317 () Bool)

(assert (=> b!7627445 (= c!1405317 (is-Union!20366 (regOne!41244 r!14126)))))

(assert (=> b!7627445 (= e!4534826 e!4534820)))

(declare-fun b!7627446 () Bool)

(assert (=> b!7627446 (= e!4534823 e!4534825)))

(declare-fun res!3054357 () Bool)

(assert (=> b!7627446 (= res!3054357 (not (is-EmptyLang!20366 (regOne!41244 r!14126))))))

(assert (=> b!7627446 (=> (not res!3054357) (not e!4534825))))

(declare-fun bm!700247 () Bool)

(assert (=> bm!700247 (= call!700252 (Exists!4520 (ite c!1405318 lambda!468868 lambda!468869)))))

(assert (= (and d!2323755 c!1405320) b!7627439))

(assert (= (and d!2323755 (not c!1405320)) b!7627446))

(assert (= (and b!7627446 res!3054357) b!7627443))

(assert (= (and b!7627443 c!1405319) b!7627441))

(assert (= (and b!7627443 (not c!1405319)) b!7627445))

(assert (= (and b!7627445 c!1405317) b!7627437))

(assert (= (and b!7627445 (not c!1405317)) b!7627444))

(assert (= (and b!7627437 (not res!3054359)) b!7627438))

(assert (= (and b!7627444 c!1405318) b!7627440))

(assert (= (and b!7627444 (not c!1405318)) b!7627436))

(assert (= (and b!7627440 (not res!3054358)) b!7627442))

(assert (= (or b!7627442 b!7627436) bm!700247))

(assert (= (or b!7627439 b!7627440) bm!700246))

(declare-fun m!8156082 () Bool)

(assert (=> b!7627437 m!8156082))

(declare-fun m!8156084 () Bool)

(assert (=> b!7627438 m!8156084))

(declare-fun m!8156086 () Bool)

(assert (=> bm!700246 m!8156086))

(declare-fun m!8156088 () Bool)

(assert (=> bm!700247 m!8156088))

(assert (=> b!7627347 d!2323755))

(declare-fun d!2323759 () Bool)

(assert (=> d!2323759 (= (matchR!9869 (regTwo!41244 r!14126) (_2!37948 lt!2658140)) (matchRSpec!4529 (regTwo!41244 r!14126) (_2!37948 lt!2658140)))))

(declare-fun lt!2658163 () Unit!167660)

(declare-fun choose!58863 (Regex!20366 List!73217) Unit!167660)

(assert (=> d!2323759 (= lt!2658163 (choose!58863 (regTwo!41244 r!14126) (_2!37948 lt!2658140)))))

(assert (=> d!2323759 (validRegex!10784 (regTwo!41244 r!14126))))

(assert (=> d!2323759 (= (mainMatchTheorem!4519 (regTwo!41244 r!14126) (_2!37948 lt!2658140)) lt!2658163)))

(declare-fun bs!1943692 () Bool)

(assert (= bs!1943692 d!2323759))

(assert (=> bs!1943692 m!8156020))

(assert (=> bs!1943692 m!8156034))

(declare-fun m!8156090 () Bool)

(assert (=> bs!1943692 m!8156090))

(declare-fun m!8156092 () Bool)

(assert (=> bs!1943692 m!8156092))

(assert (=> b!7627347 d!2323759))

(declare-fun d!2323761 () Bool)

(assert (=> d!2323761 (= (matchR!9869 (regOne!41244 r!14126) (_1!37948 lt!2658140)) (matchRSpec!4529 (regOne!41244 r!14126) (_1!37948 lt!2658140)))))

(declare-fun lt!2658164 () Unit!167660)

(assert (=> d!2323761 (= lt!2658164 (choose!58863 (regOne!41244 r!14126) (_1!37948 lt!2658140)))))

(assert (=> d!2323761 (validRegex!10784 (regOne!41244 r!14126))))

(assert (=> d!2323761 (= (mainMatchTheorem!4519 (regOne!41244 r!14126) (_1!37948 lt!2658140)) lt!2658164)))

(declare-fun bs!1943693 () Bool)

(assert (= bs!1943693 d!2323761))

(assert (=> bs!1943693 m!8156026))

(assert (=> bs!1943693 m!8156028))

(declare-fun m!8156094 () Bool)

(assert (=> bs!1943693 m!8156094))

(assert (=> bs!1943693 m!8156018))

(assert (=> b!7627347 d!2323761))

(declare-fun bs!1943694 () Bool)

(declare-fun b!7627457 () Bool)

(assert (= bs!1943694 (and b!7627457 b!7627346)))

(declare-fun lambda!468870 () Int)

(assert (=> bs!1943694 (not (= lambda!468870 lambda!468856))))

(declare-fun bs!1943695 () Bool)

(assert (= bs!1943695 (and b!7627457 b!7627442)))

(assert (=> bs!1943695 (= (and (= (_2!37948 lt!2658140) (_1!37948 lt!2658140)) (= (reg!20695 (regTwo!41244 r!14126)) (reg!20695 (regOne!41244 r!14126))) (= (regTwo!41244 r!14126) (regOne!41244 r!14126))) (= lambda!468870 lambda!468868))))

(declare-fun bs!1943696 () Bool)

(assert (= bs!1943696 (and b!7627457 b!7627436)))

(assert (=> bs!1943696 (not (= lambda!468870 lambda!468869))))

(assert (=> b!7627457 true))

(assert (=> b!7627457 true))

(declare-fun bs!1943697 () Bool)

(declare-fun b!7627451 () Bool)

(assert (= bs!1943697 (and b!7627451 b!7627346)))

(declare-fun lambda!468871 () Int)

(assert (=> bs!1943697 (not (= lambda!468871 lambda!468856))))

(declare-fun bs!1943698 () Bool)

(assert (= bs!1943698 (and b!7627451 b!7627442)))

(assert (=> bs!1943698 (not (= lambda!468871 lambda!468868))))

(declare-fun bs!1943699 () Bool)

(assert (= bs!1943699 (and b!7627451 b!7627436)))

(assert (=> bs!1943699 (= (and (= (_2!37948 lt!2658140) (_1!37948 lt!2658140)) (= (regOne!41244 (regTwo!41244 r!14126)) (regOne!41244 (regOne!41244 r!14126))) (= (regTwo!41244 (regTwo!41244 r!14126)) (regTwo!41244 (regOne!41244 r!14126)))) (= lambda!468871 lambda!468869))))

(declare-fun bs!1943700 () Bool)

(assert (= bs!1943700 (and b!7627451 b!7627457)))

(assert (=> bs!1943700 (not (= lambda!468871 lambda!468870))))

(assert (=> b!7627451 true))

(assert (=> b!7627451 true))

(declare-fun e!4534833 () Bool)

(declare-fun call!700254 () Bool)

(assert (=> b!7627451 (= e!4534833 call!700254)))

(declare-fun b!7627452 () Bool)

(declare-fun e!4534829 () Bool)

(declare-fun e!4534830 () Bool)

(assert (=> b!7627452 (= e!4534829 e!4534830)))

(declare-fun res!3054362 () Bool)

(assert (=> b!7627452 (= res!3054362 (matchRSpec!4529 (regOne!41245 (regTwo!41244 r!14126)) (_2!37948 lt!2658140)))))

(assert (=> b!7627452 (=> res!3054362 e!4534830)))

(declare-fun b!7627453 () Bool)

(assert (=> b!7627453 (= e!4534830 (matchRSpec!4529 (regTwo!41245 (regTwo!41244 r!14126)) (_2!37948 lt!2658140)))))

(declare-fun b!7627454 () Bool)

(declare-fun e!4534832 () Bool)

(declare-fun call!700253 () Bool)

(assert (=> b!7627454 (= e!4534832 call!700253)))

(declare-fun b!7627455 () Bool)

(declare-fun res!3054361 () Bool)

(declare-fun e!4534831 () Bool)

(assert (=> b!7627455 (=> res!3054361 e!4534831)))

(assert (=> b!7627455 (= res!3054361 call!700253)))

(assert (=> b!7627455 (= e!4534833 e!4534831)))

(declare-fun b!7627456 () Bool)

(declare-fun e!4534835 () Bool)

(assert (=> b!7627456 (= e!4534835 (= (_2!37948 lt!2658140) (Cons!73093 (c!1405307 (regTwo!41244 r!14126)) Nil!73093)))))

(declare-fun bm!700248 () Bool)

(assert (=> bm!700248 (= call!700253 (isEmpty!41717 (_2!37948 lt!2658140)))))

(assert (=> b!7627457 (= e!4534831 call!700254)))

(declare-fun d!2323763 () Bool)

(declare-fun c!1405326 () Bool)

(assert (=> d!2323763 (= c!1405326 (is-EmptyExpr!20366 (regTwo!41244 r!14126)))))

(assert (=> d!2323763 (= (matchRSpec!4529 (regTwo!41244 r!14126) (_2!37948 lt!2658140)) e!4534832)))

(declare-fun b!7627458 () Bool)

(declare-fun c!1405325 () Bool)

(assert (=> b!7627458 (= c!1405325 (is-ElementMatch!20366 (regTwo!41244 r!14126)))))

(declare-fun e!4534834 () Bool)

(assert (=> b!7627458 (= e!4534834 e!4534835)))

(declare-fun b!7627459 () Bool)

(assert (=> b!7627459 (= e!4534829 e!4534833)))

(declare-fun c!1405324 () Bool)

(assert (=> b!7627459 (= c!1405324 (is-Star!20366 (regTwo!41244 r!14126)))))

(declare-fun b!7627460 () Bool)

(declare-fun c!1405323 () Bool)

(assert (=> b!7627460 (= c!1405323 (is-Union!20366 (regTwo!41244 r!14126)))))

(assert (=> b!7627460 (= e!4534835 e!4534829)))

(declare-fun b!7627461 () Bool)

(assert (=> b!7627461 (= e!4534832 e!4534834)))

(declare-fun res!3054360 () Bool)

(assert (=> b!7627461 (= res!3054360 (not (is-EmptyLang!20366 (regTwo!41244 r!14126))))))

(assert (=> b!7627461 (=> (not res!3054360) (not e!4534834))))

(declare-fun bm!700249 () Bool)

(assert (=> bm!700249 (= call!700254 (Exists!4520 (ite c!1405324 lambda!468870 lambda!468871)))))

(assert (= (and d!2323763 c!1405326) b!7627454))

(assert (= (and d!2323763 (not c!1405326)) b!7627461))

(assert (= (and b!7627461 res!3054360) b!7627458))

(assert (= (and b!7627458 c!1405325) b!7627456))

(assert (= (and b!7627458 (not c!1405325)) b!7627460))

(assert (= (and b!7627460 c!1405323) b!7627452))

(assert (= (and b!7627460 (not c!1405323)) b!7627459))

(assert (= (and b!7627452 (not res!3054362)) b!7627453))

(assert (= (and b!7627459 c!1405324) b!7627455))

(assert (= (and b!7627459 (not c!1405324)) b!7627451))

(assert (= (and b!7627455 (not res!3054361)) b!7627457))

(assert (= (or b!7627457 b!7627451) bm!700249))

(assert (= (or b!7627454 b!7627455) bm!700248))

(declare-fun m!8156096 () Bool)

(assert (=> b!7627452 m!8156096))

(declare-fun m!8156098 () Bool)

(assert (=> b!7627453 m!8156098))

(declare-fun m!8156100 () Bool)

(assert (=> bm!700248 m!8156100))

(declare-fun m!8156102 () Bool)

(assert (=> bm!700249 m!8156102))

(assert (=> b!7627347 d!2323763))

(declare-fun b!7627528 () Bool)

(declare-fun res!3054410 () Bool)

(declare-fun e!4534875 () Bool)

(assert (=> b!7627528 (=> (not res!3054410) (not e!4534875))))

(declare-fun tail!15213 (List!73217) List!73217)

(assert (=> b!7627528 (= res!3054410 (isEmpty!41717 (tail!15213 (_2!37948 lt!2658140))))))

(declare-fun b!7627529 () Bool)

(declare-fun e!4534874 () Bool)

(declare-fun e!4534871 () Bool)

(assert (=> b!7627529 (= e!4534874 e!4534871)))

(declare-fun c!1405341 () Bool)

(assert (=> b!7627529 (= c!1405341 (is-EmptyLang!20366 (regTwo!41244 r!14126)))))

(declare-fun b!7627530 () Bool)

(declare-fun lt!2658168 () Bool)

(assert (=> b!7627530 (= e!4534871 (not lt!2658168))))

(declare-fun b!7627531 () Bool)

(declare-fun res!3054405 () Bool)

(declare-fun e!4534870 () Bool)

(assert (=> b!7627531 (=> res!3054405 e!4534870)))

(assert (=> b!7627531 (= res!3054405 (not (is-ElementMatch!20366 (regTwo!41244 r!14126))))))

(assert (=> b!7627531 (= e!4534871 e!4534870)))

(declare-fun b!7627532 () Bool)

(declare-fun res!3054408 () Bool)

(assert (=> b!7627532 (=> res!3054408 e!4534870)))

(assert (=> b!7627532 (= res!3054408 e!4534875)))

(declare-fun res!3054403 () Bool)

(assert (=> b!7627532 (=> (not res!3054403) (not e!4534875))))

(assert (=> b!7627532 (= res!3054403 lt!2658168)))

(declare-fun b!7627533 () Bool)

(declare-fun res!3054406 () Bool)

(declare-fun e!4534872 () Bool)

(assert (=> b!7627533 (=> res!3054406 e!4534872)))

(assert (=> b!7627533 (= res!3054406 (not (isEmpty!41717 (tail!15213 (_2!37948 lt!2658140)))))))

(declare-fun b!7627534 () Bool)

(declare-fun e!4534869 () Bool)

(assert (=> b!7627534 (= e!4534869 e!4534872)))

(declare-fun res!3054404 () Bool)

(assert (=> b!7627534 (=> res!3054404 e!4534872)))

(declare-fun call!700260 () Bool)

(assert (=> b!7627534 (= res!3054404 call!700260)))

(declare-fun d!2323765 () Bool)

(assert (=> d!2323765 e!4534874))

(declare-fun c!1405340 () Bool)

(assert (=> d!2323765 (= c!1405340 (is-EmptyExpr!20366 (regTwo!41244 r!14126)))))

(declare-fun e!4534873 () Bool)

(assert (=> d!2323765 (= lt!2658168 e!4534873)))

(declare-fun c!1405342 () Bool)

(assert (=> d!2323765 (= c!1405342 (isEmpty!41717 (_2!37948 lt!2658140)))))

(assert (=> d!2323765 (validRegex!10784 (regTwo!41244 r!14126))))

(assert (=> d!2323765 (= (matchR!9869 (regTwo!41244 r!14126) (_2!37948 lt!2658140)) lt!2658168)))

(declare-fun b!7627535 () Bool)

(declare-fun head!15673 (List!73217) C!41058)

(assert (=> b!7627535 (= e!4534872 (not (= (head!15673 (_2!37948 lt!2658140)) (c!1405307 (regTwo!41244 r!14126)))))))

(declare-fun b!7627536 () Bool)

(declare-fun res!3054407 () Bool)

(assert (=> b!7627536 (=> (not res!3054407) (not e!4534875))))

(assert (=> b!7627536 (= res!3054407 (not call!700260))))

(declare-fun b!7627537 () Bool)

(assert (=> b!7627537 (= e!4534875 (= (head!15673 (_2!37948 lt!2658140)) (c!1405307 (regTwo!41244 r!14126))))))

(declare-fun b!7627538 () Bool)

(declare-fun nullable!8899 (Regex!20366) Bool)

(assert (=> b!7627538 (= e!4534873 (nullable!8899 (regTwo!41244 r!14126)))))

(declare-fun bm!700255 () Bool)

(assert (=> bm!700255 (= call!700260 (isEmpty!41717 (_2!37948 lt!2658140)))))

(declare-fun b!7627539 () Bool)

(declare-fun derivativeStep!5873 (Regex!20366 C!41058) Regex!20366)

(assert (=> b!7627539 (= e!4534873 (matchR!9869 (derivativeStep!5873 (regTwo!41244 r!14126) (head!15673 (_2!37948 lt!2658140))) (tail!15213 (_2!37948 lt!2658140))))))

(declare-fun b!7627540 () Bool)

(assert (=> b!7627540 (= e!4534874 (= lt!2658168 call!700260))))

(declare-fun b!7627541 () Bool)

(assert (=> b!7627541 (= e!4534870 e!4534869)))

(declare-fun res!3054409 () Bool)

(assert (=> b!7627541 (=> (not res!3054409) (not e!4534869))))

(assert (=> b!7627541 (= res!3054409 (not lt!2658168))))

(assert (= (and d!2323765 c!1405342) b!7627538))

(assert (= (and d!2323765 (not c!1405342)) b!7627539))

(assert (= (and d!2323765 c!1405340) b!7627540))

(assert (= (and d!2323765 (not c!1405340)) b!7627529))

(assert (= (and b!7627529 c!1405341) b!7627530))

(assert (= (and b!7627529 (not c!1405341)) b!7627531))

(assert (= (and b!7627531 (not res!3054405)) b!7627532))

(assert (= (and b!7627532 res!3054403) b!7627536))

(assert (= (and b!7627536 res!3054407) b!7627528))

(assert (= (and b!7627528 res!3054410) b!7627537))

(assert (= (and b!7627532 (not res!3054408)) b!7627541))

(assert (= (and b!7627541 res!3054409) b!7627534))

(assert (= (and b!7627534 (not res!3054404)) b!7627533))

(assert (= (and b!7627533 (not res!3054406)) b!7627535))

(assert (= (or b!7627540 b!7627534 b!7627536) bm!700255))

(assert (=> bm!700255 m!8156100))

(declare-fun m!8156104 () Bool)

(assert (=> b!7627539 m!8156104))

(assert (=> b!7627539 m!8156104))

(declare-fun m!8156106 () Bool)

(assert (=> b!7627539 m!8156106))

(declare-fun m!8156108 () Bool)

(assert (=> b!7627539 m!8156108))

(assert (=> b!7627539 m!8156106))

(assert (=> b!7627539 m!8156108))

(declare-fun m!8156110 () Bool)

(assert (=> b!7627539 m!8156110))

(assert (=> b!7627533 m!8156108))

(assert (=> b!7627533 m!8156108))

(declare-fun m!8156112 () Bool)

(assert (=> b!7627533 m!8156112))

(assert (=> b!7627537 m!8156104))

(assert (=> b!7627528 m!8156108))

(assert (=> b!7627528 m!8156108))

(assert (=> b!7627528 m!8156112))

(assert (=> b!7627535 m!8156104))

(assert (=> d!2323765 m!8156100))

(assert (=> d!2323765 m!8156092))

(declare-fun m!8156114 () Bool)

(assert (=> b!7627538 m!8156114))

(assert (=> b!7627347 d!2323765))

(declare-fun b!7627550 () Bool)

(declare-fun e!4534880 () List!73217)

(assert (=> b!7627550 (= e!4534880 (_2!37948 cut!15))))

(declare-fun b!7627553 () Bool)

(declare-fun e!4534881 () Bool)

(declare-fun lt!2658171 () List!73217)

(assert (=> b!7627553 (= e!4534881 (or (not (= (_2!37948 cut!15) Nil!73093)) (= lt!2658171 (_1!37948 cut!15))))))

(declare-fun b!7627552 () Bool)

(declare-fun res!3054416 () Bool)

(assert (=> b!7627552 (=> (not res!3054416) (not e!4534881))))

(declare-fun size!42553 (List!73217) Int)

(assert (=> b!7627552 (= res!3054416 (= (size!42553 lt!2658171) (+ (size!42553 (_1!37948 cut!15)) (size!42553 (_2!37948 cut!15)))))))

(declare-fun d!2323767 () Bool)

(assert (=> d!2323767 e!4534881))

(declare-fun res!3054415 () Bool)

(assert (=> d!2323767 (=> (not res!3054415) (not e!4534881))))

(declare-fun content!15460 (List!73217) (Set C!41058))

(assert (=> d!2323767 (= res!3054415 (= (content!15460 lt!2658171) (set.union (content!15460 (_1!37948 cut!15)) (content!15460 (_2!37948 cut!15)))))))

(assert (=> d!2323767 (= lt!2658171 e!4534880)))

(declare-fun c!1405345 () Bool)

(assert (=> d!2323767 (= c!1405345 (is-Nil!73093 (_1!37948 cut!15)))))

(assert (=> d!2323767 (= (++!17650 (_1!37948 cut!15) (_2!37948 cut!15)) lt!2658171)))

(declare-fun b!7627551 () Bool)

(assert (=> b!7627551 (= e!4534880 (Cons!73093 (h!79541 (_1!37948 cut!15)) (++!17650 (t!387952 (_1!37948 cut!15)) (_2!37948 cut!15))))))

(assert (= (and d!2323767 c!1405345) b!7627550))

(assert (= (and d!2323767 (not c!1405345)) b!7627551))

(assert (= (and d!2323767 res!3054415) b!7627552))

(assert (= (and b!7627552 res!3054416) b!7627553))

(declare-fun m!8156130 () Bool)

(assert (=> b!7627552 m!8156130))

(declare-fun m!8156132 () Bool)

(assert (=> b!7627552 m!8156132))

(declare-fun m!8156134 () Bool)

(assert (=> b!7627552 m!8156134))

(declare-fun m!8156136 () Bool)

(assert (=> d!2323767 m!8156136))

(declare-fun m!8156138 () Bool)

(assert (=> d!2323767 m!8156138))

(declare-fun m!8156140 () Bool)

(assert (=> d!2323767 m!8156140))

(declare-fun m!8156142 () Bool)

(assert (=> b!7627551 m!8156142))

(assert (=> b!7627347 d!2323767))

(declare-fun d!2323771 () Bool)

(declare-fun lt!2658174 () tuple2!69290)

(declare-fun dynLambda!29919 (Int tuple2!69290) Bool)

(assert (=> d!2323771 (dynLambda!29919 lambda!468856 lt!2658174)))

(declare-fun choose!58864 (Int) tuple2!69290)

(assert (=> d!2323771 (= lt!2658174 (choose!58864 lambda!468856))))

(assert (=> d!2323771 (Exists!4520 lambda!468856)))

(assert (=> d!2323771 (= (pickWitness!461 lambda!468856) lt!2658174)))

(declare-fun b_lambda!289019 () Bool)

(assert (=> (not b_lambda!289019) (not d!2323771)))

(declare-fun bs!1943701 () Bool)

(assert (= bs!1943701 d!2323771))

(declare-fun m!8156144 () Bool)

(assert (=> bs!1943701 m!8156144))

(declare-fun m!8156146 () Bool)

(assert (=> bs!1943701 m!8156146))

(assert (=> bs!1943701 m!8156044))

(assert (=> b!7627347 d!2323771))

(declare-fun b!7627554 () Bool)

(declare-fun res!3054424 () Bool)

(declare-fun e!4534888 () Bool)

(assert (=> b!7627554 (=> (not res!3054424) (not e!4534888))))

(assert (=> b!7627554 (= res!3054424 (isEmpty!41717 (tail!15213 (_1!37948 lt!2658140))))))

(declare-fun b!7627555 () Bool)

(declare-fun e!4534887 () Bool)

(declare-fun e!4534884 () Bool)

(assert (=> b!7627555 (= e!4534887 e!4534884)))

(declare-fun c!1405347 () Bool)

(assert (=> b!7627555 (= c!1405347 (is-EmptyLang!20366 (regOne!41244 r!14126)))))

(declare-fun b!7627556 () Bool)

(declare-fun lt!2658175 () Bool)

(assert (=> b!7627556 (= e!4534884 (not lt!2658175))))

(declare-fun b!7627557 () Bool)

(declare-fun res!3054419 () Bool)

(declare-fun e!4534883 () Bool)

(assert (=> b!7627557 (=> res!3054419 e!4534883)))

(assert (=> b!7627557 (= res!3054419 (not (is-ElementMatch!20366 (regOne!41244 r!14126))))))

(assert (=> b!7627557 (= e!4534884 e!4534883)))

(declare-fun b!7627558 () Bool)

(declare-fun res!3054422 () Bool)

(assert (=> b!7627558 (=> res!3054422 e!4534883)))

(assert (=> b!7627558 (= res!3054422 e!4534888)))

(declare-fun res!3054417 () Bool)

(assert (=> b!7627558 (=> (not res!3054417) (not e!4534888))))

(assert (=> b!7627558 (= res!3054417 lt!2658175)))

(declare-fun b!7627559 () Bool)

(declare-fun res!3054420 () Bool)

(declare-fun e!4534885 () Bool)

(assert (=> b!7627559 (=> res!3054420 e!4534885)))

(assert (=> b!7627559 (= res!3054420 (not (isEmpty!41717 (tail!15213 (_1!37948 lt!2658140)))))))

(declare-fun b!7627560 () Bool)

(declare-fun e!4534882 () Bool)

(assert (=> b!7627560 (= e!4534882 e!4534885)))

(declare-fun res!3054418 () Bool)

(assert (=> b!7627560 (=> res!3054418 e!4534885)))

(declare-fun call!700261 () Bool)

(assert (=> b!7627560 (= res!3054418 call!700261)))

(declare-fun d!2323773 () Bool)

(assert (=> d!2323773 e!4534887))

(declare-fun c!1405346 () Bool)

(assert (=> d!2323773 (= c!1405346 (is-EmptyExpr!20366 (regOne!41244 r!14126)))))

(declare-fun e!4534886 () Bool)

(assert (=> d!2323773 (= lt!2658175 e!4534886)))

(declare-fun c!1405348 () Bool)

(assert (=> d!2323773 (= c!1405348 (isEmpty!41717 (_1!37948 lt!2658140)))))

(assert (=> d!2323773 (validRegex!10784 (regOne!41244 r!14126))))

(assert (=> d!2323773 (= (matchR!9869 (regOne!41244 r!14126) (_1!37948 lt!2658140)) lt!2658175)))

(declare-fun b!7627561 () Bool)

(assert (=> b!7627561 (= e!4534885 (not (= (head!15673 (_1!37948 lt!2658140)) (c!1405307 (regOne!41244 r!14126)))))))

(declare-fun b!7627562 () Bool)

(declare-fun res!3054421 () Bool)

(assert (=> b!7627562 (=> (not res!3054421) (not e!4534888))))

(assert (=> b!7627562 (= res!3054421 (not call!700261))))

(declare-fun b!7627563 () Bool)

(assert (=> b!7627563 (= e!4534888 (= (head!15673 (_1!37948 lt!2658140)) (c!1405307 (regOne!41244 r!14126))))))

(declare-fun b!7627564 () Bool)

(assert (=> b!7627564 (= e!4534886 (nullable!8899 (regOne!41244 r!14126)))))

(declare-fun bm!700256 () Bool)

(assert (=> bm!700256 (= call!700261 (isEmpty!41717 (_1!37948 lt!2658140)))))

(declare-fun b!7627565 () Bool)

(assert (=> b!7627565 (= e!4534886 (matchR!9869 (derivativeStep!5873 (regOne!41244 r!14126) (head!15673 (_1!37948 lt!2658140))) (tail!15213 (_1!37948 lt!2658140))))))

(declare-fun b!7627566 () Bool)

(assert (=> b!7627566 (= e!4534887 (= lt!2658175 call!700261))))

(declare-fun b!7627567 () Bool)

(assert (=> b!7627567 (= e!4534883 e!4534882)))

(declare-fun res!3054423 () Bool)

(assert (=> b!7627567 (=> (not res!3054423) (not e!4534882))))

(assert (=> b!7627567 (= res!3054423 (not lt!2658175))))

(assert (= (and d!2323773 c!1405348) b!7627564))

(assert (= (and d!2323773 (not c!1405348)) b!7627565))

(assert (= (and d!2323773 c!1405346) b!7627566))

(assert (= (and d!2323773 (not c!1405346)) b!7627555))

(assert (= (and b!7627555 c!1405347) b!7627556))

(assert (= (and b!7627555 (not c!1405347)) b!7627557))

(assert (= (and b!7627557 (not res!3054419)) b!7627558))

(assert (= (and b!7627558 res!3054417) b!7627562))

(assert (= (and b!7627562 res!3054421) b!7627554))

(assert (= (and b!7627554 res!3054424) b!7627563))

(assert (= (and b!7627558 (not res!3054422)) b!7627567))

(assert (= (and b!7627567 res!3054423) b!7627560))

(assert (= (and b!7627560 (not res!3054418)) b!7627559))

(assert (= (and b!7627559 (not res!3054420)) b!7627561))

(assert (= (or b!7627566 b!7627560 b!7627562) bm!700256))

(assert (=> bm!700256 m!8156086))

(declare-fun m!8156148 () Bool)

(assert (=> b!7627565 m!8156148))

(assert (=> b!7627565 m!8156148))

(declare-fun m!8156150 () Bool)

(assert (=> b!7627565 m!8156150))

(declare-fun m!8156152 () Bool)

(assert (=> b!7627565 m!8156152))

(assert (=> b!7627565 m!8156150))

(assert (=> b!7627565 m!8156152))

(declare-fun m!8156154 () Bool)

(assert (=> b!7627565 m!8156154))

(assert (=> b!7627559 m!8156152))

(assert (=> b!7627559 m!8156152))

(declare-fun m!8156156 () Bool)

(assert (=> b!7627559 m!8156156))

(assert (=> b!7627563 m!8156148))

(assert (=> b!7627554 m!8156152))

(assert (=> b!7627554 m!8156152))

(assert (=> b!7627554 m!8156156))

(assert (=> b!7627561 m!8156148))

(assert (=> d!2323773 m!8156086))

(assert (=> d!2323773 m!8156018))

(declare-fun m!8156158 () Bool)

(assert (=> b!7627564 m!8156158))

(assert (=> b!7627347 d!2323773))

(declare-fun bm!700263 () Bool)

(declare-fun call!700269 () Bool)

(declare-fun call!700268 () Bool)

(assert (=> bm!700263 (= call!700269 call!700268)))

(declare-fun b!7627586 () Bool)

(declare-fun res!3054435 () Bool)

(declare-fun e!4534909 () Bool)

(assert (=> b!7627586 (=> (not res!3054435) (not e!4534909))))

(declare-fun call!700270 () Bool)

(assert (=> b!7627586 (= res!3054435 call!700270)))

(declare-fun e!4534904 () Bool)

(assert (=> b!7627586 (= e!4534904 e!4534909)))

(declare-fun b!7627587 () Bool)

(declare-fun e!4534906 () Bool)

(declare-fun e!4534907 () Bool)

(assert (=> b!7627587 (= e!4534906 e!4534907)))

(declare-fun c!1405354 () Bool)

(assert (=> b!7627587 (= c!1405354 (is-Star!20366 (regOne!41244 r!14126)))))

(declare-fun bm!700264 () Bool)

(declare-fun c!1405353 () Bool)

(assert (=> bm!700264 (= call!700270 (validRegex!10784 (ite c!1405353 (regOne!41245 (regOne!41244 r!14126)) (regOne!41244 (regOne!41244 r!14126)))))))

(declare-fun b!7627588 () Bool)

(declare-fun e!4534905 () Bool)

(declare-fun e!4534903 () Bool)

(assert (=> b!7627588 (= e!4534905 e!4534903)))

(declare-fun res!3054439 () Bool)

(assert (=> b!7627588 (=> (not res!3054439) (not e!4534903))))

(assert (=> b!7627588 (= res!3054439 call!700270)))

(declare-fun b!7627589 () Bool)

(declare-fun e!4534908 () Bool)

(assert (=> b!7627589 (= e!4534907 e!4534908)))

(declare-fun res!3054437 () Bool)

(assert (=> b!7627589 (= res!3054437 (not (nullable!8899 (reg!20695 (regOne!41244 r!14126)))))))

(assert (=> b!7627589 (=> (not res!3054437) (not e!4534908))))

(declare-fun b!7627590 () Bool)

(assert (=> b!7627590 (= e!4534908 call!700268)))

(declare-fun b!7627591 () Bool)

(assert (=> b!7627591 (= e!4534903 call!700269)))

(declare-fun d!2323775 () Bool)

(declare-fun res!3054436 () Bool)

(assert (=> d!2323775 (=> res!3054436 e!4534906)))

(assert (=> d!2323775 (= res!3054436 (is-ElementMatch!20366 (regOne!41244 r!14126)))))

(assert (=> d!2323775 (= (validRegex!10784 (regOne!41244 r!14126)) e!4534906)))

(declare-fun b!7627592 () Bool)

(assert (=> b!7627592 (= e!4534907 e!4534904)))

(assert (=> b!7627592 (= c!1405353 (is-Union!20366 (regOne!41244 r!14126)))))

(declare-fun b!7627593 () Bool)

(assert (=> b!7627593 (= e!4534909 call!700269)))

(declare-fun bm!700265 () Bool)

(assert (=> bm!700265 (= call!700268 (validRegex!10784 (ite c!1405354 (reg!20695 (regOne!41244 r!14126)) (ite c!1405353 (regTwo!41245 (regOne!41244 r!14126)) (regTwo!41244 (regOne!41244 r!14126))))))))

(declare-fun b!7627594 () Bool)

(declare-fun res!3054438 () Bool)

(assert (=> b!7627594 (=> res!3054438 e!4534905)))

(assert (=> b!7627594 (= res!3054438 (not (is-Concat!29211 (regOne!41244 r!14126))))))

(assert (=> b!7627594 (= e!4534904 e!4534905)))

(assert (= (and d!2323775 (not res!3054436)) b!7627587))

(assert (= (and b!7627587 c!1405354) b!7627589))

(assert (= (and b!7627587 (not c!1405354)) b!7627592))

(assert (= (and b!7627589 res!3054437) b!7627590))

(assert (= (and b!7627592 c!1405353) b!7627586))

(assert (= (and b!7627592 (not c!1405353)) b!7627594))

(assert (= (and b!7627586 res!3054435) b!7627593))

(assert (= (and b!7627594 (not res!3054438)) b!7627588))

(assert (= (and b!7627588 res!3054439) b!7627591))

(assert (= (or b!7627586 b!7627588) bm!700264))

(assert (= (or b!7627593 b!7627591) bm!700263))

(assert (= (or b!7627590 bm!700263) bm!700265))

(declare-fun m!8156160 () Bool)

(assert (=> bm!700264 m!8156160))

(declare-fun m!8156162 () Bool)

(assert (=> b!7627589 m!8156162))

(declare-fun m!8156164 () Bool)

(assert (=> bm!700265 m!8156164))

(assert (=> b!7627336 d!2323775))

(declare-fun d!2323777 () Bool)

(declare-fun choose!58865 (Int) Bool)

(assert (=> d!2323777 (= (Exists!4520 lambda!468856) (choose!58865 lambda!468856))))

(declare-fun bs!1943702 () Bool)

(assert (= bs!1943702 d!2323777))

(declare-fun m!8156166 () Bool)

(assert (=> bs!1943702 m!8156166))

(assert (=> b!7627343 d!2323777))

(declare-fun d!2323779 () Bool)

(assert (=> d!2323779 (isDefined!14055 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605))))

(declare-fun lt!2658180 () Unit!167660)

(declare-fun choose!58866 (Regex!20366 Regex!20366 List!73217) Unit!167660)

(assert (=> d!2323779 (= lt!2658180 (choose!58866 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605))))

(assert (=> d!2323779 (validRegex!10784 (regOne!41244 r!14126))))

(assert (=> d!2323779 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!273 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605) lt!2658180)))

(declare-fun bs!1943703 () Bool)

(assert (= bs!1943703 d!2323779))

(assert (=> bs!1943703 m!8156038))

(assert (=> bs!1943703 m!8156038))

(assert (=> bs!1943703 m!8156042))

(declare-fun m!8156168 () Bool)

(assert (=> bs!1943703 m!8156168))

(assert (=> bs!1943703 m!8156018))

(assert (=> b!7627343 d!2323779))

(declare-fun bm!700266 () Bool)

(declare-fun call!700272 () Bool)

(declare-fun call!700271 () Bool)

(assert (=> bm!700266 (= call!700272 call!700271)))

(declare-fun b!7627599 () Bool)

(declare-fun res!3054444 () Bool)

(declare-fun e!4534918 () Bool)

(assert (=> b!7627599 (=> (not res!3054444) (not e!4534918))))

(declare-fun call!700273 () Bool)

(assert (=> b!7627599 (= res!3054444 call!700273)))

(declare-fun e!4534913 () Bool)

(assert (=> b!7627599 (= e!4534913 e!4534918)))

(declare-fun b!7627600 () Bool)

(declare-fun e!4534915 () Bool)

(declare-fun e!4534916 () Bool)

(assert (=> b!7627600 (= e!4534915 e!4534916)))

(declare-fun c!1405356 () Bool)

(assert (=> b!7627600 (= c!1405356 (is-Star!20366 r!14126))))

(declare-fun bm!700267 () Bool)

(declare-fun c!1405355 () Bool)

(assert (=> bm!700267 (= call!700273 (validRegex!10784 (ite c!1405355 (regOne!41245 r!14126) (regOne!41244 r!14126))))))

(declare-fun b!7627601 () Bool)

(declare-fun e!4534914 () Bool)

(declare-fun e!4534912 () Bool)

(assert (=> b!7627601 (= e!4534914 e!4534912)))

(declare-fun res!3054448 () Bool)

(assert (=> b!7627601 (=> (not res!3054448) (not e!4534912))))

(assert (=> b!7627601 (= res!3054448 call!700273)))

(declare-fun b!7627602 () Bool)

(declare-fun e!4534917 () Bool)

(assert (=> b!7627602 (= e!4534916 e!4534917)))

(declare-fun res!3054446 () Bool)

(assert (=> b!7627602 (= res!3054446 (not (nullable!8899 (reg!20695 r!14126))))))

(assert (=> b!7627602 (=> (not res!3054446) (not e!4534917))))

(declare-fun b!7627603 () Bool)

(assert (=> b!7627603 (= e!4534917 call!700271)))

(declare-fun b!7627604 () Bool)

(assert (=> b!7627604 (= e!4534912 call!700272)))

(declare-fun d!2323781 () Bool)

(declare-fun res!3054445 () Bool)

(assert (=> d!2323781 (=> res!3054445 e!4534915)))

(assert (=> d!2323781 (= res!3054445 (is-ElementMatch!20366 r!14126))))

(assert (=> d!2323781 (= (validRegex!10784 r!14126) e!4534915)))

(declare-fun b!7627605 () Bool)

(assert (=> b!7627605 (= e!4534916 e!4534913)))

(assert (=> b!7627605 (= c!1405355 (is-Union!20366 r!14126))))

(declare-fun b!7627606 () Bool)

(assert (=> b!7627606 (= e!4534918 call!700272)))

(declare-fun bm!700268 () Bool)

(assert (=> bm!700268 (= call!700271 (validRegex!10784 (ite c!1405356 (reg!20695 r!14126) (ite c!1405355 (regTwo!41245 r!14126) (regTwo!41244 r!14126)))))))

(declare-fun b!7627607 () Bool)

(declare-fun res!3054447 () Bool)

(assert (=> b!7627607 (=> res!3054447 e!4534914)))

(assert (=> b!7627607 (= res!3054447 (not (is-Concat!29211 r!14126)))))

(assert (=> b!7627607 (= e!4534913 e!4534914)))

(assert (= (and d!2323781 (not res!3054445)) b!7627600))

(assert (= (and b!7627600 c!1405356) b!7627602))

(assert (= (and b!7627600 (not c!1405356)) b!7627605))

(assert (= (and b!7627602 res!3054446) b!7627603))

(assert (= (and b!7627605 c!1405355) b!7627599))

(assert (= (and b!7627605 (not c!1405355)) b!7627607))

(assert (= (and b!7627599 res!3054444) b!7627606))

(assert (= (and b!7627607 (not res!3054447)) b!7627601))

(assert (= (and b!7627601 res!3054448) b!7627604))

(assert (= (or b!7627599 b!7627601) bm!700267))

(assert (= (or b!7627606 b!7627604) bm!700266))

(assert (= (or b!7627603 bm!700266) bm!700268))

(declare-fun m!8156170 () Bool)

(assert (=> bm!700267 m!8156170))

(declare-fun m!8156172 () Bool)

(assert (=> b!7627602 m!8156172))

(declare-fun m!8156174 () Bool)

(assert (=> bm!700268 m!8156174))

(assert (=> start!734522 d!2323781))

(declare-fun b!7627608 () Bool)

(declare-fun res!3054456 () Bool)

(declare-fun e!4534925 () Bool)

(assert (=> b!7627608 (=> (not res!3054456) (not e!4534925))))

(assert (=> b!7627608 (= res!3054456 (isEmpty!41717 (tail!15213 s!9605)))))

(declare-fun b!7627609 () Bool)

(declare-fun e!4534924 () Bool)

(declare-fun e!4534921 () Bool)

(assert (=> b!7627609 (= e!4534924 e!4534921)))

(declare-fun c!1405358 () Bool)

(assert (=> b!7627609 (= c!1405358 (is-EmptyLang!20366 r!14126))))

(declare-fun b!7627610 () Bool)

(declare-fun lt!2658182 () Bool)

(assert (=> b!7627610 (= e!4534921 (not lt!2658182))))

(declare-fun b!7627611 () Bool)

(declare-fun res!3054451 () Bool)

(declare-fun e!4534920 () Bool)

(assert (=> b!7627611 (=> res!3054451 e!4534920)))

(assert (=> b!7627611 (= res!3054451 (not (is-ElementMatch!20366 r!14126)))))

(assert (=> b!7627611 (= e!4534921 e!4534920)))

(declare-fun b!7627612 () Bool)

(declare-fun res!3054454 () Bool)

(assert (=> b!7627612 (=> res!3054454 e!4534920)))

(assert (=> b!7627612 (= res!3054454 e!4534925)))

(declare-fun res!3054449 () Bool)

(assert (=> b!7627612 (=> (not res!3054449) (not e!4534925))))

(assert (=> b!7627612 (= res!3054449 lt!2658182)))

(declare-fun b!7627613 () Bool)

(declare-fun res!3054452 () Bool)

(declare-fun e!4534922 () Bool)

(assert (=> b!7627613 (=> res!3054452 e!4534922)))

(assert (=> b!7627613 (= res!3054452 (not (isEmpty!41717 (tail!15213 s!9605))))))

(declare-fun b!7627614 () Bool)

(declare-fun e!4534919 () Bool)

(assert (=> b!7627614 (= e!4534919 e!4534922)))

(declare-fun res!3054450 () Bool)

(assert (=> b!7627614 (=> res!3054450 e!4534922)))

(declare-fun call!700274 () Bool)

(assert (=> b!7627614 (= res!3054450 call!700274)))

(declare-fun d!2323783 () Bool)

(assert (=> d!2323783 e!4534924))

(declare-fun c!1405357 () Bool)

(assert (=> d!2323783 (= c!1405357 (is-EmptyExpr!20366 r!14126))))

(declare-fun e!4534923 () Bool)

(assert (=> d!2323783 (= lt!2658182 e!4534923)))

(declare-fun c!1405359 () Bool)

(assert (=> d!2323783 (= c!1405359 (isEmpty!41717 s!9605))))

(assert (=> d!2323783 (validRegex!10784 r!14126)))

(assert (=> d!2323783 (= (matchR!9869 r!14126 s!9605) lt!2658182)))

(declare-fun b!7627615 () Bool)

(assert (=> b!7627615 (= e!4534922 (not (= (head!15673 s!9605) (c!1405307 r!14126))))))

(declare-fun b!7627616 () Bool)

(declare-fun res!3054453 () Bool)

(assert (=> b!7627616 (=> (not res!3054453) (not e!4534925))))

(assert (=> b!7627616 (= res!3054453 (not call!700274))))

(declare-fun b!7627617 () Bool)

(assert (=> b!7627617 (= e!4534925 (= (head!15673 s!9605) (c!1405307 r!14126)))))

(declare-fun b!7627618 () Bool)

(assert (=> b!7627618 (= e!4534923 (nullable!8899 r!14126))))

(declare-fun bm!700269 () Bool)

(assert (=> bm!700269 (= call!700274 (isEmpty!41717 s!9605))))

(declare-fun b!7627619 () Bool)

(assert (=> b!7627619 (= e!4534923 (matchR!9869 (derivativeStep!5873 r!14126 (head!15673 s!9605)) (tail!15213 s!9605)))))

(declare-fun b!7627620 () Bool)

(assert (=> b!7627620 (= e!4534924 (= lt!2658182 call!700274))))

(declare-fun b!7627621 () Bool)

(assert (=> b!7627621 (= e!4534920 e!4534919)))

(declare-fun res!3054455 () Bool)

(assert (=> b!7627621 (=> (not res!3054455) (not e!4534919))))

(assert (=> b!7627621 (= res!3054455 (not lt!2658182))))

(assert (= (and d!2323783 c!1405359) b!7627618))

(assert (= (and d!2323783 (not c!1405359)) b!7627619))

(assert (= (and d!2323783 c!1405357) b!7627620))

(assert (= (and d!2323783 (not c!1405357)) b!7627609))

(assert (= (and b!7627609 c!1405358) b!7627610))

(assert (= (and b!7627609 (not c!1405358)) b!7627611))

(assert (= (and b!7627611 (not res!3054451)) b!7627612))

(assert (= (and b!7627612 res!3054449) b!7627616))

(assert (= (and b!7627616 res!3054453) b!7627608))

(assert (= (and b!7627608 res!3054456) b!7627617))

(assert (= (and b!7627612 (not res!3054454)) b!7627621))

(assert (= (and b!7627621 res!3054455) b!7627614))

(assert (= (and b!7627614 (not res!3054450)) b!7627613))

(assert (= (and b!7627613 (not res!3054452)) b!7627615))

(assert (= (or b!7627620 b!7627614 b!7627616) bm!700269))

(declare-fun m!8156176 () Bool)

(assert (=> bm!700269 m!8156176))

(declare-fun m!8156178 () Bool)

(assert (=> b!7627619 m!8156178))

(assert (=> b!7627619 m!8156178))

(declare-fun m!8156180 () Bool)

(assert (=> b!7627619 m!8156180))

(declare-fun m!8156182 () Bool)

(assert (=> b!7627619 m!8156182))

(assert (=> b!7627619 m!8156180))

(assert (=> b!7627619 m!8156182))

(declare-fun m!8156184 () Bool)

(assert (=> b!7627619 m!8156184))

(assert (=> b!7627613 m!8156182))

(assert (=> b!7627613 m!8156182))

(declare-fun m!8156186 () Bool)

(assert (=> b!7627613 m!8156186))

(assert (=> b!7627617 m!8156178))

(assert (=> b!7627608 m!8156182))

(assert (=> b!7627608 m!8156182))

(assert (=> b!7627608 m!8156186))

(assert (=> b!7627615 m!8156178))

(assert (=> d!2323783 m!8156176))

(assert (=> d!2323783 m!8156048))

(declare-fun m!8156188 () Bool)

(assert (=> b!7627618 m!8156188))

(assert (=> b!7627346 d!2323783))

(declare-fun bs!1943707 () Bool)

(declare-fun d!2323785 () Bool)

(assert (= bs!1943707 (and d!2323785 b!7627457)))

(declare-fun lambda!468877 () Int)

(assert (=> bs!1943707 (not (= lambda!468877 lambda!468870))))

(declare-fun bs!1943708 () Bool)

(assert (= bs!1943708 (and d!2323785 b!7627451)))

(assert (=> bs!1943708 (not (= lambda!468877 lambda!468871))))

(declare-fun bs!1943709 () Bool)

(assert (= bs!1943709 (and d!2323785 b!7627436)))

(assert (=> bs!1943709 (not (= lambda!468877 lambda!468869))))

(declare-fun bs!1943710 () Bool)

(assert (= bs!1943710 (and d!2323785 b!7627442)))

(assert (=> bs!1943710 (not (= lambda!468877 lambda!468868))))

(declare-fun bs!1943711 () Bool)

(assert (= bs!1943711 (and d!2323785 b!7627346)))

(assert (=> bs!1943711 (= lambda!468877 lambda!468856)))

(assert (=> d!2323785 true))

(assert (=> d!2323785 true))

(assert (=> d!2323785 true))

(assert (=> d!2323785 (= (isDefined!14055 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605)) (Exists!4520 lambda!468877))))

(declare-fun lt!2658185 () Unit!167660)

(declare-fun choose!58867 (Regex!20366 Regex!20366 List!73217) Unit!167660)

(assert (=> d!2323785 (= lt!2658185 (choose!58867 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605))))

(assert (=> d!2323785 (validRegex!10784 (regOne!41244 r!14126))))

(assert (=> d!2323785 (= (lemmaFindConcatSeparationEquivalentToExists!3227 (regOne!41244 r!14126) (regTwo!41244 r!14126) s!9605) lt!2658185)))

(declare-fun bs!1943712 () Bool)

(assert (= bs!1943712 d!2323785))

(assert (=> bs!1943712 m!8156038))

(assert (=> bs!1943712 m!8156042))

(declare-fun m!8156196 () Bool)

(assert (=> bs!1943712 m!8156196))

(declare-fun m!8156198 () Bool)

(assert (=> bs!1943712 m!8156198))

(assert (=> bs!1943712 m!8156038))

(assert (=> bs!1943712 m!8156018))

(assert (=> b!7627346 d!2323785))

(declare-fun d!2323791 () Bool)

(declare-fun isEmpty!41719 (Option!17439) Bool)

(assert (=> d!2323791 (= (isDefined!14055 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605)) (not (isEmpty!41719 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605))))))

(declare-fun bs!1943713 () Bool)

(assert (= bs!1943713 d!2323791))

(assert (=> bs!1943713 m!8156038))

(declare-fun m!8156200 () Bool)

(assert (=> bs!1943713 m!8156200))

(assert (=> b!7627346 d!2323791))

(declare-fun b!7627646 () Bool)

(declare-fun e!4534940 () Bool)

(declare-fun lt!2658196 () Option!17439)

(assert (=> b!7627646 (= e!4534940 (not (isDefined!14055 lt!2658196)))))

(declare-fun b!7627647 () Bool)

(declare-fun e!4534938 () Option!17439)

(assert (=> b!7627647 (= e!4534938 None!17438)))

(declare-fun b!7627648 () Bool)

(declare-fun res!3054475 () Bool)

(declare-fun e!4534941 () Bool)

(assert (=> b!7627648 (=> (not res!3054475) (not e!4534941))))

(declare-fun get!25823 (Option!17439) tuple2!69290)

(assert (=> b!7627648 (= res!3054475 (matchR!9869 (regOne!41244 r!14126) (_1!37948 (get!25823 lt!2658196))))))

(declare-fun d!2323793 () Bool)

(assert (=> d!2323793 e!4534940))

(declare-fun res!3054471 () Bool)

(assert (=> d!2323793 (=> res!3054471 e!4534940)))

(assert (=> d!2323793 (= res!3054471 e!4534941)))

(declare-fun res!3054473 () Bool)

(assert (=> d!2323793 (=> (not res!3054473) (not e!4534941))))

(assert (=> d!2323793 (= res!3054473 (isDefined!14055 lt!2658196))))

(declare-fun e!4534942 () Option!17439)

(assert (=> d!2323793 (= lt!2658196 e!4534942)))

(declare-fun c!1405364 () Bool)

(declare-fun e!4534939 () Bool)

(assert (=> d!2323793 (= c!1405364 e!4534939)))

(declare-fun res!3054474 () Bool)

(assert (=> d!2323793 (=> (not res!3054474) (not e!4534939))))

(assert (=> d!2323793 (= res!3054474 (matchR!9869 (regOne!41244 r!14126) Nil!73093))))

(assert (=> d!2323793 (validRegex!10784 (regOne!41244 r!14126))))

(assert (=> d!2323793 (= (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) Nil!73093 s!9605 s!9605) lt!2658196)))

(declare-fun b!7627649 () Bool)

(assert (=> b!7627649 (= e!4534942 (Some!17438 (tuple2!69291 Nil!73093 s!9605)))))

(declare-fun b!7627650 () Bool)

(declare-fun res!3054472 () Bool)

(assert (=> b!7627650 (=> (not res!3054472) (not e!4534941))))

(assert (=> b!7627650 (= res!3054472 (matchR!9869 (regTwo!41244 r!14126) (_2!37948 (get!25823 lt!2658196))))))

(declare-fun b!7627651 () Bool)

(assert (=> b!7627651 (= e!4534939 (matchR!9869 (regTwo!41244 r!14126) s!9605))))

(declare-fun b!7627652 () Bool)

(declare-fun lt!2658195 () Unit!167660)

(declare-fun lt!2658194 () Unit!167660)

(assert (=> b!7627652 (= lt!2658195 lt!2658194)))

(assert (=> b!7627652 (= (++!17650 (++!17650 Nil!73093 (Cons!73093 (h!79541 s!9605) Nil!73093)) (t!387952 s!9605)) s!9605)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3232 (List!73217 C!41058 List!73217 List!73217) Unit!167660)

(assert (=> b!7627652 (= lt!2658194 (lemmaMoveElementToOtherListKeepsConcatEq!3232 Nil!73093 (h!79541 s!9605) (t!387952 s!9605) s!9605))))

(assert (=> b!7627652 (= e!4534938 (findConcatSeparation!3469 (regOne!41244 r!14126) (regTwo!41244 r!14126) (++!17650 Nil!73093 (Cons!73093 (h!79541 s!9605) Nil!73093)) (t!387952 s!9605) s!9605))))

(declare-fun b!7627653 () Bool)

(assert (=> b!7627653 (= e!4534942 e!4534938)))

(declare-fun c!1405365 () Bool)

(assert (=> b!7627653 (= c!1405365 (is-Nil!73093 s!9605))))

(declare-fun b!7627654 () Bool)

(assert (=> b!7627654 (= e!4534941 (= (++!17650 (_1!37948 (get!25823 lt!2658196)) (_2!37948 (get!25823 lt!2658196))) s!9605))))

(assert (= (and d!2323793 res!3054474) b!7627651))

(assert (= (and d!2323793 c!1405364) b!7627649))

(assert (= (and d!2323793 (not c!1405364)) b!7627653))

(assert (= (and b!7627653 c!1405365) b!7627647))

(assert (= (and b!7627653 (not c!1405365)) b!7627652))

(assert (= (and d!2323793 res!3054473) b!7627648))

(assert (= (and b!7627648 res!3054475) b!7627650))

(assert (= (and b!7627650 res!3054472) b!7627654))

(assert (= (and d!2323793 (not res!3054471)) b!7627646))

(declare-fun m!8156202 () Bool)

(assert (=> b!7627650 m!8156202))

(declare-fun m!8156204 () Bool)

(assert (=> b!7627650 m!8156204))

(declare-fun m!8156206 () Bool)

(assert (=> b!7627651 m!8156206))

(declare-fun m!8156208 () Bool)

(assert (=> b!7627646 m!8156208))

(assert (=> b!7627648 m!8156202))

(declare-fun m!8156210 () Bool)

(assert (=> b!7627648 m!8156210))

(assert (=> d!2323793 m!8156208))

(declare-fun m!8156212 () Bool)

(assert (=> d!2323793 m!8156212))

(assert (=> d!2323793 m!8156018))

(assert (=> b!7627654 m!8156202))

(declare-fun m!8156214 () Bool)

(assert (=> b!7627654 m!8156214))

(declare-fun m!8156216 () Bool)

(assert (=> b!7627652 m!8156216))

(assert (=> b!7627652 m!8156216))

(declare-fun m!8156218 () Bool)

(assert (=> b!7627652 m!8156218))

(declare-fun m!8156220 () Bool)

(assert (=> b!7627652 m!8156220))

(assert (=> b!7627652 m!8156216))

(declare-fun m!8156222 () Bool)

(assert (=> b!7627652 m!8156222))

(assert (=> b!7627346 d!2323793))

(assert (=> b!7627346 d!2323777))

(declare-fun b!7627667 () Bool)

(declare-fun e!4534951 () Bool)

(declare-fun tp!2227040 () Bool)

(assert (=> b!7627667 (= e!4534951 (and tp_is_empty!51087 tp!2227040))))

(assert (=> b!7627342 (= tp!2227012 e!4534951)))

(assert (= (and b!7627342 (is-Cons!73093 (t!387952 (_1!37948 cut!15)))) b!7627667))

(declare-fun b!7627686 () Bool)

(declare-fun e!4534958 () Bool)

(assert (=> b!7627686 (= e!4534958 tp_is_empty!51087)))

(declare-fun b!7627688 () Bool)

(declare-fun tp!2227052 () Bool)

(assert (=> b!7627688 (= e!4534958 tp!2227052)))

(declare-fun b!7627689 () Bool)

(declare-fun tp!2227054 () Bool)

(declare-fun tp!2227051 () Bool)

(assert (=> b!7627689 (= e!4534958 (and tp!2227054 tp!2227051))))

(assert (=> b!7627341 (= tp!2227010 e!4534958)))

(declare-fun b!7627687 () Bool)

(declare-fun tp!2227053 () Bool)

(declare-fun tp!2227055 () Bool)

(assert (=> b!7627687 (= e!4534958 (and tp!2227053 tp!2227055))))

(assert (= (and b!7627341 (is-ElementMatch!20366 (reg!20695 r!14126))) b!7627686))

(assert (= (and b!7627341 (is-Concat!29211 (reg!20695 r!14126))) b!7627687))

(assert (= (and b!7627341 (is-Star!20366 (reg!20695 r!14126))) b!7627688))

(assert (= (and b!7627341 (is-Union!20366 (reg!20695 r!14126))) b!7627689))

(declare-fun b!7627690 () Bool)

(declare-fun e!4534959 () Bool)

(declare-fun tp!2227056 () Bool)

(assert (=> b!7627690 (= e!4534959 (and tp_is_empty!51087 tp!2227056))))

(assert (=> b!7627337 (= tp!2227008 e!4534959)))

(assert (= (and b!7627337 (is-Cons!73093 (t!387952 s!9605))) b!7627690))

(declare-fun b!7627691 () Bool)

(declare-fun e!4534960 () Bool)

(assert (=> b!7627691 (= e!4534960 tp_is_empty!51087)))

(declare-fun b!7627693 () Bool)

(declare-fun tp!2227058 () Bool)

(assert (=> b!7627693 (= e!4534960 tp!2227058)))

(declare-fun b!7627694 () Bool)

(declare-fun tp!2227060 () Bool)

(declare-fun tp!2227057 () Bool)

(assert (=> b!7627694 (= e!4534960 (and tp!2227060 tp!2227057))))

(assert (=> b!7627339 (= tp!2227013 e!4534960)))

(declare-fun b!7627692 () Bool)

(declare-fun tp!2227059 () Bool)

(declare-fun tp!2227061 () Bool)

(assert (=> b!7627692 (= e!4534960 (and tp!2227059 tp!2227061))))

(assert (= (and b!7627339 (is-ElementMatch!20366 (regOne!41245 r!14126))) b!7627691))

(assert (= (and b!7627339 (is-Concat!29211 (regOne!41245 r!14126))) b!7627692))

(assert (= (and b!7627339 (is-Star!20366 (regOne!41245 r!14126))) b!7627693))

(assert (= (and b!7627339 (is-Union!20366 (regOne!41245 r!14126))) b!7627694))

(declare-fun b!7627695 () Bool)

(declare-fun e!4534961 () Bool)

(assert (=> b!7627695 (= e!4534961 tp_is_empty!51087)))

(declare-fun b!7627697 () Bool)

(declare-fun tp!2227063 () Bool)

(assert (=> b!7627697 (= e!4534961 tp!2227063)))

(declare-fun b!7627698 () Bool)

(declare-fun tp!2227065 () Bool)

(declare-fun tp!2227062 () Bool)

(assert (=> b!7627698 (= e!4534961 (and tp!2227065 tp!2227062))))

(assert (=> b!7627339 (= tp!2227009 e!4534961)))

(declare-fun b!7627696 () Bool)

(declare-fun tp!2227064 () Bool)

(declare-fun tp!2227066 () Bool)

(assert (=> b!7627696 (= e!4534961 (and tp!2227064 tp!2227066))))

(assert (= (and b!7627339 (is-ElementMatch!20366 (regTwo!41245 r!14126))) b!7627695))

(assert (= (and b!7627339 (is-Concat!29211 (regTwo!41245 r!14126))) b!7627696))

(assert (= (and b!7627339 (is-Star!20366 (regTwo!41245 r!14126))) b!7627697))

(assert (= (and b!7627339 (is-Union!20366 (regTwo!41245 r!14126))) b!7627698))

(declare-fun b!7627699 () Bool)

(declare-fun e!4534962 () Bool)

(declare-fun tp!2227067 () Bool)

(assert (=> b!7627699 (= e!4534962 (and tp_is_empty!51087 tp!2227067))))

(assert (=> b!7627340 (= tp!2227007 e!4534962)))

(assert (= (and b!7627340 (is-Cons!73093 (t!387952 (_2!37948 cut!15)))) b!7627699))

(declare-fun b!7627700 () Bool)

(declare-fun e!4534963 () Bool)

(assert (=> b!7627700 (= e!4534963 tp_is_empty!51087)))

(declare-fun b!7627702 () Bool)

(declare-fun tp!2227069 () Bool)

(assert (=> b!7627702 (= e!4534963 tp!2227069)))

(declare-fun b!7627703 () Bool)

(declare-fun tp!2227071 () Bool)

(declare-fun tp!2227068 () Bool)

(assert (=> b!7627703 (= e!4534963 (and tp!2227071 tp!2227068))))

(assert (=> b!7627345 (= tp!2227006 e!4534963)))

(declare-fun b!7627701 () Bool)

(declare-fun tp!2227070 () Bool)

(declare-fun tp!2227072 () Bool)

(assert (=> b!7627701 (= e!4534963 (and tp!2227070 tp!2227072))))

(assert (= (and b!7627345 (is-ElementMatch!20366 (regOne!41244 r!14126))) b!7627700))

(assert (= (and b!7627345 (is-Concat!29211 (regOne!41244 r!14126))) b!7627701))

(assert (= (and b!7627345 (is-Star!20366 (regOne!41244 r!14126))) b!7627702))

(assert (= (and b!7627345 (is-Union!20366 (regOne!41244 r!14126))) b!7627703))

(declare-fun b!7627704 () Bool)

(declare-fun e!4534964 () Bool)

(assert (=> b!7627704 (= e!4534964 tp_is_empty!51087)))

(declare-fun b!7627706 () Bool)

(declare-fun tp!2227074 () Bool)

(assert (=> b!7627706 (= e!4534964 tp!2227074)))

(declare-fun b!7627707 () Bool)

(declare-fun tp!2227076 () Bool)

(declare-fun tp!2227073 () Bool)

(assert (=> b!7627707 (= e!4534964 (and tp!2227076 tp!2227073))))

(assert (=> b!7627345 (= tp!2227011 e!4534964)))

(declare-fun b!7627705 () Bool)

(declare-fun tp!2227075 () Bool)

(declare-fun tp!2227077 () Bool)

(assert (=> b!7627705 (= e!4534964 (and tp!2227075 tp!2227077))))

(assert (= (and b!7627345 (is-ElementMatch!20366 (regTwo!41244 r!14126))) b!7627704))

(assert (= (and b!7627345 (is-Concat!29211 (regTwo!41244 r!14126))) b!7627705))

(assert (= (and b!7627345 (is-Star!20366 (regTwo!41244 r!14126))) b!7627706))

(assert (= (and b!7627345 (is-Union!20366 (regTwo!41244 r!14126))) b!7627707))

(declare-fun b_lambda!289021 () Bool)

(assert (= b_lambda!289019 (or b!7627346 b_lambda!289021)))

(declare-fun bs!1943714 () Bool)

(declare-fun d!2323795 () Bool)

(assert (= bs!1943714 (and d!2323795 b!7627346)))

(declare-fun res!3054486 () Bool)

(declare-fun e!4534965 () Bool)

(assert (=> bs!1943714 (=> (not res!3054486) (not e!4534965))))

(assert (=> bs!1943714 (= res!3054486 (= (++!17650 (_1!37948 lt!2658174) (_2!37948 lt!2658174)) s!9605))))

(assert (=> bs!1943714 (= (dynLambda!29919 lambda!468856 lt!2658174) e!4534965)))

(declare-fun b!7627708 () Bool)

(declare-fun res!3054487 () Bool)

(assert (=> b!7627708 (=> (not res!3054487) (not e!4534965))))

(assert (=> b!7627708 (= res!3054487 (matchR!9869 (regOne!41244 r!14126) (_1!37948 lt!2658174)))))

(declare-fun b!7627709 () Bool)

(assert (=> b!7627709 (= e!4534965 (matchR!9869 (regTwo!41244 r!14126) (_2!37948 lt!2658174)))))

(assert (= (and bs!1943714 res!3054486) b!7627708))

(assert (= (and b!7627708 res!3054487) b!7627709))

(declare-fun m!8156224 () Bool)

(assert (=> bs!1943714 m!8156224))

(declare-fun m!8156226 () Bool)

(assert (=> b!7627708 m!8156226))

(declare-fun m!8156228 () Bool)

(assert (=> b!7627709 m!8156228))

(assert (=> d!2323771 d!2323795))

(push 1)

(assert (not b!7627696))

(assert (not b!7627687))

(assert (not b!7627706))

(assert (not b!7627667))

(assert (not b!7627602))

(assert (not b!7627697))

(assert (not bm!700248))

(assert (not bs!1943714))

(assert (not b!7627535))

(assert (not b_lambda!289021))

(assert (not b!7627538))

(assert (not b!7627565))

(assert (not b!7627707))

(assert (not d!2323779))

(assert (not b!7627561))

(assert (not d!2323771))

(assert (not bm!700247))

(assert (not b!7627646))

(assert (not b!7627692))

(assert (not b!7627533))

(assert (not bm!700264))

(assert (not b!7627552))

(assert (not bm!700249))

(assert (not b!7627608))

(assert (not b!7627708))

(assert (not d!2323783))

(assert (not b!7627619))

(assert (not bm!700269))

(assert (not b!7627690))

(assert (not d!2323773))

(assert (not bm!700255))

(assert (not bm!700267))

(assert (not bm!700268))

(assert (not bm!700265))

(assert (not b!7627689))

(assert (not d!2323791))

(assert (not b!7627652))

(assert (not b!7627438))

(assert (not b!7627694))

(assert (not b!7627617))

(assert (not d!2323761))

(assert (not b!7627453))

(assert (not b!7627693))

(assert (not b!7627688))

(assert (not b!7627650))

(assert (not b!7627613))

(assert (not b!7627651))

(assert (not b!7627698))

(assert (not d!2323777))

(assert (not b!7627654))

(assert (not b!7627618))

(assert (not b!7627452))

(assert (not b!7627437))

(assert (not b!7627539))

(assert (not b!7627537))

(assert (not d!2323793))

(assert (not b!7627563))

(assert (not d!2323765))

(assert (not b!7627589))

(assert (not b!7627559))

(assert (not b!7627564))

(assert (not b!7627554))

(assert (not bm!700246))

(assert (not bm!700256))

(assert (not b!7627702))

(assert (not b!7627703))

(assert (not b!7627528))

(assert (not b!7627701))

(assert (not d!2323759))

(assert (not b!7627551))

(assert (not b!7627615))

(assert (not d!2323785))

(assert (not b!7627648))

(assert (not b!7627705))

(assert (not d!2323767))

(assert (not b!7627709))

(assert (not b!7627699))

(assert tp_is_empty!51087)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

