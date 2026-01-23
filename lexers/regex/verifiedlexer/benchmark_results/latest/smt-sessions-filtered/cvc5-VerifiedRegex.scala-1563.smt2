; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!81268 () Bool)

(assert start!81268)

(declare-fun b!903601 () Bool)

(assert (=> b!903601 true))

(assert (=> b!903601 true))

(declare-fun lambda!28352 () Int)

(declare-fun lambda!28351 () Int)

(assert (=> b!903601 (not (= lambda!28352 lambda!28351))))

(assert (=> b!903601 true))

(assert (=> b!903601 true))

(declare-fun res!410862 () Bool)

(declare-fun e!590406 () Bool)

(assert (=> start!81268 (=> (not res!410862) (not e!590406))))

(declare-datatypes ((C!5338 0))(
  ( (C!5339 (val!2917 Int)) )
))
(declare-datatypes ((Regex!2384 0))(
  ( (ElementMatch!2384 (c!146371 C!5338)) (Concat!4217 (regOne!5280 Regex!2384) (regTwo!5280 Regex!2384)) (EmptyExpr!2384) (Star!2384 (reg!2713 Regex!2384)) (EmptyLang!2384) (Union!2384 (regOne!5281 Regex!2384) (regTwo!5281 Regex!2384)) )
))
(declare-fun r!15766 () Regex!2384)

(declare-fun validRegex!853 (Regex!2384) Bool)

(assert (=> start!81268 (= res!410862 (validRegex!853 r!15766))))

(assert (=> start!81268 e!590406))

(declare-fun e!590404 () Bool)

(assert (=> start!81268 e!590404))

(declare-fun e!590405 () Bool)

(assert (=> start!81268 e!590405))

(declare-fun b!903598 () Bool)

(declare-fun tp!283174 () Bool)

(assert (=> b!903598 (= e!590404 tp!283174)))

(declare-fun b!903599 () Bool)

(declare-fun tp_is_empty!4411 () Bool)

(declare-fun tp!283169 () Bool)

(assert (=> b!903599 (= e!590405 (and tp_is_empty!4411 tp!283169))))

(declare-fun b!903600 () Bool)

(assert (=> b!903600 (= e!590404 tp_is_empty!4411)))

(declare-fun e!590407 () Bool)

(declare-fun e!590408 () Bool)

(assert (=> b!903601 (= e!590407 e!590408)))

(declare-fun res!410861 () Bool)

(assert (=> b!903601 (=> res!410861 e!590408)))

(declare-datatypes ((List!9614 0))(
  ( (Nil!9598) (Cons!9598 (h!14999 C!5338) (t!100660 List!9614)) )
))
(declare-fun s!10566 () List!9614)

(declare-fun isEmpty!5799 (List!9614) Bool)

(assert (=> b!903601 (= res!410861 (not (isEmpty!5799 s!10566)))))

(declare-fun Exists!159 (Int) Bool)

(assert (=> b!903601 (= (Exists!159 lambda!28351) (Exists!159 lambda!28352))))

(declare-datatypes ((Unit!14387 0))(
  ( (Unit!14388) )
))
(declare-fun lt!335267 () Unit!14387)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!75 (Regex!2384 Regex!2384 List!9614) Unit!14387)

(assert (=> b!903601 (= lt!335267 (lemmaExistCutMatchRandMatchRSpecEquivalent!75 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566))))

(declare-datatypes ((tuple2!10762 0))(
  ( (tuple2!10763 (_1!6207 List!9614) (_2!6207 List!9614)) )
))
(declare-datatypes ((Option!2023 0))(
  ( (None!2022) (Some!2022 (v!19439 tuple2!10762)) )
))
(declare-fun isDefined!1665 (Option!2023) Bool)

(declare-fun findConcatSeparation!129 (Regex!2384 Regex!2384 List!9614 List!9614 List!9614) Option!2023)

(assert (=> b!903601 (= (isDefined!1665 (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) Nil!9598 s!10566 s!10566)) (Exists!159 lambda!28351))))

(declare-fun lt!335264 () Unit!14387)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!129 (Regex!2384 Regex!2384 List!9614) Unit!14387)

(assert (=> b!903601 (= lt!335264 (lemmaFindConcatSeparationEquivalentToExists!129 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566))))

(declare-fun b!903602 () Bool)

(declare-fun removeUselessConcat!91 (Regex!2384) Regex!2384)

(assert (=> b!903602 (= e!590408 (validRegex!853 (removeUselessConcat!91 r!15766)))))

(declare-fun b!903603 () Bool)

(declare-fun tp!283171 () Bool)

(declare-fun tp!283170 () Bool)

(assert (=> b!903603 (= e!590404 (and tp!283171 tp!283170))))

(declare-fun b!903604 () Bool)

(declare-fun tp!283172 () Bool)

(declare-fun tp!283173 () Bool)

(assert (=> b!903604 (= e!590404 (and tp!283172 tp!283173))))

(declare-fun b!903605 () Bool)

(assert (=> b!903605 (= e!590406 (not e!590407))))

(declare-fun res!410863 () Bool)

(assert (=> b!903605 (=> res!410863 e!590407)))

(declare-fun lt!335265 () Bool)

(assert (=> b!903605 (= res!410863 (or lt!335265 (not (is-Concat!4217 r!15766)) (not (is-EmptyExpr!2384 (regOne!5280 r!15766)))))))

(declare-fun matchRSpec!185 (Regex!2384 List!9614) Bool)

(assert (=> b!903605 (= lt!335265 (matchRSpec!185 r!15766 s!10566))))

(declare-fun matchR!922 (Regex!2384 List!9614) Bool)

(assert (=> b!903605 (= lt!335265 (matchR!922 r!15766 s!10566))))

(declare-fun lt!335266 () Unit!14387)

(declare-fun mainMatchTheorem!185 (Regex!2384 List!9614) Unit!14387)

(assert (=> b!903605 (= lt!335266 (mainMatchTheorem!185 r!15766 s!10566))))

(assert (= (and start!81268 res!410862) b!903605))

(assert (= (and b!903605 (not res!410863)) b!903601))

(assert (= (and b!903601 (not res!410861)) b!903602))

(assert (= (and start!81268 (is-ElementMatch!2384 r!15766)) b!903600))

(assert (= (and start!81268 (is-Concat!4217 r!15766)) b!903603))

(assert (= (and start!81268 (is-Star!2384 r!15766)) b!903598))

(assert (= (and start!81268 (is-Union!2384 r!15766)) b!903604))

(assert (= (and start!81268 (is-Cons!9598 s!10566)) b!903599))

(declare-fun m!1139965 () Bool)

(assert (=> start!81268 m!1139965))

(declare-fun m!1139967 () Bool)

(assert (=> b!903601 m!1139967))

(declare-fun m!1139969 () Bool)

(assert (=> b!903601 m!1139969))

(declare-fun m!1139971 () Bool)

(assert (=> b!903601 m!1139971))

(declare-fun m!1139973 () Bool)

