; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82986 () Bool)

(assert start!82986)

(declare-fun b!924896 () Bool)

(assert (=> b!924896 true))

(assert (=> b!924896 true))

(declare-fun lambda!30416 () Int)

(declare-fun lambda!30415 () Int)

(assert (=> b!924896 (not (= lambda!30416 lambda!30415))))

(assert (=> b!924896 true))

(assert (=> b!924896 true))

(declare-fun bs!237417 () Bool)

(declare-fun b!924891 () Bool)

(assert (= bs!237417 (and b!924891 b!924896)))

(declare-datatypes ((C!5548 0))(
  ( (C!5549 (val!3022 Int)) )
))
(declare-datatypes ((Regex!2489 0))(
  ( (ElementMatch!2489 (c!150170 C!5548)) (Concat!4322 (regOne!5490 Regex!2489) (regTwo!5490 Regex!2489)) (EmptyExpr!2489) (Star!2489 (reg!2818 Regex!2489)) (EmptyLang!2489) (Union!2489 (regOne!5491 Regex!2489) (regTwo!5491 Regex!2489)) )
))
(declare-fun lt!339210 () Regex!2489)

(declare-fun lt!339205 () Regex!2489)

(declare-fun r!15766 () Regex!2489)

(declare-fun lambda!30417 () Int)

(assert (=> bs!237417 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30417 lambda!30415))))

(assert (=> bs!237417 (not (= lambda!30417 lambda!30416))))

(assert (=> b!924891 true))

(assert (=> b!924891 true))

(assert (=> b!924891 true))

(declare-fun lambda!30418 () Int)

(assert (=> bs!237417 (not (= lambda!30418 lambda!30415))))

(assert (=> bs!237417 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30418 lambda!30416))))

(assert (=> b!924891 (not (= lambda!30418 lambda!30417))))

(assert (=> b!924891 true))

(assert (=> b!924891 true))

(assert (=> b!924891 true))

(declare-fun b!924890 () Bool)

(declare-fun e!601784 () Bool)

(declare-fun tp!287568 () Bool)

(declare-fun tp!287572 () Bool)

(assert (=> b!924890 (= e!601784 (and tp!287568 tp!287572))))

(declare-fun e!601788 () Bool)

(declare-fun e!601783 () Bool)

(assert (=> b!924891 (= e!601788 e!601783)))

(declare-fun res!420477 () Bool)

(assert (=> b!924891 (=> res!420477 e!601783)))

(declare-fun lt!339208 () Bool)

(assert (=> b!924891 (= res!420477 (not lt!339208))))

(declare-fun Exists!260 (Int) Bool)

(assert (=> b!924891 (= (Exists!260 lambda!30417) (Exists!260 lambda!30418))))

(declare-datatypes ((List!9719 0))(
  ( (Nil!9703) (Cons!9703 (h!15104 C!5548) (t!100765 List!9719)) )
))
(declare-fun s!10566 () List!9719)

(declare-datatypes ((Unit!14597 0))(
  ( (Unit!14598) )
))
(declare-fun lt!339211 () Unit!14597)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!172 (Regex!2489 Regex!2489 List!9719) Unit!14597)

(assert (=> b!924891 (= lt!339211 (lemmaExistCutMatchRandMatchRSpecEquivalent!172 lt!339205 lt!339210 s!10566))))

(assert (=> b!924891 (= lt!339208 (Exists!260 lambda!30417))))

(declare-datatypes ((tuple2!10964 0))(
  ( (tuple2!10965 (_1!6308 List!9719) (_2!6308 List!9719)) )
))
(declare-datatypes ((Option!2124 0))(
  ( (None!2123) (Some!2123 (v!19540 tuple2!10964)) )
))
(declare-fun isDefined!1766 (Option!2124) Bool)

(declare-fun findConcatSeparation!230 (Regex!2489 Regex!2489 List!9719 List!9719 List!9719) Option!2124)

(assert (=> b!924891 (= lt!339208 (isDefined!1766 (findConcatSeparation!230 lt!339205 lt!339210 Nil!9703 s!10566 s!10566)))))

(declare-fun lt!339202 () Unit!14597)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!230 (Regex!2489 Regex!2489 List!9719) Unit!14597)

(assert (=> b!924891 (= lt!339202 (lemmaFindConcatSeparationEquivalentToExists!230 lt!339205 lt!339210 s!10566))))

(declare-fun lt!339207 () Regex!2489)

(declare-fun matchRSpec!290 (Regex!2489 List!9719) Bool)

(assert (=> b!924891 (matchRSpec!290 lt!339207 s!10566)))

(declare-fun lt!339204 () Unit!14597)

(declare-fun mainMatchTheorem!290 (Regex!2489 List!9719) Unit!14597)

(assert (=> b!924891 (= lt!339204 (mainMatchTheorem!290 lt!339207 s!10566))))

(declare-fun b!924892 () Bool)

(declare-fun res!420480 () Bool)

(assert (=> b!924892 (=> res!420480 e!601783)))

(declare-fun validRegex!958 (Regex!2489) Bool)

(assert (=> b!924892 (= res!420480 (not (validRegex!958 lt!339210)))))

(declare-fun res!420479 () Bool)

(declare-fun e!601789 () Bool)

(assert (=> start!82986 (=> (not res!420479) (not e!601789))))

(assert (=> start!82986 (= res!420479 (validRegex!958 r!15766))))

(assert (=> start!82986 e!601789))

(assert (=> start!82986 e!601784))

(declare-fun e!601787 () Bool)

(assert (=> start!82986 e!601787))

(declare-fun b!924893 () Bool)

(declare-fun ++!2577 (List!9719 List!9719) List!9719)

(assert (=> b!924893 (= e!601783 (= (++!2577 Nil!9703 s!10566) s!10566))))

(declare-fun b!924894 () Bool)

(declare-fun e!601785 () Bool)

(assert (=> b!924894 (= e!601789 (not e!601785))))

(declare-fun res!420476 () Bool)

(assert (=> b!924894 (=> res!420476 e!601785)))

(declare-fun lt!339209 () Bool)

(get-info :version)

(assert (=> b!924894 (= res!420476 (or lt!339209 (and ((_ is Concat!4322) r!15766) ((_ is EmptyExpr!2489) (regOne!5490 r!15766))) (and ((_ is Concat!4322) r!15766) ((_ is EmptyExpr!2489) (regTwo!5490 r!15766))) (not ((_ is Concat!4322) r!15766))))))

(assert (=> b!924894 (= lt!339209 (matchRSpec!290 r!15766 s!10566))))

(declare-fun matchR!1027 (Regex!2489 List!9719) Bool)

(assert (=> b!924894 (= lt!339209 (matchR!1027 r!15766 s!10566))))

(declare-fun lt!339201 () Unit!14597)

(assert (=> b!924894 (= lt!339201 (mainMatchTheorem!290 r!15766 s!10566))))

(declare-fun b!924895 () Bool)

(declare-fun tp!287567 () Bool)

(assert (=> b!924895 (= e!601784 tp!287567)))

(declare-fun e!601786 () Bool)

(assert (=> b!924896 (= e!601785 e!601786)))

(declare-fun res!420481 () Bool)

(assert (=> b!924896 (=> res!420481 e!601786)))

(declare-fun isEmpty!5958 (List!9719) Bool)

(assert (=> b!924896 (= res!420481 (isEmpty!5958 s!10566))))

(assert (=> b!924896 (= (Exists!260 lambda!30415) (Exists!260 lambda!30416))))

(declare-fun lt!339203 () Unit!14597)

(assert (=> b!924896 (= lt!339203 (lemmaExistCutMatchRandMatchRSpecEquivalent!172 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566))))

(assert (=> b!924896 (= (isDefined!1766 (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) Nil!9703 s!10566 s!10566)) (Exists!260 lambda!30415))))

(declare-fun lt!339206 () Unit!14597)

(assert (=> b!924896 (= lt!339206 (lemmaFindConcatSeparationEquivalentToExists!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566))))

(declare-fun b!924897 () Bool)

(assert (=> b!924897 (= e!601786 e!601788)))

(declare-fun res!420482 () Bool)

(assert (=> b!924897 (=> res!420482 e!601788)))

(assert (=> b!924897 (= res!420482 (not (matchR!1027 lt!339207 s!10566)))))

(assert (=> b!924897 (= lt!339207 (Concat!4322 lt!339205 lt!339210))))

(declare-fun removeUselessConcat!166 (Regex!2489) Regex!2489)

(assert (=> b!924897 (= lt!339210 (removeUselessConcat!166 (regTwo!5490 r!15766)))))

(assert (=> b!924897 (= lt!339205 (removeUselessConcat!166 (regOne!5490 r!15766)))))

(declare-fun b!924898 () Bool)

(declare-fun tp_is_empty!4621 () Bool)

(declare-fun tp!287571 () Bool)

(assert (=> b!924898 (= e!601787 (and tp_is_empty!4621 tp!287571))))

(declare-fun b!924899 () Bool)

(assert (=> b!924899 (= e!601784 tp_is_empty!4621)))

(declare-fun b!924900 () Bool)

(declare-fun res!420478 () Bool)

(assert (=> b!924900 (=> res!420478 e!601783)))

(assert (=> b!924900 (= res!420478 (not (validRegex!958 lt!339205)))))

(declare-fun b!924901 () Bool)

(declare-fun tp!287569 () Bool)

(declare-fun tp!287570 () Bool)

(assert (=> b!924901 (= e!601784 (and tp!287569 tp!287570))))

(assert (= (and start!82986 res!420479) b!924894))

(assert (= (and b!924894 (not res!420476)) b!924896))

(assert (= (and b!924896 (not res!420481)) b!924897))

(assert (= (and b!924897 (not res!420482)) b!924891))

(assert (= (and b!924891 (not res!420477)) b!924900))

(assert (= (and b!924900 (not res!420478)) b!924892))

(assert (= (and b!924892 (not res!420480)) b!924893))

(assert (= (and start!82986 ((_ is ElementMatch!2489) r!15766)) b!924899))

(assert (= (and start!82986 ((_ is Concat!4322) r!15766)) b!924890))

(assert (= (and start!82986 ((_ is Star!2489) r!15766)) b!924895))

(assert (= (and start!82986 ((_ is Union!2489) r!15766)) b!924901))

(assert (= (and start!82986 ((_ is Cons!9703) s!10566)) b!924898))

(declare-fun m!1150467 () Bool)

(assert (=> b!924892 m!1150467))

(declare-fun m!1150469 () Bool)

(assert (=> b!924896 m!1150469))

(declare-fun m!1150471 () Bool)

(assert (=> b!924896 m!1150471))

(declare-fun m!1150473 () Bool)

(assert (=> b!924896 m!1150473))

(assert (=> b!924896 m!1150473))

(declare-fun m!1150475 () Bool)

(assert (=> b!924896 m!1150475))

(declare-fun m!1150477 () Bool)

(assert (=> b!924896 m!1150477))

(declare-fun m!1150479 () Bool)

(assert (=> b!924896 m!1150479))

(declare-fun m!1150481 () Bool)

(assert (=> b!924896 m!1150481))

(assert (=> b!924896 m!1150469))

(declare-fun m!1150483 () Bool)

(assert (=> b!924894 m!1150483))

(declare-fun m!1150485 () Bool)

(assert (=> b!924894 m!1150485))

(declare-fun m!1150487 () Bool)

(assert (=> b!924894 m!1150487))

(declare-fun m!1150489 () Bool)

(assert (=> b!924891 m!1150489))

(declare-fun m!1150491 () Bool)

(assert (=> b!924891 m!1150491))

(declare-fun m!1150493 () Bool)

(assert (=> b!924891 m!1150493))

(assert (=> b!924891 m!1150489))

(declare-fun m!1150495 () Bool)

(assert (=> b!924891 m!1150495))

(declare-fun m!1150497 () Bool)

(assert (=> b!924891 m!1150497))

(declare-fun m!1150499 () Bool)

(assert (=> b!924891 m!1150499))

(declare-fun m!1150501 () Bool)

(assert (=> b!924891 m!1150501))

(declare-fun m!1150503 () Bool)

(assert (=> b!924891 m!1150503))

(assert (=> b!924891 m!1150501))

(declare-fun m!1150505 () Bool)

(assert (=> b!924893 m!1150505))

(declare-fun m!1150507 () Bool)

(assert (=> b!924897 m!1150507))

(declare-fun m!1150509 () Bool)

(assert (=> b!924897 m!1150509))

(declare-fun m!1150511 () Bool)

(assert (=> b!924897 m!1150511))

(declare-fun m!1150513 () Bool)

(assert (=> start!82986 m!1150513))

(declare-fun m!1150515 () Bool)

(assert (=> b!924900 m!1150515))

(check-sat (not b!924890) (not b!924893) (not b!924896) (not b!924895) (not b!924897) (not start!82986) (not b!924891) tp_is_empty!4621 (not b!924892) (not b!924894) (not b!924898) (not b!924900) (not b!924901))
(check-sat)
(get-model)

(declare-fun d!280966 () Bool)

