; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725202 () Bool)

(assert start!725202)

(declare-fun b!7491119 () Bool)

(assert (=> b!7491119 true))

(assert (=> b!7491119 true))

(assert (=> b!7491119 true))

(declare-fun lambda!464149 () Int)

(declare-fun lambda!464148 () Int)

(assert (=> b!7491119 (not (= lambda!464149 lambda!464148))))

(assert (=> b!7491119 true))

(assert (=> b!7491119 true))

(assert (=> b!7491119 true))

(declare-fun bm!687673 () Bool)

(declare-datatypes ((C!39544 0))(
  ( (C!39545 (val!30170 Int)) )
))
(declare-datatypes ((List!72349 0))(
  ( (Nil!72225) (Cons!72225 (h!78673 C!39544) (t!386918 List!72349)) )
))
(declare-fun call!687680 () List!72349)

(declare-datatypes ((tuple2!68708 0))(
  ( (tuple2!68709 (_1!37657 List!72349) (_2!37657 List!72349)) )
))
(declare-fun lt!2629628 () tuple2!68708)

(declare-fun ++!17243 (List!72349 List!72349) List!72349)

(assert (=> bm!687673 (= call!687680 (++!17243 (_1!37657 lt!2629628) (_2!37657 lt!2629628)))))

(declare-fun b!7491100 () Bool)

(declare-fun e!4467047 () Bool)

(declare-fun tp!2174326 () Bool)

(declare-fun tp!2174332 () Bool)

(assert (=> b!7491100 (= e!4467047 (and tp!2174326 tp!2174332))))

(declare-fun b!7491101 () Bool)

(declare-fun tp!2174318 () Bool)

(assert (=> b!7491101 (= e!4467047 tp!2174318)))

(declare-fun b!7491102 () Bool)

(declare-fun e!4467044 () Bool)

(declare-fun tp!2174329 () Bool)

(declare-fun tp!2174323 () Bool)

(assert (=> b!7491102 (= e!4467044 (and tp!2174329 tp!2174323))))

(declare-fun b!7491103 () Bool)

(declare-fun e!4467045 () Bool)

(declare-fun tp!2174328 () Bool)

(assert (=> b!7491103 (= e!4467045 tp!2174328)))

(declare-fun b!7491104 () Bool)

(declare-fun res!3004946 () Bool)

(declare-fun e!4467048 () Bool)

(assert (=> b!7491104 (=> (not res!3004946) (not e!4467048))))

(declare-datatypes ((Regex!19635 0))(
  ( (ElementMatch!19635 (c!1383210 C!39544)) (Concat!28480 (regOne!39782 Regex!19635) (regTwo!39782 Regex!19635)) (EmptyExpr!19635) (Star!19635 (reg!19964 Regex!19635)) (EmptyLang!19635) (Union!19635 (regOne!39783 Regex!19635) (regTwo!39783 Regex!19635)) )
))
(declare-fun r2!5783 () Regex!19635)

(declare-fun validRegex!10149 (Regex!19635) Bool)

(assert (=> b!7491104 (= res!3004946 (validRegex!10149 r2!5783))))

(declare-fun b!7491105 () Bool)

(declare-fun tp!2174321 () Bool)

(declare-fun tp!2174330 () Bool)

(assert (=> b!7491105 (= e!4467047 (and tp!2174321 tp!2174330))))

(declare-fun b!7491106 () Bool)

(declare-fun res!3004942 () Bool)

(assert (=> b!7491106 (=> (not res!3004942) (not e!4467048))))

(declare-fun rTail!78 () Regex!19635)

(assert (=> b!7491106 (= res!3004942 (validRegex!10149 rTail!78))))

(declare-fun b!7491107 () Bool)

(declare-fun tp_is_empty!49559 () Bool)

(assert (=> b!7491107 (= e!4467045 tp_is_empty!49559)))

(declare-fun b!7491108 () Bool)

(assert (=> b!7491108 (= e!4467044 tp_is_empty!49559)))

(declare-fun b!7491109 () Bool)

(declare-fun tp!2174333 () Bool)

(declare-fun tp!2174324 () Bool)

(assert (=> b!7491109 (= e!4467045 (and tp!2174333 tp!2174324))))

(declare-fun b!7491110 () Bool)

(declare-fun tp!2174327 () Bool)

(assert (=> b!7491110 (= e!4467044 tp!2174327)))

(declare-datatypes ((Unit!166101 0))(
  ( (Unit!166102) )
))
(declare-fun call!687678 () Unit!166101)

(declare-fun r1!5845 () Regex!19635)

(declare-fun c!1383209 () Bool)

(declare-fun bm!687674 () Bool)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!404 (Regex!19635 Regex!19635 List!72349 List!72349) Unit!166101)

(assert (=> bm!687674 (= call!687678 (lemmaTwoRegexMatchThenConcatMatchesConcatString!404 (ite c!1383209 r1!5845 r2!5783) rTail!78 (_1!37657 lt!2629628) (_2!37657 lt!2629628)))))

(declare-fun b!7491111 () Bool)

(declare-fun res!3004939 () Bool)

(declare-fun e!4467050 () Bool)

(assert (=> b!7491111 (=> res!3004939 e!4467050)))

(declare-fun matchR!9397 (Regex!19635 List!72349) Bool)

(assert (=> b!7491111 (= res!3004939 (not (matchR!9397 rTail!78 (_2!37657 lt!2629628))))))

(declare-fun b!7491112 () Bool)

(declare-fun e!4467052 () Unit!166101)

(declare-fun lt!2629622 () Unit!166101)

(assert (=> b!7491112 (= e!4467052 lt!2629622)))

(assert (=> b!7491112 (= lt!2629622 call!687678)))

(declare-fun call!687679 () Bool)

(assert (=> b!7491112 call!687679))

(declare-fun b!7491099 () Bool)

(declare-fun e!4467049 () Bool)

(declare-fun lt!2629635 () Bool)

(assert (=> b!7491099 (= e!4467049 lt!2629635)))

(declare-fun lt!2629633 () Unit!166101)

(assert (=> b!7491099 (= lt!2629633 e!4467052)))

(declare-fun lt!2629636 () Bool)

(assert (=> b!7491099 (= c!1383209 lt!2629636)))

(declare-fun res!3004945 () Bool)

(assert (=> start!725202 (=> (not res!3004945) (not e!4467048))))

(assert (=> start!725202 (= res!3004945 (validRegex!10149 r1!5845))))

(assert (=> start!725202 e!4467048))

(assert (=> start!725202 e!4467044))

(assert (=> start!725202 e!4467045))

(assert (=> start!725202 e!4467047))

(declare-fun e!4467046 () Bool)

(assert (=> start!725202 e!4467046))

(declare-fun b!7491113 () Bool)

(declare-fun e!4467043 () Bool)

(assert (=> b!7491113 (= e!4467050 e!4467043)))

(declare-fun res!3004943 () Bool)

(assert (=> b!7491113 (=> res!3004943 e!4467043)))

(declare-fun lt!2629639 () Bool)

(assert (=> b!7491113 (= res!3004943 (and (not lt!2629636) (not lt!2629639)))))

(declare-fun matchRSpec!4312 (Regex!19635 List!72349) Bool)

(assert (=> b!7491113 (= lt!2629639 (matchRSpec!4312 r2!5783 (_1!37657 lt!2629628)))))

(assert (=> b!7491113 (= lt!2629639 (matchR!9397 r2!5783 (_1!37657 lt!2629628)))))

(declare-fun lt!2629642 () Unit!166101)

(declare-fun mainMatchTheorem!4306 (Regex!19635 List!72349) Unit!166101)

(assert (=> b!7491113 (= lt!2629642 (mainMatchTheorem!4306 r2!5783 (_1!37657 lt!2629628)))))

(assert (=> b!7491113 (= lt!2629636 (matchRSpec!4312 r1!5845 (_1!37657 lt!2629628)))))

(assert (=> b!7491113 (= lt!2629636 (matchR!9397 r1!5845 (_1!37657 lt!2629628)))))

(declare-fun lt!2629631 () Unit!166101)

(assert (=> b!7491113 (= lt!2629631 (mainMatchTheorem!4306 r1!5845 (_1!37657 lt!2629628)))))

(assert (=> b!7491113 (matchRSpec!4312 rTail!78 (_2!37657 lt!2629628))))

(declare-fun lt!2629625 () Unit!166101)

(assert (=> b!7491113 (= lt!2629625 (mainMatchTheorem!4306 rTail!78 (_2!37657 lt!2629628)))))

(declare-fun lt!2629647 () Regex!19635)

(assert (=> b!7491113 (matchRSpec!4312 lt!2629647 (_1!37657 lt!2629628))))

(declare-fun lt!2629640 () Unit!166101)

(assert (=> b!7491113 (= lt!2629640 (mainMatchTheorem!4306 lt!2629647 (_1!37657 lt!2629628)))))

(declare-fun b!7491114 () Bool)

(declare-fun tp!2174331 () Bool)

(declare-fun tp!2174320 () Bool)

(assert (=> b!7491114 (= e!4467045 (and tp!2174331 tp!2174320))))

(declare-fun b!7491115 () Bool)

(assert (=> b!7491115 (= e!4467047 tp_is_empty!49559)))

(declare-fun b!7491116 () Bool)

(assert (=> b!7491116 (= e!4467043 e!4467049)))

(declare-fun res!3004941 () Bool)

(assert (=> b!7491116 (=> res!3004941 e!4467049)))

(declare-fun lt!2629645 () Bool)

(declare-fun lt!2629627 () Bool)

(assert (=> b!7491116 (= res!3004941 (not (= lt!2629635 (or lt!2629645 lt!2629627))))))

(declare-fun lt!2629623 () Regex!19635)

(declare-fun s!13591 () List!72349)

(assert (=> b!7491116 (= lt!2629627 (matchRSpec!4312 lt!2629623 s!13591))))

(assert (=> b!7491116 (= lt!2629627 (matchR!9397 lt!2629623 s!13591))))

(declare-fun lt!2629644 () Unit!166101)

(assert (=> b!7491116 (= lt!2629644 (mainMatchTheorem!4306 lt!2629623 s!13591))))

(declare-fun lt!2629646 () Regex!19635)

(assert (=> b!7491116 (= lt!2629645 (matchRSpec!4312 lt!2629646 s!13591))))

(assert (=> b!7491116 (= lt!2629645 (matchR!9397 lt!2629646 s!13591))))

(declare-fun lt!2629637 () Unit!166101)

(assert (=> b!7491116 (= lt!2629637 (mainMatchTheorem!4306 lt!2629646 s!13591))))

(declare-fun b!7491117 () Bool)

(declare-fun tp!2174319 () Bool)

(assert (=> b!7491117 (= e!4467046 (and tp_is_empty!49559 tp!2174319))))

(declare-fun bm!687675 () Bool)

(assert (=> bm!687675 (= call!687679 (matchR!9397 (ite c!1383209 lt!2629646 lt!2629623) call!687680))))

(declare-fun b!7491118 () Bool)

(declare-fun e!4467051 () Bool)

(assert (=> b!7491118 (= e!4467048 (not e!4467051))))

(declare-fun res!3004940 () Bool)

(assert (=> b!7491118 (=> res!3004940 e!4467051)))

(declare-fun lt!2629629 () Bool)

(assert (=> b!7491118 (= res!3004940 (not lt!2629629))))

(declare-fun lt!2629626 () Regex!19635)

(assert (=> b!7491118 (= lt!2629635 (matchRSpec!4312 lt!2629626 s!13591))))

(assert (=> b!7491118 (= lt!2629635 (matchR!9397 lt!2629626 s!13591))))

(declare-fun lt!2629634 () Unit!166101)

(assert (=> b!7491118 (= lt!2629634 (mainMatchTheorem!4306 lt!2629626 s!13591))))

(declare-fun lt!2629643 () Regex!19635)

(assert (=> b!7491118 (= lt!2629629 (matchRSpec!4312 lt!2629643 s!13591))))

(assert (=> b!7491118 (= lt!2629629 (matchR!9397 lt!2629643 s!13591))))

(declare-fun lt!2629641 () Unit!166101)

(assert (=> b!7491118 (= lt!2629641 (mainMatchTheorem!4306 lt!2629643 s!13591))))

(assert (=> b!7491118 (= lt!2629626 (Union!19635 lt!2629646 lt!2629623))))

(assert (=> b!7491118 (= lt!2629623 (Concat!28480 r2!5783 rTail!78))))

(assert (=> b!7491118 (= lt!2629646 (Concat!28480 r1!5845 rTail!78))))

(assert (=> b!7491118 (= lt!2629643 (Concat!28480 lt!2629647 rTail!78))))

(assert (=> b!7491118 (= lt!2629647 (Union!19635 r1!5845 r2!5783))))

(assert (=> b!7491119 (= e!4467051 e!4467050)))

(declare-fun res!3004944 () Bool)

(assert (=> b!7491119 (=> res!3004944 e!4467050)))

(assert (=> b!7491119 (= res!3004944 (not (matchR!9397 lt!2629647 (_1!37657 lt!2629628))))))

(declare-datatypes ((Option!17186 0))(
  ( (None!17185) (Some!17185 (v!54314 tuple2!68708)) )
))
(declare-fun lt!2629624 () Option!17186)

(declare-fun get!25310 (Option!17186) tuple2!68708)

(assert (=> b!7491119 (= lt!2629628 (get!25310 lt!2629624))))

(declare-fun Exists!4252 (Int) Bool)

(assert (=> b!7491119 (= (Exists!4252 lambda!464148) (Exists!4252 lambda!464149))))

(declare-fun lt!2629638 () Unit!166101)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2580 (Regex!19635 Regex!19635 List!72349) Unit!166101)

(assert (=> b!7491119 (= lt!2629638 (lemmaExistCutMatchRandMatchRSpecEquivalent!2580 lt!2629647 rTail!78 s!13591))))

(declare-fun isDefined!13875 (Option!17186) Bool)

(assert (=> b!7491119 (= (isDefined!13875 lt!2629624) (Exists!4252 lambda!464148))))

(declare-fun findConcatSeparation!3308 (Regex!19635 Regex!19635 List!72349 List!72349 List!72349) Option!17186)

(assert (=> b!7491119 (= lt!2629624 (findConcatSeparation!3308 lt!2629647 rTail!78 Nil!72225 s!13591 s!13591))))

(declare-fun lt!2629630 () Unit!166101)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3066 (Regex!19635 Regex!19635 List!72349) Unit!166101)

(assert (=> b!7491119 (= lt!2629630 (lemmaFindConcatSeparationEquivalentToExists!3066 lt!2629647 rTail!78 s!13591))))

(declare-fun b!7491120 () Bool)

(declare-fun tp!2174325 () Bool)

(declare-fun tp!2174322 () Bool)

(assert (=> b!7491120 (= e!4467044 (and tp!2174325 tp!2174322))))

(declare-fun b!7491121 () Bool)

(declare-fun lt!2629632 () Unit!166101)

(assert (=> b!7491121 (= e!4467052 lt!2629632)))

(assert (=> b!7491121 (= lt!2629632 call!687678)))

(assert (=> b!7491121 call!687679))

(assert (= (and start!725202 res!3004945) b!7491104))

(assert (= (and b!7491104 res!3004946) b!7491106))

(assert (= (and b!7491106 res!3004942) b!7491118))

(assert (= (and b!7491118 (not res!3004940)) b!7491119))

(assert (= (and b!7491119 (not res!3004944)) b!7491111))

(assert (= (and b!7491111 (not res!3004939)) b!7491113))

(assert (= (and b!7491113 (not res!3004943)) b!7491116))

(assert (= (and b!7491116 (not res!3004941)) b!7491099))

(assert (= (and b!7491099 c!1383209) b!7491112))

(assert (= (and b!7491099 (not c!1383209)) b!7491121))

(assert (= (or b!7491112 b!7491121) bm!687674))

(assert (= (or b!7491112 b!7491121) bm!687673))

(assert (= (or b!7491112 b!7491121) bm!687675))

(get-info :version)

(assert (= (and start!725202 ((_ is ElementMatch!19635) r1!5845)) b!7491108))

(assert (= (and start!725202 ((_ is Concat!28480) r1!5845)) b!7491102))

(assert (= (and start!725202 ((_ is Star!19635) r1!5845)) b!7491110))

(assert (= (and start!725202 ((_ is Union!19635) r1!5845)) b!7491120))

(assert (= (and start!725202 ((_ is ElementMatch!19635) r2!5783)) b!7491107))

(assert (= (and start!725202 ((_ is Concat!28480) r2!5783)) b!7491109))

(assert (= (and start!725202 ((_ is Star!19635) r2!5783)) b!7491103))

(assert (= (and start!725202 ((_ is Union!19635) r2!5783)) b!7491114))

(assert (= (and start!725202 ((_ is ElementMatch!19635) rTail!78)) b!7491115))

(assert (= (and start!725202 ((_ is Concat!28480) rTail!78)) b!7491100))

(assert (= (and start!725202 ((_ is Star!19635) rTail!78)) b!7491101))

(assert (= (and start!725202 ((_ is Union!19635) rTail!78)) b!7491105))

(assert (= (and start!725202 ((_ is Cons!72225) s!13591)) b!7491117))

(declare-fun m!8077494 () Bool)

(assert (=> bm!687675 m!8077494))

(declare-fun m!8077496 () Bool)

(assert (=> b!7491104 m!8077496))

(declare-fun m!8077498 () Bool)

(assert (=> start!725202 m!8077498))

(declare-fun m!8077500 () Bool)

(assert (=> b!7491116 m!8077500))

(declare-fun m!8077502 () Bool)

(assert (=> b!7491116 m!8077502))

(declare-fun m!8077504 () Bool)

(assert (=> b!7491116 m!8077504))

(declare-fun m!8077506 () Bool)

(assert (=> b!7491116 m!8077506))

(declare-fun m!8077508 () Bool)

(assert (=> b!7491116 m!8077508))

(declare-fun m!8077510 () Bool)

(assert (=> b!7491116 m!8077510))

(declare-fun m!8077512 () Bool)

(assert (=> bm!687673 m!8077512))

(declare-fun m!8077514 () Bool)

(assert (=> b!7491111 m!8077514))

(declare-fun m!8077516 () Bool)

(assert (=> b!7491119 m!8077516))

(declare-fun m!8077518 () Bool)

(assert (=> b!7491119 m!8077518))

(declare-fun m!8077520 () Bool)

(assert (=> b!7491119 m!8077520))

(declare-fun m!8077522 () Bool)

(assert (=> b!7491119 m!8077522))

(declare-fun m!8077524 () Bool)

(assert (=> b!7491119 m!8077524))

(declare-fun m!8077526 () Bool)

(assert (=> b!7491119 m!8077526))

(declare-fun m!8077528 () Bool)

(assert (=> b!7491119 m!8077528))

(assert (=> b!7491119 m!8077526))

(declare-fun m!8077530 () Bool)

(assert (=> b!7491119 m!8077530))

(declare-fun m!8077532 () Bool)

(assert (=> bm!687674 m!8077532))

(declare-fun m!8077534 () Bool)

(assert (=> b!7491106 m!8077534))

(declare-fun m!8077536 () Bool)

(assert (=> b!7491113 m!8077536))

(declare-fun m!8077538 () Bool)

(assert (=> b!7491113 m!8077538))

(declare-fun m!8077540 () Bool)

(assert (=> b!7491113 m!8077540))

(declare-fun m!8077542 () Bool)

(assert (=> b!7491113 m!8077542))

(declare-fun m!8077544 () Bool)

(assert (=> b!7491113 m!8077544))

(declare-fun m!8077546 () Bool)

(assert (=> b!7491113 m!8077546))

(declare-fun m!8077548 () Bool)

(assert (=> b!7491113 m!8077548))

(declare-fun m!8077550 () Bool)

(assert (=> b!7491113 m!8077550))

(declare-fun m!8077552 () Bool)

(assert (=> b!7491113 m!8077552))

(declare-fun m!8077554 () Bool)

(assert (=> b!7491113 m!8077554))

(declare-fun m!8077556 () Bool)

(assert (=> b!7491118 m!8077556))

(declare-fun m!8077558 () Bool)

(assert (=> b!7491118 m!8077558))

(declare-fun m!8077560 () Bool)

(assert (=> b!7491118 m!8077560))

(declare-fun m!8077562 () Bool)

(assert (=> b!7491118 m!8077562))

(declare-fun m!8077564 () Bool)

(assert (=> b!7491118 m!8077564))

(declare-fun m!8077566 () Bool)

(assert (=> b!7491118 m!8077566))

(check-sat (not b!7491105) tp_is_empty!49559 (not b!7491116) (not b!7491100) (not b!7491109) (not start!725202) (not b!7491114) (not b!7491106) (not b!7491102) (not b!7491118) (not b!7491101) (not b!7491110) (not b!7491104) (not bm!687674) (not b!7491120) (not bm!687675) (not b!7491113) (not b!7491111) (not bm!687673) (not b!7491119) (not b!7491117) (not b!7491103))
(check-sat)
(get-model)

(declare-fun bm!687682 () Bool)

(declare-fun call!687689 () Bool)

(declare-fun call!687688 () Bool)

(assert (=> bm!687682 (= call!687689 call!687688)))

(declare-fun b!7491144 () Bool)

(declare-fun e!4467070 () Bool)

(assert (=> b!7491144 (= e!4467070 call!687689)))

(declare-fun b!7491145 () Bool)

(declare-fun e!4467067 () Bool)

(declare-fun e!4467071 () Bool)

(assert (=> b!7491145 (= e!4467067 e!4467071)))

(declare-fun res!3004959 () Bool)

(declare-fun nullable!8573 (Regex!19635) Bool)

(assert (=> b!7491145 (= res!3004959 (not (nullable!8573 (reg!19964 r2!5783))))))

(assert (=> b!7491145 (=> (not res!3004959) (not e!4467071))))

(declare-fun b!7491146 () Bool)

(declare-fun e!4467073 () Bool)

(assert (=> b!7491146 (= e!4467067 e!4467073)))

(declare-fun c!1383216 () Bool)

(assert (=> b!7491146 (= c!1383216 ((_ is Union!19635) r2!5783))))

(declare-fun b!7491147 () Bool)

(declare-fun e!4467068 () Bool)

(assert (=> b!7491147 (= e!4467068 call!687689)))

(declare-fun b!7491148 () Bool)

(declare-fun e!4467072 () Bool)

(assert (=> b!7491148 (= e!4467072 e!4467068)))

(declare-fun res!3004958 () Bool)

(assert (=> b!7491148 (=> (not res!3004958) (not e!4467068))))

(declare-fun call!687687 () Bool)

(assert (=> b!7491148 (= res!3004958 call!687687)))

(declare-fun b!7491149 () Bool)

(declare-fun res!3004961 () Bool)

(assert (=> b!7491149 (=> (not res!3004961) (not e!4467070))))

(assert (=> b!7491149 (= res!3004961 call!687687)))

(assert (=> b!7491149 (= e!4467073 e!4467070)))

(declare-fun b!7491150 () Bool)

(declare-fun e!4467069 () Bool)

(assert (=> b!7491150 (= e!4467069 e!4467067)))

(declare-fun c!1383215 () Bool)

(assert (=> b!7491150 (= c!1383215 ((_ is Star!19635) r2!5783))))

(declare-fun bm!687684 () Bool)

(assert (=> bm!687684 (= call!687687 (validRegex!10149 (ite c!1383216 (regOne!39783 r2!5783) (regOne!39782 r2!5783))))))

(declare-fun b!7491151 () Bool)

(assert (=> b!7491151 (= e!4467071 call!687688)))

(declare-fun b!7491152 () Bool)

(declare-fun res!3004960 () Bool)

(assert (=> b!7491152 (=> res!3004960 e!4467072)))

(assert (=> b!7491152 (= res!3004960 (not ((_ is Concat!28480) r2!5783)))))

(assert (=> b!7491152 (= e!4467073 e!4467072)))

(declare-fun d!2301255 () Bool)

(declare-fun res!3004957 () Bool)

(assert (=> d!2301255 (=> res!3004957 e!4467069)))

(assert (=> d!2301255 (= res!3004957 ((_ is ElementMatch!19635) r2!5783))))

(assert (=> d!2301255 (= (validRegex!10149 r2!5783) e!4467069)))

(declare-fun bm!687683 () Bool)

(assert (=> bm!687683 (= call!687688 (validRegex!10149 (ite c!1383215 (reg!19964 r2!5783) (ite c!1383216 (regTwo!39783 r2!5783) (regTwo!39782 r2!5783)))))))

(assert (= (and d!2301255 (not res!3004957)) b!7491150))

(assert (= (and b!7491150 c!1383215) b!7491145))

(assert (= (and b!7491150 (not c!1383215)) b!7491146))

(assert (= (and b!7491145 res!3004959) b!7491151))

(assert (= (and b!7491146 c!1383216) b!7491149))

(assert (= (and b!7491146 (not c!1383216)) b!7491152))

(assert (= (and b!7491149 res!3004961) b!7491144))

(assert (= (and b!7491152 (not res!3004960)) b!7491148))

(assert (= (and b!7491148 res!3004958) b!7491147))

(assert (= (or b!7491144 b!7491147) bm!687682))

(assert (= (or b!7491149 b!7491148) bm!687684))

(assert (= (or b!7491151 bm!687682) bm!687683))

(declare-fun m!8077568 () Bool)

(assert (=> b!7491145 m!8077568))

(declare-fun m!8077570 () Bool)

(assert (=> bm!687684 m!8077570))

(declare-fun m!8077572 () Bool)

(assert (=> bm!687683 m!8077572))

(assert (=> b!7491104 d!2301255))

(declare-fun d!2301259 () Bool)

(declare-fun e!4467152 () Bool)

(assert (=> d!2301259 e!4467152))

(declare-fun c!1383247 () Bool)

(assert (=> d!2301259 (= c!1383247 ((_ is EmptyExpr!19635) lt!2629643))))

(declare-fun lt!2629657 () Bool)

(declare-fun e!4467151 () Bool)

(assert (=> d!2301259 (= lt!2629657 e!4467151)))

(declare-fun c!1383245 () Bool)

(declare-fun isEmpty!41252 (List!72349) Bool)

(assert (=> d!2301259 (= c!1383245 (isEmpty!41252 s!13591))))

(assert (=> d!2301259 (validRegex!10149 lt!2629643)))

(assert (=> d!2301259 (= (matchR!9397 lt!2629643 s!13591) lt!2629657)))

(declare-fun b!7491279 () Bool)

(declare-fun derivativeStep!5630 (Regex!19635 C!39544) Regex!19635)

(declare-fun head!15370 (List!72349) C!39544)

(declare-fun tail!14939 (List!72349) List!72349)

(assert (=> b!7491279 (= e!4467151 (matchR!9397 (derivativeStep!5630 lt!2629643 (head!15370 s!13591)) (tail!14939 s!13591)))))

(declare-fun b!7491282 () Bool)

(declare-fun res!3005037 () Bool)

(declare-fun e!4467149 () Bool)

(assert (=> b!7491282 (=> (not res!3005037) (not e!4467149))))

(declare-fun call!687705 () Bool)

(assert (=> b!7491282 (= res!3005037 (not call!687705))))

(declare-fun b!7491283 () Bool)

(assert (=> b!7491283 (= e!4467152 (= lt!2629657 call!687705))))

(declare-fun b!7491284 () Bool)

(assert (=> b!7491284 (= e!4467151 (nullable!8573 lt!2629643))))

(declare-fun b!7491285 () Bool)

(declare-fun res!3005030 () Bool)

(assert (=> b!7491285 (=> (not res!3005030) (not e!4467149))))

(assert (=> b!7491285 (= res!3005030 (isEmpty!41252 (tail!14939 s!13591)))))

(declare-fun b!7491286 () Bool)

(declare-fun res!3005035 () Bool)

(declare-fun e!4467148 () Bool)

(assert (=> b!7491286 (=> res!3005035 e!4467148)))

(assert (=> b!7491286 (= res!3005035 (not (isEmpty!41252 (tail!14939 s!13591))))))

(declare-fun b!7491287 () Bool)

(assert (=> b!7491287 (= e!4467149 (= (head!15370 s!13591) (c!1383210 lt!2629643)))))

(declare-fun b!7491288 () Bool)

(declare-fun e!4467146 () Bool)

(declare-fun e!4467144 () Bool)

