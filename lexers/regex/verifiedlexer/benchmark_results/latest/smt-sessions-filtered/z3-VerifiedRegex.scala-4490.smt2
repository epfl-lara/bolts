; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238694 () Bool)

(assert start!238694)

(declare-fun b!2438875 () Bool)

(assert (=> b!2438875 true))

(assert (=> b!2438875 true))

(declare-fun lambda!92277 () Int)

(declare-fun lambda!92276 () Int)

(assert (=> b!2438875 (not (= lambda!92277 lambda!92276))))

(assert (=> b!2438875 true))

(assert (=> b!2438875 true))

(declare-fun b!2438874 () Bool)

(declare-fun e!1549786 () Bool)

(declare-fun tp!774434 () Bool)

(declare-fun tp!774431 () Bool)

(assert (=> b!2438874 (= e!1549786 (and tp!774434 tp!774431))))

(declare-fun e!1549791 () Bool)

(declare-fun e!1549792 () Bool)

(assert (=> b!2438875 (= e!1549791 e!1549792)))

(declare-fun res!1035489 () Bool)

(assert (=> b!2438875 (=> res!1035489 e!1549792)))

(declare-fun lt!878041 () Bool)

(declare-fun lt!878033 () Bool)

(assert (=> b!2438875 (= res!1035489 (not (= lt!878041 lt!878033)))))

(declare-fun Exists!1209 (Int) Bool)

(assert (=> b!2438875 (= (Exists!1209 lambda!92276) (Exists!1209 lambda!92277))))

(declare-datatypes ((Unit!41729 0))(
  ( (Unit!41730) )
))
(declare-fun lt!878035 () Unit!41729)

(declare-datatypes ((C!14504 0))(
  ( (C!14505 (val!8494 Int)) )
))
(declare-datatypes ((Regex!7173 0))(
  ( (ElementMatch!7173 (c!389101 C!14504)) (Concat!11809 (regOne!14858 Regex!7173) (regTwo!14858 Regex!7173)) (EmptyExpr!7173) (Star!7173 (reg!7502 Regex!7173)) (EmptyLang!7173) (Union!7173 (regOne!14859 Regex!7173) (regTwo!14859 Regex!7173)) )
))
(declare-fun r!13927 () Regex!7173)

(declare-datatypes ((List!28582 0))(
  ( (Nil!28484) (Cons!28484 (h!33885 C!14504) (t!208559 List!28582)) )
))
(declare-fun s!9460 () List!28582)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!454 (Regex!7173 Regex!7173 List!28582) Unit!41729)

(assert (=> b!2438875 (= lt!878035 (lemmaExistCutMatchRandMatchRSpecEquivalent!454 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460))))

(assert (=> b!2438875 (= lt!878033 (Exists!1209 lambda!92276))))

(declare-datatypes ((tuple2!28102 0))(
  ( (tuple2!28103 (_1!16592 List!28582) (_2!16592 List!28582)) )
))
(declare-datatypes ((Option!5662 0))(
  ( (None!5661) (Some!5661 (v!31069 tuple2!28102)) )
))
(declare-fun isDefined!4488 (Option!5662) Bool)

(declare-fun findConcatSeparation!770 (Regex!7173 Regex!7173 List!28582 List!28582 List!28582) Option!5662)

(assert (=> b!2438875 (= lt!878033 (isDefined!4488 (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) Nil!28484 s!9460 s!9460)))))

(declare-fun lt!878038 () Unit!41729)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!708 (Regex!7173 Regex!7173 List!28582) Unit!41729)

(assert (=> b!2438875 (= lt!878038 (lemmaFindConcatSeparationEquivalentToExists!708 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460))))

(declare-fun b!2438876 () Bool)

(declare-fun e!1549794 () Bool)

(assert (=> b!2438876 (= e!1549792 e!1549794)))

(declare-fun res!1035480 () Bool)

(assert (=> b!2438876 (=> res!1035480 e!1549794)))

(declare-datatypes ((List!28583 0))(
  ( (Nil!28485) (Cons!28485 (h!33886 Regex!7173) (t!208560 List!28583)) )
))
(declare-fun lt!878034 () List!28583)

(declare-fun isEmpty!16523 (List!28583) Bool)

(assert (=> b!2438876 (= res!1035480 (not (isEmpty!16523 lt!878034)))))

(declare-fun l!9164 () List!28583)

(declare-fun tail!3810 (List!28583) List!28583)

(assert (=> b!2438876 (= lt!878034 (tail!3810 l!9164))))

(declare-fun b!2438877 () Bool)

(declare-fun e!1549790 () Bool)

(declare-fun tp!774435 () Bool)

(declare-fun tp!774437 () Bool)

(assert (=> b!2438877 (= e!1549790 (and tp!774435 tp!774437))))

(declare-fun b!2438878 () Bool)

(declare-fun e!1549793 () Bool)

(declare-fun e!1549788 () Bool)

(assert (=> b!2438878 (= e!1549793 e!1549788)))

(declare-fun res!1035490 () Bool)

(assert (=> b!2438878 (=> res!1035490 e!1549788)))

(declare-fun lt!878039 () Regex!7173)

(declare-fun validRegex!2885 (Regex!7173) Bool)

(assert (=> b!2438878 (= res!1035490 (not (validRegex!2885 lt!878039)))))

(declare-fun lt!878040 () tuple2!28102)

(declare-fun lt!878036 () Option!5662)

(declare-fun get!8789 (Option!5662) tuple2!28102)

(assert (=> b!2438878 (= lt!878040 (get!8789 lt!878036))))

(declare-fun b!2438879 () Bool)

(declare-fun res!1035483 () Bool)

(declare-fun e!1549785 () Bool)

(assert (=> b!2438879 (=> (not res!1035483) (not e!1549785))))

(declare-fun generalisedConcat!274 (List!28583) Regex!7173)

(assert (=> b!2438879 (= res!1035483 (= r!13927 (generalisedConcat!274 l!9164)))))

(declare-fun b!2438881 () Bool)

(declare-fun tp!774436 () Bool)

(declare-fun tp!774430 () Bool)

(assert (=> b!2438881 (= e!1549790 (and tp!774436 tp!774430))))

(declare-fun b!2438882 () Bool)

(declare-fun tp!774433 () Bool)

(assert (=> b!2438882 (= e!1549790 tp!774433)))

(declare-fun b!2438883 () Bool)

(declare-fun e!1549789 () Bool)

(assert (=> b!2438883 (= e!1549789 e!1549793)))

(declare-fun res!1035481 () Bool)

(assert (=> b!2438883 (=> res!1035481 e!1549793)))

(assert (=> b!2438883 (= res!1035481 (not (isDefined!4488 lt!878036)))))

(assert (=> b!2438883 (= lt!878036 (findConcatSeparation!770 lt!878039 EmptyExpr!7173 Nil!28484 s!9460 s!9460))))

(declare-fun b!2438884 () Bool)

(declare-fun ++!7076 (List!28582 List!28582) List!28582)

(assert (=> b!2438884 (= e!1549788 (= s!9460 (++!7076 (_1!16592 lt!878040) (_2!16592 lt!878040))))))

(declare-fun b!2438885 () Bool)

(declare-fun res!1035488 () Bool)

(assert (=> b!2438885 (=> res!1035488 e!1549792)))

(assert (=> b!2438885 (= res!1035488 (isEmpty!16523 l!9164))))

(declare-fun b!2438886 () Bool)

(declare-fun tp_is_empty!11759 () Bool)

(assert (=> b!2438886 (= e!1549790 tp_is_empty!11759)))

(declare-fun b!2438887 () Bool)

(assert (=> b!2438887 (= e!1549794 e!1549789)))

(declare-fun res!1035484 () Bool)

(assert (=> b!2438887 (=> res!1035484 e!1549789)))

(declare-fun matchR!3288 (Regex!7173 List!28582) Bool)

(assert (=> b!2438887 (= res!1035484 (matchR!3288 lt!878039 s!9460))))

(declare-fun head!5537 (List!28583) Regex!7173)

(assert (=> b!2438887 (= lt!878039 (head!5537 l!9164))))

(declare-fun b!2438888 () Bool)

(declare-fun e!1549787 () Bool)

(declare-fun tp!774432 () Bool)

(assert (=> b!2438888 (= e!1549787 (and tp_is_empty!11759 tp!774432))))

(declare-fun b!2438889 () Bool)

(declare-fun res!1035486 () Bool)

(assert (=> b!2438889 (=> res!1035486 e!1549794)))

(assert (=> b!2438889 (= res!1035486 (not (= (generalisedConcat!274 lt!878034) EmptyExpr!7173)))))

(declare-fun b!2438890 () Bool)

(assert (=> b!2438890 (= e!1549785 (not e!1549791))))

(declare-fun res!1035487 () Bool)

(assert (=> b!2438890 (=> res!1035487 e!1549791)))

(get-info :version)

(assert (=> b!2438890 (= res!1035487 (not ((_ is Concat!11809) r!13927)))))

(declare-fun lt!878042 () Bool)

(assert (=> b!2438890 (= lt!878042 lt!878041)))

(declare-fun matchRSpec!1020 (Regex!7173 List!28582) Bool)

(assert (=> b!2438890 (= lt!878041 (matchRSpec!1020 r!13927 s!9460))))

(assert (=> b!2438890 (= lt!878042 (matchR!3288 r!13927 s!9460))))

(declare-fun lt!878037 () Unit!41729)

(declare-fun mainMatchTheorem!1020 (Regex!7173 List!28582) Unit!41729)

(assert (=> b!2438890 (= lt!878037 (mainMatchTheorem!1020 r!13927 s!9460))))

(declare-fun res!1035482 () Bool)

(assert (=> start!238694 (=> (not res!1035482) (not e!1549785))))

(declare-fun lambda!92275 () Int)

(declare-fun forall!5807 (List!28583 Int) Bool)

(assert (=> start!238694 (= res!1035482 (forall!5807 l!9164 lambda!92275))))

(assert (=> start!238694 e!1549785))

(assert (=> start!238694 e!1549786))

(assert (=> start!238694 e!1549790))

(assert (=> start!238694 e!1549787))

(declare-fun b!2438880 () Bool)

(declare-fun res!1035485 () Bool)

(assert (=> b!2438880 (=> res!1035485 e!1549788)))

(assert (=> b!2438880 (= res!1035485 false)))

(assert (= (and start!238694 res!1035482) b!2438879))