(declare-fun choose!5692 (Int) Bool)

(assert (=> d!280966 (= (Exists!260 lambda!30416) (choose!5692 lambda!30416))))

(declare-fun bs!237418 () Bool)

(assert (= bs!237418 d!280966))

(declare-fun m!1150517 () Bool)

(assert (=> bs!237418 m!1150517))

(assert (=> b!924896 d!280966))

(declare-fun d!280968 () Bool)

(declare-fun isEmpty!5960 (Option!2124) Bool)

(assert (=> d!280968 (= (isDefined!1766 (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) Nil!9703 s!10566 s!10566)) (not (isEmpty!5960 (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) Nil!9703 s!10566 s!10566))))))

(declare-fun bs!237419 () Bool)

(assert (= bs!237419 d!280968))

(assert (=> bs!237419 m!1150469))

(declare-fun m!1150519 () Bool)

(assert (=> bs!237419 m!1150519))

(assert (=> b!924896 d!280968))

(declare-fun bs!237426 () Bool)

(declare-fun d!280970 () Bool)

(assert (= bs!237426 (and d!280970 b!924896)))

(declare-fun lambda!30427 () Int)

(assert (=> bs!237426 (= lambda!30427 lambda!30415)))

(assert (=> bs!237426 (not (= lambda!30427 lambda!30416))))

(declare-fun bs!237427 () Bool)

(assert (= bs!237427 (and d!280970 b!924891)))

(assert (=> bs!237427 (= (and (= (regOne!5490 r!15766) lt!339205) (= (regTwo!5490 r!15766) lt!339210)) (= lambda!30427 lambda!30417))))

(assert (=> bs!237427 (not (= lambda!30427 lambda!30418))))

(assert (=> d!280970 true))

(assert (=> d!280970 true))

(assert (=> d!280970 true))

(assert (=> d!280970 (= (isDefined!1766 (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) Nil!9703 s!10566 s!10566)) (Exists!260 lambda!30427))))

(declare-fun lt!339220 () Unit!14597)

(declare-fun choose!5693 (Regex!2489 Regex!2489 List!9719) Unit!14597)

(assert (=> d!280970 (= lt!339220 (choose!5693 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566))))

(assert (=> d!280970 (validRegex!958 (regOne!5490 r!15766))))

(assert (=> d!280970 (= (lemmaFindConcatSeparationEquivalentToExists!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566) lt!339220)))

(declare-fun bs!237428 () Bool)

(assert (= bs!237428 d!280970))

(assert (=> bs!237428 m!1150469))

(declare-fun m!1150541 () Bool)

(assert (=> bs!237428 m!1150541))

(assert (=> bs!237428 m!1150469))

(assert (=> bs!237428 m!1150471))

(declare-fun m!1150543 () Bool)

(assert (=> bs!237428 m!1150543))

(declare-fun m!1150545 () Bool)

(assert (=> bs!237428 m!1150545))

(assert (=> b!924896 d!280970))

(declare-fun b!925072 () Bool)

(declare-fun e!601889 () Option!2124)

(assert (=> b!925072 (= e!601889 (Some!2123 (tuple2!10965 Nil!9703 s!10566)))))

(declare-fun b!925073 () Bool)

(declare-fun e!601893 () Option!2124)

(assert (=> b!925073 (= e!601889 e!601893)))

(declare-fun c!150208 () Bool)

(assert (=> b!925073 (= c!150208 ((_ is Nil!9703) s!10566))))

(declare-fun b!925074 () Bool)

(declare-fun lt!339236 () Unit!14597)

(declare-fun lt!339235 () Unit!14597)

(assert (=> b!925074 (= lt!339236 lt!339235)))