(assert (=> b!7491288 (= e!4467146 e!4467144)))

(declare-fun res!3005031 () Bool)

(assert (=> b!7491288 (=> (not res!3005031) (not e!4467144))))

(assert (=> b!7491288 (= res!3005031 (not lt!2629657))))

(declare-fun b!7491289 () Bool)

(declare-fun res!3005036 () Bool)

(assert (=> b!7491289 (=> res!3005036 e!4467146)))

(assert (=> b!7491289 (= res!3005036 e!4467149)))

(declare-fun res!3005034 () Bool)

(assert (=> b!7491289 (=> (not res!3005034) (not e!4467149))))

(assert (=> b!7491289 (= res!3005034 lt!2629657)))

(declare-fun b!7491290 () Bool)

(assert (=> b!7491290 (= e!4467148 (not (= (head!15370 s!13591) (c!1383210 lt!2629643))))))

(declare-fun bm!687700 () Bool)

(assert (=> bm!687700 (= call!687705 (isEmpty!41252 s!13591))))

(declare-fun b!7491291 () Bool)

(declare-fun res!3005033 () Bool)

(assert (=> b!7491291 (=> res!3005033 e!4467146)))

(assert (=> b!7491291 (= res!3005033 (not ((_ is ElementMatch!19635) lt!2629643)))))

(declare-fun e!4467150 () Bool)

(assert (=> b!7491291 (= e!4467150 e!4467146)))

(declare-fun b!7491292 () Bool)

(assert (=> b!7491292 (= e!4467150 (not lt!2629657))))

(declare-fun b!7491293 () Bool)

(assert (=> b!7491293 (= e!4467152 e!4467150)))

(declare-fun c!1383246 () Bool)

(assert (=> b!7491293 (= c!1383246 ((_ is EmptyLang!19635) lt!2629643))))

(declare-fun b!7491294 () Bool)

(assert (=> b!7491294 (= e!4467144 e!4467148)))

(declare-fun res!3005032 () Bool)

(assert (=> b!7491294 (=> res!3005032 e!4467148)))

(assert (=> b!7491294 (= res!3005032 call!687705)))

(assert (= (and d!2301259 c!1383245) b!7491284))

(assert (= (and d!2301259 (not c!1383245)) b!7491279))

(assert (= (and d!2301259 c!1383247) b!7491283))

(assert (= (and d!2301259 (not c!1383247)) b!7491293))

(assert (= (and b!7491293 c!1383246) b!7491292))

(assert (= (and b!7491293 (not c!1383246)) b!7491291))

(assert (= (and b!7491291 (not res!3005033)) b!7491289))

(assert (= (and b!7491289 res!3005034) b!7491282))

(assert (= (and b!7491282 res!3005037) b!7491285))

(assert (= (and b!7491285 res!3005030) b!7491287))

(assert (= (and b!7491289 (not res!3005036)) b!7491288))

(assert (= (and b!7491288 res!3005031) b!7491294))

(assert (= (and b!7491294 (not res!3005032)) b!7491286))

(assert (= (and b!7491286 (not res!3005035)) b!7491290))

(assert (= (or b!7491283 b!7491282 b!7491294) bm!687700))

(declare-fun m!8077616 () Bool)

(assert (=> b!7491284 m!8077616))

(declare-fun m!8077618 () Bool)

(assert (=> d!2301259 m!8077618))

(declare-fun m!8077620 () Bool)

(assert (=> d!2301259 m!8077620))

(declare-fun m!8077622 () Bool)

(assert (=> b!7491279 m!8077622))

(assert (=> b!7491279 m!8077622))

(declare-fun m!8077624 () Bool)

(assert (=> b!7491279 m!8077624))

(declare-fun m!8077626 () Bool)

(assert (=> b!7491279 m!8077626))

(assert (=> b!7491279 m!8077624))

(assert (=> b!7491279 m!8077626))

(declare-fun m!8077628 () Bool)

(assert (=> b!7491279 m!8077628))

(assert (=> b!7491286 m!8077626))

(assert (=> b!7491286 m!8077626))

(declare-fun m!8077630 () Bool)

(assert (=> b!7491286 m!8077630))

(assert (=> b!7491290 m!8077622))

(assert (=> b!7491285 m!8077626))

(assert (=> b!7491285 m!8077626))

(assert (=> b!7491285 m!8077630))

(assert (=> b!7491287 m!8077622))

(assert (=> bm!687700 m!8077618))

(assert (=> b!7491118 d!2301259))

(declare-fun bs!1935062 () Bool)

(declare-fun b!7491435 () Bool)

(assert (= bs!1935062 (and b!7491435 b!7491119)))

(declare-fun lambda!464166 () Int)

(assert (=> bs!1935062 (not (= lambda!464166 lambda!464148))))

(assert (=> bs!1935062 (not (= lambda!464166 lambda!464149))))

(assert (=> b!7491435 true))

(assert (=> b!7491435 true))

(declare-fun bs!1935063 () Bool)

(declare-fun b!7491434 () Bool)

(assert (= bs!1935063 (and b!7491434 b!7491119)))

(declare-fun lambda!464169 () Int)

(assert (=> bs!1935063 (not (= lambda!464169 lambda!464148))))

(assert (=> bs!1935063 (= (and (= (regOne!39782 lt!2629643) lt!2629647) (= (regTwo!39782 lt!2629643) rTail!78)) (= lambda!464169 lambda!464149))))

(declare-fun bs!1935064 () Bool)

(assert (= bs!1935064 (and b!7491434 b!7491435)))

(assert (=> bs!1935064 (not (= lambda!464169 lambda!464166))))

(assert (=> b!7491434 true))

(assert (=> b!7491434 true))

(declare-fun b!7491426 () Bool)

(declare-fun e!4467238 () Bool)

(declare-fun call!687727 () Bool)

(assert (=> b!7491426 (= e!4467238 call!687727)))

(declare-fun b!7491427 () Bool)

(declare-fun e!4467232 () Bool)

(declare-fun e!4467236 () Bool)

(assert (=> b!7491427 (= e!4467232 e!4467236)))

(declare-fun res!3005101 () Bool)

(assert (=> b!7491427 (= res!3005101 (matchRSpec!4312 (regOne!39783 lt!2629643) s!13591))))

(assert (=> b!7491427 (=> res!3005101 e!4467236)))

(declare-fun b!7491428 () Bool)

(declare-fun res!3005103 () Bool)

(declare-fun e!4467237 () Bool)

(assert (=> b!7491428 (=> res!3005103 e!4467237)))

(assert (=> b!7491428 (= res!3005103 call!687727)))

(declare-fun e!4467235 () Bool)

(assert (=> b!7491428 (= e!4467235 e!4467237)))

(declare-fun b!7491429 () Bool)

(declare-fun c!1383287 () Bool)

(assert (=> b!7491429 (= c!1383287 ((_ is Union!19635) lt!2629643))))

(declare-fun e!4467234 () Bool)

(assert (=> b!7491429 (= e!4467234 e!4467232)))

(declare-fun d!2301269 () Bool)

(declare-fun c!1383285 () Bool)

(assert (=> d!2301269 (= c!1383285 ((_ is EmptyExpr!19635) lt!2629643))))

(assert (=> d!2301269 (= (matchRSpec!4312 lt!2629643 s!13591) e!4467238)))

(declare-fun b!7491430 () Bool)

(assert (=> b!7491430 (= e!4467234 (= s!13591 (Cons!72225 (c!1383210 lt!2629643) Nil!72225)))))

(declare-fun b!7491431 () Bool)

(declare-fun c!1383286 () Bool)

(assert (=> b!7491431 (= c!1383286 ((_ is ElementMatch!19635) lt!2629643))))

(declare-fun e!4467233 () Bool)

(assert (=> b!7491431 (= e!4467233 e!4467234)))

(declare-fun call!687728 () Bool)

(declare-fun c!1383284 () Bool)

(declare-fun bm!687722 () Bool)

(assert (=> bm!687722 (= call!687728 (Exists!4252 (ite c!1383284 lambda!464166 lambda!464169)))))

(declare-fun bm!687723 () Bool)

(assert (=> bm!687723 (= call!687727 (isEmpty!41252 s!13591))))

(declare-fun b!7491432 () Bool)

(assert (=> b!7491432 (= e!4467236 (matchRSpec!4312 (regTwo!39783 lt!2629643) s!13591))))

(declare-fun b!7491433 () Bool)

(assert (=> b!7491433 (= e!4467232 e!4467235)))

(assert (=> b!7491433 (= c!1383284 ((_ is Star!19635) lt!2629643))))

(assert (=> b!7491434 (= e!4467235 call!687728)))

(assert (=> b!7491435 (= e!4467237 call!687728)))

(declare-fun b!7491436 () Bool)

(assert (=> b!7491436 (= e!4467238 e!4467233)))

(declare-fun res!3005102 () Bool)

(assert (=> b!7491436 (= res!3005102 (not ((_ is EmptyLang!19635) lt!2629643)))))

(assert (=> b!7491436 (=> (not res!3005102) (not e!4467233))))

(assert (= (and d!2301269 c!1383285) b!7491426))

(assert (= (and d!2301269 (not c!1383285)) b!7491436))

(assert (= (and b!7491436 res!3005102) b!7491431))

(assert (= (and b!7491431 c!1383286) b!7491430))

(assert (= (and b!7491431 (not c!1383286)) b!7491429))

(assert (= (and b!7491429 c!1383287) b!7491427))

(assert (= (and b!7491429 (not c!1383287)) b!7491433))

(assert (= (and b!7491427 (not res!3005101)) b!7491432))

(assert (= (and b!7491433 c!1383284) b!7491428))

(assert (= (and b!7491433 (not c!1383284)) b!7491434))

(assert (= (and b!7491428 (not res!3005103)) b!7491435))

(assert (= (or b!7491435 b!7491434) bm!687722))

(assert (= (or b!7491426 b!7491428) bm!687723))

(declare-fun m!8077696 () Bool)

(assert (=> b!7491427 m!8077696))

(declare-fun m!8077698 () Bool)

(assert (=> bm!687722 m!8077698))

(assert (=> bm!687723 m!8077618))

(declare-fun m!8077700 () Bool)

(assert (=> b!7491432 m!8077700))

(assert (=> b!7491118 d!2301269))

(declare-fun d!2301299 () Bool)

(assert (=> d!2301299 (= (matchR!9397 lt!2629643 s!13591) (matchRSpec!4312 lt!2629643 s!13591))))

(declare-fun lt!2629671 () Unit!166101)

(declare-fun choose!57904 (Regex!19635 List!72349) Unit!166101)

(assert (=> d!2301299 (= lt!2629671 (choose!57904 lt!2629643 s!13591))))

(assert (=> d!2301299 (validRegex!10149 lt!2629643)))

(assert (=> d!2301299 (= (mainMatchTheorem!4306 lt!2629643 s!13591) lt!2629671)))

(declare-fun bs!1935075 () Bool)

(assert (= bs!1935075 d!2301299))

(assert (=> bs!1935075 m!8077560))

(assert (=> bs!1935075 m!8077562))

(declare-fun m!8077708 () Bool)

(assert (=> bs!1935075 m!8077708))

(assert (=> bs!1935075 m!8077620))

(assert (=> b!7491118 d!2301299))

(declare-fun bs!1935076 () Bool)

(declare-fun b!7491454 () Bool)

(assert (= bs!1935076 (and b!7491454 b!7491119)))

(declare-fun lambda!464174 () Int)

(assert (=> bs!1935076 (not (= lambda!464174 lambda!464148))))

(assert (=> bs!1935076 (not (= lambda!464174 lambda!464149))))

(declare-fun bs!1935077 () Bool)

(assert (= bs!1935077 (and b!7491454 b!7491435)))

(assert (=> bs!1935077 (= (and (= (reg!19964 lt!2629626) (reg!19964 lt!2629643)) (= lt!2629626 lt!2629643)) (= lambda!464174 lambda!464166))))

(declare-fun bs!1935078 () Bool)

(assert (= bs!1935078 (and b!7491454 b!7491434)))

(assert (=> bs!1935078 (not (= lambda!464174 lambda!464169))))

(assert (=> b!7491454 true))

(assert (=> b!7491454 true))

(declare-fun bs!1935081 () Bool)

(declare-fun b!7491453 () Bool)

(assert (= bs!1935081 (and b!7491453 b!7491434)))

(declare-fun lambda!464178 () Int)

(assert (=> bs!1935081 (= (and (= (regOne!39782 lt!2629626) (regOne!39782 lt!2629643)) (= (regTwo!39782 lt!2629626) (regTwo!39782 lt!2629643))) (= lambda!464178 lambda!464169))))

(declare-fun bs!1935085 () Bool)

(assert (= bs!1935085 (and b!7491453 b!7491435)))

(assert (=> bs!1935085 (not (= lambda!464178 lambda!464166))))

(declare-fun bs!1935088 () Bool)

(assert (= bs!1935088 (and b!7491453 b!7491454)))

(assert (=> bs!1935088 (not (= lambda!464178 lambda!464174))))

(declare-fun bs!1935090 () Bool)

(assert (= bs!1935090 (and b!7491453 b!7491119)))

(assert (=> bs!1935090 (= (and (= (regOne!39782 lt!2629626) lt!2629647) (= (regTwo!39782 lt!2629626) rTail!78)) (= lambda!464178 lambda!464149))))

(assert (=> bs!1935090 (not (= lambda!464178 lambda!464148))))

(assert (=> b!7491453 true))

(assert (=> b!7491453 true))

(declare-fun b!7491445 () Bool)

(declare-fun e!4467249 () Bool)

(declare-fun call!687729 () Bool)

(assert (=> b!7491445 (= e!4467249 call!687729)))

(declare-fun b!7491446 () Bool)

(declare-fun e!4467243 () Bool)

(declare-fun e!4467247 () Bool)

(assert (=> b!7491446 (= e!4467243 e!4467247)))

(declare-fun res!3005112 () Bool)

(assert (=> b!7491446 (= res!3005112 (matchRSpec!4312 (regOne!39783 lt!2629626) s!13591))))

(assert (=> b!7491446 (=> res!3005112 e!4467247)))

(declare-fun b!7491447 () Bool)

(declare-fun res!3005114 () Bool)

(declare-fun e!4467248 () Bool)

(assert (=> b!7491447 (=> res!3005114 e!4467248)))

(assert (=> b!7491447 (= res!3005114 call!687729)))

(declare-fun e!4467246 () Bool)

(assert (=> b!7491447 (= e!4467246 e!4467248)))

(declare-fun b!7491448 () Bool)

(declare-fun c!1383291 () Bool)

(assert (=> b!7491448 (= c!1383291 ((_ is Union!19635) lt!2629626))))

(declare-fun e!4467245 () Bool)

(assert (=> b!7491448 (= e!4467245 e!4467243)))

(declare-fun d!2301303 () Bool)

(declare-fun c!1383289 () Bool)

(assert (=> d!2301303 (= c!1383289 ((_ is EmptyExpr!19635) lt!2629626))))

(assert (=> d!2301303 (= (matchRSpec!4312 lt!2629626 s!13591) e!4467249)))

(declare-fun b!7491449 () Bool)

(assert (=> b!7491449 (= e!4467245 (= s!13591 (Cons!72225 (c!1383210 lt!2629626) Nil!72225)))))

(declare-fun b!7491450 () Bool)

(declare-fun c!1383290 () Bool)

(assert (=> b!7491450 (= c!1383290 ((_ is ElementMatch!19635) lt!2629626))))

(declare-fun e!4467244 () Bool)

(assert (=> b!7491450 (= e!4467244 e!4467245)))

(declare-fun bm!687724 () Bool)

(declare-fun call!687730 () Bool)

(declare-fun c!1383288 () Bool)

(assert (=> bm!687724 (= call!687730 (Exists!4252 (ite c!1383288 lambda!464174 lambda!464178)))))

(declare-fun bm!687725 () Bool)

(assert (=> bm!687725 (= call!687729 (isEmpty!41252 s!13591))))

(declare-fun b!7491451 () Bool)

(assert (=> b!7491451 (= e!4467247 (matchRSpec!4312 (regTwo!39783 lt!2629626) s!13591))))

(declare-fun b!7491452 () Bool)

(assert (=> b!7491452 (= e!4467243 e!4467246)))

(assert (=> b!7491452 (= c!1383288 ((_ is Star!19635) lt!2629626))))

(assert (=> b!7491453 (= e!4467246 call!687730)))

(assert (=> b!7491454 (= e!4467248 call!687730)))

(declare-fun b!7491455 () Bool)

(assert (=> b!7491455 (= e!4467249 e!4467244)))

(declare-fun res!3005113 () Bool)

(assert (=> b!7491455 (= res!3005113 (not ((_ is EmptyLang!19635) lt!2629626)))))

(assert (=> b!7491455 (=> (not res!3005113) (not e!4467244))))

(assert (= (and d!2301303 c!1383289) b!7491445))

(assert (= (and d!2301303 (not c!1383289)) b!7491455))

(assert (= (and b!7491455 res!3005113) b!7491450))

(assert (= (and b!7491450 c!1383290) b!7491449))

(assert (= (and b!7491450 (not c!1383290)) b!7491448))

(assert (= (and b!7491448 c!1383291) b!7491446))

(assert (= (and b!7491448 (not c!1383291)) b!7491452))

(assert (= (and b!7491446 (not res!3005112)) b!7491451))

(assert (= (and b!7491452 c!1383288) b!7491447))

(assert (= (and b!7491452 (not c!1383288)) b!7491453))

(assert (= (and b!7491447 (not res!3005114)) b!7491454))

(assert (= (or b!7491454 b!7491453) bm!687724))

(assert (= (or b!7491445 b!7491447) bm!687725))

(declare-fun m!8077716 () Bool)

(assert (=> b!7491446 m!8077716))

(declare-fun m!8077720 () Bool)

(assert (=> bm!687724 m!8077720))

(assert (=> bm!687725 m!8077618))

(declare-fun m!8077724 () Bool)

(assert (=> b!7491451 m!8077724))

(assert (=> b!7491118 d!2301303))

(declare-fun d!2301307 () Bool)

(declare-fun e!4467265 () Bool)

(assert (=> d!2301307 e!4467265))

(declare-fun c!1383297 () Bool)

(assert (=> d!2301307 (= c!1383297 ((_ is EmptyExpr!19635) lt!2629626))))

(declare-fun lt!2629676 () Bool)

(declare-fun e!4467264 () Bool)

(assert (=> d!2301307 (= lt!2629676 e!4467264)))

(declare-fun c!1383295 () Bool)

(assert (=> d!2301307 (= c!1383295 (isEmpty!41252 s!13591))))

(assert (=> d!2301307 (validRegex!10149 lt!2629626)))

(assert (=> d!2301307 (= (matchR!9397 lt!2629626 s!13591) lt!2629676)))

(declare-fun b!7491474 () Bool)

(assert (=> b!7491474 (= e!4467264 (matchR!9397 (derivativeStep!5630 lt!2629626 (head!15370 s!13591)) (tail!14939 s!13591)))))

(declare-fun b!7491475 () Bool)

(declare-fun res!3005134 () Bool)

(declare-fun e!4467262 () Bool)

(assert (=> b!7491475 (=> (not res!3005134) (not e!4467262))))

(declare-fun call!687732 () Bool)

(assert (=> b!7491475 (= res!3005134 (not call!687732))))

(declare-fun b!7491476 () Bool)

(assert (=> b!7491476 (= e!4467265 (= lt!2629676 call!687732))))

(declare-fun b!7491477 () Bool)

(assert (=> b!7491477 (= e!4467264 (nullable!8573 lt!2629626))))

(declare-fun b!7491478 () Bool)

(declare-fun res!3005127 () Bool)

(assert (=> b!7491478 (=> (not res!3005127) (not e!4467262))))

(assert (=> b!7491478 (= res!3005127 (isEmpty!41252 (tail!14939 s!13591)))))

(declare-fun b!7491479 () Bool)

(declare-fun res!3005132 () Bool)

(declare-fun e!4467261 () Bool)

(assert (=> b!7491479 (=> res!3005132 e!4467261)))

(assert (=> b!7491479 (= res!3005132 (not (isEmpty!41252 (tail!14939 s!13591))))))

(declare-fun b!7491480 () Bool)

(assert (=> b!7491480 (= e!4467262 (= (head!15370 s!13591) (c!1383210 lt!2629626)))))

(declare-fun b!7491481 () Bool)

(declare-fun e!4467260 () Bool)

(declare-fun e!4467259 () Bool)

(assert (=> b!7491481 (= e!4467260 e!4467259)))

(declare-fun res!3005128 () Bool)

(assert (=> b!7491481 (=> (not res!3005128) (not e!4467259))))

(assert (=> b!7491481 (= res!3005128 (not lt!2629676))))

(declare-fun b!7491482 () Bool)

(declare-fun res!3005133 () Bool)

(assert (=> b!7491482 (=> res!3005133 e!4467260)))

(assert (=> b!7491482 (= res!3005133 e!4467262)))

(declare-fun res!3005131 () Bool)

(assert (=> b!7491482 (=> (not res!3005131) (not e!4467262))))

(assert (=> b!7491482 (= res!3005131 lt!2629676)))

(declare-fun b!7491483 () Bool)

(assert (=> b!7491483 (= e!4467261 (not (= (head!15370 s!13591) (c!1383210 lt!2629626))))))

(declare-fun bm!687727 () Bool)

(assert (=> bm!687727 (= call!687732 (isEmpty!41252 s!13591))))

(declare-fun b!7491484 () Bool)

(declare-fun res!3005130 () Bool)

(assert (=> b!7491484 (=> res!3005130 e!4467260)))

(assert (=> b!7491484 (= res!3005130 (not ((_ is ElementMatch!19635) lt!2629626)))))

(declare-fun e!4467263 () Bool)

(assert (=> b!7491484 (= e!4467263 e!4467260)))

(declare-fun b!7491485 () Bool)

(assert (=> b!7491485 (= e!4467263 (not lt!2629676))))

(declare-fun b!7491486 () Bool)

(assert (=> b!7491486 (= e!4467265 e!4467263)))

(declare-fun c!1383296 () Bool)

(assert (=> b!7491486 (= c!1383296 ((_ is EmptyLang!19635) lt!2629626))))

(declare-fun b!7491487 () Bool)

(assert (=> b!7491487 (= e!4467259 e!4467261)))

(declare-fun res!3005129 () Bool)

(assert (=> b!7491487 (=> res!3005129 e!4467261)))

(assert (=> b!7491487 (= res!3005129 call!687732)))

(assert (= (and d!2301307 c!1383295) b!7491477))

(assert (= (and d!2301307 (not c!1383295)) b!7491474))

(assert (= (and d!2301307 c!1383297) b!7491476))

(assert (= (and d!2301307 (not c!1383297)) b!7491486))

(assert (= (and b!7491486 c!1383296) b!7491485))

(assert (= (and b!7491486 (not c!1383296)) b!7491484))

(assert (= (and b!7491484 (not res!3005130)) b!7491482))

(assert (= (and b!7491482 res!3005131) b!7491475))

(assert (= (and b!7491475 res!3005134) b!7491478))

(assert (= (and b!7491478 res!3005127) b!7491480))

(assert (= (and b!7491482 (not res!3005133)) b!7491481))

(assert (= (and b!7491481 res!3005128) b!7491487))

(assert (= (and b!7491487 (not res!3005129)) b!7491479))

(assert (= (and b!7491479 (not res!3005132)) b!7491483))

(assert (= (or b!7491476 b!7491475 b!7491487) bm!687727))

(declare-fun m!8077728 () Bool)

(assert (=> b!7491477 m!8077728))

(assert (=> d!2301307 m!8077618))

(declare-fun m!8077730 () Bool)

(assert (=> d!2301307 m!8077730))

(assert (=> b!7491474 m!8077622))

(assert (=> b!7491474 m!8077622))

(declare-fun m!8077732 () Bool)

(assert (=> b!7491474 m!8077732))

(assert (=> b!7491474 m!8077626))

(assert (=> b!7491474 m!8077732))

(assert (=> b!7491474 m!8077626))

(declare-fun m!8077734 () Bool)

(assert (=> b!7491474 m!8077734))

(assert (=> b!7491479 m!8077626))

(assert (=> b!7491479 m!8077626))

(assert (=> b!7491479 m!8077630))

(assert (=> b!7491483 m!8077622))

(assert (=> b!7491478 m!8077626))

(assert (=> b!7491478 m!8077626))

(assert (=> b!7491478 m!8077630))

(assert (=> b!7491480 m!8077622))

(assert (=> bm!687727 m!8077618))

(assert (=> b!7491118 d!2301307))

(declare-fun d!2301311 () Bool)

(assert (=> d!2301311 (= (matchR!9397 lt!2629626 s!13591) (matchRSpec!4312 lt!2629626 s!13591))))

(declare-fun lt!2629677 () Unit!166101)

(assert (=> d!2301311 (= lt!2629677 (choose!57904 lt!2629626 s!13591))))

(assert (=> d!2301311 (validRegex!10149 lt!2629626)))

(assert (=> d!2301311 (= (mainMatchTheorem!4306 lt!2629626 s!13591) lt!2629677)))

(declare-fun bs!1935094 () Bool)

(assert (= bs!1935094 d!2301311))

(assert (=> bs!1935094 m!8077558))

(assert (=> bs!1935094 m!8077566))

(declare-fun m!8077736 () Bool)

(assert (=> bs!1935094 m!8077736))

(assert (=> bs!1935094 m!8077730))

(assert (=> b!7491118 d!2301311))

(declare-fun d!2301313 () Bool)

(declare-fun isEmpty!41253 (Option!17186) Bool)

(assert (=> d!2301313 (= (isDefined!13875 lt!2629624) (not (isEmpty!41253 lt!2629624)))))

(declare-fun bs!1935095 () Bool)

(assert (= bs!1935095 d!2301313))

(declare-fun m!8077738 () Bool)

(assert (=> bs!1935095 m!8077738))

(assert (=> b!7491119 d!2301313))

(declare-fun b!7491588 () Bool)

(declare-fun res!3005186 () Bool)

(declare-fun e!4467319 () Bool)

(assert (=> b!7491588 (=> (not res!3005186) (not e!4467319))))

(declare-fun lt!2629701 () Option!17186)

(assert (=> b!7491588 (= res!3005186 (matchR!9397 lt!2629647 (_1!37657 (get!25310 lt!2629701))))))

(declare-fun b!7491589 () Bool)

(assert (=> b!7491589 (= e!4467319 (= (++!17243 (_1!37657 (get!25310 lt!2629701)) (_2!37657 (get!25310 lt!2629701))) s!13591))))

(declare-fun b!7491590 () Bool)

(declare-fun e!4467321 () Option!17186)

(assert (=> b!7491590 (= e!4467321 (Some!17185 (tuple2!68709 Nil!72225 s!13591)))))

(declare-fun b!7491591 () Bool)

(declare-fun lt!2629700 () Unit!166101)

(declare-fun lt!2629699 () Unit!166101)

(assert (=> b!7491591 (= lt!2629700 lt!2629699)))

