; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237458 () Bool)

(assert start!237458)

(declare-fun b!2424297 () Bool)

(declare-fun res!1029629 () Bool)

(declare-fun e!1542127 () Bool)

(assert (=> b!2424297 (=> (not res!1029629) (not e!1542127))))

(declare-datatypes ((C!14406 0))(
  ( (C!14407 (val!8445 Int)) )
))
(declare-datatypes ((Regex!7124 0))(
  ( (ElementMatch!7124 (c!386601 C!14406)) (Concat!11760 (regOne!14760 Regex!7124) (regTwo!14760 Regex!7124)) (EmptyExpr!7124) (Star!7124 (reg!7453 Regex!7124)) (EmptyLang!7124) (Union!7124 (regOne!14761 Regex!7124) (regTwo!14761 Regex!7124)) )
))
(declare-fun r!13927 () Regex!7124)

(declare-datatypes ((List!28486 0))(
  ( (Nil!28388) (Cons!28388 (h!33789 Regex!7124) (t!208463 List!28486)) )
))
(declare-fun l!9164 () List!28486)

(declare-fun generalisedConcat!225 (List!28486) Regex!7124)

(assert (=> b!2424297 (= res!1029629 (= r!13927 (generalisedConcat!225 l!9164)))))

(declare-datatypes ((List!28487 0))(
  ( (Nil!28389) (Cons!28389 (h!33790 C!14406) (t!208464 List!28487)) )
))
(declare-datatypes ((tuple2!28028 0))(
  ( (tuple2!28029 (_1!16555 List!28487) (_2!16555 List!28487)) )
))
(declare-datatypes ((Option!5625 0))(
  ( (None!5624) (Some!5624 (v!31032 tuple2!28028)) )
))
(declare-fun call!148264 () Option!5625)

(declare-fun bm!148254 () Bool)

(declare-fun call!148259 () Option!5625)

(declare-fun call!148261 () Bool)

(declare-fun c!386599 () Bool)

(declare-fun isDefined!4451 (Option!5625) Bool)

(assert (=> bm!148254 (= call!148261 (isDefined!4451 (ite c!386599 call!148259 call!148264)))))

(declare-fun call!148263 () List!28487)

(declare-fun s!9460 () List!28487)

(declare-fun lt!875948 () tuple2!28028)

(declare-fun bm!148255 () Bool)

(declare-fun ++!7045 (List!28487 List!28487) List!28487)

(assert (=> bm!148255 (= call!148263 (++!7045 (ite c!386599 s!9460 (_1!16555 lt!875948)) (ite c!386599 Nil!28389 (_2!16555 lt!875948))))))

(declare-fun b!2424298 () Bool)

(declare-fun e!1542135 () Bool)

(assert (=> b!2424298 (= e!1542135 (not call!148261))))

(declare-fun b!2424299 () Bool)

(declare-fun e!1542130 () Bool)

(declare-fun lt!875936 () Bool)

(declare-fun isEmpty!16418 (List!28487) Bool)

(assert (=> b!2424299 (= e!1542130 (not (= lt!875936 (isEmpty!16418 s!9460))))))

(declare-fun b!2424300 () Bool)

(declare-fun e!1542136 () Bool)

(declare-fun tp_is_empty!11661 () Bool)

(declare-fun tp!770047 () Bool)

(assert (=> b!2424300 (= e!1542136 (and tp_is_empty!11661 tp!770047))))

(declare-fun b!2424301 () Bool)

(declare-fun findConcatSeparation!733 (Regex!7124 Regex!7124 List!28487 List!28487 List!28487) Option!5625)

(assert (=> b!2424301 (= e!1542130 (not (= lt!875936 (isDefined!4451 (findConcatSeparation!733 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164)) Nil!28389 s!9460 s!9460)))))))

(declare-fun b!2424302 () Bool)

(declare-fun e!1542133 () Bool)

(declare-fun tp!770045 () Bool)

(assert (=> b!2424302 (= e!1542133 tp!770045)))

(declare-fun res!1029625 () Bool)

(assert (=> start!237458 (=> (not res!1029625) (not e!1542127))))

(declare-fun lambda!91310 () Int)

(declare-fun forall!5758 (List!28486 Int) Bool)

(assert (=> start!237458 (= res!1029625 (forall!5758 l!9164 lambda!91310))))

(assert (=> start!237458 e!1542127))

(declare-fun e!1542125 () Bool)

(assert (=> start!237458 e!1542125))

(assert (=> start!237458 e!1542133))

(assert (=> start!237458 e!1542136))

(declare-fun b!2424303 () Bool)

(declare-fun e!1542131 () Bool)

(assert (=> b!2424303 e!1542131))

(declare-fun res!1029627 () Bool)

(assert (=> b!2424303 (=> (not res!1029627) (not e!1542131))))

(declare-fun call!148260 () Bool)

(assert (=> b!2424303 (= res!1029627 call!148260)))

(declare-fun lt!875944 () Regex!7124)

(declare-datatypes ((Unit!41603 0))(
  ( (Unit!41604) )
))
(declare-fun lt!875940 () Unit!41603)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!73 (Regex!7124 Regex!7124 List!28487 List!28487 List!28487) Unit!41603)

(assert (=> b!2424303 (= lt!875940 (lemmaFindSeparationIsDefinedThenConcatMatches!73 lt!875944 EmptyExpr!7124 (_1!16555 lt!875948) (_2!16555 lt!875948) s!9460))))

(declare-fun lt!875937 () Option!5625)

(declare-fun get!8739 (Option!5625) tuple2!28028)

(assert (=> b!2424303 (= lt!875948 (get!8739 lt!875937))))

(declare-fun e!1542137 () Unit!41603)

(declare-fun Unit!41605 () Unit!41603)

(assert (=> b!2424303 (= e!1542137 Unit!41605)))

(declare-fun b!2424304 () Bool)

(declare-fun e!1542123 () Bool)

(declare-fun e!1542126 () Bool)

(assert (=> b!2424304 (= e!1542123 e!1542126)))

(declare-fun res!1029622 () Bool)

(assert (=> b!2424304 (=> res!1029622 e!1542126)))

(assert (=> b!2424304 (= res!1029622 e!1542130)))

(declare-fun c!386598 () Bool)

(assert (=> b!2424304 (= c!386598 (is-Cons!28388 l!9164))))

(declare-fun lt!875939 () Unit!41603)

(declare-fun e!1542128 () Unit!41603)

(assert (=> b!2424304 (= lt!875939 e!1542128)))

(declare-fun matchR!3241 (Regex!7124 List!28487) Bool)

(assert (=> b!2424304 (= c!386599 (matchR!3241 lt!875944 s!9460))))

(declare-fun head!5460 (List!28486) Regex!7124)

(assert (=> b!2424304 (= lt!875944 (head!5460 l!9164))))

(declare-fun b!2424305 () Bool)

(declare-fun e!1542129 () Bool)

(assert (=> b!2424305 (= e!1542129 call!148260)))

(declare-fun b!2424306 () Bool)

(assert (=> b!2424306 (= e!1542133 tp_is_empty!11661)))

(declare-fun lt!875949 () Regex!7124)

(declare-fun bm!148256 () Bool)

(assert (=> bm!148256 (= call!148264 (findConcatSeparation!733 lt!875944 (ite c!386599 EmptyExpr!7124 lt!875949) Nil!28389 s!9460 s!9460))))

(declare-fun b!2424307 () Bool)

(assert (=> b!2424307 (= e!1542131 false)))

(declare-fun b!2424308 () Bool)

(declare-fun e!1542124 () Bool)

(assert (=> b!2424308 (= e!1542124 call!148261)))

(declare-fun b!2424309 () Bool)

(declare-fun res!1029619 () Bool)

(assert (=> b!2424309 (=> res!1029619 e!1542126)))

(assert (=> b!2424309 (= res!1029619 (not (is-Cons!28388 l!9164)))))

(declare-fun b!2424310 () Bool)

(declare-fun Unit!41606 () Unit!41603)

(assert (=> b!2424310 (= e!1542128 Unit!41606)))

(declare-fun lt!875945 () Unit!41603)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!99 (Regex!7124 Regex!7124 List!28487 List!28487) Unit!41603)

(assert (=> b!2424310 (= lt!875945 (lemmaTwoRegexMatchThenConcatMatchesConcatString!99 lt!875944 EmptyExpr!7124 s!9460 Nil!28389))))

(declare-fun lt!875947 () Regex!7124)

(assert (=> b!2424310 (= lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124))))

(declare-fun res!1029623 () Bool)

(assert (=> b!2424310 (= res!1029623 (matchR!3241 lt!875947 call!148263))))

(assert (=> b!2424310 (=> (not res!1029623) (not e!1542129))))

(assert (=> b!2424310 e!1542129))

(declare-fun lt!875943 () Unit!41603)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!73 (Regex!7124 Regex!7124 List!28487) Unit!41603)

(assert (=> b!2424310 (= lt!875943 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!73 lt!875944 EmptyExpr!7124 s!9460))))

(declare-fun res!1029630 () Bool)

(declare-fun call!148262 () Bool)

(assert (=> b!2424310 (= res!1029630 call!148262)))

(assert (=> b!2424310 (=> (not res!1029630) (not e!1542124))))

(assert (=> b!2424310 e!1542124))

(declare-fun b!2424311 () Bool)

(declare-fun res!1029628 () Bool)

(declare-fun e!1542134 () Bool)

(assert (=> b!2424311 (=> res!1029628 e!1542134)))

(declare-fun isEmpty!16419 (List!28486) Bool)

(assert (=> b!2424311 (= res!1029628 (isEmpty!16419 l!9164))))

(declare-fun bm!148257 () Bool)

(assert (=> bm!148257 (= call!148259 (findConcatSeparation!733 lt!875944 (ite c!386599 lt!875949 EmptyExpr!7124) Nil!28389 s!9460 s!9460))))

(declare-fun b!2424312 () Bool)

(declare-fun e!1542132 () Bool)

(assert (=> b!2424312 (= e!1542134 e!1542132)))

(declare-fun res!1029626 () Bool)

(assert (=> b!2424312 (=> res!1029626 e!1542132)))

(declare-fun lt!875946 () List!28486)

(assert (=> b!2424312 (= res!1029626 (not (isEmpty!16419 lt!875946)))))

(declare-fun tail!3732 (List!28486) List!28486)

(assert (=> b!2424312 (= lt!875946 (tail!3732 l!9164))))

(declare-fun b!2424313 () Bool)

(declare-fun Unit!41607 () Unit!41603)

(assert (=> b!2424313 (= e!1542137 Unit!41607)))

(declare-fun bm!148258 () Bool)

(assert (=> bm!148258 (= call!148262 (isDefined!4451 (ite c!386599 call!148264 lt!875937)))))

(declare-fun b!2424314 () Bool)

(declare-fun Unit!41608 () Unit!41603)

(assert (=> b!2424314 (= e!1542128 Unit!41608)))

(assert (=> b!2424314 (= lt!875937 call!148259)))

(declare-fun lt!875935 () Bool)

(assert (=> b!2424314 (= lt!875935 call!148262)))

(declare-fun c!386600 () Bool)

(assert (=> b!2424314 (= c!386600 lt!875935)))

(declare-fun lt!875938 () Unit!41603)

(assert (=> b!2424314 (= lt!875938 e!1542137)))

(declare-fun res!1029620 () Bool)

(assert (=> b!2424314 (= res!1029620 (not lt!875935))))

(assert (=> b!2424314 (=> (not res!1029620) (not e!1542135))))

(assert (=> b!2424314 e!1542135))

(declare-fun b!2424315 () Bool)

(declare-fun tp!770043 () Bool)

(declare-fun tp!770042 () Bool)

(assert (=> b!2424315 (= e!1542133 (and tp!770043 tp!770042))))

(declare-fun b!2424316 () Bool)

(declare-fun tp!770048 () Bool)

(declare-fun tp!770049 () Bool)

(assert (=> b!2424316 (= e!1542133 (and tp!770048 tp!770049))))

(declare-fun bm!148259 () Bool)

(assert (=> bm!148259 (= call!148260 (matchR!3241 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)) (ite c!386599 s!9460 call!148263)))))

(declare-fun b!2424317 () Bool)

(assert (=> b!2424317 (= e!1542132 e!1542123)))

(declare-fun res!1029624 () Bool)

(assert (=> b!2424317 (=> res!1029624 e!1542123)))

(assert (=> b!2424317 (= res!1029624 (not (= lt!875949 EmptyExpr!7124)))))

(assert (=> b!2424317 (= lt!875949 (generalisedConcat!225 lt!875946))))

(declare-fun b!2424318 () Bool)

(declare-fun validRegex!2844 (Regex!7124) Bool)

(assert (=> b!2424318 (= e!1542126 (validRegex!2844 (h!33789 l!9164)))))

(declare-fun lt!875941 () Regex!7124)

(assert (=> b!2424318 (= lt!875941 (generalisedConcat!225 (t!208463 l!9164)))))

(declare-fun b!2424319 () Bool)

(declare-fun tp!770044 () Bool)

(declare-fun tp!770046 () Bool)

(assert (=> b!2424319 (= e!1542125 (and tp!770044 tp!770046))))

(declare-fun b!2424320 () Bool)

(assert (=> b!2424320 (= e!1542127 (not e!1542134))))

(declare-fun res!1029621 () Bool)

(assert (=> b!2424320 (=> res!1029621 e!1542134)))

(assert (=> b!2424320 (= res!1029621 (or (is-Concat!11760 r!13927) (is-EmptyExpr!7124 r!13927)))))

(declare-fun matchRSpec!973 (Regex!7124 List!28487) Bool)

(assert (=> b!2424320 (= lt!875936 (matchRSpec!973 r!13927 s!9460))))

(assert (=> b!2424320 (= lt!875936 (matchR!3241 r!13927 s!9460))))

(declare-fun lt!875942 () Unit!41603)

(declare-fun mainMatchTheorem!973 (Regex!7124 List!28487) Unit!41603)

(assert (=> b!2424320 (= lt!875942 (mainMatchTheorem!973 r!13927 s!9460))))

(assert (= (and start!237458 res!1029625) b!2424297))

(assert (= (and b!2424297 res!1029629) b!2424320))