(assert (=> b!903601 m!1139973))

(declare-fun m!1139975 () Bool)

(assert (=> b!903601 m!1139975))

(declare-fun m!1139977 () Bool)

(assert (=> b!903601 m!1139977))

(assert (=> b!903601 m!1139967))

(declare-fun m!1139979 () Bool)

(assert (=> b!903601 m!1139979))

(assert (=> b!903601 m!1139975))

(declare-fun m!1139981 () Bool)

(assert (=> b!903602 m!1139981))

(assert (=> b!903602 m!1139981))

(declare-fun m!1139983 () Bool)

(assert (=> b!903602 m!1139983))

(declare-fun m!1139985 () Bool)

(assert (=> b!903605 m!1139985))

(declare-fun m!1139987 () Bool)

(assert (=> b!903605 m!1139987))

(declare-fun m!1139989 () Bool)

(assert (=> b!903605 m!1139989))

(push 1)

(assert (not b!903604))

(assert tp_is_empty!4411)

(assert (not b!903602))

(assert (not b!903598))

(assert (not b!903601))

(assert (not start!81268))

(assert (not b!903599))

(assert (not b!903603))

(assert (not b!903605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!235333 () Bool)

(declare-fun b!903689 () Bool)

(assert (= bs!235333 (and b!903689 b!903601)))

(declare-fun lambda!28365 () Int)

(assert (=> bs!235333 (not (= lambda!28365 lambda!28351))))

(assert (=> bs!235333 (not (= lambda!28365 lambda!28352))))

(assert (=> b!903689 true))

(assert (=> b!903689 true))

(declare-fun bs!235334 () Bool)

(declare-fun b!903685 () Bool)

(assert (= bs!235334 (and b!903685 b!903601)))

(declare-fun lambda!28366 () Int)

(assert (=> bs!235334 (not (= lambda!28366 lambda!28351))))

(assert (=> bs!235334 (= (= (regOne!5280 r!15766) EmptyExpr!2384) (= lambda!28366 lambda!28352))))

(declare-fun bs!235335 () Bool)

(assert (= bs!235335 (and b!903685 b!903689)))

(assert (=> bs!235335 (not (= lambda!28366 lambda!28365))))

(assert (=> b!903685 true))

(assert (=> b!903685 true))

(declare-fun b!903682 () Bool)

(declare-fun res!410903 () Bool)

(declare-fun e!590448 () Bool)

(assert (=> b!903682 (=> res!410903 e!590448)))

(declare-fun call!53991 () Bool)

(assert (=> b!903682 (= res!410903 call!53991)))

(declare-fun e!590452 () Bool)

(assert (=> b!903682 (= e!590452 e!590448)))

(declare-fun b!903683 () Bool)

(declare-fun e!590453 () Bool)

(declare-fun e!590451 () Bool)

(assert (=> b!903683 (= e!590453 e!590451)))

(declare-fun res!410901 () Bool)

(assert (=> b!903683 (= res!410901 (matchRSpec!185 (regOne!5281 r!15766) s!10566))))

(assert (=> b!903683 (=> res!410901 e!590451)))

(declare-fun d!278580 () Bool)

(declare-fun c!146384 () Bool)

(assert (=> d!278580 (= c!146384 (is-EmptyExpr!2384 r!15766))))

(declare-fun e!590450 () Bool)

(assert (=> d!278580 (= (matchRSpec!185 r!15766 s!10566) e!590450)))

(declare-fun b!903684 () Bool)

(declare-fun e!590449 () Bool)

(assert (=> b!903684 (= e!590449 (= s!10566 (Cons!9598 (c!146371 r!15766) Nil!9598)))))

(declare-fun bm!53985 () Bool)

(assert (=> bm!53985 (= call!53991 (isEmpty!5799 s!10566))))

(declare-fun call!53990 () Bool)

(assert (=> b!903685 (= e!590452 call!53990)))

(declare-fun b!903686 () Bool)

(assert (=> b!903686 (= e!590450 call!53991)))

(declare-fun b!903687 () Bool)

(declare-fun c!146381 () Bool)

(assert (=> b!903687 (= c!146381 (is-Union!2384 r!15766))))

(assert (=> b!903687 (= e!590449 e!590453)))

(declare-fun b!903688 () Bool)

(declare-fun e!590454 () Bool)

(assert (=> b!903688 (= e!590450 e!590454)))

(declare-fun res!410902 () Bool)

(assert (=> b!903688 (= res!410902 (not (is-EmptyLang!2384 r!15766)))))

(assert (=> b!903688 (=> (not res!410902) (not e!590454))))

(assert (=> b!903689 (= e!590448 call!53990)))

(declare-fun bm!53986 () Bool)

(declare-fun c!146382 () Bool)

(assert (=> bm!53986 (= call!53990 (Exists!159 (ite c!146382 lambda!28365 lambda!28366)))))

(declare-fun b!903690 () Bool)

(assert (=> b!903690 (= e!590453 e!590452)))

(assert (=> b!903690 (= c!146382 (is-Star!2384 r!15766))))

(declare-fun b!903691 () Bool)

(declare-fun c!146383 () Bool)

(assert (=> b!903691 (= c!146383 (is-ElementMatch!2384 r!15766))))

(assert (=> b!903691 (= e!590454 e!590449)))

(declare-fun b!903692 () Bool)

(assert (=> b!903692 (= e!590451 (matchRSpec!185 (regTwo!5281 r!15766) s!10566))))

(assert (= (and d!278580 c!146384) b!903686))

(assert (= (and d!278580 (not c!146384)) b!903688))

(assert (= (and b!903688 res!410902) b!903691))

(assert (= (and b!903691 c!146383) b!903684))

(assert (= (and b!903691 (not c!146383)) b!903687))

(assert (= (and b!903687 c!146381) b!903683))

(assert (= (and b!903687 (not c!146381)) b!903690))

(assert (= (and b!903683 (not res!410901)) b!903692))

(assert (= (and b!903690 c!146382) b!903682))

(assert (= (and b!903690 (not c!146382)) b!903685))

(assert (= (and b!903682 (not res!410903)) b!903689))

(assert (= (or b!903689 b!903685) bm!53986))

(assert (= (or b!903686 b!903682) bm!53985))

(declare-fun m!1140019 () Bool)

(assert (=> b!903683 m!1140019))

(assert (=> bm!53985 m!1139977))

(declare-fun m!1140021 () Bool)

(assert (=> bm!53986 m!1140021))

(declare-fun m!1140023 () Bool)

(assert (=> b!903692 m!1140023))

(assert (=> b!903605 d!278580))

(declare-fun b!903721 () Bool)

(declare-fun e!590470 () Bool)

(declare-fun e!590469 () Bool)

(assert (=> b!903721 (= e!590470 e!590469)))

(declare-fun res!410923 () Bool)

(assert (=> b!903721 (=> res!410923 e!590469)))

(declare-fun call!53994 () Bool)

(assert (=> b!903721 (= res!410923 call!53994)))

(declare-fun b!903722 () Bool)

(declare-fun res!410926 () Bool)

(assert (=> b!903722 (=> res!410926 e!590469)))

(declare-fun tail!1164 (List!9614) List!9614)

(assert (=> b!903722 (= res!410926 (not (isEmpty!5799 (tail!1164 s!10566))))))

(declare-fun b!903723 () Bool)

(declare-fun e!590473 () Bool)

(declare-fun lt!335282 () Bool)

(assert (=> b!903723 (= e!590473 (not lt!335282))))

(declare-fun b!903724 () Bool)

(declare-fun res!410925 () Bool)

(declare-fun e!590471 () Bool)

(assert (=> b!903724 (=> res!410925 e!590471)))

(declare-fun e!590474 () Bool)

(assert (=> b!903724 (= res!410925 e!590474)))

(declare-fun res!410922 () Bool)

(assert (=> b!903724 (=> (not res!410922) (not e!590474))))

(assert (=> b!903724 (= res!410922 lt!335282)))

(declare-fun b!903725 () Bool)

(declare-fun head!1602 (List!9614) C!5338)

(assert (=> b!903725 (= e!590474 (= (head!1602 s!10566) (c!146371 r!15766)))))

(declare-fun b!903726 () Bool)

(declare-fun e!590472 () Bool)

(assert (=> b!903726 (= e!590472 e!590473)))

(declare-fun c!146392 () Bool)

(assert (=> b!903726 (= c!146392 (is-EmptyLang!2384 r!15766))))

(declare-fun b!903728 () Bool)

(declare-fun res!410920 () Bool)

(assert (=> b!903728 (=> res!410920 e!590471)))

(assert (=> b!903728 (= res!410920 (not (is-ElementMatch!2384 r!15766)))))

(assert (=> b!903728 (= e!590473 e!590471)))

(declare-fun b!903729 () Bool)

(declare-fun res!410921 () Bool)

(assert (=> b!903729 (=> (not res!410921) (not e!590474))))

(assert (=> b!903729 (= res!410921 (isEmpty!5799 (tail!1164 s!10566)))))

(declare-fun b!903730 () Bool)

(assert (=> b!903730 (= e!590471 e!590470)))

(declare-fun res!410927 () Bool)

(assert (=> b!903730 (=> (not res!410927) (not e!590470))))

(assert (=> b!903730 (= res!410927 (not lt!335282))))

(declare-fun b!903731 () Bool)

(assert (=> b!903731 (= e!590469 (not (= (head!1602 s!10566) (c!146371 r!15766))))))

(declare-fun b!903732 () Bool)

(declare-fun e!590475 () Bool)

(declare-fun derivativeStep!449 (Regex!2384 C!5338) Regex!2384)

(assert (=> b!903732 (= e!590475 (matchR!922 (derivativeStep!449 r!15766 (head!1602 s!10566)) (tail!1164 s!10566)))))

(declare-fun b!903733 () Bool)

(assert (=> b!903733 (= e!590472 (= lt!335282 call!53994))))

(declare-fun d!278588 () Bool)

(assert (=> d!278588 e!590472))

(declare-fun c!146393 () Bool)

(assert (=> d!278588 (= c!146393 (is-EmptyExpr!2384 r!15766))))

(assert (=> d!278588 (= lt!335282 e!590475)))

(declare-fun c!146391 () Bool)

(assert (=> d!278588 (= c!146391 (isEmpty!5799 s!10566))))

(assert (=> d!278588 (validRegex!853 r!15766)))

(assert (=> d!278588 (= (matchR!922 r!15766 s!10566) lt!335282)))

(declare-fun b!903727 () Bool)

(declare-fun nullable!637 (Regex!2384) Bool)

(assert (=> b!903727 (= e!590475 (nullable!637 r!15766))))

(declare-fun bm!53989 () Bool)

(assert (=> bm!53989 (= call!53994 (isEmpty!5799 s!10566))))

(declare-fun b!903734 () Bool)

(declare-fun res!410924 () Bool)

(assert (=> b!903734 (=> (not res!410924) (not e!590474))))

(assert (=> b!903734 (= res!410924 (not call!53994))))

(assert (= (and d!278588 c!146391) b!903727))

(assert (= (and d!278588 (not c!146391)) b!903732))

(assert (= (and d!278588 c!146393) b!903733))

(assert (= (and d!278588 (not c!146393)) b!903726))

(assert (= (and b!903726 c!146392) b!903723))

(assert (= (and b!903726 (not c!146392)) b!903728))

(assert (= (and b!903728 (not res!410920)) b!903724))

(assert (= (and b!903724 res!410922) b!903734))

(assert (= (and b!903734 res!410924) b!903729))

(assert (= (and b!903729 res!410921) b!903725))

(assert (= (and b!903724 (not res!410925)) b!903730))

(assert (= (and b!903730 res!410927) b!903721))

(assert (= (and b!903721 (not res!410923)) b!903722))

(assert (= (and b!903722 (not res!410926)) b!903731))

(assert (= (or b!903733 b!903721 b!903734) bm!53989))

(declare-fun m!1140025 () Bool)

(assert (=> b!903729 m!1140025))

(assert (=> b!903729 m!1140025))

(declare-fun m!1140027 () Bool)

(assert (=> b!903729 m!1140027))

(declare-fun m!1140029 () Bool)

(assert (=> b!903732 m!1140029))

(assert (=> b!903732 m!1140029))

(declare-fun m!1140031 () Bool)

(assert (=> b!903732 m!1140031))

(assert (=> b!903732 m!1140025))

(assert (=> b!903732 m!1140031))

(assert (=> b!903732 m!1140025))

(declare-fun m!1140033 () Bool)

(assert (=> b!903732 m!1140033))

(assert (=> bm!53989 m!1139977))

(assert (=> b!903725 m!1140029))

(declare-fun m!1140035 () Bool)

(assert (=> b!903727 m!1140035))

(assert (=> d!278588 m!1139977))

(assert (=> d!278588 m!1139965))

(assert (=> b!903731 m!1140029))

(assert (=> b!903722 m!1140025))

(assert (=> b!903722 m!1140025))

(assert (=> b!903722 m!1140027))

(assert (=> b!903605 d!278588))

(declare-fun d!278590 () Bool)

(assert (=> d!278590 (= (matchR!922 r!15766 s!10566) (matchRSpec!185 r!15766 s!10566))))

(declare-fun lt!335285 () Unit!14387)

(declare-fun choose!5459 (Regex!2384 List!9614) Unit!14387)

(assert (=> d!278590 (= lt!335285 (choose!5459 r!15766 s!10566))))

(assert (=> d!278590 (validRegex!853 r!15766)))

(assert (=> d!278590 (= (mainMatchTheorem!185 r!15766 s!10566) lt!335285)))

(declare-fun bs!235336 () Bool)

(assert (= bs!235336 d!278590))

(assert (=> bs!235336 m!1139987))

(assert (=> bs!235336 m!1139985))

(declare-fun m!1140037 () Bool)

(assert (=> bs!235336 m!1140037))

(assert (=> bs!235336 m!1139965))

(assert (=> b!903605 d!278590))

(declare-fun d!278592 () Bool)

(assert (=> d!278592 (= (isEmpty!5799 s!10566) (is-Nil!9598 s!10566))))

(assert (=> b!903601 d!278592))

(declare-fun b!903771 () Bool)

(declare-fun res!410952 () Bool)

(declare-fun e!590498 () Bool)

(assert (=> b!903771 (=> (not res!410952) (not e!590498))))

(declare-fun lt!335298 () Option!2023)

(declare-fun get!3067 (Option!2023) tuple2!10762)

(assert (=> b!903771 (= res!410952 (matchR!922 (regTwo!5280 r!15766) (_2!6207 (get!3067 lt!335298))))))

(declare-fun b!903772 () Bool)

(declare-fun e!590497 () Bool)

(assert (=> b!903772 (= e!590497 (not (isDefined!1665 lt!335298)))))

(declare-fun b!903773 () Bool)

(declare-fun ++!2514 (List!9614 List!9614) List!9614)

(assert (=> b!903773 (= e!590498 (= (++!2514 (_1!6207 (get!3067 lt!335298)) (_2!6207 (get!3067 lt!335298))) s!10566))))

(declare-fun b!903774 () Bool)

(declare-fun e!590500 () Option!2023)

(assert (=> b!903774 (= e!590500 (Some!2022 (tuple2!10763 Nil!9598 s!10566)))))

(declare-fun d!278594 () Bool)

(assert (=> d!278594 e!590497))

(declare-fun res!410948 () Bool)

(assert (=> d!278594 (=> res!410948 e!590497)))

(assert (=> d!278594 (= res!410948 e!590498)))

(declare-fun res!410951 () Bool)

(assert (=> d!278594 (=> (not res!410951) (not e!590498))))

(assert (=> d!278594 (= res!410951 (isDefined!1665 lt!335298))))

(assert (=> d!278594 (= lt!335298 e!590500)))

(declare-fun c!146402 () Bool)

(declare-fun e!590499 () Bool)

(assert (=> d!278594 (= c!146402 e!590499)))

(declare-fun res!410949 () Bool)

(assert (=> d!278594 (=> (not res!410949) (not e!590499))))

(assert (=> d!278594 (= res!410949 (matchR!922 EmptyExpr!2384 Nil!9598))))

(assert (=> d!278594 (validRegex!853 EmptyExpr!2384)))

(assert (=> d!278594 (= (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) Nil!9598 s!10566 s!10566) lt!335298)))