(assert (=> b!7491591 (= (++!17243 (++!17243 Nil!72225 (Cons!72225 (h!78673 s!13591) Nil!72225)) (t!386918 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3118 (List!72349 C!39544 List!72349 List!72349) Unit!166101)

(assert (=> b!7491591 (= lt!2629699 (lemmaMoveElementToOtherListKeepsConcatEq!3118 Nil!72225 (h!78673 s!13591) (t!386918 s!13591) s!13591))))

(declare-fun e!4467323 () Option!17186)

(assert (=> b!7491591 (= e!4467323 (findConcatSeparation!3308 lt!2629647 rTail!78 (++!17243 Nil!72225 (Cons!72225 (h!78673 s!13591) Nil!72225)) (t!386918 s!13591) s!13591))))

(declare-fun b!7491592 () Bool)

(declare-fun e!4467325 () Bool)

(assert (=> b!7491592 (= e!4467325 (not (isDefined!13875 lt!2629701)))))

(declare-fun b!7491593 () Bool)

(assert (=> b!7491593 (= e!4467321 e!4467323)))

(declare-fun c!1383323 () Bool)

(assert (=> b!7491593 (= c!1383323 ((_ is Nil!72225) s!13591))))

(declare-fun b!7491587 () Bool)

(declare-fun res!3005182 () Bool)

(assert (=> b!7491587 (=> (not res!3005182) (not e!4467319))))

(assert (=> b!7491587 (= res!3005182 (matchR!9397 rTail!78 (_2!37657 (get!25310 lt!2629701))))))

(declare-fun d!2301315 () Bool)

(assert (=> d!2301315 e!4467325))

(declare-fun res!3005184 () Bool)

(assert (=> d!2301315 (=> res!3005184 e!4467325)))

(assert (=> d!2301315 (= res!3005184 e!4467319)))

(declare-fun res!3005183 () Bool)

(assert (=> d!2301315 (=> (not res!3005183) (not e!4467319))))

(assert (=> d!2301315 (= res!3005183 (isDefined!13875 lt!2629701))))

(assert (=> d!2301315 (= lt!2629701 e!4467321)))

(declare-fun c!1383322 () Bool)

(declare-fun e!4467320 () Bool)

(assert (=> d!2301315 (= c!1383322 e!4467320)))

(declare-fun res!3005185 () Bool)

(assert (=> d!2301315 (=> (not res!3005185) (not e!4467320))))

(assert (=> d!2301315 (= res!3005185 (matchR!9397 lt!2629647 Nil!72225))))

(assert (=> d!2301315 (validRegex!10149 lt!2629647)))

(assert (=> d!2301315 (= (findConcatSeparation!3308 lt!2629647 rTail!78 Nil!72225 s!13591 s!13591) lt!2629701)))

(declare-fun b!7491594 () Bool)

(assert (=> b!7491594 (= e!4467320 (matchR!9397 rTail!78 s!13591))))

(declare-fun b!7491595 () Bool)

(assert (=> b!7491595 (= e!4467323 None!17185)))

(assert (= (and d!2301315 res!3005185) b!7491594))

(assert (= (and d!2301315 c!1383322) b!7491590))

(assert (= (and d!2301315 (not c!1383322)) b!7491593))

(assert (= (and b!7491593 c!1383323) b!7491595))

(assert (= (and b!7491593 (not c!1383323)) b!7491591))

(assert (= (and d!2301315 res!3005183) b!7491588))

(assert (= (and b!7491588 res!3005186) b!7491587))

(assert (= (and b!7491587 res!3005182) b!7491589))

(assert (= (and d!2301315 (not res!3005184)) b!7491592))

(declare-fun m!8077804 () Bool)

(assert (=> b!7491587 m!8077804))

(declare-fun m!8077806 () Bool)

(assert (=> b!7491587 m!8077806))

(assert (=> b!7491588 m!8077804))

(declare-fun m!8077808 () Bool)

(assert (=> b!7491588 m!8077808))

(declare-fun m!8077810 () Bool)

(assert (=> b!7491592 m!8077810))

(assert (=> b!7491589 m!8077804))

(declare-fun m!8077816 () Bool)

(assert (=> b!7491589 m!8077816))

(declare-fun m!8077826 () Bool)

(assert (=> b!7491591 m!8077826))

(assert (=> b!7491591 m!8077826))

(declare-fun m!8077830 () Bool)

(assert (=> b!7491591 m!8077830))

(declare-fun m!8077832 () Bool)

(assert (=> b!7491591 m!8077832))

(assert (=> b!7491591 m!8077826))

(declare-fun m!8077834 () Bool)

(assert (=> b!7491591 m!8077834))

(declare-fun m!8077836 () Bool)

(assert (=> b!7491594 m!8077836))

(assert (=> d!2301315 m!8077810))

(declare-fun m!8077838 () Bool)

(assert (=> d!2301315 m!8077838))

(declare-fun m!8077840 () Bool)

(assert (=> d!2301315 m!8077840))

(assert (=> b!7491119 d!2301315))

(declare-fun bs!1935215 () Bool)

(declare-fun d!2301335 () Bool)

(assert (= bs!1935215 (and d!2301335 b!7491434)))

(declare-fun lambda!464189 () Int)

(assert (=> bs!1935215 (not (= lambda!464189 lambda!464169))))

(declare-fun bs!1935216 () Bool)

(assert (= bs!1935216 (and d!2301335 b!7491435)))

(assert (=> bs!1935216 (not (= lambda!464189 lambda!464166))))

(declare-fun bs!1935217 () Bool)

(assert (= bs!1935217 (and d!2301335 b!7491453)))

(assert (=> bs!1935217 (not (= lambda!464189 lambda!464178))))

(declare-fun bs!1935219 () Bool)

(assert (= bs!1935219 (and d!2301335 b!7491454)))

(assert (=> bs!1935219 (not (= lambda!464189 lambda!464174))))

(declare-fun bs!1935221 () Bool)

(assert (= bs!1935221 (and d!2301335 b!7491119)))

(assert (=> bs!1935221 (not (= lambda!464189 lambda!464149))))

(assert (=> bs!1935221 (= lambda!464189 lambda!464148)))

(assert (=> d!2301335 true))

(assert (=> d!2301335 true))

(assert (=> d!2301335 true))

(assert (=> d!2301335 (= (isDefined!13875 (findConcatSeparation!3308 lt!2629647 rTail!78 Nil!72225 s!13591 s!13591)) (Exists!4252 lambda!464189))))

(declare-fun lt!2629706 () Unit!166101)

(declare-fun choose!57906 (Regex!19635 Regex!19635 List!72349) Unit!166101)

(assert (=> d!2301335 (= lt!2629706 (choose!57906 lt!2629647 rTail!78 s!13591))))

(assert (=> d!2301335 (validRegex!10149 lt!2629647)))

(assert (=> d!2301335 (= (lemmaFindConcatSeparationEquivalentToExists!3066 lt!2629647 rTail!78 s!13591) lt!2629706)))

(declare-fun bs!1935222 () Bool)

(assert (= bs!1935222 d!2301335))

(assert (=> bs!1935222 m!8077516))

(declare-fun m!8077880 () Bool)

(assert (=> bs!1935222 m!8077880))

(assert (=> bs!1935222 m!8077516))

(declare-fun m!8077882 () Bool)

(assert (=> bs!1935222 m!8077882))

(assert (=> bs!1935222 m!8077840))

(declare-fun m!8077884 () Bool)

(assert (=> bs!1935222 m!8077884))

(assert (=> b!7491119 d!2301335))

(declare-fun d!2301349 () Bool)

(declare-fun choose!57907 (Int) Bool)

(assert (=> d!2301349 (= (Exists!4252 lambda!464149) (choose!57907 lambda!464149))))

(declare-fun bs!1935223 () Bool)

(assert (= bs!1935223 d!2301349))

(declare-fun m!8077886 () Bool)

(assert (=> bs!1935223 m!8077886))

(assert (=> b!7491119 d!2301349))

(declare-fun bs!1935224 () Bool)

(declare-fun d!2301351 () Bool)

(assert (= bs!1935224 (and d!2301351 d!2301335)))

(declare-fun lambda!464194 () Int)

(assert (=> bs!1935224 (= lambda!464194 lambda!464189)))

(declare-fun bs!1935225 () Bool)

(assert (= bs!1935225 (and d!2301351 b!7491434)))

(assert (=> bs!1935225 (not (= lambda!464194 lambda!464169))))

(declare-fun bs!1935226 () Bool)

(assert (= bs!1935226 (and d!2301351 b!7491435)))

(assert (=> bs!1935226 (not (= lambda!464194 lambda!464166))))

(declare-fun bs!1935227 () Bool)

(assert (= bs!1935227 (and d!2301351 b!7491453)))

(assert (=> bs!1935227 (not (= lambda!464194 lambda!464178))))

(declare-fun bs!1935228 () Bool)

(assert (= bs!1935228 (and d!2301351 b!7491454)))

(assert (=> bs!1935228 (not (= lambda!464194 lambda!464174))))

(declare-fun bs!1935229 () Bool)

(assert (= bs!1935229 (and d!2301351 b!7491119)))

(assert (=> bs!1935229 (not (= lambda!464194 lambda!464149))))

(assert (=> bs!1935229 (= lambda!464194 lambda!464148)))

(assert (=> d!2301351 true))

(assert (=> d!2301351 true))

(assert (=> d!2301351 true))

(declare-fun lambda!464195 () Int)

(assert (=> bs!1935224 (not (= lambda!464195 lambda!464189))))

(assert (=> bs!1935226 (not (= lambda!464195 lambda!464166))))

(assert (=> bs!1935227 (= (and (= lt!2629647 (regOne!39782 lt!2629626)) (= rTail!78 (regTwo!39782 lt!2629626))) (= lambda!464195 lambda!464178))))

(assert (=> bs!1935228 (not (= lambda!464195 lambda!464174))))

(assert (=> bs!1935229 (= lambda!464195 lambda!464149)))

(assert (=> bs!1935229 (not (= lambda!464195 lambda!464148))))

(declare-fun bs!1935230 () Bool)

(assert (= bs!1935230 d!2301351))

(assert (=> bs!1935230 (not (= lambda!464195 lambda!464194))))

(assert (=> bs!1935225 (= (and (= lt!2629647 (regOne!39782 lt!2629643)) (= rTail!78 (regTwo!39782 lt!2629643))) (= lambda!464195 lambda!464169))))

(assert (=> d!2301351 true))

(assert (=> d!2301351 true))

(assert (=> d!2301351 true))

(assert (=> d!2301351 (= (Exists!4252 lambda!464194) (Exists!4252 lambda!464195))))

(declare-fun lt!2629712 () Unit!166101)

(declare-fun choose!57909 (Regex!19635 Regex!19635 List!72349) Unit!166101)

(assert (=> d!2301351 (= lt!2629712 (choose!57909 lt!2629647 rTail!78 s!13591))))

(assert (=> d!2301351 (validRegex!10149 lt!2629647)))

(assert (=> d!2301351 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2580 lt!2629647 rTail!78 s!13591) lt!2629712)))

(declare-fun m!8077888 () Bool)

(assert (=> bs!1935230 m!8077888))

(declare-fun m!8077890 () Bool)

(assert (=> bs!1935230 m!8077890))

(declare-fun m!8077892 () Bool)

(assert (=> bs!1935230 m!8077892))

(assert (=> bs!1935230 m!8077840))

(assert (=> b!7491119 d!2301351))

(declare-fun d!2301353 () Bool)

(declare-fun e!4467397 () Bool)

(assert (=> d!2301353 e!4467397))

(declare-fun c!1383345 () Bool)

(assert (=> d!2301353 (= c!1383345 ((_ is EmptyExpr!19635) lt!2629647))))

(declare-fun lt!2629713 () Bool)

(declare-fun e!4467396 () Bool)

(assert (=> d!2301353 (= lt!2629713 e!4467396)))

(declare-fun c!1383343 () Bool)

(assert (=> d!2301353 (= c!1383343 (isEmpty!41252 (_1!37657 lt!2629628)))))

(assert (=> d!2301353 (validRegex!10149 lt!2629647)))

(assert (=> d!2301353 (= (matchR!9397 lt!2629647 (_1!37657 lt!2629628)) lt!2629713)))

(declare-fun b!7491750 () Bool)

(assert (=> b!7491750 (= e!4467396 (matchR!9397 (derivativeStep!5630 lt!2629647 (head!15370 (_1!37657 lt!2629628))) (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491751 () Bool)

(declare-fun res!3005239 () Bool)

(declare-fun e!4467394 () Bool)

(assert (=> b!7491751 (=> (not res!3005239) (not e!4467394))))

(declare-fun call!687748 () Bool)

(assert (=> b!7491751 (= res!3005239 (not call!687748))))

(declare-fun b!7491752 () Bool)

(assert (=> b!7491752 (= e!4467397 (= lt!2629713 call!687748))))

(declare-fun b!7491753 () Bool)

(assert (=> b!7491753 (= e!4467396 (nullable!8573 lt!2629647))))

(declare-fun b!7491754 () Bool)

(declare-fun res!3005232 () Bool)

(assert (=> b!7491754 (=> (not res!3005232) (not e!4467394))))

(assert (=> b!7491754 (= res!3005232 (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491755 () Bool)

(declare-fun res!3005237 () Bool)

(declare-fun e!4467393 () Bool)

(assert (=> b!7491755 (=> res!3005237 e!4467393)))

(assert (=> b!7491755 (= res!3005237 (not (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628)))))))

(declare-fun b!7491756 () Bool)

(assert (=> b!7491756 (= e!4467394 (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 lt!2629647)))))

(declare-fun b!7491757 () Bool)

(declare-fun e!4467392 () Bool)

(declare-fun e!4467391 () Bool)

(assert (=> b!7491757 (= e!4467392 e!4467391)))

(declare-fun res!3005233 () Bool)

(assert (=> b!7491757 (=> (not res!3005233) (not e!4467391))))

(assert (=> b!7491757 (= res!3005233 (not lt!2629713))))

(declare-fun b!7491758 () Bool)

(declare-fun res!3005238 () Bool)

(assert (=> b!7491758 (=> res!3005238 e!4467392)))

(assert (=> b!7491758 (= res!3005238 e!4467394)))

(declare-fun res!3005236 () Bool)

(assert (=> b!7491758 (=> (not res!3005236) (not e!4467394))))

(assert (=> b!7491758 (= res!3005236 lt!2629713)))

(declare-fun b!7491759 () Bool)

(assert (=> b!7491759 (= e!4467393 (not (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 lt!2629647))))))

(declare-fun bm!687743 () Bool)

(assert (=> bm!687743 (= call!687748 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491760 () Bool)

(declare-fun res!3005235 () Bool)

(assert (=> b!7491760 (=> res!3005235 e!4467392)))

(assert (=> b!7491760 (= res!3005235 (not ((_ is ElementMatch!19635) lt!2629647)))))

(declare-fun e!4467395 () Bool)

(assert (=> b!7491760 (= e!4467395 e!4467392)))

(declare-fun b!7491761 () Bool)

(assert (=> b!7491761 (= e!4467395 (not lt!2629713))))

(declare-fun b!7491762 () Bool)

(assert (=> b!7491762 (= e!4467397 e!4467395)))

(declare-fun c!1383344 () Bool)

(assert (=> b!7491762 (= c!1383344 ((_ is EmptyLang!19635) lt!2629647))))

(declare-fun b!7491763 () Bool)

(assert (=> b!7491763 (= e!4467391 e!4467393)))

(declare-fun res!3005234 () Bool)

(assert (=> b!7491763 (=> res!3005234 e!4467393)))

(assert (=> b!7491763 (= res!3005234 call!687748)))

(assert (= (and d!2301353 c!1383343) b!7491753))

(assert (= (and d!2301353 (not c!1383343)) b!7491750))

(assert (= (and d!2301353 c!1383345) b!7491752))

(assert (= (and d!2301353 (not c!1383345)) b!7491762))

(assert (= (and b!7491762 c!1383344) b!7491761))

(assert (= (and b!7491762 (not c!1383344)) b!7491760))

(assert (= (and b!7491760 (not res!3005235)) b!7491758))

(assert (= (and b!7491758 res!3005236) b!7491751))

(assert (= (and b!7491751 res!3005239) b!7491754))

(assert (= (and b!7491754 res!3005232) b!7491756))

(assert (= (and b!7491758 (not res!3005238)) b!7491757))

(assert (= (and b!7491757 res!3005233) b!7491763))

(assert (= (and b!7491763 (not res!3005234)) b!7491755))

(assert (= (and b!7491755 (not res!3005237)) b!7491759))

(assert (= (or b!7491752 b!7491751 b!7491763) bm!687743))

(declare-fun m!8077894 () Bool)

(assert (=> b!7491753 m!8077894))

(declare-fun m!8077896 () Bool)

(assert (=> d!2301353 m!8077896))

(assert (=> d!2301353 m!8077840))

(declare-fun m!8077898 () Bool)

(assert (=> b!7491750 m!8077898))

(assert (=> b!7491750 m!8077898))

(declare-fun m!8077900 () Bool)

(assert (=> b!7491750 m!8077900))

(declare-fun m!8077902 () Bool)

(assert (=> b!7491750 m!8077902))

(assert (=> b!7491750 m!8077900))

(assert (=> b!7491750 m!8077902))

(declare-fun m!8077904 () Bool)

(assert (=> b!7491750 m!8077904))

(assert (=> b!7491755 m!8077902))

(assert (=> b!7491755 m!8077902))

(declare-fun m!8077906 () Bool)

(assert (=> b!7491755 m!8077906))

(assert (=> b!7491759 m!8077898))

(assert (=> b!7491754 m!8077902))

(assert (=> b!7491754 m!8077902))

(assert (=> b!7491754 m!8077906))

(assert (=> b!7491756 m!8077898))

(assert (=> bm!687743 m!8077896))

(assert (=> b!7491119 d!2301353))

(declare-fun d!2301355 () Bool)

(assert (=> d!2301355 (= (Exists!4252 lambda!464148) (choose!57907 lambda!464148))))

(declare-fun bs!1935231 () Bool)

(assert (= bs!1935231 d!2301355))

(declare-fun m!8077908 () Bool)

(assert (=> bs!1935231 m!8077908))

(assert (=> b!7491119 d!2301355))

(declare-fun d!2301357 () Bool)

(assert (=> d!2301357 (= (get!25310 lt!2629624) (v!54314 lt!2629624))))

(assert (=> b!7491119 d!2301357))

(declare-fun d!2301359 () Bool)

(assert (=> d!2301359 (matchR!9397 (Concat!28480 (ite c!1383209 r1!5845 r2!5783) rTail!78) (++!17243 (_1!37657 lt!2629628) (_2!37657 lt!2629628)))))

(declare-fun lt!2629716 () Unit!166101)

(declare-fun choose!57911 (Regex!19635 Regex!19635 List!72349 List!72349) Unit!166101)

(assert (=> d!2301359 (= lt!2629716 (choose!57911 (ite c!1383209 r1!5845 r2!5783) rTail!78 (_1!37657 lt!2629628) (_2!37657 lt!2629628)))))

(declare-fun e!4467400 () Bool)

(assert (=> d!2301359 e!4467400))

(declare-fun res!3005242 () Bool)

(assert (=> d!2301359 (=> (not res!3005242) (not e!4467400))))

(assert (=> d!2301359 (= res!3005242 (validRegex!10149 (ite c!1383209 r1!5845 r2!5783)))))

(assert (=> d!2301359 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!404 (ite c!1383209 r1!5845 r2!5783) rTail!78 (_1!37657 lt!2629628) (_2!37657 lt!2629628)) lt!2629716)))

(declare-fun b!7491766 () Bool)

(assert (=> b!7491766 (= e!4467400 (validRegex!10149 rTail!78))))

(assert (= (and d!2301359 res!3005242) b!7491766))

(assert (=> d!2301359 m!8077512))

(assert (=> d!2301359 m!8077512))

(declare-fun m!8077910 () Bool)

(assert (=> d!2301359 m!8077910))

(declare-fun m!8077912 () Bool)

(assert (=> d!2301359 m!8077912))

(declare-fun m!8077914 () Bool)

(assert (=> d!2301359 m!8077914))

(assert (=> b!7491766 m!8077534))

(assert (=> bm!687674 d!2301359))

(declare-fun bm!687744 () Bool)

(declare-fun call!687751 () Bool)

(declare-fun call!687750 () Bool)

(assert (=> bm!687744 (= call!687751 call!687750)))

(declare-fun b!7491767 () Bool)

(declare-fun e!4467404 () Bool)

(assert (=> b!7491767 (= e!4467404 call!687751)))

(declare-fun b!7491768 () Bool)

(declare-fun e!4467401 () Bool)

(declare-fun e!4467405 () Bool)

(assert (=> b!7491768 (= e!4467401 e!4467405)))

(declare-fun res!3005245 () Bool)

(assert (=> b!7491768 (= res!3005245 (not (nullable!8573 (reg!19964 r1!5845))))))

(assert (=> b!7491768 (=> (not res!3005245) (not e!4467405))))

(declare-fun b!7491769 () Bool)

(declare-fun e!4467407 () Bool)

(assert (=> b!7491769 (= e!4467401 e!4467407)))

(declare-fun c!1383347 () Bool)

(assert (=> b!7491769 (= c!1383347 ((_ is Union!19635) r1!5845))))

(declare-fun b!7491770 () Bool)

(declare-fun e!4467402 () Bool)

(assert (=> b!7491770 (= e!4467402 call!687751)))

(declare-fun b!7491771 () Bool)

(declare-fun e!4467406 () Bool)

(assert (=> b!7491771 (= e!4467406 e!4467402)))

(declare-fun res!3005244 () Bool)

(assert (=> b!7491771 (=> (not res!3005244) (not e!4467402))))

(declare-fun call!687749 () Bool)

(assert (=> b!7491771 (= res!3005244 call!687749)))

(declare-fun b!7491772 () Bool)

(declare-fun res!3005247 () Bool)

(assert (=> b!7491772 (=> (not res!3005247) (not e!4467404))))

(assert (=> b!7491772 (= res!3005247 call!687749)))

(assert (=> b!7491772 (= e!4467407 e!4467404)))

(declare-fun b!7491773 () Bool)

(declare-fun e!4467403 () Bool)

(assert (=> b!7491773 (= e!4467403 e!4467401)))

(declare-fun c!1383346 () Bool)

(assert (=> b!7491773 (= c!1383346 ((_ is Star!19635) r1!5845))))

(declare-fun bm!687746 () Bool)

(assert (=> bm!687746 (= call!687749 (validRegex!10149 (ite c!1383347 (regOne!39783 r1!5845) (regOne!39782 r1!5845))))))

(declare-fun b!7491774 () Bool)

(assert (=> b!7491774 (= e!4467405 call!687750)))

(declare-fun b!7491775 () Bool)

(declare-fun res!3005246 () Bool)

(assert (=> b!7491775 (=> res!3005246 e!4467406)))

(assert (=> b!7491775 (= res!3005246 (not ((_ is Concat!28480) r1!5845)))))

(assert (=> b!7491775 (= e!4467407 e!4467406)))

(declare-fun d!2301361 () Bool)

(declare-fun res!3005243 () Bool)

(assert (=> d!2301361 (=> res!3005243 e!4467403)))

(assert (=> d!2301361 (= res!3005243 ((_ is ElementMatch!19635) r1!5845))))

(assert (=> d!2301361 (= (validRegex!10149 r1!5845) e!4467403)))

(declare-fun bm!687745 () Bool)

(assert (=> bm!687745 (= call!687750 (validRegex!10149 (ite c!1383346 (reg!19964 r1!5845) (ite c!1383347 (regTwo!39783 r1!5845) (regTwo!39782 r1!5845)))))))

(assert (= (and d!2301361 (not res!3005243)) b!7491773))

(assert (= (and b!7491773 c!1383346) b!7491768))

(assert (= (and b!7491773 (not c!1383346)) b!7491769))

(assert (= (and b!7491768 res!3005245) b!7491774))

(assert (= (and b!7491769 c!1383347) b!7491772))

(assert (= (and b!7491769 (not c!1383347)) b!7491775))

(assert (= (and b!7491772 res!3005247) b!7491767))

(assert (= (and b!7491775 (not res!3005246)) b!7491771))

(assert (= (and b!7491771 res!3005244) b!7491770))

(assert (= (or b!7491767 b!7491770) bm!687744))

(assert (= (or b!7491772 b!7491771) bm!687746))

(assert (= (or b!7491774 bm!687744) bm!687745))

(declare-fun m!8077916 () Bool)

(assert (=> b!7491768 m!8077916))

(declare-fun m!8077918 () Bool)

(assert (=> bm!687746 m!8077918))

(declare-fun m!8077920 () Bool)

(assert (=> bm!687745 m!8077920))

(assert (=> start!725202 d!2301361))

(declare-fun d!2301363 () Bool)

(declare-fun e!4467414 () Bool)

(assert (=> d!2301363 e!4467414))

(declare-fun c!1383350 () Bool)

(assert (=> d!2301363 (= c!1383350 ((_ is EmptyExpr!19635) lt!2629646))))

(declare-fun lt!2629717 () Bool)

(declare-fun e!4467413 () Bool)

(assert (=> d!2301363 (= lt!2629717 e!4467413)))

(declare-fun c!1383348 () Bool)

(assert (=> d!2301363 (= c!1383348 (isEmpty!41252 s!13591))))

(assert (=> d!2301363 (validRegex!10149 lt!2629646)))

(assert (=> d!2301363 (= (matchR!9397 lt!2629646 s!13591) lt!2629717)))

(declare-fun b!7491776 () Bool)

(assert (=> b!7491776 (= e!4467413 (matchR!9397 (derivativeStep!5630 lt!2629646 (head!15370 s!13591)) (tail!14939 s!13591)))))

(declare-fun b!7491777 () Bool)

(declare-fun res!3005255 () Bool)

(declare-fun e!4467411 () Bool)

(assert (=> b!7491777 (=> (not res!3005255) (not e!4467411))))

(declare-fun call!687752 () Bool)

(assert (=> b!7491777 (= res!3005255 (not call!687752))))

(declare-fun b!7491778 () Bool)

(assert (=> b!7491778 (= e!4467414 (= lt!2629717 call!687752))))

(declare-fun b!7491779 () Bool)

(assert (=> b!7491779 (= e!4467413 (nullable!8573 lt!2629646))))

(declare-fun b!7491780 () Bool)

(declare-fun res!3005248 () Bool)

(assert (=> b!7491780 (=> (not res!3005248) (not e!4467411))))

(assert (=> b!7491780 (= res!3005248 (isEmpty!41252 (tail!14939 s!13591)))))

(declare-fun b!7491781 () Bool)

(declare-fun res!3005253 () Bool)

(declare-fun e!4467410 () Bool)

(assert (=> b!7491781 (=> res!3005253 e!4467410)))

(assert (=> b!7491781 (= res!3005253 (not (isEmpty!41252 (tail!14939 s!13591))))))

(declare-fun b!7491782 () Bool)

(assert (=> b!7491782 (= e!4467411 (= (head!15370 s!13591) (c!1383210 lt!2629646)))))

(declare-fun b!7491783 () Bool)

(declare-fun e!4467409 () Bool)

(declare-fun e!4467408 () Bool)

(assert (=> b!7491783 (= e!4467409 e!4467408)))

(declare-fun res!3005249 () Bool)

(assert (=> b!7491783 (=> (not res!3005249) (not e!4467408))))

(assert (=> b!7491783 (= res!3005249 (not lt!2629717))))

(declare-fun b!7491784 () Bool)

(declare-fun res!3005254 () Bool)

(assert (=> b!7491784 (=> res!3005254 e!4467409)))

(assert (=> b!7491784 (= res!3005254 e!4467411)))

(declare-fun res!3005252 () Bool)

(assert (=> b!7491784 (=> (not res!3005252) (not e!4467411))))

(assert (=> b!7491784 (= res!3005252 lt!2629717)))

(declare-fun b!7491785 () Bool)

(assert (=> b!7491785 (= e!4467410 (not (= (head!15370 s!13591) (c!1383210 lt!2629646))))))

(declare-fun bm!687747 () Bool)

(assert (=> bm!687747 (= call!687752 (isEmpty!41252 s!13591))))

(declare-fun b!7491786 () Bool)

(declare-fun res!3005251 () Bool)

(assert (=> b!7491786 (=> res!3005251 e!4467409)))

(assert (=> b!7491786 (= res!3005251 (not ((_ is ElementMatch!19635) lt!2629646)))))

(declare-fun e!4467412 () Bool)

(assert (=> b!7491786 (= e!4467412 e!4467409)))

(declare-fun b!7491787 () Bool)

(assert (=> b!7491787 (= e!4467412 (not lt!2629717))))

(declare-fun b!7491788 () Bool)

(assert (=> b!7491788 (= e!4467414 e!4467412)))

(declare-fun c!1383349 () Bool)

(assert (=> b!7491788 (= c!1383349 ((_ is EmptyLang!19635) lt!2629646))))

(declare-fun b!7491789 () Bool)

(assert (=> b!7491789 (= e!4467408 e!4467410)))

(declare-fun res!3005250 () Bool)

(assert (=> b!7491789 (=> res!3005250 e!4467410)))

(assert (=> b!7491789 (= res!3005250 call!687752)))

(assert (= (and d!2301363 c!1383348) b!7491779))

(assert (= (and d!2301363 (not c!1383348)) b!7491776))

(assert (= (and d!2301363 c!1383350) b!7491778))

(assert (= (and d!2301363 (not c!1383350)) b!7491788))

(assert (= (and b!7491788 c!1383349) b!7491787))

(assert (= (and b!7491788 (not c!1383349)) b!7491786))

(assert (= (and b!7491786 (not res!3005251)) b!7491784))

(assert (= (and b!7491784 res!3005252) b!7491777))

(assert (= (and b!7491777 res!3005255) b!7491780))

(assert (= (and b!7491780 res!3005248) b!7491782))

(assert (= (and b!7491784 (not res!3005254)) b!7491783))

(assert (= (and b!7491783 res!3005249) b!7491789))

(assert (= (and b!7491789 (not res!3005250)) b!7491781))

(assert (= (and b!7491781 (not res!3005253)) b!7491785))

(assert (= (or b!7491778 b!7491777 b!7491789) bm!687747))

(declare-fun m!8077922 () Bool)

(assert (=> b!7491779 m!8077922))

(assert (=> d!2301363 m!8077618))

(declare-fun m!8077924 () Bool)

(assert (=> d!2301363 m!8077924))

(assert (=> b!7491776 m!8077622))

(assert (=> b!7491776 m!8077622))

(declare-fun m!8077926 () Bool)

(assert (=> b!7491776 m!8077926))

(assert (=> b!7491776 m!8077626))

(assert (=> b!7491776 m!8077926))

(assert (=> b!7491776 m!8077626))

(declare-fun m!8077928 () Bool)

(assert (=> b!7491776 m!8077928))

(assert (=> b!7491781 m!8077626))

(assert (=> b!7491781 m!8077626))

(assert (=> b!7491781 m!8077630))

(assert (=> b!7491785 m!8077622))

(assert (=> b!7491780 m!8077626))

(assert (=> b!7491780 m!8077626))

(assert (=> b!7491780 m!8077630))

(assert (=> b!7491782 m!8077622))

(assert (=> bm!687747 m!8077618))

(assert (=> b!7491116 d!2301363))

(declare-fun bs!1935232 () Bool)

(declare-fun b!7491799 () Bool)

(assert (= bs!1935232 (and b!7491799 d!2301335)))

(declare-fun lambda!464196 () Int)

(assert (=> bs!1935232 (not (= lambda!464196 lambda!464189))))

(declare-fun bs!1935233 () Bool)

(assert (= bs!1935233 (and b!7491799 b!7491435)))

(assert (=> bs!1935233 (= (and (= (reg!19964 lt!2629646) (reg!19964 lt!2629643)) (= lt!2629646 lt!2629643)) (= lambda!464196 lambda!464166))))

(declare-fun bs!1935234 () Bool)

(assert (= bs!1935234 (and b!7491799 b!7491453)))

(assert (=> bs!1935234 (not (= lambda!464196 lambda!464178))))

(declare-fun bs!1935235 () Bool)

(assert (= bs!1935235 (and b!7491799 d!2301351)))

(assert (=> bs!1935235 (not (= lambda!464196 lambda!464195))))

(declare-fun bs!1935236 () Bool)

(assert (= bs!1935236 (and b!7491799 b!7491454)))

(assert (=> bs!1935236 (= (and (= (reg!19964 lt!2629646) (reg!19964 lt!2629626)) (= lt!2629646 lt!2629626)) (= lambda!464196 lambda!464174))))

(declare-fun bs!1935237 () Bool)

(assert (= bs!1935237 (and b!7491799 b!7491119)))

(assert (=> bs!1935237 (not (= lambda!464196 lambda!464149))))

(assert (=> bs!1935237 (not (= lambda!464196 lambda!464148))))

(assert (=> bs!1935235 (not (= lambda!464196 lambda!464194))))

(declare-fun bs!1935238 () Bool)

(assert (= bs!1935238 (and b!7491799 b!7491434)))

(assert (=> bs!1935238 (not (= lambda!464196 lambda!464169))))

(assert (=> b!7491799 true))

(assert (=> b!7491799 true))

(declare-fun bs!1935239 () Bool)

(declare-fun b!7491798 () Bool)

(assert (= bs!1935239 (and b!7491798 d!2301335)))

(declare-fun lambda!464197 () Int)

(assert (=> bs!1935239 (not (= lambda!464197 lambda!464189))))

(declare-fun bs!1935240 () Bool)

(assert (= bs!1935240 (and b!7491798 b!7491435)))

(assert (=> bs!1935240 (not (= lambda!464197 lambda!464166))))

(declare-fun bs!1935241 () Bool)

(assert (= bs!1935241 (and b!7491798 b!7491453)))

(assert (=> bs!1935241 (= (and (= (regOne!39782 lt!2629646) (regOne!39782 lt!2629626)) (= (regTwo!39782 lt!2629646) (regTwo!39782 lt!2629626))) (= lambda!464197 lambda!464178))))

(declare-fun bs!1935242 () Bool)

(assert (= bs!1935242 (and b!7491798 d!2301351)))

(assert (=> bs!1935242 (= (and (= (regOne!39782 lt!2629646) lt!2629647) (= (regTwo!39782 lt!2629646) rTail!78)) (= lambda!464197 lambda!464195))))

(declare-fun bs!1935243 () Bool)

(assert (= bs!1935243 (and b!7491798 b!7491454)))

(assert (=> bs!1935243 (not (= lambda!464197 lambda!464174))))

(declare-fun bs!1935244 () Bool)

(assert (= bs!1935244 (and b!7491798 b!7491799)))

(assert (=> bs!1935244 (not (= lambda!464197 lambda!464196))))

(declare-fun bs!1935245 () Bool)

(assert (= bs!1935245 (and b!7491798 b!7491119)))

(assert (=> bs!1935245 (= (and (= (regOne!39782 lt!2629646) lt!2629647) (= (regTwo!39782 lt!2629646) rTail!78)) (= lambda!464197 lambda!464149))))

(assert (=> bs!1935245 (not (= lambda!464197 lambda!464148))))

(assert (=> bs!1935242 (not (= lambda!464197 lambda!464194))))

(declare-fun bs!1935246 () Bool)

(assert (= bs!1935246 (and b!7491798 b!7491434)))

(assert (=> bs!1935246 (= (and (= (regOne!39782 lt!2629646) (regOne!39782 lt!2629643)) (= (regTwo!39782 lt!2629646) (regTwo!39782 lt!2629643))) (= lambda!464197 lambda!464169))))

(assert (=> b!7491798 true))

(assert (=> b!7491798 true))

(declare-fun b!7491790 () Bool)

(declare-fun e!4467421 () Bool)

(declare-fun call!687753 () Bool)

(assert (=> b!7491790 (= e!4467421 call!687753)))

(declare-fun b!7491791 () Bool)

(declare-fun e!4467415 () Bool)

(declare-fun e!4467419 () Bool)

(assert (=> b!7491791 (= e!4467415 e!4467419)))

(declare-fun res!3005256 () Bool)

(assert (=> b!7491791 (= res!3005256 (matchRSpec!4312 (regOne!39783 lt!2629646) s!13591))))

(assert (=> b!7491791 (=> res!3005256 e!4467419)))

(declare-fun b!7491792 () Bool)

(declare-fun res!3005258 () Bool)

(declare-fun e!4467420 () Bool)

(assert (=> b!7491792 (=> res!3005258 e!4467420)))

(assert (=> b!7491792 (= res!3005258 call!687753)))

(declare-fun e!4467418 () Bool)

(assert (=> b!7491792 (= e!4467418 e!4467420)))

(declare-fun b!7491793 () Bool)

(declare-fun c!1383354 () Bool)

(assert (=> b!7491793 (= c!1383354 ((_ is Union!19635) lt!2629646))))

(declare-fun e!4467417 () Bool)

(assert (=> b!7491793 (= e!4467417 e!4467415)))

(declare-fun d!2301365 () Bool)

(declare-fun c!1383352 () Bool)

(assert (=> d!2301365 (= c!1383352 ((_ is EmptyExpr!19635) lt!2629646))))

(assert (=> d!2301365 (= (matchRSpec!4312 lt!2629646 s!13591) e!4467421)))

(declare-fun b!7491794 () Bool)

(assert (=> b!7491794 (= e!4467417 (= s!13591 (Cons!72225 (c!1383210 lt!2629646) Nil!72225)))))

(declare-fun b!7491795 () Bool)

(declare-fun c!1383353 () Bool)

(assert (=> b!7491795 (= c!1383353 ((_ is ElementMatch!19635) lt!2629646))))

(declare-fun e!4467416 () Bool)

(assert (=> b!7491795 (= e!4467416 e!4467417)))

(declare-fun bm!687748 () Bool)

(declare-fun c!1383351 () Bool)

(declare-fun call!687754 () Bool)

(assert (=> bm!687748 (= call!687754 (Exists!4252 (ite c!1383351 lambda!464196 lambda!464197)))))

(declare-fun bm!687749 () Bool)

(assert (=> bm!687749 (= call!687753 (isEmpty!41252 s!13591))))

(declare-fun b!7491796 () Bool)

(assert (=> b!7491796 (= e!4467419 (matchRSpec!4312 (regTwo!39783 lt!2629646) s!13591))))

(declare-fun b!7491797 () Bool)

(assert (=> b!7491797 (= e!4467415 e!4467418)))

(assert (=> b!7491797 (= c!1383351 ((_ is Star!19635) lt!2629646))))

(assert (=> b!7491798 (= e!4467418 call!687754)))

(assert (=> b!7491799 (= e!4467420 call!687754)))

(declare-fun b!7491800 () Bool)

(assert (=> b!7491800 (= e!4467421 e!4467416)))

(declare-fun res!3005257 () Bool)

(assert (=> b!7491800 (= res!3005257 (not ((_ is EmptyLang!19635) lt!2629646)))))

(assert (=> b!7491800 (=> (not res!3005257) (not e!4467416))))

(assert (= (and d!2301365 c!1383352) b!7491790))

(assert (= (and d!2301365 (not c!1383352)) b!7491800))

(assert (= (and b!7491800 res!3005257) b!7491795))

(assert (= (and b!7491795 c!1383353) b!7491794))

(assert (= (and b!7491795 (not c!1383353)) b!7491793))

(assert (= (and b!7491793 c!1383354) b!7491791))

(assert (= (and b!7491793 (not c!1383354)) b!7491797))

(assert (= (and b!7491791 (not res!3005256)) b!7491796))

(assert (= (and b!7491797 c!1383351) b!7491792))

(assert (= (and b!7491797 (not c!1383351)) b!7491798))

(assert (= (and b!7491792 (not res!3005258)) b!7491799))

(assert (= (or b!7491799 b!7491798) bm!687748))

(assert (= (or b!7491790 b!7491792) bm!687749))

(declare-fun m!8077930 () Bool)

(assert (=> b!7491791 m!8077930))

(declare-fun m!8077932 () Bool)

(assert (=> bm!687748 m!8077932))

(assert (=> bm!687749 m!8077618))

(declare-fun m!8077934 () Bool)

(assert (=> b!7491796 m!8077934))

(assert (=> b!7491116 d!2301365))

(declare-fun d!2301367 () Bool)

(assert (=> d!2301367 (= (matchR!9397 lt!2629623 s!13591) (matchRSpec!4312 lt!2629623 s!13591))))

(declare-fun lt!2629718 () Unit!166101)

(assert (=> d!2301367 (= lt!2629718 (choose!57904 lt!2629623 s!13591))))

(assert (=> d!2301367 (validRegex!10149 lt!2629623)))

(assert (=> d!2301367 (= (mainMatchTheorem!4306 lt!2629623 s!13591) lt!2629718)))

(declare-fun bs!1935247 () Bool)

(assert (= bs!1935247 d!2301367))

(assert (=> bs!1935247 m!8077502))

(assert (=> bs!1935247 m!8077506))

(declare-fun m!8077936 () Bool)

(assert (=> bs!1935247 m!8077936))

(declare-fun m!8077938 () Bool)

(assert (=> bs!1935247 m!8077938))

(assert (=> b!7491116 d!2301367))

(declare-fun d!2301369 () Bool)

(declare-fun e!4467428 () Bool)

(assert (=> d!2301369 e!4467428))

(declare-fun c!1383357 () Bool)

(assert (=> d!2301369 (= c!1383357 ((_ is EmptyExpr!19635) lt!2629623))))

(declare-fun lt!2629719 () Bool)

(declare-fun e!4467427 () Bool)

(assert (=> d!2301369 (= lt!2629719 e!4467427)))

(declare-fun c!1383355 () Bool)

(assert (=> d!2301369 (= c!1383355 (isEmpty!41252 s!13591))))

(assert (=> d!2301369 (validRegex!10149 lt!2629623)))

(assert (=> d!2301369 (= (matchR!9397 lt!2629623 s!13591) lt!2629719)))

(declare-fun b!7491801 () Bool)

(assert (=> b!7491801 (= e!4467427 (matchR!9397 (derivativeStep!5630 lt!2629623 (head!15370 s!13591)) (tail!14939 s!13591)))))

(declare-fun b!7491802 () Bool)

(declare-fun res!3005266 () Bool)

(declare-fun e!4467425 () Bool)

(assert (=> b!7491802 (=> (not res!3005266) (not e!4467425))))

(declare-fun call!687755 () Bool)

(assert (=> b!7491802 (= res!3005266 (not call!687755))))

(declare-fun b!7491803 () Bool)

(assert (=> b!7491803 (= e!4467428 (= lt!2629719 call!687755))))

(declare-fun b!7491804 () Bool)

(assert (=> b!7491804 (= e!4467427 (nullable!8573 lt!2629623))))

(declare-fun b!7491805 () Bool)

(declare-fun res!3005259 () Bool)

(assert (=> b!7491805 (=> (not res!3005259) (not e!4467425))))

(assert (=> b!7491805 (= res!3005259 (isEmpty!41252 (tail!14939 s!13591)))))

(declare-fun b!7491806 () Bool)

(declare-fun res!3005264 () Bool)

(declare-fun e!4467424 () Bool)

(assert (=> b!7491806 (=> res!3005264 e!4467424)))

(assert (=> b!7491806 (= res!3005264 (not (isEmpty!41252 (tail!14939 s!13591))))))

(declare-fun b!7491807 () Bool)

(assert (=> b!7491807 (= e!4467425 (= (head!15370 s!13591) (c!1383210 lt!2629623)))))

(declare-fun b!7491808 () Bool)

(declare-fun e!4467423 () Bool)

(declare-fun e!4467422 () Bool)

(assert (=> b!7491808 (= e!4467423 e!4467422)))

(declare-fun res!3005260 () Bool)

(assert (=> b!7491808 (=> (not res!3005260) (not e!4467422))))

(assert (=> b!7491808 (= res!3005260 (not lt!2629719))))

(declare-fun b!7491809 () Bool)

(declare-fun res!3005265 () Bool)

(assert (=> b!7491809 (=> res!3005265 e!4467423)))

(assert (=> b!7491809 (= res!3005265 e!4467425)))

(declare-fun res!3005263 () Bool)

(assert (=> b!7491809 (=> (not res!3005263) (not e!4467425))))

(assert (=> b!7491809 (= res!3005263 lt!2629719)))

(declare-fun b!7491810 () Bool)

(assert (=> b!7491810 (= e!4467424 (not (= (head!15370 s!13591) (c!1383210 lt!2629623))))))

(declare-fun bm!687750 () Bool)

(assert (=> bm!687750 (= call!687755 (isEmpty!41252 s!13591))))

(declare-fun b!7491811 () Bool)

(declare-fun res!3005262 () Bool)

(assert (=> b!7491811 (=> res!3005262 e!4467423)))

(assert (=> b!7491811 (= res!3005262 (not ((_ is ElementMatch!19635) lt!2629623)))))

(declare-fun e!4467426 () Bool)

(assert (=> b!7491811 (= e!4467426 e!4467423)))

(declare-fun b!7491812 () Bool)

(assert (=> b!7491812 (= e!4467426 (not lt!2629719))))

(declare-fun b!7491813 () Bool)

(assert (=> b!7491813 (= e!4467428 e!4467426)))

(declare-fun c!1383356 () Bool)

(assert (=> b!7491813 (= c!1383356 ((_ is EmptyLang!19635) lt!2629623))))

(declare-fun b!7491814 () Bool)

(assert (=> b!7491814 (= e!4467422 e!4467424)))

(declare-fun res!3005261 () Bool)

(assert (=> b!7491814 (=> res!3005261 e!4467424)))

(assert (=> b!7491814 (= res!3005261 call!687755)))

(assert (= (and d!2301369 c!1383355) b!7491804))

(assert (= (and d!2301369 (not c!1383355)) b!7491801))

(assert (= (and d!2301369 c!1383357) b!7491803))

(assert (= (and d!2301369 (not c!1383357)) b!7491813))

(assert (= (and b!7491813 c!1383356) b!7491812))

(assert (= (and b!7491813 (not c!1383356)) b!7491811))

(assert (= (and b!7491811 (not res!3005262)) b!7491809))

(assert (= (and b!7491809 res!3005263) b!7491802))

(assert (= (and b!7491802 res!3005266) b!7491805))

(assert (= (and b!7491805 res!3005259) b!7491807))

(assert (= (and b!7491809 (not res!3005265)) b!7491808))

(assert (= (and b!7491808 res!3005260) b!7491814))

(assert (= (and b!7491814 (not res!3005261)) b!7491806))

(assert (= (and b!7491806 (not res!3005264)) b!7491810))

(assert (= (or b!7491803 b!7491802 b!7491814) bm!687750))

(declare-fun m!8077940 () Bool)

(assert (=> b!7491804 m!8077940))

(assert (=> d!2301369 m!8077618))

(assert (=> d!2301369 m!8077938))

(assert (=> b!7491801 m!8077622))

(assert (=> b!7491801 m!8077622))

(declare-fun m!8077942 () Bool)

(assert (=> b!7491801 m!8077942))

(assert (=> b!7491801 m!8077626))

(assert (=> b!7491801 m!8077942))

(assert (=> b!7491801 m!8077626))

(declare-fun m!8077944 () Bool)

(assert (=> b!7491801 m!8077944))

(assert (=> b!7491806 m!8077626))

(assert (=> b!7491806 m!8077626))

(assert (=> b!7491806 m!8077630))

(assert (=> b!7491810 m!8077622))

(assert (=> b!7491805 m!8077626))

(assert (=> b!7491805 m!8077626))

(assert (=> b!7491805 m!8077630))

(assert (=> b!7491807 m!8077622))

(assert (=> bm!687750 m!8077618))

(assert (=> b!7491116 d!2301369))

(declare-fun d!2301371 () Bool)

(assert (=> d!2301371 (= (matchR!9397 lt!2629646 s!13591) (matchRSpec!4312 lt!2629646 s!13591))))

(declare-fun lt!2629720 () Unit!166101)

(assert (=> d!2301371 (= lt!2629720 (choose!57904 lt!2629646 s!13591))))

(assert (=> d!2301371 (validRegex!10149 lt!2629646)))

(assert (=> d!2301371 (= (mainMatchTheorem!4306 lt!2629646 s!13591) lt!2629720)))

(declare-fun bs!1935248 () Bool)

(assert (= bs!1935248 d!2301371))

(assert (=> bs!1935248 m!8077504))

(assert (=> bs!1935248 m!8077508))

(declare-fun m!8077946 () Bool)

(assert (=> bs!1935248 m!8077946))

(assert (=> bs!1935248 m!8077924))

(assert (=> b!7491116 d!2301371))

(declare-fun bs!1935249 () Bool)

(declare-fun b!7491824 () Bool)

(assert (= bs!1935249 (and b!7491824 d!2301335)))

(declare-fun lambda!464198 () Int)

(assert (=> bs!1935249 (not (= lambda!464198 lambda!464189))))

(declare-fun bs!1935250 () Bool)

(assert (= bs!1935250 (and b!7491824 b!7491435)))

(assert (=> bs!1935250 (= (and (= (reg!19964 lt!2629623) (reg!19964 lt!2629643)) (= lt!2629623 lt!2629643)) (= lambda!464198 lambda!464166))))

(declare-fun bs!1935251 () Bool)

(assert (= bs!1935251 (and b!7491824 b!7491453)))

(assert (=> bs!1935251 (not (= lambda!464198 lambda!464178))))

(declare-fun bs!1935252 () Bool)

(assert (= bs!1935252 (and b!7491824 d!2301351)))

(assert (=> bs!1935252 (not (= lambda!464198 lambda!464195))))

(declare-fun bs!1935253 () Bool)

(assert (= bs!1935253 (and b!7491824 b!7491454)))

(assert (=> bs!1935253 (= (and (= (reg!19964 lt!2629623) (reg!19964 lt!2629626)) (= lt!2629623 lt!2629626)) (= lambda!464198 lambda!464174))))

(declare-fun bs!1935254 () Bool)

(assert (= bs!1935254 (and b!7491824 b!7491799)))

(assert (=> bs!1935254 (= (and (= (reg!19964 lt!2629623) (reg!19964 lt!2629646)) (= lt!2629623 lt!2629646)) (= lambda!464198 lambda!464196))))

(declare-fun bs!1935255 () Bool)

(assert (= bs!1935255 (and b!7491824 b!7491119)))

(assert (=> bs!1935255 (not (= lambda!464198 lambda!464149))))

(assert (=> bs!1935252 (not (= lambda!464198 lambda!464194))))

(declare-fun bs!1935256 () Bool)

(assert (= bs!1935256 (and b!7491824 b!7491434)))

(assert (=> bs!1935256 (not (= lambda!464198 lambda!464169))))

(assert (=> bs!1935255 (not (= lambda!464198 lambda!464148))))

(declare-fun bs!1935257 () Bool)

(assert (= bs!1935257 (and b!7491824 b!7491798)))

(assert (=> bs!1935257 (not (= lambda!464198 lambda!464197))))

(assert (=> b!7491824 true))

(assert (=> b!7491824 true))

(declare-fun bs!1935258 () Bool)

(declare-fun b!7491823 () Bool)

(assert (= bs!1935258 (and b!7491823 d!2301335)))

(declare-fun lambda!464199 () Int)

(assert (=> bs!1935258 (not (= lambda!464199 lambda!464189))))

(declare-fun bs!1935259 () Bool)

(assert (= bs!1935259 (and b!7491823 b!7491824)))

(assert (=> bs!1935259 (not (= lambda!464199 lambda!464198))))

(declare-fun bs!1935260 () Bool)

(assert (= bs!1935260 (and b!7491823 b!7491435)))

(assert (=> bs!1935260 (not (= lambda!464199 lambda!464166))))

(declare-fun bs!1935261 () Bool)

(assert (= bs!1935261 (and b!7491823 b!7491453)))

(assert (=> bs!1935261 (= (and (= (regOne!39782 lt!2629623) (regOne!39782 lt!2629626)) (= (regTwo!39782 lt!2629623) (regTwo!39782 lt!2629626))) (= lambda!464199 lambda!464178))))

(declare-fun bs!1935262 () Bool)

(assert (= bs!1935262 (and b!7491823 d!2301351)))

(assert (=> bs!1935262 (= (and (= (regOne!39782 lt!2629623) lt!2629647) (= (regTwo!39782 lt!2629623) rTail!78)) (= lambda!464199 lambda!464195))))

(declare-fun bs!1935263 () Bool)

(assert (= bs!1935263 (and b!7491823 b!7491454)))

(assert (=> bs!1935263 (not (= lambda!464199 lambda!464174))))

(declare-fun bs!1935264 () Bool)

(assert (= bs!1935264 (and b!7491823 b!7491799)))

(assert (=> bs!1935264 (not (= lambda!464199 lambda!464196))))

(declare-fun bs!1935265 () Bool)

(assert (= bs!1935265 (and b!7491823 b!7491119)))

(assert (=> bs!1935265 (= (and (= (regOne!39782 lt!2629623) lt!2629647) (= (regTwo!39782 lt!2629623) rTail!78)) (= lambda!464199 lambda!464149))))

(assert (=> bs!1935262 (not (= lambda!464199 lambda!464194))))

(declare-fun bs!1935266 () Bool)

(assert (= bs!1935266 (and b!7491823 b!7491434)))

(assert (=> bs!1935266 (= (and (= (regOne!39782 lt!2629623) (regOne!39782 lt!2629643)) (= (regTwo!39782 lt!2629623) (regTwo!39782 lt!2629643))) (= lambda!464199 lambda!464169))))

(assert (=> bs!1935265 (not (= lambda!464199 lambda!464148))))

(declare-fun bs!1935267 () Bool)

(assert (= bs!1935267 (and b!7491823 b!7491798)))

(assert (=> bs!1935267 (= (and (= (regOne!39782 lt!2629623) (regOne!39782 lt!2629646)) (= (regTwo!39782 lt!2629623) (regTwo!39782 lt!2629646))) (= lambda!464199 lambda!464197))))

(assert (=> b!7491823 true))

(assert (=> b!7491823 true))

(declare-fun b!7491815 () Bool)

(declare-fun e!4467435 () Bool)

(declare-fun call!687756 () Bool)

(assert (=> b!7491815 (= e!4467435 call!687756)))

(declare-fun b!7491816 () Bool)

(declare-fun e!4467429 () Bool)

(declare-fun e!4467433 () Bool)

(assert (=> b!7491816 (= e!4467429 e!4467433)))

(declare-fun res!3005267 () Bool)

(assert (=> b!7491816 (= res!3005267 (matchRSpec!4312 (regOne!39783 lt!2629623) s!13591))))

(assert (=> b!7491816 (=> res!3005267 e!4467433)))

(declare-fun b!7491817 () Bool)

(declare-fun res!3005269 () Bool)

(declare-fun e!4467434 () Bool)

(assert (=> b!7491817 (=> res!3005269 e!4467434)))

(assert (=> b!7491817 (= res!3005269 call!687756)))

(declare-fun e!4467432 () Bool)

(assert (=> b!7491817 (= e!4467432 e!4467434)))

(declare-fun b!7491818 () Bool)

(declare-fun c!1383361 () Bool)

(assert (=> b!7491818 (= c!1383361 ((_ is Union!19635) lt!2629623))))

(declare-fun e!4467431 () Bool)

(assert (=> b!7491818 (= e!4467431 e!4467429)))

(declare-fun d!2301373 () Bool)

(declare-fun c!1383359 () Bool)

(assert (=> d!2301373 (= c!1383359 ((_ is EmptyExpr!19635) lt!2629623))))

(assert (=> d!2301373 (= (matchRSpec!4312 lt!2629623 s!13591) e!4467435)))

(declare-fun b!7491819 () Bool)

(assert (=> b!7491819 (= e!4467431 (= s!13591 (Cons!72225 (c!1383210 lt!2629623) Nil!72225)))))

(declare-fun b!7491820 () Bool)

(declare-fun c!1383360 () Bool)

(assert (=> b!7491820 (= c!1383360 ((_ is ElementMatch!19635) lt!2629623))))

(declare-fun e!4467430 () Bool)

(assert (=> b!7491820 (= e!4467430 e!4467431)))

(declare-fun bm!687751 () Bool)

(declare-fun call!687757 () Bool)

(declare-fun c!1383358 () Bool)

(assert (=> bm!687751 (= call!687757 (Exists!4252 (ite c!1383358 lambda!464198 lambda!464199)))))

(declare-fun bm!687752 () Bool)

(assert (=> bm!687752 (= call!687756 (isEmpty!41252 s!13591))))

(declare-fun b!7491821 () Bool)

(assert (=> b!7491821 (= e!4467433 (matchRSpec!4312 (regTwo!39783 lt!2629623) s!13591))))

(declare-fun b!7491822 () Bool)

(assert (=> b!7491822 (= e!4467429 e!4467432)))

(assert (=> b!7491822 (= c!1383358 ((_ is Star!19635) lt!2629623))))

(assert (=> b!7491823 (= e!4467432 call!687757)))

(assert (=> b!7491824 (= e!4467434 call!687757)))

(declare-fun b!7491825 () Bool)

(assert (=> b!7491825 (= e!4467435 e!4467430)))

(declare-fun res!3005268 () Bool)

(assert (=> b!7491825 (= res!3005268 (not ((_ is EmptyLang!19635) lt!2629623)))))

(assert (=> b!7491825 (=> (not res!3005268) (not e!4467430))))

(assert (= (and d!2301373 c!1383359) b!7491815))

(assert (= (and d!2301373 (not c!1383359)) b!7491825))

(assert (= (and b!7491825 res!3005268) b!7491820))

(assert (= (and b!7491820 c!1383360) b!7491819))

(assert (= (and b!7491820 (not c!1383360)) b!7491818))

(assert (= (and b!7491818 c!1383361) b!7491816))

(assert (= (and b!7491818 (not c!1383361)) b!7491822))

(assert (= (and b!7491816 (not res!3005267)) b!7491821))

(assert (= (and b!7491822 c!1383358) b!7491817))

(assert (= (and b!7491822 (not c!1383358)) b!7491823))

(assert (= (and b!7491817 (not res!3005269)) b!7491824))

(assert (= (or b!7491824 b!7491823) bm!687751))

(assert (= (or b!7491815 b!7491817) bm!687752))

(declare-fun m!8077948 () Bool)

(assert (=> b!7491816 m!8077948))

(declare-fun m!8077950 () Bool)

(assert (=> bm!687751 m!8077950))

(assert (=> bm!687752 m!8077618))

(declare-fun m!8077952 () Bool)

(assert (=> b!7491821 m!8077952))

(assert (=> b!7491116 d!2301373))

(declare-fun bm!687753 () Bool)

(declare-fun call!687760 () Bool)

(declare-fun call!687759 () Bool)

(assert (=> bm!687753 (= call!687760 call!687759)))

(declare-fun b!7491826 () Bool)

(declare-fun e!4467439 () Bool)

(assert (=> b!7491826 (= e!4467439 call!687760)))

(declare-fun b!7491827 () Bool)

(declare-fun e!4467436 () Bool)

(declare-fun e!4467440 () Bool)

(assert (=> b!7491827 (= e!4467436 e!4467440)))

(declare-fun res!3005272 () Bool)

(assert (=> b!7491827 (= res!3005272 (not (nullable!8573 (reg!19964 rTail!78))))))

(assert (=> b!7491827 (=> (not res!3005272) (not e!4467440))))

(declare-fun b!7491828 () Bool)

(declare-fun e!4467442 () Bool)

(assert (=> b!7491828 (= e!4467436 e!4467442)))

(declare-fun c!1383363 () Bool)

(assert (=> b!7491828 (= c!1383363 ((_ is Union!19635) rTail!78))))

(declare-fun b!7491829 () Bool)

(declare-fun e!4467437 () Bool)

(assert (=> b!7491829 (= e!4467437 call!687760)))

(declare-fun b!7491830 () Bool)

(declare-fun e!4467441 () Bool)

(assert (=> b!7491830 (= e!4467441 e!4467437)))

(declare-fun res!3005271 () Bool)

(assert (=> b!7491830 (=> (not res!3005271) (not e!4467437))))

(declare-fun call!687758 () Bool)

(assert (=> b!7491830 (= res!3005271 call!687758)))

(declare-fun b!7491831 () Bool)

(declare-fun res!3005274 () Bool)

(assert (=> b!7491831 (=> (not res!3005274) (not e!4467439))))

(assert (=> b!7491831 (= res!3005274 call!687758)))

(assert (=> b!7491831 (= e!4467442 e!4467439)))

(declare-fun b!7491832 () Bool)

(declare-fun e!4467438 () Bool)

(assert (=> b!7491832 (= e!4467438 e!4467436)))

(declare-fun c!1383362 () Bool)

(assert (=> b!7491832 (= c!1383362 ((_ is Star!19635) rTail!78))))

(declare-fun bm!687755 () Bool)

(assert (=> bm!687755 (= call!687758 (validRegex!10149 (ite c!1383363 (regOne!39783 rTail!78) (regOne!39782 rTail!78))))))

(declare-fun b!7491833 () Bool)

(assert (=> b!7491833 (= e!4467440 call!687759)))

(declare-fun b!7491834 () Bool)

(declare-fun res!3005273 () Bool)

(assert (=> b!7491834 (=> res!3005273 e!4467441)))

(assert (=> b!7491834 (= res!3005273 (not ((_ is Concat!28480) rTail!78)))))

(assert (=> b!7491834 (= e!4467442 e!4467441)))

(declare-fun d!2301375 () Bool)

(declare-fun res!3005270 () Bool)

(assert (=> d!2301375 (=> res!3005270 e!4467438)))

(assert (=> d!2301375 (= res!3005270 ((_ is ElementMatch!19635) rTail!78))))

(assert (=> d!2301375 (= (validRegex!10149 rTail!78) e!4467438)))

(declare-fun bm!687754 () Bool)

(assert (=> bm!687754 (= call!687759 (validRegex!10149 (ite c!1383362 (reg!19964 rTail!78) (ite c!1383363 (regTwo!39783 rTail!78) (regTwo!39782 rTail!78)))))))

(assert (= (and d!2301375 (not res!3005270)) b!7491832))

(assert (= (and b!7491832 c!1383362) b!7491827))

(assert (= (and b!7491832 (not c!1383362)) b!7491828))

(assert (= (and b!7491827 res!3005272) b!7491833))

(assert (= (and b!7491828 c!1383363) b!7491831))

(assert (= (and b!7491828 (not c!1383363)) b!7491834))

(assert (= (and b!7491831 res!3005274) b!7491826))

(assert (= (and b!7491834 (not res!3005273)) b!7491830))

(assert (= (and b!7491830 res!3005271) b!7491829))

(assert (= (or b!7491826 b!7491829) bm!687753))

(assert (= (or b!7491831 b!7491830) bm!687755))

(assert (= (or b!7491833 bm!687753) bm!687754))

(declare-fun m!8077954 () Bool)

(assert (=> b!7491827 m!8077954))

(declare-fun m!8077956 () Bool)

(assert (=> bm!687755 m!8077956))

(declare-fun m!8077958 () Bool)

(assert (=> bm!687754 m!8077958))

(assert (=> b!7491106 d!2301375))

(declare-fun d!2301377 () Bool)

(declare-fun e!4467449 () Bool)

(assert (=> d!2301377 e!4467449))

(declare-fun c!1383366 () Bool)

(assert (=> d!2301377 (= c!1383366 ((_ is EmptyExpr!19635) rTail!78))))

(declare-fun lt!2629721 () Bool)

(declare-fun e!4467448 () Bool)

(assert (=> d!2301377 (= lt!2629721 e!4467448)))

(declare-fun c!1383364 () Bool)

(assert (=> d!2301377 (= c!1383364 (isEmpty!41252 (_2!37657 lt!2629628)))))

(assert (=> d!2301377 (validRegex!10149 rTail!78)))

(assert (=> d!2301377 (= (matchR!9397 rTail!78 (_2!37657 lt!2629628)) lt!2629721)))

(declare-fun b!7491835 () Bool)

(assert (=> b!7491835 (= e!4467448 (matchR!9397 (derivativeStep!5630 rTail!78 (head!15370 (_2!37657 lt!2629628))) (tail!14939 (_2!37657 lt!2629628))))))

(declare-fun b!7491836 () Bool)

(declare-fun res!3005282 () Bool)

(declare-fun e!4467446 () Bool)

(assert (=> b!7491836 (=> (not res!3005282) (not e!4467446))))

(declare-fun call!687761 () Bool)

(assert (=> b!7491836 (= res!3005282 (not call!687761))))

(declare-fun b!7491837 () Bool)

(assert (=> b!7491837 (= e!4467449 (= lt!2629721 call!687761))))

(declare-fun b!7491838 () Bool)

(assert (=> b!7491838 (= e!4467448 (nullable!8573 rTail!78))))

(declare-fun b!7491839 () Bool)

(declare-fun res!3005275 () Bool)

(assert (=> b!7491839 (=> (not res!3005275) (not e!4467446))))

(assert (=> b!7491839 (= res!3005275 (isEmpty!41252 (tail!14939 (_2!37657 lt!2629628))))))

(declare-fun b!7491840 () Bool)

(declare-fun res!3005280 () Bool)

(declare-fun e!4467445 () Bool)

(assert (=> b!7491840 (=> res!3005280 e!4467445)))

(assert (=> b!7491840 (= res!3005280 (not (isEmpty!41252 (tail!14939 (_2!37657 lt!2629628)))))))

(declare-fun b!7491841 () Bool)

(assert (=> b!7491841 (= e!4467446 (= (head!15370 (_2!37657 lt!2629628)) (c!1383210 rTail!78)))))

(declare-fun b!7491842 () Bool)

(declare-fun e!4467444 () Bool)

(declare-fun e!4467443 () Bool)

(assert (=> b!7491842 (= e!4467444 e!4467443)))

(declare-fun res!3005276 () Bool)

(assert (=> b!7491842 (=> (not res!3005276) (not e!4467443))))

(assert (=> b!7491842 (= res!3005276 (not lt!2629721))))

(declare-fun b!7491843 () Bool)

(declare-fun res!3005281 () Bool)

(assert (=> b!7491843 (=> res!3005281 e!4467444)))

(assert (=> b!7491843 (= res!3005281 e!4467446)))

(declare-fun res!3005279 () Bool)

(assert (=> b!7491843 (=> (not res!3005279) (not e!4467446))))

(assert (=> b!7491843 (= res!3005279 lt!2629721)))

(declare-fun b!7491844 () Bool)

(assert (=> b!7491844 (= e!4467445 (not (= (head!15370 (_2!37657 lt!2629628)) (c!1383210 rTail!78))))))

(declare-fun bm!687756 () Bool)

(assert (=> bm!687756 (= call!687761 (isEmpty!41252 (_2!37657 lt!2629628)))))

(declare-fun b!7491845 () Bool)

(declare-fun res!3005278 () Bool)

(assert (=> b!7491845 (=> res!3005278 e!4467444)))

(assert (=> b!7491845 (= res!3005278 (not ((_ is ElementMatch!19635) rTail!78)))))

(declare-fun e!4467447 () Bool)

(assert (=> b!7491845 (= e!4467447 e!4467444)))

(declare-fun b!7491846 () Bool)

(assert (=> b!7491846 (= e!4467447 (not lt!2629721))))

(declare-fun b!7491847 () Bool)

(assert (=> b!7491847 (= e!4467449 e!4467447)))

(declare-fun c!1383365 () Bool)

(assert (=> b!7491847 (= c!1383365 ((_ is EmptyLang!19635) rTail!78))))

(declare-fun b!7491848 () Bool)

(assert (=> b!7491848 (= e!4467443 e!4467445)))

(declare-fun res!3005277 () Bool)

(assert (=> b!7491848 (=> res!3005277 e!4467445)))

(assert (=> b!7491848 (= res!3005277 call!687761)))

(assert (= (and d!2301377 c!1383364) b!7491838))

(assert (= (and d!2301377 (not c!1383364)) b!7491835))

(assert (= (and d!2301377 c!1383366) b!7491837))

(assert (= (and d!2301377 (not c!1383366)) b!7491847))

(assert (= (and b!7491847 c!1383365) b!7491846))

(assert (= (and b!7491847 (not c!1383365)) b!7491845))

(assert (= (and b!7491845 (not res!3005278)) b!7491843))

(assert (= (and b!7491843 res!3005279) b!7491836))

(assert (= (and b!7491836 res!3005282) b!7491839))

(assert (= (and b!7491839 res!3005275) b!7491841))

(assert (= (and b!7491843 (not res!3005281)) b!7491842))

(assert (= (and b!7491842 res!3005276) b!7491848))

(assert (= (and b!7491848 (not res!3005277)) b!7491840))

(assert (= (and b!7491840 (not res!3005280)) b!7491844))

(assert (= (or b!7491837 b!7491836 b!7491848) bm!687756))

(declare-fun m!8077960 () Bool)

(assert (=> b!7491838 m!8077960))

(declare-fun m!8077962 () Bool)

(assert (=> d!2301377 m!8077962))

(assert (=> d!2301377 m!8077534))

(declare-fun m!8077964 () Bool)

(assert (=> b!7491835 m!8077964))

(assert (=> b!7491835 m!8077964))

(declare-fun m!8077966 () Bool)

(assert (=> b!7491835 m!8077966))

(declare-fun m!8077968 () Bool)

(assert (=> b!7491835 m!8077968))

(assert (=> b!7491835 m!8077966))

(assert (=> b!7491835 m!8077968))

(declare-fun m!8077970 () Bool)

(assert (=> b!7491835 m!8077970))

(assert (=> b!7491840 m!8077968))

(assert (=> b!7491840 m!8077968))

(declare-fun m!8077972 () Bool)

(assert (=> b!7491840 m!8077972))

(assert (=> b!7491844 m!8077964))

(assert (=> b!7491839 m!8077968))

(assert (=> b!7491839 m!8077968))

(assert (=> b!7491839 m!8077972))

(assert (=> b!7491841 m!8077964))

(assert (=> bm!687756 m!8077962))

(assert (=> b!7491111 d!2301377))

(declare-fun d!2301379 () Bool)

(declare-fun e!4467456 () Bool)

(assert (=> d!2301379 e!4467456))

(declare-fun c!1383369 () Bool)

(assert (=> d!2301379 (= c!1383369 ((_ is EmptyExpr!19635) (ite c!1383209 lt!2629646 lt!2629623)))))

(declare-fun lt!2629722 () Bool)

(declare-fun e!4467455 () Bool)

(assert (=> d!2301379 (= lt!2629722 e!4467455)))

(declare-fun c!1383367 () Bool)

(assert (=> d!2301379 (= c!1383367 (isEmpty!41252 call!687680))))

(assert (=> d!2301379 (validRegex!10149 (ite c!1383209 lt!2629646 lt!2629623))))

(assert (=> d!2301379 (= (matchR!9397 (ite c!1383209 lt!2629646 lt!2629623) call!687680) lt!2629722)))

(declare-fun b!7491849 () Bool)

(assert (=> b!7491849 (= e!4467455 (matchR!9397 (derivativeStep!5630 (ite c!1383209 lt!2629646 lt!2629623) (head!15370 call!687680)) (tail!14939 call!687680)))))

(declare-fun b!7491850 () Bool)

(declare-fun res!3005290 () Bool)

(declare-fun e!4467453 () Bool)

(assert (=> b!7491850 (=> (not res!3005290) (not e!4467453))))

(declare-fun call!687762 () Bool)

(assert (=> b!7491850 (= res!3005290 (not call!687762))))

(declare-fun b!7491851 () Bool)

(assert (=> b!7491851 (= e!4467456 (= lt!2629722 call!687762))))

(declare-fun b!7491852 () Bool)

(assert (=> b!7491852 (= e!4467455 (nullable!8573 (ite c!1383209 lt!2629646 lt!2629623)))))

(declare-fun b!7491853 () Bool)

(declare-fun res!3005283 () Bool)

(assert (=> b!7491853 (=> (not res!3005283) (not e!4467453))))

(assert (=> b!7491853 (= res!3005283 (isEmpty!41252 (tail!14939 call!687680)))))

(declare-fun b!7491854 () Bool)

(declare-fun res!3005288 () Bool)

(declare-fun e!4467452 () Bool)

(assert (=> b!7491854 (=> res!3005288 e!4467452)))

(assert (=> b!7491854 (= res!3005288 (not (isEmpty!41252 (tail!14939 call!687680))))))

(declare-fun b!7491855 () Bool)

(assert (=> b!7491855 (= e!4467453 (= (head!15370 call!687680) (c!1383210 (ite c!1383209 lt!2629646 lt!2629623))))))

(declare-fun b!7491856 () Bool)

(declare-fun e!4467451 () Bool)

(declare-fun e!4467450 () Bool)

(assert (=> b!7491856 (= e!4467451 e!4467450)))

(declare-fun res!3005284 () Bool)

(assert (=> b!7491856 (=> (not res!3005284) (not e!4467450))))

(assert (=> b!7491856 (= res!3005284 (not lt!2629722))))

(declare-fun b!7491857 () Bool)

(declare-fun res!3005289 () Bool)

(assert (=> b!7491857 (=> res!3005289 e!4467451)))

(assert (=> b!7491857 (= res!3005289 e!4467453)))

(declare-fun res!3005287 () Bool)

(assert (=> b!7491857 (=> (not res!3005287) (not e!4467453))))

(assert (=> b!7491857 (= res!3005287 lt!2629722)))

(declare-fun b!7491858 () Bool)

(assert (=> b!7491858 (= e!4467452 (not (= (head!15370 call!687680) (c!1383210 (ite c!1383209 lt!2629646 lt!2629623)))))))

(declare-fun bm!687757 () Bool)

(assert (=> bm!687757 (= call!687762 (isEmpty!41252 call!687680))))

(declare-fun b!7491859 () Bool)

(declare-fun res!3005286 () Bool)

(assert (=> b!7491859 (=> res!3005286 e!4467451)))

(assert (=> b!7491859 (= res!3005286 (not ((_ is ElementMatch!19635) (ite c!1383209 lt!2629646 lt!2629623))))))

(declare-fun e!4467454 () Bool)

(assert (=> b!7491859 (= e!4467454 e!4467451)))

(declare-fun b!7491860 () Bool)

(assert (=> b!7491860 (= e!4467454 (not lt!2629722))))

(declare-fun b!7491861 () Bool)

(assert (=> b!7491861 (= e!4467456 e!4467454)))

(declare-fun c!1383368 () Bool)

(assert (=> b!7491861 (= c!1383368 ((_ is EmptyLang!19635) (ite c!1383209 lt!2629646 lt!2629623)))))

(declare-fun b!7491862 () Bool)

(assert (=> b!7491862 (= e!4467450 e!4467452)))

(declare-fun res!3005285 () Bool)

(assert (=> b!7491862 (=> res!3005285 e!4467452)))

(assert (=> b!7491862 (= res!3005285 call!687762)))

(assert (= (and d!2301379 c!1383367) b!7491852))

(assert (= (and d!2301379 (not c!1383367)) b!7491849))

(assert (= (and d!2301379 c!1383369) b!7491851))

(assert (= (and d!2301379 (not c!1383369)) b!7491861))

(assert (= (and b!7491861 c!1383368) b!7491860))

(assert (= (and b!7491861 (not c!1383368)) b!7491859))

(assert (= (and b!7491859 (not res!3005286)) b!7491857))

(assert (= (and b!7491857 res!3005287) b!7491850))

(assert (= (and b!7491850 res!3005290) b!7491853))

(assert (= (and b!7491853 res!3005283) b!7491855))

(assert (= (and b!7491857 (not res!3005289)) b!7491856))

(assert (= (and b!7491856 res!3005284) b!7491862))

(assert (= (and b!7491862 (not res!3005285)) b!7491854))

(assert (= (and b!7491854 (not res!3005288)) b!7491858))

(assert (= (or b!7491851 b!7491850 b!7491862) bm!687757))

(declare-fun m!8077974 () Bool)

(assert (=> b!7491852 m!8077974))

(declare-fun m!8077976 () Bool)

(assert (=> d!2301379 m!8077976))

(declare-fun m!8077978 () Bool)

(assert (=> d!2301379 m!8077978))

(declare-fun m!8077980 () Bool)

(assert (=> b!7491849 m!8077980))

(assert (=> b!7491849 m!8077980))

(declare-fun m!8077982 () Bool)

(assert (=> b!7491849 m!8077982))

(declare-fun m!8077984 () Bool)

(assert (=> b!7491849 m!8077984))

(assert (=> b!7491849 m!8077982))

(assert (=> b!7491849 m!8077984))

(declare-fun m!8077986 () Bool)

(assert (=> b!7491849 m!8077986))

(assert (=> b!7491854 m!8077984))

(assert (=> b!7491854 m!8077984))

(declare-fun m!8077988 () Bool)

(assert (=> b!7491854 m!8077988))

(assert (=> b!7491858 m!8077980))

(assert (=> b!7491853 m!8077984))

(assert (=> b!7491853 m!8077984))

(assert (=> b!7491853 m!8077988))

(assert (=> b!7491855 m!8077980))

(assert (=> bm!687757 m!8077976))

(assert (=> bm!687675 d!2301379))

(declare-fun d!2301381 () Bool)

(declare-fun e!4467461 () Bool)

(assert (=> d!2301381 e!4467461))

(declare-fun res!3005295 () Bool)

(assert (=> d!2301381 (=> (not res!3005295) (not e!4467461))))

(declare-fun lt!2629725 () List!72349)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!15264 (List!72349) (InoxSet C!39544))

(assert (=> d!2301381 (= res!3005295 (= (content!15264 lt!2629725) ((_ map or) (content!15264 (_1!37657 lt!2629628)) (content!15264 (_2!37657 lt!2629628)))))))

(declare-fun e!4467462 () List!72349)

(assert (=> d!2301381 (= lt!2629725 e!4467462)))

(declare-fun c!1383372 () Bool)

(assert (=> d!2301381 (= c!1383372 ((_ is Nil!72225) (_1!37657 lt!2629628)))))

(assert (=> d!2301381 (= (++!17243 (_1!37657 lt!2629628) (_2!37657 lt!2629628)) lt!2629725)))

(declare-fun b!7491871 () Bool)

(assert (=> b!7491871 (= e!4467462 (_2!37657 lt!2629628))))

(declare-fun b!7491874 () Bool)

(assert (=> b!7491874 (= e!4467461 (or (not (= (_2!37657 lt!2629628) Nil!72225)) (= lt!2629725 (_1!37657 lt!2629628))))))

(declare-fun b!7491873 () Bool)

(declare-fun res!3005296 () Bool)

(assert (=> b!7491873 (=> (not res!3005296) (not e!4467461))))

(declare-fun size!42200 (List!72349) Int)

(assert (=> b!7491873 (= res!3005296 (= (size!42200 lt!2629725) (+ (size!42200 (_1!37657 lt!2629628)) (size!42200 (_2!37657 lt!2629628)))))))

(declare-fun b!7491872 () Bool)

(assert (=> b!7491872 (= e!4467462 (Cons!72225 (h!78673 (_1!37657 lt!2629628)) (++!17243 (t!386918 (_1!37657 lt!2629628)) (_2!37657 lt!2629628))))))

(assert (= (and d!2301381 c!1383372) b!7491871))

(assert (= (and d!2301381 (not c!1383372)) b!7491872))

(assert (= (and d!2301381 res!3005295) b!7491873))

(assert (= (and b!7491873 res!3005296) b!7491874))

(declare-fun m!8077990 () Bool)

(assert (=> d!2301381 m!8077990))

(declare-fun m!8077992 () Bool)

(assert (=> d!2301381 m!8077992))

(declare-fun m!8077994 () Bool)

(assert (=> d!2301381 m!8077994))

(declare-fun m!8077996 () Bool)

(assert (=> b!7491873 m!8077996))

(declare-fun m!8077998 () Bool)

(assert (=> b!7491873 m!8077998))

(declare-fun m!8078000 () Bool)

(assert (=> b!7491873 m!8078000))

(declare-fun m!8078002 () Bool)

(assert (=> b!7491872 m!8078002))

(assert (=> bm!687673 d!2301381))

(declare-fun bs!1935268 () Bool)

(declare-fun b!7491884 () Bool)

(assert (= bs!1935268 (and b!7491884 b!7491823)))

(declare-fun lambda!464200 () Int)

(assert (=> bs!1935268 (not (= lambda!464200 lambda!464199))))

(declare-fun bs!1935269 () Bool)

(assert (= bs!1935269 (and b!7491884 d!2301335)))

(assert (=> bs!1935269 (not (= lambda!464200 lambda!464189))))

(declare-fun bs!1935270 () Bool)

(assert (= bs!1935270 (and b!7491884 b!7491824)))

(assert (=> bs!1935270 (= (and (= (_2!37657 lt!2629628) s!13591) (= (reg!19964 rTail!78) (reg!19964 lt!2629623)) (= rTail!78 lt!2629623)) (= lambda!464200 lambda!464198))))

(declare-fun bs!1935271 () Bool)

(assert (= bs!1935271 (and b!7491884 b!7491435)))

(assert (=> bs!1935271 (= (and (= (_2!37657 lt!2629628) s!13591) (= (reg!19964 rTail!78) (reg!19964 lt!2629643)) (= rTail!78 lt!2629643)) (= lambda!464200 lambda!464166))))

(declare-fun bs!1935272 () Bool)

(assert (= bs!1935272 (and b!7491884 b!7491453)))

(assert (=> bs!1935272 (not (= lambda!464200 lambda!464178))))

(declare-fun bs!1935273 () Bool)

(assert (= bs!1935273 (and b!7491884 d!2301351)))

(assert (=> bs!1935273 (not (= lambda!464200 lambda!464195))))

(declare-fun bs!1935274 () Bool)

(assert (= bs!1935274 (and b!7491884 b!7491454)))

(assert (=> bs!1935274 (= (and (= (_2!37657 lt!2629628) s!13591) (= (reg!19964 rTail!78) (reg!19964 lt!2629626)) (= rTail!78 lt!2629626)) (= lambda!464200 lambda!464174))))

(declare-fun bs!1935275 () Bool)

(assert (= bs!1935275 (and b!7491884 b!7491799)))

(assert (=> bs!1935275 (= (and (= (_2!37657 lt!2629628) s!13591) (= (reg!19964 rTail!78) (reg!19964 lt!2629646)) (= rTail!78 lt!2629646)) (= lambda!464200 lambda!464196))))

(declare-fun bs!1935276 () Bool)

(assert (= bs!1935276 (and b!7491884 b!7491119)))

(assert (=> bs!1935276 (not (= lambda!464200 lambda!464149))))

(assert (=> bs!1935273 (not (= lambda!464200 lambda!464194))))

(declare-fun bs!1935277 () Bool)

(assert (= bs!1935277 (and b!7491884 b!7491434)))

(assert (=> bs!1935277 (not (= lambda!464200 lambda!464169))))

(assert (=> bs!1935276 (not (= lambda!464200 lambda!464148))))

(declare-fun bs!1935278 () Bool)

(assert (= bs!1935278 (and b!7491884 b!7491798)))

(assert (=> bs!1935278 (not (= lambda!464200 lambda!464197))))

(assert (=> b!7491884 true))

(assert (=> b!7491884 true))

(declare-fun bs!1935279 () Bool)

(declare-fun b!7491883 () Bool)

(assert (= bs!1935279 (and b!7491883 b!7491823)))

(declare-fun lambda!464201 () Int)

(assert (=> bs!1935279 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) (regOne!39782 lt!2629623)) (= (regTwo!39782 rTail!78) (regTwo!39782 lt!2629623))) (= lambda!464201 lambda!464199))))

