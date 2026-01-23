; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234082 () Bool)

(assert start!234082)

(declare-fun b!2385436 () Bool)

(assert (=> b!2385436 true))

(assert (=> b!2385436 true))

(declare-fun lambda!89040 () Int)

(declare-fun lambda!89039 () Int)

(assert (=> b!2385436 (not (= lambda!89040 lambda!89039))))

(assert (=> b!2385436 true))

(assert (=> b!2385436 true))

(declare-fun b!2385433 () Bool)

(declare-fun e!1521108 () Bool)

(declare-fun tp!760901 () Bool)

(assert (=> b!2385433 (= e!1521108 tp!760901)))

(declare-fun b!2385434 () Bool)

(declare-fun e!1521106 () Bool)

(declare-fun tp_is_empty!11397 () Bool)

(declare-fun tp!760900 () Bool)

(assert (=> b!2385434 (= e!1521106 (and tp_is_empty!11397 tp!760900))))

(declare-fun b!2385435 () Bool)

(declare-fun e!1521104 () Bool)

(declare-fun e!1521103 () Bool)

(assert (=> b!2385435 (= e!1521104 (not e!1521103))))

(declare-fun res!1013271 () Bool)

(assert (=> b!2385435 (=> res!1013271 e!1521103)))

(declare-datatypes ((C!14142 0))(
  ( (C!14143 (val!8313 Int)) )
))
(declare-datatypes ((Regex!6992 0))(
  ( (ElementMatch!6992 (c!379326 C!14142)) (Concat!11628 (regOne!14496 Regex!6992) (regTwo!14496 Regex!6992)) (EmptyExpr!6992) (Star!6992 (reg!7321 Regex!6992)) (EmptyLang!6992) (Union!6992 (regOne!14497 Regex!6992) (regTwo!14497 Regex!6992)) )
))
(declare-fun r!13927 () Regex!6992)

(assert (=> b!2385435 (= res!1013271 (not (is-Concat!11628 r!13927)))))

(declare-fun lt!869320 () Bool)

(declare-fun lt!869321 () Bool)

(assert (=> b!2385435 (= lt!869320 lt!869321)))

(declare-datatypes ((List!28222 0))(
  ( (Nil!28124) (Cons!28124 (h!33525 C!14142) (t!208199 List!28222)) )
))
(declare-fun s!9460 () List!28222)

(declare-fun matchRSpec!841 (Regex!6992 List!28222) Bool)

(assert (=> b!2385435 (= lt!869321 (matchRSpec!841 r!13927 s!9460))))

(declare-fun matchR!3109 (Regex!6992 List!28222) Bool)

(assert (=> b!2385435 (= lt!869320 (matchR!3109 r!13927 s!9460))))

(declare-datatypes ((Unit!41087 0))(
  ( (Unit!41088) )
))
(declare-fun lt!869317 () Unit!41087)

(declare-fun mainMatchTheorem!841 (Regex!6992 List!28222) Unit!41087)

(assert (=> b!2385435 (= lt!869317 (mainMatchTheorem!841 r!13927 s!9460))))

(declare-fun e!1521105 () Bool)

(assert (=> b!2385436 (= e!1521103 e!1521105)))

(declare-fun res!1013268 () Bool)

(assert (=> b!2385436 (=> res!1013268 e!1521105)))

(declare-fun lt!869318 () Bool)

(assert (=> b!2385436 (= res!1013268 (not (= lt!869321 lt!869318)))))

(declare-fun Exists!1054 (Int) Bool)

(assert (=> b!2385436 (= (Exists!1054 lambda!89039) (Exists!1054 lambda!89040))))

(declare-fun lt!869319 () Unit!41087)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!393 (Regex!6992 Regex!6992 List!28222) Unit!41087)

(assert (=> b!2385436 (= lt!869319 (lemmaExistCutMatchRandMatchRSpecEquivalent!393 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460))))

(assert (=> b!2385436 (= lt!869318 (Exists!1054 lambda!89039))))

(declare-datatypes ((tuple2!27848 0))(
  ( (tuple2!27849 (_1!16465 List!28222) (_2!16465 List!28222)) )
))
(declare-datatypes ((Option!5535 0))(
  ( (None!5534) (Some!5534 (v!30942 tuple2!27848)) )
))
(declare-fun isDefined!4363 (Option!5535) Bool)

(declare-fun findConcatSeparation!643 (Regex!6992 Regex!6992 List!28222 List!28222 List!28222) Option!5535)

(assert (=> b!2385436 (= lt!869318 (isDefined!4363 (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) Nil!28124 s!9460 s!9460)))))

(declare-fun lt!869322 () Unit!41087)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!643 (Regex!6992 Regex!6992 List!28222) Unit!41087)

(assert (=> b!2385436 (= lt!869322 (lemmaFindConcatSeparationEquivalentToExists!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460))))

(declare-fun b!2385437 () Bool)

(assert (=> b!2385437 (= e!1521108 tp_is_empty!11397)))

(declare-fun b!2385438 () Bool)

(declare-fun e!1521107 () Bool)

(declare-fun tp!760898 () Bool)

(declare-fun tp!760903 () Bool)

(assert (=> b!2385438 (= e!1521107 (and tp!760898 tp!760903))))

(declare-fun b!2385439 () Bool)

(declare-fun tp!760896 () Bool)

(declare-fun tp!760897 () Bool)

(assert (=> b!2385439 (= e!1521108 (and tp!760896 tp!760897))))

(declare-fun b!2385440 () Bool)

(declare-fun tp!760899 () Bool)

(declare-fun tp!760902 () Bool)

(assert (=> b!2385440 (= e!1521108 (and tp!760899 tp!760902))))

(declare-fun b!2385441 () Bool)

(declare-fun res!1013272 () Bool)

(assert (=> b!2385441 (=> res!1013272 e!1521105)))

(declare-datatypes ((List!28223 0))(
  ( (Nil!28125) (Cons!28125 (h!33526 Regex!6992) (t!208200 List!28223)) )
))
(declare-fun l!9164 () List!28223)

(declare-fun isEmpty!16086 (List!28223) Bool)

(assert (=> b!2385441 (= res!1013272 (isEmpty!16086 l!9164))))

(declare-fun b!2385442 () Bool)

(declare-fun res!1013267 () Bool)

(assert (=> b!2385442 (=> res!1013267 e!1521105)))

(declare-fun tail!3487 (List!28223) List!28223)

(assert (=> b!2385442 (= res!1013267 (isEmpty!16086 (tail!3487 l!9164)))))

(declare-fun res!1013270 () Bool)

(assert (=> start!234082 (=> (not res!1013270) (not e!1521104))))

(declare-fun lambda!89038 () Int)

(declare-fun forall!5626 (List!28223 Int) Bool)

(assert (=> start!234082 (= res!1013270 (forall!5626 l!9164 lambda!89038))))

(assert (=> start!234082 e!1521104))

(assert (=> start!234082 e!1521107))

(assert (=> start!234082 e!1521108))

(assert (=> start!234082 e!1521106))

(declare-fun b!2385443 () Bool)

(declare-fun res!1013269 () Bool)

(assert (=> b!2385443 (=> (not res!1013269) (not e!1521104))))

(declare-fun generalisedConcat!93 (List!28223) Regex!6992)

(assert (=> b!2385443 (= res!1013269 (= r!13927 (generalisedConcat!93 l!9164)))))

