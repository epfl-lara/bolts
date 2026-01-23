; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!723982 () Bool)

(assert start!723982)

(declare-fun b!7463496 () Bool)

(assert (=> b!7463496 true))

(assert (=> b!7463496 true))

(assert (=> b!7463496 true))

(declare-fun lambda!461813 () Int)

(declare-fun lambda!461812 () Int)

(assert (=> b!7463496 (not (= lambda!461813 lambda!461812))))

(assert (=> b!7463496 true))

(assert (=> b!7463496 true))

(assert (=> b!7463496 true))

(declare-fun b!7463487 () Bool)

(declare-fun e!4453816 () Bool)

(declare-fun tp_is_empty!49371 () Bool)

(assert (=> b!7463487 (= e!4453816 tp_is_empty!49371)))

(declare-fun b!7463488 () Bool)

(declare-fun e!4453815 () Bool)

(declare-fun tp!2163391 () Bool)

(assert (=> b!7463488 (= e!4453815 tp!2163391)))

(declare-fun b!7463489 () Bool)

(declare-fun tp!2163398 () Bool)

(declare-fun tp!2163399 () Bool)

(assert (=> b!7463489 (= e!4453815 (and tp!2163398 tp!2163399))))

(declare-fun b!7463490 () Bool)

(assert (=> b!7463490 (= e!4453815 tp_is_empty!49371)))

(declare-fun b!7463492 () Bool)

(declare-fun e!4453814 () Bool)

(declare-fun tp!2163388 () Bool)

(declare-fun tp!2163392 () Bool)

(assert (=> b!7463492 (= e!4453814 (and tp!2163388 tp!2163392))))

(declare-fun b!7463493 () Bool)

(declare-fun e!4453813 () Bool)

(declare-fun e!4453818 () Bool)

(assert (=> b!7463493 (= e!4453813 e!4453818)))

(declare-fun res!2993764 () Bool)

(assert (=> b!7463493 (=> res!2993764 e!4453818)))

(declare-fun lt!2623089 () Bool)

(declare-fun lt!2623099 () Bool)

(assert (=> b!7463493 (= res!2993764 (and (not lt!2623089) (not lt!2623099)))))

(declare-datatypes ((C!39356 0))(
  ( (C!39357 (val!30076 Int)) )
))
(declare-datatypes ((Regex!19541 0))(
  ( (ElementMatch!19541 (c!1379608 C!39356)) (Concat!28386 (regOne!39594 Regex!19541) (regTwo!39594 Regex!19541)) (EmptyExpr!19541) (Star!19541 (reg!19870 Regex!19541)) (EmptyLang!19541) (Union!19541 (regOne!39595 Regex!19541) (regTwo!39595 Regex!19541)) )
))
(declare-fun lt!2623097 () Regex!19541)

(declare-datatypes ((List!72257 0))(
  ( (Nil!72133) (Cons!72133 (h!78581 C!39356) (t!386826 List!72257)) )
))
(declare-fun s!13591 () List!72257)

(declare-fun matchRSpec!4220 (Regex!19541 List!72257) Bool)

(assert (=> b!7463493 (= lt!2623099 (matchRSpec!4220 lt!2623097 s!13591))))

(declare-fun matchR!9305 (Regex!19541 List!72257) Bool)

(assert (=> b!7463493 (= lt!2623099 (matchR!9305 lt!2623097 s!13591))))

(declare-datatypes ((Unit!165917 0))(
  ( (Unit!165918) )
))
(declare-fun lt!2623087 () Unit!165917)

(declare-fun mainMatchTheorem!4214 (Regex!19541 List!72257) Unit!165917)

(assert (=> b!7463493 (= lt!2623087 (mainMatchTheorem!4214 lt!2623097 s!13591))))

(declare-fun lt!2623098 () Regex!19541)

(assert (=> b!7463493 (= lt!2623089 (matchRSpec!4220 lt!2623098 s!13591))))

(assert (=> b!7463493 (= lt!2623089 (matchR!9305 lt!2623098 s!13591))))

(declare-fun lt!2623091 () Unit!165917)

(assert (=> b!7463493 (= lt!2623091 (mainMatchTheorem!4214 lt!2623098 s!13591))))

(declare-fun b!7463494 () Bool)

(declare-fun tp!2163393 () Bool)

(assert (=> b!7463494 (= e!4453816 tp!2163393)))

(declare-fun b!7463495 () Bool)

(declare-fun e!4453811 () Bool)

(declare-fun e!4453817 () Bool)

(assert (=> b!7463495 (= e!4453811 (not e!4453817))))

(declare-fun res!2993766 () Bool)

(assert (=> b!7463495 (=> res!2993766 e!4453817)))

(declare-fun lt!2623093 () Bool)

(assert (=> b!7463495 (= res!2993766 lt!2623093)))

(declare-fun lt!2623086 () Bool)

(declare-fun lt!2623090 () Regex!19541)

(assert (=> b!7463495 (= lt!2623086 (matchRSpec!4220 lt!2623090 s!13591))))

(assert (=> b!7463495 (= lt!2623086 (matchR!9305 lt!2623090 s!13591))))

(declare-fun lt!2623101 () Unit!165917)

(assert (=> b!7463495 (= lt!2623101 (mainMatchTheorem!4214 lt!2623090 s!13591))))

(declare-fun lt!2623094 () Regex!19541)

(assert (=> b!7463495 (= lt!2623093 (matchRSpec!4220 lt!2623094 s!13591))))

(assert (=> b!7463495 (= lt!2623093 (matchR!9305 lt!2623094 s!13591))))

(declare-fun lt!2623096 () Unit!165917)

(assert (=> b!7463495 (= lt!2623096 (mainMatchTheorem!4214 lt!2623094 s!13591))))

(assert (=> b!7463495 (= lt!2623090 (Union!19541 lt!2623098 lt!2623097))))

(declare-fun r2!5783 () Regex!19541)

(declare-fun rTail!78 () Regex!19541)

(assert (=> b!7463495 (= lt!2623097 (Concat!28386 r2!5783 rTail!78))))

(declare-fun r1!5845 () Regex!19541)

(assert (=> b!7463495 (= lt!2623098 (Concat!28386 r1!5845 rTail!78))))

(declare-fun lt!2623095 () Regex!19541)

(assert (=> b!7463495 (= lt!2623094 (Concat!28386 lt!2623095 rTail!78))))

(assert (=> b!7463495 (= lt!2623095 (Union!19541 r1!5845 r2!5783))))

(assert (=> b!7463496 (= e!4453817 e!4453813)))

(declare-fun res!2993762 () Bool)

(assert (=> b!7463496 (=> res!2993762 e!4453813)))

(declare-fun lt!2623092 () Bool)

(assert (=> b!7463496 (= res!2993762 (or lt!2623092 (not lt!2623086)))))

(declare-fun Exists!4160 (Int) Bool)

(assert (=> b!7463496 (= (Exists!4160 lambda!461812) (Exists!4160 lambda!461813))))

(declare-fun lt!2623100 () Unit!165917)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2494 (Regex!19541 Regex!19541 List!72257) Unit!165917)

(assert (=> b!7463496 (= lt!2623100 (lemmaExistCutMatchRandMatchRSpecEquivalent!2494 lt!2623095 rTail!78 s!13591))))

(assert (=> b!7463496 (= lt!2623092 (Exists!4160 lambda!461812))))

(declare-datatypes ((tuple2!68532 0))(
  ( (tuple2!68533 (_1!37569 List!72257) (_2!37569 List!72257)) )
))
(declare-datatypes ((Option!17098 0))(
  ( (None!17097) (Some!17097 (v!54226 tuple2!68532)) )
))
(declare-fun isDefined!13787 (Option!17098) Bool)

(declare-fun findConcatSeparation!3220 (Regex!19541 Regex!19541 List!72257 List!72257 List!72257) Option!17098)

(assert (=> b!7463496 (= lt!2623092 (isDefined!13787 (findConcatSeparation!3220 lt!2623095 rTail!78 Nil!72133 s!13591 s!13591)))))

(declare-fun lt!2623088 () Unit!165917)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2978 (Regex!19541 Regex!19541 List!72257) Unit!165917)

(assert (=> b!7463496 (= lt!2623088 (lemmaFindConcatSeparationEquivalentToExists!2978 lt!2623095 rTail!78 s!13591))))

(declare-fun b!7463497 () Bool)

(declare-fun tp!2163403 () Bool)

(declare-fun tp!2163397 () Bool)

(assert (=> b!7463497 (= e!4453814 (and tp!2163403 tp!2163397))))

(declare-fun b!7463498 () Bool)

(declare-fun tp!2163402 () Bool)

(declare-fun tp!2163401 () Bool)

(assert (=> b!7463498 (= e!4453815 (and tp!2163402 tp!2163401))))

(declare-fun b!7463491 () Bool)

(declare-fun tp!2163394 () Bool)

(declare-fun tp!2163390 () Bool)

(assert (=> b!7463491 (= e!4453816 (and tp!2163394 tp!2163390))))

(declare-fun res!2993765 () Bool)

(assert (=> start!723982 (=> (not res!2993765) (not e!4453811))))

(declare-fun validRegex!10055 (Regex!19541) Bool)

(assert (=> start!723982 (= res!2993765 (validRegex!10055 r1!5845))))

(assert (=> start!723982 e!4453811))

(assert (=> start!723982 e!4453815))

(assert (=> start!723982 e!4453816))

(assert (=> start!723982 e!4453814))

(declare-fun e!4453812 () Bool)

(assert (=> start!723982 e!4453812))

(declare-fun b!7463499 () Bool)

(declare-fun tp!2163395 () Bool)

(assert (=> b!7463499 (= e!4453812 (and tp_is_empty!49371 tp!2163395))))

(declare-fun b!7463500 () Bool)

(declare-fun res!2993763 () Bool)

(assert (=> b!7463500 (=> (not res!2993763) (not e!4453811))))

(assert (=> b!7463500 (= res!2993763 (validRegex!10055 rTail!78))))

(declare-fun b!7463501 () Bool)

(declare-fun tp!2163396 () Bool)

(declare-fun tp!2163400 () Bool)

(assert (=> b!7463501 (= e!4453816 (and tp!2163396 tp!2163400))))

(declare-fun b!7463502 () Bool)

(assert (=> b!7463502 (= e!4453814 tp_is_empty!49371)))

(declare-fun b!7463503 () Bool)

(declare-fun tp!2163389 () Bool)

(assert (=> b!7463503 (= e!4453814 tp!2163389)))

(declare-fun b!7463504 () Bool)

(assert (=> b!7463504 (= e!4453818 (validRegex!10055 lt!2623098))))

(declare-fun b!7463505 () Bool)

(declare-fun res!2993761 () Bool)

(assert (=> b!7463505 (=> (not res!2993761) (not e!4453811))))

(assert (=> b!7463505 (= res!2993761 (validRegex!10055 r2!5783))))

(assert (= (and start!723982 res!2993765) b!7463505))

(assert (= (and b!7463505 res!2993761) b!7463500))

(assert (= (and b!7463500 res!2993763) b!7463495))

(assert (= (and b!7463495 (not res!2993766)) b!7463496))

(assert (= (and b!7463496 (not res!2993762)) b!7463493))

(assert (= (and b!7463493 (not res!2993764)) b!7463504))

(get-info :version)

(assert (= (and start!723982 ((_ is ElementMatch!19541) r1!5845)) b!7463490))

(assert (= (and start!723982 ((_ is Concat!28386) r1!5845)) b!7463489))

(assert (= (and start!723982 ((_ is Star!19541) r1!5845)) b!7463488))

(assert (= (and start!723982 ((_ is Union!19541) r1!5845)) b!7463498))

(assert (= (and start!723982 ((_ is ElementMatch!19541) r2!5783)) b!7463487))

(assert (= (and start!723982 ((_ is Concat!28386) r2!5783)) b!7463501))

(assert (= (and start!723982 ((_ is Star!19541) r2!5783)) b!7463494))

(assert (= (and start!723982 ((_ is Union!19541) r2!5783)) b!7463491))

(assert (= (and start!723982 ((_ is ElementMatch!19541) rTail!78)) b!7463502))

(assert (= (and start!723982 ((_ is Concat!28386) rTail!78)) b!7463497))

(assert (= (and start!723982 ((_ is Star!19541) rTail!78)) b!7463503))

(assert (= (and start!723982 ((_ is Union!19541) rTail!78)) b!7463492))

(assert (= (and start!723982 ((_ is Cons!72133) s!13591)) b!7463499))

(declare-fun m!8063500 () Bool)

(assert (=> start!723982 m!8063500))

(declare-fun m!8063502 () Bool)

(assert (=> b!7463495 m!8063502))

(declare-fun m!8063504 () Bool)

(assert (=> b!7463495 m!8063504))

(declare-fun m!8063506 () Bool)

(assert (=> b!7463495 m!8063506))

(declare-fun m!8063508 () Bool)

(assert (=> b!7463495 m!8063508))

(declare-fun m!8063510 () Bool)

(assert (=> b!7463495 m!8063510))

(declare-fun m!8063512 () Bool)

(assert (=> b!7463495 m!8063512))

(declare-fun m!8063514 () Bool)

(assert (=> b!7463500 m!8063514))

(declare-fun m!8063516 () Bool)

(assert (=> b!7463493 m!8063516))

(declare-fun m!8063518 () Bool)

(assert (=> b!7463493 m!8063518))

(declare-fun m!8063520 () Bool)

(assert (=> b!7463493 m!8063520))

(declare-fun m!8063522 () Bool)

(assert (=> b!7463493 m!8063522))

(declare-fun m!8063524 () Bool)

(assert (=> b!7463493 m!8063524))

(declare-fun m!8063526 () Bool)

(assert (=> b!7463493 m!8063526))

(declare-fun m!8063528 () Bool)

(assert (=> b!7463504 m!8063528))

(declare-fun m!8063530 () Bool)

(assert (=> b!7463496 m!8063530))

(assert (=> b!7463496 m!8063530))

(declare-fun m!8063532 () Bool)

(assert (=> b!7463496 m!8063532))

(declare-fun m!8063534 () Bool)

(assert (=> b!7463496 m!8063534))

(declare-fun m!8063536 () Bool)

(assert (=> b!7463496 m!8063536))

(declare-fun m!8063538 () Bool)

(assert (=> b!7463496 m!8063538))

(declare-fun m!8063540 () Bool)

(assert (=> b!7463496 m!8063540))

(assert (=> b!7463496 m!8063534))

(declare-fun m!8063542 () Bool)

(assert (=> b!7463505 m!8063542))

(check-sat tp_is_empty!49371 (not b!7463493) (not b!7463503) (not b!7463492) (not b!7463498) (not b!7463501) (not b!7463505) (not b!7463496) (not start!723982) (not b!7463489) (not b!7463500) (not b!7463494) (not b!7463497) (not b!7463491) (not b!7463499) (not b!7463495) (not b!7463504) (not b!7463488))
(check-sat)
(get-model)

(declare-fun bs!1929729 () Bool)

(declare-fun d!2298332 () Bool)

(assert (= bs!1929729 (and d!2298332 b!7463496)))

(declare-fun lambda!461822 () Int)

(assert (=> bs!1929729 (= lambda!461822 lambda!461812)))

(assert (=> bs!1929729 (not (= lambda!461822 lambda!461813))))

(assert (=> d!2298332 true))

(assert (=> d!2298332 true))

(assert (=> d!2298332 true))

(assert (=> d!2298332 (= (isDefined!13787 (findConcatSeparation!3220 lt!2623095 rTail!78 Nil!72133 s!13591 s!13591)) (Exists!4160 lambda!461822))))

(declare-fun lt!2623110 () Unit!165917)

(declare-fun choose!57699 (Regex!19541 Regex!19541 List!72257) Unit!165917)

(assert (=> d!2298332 (= lt!2623110 (choose!57699 lt!2623095 rTail!78 s!13591))))

(assert (=> d!2298332 (validRegex!10055 lt!2623095)))

(assert (=> d!2298332 (= (lemmaFindConcatSeparationEquivalentToExists!2978 lt!2623095 rTail!78 s!13591) lt!2623110)))

(declare-fun bs!1929733 () Bool)

(assert (= bs!1929733 d!2298332))

(declare-fun m!8063578 () Bool)

(assert (=> bs!1929733 m!8063578))

(declare-fun m!8063580 () Bool)

(assert (=> bs!1929733 m!8063580))

(assert (=> bs!1929733 m!8063530))

(assert (=> bs!1929733 m!8063530))

(assert (=> bs!1929733 m!8063532))

(declare-fun m!8063582 () Bool)