(declare-fun bs!1935280 () Bool)

(assert (= bs!1935280 (and b!7491883 b!7491884)))

(assert (=> bs!1935280 (not (= lambda!464201 lambda!464200))))

(declare-fun bs!1935281 () Bool)

(assert (= bs!1935281 (and b!7491883 d!2301335)))

(assert (=> bs!1935281 (not (= lambda!464201 lambda!464189))))

(declare-fun bs!1935282 () Bool)

(assert (= bs!1935282 (and b!7491883 b!7491824)))

(assert (=> bs!1935282 (not (= lambda!464201 lambda!464198))))

(declare-fun bs!1935283 () Bool)

(assert (= bs!1935283 (and b!7491883 b!7491435)))

(assert (=> bs!1935283 (not (= lambda!464201 lambda!464166))))

(declare-fun bs!1935284 () Bool)

(assert (= bs!1935284 (and b!7491883 b!7491453)))

(assert (=> bs!1935284 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) (regOne!39782 lt!2629626)) (= (regTwo!39782 rTail!78) (regTwo!39782 lt!2629626))) (= lambda!464201 lambda!464178))))

(declare-fun bs!1935285 () Bool)

(assert (= bs!1935285 (and b!7491883 d!2301351)))

(assert (=> bs!1935285 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) lt!2629647) (= (regTwo!39782 rTail!78) rTail!78)) (= lambda!464201 lambda!464195))))