(assert (=> b!925074 (= (++!2577 (++!2577 Nil!9703 (Cons!9703 (h!15104 s!10566) Nil!9703)) (t!100765 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!192 (List!9719 C!5548 List!9719 List!9719) Unit!14597)

(assert (=> b!925074 (= lt!339235 (lemmaMoveElementToOtherListKeepsConcatEq!192 Nil!9703 (h!15104 s!10566) (t!100765 s!10566) s!10566))))

(assert (=> b!925074 (= e!601893 (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) (++!2577 Nil!9703 (Cons!9703 (h!15104 s!10566) Nil!9703)) (t!100765 s!10566) s!10566))))

(declare-fun b!925075 () Bool)

(assert (=> b!925075 (= e!601893 None!2123)))

(declare-fun b!925076 () Bool)

(declare-fun res!420575 () Bool)

(declare-fun e!601892 () Bool)

(assert (=> b!925076 (=> (not res!420575) (not e!601892))))

(declare-fun lt!339234 () Option!2124)

(declare-fun get!3177 (Option!2124) tuple2!10964)

(assert (=> b!925076 (= res!420575 (matchR!1027 (regOne!5490 r!15766) (_1!6308 (get!3177 lt!339234))))))

(declare-fun b!925077 () Bool)

(declare-fun e!601890 () Bool)

(assert (=> b!925077 (= e!601890 (matchR!1027 (regTwo!5490 r!15766) s!10566))))

(declare-fun b!925078 () Bool)

(assert (=> b!925078 (= e!601892 (= (++!2577 (_1!6308 (get!3177 lt!339234)) (_2!6308 (get!3177 lt!339234))) s!10566))))

(declare-fun b!925079 () Bool)

(declare-fun e!601891 () Bool)

(assert (=> b!925079 (= e!601891 (not (isDefined!1766 lt!339234)))))

(declare-fun d!280978 () Bool)

(assert (=> d!280978 e!601891))

(declare-fun res!420577 () Bool)

(assert (=> d!280978 (=> res!420577 e!601891)))

(assert (=> d!280978 (= res!420577 e!601892)))

(declare-fun res!420576 () Bool)

(assert (=> d!280978 (=> (not res!420576) (not e!601892))))

(assert (=> d!280978 (= res!420576 (isDefined!1766 lt!339234))))

(assert (=> d!280978 (= lt!339234 e!601889)))

(declare-fun c!150209 () Bool)

(assert (=> d!280978 (= c!150209 e!601890)))

(declare-fun res!420579 () Bool)

(assert (=> d!280978 (=> (not res!420579) (not e!601890))))

(assert (=> d!280978 (= res!420579 (matchR!1027 (regOne!5490 r!15766) Nil!9703))))

(assert (=> d!280978 (validRegex!958 (regOne!5490 r!15766))))

(assert (=> d!280978 (= (findConcatSeparation!230 (regOne!5490 r!15766) (regTwo!5490 r!15766) Nil!9703 s!10566 s!10566) lt!339234)))

(declare-fun b!925080 () Bool)

(declare-fun res!420578 () Bool)

(assert (=> b!925080 (=> (not res!420578) (not e!601892))))

(assert (=> b!925080 (= res!420578 (matchR!1027 (regTwo!5490 r!15766) (_2!6308 (get!3177 lt!339234))))))

(assert (= (and d!280978 res!420579) b!925077))

(assert (= (and d!280978 c!150209) b!925072))

(assert (= (and d!280978 (not c!150209)) b!925073))

(assert (= (and b!925073 c!150208) b!925075))

(assert (= (and b!925073 (not c!150208)) b!925074))

(assert (= (and d!280978 res!420576) b!925076))

(assert (= (and b!925076 res!420575) b!925080))

(assert (= (and b!925080 res!420578) b!925078))

(assert (= (and d!280978 (not res!420577)) b!925079))

(declare-fun m!1150585 () Bool)

(assert (=> b!925080 m!1150585))

(declare-fun m!1150587 () Bool)

(assert (=> b!925080 m!1150587))

(declare-fun m!1150589 () Bool)

(assert (=> b!925077 m!1150589))

(declare-fun m!1150591 () Bool)

(assert (=> b!925074 m!1150591))

(assert (=> b!925074 m!1150591))

(declare-fun m!1150593 () Bool)

(assert (=> b!925074 m!1150593))

(declare-fun m!1150595 () Bool)

(assert (=> b!925074 m!1150595))

(assert (=> b!925074 m!1150591))

(declare-fun m!1150597 () Bool)

(assert (=> b!925074 m!1150597))

(declare-fun m!1150599 () Bool)

(assert (=> d!280978 m!1150599))

(declare-fun m!1150601 () Bool)

(assert (=> d!280978 m!1150601))

(assert (=> d!280978 m!1150545))

(assert (=> b!925079 m!1150599))

(assert (=> b!925076 m!1150585))

(declare-fun m!1150603 () Bool)

(assert (=> b!925076 m!1150603))

(assert (=> b!925078 m!1150585))

(declare-fun m!1150605 () Bool)

(assert (=> b!925078 m!1150605))

(assert (=> b!924896 d!280978))

(declare-fun bs!237479 () Bool)

(declare-fun d!280998 () Bool)

(assert (= bs!237479 (and d!280998 b!924891)))

(declare-fun lambda!30446 () Int)

(assert (=> bs!237479 (= (and (= (regOne!5490 r!15766) lt!339205) (= (regTwo!5490 r!15766) lt!339210)) (= lambda!30446 lambda!30417))))

(declare-fun bs!237480 () Bool)

(assert (= bs!237480 (and d!280998 b!924896)))

(assert (=> bs!237480 (not (= lambda!30446 lambda!30416))))

(assert (=> bs!237479 (not (= lambda!30446 lambda!30418))))

(declare-fun bs!237481 () Bool)

(assert (= bs!237481 (and d!280998 d!280970)))

(assert (=> bs!237481 (= lambda!30446 lambda!30427)))

(assert (=> bs!237480 (= lambda!30446 lambda!30415)))

(assert (=> d!280998 true))

(assert (=> d!280998 true))

(assert (=> d!280998 true))

(declare-fun bs!237482 () Bool)

(assert (= bs!237482 d!280998))

(declare-fun lambda!30447 () Int)

(assert (=> bs!237482 (not (= lambda!30447 lambda!30446))))

(assert (=> bs!237479 (not (= lambda!30447 lambda!30417))))

(assert (=> bs!237480 (= lambda!30447 lambda!30416)))

(assert (=> bs!237479 (= (and (= (regOne!5490 r!15766) lt!339205) (= (regTwo!5490 r!15766) lt!339210)) (= lambda!30447 lambda!30418))))

(assert (=> bs!237481 (not (= lambda!30447 lambda!30427))))

(assert (=> bs!237480 (not (= lambda!30447 lambda!30415))))

(assert (=> d!280998 true))

(assert (=> d!280998 true))

(assert (=> d!280998 true))

(assert (=> d!280998 (= (Exists!260 lambda!30446) (Exists!260 lambda!30447))))

(declare-fun lt!339259 () Unit!14597)

(declare-fun choose!5694 (Regex!2489 Regex!2489 List!9719) Unit!14597)

(assert (=> d!280998 (= lt!339259 (choose!5694 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566))))

(assert (=> d!280998 (validRegex!958 (regOne!5490 r!15766))))

(assert (=> d!280998 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!172 (regOne!5490 r!15766) (regTwo!5490 r!15766) s!10566) lt!339259)))

(declare-fun m!1150701 () Bool)

(assert (=> bs!237482 m!1150701))

(declare-fun m!1150703 () Bool)

(assert (=> bs!237482 m!1150703))

(declare-fun m!1150705 () Bool)

(assert (=> bs!237482 m!1150705))

(assert (=> bs!237482 m!1150545))

(assert (=> b!924896 d!280998))

(declare-fun d!281024 () Bool)

(assert (=> d!281024 (= (Exists!260 lambda!30415) (choose!5692 lambda!30415))))

(declare-fun bs!237483 () Bool)

(assert (= bs!237483 d!281024))

(declare-fun m!1150707 () Bool)

(assert (=> bs!237483 m!1150707))

(assert (=> b!924896 d!281024))

(declare-fun d!281026 () Bool)

(assert (=> d!281026 (= (isEmpty!5958 s!10566) ((_ is Nil!9703) s!10566))))

(assert (=> b!924896 d!281026))

(declare-fun d!281028 () Bool)

(declare-fun res!420642 () Bool)

(declare-fun e!601986 () Bool)

(assert (=> d!281028 (=> res!420642 e!601986)))

(assert (=> d!281028 (= res!420642 ((_ is ElementMatch!2489) lt!339205))))

(assert (=> d!281028 (= (validRegex!958 lt!339205) e!601986)))

(declare-fun b!925257 () Bool)

(declare-fun e!601988 () Bool)

(declare-fun e!601991 () Bool)

(assert (=> b!925257 (= e!601988 e!601991)))

(declare-fun c!150250 () Bool)

(assert (=> b!925257 (= c!150250 ((_ is Union!2489) lt!339205))))

(declare-fun b!925258 () Bool)

(declare-fun e!601992 () Bool)

(declare-fun call!56579 () Bool)

(assert (=> b!925258 (= e!601992 call!56579)))

(declare-fun bm!56572 () Bool)

(assert (=> bm!56572 (= call!56579 (validRegex!958 (ite c!150250 (regTwo!5491 lt!339205) (regTwo!5490 lt!339205))))))

(declare-fun b!925259 () Bool)

(declare-fun e!601989 () Bool)

(assert (=> b!925259 (= e!601988 e!601989)))

(declare-fun res!420644 () Bool)

(declare-fun nullable!701 (Regex!2489) Bool)

(assert (=> b!925259 (= res!420644 (not (nullable!701 (reg!2818 lt!339205))))))

(assert (=> b!925259 (=> (not res!420644) (not e!601989))))

(declare-fun b!925260 () Bool)

(declare-fun call!56577 () Bool)

(assert (=> b!925260 (= e!601989 call!56577)))

(declare-fun b!925261 () Bool)

(declare-fun res!420645 () Bool)

(declare-fun e!601990 () Bool)

(assert (=> b!925261 (=> (not res!420645) (not e!601990))))

(declare-fun call!56578 () Bool)

(assert (=> b!925261 (= res!420645 call!56578)))

(assert (=> b!925261 (= e!601991 e!601990)))

(declare-fun b!925262 () Bool)

(declare-fun e!601987 () Bool)

(assert (=> b!925262 (= e!601987 e!601992)))

(declare-fun res!420641 () Bool)

(assert (=> b!925262 (=> (not res!420641) (not e!601992))))

(assert (=> b!925262 (= res!420641 call!56578)))

(declare-fun b!925263 () Bool)

(assert (=> b!925263 (= e!601986 e!601988)))

(declare-fun c!150251 () Bool)

(assert (=> b!925263 (= c!150251 ((_ is Star!2489) lt!339205))))

(declare-fun b!925264 () Bool)

(declare-fun res!420643 () Bool)

(assert (=> b!925264 (=> res!420643 e!601987)))

(assert (=> b!925264 (= res!420643 (not ((_ is Concat!4322) lt!339205)))))

(assert (=> b!925264 (= e!601991 e!601987)))

(declare-fun b!925265 () Bool)

(assert (=> b!925265 (= e!601990 call!56579)))

(declare-fun bm!56573 () Bool)

(assert (=> bm!56573 (= call!56578 call!56577)))

(declare-fun bm!56574 () Bool)

(assert (=> bm!56574 (= call!56577 (validRegex!958 (ite c!150251 (reg!2818 lt!339205) (ite c!150250 (regOne!5491 lt!339205) (regOne!5490 lt!339205)))))))

(assert (= (and d!281028 (not res!420642)) b!925263))

(assert (= (and b!925263 c!150251) b!925259))

(assert (= (and b!925263 (not c!150251)) b!925257))

(assert (= (and b!925259 res!420644) b!925260))

(assert (= (and b!925257 c!150250) b!925261))

(assert (= (and b!925257 (not c!150250)) b!925264))

(assert (= (and b!925261 res!420645) b!925265))

(assert (= (and b!925264 (not res!420643)) b!925262))

(assert (= (and b!925262 res!420641) b!925258))

(assert (= (or b!925265 b!925258) bm!56572))

(assert (= (or b!925261 b!925262) bm!56573))

(assert (= (or b!925260 bm!56573) bm!56574))

(declare-fun m!1150719 () Bool)

(assert (=> bm!56572 m!1150719))

(declare-fun m!1150721 () Bool)

(assert (=> b!925259 m!1150721))

(declare-fun m!1150723 () Bool)

(assert (=> bm!56574 m!1150723))

(assert (=> b!924900 d!281028))

(declare-fun bs!237484 () Bool)

(declare-fun b!925301 () Bool)

(assert (= bs!237484 (and b!925301 d!280998)))

(declare-fun lambda!30452 () Int)

(assert (=> bs!237484 (not (= lambda!30452 lambda!30447))))

(assert (=> bs!237484 (not (= lambda!30452 lambda!30446))))

(declare-fun bs!237485 () Bool)

(assert (= bs!237485 (and b!925301 b!924891)))

(assert (=> bs!237485 (not (= lambda!30452 lambda!30417))))

(declare-fun bs!237486 () Bool)

(assert (= bs!237486 (and b!925301 b!924896)))

(assert (=> bs!237486 (not (= lambda!30452 lambda!30416))))

(assert (=> bs!237485 (not (= lambda!30452 lambda!30418))))

(declare-fun bs!237487 () Bool)

(assert (= bs!237487 (and b!925301 d!280970)))

(assert (=> bs!237487 (not (= lambda!30452 lambda!30427))))

(assert (=> bs!237486 (not (= lambda!30452 lambda!30415))))

(assert (=> b!925301 true))

(assert (=> b!925301 true))

(declare-fun bs!237488 () Bool)

(declare-fun b!925302 () Bool)

(assert (= bs!237488 (and b!925302 d!280998)))

(declare-fun lambda!30453 () Int)

(assert (=> bs!237488 (= lambda!30453 lambda!30447)))

(assert (=> bs!237488 (not (= lambda!30453 lambda!30446))))

(declare-fun bs!237489 () Bool)

(assert (= bs!237489 (and b!925302 b!924891)))

(assert (=> bs!237489 (not (= lambda!30453 lambda!30417))))

(declare-fun bs!237490 () Bool)

(assert (= bs!237490 (and b!925302 b!925301)))

(assert (=> bs!237490 (not (= lambda!30453 lambda!30452))))

(declare-fun bs!237491 () Bool)

(assert (= bs!237491 (and b!925302 b!924896)))

(assert (=> bs!237491 (= lambda!30453 lambda!30416)))

(assert (=> bs!237489 (= (and (= (regOne!5490 r!15766) lt!339205) (= (regTwo!5490 r!15766) lt!339210)) (= lambda!30453 lambda!30418))))

(declare-fun bs!237492 () Bool)

(assert (= bs!237492 (and b!925302 d!280970)))

(assert (=> bs!237492 (not (= lambda!30453 lambda!30427))))

(assert (=> bs!237491 (not (= lambda!30453 lambda!30415))))

(assert (=> b!925302 true))

(assert (=> b!925302 true))

(declare-fun b!925298 () Bool)

(declare-fun e!602015 () Bool)

(declare-fun call!56584 () Bool)

(assert (=> b!925298 (= e!602015 call!56584)))

(declare-fun b!925299 () Bool)

(declare-fun c!150262 () Bool)

(assert (=> b!925299 (= c!150262 ((_ is Union!2489) r!15766))))

(declare-fun e!602017 () Bool)

(declare-fun e!602011 () Bool)

(assert (=> b!925299 (= e!602017 e!602011)))

(declare-fun b!925300 () Bool)

(declare-fun e!602013 () Bool)

(assert (=> b!925300 (= e!602013 (matchRSpec!290 (regTwo!5491 r!15766) s!10566))))

(declare-fun e!602014 () Bool)

(declare-fun call!56585 () Bool)

(assert (=> b!925301 (= e!602014 call!56585)))

(declare-fun d!281030 () Bool)

(declare-fun c!150260 () Bool)

(assert (=> d!281030 (= c!150260 ((_ is EmptyExpr!2489) r!15766))))

(assert (=> d!281030 (= (matchRSpec!290 r!15766 s!10566) e!602015)))

(declare-fun e!602012 () Bool)

(assert (=> b!925302 (= e!602012 call!56585)))

(declare-fun c!150261 () Bool)

(declare-fun bm!56579 () Bool)

(assert (=> bm!56579 (= call!56585 (Exists!260 (ite c!150261 lambda!30452 lambda!30453)))))

(declare-fun bm!56580 () Bool)

(assert (=> bm!56580 (= call!56584 (isEmpty!5958 s!10566))))

(declare-fun b!925303 () Bool)

(declare-fun e!602016 () Bool)

(assert (=> b!925303 (= e!602015 e!602016)))

(declare-fun res!420664 () Bool)

(assert (=> b!925303 (= res!420664 (not ((_ is EmptyLang!2489) r!15766)))))

(assert (=> b!925303 (=> (not res!420664) (not e!602016))))

(declare-fun b!925304 () Bool)

(declare-fun res!420662 () Bool)

(assert (=> b!925304 (=> res!420662 e!602014)))

(assert (=> b!925304 (= res!420662 call!56584)))

(assert (=> b!925304 (= e!602012 e!602014)))

(declare-fun b!925305 () Bool)

(assert (=> b!925305 (= e!602011 e!602013)))

(declare-fun res!420663 () Bool)

(assert (=> b!925305 (= res!420663 (matchRSpec!290 (regOne!5491 r!15766) s!10566))))

(assert (=> b!925305 (=> res!420663 e!602013)))

(declare-fun b!925306 () Bool)

(assert (=> b!925306 (= e!602017 (= s!10566 (Cons!9703 (c!150170 r!15766) Nil!9703)))))

(declare-fun b!925307 () Bool)

(assert (=> b!925307 (= e!602011 e!602012)))

(assert (=> b!925307 (= c!150261 ((_ is Star!2489) r!15766))))

(declare-fun b!925308 () Bool)

(declare-fun c!150263 () Bool)

(assert (=> b!925308 (= c!150263 ((_ is ElementMatch!2489) r!15766))))

(assert (=> b!925308 (= e!602016 e!602017)))

(assert (= (and d!281030 c!150260) b!925298))

(assert (= (and d!281030 (not c!150260)) b!925303))

(assert (= (and b!925303 res!420664) b!925308))

(assert (= (and b!925308 c!150263) b!925306))

(assert (= (and b!925308 (not c!150263)) b!925299))

(assert (= (and b!925299 c!150262) b!925305))

(assert (= (and b!925299 (not c!150262)) b!925307))

(assert (= (and b!925305 (not res!420663)) b!925300))

(assert (= (and b!925307 c!150261) b!925304))

(assert (= (and b!925307 (not c!150261)) b!925302))

(assert (= (and b!925304 (not res!420662)) b!925301))

(assert (= (or b!925301 b!925302) bm!56579))

(assert (= (or b!925298 b!925304) bm!56580))

(declare-fun m!1150725 () Bool)

(assert (=> b!925300 m!1150725))

(declare-fun m!1150727 () Bool)

(assert (=> bm!56579 m!1150727))

(assert (=> bm!56580 m!1150477))

(declare-fun m!1150729 () Bool)

(assert (=> b!925305 m!1150729))

(assert (=> b!924894 d!281030))

(declare-fun d!281032 () Bool)

(declare-fun e!602033 () Bool)

(assert (=> d!281032 e!602033))

(declare-fun c!150270 () Bool)

(assert (=> d!281032 (= c!150270 ((_ is EmptyExpr!2489) r!15766))))

(declare-fun lt!339264 () Bool)

(declare-fun e!602038 () Bool)

(assert (=> d!281032 (= lt!339264 e!602038)))

(declare-fun c!150271 () Bool)

(assert (=> d!281032 (= c!150271 (isEmpty!5958 s!10566))))

(assert (=> d!281032 (validRegex!958 r!15766)))

(assert (=> d!281032 (= (matchR!1027 r!15766 s!10566) lt!339264)))

(declare-fun b!925337 () Bool)

(declare-fun res!420687 () Bool)

(declare-fun e!602036 () Bool)

(assert (=> b!925337 (=> (not res!420687) (not e!602036))))

(declare-fun tail!1226 (List!9719) List!9719)

(assert (=> b!925337 (= res!420687 (isEmpty!5958 (tail!1226 s!10566)))))

(declare-fun b!925338 () Bool)

(declare-fun res!420681 () Bool)

(declare-fun e!602032 () Bool)

(assert (=> b!925338 (=> res!420681 e!602032)))

(assert (=> b!925338 (= res!420681 (not (isEmpty!5958 (tail!1226 s!10566))))))

(declare-fun b!925339 () Bool)

(declare-fun call!56588 () Bool)

(assert (=> b!925339 (= e!602033 (= lt!339264 call!56588))))

(declare-fun bm!56583 () Bool)

(assert (=> bm!56583 (= call!56588 (isEmpty!5958 s!10566))))

(declare-fun b!925340 () Bool)

(declare-fun head!1664 (List!9719) C!5548)

(assert (=> b!925340 (= e!602036 (= (head!1664 s!10566) (c!150170 r!15766)))))

(declare-fun b!925341 () Bool)

(declare-fun e!602037 () Bool)

(assert (=> b!925341 (= e!602033 e!602037)))

(declare-fun c!150272 () Bool)

(assert (=> b!925341 (= c!150272 ((_ is EmptyLang!2489) r!15766))))

(declare-fun b!925342 () Bool)

(declare-fun e!602035 () Bool)

(assert (=> b!925342 (= e!602035 e!602032)))

(declare-fun res!420683 () Bool)

(assert (=> b!925342 (=> res!420683 e!602032)))

(assert (=> b!925342 (= res!420683 call!56588)))

(declare-fun b!925343 () Bool)

(declare-fun e!602034 () Bool)

(assert (=> b!925343 (= e!602034 e!602035)))

(declare-fun res!420686 () Bool)

(assert (=> b!925343 (=> (not res!420686) (not e!602035))))

(assert (=> b!925343 (= res!420686 (not lt!339264))))

(declare-fun b!925344 () Bool)

(assert (=> b!925344 (= e!602032 (not (= (head!1664 s!10566) (c!150170 r!15766))))))

(declare-fun b!925345 () Bool)

(assert (=> b!925345 (= e!602038 (nullable!701 r!15766))))

(declare-fun b!925346 () Bool)

(declare-fun res!420688 () Bool)

(assert (=> b!925346 (=> (not res!420688) (not e!602036))))

(assert (=> b!925346 (= res!420688 (not call!56588))))

(declare-fun b!925347 () Bool)

(declare-fun res!420684 () Bool)

(assert (=> b!925347 (=> res!420684 e!602034)))

(assert (=> b!925347 (= res!420684 e!602036)))

(declare-fun res!420685 () Bool)

(assert (=> b!925347 (=> (not res!420685) (not e!602036))))

(assert (=> b!925347 (= res!420685 lt!339264)))

(declare-fun b!925348 () Bool)

(declare-fun res!420682 () Bool)

(assert (=> b!925348 (=> res!420682 e!602034)))

(assert (=> b!925348 (= res!420682 (not ((_ is ElementMatch!2489) r!15766)))))

(assert (=> b!925348 (= e!602037 e!602034)))

(declare-fun b!925349 () Bool)

(assert (=> b!925349 (= e!602037 (not lt!339264))))

(declare-fun b!925350 () Bool)

(declare-fun derivativeStep!511 (Regex!2489 C!5548) Regex!2489)

(assert (=> b!925350 (= e!602038 (matchR!1027 (derivativeStep!511 r!15766 (head!1664 s!10566)) (tail!1226 s!10566)))))

(assert (= (and d!281032 c!150271) b!925345))

(assert (= (and d!281032 (not c!150271)) b!925350))

(assert (= (and d!281032 c!150270) b!925339))

(assert (= (and d!281032 (not c!150270)) b!925341))

(assert (= (and b!925341 c!150272) b!925349))

(assert (= (and b!925341 (not c!150272)) b!925348))

(assert (= (and b!925348 (not res!420682)) b!925347))

(assert (= (and b!925347 res!420685) b!925346))

(assert (= (and b!925346 res!420688) b!925337))

(assert (= (and b!925337 res!420687) b!925340))

(assert (= (and b!925347 (not res!420684)) b!925343))

(assert (= (and b!925343 res!420686) b!925342))

(assert (= (and b!925342 (not res!420683)) b!925338))

(assert (= (and b!925338 (not res!420681)) b!925344))

(assert (= (or b!925339 b!925342 b!925346) bm!56583))

(declare-fun m!1150731 () Bool)

(assert (=> b!925350 m!1150731))

(assert (=> b!925350 m!1150731))

(declare-fun m!1150733 () Bool)

(assert (=> b!925350 m!1150733))

(declare-fun m!1150735 () Bool)

(assert (=> b!925350 m!1150735))

(assert (=> b!925350 m!1150733))

(assert (=> b!925350 m!1150735))

(declare-fun m!1150737 () Bool)

(assert (=> b!925350 m!1150737))

(assert (=> b!925344 m!1150731))

(declare-fun m!1150739 () Bool)

(assert (=> b!925345 m!1150739))

(assert (=> b!925340 m!1150731))

(assert (=> d!281032 m!1150477))

(assert (=> d!281032 m!1150513))

(assert (=> b!925337 m!1150735))

(assert (=> b!925337 m!1150735))

(declare-fun m!1150741 () Bool)

(assert (=> b!925337 m!1150741))

(assert (=> bm!56583 m!1150477))

(assert (=> b!925338 m!1150735))

(assert (=> b!925338 m!1150735))

(assert (=> b!925338 m!1150741))

(assert (=> b!924894 d!281032))

(declare-fun d!281034 () Bool)

(assert (=> d!281034 (= (matchR!1027 r!15766 s!10566) (matchRSpec!290 r!15766 s!10566))))

(declare-fun lt!339267 () Unit!14597)

(declare-fun choose!5695 (Regex!2489 List!9719) Unit!14597)

(assert (=> d!281034 (= lt!339267 (choose!5695 r!15766 s!10566))))

(assert (=> d!281034 (validRegex!958 r!15766)))

(assert (=> d!281034 (= (mainMatchTheorem!290 r!15766 s!10566) lt!339267)))

(declare-fun bs!237493 () Bool)

(assert (= bs!237493 d!281034))

(assert (=> bs!237493 m!1150485))

(assert (=> bs!237493 m!1150483))

(declare-fun m!1150743 () Bool)

(assert (=> bs!237493 m!1150743))

(assert (=> bs!237493 m!1150513))

(assert (=> b!924894 d!281034))

(declare-fun d!281036 () Bool)

(declare-fun res!420690 () Bool)

(declare-fun e!602039 () Bool)

(assert (=> d!281036 (=> res!420690 e!602039)))

(assert (=> d!281036 (= res!420690 ((_ is ElementMatch!2489) r!15766))))

(assert (=> d!281036 (= (validRegex!958 r!15766) e!602039)))

(declare-fun b!925351 () Bool)

(declare-fun e!602041 () Bool)

(declare-fun e!602044 () Bool)

(assert (=> b!925351 (= e!602041 e!602044)))

(declare-fun c!150273 () Bool)

(assert (=> b!925351 (= c!150273 ((_ is Union!2489) r!15766))))

(declare-fun b!925352 () Bool)

(declare-fun e!602045 () Bool)

(declare-fun call!56591 () Bool)

(assert (=> b!925352 (= e!602045 call!56591)))

(declare-fun bm!56584 () Bool)

(assert (=> bm!56584 (= call!56591 (validRegex!958 (ite c!150273 (regTwo!5491 r!15766) (regTwo!5490 r!15766))))))

(declare-fun b!925353 () Bool)

(declare-fun e!602042 () Bool)

(assert (=> b!925353 (= e!602041 e!602042)))

(declare-fun res!420692 () Bool)

(assert (=> b!925353 (= res!420692 (not (nullable!701 (reg!2818 r!15766))))))

(assert (=> b!925353 (=> (not res!420692) (not e!602042))))

(declare-fun b!925354 () Bool)

(declare-fun call!56589 () Bool)

(assert (=> b!925354 (= e!602042 call!56589)))

(declare-fun b!925355 () Bool)

(declare-fun res!420693 () Bool)

(declare-fun e!602043 () Bool)

(assert (=> b!925355 (=> (not res!420693) (not e!602043))))

(declare-fun call!56590 () Bool)

(assert (=> b!925355 (= res!420693 call!56590)))

(assert (=> b!925355 (= e!602044 e!602043)))

(declare-fun b!925356 () Bool)

(declare-fun e!602040 () Bool)

(assert (=> b!925356 (= e!602040 e!602045)))

(declare-fun res!420689 () Bool)

(assert (=> b!925356 (=> (not res!420689) (not e!602045))))

(assert (=> b!925356 (= res!420689 call!56590)))

(declare-fun b!925357 () Bool)

(assert (=> b!925357 (= e!602039 e!602041)))

(declare-fun c!150274 () Bool)

(assert (=> b!925357 (= c!150274 ((_ is Star!2489) r!15766))))

(declare-fun b!925358 () Bool)

(declare-fun res!420691 () Bool)

(assert (=> b!925358 (=> res!420691 e!602040)))

(assert (=> b!925358 (= res!420691 (not ((_ is Concat!4322) r!15766)))))

(assert (=> b!925358 (= e!602044 e!602040)))

(declare-fun b!925359 () Bool)

(assert (=> b!925359 (= e!602043 call!56591)))

(declare-fun bm!56585 () Bool)

(assert (=> bm!56585 (= call!56590 call!56589)))

(declare-fun bm!56586 () Bool)

(assert (=> bm!56586 (= call!56589 (validRegex!958 (ite c!150274 (reg!2818 r!15766) (ite c!150273 (regOne!5491 r!15766) (regOne!5490 r!15766)))))))

(assert (= (and d!281036 (not res!420690)) b!925357))

(assert (= (and b!925357 c!150274) b!925353))

(assert (= (and b!925357 (not c!150274)) b!925351))

(assert (= (and b!925353 res!420692) b!925354))

(assert (= (and b!925351 c!150273) b!925355))

(assert (= (and b!925351 (not c!150273)) b!925358))

(assert (= (and b!925355 res!420693) b!925359))

(assert (= (and b!925358 (not res!420691)) b!925356))

(assert (= (and b!925356 res!420689) b!925352))

(assert (= (or b!925359 b!925352) bm!56584))

(assert (= (or b!925355 b!925356) bm!56585))

(assert (= (or b!925354 bm!56585) bm!56586))

(declare-fun m!1150745 () Bool)

(assert (=> bm!56584 m!1150745))

(declare-fun m!1150747 () Bool)

(assert (=> b!925353 m!1150747))

(declare-fun m!1150749 () Bool)

(assert (=> bm!56586 m!1150749))

(assert (=> start!82986 d!281036))

(declare-fun d!281038 () Bool)

(declare-fun e!602051 () Bool)

(assert (=> d!281038 e!602051))

(declare-fun res!420698 () Bool)

(assert (=> d!281038 (=> (not res!420698) (not e!602051))))

(declare-fun lt!339270 () List!9719)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1387 (List!9719) (InoxSet C!5548))