(declare-fun b!2385444 () Bool)

(declare-fun validRegex!2717 (Regex!6992) Bool)

(assert (=> b!2385444 (= e!1521105 (validRegex!2717 r!13927))))

(assert (= (and start!234082 res!1013270) b!2385443))

(assert (= (and b!2385443 res!1013269) b!2385435))

(assert (= (and b!2385435 (not res!1013271)) b!2385436))

(assert (= (and b!2385436 (not res!1013268)) b!2385441))

(assert (= (and b!2385441 (not res!1013272)) b!2385442))

(assert (= (and b!2385442 (not res!1013267)) b!2385444))

(assert (= (and start!234082 (is-Cons!28125 l!9164)) b!2385438))

(assert (= (and start!234082 (is-ElementMatch!6992 r!13927)) b!2385437))

(assert (= (and start!234082 (is-Concat!11628 r!13927)) b!2385439))

(assert (= (and start!234082 (is-Star!6992 r!13927)) b!2385433))

(assert (= (and start!234082 (is-Union!6992 r!13927)) b!2385440))

(assert (= (and start!234082 (is-Cons!28124 s!9460)) b!2385434))

(declare-fun m!2787853 () Bool)

(assert (=> b!2385441 m!2787853))

(declare-fun m!2787855 () Bool)

(assert (=> b!2385442 m!2787855))

(assert (=> b!2385442 m!2787855))

(declare-fun m!2787857 () Bool)

(assert (=> b!2385442 m!2787857))

(declare-fun m!2787859 () Bool)

(assert (=> b!2385444 m!2787859))

(declare-fun m!2787861 () Bool)

(assert (=> b!2385435 m!2787861))

(declare-fun m!2787863 () Bool)

(assert (=> b!2385435 m!2787863))

(declare-fun m!2787865 () Bool)

(assert (=> b!2385435 m!2787865))

(declare-fun m!2787867 () Bool)

(assert (=> start!234082 m!2787867))

(declare-fun m!2787869 () Bool)

(assert (=> b!2385436 m!2787869))

(declare-fun m!2787871 () Bool)

(assert (=> b!2385436 m!2787871))

(declare-fun m!2787873 () Bool)

(assert (=> b!2385436 m!2787873))

(assert (=> b!2385436 m!2787869))

(declare-fun m!2787875 () Bool)

(assert (=> b!2385436 m!2787875))

(declare-fun m!2787877 () Bool)

(assert (=> b!2385436 m!2787877))

(assert (=> b!2385436 m!2787875))

(declare-fun m!2787879 () Bool)

(assert (=> b!2385436 m!2787879))

(declare-fun m!2787881 () Bool)

(assert (=> b!2385443 m!2787881))

(push 1)

(assert (not b!2385441))

(assert tp_is_empty!11397)

(assert (not b!2385435))

(assert (not b!2385438))

(assert (not b!2385433))

(assert (not b!2385442))

(assert (not b!2385444))

(assert (not b!2385439))

(assert (not start!234082))

(assert (not b!2385440))

(assert (not b!2385443))

(assert (not b!2385434))

