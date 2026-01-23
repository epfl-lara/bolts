; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81320 () Bool)

(assert start!81320)

(declare-fun b!904223 () Bool)

(assert (=> b!904223 true))

(assert (=> b!904223 true))

(declare-fun lambda!28414 () Int)

(declare-fun lambda!28413 () Int)

(assert (=> b!904223 (not (= lambda!28414 lambda!28413))))

(assert (=> b!904223 true))

(assert (=> b!904223 true))

(declare-fun b!904217 () Bool)

(declare-fun e!590738 () Bool)

(declare-datatypes ((C!5346 0))(
  ( (C!5347 (val!2921 Int)) )
))
(declare-datatypes ((Regex!2388 0))(
  ( (ElementMatch!2388 (c!146475 C!5346)) (Concat!4221 (regOne!5288 Regex!2388) (regTwo!5288 Regex!2388)) (EmptyExpr!2388) (Star!2388 (reg!2717 Regex!2388)) (EmptyLang!2388) (Union!2388 (regOne!5289 Regex!2388) (regTwo!5289 Regex!2388)) )
))
(declare-fun r!15766 () Regex!2388)

(declare-fun validRegex!857 (Regex!2388) Bool)

(assert (=> b!904217 (= e!590738 (validRegex!857 (regTwo!5288 r!15766)))))

(declare-fun b!904218 () Bool)

(declare-fun e!590735 () Bool)

(declare-fun e!590736 () Bool)

(assert (=> b!904218 (= e!590735 (not e!590736))))

(declare-fun res!411136 () Bool)

(assert (=> b!904218 (=> res!411136 e!590736)))

(declare-fun lt!335360 () Bool)

(assert (=> b!904218 (= res!411136 (or lt!335360 (not (is-Concat!4221 r!15766)) (not (is-EmptyExpr!2388 (regOne!5288 r!15766)))))))

(declare-datatypes ((List!9618 0))(
  ( (Nil!9602) (Cons!9602 (h!15003 C!5346) (t!100664 List!9618)) )
))
(declare-fun s!10566 () List!9618)

(declare-fun matchRSpec!189 (Regex!2388 List!9618) Bool)

(assert (=> b!904218 (= lt!335360 (matchRSpec!189 r!15766 s!10566))))

(declare-fun matchR!926 (Regex!2388 List!9618) Bool)

(assert (=> b!904218 (= lt!335360 (matchR!926 r!15766 s!10566))))

(declare-datatypes ((Unit!14395 0))(
  ( (Unit!14396) )
))
(declare-fun lt!335362 () Unit!14395)

(declare-fun mainMatchTheorem!189 (Regex!2388 List!9618) Unit!14395)

(assert (=> b!904218 (= lt!335362 (mainMatchTheorem!189 r!15766 s!10566))))

(declare-fun b!904219 () Bool)

(declare-fun e!590734 () Bool)

(declare-fun tp!283320 () Bool)

(declare-fun tp!283322 () Bool)

(assert (=> b!904219 (= e!590734 (and tp!283320 tp!283322))))

(declare-fun b!904220 () Bool)

(declare-fun res!411133 () Bool)

(assert (=> b!904220 (=> res!411133 e!590738)))

(assert (=> b!904220 (= res!411133 false)))

(declare-fun b!904221 () Bool)

(declare-fun tp!283321 () Bool)

(assert (=> b!904221 (= e!590734 tp!283321)))

(declare-fun b!904222 () Bool)

(declare-fun tp_is_empty!4419 () Bool)

(assert (=> b!904222 (= e!590734 tp_is_empty!4419)))

(declare-fun res!411134 () Bool)

(assert (=> start!81320 (=> (not res!411134) (not e!590735))))

(assert (=> start!81320 (= res!411134 (validRegex!857 r!15766))))

(assert (=> start!81320 e!590735))

(assert (=> start!81320 e!590734))

(declare-fun e!590737 () Bool)

(assert (=> start!81320 e!590737))

(declare-fun b!904216 () Bool)

(declare-fun tp!283317 () Bool)

(assert (=> b!904216 (= e!590737 (and tp_is_empty!4419 tp!283317))))

(assert (=> b!904223 (= e!590736 e!590738)))

(declare-fun res!411135 () Bool)

(assert (=> b!904223 (=> res!411135 e!590738)))

(declare-fun isEmpty!5804 (List!9618) Bool)

(assert (=> b!904223 (= res!411135 (isEmpty!5804 s!10566))))

(declare-fun Exists!163 (Int) Bool)

(assert (=> b!904223 (= (Exists!163 lambda!28413) (Exists!163 lambda!28414))))

(declare-fun lt!335361 () Unit!14395)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!79 (Regex!2388 Regex!2388 List!9618) Unit!14395)

(assert (=> b!904223 (= lt!335361 (lemmaExistCutMatchRandMatchRSpecEquivalent!79 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566))))

(declare-datatypes ((tuple2!10770 0))(
  ( (tuple2!10771 (_1!6211 List!9618) (_2!6211 List!9618)) )
))
(declare-datatypes ((Option!2027 0))(
  ( (None!2026) (Some!2026 (v!19443 tuple2!10770)) )
))
(declare-fun isDefined!1669 (Option!2027) Bool)

(declare-fun findConcatSeparation!133 (Regex!2388 Regex!2388 List!9618 List!9618 List!9618) Option!2027)

(assert (=> b!904223 (= (isDefined!1669 (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) Nil!9602 s!10566 s!10566)) (Exists!163 lambda!28413))))

(declare-fun lt!335363 () Unit!14395)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!133 (Regex!2388 Regex!2388 List!9618) Unit!14395)

(assert (=> b!904223 (= lt!335363 (lemmaFindConcatSeparationEquivalentToExists!133 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566))))

(declare-fun b!904224 () Bool)

(declare-fun tp!283319 () Bool)

(declare-fun tp!283318 () Bool)

(assert (=> b!904224 (= e!590734 (and tp!283319 tp!283318))))

(assert (= (and start!81320 res!411134) b!904218))

(assert (= (and b!904218 (not res!411136)) b!904223))

(assert (= (and b!904223 (not res!411135)) b!904220))

(assert (= (and b!904220 (not res!411133)) b!904217))

(assert (= (and start!81320 (is-ElementMatch!2388 r!15766)) b!904222))