(assert (=> d!281038 (= res!420698 (= (content!1387 lt!339270) ((_ map or) (content!1387 Nil!9703) (content!1387 s!10566))))))

(declare-fun e!602050 () List!9719)

(assert (=> d!281038 (= lt!339270 e!602050)))

(declare-fun c!150277 () Bool)

(assert (=> d!281038 (= c!150277 ((_ is Nil!9703) Nil!9703))))

(assert (=> d!281038 (= (++!2577 Nil!9703 s!10566) lt!339270)))

(declare-fun b!925368 () Bool)

(assert (=> b!925368 (= e!602050 s!10566)))

(declare-fun b!925370 () Bool)

(declare-fun res!420699 () Bool)

(assert (=> b!925370 (=> (not res!420699) (not e!602051))))

(declare-fun size!7888 (List!9719) Int)

(assert (=> b!925370 (= res!420699 (= (size!7888 lt!339270) (+ (size!7888 Nil!9703) (size!7888 s!10566))))))

(declare-fun b!925371 () Bool)

(assert (=> b!925371 (= e!602051 (or (not (= s!10566 Nil!9703)) (= lt!339270 Nil!9703)))))

(declare-fun b!925369 () Bool)

(assert (=> b!925369 (= e!602050 (Cons!9703 (h!15104 Nil!9703) (++!2577 (t!100765 Nil!9703) s!10566)))))

(assert (= (and d!281038 c!150277) b!925368))

(assert (= (and d!281038 (not c!150277)) b!925369))

(assert (= (and d!281038 res!420698) b!925370))

(assert (= (and b!925370 res!420699) b!925371))

(declare-fun m!1150751 () Bool)

(assert (=> d!281038 m!1150751))

(declare-fun m!1150753 () Bool)

(assert (=> d!281038 m!1150753))

(declare-fun m!1150755 () Bool)

(assert (=> d!281038 m!1150755))

(declare-fun m!1150757 () Bool)

(assert (=> b!925370 m!1150757))

(declare-fun m!1150759 () Bool)

(assert (=> b!925370 m!1150759))

(declare-fun m!1150761 () Bool)

(assert (=> b!925370 m!1150761))

(declare-fun m!1150763 () Bool)

(assert (=> b!925369 m!1150763))

(assert (=> b!924893 d!281038))

(declare-fun d!281040 () Bool)

(declare-fun e!602053 () Bool)

(assert (=> d!281040 e!602053))

(declare-fun c!150278 () Bool)

(assert (=> d!281040 (= c!150278 ((_ is EmptyExpr!2489) lt!339207))))

(declare-fun lt!339271 () Bool)

(declare-fun e!602058 () Bool)

(assert (=> d!281040 (= lt!339271 e!602058)))

(declare-fun c!150279 () Bool)

(assert (=> d!281040 (= c!150279 (isEmpty!5958 s!10566))))

(assert (=> d!281040 (validRegex!958 lt!339207)))

(assert (=> d!281040 (= (matchR!1027 lt!339207 s!10566) lt!339271)))

(declare-fun b!925372 () Bool)

(declare-fun res!420706 () Bool)

(declare-fun e!602056 () Bool)

(assert (=> b!925372 (=> (not res!420706) (not e!602056))))

(assert (=> b!925372 (= res!420706 (isEmpty!5958 (tail!1226 s!10566)))))

(declare-fun b!925373 () Bool)

(declare-fun res!420700 () Bool)

(declare-fun e!602052 () Bool)

(assert (=> b!925373 (=> res!420700 e!602052)))

(assert (=> b!925373 (= res!420700 (not (isEmpty!5958 (tail!1226 s!10566))))))

(declare-fun b!925374 () Bool)

(declare-fun call!56592 () Bool)

(assert (=> b!925374 (= e!602053 (= lt!339271 call!56592))))

(declare-fun bm!56587 () Bool)

(assert (=> bm!56587 (= call!56592 (isEmpty!5958 s!10566))))