(assert (not b!2385436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!462165 () Bool)

(declare-fun d!697409 () Bool)

(assert (= bs!462165 (and d!697409 start!234082)))

(declare-fun lambda!89054 () Int)

(assert (=> bs!462165 (= lambda!89054 lambda!89038)))

(declare-fun b!2385521 () Bool)

(declare-fun e!1521145 () Regex!6992)

(assert (=> b!2385521 (= e!1521145 (h!33526 l!9164))))

(declare-fun b!2385522 () Bool)

(declare-fun e!1521147 () Bool)

(declare-fun lt!869343 () Regex!6992)

(declare-fun isEmptyExpr!62 (Regex!6992) Bool)

(assert (=> b!2385522 (= e!1521147 (isEmptyExpr!62 lt!869343))))

(declare-fun b!2385524 () Bool)

(declare-fun e!1521146 () Bool)

(assert (=> b!2385524 (= e!1521146 e!1521147)))

(declare-fun c!379339 () Bool)

(assert (=> b!2385524 (= c!379339 (isEmpty!16086 l!9164))))

(declare-fun b!2385525 () Bool)

(declare-fun e!1521148 () Bool)

(declare-fun isConcat!62 (Regex!6992) Bool)

(assert (=> b!2385525 (= e!1521148 (isConcat!62 lt!869343))))

(declare-fun b!2385526 () Bool)

(declare-fun head!5217 (List!28223) Regex!6992)

(assert (=> b!2385526 (= e!1521148 (= lt!869343 (head!5217 l!9164)))))

(declare-fun b!2385527 () Bool)

(declare-fun e!1521150 () Regex!6992)

(assert (=> b!2385527 (= e!1521145 e!1521150)))

(declare-fun c!379338 () Bool)

(assert (=> b!2385527 (= c!379338 (is-Cons!28125 l!9164))))

(declare-fun b!2385528 () Bool)

(assert (=> b!2385528 (= e!1521147 e!1521148)))

(declare-fun c!379337 () Bool)

(assert (=> b!2385528 (= c!379337 (isEmpty!16086 (tail!3487 l!9164)))))

(declare-fun b!2385529 () Bool)

(assert (=> b!2385529 (= e!1521150 EmptyExpr!6992)))

(declare-fun b!2385530 () Bool)

(assert (=> b!2385530 (= e!1521150 (Concat!11628 (h!33526 l!9164) (generalisedConcat!93 (t!208200 l!9164))))))

(assert (=> d!697409 e!1521146))

(declare-fun res!1013307 () Bool)

(assert (=> d!697409 (=> (not res!1013307) (not e!1521146))))

(assert (=> d!697409 (= res!1013307 (validRegex!2717 lt!869343))))

(assert (=> d!697409 (= lt!869343 e!1521145)))

(declare-fun c!379336 () Bool)

(declare-fun e!1521149 () Bool)

(assert (=> d!697409 (= c!379336 e!1521149)))

(declare-fun res!1013308 () Bool)

(assert (=> d!697409 (=> (not res!1013308) (not e!1521149))))

(assert (=> d!697409 (= res!1013308 (is-Cons!28125 l!9164))))

(assert (=> d!697409 (forall!5626 l!9164 lambda!89054)))

(assert (=> d!697409 (= (generalisedConcat!93 l!9164) lt!869343)))

(declare-fun b!2385523 () Bool)

(assert (=> b!2385523 (= e!1521149 (isEmpty!16086 (t!208200 l!9164)))))

(assert (= (and d!697409 res!1013308) b!2385523))

(assert (= (and d!697409 c!379336) b!2385521))

(assert (= (and d!697409 (not c!379336)) b!2385527))

(assert (= (and b!2385527 c!379338) b!2385530))

(assert (= (and b!2385527 (not c!379338)) b!2385529))

(assert (= (and d!697409 res!1013307) b!2385524))

(assert (= (and b!2385524 c!379339) b!2385522))

(assert (= (and b!2385524 (not c!379339)) b!2385528))

(assert (= (and b!2385528 c!379337) b!2385526))

(assert (= (and b!2385528 (not c!379337)) b!2385525))

(declare-fun m!2787913 () Bool)

(assert (=> b!2385522 m!2787913))

(assert (=> b!2385524 m!2787853))

(declare-fun m!2787915 () Bool)

(assert (=> b!2385523 m!2787915))

(declare-fun m!2787917 () Bool)

(assert (=> b!2385530 m!2787917))

(assert (=> b!2385528 m!2787855))

(assert (=> b!2385528 m!2787855))

(assert (=> b!2385528 m!2787857))

(declare-fun m!2787919 () Bool)

(assert (=> b!2385526 m!2787919))

(declare-fun m!2787921 () Bool)

(assert (=> b!2385525 m!2787921))

(declare-fun m!2787923 () Bool)

(assert (=> d!697409 m!2787923))

(declare-fun m!2787925 () Bool)

(assert (=> d!697409 m!2787925))

(assert (=> b!2385443 d!697409))

(declare-fun b!2385549 () Bool)

(declare-fun res!1013320 () Bool)

(declare-fun e!1521170 () Bool)

(assert (=> b!2385549 (=> res!1013320 e!1521170)))

(assert (=> b!2385549 (= res!1013320 (not (is-Concat!11628 r!13927)))))

(declare-fun e!1521169 () Bool)

(assert (=> b!2385549 (= e!1521169 e!1521170)))

(declare-fun bm!145060 () Bool)

(declare-fun call!145065 () Bool)

(declare-fun c!379344 () Bool)

(assert (=> bm!145060 (= call!145065 (validRegex!2717 (ite c!379344 (regTwo!14497 r!13927) (regOne!14496 r!13927))))))

(declare-fun b!2385550 () Bool)

(declare-fun e!1521167 () Bool)

(declare-fun call!145067 () Bool)

(assert (=> b!2385550 (= e!1521167 call!145067)))

(declare-fun b!2385551 () Bool)

(declare-fun e!1521166 () Bool)

(declare-fun e!1521171 () Bool)

(assert (=> b!2385551 (= e!1521166 e!1521171)))

(declare-fun c!379345 () Bool)

(assert (=> b!2385551 (= c!379345 (is-Star!6992 r!13927))))

(declare-fun b!2385552 () Bool)

(assert (=> b!2385552 (= e!1521171 e!1521169)))

(assert (=> b!2385552 (= c!379344 (is-Union!6992 r!13927))))

(declare-fun b!2385553 () Bool)

(declare-fun e!1521165 () Bool)

(assert (=> b!2385553 (= e!1521165 call!145065)))

(declare-fun bm!145061 () Bool)

(assert (=> bm!145061 (= call!145067 (validRegex!2717 (ite c!379345 (reg!7321 r!13927) (ite c!379344 (regOne!14497 r!13927) (regTwo!14496 r!13927)))))))

(declare-fun b!2385554 () Bool)

(declare-fun e!1521168 () Bool)

(declare-fun call!145066 () Bool)

(assert (=> b!2385554 (= e!1521168 call!145066)))

(declare-fun b!2385556 () Bool)

(assert (=> b!2385556 (= e!1521171 e!1521167)))

(declare-fun res!1013322 () Bool)

(declare-fun nullable!2042 (Regex!6992) Bool)

(assert (=> b!2385556 (= res!1013322 (not (nullable!2042 (reg!7321 r!13927))))))

(assert (=> b!2385556 (=> (not res!1013322) (not e!1521167))))

(declare-fun b!2385557 () Bool)

(declare-fun res!1013319 () Bool)

(assert (=> b!2385557 (=> (not res!1013319) (not e!1521165))))

(assert (=> b!2385557 (= res!1013319 call!145066)))

(assert (=> b!2385557 (= e!1521169 e!1521165)))

(declare-fun bm!145062 () Bool)

(assert (=> bm!145062 (= call!145066 call!145067)))

(declare-fun d!697411 () Bool)

(declare-fun res!1013323 () Bool)

(assert (=> d!697411 (=> res!1013323 e!1521166)))

(assert (=> d!697411 (= res!1013323 (is-ElementMatch!6992 r!13927))))

(assert (=> d!697411 (= (validRegex!2717 r!13927) e!1521166)))

(declare-fun b!2385555 () Bool)

(assert (=> b!2385555 (= e!1521170 e!1521168)))

(declare-fun res!1013321 () Bool)

(assert (=> b!2385555 (=> (not res!1013321) (not e!1521168))))

(assert (=> b!2385555 (= res!1013321 call!145065)))

(assert (= (and d!697411 (not res!1013323)) b!2385551))

(assert (= (and b!2385551 c!379345) b!2385556))

(assert (= (and b!2385551 (not c!379345)) b!2385552))

(assert (= (and b!2385556 res!1013322) b!2385550))

(assert (= (and b!2385552 c!379344) b!2385557))

(assert (= (and b!2385552 (not c!379344)) b!2385549))

(assert (= (and b!2385557 res!1013319) b!2385553))

(assert (= (and b!2385549 (not res!1013320)) b!2385555))

(assert (= (and b!2385555 res!1013321) b!2385554))

(assert (= (or b!2385557 b!2385554) bm!145062))

(assert (= (or b!2385553 b!2385555) bm!145060))

(assert (= (or b!2385550 bm!145062) bm!145061))

(declare-fun m!2787927 () Bool)

(assert (=> bm!145060 m!2787927))

(declare-fun m!2787929 () Bool)

(assert (=> bm!145061 m!2787929))

(declare-fun m!2787931 () Bool)

(assert (=> b!2385556 m!2787931))

(assert (=> b!2385444 d!697411))

(declare-fun bs!462166 () Bool)

(declare-fun b!2385596 () Bool)

(assert (= bs!462166 (and b!2385596 b!2385436)))

(declare-fun lambda!89059 () Int)

(assert (=> bs!462166 (not (= lambda!89059 lambda!89039))))

(assert (=> bs!462166 (not (= lambda!89059 lambda!89040))))

(assert (=> b!2385596 true))

(assert (=> b!2385596 true))

(declare-fun bs!462167 () Bool)

(declare-fun b!2385597 () Bool)

(assert (= bs!462167 (and b!2385597 b!2385436)))

(declare-fun lambda!89060 () Int)

(assert (=> bs!462167 (not (= lambda!89060 lambda!89039))))

(assert (=> bs!462167 (= lambda!89060 lambda!89040)))

(declare-fun bs!462168 () Bool)

(assert (= bs!462168 (and b!2385597 b!2385596)))

(assert (=> bs!462168 (not (= lambda!89060 lambda!89059))))

(assert (=> b!2385597 true))

(assert (=> b!2385597 true))

(declare-fun e!1521200 () Bool)

(declare-fun call!145073 () Bool)

(assert (=> b!2385596 (= e!1521200 call!145073)))

(declare-fun e!1521202 () Bool)

(assert (=> b!2385597 (= e!1521202 call!145073)))

(declare-fun bm!145067 () Bool)

(declare-fun call!145072 () Bool)

(declare-fun isEmpty!16088 (List!28222) Bool)

(assert (=> bm!145067 (= call!145072 (isEmpty!16088 s!9460))))

(declare-fun c!379355 () Bool)

(declare-fun bm!145068 () Bool)

(assert (=> bm!145068 (= call!145073 (Exists!1054 (ite c!379355 lambda!89059 lambda!89060)))))

(declare-fun b!2385599 () Bool)

(declare-fun e!1521197 () Bool)

(assert (=> b!2385599 (= e!1521197 (= s!9460 (Cons!28124 (c!379326 r!13927) Nil!28124)))))

(declare-fun b!2385600 () Bool)

(declare-fun res!1013346 () Bool)

(assert (=> b!2385600 (=> res!1013346 e!1521200)))

(assert (=> b!2385600 (= res!1013346 call!145072)))

(assert (=> b!2385600 (= e!1521202 e!1521200)))

(declare-fun b!2385601 () Bool)

(declare-fun e!1521198 () Bool)

(assert (=> b!2385601 (= e!1521198 e!1521202)))

(assert (=> b!2385601 (= c!379355 (is-Star!6992 r!13927))))

(declare-fun b!2385602 () Bool)

(declare-fun e!1521196 () Bool)

(declare-fun e!1521201 () Bool)

(assert (=> b!2385602 (= e!1521196 e!1521201)))

(declare-fun res!1013348 () Bool)

(assert (=> b!2385602 (= res!1013348 (not (is-EmptyLang!6992 r!13927)))))

(assert (=> b!2385602 (=> (not res!1013348) (not e!1521201))))

(declare-fun b!2385603 () Bool)

(assert (=> b!2385603 (= e!1521196 call!145072)))

(declare-fun b!2385604 () Bool)

(declare-fun c!379357 () Bool)

(assert (=> b!2385604 (= c!379357 (is-Union!6992 r!13927))))

(assert (=> b!2385604 (= e!1521197 e!1521198)))

(declare-fun b!2385598 () Bool)

(declare-fun c!379354 () Bool)

(assert (=> b!2385598 (= c!379354 (is-ElementMatch!6992 r!13927))))

(assert (=> b!2385598 (= e!1521201 e!1521197)))

(declare-fun d!697413 () Bool)

(declare-fun c!379356 () Bool)

(assert (=> d!697413 (= c!379356 (is-EmptyExpr!6992 r!13927))))

(assert (=> d!697413 (= (matchRSpec!841 r!13927 s!9460) e!1521196)))

(declare-fun b!2385605 () Bool)

(declare-fun e!1521199 () Bool)

(assert (=> b!2385605 (= e!1521198 e!1521199)))

(declare-fun res!1013347 () Bool)

(assert (=> b!2385605 (= res!1013347 (matchRSpec!841 (regOne!14497 r!13927) s!9460))))

(assert (=> b!2385605 (=> res!1013347 e!1521199)))

(declare-fun b!2385606 () Bool)

(assert (=> b!2385606 (= e!1521199 (matchRSpec!841 (regTwo!14497 r!13927) s!9460))))

(assert (= (and d!697413 c!379356) b!2385603))

(assert (= (and d!697413 (not c!379356)) b!2385602))

(assert (= (and b!2385602 res!1013348) b!2385598))

(assert (= (and b!2385598 c!379354) b!2385599))

(assert (= (and b!2385598 (not c!379354)) b!2385604))

(assert (= (and b!2385604 c!379357) b!2385605))

(assert (= (and b!2385604 (not c!379357)) b!2385601))

(assert (= (and b!2385605 (not res!1013347)) b!2385606))

(assert (= (and b!2385601 c!379355) b!2385600))

(assert (= (and b!2385601 (not c!379355)) b!2385597))

(assert (= (and b!2385600 (not res!1013346)) b!2385596))

(assert (= (or b!2385596 b!2385597) bm!145068))

(assert (= (or b!2385603 b!2385600) bm!145067))

(declare-fun m!2787937 () Bool)

(assert (=> bm!145067 m!2787937))

(declare-fun m!2787939 () Bool)

(assert (=> bm!145068 m!2787939))

(declare-fun m!2787941 () Bool)

(assert (=> b!2385605 m!2787941))

(declare-fun m!2787943 () Bool)

(assert (=> b!2385606 m!2787943))

(assert (=> b!2385435 d!697413))

(declare-fun b!2385665 () Bool)

(declare-fun e!1521240 () Bool)

(declare-fun lt!869349 () Bool)

(declare-fun call!145076 () Bool)

(assert (=> b!2385665 (= e!1521240 (= lt!869349 call!145076))))

(declare-fun b!2385666 () Bool)

(declare-fun e!1521241 () Bool)

(assert (=> b!2385666 (= e!1521241 (not lt!869349))))

(declare-fun d!697419 () Bool)

(assert (=> d!697419 e!1521240))

(declare-fun c!379377 () Bool)

(assert (=> d!697419 (= c!379377 (is-EmptyExpr!6992 r!13927))))

(declare-fun e!1521236 () Bool)

(assert (=> d!697419 (= lt!869349 e!1521236)))

(declare-fun c!379376 () Bool)

(assert (=> d!697419 (= c!379376 (isEmpty!16088 s!9460))))

(assert (=> d!697419 (validRegex!2717 r!13927)))

(assert (=> d!697419 (= (matchR!3109 r!13927 s!9460) lt!869349)))

(declare-fun b!2385667 () Bool)

(declare-fun e!1521239 () Bool)

(declare-fun head!5218 (List!28222) C!14142)

(assert (=> b!2385667 (= e!1521239 (= (head!5218 s!9460) (c!379326 r!13927)))))

(declare-fun b!2385668 () Bool)

(declare-fun res!1013371 () Bool)

(assert (=> b!2385668 (=> (not res!1013371) (not e!1521239))))

(assert (=> b!2385668 (= res!1013371 (not call!145076))))

(declare-fun b!2385669 () Bool)

(declare-fun res!1013375 () Bool)

(declare-fun e!1521238 () Bool)

(assert (=> b!2385669 (=> res!1013375 e!1521238)))

(declare-fun tail!3489 (List!28222) List!28222)

(assert (=> b!2385669 (= res!1013375 (not (isEmpty!16088 (tail!3489 s!9460))))))

(declare-fun b!2385670 () Bool)

(declare-fun e!1521235 () Bool)

(assert (=> b!2385670 (= e!1521235 e!1521238)))

(declare-fun res!1013374 () Bool)

(assert (=> b!2385670 (=> res!1013374 e!1521238)))

(assert (=> b!2385670 (= res!1013374 call!145076)))

(declare-fun b!2385671 () Bool)

(declare-fun derivativeStep!1700 (Regex!6992 C!14142) Regex!6992)

(assert (=> b!2385671 (= e!1521236 (matchR!3109 (derivativeStep!1700 r!13927 (head!5218 s!9460)) (tail!3489 s!9460)))))

(declare-fun bm!145071 () Bool)

(assert (=> bm!145071 (= call!145076 (isEmpty!16088 s!9460))))

(declare-fun b!2385672 () Bool)

(assert (=> b!2385672 (= e!1521238 (not (= (head!5218 s!9460) (c!379326 r!13927))))))

(declare-fun b!2385673 () Bool)

(assert (=> b!2385673 (= e!1521236 (nullable!2042 r!13927))))

(declare-fun b!2385674 () Bool)

(assert (=> b!2385674 (= e!1521240 e!1521241)))

(declare-fun c!379378 () Bool)

(assert (=> b!2385674 (= c!379378 (is-EmptyLang!6992 r!13927))))

(declare-fun b!2385675 () Bool)

(declare-fun res!1013373 () Bool)

(declare-fun e!1521237 () Bool)

(assert (=> b!2385675 (=> res!1013373 e!1521237)))

(assert (=> b!2385675 (= res!1013373 e!1521239)))

(declare-fun res!1013378 () Bool)

(assert (=> b!2385675 (=> (not res!1013378) (not e!1521239))))

(assert (=> b!2385675 (= res!1013378 lt!869349)))

(declare-fun b!2385676 () Bool)

(assert (=> b!2385676 (= e!1521237 e!1521235)))

(declare-fun res!1013377 () Bool)

(assert (=> b!2385676 (=> (not res!1013377) (not e!1521235))))

(assert (=> b!2385676 (= res!1013377 (not lt!869349))))

(declare-fun b!2385677 () Bool)

(declare-fun res!1013372 () Bool)

(assert (=> b!2385677 (=> res!1013372 e!1521237)))

(assert (=> b!2385677 (= res!1013372 (not (is-ElementMatch!6992 r!13927)))))

(assert (=> b!2385677 (= e!1521241 e!1521237)))

(declare-fun b!2385678 () Bool)

(declare-fun res!1013376 () Bool)

(assert (=> b!2385678 (=> (not res!1013376) (not e!1521239))))

(assert (=> b!2385678 (= res!1013376 (isEmpty!16088 (tail!3489 s!9460)))))

(assert (= (and d!697419 c!379376) b!2385673))

(assert (= (and d!697419 (not c!379376)) b!2385671))

(assert (= (and d!697419 c!379377) b!2385665))

(assert (= (and d!697419 (not c!379377)) b!2385674))

(assert (= (and b!2385674 c!379378) b!2385666))

(assert (= (and b!2385674 (not c!379378)) b!2385677))

(assert (= (and b!2385677 (not res!1013372)) b!2385675))

(assert (= (and b!2385675 res!1013378) b!2385668))

(assert (= (and b!2385668 res!1013371) b!2385678))

(assert (= (and b!2385678 res!1013376) b!2385667))

(assert (= (and b!2385675 (not res!1013373)) b!2385676))

(assert (= (and b!2385676 res!1013377) b!2385670))

(assert (= (and b!2385670 (not res!1013374)) b!2385669))

(assert (= (and b!2385669 (not res!1013375)) b!2385672))

(assert (= (or b!2385665 b!2385668 b!2385670) bm!145071))

(declare-fun m!2787945 () Bool)

(assert (=> b!2385672 m!2787945))

(assert (=> b!2385667 m!2787945))

(assert (=> bm!145071 m!2787937))

(declare-fun m!2787947 () Bool)

(assert (=> b!2385669 m!2787947))

(assert (=> b!2385669 m!2787947))

(declare-fun m!2787949 () Bool)

(assert (=> b!2385669 m!2787949))

(declare-fun m!2787951 () Bool)

(assert (=> b!2385673 m!2787951))

(assert (=> b!2385671 m!2787945))

(assert (=> b!2385671 m!2787945))

(declare-fun m!2787953 () Bool)

(assert (=> b!2385671 m!2787953))

(assert (=> b!2385671 m!2787947))

(assert (=> b!2385671 m!2787953))

(assert (=> b!2385671 m!2787947))

(declare-fun m!2787955 () Bool)

(assert (=> b!2385671 m!2787955))

(assert (=> d!697419 m!2787937))

(assert (=> d!697419 m!2787859))

(assert (=> b!2385678 m!2787947))

(assert (=> b!2385678 m!2787947))

(assert (=> b!2385678 m!2787949))

(assert (=> b!2385435 d!697419))

(declare-fun d!697421 () Bool)

(assert (=> d!697421 (= (matchR!3109 r!13927 s!9460) (matchRSpec!841 r!13927 s!9460))))

(declare-fun lt!869352 () Unit!41087)

(declare-fun choose!14000 (Regex!6992 List!28222) Unit!41087)

(assert (=> d!697421 (= lt!869352 (choose!14000 r!13927 s!9460))))

(assert (=> d!697421 (validRegex!2717 r!13927)))

(assert (=> d!697421 (= (mainMatchTheorem!841 r!13927 s!9460) lt!869352)))

(declare-fun bs!462170 () Bool)

(assert (= bs!462170 d!697421))

(assert (=> bs!462170 m!2787863))

(assert (=> bs!462170 m!2787861))

(declare-fun m!2787971 () Bool)

(assert (=> bs!462170 m!2787971))

(assert (=> bs!462170 m!2787859))

(assert (=> b!2385435 d!697421))

(declare-fun d!697425 () Bool)

(assert (=> d!697425 (= (isEmpty!16086 l!9164) (is-Nil!28125 l!9164))))

(assert (=> b!2385441 d!697425))

(declare-fun d!697427 () Bool)

(declare-fun res!1013383 () Bool)

(declare-fun e!1521246 () Bool)

(assert (=> d!697427 (=> res!1013383 e!1521246)))

(assert (=> d!697427 (= res!1013383 (is-Nil!28125 l!9164))))

(assert (=> d!697427 (= (forall!5626 l!9164 lambda!89038) e!1521246)))

(declare-fun b!2385683 () Bool)

(declare-fun e!1521247 () Bool)

(assert (=> b!2385683 (= e!1521246 e!1521247)))

(declare-fun res!1013384 () Bool)

(assert (=> b!2385683 (=> (not res!1013384) (not e!1521247))))

(declare-fun dynLambda!12109 (Int Regex!6992) Bool)

(assert (=> b!2385683 (= res!1013384 (dynLambda!12109 lambda!89038 (h!33526 l!9164)))))

(declare-fun b!2385684 () Bool)

(assert (=> b!2385684 (= e!1521247 (forall!5626 (t!208200 l!9164) lambda!89038))))

(assert (= (and d!697427 (not res!1013383)) b!2385683))

(assert (= (and b!2385683 res!1013384) b!2385684))

(declare-fun b_lambda!74117 () Bool)

(assert (=> (not b_lambda!74117) (not b!2385683)))

(declare-fun m!2787973 () Bool)

(assert (=> b!2385683 m!2787973))

(declare-fun m!2787975 () Bool)

(assert (=> b!2385684 m!2787975))

(assert (=> start!234082 d!697427))

(declare-fun d!697429 () Bool)

(declare-fun isEmpty!16089 (Option!5535) Bool)

(assert (=> d!697429 (= (isDefined!4363 (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) Nil!28124 s!9460 s!9460)) (not (isEmpty!16089 (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) Nil!28124 s!9460 s!9460))))))