(assert (= (and start!81320 (is-Concat!4221 r!15766)) b!904219))

(assert (= (and start!81320 (is-Star!2388 r!15766)) b!904221))

(assert (= (and start!81320 (is-Union!2388 r!15766)) b!904224))

(assert (= (and start!81320 (is-Cons!9602 s!10566)) b!904216))

(declare-fun m!1140221 () Bool)

(assert (=> b!904217 m!1140221))

(declare-fun m!1140223 () Bool)

(assert (=> b!904218 m!1140223))

(declare-fun m!1140225 () Bool)

(assert (=> b!904218 m!1140225))

(declare-fun m!1140227 () Bool)

(assert (=> b!904218 m!1140227))

(declare-fun m!1140229 () Bool)

(assert (=> start!81320 m!1140229))

(declare-fun m!1140231 () Bool)

(assert (=> b!904223 m!1140231))

(declare-fun m!1140233 () Bool)

(assert (=> b!904223 m!1140233))

(declare-fun m!1140235 () Bool)

(assert (=> b!904223 m!1140235))

(declare-fun m!1140237 () Bool)

(assert (=> b!904223 m!1140237))

(declare-fun m!1140239 () Bool)

(assert (=> b!904223 m!1140239))

(declare-fun m!1140241 () Bool)

(assert (=> b!904223 m!1140241))

(declare-fun m!1140243 () Bool)

(assert (=> b!904223 m!1140243))

(assert (=> b!904223 m!1140231))

(assert (=> b!904223 m!1140237))

(push 1)

(assert (not b!904217))

(assert (not b!904216))

(assert (not b!904219))

(assert (not b!904224))

(assert tp_is_empty!4419)

(assert (not b!904223))

(assert (not b!904221))

(assert (not start!81320))

(assert (not b!904218))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!278634 () Bool)

(assert (=> d!278634 (= (isEmpty!5804 s!10566) (is-Nil!9602 s!10566))))

(assert (=> b!904223 d!278634))

(declare-fun b!904296 () Bool)

(declare-fun e!590774 () Bool)

(declare-fun lt!335382 () Option!2027)

(assert (=> b!904296 (= e!590774 (not (isDefined!1669 lt!335382)))))

(declare-fun b!904297 () Bool)

(declare-fun res!411175 () Bool)

(declare-fun e!590778 () Bool)

(assert (=> b!904297 (=> (not res!411175) (not e!590778))))

(declare-fun get!3070 (Option!2027) tuple2!10770)

(assert (=> b!904297 (= res!411175 (matchR!926 (regTwo!5288 r!15766) (_2!6211 (get!3070 lt!335382))))))

(declare-fun d!278636 () Bool)

(assert (=> d!278636 e!590774))

(declare-fun res!411173 () Bool)

(assert (=> d!278636 (=> res!411173 e!590774)))

(assert (=> d!278636 (= res!411173 e!590778)))

(declare-fun res!411174 () Bool)

(assert (=> d!278636 (=> (not res!411174) (not e!590778))))

(assert (=> d!278636 (= res!411174 (isDefined!1669 lt!335382))))

(declare-fun e!590776 () Option!2027)

(assert (=> d!278636 (= lt!335382 e!590776)))

(declare-fun c!146483 () Bool)

(declare-fun e!590775 () Bool)

(assert (=> d!278636 (= c!146483 e!590775)))

(declare-fun res!411177 () Bool)

(assert (=> d!278636 (=> (not res!411177) (not e!590775))))

(assert (=> d!278636 (= res!411177 (matchR!926 EmptyExpr!2388 Nil!9602))))

(assert (=> d!278636 (validRegex!857 EmptyExpr!2388)))

(assert (=> d!278636 (= (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) Nil!9602 s!10566 s!10566) lt!335382)))

(declare-fun b!904298 () Bool)

(declare-fun res!411176 () Bool)

(assert (=> b!904298 (=> (not res!411176) (not e!590778))))

(assert (=> b!904298 (= res!411176 (matchR!926 EmptyExpr!2388 (_1!6211 (get!3070 lt!335382))))))

(declare-fun b!904299 () Bool)

(declare-fun e!590777 () Option!2027)

(assert (=> b!904299 (= e!590777 None!2026)))

(declare-fun b!904300 () Bool)

(assert (=> b!904300 (= e!590776 e!590777)))

(declare-fun c!146484 () Bool)

(assert (=> b!904300 (= c!146484 (is-Nil!9602 s!10566))))

(declare-fun b!904301 () Bool)

(assert (=> b!904301 (= e!590776 (Some!2026 (tuple2!10771 Nil!9602 s!10566)))))

(declare-fun b!904302 () Bool)

(declare-fun ++!2515 (List!9618 List!9618) List!9618)

(assert (=> b!904302 (= e!590778 (= (++!2515 (_1!6211 (get!3070 lt!335382)) (_2!6211 (get!3070 lt!335382))) s!10566))))

(declare-fun b!904303 () Bool)

(declare-fun lt!335383 () Unit!14395)

(declare-fun lt!335384 () Unit!14395)

(assert (=> b!904303 (= lt!335383 lt!335384)))