(declare-fun b!925375 () Bool)

(assert (=> b!925375 (= e!602056 (= (head!1664 s!10566) (c!150170 lt!339207)))))

(declare-fun b!925376 () Bool)

(declare-fun e!602057 () Bool)

(assert (=> b!925376 (= e!602053 e!602057)))

(declare-fun c!150280 () Bool)

(assert (=> b!925376 (= c!150280 ((_ is EmptyLang!2489) lt!339207))))

(declare-fun b!925377 () Bool)

(declare-fun e!602055 () Bool)

(assert (=> b!925377 (= e!602055 e!602052)))

(declare-fun res!420702 () Bool)

(assert (=> b!925377 (=> res!420702 e!602052)))

(assert (=> b!925377 (= res!420702 call!56592)))

(declare-fun b!925378 () Bool)

(declare-fun e!602054 () Bool)

(assert (=> b!925378 (= e!602054 e!602055)))

(declare-fun res!420705 () Bool)

(assert (=> b!925378 (=> (not res!420705) (not e!602055))))

(assert (=> b!925378 (= res!420705 (not lt!339271))))

(declare-fun b!925379 () Bool)

(assert (=> b!925379 (= e!602052 (not (= (head!1664 s!10566) (c!150170 lt!339207))))))

(declare-fun b!925380 () Bool)

(assert (=> b!925380 (= e!602058 (nullable!701 lt!339207))))

(declare-fun b!925381 () Bool)

(declare-fun res!420707 () Bool)

(assert (=> b!925381 (=> (not res!420707) (not e!602056))))

(assert (=> b!925381 (= res!420707 (not call!56592))))

(declare-fun b!925382 () Bool)

(declare-fun res!420703 () Bool)

(assert (=> b!925382 (=> res!420703 e!602054)))

(assert (=> b!925382 (= res!420703 e!602056)))

(declare-fun res!420704 () Bool)

(assert (=> b!925382 (=> (not res!420704) (not e!602056))))

(assert (=> b!925382 (= res!420704 lt!339271)))

(declare-fun b!925383 () Bool)

(declare-fun res!420701 () Bool)

(assert (=> b!925383 (=> res!420701 e!602054)))

(assert (=> b!925383 (= res!420701 (not ((_ is ElementMatch!2489) lt!339207)))))

(assert (=> b!925383 (= e!602057 e!602054)))

(declare-fun b!925384 () Bool)

(assert (=> b!925384 (= e!602057 (not lt!339271))))

(declare-fun b!925385 () Bool)

(assert (=> b!925385 (= e!602058 (matchR!1027 (derivativeStep!511 lt!339207 (head!1664 s!10566)) (tail!1226 s!10566)))))

(assert (= (and d!281040 c!150279) b!925380))

(assert (= (and d!281040 (not c!150279)) b!925385))

(assert (= (and d!281040 c!150278) b!925374))

(assert (= (and d!281040 (not c!150278)) b!925376))

(assert (= (and b!925376 c!150280) b!925384))

(assert (= (and b!925376 (not c!150280)) b!925383))

(assert (= (and b!925383 (not res!420701)) b!925382))

(assert (= (and b!925382 res!420704) b!925381))

(assert (= (and b!925381 res!420707) b!925372))

(assert (= (and b!925372 res!420706) b!925375))

(assert (= (and b!925382 (not res!420703)) b!925378))

(assert (= (and b!925378 res!420705) b!925377))

(assert (= (and b!925377 (not res!420702)) b!925373))

(assert (= (and b!925373 (not res!420700)) b!925379))

(assert (= (or b!925374 b!925377 b!925381) bm!56587))

(assert (=> b!925385 m!1150731))

(assert (=> b!925385 m!1150731))

(declare-fun m!1150765 () Bool)

(assert (=> b!925385 m!1150765))

(assert (=> b!925385 m!1150735))

(assert (=> b!925385 m!1150765))

(assert (=> b!925385 m!1150735))

(declare-fun m!1150767 () Bool)

(assert (=> b!925385 m!1150767))

(assert (=> b!925379 m!1150731))

(declare-fun m!1150769 () Bool)

(assert (=> b!925380 m!1150769))

(assert (=> b!925375 m!1150731))

(assert (=> d!281040 m!1150477))

(declare-fun m!1150771 () Bool)

(assert (=> d!281040 m!1150771))

(assert (=> b!925372 m!1150735))

(assert (=> b!925372 m!1150735))

(assert (=> b!925372 m!1150741))

(assert (=> bm!56587 m!1150477))

(assert (=> b!925373 m!1150735))

(assert (=> b!925373 m!1150735))

(assert (=> b!925373 m!1150741))

(assert (=> b!924897 d!281040))

(declare-fun b!925408 () Bool)

(declare-fun e!602072 () Regex!2489)

(declare-fun call!56604 () Regex!2489)

(assert (=> b!925408 (= e!602072 call!56604)))

(declare-fun b!925409 () Bool)

(declare-fun e!602074 () Bool)

(declare-fun lt!339274 () Regex!2489)

(assert (=> b!925409 (= e!602074 (= (nullable!701 lt!339274) (nullable!701 (regTwo!5490 r!15766))))))

(declare-fun bm!56598 () Bool)

(declare-fun call!56605 () Regex!2489)

(declare-fun c!150294 () Bool)

(assert (=> bm!56598 (= call!56605 (removeUselessConcat!166 (ite c!150294 (regOne!5490 (regTwo!5490 r!15766)) (regOne!5491 (regTwo!5490 r!15766)))))))

(declare-fun b!925410 () Bool)

(declare-fun e!602075 () Regex!2489)

(assert (=> b!925410 (= e!602075 (regTwo!5490 r!15766))))

(declare-fun b!925411 () Bool)

(declare-fun e!602076 () Regex!2489)

(declare-fun e!602071 () Regex!2489)

(assert (=> b!925411 (= e!602076 e!602071)))

(declare-fun c!150295 () Bool)

(assert (=> b!925411 (= c!150295 ((_ is Union!2489) (regTwo!5490 r!15766)))))

(declare-fun b!925413 () Bool)

(assert (=> b!925413 (= c!150294 ((_ is Concat!4322) (regTwo!5490 r!15766)))))

(declare-fun e!602073 () Regex!2489)

(assert (=> b!925413 (= e!602073 e!602076)))

(declare-fun bm!56599 () Bool)

(declare-fun call!56603 () Regex!2489)

(declare-fun call!56606 () Regex!2489)

(assert (=> bm!56599 (= call!56603 call!56606)))

(declare-fun b!925414 () Bool)

(assert (=> b!925414 (= e!602076 (Concat!4322 call!56605 call!56606))))

(declare-fun c!150293 () Bool)

(declare-fun c!150291 () Bool)

(declare-fun bm!56600 () Bool)

(assert (=> bm!56600 (= call!56604 (removeUselessConcat!166 (ite c!150291 (regTwo!5490 (regTwo!5490 r!15766)) (ite c!150293 (regOne!5490 (regTwo!5490 r!15766)) (ite c!150294 (regTwo!5490 (regTwo!5490 r!15766)) (ite c!150295 (regTwo!5491 (regTwo!5490 r!15766)) (reg!2818 (regTwo!5490 r!15766))))))))))

(declare-fun bm!56601 () Bool)

(declare-fun call!56607 () Regex!2489)

(assert (=> bm!56601 (= call!56606 call!56607)))

(declare-fun b!925415 () Bool)

(assert (=> b!925415 (= e!602075 (Star!2489 call!56603))))

(declare-fun d!281042 () Bool)

(assert (=> d!281042 e!602074))

(declare-fun res!420710 () Bool)

(assert (=> d!281042 (=> (not res!420710) (not e!602074))))

(assert (=> d!281042 (= res!420710 (validRegex!958 lt!339274))))

(assert (=> d!281042 (= lt!339274 e!602072)))

(assert (=> d!281042 (= c!150291 (and ((_ is Concat!4322) (regTwo!5490 r!15766)) ((_ is EmptyExpr!2489) (regOne!5490 (regTwo!5490 r!15766)))))))

(assert (=> d!281042 (validRegex!958 (regTwo!5490 r!15766))))

(assert (=> d!281042 (= (removeUselessConcat!166 (regTwo!5490 r!15766)) lt!339274)))

(declare-fun b!925412 () Bool)

(assert (=> b!925412 (= e!602072 e!602073)))

(assert (=> b!925412 (= c!150293 (and ((_ is Concat!4322) (regTwo!5490 r!15766)) ((_ is EmptyExpr!2489) (regTwo!5490 (regTwo!5490 r!15766)))))))

(declare-fun bm!56602 () Bool)

(assert (=> bm!56602 (= call!56607 call!56604)))

(declare-fun b!925416 () Bool)

(declare-fun c!150292 () Bool)

(assert (=> b!925416 (= c!150292 ((_ is Star!2489) (regTwo!5490 r!15766)))))

(assert (=> b!925416 (= e!602071 e!602075)))

(declare-fun b!925417 () Bool)

(assert (=> b!925417 (= e!602071 (Union!2489 call!56605 call!56603))))

(declare-fun b!925418 () Bool)

(assert (=> b!925418 (= e!602073 call!56607)))

(assert (= (and d!281042 c!150291) b!925408))

(assert (= (and d!281042 (not c!150291)) b!925412))

(assert (= (and b!925412 c!150293) b!925418))

(assert (= (and b!925412 (not c!150293)) b!925413))

(assert (= (and b!925413 c!150294) b!925414))

(assert (= (and b!925413 (not c!150294)) b!925411))

(assert (= (and b!925411 c!150295) b!925417))

(assert (= (and b!925411 (not c!150295)) b!925416))

(assert (= (and b!925416 c!150292) b!925415))

(assert (= (and b!925416 (not c!150292)) b!925410))

(assert (= (or b!925417 b!925415) bm!56599))

(assert (= (or b!925414 bm!56599) bm!56601))

(assert (= (or b!925414 b!925417) bm!56598))

(assert (= (or b!925418 bm!56601) bm!56602))

(assert (= (or b!925408 bm!56602) bm!56600))

(assert (= (and d!281042 res!420710) b!925409))

(declare-fun m!1150773 () Bool)

(assert (=> b!925409 m!1150773))

(declare-fun m!1150775 () Bool)

(assert (=> b!925409 m!1150775))

(declare-fun m!1150777 () Bool)

(assert (=> bm!56598 m!1150777))

(declare-fun m!1150779 () Bool)

(assert (=> bm!56600 m!1150779))

(declare-fun m!1150781 () Bool)

(assert (=> d!281042 m!1150781))

(declare-fun m!1150783 () Bool)

(assert (=> d!281042 m!1150783))

(assert (=> b!924897 d!281042))

(declare-fun b!925419 () Bool)

(declare-fun e!602078 () Regex!2489)

(declare-fun call!56609 () Regex!2489)

(assert (=> b!925419 (= e!602078 call!56609)))

(declare-fun b!925420 () Bool)

(declare-fun e!602080 () Bool)

(declare-fun lt!339275 () Regex!2489)

(assert (=> b!925420 (= e!602080 (= (nullable!701 lt!339275) (nullable!701 (regOne!5490 r!15766))))))

(declare-fun bm!56603 () Bool)

(declare-fun call!56610 () Regex!2489)

(declare-fun c!150299 () Bool)

(assert (=> bm!56603 (= call!56610 (removeUselessConcat!166 (ite c!150299 (regOne!5490 (regOne!5490 r!15766)) (regOne!5491 (regOne!5490 r!15766)))))))

(declare-fun b!925421 () Bool)

(declare-fun e!602081 () Regex!2489)

(assert (=> b!925421 (= e!602081 (regOne!5490 r!15766))))

(declare-fun b!925422 () Bool)

(declare-fun e!602082 () Regex!2489)

(declare-fun e!602077 () Regex!2489)

(assert (=> b!925422 (= e!602082 e!602077)))

(declare-fun c!150300 () Bool)

(assert (=> b!925422 (= c!150300 ((_ is Union!2489) (regOne!5490 r!15766)))))

(declare-fun b!925424 () Bool)

(assert (=> b!925424 (= c!150299 ((_ is Concat!4322) (regOne!5490 r!15766)))))

(declare-fun e!602079 () Regex!2489)

(assert (=> b!925424 (= e!602079 e!602082)))

(declare-fun bm!56604 () Bool)

(declare-fun call!56608 () Regex!2489)

(declare-fun call!56611 () Regex!2489)

(assert (=> bm!56604 (= call!56608 call!56611)))

(declare-fun b!925425 () Bool)

(assert (=> b!925425 (= e!602082 (Concat!4322 call!56610 call!56611))))

(declare-fun c!150298 () Bool)

(declare-fun c!150296 () Bool)

(declare-fun bm!56605 () Bool)

(assert (=> bm!56605 (= call!56609 (removeUselessConcat!166 (ite c!150296 (regTwo!5490 (regOne!5490 r!15766)) (ite c!150298 (regOne!5490 (regOne!5490 r!15766)) (ite c!150299 (regTwo!5490 (regOne!5490 r!15766)) (ite c!150300 (regTwo!5491 (regOne!5490 r!15766)) (reg!2818 (regOne!5490 r!15766))))))))))