(declare-fun b!903775 () Bool)

(declare-fun e!590496 () Option!2023)

(assert (=> b!903775 (= e!590500 e!590496)))

(declare-fun c!146403 () Bool)

(assert (=> b!903775 (= c!146403 (is-Nil!9598 s!10566))))

(declare-fun b!903776 () Bool)

(declare-fun lt!335299 () Unit!14387)

(declare-fun lt!335300 () Unit!14387)

(assert (=> b!903776 (= lt!335299 lt!335300)))

(assert (=> b!903776 (= (++!2514 (++!2514 Nil!9598 (Cons!9598 (h!14999 s!10566) Nil!9598)) (t!100660 s!10566)) s!10566)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!134 (List!9614 C!5338 List!9614 List!9614) Unit!14387)

(assert (=> b!903776 (= lt!335300 (lemmaMoveElementToOtherListKeepsConcatEq!134 Nil!9598 (h!14999 s!10566) (t!100660 s!10566) s!10566))))

(assert (=> b!903776 (= e!590496 (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) (++!2514 Nil!9598 (Cons!9598 (h!14999 s!10566) Nil!9598)) (t!100660 s!10566) s!10566))))

(declare-fun b!903777 () Bool)

(assert (=> b!903777 (= e!590496 None!2022)))

(declare-fun b!903778 () Bool)