(assert (= (and b!2424320 (not res!1029621)) b!2424311))

(assert (= (and b!2424311 (not res!1029628)) b!2424312))

(assert (= (and b!2424312 (not res!1029626)) b!2424317))

(assert (= (and b!2424317 (not res!1029624)) b!2424304))

(assert (= (and b!2424304 c!386599) b!2424310))

(assert (= (and b!2424304 (not c!386599)) b!2424314))

(assert (= (and b!2424310 res!1029623) b!2424305))

(assert (= (and b!2424310 res!1029630) b!2424308))

(assert (= (and b!2424314 c!386600) b!2424303))

(assert (= (and b!2424314 (not c!386600)) b!2424313))

(assert (= (and b!2424303 res!1029627) b!2424307))

(assert (= (and b!2424314 res!1029620) b!2424298))

(assert (= (or b!2424310 b!2424303) bm!148255))

(assert (= (or b!2424308 b!2424314) bm!148257))

(assert (= (or b!2424310 b!2424298) bm!148256))

(assert (= (or b!2424305 b!2424303) bm!148259))

(assert (= (or b!2424310 b!2424314) bm!148258))

(assert (= (or b!2424308 b!2424298) bm!148254))

(assert (= (and b!2424304 c!386598) b!2424301))

(assert (= (and b!2424304 (not c!386598)) b!2424299))

(assert (= (and b!2424304 (not res!1029622)) b!2424309))

(assert (= (and b!2424309 (not res!1029619)) b!2424318))

(assert (= (and start!237458 (is-Cons!28388 l!9164)) b!2424319))

(assert (= (and start!237458 (is-ElementMatch!7124 r!13927)) b!2424306))

(assert (= (and start!237458 (is-Concat!11760 r!13927)) b!2424316))

(assert (= (and start!237458 (is-Star!7124 r!13927)) b!2424302))

(assert (= (and start!237458 (is-Union!7124 r!13927)) b!2424315))

(assert (= (and start!237458 (is-Cons!28389 s!9460)) b!2424300))

(declare-fun m!2809957 () Bool)

(assert (=> bm!148257 m!2809957))

(declare-fun m!2809959 () Bool)

(assert (=> b!2424303 m!2809959))

(declare-fun m!2809961 () Bool)

(assert (=> b!2424303 m!2809961))

(declare-fun m!2809963 () Bool)

(assert (=> b!2424311 m!2809963))

(declare-fun m!2809965 () Bool)

(assert (=> start!237458 m!2809965))

(declare-fun m!2809967 () Bool)

(assert (=> b!2424312 m!2809967))

(declare-fun m!2809969 () Bool)

(assert (=> b!2424312 m!2809969))

(declare-fun m!2809971 () Bool)

(assert (=> b!2424304 m!2809971))

(declare-fun m!2809973 () Bool)

(assert (=> b!2424304 m!2809973))

(declare-fun m!2809975 () Bool)

(assert (=> b!2424297 m!2809975))

(declare-fun m!2809977 () Bool)

(assert (=> b!2424318 m!2809977))

(declare-fun m!2809979 () Bool)

(assert (=> b!2424318 m!2809979))

(declare-fun m!2809981 () Bool)

(assert (=> b!2424317 m!2809981))

(declare-fun m!2809983 () Bool)

(assert (=> b!2424320 m!2809983))

(declare-fun m!2809985 () Bool)

(assert (=> b!2424320 m!2809985))

(declare-fun m!2809987 () Bool)

(assert (=> b!2424320 m!2809987))

(declare-fun m!2809989 () Bool)

(assert (=> bm!148254 m!2809989))

(declare-fun m!2809991 () Bool)

(assert (=> b!2424310 m!2809991))

(declare-fun m!2809993 () Bool)

(assert (=> b!2424310 m!2809993))

(declare-fun m!2809995 () Bool)

(assert (=> b!2424310 m!2809995))

(declare-fun m!2809997 () Bool)

(assert (=> bm!148255 m!2809997))

(declare-fun m!2809999 () Bool)

(assert (=> bm!148258 m!2809999))

(declare-fun m!2810001 () Bool)

(assert (=> b!2424299 m!2810001))

(declare-fun m!2810003 () Bool)

(assert (=> bm!148256 m!2810003))

(declare-fun m!2810005 () Bool)

(assert (=> bm!148259 m!2810005))

(assert (=> b!2424301 m!2809979))

(assert (=> b!2424301 m!2809979))

(declare-fun m!2810007 () Bool)

(assert (=> b!2424301 m!2810007))

(assert (=> b!2424301 m!2810007))

(declare-fun m!2810009 () Bool)

(assert (=> b!2424301 m!2810009))

(push 1)

(assert (not b!2424301))

(assert (not bm!148254))

(assert (not b!2424312))

(assert (not b!2424302))

(assert (not b!2424320))

(assert (not start!237458))

(assert (not b!2424318))

(assert (not bm!148256))

(assert (not b!2424303))

(assert tp_is_empty!11661)

(assert (not b!2424310))

(assert (not b!2424304))

(assert (not b!2424311))

(assert (not bm!148255))

(assert (not b!2424316))

(assert (not b!2424299))

(assert (not bm!148259))

(assert (not bm!148258))

(assert (not b!2424315))

(assert (not b!2424317))

(assert (not b!2424297))

(assert (not b!2424300))

(assert (not b!2424319))

(assert (not bm!148257))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!1542195 () Bool)

(declare-fun b!2424411 () Bool)

(assert (=> b!2424411 (= e!1542195 (matchR!3241 (ite c!386599 EmptyExpr!7124 lt!875949) s!9460))))

(declare-fun b!2424412 () Bool)

(declare-fun lt!876002 () Unit!41603)

(declare-fun lt!876003 () Unit!41603)

(assert (=> b!2424412 (= lt!876002 lt!876003)))

(assert (=> b!2424412 (= (++!7045 (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!671 (List!28487 C!14406 List!28487 List!28487) Unit!41603)

(assert (=> b!2424412 (= lt!876003 (lemmaMoveElementToOtherListKeepsConcatEq!671 Nil!28389 (h!33790 s!9460) (t!208464 s!9460) s!9460))))

(declare-fun e!1542197 () Option!5625)

(assert (=> b!2424412 (= e!1542197 (findConcatSeparation!733 lt!875944 (ite c!386599 EmptyExpr!7124 lt!875949) (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460) s!9460))))

(declare-fun b!2424413 () Bool)

(declare-fun e!1542196 () Option!5625)

(assert (=> b!2424413 (= e!1542196 e!1542197)))

(declare-fun c!386616 () Bool)

(assert (=> b!2424413 (= c!386616 (is-Nil!28389 s!9460))))

(declare-fun b!2424414 () Bool)

(declare-fun e!1542193 () Bool)

(declare-fun lt!876001 () Option!5625)

(assert (=> b!2424414 (= e!1542193 (not (isDefined!4451 lt!876001)))))

(declare-fun b!2424416 () Bool)

(declare-fun res!1029681 () Bool)

(declare-fun e!1542194 () Bool)

(assert (=> b!2424416 (=> (not res!1029681) (not e!1542194))))

(assert (=> b!2424416 (= res!1029681 (matchR!3241 lt!875944 (_1!16555 (get!8739 lt!876001))))))

(declare-fun b!2424417 () Bool)

(assert (=> b!2424417 (= e!1542194 (= (++!7045 (_1!16555 (get!8739 lt!876001)) (_2!16555 (get!8739 lt!876001))) s!9460))))

(declare-fun b!2424415 () Bool)

(declare-fun res!1029678 () Bool)

(assert (=> b!2424415 (=> (not res!1029678) (not e!1542194))))

(assert (=> b!2424415 (= res!1029678 (matchR!3241 (ite c!386599 EmptyExpr!7124 lt!875949) (_2!16555 (get!8739 lt!876001))))))

(declare-fun d!702329 () Bool)

(assert (=> d!702329 e!1542193))

(declare-fun res!1029679 () Bool)

(assert (=> d!702329 (=> res!1029679 e!1542193)))

(assert (=> d!702329 (= res!1029679 e!1542194)))

(declare-fun res!1029677 () Bool)

(assert (=> d!702329 (=> (not res!1029677) (not e!1542194))))

(assert (=> d!702329 (= res!1029677 (isDefined!4451 lt!876001))))

(assert (=> d!702329 (= lt!876001 e!1542196)))

(declare-fun c!386617 () Bool)

(assert (=> d!702329 (= c!386617 e!1542195)))

(declare-fun res!1029680 () Bool)

(assert (=> d!702329 (=> (not res!1029680) (not e!1542195))))

(assert (=> d!702329 (= res!1029680 (matchR!3241 lt!875944 Nil!28389))))

(assert (=> d!702329 (validRegex!2844 lt!875944)))

(assert (=> d!702329 (= (findConcatSeparation!733 lt!875944 (ite c!386599 EmptyExpr!7124 lt!875949) Nil!28389 s!9460 s!9460) lt!876001)))

(declare-fun b!2424418 () Bool)

(assert (=> b!2424418 (= e!1542196 (Some!5624 (tuple2!28029 Nil!28389 s!9460)))))

(declare-fun b!2424419 () Bool)

(assert (=> b!2424419 (= e!1542197 None!5624)))

(assert (= (and d!702329 res!1029680) b!2424411))

(assert (= (and d!702329 c!386617) b!2424418))

(assert (= (and d!702329 (not c!386617)) b!2424413))

(assert (= (and b!2424413 c!386616) b!2424419))

(assert (= (and b!2424413 (not c!386616)) b!2424412))

(assert (= (and d!702329 res!1029677) b!2424416))

(assert (= (and b!2424416 res!1029681) b!2424415))

(assert (= (and b!2424415 res!1029678) b!2424417))

(assert (= (and d!702329 (not res!1029679)) b!2424414))

(declare-fun m!2810065 () Bool)

(assert (=> b!2424414 m!2810065))

(declare-fun m!2810067 () Bool)

(assert (=> b!2424415 m!2810067))

(declare-fun m!2810069 () Bool)

(assert (=> b!2424415 m!2810069))

(assert (=> b!2424417 m!2810067))

(declare-fun m!2810071 () Bool)

(assert (=> b!2424417 m!2810071))

(declare-fun m!2810073 () Bool)

(assert (=> b!2424411 m!2810073))

(assert (=> d!702329 m!2810065))

(declare-fun m!2810075 () Bool)

(assert (=> d!702329 m!2810075))

(declare-fun m!2810077 () Bool)

(assert (=> d!702329 m!2810077))

(declare-fun m!2810079 () Bool)

(assert (=> b!2424412 m!2810079))

(assert (=> b!2424412 m!2810079))

(declare-fun m!2810081 () Bool)

(assert (=> b!2424412 m!2810081))

(declare-fun m!2810083 () Bool)

(assert (=> b!2424412 m!2810083))

(assert (=> b!2424412 m!2810079))

(declare-fun m!2810085 () Bool)

(assert (=> b!2424412 m!2810085))

(assert (=> b!2424416 m!2810067))

(declare-fun m!2810087 () Bool)

(assert (=> b!2424416 m!2810087))

(assert (=> bm!148256 d!702329))

(declare-fun d!702331 () Bool)

(declare-fun isEmpty!16422 (Option!5625) Bool)

(assert (=> d!702331 (= (isDefined!4451 (ite c!386599 call!148259 call!148264)) (not (isEmpty!16422 (ite c!386599 call!148259 call!148264))))))

(declare-fun bs!463853 () Bool)

(assert (= bs!463853 d!702331))

(declare-fun m!2810089 () Bool)

(assert (=> bs!463853 m!2810089))

(assert (=> bm!148254 d!702331))

(declare-fun bs!463854 () Bool)

(declare-fun d!702333 () Bool)

(assert (= bs!463854 (and d!702333 start!237458)))

(declare-fun lambda!91316 () Int)

(assert (=> bs!463854 (= lambda!91316 lambda!91310)))

(declare-fun b!2424458 () Bool)

(declare-fun e!1542221 () Bool)

(declare-fun e!1542225 () Bool)

(assert (=> b!2424458 (= e!1542221 e!1542225)))

(declare-fun c!386632 () Bool)

(assert (=> b!2424458 (= c!386632 (isEmpty!16419 l!9164))))

(declare-fun b!2424459 () Bool)

(declare-fun e!1542223 () Regex!7124)

(declare-fun e!1542220 () Regex!7124)

(assert (=> b!2424459 (= e!1542223 e!1542220)))

(declare-fun c!386631 () Bool)

(assert (=> b!2424459 (= c!386631 (is-Cons!28388 l!9164))))

(declare-fun b!2424460 () Bool)

(assert (=> b!2424460 (= e!1542220 (Concat!11760 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164))))))

(declare-fun b!2424461 () Bool)

(declare-fun e!1542222 () Bool)

(declare-fun lt!876012 () Regex!7124)

(assert (=> b!2424461 (= e!1542222 (= lt!876012 (head!5460 l!9164)))))

(declare-fun b!2424462 () Bool)

(declare-fun isConcat!179 (Regex!7124) Bool)

(assert (=> b!2424462 (= e!1542222 (isConcat!179 lt!876012))))

(assert (=> d!702333 e!1542221))

(declare-fun res!1029697 () Bool)

(assert (=> d!702333 (=> (not res!1029697) (not e!1542221))))

(assert (=> d!702333 (= res!1029697 (validRegex!2844 lt!876012))))

(assert (=> d!702333 (= lt!876012 e!1542223)))

(declare-fun c!386630 () Bool)

(declare-fun e!1542224 () Bool)

(assert (=> d!702333 (= c!386630 e!1542224)))

(declare-fun res!1029696 () Bool)

(assert (=> d!702333 (=> (not res!1029696) (not e!1542224))))

(assert (=> d!702333 (= res!1029696 (is-Cons!28388 l!9164))))

(assert (=> d!702333 (forall!5758 l!9164 lambda!91316)))

(assert (=> d!702333 (= (generalisedConcat!225 l!9164) lt!876012)))

(declare-fun b!2424463 () Bool)

(declare-fun isEmptyExpr!179 (Regex!7124) Bool)

(assert (=> b!2424463 (= e!1542225 (isEmptyExpr!179 lt!876012))))

(declare-fun b!2424464 () Bool)

(assert (=> b!2424464 (= e!1542225 e!1542222)))

(declare-fun c!386633 () Bool)

(assert (=> b!2424464 (= c!386633 (isEmpty!16419 (tail!3732 l!9164)))))

(declare-fun b!2424465 () Bool)

(assert (=> b!2424465 (= e!1542223 (h!33789 l!9164))))

(declare-fun b!2424466 () Bool)

(assert (=> b!2424466 (= e!1542220 EmptyExpr!7124)))

(declare-fun b!2424467 () Bool)

(assert (=> b!2424467 (= e!1542224 (isEmpty!16419 (t!208463 l!9164)))))

(assert (= (and d!702333 res!1029696) b!2424467))

(assert (= (and d!702333 c!386630) b!2424465))

(assert (= (and d!702333 (not c!386630)) b!2424459))

(assert (= (and b!2424459 c!386631) b!2424460))

(assert (= (and b!2424459 (not c!386631)) b!2424466))

(assert (= (and d!702333 res!1029697) b!2424458))

(assert (= (and b!2424458 c!386632) b!2424463))

(assert (= (and b!2424458 (not c!386632)) b!2424464))

(assert (= (and b!2424464 c!386633) b!2424461))

(assert (= (and b!2424464 (not c!386633)) b!2424462))

(declare-fun m!2810091 () Bool)

(assert (=> d!702333 m!2810091))

(declare-fun m!2810093 () Bool)

(assert (=> d!702333 m!2810093))

(declare-fun m!2810095 () Bool)

(assert (=> b!2424467 m!2810095))

(assert (=> b!2424458 m!2809963))

(assert (=> b!2424464 m!2809969))

(assert (=> b!2424464 m!2809969))

(declare-fun m!2810097 () Bool)

(assert (=> b!2424464 m!2810097))

(declare-fun m!2810099 () Bool)

(assert (=> b!2424462 m!2810099))

(declare-fun m!2810101 () Bool)

(assert (=> b!2424463 m!2810101))

(assert (=> b!2424461 m!2809973))

(assert (=> b!2424460 m!2809979))

(assert (=> b!2424297 d!702333))

(declare-fun d!702335 () Bool)

(assert (=> d!702335 (= (isDefined!4451 (ite c!386599 call!148264 lt!875937)) (not (isEmpty!16422 (ite c!386599 call!148264 lt!875937))))))

(declare-fun bs!463855 () Bool)

(assert (= bs!463855 d!702335))

(declare-fun m!2810103 () Bool)

(assert (=> bs!463855 m!2810103))

(assert (=> bm!148258 d!702335))

(declare-fun d!702337 () Bool)

(assert (=> d!702337 (= (isEmpty!16418 s!9460) (is-Nil!28389 s!9460))))

(assert (=> b!2424299 d!702337))

(declare-fun e!1542249 () Bool)

(declare-fun b!2424505 () Bool)

(declare-fun head!5462 (List!28487) C!14406)

(assert (=> b!2424505 (= e!1542249 (not (= (head!5462 (ite c!386599 s!9460 call!148263)) (c!386601 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124))))))))