(declare-fun bs!462171 () Bool)

(assert (= bs!462171 d!697429))

(assert (=> bs!462171 m!2787869))

(declare-fun m!2787977 () Bool)

(assert (=> bs!462171 m!2787977))

(assert (=> b!2385436 d!697429))

(declare-fun bs!462172 () Bool)

(declare-fun d!697431 () Bool)

(assert (= bs!462172 (and d!697431 b!2385436)))

(declare-fun lambda!89066 () Int)

(assert (=> bs!462172 (= lambda!89066 lambda!89039)))

(assert (=> bs!462172 (not (= lambda!89066 lambda!89040))))

(declare-fun bs!462173 () Bool)

(assert (= bs!462173 (and d!697431 b!2385596)))

(assert (=> bs!462173 (not (= lambda!89066 lambda!89059))))

(declare-fun bs!462174 () Bool)

(assert (= bs!462174 (and d!697431 b!2385597)))

(assert (=> bs!462174 (not (= lambda!89066 lambda!89060))))

(assert (=> d!697431 true))

(assert (=> d!697431 true))

(assert (=> d!697431 true))

(assert (=> d!697431 (= (isDefined!4363 (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) Nil!28124 s!9460 s!9460)) (Exists!1054 lambda!89066))))

(declare-fun lt!869355 () Unit!41087)

