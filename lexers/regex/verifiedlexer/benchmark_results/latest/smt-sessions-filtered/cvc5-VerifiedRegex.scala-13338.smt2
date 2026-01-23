; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!723940 () Bool)

(assert start!723940)

(declare-fun b!7462619 () Bool)

(assert (=> b!7462619 true))

(assert (=> b!7462619 true))

(assert (=> b!7462619 true))

(declare-fun lambda!461747 () Int)

(declare-fun lambda!461746 () Int)

(assert (=> b!7462619 (not (= lambda!461747 lambda!461746))))

(assert (=> b!7462619 true))

(assert (=> b!7462619 true))

(assert (=> b!7462619 true))

(declare-fun b!7462612 () Bool)

(declare-fun e!4453379 () Bool)

(declare-fun tp!2163081 () Bool)

(declare-fun tp!2163071 () Bool)

(assert (=> b!7462612 (= e!4453379 (and tp!2163081 tp!2163071))))

(declare-fun b!7462613 () Bool)

(declare-fun res!2993407 () Bool)

(declare-fun e!4453386 () Bool)

(assert (=> b!7462613 (=> (not res!2993407) (not e!4453386))))

(declare-datatypes ((C!39350 0))(
  ( (C!39351 (val!30073 Int)) )
))
(declare-datatypes ((Regex!19538 0))(
  ( (ElementMatch!19538 (c!1379485 C!39350)) (Concat!28383 (regOne!39588 Regex!19538) (regTwo!39588 Regex!19538)) (EmptyExpr!19538) (Star!19538 (reg!19867 Regex!19538)) (EmptyLang!19538) (Union!19538 (regOne!39589 Regex!19538) (regTwo!39589 Regex!19538)) )
))
(declare-fun rTail!78 () Regex!19538)

(declare-fun validRegex!10052 (Regex!19538) Bool)

(assert (=> b!7462613 (= res!2993407 (validRegex!10052 rTail!78))))

(declare-fun b!7462614 () Bool)

(declare-fun e!4453385 () Bool)

(declare-fun tp_is_empty!49365 () Bool)

(declare-fun tp!2163073 () Bool)

(assert (=> b!7462614 (= e!4453385 (and tp_is_empty!49365 tp!2163073))))

(declare-fun b!7462615 () Bool)

(declare-fun tp!2163069 () Bool)

(declare-fun tp!2163078 () Bool)

(assert (=> b!7462615 (= e!4453379 (and tp!2163069 tp!2163078))))

(declare-fun b!7462616 () Bool)

(declare-fun e!4453380 () Bool)

(assert (=> b!7462616 (= e!4453386 (not e!4453380))))

(declare-fun res!2993408 () Bool)

(assert (=> b!7462616 (=> res!2993408 e!4453380)))

(declare-fun lt!2622905 () Bool)

(assert (=> b!7462616 (= res!2993408 lt!2622905)))

(declare-fun lt!2622899 () Bool)

(declare-fun lt!2622896 () Regex!19538)

(declare-datatypes ((List!72254 0))(
  ( (Nil!72130) (Cons!72130 (h!78578 C!39350) (t!386823 List!72254)) )
))
(declare-fun s!13591 () List!72254)

(declare-fun matchRSpec!4217 (Regex!19538 List!72254) Bool)

(assert (=> b!7462616 (= lt!2622899 (matchRSpec!4217 lt!2622896 s!13591))))

(declare-fun matchR!9302 (Regex!19538 List!72254) Bool)

(assert (=> b!7462616 (= lt!2622899 (matchR!9302 lt!2622896 s!13591))))

(declare-datatypes ((Unit!165911 0))(
  ( (Unit!165912) )
))
(declare-fun lt!2622898 () Unit!165911)

(declare-fun mainMatchTheorem!4211 (Regex!19538 List!72254) Unit!165911)

(assert (=> b!7462616 (= lt!2622898 (mainMatchTheorem!4211 lt!2622896 s!13591))))

(declare-fun lt!2622892 () Regex!19538)

(assert (=> b!7462616 (= lt!2622905 (matchRSpec!4217 lt!2622892 s!13591))))

(assert (=> b!7462616 (= lt!2622905 (matchR!9302 lt!2622892 s!13591))))

(declare-fun lt!2622901 () Unit!165911)

(assert (=> b!7462616 (= lt!2622901 (mainMatchTheorem!4211 lt!2622892 s!13591))))

(declare-fun lt!2622895 () Regex!19538)

(declare-fun lt!2622894 () Regex!19538)

(assert (=> b!7462616 (= lt!2622896 (Union!19538 lt!2622895 lt!2622894))))

(declare-fun r2!5783 () Regex!19538)

(assert (=> b!7462616 (= lt!2622894 (Concat!28383 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19538)

(assert (=> b!7462616 (= lt!2622895 (Concat!28383 r1!5845 rTail!78))))

(declare-fun lt!2622903 () Regex!19538)

(assert (=> b!7462616 (= lt!2622892 (Concat!28383 lt!2622903 rTail!78))))

(assert (=> b!7462616 (= lt!2622903 (Union!19538 r1!5845 r2!5783))))

(declare-fun res!2993410 () Bool)

(assert (=> start!723940 (=> (not res!2993410) (not e!4453386))))

(assert (=> start!723940 (= res!2993410 (validRegex!10052 r1!5845))))

(assert (=> start!723940 e!4453386))

(assert (=> start!723940 e!4453379))

(declare-fun e!4453383 () Bool)

(assert (=> start!723940 e!4453383))

(declare-fun e!4453384 () Bool)

(assert (=> start!723940 e!4453384))

(assert (=> start!723940 e!4453385))

(declare-fun b!7462617 () Bool)

(assert (=> b!7462617 (= e!4453384 tp_is_empty!49365)))

(declare-fun b!7462618 () Bool)

(declare-fun tp!2163079 () Bool)

(declare-fun tp!2163077 () Bool)

(assert (=> b!7462618 (= e!4453384 (and tp!2163079 tp!2163077))))

(declare-fun e!4453381 () Bool)

(assert (=> b!7462619 (= e!4453380 e!4453381)))

(declare-fun res!2993409 () Bool)

(assert (=> b!7462619 (=> res!2993409 e!4453381)))

(declare-fun lt!2622893 () Bool)

(assert (=> b!7462619 (= res!2993409 (or lt!2622893 (not lt!2622899)))))

(declare-fun Exists!4157 (Int) Bool)

(assert (=> b!7462619 (= (Exists!4157 lambda!461746) (Exists!4157 lambda!461747))))

(declare-fun lt!2622897 () Unit!165911)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2491 (Regex!19538 Regex!19538 List!72254) Unit!165911)

(assert (=> b!7462619 (= lt!2622897 (lemmaExistCutMatchRandMatchRSpecEquivalent!2491 lt!2622903 rTail!78 s!13591))))

(assert (=> b!7462619 (= lt!2622893 (Exists!4157 lambda!461746))))

(declare-datatypes ((tuple2!68526 0))(
  ( (tuple2!68527 (_1!37566 List!72254) (_2!37566 List!72254)) )
))
(declare-datatypes ((Option!17095 0))(
  ( (None!17094) (Some!17094 (v!54223 tuple2!68526)) )
))
(declare-fun isDefined!13784 (Option!17095) Bool)

(declare-fun findConcatSeparation!3217 (Regex!19538 Regex!19538 List!72254 List!72254 List!72254) Option!17095)

(assert (=> b!7462619 (= lt!2622893 (isDefined!13784 (findConcatSeparation!3217 lt!2622903 rTail!78 Nil!72130 s!13591 s!13591)))))

(declare-fun lt!2622906 () Unit!165911)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2975 (Regex!19538 Regex!19538 List!72254) Unit!165911)

(assert (=> b!7462619 (= lt!2622906 (lemmaFindConcatSeparationEquivalentToExists!2975 lt!2622903 rTail!78 s!13591))))

(declare-fun b!7462620 () Bool)

(declare-fun tp!2163080 () Bool)

(assert (=> b!7462620 (= e!4453384 tp!2163080)))

(declare-fun b!7462621 () Bool)

(declare-fun tp!2163082 () Bool)

(declare-fun tp!2163075 () Bool)

(assert (=> b!7462621 (= e!4453383 (and tp!2163082 tp!2163075))))

(declare-fun b!7462622 () Bool)

(declare-fun tp!2163068 () Bool)

(assert (=> b!7462622 (= e!4453383 tp!2163068)))

(declare-fun b!7462623 () Bool)

(declare-fun tp!2163072 () Bool)

(assert (=> b!7462623 (= e!4453379 tp!2163072)))

(declare-fun b!7462624 () Bool)

(declare-fun tp!2163070 () Bool)

(declare-fun tp!2163076 () Bool)

(assert (=> b!7462624 (= e!4453384 (and tp!2163070 tp!2163076))))

(declare-fun b!7462625 () Bool)

(assert (=> b!7462625 (= e!4453383 tp_is_empty!49365)))

(declare-fun b!7462626 () Bool)

(declare-fun e!4453382 () Bool)

(assert (=> b!7462626 (= e!4453382 (validRegex!10052 lt!2622894))))

(declare-fun b!7462627 () Bool)

(declare-fun res!2993405 () Bool)

(assert (=> b!7462627 (=> (not res!2993405) (not e!4453386))))

(assert (=> b!7462627 (= res!2993405 (validRegex!10052 r2!5783))))

(declare-fun b!7462628 () Bool)

(assert (=> b!7462628 (= e!4453381 e!4453382)))

(declare-fun res!2993406 () Bool)

(assert (=> b!7462628 (=> res!2993406 e!4453382)))

(declare-fun lt!2622904 () Bool)

(assert (=> b!7462628 (= res!2993406 lt!2622904)))

(assert (=> b!7462628 (= (matchR!9302 lt!2622894 s!13591) (matchRSpec!4217 lt!2622894 s!13591))))

(declare-fun lt!2622900 () Unit!165911)

(assert (=> b!7462628 (= lt!2622900 (mainMatchTheorem!4211 lt!2622894 s!13591))))

(assert (=> b!7462628 (= lt!2622904 (matchRSpec!4217 lt!2622895 s!13591))))

(assert (=> b!7462628 (= lt!2622904 (matchR!9302 lt!2622895 s!13591))))

(declare-fun lt!2622902 () Unit!165911)

(assert (=> b!7462628 (= lt!2622902 (mainMatchTheorem!4211 lt!2622895 s!13591))))

(declare-fun b!7462629 () Bool)

(assert (=> b!7462629 (= e!4453379 tp_is_empty!49365)))

(declare-fun b!7462630 () Bool)

(declare-fun tp!2163074 () Bool)

(declare-fun tp!2163083 () Bool)

(assert (=> b!7462630 (= e!4453383 (and tp!2163074 tp!2163083))))

(assert (= (and start!723940 res!2993410) b!7462627))

(assert (= (and b!7462627 res!2993405) b!7462613))

(assert (= (and b!7462613 res!2993407) b!7462616))

(assert (= (and b!7462616 (not res!2993408)) b!7462619))

(assert (= (and b!7462619 (not res!2993409)) b!7462628))

(assert (= (and b!7462628 (not res!2993406)) b!7462626))

(assert (= (and start!723940 (is-ElementMatch!19538 r1!5845)) b!7462629))

(assert (= (and start!723940 (is-Concat!28383 r1!5845)) b!7462612))

(assert (= (and start!723940 (is-Star!19538 r1!5845)) b!7462623))

(assert (= (and start!723940 (is-Union!19538 r1!5845)) b!7462615))

(assert (= (and start!723940 (is-ElementMatch!19538 r2!5783)) b!7462625))

(assert (= (and start!723940 (is-Concat!28383 r2!5783)) b!7462630))

(assert (= (and start!723940 (is-Star!19538 r2!5783)) b!7462622))

(assert (= (and start!723940 (is-Union!19538 r2!5783)) b!7462621))

(assert (= (and start!723940 (is-ElementMatch!19538 rTail!78)) b!7462617))

(assert (= (and start!723940 (is-Concat!28383 rTail!78)) b!7462618))

(assert (= (and start!723940 (is-Star!19538 rTail!78)) b!7462620))

(assert (= (and start!723940 (is-Union!19538 rTail!78)) b!7462624))

(assert (= (and start!723940 (is-Cons!72130 s!13591)) b!7462614))

(declare-fun m!8063100 () Bool)

(assert (=> b!7462627 m!8063100))

(declare-fun m!8063102 () Bool)

(assert (=> b!7462616 m!8063102))

(declare-fun m!8063104 () Bool)

(assert (=> b!7462616 m!8063104))

(declare-fun m!8063106 () Bool)

(assert (=> b!7462616 m!8063106))

(declare-fun m!8063108 () Bool)

(assert (=> b!7462616 m!8063108))

(declare-fun m!8063110 () Bool)

(assert (=> b!7462616 m!8063110))

(declare-fun m!8063112 () Bool)

(assert (=> b!7462616 m!8063112))

(declare-fun m!8063114 () Bool)

(assert (=> b!7462619 m!8063114))

(declare-fun m!8063116 () Bool)

(assert (=> b!7462619 m!8063116))

(declare-fun m!8063118 () Bool)

(assert (=> b!7462619 m!8063118))

(declare-fun m!8063120 () Bool)

(assert (=> b!7462619 m!8063120))

(declare-fun m!8063122 () Bool)

(assert (=> b!7462619 m!8063122))

(declare-fun m!8063124 () Bool)

(assert (=> b!7462619 m!8063124))

(assert (=> b!7462619 m!8063118))

(assert (=> b!7462619 m!8063120))

(declare-fun m!8063126 () Bool)

(assert (=> start!723940 m!8063126))

(declare-fun m!8063128 () Bool)

(assert (=> b!7462613 m!8063128))

(declare-fun m!8063130 () Bool)

(assert (=> b!7462626 m!8063130))

(declare-fun m!8063132 () Bool)

(assert (=> b!7462628 m!8063132))

(declare-fun m!8063134 () Bool)

(assert (=> b!7462628 m!8063134))

(declare-fun m!8063136 () Bool)

(assert (=> b!7462628 m!8063136))

(declare-fun m!8063138 () Bool)

(assert (=> b!7462628 m!8063138))

(declare-fun m!8063140 () Bool)

(assert (=> b!7462628 m!8063140))

(declare-fun m!8063142 () Bool)

(assert (=> b!7462628 m!8063142))

(push 1)

(assert (not b!7462618))

(assert (not b!7462612))

(assert (not b!7462622))

(assert (not b!7462623))

(assert (not b!7462628))

(assert (not b!7462613))

(assert (not b!7462621))

(assert (not start!723940))

(assert (not b!7462630))

(assert (not b!7462627))

(assert tp_is_empty!49365)

(assert (not b!7462615))

(assert (not b!7462624))

(assert (not b!7462620))

(assert (not b!7462616))

(assert (not b!7462626))

(assert (not b!7462614))

(assert (not b!7462619))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1929594 () Bool)

(declare-fun d!2298239 () Bool)

(assert (= bs!1929594 (and d!2298239 b!7462619)))

(declare-fun lambda!461758 () Int)

(assert (=> bs!1929594 (= lambda!461758 lambda!461746)))

(assert (=> bs!1929594 (not (= lambda!461758 lambda!461747))))

(assert (=> d!2298239 true))

(assert (=> d!2298239 true))

(assert (=> d!2298239 true))

(assert (=> d!2298239 (= (isDefined!13784 (findConcatSeparation!3217 lt!2622903 rTail!78 Nil!72130 s!13591 s!13591)) (Exists!4157 lambda!461758))))

(declare-fun lt!2622954 () Unit!165911)

(declare-fun choose!57690 (Regex!19538 Regex!19538 List!72254) Unit!165911)

(assert (=> d!2298239 (= lt!2622954 (choose!57690 lt!2622903 rTail!78 s!13591))))

(assert (=> d!2298239 (validRegex!10052 lt!2622903)))

(assert (=> d!2298239 (= (lemmaFindConcatSeparationEquivalentToExists!2975 lt!2622903 rTail!78 s!13591) lt!2622954)))

(declare-fun bs!1929595 () Bool)

(assert (= bs!1929595 d!2298239))

(assert (=> bs!1929595 m!8063120))

(assert (=> bs!1929595 m!8063122))

(assert (=> bs!1929595 m!8063120))

(declare-fun m!8063188 () Bool)

(assert (=> bs!1929595 m!8063188))

(declare-fun m!8063190 () Bool)

(assert (=> bs!1929595 m!8063190))

(declare-fun m!8063192 () Bool)

(assert (=> bs!1929595 m!8063192))

(assert (=> b!7462619 d!2298239))

(declare-fun b!7462730 () Bool)