(declare-fun bs!1935286 () Bool)

(assert (= bs!1935286 (and b!7491883 b!7491454)))

(assert (=> bs!1935286 (not (= lambda!464201 lambda!464174))))

(declare-fun bs!1935287 () Bool)

(assert (= bs!1935287 (and b!7491883 b!7491799)))

(assert (=> bs!1935287 (not (= lambda!464201 lambda!464196))))

(declare-fun bs!1935288 () Bool)

(assert (= bs!1935288 (and b!7491883 b!7491119)))

(assert (=> bs!1935288 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) lt!2629647) (= (regTwo!39782 rTail!78) rTail!78)) (= lambda!464201 lambda!464149))))

(assert (=> bs!1935285 (not (= lambda!464201 lambda!464194))))

(declare-fun bs!1935289 () Bool)

(assert (= bs!1935289 (and b!7491883 b!7491434)))

(assert (=> bs!1935289 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) (regOne!39782 lt!2629643)) (= (regTwo!39782 rTail!78) (regTwo!39782 lt!2629643))) (= lambda!464201 lambda!464169))))

(assert (=> bs!1935288 (not (= lambda!464201 lambda!464148))))

(declare-fun bs!1935290 () Bool)

(assert (= bs!1935290 (and b!7491883 b!7491798)))