(assert (= (and b!2438879 res!1035483) b!2438890))

(assert (= (and b!2438890 (not res!1035487)) b!2438875))

(assert (= (and b!2438875 (not res!1035489)) b!2438885))

(assert (= (and b!2438885 (not res!1035488)) b!2438876))

(assert (= (and b!2438876 (not res!1035480)) b!2438889))

(assert (= (and b!2438889 (not res!1035486)) b!2438887))

(assert (= (and b!2438887 (not res!1035484)) b!2438883))

(assert (= (and b!2438883 (not res!1035481)) b!2438878))

(assert (= (and b!2438878 (not res!1035490)) b!2438880))

(assert (= (and b!2438880 (not res!1035485)) b!2438884))

(assert (= (and start!238694 ((_ is Cons!28485) l!9164)) b!2438874))

(assert (= (and start!238694 ((_ is ElementMatch!7173) r!13927)) b!2438886))

(assert (= (and start!238694 ((_ is Concat!11809) r!13927)) b!2438877))

(assert (= (and start!238694 ((_ is Star!7173) r!13927)) b!2438882))

(assert (= (and start!238694 ((_ is Union!7173) r!13927)) b!2438881))

(assert (= (and start!238694 ((_ is Cons!28484) s!9460)) b!2438888))

(declare-fun m!2817589 () Bool)

(assert (=> b!2438889 m!2817589))

(declare-fun m!2817591 () Bool)

(assert (=> b!2438883 m!2817591))

(declare-fun m!2817593 () Bool)

(assert (=> b!2438883 m!2817593))

(declare-fun m!2817595 () Bool)

(assert (=> b!2438876 m!2817595))

(declare-fun m!2817597 () Bool)

(assert (=> b!2438876 m!2817597))

(declare-fun m!2817599 () Bool)

(assert (=> b!2438890 m!2817599))

(declare-fun m!2817601 () Bool)

(assert (=> b!2438890 m!2817601))

(declare-fun m!2817603 () Bool)

(assert (=> b!2438890 m!2817603))

(declare-fun m!2817605 () Bool)

(assert (=> b!2438879 m!2817605))

(declare-fun m!2817607 () Bool)

(assert (=> start!238694 m!2817607))

(declare-fun m!2817609 () Bool)

(assert (=> b!2438878 m!2817609))

(declare-fun m!2817611 () Bool)

(assert (=> b!2438878 m!2817611))

(declare-fun m!2817613 () Bool)

(assert (=> b!2438884 m!2817613))

(declare-fun m!2817615 () Bool)

(assert (=> b!2438875 m!2817615))

(declare-fun m!2817617 () Bool)

(assert (=> b!2438875 m!2817617))

(declare-fun m!2817619 () Bool)

(assert (=> b!2438875 m!2817619))

(assert (=> b!2438875 m!2817615))

(declare-fun m!2817621 () Bool)

(assert (=> b!2438875 m!2817621))

(declare-fun m!2817623 () Bool)

(assert (=> b!2438875 m!2817623))

(assert (=> b!2438875 m!2817621))

(declare-fun m!2817625 () Bool)

(assert (=> b!2438875 m!2817625))

(declare-fun m!2817627 () Bool)

(assert (=> b!2438885 m!2817627))

(declare-fun m!2817629 () Bool)

(assert (=> b!2438887 m!2817629))

(declare-fun m!2817631 () Bool)

(assert (=> b!2438887 m!2817631))

(check-sat (not b!2438879) (not b!2438885) (not start!238694) (not b!2438887) (not b!2438875) (not b!2438877) (not b!2438876) (not b!2438883) (not b!2438882) (not b!2438881) (not b!2438890) tp_is_empty!11759 (not b!2438874) (not b!2438889) (not b!2438884) (not b!2438888) (not b!2438878))
(check-sat)
(get-model)

(declare-fun b!2438992 () Bool)

(declare-fun e!1549859 () Bool)

(declare-fun call!149372 () Bool)

(assert (=> b!2438992 (= e!1549859 call!149372)))

(declare-fun d!704365 () Bool)

(declare-fun res!1035552 () Bool)

(declare-fun e!1549862 () Bool)

(assert (=> d!704365 (=> res!1035552 e!1549862)))

(assert (=> d!704365 (= res!1035552 ((_ is ElementMatch!7173) lt!878039))))

(assert (=> d!704365 (= (validRegex!2885 lt!878039) e!1549862)))

(declare-fun b!2438993 () Bool)

(declare-fun e!1549863 () Bool)

(declare-fun e!1549864 () Bool)

(assert (=> b!2438993 (= e!1549863 e!1549864)))

(declare-fun res!1035553 () Bool)

(declare-fun nullable!2196 (Regex!7173) Bool)

(assert (=> b!2438993 (= res!1035553 (not (nullable!2196 (reg!7502 lt!878039))))))

(assert (=> b!2438993 (=> (not res!1035553) (not e!1549864))))

(declare-fun b!2438994 () Bool)

(declare-fun call!149373 () Bool)

(assert (=> b!2438994 (= e!1549864 call!149373)))

(declare-fun b!2438995 () Bool)

(declare-fun res!1035550 () Bool)

(declare-fun e!1549865 () Bool)

(assert (=> b!2438995 (=> (not res!1035550) (not e!1549865))))

(assert (=> b!2438995 (= res!1035550 call!149372)))

(declare-fun e!1549860 () Bool)

(assert (=> b!2438995 (= e!1549860 e!1549865)))

(declare-fun c!389122 () Bool)

(declare-fun c!389121 () Bool)

(declare-fun bm!149366 () Bool)

(assert (=> bm!149366 (= call!149373 (validRegex!2885 (ite c!389122 (reg!7502 lt!878039) (ite c!389121 (regOne!14859 lt!878039) (regTwo!14858 lt!878039)))))))

(declare-fun b!2438996 () Bool)

(declare-fun res!1035551 () Bool)

(declare-fun e!1549861 () Bool)

(assert (=> b!2438996 (=> res!1035551 e!1549861)))

(assert (=> b!2438996 (= res!1035551 (not ((_ is Concat!11809) lt!878039)))))

(assert (=> b!2438996 (= e!1549860 e!1549861)))

(declare-fun b!2438997 () Bool)

(assert (=> b!2438997 (= e!1549861 e!1549859)))

(declare-fun res!1035554 () Bool)

(assert (=> b!2438997 (=> (not res!1035554) (not e!1549859))))

(declare-fun call!149371 () Bool)

(assert (=> b!2438997 (= res!1035554 call!149371)))

(declare-fun b!2438998 () Bool)

(assert (=> b!2438998 (= e!1549863 e!1549860)))

(assert (=> b!2438998 (= c!389121 ((_ is Union!7173) lt!878039))))

(declare-fun bm!149367 () Bool)

(assert (=> bm!149367 (= call!149372 call!149373)))

(declare-fun bm!149368 () Bool)

(assert (=> bm!149368 (= call!149371 (validRegex!2885 (ite c!389121 (regTwo!14859 lt!878039) (regOne!14858 lt!878039))))))

(declare-fun b!2438999 () Bool)

(assert (=> b!2438999 (= e!1549862 e!1549863)))

(assert (=> b!2438999 (= c!389122 ((_ is Star!7173) lt!878039))))

(declare-fun b!2439000 () Bool)

(assert (=> b!2439000 (= e!1549865 call!149371)))

(assert (= (and d!704365 (not res!1035552)) b!2438999))

(assert (= (and b!2438999 c!389122) b!2438993))

(assert (= (and b!2438999 (not c!389122)) b!2438998))

(assert (= (and b!2438993 res!1035553) b!2438994))

(assert (= (and b!2438998 c!389121) b!2438995))

(assert (= (and b!2438998 (not c!389121)) b!2438996))

(assert (= (and b!2438995 res!1035550) b!2439000))

(assert (= (and b!2438996 (not res!1035551)) b!2438997))

(assert (= (and b!2438997 res!1035554) b!2438992))

(assert (= (or b!2438995 b!2438992) bm!149367))

(assert (= (or b!2439000 b!2438997) bm!149368))

(assert (= (or b!2438994 bm!149367) bm!149366))

(declare-fun m!2817661 () Bool)

(assert (=> b!2438993 m!2817661))

(declare-fun m!2817663 () Bool)

(assert (=> bm!149366 m!2817663))

(declare-fun m!2817665 () Bool)

(assert (=> bm!149368 m!2817665))

(assert (=> b!2438878 d!704365))

(declare-fun d!704375 () Bool)

(assert (=> d!704375 (= (get!8789 lt!878036) (v!31069 lt!878036))))

(assert (=> b!2438878 d!704375))

(declare-fun bs!464736 () Bool)

(declare-fun d!704379 () Bool)

(assert (= bs!464736 (and d!704379 start!238694)))

(declare-fun lambda!92289 () Int)

(assert (=> bs!464736 (= lambda!92289 lambda!92275)))

(declare-fun b!2439029 () Bool)

(declare-fun e!1549884 () Regex!7173)

(assert (=> b!2439029 (= e!1549884 (Concat!11809 (h!33886 lt!878034) (generalisedConcat!274 (t!208560 lt!878034))))))

(declare-fun b!2439030 () Bool)

(declare-fun e!1549887 () Bool)

(declare-fun lt!878054 () Regex!7173)

(declare-fun isEmptyExpr!214 (Regex!7173) Bool)

(assert (=> b!2439030 (= e!1549887 (isEmptyExpr!214 lt!878054))))

(declare-fun b!2439032 () Bool)

(declare-fun e!1549886 () Bool)

(assert (=> b!2439032 (= e!1549886 (isEmpty!16523 (t!208560 lt!878034)))))

(declare-fun b!2439033 () Bool)

(declare-fun e!1549883 () Bool)

(assert (=> b!2439033 (= e!1549883 (= lt!878054 (head!5537 lt!878034)))))

(declare-fun b!2439034 () Bool)

(declare-fun isConcat!214 (Regex!7173) Bool)

(assert (=> b!2439034 (= e!1549883 (isConcat!214 lt!878054))))

(declare-fun b!2439035 () Bool)

(declare-fun e!1549882 () Regex!7173)

(assert (=> b!2439035 (= e!1549882 e!1549884)))

(declare-fun c!389133 () Bool)

(assert (=> b!2439035 (= c!389133 ((_ is Cons!28485) lt!878034))))

(declare-fun b!2439036 () Bool)