(assert (=> b!904303 (= (++!2515 (++!2515 Nil!9602 (Cons!9602 (h!15003 s!10566) Nil!9602)) (t!100664 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!135 (List!9618 C!5346 List!9618 List!9618) Unit!14395)

(assert (=> b!904303 (= lt!335384 (lemmaMoveElementToOtherListKeepsConcatEq!135 Nil!9602 (h!15003 s!10566) (t!100664 s!10566) s!10566))))

(assert (=> b!904303 (= e!590777 (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) (++!2515 Nil!9602 (Cons!9602 (h!15003 s!10566) Nil!9602)) (t!100664 s!10566) s!10566))))

(declare-fun b!904304 () Bool)

(assert (=> b!904304 (= e!590775 (matchR!926 (regTwo!5288 r!15766) s!10566))))

(assert (= (and d!278636 res!411177) b!904304))

(assert (= (and d!278636 c!146483) b!904301))

(assert (= (and d!278636 (not c!146483)) b!904300))

(assert (= (and b!904300 c!146484) b!904299))

(assert (= (and b!904300 (not c!146484)) b!904303))

(assert (= (and d!278636 res!411174) b!904298))

(assert (= (and b!904298 res!411176) b!904297))

(assert (= (and b!904297 res!411175) b!904302))

(assert (= (and d!278636 (not res!411173)) b!904296))

(declare-fun m!1140269 () Bool)

(assert (=> b!904302 m!1140269))

(declare-fun m!1140271 () Bool)

(assert (=> b!904302 m!1140271))

(declare-fun m!1140273 () Bool)

(assert (=> b!904296 m!1140273))

(declare-fun m!1140275 () Bool)

(assert (=> b!904304 m!1140275))

(assert (=> b!904298 m!1140269))

(declare-fun m!1140277 () Bool)

(assert (=> b!904298 m!1140277))

(assert (=> d!278636 m!1140273))

(declare-fun m!1140279 () Bool)

(assert (=> d!278636 m!1140279))

(declare-fun m!1140281 () Bool)

(assert (=> d!278636 m!1140281))

(declare-fun m!1140283 () Bool)

(assert (=> b!904303 m!1140283))

(assert (=> b!904303 m!1140283))

(declare-fun m!1140285 () Bool)

(assert (=> b!904303 m!1140285))

(declare-fun m!1140287 () Bool)

(assert (=> b!904303 m!1140287))

(assert (=> b!904303 m!1140283))

(declare-fun m!1140289 () Bool)

(assert (=> b!904303 m!1140289))

(assert (=> b!904297 m!1140269))

(declare-fun m!1140291 () Bool)

(assert (=> b!904297 m!1140291))

(assert (=> b!904223 d!278636))

(declare-fun bs!235368 () Bool)

(declare-fun d!278640 () Bool)

(assert (= bs!235368 (and d!278640 b!904223)))

(declare-fun lambda!28427 () Int)

(assert (=> bs!235368 (= lambda!28427 lambda!28413)))

(assert (=> bs!235368 (not (= lambda!28427 lambda!28414))))

(assert (=> d!278640 true))

(assert (=> d!278640 true))

(assert (=> d!278640 true))

(declare-fun lambda!28428 () Int)

(assert (=> bs!235368 (not (= lambda!28428 lambda!28413))))

(assert (=> bs!235368 (= lambda!28428 lambda!28414)))

(declare-fun bs!235369 () Bool)

(assert (= bs!235369 d!278640))

(assert (=> bs!235369 (not (= lambda!28428 lambda!28427))))

(assert (=> d!278640 true))

(assert (=> d!278640 true))

(assert (=> d!278640 true))

(assert (=> d!278640 (= (Exists!163 lambda!28427) (Exists!163 lambda!28428))))

(declare-fun lt!335387 () Unit!14395)

(declare-fun choose!5463 (Regex!2388 Regex!2388 List!9618) Unit!14395)

(assert (=> d!278640 (= lt!335387 (choose!5463 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566))))

(assert (=> d!278640 (validRegex!857 EmptyExpr!2388)))

(assert (=> d!278640 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!79 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566) lt!335387)))

(declare-fun m!1140305 () Bool)

(assert (=> bs!235369 m!1140305))

(declare-fun m!1140307 () Bool)

(assert (=> bs!235369 m!1140307))

(declare-fun m!1140309 () Bool)

(assert (=> bs!235369 m!1140309))

(assert (=> bs!235369 m!1140281))

(assert (=> b!904223 d!278640))

(declare-fun d!278646 () Bool)

(declare-fun isEmpty!5806 (Option!2027) Bool)

(assert (=> d!278646 (= (isDefined!1669 (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) Nil!9602 s!10566 s!10566)) (not (isEmpty!5806 (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) Nil!9602 s!10566 s!10566))))))

(declare-fun bs!235370 () Bool)

(assert (= bs!235370 d!278646))

(assert (=> bs!235370 m!1140231))

(declare-fun m!1140311 () Bool)

(assert (=> bs!235370 m!1140311))

(assert (=> b!904223 d!278646))

(declare-fun d!278648 () Bool)

(declare-fun choose!5464 (Int) Bool)

(assert (=> d!278648 (= (Exists!163 lambda!28414) (choose!5464 lambda!28414))))

(declare-fun bs!235371 () Bool)

(assert (= bs!235371 d!278648))

(declare-fun m!1140313 () Bool)

(assert (=> bs!235371 m!1140313))

(assert (=> b!904223 d!278648))

(declare-fun bs!235372 () Bool)

(declare-fun d!278650 () Bool)

(assert (= bs!235372 (and d!278650 b!904223)))

(declare-fun lambda!28431 () Int)

(assert (=> bs!235372 (= lambda!28431 lambda!28413)))

(assert (=> bs!235372 (not (= lambda!28431 lambda!28414))))

(declare-fun bs!235373 () Bool)

(assert (= bs!235373 (and d!278650 d!278640)))

(assert (=> bs!235373 (= lambda!28431 lambda!28427)))

(assert (=> bs!235373 (not (= lambda!28431 lambda!28428))))

(assert (=> d!278650 true))

(assert (=> d!278650 true))

(assert (=> d!278650 true))

(assert (=> d!278650 (= (isDefined!1669 (findConcatSeparation!133 EmptyExpr!2388 (regTwo!5288 r!15766) Nil!9602 s!10566 s!10566)) (Exists!163 lambda!28431))))

(declare-fun lt!335390 () Unit!14395)

(declare-fun choose!5465 (Regex!2388 Regex!2388 List!9618) Unit!14395)

(assert (=> d!278650 (= lt!335390 (choose!5465 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566))))

(assert (=> d!278650 (validRegex!857 EmptyExpr!2388)))

(assert (=> d!278650 (= (lemmaFindConcatSeparationEquivalentToExists!133 EmptyExpr!2388 (regTwo!5288 r!15766) s!10566) lt!335390)))

(declare-fun bs!235374 () Bool)

(assert (= bs!235374 d!278650))

(declare-fun m!1140315 () Bool)

(assert (=> bs!235374 m!1140315))

(assert (=> bs!235374 m!1140281))

(declare-fun m!1140317 () Bool)

(assert (=> bs!235374 m!1140317))

(assert (=> bs!235374 m!1140231))

(assert (=> bs!235374 m!1140233))

(assert (=> bs!235374 m!1140231))