(declare-fun b!2424506 () Bool)

(declare-fun res!1029726 () Bool)

(assert (=> b!2424506 (=> res!1029726 e!1542249)))

(declare-fun tail!3734 (List!28487) List!28487)

(assert (=> b!2424506 (= res!1029726 (not (isEmpty!16418 (tail!3734 (ite c!386599 s!9460 call!148263)))))))

(declare-fun b!2424507 () Bool)

(declare-fun e!1542246 () Bool)

(declare-fun lt!876018 () Bool)

(assert (=> b!2424507 (= e!1542246 (not lt!876018))))

(declare-fun b!2424508 () Bool)

(declare-fun e!1542248 () Bool)

(declare-fun derivativeStep!1816 (Regex!7124 C!14406) Regex!7124)

(assert (=> b!2424508 (= e!1542248 (matchR!3241 (derivativeStep!1816 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)) (head!5462 (ite c!386599 s!9460 call!148263))) (tail!3734 (ite c!386599 s!9460 call!148263))))))

(declare-fun b!2424509 () Bool)

(declare-fun e!1542250 () Bool)

(assert (=> b!2424509 (= e!1542250 e!1542246)))

(declare-fun c!386643 () Bool)

(assert (=> b!2424509 (= c!386643 (is-EmptyLang!7124 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124))))))

(declare-fun b!2424510 () Bool)

(declare-fun nullable!2159 (Regex!7124) Bool)

(assert (=> b!2424510 (= e!1542248 (nullable!2159 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124))))))

(declare-fun b!2424511 () Bool)

(declare-fun e!1542245 () Bool)

(assert (=> b!2424511 (= e!1542245 e!1542249)))

(declare-fun res!1029721 () Bool)

(assert (=> b!2424511 (=> res!1029721 e!1542249)))

(declare-fun call!148285 () Bool)

(assert (=> b!2424511 (= res!1029721 call!148285)))

(declare-fun b!2424512 () Bool)

(declare-fun e!1542251 () Bool)

(assert (=> b!2424512 (= e!1542251 e!1542245)))

(declare-fun res!1029719 () Bool)

(assert (=> b!2424512 (=> (not res!1029719) (not e!1542245))))

(assert (=> b!2424512 (= res!1029719 (not lt!876018))))

(declare-fun b!2424513 () Bool)

(assert (=> b!2424513 (= e!1542250 (= lt!876018 call!148285))))

(declare-fun d!702339 () Bool)

(assert (=> d!702339 e!1542250))

(declare-fun c!386644 () Bool)

(assert (=> d!702339 (= c!386644 (is-EmptyExpr!7124 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124))))))

(assert (=> d!702339 (= lt!876018 e!1542248)))

(declare-fun c!386642 () Bool)

(assert (=> d!702339 (= c!386642 (isEmpty!16418 (ite c!386599 s!9460 call!148263)))))

(assert (=> d!702339 (validRegex!2844 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)))))

(assert (=> d!702339 (= (matchR!3241 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)) (ite c!386599 s!9460 call!148263)) lt!876018)))

(declare-fun b!2424514 () Bool)

(declare-fun res!1029725 () Bool)

(assert (=> b!2424514 (=> res!1029725 e!1542251)))

(declare-fun e!1542247 () Bool)

(assert (=> b!2424514 (= res!1029725 e!1542247)))

(declare-fun res!1029720 () Bool)

(assert (=> b!2424514 (=> (not res!1029720) (not e!1542247))))

(assert (=> b!2424514 (= res!1029720 lt!876018)))

(declare-fun bm!148280 () Bool)

(assert (=> bm!148280 (= call!148285 (isEmpty!16418 (ite c!386599 s!9460 call!148263)))))

(declare-fun b!2424515 () Bool)

(declare-fun res!1029722 () Bool)

(assert (=> b!2424515 (=> (not res!1029722) (not e!1542247))))

(assert (=> b!2424515 (= res!1029722 (not call!148285))))

(declare-fun b!2424516 () Bool)

(assert (=> b!2424516 (= e!1542247 (= (head!5462 (ite c!386599 s!9460 call!148263)) (c!386601 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)))))))

(declare-fun b!2424517 () Bool)

(declare-fun res!1029724 () Bool)

(assert (=> b!2424517 (=> res!1029724 e!1542251)))

(assert (=> b!2424517 (= res!1029724 (not (is-ElementMatch!7124 (ite c!386599 lt!875947 (Concat!11760 lt!875944 EmptyExpr!7124)))))))

(assert (=> b!2424517 (= e!1542246 e!1542251)))

(declare-fun b!2424518 () Bool)

(declare-fun res!1029723 () Bool)

(assert (=> b!2424518 (=> (not res!1029723) (not e!1542247))))

(assert (=> b!2424518 (= res!1029723 (isEmpty!16418 (tail!3734 (ite c!386599 s!9460 call!148263))))))

(assert (= (and d!702339 c!386642) b!2424510))

(assert (= (and d!702339 (not c!386642)) b!2424508))

(assert (= (and d!702339 c!386644) b!2424513))

(assert (= (and d!702339 (not c!386644)) b!2424509))

(assert (= (and b!2424509 c!386643) b!2424507))

(assert (= (and b!2424509 (not c!386643)) b!2424517))

(assert (= (and b!2424517 (not res!1029724)) b!2424514))

(assert (= (and b!2424514 res!1029720) b!2424515))

(assert (= (and b!2424515 res!1029722) b!2424518))

(assert (= (and b!2424518 res!1029723) b!2424516))

(assert (= (and b!2424514 (not res!1029725)) b!2424512))

(assert (= (and b!2424512 res!1029719) b!2424511))

(assert (= (and b!2424511 (not res!1029721)) b!2424506))

(assert (= (and b!2424506 (not res!1029726)) b!2424505))

(assert (= (or b!2424513 b!2424511 b!2424515) bm!148280))

(declare-fun m!2810129 () Bool)

(assert (=> b!2424516 m!2810129))

(declare-fun m!2810131 () Bool)

(assert (=> bm!148280 m!2810131))

(declare-fun m!2810133 () Bool)

(assert (=> b!2424506 m!2810133))

(assert (=> b!2424506 m!2810133))

(declare-fun m!2810135 () Bool)

(assert (=> b!2424506 m!2810135))

(assert (=> b!2424518 m!2810133))

(assert (=> b!2424518 m!2810133))

(assert (=> b!2424518 m!2810135))

(declare-fun m!2810137 () Bool)

(assert (=> b!2424510 m!2810137))

(assert (=> d!702339 m!2810131))

(declare-fun m!2810139 () Bool)

(assert (=> d!702339 m!2810139))

(assert (=> b!2424508 m!2810129))

(assert (=> b!2424508 m!2810129))

(declare-fun m!2810141 () Bool)

(assert (=> b!2424508 m!2810141))

(assert (=> b!2424508 m!2810133))

(assert (=> b!2424508 m!2810141))

(assert (=> b!2424508 m!2810133))

(declare-fun m!2810143 () Bool)

(assert (=> b!2424508 m!2810143))

(assert (=> b!2424505 m!2810129))

(assert (=> bm!148259 d!702339))

(declare-fun b!2424538 () Bool)

(declare-fun res!1029736 () Bool)

(declare-fun e!1542262 () Bool)

(assert (=> b!2424538 (=> (not res!1029736) (not e!1542262))))

(declare-fun lt!876024 () List!28487)

(declare-fun size!22247 (List!28487) Int)

(assert (=> b!2424538 (= res!1029736 (= (size!22247 lt!876024) (+ (size!22247 (ite c!386599 s!9460 (_1!16555 lt!875948))) (size!22247 (ite c!386599 Nil!28389 (_2!16555 lt!875948))))))))

(declare-fun b!2424539 () Bool)

(assert (=> b!2424539 (= e!1542262 (or (not (= (ite c!386599 Nil!28389 (_2!16555 lt!875948)) Nil!28389)) (= lt!876024 (ite c!386599 s!9460 (_1!16555 lt!875948)))))))

(declare-fun d!702343 () Bool)

(assert (=> d!702343 e!1542262))

(declare-fun res!1029737 () Bool)

(assert (=> d!702343 (=> (not res!1029737) (not e!1542262))))

(declare-fun content!3909 (List!28487) (Set C!14406))

(assert (=> d!702343 (= res!1029737 (= (content!3909 lt!876024) (set.union (content!3909 (ite c!386599 s!9460 (_1!16555 lt!875948))) (content!3909 (ite c!386599 Nil!28389 (_2!16555 lt!875948))))))))

(declare-fun e!1542261 () List!28487)

(assert (=> d!702343 (= lt!876024 e!1542261)))

(declare-fun c!386649 () Bool)

(assert (=> d!702343 (= c!386649 (is-Nil!28389 (ite c!386599 s!9460 (_1!16555 lt!875948))))))

(assert (=> d!702343 (= (++!7045 (ite c!386599 s!9460 (_1!16555 lt!875948)) (ite c!386599 Nil!28389 (_2!16555 lt!875948))) lt!876024)))

(declare-fun b!2424537 () Bool)

(assert (=> b!2424537 (= e!1542261 (Cons!28389 (h!33790 (ite c!386599 s!9460 (_1!16555 lt!875948))) (++!7045 (t!208464 (ite c!386599 s!9460 (_1!16555 lt!875948))) (ite c!386599 Nil!28389 (_2!16555 lt!875948)))))))

(declare-fun b!2424536 () Bool)

(assert (=> b!2424536 (= e!1542261 (ite c!386599 Nil!28389 (_2!16555 lt!875948)))))

(assert (= (and d!702343 c!386649) b!2424536))

(assert (= (and d!702343 (not c!386649)) b!2424537))

(assert (= (and d!702343 res!1029737) b!2424538))

(assert (= (and b!2424538 res!1029736) b!2424539))

(declare-fun m!2810157 () Bool)

(assert (=> b!2424538 m!2810157))

(declare-fun m!2810161 () Bool)

(assert (=> b!2424538 m!2810161))

(declare-fun m!2810163 () Bool)

(assert (=> b!2424538 m!2810163))

(declare-fun m!2810167 () Bool)

(assert (=> d!702343 m!2810167))

(declare-fun m!2810169 () Bool)

(assert (=> d!702343 m!2810169))

(declare-fun m!2810171 () Bool)

(assert (=> d!702343 m!2810171))

(declare-fun m!2810175 () Bool)

(assert (=> b!2424537 m!2810175))

(assert (=> bm!148255 d!702343))

(declare-fun d!702349 () Bool)

(assert (=> d!702349 (= (isEmpty!16419 l!9164) (is-Nil!28388 l!9164))))

(assert (=> b!2424311 d!702349))

(declare-fun d!702353 () Bool)

(assert (=> d!702353 (= (isDefined!4451 (findConcatSeparation!733 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164)) Nil!28389 s!9460 s!9460)) (not (isEmpty!16422 (findConcatSeparation!733 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164)) Nil!28389 s!9460 s!9460))))))

(declare-fun bs!463858 () Bool)

(assert (= bs!463858 d!702353))

(assert (=> bs!463858 m!2810007))

(declare-fun m!2810179 () Bool)

(assert (=> bs!463858 m!2810179))

(assert (=> b!2424301 d!702353))

(declare-fun b!2424540 () Bool)

(declare-fun e!1542265 () Bool)