(assert (=> b!2439036 (= e!1549884 EmptyExpr!7173)))

(declare-fun b!2439037 () Bool)

(assert (=> b!2439037 (= e!1549887 e!1549883)))

(declare-fun c!389132 () Bool)

(assert (=> b!2439037 (= c!389132 (isEmpty!16523 (tail!3810 lt!878034)))))

(declare-fun b!2439038 () Bool)

(assert (=> b!2439038 (= e!1549882 (h!33886 lt!878034))))

(declare-fun b!2439031 () Bool)

(declare-fun e!1549885 () Bool)

(assert (=> b!2439031 (= e!1549885 e!1549887)))

(declare-fun c!389134 () Bool)

(assert (=> b!2439031 (= c!389134 (isEmpty!16523 lt!878034))))

(assert (=> d!704379 e!1549885))

(declare-fun res!1035567 () Bool)

(assert (=> d!704379 (=> (not res!1035567) (not e!1549885))))

(assert (=> d!704379 (= res!1035567 (validRegex!2885 lt!878054))))

(assert (=> d!704379 (= lt!878054 e!1549882)))

(declare-fun c!389131 () Bool)

(assert (=> d!704379 (= c!389131 e!1549886)))

(declare-fun res!1035568 () Bool)

(assert (=> d!704379 (=> (not res!1035568) (not e!1549886))))

(assert (=> d!704379 (= res!1035568 ((_ is Cons!28485) lt!878034))))

(assert (=> d!704379 (forall!5807 lt!878034 lambda!92289)))

(assert (=> d!704379 (= (generalisedConcat!274 lt!878034) lt!878054)))

(assert (= (and d!704379 res!1035568) b!2439032))

(assert (= (and d!704379 c!389131) b!2439038))

(assert (= (and d!704379 (not c!389131)) b!2439035))

(assert (= (and b!2439035 c!389133) b!2439029))

(assert (= (and b!2439035 (not c!389133)) b!2439036))

(assert (= (and d!704379 res!1035567) b!2439031))

(assert (= (and b!2439031 c!389134) b!2439030))

(assert (= (and b!2439031 (not c!389134)) b!2439037))

(assert (= (and b!2439037 c!389132) b!2439033))

(assert (= (and b!2439037 (not c!389132)) b!2439034))

(declare-fun m!2817679 () Bool)

(assert (=> b!2439033 m!2817679))

(assert (=> b!2439031 m!2817595))

(declare-fun m!2817681 () Bool)

(assert (=> d!704379 m!2817681))

(declare-fun m!2817683 () Bool)

(assert (=> d!704379 m!2817683))

(declare-fun m!2817685 () Bool)

(assert (=> b!2439037 m!2817685))

(assert (=> b!2439037 m!2817685))

(declare-fun m!2817687 () Bool)

(assert (=> b!2439037 m!2817687))

(declare-fun m!2817689 () Bool)

(assert (=> b!2439029 m!2817689))

(declare-fun m!2817691 () Bool)

(assert (=> b!2439034 m!2817691))

(declare-fun m!2817693 () Bool)

(assert (=> b!2439030 m!2817693))

(declare-fun m!2817695 () Bool)

(assert (=> b!2439032 m!2817695))

(assert (=> b!2438889 d!704379))

(declare-fun d!704383 () Bool)

(declare-fun isEmpty!16526 (Option!5662) Bool)

(assert (=> d!704383 (= (isDefined!4488 lt!878036) (not (isEmpty!16526 lt!878036)))))

(declare-fun bs!464737 () Bool)

(assert (= bs!464737 d!704383))

(declare-fun m!2817697 () Bool)

(assert (=> bs!464737 m!2817697))

(assert (=> b!2438883 d!704383))

(declare-fun b!2439177 () Bool)

(declare-fun res!1035631 () Bool)

(declare-fun e!1549969 () Bool)

(assert (=> b!2439177 (=> (not res!1035631) (not e!1549969))))

(declare-fun lt!878082 () Option!5662)

(assert (=> b!2439177 (= res!1035631 (matchR!3288 EmptyExpr!7173 (_2!16592 (get!8789 lt!878082))))))

(declare-fun b!2439178 () Bool)

(declare-fun e!1549968 () Bool)

(assert (=> b!2439178 (= e!1549968 (not (isDefined!4488 lt!878082)))))

(declare-fun b!2439179 () Bool)

(assert (=> b!2439179 (= e!1549969 (= (++!7076 (_1!16592 (get!8789 lt!878082)) (_2!16592 (get!8789 lt!878082))) s!9460))))

(declare-fun b!2439180 () Bool)

(declare-fun res!1035633 () Bool)

(assert (=> b!2439180 (=> (not res!1035633) (not e!1549969))))

(assert (=> b!2439180 (= res!1035633 (matchR!3288 lt!878039 (_1!16592 (get!8789 lt!878082))))))

(declare-fun b!2439181 () Bool)

(declare-fun e!1549966 () Option!5662)

(assert (=> b!2439181 (= e!1549966 None!5661)))

(declare-fun b!2439182 () Bool)

(declare-fun e!1549970 () Bool)

(assert (=> b!2439182 (= e!1549970 (matchR!3288 EmptyExpr!7173 s!9460))))

(declare-fun d!704385 () Bool)

(assert (=> d!704385 e!1549968))

(declare-fun res!1035629 () Bool)

(assert (=> d!704385 (=> res!1035629 e!1549968)))

(assert (=> d!704385 (= res!1035629 e!1549969)))

(declare-fun res!1035630 () Bool)

(assert (=> d!704385 (=> (not res!1035630) (not e!1549969))))

(assert (=> d!704385 (= res!1035630 (isDefined!4488 lt!878082))))

(declare-fun e!1549967 () Option!5662)

(assert (=> d!704385 (= lt!878082 e!1549967)))

(declare-fun c!389175 () Bool)

(assert (=> d!704385 (= c!389175 e!1549970)))

(declare-fun res!1035632 () Bool)

(assert (=> d!704385 (=> (not res!1035632) (not e!1549970))))

(assert (=> d!704385 (= res!1035632 (matchR!3288 lt!878039 Nil!28484))))

(assert (=> d!704385 (validRegex!2885 lt!878039)))

(assert (=> d!704385 (= (findConcatSeparation!770 lt!878039 EmptyExpr!7173 Nil!28484 s!9460 s!9460) lt!878082)))

(declare-fun b!2439183 () Bool)

(declare-fun lt!878081 () Unit!41729)

(declare-fun lt!878080 () Unit!41729)

(assert (=> b!2439183 (= lt!878081 lt!878080)))