(declare-fun res!410950 () Bool)

(assert (=> b!903778 (=> (not res!410950) (not e!590498))))

(assert (=> b!903778 (= res!410950 (matchR!922 EmptyExpr!2384 (_1!6207 (get!3067 lt!335298))))))

(declare-fun b!903779 () Bool)

(assert (=> b!903779 (= e!590499 (matchR!922 (regTwo!5280 r!15766) s!10566))))

(assert (= (and d!278594 res!410949) b!903779))

(assert (= (and d!278594 c!146402) b!903774))

(assert (= (and d!278594 (not c!146402)) b!903775))

(assert (= (and b!903775 c!146403) b!903777))

(assert (= (and b!903775 (not c!146403)) b!903776))

(assert (= (and d!278594 res!410951) b!903778))

(assert (= (and b!903778 res!410950) b!903771))

(assert (= (and b!903771 res!410952) b!903773))

(assert (= (and d!278594 (not res!410948)) b!903772))

(declare-fun m!1140039 () Bool)

(assert (=> b!903773 m!1140039))

(declare-fun m!1140041 () Bool)

(assert (=> b!903773 m!1140041))

(declare-fun m!1140043 () Bool)

(assert (=> d!278594 m!1140043))

(declare-fun m!1140045 () Bool)

(assert (=> d!278594 m!1140045))

(declare-fun m!1140047 () Bool)

(assert (=> d!278594 m!1140047))

(assert (=> b!903771 m!1140039))

(declare-fun m!1140049 () Bool)

(assert (=> b!903771 m!1140049))

(declare-fun m!1140051 () Bool)

(assert (=> b!903779 m!1140051))

(assert (=> b!903772 m!1140043))

(assert (=> b!903778 m!1140039))

(declare-fun m!1140053 () Bool)

(assert (=> b!903778 m!1140053))

(declare-fun m!1140055 () Bool)

(assert (=> b!903776 m!1140055))

(assert (=> b!903776 m!1140055))

(declare-fun m!1140057 () Bool)

(assert (=> b!903776 m!1140057))

(declare-fun m!1140059 () Bool)

(assert (=> b!903776 m!1140059))

(assert (=> b!903776 m!1140055))

(declare-fun m!1140061 () Bool)

(assert (=> b!903776 m!1140061))

(assert (=> b!903601 d!278594))

(declare-fun bs!235337 () Bool)

(declare-fun d!278596 () Bool)

(assert (= bs!235337 (and d!278596 b!903601)))

(declare-fun lambda!28369 () Int)

(assert (=> bs!235337 (= lambda!28369 lambda!28351)))

(assert (=> bs!235337 (not (= lambda!28369 lambda!28352))))

(declare-fun bs!235338 () Bool)

(assert (= bs!235338 (and d!278596 b!903689)))

(assert (=> bs!235338 (not (= lambda!28369 lambda!28365))))

(declare-fun bs!235339 () Bool)

(assert (= bs!235339 (and d!278596 b!903685)))

(assert (=> bs!235339 (not (= lambda!28369 lambda!28366))))

(assert (=> d!278596 true))

(assert (=> d!278596 true))