(assert (=> bs!1935290 (= (and (= (_2!37657 lt!2629628) s!13591) (= (regOne!39782 rTail!78) (regOne!39782 lt!2629646)) (= (regTwo!39782 rTail!78) (regTwo!39782 lt!2629646))) (= lambda!464201 lambda!464197))))

(assert (=> b!7491883 true))

(assert (=> b!7491883 true))

(declare-fun b!7491875 () Bool)

(declare-fun e!4467469 () Bool)

(declare-fun call!687763 () Bool)

(assert (=> b!7491875 (= e!4467469 call!687763)))

(declare-fun b!7491876 () Bool)

(declare-fun e!4467463 () Bool)

(declare-fun e!4467467 () Bool)

(assert (=> b!7491876 (= e!4467463 e!4467467)))

(declare-fun res!3005297 () Bool)

(assert (=> b!7491876 (= res!3005297 (matchRSpec!4312 (regOne!39783 rTail!78) (_2!37657 lt!2629628)))))

(assert (=> b!7491876 (=> res!3005297 e!4467467)))

(declare-fun b!7491877 () Bool)

(declare-fun res!3005299 () Bool)

(declare-fun e!4467468 () Bool)

(assert (=> b!7491877 (=> res!3005299 e!4467468)))

(assert (=> b!7491877 (= res!3005299 call!687763)))

(declare-fun e!4467466 () Bool)

(assert (=> b!7491877 (= e!4467466 e!4467468)))

(declare-fun b!7491878 () Bool)

(declare-fun c!1383376 () Bool)

(assert (=> b!7491878 (= c!1383376 ((_ is Union!19635) rTail!78))))

(declare-fun e!4467465 () Bool)

(assert (=> b!7491878 (= e!4467465 e!4467463)))

(declare-fun d!2301383 () Bool)

(declare-fun c!1383374 () Bool)

(assert (=> d!2301383 (= c!1383374 ((_ is EmptyExpr!19635) rTail!78))))

(assert (=> d!2301383 (= (matchRSpec!4312 rTail!78 (_2!37657 lt!2629628)) e!4467469)))

(declare-fun b!7491879 () Bool)

(assert (=> b!7491879 (= e!4467465 (= (_2!37657 lt!2629628) (Cons!72225 (c!1383210 rTail!78) Nil!72225)))))

(declare-fun b!7491880 () Bool)

(declare-fun c!1383375 () Bool)

(assert (=> b!7491880 (= c!1383375 ((_ is ElementMatch!19635) rTail!78))))

(declare-fun e!4467464 () Bool)

(assert (=> b!7491880 (= e!4467464 e!4467465)))

(declare-fun call!687764 () Bool)

(declare-fun c!1383373 () Bool)

(declare-fun bm!687758 () Bool)

(assert (=> bm!687758 (= call!687764 (Exists!4252 (ite c!1383373 lambda!464200 lambda!464201)))))

(declare-fun bm!687759 () Bool)

(assert (=> bm!687759 (= call!687763 (isEmpty!41252 (_2!37657 lt!2629628)))))

(declare-fun b!7491881 () Bool)

(assert (=> b!7491881 (= e!4467467 (matchRSpec!4312 (regTwo!39783 rTail!78) (_2!37657 lt!2629628)))))

(declare-fun b!7491882 () Bool)

(assert (=> b!7491882 (= e!4467463 e!4467466)))

(assert (=> b!7491882 (= c!1383373 ((_ is Star!19635) rTail!78))))

(assert (=> b!7491883 (= e!4467466 call!687764)))

(assert (=> b!7491884 (= e!4467468 call!687764)))

(declare-fun b!7491885 () Bool)

(assert (=> b!7491885 (= e!4467469 e!4467464)))

(declare-fun res!3005298 () Bool)

(assert (=> b!7491885 (= res!3005298 (not ((_ is EmptyLang!19635) rTail!78)))))

(assert (=> b!7491885 (=> (not res!3005298) (not e!4467464))))

(assert (= (and d!2301383 c!1383374) b!7491875))

(assert (= (and d!2301383 (not c!1383374)) b!7491885))

(assert (= (and b!7491885 res!3005298) b!7491880))

(assert (= (and b!7491880 c!1383375) b!7491879))

(assert (= (and b!7491880 (not c!1383375)) b!7491878))

(assert (= (and b!7491878 c!1383376) b!7491876))

(assert (= (and b!7491878 (not c!1383376)) b!7491882))

(assert (= (and b!7491876 (not res!3005297)) b!7491881))

(assert (= (and b!7491882 c!1383373) b!7491877))

(assert (= (and b!7491882 (not c!1383373)) b!7491883))

(assert (= (and b!7491877 (not res!3005299)) b!7491884))

(assert (= (or b!7491884 b!7491883) bm!687758))

(assert (= (or b!7491875 b!7491877) bm!687759))

(declare-fun m!8078004 () Bool)

(assert (=> b!7491876 m!8078004))

(declare-fun m!8078006 () Bool)

(assert (=> bm!687758 m!8078006))

(assert (=> bm!687759 m!8077962))

(declare-fun m!8078008 () Bool)

(assert (=> b!7491881 m!8078008))

(assert (=> b!7491113 d!2301383))

(declare-fun d!2301385 () Bool)

(assert (=> d!2301385 (= (matchR!9397 r2!5783 (_1!37657 lt!2629628)) (matchRSpec!4312 r2!5783 (_1!37657 lt!2629628)))))

(declare-fun lt!2629726 () Unit!166101)

(assert (=> d!2301385 (= lt!2629726 (choose!57904 r2!5783 (_1!37657 lt!2629628)))))

(assert (=> d!2301385 (validRegex!10149 r2!5783)))

(assert (=> d!2301385 (= (mainMatchTheorem!4306 r2!5783 (_1!37657 lt!2629628)) lt!2629726)))

(declare-fun bs!1935291 () Bool)

(assert (= bs!1935291 d!2301385))

(assert (=> bs!1935291 m!8077552))

(assert (=> bs!1935291 m!8077544))

(declare-fun m!8078010 () Bool)

(assert (=> bs!1935291 m!8078010))

(assert (=> bs!1935291 m!8077496))

(assert (=> b!7491113 d!2301385))

(declare-fun d!2301387 () Bool)

(declare-fun e!4467476 () Bool)

(assert (=> d!2301387 e!4467476))

(declare-fun c!1383379 () Bool)

(assert (=> d!2301387 (= c!1383379 ((_ is EmptyExpr!19635) r1!5845))))

(declare-fun lt!2629727 () Bool)

(declare-fun e!4467475 () Bool)

(assert (=> d!2301387 (= lt!2629727 e!4467475)))

(declare-fun c!1383377 () Bool)

(assert (=> d!2301387 (= c!1383377 (isEmpty!41252 (_1!37657 lt!2629628)))))

(assert (=> d!2301387 (validRegex!10149 r1!5845)))

(assert (=> d!2301387 (= (matchR!9397 r1!5845 (_1!37657 lt!2629628)) lt!2629727)))

(declare-fun b!7491886 () Bool)

(assert (=> b!7491886 (= e!4467475 (matchR!9397 (derivativeStep!5630 r1!5845 (head!15370 (_1!37657 lt!2629628))) (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491887 () Bool)

(declare-fun res!3005307 () Bool)

(declare-fun e!4467473 () Bool)

(assert (=> b!7491887 (=> (not res!3005307) (not e!4467473))))

(declare-fun call!687765 () Bool)

(assert (=> b!7491887 (= res!3005307 (not call!687765))))

(declare-fun b!7491888 () Bool)

(assert (=> b!7491888 (= e!4467476 (= lt!2629727 call!687765))))

(declare-fun b!7491889 () Bool)

(assert (=> b!7491889 (= e!4467475 (nullable!8573 r1!5845))))

(declare-fun b!7491890 () Bool)

(declare-fun res!3005300 () Bool)

(assert (=> b!7491890 (=> (not res!3005300) (not e!4467473))))

(assert (=> b!7491890 (= res!3005300 (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491891 () Bool)

(declare-fun res!3005305 () Bool)

(declare-fun e!4467472 () Bool)

(assert (=> b!7491891 (=> res!3005305 e!4467472)))

(assert (=> b!7491891 (= res!3005305 (not (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628)))))))

(declare-fun b!7491892 () Bool)

(assert (=> b!7491892 (= e!4467473 (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 r1!5845)))))

(declare-fun b!7491893 () Bool)

(declare-fun e!4467471 () Bool)

(declare-fun e!4467470 () Bool)

(assert (=> b!7491893 (= e!4467471 e!4467470)))

(declare-fun res!3005301 () Bool)

(assert (=> b!7491893 (=> (not res!3005301) (not e!4467470))))

(assert (=> b!7491893 (= res!3005301 (not lt!2629727))))

(declare-fun b!7491894 () Bool)

(declare-fun res!3005306 () Bool)

(assert (=> b!7491894 (=> res!3005306 e!4467471)))

(assert (=> b!7491894 (= res!3005306 e!4467473)))

(declare-fun res!3005304 () Bool)

(assert (=> b!7491894 (=> (not res!3005304) (not e!4467473))))

(assert (=> b!7491894 (= res!3005304 lt!2629727)))

(declare-fun b!7491895 () Bool)

(assert (=> b!7491895 (= e!4467472 (not (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 r1!5845))))))

(declare-fun bm!687760 () Bool)

(assert (=> bm!687760 (= call!687765 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491896 () Bool)

(declare-fun res!3005303 () Bool)

(assert (=> b!7491896 (=> res!3005303 e!4467471)))

(assert (=> b!7491896 (= res!3005303 (not ((_ is ElementMatch!19635) r1!5845)))))

(declare-fun e!4467474 () Bool)

(assert (=> b!7491896 (= e!4467474 e!4467471)))

(declare-fun b!7491897 () Bool)

(assert (=> b!7491897 (= e!4467474 (not lt!2629727))))

(declare-fun b!7491898 () Bool)

(assert (=> b!7491898 (= e!4467476 e!4467474)))

(declare-fun c!1383378 () Bool)

(assert (=> b!7491898 (= c!1383378 ((_ is EmptyLang!19635) r1!5845))))

(declare-fun b!7491899 () Bool)

(assert (=> b!7491899 (= e!4467470 e!4467472)))

(declare-fun res!3005302 () Bool)

(assert (=> b!7491899 (=> res!3005302 e!4467472)))

(assert (=> b!7491899 (= res!3005302 call!687765)))

(assert (= (and d!2301387 c!1383377) b!7491889))

(assert (= (and d!2301387 (not c!1383377)) b!7491886))

(assert (= (and d!2301387 c!1383379) b!7491888))

(assert (= (and d!2301387 (not c!1383379)) b!7491898))

(assert (= (and b!7491898 c!1383378) b!7491897))

(assert (= (and b!7491898 (not c!1383378)) b!7491896))

(assert (= (and b!7491896 (not res!3005303)) b!7491894))

(assert (= (and b!7491894 res!3005304) b!7491887))

(assert (= (and b!7491887 res!3005307) b!7491890))

(assert (= (and b!7491890 res!3005300) b!7491892))

(assert (= (and b!7491894 (not res!3005306)) b!7491893))

(assert (= (and b!7491893 res!3005301) b!7491899))

(assert (= (and b!7491899 (not res!3005302)) b!7491891))

(assert (= (and b!7491891 (not res!3005305)) b!7491895))

(assert (= (or b!7491888 b!7491887 b!7491899) bm!687760))

(declare-fun m!8078012 () Bool)

(assert (=> b!7491889 m!8078012))

(assert (=> d!2301387 m!8077896))

(assert (=> d!2301387 m!8077498))

(assert (=> b!7491886 m!8077898))

(assert (=> b!7491886 m!8077898))

(declare-fun m!8078014 () Bool)

(assert (=> b!7491886 m!8078014))

(assert (=> b!7491886 m!8077902))

(assert (=> b!7491886 m!8078014))

(assert (=> b!7491886 m!8077902))

(declare-fun m!8078016 () Bool)

(assert (=> b!7491886 m!8078016))

(assert (=> b!7491891 m!8077902))

(assert (=> b!7491891 m!8077902))

(assert (=> b!7491891 m!8077906))

(assert (=> b!7491895 m!8077898))

(assert (=> b!7491890 m!8077902))

(assert (=> b!7491890 m!8077902))

(assert (=> b!7491890 m!8077906))

(assert (=> b!7491892 m!8077898))

(assert (=> bm!687760 m!8077896))

(assert (=> b!7491113 d!2301387))

(declare-fun d!2301389 () Bool)

(assert (=> d!2301389 (= (matchR!9397 lt!2629647 (_1!37657 lt!2629628)) (matchRSpec!4312 lt!2629647 (_1!37657 lt!2629628)))))

(declare-fun lt!2629728 () Unit!166101)

(assert (=> d!2301389 (= lt!2629728 (choose!57904 lt!2629647 (_1!37657 lt!2629628)))))

(assert (=> d!2301389 (validRegex!10149 lt!2629647)))

(assert (=> d!2301389 (= (mainMatchTheorem!4306 lt!2629647 (_1!37657 lt!2629628)) lt!2629728)))

(declare-fun bs!1935292 () Bool)

(assert (= bs!1935292 d!2301389))

(assert (=> bs!1935292 m!8077524))

(assert (=> bs!1935292 m!8077538))

(declare-fun m!8078018 () Bool)

(assert (=> bs!1935292 m!8078018))

(assert (=> bs!1935292 m!8077840))

(assert (=> b!7491113 d!2301389))

(declare-fun bs!1935293 () Bool)

(declare-fun b!7491909 () Bool)

(assert (= bs!1935293 (and b!7491909 b!7491823)))

(declare-fun lambda!464202 () Int)

(assert (=> bs!1935293 (not (= lambda!464202 lambda!464199))))

(declare-fun bs!1935294 () Bool)

(assert (= bs!1935294 (and b!7491909 b!7491884)))

(assert (=> bs!1935294 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (reg!19964 r2!5783) (reg!19964 rTail!78)) (= r2!5783 rTail!78)) (= lambda!464202 lambda!464200))))

(declare-fun bs!1935295 () Bool)

(assert (= bs!1935295 (and b!7491909 d!2301335)))

(assert (=> bs!1935295 (not (= lambda!464202 lambda!464189))))

(declare-fun bs!1935296 () Bool)

(assert (= bs!1935296 (and b!7491909 b!7491824)))

(assert (=> bs!1935296 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r2!5783) (reg!19964 lt!2629623)) (= r2!5783 lt!2629623)) (= lambda!464202 lambda!464198))))

(declare-fun bs!1935297 () Bool)

(assert (= bs!1935297 (and b!7491909 b!7491883)))

(assert (=> bs!1935297 (not (= lambda!464202 lambda!464201))))

(declare-fun bs!1935298 () Bool)

(assert (= bs!1935298 (and b!7491909 b!7491435)))

(assert (=> bs!1935298 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r2!5783) (reg!19964 lt!2629643)) (= r2!5783 lt!2629643)) (= lambda!464202 lambda!464166))))

(declare-fun bs!1935299 () Bool)

(assert (= bs!1935299 (and b!7491909 b!7491453)))

(assert (=> bs!1935299 (not (= lambda!464202 lambda!464178))))

(declare-fun bs!1935300 () Bool)

(assert (= bs!1935300 (and b!7491909 d!2301351)))

(assert (=> bs!1935300 (not (= lambda!464202 lambda!464195))))

(declare-fun bs!1935301 () Bool)

(assert (= bs!1935301 (and b!7491909 b!7491454)))

(assert (=> bs!1935301 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r2!5783) (reg!19964 lt!2629626)) (= r2!5783 lt!2629626)) (= lambda!464202 lambda!464174))))

(declare-fun bs!1935302 () Bool)

(assert (= bs!1935302 (and b!7491909 b!7491799)))

(assert (=> bs!1935302 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r2!5783) (reg!19964 lt!2629646)) (= r2!5783 lt!2629646)) (= lambda!464202 lambda!464196))))

(declare-fun bs!1935303 () Bool)

(assert (= bs!1935303 (and b!7491909 b!7491119)))

(assert (=> bs!1935303 (not (= lambda!464202 lambda!464149))))

(assert (=> bs!1935300 (not (= lambda!464202 lambda!464194))))

(declare-fun bs!1935304 () Bool)

(assert (= bs!1935304 (and b!7491909 b!7491434)))

(assert (=> bs!1935304 (not (= lambda!464202 lambda!464169))))

(assert (=> bs!1935303 (not (= lambda!464202 lambda!464148))))

(declare-fun bs!1935305 () Bool)

(assert (= bs!1935305 (and b!7491909 b!7491798)))

(assert (=> bs!1935305 (not (= lambda!464202 lambda!464197))))

(assert (=> b!7491909 true))

(assert (=> b!7491909 true))

(declare-fun bs!1935306 () Bool)

(declare-fun b!7491908 () Bool)

(assert (= bs!1935306 (and b!7491908 b!7491823)))

(declare-fun lambda!464203 () Int)

(assert (=> bs!1935306 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) (regOne!39782 lt!2629623)) (= (regTwo!39782 r2!5783) (regTwo!39782 lt!2629623))) (= lambda!464203 lambda!464199))))

(declare-fun bs!1935307 () Bool)

(assert (= bs!1935307 (and b!7491908 b!7491884)))

(assert (=> bs!1935307 (not (= lambda!464203 lambda!464200))))

(declare-fun bs!1935308 () Bool)

(assert (= bs!1935308 (and b!7491908 d!2301335)))

(assert (=> bs!1935308 (not (= lambda!464203 lambda!464189))))

(declare-fun bs!1935309 () Bool)

(assert (= bs!1935309 (and b!7491908 b!7491824)))

(assert (=> bs!1935309 (not (= lambda!464203 lambda!464198))))

(declare-fun bs!1935310 () Bool)

(assert (= bs!1935310 (and b!7491908 b!7491883)))

(assert (=> bs!1935310 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (regOne!39782 r2!5783) (regOne!39782 rTail!78)) (= (regTwo!39782 r2!5783) (regTwo!39782 rTail!78))) (= lambda!464203 lambda!464201))))

(declare-fun bs!1935311 () Bool)

(assert (= bs!1935311 (and b!7491908 b!7491435)))

(assert (=> bs!1935311 (not (= lambda!464203 lambda!464166))))

(declare-fun bs!1935312 () Bool)

(assert (= bs!1935312 (and b!7491908 b!7491453)))

(assert (=> bs!1935312 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) (regOne!39782 lt!2629626)) (= (regTwo!39782 r2!5783) (regTwo!39782 lt!2629626))) (= lambda!464203 lambda!464178))))

(declare-fun bs!1935313 () Bool)

(assert (= bs!1935313 (and b!7491908 b!7491909)))

(assert (=> bs!1935313 (not (= lambda!464203 lambda!464202))))

(declare-fun bs!1935314 () Bool)

(assert (= bs!1935314 (and b!7491908 d!2301351)))

(assert (=> bs!1935314 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) lt!2629647) (= (regTwo!39782 r2!5783) rTail!78)) (= lambda!464203 lambda!464195))))

(declare-fun bs!1935315 () Bool)

(assert (= bs!1935315 (and b!7491908 b!7491454)))

(assert (=> bs!1935315 (not (= lambda!464203 lambda!464174))))

(declare-fun bs!1935316 () Bool)

(assert (= bs!1935316 (and b!7491908 b!7491799)))

(assert (=> bs!1935316 (not (= lambda!464203 lambda!464196))))

(declare-fun bs!1935317 () Bool)

(assert (= bs!1935317 (and b!7491908 b!7491119)))

(assert (=> bs!1935317 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) lt!2629647) (= (regTwo!39782 r2!5783) rTail!78)) (= lambda!464203 lambda!464149))))

(assert (=> bs!1935314 (not (= lambda!464203 lambda!464194))))

(declare-fun bs!1935318 () Bool)

(assert (= bs!1935318 (and b!7491908 b!7491434)))

(assert (=> bs!1935318 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) (regOne!39782 lt!2629643)) (= (regTwo!39782 r2!5783) (regTwo!39782 lt!2629643))) (= lambda!464203 lambda!464169))))

(assert (=> bs!1935317 (not (= lambda!464203 lambda!464148))))

(declare-fun bs!1935319 () Bool)

(assert (= bs!1935319 (and b!7491908 b!7491798)))

(assert (=> bs!1935319 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r2!5783) (regOne!39782 lt!2629646)) (= (regTwo!39782 r2!5783) (regTwo!39782 lt!2629646))) (= lambda!464203 lambda!464197))))

(assert (=> b!7491908 true))

(assert (=> b!7491908 true))

(declare-fun b!7491900 () Bool)

(declare-fun e!4467483 () Bool)

(declare-fun call!687766 () Bool)

(assert (=> b!7491900 (= e!4467483 call!687766)))

(declare-fun b!7491901 () Bool)

(declare-fun e!4467477 () Bool)

(declare-fun e!4467481 () Bool)

(assert (=> b!7491901 (= e!4467477 e!4467481)))

(declare-fun res!3005308 () Bool)

(assert (=> b!7491901 (= res!3005308 (matchRSpec!4312 (regOne!39783 r2!5783) (_1!37657 lt!2629628)))))

(assert (=> b!7491901 (=> res!3005308 e!4467481)))

(declare-fun b!7491902 () Bool)

(declare-fun res!3005310 () Bool)

(declare-fun e!4467482 () Bool)

(assert (=> b!7491902 (=> res!3005310 e!4467482)))

(assert (=> b!7491902 (= res!3005310 call!687766)))

(declare-fun e!4467480 () Bool)

(assert (=> b!7491902 (= e!4467480 e!4467482)))

(declare-fun b!7491903 () Bool)

(declare-fun c!1383383 () Bool)

(assert (=> b!7491903 (= c!1383383 ((_ is Union!19635) r2!5783))))

(declare-fun e!4467479 () Bool)

(assert (=> b!7491903 (= e!4467479 e!4467477)))

(declare-fun d!2301391 () Bool)

(declare-fun c!1383381 () Bool)

(assert (=> d!2301391 (= c!1383381 ((_ is EmptyExpr!19635) r2!5783))))

(assert (=> d!2301391 (= (matchRSpec!4312 r2!5783 (_1!37657 lt!2629628)) e!4467483)))

(declare-fun b!7491904 () Bool)

(assert (=> b!7491904 (= e!4467479 (= (_1!37657 lt!2629628) (Cons!72225 (c!1383210 r2!5783) Nil!72225)))))

(declare-fun b!7491905 () Bool)

(declare-fun c!1383382 () Bool)

(assert (=> b!7491905 (= c!1383382 ((_ is ElementMatch!19635) r2!5783))))

(declare-fun e!4467478 () Bool)

(assert (=> b!7491905 (= e!4467478 e!4467479)))

(declare-fun call!687767 () Bool)

(declare-fun bm!687761 () Bool)

(declare-fun c!1383380 () Bool)

(assert (=> bm!687761 (= call!687767 (Exists!4252 (ite c!1383380 lambda!464202 lambda!464203)))))

(declare-fun bm!687762 () Bool)

(assert (=> bm!687762 (= call!687766 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491906 () Bool)

(assert (=> b!7491906 (= e!4467481 (matchRSpec!4312 (regTwo!39783 r2!5783) (_1!37657 lt!2629628)))))

(declare-fun b!7491907 () Bool)

(assert (=> b!7491907 (= e!4467477 e!4467480)))

(assert (=> b!7491907 (= c!1383380 ((_ is Star!19635) r2!5783))))

(assert (=> b!7491908 (= e!4467480 call!687767)))

(assert (=> b!7491909 (= e!4467482 call!687767)))

(declare-fun b!7491910 () Bool)

(assert (=> b!7491910 (= e!4467483 e!4467478)))

(declare-fun res!3005309 () Bool)

(assert (=> b!7491910 (= res!3005309 (not ((_ is EmptyLang!19635) r2!5783)))))

(assert (=> b!7491910 (=> (not res!3005309) (not e!4467478))))

(assert (= (and d!2301391 c!1383381) b!7491900))

(assert (= (and d!2301391 (not c!1383381)) b!7491910))

(assert (= (and b!7491910 res!3005309) b!7491905))

(assert (= (and b!7491905 c!1383382) b!7491904))

(assert (= (and b!7491905 (not c!1383382)) b!7491903))

(assert (= (and b!7491903 c!1383383) b!7491901))

(assert (= (and b!7491903 (not c!1383383)) b!7491907))

(assert (= (and b!7491901 (not res!3005308)) b!7491906))

(assert (= (and b!7491907 c!1383380) b!7491902))

(assert (= (and b!7491907 (not c!1383380)) b!7491908))

(assert (= (and b!7491902 (not res!3005310)) b!7491909))

(assert (= (or b!7491909 b!7491908) bm!687761))

(assert (= (or b!7491900 b!7491902) bm!687762))

(declare-fun m!8078020 () Bool)

(assert (=> b!7491901 m!8078020))

(declare-fun m!8078022 () Bool)

(assert (=> bm!687761 m!8078022))

(assert (=> bm!687762 m!8077896))

(declare-fun m!8078024 () Bool)

(assert (=> b!7491906 m!8078024))

(assert (=> b!7491113 d!2301391))

(declare-fun bs!1935320 () Bool)

(declare-fun b!7491920 () Bool)

(assert (= bs!1935320 (and b!7491920 b!7491823)))

(declare-fun lambda!464204 () Int)

(assert (=> bs!1935320 (not (= lambda!464204 lambda!464199))))

(declare-fun bs!1935321 () Bool)

(assert (= bs!1935321 (and b!7491920 b!7491884)))

(assert (=> bs!1935321 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (reg!19964 lt!2629647) (reg!19964 rTail!78)) (= lt!2629647 rTail!78)) (= lambda!464204 lambda!464200))))

(declare-fun bs!1935322 () Bool)

(assert (= bs!1935322 (and b!7491920 d!2301335)))

(assert (=> bs!1935322 (not (= lambda!464204 lambda!464189))))

(declare-fun bs!1935323 () Bool)

(assert (= bs!1935323 (and b!7491920 b!7491824)))

(assert (=> bs!1935323 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 lt!2629647) (reg!19964 lt!2629623)) (= lt!2629647 lt!2629623)) (= lambda!464204 lambda!464198))))

(declare-fun bs!1935324 () Bool)

(assert (= bs!1935324 (and b!7491920 b!7491883)))

(assert (=> bs!1935324 (not (= lambda!464204 lambda!464201))))

(declare-fun bs!1935325 () Bool)

(assert (= bs!1935325 (and b!7491920 b!7491435)))

(assert (=> bs!1935325 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 lt!2629647) (reg!19964 lt!2629643)) (= lt!2629647 lt!2629643)) (= lambda!464204 lambda!464166))))

(declare-fun bs!1935326 () Bool)

(assert (= bs!1935326 (and b!7491920 b!7491453)))

(assert (=> bs!1935326 (not (= lambda!464204 lambda!464178))))

(declare-fun bs!1935327 () Bool)

(assert (= bs!1935327 (and b!7491920 b!7491909)))

(assert (=> bs!1935327 (= (and (= (reg!19964 lt!2629647) (reg!19964 r2!5783)) (= lt!2629647 r2!5783)) (= lambda!464204 lambda!464202))))

(declare-fun bs!1935328 () Bool)

(assert (= bs!1935328 (and b!7491920 d!2301351)))

(assert (=> bs!1935328 (not (= lambda!464204 lambda!464195))))

(declare-fun bs!1935329 () Bool)

(assert (= bs!1935329 (and b!7491920 b!7491454)))

(assert (=> bs!1935329 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 lt!2629647) (reg!19964 lt!2629626)) (= lt!2629647 lt!2629626)) (= lambda!464204 lambda!464174))))

(declare-fun bs!1935330 () Bool)

(assert (= bs!1935330 (and b!7491920 b!7491799)))

