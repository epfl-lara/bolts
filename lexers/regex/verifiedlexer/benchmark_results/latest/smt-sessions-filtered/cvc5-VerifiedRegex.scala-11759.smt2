; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663880 () Bool)

(assert start!663880)

(declare-fun b!6881597 () Bool)

(assert (=> b!6881597 true))

(assert (=> b!6881597 true))

(assert (=> b!6881597 true))

(declare-fun lambda!389516 () Int)

(declare-fun lambda!389515 () Int)

(assert (=> b!6881597 (not (= lambda!389516 lambda!389515))))

(assert (=> b!6881597 true))

(assert (=> b!6881597 true))

(assert (=> b!6881597 true))

(declare-fun b!6881582 () Bool)

(declare-fun e!4146910 () Bool)

(declare-fun tp!1892550 () Bool)

(assert (=> b!6881582 (= e!4146910 tp!1892550)))

(declare-fun b!6881583 () Bool)

(declare-fun e!4146911 () Bool)

(declare-fun tp!1892538 () Bool)

(declare-fun tp!1892539 () Bool)

(assert (=> b!6881583 (= e!4146911 (and tp!1892538 tp!1892539))))

(declare-fun b!6881584 () Bool)

(declare-fun e!4146913 () Bool)

(declare-fun e!4146914 () Bool)

(assert (=> b!6881584 (= e!4146913 (not e!4146914))))

(declare-fun res!2805227 () Bool)

(assert (=> b!6881584 (=> res!2805227 e!4146914)))

(declare-fun lt!2459801 () Bool)

(assert (=> b!6881584 (= res!2805227 (not lt!2459801))))

(declare-datatypes ((C!33798 0))(
  ( (C!33799 (val!26601 Int)) )
))
(declare-datatypes ((Regex!16764 0))(
  ( (ElementMatch!16764 (c!1280172 C!33798)) (Concat!25609 (regOne!34040 Regex!16764) (regTwo!34040 Regex!16764)) (EmptyExpr!16764) (Star!16764 (reg!17093 Regex!16764)) (EmptyLang!16764) (Union!16764 (regOne!34041 Regex!16764) (regTwo!34041 Regex!16764)) )
))
(declare-fun lt!2459803 () Regex!16764)

(declare-datatypes ((List!66521 0))(
  ( (Nil!66397) (Cons!66397 (h!72845 C!33798) (t!380264 List!66521)) )
))
(declare-fun s!14361 () List!66521)

(declare-fun matchR!8909 (Regex!16764 List!66521) Bool)

(declare-fun matchRSpec!3827 (Regex!16764 List!66521) Bool)

(assert (=> b!6881584 (= (matchR!8909 lt!2459803 s!14361) (matchRSpec!3827 lt!2459803 s!14361))))

(declare-datatypes ((Unit!160248 0))(
  ( (Unit!160249) )
))
(declare-fun lt!2459799 () Unit!160248)

(declare-fun mainMatchTheorem!3827 (Regex!16764 List!66521) Unit!160248)

(assert (=> b!6881584 (= lt!2459799 (mainMatchTheorem!3827 lt!2459803 s!14361))))

(declare-fun lt!2459796 () Regex!16764)

(assert (=> b!6881584 (= lt!2459801 (matchRSpec!3827 lt!2459796 s!14361))))

(assert (=> b!6881584 (= lt!2459801 (matchR!8909 lt!2459796 s!14361))))

(declare-fun lt!2459802 () Unit!160248)

(assert (=> b!6881584 (= lt!2459802 (mainMatchTheorem!3827 lt!2459796 s!14361))))

(declare-fun r1!6342 () Regex!16764)

(declare-fun r3!135 () Regex!16764)

(declare-fun r2!6280 () Regex!16764)

(assert (=> b!6881584 (= lt!2459803 (Concat!25609 r1!6342 (Concat!25609 r2!6280 r3!135)))))

(declare-fun lt!2459798 () Regex!16764)

(assert (=> b!6881584 (= lt!2459796 (Concat!25609 lt!2459798 r3!135))))

(assert (=> b!6881584 (= lt!2459798 (Concat!25609 r1!6342 r2!6280))))

(declare-fun b!6881585 () Bool)

(declare-fun tp_is_empty!42753 () Bool)

(assert (=> b!6881585 (= e!4146910 tp_is_empty!42753)))

(declare-fun b!6881586 () Bool)

(declare-fun tp!1892540 () Bool)

(assert (=> b!6881586 (= e!4146911 tp!1892540)))

(declare-fun b!6881587 () Bool)

(assert (=> b!6881587 (= e!4146911 tp_is_empty!42753)))

(declare-fun b!6881588 () Bool)

(declare-fun e!4146909 () Bool)

(declare-fun tp!1892542 () Bool)

(assert (=> b!6881588 (= e!4146909 tp!1892542)))

(declare-fun b!6881589 () Bool)

(declare-fun tp!1892537 () Bool)

(declare-fun tp!1892549 () Bool)

(assert (=> b!6881589 (= e!4146910 (and tp!1892537 tp!1892549))))

(declare-fun b!6881590 () Bool)

(declare-fun e!4146912 () Bool)

(declare-fun tp!1892551 () Bool)

(assert (=> b!6881590 (= e!4146912 (and tp_is_empty!42753 tp!1892551))))

(declare-fun b!6881591 () Bool)

(declare-fun tp!1892541 () Bool)

(declare-fun tp!1892548 () Bool)

(assert (=> b!6881591 (= e!4146910 (and tp!1892541 tp!1892548))))

(declare-fun b!6881592 () Bool)

(assert (=> b!6881592 (= e!4146909 tp_is_empty!42753)))

(declare-fun b!6881593 () Bool)

(declare-fun res!2805230 () Bool)

(assert (=> b!6881593 (=> (not res!2805230) (not e!4146913))))

(declare-fun validRegex!8472 (Regex!16764) Bool)

(assert (=> b!6881593 (= res!2805230 (validRegex!8472 r3!135))))

(declare-fun b!6881594 () Bool)

(declare-fun tp!1892536 () Bool)

(declare-fun tp!1892543 () Bool)

(assert (=> b!6881594 (= e!4146909 (and tp!1892536 tp!1892543))))

(declare-fun b!6881595 () Bool)

(declare-fun tp!1892545 () Bool)

(declare-fun tp!1892547 () Bool)

(assert (=> b!6881595 (= e!4146909 (and tp!1892545 tp!1892547))))

(declare-fun b!6881596 () Bool)

(declare-fun res!2805229 () Bool)

(assert (=> b!6881596 (=> (not res!2805229) (not e!4146913))))

(assert (=> b!6881596 (= res!2805229 (validRegex!8472 r2!6280))))

(declare-fun res!2805228 () Bool)

(assert (=> start!663880 (=> (not res!2805228) (not e!4146913))))

(assert (=> start!663880 (= res!2805228 (validRegex!8472 r1!6342))))

(assert (=> start!663880 e!4146913))

(assert (=> start!663880 e!4146910))

(assert (=> start!663880 e!4146909))

(assert (=> start!663880 e!4146911))

(assert (=> start!663880 e!4146912))

(declare-fun lt!2459800 () Bool)

(assert (=> b!6881597 (= e!4146914 lt!2459800)))

(declare-fun Exists!3776 (Int) Bool)

(assert (=> b!6881597 (= (Exists!3776 lambda!389515) (Exists!3776 lambda!389516))))

(declare-fun lt!2459797 () Unit!160248)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2255 (Regex!16764 Regex!16764 List!66521) Unit!160248)

(assert (=> b!6881597 (= lt!2459797 (lemmaExistCutMatchRandMatchRSpecEquivalent!2255 lt!2459798 r3!135 s!14361))))

(assert (=> b!6881597 (= lt!2459800 (Exists!3776 lambda!389515))))

(declare-datatypes ((tuple2!67274 0))(
  ( (tuple2!67275 (_1!36940 List!66521) (_2!36940 List!66521)) )
))
(declare-datatypes ((Option!16549 0))(
  ( (None!16548) (Some!16548 (v!52820 tuple2!67274)) )
))
(declare-fun isDefined!13252 (Option!16549) Bool)

(declare-fun findConcatSeparation!2963 (Regex!16764 Regex!16764 List!66521 List!66521 List!66521) Option!16549)

(assert (=> b!6881597 (= lt!2459800 (isDefined!13252 (findConcatSeparation!2963 lt!2459798 r3!135 Nil!66397 s!14361 s!14361)))))

(declare-fun lt!2459804 () Unit!160248)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2727 (Regex!16764 Regex!16764 List!66521) Unit!160248)

(assert (=> b!6881597 (= lt!2459804 (lemmaFindConcatSeparationEquivalentToExists!2727 lt!2459798 r3!135 s!14361))))

(declare-fun b!6881598 () Bool)

(declare-fun tp!1892544 () Bool)

(declare-fun tp!1892546 () Bool)

(assert (=> b!6881598 (= e!4146911 (and tp!1892544 tp!1892546))))

(assert (= (and start!663880 res!2805228) b!6881596))

(assert (= (and b!6881596 res!2805229) b!6881593))

(assert (= (and b!6881593 res!2805230) b!6881584))

(assert (= (and b!6881584 (not res!2805227)) b!6881597))

(assert (= (and start!663880 (is-ElementMatch!16764 r1!6342)) b!6881585))

(assert (= (and start!663880 (is-Concat!25609 r1!6342)) b!6881589))

(assert (= (and start!663880 (is-Star!16764 r1!6342)) b!6881582))

(assert (= (and start!663880 (is-Union!16764 r1!6342)) b!6881591))

(assert (= (and start!663880 (is-ElementMatch!16764 r2!6280)) b!6881592))

(assert (= (and start!663880 (is-Concat!25609 r2!6280)) b!6881594))

(assert (= (and start!663880 (is-Star!16764 r2!6280)) b!6881588))

(assert (= (and start!663880 (is-Union!16764 r2!6280)) b!6881595))

(assert (= (and start!663880 (is-ElementMatch!16764 r3!135)) b!6881587))

(assert (= (and start!663880 (is-Concat!25609 r3!135)) b!6881583))

(assert (= (and start!663880 (is-Star!16764 r3!135)) b!6881586))

(assert (= (and start!663880 (is-Union!16764 r3!135)) b!6881598))

(assert (= (and start!663880 (is-Cons!66397 s!14361)) b!6881590))

(declare-fun m!7606560 () Bool)

(assert (=> b!6881584 m!7606560))

(declare-fun m!7606562 () Bool)

(assert (=> b!6881584 m!7606562))

(declare-fun m!7606564 () Bool)

(assert (=> b!6881584 m!7606564))

(declare-fun m!7606566 () Bool)

(assert (=> b!6881584 m!7606566))

(declare-fun m!7606568 () Bool)

(assert (=> b!6881584 m!7606568))

(declare-fun m!7606570 () Bool)

(assert (=> b!6881584 m!7606570))

(declare-fun m!7606572 () Bool)

(assert (=> b!6881596 m!7606572))

(declare-fun m!7606574 () Bool)

(assert (=> b!6881597 m!7606574))

(declare-fun m!7606576 () Bool)

(assert (=> b!6881597 m!7606576))

(declare-fun m!7606578 () Bool)

(assert (=> b!6881597 m!7606578))

(declare-fun m!7606580 () Bool)

(assert (=> b!6881597 m!7606580))

(assert (=> b!6881597 m!7606578))