(assert (=> d!278596 true))

(assert (=> d!278596 (= (isDefined!1665 (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) Nil!9598 s!10566 s!10566)) (Exists!159 lambda!28369))))

(declare-fun lt!335306 () Unit!14387)

(declare-fun choose!5460 (Regex!2384 Regex!2384 List!9614) Unit!14387)

(assert (=> d!278596 (= lt!335306 (choose!5460 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566))))

(assert (=> d!278596 (validRegex!853 EmptyExpr!2384)))

(assert (=> d!278596 (= (lemmaFindConcatSeparationEquivalentToExists!129 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566) lt!335306)))

(declare-fun bs!235340 () Bool)

(assert (= bs!235340 d!278596))

(assert (=> bs!235340 m!1139967))

(declare-fun m!1140087 () Bool)

(assert (=> bs!235340 m!1140087))

(declare-fun m!1140089 () Bool)

(assert (=> bs!235340 m!1140089))

(assert (=> bs!235340 m!1139967))

(assert (=> bs!235340 m!1139969))

(assert (=> bs!235340 m!1140047))

(assert (=> b!903601 d!278596))

(declare-fun d!278600 () Bool)

(declare-fun choose!5461 (Int) Bool)

(assert (=> d!278600 (= (Exists!159 lambda!28352) (choose!5461 lambda!28352))))

(declare-fun bs!235341 () Bool)

(assert (= bs!235341 d!278600))

(declare-fun m!1140091 () Bool)

(assert (=> bs!235341 m!1140091))

(assert (=> b!903601 d!278600))

(declare-fun d!278602 () Bool)

(declare-fun isEmpty!5801 (Option!2023) Bool)

(assert (=> d!278602 (= (isDefined!1665 (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) Nil!9598 s!10566 s!10566)) (not (isEmpty!5801 (findConcatSeparation!129 EmptyExpr!2384 (regTwo!5280 r!15766) Nil!9598 s!10566 s!10566))))))

(declare-fun bs!235342 () Bool)

(assert (= bs!235342 d!278602))

(assert (=> bs!235342 m!1139967))

(declare-fun m!1140093 () Bool)

(assert (=> bs!235342 m!1140093))

(assert (=> b!903601 d!278602))

(declare-fun bs!235343 () Bool)

(declare-fun d!278604 () Bool)

(assert (= bs!235343 (and d!278604 b!903601)))

(declare-fun lambda!28376 () Int)

(assert (=> bs!235343 (= lambda!28376 lambda!28351)))

(assert (=> bs!235343 (not (= lambda!28376 lambda!28352))))

(declare-fun bs!235344 () Bool)

(assert (= bs!235344 (and d!278604 d!278596)))

(assert (=> bs!235344 (= lambda!28376 lambda!28369)))

(declare-fun bs!235345 () Bool)

(assert (= bs!235345 (and d!278604 b!903685)))

(assert (=> bs!235345 (not (= lambda!28376 lambda!28366))))

(declare-fun bs!235346 () Bool)

(assert (= bs!235346 (and d!278604 b!903689)))

(assert (=> bs!235346 (not (= lambda!28376 lambda!28365))))

(assert (=> d!278604 true))

(assert (=> d!278604 true))

(assert (=> d!278604 true))

(declare-fun lambda!28377 () Int)

(assert (=> bs!235343 (not (= lambda!28377 lambda!28351))))

(declare-fun bs!235347 () Bool)

(assert (= bs!235347 d!278604))

(assert (=> bs!235347 (not (= lambda!28377 lambda!28376))))

(assert (=> bs!235343 (= lambda!28377 lambda!28352)))

(assert (=> bs!235344 (not (= lambda!28377 lambda!28369))))

(assert (=> bs!235345 (= (= EmptyExpr!2384 (regOne!5280 r!15766)) (= lambda!28377 lambda!28366))))

(assert (=> bs!235346 (not (= lambda!28377 lambda!28365))))

(assert (=> d!278604 true))

(assert (=> d!278604 true))

(assert (=> d!278604 true))

(assert (=> d!278604 (= (Exists!159 lambda!28376) (Exists!159 lambda!28377))))

(declare-fun lt!335311 () Unit!14387)

(declare-fun choose!5462 (Regex!2384 Regex!2384 List!9614) Unit!14387)

(assert (=> d!278604 (= lt!335311 (choose!5462 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566))))

(assert (=> d!278604 (validRegex!853 EmptyExpr!2384)))

(assert (=> d!278604 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!75 EmptyExpr!2384 (regTwo!5280 r!15766) s!10566) lt!335311)))

(declare-fun m!1140095 () Bool)

(assert (=> bs!235347 m!1140095))

(declare-fun m!1140097 () Bool)

(assert (=> bs!235347 m!1140097))

(declare-fun m!1140099 () Bool)

(assert (=> bs!235347 m!1140099))

(assert (=> bs!235347 m!1140047))

(assert (=> b!903601 d!278604))

(declare-fun d!278606 () Bool)

(assert (=> d!278606 (= (Exists!159 lambda!28351) (choose!5461 lambda!28351))))

(declare-fun bs!235348 () Bool)

(assert (= bs!235348 d!278606))

(declare-fun m!1140101 () Bool)

(assert (=> bs!235348 m!1140101))

(assert (=> b!903601 d!278606))

(declare-fun b!903827 () Bool)

(declare-fun e!590532 () Bool)

(declare-fun call!54001 () Bool)

(assert (=> b!903827 (= e!590532 call!54001)))

(declare-fun b!903828 () Bool)

(declare-fun e!590535 () Bool)

(declare-fun call!54002 () Bool)

(assert (=> b!903828 (= e!590535 call!54002)))

(declare-fun b!903829 () Bool)

(declare-fun e!590536 () Bool)

(assert (=> b!903829 (= e!590536 e!590535)))

(declare-fun res!410989 () Bool)

(assert (=> b!903829 (= res!410989 (not (nullable!637 (reg!2713 (removeUselessConcat!91 r!15766)))))))

(assert (=> b!903829 (=> (not res!410989) (not e!590535))))

(declare-fun b!903830 () Bool)

(declare-fun e!590531 () Bool)

(declare-fun e!590530 () Bool)

(assert (=> b!903830 (= e!590531 e!590530)))

(declare-fun res!410990 () Bool)

(assert (=> b!903830 (=> (not res!410990) (not e!590530))))

(declare-fun call!54003 () Bool)

(assert (=> b!903830 (= res!410990 call!54003)))

(declare-fun b!903831 () Bool)

(declare-fun res!410991 () Bool)

(assert (=> b!903831 (=> res!410991 e!590531)))

(assert (=> b!903831 (= res!410991 (not (is-Concat!4217 (removeUselessConcat!91 r!15766))))))

(declare-fun e!590533 () Bool)

(assert (=> b!903831 (= e!590533 e!590531)))

(declare-fun c!146410 () Bool)

(declare-fun c!146411 () Bool)

(declare-fun bm!53996 () Bool)