(assert (=> bs!1935330 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 lt!2629647) (reg!19964 lt!2629646)) (= lt!2629647 lt!2629646)) (= lambda!464204 lambda!464196))))

(declare-fun bs!1935331 () Bool)

(assert (= bs!1935331 (and b!7491920 b!7491119)))

(assert (=> bs!1935331 (not (= lambda!464204 lambda!464149))))

(assert (=> bs!1935328 (not (= lambda!464204 lambda!464194))))

(declare-fun bs!1935332 () Bool)

(assert (= bs!1935332 (and b!7491920 b!7491434)))

(assert (=> bs!1935332 (not (= lambda!464204 lambda!464169))))

(assert (=> bs!1935331 (not (= lambda!464204 lambda!464148))))

(declare-fun bs!1935333 () Bool)

(assert (= bs!1935333 (and b!7491920 b!7491908)))

(assert (=> bs!1935333 (not (= lambda!464204 lambda!464203))))

(declare-fun bs!1935334 () Bool)

(assert (= bs!1935334 (and b!7491920 b!7491798)))

(assert (=> bs!1935334 (not (= lambda!464204 lambda!464197))))

(assert (=> b!7491920 true))

(assert (=> b!7491920 true))

(declare-fun bs!1935335 () Bool)

(declare-fun b!7491919 () Bool)

(assert (= bs!1935335 (and b!7491919 b!7491823)))

(declare-fun lambda!464205 () Int)

(assert (=> bs!1935335 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) (regOne!39782 lt!2629623)) (= (regTwo!39782 lt!2629647) (regTwo!39782 lt!2629623))) (= lambda!464205 lambda!464199))))

(declare-fun bs!1935336 () Bool)

(assert (= bs!1935336 (and b!7491919 b!7491884)))

(assert (=> bs!1935336 (not (= lambda!464205 lambda!464200))))

(declare-fun bs!1935337 () Bool)

(assert (= bs!1935337 (and b!7491919 d!2301335)))

(assert (=> bs!1935337 (not (= lambda!464205 lambda!464189))))

(declare-fun bs!1935338 () Bool)

(assert (= bs!1935338 (and b!7491919 b!7491824)))

(assert (=> bs!1935338 (not (= lambda!464205 lambda!464198))))

(declare-fun bs!1935339 () Bool)

(assert (= bs!1935339 (and b!7491919 b!7491883)))

(assert (=> bs!1935339 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (regOne!39782 lt!2629647) (regOne!39782 rTail!78)) (= (regTwo!39782 lt!2629647) (regTwo!39782 rTail!78))) (= lambda!464205 lambda!464201))))

(declare-fun bs!1935340 () Bool)

(assert (= bs!1935340 (and b!7491919 b!7491435)))

(assert (=> bs!1935340 (not (= lambda!464205 lambda!464166))))

(declare-fun bs!1935341 () Bool)

(assert (= bs!1935341 (and b!7491919 b!7491453)))

(assert (=> bs!1935341 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) (regOne!39782 lt!2629626)) (= (regTwo!39782 lt!2629647) (regTwo!39782 lt!2629626))) (= lambda!464205 lambda!464178))))

(declare-fun bs!1935342 () Bool)

(assert (= bs!1935342 (and b!7491919 b!7491909)))

(assert (=> bs!1935342 (not (= lambda!464205 lambda!464202))))

(declare-fun bs!1935343 () Bool)

(assert (= bs!1935343 (and b!7491919 d!2301351)))

(assert (=> bs!1935343 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) lt!2629647) (= (regTwo!39782 lt!2629647) rTail!78)) (= lambda!464205 lambda!464195))))

(declare-fun bs!1935344 () Bool)

(assert (= bs!1935344 (and b!7491919 b!7491454)))

(assert (=> bs!1935344 (not (= lambda!464205 lambda!464174))))

(declare-fun bs!1935345 () Bool)

(assert (= bs!1935345 (and b!7491919 b!7491799)))

(assert (=> bs!1935345 (not (= lambda!464205 lambda!464196))))

(declare-fun bs!1935346 () Bool)

(assert (= bs!1935346 (and b!7491919 b!7491119)))

(assert (=> bs!1935346 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) lt!2629647) (= (regTwo!39782 lt!2629647) rTail!78)) (= lambda!464205 lambda!464149))))

(assert (=> bs!1935343 (not (= lambda!464205 lambda!464194))))

(declare-fun bs!1935347 () Bool)

(assert (= bs!1935347 (and b!7491919 b!7491920)))

(assert (=> bs!1935347 (not (= lambda!464205 lambda!464204))))

(declare-fun bs!1935348 () Bool)

(assert (= bs!1935348 (and b!7491919 b!7491434)))

(assert (=> bs!1935348 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) (regOne!39782 lt!2629643)) (= (regTwo!39782 lt!2629647) (regTwo!39782 lt!2629643))) (= lambda!464205 lambda!464169))))

(assert (=> bs!1935346 (not (= lambda!464205 lambda!464148))))

(declare-fun bs!1935349 () Bool)

(assert (= bs!1935349 (and b!7491919 b!7491908)))

(assert (=> bs!1935349 (= (and (= (regOne!39782 lt!2629647) (regOne!39782 r2!5783)) (= (regTwo!39782 lt!2629647) (regTwo!39782 r2!5783))) (= lambda!464205 lambda!464203))))

(declare-fun bs!1935350 () Bool)

(assert (= bs!1935350 (and b!7491919 b!7491798)))

(assert (=> bs!1935350 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 lt!2629647) (regOne!39782 lt!2629646)) (= (regTwo!39782 lt!2629647) (regTwo!39782 lt!2629646))) (= lambda!464205 lambda!464197))))

(assert (=> b!7491919 true))

(assert (=> b!7491919 true))

(declare-fun b!7491911 () Bool)

(declare-fun e!4467490 () Bool)

(declare-fun call!687768 () Bool)

(assert (=> b!7491911 (= e!4467490 call!687768)))

(declare-fun b!7491912 () Bool)

(declare-fun e!4467484 () Bool)

(declare-fun e!4467488 () Bool)

(assert (=> b!7491912 (= e!4467484 e!4467488)))

(declare-fun res!3005311 () Bool)

(assert (=> b!7491912 (= res!3005311 (matchRSpec!4312 (regOne!39783 lt!2629647) (_1!37657 lt!2629628)))))

(assert (=> b!7491912 (=> res!3005311 e!4467488)))

(declare-fun b!7491913 () Bool)

(declare-fun res!3005313 () Bool)

(declare-fun e!4467489 () Bool)

(assert (=> b!7491913 (=> res!3005313 e!4467489)))

(assert (=> b!7491913 (= res!3005313 call!687768)))

(declare-fun e!4467487 () Bool)

(assert (=> b!7491913 (= e!4467487 e!4467489)))

(declare-fun b!7491914 () Bool)

(declare-fun c!1383387 () Bool)

(assert (=> b!7491914 (= c!1383387 ((_ is Union!19635) lt!2629647))))

(declare-fun e!4467486 () Bool)

(assert (=> b!7491914 (= e!4467486 e!4467484)))

(declare-fun d!2301393 () Bool)

(declare-fun c!1383385 () Bool)

(assert (=> d!2301393 (= c!1383385 ((_ is EmptyExpr!19635) lt!2629647))))

(assert (=> d!2301393 (= (matchRSpec!4312 lt!2629647 (_1!37657 lt!2629628)) e!4467490)))

(declare-fun b!7491915 () Bool)

(assert (=> b!7491915 (= e!4467486 (= (_1!37657 lt!2629628) (Cons!72225 (c!1383210 lt!2629647) Nil!72225)))))

(declare-fun b!7491916 () Bool)

(declare-fun c!1383386 () Bool)

(assert (=> b!7491916 (= c!1383386 ((_ is ElementMatch!19635) lt!2629647))))

(declare-fun e!4467485 () Bool)

(assert (=> b!7491916 (= e!4467485 e!4467486)))

(declare-fun call!687769 () Bool)

(declare-fun bm!687763 () Bool)

(declare-fun c!1383384 () Bool)

(assert (=> bm!687763 (= call!687769 (Exists!4252 (ite c!1383384 lambda!464204 lambda!464205)))))

(declare-fun bm!687764 () Bool)

(assert (=> bm!687764 (= call!687768 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491917 () Bool)

(assert (=> b!7491917 (= e!4467488 (matchRSpec!4312 (regTwo!39783 lt!2629647) (_1!37657 lt!2629628)))))

(declare-fun b!7491918 () Bool)

(assert (=> b!7491918 (= e!4467484 e!4467487)))

(assert (=> b!7491918 (= c!1383384 ((_ is Star!19635) lt!2629647))))

(assert (=> b!7491919 (= e!4467487 call!687769)))

(assert (=> b!7491920 (= e!4467489 call!687769)))

(declare-fun b!7491921 () Bool)

(assert (=> b!7491921 (= e!4467490 e!4467485)))

(declare-fun res!3005312 () Bool)

(assert (=> b!7491921 (= res!3005312 (not ((_ is EmptyLang!19635) lt!2629647)))))

(assert (=> b!7491921 (=> (not res!3005312) (not e!4467485))))

(assert (= (and d!2301393 c!1383385) b!7491911))

(assert (= (and d!2301393 (not c!1383385)) b!7491921))

(assert (= (and b!7491921 res!3005312) b!7491916))

(assert (= (and b!7491916 c!1383386) b!7491915))

(assert (= (and b!7491916 (not c!1383386)) b!7491914))

(assert (= (and b!7491914 c!1383387) b!7491912))

(assert (= (and b!7491914 (not c!1383387)) b!7491918))

(assert (= (and b!7491912 (not res!3005311)) b!7491917))

(assert (= (and b!7491918 c!1383384) b!7491913))

(assert (= (and b!7491918 (not c!1383384)) b!7491919))

(assert (= (and b!7491913 (not res!3005313)) b!7491920))

(assert (= (or b!7491920 b!7491919) bm!687763))

(assert (= (or b!7491911 b!7491913) bm!687764))

(declare-fun m!8078026 () Bool)

(assert (=> b!7491912 m!8078026))

(declare-fun m!8078028 () Bool)

(assert (=> bm!687763 m!8078028))

(assert (=> bm!687764 m!8077896))

(declare-fun m!8078030 () Bool)

(assert (=> b!7491917 m!8078030))

(assert (=> b!7491113 d!2301393))

(declare-fun bs!1935351 () Bool)

(declare-fun b!7491931 () Bool)

(assert (= bs!1935351 (and b!7491931 b!7491823)))

(declare-fun lambda!464206 () Int)

(assert (=> bs!1935351 (not (= lambda!464206 lambda!464199))))

(declare-fun bs!1935352 () Bool)

(assert (= bs!1935352 (and b!7491931 b!7491884)))

(assert (=> bs!1935352 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (reg!19964 r1!5845) (reg!19964 rTail!78)) (= r1!5845 rTail!78)) (= lambda!464206 lambda!464200))))

(declare-fun bs!1935353 () Bool)

(assert (= bs!1935353 (and b!7491931 d!2301335)))

(assert (=> bs!1935353 (not (= lambda!464206 lambda!464189))))

(declare-fun bs!1935354 () Bool)

(assert (= bs!1935354 (and b!7491931 b!7491824)))

(assert (=> bs!1935354 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r1!5845) (reg!19964 lt!2629623)) (= r1!5845 lt!2629623)) (= lambda!464206 lambda!464198))))

(declare-fun bs!1935355 () Bool)

(assert (= bs!1935355 (and b!7491931 b!7491883)))

(assert (=> bs!1935355 (not (= lambda!464206 lambda!464201))))

(declare-fun bs!1935356 () Bool)

(assert (= bs!1935356 (and b!7491931 b!7491435)))

(assert (=> bs!1935356 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r1!5845) (reg!19964 lt!2629643)) (= r1!5845 lt!2629643)) (= lambda!464206 lambda!464166))))

(declare-fun bs!1935357 () Bool)

(assert (= bs!1935357 (and b!7491931 b!7491453)))

(assert (=> bs!1935357 (not (= lambda!464206 lambda!464178))))

(declare-fun bs!1935358 () Bool)

(assert (= bs!1935358 (and b!7491931 b!7491909)))

(assert (=> bs!1935358 (= (and (= (reg!19964 r1!5845) (reg!19964 r2!5783)) (= r1!5845 r2!5783)) (= lambda!464206 lambda!464202))))

(declare-fun bs!1935359 () Bool)

(assert (= bs!1935359 (and b!7491931 d!2301351)))

(assert (=> bs!1935359 (not (= lambda!464206 lambda!464195))))

(declare-fun bs!1935360 () Bool)

(assert (= bs!1935360 (and b!7491931 b!7491454)))

(assert (=> bs!1935360 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r1!5845) (reg!19964 lt!2629626)) (= r1!5845 lt!2629626)) (= lambda!464206 lambda!464174))))

(declare-fun bs!1935361 () Bool)

(assert (= bs!1935361 (and b!7491931 b!7491799)))

(assert (=> bs!1935361 (= (and (= (_1!37657 lt!2629628) s!13591) (= (reg!19964 r1!5845) (reg!19964 lt!2629646)) (= r1!5845 lt!2629646)) (= lambda!464206 lambda!464196))))

(assert (=> bs!1935359 (not (= lambda!464206 lambda!464194))))

(declare-fun bs!1935362 () Bool)

(assert (= bs!1935362 (and b!7491931 b!7491920)))

(assert (=> bs!1935362 (= (and (= (reg!19964 r1!5845) (reg!19964 lt!2629647)) (= r1!5845 lt!2629647)) (= lambda!464206 lambda!464204))))

(declare-fun bs!1935363 () Bool)

(assert (= bs!1935363 (and b!7491931 b!7491434)))

(assert (=> bs!1935363 (not (= lambda!464206 lambda!464169))))

(declare-fun bs!1935364 () Bool)

(assert (= bs!1935364 (and b!7491931 b!7491919)))

(assert (=> bs!1935364 (not (= lambda!464206 lambda!464205))))

(declare-fun bs!1935365 () Bool)

(assert (= bs!1935365 (and b!7491931 b!7491119)))

(assert (=> bs!1935365 (not (= lambda!464206 lambda!464149))))

(assert (=> bs!1935365 (not (= lambda!464206 lambda!464148))))

(declare-fun bs!1935366 () Bool)

(assert (= bs!1935366 (and b!7491931 b!7491908)))

(assert (=> bs!1935366 (not (= lambda!464206 lambda!464203))))

(declare-fun bs!1935367 () Bool)

(assert (= bs!1935367 (and b!7491931 b!7491798)))

(assert (=> bs!1935367 (not (= lambda!464206 lambda!464197))))

(assert (=> b!7491931 true))

(assert (=> b!7491931 true))

(declare-fun bs!1935368 () Bool)

(declare-fun b!7491930 () Bool)

(assert (= bs!1935368 (and b!7491930 b!7491823)))

(declare-fun lambda!464207 () Int)

(assert (=> bs!1935368 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) (regOne!39782 lt!2629623)) (= (regTwo!39782 r1!5845) (regTwo!39782 lt!2629623))) (= lambda!464207 lambda!464199))))

(declare-fun bs!1935369 () Bool)

(assert (= bs!1935369 (and b!7491930 b!7491884)))

(assert (=> bs!1935369 (not (= lambda!464207 lambda!464200))))

(declare-fun bs!1935370 () Bool)

(assert (= bs!1935370 (and b!7491930 d!2301335)))

(assert (=> bs!1935370 (not (= lambda!464207 lambda!464189))))

(declare-fun bs!1935371 () Bool)

(assert (= bs!1935371 (and b!7491930 b!7491824)))

(assert (=> bs!1935371 (not (= lambda!464207 lambda!464198))))

(declare-fun bs!1935372 () Bool)

(assert (= bs!1935372 (and b!7491930 b!7491883)))

(assert (=> bs!1935372 (= (and (= (_1!37657 lt!2629628) (_2!37657 lt!2629628)) (= (regOne!39782 r1!5845) (regOne!39782 rTail!78)) (= (regTwo!39782 r1!5845) (regTwo!39782 rTail!78))) (= lambda!464207 lambda!464201))))

(declare-fun bs!1935373 () Bool)

(assert (= bs!1935373 (and b!7491930 b!7491435)))

(assert (=> bs!1935373 (not (= lambda!464207 lambda!464166))))

(declare-fun bs!1935374 () Bool)

(assert (= bs!1935374 (and b!7491930 b!7491453)))

(assert (=> bs!1935374 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) (regOne!39782 lt!2629626)) (= (regTwo!39782 r1!5845) (regTwo!39782 lt!2629626))) (= lambda!464207 lambda!464178))))

(declare-fun bs!1935375 () Bool)

(assert (= bs!1935375 (and b!7491930 b!7491909)))

(assert (=> bs!1935375 (not (= lambda!464207 lambda!464202))))

(declare-fun bs!1935376 () Bool)

(assert (= bs!1935376 (and b!7491930 d!2301351)))

(assert (=> bs!1935376 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) lt!2629647) (= (regTwo!39782 r1!5845) rTail!78)) (= lambda!464207 lambda!464195))))

(declare-fun bs!1935377 () Bool)

(assert (= bs!1935377 (and b!7491930 b!7491454)))

(assert (=> bs!1935377 (not (= lambda!464207 lambda!464174))))

(declare-fun bs!1935378 () Bool)

(assert (= bs!1935378 (and b!7491930 b!7491799)))

(assert (=> bs!1935378 (not (= lambda!464207 lambda!464196))))

(declare-fun bs!1935379 () Bool)

(assert (= bs!1935379 (and b!7491930 b!7491931)))

(assert (=> bs!1935379 (not (= lambda!464207 lambda!464206))))

(assert (=> bs!1935376 (not (= lambda!464207 lambda!464194))))

(declare-fun bs!1935380 () Bool)

(assert (= bs!1935380 (and b!7491930 b!7491920)))

(assert (=> bs!1935380 (not (= lambda!464207 lambda!464204))))

(declare-fun bs!1935381 () Bool)

(assert (= bs!1935381 (and b!7491930 b!7491434)))

(assert (=> bs!1935381 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) (regOne!39782 lt!2629643)) (= (regTwo!39782 r1!5845) (regTwo!39782 lt!2629643))) (= lambda!464207 lambda!464169))))

(declare-fun bs!1935382 () Bool)

(assert (= bs!1935382 (and b!7491930 b!7491919)))

(assert (=> bs!1935382 (= (and (= (regOne!39782 r1!5845) (regOne!39782 lt!2629647)) (= (regTwo!39782 r1!5845) (regTwo!39782 lt!2629647))) (= lambda!464207 lambda!464205))))

(declare-fun bs!1935383 () Bool)

(assert (= bs!1935383 (and b!7491930 b!7491119)))

(assert (=> bs!1935383 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) lt!2629647) (= (regTwo!39782 r1!5845) rTail!78)) (= lambda!464207 lambda!464149))))

(assert (=> bs!1935383 (not (= lambda!464207 lambda!464148))))

(declare-fun bs!1935384 () Bool)

(assert (= bs!1935384 (and b!7491930 b!7491908)))

(assert (=> bs!1935384 (= (and (= (regOne!39782 r1!5845) (regOne!39782 r2!5783)) (= (regTwo!39782 r1!5845) (regTwo!39782 r2!5783))) (= lambda!464207 lambda!464203))))

(declare-fun bs!1935385 () Bool)

(assert (= bs!1935385 (and b!7491930 b!7491798)))

(assert (=> bs!1935385 (= (and (= (_1!37657 lt!2629628) s!13591) (= (regOne!39782 r1!5845) (regOne!39782 lt!2629646)) (= (regTwo!39782 r1!5845) (regTwo!39782 lt!2629646))) (= lambda!464207 lambda!464197))))

(assert (=> b!7491930 true))

(assert (=> b!7491930 true))

(declare-fun b!7491922 () Bool)

(declare-fun e!4467497 () Bool)

(declare-fun call!687770 () Bool)

(assert (=> b!7491922 (= e!4467497 call!687770)))

(declare-fun b!7491923 () Bool)

(declare-fun e!4467491 () Bool)

(declare-fun e!4467495 () Bool)

(assert (=> b!7491923 (= e!4467491 e!4467495)))

(declare-fun res!3005314 () Bool)

(assert (=> b!7491923 (= res!3005314 (matchRSpec!4312 (regOne!39783 r1!5845) (_1!37657 lt!2629628)))))

(assert (=> b!7491923 (=> res!3005314 e!4467495)))

(declare-fun b!7491924 () Bool)

(declare-fun res!3005316 () Bool)

(declare-fun e!4467496 () Bool)

(assert (=> b!7491924 (=> res!3005316 e!4467496)))

(assert (=> b!7491924 (= res!3005316 call!687770)))

(declare-fun e!4467494 () Bool)

(assert (=> b!7491924 (= e!4467494 e!4467496)))

(declare-fun b!7491925 () Bool)

(declare-fun c!1383391 () Bool)

(assert (=> b!7491925 (= c!1383391 ((_ is Union!19635) r1!5845))))

(declare-fun e!4467493 () Bool)

(assert (=> b!7491925 (= e!4467493 e!4467491)))

(declare-fun d!2301395 () Bool)

(declare-fun c!1383389 () Bool)

(assert (=> d!2301395 (= c!1383389 ((_ is EmptyExpr!19635) r1!5845))))

(assert (=> d!2301395 (= (matchRSpec!4312 r1!5845 (_1!37657 lt!2629628)) e!4467497)))

(declare-fun b!7491926 () Bool)

(assert (=> b!7491926 (= e!4467493 (= (_1!37657 lt!2629628) (Cons!72225 (c!1383210 r1!5845) Nil!72225)))))

(declare-fun b!7491927 () Bool)

(declare-fun c!1383390 () Bool)

(assert (=> b!7491927 (= c!1383390 ((_ is ElementMatch!19635) r1!5845))))

(declare-fun e!4467492 () Bool)

(assert (=> b!7491927 (= e!4467492 e!4467493)))

(declare-fun bm!687765 () Bool)

(declare-fun call!687771 () Bool)

(declare-fun c!1383388 () Bool)

(assert (=> bm!687765 (= call!687771 (Exists!4252 (ite c!1383388 lambda!464206 lambda!464207)))))

(declare-fun bm!687766 () Bool)