(declare-fun bm!56606 () Bool)

(declare-fun call!56612 () Regex!2489)

(assert (=> bm!56606 (= call!56611 call!56612)))

(declare-fun b!925426 () Bool)

(assert (=> b!925426 (= e!602081 (Star!2489 call!56608))))

(declare-fun d!281044 () Bool)

(assert (=> d!281044 e!602080))

(declare-fun res!420711 () Bool)

(assert (=> d!281044 (=> (not res!420711) (not e!602080))))

(assert (=> d!281044 (= res!420711 (validRegex!958 lt!339275))))

(assert (=> d!281044 (= lt!339275 e!602078)))

(assert (=> d!281044 (= c!150296 (and ((_ is Concat!4322) (regOne!5490 r!15766)) ((_ is EmptyExpr!2489) (regOne!5490 (regOne!5490 r!15766)))))))

(assert (=> d!281044 (validRegex!958 (regOne!5490 r!15766))))

(assert (=> d!281044 (= (removeUselessConcat!166 (regOne!5490 r!15766)) lt!339275)))

(declare-fun b!925423 () Bool)

(assert (=> b!925423 (= e!602078 e!602079)))

(assert (=> b!925423 (= c!150298 (and ((_ is Concat!4322) (regOne!5490 r!15766)) ((_ is EmptyExpr!2489) (regTwo!5490 (regOne!5490 r!15766)))))))

(declare-fun bm!56607 () Bool)

(assert (=> bm!56607 (= call!56612 call!56609)))

(declare-fun b!925427 () Bool)

(declare-fun c!150297 () Bool)

(assert (=> b!925427 (= c!150297 ((_ is Star!2489) (regOne!5490 r!15766)))))

(assert (=> b!925427 (= e!602077 e!602081)))

(declare-fun b!925428 () Bool)

(assert (=> b!925428 (= e!602077 (Union!2489 call!56610 call!56608))))

(declare-fun b!925429 () Bool)

(assert (=> b!925429 (= e!602079 call!56612)))

(assert (= (and d!281044 c!150296) b!925419))

(assert (= (and d!281044 (not c!150296)) b!925423))

(assert (= (and b!925423 c!150298) b!925429))

(assert (= (and b!925423 (not c!150298)) b!925424))

(assert (= (and b!925424 c!150299) b!925425))

(assert (= (and b!925424 (not c!150299)) b!925422))

(assert (= (and b!925422 c!150300) b!925428))

(assert (= (and b!925422 (not c!150300)) b!925427))

(assert (= (and b!925427 c!150297) b!925426))

(assert (= (and b!925427 (not c!150297)) b!925421))

(assert (= (or b!925428 b!925426) bm!56604))

(assert (= (or b!925425 bm!56604) bm!56606))

(assert (= (or b!925425 b!925428) bm!56603))

(assert (= (or b!925429 bm!56606) bm!56607))

(assert (= (or b!925419 bm!56607) bm!56605))

(assert (= (and d!281044 res!420711) b!925420))

(declare-fun m!1150785 () Bool)

(assert (=> b!925420 m!1150785))

(declare-fun m!1150787 () Bool)

(assert (=> b!925420 m!1150787))

(declare-fun m!1150789 () Bool)

(assert (=> bm!56603 m!1150789))

(declare-fun m!1150791 () Bool)

(assert (=> bm!56605 m!1150791))

(declare-fun m!1150793 () Bool)

(assert (=> d!281044 m!1150793))

(assert (=> d!281044 m!1150545))

(assert (=> b!924897 d!281044))

(declare-fun d!281046 () Bool)

(declare-fun res!420713 () Bool)

(declare-fun e!602083 () Bool)

(assert (=> d!281046 (=> res!420713 e!602083)))

(assert (=> d!281046 (= res!420713 ((_ is ElementMatch!2489) lt!339210))))

(assert (=> d!281046 (= (validRegex!958 lt!339210) e!602083)))

(declare-fun b!925430 () Bool)

(declare-fun e!602085 () Bool)

(declare-fun e!602088 () Bool)

(assert (=> b!925430 (= e!602085 e!602088)))

(declare-fun c!150301 () Bool)

(assert (=> b!925430 (= c!150301 ((_ is Union!2489) lt!339210))))

(declare-fun b!925431 () Bool)

(declare-fun e!602089 () Bool)

(declare-fun call!56615 () Bool)

(assert (=> b!925431 (= e!602089 call!56615)))

(declare-fun bm!56608 () Bool)

(assert (=> bm!56608 (= call!56615 (validRegex!958 (ite c!150301 (regTwo!5491 lt!339210) (regTwo!5490 lt!339210))))))

(declare-fun b!925432 () Bool)

(declare-fun e!602086 () Bool)

(assert (=> b!925432 (= e!602085 e!602086)))

(declare-fun res!420715 () Bool)

(assert (=> b!925432 (= res!420715 (not (nullable!701 (reg!2818 lt!339210))))))

(assert (=> b!925432 (=> (not res!420715) (not e!602086))))

(declare-fun b!925433 () Bool)

(declare-fun call!56613 () Bool)

(assert (=> b!925433 (= e!602086 call!56613)))

(declare-fun b!925434 () Bool)

(declare-fun res!420716 () Bool)

(declare-fun e!602087 () Bool)

(assert (=> b!925434 (=> (not res!420716) (not e!602087))))

(declare-fun call!56614 () Bool)

(assert (=> b!925434 (= res!420716 call!56614)))

(assert (=> b!925434 (= e!602088 e!602087)))

(declare-fun b!925435 () Bool)

(declare-fun e!602084 () Bool)

(assert (=> b!925435 (= e!602084 e!602089)))

(declare-fun res!420712 () Bool)

(assert (=> b!925435 (=> (not res!420712) (not e!602089))))

(assert (=> b!925435 (= res!420712 call!56614)))

(declare-fun b!925436 () Bool)

(assert (=> b!925436 (= e!602083 e!602085)))

(declare-fun c!150302 () Bool)

(assert (=> b!925436 (= c!150302 ((_ is Star!2489) lt!339210))))

(declare-fun b!925437 () Bool)

(declare-fun res!420714 () Bool)

(assert (=> b!925437 (=> res!420714 e!602084)))

(assert (=> b!925437 (= res!420714 (not ((_ is Concat!4322) lt!339210)))))

(assert (=> b!925437 (= e!602088 e!602084)))

(declare-fun b!925438 () Bool)

(assert (=> b!925438 (= e!602087 call!56615)))

(declare-fun bm!56609 () Bool)

(assert (=> bm!56609 (= call!56614 call!56613)))

(declare-fun bm!56610 () Bool)

(assert (=> bm!56610 (= call!56613 (validRegex!958 (ite c!150302 (reg!2818 lt!339210) (ite c!150301 (regOne!5491 lt!339210) (regOne!5490 lt!339210)))))))

(assert (= (and d!281046 (not res!420713)) b!925436))

(assert (= (and b!925436 c!150302) b!925432))

(assert (= (and b!925436 (not c!150302)) b!925430))

(assert (= (and b!925432 res!420715) b!925433))

(assert (= (and b!925430 c!150301) b!925434))

(assert (= (and b!925430 (not c!150301)) b!925437))

(assert (= (and b!925434 res!420716) b!925438))

(assert (= (and b!925437 (not res!420714)) b!925435))

(assert (= (and b!925435 res!420712) b!925431))

(assert (= (or b!925438 b!925431) bm!56608))

(assert (= (or b!925434 b!925435) bm!56609))

(assert (= (or b!925433 bm!56609) bm!56610))

(declare-fun m!1150795 () Bool)

(assert (=> bm!56608 m!1150795))

(declare-fun m!1150797 () Bool)

(assert (=> b!925432 m!1150797))

(declare-fun m!1150799 () Bool)

(assert (=> bm!56610 m!1150799))

(assert (=> b!924892 d!281046))

(declare-fun b!925439 () Bool)

(declare-fun e!602090 () Option!2124)

(assert (=> b!925439 (= e!602090 (Some!2123 (tuple2!10965 Nil!9703 s!10566)))))

(declare-fun b!925440 () Bool)

(declare-fun e!602094 () Option!2124)

(assert (=> b!925440 (= e!602090 e!602094)))

(declare-fun c!150303 () Bool)

(assert (=> b!925440 (= c!150303 ((_ is Nil!9703) s!10566))))

(declare-fun b!925441 () Bool)

(declare-fun lt!339278 () Unit!14597)

(declare-fun lt!339277 () Unit!14597)

(assert (=> b!925441 (= lt!339278 lt!339277)))

(assert (=> b!925441 (= (++!2577 (++!2577 Nil!9703 (Cons!9703 (h!15104 s!10566) Nil!9703)) (t!100765 s!10566)) s!10566)))

(assert (=> b!925441 (= lt!339277 (lemmaMoveElementToOtherListKeepsConcatEq!192 Nil!9703 (h!15104 s!10566) (t!100765 s!10566) s!10566))))

(assert (=> b!925441 (= e!602094 (findConcatSeparation!230 lt!339205 lt!339210 (++!2577 Nil!9703 (Cons!9703 (h!15104 s!10566) Nil!9703)) (t!100765 s!10566) s!10566))))

(declare-fun b!925442 () Bool)

(assert (=> b!925442 (= e!602094 None!2123)))

(declare-fun b!925443 () Bool)

(declare-fun res!420717 () Bool)

(declare-fun e!602093 () Bool)

(assert (=> b!925443 (=> (not res!420717) (not e!602093))))

(declare-fun lt!339276 () Option!2124)

(assert (=> b!925443 (= res!420717 (matchR!1027 lt!339205 (_1!6308 (get!3177 lt!339276))))))

(declare-fun b!925444 () Bool)

(declare-fun e!602091 () Bool)

(assert (=> b!925444 (= e!602091 (matchR!1027 lt!339210 s!10566))))

(declare-fun b!925445 () Bool)

(assert (=> b!925445 (= e!602093 (= (++!2577 (_1!6308 (get!3177 lt!339276)) (_2!6308 (get!3177 lt!339276))) s!10566))))

(declare-fun b!925446 () Bool)

(declare-fun e!602092 () Bool)

(assert (=> b!925446 (= e!602092 (not (isDefined!1766 lt!339276)))))

(declare-fun d!281048 () Bool)

(assert (=> d!281048 e!602092))

(declare-fun res!420719 () Bool)

(assert (=> d!281048 (=> res!420719 e!602092)))

(assert (=> d!281048 (= res!420719 e!602093)))

(declare-fun res!420718 () Bool)

(assert (=> d!281048 (=> (not res!420718) (not e!602093))))

(assert (=> d!281048 (= res!420718 (isDefined!1766 lt!339276))))

(assert (=> d!281048 (= lt!339276 e!602090)))

(declare-fun c!150304 () Bool)

(assert (=> d!281048 (= c!150304 e!602091)))

(declare-fun res!420721 () Bool)

(assert (=> d!281048 (=> (not res!420721) (not e!602091))))

(assert (=> d!281048 (= res!420721 (matchR!1027 lt!339205 Nil!9703))))

(assert (=> d!281048 (validRegex!958 lt!339205)))

(assert (=> d!281048 (= (findConcatSeparation!230 lt!339205 lt!339210 Nil!9703 s!10566 s!10566) lt!339276)))

(declare-fun b!925447 () Bool)

(declare-fun res!420720 () Bool)

(assert (=> b!925447 (=> (not res!420720) (not e!602093))))

(assert (=> b!925447 (= res!420720 (matchR!1027 lt!339210 (_2!6308 (get!3177 lt!339276))))))

(assert (= (and d!281048 res!420721) b!925444))

(assert (= (and d!281048 c!150304) b!925439))

(assert (= (and d!281048 (not c!150304)) b!925440))

(assert (= (and b!925440 c!150303) b!925442))

(assert (= (and b!925440 (not c!150303)) b!925441))

(assert (= (and d!281048 res!420718) b!925443))

(assert (= (and b!925443 res!420717) b!925447))

(assert (= (and b!925447 res!420720) b!925445))

(assert (= (and d!281048 (not res!420719)) b!925446))

(declare-fun m!1150801 () Bool)

(assert (=> b!925447 m!1150801))

(declare-fun m!1150803 () Bool)

(assert (=> b!925447 m!1150803))

(declare-fun m!1150805 () Bool)

(assert (=> b!925444 m!1150805))

(assert (=> b!925441 m!1150591))

(assert (=> b!925441 m!1150591))

(assert (=> b!925441 m!1150593))

(assert (=> b!925441 m!1150595))

(assert (=> b!925441 m!1150591))

(declare-fun m!1150807 () Bool)

(assert (=> b!925441 m!1150807))

(declare-fun m!1150809 () Bool)

(assert (=> d!281048 m!1150809))

(declare-fun m!1150811 () Bool)

(assert (=> d!281048 m!1150811))

(assert (=> d!281048 m!1150515))

(assert (=> b!925446 m!1150809))