(assert (=> bs!1929733 m!8063582))

(assert (=> b!7463496 d!2298332))

(declare-fun d!2298342 () Bool)

(declare-fun e!4453956 () Bool)

(assert (=> d!2298342 e!4453956))

(declare-fun res!2993886 () Bool)

(assert (=> d!2298342 (=> res!2993886 e!4453956)))

(declare-fun e!4453957 () Bool)

(assert (=> d!2298342 (= res!2993886 e!4453957)))

(declare-fun res!2993882 () Bool)

(assert (=> d!2298342 (=> (not res!2993882) (not e!4453957))))

(declare-fun lt!2623125 () Option!17098)

(assert (=> d!2298342 (= res!2993882 (isDefined!13787 lt!2623125))))

(declare-fun e!4453954 () Option!17098)

(assert (=> d!2298342 (= lt!2623125 e!4453954)))

(declare-fun c!1379665 () Bool)

(declare-fun e!4453955 () Bool)

(assert (=> d!2298342 (= c!1379665 e!4453955)))

(declare-fun res!2993884 () Bool)

(assert (=> d!2298342 (=> (not res!2993884) (not e!4453955))))

(assert (=> d!2298342 (= res!2993884 (matchR!9305 lt!2623095 Nil!72133))))

(assert (=> d!2298342 (validRegex!10055 lt!2623095)))

(assert (=> d!2298342 (= (findConcatSeparation!3220 lt!2623095 rTail!78 Nil!72133 s!13591 s!13591) lt!2623125)))

(declare-fun b!7463737 () Bool)

(declare-fun e!4453958 () Option!17098)

(assert (=> b!7463737 (= e!4453958 None!17097)))

(declare-fun b!7463738 () Bool)

(declare-fun lt!2623123 () Unit!165917)

(declare-fun lt!2623124 () Unit!165917)

(assert (=> b!7463738 (= lt!2623123 lt!2623124)))

(declare-fun ++!17188 (List!72257 List!72257) List!72257)