(assert (=> b!2439183 (= (++!7076 (++!7076 Nil!28484 (Cons!28484 (h!33885 s!9460) Nil!28484)) (t!208559 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!697 (List!28582 C!14504 List!28582 List!28582) Unit!41729)

(assert (=> b!2439183 (= lt!878080 (lemmaMoveElementToOtherListKeepsConcatEq!697 Nil!28484 (h!33885 s!9460) (t!208559 s!9460) s!9460))))

(assert (=> b!2439183 (= e!1549966 (findConcatSeparation!770 lt!878039 EmptyExpr!7173 (++!7076 Nil!28484 (Cons!28484 (h!33885 s!9460) Nil!28484)) (t!208559 s!9460) s!9460))))

(declare-fun b!2439184 () Bool)

(assert (=> b!2439184 (= e!1549967 (Some!5661 (tuple2!28103 Nil!28484 s!9460)))))

(declare-fun b!2439185 () Bool)

(assert (=> b!2439185 (= e!1549967 e!1549966)))

(declare-fun c!389174 () Bool)

(assert (=> b!2439185 (= c!389174 ((_ is Nil!28484) s!9460))))

(assert (= (and d!704385 res!1035632) b!2439182))

(assert (= (and d!704385 c!389175) b!2439184))

(assert (= (and d!704385 (not c!389175)) b!2439185))

(assert (= (and b!2439185 c!389174) b!2439181))

(assert (= (and b!2439185 (not c!389174)) b!2439183))

(assert (= (and d!704385 res!1035630) b!2439180))

(assert (= (and b!2439180 res!1035633) b!2439177))

(assert (= (and b!2439177 res!1035631) b!2439179))

(assert (= (and d!704385 (not res!1035629)) b!2439178))

(declare-fun m!2817787 () Bool)

(assert (=> b!2439180 m!2817787))

(declare-fun m!2817789 () Bool)

(assert (=> b!2439180 m!2817789))

(declare-fun m!2817791 () Bool)

(assert (=> b!2439183 m!2817791))

(assert (=> b!2439183 m!2817791))

(declare-fun m!2817793 () Bool)

(assert (=> b!2439183 m!2817793))

(declare-fun m!2817795 () Bool)

(assert (=> b!2439183 m!2817795))

(assert (=> b!2439183 m!2817791))

(declare-fun m!2817797 () Bool)

(assert (=> b!2439183 m!2817797))

(declare-fun m!2817799 () Bool)

(assert (=> d!704385 m!2817799))

(declare-fun m!2817801 () Bool)

(assert (=> d!704385 m!2817801))

(assert (=> d!704385 m!2817609))

(declare-fun m!2817803 () Bool)

(assert (=> b!2439182 m!2817803))

(assert (=> b!2439177 m!2817787))

(declare-fun m!2817805 () Bool)

(assert (=> b!2439177 m!2817805))

(assert (=> b!2439178 m!2817799))

(assert (=> b!2439179 m!2817787))

(declare-fun m!2817807 () Bool)

(assert (=> b!2439179 m!2817807))

(assert (=> b!2438883 d!704385))

(declare-fun d!704405 () Bool)

(assert (=> d!704405 (= (isEmpty!16523 lt!878034) ((_ is Nil!28485) lt!878034))))

(assert (=> b!2438876 d!704405))

(declare-fun d!704407 () Bool)

(assert (=> d!704407 (= (tail!3810 l!9164) (t!208560 l!9164))))

(assert (=> b!2438876 d!704407))

(declare-fun b!2439283 () Bool)

(declare-fun e!1550016 () Bool)

(declare-fun e!1550014 () Bool)

(assert (=> b!2439283 (= e!1550016 e!1550014)))

(declare-fun res!1035668 () Bool)

(assert (=> b!2439283 (=> res!1035668 e!1550014)))

(declare-fun call!149383 () Bool)

(assert (=> b!2439283 (= res!1035668 call!149383)))

(declare-fun b!2439284 () Bool)

(declare-fun head!5539 (List!28582) C!14504)

(assert (=> b!2439284 (= e!1550014 (not (= (head!5539 s!9460) (c!389101 lt!878039))))))

(declare-fun b!2439285 () Bool)

(declare-fun e!1550013 () Bool)

(declare-fun derivativeStep!1850 (Regex!7173 C!14504) Regex!7173)

(declare-fun tail!3812 (List!28582) List!28582)

(assert (=> b!2439285 (= e!1550013 (matchR!3288 (derivativeStep!1850 lt!878039 (head!5539 s!9460)) (tail!3812 s!9460)))))

(declare-fun b!2439286 () Bool)

(declare-fun e!1550017 () Bool)

(declare-fun lt!878089 () Bool)

(assert (=> b!2439286 (= e!1550017 (= lt!878089 call!149383))))

(declare-fun b!2439287 () Bool)

(declare-fun res!1035667 () Bool)

(declare-fun e!1550019 () Bool)

(assert (=> b!2439287 (=> (not res!1035667) (not e!1550019))))

(declare-fun isEmpty!16527 (List!28582) Bool)

(assert (=> b!2439287 (= res!1035667 (isEmpty!16527 (tail!3812 s!9460)))))

(declare-fun b!2439288 () Bool)

(assert (=> b!2439288 (= e!1550019 (= (head!5539 s!9460) (c!389101 lt!878039)))))

(declare-fun b!2439289 () Bool)

(declare-fun res!1035664 () Bool)

(assert (=> b!2439289 (=> (not res!1035664) (not e!1550019))))

(assert (=> b!2439289 (= res!1035664 (not call!149383))))

(declare-fun d!704409 () Bool)

(assert (=> d!704409 e!1550017))

(declare-fun c!389191 () Bool)

(assert (=> d!704409 (= c!389191 ((_ is EmptyExpr!7173) lt!878039))))

(assert (=> d!704409 (= lt!878089 e!1550013)))

(declare-fun c!389190 () Bool)

(assert (=> d!704409 (= c!389190 (isEmpty!16527 s!9460))))

(assert (=> d!704409 (validRegex!2885 lt!878039)))

(assert (=> d!704409 (= (matchR!3288 lt!878039 s!9460) lt!878089)))

(declare-fun b!2439290 () Bool)

(declare-fun res!1035661 () Bool)

(declare-fun e!1550015 () Bool)

(assert (=> b!2439290 (=> res!1035661 e!1550015)))

(assert (=> b!2439290 (= res!1035661 e!1550019)))

(declare-fun res!1035666 () Bool)

(assert (=> b!2439290 (=> (not res!1035666) (not e!1550019))))

(assert (=> b!2439290 (= res!1035666 lt!878089)))

(declare-fun b!2439291 () Bool)

(declare-fun e!1550018 () Bool)

(assert (=> b!2439291 (= e!1550017 e!1550018)))

(declare-fun c!389189 () Bool)

(assert (=> b!2439291 (= c!389189 ((_ is EmptyLang!7173) lt!878039))))

(declare-fun b!2439292 () Bool)

(assert (=> b!2439292 (= e!1550018 (not lt!878089))))

(declare-fun b!2439293 () Bool)

(declare-fun res!1035662 () Bool)

(assert (=> b!2439293 (=> res!1035662 e!1550015)))

(assert (=> b!2439293 (= res!1035662 (not ((_ is ElementMatch!7173) lt!878039)))))

(assert (=> b!2439293 (= e!1550018 e!1550015)))

(declare-fun b!2439294 () Bool)

(declare-fun res!1035663 () Bool)

(assert (=> b!2439294 (=> res!1035663 e!1550014)))

(assert (=> b!2439294 (= res!1035663 (not (isEmpty!16527 (tail!3812 s!9460))))))

(declare-fun b!2439295 () Bool)

(assert (=> b!2439295 (= e!1550015 e!1550016)))

(declare-fun res!1035665 () Bool)

(assert (=> b!2439295 (=> (not res!1035665) (not e!1550016))))

(assert (=> b!2439295 (= res!1035665 (not lt!878089))))

(declare-fun bm!149378 () Bool)

(assert (=> bm!149378 (= call!149383 (isEmpty!16527 s!9460))))

(declare-fun b!2439296 () Bool)

(assert (=> b!2439296 (= e!1550013 (nullable!2196 lt!878039))))

(assert (= (and d!704409 c!389190) b!2439296))

(assert (= (and d!704409 (not c!389190)) b!2439285))

(assert (= (and d!704409 c!389191) b!2439286))

(assert (= (and d!704409 (not c!389191)) b!2439291))

(assert (= (and b!2439291 c!389189) b!2439292))

(assert (= (and b!2439291 (not c!389189)) b!2439293))

(assert (= (and b!2439293 (not res!1035662)) b!2439290))

(assert (= (and b!2439290 res!1035666) b!2439289))

(assert (= (and b!2439289 res!1035664) b!2439287))

(assert (= (and b!2439287 res!1035667) b!2439288))

(assert (= (and b!2439290 (not res!1035661)) b!2439295))

(assert (= (and b!2439295 res!1035665) b!2439283))

(assert (= (and b!2439283 (not res!1035668)) b!2439294))

(assert (= (and b!2439294 (not res!1035663)) b!2439284))

(assert (= (or b!2439286 b!2439283 b!2439289) bm!149378))

(declare-fun m!2817827 () Bool)

(assert (=> b!2439294 m!2817827))

(assert (=> b!2439294 m!2817827))

(declare-fun m!2817829 () Bool)

(assert (=> b!2439294 m!2817829))

(declare-fun m!2817831 () Bool)

(assert (=> b!2439285 m!2817831))

(assert (=> b!2439285 m!2817831))

(declare-fun m!2817833 () Bool)

(assert (=> b!2439285 m!2817833))

(assert (=> b!2439285 m!2817827))

(assert (=> b!2439285 m!2817833))

(assert (=> b!2439285 m!2817827))

(declare-fun m!2817835 () Bool)

(assert (=> b!2439285 m!2817835))

(assert (=> b!2439287 m!2817827))

(assert (=> b!2439287 m!2817827))

(assert (=> b!2439287 m!2817829))

(declare-fun m!2817837 () Bool)

(assert (=> b!2439296 m!2817837))

(declare-fun m!2817839 () Bool)

(assert (=> bm!149378 m!2817839))

(assert (=> b!2439284 m!2817831))

(assert (=> b!2439288 m!2817831))

(assert (=> d!704409 m!2817839))

(assert (=> d!704409 m!2817609))

(assert (=> b!2438887 d!704409))

(declare-fun d!704417 () Bool)

(assert (=> d!704417 (= (head!5537 l!9164) (h!33886 l!9164))))

(assert (=> b!2438887 d!704417))

(declare-fun d!704419 () Bool)

(declare-fun res!1035673 () Bool)

(declare-fun e!1550024 () Bool)

(assert (=> d!704419 (=> res!1035673 e!1550024)))

(assert (=> d!704419 (= res!1035673 ((_ is Nil!28485) l!9164))))

(assert (=> d!704419 (= (forall!5807 l!9164 lambda!92275) e!1550024)))

(declare-fun b!2439301 () Bool)

(declare-fun e!1550025 () Bool)

(assert (=> b!2439301 (= e!1550024 e!1550025)))

(declare-fun res!1035674 () Bool)

(assert (=> b!2439301 (=> (not res!1035674) (not e!1550025))))

(declare-fun dynLambda!12254 (Int Regex!7173) Bool)

(assert (=> b!2439301 (= res!1035674 (dynLambda!12254 lambda!92275 (h!33886 l!9164)))))

(declare-fun b!2439302 () Bool)

(assert (=> b!2439302 (= e!1550025 (forall!5807 (t!208560 l!9164) lambda!92275))))

(assert (= (and d!704419 (not res!1035673)) b!2439301))

(assert (= (and b!2439301 res!1035674) b!2439302))

(declare-fun b_lambda!74915 () Bool)

(assert (=> (not b_lambda!74915) (not b!2439301)))

(declare-fun m!2817841 () Bool)

(assert (=> b!2439301 m!2817841))

(declare-fun m!2817843 () Bool)

(assert (=> b!2439302 m!2817843))

(assert (=> start!238694 d!704419))

(declare-fun d!704421 () Bool)

(declare-fun choose!14470 (Int) Bool)

(assert (=> d!704421 (= (Exists!1209 lambda!92276) (choose!14470 lambda!92276))))

(declare-fun bs!464752 () Bool)

(assert (= bs!464752 d!704421))

(declare-fun m!2817845 () Bool)

(assert (=> bs!464752 m!2817845))

(assert (=> b!2438875 d!704421))

(declare-fun d!704423 () Bool)

(assert (=> d!704423 (= (isDefined!4488 (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) Nil!28484 s!9460 s!9460)) (not (isEmpty!16526 (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) Nil!28484 s!9460 s!9460))))))

(declare-fun bs!464753 () Bool)

(assert (= bs!464753 d!704423))

(assert (=> bs!464753 m!2817615))

(declare-fun m!2817847 () Bool)

(assert (=> bs!464753 m!2817847))

(assert (=> b!2438875 d!704423))

(declare-fun d!704425 () Bool)

(assert (=> d!704425 (= (Exists!1209 lambda!92277) (choose!14470 lambda!92277))))

(declare-fun bs!464754 () Bool)

(assert (= bs!464754 d!704425))

(declare-fun m!2817849 () Bool)

(assert (=> bs!464754 m!2817849))

(assert (=> b!2438875 d!704425))

(declare-fun bs!464755 () Bool)

(declare-fun d!704427 () Bool)

(assert (= bs!464755 (and d!704427 b!2438875)))

(declare-fun lambda!92302 () Int)

(assert (=> bs!464755 (= lambda!92302 lambda!92276)))

(assert (=> bs!464755 (not (= lambda!92302 lambda!92277))))

(assert (=> d!704427 true))

(assert (=> d!704427 true))

(assert (=> d!704427 true))

(assert (=> d!704427 (= (isDefined!4488 (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) Nil!28484 s!9460 s!9460)) (Exists!1209 lambda!92302))))

(declare-fun lt!878092 () Unit!41729)

(declare-fun choose!14471 (Regex!7173 Regex!7173 List!28582) Unit!41729)

(assert (=> d!704427 (= lt!878092 (choose!14471 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460))))

(assert (=> d!704427 (validRegex!2885 (regOne!14858 r!13927))))

(assert (=> d!704427 (= (lemmaFindConcatSeparationEquivalentToExists!708 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460) lt!878092)))

(declare-fun bs!464756 () Bool)

(assert (= bs!464756 d!704427))

(assert (=> bs!464756 m!2817615))

(assert (=> bs!464756 m!2817617))

(declare-fun m!2817851 () Bool)

(assert (=> bs!464756 m!2817851))

(assert (=> bs!464756 m!2817615))

(declare-fun m!2817853 () Bool)

(assert (=> bs!464756 m!2817853))

(declare-fun m!2817855 () Bool)

(assert (=> bs!464756 m!2817855))

(assert (=> b!2438875 d!704427))

(declare-fun bs!464757 () Bool)

(declare-fun d!704429 () Bool)

(assert (= bs!464757 (and d!704429 b!2438875)))

(declare-fun lambda!92307 () Int)

(assert (=> bs!464757 (= lambda!92307 lambda!92276)))

(assert (=> bs!464757 (not (= lambda!92307 lambda!92277))))

(declare-fun bs!464758 () Bool)

(assert (= bs!464758 (and d!704429 d!704427)))

(assert (=> bs!464758 (= lambda!92307 lambda!92302)))

(assert (=> d!704429 true))

(assert (=> d!704429 true))

(assert (=> d!704429 true))

(declare-fun lambda!92308 () Int)

(assert (=> bs!464757 (not (= lambda!92308 lambda!92276))))

(assert (=> bs!464757 (= lambda!92308 lambda!92277)))

(assert (=> bs!464758 (not (= lambda!92308 lambda!92302))))

(declare-fun bs!464759 () Bool)

(assert (= bs!464759 d!704429))

(assert (=> bs!464759 (not (= lambda!92308 lambda!92307))))

(assert (=> d!704429 true))

(assert (=> d!704429 true))

(assert (=> d!704429 true))

(assert (=> d!704429 (= (Exists!1209 lambda!92307) (Exists!1209 lambda!92308))))

(declare-fun lt!878095 () Unit!41729)

(declare-fun choose!14472 (Regex!7173 Regex!7173 List!28582) Unit!41729)

(assert (=> d!704429 (= lt!878095 (choose!14472 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460))))

(assert (=> d!704429 (validRegex!2885 (regOne!14858 r!13927))))

(assert (=> d!704429 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!454 (regOne!14858 r!13927) (regTwo!14858 r!13927) s!9460) lt!878095)))