(assert (=> b!925443 m!1150801))

(declare-fun m!1150813 () Bool)

(assert (=> b!925443 m!1150813))

(assert (=> b!925445 m!1150801))

(declare-fun m!1150815 () Bool)

(assert (=> b!925445 m!1150815))

(assert (=> b!924891 d!281048))

(declare-fun d!281050 () Bool)

(assert (=> d!281050 (= (isDefined!1766 (findConcatSeparation!230 lt!339205 lt!339210 Nil!9703 s!10566 s!10566)) (not (isEmpty!5960 (findConcatSeparation!230 lt!339205 lt!339210 Nil!9703 s!10566 s!10566))))))

(declare-fun bs!237494 () Bool)

(assert (= bs!237494 d!281050))

(assert (=> bs!237494 m!1150489))

(declare-fun m!1150817 () Bool)

(assert (=> bs!237494 m!1150817))

(assert (=> b!924891 d!281050))

(declare-fun bs!237495 () Bool)

(declare-fun d!281052 () Bool)

(assert (= bs!237495 (and d!281052 d!280998)))

(declare-fun lambda!30454 () Int)

(assert (=> bs!237495 (not (= lambda!30454 lambda!30447))))

(assert (=> bs!237495 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30454 lambda!30446))))

(declare-fun bs!237496 () Bool)

(assert (= bs!237496 (and d!281052 b!924891)))

(assert (=> bs!237496 (= lambda!30454 lambda!30417)))

(declare-fun bs!237497 () Bool)

(assert (= bs!237497 (and d!281052 b!925301)))

(assert (=> bs!237497 (not (= lambda!30454 lambda!30452))))

(declare-fun bs!237498 () Bool)

(assert (= bs!237498 (and d!281052 b!925302)))

(assert (=> bs!237498 (not (= lambda!30454 lambda!30453))))

(declare-fun bs!237499 () Bool)

(assert (= bs!237499 (and d!281052 b!924896)))

(assert (=> bs!237499 (not (= lambda!30454 lambda!30416))))

(assert (=> bs!237496 (not (= lambda!30454 lambda!30418))))

(declare-fun bs!237500 () Bool)

(assert (= bs!237500 (and d!281052 d!280970)))

(assert (=> bs!237500 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30454 lambda!30427))))

(assert (=> bs!237499 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30454 lambda!30415))))

(assert (=> d!281052 true))

(assert (=> d!281052 true))

(assert (=> d!281052 true))

(assert (=> d!281052 (= (isDefined!1766 (findConcatSeparation!230 lt!339205 lt!339210 Nil!9703 s!10566 s!10566)) (Exists!260 lambda!30454))))

(declare-fun lt!339279 () Unit!14597)

(assert (=> d!281052 (= lt!339279 (choose!5693 lt!339205 lt!339210 s!10566))))

(assert (=> d!281052 (validRegex!958 lt!339205)))

(assert (=> d!281052 (= (lemmaFindConcatSeparationEquivalentToExists!230 lt!339205 lt!339210 s!10566) lt!339279)))

(declare-fun bs!237501 () Bool)

(assert (= bs!237501 d!281052))

(assert (=> bs!237501 m!1150489))

(declare-fun m!1150819 () Bool)

(assert (=> bs!237501 m!1150819))

(assert (=> bs!237501 m!1150489))

(assert (=> bs!237501 m!1150495))

(declare-fun m!1150821 () Bool)

(assert (=> bs!237501 m!1150821))

(assert (=> bs!237501 m!1150515))

(assert (=> b!924891 d!281052))

(declare-fun d!281054 () Bool)

(assert (=> d!281054 (= (Exists!260 lambda!30417) (choose!5692 lambda!30417))))

(declare-fun bs!237502 () Bool)

(assert (= bs!237502 d!281054))

(declare-fun m!1150823 () Bool)

(assert (=> bs!237502 m!1150823))

(assert (=> b!924891 d!281054))

(declare-fun d!281056 () Bool)

(assert (=> d!281056 (= (matchR!1027 lt!339207 s!10566) (matchRSpec!290 lt!339207 s!10566))))

(declare-fun lt!339280 () Unit!14597)

(assert (=> d!281056 (= lt!339280 (choose!5695 lt!339207 s!10566))))

(assert (=> d!281056 (validRegex!958 lt!339207)))

(assert (=> d!281056 (= (mainMatchTheorem!290 lt!339207 s!10566) lt!339280)))

(declare-fun bs!237503 () Bool)

(assert (= bs!237503 d!281056))

(assert (=> bs!237503 m!1150507))

(assert (=> bs!237503 m!1150497))

(declare-fun m!1150825 () Bool)

(assert (=> bs!237503 m!1150825))

(assert (=> bs!237503 m!1150771))

(assert (=> b!924891 d!281056))

(declare-fun bs!237504 () Bool)

(declare-fun d!281058 () Bool)

(assert (= bs!237504 (and d!281058 d!280998)))

(declare-fun lambda!30455 () Int)

(assert (=> bs!237504 (not (= lambda!30455 lambda!30447))))

(assert (=> bs!237504 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30455 lambda!30446))))

(declare-fun bs!237505 () Bool)

(assert (= bs!237505 (and d!281058 b!924891)))

(assert (=> bs!237505 (= lambda!30455 lambda!30417)))

(declare-fun bs!237506 () Bool)

(assert (= bs!237506 (and d!281058 b!925301)))

(assert (=> bs!237506 (not (= lambda!30455 lambda!30452))))

(declare-fun bs!237507 () Bool)

(assert (= bs!237507 (and d!281058 d!281052)))

(assert (=> bs!237507 (= lambda!30455 lambda!30454)))

(declare-fun bs!237508 () Bool)

(assert (= bs!237508 (and d!281058 b!925302)))

(assert (=> bs!237508 (not (= lambda!30455 lambda!30453))))

(declare-fun bs!237509 () Bool)

(assert (= bs!237509 (and d!281058 b!924896)))

(assert (=> bs!237509 (not (= lambda!30455 lambda!30416))))

(assert (=> bs!237505 (not (= lambda!30455 lambda!30418))))

(declare-fun bs!237510 () Bool)

(assert (= bs!237510 (and d!281058 d!280970)))

(assert (=> bs!237510 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30455 lambda!30427))))

(assert (=> bs!237509 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30455 lambda!30415))))

(assert (=> d!281058 true))

(assert (=> d!281058 true))

(assert (=> d!281058 true))

(declare-fun lambda!30456 () Int)

(assert (=> bs!237504 (not (= lambda!30456 lambda!30446))))

(assert (=> bs!237505 (not (= lambda!30456 lambda!30417))))

(assert (=> bs!237506 (not (= lambda!30456 lambda!30452))))

(assert (=> bs!237507 (not (= lambda!30456 lambda!30454))))

(assert (=> bs!237508 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30456 lambda!30453))))

(assert (=> bs!237509 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30456 lambda!30416))))

(assert (=> bs!237505 (= lambda!30456 lambda!30418)))

(assert (=> bs!237510 (not (= lambda!30456 lambda!30427))))

(assert (=> bs!237509 (not (= lambda!30456 lambda!30415))))

(assert (=> bs!237504 (= (and (= lt!339205 (regOne!5490 r!15766)) (= lt!339210 (regTwo!5490 r!15766))) (= lambda!30456 lambda!30447))))

(declare-fun bs!237511 () Bool)

(assert (= bs!237511 d!281058))

(assert (=> bs!237511 (not (= lambda!30456 lambda!30455))))

(assert (=> d!281058 true))

(assert (=> d!281058 true))

(assert (=> d!281058 true))

(assert (=> d!281058 (= (Exists!260 lambda!30455) (Exists!260 lambda!30456))))

(declare-fun lt!339281 () Unit!14597)

(assert (=> d!281058 (= lt!339281 (choose!5694 lt!339205 lt!339210 s!10566))))

(assert (=> d!281058 (validRegex!958 lt!339205)))

(assert (=> d!281058 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!172 lt!339205 lt!339210 s!10566) lt!339281)))

(declare-fun m!1150827 () Bool)

(assert (=> bs!237511 m!1150827))

(declare-fun m!1150829 () Bool)

(assert (=> bs!237511 m!1150829))

(declare-fun m!1150831 () Bool)

(assert (=> bs!237511 m!1150831))

(assert (=> bs!237511 m!1150515))

(assert (=> b!924891 d!281058))

(declare-fun d!281060 () Bool)

(assert (=> d!281060 (= (Exists!260 lambda!30418) (choose!5692 lambda!30418))))

(declare-fun bs!237512 () Bool)

(assert (= bs!237512 d!281060))

(declare-fun m!1150833 () Bool)

(assert (=> bs!237512 m!1150833))

(assert (=> b!924891 d!281060))

(declare-fun bs!237513 () Bool)

(declare-fun b!925451 () Bool)

(assert (= bs!237513 (and b!925451 d!280998)))

(declare-fun lambda!30457 () Int)

(assert (=> bs!237513 (not (= lambda!30457 lambda!30446))))

(declare-fun bs!237514 () Bool)

(assert (= bs!237514 (and b!925451 b!924891)))

(assert (=> bs!237514 (not (= lambda!30457 lambda!30417))))

(declare-fun bs!237515 () Bool)

(assert (= bs!237515 (and b!925451 b!925301)))

(assert (=> bs!237515 (= (and (= (reg!2818 lt!339207) (reg!2818 r!15766)) (= lt!339207 r!15766)) (= lambda!30457 lambda!30452))))

(declare-fun bs!237516 () Bool)

(assert (= bs!237516 (and b!925451 d!281052)))

(assert (=> bs!237516 (not (= lambda!30457 lambda!30454))))

(declare-fun bs!237517 () Bool)

(assert (= bs!237517 (and b!925451 b!924896)))

(assert (=> bs!237517 (not (= lambda!30457 lambda!30416))))

(assert (=> bs!237514 (not (= lambda!30457 lambda!30418))))

(declare-fun bs!237518 () Bool)

(assert (= bs!237518 (and b!925451 d!280970)))

(assert (=> bs!237518 (not (= lambda!30457 lambda!30427))))

(assert (=> bs!237517 (not (= lambda!30457 lambda!30415))))

(assert (=> bs!237513 (not (= lambda!30457 lambda!30447))))

(declare-fun bs!237519 () Bool)

(assert (= bs!237519 (and b!925451 d!281058)))

(assert (=> bs!237519 (not (= lambda!30457 lambda!30455))))

(declare-fun bs!237520 () Bool)

(assert (= bs!237520 (and b!925451 b!925302)))

(assert (=> bs!237520 (not (= lambda!30457 lambda!30453))))

(assert (=> bs!237519 (not (= lambda!30457 lambda!30456))))

(assert (=> b!925451 true))

(assert (=> b!925451 true))

(declare-fun bs!237521 () Bool)

(declare-fun b!925452 () Bool)

(assert (= bs!237521 (and b!925452 d!280998)))

(declare-fun lambda!30458 () Int)

(assert (=> bs!237521 (not (= lambda!30458 lambda!30446))))

(declare-fun bs!237522 () Bool)

(assert (= bs!237522 (and b!925452 b!924891)))

(assert (=> bs!237522 (not (= lambda!30458 lambda!30417))))

(declare-fun bs!237523 () Bool)

(assert (= bs!237523 (and b!925452 b!925301)))

(assert (=> bs!237523 (not (= lambda!30458 lambda!30452))))

(declare-fun bs!237524 () Bool)

(assert (= bs!237524 (and b!925452 d!281052)))

(assert (=> bs!237524 (not (= lambda!30458 lambda!30454))))

(declare-fun bs!237525 () Bool)

(assert (= bs!237525 (and b!925452 b!924896)))

(assert (=> bs!237525 (= (and (= (regOne!5490 lt!339207) (regOne!5490 r!15766)) (= (regTwo!5490 lt!339207) (regTwo!5490 r!15766))) (= lambda!30458 lambda!30416))))

(assert (=> bs!237522 (= (and (= (regOne!5490 lt!339207) lt!339205) (= (regTwo!5490 lt!339207) lt!339210)) (= lambda!30458 lambda!30418))))

(declare-fun bs!237526 () Bool)

(assert (= bs!237526 (and b!925452 d!280970)))

(assert (=> bs!237526 (not (= lambda!30458 lambda!30427))))

(assert (=> bs!237525 (not (= lambda!30458 lambda!30415))))

(assert (=> bs!237521 (= (and (= (regOne!5490 lt!339207) (regOne!5490 r!15766)) (= (regTwo!5490 lt!339207) (regTwo!5490 r!15766))) (= lambda!30458 lambda!30447))))

(declare-fun bs!237527 () Bool)

(assert (= bs!237527 (and b!925452 d!281058)))

(assert (=> bs!237527 (not (= lambda!30458 lambda!30455))))

(declare-fun bs!237528 () Bool)

(assert (= bs!237528 (and b!925452 b!925451)))

(assert (=> bs!237528 (not (= lambda!30458 lambda!30457))))

(declare-fun bs!237529 () Bool)