(assert (=> b!2424540 (= e!1542265 (matchR!3241 (generalisedConcat!225 (t!208463 l!9164)) s!9460))))

(declare-fun b!2424541 () Bool)

(declare-fun lt!876026 () Unit!41603)

(declare-fun lt!876027 () Unit!41603)

(assert (=> b!2424541 (= lt!876026 lt!876027)))

(assert (=> b!2424541 (= (++!7045 (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460)) s!9460)))

(assert (=> b!2424541 (= lt!876027 (lemmaMoveElementToOtherListKeepsConcatEq!671 Nil!28389 (h!33790 s!9460) (t!208464 s!9460) s!9460))))

(declare-fun e!1542267 () Option!5625)

(assert (=> b!2424541 (= e!1542267 (findConcatSeparation!733 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164)) (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460) s!9460))))

(declare-fun b!2424542 () Bool)

(declare-fun e!1542266 () Option!5625)

(assert (=> b!2424542 (= e!1542266 e!1542267)))

(declare-fun c!386650 () Bool)

(assert (=> b!2424542 (= c!386650 (is-Nil!28389 s!9460))))

(declare-fun b!2424543 () Bool)

(declare-fun e!1542263 () Bool)

(declare-fun lt!876025 () Option!5625)

(assert (=> b!2424543 (= e!1542263 (not (isDefined!4451 lt!876025)))))

(declare-fun b!2424545 () Bool)

(declare-fun res!1029742 () Bool)

(declare-fun e!1542264 () Bool)

(assert (=> b!2424545 (=> (not res!1029742) (not e!1542264))))

(assert (=> b!2424545 (= res!1029742 (matchR!3241 (h!33789 l!9164) (_1!16555 (get!8739 lt!876025))))))

(declare-fun b!2424546 () Bool)

(assert (=> b!2424546 (= e!1542264 (= (++!7045 (_1!16555 (get!8739 lt!876025)) (_2!16555 (get!8739 lt!876025))) s!9460))))

(declare-fun b!2424544 () Bool)

(declare-fun res!1029739 () Bool)

(assert (=> b!2424544 (=> (not res!1029739) (not e!1542264))))

(assert (=> b!2424544 (= res!1029739 (matchR!3241 (generalisedConcat!225 (t!208463 l!9164)) (_2!16555 (get!8739 lt!876025))))))

(declare-fun d!702355 () Bool)

(assert (=> d!702355 e!1542263))

(declare-fun res!1029740 () Bool)

(assert (=> d!702355 (=> res!1029740 e!1542263)))

(assert (=> d!702355 (= res!1029740 e!1542264)))

(declare-fun res!1029738 () Bool)

(assert (=> d!702355 (=> (not res!1029738) (not e!1542264))))

(assert (=> d!702355 (= res!1029738 (isDefined!4451 lt!876025))))

(assert (=> d!702355 (= lt!876025 e!1542266)))

(declare-fun c!386651 () Bool)

(assert (=> d!702355 (= c!386651 e!1542265)))

(declare-fun res!1029741 () Bool)

(assert (=> d!702355 (=> (not res!1029741) (not e!1542265))))

(assert (=> d!702355 (= res!1029741 (matchR!3241 (h!33789 l!9164) Nil!28389))))

(assert (=> d!702355 (validRegex!2844 (h!33789 l!9164))))

(assert (=> d!702355 (= (findConcatSeparation!733 (h!33789 l!9164) (generalisedConcat!225 (t!208463 l!9164)) Nil!28389 s!9460 s!9460) lt!876025)))

(declare-fun b!2424547 () Bool)

(assert (=> b!2424547 (= e!1542266 (Some!5624 (tuple2!28029 Nil!28389 s!9460)))))

(declare-fun b!2424548 () Bool)

(assert (=> b!2424548 (= e!1542267 None!5624)))

(assert (= (and d!702355 res!1029741) b!2424540))

(assert (= (and d!702355 c!386651) b!2424547))

(assert (= (and d!702355 (not c!386651)) b!2424542))

(assert (= (and b!2424542 c!386650) b!2424548))

(assert (= (and b!2424542 (not c!386650)) b!2424541))

(assert (= (and d!702355 res!1029738) b!2424545))

(assert (= (and b!2424545 res!1029742) b!2424544))

(assert (= (and b!2424544 res!1029739) b!2424546))

(assert (= (and d!702355 (not res!1029740)) b!2424543))

(declare-fun m!2810181 () Bool)

(assert (=> b!2424543 m!2810181))

(declare-fun m!2810183 () Bool)

(assert (=> b!2424544 m!2810183))

(assert (=> b!2424544 m!2809979))

(declare-fun m!2810185 () Bool)

(assert (=> b!2424544 m!2810185))

(assert (=> b!2424546 m!2810183))

(declare-fun m!2810187 () Bool)

(assert (=> b!2424546 m!2810187))

(assert (=> b!2424540 m!2809979))

(declare-fun m!2810189 () Bool)

(assert (=> b!2424540 m!2810189))

(assert (=> d!702355 m!2810181))

(declare-fun m!2810191 () Bool)

(assert (=> d!702355 m!2810191))

(assert (=> d!702355 m!2809977))

(assert (=> b!2424541 m!2810079))

(assert (=> b!2424541 m!2810079))

(assert (=> b!2424541 m!2810081))

(assert (=> b!2424541 m!2810083))

(assert (=> b!2424541 m!2809979))

(assert (=> b!2424541 m!2810079))

(declare-fun m!2810193 () Bool)

(assert (=> b!2424541 m!2810193))

(assert (=> b!2424545 m!2810183))

(declare-fun m!2810195 () Bool)

(assert (=> b!2424545 m!2810195))

(assert (=> b!2424301 d!702355))

(declare-fun bs!463859 () Bool)

(declare-fun d!702357 () Bool)

(assert (= bs!463859 (and d!702357 start!237458)))

(declare-fun lambda!91317 () Int)

(assert (=> bs!463859 (= lambda!91317 lambda!91310)))

(declare-fun bs!463860 () Bool)

(assert (= bs!463860 (and d!702357 d!702333)))

(assert (=> bs!463860 (= lambda!91317 lambda!91316)))

(declare-fun b!2424549 () Bool)

(declare-fun e!1542269 () Bool)

(declare-fun e!1542273 () Bool)

(assert (=> b!2424549 (= e!1542269 e!1542273)))

(declare-fun c!386654 () Bool)

(assert (=> b!2424549 (= c!386654 (isEmpty!16419 (t!208463 l!9164)))))

(declare-fun b!2424550 () Bool)

(declare-fun e!1542271 () Regex!7124)

(declare-fun e!1542268 () Regex!7124)

(assert (=> b!2424550 (= e!1542271 e!1542268)))

(declare-fun c!386653 () Bool)

(assert (=> b!2424550 (= c!386653 (is-Cons!28388 (t!208463 l!9164)))))

(declare-fun b!2424551 () Bool)

(assert (=> b!2424551 (= e!1542268 (Concat!11760 (h!33789 (t!208463 l!9164)) (generalisedConcat!225 (t!208463 (t!208463 l!9164)))))))

(declare-fun b!2424552 () Bool)

(declare-fun e!1542270 () Bool)

(declare-fun lt!876028 () Regex!7124)

(assert (=> b!2424552 (= e!1542270 (= lt!876028 (head!5460 (t!208463 l!9164))))))

(declare-fun b!2424553 () Bool)

(assert (=> b!2424553 (= e!1542270 (isConcat!179 lt!876028))))

(assert (=> d!702357 e!1542269))

(declare-fun res!1029744 () Bool)

(assert (=> d!702357 (=> (not res!1029744) (not e!1542269))))

(assert (=> d!702357 (= res!1029744 (validRegex!2844 lt!876028))))

(assert (=> d!702357 (= lt!876028 e!1542271)))

(declare-fun c!386652 () Bool)

(declare-fun e!1542272 () Bool)

(assert (=> d!702357 (= c!386652 e!1542272)))

(declare-fun res!1029743 () Bool)

(assert (=> d!702357 (=> (not res!1029743) (not e!1542272))))

(assert (=> d!702357 (= res!1029743 (is-Cons!28388 (t!208463 l!9164)))))

(assert (=> d!702357 (forall!5758 (t!208463 l!9164) lambda!91317)))

(assert (=> d!702357 (= (generalisedConcat!225 (t!208463 l!9164)) lt!876028)))

(declare-fun b!2424554 () Bool)

(assert (=> b!2424554 (= e!1542273 (isEmptyExpr!179 lt!876028))))

(declare-fun b!2424555 () Bool)

(assert (=> b!2424555 (= e!1542273 e!1542270)))

(declare-fun c!386655 () Bool)

(assert (=> b!2424555 (= c!386655 (isEmpty!16419 (tail!3732 (t!208463 l!9164))))))

(declare-fun b!2424556 () Bool)

(assert (=> b!2424556 (= e!1542271 (h!33789 (t!208463 l!9164)))))

(declare-fun b!2424557 () Bool)

(assert (=> b!2424557 (= e!1542268 EmptyExpr!7124)))

(declare-fun b!2424558 () Bool)

(assert (=> b!2424558 (= e!1542272 (isEmpty!16419 (t!208463 (t!208463 l!9164))))))

(assert (= (and d!702357 res!1029743) b!2424558))

(assert (= (and d!702357 c!386652) b!2424556))

(assert (= (and d!702357 (not c!386652)) b!2424550))

(assert (= (and b!2424550 c!386653) b!2424551))

(assert (= (and b!2424550 (not c!386653)) b!2424557))

(assert (= (and d!702357 res!1029744) b!2424549))

(assert (= (and b!2424549 c!386654) b!2424554))

(assert (= (and b!2424549 (not c!386654)) b!2424555))

(assert (= (and b!2424555 c!386655) b!2424552))

(assert (= (and b!2424555 (not c!386655)) b!2424553))

(declare-fun m!2810197 () Bool)

(assert (=> d!702357 m!2810197))

(declare-fun m!2810199 () Bool)

(assert (=> d!702357 m!2810199))

(declare-fun m!2810201 () Bool)

(assert (=> b!2424558 m!2810201))

(assert (=> b!2424549 m!2810095))

(declare-fun m!2810203 () Bool)

(assert (=> b!2424555 m!2810203))

(assert (=> b!2424555 m!2810203))

(declare-fun m!2810205 () Bool)

(assert (=> b!2424555 m!2810205))

(declare-fun m!2810207 () Bool)

(assert (=> b!2424553 m!2810207))

(declare-fun m!2810209 () Bool)

(assert (=> b!2424554 m!2810209))

(declare-fun m!2810211 () Bool)

(assert (=> b!2424552 m!2810211))

(declare-fun m!2810213 () Bool)

(assert (=> b!2424551 m!2810213))

(assert (=> b!2424301 d!702357))

(declare-fun b!2424577 () Bool)

(declare-fun e!1542288 () Bool)

(declare-fun call!148293 () Bool)

(assert (=> b!2424577 (= e!1542288 call!148293)))

(declare-fun bm!148287 () Bool)

(declare-fun call!148292 () Bool)

(declare-fun call!148294 () Bool)

(assert (=> bm!148287 (= call!148292 call!148294)))

(declare-fun b!2424578 () Bool)

(declare-fun e!1542289 () Bool)

(assert (=> b!2424578 (= e!1542289 call!148292)))

(declare-fun b!2424579 () Bool)

(declare-fun e!1542293 () Bool)

(declare-fun e!1542292 () Bool)

(assert (=> b!2424579 (= e!1542293 e!1542292)))

(declare-fun c!386660 () Bool)

(assert (=> b!2424579 (= c!386660 (is-Union!7124 (h!33789 l!9164)))))

(declare-fun bm!148288 () Bool)

(assert (=> bm!148288 (= call!148293 (validRegex!2844 (ite c!386660 (regTwo!14761 (h!33789 l!9164)) (regOne!14760 (h!33789 l!9164)))))))

(declare-fun b!2424580 () Bool)

(declare-fun e!1542294 () Bool)

(assert (=> b!2424580 (= e!1542294 e!1542289)))

(declare-fun res!1029757 () Bool)

(assert (=> b!2424580 (=> (not res!1029757) (not e!1542289))))

(assert (=> b!2424580 (= res!1029757 call!148293)))

(declare-fun b!2424581 () Bool)

(declare-fun res!1029756 () Bool)

(assert (=> b!2424581 (=> (not res!1029756) (not e!1542288))))

(assert (=> b!2424581 (= res!1029756 call!148292)))

(assert (=> b!2424581 (= e!1542292 e!1542288)))

(declare-fun d!702359 () Bool)

(declare-fun res!1029758 () Bool)

(declare-fun e!1542291 () Bool)

(assert (=> d!702359 (=> res!1029758 e!1542291)))

(assert (=> d!702359 (= res!1029758 (is-ElementMatch!7124 (h!33789 l!9164)))))

(assert (=> d!702359 (= (validRegex!2844 (h!33789 l!9164)) e!1542291)))

(declare-fun c!386661 () Bool)

(declare-fun bm!148289 () Bool)

(assert (=> bm!148289 (= call!148294 (validRegex!2844 (ite c!386661 (reg!7453 (h!33789 l!9164)) (ite c!386660 (regOne!14761 (h!33789 l!9164)) (regTwo!14760 (h!33789 l!9164))))))))

(declare-fun b!2424582 () Bool)

(assert (=> b!2424582 (= e!1542291 e!1542293)))

(assert (=> b!2424582 (= c!386661 (is-Star!7124 (h!33789 l!9164)))))

(declare-fun b!2424583 () Bool)

(declare-fun e!1542290 () Bool)

(assert (=> b!2424583 (= e!1542290 call!148294)))

(declare-fun b!2424584 () Bool)

(assert (=> b!2424584 (= e!1542293 e!1542290)))

(declare-fun res!1029755 () Bool)

(assert (=> b!2424584 (= res!1029755 (not (nullable!2159 (reg!7453 (h!33789 l!9164)))))))

(assert (=> b!2424584 (=> (not res!1029755) (not e!1542290))))

(declare-fun b!2424585 () Bool)

(declare-fun res!1029759 () Bool)

(assert (=> b!2424585 (=> res!1029759 e!1542294)))