(declare-fun m!7606582 () Bool)

(assert (=> b!6881597 m!7606582))

(declare-fun m!7606584 () Bool)

(assert (=> b!6881597 m!7606584))

(assert (=> b!6881597 m!7606584))

(declare-fun m!7606586 () Bool)

(assert (=> start!663880 m!7606586))

(declare-fun m!7606588 () Bool)

(assert (=> b!6881593 m!7606588))

(push 1)

(assert (not b!6881584))

(assert (not b!6881598))

(assert tp_is_empty!42753)

(assert (not b!6881596))

(assert (not b!6881589))

(assert (not b!6881594))

(assert (not b!6881595))

(assert (not b!6881588))

(assert (not b!6881597))

(assert (not b!6881593))

(assert (not b!6881590))

(assert (not b!6881591))

(assert (not b!6881582))

(assert (not b!6881586))

(assert (not start!663880))

(assert (not b!6881583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!1280178 () Bool)

(declare-fun bm!626489 () Bool)

(declare-fun call!626496 () Bool)

(declare-fun c!1280179 () Bool)

(assert (=> bm!626489 (= call!626496 (validRegex!8472 (ite c!1280178 (reg!17093 r3!135) (ite c!1280179 (regOne!34041 r3!135) (regTwo!34040 r3!135)))))))

(declare-fun b!6881688 () Bool)

(declare-fun e!4146955 () Bool)

(declare-fun e!4146953 () Bool)

(assert (=> b!6881688 (= e!4146955 e!4146953)))

(assert (=> b!6881688 (= c!1280178 (is-Star!16764 r3!135))))

(declare-fun b!6881689 () Bool)

(declare-fun e!4146954 () Bool)

(assert (=> b!6881689 (= e!4146953 e!4146954)))

(declare-fun res!2805265 () Bool)

(declare-fun nullable!6675 (Regex!16764) Bool)

(assert (=> b!6881689 (= res!2805265 (not (nullable!6675 (reg!17093 r3!135))))))

(assert (=> b!6881689 (=> (not res!2805265) (not e!4146954))))

(declare-fun d!2160086 () Bool)

(declare-fun res!2805268 () Bool)

(assert (=> d!2160086 (=> res!2805268 e!4146955)))

(assert (=> d!2160086 (= res!2805268 (is-ElementMatch!16764 r3!135))))

(assert (=> d!2160086 (= (validRegex!8472 r3!135) e!4146955)))

(declare-fun b!6881690 () Bool)

(declare-fun e!4146958 () Bool)

(declare-fun e!4146959 () Bool)

(assert (=> b!6881690 (= e!4146958 e!4146959)))

(declare-fun res!2805267 () Bool)

(assert (=> b!6881690 (=> (not res!2805267) (not e!4146959))))

(declare-fun call!626494 () Bool)

(assert (=> b!6881690 (= res!2805267 call!626494)))

(declare-fun b!6881691 () Bool)

(declare-fun call!626495 () Bool)

(assert (=> b!6881691 (= e!4146959 call!626495)))

(declare-fun bm!626490 () Bool)

(assert (=> bm!626490 (= call!626495 call!626496)))

(declare-fun b!6881692 () Bool)

(declare-fun res!2805269 () Bool)

(assert (=> b!6881692 (=> res!2805269 e!4146958)))

(assert (=> b!6881692 (= res!2805269 (not (is-Concat!25609 r3!135)))))

(declare-fun e!4146956 () Bool)

(assert (=> b!6881692 (= e!4146956 e!4146958)))

(declare-fun b!6881693 () Bool)

(declare-fun e!4146957 () Bool)

(assert (=> b!6881693 (= e!4146957 call!626494)))

(declare-fun b!6881694 () Bool)

(declare-fun res!2805266 () Bool)

(assert (=> b!6881694 (=> (not res!2805266) (not e!4146957))))

(assert (=> b!6881694 (= res!2805266 call!626495)))

(assert (=> b!6881694 (= e!4146956 e!4146957)))

(declare-fun b!6881695 () Bool)

(assert (=> b!6881695 (= e!4146953 e!4146956)))

(assert (=> b!6881695 (= c!1280179 (is-Union!16764 r3!135))))

(declare-fun b!6881696 () Bool)

(assert (=> b!6881696 (= e!4146954 call!626496)))

(declare-fun bm!626491 () Bool)

(assert (=> bm!626491 (= call!626494 (validRegex!8472 (ite c!1280179 (regTwo!34041 r3!135) (regOne!34040 r3!135))))))

(assert (= (and d!2160086 (not res!2805268)) b!6881688))

(assert (= (and b!6881688 c!1280178) b!6881689))

(assert (= (and b!6881688 (not c!1280178)) b!6881695))

(assert (= (and b!6881689 res!2805265) b!6881696))

(assert (= (and b!6881695 c!1280179) b!6881694))

(assert (= (and b!6881695 (not c!1280179)) b!6881692))

(assert (= (and b!6881694 res!2805266) b!6881693))

(assert (= (and b!6881692 (not res!2805269)) b!6881690))

(assert (= (and b!6881690 res!2805267) b!6881691))

(assert (= (or b!6881694 b!6881691) bm!626490))

(assert (= (or b!6881693 b!6881690) bm!626491))

(assert (= (or b!6881696 bm!626490) bm!626489))

(declare-fun m!7606620 () Bool)

(assert (=> bm!626489 m!7606620))

(declare-fun m!7606622 () Bool)

(assert (=> b!6881689 m!7606622))

(declare-fun m!7606624 () Bool)

(assert (=> bm!626491 m!7606624))

(assert (=> b!6881593 d!2160086))

(declare-fun call!626499 () Bool)

(declare-fun bm!626492 () Bool)

(declare-fun c!1280181 () Bool)

(declare-fun c!1280180 () Bool)

(assert (=> bm!626492 (= call!626499 (validRegex!8472 (ite c!1280180 (reg!17093 r1!6342) (ite c!1280181 (regOne!34041 r1!6342) (regTwo!34040 r1!6342)))))))

(declare-fun b!6881697 () Bool)

(declare-fun e!4146962 () Bool)

(declare-fun e!4146960 () Bool)

(assert (=> b!6881697 (= e!4146962 e!4146960)))

(assert (=> b!6881697 (= c!1280180 (is-Star!16764 r1!6342))))

(declare-fun b!6881698 () Bool)

(declare-fun e!4146961 () Bool)

(assert (=> b!6881698 (= e!4146960 e!4146961)))

(declare-fun res!2805270 () Bool)

(assert (=> b!6881698 (= res!2805270 (not (nullable!6675 (reg!17093 r1!6342))))))

(assert (=> b!6881698 (=> (not res!2805270) (not e!4146961))))

(declare-fun d!2160088 () Bool)

(declare-fun res!2805273 () Bool)

(assert (=> d!2160088 (=> res!2805273 e!4146962)))

(assert (=> d!2160088 (= res!2805273 (is-ElementMatch!16764 r1!6342))))

(assert (=> d!2160088 (= (validRegex!8472 r1!6342) e!4146962)))

(declare-fun b!6881699 () Bool)

(declare-fun e!4146965 () Bool)

(declare-fun e!4146966 () Bool)

(assert (=> b!6881699 (= e!4146965 e!4146966)))

(declare-fun res!2805272 () Bool)

(assert (=> b!6881699 (=> (not res!2805272) (not e!4146966))))

(declare-fun call!626497 () Bool)

(assert (=> b!6881699 (= res!2805272 call!626497)))

(declare-fun b!6881700 () Bool)

(declare-fun call!626498 () Bool)

(assert (=> b!6881700 (= e!4146966 call!626498)))

(declare-fun bm!626493 () Bool)

(assert (=> bm!626493 (= call!626498 call!626499)))

(declare-fun b!6881701 () Bool)

(declare-fun res!2805274 () Bool)

(assert (=> b!6881701 (=> res!2805274 e!4146965)))

(assert (=> b!6881701 (= res!2805274 (not (is-Concat!25609 r1!6342)))))

(declare-fun e!4146963 () Bool)

(assert (=> b!6881701 (= e!4146963 e!4146965)))

(declare-fun b!6881702 () Bool)

(declare-fun e!4146964 () Bool)

(assert (=> b!6881702 (= e!4146964 call!626497)))

(declare-fun b!6881703 () Bool)

(declare-fun res!2805271 () Bool)

(assert (=> b!6881703 (=> (not res!2805271) (not e!4146964))))

(assert (=> b!6881703 (= res!2805271 call!626498)))

(assert (=> b!6881703 (= e!4146963 e!4146964)))

(declare-fun b!6881704 () Bool)

(assert (=> b!6881704 (= e!4146960 e!4146963)))

(assert (=> b!6881704 (= c!1280181 (is-Union!16764 r1!6342))))

(declare-fun b!6881705 () Bool)

(assert (=> b!6881705 (= e!4146961 call!626499)))

(declare-fun bm!626494 () Bool)

(assert (=> bm!626494 (= call!626497 (validRegex!8472 (ite c!1280181 (regTwo!34041 r1!6342) (regOne!34040 r1!6342))))))

(assert (= (and d!2160088 (not res!2805273)) b!6881697))

(assert (= (and b!6881697 c!1280180) b!6881698))

(assert (= (and b!6881697 (not c!1280180)) b!6881704))

(assert (= (and b!6881698 res!2805270) b!6881705))

(assert (= (and b!6881704 c!1280181) b!6881703))

(assert (= (and b!6881704 (not c!1280181)) b!6881701))

(assert (= (and b!6881703 res!2805271) b!6881702))

(assert (= (and b!6881701 (not res!2805274)) b!6881699))

(assert (= (and b!6881699 res!2805272) b!6881700))

(assert (= (or b!6881703 b!6881700) bm!626493))

(assert (= (or b!6881702 b!6881699) bm!626494))

(assert (= (or b!6881705 bm!626493) bm!626492))

(declare-fun m!7606626 () Bool)

(assert (=> bm!626492 m!7606626))

(declare-fun m!7606628 () Bool)

(assert (=> b!6881698 m!7606628))

(declare-fun m!7606630 () Bool)

(assert (=> bm!626494 m!7606630))

(assert (=> start!663880 d!2160088))

(declare-fun b!6881742 () Bool)

(declare-fun lt!2459839 () Unit!160248)

(declare-fun lt!2459840 () Unit!160248)

(assert (=> b!6881742 (= lt!2459839 lt!2459840)))

(declare-fun ++!14858 (List!66521 List!66521) List!66521)

(assert (=> b!6881742 (= (++!14858 (++!14858 Nil!66397 (Cons!66397 (h!72845 s!14361) Nil!66397)) (t!380264 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2767 (List!66521 C!33798 List!66521 List!66521) Unit!160248)

(assert (=> b!6881742 (= lt!2459840 (lemmaMoveElementToOtherListKeepsConcatEq!2767 Nil!66397 (h!72845 s!14361) (t!380264 s!14361) s!14361))))

(declare-fun e!4146993 () Option!16549)

(assert (=> b!6881742 (= e!4146993 (findConcatSeparation!2963 lt!2459798 r3!135 (++!14858 Nil!66397 (Cons!66397 (h!72845 s!14361) Nil!66397)) (t!380264 s!14361) s!14361))))

(declare-fun d!2160090 () Bool)

(declare-fun e!4146992 () Bool)

(assert (=> d!2160090 e!4146992))

(declare-fun res!2805299 () Bool)

(assert (=> d!2160090 (=> res!2805299 e!4146992)))

(declare-fun e!4146994 () Bool)

(assert (=> d!2160090 (= res!2805299 e!4146994)))

(declare-fun res!2805295 () Bool)

(assert (=> d!2160090 (=> (not res!2805295) (not e!4146994))))

(declare-fun lt!2459838 () Option!16549)

(assert (=> d!2160090 (= res!2805295 (isDefined!13252 lt!2459838))))

(declare-fun e!4146991 () Option!16549)

(assert (=> d!2160090 (= lt!2459838 e!4146991)))

(declare-fun c!1280190 () Bool)

(declare-fun e!4146995 () Bool)

(assert (=> d!2160090 (= c!1280190 e!4146995)))

(declare-fun res!2805298 () Bool)

(assert (=> d!2160090 (=> (not res!2805298) (not e!4146995))))

(assert (=> d!2160090 (= res!2805298 (matchR!8909 lt!2459798 Nil!66397))))

(assert (=> d!2160090 (validRegex!8472 lt!2459798)))

(assert (=> d!2160090 (= (findConcatSeparation!2963 lt!2459798 r3!135 Nil!66397 s!14361 s!14361) lt!2459838)))

(declare-fun b!6881743 () Bool)

(declare-fun res!2805296 () Bool)

(assert (=> b!6881743 (=> (not res!2805296) (not e!4146994))))

(declare-fun get!23110 (Option!16549) tuple2!67274)

(assert (=> b!6881743 (= res!2805296 (matchR!8909 lt!2459798 (_1!36940 (get!23110 lt!2459838))))))

(declare-fun b!6881744 () Bool)

(declare-fun res!2805297 () Bool)

(assert (=> b!6881744 (=> (not res!2805297) (not e!4146994))))

(assert (=> b!6881744 (= res!2805297 (matchR!8909 r3!135 (_2!36940 (get!23110 lt!2459838))))))

(declare-fun b!6881745 () Bool)

(assert (=> b!6881745 (= e!4146995 (matchR!8909 r3!135 s!14361))))

(declare-fun b!6881746 () Bool)

(assert (=> b!6881746 (= e!4146991 e!4146993)))

(declare-fun c!1280191 () Bool)

(assert (=> b!6881746 (= c!1280191 (is-Nil!66397 s!14361))))

(declare-fun b!6881747 () Bool)

(assert (=> b!6881747 (= e!4146993 None!16548)))

(declare-fun b!6881748 () Bool)

(assert (=> b!6881748 (= e!4146992 (not (isDefined!13252 lt!2459838)))))

(declare-fun b!6881749 () Bool)

(assert (=> b!6881749 (= e!4146991 (Some!16548 (tuple2!67275 Nil!66397 s!14361)))))

(declare-fun b!6881750 () Bool)

(assert (=> b!6881750 (= e!4146994 (= (++!14858 (_1!36940 (get!23110 lt!2459838)) (_2!36940 (get!23110 lt!2459838))) s!14361))))

(assert (= (and d!2160090 res!2805298) b!6881745))

(assert (= (and d!2160090 c!1280190) b!6881749))

(assert (= (and d!2160090 (not c!1280190)) b!6881746))

(assert (= (and b!6881746 c!1280191) b!6881747))

(assert (= (and b!6881746 (not c!1280191)) b!6881742))

(assert (= (and d!2160090 res!2805295) b!6881743))

(assert (= (and b!6881743 res!2805296) b!6881744))

(assert (= (and b!6881744 res!2805297) b!6881750))

(assert (= (and d!2160090 (not res!2805299)) b!6881748))

(declare-fun m!7606632 () Bool)

(assert (=> d!2160090 m!7606632))

(declare-fun m!7606634 () Bool)

(assert (=> d!2160090 m!7606634))

(declare-fun m!7606636 () Bool)

(assert (=> d!2160090 m!7606636))

(declare-fun m!7606638 () Bool)

(assert (=> b!6881742 m!7606638))

(assert (=> b!6881742 m!7606638))

(declare-fun m!7606640 () Bool)

(assert (=> b!6881742 m!7606640))

(declare-fun m!7606642 () Bool)

(assert (=> b!6881742 m!7606642))

(assert (=> b!6881742 m!7606638))

(declare-fun m!7606644 () Bool)

(assert (=> b!6881742 m!7606644))

(declare-fun m!7606646 () Bool)

(assert (=> b!6881744 m!7606646))

(declare-fun m!7606648 () Bool)

(assert (=> b!6881744 m!7606648))

(assert (=> b!6881750 m!7606646))

(declare-fun m!7606650 () Bool)

(assert (=> b!6881750 m!7606650))

(declare-fun m!7606652 () Bool)

(assert (=> b!6881745 m!7606652))

(assert (=> b!6881743 m!7606646))

(declare-fun m!7606654 () Bool)

(assert (=> b!6881743 m!7606654))

(assert (=> b!6881748 m!7606632))

(assert (=> b!6881597 d!2160090))

(declare-fun d!2160094 () Bool)

(declare-fun choose!51253 (Int) Bool)

(assert (=> d!2160094 (= (Exists!3776 lambda!389515) (choose!51253 lambda!389515))))

(declare-fun bs!1838120 () Bool)

(assert (= bs!1838120 d!2160094))

(declare-fun m!7606656 () Bool)

(assert (=> bs!1838120 m!7606656))

(assert (=> b!6881597 d!2160094))

(declare-fun bs!1838121 () Bool)

(declare-fun d!2160096 () Bool)

(assert (= bs!1838121 (and d!2160096 b!6881597)))

(declare-fun lambda!389527 () Int)

(assert (=> bs!1838121 (= lambda!389527 lambda!389515)))

(assert (=> bs!1838121 (not (= lambda!389527 lambda!389516))))

(assert (=> d!2160096 true))

(assert (=> d!2160096 true))

(assert (=> d!2160096 true))

(assert (=> d!2160096 (= (isDefined!13252 (findConcatSeparation!2963 lt!2459798 r3!135 Nil!66397 s!14361 s!14361)) (Exists!3776 lambda!389527))))

(declare-fun lt!2459843 () Unit!160248)

(declare-fun choose!51254 (Regex!16764 Regex!16764 List!66521) Unit!160248)

(assert (=> d!2160096 (= lt!2459843 (choose!51254 lt!2459798 r3!135 s!14361))))

(assert (=> d!2160096 (validRegex!8472 lt!2459798)))

(assert (=> d!2160096 (= (lemmaFindConcatSeparationEquivalentToExists!2727 lt!2459798 r3!135 s!14361) lt!2459843)))

(declare-fun bs!1838122 () Bool)

(assert (= bs!1838122 d!2160096))

(assert (=> bs!1838122 m!7606636))

(declare-fun m!7606664 () Bool)

(assert (=> bs!1838122 m!7606664))

(assert (=> bs!1838122 m!7606578))

(assert (=> bs!1838122 m!7606578))

(assert (=> bs!1838122 m!7606582))

(declare-fun m!7606666 () Bool)

(assert (=> bs!1838122 m!7606666))

(assert (=> b!6881597 d!2160096))

(declare-fun d!2160100 () Bool)

(declare-fun isEmpty!38669 (Option!16549) Bool)

(assert (=> d!2160100 (= (isDefined!13252 (findConcatSeparation!2963 lt!2459798 r3!135 Nil!66397 s!14361 s!14361)) (not (isEmpty!38669 (findConcatSeparation!2963 lt!2459798 r3!135 Nil!66397 s!14361 s!14361))))))

(declare-fun bs!1838123 () Bool)

(assert (= bs!1838123 d!2160100))

(assert (=> bs!1838123 m!7606578))

(declare-fun m!7606668 () Bool)

(assert (=> bs!1838123 m!7606668))

(assert (=> b!6881597 d!2160100))

(declare-fun d!2160102 () Bool)

(assert (=> d!2160102 (= (Exists!3776 lambda!389516) (choose!51253 lambda!389516))))

(declare-fun bs!1838124 () Bool)

(assert (= bs!1838124 d!2160102))

(declare-fun m!7606670 () Bool)

(assert (=> bs!1838124 m!7606670))

(assert (=> b!6881597 d!2160102))

(declare-fun bs!1838125 () Bool)

(declare-fun d!2160104 () Bool)

(assert (= bs!1838125 (and d!2160104 b!6881597)))

(declare-fun lambda!389532 () Int)

(assert (=> bs!1838125 (= lambda!389532 lambda!389515)))

(assert (=> bs!1838125 (not (= lambda!389532 lambda!389516))))

(declare-fun bs!1838126 () Bool)

(assert (= bs!1838126 (and d!2160104 d!2160096)))

(assert (=> bs!1838126 (= lambda!389532 lambda!389527)))

(assert (=> d!2160104 true))

(assert (=> d!2160104 true))

(assert (=> d!2160104 true))

(declare-fun lambda!389533 () Int)

(assert (=> bs!1838125 (not (= lambda!389533 lambda!389515))))

(assert (=> bs!1838125 (= lambda!389533 lambda!389516)))

(assert (=> bs!1838126 (not (= lambda!389533 lambda!389527))))

(declare-fun bs!1838127 () Bool)

(assert (= bs!1838127 d!2160104))

(assert (=> bs!1838127 (not (= lambda!389533 lambda!389532))))

(assert (=> d!2160104 true))

(assert (=> d!2160104 true))

(assert (=> d!2160104 true))

(assert (=> d!2160104 (= (Exists!3776 lambda!389532) (Exists!3776 lambda!389533))))

(declare-fun lt!2459846 () Unit!160248)

(declare-fun choose!51255 (Regex!16764 Regex!16764 List!66521) Unit!160248)

(assert (=> d!2160104 (= lt!2459846 (choose!51255 lt!2459798 r3!135 s!14361))))

(assert (=> d!2160104 (validRegex!8472 lt!2459798)))

(assert (=> d!2160104 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2255 lt!2459798 r3!135 s!14361) lt!2459846)))

(declare-fun m!7606672 () Bool)

(assert (=> bs!1838127 m!7606672))

(declare-fun m!7606674 () Bool)

(assert (=> bs!1838127 m!7606674))

(declare-fun m!7606676 () Bool)

(assert (=> bs!1838127 m!7606676))

(assert (=> bs!1838127 m!7606636))

(assert (=> b!6881597 d!2160104))

(declare-fun bm!626504 () Bool)

(declare-fun c!1280201 () Bool)

(declare-fun call!626511 () Bool)

(declare-fun c!1280200 () Bool)

(assert (=> bm!626504 (= call!626511 (validRegex!8472 (ite c!1280200 (reg!17093 r2!6280) (ite c!1280201 (regOne!34041 r2!6280) (regTwo!34040 r2!6280)))))))

(declare-fun b!6881786 () Bool)

(declare-fun e!4147019 () Bool)

(declare-fun e!4147017 () Bool)

(assert (=> b!6881786 (= e!4147019 e!4147017)))

(assert (=> b!6881786 (= c!1280200 (is-Star!16764 r2!6280))))

(declare-fun b!6881787 () Bool)

(declare-fun e!4147018 () Bool)

(assert (=> b!6881787 (= e!4147017 e!4147018)))

(declare-fun res!2805319 () Bool)

(assert (=> b!6881787 (= res!2805319 (not (nullable!6675 (reg!17093 r2!6280))))))

(assert (=> b!6881787 (=> (not res!2805319) (not e!4147018))))

(declare-fun d!2160106 () Bool)

(declare-fun res!2805322 () Bool)

(assert (=> d!2160106 (=> res!2805322 e!4147019)))

(assert (=> d!2160106 (= res!2805322 (is-ElementMatch!16764 r2!6280))))

(assert (=> d!2160106 (= (validRegex!8472 r2!6280) e!4147019)))

(declare-fun b!6881788 () Bool)

(declare-fun e!4147022 () Bool)

(declare-fun e!4147023 () Bool)

(assert (=> b!6881788 (= e!4147022 e!4147023)))

(declare-fun res!2805321 () Bool)

(assert (=> b!6881788 (=> (not res!2805321) (not e!4147023))))

(declare-fun call!626509 () Bool)

(assert (=> b!6881788 (= res!2805321 call!626509)))

(declare-fun b!6881789 () Bool)

(declare-fun call!626510 () Bool)

(assert (=> b!6881789 (= e!4147023 call!626510)))

(declare-fun bm!626505 () Bool)

(assert (=> bm!626505 (= call!626510 call!626511)))

(declare-fun b!6881790 () Bool)

(declare-fun res!2805323 () Bool)

(assert (=> b!6881790 (=> res!2805323 e!4147022)))

(assert (=> b!6881790 (= res!2805323 (not (is-Concat!25609 r2!6280)))))

(declare-fun e!4147020 () Bool)

(assert (=> b!6881790 (= e!4147020 e!4147022)))

(declare-fun b!6881791 () Bool)

(declare-fun e!4147021 () Bool)

(assert (=> b!6881791 (= e!4147021 call!626509)))

(declare-fun b!6881792 () Bool)

(declare-fun res!2805320 () Bool)

(assert (=> b!6881792 (=> (not res!2805320) (not e!4147021))))

(assert (=> b!6881792 (= res!2805320 call!626510)))

(assert (=> b!6881792 (= e!4147020 e!4147021)))

(declare-fun b!6881793 () Bool)

(assert (=> b!6881793 (= e!4147017 e!4147020)))

(assert (=> b!6881793 (= c!1280201 (is-Union!16764 r2!6280))))

(declare-fun b!6881794 () Bool)

(assert (=> b!6881794 (= e!4147018 call!626511)))

(declare-fun bm!626506 () Bool)

(assert (=> bm!626506 (= call!626509 (validRegex!8472 (ite c!1280201 (regTwo!34041 r2!6280) (regOne!34040 r2!6280))))))

(assert (= (and d!2160106 (not res!2805322)) b!6881786))

(assert (= (and b!6881786 c!1280200) b!6881787))

(assert (= (and b!6881786 (not c!1280200)) b!6881793))

(assert (= (and b!6881787 res!2805319) b!6881794))

(assert (= (and b!6881793 c!1280201) b!6881792))

(assert (= (and b!6881793 (not c!1280201)) b!6881790))

(assert (= (and b!6881792 res!2805320) b!6881791))

(assert (= (and b!6881790 (not res!2805323)) b!6881788))

(assert (= (and b!6881788 res!2805321) b!6881789))

(assert (= (or b!6881792 b!6881789) bm!626505))

(assert (= (or b!6881791 b!6881788) bm!626506))

(assert (= (or b!6881794 bm!626505) bm!626504))

(declare-fun m!7606678 () Bool)

(assert (=> bm!626504 m!7606678))

(declare-fun m!7606680 () Bool)

(assert (=> b!6881787 m!7606680))

(declare-fun m!7606682 () Bool)

(assert (=> bm!626506 m!7606682))

(assert (=> b!6881596 d!2160106))

(declare-fun bs!1838128 () Bool)

(declare-fun b!6881856 () Bool)

(assert (= bs!1838128 (and b!6881856 b!6881597)))

(declare-fun lambda!389538 () Int)

(assert (=> bs!1838128 (not (= lambda!389538 lambda!389515))))

(assert (=> bs!1838128 (not (= lambda!389538 lambda!389516))))

(declare-fun bs!1838129 () Bool)

(assert (= bs!1838129 (and b!6881856 d!2160096)))

(assert (=> bs!1838129 (not (= lambda!389538 lambda!389527))))

(declare-fun bs!1838130 () Bool)

(assert (= bs!1838130 (and b!6881856 d!2160104)))

(assert (=> bs!1838130 (not (= lambda!389538 lambda!389533))))

(assert (=> bs!1838130 (not (= lambda!389538 lambda!389532))))

(assert (=> b!6881856 true))

(assert (=> b!6881856 true))

(declare-fun bs!1838131 () Bool)

(declare-fun b!6881860 () Bool)

(assert (= bs!1838131 (and b!6881860 b!6881856)))

(declare-fun lambda!389539 () Int)

(assert (=> bs!1838131 (not (= lambda!389539 lambda!389538))))

(declare-fun bs!1838132 () Bool)

(assert (= bs!1838132 (and b!6881860 b!6881597)))

(assert (=> bs!1838132 (not (= lambda!389539 lambda!389515))))

(assert (=> bs!1838132 (= (and (= (regOne!34040 lt!2459796) lt!2459798) (= (regTwo!34040 lt!2459796) r3!135)) (= lambda!389539 lambda!389516))))

(declare-fun bs!1838133 () Bool)

(assert (= bs!1838133 (and b!6881860 d!2160096)))

(assert (=> bs!1838133 (not (= lambda!389539 lambda!389527))))

(declare-fun bs!1838134 () Bool)

(assert (= bs!1838134 (and b!6881860 d!2160104)))

(assert (=> bs!1838134 (= (and (= (regOne!34040 lt!2459796) lt!2459798) (= (regTwo!34040 lt!2459796) r3!135)) (= lambda!389539 lambda!389533))))

(assert (=> bs!1838134 (not (= lambda!389539 lambda!389532))))

(assert (=> b!6881860 true))

(assert (=> b!6881860 true))

(declare-fun b!6881855 () Bool)

(declare-fun c!1280216 () Bool)

(assert (=> b!6881855 (= c!1280216 (is-ElementMatch!16764 lt!2459796))))

(declare-fun e!4147060 () Bool)

(declare-fun e!4147057 () Bool)

(assert (=> b!6881855 (= e!4147060 e!4147057)))

(declare-fun e!4147056 () Bool)

(declare-fun call!626520 () Bool)

(assert (=> b!6881856 (= e!4147056 call!626520)))

(declare-fun b!6881857 () Bool)

(assert (=> b!6881857 (= e!4147057 (= s!14361 (Cons!66397 (c!1280172 lt!2459796) Nil!66397)))))

(declare-fun b!6881858 () Bool)

(declare-fun c!1280213 () Bool)

(assert (=> b!6881858 (= c!1280213 (is-Union!16764 lt!2459796))))

(declare-fun e!4147061 () Bool)

(assert (=> b!6881858 (= e!4147057 e!4147061)))

(declare-fun b!6881859 () Bool)

(declare-fun e!4147058 () Bool)

(assert (=> b!6881859 (= e!4147061 e!4147058)))

(declare-fun c!1280214 () Bool)

(assert (=> b!6881859 (= c!1280214 (is-Star!16764 lt!2459796))))

(assert (=> b!6881860 (= e!4147058 call!626520)))

(declare-fun b!6881861 () Bool)

(declare-fun e!4147059 () Bool)

(assert (=> b!6881861 (= e!4147061 e!4147059)))

(declare-fun res!2805362 () Bool)

(assert (=> b!6881861 (= res!2805362 (matchRSpec!3827 (regOne!34041 lt!2459796) s!14361))))

(assert (=> b!6881861 (=> res!2805362 e!4147059)))

(declare-fun b!6881862 () Bool)

(assert (=> b!6881862 (= e!4147059 (matchRSpec!3827 (regTwo!34041 lt!2459796) s!14361))))

(declare-fun b!6881863 () Bool)

(declare-fun res!2805363 () Bool)

(assert (=> b!6881863 (=> res!2805363 e!4147056)))

(declare-fun call!626519 () Bool)

(assert (=> b!6881863 (= res!2805363 call!626519)))

(assert (=> b!6881863 (= e!4147058 e!4147056)))

(declare-fun bm!626514 () Bool)

(declare-fun isEmpty!38670 (List!66521) Bool)

(assert (=> bm!626514 (= call!626519 (isEmpty!38670 s!14361))))

(declare-fun b!6881864 () Bool)

(declare-fun e!4147055 () Bool)

(assert (=> b!6881864 (= e!4147055 e!4147060)))

(declare-fun res!2805364 () Bool)

(assert (=> b!6881864 (= res!2805364 (not (is-EmptyLang!16764 lt!2459796)))))

(assert (=> b!6881864 (=> (not res!2805364) (not e!4147060))))

(declare-fun bm!626515 () Bool)

(assert (=> bm!626515 (= call!626520 (Exists!3776 (ite c!1280214 lambda!389538 lambda!389539)))))

(declare-fun d!2160108 () Bool)

(declare-fun c!1280215 () Bool)

(assert (=> d!2160108 (= c!1280215 (is-EmptyExpr!16764 lt!2459796))))

(assert (=> d!2160108 (= (matchRSpec!3827 lt!2459796 s!14361) e!4147055)))

(declare-fun b!6881865 () Bool)

(assert (=> b!6881865 (= e!4147055 call!626519)))

(assert (= (and d!2160108 c!1280215) b!6881865))

(assert (= (and d!2160108 (not c!1280215)) b!6881864))

(assert (= (and b!6881864 res!2805364) b!6881855))

(assert (= (and b!6881855 c!1280216) b!6881857))

(assert (= (and b!6881855 (not c!1280216)) b!6881858))

(assert (= (and b!6881858 c!1280213) b!6881861))

(assert (= (and b!6881858 (not c!1280213)) b!6881859))

(assert (= (and b!6881861 (not res!2805362)) b!6881862))

(assert (= (and b!6881859 c!1280214) b!6881863))

(assert (= (and b!6881859 (not c!1280214)) b!6881860))

(assert (= (and b!6881863 (not res!2805363)) b!6881856))

(assert (= (or b!6881856 b!6881860) bm!626515))

(assert (= (or b!6881865 b!6881863) bm!626514))

(declare-fun m!7606700 () Bool)

(assert (=> b!6881861 m!7606700))

(declare-fun m!7606702 () Bool)

(assert (=> b!6881862 m!7606702))

(declare-fun m!7606704 () Bool)

(assert (=> bm!626514 m!7606704))

(declare-fun m!7606706 () Bool)

(assert (=> bm!626515 m!7606706))

(assert (=> b!6881584 d!2160108))

(declare-fun d!2160112 () Bool)

(declare-fun e!4147086 () Bool)

(assert (=> d!2160112 e!4147086))

(declare-fun c!1280226 () Bool)

(assert (=> d!2160112 (= c!1280226 (is-EmptyExpr!16764 lt!2459803))))

(declare-fun lt!2459856 () Bool)

(declare-fun e!4147087 () Bool)

(assert (=> d!2160112 (= lt!2459856 e!4147087)))

(declare-fun c!1280228 () Bool)

(assert (=> d!2160112 (= c!1280228 (isEmpty!38670 s!14361))))

(assert (=> d!2160112 (validRegex!8472 lt!2459803)))

(assert (=> d!2160112 (= (matchR!8909 lt!2459803 s!14361) lt!2459856)))

(declare-fun b!6881908 () Bool)

(declare-fun derivativeStep!5354 (Regex!16764 C!33798) Regex!16764)

(declare-fun head!13807 (List!66521) C!33798)

(declare-fun tail!12859 (List!66521) List!66521)

(assert (=> b!6881908 (= e!4147087 (matchR!8909 (derivativeStep!5354 lt!2459803 (head!13807 s!14361)) (tail!12859 s!14361)))))

(declare-fun b!6881909 () Bool)

(declare-fun e!4147085 () Bool)

(declare-fun e!4147083 () Bool)

(assert (=> b!6881909 (= e!4147085 e!4147083)))

(declare-fun res!2805389 () Bool)

(assert (=> b!6881909 (=> (not res!2805389) (not e!4147083))))

(assert (=> b!6881909 (= res!2805389 (not lt!2459856))))

(declare-fun b!6881910 () Bool)

(declare-fun res!2805392 () Bool)

(declare-fun e!4147089 () Bool)

(assert (=> b!6881910 (=> (not res!2805392) (not e!4147089))))

(assert (=> b!6881910 (= res!2805392 (isEmpty!38670 (tail!12859 s!14361)))))

(declare-fun bm!626519 () Bool)

(declare-fun call!626524 () Bool)

(assert (=> bm!626519 (= call!626524 (isEmpty!38670 s!14361))))

(declare-fun b!6881911 () Bool)

(assert (=> b!6881911 (= e!4147087 (nullable!6675 lt!2459803))))

(declare-fun b!6881912 () Bool)

(assert (=> b!6881912 (= e!4147086 (= lt!2459856 call!626524))))

(declare-fun b!6881913 () Bool)

(declare-fun res!2805393 () Bool)

(assert (=> b!6881913 (=> res!2805393 e!4147085)))

(assert (=> b!6881913 (= res!2805393 (not (is-ElementMatch!16764 lt!2459803)))))

(declare-fun e!4147084 () Bool)

(assert (=> b!6881913 (= e!4147084 e!4147085)))

(declare-fun b!6881914 () Bool)

(declare-fun e!4147088 () Bool)

(assert (=> b!6881914 (= e!4147083 e!4147088)))

(declare-fun res!2805396 () Bool)

(assert (=> b!6881914 (=> res!2805396 e!4147088)))

(assert (=> b!6881914 (= res!2805396 call!626524)))

(declare-fun b!6881915 () Bool)

(declare-fun res!2805390 () Bool)

(assert (=> b!6881915 (=> res!2805390 e!4147085)))

(assert (=> b!6881915 (= res!2805390 e!4147089)))

(declare-fun res!2805391 () Bool)

(assert (=> b!6881915 (=> (not res!2805391) (not e!4147089))))

(assert (=> b!6881915 (= res!2805391 lt!2459856)))

(declare-fun b!6881916 () Bool)

(assert (=> b!6881916 (= e!4147088 (not (= (head!13807 s!14361) (c!1280172 lt!2459803))))))

(declare-fun b!6881917 () Bool)

(declare-fun res!2805394 () Bool)

(assert (=> b!6881917 (=> res!2805394 e!4147088)))

(assert (=> b!6881917 (= res!2805394 (not (isEmpty!38670 (tail!12859 s!14361))))))

(declare-fun b!6881918 () Bool)

(assert (=> b!6881918 (= e!4147086 e!4147084)))

(declare-fun c!1280227 () Bool)

(assert (=> b!6881918 (= c!1280227 (is-EmptyLang!16764 lt!2459803))))

(declare-fun b!6881919 () Bool)

(declare-fun res!2805395 () Bool)

(assert (=> b!6881919 (=> (not res!2805395) (not e!4147089))))

(assert (=> b!6881919 (= res!2805395 (not call!626524))))

(declare-fun b!6881920 () Bool)

(assert (=> b!6881920 (= e!4147084 (not lt!2459856))))

(declare-fun b!6881921 () Bool)

(assert (=> b!6881921 (= e!4147089 (= (head!13807 s!14361) (c!1280172 lt!2459803)))))

(assert (= (and d!2160112 c!1280228) b!6881911))

(assert (= (and d!2160112 (not c!1280228)) b!6881908))

(assert (= (and d!2160112 c!1280226) b!6881912))

(assert (= (and d!2160112 (not c!1280226)) b!6881918))

(assert (= (and b!6881918 c!1280227) b!6881920))

(assert (= (and b!6881918 (not c!1280227)) b!6881913))

(assert (= (and b!6881913 (not res!2805393)) b!6881915))

(assert (= (and b!6881915 res!2805391) b!6881919))

(assert (= (and b!6881919 res!2805395) b!6881910))

(assert (= (and b!6881910 res!2805392) b!6881921))

(assert (= (and b!6881915 (not res!2805390)) b!6881909))

(assert (= (and b!6881909 res!2805389) b!6881914))

(assert (= (and b!6881914 (not res!2805396)) b!6881917))

(assert (= (and b!6881917 (not res!2805394)) b!6881916))

(assert (= (or b!6881912 b!6881914 b!6881919) bm!626519))

(assert (=> d!2160112 m!7606704))

(declare-fun m!7606718 () Bool)

(assert (=> d!2160112 m!7606718))

(declare-fun m!7606720 () Bool)

(assert (=> b!6881921 m!7606720))

(declare-fun m!7606722 () Bool)

(assert (=> b!6881917 m!7606722))

(assert (=> b!6881917 m!7606722))

(declare-fun m!7606724 () Bool)

(assert (=> b!6881917 m!7606724))

(assert (=> b!6881910 m!7606722))

(assert (=> b!6881910 m!7606722))

(assert (=> b!6881910 m!7606724))

(assert (=> b!6881916 m!7606720))

(assert (=> b!6881908 m!7606720))

(assert (=> b!6881908 m!7606720))

(declare-fun m!7606726 () Bool)

(assert (=> b!6881908 m!7606726))

(assert (=> b!6881908 m!7606722))

(assert (=> b!6881908 m!7606726))

(assert (=> b!6881908 m!7606722))

(declare-fun m!7606728 () Bool)

(assert (=> b!6881908 m!7606728))

(assert (=> bm!626519 m!7606704))

(declare-fun m!7606730 () Bool)

(assert (=> b!6881911 m!7606730))

(assert (=> b!6881584 d!2160112))

(declare-fun d!2160118 () Bool)

(declare-fun e!4147093 () Bool)

(assert (=> d!2160118 e!4147093))

(declare-fun c!1280229 () Bool)

(assert (=> d!2160118 (= c!1280229 (is-EmptyExpr!16764 lt!2459796))))

(declare-fun lt!2459857 () Bool)

(declare-fun e!4147094 () Bool)

(assert (=> d!2160118 (= lt!2459857 e!4147094)))

(declare-fun c!1280231 () Bool)

(assert (=> d!2160118 (= c!1280231 (isEmpty!38670 s!14361))))

(assert (=> d!2160118 (validRegex!8472 lt!2459796)))

(assert (=> d!2160118 (= (matchR!8909 lt!2459796 s!14361) lt!2459857)))

(declare-fun b!6881922 () Bool)

(assert (=> b!6881922 (= e!4147094 (matchR!8909 (derivativeStep!5354 lt!2459796 (head!13807 s!14361)) (tail!12859 s!14361)))))

(declare-fun b!6881923 () Bool)

(declare-fun e!4147092 () Bool)

(declare-fun e!4147090 () Bool)

(assert (=> b!6881923 (= e!4147092 e!4147090)))

(declare-fun res!2805397 () Bool)

(assert (=> b!6881923 (=> (not res!2805397) (not e!4147090))))

(assert (=> b!6881923 (= res!2805397 (not lt!2459857))))

(declare-fun b!6881924 () Bool)

(declare-fun res!2805400 () Bool)

(declare-fun e!4147096 () Bool)

(assert (=> b!6881924 (=> (not res!2805400) (not e!4147096))))

(assert (=> b!6881924 (= res!2805400 (isEmpty!38670 (tail!12859 s!14361)))))

(declare-fun bm!626520 () Bool)

(declare-fun call!626525 () Bool)

(assert (=> bm!626520 (= call!626525 (isEmpty!38670 s!14361))))

(declare-fun b!6881925 () Bool)

(assert (=> b!6881925 (= e!4147094 (nullable!6675 lt!2459796))))

(declare-fun b!6881926 () Bool)

(assert (=> b!6881926 (= e!4147093 (= lt!2459857 call!626525))))

(declare-fun b!6881927 () Bool)

(declare-fun res!2805401 () Bool)

(assert (=> b!6881927 (=> res!2805401 e!4147092)))

(assert (=> b!6881927 (= res!2805401 (not (is-ElementMatch!16764 lt!2459796)))))

(declare-fun e!4147091 () Bool)

(assert (=> b!6881927 (= e!4147091 e!4147092)))

(declare-fun b!6881928 () Bool)

(declare-fun e!4147095 () Bool)

(assert (=> b!6881928 (= e!4147090 e!4147095)))

(declare-fun res!2805404 () Bool)

(assert (=> b!6881928 (=> res!2805404 e!4147095)))

(assert (=> b!6881928 (= res!2805404 call!626525)))

(declare-fun b!6881929 () Bool)

(declare-fun res!2805398 () Bool)

(assert (=> b!6881929 (=> res!2805398 e!4147092)))

(assert (=> b!6881929 (= res!2805398 e!4147096)))

(declare-fun res!2805399 () Bool)

(assert (=> b!6881929 (=> (not res!2805399) (not e!4147096))))

(assert (=> b!6881929 (= res!2805399 lt!2459857)))

(declare-fun b!6881930 () Bool)

(assert (=> b!6881930 (= e!4147095 (not (= (head!13807 s!14361) (c!1280172 lt!2459796))))))

(declare-fun b!6881931 () Bool)

(declare-fun res!2805402 () Bool)

(assert (=> b!6881931 (=> res!2805402 e!4147095)))

(assert (=> b!6881931 (= res!2805402 (not (isEmpty!38670 (tail!12859 s!14361))))))

(declare-fun b!6881932 () Bool)

(assert (=> b!6881932 (= e!4147093 e!4147091)))

(declare-fun c!1280230 () Bool)

(assert (=> b!6881932 (= c!1280230 (is-EmptyLang!16764 lt!2459796))))

(declare-fun b!6881933 () Bool)

(declare-fun res!2805403 () Bool)

(assert (=> b!6881933 (=> (not res!2805403) (not e!4147096))))

(assert (=> b!6881933 (= res!2805403 (not call!626525))))

(declare-fun b!6881934 () Bool)

(assert (=> b!6881934 (= e!4147091 (not lt!2459857))))

(declare-fun b!6881935 () Bool)

(assert (=> b!6881935 (= e!4147096 (= (head!13807 s!14361) (c!1280172 lt!2459796)))))

(assert (= (and d!2160118 c!1280231) b!6881925))

(assert (= (and d!2160118 (not c!1280231)) b!6881922))

(assert (= (and d!2160118 c!1280229) b!6881926))

(assert (= (and d!2160118 (not c!1280229)) b!6881932))

(assert (= (and b!6881932 c!1280230) b!6881934))

(assert (= (and b!6881932 (not c!1280230)) b!6881927))

(assert (= (and b!6881927 (not res!2805401)) b!6881929))

(assert (= (and b!6881929 res!2805399) b!6881933))

(assert (= (and b!6881933 res!2805403) b!6881924))

(assert (= (and b!6881924 res!2805400) b!6881935))

(assert (= (and b!6881929 (not res!2805398)) b!6881923))

(assert (= (and b!6881923 res!2805397) b!6881928))

(assert (= (and b!6881928 (not res!2805404)) b!6881931))

(assert (= (and b!6881931 (not res!2805402)) b!6881930))

(assert (= (or b!6881926 b!6881928 b!6881933) bm!626520))

(assert (=> d!2160118 m!7606704))

(declare-fun m!7606732 () Bool)

(assert (=> d!2160118 m!7606732))

(assert (=> b!6881935 m!7606720))

(assert (=> b!6881931 m!7606722))

(assert (=> b!6881931 m!7606722))

(assert (=> b!6881931 m!7606724))

(assert (=> b!6881924 m!7606722))

(assert (=> b!6881924 m!7606722))

(assert (=> b!6881924 m!7606724))

(assert (=> b!6881930 m!7606720))

(assert (=> b!6881922 m!7606720))

(assert (=> b!6881922 m!7606720))

(declare-fun m!7606734 () Bool)

(assert (=> b!6881922 m!7606734))

(assert (=> b!6881922 m!7606722))

(assert (=> b!6881922 m!7606734))

(assert (=> b!6881922 m!7606722))

(declare-fun m!7606736 () Bool)

(assert (=> b!6881922 m!7606736))

(assert (=> bm!626520 m!7606704))

(declare-fun m!7606738 () Bool)

(assert (=> b!6881925 m!7606738))

(assert (=> b!6881584 d!2160118))

(declare-fun d!2160120 () Bool)

(assert (=> d!2160120 (= (matchR!8909 lt!2459796 s!14361) (matchRSpec!3827 lt!2459796 s!14361))))

(declare-fun lt!2459860 () Unit!160248)

(declare-fun choose!51256 (Regex!16764 List!66521) Unit!160248)

(assert (=> d!2160120 (= lt!2459860 (choose!51256 lt!2459796 s!14361))))

(assert (=> d!2160120 (validRegex!8472 lt!2459796)))

(assert (=> d!2160120 (= (mainMatchTheorem!3827 lt!2459796 s!14361) lt!2459860)))

(declare-fun bs!1838136 () Bool)

(assert (= bs!1838136 d!2160120))

(assert (=> bs!1838136 m!7606568))

(assert (=> bs!1838136 m!7606560))

(declare-fun m!7606740 () Bool)

(assert (=> bs!1838136 m!7606740))

(assert (=> bs!1838136 m!7606732))

(assert (=> b!6881584 d!2160120))

(declare-fun d!2160122 () Bool)

(assert (=> d!2160122 (= (matchR!8909 lt!2459803 s!14361) (matchRSpec!3827 lt!2459803 s!14361))))

(declare-fun lt!2459861 () Unit!160248)

(assert (=> d!2160122 (= lt!2459861 (choose!51256 lt!2459803 s!14361))))

(assert (=> d!2160122 (validRegex!8472 lt!2459803)))

(assert (=> d!2160122 (= (mainMatchTheorem!3827 lt!2459803 s!14361) lt!2459861)))

(declare-fun bs!1838137 () Bool)

(assert (= bs!1838137 d!2160122))

(assert (=> bs!1838137 m!7606564))

(assert (=> bs!1838137 m!7606570))

(declare-fun m!7606742 () Bool)

(assert (=> bs!1838137 m!7606742))

(assert (=> bs!1838137 m!7606718))

(assert (=> b!6881584 d!2160122))

(declare-fun bs!1838138 () Bool)

(declare-fun b!6881937 () Bool)

(assert (= bs!1838138 (and b!6881937 b!6881856)))

(declare-fun lambda!389540 () Int)

(assert (=> bs!1838138 (= (and (= (reg!17093 lt!2459803) (reg!17093 lt!2459796)) (= lt!2459803 lt!2459796)) (= lambda!389540 lambda!389538))))

(declare-fun bs!1838139 () Bool)

(assert (= bs!1838139 (and b!6881937 b!6881597)))

(assert (=> bs!1838139 (not (= lambda!389540 lambda!389515))))

(assert (=> bs!1838139 (not (= lambda!389540 lambda!389516))))

(declare-fun bs!1838140 () Bool)

(assert (= bs!1838140 (and b!6881937 d!2160096)))

(assert (=> bs!1838140 (not (= lambda!389540 lambda!389527))))

(declare-fun bs!1838141 () Bool)

(assert (= bs!1838141 (and b!6881937 d!2160104)))

(assert (=> bs!1838141 (not (= lambda!389540 lambda!389533))))

(assert (=> bs!1838141 (not (= lambda!389540 lambda!389532))))

(declare-fun bs!1838142 () Bool)

(assert (= bs!1838142 (and b!6881937 b!6881860)))

(assert (=> bs!1838142 (not (= lambda!389540 lambda!389539))))

(assert (=> b!6881937 true))

(assert (=> b!6881937 true))

(declare-fun bs!1838143 () Bool)

(declare-fun b!6881941 () Bool)

(assert (= bs!1838143 (and b!6881941 b!6881856)))

(declare-fun lambda!389541 () Int)

(assert (=> bs!1838143 (not (= lambda!389541 lambda!389538))))

(declare-fun bs!1838144 () Bool)

(assert (= bs!1838144 (and b!6881941 b!6881597)))

(assert (=> bs!1838144 (not (= lambda!389541 lambda!389515))))

(assert (=> bs!1838144 (= (and (= (regOne!34040 lt!2459803) lt!2459798) (= (regTwo!34040 lt!2459803) r3!135)) (= lambda!389541 lambda!389516))))

(declare-fun bs!1838145 () Bool)

(assert (= bs!1838145 (and b!6881941 d!2160096)))

(assert (=> bs!1838145 (not (= lambda!389541 lambda!389527))))

(declare-fun bs!1838146 () Bool)

(assert (= bs!1838146 (and b!6881941 d!2160104)))

(assert (=> bs!1838146 (= (and (= (regOne!34040 lt!2459803) lt!2459798) (= (regTwo!34040 lt!2459803) r3!135)) (= lambda!389541 lambda!389533))))

(declare-fun bs!1838147 () Bool)

(assert (= bs!1838147 (and b!6881941 b!6881937)))

(assert (=> bs!1838147 (not (= lambda!389541 lambda!389540))))

(assert (=> bs!1838146 (not (= lambda!389541 lambda!389532))))

(declare-fun bs!1838148 () Bool)

(assert (= bs!1838148 (and b!6881941 b!6881860)))

(assert (=> bs!1838148 (= (and (= (regOne!34040 lt!2459803) (regOne!34040 lt!2459796)) (= (regTwo!34040 lt!2459803) (regTwo!34040 lt!2459796))) (= lambda!389541 lambda!389539))))

(assert (=> b!6881941 true))

(assert (=> b!6881941 true))

(declare-fun b!6881936 () Bool)

(declare-fun c!1280235 () Bool)

(assert (=> b!6881936 (= c!1280235 (is-ElementMatch!16764 lt!2459803))))

(declare-fun e!4147102 () Bool)

(declare-fun e!4147099 () Bool)

(assert (=> b!6881936 (= e!4147102 e!4147099)))

(declare-fun e!4147098 () Bool)

(declare-fun call!626527 () Bool)

(assert (=> b!6881937 (= e!4147098 call!626527)))

(declare-fun b!6881938 () Bool)

(assert (=> b!6881938 (= e!4147099 (= s!14361 (Cons!66397 (c!1280172 lt!2459803) Nil!66397)))))

(declare-fun b!6881939 () Bool)

(declare-fun c!1280232 () Bool)

(assert (=> b!6881939 (= c!1280232 (is-Union!16764 lt!2459803))))

(declare-fun e!4147103 () Bool)

(assert (=> b!6881939 (= e!4147099 e!4147103)))

(declare-fun b!6881940 () Bool)

(declare-fun e!4147100 () Bool)

(assert (=> b!6881940 (= e!4147103 e!4147100)))

(declare-fun c!1280233 () Bool)

(assert (=> b!6881940 (= c!1280233 (is-Star!16764 lt!2459803))))

(assert (=> b!6881941 (= e!4147100 call!626527)))

(declare-fun b!6881942 () Bool)

(declare-fun e!4147101 () Bool)

(assert (=> b!6881942 (= e!4147103 e!4147101)))

(declare-fun res!2805405 () Bool)

(assert (=> b!6881942 (= res!2805405 (matchRSpec!3827 (regOne!34041 lt!2459803) s!14361))))

(assert (=> b!6881942 (=> res!2805405 e!4147101)))

(declare-fun b!6881943 () Bool)

(assert (=> b!6881943 (= e!4147101 (matchRSpec!3827 (regTwo!34041 lt!2459803) s!14361))))

(declare-fun b!6881944 () Bool)

(declare-fun res!2805406 () Bool)

(assert (=> b!6881944 (=> res!2805406 e!4147098)))

(declare-fun call!626526 () Bool)

(assert (=> b!6881944 (= res!2805406 call!626526)))

(assert (=> b!6881944 (= e!4147100 e!4147098)))

(declare-fun bm!626521 () Bool)

(assert (=> bm!626521 (= call!626526 (isEmpty!38670 s!14361))))

(declare-fun b!6881945 () Bool)

(declare-fun e!4147097 () Bool)

(assert (=> b!6881945 (= e!4147097 e!4147102)))

(declare-fun res!2805407 () Bool)

(assert (=> b!6881945 (= res!2805407 (not (is-EmptyLang!16764 lt!2459803)))))

(assert (=> b!6881945 (=> (not res!2805407) (not e!4147102))))

(declare-fun bm!626522 () Bool)

(assert (=> bm!626522 (= call!626527 (Exists!3776 (ite c!1280233 lambda!389540 lambda!389541)))))

(declare-fun d!2160124 () Bool)

(declare-fun c!1280234 () Bool)

(assert (=> d!2160124 (= c!1280234 (is-EmptyExpr!16764 lt!2459803))))

(assert (=> d!2160124 (= (matchRSpec!3827 lt!2459803 s!14361) e!4147097)))

(declare-fun b!6881946 () Bool)

(assert (=> b!6881946 (= e!4147097 call!626526)))

(assert (= (and d!2160124 c!1280234) b!6881946))

(assert (= (and d!2160124 (not c!1280234)) b!6881945))

(assert (= (and b!6881945 res!2805407) b!6881936))

(assert (= (and b!6881936 c!1280235) b!6881938))

(assert (= (and b!6881936 (not c!1280235)) b!6881939))

(assert (= (and b!6881939 c!1280232) b!6881942))

(assert (= (and b!6881939 (not c!1280232)) b!6881940))

(assert (= (and b!6881942 (not res!2805405)) b!6881943))

(assert (= (and b!6881940 c!1280233) b!6881944))

(assert (= (and b!6881940 (not c!1280233)) b!6881941))

(assert (= (and b!6881944 (not res!2805406)) b!6881937))

(assert (= (or b!6881937 b!6881941) bm!626522))

(assert (= (or b!6881946 b!6881944) bm!626521))

(declare-fun m!7606744 () Bool)

(assert (=> b!6881942 m!7606744))

(declare-fun m!7606746 () Bool)

(assert (=> b!6881943 m!7606746))

(assert (=> bm!626521 m!7606704))

(declare-fun m!7606748 () Bool)

(assert (=> bm!626522 m!7606748))

(assert (=> b!6881584 d!2160124))

(declare-fun b!6881980 () Bool)

(declare-fun e!4147120 () Bool)

(declare-fun tp!1892614 () Bool)

(declare-fun tp!1892613 () Bool)

(assert (=> b!6881980 (= e!4147120 (and tp!1892614 tp!1892613))))

(declare-fun b!6881982 () Bool)

(declare-fun tp!1892610 () Bool)

(declare-fun tp!1892612 () Bool)

(assert (=> b!6881982 (= e!4147120 (and tp!1892610 tp!1892612))))

(declare-fun b!6881981 () Bool)

(declare-fun tp!1892611 () Bool)

(assert (=> b!6881981 (= e!4147120 tp!1892611)))

(declare-fun b!6881979 () Bool)

(assert (=> b!6881979 (= e!4147120 tp_is_empty!42753)))

(assert (=> b!6881583 (= tp!1892538 e!4147120)))

(assert (= (and b!6881583 (is-ElementMatch!16764 (regOne!34040 r3!135))) b!6881979))

(assert (= (and b!6881583 (is-Concat!25609 (regOne!34040 r3!135))) b!6881980))

(assert (= (and b!6881583 (is-Star!16764 (regOne!34040 r3!135))) b!6881981))

(assert (= (and b!6881583 (is-Union!16764 (regOne!34040 r3!135))) b!6881982))

(declare-fun b!6881984 () Bool)

(declare-fun e!4147121 () Bool)

(declare-fun tp!1892619 () Bool)

(declare-fun tp!1892618 () Bool)

(assert (=> b!6881984 (= e!4147121 (and tp!1892619 tp!1892618))))

(declare-fun b!6881986 () Bool)

(declare-fun tp!1892615 () Bool)

(declare-fun tp!1892617 () Bool)

(assert (=> b!6881986 (= e!4147121 (and tp!1892615 tp!1892617))))

(declare-fun b!6881985 () Bool)

(declare-fun tp!1892616 () Bool)

(assert (=> b!6881985 (= e!4147121 tp!1892616)))

(declare-fun b!6881983 () Bool)

(assert (=> b!6881983 (= e!4147121 tp_is_empty!42753)))

(assert (=> b!6881583 (= tp!1892539 e!4147121)))

(assert (= (and b!6881583 (is-ElementMatch!16764 (regTwo!34040 r3!135))) b!6881983))

(assert (= (and b!6881583 (is-Concat!25609 (regTwo!34040 r3!135))) b!6881984))

(assert (= (and b!6881583 (is-Star!16764 (regTwo!34040 r3!135))) b!6881985))

(assert (= (and b!6881583 (is-Union!16764 (regTwo!34040 r3!135))) b!6881986))

(declare-fun b!6881988 () Bool)

(declare-fun e!4147122 () Bool)

(declare-fun tp!1892624 () Bool)

(declare-fun tp!1892623 () Bool)

(assert (=> b!6881988 (= e!4147122 (and tp!1892624 tp!1892623))))

(declare-fun b!6881990 () Bool)

(declare-fun tp!1892620 () Bool)

(declare-fun tp!1892622 () Bool)

(assert (=> b!6881990 (= e!4147122 (and tp!1892620 tp!1892622))))

(declare-fun b!6881989 () Bool)

(declare-fun tp!1892621 () Bool)

(assert (=> b!6881989 (= e!4147122 tp!1892621)))

(declare-fun b!6881987 () Bool)

(assert (=> b!6881987 (= e!4147122 tp_is_empty!42753)))

(assert (=> b!6881594 (= tp!1892536 e!4147122)))

(assert (= (and b!6881594 (is-ElementMatch!16764 (regOne!34040 r2!6280))) b!6881987))

(assert (= (and b!6881594 (is-Concat!25609 (regOne!34040 r2!6280))) b!6881988))

(assert (= (and b!6881594 (is-Star!16764 (regOne!34040 r2!6280))) b!6881989))

(assert (= (and b!6881594 (is-Union!16764 (regOne!34040 r2!6280))) b!6881990))

(declare-fun b!6881994 () Bool)

(declare-fun e!4147125 () Bool)

(declare-fun tp!1892629 () Bool)

(declare-fun tp!1892628 () Bool)

(assert (=> b!6881994 (= e!4147125 (and tp!1892629 tp!1892628))))

(declare-fun b!6881996 () Bool)

(declare-fun tp!1892625 () Bool)

(declare-fun tp!1892627 () Bool)

(assert (=> b!6881996 (= e!4147125 (and tp!1892625 tp!1892627))))

(declare-fun b!6881995 () Bool)

(declare-fun tp!1892626 () Bool)

(assert (=> b!6881995 (= e!4147125 tp!1892626)))

(declare-fun b!6881993 () Bool)

(assert (=> b!6881993 (= e!4147125 tp_is_empty!42753)))

(assert (=> b!6881594 (= tp!1892543 e!4147125)))

(assert (= (and b!6881594 (is-ElementMatch!16764 (regTwo!34040 r2!6280))) b!6881993))

(assert (= (and b!6881594 (is-Concat!25609 (regTwo!34040 r2!6280))) b!6881994))

(assert (= (and b!6881594 (is-Star!16764 (regTwo!34040 r2!6280))) b!6881995))

(assert (= (and b!6881594 (is-Union!16764 (regTwo!34040 r2!6280))) b!6881996))

(declare-fun b!6882002 () Bool)

(declare-fun e!4147126 () Bool)

(declare-fun tp!1892634 () Bool)

(declare-fun tp!1892633 () Bool)

(assert (=> b!6882002 (= e!4147126 (and tp!1892634 tp!1892633))))

(declare-fun b!6882004 () Bool)

(declare-fun tp!1892630 () Bool)

(declare-fun tp!1892632 () Bool)

(assert (=> b!6882004 (= e!4147126 (and tp!1892630 tp!1892632))))

(declare-fun b!6882003 () Bool)

(declare-fun tp!1892631 () Bool)

(assert (=> b!6882003 (= e!4147126 tp!1892631)))

(declare-fun b!6882001 () Bool)

(assert (=> b!6882001 (= e!4147126 tp_is_empty!42753)))

(assert (=> b!6881588 (= tp!1892542 e!4147126)))

(assert (= (and b!6881588 (is-ElementMatch!16764 (reg!17093 r2!6280))) b!6882001))

(assert (= (and b!6881588 (is-Concat!25609 (reg!17093 r2!6280))) b!6882002))

(assert (= (and b!6881588 (is-Star!16764 (reg!17093 r2!6280))) b!6882003))

(assert (= (and b!6881588 (is-Union!16764 (reg!17093 r2!6280))) b!6882004))

(declare-fun b!6882006 () Bool)

(declare-fun e!4147127 () Bool)

(declare-fun tp!1892639 () Bool)

(declare-fun tp!1892638 () Bool)

(assert (=> b!6882006 (= e!4147127 (and tp!1892639 tp!1892638))))

(declare-fun b!6882008 () Bool)

(declare-fun tp!1892635 () Bool)

(declare-fun tp!1892637 () Bool)

(assert (=> b!6882008 (= e!4147127 (and tp!1892635 tp!1892637))))

(declare-fun b!6882007 () Bool)

(declare-fun tp!1892636 () Bool)

(assert (=> b!6882007 (= e!4147127 tp!1892636)))

(declare-fun b!6882005 () Bool)

(assert (=> b!6882005 (= e!4147127 tp_is_empty!42753)))

(assert (=> b!6881582 (= tp!1892550 e!4147127)))

(assert (= (and b!6881582 (is-ElementMatch!16764 (reg!17093 r1!6342))) b!6882005))

(assert (= (and b!6881582 (is-Concat!25609 (reg!17093 r1!6342))) b!6882006))

(assert (= (and b!6881582 (is-Star!16764 (reg!17093 r1!6342))) b!6882007))

(assert (= (and b!6881582 (is-Union!16764 (reg!17093 r1!6342))) b!6882008))

(declare-fun b!6882010 () Bool)

(declare-fun e!4147128 () Bool)

(declare-fun tp!1892644 () Bool)

(declare-fun tp!1892643 () Bool)

(assert (=> b!6882010 (= e!4147128 (and tp!1892644 tp!1892643))))

(declare-fun b!6882012 () Bool)

(declare-fun tp!1892640 () Bool)

(declare-fun tp!1892642 () Bool)

(assert (=> b!6882012 (= e!4147128 (and tp!1892640 tp!1892642))))

(declare-fun b!6882011 () Bool)

(declare-fun tp!1892641 () Bool)

(assert (=> b!6882011 (= e!4147128 tp!1892641)))

(declare-fun b!6882009 () Bool)

(assert (=> b!6882009 (= e!4147128 tp_is_empty!42753)))

(assert (=> b!6881598 (= tp!1892544 e!4147128)))

(assert (= (and b!6881598 (is-ElementMatch!16764 (regOne!34041 r3!135))) b!6882009))

(assert (= (and b!6881598 (is-Concat!25609 (regOne!34041 r3!135))) b!6882010))

(assert (= (and b!6881598 (is-Star!16764 (regOne!34041 r3!135))) b!6882011))

(assert (= (and b!6881598 (is-Union!16764 (regOne!34041 r3!135))) b!6882012))

(declare-fun b!6882014 () Bool)

(declare-fun e!4147129 () Bool)

(declare-fun tp!1892649 () Bool)

(declare-fun tp!1892648 () Bool)

(assert (=> b!6882014 (= e!4147129 (and tp!1892649 tp!1892648))))

(declare-fun b!6882016 () Bool)

(declare-fun tp!1892645 () Bool)

(declare-fun tp!1892647 () Bool)

(assert (=> b!6882016 (= e!4147129 (and tp!1892645 tp!1892647))))

(declare-fun b!6882015 () Bool)

(declare-fun tp!1892646 () Bool)

(assert (=> b!6882015 (= e!4147129 tp!1892646)))

(declare-fun b!6882013 () Bool)

(assert (=> b!6882013 (= e!4147129 tp_is_empty!42753)))

(assert (=> b!6881598 (= tp!1892546 e!4147129)))

(assert (= (and b!6881598 (is-ElementMatch!16764 (regTwo!34041 r3!135))) b!6882013))

(assert (= (and b!6881598 (is-Concat!25609 (regTwo!34041 r3!135))) b!6882014))

(assert (= (and b!6881598 (is-Star!16764 (regTwo!34041 r3!135))) b!6882015))

(assert (= (and b!6881598 (is-Union!16764 (regTwo!34041 r3!135))) b!6882016))

(declare-fun b!6882018 () Bool)

(declare-fun e!4147130 () Bool)

(declare-fun tp!1892654 () Bool)

(declare-fun tp!1892653 () Bool)

(assert (=> b!6882018 (= e!4147130 (and tp!1892654 tp!1892653))))

(declare-fun b!6882020 () Bool)

(declare-fun tp!1892650 () Bool)

(declare-fun tp!1892652 () Bool)

(assert (=> b!6882020 (= e!4147130 (and tp!1892650 tp!1892652))))

(declare-fun b!6882019 () Bool)

(declare-fun tp!1892651 () Bool)

(assert (=> b!6882019 (= e!4147130 tp!1892651)))

(declare-fun b!6882017 () Bool)

(assert (=> b!6882017 (= e!4147130 tp_is_empty!42753)))

(assert (=> b!6881591 (= tp!1892541 e!4147130)))

(assert (= (and b!6881591 (is-ElementMatch!16764 (regOne!34041 r1!6342))) b!6882017))

(assert (= (and b!6881591 (is-Concat!25609 (regOne!34041 r1!6342))) b!6882018))

(assert (= (and b!6881591 (is-Star!16764 (regOne!34041 r1!6342))) b!6882019))

(assert (= (and b!6881591 (is-Union!16764 (regOne!34041 r1!6342))) b!6882020))

(declare-fun b!6882022 () Bool)

(declare-fun e!4147131 () Bool)

(declare-fun tp!1892659 () Bool)

(declare-fun tp!1892658 () Bool)

(assert (=> b!6882022 (= e!4147131 (and tp!1892659 tp!1892658))))

(declare-fun b!6882024 () Bool)

(declare-fun tp!1892655 () Bool)

(declare-fun tp!1892657 () Bool)

(assert (=> b!6882024 (= e!4147131 (and tp!1892655 tp!1892657))))

(declare-fun b!6882023 () Bool)

(declare-fun tp!1892656 () Bool)

(assert (=> b!6882023 (= e!4147131 tp!1892656)))

(declare-fun b!6882021 () Bool)

(assert (=> b!6882021 (= e!4147131 tp_is_empty!42753)))

(assert (=> b!6881591 (= tp!1892548 e!4147131)))

(assert (= (and b!6881591 (is-ElementMatch!16764 (regTwo!34041 r1!6342))) b!6882021))

(assert (= (and b!6881591 (is-Concat!25609 (regTwo!34041 r1!6342))) b!6882022))

(assert (= (and b!6881591 (is-Star!16764 (regTwo!34041 r1!6342))) b!6882023))

(assert (= (and b!6881591 (is-Union!16764 (regTwo!34041 r1!6342))) b!6882024))

(declare-fun b!6882026 () Bool)

(declare-fun e!4147132 () Bool)

(declare-fun tp!1892664 () Bool)

(declare-fun tp!1892663 () Bool)

(assert (=> b!6882026 (= e!4147132 (and tp!1892664 tp!1892663))))

(declare-fun b!6882028 () Bool)

(declare-fun tp!1892660 () Bool)

(declare-fun tp!1892662 () Bool)

(assert (=> b!6882028 (= e!4147132 (and tp!1892660 tp!1892662))))

(declare-fun b!6882027 () Bool)

(declare-fun tp!1892661 () Bool)

(assert (=> b!6882027 (= e!4147132 tp!1892661)))

(declare-fun b!6882025 () Bool)

(assert (=> b!6882025 (= e!4147132 tp_is_empty!42753)))

(assert (=> b!6881586 (= tp!1892540 e!4147132)))

(assert (= (and b!6881586 (is-ElementMatch!16764 (reg!17093 r3!135))) b!6882025))

(assert (= (and b!6881586 (is-Concat!25609 (reg!17093 r3!135))) b!6882026))

(assert (= (and b!6881586 (is-Star!16764 (reg!17093 r3!135))) b!6882027))

(assert (= (and b!6881586 (is-Union!16764 (reg!17093 r3!135))) b!6882028))

(declare-fun b!6882030 () Bool)

(declare-fun e!4147133 () Bool)

(declare-fun tp!1892669 () Bool)

(declare-fun tp!1892668 () Bool)

(assert (=> b!6882030 (= e!4147133 (and tp!1892669 tp!1892668))))

(declare-fun b!6882032 () Bool)

(declare-fun tp!1892665 () Bool)

(declare-fun tp!1892667 () Bool)

(assert (=> b!6882032 (= e!4147133 (and tp!1892665 tp!1892667))))

(declare-fun b!6882031 () Bool)

(declare-fun tp!1892666 () Bool)

(assert (=> b!6882031 (= e!4147133 tp!1892666)))

(declare-fun b!6882029 () Bool)

(assert (=> b!6882029 (= e!4147133 tp_is_empty!42753)))

(assert (=> b!6881595 (= tp!1892545 e!4147133)))

(assert (= (and b!6881595 (is-ElementMatch!16764 (regOne!34041 r2!6280))) b!6882029))

(assert (= (and b!6881595 (is-Concat!25609 (regOne!34041 r2!6280))) b!6882030))

(assert (= (and b!6881595 (is-Star!16764 (regOne!34041 r2!6280))) b!6882031))

(assert (= (and b!6881595 (is-Union!16764 (regOne!34041 r2!6280))) b!6882032))

(declare-fun b!6882034 () Bool)

(declare-fun e!4147134 () Bool)

(declare-fun tp!1892674 () Bool)

(declare-fun tp!1892673 () Bool)

(assert (=> b!6882034 (= e!4147134 (and tp!1892674 tp!1892673))))

(declare-fun b!6882036 () Bool)

(declare-fun tp!1892670 () Bool)

(declare-fun tp!1892672 () Bool)

(assert (=> b!6882036 (= e!4147134 (and tp!1892670 tp!1892672))))

(declare-fun b!6882035 () Bool)

(declare-fun tp!1892671 () Bool)

(assert (=> b!6882035 (= e!4147134 tp!1892671)))

(declare-fun b!6882033 () Bool)

(assert (=> b!6882033 (= e!4147134 tp_is_empty!42753)))

(assert (=> b!6881595 (= tp!1892547 e!4147134)))

(assert (= (and b!6881595 (is-ElementMatch!16764 (regTwo!34041 r2!6280))) b!6882033))

(assert (= (and b!6881595 (is-Concat!25609 (regTwo!34041 r2!6280))) b!6882034))

(assert (= (and b!6881595 (is-Star!16764 (regTwo!34041 r2!6280))) b!6882035))

(assert (= (and b!6881595 (is-Union!16764 (regTwo!34041 r2!6280))) b!6882036))

(declare-fun b!6882041 () Bool)

(declare-fun e!4147137 () Bool)

(declare-fun tp!1892677 () Bool)

(assert (=> b!6882041 (= e!4147137 (and tp_is_empty!42753 tp!1892677))))

(assert (=> b!6881590 (= tp!1892551 e!4147137)))

(assert (= (and b!6881590 (is-Cons!66397 (t!380264 s!14361))) b!6882041))

(declare-fun b!6882043 () Bool)

(declare-fun e!4147138 () Bool)

(declare-fun tp!1892682 () Bool)

(declare-fun tp!1892681 () Bool)

(assert (=> b!6882043 (= e!4147138 (and tp!1892682 tp!1892681))))

(declare-fun b!6882045 () Bool)

(declare-fun tp!1892678 () Bool)

(declare-fun tp!1892680 () Bool)

(assert (=> b!6882045 (= e!4147138 (and tp!1892678 tp!1892680))))

(declare-fun b!6882044 () Bool)

(declare-fun tp!1892679 () Bool)

(assert (=> b!6882044 (= e!4147138 tp!1892679)))

(declare-fun b!6882042 () Bool)

(assert (=> b!6882042 (= e!4147138 tp_is_empty!42753)))

(assert (=> b!6881589 (= tp!1892537 e!4147138)))

(assert (= (and b!6881589 (is-ElementMatch!16764 (regOne!34040 r1!6342))) b!6882042))

(assert (= (and b!6881589 (is-Concat!25609 (regOne!34040 r1!6342))) b!6882043))

(assert (= (and b!6881589 (is-Star!16764 (regOne!34040 r1!6342))) b!6882044))

(assert (= (and b!6881589 (is-Union!16764 (regOne!34040 r1!6342))) b!6882045))

(declare-fun b!6882047 () Bool)

(declare-fun e!4147139 () Bool)

(declare-fun tp!1892687 () Bool)

(declare-fun tp!1892686 () Bool)

(assert (=> b!6882047 (= e!4147139 (and tp!1892687 tp!1892686))))

(declare-fun b!6882049 () Bool)

(declare-fun tp!1892683 () Bool)

(declare-fun tp!1892685 () Bool)

(assert (=> b!6882049 (= e!4147139 (and tp!1892683 tp!1892685))))

(declare-fun b!6882048 () Bool)

(declare-fun tp!1892684 () Bool)

(assert (=> b!6882048 (= e!4147139 tp!1892684)))

(declare-fun b!6882046 () Bool)

(assert (=> b!6882046 (= e!4147139 tp_is_empty!42753)))

(assert (=> b!6881589 (= tp!1892549 e!4147139)))

(assert (= (and b!6881589 (is-ElementMatch!16764 (regTwo!34040 r1!6342))) b!6882046))

(assert (= (and b!6881589 (is-Concat!25609 (regTwo!34040 r1!6342))) b!6882047))

(assert (= (and b!6881589 (is-Star!16764 (regTwo!34040 r1!6342))) b!6882048))

(assert (= (and b!6881589 (is-Union!16764 (regTwo!34040 r1!6342))) b!6882049))

(push 1)

(assert (not b!6882036))

(assert (not bm!626494))

(assert (not d!2160090))

(assert (not bm!626521))

(assert (not b!6881943))

(assert (not b!6882003))

(assert (not bm!626522))

(assert (not b!6881994))

(assert (not b!6882007))

(assert (not b!6881861))

(assert (not b!6881744))

(assert (not b!6881743))

(assert tp_is_empty!42753)

(assert (not b!6881996))

(assert (not bm!626519))

(assert (not b!6881748))

(assert (not bm!626515))

(assert (not b!6882020))

(assert (not bm!626491))

(assert (not b!6882010))

(assert (not b!6881935))

(assert (not d!2160122))

(assert (not b!6882031))

(assert (not b!6882047))

(assert (not b!6881981))

(assert (not bm!626504))

(assert (not b!6881982))

(assert (not b!6881916))

(assert (not b!6881921))

(assert (not d!2160102))

(assert (not b!6881924))

(assert (not b!6882024))

(assert (not b!6882044))

(assert (not b!6882011))

(assert (not b!6881931))

(assert (not b!6881908))

(assert (not b!6882035))

(assert (not b!6882023))

(assert (not b!6882008))

(assert (not b!6881995))

(assert (not b!6881986))

(assert (not b!6882027))

(assert (not b!6881689))

(assert (not d!2160094))

(assert (not b!6881985))

(assert (not b!6881925))

(assert (not d!2160104))

(assert (not b!6881787))

(assert (not b!6881990))

(assert (not bm!626520))

(assert (not d!2160096))

(assert (not b!6882041))

(assert (not b!6882015))

(assert (not bm!626492))

(assert (not bm!626506))

(assert (not b!6882026))

(assert (not b!6882048))

(assert (not b!6882022))

(assert (not b!6882014))

(assert (not b!6882012))

(assert (not b!6881745))

(assert (not b!6882028))

(assert (not b!6882016))

(assert (not b!6881917))

(assert (not b!6882004))

(assert (not b!6881910))

(assert (not b!6882049))

(assert (not b!6881984))

(assert (not b!6882019))

(assert (not b!6882030))

(assert (not b!6881750))

(assert (not b!6882018))

(assert (not b!6881989))

(assert (not b!6881980))

(assert (not b!6881942))

(assert (not b!6881930))

(assert (not b!6881988))

(assert (not b!6882034))

(assert (not b!6881911))

(assert (not b!6882032))

(assert (not b!6881862))

(assert (not b!6882002))

(assert (not b!6882006))

(assert (not d!2160112))

(assert (not bm!626514))

(assert (not d!2160118))

(assert (not d!2160120))

(assert (not b!6881742))

(assert (not b!6882045))

(assert (not b!6882043))

(assert (not d!2160100))

(assert (not b!6881922))

(assert (not b!6881698))

(assert (not bm!626489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