(assert (= bs!237529 (and b!925452 b!925302)))

(assert (=> bs!237529 (= (and (= (regOne!5490 lt!339207) (regOne!5490 r!15766)) (= (regTwo!5490 lt!339207) (regTwo!5490 r!15766))) (= lambda!30458 lambda!30453))))

(assert (=> bs!237527 (= (and (= (regOne!5490 lt!339207) lt!339205) (= (regTwo!5490 lt!339207) lt!339210)) (= lambda!30458 lambda!30456))))

(assert (=> b!925452 true))

(assert (=> b!925452 true))

(declare-fun b!925448 () Bool)

(declare-fun e!602099 () Bool)

(declare-fun call!56616 () Bool)

(assert (=> b!925448 (= e!602099 call!56616)))

(declare-fun b!925449 () Bool)

(declare-fun c!150307 () Bool)

(assert (=> b!925449 (= c!150307 ((_ is Union!2489) lt!339207))))

(declare-fun e!602101 () Bool)

(declare-fun e!602095 () Bool)

(assert (=> b!925449 (= e!602101 e!602095)))

(declare-fun b!925450 () Bool)

(declare-fun e!602097 () Bool)

(assert (=> b!925450 (= e!602097 (matchRSpec!290 (regTwo!5491 lt!339207) s!10566))))

(declare-fun e!602098 () Bool)

(declare-fun call!56617 () Bool)

(assert (=> b!925451 (= e!602098 call!56617)))

(declare-fun d!281062 () Bool)

(declare-fun c!150305 () Bool)

(assert (=> d!281062 (= c!150305 ((_ is EmptyExpr!2489) lt!339207))))

(assert (=> d!281062 (= (matchRSpec!290 lt!339207 s!10566) e!602099)))

(declare-fun e!602096 () Bool)

(assert (=> b!925452 (= e!602096 call!56617)))

(declare-fun bm!56611 () Bool)

(declare-fun c!150306 () Bool)

(assert (=> bm!56611 (= call!56617 (Exists!260 (ite c!150306 lambda!30457 lambda!30458)))))

(declare-fun bm!56612 () Bool)

(assert (=> bm!56612 (= call!56616 (isEmpty!5958 s!10566))))

(declare-fun b!925453 () Bool)

(declare-fun e!602100 () Bool)

(assert (=> b!925453 (= e!602099 e!602100)))

(declare-fun res!420724 () Bool)

(assert (=> b!925453 (= res!420724 (not ((_ is EmptyLang!2489) lt!339207)))))

(assert (=> b!925453 (=> (not res!420724) (not e!602100))))

(declare-fun b!925454 () Bool)

(declare-fun res!420722 () Bool)

(assert (=> b!925454 (=> res!420722 e!602098)))

(assert (=> b!925454 (= res!420722 call!56616)))

(assert (=> b!925454 (= e!602096 e!602098)))

(declare-fun b!925455 () Bool)

(assert (=> b!925455 (= e!602095 e!602097)))

(declare-fun res!420723 () Bool)

(assert (=> b!925455 (= res!420723 (matchRSpec!290 (regOne!5491 lt!339207) s!10566))))

(assert (=> b!925455 (=> res!420723 e!602097)))

(declare-fun b!925456 () Bool)

(assert (=> b!925456 (= e!602101 (= s!10566 (Cons!9703 (c!150170 lt!339207) Nil!9703)))))

(declare-fun b!925457 () Bool)

(assert (=> b!925457 (= e!602095 e!602096)))

(assert (=> b!925457 (= c!150306 ((_ is Star!2489) lt!339207))))

(declare-fun b!925458 () Bool)

(declare-fun c!150308 () Bool)

(assert (=> b!925458 (= c!150308 ((_ is ElementMatch!2489) lt!339207))))

(assert (=> b!925458 (= e!602100 e!602101)))

(assert (= (and d!281062 c!150305) b!925448))

(assert (= (and d!281062 (not c!150305)) b!925453))

(assert (= (and b!925453 res!420724) b!925458))

(assert (= (and b!925458 c!150308) b!925456))

(assert (= (and b!925458 (not c!150308)) b!925449))

(assert (= (and b!925449 c!150307) b!925455))

(assert (= (and b!925449 (not c!150307)) b!925457))

(assert (= (and b!925455 (not res!420723)) b!925450))

(assert (= (and b!925457 c!150306) b!925454))

(assert (= (and b!925457 (not c!150306)) b!925452))

(assert (= (and b!925454 (not res!420722)) b!925451))

(assert (= (or b!925451 b!925452) bm!56611))

(assert (= (or b!925448 b!925454) bm!56612))

(declare-fun m!1150835 () Bool)

(assert (=> b!925450 m!1150835))

(declare-fun m!1150837 () Bool)

(assert (=> bm!56611 m!1150837))

(assert (=> bm!56612 m!1150477))

(declare-fun m!1150839 () Bool)

(assert (=> b!925455 m!1150839))

(assert (=> b!924891 d!281062))

(declare-fun b!925472 () Bool)

(declare-fun e!602104 () Bool)

(declare-fun tp!287621 () Bool)

(declare-fun tp!287623 () Bool)

(assert (=> b!925472 (= e!602104 (and tp!287621 tp!287623))))

(declare-fun b!925470 () Bool)

(declare-fun tp!287622 () Bool)

(declare-fun tp!287624 () Bool)

(assert (=> b!925470 (= e!602104 (and tp!287622 tp!287624))))

(assert (=> b!924901 (= tp!287569 e!602104)))

(declare-fun b!925471 () Bool)

(declare-fun tp!287625 () Bool)

(assert (=> b!925471 (= e!602104 tp!287625)))

(declare-fun b!925469 () Bool)

(assert (=> b!925469 (= e!602104 tp_is_empty!4621)))

(assert (= (and b!924901 ((_ is ElementMatch!2489) (regOne!5491 r!15766))) b!925469))

(assert (= (and b!924901 ((_ is Concat!4322) (regOne!5491 r!15766))) b!925470))

(assert (= (and b!924901 ((_ is Star!2489) (regOne!5491 r!15766))) b!925471))

(assert (= (and b!924901 ((_ is Union!2489) (regOne!5491 r!15766))) b!925472))

(declare-fun b!925476 () Bool)

(declare-fun e!602105 () Bool)

(declare-fun tp!287626 () Bool)

(declare-fun tp!287628 () Bool)

(assert (=> b!925476 (= e!602105 (and tp!287626 tp!287628))))

(declare-fun b!925474 () Bool)

(declare-fun tp!287627 () Bool)

(declare-fun tp!287629 () Bool)

(assert (=> b!925474 (= e!602105 (and tp!287627 tp!287629))))

(assert (=> b!924901 (= tp!287570 e!602105)))

(declare-fun b!925475 () Bool)

(declare-fun tp!287630 () Bool)

(assert (=> b!925475 (= e!602105 tp!287630)))

(declare-fun b!925473 () Bool)

(assert (=> b!925473 (= e!602105 tp_is_empty!4621)))

(assert (= (and b!924901 ((_ is ElementMatch!2489) (regTwo!5491 r!15766))) b!925473))

(assert (= (and b!924901 ((_ is Concat!4322) (regTwo!5491 r!15766))) b!925474))

(assert (= (and b!924901 ((_ is Star!2489) (regTwo!5491 r!15766))) b!925475))

(assert (= (and b!924901 ((_ is Union!2489) (regTwo!5491 r!15766))) b!925476))

(declare-fun b!925480 () Bool)

(declare-fun e!602106 () Bool)

(declare-fun tp!287631 () Bool)

(declare-fun tp!287633 () Bool)

(assert (=> b!925480 (= e!602106 (and tp!287631 tp!287633))))

(declare-fun b!925478 () Bool)

(declare-fun tp!287632 () Bool)

(declare-fun tp!287634 () Bool)

(assert (=> b!925478 (= e!602106 (and tp!287632 tp!287634))))

(assert (=> b!924895 (= tp!287567 e!602106)))

(declare-fun b!925479 () Bool)

(declare-fun tp!287635 () Bool)

(assert (=> b!925479 (= e!602106 tp!287635)))

(declare-fun b!925477 () Bool)

(assert (=> b!925477 (= e!602106 tp_is_empty!4621)))

(assert (= (and b!924895 ((_ is ElementMatch!2489) (reg!2818 r!15766))) b!925477))

(assert (= (and b!924895 ((_ is Concat!4322) (reg!2818 r!15766))) b!925478))

(assert (= (and b!924895 ((_ is Star!2489) (reg!2818 r!15766))) b!925479))

(assert (= (and b!924895 ((_ is Union!2489) (reg!2818 r!15766))) b!925480))

(declare-fun b!925484 () Bool)

(declare-fun e!602107 () Bool)

(declare-fun tp!287636 () Bool)

(declare-fun tp!287638 () Bool)

(assert (=> b!925484 (= e!602107 (and tp!287636 tp!287638))))

(declare-fun b!925482 () Bool)

(declare-fun tp!287637 () Bool)

(declare-fun tp!287639 () Bool)

(assert (=> b!925482 (= e!602107 (and tp!287637 tp!287639))))

(assert (=> b!924890 (= tp!287568 e!602107)))

(declare-fun b!925483 () Bool)

(declare-fun tp!287640 () Bool)

(assert (=> b!925483 (= e!602107 tp!287640)))

(declare-fun b!925481 () Bool)

(assert (=> b!925481 (= e!602107 tp_is_empty!4621)))

(assert (= (and b!924890 ((_ is ElementMatch!2489) (regOne!5490 r!15766))) b!925481))

(assert (= (and b!924890 ((_ is Concat!4322) (regOne!5490 r!15766))) b!925482))

(assert (= (and b!924890 ((_ is Star!2489) (regOne!5490 r!15766))) b!925483))

(assert (= (and b!924890 ((_ is Union!2489) (regOne!5490 r!15766))) b!925484))

(declare-fun b!925488 () Bool)

(declare-fun e!602108 () Bool)

(declare-fun tp!287641 () Bool)

(declare-fun tp!287643 () Bool)

(assert (=> b!925488 (= e!602108 (and tp!287641 tp!287643))))

(declare-fun b!925486 () Bool)

(declare-fun tp!287642 () Bool)

(declare-fun tp!287644 () Bool)

(assert (=> b!925486 (= e!602108 (and tp!287642 tp!287644))))

(assert (=> b!924890 (= tp!287572 e!602108)))

(declare-fun b!925487 () Bool)

(declare-fun tp!287645 () Bool)

(assert (=> b!925487 (= e!602108 tp!287645)))

(declare-fun b!925485 () Bool)

(assert (=> b!925485 (= e!602108 tp_is_empty!4621)))

(assert (= (and b!924890 ((_ is ElementMatch!2489) (regTwo!5490 r!15766))) b!925485))

(assert (= (and b!924890 ((_ is Concat!4322) (regTwo!5490 r!15766))) b!925486))

(assert (= (and b!924890 ((_ is Star!2489) (regTwo!5490 r!15766))) b!925487))

(assert (= (and b!924890 ((_ is Union!2489) (regTwo!5490 r!15766))) b!925488))

(declare-fun b!925493 () Bool)

(declare-fun e!602111 () Bool)

(declare-fun tp!287648 () Bool)

(assert (=> b!925493 (= e!602111 (and tp_is_empty!4621 tp!287648))))

(assert (=> b!924898 (= tp!287571 e!602111)))

(assert (= (and b!924898 ((_ is Cons!9703) (t!100765 s!10566))) b!925493))

(check-sat (not b!925475) (not bm!56608) (not b!925380) (not b!925432) (not bm!56598) (not b!925345) (not d!281060) (not bm!56580) (not b!925493) (not b!925488) (not b!925340) (not b!925077) (not bm!56586) (not b!925074) (not b!925080) (not d!281050) (not b!925472) (not b!925375) (not b!925480) (not d!280978) (not d!281032) (not bm!56600) (not d!281048) (not bm!56612) (not d!281034) (not d!281024) (not bm!56611) (not b!925305) (not b!925379) (not d!281044) (not bm!56572) (not b!925450) (not b!925078) (not b!925420) (not d!280968) (not b!925478) (not b!925470) (not b!925487) (not b!925373) (not b!925455) (not b!925076) (not b!925370) (not b!925372) (not d!281042) (not b!925259) (not b!925441) (not b!925474) (not b!925344) (not b!925353) (not b!925350) (not b!925409) (not d!281054) (not d!281058) tp_is_empty!4621 (not b!925443) (not bm!56587) (not b!925447) (not b!925484) (not bm!56584) (not b!925337) (not d!281038) (not b!925079) (not d!281052) (not bm!56574) (not d!280998) (not d!280966) (not b!925300) (not b!925338) (not d!280970) (not d!281040) (not b!925446) (not b!925445) (not b!925483) (not b!925471) (not b!925482) (not b!925479) (not b!925369) (not b!925486) (not bm!56579) (not b!925444) (not bm!56610) (not b!925385) (not d!281056) (not bm!56605) (not bm!56583) (not bm!56603) (not b!925476))
(check-sat)