(declare-fun m!2817857 () Bool)

(assert (=> bs!464759 m!2817857))

(declare-fun m!2817859 () Bool)

(assert (=> bs!464759 m!2817859))

(declare-fun m!2817861 () Bool)

(assert (=> bs!464759 m!2817861))

(assert (=> bs!464759 m!2817851))

(assert (=> b!2438875 d!704429))

(declare-fun b!2439315 () Bool)

(declare-fun res!1035689 () Bool)

(declare-fun e!1550035 () Bool)

(assert (=> b!2439315 (=> (not res!1035689) (not e!1550035))))

(declare-fun lt!878098 () Option!5662)

(assert (=> b!2439315 (= res!1035689 (matchR!3288 (regTwo!14858 r!13927) (_2!16592 (get!8789 lt!878098))))))

(declare-fun b!2439316 () Bool)

(declare-fun e!1550034 () Bool)

(assert (=> b!2439316 (= e!1550034 (not (isDefined!4488 lt!878098)))))

(declare-fun b!2439317 () Bool)

(assert (=> b!2439317 (= e!1550035 (= (++!7076 (_1!16592 (get!8789 lt!878098)) (_2!16592 (get!8789 lt!878098))) s!9460))))

(declare-fun b!2439318 () Bool)

(declare-fun res!1035691 () Bool)

(assert (=> b!2439318 (=> (not res!1035691) (not e!1550035))))

(assert (=> b!2439318 (= res!1035691 (matchR!3288 (regOne!14858 r!13927) (_1!16592 (get!8789 lt!878098))))))

(declare-fun b!2439319 () Bool)

(declare-fun e!1550032 () Option!5662)

(assert (=> b!2439319 (= e!1550032 None!5661)))

(declare-fun b!2439320 () Bool)

(declare-fun e!1550036 () Bool)

(assert (=> b!2439320 (= e!1550036 (matchR!3288 (regTwo!14858 r!13927) s!9460))))

(declare-fun d!704431 () Bool)

(assert (=> d!704431 e!1550034))

(declare-fun res!1035687 () Bool)

(assert (=> d!704431 (=> res!1035687 e!1550034)))

(assert (=> d!704431 (= res!1035687 e!1550035)))

(declare-fun res!1035688 () Bool)

(assert (=> d!704431 (=> (not res!1035688) (not e!1550035))))

(assert (=> d!704431 (= res!1035688 (isDefined!4488 lt!878098))))

(declare-fun e!1550033 () Option!5662)

(assert (=> d!704431 (= lt!878098 e!1550033)))

(declare-fun c!389193 () Bool)

(assert (=> d!704431 (= c!389193 e!1550036)))

(declare-fun res!1035690 () Bool)

(assert (=> d!704431 (=> (not res!1035690) (not e!1550036))))

(assert (=> d!704431 (= res!1035690 (matchR!3288 (regOne!14858 r!13927) Nil!28484))))

(assert (=> d!704431 (validRegex!2885 (regOne!14858 r!13927))))

(assert (=> d!704431 (= (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) Nil!28484 s!9460 s!9460) lt!878098)))

(declare-fun b!2439321 () Bool)

(declare-fun lt!878097 () Unit!41729)

(declare-fun lt!878096 () Unit!41729)

(assert (=> b!2439321 (= lt!878097 lt!878096)))

(assert (=> b!2439321 (= (++!7076 (++!7076 Nil!28484 (Cons!28484 (h!33885 s!9460) Nil!28484)) (t!208559 s!9460)) s!9460)))

(assert (=> b!2439321 (= lt!878096 (lemmaMoveElementToOtherListKeepsConcatEq!697 Nil!28484 (h!33885 s!9460) (t!208559 s!9460) s!9460))))

(assert (=> b!2439321 (= e!1550032 (findConcatSeparation!770 (regOne!14858 r!13927) (regTwo!14858 r!13927) (++!7076 Nil!28484 (Cons!28484 (h!33885 s!9460) Nil!28484)) (t!208559 s!9460) s!9460))))

(declare-fun b!2439322 () Bool)

(assert (=> b!2439322 (= e!1550033 (Some!5661 (tuple2!28103 Nil!28484 s!9460)))))

(declare-fun b!2439323 () Bool)

(assert (=> b!2439323 (= e!1550033 e!1550032)))

(declare-fun c!389192 () Bool)

(assert (=> b!2439323 (= c!389192 ((_ is Nil!28484) s!9460))))

(assert (= (and d!704431 res!1035690) b!2439320))

(assert (= (and d!704431 c!389193) b!2439322))

(assert (= (and d!704431 (not c!389193)) b!2439323))

(assert (= (and b!2439323 c!389192) b!2439319))

(assert (= (and b!2439323 (not c!389192)) b!2439321))

(assert (= (and d!704431 res!1035688) b!2439318))

(assert (= (and b!2439318 res!1035691) b!2439315))

(assert (= (and b!2439315 res!1035689) b!2439317))

(assert (= (and d!704431 (not res!1035687)) b!2439316))

(declare-fun m!2817863 () Bool)

(assert (=> b!2439318 m!2817863))

(declare-fun m!2817865 () Bool)

(assert (=> b!2439318 m!2817865))

(assert (=> b!2439321 m!2817791))

(assert (=> b!2439321 m!2817791))

(assert (=> b!2439321 m!2817793))

(assert (=> b!2439321 m!2817795))

(assert (=> b!2439321 m!2817791))

(declare-fun m!2817867 () Bool)

(assert (=> b!2439321 m!2817867))

(declare-fun m!2817869 () Bool)

(assert (=> d!704431 m!2817869))

(declare-fun m!2817871 () Bool)

(assert (=> d!704431 m!2817871))

(assert (=> d!704431 m!2817851))

(declare-fun m!2817873 () Bool)

(assert (=> b!2439320 m!2817873))

(assert (=> b!2439315 m!2817863))

(declare-fun m!2817875 () Bool)

(assert (=> b!2439315 m!2817875))

(assert (=> b!2439316 m!2817869))

(assert (=> b!2439317 m!2817863))

(declare-fun m!2817877 () Bool)

(assert (=> b!2439317 m!2817877))

(assert (=> b!2438875 d!704431))

(declare-fun bs!464760 () Bool)

(declare-fun b!2439356 () Bool)

(assert (= bs!464760 (and b!2439356 d!704429)))

(declare-fun lambda!92313 () Int)

(assert (=> bs!464760 (not (= lambda!92313 lambda!92308))))

(declare-fun bs!464761 () Bool)

(assert (= bs!464761 (and b!2439356 b!2438875)))

(assert (=> bs!464761 (not (= lambda!92313 lambda!92277))))

(assert (=> bs!464761 (not (= lambda!92313 lambda!92276))))

(declare-fun bs!464762 () Bool)

(assert (= bs!464762 (and b!2439356 d!704427)))

(assert (=> bs!464762 (not (= lambda!92313 lambda!92302))))

(assert (=> bs!464760 (not (= lambda!92313 lambda!92307))))

(assert (=> b!2439356 true))

(assert (=> b!2439356 true))

(declare-fun bs!464763 () Bool)

(declare-fun b!2439365 () Bool)

(assert (= bs!464763 (and b!2439365 d!704429)))

(declare-fun lambda!92314 () Int)

(assert (=> bs!464763 (= lambda!92314 lambda!92308)))

(declare-fun bs!464764 () Bool)

(assert (= bs!464764 (and b!2439365 b!2438875)))

(assert (=> bs!464764 (= lambda!92314 lambda!92277)))

(assert (=> bs!464764 (not (= lambda!92314 lambda!92276))))

(declare-fun bs!464765 () Bool)

(assert (= bs!464765 (and b!2439365 b!2439356)))

(assert (=> bs!464765 (not (= lambda!92314 lambda!92313))))

(declare-fun bs!464766 () Bool)

(assert (= bs!464766 (and b!2439365 d!704427)))

(assert (=> bs!464766 (not (= lambda!92314 lambda!92302))))