(assert (=> bm!53996 (= call!54002 (validRegex!853 (ite c!146410 (reg!2713 (removeUselessConcat!91 r!15766)) (ite c!146411 (regTwo!5281 (removeUselessConcat!91 r!15766)) (regTwo!5280 (removeUselessConcat!91 r!15766))))))))

(declare-fun bm!53997 () Bool)

(assert (=> bm!53997 (= call!54003 (validRegex!853 (ite c!146411 (regOne!5281 (removeUselessConcat!91 r!15766)) (regOne!5280 (removeUselessConcat!91 r!15766)))))))

(declare-fun b!903832 () Bool)

(declare-fun e!590534 () Bool)

(assert (=> b!903832 (= e!590534 e!590536)))

(assert (=> b!903832 (= c!146410 (is-Star!2384 (removeUselessConcat!91 r!15766)))))

(declare-fun bm!53998 () Bool)

(assert (=> bm!53998 (= call!54001 call!54002)))

(declare-fun d!278608 () Bool)

(declare-fun res!410992 () Bool)

(assert (=> d!278608 (=> res!410992 e!590534)))

(assert (=> d!278608 (= res!410992 (is-ElementMatch!2384 (removeUselessConcat!91 r!15766)))))

(assert (=> d!278608 (= (validRegex!853 (removeUselessConcat!91 r!15766)) e!590534)))

(declare-fun b!903833 () Bool)

(assert (=> b!903833 (= e!590530 call!54001)))

(declare-fun b!903834 () Bool)

(declare-fun res!410988 () Bool)

(assert (=> b!903834 (=> (not res!410988) (not e!590532))))

(assert (=> b!903834 (= res!410988 call!54003)))

(assert (=> b!903834 (= e!590533 e!590532)))

(declare-fun b!903835 () Bool)

(assert (=> b!903835 (= e!590536 e!590533)))

(assert (=> b!903835 (= c!146411 (is-Union!2384 (removeUselessConcat!91 r!15766)))))

(assert (= (and d!278608 (not res!410992)) b!903832))

(assert (= (and b!903832 c!146410) b!903829))

(assert (= (and b!903832 (not c!146410)) b!903835))

(assert (= (and b!903829 res!410989) b!903828))

(assert (= (and b!903835 c!146411) b!903834))

(assert (= (and b!903835 (not c!146411)) b!903831))

(assert (= (and b!903834 res!410988) b!903827))

(assert (= (and b!903831 (not res!410991)) b!903830))

(assert (= (and b!903830 res!410990) b!903833))

(assert (= (or b!903827 b!903833) bm!53998))

(assert (= (or b!903834 b!903830) bm!53997))

(assert (= (or b!903828 bm!53998) bm!53996))

(declare-fun m!1140103 () Bool)

(assert (=> b!903829 m!1140103))

(declare-fun m!1140105 () Bool)

(assert (=> bm!53996 m!1140105))

(declare-fun m!1140107 () Bool)

(assert (=> bm!53997 m!1140107))

(assert (=> b!903602 d!278608))

(declare-fun b!903858 () Bool)

(declare-fun e!590551 () Regex!2384)

(declare-fun e!590549 () Regex!2384)

(assert (=> b!903858 (= e!590551 e!590549)))

(declare-fun c!146423 () Bool)

(assert (=> b!903858 (= c!146423 (is-Union!2384 r!15766))))

(declare-fun b!903859 () Bool)

(declare-fun e!590553 () Regex!2384)

(declare-fun call!54018 () Regex!2384)

(assert (=> b!903859 (= e!590553 (Star!2384 call!54018))))

(declare-fun b!903861 () Bool)

(declare-fun call!54014 () Regex!2384)

(declare-fun call!54017 () Regex!2384)

(assert (=> b!903861 (= e!590551 (Concat!4217 call!54014 call!54017))))

(declare-fun call!54016 () Regex!2384)

(declare-fun bm!54009 () Bool)

(declare-fun c!146426 () Bool)

(declare-fun c!146424 () Bool)

(declare-fun c!146425 () Bool)

(assert (=> bm!54009 (= call!54016 (removeUselessConcat!91 (ite c!146424 (regTwo!5280 r!15766) (ite c!146425 (regOne!5280 r!15766) (ite c!146426 (regTwo!5280 r!15766) (regOne!5281 r!15766))))))))

(declare-fun b!903862 () Bool)

(declare-fun e!590554 () Regex!2384)

(declare-fun call!54015 () Regex!2384)

(assert (=> b!903862 (= e!590554 call!54015)))

(declare-fun b!903863 () Bool)

(assert (=> b!903863 (= c!146426 (is-Concat!4217 r!15766))))

(assert (=> b!903863 (= e!590554 e!590551)))

(declare-fun bm!54010 () Bool)

(assert (=> bm!54010 (= call!54014 (removeUselessConcat!91 (ite c!146426 (regOne!5280 r!15766) (ite c!146423 (regTwo!5281 r!15766) (reg!2713 r!15766)))))))

(declare-fun b!903864 () Bool)

(declare-fun e!590550 () Regex!2384)

(assert (=> b!903864 (= e!590550 call!54016)))

(declare-fun bm!54011 () Bool)

(assert (=> bm!54011 (= call!54017 call!54015)))

(declare-fun bm!54012 () Bool)

(assert (=> bm!54012 (= call!54015 call!54016)))

(declare-fun bm!54013 () Bool)

(assert (=> bm!54013 (= call!54018 call!54014)))

(declare-fun b!903865 () Bool)

(assert (=> b!903865 (= e!590550 e!590554)))

(assert (=> b!903865 (= c!146425 (and (is-Concat!4217 r!15766) (is-EmptyExpr!2384 (regTwo!5280 r!15766))))))

(declare-fun b!903866 () Bool)

(assert (=> b!903866 (= e!590549 (Union!2384 call!54017 call!54018))))

(declare-fun b!903867 () Bool)

(assert (=> b!903867 (= e!590553 r!15766)))

(declare-fun b!903868 () Bool)

(declare-fun c!146422 () Bool)

(assert (=> b!903868 (= c!146422 (is-Star!2384 r!15766))))

(assert (=> b!903868 (= e!590549 e!590553)))

(declare-fun d!278610 () Bool)

(declare-fun e!590552 () Bool)

(assert (=> d!278610 e!590552))

(declare-fun res!410995 () Bool)

(assert (=> d!278610 (=> (not res!410995) (not e!590552))))

(declare-fun lt!335315 () Regex!2384)

(assert (=> d!278610 (= res!410995 (validRegex!853 lt!335315))))

(assert (=> d!278610 (= lt!335315 e!590550)))

(assert (=> d!278610 (= c!146424 (and (is-Concat!4217 r!15766) (is-EmptyExpr!2384 (regOne!5280 r!15766))))))

(assert (=> d!278610 (validRegex!853 r!15766)))

(assert (=> d!278610 (= (removeUselessConcat!91 r!15766) lt!335315)))

(declare-fun b!903860 () Bool)