(assert (=> b!904223 d!278650))

(declare-fun d!278652 () Bool)

(assert (=> d!278652 (= (Exists!163 lambda!28413) (choose!5464 lambda!28413))))

(declare-fun bs!235375 () Bool)

(assert (= bs!235375 d!278652))

(declare-fun m!1140319 () Bool)

(assert (=> bs!235375 m!1140319))

(assert (=> b!904223 d!278652))

(declare-fun bs!235376 () Bool)

(declare-fun b!904420 () Bool)

(assert (= bs!235376 (and b!904420 d!278640)))

(declare-fun lambda!28440 () Int)

(assert (=> bs!235376 (not (= lambda!28440 lambda!28427))))

(declare-fun bs!235377 () Bool)

(assert (= bs!235377 (and b!904420 b!904223)))

(assert (=> bs!235377 (not (= lambda!28440 lambda!28414))))

(declare-fun bs!235378 () Bool)

(assert (= bs!235378 (and b!904420 d!278650)))

(assert (=> bs!235378 (not (= lambda!28440 lambda!28431))))

(assert (=> bs!235377 (not (= lambda!28440 lambda!28413))))

(assert (=> bs!235376 (not (= lambda!28440 lambda!28428))))

(assert (=> b!904420 true))

(assert (=> b!904420 true))

(declare-fun bs!235379 () Bool)

(declare-fun b!904411 () Bool)

(assert (= bs!235379 (and b!904411 d!278640)))

(declare-fun lambda!28441 () Int)

(assert (=> bs!235379 (not (= lambda!28441 lambda!28427))))

(declare-fun bs!235380 () Bool)

(assert (= bs!235380 (and b!904411 b!904223)))

(assert (=> bs!235380 (= (= (regOne!5288 r!15766) EmptyExpr!2388) (= lambda!28441 lambda!28414))))

(declare-fun bs!235381 () Bool)

(assert (= bs!235381 (and b!904411 d!278650)))

(assert (=> bs!235381 (not (= lambda!28441 lambda!28431))))

(declare-fun bs!235382 () Bool)

(assert (= bs!235382 (and b!904411 b!904420)))

(assert (=> bs!235382 (not (= lambda!28441 lambda!28440))))

(assert (=> bs!235380 (not (= lambda!28441 lambda!28413))))

(assert (=> bs!235379 (= (= (regOne!5288 r!15766) EmptyExpr!2388) (= lambda!28441 lambda!28428))))

(assert (=> b!904411 true))

(assert (=> b!904411 true))

(declare-fun e!590849 () Bool)

(declare-fun call!54077 () Bool)

(assert (=> b!904411 (= e!590849 call!54077)))

(declare-fun d!278654 () Bool)

(declare-fun c!146508 () Bool)

(assert (=> d!278654 (= c!146508 (is-EmptyExpr!2388 r!15766))))

(declare-fun e!590847 () Bool)

(assert (=> d!278654 (= (matchRSpec!189 r!15766 s!10566) e!590847)))

(declare-fun b!904412 () Bool)

(declare-fun c!146509 () Bool)

(assert (=> b!904412 (= c!146509 (is-ElementMatch!2388 r!15766))))

(declare-fun e!590850 () Bool)

(declare-fun e!590845 () Bool)

(assert (=> b!904412 (= e!590850 e!590845)))

(declare-fun b!904413 () Bool)

(declare-fun call!54076 () Bool)

(assert (=> b!904413 (= e!590847 call!54076)))

(declare-fun b!904414 () Bool)

(declare-fun e!590848 () Bool)

(assert (=> b!904414 (= e!590848 (matchRSpec!189 (regTwo!5289 r!15766) s!10566))))

(declare-fun b!904415 () Bool)

(assert (=> b!904415 (= e!590845 (= s!10566 (Cons!9602 (c!146475 r!15766) Nil!9602)))))

(declare-fun b!904416 () Bool)

(assert (=> b!904416 (= e!590847 e!590850)))

(declare-fun res!411240 () Bool)

(assert (=> b!904416 (= res!411240 (not (is-EmptyLang!2388 r!15766)))))

(assert (=> b!904416 (=> (not res!411240) (not e!590850))))

(declare-fun b!904417 () Bool)

(declare-fun e!590851 () Bool)

(assert (=> b!904417 (= e!590851 e!590849)))

(declare-fun c!146507 () Bool)

(assert (=> b!904417 (= c!146507 (is-Star!2388 r!15766))))

(declare-fun bm!54071 () Bool)

(assert (=> bm!54071 (= call!54076 (isEmpty!5804 s!10566))))

(declare-fun b!904418 () Bool)

(assert (=> b!904418 (= e!590851 e!590848)))

(declare-fun res!411242 () Bool)

(assert (=> b!904418 (= res!411242 (matchRSpec!189 (regOne!5289 r!15766) s!10566))))

(assert (=> b!904418 (=> res!411242 e!590848)))

(declare-fun b!904419 () Bool)

(declare-fun c!146510 () Bool)

(assert (=> b!904419 (= c!146510 (is-Union!2388 r!15766))))

(assert (=> b!904419 (= e!590845 e!590851)))

(declare-fun e!590846 () Bool)

(assert (=> b!904420 (= e!590846 call!54077)))

(declare-fun bm!54072 () Bool)

(assert (=> bm!54072 (= call!54077 (Exists!163 (ite c!146507 lambda!28440 lambda!28441)))))

(declare-fun b!904421 () Bool)

(declare-fun res!411241 () Bool)

(assert (=> b!904421 (=> res!411241 e!590846)))

(assert (=> b!904421 (= res!411241 call!54076)))

(assert (=> b!904421 (= e!590849 e!590846)))

(assert (= (and d!278654 c!146508) b!904413))

(assert (= (and d!278654 (not c!146508)) b!904416))

(assert (= (and b!904416 res!411240) b!904412))

(assert (= (and b!904412 c!146509) b!904415))

(assert (= (and b!904412 (not c!146509)) b!904419))

(assert (= (and b!904419 c!146510) b!904418))

(assert (= (and b!904419 (not c!146510)) b!904417))

(assert (= (and b!904418 (not res!411242)) b!904414))

(assert (= (and b!904417 c!146507) b!904421))

(assert (= (and b!904417 (not c!146507)) b!904411))