(assert (=> bs!464763 (not (= lambda!92314 lambda!92307))))

(assert (=> b!2439365 true))

(assert (=> b!2439365 true))

(declare-fun e!1550055 () Bool)

(declare-fun call!149388 () Bool)

(assert (=> b!2439356 (= e!1550055 call!149388)))

(declare-fun b!2439357 () Bool)

(declare-fun e!1550061 () Bool)

(assert (=> b!2439357 (= e!1550061 (matchRSpec!1020 (regTwo!14859 r!13927) s!9460))))

(declare-fun b!2439358 () Bool)

(declare-fun c!389202 () Bool)

(assert (=> b!2439358 (= c!389202 ((_ is Union!7173) r!13927))))

(declare-fun e!1550057 () Bool)

(declare-fun e!1550060 () Bool)

(assert (=> b!2439358 (= e!1550057 e!1550060)))

(declare-fun d!704433 () Bool)

(declare-fun c!389204 () Bool)

(assert (=> d!704433 (= c!389204 ((_ is EmptyExpr!7173) r!13927))))

(declare-fun e!1550056 () Bool)

(assert (=> d!704433 (= (matchRSpec!1020 r!13927 s!9460) e!1550056)))

(declare-fun b!2439359 () Bool)

(declare-fun e!1550059 () Bool)

(assert (=> b!2439359 (= e!1550060 e!1550059)))

(declare-fun c!389205 () Bool)

(assert (=> b!2439359 (= c!389205 ((_ is Star!7173) r!13927))))

(declare-fun b!2439360 () Bool)

(declare-fun e!1550058 () Bool)

(assert (=> b!2439360 (= e!1550056 e!1550058)))

(declare-fun res!1035709 () Bool)

(assert (=> b!2439360 (= res!1035709 (not ((_ is EmptyLang!7173) r!13927)))))

(assert (=> b!2439360 (=> (not res!1035709) (not e!1550058))))

(declare-fun b!2439361 () Bool)

(assert (=> b!2439361 (= e!1550057 (= s!9460 (Cons!28484 (c!389101 r!13927) Nil!28484)))))

(declare-fun bm!149383 () Bool)

(declare-fun call!149389 () Bool)

(assert (=> bm!149383 (= call!149389 (isEmpty!16527 s!9460))))

(declare-fun b!2439362 () Bool)

(declare-fun res!1035708 () Bool)

(assert (=> b!2439362 (=> res!1035708 e!1550055)))

(assert (=> b!2439362 (= res!1035708 call!149389)))

(assert (=> b!2439362 (= e!1550059 e!1550055)))

(declare-fun b!2439363 () Bool)

(declare-fun c!389203 () Bool)

(assert (=> b!2439363 (= c!389203 ((_ is ElementMatch!7173) r!13927))))

(assert (=> b!2439363 (= e!1550058 e!1550057)))

(declare-fun b!2439364 () Bool)

(assert (=> b!2439364 (= e!1550060 e!1550061)))

(declare-fun res!1035710 () Bool)

(assert (=> b!2439364 (= res!1035710 (matchRSpec!1020 (regOne!14859 r!13927) s!9460))))

(assert (=> b!2439364 (=> res!1035710 e!1550061)))

(assert (=> b!2439365 (= e!1550059 call!149388)))

(declare-fun b!2439366 () Bool)

(assert (=> b!2439366 (= e!1550056 call!149389)))

(declare-fun bm!149384 () Bool)

(assert (=> bm!149384 (= call!149388 (Exists!1209 (ite c!389205 lambda!92313 lambda!92314)))))

(assert (= (and d!704433 c!389204) b!2439366))

(assert (= (and d!704433 (not c!389204)) b!2439360))

(assert (= (and b!2439360 res!1035709) b!2439363))

(assert (= (and b!2439363 c!389203) b!2439361))

(assert (= (and b!2439363 (not c!389203)) b!2439358))

(assert (= (and b!2439358 c!389202) b!2439364))

(assert (= (and b!2439358 (not c!389202)) b!2439359))

(assert (= (and b!2439364 (not res!1035710)) b!2439357))

(assert (= (and b!2439359 c!389205) b!2439362))

(assert (= (and b!2439359 (not c!389205)) b!2439365))

(assert (= (and b!2439362 (not res!1035708)) b!2439356))

(assert (= (or b!2439356 b!2439365) bm!149384))

(assert (= (or b!2439366 b!2439362) bm!149383))

(declare-fun m!2817879 () Bool)

(assert (=> b!2439357 m!2817879))

(assert (=> bm!149383 m!2817839))

(declare-fun m!2817881 () Bool)

(assert (=> b!2439364 m!2817881))

(declare-fun m!2817883 () Bool)

(assert (=> bm!149384 m!2817883))

(assert (=> b!2438890 d!704433))

(declare-fun b!2439367 () Bool)

(declare-fun e!1550065 () Bool)

(declare-fun e!1550063 () Bool)

(assert (=> b!2439367 (= e!1550065 e!1550063)))

(declare-fun res!1035718 () Bool)

(assert (=> b!2439367 (=> res!1035718 e!1550063)))

(declare-fun call!149390 () Bool)

(assert (=> b!2439367 (= res!1035718 call!149390)))

(declare-fun b!2439368 () Bool)

(assert (=> b!2439368 (= e!1550063 (not (= (head!5539 s!9460) (c!389101 r!13927))))))

(declare-fun b!2439369 () Bool)

(declare-fun e!1550062 () Bool)

(assert (=> b!2439369 (= e!1550062 (matchR!3288 (derivativeStep!1850 r!13927 (head!5539 s!9460)) (tail!3812 s!9460)))))

(declare-fun b!2439370 () Bool)

(declare-fun e!1550066 () Bool)

(declare-fun lt!878099 () Bool)

(assert (=> b!2439370 (= e!1550066 (= lt!878099 call!149390))))

(declare-fun b!2439371 () Bool)

(declare-fun res!1035717 () Bool)

(declare-fun e!1550068 () Bool)

(assert (=> b!2439371 (=> (not res!1035717) (not e!1550068))))

(assert (=> b!2439371 (= res!1035717 (isEmpty!16527 (tail!3812 s!9460)))))

(declare-fun b!2439372 () Bool)

(assert (=> b!2439372 (= e!1550068 (= (head!5539 s!9460) (c!389101 r!13927)))))

(declare-fun b!2439373 () Bool)

(declare-fun res!1035714 () Bool)

(assert (=> b!2439373 (=> (not res!1035714) (not e!1550068))))

(assert (=> b!2439373 (= res!1035714 (not call!149390))))

(declare-fun d!704435 () Bool)

(assert (=> d!704435 e!1550066))

(declare-fun c!389208 () Bool)

(assert (=> d!704435 (= c!389208 ((_ is EmptyExpr!7173) r!13927))))

(assert (=> d!704435 (= lt!878099 e!1550062)))

(declare-fun c!389207 () Bool)

(assert (=> d!704435 (= c!389207 (isEmpty!16527 s!9460))))

(assert (=> d!704435 (validRegex!2885 r!13927)))

(assert (=> d!704435 (= (matchR!3288 r!13927 s!9460) lt!878099)))

(declare-fun b!2439374 () Bool)

(declare-fun res!1035711 () Bool)

(declare-fun e!1550064 () Bool)

(assert (=> b!2439374 (=> res!1035711 e!1550064)))

(assert (=> b!2439374 (= res!1035711 e!1550068)))

(declare-fun res!1035716 () Bool)

(assert (=> b!2439374 (=> (not res!1035716) (not e!1550068))))

(assert (=> b!2439374 (= res!1035716 lt!878099)))

(declare-fun b!2439375 () Bool)

(declare-fun e!1550067 () Bool)

(assert (=> b!2439375 (= e!1550066 e!1550067)))

(declare-fun c!389206 () Bool)

(assert (=> b!2439375 (= c!389206 ((_ is EmptyLang!7173) r!13927))))

(declare-fun b!2439376 () Bool)

(assert (=> b!2439376 (= e!1550067 (not lt!878099))))

(declare-fun b!2439377 () Bool)

(declare-fun res!1035712 () Bool)

(assert (=> b!2439377 (=> res!1035712 e!1550064)))

(assert (=> b!2439377 (= res!1035712 (not ((_ is ElementMatch!7173) r!13927)))))

(assert (=> b!2439377 (= e!1550067 e!1550064)))

(declare-fun b!2439378 () Bool)

(declare-fun res!1035713 () Bool)

(assert (=> b!2439378 (=> res!1035713 e!1550063)))

(assert (=> b!2439378 (= res!1035713 (not (isEmpty!16527 (tail!3812 s!9460))))))

(declare-fun b!2439379 () Bool)

(assert (=> b!2439379 (= e!1550064 e!1550065)))

(declare-fun res!1035715 () Bool)

(assert (=> b!2439379 (=> (not res!1035715) (not e!1550065))))

(assert (=> b!2439379 (= res!1035715 (not lt!878099))))

(declare-fun bm!149385 () Bool)

(assert (=> bm!149385 (= call!149390 (isEmpty!16527 s!9460))))

(declare-fun b!2439380 () Bool)

(assert (=> b!2439380 (= e!1550062 (nullable!2196 r!13927))))

(assert (= (and d!704435 c!389207) b!2439380))

(assert (= (and d!704435 (not c!389207)) b!2439369))

(assert (= (and d!704435 c!389208) b!2439370))

(assert (= (and d!704435 (not c!389208)) b!2439375))

(assert (= (and b!2439375 c!389206) b!2439376))

(assert (= (and b!2439375 (not c!389206)) b!2439377))

(assert (= (and b!2439377 (not res!1035712)) b!2439374))

(assert (= (and b!2439374 res!1035716) b!2439373))

(assert (= (and b!2439373 res!1035714) b!2439371))

(assert (= (and b!2439371 res!1035717) b!2439372))

(assert (= (and b!2439374 (not res!1035711)) b!2439379))

(assert (= (and b!2439379 res!1035715) b!2439367))

(assert (= (and b!2439367 (not res!1035718)) b!2439378))

(assert (= (and b!2439378 (not res!1035713)) b!2439368))

(assert (= (or b!2439370 b!2439367 b!2439373) bm!149385))

(assert (=> b!2439378 m!2817827))

(assert (=> b!2439378 m!2817827))

(assert (=> b!2439378 m!2817829))

(assert (=> b!2439369 m!2817831))

(assert (=> b!2439369 m!2817831))