(declare-fun e!4453433 () Bool)

(declare-fun lt!2622963 () Option!17095)

(assert (=> b!7462730 (= e!4453433 (not (isDefined!13784 lt!2622963)))))

(declare-fun b!7462731 () Bool)

(declare-fun res!2993457 () Bool)

(declare-fun e!4453430 () Bool)

(assert (=> b!7462731 (=> (not res!2993457) (not e!4453430))))

(declare-fun get!25181 (Option!17095) tuple2!68526)

(assert (=> b!7462731 (= res!2993457 (matchR!9302 rTail!78 (_2!37566 (get!25181 lt!2622963))))))

(declare-fun b!7462732 () Bool)

(declare-fun lt!2622961 () Unit!165911)

(declare-fun lt!2622962 () Unit!165911)

(assert (=> b!7462732 (= lt!2622961 lt!2622962)))

(declare-fun ++!17186 (List!72254 List!72254) List!72254)

(assert (=> b!7462732 (= (++!17186 (++!17186 Nil!72130 (Cons!72130 (h!78578 s!13591) Nil!72130)) (t!386823 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3066 (List!72254 C!39350 List!72254 List!72254) Unit!165911)

(assert (=> b!7462732 (= lt!2622962 (lemmaMoveElementToOtherListKeepsConcatEq!3066 Nil!72130 (h!78578 s!13591) (t!386823 s!13591) s!13591))))

(declare-fun e!4453432 () Option!17095)

(assert (=> b!7462732 (= e!4453432 (findConcatSeparation!3217 lt!2622903 rTail!78 (++!17186 Nil!72130 (Cons!72130 (h!78578 s!13591) Nil!72130)) (t!386823 s!13591) s!13591))))

(declare-fun b!7462733 () Bool)

(declare-fun res!2993459 () Bool)

(assert (=> b!7462733 (=> (not res!2993459) (not e!4453430))))

(assert (=> b!7462733 (= res!2993459 (matchR!9302 lt!2622903 (_1!37566 (get!25181 lt!2622963))))))

(declare-fun b!7462734 () Bool)

(assert (=> b!7462734 (= e!4453430 (= (++!17186 (_1!37566 (get!25181 lt!2622963)) (_2!37566 (get!25181 lt!2622963))) s!13591))))

(declare-fun b!7462735 () Bool)

(declare-fun e!4453431 () Option!17095)

(assert (=> b!7462735 (= e!4453431 (Some!17094 (tuple2!68527 Nil!72130 s!13591)))))

(declare-fun b!7462736 () Bool)

(assert (=> b!7462736 (= e!4453432 None!17094)))

(declare-fun d!2298243 () Bool)

(assert (=> d!2298243 e!4453433))

(declare-fun res!2993456 () Bool)

(assert (=> d!2298243 (=> res!2993456 e!4453433)))

(assert (=> d!2298243 (= res!2993456 e!4453430)))

(declare-fun res!2993455 () Bool)

(assert (=> d!2298243 (=> (not res!2993455) (not e!4453430))))

(assert (=> d!2298243 (= res!2993455 (isDefined!13784 lt!2622963))))

(assert (=> d!2298243 (= lt!2622963 e!4453431)))

(declare-fun c!1379492 () Bool)

(declare-fun e!4453429 () Bool)

(assert (=> d!2298243 (= c!1379492 e!4453429)))

(declare-fun res!2993458 () Bool)

(assert (=> d!2298243 (=> (not res!2993458) (not e!4453429))))

(assert (=> d!2298243 (= res!2993458 (matchR!9302 lt!2622903 Nil!72130))))

(assert (=> d!2298243 (validRegex!10052 lt!2622903)))

(assert (=> d!2298243 (= (findConcatSeparation!3217 lt!2622903 rTail!78 Nil!72130 s!13591 s!13591) lt!2622963)))

(declare-fun b!7462737 () Bool)

(assert (=> b!7462737 (= e!4453431 e!4453432)))

(declare-fun c!1379491 () Bool)

(assert (=> b!7462737 (= c!1379491 (is-Nil!72130 s!13591))))

(declare-fun b!7462738 () Bool)

(assert (=> b!7462738 (= e!4453429 (matchR!9302 rTail!78 s!13591))))

(assert (= (and d!2298243 res!2993458) b!7462738))

(assert (= (and d!2298243 c!1379492) b!7462735))

(assert (= (and d!2298243 (not c!1379492)) b!7462737))

(assert (= (and b!7462737 c!1379491) b!7462736))

(assert (= (and b!7462737 (not c!1379491)) b!7462732))

(assert (= (and d!2298243 res!2993455) b!7462733))

(assert (= (and b!7462733 res!2993459) b!7462731))

(assert (= (and b!7462731 res!2993457) b!7462734))

(assert (= (and d!2298243 (not res!2993456)) b!7462730))

(declare-fun m!8063196 () Bool)

(assert (=> b!7462738 m!8063196))

(declare-fun m!8063198 () Bool)

(assert (=> b!7462734 m!8063198))

(declare-fun m!8063200 () Bool)

(assert (=> b!7462734 m!8063200))

(declare-fun m!8063202 () Bool)

(assert (=> b!7462730 m!8063202))

(assert (=> b!7462731 m!8063198))

(declare-fun m!8063204 () Bool)

(assert (=> b!7462731 m!8063204))

(assert (=> b!7462733 m!8063198))

(declare-fun m!8063206 () Bool)

(assert (=> b!7462733 m!8063206))

(assert (=> d!2298243 m!8063202))

(declare-fun m!8063208 () Bool)

(assert (=> d!2298243 m!8063208))

(assert (=> d!2298243 m!8063192))

(declare-fun m!8063210 () Bool)

(assert (=> b!7462732 m!8063210))

(assert (=> b!7462732 m!8063210))

(declare-fun m!8063212 () Bool)

(assert (=> b!7462732 m!8063212))

(declare-fun m!8063214 () Bool)

(assert (=> b!7462732 m!8063214))

(assert (=> b!7462732 m!8063210))

(declare-fun m!8063216 () Bool)

(assert (=> b!7462732 m!8063216))

(assert (=> b!7462619 d!2298243))

(declare-fun bs!1929597 () Bool)

(declare-fun d!2298247 () Bool)

(assert (= bs!1929597 (and d!2298247 b!7462619)))

(declare-fun lambda!461767 () Int)

(assert (=> bs!1929597 (= lambda!461767 lambda!461746)))

(assert (=> bs!1929597 (not (= lambda!461767 lambda!461747))))

(declare-fun bs!1929598 () Bool)

(assert (= bs!1929598 (and d!2298247 d!2298239)))

(assert (=> bs!1929598 (= lambda!461767 lambda!461758)))

(assert (=> d!2298247 true))

(assert (=> d!2298247 true))

(assert (=> d!2298247 true))

(declare-fun lambda!461768 () Int)

(assert (=> bs!1929597 (not (= lambda!461768 lambda!461746))))

(assert (=> bs!1929597 (= lambda!461768 lambda!461747)))

(assert (=> bs!1929598 (not (= lambda!461768 lambda!461758))))

(declare-fun bs!1929599 () Bool)

(assert (= bs!1929599 d!2298247))

(assert (=> bs!1929599 (not (= lambda!461768 lambda!461767))))

(assert (=> d!2298247 true))

(assert (=> d!2298247 true))

(assert (=> d!2298247 true))

(assert (=> d!2298247 (= (Exists!4157 lambda!461767) (Exists!4157 lambda!461768))))

(declare-fun lt!2622968 () Unit!165911)

(declare-fun choose!57691 (Regex!19538 Regex!19538 List!72254) Unit!165911)

(assert (=> d!2298247 (= lt!2622968 (choose!57691 lt!2622903 rTail!78 s!13591))))

(assert (=> d!2298247 (validRegex!10052 lt!2622903)))

(assert (=> d!2298247 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2491 lt!2622903 rTail!78 s!13591) lt!2622968)))

(declare-fun m!8063218 () Bool)

(assert (=> bs!1929599 m!8063218))

(declare-fun m!8063220 () Bool)

(assert (=> bs!1929599 m!8063220))

(declare-fun m!8063222 () Bool)

(assert (=> bs!1929599 m!8063222))

(assert (=> bs!1929599 m!8063192))

(assert (=> b!7462619 d!2298247))

(declare-fun d!2298249 () Bool)

(declare-fun isEmpty!41143 (Option!17095) Bool)

(assert (=> d!2298249 (= (isDefined!13784 (findConcatSeparation!3217 lt!2622903 rTail!78 Nil!72130 s!13591 s!13591)) (not (isEmpty!41143 (findConcatSeparation!3217 lt!2622903 rTail!78 Nil!72130 s!13591 s!13591))))))

(declare-fun bs!1929600 () Bool)

(assert (= bs!1929600 d!2298249))

(assert (=> bs!1929600 m!8063120))

(declare-fun m!8063224 () Bool)

(assert (=> bs!1929600 m!8063224))

(assert (=> b!7462619 d!2298249))

(declare-fun d!2298251 () Bool)

(declare-fun choose!57692 (Int) Bool)

(assert (=> d!2298251 (= (Exists!4157 lambda!461746) (choose!57692 lambda!461746))))

(declare-fun bs!1929601 () Bool)

(assert (= bs!1929601 d!2298251))

(declare-fun m!8063226 () Bool)

(assert (=> bs!1929601 m!8063226))

(assert (=> b!7462619 d!2298251))

(declare-fun d!2298253 () Bool)

(assert (=> d!2298253 (= (Exists!4157 lambda!461747) (choose!57692 lambda!461747))))

(declare-fun bs!1929602 () Bool)

(assert (= bs!1929602 d!2298253))

(declare-fun m!8063228 () Bool)

(assert (=> bs!1929602 m!8063228))

(assert (=> b!7462619 d!2298253))

(declare-fun bm!685518 () Bool)

(declare-fun call!685523 () Bool)

(declare-fun c!1379497 () Bool)

(assert (=> bm!685518 (= call!685523 (validRegex!10052 (ite c!1379497 (regOne!39589 rTail!78) (regOne!39588 rTail!78))))))

(declare-fun bm!685519 () Bool)

(declare-fun c!1379498 () Bool)

(declare-fun call!685525 () Bool)

(assert (=> bm!685519 (= call!685525 (validRegex!10052 (ite c!1379498 (reg!19867 rTail!78) (ite c!1379497 (regTwo!39589 rTail!78) (regTwo!39588 rTail!78)))))))

(declare-fun bm!685520 () Bool)

(declare-fun call!685524 () Bool)

(assert (=> bm!685520 (= call!685524 call!685525)))

(declare-fun b!7462773 () Bool)

(declare-fun res!2993490 () Bool)

(declare-fun e!4453458 () Bool)

(assert (=> b!7462773 (=> res!2993490 e!4453458)))

(assert (=> b!7462773 (= res!2993490 (not (is-Concat!28383 rTail!78)))))

(declare-fun e!4453457 () Bool)

(assert (=> b!7462773 (= e!4453457 e!4453458)))

(declare-fun b!7462774 () Bool)

(declare-fun e!4453456 () Bool)

(assert (=> b!7462774 (= e!4453458 e!4453456)))

(declare-fun res!2993489 () Bool)

(assert (=> b!7462774 (=> (not res!2993489) (not e!4453456))))

(assert (=> b!7462774 (= res!2993489 call!685523)))

(declare-fun b!7462775 () Bool)

(declare-fun res!2993486 () Bool)

(declare-fun e!4453459 () Bool)

(assert (=> b!7462775 (=> (not res!2993486) (not e!4453459))))

(assert (=> b!7462775 (= res!2993486 call!685523)))

(assert (=> b!7462775 (= e!4453457 e!4453459)))

(declare-fun b!7462776 () Bool)

(assert (=> b!7462776 (= e!4453459 call!685524)))

(declare-fun b!7462778 () Bool)

(declare-fun e!4453461 () Bool)

(declare-fun e!4453462 () Bool)

(assert (=> b!7462778 (= e!4453461 e!4453462)))

(assert (=> b!7462778 (= c!1379498 (is-Star!19538 rTail!78))))

(declare-fun b!7462779 () Bool)

(declare-fun e!4453460 () Bool)

(assert (=> b!7462779 (= e!4453462 e!4453460)))

(declare-fun res!2993488 () Bool)

(declare-fun nullable!8514 (Regex!19538) Bool)

(assert (=> b!7462779 (= res!2993488 (not (nullable!8514 (reg!19867 rTail!78))))))

(assert (=> b!7462779 (=> (not res!2993488) (not e!4453460))))

(declare-fun b!7462780 () Bool)

(assert (=> b!7462780 (= e!4453456 call!685524)))

(declare-fun b!7462781 () Bool)

(assert (=> b!7462781 (= e!4453460 call!685525)))

(declare-fun b!7462777 () Bool)

(assert (=> b!7462777 (= e!4453462 e!4453457)))

(assert (=> b!7462777 (= c!1379497 (is-Union!19538 rTail!78))))

(declare-fun d!2298255 () Bool)

(declare-fun res!2993487 () Bool)

(assert (=> d!2298255 (=> res!2993487 e!4453461)))

(assert (=> d!2298255 (= res!2993487 (is-ElementMatch!19538 rTail!78))))

(assert (=> d!2298255 (= (validRegex!10052 rTail!78) e!4453461)))

(assert (= (and d!2298255 (not res!2993487)) b!7462778))

(assert (= (and b!7462778 c!1379498) b!7462779))

(assert (= (and b!7462778 (not c!1379498)) b!7462777))

(assert (= (and b!7462779 res!2993488) b!7462781))

(assert (= (and b!7462777 c!1379497) b!7462775))

(assert (= (and b!7462777 (not c!1379497)) b!7462773))

(assert (= (and b!7462775 res!2993486) b!7462776))

(assert (= (and b!7462773 (not res!2993490)) b!7462774))

(assert (= (and b!7462774 res!2993489) b!7462780))

(assert (= (or b!7462776 b!7462780) bm!685520))

(assert (= (or b!7462775 b!7462774) bm!685518))

(assert (= (or b!7462781 bm!685520) bm!685519))

(declare-fun m!8063238 () Bool)

(assert (=> bm!685518 m!8063238))

(declare-fun m!8063240 () Bool)

(assert (=> bm!685519 m!8063240))

(declare-fun m!8063242 () Bool)

(assert (=> b!7462779 m!8063242))

(assert (=> b!7462613 d!2298255))

(declare-fun bm!685521 () Bool)

(declare-fun call!685526 () Bool)

(declare-fun c!1379499 () Bool)

(assert (=> bm!685521 (= call!685526 (validRegex!10052 (ite c!1379499 (regOne!39589 r2!5783) (regOne!39588 r2!5783))))))

(declare-fun c!1379500 () Bool)

(declare-fun bm!685522 () Bool)

(declare-fun call!685528 () Bool)

(assert (=> bm!685522 (= call!685528 (validRegex!10052 (ite c!1379500 (reg!19867 r2!5783) (ite c!1379499 (regTwo!39589 r2!5783) (regTwo!39588 r2!5783)))))))

(declare-fun bm!685523 () Bool)

(declare-fun call!685527 () Bool)

(assert (=> bm!685523 (= call!685527 call!685528)))

(declare-fun b!7462782 () Bool)

(declare-fun res!2993495 () Bool)

(declare-fun e!4453465 () Bool)

(assert (=> b!7462782 (=> res!2993495 e!4453465)))

(assert (=> b!7462782 (= res!2993495 (not (is-Concat!28383 r2!5783)))))

(declare-fun e!4453464 () Bool)

(assert (=> b!7462782 (= e!4453464 e!4453465)))

(declare-fun b!7462783 () Bool)

(declare-fun e!4453463 () Bool)

(assert (=> b!7462783 (= e!4453465 e!4453463)))

(declare-fun res!2993494 () Bool)

(assert (=> b!7462783 (=> (not res!2993494) (not e!4453463))))

(assert (=> b!7462783 (= res!2993494 call!685526)))

(declare-fun b!7462784 () Bool)

(declare-fun res!2993491 () Bool)

(declare-fun e!4453466 () Bool)

(assert (=> b!7462784 (=> (not res!2993491) (not e!4453466))))

(assert (=> b!7462784 (= res!2993491 call!685526)))

(assert (=> b!7462784 (= e!4453464 e!4453466)))

(declare-fun b!7462785 () Bool)

(assert (=> b!7462785 (= e!4453466 call!685527)))

(declare-fun b!7462787 () Bool)

(declare-fun e!4453468 () Bool)

(declare-fun e!4453469 () Bool)

(assert (=> b!7462787 (= e!4453468 e!4453469)))

(assert (=> b!7462787 (= c!1379500 (is-Star!19538 r2!5783))))

(declare-fun b!7462788 () Bool)

(declare-fun e!4453467 () Bool)

(assert (=> b!7462788 (= e!4453469 e!4453467)))

(declare-fun res!2993493 () Bool)

(assert (=> b!7462788 (= res!2993493 (not (nullable!8514 (reg!19867 r2!5783))))))

(assert (=> b!7462788 (=> (not res!2993493) (not e!4453467))))

(declare-fun b!7462789 () Bool)

(assert (=> b!7462789 (= e!4453463 call!685527)))

(declare-fun b!7462790 () Bool)

(assert (=> b!7462790 (= e!4453467 call!685528)))

(declare-fun b!7462786 () Bool)

(assert (=> b!7462786 (= e!4453469 e!4453464)))

(assert (=> b!7462786 (= c!1379499 (is-Union!19538 r2!5783))))

(declare-fun d!2298259 () Bool)

(declare-fun res!2993492 () Bool)

(assert (=> d!2298259 (=> res!2993492 e!4453468)))

(assert (=> d!2298259 (= res!2993492 (is-ElementMatch!19538 r2!5783))))

(assert (=> d!2298259 (= (validRegex!10052 r2!5783) e!4453468)))

(assert (= (and d!2298259 (not res!2993492)) b!7462787))

(assert (= (and b!7462787 c!1379500) b!7462788))

(assert (= (and b!7462787 (not c!1379500)) b!7462786))

(assert (= (and b!7462788 res!2993493) b!7462790))

(assert (= (and b!7462786 c!1379499) b!7462784))

(assert (= (and b!7462786 (not c!1379499)) b!7462782))

(assert (= (and b!7462784 res!2993491) b!7462785))

(assert (= (and b!7462782 (not res!2993495)) b!7462783))

(assert (= (and b!7462783 res!2993494) b!7462789))

(assert (= (or b!7462785 b!7462789) bm!685523))

(assert (= (or b!7462784 b!7462783) bm!685521))

(assert (= (or b!7462790 bm!685523) bm!685522))

(declare-fun m!8063244 () Bool)

(assert (=> bm!685521 m!8063244))

(declare-fun m!8063246 () Bool)

(assert (=> bm!685522 m!8063246))

(declare-fun m!8063248 () Bool)

(assert (=> b!7462788 m!8063248))

(assert (=> b!7462627 d!2298259))

(declare-fun d!2298261 () Bool)

(assert (=> d!2298261 (= (matchR!9302 lt!2622894 s!13591) (matchRSpec!4217 lt!2622894 s!13591))))

(declare-fun lt!2622972 () Unit!165911)

(declare-fun choose!57693 (Regex!19538 List!72254) Unit!165911)

(assert (=> d!2298261 (= lt!2622972 (choose!57693 lt!2622894 s!13591))))

(assert (=> d!2298261 (validRegex!10052 lt!2622894)))

(assert (=> d!2298261 (= (mainMatchTheorem!4211 lt!2622894 s!13591) lt!2622972)))

(declare-fun bs!1929605 () Bool)

(assert (= bs!1929605 d!2298261))

(assert (=> bs!1929605 m!8063140))

(assert (=> bs!1929605 m!8063136))

(declare-fun m!8063250 () Bool)

(assert (=> bs!1929605 m!8063250))

(assert (=> bs!1929605 m!8063130))

(assert (=> b!7462628 d!2298261))

(declare-fun bs!1929608 () Bool)

(declare-fun b!7462830 () Bool)

(assert (= bs!1929608 (and b!7462830 d!2298247)))

(declare-fun lambda!461778 () Int)

(assert (=> bs!1929608 (not (= lambda!461778 lambda!461767))))

(declare-fun bs!1929609 () Bool)

(assert (= bs!1929609 (and b!7462830 b!7462619)))

(assert (=> bs!1929609 (not (= lambda!461778 lambda!461746))))

(assert (=> bs!1929608 (not (= lambda!461778 lambda!461768))))

(assert (=> bs!1929609 (not (= lambda!461778 lambda!461747))))

(declare-fun bs!1929610 () Bool)

(assert (= bs!1929610 (and b!7462830 d!2298239)))

(assert (=> bs!1929610 (not (= lambda!461778 lambda!461758))))

(assert (=> b!7462830 true))

(assert (=> b!7462830 true))

(declare-fun bs!1929612 () Bool)

(declare-fun b!7462827 () Bool)

(assert (= bs!1929612 (and b!7462827 b!7462830)))

(declare-fun lambda!461779 () Int)

(assert (=> bs!1929612 (not (= lambda!461779 lambda!461778))))

(declare-fun bs!1929613 () Bool)

(assert (= bs!1929613 (and b!7462827 d!2298247)))

(assert (=> bs!1929613 (not (= lambda!461779 lambda!461767))))

(declare-fun bs!1929614 () Bool)

(assert (= bs!1929614 (and b!7462827 b!7462619)))

(assert (=> bs!1929614 (not (= lambda!461779 lambda!461746))))

(assert (=> bs!1929613 (= (and (= (regOne!39588 lt!2622895) lt!2622903) (= (regTwo!39588 lt!2622895) rTail!78)) (= lambda!461779 lambda!461768))))

(assert (=> bs!1929614 (= (and (= (regOne!39588 lt!2622895) lt!2622903) (= (regTwo!39588 lt!2622895) rTail!78)) (= lambda!461779 lambda!461747))))

(declare-fun bs!1929615 () Bool)

(assert (= bs!1929615 (and b!7462827 d!2298239)))

(assert (=> bs!1929615 (not (= lambda!461779 lambda!461758))))

(assert (=> b!7462827 true))

(assert (=> b!7462827 true))

(declare-fun e!4453494 () Bool)

(declare-fun call!685534 () Bool)

(assert (=> b!7462827 (= e!4453494 call!685534)))

(declare-fun b!7462828 () Bool)

(declare-fun c!1379510 () Bool)

(assert (=> b!7462828 (= c!1379510 (is-Union!19538 lt!2622895))))

(declare-fun e!4453492 () Bool)

(declare-fun e!4453490 () Bool)

(assert (=> b!7462828 (= e!4453492 e!4453490)))

(declare-fun b!7462829 () Bool)

(declare-fun c!1379509 () Bool)

(assert (=> b!7462829 (= c!1379509 (is-ElementMatch!19538 lt!2622895))))

(declare-fun e!4453491 () Bool)

(assert (=> b!7462829 (= e!4453491 e!4453492)))

(declare-fun e!4453493 () Bool)

(assert (=> b!7462830 (= e!4453493 call!685534)))

(declare-fun bm!685528 () Bool)

(declare-fun call!685533 () Bool)

(declare-fun isEmpty!41144 (List!72254) Bool)

(assert (=> bm!685528 (= call!685533 (isEmpty!41144 s!13591))))

(declare-fun b!7462831 () Bool)

(assert (=> b!7462831 (= e!4453490 e!4453494)))

(declare-fun c!1379512 () Bool)

(assert (=> b!7462831 (= c!1379512 (is-Star!19538 lt!2622895))))

(declare-fun b!7462832 () Bool)

(declare-fun e!4453496 () Bool)

(assert (=> b!7462832 (= e!4453496 call!685533)))

(declare-fun bm!685529 () Bool)

(assert (=> bm!685529 (= call!685534 (Exists!4157 (ite c!1379512 lambda!461778 lambda!461779)))))

(declare-fun b!7462833 () Bool)

(assert (=> b!7462833 (= e!4453496 e!4453491)))

(declare-fun res!2993517 () Bool)

(assert (=> b!7462833 (= res!2993517 (not (is-EmptyLang!19538 lt!2622895)))))

(assert (=> b!7462833 (=> (not res!2993517) (not e!4453491))))

(declare-fun b!7462834 () Bool)

(assert (=> b!7462834 (= e!4453492 (= s!13591 (Cons!72130 (c!1379485 lt!2622895) Nil!72130)))))

(declare-fun b!7462835 () Bool)

(declare-fun e!4453495 () Bool)

(assert (=> b!7462835 (= e!4453490 e!4453495)))

(declare-fun res!2993518 () Bool)

(assert (=> b!7462835 (= res!2993518 (matchRSpec!4217 (regOne!39589 lt!2622895) s!13591))))

(assert (=> b!7462835 (=> res!2993518 e!4453495)))

(declare-fun b!7462836 () Bool)

(declare-fun res!2993516 () Bool)

(assert (=> b!7462836 (=> res!2993516 e!4453493)))

(assert (=> b!7462836 (= res!2993516 call!685533)))

(assert (=> b!7462836 (= e!4453494 e!4453493)))

(declare-fun d!2298263 () Bool)

(declare-fun c!1379511 () Bool)

(assert (=> d!2298263 (= c!1379511 (is-EmptyExpr!19538 lt!2622895))))

(assert (=> d!2298263 (= (matchRSpec!4217 lt!2622895 s!13591) e!4453496)))

(declare-fun b!7462837 () Bool)

(assert (=> b!7462837 (= e!4453495 (matchRSpec!4217 (regTwo!39589 lt!2622895) s!13591))))

(assert (= (and d!2298263 c!1379511) b!7462832))

(assert (= (and d!2298263 (not c!1379511)) b!7462833))

(assert (= (and b!7462833 res!2993517) b!7462829))

(assert (= (and b!7462829 c!1379509) b!7462834))

(assert (= (and b!7462829 (not c!1379509)) b!7462828))

(assert (= (and b!7462828 c!1379510) b!7462835))

(assert (= (and b!7462828 (not c!1379510)) b!7462831))

(assert (= (and b!7462835 (not res!2993518)) b!7462837))

(assert (= (and b!7462831 c!1379512) b!7462836))

(assert (= (and b!7462831 (not c!1379512)) b!7462827))

(assert (= (and b!7462836 (not res!2993516)) b!7462830))

(assert (= (or b!7462830 b!7462827) bm!685529))

(assert (= (or b!7462832 b!7462836) bm!685528))

(declare-fun m!8063256 () Bool)

(assert (=> bm!685528 m!8063256))

(declare-fun m!8063258 () Bool)

(assert (=> bm!685529 m!8063258))

(declare-fun m!8063260 () Bool)

(assert (=> b!7462835 m!8063260))

(declare-fun m!8063262 () Bool)

(assert (=> b!7462837 m!8063262))

(assert (=> b!7462628 d!2298263))

(declare-fun d!2298267 () Bool)

(assert (=> d!2298267 (= (matchR!9302 lt!2622895 s!13591) (matchRSpec!4217 lt!2622895 s!13591))))

(declare-fun lt!2622976 () Unit!165911)

(assert (=> d!2298267 (= lt!2622976 (choose!57693 lt!2622895 s!13591))))

(assert (=> d!2298267 (validRegex!10052 lt!2622895)))

(assert (=> d!2298267 (= (mainMatchTheorem!4211 lt!2622895 s!13591) lt!2622976)))

(declare-fun bs!1929616 () Bool)

(assert (= bs!1929616 d!2298267))

(assert (=> bs!1929616 m!8063142))

(assert (=> bs!1929616 m!8063134))

(declare-fun m!8063264 () Bool)

(assert (=> bs!1929616 m!8063264))

(declare-fun m!8063266 () Bool)

(assert (=> bs!1929616 m!8063266))

(assert (=> b!7462628 d!2298267))

(declare-fun b!7462866 () Bool)

(declare-fun e!4453516 () Bool)

(declare-fun head!15313 (List!72254) C!39350)

(assert (=> b!7462866 (= e!4453516 (not (= (head!15313 s!13591) (c!1379485 lt!2622895))))))

(declare-fun b!7462867 () Bool)

(declare-fun e!4453514 () Bool)

(assert (=> b!7462867 (= e!4453514 (nullable!8514 lt!2622895))))

(declare-fun bm!685532 () Bool)

(declare-fun call!685537 () Bool)

(assert (=> bm!685532 (= call!685537 (isEmpty!41144 s!13591))))

(declare-fun b!7462868 () Bool)

(declare-fun res!2993536 () Bool)

(declare-fun e!4453511 () Bool)

(assert (=> b!7462868 (=> (not res!2993536) (not e!4453511))))

(assert (=> b!7462868 (= res!2993536 (not call!685537))))

(declare-fun b!7462869 () Bool)

(assert (=> b!7462869 (= e!4453511 (= (head!15313 s!13591) (c!1379485 lt!2622895)))))

(declare-fun b!7462870 () Bool)

(declare-fun e!4453513 () Bool)

(declare-fun e!4453515 () Bool)

(assert (=> b!7462870 (= e!4453513 e!4453515)))

(declare-fun c!1379520 () Bool)

(assert (=> b!7462870 (= c!1379520 (is-EmptyLang!19538 lt!2622895))))

(declare-fun b!7462871 () Bool)

(declare-fun e!4453517 () Bool)

(declare-fun e!4453512 () Bool)

(assert (=> b!7462871 (= e!4453517 e!4453512)))

(declare-fun res!2993540 () Bool)

(assert (=> b!7462871 (=> (not res!2993540) (not e!4453512))))

(declare-fun lt!2622979 () Bool)

(assert (=> b!7462871 (= res!2993540 (not lt!2622979))))

(declare-fun b!7462872 () Bool)

(declare-fun res!2993535 () Bool)

(assert (=> b!7462872 (=> (not res!2993535) (not e!4453511))))

(declare-fun tail!14882 (List!72254) List!72254)

(assert (=> b!7462872 (= res!2993535 (isEmpty!41144 (tail!14882 s!13591)))))

(declare-fun b!7462873 () Bool)

(declare-fun res!2993539 () Bool)

(assert (=> b!7462873 (=> res!2993539 e!4453517)))

(assert (=> b!7462873 (= res!2993539 e!4453511)))

(declare-fun res!2993542 () Bool)

(assert (=> b!7462873 (=> (not res!2993542) (not e!4453511))))

(assert (=> b!7462873 (= res!2993542 lt!2622979)))

(declare-fun d!2298269 () Bool)

(assert (=> d!2298269 e!4453513))

(declare-fun c!1379521 () Bool)

(assert (=> d!2298269 (= c!1379521 (is-EmptyExpr!19538 lt!2622895))))

(assert (=> d!2298269 (= lt!2622979 e!4453514)))

(declare-fun c!1379519 () Bool)

(assert (=> d!2298269 (= c!1379519 (isEmpty!41144 s!13591))))

(assert (=> d!2298269 (validRegex!10052 lt!2622895)))

(assert (=> d!2298269 (= (matchR!9302 lt!2622895 s!13591) lt!2622979)))

(declare-fun b!7462874 () Bool)

(assert (=> b!7462874 (= e!4453513 (= lt!2622979 call!685537))))

(declare-fun b!7462875 () Bool)

(declare-fun res!2993537 () Bool)

(assert (=> b!7462875 (=> res!2993537 e!4453516)))

(assert (=> b!7462875 (= res!2993537 (not (isEmpty!41144 (tail!14882 s!13591))))))

(declare-fun b!7462876 () Bool)

(declare-fun derivativeStep!5573 (Regex!19538 C!39350) Regex!19538)

(assert (=> b!7462876 (= e!4453514 (matchR!9302 (derivativeStep!5573 lt!2622895 (head!15313 s!13591)) (tail!14882 s!13591)))))

(declare-fun b!7462877 () Bool)

(assert (=> b!7462877 (= e!4453515 (not lt!2622979))))

(declare-fun b!7462878 () Bool)

(assert (=> b!7462878 (= e!4453512 e!4453516)))

(declare-fun res!2993541 () Bool)

(assert (=> b!7462878 (=> res!2993541 e!4453516)))

(assert (=> b!7462878 (= res!2993541 call!685537)))

(declare-fun b!7462879 () Bool)

(declare-fun res!2993538 () Bool)

(assert (=> b!7462879 (=> res!2993538 e!4453517)))

(assert (=> b!7462879 (= res!2993538 (not (is-ElementMatch!19538 lt!2622895)))))

(assert (=> b!7462879 (= e!4453515 e!4453517)))

(assert (= (and d!2298269 c!1379519) b!7462867))

(assert (= (and d!2298269 (not c!1379519)) b!7462876))

(assert (= (and d!2298269 c!1379521) b!7462874))

(assert (= (and d!2298269 (not c!1379521)) b!7462870))

(assert (= (and b!7462870 c!1379520) b!7462877))

(assert (= (and b!7462870 (not c!1379520)) b!7462879))

(assert (= (and b!7462879 (not res!2993538)) b!7462873))

(assert (= (and b!7462873 res!2993542) b!7462868))

(assert (= (and b!7462868 res!2993536) b!7462872))

(assert (= (and b!7462872 res!2993535) b!7462869))

(assert (= (and b!7462873 (not res!2993539)) b!7462871))

(assert (= (and b!7462871 res!2993540) b!7462878))

(assert (= (and b!7462878 (not res!2993541)) b!7462875))

(assert (= (and b!7462875 (not res!2993537)) b!7462866))

(assert (= (or b!7462874 b!7462868 b!7462878) bm!685532))

(declare-fun m!8063272 () Bool)

(assert (=> b!7462867 m!8063272))

(declare-fun m!8063274 () Bool)

(assert (=> b!7462869 m!8063274))

(assert (=> b!7462876 m!8063274))

(assert (=> b!7462876 m!8063274))

(declare-fun m!8063276 () Bool)

(assert (=> b!7462876 m!8063276))

(declare-fun m!8063278 () Bool)

(assert (=> b!7462876 m!8063278))

(assert (=> b!7462876 m!8063276))

(assert (=> b!7462876 m!8063278))

(declare-fun m!8063280 () Bool)

(assert (=> b!7462876 m!8063280))

(assert (=> bm!685532 m!8063256))

(assert (=> b!7462866 m!8063274))

(assert (=> d!2298269 m!8063256))

(assert (=> d!2298269 m!8063266))

(assert (=> b!7462875 m!8063278))

(assert (=> b!7462875 m!8063278))

(declare-fun m!8063282 () Bool)

(assert (=> b!7462875 m!8063282))

(assert (=> b!7462872 m!8063278))

(assert (=> b!7462872 m!8063278))

(assert (=> b!7462872 m!8063282))

(assert (=> b!7462628 d!2298269))

(declare-fun b!7462880 () Bool)

(declare-fun e!4453523 () Bool)

(assert (=> b!7462880 (= e!4453523 (not (= (head!15313 s!13591) (c!1379485 lt!2622894))))))

(declare-fun b!7462881 () Bool)

(declare-fun e!4453521 () Bool)

(assert (=> b!7462881 (= e!4453521 (nullable!8514 lt!2622894))))

(declare-fun bm!685533 () Bool)

(declare-fun call!685538 () Bool)

(assert (=> bm!685533 (= call!685538 (isEmpty!41144 s!13591))))

(declare-fun b!7462882 () Bool)

(declare-fun res!2993544 () Bool)

(declare-fun e!4453518 () Bool)

(assert (=> b!7462882 (=> (not res!2993544) (not e!4453518))))

(assert (=> b!7462882 (= res!2993544 (not call!685538))))

(declare-fun b!7462883 () Bool)

(assert (=> b!7462883 (= e!4453518 (= (head!15313 s!13591) (c!1379485 lt!2622894)))))

(declare-fun b!7462884 () Bool)

(declare-fun e!4453520 () Bool)

(declare-fun e!4453522 () Bool)

(assert (=> b!7462884 (= e!4453520 e!4453522)))

(declare-fun c!1379523 () Bool)

(assert (=> b!7462884 (= c!1379523 (is-EmptyLang!19538 lt!2622894))))

(declare-fun b!7462885 () Bool)

(declare-fun e!4453524 () Bool)

(declare-fun e!4453519 () Bool)

(assert (=> b!7462885 (= e!4453524 e!4453519)))

(declare-fun res!2993548 () Bool)

(assert (=> b!7462885 (=> (not res!2993548) (not e!4453519))))

(declare-fun lt!2622980 () Bool)

(assert (=> b!7462885 (= res!2993548 (not lt!2622980))))

(declare-fun b!7462886 () Bool)

(declare-fun res!2993543 () Bool)

(assert (=> b!7462886 (=> (not res!2993543) (not e!4453518))))

(assert (=> b!7462886 (= res!2993543 (isEmpty!41144 (tail!14882 s!13591)))))

(declare-fun b!7462887 () Bool)

(declare-fun res!2993547 () Bool)

(assert (=> b!7462887 (=> res!2993547 e!4453524)))

(assert (=> b!7462887 (= res!2993547 e!4453518)))

(declare-fun res!2993550 () Bool)

(assert (=> b!7462887 (=> (not res!2993550) (not e!4453518))))

(assert (=> b!7462887 (= res!2993550 lt!2622980)))

(declare-fun d!2298275 () Bool)

(assert (=> d!2298275 e!4453520))

(declare-fun c!1379524 () Bool)

(assert (=> d!2298275 (= c!1379524 (is-EmptyExpr!19538 lt!2622894))))

(assert (=> d!2298275 (= lt!2622980 e!4453521)))

(declare-fun c!1379522 () Bool)

(assert (=> d!2298275 (= c!1379522 (isEmpty!41144 s!13591))))

(assert (=> d!2298275 (validRegex!10052 lt!2622894)))

(assert (=> d!2298275 (= (matchR!9302 lt!2622894 s!13591) lt!2622980)))

(declare-fun b!7462888 () Bool)

(assert (=> b!7462888 (= e!4453520 (= lt!2622980 call!685538))))

(declare-fun b!7462889 () Bool)

(declare-fun res!2993545 () Bool)

(assert (=> b!7462889 (=> res!2993545 e!4453523)))

(assert (=> b!7462889 (= res!2993545 (not (isEmpty!41144 (tail!14882 s!13591))))))

(declare-fun b!7462890 () Bool)

(assert (=> b!7462890 (= e!4453521 (matchR!9302 (derivativeStep!5573 lt!2622894 (head!15313 s!13591)) (tail!14882 s!13591)))))

(declare-fun b!7462891 () Bool)

(assert (=> b!7462891 (= e!4453522 (not lt!2622980))))

(declare-fun b!7462892 () Bool)

(assert (=> b!7462892 (= e!4453519 e!4453523)))

(declare-fun res!2993549 () Bool)

(assert (=> b!7462892 (=> res!2993549 e!4453523)))

(assert (=> b!7462892 (= res!2993549 call!685538)))

(declare-fun b!7462893 () Bool)

(declare-fun res!2993546 () Bool)

(assert (=> b!7462893 (=> res!2993546 e!4453524)))

(assert (=> b!7462893 (= res!2993546 (not (is-ElementMatch!19538 lt!2622894)))))

(assert (=> b!7462893 (= e!4453522 e!4453524)))

(assert (= (and d!2298275 c!1379522) b!7462881))

(assert (= (and d!2298275 (not c!1379522)) b!7462890))

(assert (= (and d!2298275 c!1379524) b!7462888))

(assert (= (and d!2298275 (not c!1379524)) b!7462884))

(assert (= (and b!7462884 c!1379523) b!7462891))

(assert (= (and b!7462884 (not c!1379523)) b!7462893))

(assert (= (and b!7462893 (not res!2993546)) b!7462887))

(assert (= (and b!7462887 res!2993550) b!7462882))

(assert (= (and b!7462882 res!2993544) b!7462886))

(assert (= (and b!7462886 res!2993543) b!7462883))

(assert (= (and b!7462887 (not res!2993547)) b!7462885))

(assert (= (and b!7462885 res!2993548) b!7462892))

(assert (= (and b!7462892 (not res!2993549)) b!7462889))

(assert (= (and b!7462889 (not res!2993545)) b!7462880))

(assert (= (or b!7462888 b!7462882 b!7462892) bm!685533))

(declare-fun m!8063284 () Bool)

(assert (=> b!7462881 m!8063284))

(assert (=> b!7462883 m!8063274))

(assert (=> b!7462890 m!8063274))

(assert (=> b!7462890 m!8063274))

(declare-fun m!8063286 () Bool)

(assert (=> b!7462890 m!8063286))

(assert (=> b!7462890 m!8063278))

(assert (=> b!7462890 m!8063286))

(assert (=> b!7462890 m!8063278))

(declare-fun m!8063288 () Bool)

(assert (=> b!7462890 m!8063288))

(assert (=> bm!685533 m!8063256))

(assert (=> b!7462880 m!8063274))

(assert (=> d!2298275 m!8063256))

(assert (=> d!2298275 m!8063130))

(assert (=> b!7462889 m!8063278))

(assert (=> b!7462889 m!8063278))

(assert (=> b!7462889 m!8063282))

(assert (=> b!7462886 m!8063278))

(assert (=> b!7462886 m!8063278))

(assert (=> b!7462886 m!8063282))

(assert (=> b!7462628 d!2298275))

(declare-fun bs!1929619 () Bool)

(declare-fun b!7462897 () Bool)

(assert (= bs!1929619 (and b!7462897 b!7462827)))

(declare-fun lambda!461780 () Int)

(assert (=> bs!1929619 (not (= lambda!461780 lambda!461779))))

(declare-fun bs!1929620 () Bool)

(assert (= bs!1929620 (and b!7462897 b!7462830)))

(assert (=> bs!1929620 (= (and (= (reg!19867 lt!2622894) (reg!19867 lt!2622895)) (= lt!2622894 lt!2622895)) (= lambda!461780 lambda!461778))))

(declare-fun bs!1929621 () Bool)

(assert (= bs!1929621 (and b!7462897 d!2298247)))

(assert (=> bs!1929621 (not (= lambda!461780 lambda!461767))))

(declare-fun bs!1929622 () Bool)

(assert (= bs!1929622 (and b!7462897 b!7462619)))

(assert (=> bs!1929622 (not (= lambda!461780 lambda!461746))))

(assert (=> bs!1929621 (not (= lambda!461780 lambda!461768))))

(assert (=> bs!1929622 (not (= lambda!461780 lambda!461747))))

(declare-fun bs!1929623 () Bool)

(assert (= bs!1929623 (and b!7462897 d!2298239)))

(assert (=> bs!1929623 (not (= lambda!461780 lambda!461758))))

(assert (=> b!7462897 true))

(assert (=> b!7462897 true))

(declare-fun bs!1929624 () Bool)

(declare-fun b!7462894 () Bool)

(assert (= bs!1929624 (and b!7462894 b!7462827)))

(declare-fun lambda!461781 () Int)

(assert (=> bs!1929624 (= (and (= (regOne!39588 lt!2622894) (regOne!39588 lt!2622895)) (= (regTwo!39588 lt!2622894) (regTwo!39588 lt!2622895))) (= lambda!461781 lambda!461779))))

(declare-fun bs!1929625 () Bool)

(assert (= bs!1929625 (and b!7462894 b!7462897)))

(assert (=> bs!1929625 (not (= lambda!461781 lambda!461780))))

(declare-fun bs!1929626 () Bool)

(assert (= bs!1929626 (and b!7462894 b!7462830)))

(assert (=> bs!1929626 (not (= lambda!461781 lambda!461778))))

(declare-fun bs!1929627 () Bool)

(assert (= bs!1929627 (and b!7462894 d!2298247)))

(assert (=> bs!1929627 (not (= lambda!461781 lambda!461767))))

(declare-fun bs!1929628 () Bool)

(assert (= bs!1929628 (and b!7462894 b!7462619)))

(assert (=> bs!1929628 (not (= lambda!461781 lambda!461746))))

(assert (=> bs!1929627 (= (and (= (regOne!39588 lt!2622894) lt!2622903) (= (regTwo!39588 lt!2622894) rTail!78)) (= lambda!461781 lambda!461768))))

(assert (=> bs!1929628 (= (and (= (regOne!39588 lt!2622894) lt!2622903) (= (regTwo!39588 lt!2622894) rTail!78)) (= lambda!461781 lambda!461747))))

(declare-fun bs!1929629 () Bool)

(assert (= bs!1929629 (and b!7462894 d!2298239)))

(assert (=> bs!1929629 (not (= lambda!461781 lambda!461758))))

(assert (=> b!7462894 true))

(assert (=> b!7462894 true))

(declare-fun e!4453529 () Bool)

(declare-fun call!685540 () Bool)

(assert (=> b!7462894 (= e!4453529 call!685540)))

(declare-fun b!7462895 () Bool)

(declare-fun c!1379526 () Bool)

(assert (=> b!7462895 (= c!1379526 (is-Union!19538 lt!2622894))))

(declare-fun e!4453527 () Bool)

(declare-fun e!4453525 () Bool)

(assert (=> b!7462895 (= e!4453527 e!4453525)))

(declare-fun b!7462896 () Bool)

(declare-fun c!1379525 () Bool)

(assert (=> b!7462896 (= c!1379525 (is-ElementMatch!19538 lt!2622894))))

(declare-fun e!4453526 () Bool)

(assert (=> b!7462896 (= e!4453526 e!4453527)))

(declare-fun e!4453528 () Bool)

(assert (=> b!7462897 (= e!4453528 call!685540)))

(declare-fun bm!685534 () Bool)

(declare-fun call!685539 () Bool)

(assert (=> bm!685534 (= call!685539 (isEmpty!41144 s!13591))))

(declare-fun b!7462898 () Bool)

(assert (=> b!7462898 (= e!4453525 e!4453529)))

(declare-fun c!1379528 () Bool)

(assert (=> b!7462898 (= c!1379528 (is-Star!19538 lt!2622894))))

(declare-fun b!7462899 () Bool)

(declare-fun e!4453531 () Bool)

(assert (=> b!7462899 (= e!4453531 call!685539)))

(declare-fun bm!685535 () Bool)

(assert (=> bm!685535 (= call!685540 (Exists!4157 (ite c!1379528 lambda!461780 lambda!461781)))))

(declare-fun b!7462900 () Bool)

(assert (=> b!7462900 (= e!4453531 e!4453526)))

(declare-fun res!2993552 () Bool)

(assert (=> b!7462900 (= res!2993552 (not (is-EmptyLang!19538 lt!2622894)))))

(assert (=> b!7462900 (=> (not res!2993552) (not e!4453526))))

(declare-fun b!7462901 () Bool)

(assert (=> b!7462901 (= e!4453527 (= s!13591 (Cons!72130 (c!1379485 lt!2622894) Nil!72130)))))

(declare-fun b!7462902 () Bool)

(declare-fun e!4453530 () Bool)

(assert (=> b!7462902 (= e!4453525 e!4453530)))

(declare-fun res!2993553 () Bool)

(assert (=> b!7462902 (= res!2993553 (matchRSpec!4217 (regOne!39589 lt!2622894) s!13591))))

(assert (=> b!7462902 (=> res!2993553 e!4453530)))

(declare-fun b!7462903 () Bool)

(declare-fun res!2993551 () Bool)

(assert (=> b!7462903 (=> res!2993551 e!4453528)))

(assert (=> b!7462903 (= res!2993551 call!685539)))

(assert (=> b!7462903 (= e!4453529 e!4453528)))

(declare-fun d!2298277 () Bool)

(declare-fun c!1379527 () Bool)

(assert (=> d!2298277 (= c!1379527 (is-EmptyExpr!19538 lt!2622894))))

(assert (=> d!2298277 (= (matchRSpec!4217 lt!2622894 s!13591) e!4453531)))

(declare-fun b!7462904 () Bool)

(assert (=> b!7462904 (= e!4453530 (matchRSpec!4217 (regTwo!39589 lt!2622894) s!13591))))

(assert (= (and d!2298277 c!1379527) b!7462899))

(assert (= (and d!2298277 (not c!1379527)) b!7462900))

(assert (= (and b!7462900 res!2993552) b!7462896))

(assert (= (and b!7462896 c!1379525) b!7462901))

(assert (= (and b!7462896 (not c!1379525)) b!7462895))

(assert (= (and b!7462895 c!1379526) b!7462902))

(assert (= (and b!7462895 (not c!1379526)) b!7462898))

(assert (= (and b!7462902 (not res!2993553)) b!7462904))

(assert (= (and b!7462898 c!1379528) b!7462903))

(assert (= (and b!7462898 (not c!1379528)) b!7462894))

(assert (= (and b!7462903 (not res!2993551)) b!7462897))

(assert (= (or b!7462897 b!7462894) bm!685535))

(assert (= (or b!7462899 b!7462903) bm!685534))

(assert (=> bm!685534 m!8063256))

(declare-fun m!8063290 () Bool)

(assert (=> bm!685535 m!8063290))

(declare-fun m!8063292 () Bool)

(assert (=> b!7462902 m!8063292))

(declare-fun m!8063294 () Bool)

(assert (=> b!7462904 m!8063294))

(assert (=> b!7462628 d!2298277))

(declare-fun bm!685536 () Bool)

(declare-fun call!685541 () Bool)

(declare-fun c!1379529 () Bool)

(assert (=> bm!685536 (= call!685541 (validRegex!10052 (ite c!1379529 (regOne!39589 lt!2622894) (regOne!39588 lt!2622894))))))

(declare-fun c!1379530 () Bool)

(declare-fun call!685543 () Bool)

(declare-fun bm!685537 () Bool)

(assert (=> bm!685537 (= call!685543 (validRegex!10052 (ite c!1379530 (reg!19867 lt!2622894) (ite c!1379529 (regTwo!39589 lt!2622894) (regTwo!39588 lt!2622894)))))))

(declare-fun bm!685538 () Bool)

(declare-fun call!685542 () Bool)

(assert (=> bm!685538 (= call!685542 call!685543)))

(declare-fun b!7462905 () Bool)

(declare-fun res!2993558 () Bool)

(declare-fun e!4453534 () Bool)

(assert (=> b!7462905 (=> res!2993558 e!4453534)))

(assert (=> b!7462905 (= res!2993558 (not (is-Concat!28383 lt!2622894)))))

(declare-fun e!4453533 () Bool)

(assert (=> b!7462905 (= e!4453533 e!4453534)))

(declare-fun b!7462906 () Bool)

(declare-fun e!4453532 () Bool)

(assert (=> b!7462906 (= e!4453534 e!4453532)))

(declare-fun res!2993557 () Bool)

(assert (=> b!7462906 (=> (not res!2993557) (not e!4453532))))

(assert (=> b!7462906 (= res!2993557 call!685541)))

(declare-fun b!7462907 () Bool)

(declare-fun res!2993554 () Bool)

(declare-fun e!4453535 () Bool)

(assert (=> b!7462907 (=> (not res!2993554) (not e!4453535))))

(assert (=> b!7462907 (= res!2993554 call!685541)))

(assert (=> b!7462907 (= e!4453533 e!4453535)))

(declare-fun b!7462908 () Bool)

(assert (=> b!7462908 (= e!4453535 call!685542)))

(declare-fun b!7462910 () Bool)

(declare-fun e!4453537 () Bool)

(declare-fun e!4453538 () Bool)

(assert (=> b!7462910 (= e!4453537 e!4453538)))

(assert (=> b!7462910 (= c!1379530 (is-Star!19538 lt!2622894))))

(declare-fun b!7462911 () Bool)

(declare-fun e!4453536 () Bool)

(assert (=> b!7462911 (= e!4453538 e!4453536)))

(declare-fun res!2993556 () Bool)

(assert (=> b!7462911 (= res!2993556 (not (nullable!8514 (reg!19867 lt!2622894))))))

(assert (=> b!7462911 (=> (not res!2993556) (not e!4453536))))

(declare-fun b!7462912 () Bool)

(assert (=> b!7462912 (= e!4453532 call!685542)))

(declare-fun b!7462913 () Bool)

(assert (=> b!7462913 (= e!4453536 call!685543)))

(declare-fun b!7462909 () Bool)

(assert (=> b!7462909 (= e!4453538 e!4453533)))

(assert (=> b!7462909 (= c!1379529 (is-Union!19538 lt!2622894))))

(declare-fun d!2298279 () Bool)

(declare-fun res!2993555 () Bool)

(assert (=> d!2298279 (=> res!2993555 e!4453537)))

(assert (=> d!2298279 (= res!2993555 (is-ElementMatch!19538 lt!2622894))))

(assert (=> d!2298279 (= (validRegex!10052 lt!2622894) e!4453537)))

(assert (= (and d!2298279 (not res!2993555)) b!7462910))

(assert (= (and b!7462910 c!1379530) b!7462911))

(assert (= (and b!7462910 (not c!1379530)) b!7462909))

(assert (= (and b!7462911 res!2993556) b!7462913))

(assert (= (and b!7462909 c!1379529) b!7462907))

(assert (= (and b!7462909 (not c!1379529)) b!7462905))

(assert (= (and b!7462907 res!2993554) b!7462908))

(assert (= (and b!7462905 (not res!2993558)) b!7462906))

(assert (= (and b!7462906 res!2993557) b!7462912))

(assert (= (or b!7462908 b!7462912) bm!685538))

(assert (= (or b!7462907 b!7462906) bm!685536))

(assert (= (or b!7462913 bm!685538) bm!685537))

(declare-fun m!8063296 () Bool)

(assert (=> bm!685536 m!8063296))

(declare-fun m!8063298 () Bool)

(assert (=> bm!685537 m!8063298))

(declare-fun m!8063300 () Bool)

(assert (=> b!7462911 m!8063300))

(assert (=> b!7462626 d!2298279))

(declare-fun bm!685539 () Bool)

(declare-fun call!685544 () Bool)

(declare-fun c!1379531 () Bool)

(assert (=> bm!685539 (= call!685544 (validRegex!10052 (ite c!1379531 (regOne!39589 r1!5845) (regOne!39588 r1!5845))))))

(declare-fun c!1379532 () Bool)

(declare-fun bm!685540 () Bool)

(declare-fun call!685546 () Bool)

(assert (=> bm!685540 (= call!685546 (validRegex!10052 (ite c!1379532 (reg!19867 r1!5845) (ite c!1379531 (regTwo!39589 r1!5845) (regTwo!39588 r1!5845)))))))

(declare-fun bm!685541 () Bool)

(declare-fun call!685545 () Bool)

(assert (=> bm!685541 (= call!685545 call!685546)))

(declare-fun b!7462914 () Bool)

(declare-fun res!2993563 () Bool)

(declare-fun e!4453541 () Bool)

(assert (=> b!7462914 (=> res!2993563 e!4453541)))

(assert (=> b!7462914 (= res!2993563 (not (is-Concat!28383 r1!5845)))))

(declare-fun e!4453540 () Bool)

(assert (=> b!7462914 (= e!4453540 e!4453541)))

(declare-fun b!7462915 () Bool)

(declare-fun e!4453539 () Bool)

(assert (=> b!7462915 (= e!4453541 e!4453539)))

(declare-fun res!2993562 () Bool)

(assert (=> b!7462915 (=> (not res!2993562) (not e!4453539))))

(assert (=> b!7462915 (= res!2993562 call!685544)))

(declare-fun b!7462916 () Bool)

(declare-fun res!2993559 () Bool)

(declare-fun e!4453542 () Bool)

(assert (=> b!7462916 (=> (not res!2993559) (not e!4453542))))

(assert (=> b!7462916 (= res!2993559 call!685544)))

(assert (=> b!7462916 (= e!4453540 e!4453542)))

(declare-fun b!7462917 () Bool)

(assert (=> b!7462917 (= e!4453542 call!685545)))

(declare-fun b!7462919 () Bool)

(declare-fun e!4453544 () Bool)

(declare-fun e!4453545 () Bool)

(assert (=> b!7462919 (= e!4453544 e!4453545)))

(assert (=> b!7462919 (= c!1379532 (is-Star!19538 r1!5845))))

(declare-fun b!7462920 () Bool)

(declare-fun e!4453543 () Bool)

(assert (=> b!7462920 (= e!4453545 e!4453543)))

(declare-fun res!2993561 () Bool)

(assert (=> b!7462920 (= res!2993561 (not (nullable!8514 (reg!19867 r1!5845))))))

(assert (=> b!7462920 (=> (not res!2993561) (not e!4453543))))

(declare-fun b!7462921 () Bool)

(assert (=> b!7462921 (= e!4453539 call!685545)))

(declare-fun b!7462922 () Bool)

(assert (=> b!7462922 (= e!4453543 call!685546)))

(declare-fun b!7462918 () Bool)

(assert (=> b!7462918 (= e!4453545 e!4453540)))

(assert (=> b!7462918 (= c!1379531 (is-Union!19538 r1!5845))))

(declare-fun d!2298281 () Bool)

(declare-fun res!2993560 () Bool)

(assert (=> d!2298281 (=> res!2993560 e!4453544)))

(assert (=> d!2298281 (= res!2993560 (is-ElementMatch!19538 r1!5845))))

(assert (=> d!2298281 (= (validRegex!10052 r1!5845) e!4453544)))

(assert (= (and d!2298281 (not res!2993560)) b!7462919))

(assert (= (and b!7462919 c!1379532) b!7462920))

(assert (= (and b!7462919 (not c!1379532)) b!7462918))

(assert (= (and b!7462920 res!2993561) b!7462922))

(assert (= (and b!7462918 c!1379531) b!7462916))

(assert (= (and b!7462918 (not c!1379531)) b!7462914))

(assert (= (and b!7462916 res!2993559) b!7462917))

(assert (= (and b!7462914 (not res!2993563)) b!7462915))

(assert (= (and b!7462915 res!2993562) b!7462921))

(assert (= (or b!7462917 b!7462921) bm!685541))

(assert (= (or b!7462916 b!7462915) bm!685539))

(assert (= (or b!7462922 bm!685541) bm!685540))

(declare-fun m!8063302 () Bool)

(assert (=> bm!685539 m!8063302))

(declare-fun m!8063304 () Bool)

(assert (=> bm!685540 m!8063304))

(declare-fun m!8063306 () Bool)

(assert (=> b!7462920 m!8063306))

(assert (=> start!723940 d!2298281))

(declare-fun d!2298283 () Bool)

(assert (=> d!2298283 (= (matchR!9302 lt!2622896 s!13591) (matchRSpec!4217 lt!2622896 s!13591))))

(declare-fun lt!2622981 () Unit!165911)

(assert (=> d!2298283 (= lt!2622981 (choose!57693 lt!2622896 s!13591))))

(assert (=> d!2298283 (validRegex!10052 lt!2622896)))

(assert (=> d!2298283 (= (mainMatchTheorem!4211 lt!2622896 s!13591) lt!2622981)))

(declare-fun bs!1929630 () Bool)

(assert (= bs!1929630 d!2298283))

(assert (=> bs!1929630 m!8063102))

(assert (=> bs!1929630 m!8063112))

(declare-fun m!8063308 () Bool)

(assert (=> bs!1929630 m!8063308))

(declare-fun m!8063310 () Bool)

(assert (=> bs!1929630 m!8063310))

(assert (=> b!7462616 d!2298283))

(declare-fun b!7462923 () Bool)

(declare-fun e!4453551 () Bool)

(assert (=> b!7462923 (= e!4453551 (not (= (head!15313 s!13591) (c!1379485 lt!2622892))))))

(declare-fun b!7462924 () Bool)

(declare-fun e!4453549 () Bool)

(assert (=> b!7462924 (= e!4453549 (nullable!8514 lt!2622892))))

(declare-fun bm!685542 () Bool)

(declare-fun call!685547 () Bool)

(assert (=> bm!685542 (= call!685547 (isEmpty!41144 s!13591))))

(declare-fun b!7462925 () Bool)

(declare-fun res!2993565 () Bool)

(declare-fun e!4453546 () Bool)

(assert (=> b!7462925 (=> (not res!2993565) (not e!4453546))))

(assert (=> b!7462925 (= res!2993565 (not call!685547))))

(declare-fun b!7462926 () Bool)

(assert (=> b!7462926 (= e!4453546 (= (head!15313 s!13591) (c!1379485 lt!2622892)))))

(declare-fun b!7462927 () Bool)

(declare-fun e!4453548 () Bool)

(declare-fun e!4453550 () Bool)

(assert (=> b!7462927 (= e!4453548 e!4453550)))

(declare-fun c!1379534 () Bool)

(assert (=> b!7462927 (= c!1379534 (is-EmptyLang!19538 lt!2622892))))

(declare-fun b!7462928 () Bool)

(declare-fun e!4453552 () Bool)

(declare-fun e!4453547 () Bool)

(assert (=> b!7462928 (= e!4453552 e!4453547)))

(declare-fun res!2993569 () Bool)

(assert (=> b!7462928 (=> (not res!2993569) (not e!4453547))))

(declare-fun lt!2622982 () Bool)

(assert (=> b!7462928 (= res!2993569 (not lt!2622982))))

(declare-fun b!7462929 () Bool)

(declare-fun res!2993564 () Bool)

(assert (=> b!7462929 (=> (not res!2993564) (not e!4453546))))

(assert (=> b!7462929 (= res!2993564 (isEmpty!41144 (tail!14882 s!13591)))))

(declare-fun b!7462930 () Bool)

(declare-fun res!2993568 () Bool)

(assert (=> b!7462930 (=> res!2993568 e!4453552)))

(assert (=> b!7462930 (= res!2993568 e!4453546)))

(declare-fun res!2993571 () Bool)

(assert (=> b!7462930 (=> (not res!2993571) (not e!4453546))))

(assert (=> b!7462930 (= res!2993571 lt!2622982)))

(declare-fun d!2298285 () Bool)

(assert (=> d!2298285 e!4453548))

(declare-fun c!1379535 () Bool)

(assert (=> d!2298285 (= c!1379535 (is-EmptyExpr!19538 lt!2622892))))

(assert (=> d!2298285 (= lt!2622982 e!4453549)))

(declare-fun c!1379533 () Bool)

(assert (=> d!2298285 (= c!1379533 (isEmpty!41144 s!13591))))

(assert (=> d!2298285 (validRegex!10052 lt!2622892)))

(assert (=> d!2298285 (= (matchR!9302 lt!2622892 s!13591) lt!2622982)))

(declare-fun b!7462931 () Bool)

(assert (=> b!7462931 (= e!4453548 (= lt!2622982 call!685547))))

(declare-fun b!7462932 () Bool)

(declare-fun res!2993566 () Bool)

(assert (=> b!7462932 (=> res!2993566 e!4453551)))

(assert (=> b!7462932 (= res!2993566 (not (isEmpty!41144 (tail!14882 s!13591))))))

(declare-fun b!7462933 () Bool)

(assert (=> b!7462933 (= e!4453549 (matchR!9302 (derivativeStep!5573 lt!2622892 (head!15313 s!13591)) (tail!14882 s!13591)))))

(declare-fun b!7462934 () Bool)

(assert (=> b!7462934 (= e!4453550 (not lt!2622982))))

(declare-fun b!7462935 () Bool)

(assert (=> b!7462935 (= e!4453547 e!4453551)))

(declare-fun res!2993570 () Bool)

(assert (=> b!7462935 (=> res!2993570 e!4453551)))

(assert (=> b!7462935 (= res!2993570 call!685547)))

(declare-fun b!7462936 () Bool)

(declare-fun res!2993567 () Bool)

(assert (=> b!7462936 (=> res!2993567 e!4453552)))

(assert (=> b!7462936 (= res!2993567 (not (is-ElementMatch!19538 lt!2622892)))))

(assert (=> b!7462936 (= e!4453550 e!4453552)))

(assert (= (and d!2298285 c!1379533) b!7462924))

(assert (= (and d!2298285 (not c!1379533)) b!7462933))

(assert (= (and d!2298285 c!1379535) b!7462931))

(assert (= (and d!2298285 (not c!1379535)) b!7462927))

(assert (= (and b!7462927 c!1379534) b!7462934))

(assert (= (and b!7462927 (not c!1379534)) b!7462936))

(assert (= (and b!7462936 (not res!2993567)) b!7462930))

(assert (= (and b!7462930 res!2993571) b!7462925))

(assert (= (and b!7462925 res!2993565) b!7462929))

(assert (= (and b!7462929 res!2993564) b!7462926))

(assert (= (and b!7462930 (not res!2993568)) b!7462928))

(assert (= (and b!7462928 res!2993569) b!7462935))

(assert (= (and b!7462935 (not res!2993570)) b!7462932))

(assert (= (and b!7462932 (not res!2993566)) b!7462923))

(assert (= (or b!7462931 b!7462925 b!7462935) bm!685542))

(declare-fun m!8063312 () Bool)

(assert (=> b!7462924 m!8063312))

(assert (=> b!7462926 m!8063274))

(assert (=> b!7462933 m!8063274))

(assert (=> b!7462933 m!8063274))

(declare-fun m!8063314 () Bool)

(assert (=> b!7462933 m!8063314))

(assert (=> b!7462933 m!8063278))

(assert (=> b!7462933 m!8063314))

(assert (=> b!7462933 m!8063278))

(declare-fun m!8063316 () Bool)

(assert (=> b!7462933 m!8063316))

(assert (=> bm!685542 m!8063256))

(assert (=> b!7462923 m!8063274))

(assert (=> d!2298285 m!8063256))

(declare-fun m!8063318 () Bool)

(assert (=> d!2298285 m!8063318))

(assert (=> b!7462932 m!8063278))

(assert (=> b!7462932 m!8063278))

(assert (=> b!7462932 m!8063282))

(assert (=> b!7462929 m!8063278))

(assert (=> b!7462929 m!8063278))

(assert (=> b!7462929 m!8063282))

(assert (=> b!7462616 d!2298285))

(declare-fun d!2298287 () Bool)

(assert (=> d!2298287 (= (matchR!9302 lt!2622892 s!13591) (matchRSpec!4217 lt!2622892 s!13591))))

(declare-fun lt!2622983 () Unit!165911)

(assert (=> d!2298287 (= lt!2622983 (choose!57693 lt!2622892 s!13591))))

(assert (=> d!2298287 (validRegex!10052 lt!2622892)))

(assert (=> d!2298287 (= (mainMatchTheorem!4211 lt!2622892 s!13591) lt!2622983)))

(declare-fun bs!1929631 () Bool)

(assert (= bs!1929631 d!2298287))

(assert (=> bs!1929631 m!8063104))

(assert (=> bs!1929631 m!8063106))

(declare-fun m!8063320 () Bool)

(assert (=> bs!1929631 m!8063320))

(assert (=> bs!1929631 m!8063318))

(assert (=> b!7462616 d!2298287))

(declare-fun bs!1929632 () Bool)

(declare-fun b!7462940 () Bool)

(assert (= bs!1929632 (and b!7462940 b!7462827)))

(declare-fun lambda!461782 () Int)

(assert (=> bs!1929632 (not (= lambda!461782 lambda!461779))))

(declare-fun bs!1929633 () Bool)

(assert (= bs!1929633 (and b!7462940 b!7462897)))

(assert (=> bs!1929633 (= (and (= (reg!19867 lt!2622892) (reg!19867 lt!2622894)) (= lt!2622892 lt!2622894)) (= lambda!461782 lambda!461780))))

(declare-fun bs!1929634 () Bool)

(assert (= bs!1929634 (and b!7462940 b!7462830)))

(assert (=> bs!1929634 (= (and (= (reg!19867 lt!2622892) (reg!19867 lt!2622895)) (= lt!2622892 lt!2622895)) (= lambda!461782 lambda!461778))))

(declare-fun bs!1929635 () Bool)

(assert (= bs!1929635 (and b!7462940 b!7462894)))

(assert (=> bs!1929635 (not (= lambda!461782 lambda!461781))))

(declare-fun bs!1929636 () Bool)

(assert (= bs!1929636 (and b!7462940 d!2298247)))

(assert (=> bs!1929636 (not (= lambda!461782 lambda!461767))))

(declare-fun bs!1929637 () Bool)

(assert (= bs!1929637 (and b!7462940 b!7462619)))

(assert (=> bs!1929637 (not (= lambda!461782 lambda!461746))))

(assert (=> bs!1929636 (not (= lambda!461782 lambda!461768))))

(assert (=> bs!1929637 (not (= lambda!461782 lambda!461747))))

(declare-fun bs!1929638 () Bool)

(assert (= bs!1929638 (and b!7462940 d!2298239)))

(assert (=> bs!1929638 (not (= lambda!461782 lambda!461758))))

(assert (=> b!7462940 true))

(assert (=> b!7462940 true))

(declare-fun bs!1929639 () Bool)

(declare-fun b!7462937 () Bool)

(assert (= bs!1929639 (and b!7462937 b!7462827)))

(declare-fun lambda!461783 () Int)

(assert (=> bs!1929639 (= (and (= (regOne!39588 lt!2622892) (regOne!39588 lt!2622895)) (= (regTwo!39588 lt!2622892) (regTwo!39588 lt!2622895))) (= lambda!461783 lambda!461779))))

(declare-fun bs!1929640 () Bool)

(assert (= bs!1929640 (and b!7462937 b!7462940)))

(assert (=> bs!1929640 (not (= lambda!461783 lambda!461782))))

(declare-fun bs!1929641 () Bool)

(assert (= bs!1929641 (and b!7462937 b!7462897)))

(assert (=> bs!1929641 (not (= lambda!461783 lambda!461780))))

(declare-fun bs!1929642 () Bool)

(assert (= bs!1929642 (and b!7462937 b!7462830)))

(assert (=> bs!1929642 (not (= lambda!461783 lambda!461778))))

(declare-fun bs!1929643 () Bool)

(assert (= bs!1929643 (and b!7462937 b!7462894)))

(assert (=> bs!1929643 (= (and (= (regOne!39588 lt!2622892) (regOne!39588 lt!2622894)) (= (regTwo!39588 lt!2622892) (regTwo!39588 lt!2622894))) (= lambda!461783 lambda!461781))))

(declare-fun bs!1929644 () Bool)

(assert (= bs!1929644 (and b!7462937 d!2298247)))

(assert (=> bs!1929644 (not (= lambda!461783 lambda!461767))))

(declare-fun bs!1929645 () Bool)

(assert (= bs!1929645 (and b!7462937 b!7462619)))

(assert (=> bs!1929645 (not (= lambda!461783 lambda!461746))))

(assert (=> bs!1929644 (= (and (= (regOne!39588 lt!2622892) lt!2622903) (= (regTwo!39588 lt!2622892) rTail!78)) (= lambda!461783 lambda!461768))))

(assert (=> bs!1929645 (= (and (= (regOne!39588 lt!2622892) lt!2622903) (= (regTwo!39588 lt!2622892) rTail!78)) (= lambda!461783 lambda!461747))))

(declare-fun bs!1929646 () Bool)

(assert (= bs!1929646 (and b!7462937 d!2298239)))

(assert (=> bs!1929646 (not (= lambda!461783 lambda!461758))))

(assert (=> b!7462937 true))

(assert (=> b!7462937 true))

(declare-fun e!4453557 () Bool)

(declare-fun call!685549 () Bool)

(assert (=> b!7462937 (= e!4453557 call!685549)))

(declare-fun b!7462938 () Bool)

(declare-fun c!1379537 () Bool)

(assert (=> b!7462938 (= c!1379537 (is-Union!19538 lt!2622892))))

(declare-fun e!4453555 () Bool)

(declare-fun e!4453553 () Bool)

(assert (=> b!7462938 (= e!4453555 e!4453553)))

(declare-fun b!7462939 () Bool)

(declare-fun c!1379536 () Bool)

(assert (=> b!7462939 (= c!1379536 (is-ElementMatch!19538 lt!2622892))))

(declare-fun e!4453554 () Bool)

(assert (=> b!7462939 (= e!4453554 e!4453555)))

(declare-fun e!4453556 () Bool)

(assert (=> b!7462940 (= e!4453556 call!685549)))

(declare-fun bm!685543 () Bool)

(declare-fun call!685548 () Bool)

(assert (=> bm!685543 (= call!685548 (isEmpty!41144 s!13591))))

(declare-fun b!7462941 () Bool)

(assert (=> b!7462941 (= e!4453553 e!4453557)))

(declare-fun c!1379539 () Bool)

(assert (=> b!7462941 (= c!1379539 (is-Star!19538 lt!2622892))))

(declare-fun b!7462942 () Bool)

(declare-fun e!4453559 () Bool)

(assert (=> b!7462942 (= e!4453559 call!685548)))

(declare-fun bm!685544 () Bool)

(assert (=> bm!685544 (= call!685549 (Exists!4157 (ite c!1379539 lambda!461782 lambda!461783)))))

(declare-fun b!7462943 () Bool)

(assert (=> b!7462943 (= e!4453559 e!4453554)))

(declare-fun res!2993573 () Bool)

(assert (=> b!7462943 (= res!2993573 (not (is-EmptyLang!19538 lt!2622892)))))

(assert (=> b!7462943 (=> (not res!2993573) (not e!4453554))))

(declare-fun b!7462944 () Bool)

(assert (=> b!7462944 (= e!4453555 (= s!13591 (Cons!72130 (c!1379485 lt!2622892) Nil!72130)))))

(declare-fun b!7462945 () Bool)

(declare-fun e!4453558 () Bool)

(assert (=> b!7462945 (= e!4453553 e!4453558)))

(declare-fun res!2993574 () Bool)

(assert (=> b!7462945 (= res!2993574 (matchRSpec!4217 (regOne!39589 lt!2622892) s!13591))))

(assert (=> b!7462945 (=> res!2993574 e!4453558)))

(declare-fun b!7462946 () Bool)

(declare-fun res!2993572 () Bool)

(assert (=> b!7462946 (=> res!2993572 e!4453556)))

(assert (=> b!7462946 (= res!2993572 call!685548)))

(assert (=> b!7462946 (= e!4453557 e!4453556)))

(declare-fun d!2298289 () Bool)

(declare-fun c!1379538 () Bool)

(assert (=> d!2298289 (= c!1379538 (is-EmptyExpr!19538 lt!2622892))))

(assert (=> d!2298289 (= (matchRSpec!4217 lt!2622892 s!13591) e!4453559)))

(declare-fun b!7462947 () Bool)

(assert (=> b!7462947 (= e!4453558 (matchRSpec!4217 (regTwo!39589 lt!2622892) s!13591))))

(assert (= (and d!2298289 c!1379538) b!7462942))

(assert (= (and d!2298289 (not c!1379538)) b!7462943))

(assert (= (and b!7462943 res!2993573) b!7462939))

(assert (= (and b!7462939 c!1379536) b!7462944))

(assert (= (and b!7462939 (not c!1379536)) b!7462938))

(assert (= (and b!7462938 c!1379537) b!7462945))

(assert (= (and b!7462938 (not c!1379537)) b!7462941))

(assert (= (and b!7462945 (not res!2993574)) b!7462947))

(assert (= (and b!7462941 c!1379539) b!7462946))

(assert (= (and b!7462941 (not c!1379539)) b!7462937))

(assert (= (and b!7462946 (not res!2993572)) b!7462940))

(assert (= (or b!7462940 b!7462937) bm!685544))

(assert (= (or b!7462942 b!7462946) bm!685543))

(assert (=> bm!685543 m!8063256))

(declare-fun m!8063322 () Bool)

(assert (=> bm!685544 m!8063322))

(declare-fun m!8063324 () Bool)

(assert (=> b!7462945 m!8063324))

(declare-fun m!8063326 () Bool)

(assert (=> b!7462947 m!8063326))

(assert (=> b!7462616 d!2298289))

(declare-fun b!7462948 () Bool)

(declare-fun e!4453565 () Bool)

(assert (=> b!7462948 (= e!4453565 (not (= (head!15313 s!13591) (c!1379485 lt!2622896))))))

(declare-fun b!7462949 () Bool)

(declare-fun e!4453563 () Bool)

(assert (=> b!7462949 (= e!4453563 (nullable!8514 lt!2622896))))

(declare-fun bm!685545 () Bool)

(declare-fun call!685550 () Bool)

(assert (=> bm!685545 (= call!685550 (isEmpty!41144 s!13591))))

(declare-fun b!7462950 () Bool)

(declare-fun res!2993576 () Bool)

(declare-fun e!4453560 () Bool)

(assert (=> b!7462950 (=> (not res!2993576) (not e!4453560))))

(assert (=> b!7462950 (= res!2993576 (not call!685550))))

(declare-fun b!7462951 () Bool)

(assert (=> b!7462951 (= e!4453560 (= (head!15313 s!13591) (c!1379485 lt!2622896)))))

(declare-fun b!7462952 () Bool)

(declare-fun e!4453562 () Bool)

(declare-fun e!4453564 () Bool)

(assert (=> b!7462952 (= e!4453562 e!4453564)))

(declare-fun c!1379541 () Bool)

(assert (=> b!7462952 (= c!1379541 (is-EmptyLang!19538 lt!2622896))))

(declare-fun b!7462953 () Bool)

(declare-fun e!4453566 () Bool)

(declare-fun e!4453561 () Bool)

(assert (=> b!7462953 (= e!4453566 e!4453561)))

(declare-fun res!2993580 () Bool)

(assert (=> b!7462953 (=> (not res!2993580) (not e!4453561))))

(declare-fun lt!2622984 () Bool)

(assert (=> b!7462953 (= res!2993580 (not lt!2622984))))

(declare-fun b!7462954 () Bool)

(declare-fun res!2993575 () Bool)

(assert (=> b!7462954 (=> (not res!2993575) (not e!4453560))))

(assert (=> b!7462954 (= res!2993575 (isEmpty!41144 (tail!14882 s!13591)))))

(declare-fun b!7462955 () Bool)

(declare-fun res!2993579 () Bool)

(assert (=> b!7462955 (=> res!2993579 e!4453566)))

(assert (=> b!7462955 (= res!2993579 e!4453560)))

(declare-fun res!2993582 () Bool)

(assert (=> b!7462955 (=> (not res!2993582) (not e!4453560))))

(assert (=> b!7462955 (= res!2993582 lt!2622984)))

(declare-fun d!2298291 () Bool)

(assert (=> d!2298291 e!4453562))

(declare-fun c!1379542 () Bool)

(assert (=> d!2298291 (= c!1379542 (is-EmptyExpr!19538 lt!2622896))))

(assert (=> d!2298291 (= lt!2622984 e!4453563)))

(declare-fun c!1379540 () Bool)

(assert (=> d!2298291 (= c!1379540 (isEmpty!41144 s!13591))))

(assert (=> d!2298291 (validRegex!10052 lt!2622896)))

(assert (=> d!2298291 (= (matchR!9302 lt!2622896 s!13591) lt!2622984)))

(declare-fun b!7462956 () Bool)

(assert (=> b!7462956 (= e!4453562 (= lt!2622984 call!685550))))

(declare-fun b!7462957 () Bool)

(declare-fun res!2993577 () Bool)

(assert (=> b!7462957 (=> res!2993577 e!4453565)))

(assert (=> b!7462957 (= res!2993577 (not (isEmpty!41144 (tail!14882 s!13591))))))

(declare-fun b!7462958 () Bool)

(assert (=> b!7462958 (= e!4453563 (matchR!9302 (derivativeStep!5573 lt!2622896 (head!15313 s!13591)) (tail!14882 s!13591)))))

(declare-fun b!7462959 () Bool)

(assert (=> b!7462959 (= e!4453564 (not lt!2622984))))

(declare-fun b!7462960 () Bool)

(assert (=> b!7462960 (= e!4453561 e!4453565)))

(declare-fun res!2993581 () Bool)

(assert (=> b!7462960 (=> res!2993581 e!4453565)))

(assert (=> b!7462960 (= res!2993581 call!685550)))

(declare-fun b!7462961 () Bool)

(declare-fun res!2993578 () Bool)

(assert (=> b!7462961 (=> res!2993578 e!4453566)))

(assert (=> b!7462961 (= res!2993578 (not (is-ElementMatch!19538 lt!2622896)))))

(assert (=> b!7462961 (= e!4453564 e!4453566)))

(assert (= (and d!2298291 c!1379540) b!7462949))

(assert (= (and d!2298291 (not c!1379540)) b!7462958))

(assert (= (and d!2298291 c!1379542) b!7462956))

(assert (= (and d!2298291 (not c!1379542)) b!7462952))

(assert (= (and b!7462952 c!1379541) b!7462959))

(assert (= (and b!7462952 (not c!1379541)) b!7462961))

(assert (= (and b!7462961 (not res!2993578)) b!7462955))

(assert (= (and b!7462955 res!2993582) b!7462950))

(assert (= (and b!7462950 res!2993576) b!7462954))

(assert (= (and b!7462954 res!2993575) b!7462951))

(assert (= (and b!7462955 (not res!2993579)) b!7462953))

(assert (= (and b!7462953 res!2993580) b!7462960))

(assert (= (and b!7462960 (not res!2993581)) b!7462957))

(assert (= (and b!7462957 (not res!2993577)) b!7462948))

(assert (= (or b!7462956 b!7462950 b!7462960) bm!685545))

(declare-fun m!8063328 () Bool)

(assert (=> b!7462949 m!8063328))

(assert (=> b!7462951 m!8063274))

(assert (=> b!7462958 m!8063274))

(assert (=> b!7462958 m!8063274))

(declare-fun m!8063330 () Bool)

(assert (=> b!7462958 m!8063330))

(assert (=> b!7462958 m!8063278))

(assert (=> b!7462958 m!8063330))

(assert (=> b!7462958 m!8063278))

(declare-fun m!8063332 () Bool)

(assert (=> b!7462958 m!8063332))

(assert (=> bm!685545 m!8063256))

(assert (=> b!7462948 m!8063274))

(assert (=> d!2298291 m!8063256))

(assert (=> d!2298291 m!8063310))

(assert (=> b!7462957 m!8063278))

(assert (=> b!7462957 m!8063278))

(assert (=> b!7462957 m!8063282))

(assert (=> b!7462954 m!8063278))

(assert (=> b!7462954 m!8063278))

(assert (=> b!7462954 m!8063282))

(assert (=> b!7462616 d!2298291))

(declare-fun bs!1929647 () Bool)

(declare-fun b!7462967 () Bool)

(assert (= bs!1929647 (and b!7462967 b!7462827)))

(declare-fun lambda!461784 () Int)

(assert (=> bs!1929647 (not (= lambda!461784 lambda!461779))))

(declare-fun bs!1929648 () Bool)

(assert (= bs!1929648 (and b!7462967 b!7462940)))

(assert (=> bs!1929648 (= (and (= (reg!19867 lt!2622896) (reg!19867 lt!2622892)) (= lt!2622896 lt!2622892)) (= lambda!461784 lambda!461782))))

(declare-fun bs!1929649 () Bool)

(assert (= bs!1929649 (and b!7462967 b!7462937)))

(assert (=> bs!1929649 (not (= lambda!461784 lambda!461783))))

(declare-fun bs!1929650 () Bool)

(assert (= bs!1929650 (and b!7462967 b!7462897)))

(assert (=> bs!1929650 (= (and (= (reg!19867 lt!2622896) (reg!19867 lt!2622894)) (= lt!2622896 lt!2622894)) (= lambda!461784 lambda!461780))))

(declare-fun bs!1929651 () Bool)

(assert (= bs!1929651 (and b!7462967 b!7462830)))

(assert (=> bs!1929651 (= (and (= (reg!19867 lt!2622896) (reg!19867 lt!2622895)) (= lt!2622896 lt!2622895)) (= lambda!461784 lambda!461778))))

(declare-fun bs!1929652 () Bool)

(assert (= bs!1929652 (and b!7462967 b!7462894)))

(assert (=> bs!1929652 (not (= lambda!461784 lambda!461781))))

(declare-fun bs!1929653 () Bool)

(assert (= bs!1929653 (and b!7462967 d!2298247)))

(assert (=> bs!1929653 (not (= lambda!461784 lambda!461767))))

(declare-fun bs!1929654 () Bool)

(assert (= bs!1929654 (and b!7462967 b!7462619)))

(assert (=> bs!1929654 (not (= lambda!461784 lambda!461746))))

(assert (=> bs!1929653 (not (= lambda!461784 lambda!461768))))

(assert (=> bs!1929654 (not (= lambda!461784 lambda!461747))))

(declare-fun bs!1929655 () Bool)

(assert (= bs!1929655 (and b!7462967 d!2298239)))

(assert (=> bs!1929655 (not (= lambda!461784 lambda!461758))))

(assert (=> b!7462967 true))

(assert (=> b!7462967 true))

(declare-fun bs!1929656 () Bool)

(declare-fun b!7462964 () Bool)

(assert (= bs!1929656 (and b!7462964 b!7462940)))

(declare-fun lambda!461785 () Int)

(assert (=> bs!1929656 (not (= lambda!461785 lambda!461782))))

(declare-fun bs!1929657 () Bool)

(assert (= bs!1929657 (and b!7462964 b!7462937)))

(assert (=> bs!1929657 (= (and (= (regOne!39588 lt!2622896) (regOne!39588 lt!2622892)) (= (regTwo!39588 lt!2622896) (regTwo!39588 lt!2622892))) (= lambda!461785 lambda!461783))))

(declare-fun bs!1929658 () Bool)

(assert (= bs!1929658 (and b!7462964 b!7462897)))

(assert (=> bs!1929658 (not (= lambda!461785 lambda!461780))))

(declare-fun bs!1929659 () Bool)

(assert (= bs!1929659 (and b!7462964 b!7462830)))

(assert (=> bs!1929659 (not (= lambda!461785 lambda!461778))))

(declare-fun bs!1929660 () Bool)

(assert (= bs!1929660 (and b!7462964 b!7462894)))

(assert (=> bs!1929660 (= (and (= (regOne!39588 lt!2622896) (regOne!39588 lt!2622894)) (= (regTwo!39588 lt!2622896) (regTwo!39588 lt!2622894))) (= lambda!461785 lambda!461781))))

(declare-fun bs!1929661 () Bool)

(assert (= bs!1929661 (and b!7462964 d!2298247)))

(assert (=> bs!1929661 (not (= lambda!461785 lambda!461767))))

(declare-fun bs!1929662 () Bool)

(assert (= bs!1929662 (and b!7462964 b!7462619)))

(assert (=> bs!1929662 (not (= lambda!461785 lambda!461746))))

(assert (=> bs!1929661 (= (and (= (regOne!39588 lt!2622896) lt!2622903) (= (regTwo!39588 lt!2622896) rTail!78)) (= lambda!461785 lambda!461768))))

(declare-fun bs!1929663 () Bool)

(assert (= bs!1929663 (and b!7462964 b!7462967)))

(assert (=> bs!1929663 (not (= lambda!461785 lambda!461784))))

(declare-fun bs!1929664 () Bool)

(assert (= bs!1929664 (and b!7462964 b!7462827)))

(assert (=> bs!1929664 (= (and (= (regOne!39588 lt!2622896) (regOne!39588 lt!2622895)) (= (regTwo!39588 lt!2622896) (regTwo!39588 lt!2622895))) (= lambda!461785 lambda!461779))))

(assert (=> bs!1929662 (= (and (= (regOne!39588 lt!2622896) lt!2622903) (= (regTwo!39588 lt!2622896) rTail!78)) (= lambda!461785 lambda!461747))))

(declare-fun bs!1929665 () Bool)

(assert (= bs!1929665 (and b!7462964 d!2298239)))

(assert (=> bs!1929665 (not (= lambda!461785 lambda!461758))))

(assert (=> b!7462964 true))

(assert (=> b!7462964 true))

(declare-fun e!4453571 () Bool)

(declare-fun call!685552 () Bool)

(assert (=> b!7462964 (= e!4453571 call!685552)))

(declare-fun b!7462965 () Bool)

(declare-fun c!1379544 () Bool)

(assert (=> b!7462965 (= c!1379544 (is-Union!19538 lt!2622896))))

(declare-fun e!4453569 () Bool)

(declare-fun e!4453567 () Bool)

(assert (=> b!7462965 (= e!4453569 e!4453567)))

(declare-fun b!7462966 () Bool)

(declare-fun c!1379543 () Bool)

(assert (=> b!7462966 (= c!1379543 (is-ElementMatch!19538 lt!2622896))))

(declare-fun e!4453568 () Bool)

(assert (=> b!7462966 (= e!4453568 e!4453569)))

(declare-fun e!4453570 () Bool)

(assert (=> b!7462967 (= e!4453570 call!685552)))

(declare-fun bm!685546 () Bool)

(declare-fun call!685551 () Bool)

(assert (=> bm!685546 (= call!685551 (isEmpty!41144 s!13591))))

(declare-fun b!7462968 () Bool)

(assert (=> b!7462968 (= e!4453567 e!4453571)))

(declare-fun c!1379546 () Bool)

(assert (=> b!7462968 (= c!1379546 (is-Star!19538 lt!2622896))))

(declare-fun b!7462969 () Bool)

(declare-fun e!4453573 () Bool)

(assert (=> b!7462969 (= e!4453573 call!685551)))

(declare-fun bm!685547 () Bool)

(assert (=> bm!685547 (= call!685552 (Exists!4157 (ite c!1379546 lambda!461784 lambda!461785)))))

(declare-fun b!7462970 () Bool)

(assert (=> b!7462970 (= e!4453573 e!4453568)))

(declare-fun res!2993584 () Bool)

(assert (=> b!7462970 (= res!2993584 (not (is-EmptyLang!19538 lt!2622896)))))

(assert (=> b!7462970 (=> (not res!2993584) (not e!4453568))))

(declare-fun b!7462971 () Bool)

(assert (=> b!7462971 (= e!4453569 (= s!13591 (Cons!72130 (c!1379485 lt!2622896) Nil!72130)))))

(declare-fun b!7462972 () Bool)

(declare-fun e!4453572 () Bool)

(assert (=> b!7462972 (= e!4453567 e!4453572)))

(declare-fun res!2993585 () Bool)

(assert (=> b!7462972 (= res!2993585 (matchRSpec!4217 (regOne!39589 lt!2622896) s!13591))))

(assert (=> b!7462972 (=> res!2993585 e!4453572)))

(declare-fun b!7462973 () Bool)

(declare-fun res!2993583 () Bool)

(assert (=> b!7462973 (=> res!2993583 e!4453570)))

(assert (=> b!7462973 (= res!2993583 call!685551)))

(assert (=> b!7462973 (= e!4453571 e!4453570)))

(declare-fun d!2298293 () Bool)

(declare-fun c!1379545 () Bool)

(assert (=> d!2298293 (= c!1379545 (is-EmptyExpr!19538 lt!2622896))))

(assert (=> d!2298293 (= (matchRSpec!4217 lt!2622896 s!13591) e!4453573)))

(declare-fun b!7462974 () Bool)

(assert (=> b!7462974 (= e!4453572 (matchRSpec!4217 (regTwo!39589 lt!2622896) s!13591))))

(assert (= (and d!2298293 c!1379545) b!7462969))

(assert (= (and d!2298293 (not c!1379545)) b!7462970))

(assert (= (and b!7462970 res!2993584) b!7462966))

(assert (= (and b!7462966 c!1379543) b!7462971))

(assert (= (and b!7462966 (not c!1379543)) b!7462965))

(assert (= (and b!7462965 c!1379544) b!7462972))

(assert (= (and b!7462965 (not c!1379544)) b!7462968))

(assert (= (and b!7462972 (not res!2993585)) b!7462974))

(assert (= (and b!7462968 c!1379546) b!7462973))

(assert (= (and b!7462968 (not c!1379546)) b!7462964))

(assert (= (and b!7462973 (not res!2993583)) b!7462967))

(assert (= (or b!7462967 b!7462964) bm!685547))

(assert (= (or b!7462969 b!7462973) bm!685546))

(assert (=> bm!685546 m!8063256))

(declare-fun m!8063334 () Bool)

(assert (=> bm!685547 m!8063334))

(declare-fun m!8063336 () Bool)

(assert (=> b!7462972 m!8063336))

(declare-fun m!8063338 () Bool)

(assert (=> b!7462974 m!8063338))

(assert (=> b!7462616 d!2298293))

(declare-fun b!7462995 () Bool)

(declare-fun e!4453586 () Bool)

(declare-fun tp!2163134 () Bool)

(assert (=> b!7462995 (= e!4453586 (and tp_is_empty!49365 tp!2163134))))

(assert (=> b!7462614 (= tp!2163073 e!4453586)))

(assert (= (and b!7462614 (is-Cons!72130 (t!386823 s!13591))) b!7462995))

(declare-fun b!7463008 () Bool)

(declare-fun e!4453589 () Bool)

(declare-fun tp!2163145 () Bool)

(assert (=> b!7463008 (= e!4453589 tp!2163145)))

(declare-fun b!7463007 () Bool)

(declare-fun tp!2163146 () Bool)

(declare-fun tp!2163148 () Bool)

(assert (=> b!7463007 (= e!4453589 (and tp!2163146 tp!2163148))))

(declare-fun b!7463006 () Bool)

(assert (=> b!7463006 (= e!4453589 tp_is_empty!49365)))

(assert (=> b!7462630 (= tp!2163074 e!4453589)))

(declare-fun b!7463009 () Bool)

(declare-fun tp!2163147 () Bool)

(declare-fun tp!2163149 () Bool)

(assert (=> b!7463009 (= e!4453589 (and tp!2163147 tp!2163149))))

(assert (= (and b!7462630 (is-ElementMatch!19538 (regOne!39588 r2!5783))) b!7463006))

(assert (= (and b!7462630 (is-Concat!28383 (regOne!39588 r2!5783))) b!7463007))

(assert (= (and b!7462630 (is-Star!19538 (regOne!39588 r2!5783))) b!7463008))

(assert (= (and b!7462630 (is-Union!19538 (regOne!39588 r2!5783))) b!7463009))

(declare-fun b!7463012 () Bool)

(declare-fun e!4453590 () Bool)

(declare-fun tp!2163150 () Bool)

(assert (=> b!7463012 (= e!4453590 tp!2163150)))

(declare-fun b!7463011 () Bool)

(declare-fun tp!2163151 () Bool)

(declare-fun tp!2163153 () Bool)

(assert (=> b!7463011 (= e!4453590 (and tp!2163151 tp!2163153))))

(declare-fun b!7463010 () Bool)

(assert (=> b!7463010 (= e!4453590 tp_is_empty!49365)))

(assert (=> b!7462630 (= tp!2163083 e!4453590)))

(declare-fun b!7463013 () Bool)

(declare-fun tp!2163152 () Bool)

(declare-fun tp!2163154 () Bool)

(assert (=> b!7463013 (= e!4453590 (and tp!2163152 tp!2163154))))

(assert (= (and b!7462630 (is-ElementMatch!19538 (regTwo!39588 r2!5783))) b!7463010))

(assert (= (and b!7462630 (is-Concat!28383 (regTwo!39588 r2!5783))) b!7463011))

(assert (= (and b!7462630 (is-Star!19538 (regTwo!39588 r2!5783))) b!7463012))

(assert (= (and b!7462630 (is-Union!19538 (regTwo!39588 r2!5783))) b!7463013))

(declare-fun b!7463016 () Bool)

(declare-fun e!4453591 () Bool)

(declare-fun tp!2163155 () Bool)

(assert (=> b!7463016 (= e!4453591 tp!2163155)))

(declare-fun b!7463015 () Bool)

(declare-fun tp!2163156 () Bool)

(declare-fun tp!2163158 () Bool)

(assert (=> b!7463015 (= e!4453591 (and tp!2163156 tp!2163158))))

(declare-fun b!7463014 () Bool)

(assert (=> b!7463014 (= e!4453591 tp_is_empty!49365)))

(assert (=> b!7462620 (= tp!2163080 e!4453591)))

(declare-fun b!7463017 () Bool)

(declare-fun tp!2163157 () Bool)

(declare-fun tp!2163159 () Bool)

(assert (=> b!7463017 (= e!4453591 (and tp!2163157 tp!2163159))))

(assert (= (and b!7462620 (is-ElementMatch!19538 (reg!19867 rTail!78))) b!7463014))

(assert (= (and b!7462620 (is-Concat!28383 (reg!19867 rTail!78))) b!7463015))

(assert (= (and b!7462620 (is-Star!19538 (reg!19867 rTail!78))) b!7463016))

(assert (= (and b!7462620 (is-Union!19538 (reg!19867 rTail!78))) b!7463017))

(declare-fun b!7463020 () Bool)

(declare-fun e!4453592 () Bool)

(declare-fun tp!2163160 () Bool)

(assert (=> b!7463020 (= e!4453592 tp!2163160)))

(declare-fun b!7463019 () Bool)

(declare-fun tp!2163161 () Bool)

(declare-fun tp!2163163 () Bool)

(assert (=> b!7463019 (= e!4453592 (and tp!2163161 tp!2163163))))

(declare-fun b!7463018 () Bool)

(assert (=> b!7463018 (= e!4453592 tp_is_empty!49365)))

(assert (=> b!7462623 (= tp!2163072 e!4453592)))

(declare-fun b!7463021 () Bool)

(declare-fun tp!2163162 () Bool)

(declare-fun tp!2163164 () Bool)

(assert (=> b!7463021 (= e!4453592 (and tp!2163162 tp!2163164))))

(assert (= (and b!7462623 (is-ElementMatch!19538 (reg!19867 r1!5845))) b!7463018))

(assert (= (and b!7462623 (is-Concat!28383 (reg!19867 r1!5845))) b!7463019))

(assert (= (and b!7462623 (is-Star!19538 (reg!19867 r1!5845))) b!7463020))

(assert (= (and b!7462623 (is-Union!19538 (reg!19867 r1!5845))) b!7463021))

(declare-fun b!7463024 () Bool)

(declare-fun e!4453593 () Bool)

(declare-fun tp!2163165 () Bool)

(assert (=> b!7463024 (= e!4453593 tp!2163165)))

(declare-fun b!7463023 () Bool)

(declare-fun tp!2163166 () Bool)

(declare-fun tp!2163168 () Bool)

(assert (=> b!7463023 (= e!4453593 (and tp!2163166 tp!2163168))))

(declare-fun b!7463022 () Bool)

(assert (=> b!7463022 (= e!4453593 tp_is_empty!49365)))

(assert (=> b!7462618 (= tp!2163079 e!4453593)))

(declare-fun b!7463025 () Bool)

(declare-fun tp!2163167 () Bool)

(declare-fun tp!2163169 () Bool)

(assert (=> b!7463025 (= e!4453593 (and tp!2163167 tp!2163169))))

(assert (= (and b!7462618 (is-ElementMatch!19538 (regOne!39588 rTail!78))) b!7463022))

(assert (= (and b!7462618 (is-Concat!28383 (regOne!39588 rTail!78))) b!7463023))

(assert (= (and b!7462618 (is-Star!19538 (regOne!39588 rTail!78))) b!7463024))

(assert (= (and b!7462618 (is-Union!19538 (regOne!39588 rTail!78))) b!7463025))

(declare-fun b!7463028 () Bool)

(declare-fun e!4453594 () Bool)

(declare-fun tp!2163170 () Bool)

(assert (=> b!7463028 (= e!4453594 tp!2163170)))

(declare-fun b!7463027 () Bool)

(declare-fun tp!2163171 () Bool)

(declare-fun tp!2163173 () Bool)

(assert (=> b!7463027 (= e!4453594 (and tp!2163171 tp!2163173))))

(declare-fun b!7463026 () Bool)

(assert (=> b!7463026 (= e!4453594 tp_is_empty!49365)))

(assert (=> b!7462618 (= tp!2163077 e!4453594)))

(declare-fun b!7463029 () Bool)

(declare-fun tp!2163172 () Bool)

(declare-fun tp!2163174 () Bool)

(assert (=> b!7463029 (= e!4453594 (and tp!2163172 tp!2163174))))

(assert (= (and b!7462618 (is-ElementMatch!19538 (regTwo!39588 rTail!78))) b!7463026))

(assert (= (and b!7462618 (is-Concat!28383 (regTwo!39588 rTail!78))) b!7463027))

(assert (= (and b!7462618 (is-Star!19538 (regTwo!39588 rTail!78))) b!7463028))

(assert (= (and b!7462618 (is-Union!19538 (regTwo!39588 rTail!78))) b!7463029))

(declare-fun b!7463032 () Bool)

(declare-fun e!4453595 () Bool)

(declare-fun tp!2163175 () Bool)

(assert (=> b!7463032 (= e!4453595 tp!2163175)))

(declare-fun b!7463031 () Bool)

(declare-fun tp!2163176 () Bool)

(declare-fun tp!2163178 () Bool)

(assert (=> b!7463031 (= e!4453595 (and tp!2163176 tp!2163178))))

(declare-fun b!7463030 () Bool)

(assert (=> b!7463030 (= e!4453595 tp_is_empty!49365)))

(assert (=> b!7462624 (= tp!2163070 e!4453595)))

(declare-fun b!7463033 () Bool)

(declare-fun tp!2163177 () Bool)

(declare-fun tp!2163179 () Bool)

(assert (=> b!7463033 (= e!4453595 (and tp!2163177 tp!2163179))))

(assert (= (and b!7462624 (is-ElementMatch!19538 (regOne!39589 rTail!78))) b!7463030))

(assert (= (and b!7462624 (is-Concat!28383 (regOne!39589 rTail!78))) b!7463031))

(assert (= (and b!7462624 (is-Star!19538 (regOne!39589 rTail!78))) b!7463032))

(assert (= (and b!7462624 (is-Union!19538 (regOne!39589 rTail!78))) b!7463033))

(declare-fun b!7463036 () Bool)

(declare-fun e!4453596 () Bool)

(declare-fun tp!2163180 () Bool)

(assert (=> b!7463036 (= e!4453596 tp!2163180)))

(declare-fun b!7463035 () Bool)

(declare-fun tp!2163181 () Bool)

(declare-fun tp!2163183 () Bool)

(assert (=> b!7463035 (= e!4453596 (and tp!2163181 tp!2163183))))

(declare-fun b!7463034 () Bool)

(assert (=> b!7463034 (= e!4453596 tp_is_empty!49365)))

(assert (=> b!7462624 (= tp!2163076 e!4453596)))

(declare-fun b!7463037 () Bool)

(declare-fun tp!2163182 () Bool)

(declare-fun tp!2163184 () Bool)

(assert (=> b!7463037 (= e!4453596 (and tp!2163182 tp!2163184))))

(assert (= (and b!7462624 (is-ElementMatch!19538 (regTwo!39589 rTail!78))) b!7463034))

(assert (= (and b!7462624 (is-Concat!28383 (regTwo!39589 rTail!78))) b!7463035))

(assert (= (and b!7462624 (is-Star!19538 (regTwo!39589 rTail!78))) b!7463036))

(assert (= (and b!7462624 (is-Union!19538 (regTwo!39589 rTail!78))) b!7463037))

(declare-fun b!7463040 () Bool)

(declare-fun e!4453597 () Bool)

(declare-fun tp!2163185 () Bool)

(assert (=> b!7463040 (= e!4453597 tp!2163185)))

(declare-fun b!7463039 () Bool)

(declare-fun tp!2163186 () Bool)

(declare-fun tp!2163188 () Bool)

(assert (=> b!7463039 (= e!4453597 (and tp!2163186 tp!2163188))))

(declare-fun b!7463038 () Bool)

(assert (=> b!7463038 (= e!4453597 tp_is_empty!49365)))

(assert (=> b!7462622 (= tp!2163068 e!4453597)))

(declare-fun b!7463041 () Bool)

(declare-fun tp!2163187 () Bool)

(declare-fun tp!2163189 () Bool)

(assert (=> b!7463041 (= e!4453597 (and tp!2163187 tp!2163189))))

(assert (= (and b!7462622 (is-ElementMatch!19538 (reg!19867 r2!5783))) b!7463038))

(assert (= (and b!7462622 (is-Concat!28383 (reg!19867 r2!5783))) b!7463039))

(assert (= (and b!7462622 (is-Star!19538 (reg!19867 r2!5783))) b!7463040))

(assert (= (and b!7462622 (is-Union!19538 (reg!19867 r2!5783))) b!7463041))

(declare-fun b!7463044 () Bool)

(declare-fun e!4453598 () Bool)

(declare-fun tp!2163190 () Bool)

(assert (=> b!7463044 (= e!4453598 tp!2163190)))

(declare-fun b!7463043 () Bool)

(declare-fun tp!2163191 () Bool)

(declare-fun tp!2163193 () Bool)

(assert (=> b!7463043 (= e!4453598 (and tp!2163191 tp!2163193))))

(declare-fun b!7463042 () Bool)

(assert (=> b!7463042 (= e!4453598 tp_is_empty!49365)))

(assert (=> b!7462612 (= tp!2163081 e!4453598)))

(declare-fun b!7463045 () Bool)

(declare-fun tp!2163192 () Bool)

(declare-fun tp!2163194 () Bool)

(assert (=> b!7463045 (= e!4453598 (and tp!2163192 tp!2163194))))

(assert (= (and b!7462612 (is-ElementMatch!19538 (regOne!39588 r1!5845))) b!7463042))

(assert (= (and b!7462612 (is-Concat!28383 (regOne!39588 r1!5845))) b!7463043))

(assert (= (and b!7462612 (is-Star!19538 (regOne!39588 r1!5845))) b!7463044))

(assert (= (and b!7462612 (is-Union!19538 (regOne!39588 r1!5845))) b!7463045))

(declare-fun b!7463048 () Bool)

(declare-fun e!4453599 () Bool)

(declare-fun tp!2163195 () Bool)

(assert (=> b!7463048 (= e!4453599 tp!2163195)))

(declare-fun b!7463047 () Bool)

(declare-fun tp!2163196 () Bool)

(declare-fun tp!2163198 () Bool)

(assert (=> b!7463047 (= e!4453599 (and tp!2163196 tp!2163198))))

(declare-fun b!7463046 () Bool)

(assert (=> b!7463046 (= e!4453599 tp_is_empty!49365)))

(assert (=> b!7462612 (= tp!2163071 e!4453599)))

(declare-fun b!7463049 () Bool)

(declare-fun tp!2163197 () Bool)

(declare-fun tp!2163199 () Bool)

(assert (=> b!7463049 (= e!4453599 (and tp!2163197 tp!2163199))))

(assert (= (and b!7462612 (is-ElementMatch!19538 (regTwo!39588 r1!5845))) b!7463046))

(assert (= (and b!7462612 (is-Concat!28383 (regTwo!39588 r1!5845))) b!7463047))

(assert (= (and b!7462612 (is-Star!19538 (regTwo!39588 r1!5845))) b!7463048))

(assert (= (and b!7462612 (is-Union!19538 (regTwo!39588 r1!5845))) b!7463049))

(declare-fun b!7463052 () Bool)

(declare-fun e!4453600 () Bool)

(declare-fun tp!2163200 () Bool)

(assert (=> b!7463052 (= e!4453600 tp!2163200)))

(declare-fun b!7463051 () Bool)

(declare-fun tp!2163201 () Bool)

(declare-fun tp!2163203 () Bool)

(assert (=> b!7463051 (= e!4453600 (and tp!2163201 tp!2163203))))

(declare-fun b!7463050 () Bool)

(assert (=> b!7463050 (= e!4453600 tp_is_empty!49365)))

(assert (=> b!7462615 (= tp!2163069 e!4453600)))

(declare-fun b!7463053 () Bool)

(declare-fun tp!2163202 () Bool)

(declare-fun tp!2163204 () Bool)

(assert (=> b!7463053 (= e!4453600 (and tp!2163202 tp!2163204))))

(assert (= (and b!7462615 (is-ElementMatch!19538 (regOne!39589 r1!5845))) b!7463050))

(assert (= (and b!7462615 (is-Concat!28383 (regOne!39589 r1!5845))) b!7463051))

(assert (= (and b!7462615 (is-Star!19538 (regOne!39589 r1!5845))) b!7463052))

(assert (= (and b!7462615 (is-Union!19538 (regOne!39589 r1!5845))) b!7463053))

(declare-fun b!7463056 () Bool)

(declare-fun e!4453601 () Bool)

(declare-fun tp!2163205 () Bool)

(assert (=> b!7463056 (= e!4453601 tp!2163205)))

(declare-fun b!7463055 () Bool)

(declare-fun tp!2163206 () Bool)

(declare-fun tp!2163208 () Bool)

(assert (=> b!7463055 (= e!4453601 (and tp!2163206 tp!2163208))))

(declare-fun b!7463054 () Bool)

(assert (=> b!7463054 (= e!4453601 tp_is_empty!49365)))

(assert (=> b!7462615 (= tp!2163078 e!4453601)))

(declare-fun b!7463057 () Bool)

(declare-fun tp!2163207 () Bool)

(declare-fun tp!2163209 () Bool)

(assert (=> b!7463057 (= e!4453601 (and tp!2163207 tp!2163209))))

(assert (= (and b!7462615 (is-ElementMatch!19538 (regTwo!39589 r1!5845))) b!7463054))

(assert (= (and b!7462615 (is-Concat!28383 (regTwo!39589 r1!5845))) b!7463055))

(assert (= (and b!7462615 (is-Star!19538 (regTwo!39589 r1!5845))) b!7463056))

(assert (= (and b!7462615 (is-Union!19538 (regTwo!39589 r1!5845))) b!7463057))

(declare-fun b!7463060 () Bool)

(declare-fun e!4453602 () Bool)

(declare-fun tp!2163210 () Bool)

(assert (=> b!7463060 (= e!4453602 tp!2163210)))

(declare-fun b!7463059 () Bool)

(declare-fun tp!2163211 () Bool)

(declare-fun tp!2163213 () Bool)

(assert (=> b!7463059 (= e!4453602 (and tp!2163211 tp!2163213))))

(declare-fun b!7463058 () Bool)

(assert (=> b!7463058 (= e!4453602 tp_is_empty!49365)))

(assert (=> b!7462621 (= tp!2163082 e!4453602)))

(declare-fun b!7463061 () Bool)

(declare-fun tp!2163212 () Bool)

(declare-fun tp!2163214 () Bool)

(assert (=> b!7463061 (= e!4453602 (and tp!2163212 tp!2163214))))

(assert (= (and b!7462621 (is-ElementMatch!19538 (regOne!39589 r2!5783))) b!7463058))

(assert (= (and b!7462621 (is-Concat!28383 (regOne!39589 r2!5783))) b!7463059))

(assert (= (and b!7462621 (is-Star!19538 (regOne!39589 r2!5783))) b!7463060))

(assert (= (and b!7462621 (is-Union!19538 (regOne!39589 r2!5783))) b!7463061))

(declare-fun b!7463064 () Bool)

(declare-fun e!4453603 () Bool)

(declare-fun tp!2163215 () Bool)

(assert (=> b!7463064 (= e!4453603 tp!2163215)))

(declare-fun b!7463063 () Bool)

(declare-fun tp!2163216 () Bool)

(declare-fun tp!2163218 () Bool)

(assert (=> b!7463063 (= e!4453603 (and tp!2163216 tp!2163218))))

(declare-fun b!7463062 () Bool)

(assert (=> b!7463062 (= e!4453603 tp_is_empty!49365)))

(assert (=> b!7462621 (= tp!2163075 e!4453603)))

(declare-fun b!7463065 () Bool)

(declare-fun tp!2163217 () Bool)

(declare-fun tp!2163219 () Bool)

(assert (=> b!7463065 (= e!4453603 (and tp!2163217 tp!2163219))))

(assert (= (and b!7462621 (is-ElementMatch!19538 (regTwo!39589 r2!5783))) b!7463062))

(assert (= (and b!7462621 (is-Concat!28383 (regTwo!39589 r2!5783))) b!7463063))

(assert (= (and b!7462621 (is-Star!19538 (regTwo!39589 r2!5783))) b!7463064))

(assert (= (and b!7462621 (is-Union!19538 (regTwo!39589 r2!5783))) b!7463065))

(push 1)

(assert (not b!7463051))

(assert (not b!7462929))

(assert (not bm!685534))

(assert (not d!2298243))

(assert (not d!2298261))

(assert (not bm!685519))

(assert (not bm!685547))

(assert (not bm!685518))

(assert (not bm!685544))

(assert (not b!7463019))

(assert (not b!7462779))

(assert (not b!7462869))

(assert (not b!7462948))

(assert (not b!7462945))

(assert (not b!7463031))

(assert (not bm!685539))

(assert (not bm!685528))

(assert (not b!7462738))

(assert (not b!7462876))

(assert (not b!7462875))

(assert (not b!7463008))

(assert (not bm!685543))

(assert (not b!7462904))

(assert (not d!2298283))

(assert (not d!2298253))

(assert (not b!7463047))

(assert (not b!7462837))

(assert (not d!2298275))

(assert (not b!7463053))

(assert (not b!7462947))

(assert (not b!7462923))

(assert (not b!7463013))

(assert (not b!7463024))

(assert (not b!7462958))

(assert (not b!7463025))

(assert (not b!7463027))

(assert (not b!7463020))

(assert (not b!7462886))

(assert (not bm!685545))

(assert (not b!7462972))

(assert (not b!7462866))

(assert (not bm!685522))

(assert (not d!2298291))

(assert (not b!7462883))

(assert (not b!7463063))

(assert (not b!7462926))

(assert (not b!7463060))

(assert (not d!2298285))

(assert (not d!2298287))

(assert (not b!7463028))

(assert (not d!2298247))

(assert (not bm!685542))

(assert (not b!7463007))

(assert (not b!7463015))

(assert (not b!7462932))

(assert (not b!7463055))

(assert (not bm!685546))

(assert (not b!7462924))

(assert (not b!7463040))

(assert (not b!7463061))

(assert (not b!7463043))

(assert (not b!7462920))

(assert (not b!7463045))

(assert (not b!7463044))

(assert (not b!7463037))

(assert (not b!7463048))

(assert (not bm!685521))

(assert (not b!7463033))

(assert (not b!7462911))

(assert (not b!7463029))

(assert (not b!7462881))

(assert (not bm!685529))

(assert (not b!7462880))

(assert tp_is_empty!49365)

(assert (not b!7463021))

(assert (not bm!685532))

(assert (not b!7463009))

(assert (not d!2298267))

(assert (not b!7462954))

(assert (not d!2298239))

(assert (not b!7462731))

(assert (not b!7462890))

(assert (not b!7463012))

(assert (not b!7462902))

(assert (not b!7462949))

(assert (not d!2298249))

(assert (not b!7463049))

(assert (not b!7462734))

(assert (not b!7463059))

(assert (not b!7462730))

(assert (not bm!685540))

(assert (not bm!685536))

(assert (not b!7463036))

(assert (not b!7462732))

(assert (not b!7463016))

(assert (not bm!685533))

(assert (not b!7462995))

(assert (not d!2298269))

(assert (not bm!685535))

(assert (not b!7463035))

(assert (not b!7463064))

(assert (not b!7463041))

(assert (not b!7462951))

(assert (not b!7463023))

(assert (not b!7463056))

(assert (not b!7463052))

(assert (not b!7463057))

(assert (not d!2298251))

(assert (not b!7463017))

(assert (not b!7462835))

(assert (not b!7462933))

(assert (not b!7462867))

(assert (not b!7462957))

(assert (not b!7463065))

(assert (not b!7462788))

(assert (not b!7462872))

(assert (not b!7463039))

(assert (not bm!685537))

(assert (not b!7462974))

(assert (not b!7463032))

(assert (not b!7462733))

(assert (not b!7462889))

(assert (not b!7463011))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