(assert (=> bm!687766 (= call!687770 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491928 () Bool)

(assert (=> b!7491928 (= e!4467495 (matchRSpec!4312 (regTwo!39783 r1!5845) (_1!37657 lt!2629628)))))

(declare-fun b!7491929 () Bool)

(assert (=> b!7491929 (= e!4467491 e!4467494)))

(assert (=> b!7491929 (= c!1383388 ((_ is Star!19635) r1!5845))))

(assert (=> b!7491930 (= e!4467494 call!687771)))

(assert (=> b!7491931 (= e!4467496 call!687771)))

(declare-fun b!7491932 () Bool)

(assert (=> b!7491932 (= e!4467497 e!4467492)))

(declare-fun res!3005315 () Bool)

(assert (=> b!7491932 (= res!3005315 (not ((_ is EmptyLang!19635) r1!5845)))))

(assert (=> b!7491932 (=> (not res!3005315) (not e!4467492))))

(assert (= (and d!2301395 c!1383389) b!7491922))

(assert (= (and d!2301395 (not c!1383389)) b!7491932))

(assert (= (and b!7491932 res!3005315) b!7491927))

(assert (= (and b!7491927 c!1383390) b!7491926))

(assert (= (and b!7491927 (not c!1383390)) b!7491925))

(assert (= (and b!7491925 c!1383391) b!7491923))

(assert (= (and b!7491925 (not c!1383391)) b!7491929))

(assert (= (and b!7491923 (not res!3005314)) b!7491928))

(assert (= (and b!7491929 c!1383388) b!7491924))

(assert (= (and b!7491929 (not c!1383388)) b!7491930))

(assert (= (and b!7491924 (not res!3005316)) b!7491931))

(assert (= (or b!7491931 b!7491930) bm!687765))

(assert (= (or b!7491922 b!7491924) bm!687766))

(declare-fun m!8078032 () Bool)

(assert (=> b!7491923 m!8078032))

(declare-fun m!8078034 () Bool)

(assert (=> bm!687765 m!8078034))

(assert (=> bm!687766 m!8077896))

(declare-fun m!8078036 () Bool)

(assert (=> b!7491928 m!8078036))

(assert (=> b!7491113 d!2301395))

(declare-fun d!2301397 () Bool)

(assert (=> d!2301397 (= (matchR!9397 rTail!78 (_2!37657 lt!2629628)) (matchRSpec!4312 rTail!78 (_2!37657 lt!2629628)))))

(declare-fun lt!2629729 () Unit!166101)

(assert (=> d!2301397 (= lt!2629729 (choose!57904 rTail!78 (_2!37657 lt!2629628)))))

(assert (=> d!2301397 (validRegex!10149 rTail!78)))

(assert (=> d!2301397 (= (mainMatchTheorem!4306 rTail!78 (_2!37657 lt!2629628)) lt!2629729)))

(declare-fun bs!1935386 () Bool)

(assert (= bs!1935386 d!2301397))

(assert (=> bs!1935386 m!8077514))

(assert (=> bs!1935386 m!8077546))

(declare-fun m!8078038 () Bool)

(assert (=> bs!1935386 m!8078038))

(assert (=> bs!1935386 m!8077534))

(assert (=> b!7491113 d!2301397))

(declare-fun d!2301399 () Bool)

(assert (=> d!2301399 (= (matchR!9397 r1!5845 (_1!37657 lt!2629628)) (matchRSpec!4312 r1!5845 (_1!37657 lt!2629628)))))

(declare-fun lt!2629730 () Unit!166101)

(assert (=> d!2301399 (= lt!2629730 (choose!57904 r1!5845 (_1!37657 lt!2629628)))))

(assert (=> d!2301399 (validRegex!10149 r1!5845)))

(assert (=> d!2301399 (= (mainMatchTheorem!4306 r1!5845 (_1!37657 lt!2629628)) lt!2629730)))

(declare-fun bs!1935387 () Bool)

(assert (= bs!1935387 d!2301399))

(assert (=> bs!1935387 m!8077550))

(assert (=> bs!1935387 m!8077542))

(declare-fun m!8078040 () Bool)

(assert (=> bs!1935387 m!8078040))

(assert (=> bs!1935387 m!8077498))

(assert (=> b!7491113 d!2301399))

(declare-fun d!2301401 () Bool)

(declare-fun e!4467504 () Bool)

(assert (=> d!2301401 e!4467504))

(declare-fun c!1383394 () Bool)

(assert (=> d!2301401 (= c!1383394 ((_ is EmptyExpr!19635) r2!5783))))

(declare-fun lt!2629731 () Bool)

(declare-fun e!4467503 () Bool)

(assert (=> d!2301401 (= lt!2629731 e!4467503)))

(declare-fun c!1383392 () Bool)

(assert (=> d!2301401 (= c!1383392 (isEmpty!41252 (_1!37657 lt!2629628)))))

(assert (=> d!2301401 (validRegex!10149 r2!5783)))

(assert (=> d!2301401 (= (matchR!9397 r2!5783 (_1!37657 lt!2629628)) lt!2629731)))

(declare-fun b!7491933 () Bool)

(assert (=> b!7491933 (= e!4467503 (matchR!9397 (derivativeStep!5630 r2!5783 (head!15370 (_1!37657 lt!2629628))) (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491934 () Bool)

(declare-fun res!3005324 () Bool)

(declare-fun e!4467501 () Bool)

(assert (=> b!7491934 (=> (not res!3005324) (not e!4467501))))

(declare-fun call!687772 () Bool)

(assert (=> b!7491934 (= res!3005324 (not call!687772))))

(declare-fun b!7491935 () Bool)

(assert (=> b!7491935 (= e!4467504 (= lt!2629731 call!687772))))

(declare-fun b!7491936 () Bool)

(assert (=> b!7491936 (= e!4467503 (nullable!8573 r2!5783))))

(declare-fun b!7491937 () Bool)

(declare-fun res!3005317 () Bool)

(assert (=> b!7491937 (=> (not res!3005317) (not e!4467501))))

(assert (=> b!7491937 (= res!3005317 (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628))))))

(declare-fun b!7491938 () Bool)

(declare-fun res!3005322 () Bool)

(declare-fun e!4467500 () Bool)

(assert (=> b!7491938 (=> res!3005322 e!4467500)))

(assert (=> b!7491938 (= res!3005322 (not (isEmpty!41252 (tail!14939 (_1!37657 lt!2629628)))))))

(declare-fun b!7491939 () Bool)

(assert (=> b!7491939 (= e!4467501 (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 r2!5783)))))

(declare-fun b!7491940 () Bool)

(declare-fun e!4467499 () Bool)

(declare-fun e!4467498 () Bool)

(assert (=> b!7491940 (= e!4467499 e!4467498)))

(declare-fun res!3005318 () Bool)

(assert (=> b!7491940 (=> (not res!3005318) (not e!4467498))))

(assert (=> b!7491940 (= res!3005318 (not lt!2629731))))

(declare-fun b!7491941 () Bool)

(declare-fun res!3005323 () Bool)

(assert (=> b!7491941 (=> res!3005323 e!4467499)))

(assert (=> b!7491941 (= res!3005323 e!4467501)))

(declare-fun res!3005321 () Bool)

(assert (=> b!7491941 (=> (not res!3005321) (not e!4467501))))

(assert (=> b!7491941 (= res!3005321 lt!2629731)))

(declare-fun b!7491942 () Bool)

(assert (=> b!7491942 (= e!4467500 (not (= (head!15370 (_1!37657 lt!2629628)) (c!1383210 r2!5783))))))

(declare-fun bm!687767 () Bool)

(assert (=> bm!687767 (= call!687772 (isEmpty!41252 (_1!37657 lt!2629628)))))

(declare-fun b!7491943 () Bool)

(declare-fun res!3005320 () Bool)

(assert (=> b!7491943 (=> res!3005320 e!4467499)))

(assert (=> b!7491943 (= res!3005320 (not ((_ is ElementMatch!19635) r2!5783)))))

(declare-fun e!4467502 () Bool)

(assert (=> b!7491943 (= e!4467502 e!4467499)))

(declare-fun b!7491944 () Bool)

(assert (=> b!7491944 (= e!4467502 (not lt!2629731))))

(declare-fun b!7491945 () Bool)

(assert (=> b!7491945 (= e!4467504 e!4467502)))

(declare-fun c!1383393 () Bool)

(assert (=> b!7491945 (= c!1383393 ((_ is EmptyLang!19635) r2!5783))))

(declare-fun b!7491946 () Bool)

(assert (=> b!7491946 (= e!4467498 e!4467500)))

(declare-fun res!3005319 () Bool)

(assert (=> b!7491946 (=> res!3005319 e!4467500)))

(assert (=> b!7491946 (= res!3005319 call!687772)))

(assert (= (and d!2301401 c!1383392) b!7491936))

(assert (= (and d!2301401 (not c!1383392)) b!7491933))

(assert (= (and d!2301401 c!1383394) b!7491935))

(assert (= (and d!2301401 (not c!1383394)) b!7491945))

(assert (= (and b!7491945 c!1383393) b!7491944))

(assert (= (and b!7491945 (not c!1383393)) b!7491943))

(assert (= (and b!7491943 (not res!3005320)) b!7491941))

(assert (= (and b!7491941 res!3005321) b!7491934))

(assert (= (and b!7491934 res!3005324) b!7491937))

(assert (= (and b!7491937 res!3005317) b!7491939))

(assert (= (and b!7491941 (not res!3005323)) b!7491940))

(assert (= (and b!7491940 res!3005318) b!7491946))

(assert (= (and b!7491946 (not res!3005319)) b!7491938))

(assert (= (and b!7491938 (not res!3005322)) b!7491942))

(assert (= (or b!7491935 b!7491934 b!7491946) bm!687767))

(declare-fun m!8078042 () Bool)

(assert (=> b!7491936 m!8078042))

(assert (=> d!2301401 m!8077896))

(assert (=> d!2301401 m!8077496))

(assert (=> b!7491933 m!8077898))

(assert (=> b!7491933 m!8077898))

(declare-fun m!8078044 () Bool)

(assert (=> b!7491933 m!8078044))

(assert (=> b!7491933 m!8077902))

(assert (=> b!7491933 m!8078044))

(assert (=> b!7491933 m!8077902))

(declare-fun m!8078046 () Bool)

(assert (=> b!7491933 m!8078046))

(assert (=> b!7491938 m!8077902))

(assert (=> b!7491938 m!8077902))

(assert (=> b!7491938 m!8077906))

(assert (=> b!7491942 m!8077898))

(assert (=> b!7491937 m!8077902))

(assert (=> b!7491937 m!8077902))

(assert (=> b!7491937 m!8077906))

(assert (=> b!7491939 m!8077898))

(assert (=> bm!687767 m!8077896))

(assert (=> b!7491113 d!2301401))

(declare-fun b!7491959 () Bool)

(declare-fun e!4467507 () Bool)

(declare-fun tp!2174434 () Bool)

(assert (=> b!7491959 (= e!4467507 tp!2174434)))

(declare-fun b!7491960 () Bool)

(declare-fun tp!2174435 () Bool)

(declare-fun tp!2174432 () Bool)

(assert (=> b!7491960 (= e!4467507 (and tp!2174435 tp!2174432))))

(declare-fun b!7491958 () Bool)

(declare-fun tp!2174433 () Bool)

(declare-fun tp!2174436 () Bool)

(assert (=> b!7491958 (= e!4467507 (and tp!2174433 tp!2174436))))

(declare-fun b!7491957 () Bool)

(assert (=> b!7491957 (= e!4467507 tp_is_empty!49559)))

(assert (=> b!7491114 (= tp!2174331 e!4467507)))

(assert (= (and b!7491114 ((_ is ElementMatch!19635) (regOne!39783 r2!5783))) b!7491957))

(assert (= (and b!7491114 ((_ is Concat!28480) (regOne!39783 r2!5783))) b!7491958))

(assert (= (and b!7491114 ((_ is Star!19635) (regOne!39783 r2!5783))) b!7491959))

(assert (= (and b!7491114 ((_ is Union!19635) (regOne!39783 r2!5783))) b!7491960))

(declare-fun b!7491963 () Bool)

(declare-fun e!4467508 () Bool)

(declare-fun tp!2174439 () Bool)

(assert (=> b!7491963 (= e!4467508 tp!2174439)))

(declare-fun b!7491964 () Bool)

(declare-fun tp!2174440 () Bool)

(declare-fun tp!2174437 () Bool)

(assert (=> b!7491964 (= e!4467508 (and tp!2174440 tp!2174437))))

(declare-fun b!7491962 () Bool)

(declare-fun tp!2174438 () Bool)

(declare-fun tp!2174441 () Bool)

(assert (=> b!7491962 (= e!4467508 (and tp!2174438 tp!2174441))))

(declare-fun b!7491961 () Bool)

(assert (=> b!7491961 (= e!4467508 tp_is_empty!49559)))

(assert (=> b!7491114 (= tp!2174320 e!4467508)))

(assert (= (and b!7491114 ((_ is ElementMatch!19635) (regTwo!39783 r2!5783))) b!7491961))

(assert (= (and b!7491114 ((_ is Concat!28480) (regTwo!39783 r2!5783))) b!7491962))

(assert (= (and b!7491114 ((_ is Star!19635) (regTwo!39783 r2!5783))) b!7491963))

(assert (= (and b!7491114 ((_ is Union!19635) (regTwo!39783 r2!5783))) b!7491964))

(declare-fun b!7491967 () Bool)

(declare-fun e!4467509 () Bool)

(declare-fun tp!2174444 () Bool)

(assert (=> b!7491967 (= e!4467509 tp!2174444)))

(declare-fun b!7491968 () Bool)

(declare-fun tp!2174445 () Bool)

(declare-fun tp!2174442 () Bool)

(assert (=> b!7491968 (= e!4467509 (and tp!2174445 tp!2174442))))

(declare-fun b!7491966 () Bool)

(declare-fun tp!2174443 () Bool)

(declare-fun tp!2174446 () Bool)

(assert (=> b!7491966 (= e!4467509 (and tp!2174443 tp!2174446))))

(declare-fun b!7491965 () Bool)

(assert (=> b!7491965 (= e!4467509 tp_is_empty!49559)))

(assert (=> b!7491105 (= tp!2174321 e!4467509)))

(assert (= (and b!7491105 ((_ is ElementMatch!19635) (regOne!39783 rTail!78))) b!7491965))

(assert (= (and b!7491105 ((_ is Concat!28480) (regOne!39783 rTail!78))) b!7491966))

(assert (= (and b!7491105 ((_ is Star!19635) (regOne!39783 rTail!78))) b!7491967))

(assert (= (and b!7491105 ((_ is Union!19635) (regOne!39783 rTail!78))) b!7491968))

(declare-fun b!7491971 () Bool)

(declare-fun e!4467510 () Bool)

(declare-fun tp!2174449 () Bool)

(assert (=> b!7491971 (= e!4467510 tp!2174449)))

(declare-fun b!7491972 () Bool)

(declare-fun tp!2174450 () Bool)

(declare-fun tp!2174447 () Bool)

(assert (=> b!7491972 (= e!4467510 (and tp!2174450 tp!2174447))))

(declare-fun b!7491970 () Bool)

(declare-fun tp!2174448 () Bool)

(declare-fun tp!2174451 () Bool)

(assert (=> b!7491970 (= e!4467510 (and tp!2174448 tp!2174451))))

(declare-fun b!7491969 () Bool)

(assert (=> b!7491969 (= e!4467510 tp_is_empty!49559)))

(assert (=> b!7491105 (= tp!2174330 e!4467510)))

(assert (= (and b!7491105 ((_ is ElementMatch!19635) (regTwo!39783 rTail!78))) b!7491969))

(assert (= (and b!7491105 ((_ is Concat!28480) (regTwo!39783 rTail!78))) b!7491970))

(assert (= (and b!7491105 ((_ is Star!19635) (regTwo!39783 rTail!78))) b!7491971))

(assert (= (and b!7491105 ((_ is Union!19635) (regTwo!39783 rTail!78))) b!7491972))

(declare-fun b!7491975 () Bool)

(declare-fun e!4467511 () Bool)

(declare-fun tp!2174454 () Bool)

(assert (=> b!7491975 (= e!4467511 tp!2174454)))

(declare-fun b!7491976 () Bool)

(declare-fun tp!2174455 () Bool)

(declare-fun tp!2174452 () Bool)

(assert (=> b!7491976 (= e!4467511 (and tp!2174455 tp!2174452))))

(declare-fun b!7491974 () Bool)

(declare-fun tp!2174453 () Bool)

(declare-fun tp!2174456 () Bool)

(assert (=> b!7491974 (= e!4467511 (and tp!2174453 tp!2174456))))

(declare-fun b!7491973 () Bool)

(assert (=> b!7491973 (= e!4467511 tp_is_empty!49559)))

(assert (=> b!7491110 (= tp!2174327 e!4467511)))

(assert (= (and b!7491110 ((_ is ElementMatch!19635) (reg!19964 r1!5845))) b!7491973))

(assert (= (and b!7491110 ((_ is Concat!28480) (reg!19964 r1!5845))) b!7491974))

(assert (= (and b!7491110 ((_ is Star!19635) (reg!19964 r1!5845))) b!7491975))

(assert (= (and b!7491110 ((_ is Union!19635) (reg!19964 r1!5845))) b!7491976))

(declare-fun b!7491979 () Bool)

(declare-fun e!4467512 () Bool)

(declare-fun tp!2174459 () Bool)

(assert (=> b!7491979 (= e!4467512 tp!2174459)))

(declare-fun b!7491980 () Bool)

(declare-fun tp!2174460 () Bool)

(declare-fun tp!2174457 () Bool)

(assert (=> b!7491980 (= e!4467512 (and tp!2174460 tp!2174457))))

(declare-fun b!7491978 () Bool)

(declare-fun tp!2174458 () Bool)

(declare-fun tp!2174461 () Bool)

(assert (=> b!7491978 (= e!4467512 (and tp!2174458 tp!2174461))))

(declare-fun b!7491977 () Bool)

(assert (=> b!7491977 (= e!4467512 tp_is_empty!49559)))

(assert (=> b!7491100 (= tp!2174326 e!4467512)))

(assert (= (and b!7491100 ((_ is ElementMatch!19635) (regOne!39782 rTail!78))) b!7491977))

(assert (= (and b!7491100 ((_ is Concat!28480) (regOne!39782 rTail!78))) b!7491978))

(assert (= (and b!7491100 ((_ is Star!19635) (regOne!39782 rTail!78))) b!7491979))

(assert (= (and b!7491100 ((_ is Union!19635) (regOne!39782 rTail!78))) b!7491980))

(declare-fun b!7491983 () Bool)

(declare-fun e!4467513 () Bool)

(declare-fun tp!2174464 () Bool)

(assert (=> b!7491983 (= e!4467513 tp!2174464)))

(declare-fun b!7491984 () Bool)

(declare-fun tp!2174465 () Bool)

(declare-fun tp!2174462 () Bool)

(assert (=> b!7491984 (= e!4467513 (and tp!2174465 tp!2174462))))

(declare-fun b!7491982 () Bool)

(declare-fun tp!2174463 () Bool)

(declare-fun tp!2174466 () Bool)

(assert (=> b!7491982 (= e!4467513 (and tp!2174463 tp!2174466))))

(declare-fun b!7491981 () Bool)

(assert (=> b!7491981 (= e!4467513 tp_is_empty!49559)))

(assert (=> b!7491100 (= tp!2174332 e!4467513)))

(assert (= (and b!7491100 ((_ is ElementMatch!19635) (regTwo!39782 rTail!78))) b!7491981))

(assert (= (and b!7491100 ((_ is Concat!28480) (regTwo!39782 rTail!78))) b!7491982))

(assert (= (and b!7491100 ((_ is Star!19635) (regTwo!39782 rTail!78))) b!7491983))

(assert (= (and b!7491100 ((_ is Union!19635) (regTwo!39782 rTail!78))) b!7491984))

(declare-fun b!7491987 () Bool)

(declare-fun e!4467514 () Bool)

(declare-fun tp!2174469 () Bool)

(assert (=> b!7491987 (= e!4467514 tp!2174469)))

(declare-fun b!7491988 () Bool)

(declare-fun tp!2174470 () Bool)

(declare-fun tp!2174467 () Bool)

(assert (=> b!7491988 (= e!4467514 (and tp!2174470 tp!2174467))))

(declare-fun b!7491986 () Bool)

(declare-fun tp!2174468 () Bool)

(declare-fun tp!2174471 () Bool)

(assert (=> b!7491986 (= e!4467514 (and tp!2174468 tp!2174471))))

(declare-fun b!7491985 () Bool)

(assert (=> b!7491985 (= e!4467514 tp_is_empty!49559)))

(assert (=> b!7491101 (= tp!2174318 e!4467514)))

(assert (= (and b!7491101 ((_ is ElementMatch!19635) (reg!19964 rTail!78))) b!7491985))

(assert (= (and b!7491101 ((_ is Concat!28480) (reg!19964 rTail!78))) b!7491986))

(assert (= (and b!7491101 ((_ is Star!19635) (reg!19964 rTail!78))) b!7491987))

(assert (= (and b!7491101 ((_ is Union!19635) (reg!19964 rTail!78))) b!7491988))

(declare-fun b!7491991 () Bool)

(declare-fun e!4467515 () Bool)

(declare-fun tp!2174474 () Bool)

(assert (=> b!7491991 (= e!4467515 tp!2174474)))

(declare-fun b!7491992 () Bool)

(declare-fun tp!2174475 () Bool)

(declare-fun tp!2174472 () Bool)

(assert (=> b!7491992 (= e!4467515 (and tp!2174475 tp!2174472))))

(declare-fun b!7491990 () Bool)

(declare-fun tp!2174473 () Bool)

(declare-fun tp!2174476 () Bool)

(assert (=> b!7491990 (= e!4467515 (and tp!2174473 tp!2174476))))

(declare-fun b!7491989 () Bool)

(assert (=> b!7491989 (= e!4467515 tp_is_empty!49559)))

(assert (=> b!7491120 (= tp!2174325 e!4467515)))

(assert (= (and b!7491120 ((_ is ElementMatch!19635) (regOne!39783 r1!5845))) b!7491989))

(assert (= (and b!7491120 ((_ is Concat!28480) (regOne!39783 r1!5845))) b!7491990))

(assert (= (and b!7491120 ((_ is Star!19635) (regOne!39783 r1!5845))) b!7491991))

(assert (= (and b!7491120 ((_ is Union!19635) (regOne!39783 r1!5845))) b!7491992))

(declare-fun b!7491995 () Bool)

(declare-fun e!4467516 () Bool)

(declare-fun tp!2174479 () Bool)

(assert (=> b!7491995 (= e!4467516 tp!2174479)))

(declare-fun b!7491996 () Bool)

(declare-fun tp!2174480 () Bool)

(declare-fun tp!2174477 () Bool)

(assert (=> b!7491996 (= e!4467516 (and tp!2174480 tp!2174477))))

(declare-fun b!7491994 () Bool)

(declare-fun tp!2174478 () Bool)

(declare-fun tp!2174481 () Bool)

(assert (=> b!7491994 (= e!4467516 (and tp!2174478 tp!2174481))))

(declare-fun b!7491993 () Bool)

(assert (=> b!7491993 (= e!4467516 tp_is_empty!49559)))

(assert (=> b!7491120 (= tp!2174322 e!4467516)))

(assert (= (and b!7491120 ((_ is ElementMatch!19635) (regTwo!39783 r1!5845))) b!7491993))

(assert (= (and b!7491120 ((_ is Concat!28480) (regTwo!39783 r1!5845))) b!7491994))

(assert (= (and b!7491120 ((_ is Star!19635) (regTwo!39783 r1!5845))) b!7491995))

(assert (= (and b!7491120 ((_ is Union!19635) (regTwo!39783 r1!5845))) b!7491996))

(declare-fun b!7491999 () Bool)

(declare-fun e!4467517 () Bool)

(declare-fun tp!2174484 () Bool)

(assert (=> b!7491999 (= e!4467517 tp!2174484)))

(declare-fun b!7492000 () Bool)

(declare-fun tp!2174485 () Bool)

(declare-fun tp!2174482 () Bool)

(assert (=> b!7492000 (= e!4467517 (and tp!2174485 tp!2174482))))

(declare-fun b!7491998 () Bool)

(declare-fun tp!2174483 () Bool)

(declare-fun tp!2174486 () Bool)

(assert (=> b!7491998 (= e!4467517 (and tp!2174483 tp!2174486))))

(declare-fun b!7491997 () Bool)

(assert (=> b!7491997 (= e!4467517 tp_is_empty!49559)))

(assert (=> b!7491102 (= tp!2174329 e!4467517)))

(assert (= (and b!7491102 ((_ is ElementMatch!19635) (regOne!39782 r1!5845))) b!7491997))

(assert (= (and b!7491102 ((_ is Concat!28480) (regOne!39782 r1!5845))) b!7491998))

(assert (= (and b!7491102 ((_ is Star!19635) (regOne!39782 r1!5845))) b!7491999))

(assert (= (and b!7491102 ((_ is Union!19635) (regOne!39782 r1!5845))) b!7492000))

(declare-fun b!7492003 () Bool)

(declare-fun e!4467518 () Bool)

(declare-fun tp!2174489 () Bool)

(assert (=> b!7492003 (= e!4467518 tp!2174489)))

(declare-fun b!7492004 () Bool)

(declare-fun tp!2174490 () Bool)

(declare-fun tp!2174487 () Bool)

(assert (=> b!7492004 (= e!4467518 (and tp!2174490 tp!2174487))))

(declare-fun b!7492002 () Bool)

(declare-fun tp!2174488 () Bool)

(declare-fun tp!2174491 () Bool)

(assert (=> b!7492002 (= e!4467518 (and tp!2174488 tp!2174491))))

(declare-fun b!7492001 () Bool)

(assert (=> b!7492001 (= e!4467518 tp_is_empty!49559)))

(assert (=> b!7491102 (= tp!2174323 e!4467518)))

(assert (= (and b!7491102 ((_ is ElementMatch!19635) (regTwo!39782 r1!5845))) b!7492001))

(assert (= (and b!7491102 ((_ is Concat!28480) (regTwo!39782 r1!5845))) b!7492002))

(assert (= (and b!7491102 ((_ is Star!19635) (regTwo!39782 r1!5845))) b!7492003))

(assert (= (and b!7491102 ((_ is Union!19635) (regTwo!39782 r1!5845))) b!7492004))

(declare-fun b!7492009 () Bool)

(declare-fun e!4467521 () Bool)

(declare-fun tp!2174494 () Bool)

(assert (=> b!7492009 (= e!4467521 (and tp_is_empty!49559 tp!2174494))))

(assert (=> b!7491117 (= tp!2174319 e!4467521)))

(assert (= (and b!7491117 ((_ is Cons!72225) (t!386918 s!13591))) b!7492009))

(declare-fun b!7492012 () Bool)

(declare-fun e!4467522 () Bool)

(declare-fun tp!2174497 () Bool)

(assert (=> b!7492012 (= e!4467522 tp!2174497)))

(declare-fun b!7492013 () Bool)

(declare-fun tp!2174498 () Bool)

(declare-fun tp!2174495 () Bool)

(assert (=> b!7492013 (= e!4467522 (and tp!2174498 tp!2174495))))

(declare-fun b!7492011 () Bool)

(declare-fun tp!2174496 () Bool)

(declare-fun tp!2174499 () Bool)

(assert (=> b!7492011 (= e!4467522 (and tp!2174496 tp!2174499))))

(declare-fun b!7492010 () Bool)

(assert (=> b!7492010 (= e!4467522 tp_is_empty!49559)))

(assert (=> b!7491103 (= tp!2174328 e!4467522)))

(assert (= (and b!7491103 ((_ is ElementMatch!19635) (reg!19964 r2!5783))) b!7492010))

(assert (= (and b!7491103 ((_ is Concat!28480) (reg!19964 r2!5783))) b!7492011))

(assert (= (and b!7491103 ((_ is Star!19635) (reg!19964 r2!5783))) b!7492012))

(assert (= (and b!7491103 ((_ is Union!19635) (reg!19964 r2!5783))) b!7492013))

(declare-fun b!7492016 () Bool)

(declare-fun e!4467523 () Bool)

(declare-fun tp!2174502 () Bool)

(assert (=> b!7492016 (= e!4467523 tp!2174502)))

(declare-fun b!7492017 () Bool)

(declare-fun tp!2174503 () Bool)

(declare-fun tp!2174500 () Bool)

(assert (=> b!7492017 (= e!4467523 (and tp!2174503 tp!2174500))))

(declare-fun b!7492015 () Bool)

(declare-fun tp!2174501 () Bool)

(declare-fun tp!2174504 () Bool)

(assert (=> b!7492015 (= e!4467523 (and tp!2174501 tp!2174504))))

(declare-fun b!7492014 () Bool)

(assert (=> b!7492014 (= e!4467523 tp_is_empty!49559)))

(assert (=> b!7491109 (= tp!2174333 e!4467523)))

(assert (= (and b!7491109 ((_ is ElementMatch!19635) (regOne!39782 r2!5783))) b!7492014))

(assert (= (and b!7491109 ((_ is Concat!28480) (regOne!39782 r2!5783))) b!7492015))

(assert (= (and b!7491109 ((_ is Star!19635) (regOne!39782 r2!5783))) b!7492016))

(assert (= (and b!7491109 ((_ is Union!19635) (regOne!39782 r2!5783))) b!7492017))

(declare-fun b!7492020 () Bool)

(declare-fun e!4467524 () Bool)

(declare-fun tp!2174507 () Bool)

(assert (=> b!7492020 (= e!4467524 tp!2174507)))

(declare-fun b!7492021 () Bool)

(declare-fun tp!2174508 () Bool)

(declare-fun tp!2174505 () Bool)

(assert (=> b!7492021 (= e!4467524 (and tp!2174508 tp!2174505))))

(declare-fun b!7492019 () Bool)

(declare-fun tp!2174506 () Bool)

(declare-fun tp!2174509 () Bool)

(assert (=> b!7492019 (= e!4467524 (and tp!2174506 tp!2174509))))

(declare-fun b!7492018 () Bool)

(assert (=> b!7492018 (= e!4467524 tp_is_empty!49559)))

(assert (=> b!7491109 (= tp!2174324 e!4467524)))

(assert (= (and b!7491109 ((_ is ElementMatch!19635) (regTwo!39782 r2!5783))) b!7492018))

(assert (= (and b!7491109 ((_ is Concat!28480) (regTwo!39782 r2!5783))) b!7492019))

(assert (= (and b!7491109 ((_ is Star!19635) (regTwo!39782 r2!5783))) b!7492020))

(assert (= (and b!7491109 ((_ is Union!19635) (regTwo!39782 r2!5783))) b!7492021))

(check-sat (not bm!687723) (not d!2301349) (not bm!687746) (not b!7491991) (not bm!687762) (not b!7491853) (not b!7491936) (not b!7491810) (not b!7491938) (not b!7491776) (not b!7491588) (not b!7491841) (not b!7491890) (not d!2301397) (not b!7491827) (not b!7492002) (not b!7491287) (not b!7491446) (not b!7491886) (not b!7491962) (not b!7491839) (not b!7491967) (not b!7491964) (not b!7491873) (not d!2301307) (not b!7491983) (not bm!687748) (not bm!687684) (not bm!687763) (not b!7491889) (not d!2301363) (not b!7491966) (not b!7491978) (not bm!687724) (not bm!687756) (not b!7491912) (not d!2301385) (not d!2301381) (not b!7491782) (not b!7491968) (not bm!687757) (not d!2301259) (not bm!687760) (not b!7491838) (not b!7491982) (not b!7491804) tp_is_empty!49559 (not b!7491785) (not b!7492004) (not b!7492003) (not b!7491979) (not b!7491821) (not b!7491759) (not d!2301369) (not b!7491781) (not d!2301353) (not d!2301371) (not b!7491980) (not b!7491963) (not b!7491284) (not b!7491984) (not b!7491987) (not d!2301311) (not b!7491972) (not b!7491279) (not b!7492019) (not b!7491939) (not b!7492000) (not b!7492020) (not bm!687764) (not d!2301313) (not d!2301299) (not b!7491835) (not b!7491960) (not b!7491942) (not b!7491451) (not b!7492016) (not b!7491753) (not b!7491285) (not d!2301335) (not b!7491805) (not d!2301387) (not b!7491480) (not b!7491766) (not bm!687747) (not b!7491974) (not b!7491892) (not b!7491901) (not bm!687767) (not b!7491432) (not b!7491589) (not b!7491780) (not b!7491854) (not b!7491750) (not b!7491477) (not bm!687727) (not b!7491923) (not b!7491895) (not d!2301377) (not b!7491594) (not b!7491994) (not b!7491872) (not b!7491844) (not d!2301359) (not bm!687766) (not bm!687683) (not b!7491840) (not d!2301367) (not b!7491891) (not b!7491858) (not b!7491807) (not b!7491998) (not b!7491937) (not b!7491917) (not b!7491958) (not b!7491816) (not b!7491796) (not b!7491754) (not b!7491970) (not b!7491855) (not b!7491999) (not b!7491290) (not b!7491483) (not b!7491849) (not b!7491852) (not d!2301389) (not d!2301315) (not b!7492009) (not b!7492012) (not d!2301379) (not b!7491791) (not b!7491992) (not b!7491427) (not b!7491976) (not b!7491988) (not b!7491986) (not b!7491971) (not b!7491906) (not b!7491755) (not b!7491479) (not bm!687700) (not b!7491145) (not bm!687743) (not b!7491975) (not b!7491876) (not b!7492015) (not b!7491959) (not bm!687751) (not b!7491881) (not bm!687722) (not bm!687754) (not bm!687759) (not b!7491996) (not b!7491474) (not bm!687745) (not b!7491768) (not b!7491756) (not b!7491478) (not b!7492021) (not b!7491995) (not bm!687749) (not b!7492011) (not d!2301355) (not b!7491990) (not b!7491801) (not b!7491286) (not bm!687758) (not d!2301351) (not b!7491928) (not b!7491592) (not b!7491806) (not d!2301401) (not b!7491779) (not bm!687755) (not bm!687752) (not b!7491591) (not bm!687725) (not bm!687750) (not d!2301399) (not bm!687761) (not b!7492013) (not b!7491933) (not b!7492017) (not b!7491587) (not bm!687765))
(check-sat)