(declare-fun m!2817885 () Bool)

(assert (=> b!2439369 m!2817885))

(assert (=> b!2439369 m!2817827))

(assert (=> b!2439369 m!2817885))

(assert (=> b!2439369 m!2817827))

(declare-fun m!2817887 () Bool)

(assert (=> b!2439369 m!2817887))

(assert (=> b!2439371 m!2817827))

(assert (=> b!2439371 m!2817827))

(assert (=> b!2439371 m!2817829))

(declare-fun m!2817889 () Bool)

(assert (=> b!2439380 m!2817889))

(assert (=> bm!149385 m!2817839))

(assert (=> b!2439368 m!2817831))

(assert (=> b!2439372 m!2817831))

(assert (=> d!704435 m!2817839))

(declare-fun m!2817891 () Bool)

(assert (=> d!704435 m!2817891))

(assert (=> b!2438890 d!704435))

(declare-fun d!704437 () Bool)

(assert (=> d!704437 (= (matchR!3288 r!13927 s!9460) (matchRSpec!1020 r!13927 s!9460))))

(declare-fun lt!878102 () Unit!41729)

(declare-fun choose!14473 (Regex!7173 List!28582) Unit!41729)

(assert (=> d!704437 (= lt!878102 (choose!14473 r!13927 s!9460))))

(assert (=> d!704437 (validRegex!2885 r!13927)))

(assert (=> d!704437 (= (mainMatchTheorem!1020 r!13927 s!9460) lt!878102)))

(declare-fun bs!464767 () Bool)

(assert (= bs!464767 d!704437))

(assert (=> bs!464767 m!2817601))

(assert (=> bs!464767 m!2817599))

(declare-fun m!2817893 () Bool)

(assert (=> bs!464767 m!2817893))

(assert (=> bs!464767 m!2817891))

(assert (=> b!2438890 d!704437))

(declare-fun d!704439 () Bool)

(assert (=> d!704439 (= (isEmpty!16523 l!9164) ((_ is Nil!28485) l!9164))))

(assert (=> b!2438885 d!704439))

(declare-fun b!2439389 () Bool)

(declare-fun e!1550074 () List!28582)

(assert (=> b!2439389 (= e!1550074 (_2!16592 lt!878040))))

(declare-fun b!2439390 () Bool)

(assert (=> b!2439390 (= e!1550074 (Cons!28484 (h!33885 (_1!16592 lt!878040)) (++!7076 (t!208559 (_1!16592 lt!878040)) (_2!16592 lt!878040))))))

(declare-fun d!704441 () Bool)

(declare-fun e!1550073 () Bool)

(assert (=> d!704441 e!1550073))

(declare-fun res!1035723 () Bool)

(assert (=> d!704441 (=> (not res!1035723) (not e!1550073))))

(declare-fun lt!878105 () List!28582)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3922 (List!28582) (InoxSet C!14504))

(assert (=> d!704441 (= res!1035723 (= (content!3922 lt!878105) ((_ map or) (content!3922 (_1!16592 lt!878040)) (content!3922 (_2!16592 lt!878040)))))))

(assert (=> d!704441 (= lt!878105 e!1550074)))

(declare-fun c!389211 () Bool)

(assert (=> d!704441 (= c!389211 ((_ is Nil!28484) (_1!16592 lt!878040)))))

(assert (=> d!704441 (= (++!7076 (_1!16592 lt!878040) (_2!16592 lt!878040)) lt!878105)))

(declare-fun b!2439392 () Bool)

(assert (=> b!2439392 (= e!1550073 (or (not (= (_2!16592 lt!878040) Nil!28484)) (= lt!878105 (_1!16592 lt!878040))))))

(declare-fun b!2439391 () Bool)

(declare-fun res!1035724 () Bool)

(assert (=> b!2439391 (=> (not res!1035724) (not e!1550073))))

(declare-fun size!22260 (List!28582) Int)

(assert (=> b!2439391 (= res!1035724 (= (size!22260 lt!878105) (+ (size!22260 (_1!16592 lt!878040)) (size!22260 (_2!16592 lt!878040)))))))

(assert (= (and d!704441 c!389211) b!2439389))

(assert (= (and d!704441 (not c!389211)) b!2439390))

(assert (= (and d!704441 res!1035723) b!2439391))

(assert (= (and b!2439391 res!1035724) b!2439392))

(declare-fun m!2817895 () Bool)

(assert (=> b!2439390 m!2817895))

(declare-fun m!2817897 () Bool)

(assert (=> d!704441 m!2817897))

(declare-fun m!2817899 () Bool)

(assert (=> d!704441 m!2817899))

(declare-fun m!2817901 () Bool)

(assert (=> d!704441 m!2817901))

(declare-fun m!2817903 () Bool)

(assert (=> b!2439391 m!2817903))

(declare-fun m!2817905 () Bool)

(assert (=> b!2439391 m!2817905))

(declare-fun m!2817907 () Bool)

(assert (=> b!2439391 m!2817907))

(assert (=> b!2438884 d!704441))

(declare-fun bs!464768 () Bool)

(declare-fun d!704443 () Bool)

(assert (= bs!464768 (and d!704443 start!238694)))

(declare-fun lambda!92315 () Int)

(assert (=> bs!464768 (= lambda!92315 lambda!92275)))

(declare-fun bs!464769 () Bool)

(assert (= bs!464769 (and d!704443 d!704379)))

(assert (=> bs!464769 (= lambda!92315 lambda!92289)))

(declare-fun b!2439393 () Bool)

(declare-fun e!1550077 () Regex!7173)

(assert (=> b!2439393 (= e!1550077 (Concat!11809 (h!33886 l!9164) (generalisedConcat!274 (t!208560 l!9164))))))

(declare-fun b!2439394 () Bool)

(declare-fun e!1550080 () Bool)

(declare-fun lt!878106 () Regex!7173)

(assert (=> b!2439394 (= e!1550080 (isEmptyExpr!214 lt!878106))))

(declare-fun b!2439396 () Bool)

(declare-fun e!1550079 () Bool)

(assert (=> b!2439396 (= e!1550079 (isEmpty!16523 (t!208560 l!9164)))))

(declare-fun b!2439397 () Bool)

(declare-fun e!1550076 () Bool)

(assert (=> b!2439397 (= e!1550076 (= lt!878106 (head!5537 l!9164)))))

(declare-fun b!2439398 () Bool)

(assert (=> b!2439398 (= e!1550076 (isConcat!214 lt!878106))))

(declare-fun b!2439399 () Bool)

(declare-fun e!1550075 () Regex!7173)

(assert (=> b!2439399 (= e!1550075 e!1550077)))

(declare-fun c!389214 () Bool)

(assert (=> b!2439399 (= c!389214 ((_ is Cons!28485) l!9164))))

(declare-fun b!2439400 () Bool)

(assert (=> b!2439400 (= e!1550077 EmptyExpr!7173)))

(declare-fun b!2439401 () Bool)

(assert (=> b!2439401 (= e!1550080 e!1550076)))

(declare-fun c!389213 () Bool)

(assert (=> b!2439401 (= c!389213 (isEmpty!16523 (tail!3810 l!9164)))))

(declare-fun b!2439402 () Bool)

(assert (=> b!2439402 (= e!1550075 (h!33886 l!9164))))

(declare-fun b!2439395 () Bool)

(declare-fun e!1550078 () Bool)

(assert (=> b!2439395 (= e!1550078 e!1550080)))

(declare-fun c!389215 () Bool)

(assert (=> b!2439395 (= c!389215 (isEmpty!16523 l!9164))))

(assert (=> d!704443 e!1550078))

(declare-fun res!1035725 () Bool)

(assert (=> d!704443 (=> (not res!1035725) (not e!1550078))))

(assert (=> d!704443 (= res!1035725 (validRegex!2885 lt!878106))))

(assert (=> d!704443 (= lt!878106 e!1550075)))

(declare-fun c!389212 () Bool)

(assert (=> d!704443 (= c!389212 e!1550079)))

(declare-fun res!1035726 () Bool)

(assert (=> d!704443 (=> (not res!1035726) (not e!1550079))))

(assert (=> d!704443 (= res!1035726 ((_ is Cons!28485) l!9164))))

(assert (=> d!704443 (forall!5807 l!9164 lambda!92315)))

(assert (=> d!704443 (= (generalisedConcat!274 l!9164) lt!878106)))

(assert (= (and d!704443 res!1035726) b!2439396))

(assert (= (and d!704443 c!389212) b!2439402))

(assert (= (and d!704443 (not c!389212)) b!2439399))

(assert (= (and b!2439399 c!389214) b!2439393))

(assert (= (and b!2439399 (not c!389214)) b!2439400))

(assert (= (and d!704443 res!1035725) b!2439395))

(assert (= (and b!2439395 c!389215) b!2439394))

(assert (= (and b!2439395 (not c!389215)) b!2439401))

(assert (= (and b!2439401 c!389213) b!2439397))

(assert (= (and b!2439401 (not c!389213)) b!2439398))

(assert (=> b!2439397 m!2817631))

(assert (=> b!2439395 m!2817627))

(declare-fun m!2817909 () Bool)

(assert (=> d!704443 m!2817909))

(declare-fun m!2817911 () Bool)

(assert (=> d!704443 m!2817911))

(assert (=> b!2439401 m!2817597))

(assert (=> b!2439401 m!2817597))

(declare-fun m!2817913 () Bool)

(assert (=> b!2439401 m!2817913))

(declare-fun m!2817915 () Bool)

(assert (=> b!2439393 m!2817915))

(declare-fun m!2817917 () Bool)

(assert (=> b!2439398 m!2817917))

(declare-fun m!2817919 () Bool)

(assert (=> b!2439394 m!2817919))

(declare-fun m!2817921 () Bool)

(assert (=> b!2439396 m!2817921))

(assert (=> b!2438879 d!704443))

(declare-fun b!2439407 () Bool)

(declare-fun e!1550083 () Bool)

(declare-fun tp!774489 () Bool)

(assert (=> b!2439407 (= e!1550083 (and tp_is_empty!11759 tp!774489))))

(assert (=> b!2438888 (= tp!774432 e!1550083)))

(assert (= (and b!2438888 ((_ is Cons!28484) (t!208559 s!9460))) b!2439407))

(declare-fun e!1550086 () Bool)

(assert (=> b!2438882 (= tp!774433 e!1550086)))