(assert (=> b!2424585 (= res!1029759 (not (is-Concat!11760 (h!33789 l!9164))))))

(assert (=> b!2424585 (= e!1542292 e!1542294)))

(assert (= (and d!702359 (not res!1029758)) b!2424582))

(assert (= (and b!2424582 c!386661) b!2424584))

(assert (= (and b!2424582 (not c!386661)) b!2424579))

(assert (= (and b!2424584 res!1029755) b!2424583))

(assert (= (and b!2424579 c!386660) b!2424581))

(assert (= (and b!2424579 (not c!386660)) b!2424585))

(assert (= (and b!2424581 res!1029756) b!2424577))

(assert (= (and b!2424585 (not res!1029759)) b!2424580))

(assert (= (and b!2424580 res!1029757) b!2424578))

(assert (= (or b!2424581 b!2424578) bm!148287))

(assert (= (or b!2424577 b!2424580) bm!148288))

(assert (= (or b!2424583 bm!148287) bm!148289))

(declare-fun m!2810215 () Bool)

(assert (=> bm!148288 m!2810215))

(declare-fun m!2810217 () Bool)

(assert (=> bm!148289 m!2810217))

(declare-fun m!2810219 () Bool)

(assert (=> b!2424584 m!2810219))

(assert (=> b!2424318 d!702359))

(assert (=> b!2424318 d!702357))

(declare-fun d!702361 () Bool)

(assert (=> d!702361 (matchR!3241 (Concat!11760 lt!875944 EmptyExpr!7124) (++!7045 s!9460 Nil!28389))))

(declare-fun lt!876033 () Unit!41603)

(declare-fun choose!14357 (Regex!7124 Regex!7124 List!28487 List!28487) Unit!41603)

(assert (=> d!702361 (= lt!876033 (choose!14357 lt!875944 EmptyExpr!7124 s!9460 Nil!28389))))

(declare-fun e!1542305 () Bool)

(assert (=> d!702361 e!1542305))

(declare-fun res!1029766 () Bool)

(assert (=> d!702361 (=> (not res!1029766) (not e!1542305))))

(assert (=> d!702361 (= res!1029766 (validRegex!2844 lt!875944))))

(assert (=> d!702361 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!99 lt!875944 EmptyExpr!7124 s!9460 Nil!28389) lt!876033)))

(declare-fun b!2424598 () Bool)

(assert (=> b!2424598 (= e!1542305 (validRegex!2844 EmptyExpr!7124))))

(assert (= (and d!702361 res!1029766) b!2424598))

(declare-fun m!2810221 () Bool)

(assert (=> d!702361 m!2810221))

(assert (=> d!702361 m!2810221))

(declare-fun m!2810223 () Bool)

(assert (=> d!702361 m!2810223))

(declare-fun m!2810225 () Bool)

(assert (=> d!702361 m!2810225))

(assert (=> d!702361 m!2810077))

(declare-fun m!2810227 () Bool)

(assert (=> b!2424598 m!2810227))

(assert (=> b!2424310 d!702361))

(declare-fun b!2424609 () Bool)

(declare-fun e!1542314 () Bool)

(assert (=> b!2424609 (= e!1542314 (not (= (head!5462 call!148263) (c!386601 lt!875947))))))

(declare-fun b!2424610 () Bool)

(declare-fun res!1029774 () Bool)

(assert (=> b!2424610 (=> res!1029774 e!1542314)))

(assert (=> b!2424610 (= res!1029774 (not (isEmpty!16418 (tail!3734 call!148263))))))

(declare-fun b!2424611 () Bool)

(declare-fun e!1542311 () Bool)

(declare-fun lt!876034 () Bool)

(assert (=> b!2424611 (= e!1542311 (not lt!876034))))

(declare-fun b!2424612 () Bool)

(declare-fun e!1542313 () Bool)

(assert (=> b!2424612 (= e!1542313 (matchR!3241 (derivativeStep!1816 lt!875947 (head!5462 call!148263)) (tail!3734 call!148263)))))

(declare-fun b!2424613 () Bool)

(declare-fun e!1542315 () Bool)

(assert (=> b!2424613 (= e!1542315 e!1542311)))

(declare-fun c!386671 () Bool)

(assert (=> b!2424613 (= c!386671 (is-EmptyLang!7124 lt!875947))))

(declare-fun b!2424614 () Bool)

(assert (=> b!2424614 (= e!1542313 (nullable!2159 lt!875947))))

(declare-fun b!2424615 () Bool)

(declare-fun e!1542310 () Bool)

(assert (=> b!2424615 (= e!1542310 e!1542314)))

(declare-fun res!1029769 () Bool)

(assert (=> b!2424615 (=> res!1029769 e!1542314)))

(declare-fun call!148295 () Bool)

(assert (=> b!2424615 (= res!1029769 call!148295)))

(declare-fun b!2424616 () Bool)

(declare-fun e!1542316 () Bool)

(assert (=> b!2424616 (= e!1542316 e!1542310)))

(declare-fun res!1029767 () Bool)

(assert (=> b!2424616 (=> (not res!1029767) (not e!1542310))))

(assert (=> b!2424616 (= res!1029767 (not lt!876034))))

(declare-fun b!2424617 () Bool)

(assert (=> b!2424617 (= e!1542315 (= lt!876034 call!148295))))

(declare-fun d!702363 () Bool)

(assert (=> d!702363 e!1542315))

(declare-fun c!386672 () Bool)

(assert (=> d!702363 (= c!386672 (is-EmptyExpr!7124 lt!875947))))

(assert (=> d!702363 (= lt!876034 e!1542313)))

(declare-fun c!386670 () Bool)

(assert (=> d!702363 (= c!386670 (isEmpty!16418 call!148263))))

(assert (=> d!702363 (validRegex!2844 lt!875947)))

(assert (=> d!702363 (= (matchR!3241 lt!875947 call!148263) lt!876034)))

(declare-fun b!2424618 () Bool)

(declare-fun res!1029773 () Bool)

(assert (=> b!2424618 (=> res!1029773 e!1542316)))

(declare-fun e!1542312 () Bool)

(assert (=> b!2424618 (= res!1029773 e!1542312)))

(declare-fun res!1029768 () Bool)

(assert (=> b!2424618 (=> (not res!1029768) (not e!1542312))))

(assert (=> b!2424618 (= res!1029768 lt!876034)))

(declare-fun bm!148290 () Bool)

(assert (=> bm!148290 (= call!148295 (isEmpty!16418 call!148263))))

(declare-fun b!2424619 () Bool)

(declare-fun res!1029770 () Bool)

(assert (=> b!2424619 (=> (not res!1029770) (not e!1542312))))

(assert (=> b!2424619 (= res!1029770 (not call!148295))))

(declare-fun b!2424620 () Bool)

(assert (=> b!2424620 (= e!1542312 (= (head!5462 call!148263) (c!386601 lt!875947)))))

(declare-fun b!2424621 () Bool)

(declare-fun res!1029772 () Bool)

(assert (=> b!2424621 (=> res!1029772 e!1542316)))

(assert (=> b!2424621 (= res!1029772 (not (is-ElementMatch!7124 lt!875947)))))

(assert (=> b!2424621 (= e!1542311 e!1542316)))

(declare-fun b!2424622 () Bool)

(declare-fun res!1029771 () Bool)

(assert (=> b!2424622 (=> (not res!1029771) (not e!1542312))))

(assert (=> b!2424622 (= res!1029771 (isEmpty!16418 (tail!3734 call!148263)))))

(assert (= (and d!702363 c!386670) b!2424614))

(assert (= (and d!702363 (not c!386670)) b!2424612))

(assert (= (and d!702363 c!386672) b!2424617))

(assert (= (and d!702363 (not c!386672)) b!2424613))

(assert (= (and b!2424613 c!386671) b!2424611))

(assert (= (and b!2424613 (not c!386671)) b!2424621))

(assert (= (and b!2424621 (not res!1029772)) b!2424618))

(assert (= (and b!2424618 res!1029768) b!2424619))

(assert (= (and b!2424619 res!1029770) b!2424622))

(assert (= (and b!2424622 res!1029771) b!2424620))

(assert (= (and b!2424618 (not res!1029773)) b!2424616))

(assert (= (and b!2424616 res!1029767) b!2424615))

(assert (= (and b!2424615 (not res!1029769)) b!2424610))

(assert (= (and b!2424610 (not res!1029774)) b!2424609))

(assert (= (or b!2424617 b!2424615 b!2424619) bm!148290))

(declare-fun m!2810229 () Bool)

(assert (=> b!2424620 m!2810229))

(declare-fun m!2810231 () Bool)

(assert (=> bm!148290 m!2810231))

(declare-fun m!2810233 () Bool)

(assert (=> b!2424610 m!2810233))

(assert (=> b!2424610 m!2810233))

(declare-fun m!2810235 () Bool)

(assert (=> b!2424610 m!2810235))

(assert (=> b!2424622 m!2810233))

(assert (=> b!2424622 m!2810233))

(assert (=> b!2424622 m!2810235))

(declare-fun m!2810237 () Bool)

(assert (=> b!2424614 m!2810237))

(assert (=> d!702363 m!2810231))

(declare-fun m!2810239 () Bool)

(assert (=> d!702363 m!2810239))

(assert (=> b!2424612 m!2810229))

(assert (=> b!2424612 m!2810229))

(declare-fun m!2810241 () Bool)

(assert (=> b!2424612 m!2810241))

(assert (=> b!2424612 m!2810233))

(assert (=> b!2424612 m!2810241))

(assert (=> b!2424612 m!2810233))

(declare-fun m!2810243 () Bool)

(assert (=> b!2424612 m!2810243))

(assert (=> b!2424609 m!2810229))

(assert (=> b!2424310 d!702363))

(declare-fun d!702365 () Bool)

(assert (=> d!702365 (isDefined!4451 (findConcatSeparation!733 lt!875944 EmptyExpr!7124 Nil!28389 s!9460 s!9460))))

(declare-fun lt!876037 () Unit!41603)

(declare-fun choose!14358 (Regex!7124 Regex!7124 List!28487) Unit!41603)

(assert (=> d!702365 (= lt!876037 (choose!14358 lt!875944 EmptyExpr!7124 s!9460))))

(assert (=> d!702365 (validRegex!2844 lt!875944)))

(assert (=> d!702365 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!73 lt!875944 EmptyExpr!7124 s!9460) lt!876037)))

(declare-fun bs!463861 () Bool)

(assert (= bs!463861 d!702365))

(declare-fun m!2810245 () Bool)

(assert (=> bs!463861 m!2810245))

(assert (=> bs!463861 m!2810245))

(declare-fun m!2810247 () Bool)

(assert (=> bs!463861 m!2810247))

(declare-fun m!2810249 () Bool)

(assert (=> bs!463861 m!2810249))

(assert (=> bs!463861 m!2810077))

(assert (=> b!2424310 d!702365))

(declare-fun bs!463862 () Bool)

(declare-fun d!702367 () Bool)

(assert (= bs!463862 (and d!702367 start!237458)))

(declare-fun lambda!91320 () Int)

(assert (=> bs!463862 (= lambda!91320 lambda!91310)))

(declare-fun bs!463863 () Bool)

(assert (= bs!463863 (and d!702367 d!702333)))

(assert (=> bs!463863 (= lambda!91320 lambda!91316)))

(declare-fun bs!463864 () Bool)

(assert (= bs!463864 (and d!702367 d!702357)))

(assert (=> bs!463864 (= lambda!91320 lambda!91317)))

(declare-fun b!2424623 () Bool)

(declare-fun e!1542318 () Bool)

(declare-fun e!1542322 () Bool)

(assert (=> b!2424623 (= e!1542318 e!1542322)))

(declare-fun c!386675 () Bool)

(assert (=> b!2424623 (= c!386675 (isEmpty!16419 lt!875946))))

(declare-fun b!2424624 () Bool)

(declare-fun e!1542320 () Regex!7124)

(declare-fun e!1542317 () Regex!7124)

(assert (=> b!2424624 (= e!1542320 e!1542317)))

(declare-fun c!386674 () Bool)

(assert (=> b!2424624 (= c!386674 (is-Cons!28388 lt!875946))))

(declare-fun b!2424625 () Bool)

(assert (=> b!2424625 (= e!1542317 (Concat!11760 (h!33789 lt!875946) (generalisedConcat!225 (t!208463 lt!875946))))))

(declare-fun b!2424626 () Bool)

(declare-fun e!1542319 () Bool)

(declare-fun lt!876038 () Regex!7124)

(assert (=> b!2424626 (= e!1542319 (= lt!876038 (head!5460 lt!875946)))))

(declare-fun b!2424627 () Bool)

(assert (=> b!2424627 (= e!1542319 (isConcat!179 lt!876038))))

(assert (=> d!702367 e!1542318))

(declare-fun res!1029776 () Bool)

(assert (=> d!702367 (=> (not res!1029776) (not e!1542318))))

(assert (=> d!702367 (= res!1029776 (validRegex!2844 lt!876038))))

(assert (=> d!702367 (= lt!876038 e!1542320)))

(declare-fun c!386673 () Bool)

(declare-fun e!1542321 () Bool)

(assert (=> d!702367 (= c!386673 e!1542321)))

(declare-fun res!1029775 () Bool)

(assert (=> d!702367 (=> (not res!1029775) (not e!1542321))))

(assert (=> d!702367 (= res!1029775 (is-Cons!28388 lt!875946))))

(assert (=> d!702367 (forall!5758 lt!875946 lambda!91320)))

(assert (=> d!702367 (= (generalisedConcat!225 lt!875946) lt!876038)))

(declare-fun b!2424628 () Bool)

(assert (=> b!2424628 (= e!1542322 (isEmptyExpr!179 lt!876038))))

(declare-fun b!2424629 () Bool)

(assert (=> b!2424629 (= e!1542322 e!1542319)))

(declare-fun c!386676 () Bool)

(assert (=> b!2424629 (= c!386676 (isEmpty!16419 (tail!3732 lt!875946)))))

(declare-fun b!2424630 () Bool)

(assert (=> b!2424630 (= e!1542320 (h!33789 lt!875946))))

(declare-fun b!2424631 () Bool)

(assert (=> b!2424631 (= e!1542317 EmptyExpr!7124)))

