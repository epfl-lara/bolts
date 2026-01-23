; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!290996 () Bool)

(assert start!290996)

(declare-fun b!3035094 () Bool)

(declare-fun e!1903235 () Bool)

(declare-fun tp!961420 () Bool)

(declare-fun tp!961418 () Bool)

(assert (=> b!3035094 (= e!1903235 (and tp!961420 tp!961418))))

(declare-fun b!3035095 () Bool)

(declare-fun e!1903239 () Bool)

(declare-fun e!1903238 () Bool)

(assert (=> b!3035095 (= e!1903239 e!1903238)))

(declare-fun res!1248578 () Bool)

(assert (=> b!3035095 (=> res!1248578 e!1903238)))

(declare-datatypes ((C!19060 0))(
  ( (C!19061 (val!11566 Int)) )
))
(declare-datatypes ((Regex!9437 0))(
  ( (ElementMatch!9437 (c!501761 C!19060)) (Concat!14758 (regOne!19386 Regex!9437) (regTwo!19386 Regex!9437)) (EmptyExpr!9437) (Star!9437 (reg!9766 Regex!9437)) (EmptyLang!9437) (Union!9437 (regOne!19387 Regex!9437) (regTwo!19387 Regex!9437)) )
))
(declare-fun lt!1046614 () Regex!9437)

(declare-fun validRegex!4170 (Regex!9437) Bool)

(assert (=> b!3035095 (= res!1248578 (not (validRegex!4170 lt!1046614)))))

(declare-fun lt!1046616 () Regex!9437)

(declare-datatypes ((List!35302 0))(
  ( (Nil!35178) (Cons!35178 (h!40598 C!19060) (t!234367 List!35302)) )
))
(declare-fun s!11993 () List!35302)

(declare-fun matchR!4319 (Regex!9437 List!35302) Bool)

(assert (=> b!3035095 (matchR!4319 (Union!9437 lt!1046614 lt!1046616) s!11993)))

(declare-datatypes ((Unit!49297 0))(
  ( (Unit!49298) )
))
(declare-fun lt!1046615 () Unit!49297)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!78 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> b!3035095 (= lt!1046615 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!78 lt!1046614 lt!1046616 s!11993))))

(declare-fun r!17423 () Regex!9437)

(declare-fun simplify!404 (Regex!9437) Regex!9437)

(assert (=> b!3035095 (= lt!1046616 (simplify!404 (regOne!19387 r!17423)))))

(declare-fun b!3035096 () Bool)

(declare-fun tp_is_empty!16437 () Bool)

(assert (=> b!3035096 (= e!1903235 tp_is_empty!16437)))

(declare-fun b!3035097 () Bool)

(assert (=> b!3035097 (= e!1903238 (matchR!4319 (simplify!404 r!17423) s!11993))))

(assert (=> b!3035097 (matchR!4319 (Union!9437 lt!1046616 lt!1046614) s!11993)))

(declare-fun lt!1046612 () Unit!49297)

(declare-fun lemmaReversedUnionAcceptsSameString!24 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> b!3035097 (= lt!1046612 (lemmaReversedUnionAcceptsSameString!24 lt!1046614 lt!1046616 s!11993))))

(declare-fun b!3035098 () Bool)

(declare-fun e!1903240 () Bool)

(declare-fun tp!961419 () Bool)

(assert (=> b!3035098 (= e!1903240 (and tp_is_empty!16437 tp!961419))))

(declare-fun b!3035099 () Bool)

(declare-fun tp!961421 () Bool)

(declare-fun tp!961417 () Bool)

(assert (=> b!3035099 (= e!1903235 (and tp!961421 tp!961417))))

(declare-fun b!3035100 () Bool)

(declare-fun tp!961416 () Bool)

(assert (=> b!3035100 (= e!1903235 tp!961416)))

(declare-fun b!3035101 () Bool)

(declare-fun e!1903236 () Bool)

(declare-fun e!1903241 () Bool)

(assert (=> b!3035101 (= e!1903236 e!1903241)))

(declare-fun res!1248572 () Bool)

(assert (=> b!3035101 (=> res!1248572 e!1903241)))

(declare-fun lt!1046618 () Bool)

(assert (=> b!3035101 (= res!1248572 lt!1046618)))

(declare-fun e!1903237 () Bool)

(assert (=> b!3035101 e!1903237))

(declare-fun res!1248573 () Bool)

(assert (=> b!3035101 (=> res!1248573 e!1903237)))

(assert (=> b!3035101 (= res!1248573 lt!1046618)))

(assert (=> b!3035101 (= lt!1046618 (matchR!4319 (regOne!19387 r!17423) s!11993))))

(declare-fun lt!1046620 () Unit!49297)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!314 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> b!3035101 (= lt!1046620 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!314 (regOne!19387 r!17423) (regTwo!19387 r!17423) s!11993))))

(declare-fun res!1248577 () Bool)

(declare-fun e!1903234 () Bool)

(assert (=> start!290996 (=> (not res!1248577) (not e!1903234))))

(assert (=> start!290996 (= res!1248577 (validRegex!4170 r!17423))))

(assert (=> start!290996 e!1903234))

(assert (=> start!290996 e!1903235))

(assert (=> start!290996 e!1903240))

(declare-fun b!3035102 () Bool)

(assert (=> b!3035102 (= e!1903241 e!1903239)))

(declare-fun res!1248575 () Bool)

(assert (=> b!3035102 (=> res!1248575 e!1903239)))

(declare-fun lt!1046617 () Bool)

(assert (=> b!3035102 (= res!1248575 (not lt!1046617))))

(declare-fun lt!1046613 () Bool)

(assert (=> b!3035102 (= lt!1046613 lt!1046617)))

(assert (=> b!3035102 (= lt!1046617 (matchR!4319 lt!1046614 s!11993))))

(assert (=> b!3035102 (= lt!1046613 (matchR!4319 (regTwo!19387 r!17423) s!11993))))

(assert (=> b!3035102 (= lt!1046614 (simplify!404 (regTwo!19387 r!17423)))))

(declare-fun lt!1046621 () Unit!49297)

(declare-fun lemmaSimplifySound!252 (Regex!9437 List!35302) Unit!49297)

(assert (=> b!3035102 (= lt!1046621 (lemmaSimplifySound!252 (regTwo!19387 r!17423) s!11993))))

(declare-fun b!3035103 () Bool)

(assert (=> b!3035103 (= e!1903237 (matchR!4319 (regTwo!19387 r!17423) s!11993))))

(declare-fun b!3035104 () Bool)

(assert (=> b!3035104 (= e!1903234 (not e!1903236))))

(declare-fun res!1248574 () Bool)

(assert (=> b!3035104 (=> res!1248574 e!1903236)))

(declare-fun lt!1046622 () Bool)

(get-info :version)

(assert (=> b!3035104 (= res!1248574 (or (not lt!1046622) ((_ is Concat!14758) r!17423) (not ((_ is Union!9437) r!17423))))))

(declare-fun matchRSpec!1574 (Regex!9437 List!35302) Bool)

(assert (=> b!3035104 (= lt!1046622 (matchRSpec!1574 r!17423 s!11993))))

(assert (=> b!3035104 (= lt!1046622 (matchR!4319 r!17423 s!11993))))

(declare-fun lt!1046619 () Unit!49297)

(declare-fun mainMatchTheorem!1574 (Regex!9437 List!35302) Unit!49297)

(assert (=> b!3035104 (= lt!1046619 (mainMatchTheorem!1574 r!17423 s!11993))))

(declare-fun b!3035105 () Bool)

(declare-fun res!1248576 () Bool)

(assert (=> b!3035105 (=> res!1248576 e!1903238)))

(assert (=> b!3035105 (= res!1248576 (not (validRegex!4170 lt!1046616)))))

(assert (= (and start!290996 res!1248577) b!3035104))

(assert (= (and b!3035104 (not res!1248574)) b!3035101))

(assert (= (and b!3035101 (not res!1248573)) b!3035103))

(assert (= (and b!3035101 (not res!1248572)) b!3035102))

(assert (= (and b!3035102 (not res!1248575)) b!3035095))

(assert (= (and b!3035095 (not res!1248578)) b!3035105))

(assert (= (and b!3035105 (not res!1248576)) b!3035097))

(assert (= (and start!290996 ((_ is ElementMatch!9437) r!17423)) b!3035096))

(assert (= (and start!290996 ((_ is Concat!14758) r!17423)) b!3035099))

(assert (= (and start!290996 ((_ is Star!9437) r!17423)) b!3035100))

(assert (= (and start!290996 ((_ is Union!9437) r!17423)) b!3035094))

(assert (= (and start!290996 ((_ is Cons!35178) s!11993)) b!3035098))

(declare-fun m!3369547 () Bool)

(assert (=> b!3035101 m!3369547))

(declare-fun m!3369549 () Bool)

(assert (=> b!3035101 m!3369549))

(declare-fun m!3369551 () Bool)

(assert (=> b!3035105 m!3369551))

(declare-fun m!3369553 () Bool)

(assert (=> b!3035103 m!3369553))

(declare-fun m!3369555 () Bool)

(assert (=> b!3035102 m!3369555))

(assert (=> b!3035102 m!3369553))

(declare-fun m!3369557 () Bool)

(assert (=> b!3035102 m!3369557))

(declare-fun m!3369559 () Bool)

(assert (=> b!3035102 m!3369559))

(declare-fun m!3369561 () Bool)

(assert (=> b!3035095 m!3369561))

(declare-fun m!3369563 () Bool)

(assert (=> b!3035095 m!3369563))

(declare-fun m!3369565 () Bool)

(assert (=> b!3035095 m!3369565))

(declare-fun m!3369567 () Bool)

(assert (=> b!3035095 m!3369567))

(declare-fun m!3369569 () Bool)

(assert (=> start!290996 m!3369569))

(declare-fun m!3369571 () Bool)

(assert (=> b!3035097 m!3369571))

(assert (=> b!3035097 m!3369571))

(declare-fun m!3369573 () Bool)

(assert (=> b!3035097 m!3369573))

(declare-fun m!3369575 () Bool)

(assert (=> b!3035097 m!3369575))

(declare-fun m!3369577 () Bool)

(assert (=> b!3035097 m!3369577))

(declare-fun m!3369579 () Bool)

(assert (=> b!3035104 m!3369579))

(declare-fun m!3369581 () Bool)

(assert (=> b!3035104 m!3369581))

(declare-fun m!3369583 () Bool)

(assert (=> b!3035104 m!3369583))

(check-sat (not start!290996) tp_is_empty!16437 (not b!3035103) (not b!3035100) (not b!3035097) (not b!3035095) (not b!3035098) (not b!3035099) (not b!3035102) (not b!3035101) (not b!3035104) (not b!3035105) (not b!3035094))
(check-sat)
(get-model)

(declare-fun b!3035162 () Bool)

(declare-fun e!1903274 () Bool)

(declare-fun e!1903270 () Bool)

(assert (=> b!3035162 (= e!1903274 e!1903270)))

(declare-fun res!1248613 () Bool)

(assert (=> b!3035162 (=> (not res!1248613) (not e!1903270))))

(declare-fun lt!1046627 () Bool)

(assert (=> b!3035162 (= res!1248613 (not lt!1046627))))

(declare-fun b!3035163 () Bool)

(declare-fun e!1903272 () Bool)

(declare-fun derivativeStep!2684 (Regex!9437 C!19060) Regex!9437)

(declare-fun head!6743 (List!35302) C!19060)

(declare-fun tail!4969 (List!35302) List!35302)

(assert (=> b!3035163 (= e!1903272 (matchR!4319 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035164 () Bool)

(declare-fun res!1248618 () Bool)

(assert (=> b!3035164 (=> res!1248618 e!1903274)))

(declare-fun e!1903273 () Bool)

(assert (=> b!3035164 (= res!1248618 e!1903273)))

(declare-fun res!1248615 () Bool)

(assert (=> b!3035164 (=> (not res!1248615) (not e!1903273))))

(assert (=> b!3035164 (= res!1248615 lt!1046627)))

(declare-fun b!3035165 () Bool)

(declare-fun e!1903276 () Bool)

(declare-fun e!1903275 () Bool)

(assert (=> b!3035165 (= e!1903276 e!1903275)))

(declare-fun c!501776 () Bool)

(assert (=> b!3035165 (= c!501776 ((_ is EmptyLang!9437) (regOne!19387 r!17423)))))

(declare-fun b!3035166 () Bool)

(assert (=> b!3035166 (= e!1903273 (= (head!6743 s!11993) (c!501761 (regOne!19387 r!17423))))))

(declare-fun d!851582 () Bool)

(assert (=> d!851582 e!1903276))

(declare-fun c!501774 () Bool)

(assert (=> d!851582 (= c!501774 ((_ is EmptyExpr!9437) (regOne!19387 r!17423)))))

(assert (=> d!851582 (= lt!1046627 e!1903272)))

(declare-fun c!501775 () Bool)

(declare-fun isEmpty!19478 (List!35302) Bool)

(assert (=> d!851582 (= c!501775 (isEmpty!19478 s!11993))))

(assert (=> d!851582 (validRegex!4170 (regOne!19387 r!17423))))

(assert (=> d!851582 (= (matchR!4319 (regOne!19387 r!17423) s!11993) lt!1046627)))

(declare-fun bm!207116 () Bool)

(declare-fun call!207121 () Bool)

(assert (=> bm!207116 (= call!207121 (isEmpty!19478 s!11993))))

(declare-fun b!3035167 () Bool)

(assert (=> b!3035167 (= e!1903276 (= lt!1046627 call!207121))))

(declare-fun b!3035168 () Bool)

(declare-fun nullable!3087 (Regex!9437) Bool)

(assert (=> b!3035168 (= e!1903272 (nullable!3087 (regOne!19387 r!17423)))))

(declare-fun b!3035169 () Bool)

(declare-fun res!1248617 () Bool)

(assert (=> b!3035169 (=> (not res!1248617) (not e!1903273))))

(assert (=> b!3035169 (= res!1248617 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035170 () Bool)

(declare-fun e!1903271 () Bool)

(assert (=> b!3035170 (= e!1903270 e!1903271)))

(declare-fun res!1248614 () Bool)

(assert (=> b!3035170 (=> res!1248614 e!1903271)))

(assert (=> b!3035170 (= res!1248614 call!207121)))

(declare-fun b!3035171 () Bool)

(declare-fun res!1248611 () Bool)

(assert (=> b!3035171 (=> (not res!1248611) (not e!1903273))))

(assert (=> b!3035171 (= res!1248611 (not call!207121))))

(declare-fun b!3035172 () Bool)

(declare-fun res!1248612 () Bool)

(assert (=> b!3035172 (=> res!1248612 e!1903274)))

(assert (=> b!3035172 (= res!1248612 (not ((_ is ElementMatch!9437) (regOne!19387 r!17423))))))

(assert (=> b!3035172 (= e!1903275 e!1903274)))

(declare-fun b!3035173 () Bool)

(declare-fun res!1248616 () Bool)

(assert (=> b!3035173 (=> res!1248616 e!1903271)))

(assert (=> b!3035173 (= res!1248616 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035174 () Bool)

(assert (=> b!3035174 (= e!1903271 (not (= (head!6743 s!11993) (c!501761 (regOne!19387 r!17423)))))))

(declare-fun b!3035175 () Bool)

(assert (=> b!3035175 (= e!1903275 (not lt!1046627))))

(assert (= (and d!851582 c!501775) b!3035168))

(assert (= (and d!851582 (not c!501775)) b!3035163))

(assert (= (and d!851582 c!501774) b!3035167))

(assert (= (and d!851582 (not c!501774)) b!3035165))

(assert (= (and b!3035165 c!501776) b!3035175))

(assert (= (and b!3035165 (not c!501776)) b!3035172))

(assert (= (and b!3035172 (not res!1248612)) b!3035164))

(assert (= (and b!3035164 res!1248615) b!3035171))

(assert (= (and b!3035171 res!1248611) b!3035169))

(assert (= (and b!3035169 res!1248617) b!3035166))

(assert (= (and b!3035164 (not res!1248618)) b!3035162))

(assert (= (and b!3035162 res!1248613) b!3035170))

(assert (= (and b!3035170 (not res!1248614)) b!3035173))

(assert (= (and b!3035173 (not res!1248616)) b!3035174))

(assert (= (or b!3035167 b!3035170 b!3035171) bm!207116))

(declare-fun m!3369585 () Bool)

(assert (=> b!3035173 m!3369585))

(assert (=> b!3035173 m!3369585))

(declare-fun m!3369587 () Bool)

(assert (=> b!3035173 m!3369587))

(declare-fun m!3369589 () Bool)

(assert (=> b!3035168 m!3369589))

(declare-fun m!3369591 () Bool)

(assert (=> bm!207116 m!3369591))

(declare-fun m!3369593 () Bool)

(assert (=> b!3035166 m!3369593))

(assert (=> b!3035163 m!3369593))

(assert (=> b!3035163 m!3369593))

(declare-fun m!3369595 () Bool)

(assert (=> b!3035163 m!3369595))

(assert (=> b!3035163 m!3369585))

(assert (=> b!3035163 m!3369595))

(assert (=> b!3035163 m!3369585))

(declare-fun m!3369597 () Bool)

(assert (=> b!3035163 m!3369597))

(assert (=> b!3035169 m!3369585))

(assert (=> b!3035169 m!3369585))

(assert (=> b!3035169 m!3369587))

(assert (=> b!3035174 m!3369593))

(assert (=> d!851582 m!3369591))

(declare-fun m!3369599 () Bool)

(assert (=> d!851582 m!3369599))

(assert (=> b!3035101 d!851582))

(declare-fun d!851586 () Bool)

(declare-fun e!1903288 () Bool)

(assert (=> d!851586 e!1903288))

(declare-fun res!1248631 () Bool)

(assert (=> d!851586 (=> res!1248631 e!1903288)))

(assert (=> d!851586 (= res!1248631 (matchR!4319 (regOne!19387 r!17423) s!11993))))

(declare-fun lt!1046631 () Unit!49297)

(declare-fun choose!18004 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> d!851586 (= lt!1046631 (choose!18004 (regOne!19387 r!17423) (regTwo!19387 r!17423) s!11993))))

(declare-fun e!1903289 () Bool)

(assert (=> d!851586 e!1903289))

(declare-fun res!1248632 () Bool)

(assert (=> d!851586 (=> (not res!1248632) (not e!1903289))))

(assert (=> d!851586 (= res!1248632 (validRegex!4170 (regOne!19387 r!17423)))))

(assert (=> d!851586 (= (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!314 (regOne!19387 r!17423) (regTwo!19387 r!17423) s!11993) lt!1046631)))

(declare-fun b!3035194 () Bool)

(assert (=> b!3035194 (= e!1903289 (validRegex!4170 (regTwo!19387 r!17423)))))

(declare-fun b!3035195 () Bool)

(assert (=> b!3035195 (= e!1903288 (matchR!4319 (regTwo!19387 r!17423) s!11993))))

(assert (= (and d!851586 res!1248632) b!3035194))

(assert (= (and d!851586 (not res!1248631)) b!3035195))

(assert (=> d!851586 m!3369547))

(declare-fun m!3369617 () Bool)

(assert (=> d!851586 m!3369617))

(assert (=> d!851586 m!3369599))

(declare-fun m!3369619 () Bool)

(assert (=> b!3035194 m!3369619))

(assert (=> b!3035195 m!3369553))

(assert (=> b!3035101 d!851586))

(declare-fun b!3035196 () Bool)

(declare-fun e!1903294 () Bool)

(declare-fun e!1903290 () Bool)

(assert (=> b!3035196 (= e!1903294 e!1903290)))

(declare-fun res!1248635 () Bool)

(assert (=> b!3035196 (=> (not res!1248635) (not e!1903290))))

(declare-fun lt!1046632 () Bool)

(assert (=> b!3035196 (= res!1248635 (not lt!1046632))))

(declare-fun b!3035197 () Bool)

(declare-fun e!1903292 () Bool)

(assert (=> b!3035197 (= e!1903292 (matchR!4319 (derivativeStep!2684 lt!1046614 (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035198 () Bool)

(declare-fun res!1248640 () Bool)

(assert (=> b!3035198 (=> res!1248640 e!1903294)))

(declare-fun e!1903293 () Bool)

(assert (=> b!3035198 (= res!1248640 e!1903293)))

(declare-fun res!1248637 () Bool)

(assert (=> b!3035198 (=> (not res!1248637) (not e!1903293))))

(assert (=> b!3035198 (= res!1248637 lt!1046632)))

(declare-fun b!3035199 () Bool)

(declare-fun e!1903296 () Bool)

(declare-fun e!1903295 () Bool)

(assert (=> b!3035199 (= e!1903296 e!1903295)))

(declare-fun c!501782 () Bool)

(assert (=> b!3035199 (= c!501782 ((_ is EmptyLang!9437) lt!1046614))))

(declare-fun b!3035200 () Bool)

(assert (=> b!3035200 (= e!1903293 (= (head!6743 s!11993) (c!501761 lt!1046614)))))

(declare-fun d!851590 () Bool)

(assert (=> d!851590 e!1903296))

(declare-fun c!501780 () Bool)

(assert (=> d!851590 (= c!501780 ((_ is EmptyExpr!9437) lt!1046614))))

(assert (=> d!851590 (= lt!1046632 e!1903292)))

(declare-fun c!501781 () Bool)

(assert (=> d!851590 (= c!501781 (isEmpty!19478 s!11993))))

(assert (=> d!851590 (validRegex!4170 lt!1046614)))

(assert (=> d!851590 (= (matchR!4319 lt!1046614 s!11993) lt!1046632)))

(declare-fun bm!207118 () Bool)

(declare-fun call!207123 () Bool)

(assert (=> bm!207118 (= call!207123 (isEmpty!19478 s!11993))))

(declare-fun b!3035201 () Bool)

(assert (=> b!3035201 (= e!1903296 (= lt!1046632 call!207123))))

(declare-fun b!3035202 () Bool)

(assert (=> b!3035202 (= e!1903292 (nullable!3087 lt!1046614))))

(declare-fun b!3035203 () Bool)

(declare-fun res!1248639 () Bool)

(assert (=> b!3035203 (=> (not res!1248639) (not e!1903293))))

(assert (=> b!3035203 (= res!1248639 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035204 () Bool)

(declare-fun e!1903291 () Bool)

(assert (=> b!3035204 (= e!1903290 e!1903291)))

(declare-fun res!1248636 () Bool)

(assert (=> b!3035204 (=> res!1248636 e!1903291)))

(assert (=> b!3035204 (= res!1248636 call!207123)))

(declare-fun b!3035205 () Bool)

(declare-fun res!1248633 () Bool)

(assert (=> b!3035205 (=> (not res!1248633) (not e!1903293))))

(assert (=> b!3035205 (= res!1248633 (not call!207123))))

(declare-fun b!3035206 () Bool)

(declare-fun res!1248634 () Bool)

(assert (=> b!3035206 (=> res!1248634 e!1903294)))

(assert (=> b!3035206 (= res!1248634 (not ((_ is ElementMatch!9437) lt!1046614)))))

(assert (=> b!3035206 (= e!1903295 e!1903294)))

(declare-fun b!3035207 () Bool)

(declare-fun res!1248638 () Bool)

(assert (=> b!3035207 (=> res!1248638 e!1903291)))

(assert (=> b!3035207 (= res!1248638 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035208 () Bool)

(assert (=> b!3035208 (= e!1903291 (not (= (head!6743 s!11993) (c!501761 lt!1046614))))))

(declare-fun b!3035209 () Bool)

(assert (=> b!3035209 (= e!1903295 (not lt!1046632))))

(assert (= (and d!851590 c!501781) b!3035202))

(assert (= (and d!851590 (not c!501781)) b!3035197))

(assert (= (and d!851590 c!501780) b!3035201))

(assert (= (and d!851590 (not c!501780)) b!3035199))

(assert (= (and b!3035199 c!501782) b!3035209))

(assert (= (and b!3035199 (not c!501782)) b!3035206))

(assert (= (and b!3035206 (not res!1248634)) b!3035198))

(assert (= (and b!3035198 res!1248637) b!3035205))

(assert (= (and b!3035205 res!1248633) b!3035203))

(assert (= (and b!3035203 res!1248639) b!3035200))

(assert (= (and b!3035198 (not res!1248640)) b!3035196))

(assert (= (and b!3035196 res!1248635) b!3035204))

(assert (= (and b!3035204 (not res!1248636)) b!3035207))

(assert (= (and b!3035207 (not res!1248638)) b!3035208))

(assert (= (or b!3035201 b!3035204 b!3035205) bm!207118))

(assert (=> b!3035207 m!3369585))

(assert (=> b!3035207 m!3369585))

(assert (=> b!3035207 m!3369587))

(declare-fun m!3369621 () Bool)

(assert (=> b!3035202 m!3369621))

(assert (=> bm!207118 m!3369591))

(assert (=> b!3035200 m!3369593))

(assert (=> b!3035197 m!3369593))

(assert (=> b!3035197 m!3369593))

(declare-fun m!3369623 () Bool)

(assert (=> b!3035197 m!3369623))

(assert (=> b!3035197 m!3369585))

(assert (=> b!3035197 m!3369623))

(assert (=> b!3035197 m!3369585))

(declare-fun m!3369625 () Bool)

(assert (=> b!3035197 m!3369625))

(assert (=> b!3035203 m!3369585))

(assert (=> b!3035203 m!3369585))

(assert (=> b!3035203 m!3369587))

(assert (=> b!3035208 m!3369593))

(assert (=> d!851590 m!3369591))

(assert (=> d!851590 m!3369561))

(assert (=> b!3035102 d!851590))

(declare-fun b!3035210 () Bool)

(declare-fun e!1903301 () Bool)

(declare-fun e!1903297 () Bool)

(assert (=> b!3035210 (= e!1903301 e!1903297)))

(declare-fun res!1248643 () Bool)

(assert (=> b!3035210 (=> (not res!1248643) (not e!1903297))))

(declare-fun lt!1046633 () Bool)

(assert (=> b!3035210 (= res!1248643 (not lt!1046633))))

(declare-fun b!3035211 () Bool)

(declare-fun e!1903299 () Bool)

(assert (=> b!3035211 (= e!1903299 (matchR!4319 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035212 () Bool)

(declare-fun res!1248648 () Bool)

(assert (=> b!3035212 (=> res!1248648 e!1903301)))

(declare-fun e!1903300 () Bool)

(assert (=> b!3035212 (= res!1248648 e!1903300)))

(declare-fun res!1248645 () Bool)

(assert (=> b!3035212 (=> (not res!1248645) (not e!1903300))))

(assert (=> b!3035212 (= res!1248645 lt!1046633)))

(declare-fun b!3035213 () Bool)

(declare-fun e!1903303 () Bool)

(declare-fun e!1903302 () Bool)

(assert (=> b!3035213 (= e!1903303 e!1903302)))

(declare-fun c!501785 () Bool)

(assert (=> b!3035213 (= c!501785 ((_ is EmptyLang!9437) (regTwo!19387 r!17423)))))

(declare-fun b!3035214 () Bool)

(assert (=> b!3035214 (= e!1903300 (= (head!6743 s!11993) (c!501761 (regTwo!19387 r!17423))))))

(declare-fun d!851592 () Bool)

(assert (=> d!851592 e!1903303))

(declare-fun c!501783 () Bool)

(assert (=> d!851592 (= c!501783 ((_ is EmptyExpr!9437) (regTwo!19387 r!17423)))))

(assert (=> d!851592 (= lt!1046633 e!1903299)))

(declare-fun c!501784 () Bool)

(assert (=> d!851592 (= c!501784 (isEmpty!19478 s!11993))))

(assert (=> d!851592 (validRegex!4170 (regTwo!19387 r!17423))))

(assert (=> d!851592 (= (matchR!4319 (regTwo!19387 r!17423) s!11993) lt!1046633)))

(declare-fun bm!207119 () Bool)

(declare-fun call!207124 () Bool)

(assert (=> bm!207119 (= call!207124 (isEmpty!19478 s!11993))))

(declare-fun b!3035215 () Bool)

(assert (=> b!3035215 (= e!1903303 (= lt!1046633 call!207124))))

(declare-fun b!3035216 () Bool)

(assert (=> b!3035216 (= e!1903299 (nullable!3087 (regTwo!19387 r!17423)))))

(declare-fun b!3035217 () Bool)

(declare-fun res!1248647 () Bool)

(assert (=> b!3035217 (=> (not res!1248647) (not e!1903300))))

(assert (=> b!3035217 (= res!1248647 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035218 () Bool)

(declare-fun e!1903298 () Bool)

(assert (=> b!3035218 (= e!1903297 e!1903298)))

(declare-fun res!1248644 () Bool)

(assert (=> b!3035218 (=> res!1248644 e!1903298)))

(assert (=> b!3035218 (= res!1248644 call!207124)))

(declare-fun b!3035219 () Bool)

(declare-fun res!1248641 () Bool)

(assert (=> b!3035219 (=> (not res!1248641) (not e!1903300))))

(assert (=> b!3035219 (= res!1248641 (not call!207124))))

(declare-fun b!3035220 () Bool)

(declare-fun res!1248642 () Bool)

(assert (=> b!3035220 (=> res!1248642 e!1903301)))

(assert (=> b!3035220 (= res!1248642 (not ((_ is ElementMatch!9437) (regTwo!19387 r!17423))))))

(assert (=> b!3035220 (= e!1903302 e!1903301)))

(declare-fun b!3035221 () Bool)

(declare-fun res!1248646 () Bool)

(assert (=> b!3035221 (=> res!1248646 e!1903298)))

(assert (=> b!3035221 (= res!1248646 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035222 () Bool)

(assert (=> b!3035222 (= e!1903298 (not (= (head!6743 s!11993) (c!501761 (regTwo!19387 r!17423)))))))

(declare-fun b!3035223 () Bool)

(assert (=> b!3035223 (= e!1903302 (not lt!1046633))))

(assert (= (and d!851592 c!501784) b!3035216))

(assert (= (and d!851592 (not c!501784)) b!3035211))

(assert (= (and d!851592 c!501783) b!3035215))

(assert (= (and d!851592 (not c!501783)) b!3035213))

(assert (= (and b!3035213 c!501785) b!3035223))

(assert (= (and b!3035213 (not c!501785)) b!3035220))

(assert (= (and b!3035220 (not res!1248642)) b!3035212))

(assert (= (and b!3035212 res!1248645) b!3035219))

(assert (= (and b!3035219 res!1248641) b!3035217))

(assert (= (and b!3035217 res!1248647) b!3035214))

(assert (= (and b!3035212 (not res!1248648)) b!3035210))

(assert (= (and b!3035210 res!1248643) b!3035218))

(assert (= (and b!3035218 (not res!1248644)) b!3035221))

(assert (= (and b!3035221 (not res!1248646)) b!3035222))

(assert (= (or b!3035215 b!3035218 b!3035219) bm!207119))

(assert (=> b!3035221 m!3369585))

(assert (=> b!3035221 m!3369585))

(assert (=> b!3035221 m!3369587))

(declare-fun m!3369627 () Bool)

(assert (=> b!3035216 m!3369627))

(assert (=> bm!207119 m!3369591))

(assert (=> b!3035214 m!3369593))

(assert (=> b!3035211 m!3369593))

(assert (=> b!3035211 m!3369593))

(declare-fun m!3369629 () Bool)

(assert (=> b!3035211 m!3369629))

(assert (=> b!3035211 m!3369585))

(assert (=> b!3035211 m!3369629))

(assert (=> b!3035211 m!3369585))

(declare-fun m!3369631 () Bool)

(assert (=> b!3035211 m!3369631))

(assert (=> b!3035217 m!3369585))

(assert (=> b!3035217 m!3369585))

(assert (=> b!3035217 m!3369587))

(assert (=> b!3035222 m!3369593))

(assert (=> d!851592 m!3369591))

(assert (=> d!851592 m!3369619))

(assert (=> b!3035102 d!851592))

(declare-fun b!3035365 () Bool)

(declare-fun e!1903394 () Regex!9437)

(declare-fun e!1903388 () Regex!9437)

(assert (=> b!3035365 (= e!1903394 e!1903388)))

(declare-fun lt!1046663 () Regex!9437)

(declare-fun call!207166 () Regex!9437)

(assert (=> b!3035365 (= lt!1046663 call!207166)))

(declare-fun lt!1046662 () Regex!9437)

(declare-fun call!207169 () Regex!9437)

(assert (=> b!3035365 (= lt!1046662 call!207169)))

(declare-fun c!501848 () Bool)

(declare-fun call!207167 () Bool)

(assert (=> b!3035365 (= c!501848 call!207167)))

(declare-fun b!3035366 () Bool)

(declare-fun e!1903397 () Regex!9437)

(declare-fun lt!1046664 () Regex!9437)

(declare-fun lt!1046660 () Regex!9437)

(assert (=> b!3035366 (= e!1903397 (Concat!14758 lt!1046664 lt!1046660))))

(declare-fun b!3035367 () Bool)

(declare-fun e!1903401 () Regex!9437)

(assert (=> b!3035367 (= e!1903401 EmptyLang!9437)))

(declare-fun d!851594 () Bool)

(declare-fun e!1903392 () Bool)

(assert (=> d!851594 e!1903392))

(declare-fun res!1248684 () Bool)

(assert (=> d!851594 (=> (not res!1248684) (not e!1903392))))

(declare-fun lt!1046659 () Regex!9437)

(assert (=> d!851594 (= res!1248684 (validRegex!4170 lt!1046659))))

(declare-fun e!1903399 () Regex!9437)

(assert (=> d!851594 (= lt!1046659 e!1903399)))

(declare-fun c!501839 () Bool)

(assert (=> d!851594 (= c!501839 ((_ is EmptyLang!9437) (regTwo!19387 r!17423)))))

(assert (=> d!851594 (validRegex!4170 (regTwo!19387 r!17423))))

(assert (=> d!851594 (= (simplify!404 (regTwo!19387 r!17423)) lt!1046659)))

(declare-fun b!3035368 () Bool)

(assert (=> b!3035368 (= e!1903397 lt!1046664)))

(declare-fun b!3035369 () Bool)

(declare-fun e!1903400 () Regex!9437)

(assert (=> b!3035369 (= e!1903400 e!1903397)))

(declare-fun c!501841 () Bool)

(declare-fun call!207164 () Bool)

(assert (=> b!3035369 (= c!501841 call!207164)))

(declare-fun b!3035370 () Bool)

(assert (=> b!3035370 (= e!1903399 EmptyLang!9437)))

(declare-fun b!3035371 () Bool)

(declare-fun e!1903391 () Regex!9437)

(assert (=> b!3035371 (= e!1903391 EmptyExpr!9437)))

(declare-fun b!3035372 () Bool)

(assert (=> b!3035372 (= e!1903400 lt!1046660)))

(declare-fun bm!207158 () Bool)

(declare-fun c!501843 () Bool)

(declare-fun isEmptyLang!502 (Regex!9437) Bool)

(assert (=> bm!207158 (= call!207167 (isEmptyLang!502 (ite c!501843 lt!1046663 lt!1046660)))))

(declare-fun b!3035373 () Bool)

(assert (=> b!3035373 (= e!1903392 (= (nullable!3087 lt!1046659) (nullable!3087 (regTwo!19387 r!17423))))))

(declare-fun bm!207159 () Bool)

(declare-fun call!207168 () Bool)

(declare-fun call!207163 () Bool)

(assert (=> bm!207159 (= call!207168 call!207163)))

(declare-fun b!3035374 () Bool)

(declare-fun e!1903395 () Regex!9437)

(assert (=> b!3035374 (= e!1903399 e!1903395)))

(declare-fun c!501840 () Bool)

(assert (=> b!3035374 (= c!501840 ((_ is ElementMatch!9437) (regTwo!19387 r!17423)))))

(declare-fun b!3035375 () Bool)

(declare-fun c!501845 () Bool)

(declare-fun e!1903389 () Bool)

(assert (=> b!3035375 (= c!501845 e!1903389)))

(declare-fun res!1248685 () Bool)

(assert (=> b!3035375 (=> res!1248685 e!1903389)))

(assert (=> b!3035375 (= res!1248685 call!207163)))

(declare-fun lt!1046661 () Regex!9437)

(declare-fun call!207165 () Regex!9437)

(assert (=> b!3035375 (= lt!1046661 call!207165)))

(declare-fun e!1903393 () Regex!9437)

(assert (=> b!3035375 (= e!1903393 e!1903391)))

(declare-fun b!3035376 () Bool)

(declare-fun e!1903390 () Regex!9437)

(assert (=> b!3035376 (= e!1903390 (Union!9437 lt!1046663 lt!1046662))))

(declare-fun b!3035377 () Bool)

(assert (=> b!3035377 (= e!1903394 e!1903401)))

(assert (=> b!3035377 (= lt!1046664 call!207169)))

(assert (=> b!3035377 (= lt!1046660 call!207166)))

(declare-fun res!1248686 () Bool)

(assert (=> b!3035377 (= res!1248686 call!207168)))

(declare-fun e!1903396 () Bool)

(assert (=> b!3035377 (=> res!1248686 e!1903396)))

(declare-fun c!501844 () Bool)

(assert (=> b!3035377 (= c!501844 e!1903396)))

(declare-fun b!3035378 () Bool)

(declare-fun c!501847 () Bool)

(assert (=> b!3035378 (= c!501847 call!207168)))

(assert (=> b!3035378 (= e!1903388 e!1903390)))

(declare-fun bm!207160 () Bool)

(declare-fun c!501846 () Bool)

(assert (=> bm!207160 (= call!207163 (isEmptyLang!502 (ite c!501846 lt!1046661 (ite c!501843 lt!1046662 lt!1046664))))))

(declare-fun b!3035379 () Bool)

(declare-fun e!1903398 () Regex!9437)

(assert (=> b!3035379 (= e!1903398 e!1903393)))

(assert (=> b!3035379 (= c!501846 ((_ is Star!9437) (regTwo!19387 r!17423)))))

(declare-fun b!3035380 () Bool)

(assert (=> b!3035380 (= e!1903395 (regTwo!19387 r!17423))))

(declare-fun b!3035381 () Bool)

(assert (=> b!3035381 (= c!501843 ((_ is Union!9437) (regTwo!19387 r!17423)))))

(assert (=> b!3035381 (= e!1903393 e!1903394)))

(declare-fun bm!207161 () Bool)

(assert (=> bm!207161 (= call!207169 call!207165)))

(declare-fun bm!207162 () Bool)

(assert (=> bm!207162 (= call!207166 (simplify!404 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(declare-fun b!3035382 () Bool)

(declare-fun c!501842 () Bool)

(assert (=> b!3035382 (= c!501842 ((_ is EmptyExpr!9437) (regTwo!19387 r!17423)))))

(assert (=> b!3035382 (= e!1903395 e!1903398)))

(declare-fun b!3035383 () Bool)

(assert (=> b!3035383 (= e!1903398 EmptyExpr!9437)))

(declare-fun b!3035384 () Bool)

(assert (=> b!3035384 (= e!1903390 lt!1046663)))

(declare-fun bm!207163 () Bool)

(assert (=> bm!207163 (= call!207165 (simplify!404 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(declare-fun b!3035385 () Bool)

(assert (=> b!3035385 (= e!1903389 call!207164)))

(declare-fun b!3035386 () Bool)

(assert (=> b!3035386 (= e!1903388 lt!1046662)))

(declare-fun b!3035387 () Bool)

(assert (=> b!3035387 (= e!1903396 call!207167)))

(declare-fun b!3035388 () Bool)

(declare-fun c!501849 () Bool)

(declare-fun isEmptyExpr!508 (Regex!9437) Bool)

(assert (=> b!3035388 (= c!501849 (isEmptyExpr!508 lt!1046664))))

(assert (=> b!3035388 (= e!1903401 e!1903400)))

(declare-fun bm!207164 () Bool)

(assert (=> bm!207164 (= call!207164 (isEmptyExpr!508 (ite c!501846 lt!1046661 lt!1046660)))))

(declare-fun b!3035389 () Bool)

(assert (=> b!3035389 (= e!1903391 (Star!9437 lt!1046661))))

(assert (= (and d!851594 c!501839) b!3035370))

(assert (= (and d!851594 (not c!501839)) b!3035374))

(assert (= (and b!3035374 c!501840) b!3035380))

(assert (= (and b!3035374 (not c!501840)) b!3035382))

(assert (= (and b!3035382 c!501842) b!3035383))

(assert (= (and b!3035382 (not c!501842)) b!3035379))

(assert (= (and b!3035379 c!501846) b!3035375))

(assert (= (and b!3035379 (not c!501846)) b!3035381))

(assert (= (and b!3035375 (not res!1248685)) b!3035385))

(assert (= (and b!3035375 c!501845) b!3035371))

(assert (= (and b!3035375 (not c!501845)) b!3035389))

(assert (= (and b!3035381 c!501843) b!3035365))

(assert (= (and b!3035381 (not c!501843)) b!3035377))

(assert (= (and b!3035365 c!501848) b!3035386))

(assert (= (and b!3035365 (not c!501848)) b!3035378))

(assert (= (and b!3035378 c!501847) b!3035384))

(assert (= (and b!3035378 (not c!501847)) b!3035376))

(assert (= (and b!3035377 (not res!1248686)) b!3035387))

(assert (= (and b!3035377 c!501844) b!3035367))

(assert (= (and b!3035377 (not c!501844)) b!3035388))

(assert (= (and b!3035388 c!501849) b!3035372))

(assert (= (and b!3035388 (not c!501849)) b!3035369))

(assert (= (and b!3035369 c!501841) b!3035368))

(assert (= (and b!3035369 (not c!501841)) b!3035366))

(assert (= (or b!3035365 b!3035377) bm!207162))

(assert (= (or b!3035365 b!3035377) bm!207161))

(assert (= (or b!3035378 b!3035377) bm!207159))

(assert (= (or b!3035365 b!3035387) bm!207158))

(assert (= (or b!3035385 b!3035369) bm!207164))

(assert (= (or b!3035375 bm!207161) bm!207163))

(assert (= (or b!3035375 bm!207159) bm!207160))

(assert (= (and d!851594 res!1248684) b!3035373))

(declare-fun m!3369659 () Bool)

(assert (=> b!3035373 m!3369659))

(assert (=> b!3035373 m!3369627))

(declare-fun m!3369667 () Bool)

(assert (=> bm!207164 m!3369667))

(declare-fun m!3369669 () Bool)

(assert (=> bm!207163 m!3369669))

(declare-fun m!3369671 () Bool)

(assert (=> bm!207160 m!3369671))

(declare-fun m!3369673 () Bool)

(assert (=> b!3035388 m!3369673))

(declare-fun m!3369675 () Bool)

(assert (=> d!851594 m!3369675))

(assert (=> d!851594 m!3369619))

(declare-fun m!3369677 () Bool)

(assert (=> bm!207158 m!3369677))

(declare-fun m!3369679 () Bool)

(assert (=> bm!207162 m!3369679))

(assert (=> b!3035102 d!851594))

(declare-fun d!851602 () Bool)

(assert (=> d!851602 (= (matchR!4319 (regTwo!19387 r!17423) s!11993) (matchR!4319 (simplify!404 (regTwo!19387 r!17423)) s!11993))))

(declare-fun lt!1046676 () Unit!49297)

(declare-fun choose!18007 (Regex!9437 List!35302) Unit!49297)

(assert (=> d!851602 (= lt!1046676 (choose!18007 (regTwo!19387 r!17423) s!11993))))

(assert (=> d!851602 (validRegex!4170 (regTwo!19387 r!17423))))

(assert (=> d!851602 (= (lemmaSimplifySound!252 (regTwo!19387 r!17423) s!11993) lt!1046676)))

(declare-fun bs!530926 () Bool)

(assert (= bs!530926 d!851602))

(assert (=> bs!530926 m!3369557))

(declare-fun m!3369689 () Bool)

(assert (=> bs!530926 m!3369689))

(declare-fun m!3369691 () Bool)

(assert (=> bs!530926 m!3369691))

(assert (=> bs!530926 m!3369619))

(assert (=> bs!530926 m!3369553))

(assert (=> bs!530926 m!3369557))

(assert (=> b!3035102 d!851602))

(declare-fun b!3035432 () Bool)

(declare-fun e!1903430 () Bool)

(declare-fun e!1903426 () Bool)

(assert (=> b!3035432 (= e!1903430 e!1903426)))

(declare-fun res!1248703 () Bool)

(assert (=> b!3035432 (=> (not res!1248703) (not e!1903426))))

(declare-fun lt!1046678 () Bool)

(assert (=> b!3035432 (= res!1248703 (not lt!1046678))))

(declare-fun b!3035433 () Bool)

(declare-fun e!1903428 () Bool)

(assert (=> b!3035433 (= e!1903428 (matchR!4319 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035434 () Bool)

(declare-fun res!1248708 () Bool)

(assert (=> b!3035434 (=> res!1248708 e!1903430)))

(declare-fun e!1903429 () Bool)

(assert (=> b!3035434 (= res!1248708 e!1903429)))

(declare-fun res!1248705 () Bool)

(assert (=> b!3035434 (=> (not res!1248705) (not e!1903429))))

(assert (=> b!3035434 (= res!1248705 lt!1046678)))

(declare-fun b!3035435 () Bool)

(declare-fun e!1903432 () Bool)

(declare-fun e!1903431 () Bool)

(assert (=> b!3035435 (= e!1903432 e!1903431)))

(declare-fun c!501866 () Bool)

(assert (=> b!3035435 (= c!501866 ((_ is EmptyLang!9437) (simplify!404 r!17423)))))

(declare-fun b!3035436 () Bool)

(assert (=> b!3035436 (= e!1903429 (= (head!6743 s!11993) (c!501761 (simplify!404 r!17423))))))

(declare-fun d!851606 () Bool)

(assert (=> d!851606 e!1903432))

(declare-fun c!501864 () Bool)

(assert (=> d!851606 (= c!501864 ((_ is EmptyExpr!9437) (simplify!404 r!17423)))))

(assert (=> d!851606 (= lt!1046678 e!1903428)))

(declare-fun c!501865 () Bool)

(assert (=> d!851606 (= c!501865 (isEmpty!19478 s!11993))))

(assert (=> d!851606 (validRegex!4170 (simplify!404 r!17423))))

(assert (=> d!851606 (= (matchR!4319 (simplify!404 r!17423) s!11993) lt!1046678)))

(declare-fun bm!207173 () Bool)

(declare-fun call!207178 () Bool)

(assert (=> bm!207173 (= call!207178 (isEmpty!19478 s!11993))))

(declare-fun b!3035437 () Bool)

(assert (=> b!3035437 (= e!1903432 (= lt!1046678 call!207178))))

(declare-fun b!3035438 () Bool)

(assert (=> b!3035438 (= e!1903428 (nullable!3087 (simplify!404 r!17423)))))

(declare-fun b!3035439 () Bool)

(declare-fun res!1248707 () Bool)

(assert (=> b!3035439 (=> (not res!1248707) (not e!1903429))))

(assert (=> b!3035439 (= res!1248707 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035440 () Bool)

(declare-fun e!1903427 () Bool)

(assert (=> b!3035440 (= e!1903426 e!1903427)))

(declare-fun res!1248704 () Bool)

(assert (=> b!3035440 (=> res!1248704 e!1903427)))

(assert (=> b!3035440 (= res!1248704 call!207178)))

(declare-fun b!3035441 () Bool)

(declare-fun res!1248701 () Bool)

(assert (=> b!3035441 (=> (not res!1248701) (not e!1903429))))

(assert (=> b!3035441 (= res!1248701 (not call!207178))))

(declare-fun b!3035442 () Bool)

(declare-fun res!1248702 () Bool)

(assert (=> b!3035442 (=> res!1248702 e!1903430)))

(assert (=> b!3035442 (= res!1248702 (not ((_ is ElementMatch!9437) (simplify!404 r!17423))))))

(assert (=> b!3035442 (= e!1903431 e!1903430)))

(declare-fun b!3035443 () Bool)

(declare-fun res!1248706 () Bool)

(assert (=> b!3035443 (=> res!1248706 e!1903427)))

(assert (=> b!3035443 (= res!1248706 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035444 () Bool)

(assert (=> b!3035444 (= e!1903427 (not (= (head!6743 s!11993) (c!501761 (simplify!404 r!17423)))))))

(declare-fun b!3035445 () Bool)

(assert (=> b!3035445 (= e!1903431 (not lt!1046678))))

(assert (= (and d!851606 c!501865) b!3035438))

(assert (= (and d!851606 (not c!501865)) b!3035433))

(assert (= (and d!851606 c!501864) b!3035437))

(assert (= (and d!851606 (not c!501864)) b!3035435))

(assert (= (and b!3035435 c!501866) b!3035445))

(assert (= (and b!3035435 (not c!501866)) b!3035442))

(assert (= (and b!3035442 (not res!1248702)) b!3035434))

(assert (= (and b!3035434 res!1248705) b!3035441))

(assert (= (and b!3035441 res!1248701) b!3035439))

(assert (= (and b!3035439 res!1248707) b!3035436))

(assert (= (and b!3035434 (not res!1248708)) b!3035432))

(assert (= (and b!3035432 res!1248703) b!3035440))

(assert (= (and b!3035440 (not res!1248704)) b!3035443))

(assert (= (and b!3035443 (not res!1248706)) b!3035444))

(assert (= (or b!3035437 b!3035440 b!3035441) bm!207173))

(assert (=> b!3035443 m!3369585))

(assert (=> b!3035443 m!3369585))

(assert (=> b!3035443 m!3369587))

(assert (=> b!3035438 m!3369571))

(declare-fun m!3369701 () Bool)

(assert (=> b!3035438 m!3369701))

(assert (=> bm!207173 m!3369591))

(assert (=> b!3035436 m!3369593))

(assert (=> b!3035433 m!3369593))

(assert (=> b!3035433 m!3369571))

(assert (=> b!3035433 m!3369593))

(declare-fun m!3369703 () Bool)

(assert (=> b!3035433 m!3369703))

(assert (=> b!3035433 m!3369585))

(assert (=> b!3035433 m!3369703))

(assert (=> b!3035433 m!3369585))

(declare-fun m!3369705 () Bool)

(assert (=> b!3035433 m!3369705))

(assert (=> b!3035439 m!3369585))

(assert (=> b!3035439 m!3369585))

(assert (=> b!3035439 m!3369587))

(assert (=> b!3035444 m!3369593))

(assert (=> d!851606 m!3369591))

(assert (=> d!851606 m!3369571))

(declare-fun m!3369707 () Bool)

(assert (=> d!851606 m!3369707))

(assert (=> b!3035097 d!851606))

(declare-fun b!3035469 () Bool)

(declare-fun e!1903453 () Regex!9437)

(declare-fun e!1903447 () Regex!9437)

(assert (=> b!3035469 (= e!1903453 e!1903447)))

(declare-fun lt!1046684 () Regex!9437)

(declare-fun call!207186 () Regex!9437)

(assert (=> b!3035469 (= lt!1046684 call!207186)))

(declare-fun lt!1046683 () Regex!9437)

(declare-fun call!207189 () Regex!9437)

(assert (=> b!3035469 (= lt!1046683 call!207189)))

(declare-fun c!501881 () Bool)

(declare-fun call!207187 () Bool)

(assert (=> b!3035469 (= c!501881 call!207187)))

(declare-fun b!3035470 () Bool)

(declare-fun e!1903456 () Regex!9437)

(declare-fun lt!1046685 () Regex!9437)

(declare-fun lt!1046681 () Regex!9437)

(assert (=> b!3035470 (= e!1903456 (Concat!14758 lt!1046685 lt!1046681))))

(declare-fun b!3035471 () Bool)

(declare-fun e!1903460 () Regex!9437)

(assert (=> b!3035471 (= e!1903460 EmptyLang!9437)))

(declare-fun d!851612 () Bool)

(declare-fun e!1903451 () Bool)

(assert (=> d!851612 e!1903451))

(declare-fun res!1248722 () Bool)

(assert (=> d!851612 (=> (not res!1248722) (not e!1903451))))

(declare-fun lt!1046680 () Regex!9437)

(assert (=> d!851612 (= res!1248722 (validRegex!4170 lt!1046680))))

(declare-fun e!1903458 () Regex!9437)

(assert (=> d!851612 (= lt!1046680 e!1903458)))

(declare-fun c!501872 () Bool)

(assert (=> d!851612 (= c!501872 ((_ is EmptyLang!9437) r!17423))))

(assert (=> d!851612 (validRegex!4170 r!17423)))

(assert (=> d!851612 (= (simplify!404 r!17423) lt!1046680)))

(declare-fun b!3035472 () Bool)

(assert (=> b!3035472 (= e!1903456 lt!1046685)))

(declare-fun b!3035473 () Bool)

(declare-fun e!1903459 () Regex!9437)

(assert (=> b!3035473 (= e!1903459 e!1903456)))

(declare-fun c!501874 () Bool)

(declare-fun call!207184 () Bool)

(assert (=> b!3035473 (= c!501874 call!207184)))

(declare-fun b!3035474 () Bool)

(assert (=> b!3035474 (= e!1903458 EmptyLang!9437)))

(declare-fun b!3035475 () Bool)

(declare-fun e!1903450 () Regex!9437)

(assert (=> b!3035475 (= e!1903450 EmptyExpr!9437)))

(declare-fun b!3035476 () Bool)

(assert (=> b!3035476 (= e!1903459 lt!1046681)))

(declare-fun bm!207178 () Bool)

(declare-fun c!501876 () Bool)

(assert (=> bm!207178 (= call!207187 (isEmptyLang!502 (ite c!501876 lt!1046684 lt!1046681)))))

(declare-fun b!3035477 () Bool)

(assert (=> b!3035477 (= e!1903451 (= (nullable!3087 lt!1046680) (nullable!3087 r!17423)))))

(declare-fun bm!207179 () Bool)

(declare-fun call!207188 () Bool)

(declare-fun call!207183 () Bool)

(assert (=> bm!207179 (= call!207188 call!207183)))

(declare-fun b!3035478 () Bool)

(declare-fun e!1903454 () Regex!9437)

(assert (=> b!3035478 (= e!1903458 e!1903454)))

(declare-fun c!501873 () Bool)

(assert (=> b!3035478 (= c!501873 ((_ is ElementMatch!9437) r!17423))))

(declare-fun b!3035479 () Bool)

(declare-fun c!501878 () Bool)

(declare-fun e!1903448 () Bool)

(assert (=> b!3035479 (= c!501878 e!1903448)))

(declare-fun res!1248723 () Bool)

(assert (=> b!3035479 (=> res!1248723 e!1903448)))

(assert (=> b!3035479 (= res!1248723 call!207183)))

(declare-fun lt!1046682 () Regex!9437)

(declare-fun call!207185 () Regex!9437)

(assert (=> b!3035479 (= lt!1046682 call!207185)))

(declare-fun e!1903452 () Regex!9437)

(assert (=> b!3035479 (= e!1903452 e!1903450)))

(declare-fun b!3035480 () Bool)

(declare-fun e!1903449 () Regex!9437)

(assert (=> b!3035480 (= e!1903449 (Union!9437 lt!1046684 lt!1046683))))

(declare-fun b!3035481 () Bool)

(assert (=> b!3035481 (= e!1903453 e!1903460)))

(assert (=> b!3035481 (= lt!1046685 call!207189)))

(assert (=> b!3035481 (= lt!1046681 call!207186)))

(declare-fun res!1248724 () Bool)

(assert (=> b!3035481 (= res!1248724 call!207188)))

(declare-fun e!1903455 () Bool)

(assert (=> b!3035481 (=> res!1248724 e!1903455)))

(declare-fun c!501877 () Bool)

(assert (=> b!3035481 (= c!501877 e!1903455)))

(declare-fun b!3035482 () Bool)

(declare-fun c!501880 () Bool)

(assert (=> b!3035482 (= c!501880 call!207188)))

(assert (=> b!3035482 (= e!1903447 e!1903449)))

(declare-fun bm!207180 () Bool)

(declare-fun c!501879 () Bool)

(assert (=> bm!207180 (= call!207183 (isEmptyLang!502 (ite c!501879 lt!1046682 (ite c!501876 lt!1046683 lt!1046685))))))

(declare-fun b!3035483 () Bool)

(declare-fun e!1903457 () Regex!9437)

(assert (=> b!3035483 (= e!1903457 e!1903452)))

(assert (=> b!3035483 (= c!501879 ((_ is Star!9437) r!17423))))

(declare-fun b!3035484 () Bool)

(assert (=> b!3035484 (= e!1903454 r!17423)))

(declare-fun b!3035485 () Bool)

(assert (=> b!3035485 (= c!501876 ((_ is Union!9437) r!17423))))

(assert (=> b!3035485 (= e!1903452 e!1903453)))

(declare-fun bm!207181 () Bool)

(assert (=> bm!207181 (= call!207189 call!207185)))

(declare-fun bm!207182 () Bool)

(assert (=> bm!207182 (= call!207186 (simplify!404 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(declare-fun b!3035486 () Bool)

(declare-fun c!501875 () Bool)

(assert (=> b!3035486 (= c!501875 ((_ is EmptyExpr!9437) r!17423))))

(assert (=> b!3035486 (= e!1903454 e!1903457)))

(declare-fun b!3035487 () Bool)

(assert (=> b!3035487 (= e!1903457 EmptyExpr!9437)))

(declare-fun b!3035488 () Bool)

(assert (=> b!3035488 (= e!1903449 lt!1046684)))

(declare-fun bm!207183 () Bool)

(assert (=> bm!207183 (= call!207185 (simplify!404 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(declare-fun b!3035489 () Bool)

(assert (=> b!3035489 (= e!1903448 call!207184)))

(declare-fun b!3035490 () Bool)

(assert (=> b!3035490 (= e!1903447 lt!1046683)))

(declare-fun b!3035491 () Bool)

(assert (=> b!3035491 (= e!1903455 call!207187)))

(declare-fun b!3035492 () Bool)

(declare-fun c!501882 () Bool)

(assert (=> b!3035492 (= c!501882 (isEmptyExpr!508 lt!1046685))))

(assert (=> b!3035492 (= e!1903460 e!1903459)))

(declare-fun bm!207184 () Bool)

(assert (=> bm!207184 (= call!207184 (isEmptyExpr!508 (ite c!501879 lt!1046682 lt!1046681)))))

(declare-fun b!3035493 () Bool)

(assert (=> b!3035493 (= e!1903450 (Star!9437 lt!1046682))))

(assert (= (and d!851612 c!501872) b!3035474))

(assert (= (and d!851612 (not c!501872)) b!3035478))

(assert (= (and b!3035478 c!501873) b!3035484))

(assert (= (and b!3035478 (not c!501873)) b!3035486))

(assert (= (and b!3035486 c!501875) b!3035487))

(assert (= (and b!3035486 (not c!501875)) b!3035483))

(assert (= (and b!3035483 c!501879) b!3035479))

(assert (= (and b!3035483 (not c!501879)) b!3035485))

(assert (= (and b!3035479 (not res!1248723)) b!3035489))

(assert (= (and b!3035479 c!501878) b!3035475))

(assert (= (and b!3035479 (not c!501878)) b!3035493))

(assert (= (and b!3035485 c!501876) b!3035469))

(assert (= (and b!3035485 (not c!501876)) b!3035481))

(assert (= (and b!3035469 c!501881) b!3035490))

(assert (= (and b!3035469 (not c!501881)) b!3035482))

(assert (= (and b!3035482 c!501880) b!3035488))

(assert (= (and b!3035482 (not c!501880)) b!3035480))

(assert (= (and b!3035481 (not res!1248724)) b!3035491))

(assert (= (and b!3035481 c!501877) b!3035471))

(assert (= (and b!3035481 (not c!501877)) b!3035492))

(assert (= (and b!3035492 c!501882) b!3035476))

(assert (= (and b!3035492 (not c!501882)) b!3035473))

(assert (= (and b!3035473 c!501874) b!3035472))

(assert (= (and b!3035473 (not c!501874)) b!3035470))

(assert (= (or b!3035469 b!3035481) bm!207182))

(assert (= (or b!3035469 b!3035481) bm!207181))

(assert (= (or b!3035482 b!3035481) bm!207179))

(assert (= (or b!3035469 b!3035491) bm!207178))

(assert (= (or b!3035489 b!3035473) bm!207184))

(assert (= (or b!3035479 bm!207181) bm!207183))

(assert (= (or b!3035479 bm!207179) bm!207180))

(assert (= (and d!851612 res!1248722) b!3035477))

(declare-fun m!3369717 () Bool)

(assert (=> b!3035477 m!3369717))

(declare-fun m!3369719 () Bool)

(assert (=> b!3035477 m!3369719))

(declare-fun m!3369721 () Bool)

(assert (=> bm!207184 m!3369721))

(declare-fun m!3369723 () Bool)

(assert (=> bm!207183 m!3369723))

(declare-fun m!3369725 () Bool)

(assert (=> bm!207180 m!3369725))

(declare-fun m!3369727 () Bool)

(assert (=> b!3035492 m!3369727))

(declare-fun m!3369729 () Bool)

(assert (=> d!851612 m!3369729))

(assert (=> d!851612 m!3369569))

(declare-fun m!3369731 () Bool)

(assert (=> bm!207178 m!3369731))

(declare-fun m!3369733 () Bool)

(assert (=> bm!207182 m!3369733))

(assert (=> b!3035097 d!851612))

(declare-fun b!3035494 () Bool)

(declare-fun e!1903465 () Bool)

(declare-fun e!1903461 () Bool)

(assert (=> b!3035494 (= e!1903465 e!1903461)))

(declare-fun res!1248727 () Bool)

(assert (=> b!3035494 (=> (not res!1248727) (not e!1903461))))

(declare-fun lt!1046686 () Bool)

(assert (=> b!3035494 (= res!1248727 (not lt!1046686))))

(declare-fun e!1903463 () Bool)

(declare-fun b!3035495 () Bool)

(assert (=> b!3035495 (= e!1903463 (matchR!4319 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035496 () Bool)

(declare-fun res!1248732 () Bool)

(assert (=> b!3035496 (=> res!1248732 e!1903465)))

(declare-fun e!1903464 () Bool)

(assert (=> b!3035496 (= res!1248732 e!1903464)))

(declare-fun res!1248729 () Bool)

(assert (=> b!3035496 (=> (not res!1248729) (not e!1903464))))

(assert (=> b!3035496 (= res!1248729 lt!1046686)))

(declare-fun b!3035497 () Bool)

(declare-fun e!1903467 () Bool)

(declare-fun e!1903466 () Bool)

(assert (=> b!3035497 (= e!1903467 e!1903466)))

(declare-fun c!501885 () Bool)

(assert (=> b!3035497 (= c!501885 ((_ is EmptyLang!9437) (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun b!3035498 () Bool)

(assert (=> b!3035498 (= e!1903464 (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046616 lt!1046614))))))

(declare-fun d!851616 () Bool)

(assert (=> d!851616 e!1903467))

(declare-fun c!501883 () Bool)

(assert (=> d!851616 (= c!501883 ((_ is EmptyExpr!9437) (Union!9437 lt!1046616 lt!1046614)))))

(assert (=> d!851616 (= lt!1046686 e!1903463)))

(declare-fun c!501884 () Bool)

(assert (=> d!851616 (= c!501884 (isEmpty!19478 s!11993))))

(assert (=> d!851616 (validRegex!4170 (Union!9437 lt!1046616 lt!1046614))))

(assert (=> d!851616 (= (matchR!4319 (Union!9437 lt!1046616 lt!1046614) s!11993) lt!1046686)))

(declare-fun bm!207185 () Bool)

(declare-fun call!207190 () Bool)

(assert (=> bm!207185 (= call!207190 (isEmpty!19478 s!11993))))

(declare-fun b!3035499 () Bool)

(assert (=> b!3035499 (= e!1903467 (= lt!1046686 call!207190))))

(declare-fun b!3035500 () Bool)

(assert (=> b!3035500 (= e!1903463 (nullable!3087 (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun b!3035501 () Bool)

(declare-fun res!1248731 () Bool)

(assert (=> b!3035501 (=> (not res!1248731) (not e!1903464))))

(assert (=> b!3035501 (= res!1248731 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035502 () Bool)

(declare-fun e!1903462 () Bool)

(assert (=> b!3035502 (= e!1903461 e!1903462)))

(declare-fun res!1248728 () Bool)

(assert (=> b!3035502 (=> res!1248728 e!1903462)))

(assert (=> b!3035502 (= res!1248728 call!207190)))

(declare-fun b!3035503 () Bool)

(declare-fun res!1248725 () Bool)

(assert (=> b!3035503 (=> (not res!1248725) (not e!1903464))))

(assert (=> b!3035503 (= res!1248725 (not call!207190))))

(declare-fun b!3035504 () Bool)

(declare-fun res!1248726 () Bool)

(assert (=> b!3035504 (=> res!1248726 e!1903465)))

(assert (=> b!3035504 (= res!1248726 (not ((_ is ElementMatch!9437) (Union!9437 lt!1046616 lt!1046614))))))

(assert (=> b!3035504 (= e!1903466 e!1903465)))

(declare-fun b!3035505 () Bool)

(declare-fun res!1248730 () Bool)

(assert (=> b!3035505 (=> res!1248730 e!1903462)))

(assert (=> b!3035505 (= res!1248730 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035506 () Bool)

(assert (=> b!3035506 (= e!1903462 (not (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046616 lt!1046614)))))))

(declare-fun b!3035507 () Bool)

(assert (=> b!3035507 (= e!1903466 (not lt!1046686))))

(assert (= (and d!851616 c!501884) b!3035500))

(assert (= (and d!851616 (not c!501884)) b!3035495))

(assert (= (and d!851616 c!501883) b!3035499))

(assert (= (and d!851616 (not c!501883)) b!3035497))

(assert (= (and b!3035497 c!501885) b!3035507))

(assert (= (and b!3035497 (not c!501885)) b!3035504))

(assert (= (and b!3035504 (not res!1248726)) b!3035496))

(assert (= (and b!3035496 res!1248729) b!3035503))

(assert (= (and b!3035503 res!1248725) b!3035501))

(assert (= (and b!3035501 res!1248731) b!3035498))

(assert (= (and b!3035496 (not res!1248732)) b!3035494))

(assert (= (and b!3035494 res!1248727) b!3035502))

(assert (= (and b!3035502 (not res!1248728)) b!3035505))

(assert (= (and b!3035505 (not res!1248730)) b!3035506))

(assert (= (or b!3035499 b!3035502 b!3035503) bm!207185))

(assert (=> b!3035505 m!3369585))

(assert (=> b!3035505 m!3369585))

(assert (=> b!3035505 m!3369587))

(declare-fun m!3369737 () Bool)

(assert (=> b!3035500 m!3369737))

(assert (=> bm!207185 m!3369591))

(assert (=> b!3035498 m!3369593))

(assert (=> b!3035495 m!3369593))

(assert (=> b!3035495 m!3369593))

(declare-fun m!3369739 () Bool)

(assert (=> b!3035495 m!3369739))

(assert (=> b!3035495 m!3369585))

(assert (=> b!3035495 m!3369739))

(assert (=> b!3035495 m!3369585))

(declare-fun m!3369741 () Bool)

(assert (=> b!3035495 m!3369741))

(assert (=> b!3035501 m!3369585))

(assert (=> b!3035501 m!3369585))

(assert (=> b!3035501 m!3369587))

(assert (=> b!3035506 m!3369593))

(assert (=> d!851616 m!3369591))

(declare-fun m!3369743 () Bool)

(assert (=> d!851616 m!3369743))

(assert (=> b!3035097 d!851616))

(declare-fun d!851620 () Bool)

(assert (=> d!851620 (matchR!4319 (Union!9437 lt!1046616 lt!1046614) s!11993)))

(declare-fun lt!1046709 () Unit!49297)

(declare-fun choose!18009 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> d!851620 (= lt!1046709 (choose!18009 lt!1046614 lt!1046616 s!11993))))

(declare-fun e!1903521 () Bool)

(assert (=> d!851620 e!1903521))

(declare-fun res!1248766 () Bool)

(assert (=> d!851620 (=> (not res!1248766) (not e!1903521))))

(assert (=> d!851620 (= res!1248766 (validRegex!4170 lt!1046614))))

(assert (=> d!851620 (= (lemmaReversedUnionAcceptsSameString!24 lt!1046614 lt!1046616 s!11993) lt!1046709)))

(declare-fun b!3035597 () Bool)

(assert (=> b!3035597 (= e!1903521 (validRegex!4170 lt!1046616))))

(assert (= (and d!851620 res!1248766) b!3035597))

(assert (=> d!851620 m!3369575))

(declare-fun m!3369777 () Bool)

(assert (=> d!851620 m!3369777))

(assert (=> d!851620 m!3369561))

(assert (=> b!3035597 m!3369551))

(assert (=> b!3035097 d!851620))

(assert (=> b!3035103 d!851592))

(declare-fun b!3035647 () Bool)

(declare-fun e!1903559 () Bool)

(declare-fun call!207218 () Bool)

(assert (=> b!3035647 (= e!1903559 call!207218)))

(declare-fun b!3035648 () Bool)

(declare-fun e!1903560 () Bool)

(declare-fun e!1903561 () Bool)

(assert (=> b!3035648 (= e!1903560 e!1903561)))

(declare-fun res!1248788 () Bool)

(assert (=> b!3035648 (= res!1248788 (not (nullable!3087 (reg!9766 r!17423))))))

(assert (=> b!3035648 (=> (not res!1248788) (not e!1903561))))

(declare-fun c!501929 () Bool)

(declare-fun c!501928 () Bool)

(declare-fun call!207216 () Bool)

(declare-fun bm!207211 () Bool)

(assert (=> bm!207211 (= call!207216 (validRegex!4170 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))

(declare-fun b!3035649 () Bool)

(declare-fun e!1903558 () Bool)

(assert (=> b!3035649 (= e!1903560 e!1903558)))

(assert (=> b!3035649 (= c!501928 ((_ is Union!9437) r!17423))))

(declare-fun d!851630 () Bool)

(declare-fun res!1248789 () Bool)

(declare-fun e!1903562 () Bool)

(assert (=> d!851630 (=> res!1248789 e!1903562)))

(assert (=> d!851630 (= res!1248789 ((_ is ElementMatch!9437) r!17423))))

(assert (=> d!851630 (= (validRegex!4170 r!17423) e!1903562)))

(declare-fun b!3035650 () Bool)

(assert (=> b!3035650 (= e!1903562 e!1903560)))

(assert (=> b!3035650 (= c!501929 ((_ is Star!9437) r!17423))))

(declare-fun bm!207212 () Bool)

(assert (=> bm!207212 (= call!207218 (validRegex!4170 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(declare-fun bm!207213 () Bool)

(declare-fun call!207217 () Bool)

(assert (=> bm!207213 (= call!207217 call!207216)))

(declare-fun b!3035651 () Bool)

(declare-fun e!1903563 () Bool)

(declare-fun e!1903557 () Bool)

(assert (=> b!3035651 (= e!1903563 e!1903557)))

(declare-fun res!1248791 () Bool)

(assert (=> b!3035651 (=> (not res!1248791) (not e!1903557))))

(assert (=> b!3035651 (= res!1248791 call!207218)))

(declare-fun b!3035652 () Bool)

(assert (=> b!3035652 (= e!1903557 call!207217)))

(declare-fun b!3035653 () Bool)

(declare-fun res!1248790 () Bool)

(assert (=> b!3035653 (=> (not res!1248790) (not e!1903559))))

(assert (=> b!3035653 (= res!1248790 call!207217)))

(assert (=> b!3035653 (= e!1903558 e!1903559)))

(declare-fun b!3035654 () Bool)

(assert (=> b!3035654 (= e!1903561 call!207216)))

(declare-fun b!3035655 () Bool)

(declare-fun res!1248792 () Bool)

(assert (=> b!3035655 (=> res!1248792 e!1903563)))

(assert (=> b!3035655 (= res!1248792 (not ((_ is Concat!14758) r!17423)))))

(assert (=> b!3035655 (= e!1903558 e!1903563)))

(assert (= (and d!851630 (not res!1248789)) b!3035650))

(assert (= (and b!3035650 c!501929) b!3035648))

(assert (= (and b!3035650 (not c!501929)) b!3035649))

(assert (= (and b!3035648 res!1248788) b!3035654))

(assert (= (and b!3035649 c!501928) b!3035653))

(assert (= (and b!3035649 (not c!501928)) b!3035655))

(assert (= (and b!3035653 res!1248790) b!3035647))

(assert (= (and b!3035655 (not res!1248792)) b!3035651))

(assert (= (and b!3035651 res!1248791) b!3035652))

(assert (= (or b!3035653 b!3035652) bm!207213))

(assert (= (or b!3035647 b!3035651) bm!207212))

(assert (= (or b!3035654 bm!207213) bm!207211))

(declare-fun m!3369805 () Bool)

(assert (=> b!3035648 m!3369805))

(declare-fun m!3369807 () Bool)

(assert (=> bm!207211 m!3369807))

(declare-fun m!3369809 () Bool)

(assert (=> bm!207212 m!3369809))

(assert (=> start!290996 d!851630))

(declare-fun b!3035767 () Bool)

(assert (=> b!3035767 true))

(assert (=> b!3035767 true))

(declare-fun bs!530930 () Bool)

(declare-fun b!3035771 () Bool)

(assert (= bs!530930 (and b!3035771 b!3035767)))

(declare-fun lambda!113258 () Int)

(declare-fun lambda!113257 () Int)

(assert (=> bs!530930 (not (= lambda!113258 lambda!113257))))

(assert (=> b!3035771 true))

(assert (=> b!3035771 true))

(declare-fun b!3035762 () Bool)

(declare-fun e!1903616 () Bool)

(assert (=> b!3035762 (= e!1903616 (matchRSpec!1574 (regTwo!19387 r!17423) s!11993))))

(declare-fun b!3035763 () Bool)

(declare-fun c!501946 () Bool)

(assert (=> b!3035763 (= c!501946 ((_ is ElementMatch!9437) r!17423))))

(declare-fun e!1903610 () Bool)

(declare-fun e!1903615 () Bool)

(assert (=> b!3035763 (= e!1903610 e!1903615)))

(declare-fun d!851638 () Bool)

(declare-fun c!501945 () Bool)

(assert (=> d!851638 (= c!501945 ((_ is EmptyExpr!9437) r!17423))))

(declare-fun e!1903611 () Bool)

(assert (=> d!851638 (= (matchRSpec!1574 r!17423 s!11993) e!1903611)))

(declare-fun b!3035764 () Bool)

(assert (=> b!3035764 (= e!1903615 (= s!11993 (Cons!35178 (c!501761 r!17423) Nil!35178)))))

(declare-fun b!3035765 () Bool)

(declare-fun e!1903613 () Bool)

(declare-fun e!1903614 () Bool)

(assert (=> b!3035765 (= e!1903613 e!1903614)))

(declare-fun c!501948 () Bool)

(assert (=> b!3035765 (= c!501948 ((_ is Star!9437) r!17423))))

(declare-fun b!3035766 () Bool)

(assert (=> b!3035766 (= e!1903611 e!1903610)))

(declare-fun res!1248830 () Bool)

(assert (=> b!3035766 (= res!1248830 (not ((_ is EmptyLang!9437) r!17423)))))

(assert (=> b!3035766 (=> (not res!1248830) (not e!1903610))))

(declare-fun bm!207225 () Bool)

(declare-fun call!207231 () Bool)

(assert (=> bm!207225 (= call!207231 (isEmpty!19478 s!11993))))

(declare-fun e!1903612 () Bool)

(declare-fun call!207230 () Bool)

(assert (=> b!3035767 (= e!1903612 call!207230)))

(declare-fun b!3035768 () Bool)

(declare-fun c!501947 () Bool)

(assert (=> b!3035768 (= c!501947 ((_ is Union!9437) r!17423))))

(assert (=> b!3035768 (= e!1903615 e!1903613)))

(declare-fun b!3035769 () Bool)

(assert (=> b!3035769 (= e!1903613 e!1903616)))

(declare-fun res!1248831 () Bool)

(assert (=> b!3035769 (= res!1248831 (matchRSpec!1574 (regOne!19387 r!17423) s!11993))))

(assert (=> b!3035769 (=> res!1248831 e!1903616)))

(declare-fun bm!207226 () Bool)

(declare-fun Exists!1702 (Int) Bool)

(assert (=> bm!207226 (= call!207230 (Exists!1702 (ite c!501948 lambda!113257 lambda!113258)))))

(declare-fun b!3035770 () Bool)

(declare-fun res!1248832 () Bool)

(assert (=> b!3035770 (=> res!1248832 e!1903612)))

(assert (=> b!3035770 (= res!1248832 call!207231)))

(assert (=> b!3035770 (= e!1903614 e!1903612)))

(assert (=> b!3035771 (= e!1903614 call!207230)))

(declare-fun b!3035772 () Bool)

(assert (=> b!3035772 (= e!1903611 call!207231)))

(assert (= (and d!851638 c!501945) b!3035772))

(assert (= (and d!851638 (not c!501945)) b!3035766))

(assert (= (and b!3035766 res!1248830) b!3035763))

(assert (= (and b!3035763 c!501946) b!3035764))

(assert (= (and b!3035763 (not c!501946)) b!3035768))

(assert (= (and b!3035768 c!501947) b!3035769))

(assert (= (and b!3035768 (not c!501947)) b!3035765))

(assert (= (and b!3035769 (not res!1248831)) b!3035762))

(assert (= (and b!3035765 c!501948) b!3035770))

(assert (= (and b!3035765 (not c!501948)) b!3035771))

(assert (= (and b!3035770 (not res!1248832)) b!3035767))

(assert (= (or b!3035767 b!3035771) bm!207226))

(assert (= (or b!3035772 b!3035770) bm!207225))

(declare-fun m!3369823 () Bool)

(assert (=> b!3035762 m!3369823))

(assert (=> bm!207225 m!3369591))

(declare-fun m!3369825 () Bool)

(assert (=> b!3035769 m!3369825))

(declare-fun m!3369827 () Bool)

(assert (=> bm!207226 m!3369827))

(assert (=> b!3035104 d!851638))

(declare-fun b!3035777 () Bool)

(declare-fun e!1903621 () Bool)

(declare-fun e!1903617 () Bool)

(assert (=> b!3035777 (= e!1903621 e!1903617)))

(declare-fun res!1248835 () Bool)

(assert (=> b!3035777 (=> (not res!1248835) (not e!1903617))))

(declare-fun lt!1046717 () Bool)

(assert (=> b!3035777 (= res!1248835 (not lt!1046717))))

(declare-fun b!3035778 () Bool)

(declare-fun e!1903619 () Bool)

(assert (=> b!3035778 (= e!1903619 (matchR!4319 (derivativeStep!2684 r!17423 (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035779 () Bool)

(declare-fun res!1248840 () Bool)

(assert (=> b!3035779 (=> res!1248840 e!1903621)))

(declare-fun e!1903620 () Bool)

(assert (=> b!3035779 (= res!1248840 e!1903620)))

(declare-fun res!1248837 () Bool)

(assert (=> b!3035779 (=> (not res!1248837) (not e!1903620))))

(assert (=> b!3035779 (= res!1248837 lt!1046717)))

(declare-fun b!3035780 () Bool)

(declare-fun e!1903623 () Bool)

(declare-fun e!1903622 () Bool)

(assert (=> b!3035780 (= e!1903623 e!1903622)))

(declare-fun c!501951 () Bool)

(assert (=> b!3035780 (= c!501951 ((_ is EmptyLang!9437) r!17423))))

(declare-fun b!3035781 () Bool)

(assert (=> b!3035781 (= e!1903620 (= (head!6743 s!11993) (c!501761 r!17423)))))

(declare-fun d!851644 () Bool)

(assert (=> d!851644 e!1903623))

(declare-fun c!501949 () Bool)

(assert (=> d!851644 (= c!501949 ((_ is EmptyExpr!9437) r!17423))))

(assert (=> d!851644 (= lt!1046717 e!1903619)))

(declare-fun c!501950 () Bool)

(assert (=> d!851644 (= c!501950 (isEmpty!19478 s!11993))))

(assert (=> d!851644 (validRegex!4170 r!17423)))

(assert (=> d!851644 (= (matchR!4319 r!17423 s!11993) lt!1046717)))

(declare-fun bm!207227 () Bool)

(declare-fun call!207232 () Bool)

(assert (=> bm!207227 (= call!207232 (isEmpty!19478 s!11993))))

(declare-fun b!3035782 () Bool)

(assert (=> b!3035782 (= e!1903623 (= lt!1046717 call!207232))))

(declare-fun b!3035783 () Bool)

(assert (=> b!3035783 (= e!1903619 (nullable!3087 r!17423))))

(declare-fun b!3035784 () Bool)

(declare-fun res!1248839 () Bool)

(assert (=> b!3035784 (=> (not res!1248839) (not e!1903620))))

(assert (=> b!3035784 (= res!1248839 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035785 () Bool)

(declare-fun e!1903618 () Bool)

(assert (=> b!3035785 (= e!1903617 e!1903618)))

(declare-fun res!1248836 () Bool)

(assert (=> b!3035785 (=> res!1248836 e!1903618)))

(assert (=> b!3035785 (= res!1248836 call!207232)))

(declare-fun b!3035786 () Bool)

(declare-fun res!1248833 () Bool)

(assert (=> b!3035786 (=> (not res!1248833) (not e!1903620))))

(assert (=> b!3035786 (= res!1248833 (not call!207232))))

(declare-fun b!3035787 () Bool)

(declare-fun res!1248834 () Bool)

(assert (=> b!3035787 (=> res!1248834 e!1903621)))

(assert (=> b!3035787 (= res!1248834 (not ((_ is ElementMatch!9437) r!17423)))))

(assert (=> b!3035787 (= e!1903622 e!1903621)))

(declare-fun b!3035788 () Bool)

(declare-fun res!1248838 () Bool)

(assert (=> b!3035788 (=> res!1248838 e!1903618)))

(assert (=> b!3035788 (= res!1248838 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035789 () Bool)

(assert (=> b!3035789 (= e!1903618 (not (= (head!6743 s!11993) (c!501761 r!17423))))))

(declare-fun b!3035790 () Bool)

(assert (=> b!3035790 (= e!1903622 (not lt!1046717))))

(assert (= (and d!851644 c!501950) b!3035783))

(assert (= (and d!851644 (not c!501950)) b!3035778))

(assert (= (and d!851644 c!501949) b!3035782))

(assert (= (and d!851644 (not c!501949)) b!3035780))

(assert (= (and b!3035780 c!501951) b!3035790))

(assert (= (and b!3035780 (not c!501951)) b!3035787))

(assert (= (and b!3035787 (not res!1248834)) b!3035779))

(assert (= (and b!3035779 res!1248837) b!3035786))

(assert (= (and b!3035786 res!1248833) b!3035784))

(assert (= (and b!3035784 res!1248839) b!3035781))

(assert (= (and b!3035779 (not res!1248840)) b!3035777))

(assert (= (and b!3035777 res!1248835) b!3035785))

(assert (= (and b!3035785 (not res!1248836)) b!3035788))

(assert (= (and b!3035788 (not res!1248838)) b!3035789))

(assert (= (or b!3035782 b!3035785 b!3035786) bm!207227))

(assert (=> b!3035788 m!3369585))

(assert (=> b!3035788 m!3369585))

(assert (=> b!3035788 m!3369587))

(assert (=> b!3035783 m!3369719))

(assert (=> bm!207227 m!3369591))

(assert (=> b!3035781 m!3369593))

(assert (=> b!3035778 m!3369593))

(assert (=> b!3035778 m!3369593))

(declare-fun m!3369829 () Bool)

(assert (=> b!3035778 m!3369829))

(assert (=> b!3035778 m!3369585))

(assert (=> b!3035778 m!3369829))

(assert (=> b!3035778 m!3369585))

(declare-fun m!3369831 () Bool)

(assert (=> b!3035778 m!3369831))

(assert (=> b!3035784 m!3369585))

(assert (=> b!3035784 m!3369585))

(assert (=> b!3035784 m!3369587))

(assert (=> b!3035789 m!3369593))

(assert (=> d!851644 m!3369591))

(assert (=> d!851644 m!3369569))

(assert (=> b!3035104 d!851644))

(declare-fun d!851646 () Bool)

(assert (=> d!851646 (= (matchR!4319 r!17423 s!11993) (matchRSpec!1574 r!17423 s!11993))))

(declare-fun lt!1046720 () Unit!49297)

(declare-fun choose!18011 (Regex!9437 List!35302) Unit!49297)

(assert (=> d!851646 (= lt!1046720 (choose!18011 r!17423 s!11993))))

(assert (=> d!851646 (validRegex!4170 r!17423)))

(assert (=> d!851646 (= (mainMatchTheorem!1574 r!17423 s!11993) lt!1046720)))

(declare-fun bs!530931 () Bool)

(assert (= bs!530931 d!851646))

(assert (=> bs!530931 m!3369581))

(assert (=> bs!530931 m!3369579))

(declare-fun m!3369833 () Bool)

(assert (=> bs!530931 m!3369833))

(assert (=> bs!530931 m!3369569))

(assert (=> b!3035104 d!851646))

(declare-fun b!3035791 () Bool)

(declare-fun e!1903626 () Bool)

(declare-fun call!207235 () Bool)

(assert (=> b!3035791 (= e!1903626 call!207235)))

(declare-fun b!3035792 () Bool)

(declare-fun e!1903627 () Bool)

(declare-fun e!1903628 () Bool)

(assert (=> b!3035792 (= e!1903627 e!1903628)))

(declare-fun res!1248841 () Bool)

(assert (=> b!3035792 (= res!1248841 (not (nullable!3087 (reg!9766 lt!1046616))))))

(assert (=> b!3035792 (=> (not res!1248841) (not e!1903628))))

(declare-fun c!501952 () Bool)

(declare-fun c!501953 () Bool)

(declare-fun bm!207228 () Bool)

(declare-fun call!207233 () Bool)

(assert (=> bm!207228 (= call!207233 (validRegex!4170 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))

(declare-fun b!3035793 () Bool)

(declare-fun e!1903625 () Bool)

(assert (=> b!3035793 (= e!1903627 e!1903625)))

(assert (=> b!3035793 (= c!501952 ((_ is Union!9437) lt!1046616))))

(declare-fun d!851648 () Bool)

(declare-fun res!1248842 () Bool)

(declare-fun e!1903629 () Bool)

(assert (=> d!851648 (=> res!1248842 e!1903629)))

(assert (=> d!851648 (= res!1248842 ((_ is ElementMatch!9437) lt!1046616))))

(assert (=> d!851648 (= (validRegex!4170 lt!1046616) e!1903629)))

(declare-fun b!3035794 () Bool)

(assert (=> b!3035794 (= e!1903629 e!1903627)))

(assert (=> b!3035794 (= c!501953 ((_ is Star!9437) lt!1046616))))

(declare-fun bm!207229 () Bool)

(assert (=> bm!207229 (= call!207235 (validRegex!4170 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))

(declare-fun bm!207230 () Bool)

(declare-fun call!207234 () Bool)

(assert (=> bm!207230 (= call!207234 call!207233)))

(declare-fun b!3035795 () Bool)

(declare-fun e!1903630 () Bool)

(declare-fun e!1903624 () Bool)

(assert (=> b!3035795 (= e!1903630 e!1903624)))

(declare-fun res!1248844 () Bool)

(assert (=> b!3035795 (=> (not res!1248844) (not e!1903624))))

(assert (=> b!3035795 (= res!1248844 call!207235)))

(declare-fun b!3035796 () Bool)

(assert (=> b!3035796 (= e!1903624 call!207234)))

(declare-fun b!3035797 () Bool)

(declare-fun res!1248843 () Bool)

(assert (=> b!3035797 (=> (not res!1248843) (not e!1903626))))

(assert (=> b!3035797 (= res!1248843 call!207234)))

(assert (=> b!3035797 (= e!1903625 e!1903626)))

(declare-fun b!3035798 () Bool)

(assert (=> b!3035798 (= e!1903628 call!207233)))

(declare-fun b!3035799 () Bool)

(declare-fun res!1248845 () Bool)

(assert (=> b!3035799 (=> res!1248845 e!1903630)))

(assert (=> b!3035799 (= res!1248845 (not ((_ is Concat!14758) lt!1046616)))))

(assert (=> b!3035799 (= e!1903625 e!1903630)))

(assert (= (and d!851648 (not res!1248842)) b!3035794))

(assert (= (and b!3035794 c!501953) b!3035792))

(assert (= (and b!3035794 (not c!501953)) b!3035793))

(assert (= (and b!3035792 res!1248841) b!3035798))

(assert (= (and b!3035793 c!501952) b!3035797))

(assert (= (and b!3035793 (not c!501952)) b!3035799))

(assert (= (and b!3035797 res!1248843) b!3035791))

(assert (= (and b!3035799 (not res!1248845)) b!3035795))

(assert (= (and b!3035795 res!1248844) b!3035796))

(assert (= (or b!3035797 b!3035796) bm!207230))

(assert (= (or b!3035791 b!3035795) bm!207229))

(assert (= (or b!3035798 bm!207230) bm!207228))

(declare-fun m!3369835 () Bool)

(assert (=> b!3035792 m!3369835))

(declare-fun m!3369837 () Bool)

(assert (=> bm!207228 m!3369837))

(declare-fun m!3369839 () Bool)

(assert (=> bm!207229 m!3369839))

(assert (=> b!3035105 d!851648))

(declare-fun b!3035800 () Bool)

(declare-fun e!1903633 () Bool)

(declare-fun call!207238 () Bool)

(assert (=> b!3035800 (= e!1903633 call!207238)))

(declare-fun b!3035801 () Bool)

(declare-fun e!1903634 () Bool)

(declare-fun e!1903635 () Bool)

(assert (=> b!3035801 (= e!1903634 e!1903635)))

(declare-fun res!1248846 () Bool)

(assert (=> b!3035801 (= res!1248846 (not (nullable!3087 (reg!9766 lt!1046614))))))

(assert (=> b!3035801 (=> (not res!1248846) (not e!1903635))))

(declare-fun c!501954 () Bool)

(declare-fun c!501955 () Bool)

(declare-fun bm!207231 () Bool)

(declare-fun call!207236 () Bool)

(assert (=> bm!207231 (= call!207236 (validRegex!4170 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))

(declare-fun b!3035802 () Bool)

(declare-fun e!1903632 () Bool)

(assert (=> b!3035802 (= e!1903634 e!1903632)))

(assert (=> b!3035802 (= c!501954 ((_ is Union!9437) lt!1046614))))

(declare-fun d!851650 () Bool)

(declare-fun res!1248847 () Bool)

(declare-fun e!1903636 () Bool)

(assert (=> d!851650 (=> res!1248847 e!1903636)))

(assert (=> d!851650 (= res!1248847 ((_ is ElementMatch!9437) lt!1046614))))

(assert (=> d!851650 (= (validRegex!4170 lt!1046614) e!1903636)))

(declare-fun b!3035803 () Bool)

(assert (=> b!3035803 (= e!1903636 e!1903634)))

(assert (=> b!3035803 (= c!501955 ((_ is Star!9437) lt!1046614))))

(declare-fun bm!207232 () Bool)

(assert (=> bm!207232 (= call!207238 (validRegex!4170 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))

(declare-fun bm!207233 () Bool)

(declare-fun call!207237 () Bool)

(assert (=> bm!207233 (= call!207237 call!207236)))

(declare-fun b!3035804 () Bool)

(declare-fun e!1903637 () Bool)

(declare-fun e!1903631 () Bool)

(assert (=> b!3035804 (= e!1903637 e!1903631)))

(declare-fun res!1248849 () Bool)

(assert (=> b!3035804 (=> (not res!1248849) (not e!1903631))))

(assert (=> b!3035804 (= res!1248849 call!207238)))

(declare-fun b!3035805 () Bool)

(assert (=> b!3035805 (= e!1903631 call!207237)))

(declare-fun b!3035806 () Bool)

(declare-fun res!1248848 () Bool)

(assert (=> b!3035806 (=> (not res!1248848) (not e!1903633))))

(assert (=> b!3035806 (= res!1248848 call!207237)))

(assert (=> b!3035806 (= e!1903632 e!1903633)))

(declare-fun b!3035807 () Bool)

(assert (=> b!3035807 (= e!1903635 call!207236)))

(declare-fun b!3035808 () Bool)

(declare-fun res!1248850 () Bool)

(assert (=> b!3035808 (=> res!1248850 e!1903637)))

(assert (=> b!3035808 (= res!1248850 (not ((_ is Concat!14758) lt!1046614)))))

(assert (=> b!3035808 (= e!1903632 e!1903637)))

(assert (= (and d!851650 (not res!1248847)) b!3035803))

(assert (= (and b!3035803 c!501955) b!3035801))

(assert (= (and b!3035803 (not c!501955)) b!3035802))

(assert (= (and b!3035801 res!1248846) b!3035807))

(assert (= (and b!3035802 c!501954) b!3035806))

(assert (= (and b!3035802 (not c!501954)) b!3035808))

(assert (= (and b!3035806 res!1248848) b!3035800))

(assert (= (and b!3035808 (not res!1248850)) b!3035804))

(assert (= (and b!3035804 res!1248849) b!3035805))

(assert (= (or b!3035806 b!3035805) bm!207233))

(assert (= (or b!3035800 b!3035804) bm!207232))

(assert (= (or b!3035807 bm!207233) bm!207231))

(declare-fun m!3369841 () Bool)

(assert (=> b!3035801 m!3369841))

(declare-fun m!3369843 () Bool)

(assert (=> bm!207231 m!3369843))

(declare-fun m!3369845 () Bool)

(assert (=> bm!207232 m!3369845))

(assert (=> b!3035095 d!851650))

(declare-fun b!3035809 () Bool)

(declare-fun e!1903642 () Bool)

(declare-fun e!1903638 () Bool)

(assert (=> b!3035809 (= e!1903642 e!1903638)))

(declare-fun res!1248853 () Bool)

(assert (=> b!3035809 (=> (not res!1248853) (not e!1903638))))

(declare-fun lt!1046721 () Bool)

(assert (=> b!3035809 (= res!1248853 (not lt!1046721))))

(declare-fun e!1903640 () Bool)

(declare-fun b!3035810 () Bool)

(assert (=> b!3035810 (= e!1903640 (matchR!4319 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3035811 () Bool)

(declare-fun res!1248858 () Bool)

(assert (=> b!3035811 (=> res!1248858 e!1903642)))

(declare-fun e!1903641 () Bool)

(assert (=> b!3035811 (= res!1248858 e!1903641)))

(declare-fun res!1248855 () Bool)

(assert (=> b!3035811 (=> (not res!1248855) (not e!1903641))))

(assert (=> b!3035811 (= res!1248855 lt!1046721)))

(declare-fun b!3035812 () Bool)

(declare-fun e!1903644 () Bool)

(declare-fun e!1903643 () Bool)

(assert (=> b!3035812 (= e!1903644 e!1903643)))

(declare-fun c!501958 () Bool)

(assert (=> b!3035812 (= c!501958 ((_ is EmptyLang!9437) (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun b!3035813 () Bool)

(assert (=> b!3035813 (= e!1903641 (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046614 lt!1046616))))))

(declare-fun d!851652 () Bool)

(assert (=> d!851652 e!1903644))

(declare-fun c!501956 () Bool)

(assert (=> d!851652 (= c!501956 ((_ is EmptyExpr!9437) (Union!9437 lt!1046614 lt!1046616)))))

(assert (=> d!851652 (= lt!1046721 e!1903640)))

(declare-fun c!501957 () Bool)

(assert (=> d!851652 (= c!501957 (isEmpty!19478 s!11993))))

(assert (=> d!851652 (validRegex!4170 (Union!9437 lt!1046614 lt!1046616))))

(assert (=> d!851652 (= (matchR!4319 (Union!9437 lt!1046614 lt!1046616) s!11993) lt!1046721)))

(declare-fun bm!207234 () Bool)

(declare-fun call!207239 () Bool)

(assert (=> bm!207234 (= call!207239 (isEmpty!19478 s!11993))))

(declare-fun b!3035814 () Bool)

(assert (=> b!3035814 (= e!1903644 (= lt!1046721 call!207239))))

(declare-fun b!3035815 () Bool)

(assert (=> b!3035815 (= e!1903640 (nullable!3087 (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun b!3035816 () Bool)

(declare-fun res!1248857 () Bool)

(assert (=> b!3035816 (=> (not res!1248857) (not e!1903641))))

(assert (=> b!3035816 (= res!1248857 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035817 () Bool)

(declare-fun e!1903639 () Bool)

(assert (=> b!3035817 (= e!1903638 e!1903639)))

(declare-fun res!1248854 () Bool)

(assert (=> b!3035817 (=> res!1248854 e!1903639)))

(assert (=> b!3035817 (= res!1248854 call!207239)))

(declare-fun b!3035818 () Bool)

(declare-fun res!1248851 () Bool)

(assert (=> b!3035818 (=> (not res!1248851) (not e!1903641))))

(assert (=> b!3035818 (= res!1248851 (not call!207239))))

(declare-fun b!3035819 () Bool)

(declare-fun res!1248852 () Bool)

(assert (=> b!3035819 (=> res!1248852 e!1903642)))

(assert (=> b!3035819 (= res!1248852 (not ((_ is ElementMatch!9437) (Union!9437 lt!1046614 lt!1046616))))))

(assert (=> b!3035819 (= e!1903643 e!1903642)))

(declare-fun b!3035820 () Bool)

(declare-fun res!1248856 () Bool)

(assert (=> b!3035820 (=> res!1248856 e!1903639)))

(assert (=> b!3035820 (= res!1248856 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3035821 () Bool)

(assert (=> b!3035821 (= e!1903639 (not (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046614 lt!1046616)))))))

(declare-fun b!3035822 () Bool)

(assert (=> b!3035822 (= e!1903643 (not lt!1046721))))

(assert (= (and d!851652 c!501957) b!3035815))

(assert (= (and d!851652 (not c!501957)) b!3035810))

(assert (= (and d!851652 c!501956) b!3035814))

(assert (= (and d!851652 (not c!501956)) b!3035812))

(assert (= (and b!3035812 c!501958) b!3035822))

(assert (= (and b!3035812 (not c!501958)) b!3035819))

(assert (= (and b!3035819 (not res!1248852)) b!3035811))

(assert (= (and b!3035811 res!1248855) b!3035818))

(assert (= (and b!3035818 res!1248851) b!3035816))

(assert (= (and b!3035816 res!1248857) b!3035813))

(assert (= (and b!3035811 (not res!1248858)) b!3035809))

(assert (= (and b!3035809 res!1248853) b!3035817))

(assert (= (and b!3035817 (not res!1248854)) b!3035820))

(assert (= (and b!3035820 (not res!1248856)) b!3035821))

(assert (= (or b!3035814 b!3035817 b!3035818) bm!207234))

(assert (=> b!3035820 m!3369585))

(assert (=> b!3035820 m!3369585))

(assert (=> b!3035820 m!3369587))

(declare-fun m!3369847 () Bool)

(assert (=> b!3035815 m!3369847))

(assert (=> bm!207234 m!3369591))

(assert (=> b!3035813 m!3369593))

(assert (=> b!3035810 m!3369593))

(assert (=> b!3035810 m!3369593))

(declare-fun m!3369849 () Bool)

(assert (=> b!3035810 m!3369849))

(assert (=> b!3035810 m!3369585))

(assert (=> b!3035810 m!3369849))

(assert (=> b!3035810 m!3369585))

(declare-fun m!3369851 () Bool)

(assert (=> b!3035810 m!3369851))

(assert (=> b!3035816 m!3369585))

(assert (=> b!3035816 m!3369585))

(assert (=> b!3035816 m!3369587))

(assert (=> b!3035821 m!3369593))

(assert (=> d!851652 m!3369591))

(declare-fun m!3369853 () Bool)

(assert (=> d!851652 m!3369853))

(assert (=> b!3035095 d!851652))

(declare-fun d!851654 () Bool)

(assert (=> d!851654 (matchR!4319 (Union!9437 lt!1046614 lt!1046616) s!11993)))

(declare-fun lt!1046724 () Unit!49297)

(declare-fun choose!18013 (Regex!9437 Regex!9437 List!35302) Unit!49297)

(assert (=> d!851654 (= lt!1046724 (choose!18013 lt!1046614 lt!1046616 s!11993))))

(declare-fun e!1903647 () Bool)

(assert (=> d!851654 e!1903647))

(declare-fun res!1248861 () Bool)

(assert (=> d!851654 (=> (not res!1248861) (not e!1903647))))

(assert (=> d!851654 (= res!1248861 (validRegex!4170 lt!1046614))))

(assert (=> d!851654 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!78 lt!1046614 lt!1046616 s!11993) lt!1046724)))

(declare-fun b!3035825 () Bool)

(assert (=> b!3035825 (= e!1903647 (validRegex!4170 lt!1046616))))

(assert (= (and d!851654 res!1248861) b!3035825))

(assert (=> d!851654 m!3369563))

(declare-fun m!3369855 () Bool)

(assert (=> d!851654 m!3369855))

(assert (=> d!851654 m!3369561))

(assert (=> b!3035825 m!3369551))

(assert (=> b!3035095 d!851654))

(declare-fun b!3035826 () Bool)

(declare-fun e!1903654 () Regex!9437)

(declare-fun e!1903648 () Regex!9437)

(assert (=> b!3035826 (= e!1903654 e!1903648)))

(declare-fun lt!1046729 () Regex!9437)

(declare-fun call!207243 () Regex!9437)

(assert (=> b!3035826 (= lt!1046729 call!207243)))

(declare-fun lt!1046728 () Regex!9437)

(declare-fun call!207246 () Regex!9437)

(assert (=> b!3035826 (= lt!1046728 call!207246)))

(declare-fun c!501968 () Bool)

(declare-fun call!207244 () Bool)

(assert (=> b!3035826 (= c!501968 call!207244)))

(declare-fun b!3035827 () Bool)

(declare-fun e!1903657 () Regex!9437)

(declare-fun lt!1046730 () Regex!9437)

(declare-fun lt!1046726 () Regex!9437)

(assert (=> b!3035827 (= e!1903657 (Concat!14758 lt!1046730 lt!1046726))))

(declare-fun b!3035828 () Bool)

(declare-fun e!1903661 () Regex!9437)

(assert (=> b!3035828 (= e!1903661 EmptyLang!9437)))

(declare-fun d!851656 () Bool)

(declare-fun e!1903652 () Bool)

(assert (=> d!851656 e!1903652))

(declare-fun res!1248862 () Bool)

(assert (=> d!851656 (=> (not res!1248862) (not e!1903652))))

(declare-fun lt!1046725 () Regex!9437)

(assert (=> d!851656 (= res!1248862 (validRegex!4170 lt!1046725))))

(declare-fun e!1903659 () Regex!9437)

(assert (=> d!851656 (= lt!1046725 e!1903659)))

(declare-fun c!501959 () Bool)

(assert (=> d!851656 (= c!501959 ((_ is EmptyLang!9437) (regOne!19387 r!17423)))))

(assert (=> d!851656 (validRegex!4170 (regOne!19387 r!17423))))

(assert (=> d!851656 (= (simplify!404 (regOne!19387 r!17423)) lt!1046725)))

(declare-fun b!3035829 () Bool)

(assert (=> b!3035829 (= e!1903657 lt!1046730)))

(declare-fun b!3035830 () Bool)

(declare-fun e!1903660 () Regex!9437)

(assert (=> b!3035830 (= e!1903660 e!1903657)))

(declare-fun c!501961 () Bool)

(declare-fun call!207241 () Bool)

(assert (=> b!3035830 (= c!501961 call!207241)))

(declare-fun b!3035831 () Bool)

(assert (=> b!3035831 (= e!1903659 EmptyLang!9437)))

(declare-fun b!3035832 () Bool)

(declare-fun e!1903651 () Regex!9437)

(assert (=> b!3035832 (= e!1903651 EmptyExpr!9437)))

(declare-fun b!3035833 () Bool)

(assert (=> b!3035833 (= e!1903660 lt!1046726)))

(declare-fun c!501963 () Bool)

(declare-fun bm!207235 () Bool)

(assert (=> bm!207235 (= call!207244 (isEmptyLang!502 (ite c!501963 lt!1046729 lt!1046726)))))

(declare-fun b!3035834 () Bool)

(assert (=> b!3035834 (= e!1903652 (= (nullable!3087 lt!1046725) (nullable!3087 (regOne!19387 r!17423))))))

(declare-fun bm!207236 () Bool)

(declare-fun call!207245 () Bool)

(declare-fun call!207240 () Bool)

(assert (=> bm!207236 (= call!207245 call!207240)))

(declare-fun b!3035835 () Bool)

(declare-fun e!1903655 () Regex!9437)

(assert (=> b!3035835 (= e!1903659 e!1903655)))

(declare-fun c!501960 () Bool)

(assert (=> b!3035835 (= c!501960 ((_ is ElementMatch!9437) (regOne!19387 r!17423)))))

(declare-fun b!3035836 () Bool)

(declare-fun c!501965 () Bool)

(declare-fun e!1903649 () Bool)

(assert (=> b!3035836 (= c!501965 e!1903649)))

(declare-fun res!1248863 () Bool)

(assert (=> b!3035836 (=> res!1248863 e!1903649)))

(assert (=> b!3035836 (= res!1248863 call!207240)))

(declare-fun lt!1046727 () Regex!9437)

(declare-fun call!207242 () Regex!9437)

(assert (=> b!3035836 (= lt!1046727 call!207242)))

(declare-fun e!1903653 () Regex!9437)

(assert (=> b!3035836 (= e!1903653 e!1903651)))

(declare-fun b!3035837 () Bool)

(declare-fun e!1903650 () Regex!9437)

(assert (=> b!3035837 (= e!1903650 (Union!9437 lt!1046729 lt!1046728))))

(declare-fun b!3035838 () Bool)

(assert (=> b!3035838 (= e!1903654 e!1903661)))

(assert (=> b!3035838 (= lt!1046730 call!207246)))

(assert (=> b!3035838 (= lt!1046726 call!207243)))

(declare-fun res!1248864 () Bool)

(assert (=> b!3035838 (= res!1248864 call!207245)))

(declare-fun e!1903656 () Bool)

(assert (=> b!3035838 (=> res!1248864 e!1903656)))

(declare-fun c!501964 () Bool)

(assert (=> b!3035838 (= c!501964 e!1903656)))

(declare-fun b!3035839 () Bool)

(declare-fun c!501967 () Bool)

(assert (=> b!3035839 (= c!501967 call!207245)))

(assert (=> b!3035839 (= e!1903648 e!1903650)))

(declare-fun c!501966 () Bool)

(declare-fun bm!207237 () Bool)

(assert (=> bm!207237 (= call!207240 (isEmptyLang!502 (ite c!501966 lt!1046727 (ite c!501963 lt!1046728 lt!1046730))))))

(declare-fun b!3035840 () Bool)

(declare-fun e!1903658 () Regex!9437)

(assert (=> b!3035840 (= e!1903658 e!1903653)))

(assert (=> b!3035840 (= c!501966 ((_ is Star!9437) (regOne!19387 r!17423)))))

(declare-fun b!3035841 () Bool)

(assert (=> b!3035841 (= e!1903655 (regOne!19387 r!17423))))

(declare-fun b!3035842 () Bool)

(assert (=> b!3035842 (= c!501963 ((_ is Union!9437) (regOne!19387 r!17423)))))

(assert (=> b!3035842 (= e!1903653 e!1903654)))

(declare-fun bm!207238 () Bool)

(assert (=> bm!207238 (= call!207246 call!207242)))

(declare-fun bm!207239 () Bool)

(assert (=> bm!207239 (= call!207243 (simplify!404 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(declare-fun b!3035843 () Bool)

(declare-fun c!501962 () Bool)

(assert (=> b!3035843 (= c!501962 ((_ is EmptyExpr!9437) (regOne!19387 r!17423)))))

(assert (=> b!3035843 (= e!1903655 e!1903658)))

(declare-fun b!3035844 () Bool)

(assert (=> b!3035844 (= e!1903658 EmptyExpr!9437)))

(declare-fun b!3035845 () Bool)

(assert (=> b!3035845 (= e!1903650 lt!1046729)))

(declare-fun bm!207240 () Bool)

(assert (=> bm!207240 (= call!207242 (simplify!404 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(declare-fun b!3035846 () Bool)

(assert (=> b!3035846 (= e!1903649 call!207241)))

(declare-fun b!3035847 () Bool)

(assert (=> b!3035847 (= e!1903648 lt!1046728)))

(declare-fun b!3035848 () Bool)

(assert (=> b!3035848 (= e!1903656 call!207244)))

(declare-fun b!3035849 () Bool)

(declare-fun c!501969 () Bool)

(assert (=> b!3035849 (= c!501969 (isEmptyExpr!508 lt!1046730))))

(assert (=> b!3035849 (= e!1903661 e!1903660)))

(declare-fun bm!207241 () Bool)

(assert (=> bm!207241 (= call!207241 (isEmptyExpr!508 (ite c!501966 lt!1046727 lt!1046726)))))

(declare-fun b!3035850 () Bool)

(assert (=> b!3035850 (= e!1903651 (Star!9437 lt!1046727))))

(assert (= (and d!851656 c!501959) b!3035831))

(assert (= (and d!851656 (not c!501959)) b!3035835))

(assert (= (and b!3035835 c!501960) b!3035841))

(assert (= (and b!3035835 (not c!501960)) b!3035843))

(assert (= (and b!3035843 c!501962) b!3035844))

(assert (= (and b!3035843 (not c!501962)) b!3035840))

(assert (= (and b!3035840 c!501966) b!3035836))

(assert (= (and b!3035840 (not c!501966)) b!3035842))

(assert (= (and b!3035836 (not res!1248863)) b!3035846))

(assert (= (and b!3035836 c!501965) b!3035832))

(assert (= (and b!3035836 (not c!501965)) b!3035850))

(assert (= (and b!3035842 c!501963) b!3035826))

(assert (= (and b!3035842 (not c!501963)) b!3035838))

(assert (= (and b!3035826 c!501968) b!3035847))

(assert (= (and b!3035826 (not c!501968)) b!3035839))

(assert (= (and b!3035839 c!501967) b!3035845))

(assert (= (and b!3035839 (not c!501967)) b!3035837))

(assert (= (and b!3035838 (not res!1248864)) b!3035848))

(assert (= (and b!3035838 c!501964) b!3035828))

(assert (= (and b!3035838 (not c!501964)) b!3035849))

(assert (= (and b!3035849 c!501969) b!3035833))

(assert (= (and b!3035849 (not c!501969)) b!3035830))

(assert (= (and b!3035830 c!501961) b!3035829))

(assert (= (and b!3035830 (not c!501961)) b!3035827))

(assert (= (or b!3035826 b!3035838) bm!207239))

(assert (= (or b!3035826 b!3035838) bm!207238))

(assert (= (or b!3035839 b!3035838) bm!207236))

(assert (= (or b!3035826 b!3035848) bm!207235))

(assert (= (or b!3035846 b!3035830) bm!207241))

(assert (= (or b!3035836 bm!207238) bm!207240))

(assert (= (or b!3035836 bm!207236) bm!207237))

(assert (= (and d!851656 res!1248862) b!3035834))

(declare-fun m!3369857 () Bool)

(assert (=> b!3035834 m!3369857))

(assert (=> b!3035834 m!3369589))

(declare-fun m!3369859 () Bool)

(assert (=> bm!207241 m!3369859))

(declare-fun m!3369861 () Bool)

(assert (=> bm!207240 m!3369861))

(declare-fun m!3369863 () Bool)

(assert (=> bm!207237 m!3369863))

(declare-fun m!3369865 () Bool)

(assert (=> b!3035849 m!3369865))

(declare-fun m!3369867 () Bool)

(assert (=> d!851656 m!3369867))

(assert (=> d!851656 m!3369599))

(declare-fun m!3369869 () Bool)

(assert (=> bm!207235 m!3369869))

(declare-fun m!3369871 () Bool)

(assert (=> bm!207239 m!3369871))

(assert (=> b!3035095 d!851656))

(declare-fun b!3035855 () Bool)

(declare-fun e!1903664 () Bool)

(declare-fun tp!961462 () Bool)

(assert (=> b!3035855 (= e!1903664 (and tp_is_empty!16437 tp!961462))))

(assert (=> b!3035098 (= tp!961419 e!1903664)))

(assert (= (and b!3035098 ((_ is Cons!35178) (t!234367 s!11993))) b!3035855))

(declare-fun b!3035868 () Bool)

(declare-fun e!1903667 () Bool)

(declare-fun tp!961477 () Bool)

(assert (=> b!3035868 (= e!1903667 tp!961477)))

(declare-fun b!3035867 () Bool)

(declare-fun tp!961475 () Bool)

(declare-fun tp!961473 () Bool)

(assert (=> b!3035867 (= e!1903667 (and tp!961475 tp!961473))))

(declare-fun b!3035866 () Bool)

(assert (=> b!3035866 (= e!1903667 tp_is_empty!16437)))

(declare-fun b!3035869 () Bool)

(declare-fun tp!961474 () Bool)

(declare-fun tp!961476 () Bool)

(assert (=> b!3035869 (= e!1903667 (and tp!961474 tp!961476))))

(assert (=> b!3035094 (= tp!961420 e!1903667)))

(assert (= (and b!3035094 ((_ is ElementMatch!9437) (regOne!19387 r!17423))) b!3035866))

(assert (= (and b!3035094 ((_ is Concat!14758) (regOne!19387 r!17423))) b!3035867))

(assert (= (and b!3035094 ((_ is Star!9437) (regOne!19387 r!17423))) b!3035868))

(assert (= (and b!3035094 ((_ is Union!9437) (regOne!19387 r!17423))) b!3035869))

(declare-fun b!3035872 () Bool)

(declare-fun e!1903668 () Bool)

(declare-fun tp!961482 () Bool)

(assert (=> b!3035872 (= e!1903668 tp!961482)))

(declare-fun b!3035871 () Bool)

(declare-fun tp!961480 () Bool)

(declare-fun tp!961478 () Bool)

(assert (=> b!3035871 (= e!1903668 (and tp!961480 tp!961478))))

(declare-fun b!3035870 () Bool)

(assert (=> b!3035870 (= e!1903668 tp_is_empty!16437)))

(declare-fun b!3035873 () Bool)

(declare-fun tp!961479 () Bool)

(declare-fun tp!961481 () Bool)

(assert (=> b!3035873 (= e!1903668 (and tp!961479 tp!961481))))

(assert (=> b!3035094 (= tp!961418 e!1903668)))

(assert (= (and b!3035094 ((_ is ElementMatch!9437) (regTwo!19387 r!17423))) b!3035870))

(assert (= (and b!3035094 ((_ is Concat!14758) (regTwo!19387 r!17423))) b!3035871))

(assert (= (and b!3035094 ((_ is Star!9437) (regTwo!19387 r!17423))) b!3035872))

(assert (= (and b!3035094 ((_ is Union!9437) (regTwo!19387 r!17423))) b!3035873))

(declare-fun b!3035876 () Bool)

(declare-fun e!1903669 () Bool)

(declare-fun tp!961487 () Bool)

(assert (=> b!3035876 (= e!1903669 tp!961487)))

(declare-fun b!3035875 () Bool)

(declare-fun tp!961485 () Bool)

(declare-fun tp!961483 () Bool)

(assert (=> b!3035875 (= e!1903669 (and tp!961485 tp!961483))))

(declare-fun b!3035874 () Bool)

(assert (=> b!3035874 (= e!1903669 tp_is_empty!16437)))

(declare-fun b!3035877 () Bool)

(declare-fun tp!961484 () Bool)

(declare-fun tp!961486 () Bool)

(assert (=> b!3035877 (= e!1903669 (and tp!961484 tp!961486))))

(assert (=> b!3035099 (= tp!961421 e!1903669)))

(assert (= (and b!3035099 ((_ is ElementMatch!9437) (regOne!19386 r!17423))) b!3035874))

(assert (= (and b!3035099 ((_ is Concat!14758) (regOne!19386 r!17423))) b!3035875))

(assert (= (and b!3035099 ((_ is Star!9437) (regOne!19386 r!17423))) b!3035876))

(assert (= (and b!3035099 ((_ is Union!9437) (regOne!19386 r!17423))) b!3035877))

(declare-fun b!3035880 () Bool)

(declare-fun e!1903670 () Bool)

(declare-fun tp!961492 () Bool)

(assert (=> b!3035880 (= e!1903670 tp!961492)))

(declare-fun b!3035879 () Bool)

(declare-fun tp!961490 () Bool)

(declare-fun tp!961488 () Bool)

(assert (=> b!3035879 (= e!1903670 (and tp!961490 tp!961488))))

(declare-fun b!3035878 () Bool)

(assert (=> b!3035878 (= e!1903670 tp_is_empty!16437)))

(declare-fun b!3035881 () Bool)

(declare-fun tp!961489 () Bool)

(declare-fun tp!961491 () Bool)

(assert (=> b!3035881 (= e!1903670 (and tp!961489 tp!961491))))

(assert (=> b!3035099 (= tp!961417 e!1903670)))

(assert (= (and b!3035099 ((_ is ElementMatch!9437) (regTwo!19386 r!17423))) b!3035878))

(assert (= (and b!3035099 ((_ is Concat!14758) (regTwo!19386 r!17423))) b!3035879))

(assert (= (and b!3035099 ((_ is Star!9437) (regTwo!19386 r!17423))) b!3035880))

(assert (= (and b!3035099 ((_ is Union!9437) (regTwo!19386 r!17423))) b!3035881))

(declare-fun b!3035884 () Bool)

(declare-fun e!1903671 () Bool)

(declare-fun tp!961497 () Bool)

(assert (=> b!3035884 (= e!1903671 tp!961497)))

(declare-fun b!3035883 () Bool)

(declare-fun tp!961495 () Bool)

(declare-fun tp!961493 () Bool)

(assert (=> b!3035883 (= e!1903671 (and tp!961495 tp!961493))))

(declare-fun b!3035882 () Bool)

(assert (=> b!3035882 (= e!1903671 tp_is_empty!16437)))

(declare-fun b!3035885 () Bool)

(declare-fun tp!961494 () Bool)

(declare-fun tp!961496 () Bool)

(assert (=> b!3035885 (= e!1903671 (and tp!961494 tp!961496))))

(assert (=> b!3035100 (= tp!961416 e!1903671)))

(assert (= (and b!3035100 ((_ is ElementMatch!9437) (reg!9766 r!17423))) b!3035882))

(assert (= (and b!3035100 ((_ is Concat!14758) (reg!9766 r!17423))) b!3035883))

(assert (= (and b!3035100 ((_ is Star!9437) (reg!9766 r!17423))) b!3035884))

(assert (= (and b!3035100 ((_ is Union!9437) (reg!9766 r!17423))) b!3035885))

(check-sat (not d!851594) (not d!851644) (not b!3035202) (not b!3035495) (not b!3035788) (not b!3035834) (not b!3035505) (not b!3035813) (not b!3035825) (not b!3035194) (not b!3035883) (not b!3035876) (not b!3035778) (not b!3035168) (not bm!207180) (not d!851590) (not b!3035880) (not d!851586) (not bm!207235) (not b!3035873) (not b!3035801) (not b!3035211) (not b!3035169) (not bm!207234) (not bm!207226) (not b!3035438) (not d!851652) (not d!851620) (not b!3035821) (not b!3035174) (not d!851606) (not bm!207160) (not bm!207225) (not b!3035877) (not b!3035506) (not d!851656) (not b!3035214) (not bm!207212) (not b!3035869) (not b!3035875) (not b!3035816) (not b!3035879) (not b!3035444) tp_is_empty!16437 (not b!3035784) (not b!3035849) (not bm!207227) (not bm!207178) (not bm!207237) (not d!851646) (not bm!207164) (not b!3035195) (not b!3035216) (not bm!207185) (not d!851654) (not bm!207228) (not b!3035222) (not bm!207158) (not bm!207118) (not b!3035781) (not b!3035217) (not b!3035492) (not d!851602) (not b!3035871) (not bm!207231) (not b!3035221) (not b!3035498) (not d!851582) (not d!851616) (not b!3035197) (not b!3035388) (not b!3035792) (not b!3035648) (not b!3035884) (not b!3035208) (not bm!207119) (not b!3035373) (not bm!207239) (not b!3035166) (not b!3035501) (not b!3035443) (not b!3035203) (not b!3035436) (not b!3035872) (not bm!207241) (not bm!207183) (not b!3035173) (not b!3035855) (not bm!207184) (not bm!207173) (not b!3035597) (not b!3035500) (not b!3035789) (not bm!207232) (not b!3035762) (not bm!207116) (not bm!207240) (not b!3035163) (not bm!207211) (not d!851592) (not b!3035815) (not b!3035810) (not b!3035783) (not b!3035207) (not b!3035439) (not bm!207162) (not b!3035820) (not bm!207182) (not b!3035868) (not b!3035477) (not b!3035433) (not b!3035885) (not b!3035881) (not bm!207163) (not d!851612) (not bm!207229) (not b!3035867) (not b!3035769) (not b!3035200))
(check-sat)
(get-model)

(declare-fun d!851658 () Bool)

(assert (=> d!851658 (= (isEmpty!19478 s!11993) ((_ is Nil!35178) s!11993))))

(assert (=> d!851644 d!851658))

(assert (=> d!851644 d!851630))

(declare-fun b!3035886 () Bool)

(declare-fun e!1903678 () Regex!9437)

(declare-fun e!1903672 () Regex!9437)

(assert (=> b!3035886 (= e!1903678 e!1903672)))

(declare-fun lt!1046735 () Regex!9437)

(declare-fun call!207250 () Regex!9437)

(assert (=> b!3035886 (= lt!1046735 call!207250)))

(declare-fun lt!1046734 () Regex!9437)

(declare-fun call!207253 () Regex!9437)

(assert (=> b!3035886 (= lt!1046734 call!207253)))

(declare-fun c!501979 () Bool)

(declare-fun call!207251 () Bool)

(assert (=> b!3035886 (= c!501979 call!207251)))

(declare-fun b!3035887 () Bool)

(declare-fun e!1903681 () Regex!9437)

(declare-fun lt!1046736 () Regex!9437)

(declare-fun lt!1046732 () Regex!9437)

(assert (=> b!3035887 (= e!1903681 (Concat!14758 lt!1046736 lt!1046732))))

(declare-fun b!3035888 () Bool)

(declare-fun e!1903685 () Regex!9437)

(assert (=> b!3035888 (= e!1903685 EmptyLang!9437)))

(declare-fun d!851660 () Bool)

(declare-fun e!1903676 () Bool)

(assert (=> d!851660 e!1903676))

(declare-fun res!1248865 () Bool)

(assert (=> d!851660 (=> (not res!1248865) (not e!1903676))))

(declare-fun lt!1046731 () Regex!9437)

(assert (=> d!851660 (= res!1248865 (validRegex!4170 lt!1046731))))

(declare-fun e!1903683 () Regex!9437)

(assert (=> d!851660 (= lt!1046731 e!1903683)))

(declare-fun c!501970 () Bool)

(assert (=> d!851660 (= c!501970 ((_ is EmptyLang!9437) (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(assert (=> d!851660 (validRegex!4170 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))))))

(assert (=> d!851660 (= (simplify!404 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))) lt!1046731)))

(declare-fun b!3035889 () Bool)

(assert (=> b!3035889 (= e!1903681 lt!1046736)))

(declare-fun b!3035890 () Bool)

(declare-fun e!1903684 () Regex!9437)

(assert (=> b!3035890 (= e!1903684 e!1903681)))

(declare-fun c!501972 () Bool)

(declare-fun call!207248 () Bool)

(assert (=> b!3035890 (= c!501972 call!207248)))

(declare-fun b!3035891 () Bool)

(assert (=> b!3035891 (= e!1903683 EmptyLang!9437)))

(declare-fun b!3035892 () Bool)

(declare-fun e!1903675 () Regex!9437)

(assert (=> b!3035892 (= e!1903675 EmptyExpr!9437)))

(declare-fun b!3035893 () Bool)

(assert (=> b!3035893 (= e!1903684 lt!1046732)))

(declare-fun c!501974 () Bool)

(declare-fun bm!207242 () Bool)

(assert (=> bm!207242 (= call!207251 (isEmptyLang!502 (ite c!501974 lt!1046735 lt!1046732)))))

(declare-fun b!3035894 () Bool)

(assert (=> b!3035894 (= e!1903676 (= (nullable!3087 lt!1046731) (nullable!3087 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))))))))

(declare-fun bm!207243 () Bool)

(declare-fun call!207252 () Bool)

(declare-fun call!207247 () Bool)

(assert (=> bm!207243 (= call!207252 call!207247)))

(declare-fun b!3035895 () Bool)

(declare-fun e!1903679 () Regex!9437)

(assert (=> b!3035895 (= e!1903683 e!1903679)))

(declare-fun c!501971 () Bool)

(assert (=> b!3035895 (= c!501971 ((_ is ElementMatch!9437) (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(declare-fun b!3035896 () Bool)

(declare-fun c!501976 () Bool)

(declare-fun e!1903673 () Bool)

(assert (=> b!3035896 (= c!501976 e!1903673)))

(declare-fun res!1248866 () Bool)

(assert (=> b!3035896 (=> res!1248866 e!1903673)))

(assert (=> b!3035896 (= res!1248866 call!207247)))

(declare-fun lt!1046733 () Regex!9437)

(declare-fun call!207249 () Regex!9437)

(assert (=> b!3035896 (= lt!1046733 call!207249)))

(declare-fun e!1903677 () Regex!9437)

(assert (=> b!3035896 (= e!1903677 e!1903675)))

(declare-fun b!3035897 () Bool)

(declare-fun e!1903674 () Regex!9437)

(assert (=> b!3035897 (= e!1903674 (Union!9437 lt!1046735 lt!1046734))))

(declare-fun b!3035898 () Bool)

(assert (=> b!3035898 (= e!1903678 e!1903685)))

(assert (=> b!3035898 (= lt!1046736 call!207253)))

(assert (=> b!3035898 (= lt!1046732 call!207250)))

(declare-fun res!1248867 () Bool)

(assert (=> b!3035898 (= res!1248867 call!207252)))

(declare-fun e!1903680 () Bool)

(assert (=> b!3035898 (=> res!1248867 e!1903680)))

(declare-fun c!501975 () Bool)

(assert (=> b!3035898 (= c!501975 e!1903680)))

(declare-fun b!3035899 () Bool)

(declare-fun c!501978 () Bool)

(assert (=> b!3035899 (= c!501978 call!207252)))

(assert (=> b!3035899 (= e!1903672 e!1903674)))

(declare-fun bm!207244 () Bool)

(declare-fun c!501977 () Bool)

(assert (=> bm!207244 (= call!207247 (isEmptyLang!502 (ite c!501977 lt!1046733 (ite c!501974 lt!1046734 lt!1046736))))))

(declare-fun b!3035900 () Bool)

(declare-fun e!1903682 () Regex!9437)

(assert (=> b!3035900 (= e!1903682 e!1903677)))

(assert (=> b!3035900 (= c!501977 ((_ is Star!9437) (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(declare-fun b!3035901 () Bool)

(assert (=> b!3035901 (= e!1903679 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))))))

(declare-fun b!3035902 () Bool)

(assert (=> b!3035902 (= c!501974 ((_ is Union!9437) (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(assert (=> b!3035902 (= e!1903677 e!1903678)))

(declare-fun bm!207245 () Bool)

(assert (=> bm!207245 (= call!207253 call!207249)))

(declare-fun bm!207246 () Bool)

(assert (=> bm!207246 (= call!207250 (simplify!404 (ite c!501974 (regOne!19387 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))) (regTwo!19386 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))))

(declare-fun b!3035903 () Bool)

(declare-fun c!501973 () Bool)

(assert (=> b!3035903 (= c!501973 ((_ is EmptyExpr!9437) (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))))))

(assert (=> b!3035903 (= e!1903679 e!1903682)))

(declare-fun b!3035904 () Bool)

(assert (=> b!3035904 (= e!1903682 EmptyExpr!9437)))

(declare-fun b!3035905 () Bool)

(assert (=> b!3035905 (= e!1903674 lt!1046735)))

(declare-fun bm!207247 () Bool)

(assert (=> bm!207247 (= call!207249 (simplify!404 (ite c!501977 (reg!9766 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))) (ite c!501974 (regTwo!19387 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))) (regOne!19386 (ite c!501963 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))))))))))

(declare-fun b!3035906 () Bool)

(assert (=> b!3035906 (= e!1903673 call!207248)))

(declare-fun b!3035907 () Bool)

(assert (=> b!3035907 (= e!1903672 lt!1046734)))

(declare-fun b!3035908 () Bool)

(assert (=> b!3035908 (= e!1903680 call!207251)))

(declare-fun b!3035909 () Bool)

(declare-fun c!501980 () Bool)

(assert (=> b!3035909 (= c!501980 (isEmptyExpr!508 lt!1046736))))

(assert (=> b!3035909 (= e!1903685 e!1903684)))

(declare-fun bm!207248 () Bool)

(assert (=> bm!207248 (= call!207248 (isEmptyExpr!508 (ite c!501977 lt!1046733 lt!1046732)))))

(declare-fun b!3035910 () Bool)

(assert (=> b!3035910 (= e!1903675 (Star!9437 lt!1046733))))

(assert (= (and d!851660 c!501970) b!3035891))

(assert (= (and d!851660 (not c!501970)) b!3035895))

(assert (= (and b!3035895 c!501971) b!3035901))

(assert (= (and b!3035895 (not c!501971)) b!3035903))

(assert (= (and b!3035903 c!501973) b!3035904))

(assert (= (and b!3035903 (not c!501973)) b!3035900))

(assert (= (and b!3035900 c!501977) b!3035896))

(assert (= (and b!3035900 (not c!501977)) b!3035902))

(assert (= (and b!3035896 (not res!1248866)) b!3035906))

(assert (= (and b!3035896 c!501976) b!3035892))

(assert (= (and b!3035896 (not c!501976)) b!3035910))

(assert (= (and b!3035902 c!501974) b!3035886))

(assert (= (and b!3035902 (not c!501974)) b!3035898))

(assert (= (and b!3035886 c!501979) b!3035907))

(assert (= (and b!3035886 (not c!501979)) b!3035899))

(assert (= (and b!3035899 c!501978) b!3035905))

(assert (= (and b!3035899 (not c!501978)) b!3035897))

(assert (= (and b!3035898 (not res!1248867)) b!3035908))

(assert (= (and b!3035898 c!501975) b!3035888))

(assert (= (and b!3035898 (not c!501975)) b!3035909))

(assert (= (and b!3035909 c!501980) b!3035893))

(assert (= (and b!3035909 (not c!501980)) b!3035890))

(assert (= (and b!3035890 c!501972) b!3035889))

(assert (= (and b!3035890 (not c!501972)) b!3035887))

(assert (= (or b!3035886 b!3035898) bm!207246))

(assert (= (or b!3035886 b!3035898) bm!207245))

(assert (= (or b!3035899 b!3035898) bm!207243))

(assert (= (or b!3035886 b!3035908) bm!207242))

(assert (= (or b!3035906 b!3035890) bm!207248))

(assert (= (or b!3035896 bm!207245) bm!207247))

(assert (= (or b!3035896 bm!207243) bm!207244))

(assert (= (and d!851660 res!1248865) b!3035894))

(declare-fun m!3369873 () Bool)

(assert (=> b!3035894 m!3369873))

(declare-fun m!3369875 () Bool)

(assert (=> b!3035894 m!3369875))

(declare-fun m!3369877 () Bool)

(assert (=> bm!207248 m!3369877))

(declare-fun m!3369879 () Bool)

(assert (=> bm!207247 m!3369879))

(declare-fun m!3369881 () Bool)

(assert (=> bm!207244 m!3369881))

(declare-fun m!3369883 () Bool)

(assert (=> b!3035909 m!3369883))

(declare-fun m!3369885 () Bool)

(assert (=> d!851660 m!3369885))

(declare-fun m!3369887 () Bool)

(assert (=> d!851660 m!3369887))

(declare-fun m!3369889 () Bool)

(assert (=> bm!207242 m!3369889))

(declare-fun m!3369891 () Bool)

(assert (=> bm!207246 m!3369891))

(assert (=> bm!207239 d!851660))

(declare-fun d!851662 () Bool)

(assert (=> d!851662 (= (isEmpty!19478 (tail!4969 s!11993)) ((_ is Nil!35178) (tail!4969 s!11993)))))

(assert (=> b!3035217 d!851662))

(declare-fun d!851664 () Bool)

(assert (=> d!851664 (= (tail!4969 s!11993) (t!234367 s!11993))))

(assert (=> b!3035217 d!851664))

(declare-fun d!851666 () Bool)

(assert (=> d!851666 (= (isEmptyExpr!508 lt!1046664) ((_ is EmptyExpr!9437) lt!1046664))))

(assert (=> b!3035388 d!851666))

(assert (=> b!3035597 d!851648))

(assert (=> b!3035207 d!851662))

(assert (=> b!3035207 d!851664))

(declare-fun d!851668 () Bool)

(assert (=> d!851668 (= (head!6743 s!11993) (h!40598 s!11993))))

(assert (=> b!3035214 d!851668))

(assert (=> b!3035203 d!851662))

(assert (=> b!3035203 d!851664))

(declare-fun b!3035911 () Bool)

(declare-fun e!1903688 () Bool)

(declare-fun call!207256 () Bool)

(assert (=> b!3035911 (= e!1903688 call!207256)))

(declare-fun b!3035912 () Bool)

(declare-fun e!1903689 () Bool)

(declare-fun e!1903690 () Bool)

(assert (=> b!3035912 (= e!1903689 e!1903690)))

(declare-fun res!1248868 () Bool)

(assert (=> b!3035912 (= res!1248868 (not (nullable!3087 (reg!9766 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))))

(assert (=> b!3035912 (=> (not res!1248868) (not e!1903690))))

(declare-fun c!501982 () Bool)

(declare-fun c!501981 () Bool)

(declare-fun bm!207249 () Bool)

(declare-fun call!207254 () Bool)

(assert (=> bm!207249 (= call!207254 (validRegex!4170 (ite c!501982 (reg!9766 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))) (ite c!501981 (regOne!19387 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))) (regTwo!19386 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))))))

(declare-fun b!3035913 () Bool)

(declare-fun e!1903687 () Bool)

(assert (=> b!3035913 (= e!1903689 e!1903687)))

(assert (=> b!3035913 (= c!501981 ((_ is Union!9437) (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))

(declare-fun d!851670 () Bool)

(declare-fun res!1248869 () Bool)

(declare-fun e!1903691 () Bool)

(assert (=> d!851670 (=> res!1248869 e!1903691)))

(assert (=> d!851670 (= res!1248869 ((_ is ElementMatch!9437) (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))

(assert (=> d!851670 (= (validRegex!4170 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))) e!1903691)))

(declare-fun b!3035914 () Bool)

(assert (=> b!3035914 (= e!1903691 e!1903689)))

(assert (=> b!3035914 (= c!501982 ((_ is Star!9437) (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))

(declare-fun bm!207250 () Bool)

(assert (=> bm!207250 (= call!207256 (validRegex!4170 (ite c!501981 (regTwo!19387 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))) (regOne!19386 (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))))

(declare-fun bm!207251 () Bool)

(declare-fun call!207255 () Bool)

(assert (=> bm!207251 (= call!207255 call!207254)))

(declare-fun b!3035915 () Bool)

(declare-fun e!1903692 () Bool)

(declare-fun e!1903686 () Bool)

(assert (=> b!3035915 (= e!1903692 e!1903686)))

(declare-fun res!1248871 () Bool)

(assert (=> b!3035915 (=> (not res!1248871) (not e!1903686))))

(assert (=> b!3035915 (= res!1248871 call!207256)))

(declare-fun b!3035916 () Bool)

(assert (=> b!3035916 (= e!1903686 call!207255)))

(declare-fun b!3035917 () Bool)

(declare-fun res!1248870 () Bool)

(assert (=> b!3035917 (=> (not res!1248870) (not e!1903688))))

(assert (=> b!3035917 (= res!1248870 call!207255)))

(assert (=> b!3035917 (= e!1903687 e!1903688)))

(declare-fun b!3035918 () Bool)

(assert (=> b!3035918 (= e!1903690 call!207254)))

(declare-fun b!3035919 () Bool)

(declare-fun res!1248872 () Bool)

(assert (=> b!3035919 (=> res!1248872 e!1903692)))

(assert (=> b!3035919 (= res!1248872 (not ((_ is Concat!14758) (ite c!501929 (reg!9766 r!17423) (ite c!501928 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))))

(assert (=> b!3035919 (= e!1903687 e!1903692)))

(assert (= (and d!851670 (not res!1248869)) b!3035914))

(assert (= (and b!3035914 c!501982) b!3035912))

(assert (= (and b!3035914 (not c!501982)) b!3035913))

(assert (= (and b!3035912 res!1248868) b!3035918))

(assert (= (and b!3035913 c!501981) b!3035917))

(assert (= (and b!3035913 (not c!501981)) b!3035919))

(assert (= (and b!3035917 res!1248870) b!3035911))

(assert (= (and b!3035919 (not res!1248872)) b!3035915))

(assert (= (and b!3035915 res!1248871) b!3035916))

(assert (= (or b!3035917 b!3035916) bm!207251))

(assert (= (or b!3035911 b!3035915) bm!207250))

(assert (= (or b!3035918 bm!207251) bm!207249))

(declare-fun m!3369893 () Bool)

(assert (=> b!3035912 m!3369893))

(declare-fun m!3369895 () Bool)

(assert (=> bm!207249 m!3369895))

(declare-fun m!3369897 () Bool)

(assert (=> bm!207250 m!3369897))

(assert (=> bm!207211 d!851670))

(declare-fun d!851672 () Bool)

(declare-fun nullableFct!878 (Regex!9437) Bool)

(assert (=> d!851672 (= (nullable!3087 (reg!9766 lt!1046614)) (nullableFct!878 (reg!9766 lt!1046614)))))

(declare-fun bs!530932 () Bool)

(assert (= bs!530932 d!851672))

(declare-fun m!3369899 () Bool)

(assert (=> bs!530932 m!3369899))

(assert (=> b!3035801 d!851672))

(assert (=> d!851616 d!851658))

(declare-fun b!3035920 () Bool)

(declare-fun e!1903695 () Bool)

(declare-fun call!207259 () Bool)

(assert (=> b!3035920 (= e!1903695 call!207259)))

(declare-fun b!3035921 () Bool)

(declare-fun e!1903696 () Bool)

(declare-fun e!1903697 () Bool)

(assert (=> b!3035921 (= e!1903696 e!1903697)))

(declare-fun res!1248873 () Bool)

(assert (=> b!3035921 (= res!1248873 (not (nullable!3087 (reg!9766 (Union!9437 lt!1046616 lt!1046614)))))))

(assert (=> b!3035921 (=> (not res!1248873) (not e!1903697))))

(declare-fun c!501983 () Bool)

(declare-fun bm!207252 () Bool)

(declare-fun c!501984 () Bool)

(declare-fun call!207257 () Bool)

(assert (=> bm!207252 (= call!207257 (validRegex!4170 (ite c!501984 (reg!9766 (Union!9437 lt!1046616 lt!1046614)) (ite c!501983 (regOne!19387 (Union!9437 lt!1046616 lt!1046614)) (regTwo!19386 (Union!9437 lt!1046616 lt!1046614))))))))

(declare-fun b!3035922 () Bool)

(declare-fun e!1903694 () Bool)

(assert (=> b!3035922 (= e!1903696 e!1903694)))

(assert (=> b!3035922 (= c!501983 ((_ is Union!9437) (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun d!851674 () Bool)

(declare-fun res!1248874 () Bool)

(declare-fun e!1903698 () Bool)

(assert (=> d!851674 (=> res!1248874 e!1903698)))

(assert (=> d!851674 (= res!1248874 ((_ is ElementMatch!9437) (Union!9437 lt!1046616 lt!1046614)))))

(assert (=> d!851674 (= (validRegex!4170 (Union!9437 lt!1046616 lt!1046614)) e!1903698)))

(declare-fun b!3035923 () Bool)

(assert (=> b!3035923 (= e!1903698 e!1903696)))

(assert (=> b!3035923 (= c!501984 ((_ is Star!9437) (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun bm!207253 () Bool)

(assert (=> bm!207253 (= call!207259 (validRegex!4170 (ite c!501983 (regTwo!19387 (Union!9437 lt!1046616 lt!1046614)) (regOne!19386 (Union!9437 lt!1046616 lt!1046614)))))))

(declare-fun bm!207254 () Bool)

(declare-fun call!207258 () Bool)

(assert (=> bm!207254 (= call!207258 call!207257)))

(declare-fun b!3035924 () Bool)

(declare-fun e!1903699 () Bool)

(declare-fun e!1903693 () Bool)

(assert (=> b!3035924 (= e!1903699 e!1903693)))

(declare-fun res!1248876 () Bool)

(assert (=> b!3035924 (=> (not res!1248876) (not e!1903693))))

(assert (=> b!3035924 (= res!1248876 call!207259)))

(declare-fun b!3035925 () Bool)

(assert (=> b!3035925 (= e!1903693 call!207258)))

(declare-fun b!3035926 () Bool)

(declare-fun res!1248875 () Bool)

(assert (=> b!3035926 (=> (not res!1248875) (not e!1903695))))

(assert (=> b!3035926 (= res!1248875 call!207258)))

(assert (=> b!3035926 (= e!1903694 e!1903695)))

(declare-fun b!3035927 () Bool)

(assert (=> b!3035927 (= e!1903697 call!207257)))

(declare-fun b!3035928 () Bool)

(declare-fun res!1248877 () Bool)

(assert (=> b!3035928 (=> res!1248877 e!1903699)))

(assert (=> b!3035928 (= res!1248877 (not ((_ is Concat!14758) (Union!9437 lt!1046616 lt!1046614))))))

(assert (=> b!3035928 (= e!1903694 e!1903699)))

(assert (= (and d!851674 (not res!1248874)) b!3035923))

(assert (= (and b!3035923 c!501984) b!3035921))

(assert (= (and b!3035923 (not c!501984)) b!3035922))

(assert (= (and b!3035921 res!1248873) b!3035927))

(assert (= (and b!3035922 c!501983) b!3035926))

(assert (= (and b!3035922 (not c!501983)) b!3035928))

(assert (= (and b!3035926 res!1248875) b!3035920))

(assert (= (and b!3035928 (not res!1248877)) b!3035924))

(assert (= (and b!3035924 res!1248876) b!3035925))

(assert (= (or b!3035926 b!3035925) bm!207254))

(assert (= (or b!3035920 b!3035924) bm!207253))

(assert (= (or b!3035927 bm!207254) bm!207252))

(declare-fun m!3369901 () Bool)

(assert (=> b!3035921 m!3369901))

(declare-fun m!3369903 () Bool)

(assert (=> bm!207252 m!3369903))

(declare-fun m!3369905 () Bool)

(assert (=> bm!207253 m!3369905))

(assert (=> d!851616 d!851674))

(assert (=> d!851654 d!851652))

(declare-fun d!851676 () Bool)

(assert (=> d!851676 (matchR!4319 (Union!9437 lt!1046614 lt!1046616) s!11993)))

(assert (=> d!851676 true))

(declare-fun _$115!507 () Unit!49297)

(assert (=> d!851676 (= (choose!18013 lt!1046614 lt!1046616 s!11993) _$115!507)))

(declare-fun bs!530933 () Bool)

(assert (= bs!530933 d!851676))

(assert (=> bs!530933 m!3369563))

(assert (=> d!851654 d!851676))

(assert (=> d!851654 d!851650))

(declare-fun b!3035929 () Bool)

(declare-fun e!1903702 () Bool)

(declare-fun call!207262 () Bool)

(assert (=> b!3035929 (= e!1903702 call!207262)))

(declare-fun b!3035930 () Bool)

(declare-fun e!1903703 () Bool)

(declare-fun e!1903704 () Bool)

(assert (=> b!3035930 (= e!1903703 e!1903704)))

(declare-fun res!1248878 () Bool)

(assert (=> b!3035930 (= res!1248878 (not (nullable!3087 (reg!9766 lt!1046725))))))

(assert (=> b!3035930 (=> (not res!1248878) (not e!1903704))))

(declare-fun c!501986 () Bool)

(declare-fun call!207260 () Bool)

(declare-fun bm!207255 () Bool)

(declare-fun c!501985 () Bool)

(assert (=> bm!207255 (= call!207260 (validRegex!4170 (ite c!501986 (reg!9766 lt!1046725) (ite c!501985 (regOne!19387 lt!1046725) (regTwo!19386 lt!1046725)))))))

(declare-fun b!3035931 () Bool)

(declare-fun e!1903701 () Bool)

(assert (=> b!3035931 (= e!1903703 e!1903701)))

(assert (=> b!3035931 (= c!501985 ((_ is Union!9437) lt!1046725))))

(declare-fun d!851678 () Bool)

(declare-fun res!1248879 () Bool)

(declare-fun e!1903705 () Bool)

(assert (=> d!851678 (=> res!1248879 e!1903705)))

(assert (=> d!851678 (= res!1248879 ((_ is ElementMatch!9437) lt!1046725))))

(assert (=> d!851678 (= (validRegex!4170 lt!1046725) e!1903705)))

(declare-fun b!3035932 () Bool)

(assert (=> b!3035932 (= e!1903705 e!1903703)))

(assert (=> b!3035932 (= c!501986 ((_ is Star!9437) lt!1046725))))

(declare-fun bm!207256 () Bool)

(assert (=> bm!207256 (= call!207262 (validRegex!4170 (ite c!501985 (regTwo!19387 lt!1046725) (regOne!19386 lt!1046725))))))

(declare-fun bm!207257 () Bool)

(declare-fun call!207261 () Bool)

(assert (=> bm!207257 (= call!207261 call!207260)))

(declare-fun b!3035933 () Bool)

(declare-fun e!1903706 () Bool)

(declare-fun e!1903700 () Bool)

(assert (=> b!3035933 (= e!1903706 e!1903700)))

(declare-fun res!1248881 () Bool)

(assert (=> b!3035933 (=> (not res!1248881) (not e!1903700))))

(assert (=> b!3035933 (= res!1248881 call!207262)))

(declare-fun b!3035934 () Bool)

(assert (=> b!3035934 (= e!1903700 call!207261)))

(declare-fun b!3035935 () Bool)

(declare-fun res!1248880 () Bool)

(assert (=> b!3035935 (=> (not res!1248880) (not e!1903702))))

(assert (=> b!3035935 (= res!1248880 call!207261)))

(assert (=> b!3035935 (= e!1903701 e!1903702)))

(declare-fun b!3035936 () Bool)

(assert (=> b!3035936 (= e!1903704 call!207260)))

(declare-fun b!3035937 () Bool)

(declare-fun res!1248882 () Bool)

(assert (=> b!3035937 (=> res!1248882 e!1903706)))

(assert (=> b!3035937 (= res!1248882 (not ((_ is Concat!14758) lt!1046725)))))

(assert (=> b!3035937 (= e!1903701 e!1903706)))

(assert (= (and d!851678 (not res!1248879)) b!3035932))

(assert (= (and b!3035932 c!501986) b!3035930))

(assert (= (and b!3035932 (not c!501986)) b!3035931))

(assert (= (and b!3035930 res!1248878) b!3035936))

(assert (= (and b!3035931 c!501985) b!3035935))

(assert (= (and b!3035931 (not c!501985)) b!3035937))

(assert (= (and b!3035935 res!1248880) b!3035929))

(assert (= (and b!3035937 (not res!1248882)) b!3035933))

(assert (= (and b!3035933 res!1248881) b!3035934))

(assert (= (or b!3035935 b!3035934) bm!207257))

(assert (= (or b!3035929 b!3035933) bm!207256))

(assert (= (or b!3035936 bm!207257) bm!207255))

(declare-fun m!3369907 () Bool)

(assert (=> b!3035930 m!3369907))

(declare-fun m!3369909 () Bool)

(assert (=> bm!207255 m!3369909))

(declare-fun m!3369911 () Bool)

(assert (=> bm!207256 m!3369911))

(assert (=> d!851656 d!851678))

(declare-fun b!3035938 () Bool)

(declare-fun e!1903709 () Bool)

(declare-fun call!207265 () Bool)

(assert (=> b!3035938 (= e!1903709 call!207265)))

(declare-fun b!3035939 () Bool)

(declare-fun e!1903710 () Bool)

(declare-fun e!1903711 () Bool)

(assert (=> b!3035939 (= e!1903710 e!1903711)))

(declare-fun res!1248883 () Bool)

(assert (=> b!3035939 (= res!1248883 (not (nullable!3087 (reg!9766 (regOne!19387 r!17423)))))))

(assert (=> b!3035939 (=> (not res!1248883) (not e!1903711))))

(declare-fun bm!207258 () Bool)

(declare-fun call!207263 () Bool)

(declare-fun c!501988 () Bool)

(declare-fun c!501987 () Bool)

(assert (=> bm!207258 (= call!207263 (validRegex!4170 (ite c!501988 (reg!9766 (regOne!19387 r!17423)) (ite c!501987 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))))))))

(declare-fun b!3035940 () Bool)

(declare-fun e!1903708 () Bool)

(assert (=> b!3035940 (= e!1903710 e!1903708)))

(assert (=> b!3035940 (= c!501987 ((_ is Union!9437) (regOne!19387 r!17423)))))

(declare-fun d!851680 () Bool)

(declare-fun res!1248884 () Bool)

(declare-fun e!1903712 () Bool)

(assert (=> d!851680 (=> res!1248884 e!1903712)))

(assert (=> d!851680 (= res!1248884 ((_ is ElementMatch!9437) (regOne!19387 r!17423)))))

(assert (=> d!851680 (= (validRegex!4170 (regOne!19387 r!17423)) e!1903712)))

(declare-fun b!3035941 () Bool)

(assert (=> b!3035941 (= e!1903712 e!1903710)))

(assert (=> b!3035941 (= c!501988 ((_ is Star!9437) (regOne!19387 r!17423)))))

(declare-fun bm!207259 () Bool)

(assert (=> bm!207259 (= call!207265 (validRegex!4170 (ite c!501987 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))))))

(declare-fun bm!207260 () Bool)

(declare-fun call!207264 () Bool)

(assert (=> bm!207260 (= call!207264 call!207263)))

(declare-fun b!3035942 () Bool)

(declare-fun e!1903713 () Bool)

(declare-fun e!1903707 () Bool)

(assert (=> b!3035942 (= e!1903713 e!1903707)))

(declare-fun res!1248886 () Bool)

(assert (=> b!3035942 (=> (not res!1248886) (not e!1903707))))

(assert (=> b!3035942 (= res!1248886 call!207265)))

(declare-fun b!3035943 () Bool)

(assert (=> b!3035943 (= e!1903707 call!207264)))

(declare-fun b!3035944 () Bool)

(declare-fun res!1248885 () Bool)

(assert (=> b!3035944 (=> (not res!1248885) (not e!1903709))))

(assert (=> b!3035944 (= res!1248885 call!207264)))

(assert (=> b!3035944 (= e!1903708 e!1903709)))

(declare-fun b!3035945 () Bool)

(assert (=> b!3035945 (= e!1903711 call!207263)))

(declare-fun b!3035946 () Bool)

(declare-fun res!1248887 () Bool)

(assert (=> b!3035946 (=> res!1248887 e!1903713)))

(assert (=> b!3035946 (= res!1248887 (not ((_ is Concat!14758) (regOne!19387 r!17423))))))

(assert (=> b!3035946 (= e!1903708 e!1903713)))

(assert (= (and d!851680 (not res!1248884)) b!3035941))

(assert (= (and b!3035941 c!501988) b!3035939))

(assert (= (and b!3035941 (not c!501988)) b!3035940))

(assert (= (and b!3035939 res!1248883) b!3035945))

(assert (= (and b!3035940 c!501987) b!3035944))

(assert (= (and b!3035940 (not c!501987)) b!3035946))

(assert (= (and b!3035944 res!1248885) b!3035938))

(assert (= (and b!3035946 (not res!1248887)) b!3035942))

(assert (= (and b!3035942 res!1248886) b!3035943))

(assert (= (or b!3035944 b!3035943) bm!207260))

(assert (= (or b!3035938 b!3035942) bm!207259))

(assert (= (or b!3035945 bm!207260) bm!207258))

(declare-fun m!3369913 () Bool)

(assert (=> b!3035939 m!3369913))

(declare-fun m!3369915 () Bool)

(assert (=> bm!207258 m!3369915))

(declare-fun m!3369917 () Bool)

(assert (=> bm!207259 m!3369917))

(assert (=> d!851656 d!851680))

(assert (=> b!3035173 d!851662))

(assert (=> b!3035173 d!851664))

(assert (=> b!3035825 d!851648))

(declare-fun b!3035947 () Bool)

(declare-fun e!1903718 () Bool)

(declare-fun e!1903714 () Bool)

(assert (=> b!3035947 (= e!1903718 e!1903714)))

(declare-fun res!1248890 () Bool)

(assert (=> b!3035947 (=> (not res!1248890) (not e!1903714))))

(declare-fun lt!1046737 () Bool)

(assert (=> b!3035947 (= res!1248890 (not lt!1046737))))

(declare-fun b!3035948 () Bool)

(declare-fun e!1903716 () Bool)

(assert (=> b!3035948 (= e!1903716 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3035949 () Bool)

(declare-fun res!1248895 () Bool)

(assert (=> b!3035949 (=> res!1248895 e!1903718)))

(declare-fun e!1903717 () Bool)

(assert (=> b!3035949 (= res!1248895 e!1903717)))

(declare-fun res!1248892 () Bool)

(assert (=> b!3035949 (=> (not res!1248892) (not e!1903717))))

(assert (=> b!3035949 (= res!1248892 lt!1046737)))

(declare-fun b!3035950 () Bool)

(declare-fun e!1903720 () Bool)

(declare-fun e!1903719 () Bool)

(assert (=> b!3035950 (= e!1903720 e!1903719)))

(declare-fun c!501991 () Bool)

(assert (=> b!3035950 (= c!501991 ((_ is EmptyLang!9437) (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993))))))

(declare-fun b!3035951 () Bool)

(assert (=> b!3035951 (= e!1903717 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)))))))

(declare-fun d!851682 () Bool)

(assert (=> d!851682 e!1903720))

(declare-fun c!501989 () Bool)

(assert (=> d!851682 (= c!501989 ((_ is EmptyExpr!9437) (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993))))))

(assert (=> d!851682 (= lt!1046737 e!1903716)))

(declare-fun c!501990 () Bool)

(assert (=> d!851682 (= c!501990 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851682 (validRegex!4170 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)))))

(assert (=> d!851682 (= (matchR!4319 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046737)))

(declare-fun bm!207261 () Bool)

(declare-fun call!207266 () Bool)

(assert (=> bm!207261 (= call!207266 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3035952 () Bool)

(assert (=> b!3035952 (= e!1903720 (= lt!1046737 call!207266))))

(declare-fun b!3035953 () Bool)

(assert (=> b!3035953 (= e!1903716 (nullable!3087 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993))))))

(declare-fun b!3035954 () Bool)

(declare-fun res!1248894 () Bool)

(assert (=> b!3035954 (=> (not res!1248894) (not e!1903717))))

(assert (=> b!3035954 (= res!1248894 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3035955 () Bool)

(declare-fun e!1903715 () Bool)

(assert (=> b!3035955 (= e!1903714 e!1903715)))

(declare-fun res!1248891 () Bool)

(assert (=> b!3035955 (=> res!1248891 e!1903715)))

(assert (=> b!3035955 (= res!1248891 call!207266)))

(declare-fun b!3035956 () Bool)

(declare-fun res!1248888 () Bool)

(assert (=> b!3035956 (=> (not res!1248888) (not e!1903717))))

(assert (=> b!3035956 (= res!1248888 (not call!207266))))

(declare-fun b!3035957 () Bool)

(declare-fun res!1248889 () Bool)

(assert (=> b!3035957 (=> res!1248889 e!1903718)))

(assert (=> b!3035957 (= res!1248889 (not ((_ is ElementMatch!9437) (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)))))))

(assert (=> b!3035957 (= e!1903719 e!1903718)))

(declare-fun b!3035958 () Bool)

(declare-fun res!1248893 () Bool)

(assert (=> b!3035958 (=> res!1248893 e!1903715)))

(assert (=> b!3035958 (= res!1248893 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3035959 () Bool)

(assert (=> b!3035959 (= e!1903715 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993))))))))

(declare-fun b!3035960 () Bool)

(assert (=> b!3035960 (= e!1903719 (not lt!1046737))))

(assert (= (and d!851682 c!501990) b!3035953))

(assert (= (and d!851682 (not c!501990)) b!3035948))

(assert (= (and d!851682 c!501989) b!3035952))

(assert (= (and d!851682 (not c!501989)) b!3035950))

(assert (= (and b!3035950 c!501991) b!3035960))

(assert (= (and b!3035950 (not c!501991)) b!3035957))

(assert (= (and b!3035957 (not res!1248889)) b!3035949))

(assert (= (and b!3035949 res!1248892) b!3035956))

(assert (= (and b!3035956 res!1248888) b!3035954))

(assert (= (and b!3035954 res!1248894) b!3035951))

(assert (= (and b!3035949 (not res!1248895)) b!3035947))

(assert (= (and b!3035947 res!1248890) b!3035955))

(assert (= (and b!3035955 (not res!1248891)) b!3035958))

(assert (= (and b!3035958 (not res!1248893)) b!3035959))

(assert (= (or b!3035952 b!3035955 b!3035956) bm!207261))

(assert (=> b!3035958 m!3369585))

(declare-fun m!3369919 () Bool)

(assert (=> b!3035958 m!3369919))

(assert (=> b!3035958 m!3369919))

(declare-fun m!3369921 () Bool)

(assert (=> b!3035958 m!3369921))

(assert (=> b!3035953 m!3369629))

(declare-fun m!3369923 () Bool)

(assert (=> b!3035953 m!3369923))

(assert (=> bm!207261 m!3369585))

(assert (=> bm!207261 m!3369587))

(assert (=> b!3035951 m!3369585))

(declare-fun m!3369925 () Bool)

(assert (=> b!3035951 m!3369925))

(assert (=> b!3035948 m!3369585))

(assert (=> b!3035948 m!3369925))

(assert (=> b!3035948 m!3369629))

(assert (=> b!3035948 m!3369925))

(declare-fun m!3369927 () Bool)

(assert (=> b!3035948 m!3369927))

(assert (=> b!3035948 m!3369585))

(assert (=> b!3035948 m!3369919))

(assert (=> b!3035948 m!3369927))

(assert (=> b!3035948 m!3369919))

(declare-fun m!3369929 () Bool)

(assert (=> b!3035948 m!3369929))

(assert (=> b!3035954 m!3369585))

(assert (=> b!3035954 m!3369919))

(assert (=> b!3035954 m!3369919))

(assert (=> b!3035954 m!3369921))

(assert (=> b!3035959 m!3369585))

(assert (=> b!3035959 m!3369925))

(assert (=> d!851682 m!3369585))

(assert (=> d!851682 m!3369587))

(assert (=> d!851682 m!3369629))

(declare-fun m!3369931 () Bool)

(assert (=> d!851682 m!3369931))

(assert (=> b!3035211 d!851682))

(declare-fun b!3035981 () Bool)

(declare-fun e!1903732 () Regex!9437)

(declare-fun call!207275 () Regex!9437)

(assert (=> b!3035981 (= e!1903732 (Union!9437 (Concat!14758 call!207275 (regTwo!19386 (regTwo!19387 r!17423))) EmptyLang!9437))))

(declare-fun b!3035982 () Bool)

(declare-fun e!1903735 () Regex!9437)

(declare-fun call!207276 () Regex!9437)

(declare-fun call!207278 () Regex!9437)

(assert (=> b!3035982 (= e!1903735 (Union!9437 call!207276 call!207278))))

(declare-fun b!3035983 () Bool)

(declare-fun e!1903734 () Regex!9437)

(assert (=> b!3035983 (= e!1903734 EmptyLang!9437)))

(declare-fun b!3035985 () Bool)

(declare-fun e!1903731 () Regex!9437)

(assert (=> b!3035985 (= e!1903734 e!1903731)))

(declare-fun c!502005 () Bool)

(assert (=> b!3035985 (= c!502005 ((_ is ElementMatch!9437) (regTwo!19387 r!17423)))))

(declare-fun bm!207270 () Bool)

(declare-fun c!502002 () Bool)

(declare-fun c!502003 () Bool)

(assert (=> bm!207270 (= call!207278 (derivativeStep!2684 (ite c!502002 (regTwo!19387 (regTwo!19387 r!17423)) (ite c!502003 (reg!9766 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))) (head!6743 s!11993)))))

(declare-fun b!3035986 () Bool)

(declare-fun e!1903733 () Regex!9437)

(declare-fun call!207277 () Regex!9437)

(assert (=> b!3035986 (= e!1903733 (Concat!14758 call!207277 (regTwo!19387 r!17423)))))

(declare-fun bm!207271 () Bool)

(assert (=> bm!207271 (= call!207277 call!207278)))

(declare-fun b!3035987 () Bool)

(assert (=> b!3035987 (= e!1903731 (ite (= (head!6743 s!11993) (c!501761 (regTwo!19387 r!17423))) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3035988 () Bool)

(assert (=> b!3035988 (= e!1903735 e!1903733)))

(assert (=> b!3035988 (= c!502003 ((_ is Star!9437) (regTwo!19387 r!17423)))))

(declare-fun b!3035984 () Bool)

(assert (=> b!3035984 (= e!1903732 (Union!9437 (Concat!14758 call!207275 (regTwo!19386 (regTwo!19387 r!17423))) call!207276))))

(declare-fun d!851684 () Bool)

(declare-fun lt!1046740 () Regex!9437)

(assert (=> d!851684 (validRegex!4170 lt!1046740)))

(assert (=> d!851684 (= lt!1046740 e!1903734)))

(declare-fun c!502004 () Bool)

(assert (=> d!851684 (= c!502004 (or ((_ is EmptyExpr!9437) (regTwo!19387 r!17423)) ((_ is EmptyLang!9437) (regTwo!19387 r!17423))))))

(assert (=> d!851684 (validRegex!4170 (regTwo!19387 r!17423))))

(assert (=> d!851684 (= (derivativeStep!2684 (regTwo!19387 r!17423) (head!6743 s!11993)) lt!1046740)))

(declare-fun b!3035989 () Bool)

(assert (=> b!3035989 (= c!502002 ((_ is Union!9437) (regTwo!19387 r!17423)))))

(assert (=> b!3035989 (= e!1903731 e!1903735)))

(declare-fun bm!207272 () Bool)

(assert (=> bm!207272 (= call!207276 (derivativeStep!2684 (ite c!502002 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))) (head!6743 s!11993)))))

(declare-fun b!3035990 () Bool)

(declare-fun c!502006 () Bool)

(assert (=> b!3035990 (= c!502006 (nullable!3087 (regOne!19386 (regTwo!19387 r!17423))))))

(assert (=> b!3035990 (= e!1903733 e!1903732)))

(declare-fun bm!207273 () Bool)

(assert (=> bm!207273 (= call!207275 call!207277)))

(assert (= (and d!851684 c!502004) b!3035983))

(assert (= (and d!851684 (not c!502004)) b!3035985))

(assert (= (and b!3035985 c!502005) b!3035987))

(assert (= (and b!3035985 (not c!502005)) b!3035989))

(assert (= (and b!3035989 c!502002) b!3035982))

(assert (= (and b!3035989 (not c!502002)) b!3035988))

(assert (= (and b!3035988 c!502003) b!3035986))

(assert (= (and b!3035988 (not c!502003)) b!3035990))

(assert (= (and b!3035990 c!502006) b!3035984))

(assert (= (and b!3035990 (not c!502006)) b!3035981))

(assert (= (or b!3035984 b!3035981) bm!207273))

(assert (= (or b!3035986 bm!207273) bm!207271))

(assert (= (or b!3035982 bm!207271) bm!207270))

(assert (= (or b!3035982 b!3035984) bm!207272))

(assert (=> bm!207270 m!3369593))

(declare-fun m!3369933 () Bool)

(assert (=> bm!207270 m!3369933))

(declare-fun m!3369935 () Bool)

(assert (=> d!851684 m!3369935))

(assert (=> d!851684 m!3369619))

(assert (=> bm!207272 m!3369593))

(declare-fun m!3369937 () Bool)

(assert (=> bm!207272 m!3369937))

(declare-fun m!3369939 () Bool)

(assert (=> b!3035990 m!3369939))

(assert (=> b!3035211 d!851684))

(assert (=> b!3035211 d!851668))

(assert (=> b!3035211 d!851664))

(declare-fun b!3035991 () Bool)

(declare-fun e!1903742 () Regex!9437)

(declare-fun e!1903736 () Regex!9437)

(assert (=> b!3035991 (= e!1903742 e!1903736)))

(declare-fun lt!1046745 () Regex!9437)

(declare-fun call!207282 () Regex!9437)

(assert (=> b!3035991 (= lt!1046745 call!207282)))

(declare-fun lt!1046744 () Regex!9437)

(declare-fun call!207285 () Regex!9437)

(assert (=> b!3035991 (= lt!1046744 call!207285)))

(declare-fun c!502016 () Bool)

(declare-fun call!207283 () Bool)

(assert (=> b!3035991 (= c!502016 call!207283)))

(declare-fun b!3035992 () Bool)

(declare-fun e!1903745 () Regex!9437)

(declare-fun lt!1046746 () Regex!9437)

(declare-fun lt!1046742 () Regex!9437)

(assert (=> b!3035992 (= e!1903745 (Concat!14758 lt!1046746 lt!1046742))))

(declare-fun b!3035993 () Bool)

(declare-fun e!1903749 () Regex!9437)

(assert (=> b!3035993 (= e!1903749 EmptyLang!9437)))

(declare-fun d!851686 () Bool)

(declare-fun e!1903740 () Bool)

(assert (=> d!851686 e!1903740))

(declare-fun res!1248896 () Bool)

(assert (=> d!851686 (=> (not res!1248896) (not e!1903740))))

(declare-fun lt!1046741 () Regex!9437)

(assert (=> d!851686 (= res!1248896 (validRegex!4170 lt!1046741))))

(declare-fun e!1903747 () Regex!9437)

(assert (=> d!851686 (= lt!1046741 e!1903747)))

(declare-fun c!502007 () Bool)

(assert (=> d!851686 (= c!502007 ((_ is EmptyLang!9437) (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(assert (=> d!851686 (validRegex!4170 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))))))

(assert (=> d!851686 (= (simplify!404 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))) lt!1046741)))

(declare-fun b!3035994 () Bool)

(assert (=> b!3035994 (= e!1903745 lt!1046746)))

(declare-fun b!3035995 () Bool)

(declare-fun e!1903748 () Regex!9437)

(assert (=> b!3035995 (= e!1903748 e!1903745)))

(declare-fun c!502009 () Bool)

(declare-fun call!207280 () Bool)

(assert (=> b!3035995 (= c!502009 call!207280)))

(declare-fun b!3035996 () Bool)

(assert (=> b!3035996 (= e!1903747 EmptyLang!9437)))

(declare-fun b!3035997 () Bool)

(declare-fun e!1903739 () Regex!9437)

(assert (=> b!3035997 (= e!1903739 EmptyExpr!9437)))

(declare-fun b!3035998 () Bool)

(assert (=> b!3035998 (= e!1903748 lt!1046742)))

(declare-fun bm!207274 () Bool)

(declare-fun c!502011 () Bool)

(assert (=> bm!207274 (= call!207283 (isEmptyLang!502 (ite c!502011 lt!1046745 lt!1046742)))))

(declare-fun b!3035999 () Bool)

(assert (=> b!3035999 (= e!1903740 (= (nullable!3087 lt!1046741) (nullable!3087 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))))))))

(declare-fun bm!207275 () Bool)

(declare-fun call!207284 () Bool)

(declare-fun call!207279 () Bool)

(assert (=> bm!207275 (= call!207284 call!207279)))

(declare-fun b!3036000 () Bool)

(declare-fun e!1903743 () Regex!9437)

(assert (=> b!3036000 (= e!1903747 e!1903743)))

(declare-fun c!502008 () Bool)

(assert (=> b!3036000 (= c!502008 ((_ is ElementMatch!9437) (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(declare-fun b!3036001 () Bool)

(declare-fun c!502013 () Bool)

(declare-fun e!1903737 () Bool)

(assert (=> b!3036001 (= c!502013 e!1903737)))

(declare-fun res!1248897 () Bool)

(assert (=> b!3036001 (=> res!1248897 e!1903737)))

(assert (=> b!3036001 (= res!1248897 call!207279)))

(declare-fun lt!1046743 () Regex!9437)

(declare-fun call!207281 () Regex!9437)

(assert (=> b!3036001 (= lt!1046743 call!207281)))

(declare-fun e!1903741 () Regex!9437)

(assert (=> b!3036001 (= e!1903741 e!1903739)))

(declare-fun b!3036002 () Bool)

(declare-fun e!1903738 () Regex!9437)

(assert (=> b!3036002 (= e!1903738 (Union!9437 lt!1046745 lt!1046744))))

(declare-fun b!3036003 () Bool)

(assert (=> b!3036003 (= e!1903742 e!1903749)))

(assert (=> b!3036003 (= lt!1046746 call!207285)))

(assert (=> b!3036003 (= lt!1046742 call!207282)))

(declare-fun res!1248898 () Bool)

(assert (=> b!3036003 (= res!1248898 call!207284)))

(declare-fun e!1903744 () Bool)

(assert (=> b!3036003 (=> res!1248898 e!1903744)))

(declare-fun c!502012 () Bool)

(assert (=> b!3036003 (= c!502012 e!1903744)))

(declare-fun b!3036004 () Bool)

(declare-fun c!502015 () Bool)

(assert (=> b!3036004 (= c!502015 call!207284)))

(assert (=> b!3036004 (= e!1903736 e!1903738)))

(declare-fun bm!207276 () Bool)

(declare-fun c!502014 () Bool)

(assert (=> bm!207276 (= call!207279 (isEmptyLang!502 (ite c!502014 lt!1046743 (ite c!502011 lt!1046744 lt!1046746))))))

(declare-fun b!3036005 () Bool)

(declare-fun e!1903746 () Regex!9437)

(assert (=> b!3036005 (= e!1903746 e!1903741)))

(assert (=> b!3036005 (= c!502014 ((_ is Star!9437) (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(declare-fun b!3036006 () Bool)

(assert (=> b!3036006 (= e!1903743 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))))))

(declare-fun b!3036007 () Bool)

(assert (=> b!3036007 (= c!502011 ((_ is Union!9437) (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(assert (=> b!3036007 (= e!1903741 e!1903742)))

(declare-fun bm!207277 () Bool)

(assert (=> bm!207277 (= call!207285 call!207281)))

(declare-fun bm!207278 () Bool)

(assert (=> bm!207278 (= call!207282 (simplify!404 (ite c!502011 (regOne!19387 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))) (regTwo!19386 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))))

(declare-fun b!3036008 () Bool)

(declare-fun c!502010 () Bool)

(assert (=> b!3036008 (= c!502010 ((_ is EmptyExpr!9437) (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))))))

(assert (=> b!3036008 (= e!1903743 e!1903746)))

(declare-fun b!3036009 () Bool)

(assert (=> b!3036009 (= e!1903746 EmptyExpr!9437)))

(declare-fun b!3036010 () Bool)

(assert (=> b!3036010 (= e!1903738 lt!1046745)))

(declare-fun bm!207279 () Bool)

(assert (=> bm!207279 (= call!207281 (simplify!404 (ite c!502014 (reg!9766 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))) (ite c!502011 (regTwo!19387 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423))))) (regOne!19386 (ite c!501846 (reg!9766 (regTwo!19387 r!17423)) (ite c!501843 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))))))))))

(declare-fun b!3036011 () Bool)

(assert (=> b!3036011 (= e!1903737 call!207280)))

(declare-fun b!3036012 () Bool)

(assert (=> b!3036012 (= e!1903736 lt!1046744)))

(declare-fun b!3036013 () Bool)

(assert (=> b!3036013 (= e!1903744 call!207283)))

(declare-fun b!3036014 () Bool)

(declare-fun c!502017 () Bool)

(assert (=> b!3036014 (= c!502017 (isEmptyExpr!508 lt!1046746))))

(assert (=> b!3036014 (= e!1903749 e!1903748)))

(declare-fun bm!207280 () Bool)

(assert (=> bm!207280 (= call!207280 (isEmptyExpr!508 (ite c!502014 lt!1046743 lt!1046742)))))

(declare-fun b!3036015 () Bool)

(assert (=> b!3036015 (= e!1903739 (Star!9437 lt!1046743))))

(assert (= (and d!851686 c!502007) b!3035996))

(assert (= (and d!851686 (not c!502007)) b!3036000))

(assert (= (and b!3036000 c!502008) b!3036006))

(assert (= (and b!3036000 (not c!502008)) b!3036008))

(assert (= (and b!3036008 c!502010) b!3036009))

(assert (= (and b!3036008 (not c!502010)) b!3036005))

(assert (= (and b!3036005 c!502014) b!3036001))

(assert (= (and b!3036005 (not c!502014)) b!3036007))

(assert (= (and b!3036001 (not res!1248897)) b!3036011))

(assert (= (and b!3036001 c!502013) b!3035997))

(assert (= (and b!3036001 (not c!502013)) b!3036015))

(assert (= (and b!3036007 c!502011) b!3035991))

(assert (= (and b!3036007 (not c!502011)) b!3036003))

(assert (= (and b!3035991 c!502016) b!3036012))

(assert (= (and b!3035991 (not c!502016)) b!3036004))

(assert (= (and b!3036004 c!502015) b!3036010))

(assert (= (and b!3036004 (not c!502015)) b!3036002))

(assert (= (and b!3036003 (not res!1248898)) b!3036013))

(assert (= (and b!3036003 c!502012) b!3035993))

(assert (= (and b!3036003 (not c!502012)) b!3036014))

(assert (= (and b!3036014 c!502017) b!3035998))

(assert (= (and b!3036014 (not c!502017)) b!3035995))

(assert (= (and b!3035995 c!502009) b!3035994))

(assert (= (and b!3035995 (not c!502009)) b!3035992))

(assert (= (or b!3035991 b!3036003) bm!207278))

(assert (= (or b!3035991 b!3036003) bm!207277))

(assert (= (or b!3036004 b!3036003) bm!207275))

(assert (= (or b!3035991 b!3036013) bm!207274))

(assert (= (or b!3036011 b!3035995) bm!207280))

(assert (= (or b!3036001 bm!207277) bm!207279))

(assert (= (or b!3036001 bm!207275) bm!207276))

(assert (= (and d!851686 res!1248896) b!3035999))

(declare-fun m!3369941 () Bool)

(assert (=> b!3035999 m!3369941))

(declare-fun m!3369943 () Bool)

(assert (=> b!3035999 m!3369943))

(declare-fun m!3369945 () Bool)

(assert (=> bm!207280 m!3369945))

(declare-fun m!3369947 () Bool)

(assert (=> bm!207279 m!3369947))

(declare-fun m!3369949 () Bool)

(assert (=> bm!207276 m!3369949))

(declare-fun m!3369951 () Bool)

(assert (=> b!3036014 m!3369951))

(declare-fun m!3369953 () Bool)

(assert (=> d!851686 m!3369953))

(declare-fun m!3369955 () Bool)

(assert (=> d!851686 m!3369955))

(declare-fun m!3369957 () Bool)

(assert (=> bm!207274 m!3369957))

(declare-fun m!3369959 () Bool)

(assert (=> bm!207278 m!3369959))

(assert (=> bm!207163 d!851686))

(assert (=> b!3035200 d!851668))

(assert (=> b!3035505 d!851662))

(assert (=> b!3035505 d!851664))

(assert (=> b!3035501 d!851662))

(assert (=> b!3035501 d!851664))

(declare-fun b!3036016 () Bool)

(declare-fun e!1903752 () Bool)

(declare-fun call!207288 () Bool)

(assert (=> b!3036016 (= e!1903752 call!207288)))

(declare-fun b!3036017 () Bool)

(declare-fun e!1903753 () Bool)

(declare-fun e!1903754 () Bool)

(assert (=> b!3036017 (= e!1903753 e!1903754)))

(declare-fun res!1248899 () Bool)

(assert (=> b!3036017 (= res!1248899 (not (nullable!3087 (reg!9766 (regTwo!19387 r!17423)))))))

(assert (=> b!3036017 (=> (not res!1248899) (not e!1903754))))

(declare-fun c!502018 () Bool)

(declare-fun call!207286 () Bool)

(declare-fun bm!207281 () Bool)

(declare-fun c!502019 () Bool)

(assert (=> bm!207281 (= call!207286 (validRegex!4170 (ite c!502019 (reg!9766 (regTwo!19387 r!17423)) (ite c!502018 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))))))))

(declare-fun b!3036018 () Bool)

(declare-fun e!1903751 () Bool)

(assert (=> b!3036018 (= e!1903753 e!1903751)))

(assert (=> b!3036018 (= c!502018 ((_ is Union!9437) (regTwo!19387 r!17423)))))

(declare-fun d!851688 () Bool)

(declare-fun res!1248900 () Bool)

(declare-fun e!1903755 () Bool)

(assert (=> d!851688 (=> res!1248900 e!1903755)))

(assert (=> d!851688 (= res!1248900 ((_ is ElementMatch!9437) (regTwo!19387 r!17423)))))

(assert (=> d!851688 (= (validRegex!4170 (regTwo!19387 r!17423)) e!1903755)))

(declare-fun b!3036019 () Bool)

(assert (=> b!3036019 (= e!1903755 e!1903753)))

(assert (=> b!3036019 (= c!502019 ((_ is Star!9437) (regTwo!19387 r!17423)))))

(declare-fun bm!207282 () Bool)

(assert (=> bm!207282 (= call!207288 (validRegex!4170 (ite c!502018 (regTwo!19387 (regTwo!19387 r!17423)) (regOne!19386 (regTwo!19387 r!17423)))))))

(declare-fun bm!207283 () Bool)

(declare-fun call!207287 () Bool)

(assert (=> bm!207283 (= call!207287 call!207286)))

(declare-fun b!3036020 () Bool)

(declare-fun e!1903756 () Bool)

(declare-fun e!1903750 () Bool)

(assert (=> b!3036020 (= e!1903756 e!1903750)))

(declare-fun res!1248902 () Bool)

(assert (=> b!3036020 (=> (not res!1248902) (not e!1903750))))

(assert (=> b!3036020 (= res!1248902 call!207288)))

(declare-fun b!3036021 () Bool)

(assert (=> b!3036021 (= e!1903750 call!207287)))

(declare-fun b!3036022 () Bool)

(declare-fun res!1248901 () Bool)

(assert (=> b!3036022 (=> (not res!1248901) (not e!1903752))))

(assert (=> b!3036022 (= res!1248901 call!207287)))

(assert (=> b!3036022 (= e!1903751 e!1903752)))

(declare-fun b!3036023 () Bool)

(assert (=> b!3036023 (= e!1903754 call!207286)))

(declare-fun b!3036024 () Bool)

(declare-fun res!1248903 () Bool)

(assert (=> b!3036024 (=> res!1248903 e!1903756)))

(assert (=> b!3036024 (= res!1248903 (not ((_ is Concat!14758) (regTwo!19387 r!17423))))))

(assert (=> b!3036024 (= e!1903751 e!1903756)))

(assert (= (and d!851688 (not res!1248900)) b!3036019))

(assert (= (and b!3036019 c!502019) b!3036017))

(assert (= (and b!3036019 (not c!502019)) b!3036018))

(assert (= (and b!3036017 res!1248899) b!3036023))

(assert (= (and b!3036018 c!502018) b!3036022))

(assert (= (and b!3036018 (not c!502018)) b!3036024))

(assert (= (and b!3036022 res!1248901) b!3036016))

(assert (= (and b!3036024 (not res!1248903)) b!3036020))

(assert (= (and b!3036020 res!1248902) b!3036021))

(assert (= (or b!3036022 b!3036021) bm!207283))

(assert (= (or b!3036016 b!3036020) bm!207282))

(assert (= (or b!3036023 bm!207283) bm!207281))

(declare-fun m!3369961 () Bool)

(assert (=> b!3036017 m!3369961))

(declare-fun m!3369963 () Bool)

(assert (=> bm!207281 m!3369963))

(declare-fun m!3369965 () Bool)

(assert (=> bm!207282 m!3369965))

(assert (=> d!851602 d!851688))

(assert (=> d!851602 d!851592))

(declare-fun b!3036025 () Bool)

(declare-fun e!1903761 () Bool)

(declare-fun e!1903757 () Bool)

(assert (=> b!3036025 (= e!1903761 e!1903757)))

(declare-fun res!1248906 () Bool)

(assert (=> b!3036025 (=> (not res!1248906) (not e!1903757))))

(declare-fun lt!1046747 () Bool)

(assert (=> b!3036025 (= res!1248906 (not lt!1046747))))

(declare-fun b!3036026 () Bool)

(declare-fun e!1903759 () Bool)

(assert (=> b!3036026 (= e!1903759 (matchR!4319 (derivativeStep!2684 (simplify!404 (regTwo!19387 r!17423)) (head!6743 s!11993)) (tail!4969 s!11993)))))

(declare-fun b!3036027 () Bool)

(declare-fun res!1248911 () Bool)

(assert (=> b!3036027 (=> res!1248911 e!1903761)))

(declare-fun e!1903760 () Bool)

(assert (=> b!3036027 (= res!1248911 e!1903760)))

(declare-fun res!1248908 () Bool)

(assert (=> b!3036027 (=> (not res!1248908) (not e!1903760))))

(assert (=> b!3036027 (= res!1248908 lt!1046747)))

(declare-fun b!3036028 () Bool)

(declare-fun e!1903763 () Bool)

(declare-fun e!1903762 () Bool)

(assert (=> b!3036028 (= e!1903763 e!1903762)))

(declare-fun c!502022 () Bool)

(assert (=> b!3036028 (= c!502022 ((_ is EmptyLang!9437) (simplify!404 (regTwo!19387 r!17423))))))

(declare-fun b!3036029 () Bool)

(assert (=> b!3036029 (= e!1903760 (= (head!6743 s!11993) (c!501761 (simplify!404 (regTwo!19387 r!17423)))))))

(declare-fun d!851690 () Bool)

(assert (=> d!851690 e!1903763))

(declare-fun c!502020 () Bool)

(assert (=> d!851690 (= c!502020 ((_ is EmptyExpr!9437) (simplify!404 (regTwo!19387 r!17423))))))

(assert (=> d!851690 (= lt!1046747 e!1903759)))

(declare-fun c!502021 () Bool)

(assert (=> d!851690 (= c!502021 (isEmpty!19478 s!11993))))

(assert (=> d!851690 (validRegex!4170 (simplify!404 (regTwo!19387 r!17423)))))

(assert (=> d!851690 (= (matchR!4319 (simplify!404 (regTwo!19387 r!17423)) s!11993) lt!1046747)))

(declare-fun bm!207284 () Bool)

(declare-fun call!207289 () Bool)

(assert (=> bm!207284 (= call!207289 (isEmpty!19478 s!11993))))

(declare-fun b!3036030 () Bool)

(assert (=> b!3036030 (= e!1903763 (= lt!1046747 call!207289))))

(declare-fun b!3036031 () Bool)

(assert (=> b!3036031 (= e!1903759 (nullable!3087 (simplify!404 (regTwo!19387 r!17423))))))

(declare-fun b!3036032 () Bool)

(declare-fun res!1248910 () Bool)

(assert (=> b!3036032 (=> (not res!1248910) (not e!1903760))))

(assert (=> b!3036032 (= res!1248910 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036033 () Bool)

(declare-fun e!1903758 () Bool)

(assert (=> b!3036033 (= e!1903757 e!1903758)))

(declare-fun res!1248907 () Bool)

(assert (=> b!3036033 (=> res!1248907 e!1903758)))

(assert (=> b!3036033 (= res!1248907 call!207289)))

(declare-fun b!3036034 () Bool)

(declare-fun res!1248904 () Bool)

(assert (=> b!3036034 (=> (not res!1248904) (not e!1903760))))

(assert (=> b!3036034 (= res!1248904 (not call!207289))))

(declare-fun b!3036035 () Bool)

(declare-fun res!1248905 () Bool)

(assert (=> b!3036035 (=> res!1248905 e!1903761)))

(assert (=> b!3036035 (= res!1248905 (not ((_ is ElementMatch!9437) (simplify!404 (regTwo!19387 r!17423)))))))

(assert (=> b!3036035 (= e!1903762 e!1903761)))

(declare-fun b!3036036 () Bool)

(declare-fun res!1248909 () Bool)

(assert (=> b!3036036 (=> res!1248909 e!1903758)))

(assert (=> b!3036036 (= res!1248909 (not (isEmpty!19478 (tail!4969 s!11993))))))

(declare-fun b!3036037 () Bool)

(assert (=> b!3036037 (= e!1903758 (not (= (head!6743 s!11993) (c!501761 (simplify!404 (regTwo!19387 r!17423))))))))

(declare-fun b!3036038 () Bool)

(assert (=> b!3036038 (= e!1903762 (not lt!1046747))))

(assert (= (and d!851690 c!502021) b!3036031))

(assert (= (and d!851690 (not c!502021)) b!3036026))

(assert (= (and d!851690 c!502020) b!3036030))

(assert (= (and d!851690 (not c!502020)) b!3036028))

(assert (= (and b!3036028 c!502022) b!3036038))

(assert (= (and b!3036028 (not c!502022)) b!3036035))

(assert (= (and b!3036035 (not res!1248905)) b!3036027))

(assert (= (and b!3036027 res!1248908) b!3036034))

(assert (= (and b!3036034 res!1248904) b!3036032))

(assert (= (and b!3036032 res!1248910) b!3036029))

(assert (= (and b!3036027 (not res!1248911)) b!3036025))

(assert (= (and b!3036025 res!1248906) b!3036033))

(assert (= (and b!3036033 (not res!1248907)) b!3036036))

(assert (= (and b!3036036 (not res!1248909)) b!3036037))

(assert (= (or b!3036030 b!3036033 b!3036034) bm!207284))

(assert (=> b!3036036 m!3369585))

(assert (=> b!3036036 m!3369585))

(assert (=> b!3036036 m!3369587))

(assert (=> b!3036031 m!3369557))

(declare-fun m!3369967 () Bool)

(assert (=> b!3036031 m!3369967))

(assert (=> bm!207284 m!3369591))

(assert (=> b!3036029 m!3369593))

(assert (=> b!3036026 m!3369593))

(assert (=> b!3036026 m!3369557))

(assert (=> b!3036026 m!3369593))

(declare-fun m!3369969 () Bool)

(assert (=> b!3036026 m!3369969))

(assert (=> b!3036026 m!3369585))

(assert (=> b!3036026 m!3369969))

(assert (=> b!3036026 m!3369585))

(declare-fun m!3369971 () Bool)

(assert (=> b!3036026 m!3369971))

(assert (=> b!3036032 m!3369585))

(assert (=> b!3036032 m!3369585))

(assert (=> b!3036032 m!3369587))

(assert (=> b!3036037 m!3369593))

(assert (=> d!851690 m!3369591))

(assert (=> d!851690 m!3369557))

(declare-fun m!3369973 () Bool)

(assert (=> d!851690 m!3369973))

(assert (=> d!851602 d!851690))

(declare-fun d!851692 () Bool)

(assert (=> d!851692 (= (matchR!4319 (regTwo!19387 r!17423) s!11993) (matchR!4319 (simplify!404 (regTwo!19387 r!17423)) s!11993))))

(assert (=> d!851692 true))

(declare-fun _$95!579 () Unit!49297)

(assert (=> d!851692 (= (choose!18007 (regTwo!19387 r!17423) s!11993) _$95!579)))

(declare-fun bs!530934 () Bool)

(assert (= bs!530934 d!851692))

(assert (=> bs!530934 m!3369553))

(assert (=> bs!530934 m!3369557))

(assert (=> bs!530934 m!3369557))

(assert (=> bs!530934 m!3369689))

(assert (=> d!851602 d!851692))

(assert (=> d!851602 d!851594))

(assert (=> d!851586 d!851582))

(declare-fun d!851694 () Bool)

(declare-fun e!1903766 () Bool)

(assert (=> d!851694 e!1903766))

(declare-fun res!1248914 () Bool)

(assert (=> d!851694 (=> res!1248914 e!1903766)))

(assert (=> d!851694 (= res!1248914 (matchR!4319 (regOne!19387 r!17423) s!11993))))

(assert (=> d!851694 true))

(declare-fun _$116!382 () Unit!49297)

(assert (=> d!851694 (= (choose!18004 (regOne!19387 r!17423) (regTwo!19387 r!17423) s!11993) _$116!382)))

(declare-fun b!3036041 () Bool)

(assert (=> b!3036041 (= e!1903766 (matchR!4319 (regTwo!19387 r!17423) s!11993))))

(assert (= (and d!851694 (not res!1248914)) b!3036041))

(assert (=> d!851694 m!3369547))

(assert (=> b!3036041 m!3369553))

(assert (=> d!851586 d!851694))

(assert (=> d!851586 d!851680))

(assert (=> bm!207225 d!851658))

(declare-fun d!851696 () Bool)

(assert (=> d!851696 (= (nullable!3087 (regOne!19387 r!17423)) (nullableFct!878 (regOne!19387 r!17423)))))

(declare-fun bs!530935 () Bool)

(assert (= bs!530935 d!851696))

(declare-fun m!3369975 () Bool)

(assert (=> bs!530935 m!3369975))

(assert (=> b!3035168 d!851696))

(declare-fun d!851698 () Bool)

(declare-fun choose!18014 (Int) Bool)

(assert (=> d!851698 (= (Exists!1702 (ite c!501948 lambda!113257 lambda!113258)) (choose!18014 (ite c!501948 lambda!113257 lambda!113258)))))

(declare-fun bs!530936 () Bool)

(assert (= bs!530936 d!851698))

(declare-fun m!3369977 () Bool)

(assert (=> bs!530936 m!3369977))

(assert (=> bm!207226 d!851698))

(assert (=> b!3035788 d!851662))

(assert (=> b!3035788 d!851664))

(declare-fun b!3036042 () Bool)

(declare-fun e!1903771 () Bool)

(declare-fun e!1903767 () Bool)

(assert (=> b!3036042 (= e!1903771 e!1903767)))

(declare-fun res!1248917 () Bool)

(assert (=> b!3036042 (=> (not res!1248917) (not e!1903767))))

(declare-fun lt!1046748 () Bool)

(assert (=> b!3036042 (= res!1248917 (not lt!1046748))))

(declare-fun b!3036043 () Bool)

(declare-fun e!1903769 () Bool)

(assert (=> b!3036043 (= e!1903769 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036044 () Bool)

(declare-fun res!1248922 () Bool)

(assert (=> b!3036044 (=> res!1248922 e!1903771)))

(declare-fun e!1903770 () Bool)

(assert (=> b!3036044 (= res!1248922 e!1903770)))

(declare-fun res!1248919 () Bool)

(assert (=> b!3036044 (=> (not res!1248919) (not e!1903770))))

(assert (=> b!3036044 (= res!1248919 lt!1046748)))

(declare-fun b!3036045 () Bool)

(declare-fun e!1903773 () Bool)

(declare-fun e!1903772 () Bool)

(assert (=> b!3036045 (= e!1903773 e!1903772)))

(declare-fun c!502025 () Bool)

(assert (=> b!3036045 (= c!502025 ((_ is EmptyLang!9437) (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993))))))

(declare-fun b!3036046 () Bool)

(assert (=> b!3036046 (= e!1903770 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)))))))

(declare-fun d!851700 () Bool)

(assert (=> d!851700 e!1903773))

(declare-fun c!502023 () Bool)

(assert (=> d!851700 (= c!502023 ((_ is EmptyExpr!9437) (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993))))))

(assert (=> d!851700 (= lt!1046748 e!1903769)))

(declare-fun c!502024 () Bool)

(assert (=> d!851700 (= c!502024 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851700 (validRegex!4170 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)))))

(assert (=> d!851700 (= (matchR!4319 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046748)))

(declare-fun bm!207285 () Bool)

(declare-fun call!207290 () Bool)

(assert (=> bm!207285 (= call!207290 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036047 () Bool)

(assert (=> b!3036047 (= e!1903773 (= lt!1046748 call!207290))))

(declare-fun b!3036048 () Bool)

(assert (=> b!3036048 (= e!1903769 (nullable!3087 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993))))))

(declare-fun b!3036049 () Bool)

(declare-fun res!1248921 () Bool)

(assert (=> b!3036049 (=> (not res!1248921) (not e!1903770))))

(assert (=> b!3036049 (= res!1248921 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036050 () Bool)

(declare-fun e!1903768 () Bool)

(assert (=> b!3036050 (= e!1903767 e!1903768)))

(declare-fun res!1248918 () Bool)

(assert (=> b!3036050 (=> res!1248918 e!1903768)))

(assert (=> b!3036050 (= res!1248918 call!207290)))

(declare-fun b!3036051 () Bool)

(declare-fun res!1248915 () Bool)

(assert (=> b!3036051 (=> (not res!1248915) (not e!1903770))))

(assert (=> b!3036051 (= res!1248915 (not call!207290))))

(declare-fun b!3036052 () Bool)

(declare-fun res!1248916 () Bool)

(assert (=> b!3036052 (=> res!1248916 e!1903771)))

(assert (=> b!3036052 (= res!1248916 (not ((_ is ElementMatch!9437) (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)))))))

(assert (=> b!3036052 (= e!1903772 e!1903771)))

(declare-fun b!3036053 () Bool)

(declare-fun res!1248920 () Bool)

(assert (=> b!3036053 (=> res!1248920 e!1903768)))

(assert (=> b!3036053 (= res!1248920 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036054 () Bool)

(assert (=> b!3036054 (= e!1903768 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993))))))))

(declare-fun b!3036055 () Bool)

(assert (=> b!3036055 (= e!1903772 (not lt!1046748))))

(assert (= (and d!851700 c!502024) b!3036048))

(assert (= (and d!851700 (not c!502024)) b!3036043))

(assert (= (and d!851700 c!502023) b!3036047))

(assert (= (and d!851700 (not c!502023)) b!3036045))

(assert (= (and b!3036045 c!502025) b!3036055))

(assert (= (and b!3036045 (not c!502025)) b!3036052))

(assert (= (and b!3036052 (not res!1248916)) b!3036044))

(assert (= (and b!3036044 res!1248919) b!3036051))

(assert (= (and b!3036051 res!1248915) b!3036049))

(assert (= (and b!3036049 res!1248921) b!3036046))

(assert (= (and b!3036044 (not res!1248922)) b!3036042))

(assert (= (and b!3036042 res!1248917) b!3036050))

(assert (= (and b!3036050 (not res!1248918)) b!3036053))

(assert (= (and b!3036053 (not res!1248920)) b!3036054))

(assert (= (or b!3036047 b!3036050 b!3036051) bm!207285))

(assert (=> b!3036053 m!3369585))

(assert (=> b!3036053 m!3369919))

(assert (=> b!3036053 m!3369919))

(assert (=> b!3036053 m!3369921))

(assert (=> b!3036048 m!3369703))

(declare-fun m!3369979 () Bool)

(assert (=> b!3036048 m!3369979))

(assert (=> bm!207285 m!3369585))

(assert (=> bm!207285 m!3369587))

(assert (=> b!3036046 m!3369585))

(assert (=> b!3036046 m!3369925))

(assert (=> b!3036043 m!3369585))

(assert (=> b!3036043 m!3369925))

(assert (=> b!3036043 m!3369703))

(assert (=> b!3036043 m!3369925))

(declare-fun m!3369981 () Bool)

(assert (=> b!3036043 m!3369981))

(assert (=> b!3036043 m!3369585))

(assert (=> b!3036043 m!3369919))

(assert (=> b!3036043 m!3369981))

(assert (=> b!3036043 m!3369919))

(declare-fun m!3369983 () Bool)

(assert (=> b!3036043 m!3369983))

(assert (=> b!3036049 m!3369585))

(assert (=> b!3036049 m!3369919))

(assert (=> b!3036049 m!3369919))

(assert (=> b!3036049 m!3369921))

(assert (=> b!3036054 m!3369585))

(assert (=> b!3036054 m!3369925))

(assert (=> d!851700 m!3369585))

(assert (=> d!851700 m!3369587))

(assert (=> d!851700 m!3369703))

(declare-fun m!3369985 () Bool)

(assert (=> d!851700 m!3369985))

(assert (=> b!3035433 d!851700))

(declare-fun b!3036056 () Bool)

(declare-fun e!1903775 () Regex!9437)

(declare-fun call!207291 () Regex!9437)

(assert (=> b!3036056 (= e!1903775 (Union!9437 (Concat!14758 call!207291 (regTwo!19386 (simplify!404 r!17423))) EmptyLang!9437))))

(declare-fun b!3036057 () Bool)

(declare-fun e!1903778 () Regex!9437)

(declare-fun call!207292 () Regex!9437)

(declare-fun call!207294 () Regex!9437)

(assert (=> b!3036057 (= e!1903778 (Union!9437 call!207292 call!207294))))

(declare-fun b!3036058 () Bool)

(declare-fun e!1903777 () Regex!9437)

(assert (=> b!3036058 (= e!1903777 EmptyLang!9437)))

(declare-fun b!3036060 () Bool)

(declare-fun e!1903774 () Regex!9437)

(assert (=> b!3036060 (= e!1903777 e!1903774)))

(declare-fun c!502029 () Bool)

(assert (=> b!3036060 (= c!502029 ((_ is ElementMatch!9437) (simplify!404 r!17423)))))

(declare-fun c!502026 () Bool)

(declare-fun c!502027 () Bool)

(declare-fun bm!207286 () Bool)

(assert (=> bm!207286 (= call!207294 (derivativeStep!2684 (ite c!502026 (regTwo!19387 (simplify!404 r!17423)) (ite c!502027 (reg!9766 (simplify!404 r!17423)) (regOne!19386 (simplify!404 r!17423)))) (head!6743 s!11993)))))

(declare-fun b!3036061 () Bool)

(declare-fun e!1903776 () Regex!9437)

(declare-fun call!207293 () Regex!9437)

(assert (=> b!3036061 (= e!1903776 (Concat!14758 call!207293 (simplify!404 r!17423)))))

(declare-fun bm!207287 () Bool)

(assert (=> bm!207287 (= call!207293 call!207294)))

(declare-fun b!3036062 () Bool)

(assert (=> b!3036062 (= e!1903774 (ite (= (head!6743 s!11993) (c!501761 (simplify!404 r!17423))) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036063 () Bool)

(assert (=> b!3036063 (= e!1903778 e!1903776)))

(assert (=> b!3036063 (= c!502027 ((_ is Star!9437) (simplify!404 r!17423)))))

(declare-fun b!3036059 () Bool)

(assert (=> b!3036059 (= e!1903775 (Union!9437 (Concat!14758 call!207291 (regTwo!19386 (simplify!404 r!17423))) call!207292))))

(declare-fun d!851702 () Bool)

(declare-fun lt!1046749 () Regex!9437)

(assert (=> d!851702 (validRegex!4170 lt!1046749)))

(assert (=> d!851702 (= lt!1046749 e!1903777)))

(declare-fun c!502028 () Bool)

(assert (=> d!851702 (= c!502028 (or ((_ is EmptyExpr!9437) (simplify!404 r!17423)) ((_ is EmptyLang!9437) (simplify!404 r!17423))))))

(assert (=> d!851702 (validRegex!4170 (simplify!404 r!17423))))

(assert (=> d!851702 (= (derivativeStep!2684 (simplify!404 r!17423) (head!6743 s!11993)) lt!1046749)))

(declare-fun b!3036064 () Bool)

(assert (=> b!3036064 (= c!502026 ((_ is Union!9437) (simplify!404 r!17423)))))

(assert (=> b!3036064 (= e!1903774 e!1903778)))

(declare-fun bm!207288 () Bool)

(assert (=> bm!207288 (= call!207292 (derivativeStep!2684 (ite c!502026 (regOne!19387 (simplify!404 r!17423)) (regTwo!19386 (simplify!404 r!17423))) (head!6743 s!11993)))))

(declare-fun b!3036065 () Bool)

(declare-fun c!502030 () Bool)

(assert (=> b!3036065 (= c!502030 (nullable!3087 (regOne!19386 (simplify!404 r!17423))))))

(assert (=> b!3036065 (= e!1903776 e!1903775)))

(declare-fun bm!207289 () Bool)

(assert (=> bm!207289 (= call!207291 call!207293)))

(assert (= (and d!851702 c!502028) b!3036058))

(assert (= (and d!851702 (not c!502028)) b!3036060))

(assert (= (and b!3036060 c!502029) b!3036062))

(assert (= (and b!3036060 (not c!502029)) b!3036064))

(assert (= (and b!3036064 c!502026) b!3036057))

(assert (= (and b!3036064 (not c!502026)) b!3036063))

(assert (= (and b!3036063 c!502027) b!3036061))

(assert (= (and b!3036063 (not c!502027)) b!3036065))

(assert (= (and b!3036065 c!502030) b!3036059))

(assert (= (and b!3036065 (not c!502030)) b!3036056))

(assert (= (or b!3036059 b!3036056) bm!207289))

(assert (= (or b!3036061 bm!207289) bm!207287))

(assert (= (or b!3036057 bm!207287) bm!207286))

(assert (= (or b!3036057 b!3036059) bm!207288))

(assert (=> bm!207286 m!3369593))

(declare-fun m!3369987 () Bool)

(assert (=> bm!207286 m!3369987))

(declare-fun m!3369989 () Bool)

(assert (=> d!851702 m!3369989))

(assert (=> d!851702 m!3369571))

(assert (=> d!851702 m!3369707))

(assert (=> bm!207288 m!3369593))

(declare-fun m!3369991 () Bool)

(assert (=> bm!207288 m!3369991))

(declare-fun m!3369993 () Bool)

(assert (=> b!3036065 m!3369993))

(assert (=> b!3035433 d!851702))

(assert (=> b!3035433 d!851668))

(assert (=> b!3035433 d!851664))

(assert (=> b!3035221 d!851662))

(assert (=> b!3035221 d!851664))

(declare-fun d!851704 () Bool)

(assert (=> d!851704 (= (nullable!3087 (Union!9437 lt!1046614 lt!1046616)) (nullableFct!878 (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun bs!530937 () Bool)

(assert (= bs!530937 d!851704))

(declare-fun m!3369995 () Bool)

(assert (=> bs!530937 m!3369995))

(assert (=> b!3035815 d!851704))

(declare-fun b!3036066 () Bool)

(declare-fun e!1903785 () Regex!9437)

(declare-fun e!1903779 () Regex!9437)

(assert (=> b!3036066 (= e!1903785 e!1903779)))

(declare-fun lt!1046754 () Regex!9437)

(declare-fun call!207298 () Regex!9437)

(assert (=> b!3036066 (= lt!1046754 call!207298)))

(declare-fun lt!1046753 () Regex!9437)

(declare-fun call!207301 () Regex!9437)

(assert (=> b!3036066 (= lt!1046753 call!207301)))

(declare-fun c!502040 () Bool)

(declare-fun call!207299 () Bool)

(assert (=> b!3036066 (= c!502040 call!207299)))

(declare-fun b!3036067 () Bool)

(declare-fun e!1903788 () Regex!9437)

(declare-fun lt!1046755 () Regex!9437)

(declare-fun lt!1046751 () Regex!9437)

(assert (=> b!3036067 (= e!1903788 (Concat!14758 lt!1046755 lt!1046751))))

(declare-fun b!3036068 () Bool)

(declare-fun e!1903792 () Regex!9437)

(assert (=> b!3036068 (= e!1903792 EmptyLang!9437)))

(declare-fun d!851706 () Bool)

(declare-fun e!1903783 () Bool)

(assert (=> d!851706 e!1903783))

(declare-fun res!1248923 () Bool)

(assert (=> d!851706 (=> (not res!1248923) (not e!1903783))))

(declare-fun lt!1046750 () Regex!9437)

(assert (=> d!851706 (= res!1248923 (validRegex!4170 lt!1046750))))

(declare-fun e!1903790 () Regex!9437)

(assert (=> d!851706 (= lt!1046750 e!1903790)))

(declare-fun c!502031 () Bool)

(assert (=> d!851706 (= c!502031 ((_ is EmptyLang!9437) (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(assert (=> d!851706 (validRegex!4170 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))))))

(assert (=> d!851706 (= (simplify!404 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))) lt!1046750)))

(declare-fun b!3036069 () Bool)

(assert (=> b!3036069 (= e!1903788 lt!1046755)))

(declare-fun b!3036070 () Bool)

(declare-fun e!1903791 () Regex!9437)

(assert (=> b!3036070 (= e!1903791 e!1903788)))

(declare-fun c!502033 () Bool)

(declare-fun call!207296 () Bool)

(assert (=> b!3036070 (= c!502033 call!207296)))

(declare-fun b!3036071 () Bool)

(assert (=> b!3036071 (= e!1903790 EmptyLang!9437)))

(declare-fun b!3036072 () Bool)

(declare-fun e!1903782 () Regex!9437)

(assert (=> b!3036072 (= e!1903782 EmptyExpr!9437)))

(declare-fun b!3036073 () Bool)

(assert (=> b!3036073 (= e!1903791 lt!1046751)))

(declare-fun c!502035 () Bool)

(declare-fun bm!207290 () Bool)

(assert (=> bm!207290 (= call!207299 (isEmptyLang!502 (ite c!502035 lt!1046754 lt!1046751)))))

(declare-fun b!3036074 () Bool)

(assert (=> b!3036074 (= e!1903783 (= (nullable!3087 lt!1046750) (nullable!3087 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))))))))

(declare-fun bm!207291 () Bool)

(declare-fun call!207300 () Bool)

(declare-fun call!207295 () Bool)

(assert (=> bm!207291 (= call!207300 call!207295)))

(declare-fun b!3036075 () Bool)

(declare-fun e!1903786 () Regex!9437)

(assert (=> b!3036075 (= e!1903790 e!1903786)))

(declare-fun c!502032 () Bool)

(assert (=> b!3036075 (= c!502032 ((_ is ElementMatch!9437) (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(declare-fun b!3036076 () Bool)

(declare-fun c!502037 () Bool)

(declare-fun e!1903780 () Bool)

(assert (=> b!3036076 (= c!502037 e!1903780)))

(declare-fun res!1248924 () Bool)

(assert (=> b!3036076 (=> res!1248924 e!1903780)))

(assert (=> b!3036076 (= res!1248924 call!207295)))

(declare-fun lt!1046752 () Regex!9437)

(declare-fun call!207297 () Regex!9437)

(assert (=> b!3036076 (= lt!1046752 call!207297)))

(declare-fun e!1903784 () Regex!9437)

(assert (=> b!3036076 (= e!1903784 e!1903782)))

(declare-fun b!3036077 () Bool)

(declare-fun e!1903781 () Regex!9437)

(assert (=> b!3036077 (= e!1903781 (Union!9437 lt!1046754 lt!1046753))))

(declare-fun b!3036078 () Bool)

(assert (=> b!3036078 (= e!1903785 e!1903792)))

(assert (=> b!3036078 (= lt!1046755 call!207301)))

(assert (=> b!3036078 (= lt!1046751 call!207298)))

(declare-fun res!1248925 () Bool)

(assert (=> b!3036078 (= res!1248925 call!207300)))

(declare-fun e!1903787 () Bool)

(assert (=> b!3036078 (=> res!1248925 e!1903787)))

(declare-fun c!502036 () Bool)

(assert (=> b!3036078 (= c!502036 e!1903787)))

(declare-fun b!3036079 () Bool)

(declare-fun c!502039 () Bool)

(assert (=> b!3036079 (= c!502039 call!207300)))

(assert (=> b!3036079 (= e!1903779 e!1903781)))

(declare-fun c!502038 () Bool)

(declare-fun bm!207292 () Bool)

(assert (=> bm!207292 (= call!207295 (isEmptyLang!502 (ite c!502038 lt!1046752 (ite c!502035 lt!1046753 lt!1046755))))))

(declare-fun b!3036080 () Bool)

(declare-fun e!1903789 () Regex!9437)

(assert (=> b!3036080 (= e!1903789 e!1903784)))

(assert (=> b!3036080 (= c!502038 ((_ is Star!9437) (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(declare-fun b!3036081 () Bool)

(assert (=> b!3036081 (= e!1903786 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))))))

(declare-fun b!3036082 () Bool)

(assert (=> b!3036082 (= c!502035 ((_ is Union!9437) (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(assert (=> b!3036082 (= e!1903784 e!1903785)))

(declare-fun bm!207293 () Bool)

(assert (=> bm!207293 (= call!207301 call!207297)))

(declare-fun bm!207294 () Bool)

(assert (=> bm!207294 (= call!207298 (simplify!404 (ite c!502035 (regOne!19387 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))) (regTwo!19386 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))))

(declare-fun b!3036083 () Bool)

(declare-fun c!502034 () Bool)

(assert (=> b!3036083 (= c!502034 ((_ is EmptyExpr!9437) (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))))))

(assert (=> b!3036083 (= e!1903786 e!1903789)))

(declare-fun b!3036084 () Bool)

(assert (=> b!3036084 (= e!1903789 EmptyExpr!9437)))

(declare-fun b!3036085 () Bool)

(assert (=> b!3036085 (= e!1903781 lt!1046754)))

(declare-fun bm!207295 () Bool)

(assert (=> bm!207295 (= call!207297 (simplify!404 (ite c!502038 (reg!9766 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))) (ite c!502035 (regTwo!19387 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))))) (regOne!19386 (ite c!501966 (reg!9766 (regOne!19387 r!17423)) (ite c!501963 (regTwo!19387 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))))))))))

(declare-fun b!3036086 () Bool)

(assert (=> b!3036086 (= e!1903780 call!207296)))

(declare-fun b!3036087 () Bool)

(assert (=> b!3036087 (= e!1903779 lt!1046753)))

(declare-fun b!3036088 () Bool)

(assert (=> b!3036088 (= e!1903787 call!207299)))

(declare-fun b!3036089 () Bool)

(declare-fun c!502041 () Bool)

(assert (=> b!3036089 (= c!502041 (isEmptyExpr!508 lt!1046755))))

(assert (=> b!3036089 (= e!1903792 e!1903791)))

(declare-fun bm!207296 () Bool)

(assert (=> bm!207296 (= call!207296 (isEmptyExpr!508 (ite c!502038 lt!1046752 lt!1046751)))))

(declare-fun b!3036090 () Bool)

(assert (=> b!3036090 (= e!1903782 (Star!9437 lt!1046752))))

(assert (= (and d!851706 c!502031) b!3036071))

(assert (= (and d!851706 (not c!502031)) b!3036075))

(assert (= (and b!3036075 c!502032) b!3036081))

(assert (= (and b!3036075 (not c!502032)) b!3036083))

(assert (= (and b!3036083 c!502034) b!3036084))

(assert (= (and b!3036083 (not c!502034)) b!3036080))

(assert (= (and b!3036080 c!502038) b!3036076))

(assert (= (and b!3036080 (not c!502038)) b!3036082))

(assert (= (and b!3036076 (not res!1248924)) b!3036086))

(assert (= (and b!3036076 c!502037) b!3036072))

(assert (= (and b!3036076 (not c!502037)) b!3036090))

(assert (= (and b!3036082 c!502035) b!3036066))

(assert (= (and b!3036082 (not c!502035)) b!3036078))

(assert (= (and b!3036066 c!502040) b!3036087))

(assert (= (and b!3036066 (not c!502040)) b!3036079))

(assert (= (and b!3036079 c!502039) b!3036085))

(assert (= (and b!3036079 (not c!502039)) b!3036077))

(assert (= (and b!3036078 (not res!1248925)) b!3036088))

(assert (= (and b!3036078 c!502036) b!3036068))

(assert (= (and b!3036078 (not c!502036)) b!3036089))

(assert (= (and b!3036089 c!502041) b!3036073))

(assert (= (and b!3036089 (not c!502041)) b!3036070))

(assert (= (and b!3036070 c!502033) b!3036069))

(assert (= (and b!3036070 (not c!502033)) b!3036067))

(assert (= (or b!3036066 b!3036078) bm!207294))

(assert (= (or b!3036066 b!3036078) bm!207293))

(assert (= (or b!3036079 b!3036078) bm!207291))

(assert (= (or b!3036066 b!3036088) bm!207290))

(assert (= (or b!3036086 b!3036070) bm!207296))

(assert (= (or b!3036076 bm!207293) bm!207295))

(assert (= (or b!3036076 bm!207291) bm!207292))

(assert (= (and d!851706 res!1248923) b!3036074))

(declare-fun m!3369997 () Bool)

(assert (=> b!3036074 m!3369997))

(declare-fun m!3369999 () Bool)

(assert (=> b!3036074 m!3369999))

(declare-fun m!3370001 () Bool)

(assert (=> bm!207296 m!3370001))

(declare-fun m!3370003 () Bool)

(assert (=> bm!207295 m!3370003))

(declare-fun m!3370005 () Bool)

(assert (=> bm!207292 m!3370005))

(declare-fun m!3370007 () Bool)

(assert (=> b!3036089 m!3370007))

(declare-fun m!3370009 () Bool)

(assert (=> d!851706 m!3370009))

(declare-fun m!3370011 () Bool)

(assert (=> d!851706 m!3370011))

(declare-fun m!3370013 () Bool)

(assert (=> bm!207290 m!3370013))

(declare-fun m!3370015 () Bool)

(assert (=> bm!207294 m!3370015))

(assert (=> bm!207240 d!851706))

(assert (=> b!3035781 d!851668))

(assert (=> b!3035498 d!851668))

(declare-fun d!851708 () Bool)

(assert (=> d!851708 (= (isEmptyLang!502 (ite c!501963 lt!1046729 lt!1046726)) ((_ is EmptyLang!9437) (ite c!501963 lt!1046729 lt!1046726)))))

(assert (=> bm!207235 d!851708))

(declare-fun d!851710 () Bool)

(assert (=> d!851710 (= (isEmptyExpr!508 lt!1046730) ((_ is EmptyExpr!9437) lt!1046730))))

(assert (=> b!3035849 d!851710))

(assert (=> b!3035784 d!851662))

(assert (=> b!3035784 d!851664))

(declare-fun b!3036091 () Bool)

(declare-fun e!1903795 () Bool)

(declare-fun call!207304 () Bool)

(assert (=> b!3036091 (= e!1903795 call!207304)))

(declare-fun b!3036092 () Bool)

(declare-fun e!1903796 () Bool)

(declare-fun e!1903797 () Bool)

(assert (=> b!3036092 (= e!1903796 e!1903797)))

(declare-fun res!1248926 () Bool)

(assert (=> b!3036092 (= res!1248926 (not (nullable!3087 (reg!9766 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))))

(assert (=> b!3036092 (=> (not res!1248926) (not e!1903797))))

(declare-fun call!207302 () Bool)

(declare-fun c!502043 () Bool)

(declare-fun bm!207297 () Bool)

(declare-fun c!502042 () Bool)

(assert (=> bm!207297 (= call!207302 (validRegex!4170 (ite c!502043 (reg!9766 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))) (ite c!502042 (regOne!19387 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))) (regTwo!19386 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614)))))))))

(declare-fun b!3036093 () Bool)

(declare-fun e!1903794 () Bool)

(assert (=> b!3036093 (= e!1903796 e!1903794)))

(assert (=> b!3036093 (= c!502042 ((_ is Union!9437) (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))

(declare-fun d!851712 () Bool)

(declare-fun res!1248927 () Bool)

(declare-fun e!1903798 () Bool)

(assert (=> d!851712 (=> res!1248927 e!1903798)))

(assert (=> d!851712 (= res!1248927 ((_ is ElementMatch!9437) (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))

(assert (=> d!851712 (= (validRegex!4170 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))) e!1903798)))

(declare-fun b!3036094 () Bool)

(assert (=> b!3036094 (= e!1903798 e!1903796)))

(assert (=> b!3036094 (= c!502043 ((_ is Star!9437) (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))

(declare-fun bm!207298 () Bool)

(assert (=> bm!207298 (= call!207304 (validRegex!4170 (ite c!502042 (regTwo!19387 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))) (regOne!19386 (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614))))))))

(declare-fun bm!207299 () Bool)

(declare-fun call!207303 () Bool)

(assert (=> bm!207299 (= call!207303 call!207302)))

(declare-fun b!3036095 () Bool)

(declare-fun e!1903799 () Bool)

(declare-fun e!1903793 () Bool)

(assert (=> b!3036095 (= e!1903799 e!1903793)))

(declare-fun res!1248929 () Bool)

(assert (=> b!3036095 (=> (not res!1248929) (not e!1903793))))

(assert (=> b!3036095 (= res!1248929 call!207304)))

(declare-fun b!3036096 () Bool)

(assert (=> b!3036096 (= e!1903793 call!207303)))

(declare-fun b!3036097 () Bool)

(declare-fun res!1248928 () Bool)

(assert (=> b!3036097 (=> (not res!1248928) (not e!1903795))))

(assert (=> b!3036097 (= res!1248928 call!207303)))

(assert (=> b!3036097 (= e!1903794 e!1903795)))

(declare-fun b!3036098 () Bool)

(assert (=> b!3036098 (= e!1903797 call!207302)))

(declare-fun b!3036099 () Bool)

(declare-fun res!1248930 () Bool)

(assert (=> b!3036099 (=> res!1248930 e!1903799)))

(assert (=> b!3036099 (= res!1248930 (not ((_ is Concat!14758) (ite c!501954 (regTwo!19387 lt!1046614) (regOne!19386 lt!1046614)))))))

(assert (=> b!3036099 (= e!1903794 e!1903799)))

(assert (= (and d!851712 (not res!1248927)) b!3036094))

(assert (= (and b!3036094 c!502043) b!3036092))

(assert (= (and b!3036094 (not c!502043)) b!3036093))

(assert (= (and b!3036092 res!1248926) b!3036098))

(assert (= (and b!3036093 c!502042) b!3036097))

(assert (= (and b!3036093 (not c!502042)) b!3036099))

(assert (= (and b!3036097 res!1248928) b!3036091))

(assert (= (and b!3036099 (not res!1248930)) b!3036095))

(assert (= (and b!3036095 res!1248929) b!3036096))

(assert (= (or b!3036097 b!3036096) bm!207299))

(assert (= (or b!3036091 b!3036095) bm!207298))

(assert (= (or b!3036098 bm!207299) bm!207297))

(declare-fun m!3370017 () Bool)

(assert (=> b!3036092 m!3370017))

(declare-fun m!3370019 () Bool)

(assert (=> bm!207297 m!3370019))

(declare-fun m!3370021 () Bool)

(assert (=> bm!207298 m!3370021))

(assert (=> bm!207232 d!851712))

(assert (=> d!851652 d!851658))

(declare-fun b!3036100 () Bool)

(declare-fun e!1903802 () Bool)

(declare-fun call!207307 () Bool)

(assert (=> b!3036100 (= e!1903802 call!207307)))

(declare-fun b!3036101 () Bool)

(declare-fun e!1903803 () Bool)

(declare-fun e!1903804 () Bool)

(assert (=> b!3036101 (= e!1903803 e!1903804)))

(declare-fun res!1248931 () Bool)

(assert (=> b!3036101 (= res!1248931 (not (nullable!3087 (reg!9766 (Union!9437 lt!1046614 lt!1046616)))))))

(assert (=> b!3036101 (=> (not res!1248931) (not e!1903804))))

(declare-fun call!207305 () Bool)

(declare-fun bm!207300 () Bool)

(declare-fun c!502045 () Bool)

(declare-fun c!502044 () Bool)

(assert (=> bm!207300 (= call!207305 (validRegex!4170 (ite c!502045 (reg!9766 (Union!9437 lt!1046614 lt!1046616)) (ite c!502044 (regOne!19387 (Union!9437 lt!1046614 lt!1046616)) (regTwo!19386 (Union!9437 lt!1046614 lt!1046616))))))))

(declare-fun b!3036102 () Bool)

(declare-fun e!1903801 () Bool)

(assert (=> b!3036102 (= e!1903803 e!1903801)))

(assert (=> b!3036102 (= c!502044 ((_ is Union!9437) (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun d!851714 () Bool)

(declare-fun res!1248932 () Bool)

(declare-fun e!1903805 () Bool)

(assert (=> d!851714 (=> res!1248932 e!1903805)))

(assert (=> d!851714 (= res!1248932 ((_ is ElementMatch!9437) (Union!9437 lt!1046614 lt!1046616)))))

(assert (=> d!851714 (= (validRegex!4170 (Union!9437 lt!1046614 lt!1046616)) e!1903805)))

(declare-fun b!3036103 () Bool)

(assert (=> b!3036103 (= e!1903805 e!1903803)))

(assert (=> b!3036103 (= c!502045 ((_ is Star!9437) (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun bm!207301 () Bool)

(assert (=> bm!207301 (= call!207307 (validRegex!4170 (ite c!502044 (regTwo!19387 (Union!9437 lt!1046614 lt!1046616)) (regOne!19386 (Union!9437 lt!1046614 lt!1046616)))))))

(declare-fun bm!207302 () Bool)

(declare-fun call!207306 () Bool)

(assert (=> bm!207302 (= call!207306 call!207305)))

(declare-fun b!3036104 () Bool)

(declare-fun e!1903806 () Bool)

(declare-fun e!1903800 () Bool)

(assert (=> b!3036104 (= e!1903806 e!1903800)))

(declare-fun res!1248934 () Bool)

(assert (=> b!3036104 (=> (not res!1248934) (not e!1903800))))

(assert (=> b!3036104 (= res!1248934 call!207307)))

(declare-fun b!3036105 () Bool)

(assert (=> b!3036105 (= e!1903800 call!207306)))

(declare-fun b!3036106 () Bool)

(declare-fun res!1248933 () Bool)

(assert (=> b!3036106 (=> (not res!1248933) (not e!1903802))))

(assert (=> b!3036106 (= res!1248933 call!207306)))

(assert (=> b!3036106 (= e!1903801 e!1903802)))

(declare-fun b!3036107 () Bool)

(assert (=> b!3036107 (= e!1903804 call!207305)))

(declare-fun b!3036108 () Bool)

(declare-fun res!1248935 () Bool)

(assert (=> b!3036108 (=> res!1248935 e!1903806)))

(assert (=> b!3036108 (= res!1248935 (not ((_ is Concat!14758) (Union!9437 lt!1046614 lt!1046616))))))

(assert (=> b!3036108 (= e!1903801 e!1903806)))

(assert (= (and d!851714 (not res!1248932)) b!3036103))

(assert (= (and b!3036103 c!502045) b!3036101))

(assert (= (and b!3036103 (not c!502045)) b!3036102))

(assert (= (and b!3036101 res!1248931) b!3036107))

(assert (= (and b!3036102 c!502044) b!3036106))

(assert (= (and b!3036102 (not c!502044)) b!3036108))

(assert (= (and b!3036106 res!1248933) b!3036100))

(assert (= (and b!3036108 (not res!1248935)) b!3036104))

(assert (= (and b!3036104 res!1248934) b!3036105))

(assert (= (or b!3036106 b!3036105) bm!207302))

(assert (= (or b!3036100 b!3036104) bm!207301))

(assert (= (or b!3036107 bm!207302) bm!207300))

(declare-fun m!3370023 () Bool)

(assert (=> b!3036101 m!3370023))

(declare-fun m!3370025 () Bool)

(assert (=> bm!207300 m!3370025))

(declare-fun m!3370027 () Bool)

(assert (=> bm!207301 m!3370027))

(assert (=> d!851652 d!851714))

(assert (=> b!3035813 d!851668))

(assert (=> bm!207119 d!851658))

(declare-fun b!3036109 () Bool)

(declare-fun e!1903811 () Bool)

(declare-fun e!1903807 () Bool)

(assert (=> b!3036109 (= e!1903811 e!1903807)))

(declare-fun res!1248938 () Bool)

(assert (=> b!3036109 (=> (not res!1248938) (not e!1903807))))

(declare-fun lt!1046756 () Bool)

(assert (=> b!3036109 (= res!1248938 (not lt!1046756))))

(declare-fun e!1903809 () Bool)

(declare-fun b!3036110 () Bool)

(assert (=> b!3036110 (= e!1903809 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036111 () Bool)

(declare-fun res!1248943 () Bool)

(assert (=> b!3036111 (=> res!1248943 e!1903811)))

(declare-fun e!1903810 () Bool)

(assert (=> b!3036111 (= res!1248943 e!1903810)))

(declare-fun res!1248940 () Bool)

(assert (=> b!3036111 (=> (not res!1248940) (not e!1903810))))

(assert (=> b!3036111 (= res!1248940 lt!1046756)))

(declare-fun b!3036112 () Bool)

(declare-fun e!1903813 () Bool)

(declare-fun e!1903812 () Bool)

(assert (=> b!3036112 (= e!1903813 e!1903812)))

(declare-fun c!502048 () Bool)

(assert (=> b!3036112 (= c!502048 ((_ is EmptyLang!9437) (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993))))))

(declare-fun b!3036113 () Bool)

(assert (=> b!3036113 (= e!1903810 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)))))))

(declare-fun d!851716 () Bool)

(assert (=> d!851716 e!1903813))

(declare-fun c!502046 () Bool)

(assert (=> d!851716 (= c!502046 ((_ is EmptyExpr!9437) (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993))))))

(assert (=> d!851716 (= lt!1046756 e!1903809)))

(declare-fun c!502047 () Bool)

(assert (=> d!851716 (= c!502047 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851716 (validRegex!4170 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)))))

(assert (=> d!851716 (= (matchR!4319 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046756)))

(declare-fun bm!207303 () Bool)

(declare-fun call!207308 () Bool)

(assert (=> bm!207303 (= call!207308 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036114 () Bool)

(assert (=> b!3036114 (= e!1903813 (= lt!1046756 call!207308))))

(declare-fun b!3036115 () Bool)

(assert (=> b!3036115 (= e!1903809 (nullable!3087 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993))))))

(declare-fun b!3036116 () Bool)

(declare-fun res!1248942 () Bool)

(assert (=> b!3036116 (=> (not res!1248942) (not e!1903810))))

(assert (=> b!3036116 (= res!1248942 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036117 () Bool)

(declare-fun e!1903808 () Bool)

(assert (=> b!3036117 (= e!1903807 e!1903808)))

(declare-fun res!1248939 () Bool)

(assert (=> b!3036117 (=> res!1248939 e!1903808)))

(assert (=> b!3036117 (= res!1248939 call!207308)))

(declare-fun b!3036118 () Bool)

(declare-fun res!1248936 () Bool)

(assert (=> b!3036118 (=> (not res!1248936) (not e!1903810))))

(assert (=> b!3036118 (= res!1248936 (not call!207308))))

(declare-fun b!3036119 () Bool)

(declare-fun res!1248937 () Bool)

(assert (=> b!3036119 (=> res!1248937 e!1903811)))

(assert (=> b!3036119 (= res!1248937 (not ((_ is ElementMatch!9437) (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)))))))

(assert (=> b!3036119 (= e!1903812 e!1903811)))

(declare-fun b!3036120 () Bool)

(declare-fun res!1248941 () Bool)

(assert (=> b!3036120 (=> res!1248941 e!1903808)))

(assert (=> b!3036120 (= res!1248941 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036121 () Bool)

(assert (=> b!3036121 (= e!1903808 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993))))))))

(declare-fun b!3036122 () Bool)

(assert (=> b!3036122 (= e!1903812 (not lt!1046756))))

(assert (= (and d!851716 c!502047) b!3036115))

(assert (= (and d!851716 (not c!502047)) b!3036110))

(assert (= (and d!851716 c!502046) b!3036114))

(assert (= (and d!851716 (not c!502046)) b!3036112))

(assert (= (and b!3036112 c!502048) b!3036122))

(assert (= (and b!3036112 (not c!502048)) b!3036119))

(assert (= (and b!3036119 (not res!1248937)) b!3036111))

(assert (= (and b!3036111 res!1248940) b!3036118))

(assert (= (and b!3036118 res!1248936) b!3036116))

(assert (= (and b!3036116 res!1248942) b!3036113))

(assert (= (and b!3036111 (not res!1248943)) b!3036109))

(assert (= (and b!3036109 res!1248938) b!3036117))

(assert (= (and b!3036117 (not res!1248939)) b!3036120))

(assert (= (and b!3036120 (not res!1248941)) b!3036121))

(assert (= (or b!3036114 b!3036117 b!3036118) bm!207303))

(assert (=> b!3036120 m!3369585))

(assert (=> b!3036120 m!3369919))

(assert (=> b!3036120 m!3369919))

(assert (=> b!3036120 m!3369921))

(assert (=> b!3036115 m!3369739))

(declare-fun m!3370029 () Bool)

(assert (=> b!3036115 m!3370029))

(assert (=> bm!207303 m!3369585))

(assert (=> bm!207303 m!3369587))

(assert (=> b!3036113 m!3369585))

(assert (=> b!3036113 m!3369925))

(assert (=> b!3036110 m!3369585))

(assert (=> b!3036110 m!3369925))

(assert (=> b!3036110 m!3369739))

(assert (=> b!3036110 m!3369925))

(declare-fun m!3370031 () Bool)

(assert (=> b!3036110 m!3370031))

(assert (=> b!3036110 m!3369585))

(assert (=> b!3036110 m!3369919))

(assert (=> b!3036110 m!3370031))

(assert (=> b!3036110 m!3369919))

(declare-fun m!3370033 () Bool)

(assert (=> b!3036110 m!3370033))

(assert (=> b!3036116 m!3369585))

(assert (=> b!3036116 m!3369919))

(assert (=> b!3036116 m!3369919))

(assert (=> b!3036116 m!3369921))

(assert (=> b!3036121 m!3369585))

(assert (=> b!3036121 m!3369925))

(assert (=> d!851716 m!3369585))

(assert (=> d!851716 m!3369587))

(assert (=> d!851716 m!3369739))

(declare-fun m!3370035 () Bool)

(assert (=> d!851716 m!3370035))

(assert (=> b!3035495 d!851716))

(declare-fun e!1903815 () Regex!9437)

(declare-fun call!207309 () Regex!9437)

(declare-fun b!3036123 () Bool)

(assert (=> b!3036123 (= e!1903815 (Union!9437 (Concat!14758 call!207309 (regTwo!19386 (Union!9437 lt!1046616 lt!1046614))) EmptyLang!9437))))

(declare-fun b!3036124 () Bool)

(declare-fun e!1903818 () Regex!9437)

(declare-fun call!207310 () Regex!9437)

(declare-fun call!207312 () Regex!9437)

(assert (=> b!3036124 (= e!1903818 (Union!9437 call!207310 call!207312))))

(declare-fun b!3036125 () Bool)

(declare-fun e!1903817 () Regex!9437)

(assert (=> b!3036125 (= e!1903817 EmptyLang!9437)))

(declare-fun b!3036127 () Bool)

(declare-fun e!1903814 () Regex!9437)

(assert (=> b!3036127 (= e!1903817 e!1903814)))

(declare-fun c!502052 () Bool)

(assert (=> b!3036127 (= c!502052 ((_ is ElementMatch!9437) (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun c!502050 () Bool)

(declare-fun bm!207304 () Bool)

(declare-fun c!502049 () Bool)

(assert (=> bm!207304 (= call!207312 (derivativeStep!2684 (ite c!502049 (regTwo!19387 (Union!9437 lt!1046616 lt!1046614)) (ite c!502050 (reg!9766 (Union!9437 lt!1046616 lt!1046614)) (regOne!19386 (Union!9437 lt!1046616 lt!1046614)))) (head!6743 s!11993)))))

(declare-fun b!3036128 () Bool)

(declare-fun call!207311 () Regex!9437)

(declare-fun e!1903816 () Regex!9437)

(assert (=> b!3036128 (= e!1903816 (Concat!14758 call!207311 (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun bm!207305 () Bool)

(assert (=> bm!207305 (= call!207311 call!207312)))

(declare-fun b!3036129 () Bool)

(assert (=> b!3036129 (= e!1903814 (ite (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046616 lt!1046614))) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036130 () Bool)

(assert (=> b!3036130 (= e!1903818 e!1903816)))

(assert (=> b!3036130 (= c!502050 ((_ is Star!9437) (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun b!3036126 () Bool)

(assert (=> b!3036126 (= e!1903815 (Union!9437 (Concat!14758 call!207309 (regTwo!19386 (Union!9437 lt!1046616 lt!1046614))) call!207310))))

(declare-fun d!851718 () Bool)

(declare-fun lt!1046757 () Regex!9437)

(assert (=> d!851718 (validRegex!4170 lt!1046757)))

(assert (=> d!851718 (= lt!1046757 e!1903817)))

(declare-fun c!502051 () Bool)

(assert (=> d!851718 (= c!502051 (or ((_ is EmptyExpr!9437) (Union!9437 lt!1046616 lt!1046614)) ((_ is EmptyLang!9437) (Union!9437 lt!1046616 lt!1046614))))))

(assert (=> d!851718 (validRegex!4170 (Union!9437 lt!1046616 lt!1046614))))

(assert (=> d!851718 (= (derivativeStep!2684 (Union!9437 lt!1046616 lt!1046614) (head!6743 s!11993)) lt!1046757)))

(declare-fun b!3036131 () Bool)

(assert (=> b!3036131 (= c!502049 ((_ is Union!9437) (Union!9437 lt!1046616 lt!1046614)))))

(assert (=> b!3036131 (= e!1903814 e!1903818)))

(declare-fun bm!207306 () Bool)

(assert (=> bm!207306 (= call!207310 (derivativeStep!2684 (ite c!502049 (regOne!19387 (Union!9437 lt!1046616 lt!1046614)) (regTwo!19386 (Union!9437 lt!1046616 lt!1046614))) (head!6743 s!11993)))))

(declare-fun b!3036132 () Bool)

(declare-fun c!502053 () Bool)

(assert (=> b!3036132 (= c!502053 (nullable!3087 (regOne!19386 (Union!9437 lt!1046616 lt!1046614))))))

(assert (=> b!3036132 (= e!1903816 e!1903815)))

(declare-fun bm!207307 () Bool)

(assert (=> bm!207307 (= call!207309 call!207311)))

(assert (= (and d!851718 c!502051) b!3036125))

(assert (= (and d!851718 (not c!502051)) b!3036127))

(assert (= (and b!3036127 c!502052) b!3036129))

(assert (= (and b!3036127 (not c!502052)) b!3036131))

(assert (= (and b!3036131 c!502049) b!3036124))

(assert (= (and b!3036131 (not c!502049)) b!3036130))

(assert (= (and b!3036130 c!502050) b!3036128))

(assert (= (and b!3036130 (not c!502050)) b!3036132))

(assert (= (and b!3036132 c!502053) b!3036126))

(assert (= (and b!3036132 (not c!502053)) b!3036123))

(assert (= (or b!3036126 b!3036123) bm!207307))

(assert (= (or b!3036128 bm!207307) bm!207305))

(assert (= (or b!3036124 bm!207305) bm!207304))

(assert (= (or b!3036124 b!3036126) bm!207306))

(assert (=> bm!207304 m!3369593))

(declare-fun m!3370037 () Bool)

(assert (=> bm!207304 m!3370037))

(declare-fun m!3370039 () Bool)

(assert (=> d!851718 m!3370039))

(assert (=> d!851718 m!3369743))

(assert (=> bm!207306 m!3369593))

(declare-fun m!3370041 () Bool)

(assert (=> bm!207306 m!3370041))

(declare-fun m!3370043 () Bool)

(assert (=> b!3036132 m!3370043))

(assert (=> b!3035495 d!851718))

(assert (=> b!3035495 d!851668))

(assert (=> b!3035495 d!851664))

(declare-fun b!3036133 () Bool)

(declare-fun e!1903823 () Bool)

(declare-fun e!1903819 () Bool)

(assert (=> b!3036133 (= e!1903823 e!1903819)))

(declare-fun res!1248946 () Bool)

(assert (=> b!3036133 (=> (not res!1248946) (not e!1903819))))

(declare-fun lt!1046758 () Bool)

(assert (=> b!3036133 (= res!1248946 (not lt!1046758))))

(declare-fun b!3036134 () Bool)

(declare-fun e!1903821 () Bool)

(assert (=> b!3036134 (= e!1903821 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 r!17423 (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036135 () Bool)

(declare-fun res!1248951 () Bool)

(assert (=> b!3036135 (=> res!1248951 e!1903823)))

(declare-fun e!1903822 () Bool)

(assert (=> b!3036135 (= res!1248951 e!1903822)))

(declare-fun res!1248948 () Bool)

(assert (=> b!3036135 (=> (not res!1248948) (not e!1903822))))

(assert (=> b!3036135 (= res!1248948 lt!1046758)))

(declare-fun b!3036136 () Bool)

(declare-fun e!1903825 () Bool)

(declare-fun e!1903824 () Bool)

(assert (=> b!3036136 (= e!1903825 e!1903824)))

(declare-fun c!502056 () Bool)

(assert (=> b!3036136 (= c!502056 ((_ is EmptyLang!9437) (derivativeStep!2684 r!17423 (head!6743 s!11993))))))

(declare-fun b!3036137 () Bool)

(assert (=> b!3036137 (= e!1903822 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 r!17423 (head!6743 s!11993)))))))

(declare-fun d!851720 () Bool)

(assert (=> d!851720 e!1903825))

(declare-fun c!502054 () Bool)

(assert (=> d!851720 (= c!502054 ((_ is EmptyExpr!9437) (derivativeStep!2684 r!17423 (head!6743 s!11993))))))

(assert (=> d!851720 (= lt!1046758 e!1903821)))

(declare-fun c!502055 () Bool)

(assert (=> d!851720 (= c!502055 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851720 (validRegex!4170 (derivativeStep!2684 r!17423 (head!6743 s!11993)))))

(assert (=> d!851720 (= (matchR!4319 (derivativeStep!2684 r!17423 (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046758)))

(declare-fun bm!207308 () Bool)

(declare-fun call!207313 () Bool)

(assert (=> bm!207308 (= call!207313 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036138 () Bool)

(assert (=> b!3036138 (= e!1903825 (= lt!1046758 call!207313))))

(declare-fun b!3036139 () Bool)

(assert (=> b!3036139 (= e!1903821 (nullable!3087 (derivativeStep!2684 r!17423 (head!6743 s!11993))))))

(declare-fun b!3036140 () Bool)

(declare-fun res!1248950 () Bool)

(assert (=> b!3036140 (=> (not res!1248950) (not e!1903822))))

(assert (=> b!3036140 (= res!1248950 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036141 () Bool)

(declare-fun e!1903820 () Bool)

(assert (=> b!3036141 (= e!1903819 e!1903820)))

(declare-fun res!1248947 () Bool)

(assert (=> b!3036141 (=> res!1248947 e!1903820)))

(assert (=> b!3036141 (= res!1248947 call!207313)))

(declare-fun b!3036142 () Bool)

(declare-fun res!1248944 () Bool)

(assert (=> b!3036142 (=> (not res!1248944) (not e!1903822))))

(assert (=> b!3036142 (= res!1248944 (not call!207313))))

(declare-fun b!3036143 () Bool)

(declare-fun res!1248945 () Bool)

(assert (=> b!3036143 (=> res!1248945 e!1903823)))

(assert (=> b!3036143 (= res!1248945 (not ((_ is ElementMatch!9437) (derivativeStep!2684 r!17423 (head!6743 s!11993)))))))

(assert (=> b!3036143 (= e!1903824 e!1903823)))

(declare-fun b!3036144 () Bool)

(declare-fun res!1248949 () Bool)

(assert (=> b!3036144 (=> res!1248949 e!1903820)))

(assert (=> b!3036144 (= res!1248949 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036145 () Bool)

(assert (=> b!3036145 (= e!1903820 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 r!17423 (head!6743 s!11993))))))))

(declare-fun b!3036146 () Bool)

(assert (=> b!3036146 (= e!1903824 (not lt!1046758))))

(assert (= (and d!851720 c!502055) b!3036139))

(assert (= (and d!851720 (not c!502055)) b!3036134))

(assert (= (and d!851720 c!502054) b!3036138))

(assert (= (and d!851720 (not c!502054)) b!3036136))

(assert (= (and b!3036136 c!502056) b!3036146))

(assert (= (and b!3036136 (not c!502056)) b!3036143))

(assert (= (and b!3036143 (not res!1248945)) b!3036135))

(assert (= (and b!3036135 res!1248948) b!3036142))

(assert (= (and b!3036142 res!1248944) b!3036140))

(assert (= (and b!3036140 res!1248950) b!3036137))

(assert (= (and b!3036135 (not res!1248951)) b!3036133))

(assert (= (and b!3036133 res!1248946) b!3036141))

(assert (= (and b!3036141 (not res!1248947)) b!3036144))

(assert (= (and b!3036144 (not res!1248949)) b!3036145))

(assert (= (or b!3036138 b!3036141 b!3036142) bm!207308))

(assert (=> b!3036144 m!3369585))

(assert (=> b!3036144 m!3369919))

(assert (=> b!3036144 m!3369919))

(assert (=> b!3036144 m!3369921))

(assert (=> b!3036139 m!3369829))

(declare-fun m!3370045 () Bool)

(assert (=> b!3036139 m!3370045))

(assert (=> bm!207308 m!3369585))

(assert (=> bm!207308 m!3369587))

(assert (=> b!3036137 m!3369585))

(assert (=> b!3036137 m!3369925))

(assert (=> b!3036134 m!3369585))

(assert (=> b!3036134 m!3369925))

(assert (=> b!3036134 m!3369829))

(assert (=> b!3036134 m!3369925))

(declare-fun m!3370047 () Bool)

(assert (=> b!3036134 m!3370047))

(assert (=> b!3036134 m!3369585))

(assert (=> b!3036134 m!3369919))

(assert (=> b!3036134 m!3370047))

(assert (=> b!3036134 m!3369919))

(declare-fun m!3370049 () Bool)

(assert (=> b!3036134 m!3370049))

(assert (=> b!3036140 m!3369585))

(assert (=> b!3036140 m!3369919))

(assert (=> b!3036140 m!3369919))

(assert (=> b!3036140 m!3369921))

(assert (=> b!3036145 m!3369585))

(assert (=> b!3036145 m!3369925))

(assert (=> d!851720 m!3369585))

(assert (=> d!851720 m!3369587))

(assert (=> d!851720 m!3369829))

(declare-fun m!3370051 () Bool)

(assert (=> d!851720 m!3370051))

(assert (=> b!3035778 d!851720))

(declare-fun b!3036147 () Bool)

(declare-fun e!1903827 () Regex!9437)

(declare-fun call!207314 () Regex!9437)

(assert (=> b!3036147 (= e!1903827 (Union!9437 (Concat!14758 call!207314 (regTwo!19386 r!17423)) EmptyLang!9437))))

(declare-fun b!3036148 () Bool)

(declare-fun e!1903830 () Regex!9437)

(declare-fun call!207315 () Regex!9437)

(declare-fun call!207317 () Regex!9437)

(assert (=> b!3036148 (= e!1903830 (Union!9437 call!207315 call!207317))))

(declare-fun b!3036149 () Bool)

(declare-fun e!1903829 () Regex!9437)

(assert (=> b!3036149 (= e!1903829 EmptyLang!9437)))

(declare-fun b!3036151 () Bool)

(declare-fun e!1903826 () Regex!9437)

(assert (=> b!3036151 (= e!1903829 e!1903826)))

(declare-fun c!502060 () Bool)

(assert (=> b!3036151 (= c!502060 ((_ is ElementMatch!9437) r!17423))))

(declare-fun c!502057 () Bool)

(declare-fun bm!207309 () Bool)

(declare-fun c!502058 () Bool)

(assert (=> bm!207309 (= call!207317 (derivativeStep!2684 (ite c!502057 (regTwo!19387 r!17423) (ite c!502058 (reg!9766 r!17423) (regOne!19386 r!17423))) (head!6743 s!11993)))))

(declare-fun b!3036152 () Bool)

(declare-fun e!1903828 () Regex!9437)

(declare-fun call!207316 () Regex!9437)

(assert (=> b!3036152 (= e!1903828 (Concat!14758 call!207316 r!17423))))

(declare-fun bm!207310 () Bool)

(assert (=> bm!207310 (= call!207316 call!207317)))

(declare-fun b!3036153 () Bool)

(assert (=> b!3036153 (= e!1903826 (ite (= (head!6743 s!11993) (c!501761 r!17423)) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036154 () Bool)

(assert (=> b!3036154 (= e!1903830 e!1903828)))

(assert (=> b!3036154 (= c!502058 ((_ is Star!9437) r!17423))))

(declare-fun b!3036150 () Bool)

(assert (=> b!3036150 (= e!1903827 (Union!9437 (Concat!14758 call!207314 (regTwo!19386 r!17423)) call!207315))))

(declare-fun d!851722 () Bool)

(declare-fun lt!1046759 () Regex!9437)

(assert (=> d!851722 (validRegex!4170 lt!1046759)))

(assert (=> d!851722 (= lt!1046759 e!1903829)))

(declare-fun c!502059 () Bool)

(assert (=> d!851722 (= c!502059 (or ((_ is EmptyExpr!9437) r!17423) ((_ is EmptyLang!9437) r!17423)))))

(assert (=> d!851722 (validRegex!4170 r!17423)))

(assert (=> d!851722 (= (derivativeStep!2684 r!17423 (head!6743 s!11993)) lt!1046759)))

(declare-fun b!3036155 () Bool)

(assert (=> b!3036155 (= c!502057 ((_ is Union!9437) r!17423))))

(assert (=> b!3036155 (= e!1903826 e!1903830)))

(declare-fun bm!207311 () Bool)

(assert (=> bm!207311 (= call!207315 (derivativeStep!2684 (ite c!502057 (regOne!19387 r!17423) (regTwo!19386 r!17423)) (head!6743 s!11993)))))

(declare-fun b!3036156 () Bool)

(declare-fun c!502061 () Bool)

(assert (=> b!3036156 (= c!502061 (nullable!3087 (regOne!19386 r!17423)))))

(assert (=> b!3036156 (= e!1903828 e!1903827)))

(declare-fun bm!207312 () Bool)

(assert (=> bm!207312 (= call!207314 call!207316)))

(assert (= (and d!851722 c!502059) b!3036149))

(assert (= (and d!851722 (not c!502059)) b!3036151))

(assert (= (and b!3036151 c!502060) b!3036153))

(assert (= (and b!3036151 (not c!502060)) b!3036155))

(assert (= (and b!3036155 c!502057) b!3036148))

(assert (= (and b!3036155 (not c!502057)) b!3036154))

(assert (= (and b!3036154 c!502058) b!3036152))

(assert (= (and b!3036154 (not c!502058)) b!3036156))

(assert (= (and b!3036156 c!502061) b!3036150))

(assert (= (and b!3036156 (not c!502061)) b!3036147))

(assert (= (or b!3036150 b!3036147) bm!207312))

(assert (= (or b!3036152 bm!207312) bm!207310))

(assert (= (or b!3036148 bm!207310) bm!207309))

(assert (= (or b!3036148 b!3036150) bm!207311))

(assert (=> bm!207309 m!3369593))

(declare-fun m!3370053 () Bool)

(assert (=> bm!207309 m!3370053))

(declare-fun m!3370055 () Bool)

(assert (=> d!851722 m!3370055))

(assert (=> d!851722 m!3369569))

(assert (=> bm!207311 m!3369593))

(declare-fun m!3370057 () Bool)

(assert (=> bm!207311 m!3370057))

(declare-fun m!3370059 () Bool)

(assert (=> b!3036156 m!3370059))

(assert (=> b!3035778 d!851722))

(assert (=> b!3035778 d!851668))

(assert (=> b!3035778 d!851664))

(declare-fun d!851724 () Bool)

(assert (=> d!851724 (= (nullable!3087 (simplify!404 r!17423)) (nullableFct!878 (simplify!404 r!17423)))))

(declare-fun bs!530938 () Bool)

(assert (= bs!530938 d!851724))

(assert (=> bs!530938 m!3369571))

(declare-fun m!3370061 () Bool)

(assert (=> bs!530938 m!3370061))

(assert (=> b!3035438 d!851724))

(assert (=> b!3035506 d!851668))

(assert (=> bm!207118 d!851658))

(declare-fun d!851726 () Bool)

(assert (=> d!851726 (= (isEmptyLang!502 (ite c!501879 lt!1046682 (ite c!501876 lt!1046683 lt!1046685))) ((_ is EmptyLang!9437) (ite c!501879 lt!1046682 (ite c!501876 lt!1046683 lt!1046685))))))

(assert (=> bm!207180 d!851726))

(assert (=> b!3035174 d!851668))

(assert (=> b!3035820 d!851662))

(assert (=> b!3035820 d!851664))

(assert (=> d!851590 d!851658))

(assert (=> d!851590 d!851650))

(declare-fun d!851728 () Bool)

(assert (=> d!851728 (= (nullable!3087 lt!1046725) (nullableFct!878 lt!1046725))))

(declare-fun bs!530939 () Bool)

(assert (= bs!530939 d!851728))

(declare-fun m!3370063 () Bool)

(assert (=> bs!530939 m!3370063))

(assert (=> b!3035834 d!851728))

(assert (=> b!3035834 d!851696))

(declare-fun d!851730 () Bool)

(assert (=> d!851730 (= (isEmptyExpr!508 (ite c!501966 lt!1046727 lt!1046726)) ((_ is EmptyExpr!9437) (ite c!501966 lt!1046727 lt!1046726)))))

(assert (=> bm!207241 d!851730))

(assert (=> b!3035789 d!851668))

(assert (=> b!3035169 d!851662))

(assert (=> b!3035169 d!851664))

(declare-fun b!3036157 () Bool)

(declare-fun e!1903833 () Bool)

(declare-fun call!207320 () Bool)

(assert (=> b!3036157 (= e!1903833 call!207320)))

(declare-fun b!3036158 () Bool)

(declare-fun e!1903834 () Bool)

(declare-fun e!1903835 () Bool)

(assert (=> b!3036158 (= e!1903834 e!1903835)))

(declare-fun res!1248952 () Bool)

(assert (=> b!3036158 (= res!1248952 (not (nullable!3087 (reg!9766 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))))

(assert (=> b!3036158 (=> (not res!1248952) (not e!1903835))))

(declare-fun c!502063 () Bool)

(declare-fun c!502062 () Bool)

(declare-fun call!207318 () Bool)

(declare-fun bm!207313 () Bool)

(assert (=> bm!207313 (= call!207318 (validRegex!4170 (ite c!502063 (reg!9766 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))) (ite c!502062 (regOne!19387 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))) (regTwo!19386 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616)))))))))

(declare-fun b!3036159 () Bool)

(declare-fun e!1903832 () Bool)

(assert (=> b!3036159 (= e!1903834 e!1903832)))

(assert (=> b!3036159 (= c!502062 ((_ is Union!9437) (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))

(declare-fun d!851732 () Bool)

(declare-fun res!1248953 () Bool)

(declare-fun e!1903836 () Bool)

(assert (=> d!851732 (=> res!1248953 e!1903836)))

(assert (=> d!851732 (= res!1248953 ((_ is ElementMatch!9437) (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))

(assert (=> d!851732 (= (validRegex!4170 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))) e!1903836)))

(declare-fun b!3036160 () Bool)

(assert (=> b!3036160 (= e!1903836 e!1903834)))

(assert (=> b!3036160 (= c!502063 ((_ is Star!9437) (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))

(declare-fun bm!207314 () Bool)

(assert (=> bm!207314 (= call!207320 (validRegex!4170 (ite c!502062 (regTwo!19387 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))) (regOne!19386 (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616))))))))

(declare-fun bm!207315 () Bool)

(declare-fun call!207319 () Bool)

(assert (=> bm!207315 (= call!207319 call!207318)))

(declare-fun b!3036161 () Bool)

(declare-fun e!1903837 () Bool)

(declare-fun e!1903831 () Bool)

(assert (=> b!3036161 (= e!1903837 e!1903831)))

(declare-fun res!1248955 () Bool)

(assert (=> b!3036161 (=> (not res!1248955) (not e!1903831))))

(assert (=> b!3036161 (= res!1248955 call!207320)))

(declare-fun b!3036162 () Bool)

(assert (=> b!3036162 (= e!1903831 call!207319)))

(declare-fun b!3036163 () Bool)

(declare-fun res!1248954 () Bool)

(assert (=> b!3036163 (=> (not res!1248954) (not e!1903833))))

(assert (=> b!3036163 (= res!1248954 call!207319)))

(assert (=> b!3036163 (= e!1903832 e!1903833)))

(declare-fun b!3036164 () Bool)

(assert (=> b!3036164 (= e!1903835 call!207318)))

(declare-fun b!3036165 () Bool)

(declare-fun res!1248956 () Bool)

(assert (=> b!3036165 (=> res!1248956 e!1903837)))

(assert (=> b!3036165 (= res!1248956 (not ((_ is Concat!14758) (ite c!501952 (regTwo!19387 lt!1046616) (regOne!19386 lt!1046616)))))))

(assert (=> b!3036165 (= e!1903832 e!1903837)))

(assert (= (and d!851732 (not res!1248953)) b!3036160))

(assert (= (and b!3036160 c!502063) b!3036158))

(assert (= (and b!3036160 (not c!502063)) b!3036159))

(assert (= (and b!3036158 res!1248952) b!3036164))

(assert (= (and b!3036159 c!502062) b!3036163))

(assert (= (and b!3036159 (not c!502062)) b!3036165))

(assert (= (and b!3036163 res!1248954) b!3036157))

(assert (= (and b!3036165 (not res!1248956)) b!3036161))

(assert (= (and b!3036161 res!1248955) b!3036162))

(assert (= (or b!3036163 b!3036162) bm!207315))

(assert (= (or b!3036157 b!3036161) bm!207314))

(assert (= (or b!3036164 bm!207315) bm!207313))

(declare-fun m!3370065 () Bool)

(assert (=> b!3036158 m!3370065))

(declare-fun m!3370067 () Bool)

(assert (=> bm!207313 m!3370067))

(declare-fun m!3370069 () Bool)

(assert (=> bm!207314 m!3370069))

(assert (=> bm!207229 d!851732))

(assert (=> d!851620 d!851616))

(declare-fun d!851734 () Bool)

(assert (=> d!851734 (matchR!4319 (Union!9437 lt!1046616 lt!1046614) s!11993)))

(assert (=> d!851734 true))

(declare-fun _$117!233 () Unit!49297)

(assert (=> d!851734 (= (choose!18009 lt!1046614 lt!1046616 s!11993) _$117!233)))

(declare-fun bs!530940 () Bool)

(assert (= bs!530940 d!851734))

(assert (=> bs!530940 m!3369575))

(assert (=> d!851620 d!851734))

(assert (=> d!851620 d!851650))

(assert (=> b!3035166 d!851668))

(declare-fun b!3036166 () Bool)

(declare-fun e!1903840 () Bool)

(declare-fun call!207323 () Bool)

(assert (=> b!3036166 (= e!1903840 call!207323)))

(declare-fun b!3036167 () Bool)

(declare-fun e!1903841 () Bool)

(declare-fun e!1903842 () Bool)

(assert (=> b!3036167 (= e!1903841 e!1903842)))

(declare-fun res!1248957 () Bool)

(assert (=> b!3036167 (= res!1248957 (not (nullable!3087 (reg!9766 lt!1046659))))))

(assert (=> b!3036167 (=> (not res!1248957) (not e!1903842))))

(declare-fun call!207321 () Bool)

(declare-fun c!502064 () Bool)

(declare-fun bm!207316 () Bool)

(declare-fun c!502065 () Bool)

(assert (=> bm!207316 (= call!207321 (validRegex!4170 (ite c!502065 (reg!9766 lt!1046659) (ite c!502064 (regOne!19387 lt!1046659) (regTwo!19386 lt!1046659)))))))

(declare-fun b!3036168 () Bool)

(declare-fun e!1903839 () Bool)

(assert (=> b!3036168 (= e!1903841 e!1903839)))

(assert (=> b!3036168 (= c!502064 ((_ is Union!9437) lt!1046659))))

(declare-fun d!851736 () Bool)

(declare-fun res!1248958 () Bool)

(declare-fun e!1903843 () Bool)

(assert (=> d!851736 (=> res!1248958 e!1903843)))

(assert (=> d!851736 (= res!1248958 ((_ is ElementMatch!9437) lt!1046659))))

(assert (=> d!851736 (= (validRegex!4170 lt!1046659) e!1903843)))

(declare-fun b!3036169 () Bool)

(assert (=> b!3036169 (= e!1903843 e!1903841)))

(assert (=> b!3036169 (= c!502065 ((_ is Star!9437) lt!1046659))))

(declare-fun bm!207317 () Bool)

(assert (=> bm!207317 (= call!207323 (validRegex!4170 (ite c!502064 (regTwo!19387 lt!1046659) (regOne!19386 lt!1046659))))))

(declare-fun bm!207318 () Bool)

(declare-fun call!207322 () Bool)

(assert (=> bm!207318 (= call!207322 call!207321)))

(declare-fun b!3036170 () Bool)

(declare-fun e!1903844 () Bool)

(declare-fun e!1903838 () Bool)

(assert (=> b!3036170 (= e!1903844 e!1903838)))

(declare-fun res!1248960 () Bool)

(assert (=> b!3036170 (=> (not res!1248960) (not e!1903838))))

(assert (=> b!3036170 (= res!1248960 call!207323)))

(declare-fun b!3036171 () Bool)

(assert (=> b!3036171 (= e!1903838 call!207322)))

(declare-fun b!3036172 () Bool)

(declare-fun res!1248959 () Bool)

(assert (=> b!3036172 (=> (not res!1248959) (not e!1903840))))

(assert (=> b!3036172 (= res!1248959 call!207322)))

(assert (=> b!3036172 (= e!1903839 e!1903840)))

(declare-fun b!3036173 () Bool)

(assert (=> b!3036173 (= e!1903842 call!207321)))

(declare-fun b!3036174 () Bool)

(declare-fun res!1248961 () Bool)

(assert (=> b!3036174 (=> res!1248961 e!1903844)))

(assert (=> b!3036174 (= res!1248961 (not ((_ is Concat!14758) lt!1046659)))))

(assert (=> b!3036174 (= e!1903839 e!1903844)))

(assert (= (and d!851736 (not res!1248958)) b!3036169))

(assert (= (and b!3036169 c!502065) b!3036167))

(assert (= (and b!3036169 (not c!502065)) b!3036168))

(assert (= (and b!3036167 res!1248957) b!3036173))

(assert (= (and b!3036168 c!502064) b!3036172))

(assert (= (and b!3036168 (not c!502064)) b!3036174))

(assert (= (and b!3036172 res!1248959) b!3036166))

(assert (= (and b!3036174 (not res!1248961)) b!3036170))

(assert (= (and b!3036170 res!1248960) b!3036171))

(assert (= (or b!3036172 b!3036171) bm!207318))

(assert (= (or b!3036166 b!3036170) bm!207317))

(assert (= (or b!3036173 bm!207318) bm!207316))

(declare-fun m!3370071 () Bool)

(assert (=> b!3036167 m!3370071))

(declare-fun m!3370073 () Bool)

(assert (=> bm!207316 m!3370073))

(declare-fun m!3370075 () Bool)

(assert (=> bm!207317 m!3370075))

(assert (=> d!851594 d!851736))

(assert (=> d!851594 d!851688))

(assert (=> bm!207227 d!851658))

(assert (=> b!3035222 d!851668))

(declare-fun b!3036175 () Bool)

(declare-fun e!1903851 () Regex!9437)

(declare-fun e!1903845 () Regex!9437)

(assert (=> b!3036175 (= e!1903851 e!1903845)))

(declare-fun lt!1046764 () Regex!9437)

(declare-fun call!207327 () Regex!9437)

(assert (=> b!3036175 (= lt!1046764 call!207327)))

(declare-fun lt!1046763 () Regex!9437)

(declare-fun call!207330 () Regex!9437)

(assert (=> b!3036175 (= lt!1046763 call!207330)))

(declare-fun c!502075 () Bool)

(declare-fun call!207328 () Bool)

(assert (=> b!3036175 (= c!502075 call!207328)))

(declare-fun b!3036176 () Bool)

(declare-fun e!1903854 () Regex!9437)

(declare-fun lt!1046765 () Regex!9437)

(declare-fun lt!1046761 () Regex!9437)

(assert (=> b!3036176 (= e!1903854 (Concat!14758 lt!1046765 lt!1046761))))

(declare-fun b!3036177 () Bool)

(declare-fun e!1903858 () Regex!9437)

(assert (=> b!3036177 (= e!1903858 EmptyLang!9437)))

(declare-fun d!851738 () Bool)

(declare-fun e!1903849 () Bool)

(assert (=> d!851738 e!1903849))

(declare-fun res!1248962 () Bool)

(assert (=> d!851738 (=> (not res!1248962) (not e!1903849))))

(declare-fun lt!1046760 () Regex!9437)

(assert (=> d!851738 (= res!1248962 (validRegex!4170 lt!1046760))))

(declare-fun e!1903856 () Regex!9437)

(assert (=> d!851738 (= lt!1046760 e!1903856)))

(declare-fun c!502066 () Bool)

(assert (=> d!851738 (= c!502066 ((_ is EmptyLang!9437) (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(assert (=> d!851738 (validRegex!4170 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))))))

(assert (=> d!851738 (= (simplify!404 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))) lt!1046760)))

(declare-fun b!3036178 () Bool)

(assert (=> b!3036178 (= e!1903854 lt!1046765)))

(declare-fun b!3036179 () Bool)

(declare-fun e!1903857 () Regex!9437)

(assert (=> b!3036179 (= e!1903857 e!1903854)))

(declare-fun c!502068 () Bool)

(declare-fun call!207325 () Bool)

(assert (=> b!3036179 (= c!502068 call!207325)))

(declare-fun b!3036180 () Bool)

(assert (=> b!3036180 (= e!1903856 EmptyLang!9437)))

(declare-fun b!3036181 () Bool)

(declare-fun e!1903848 () Regex!9437)

(assert (=> b!3036181 (= e!1903848 EmptyExpr!9437)))

(declare-fun b!3036182 () Bool)

(assert (=> b!3036182 (= e!1903857 lt!1046761)))

(declare-fun bm!207319 () Bool)

(declare-fun c!502070 () Bool)

(assert (=> bm!207319 (= call!207328 (isEmptyLang!502 (ite c!502070 lt!1046764 lt!1046761)))))

(declare-fun b!3036183 () Bool)

(assert (=> b!3036183 (= e!1903849 (= (nullable!3087 lt!1046760) (nullable!3087 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))))))))

(declare-fun bm!207320 () Bool)

(declare-fun call!207329 () Bool)

(declare-fun call!207324 () Bool)

(assert (=> bm!207320 (= call!207329 call!207324)))

(declare-fun b!3036184 () Bool)

(declare-fun e!1903852 () Regex!9437)

(assert (=> b!3036184 (= e!1903856 e!1903852)))

(declare-fun c!502067 () Bool)

(assert (=> b!3036184 (= c!502067 ((_ is ElementMatch!9437) (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(declare-fun b!3036185 () Bool)

(declare-fun c!502072 () Bool)

(declare-fun e!1903846 () Bool)

(assert (=> b!3036185 (= c!502072 e!1903846)))

(declare-fun res!1248963 () Bool)

(assert (=> b!3036185 (=> res!1248963 e!1903846)))

(assert (=> b!3036185 (= res!1248963 call!207324)))

(declare-fun lt!1046762 () Regex!9437)

(declare-fun call!207326 () Regex!9437)

(assert (=> b!3036185 (= lt!1046762 call!207326)))

(declare-fun e!1903850 () Regex!9437)

(assert (=> b!3036185 (= e!1903850 e!1903848)))

(declare-fun b!3036186 () Bool)

(declare-fun e!1903847 () Regex!9437)

(assert (=> b!3036186 (= e!1903847 (Union!9437 lt!1046764 lt!1046763))))

(declare-fun b!3036187 () Bool)

(assert (=> b!3036187 (= e!1903851 e!1903858)))

(assert (=> b!3036187 (= lt!1046765 call!207330)))

(assert (=> b!3036187 (= lt!1046761 call!207327)))

(declare-fun res!1248964 () Bool)

(assert (=> b!3036187 (= res!1248964 call!207329)))

(declare-fun e!1903853 () Bool)

(assert (=> b!3036187 (=> res!1248964 e!1903853)))

(declare-fun c!502071 () Bool)

(assert (=> b!3036187 (= c!502071 e!1903853)))

(declare-fun b!3036188 () Bool)

(declare-fun c!502074 () Bool)

(assert (=> b!3036188 (= c!502074 call!207329)))

(assert (=> b!3036188 (= e!1903845 e!1903847)))

(declare-fun c!502073 () Bool)

(declare-fun bm!207321 () Bool)

(assert (=> bm!207321 (= call!207324 (isEmptyLang!502 (ite c!502073 lt!1046762 (ite c!502070 lt!1046763 lt!1046765))))))

(declare-fun b!3036189 () Bool)

(declare-fun e!1903855 () Regex!9437)

(assert (=> b!3036189 (= e!1903855 e!1903850)))

(assert (=> b!3036189 (= c!502073 ((_ is Star!9437) (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(declare-fun b!3036190 () Bool)

(assert (=> b!3036190 (= e!1903852 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))))))

(declare-fun b!3036191 () Bool)

(assert (=> b!3036191 (= c!502070 ((_ is Union!9437) (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(assert (=> b!3036191 (= e!1903850 e!1903851)))

(declare-fun bm!207322 () Bool)

(assert (=> bm!207322 (= call!207330 call!207326)))

(declare-fun bm!207323 () Bool)

(assert (=> bm!207323 (= call!207327 (simplify!404 (ite c!502070 (regOne!19387 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))) (regTwo!19386 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))))

(declare-fun b!3036192 () Bool)

(declare-fun c!502069 () Bool)

(assert (=> b!3036192 (= c!502069 ((_ is EmptyExpr!9437) (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))))))

(assert (=> b!3036192 (= e!1903852 e!1903855)))

(declare-fun b!3036193 () Bool)

(assert (=> b!3036193 (= e!1903855 EmptyExpr!9437)))

(declare-fun b!3036194 () Bool)

(assert (=> b!3036194 (= e!1903847 lt!1046764)))

(declare-fun bm!207324 () Bool)

(assert (=> bm!207324 (= call!207326 (simplify!404 (ite c!502073 (reg!9766 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))) (ite c!502070 (regTwo!19387 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423)))) (regOne!19386 (ite c!501843 (regOne!19387 (regTwo!19387 r!17423)) (regTwo!19386 (regTwo!19387 r!17423))))))))))

(declare-fun b!3036195 () Bool)

(assert (=> b!3036195 (= e!1903846 call!207325)))

(declare-fun b!3036196 () Bool)

(assert (=> b!3036196 (= e!1903845 lt!1046763)))

(declare-fun b!3036197 () Bool)

(assert (=> b!3036197 (= e!1903853 call!207328)))

(declare-fun b!3036198 () Bool)

(declare-fun c!502076 () Bool)

(assert (=> b!3036198 (= c!502076 (isEmptyExpr!508 lt!1046765))))

(assert (=> b!3036198 (= e!1903858 e!1903857)))

(declare-fun bm!207325 () Bool)

(assert (=> bm!207325 (= call!207325 (isEmptyExpr!508 (ite c!502073 lt!1046762 lt!1046761)))))

(declare-fun b!3036199 () Bool)

(assert (=> b!3036199 (= e!1903848 (Star!9437 lt!1046762))))

(assert (= (and d!851738 c!502066) b!3036180))

(assert (= (and d!851738 (not c!502066)) b!3036184))

(assert (= (and b!3036184 c!502067) b!3036190))

(assert (= (and b!3036184 (not c!502067)) b!3036192))

(assert (= (and b!3036192 c!502069) b!3036193))

(assert (= (and b!3036192 (not c!502069)) b!3036189))

(assert (= (and b!3036189 c!502073) b!3036185))

(assert (= (and b!3036189 (not c!502073)) b!3036191))

(assert (= (and b!3036185 (not res!1248963)) b!3036195))

(assert (= (and b!3036185 c!502072) b!3036181))

(assert (= (and b!3036185 (not c!502072)) b!3036199))

(assert (= (and b!3036191 c!502070) b!3036175))

(assert (= (and b!3036191 (not c!502070)) b!3036187))

(assert (= (and b!3036175 c!502075) b!3036196))

(assert (= (and b!3036175 (not c!502075)) b!3036188))

(assert (= (and b!3036188 c!502074) b!3036194))

(assert (= (and b!3036188 (not c!502074)) b!3036186))

(assert (= (and b!3036187 (not res!1248964)) b!3036197))

(assert (= (and b!3036187 c!502071) b!3036177))

(assert (= (and b!3036187 (not c!502071)) b!3036198))

(assert (= (and b!3036198 c!502076) b!3036182))

(assert (= (and b!3036198 (not c!502076)) b!3036179))

(assert (= (and b!3036179 c!502068) b!3036178))

(assert (= (and b!3036179 (not c!502068)) b!3036176))

(assert (= (or b!3036175 b!3036187) bm!207323))

(assert (= (or b!3036175 b!3036187) bm!207322))

(assert (= (or b!3036188 b!3036187) bm!207320))

(assert (= (or b!3036175 b!3036197) bm!207319))

(assert (= (or b!3036195 b!3036179) bm!207325))

(assert (= (or b!3036185 bm!207322) bm!207324))

(assert (= (or b!3036185 bm!207320) bm!207321))

(assert (= (and d!851738 res!1248962) b!3036183))

(declare-fun m!3370077 () Bool)

(assert (=> b!3036183 m!3370077))

(declare-fun m!3370079 () Bool)

(assert (=> b!3036183 m!3370079))

(declare-fun m!3370081 () Bool)

(assert (=> bm!207325 m!3370081))

(declare-fun m!3370083 () Bool)

(assert (=> bm!207324 m!3370083))

(declare-fun m!3370085 () Bool)

(assert (=> bm!207321 m!3370085))

(declare-fun m!3370087 () Bool)

(assert (=> b!3036198 m!3370087))

(declare-fun m!3370089 () Bool)

(assert (=> d!851738 m!3370089))

(declare-fun m!3370091 () Bool)

(assert (=> d!851738 m!3370091))

(declare-fun m!3370093 () Bool)

(assert (=> bm!207319 m!3370093))

(declare-fun m!3370095 () Bool)

(assert (=> bm!207323 m!3370095))

(assert (=> bm!207162 d!851738))

(declare-fun b!3036200 () Bool)

(declare-fun e!1903861 () Bool)

(declare-fun call!207333 () Bool)

(assert (=> b!3036200 (= e!1903861 call!207333)))

(declare-fun b!3036201 () Bool)

(declare-fun e!1903862 () Bool)

(declare-fun e!1903863 () Bool)

(assert (=> b!3036201 (= e!1903862 e!1903863)))

(declare-fun res!1248965 () Bool)

(assert (=> b!3036201 (= res!1248965 (not (nullable!3087 (reg!9766 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))))

(assert (=> b!3036201 (=> (not res!1248965) (not e!1903863))))

(declare-fun c!502077 () Bool)

(declare-fun bm!207326 () Bool)

(declare-fun c!502078 () Bool)

(declare-fun call!207331 () Bool)

(assert (=> bm!207326 (= call!207331 (validRegex!4170 (ite c!502078 (reg!9766 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))) (ite c!502077 (regOne!19387 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))) (regTwo!19386 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614))))))))))

(declare-fun b!3036202 () Bool)

(declare-fun e!1903860 () Bool)

(assert (=> b!3036202 (= e!1903862 e!1903860)))

(assert (=> b!3036202 (= c!502077 ((_ is Union!9437) (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))

(declare-fun d!851740 () Bool)

(declare-fun res!1248966 () Bool)

(declare-fun e!1903864 () Bool)

(assert (=> d!851740 (=> res!1248966 e!1903864)))

(assert (=> d!851740 (= res!1248966 ((_ is ElementMatch!9437) (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))

(assert (=> d!851740 (= (validRegex!4170 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))) e!1903864)))

(declare-fun b!3036203 () Bool)

(assert (=> b!3036203 (= e!1903864 e!1903862)))

(assert (=> b!3036203 (= c!502078 ((_ is Star!9437) (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))

(declare-fun bm!207327 () Bool)

(assert (=> bm!207327 (= call!207333 (validRegex!4170 (ite c!502077 (regTwo!19387 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))) (regOne!19386 (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)))))))))

(declare-fun bm!207328 () Bool)

(declare-fun call!207332 () Bool)

(assert (=> bm!207328 (= call!207332 call!207331)))

(declare-fun b!3036204 () Bool)

(declare-fun e!1903865 () Bool)

(declare-fun e!1903859 () Bool)

(assert (=> b!3036204 (= e!1903865 e!1903859)))

(declare-fun res!1248968 () Bool)

(assert (=> b!3036204 (=> (not res!1248968) (not e!1903859))))

(assert (=> b!3036204 (= res!1248968 call!207333)))

(declare-fun b!3036205 () Bool)

(assert (=> b!3036205 (= e!1903859 call!207332)))

(declare-fun b!3036206 () Bool)

(declare-fun res!1248967 () Bool)

(assert (=> b!3036206 (=> (not res!1248967) (not e!1903861))))

(assert (=> b!3036206 (= res!1248967 call!207332)))

(assert (=> b!3036206 (= e!1903860 e!1903861)))

(declare-fun b!3036207 () Bool)

(assert (=> b!3036207 (= e!1903863 call!207331)))

(declare-fun b!3036208 () Bool)

(declare-fun res!1248969 () Bool)

(assert (=> b!3036208 (=> res!1248969 e!1903865)))

(assert (=> b!3036208 (= res!1248969 (not ((_ is Concat!14758) (ite c!501955 (reg!9766 lt!1046614) (ite c!501954 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614))))))))

(assert (=> b!3036208 (= e!1903860 e!1903865)))

(assert (= (and d!851740 (not res!1248966)) b!3036203))

(assert (= (and b!3036203 c!502078) b!3036201))

(assert (= (and b!3036203 (not c!502078)) b!3036202))

(assert (= (and b!3036201 res!1248965) b!3036207))

(assert (= (and b!3036202 c!502077) b!3036206))

(assert (= (and b!3036202 (not c!502077)) b!3036208))

(assert (= (and b!3036206 res!1248967) b!3036200))

(assert (= (and b!3036208 (not res!1248969)) b!3036204))

(assert (= (and b!3036204 res!1248968) b!3036205))

(assert (= (or b!3036206 b!3036205) bm!207328))

(assert (= (or b!3036200 b!3036204) bm!207327))

(assert (= (or b!3036207 bm!207328) bm!207326))

(declare-fun m!3370097 () Bool)

(assert (=> b!3036201 m!3370097))

(declare-fun m!3370099 () Bool)

(assert (=> bm!207326 m!3370099))

(declare-fun m!3370101 () Bool)

(assert (=> bm!207327 m!3370101))

(assert (=> bm!207231 d!851740))

(declare-fun d!851742 () Bool)

(assert (=> d!851742 (= (nullable!3087 (reg!9766 lt!1046616)) (nullableFct!878 (reg!9766 lt!1046616)))))

(declare-fun bs!530941 () Bool)

(assert (= bs!530941 d!851742))

(declare-fun m!3370103 () Bool)

(assert (=> bs!530941 m!3370103))

(assert (=> b!3035792 d!851742))

(assert (=> b!3035208 d!851668))

(assert (=> bm!207185 d!851658))

(assert (=> b!3035816 d!851662))

(assert (=> b!3035816 d!851664))

(assert (=> b!3035443 d!851662))

(assert (=> b!3035443 d!851664))

(declare-fun b!3036209 () Bool)

(declare-fun e!1903870 () Bool)

(declare-fun e!1903866 () Bool)

(assert (=> b!3036209 (= e!1903870 e!1903866)))

(declare-fun res!1248972 () Bool)

(assert (=> b!3036209 (=> (not res!1248972) (not e!1903866))))

(declare-fun lt!1046766 () Bool)

(assert (=> b!3036209 (= res!1248972 (not lt!1046766))))

(declare-fun e!1903868 () Bool)

(declare-fun b!3036210 () Bool)

(assert (=> b!3036210 (= e!1903868 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036211 () Bool)

(declare-fun res!1248977 () Bool)

(assert (=> b!3036211 (=> res!1248977 e!1903870)))

(declare-fun e!1903869 () Bool)

(assert (=> b!3036211 (= res!1248977 e!1903869)))

(declare-fun res!1248974 () Bool)

(assert (=> b!3036211 (=> (not res!1248974) (not e!1903869))))

(assert (=> b!3036211 (= res!1248974 lt!1046766)))

(declare-fun b!3036212 () Bool)

(declare-fun e!1903872 () Bool)

(declare-fun e!1903871 () Bool)

(assert (=> b!3036212 (= e!1903872 e!1903871)))

(declare-fun c!502081 () Bool)

(assert (=> b!3036212 (= c!502081 ((_ is EmptyLang!9437) (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993))))))

(declare-fun b!3036213 () Bool)

(assert (=> b!3036213 (= e!1903869 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)))))))

(declare-fun d!851744 () Bool)

(assert (=> d!851744 e!1903872))

(declare-fun c!502079 () Bool)

(assert (=> d!851744 (= c!502079 ((_ is EmptyExpr!9437) (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993))))))

(assert (=> d!851744 (= lt!1046766 e!1903868)))

(declare-fun c!502080 () Bool)

(assert (=> d!851744 (= c!502080 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851744 (validRegex!4170 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)))))

(assert (=> d!851744 (= (matchR!4319 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046766)))

(declare-fun bm!207329 () Bool)

(declare-fun call!207334 () Bool)

(assert (=> bm!207329 (= call!207334 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036214 () Bool)

(assert (=> b!3036214 (= e!1903872 (= lt!1046766 call!207334))))

(declare-fun b!3036215 () Bool)

(assert (=> b!3036215 (= e!1903868 (nullable!3087 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993))))))

(declare-fun b!3036216 () Bool)

(declare-fun res!1248976 () Bool)

(assert (=> b!3036216 (=> (not res!1248976) (not e!1903869))))

(assert (=> b!3036216 (= res!1248976 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036217 () Bool)

(declare-fun e!1903867 () Bool)

(assert (=> b!3036217 (= e!1903866 e!1903867)))

(declare-fun res!1248973 () Bool)

(assert (=> b!3036217 (=> res!1248973 e!1903867)))

(assert (=> b!3036217 (= res!1248973 call!207334)))

(declare-fun b!3036218 () Bool)

(declare-fun res!1248970 () Bool)

(assert (=> b!3036218 (=> (not res!1248970) (not e!1903869))))

(assert (=> b!3036218 (= res!1248970 (not call!207334))))

(declare-fun b!3036219 () Bool)

(declare-fun res!1248971 () Bool)

(assert (=> b!3036219 (=> res!1248971 e!1903870)))

(assert (=> b!3036219 (= res!1248971 (not ((_ is ElementMatch!9437) (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)))))))

(assert (=> b!3036219 (= e!1903871 e!1903870)))

(declare-fun b!3036220 () Bool)

(declare-fun res!1248975 () Bool)

(assert (=> b!3036220 (=> res!1248975 e!1903867)))

(assert (=> b!3036220 (= res!1248975 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036221 () Bool)

(assert (=> b!3036221 (= e!1903867 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993))))))))

(declare-fun b!3036222 () Bool)

(assert (=> b!3036222 (= e!1903871 (not lt!1046766))))

(assert (= (and d!851744 c!502080) b!3036215))

(assert (= (and d!851744 (not c!502080)) b!3036210))

(assert (= (and d!851744 c!502079) b!3036214))

(assert (= (and d!851744 (not c!502079)) b!3036212))

(assert (= (and b!3036212 c!502081) b!3036222))

(assert (= (and b!3036212 (not c!502081)) b!3036219))

(assert (= (and b!3036219 (not res!1248971)) b!3036211))

(assert (= (and b!3036211 res!1248974) b!3036218))

(assert (= (and b!3036218 res!1248970) b!3036216))

(assert (= (and b!3036216 res!1248976) b!3036213))

(assert (= (and b!3036211 (not res!1248977)) b!3036209))

(assert (= (and b!3036209 res!1248972) b!3036217))

(assert (= (and b!3036217 (not res!1248973)) b!3036220))

(assert (= (and b!3036220 (not res!1248975)) b!3036221))

(assert (= (or b!3036214 b!3036217 b!3036218) bm!207329))

(assert (=> b!3036220 m!3369585))

(assert (=> b!3036220 m!3369919))

(assert (=> b!3036220 m!3369919))

(assert (=> b!3036220 m!3369921))

(assert (=> b!3036215 m!3369849))

(declare-fun m!3370105 () Bool)

(assert (=> b!3036215 m!3370105))

(assert (=> bm!207329 m!3369585))

(assert (=> bm!207329 m!3369587))

(assert (=> b!3036213 m!3369585))

(assert (=> b!3036213 m!3369925))

(assert (=> b!3036210 m!3369585))

(assert (=> b!3036210 m!3369925))

(assert (=> b!3036210 m!3369849))

(assert (=> b!3036210 m!3369925))

(declare-fun m!3370107 () Bool)

(assert (=> b!3036210 m!3370107))

(assert (=> b!3036210 m!3369585))

(assert (=> b!3036210 m!3369919))

(assert (=> b!3036210 m!3370107))

(assert (=> b!3036210 m!3369919))

(declare-fun m!3370109 () Bool)

(assert (=> b!3036210 m!3370109))

(assert (=> b!3036216 m!3369585))

(assert (=> b!3036216 m!3369919))

(assert (=> b!3036216 m!3369919))

(assert (=> b!3036216 m!3369921))

(assert (=> b!3036221 m!3369585))

(assert (=> b!3036221 m!3369925))

(assert (=> d!851744 m!3369585))

(assert (=> d!851744 m!3369587))

(assert (=> d!851744 m!3369849))

(declare-fun m!3370111 () Bool)

(assert (=> d!851744 m!3370111))

(assert (=> b!3035810 d!851744))

(declare-fun e!1903874 () Regex!9437)

(declare-fun call!207335 () Regex!9437)

(declare-fun b!3036223 () Bool)

(assert (=> b!3036223 (= e!1903874 (Union!9437 (Concat!14758 call!207335 (regTwo!19386 (Union!9437 lt!1046614 lt!1046616))) EmptyLang!9437))))

(declare-fun b!3036224 () Bool)

(declare-fun e!1903877 () Regex!9437)

(declare-fun call!207336 () Regex!9437)

(declare-fun call!207338 () Regex!9437)

(assert (=> b!3036224 (= e!1903877 (Union!9437 call!207336 call!207338))))

(declare-fun b!3036225 () Bool)

(declare-fun e!1903876 () Regex!9437)

(assert (=> b!3036225 (= e!1903876 EmptyLang!9437)))

(declare-fun b!3036227 () Bool)

(declare-fun e!1903873 () Regex!9437)

(assert (=> b!3036227 (= e!1903876 e!1903873)))

(declare-fun c!502085 () Bool)

(assert (=> b!3036227 (= c!502085 ((_ is ElementMatch!9437) (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun c!502083 () Bool)

(declare-fun c!502082 () Bool)

(declare-fun bm!207330 () Bool)

(assert (=> bm!207330 (= call!207338 (derivativeStep!2684 (ite c!502082 (regTwo!19387 (Union!9437 lt!1046614 lt!1046616)) (ite c!502083 (reg!9766 (Union!9437 lt!1046614 lt!1046616)) (regOne!19386 (Union!9437 lt!1046614 lt!1046616)))) (head!6743 s!11993)))))

(declare-fun b!3036228 () Bool)

(declare-fun e!1903875 () Regex!9437)

(declare-fun call!207337 () Regex!9437)

(assert (=> b!3036228 (= e!1903875 (Concat!14758 call!207337 (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun bm!207331 () Bool)

(assert (=> bm!207331 (= call!207337 call!207338)))

(declare-fun b!3036229 () Bool)

(assert (=> b!3036229 (= e!1903873 (ite (= (head!6743 s!11993) (c!501761 (Union!9437 lt!1046614 lt!1046616))) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036230 () Bool)

(assert (=> b!3036230 (= e!1903877 e!1903875)))

(assert (=> b!3036230 (= c!502083 ((_ is Star!9437) (Union!9437 lt!1046614 lt!1046616)))))

(declare-fun b!3036226 () Bool)

(assert (=> b!3036226 (= e!1903874 (Union!9437 (Concat!14758 call!207335 (regTwo!19386 (Union!9437 lt!1046614 lt!1046616))) call!207336))))

(declare-fun d!851746 () Bool)

(declare-fun lt!1046767 () Regex!9437)

(assert (=> d!851746 (validRegex!4170 lt!1046767)))

(assert (=> d!851746 (= lt!1046767 e!1903876)))

(declare-fun c!502084 () Bool)

(assert (=> d!851746 (= c!502084 (or ((_ is EmptyExpr!9437) (Union!9437 lt!1046614 lt!1046616)) ((_ is EmptyLang!9437) (Union!9437 lt!1046614 lt!1046616))))))

(assert (=> d!851746 (validRegex!4170 (Union!9437 lt!1046614 lt!1046616))))

(assert (=> d!851746 (= (derivativeStep!2684 (Union!9437 lt!1046614 lt!1046616) (head!6743 s!11993)) lt!1046767)))

(declare-fun b!3036231 () Bool)

(assert (=> b!3036231 (= c!502082 ((_ is Union!9437) (Union!9437 lt!1046614 lt!1046616)))))

(assert (=> b!3036231 (= e!1903873 e!1903877)))

(declare-fun bm!207332 () Bool)

(assert (=> bm!207332 (= call!207336 (derivativeStep!2684 (ite c!502082 (regOne!19387 (Union!9437 lt!1046614 lt!1046616)) (regTwo!19386 (Union!9437 lt!1046614 lt!1046616))) (head!6743 s!11993)))))

(declare-fun b!3036232 () Bool)

(declare-fun c!502086 () Bool)

(assert (=> b!3036232 (= c!502086 (nullable!3087 (regOne!19386 (Union!9437 lt!1046614 lt!1046616))))))

(assert (=> b!3036232 (= e!1903875 e!1903874)))

(declare-fun bm!207333 () Bool)

(assert (=> bm!207333 (= call!207335 call!207337)))

(assert (= (and d!851746 c!502084) b!3036225))

(assert (= (and d!851746 (not c!502084)) b!3036227))

(assert (= (and b!3036227 c!502085) b!3036229))

(assert (= (and b!3036227 (not c!502085)) b!3036231))

(assert (= (and b!3036231 c!502082) b!3036224))

(assert (= (and b!3036231 (not c!502082)) b!3036230))

(assert (= (and b!3036230 c!502083) b!3036228))

(assert (= (and b!3036230 (not c!502083)) b!3036232))

(assert (= (and b!3036232 c!502086) b!3036226))

(assert (= (and b!3036232 (not c!502086)) b!3036223))

(assert (= (or b!3036226 b!3036223) bm!207333))

(assert (= (or b!3036228 bm!207333) bm!207331))

(assert (= (or b!3036224 bm!207331) bm!207330))

(assert (= (or b!3036224 b!3036226) bm!207332))

(assert (=> bm!207330 m!3369593))

(declare-fun m!3370113 () Bool)

(assert (=> bm!207330 m!3370113))

(declare-fun m!3370115 () Bool)

(assert (=> d!851746 m!3370115))

(assert (=> d!851746 m!3369853))

(assert (=> bm!207332 m!3369593))

(declare-fun m!3370117 () Bool)

(assert (=> bm!207332 m!3370117))

(declare-fun m!3370119 () Bool)

(assert (=> b!3036232 m!3370119))

(assert (=> b!3035810 d!851746))

(assert (=> b!3035810 d!851668))

(assert (=> b!3035810 d!851664))

(assert (=> d!851582 d!851658))

(assert (=> d!851582 d!851680))

(declare-fun b!3036233 () Bool)

(declare-fun e!1903884 () Regex!9437)

(declare-fun e!1903878 () Regex!9437)

(assert (=> b!3036233 (= e!1903884 e!1903878)))

(declare-fun lt!1046772 () Regex!9437)

(declare-fun call!207342 () Regex!9437)

(assert (=> b!3036233 (= lt!1046772 call!207342)))

(declare-fun lt!1046771 () Regex!9437)

(declare-fun call!207345 () Regex!9437)

(assert (=> b!3036233 (= lt!1046771 call!207345)))

(declare-fun c!502096 () Bool)

(declare-fun call!207343 () Bool)

(assert (=> b!3036233 (= c!502096 call!207343)))

(declare-fun b!3036234 () Bool)

(declare-fun e!1903887 () Regex!9437)

(declare-fun lt!1046773 () Regex!9437)

(declare-fun lt!1046769 () Regex!9437)

(assert (=> b!3036234 (= e!1903887 (Concat!14758 lt!1046773 lt!1046769))))

(declare-fun b!3036235 () Bool)

(declare-fun e!1903891 () Regex!9437)

(assert (=> b!3036235 (= e!1903891 EmptyLang!9437)))

(declare-fun d!851748 () Bool)

(declare-fun e!1903882 () Bool)

(assert (=> d!851748 e!1903882))

(declare-fun res!1248978 () Bool)

(assert (=> d!851748 (=> (not res!1248978) (not e!1903882))))

(declare-fun lt!1046768 () Regex!9437)

(assert (=> d!851748 (= res!1248978 (validRegex!4170 lt!1046768))))

(declare-fun e!1903889 () Regex!9437)

(assert (=> d!851748 (= lt!1046768 e!1903889)))

(declare-fun c!502087 () Bool)

(assert (=> d!851748 (= c!502087 ((_ is EmptyLang!9437) (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(assert (=> d!851748 (validRegex!4170 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))

(assert (=> d!851748 (= (simplify!404 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))) lt!1046768)))

(declare-fun b!3036236 () Bool)

(assert (=> b!3036236 (= e!1903887 lt!1046773)))

(declare-fun b!3036237 () Bool)

(declare-fun e!1903890 () Regex!9437)

(assert (=> b!3036237 (= e!1903890 e!1903887)))

(declare-fun c!502089 () Bool)

(declare-fun call!207340 () Bool)

(assert (=> b!3036237 (= c!502089 call!207340)))

(declare-fun b!3036238 () Bool)

(assert (=> b!3036238 (= e!1903889 EmptyLang!9437)))

(declare-fun b!3036239 () Bool)

(declare-fun e!1903881 () Regex!9437)

(assert (=> b!3036239 (= e!1903881 EmptyExpr!9437)))

(declare-fun b!3036240 () Bool)

(assert (=> b!3036240 (= e!1903890 lt!1046769)))

(declare-fun bm!207334 () Bool)

(declare-fun c!502091 () Bool)

(assert (=> bm!207334 (= call!207343 (isEmptyLang!502 (ite c!502091 lt!1046772 lt!1046769)))))

(declare-fun b!3036241 () Bool)

(assert (=> b!3036241 (= e!1903882 (= (nullable!3087 lt!1046768) (nullable!3087 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))

(declare-fun bm!207335 () Bool)

(declare-fun call!207344 () Bool)

(declare-fun call!207339 () Bool)

(assert (=> bm!207335 (= call!207344 call!207339)))

(declare-fun b!3036242 () Bool)

(declare-fun e!1903885 () Regex!9437)

(assert (=> b!3036242 (= e!1903889 e!1903885)))

(declare-fun c!502088 () Bool)

(assert (=> b!3036242 (= c!502088 ((_ is ElementMatch!9437) (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(declare-fun b!3036243 () Bool)

(declare-fun c!502093 () Bool)

(declare-fun e!1903879 () Bool)

(assert (=> b!3036243 (= c!502093 e!1903879)))

(declare-fun res!1248979 () Bool)

(assert (=> b!3036243 (=> res!1248979 e!1903879)))

(assert (=> b!3036243 (= res!1248979 call!207339)))

(declare-fun lt!1046770 () Regex!9437)

(declare-fun call!207341 () Regex!9437)

(assert (=> b!3036243 (= lt!1046770 call!207341)))

(declare-fun e!1903883 () Regex!9437)

(assert (=> b!3036243 (= e!1903883 e!1903881)))

(declare-fun b!3036244 () Bool)

(declare-fun e!1903880 () Regex!9437)

(assert (=> b!3036244 (= e!1903880 (Union!9437 lt!1046772 lt!1046771))))

(declare-fun b!3036245 () Bool)

(assert (=> b!3036245 (= e!1903884 e!1903891)))

(assert (=> b!3036245 (= lt!1046773 call!207345)))

(assert (=> b!3036245 (= lt!1046769 call!207342)))

(declare-fun res!1248980 () Bool)

(assert (=> b!3036245 (= res!1248980 call!207344)))

(declare-fun e!1903886 () Bool)

(assert (=> b!3036245 (=> res!1248980 e!1903886)))

(declare-fun c!502092 () Bool)

(assert (=> b!3036245 (= c!502092 e!1903886)))

(declare-fun b!3036246 () Bool)

(declare-fun c!502095 () Bool)

(assert (=> b!3036246 (= c!502095 call!207344)))

(assert (=> b!3036246 (= e!1903878 e!1903880)))

(declare-fun c!502094 () Bool)

(declare-fun bm!207336 () Bool)

(assert (=> bm!207336 (= call!207339 (isEmptyLang!502 (ite c!502094 lt!1046770 (ite c!502091 lt!1046771 lt!1046773))))))

(declare-fun b!3036247 () Bool)

(declare-fun e!1903888 () Regex!9437)

(assert (=> b!3036247 (= e!1903888 e!1903883)))

(assert (=> b!3036247 (= c!502094 ((_ is Star!9437) (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(declare-fun b!3036248 () Bool)

(assert (=> b!3036248 (= e!1903885 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))

(declare-fun b!3036249 () Bool)

(assert (=> b!3036249 (= c!502091 ((_ is Union!9437) (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(assert (=> b!3036249 (= e!1903883 e!1903884)))

(declare-fun bm!207337 () Bool)

(assert (=> bm!207337 (= call!207345 call!207341)))

(declare-fun bm!207338 () Bool)

(assert (=> bm!207338 (= call!207342 (simplify!404 (ite c!502091 (regOne!19387 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))) (regTwo!19386 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))))

(declare-fun b!3036250 () Bool)

(declare-fun c!502090 () Bool)

(assert (=> b!3036250 (= c!502090 ((_ is EmptyExpr!9437) (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))))))

(assert (=> b!3036250 (= e!1903885 e!1903888)))

(declare-fun b!3036251 () Bool)

(assert (=> b!3036251 (= e!1903888 EmptyExpr!9437)))

(declare-fun b!3036252 () Bool)

(assert (=> b!3036252 (= e!1903880 lt!1046772)))

(declare-fun bm!207339 () Bool)

(assert (=> bm!207339 (= call!207341 (simplify!404 (ite c!502094 (reg!9766 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))) (ite c!502091 (regTwo!19387 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423))) (regOne!19386 (ite c!501876 (regOne!19387 r!17423) (regTwo!19386 r!17423)))))))))

(declare-fun b!3036253 () Bool)

(assert (=> b!3036253 (= e!1903879 call!207340)))

(declare-fun b!3036254 () Bool)

(assert (=> b!3036254 (= e!1903878 lt!1046771)))

(declare-fun b!3036255 () Bool)

(assert (=> b!3036255 (= e!1903886 call!207343)))

(declare-fun b!3036256 () Bool)

(declare-fun c!502097 () Bool)

(assert (=> b!3036256 (= c!502097 (isEmptyExpr!508 lt!1046773))))

(assert (=> b!3036256 (= e!1903891 e!1903890)))

(declare-fun bm!207340 () Bool)

(assert (=> bm!207340 (= call!207340 (isEmptyExpr!508 (ite c!502094 lt!1046770 lt!1046769)))))

(declare-fun b!3036257 () Bool)

(assert (=> b!3036257 (= e!1903881 (Star!9437 lt!1046770))))

(assert (= (and d!851748 c!502087) b!3036238))

(assert (= (and d!851748 (not c!502087)) b!3036242))

(assert (= (and b!3036242 c!502088) b!3036248))

(assert (= (and b!3036242 (not c!502088)) b!3036250))

(assert (= (and b!3036250 c!502090) b!3036251))

(assert (= (and b!3036250 (not c!502090)) b!3036247))

(assert (= (and b!3036247 c!502094) b!3036243))

(assert (= (and b!3036247 (not c!502094)) b!3036249))

(assert (= (and b!3036243 (not res!1248979)) b!3036253))

(assert (= (and b!3036243 c!502093) b!3036239))

(assert (= (and b!3036243 (not c!502093)) b!3036257))

(assert (= (and b!3036249 c!502091) b!3036233))

(assert (= (and b!3036249 (not c!502091)) b!3036245))

(assert (= (and b!3036233 c!502096) b!3036254))

(assert (= (and b!3036233 (not c!502096)) b!3036246))

(assert (= (and b!3036246 c!502095) b!3036252))

(assert (= (and b!3036246 (not c!502095)) b!3036244))

(assert (= (and b!3036245 (not res!1248980)) b!3036255))

(assert (= (and b!3036245 c!502092) b!3036235))

(assert (= (and b!3036245 (not c!502092)) b!3036256))

(assert (= (and b!3036256 c!502097) b!3036240))

(assert (= (and b!3036256 (not c!502097)) b!3036237))

(assert (= (and b!3036237 c!502089) b!3036236))

(assert (= (and b!3036237 (not c!502089)) b!3036234))

(assert (= (or b!3036233 b!3036245) bm!207338))

(assert (= (or b!3036233 b!3036245) bm!207337))

(assert (= (or b!3036246 b!3036245) bm!207335))

(assert (= (or b!3036233 b!3036255) bm!207334))

(assert (= (or b!3036253 b!3036237) bm!207340))

(assert (= (or b!3036243 bm!207337) bm!207339))

(assert (= (or b!3036243 bm!207335) bm!207336))

(assert (= (and d!851748 res!1248978) b!3036241))

(declare-fun m!3370121 () Bool)

(assert (=> b!3036241 m!3370121))

(declare-fun m!3370123 () Bool)

(assert (=> b!3036241 m!3370123))

(declare-fun m!3370125 () Bool)

(assert (=> bm!207340 m!3370125))

(declare-fun m!3370127 () Bool)

(assert (=> bm!207339 m!3370127))

(declare-fun m!3370129 () Bool)

(assert (=> bm!207336 m!3370129))

(declare-fun m!3370131 () Bool)

(assert (=> b!3036256 m!3370131))

(declare-fun m!3370133 () Bool)

(assert (=> d!851748 m!3370133))

(declare-fun m!3370135 () Bool)

(assert (=> d!851748 m!3370135))

(declare-fun m!3370137 () Bool)

(assert (=> bm!207334 m!3370137))

(declare-fun m!3370139 () Bool)

(assert (=> bm!207338 m!3370139))

(assert (=> bm!207182 d!851748))

(declare-fun d!851750 () Bool)

(assert (=> d!851750 (= (isEmptyLang!502 (ite c!501846 lt!1046661 (ite c!501843 lt!1046662 lt!1046664))) ((_ is EmptyLang!9437) (ite c!501846 lt!1046661 (ite c!501843 lt!1046662 lt!1046664))))))

(assert (=> bm!207160 d!851750))

(assert (=> b!3035439 d!851662))

(assert (=> b!3035439 d!851664))

(assert (=> b!3035436 d!851668))

(assert (=> d!851592 d!851658))

(assert (=> d!851592 d!851688))

(declare-fun b!3036258 () Bool)

(declare-fun e!1903894 () Bool)

(declare-fun call!207348 () Bool)

(assert (=> b!3036258 (= e!1903894 call!207348)))

(declare-fun b!3036259 () Bool)

(declare-fun e!1903895 () Bool)

(declare-fun e!1903896 () Bool)

(assert (=> b!3036259 (= e!1903895 e!1903896)))

(declare-fun res!1248981 () Bool)

(assert (=> b!3036259 (= res!1248981 (not (nullable!3087 (reg!9766 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))))

(assert (=> b!3036259 (=> (not res!1248981) (not e!1903896))))

(declare-fun c!502098 () Bool)

(declare-fun bm!207341 () Bool)

(declare-fun c!502099 () Bool)

(declare-fun call!207346 () Bool)

(assert (=> bm!207341 (= call!207346 (validRegex!4170 (ite c!502099 (reg!9766 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))) (ite c!502098 (regOne!19387 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))) (regTwo!19386 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616))))))))))

(declare-fun b!3036260 () Bool)

(declare-fun e!1903893 () Bool)

(assert (=> b!3036260 (= e!1903895 e!1903893)))

(assert (=> b!3036260 (= c!502098 ((_ is Union!9437) (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))

(declare-fun d!851752 () Bool)

(declare-fun res!1248982 () Bool)

(declare-fun e!1903897 () Bool)

(assert (=> d!851752 (=> res!1248982 e!1903897)))

(assert (=> d!851752 (= res!1248982 ((_ is ElementMatch!9437) (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))

(assert (=> d!851752 (= (validRegex!4170 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))) e!1903897)))

(declare-fun b!3036261 () Bool)

(assert (=> b!3036261 (= e!1903897 e!1903895)))

(assert (=> b!3036261 (= c!502099 ((_ is Star!9437) (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))

(declare-fun bm!207342 () Bool)

(assert (=> bm!207342 (= call!207348 (validRegex!4170 (ite c!502098 (regTwo!19387 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))) (regOne!19386 (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616)))))))))

(declare-fun bm!207343 () Bool)

(declare-fun call!207347 () Bool)

(assert (=> bm!207343 (= call!207347 call!207346)))

(declare-fun b!3036262 () Bool)

(declare-fun e!1903898 () Bool)

(declare-fun e!1903892 () Bool)

(assert (=> b!3036262 (= e!1903898 e!1903892)))

(declare-fun res!1248984 () Bool)

(assert (=> b!3036262 (=> (not res!1248984) (not e!1903892))))

(assert (=> b!3036262 (= res!1248984 call!207348)))

(declare-fun b!3036263 () Bool)

(assert (=> b!3036263 (= e!1903892 call!207347)))

(declare-fun b!3036264 () Bool)

(declare-fun res!1248983 () Bool)

(assert (=> b!3036264 (=> (not res!1248983) (not e!1903894))))

(assert (=> b!3036264 (= res!1248983 call!207347)))

(assert (=> b!3036264 (= e!1903893 e!1903894)))

(declare-fun b!3036265 () Bool)

(assert (=> b!3036265 (= e!1903896 call!207346)))

(declare-fun b!3036266 () Bool)

(declare-fun res!1248985 () Bool)

(assert (=> b!3036266 (=> res!1248985 e!1903898)))

(assert (=> b!3036266 (= res!1248985 (not ((_ is Concat!14758) (ite c!501953 (reg!9766 lt!1046616) (ite c!501952 (regOne!19387 lt!1046616) (regTwo!19386 lt!1046616))))))))

(assert (=> b!3036266 (= e!1903893 e!1903898)))

(assert (= (and d!851752 (not res!1248982)) b!3036261))

(assert (= (and b!3036261 c!502099) b!3036259))

(assert (= (and b!3036261 (not c!502099)) b!3036260))

(assert (= (and b!3036259 res!1248981) b!3036265))

(assert (= (and b!3036260 c!502098) b!3036264))

(assert (= (and b!3036260 (not c!502098)) b!3036266))

(assert (= (and b!3036264 res!1248983) b!3036258))

(assert (= (and b!3036266 (not res!1248985)) b!3036262))

(assert (= (and b!3036262 res!1248984) b!3036263))

(assert (= (or b!3036264 b!3036263) bm!207343))

(assert (= (or b!3036258 b!3036262) bm!207342))

(assert (= (or b!3036265 bm!207343) bm!207341))

(declare-fun m!3370141 () Bool)

(assert (=> b!3036259 m!3370141))

(declare-fun m!3370143 () Bool)

(assert (=> bm!207341 m!3370143))

(declare-fun m!3370145 () Bool)

(assert (=> bm!207342 m!3370145))

(assert (=> bm!207228 d!851752))

(declare-fun b!3036267 () Bool)

(declare-fun e!1903903 () Bool)

(declare-fun e!1903899 () Bool)

(assert (=> b!3036267 (= e!1903903 e!1903899)))

(declare-fun res!1248988 () Bool)

(assert (=> b!3036267 (=> (not res!1248988) (not e!1903899))))

(declare-fun lt!1046774 () Bool)

(assert (=> b!3036267 (= res!1248988 (not lt!1046774))))

(declare-fun b!3036268 () Bool)

(declare-fun e!1903901 () Bool)

(assert (=> b!3036268 (= e!1903901 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 lt!1046614 (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036269 () Bool)

(declare-fun res!1248993 () Bool)

(assert (=> b!3036269 (=> res!1248993 e!1903903)))

(declare-fun e!1903902 () Bool)

(assert (=> b!3036269 (= res!1248993 e!1903902)))

(declare-fun res!1248990 () Bool)

(assert (=> b!3036269 (=> (not res!1248990) (not e!1903902))))

(assert (=> b!3036269 (= res!1248990 lt!1046774)))

(declare-fun b!3036270 () Bool)

(declare-fun e!1903905 () Bool)

(declare-fun e!1903904 () Bool)

(assert (=> b!3036270 (= e!1903905 e!1903904)))

(declare-fun c!502102 () Bool)

(assert (=> b!3036270 (= c!502102 ((_ is EmptyLang!9437) (derivativeStep!2684 lt!1046614 (head!6743 s!11993))))))

(declare-fun b!3036271 () Bool)

(assert (=> b!3036271 (= e!1903902 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 lt!1046614 (head!6743 s!11993)))))))

(declare-fun d!851754 () Bool)

(assert (=> d!851754 e!1903905))

(declare-fun c!502100 () Bool)

(assert (=> d!851754 (= c!502100 ((_ is EmptyExpr!9437) (derivativeStep!2684 lt!1046614 (head!6743 s!11993))))))

(assert (=> d!851754 (= lt!1046774 e!1903901)))

(declare-fun c!502101 () Bool)

(assert (=> d!851754 (= c!502101 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851754 (validRegex!4170 (derivativeStep!2684 lt!1046614 (head!6743 s!11993)))))

(assert (=> d!851754 (= (matchR!4319 (derivativeStep!2684 lt!1046614 (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046774)))

(declare-fun bm!207344 () Bool)

(declare-fun call!207349 () Bool)

(assert (=> bm!207344 (= call!207349 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036272 () Bool)

(assert (=> b!3036272 (= e!1903905 (= lt!1046774 call!207349))))

(declare-fun b!3036273 () Bool)

(assert (=> b!3036273 (= e!1903901 (nullable!3087 (derivativeStep!2684 lt!1046614 (head!6743 s!11993))))))

(declare-fun b!3036274 () Bool)

(declare-fun res!1248992 () Bool)

(assert (=> b!3036274 (=> (not res!1248992) (not e!1903902))))

(assert (=> b!3036274 (= res!1248992 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036275 () Bool)

(declare-fun e!1903900 () Bool)

(assert (=> b!3036275 (= e!1903899 e!1903900)))

(declare-fun res!1248989 () Bool)

(assert (=> b!3036275 (=> res!1248989 e!1903900)))

(assert (=> b!3036275 (= res!1248989 call!207349)))

(declare-fun b!3036276 () Bool)

(declare-fun res!1248986 () Bool)

(assert (=> b!3036276 (=> (not res!1248986) (not e!1903902))))

(assert (=> b!3036276 (= res!1248986 (not call!207349))))

(declare-fun b!3036277 () Bool)

(declare-fun res!1248987 () Bool)

(assert (=> b!3036277 (=> res!1248987 e!1903903)))

(assert (=> b!3036277 (= res!1248987 (not ((_ is ElementMatch!9437) (derivativeStep!2684 lt!1046614 (head!6743 s!11993)))))))

(assert (=> b!3036277 (= e!1903904 e!1903903)))

(declare-fun b!3036278 () Bool)

(declare-fun res!1248991 () Bool)

(assert (=> b!3036278 (=> res!1248991 e!1903900)))

(assert (=> b!3036278 (= res!1248991 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036279 () Bool)

(assert (=> b!3036279 (= e!1903900 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 lt!1046614 (head!6743 s!11993))))))))

(declare-fun b!3036280 () Bool)

(assert (=> b!3036280 (= e!1903904 (not lt!1046774))))

(assert (= (and d!851754 c!502101) b!3036273))

(assert (= (and d!851754 (not c!502101)) b!3036268))

(assert (= (and d!851754 c!502100) b!3036272))

(assert (= (and d!851754 (not c!502100)) b!3036270))

(assert (= (and b!3036270 c!502102) b!3036280))

(assert (= (and b!3036270 (not c!502102)) b!3036277))

(assert (= (and b!3036277 (not res!1248987)) b!3036269))

(assert (= (and b!3036269 res!1248990) b!3036276))

(assert (= (and b!3036276 res!1248986) b!3036274))

(assert (= (and b!3036274 res!1248992) b!3036271))

(assert (= (and b!3036269 (not res!1248993)) b!3036267))

(assert (= (and b!3036267 res!1248988) b!3036275))

(assert (= (and b!3036275 (not res!1248989)) b!3036278))

(assert (= (and b!3036278 (not res!1248991)) b!3036279))

(assert (= (or b!3036272 b!3036275 b!3036276) bm!207344))

(assert (=> b!3036278 m!3369585))

(assert (=> b!3036278 m!3369919))

(assert (=> b!3036278 m!3369919))

(assert (=> b!3036278 m!3369921))

(assert (=> b!3036273 m!3369623))

(declare-fun m!3370147 () Bool)

(assert (=> b!3036273 m!3370147))

(assert (=> bm!207344 m!3369585))

(assert (=> bm!207344 m!3369587))

(assert (=> b!3036271 m!3369585))

(assert (=> b!3036271 m!3369925))

(assert (=> b!3036268 m!3369585))

(assert (=> b!3036268 m!3369925))

(assert (=> b!3036268 m!3369623))

(assert (=> b!3036268 m!3369925))

(declare-fun m!3370149 () Bool)

(assert (=> b!3036268 m!3370149))

(assert (=> b!3036268 m!3369585))

(assert (=> b!3036268 m!3369919))

(assert (=> b!3036268 m!3370149))

(assert (=> b!3036268 m!3369919))

(declare-fun m!3370151 () Bool)

(assert (=> b!3036268 m!3370151))

(assert (=> b!3036274 m!3369585))

(assert (=> b!3036274 m!3369919))

(assert (=> b!3036274 m!3369919))

(assert (=> b!3036274 m!3369921))

(assert (=> b!3036279 m!3369585))

(assert (=> b!3036279 m!3369925))

(assert (=> d!851754 m!3369585))

(assert (=> d!851754 m!3369587))

(assert (=> d!851754 m!3369623))

(declare-fun m!3370153 () Bool)

(assert (=> d!851754 m!3370153))

(assert (=> b!3035197 d!851754))

(declare-fun b!3036281 () Bool)

(declare-fun e!1903907 () Regex!9437)

(declare-fun call!207350 () Regex!9437)

(assert (=> b!3036281 (= e!1903907 (Union!9437 (Concat!14758 call!207350 (regTwo!19386 lt!1046614)) EmptyLang!9437))))

(declare-fun b!3036282 () Bool)

(declare-fun e!1903910 () Regex!9437)

(declare-fun call!207351 () Regex!9437)

(declare-fun call!207353 () Regex!9437)

(assert (=> b!3036282 (= e!1903910 (Union!9437 call!207351 call!207353))))

(declare-fun b!3036283 () Bool)

(declare-fun e!1903909 () Regex!9437)

(assert (=> b!3036283 (= e!1903909 EmptyLang!9437)))

(declare-fun b!3036285 () Bool)

(declare-fun e!1903906 () Regex!9437)

(assert (=> b!3036285 (= e!1903909 e!1903906)))

(declare-fun c!502106 () Bool)

(assert (=> b!3036285 (= c!502106 ((_ is ElementMatch!9437) lt!1046614))))

(declare-fun c!502103 () Bool)

(declare-fun c!502104 () Bool)

(declare-fun bm!207345 () Bool)

(assert (=> bm!207345 (= call!207353 (derivativeStep!2684 (ite c!502103 (regTwo!19387 lt!1046614) (ite c!502104 (reg!9766 lt!1046614) (regOne!19386 lt!1046614))) (head!6743 s!11993)))))

(declare-fun b!3036286 () Bool)

(declare-fun e!1903908 () Regex!9437)

(declare-fun call!207352 () Regex!9437)

(assert (=> b!3036286 (= e!1903908 (Concat!14758 call!207352 lt!1046614))))

(declare-fun bm!207346 () Bool)

(assert (=> bm!207346 (= call!207352 call!207353)))

(declare-fun b!3036287 () Bool)

(assert (=> b!3036287 (= e!1903906 (ite (= (head!6743 s!11993) (c!501761 lt!1046614)) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036288 () Bool)

(assert (=> b!3036288 (= e!1903910 e!1903908)))

(assert (=> b!3036288 (= c!502104 ((_ is Star!9437) lt!1046614))))

(declare-fun b!3036284 () Bool)

(assert (=> b!3036284 (= e!1903907 (Union!9437 (Concat!14758 call!207350 (regTwo!19386 lt!1046614)) call!207351))))

(declare-fun d!851756 () Bool)

(declare-fun lt!1046775 () Regex!9437)

(assert (=> d!851756 (validRegex!4170 lt!1046775)))

(assert (=> d!851756 (= lt!1046775 e!1903909)))

(declare-fun c!502105 () Bool)

(assert (=> d!851756 (= c!502105 (or ((_ is EmptyExpr!9437) lt!1046614) ((_ is EmptyLang!9437) lt!1046614)))))

(assert (=> d!851756 (validRegex!4170 lt!1046614)))

(assert (=> d!851756 (= (derivativeStep!2684 lt!1046614 (head!6743 s!11993)) lt!1046775)))

(declare-fun b!3036289 () Bool)

(assert (=> b!3036289 (= c!502103 ((_ is Union!9437) lt!1046614))))

(assert (=> b!3036289 (= e!1903906 e!1903910)))

(declare-fun bm!207347 () Bool)

(assert (=> bm!207347 (= call!207351 (derivativeStep!2684 (ite c!502103 (regOne!19387 lt!1046614) (regTwo!19386 lt!1046614)) (head!6743 s!11993)))))

(declare-fun b!3036290 () Bool)

(declare-fun c!502107 () Bool)

(assert (=> b!3036290 (= c!502107 (nullable!3087 (regOne!19386 lt!1046614)))))

(assert (=> b!3036290 (= e!1903908 e!1903907)))

(declare-fun bm!207348 () Bool)

(assert (=> bm!207348 (= call!207350 call!207352)))

(assert (= (and d!851756 c!502105) b!3036283))

(assert (= (and d!851756 (not c!502105)) b!3036285))

(assert (= (and b!3036285 c!502106) b!3036287))

(assert (= (and b!3036285 (not c!502106)) b!3036289))

(assert (= (and b!3036289 c!502103) b!3036282))

(assert (= (and b!3036289 (not c!502103)) b!3036288))

(assert (= (and b!3036288 c!502104) b!3036286))

(assert (= (and b!3036288 (not c!502104)) b!3036290))

(assert (= (and b!3036290 c!502107) b!3036284))

(assert (= (and b!3036290 (not c!502107)) b!3036281))

(assert (= (or b!3036284 b!3036281) bm!207348))

(assert (= (or b!3036286 bm!207348) bm!207346))

(assert (= (or b!3036282 bm!207346) bm!207345))

(assert (= (or b!3036282 b!3036284) bm!207347))

(assert (=> bm!207345 m!3369593))

(declare-fun m!3370155 () Bool)

(assert (=> bm!207345 m!3370155))

(declare-fun m!3370157 () Bool)

(assert (=> d!851756 m!3370157))

(assert (=> d!851756 m!3369561))

(assert (=> bm!207347 m!3369593))

(declare-fun m!3370159 () Bool)

(assert (=> bm!207347 m!3370159))

(declare-fun m!3370161 () Bool)

(assert (=> b!3036290 m!3370161))

(assert (=> b!3035197 d!851756))

(assert (=> b!3035197 d!851668))

(assert (=> b!3035197 d!851664))

(declare-fun d!851758 () Bool)

(assert (=> d!851758 (= (nullable!3087 (Union!9437 lt!1046616 lt!1046614)) (nullableFct!878 (Union!9437 lt!1046616 lt!1046614)))))

(declare-fun bs!530942 () Bool)

(assert (= bs!530942 d!851758))

(declare-fun m!3370163 () Bool)

(assert (=> bs!530942 m!3370163))

(assert (=> b!3035500 d!851758))

(declare-fun d!851760 () Bool)

(assert (=> d!851760 (= (isEmptyExpr!508 lt!1046685) ((_ is EmptyExpr!9437) lt!1046685))))

(assert (=> b!3035492 d!851760))

(declare-fun d!851762 () Bool)

(assert (=> d!851762 (= (isEmptyLang!502 (ite c!501876 lt!1046684 lt!1046681)) ((_ is EmptyLang!9437) (ite c!501876 lt!1046684 lt!1046681)))))

(assert (=> bm!207178 d!851762))

(assert (=> b!3035821 d!851668))

(declare-fun b!3036291 () Bool)

(declare-fun e!1903917 () Regex!9437)

(declare-fun e!1903911 () Regex!9437)

(assert (=> b!3036291 (= e!1903917 e!1903911)))

(declare-fun lt!1046780 () Regex!9437)

(declare-fun call!207357 () Regex!9437)

(assert (=> b!3036291 (= lt!1046780 call!207357)))

(declare-fun lt!1046779 () Regex!9437)

(declare-fun call!207360 () Regex!9437)

(assert (=> b!3036291 (= lt!1046779 call!207360)))

(declare-fun c!502117 () Bool)

(declare-fun call!207358 () Bool)

(assert (=> b!3036291 (= c!502117 call!207358)))

(declare-fun b!3036292 () Bool)

(declare-fun e!1903920 () Regex!9437)

(declare-fun lt!1046781 () Regex!9437)

(declare-fun lt!1046777 () Regex!9437)

(assert (=> b!3036292 (= e!1903920 (Concat!14758 lt!1046781 lt!1046777))))

(declare-fun b!3036293 () Bool)

(declare-fun e!1903924 () Regex!9437)

(assert (=> b!3036293 (= e!1903924 EmptyLang!9437)))

(declare-fun d!851764 () Bool)

(declare-fun e!1903915 () Bool)

(assert (=> d!851764 e!1903915))

(declare-fun res!1248994 () Bool)

(assert (=> d!851764 (=> (not res!1248994) (not e!1903915))))

(declare-fun lt!1046776 () Regex!9437)

(assert (=> d!851764 (= res!1248994 (validRegex!4170 lt!1046776))))

(declare-fun e!1903922 () Regex!9437)

(assert (=> d!851764 (= lt!1046776 e!1903922)))

(declare-fun c!502108 () Bool)

(assert (=> d!851764 (= c!502108 ((_ is EmptyLang!9437) (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(assert (=> d!851764 (validRegex!4170 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(assert (=> d!851764 (= (simplify!404 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))) lt!1046776)))

(declare-fun b!3036294 () Bool)

(assert (=> b!3036294 (= e!1903920 lt!1046781)))

(declare-fun b!3036295 () Bool)

(declare-fun e!1903923 () Regex!9437)

(assert (=> b!3036295 (= e!1903923 e!1903920)))

(declare-fun c!502110 () Bool)

(declare-fun call!207355 () Bool)

(assert (=> b!3036295 (= c!502110 call!207355)))

(declare-fun b!3036296 () Bool)

(assert (=> b!3036296 (= e!1903922 EmptyLang!9437)))

(declare-fun b!3036297 () Bool)

(declare-fun e!1903914 () Regex!9437)

(assert (=> b!3036297 (= e!1903914 EmptyExpr!9437)))

(declare-fun b!3036298 () Bool)

(assert (=> b!3036298 (= e!1903923 lt!1046777)))

(declare-fun bm!207349 () Bool)

(declare-fun c!502112 () Bool)

(assert (=> bm!207349 (= call!207358 (isEmptyLang!502 (ite c!502112 lt!1046780 lt!1046777)))))

(declare-fun b!3036299 () Bool)

(assert (=> b!3036299 (= e!1903915 (= (nullable!3087 lt!1046776) (nullable!3087 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))))

(declare-fun bm!207350 () Bool)

(declare-fun call!207359 () Bool)

(declare-fun call!207354 () Bool)

(assert (=> bm!207350 (= call!207359 call!207354)))

(declare-fun b!3036300 () Bool)

(declare-fun e!1903918 () Regex!9437)

(assert (=> b!3036300 (= e!1903922 e!1903918)))

(declare-fun c!502109 () Bool)

(assert (=> b!3036300 (= c!502109 ((_ is ElementMatch!9437) (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(declare-fun b!3036301 () Bool)

(declare-fun c!502114 () Bool)

(declare-fun e!1903912 () Bool)

(assert (=> b!3036301 (= c!502114 e!1903912)))

(declare-fun res!1248995 () Bool)

(assert (=> b!3036301 (=> res!1248995 e!1903912)))

(assert (=> b!3036301 (= res!1248995 call!207354)))

(declare-fun lt!1046778 () Regex!9437)

(declare-fun call!207356 () Regex!9437)

(assert (=> b!3036301 (= lt!1046778 call!207356)))

(declare-fun e!1903916 () Regex!9437)

(assert (=> b!3036301 (= e!1903916 e!1903914)))

(declare-fun b!3036302 () Bool)

(declare-fun e!1903913 () Regex!9437)

(assert (=> b!3036302 (= e!1903913 (Union!9437 lt!1046780 lt!1046779))))

(declare-fun b!3036303 () Bool)

(assert (=> b!3036303 (= e!1903917 e!1903924)))

(assert (=> b!3036303 (= lt!1046781 call!207360)))

(assert (=> b!3036303 (= lt!1046777 call!207357)))

(declare-fun res!1248996 () Bool)

(assert (=> b!3036303 (= res!1248996 call!207359)))

(declare-fun e!1903919 () Bool)

(assert (=> b!3036303 (=> res!1248996 e!1903919)))

(declare-fun c!502113 () Bool)

(assert (=> b!3036303 (= c!502113 e!1903919)))

(declare-fun b!3036304 () Bool)

(declare-fun c!502116 () Bool)

(assert (=> b!3036304 (= c!502116 call!207359)))

(assert (=> b!3036304 (= e!1903911 e!1903913)))

(declare-fun c!502115 () Bool)

(declare-fun bm!207351 () Bool)

(assert (=> bm!207351 (= call!207354 (isEmptyLang!502 (ite c!502115 lt!1046778 (ite c!502112 lt!1046779 lt!1046781))))))

(declare-fun b!3036305 () Bool)

(declare-fun e!1903921 () Regex!9437)

(assert (=> b!3036305 (= e!1903921 e!1903916)))

(assert (=> b!3036305 (= c!502115 ((_ is Star!9437) (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(declare-fun b!3036306 () Bool)

(assert (=> b!3036306 (= e!1903918 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(declare-fun b!3036307 () Bool)

(assert (=> b!3036307 (= c!502112 ((_ is Union!9437) (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(assert (=> b!3036307 (= e!1903916 e!1903917)))

(declare-fun bm!207352 () Bool)

(assert (=> bm!207352 (= call!207360 call!207356)))

(declare-fun bm!207353 () Bool)

(assert (=> bm!207353 (= call!207357 (simplify!404 (ite c!502112 (regOne!19387 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))) (regTwo!19386 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))))

(declare-fun b!3036308 () Bool)

(declare-fun c!502111 () Bool)

(assert (=> b!3036308 (= c!502111 ((_ is EmptyExpr!9437) (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(assert (=> b!3036308 (= e!1903918 e!1903921)))

(declare-fun b!3036309 () Bool)

(assert (=> b!3036309 (= e!1903921 EmptyExpr!9437)))

(declare-fun b!3036310 () Bool)

(assert (=> b!3036310 (= e!1903913 lt!1046780)))

(declare-fun bm!207354 () Bool)

(assert (=> bm!207354 (= call!207356 (simplify!404 (ite c!502115 (reg!9766 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))) (ite c!502112 (regTwo!19387 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423)))) (regOne!19386 (ite c!501879 (reg!9766 r!17423) (ite c!501876 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))))))

(declare-fun b!3036311 () Bool)

(assert (=> b!3036311 (= e!1903912 call!207355)))

(declare-fun b!3036312 () Bool)

(assert (=> b!3036312 (= e!1903911 lt!1046779)))

(declare-fun b!3036313 () Bool)

(assert (=> b!3036313 (= e!1903919 call!207358)))

(declare-fun b!3036314 () Bool)

(declare-fun c!502118 () Bool)

(assert (=> b!3036314 (= c!502118 (isEmptyExpr!508 lt!1046781))))

(assert (=> b!3036314 (= e!1903924 e!1903923)))

(declare-fun bm!207355 () Bool)

(assert (=> bm!207355 (= call!207355 (isEmptyExpr!508 (ite c!502115 lt!1046778 lt!1046777)))))

(declare-fun b!3036315 () Bool)

(assert (=> b!3036315 (= e!1903914 (Star!9437 lt!1046778))))

(assert (= (and d!851764 c!502108) b!3036296))

(assert (= (and d!851764 (not c!502108)) b!3036300))

(assert (= (and b!3036300 c!502109) b!3036306))

(assert (= (and b!3036300 (not c!502109)) b!3036308))

(assert (= (and b!3036308 c!502111) b!3036309))

(assert (= (and b!3036308 (not c!502111)) b!3036305))

(assert (= (and b!3036305 c!502115) b!3036301))

(assert (= (and b!3036305 (not c!502115)) b!3036307))

(assert (= (and b!3036301 (not res!1248995)) b!3036311))

(assert (= (and b!3036301 c!502114) b!3036297))

(assert (= (and b!3036301 (not c!502114)) b!3036315))

(assert (= (and b!3036307 c!502112) b!3036291))

(assert (= (and b!3036307 (not c!502112)) b!3036303))

(assert (= (and b!3036291 c!502117) b!3036312))

(assert (= (and b!3036291 (not c!502117)) b!3036304))

(assert (= (and b!3036304 c!502116) b!3036310))

(assert (= (and b!3036304 (not c!502116)) b!3036302))

(assert (= (and b!3036303 (not res!1248996)) b!3036313))

(assert (= (and b!3036303 c!502113) b!3036293))

(assert (= (and b!3036303 (not c!502113)) b!3036314))

(assert (= (and b!3036314 c!502118) b!3036298))

(assert (= (and b!3036314 (not c!502118)) b!3036295))

(assert (= (and b!3036295 c!502110) b!3036294))

(assert (= (and b!3036295 (not c!502110)) b!3036292))

(assert (= (or b!3036291 b!3036303) bm!207353))

(assert (= (or b!3036291 b!3036303) bm!207352))

(assert (= (or b!3036304 b!3036303) bm!207350))

(assert (= (or b!3036291 b!3036313) bm!207349))

(assert (= (or b!3036311 b!3036295) bm!207355))

(assert (= (or b!3036301 bm!207352) bm!207354))

(assert (= (or b!3036301 bm!207350) bm!207351))

(assert (= (and d!851764 res!1248994) b!3036299))

(declare-fun m!3370165 () Bool)

(assert (=> b!3036299 m!3370165))

(declare-fun m!3370167 () Bool)

(assert (=> b!3036299 m!3370167))

(declare-fun m!3370169 () Bool)

(assert (=> bm!207355 m!3370169))

(declare-fun m!3370171 () Bool)

(assert (=> bm!207354 m!3370171))

(declare-fun m!3370173 () Bool)

(assert (=> bm!207351 m!3370173))

(declare-fun m!3370175 () Bool)

(assert (=> b!3036314 m!3370175))

(declare-fun m!3370177 () Bool)

(assert (=> d!851764 m!3370177))

(declare-fun m!3370179 () Bool)

(assert (=> d!851764 m!3370179))

(declare-fun m!3370181 () Bool)

(assert (=> bm!207349 m!3370181))

(declare-fun m!3370183 () Bool)

(assert (=> bm!207353 m!3370183))

(assert (=> bm!207183 d!851764))

(assert (=> bm!207116 d!851658))

(assert (=> bm!207234 d!851658))

(declare-fun b!3036316 () Bool)

(declare-fun e!1903927 () Bool)

(declare-fun call!207363 () Bool)

(assert (=> b!3036316 (= e!1903927 call!207363)))

(declare-fun b!3036317 () Bool)

(declare-fun e!1903928 () Bool)

(declare-fun e!1903929 () Bool)

(assert (=> b!3036317 (= e!1903928 e!1903929)))

(declare-fun res!1248997 () Bool)

(assert (=> b!3036317 (= res!1248997 (not (nullable!3087 (reg!9766 lt!1046680))))))

(assert (=> b!3036317 (=> (not res!1248997) (not e!1903929))))

(declare-fun c!502119 () Bool)

(declare-fun bm!207356 () Bool)

(declare-fun call!207361 () Bool)

(declare-fun c!502120 () Bool)

(assert (=> bm!207356 (= call!207361 (validRegex!4170 (ite c!502120 (reg!9766 lt!1046680) (ite c!502119 (regOne!19387 lt!1046680) (regTwo!19386 lt!1046680)))))))

(declare-fun b!3036318 () Bool)

(declare-fun e!1903926 () Bool)

(assert (=> b!3036318 (= e!1903928 e!1903926)))

(assert (=> b!3036318 (= c!502119 ((_ is Union!9437) lt!1046680))))

(declare-fun d!851766 () Bool)

(declare-fun res!1248998 () Bool)

(declare-fun e!1903930 () Bool)

(assert (=> d!851766 (=> res!1248998 e!1903930)))

(assert (=> d!851766 (= res!1248998 ((_ is ElementMatch!9437) lt!1046680))))

(assert (=> d!851766 (= (validRegex!4170 lt!1046680) e!1903930)))

(declare-fun b!3036319 () Bool)

(assert (=> b!3036319 (= e!1903930 e!1903928)))

(assert (=> b!3036319 (= c!502120 ((_ is Star!9437) lt!1046680))))

(declare-fun bm!207357 () Bool)

(assert (=> bm!207357 (= call!207363 (validRegex!4170 (ite c!502119 (regTwo!19387 lt!1046680) (regOne!19386 lt!1046680))))))

(declare-fun bm!207358 () Bool)

(declare-fun call!207362 () Bool)

(assert (=> bm!207358 (= call!207362 call!207361)))

(declare-fun b!3036320 () Bool)

(declare-fun e!1903931 () Bool)

(declare-fun e!1903925 () Bool)

(assert (=> b!3036320 (= e!1903931 e!1903925)))

(declare-fun res!1249000 () Bool)

(assert (=> b!3036320 (=> (not res!1249000) (not e!1903925))))

(assert (=> b!3036320 (= res!1249000 call!207363)))

(declare-fun b!3036321 () Bool)

(assert (=> b!3036321 (= e!1903925 call!207362)))

(declare-fun b!3036322 () Bool)

(declare-fun res!1248999 () Bool)

(assert (=> b!3036322 (=> (not res!1248999) (not e!1903927))))

(assert (=> b!3036322 (= res!1248999 call!207362)))

(assert (=> b!3036322 (= e!1903926 e!1903927)))

(declare-fun b!3036323 () Bool)

(assert (=> b!3036323 (= e!1903929 call!207361)))

(declare-fun b!3036324 () Bool)

(declare-fun res!1249001 () Bool)

(assert (=> b!3036324 (=> res!1249001 e!1903931)))

(assert (=> b!3036324 (= res!1249001 (not ((_ is Concat!14758) lt!1046680)))))

(assert (=> b!3036324 (= e!1903926 e!1903931)))

(assert (= (and d!851766 (not res!1248998)) b!3036319))

(assert (= (and b!3036319 c!502120) b!3036317))

(assert (= (and b!3036319 (not c!502120)) b!3036318))

(assert (= (and b!3036317 res!1248997) b!3036323))

(assert (= (and b!3036318 c!502119) b!3036322))

(assert (= (and b!3036318 (not c!502119)) b!3036324))

(assert (= (and b!3036322 res!1248999) b!3036316))

(assert (= (and b!3036324 (not res!1249001)) b!3036320))

(assert (= (and b!3036320 res!1249000) b!3036321))

(assert (= (or b!3036322 b!3036321) bm!207358))

(assert (= (or b!3036316 b!3036320) bm!207357))

(assert (= (or b!3036323 bm!207358) bm!207356))

(declare-fun m!3370185 () Bool)

(assert (=> b!3036317 m!3370185))

(declare-fun m!3370187 () Bool)

(assert (=> bm!207356 m!3370187))

(declare-fun m!3370189 () Bool)

(assert (=> bm!207357 m!3370189))

(assert (=> d!851612 d!851766))

(assert (=> d!851612 d!851630))

(declare-fun b!3036325 () Bool)

(declare-fun e!1903936 () Bool)

(declare-fun e!1903932 () Bool)

(assert (=> b!3036325 (= e!1903936 e!1903932)))

(declare-fun res!1249004 () Bool)

(assert (=> b!3036325 (=> (not res!1249004) (not e!1903932))))

(declare-fun lt!1046782 () Bool)

(assert (=> b!3036325 (= res!1249004 (not lt!1046782))))

(declare-fun b!3036326 () Bool)

(declare-fun e!1903934 () Bool)

(assert (=> b!3036326 (= e!1903934 (matchR!4319 (derivativeStep!2684 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)) (head!6743 (tail!4969 s!11993))) (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036327 () Bool)

(declare-fun res!1249009 () Bool)

(assert (=> b!3036327 (=> res!1249009 e!1903936)))

(declare-fun e!1903935 () Bool)

(assert (=> b!3036327 (= res!1249009 e!1903935)))

(declare-fun res!1249006 () Bool)

(assert (=> b!3036327 (=> (not res!1249006) (not e!1903935))))

(assert (=> b!3036327 (= res!1249006 lt!1046782)))

(declare-fun b!3036328 () Bool)

(declare-fun e!1903938 () Bool)

(declare-fun e!1903937 () Bool)

(assert (=> b!3036328 (= e!1903938 e!1903937)))

(declare-fun c!502123 () Bool)

(assert (=> b!3036328 (= c!502123 ((_ is EmptyLang!9437) (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993))))))

(declare-fun b!3036329 () Bool)

(assert (=> b!3036329 (= e!1903935 (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)))))))

(declare-fun d!851768 () Bool)

(assert (=> d!851768 e!1903938))

(declare-fun c!502121 () Bool)

(assert (=> d!851768 (= c!502121 ((_ is EmptyExpr!9437) (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993))))))

(assert (=> d!851768 (= lt!1046782 e!1903934)))

(declare-fun c!502122 () Bool)

(assert (=> d!851768 (= c!502122 (isEmpty!19478 (tail!4969 s!11993)))))

(assert (=> d!851768 (validRegex!4170 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)))))

(assert (=> d!851768 (= (matchR!4319 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)) (tail!4969 s!11993)) lt!1046782)))

(declare-fun bm!207359 () Bool)

(declare-fun call!207364 () Bool)

(assert (=> bm!207359 (= call!207364 (isEmpty!19478 (tail!4969 s!11993)))))

(declare-fun b!3036330 () Bool)

(assert (=> b!3036330 (= e!1903938 (= lt!1046782 call!207364))))

(declare-fun b!3036331 () Bool)

(assert (=> b!3036331 (= e!1903934 (nullable!3087 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993))))))

(declare-fun b!3036332 () Bool)

(declare-fun res!1249008 () Bool)

(assert (=> b!3036332 (=> (not res!1249008) (not e!1903935))))

(assert (=> b!3036332 (= res!1249008 (isEmpty!19478 (tail!4969 (tail!4969 s!11993))))))

(declare-fun b!3036333 () Bool)

(declare-fun e!1903933 () Bool)

(assert (=> b!3036333 (= e!1903932 e!1903933)))

(declare-fun res!1249005 () Bool)

(assert (=> b!3036333 (=> res!1249005 e!1903933)))

(assert (=> b!3036333 (= res!1249005 call!207364)))

(declare-fun b!3036334 () Bool)

(declare-fun res!1249002 () Bool)

(assert (=> b!3036334 (=> (not res!1249002) (not e!1903935))))

(assert (=> b!3036334 (= res!1249002 (not call!207364))))

(declare-fun b!3036335 () Bool)

(declare-fun res!1249003 () Bool)

(assert (=> b!3036335 (=> res!1249003 e!1903936)))

(assert (=> b!3036335 (= res!1249003 (not ((_ is ElementMatch!9437) (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)))))))

(assert (=> b!3036335 (= e!1903937 e!1903936)))

(declare-fun b!3036336 () Bool)

(declare-fun res!1249007 () Bool)

(assert (=> b!3036336 (=> res!1249007 e!1903933)))

(assert (=> b!3036336 (= res!1249007 (not (isEmpty!19478 (tail!4969 (tail!4969 s!11993)))))))

(declare-fun b!3036337 () Bool)

(assert (=> b!3036337 (= e!1903933 (not (= (head!6743 (tail!4969 s!11993)) (c!501761 (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993))))))))

(declare-fun b!3036338 () Bool)

(assert (=> b!3036338 (= e!1903937 (not lt!1046782))))

(assert (= (and d!851768 c!502122) b!3036331))

(assert (= (and d!851768 (not c!502122)) b!3036326))

(assert (= (and d!851768 c!502121) b!3036330))

(assert (= (and d!851768 (not c!502121)) b!3036328))

(assert (= (and b!3036328 c!502123) b!3036338))

(assert (= (and b!3036328 (not c!502123)) b!3036335))

(assert (= (and b!3036335 (not res!1249003)) b!3036327))

(assert (= (and b!3036327 res!1249006) b!3036334))

(assert (= (and b!3036334 res!1249002) b!3036332))

(assert (= (and b!3036332 res!1249008) b!3036329))

(assert (= (and b!3036327 (not res!1249009)) b!3036325))

(assert (= (and b!3036325 res!1249004) b!3036333))

(assert (= (and b!3036333 (not res!1249005)) b!3036336))

(assert (= (and b!3036336 (not res!1249007)) b!3036337))

(assert (= (or b!3036330 b!3036333 b!3036334) bm!207359))

(assert (=> b!3036336 m!3369585))

(assert (=> b!3036336 m!3369919))

(assert (=> b!3036336 m!3369919))

(assert (=> b!3036336 m!3369921))

(assert (=> b!3036331 m!3369595))

(declare-fun m!3370191 () Bool)

(assert (=> b!3036331 m!3370191))

(assert (=> bm!207359 m!3369585))

(assert (=> bm!207359 m!3369587))

(assert (=> b!3036329 m!3369585))

(assert (=> b!3036329 m!3369925))

(assert (=> b!3036326 m!3369585))

(assert (=> b!3036326 m!3369925))

(assert (=> b!3036326 m!3369595))

(assert (=> b!3036326 m!3369925))

(declare-fun m!3370193 () Bool)

(assert (=> b!3036326 m!3370193))

(assert (=> b!3036326 m!3369585))

(assert (=> b!3036326 m!3369919))

(assert (=> b!3036326 m!3370193))

(assert (=> b!3036326 m!3369919))

(declare-fun m!3370195 () Bool)

(assert (=> b!3036326 m!3370195))

(assert (=> b!3036332 m!3369585))

(assert (=> b!3036332 m!3369919))

(assert (=> b!3036332 m!3369919))

(assert (=> b!3036332 m!3369921))

(assert (=> b!3036337 m!3369585))

(assert (=> b!3036337 m!3369925))

(assert (=> d!851768 m!3369585))

(assert (=> d!851768 m!3369587))

(assert (=> d!851768 m!3369595))

(declare-fun m!3370197 () Bool)

(assert (=> d!851768 m!3370197))

(assert (=> b!3035163 d!851768))

(declare-fun b!3036339 () Bool)

(declare-fun e!1903940 () Regex!9437)

(declare-fun call!207365 () Regex!9437)

(assert (=> b!3036339 (= e!1903940 (Union!9437 (Concat!14758 call!207365 (regTwo!19386 (regOne!19387 r!17423))) EmptyLang!9437))))

(declare-fun b!3036340 () Bool)

(declare-fun e!1903943 () Regex!9437)

(declare-fun call!207366 () Regex!9437)

(declare-fun call!207368 () Regex!9437)

(assert (=> b!3036340 (= e!1903943 (Union!9437 call!207366 call!207368))))

(declare-fun b!3036341 () Bool)

(declare-fun e!1903942 () Regex!9437)

(assert (=> b!3036341 (= e!1903942 EmptyLang!9437)))

(declare-fun b!3036343 () Bool)

(declare-fun e!1903939 () Regex!9437)

(assert (=> b!3036343 (= e!1903942 e!1903939)))

(declare-fun c!502127 () Bool)

(assert (=> b!3036343 (= c!502127 ((_ is ElementMatch!9437) (regOne!19387 r!17423)))))

(declare-fun c!502125 () Bool)

(declare-fun c!502124 () Bool)

(declare-fun bm!207360 () Bool)

(assert (=> bm!207360 (= call!207368 (derivativeStep!2684 (ite c!502124 (regTwo!19387 (regOne!19387 r!17423)) (ite c!502125 (reg!9766 (regOne!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423)))) (head!6743 s!11993)))))

(declare-fun b!3036344 () Bool)

(declare-fun e!1903941 () Regex!9437)

(declare-fun call!207367 () Regex!9437)

(assert (=> b!3036344 (= e!1903941 (Concat!14758 call!207367 (regOne!19387 r!17423)))))

(declare-fun bm!207361 () Bool)

(assert (=> bm!207361 (= call!207367 call!207368)))

(declare-fun b!3036345 () Bool)

(assert (=> b!3036345 (= e!1903939 (ite (= (head!6743 s!11993) (c!501761 (regOne!19387 r!17423))) EmptyExpr!9437 EmptyLang!9437))))

(declare-fun b!3036346 () Bool)

(assert (=> b!3036346 (= e!1903943 e!1903941)))

(assert (=> b!3036346 (= c!502125 ((_ is Star!9437) (regOne!19387 r!17423)))))

(declare-fun b!3036342 () Bool)

(assert (=> b!3036342 (= e!1903940 (Union!9437 (Concat!14758 call!207365 (regTwo!19386 (regOne!19387 r!17423))) call!207366))))

(declare-fun d!851770 () Bool)

(declare-fun lt!1046783 () Regex!9437)

(assert (=> d!851770 (validRegex!4170 lt!1046783)))

(assert (=> d!851770 (= lt!1046783 e!1903942)))

(declare-fun c!502126 () Bool)

(assert (=> d!851770 (= c!502126 (or ((_ is EmptyExpr!9437) (regOne!19387 r!17423)) ((_ is EmptyLang!9437) (regOne!19387 r!17423))))))

(assert (=> d!851770 (validRegex!4170 (regOne!19387 r!17423))))

(assert (=> d!851770 (= (derivativeStep!2684 (regOne!19387 r!17423) (head!6743 s!11993)) lt!1046783)))

(declare-fun b!3036347 () Bool)

(assert (=> b!3036347 (= c!502124 ((_ is Union!9437) (regOne!19387 r!17423)))))

(assert (=> b!3036347 (= e!1903939 e!1903943)))

(declare-fun bm!207362 () Bool)

(assert (=> bm!207362 (= call!207366 (derivativeStep!2684 (ite c!502124 (regOne!19387 (regOne!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423))) (head!6743 s!11993)))))

(declare-fun b!3036348 () Bool)

(declare-fun c!502128 () Bool)

(assert (=> b!3036348 (= c!502128 (nullable!3087 (regOne!19386 (regOne!19387 r!17423))))))

(assert (=> b!3036348 (= e!1903941 e!1903940)))

(declare-fun bm!207363 () Bool)

(assert (=> bm!207363 (= call!207365 call!207367)))

(assert (= (and d!851770 c!502126) b!3036341))

(assert (= (and d!851770 (not c!502126)) b!3036343))

(assert (= (and b!3036343 c!502127) b!3036345))

(assert (= (and b!3036343 (not c!502127)) b!3036347))

(assert (= (and b!3036347 c!502124) b!3036340))

(assert (= (and b!3036347 (not c!502124)) b!3036346))

(assert (= (and b!3036346 c!502125) b!3036344))

(assert (= (and b!3036346 (not c!502125)) b!3036348))

(assert (= (and b!3036348 c!502128) b!3036342))

(assert (= (and b!3036348 (not c!502128)) b!3036339))

(assert (= (or b!3036342 b!3036339) bm!207363))

(assert (= (or b!3036344 bm!207363) bm!207361))

(assert (= (or b!3036340 bm!207361) bm!207360))

(assert (= (or b!3036340 b!3036342) bm!207362))

(assert (=> bm!207360 m!3369593))

(declare-fun m!3370199 () Bool)

(assert (=> bm!207360 m!3370199))

(declare-fun m!3370201 () Bool)

(assert (=> d!851770 m!3370201))

(assert (=> d!851770 m!3369599))

(assert (=> bm!207362 m!3369593))

(declare-fun m!3370203 () Bool)

(assert (=> bm!207362 m!3370203))

(declare-fun m!3370205 () Bool)

(assert (=> b!3036348 m!3370205))

(assert (=> b!3035163 d!851770))

(assert (=> b!3035163 d!851668))

(assert (=> b!3035163 d!851664))

(declare-fun d!851772 () Bool)

(assert (=> d!851772 (= (isEmptyExpr!508 (ite c!501846 lt!1046661 lt!1046660)) ((_ is EmptyExpr!9437) (ite c!501846 lt!1046661 lt!1046660)))))

(assert (=> bm!207164 d!851772))

(assert (=> b!3035194 d!851688))

(declare-fun d!851774 () Bool)

(assert (=> d!851774 (= (nullable!3087 (regTwo!19387 r!17423)) (nullableFct!878 (regTwo!19387 r!17423)))))

(declare-fun bs!530943 () Bool)

(assert (= bs!530943 d!851774))

(declare-fun m!3370207 () Bool)

(assert (=> bs!530943 m!3370207))

(assert (=> b!3035216 d!851774))

(assert (=> b!3035444 d!851668))

(declare-fun b!3036349 () Bool)

(declare-fun e!1903946 () Bool)

(declare-fun call!207371 () Bool)

(assert (=> b!3036349 (= e!1903946 call!207371)))

(declare-fun b!3036350 () Bool)

(declare-fun e!1903947 () Bool)

(declare-fun e!1903948 () Bool)

(assert (=> b!3036350 (= e!1903947 e!1903948)))

(declare-fun res!1249010 () Bool)

(assert (=> b!3036350 (= res!1249010 (not (nullable!3087 (reg!9766 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))))

(assert (=> b!3036350 (=> (not res!1249010) (not e!1903948))))

(declare-fun c!502129 () Bool)

(declare-fun call!207369 () Bool)

(declare-fun c!502130 () Bool)

(declare-fun bm!207364 () Bool)

(assert (=> bm!207364 (= call!207369 (validRegex!4170 (ite c!502130 (reg!9766 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))) (ite c!502129 (regOne!19387 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))) (regTwo!19386 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))))

(declare-fun b!3036351 () Bool)

(declare-fun e!1903945 () Bool)

(assert (=> b!3036351 (= e!1903947 e!1903945)))

(assert (=> b!3036351 (= c!502129 ((_ is Union!9437) (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(declare-fun d!851778 () Bool)

(declare-fun res!1249011 () Bool)

(declare-fun e!1903949 () Bool)

(assert (=> d!851778 (=> res!1249011 e!1903949)))

(assert (=> d!851778 (= res!1249011 ((_ is ElementMatch!9437) (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(assert (=> d!851778 (= (validRegex!4170 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))) e!1903949)))

(declare-fun b!3036352 () Bool)

(assert (=> b!3036352 (= e!1903949 e!1903947)))

(assert (=> b!3036352 (= c!502130 ((_ is Star!9437) (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))

(declare-fun bm!207365 () Bool)

(assert (=> bm!207365 (= call!207371 (validRegex!4170 (ite c!502129 (regTwo!19387 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))) (regOne!19386 (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423))))))))

(declare-fun bm!207366 () Bool)

(declare-fun call!207370 () Bool)

(assert (=> bm!207366 (= call!207370 call!207369)))

(declare-fun b!3036353 () Bool)

(declare-fun e!1903950 () Bool)

(declare-fun e!1903944 () Bool)

(assert (=> b!3036353 (= e!1903950 e!1903944)))

(declare-fun res!1249013 () Bool)

(assert (=> b!3036353 (=> (not res!1249013) (not e!1903944))))

(assert (=> b!3036353 (= res!1249013 call!207371)))

(declare-fun b!3036354 () Bool)

(assert (=> b!3036354 (= e!1903944 call!207370)))

(declare-fun b!3036355 () Bool)

(declare-fun res!1249012 () Bool)

(assert (=> b!3036355 (=> (not res!1249012) (not e!1903946))))

(assert (=> b!3036355 (= res!1249012 call!207370)))

(assert (=> b!3036355 (= e!1903945 e!1903946)))

(declare-fun b!3036356 () Bool)

(assert (=> b!3036356 (= e!1903948 call!207369)))

(declare-fun b!3036357 () Bool)

(declare-fun res!1249014 () Bool)

(assert (=> b!3036357 (=> res!1249014 e!1903950)))

(assert (=> b!3036357 (= res!1249014 (not ((_ is Concat!14758) (ite c!501928 (regTwo!19387 r!17423) (regOne!19386 r!17423)))))))

(assert (=> b!3036357 (= e!1903945 e!1903950)))

(assert (= (and d!851778 (not res!1249011)) b!3036352))

(assert (= (and b!3036352 c!502130) b!3036350))

(assert (= (and b!3036352 (not c!502130)) b!3036351))

(assert (= (and b!3036350 res!1249010) b!3036356))

(assert (= (and b!3036351 c!502129) b!3036355))

(assert (= (and b!3036351 (not c!502129)) b!3036357))

(assert (= (and b!3036355 res!1249012) b!3036349))

(assert (= (and b!3036357 (not res!1249014)) b!3036353))

(assert (= (and b!3036353 res!1249013) b!3036354))

(assert (= (or b!3036355 b!3036354) bm!207366))

(assert (= (or b!3036349 b!3036353) bm!207365))

(assert (= (or b!3036356 bm!207366) bm!207364))

(declare-fun m!3370209 () Bool)

(assert (=> b!3036350 m!3370209))

(declare-fun m!3370211 () Bool)

(assert (=> bm!207364 m!3370211))

(declare-fun m!3370213 () Bool)

(assert (=> bm!207365 m!3370213))

(assert (=> bm!207212 d!851778))

(assert (=> d!851646 d!851644))

(assert (=> d!851646 d!851638))

(declare-fun d!851780 () Bool)

(assert (=> d!851780 (= (matchR!4319 r!17423 s!11993) (matchRSpec!1574 r!17423 s!11993))))

(assert (=> d!851780 true))

(declare-fun _$88!3375 () Unit!49297)

(assert (=> d!851780 (= (choose!18011 r!17423 s!11993) _$88!3375)))

(declare-fun bs!530946 () Bool)

(assert (= bs!530946 d!851780))

(assert (=> bs!530946 m!3369581))

(assert (=> bs!530946 m!3369579))

(assert (=> d!851646 d!851780))

(assert (=> d!851646 d!851630))

(declare-fun d!851788 () Bool)

(assert (=> d!851788 (= (nullable!3087 lt!1046614) (nullableFct!878 lt!1046614))))

(declare-fun bs!530947 () Bool)

(assert (= bs!530947 d!851788))

(declare-fun m!3370219 () Bool)

(assert (=> bs!530947 m!3370219))

(assert (=> b!3035202 d!851788))

(declare-fun d!851790 () Bool)

(assert (=> d!851790 (= (isEmptyLang!502 (ite c!501966 lt!1046727 (ite c!501963 lt!1046728 lt!1046730))) ((_ is EmptyLang!9437) (ite c!501966 lt!1046727 (ite c!501963 lt!1046728 lt!1046730))))))

(assert (=> bm!207237 d!851790))

(declare-fun d!851792 () Bool)

(assert (=> d!851792 (= (nullable!3087 (reg!9766 r!17423)) (nullableFct!878 (reg!9766 r!17423)))))

(declare-fun bs!530948 () Bool)

(assert (= bs!530948 d!851792))

(declare-fun m!3370221 () Bool)

(assert (=> bs!530948 m!3370221))

(assert (=> b!3035648 d!851792))

(declare-fun d!851794 () Bool)

(assert (=> d!851794 (= (nullable!3087 lt!1046659) (nullableFct!878 lt!1046659))))

(declare-fun bs!530949 () Bool)

(assert (= bs!530949 d!851794))

(declare-fun m!3370223 () Bool)

(assert (=> bs!530949 m!3370223))

(assert (=> b!3035373 d!851794))

(assert (=> b!3035373 d!851774))

(assert (=> bm!207173 d!851658))

(declare-fun d!851796 () Bool)

(assert (=> d!851796 (= (isEmptyExpr!508 (ite c!501879 lt!1046682 lt!1046681)) ((_ is EmptyExpr!9437) (ite c!501879 lt!1046682 lt!1046681)))))

(assert (=> bm!207184 d!851796))

(declare-fun d!851798 () Bool)

(assert (=> d!851798 (= (nullable!3087 lt!1046680) (nullableFct!878 lt!1046680))))

(declare-fun bs!530950 () Bool)

(assert (= bs!530950 d!851798))

(declare-fun m!3370225 () Bool)

(assert (=> bs!530950 m!3370225))

(assert (=> b!3035477 d!851798))

(declare-fun d!851800 () Bool)

(assert (=> d!851800 (= (nullable!3087 r!17423) (nullableFct!878 r!17423))))

(declare-fun bs!530951 () Bool)

(assert (= bs!530951 d!851800))

(declare-fun m!3370227 () Bool)

(assert (=> bs!530951 m!3370227))

(assert (=> b!3035477 d!851800))

(declare-fun d!851802 () Bool)

(assert (=> d!851802 (= (isEmptyLang!502 (ite c!501843 lt!1046663 lt!1046660)) ((_ is EmptyLang!9437) (ite c!501843 lt!1046663 lt!1046660)))))

(assert (=> bm!207158 d!851802))

(assert (=> d!851606 d!851658))

(declare-fun b!3036383 () Bool)

(declare-fun e!1903967 () Bool)

(declare-fun call!207381 () Bool)

(assert (=> b!3036383 (= e!1903967 call!207381)))

(declare-fun b!3036384 () Bool)

(declare-fun e!1903968 () Bool)

(declare-fun e!1903969 () Bool)

(assert (=> b!3036384 (= e!1903968 e!1903969)))

(declare-fun res!1249018 () Bool)

(assert (=> b!3036384 (= res!1249018 (not (nullable!3087 (reg!9766 (simplify!404 r!17423)))))))

(assert (=> b!3036384 (=> (not res!1249018) (not e!1903969))))

(declare-fun call!207379 () Bool)

(declare-fun bm!207374 () Bool)

(declare-fun c!502143 () Bool)

(declare-fun c!502142 () Bool)

(assert (=> bm!207374 (= call!207379 (validRegex!4170 (ite c!502143 (reg!9766 (simplify!404 r!17423)) (ite c!502142 (regOne!19387 (simplify!404 r!17423)) (regTwo!19386 (simplify!404 r!17423))))))))

(declare-fun b!3036385 () Bool)

(declare-fun e!1903966 () Bool)

(assert (=> b!3036385 (= e!1903968 e!1903966)))

(assert (=> b!3036385 (= c!502142 ((_ is Union!9437) (simplify!404 r!17423)))))

(declare-fun d!851804 () Bool)

(declare-fun res!1249019 () Bool)

(declare-fun e!1903970 () Bool)

(assert (=> d!851804 (=> res!1249019 e!1903970)))

(assert (=> d!851804 (= res!1249019 ((_ is ElementMatch!9437) (simplify!404 r!17423)))))

(assert (=> d!851804 (= (validRegex!4170 (simplify!404 r!17423)) e!1903970)))

(declare-fun b!3036386 () Bool)

(assert (=> b!3036386 (= e!1903970 e!1903968)))

(assert (=> b!3036386 (= c!502143 ((_ is Star!9437) (simplify!404 r!17423)))))

(declare-fun bm!207375 () Bool)

(assert (=> bm!207375 (= call!207381 (validRegex!4170 (ite c!502142 (regTwo!19387 (simplify!404 r!17423)) (regOne!19386 (simplify!404 r!17423)))))))

(declare-fun bm!207376 () Bool)

(declare-fun call!207380 () Bool)

(assert (=> bm!207376 (= call!207380 call!207379)))

(declare-fun b!3036387 () Bool)

(declare-fun e!1903971 () Bool)

(declare-fun e!1903965 () Bool)

(assert (=> b!3036387 (= e!1903971 e!1903965)))

(declare-fun res!1249021 () Bool)

(assert (=> b!3036387 (=> (not res!1249021) (not e!1903965))))

(assert (=> b!3036387 (= res!1249021 call!207381)))

(declare-fun b!3036388 () Bool)

(assert (=> b!3036388 (= e!1903965 call!207380)))

(declare-fun b!3036389 () Bool)

(declare-fun res!1249020 () Bool)

(assert (=> b!3036389 (=> (not res!1249020) (not e!1903967))))

(assert (=> b!3036389 (= res!1249020 call!207380)))

(assert (=> b!3036389 (= e!1903966 e!1903967)))

(declare-fun b!3036390 () Bool)

(assert (=> b!3036390 (= e!1903969 call!207379)))

(declare-fun b!3036391 () Bool)

(declare-fun res!1249022 () Bool)

(assert (=> b!3036391 (=> res!1249022 e!1903971)))

(assert (=> b!3036391 (= res!1249022 (not ((_ is Concat!14758) (simplify!404 r!17423))))))

(assert (=> b!3036391 (= e!1903966 e!1903971)))

(assert (= (and d!851804 (not res!1249019)) b!3036386))

(assert (= (and b!3036386 c!502143) b!3036384))

(assert (= (and b!3036386 (not c!502143)) b!3036385))

(assert (= (and b!3036384 res!1249018) b!3036390))

(assert (= (and b!3036385 c!502142) b!3036389))

(assert (= (and b!3036385 (not c!502142)) b!3036391))

(assert (= (and b!3036389 res!1249020) b!3036383))

(assert (= (and b!3036391 (not res!1249022)) b!3036387))

(assert (= (and b!3036387 res!1249021) b!3036388))

(assert (= (or b!3036389 b!3036388) bm!207376))

(assert (= (or b!3036383 b!3036387) bm!207375))

(assert (= (or b!3036390 bm!207376) bm!207374))

(declare-fun m!3370229 () Bool)

(assert (=> b!3036384 m!3370229))

(declare-fun m!3370231 () Bool)

(assert (=> bm!207374 m!3370231))

(declare-fun m!3370233 () Bool)

(assert (=> bm!207375 m!3370233))

(assert (=> d!851606 d!851804))

(declare-fun bs!530952 () Bool)

(declare-fun b!3036397 () Bool)

(assert (= bs!530952 (and b!3036397 b!3035767)))

(declare-fun lambda!113259 () Int)

(assert (=> bs!530952 (= (and (= (reg!9766 (regOne!19387 r!17423)) (reg!9766 r!17423)) (= (regOne!19387 r!17423) r!17423)) (= lambda!113259 lambda!113257))))

(declare-fun bs!530953 () Bool)

(assert (= bs!530953 (and b!3036397 b!3035771)))

(assert (=> bs!530953 (not (= lambda!113259 lambda!113258))))

(assert (=> b!3036397 true))

(assert (=> b!3036397 true))

(declare-fun bs!530954 () Bool)

(declare-fun b!3036401 () Bool)

(assert (= bs!530954 (and b!3036401 b!3035767)))

(declare-fun lambda!113260 () Int)

(assert (=> bs!530954 (not (= lambda!113260 lambda!113257))))

(declare-fun bs!530955 () Bool)

(assert (= bs!530955 (and b!3036401 b!3035771)))

(assert (=> bs!530955 (= (and (= (regOne!19386 (regOne!19387 r!17423)) (regOne!19386 r!17423)) (= (regTwo!19386 (regOne!19387 r!17423)) (regTwo!19386 r!17423))) (= lambda!113260 lambda!113258))))

(declare-fun bs!530956 () Bool)

(assert (= bs!530956 (and b!3036401 b!3036397)))

(assert (=> bs!530956 (not (= lambda!113260 lambda!113259))))

(assert (=> b!3036401 true))

(assert (=> b!3036401 true))

(declare-fun b!3036392 () Bool)

(declare-fun e!1903978 () Bool)

(assert (=> b!3036392 (= e!1903978 (matchRSpec!1574 (regTwo!19387 (regOne!19387 r!17423)) s!11993))))

(declare-fun b!3036393 () Bool)

(declare-fun c!502145 () Bool)

(assert (=> b!3036393 (= c!502145 ((_ is ElementMatch!9437) (regOne!19387 r!17423)))))

(declare-fun e!1903972 () Bool)

(declare-fun e!1903977 () Bool)

(assert (=> b!3036393 (= e!1903972 e!1903977)))

(declare-fun d!851806 () Bool)

(declare-fun c!502144 () Bool)

(assert (=> d!851806 (= c!502144 ((_ is EmptyExpr!9437) (regOne!19387 r!17423)))))

(declare-fun e!1903973 () Bool)

(assert (=> d!851806 (= (matchRSpec!1574 (regOne!19387 r!17423) s!11993) e!1903973)))

(declare-fun b!3036394 () Bool)

(assert (=> b!3036394 (= e!1903977 (= s!11993 (Cons!35178 (c!501761 (regOne!19387 r!17423)) Nil!35178)))))

(declare-fun b!3036395 () Bool)

(declare-fun e!1903975 () Bool)

(declare-fun e!1903976 () Bool)

(assert (=> b!3036395 (= e!1903975 e!1903976)))

(declare-fun c!502147 () Bool)

(assert (=> b!3036395 (= c!502147 ((_ is Star!9437) (regOne!19387 r!17423)))))

(declare-fun b!3036396 () Bool)

(assert (=> b!3036396 (= e!1903973 e!1903972)))

(declare-fun res!1249023 () Bool)

(assert (=> b!3036396 (= res!1249023 (not ((_ is EmptyLang!9437) (regOne!19387 r!17423))))))

(assert (=> b!3036396 (=> (not res!1249023) (not e!1903972))))

(declare-fun bm!207377 () Bool)

(declare-fun call!207383 () Bool)

(assert (=> bm!207377 (= call!207383 (isEmpty!19478 s!11993))))

(declare-fun e!1903974 () Bool)

(declare-fun call!207382 () Bool)

(assert (=> b!3036397 (= e!1903974 call!207382)))

(declare-fun b!3036398 () Bool)

(declare-fun c!502146 () Bool)

(assert (=> b!3036398 (= c!502146 ((_ is Union!9437) (regOne!19387 r!17423)))))

(assert (=> b!3036398 (= e!1903977 e!1903975)))

(declare-fun b!3036399 () Bool)

(assert (=> b!3036399 (= e!1903975 e!1903978)))

(declare-fun res!1249024 () Bool)

(assert (=> b!3036399 (= res!1249024 (matchRSpec!1574 (regOne!19387 (regOne!19387 r!17423)) s!11993))))

(assert (=> b!3036399 (=> res!1249024 e!1903978)))

(declare-fun bm!207378 () Bool)

(assert (=> bm!207378 (= call!207382 (Exists!1702 (ite c!502147 lambda!113259 lambda!113260)))))

(declare-fun b!3036400 () Bool)

(declare-fun res!1249025 () Bool)

(assert (=> b!3036400 (=> res!1249025 e!1903974)))

(assert (=> b!3036400 (= res!1249025 call!207383)))

(assert (=> b!3036400 (= e!1903976 e!1903974)))

(assert (=> b!3036401 (= e!1903976 call!207382)))

(declare-fun b!3036402 () Bool)

(assert (=> b!3036402 (= e!1903973 call!207383)))

(assert (= (and d!851806 c!502144) b!3036402))

(assert (= (and d!851806 (not c!502144)) b!3036396))

(assert (= (and b!3036396 res!1249023) b!3036393))

(assert (= (and b!3036393 c!502145) b!3036394))

(assert (= (and b!3036393 (not c!502145)) b!3036398))

(assert (= (and b!3036398 c!502146) b!3036399))

(assert (= (and b!3036398 (not c!502146)) b!3036395))

(assert (= (and b!3036399 (not res!1249024)) b!3036392))

(assert (= (and b!3036395 c!502147) b!3036400))

(assert (= (and b!3036395 (not c!502147)) b!3036401))

(assert (= (and b!3036400 (not res!1249025)) b!3036397))

(assert (= (or b!3036397 b!3036401) bm!207378))

(assert (= (or b!3036402 b!3036400) bm!207377))

(declare-fun m!3370255 () Bool)

(assert (=> b!3036392 m!3370255))

(assert (=> bm!207377 m!3369591))

(declare-fun m!3370257 () Bool)

(assert (=> b!3036399 m!3370257))

(declare-fun m!3370259 () Bool)

(assert (=> bm!207378 m!3370259))

(assert (=> b!3035769 d!851806))

(assert (=> b!3035195 d!851592))

(declare-fun bs!530957 () Bool)

(declare-fun b!3036422 () Bool)

(assert (= bs!530957 (and b!3036422 b!3035767)))

(declare-fun lambda!113261 () Int)

(assert (=> bs!530957 (= (and (= (reg!9766 (regTwo!19387 r!17423)) (reg!9766 r!17423)) (= (regTwo!19387 r!17423) r!17423)) (= lambda!113261 lambda!113257))))

(declare-fun bs!530958 () Bool)

(assert (= bs!530958 (and b!3036422 b!3035771)))

(assert (=> bs!530958 (not (= lambda!113261 lambda!113258))))

(declare-fun bs!530959 () Bool)

(assert (= bs!530959 (and b!3036422 b!3036397)))

(assert (=> bs!530959 (= (and (= (reg!9766 (regTwo!19387 r!17423)) (reg!9766 (regOne!19387 r!17423))) (= (regTwo!19387 r!17423) (regOne!19387 r!17423))) (= lambda!113261 lambda!113259))))

(declare-fun bs!530960 () Bool)

(assert (= bs!530960 (and b!3036422 b!3036401)))

(assert (=> bs!530960 (not (= lambda!113261 lambda!113260))))

(assert (=> b!3036422 true))

(assert (=> b!3036422 true))

(declare-fun bs!530961 () Bool)

(declare-fun b!3036426 () Bool)

(assert (= bs!530961 (and b!3036426 b!3035767)))

(declare-fun lambda!113262 () Int)

(assert (=> bs!530961 (not (= lambda!113262 lambda!113257))))

(declare-fun bs!530962 () Bool)

(assert (= bs!530962 (and b!3036426 b!3036397)))

(assert (=> bs!530962 (not (= lambda!113262 lambda!113259))))

(declare-fun bs!530963 () Bool)

(assert (= bs!530963 (and b!3036426 b!3035771)))

(assert (=> bs!530963 (= (and (= (regOne!19386 (regTwo!19387 r!17423)) (regOne!19386 r!17423)) (= (regTwo!19386 (regTwo!19387 r!17423)) (regTwo!19386 r!17423))) (= lambda!113262 lambda!113258))))

(declare-fun bs!530964 () Bool)

(assert (= bs!530964 (and b!3036426 b!3036401)))

(assert (=> bs!530964 (= (and (= (regOne!19386 (regTwo!19387 r!17423)) (regOne!19386 (regOne!19387 r!17423))) (= (regTwo!19386 (regTwo!19387 r!17423)) (regTwo!19386 (regOne!19387 r!17423)))) (= lambda!113262 lambda!113260))))

(declare-fun bs!530965 () Bool)

(assert (= bs!530965 (and b!3036426 b!3036422)))

(assert (=> bs!530965 (not (= lambda!113262 lambda!113261))))

(assert (=> b!3036426 true))

(assert (=> b!3036426 true))

(declare-fun b!3036417 () Bool)

(declare-fun e!1903992 () Bool)

(assert (=> b!3036417 (= e!1903992 (matchRSpec!1574 (regTwo!19387 (regTwo!19387 r!17423)) s!11993))))

(declare-fun b!3036418 () Bool)

(declare-fun c!502152 () Bool)

(assert (=> b!3036418 (= c!502152 ((_ is ElementMatch!9437) (regTwo!19387 r!17423)))))

(declare-fun e!1903986 () Bool)

(declare-fun e!1903991 () Bool)

(assert (=> b!3036418 (= e!1903986 e!1903991)))

(declare-fun d!851810 () Bool)

(declare-fun c!502151 () Bool)

(assert (=> d!851810 (= c!502151 ((_ is EmptyExpr!9437) (regTwo!19387 r!17423)))))

(declare-fun e!1903987 () Bool)

(assert (=> d!851810 (= (matchRSpec!1574 (regTwo!19387 r!17423) s!11993) e!1903987)))

(declare-fun b!3036419 () Bool)

(assert (=> b!3036419 (= e!1903991 (= s!11993 (Cons!35178 (c!501761 (regTwo!19387 r!17423)) Nil!35178)))))

(declare-fun b!3036420 () Bool)

(declare-fun e!1903989 () Bool)

(declare-fun e!1903990 () Bool)

(assert (=> b!3036420 (= e!1903989 e!1903990)))

(declare-fun c!502154 () Bool)

(assert (=> b!3036420 (= c!502154 ((_ is Star!9437) (regTwo!19387 r!17423)))))

(declare-fun b!3036421 () Bool)

(assert (=> b!3036421 (= e!1903987 e!1903986)))

(declare-fun res!1249034 () Bool)

(assert (=> b!3036421 (= res!1249034 (not ((_ is EmptyLang!9437) (regTwo!19387 r!17423))))))

(assert (=> b!3036421 (=> (not res!1249034) (not e!1903986))))

(declare-fun bm!207380 () Bool)

(declare-fun call!207386 () Bool)

(assert (=> bm!207380 (= call!207386 (isEmpty!19478 s!11993))))

(declare-fun e!1903988 () Bool)

(declare-fun call!207385 () Bool)

(assert (=> b!3036422 (= e!1903988 call!207385)))

(declare-fun b!3036423 () Bool)

(declare-fun c!502153 () Bool)

(assert (=> b!3036423 (= c!502153 ((_ is Union!9437) (regTwo!19387 r!17423)))))

(assert (=> b!3036423 (= e!1903991 e!1903989)))

(declare-fun b!3036424 () Bool)

(assert (=> b!3036424 (= e!1903989 e!1903992)))

(declare-fun res!1249035 () Bool)

(assert (=> b!3036424 (= res!1249035 (matchRSpec!1574 (regOne!19387 (regTwo!19387 r!17423)) s!11993))))

(assert (=> b!3036424 (=> res!1249035 e!1903992)))

(declare-fun bm!207381 () Bool)

(assert (=> bm!207381 (= call!207385 (Exists!1702 (ite c!502154 lambda!113261 lambda!113262)))))

(declare-fun b!3036425 () Bool)

(declare-fun res!1249036 () Bool)

(assert (=> b!3036425 (=> res!1249036 e!1903988)))

(assert (=> b!3036425 (= res!1249036 call!207386)))

(assert (=> b!3036425 (= e!1903990 e!1903988)))

(assert (=> b!3036426 (= e!1903990 call!207385)))

(declare-fun b!3036427 () Bool)

(assert (=> b!3036427 (= e!1903987 call!207386)))

(assert (= (and d!851810 c!502151) b!3036427))

(assert (= (and d!851810 (not c!502151)) b!3036421))

(assert (= (and b!3036421 res!1249034) b!3036418))

(assert (= (and b!3036418 c!502152) b!3036419))

(assert (= (and b!3036418 (not c!502152)) b!3036423))

(assert (= (and b!3036423 c!502153) b!3036424))

(assert (= (and b!3036423 (not c!502153)) b!3036420))

(assert (= (and b!3036424 (not res!1249035)) b!3036417))

(assert (= (and b!3036420 c!502154) b!3036425))

(assert (= (and b!3036420 (not c!502154)) b!3036426))

(assert (= (and b!3036425 (not res!1249036)) b!3036422))

(assert (= (or b!3036422 b!3036426) bm!207381))

(assert (= (or b!3036427 b!3036425) bm!207380))

(declare-fun m!3370275 () Bool)

(assert (=> b!3036417 m!3370275))

(assert (=> bm!207380 m!3369591))

(declare-fun m!3370277 () Bool)

(assert (=> b!3036424 m!3370277))

(declare-fun m!3370279 () Bool)

(assert (=> bm!207381 m!3370279))

(assert (=> b!3035762 d!851810))

(assert (=> b!3035783 d!851800))

(declare-fun b!3036430 () Bool)

(declare-fun e!1903993 () Bool)

(declare-fun tp!961502 () Bool)

(assert (=> b!3036430 (= e!1903993 tp!961502)))

(declare-fun b!3036429 () Bool)

(declare-fun tp!961500 () Bool)

(declare-fun tp!961498 () Bool)

(assert (=> b!3036429 (= e!1903993 (and tp!961500 tp!961498))))

(declare-fun b!3036428 () Bool)

(assert (=> b!3036428 (= e!1903993 tp_is_empty!16437)))

(declare-fun b!3036431 () Bool)

(declare-fun tp!961499 () Bool)

(declare-fun tp!961501 () Bool)

(assert (=> b!3036431 (= e!1903993 (and tp!961499 tp!961501))))

(assert (=> b!3035881 (= tp!961489 e!1903993)))

(assert (= (and b!3035881 ((_ is ElementMatch!9437) (regOne!19387 (regTwo!19386 r!17423)))) b!3036428))

(assert (= (and b!3035881 ((_ is Concat!14758) (regOne!19387 (regTwo!19386 r!17423)))) b!3036429))

(assert (= (and b!3035881 ((_ is Star!9437) (regOne!19387 (regTwo!19386 r!17423)))) b!3036430))

(assert (= (and b!3035881 ((_ is Union!9437) (regOne!19387 (regTwo!19386 r!17423)))) b!3036431))

(declare-fun b!3036434 () Bool)

(declare-fun e!1903994 () Bool)

(declare-fun tp!961507 () Bool)

(assert (=> b!3036434 (= e!1903994 tp!961507)))

(declare-fun b!3036433 () Bool)

(declare-fun tp!961505 () Bool)

(declare-fun tp!961503 () Bool)

(assert (=> b!3036433 (= e!1903994 (and tp!961505 tp!961503))))

(declare-fun b!3036432 () Bool)

(assert (=> b!3036432 (= e!1903994 tp_is_empty!16437)))

(declare-fun b!3036435 () Bool)

(declare-fun tp!961504 () Bool)

(declare-fun tp!961506 () Bool)

(assert (=> b!3036435 (= e!1903994 (and tp!961504 tp!961506))))

(assert (=> b!3035881 (= tp!961491 e!1903994)))

(assert (= (and b!3035881 ((_ is ElementMatch!9437) (regTwo!19387 (regTwo!19386 r!17423)))) b!3036432))

(assert (= (and b!3035881 ((_ is Concat!14758) (regTwo!19387 (regTwo!19386 r!17423)))) b!3036433))

(assert (= (and b!3035881 ((_ is Star!9437) (regTwo!19387 (regTwo!19386 r!17423)))) b!3036434))

(assert (= (and b!3035881 ((_ is Union!9437) (regTwo!19387 (regTwo!19386 r!17423)))) b!3036435))

(declare-fun b!3036438 () Bool)

(declare-fun e!1903995 () Bool)

(declare-fun tp!961512 () Bool)

(assert (=> b!3036438 (= e!1903995 tp!961512)))

(declare-fun b!3036437 () Bool)

(declare-fun tp!961510 () Bool)

(declare-fun tp!961508 () Bool)

(assert (=> b!3036437 (= e!1903995 (and tp!961510 tp!961508))))

(declare-fun b!3036436 () Bool)

(assert (=> b!3036436 (= e!1903995 tp_is_empty!16437)))

(declare-fun b!3036439 () Bool)

(declare-fun tp!961509 () Bool)

(declare-fun tp!961511 () Bool)

(assert (=> b!3036439 (= e!1903995 (and tp!961509 tp!961511))))

(assert (=> b!3035867 (= tp!961475 e!1903995)))

(assert (= (and b!3035867 ((_ is ElementMatch!9437) (regOne!19386 (regOne!19387 r!17423)))) b!3036436))

(assert (= (and b!3035867 ((_ is Concat!14758) (regOne!19386 (regOne!19387 r!17423)))) b!3036437))

(assert (= (and b!3035867 ((_ is Star!9437) (regOne!19386 (regOne!19387 r!17423)))) b!3036438))

(assert (= (and b!3035867 ((_ is Union!9437) (regOne!19386 (regOne!19387 r!17423)))) b!3036439))

(declare-fun b!3036442 () Bool)

(declare-fun e!1903996 () Bool)

(declare-fun tp!961517 () Bool)

(assert (=> b!3036442 (= e!1903996 tp!961517)))

(declare-fun b!3036441 () Bool)

(declare-fun tp!961515 () Bool)

(declare-fun tp!961513 () Bool)

(assert (=> b!3036441 (= e!1903996 (and tp!961515 tp!961513))))

(declare-fun b!3036440 () Bool)

(assert (=> b!3036440 (= e!1903996 tp_is_empty!16437)))

(declare-fun b!3036443 () Bool)

(declare-fun tp!961514 () Bool)

(declare-fun tp!961516 () Bool)

(assert (=> b!3036443 (= e!1903996 (and tp!961514 tp!961516))))

(assert (=> b!3035867 (= tp!961473 e!1903996)))

(assert (= (and b!3035867 ((_ is ElementMatch!9437) (regTwo!19386 (regOne!19387 r!17423)))) b!3036440))

(assert (= (and b!3035867 ((_ is Concat!14758) (regTwo!19386 (regOne!19387 r!17423)))) b!3036441))

(assert (= (and b!3035867 ((_ is Star!9437) (regTwo!19386 (regOne!19387 r!17423)))) b!3036442))

(assert (= (and b!3035867 ((_ is Union!9437) (regTwo!19386 (regOne!19387 r!17423)))) b!3036443))

(declare-fun b!3036446 () Bool)

(declare-fun e!1903997 () Bool)

(declare-fun tp!961522 () Bool)

(assert (=> b!3036446 (= e!1903997 tp!961522)))

(declare-fun b!3036445 () Bool)

(declare-fun tp!961520 () Bool)

(declare-fun tp!961518 () Bool)

(assert (=> b!3036445 (= e!1903997 (and tp!961520 tp!961518))))

(declare-fun b!3036444 () Bool)

(assert (=> b!3036444 (= e!1903997 tp_is_empty!16437)))

(declare-fun b!3036447 () Bool)

(declare-fun tp!961519 () Bool)

(declare-fun tp!961521 () Bool)

(assert (=> b!3036447 (= e!1903997 (and tp!961519 tp!961521))))

(assert (=> b!3035876 (= tp!961487 e!1903997)))

(assert (= (and b!3035876 ((_ is ElementMatch!9437) (reg!9766 (regOne!19386 r!17423)))) b!3036444))

(assert (= (and b!3035876 ((_ is Concat!14758) (reg!9766 (regOne!19386 r!17423)))) b!3036445))

(assert (= (and b!3035876 ((_ is Star!9437) (reg!9766 (regOne!19386 r!17423)))) b!3036446))

(assert (= (and b!3035876 ((_ is Union!9437) (reg!9766 (regOne!19386 r!17423)))) b!3036447))

(declare-fun b!3036450 () Bool)

(declare-fun e!1903998 () Bool)

(declare-fun tp!961527 () Bool)

(assert (=> b!3036450 (= e!1903998 tp!961527)))

(declare-fun b!3036449 () Bool)

(declare-fun tp!961525 () Bool)

(declare-fun tp!961523 () Bool)

(assert (=> b!3036449 (= e!1903998 (and tp!961525 tp!961523))))

(declare-fun b!3036448 () Bool)

(assert (=> b!3036448 (= e!1903998 tp_is_empty!16437)))

(declare-fun b!3036451 () Bool)

(declare-fun tp!961524 () Bool)

(declare-fun tp!961526 () Bool)

(assert (=> b!3036451 (= e!1903998 (and tp!961524 tp!961526))))

(assert (=> b!3035871 (= tp!961480 e!1903998)))

(assert (= (and b!3035871 ((_ is ElementMatch!9437) (regOne!19386 (regTwo!19387 r!17423)))) b!3036448))

(assert (= (and b!3035871 ((_ is Concat!14758) (regOne!19386 (regTwo!19387 r!17423)))) b!3036449))

(assert (= (and b!3035871 ((_ is Star!9437) (regOne!19386 (regTwo!19387 r!17423)))) b!3036450))

(assert (= (and b!3035871 ((_ is Union!9437) (regOne!19386 (regTwo!19387 r!17423)))) b!3036451))

(declare-fun b!3036454 () Bool)

(declare-fun e!1903999 () Bool)

(declare-fun tp!961532 () Bool)

(assert (=> b!3036454 (= e!1903999 tp!961532)))

(declare-fun b!3036453 () Bool)

(declare-fun tp!961530 () Bool)

(declare-fun tp!961528 () Bool)

(assert (=> b!3036453 (= e!1903999 (and tp!961530 tp!961528))))

(declare-fun b!3036452 () Bool)

(assert (=> b!3036452 (= e!1903999 tp_is_empty!16437)))

(declare-fun b!3036455 () Bool)

(declare-fun tp!961529 () Bool)

(declare-fun tp!961531 () Bool)

(assert (=> b!3036455 (= e!1903999 (and tp!961529 tp!961531))))

(assert (=> b!3035871 (= tp!961478 e!1903999)))

(assert (= (and b!3035871 ((_ is ElementMatch!9437) (regTwo!19386 (regTwo!19387 r!17423)))) b!3036452))

(assert (= (and b!3035871 ((_ is Concat!14758) (regTwo!19386 (regTwo!19387 r!17423)))) b!3036453))

(assert (= (and b!3035871 ((_ is Star!9437) (regTwo!19386 (regTwo!19387 r!17423)))) b!3036454))

(assert (= (and b!3035871 ((_ is Union!9437) (regTwo!19386 (regTwo!19387 r!17423)))) b!3036455))

(declare-fun b!3036458 () Bool)

(declare-fun e!1904000 () Bool)

(declare-fun tp!961537 () Bool)

(assert (=> b!3036458 (= e!1904000 tp!961537)))

(declare-fun b!3036457 () Bool)

(declare-fun tp!961535 () Bool)

(declare-fun tp!961533 () Bool)

(assert (=> b!3036457 (= e!1904000 (and tp!961535 tp!961533))))

(declare-fun b!3036456 () Bool)

(assert (=> b!3036456 (= e!1904000 tp_is_empty!16437)))

(declare-fun b!3036459 () Bool)

(declare-fun tp!961534 () Bool)

(declare-fun tp!961536 () Bool)

(assert (=> b!3036459 (= e!1904000 (and tp!961534 tp!961536))))

(assert (=> b!3035885 (= tp!961494 e!1904000)))

(assert (= (and b!3035885 ((_ is ElementMatch!9437) (regOne!19387 (reg!9766 r!17423)))) b!3036456))

(assert (= (and b!3035885 ((_ is Concat!14758) (regOne!19387 (reg!9766 r!17423)))) b!3036457))

(assert (= (and b!3035885 ((_ is Star!9437) (regOne!19387 (reg!9766 r!17423)))) b!3036458))

(assert (= (and b!3035885 ((_ is Union!9437) (regOne!19387 (reg!9766 r!17423)))) b!3036459))

(declare-fun b!3036462 () Bool)

(declare-fun e!1904001 () Bool)

(declare-fun tp!961542 () Bool)

(assert (=> b!3036462 (= e!1904001 tp!961542)))

(declare-fun b!3036461 () Bool)

(declare-fun tp!961540 () Bool)

(declare-fun tp!961538 () Bool)

(assert (=> b!3036461 (= e!1904001 (and tp!961540 tp!961538))))

(declare-fun b!3036460 () Bool)

(assert (=> b!3036460 (= e!1904001 tp_is_empty!16437)))

(declare-fun b!3036463 () Bool)

(declare-fun tp!961539 () Bool)

(declare-fun tp!961541 () Bool)

(assert (=> b!3036463 (= e!1904001 (and tp!961539 tp!961541))))

(assert (=> b!3035885 (= tp!961496 e!1904001)))

(assert (= (and b!3035885 ((_ is ElementMatch!9437) (regTwo!19387 (reg!9766 r!17423)))) b!3036460))

(assert (= (and b!3035885 ((_ is Concat!14758) (regTwo!19387 (reg!9766 r!17423)))) b!3036461))

(assert (= (and b!3035885 ((_ is Star!9437) (regTwo!19387 (reg!9766 r!17423)))) b!3036462))

(assert (= (and b!3035885 ((_ is Union!9437) (regTwo!19387 (reg!9766 r!17423)))) b!3036463))

(declare-fun b!3036466 () Bool)

(declare-fun e!1904002 () Bool)

(declare-fun tp!961547 () Bool)

(assert (=> b!3036466 (= e!1904002 tp!961547)))

(declare-fun b!3036465 () Bool)

(declare-fun tp!961545 () Bool)

(declare-fun tp!961543 () Bool)

(assert (=> b!3036465 (= e!1904002 (and tp!961545 tp!961543))))

(declare-fun b!3036464 () Bool)

(assert (=> b!3036464 (= e!1904002 tp_is_empty!16437)))

(declare-fun b!3036467 () Bool)

(declare-fun tp!961544 () Bool)

(declare-fun tp!961546 () Bool)

(assert (=> b!3036467 (= e!1904002 (and tp!961544 tp!961546))))

(assert (=> b!3035880 (= tp!961492 e!1904002)))

(assert (= (and b!3035880 ((_ is ElementMatch!9437) (reg!9766 (regTwo!19386 r!17423)))) b!3036464))

(assert (= (and b!3035880 ((_ is Concat!14758) (reg!9766 (regTwo!19386 r!17423)))) b!3036465))

(assert (= (and b!3035880 ((_ is Star!9437) (reg!9766 (regTwo!19386 r!17423)))) b!3036466))

(assert (= (and b!3035880 ((_ is Union!9437) (reg!9766 (regTwo!19386 r!17423)))) b!3036467))

(declare-fun b!3036470 () Bool)

(declare-fun e!1904003 () Bool)

(declare-fun tp!961552 () Bool)

(assert (=> b!3036470 (= e!1904003 tp!961552)))

(declare-fun b!3036469 () Bool)

(declare-fun tp!961550 () Bool)

(declare-fun tp!961548 () Bool)

(assert (=> b!3036469 (= e!1904003 (and tp!961550 tp!961548))))

(declare-fun b!3036468 () Bool)

(assert (=> b!3036468 (= e!1904003 tp_is_empty!16437)))

(declare-fun b!3036471 () Bool)

(declare-fun tp!961549 () Bool)

(declare-fun tp!961551 () Bool)

(assert (=> b!3036471 (= e!1904003 (and tp!961549 tp!961551))))

(assert (=> b!3035875 (= tp!961485 e!1904003)))

(assert (= (and b!3035875 ((_ is ElementMatch!9437) (regOne!19386 (regOne!19386 r!17423)))) b!3036468))

(assert (= (and b!3035875 ((_ is Concat!14758) (regOne!19386 (regOne!19386 r!17423)))) b!3036469))

(assert (= (and b!3035875 ((_ is Star!9437) (regOne!19386 (regOne!19386 r!17423)))) b!3036470))

(assert (= (and b!3035875 ((_ is Union!9437) (regOne!19386 (regOne!19386 r!17423)))) b!3036471))

(declare-fun b!3036474 () Bool)

(declare-fun e!1904004 () Bool)

(declare-fun tp!961557 () Bool)

(assert (=> b!3036474 (= e!1904004 tp!961557)))

(declare-fun b!3036473 () Bool)

(declare-fun tp!961555 () Bool)

(declare-fun tp!961553 () Bool)

(assert (=> b!3036473 (= e!1904004 (and tp!961555 tp!961553))))

(declare-fun b!3036472 () Bool)

(assert (=> b!3036472 (= e!1904004 tp_is_empty!16437)))

(declare-fun b!3036475 () Bool)

(declare-fun tp!961554 () Bool)

(declare-fun tp!961556 () Bool)

(assert (=> b!3036475 (= e!1904004 (and tp!961554 tp!961556))))

(assert (=> b!3035875 (= tp!961483 e!1904004)))

(assert (= (and b!3035875 ((_ is ElementMatch!9437) (regTwo!19386 (regOne!19386 r!17423)))) b!3036472))

(assert (= (and b!3035875 ((_ is Concat!14758) (regTwo!19386 (regOne!19386 r!17423)))) b!3036473))

(assert (= (and b!3035875 ((_ is Star!9437) (regTwo!19386 (regOne!19386 r!17423)))) b!3036474))

(assert (= (and b!3035875 ((_ is Union!9437) (regTwo!19386 (regOne!19386 r!17423)))) b!3036475))

(declare-fun b!3036478 () Bool)

(declare-fun e!1904005 () Bool)

(declare-fun tp!961562 () Bool)

(assert (=> b!3036478 (= e!1904005 tp!961562)))

(declare-fun b!3036477 () Bool)

(declare-fun tp!961560 () Bool)

(declare-fun tp!961558 () Bool)

(assert (=> b!3036477 (= e!1904005 (and tp!961560 tp!961558))))

(declare-fun b!3036476 () Bool)

(assert (=> b!3036476 (= e!1904005 tp_is_empty!16437)))

(declare-fun b!3036479 () Bool)

(declare-fun tp!961559 () Bool)

(declare-fun tp!961561 () Bool)

(assert (=> b!3036479 (= e!1904005 (and tp!961559 tp!961561))))

(assert (=> b!3035884 (= tp!961497 e!1904005)))

(assert (= (and b!3035884 ((_ is ElementMatch!9437) (reg!9766 (reg!9766 r!17423)))) b!3036476))

(assert (= (and b!3035884 ((_ is Concat!14758) (reg!9766 (reg!9766 r!17423)))) b!3036477))

(assert (= (and b!3035884 ((_ is Star!9437) (reg!9766 (reg!9766 r!17423)))) b!3036478))

(assert (= (and b!3035884 ((_ is Union!9437) (reg!9766 (reg!9766 r!17423)))) b!3036479))

(declare-fun b!3036482 () Bool)

(declare-fun e!1904006 () Bool)

(declare-fun tp!961567 () Bool)

(assert (=> b!3036482 (= e!1904006 tp!961567)))

(declare-fun b!3036481 () Bool)

(declare-fun tp!961565 () Bool)

(declare-fun tp!961563 () Bool)

(assert (=> b!3036481 (= e!1904006 (and tp!961565 tp!961563))))

(declare-fun b!3036480 () Bool)

(assert (=> b!3036480 (= e!1904006 tp_is_empty!16437)))

(declare-fun b!3036483 () Bool)

(declare-fun tp!961564 () Bool)

(declare-fun tp!961566 () Bool)

(assert (=> b!3036483 (= e!1904006 (and tp!961564 tp!961566))))

(assert (=> b!3035879 (= tp!961490 e!1904006)))

(assert (= (and b!3035879 ((_ is ElementMatch!9437) (regOne!19386 (regTwo!19386 r!17423)))) b!3036480))

(assert (= (and b!3035879 ((_ is Concat!14758) (regOne!19386 (regTwo!19386 r!17423)))) b!3036481))

(assert (= (and b!3035879 ((_ is Star!9437) (regOne!19386 (regTwo!19386 r!17423)))) b!3036482))

(assert (= (and b!3035879 ((_ is Union!9437) (regOne!19386 (regTwo!19386 r!17423)))) b!3036483))

(declare-fun b!3036486 () Bool)

(declare-fun e!1904007 () Bool)

(declare-fun tp!961572 () Bool)

(assert (=> b!3036486 (= e!1904007 tp!961572)))

(declare-fun b!3036485 () Bool)

(declare-fun tp!961570 () Bool)

(declare-fun tp!961568 () Bool)

(assert (=> b!3036485 (= e!1904007 (and tp!961570 tp!961568))))

(declare-fun b!3036484 () Bool)

(assert (=> b!3036484 (= e!1904007 tp_is_empty!16437)))

(declare-fun b!3036487 () Bool)

(declare-fun tp!961569 () Bool)

(declare-fun tp!961571 () Bool)

(assert (=> b!3036487 (= e!1904007 (and tp!961569 tp!961571))))

(assert (=> b!3035879 (= tp!961488 e!1904007)))

(assert (= (and b!3035879 ((_ is ElementMatch!9437) (regTwo!19386 (regTwo!19386 r!17423)))) b!3036484))

(assert (= (and b!3035879 ((_ is Concat!14758) (regTwo!19386 (regTwo!19386 r!17423)))) b!3036485))

(assert (= (and b!3035879 ((_ is Star!9437) (regTwo!19386 (regTwo!19386 r!17423)))) b!3036486))

(assert (= (and b!3035879 ((_ is Union!9437) (regTwo!19386 (regTwo!19386 r!17423)))) b!3036487))

(declare-fun b!3036488 () Bool)

(declare-fun e!1904008 () Bool)

(declare-fun tp!961573 () Bool)

(assert (=> b!3036488 (= e!1904008 (and tp_is_empty!16437 tp!961573))))

(assert (=> b!3035855 (= tp!961462 e!1904008)))

(assert (= (and b!3035855 ((_ is Cons!35178) (t!234367 (t!234367 s!11993)))) b!3036488))

(declare-fun b!3036491 () Bool)

(declare-fun e!1904009 () Bool)

(declare-fun tp!961578 () Bool)

(assert (=> b!3036491 (= e!1904009 tp!961578)))

(declare-fun b!3036490 () Bool)

(declare-fun tp!961576 () Bool)

(declare-fun tp!961574 () Bool)

(assert (=> b!3036490 (= e!1904009 (and tp!961576 tp!961574))))

(declare-fun b!3036489 () Bool)

(assert (=> b!3036489 (= e!1904009 tp_is_empty!16437)))

(declare-fun b!3036492 () Bool)

(declare-fun tp!961575 () Bool)

(declare-fun tp!961577 () Bool)

(assert (=> b!3036492 (= e!1904009 (and tp!961575 tp!961577))))

(assert (=> b!3035869 (= tp!961474 e!1904009)))

(assert (= (and b!3035869 ((_ is ElementMatch!9437) (regOne!19387 (regOne!19387 r!17423)))) b!3036489))

(assert (= (and b!3035869 ((_ is Concat!14758) (regOne!19387 (regOne!19387 r!17423)))) b!3036490))

(assert (= (and b!3035869 ((_ is Star!9437) (regOne!19387 (regOne!19387 r!17423)))) b!3036491))

(assert (= (and b!3035869 ((_ is Union!9437) (regOne!19387 (regOne!19387 r!17423)))) b!3036492))

(declare-fun b!3036495 () Bool)

(declare-fun e!1904010 () Bool)

(declare-fun tp!961583 () Bool)

(assert (=> b!3036495 (= e!1904010 tp!961583)))

(declare-fun b!3036494 () Bool)

(declare-fun tp!961581 () Bool)

(declare-fun tp!961579 () Bool)

(assert (=> b!3036494 (= e!1904010 (and tp!961581 tp!961579))))

(declare-fun b!3036493 () Bool)

(assert (=> b!3036493 (= e!1904010 tp_is_empty!16437)))

(declare-fun b!3036496 () Bool)

(declare-fun tp!961580 () Bool)

(declare-fun tp!961582 () Bool)

(assert (=> b!3036496 (= e!1904010 (and tp!961580 tp!961582))))

(assert (=> b!3035869 (= tp!961476 e!1904010)))

(assert (= (and b!3035869 ((_ is ElementMatch!9437) (regTwo!19387 (regOne!19387 r!17423)))) b!3036493))

(assert (= (and b!3035869 ((_ is Concat!14758) (regTwo!19387 (regOne!19387 r!17423)))) b!3036494))

(assert (= (and b!3035869 ((_ is Star!9437) (regTwo!19387 (regOne!19387 r!17423)))) b!3036495))

(assert (= (and b!3035869 ((_ is Union!9437) (regTwo!19387 (regOne!19387 r!17423)))) b!3036496))

(declare-fun b!3036499 () Bool)

(declare-fun e!1904011 () Bool)

(declare-fun tp!961588 () Bool)

(assert (=> b!3036499 (= e!1904011 tp!961588)))

(declare-fun b!3036498 () Bool)

(declare-fun tp!961586 () Bool)

(declare-fun tp!961584 () Bool)

(assert (=> b!3036498 (= e!1904011 (and tp!961586 tp!961584))))

(declare-fun b!3036497 () Bool)

(assert (=> b!3036497 (= e!1904011 tp_is_empty!16437)))

(declare-fun b!3036500 () Bool)

(declare-fun tp!961585 () Bool)

(declare-fun tp!961587 () Bool)

(assert (=> b!3036500 (= e!1904011 (and tp!961585 tp!961587))))

(assert (=> b!3035873 (= tp!961479 e!1904011)))

(assert (= (and b!3035873 ((_ is ElementMatch!9437) (regOne!19387 (regTwo!19387 r!17423)))) b!3036497))

(assert (= (and b!3035873 ((_ is Concat!14758) (regOne!19387 (regTwo!19387 r!17423)))) b!3036498))

(assert (= (and b!3035873 ((_ is Star!9437) (regOne!19387 (regTwo!19387 r!17423)))) b!3036499))

(assert (= (and b!3035873 ((_ is Union!9437) (regOne!19387 (regTwo!19387 r!17423)))) b!3036500))

(declare-fun b!3036503 () Bool)

(declare-fun e!1904012 () Bool)

(declare-fun tp!961593 () Bool)

(assert (=> b!3036503 (= e!1904012 tp!961593)))

(declare-fun b!3036502 () Bool)

(declare-fun tp!961591 () Bool)

(declare-fun tp!961589 () Bool)

(assert (=> b!3036502 (= e!1904012 (and tp!961591 tp!961589))))

(declare-fun b!3036501 () Bool)

(assert (=> b!3036501 (= e!1904012 tp_is_empty!16437)))

(declare-fun b!3036504 () Bool)

(declare-fun tp!961590 () Bool)

(declare-fun tp!961592 () Bool)

(assert (=> b!3036504 (= e!1904012 (and tp!961590 tp!961592))))

(assert (=> b!3035873 (= tp!961481 e!1904012)))

(assert (= (and b!3035873 ((_ is ElementMatch!9437) (regTwo!19387 (regTwo!19387 r!17423)))) b!3036501))

(assert (= (and b!3035873 ((_ is Concat!14758) (regTwo!19387 (regTwo!19387 r!17423)))) b!3036502))

(assert (= (and b!3035873 ((_ is Star!9437) (regTwo!19387 (regTwo!19387 r!17423)))) b!3036503))

(assert (= (and b!3035873 ((_ is Union!9437) (regTwo!19387 (regTwo!19387 r!17423)))) b!3036504))

(declare-fun b!3036507 () Bool)

(declare-fun e!1904013 () Bool)

(declare-fun tp!961598 () Bool)

(assert (=> b!3036507 (= e!1904013 tp!961598)))

(declare-fun b!3036506 () Bool)

(declare-fun tp!961596 () Bool)

(declare-fun tp!961594 () Bool)

(assert (=> b!3036506 (= e!1904013 (and tp!961596 tp!961594))))

(declare-fun b!3036505 () Bool)

(assert (=> b!3036505 (= e!1904013 tp_is_empty!16437)))

(declare-fun b!3036508 () Bool)

(declare-fun tp!961595 () Bool)

(declare-fun tp!961597 () Bool)

(assert (=> b!3036508 (= e!1904013 (and tp!961595 tp!961597))))

(assert (=> b!3035868 (= tp!961477 e!1904013)))

(assert (= (and b!3035868 ((_ is ElementMatch!9437) (reg!9766 (regOne!19387 r!17423)))) b!3036505))

(assert (= (and b!3035868 ((_ is Concat!14758) (reg!9766 (regOne!19387 r!17423)))) b!3036506))

(assert (= (and b!3035868 ((_ is Star!9437) (reg!9766 (regOne!19387 r!17423)))) b!3036507))

(assert (= (and b!3035868 ((_ is Union!9437) (reg!9766 (regOne!19387 r!17423)))) b!3036508))

(declare-fun b!3036511 () Bool)

(declare-fun e!1904014 () Bool)

(declare-fun tp!961603 () Bool)

(assert (=> b!3036511 (= e!1904014 tp!961603)))

(declare-fun b!3036510 () Bool)

(declare-fun tp!961601 () Bool)

(declare-fun tp!961599 () Bool)

(assert (=> b!3036510 (= e!1904014 (and tp!961601 tp!961599))))

(declare-fun b!3036509 () Bool)

(assert (=> b!3036509 (= e!1904014 tp_is_empty!16437)))

(declare-fun b!3036512 () Bool)

(declare-fun tp!961600 () Bool)

(declare-fun tp!961602 () Bool)

(assert (=> b!3036512 (= e!1904014 (and tp!961600 tp!961602))))

(assert (=> b!3035877 (= tp!961484 e!1904014)))

(assert (= (and b!3035877 ((_ is ElementMatch!9437) (regOne!19387 (regOne!19386 r!17423)))) b!3036509))

(assert (= (and b!3035877 ((_ is Concat!14758) (regOne!19387 (regOne!19386 r!17423)))) b!3036510))

(assert (= (and b!3035877 ((_ is Star!9437) (regOne!19387 (regOne!19386 r!17423)))) b!3036511))

(assert (= (and b!3035877 ((_ is Union!9437) (regOne!19387 (regOne!19386 r!17423)))) b!3036512))

(declare-fun b!3036515 () Bool)

(declare-fun e!1904015 () Bool)

(declare-fun tp!961608 () Bool)

(assert (=> b!3036515 (= e!1904015 tp!961608)))

(declare-fun b!3036514 () Bool)

(declare-fun tp!961606 () Bool)

(declare-fun tp!961604 () Bool)

(assert (=> b!3036514 (= e!1904015 (and tp!961606 tp!961604))))

(declare-fun b!3036513 () Bool)

(assert (=> b!3036513 (= e!1904015 tp_is_empty!16437)))

(declare-fun b!3036516 () Bool)

(declare-fun tp!961605 () Bool)

(declare-fun tp!961607 () Bool)

(assert (=> b!3036516 (= e!1904015 (and tp!961605 tp!961607))))

(assert (=> b!3035877 (= tp!961486 e!1904015)))

(assert (= (and b!3035877 ((_ is ElementMatch!9437) (regTwo!19387 (regOne!19386 r!17423)))) b!3036513))

(assert (= (and b!3035877 ((_ is Concat!14758) (regTwo!19387 (regOne!19386 r!17423)))) b!3036514))

(assert (= (and b!3035877 ((_ is Star!9437) (regTwo!19387 (regOne!19386 r!17423)))) b!3036515))

(assert (= (and b!3035877 ((_ is Union!9437) (regTwo!19387 (regOne!19386 r!17423)))) b!3036516))

(declare-fun b!3036519 () Bool)

(declare-fun e!1904016 () Bool)

(declare-fun tp!961613 () Bool)

(assert (=> b!3036519 (= e!1904016 tp!961613)))

(declare-fun b!3036518 () Bool)

(declare-fun tp!961611 () Bool)

(declare-fun tp!961609 () Bool)

(assert (=> b!3036518 (= e!1904016 (and tp!961611 tp!961609))))

(declare-fun b!3036517 () Bool)

(assert (=> b!3036517 (= e!1904016 tp_is_empty!16437)))

(declare-fun b!3036520 () Bool)

(declare-fun tp!961610 () Bool)

(declare-fun tp!961612 () Bool)

(assert (=> b!3036520 (= e!1904016 (and tp!961610 tp!961612))))

(assert (=> b!3035872 (= tp!961482 e!1904016)))

(assert (= (and b!3035872 ((_ is ElementMatch!9437) (reg!9766 (regTwo!19387 r!17423)))) b!3036517))

(assert (= (and b!3035872 ((_ is Concat!14758) (reg!9766 (regTwo!19387 r!17423)))) b!3036518))

(assert (= (and b!3035872 ((_ is Star!9437) (reg!9766 (regTwo!19387 r!17423)))) b!3036519))

(assert (= (and b!3035872 ((_ is Union!9437) (reg!9766 (regTwo!19387 r!17423)))) b!3036520))

(declare-fun b!3036523 () Bool)

(declare-fun e!1904017 () Bool)

(declare-fun tp!961618 () Bool)

(assert (=> b!3036523 (= e!1904017 tp!961618)))

(declare-fun b!3036522 () Bool)

(declare-fun tp!961616 () Bool)

(declare-fun tp!961614 () Bool)

(assert (=> b!3036522 (= e!1904017 (and tp!961616 tp!961614))))

(declare-fun b!3036521 () Bool)

(assert (=> b!3036521 (= e!1904017 tp_is_empty!16437)))

(declare-fun b!3036524 () Bool)

(declare-fun tp!961615 () Bool)

(declare-fun tp!961617 () Bool)

(assert (=> b!3036524 (= e!1904017 (and tp!961615 tp!961617))))

(assert (=> b!3035883 (= tp!961495 e!1904017)))

(assert (= (and b!3035883 ((_ is ElementMatch!9437) (regOne!19386 (reg!9766 r!17423)))) b!3036521))

(assert (= (and b!3035883 ((_ is Concat!14758) (regOne!19386 (reg!9766 r!17423)))) b!3036522))

(assert (= (and b!3035883 ((_ is Star!9437) (regOne!19386 (reg!9766 r!17423)))) b!3036523))

(assert (= (and b!3035883 ((_ is Union!9437) (regOne!19386 (reg!9766 r!17423)))) b!3036524))

(declare-fun b!3036527 () Bool)

(declare-fun e!1904018 () Bool)

(declare-fun tp!961623 () Bool)

(assert (=> b!3036527 (= e!1904018 tp!961623)))

(declare-fun b!3036526 () Bool)

(declare-fun tp!961621 () Bool)

(declare-fun tp!961619 () Bool)

(assert (=> b!3036526 (= e!1904018 (and tp!961621 tp!961619))))

(declare-fun b!3036525 () Bool)

(assert (=> b!3036525 (= e!1904018 tp_is_empty!16437)))

(declare-fun b!3036528 () Bool)

(declare-fun tp!961620 () Bool)

(declare-fun tp!961622 () Bool)

(assert (=> b!3036528 (= e!1904018 (and tp!961620 tp!961622))))

(assert (=> b!3035883 (= tp!961493 e!1904018)))

(assert (= (and b!3035883 ((_ is ElementMatch!9437) (regTwo!19386 (reg!9766 r!17423)))) b!3036525))

(assert (= (and b!3035883 ((_ is Concat!14758) (regTwo!19386 (reg!9766 r!17423)))) b!3036526))

(assert (= (and b!3035883 ((_ is Star!9437) (regTwo!19386 (reg!9766 r!17423)))) b!3036527))

(assert (= (and b!3035883 ((_ is Union!9437) (regTwo!19386 (reg!9766 r!17423)))) b!3036528))

(check-sat (not b!3035930) (not bm!207255) (not b!3036183) (not bm!207327) (not b!3036213) (not d!851690) (not b!3036113) (not b!3036116) (not b!3036121) (not bm!207349) (not b!3036167) (not b!3036317) (not d!851706) (not d!851676) (not b!3036048) (not d!851724) (not d!851728) (not bm!207357) (not bm!207285) (not b!3036463) (not b!3036519) (not b!3036443) (not b!3036520) (not bm!207375) (not b!3036221) (not b!3036271) (not b!3036043) (not bm!207296) (not b!3036502) (not d!851756) (not bm!207325) (not b!3036461) (not b!3036466) (not d!851682) (not b!3036232) (not bm!207354) (not bm!207355) (not bm!207282) (not b!3036455) (not b!3036215) (not bm!207274) (not b!3036017) (not b!3036256) (not b!3036486) (not b!3036278) (not d!851794) (not b!3036488) (not b!3036527) (not b!3036447) (not b!3036273) (not b!3036348) (not b!3036470) (not b!3036439) (not bm!207248) (not b!3035948) (not bm!207324) (not d!851768) (not d!851770) (not bm!207316) (not b!3036514) (not b!3036504) (not b!3036467) (not bm!207329) (not b!3036507) (not b!3036134) (not bm!207308) (not bm!207360) (not d!851694) (not b!3036496) (not b!3036494) (not bm!207330) (not b!3036503) (not bm!207279) (not bm!207351) (not b!3036201) (not b!3036092) (not b!3036144) (not d!851746) (not bm!207319) (not b!3036449) tp_is_empty!16437 (not bm!207362) (not b!3036417) (not b!3036274) (not d!851774) (not b!3036032) (not bm!207300) (not b!3036516) (not b!3036490) (not d!851702) (not d!851800) (not b!3036431) (not b!3036259) (not b!3036479) (not b!3036429) (not b!3036528) (not bm!207332) (not b!3036336) (not b!3035912) (not b!3036110) (not d!851788) (not bm!207281) (not b!3036459) (not b!3036329) (not b!3036469) (not b!3036445) (not d!851660) (not b!3036037) (not b!3036331) (not b!3036140) (not b!3036198) (not bm!207311) (not b!3036101) (not b!3036453) (not b!3036430) (not b!3036457) (not bm!207378) (not b!3036337) (not b!3036441) (not bm!207276) (not bm!207256) (not bm!207253) (not bm!207290) (not b!3036031) (not bm!207342) (not bm!207341) (not b!3036326) (not bm!207314) (not b!3036508) (not bm!207258) (not b!3036053) (not bm!207356) (not b!3036454) (not b!3036041) (not b!3036473) (not bm!207381) (not bm!207286) (not bm!207304) (not b!3036451) (not b!3036478) (not bm!207344) (not b!3036290) (not d!851764) (not bm!207321) (not b!3035954) (not b!3036137) (not bm!207306) (not b!3036115) (not b!3036450) (not bm!207377) (not b!3036438) (not bm!207347) (not b!3036498) (not b!3036522) (not d!851704) (not d!851672) (not bm!207313) (not b!3036491) (not b!3036332) (not bm!207259) (not b!3036279) (not bm!207288) (not b!3036458) (not bm!207317) (not bm!207246) (not b!3036526) (not b!3036036) (not b!3036046) (not d!851696) (not b!3035958) (not b!3036026) (not b!3036210) (not b!3036474) (not bm!207249) (not b!3036299) (not b!3036065) (not b!3035959) (not b!3036465) (not b!3035909) (not b!3036512) (not b!3036433) (not bm!207295) (not b!3036139) (not b!3036483) (not d!851692) (not b!3036241) (not b!3036350) (not bm!207250) (not b!3036495) (not d!851698) (not bm!207380) (not b!3036014) (not d!851734) (not bm!207353) (not b!3035939) (not d!851716) (not d!851792) (not bm!207280) (not b!3036462) (not b!3036074) (not d!851738) (not bm!207278) (not bm!207301) (not b!3036492) (not b!3036515) (not b!3036524) (not bm!207261) (not b!3035953) (not bm!207309) (not b!3036145) (not d!851686) (not b!3036268) (not b!3036442) (not b!3036392) (not b!3036499) (not d!851742) (not bm!207292) (not b!3036485) (not b!3036482) (not d!851780) (not b!3036049) (not b!3036500) (not bm!207284) (not bm!207252) (not b!3036132) (not bm!207338) (not bm!207359) (not b!3036481) (not b!3036054) (not b!3036384) (not bm!207272) (not b!3036477) (not b!3036435) (not b!3035999) (not b!3036314) (not b!3036120) (not bm!207334) (not bm!207247) (not bm!207323) (not bm!207365) (not b!3036089) (not d!851684) (not b!3036216) (not d!851720) (not bm!207326) (not bm!207364) (not b!3035894) (not b!3036437) (not b!3036487) (not b!3036511) (not d!851700) (not d!851758) (not b!3036156) (not b!3036446) (not bm!207303) (not d!851754) (not d!851744) (not b!3036510) (not b!3036523) (not d!851798) (not b!3036399) (not d!851748) (not bm!207374) (not b!3036434) (not b!3035921) (not b!3036424) (not d!851718) (not bm!207339) (not d!851722) (not bm!207244) (not bm!207340) (not bm!207336) (not bm!207298) (not bm!207270) (not b!3036475) (not b!3036158) (not b!3036471) (not b!3036029) (not bm!207345) (not b!3035951) (not bm!207242) (not b!3036506) (not b!3035990) (not b!3036518) (not bm!207294) (not b!3036220) (not bm!207297))
(check-sat)