(assert (= (and b!904421 (not res!411241)) b!904420))

(assert (= (or b!904420 b!904411) bm!54072))

(assert (= (or b!904413 b!904421) bm!54071))

(declare-fun m!1140321 () Bool)

(assert (=> b!904414 m!1140321))

(assert (=> bm!54071 m!1140243))

(declare-fun m!1140323 () Bool)

(assert (=> b!904418 m!1140323))

(declare-fun m!1140325 () Bool)

(assert (=> bm!54072 m!1140325))

(assert (=> b!904218 d!278654))

(declare-fun bm!54079 () Bool)

(declare-fun call!54084 () Bool)

(assert (=> bm!54079 (= call!54084 (isEmpty!5804 s!10566))))

(declare-fun b!904461 () Bool)

(declare-fun res!411268 () Bool)

(declare-fun e!590877 () Bool)

(assert (=> b!904461 (=> (not res!411268) (not e!590877))))

(assert (=> b!904461 (= res!411268 (not call!54084))))

(declare-fun b!904462 () Bool)

(declare-fun e!590876 () Bool)

(declare-fun e!590873 () Bool)

(assert (=> b!904462 (= e!590876 e!590873)))

(declare-fun res!411262 () Bool)

(assert (=> b!904462 (=> (not res!411262) (not e!590873))))

(declare-fun lt!335393 () Bool)

(assert (=> b!904462 (= res!411262 (not lt!335393))))

(declare-fun b!904463 () Bool)

(declare-fun e!590874 () Bool)

(declare-fun head!1603 (List!9618) C!5346)

(assert (=> b!904463 (= e!590874 (not (= (head!1603 s!10566) (c!146475 r!15766))))))

(declare-fun b!904464 () Bool)

(declare-fun e!590875 () Bool)

(assert (=> b!904464 (= e!590875 (= lt!335393 call!54084))))

(declare-fun d!278656 () Bool)

(assert (=> d!278656 e!590875))

(declare-fun c!146523 () Bool)

(assert (=> d!278656 (= c!146523 (is-EmptyExpr!2388 r!15766))))

(declare-fun e!590879 () Bool)

(assert (=> d!278656 (= lt!335393 e!590879)))

(declare-fun c!146521 () Bool)

(assert (=> d!278656 (= c!146521 (isEmpty!5804 s!10566))))

(assert (=> d!278656 (validRegex!857 r!15766)))

(assert (=> d!278656 (= (matchR!926 r!15766 s!10566) lt!335393)))

(declare-fun b!904465 () Bool)

(declare-fun res!411267 () Bool)

(assert (=> b!904465 (=> res!411267 e!590876)))

(assert (=> b!904465 (= res!411267 e!590877)))

(declare-fun res!411263 () Bool)

(assert (=> b!904465 (=> (not res!411263) (not e!590877))))

(assert (=> b!904465 (= res!411263 lt!335393)))

(declare-fun b!904466 () Bool)

(declare-fun res!411264 () Bool)

(assert (=> b!904466 (=> (not res!411264) (not e!590877))))

(declare-fun tail!1165 (List!9618) List!9618)

(assert (=> b!904466 (= res!411264 (isEmpty!5804 (tail!1165 s!10566)))))

(declare-fun b!904467 () Bool)

(declare-fun res!411265 () Bool)

(assert (=> b!904467 (=> res!411265 e!590874)))

(assert (=> b!904467 (= res!411265 (not (isEmpty!5804 (tail!1165 s!10566))))))

(declare-fun b!904468 () Bool)

(assert (=> b!904468 (= e!590873 e!590874)))

(declare-fun res!411266 () Bool)

(assert (=> b!904468 (=> res!411266 e!590874)))

(assert (=> b!904468 (= res!411266 call!54084)))

(declare-fun b!904469 () Bool)

(declare-fun res!411269 () Bool)

(assert (=> b!904469 (=> res!411269 e!590876)))

(assert (=> b!904469 (= res!411269 (not (is-ElementMatch!2388 r!15766)))))

(declare-fun e!590878 () Bool)

(assert (=> b!904469 (= e!590878 e!590876)))

(declare-fun b!904470 () Bool)

(assert (=> b!904470 (= e!590877 (= (head!1603 s!10566) (c!146475 r!15766)))))

(declare-fun b!904471 () Bool)

(assert (=> b!904471 (= e!590878 (not lt!335393))))

(declare-fun b!904472 () Bool)

(declare-fun nullable!638 (Regex!2388) Bool)

(assert (=> b!904472 (= e!590879 (nullable!638 r!15766))))

(declare-fun b!904473 () Bool)

(assert (=> b!904473 (= e!590875 e!590878)))

(declare-fun c!146522 () Bool)

(assert (=> b!904473 (= c!146522 (is-EmptyLang!2388 r!15766))))

(declare-fun b!904474 () Bool)

(declare-fun derivativeStep!450 (Regex!2388 C!5346) Regex!2388)

(assert (=> b!904474 (= e!590879 (matchR!926 (derivativeStep!450 r!15766 (head!1603 s!10566)) (tail!1165 s!10566)))))

(assert (= (and d!278656 c!146521) b!904472))

(assert (= (and d!278656 (not c!146521)) b!904474))

(assert (= (and d!278656 c!146523) b!904464))

(assert (= (and d!278656 (not c!146523)) b!904473))

(assert (= (and b!904473 c!146522) b!904471))

(assert (= (and b!904473 (not c!146522)) b!904469))

(assert (= (and b!904469 (not res!411269)) b!904465))

(assert (= (and b!904465 res!411263) b!904461))

(assert (= (and b!904461 res!411268) b!904466))

(assert (= (and b!904466 res!411264) b!904470))

(assert (= (and b!904465 (not res!411267)) b!904462))

(assert (= (and b!904462 res!411262) b!904468))

(assert (= (and b!904468 (not res!411266)) b!904467))

(assert (= (and b!904467 (not res!411265)) b!904463))

(assert (= (or b!904464 b!904461 b!904468) bm!54079))

(declare-fun m!1140333 () Bool)

(assert (=> b!904467 m!1140333))

(assert (=> b!904467 m!1140333))

(declare-fun m!1140335 () Bool)

(assert (=> b!904467 m!1140335))

(assert (=> b!904466 m!1140333))