(declare-fun b!2424632 () Bool)

(assert (=> b!2424632 (= e!1542321 (isEmpty!16419 (t!208463 lt!875946)))))

(assert (= (and d!702367 res!1029775) b!2424632))

(assert (= (and d!702367 c!386673) b!2424630))

(assert (= (and d!702367 (not c!386673)) b!2424624))

(assert (= (and b!2424624 c!386674) b!2424625))

(assert (= (and b!2424624 (not c!386674)) b!2424631))

(assert (= (and d!702367 res!1029776) b!2424623))

(assert (= (and b!2424623 c!386675) b!2424628))

(assert (= (and b!2424623 (not c!386675)) b!2424629))

(assert (= (and b!2424629 c!386676) b!2424626))

(assert (= (and b!2424629 (not c!386676)) b!2424627))

(declare-fun m!2810251 () Bool)

(assert (=> d!702367 m!2810251))

(declare-fun m!2810253 () Bool)

(assert (=> d!702367 m!2810253))

(declare-fun m!2810255 () Bool)

(assert (=> b!2424632 m!2810255))

(assert (=> b!2424623 m!2809967))

(declare-fun m!2810257 () Bool)

(assert (=> b!2424629 m!2810257))

(assert (=> b!2424629 m!2810257))

(declare-fun m!2810259 () Bool)

(assert (=> b!2424629 m!2810259))

(declare-fun m!2810261 () Bool)

(assert (=> b!2424627 m!2810261))

(declare-fun m!2810263 () Bool)

(assert (=> b!2424628 m!2810263))

(declare-fun m!2810265 () Bool)

(assert (=> b!2424626 m!2810265))

(declare-fun m!2810267 () Bool)

(assert (=> b!2424625 m!2810267))

(assert (=> b!2424317 d!702367))

(declare-fun b!2424633 () Bool)

(declare-fun e!1542327 () Bool)

(assert (=> b!2424633 (= e!1542327 (not (= (head!5462 s!9460) (c!386601 lt!875944))))))

(declare-fun b!2424634 () Bool)

(declare-fun res!1029784 () Bool)

(assert (=> b!2424634 (=> res!1029784 e!1542327)))

(assert (=> b!2424634 (= res!1029784 (not (isEmpty!16418 (tail!3734 s!9460))))))

(declare-fun b!2424635 () Bool)

(declare-fun e!1542324 () Bool)

(declare-fun lt!876039 () Bool)

(assert (=> b!2424635 (= e!1542324 (not lt!876039))))

(declare-fun b!2424636 () Bool)

(declare-fun e!1542326 () Bool)

(assert (=> b!2424636 (= e!1542326 (matchR!3241 (derivativeStep!1816 lt!875944 (head!5462 s!9460)) (tail!3734 s!9460)))))

(declare-fun b!2424637 () Bool)

(declare-fun e!1542328 () Bool)

(assert (=> b!2424637 (= e!1542328 e!1542324)))

(declare-fun c!386678 () Bool)

(assert (=> b!2424637 (= c!386678 (is-EmptyLang!7124 lt!875944))))

(declare-fun b!2424638 () Bool)

(assert (=> b!2424638 (= e!1542326 (nullable!2159 lt!875944))))

(declare-fun b!2424639 () Bool)

(declare-fun e!1542323 () Bool)

(assert (=> b!2424639 (= e!1542323 e!1542327)))

(declare-fun res!1029779 () Bool)

(assert (=> b!2424639 (=> res!1029779 e!1542327)))

(declare-fun call!148296 () Bool)

(assert (=> b!2424639 (= res!1029779 call!148296)))

(declare-fun b!2424640 () Bool)

(declare-fun e!1542329 () Bool)

(assert (=> b!2424640 (= e!1542329 e!1542323)))

(declare-fun res!1029777 () Bool)

(assert (=> b!2424640 (=> (not res!1029777) (not e!1542323))))

(assert (=> b!2424640 (= res!1029777 (not lt!876039))))

(declare-fun b!2424641 () Bool)

(assert (=> b!2424641 (= e!1542328 (= lt!876039 call!148296))))

(declare-fun d!702369 () Bool)

(assert (=> d!702369 e!1542328))

(declare-fun c!386679 () Bool)

(assert (=> d!702369 (= c!386679 (is-EmptyExpr!7124 lt!875944))))

(assert (=> d!702369 (= lt!876039 e!1542326)))

(declare-fun c!386677 () Bool)

(assert (=> d!702369 (= c!386677 (isEmpty!16418 s!9460))))

(assert (=> d!702369 (validRegex!2844 lt!875944)))

(assert (=> d!702369 (= (matchR!3241 lt!875944 s!9460) lt!876039)))

(declare-fun b!2424642 () Bool)

(declare-fun res!1029783 () Bool)

(assert (=> b!2424642 (=> res!1029783 e!1542329)))

(declare-fun e!1542325 () Bool)

(assert (=> b!2424642 (= res!1029783 e!1542325)))

(declare-fun res!1029778 () Bool)

(assert (=> b!2424642 (=> (not res!1029778) (not e!1542325))))

(assert (=> b!2424642 (= res!1029778 lt!876039)))

(declare-fun bm!148291 () Bool)

(assert (=> bm!148291 (= call!148296 (isEmpty!16418 s!9460))))

(declare-fun b!2424643 () Bool)

(declare-fun res!1029780 () Bool)

(assert (=> b!2424643 (=> (not res!1029780) (not e!1542325))))

(assert (=> b!2424643 (= res!1029780 (not call!148296))))

(declare-fun b!2424644 () Bool)

(assert (=> b!2424644 (= e!1542325 (= (head!5462 s!9460) (c!386601 lt!875944)))))

(declare-fun b!2424645 () Bool)

(declare-fun res!1029782 () Bool)

(assert (=> b!2424645 (=> res!1029782 e!1542329)))

(assert (=> b!2424645 (= res!1029782 (not (is-ElementMatch!7124 lt!875944)))))

(assert (=> b!2424645 (= e!1542324 e!1542329)))

(declare-fun b!2424646 () Bool)

(declare-fun res!1029781 () Bool)

(assert (=> b!2424646 (=> (not res!1029781) (not e!1542325))))

(assert (=> b!2424646 (= res!1029781 (isEmpty!16418 (tail!3734 s!9460)))))

(assert (= (and d!702369 c!386677) b!2424638))

(assert (= (and d!702369 (not c!386677)) b!2424636))

(assert (= (and d!702369 c!386679) b!2424641))

(assert (= (and d!702369 (not c!386679)) b!2424637))

(assert (= (and b!2424637 c!386678) b!2424635))

(assert (= (and b!2424637 (not c!386678)) b!2424645))

(assert (= (and b!2424645 (not res!1029782)) b!2424642))

(assert (= (and b!2424642 res!1029778) b!2424643))

(assert (= (and b!2424643 res!1029780) b!2424646))

(assert (= (and b!2424646 res!1029781) b!2424644))

(assert (= (and b!2424642 (not res!1029783)) b!2424640))

(assert (= (and b!2424640 res!1029777) b!2424639))

(assert (= (and b!2424639 (not res!1029779)) b!2424634))

(assert (= (and b!2424634 (not res!1029784)) b!2424633))

(assert (= (or b!2424641 b!2424639 b!2424643) bm!148291))

(declare-fun m!2810269 () Bool)

(assert (=> b!2424644 m!2810269))

(assert (=> bm!148291 m!2810001))

(declare-fun m!2810271 () Bool)

(assert (=> b!2424634 m!2810271))

(assert (=> b!2424634 m!2810271))

(declare-fun m!2810273 () Bool)

(assert (=> b!2424634 m!2810273))

(assert (=> b!2424646 m!2810271))

(assert (=> b!2424646 m!2810271))

(assert (=> b!2424646 m!2810273))

(declare-fun m!2810275 () Bool)

(assert (=> b!2424638 m!2810275))

(assert (=> d!702369 m!2810001))

(assert (=> d!702369 m!2810077))

(assert (=> b!2424636 m!2810269))

(assert (=> b!2424636 m!2810269))

(declare-fun m!2810277 () Bool)

(assert (=> b!2424636 m!2810277))

(assert (=> b!2424636 m!2810271))

(assert (=> b!2424636 m!2810277))

(assert (=> b!2424636 m!2810271))

(declare-fun m!2810279 () Bool)

(assert (=> b!2424636 m!2810279))

(assert (=> b!2424633 m!2810269))

(assert (=> b!2424304 d!702369))

(declare-fun d!702371 () Bool)

(assert (=> d!702371 (= (head!5460 l!9164) (h!33789 l!9164))))

(assert (=> b!2424304 d!702371))

(declare-fun d!702373 () Bool)

(assert (=> d!702373 (= (isEmpty!16419 lt!875946) (is-Nil!28388 lt!875946))))

(assert (=> b!2424312 d!702373))

(declare-fun d!702375 () Bool)

(assert (=> d!702375 (= (tail!3732 l!9164) (t!208463 l!9164))))

(assert (=> b!2424312 d!702375))

(declare-fun d!702377 () Bool)

(declare-fun res!1029791 () Bool)

(declare-fun e!1542340 () Bool)

(assert (=> d!702377 (=> res!1029791 e!1542340)))

(assert (=> d!702377 (= res!1029791 (is-Nil!28388 l!9164))))

(assert (=> d!702377 (= (forall!5758 l!9164 lambda!91310) e!1542340)))

(declare-fun b!2424661 () Bool)

(declare-fun e!1542341 () Bool)

(assert (=> b!2424661 (= e!1542340 e!1542341)))

(declare-fun res!1029792 () Bool)

(assert (=> b!2424661 (=> (not res!1029792) (not e!1542341))))

(declare-fun dynLambda!12218 (Int Regex!7124) Bool)

(assert (=> b!2424661 (= res!1029792 (dynLambda!12218 lambda!91310 (h!33789 l!9164)))))

(declare-fun b!2424662 () Bool)

(assert (=> b!2424662 (= e!1542341 (forall!5758 (t!208463 l!9164) lambda!91310))))

(assert (= (and d!702377 (not res!1029791)) b!2424661))

(assert (= (and b!2424661 res!1029792) b!2424662))

(declare-fun b_lambda!74683 () Bool)

(assert (=> (not b_lambda!74683) (not b!2424661)))

(declare-fun m!2810301 () Bool)

(assert (=> b!2424661 m!2810301))

(declare-fun m!2810303 () Bool)

(assert (=> b!2424662 m!2810303))

(assert (=> start!237458 d!702377))

(declare-fun d!702381 () Bool)

(assert (=> d!702381 (matchR!3241 (Concat!11760 lt!875944 EmptyExpr!7124) (++!7045 (_1!16555 lt!875948) (_2!16555 lt!875948)))))

(declare-fun lt!876047 () Unit!41603)

(declare-fun choose!14359 (Regex!7124 Regex!7124 List!28487 List!28487 List!28487) Unit!41603)

(assert (=> d!702381 (= lt!876047 (choose!14359 lt!875944 EmptyExpr!7124 (_1!16555 lt!875948) (_2!16555 lt!875948) s!9460))))

(assert (=> d!702381 (validRegex!2844 lt!875944)))

(assert (=> d!702381 (= (lemmaFindSeparationIsDefinedThenConcatMatches!73 lt!875944 EmptyExpr!7124 (_1!16555 lt!875948) (_2!16555 lt!875948) s!9460) lt!876047)))

(declare-fun bs!463868 () Bool)

(assert (= bs!463868 d!702381))

(declare-fun m!2810315 () Bool)

(assert (=> bs!463868 m!2810315))

(assert (=> bs!463868 m!2810315))

(declare-fun m!2810317 () Bool)

(assert (=> bs!463868 m!2810317))

(declare-fun m!2810319 () Bool)

(assert (=> bs!463868 m!2810319))

(assert (=> bs!463868 m!2810077))

(assert (=> b!2424303 d!702381))

(declare-fun d!702385 () Bool)

(assert (=> d!702385 (= (get!8739 lt!875937) (v!31032 lt!875937))))

(assert (=> b!2424303 d!702385))

(declare-fun b!2424719 () Bool)

(assert (=> b!2424719 true))

(assert (=> b!2424719 true))

(declare-fun bs!463869 () Bool)

(declare-fun b!2424727 () Bool)

(assert (= bs!463869 (and b!2424727 b!2424719)))

(declare-fun lambda!91328 () Int)

(declare-fun lambda!91327 () Int)

(assert (=> bs!463869 (not (= lambda!91328 lambda!91327))))

(assert (=> b!2424727 true))

(assert (=> b!2424727 true))

(declare-fun b!2424717 () Bool)

(declare-fun e!1542376 () Bool)

(declare-fun e!1542375 () Bool)

(assert (=> b!2424717 (= e!1542376 e!1542375)))

(declare-fun res!1029820 () Bool)

(assert (=> b!2424717 (= res!1029820 (matchRSpec!973 (regOne!14761 r!13927) s!9460))))

(assert (=> b!2424717 (=> res!1029820 e!1542375)))

(declare-fun d!702387 () Bool)

(declare-fun c!386699 () Bool)

(assert (=> d!702387 (= c!386699 (is-EmptyExpr!7124 r!13927))))

(declare-fun e!1542378 () Bool)

(assert (=> d!702387 (= (matchRSpec!973 r!13927 s!9460) e!1542378)))

(declare-fun b!2424718 () Bool)

(declare-fun e!1542380 () Bool)

(assert (=> b!2424718 (= e!1542378 e!1542380)))

(declare-fun res!1029819 () Bool)

(assert (=> b!2424718 (= res!1029819 (not (is-EmptyLang!7124 r!13927)))))

(assert (=> b!2424718 (=> (not res!1029819) (not e!1542380))))

(declare-fun e!1542377 () Bool)

(declare-fun call!148302 () Bool)

(assert (=> b!2424719 (= e!1542377 call!148302)))

(declare-fun b!2424720 () Bool)

(declare-fun e!1542374 () Bool)

(assert (=> b!2424720 (= e!1542374 (= s!9460 (Cons!28389 (c!386601 r!13927) Nil!28389)))))

(declare-fun b!2424721 () Bool)

(declare-fun c!386698 () Bool)

(assert (=> b!2424721 (= c!386698 (is-ElementMatch!7124 r!13927))))