(declare-fun choose!14001 (Regex!6992 Regex!6992 List!28222) Unit!41087)

(assert (=> d!697431 (= lt!869355 (choose!14001 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460))))

(assert (=> d!697431 (validRegex!2717 (regOne!14496 r!13927))))

(assert (=> d!697431 (= (lemmaFindConcatSeparationEquivalentToExists!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460) lt!869355)))

(declare-fun bs!462175 () Bool)

(assert (= bs!462175 d!697431))

(declare-fun m!2787979 () Bool)

(assert (=> bs!462175 m!2787979))

(assert (=> bs!462175 m!2787869))

(declare-fun m!2787981 () Bool)

(assert (=> bs!462175 m!2787981))

(assert (=> bs!462175 m!2787869))

(assert (=> bs!462175 m!2787871))

(declare-fun m!2787983 () Bool)

(assert (=> bs!462175 m!2787983))

(assert (=> b!2385436 d!697431))

(declare-fun bs!462176 () Bool)

(declare-fun d!697433 () Bool)

(assert (= bs!462176 (and d!697433 b!2385597)))

(declare-fun lambda!89075 () Int)

(assert (=> bs!462176 (not (= lambda!89075 lambda!89060))))

(declare-fun bs!462177 () Bool)

(assert (= bs!462177 (and d!697433 d!697431)))