(assert (=> b!904466 m!1140333))

(assert (=> b!904466 m!1140335))

(declare-fun m!1140337 () Bool)

(assert (=> b!904474 m!1140337))

(assert (=> b!904474 m!1140337))

(declare-fun m!1140339 () Bool)

(assert (=> b!904474 m!1140339))

(assert (=> b!904474 m!1140333))

(assert (=> b!904474 m!1140339))

(assert (=> b!904474 m!1140333))

(declare-fun m!1140341 () Bool)

(assert (=> b!904474 m!1140341))

(assert (=> b!904463 m!1140337))

(assert (=> d!278656 m!1140243))

(assert (=> d!278656 m!1140229))

(assert (=> b!904470 m!1140337))

(assert (=> bm!54079 m!1140243))

(declare-fun m!1140343 () Bool)

(assert (=> b!904472 m!1140343))

(assert (=> b!904218 d!278656))

(declare-fun d!278660 () Bool)

(assert (=> d!278660 (= (matchR!926 r!15766 s!10566) (matchRSpec!189 r!15766 s!10566))))

(declare-fun lt!335396 () Unit!14395)

(declare-fun choose!5466 (Regex!2388 List!9618) Unit!14395)

(assert (=> d!278660 (= lt!335396 (choose!5466 r!15766 s!10566))))

(assert (=> d!278660 (validRegex!857 r!15766)))

(assert (=> d!278660 (= (mainMatchTheorem!189 r!15766 s!10566) lt!335396)))

(declare-fun bs!235386 () Bool)

(assert (= bs!235386 d!278660))

(assert (=> bs!235386 m!1140225))

(assert (=> bs!235386 m!1140223))

(declare-fun m!1140345 () Bool)

(assert (=> bs!235386 m!1140345))

(assert (=> bs!235386 m!1140229))

(assert (=> b!904218 d!278660))

(declare-fun b!904493 () Bool)

(declare-fun res!411283 () Bool)

(declare-fun e!590895 () Bool)

(assert (=> b!904493 (=> res!411283 e!590895)))

(assert (=> b!904493 (= res!411283 (not (is-Concat!4221 r!15766)))))

(declare-fun e!590900 () Bool)

(assert (=> b!904493 (= e!590900 e!590895)))

(declare-fun b!904494 () Bool)

(declare-fun res!411280 () Bool)

(declare-fun e!590894 () Bool)

(assert (=> b!904494 (=> (not res!411280) (not e!590894))))

(declare-fun call!54093 () Bool)

(assert (=> b!904494 (= res!411280 call!54093)))

(assert (=> b!904494 (= e!590900 e!590894)))

(declare-fun b!904495 () Bool)

(declare-fun e!590896 () Bool)

(declare-fun call!54091 () Bool)

(assert (=> b!904495 (= e!590896 call!54091)))

(declare-fun d!278662 () Bool)

(declare-fun res!411281 () Bool)

(declare-fun e!590899 () Bool)

(assert (=> d!278662 (=> res!411281 e!590899)))

(assert (=> d!278662 (= res!411281 (is-ElementMatch!2388 r!15766))))

(assert (=> d!278662 (= (validRegex!857 r!15766) e!590899)))

(declare-fun b!904496 () Bool)

(declare-fun e!590898 () Bool)

(assert (=> b!904496 (= e!590898 e!590900)))

(declare-fun c!146528 () Bool)

(assert (=> b!904496 (= c!146528 (is-Union!2388 r!15766))))

(declare-fun b!904497 () Bool)

(declare-fun e!590897 () Bool)

(assert (=> b!904497 (= e!590895 e!590897)))

(declare-fun res!411282 () Bool)

(assert (=> b!904497 (=> (not res!411282) (not e!590897))))

(assert (=> b!904497 (= res!411282 call!54093)))

(declare-fun bm!54086 () Bool)

(assert (=> bm!54086 (= call!54093 call!54091)))

(declare-fun b!904498 () Bool)

(assert (=> b!904498 (= e!590898 e!590896)))

(declare-fun res!411284 () Bool)

(assert (=> b!904498 (= res!411284 (not (nullable!638 (reg!2717 r!15766))))))

(assert (=> b!904498 (=> (not res!411284) (not e!590896))))

(declare-fun bm!54087 () Bool)

(declare-fun call!54092 () Bool)

(assert (=> bm!54087 (= call!54092 (validRegex!857 (ite c!146528 (regTwo!5289 r!15766) (regTwo!5288 r!15766))))))

(declare-fun b!904499 () Bool)

(assert (=> b!904499 (= e!590899 e!590898)))

(declare-fun c!146529 () Bool)

(assert (=> b!904499 (= c!146529 (is-Star!2388 r!15766))))

(declare-fun b!904500 () Bool)

(assert (=> b!904500 (= e!590894 call!54092)))

(declare-fun bm!54088 () Bool)

(assert (=> bm!54088 (= call!54091 (validRegex!857 (ite c!146529 (reg!2717 r!15766) (ite c!146528 (regOne!5289 r!15766) (regOne!5288 r!15766)))))))

(declare-fun b!904501 () Bool)

(assert (=> b!904501 (= e!590897 call!54092)))

(assert (= (and d!278662 (not res!411281)) b!904499))

(assert (= (and b!904499 c!146529) b!904498))

(assert (= (and b!904499 (not c!146529)) b!904496))

(assert (= (and b!904498 res!411284) b!904495))

(assert (= (and b!904496 c!146528) b!904494))

(assert (= (and b!904496 (not c!146528)) b!904493))

(assert (= (and b!904494 res!411280) b!904500))

(assert (= (and b!904493 (not res!411283)) b!904497))

(assert (= (and b!904497 res!411282) b!904501))

(assert (= (or b!904500 b!904501) bm!54087))

(assert (= (or b!904494 b!904497) bm!54086))

(assert (= (or b!904495 bm!54086) bm!54088))

(declare-fun m!1140347 () Bool)

(assert (=> b!904498 m!1140347))

(declare-fun m!1140349 () Bool)

(assert (=> bm!54087 m!1140349))

(declare-fun m!1140351 () Bool)

(assert (=> bm!54088 m!1140351))

(assert (=> start!81320 d!278662))

(declare-fun b!904502 () Bool)