(assert (=> b!2424721 (= e!1542380 e!1542374)))

(declare-fun b!2424722 () Bool)

(declare-fun res!1029821 () Bool)

(assert (=> b!2424722 (=> res!1029821 e!1542377)))

(declare-fun call!148301 () Bool)

(assert (=> b!2424722 (= res!1029821 call!148301)))

(declare-fun e!1542379 () Bool)

(assert (=> b!2424722 (= e!1542379 e!1542377)))

(declare-fun b!2424723 () Bool)

(declare-fun c!386700 () Bool)

(assert (=> b!2424723 (= c!386700 (is-Union!7124 r!13927))))

(assert (=> b!2424723 (= e!1542374 e!1542376)))

(declare-fun b!2424724 () Bool)

(assert (=> b!2424724 (= e!1542375 (matchRSpec!973 (regTwo!14761 r!13927) s!9460))))

(declare-fun b!2424725 () Bool)

(assert (=> b!2424725 (= e!1542378 call!148301)))

(declare-fun bm!148296 () Bool)

(assert (=> bm!148296 (= call!148301 (isEmpty!16418 s!9460))))

(declare-fun b!2424726 () Bool)

(assert (=> b!2424726 (= e!1542376 e!1542379)))

(declare-fun c!386701 () Bool)

(assert (=> b!2424726 (= c!386701 (is-Star!7124 r!13927))))

(assert (=> b!2424727 (= e!1542379 call!148302)))

(declare-fun bm!148297 () Bool)

(declare-fun Exists!1164 (Int) Bool)

(assert (=> bm!148297 (= call!148302 (Exists!1164 (ite c!386701 lambda!91327 lambda!91328)))))

(assert (= (and d!702387 c!386699) b!2424725))

(assert (= (and d!702387 (not c!386699)) b!2424718))

(assert (= (and b!2424718 res!1029819) b!2424721))

(assert (= (and b!2424721 c!386698) b!2424720))

(assert (= (and b!2424721 (not c!386698)) b!2424723))

(assert (= (and b!2424723 c!386700) b!2424717))

(assert (= (and b!2424723 (not c!386700)) b!2424726))

(assert (= (and b!2424717 (not res!1029820)) b!2424724))

(assert (= (and b!2424726 c!386701) b!2424722))

(assert (= (and b!2424726 (not c!386701)) b!2424727))

(assert (= (and b!2424722 (not res!1029821)) b!2424719))

(assert (= (or b!2424719 b!2424727) bm!148297))

(assert (= (or b!2424725 b!2424722) bm!148296))

(declare-fun m!2810343 () Bool)

(assert (=> b!2424717 m!2810343))

(declare-fun m!2810345 () Bool)

(assert (=> b!2424724 m!2810345))

(assert (=> bm!148296 m!2810001))

(declare-fun m!2810347 () Bool)

(assert (=> bm!148297 m!2810347))

(assert (=> b!2424320 d!702387))

(declare-fun b!2424732 () Bool)

(declare-fun e!1542385 () Bool)

(assert (=> b!2424732 (= e!1542385 (not (= (head!5462 s!9460) (c!386601 r!13927))))))

(declare-fun b!2424733 () Bool)

(declare-fun res!1029829 () Bool)

(assert (=> b!2424733 (=> res!1029829 e!1542385)))

(assert (=> b!2424733 (= res!1029829 (not (isEmpty!16418 (tail!3734 s!9460))))))

(declare-fun b!2424734 () Bool)

(declare-fun e!1542382 () Bool)

(declare-fun lt!876051 () Bool)

(assert (=> b!2424734 (= e!1542382 (not lt!876051))))

(declare-fun b!2424735 () Bool)

(declare-fun e!1542384 () Bool)

(assert (=> b!2424735 (= e!1542384 (matchR!3241 (derivativeStep!1816 r!13927 (head!5462 s!9460)) (tail!3734 s!9460)))))

(declare-fun b!2424736 () Bool)

(declare-fun e!1542386 () Bool)

(assert (=> b!2424736 (= e!1542386 e!1542382)))

(declare-fun c!386703 () Bool)

(assert (=> b!2424736 (= c!386703 (is-EmptyLang!7124 r!13927))))

(declare-fun b!2424737 () Bool)

(assert (=> b!2424737 (= e!1542384 (nullable!2159 r!13927))))

(declare-fun b!2424738 () Bool)

(declare-fun e!1542381 () Bool)

(assert (=> b!2424738 (= e!1542381 e!1542385)))

(declare-fun res!1029824 () Bool)

(assert (=> b!2424738 (=> res!1029824 e!1542385)))

(declare-fun call!148303 () Bool)

(assert (=> b!2424738 (= res!1029824 call!148303)))

(declare-fun b!2424739 () Bool)

(declare-fun e!1542387 () Bool)

(assert (=> b!2424739 (= e!1542387 e!1542381)))

(declare-fun res!1029822 () Bool)

(assert (=> b!2424739 (=> (not res!1029822) (not e!1542381))))

(assert (=> b!2424739 (= res!1029822 (not lt!876051))))

(declare-fun b!2424740 () Bool)

(assert (=> b!2424740 (= e!1542386 (= lt!876051 call!148303))))

(declare-fun d!702395 () Bool)

(assert (=> d!702395 e!1542386))

(declare-fun c!386704 () Bool)

(assert (=> d!702395 (= c!386704 (is-EmptyExpr!7124 r!13927))))

(assert (=> d!702395 (= lt!876051 e!1542384)))

(declare-fun c!386702 () Bool)

(assert (=> d!702395 (= c!386702 (isEmpty!16418 s!9460))))

(assert (=> d!702395 (validRegex!2844 r!13927)))

(assert (=> d!702395 (= (matchR!3241 r!13927 s!9460) lt!876051)))

(declare-fun b!2424741 () Bool)

(declare-fun res!1029828 () Bool)

(assert (=> b!2424741 (=> res!1029828 e!1542387)))

(declare-fun e!1542383 () Bool)

(assert (=> b!2424741 (= res!1029828 e!1542383)))

(declare-fun res!1029823 () Bool)

(assert (=> b!2424741 (=> (not res!1029823) (not e!1542383))))

(assert (=> b!2424741 (= res!1029823 lt!876051)))

(declare-fun bm!148298 () Bool)

(assert (=> bm!148298 (= call!148303 (isEmpty!16418 s!9460))))

(declare-fun b!2424742 () Bool)

(declare-fun res!1029825 () Bool)

(assert (=> b!2424742 (=> (not res!1029825) (not e!1542383))))

(assert (=> b!2424742 (= res!1029825 (not call!148303))))

(declare-fun b!2424743 () Bool)

(assert (=> b!2424743 (= e!1542383 (= (head!5462 s!9460) (c!386601 r!13927)))))

(declare-fun b!2424744 () Bool)

(declare-fun res!1029827 () Bool)

(assert (=> b!2424744 (=> res!1029827 e!1542387)))

(assert (=> b!2424744 (= res!1029827 (not (is-ElementMatch!7124 r!13927)))))

(assert (=> b!2424744 (= e!1542382 e!1542387)))

(declare-fun b!2424745 () Bool)

(declare-fun res!1029826 () Bool)

(assert (=> b!2424745 (=> (not res!1029826) (not e!1542383))))

(assert (=> b!2424745 (= res!1029826 (isEmpty!16418 (tail!3734 s!9460)))))

(assert (= (and d!702395 c!386702) b!2424737))

(assert (= (and d!702395 (not c!386702)) b!2424735))

(assert (= (and d!702395 c!386704) b!2424740))

(assert (= (and d!702395 (not c!386704)) b!2424736))

(assert (= (and b!2424736 c!386703) b!2424734))

(assert (= (and b!2424736 (not c!386703)) b!2424744))

(assert (= (and b!2424744 (not res!1029827)) b!2424741))

(assert (= (and b!2424741 res!1029823) b!2424742))

(assert (= (and b!2424742 res!1029825) b!2424745))

(assert (= (and b!2424745 res!1029826) b!2424743))

(assert (= (and b!2424741 (not res!1029828)) b!2424739))

(assert (= (and b!2424739 res!1029822) b!2424738))

(assert (= (and b!2424738 (not res!1029824)) b!2424733))

(assert (= (and b!2424733 (not res!1029829)) b!2424732))

(assert (= (or b!2424740 b!2424738 b!2424742) bm!148298))

(assert (=> b!2424743 m!2810269))

(assert (=> bm!148298 m!2810001))

(assert (=> b!2424733 m!2810271))

(assert (=> b!2424733 m!2810271))

(assert (=> b!2424733 m!2810273))

(assert (=> b!2424745 m!2810271))

(assert (=> b!2424745 m!2810271))

(assert (=> b!2424745 m!2810273))

(declare-fun m!2810349 () Bool)

(assert (=> b!2424737 m!2810349))

(assert (=> d!702395 m!2810001))

(declare-fun m!2810351 () Bool)

(assert (=> d!702395 m!2810351))

(assert (=> b!2424735 m!2810269))

(assert (=> b!2424735 m!2810269))

(declare-fun m!2810353 () Bool)

(assert (=> b!2424735 m!2810353))

(assert (=> b!2424735 m!2810271))

(assert (=> b!2424735 m!2810353))

(assert (=> b!2424735 m!2810271))

(declare-fun m!2810355 () Bool)

(assert (=> b!2424735 m!2810355))

(assert (=> b!2424732 m!2810269))

(assert (=> b!2424320 d!702395))

(declare-fun d!702397 () Bool)

(assert (=> d!702397 (= (matchR!3241 r!13927 s!9460) (matchRSpec!973 r!13927 s!9460))))

(declare-fun lt!876054 () Unit!41603)

(declare-fun choose!14360 (Regex!7124 List!28487) Unit!41603)

(assert (=> d!702397 (= lt!876054 (choose!14360 r!13927 s!9460))))

(assert (=> d!702397 (validRegex!2844 r!13927)))

(assert (=> d!702397 (= (mainMatchTheorem!973 r!13927 s!9460) lt!876054)))

(declare-fun bs!463870 () Bool)

(assert (= bs!463870 d!702397))

(assert (=> bs!463870 m!2809985))

(assert (=> bs!463870 m!2809983))

(declare-fun m!2810357 () Bool)

(assert (=> bs!463870 m!2810357))

(assert (=> bs!463870 m!2810351))

(assert (=> b!2424320 d!702397))

(declare-fun b!2424746 () Bool)

(declare-fun e!1542390 () Bool)

(assert (=> b!2424746 (= e!1542390 (matchR!3241 (ite c!386599 lt!875949 EmptyExpr!7124) s!9460))))

(declare-fun b!2424747 () Bool)

(declare-fun lt!876056 () Unit!41603)

(declare-fun lt!876057 () Unit!41603)

(assert (=> b!2424747 (= lt!876056 lt!876057)))

(assert (=> b!2424747 (= (++!7045 (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460)) s!9460)))

(assert (=> b!2424747 (= lt!876057 (lemmaMoveElementToOtherListKeepsConcatEq!671 Nil!28389 (h!33790 s!9460) (t!208464 s!9460) s!9460))))

(declare-fun e!1542392 () Option!5625)

(assert (=> b!2424747 (= e!1542392 (findConcatSeparation!733 lt!875944 (ite c!386599 lt!875949 EmptyExpr!7124) (++!7045 Nil!28389 (Cons!28389 (h!33790 s!9460) Nil!28389)) (t!208464 s!9460) s!9460))))

(declare-fun b!2424748 () Bool)

(declare-fun e!1542391 () Option!5625)

(assert (=> b!2424748 (= e!1542391 e!1542392)))

(declare-fun c!386705 () Bool)

(assert (=> b!2424748 (= c!386705 (is-Nil!28389 s!9460))))

(declare-fun b!2424749 () Bool)

(declare-fun e!1542388 () Bool)

(declare-fun lt!876055 () Option!5625)

(assert (=> b!2424749 (= e!1542388 (not (isDefined!4451 lt!876055)))))

(declare-fun b!2424751 () Bool)

(declare-fun res!1029834 () Bool)

(declare-fun e!1542389 () Bool)

(assert (=> b!2424751 (=> (not res!1029834) (not e!1542389))))

(assert (=> b!2424751 (= res!1029834 (matchR!3241 lt!875944 (_1!16555 (get!8739 lt!876055))))))

(declare-fun b!2424752 () Bool)

(assert (=> b!2424752 (= e!1542389 (= (++!7045 (_1!16555 (get!8739 lt!876055)) (_2!16555 (get!8739 lt!876055))) s!9460))))

(declare-fun b!2424750 () Bool)

(declare-fun res!1029831 () Bool)

(assert (=> b!2424750 (=> (not res!1029831) (not e!1542389))))

(assert (=> b!2424750 (= res!1029831 (matchR!3241 (ite c!386599 lt!875949 EmptyExpr!7124) (_2!16555 (get!8739 lt!876055))))))

(declare-fun d!702399 () Bool)

(assert (=> d!702399 e!1542388))

(declare-fun res!1029832 () Bool)

(assert (=> d!702399 (=> res!1029832 e!1542388)))

(assert (=> d!702399 (= res!1029832 e!1542389)))

(declare-fun res!1029830 () Bool)

(assert (=> d!702399 (=> (not res!1029830) (not e!1542389))))

(assert (=> d!702399 (= res!1029830 (isDefined!4451 lt!876055))))

(assert (=> d!702399 (= lt!876055 e!1542391)))

(declare-fun c!386706 () Bool)

(assert (=> d!702399 (= c!386706 e!1542390)))

(declare-fun res!1029833 () Bool)

(assert (=> d!702399 (=> (not res!1029833) (not e!1542390))))

(assert (=> d!702399 (= res!1029833 (matchR!3241 lt!875944 Nil!28389))))

(assert (=> d!702399 (validRegex!2844 lt!875944)))

(assert (=> d!702399 (= (findConcatSeparation!733 lt!875944 (ite c!386599 lt!875949 EmptyExpr!7124) Nil!28389 s!9460 s!9460) lt!876055)))

(declare-fun b!2424753 () Bool)

(assert (=> b!2424753 (= e!1542391 (Some!5624 (tuple2!28029 Nil!28389 s!9460)))))

(declare-fun b!2424754 () Bool)