(assert (=> bs!462177 (= lambda!89075 lambda!89066)))

(declare-fun bs!462178 () Bool)

(assert (= bs!462178 (and d!697433 b!2385596)))

(assert (=> bs!462178 (not (= lambda!89075 lambda!89059))))

(declare-fun bs!462179 () Bool)

(assert (= bs!462179 (and d!697433 b!2385436)))

(assert (=> bs!462179 (not (= lambda!89075 lambda!89040))))

(assert (=> bs!462179 (= lambda!89075 lambda!89039)))

(assert (=> d!697433 true))

(assert (=> d!697433 true))

(assert (=> d!697433 true))

(declare-fun lambda!89076 () Int)

(assert (=> bs!462176 (= lambda!89076 lambda!89060)))

(assert (=> bs!462177 (not (= lambda!89076 lambda!89066))))

(assert (=> bs!462178 (not (= lambda!89076 lambda!89059))))

(declare-fun bs!462180 () Bool)

(assert (= bs!462180 d!697433))

(assert (=> bs!462180 (not (= lambda!89076 lambda!89075))))

(assert (=> bs!462179 (= lambda!89076 lambda!89040)))

(assert (=> bs!462179 (not (= lambda!89076 lambda!89039))))

(assert (=> d!697433 true))

(assert (=> d!697433 true))

(assert (=> d!697433 true))

(assert (=> d!697433 (= (Exists!1054 lambda!89075) (Exists!1054 lambda!89076))))

(declare-fun lt!869358 () Unit!41087)

(declare-fun choose!14002 (Regex!6992 Regex!6992 List!28222) Unit!41087)

(assert (=> d!697433 (= lt!869358 (choose!14002 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460))))

(assert (=> d!697433 (validRegex!2717 (regOne!14496 r!13927))))

(assert (=> d!697433 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!393 (regOne!14496 r!13927) (regTwo!14496 r!13927) s!9460) lt!869358)))

(declare-fun m!2787985 () Bool)

(assert (=> bs!462180 m!2787985))

(declare-fun m!2787987 () Bool)

(assert (=> bs!462180 m!2787987))

(declare-fun m!2787989 () Bool)

(assert (=> bs!462180 m!2787989))

(assert (=> bs!462180 m!2787979))

(assert (=> b!2385436 d!697433))

(declare-fun d!697435 () Bool)

(declare-fun choose!14003 (Int) Bool)

(assert (=> d!697435 (= (Exists!1054 lambda!89039) (choose!14003 lambda!89039))))

(declare-fun bs!462181 () Bool)

(assert (= bs!462181 d!697435))

(declare-fun m!2787991 () Bool)

(assert (=> bs!462181 m!2787991))

(assert (=> b!2385436 d!697435))

(declare-fun b!2385758 () Bool)

(declare-fun e!1521289 () Option!5535)

(declare-fun e!1521291 () Option!5535)

(assert (=> b!2385758 (= e!1521289 e!1521291)))

(declare-fun c!379395 () Bool)

(assert (=> b!2385758 (= c!379395 (is-Nil!28124 s!9460))))

(declare-fun b!2385759 () Bool)

(declare-fun lt!869365 () Unit!41087)

(declare-fun lt!869366 () Unit!41087)

(assert (=> b!2385759 (= lt!869365 lt!869366)))

(declare-fun ++!6947 (List!28222 List!28222) List!28222)