(declare-fun b!2439418 () Bool)

(assert (=> b!2439418 (= e!1550086 tp_is_empty!11759)))

(declare-fun b!2439419 () Bool)

(declare-fun tp!774504 () Bool)

(declare-fun tp!774501 () Bool)

(assert (=> b!2439419 (= e!1550086 (and tp!774504 tp!774501))))

(declare-fun b!2439421 () Bool)

(declare-fun tp!774502 () Bool)

(declare-fun tp!774503 () Bool)

(assert (=> b!2439421 (= e!1550086 (and tp!774502 tp!774503))))

(declare-fun b!2439420 () Bool)

(declare-fun tp!774500 () Bool)

(assert (=> b!2439420 (= e!1550086 tp!774500)))

(assert (= (and b!2438882 ((_ is ElementMatch!7173) (reg!7502 r!13927))) b!2439418))

(assert (= (and b!2438882 ((_ is Concat!11809) (reg!7502 r!13927))) b!2439419))

(assert (= (and b!2438882 ((_ is Star!7173) (reg!7502 r!13927))) b!2439420))

(assert (= (and b!2438882 ((_ is Union!7173) (reg!7502 r!13927))) b!2439421))

(declare-fun e!1550087 () Bool)

(assert (=> b!2438877 (= tp!774435 e!1550087)))

(declare-fun b!2439422 () Bool)

(assert (=> b!2439422 (= e!1550087 tp_is_empty!11759)))

(declare-fun b!2439423 () Bool)

(declare-fun tp!774509 () Bool)

(declare-fun tp!774506 () Bool)

(assert (=> b!2439423 (= e!1550087 (and tp!774509 tp!774506))))

(declare-fun b!2439425 () Bool)

(declare-fun tp!774507 () Bool)

(declare-fun tp!774508 () Bool)

(assert (=> b!2439425 (= e!1550087 (and tp!774507 tp!774508))))

(declare-fun b!2439424 () Bool)

(declare-fun tp!774505 () Bool)

(assert (=> b!2439424 (= e!1550087 tp!774505)))

(assert (= (and b!2438877 ((_ is ElementMatch!7173) (regOne!14858 r!13927))) b!2439422))

(assert (= (and b!2438877 ((_ is Concat!11809) (regOne!14858 r!13927))) b!2439423))

(assert (= (and b!2438877 ((_ is Star!7173) (regOne!14858 r!13927))) b!2439424))

(assert (= (and b!2438877 ((_ is Union!7173) (regOne!14858 r!13927))) b!2439425))

(declare-fun e!1550088 () Bool)

(assert (=> b!2438877 (= tp!774437 e!1550088)))

(declare-fun b!2439426 () Bool)

(assert (=> b!2439426 (= e!1550088 tp_is_empty!11759)))

(declare-fun b!2439427 () Bool)

(declare-fun tp!774514 () Bool)

(declare-fun tp!774511 () Bool)

(assert (=> b!2439427 (= e!1550088 (and tp!774514 tp!774511))))

(declare-fun b!2439429 () Bool)

(declare-fun tp!774512 () Bool)

(declare-fun tp!774513 () Bool)

(assert (=> b!2439429 (= e!1550088 (and tp!774512 tp!774513))))

(declare-fun b!2439428 () Bool)

(declare-fun tp!774510 () Bool)

(assert (=> b!2439428 (= e!1550088 tp!774510)))

(assert (= (and b!2438877 ((_ is ElementMatch!7173) (regTwo!14858 r!13927))) b!2439426))

(assert (= (and b!2438877 ((_ is Concat!11809) (regTwo!14858 r!13927))) b!2439427))

(assert (= (and b!2438877 ((_ is Star!7173) (regTwo!14858 r!13927))) b!2439428))

(assert (= (and b!2438877 ((_ is Union!7173) (regTwo!14858 r!13927))) b!2439429))

(declare-fun e!1550089 () Bool)

(assert (=> b!2438881 (= tp!774436 e!1550089)))

(declare-fun b!2439430 () Bool)

(assert (=> b!2439430 (= e!1550089 tp_is_empty!11759)))

(declare-fun b!2439431 () Bool)

(declare-fun tp!774519 () Bool)

(declare-fun tp!774516 () Bool)

(assert (=> b!2439431 (= e!1550089 (and tp!774519 tp!774516))))

(declare-fun b!2439433 () Bool)

(declare-fun tp!774517 () Bool)

(declare-fun tp!774518 () Bool)

(assert (=> b!2439433 (= e!1550089 (and tp!774517 tp!774518))))

(declare-fun b!2439432 () Bool)

(declare-fun tp!774515 () Bool)

(assert (=> b!2439432 (= e!1550089 tp!774515)))

(assert (= (and b!2438881 ((_ is ElementMatch!7173) (regOne!14859 r!13927))) b!2439430))

(assert (= (and b!2438881 ((_ is Concat!11809) (regOne!14859 r!13927))) b!2439431))

(assert (= (and b!2438881 ((_ is Star!7173) (regOne!14859 r!13927))) b!2439432))

(assert (= (and b!2438881 ((_ is Union!7173) (regOne!14859 r!13927))) b!2439433))

(declare-fun e!1550090 () Bool)

(assert (=> b!2438881 (= tp!774430 e!1550090)))

(declare-fun b!2439434 () Bool)

(assert (=> b!2439434 (= e!1550090 tp_is_empty!11759)))

(declare-fun b!2439435 () Bool)

(declare-fun tp!774524 () Bool)

(declare-fun tp!774521 () Bool)

(assert (=> b!2439435 (= e!1550090 (and tp!774524 tp!774521))))

(declare-fun b!2439437 () Bool)

(declare-fun tp!774522 () Bool)

(declare-fun tp!774523 () Bool)

(assert (=> b!2439437 (= e!1550090 (and tp!774522 tp!774523))))

(declare-fun b!2439436 () Bool)

(declare-fun tp!774520 () Bool)

(assert (=> b!2439436 (= e!1550090 tp!774520)))

(assert (= (and b!2438881 ((_ is ElementMatch!7173) (regTwo!14859 r!13927))) b!2439434))

(assert (= (and b!2438881 ((_ is Concat!11809) (regTwo!14859 r!13927))) b!2439435))

(assert (= (and b!2438881 ((_ is Star!7173) (regTwo!14859 r!13927))) b!2439436))

(assert (= (and b!2438881 ((_ is Union!7173) (regTwo!14859 r!13927))) b!2439437))

(declare-fun e!1550091 () Bool)

(assert (=> b!2438874 (= tp!774434 e!1550091)))

(declare-fun b!2439438 () Bool)

(assert (=> b!2439438 (= e!1550091 tp_is_empty!11759)))

(declare-fun b!2439439 () Bool)

(declare-fun tp!774529 () Bool)

(declare-fun tp!774526 () Bool)

(assert (=> b!2439439 (= e!1550091 (and tp!774529 tp!774526))))

(declare-fun b!2439441 () Bool)

(declare-fun tp!774527 () Bool)

(declare-fun tp!774528 () Bool)

(assert (=> b!2439441 (= e!1550091 (and tp!774527 tp!774528))))

(declare-fun b!2439440 () Bool)

(declare-fun tp!774525 () Bool)

(assert (=> b!2439440 (= e!1550091 tp!774525)))

(assert (= (and b!2438874 ((_ is ElementMatch!7173) (h!33886 l!9164))) b!2439438))

(assert (= (and b!2438874 ((_ is Concat!11809) (h!33886 l!9164))) b!2439439))

(assert (= (and b!2438874 ((_ is Star!7173) (h!33886 l!9164))) b!2439440))

(assert (= (and b!2438874 ((_ is Union!7173) (h!33886 l!9164))) b!2439441))

(declare-fun b!2439446 () Bool)

(declare-fun e!1550094 () Bool)

(declare-fun tp!774534 () Bool)

(declare-fun tp!774535 () Bool)

(assert (=> b!2439446 (= e!1550094 (and tp!774534 tp!774535))))

(assert (=> b!2438874 (= tp!774431 e!1550094)))

(assert (= (and b!2438874 ((_ is Cons!28485) (t!208560 l!9164))) b!2439446))

(declare-fun b_lambda!74917 () Bool)

(assert (= b_lambda!74915 (or start!238694 b_lambda!74917)))

(declare-fun bs!464770 () Bool)

(declare-fun d!704445 () Bool)

(assert (= bs!464770 (and d!704445 start!238694)))

(assert (=> bs!464770 (= (dynLambda!12254 lambda!92275 (h!33886 l!9164)) (validRegex!2885 (h!33886 l!9164)))))

(declare-fun m!2817923 () Bool)

(assert (=> bs!464770 m!2817923))

(assert (=> b!2439301 d!704445))

(check-sat (not b!2439441) (not b!2439030) (not b!2439401) (not d!704379) (not b!2439179) (not b!2438993) (not b!2439391) (not b!2439321) (not b!2439436) (not bs!464770) (not b!2439182) (not b!2439380) (not d!704385) (not d!704425) (not b_lambda!74917) (not d!704443) (not b!2439440) (not b!2439317) (not b!2439395) (not bm!149383) (not b!2439393) (not b!2439432) (not b!2439034) (not b!2439425) (not b!2439431) (not b!2439029) (not b!2439407) (not b!2439428) (not b!2439378) (not bm!149378) (not b!2439433) (not b!2439316) (not b!2439285) (not b!2439372) (not b!2439287) (not d!704437) (not b!2439435) (not b!2439446) (not d!704429) (not b!2439320) (not b!2439177) (not b!2439397) (not b!2439180) (not b!2439423) (not b!2439424) (not b!2439394) tp_is_empty!11759 (not b!2439357) (not b!2439294) (not b!2439037) (not bm!149385) (not b!2439429) (not b!2439439) (not bm!149366) (not b!2439437) (not b!2439369) (not bm!149384) (not b!2439398) (not b!2439033) (not b!2439288) (not d!704409) (not d!704441) (not b!2439031) (not d!704435) (not b!2439178) (not b!2439396) (not b!2439315) (not b!2439284) (not b!2439421) (not b!2439419) (not b!2439183) (not b!2439390) (not d!704427) (not b!2439364) (not d!704421) (not d!704431) (not b!2439420) (not b!2439318) (not d!704423) (not b!2439371) (not d!704383) (not b!2439302) (not b!2439296) (not b!2439368) (not bm!149368) (not b!2439427) (not b!2439032))
(check-sat)