(assert (=> b!903860 (= e!590552 (= (nullable!637 lt!335315) (nullable!637 r!15766)))))

(assert (= (and d!278610 c!146424) b!903864))

(assert (= (and d!278610 (not c!146424)) b!903865))

(assert (= (and b!903865 c!146425) b!903862))

(assert (= (and b!903865 (not c!146425)) b!903863))

(assert (= (and b!903863 c!146426) b!903861))

(assert (= (and b!903863 (not c!146426)) b!903858))

(assert (= (and b!903858 c!146423) b!903866))

(assert (= (and b!903858 (not c!146423)) b!903868))

(assert (= (and b!903868 c!146422) b!903859))

(assert (= (and b!903868 (not c!146422)) b!903867))

(assert (= (or b!903866 b!903859) bm!54013))

(assert (= (or b!903861 b!903866) bm!54011))

(assert (= (or b!903861 bm!54013) bm!54010))

(assert (= (or b!903862 bm!54011) bm!54012))

(assert (= (or b!903864 bm!54012) bm!54009))

(assert (= (and d!278610 res!410995) b!903860))

(declare-fun m!1140117 () Bool)

(assert (=> bm!54009 m!1140117))

(declare-fun m!1140119 () Bool)

(assert (=> bm!54010 m!1140119))

(declare-fun m!1140121 () Bool)

(assert (=> d!278610 m!1140121))

(assert (=> d!278610 m!1139965))

(declare-fun m!1140123 () Bool)

(assert (=> b!903860 m!1140123))

(assert (=> b!903860 m!1140035))

(assert (=> b!903602 d!278610))

(declare-fun b!903869 () Bool)

(declare-fun e!590557 () Bool)

(declare-fun call!54019 () Bool)

(assert (=> b!903869 (= e!590557 call!54019)))

(declare-fun b!903870 () Bool)

(declare-fun e!590560 () Bool)

(declare-fun call!54020 () Bool)

(assert (=> b!903870 (= e!590560 call!54020)))

(declare-fun b!903871 () Bool)

(declare-fun e!590561 () Bool)

(assert (=> b!903871 (= e!590561 e!590560)))

(declare-fun res!410997 () Bool)

(assert (=> b!903871 (= res!410997 (not (nullable!637 (reg!2713 r!15766))))))

(assert (=> b!903871 (=> (not res!410997) (not e!590560))))

(declare-fun b!903872 () Bool)

(declare-fun e!590556 () Bool)

(declare-fun e!590555 () Bool)

(assert (=> b!903872 (= e!590556 e!590555)))

(declare-fun res!410998 () Bool)

(assert (=> b!903872 (=> (not res!410998) (not e!590555))))

(declare-fun call!54021 () Bool)

(assert (=> b!903872 (= res!410998 call!54021)))

(declare-fun b!903873 () Bool)

(declare-fun res!410999 () Bool)

(assert (=> b!903873 (=> res!410999 e!590556)))

(assert (=> b!903873 (= res!410999 (not (is-Concat!4217 r!15766)))))

(declare-fun e!590558 () Bool)

(assert (=> b!903873 (= e!590558 e!590556)))

(declare-fun bm!54014 () Bool)

(declare-fun c!146427 () Bool)

(declare-fun c!146428 () Bool)

(assert (=> bm!54014 (= call!54020 (validRegex!853 (ite c!146427 (reg!2713 r!15766) (ite c!146428 (regTwo!5281 r!15766) (regTwo!5280 r!15766)))))))

(declare-fun bm!54015 () Bool)

(assert (=> bm!54015 (= call!54021 (validRegex!853 (ite c!146428 (regOne!5281 r!15766) (regOne!5280 r!15766))))))

(declare-fun b!903874 () Bool)

(declare-fun e!590559 () Bool)

(assert (=> b!903874 (= e!590559 e!590561)))

(assert (=> b!903874 (= c!146427 (is-Star!2384 r!15766))))

(declare-fun bm!54016 () Bool)

(assert (=> bm!54016 (= call!54019 call!54020)))

(declare-fun d!278616 () Bool)

(declare-fun res!411000 () Bool)

(assert (=> d!278616 (=> res!411000 e!590559)))

(assert (=> d!278616 (= res!411000 (is-ElementMatch!2384 r!15766))))

(assert (=> d!278616 (= (validRegex!853 r!15766) e!590559)))

(declare-fun b!903875 () Bool)

(assert (=> b!903875 (= e!590555 call!54019)))

(declare-fun b!903876 () Bool)

(declare-fun res!410996 () Bool)

(assert (=> b!903876 (=> (not res!410996) (not e!590557))))

(assert (=> b!903876 (= res!410996 call!54021)))

(assert (=> b!903876 (= e!590558 e!590557)))

(declare-fun b!903877 () Bool)

(assert (=> b!903877 (= e!590561 e!590558)))

(assert (=> b!903877 (= c!146428 (is-Union!2384 r!15766))))

(assert (= (and d!278616 (not res!411000)) b!903874))

(assert (= (and b!903874 c!146427) b!903871))

(assert (= (and b!903874 (not c!146427)) b!903877))

(assert (= (and b!903871 res!410997) b!903870))

(assert (= (and b!903877 c!146428) b!903876))

(assert (= (and b!903877 (not c!146428)) b!903873))

(assert (= (and b!903876 res!410996) b!903869))

(assert (= (and b!903873 (not res!410999)) b!903872))

(assert (= (and b!903872 res!410998) b!903875))

(assert (= (or b!903869 b!903875) bm!54016))

(assert (= (or b!903876 b!903872) bm!54015))

(assert (= (or b!903870 bm!54016) bm!54014))

(declare-fun m!1140125 () Bool)

(assert (=> b!903871 m!1140125))

(declare-fun m!1140127 () Bool)

(assert (=> bm!54014 m!1140127))

(declare-fun m!1140129 () Bool)

(assert (=> bm!54015 m!1140129))

(assert (=> start!81268 d!278616))

(declare-fun b!903891 () Bool)

(declare-fun e!590564 () Bool)

(declare-fun tp!283204 () Bool)

(declare-fun tp!283207 () Bool)

(assert (=> b!903891 (= e!590564 (and tp!283204 tp!283207))))

(declare-fun b!903890 () Bool)

(declare-fun tp!283203 () Bool)

(assert (=> b!903890 (= e!590564 tp!283203)))

(declare-fun b!903889 () Bool)

(declare-fun tp!283205 () Bool)

(declare-fun tp!283206 () Bool)

(assert (=> b!903889 (= e!590564 (and tp!283205 tp!283206))))

(declare-fun b!903888 () Bool)

(assert (=> b!903888 (= e!590564 tp_is_empty!4411)))

(assert (=> b!903604 (= tp!283172 e!590564)))

(assert (= (and b!903604 (is-ElementMatch!2384 (regOne!5281 r!15766))) b!903888))

(assert (= (and b!903604 (is-Concat!4217 (regOne!5281 r!15766))) b!903889))