(assert (=> b!2385759 (= (++!6947 (++!6947 Nil!28124 (Cons!28124 (h!33525 s!9460) Nil!28124)) (t!208199 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!589 (List!28222 C!14142 List!28222 List!28222) Unit!41087)

(assert (=> b!2385759 (= lt!869366 (lemmaMoveElementToOtherListKeepsConcatEq!589 Nil!28124 (h!33525 s!9460) (t!208199 s!9460) s!9460))))

(assert (=> b!2385759 (= e!1521291 (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) (++!6947 Nil!28124 (Cons!28124 (h!33525 s!9460) Nil!28124)) (t!208199 s!9460) s!9460))))

(declare-fun d!697437 () Bool)

(declare-fun e!1521290 () Bool)

(assert (=> d!697437 e!1521290))

(declare-fun res!1013429 () Bool)

(assert (=> d!697437 (=> res!1013429 e!1521290)))

(declare-fun e!1521292 () Bool)

(assert (=> d!697437 (= res!1013429 e!1521292)))

(declare-fun res!1013430 () Bool)

(assert (=> d!697437 (=> (not res!1013430) (not e!1521292))))

(declare-fun lt!869367 () Option!5535)

(assert (=> d!697437 (= res!1013430 (isDefined!4363 lt!869367))))

(assert (=> d!697437 (= lt!869367 e!1521289)))

(declare-fun c!379396 () Bool)

(declare-fun e!1521293 () Bool)

(assert (=> d!697437 (= c!379396 e!1521293)))

(declare-fun res!1013428 () Bool)

(assert (=> d!697437 (=> (not res!1013428) (not e!1521293))))

(assert (=> d!697437 (= res!1013428 (matchR!3109 (regOne!14496 r!13927) Nil!28124))))

(assert (=> d!697437 (validRegex!2717 (regOne!14496 r!13927))))

(assert (=> d!697437 (= (findConcatSeparation!643 (regOne!14496 r!13927) (regTwo!14496 r!13927) Nil!28124 s!9460 s!9460) lt!869367)))

(declare-fun b!2385760 () Bool)

(assert (=> b!2385760 (= e!1521289 (Some!5534 (tuple2!27849 Nil!28124 s!9460)))))

(declare-fun b!2385761 () Bool)

(declare-fun get!8587 (Option!5535) tuple2!27848)

(assert (=> b!2385761 (= e!1521292 (= (++!6947 (_1!16465 (get!8587 lt!869367)) (_2!16465 (get!8587 lt!869367))) s!9460))))

(declare-fun b!2385762 () Bool)

(declare-fun res!1013426 () Bool)

(assert (=> b!2385762 (=> (not res!1013426) (not e!1521292))))

(assert (=> b!2385762 (= res!1013426 (matchR!3109 (regOne!14496 r!13927) (_1!16465 (get!8587 lt!869367))))))

(declare-fun b!2385763 () Bool)

(assert (=> b!2385763 (= e!1521291 None!5534)))

(declare-fun b!2385764 () Bool)

(assert (=> b!2385764 (= e!1521293 (matchR!3109 (regTwo!14496 r!13927) s!9460))))

(declare-fun b!2385765 () Bool)

(declare-fun res!1013427 () Bool)

(assert (=> b!2385765 (=> (not res!1013427) (not e!1521292))))

(assert (=> b!2385765 (= res!1013427 (matchR!3109 (regTwo!14496 r!13927) (_2!16465 (get!8587 lt!869367))))))

(declare-fun b!2385766 () Bool)

(assert (=> b!2385766 (= e!1521290 (not (isDefined!4363 lt!869367)))))

(assert (= (and d!697437 res!1013428) b!2385764))

(assert (= (and d!697437 c!379396) b!2385760))

(assert (= (and d!697437 (not c!379396)) b!2385758))

(assert (= (and b!2385758 c!379395) b!2385763))

(assert (= (and b!2385758 (not c!379395)) b!2385759))

(assert (= (and d!697437 res!1013430) b!2385762))

(assert (= (and b!2385762 res!1013426) b!2385765))

(assert (= (and b!2385765 res!1013427) b!2385761))

(assert (= (and d!697437 (not res!1013429)) b!2385766))

(declare-fun m!2788001 () Bool)

(assert (=> b!2385765 m!2788001))

(declare-fun m!2788003 () Bool)

(assert (=> b!2385765 m!2788003))

(assert (=> b!2385761 m!2788001))

(declare-fun m!2788005 () Bool)

(assert (=> b!2385761 m!2788005))

(declare-fun m!2788007 () Bool)

(assert (=> d!697437 m!2788007))

(declare-fun m!2788009 () Bool)

(assert (=> d!697437 m!2788009))

(assert (=> d!697437 m!2787979))

(declare-fun m!2788011 () Bool)

(assert (=> b!2385764 m!2788011))

(assert (=> b!2385766 m!2788007))

(assert (=> b!2385762 m!2788001))

(declare-fun m!2788013 () Bool)

(assert (=> b!2385762 m!2788013))

(declare-fun m!2788015 () Bool)

(assert (=> b!2385759 m!2788015))

(assert (=> b!2385759 m!2788015))

(declare-fun m!2788017 () Bool)

(assert (=> b!2385759 m!2788017))

(declare-fun m!2788019 () Bool)

(assert (=> b!2385759 m!2788019))

(assert (=> b!2385759 m!2788015))

(declare-fun m!2788021 () Bool)

(assert (=> b!2385759 m!2788021))

(assert (=> b!2385436 d!697437))

(declare-fun d!697441 () Bool)

(assert (=> d!697441 (= (Exists!1054 lambda!89040) (choose!14003 lambda!89040))))

(declare-fun bs!462185 () Bool)

(assert (= bs!462185 d!697441))

(declare-fun m!2788023 () Bool)

(assert (=> bs!462185 m!2788023))

(assert (=> b!2385436 d!697441))

(declare-fun d!697443 () Bool)

(assert (=> d!697443 (= (isEmpty!16086 (tail!3487 l!9164)) (is-Nil!28125 (tail!3487 l!9164)))))

(assert (=> b!2385442 d!697443))

(declare-fun d!697445 () Bool)

(assert (=> d!697445 (= (tail!3487 l!9164) (t!208200 l!9164))))

(assert (=> b!2385442 d!697445))

(declare-fun e!1521296 () Bool)

(assert (=> b!2385433 (= tp!760901 e!1521296)))

(declare-fun b!2385778 () Bool)

(declare-fun tp!760940 () Bool)

(declare-fun tp!760938 () Bool)

(assert (=> b!2385778 (= e!1521296 (and tp!760940 tp!760938))))

(declare-fun b!2385780 () Bool)

(declare-fun tp!760942 () Bool)

(declare-fun tp!760939 () Bool)

(assert (=> b!2385780 (= e!1521296 (and tp!760942 tp!760939))))

(declare-fun b!2385777 () Bool)

(assert (=> b!2385777 (= e!1521296 tp_is_empty!11397)))

(declare-fun b!2385779 () Bool)

(declare-fun tp!760941 () Bool)

(assert (=> b!2385779 (= e!1521296 tp!760941)))

(assert (= (and b!2385433 (is-ElementMatch!6992 (reg!7321 r!13927))) b!2385777))

(assert (= (and b!2385433 (is-Concat!11628 (reg!7321 r!13927))) b!2385778))

(assert (= (and b!2385433 (is-Star!6992 (reg!7321 r!13927))) b!2385779))

(assert (= (and b!2385433 (is-Union!6992 (reg!7321 r!13927))) b!2385780))

(declare-fun e!1521297 () Bool)

(assert (=> b!2385438 (= tp!760898 e!1521297)))

(declare-fun b!2385782 () Bool)

(declare-fun tp!760945 () Bool)

(declare-fun tp!760943 () Bool)

(assert (=> b!2385782 (= e!1521297 (and tp!760945 tp!760943))))

(declare-fun b!2385784 () Bool)

(declare-fun tp!760947 () Bool)

(declare-fun tp!760944 () Bool)

(assert (=> b!2385784 (= e!1521297 (and tp!760947 tp!760944))))

(declare-fun b!2385781 () Bool)

(assert (=> b!2385781 (= e!1521297 tp_is_empty!11397)))

(declare-fun b!2385783 () Bool)

(declare-fun tp!760946 () Bool)

(assert (=> b!2385783 (= e!1521297 tp!760946)))

(assert (= (and b!2385438 (is-ElementMatch!6992 (h!33526 l!9164))) b!2385781))

(assert (= (and b!2385438 (is-Concat!11628 (h!33526 l!9164))) b!2385782))

(assert (= (and b!2385438 (is-Star!6992 (h!33526 l!9164))) b!2385783))

(assert (= (and b!2385438 (is-Union!6992 (h!33526 l!9164))) b!2385784))

(declare-fun b!2385789 () Bool)

(declare-fun e!1521300 () Bool)

(declare-fun tp!760952 () Bool)

(declare-fun tp!760953 () Bool)

(assert (=> b!2385789 (= e!1521300 (and tp!760952 tp!760953))))

(assert (=> b!2385438 (= tp!760903 e!1521300)))

(assert (= (and b!2385438 (is-Cons!28125 (t!208200 l!9164))) b!2385789))

(declare-fun e!1521301 () Bool)

(assert (=> b!2385439 (= tp!760896 e!1521301)))

(declare-fun b!2385791 () Bool)

(declare-fun tp!760956 () Bool)

(declare-fun tp!760954 () Bool)

(assert (=> b!2385791 (= e!1521301 (and tp!760956 tp!760954))))

(declare-fun b!2385793 () Bool)

(declare-fun tp!760958 () Bool)

(declare-fun tp!760955 () Bool)

(assert (=> b!2385793 (= e!1521301 (and tp!760958 tp!760955))))

(declare-fun b!2385790 () Bool)

(assert (=> b!2385790 (= e!1521301 tp_is_empty!11397)))

(declare-fun b!2385792 () Bool)

(declare-fun tp!760957 () Bool)

(assert (=> b!2385792 (= e!1521301 tp!760957)))

(assert (= (and b!2385439 (is-ElementMatch!6992 (regOne!14496 r!13927))) b!2385790))

(assert (= (and b!2385439 (is-Concat!11628 (regOne!14496 r!13927))) b!2385791))

(assert (= (and b!2385439 (is-Star!6992 (regOne!14496 r!13927))) b!2385792))

(assert (= (and b!2385439 (is-Union!6992 (regOne!14496 r!13927))) b!2385793))

(declare-fun e!1521302 () Bool)

(assert (=> b!2385439 (= tp!760897 e!1521302)))

(declare-fun b!2385795 () Bool)

(declare-fun tp!760961 () Bool)

(declare-fun tp!760959 () Bool)

(assert (=> b!2385795 (= e!1521302 (and tp!760961 tp!760959))))

(declare-fun b!2385797 () Bool)

(declare-fun tp!760963 () Bool)

(declare-fun tp!760960 () Bool)

(assert (=> b!2385797 (= e!1521302 (and tp!760963 tp!760960))))

(declare-fun b!2385794 () Bool)

(assert (=> b!2385794 (= e!1521302 tp_is_empty!11397)))

(declare-fun b!2385796 () Bool)

(declare-fun tp!760962 () Bool)

(assert (=> b!2385796 (= e!1521302 tp!760962)))

(assert (= (and b!2385439 (is-ElementMatch!6992 (regTwo!14496 r!13927))) b!2385794))

(assert (= (and b!2385439 (is-Concat!11628 (regTwo!14496 r!13927))) b!2385795))

(assert (= (and b!2385439 (is-Star!6992 (regTwo!14496 r!13927))) b!2385796))

(assert (= (and b!2385439 (is-Union!6992 (regTwo!14496 r!13927))) b!2385797))

(declare-fun b!2385802 () Bool)

(declare-fun e!1521305 () Bool)

(declare-fun tp!760966 () Bool)

(assert (=> b!2385802 (= e!1521305 (and tp_is_empty!11397 tp!760966))))

(assert (=> b!2385434 (= tp!760900 e!1521305)))

(assert (= (and b!2385434 (is-Cons!28124 (t!208199 s!9460))) b!2385802))

(declare-fun e!1521306 () Bool)

(assert (=> b!2385440 (= tp!760899 e!1521306)))

(declare-fun b!2385804 () Bool)

(declare-fun tp!760969 () Bool)

(declare-fun tp!760967 () Bool)

(assert (=> b!2385804 (= e!1521306 (and tp!760969 tp!760967))))

(declare-fun b!2385806 () Bool)

(declare-fun tp!760971 () Bool)

(declare-fun tp!760968 () Bool)

(assert (=> b!2385806 (= e!1521306 (and tp!760971 tp!760968))))

(declare-fun b!2385803 () Bool)

(assert (=> b!2385803 (= e!1521306 tp_is_empty!11397)))

(declare-fun b!2385805 () Bool)

(declare-fun tp!760970 () Bool)

(assert (=> b!2385805 (= e!1521306 tp!760970)))

(assert (= (and b!2385440 (is-ElementMatch!6992 (regOne!14497 r!13927))) b!2385803))

(assert (= (and b!2385440 (is-Concat!11628 (regOne!14497 r!13927))) b!2385804))

(assert (= (and b!2385440 (is-Star!6992 (regOne!14497 r!13927))) b!2385805))

(assert (= (and b!2385440 (is-Union!6992 (regOne!14497 r!13927))) b!2385806))

(declare-fun e!1521307 () Bool)

(assert (=> b!2385440 (= tp!760902 e!1521307)))

(declare-fun b!2385808 () Bool)

(declare-fun tp!760974 () Bool)

(declare-fun tp!760972 () Bool)

(assert (=> b!2385808 (= e!1521307 (and tp!760974 tp!760972))))

(declare-fun b!2385810 () Bool)

(declare-fun tp!760976 () Bool)

(declare-fun tp!760973 () Bool)

(assert (=> b!2385810 (= e!1521307 (and tp!760976 tp!760973))))

(declare-fun b!2385807 () Bool)

(assert (=> b!2385807 (= e!1521307 tp_is_empty!11397)))

(declare-fun b!2385809 () Bool)

(declare-fun tp!760975 () Bool)

(assert (=> b!2385809 (= e!1521307 tp!760975)))

(assert (= (and b!2385440 (is-ElementMatch!6992 (regTwo!14497 r!13927))) b!2385807))

(assert (= (and b!2385440 (is-Concat!11628 (regTwo!14497 r!13927))) b!2385808))

(assert (= (and b!2385440 (is-Star!6992 (regTwo!14497 r!13927))) b!2385809))

(assert (= (and b!2385440 (is-Union!6992 (regTwo!14497 r!13927))) b!2385810))

(declare-fun b_lambda!74119 () Bool)

(assert (= b_lambda!74117 (or start!234082 b_lambda!74119)))

(declare-fun bs!462186 () Bool)

(declare-fun d!697447 () Bool)

(assert (= bs!462186 (and d!697447 start!234082)))

(assert (=> bs!462186 (= (dynLambda!12109 lambda!89038 (h!33526 l!9164)) (validRegex!2717 (h!33526 l!9164)))))

(declare-fun m!2788025 () Bool)

(assert (=> bs!462186 m!2788025))

(assert (=> b!2385683 d!697447))

(push 1)

(assert (not b!2385765))

(assert (not bm!145060))

(assert (not b!2385522))

(assert (not b!2385783))

(assert (not bs!462186))

(assert (not b!2385797))

(assert (not b!2385804))

(assert (not bm!145067))

(assert (not bm!145068))

(assert (not b!2385809))

(assert (not b!2385605))

(assert (not b!2385678))

(assert (not b!2385791))

(assert (not b!2385778))

(assert (not b!2385523))

(assert (not b!2385792))

(assert (not b!2385606))

(assert (not d!697441))

(assert (not b!2385779))

(assert tp_is_empty!11397)

(assert (not b!2385784))

(assert (not bm!145071))

(assert (not b!2385795))

(assert (not b!2385805))

(assert (not d!697437))

(assert (not b!2385667))

(assert (not b!2385764))

(assert (not b!2385669))

(assert (not b!2385673))

(assert (not b!2385762))

(assert (not b!2385766))

(assert (not b!2385526))

(assert (not b!2385671))

(assert (not b!2385782))

(assert (not b!2385528))

(assert (not b!2385524))

(assert (not b!2385530))

(assert (not b!2385806))

(assert (not b_lambda!74119))

(assert (not b!2385780))

(assert (not d!697429))

(assert (not b!2385796))

(assert (not b!2385759))

(assert (not d!697419))

(assert (not b!2385684))

(assert (not b!2385789))

(assert (not bm!145061))

(assert (not d!697431))

(assert (not b!2385525))

(assert (not d!697409))

(assert (not d!697421))

(assert (not b!2385808))

(assert (not b!2385793))

(assert (not b!2385802))

(assert (not b!2385672))

(assert (not b!2385810))

(assert (not d!697433))

(assert (not b!2385556))

(assert (not b!2385761))

(assert (not d!697435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