(assert (=> b!7463738 (= (++!17188 (++!17188 Nil!72133 (Cons!72133 (h!78581 s!13591) Nil!72133)) (t!386826 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3068 (List!72257 C!39356 List!72257 List!72257) Unit!165917)

(assert (=> b!7463738 (= lt!2623124 (lemmaMoveElementToOtherListKeepsConcatEq!3068 Nil!72133 (h!78581 s!13591) (t!386826 s!13591) s!13591))))

(assert (=> b!7463738 (= e!4453958 (findConcatSeparation!3220 lt!2623095 rTail!78 (++!17188 Nil!72133 (Cons!72133 (h!78581 s!13591) Nil!72133)) (t!386826 s!13591) s!13591))))

(declare-fun b!7463739 () Bool)

(declare-fun res!2993885 () Bool)

(assert (=> b!7463739 (=> (not res!2993885) (not e!4453957))))

(declare-fun get!25184 (Option!17098) tuple2!68532)

(assert (=> b!7463739 (= res!2993885 (matchR!9305 rTail!78 (_2!37569 (get!25184 lt!2623125))))))

(declare-fun b!7463740 () Bool)

(assert (=> b!7463740 (= e!4453954 e!4453958)))

(declare-fun c!1379666 () Bool)

(assert (=> b!7463740 (= c!1379666 ((_ is Nil!72133) s!13591))))

(declare-fun b!7463741 () Bool)

(assert (=> b!7463741 (= e!4453957 (= (++!17188 (_1!37569 (get!25184 lt!2623125)) (_2!37569 (get!25184 lt!2623125))) s!13591))))

(declare-fun b!7463742 () Bool)

(assert (=> b!7463742 (= e!4453955 (matchR!9305 rTail!78 s!13591))))

(declare-fun b!7463743 () Bool)

(assert (=> b!7463743 (= e!4453954 (Some!17097 (tuple2!68533 Nil!72133 s!13591)))))

(declare-fun b!7463744 () Bool)

(assert (=> b!7463744 (= e!4453956 (not (isDefined!13787 lt!2623125)))))

(declare-fun b!7463745 () Bool)

(declare-fun res!2993883 () Bool)

(assert (=> b!7463745 (=> (not res!2993883) (not e!4453957))))

(assert (=> b!7463745 (= res!2993883 (matchR!9305 lt!2623095 (_1!37569 (get!25184 lt!2623125))))))

(assert (= (and d!2298342 res!2993884) b!7463742))

(assert (= (and d!2298342 c!1379665) b!7463743))

(assert (= (and d!2298342 (not c!1379665)) b!7463740))

(assert (= (and b!7463740 c!1379666) b!7463737))

(assert (= (and b!7463740 (not c!1379666)) b!7463738))

(assert (= (and d!2298342 res!2993882) b!7463745))

(assert (= (and b!7463745 res!2993883) b!7463739))

(assert (= (and b!7463739 res!2993885) b!7463741))

(assert (= (and d!2298342 (not res!2993886)) b!7463744))

(declare-fun m!8063638 () Bool)

(assert (=> b!7463739 m!8063638))

(declare-fun m!8063640 () Bool)

(assert (=> b!7463739 m!8063640))

(declare-fun m!8063642 () Bool)

(assert (=> b!7463742 m!8063642))

(declare-fun m!8063644 () Bool)

(assert (=> b!7463744 m!8063644))

(assert (=> b!7463741 m!8063638))

(declare-fun m!8063646 () Bool)

(assert (=> b!7463741 m!8063646))

(assert (=> b!7463745 m!8063638))

(declare-fun m!8063648 () Bool)

(assert (=> b!7463745 m!8063648))

(declare-fun m!8063650 () Bool)

(assert (=> b!7463738 m!8063650))

(assert (=> b!7463738 m!8063650))

(declare-fun m!8063652 () Bool)

(assert (=> b!7463738 m!8063652))

(declare-fun m!8063654 () Bool)

(assert (=> b!7463738 m!8063654))

(assert (=> b!7463738 m!8063650))

(declare-fun m!8063656 () Bool)

(assert (=> b!7463738 m!8063656))

(assert (=> d!2298342 m!8063644))

(declare-fun m!8063658 () Bool)

(assert (=> d!2298342 m!8063658))

(assert (=> d!2298342 m!8063582))

(assert (=> b!7463496 d!2298342))

(declare-fun bs!1929776 () Bool)

(declare-fun d!2298364 () Bool)

(assert (= bs!1929776 (and d!2298364 b!7463496)))

(declare-fun lambda!461838 () Int)

(assert (=> bs!1929776 (= lambda!461838 lambda!461812)))

(assert (=> bs!1929776 (not (= lambda!461838 lambda!461813))))

(declare-fun bs!1929777 () Bool)

(assert (= bs!1929777 (and d!2298364 d!2298332)))

(assert (=> bs!1929777 (= lambda!461838 lambda!461822)))

(assert (=> d!2298364 true))

(assert (=> d!2298364 true))

(assert (=> d!2298364 true))

(declare-fun lambda!461840 () Int)

(assert (=> bs!1929776 (not (= lambda!461840 lambda!461812))))

(assert (=> bs!1929776 (= lambda!461840 lambda!461813)))

(assert (=> bs!1929777 (not (= lambda!461840 lambda!461822))))

(declare-fun bs!1929779 () Bool)

(assert (= bs!1929779 d!2298364))

(assert (=> bs!1929779 (not (= lambda!461840 lambda!461838))))

(assert (=> d!2298364 true))

(assert (=> d!2298364 true))

(assert (=> d!2298364 true))

(assert (=> d!2298364 (= (Exists!4160 lambda!461838) (Exists!4160 lambda!461840))))

(declare-fun lt!2623140 () Unit!165917)

(declare-fun choose!57700 (Regex!19541 Regex!19541 List!72257) Unit!165917)

(assert (=> d!2298364 (= lt!2623140 (choose!57700 lt!2623095 rTail!78 s!13591))))

(assert (=> d!2298364 (validRegex!10055 lt!2623095)))

(assert (=> d!2298364 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2494 lt!2623095 rTail!78 s!13591) lt!2623140)))

(declare-fun m!8063696 () Bool)

(assert (=> bs!1929779 m!8063696))

(declare-fun m!8063698 () Bool)

(assert (=> bs!1929779 m!8063698))

(declare-fun m!8063700 () Bool)

(assert (=> bs!1929779 m!8063700))

(assert (=> bs!1929779 m!8063582))

(assert (=> b!7463496 d!2298364))

(declare-fun d!2298376 () Bool)

(declare-fun choose!57701 (Int) Bool)

(assert (=> d!2298376 (= (Exists!4160 lambda!461813) (choose!57701 lambda!461813))))

(declare-fun bs!1929782 () Bool)

(assert (= bs!1929782 d!2298376))

(declare-fun m!8063702 () Bool)

(assert (=> bs!1929782 m!8063702))

(assert (=> b!7463496 d!2298376))

(declare-fun d!2298378 () Bool)

(assert (=> d!2298378 (= (Exists!4160 lambda!461812) (choose!57701 lambda!461812))))

(declare-fun bs!1929783 () Bool)

(assert (= bs!1929783 d!2298378))

(declare-fun m!8063704 () Bool)

(assert (=> bs!1929783 m!8063704))

(assert (=> b!7463496 d!2298378))

(declare-fun d!2298380 () Bool)

(declare-fun isEmpty!41148 (Option!17098) Bool)

(assert (=> d!2298380 (= (isDefined!13787 (findConcatSeparation!3220 lt!2623095 rTail!78 Nil!72133 s!13591 s!13591)) (not (isEmpty!41148 (findConcatSeparation!3220 lt!2623095 rTail!78 Nil!72133 s!13591 s!13591))))))

(declare-fun bs!1929784 () Bool)

(assert (= bs!1929784 d!2298380))

(assert (=> bs!1929784 m!8063530))

(declare-fun m!8063706 () Bool)

(assert (=> bs!1929784 m!8063706))

(assert (=> b!7463496 d!2298380))

(declare-fun bm!685626 () Bool)

(declare-fun call!685633 () Bool)

(declare-fun call!685631 () Bool)

(assert (=> bm!685626 (= call!685633 call!685631)))

(declare-fun bm!685627 () Bool)

(declare-fun call!685632 () Bool)

(declare-fun c!1379680 () Bool)

(assert (=> bm!685627 (= call!685632 (validRegex!10055 (ite c!1379680 (regOne!39595 lt!2623098) (regOne!39594 lt!2623098))))))

(declare-fun b!7463863 () Bool)

(declare-fun e!4454018 () Bool)

(declare-fun e!4454016 () Bool)

(assert (=> b!7463863 (= e!4454018 e!4454016)))

(declare-fun c!1379679 () Bool)

(assert (=> b!7463863 (= c!1379679 ((_ is Star!19541) lt!2623098))))

(declare-fun b!7463864 () Bool)

(declare-fun e!4454022 () Bool)

(assert (=> b!7463864 (= e!4454022 call!685633)))

(declare-fun b!7463865 () Bool)

(declare-fun res!2993939 () Bool)

(assert (=> b!7463865 (=> (not res!2993939) (not e!4454022))))

(assert (=> b!7463865 (= res!2993939 call!685632)))

(declare-fun e!4454023 () Bool)

(assert (=> b!7463865 (= e!4454023 e!4454022)))

(declare-fun b!7463866 () Bool)

(declare-fun res!2993940 () Bool)

(declare-fun e!4454020 () Bool)

(assert (=> b!7463866 (=> res!2993940 e!4454020)))

(assert (=> b!7463866 (= res!2993940 (not ((_ is Concat!28386) lt!2623098)))))

(assert (=> b!7463866 (= e!4454023 e!4454020)))

(declare-fun b!7463867 () Bool)

(declare-fun e!4454019 () Bool)

(assert (=> b!7463867 (= e!4454020 e!4454019)))

(declare-fun res!2993938 () Bool)

(assert (=> b!7463867 (=> (not res!2993938) (not e!4454019))))

(assert (=> b!7463867 (= res!2993938 call!685632)))

(declare-fun b!7463869 () Bool)

(declare-fun e!4454021 () Bool)

(assert (=> b!7463869 (= e!4454016 e!4454021)))

(declare-fun res!2993937 () Bool)

(declare-fun nullable!8517 (Regex!19541) Bool)

(assert (=> b!7463869 (= res!2993937 (not (nullable!8517 (reg!19870 lt!2623098))))))

(assert (=> b!7463869 (=> (not res!2993937) (not e!4454021))))

(declare-fun b!7463870 () Bool)

(assert (=> b!7463870 (= e!4454016 e!4454023)))

(assert (=> b!7463870 (= c!1379680 ((_ is Union!19541) lt!2623098))))

(declare-fun d!2298382 () Bool)

(declare-fun res!2993941 () Bool)

(assert (=> d!2298382 (=> res!2993941 e!4454018)))

(assert (=> d!2298382 (= res!2993941 ((_ is ElementMatch!19541) lt!2623098))))

(assert (=> d!2298382 (= (validRegex!10055 lt!2623098) e!4454018)))

(declare-fun b!7463868 () Bool)

(assert (=> b!7463868 (= e!4454019 call!685633)))

(declare-fun b!7463871 () Bool)

(assert (=> b!7463871 (= e!4454021 call!685631)))

(declare-fun bm!685628 () Bool)

(assert (=> bm!685628 (= call!685631 (validRegex!10055 (ite c!1379679 (reg!19870 lt!2623098) (ite c!1379680 (regTwo!39595 lt!2623098) (regTwo!39594 lt!2623098)))))))

(assert (= (and d!2298382 (not res!2993941)) b!7463863))

(assert (= (and b!7463863 c!1379679) b!7463869))

(assert (= (and b!7463863 (not c!1379679)) b!7463870))

(assert (= (and b!7463869 res!2993937) b!7463871))

(assert (= (and b!7463870 c!1379680) b!7463865))

(assert (= (and b!7463870 (not c!1379680)) b!7463866))

(assert (= (and b!7463865 res!2993939) b!7463864))

(assert (= (and b!7463866 (not res!2993940)) b!7463867))

(assert (= (and b!7463867 res!2993938) b!7463868))

(assert (= (or b!7463864 b!7463868) bm!685626))

(assert (= (or b!7463865 b!7463867) bm!685627))

(assert (= (or b!7463871 bm!685626) bm!685628))

(declare-fun m!8063718 () Bool)

(assert (=> bm!685627 m!8063718))

(declare-fun m!8063720 () Bool)

(assert (=> b!7463869 m!8063720))

(declare-fun m!8063722 () Bool)

(assert (=> bm!685628 m!8063722))

(assert (=> b!7463504 d!2298382))

(declare-fun bm!685629 () Bool)

(declare-fun call!685636 () Bool)

(declare-fun call!685634 () Bool)

(assert (=> bm!685629 (= call!685636 call!685634)))

(declare-fun bm!685630 () Bool)

(declare-fun call!685635 () Bool)

(declare-fun c!1379682 () Bool)

(assert (=> bm!685630 (= call!685635 (validRegex!10055 (ite c!1379682 (regOne!39595 r1!5845) (regOne!39594 r1!5845))))))

(declare-fun b!7463900 () Bool)

(declare-fun e!4454032 () Bool)

(declare-fun e!4454031 () Bool)

(assert (=> b!7463900 (= e!4454032 e!4454031)))

(declare-fun c!1379681 () Bool)

(assert (=> b!7463900 (= c!1379681 ((_ is Star!19541) r1!5845))))

(declare-fun b!7463901 () Bool)

(declare-fun e!4454036 () Bool)

(assert (=> b!7463901 (= e!4454036 call!685636)))

(declare-fun b!7463902 () Bool)

(declare-fun res!2993944 () Bool)

(assert (=> b!7463902 (=> (not res!2993944) (not e!4454036))))

(assert (=> b!7463902 (= res!2993944 call!685635)))

(declare-fun e!4454037 () Bool)

(assert (=> b!7463902 (= e!4454037 e!4454036)))

(declare-fun b!7463903 () Bool)

(declare-fun res!2993945 () Bool)

(declare-fun e!4454034 () Bool)

(assert (=> b!7463903 (=> res!2993945 e!4454034)))

(assert (=> b!7463903 (= res!2993945 (not ((_ is Concat!28386) r1!5845)))))

(assert (=> b!7463903 (= e!4454037 e!4454034)))

(declare-fun b!7463906 () Bool)

(declare-fun e!4454033 () Bool)

(assert (=> b!7463906 (= e!4454034 e!4454033)))

(declare-fun res!2993943 () Bool)

(assert (=> b!7463906 (=> (not res!2993943) (not e!4454033))))

(assert (=> b!7463906 (= res!2993943 call!685635)))

(declare-fun b!7463910 () Bool)

(declare-fun e!4454035 () Bool)

(assert (=> b!7463910 (= e!4454031 e!4454035)))

(declare-fun res!2993942 () Bool)

(assert (=> b!7463910 (= res!2993942 (not (nullable!8517 (reg!19870 r1!5845))))))

(assert (=> b!7463910 (=> (not res!2993942) (not e!4454035))))

(declare-fun b!7463911 () Bool)

(assert (=> b!7463911 (= e!4454031 e!4454037)))

(assert (=> b!7463911 (= c!1379682 ((_ is Union!19541) r1!5845))))

(declare-fun d!2298386 () Bool)

(declare-fun res!2993946 () Bool)

(assert (=> d!2298386 (=> res!2993946 e!4454032)))

(assert (=> d!2298386 (= res!2993946 ((_ is ElementMatch!19541) r1!5845))))

(assert (=> d!2298386 (= (validRegex!10055 r1!5845) e!4454032)))

(declare-fun b!7463908 () Bool)

(assert (=> b!7463908 (= e!4454033 call!685636)))

(declare-fun b!7463912 () Bool)

(assert (=> b!7463912 (= e!4454035 call!685634)))

(declare-fun bm!685631 () Bool)

(assert (=> bm!685631 (= call!685634 (validRegex!10055 (ite c!1379681 (reg!19870 r1!5845) (ite c!1379682 (regTwo!39595 r1!5845) (regTwo!39594 r1!5845)))))))

(assert (= (and d!2298386 (not res!2993946)) b!7463900))

(assert (= (and b!7463900 c!1379681) b!7463910))

(assert (= (and b!7463900 (not c!1379681)) b!7463911))

(assert (= (and b!7463910 res!2993942) b!7463912))

(assert (= (and b!7463911 c!1379682) b!7463902))

(assert (= (and b!7463911 (not c!1379682)) b!7463903))

(assert (= (and b!7463902 res!2993944) b!7463901))

(assert (= (and b!7463903 (not res!2993945)) b!7463906))

(assert (= (and b!7463906 res!2993943) b!7463908))

(assert (= (or b!7463901 b!7463908) bm!685629))

(assert (= (or b!7463902 b!7463906) bm!685630))

(assert (= (or b!7463912 bm!685629) bm!685631))

(declare-fun m!8063724 () Bool)

(assert (=> bm!685630 m!8063724))

(declare-fun m!8063726 () Bool)

(assert (=> b!7463910 m!8063726))

(declare-fun m!8063728 () Bool)

(assert (=> bm!685631 m!8063728))

(assert (=> start!723982 d!2298386))

(declare-fun b!7463941 () Bool)

(declare-fun res!2993965 () Bool)

(declare-fun e!4454059 () Bool)

(assert (=> b!7463941 (=> res!2993965 e!4454059)))

(declare-fun e!4454055 () Bool)

(assert (=> b!7463941 (= res!2993965 e!4454055)))

(declare-fun res!2993966 () Bool)

(assert (=> b!7463941 (=> (not res!2993966) (not e!4454055))))

(declare-fun lt!2623146 () Bool)

(assert (=> b!7463941 (= res!2993966 lt!2623146)))

(declare-fun b!7463942 () Bool)

(declare-fun e!4454058 () Bool)

(declare-fun e!4454054 () Bool)

(assert (=> b!7463942 (= e!4454058 e!4454054)))

(declare-fun res!2993969 () Bool)

(assert (=> b!7463942 (=> res!2993969 e!4454054)))

(declare-fun call!685639 () Bool)

(assert (=> b!7463942 (= res!2993969 call!685639)))

(declare-fun b!7463943 () Bool)

(declare-fun e!4454056 () Bool)

(declare-fun derivativeStep!5576 (Regex!19541 C!39356) Regex!19541)

(declare-fun head!15316 (List!72257) C!39356)

(declare-fun tail!14885 (List!72257) List!72257)

(assert (=> b!7463943 (= e!4454056 (matchR!9305 (derivativeStep!5576 lt!2623098 (head!15316 s!13591)) (tail!14885 s!13591)))))

(declare-fun b!7463944 () Bool)

(assert (=> b!7463944 (= e!4454055 (= (head!15316 s!13591) (c!1379608 lt!2623098)))))

(declare-fun d!2298388 () Bool)

(declare-fun e!4454057 () Bool)

(assert (=> d!2298388 e!4454057))

(declare-fun c!1379691 () Bool)

(assert (=> d!2298388 (= c!1379691 ((_ is EmptyExpr!19541) lt!2623098))))

(assert (=> d!2298388 (= lt!2623146 e!4454056)))

(declare-fun c!1379690 () Bool)

(declare-fun isEmpty!41149 (List!72257) Bool)

(assert (=> d!2298388 (= c!1379690 (isEmpty!41149 s!13591))))

(assert (=> d!2298388 (validRegex!10055 lt!2623098)))

(assert (=> d!2298388 (= (matchR!9305 lt!2623098 s!13591) lt!2623146)))

(declare-fun b!7463945 () Bool)

(assert (=> b!7463945 (= e!4454056 (nullable!8517 lt!2623098))))

(declare-fun b!7463946 () Bool)

(declare-fun e!4454053 () Bool)

(assert (=> b!7463946 (= e!4454057 e!4454053)))

(declare-fun c!1379689 () Bool)

(assert (=> b!7463946 (= c!1379689 ((_ is EmptyLang!19541) lt!2623098))))

(declare-fun b!7463947 () Bool)

(declare-fun res!2993970 () Bool)

(assert (=> b!7463947 (=> res!2993970 e!4454054)))

(assert (=> b!7463947 (= res!2993970 (not (isEmpty!41149 (tail!14885 s!13591))))))

(declare-fun b!7463948 () Bool)

(assert (=> b!7463948 (= e!4454057 (= lt!2623146 call!685639))))

(declare-fun b!7463949 () Bool)

(assert (=> b!7463949 (= e!4454059 e!4454058)))

(declare-fun res!2993963 () Bool)

(assert (=> b!7463949 (=> (not res!2993963) (not e!4454058))))

(assert (=> b!7463949 (= res!2993963 (not lt!2623146))))

(declare-fun b!7463950 () Bool)

(declare-fun res!2993968 () Bool)

(assert (=> b!7463950 (=> (not res!2993968) (not e!4454055))))

(assert (=> b!7463950 (= res!2993968 (isEmpty!41149 (tail!14885 s!13591)))))

(declare-fun bm!685634 () Bool)

(assert (=> bm!685634 (= call!685639 (isEmpty!41149 s!13591))))

(declare-fun b!7463951 () Bool)

(declare-fun res!2993964 () Bool)

(assert (=> b!7463951 (=> res!2993964 e!4454059)))

(assert (=> b!7463951 (= res!2993964 (not ((_ is ElementMatch!19541) lt!2623098)))))

(assert (=> b!7463951 (= e!4454053 e!4454059)))

(declare-fun b!7463952 () Bool)

(assert (=> b!7463952 (= e!4454053 (not lt!2623146))))

(declare-fun b!7463953 () Bool)

(assert (=> b!7463953 (= e!4454054 (not (= (head!15316 s!13591) (c!1379608 lt!2623098))))))

(declare-fun b!7463954 () Bool)

(declare-fun res!2993967 () Bool)

(assert (=> b!7463954 (=> (not res!2993967) (not e!4454055))))

(assert (=> b!7463954 (= res!2993967 (not call!685639))))

(assert (= (and d!2298388 c!1379690) b!7463945))

(assert (= (and d!2298388 (not c!1379690)) b!7463943))

(assert (= (and d!2298388 c!1379691) b!7463948))

(assert (= (and d!2298388 (not c!1379691)) b!7463946))

(assert (= (and b!7463946 c!1379689) b!7463952))

(assert (= (and b!7463946 (not c!1379689)) b!7463951))

(assert (= (and b!7463951 (not res!2993964)) b!7463941))

(assert (= (and b!7463941 res!2993966) b!7463954))

(assert (= (and b!7463954 res!2993967) b!7463950))

(assert (= (and b!7463950 res!2993968) b!7463944))

(assert (= (and b!7463941 (not res!2993965)) b!7463949))

(assert (= (and b!7463949 res!2993963) b!7463942))

(assert (= (and b!7463942 (not res!2993969)) b!7463947))

(assert (= (and b!7463947 (not res!2993970)) b!7463953))

(assert (= (or b!7463948 b!7463942 b!7463954) bm!685634))

(declare-fun m!8063730 () Bool)

(assert (=> bm!685634 m!8063730))

(declare-fun m!8063732 () Bool)

(assert (=> b!7463944 m!8063732))

(assert (=> d!2298388 m!8063730))

(assert (=> d!2298388 m!8063528))

(declare-fun m!8063734 () Bool)

(assert (=> b!7463950 m!8063734))

(assert (=> b!7463950 m!8063734))

(declare-fun m!8063736 () Bool)

(assert (=> b!7463950 m!8063736))

(assert (=> b!7463943 m!8063732))

(assert (=> b!7463943 m!8063732))

(declare-fun m!8063738 () Bool)

(assert (=> b!7463943 m!8063738))

(assert (=> b!7463943 m!8063734))

(assert (=> b!7463943 m!8063738))

(assert (=> b!7463943 m!8063734))

(declare-fun m!8063740 () Bool)

(assert (=> b!7463943 m!8063740))

(declare-fun m!8063742 () Bool)

(assert (=> b!7463945 m!8063742))

(assert (=> b!7463947 m!8063734))

(assert (=> b!7463947 m!8063734))

(assert (=> b!7463947 m!8063736))

(assert (=> b!7463953 m!8063732))

(assert (=> b!7463493 d!2298388))

(declare-fun bs!1929796 () Bool)

(declare-fun b!7463987 () Bool)

(assert (= bs!1929796 (and b!7463987 b!7463496)))

(declare-fun lambda!461848 () Int)

(assert (=> bs!1929796 (not (= lambda!461848 lambda!461812))))

(assert (=> bs!1929796 (not (= lambda!461848 lambda!461813))))

(declare-fun bs!1929797 () Bool)

(assert (= bs!1929797 (and b!7463987 d!2298332)))

(assert (=> bs!1929797 (not (= lambda!461848 lambda!461822))))

(declare-fun bs!1929798 () Bool)

(assert (= bs!1929798 (and b!7463987 d!2298364)))

(assert (=> bs!1929798 (not (= lambda!461848 lambda!461840))))

(assert (=> bs!1929798 (not (= lambda!461848 lambda!461838))))

(assert (=> b!7463987 true))

(assert (=> b!7463987 true))

(declare-fun bs!1929799 () Bool)

(declare-fun b!7463994 () Bool)

(assert (= bs!1929799 (and b!7463994 b!7463496)))

(declare-fun lambda!461849 () Int)

(assert (=> bs!1929799 (not (= lambda!461849 lambda!461812))))

(declare-fun bs!1929800 () Bool)

(assert (= bs!1929800 (and b!7463994 b!7463987)))

(assert (=> bs!1929800 (not (= lambda!461849 lambda!461848))))

(assert (=> bs!1929799 (= (and (= (regOne!39594 lt!2623098) lt!2623095) (= (regTwo!39594 lt!2623098) rTail!78)) (= lambda!461849 lambda!461813))))

(declare-fun bs!1929801 () Bool)

(assert (= bs!1929801 (and b!7463994 d!2298332)))

(assert (=> bs!1929801 (not (= lambda!461849 lambda!461822))))

(declare-fun bs!1929802 () Bool)

(assert (= bs!1929802 (and b!7463994 d!2298364)))

(assert (=> bs!1929802 (= (and (= (regOne!39594 lt!2623098) lt!2623095) (= (regTwo!39594 lt!2623098) rTail!78)) (= lambda!461849 lambda!461840))))

(assert (=> bs!1929802 (not (= lambda!461849 lambda!461838))))

(assert (=> b!7463994 true))

(assert (=> b!7463994 true))

(declare-fun d!2298390 () Bool)

(declare-fun c!1379700 () Bool)

(assert (=> d!2298390 (= c!1379700 ((_ is EmptyExpr!19541) lt!2623098))))

(declare-fun e!4454083 () Bool)

(assert (=> d!2298390 (= (matchRSpec!4220 lt!2623098 s!13591) e!4454083)))

(declare-fun e!4454078 () Bool)

(declare-fun call!685644 () Bool)

(assert (=> b!7463987 (= e!4454078 call!685644)))

(declare-fun b!7463988 () Bool)

(declare-fun c!1379701 () Bool)

(assert (=> b!7463988 (= c!1379701 ((_ is ElementMatch!19541) lt!2623098))))

(declare-fun e!4454081 () Bool)

(declare-fun e!4454082 () Bool)

(assert (=> b!7463988 (= e!4454081 e!4454082)))

(declare-fun b!7463989 () Bool)

(declare-fun res!2993987 () Bool)

(assert (=> b!7463989 (=> res!2993987 e!4454078)))

(declare-fun call!685645 () Bool)

(assert (=> b!7463989 (= res!2993987 call!685645)))

(declare-fun e!4454080 () Bool)

(assert (=> b!7463989 (= e!4454080 e!4454078)))

(declare-fun b!7463990 () Bool)

(assert (=> b!7463990 (= e!4454083 call!685645)))

(declare-fun b!7463991 () Bool)

(declare-fun e!4454084 () Bool)

(assert (=> b!7463991 (= e!4454084 e!4454080)))

(declare-fun c!1379703 () Bool)

(assert (=> b!7463991 (= c!1379703 ((_ is Star!19541) lt!2623098))))

(declare-fun b!7463992 () Bool)

(assert (=> b!7463992 (= e!4454083 e!4454081)))

(declare-fun res!2993988 () Bool)

(assert (=> b!7463992 (= res!2993988 (not ((_ is EmptyLang!19541) lt!2623098)))))

(assert (=> b!7463992 (=> (not res!2993988) (not e!4454081))))

(declare-fun b!7463993 () Bool)

(assert (=> b!7463993 (= e!4454082 (= s!13591 (Cons!72133 (c!1379608 lt!2623098) Nil!72133)))))

(assert (=> b!7463994 (= e!4454080 call!685644)))

(declare-fun b!7463995 () Bool)

(declare-fun e!4454079 () Bool)

(assert (=> b!7463995 (= e!4454079 (matchRSpec!4220 (regTwo!39595 lt!2623098) s!13591))))

(declare-fun b!7463996 () Bool)

(assert (=> b!7463996 (= e!4454084 e!4454079)))

(declare-fun res!2993989 () Bool)

(assert (=> b!7463996 (= res!2993989 (matchRSpec!4220 (regOne!39595 lt!2623098) s!13591))))

(assert (=> b!7463996 (=> res!2993989 e!4454079)))

(declare-fun b!7463997 () Bool)

(declare-fun c!1379702 () Bool)

(assert (=> b!7463997 (= c!1379702 ((_ is Union!19541) lt!2623098))))

(assert (=> b!7463997 (= e!4454082 e!4454084)))

(declare-fun bm!685639 () Bool)

(assert (=> bm!685639 (= call!685645 (isEmpty!41149 s!13591))))

(declare-fun bm!685640 () Bool)

(assert (=> bm!685640 (= call!685644 (Exists!4160 (ite c!1379703 lambda!461848 lambda!461849)))))

(assert (= (and d!2298390 c!1379700) b!7463990))

(assert (= (and d!2298390 (not c!1379700)) b!7463992))

(assert (= (and b!7463992 res!2993988) b!7463988))

(assert (= (and b!7463988 c!1379701) b!7463993))

(assert (= (and b!7463988 (not c!1379701)) b!7463997))

(assert (= (and b!7463997 c!1379702) b!7463996))

(assert (= (and b!7463997 (not c!1379702)) b!7463991))

(assert (= (and b!7463996 (not res!2993989)) b!7463995))

(assert (= (and b!7463991 c!1379703) b!7463989))

(assert (= (and b!7463991 (not c!1379703)) b!7463994))

(assert (= (and b!7463989 (not res!2993987)) b!7463987))

(assert (= (or b!7463987 b!7463994) bm!685640))

(assert (= (or b!7463990 b!7463989) bm!685639))

(declare-fun m!8063744 () Bool)

(assert (=> b!7463995 m!8063744))

(declare-fun m!8063746 () Bool)

(assert (=> b!7463996 m!8063746))

(assert (=> bm!685639 m!8063730))

(declare-fun m!8063748 () Bool)

(assert (=> bm!685640 m!8063748))

(assert (=> b!7463493 d!2298390))

(declare-fun bs!1929803 () Bool)

(declare-fun b!7463998 () Bool)

(assert (= bs!1929803 (and b!7463998 b!7463496)))

(declare-fun lambda!461850 () Int)

(assert (=> bs!1929803 (not (= lambda!461850 lambda!461812))))

(declare-fun bs!1929804 () Bool)

(assert (= bs!1929804 (and b!7463998 b!7463994)))

(assert (=> bs!1929804 (not (= lambda!461850 lambda!461849))))

(declare-fun bs!1929805 () Bool)

(assert (= bs!1929805 (and b!7463998 b!7463987)))

(assert (=> bs!1929805 (= (and (= (reg!19870 lt!2623097) (reg!19870 lt!2623098)) (= lt!2623097 lt!2623098)) (= lambda!461850 lambda!461848))))

(assert (=> bs!1929803 (not (= lambda!461850 lambda!461813))))

(declare-fun bs!1929806 () Bool)

(assert (= bs!1929806 (and b!7463998 d!2298332)))

(assert (=> bs!1929806 (not (= lambda!461850 lambda!461822))))

(declare-fun bs!1929807 () Bool)

(assert (= bs!1929807 (and b!7463998 d!2298364)))

(assert (=> bs!1929807 (not (= lambda!461850 lambda!461840))))

(assert (=> bs!1929807 (not (= lambda!461850 lambda!461838))))

(assert (=> b!7463998 true))

(assert (=> b!7463998 true))

(declare-fun bs!1929808 () Bool)

(declare-fun b!7464005 () Bool)

(assert (= bs!1929808 (and b!7464005 b!7463496)))

(declare-fun lambda!461851 () Int)

(assert (=> bs!1929808 (not (= lambda!461851 lambda!461812))))

(declare-fun bs!1929809 () Bool)

(assert (= bs!1929809 (and b!7464005 b!7463998)))

(assert (=> bs!1929809 (not (= lambda!461851 lambda!461850))))

(declare-fun bs!1929810 () Bool)

(assert (= bs!1929810 (and b!7464005 b!7463994)))

(assert (=> bs!1929810 (= (and (= (regOne!39594 lt!2623097) (regOne!39594 lt!2623098)) (= (regTwo!39594 lt!2623097) (regTwo!39594 lt!2623098))) (= lambda!461851 lambda!461849))))

(declare-fun bs!1929811 () Bool)

(assert (= bs!1929811 (and b!7464005 b!7463987)))

(assert (=> bs!1929811 (not (= lambda!461851 lambda!461848))))

(assert (=> bs!1929808 (= (and (= (regOne!39594 lt!2623097) lt!2623095) (= (regTwo!39594 lt!2623097) rTail!78)) (= lambda!461851 lambda!461813))))

(declare-fun bs!1929812 () Bool)

(assert (= bs!1929812 (and b!7464005 d!2298332)))

(assert (=> bs!1929812 (not (= lambda!461851 lambda!461822))))

(declare-fun bs!1929813 () Bool)

(assert (= bs!1929813 (and b!7464005 d!2298364)))

(assert (=> bs!1929813 (= (and (= (regOne!39594 lt!2623097) lt!2623095) (= (regTwo!39594 lt!2623097) rTail!78)) (= lambda!461851 lambda!461840))))

(assert (=> bs!1929813 (not (= lambda!461851 lambda!461838))))

(assert (=> b!7464005 true))

(assert (=> b!7464005 true))

(declare-fun d!2298392 () Bool)

(declare-fun c!1379704 () Bool)

(assert (=> d!2298392 (= c!1379704 ((_ is EmptyExpr!19541) lt!2623097))))

(declare-fun e!4454090 () Bool)

(assert (=> d!2298392 (= (matchRSpec!4220 lt!2623097 s!13591) e!4454090)))

(declare-fun e!4454085 () Bool)

(declare-fun call!685646 () Bool)

(assert (=> b!7463998 (= e!4454085 call!685646)))

(declare-fun b!7463999 () Bool)

(declare-fun c!1379705 () Bool)

(assert (=> b!7463999 (= c!1379705 ((_ is ElementMatch!19541) lt!2623097))))

(declare-fun e!4454088 () Bool)

(declare-fun e!4454089 () Bool)

(assert (=> b!7463999 (= e!4454088 e!4454089)))

(declare-fun b!7464000 () Bool)

(declare-fun res!2993990 () Bool)

(assert (=> b!7464000 (=> res!2993990 e!4454085)))

(declare-fun call!685647 () Bool)

(assert (=> b!7464000 (= res!2993990 call!685647)))

(declare-fun e!4454087 () Bool)

(assert (=> b!7464000 (= e!4454087 e!4454085)))

(declare-fun b!7464001 () Bool)

(assert (=> b!7464001 (= e!4454090 call!685647)))

(declare-fun b!7464002 () Bool)

(declare-fun e!4454091 () Bool)

(assert (=> b!7464002 (= e!4454091 e!4454087)))

(declare-fun c!1379707 () Bool)

(assert (=> b!7464002 (= c!1379707 ((_ is Star!19541) lt!2623097))))

(declare-fun b!7464003 () Bool)

(assert (=> b!7464003 (= e!4454090 e!4454088)))

(declare-fun res!2993991 () Bool)

(assert (=> b!7464003 (= res!2993991 (not ((_ is EmptyLang!19541) lt!2623097)))))

(assert (=> b!7464003 (=> (not res!2993991) (not e!4454088))))

(declare-fun b!7464004 () Bool)

(assert (=> b!7464004 (= e!4454089 (= s!13591 (Cons!72133 (c!1379608 lt!2623097) Nil!72133)))))

(assert (=> b!7464005 (= e!4454087 call!685646)))

(declare-fun b!7464006 () Bool)

(declare-fun e!4454086 () Bool)

(assert (=> b!7464006 (= e!4454086 (matchRSpec!4220 (regTwo!39595 lt!2623097) s!13591))))

(declare-fun b!7464007 () Bool)

(assert (=> b!7464007 (= e!4454091 e!4454086)))

(declare-fun res!2993992 () Bool)

(assert (=> b!7464007 (= res!2993992 (matchRSpec!4220 (regOne!39595 lt!2623097) s!13591))))

(assert (=> b!7464007 (=> res!2993992 e!4454086)))

(declare-fun b!7464008 () Bool)

(declare-fun c!1379706 () Bool)

(assert (=> b!7464008 (= c!1379706 ((_ is Union!19541) lt!2623097))))

(assert (=> b!7464008 (= e!4454089 e!4454091)))

(declare-fun bm!685641 () Bool)

(assert (=> bm!685641 (= call!685647 (isEmpty!41149 s!13591))))

(declare-fun bm!685642 () Bool)

(assert (=> bm!685642 (= call!685646 (Exists!4160 (ite c!1379707 lambda!461850 lambda!461851)))))

(assert (= (and d!2298392 c!1379704) b!7464001))

(assert (= (and d!2298392 (not c!1379704)) b!7464003))

(assert (= (and b!7464003 res!2993991) b!7463999))

(assert (= (and b!7463999 c!1379705) b!7464004))

(assert (= (and b!7463999 (not c!1379705)) b!7464008))

(assert (= (and b!7464008 c!1379706) b!7464007))

(assert (= (and b!7464008 (not c!1379706)) b!7464002))

(assert (= (and b!7464007 (not res!2993992)) b!7464006))

(assert (= (and b!7464002 c!1379707) b!7464000))

(assert (= (and b!7464002 (not c!1379707)) b!7464005))

(assert (= (and b!7464000 (not res!2993990)) b!7463998))

(assert (= (or b!7463998 b!7464005) bm!685642))

(assert (= (or b!7464001 b!7464000) bm!685641))

(declare-fun m!8063750 () Bool)

(assert (=> b!7464006 m!8063750))

(declare-fun m!8063752 () Bool)

(assert (=> b!7464007 m!8063752))

(assert (=> bm!685641 m!8063730))

(declare-fun m!8063754 () Bool)

(assert (=> bm!685642 m!8063754))

(assert (=> b!7463493 d!2298392))

(declare-fun d!2298394 () Bool)

(assert (=> d!2298394 (= (matchR!9305 lt!2623098 s!13591) (matchRSpec!4220 lt!2623098 s!13591))))

(declare-fun lt!2623149 () Unit!165917)

(declare-fun choose!57702 (Regex!19541 List!72257) Unit!165917)

(assert (=> d!2298394 (= lt!2623149 (choose!57702 lt!2623098 s!13591))))

(assert (=> d!2298394 (validRegex!10055 lt!2623098)))

(assert (=> d!2298394 (= (mainMatchTheorem!4214 lt!2623098 s!13591) lt!2623149)))

(declare-fun bs!1929814 () Bool)

(assert (= bs!1929814 d!2298394))

(assert (=> bs!1929814 m!8063524))

(assert (=> bs!1929814 m!8063526))

(declare-fun m!8063756 () Bool)

(assert (=> bs!1929814 m!8063756))

(assert (=> bs!1929814 m!8063528))

(assert (=> b!7463493 d!2298394))

(declare-fun b!7464009 () Bool)

(declare-fun res!2993995 () Bool)

(declare-fun e!4454098 () Bool)

(assert (=> b!7464009 (=> res!2993995 e!4454098)))

(declare-fun e!4454094 () Bool)

(assert (=> b!7464009 (= res!2993995 e!4454094)))

(declare-fun res!2993996 () Bool)

(assert (=> b!7464009 (=> (not res!2993996) (not e!4454094))))

(declare-fun lt!2623150 () Bool)

(assert (=> b!7464009 (= res!2993996 lt!2623150)))

(declare-fun b!7464010 () Bool)

(declare-fun e!4454097 () Bool)

(declare-fun e!4454093 () Bool)

(assert (=> b!7464010 (= e!4454097 e!4454093)))

(declare-fun res!2993999 () Bool)

(assert (=> b!7464010 (=> res!2993999 e!4454093)))

(declare-fun call!685648 () Bool)

(assert (=> b!7464010 (= res!2993999 call!685648)))

(declare-fun b!7464011 () Bool)

(declare-fun e!4454095 () Bool)

(assert (=> b!7464011 (= e!4454095 (matchR!9305 (derivativeStep!5576 lt!2623097 (head!15316 s!13591)) (tail!14885 s!13591)))))

(declare-fun b!7464012 () Bool)

(assert (=> b!7464012 (= e!4454094 (= (head!15316 s!13591) (c!1379608 lt!2623097)))))

(declare-fun d!2298396 () Bool)

(declare-fun e!4454096 () Bool)

(assert (=> d!2298396 e!4454096))

(declare-fun c!1379710 () Bool)

(assert (=> d!2298396 (= c!1379710 ((_ is EmptyExpr!19541) lt!2623097))))

(assert (=> d!2298396 (= lt!2623150 e!4454095)))

(declare-fun c!1379709 () Bool)

(assert (=> d!2298396 (= c!1379709 (isEmpty!41149 s!13591))))

(assert (=> d!2298396 (validRegex!10055 lt!2623097)))

(assert (=> d!2298396 (= (matchR!9305 lt!2623097 s!13591) lt!2623150)))

(declare-fun b!7464013 () Bool)

(assert (=> b!7464013 (= e!4454095 (nullable!8517 lt!2623097))))

(declare-fun b!7464014 () Bool)

(declare-fun e!4454092 () Bool)

(assert (=> b!7464014 (= e!4454096 e!4454092)))

(declare-fun c!1379708 () Bool)

(assert (=> b!7464014 (= c!1379708 ((_ is EmptyLang!19541) lt!2623097))))

(declare-fun b!7464015 () Bool)

(declare-fun res!2994000 () Bool)

(assert (=> b!7464015 (=> res!2994000 e!4454093)))

(assert (=> b!7464015 (= res!2994000 (not (isEmpty!41149 (tail!14885 s!13591))))))

(declare-fun b!7464016 () Bool)

(assert (=> b!7464016 (= e!4454096 (= lt!2623150 call!685648))))

(declare-fun b!7464017 () Bool)

(assert (=> b!7464017 (= e!4454098 e!4454097)))

(declare-fun res!2993993 () Bool)

(assert (=> b!7464017 (=> (not res!2993993) (not e!4454097))))

(assert (=> b!7464017 (= res!2993993 (not lt!2623150))))

(declare-fun b!7464018 () Bool)

(declare-fun res!2993998 () Bool)

(assert (=> b!7464018 (=> (not res!2993998) (not e!4454094))))

(assert (=> b!7464018 (= res!2993998 (isEmpty!41149 (tail!14885 s!13591)))))

(declare-fun bm!685643 () Bool)

(assert (=> bm!685643 (= call!685648 (isEmpty!41149 s!13591))))

(declare-fun b!7464019 () Bool)

(declare-fun res!2993994 () Bool)

(assert (=> b!7464019 (=> res!2993994 e!4454098)))

(assert (=> b!7464019 (= res!2993994 (not ((_ is ElementMatch!19541) lt!2623097)))))

(assert (=> b!7464019 (= e!4454092 e!4454098)))

(declare-fun b!7464020 () Bool)

(assert (=> b!7464020 (= e!4454092 (not lt!2623150))))

(declare-fun b!7464021 () Bool)

(assert (=> b!7464021 (= e!4454093 (not (= (head!15316 s!13591) (c!1379608 lt!2623097))))))

(declare-fun b!7464022 () Bool)

(declare-fun res!2993997 () Bool)

(assert (=> b!7464022 (=> (not res!2993997) (not e!4454094))))

(assert (=> b!7464022 (= res!2993997 (not call!685648))))

(assert (= (and d!2298396 c!1379709) b!7464013))

(assert (= (and d!2298396 (not c!1379709)) b!7464011))

(assert (= (and d!2298396 c!1379710) b!7464016))

(assert (= (and d!2298396 (not c!1379710)) b!7464014))

(assert (= (and b!7464014 c!1379708) b!7464020))

(assert (= (and b!7464014 (not c!1379708)) b!7464019))

(assert (= (and b!7464019 (not res!2993994)) b!7464009))

(assert (= (and b!7464009 res!2993996) b!7464022))

(assert (= (and b!7464022 res!2993997) b!7464018))

(assert (= (and b!7464018 res!2993998) b!7464012))

(assert (= (and b!7464009 (not res!2993995)) b!7464017))

(assert (= (and b!7464017 res!2993993) b!7464010))

(assert (= (and b!7464010 (not res!2993999)) b!7464015))

(assert (= (and b!7464015 (not res!2994000)) b!7464021))

(assert (= (or b!7464016 b!7464010 b!7464022) bm!685643))

(assert (=> bm!685643 m!8063730))

(assert (=> b!7464012 m!8063732))

(assert (=> d!2298396 m!8063730))

(declare-fun m!8063758 () Bool)

(assert (=> d!2298396 m!8063758))

(assert (=> b!7464018 m!8063734))

(assert (=> b!7464018 m!8063734))

(assert (=> b!7464018 m!8063736))

(assert (=> b!7464011 m!8063732))

(assert (=> b!7464011 m!8063732))

(declare-fun m!8063760 () Bool)

(assert (=> b!7464011 m!8063760))

(assert (=> b!7464011 m!8063734))

(assert (=> b!7464011 m!8063760))

(assert (=> b!7464011 m!8063734))

(declare-fun m!8063762 () Bool)

(assert (=> b!7464011 m!8063762))

(declare-fun m!8063764 () Bool)

(assert (=> b!7464013 m!8063764))

(assert (=> b!7464015 m!8063734))

(assert (=> b!7464015 m!8063734))

(assert (=> b!7464015 m!8063736))

(assert (=> b!7464021 m!8063732))

(assert (=> b!7463493 d!2298396))

(declare-fun d!2298398 () Bool)

(assert (=> d!2298398 (= (matchR!9305 lt!2623097 s!13591) (matchRSpec!4220 lt!2623097 s!13591))))

(declare-fun lt!2623151 () Unit!165917)

(assert (=> d!2298398 (= lt!2623151 (choose!57702 lt!2623097 s!13591))))

(assert (=> d!2298398 (validRegex!10055 lt!2623097)))

(assert (=> d!2298398 (= (mainMatchTheorem!4214 lt!2623097 s!13591) lt!2623151)))

(declare-fun bs!1929815 () Bool)

(assert (= bs!1929815 d!2298398))

(assert (=> bs!1929815 m!8063522))

(assert (=> bs!1929815 m!8063516))

(declare-fun m!8063766 () Bool)

(assert (=> bs!1929815 m!8063766))

(assert (=> bs!1929815 m!8063758))

(assert (=> b!7463493 d!2298398))

(declare-fun bm!685644 () Bool)

(declare-fun call!685651 () Bool)

(declare-fun call!685649 () Bool)

(assert (=> bm!685644 (= call!685651 call!685649)))

(declare-fun bm!685645 () Bool)

(declare-fun call!685650 () Bool)

(declare-fun c!1379712 () Bool)

(assert (=> bm!685645 (= call!685650 (validRegex!10055 (ite c!1379712 (regOne!39595 rTail!78) (regOne!39594 rTail!78))))))

(declare-fun b!7464023 () Bool)

(declare-fun e!4454100 () Bool)

(declare-fun e!4454099 () Bool)

(assert (=> b!7464023 (= e!4454100 e!4454099)))

(declare-fun c!1379711 () Bool)

(assert (=> b!7464023 (= c!1379711 ((_ is Star!19541) rTail!78))))

(declare-fun b!7464024 () Bool)

(declare-fun e!4454104 () Bool)

(assert (=> b!7464024 (= e!4454104 call!685651)))

(declare-fun b!7464025 () Bool)

(declare-fun res!2994003 () Bool)

(assert (=> b!7464025 (=> (not res!2994003) (not e!4454104))))

(assert (=> b!7464025 (= res!2994003 call!685650)))

(declare-fun e!4454105 () Bool)

(assert (=> b!7464025 (= e!4454105 e!4454104)))

(declare-fun b!7464026 () Bool)

(declare-fun res!2994004 () Bool)

(declare-fun e!4454102 () Bool)

(assert (=> b!7464026 (=> res!2994004 e!4454102)))

(assert (=> b!7464026 (= res!2994004 (not ((_ is Concat!28386) rTail!78)))))

(assert (=> b!7464026 (= e!4454105 e!4454102)))

(declare-fun b!7464027 () Bool)

(declare-fun e!4454101 () Bool)

(assert (=> b!7464027 (= e!4454102 e!4454101)))

(declare-fun res!2994002 () Bool)

(assert (=> b!7464027 (=> (not res!2994002) (not e!4454101))))

(assert (=> b!7464027 (= res!2994002 call!685650)))

(declare-fun b!7464029 () Bool)

(declare-fun e!4454103 () Bool)

(assert (=> b!7464029 (= e!4454099 e!4454103)))

(declare-fun res!2994001 () Bool)

(assert (=> b!7464029 (= res!2994001 (not (nullable!8517 (reg!19870 rTail!78))))))

(assert (=> b!7464029 (=> (not res!2994001) (not e!4454103))))

(declare-fun b!7464030 () Bool)

(assert (=> b!7464030 (= e!4454099 e!4454105)))

(assert (=> b!7464030 (= c!1379712 ((_ is Union!19541) rTail!78))))

(declare-fun d!2298400 () Bool)

(declare-fun res!2994005 () Bool)

(assert (=> d!2298400 (=> res!2994005 e!4454100)))

(assert (=> d!2298400 (= res!2994005 ((_ is ElementMatch!19541) rTail!78))))

(assert (=> d!2298400 (= (validRegex!10055 rTail!78) e!4454100)))

(declare-fun b!7464028 () Bool)

(assert (=> b!7464028 (= e!4454101 call!685651)))

(declare-fun b!7464031 () Bool)

(assert (=> b!7464031 (= e!4454103 call!685649)))

(declare-fun bm!685646 () Bool)

(assert (=> bm!685646 (= call!685649 (validRegex!10055 (ite c!1379711 (reg!19870 rTail!78) (ite c!1379712 (regTwo!39595 rTail!78) (regTwo!39594 rTail!78)))))))

(assert (= (and d!2298400 (not res!2994005)) b!7464023))

(assert (= (and b!7464023 c!1379711) b!7464029))

(assert (= (and b!7464023 (not c!1379711)) b!7464030))

(assert (= (and b!7464029 res!2994001) b!7464031))

(assert (= (and b!7464030 c!1379712) b!7464025))

(assert (= (and b!7464030 (not c!1379712)) b!7464026))

(assert (= (and b!7464025 res!2994003) b!7464024))

(assert (= (and b!7464026 (not res!2994004)) b!7464027))

(assert (= (and b!7464027 res!2994002) b!7464028))

(assert (= (or b!7464024 b!7464028) bm!685644))

(assert (= (or b!7464025 b!7464027) bm!685645))

(assert (= (or b!7464031 bm!685644) bm!685646))

(declare-fun m!8063768 () Bool)

(assert (=> bm!685645 m!8063768))

(declare-fun m!8063770 () Bool)

(assert (=> b!7464029 m!8063770))

(declare-fun m!8063772 () Bool)

(assert (=> bm!685646 m!8063772))

(assert (=> b!7463500 d!2298400))

(declare-fun bm!685647 () Bool)

(declare-fun call!685654 () Bool)

(declare-fun call!685652 () Bool)

(assert (=> bm!685647 (= call!685654 call!685652)))

(declare-fun bm!685648 () Bool)

(declare-fun call!685653 () Bool)

(declare-fun c!1379714 () Bool)

(assert (=> bm!685648 (= call!685653 (validRegex!10055 (ite c!1379714 (regOne!39595 r2!5783) (regOne!39594 r2!5783))))))

(declare-fun b!7464032 () Bool)

(declare-fun e!4454107 () Bool)

(declare-fun e!4454106 () Bool)

(assert (=> b!7464032 (= e!4454107 e!4454106)))

(declare-fun c!1379713 () Bool)

(assert (=> b!7464032 (= c!1379713 ((_ is Star!19541) r2!5783))))

(declare-fun b!7464033 () Bool)

(declare-fun e!4454111 () Bool)

(assert (=> b!7464033 (= e!4454111 call!685654)))

(declare-fun b!7464034 () Bool)

(declare-fun res!2994008 () Bool)

(assert (=> b!7464034 (=> (not res!2994008) (not e!4454111))))

(assert (=> b!7464034 (= res!2994008 call!685653)))

(declare-fun e!4454112 () Bool)

(assert (=> b!7464034 (= e!4454112 e!4454111)))

(declare-fun b!7464035 () Bool)

(declare-fun res!2994009 () Bool)

(declare-fun e!4454109 () Bool)

(assert (=> b!7464035 (=> res!2994009 e!4454109)))

(assert (=> b!7464035 (= res!2994009 (not ((_ is Concat!28386) r2!5783)))))

(assert (=> b!7464035 (= e!4454112 e!4454109)))

(declare-fun b!7464036 () Bool)

(declare-fun e!4454108 () Bool)

(assert (=> b!7464036 (= e!4454109 e!4454108)))

(declare-fun res!2994007 () Bool)

(assert (=> b!7464036 (=> (not res!2994007) (not e!4454108))))

(assert (=> b!7464036 (= res!2994007 call!685653)))

(declare-fun b!7464038 () Bool)

(declare-fun e!4454110 () Bool)

(assert (=> b!7464038 (= e!4454106 e!4454110)))

(declare-fun res!2994006 () Bool)

(assert (=> b!7464038 (= res!2994006 (not (nullable!8517 (reg!19870 r2!5783))))))

(assert (=> b!7464038 (=> (not res!2994006) (not e!4454110))))

(declare-fun b!7464039 () Bool)

(assert (=> b!7464039 (= e!4454106 e!4454112)))

(assert (=> b!7464039 (= c!1379714 ((_ is Union!19541) r2!5783))))

(declare-fun d!2298402 () Bool)

(declare-fun res!2994010 () Bool)

(assert (=> d!2298402 (=> res!2994010 e!4454107)))

(assert (=> d!2298402 (= res!2994010 ((_ is ElementMatch!19541) r2!5783))))

(assert (=> d!2298402 (= (validRegex!10055 r2!5783) e!4454107)))

(declare-fun b!7464037 () Bool)

(assert (=> b!7464037 (= e!4454108 call!685654)))

(declare-fun b!7464040 () Bool)

(assert (=> b!7464040 (= e!4454110 call!685652)))

(declare-fun bm!685649 () Bool)

(assert (=> bm!685649 (= call!685652 (validRegex!10055 (ite c!1379713 (reg!19870 r2!5783) (ite c!1379714 (regTwo!39595 r2!5783) (regTwo!39594 r2!5783)))))))

(assert (= (and d!2298402 (not res!2994010)) b!7464032))

(assert (= (and b!7464032 c!1379713) b!7464038))

(assert (= (and b!7464032 (not c!1379713)) b!7464039))

(assert (= (and b!7464038 res!2994006) b!7464040))

(assert (= (and b!7464039 c!1379714) b!7464034))

(assert (= (and b!7464039 (not c!1379714)) b!7464035))

(assert (= (and b!7464034 res!2994008) b!7464033))

(assert (= (and b!7464035 (not res!2994009)) b!7464036))

(assert (= (and b!7464036 res!2994007) b!7464037))

(assert (= (or b!7464033 b!7464037) bm!685647))

(assert (= (or b!7464034 b!7464036) bm!685648))

(assert (= (or b!7464040 bm!685647) bm!685649))

(declare-fun m!8063774 () Bool)

(assert (=> bm!685648 m!8063774))

(declare-fun m!8063776 () Bool)

(assert (=> b!7464038 m!8063776))

(declare-fun m!8063778 () Bool)

(assert (=> bm!685649 m!8063778))

(assert (=> b!7463505 d!2298402))

(declare-fun b!7464041 () Bool)

(declare-fun res!2994013 () Bool)

(declare-fun e!4454119 () Bool)

(assert (=> b!7464041 (=> res!2994013 e!4454119)))

(declare-fun e!4454115 () Bool)

(assert (=> b!7464041 (= res!2994013 e!4454115)))

(declare-fun res!2994014 () Bool)

(assert (=> b!7464041 (=> (not res!2994014) (not e!4454115))))

(declare-fun lt!2623152 () Bool)

(assert (=> b!7464041 (= res!2994014 lt!2623152)))

(declare-fun b!7464042 () Bool)

(declare-fun e!4454118 () Bool)

(declare-fun e!4454114 () Bool)

(assert (=> b!7464042 (= e!4454118 e!4454114)))

(declare-fun res!2994017 () Bool)

(assert (=> b!7464042 (=> res!2994017 e!4454114)))

(declare-fun call!685655 () Bool)

(assert (=> b!7464042 (= res!2994017 call!685655)))

(declare-fun b!7464043 () Bool)

(declare-fun e!4454116 () Bool)

(assert (=> b!7464043 (= e!4454116 (matchR!9305 (derivativeStep!5576 lt!2623090 (head!15316 s!13591)) (tail!14885 s!13591)))))

(declare-fun b!7464044 () Bool)

(assert (=> b!7464044 (= e!4454115 (= (head!15316 s!13591) (c!1379608 lt!2623090)))))

(declare-fun d!2298404 () Bool)

(declare-fun e!4454117 () Bool)

(assert (=> d!2298404 e!4454117))

(declare-fun c!1379717 () Bool)

(assert (=> d!2298404 (= c!1379717 ((_ is EmptyExpr!19541) lt!2623090))))

(assert (=> d!2298404 (= lt!2623152 e!4454116)))

(declare-fun c!1379716 () Bool)

(assert (=> d!2298404 (= c!1379716 (isEmpty!41149 s!13591))))

(assert (=> d!2298404 (validRegex!10055 lt!2623090)))

(assert (=> d!2298404 (= (matchR!9305 lt!2623090 s!13591) lt!2623152)))

(declare-fun b!7464045 () Bool)

(assert (=> b!7464045 (= e!4454116 (nullable!8517 lt!2623090))))

(declare-fun b!7464046 () Bool)

(declare-fun e!4454113 () Bool)

(assert (=> b!7464046 (= e!4454117 e!4454113)))

(declare-fun c!1379715 () Bool)

(assert (=> b!7464046 (= c!1379715 ((_ is EmptyLang!19541) lt!2623090))))

(declare-fun b!7464047 () Bool)

(declare-fun res!2994018 () Bool)

(assert (=> b!7464047 (=> res!2994018 e!4454114)))

(assert (=> b!7464047 (= res!2994018 (not (isEmpty!41149 (tail!14885 s!13591))))))

(declare-fun b!7464048 () Bool)

(assert (=> b!7464048 (= e!4454117 (= lt!2623152 call!685655))))

(declare-fun b!7464049 () Bool)

(assert (=> b!7464049 (= e!4454119 e!4454118)))

(declare-fun res!2994011 () Bool)

(assert (=> b!7464049 (=> (not res!2994011) (not e!4454118))))

(assert (=> b!7464049 (= res!2994011 (not lt!2623152))))

(declare-fun b!7464050 () Bool)

(declare-fun res!2994016 () Bool)

(assert (=> b!7464050 (=> (not res!2994016) (not e!4454115))))

(assert (=> b!7464050 (= res!2994016 (isEmpty!41149 (tail!14885 s!13591)))))

(declare-fun bm!685650 () Bool)

(assert (=> bm!685650 (= call!685655 (isEmpty!41149 s!13591))))

(declare-fun b!7464051 () Bool)

(declare-fun res!2994012 () Bool)

(assert (=> b!7464051 (=> res!2994012 e!4454119)))

(assert (=> b!7464051 (= res!2994012 (not ((_ is ElementMatch!19541) lt!2623090)))))

(assert (=> b!7464051 (= e!4454113 e!4454119)))

(declare-fun b!7464052 () Bool)

(assert (=> b!7464052 (= e!4454113 (not lt!2623152))))

(declare-fun b!7464053 () Bool)

(assert (=> b!7464053 (= e!4454114 (not (= (head!15316 s!13591) (c!1379608 lt!2623090))))))

(declare-fun b!7464054 () Bool)

(declare-fun res!2994015 () Bool)

(assert (=> b!7464054 (=> (not res!2994015) (not e!4454115))))

(assert (=> b!7464054 (= res!2994015 (not call!685655))))

(assert (= (and d!2298404 c!1379716) b!7464045))

(assert (= (and d!2298404 (not c!1379716)) b!7464043))

(assert (= (and d!2298404 c!1379717) b!7464048))

(assert (= (and d!2298404 (not c!1379717)) b!7464046))

(assert (= (and b!7464046 c!1379715) b!7464052))

(assert (= (and b!7464046 (not c!1379715)) b!7464051))

(assert (= (and b!7464051 (not res!2994012)) b!7464041))

(assert (= (and b!7464041 res!2994014) b!7464054))

(assert (= (and b!7464054 res!2994015) b!7464050))

(assert (= (and b!7464050 res!2994016) b!7464044))

(assert (= (and b!7464041 (not res!2994013)) b!7464049))

(assert (= (and b!7464049 res!2994011) b!7464042))

(assert (= (and b!7464042 (not res!2994017)) b!7464047))

(assert (= (and b!7464047 (not res!2994018)) b!7464053))

(assert (= (or b!7464048 b!7464042 b!7464054) bm!685650))

(assert (=> bm!685650 m!8063730))

(assert (=> b!7464044 m!8063732))

(assert (=> d!2298404 m!8063730))

(declare-fun m!8063780 () Bool)

(assert (=> d!2298404 m!8063780))

(assert (=> b!7464050 m!8063734))

(assert (=> b!7464050 m!8063734))

(assert (=> b!7464050 m!8063736))

(assert (=> b!7464043 m!8063732))

(assert (=> b!7464043 m!8063732))

(declare-fun m!8063782 () Bool)

(assert (=> b!7464043 m!8063782))

(assert (=> b!7464043 m!8063734))

(assert (=> b!7464043 m!8063782))

(assert (=> b!7464043 m!8063734))

(declare-fun m!8063784 () Bool)

(assert (=> b!7464043 m!8063784))

(declare-fun m!8063786 () Bool)

(assert (=> b!7464045 m!8063786))

(assert (=> b!7464047 m!8063734))

(assert (=> b!7464047 m!8063734))

(assert (=> b!7464047 m!8063736))

(assert (=> b!7464053 m!8063732))

(assert (=> b!7463495 d!2298404))

(declare-fun d!2298406 () Bool)

(assert (=> d!2298406 (= (matchR!9305 lt!2623094 s!13591) (matchRSpec!4220 lt!2623094 s!13591))))

(declare-fun lt!2623153 () Unit!165917)

(assert (=> d!2298406 (= lt!2623153 (choose!57702 lt!2623094 s!13591))))

(assert (=> d!2298406 (validRegex!10055 lt!2623094)))

(assert (=> d!2298406 (= (mainMatchTheorem!4214 lt!2623094 s!13591) lt!2623153)))

(declare-fun bs!1929816 () Bool)

(assert (= bs!1929816 d!2298406))

(assert (=> bs!1929816 m!8063512))

(assert (=> bs!1929816 m!8063506))

(declare-fun m!8063788 () Bool)

(assert (=> bs!1929816 m!8063788))

(declare-fun m!8063790 () Bool)

(assert (=> bs!1929816 m!8063790))

(assert (=> b!7463495 d!2298406))

(declare-fun bs!1929817 () Bool)

(declare-fun b!7464055 () Bool)

(assert (= bs!1929817 (and b!7464055 b!7463496)))

(declare-fun lambda!461852 () Int)

(assert (=> bs!1929817 (not (= lambda!461852 lambda!461812))))

(declare-fun bs!1929818 () Bool)

(assert (= bs!1929818 (and b!7464055 b!7463998)))

(assert (=> bs!1929818 (= (and (= (reg!19870 lt!2623094) (reg!19870 lt!2623097)) (= lt!2623094 lt!2623097)) (= lambda!461852 lambda!461850))))

(declare-fun bs!1929819 () Bool)

(assert (= bs!1929819 (and b!7464055 b!7463994)))

(assert (=> bs!1929819 (not (= lambda!461852 lambda!461849))))

(declare-fun bs!1929820 () Bool)

(assert (= bs!1929820 (and b!7464055 b!7464005)))

(assert (=> bs!1929820 (not (= lambda!461852 lambda!461851))))

(declare-fun bs!1929821 () Bool)

(assert (= bs!1929821 (and b!7464055 b!7463987)))

(assert (=> bs!1929821 (= (and (= (reg!19870 lt!2623094) (reg!19870 lt!2623098)) (= lt!2623094 lt!2623098)) (= lambda!461852 lambda!461848))))

(assert (=> bs!1929817 (not (= lambda!461852 lambda!461813))))

(declare-fun bs!1929822 () Bool)

(assert (= bs!1929822 (and b!7464055 d!2298332)))

(assert (=> bs!1929822 (not (= lambda!461852 lambda!461822))))

(declare-fun bs!1929823 () Bool)

(assert (= bs!1929823 (and b!7464055 d!2298364)))

(assert (=> bs!1929823 (not (= lambda!461852 lambda!461840))))

(assert (=> bs!1929823 (not (= lambda!461852 lambda!461838))))

(assert (=> b!7464055 true))

(assert (=> b!7464055 true))

(declare-fun bs!1929824 () Bool)

(declare-fun b!7464062 () Bool)

(assert (= bs!1929824 (and b!7464062 b!7464055)))

(declare-fun lambda!461853 () Int)

(assert (=> bs!1929824 (not (= lambda!461853 lambda!461852))))

(declare-fun bs!1929825 () Bool)

(assert (= bs!1929825 (and b!7464062 b!7463496)))

(assert (=> bs!1929825 (not (= lambda!461853 lambda!461812))))

(declare-fun bs!1929826 () Bool)

(assert (= bs!1929826 (and b!7464062 b!7463998)))

(assert (=> bs!1929826 (not (= lambda!461853 lambda!461850))))

(declare-fun bs!1929827 () Bool)

(assert (= bs!1929827 (and b!7464062 b!7463994)))

(assert (=> bs!1929827 (= (and (= (regOne!39594 lt!2623094) (regOne!39594 lt!2623098)) (= (regTwo!39594 lt!2623094) (regTwo!39594 lt!2623098))) (= lambda!461853 lambda!461849))))

(declare-fun bs!1929828 () Bool)

(assert (= bs!1929828 (and b!7464062 b!7464005)))

(assert (=> bs!1929828 (= (and (= (regOne!39594 lt!2623094) (regOne!39594 lt!2623097)) (= (regTwo!39594 lt!2623094) (regTwo!39594 lt!2623097))) (= lambda!461853 lambda!461851))))

(declare-fun bs!1929829 () Bool)

(assert (= bs!1929829 (and b!7464062 b!7463987)))

(assert (=> bs!1929829 (not (= lambda!461853 lambda!461848))))

(assert (=> bs!1929825 (= (and (= (regOne!39594 lt!2623094) lt!2623095) (= (regTwo!39594 lt!2623094) rTail!78)) (= lambda!461853 lambda!461813))))

(declare-fun bs!1929830 () Bool)

(assert (= bs!1929830 (and b!7464062 d!2298332)))

(assert (=> bs!1929830 (not (= lambda!461853 lambda!461822))))

(declare-fun bs!1929831 () Bool)

(assert (= bs!1929831 (and b!7464062 d!2298364)))

(assert (=> bs!1929831 (= (and (= (regOne!39594 lt!2623094) lt!2623095) (= (regTwo!39594 lt!2623094) rTail!78)) (= lambda!461853 lambda!461840))))

(assert (=> bs!1929831 (not (= lambda!461853 lambda!461838))))

(assert (=> b!7464062 true))

(assert (=> b!7464062 true))

(declare-fun d!2298408 () Bool)

(declare-fun c!1379718 () Bool)

(assert (=> d!2298408 (= c!1379718 ((_ is EmptyExpr!19541) lt!2623094))))

(declare-fun e!4454125 () Bool)

(assert (=> d!2298408 (= (matchRSpec!4220 lt!2623094 s!13591) e!4454125)))

(declare-fun e!4454120 () Bool)

(declare-fun call!685656 () Bool)

(assert (=> b!7464055 (= e!4454120 call!685656)))

(declare-fun b!7464056 () Bool)

(declare-fun c!1379719 () Bool)

(assert (=> b!7464056 (= c!1379719 ((_ is ElementMatch!19541) lt!2623094))))

(declare-fun e!4454123 () Bool)

(declare-fun e!4454124 () Bool)

(assert (=> b!7464056 (= e!4454123 e!4454124)))

(declare-fun b!7464057 () Bool)

(declare-fun res!2994019 () Bool)

(assert (=> b!7464057 (=> res!2994019 e!4454120)))

(declare-fun call!685657 () Bool)

(assert (=> b!7464057 (= res!2994019 call!685657)))

(declare-fun e!4454122 () Bool)

(assert (=> b!7464057 (= e!4454122 e!4454120)))

(declare-fun b!7464058 () Bool)

(assert (=> b!7464058 (= e!4454125 call!685657)))

(declare-fun b!7464059 () Bool)

(declare-fun e!4454126 () Bool)

(assert (=> b!7464059 (= e!4454126 e!4454122)))

(declare-fun c!1379721 () Bool)

(assert (=> b!7464059 (= c!1379721 ((_ is Star!19541) lt!2623094))))

(declare-fun b!7464060 () Bool)

(assert (=> b!7464060 (= e!4454125 e!4454123)))

(declare-fun res!2994020 () Bool)

(assert (=> b!7464060 (= res!2994020 (not ((_ is EmptyLang!19541) lt!2623094)))))

(assert (=> b!7464060 (=> (not res!2994020) (not e!4454123))))

(declare-fun b!7464061 () Bool)

(assert (=> b!7464061 (= e!4454124 (= s!13591 (Cons!72133 (c!1379608 lt!2623094) Nil!72133)))))

(assert (=> b!7464062 (= e!4454122 call!685656)))

(declare-fun b!7464063 () Bool)

(declare-fun e!4454121 () Bool)

(assert (=> b!7464063 (= e!4454121 (matchRSpec!4220 (regTwo!39595 lt!2623094) s!13591))))

(declare-fun b!7464064 () Bool)

(assert (=> b!7464064 (= e!4454126 e!4454121)))

(declare-fun res!2994021 () Bool)

(assert (=> b!7464064 (= res!2994021 (matchRSpec!4220 (regOne!39595 lt!2623094) s!13591))))

(assert (=> b!7464064 (=> res!2994021 e!4454121)))

(declare-fun b!7464065 () Bool)

(declare-fun c!1379720 () Bool)

(assert (=> b!7464065 (= c!1379720 ((_ is Union!19541) lt!2623094))))

(assert (=> b!7464065 (= e!4454124 e!4454126)))

(declare-fun bm!685651 () Bool)

(assert (=> bm!685651 (= call!685657 (isEmpty!41149 s!13591))))

(declare-fun bm!685652 () Bool)

(assert (=> bm!685652 (= call!685656 (Exists!4160 (ite c!1379721 lambda!461852 lambda!461853)))))

(assert (= (and d!2298408 c!1379718) b!7464058))

(assert (= (and d!2298408 (not c!1379718)) b!7464060))

(assert (= (and b!7464060 res!2994020) b!7464056))

(assert (= (and b!7464056 c!1379719) b!7464061))

(assert (= (and b!7464056 (not c!1379719)) b!7464065))

(assert (= (and b!7464065 c!1379720) b!7464064))

(assert (= (and b!7464065 (not c!1379720)) b!7464059))

(assert (= (and b!7464064 (not res!2994021)) b!7464063))

(assert (= (and b!7464059 c!1379721) b!7464057))

(assert (= (and b!7464059 (not c!1379721)) b!7464062))

(assert (= (and b!7464057 (not res!2994019)) b!7464055))

(assert (= (or b!7464055 b!7464062) bm!685652))

(assert (= (or b!7464058 b!7464057) bm!685651))

(declare-fun m!8063792 () Bool)

(assert (=> b!7464063 m!8063792))

(declare-fun m!8063794 () Bool)

(assert (=> b!7464064 m!8063794))

(assert (=> bm!685651 m!8063730))

(declare-fun m!8063796 () Bool)

(assert (=> bm!685652 m!8063796))

(assert (=> b!7463495 d!2298408))

(declare-fun bs!1929832 () Bool)

(declare-fun b!7464066 () Bool)

(assert (= bs!1929832 (and b!7464066 b!7464055)))

(declare-fun lambda!461854 () Int)

(assert (=> bs!1929832 (= (and (= (reg!19870 lt!2623090) (reg!19870 lt!2623094)) (= lt!2623090 lt!2623094)) (= lambda!461854 lambda!461852))))

(declare-fun bs!1929833 () Bool)

(assert (= bs!1929833 (and b!7464066 b!7463496)))

(assert (=> bs!1929833 (not (= lambda!461854 lambda!461812))))

(declare-fun bs!1929834 () Bool)

(assert (= bs!1929834 (and b!7464066 b!7463998)))

(assert (=> bs!1929834 (= (and (= (reg!19870 lt!2623090) (reg!19870 lt!2623097)) (= lt!2623090 lt!2623097)) (= lambda!461854 lambda!461850))))

(declare-fun bs!1929835 () Bool)

(assert (= bs!1929835 (and b!7464066 b!7463994)))

(assert (=> bs!1929835 (not (= lambda!461854 lambda!461849))))

(declare-fun bs!1929836 () Bool)

(assert (= bs!1929836 (and b!7464066 b!7464062)))

(assert (=> bs!1929836 (not (= lambda!461854 lambda!461853))))

(declare-fun bs!1929837 () Bool)

(assert (= bs!1929837 (and b!7464066 b!7464005)))

(assert (=> bs!1929837 (not (= lambda!461854 lambda!461851))))

(declare-fun bs!1929838 () Bool)

(assert (= bs!1929838 (and b!7464066 b!7463987)))

(assert (=> bs!1929838 (= (and (= (reg!19870 lt!2623090) (reg!19870 lt!2623098)) (= lt!2623090 lt!2623098)) (= lambda!461854 lambda!461848))))

(assert (=> bs!1929833 (not (= lambda!461854 lambda!461813))))

(declare-fun bs!1929839 () Bool)

(assert (= bs!1929839 (and b!7464066 d!2298332)))

(assert (=> bs!1929839 (not (= lambda!461854 lambda!461822))))

(declare-fun bs!1929840 () Bool)

(assert (= bs!1929840 (and b!7464066 d!2298364)))

(assert (=> bs!1929840 (not (= lambda!461854 lambda!461840))))

(assert (=> bs!1929840 (not (= lambda!461854 lambda!461838))))

(assert (=> b!7464066 true))

(assert (=> b!7464066 true))

(declare-fun bs!1929841 () Bool)

(declare-fun b!7464073 () Bool)

(assert (= bs!1929841 (and b!7464073 b!7464055)))

(declare-fun lambda!461855 () Int)

(assert (=> bs!1929841 (not (= lambda!461855 lambda!461852))))

(declare-fun bs!1929842 () Bool)

(assert (= bs!1929842 (and b!7464073 b!7463496)))

(assert (=> bs!1929842 (not (= lambda!461855 lambda!461812))))

(declare-fun bs!1929843 () Bool)

(assert (= bs!1929843 (and b!7464073 b!7463998)))

(assert (=> bs!1929843 (not (= lambda!461855 lambda!461850))))

(declare-fun bs!1929844 () Bool)

(assert (= bs!1929844 (and b!7464073 b!7463994)))

(assert (=> bs!1929844 (= (and (= (regOne!39594 lt!2623090) (regOne!39594 lt!2623098)) (= (regTwo!39594 lt!2623090) (regTwo!39594 lt!2623098))) (= lambda!461855 lambda!461849))))

(declare-fun bs!1929845 () Bool)

(assert (= bs!1929845 (and b!7464073 b!7464062)))

(assert (=> bs!1929845 (= (and (= (regOne!39594 lt!2623090) (regOne!39594 lt!2623094)) (= (regTwo!39594 lt!2623090) (regTwo!39594 lt!2623094))) (= lambda!461855 lambda!461853))))

(declare-fun bs!1929846 () Bool)

(assert (= bs!1929846 (and b!7464073 b!7464005)))

(assert (=> bs!1929846 (= (and (= (regOne!39594 lt!2623090) (regOne!39594 lt!2623097)) (= (regTwo!39594 lt!2623090) (regTwo!39594 lt!2623097))) (= lambda!461855 lambda!461851))))

(assert (=> bs!1929842 (= (and (= (regOne!39594 lt!2623090) lt!2623095) (= (regTwo!39594 lt!2623090) rTail!78)) (= lambda!461855 lambda!461813))))

(declare-fun bs!1929847 () Bool)

(assert (= bs!1929847 (and b!7464073 d!2298332)))

(assert (=> bs!1929847 (not (= lambda!461855 lambda!461822))))

(declare-fun bs!1929848 () Bool)

(assert (= bs!1929848 (and b!7464073 d!2298364)))

(assert (=> bs!1929848 (= (and (= (regOne!39594 lt!2623090) lt!2623095) (= (regTwo!39594 lt!2623090) rTail!78)) (= lambda!461855 lambda!461840))))

(assert (=> bs!1929848 (not (= lambda!461855 lambda!461838))))

(declare-fun bs!1929849 () Bool)

(assert (= bs!1929849 (and b!7464073 b!7464066)))

(assert (=> bs!1929849 (not (= lambda!461855 lambda!461854))))

(declare-fun bs!1929850 () Bool)

(assert (= bs!1929850 (and b!7464073 b!7463987)))

(assert (=> bs!1929850 (not (= lambda!461855 lambda!461848))))

(assert (=> b!7464073 true))

(assert (=> b!7464073 true))

(declare-fun d!2298410 () Bool)

(declare-fun c!1379722 () Bool)

(assert (=> d!2298410 (= c!1379722 ((_ is EmptyExpr!19541) lt!2623090))))

(declare-fun e!4454132 () Bool)

(assert (=> d!2298410 (= (matchRSpec!4220 lt!2623090 s!13591) e!4454132)))

(declare-fun e!4454127 () Bool)

(declare-fun call!685658 () Bool)

(assert (=> b!7464066 (= e!4454127 call!685658)))

(declare-fun b!7464067 () Bool)

(declare-fun c!1379723 () Bool)

(assert (=> b!7464067 (= c!1379723 ((_ is ElementMatch!19541) lt!2623090))))

(declare-fun e!4454130 () Bool)

(declare-fun e!4454131 () Bool)

(assert (=> b!7464067 (= e!4454130 e!4454131)))

(declare-fun b!7464068 () Bool)

(declare-fun res!2994022 () Bool)

(assert (=> b!7464068 (=> res!2994022 e!4454127)))

(declare-fun call!685659 () Bool)

(assert (=> b!7464068 (= res!2994022 call!685659)))

(declare-fun e!4454129 () Bool)

(assert (=> b!7464068 (= e!4454129 e!4454127)))

(declare-fun b!7464069 () Bool)

(assert (=> b!7464069 (= e!4454132 call!685659)))

(declare-fun b!7464070 () Bool)

(declare-fun e!4454133 () Bool)

(assert (=> b!7464070 (= e!4454133 e!4454129)))

(declare-fun c!1379725 () Bool)

(assert (=> b!7464070 (= c!1379725 ((_ is Star!19541) lt!2623090))))

(declare-fun b!7464071 () Bool)

(assert (=> b!7464071 (= e!4454132 e!4454130)))

(declare-fun res!2994023 () Bool)

(assert (=> b!7464071 (= res!2994023 (not ((_ is EmptyLang!19541) lt!2623090)))))

(assert (=> b!7464071 (=> (not res!2994023) (not e!4454130))))

(declare-fun b!7464072 () Bool)

(assert (=> b!7464072 (= e!4454131 (= s!13591 (Cons!72133 (c!1379608 lt!2623090) Nil!72133)))))

(assert (=> b!7464073 (= e!4454129 call!685658)))

(declare-fun b!7464074 () Bool)

(declare-fun e!4454128 () Bool)

(assert (=> b!7464074 (= e!4454128 (matchRSpec!4220 (regTwo!39595 lt!2623090) s!13591))))

(declare-fun b!7464075 () Bool)

(assert (=> b!7464075 (= e!4454133 e!4454128)))

(declare-fun res!2994024 () Bool)

(assert (=> b!7464075 (= res!2994024 (matchRSpec!4220 (regOne!39595 lt!2623090) s!13591))))

(assert (=> b!7464075 (=> res!2994024 e!4454128)))

(declare-fun b!7464076 () Bool)

(declare-fun c!1379724 () Bool)

(assert (=> b!7464076 (= c!1379724 ((_ is Union!19541) lt!2623090))))

(assert (=> b!7464076 (= e!4454131 e!4454133)))

(declare-fun bm!685653 () Bool)

(assert (=> bm!685653 (= call!685659 (isEmpty!41149 s!13591))))

(declare-fun bm!685654 () Bool)

(assert (=> bm!685654 (= call!685658 (Exists!4160 (ite c!1379725 lambda!461854 lambda!461855)))))

(assert (= (and d!2298410 c!1379722) b!7464069))

(assert (= (and d!2298410 (not c!1379722)) b!7464071))

(assert (= (and b!7464071 res!2994023) b!7464067))

(assert (= (and b!7464067 c!1379723) b!7464072))

(assert (= (and b!7464067 (not c!1379723)) b!7464076))

(assert (= (and b!7464076 c!1379724) b!7464075))

(assert (= (and b!7464076 (not c!1379724)) b!7464070))

(assert (= (and b!7464075 (not res!2994024)) b!7464074))

(assert (= (and b!7464070 c!1379725) b!7464068))

(assert (= (and b!7464070 (not c!1379725)) b!7464073))

(assert (= (and b!7464068 (not res!2994022)) b!7464066))

(assert (= (or b!7464066 b!7464073) bm!685654))

(assert (= (or b!7464069 b!7464068) bm!685653))

(declare-fun m!8063798 () Bool)

(assert (=> b!7464074 m!8063798))

(declare-fun m!8063800 () Bool)

(assert (=> b!7464075 m!8063800))

(assert (=> bm!685653 m!8063730))

(declare-fun m!8063802 () Bool)

(assert (=> bm!685654 m!8063802))

(assert (=> b!7463495 d!2298410))

(declare-fun d!2298412 () Bool)

(assert (=> d!2298412 (= (matchR!9305 lt!2623090 s!13591) (matchRSpec!4220 lt!2623090 s!13591))))

(declare-fun lt!2623154 () Unit!165917)

(assert (=> d!2298412 (= lt!2623154 (choose!57702 lt!2623090 s!13591))))

(assert (=> d!2298412 (validRegex!10055 lt!2623090)))

(assert (=> d!2298412 (= (mainMatchTheorem!4214 lt!2623090 s!13591) lt!2623154)))

(declare-fun bs!1929851 () Bool)

(assert (= bs!1929851 d!2298412))

(assert (=> bs!1929851 m!8063510))

(assert (=> bs!1929851 m!8063508))

(declare-fun m!8063804 () Bool)

(assert (=> bs!1929851 m!8063804))

(assert (=> bs!1929851 m!8063780))

(assert (=> b!7463495 d!2298412))

(declare-fun b!7464077 () Bool)

(declare-fun res!2994027 () Bool)

(declare-fun e!4454140 () Bool)

(assert (=> b!7464077 (=> res!2994027 e!4454140)))

(declare-fun e!4454136 () Bool)

(assert (=> b!7464077 (= res!2994027 e!4454136)))

(declare-fun res!2994028 () Bool)

(assert (=> b!7464077 (=> (not res!2994028) (not e!4454136))))

(declare-fun lt!2623155 () Bool)

(assert (=> b!7464077 (= res!2994028 lt!2623155)))

(declare-fun b!7464078 () Bool)

(declare-fun e!4454139 () Bool)

(declare-fun e!4454135 () Bool)

(assert (=> b!7464078 (= e!4454139 e!4454135)))

(declare-fun res!2994031 () Bool)

(assert (=> b!7464078 (=> res!2994031 e!4454135)))

(declare-fun call!685660 () Bool)

(assert (=> b!7464078 (= res!2994031 call!685660)))

(declare-fun b!7464079 () Bool)

(declare-fun e!4454137 () Bool)

(assert (=> b!7464079 (= e!4454137 (matchR!9305 (derivativeStep!5576 lt!2623094 (head!15316 s!13591)) (tail!14885 s!13591)))))

(declare-fun b!7464080 () Bool)

(assert (=> b!7464080 (= e!4454136 (= (head!15316 s!13591) (c!1379608 lt!2623094)))))

(declare-fun d!2298414 () Bool)

(declare-fun e!4454138 () Bool)

(assert (=> d!2298414 e!4454138))

(declare-fun c!1379728 () Bool)

(assert (=> d!2298414 (= c!1379728 ((_ is EmptyExpr!19541) lt!2623094))))

(assert (=> d!2298414 (= lt!2623155 e!4454137)))

(declare-fun c!1379727 () Bool)

(assert (=> d!2298414 (= c!1379727 (isEmpty!41149 s!13591))))

(assert (=> d!2298414 (validRegex!10055 lt!2623094)))

(assert (=> d!2298414 (= (matchR!9305 lt!2623094 s!13591) lt!2623155)))

(declare-fun b!7464081 () Bool)

(assert (=> b!7464081 (= e!4454137 (nullable!8517 lt!2623094))))

(declare-fun b!7464082 () Bool)

(declare-fun e!4454134 () Bool)

(assert (=> b!7464082 (= e!4454138 e!4454134)))

(declare-fun c!1379726 () Bool)

(assert (=> b!7464082 (= c!1379726 ((_ is EmptyLang!19541) lt!2623094))))

(declare-fun b!7464083 () Bool)

(declare-fun res!2994032 () Bool)

(assert (=> b!7464083 (=> res!2994032 e!4454135)))

(assert (=> b!7464083 (= res!2994032 (not (isEmpty!41149 (tail!14885 s!13591))))))

(declare-fun b!7464084 () Bool)

(assert (=> b!7464084 (= e!4454138 (= lt!2623155 call!685660))))

(declare-fun b!7464085 () Bool)

(assert (=> b!7464085 (= e!4454140 e!4454139)))

(declare-fun res!2994025 () Bool)

(assert (=> b!7464085 (=> (not res!2994025) (not e!4454139))))

(assert (=> b!7464085 (= res!2994025 (not lt!2623155))))

(declare-fun b!7464086 () Bool)

(declare-fun res!2994030 () Bool)

(assert (=> b!7464086 (=> (not res!2994030) (not e!4454136))))

(assert (=> b!7464086 (= res!2994030 (isEmpty!41149 (tail!14885 s!13591)))))

(declare-fun bm!685655 () Bool)

(assert (=> bm!685655 (= call!685660 (isEmpty!41149 s!13591))))

(declare-fun b!7464087 () Bool)

(declare-fun res!2994026 () Bool)

(assert (=> b!7464087 (=> res!2994026 e!4454140)))

(assert (=> b!7464087 (= res!2994026 (not ((_ is ElementMatch!19541) lt!2623094)))))

(assert (=> b!7464087 (= e!4454134 e!4454140)))

(declare-fun b!7464088 () Bool)

(assert (=> b!7464088 (= e!4454134 (not lt!2623155))))

(declare-fun b!7464089 () Bool)

(assert (=> b!7464089 (= e!4454135 (not (= (head!15316 s!13591) (c!1379608 lt!2623094))))))

(declare-fun b!7464090 () Bool)

(declare-fun res!2994029 () Bool)

(assert (=> b!7464090 (=> (not res!2994029) (not e!4454136))))

(assert (=> b!7464090 (= res!2994029 (not call!685660))))

(assert (= (and d!2298414 c!1379727) b!7464081))

(assert (= (and d!2298414 (not c!1379727)) b!7464079))

(assert (= (and d!2298414 c!1379728) b!7464084))

(assert (= (and d!2298414 (not c!1379728)) b!7464082))

(assert (= (and b!7464082 c!1379726) b!7464088))

(assert (= (and b!7464082 (not c!1379726)) b!7464087))

(assert (= (and b!7464087 (not res!2994026)) b!7464077))

(assert (= (and b!7464077 res!2994028) b!7464090))

(assert (= (and b!7464090 res!2994029) b!7464086))

(assert (= (and b!7464086 res!2994030) b!7464080))

(assert (= (and b!7464077 (not res!2994027)) b!7464085))

(assert (= (and b!7464085 res!2994025) b!7464078))

(assert (= (and b!7464078 (not res!2994031)) b!7464083))

(assert (= (and b!7464083 (not res!2994032)) b!7464089))

(assert (= (or b!7464084 b!7464078 b!7464090) bm!685655))

(assert (=> bm!685655 m!8063730))

(assert (=> b!7464080 m!8063732))

(assert (=> d!2298414 m!8063730))

(assert (=> d!2298414 m!8063790))

(assert (=> b!7464086 m!8063734))

(assert (=> b!7464086 m!8063734))

(assert (=> b!7464086 m!8063736))

(assert (=> b!7464079 m!8063732))

(assert (=> b!7464079 m!8063732))

(declare-fun m!8063806 () Bool)

(assert (=> b!7464079 m!8063806))

(assert (=> b!7464079 m!8063734))

(assert (=> b!7464079 m!8063806))

(assert (=> b!7464079 m!8063734))

(declare-fun m!8063808 () Bool)

(assert (=> b!7464079 m!8063808))

(declare-fun m!8063810 () Bool)

(assert (=> b!7464081 m!8063810))

(assert (=> b!7464083 m!8063734))

(assert (=> b!7464083 m!8063734))

(assert (=> b!7464083 m!8063736))

(assert (=> b!7464089 m!8063732))

(assert (=> b!7463495 d!2298414))

(declare-fun b!7464102 () Bool)

(declare-fun e!4454143 () Bool)

(declare-fun tp!2163504 () Bool)

(declare-fun tp!2163503 () Bool)

(assert (=> b!7464102 (= e!4454143 (and tp!2163504 tp!2163503))))

(declare-fun b!7464103 () Bool)

(declare-fun tp!2163502 () Bool)

(assert (=> b!7464103 (= e!4454143 tp!2163502)))

(declare-fun b!7464104 () Bool)

(declare-fun tp!2163505 () Bool)

(declare-fun tp!2163506 () Bool)

(assert (=> b!7464104 (= e!4454143 (and tp!2163505 tp!2163506))))

(declare-fun b!7464101 () Bool)

(assert (=> b!7464101 (= e!4454143 tp_is_empty!49371)))

(assert (=> b!7463501 (= tp!2163396 e!4454143)))

(assert (= (and b!7463501 ((_ is ElementMatch!19541) (regOne!39594 r2!5783))) b!7464101))

(assert (= (and b!7463501 ((_ is Concat!28386) (regOne!39594 r2!5783))) b!7464102))

(assert (= (and b!7463501 ((_ is Star!19541) (regOne!39594 r2!5783))) b!7464103))

(assert (= (and b!7463501 ((_ is Union!19541) (regOne!39594 r2!5783))) b!7464104))

(declare-fun b!7464106 () Bool)

(declare-fun e!4454144 () Bool)

(declare-fun tp!2163509 () Bool)

(declare-fun tp!2163508 () Bool)

(assert (=> b!7464106 (= e!4454144 (and tp!2163509 tp!2163508))))

(declare-fun b!7464107 () Bool)

(declare-fun tp!2163507 () Bool)

(assert (=> b!7464107 (= e!4454144 tp!2163507)))

(declare-fun b!7464108 () Bool)

(declare-fun tp!2163510 () Bool)

(declare-fun tp!2163511 () Bool)

(assert (=> b!7464108 (= e!4454144 (and tp!2163510 tp!2163511))))

(declare-fun b!7464105 () Bool)

(assert (=> b!7464105 (= e!4454144 tp_is_empty!49371)))

(assert (=> b!7463501 (= tp!2163400 e!4454144)))

(assert (= (and b!7463501 ((_ is ElementMatch!19541) (regTwo!39594 r2!5783))) b!7464105))

(assert (= (and b!7463501 ((_ is Concat!28386) (regTwo!39594 r2!5783))) b!7464106))

(assert (= (and b!7463501 ((_ is Star!19541) (regTwo!39594 r2!5783))) b!7464107))

(assert (= (and b!7463501 ((_ is Union!19541) (regTwo!39594 r2!5783))) b!7464108))

(declare-fun b!7464110 () Bool)

(declare-fun e!4454145 () Bool)

(declare-fun tp!2163514 () Bool)

(declare-fun tp!2163513 () Bool)

(assert (=> b!7464110 (= e!4454145 (and tp!2163514 tp!2163513))))

(declare-fun b!7464111 () Bool)

(declare-fun tp!2163512 () Bool)

(assert (=> b!7464111 (= e!4454145 tp!2163512)))

(declare-fun b!7464112 () Bool)

(declare-fun tp!2163515 () Bool)

(declare-fun tp!2163516 () Bool)

(assert (=> b!7464112 (= e!4454145 (and tp!2163515 tp!2163516))))

(declare-fun b!7464109 () Bool)

(assert (=> b!7464109 (= e!4454145 tp_is_empty!49371)))

(assert (=> b!7463491 (= tp!2163394 e!4454145)))

(assert (= (and b!7463491 ((_ is ElementMatch!19541) (regOne!39595 r2!5783))) b!7464109))

(assert (= (and b!7463491 ((_ is Concat!28386) (regOne!39595 r2!5783))) b!7464110))

(assert (= (and b!7463491 ((_ is Star!19541) (regOne!39595 r2!5783))) b!7464111))

(assert (= (and b!7463491 ((_ is Union!19541) (regOne!39595 r2!5783))) b!7464112))

(declare-fun b!7464114 () Bool)

(declare-fun e!4454146 () Bool)

(declare-fun tp!2163519 () Bool)

(declare-fun tp!2163518 () Bool)

(assert (=> b!7464114 (= e!4454146 (and tp!2163519 tp!2163518))))

(declare-fun b!7464115 () Bool)

(declare-fun tp!2163517 () Bool)

(assert (=> b!7464115 (= e!4454146 tp!2163517)))

(declare-fun b!7464116 () Bool)

(declare-fun tp!2163520 () Bool)

(declare-fun tp!2163521 () Bool)

(assert (=> b!7464116 (= e!4454146 (and tp!2163520 tp!2163521))))

(declare-fun b!7464113 () Bool)

(assert (=> b!7464113 (= e!4454146 tp_is_empty!49371)))

(assert (=> b!7463491 (= tp!2163390 e!4454146)))

(assert (= (and b!7463491 ((_ is ElementMatch!19541) (regTwo!39595 r2!5783))) b!7464113))

(assert (= (and b!7463491 ((_ is Concat!28386) (regTwo!39595 r2!5783))) b!7464114))

(assert (= (and b!7463491 ((_ is Star!19541) (regTwo!39595 r2!5783))) b!7464115))

(assert (= (and b!7463491 ((_ is Union!19541) (regTwo!39595 r2!5783))) b!7464116))

(declare-fun b!7464118 () Bool)

(declare-fun e!4454147 () Bool)

(declare-fun tp!2163524 () Bool)

(declare-fun tp!2163523 () Bool)

(assert (=> b!7464118 (= e!4454147 (and tp!2163524 tp!2163523))))

(declare-fun b!7464119 () Bool)

(declare-fun tp!2163522 () Bool)

(assert (=> b!7464119 (= e!4454147 tp!2163522)))

(declare-fun b!7464120 () Bool)

(declare-fun tp!2163525 () Bool)

(declare-fun tp!2163526 () Bool)

(assert (=> b!7464120 (= e!4454147 (and tp!2163525 tp!2163526))))

(declare-fun b!7464117 () Bool)

(assert (=> b!7464117 (= e!4454147 tp_is_empty!49371)))

(assert (=> b!7463492 (= tp!2163388 e!4454147)))

(assert (= (and b!7463492 ((_ is ElementMatch!19541) (regOne!39595 rTail!78))) b!7464117))

(assert (= (and b!7463492 ((_ is Concat!28386) (regOne!39595 rTail!78))) b!7464118))

(assert (= (and b!7463492 ((_ is Star!19541) (regOne!39595 rTail!78))) b!7464119))

(assert (= (and b!7463492 ((_ is Union!19541) (regOne!39595 rTail!78))) b!7464120))

(declare-fun b!7464122 () Bool)

(declare-fun e!4454148 () Bool)

(declare-fun tp!2163529 () Bool)

(declare-fun tp!2163528 () Bool)

(assert (=> b!7464122 (= e!4454148 (and tp!2163529 tp!2163528))))

(declare-fun b!7464123 () Bool)

(declare-fun tp!2163527 () Bool)

(assert (=> b!7464123 (= e!4454148 tp!2163527)))

(declare-fun b!7464124 () Bool)

(declare-fun tp!2163530 () Bool)

(declare-fun tp!2163531 () Bool)

(assert (=> b!7464124 (= e!4454148 (and tp!2163530 tp!2163531))))

(declare-fun b!7464121 () Bool)

(assert (=> b!7464121 (= e!4454148 tp_is_empty!49371)))

(assert (=> b!7463492 (= tp!2163392 e!4454148)))

(assert (= (and b!7463492 ((_ is ElementMatch!19541) (regTwo!39595 rTail!78))) b!7464121))

(assert (= (and b!7463492 ((_ is Concat!28386) (regTwo!39595 rTail!78))) b!7464122))

(assert (= (and b!7463492 ((_ is Star!19541) (regTwo!39595 rTail!78))) b!7464123))

(assert (= (and b!7463492 ((_ is Union!19541) (regTwo!39595 rTail!78))) b!7464124))

(declare-fun b!7464126 () Bool)

(declare-fun e!4454149 () Bool)

(declare-fun tp!2163534 () Bool)

(declare-fun tp!2163533 () Bool)

(assert (=> b!7464126 (= e!4454149 (and tp!2163534 tp!2163533))))

(declare-fun b!7464127 () Bool)

(declare-fun tp!2163532 () Bool)

(assert (=> b!7464127 (= e!4454149 tp!2163532)))

(declare-fun b!7464128 () Bool)

(declare-fun tp!2163535 () Bool)

(declare-fun tp!2163536 () Bool)

(assert (=> b!7464128 (= e!4454149 (and tp!2163535 tp!2163536))))

(declare-fun b!7464125 () Bool)

(assert (=> b!7464125 (= e!4454149 tp_is_empty!49371)))

(assert (=> b!7463497 (= tp!2163403 e!4454149)))

(assert (= (and b!7463497 ((_ is ElementMatch!19541) (regOne!39594 rTail!78))) b!7464125))

(assert (= (and b!7463497 ((_ is Concat!28386) (regOne!39594 rTail!78))) b!7464126))

(assert (= (and b!7463497 ((_ is Star!19541) (regOne!39594 rTail!78))) b!7464127))

(assert (= (and b!7463497 ((_ is Union!19541) (regOne!39594 rTail!78))) b!7464128))

(declare-fun b!7464130 () Bool)

(declare-fun e!4454150 () Bool)

(declare-fun tp!2163539 () Bool)

(declare-fun tp!2163538 () Bool)

(assert (=> b!7464130 (= e!4454150 (and tp!2163539 tp!2163538))))

(declare-fun b!7464131 () Bool)

(declare-fun tp!2163537 () Bool)

(assert (=> b!7464131 (= e!4454150 tp!2163537)))

(declare-fun b!7464132 () Bool)

(declare-fun tp!2163540 () Bool)

(declare-fun tp!2163541 () Bool)

(assert (=> b!7464132 (= e!4454150 (and tp!2163540 tp!2163541))))

(declare-fun b!7464129 () Bool)

(assert (=> b!7464129 (= e!4454150 tp_is_empty!49371)))

(assert (=> b!7463497 (= tp!2163397 e!4454150)))

(assert (= (and b!7463497 ((_ is ElementMatch!19541) (regTwo!39594 rTail!78))) b!7464129))

(assert (= (and b!7463497 ((_ is Concat!28386) (regTwo!39594 rTail!78))) b!7464130))

(assert (= (and b!7463497 ((_ is Star!19541) (regTwo!39594 rTail!78))) b!7464131))

(assert (= (and b!7463497 ((_ is Union!19541) (regTwo!39594 rTail!78))) b!7464132))

(declare-fun b!7464134 () Bool)

(declare-fun e!4454151 () Bool)

(declare-fun tp!2163544 () Bool)

(declare-fun tp!2163543 () Bool)

(assert (=> b!7464134 (= e!4454151 (and tp!2163544 tp!2163543))))

(declare-fun b!7464135 () Bool)

(declare-fun tp!2163542 () Bool)

(assert (=> b!7464135 (= e!4454151 tp!2163542)))

(declare-fun b!7464136 () Bool)

(declare-fun tp!2163545 () Bool)

(declare-fun tp!2163546 () Bool)

(assert (=> b!7464136 (= e!4454151 (and tp!2163545 tp!2163546))))

(declare-fun b!7464133 () Bool)

(assert (=> b!7464133 (= e!4454151 tp_is_empty!49371)))

(assert (=> b!7463498 (= tp!2163402 e!4454151)))

(assert (= (and b!7463498 ((_ is ElementMatch!19541) (regOne!39595 r1!5845))) b!7464133))

(assert (= (and b!7463498 ((_ is Concat!28386) (regOne!39595 r1!5845))) b!7464134))

(assert (= (and b!7463498 ((_ is Star!19541) (regOne!39595 r1!5845))) b!7464135))

(assert (= (and b!7463498 ((_ is Union!19541) (regOne!39595 r1!5845))) b!7464136))

(declare-fun b!7464138 () Bool)

(declare-fun e!4454152 () Bool)

(declare-fun tp!2163549 () Bool)

(declare-fun tp!2163548 () Bool)

(assert (=> b!7464138 (= e!4454152 (and tp!2163549 tp!2163548))))

(declare-fun b!7464139 () Bool)

(declare-fun tp!2163547 () Bool)

(assert (=> b!7464139 (= e!4454152 tp!2163547)))

(declare-fun b!7464140 () Bool)

(declare-fun tp!2163550 () Bool)

(declare-fun tp!2163551 () Bool)

(assert (=> b!7464140 (= e!4454152 (and tp!2163550 tp!2163551))))

(declare-fun b!7464137 () Bool)

(assert (=> b!7464137 (= e!4454152 tp_is_empty!49371)))

(assert (=> b!7463498 (= tp!2163401 e!4454152)))

(assert (= (and b!7463498 ((_ is ElementMatch!19541) (regTwo!39595 r1!5845))) b!7464137))

(assert (= (and b!7463498 ((_ is Concat!28386) (regTwo!39595 r1!5845))) b!7464138))

(assert (= (and b!7463498 ((_ is Star!19541) (regTwo!39595 r1!5845))) b!7464139))

(assert (= (and b!7463498 ((_ is Union!19541) (regTwo!39595 r1!5845))) b!7464140))

(declare-fun b!7464142 () Bool)

(declare-fun e!4454153 () Bool)

(declare-fun tp!2163554 () Bool)

(declare-fun tp!2163553 () Bool)

(assert (=> b!7464142 (= e!4454153 (and tp!2163554 tp!2163553))))

(declare-fun b!7464143 () Bool)

(declare-fun tp!2163552 () Bool)

(assert (=> b!7464143 (= e!4454153 tp!2163552)))

(declare-fun b!7464144 () Bool)

(declare-fun tp!2163555 () Bool)

(declare-fun tp!2163556 () Bool)

(assert (=> b!7464144 (= e!4454153 (and tp!2163555 tp!2163556))))

(declare-fun b!7464141 () Bool)

(assert (=> b!7464141 (= e!4454153 tp_is_empty!49371)))

(assert (=> b!7463503 (= tp!2163389 e!4454153)))

(assert (= (and b!7463503 ((_ is ElementMatch!19541) (reg!19870 rTail!78))) b!7464141))

(assert (= (and b!7463503 ((_ is Concat!28386) (reg!19870 rTail!78))) b!7464142))

(assert (= (and b!7463503 ((_ is Star!19541) (reg!19870 rTail!78))) b!7464143))

(assert (= (and b!7463503 ((_ is Union!19541) (reg!19870 rTail!78))) b!7464144))

(declare-fun b!7464146 () Bool)

(declare-fun e!4454154 () Bool)

(declare-fun tp!2163559 () Bool)

(declare-fun tp!2163558 () Bool)

(assert (=> b!7464146 (= e!4454154 (and tp!2163559 tp!2163558))))

(declare-fun b!7464147 () Bool)

(declare-fun tp!2163557 () Bool)

(assert (=> b!7464147 (= e!4454154 tp!2163557)))

(declare-fun b!7464148 () Bool)

(declare-fun tp!2163560 () Bool)

(declare-fun tp!2163561 () Bool)

(assert (=> b!7464148 (= e!4454154 (and tp!2163560 tp!2163561))))

(declare-fun b!7464145 () Bool)

(assert (=> b!7464145 (= e!4454154 tp_is_empty!49371)))

(assert (=> b!7463488 (= tp!2163391 e!4454154)))

(assert (= (and b!7463488 ((_ is ElementMatch!19541) (reg!19870 r1!5845))) b!7464145))

(assert (= (and b!7463488 ((_ is Concat!28386) (reg!19870 r1!5845))) b!7464146))

(assert (= (and b!7463488 ((_ is Star!19541) (reg!19870 r1!5845))) b!7464147))

(assert (= (and b!7463488 ((_ is Union!19541) (reg!19870 r1!5845))) b!7464148))

(declare-fun b!7464150 () Bool)

(declare-fun e!4454155 () Bool)

(declare-fun tp!2163564 () Bool)

(declare-fun tp!2163563 () Bool)

(assert (=> b!7464150 (= e!4454155 (and tp!2163564 tp!2163563))))

(declare-fun b!7464151 () Bool)

(declare-fun tp!2163562 () Bool)

(assert (=> b!7464151 (= e!4454155 tp!2163562)))

(declare-fun b!7464152 () Bool)

(declare-fun tp!2163565 () Bool)

(declare-fun tp!2163566 () Bool)

(assert (=> b!7464152 (= e!4454155 (and tp!2163565 tp!2163566))))

(declare-fun b!7464149 () Bool)

(assert (=> b!7464149 (= e!4454155 tp_is_empty!49371)))

(assert (=> b!7463494 (= tp!2163393 e!4454155)))

(assert (= (and b!7463494 ((_ is ElementMatch!19541) (reg!19870 r2!5783))) b!7464149))

(assert (= (and b!7463494 ((_ is Concat!28386) (reg!19870 r2!5783))) b!7464150))

(assert (= (and b!7463494 ((_ is Star!19541) (reg!19870 r2!5783))) b!7464151))

(assert (= (and b!7463494 ((_ is Union!19541) (reg!19870 r2!5783))) b!7464152))

(declare-fun b!7464157 () Bool)

(declare-fun e!4454158 () Bool)

(declare-fun tp!2163569 () Bool)

(assert (=> b!7464157 (= e!4454158 (and tp_is_empty!49371 tp!2163569))))

(assert (=> b!7463499 (= tp!2163395 e!4454158)))

(assert (= (and b!7463499 ((_ is Cons!72133) (t!386826 s!13591))) b!7464157))

(declare-fun b!7464159 () Bool)

(declare-fun e!4454159 () Bool)

(declare-fun tp!2163572 () Bool)

(declare-fun tp!2163571 () Bool)

(assert (=> b!7464159 (= e!4454159 (and tp!2163572 tp!2163571))))

(declare-fun b!7464160 () Bool)

(declare-fun tp!2163570 () Bool)

(assert (=> b!7464160 (= e!4454159 tp!2163570)))

(declare-fun b!7464161 () Bool)

(declare-fun tp!2163573 () Bool)

(declare-fun tp!2163574 () Bool)

(assert (=> b!7464161 (= e!4454159 (and tp!2163573 tp!2163574))))

(declare-fun b!7464158 () Bool)

(assert (=> b!7464158 (= e!4454159 tp_is_empty!49371)))

(assert (=> b!7463489 (= tp!2163398 e!4454159)))

(assert (= (and b!7463489 ((_ is ElementMatch!19541) (regOne!39594 r1!5845))) b!7464158))

(assert (= (and b!7463489 ((_ is Concat!28386) (regOne!39594 r1!5845))) b!7464159))

(assert (= (and b!7463489 ((_ is Star!19541) (regOne!39594 r1!5845))) b!7464160))

(assert (= (and b!7463489 ((_ is Union!19541) (regOne!39594 r1!5845))) b!7464161))

(declare-fun b!7464163 () Bool)

(declare-fun e!4454160 () Bool)

(declare-fun tp!2163577 () Bool)

(declare-fun tp!2163576 () Bool)

(assert (=> b!7464163 (= e!4454160 (and tp!2163577 tp!2163576))))

(declare-fun b!7464164 () Bool)

(declare-fun tp!2163575 () Bool)

(assert (=> b!7464164 (= e!4454160 tp!2163575)))

(declare-fun b!7464165 () Bool)

(declare-fun tp!2163578 () Bool)

(declare-fun tp!2163579 () Bool)

(assert (=> b!7464165 (= e!4454160 (and tp!2163578 tp!2163579))))

(declare-fun b!7464162 () Bool)

(assert (=> b!7464162 (= e!4454160 tp_is_empty!49371)))

(assert (=> b!7463489 (= tp!2163399 e!4454160)))

(assert (= (and b!7463489 ((_ is ElementMatch!19541) (regTwo!39594 r1!5845))) b!7464162))

(assert (= (and b!7463489 ((_ is Concat!28386) (regTwo!39594 r1!5845))) b!7464163))

(assert (= (and b!7463489 ((_ is Star!19541) (regTwo!39594 r1!5845))) b!7464164))

(assert (= (and b!7463489 ((_ is Union!19541) (regTwo!39594 r1!5845))) b!7464165))

(check-sat (not b!7463869) (not b!7464165) (not b!7464138) (not b!7464119) (not bm!685645) (not bm!685643) (not bm!685650) tp_is_empty!49371 (not b!7464038) (not b!7464115) (not b!7463738) (not b!7464108) (not b!7464159) (not b!7464122) (not b!7463996) (not d!2298406) (not b!7463742) (not bm!685646) (not b!7464139) (not b!7464015) (not bm!685651) (not bm!685631) (not b!7464089) (not b!7463741) (not d!2298412) (not bm!685655) (not b!7464136) (not b!7464163) (not bm!685653) (not d!2298364) (not b!7464142) (not b!7464006) (not b!7464110) (not d!2298396) (not b!7464081) (not b!7464152) (not b!7464150) (not b!7464075) (not b!7464079) (not b!7464050) (not b!7464053) (not b!7464103) (not b!7464043) (not b!7464114) (not b!7464011) (not b!7464144) (not b!7464148) (not b!7464151) (not d!2298398) (not bm!685642) (not d!2298404) (not bm!685630) (not b!7464083) (not b!7464116) (not b!7464007) (not b!7464157) (not b!7464164) (not b!7464044) (not b!7464123) (not b!7464045) (not b!7464140) (not d!2298394) (not b!7464080) (not b!7464134) (not b!7464131) (not b!7464086) (not b!7463995) (not b!7464047) (not b!7463910) (not b!7464064) (not b!7464120) (not b!7464147) (not b!7464160) (not bm!685648) (not b!7463950) (not b!7464106) (not b!7464132) (not b!7464029) (not b!7464161) (not bm!685639) (not bm!685634) (not d!2298414) (not bm!685628) (not b!7463947) (not b!7464074) (not b!7464104) (not b!7463744) (not b!7464146) (not bm!685640) (not b!7464107) (not b!7464012) (not b!7464124) (not d!2298342) (not b!7463953) (not d!2298380) (not b!7464126) (not bm!685654) (not b!7463745) (not b!7464118) (not b!7463944) (not b!7463943) (not b!7464013) (not d!2298376) (not b!7464102) (not b!7464143) (not b!7464135) (not bm!685641) (not b!7463739) (not b!7464128) (not b!7464111) (not d!2298378) (not bm!685652) (not b!7463945) (not b!7464018) (not bm!685649) (not b!7464021) (not b!7464130) (not d!2298332) (not d!2298388) (not b!7464063) (not b!7464112) (not bm!685627) (not b!7464127))
(check-sat)