(declare-fun res!411288 () Bool)

(declare-fun e!590902 () Bool)

(assert (=> b!904502 (=> res!411288 e!590902)))

(assert (=> b!904502 (= res!411288 (not (is-Concat!4221 (regTwo!5288 r!15766))))))

(declare-fun e!590907 () Bool)

(assert (=> b!904502 (= e!590907 e!590902)))

(declare-fun b!904503 () Bool)

(declare-fun res!411285 () Bool)

(declare-fun e!590901 () Bool)

(assert (=> b!904503 (=> (not res!411285) (not e!590901))))

(declare-fun call!54096 () Bool)

(assert (=> b!904503 (= res!411285 call!54096)))

(assert (=> b!904503 (= e!590907 e!590901)))

(declare-fun b!904504 () Bool)

(declare-fun e!590903 () Bool)

(declare-fun call!54094 () Bool)

(assert (=> b!904504 (= e!590903 call!54094)))

(declare-fun d!278664 () Bool)

(declare-fun res!411286 () Bool)

(declare-fun e!590906 () Bool)

(assert (=> d!278664 (=> res!411286 e!590906)))

(assert (=> d!278664 (= res!411286 (is-ElementMatch!2388 (regTwo!5288 r!15766)))))

(assert (=> d!278664 (= (validRegex!857 (regTwo!5288 r!15766)) e!590906)))

(declare-fun b!904505 () Bool)

(declare-fun e!590905 () Bool)

(assert (=> b!904505 (= e!590905 e!590907)))

(declare-fun c!146530 () Bool)

(assert (=> b!904505 (= c!146530 (is-Union!2388 (regTwo!5288 r!15766)))))

(declare-fun b!904506 () Bool)

(declare-fun e!590904 () Bool)

(assert (=> b!904506 (= e!590902 e!590904)))

(declare-fun res!411287 () Bool)

(assert (=> b!904506 (=> (not res!411287) (not e!590904))))

(assert (=> b!904506 (= res!411287 call!54096)))

(declare-fun bm!54089 () Bool)

(assert (=> bm!54089 (= call!54096 call!54094)))

(declare-fun b!904507 () Bool)

(assert (=> b!904507 (= e!590905 e!590903)))

(declare-fun res!411289 () Bool)

(assert (=> b!904507 (= res!411289 (not (nullable!638 (reg!2717 (regTwo!5288 r!15766)))))))

(assert (=> b!904507 (=> (not res!411289) (not e!590903))))

(declare-fun bm!54090 () Bool)

(declare-fun call!54095 () Bool)

(assert (=> bm!54090 (= call!54095 (validRegex!857 (ite c!146530 (regTwo!5289 (regTwo!5288 r!15766)) (regTwo!5288 (regTwo!5288 r!15766)))))))

(declare-fun b!904508 () Bool)

(assert (=> b!904508 (= e!590906 e!590905)))

(declare-fun c!146531 () Bool)

(assert (=> b!904508 (= c!146531 (is-Star!2388 (regTwo!5288 r!15766)))))

(declare-fun b!904509 () Bool)

(assert (=> b!904509 (= e!590901 call!54095)))

(declare-fun bm!54091 () Bool)

(assert (=> bm!54091 (= call!54094 (validRegex!857 (ite c!146531 (reg!2717 (regTwo!5288 r!15766)) (ite c!146530 (regOne!5289 (regTwo!5288 r!15766)) (regOne!5288 (regTwo!5288 r!15766))))))))

(declare-fun b!904510 () Bool)

(assert (=> b!904510 (= e!590904 call!54095)))

(assert (= (and d!278664 (not res!411286)) b!904508))

(assert (= (and b!904508 c!146531) b!904507))

(assert (= (and b!904508 (not c!146531)) b!904505))

(assert (= (and b!904507 res!411289) b!904504))

(assert (= (and b!904505 c!146530) b!904503))

(assert (= (and b!904505 (not c!146530)) b!904502))

(assert (= (and b!904503 res!411285) b!904509))

(assert (= (and b!904502 (not res!411288)) b!904506))

(assert (= (and b!904506 res!411287) b!904510))

(assert (= (or b!904509 b!904510) bm!54090))

(assert (= (or b!904503 b!904506) bm!54089))

(assert (= (or b!904504 bm!54089) bm!54091))

(declare-fun m!1140353 () Bool)

(assert (=> b!904507 m!1140353))

(declare-fun m!1140355 () Bool)

(assert (=> bm!54090 m!1140355))

(declare-fun m!1140357 () Bool)

(assert (=> bm!54091 m!1140357))

(assert (=> b!904217 d!278664))

(declare-fun e!590912 () Bool)

(assert (=> b!904219 (= tp!283320 e!590912)))

(declare-fun b!904527 () Bool)

(declare-fun tp!283351 () Bool)

(assert (=> b!904527 (= e!590912 tp!283351)))

(declare-fun b!904526 () Bool)

(declare-fun tp!283353 () Bool)

(declare-fun tp!283355 () Bool)

(assert (=> b!904526 (= e!590912 (and tp!283353 tp!283355))))

(declare-fun b!904528 () Bool)

(declare-fun tp!283352 () Bool)

(declare-fun tp!283354 () Bool)

(assert (=> b!904528 (= e!590912 (and tp!283352 tp!283354))))

(declare-fun b!904525 () Bool)

(assert (=> b!904525 (= e!590912 tp_is_empty!4419)))

(assert (= (and b!904219 (is-ElementMatch!2388 (regOne!5288 r!15766))) b!904525))

(assert (= (and b!904219 (is-Concat!4221 (regOne!5288 r!15766))) b!904526))

(assert (= (and b!904219 (is-Star!2388 (regOne!5288 r!15766))) b!904527))

(assert (= (and b!904219 (is-Union!2388 (regOne!5288 r!15766))) b!904528))

(declare-fun e!590913 () Bool)

(assert (=> b!904219 (= tp!283322 e!590913)))

(declare-fun b!904531 () Bool)

(declare-fun tp!283356 () Bool)

(assert (=> b!904531 (= e!590913 tp!283356)))

(declare-fun b!904530 () Bool)

(declare-fun tp!283358 () Bool)

(declare-fun tp!283360 () Bool)

(assert (=> b!904530 (= e!590913 (and tp!283358 tp!283360))))