(assert (= (and b!903604 (is-Star!2384 (regOne!5281 r!15766))) b!903890))

(assert (= (and b!903604 (is-Union!2384 (regOne!5281 r!15766))) b!903891))

(declare-fun b!903895 () Bool)

(declare-fun e!590565 () Bool)

(declare-fun tp!283209 () Bool)

(declare-fun tp!283212 () Bool)

(assert (=> b!903895 (= e!590565 (and tp!283209 tp!283212))))

(declare-fun b!903894 () Bool)

(declare-fun tp!283208 () Bool)

(assert (=> b!903894 (= e!590565 tp!283208)))

(declare-fun b!903893 () Bool)

(declare-fun tp!283210 () Bool)

(declare-fun tp!283211 () Bool)

(assert (=> b!903893 (= e!590565 (and tp!283210 tp!283211))))

(declare-fun b!903892 () Bool)

(assert (=> b!903892 (= e!590565 tp_is_empty!4411)))

(assert (=> b!903604 (= tp!283173 e!590565)))

(assert (= (and b!903604 (is-ElementMatch!2384 (regTwo!5281 r!15766))) b!903892))

(assert (= (and b!903604 (is-Concat!4217 (regTwo!5281 r!15766))) b!903893))

(assert (= (and b!903604 (is-Star!2384 (regTwo!5281 r!15766))) b!903894))

(assert (= (and b!903604 (is-Union!2384 (regTwo!5281 r!15766))) b!903895))

(declare-fun b!903900 () Bool)

(declare-fun e!590568 () Bool)

(declare-fun tp!283215 () Bool)

(assert (=> b!903900 (= e!590568 (and tp_is_empty!4411 tp!283215))))

(assert (=> b!903599 (= tp!283169 e!590568)))

(assert (= (and b!903599 (is-Cons!9598 (t!100660 s!10566))) b!903900))

(declare-fun b!903904 () Bool)

(declare-fun e!590569 () Bool)

(declare-fun tp!283217 () Bool)

(declare-fun tp!283220 () Bool)

(assert (=> b!903904 (= e!590569 (and tp!283217 tp!283220))))

(declare-fun b!903903 () Bool)

(declare-fun tp!283216 () Bool)

(assert (=> b!903903 (= e!590569 tp!283216)))

(declare-fun b!903902 () Bool)

(declare-fun tp!283218 () Bool)

(declare-fun tp!283219 () Bool)

(assert (=> b!903902 (= e!590569 (and tp!283218 tp!283219))))

(declare-fun b!903901 () Bool)

(assert (=> b!903901 (= e!590569 tp_is_empty!4411)))

(assert (=> b!903603 (= tp!283171 e!590569)))

(assert (= (and b!903603 (is-ElementMatch!2384 (regOne!5280 r!15766))) b!903901))

(assert (= (and b!903603 (is-Concat!4217 (regOne!5280 r!15766))) b!903902))

(assert (= (and b!903603 (is-Star!2384 (regOne!5280 r!15766))) b!903903))

(assert (= (and b!903603 (is-Union!2384 (regOne!5280 r!15766))) b!903904))

(declare-fun b!903908 () Bool)

(declare-fun e!590570 () Bool)

(declare-fun tp!283222 () Bool)

(declare-fun tp!283225 () Bool)

(assert (=> b!903908 (= e!590570 (and tp!283222 tp!283225))))

(declare-fun b!903907 () Bool)

(declare-fun tp!283221 () Bool)

(assert (=> b!903907 (= e!590570 tp!283221)))

(declare-fun b!903906 () Bool)

(declare-fun tp!283223 () Bool)

(declare-fun tp!283224 () Bool)

(assert (=> b!903906 (= e!590570 (and tp!283223 tp!283224))))

(declare-fun b!903905 () Bool)

(assert (=> b!903905 (= e!590570 tp_is_empty!4411)))

(assert (=> b!903603 (= tp!283170 e!590570)))

(assert (= (and b!903603 (is-ElementMatch!2384 (regTwo!5280 r!15766))) b!903905))

(assert (= (and b!903603 (is-Concat!4217 (regTwo!5280 r!15766))) b!903906))

(assert (= (and b!903603 (is-Star!2384 (regTwo!5280 r!15766))) b!903907))

(assert (= (and b!903603 (is-Union!2384 (regTwo!5280 r!15766))) b!903908))

(declare-fun b!903912 () Bool)

(declare-fun e!590571 () Bool)

(declare-fun tp!283227 () Bool)

(declare-fun tp!283230 () Bool)

(assert (=> b!903912 (= e!590571 (and tp!283227 tp!283230))))

(declare-fun b!903911 () Bool)

(declare-fun tp!283226 () Bool)

(assert (=> b!903911 (= e!590571 tp!283226)))

(declare-fun b!903910 () Bool)

(declare-fun tp!283228 () Bool)

(declare-fun tp!283229 () Bool)

(assert (=> b!903910 (= e!590571 (and tp!283228 tp!283229))))

(declare-fun b!903909 () Bool)

(assert (=> b!903909 (= e!590571 tp_is_empty!4411)))

(assert (=> b!903598 (= tp!283174 e!590571)))

(assert (= (and b!903598 (is-ElementMatch!2384 (reg!2713 r!15766))) b!903909))

(assert (= (and b!903598 (is-Concat!4217 (reg!2713 r!15766))) b!903910))

(assert (= (and b!903598 (is-Star!2384 (reg!2713 r!15766))) b!903911))

(assert (= (and b!903598 (is-Union!2384 (reg!2713 r!15766))) b!903912))

(push 1)

(assert (not b!903912))

(assert (not b!903893))

(assert (not bm!53985))

(assert (not bm!53986))

(assert (not b!903773))

(assert (not d!278588))

(assert (not b!903771))

(assert (not b!903911))

(assert (not bm!53989))

(assert (not d!278600))

(assert (not bm!54010))

(assert (not b!903732))

(assert (not bm!54015))

(assert (not d!278594))

(assert (not b!903871))

(assert (not b!903727))

(assert (not bm!53996))

(assert (not b!903772))

(assert (not b!903776))

(assert (not b!903891))

(assert (not d!278596))

(assert (not b!903895))

(assert (not b!903908))

(assert (not d!278590))

(assert (not b!903894))

(assert (not b!903683))

(assert (not b!903906))

(assert (not b!903907))

(assert (not bm!54009))

(assert (not b!903889))

(assert tp_is_empty!4411)

(assert (not bm!54014))

(assert (not b!903692))

(assert (not b!903725))

(assert (not d!278604))

(assert (not b!903910))

(assert (not b!903902))

(assert (not b!903890))

(assert (not b!903778))

(assert (not b!903900))

(assert (not d!278606))

(assert (not b!903729))

(assert (not b!903779))

(assert (not b!903722))

(assert (not b!903731))

(assert (not b!903903))

(assert (not d!278602))

(assert (not b!903829))

(assert (not b!903860))

(assert (not d!278610))

(assert (not b!903904))

(assert (not bm!53997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