(assert (=> b!2424754 (= e!1542392 None!5624)))

(assert (= (and d!702399 res!1029833) b!2424746))

(assert (= (and d!702399 c!386706) b!2424753))

(assert (= (and d!702399 (not c!386706)) b!2424748))

(assert (= (and b!2424748 c!386705) b!2424754))

(assert (= (and b!2424748 (not c!386705)) b!2424747))

(assert (= (and d!702399 res!1029830) b!2424751))

(assert (= (and b!2424751 res!1029834) b!2424750))

(assert (= (and b!2424750 res!1029831) b!2424752))

(assert (= (and d!702399 (not res!1029832)) b!2424749))

(declare-fun m!2810359 () Bool)

(assert (=> b!2424749 m!2810359))

(declare-fun m!2810361 () Bool)

(assert (=> b!2424750 m!2810361))

(declare-fun m!2810363 () Bool)

(assert (=> b!2424750 m!2810363))

(assert (=> b!2424752 m!2810361))

(declare-fun m!2810365 () Bool)

(assert (=> b!2424752 m!2810365))

(declare-fun m!2810367 () Bool)

(assert (=> b!2424746 m!2810367))

(assert (=> d!702399 m!2810359))

(assert (=> d!702399 m!2810075))

(assert (=> d!702399 m!2810077))

(assert (=> b!2424747 m!2810079))

(assert (=> b!2424747 m!2810079))

(assert (=> b!2424747 m!2810081))

(assert (=> b!2424747 m!2810083))

(assert (=> b!2424747 m!2810079))

(declare-fun m!2810369 () Bool)

(assert (=> b!2424747 m!2810369))

(assert (=> b!2424751 m!2810361))

(declare-fun m!2810371 () Bool)

(assert (=> b!2424751 m!2810371))

(assert (=> bm!148257 d!702399))

(declare-fun b!2424765 () Bool)

(declare-fun e!1542395 () Bool)

(assert (=> b!2424765 (= e!1542395 tp_is_empty!11661)))

(assert (=> b!2424319 (= tp!770044 e!1542395)))

(declare-fun b!2424766 () Bool)

(declare-fun tp!770084 () Bool)

(declare-fun tp!770085 () Bool)

(assert (=> b!2424766 (= e!1542395 (and tp!770084 tp!770085))))

(declare-fun b!2424768 () Bool)

(declare-fun tp!770087 () Bool)

(declare-fun tp!770086 () Bool)

(assert (=> b!2424768 (= e!1542395 (and tp!770087 tp!770086))))

(declare-fun b!2424767 () Bool)

(declare-fun tp!770088 () Bool)

(assert (=> b!2424767 (= e!1542395 tp!770088)))

(assert (= (and b!2424319 (is-ElementMatch!7124 (h!33789 l!9164))) b!2424765))

(assert (= (and b!2424319 (is-Concat!11760 (h!33789 l!9164))) b!2424766))

(assert (= (and b!2424319 (is-Star!7124 (h!33789 l!9164))) b!2424767))

(assert (= (and b!2424319 (is-Union!7124 (h!33789 l!9164))) b!2424768))

(declare-fun b!2424773 () Bool)

(declare-fun e!1542398 () Bool)

(declare-fun tp!770093 () Bool)

(declare-fun tp!770094 () Bool)

(assert (=> b!2424773 (= e!1542398 (and tp!770093 tp!770094))))

(assert (=> b!2424319 (= tp!770046 e!1542398)))

(assert (= (and b!2424319 (is-Cons!28388 (t!208463 l!9164))) b!2424773))

(declare-fun b!2424778 () Bool)

(declare-fun e!1542401 () Bool)

(declare-fun tp!770097 () Bool)

(assert (=> b!2424778 (= e!1542401 (and tp_is_empty!11661 tp!770097))))

(assert (=> b!2424300 (= tp!770047 e!1542401)))

(assert (= (and b!2424300 (is-Cons!28389 (t!208464 s!9460))) b!2424778))

(declare-fun b!2424779 () Bool)

(declare-fun e!1542402 () Bool)

(assert (=> b!2424779 (= e!1542402 tp_is_empty!11661)))

(assert (=> b!2424316 (= tp!770048 e!1542402)))

(declare-fun b!2424780 () Bool)

(declare-fun tp!770098 () Bool)

(declare-fun tp!770099 () Bool)

(assert (=> b!2424780 (= e!1542402 (and tp!770098 tp!770099))))

(declare-fun b!2424782 () Bool)

(declare-fun tp!770101 () Bool)

(declare-fun tp!770100 () Bool)

(assert (=> b!2424782 (= e!1542402 (and tp!770101 tp!770100))))

(declare-fun b!2424781 () Bool)

(declare-fun tp!770102 () Bool)

(assert (=> b!2424781 (= e!1542402 tp!770102)))

(assert (= (and b!2424316 (is-ElementMatch!7124 (regOne!14760 r!13927))) b!2424779))

(assert (= (and b!2424316 (is-Concat!11760 (regOne!14760 r!13927))) b!2424780))

(assert (= (and b!2424316 (is-Star!7124 (regOne!14760 r!13927))) b!2424781))

(assert (= (and b!2424316 (is-Union!7124 (regOne!14760 r!13927))) b!2424782))

(declare-fun b!2424783 () Bool)

(declare-fun e!1542403 () Bool)

(assert (=> b!2424783 (= e!1542403 tp_is_empty!11661)))

(assert (=> b!2424316 (= tp!770049 e!1542403)))

(declare-fun b!2424784 () Bool)

(declare-fun tp!770103 () Bool)

(declare-fun tp!770104 () Bool)

(assert (=> b!2424784 (= e!1542403 (and tp!770103 tp!770104))))

(declare-fun b!2424786 () Bool)

(declare-fun tp!770106 () Bool)

(declare-fun tp!770105 () Bool)

(assert (=> b!2424786 (= e!1542403 (and tp!770106 tp!770105))))

(declare-fun b!2424785 () Bool)

(declare-fun tp!770107 () Bool)

(assert (=> b!2424785 (= e!1542403 tp!770107)))

(assert (= (and b!2424316 (is-ElementMatch!7124 (regTwo!14760 r!13927))) b!2424783))

(assert (= (and b!2424316 (is-Concat!11760 (regTwo!14760 r!13927))) b!2424784))

(assert (= (and b!2424316 (is-Star!7124 (regTwo!14760 r!13927))) b!2424785))

(assert (= (and b!2424316 (is-Union!7124 (regTwo!14760 r!13927))) b!2424786))

(declare-fun b!2424787 () Bool)

(declare-fun e!1542404 () Bool)

(assert (=> b!2424787 (= e!1542404 tp_is_empty!11661)))

(assert (=> b!2424315 (= tp!770043 e!1542404)))

(declare-fun b!2424788 () Bool)

(declare-fun tp!770108 () Bool)

(declare-fun tp!770109 () Bool)

(assert (=> b!2424788 (= e!1542404 (and tp!770108 tp!770109))))

(declare-fun b!2424790 () Bool)

(declare-fun tp!770111 () Bool)

(declare-fun tp!770110 () Bool)

(assert (=> b!2424790 (= e!1542404 (and tp!770111 tp!770110))))

(declare-fun b!2424789 () Bool)

(declare-fun tp!770112 () Bool)

(assert (=> b!2424789 (= e!1542404 tp!770112)))

(assert (= (and b!2424315 (is-ElementMatch!7124 (regOne!14761 r!13927))) b!2424787))

(assert (= (and b!2424315 (is-Concat!11760 (regOne!14761 r!13927))) b!2424788))

(assert (= (and b!2424315 (is-Star!7124 (regOne!14761 r!13927))) b!2424789))

(assert (= (and b!2424315 (is-Union!7124 (regOne!14761 r!13927))) b!2424790))

(declare-fun b!2424791 () Bool)

(declare-fun e!1542405 () Bool)

(assert (=> b!2424791 (= e!1542405 tp_is_empty!11661)))

(assert (=> b!2424315 (= tp!770042 e!1542405)))

(declare-fun b!2424792 () Bool)

(declare-fun tp!770113 () Bool)

(declare-fun tp!770114 () Bool)

(assert (=> b!2424792 (= e!1542405 (and tp!770113 tp!770114))))

(declare-fun b!2424794 () Bool)

(declare-fun tp!770116 () Bool)

(declare-fun tp!770115 () Bool)

(assert (=> b!2424794 (= e!1542405 (and tp!770116 tp!770115))))

(declare-fun b!2424793 () Bool)

(declare-fun tp!770117 () Bool)

(assert (=> b!2424793 (= e!1542405 tp!770117)))

(assert (= (and b!2424315 (is-ElementMatch!7124 (regTwo!14761 r!13927))) b!2424791))

(assert (= (and b!2424315 (is-Concat!11760 (regTwo!14761 r!13927))) b!2424792))

(assert (= (and b!2424315 (is-Star!7124 (regTwo!14761 r!13927))) b!2424793))

(assert (= (and b!2424315 (is-Union!7124 (regTwo!14761 r!13927))) b!2424794))

(declare-fun b!2424795 () Bool)

(declare-fun e!1542406 () Bool)

(assert (=> b!2424795 (= e!1542406 tp_is_empty!11661)))

(assert (=> b!2424302 (= tp!770045 e!1542406)))

(declare-fun b!2424796 () Bool)

(declare-fun tp!770118 () Bool)

(declare-fun tp!770119 () Bool)

(assert (=> b!2424796 (= e!1542406 (and tp!770118 tp!770119))))

(declare-fun b!2424798 () Bool)

(declare-fun tp!770121 () Bool)

(declare-fun tp!770120 () Bool)

(assert (=> b!2424798 (= e!1542406 (and tp!770121 tp!770120))))

(declare-fun b!2424797 () Bool)

(declare-fun tp!770122 () Bool)

(assert (=> b!2424797 (= e!1542406 tp!770122)))

(assert (= (and b!2424302 (is-ElementMatch!7124 (reg!7453 r!13927))) b!2424795))

(assert (= (and b!2424302 (is-Concat!11760 (reg!7453 r!13927))) b!2424796))

(assert (= (and b!2424302 (is-Star!7124 (reg!7453 r!13927))) b!2424797))

(assert (= (and b!2424302 (is-Union!7124 (reg!7453 r!13927))) b!2424798))

(declare-fun b_lambda!74685 () Bool)

(assert (= b_lambda!74683 (or start!237458 b_lambda!74685)))

(declare-fun bs!463871 () Bool)

(declare-fun d!702401 () Bool)

(assert (= bs!463871 (and d!702401 start!237458)))

(assert (=> bs!463871 (= (dynLambda!12218 lambda!91310 (h!33789 l!9164)) (validRegex!2844 (h!33789 l!9164)))))

(assert (=> bs!463871 m!2809977))

(assert (=> b!2424661 d!702401))

(push 1)

(assert (not b!2424737))

(assert (not b!2424464))

(assert (not b!2424614))

(assert (not b!2424538))

(assert (not b!2424743))

(assert (not b!2424463))

(assert (not b!2424752))

(assert (not b!2424598))

(assert (not b!2424751))

(assert (not b!2424544))

(assert (not b!2424628))

(assert (not d!702353))

(assert (not b!2424620))

(assert (not b!2424462))

(assert (not b!2424633))

(assert (not b!2424417))

(assert (not b!2424766))

(assert (not d!702361))

(assert (not d!702381))

(assert (not b!2424778))

(assert (not b!2424558))

(assert (not b!2424746))

(assert (not b!2424510))

(assert (not b!2424545))

(assert (not b!2424745))

(assert (not b!2424540))

(assert (not b!2424790))

(assert (not b!2424414))

(assert (not b!2424506))

(assert (not b!2424505))

(assert (not b!2424662))

(assert (not b!2424612))

(assert (not b!2424780))

(assert (not bm!148297))

(assert (not b!2424461))

(assert (not b!2424717))

(assert (not bm!148291))

(assert (not b!2424782))

(assert (not b!2424784))

(assert (not b!2424543))

(assert (not d!702343))

(assert (not b!2424623))

(assert (not d!702363))

(assert (not b!2424458))

(assert (not bm!148296))

(assert (not b!2424629))

(assert (not d!702365))

(assert (not b!2424609))

(assert (not b!2424794))

(assert (not b!2424735))

(assert (not bm!148290))

(assert (not b!2424627))

(assert (not b!2424626))

(assert (not bm!148288))

(assert (not b!2424549))

(assert (not b!2424797))

(assert (not d!702369))

(assert (not bs!463871))

(assert (not b!2424636))

(assert (not b!2424546))

(assert (not b!2424767))

(assert (not b!2424552))

(assert (not b!2424646))

(assert (not d!702339))

(assert (not b!2424610))

(assert (not b!2424786))

(assert (not b!2424551))

(assert (not b!2424798))

(assert (not bm!148298))

(assert (not b!2424768))

(assert (not b!2424584))

(assert (not b!2424537))

(assert (not b!2424796))

(assert (not b!2424732))

(assert (not b!2424460))

(assert (not b!2424750))

(assert (not bm!148280))

(assert (not b!2424634))

(assert (not b!2424781))

(assert tp_is_empty!11661)

(assert (not b!2424415))

(assert (not d!702335))

(assert (not b!2424541))

(assert (not b!2424638))

(assert (not b!2424632))

(assert (not b!2424553))

(assert (not b!2424747))

(assert (not b!2424516))

(assert (not b!2424773))

(assert (not b!2424622))

(assert (not b!2424785))

(assert (not d!702333))

(assert (not b!2424733))

(assert (not b!2424411))

(assert (not d!702331))

(assert (not b!2424554))

(assert (not b!2424518))

(assert (not d!702355))

(assert (not b!2424789))

(assert (not b!2424508))

(assert (not b!2424749))

(assert (not d!702367))

(assert (not d!702399))

(assert (not d!702357))

(assert (not d!702397))

(assert (not b!2424416))

(assert (not b!2424555))

(assert (not b!2424792))

(assert (not b!2424625))

(assert (not bm!148289))

(assert (not d!702329))

(assert (not b!2424788))

(assert (not b_lambda!74685))

(assert (not b!2424644))

(assert (not d!702395))

(assert (not b!2424467))

(assert (not b!2424412))

(assert (not b!2424724))

(assert (not b!2424793))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