(declare-fun b!904532 () Bool)

(declare-fun tp!283357 () Bool)

(declare-fun tp!283359 () Bool)

(assert (=> b!904532 (= e!590913 (and tp!283357 tp!283359))))

(declare-fun b!904529 () Bool)

(assert (=> b!904529 (= e!590913 tp_is_empty!4419)))

(assert (= (and b!904219 (is-ElementMatch!2388 (regTwo!5288 r!15766))) b!904529))

(assert (= (and b!904219 (is-Concat!4221 (regTwo!5288 r!15766))) b!904530))

(assert (= (and b!904219 (is-Star!2388 (regTwo!5288 r!15766))) b!904531))

(assert (= (and b!904219 (is-Union!2388 (regTwo!5288 r!15766))) b!904532))

(declare-fun e!590914 () Bool)

(assert (=> b!904224 (= tp!283319 e!590914)))

(declare-fun b!904535 () Bool)

(declare-fun tp!283361 () Bool)

(assert (=> b!904535 (= e!590914 tp!283361)))

(declare-fun b!904534 () Bool)

(declare-fun tp!283363 () Bool)

(declare-fun tp!283365 () Bool)

(assert (=> b!904534 (= e!590914 (and tp!283363 tp!283365))))

(declare-fun b!904536 () Bool)

(declare-fun tp!283362 () Bool)

(declare-fun tp!283364 () Bool)

(assert (=> b!904536 (= e!590914 (and tp!283362 tp!283364))))

(declare-fun b!904533 () Bool)

(assert (=> b!904533 (= e!590914 tp_is_empty!4419)))

(assert (= (and b!904224 (is-ElementMatch!2388 (regOne!5289 r!15766))) b!904533))

(assert (= (and b!904224 (is-Concat!4221 (regOne!5289 r!15766))) b!904534))

(assert (= (and b!904224 (is-Star!2388 (regOne!5289 r!15766))) b!904535))

(assert (= (and b!904224 (is-Union!2388 (regOne!5289 r!15766))) b!904536))

(declare-fun e!590915 () Bool)

(assert (=> b!904224 (= tp!283318 e!590915)))

(declare-fun b!904541 () Bool)

(declare-fun tp!283366 () Bool)

(assert (=> b!904541 (= e!590915 tp!283366)))

(declare-fun b!904540 () Bool)

(declare-fun tp!283368 () Bool)

(declare-fun tp!283370 () Bool)

(assert (=> b!904540 (= e!590915 (and tp!283368 tp!283370))))

(declare-fun b!904542 () Bool)

(declare-fun tp!283367 () Bool)

(declare-fun tp!283369 () Bool)

(assert (=> b!904542 (= e!590915 (and tp!283367 tp!283369))))

(declare-fun b!904539 () Bool)

(assert (=> b!904539 (= e!590915 tp_is_empty!4419)))

(assert (= (and b!904224 (is-ElementMatch!2388 (regTwo!5289 r!15766))) b!904539))

(assert (= (and b!904224 (is-Concat!4221 (regTwo!5289 r!15766))) b!904540))

(assert (= (and b!904224 (is-Star!2388 (regTwo!5289 r!15766))) b!904541))

(assert (= (and b!904224 (is-Union!2388 (regTwo!5289 r!15766))) b!904542))

(declare-fun b!904553 () Bool)

(declare-fun e!590924 () Bool)

(declare-fun tp!283373 () Bool)

(assert (=> b!904553 (= e!590924 (and tp_is_empty!4419 tp!283373))))

(assert (=> b!904216 (= tp!283317 e!590924)))

(assert (= (and b!904216 (is-Cons!9602 (t!100664 s!10566))) b!904553))

(declare-fun e!590925 () Bool)

(assert (=> b!904221 (= tp!283321 e!590925)))

(declare-fun b!904558 () Bool)

(declare-fun tp!283374 () Bool)

(assert (=> b!904558 (= e!590925 tp!283374)))

(declare-fun b!904557 () Bool)

(declare-fun tp!283376 () Bool)

(declare-fun tp!283378 () Bool)

(assert (=> b!904557 (= e!590925 (and tp!283376 tp!283378))))

(declare-fun b!904559 () Bool)

(declare-fun tp!283375 () Bool)

(declare-fun tp!283377 () Bool)

(assert (=> b!904559 (= e!590925 (and tp!283375 tp!283377))))

(declare-fun b!904556 () Bool)

(assert (=> b!904556 (= e!590925 tp_is_empty!4419)))

(assert (= (and b!904221 (is-ElementMatch!2388 (reg!2717 r!15766))) b!904556))

(assert (= (and b!904221 (is-Concat!4221 (reg!2717 r!15766))) b!904557))

(assert (= (and b!904221 (is-Star!2388 (reg!2717 r!15766))) b!904558))

(assert (= (and b!904221 (is-Union!2388 (reg!2717 r!15766))) b!904559))

(push 1)

(assert (not bm!54071))

(assert (not d!278640))

(assert (not d!278650))

(assert (not b!904541))

(assert (not b!904498))

(assert (not b!904474))

(assert (not d!278646))

(assert (not b!904557))

(assert (not b!904542))

(assert (not b!904528))

(assert (not b!904535))

(assert (not b!904302))

(assert (not bm!54087))

(assert (not b!904532))

(assert (not b!904558))

(assert (not bm!54079))

(assert (not b!904527))

(assert (not bm!54090))

(assert (not d!278652))

(assert (not d!278648))

(assert (not b!904467))

(assert (not b!904472))

(assert (not b!904297))

(assert (not b!904304))

(assert (not b!904526))

(assert (not b!904414))

(assert (not d!278656))

(assert (not b!904466))

(assert (not b!904507))

(assert (not b!904463))

(assert (not bm!54072))

(assert (not b!904531))

(assert (not b!904303))

(assert (not b!904553))

(assert tp_is_empty!4419)

(assert (not b!904298))

(assert (not bm!54091))

(assert (not d!278660))

(assert (not b!904470))

(assert (not bm!54088))

(assert (not b!904540))

(assert (not d!278636))

(assert (not b!904536))

(assert (not b!904418))

(assert (not b!904559))

(assert (not b!904530))

(assert (not b!904534))

(assert (not b!904296))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

