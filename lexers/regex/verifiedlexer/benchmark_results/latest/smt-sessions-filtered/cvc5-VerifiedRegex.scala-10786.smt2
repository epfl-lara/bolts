; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!552888 () Bool)

(assert start!552888)

(declare-fun b!5228014 () Bool)

(assert (=> b!5228014 true))

(assert (=> b!5228014 true))

(declare-fun lambda!262533 () Int)

(declare-fun lambda!262532 () Int)

(assert (=> b!5228014 (not (= lambda!262533 lambda!262532))))

(assert (=> b!5228014 true))

(assert (=> b!5228014 true))

(declare-fun b!5228001 () Bool)

(assert (=> b!5228001 true))

(declare-fun b!5227980 () Bool)

(declare-fun e!3253651 () Bool)

(declare-fun tp!1465274 () Bool)

(declare-fun tp!1465273 () Bool)

(assert (=> b!5227980 (= e!3253651 (and tp!1465274 tp!1465273))))

(declare-fun b!5227981 () Bool)

(declare-fun e!3253655 () Bool)

(declare-fun e!3253646 () Bool)

(assert (=> b!5227981 (= e!3253655 e!3253646)))

(declare-fun res!2219375 () Bool)

(assert (=> b!5227981 (=> res!2219375 e!3253646)))

(declare-datatypes ((C!29906 0))(
  ( (C!29907 (val!24655 Int)) )
))
(declare-datatypes ((List!60753 0))(
  ( (Nil!60629) (Cons!60629 (h!67077 C!29906) (t!373930 List!60753)) )
))
(declare-fun s!2326 () List!60753)

(declare-datatypes ((Regex!14818 0))(
  ( (ElementMatch!14818 (c!902692 C!29906)) (Concat!23663 (regOne!30148 Regex!14818) (regTwo!30148 Regex!14818)) (EmptyExpr!14818) (Star!14818 (reg!15147 Regex!14818)) (EmptyLang!14818) (Union!14818 (regOne!30149 Regex!14818) (regTwo!30149 Regex!14818)) )
))
(declare-datatypes ((List!60754 0))(
  ( (Nil!60630) (Cons!60630 (h!67078 Regex!14818) (t!373931 List!60754)) )
))
(declare-datatypes ((Context!8404 0))(
  ( (Context!8405 (exprs!4702 List!60754)) )
))
(declare-fun z!1189 () (Set Context!8404))

(declare-fun e!3253649 () Bool)

(declare-fun matchZipper!1062 ((Set Context!8404) List!60753) Bool)

(assert (=> b!5227981 (= res!2219375 (not (= (matchZipper!1062 z!1189 s!2326) e!3253649)))))

(declare-fun res!2219361 () Bool)

(assert (=> b!5227981 (=> res!2219361 e!3253649)))

(declare-fun lt!2144608 () (Set Context!8404))

(assert (=> b!5227981 (= res!2219361 (matchZipper!1062 lt!2144608 s!2326))))

(declare-datatypes ((Unit!152558 0))(
  ( (Unit!152559) )
))
(declare-fun lt!2144600 () Unit!152558)

(declare-fun e!3253648 () Unit!152558)

(assert (=> b!5227981 (= lt!2144600 e!3253648)))

(declare-fun c!902690 () Bool)

(declare-fun r!7292 () Regex!14818)

(declare-fun nullable!4987 (Regex!14818) Bool)

(assert (=> b!5227981 (= c!902690 (nullable!4987 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun lambda!262534 () Int)

(declare-fun lt!2144611 () (Set Context!8404))

(declare-fun lt!2144602 () Context!8404)

(declare-fun flatMap!545 ((Set Context!8404) Int) (Set Context!8404))

(declare-fun derivationStepZipperUp!190 (Context!8404 C!29906) (Set Context!8404))

(assert (=> b!5227981 (= (flatMap!545 lt!2144611 lambda!262534) (derivationStepZipperUp!190 lt!2144602 (h!67077 s!2326)))))

(declare-fun lt!2144597 () Unit!152558)

(declare-fun lemmaFlatMapOnSingletonSet!77 ((Set Context!8404) Context!8404 Int) Unit!152558)

(assert (=> b!5227981 (= lt!2144597 (lemmaFlatMapOnSingletonSet!77 lt!2144611 lt!2144602 lambda!262534))))

(declare-fun lt!2144584 () (Set Context!8404))

(assert (=> b!5227981 (= lt!2144584 (derivationStepZipperUp!190 lt!2144602 (h!67077 s!2326)))))

(declare-fun lt!2144610 () Unit!152558)

(declare-fun e!3253657 () Unit!152558)

(assert (=> b!5227981 (= lt!2144610 e!3253657)))

(declare-fun c!902689 () Bool)

(assert (=> b!5227981 (= c!902689 (nullable!4987 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun lt!2144598 () Context!8404)

(assert (=> b!5227981 (= (flatMap!545 lt!2144608 lambda!262534) (derivationStepZipperUp!190 lt!2144598 (h!67077 s!2326)))))

(declare-fun lt!2144587 () Unit!152558)

(assert (=> b!5227981 (= lt!2144587 (lemmaFlatMapOnSingletonSet!77 lt!2144608 lt!2144598 lambda!262534))))

(declare-fun lt!2144585 () (Set Context!8404))

(assert (=> b!5227981 (= lt!2144585 (derivationStepZipperUp!190 lt!2144598 (h!67077 s!2326)))))

(assert (=> b!5227981 (= lt!2144611 (set.insert lt!2144602 (as set.empty (Set Context!8404))))))

(declare-datatypes ((List!60755 0))(
  ( (Nil!60631) (Cons!60631 (h!67079 Context!8404) (t!373932 List!60755)) )
))
(declare-fun zl!343 () List!60755)

(assert (=> b!5227981 (= lt!2144602 (Context!8405 (Cons!60630 (regTwo!30149 (regOne!30148 r!7292)) (t!373931 (exprs!4702 (h!67079 zl!343))))))))

(assert (=> b!5227981 (= lt!2144608 (set.insert lt!2144598 (as set.empty (Set Context!8404))))))

(assert (=> b!5227981 (= lt!2144598 (Context!8405 (Cons!60630 (regOne!30149 (regOne!30148 r!7292)) (t!373931 (exprs!4702 (h!67079 zl!343))))))))

(declare-fun b!5227982 () Bool)

(declare-fun e!3253642 () Unit!152558)

(declare-fun Unit!152560 () Unit!152558)

(assert (=> b!5227982 (= e!3253642 Unit!152560)))

(declare-fun b!5227983 () Bool)

(declare-fun Unit!152561 () Unit!152558)

(assert (=> b!5227983 (= e!3253657 Unit!152561)))

(declare-fun lt!2144607 () (Set Context!8404))

(declare-fun lt!2144609 () (Set Context!8404))

(declare-fun lt!2144592 () Unit!152558)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!55 ((Set Context!8404) (Set Context!8404) List!60753) Unit!152558)

(assert (=> b!5227983 (= lt!2144592 (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144607 lt!2144609 (t!373930 s!2326)))))

(declare-fun res!2219374 () Bool)

(declare-fun lt!2144591 () Bool)

(assert (=> b!5227983 (= res!2219374 lt!2144591)))

(declare-fun e!3253638 () Bool)

(assert (=> b!5227983 (=> res!2219374 e!3253638)))

(assert (=> b!5227983 (= (matchZipper!1062 (set.union lt!2144607 lt!2144609) (t!373930 s!2326)) e!3253638)))

(declare-fun b!5227984 () Bool)

(declare-fun e!3253658 () Bool)

(declare-fun tp!1465271 () Bool)

(assert (=> b!5227984 (= e!3253658 tp!1465271)))

(declare-fun b!5227985 () Bool)

(declare-fun e!3253653 () Bool)

(declare-fun e!3253656 () Bool)

(assert (=> b!5227985 (= e!3253653 e!3253656)))

(declare-fun res!2219364 () Bool)

(assert (=> b!5227985 (=> (not res!2219364) (not e!3253656))))

(declare-fun lt!2144595 () Regex!14818)

(assert (=> b!5227985 (= res!2219364 (= r!7292 lt!2144595))))

(declare-fun unfocusZipper!560 (List!60755) Regex!14818)

(assert (=> b!5227985 (= lt!2144595 (unfocusZipper!560 zl!343))))

(declare-fun b!5227986 () Bool)

(declare-fun e!3253644 () Bool)

(assert (=> b!5227986 (= e!3253644 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(declare-fun b!5227987 () Bool)

(declare-fun e!3253647 () Bool)

(declare-fun lt!2144603 () (Set Context!8404))

(assert (=> b!5227987 (= e!3253647 (matchZipper!1062 lt!2144603 (t!373930 s!2326)))))

(declare-fun b!5227988 () Bool)

(declare-fun lambda!262535 () Int)

(declare-fun forall!14250 (List!60754 Int) Bool)

(assert (=> b!5227988 (= e!3253646 (forall!14250 (exprs!4702 (h!67079 zl!343)) lambda!262535))))

(declare-fun b!5227989 () Bool)

(declare-fun tp!1465275 () Bool)

(declare-fun tp!1465268 () Bool)

(assert (=> b!5227989 (= e!3253651 (and tp!1465275 tp!1465268))))

(declare-fun b!5227990 () Bool)

(declare-fun res!2219356 () Bool)

(declare-fun e!3253643 () Bool)

(assert (=> b!5227990 (=> res!2219356 e!3253643)))

(assert (=> b!5227990 (= res!2219356 (or (is-EmptyExpr!14818 r!7292) (is-EmptyLang!14818 r!7292) (is-ElementMatch!14818 r!7292) (is-Union!14818 r!7292) (not (is-Concat!23663 r!7292))))))

(declare-fun tp!1465267 () Bool)

(declare-fun e!3253639 () Bool)

(declare-fun e!3253645 () Bool)

(declare-fun b!5227991 () Bool)

(declare-fun inv!80293 (Context!8404) Bool)

(assert (=> b!5227991 (= e!3253639 (and (inv!80293 (h!67079 zl!343)) e!3253645 tp!1465267))))

(declare-fun b!5227992 () Bool)

(declare-fun res!2219368 () Bool)

(assert (=> b!5227992 (=> res!2219368 e!3253643)))

(declare-fun generalisedConcat!487 (List!60754) Regex!14818)

(assert (=> b!5227992 (= res!2219368 (not (= r!7292 (generalisedConcat!487 (exprs!4702 (h!67079 zl!343))))))))

(declare-fun b!5227993 () Bool)

(declare-fun e!3253654 () Bool)

(assert (=> b!5227993 (= e!3253654 e!3253655)))

(declare-fun res!2219376 () Bool)

(assert (=> b!5227993 (=> res!2219376 e!3253655)))

(declare-fun e!3253641 () Bool)

(assert (=> b!5227993 (= res!2219376 e!3253641)))

(declare-fun res!2219357 () Bool)

(assert (=> b!5227993 (=> (not res!2219357) (not e!3253641))))

(declare-fun lt!2144588 () (Set Context!8404))

(assert (=> b!5227993 (= res!2219357 (not (= (matchZipper!1062 lt!2144588 (t!373930 s!2326)) lt!2144591)))))

(declare-fun lt!2144605 () (Set Context!8404))

(assert (=> b!5227993 (= (matchZipper!1062 lt!2144605 (t!373930 s!2326)) e!3253647)))

(declare-fun res!2219377 () Bool)

(assert (=> b!5227993 (=> res!2219377 e!3253647)))

(assert (=> b!5227993 (= res!2219377 lt!2144591)))

(assert (=> b!5227993 (= lt!2144591 (matchZipper!1062 lt!2144607 (t!373930 s!2326)))))

(declare-fun lt!2144589 () Unit!152558)

(assert (=> b!5227993 (= lt!2144589 (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144607 lt!2144603 (t!373930 s!2326)))))

(declare-fun b!5227994 () Bool)

(declare-fun tp_is_empty!38889 () Bool)

(assert (=> b!5227994 (= e!3253651 tp_is_empty!38889)))

(declare-fun b!5227995 () Bool)

(declare-fun Unit!152562 () Unit!152558)

(assert (=> b!5227995 (= e!3253642 Unit!152562)))

(declare-fun lt!2144590 () Unit!152558)

(assert (=> b!5227995 (= lt!2144590 (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144588 lt!2144609 (t!373930 s!2326)))))

(declare-fun res!2219362 () Bool)

(assert (=> b!5227995 (= res!2219362 (matchZipper!1062 lt!2144588 (t!373930 s!2326)))))

(assert (=> b!5227995 (=> res!2219362 e!3253644)))

(assert (=> b!5227995 (= (matchZipper!1062 (set.union lt!2144588 lt!2144609) (t!373930 s!2326)) e!3253644)))

(declare-fun b!5227996 () Bool)

(declare-fun res!2219372 () Bool)

(assert (=> b!5227996 (=> res!2219372 e!3253643)))

(assert (=> b!5227996 (= res!2219372 (not (is-Cons!60630 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5227997 () Bool)

(declare-fun Unit!152563 () Unit!152558)

(assert (=> b!5227997 (= e!3253648 Unit!152563)))

(declare-fun b!5227998 () Bool)

(declare-fun e!3253650 () Bool)

(assert (=> b!5227998 (= e!3253650 e!3253654)))

(declare-fun res!2219371 () Bool)

(assert (=> b!5227998 (=> res!2219371 e!3253654)))

(assert (=> b!5227998 (= res!2219371 (not (= lt!2144588 lt!2144605)))))

(assert (=> b!5227998 (= lt!2144605 (set.union lt!2144607 lt!2144603))))

(declare-fun lt!2144612 () Context!8404)

(declare-fun derivationStepZipperDown!266 (Regex!14818 Context!8404 C!29906) (Set Context!8404))

(assert (=> b!5227998 (= lt!2144603 (derivationStepZipperDown!266 (regTwo!30149 (regOne!30148 r!7292)) lt!2144612 (h!67077 s!2326)))))

(assert (=> b!5227998 (= lt!2144607 (derivationStepZipperDown!266 (regOne!30149 (regOne!30148 r!7292)) lt!2144612 (h!67077 s!2326)))))

(declare-fun b!5227999 () Bool)

(declare-fun res!2219366 () Bool)

(declare-fun e!3253640 () Bool)

(assert (=> b!5227999 (=> res!2219366 e!3253640)))

(declare-fun isEmpty!32555 (List!60754) Bool)

(assert (=> b!5227999 (= res!2219366 (isEmpty!32555 (t!373931 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228000 () Bool)

(declare-fun Unit!152564 () Unit!152558)

(assert (=> b!5228000 (= e!3253648 Unit!152564)))

(declare-fun lt!2144583 () Unit!152558)

(assert (=> b!5228000 (= lt!2144583 (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144603 lt!2144609 (t!373930 s!2326)))))

(declare-fun res!2219359 () Bool)

(assert (=> b!5228000 (= res!2219359 (matchZipper!1062 lt!2144603 (t!373930 s!2326)))))

(declare-fun e!3253637 () Bool)

(assert (=> b!5228000 (=> res!2219359 e!3253637)))

(assert (=> b!5228000 (= (matchZipper!1062 (set.union lt!2144603 lt!2144609) (t!373930 s!2326)) e!3253637)))

(assert (=> b!5228001 (= e!3253640 e!3253650)))

(declare-fun res!2219360 () Bool)

(assert (=> b!5228001 (=> res!2219360 e!3253650)))

(assert (=> b!5228001 (= res!2219360 (or (and (is-ElementMatch!14818 (regOne!30148 r!7292)) (= (c!902692 (regOne!30148 r!7292)) (h!67077 s!2326))) (not (is-Union!14818 (regOne!30148 r!7292)))))))

(declare-fun lt!2144586 () Unit!152558)

(assert (=> b!5228001 (= lt!2144586 e!3253642)))

(declare-fun c!902691 () Bool)

(assert (=> b!5228001 (= c!902691 (nullable!4987 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(assert (=> b!5228001 (= (flatMap!545 z!1189 lambda!262534) (derivationStepZipperUp!190 (h!67079 zl!343) (h!67077 s!2326)))))

(declare-fun lt!2144596 () Unit!152558)

(assert (=> b!5228001 (= lt!2144596 (lemmaFlatMapOnSingletonSet!77 z!1189 (h!67079 zl!343) lambda!262534))))

(assert (=> b!5228001 (= lt!2144609 (derivationStepZipperUp!190 lt!2144612 (h!67077 s!2326)))))

(assert (=> b!5228001 (= lt!2144588 (derivationStepZipperDown!266 (h!67078 (exprs!4702 (h!67079 zl!343))) lt!2144612 (h!67077 s!2326)))))

(assert (=> b!5228001 (= lt!2144612 (Context!8405 (t!373931 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun lt!2144604 () (Set Context!8404))

(assert (=> b!5228001 (= lt!2144604 (derivationStepZipperUp!190 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343))))) (h!67077 s!2326)))))

(declare-fun b!5228002 () Bool)

(assert (=> b!5228002 (= e!3253649 (matchZipper!1062 lt!2144611 s!2326))))

(declare-fun b!5228003 () Bool)

(declare-fun res!2219358 () Bool)

(assert (=> b!5228003 (=> (not res!2219358) (not e!3253653))))

(declare-fun toList!8602 ((Set Context!8404)) List!60755)

(assert (=> b!5228003 (= res!2219358 (= (toList!8602 z!1189) zl!343))))

(declare-fun b!5228004 () Bool)

(declare-fun Unit!152565 () Unit!152558)

(assert (=> b!5228004 (= e!3253657 Unit!152565)))

(declare-fun b!5228005 () Bool)

(declare-fun res!2219373 () Bool)

(assert (=> b!5228005 (=> res!2219373 e!3253643)))

(declare-fun isEmpty!32556 (List!60755) Bool)

(assert (=> b!5228005 (= res!2219373 (not (isEmpty!32556 (t!373932 zl!343))))))

(declare-fun setRes!33284 () Bool)

(declare-fun setElem!33284 () Context!8404)

(declare-fun tp!1465272 () Bool)

(declare-fun setNonEmpty!33284 () Bool)

(assert (=> setNonEmpty!33284 (= setRes!33284 (and tp!1465272 (inv!80293 setElem!33284) e!3253658))))

(declare-fun setRest!33284 () (Set Context!8404))

(assert (=> setNonEmpty!33284 (= z!1189 (set.union (set.insert setElem!33284 (as set.empty (Set Context!8404))) setRest!33284))))

(declare-fun b!5228006 () Bool)

(assert (=> b!5228006 (= e!3253641 (not (matchZipper!1062 lt!2144603 (t!373930 s!2326))))))

(declare-fun b!5228007 () Bool)

(declare-fun e!3253652 () Bool)

(declare-fun tp!1465270 () Bool)

(assert (=> b!5228007 (= e!3253652 (and tp_is_empty!38889 tp!1465270))))

(declare-fun b!5228008 () Bool)

(declare-fun tp!1465269 () Bool)

(assert (=> b!5228008 (= e!3253651 tp!1465269)))

(declare-fun b!5228009 () Bool)

(declare-fun res!2219369 () Bool)

(assert (=> b!5228009 (=> res!2219369 e!3253646)))

(assert (=> b!5228009 (= res!2219369 (not (= lt!2144595 r!7292)))))

(declare-fun b!5228010 () Bool)

(assert (=> b!5228010 (= e!3253637 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(declare-fun b!5228011 () Bool)

(assert (=> b!5228011 (= e!3253638 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(declare-fun setIsEmpty!33284 () Bool)

(assert (=> setIsEmpty!33284 setRes!33284))

(declare-fun b!5228012 () Bool)

(declare-fun tp!1465266 () Bool)

(assert (=> b!5228012 (= e!3253645 tp!1465266)))

(declare-fun res!2219367 () Bool)

(assert (=> start!552888 (=> (not res!2219367) (not e!3253653))))

(declare-fun validRegex!6554 (Regex!14818) Bool)

(assert (=> start!552888 (= res!2219367 (validRegex!6554 r!7292))))

(assert (=> start!552888 e!3253653))

(assert (=> start!552888 e!3253651))

(declare-fun condSetEmpty!33284 () Bool)

(assert (=> start!552888 (= condSetEmpty!33284 (= z!1189 (as set.empty (Set Context!8404))))))

(assert (=> start!552888 setRes!33284))

(assert (=> start!552888 e!3253639))

(assert (=> start!552888 e!3253652))

(declare-fun b!5228013 () Bool)

(assert (=> b!5228013 (= e!3253656 (not e!3253643))))

(declare-fun res!2219363 () Bool)

(assert (=> b!5228013 (=> res!2219363 e!3253643)))

(assert (=> b!5228013 (= res!2219363 (not (is-Cons!60631 zl!343)))))

(declare-fun lt!2144599 () Bool)

(declare-fun matchRSpec!1921 (Regex!14818 List!60753) Bool)

(assert (=> b!5228013 (= lt!2144599 (matchRSpec!1921 r!7292 s!2326))))

(declare-fun matchR!7003 (Regex!14818 List!60753) Bool)

(assert (=> b!5228013 (= lt!2144599 (matchR!7003 r!7292 s!2326))))

(declare-fun lt!2144594 () Unit!152558)

(declare-fun mainMatchTheorem!1921 (Regex!14818 List!60753) Unit!152558)

(assert (=> b!5228013 (= lt!2144594 (mainMatchTheorem!1921 r!7292 s!2326))))

(assert (=> b!5228014 (= e!3253643 e!3253640)))

(declare-fun res!2219365 () Bool)

(assert (=> b!5228014 (=> res!2219365 e!3253640)))

(declare-fun lt!2144606 () Bool)

(assert (=> b!5228014 (= res!2219365 (or (not (= lt!2144599 lt!2144606)) (is-Nil!60629 s!2326)))))

(declare-fun Exists!1999 (Int) Bool)

(assert (=> b!5228014 (= (Exists!1999 lambda!262532) (Exists!1999 lambda!262533))))

(declare-fun lt!2144593 () Unit!152558)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!653 (Regex!14818 Regex!14818 List!60753) Unit!152558)

(assert (=> b!5228014 (= lt!2144593 (lemmaExistCutMatchRandMatchRSpecEquivalent!653 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326))))

(assert (=> b!5228014 (= lt!2144606 (Exists!1999 lambda!262532))))

(declare-datatypes ((tuple2!64034 0))(
  ( (tuple2!64035 (_1!35320 List!60753) (_2!35320 List!60753)) )
))
(declare-datatypes ((Option!14929 0))(
  ( (None!14928) (Some!14928 (v!50957 tuple2!64034)) )
))
(declare-fun isDefined!11632 (Option!14929) Bool)

(declare-fun findConcatSeparation!1343 (Regex!14818 Regex!14818 List!60753 List!60753 List!60753) Option!14929)

(assert (=> b!5228014 (= lt!2144606 (isDefined!11632 (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) Nil!60629 s!2326 s!2326)))))

(declare-fun lt!2144601 () Unit!152558)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1107 (Regex!14818 Regex!14818 List!60753) Unit!152558)

(assert (=> b!5228014 (= lt!2144601 (lemmaFindConcatSeparationEquivalentToExists!1107 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326))))

(declare-fun b!5228015 () Bool)

(declare-fun res!2219370 () Bool)

(assert (=> b!5228015 (=> res!2219370 e!3253643)))

(declare-fun generalisedUnion!747 (List!60754) Regex!14818)

(declare-fun unfocusZipperList!260 (List!60755) List!60754)

(assert (=> b!5228015 (= res!2219370 (not (= r!7292 (generalisedUnion!747 (unfocusZipperList!260 zl!343)))))))

(assert (= (and start!552888 res!2219367) b!5228003))

(assert (= (and b!5228003 res!2219358) b!5227985))

(assert (= (and b!5227985 res!2219364) b!5228013))

(assert (= (and b!5228013 (not res!2219363)) b!5228005))

(assert (= (and b!5228005 (not res!2219373)) b!5227992))

(assert (= (and b!5227992 (not res!2219368)) b!5227996))

(assert (= (and b!5227996 (not res!2219372)) b!5228015))

(assert (= (and b!5228015 (not res!2219370)) b!5227990))

(assert (= (and b!5227990 (not res!2219356)) b!5228014))

(assert (= (and b!5228014 (not res!2219365)) b!5227999))

(assert (= (and b!5227999 (not res!2219366)) b!5228001))

(assert (= (and b!5228001 c!902691) b!5227995))

(assert (= (and b!5228001 (not c!902691)) b!5227982))

(assert (= (and b!5227995 (not res!2219362)) b!5227986))

(assert (= (and b!5228001 (not res!2219360)) b!5227998))

(assert (= (and b!5227998 (not res!2219371)) b!5227993))

(assert (= (and b!5227993 (not res!2219377)) b!5227987))

(assert (= (and b!5227993 res!2219357) b!5228006))

(assert (= (and b!5227993 (not res!2219376)) b!5227981))

(assert (= (and b!5227981 c!902689) b!5227983))

(assert (= (and b!5227981 (not c!902689)) b!5228004))

(assert (= (and b!5227983 (not res!2219374)) b!5228011))

(assert (= (and b!5227981 c!902690) b!5228000))

(assert (= (and b!5227981 (not c!902690)) b!5227997))

(assert (= (and b!5228000 (not res!2219359)) b!5228010))

(assert (= (and b!5227981 (not res!2219361)) b!5228002))

(assert (= (and b!5227981 (not res!2219375)) b!5228009))

(assert (= (and b!5228009 (not res!2219369)) b!5227988))

(assert (= (and start!552888 (is-ElementMatch!14818 r!7292)) b!5227994))

(assert (= (and start!552888 (is-Concat!23663 r!7292)) b!5227980))

(assert (= (and start!552888 (is-Star!14818 r!7292)) b!5228008))

(assert (= (and start!552888 (is-Union!14818 r!7292)) b!5227989))

(assert (= (and start!552888 condSetEmpty!33284) setIsEmpty!33284))

(assert (= (and start!552888 (not condSetEmpty!33284)) setNonEmpty!33284))

(assert (= setNonEmpty!33284 b!5227984))

(assert (= b!5227991 b!5228012))

(assert (= (and start!552888 (is-Cons!60631 zl!343)) b!5227991))

(assert (= (and start!552888 (is-Cons!60629 s!2326)) b!5228007))

(declare-fun m!6274276 () Bool)

(assert (=> b!5227986 m!6274276))

(declare-fun m!6274278 () Bool)

(assert (=> b!5227988 m!6274278))

(declare-fun m!6274280 () Bool)

(assert (=> b!5227998 m!6274280))

(declare-fun m!6274282 () Bool)

(assert (=> b!5227998 m!6274282))

(declare-fun m!6274284 () Bool)

(assert (=> b!5228013 m!6274284))

(declare-fun m!6274286 () Bool)

(assert (=> b!5228013 m!6274286))

(declare-fun m!6274288 () Bool)

(assert (=> b!5228013 m!6274288))

(declare-fun m!6274290 () Bool)

(assert (=> b!5228000 m!6274290))

(declare-fun m!6274292 () Bool)

(assert (=> b!5228000 m!6274292))

(declare-fun m!6274294 () Bool)

(assert (=> b!5228000 m!6274294))

(assert (=> b!5228006 m!6274292))

(declare-fun m!6274296 () Bool)

(assert (=> b!5228015 m!6274296))

(assert (=> b!5228015 m!6274296))

(declare-fun m!6274298 () Bool)

(assert (=> b!5228015 m!6274298))

(declare-fun m!6274300 () Bool)

(assert (=> b!5228001 m!6274300))

(declare-fun m!6274302 () Bool)

(assert (=> b!5228001 m!6274302))

(declare-fun m!6274304 () Bool)

(assert (=> b!5228001 m!6274304))

(declare-fun m!6274306 () Bool)

(assert (=> b!5228001 m!6274306))

(declare-fun m!6274308 () Bool)

(assert (=> b!5228001 m!6274308))

(declare-fun m!6274310 () Bool)

(assert (=> b!5228001 m!6274310))

(declare-fun m!6274312 () Bool)

(assert (=> b!5228001 m!6274312))

(declare-fun m!6274314 () Bool)

(assert (=> start!552888 m!6274314))

(declare-fun m!6274316 () Bool)

(assert (=> b!5227991 m!6274316))

(declare-fun m!6274318 () Bool)

(assert (=> b!5227981 m!6274318))

(declare-fun m!6274320 () Bool)

(assert (=> b!5227981 m!6274320))

(declare-fun m!6274322 () Bool)

(assert (=> b!5227981 m!6274322))

(declare-fun m!6274324 () Bool)

(assert (=> b!5227981 m!6274324))

(declare-fun m!6274326 () Bool)

(assert (=> b!5227981 m!6274326))

(declare-fun m!6274328 () Bool)

(assert (=> b!5227981 m!6274328))

(declare-fun m!6274330 () Bool)

(assert (=> b!5227981 m!6274330))

(declare-fun m!6274332 () Bool)

(assert (=> b!5227981 m!6274332))

(declare-fun m!6274334 () Bool)

(assert (=> b!5227981 m!6274334))

(declare-fun m!6274336 () Bool)

(assert (=> b!5227981 m!6274336))

(declare-fun m!6274338 () Bool)

(assert (=> b!5227981 m!6274338))

(declare-fun m!6274340 () Bool)

(assert (=> b!5227981 m!6274340))

(declare-fun m!6274342 () Bool)

(assert (=> b!5228005 m!6274342))

(assert (=> b!5228010 m!6274276))

(declare-fun m!6274344 () Bool)

(assert (=> b!5227992 m!6274344))

(assert (=> b!5228011 m!6274276))

(declare-fun m!6274346 () Bool)

(assert (=> b!5228014 m!6274346))

(declare-fun m!6274348 () Bool)

(assert (=> b!5228014 m!6274348))

(declare-fun m!6274350 () Bool)

(assert (=> b!5228014 m!6274350))

(assert (=> b!5228014 m!6274346))

(declare-fun m!6274352 () Bool)

(assert (=> b!5228014 m!6274352))

(declare-fun m!6274354 () Bool)

(assert (=> b!5228014 m!6274354))

(assert (=> b!5228014 m!6274348))

(declare-fun m!6274356 () Bool)

(assert (=> b!5228014 m!6274356))

(declare-fun m!6274358 () Bool)

(assert (=> b!5228002 m!6274358))

(declare-fun m!6274360 () Bool)

(assert (=> setNonEmpty!33284 m!6274360))

(declare-fun m!6274362 () Bool)

(assert (=> b!5227983 m!6274362))

(declare-fun m!6274364 () Bool)

(assert (=> b!5227983 m!6274364))

(declare-fun m!6274366 () Bool)

(assert (=> b!5227993 m!6274366))

(declare-fun m!6274368 () Bool)

(assert (=> b!5227993 m!6274368))

(declare-fun m!6274370 () Bool)

(assert (=> b!5227993 m!6274370))

(declare-fun m!6274372 () Bool)

(assert (=> b!5227993 m!6274372))

(declare-fun m!6274374 () Bool)

(assert (=> b!5227995 m!6274374))

(assert (=> b!5227995 m!6274366))

(declare-fun m!6274376 () Bool)

(assert (=> b!5227995 m!6274376))

(declare-fun m!6274378 () Bool)

(assert (=> b!5227999 m!6274378))

(declare-fun m!6274380 () Bool)

(assert (=> b!5228003 m!6274380))

(declare-fun m!6274382 () Bool)

(assert (=> b!5227985 m!6274382))

(assert (=> b!5227987 m!6274292))

(push 1)

(assert (not b!5228000))

(assert (not b!5227993))

(assert (not b!5227986))

(assert (not b!5227995))

(assert (not setNonEmpty!33284))

(assert (not b!5228011))

(assert (not start!552888))

(assert (not b!5228012))

(assert (not b!5227999))

(assert (not b!5227984))

(assert (not b!5228005))

(assert (not b!5228008))

(assert (not b!5227981))

(assert (not b!5227985))

(assert (not b!5227988))

(assert (not b!5228001))

(assert (not b!5227992))

(assert (not b!5228003))

(assert (not b!5227987))

(assert (not b!5227998))

(assert (not b!5227983))

(assert (not b!5227991))

(assert (not b!5228013))

(assert (not b!5228014))

(assert (not b!5228015))

(assert tp_is_empty!38889)

(assert (not b!5227980))

(assert (not b!5228002))

(assert (not b!5228006))

(assert (not b!5228007))

(assert (not b!5227989))

(assert (not b!5228010))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1685485 () Bool)

(declare-fun dynLambda!23959 (Int Context!8404) (Set Context!8404))

(assert (=> d!1685485 (= (flatMap!545 lt!2144608 lambda!262534) (dynLambda!23959 lambda!262534 lt!2144598))))

(declare-fun lt!2144705 () Unit!152558)

(declare-fun choose!38882 ((Set Context!8404) Context!8404 Int) Unit!152558)

(assert (=> d!1685485 (= lt!2144705 (choose!38882 lt!2144608 lt!2144598 lambda!262534))))

(assert (=> d!1685485 (= lt!2144608 (set.insert lt!2144598 (as set.empty (Set Context!8404))))))

(assert (=> d!1685485 (= (lemmaFlatMapOnSingletonSet!77 lt!2144608 lt!2144598 lambda!262534) lt!2144705)))

(declare-fun b_lambda!202141 () Bool)

(assert (=> (not b_lambda!202141) (not d!1685485)))

(declare-fun bs!1213815 () Bool)

(assert (= bs!1213815 d!1685485))

(assert (=> bs!1213815 m!6274336))

(declare-fun m!6274492 () Bool)

(assert (=> bs!1213815 m!6274492))

(declare-fun m!6274494 () Bool)

(assert (=> bs!1213815 m!6274494))

(assert (=> bs!1213815 m!6274318))

(assert (=> b!5227981 d!1685485))

(declare-fun d!1685487 () Bool)

(declare-fun c!902712 () Bool)

(declare-fun isEmpty!32559 (List!60753) Bool)

(assert (=> d!1685487 (= c!902712 (isEmpty!32559 s!2326))))

(declare-fun e!3253733 () Bool)

(assert (=> d!1685487 (= (matchZipper!1062 z!1189 s!2326) e!3253733)))

(declare-fun b!5228152 () Bool)

(declare-fun nullableZipper!1242 ((Set Context!8404)) Bool)

(assert (=> b!5228152 (= e!3253733 (nullableZipper!1242 z!1189))))

(declare-fun b!5228153 () Bool)

(declare-fun derivationStepZipper!1086 ((Set Context!8404) C!29906) (Set Context!8404))

(declare-fun head!11203 (List!60753) C!29906)

(declare-fun tail!10300 (List!60753) List!60753)

(assert (=> b!5228153 (= e!3253733 (matchZipper!1062 (derivationStepZipper!1086 z!1189 (head!11203 s!2326)) (tail!10300 s!2326)))))

(assert (= (and d!1685487 c!902712) b!5228152))

(assert (= (and d!1685487 (not c!902712)) b!5228153))

(declare-fun m!6274496 () Bool)

(assert (=> d!1685487 m!6274496))

(declare-fun m!6274498 () Bool)

(assert (=> b!5228152 m!6274498))

(declare-fun m!6274500 () Bool)

(assert (=> b!5228153 m!6274500))

(assert (=> b!5228153 m!6274500))

(declare-fun m!6274502 () Bool)

(assert (=> b!5228153 m!6274502))

(declare-fun m!6274504 () Bool)

(assert (=> b!5228153 m!6274504))

(assert (=> b!5228153 m!6274502))

(assert (=> b!5228153 m!6274504))

(declare-fun m!6274506 () Bool)

(assert (=> b!5228153 m!6274506))

(assert (=> b!5227981 d!1685487))

(declare-fun b!5228164 () Bool)

(declare-fun e!3253740 () (Set Context!8404))

(assert (=> b!5228164 (= e!3253740 (as set.empty (Set Context!8404)))))

(declare-fun b!5228165 () Bool)

(declare-fun e!3253742 () Bool)

(assert (=> b!5228165 (= e!3253742 (nullable!4987 (h!67078 (exprs!4702 lt!2144598))))))

(declare-fun d!1685489 () Bool)

(declare-fun c!902717 () Bool)

(assert (=> d!1685489 (= c!902717 e!3253742)))

(declare-fun res!2219458 () Bool)

(assert (=> d!1685489 (=> (not res!2219458) (not e!3253742))))

(assert (=> d!1685489 (= res!2219458 (is-Cons!60630 (exprs!4702 lt!2144598)))))

(declare-fun e!3253741 () (Set Context!8404))

(assert (=> d!1685489 (= (derivationStepZipperUp!190 lt!2144598 (h!67077 s!2326)) e!3253741)))

(declare-fun b!5228166 () Bool)

(declare-fun call!369555 () (Set Context!8404))

(assert (=> b!5228166 (= e!3253740 call!369555)))

(declare-fun bm!369550 () Bool)

(assert (=> bm!369550 (= call!369555 (derivationStepZipperDown!266 (h!67078 (exprs!4702 lt!2144598)) (Context!8405 (t!373931 (exprs!4702 lt!2144598))) (h!67077 s!2326)))))

(declare-fun b!5228167 () Bool)

(assert (=> b!5228167 (= e!3253741 e!3253740)))

(declare-fun c!902718 () Bool)

(assert (=> b!5228167 (= c!902718 (is-Cons!60630 (exprs!4702 lt!2144598)))))

(declare-fun b!5228168 () Bool)

(assert (=> b!5228168 (= e!3253741 (set.union call!369555 (derivationStepZipperUp!190 (Context!8405 (t!373931 (exprs!4702 lt!2144598))) (h!67077 s!2326))))))

(assert (= (and d!1685489 res!2219458) b!5228165))

(assert (= (and d!1685489 c!902717) b!5228168))

(assert (= (and d!1685489 (not c!902717)) b!5228167))

(assert (= (and b!5228167 c!902718) b!5228166))

(assert (= (and b!5228167 (not c!902718)) b!5228164))

(assert (= (or b!5228168 b!5228166) bm!369550))

(declare-fun m!6274508 () Bool)

(assert (=> b!5228165 m!6274508))

(declare-fun m!6274510 () Bool)

(assert (=> bm!369550 m!6274510))

(declare-fun m!6274512 () Bool)

(assert (=> b!5228168 m!6274512))

(assert (=> b!5227981 d!1685489))

(declare-fun d!1685491 () Bool)

(declare-fun choose!38883 ((Set Context!8404) Int) (Set Context!8404))

(assert (=> d!1685491 (= (flatMap!545 lt!2144608 lambda!262534) (choose!38883 lt!2144608 lambda!262534))))

(declare-fun bs!1213816 () Bool)

(assert (= bs!1213816 d!1685491))

(declare-fun m!6274514 () Bool)

(assert (=> bs!1213816 m!6274514))

(assert (=> b!5227981 d!1685491))

(declare-fun d!1685493 () Bool)

(declare-fun nullableFct!1394 (Regex!14818) Bool)

(assert (=> d!1685493 (= (nullable!4987 (regOne!30149 (regOne!30148 r!7292))) (nullableFct!1394 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun bs!1213817 () Bool)

(assert (= bs!1213817 d!1685493))

(declare-fun m!6274516 () Bool)

(assert (=> bs!1213817 m!6274516))

(assert (=> b!5227981 d!1685493))

(declare-fun d!1685495 () Bool)

(declare-fun c!902719 () Bool)

(assert (=> d!1685495 (= c!902719 (isEmpty!32559 s!2326))))

(declare-fun e!3253743 () Bool)

(assert (=> d!1685495 (= (matchZipper!1062 lt!2144608 s!2326) e!3253743)))

(declare-fun b!5228169 () Bool)

(assert (=> b!5228169 (= e!3253743 (nullableZipper!1242 lt!2144608))))

(declare-fun b!5228170 () Bool)

(assert (=> b!5228170 (= e!3253743 (matchZipper!1062 (derivationStepZipper!1086 lt!2144608 (head!11203 s!2326)) (tail!10300 s!2326)))))

(assert (= (and d!1685495 c!902719) b!5228169))

(assert (= (and d!1685495 (not c!902719)) b!5228170))

(assert (=> d!1685495 m!6274496))

(declare-fun m!6274518 () Bool)

(assert (=> b!5228169 m!6274518))

(assert (=> b!5228170 m!6274500))

(assert (=> b!5228170 m!6274500))

(declare-fun m!6274520 () Bool)

(assert (=> b!5228170 m!6274520))

(assert (=> b!5228170 m!6274504))

(assert (=> b!5228170 m!6274520))

(assert (=> b!5228170 m!6274504))

(declare-fun m!6274522 () Bool)

(assert (=> b!5228170 m!6274522))

(assert (=> b!5227981 d!1685495))

(declare-fun d!1685497 () Bool)

(assert (=> d!1685497 (= (flatMap!545 lt!2144611 lambda!262534) (dynLambda!23959 lambda!262534 lt!2144602))))

(declare-fun lt!2144706 () Unit!152558)

(assert (=> d!1685497 (= lt!2144706 (choose!38882 lt!2144611 lt!2144602 lambda!262534))))

(assert (=> d!1685497 (= lt!2144611 (set.insert lt!2144602 (as set.empty (Set Context!8404))))))

(assert (=> d!1685497 (= (lemmaFlatMapOnSingletonSet!77 lt!2144611 lt!2144602 lambda!262534) lt!2144706)))

(declare-fun b_lambda!202143 () Bool)

(assert (=> (not b_lambda!202143) (not d!1685497)))

(declare-fun bs!1213818 () Bool)

(assert (= bs!1213818 d!1685497))

(assert (=> bs!1213818 m!6274320))

(declare-fun m!6274524 () Bool)

(assert (=> bs!1213818 m!6274524))

(declare-fun m!6274526 () Bool)

(assert (=> bs!1213818 m!6274526))

(assert (=> bs!1213818 m!6274326))

(assert (=> b!5227981 d!1685497))

(declare-fun d!1685499 () Bool)

(assert (=> d!1685499 (= (nullable!4987 (regTwo!30149 (regOne!30148 r!7292))) (nullableFct!1394 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun bs!1213819 () Bool)

(assert (= bs!1213819 d!1685499))

(declare-fun m!6274528 () Bool)

(assert (=> bs!1213819 m!6274528))

(assert (=> b!5227981 d!1685499))

(declare-fun b!5228171 () Bool)

(declare-fun e!3253744 () (Set Context!8404))

(assert (=> b!5228171 (= e!3253744 (as set.empty (Set Context!8404)))))

(declare-fun b!5228172 () Bool)

(declare-fun e!3253746 () Bool)

(assert (=> b!5228172 (= e!3253746 (nullable!4987 (h!67078 (exprs!4702 lt!2144602))))))

(declare-fun d!1685501 () Bool)

(declare-fun c!902720 () Bool)

(assert (=> d!1685501 (= c!902720 e!3253746)))

(declare-fun res!2219459 () Bool)

(assert (=> d!1685501 (=> (not res!2219459) (not e!3253746))))

(assert (=> d!1685501 (= res!2219459 (is-Cons!60630 (exprs!4702 lt!2144602)))))

(declare-fun e!3253745 () (Set Context!8404))

(assert (=> d!1685501 (= (derivationStepZipperUp!190 lt!2144602 (h!67077 s!2326)) e!3253745)))

(declare-fun b!5228173 () Bool)

(declare-fun call!369556 () (Set Context!8404))

(assert (=> b!5228173 (= e!3253744 call!369556)))

(declare-fun bm!369551 () Bool)

(assert (=> bm!369551 (= call!369556 (derivationStepZipperDown!266 (h!67078 (exprs!4702 lt!2144602)) (Context!8405 (t!373931 (exprs!4702 lt!2144602))) (h!67077 s!2326)))))

(declare-fun b!5228174 () Bool)

(assert (=> b!5228174 (= e!3253745 e!3253744)))

(declare-fun c!902721 () Bool)

(assert (=> b!5228174 (= c!902721 (is-Cons!60630 (exprs!4702 lt!2144602)))))

(declare-fun b!5228175 () Bool)

(assert (=> b!5228175 (= e!3253745 (set.union call!369556 (derivationStepZipperUp!190 (Context!8405 (t!373931 (exprs!4702 lt!2144602))) (h!67077 s!2326))))))

(assert (= (and d!1685501 res!2219459) b!5228172))

(assert (= (and d!1685501 c!902720) b!5228175))

(assert (= (and d!1685501 (not c!902720)) b!5228174))

(assert (= (and b!5228174 c!902721) b!5228173))

(assert (= (and b!5228174 (not c!902721)) b!5228171))

(assert (= (or b!5228175 b!5228173) bm!369551))

(declare-fun m!6274530 () Bool)

(assert (=> b!5228172 m!6274530))

(declare-fun m!6274532 () Bool)

(assert (=> bm!369551 m!6274532))

(declare-fun m!6274534 () Bool)

(assert (=> b!5228175 m!6274534))

(assert (=> b!5227981 d!1685501))

(declare-fun d!1685503 () Bool)

(assert (=> d!1685503 (= (flatMap!545 lt!2144611 lambda!262534) (choose!38883 lt!2144611 lambda!262534))))

(declare-fun bs!1213820 () Bool)

(assert (= bs!1213820 d!1685503))

(declare-fun m!6274536 () Bool)

(assert (=> bs!1213820 m!6274536))

(assert (=> b!5227981 d!1685503))

(declare-fun d!1685505 () Bool)

(declare-fun e!3253749 () Bool)

(assert (=> d!1685505 e!3253749))

(declare-fun res!2219462 () Bool)

(assert (=> d!1685505 (=> (not res!2219462) (not e!3253749))))

(declare-fun lt!2144709 () List!60755)

(declare-fun noDuplicate!1198 (List!60755) Bool)

(assert (=> d!1685505 (= res!2219462 (noDuplicate!1198 lt!2144709))))

(declare-fun choose!38884 ((Set Context!8404)) List!60755)

(assert (=> d!1685505 (= lt!2144709 (choose!38884 z!1189))))

(assert (=> d!1685505 (= (toList!8602 z!1189) lt!2144709)))

(declare-fun b!5228178 () Bool)

(declare-fun content!10759 (List!60755) (Set Context!8404))

(assert (=> b!5228178 (= e!3253749 (= (content!10759 lt!2144709) z!1189))))

(assert (= (and d!1685505 res!2219462) b!5228178))

(declare-fun m!6274538 () Bool)

(assert (=> d!1685505 m!6274538))

(declare-fun m!6274540 () Bool)

(assert (=> d!1685505 m!6274540))

(declare-fun m!6274542 () Bool)

(assert (=> b!5228178 m!6274542))

(assert (=> b!5228003 d!1685505))

(declare-fun b!5228179 () Bool)

(declare-fun e!3253750 () (Set Context!8404))

(assert (=> b!5228179 (= e!3253750 (as set.empty (Set Context!8404)))))

(declare-fun b!5228180 () Bool)

(declare-fun e!3253752 () Bool)

(assert (=> b!5228180 (= e!3253752 (nullable!4987 (h!67078 (exprs!4702 lt!2144612))))))

(declare-fun d!1685507 () Bool)

(declare-fun c!902722 () Bool)

(assert (=> d!1685507 (= c!902722 e!3253752)))

(declare-fun res!2219463 () Bool)

(assert (=> d!1685507 (=> (not res!2219463) (not e!3253752))))

(assert (=> d!1685507 (= res!2219463 (is-Cons!60630 (exprs!4702 lt!2144612)))))

(declare-fun e!3253751 () (Set Context!8404))

(assert (=> d!1685507 (= (derivationStepZipperUp!190 lt!2144612 (h!67077 s!2326)) e!3253751)))

(declare-fun b!5228181 () Bool)

(declare-fun call!369557 () (Set Context!8404))

(assert (=> b!5228181 (= e!3253750 call!369557)))

(declare-fun bm!369552 () Bool)

(assert (=> bm!369552 (= call!369557 (derivationStepZipperDown!266 (h!67078 (exprs!4702 lt!2144612)) (Context!8405 (t!373931 (exprs!4702 lt!2144612))) (h!67077 s!2326)))))

(declare-fun b!5228182 () Bool)

(assert (=> b!5228182 (= e!3253751 e!3253750)))

(declare-fun c!902723 () Bool)

(assert (=> b!5228182 (= c!902723 (is-Cons!60630 (exprs!4702 lt!2144612)))))

(declare-fun b!5228183 () Bool)

(assert (=> b!5228183 (= e!3253751 (set.union call!369557 (derivationStepZipperUp!190 (Context!8405 (t!373931 (exprs!4702 lt!2144612))) (h!67077 s!2326))))))

(assert (= (and d!1685507 res!2219463) b!5228180))

(assert (= (and d!1685507 c!902722) b!5228183))

(assert (= (and d!1685507 (not c!902722)) b!5228182))

(assert (= (and b!5228182 c!902723) b!5228181))

(assert (= (and b!5228182 (not c!902723)) b!5228179))

(assert (= (or b!5228183 b!5228181) bm!369552))

(declare-fun m!6274544 () Bool)

(assert (=> b!5228180 m!6274544))

(declare-fun m!6274546 () Bool)

(assert (=> bm!369552 m!6274546))

(declare-fun m!6274548 () Bool)

(assert (=> b!5228183 m!6274548))

(assert (=> b!5228001 d!1685507))

(declare-fun d!1685509 () Bool)

(assert (=> d!1685509 (= (flatMap!545 z!1189 lambda!262534) (dynLambda!23959 lambda!262534 (h!67079 zl!343)))))

(declare-fun lt!2144710 () Unit!152558)

(assert (=> d!1685509 (= lt!2144710 (choose!38882 z!1189 (h!67079 zl!343) lambda!262534))))

(assert (=> d!1685509 (= z!1189 (set.insert (h!67079 zl!343) (as set.empty (Set Context!8404))))))

(assert (=> d!1685509 (= (lemmaFlatMapOnSingletonSet!77 z!1189 (h!67079 zl!343) lambda!262534) lt!2144710)))

(declare-fun b_lambda!202145 () Bool)

(assert (=> (not b_lambda!202145) (not d!1685509)))

(declare-fun bs!1213821 () Bool)

(assert (= bs!1213821 d!1685509))

(assert (=> bs!1213821 m!6274310))

(declare-fun m!6274550 () Bool)

(assert (=> bs!1213821 m!6274550))

(declare-fun m!6274552 () Bool)

(assert (=> bs!1213821 m!6274552))

(declare-fun m!6274554 () Bool)

(assert (=> bs!1213821 m!6274554))

(assert (=> b!5228001 d!1685509))

(declare-fun d!1685511 () Bool)

(assert (=> d!1685511 (= (nullable!4987 (h!67078 (exprs!4702 (h!67079 zl!343)))) (nullableFct!1394 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun bs!1213822 () Bool)

(assert (= bs!1213822 d!1685511))

(declare-fun m!6274556 () Bool)

(assert (=> bs!1213822 m!6274556))

(assert (=> b!5228001 d!1685511))

(declare-fun b!5228184 () Bool)

(declare-fun e!3253753 () (Set Context!8404))

(assert (=> b!5228184 (= e!3253753 (as set.empty (Set Context!8404)))))

(declare-fun b!5228185 () Bool)

(declare-fun e!3253755 () Bool)

(assert (=> b!5228185 (= e!3253755 (nullable!4987 (h!67078 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343)))))))))))

(declare-fun d!1685513 () Bool)

(declare-fun c!902724 () Bool)

(assert (=> d!1685513 (= c!902724 e!3253755)))

(declare-fun res!2219464 () Bool)

(assert (=> d!1685513 (=> (not res!2219464) (not e!3253755))))

(assert (=> d!1685513 (= res!2219464 (is-Cons!60630 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343))))))))))

(declare-fun e!3253754 () (Set Context!8404))

(assert (=> d!1685513 (= (derivationStepZipperUp!190 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343))))) (h!67077 s!2326)) e!3253754)))

(declare-fun b!5228186 () Bool)

(declare-fun call!369558 () (Set Context!8404))

(assert (=> b!5228186 (= e!3253753 call!369558)))

(declare-fun bm!369553 () Bool)

(assert (=> bm!369553 (= call!369558 (derivationStepZipperDown!266 (h!67078 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343))))))) (Context!8405 (t!373931 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343)))))))) (h!67077 s!2326)))))

(declare-fun b!5228187 () Bool)

(assert (=> b!5228187 (= e!3253754 e!3253753)))

(declare-fun c!902725 () Bool)

(assert (=> b!5228187 (= c!902725 (is-Cons!60630 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343))))))))))

(declare-fun b!5228188 () Bool)

(assert (=> b!5228188 (= e!3253754 (set.union call!369558 (derivationStepZipperUp!190 (Context!8405 (t!373931 (exprs!4702 (Context!8405 (Cons!60630 (h!67078 (exprs!4702 (h!67079 zl!343))) (t!373931 (exprs!4702 (h!67079 zl!343)))))))) (h!67077 s!2326))))))

(assert (= (and d!1685513 res!2219464) b!5228185))

(assert (= (and d!1685513 c!902724) b!5228188))

(assert (= (and d!1685513 (not c!902724)) b!5228187))

(assert (= (and b!5228187 c!902725) b!5228186))

(assert (= (and b!5228187 (not c!902725)) b!5228184))

(assert (= (or b!5228188 b!5228186) bm!369553))

(declare-fun m!6274558 () Bool)

(assert (=> b!5228185 m!6274558))

(declare-fun m!6274560 () Bool)

(assert (=> bm!369553 m!6274560))

(declare-fun m!6274562 () Bool)

(assert (=> b!5228188 m!6274562))

(assert (=> b!5228001 d!1685513))

(declare-fun d!1685515 () Bool)

(assert (=> d!1685515 (= (flatMap!545 z!1189 lambda!262534) (choose!38883 z!1189 lambda!262534))))

(declare-fun bs!1213823 () Bool)

(assert (= bs!1213823 d!1685515))

(declare-fun m!6274564 () Bool)

(assert (=> bs!1213823 m!6274564))

(assert (=> b!5228001 d!1685515))

(declare-fun b!5228189 () Bool)

(declare-fun e!3253756 () (Set Context!8404))

(assert (=> b!5228189 (= e!3253756 (as set.empty (Set Context!8404)))))

(declare-fun b!5228190 () Bool)

(declare-fun e!3253758 () Bool)

(assert (=> b!5228190 (= e!3253758 (nullable!4987 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun d!1685517 () Bool)

(declare-fun c!902726 () Bool)

(assert (=> d!1685517 (= c!902726 e!3253758)))

(declare-fun res!2219465 () Bool)

(assert (=> d!1685517 (=> (not res!2219465) (not e!3253758))))

(assert (=> d!1685517 (= res!2219465 (is-Cons!60630 (exprs!4702 (h!67079 zl!343))))))

(declare-fun e!3253757 () (Set Context!8404))

(assert (=> d!1685517 (= (derivationStepZipperUp!190 (h!67079 zl!343) (h!67077 s!2326)) e!3253757)))

(declare-fun b!5228191 () Bool)

(declare-fun call!369559 () (Set Context!8404))

(assert (=> b!5228191 (= e!3253756 call!369559)))

(declare-fun bm!369554 () Bool)

(assert (=> bm!369554 (= call!369559 (derivationStepZipperDown!266 (h!67078 (exprs!4702 (h!67079 zl!343))) (Context!8405 (t!373931 (exprs!4702 (h!67079 zl!343)))) (h!67077 s!2326)))))

(declare-fun b!5228192 () Bool)

(assert (=> b!5228192 (= e!3253757 e!3253756)))

(declare-fun c!902727 () Bool)

(assert (=> b!5228192 (= c!902727 (is-Cons!60630 (exprs!4702 (h!67079 zl!343))))))

(declare-fun b!5228193 () Bool)

(assert (=> b!5228193 (= e!3253757 (set.union call!369559 (derivationStepZipperUp!190 (Context!8405 (t!373931 (exprs!4702 (h!67079 zl!343)))) (h!67077 s!2326))))))

(assert (= (and d!1685517 res!2219465) b!5228190))

(assert (= (and d!1685517 c!902726) b!5228193))

(assert (= (and d!1685517 (not c!902726)) b!5228192))

(assert (= (and b!5228192 c!902727) b!5228191))

(assert (= (and b!5228192 (not c!902727)) b!5228189))

(assert (= (or b!5228193 b!5228191) bm!369554))

(assert (=> b!5228190 m!6274304))

(declare-fun m!6274566 () Bool)

(assert (=> bm!369554 m!6274566))

(declare-fun m!6274568 () Bool)

(assert (=> b!5228193 m!6274568))

(assert (=> b!5228001 d!1685517))

(declare-fun call!369573 () List!60754)

(declare-fun call!369575 () (Set Context!8404))

(declare-fun c!902738 () Bool)

(declare-fun c!902740 () Bool)

(declare-fun c!902739 () Bool)

(declare-fun bm!369567 () Bool)

(assert (=> bm!369567 (= call!369575 (derivationStepZipperDown!266 (ite c!902738 (regOne!30149 (h!67078 (exprs!4702 (h!67079 zl!343)))) (ite c!902740 (regTwo!30148 (h!67078 (exprs!4702 (h!67079 zl!343)))) (ite c!902739 (regOne!30148 (h!67078 (exprs!4702 (h!67079 zl!343)))) (reg!15147 (h!67078 (exprs!4702 (h!67079 zl!343))))))) (ite (or c!902738 c!902740) lt!2144612 (Context!8405 call!369573)) (h!67077 s!2326)))))

(declare-fun bm!369568 () Bool)

(declare-fun call!369577 () List!60754)

(declare-fun $colon$colon!1292 (List!60754 Regex!14818) List!60754)

(assert (=> bm!369568 (= call!369577 ($colon$colon!1292 (exprs!4702 lt!2144612) (ite (or c!902740 c!902739) (regTwo!30148 (h!67078 (exprs!4702 (h!67079 zl!343)))) (h!67078 (exprs!4702 (h!67079 zl!343))))))))

(declare-fun d!1685519 () Bool)

(declare-fun c!902742 () Bool)

(assert (=> d!1685519 (= c!902742 (and (is-ElementMatch!14818 (h!67078 (exprs!4702 (h!67079 zl!343)))) (= (c!902692 (h!67078 (exprs!4702 (h!67079 zl!343)))) (h!67077 s!2326))))))

(declare-fun e!3253776 () (Set Context!8404))

(assert (=> d!1685519 (= (derivationStepZipperDown!266 (h!67078 (exprs!4702 (h!67079 zl!343))) lt!2144612 (h!67077 s!2326)) e!3253776)))

(declare-fun b!5228216 () Bool)

(declare-fun e!3253775 () Bool)

(assert (=> b!5228216 (= c!902740 e!3253775)))

(declare-fun res!2219468 () Bool)

(assert (=> b!5228216 (=> (not res!2219468) (not e!3253775))))

(assert (=> b!5228216 (= res!2219468 (is-Concat!23663 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun e!3253773 () (Set Context!8404))

(declare-fun e!3253771 () (Set Context!8404))

(assert (=> b!5228216 (= e!3253773 e!3253771)))

(declare-fun b!5228217 () Bool)

(declare-fun c!902741 () Bool)

(assert (=> b!5228217 (= c!902741 (is-Star!14818 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun e!3253772 () (Set Context!8404))

(declare-fun e!3253774 () (Set Context!8404))

(assert (=> b!5228217 (= e!3253772 e!3253774)))

(declare-fun b!5228218 () Bool)

(declare-fun call!369576 () (Set Context!8404))

(assert (=> b!5228218 (= e!3253772 call!369576)))

(declare-fun b!5228219 () Bool)

(assert (=> b!5228219 (= e!3253776 (set.insert lt!2144612 (as set.empty (Set Context!8404))))))

(declare-fun b!5228220 () Bool)

(assert (=> b!5228220 (= e!3253774 call!369576)))

(declare-fun bm!369569 () Bool)

(declare-fun call!369574 () (Set Context!8404))

(assert (=> bm!369569 (= call!369574 call!369575)))

(declare-fun call!369572 () (Set Context!8404))

(declare-fun bm!369570 () Bool)

(assert (=> bm!369570 (= call!369572 (derivationStepZipperDown!266 (ite c!902738 (regTwo!30149 (h!67078 (exprs!4702 (h!67079 zl!343)))) (regOne!30148 (h!67078 (exprs!4702 (h!67079 zl!343))))) (ite c!902738 lt!2144612 (Context!8405 call!369577)) (h!67077 s!2326)))))

(declare-fun b!5228221 () Bool)

(assert (=> b!5228221 (= e!3253773 (set.union call!369575 call!369572))))

(declare-fun bm!369571 () Bool)

(assert (=> bm!369571 (= call!369573 call!369577)))

(declare-fun b!5228222 () Bool)

(assert (=> b!5228222 (= e!3253771 (set.union call!369572 call!369574))))

(declare-fun b!5228223 () Bool)

(assert (=> b!5228223 (= e!3253775 (nullable!4987 (regOne!30148 (h!67078 (exprs!4702 (h!67079 zl!343))))))))

(declare-fun b!5228224 () Bool)

(assert (=> b!5228224 (= e!3253774 (as set.empty (Set Context!8404)))))

(declare-fun b!5228225 () Bool)

(assert (=> b!5228225 (= e!3253771 e!3253772)))

(assert (=> b!5228225 (= c!902739 (is-Concat!23663 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228226 () Bool)

(assert (=> b!5228226 (= e!3253776 e!3253773)))

(assert (=> b!5228226 (= c!902738 (is-Union!14818 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun bm!369572 () Bool)

(assert (=> bm!369572 (= call!369576 call!369574)))

(assert (= (and d!1685519 c!902742) b!5228219))

(assert (= (and d!1685519 (not c!902742)) b!5228226))

(assert (= (and b!5228226 c!902738) b!5228221))

(assert (= (and b!5228226 (not c!902738)) b!5228216))

(assert (= (and b!5228216 res!2219468) b!5228223))

(assert (= (and b!5228216 c!902740) b!5228222))

(assert (= (and b!5228216 (not c!902740)) b!5228225))

(assert (= (and b!5228225 c!902739) b!5228218))

(assert (= (and b!5228225 (not c!902739)) b!5228217))

(assert (= (and b!5228217 c!902741) b!5228220))

(assert (= (and b!5228217 (not c!902741)) b!5228224))

(assert (= (or b!5228218 b!5228220) bm!369571))

(assert (= (or b!5228218 b!5228220) bm!369572))

(assert (= (or b!5228222 bm!369571) bm!369568))

(assert (= (or b!5228222 bm!369572) bm!369569))

(assert (= (or b!5228221 b!5228222) bm!369570))

(assert (= (or b!5228221 bm!369569) bm!369567))

(declare-fun m!6274570 () Bool)

(assert (=> bm!369567 m!6274570))

(declare-fun m!6274572 () Bool)

(assert (=> b!5228219 m!6274572))

(declare-fun m!6274574 () Bool)

(assert (=> bm!369568 m!6274574))

(declare-fun m!6274576 () Bool)

(assert (=> b!5228223 m!6274576))

(declare-fun m!6274578 () Bool)

(assert (=> bm!369570 m!6274578))

(assert (=> b!5228001 d!1685519))

(declare-fun d!1685521 () Bool)

(declare-fun c!902743 () Bool)

(assert (=> d!1685521 (= c!902743 (isEmpty!32559 s!2326))))

(declare-fun e!3253777 () Bool)

(assert (=> d!1685521 (= (matchZipper!1062 lt!2144611 s!2326) e!3253777)))

(declare-fun b!5228227 () Bool)

(assert (=> b!5228227 (= e!3253777 (nullableZipper!1242 lt!2144611))))

(declare-fun b!5228228 () Bool)

(assert (=> b!5228228 (= e!3253777 (matchZipper!1062 (derivationStepZipper!1086 lt!2144611 (head!11203 s!2326)) (tail!10300 s!2326)))))

(assert (= (and d!1685521 c!902743) b!5228227))

(assert (= (and d!1685521 (not c!902743)) b!5228228))

(assert (=> d!1685521 m!6274496))

(declare-fun m!6274580 () Bool)

(assert (=> b!5228227 m!6274580))

(assert (=> b!5228228 m!6274500))

(assert (=> b!5228228 m!6274500))

(declare-fun m!6274582 () Bool)

(assert (=> b!5228228 m!6274582))

(assert (=> b!5228228 m!6274504))

(assert (=> b!5228228 m!6274582))

(assert (=> b!5228228 m!6274504))

(declare-fun m!6274584 () Bool)

(assert (=> b!5228228 m!6274584))

(assert (=> b!5228002 d!1685521))

(declare-fun d!1685523 () Bool)

(assert (=> d!1685523 (= (isEmpty!32556 (t!373932 zl!343)) (is-Nil!60631 (t!373932 zl!343)))))

(assert (=> b!5228005 d!1685523))

(declare-fun bs!1213824 () Bool)

(declare-fun d!1685525 () Bool)

(assert (= bs!1213824 (and d!1685525 b!5227988)))

(declare-fun lambda!262556 () Int)

(assert (=> bs!1213824 (= lambda!262556 lambda!262535)))

(assert (=> d!1685525 (= (inv!80293 setElem!33284) (forall!14250 (exprs!4702 setElem!33284) lambda!262556))))

(declare-fun bs!1213825 () Bool)

(assert (= bs!1213825 d!1685525))

(declare-fun m!6274586 () Bool)

(assert (=> bs!1213825 m!6274586))

(assert (=> setNonEmpty!33284 d!1685525))

(declare-fun d!1685527 () Bool)

(declare-fun e!3253780 () Bool)

(assert (=> d!1685527 (= (matchZipper!1062 (set.union lt!2144607 lt!2144609) (t!373930 s!2326)) e!3253780)))

(declare-fun res!2219471 () Bool)

(assert (=> d!1685527 (=> res!2219471 e!3253780)))

(assert (=> d!1685527 (= res!2219471 (matchZipper!1062 lt!2144607 (t!373930 s!2326)))))

(declare-fun lt!2144713 () Unit!152558)

(declare-fun choose!38885 ((Set Context!8404) (Set Context!8404) List!60753) Unit!152558)

(assert (=> d!1685527 (= lt!2144713 (choose!38885 lt!2144607 lt!2144609 (t!373930 s!2326)))))

(assert (=> d!1685527 (= (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144607 lt!2144609 (t!373930 s!2326)) lt!2144713)))

(declare-fun b!5228231 () Bool)

(assert (=> b!5228231 (= e!3253780 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(assert (= (and d!1685527 (not res!2219471)) b!5228231))

(assert (=> d!1685527 m!6274364))

(assert (=> d!1685527 m!6274370))

(declare-fun m!6274588 () Bool)

(assert (=> d!1685527 m!6274588))

(assert (=> b!5228231 m!6274276))

(assert (=> b!5227983 d!1685527))

(declare-fun d!1685529 () Bool)

(declare-fun c!902744 () Bool)

(assert (=> d!1685529 (= c!902744 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253781 () Bool)

(assert (=> d!1685529 (= (matchZipper!1062 (set.union lt!2144607 lt!2144609) (t!373930 s!2326)) e!3253781)))

(declare-fun b!5228232 () Bool)

(assert (=> b!5228232 (= e!3253781 (nullableZipper!1242 (set.union lt!2144607 lt!2144609)))))

(declare-fun b!5228233 () Bool)

(assert (=> b!5228233 (= e!3253781 (matchZipper!1062 (derivationStepZipper!1086 (set.union lt!2144607 lt!2144609) (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685529 c!902744) b!5228232))

(assert (= (and d!1685529 (not c!902744)) b!5228233))

(declare-fun m!6274590 () Bool)

(assert (=> d!1685529 m!6274590))

(declare-fun m!6274592 () Bool)

(assert (=> b!5228232 m!6274592))

(declare-fun m!6274594 () Bool)

(assert (=> b!5228233 m!6274594))

(assert (=> b!5228233 m!6274594))

(declare-fun m!6274596 () Bool)

(assert (=> b!5228233 m!6274596))

(declare-fun m!6274598 () Bool)

(assert (=> b!5228233 m!6274598))

(assert (=> b!5228233 m!6274596))

(assert (=> b!5228233 m!6274598))

(declare-fun m!6274600 () Bool)

(assert (=> b!5228233 m!6274600))

(assert (=> b!5227983 d!1685529))

(declare-fun c!902745 () Bool)

(declare-fun c!902746 () Bool)

(declare-fun call!369581 () (Set Context!8404))

(declare-fun c!902747 () Bool)

(declare-fun call!369579 () List!60754)

(declare-fun bm!369573 () Bool)

(assert (=> bm!369573 (= call!369581 (derivationStepZipperDown!266 (ite c!902745 (regOne!30149 (regTwo!30149 (regOne!30148 r!7292))) (ite c!902747 (regTwo!30148 (regTwo!30149 (regOne!30148 r!7292))) (ite c!902746 (regOne!30148 (regTwo!30149 (regOne!30148 r!7292))) (reg!15147 (regTwo!30149 (regOne!30148 r!7292)))))) (ite (or c!902745 c!902747) lt!2144612 (Context!8405 call!369579)) (h!67077 s!2326)))))

(declare-fun call!369583 () List!60754)

(declare-fun bm!369574 () Bool)

(assert (=> bm!369574 (= call!369583 ($colon$colon!1292 (exprs!4702 lt!2144612) (ite (or c!902747 c!902746) (regTwo!30148 (regTwo!30149 (regOne!30148 r!7292))) (regTwo!30149 (regOne!30148 r!7292)))))))

(declare-fun d!1685531 () Bool)

(declare-fun c!902749 () Bool)

(assert (=> d!1685531 (= c!902749 (and (is-ElementMatch!14818 (regTwo!30149 (regOne!30148 r!7292))) (= (c!902692 (regTwo!30149 (regOne!30148 r!7292))) (h!67077 s!2326))))))

(declare-fun e!3253787 () (Set Context!8404))

(assert (=> d!1685531 (= (derivationStepZipperDown!266 (regTwo!30149 (regOne!30148 r!7292)) lt!2144612 (h!67077 s!2326)) e!3253787)))

(declare-fun b!5228234 () Bool)

(declare-fun e!3253786 () Bool)

(assert (=> b!5228234 (= c!902747 e!3253786)))

(declare-fun res!2219472 () Bool)

(assert (=> b!5228234 (=> (not res!2219472) (not e!3253786))))

(assert (=> b!5228234 (= res!2219472 (is-Concat!23663 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun e!3253784 () (Set Context!8404))

(declare-fun e!3253782 () (Set Context!8404))

(assert (=> b!5228234 (= e!3253784 e!3253782)))

(declare-fun b!5228235 () Bool)

(declare-fun c!902748 () Bool)

(assert (=> b!5228235 (= c!902748 (is-Star!14818 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun e!3253783 () (Set Context!8404))

(declare-fun e!3253785 () (Set Context!8404))

(assert (=> b!5228235 (= e!3253783 e!3253785)))

(declare-fun b!5228236 () Bool)

(declare-fun call!369582 () (Set Context!8404))

(assert (=> b!5228236 (= e!3253783 call!369582)))

(declare-fun b!5228237 () Bool)

(assert (=> b!5228237 (= e!3253787 (set.insert lt!2144612 (as set.empty (Set Context!8404))))))

(declare-fun b!5228238 () Bool)

(assert (=> b!5228238 (= e!3253785 call!369582)))

(declare-fun bm!369575 () Bool)

(declare-fun call!369580 () (Set Context!8404))

(assert (=> bm!369575 (= call!369580 call!369581)))

(declare-fun bm!369576 () Bool)

(declare-fun call!369578 () (Set Context!8404))

(assert (=> bm!369576 (= call!369578 (derivationStepZipperDown!266 (ite c!902745 (regTwo!30149 (regTwo!30149 (regOne!30148 r!7292))) (regOne!30148 (regTwo!30149 (regOne!30148 r!7292)))) (ite c!902745 lt!2144612 (Context!8405 call!369583)) (h!67077 s!2326)))))

(declare-fun b!5228239 () Bool)

(assert (=> b!5228239 (= e!3253784 (set.union call!369581 call!369578))))

(declare-fun bm!369577 () Bool)

(assert (=> bm!369577 (= call!369579 call!369583)))

(declare-fun b!5228240 () Bool)

(assert (=> b!5228240 (= e!3253782 (set.union call!369578 call!369580))))

(declare-fun b!5228241 () Bool)

(assert (=> b!5228241 (= e!3253786 (nullable!4987 (regOne!30148 (regTwo!30149 (regOne!30148 r!7292)))))))

(declare-fun b!5228242 () Bool)

(assert (=> b!5228242 (= e!3253785 (as set.empty (Set Context!8404)))))

(declare-fun b!5228243 () Bool)

(assert (=> b!5228243 (= e!3253782 e!3253783)))

(assert (=> b!5228243 (= c!902746 (is-Concat!23663 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun b!5228244 () Bool)

(assert (=> b!5228244 (= e!3253787 e!3253784)))

(assert (=> b!5228244 (= c!902745 (is-Union!14818 (regTwo!30149 (regOne!30148 r!7292))))))

(declare-fun bm!369578 () Bool)

(assert (=> bm!369578 (= call!369582 call!369580)))

(assert (= (and d!1685531 c!902749) b!5228237))

(assert (= (and d!1685531 (not c!902749)) b!5228244))

(assert (= (and b!5228244 c!902745) b!5228239))

(assert (= (and b!5228244 (not c!902745)) b!5228234))

(assert (= (and b!5228234 res!2219472) b!5228241))

(assert (= (and b!5228234 c!902747) b!5228240))

(assert (= (and b!5228234 (not c!902747)) b!5228243))

(assert (= (and b!5228243 c!902746) b!5228236))

(assert (= (and b!5228243 (not c!902746)) b!5228235))

(assert (= (and b!5228235 c!902748) b!5228238))

(assert (= (and b!5228235 (not c!902748)) b!5228242))

(assert (= (or b!5228236 b!5228238) bm!369577))

(assert (= (or b!5228236 b!5228238) bm!369578))

(assert (= (or b!5228240 bm!369577) bm!369574))

(assert (= (or b!5228240 bm!369578) bm!369575))

(assert (= (or b!5228239 b!5228240) bm!369576))

(assert (= (or b!5228239 bm!369575) bm!369573))

(declare-fun m!6274602 () Bool)

(assert (=> bm!369573 m!6274602))

(assert (=> b!5228237 m!6274572))

(declare-fun m!6274604 () Bool)

(assert (=> bm!369574 m!6274604))

(declare-fun m!6274606 () Bool)

(assert (=> b!5228241 m!6274606))

(declare-fun m!6274608 () Bool)

(assert (=> bm!369576 m!6274608))

(assert (=> b!5227998 d!1685531))

(declare-fun c!902751 () Bool)

(declare-fun call!369587 () (Set Context!8404))

(declare-fun call!369585 () List!60754)

(declare-fun c!902752 () Bool)

(declare-fun bm!369579 () Bool)

(declare-fun c!902750 () Bool)

(assert (=> bm!369579 (= call!369587 (derivationStepZipperDown!266 (ite c!902750 (regOne!30149 (regOne!30149 (regOne!30148 r!7292))) (ite c!902752 (regTwo!30148 (regOne!30149 (regOne!30148 r!7292))) (ite c!902751 (regOne!30148 (regOne!30149 (regOne!30148 r!7292))) (reg!15147 (regOne!30149 (regOne!30148 r!7292)))))) (ite (or c!902750 c!902752) lt!2144612 (Context!8405 call!369585)) (h!67077 s!2326)))))

(declare-fun bm!369580 () Bool)

(declare-fun call!369589 () List!60754)

(assert (=> bm!369580 (= call!369589 ($colon$colon!1292 (exprs!4702 lt!2144612) (ite (or c!902752 c!902751) (regTwo!30148 (regOne!30149 (regOne!30148 r!7292))) (regOne!30149 (regOne!30148 r!7292)))))))

(declare-fun d!1685533 () Bool)

(declare-fun c!902754 () Bool)

(assert (=> d!1685533 (= c!902754 (and (is-ElementMatch!14818 (regOne!30149 (regOne!30148 r!7292))) (= (c!902692 (regOne!30149 (regOne!30148 r!7292))) (h!67077 s!2326))))))

(declare-fun e!3253793 () (Set Context!8404))

(assert (=> d!1685533 (= (derivationStepZipperDown!266 (regOne!30149 (regOne!30148 r!7292)) lt!2144612 (h!67077 s!2326)) e!3253793)))

(declare-fun b!5228245 () Bool)

(declare-fun e!3253792 () Bool)

(assert (=> b!5228245 (= c!902752 e!3253792)))

(declare-fun res!2219473 () Bool)

(assert (=> b!5228245 (=> (not res!2219473) (not e!3253792))))

(assert (=> b!5228245 (= res!2219473 (is-Concat!23663 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun e!3253790 () (Set Context!8404))

(declare-fun e!3253788 () (Set Context!8404))

(assert (=> b!5228245 (= e!3253790 e!3253788)))

(declare-fun b!5228246 () Bool)

(declare-fun c!902753 () Bool)

(assert (=> b!5228246 (= c!902753 (is-Star!14818 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun e!3253789 () (Set Context!8404))

(declare-fun e!3253791 () (Set Context!8404))

(assert (=> b!5228246 (= e!3253789 e!3253791)))

(declare-fun b!5228247 () Bool)

(declare-fun call!369588 () (Set Context!8404))

(assert (=> b!5228247 (= e!3253789 call!369588)))

(declare-fun b!5228248 () Bool)

(assert (=> b!5228248 (= e!3253793 (set.insert lt!2144612 (as set.empty (Set Context!8404))))))

(declare-fun b!5228249 () Bool)

(assert (=> b!5228249 (= e!3253791 call!369588)))

(declare-fun bm!369581 () Bool)

(declare-fun call!369586 () (Set Context!8404))

(assert (=> bm!369581 (= call!369586 call!369587)))

(declare-fun bm!369582 () Bool)

(declare-fun call!369584 () (Set Context!8404))

(assert (=> bm!369582 (= call!369584 (derivationStepZipperDown!266 (ite c!902750 (regTwo!30149 (regOne!30149 (regOne!30148 r!7292))) (regOne!30148 (regOne!30149 (regOne!30148 r!7292)))) (ite c!902750 lt!2144612 (Context!8405 call!369589)) (h!67077 s!2326)))))

(declare-fun b!5228250 () Bool)

(assert (=> b!5228250 (= e!3253790 (set.union call!369587 call!369584))))

(declare-fun bm!369583 () Bool)

(assert (=> bm!369583 (= call!369585 call!369589)))

(declare-fun b!5228251 () Bool)

(assert (=> b!5228251 (= e!3253788 (set.union call!369584 call!369586))))

(declare-fun b!5228252 () Bool)

(assert (=> b!5228252 (= e!3253792 (nullable!4987 (regOne!30148 (regOne!30149 (regOne!30148 r!7292)))))))

(declare-fun b!5228253 () Bool)

(assert (=> b!5228253 (= e!3253791 (as set.empty (Set Context!8404)))))

(declare-fun b!5228254 () Bool)

(assert (=> b!5228254 (= e!3253788 e!3253789)))

(assert (=> b!5228254 (= c!902751 (is-Concat!23663 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun b!5228255 () Bool)

(assert (=> b!5228255 (= e!3253793 e!3253790)))

(assert (=> b!5228255 (= c!902750 (is-Union!14818 (regOne!30149 (regOne!30148 r!7292))))))

(declare-fun bm!369584 () Bool)

(assert (=> bm!369584 (= call!369588 call!369586)))

(assert (= (and d!1685533 c!902754) b!5228248))

(assert (= (and d!1685533 (not c!902754)) b!5228255))

(assert (= (and b!5228255 c!902750) b!5228250))

(assert (= (and b!5228255 (not c!902750)) b!5228245))

(assert (= (and b!5228245 res!2219473) b!5228252))

(assert (= (and b!5228245 c!902752) b!5228251))

(assert (= (and b!5228245 (not c!902752)) b!5228254))

(assert (= (and b!5228254 c!902751) b!5228247))

(assert (= (and b!5228254 (not c!902751)) b!5228246))

(assert (= (and b!5228246 c!902753) b!5228249))

(assert (= (and b!5228246 (not c!902753)) b!5228253))

(assert (= (or b!5228247 b!5228249) bm!369583))

(assert (= (or b!5228247 b!5228249) bm!369584))

(assert (= (or b!5228251 bm!369583) bm!369580))

(assert (= (or b!5228251 bm!369584) bm!369581))

(assert (= (or b!5228250 b!5228251) bm!369582))

(assert (= (or b!5228250 bm!369581) bm!369579))

(declare-fun m!6274610 () Bool)

(assert (=> bm!369579 m!6274610))

(assert (=> b!5228248 m!6274572))

(declare-fun m!6274612 () Bool)

(assert (=> bm!369580 m!6274612))

(declare-fun m!6274614 () Bool)

(assert (=> b!5228252 m!6274614))

(declare-fun m!6274616 () Bool)

(assert (=> bm!369582 m!6274616))

(assert (=> b!5227998 d!1685533))

(declare-fun bs!1213826 () Bool)

(declare-fun d!1685535 () Bool)

(assert (= bs!1213826 (and d!1685535 b!5227988)))

(declare-fun lambda!262559 () Int)

(assert (=> bs!1213826 (= lambda!262559 lambda!262535)))

(declare-fun bs!1213827 () Bool)

(assert (= bs!1213827 (and d!1685535 d!1685525)))

(assert (=> bs!1213827 (= lambda!262559 lambda!262556)))

(declare-fun b!5228276 () Bool)

(declare-fun e!3253810 () Bool)

(declare-fun lt!2144716 () Regex!14818)

(declare-fun isEmptyLang!787 (Regex!14818) Bool)

(assert (=> b!5228276 (= e!3253810 (isEmptyLang!787 lt!2144716))))

(declare-fun b!5228277 () Bool)

(declare-fun e!3253806 () Regex!14818)

(assert (=> b!5228277 (= e!3253806 (Union!14818 (h!67078 (unfocusZipperList!260 zl!343)) (generalisedUnion!747 (t!373931 (unfocusZipperList!260 zl!343)))))))

(declare-fun b!5228278 () Bool)

(declare-fun e!3253811 () Bool)

(declare-fun isUnion!219 (Regex!14818) Bool)

(assert (=> b!5228278 (= e!3253811 (isUnion!219 lt!2144716))))

(declare-fun b!5228279 () Bool)

(declare-fun e!3253808 () Bool)

(assert (=> b!5228279 (= e!3253808 e!3253810)))

(declare-fun c!902764 () Bool)

(assert (=> b!5228279 (= c!902764 (isEmpty!32555 (unfocusZipperList!260 zl!343)))))

(assert (=> d!1685535 e!3253808))

(declare-fun res!2219478 () Bool)

(assert (=> d!1685535 (=> (not res!2219478) (not e!3253808))))

(assert (=> d!1685535 (= res!2219478 (validRegex!6554 lt!2144716))))

(declare-fun e!3253809 () Regex!14818)

(assert (=> d!1685535 (= lt!2144716 e!3253809)))

(declare-fun c!902763 () Bool)

(declare-fun e!3253807 () Bool)

(assert (=> d!1685535 (= c!902763 e!3253807)))

(declare-fun res!2219479 () Bool)

(assert (=> d!1685535 (=> (not res!2219479) (not e!3253807))))

(assert (=> d!1685535 (= res!2219479 (is-Cons!60630 (unfocusZipperList!260 zl!343)))))

(assert (=> d!1685535 (forall!14250 (unfocusZipperList!260 zl!343) lambda!262559)))

(assert (=> d!1685535 (= (generalisedUnion!747 (unfocusZipperList!260 zl!343)) lt!2144716)))

(declare-fun b!5228280 () Bool)

(declare-fun head!11204 (List!60754) Regex!14818)

(assert (=> b!5228280 (= e!3253811 (= lt!2144716 (head!11204 (unfocusZipperList!260 zl!343))))))

(declare-fun b!5228281 () Bool)

(assert (=> b!5228281 (= e!3253809 (h!67078 (unfocusZipperList!260 zl!343)))))

(declare-fun b!5228282 () Bool)

(assert (=> b!5228282 (= e!3253806 EmptyLang!14818)))

(declare-fun b!5228283 () Bool)

(assert (=> b!5228283 (= e!3253807 (isEmpty!32555 (t!373931 (unfocusZipperList!260 zl!343))))))

(declare-fun b!5228284 () Bool)

(assert (=> b!5228284 (= e!3253809 e!3253806)))

(declare-fun c!902766 () Bool)

(assert (=> b!5228284 (= c!902766 (is-Cons!60630 (unfocusZipperList!260 zl!343)))))

(declare-fun b!5228285 () Bool)

(assert (=> b!5228285 (= e!3253810 e!3253811)))

(declare-fun c!902765 () Bool)

(declare-fun tail!10301 (List!60754) List!60754)

(assert (=> b!5228285 (= c!902765 (isEmpty!32555 (tail!10301 (unfocusZipperList!260 zl!343))))))

(assert (= (and d!1685535 res!2219479) b!5228283))

(assert (= (and d!1685535 c!902763) b!5228281))

(assert (= (and d!1685535 (not c!902763)) b!5228284))

(assert (= (and b!5228284 c!902766) b!5228277))

(assert (= (and b!5228284 (not c!902766)) b!5228282))

(assert (= (and d!1685535 res!2219478) b!5228279))

(assert (= (and b!5228279 c!902764) b!5228276))

(assert (= (and b!5228279 (not c!902764)) b!5228285))

(assert (= (and b!5228285 c!902765) b!5228280))

(assert (= (and b!5228285 (not c!902765)) b!5228278))

(declare-fun m!6274618 () Bool)

(assert (=> b!5228276 m!6274618))

(declare-fun m!6274620 () Bool)

(assert (=> d!1685535 m!6274620))

(assert (=> d!1685535 m!6274296))

(declare-fun m!6274622 () Bool)

(assert (=> d!1685535 m!6274622))

(assert (=> b!5228285 m!6274296))

(declare-fun m!6274624 () Bool)

(assert (=> b!5228285 m!6274624))

(assert (=> b!5228285 m!6274624))

(declare-fun m!6274626 () Bool)

(assert (=> b!5228285 m!6274626))

(assert (=> b!5228279 m!6274296))

(declare-fun m!6274628 () Bool)

(assert (=> b!5228279 m!6274628))

(declare-fun m!6274630 () Bool)

(assert (=> b!5228277 m!6274630))

(declare-fun m!6274632 () Bool)

(assert (=> b!5228278 m!6274632))

(assert (=> b!5228280 m!6274296))

(declare-fun m!6274634 () Bool)

(assert (=> b!5228280 m!6274634))

(declare-fun m!6274636 () Bool)

(assert (=> b!5228283 m!6274636))

(assert (=> b!5228015 d!1685535))

(declare-fun bs!1213828 () Bool)

(declare-fun d!1685537 () Bool)

(assert (= bs!1213828 (and d!1685537 b!5227988)))

(declare-fun lambda!262562 () Int)

(assert (=> bs!1213828 (= lambda!262562 lambda!262535)))

(declare-fun bs!1213829 () Bool)

(assert (= bs!1213829 (and d!1685537 d!1685525)))

(assert (=> bs!1213829 (= lambda!262562 lambda!262556)))

(declare-fun bs!1213830 () Bool)

(assert (= bs!1213830 (and d!1685537 d!1685535)))

(assert (=> bs!1213830 (= lambda!262562 lambda!262559)))

(declare-fun lt!2144719 () List!60754)

(assert (=> d!1685537 (forall!14250 lt!2144719 lambda!262562)))

(declare-fun e!3253814 () List!60754)

(assert (=> d!1685537 (= lt!2144719 e!3253814)))

(declare-fun c!902769 () Bool)

(assert (=> d!1685537 (= c!902769 (is-Cons!60631 zl!343))))

(assert (=> d!1685537 (= (unfocusZipperList!260 zl!343) lt!2144719)))

(declare-fun b!5228290 () Bool)

(assert (=> b!5228290 (= e!3253814 (Cons!60630 (generalisedConcat!487 (exprs!4702 (h!67079 zl!343))) (unfocusZipperList!260 (t!373932 zl!343))))))

(declare-fun b!5228291 () Bool)

(assert (=> b!5228291 (= e!3253814 Nil!60630)))

(assert (= (and d!1685537 c!902769) b!5228290))

(assert (= (and d!1685537 (not c!902769)) b!5228291))

(declare-fun m!6274638 () Bool)

(assert (=> d!1685537 m!6274638))

(assert (=> b!5228290 m!6274344))

(declare-fun m!6274640 () Bool)

(assert (=> b!5228290 m!6274640))

(assert (=> b!5228015 d!1685537))

(declare-fun d!1685539 () Bool)

(declare-fun e!3253815 () Bool)

(assert (=> d!1685539 (= (matchZipper!1062 (set.union lt!2144603 lt!2144609) (t!373930 s!2326)) e!3253815)))

(declare-fun res!2219480 () Bool)

(assert (=> d!1685539 (=> res!2219480 e!3253815)))

(assert (=> d!1685539 (= res!2219480 (matchZipper!1062 lt!2144603 (t!373930 s!2326)))))

(declare-fun lt!2144720 () Unit!152558)

(assert (=> d!1685539 (= lt!2144720 (choose!38885 lt!2144603 lt!2144609 (t!373930 s!2326)))))

(assert (=> d!1685539 (= (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144603 lt!2144609 (t!373930 s!2326)) lt!2144720)))

(declare-fun b!5228292 () Bool)

(assert (=> b!5228292 (= e!3253815 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(assert (= (and d!1685539 (not res!2219480)) b!5228292))

(assert (=> d!1685539 m!6274294))

(assert (=> d!1685539 m!6274292))

(declare-fun m!6274642 () Bool)

(assert (=> d!1685539 m!6274642))

(assert (=> b!5228292 m!6274276))

(assert (=> b!5228000 d!1685539))

(declare-fun d!1685541 () Bool)

(declare-fun c!902770 () Bool)

(assert (=> d!1685541 (= c!902770 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253816 () Bool)

(assert (=> d!1685541 (= (matchZipper!1062 lt!2144603 (t!373930 s!2326)) e!3253816)))

(declare-fun b!5228293 () Bool)

(assert (=> b!5228293 (= e!3253816 (nullableZipper!1242 lt!2144603))))

(declare-fun b!5228294 () Bool)

(assert (=> b!5228294 (= e!3253816 (matchZipper!1062 (derivationStepZipper!1086 lt!2144603 (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685541 c!902770) b!5228293))

(assert (= (and d!1685541 (not c!902770)) b!5228294))

(assert (=> d!1685541 m!6274590))

(declare-fun m!6274644 () Bool)

(assert (=> b!5228293 m!6274644))

(assert (=> b!5228294 m!6274594))

(assert (=> b!5228294 m!6274594))

(declare-fun m!6274646 () Bool)

(assert (=> b!5228294 m!6274646))

(assert (=> b!5228294 m!6274598))

(assert (=> b!5228294 m!6274646))

(assert (=> b!5228294 m!6274598))

(declare-fun m!6274648 () Bool)

(assert (=> b!5228294 m!6274648))

(assert (=> b!5228000 d!1685541))

(declare-fun d!1685543 () Bool)

(declare-fun c!902771 () Bool)

(assert (=> d!1685543 (= c!902771 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253817 () Bool)

(assert (=> d!1685543 (= (matchZipper!1062 (set.union lt!2144603 lt!2144609) (t!373930 s!2326)) e!3253817)))

(declare-fun b!5228295 () Bool)

(assert (=> b!5228295 (= e!3253817 (nullableZipper!1242 (set.union lt!2144603 lt!2144609)))))

(declare-fun b!5228296 () Bool)

(assert (=> b!5228296 (= e!3253817 (matchZipper!1062 (derivationStepZipper!1086 (set.union lt!2144603 lt!2144609) (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685543 c!902771) b!5228295))

(assert (= (and d!1685543 (not c!902771)) b!5228296))

(assert (=> d!1685543 m!6274590))

(declare-fun m!6274650 () Bool)

(assert (=> b!5228295 m!6274650))

(assert (=> b!5228296 m!6274594))

(assert (=> b!5228296 m!6274594))

(declare-fun m!6274652 () Bool)

(assert (=> b!5228296 m!6274652))

(assert (=> b!5228296 m!6274598))

(assert (=> b!5228296 m!6274652))

(assert (=> b!5228296 m!6274598))

(declare-fun m!6274654 () Bool)

(assert (=> b!5228296 m!6274654))

(assert (=> b!5228000 d!1685543))

(declare-fun d!1685545 () Bool)

(assert (=> d!1685545 (= (isEmpty!32555 (t!373931 (exprs!4702 (h!67079 zl!343)))) (is-Nil!60630 (t!373931 (exprs!4702 (h!67079 zl!343)))))))

(assert (=> b!5227999 d!1685545))

(declare-fun bs!1213831 () Bool)

(declare-fun d!1685547 () Bool)

(assert (= bs!1213831 (and d!1685547 b!5227988)))

(declare-fun lambda!262565 () Int)

(assert (=> bs!1213831 (= lambda!262565 lambda!262535)))

(declare-fun bs!1213832 () Bool)

(assert (= bs!1213832 (and d!1685547 d!1685525)))

(assert (=> bs!1213832 (= lambda!262565 lambda!262556)))

(declare-fun bs!1213833 () Bool)

(assert (= bs!1213833 (and d!1685547 d!1685535)))

(assert (=> bs!1213833 (= lambda!262565 lambda!262559)))

(declare-fun bs!1213834 () Bool)

(assert (= bs!1213834 (and d!1685547 d!1685537)))

(assert (=> bs!1213834 (= lambda!262565 lambda!262562)))

(declare-fun b!5228317 () Bool)

(declare-fun e!3253832 () Bool)

(declare-fun e!3253835 () Bool)

(assert (=> b!5228317 (= e!3253832 e!3253835)))

(declare-fun c!902781 () Bool)

(assert (=> b!5228317 (= c!902781 (isEmpty!32555 (tail!10301 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228318 () Bool)

(declare-fun e!3253833 () Bool)

(assert (=> b!5228318 (= e!3253833 (isEmpty!32555 (t!373931 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228319 () Bool)

(declare-fun e!3253831 () Regex!14818)

(assert (=> b!5228319 (= e!3253831 EmptyExpr!14818)))

(declare-fun b!5228320 () Bool)

(assert (=> b!5228320 (= e!3253831 (Concat!23663 (h!67078 (exprs!4702 (h!67079 zl!343))) (generalisedConcat!487 (t!373931 (exprs!4702 (h!67079 zl!343))))))))

(declare-fun b!5228321 () Bool)

(declare-fun lt!2144723 () Regex!14818)

(assert (=> b!5228321 (= e!3253835 (= lt!2144723 (head!11204 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228322 () Bool)

(declare-fun e!3253834 () Regex!14818)

(assert (=> b!5228322 (= e!3253834 (h!67078 (exprs!4702 (h!67079 zl!343))))))

(declare-fun b!5228323 () Bool)

(declare-fun isConcat!301 (Regex!14818) Bool)

(assert (=> b!5228323 (= e!3253835 (isConcat!301 lt!2144723))))

(declare-fun e!3253830 () Bool)

(assert (=> d!1685547 e!3253830))

(declare-fun res!2219485 () Bool)

(assert (=> d!1685547 (=> (not res!2219485) (not e!3253830))))

(assert (=> d!1685547 (= res!2219485 (validRegex!6554 lt!2144723))))

(assert (=> d!1685547 (= lt!2144723 e!3253834)))

(declare-fun c!902782 () Bool)

(assert (=> d!1685547 (= c!902782 e!3253833)))

(declare-fun res!2219486 () Bool)

(assert (=> d!1685547 (=> (not res!2219486) (not e!3253833))))

(assert (=> d!1685547 (= res!2219486 (is-Cons!60630 (exprs!4702 (h!67079 zl!343))))))

(assert (=> d!1685547 (forall!14250 (exprs!4702 (h!67079 zl!343)) lambda!262565)))

(assert (=> d!1685547 (= (generalisedConcat!487 (exprs!4702 (h!67079 zl!343))) lt!2144723)))

(declare-fun b!5228324 () Bool)

(declare-fun isEmptyExpr!778 (Regex!14818) Bool)

(assert (=> b!5228324 (= e!3253832 (isEmptyExpr!778 lt!2144723))))

(declare-fun b!5228325 () Bool)

(assert (=> b!5228325 (= e!3253830 e!3253832)))

(declare-fun c!902780 () Bool)

(assert (=> b!5228325 (= c!902780 (isEmpty!32555 (exprs!4702 (h!67079 zl!343))))))

(declare-fun b!5228326 () Bool)

(assert (=> b!5228326 (= e!3253834 e!3253831)))

(declare-fun c!902783 () Bool)

(assert (=> b!5228326 (= c!902783 (is-Cons!60630 (exprs!4702 (h!67079 zl!343))))))

(assert (= (and d!1685547 res!2219486) b!5228318))

(assert (= (and d!1685547 c!902782) b!5228322))

(assert (= (and d!1685547 (not c!902782)) b!5228326))

(assert (= (and b!5228326 c!902783) b!5228320))

(assert (= (and b!5228326 (not c!902783)) b!5228319))

(assert (= (and d!1685547 res!2219485) b!5228325))

(assert (= (and b!5228325 c!902780) b!5228324))

(assert (= (and b!5228325 (not c!902780)) b!5228317))

(assert (= (and b!5228317 c!902781) b!5228321))

(assert (= (and b!5228317 (not c!902781)) b!5228323))

(declare-fun m!6274656 () Bool)

(assert (=> d!1685547 m!6274656))

(declare-fun m!6274658 () Bool)

(assert (=> d!1685547 m!6274658))

(declare-fun m!6274660 () Bool)

(assert (=> b!5228317 m!6274660))

(assert (=> b!5228317 m!6274660))

(declare-fun m!6274662 () Bool)

(assert (=> b!5228317 m!6274662))

(declare-fun m!6274664 () Bool)

(assert (=> b!5228320 m!6274664))

(assert (=> b!5228318 m!6274378))

(declare-fun m!6274666 () Bool)

(assert (=> b!5228324 m!6274666))

(declare-fun m!6274668 () Bool)

(assert (=> b!5228321 m!6274668))

(declare-fun m!6274670 () Bool)

(assert (=> b!5228323 m!6274670))

(declare-fun m!6274672 () Bool)

(assert (=> b!5228325 m!6274672))

(assert (=> b!5227992 d!1685547))

(declare-fun d!1685549 () Bool)

(declare-fun c!902784 () Bool)

(assert (=> d!1685549 (= c!902784 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253836 () Bool)

(assert (=> d!1685549 (= (matchZipper!1062 lt!2144609 (t!373930 s!2326)) e!3253836)))

(declare-fun b!5228327 () Bool)

(assert (=> b!5228327 (= e!3253836 (nullableZipper!1242 lt!2144609))))

(declare-fun b!5228328 () Bool)

(assert (=> b!5228328 (= e!3253836 (matchZipper!1062 (derivationStepZipper!1086 lt!2144609 (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685549 c!902784) b!5228327))

(assert (= (and d!1685549 (not c!902784)) b!5228328))

(assert (=> d!1685549 m!6274590))

(declare-fun m!6274674 () Bool)

(assert (=> b!5228327 m!6274674))

(assert (=> b!5228328 m!6274594))

(assert (=> b!5228328 m!6274594))

(declare-fun m!6274676 () Bool)

(assert (=> b!5228328 m!6274676))

(assert (=> b!5228328 m!6274598))

(assert (=> b!5228328 m!6274676))

(assert (=> b!5228328 m!6274598))

(declare-fun m!6274678 () Bool)

(assert (=> b!5228328 m!6274678))

(assert (=> b!5228011 d!1685549))

(declare-fun bs!1213835 () Bool)

(declare-fun d!1685551 () Bool)

(assert (= bs!1213835 (and d!1685551 b!5227988)))

(declare-fun lambda!262566 () Int)

(assert (=> bs!1213835 (= lambda!262566 lambda!262535)))

(declare-fun bs!1213836 () Bool)

(assert (= bs!1213836 (and d!1685551 d!1685537)))

(assert (=> bs!1213836 (= lambda!262566 lambda!262562)))

(declare-fun bs!1213837 () Bool)

(assert (= bs!1213837 (and d!1685551 d!1685535)))

(assert (=> bs!1213837 (= lambda!262566 lambda!262559)))

(declare-fun bs!1213838 () Bool)

(assert (= bs!1213838 (and d!1685551 d!1685547)))

(assert (=> bs!1213838 (= lambda!262566 lambda!262565)))

(declare-fun bs!1213839 () Bool)

(assert (= bs!1213839 (and d!1685551 d!1685525)))

(assert (=> bs!1213839 (= lambda!262566 lambda!262556)))

(assert (=> d!1685551 (= (inv!80293 (h!67079 zl!343)) (forall!14250 (exprs!4702 (h!67079 zl!343)) lambda!262566))))

(declare-fun bs!1213840 () Bool)

(assert (= bs!1213840 d!1685551))

(declare-fun m!6274680 () Bool)

(assert (=> bs!1213840 m!6274680))

(assert (=> b!5227991 d!1685551))

(declare-fun b!5228347 () Bool)

(declare-fun e!3253848 () Bool)

(assert (=> b!5228347 (= e!3253848 (matchR!7003 (regTwo!30148 r!7292) s!2326))))

(declare-fun b!5228348 () Bool)

(declare-fun res!2219500 () Bool)

(declare-fun e!3253847 () Bool)

(assert (=> b!5228348 (=> (not res!2219500) (not e!3253847))))

(declare-fun lt!2144731 () Option!14929)

(declare-fun get!20837 (Option!14929) tuple2!64034)

(assert (=> b!5228348 (= res!2219500 (matchR!7003 (regOne!30148 r!7292) (_1!35320 (get!20837 lt!2144731))))))

(declare-fun b!5228349 () Bool)

(declare-fun e!3253851 () Option!14929)

(assert (=> b!5228349 (= e!3253851 (Some!14928 (tuple2!64035 Nil!60629 s!2326)))))

(declare-fun b!5228350 () Bool)

(declare-fun res!2219499 () Bool)

(assert (=> b!5228350 (=> (not res!2219499) (not e!3253847))))

(assert (=> b!5228350 (= res!2219499 (matchR!7003 (regTwo!30148 r!7292) (_2!35320 (get!20837 lt!2144731))))))

(declare-fun b!5228351 () Bool)

(declare-fun e!3253850 () Option!14929)

(assert (=> b!5228351 (= e!3253851 e!3253850)))

(declare-fun c!902790 () Bool)

(assert (=> b!5228351 (= c!902790 (is-Nil!60629 s!2326))))

(declare-fun b!5228352 () Bool)

(declare-fun lt!2144732 () Unit!152558)

(declare-fun lt!2144730 () Unit!152558)

(assert (=> b!5228352 (= lt!2144732 lt!2144730)))

(declare-fun ++!13222 (List!60753 List!60753) List!60753)

(assert (=> b!5228352 (= (++!13222 (++!13222 Nil!60629 (Cons!60629 (h!67077 s!2326) Nil!60629)) (t!373930 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1637 (List!60753 C!29906 List!60753 List!60753) Unit!152558)

(assert (=> b!5228352 (= lt!2144730 (lemmaMoveElementToOtherListKeepsConcatEq!1637 Nil!60629 (h!67077 s!2326) (t!373930 s!2326) s!2326))))

(assert (=> b!5228352 (= e!3253850 (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) (++!13222 Nil!60629 (Cons!60629 (h!67077 s!2326) Nil!60629)) (t!373930 s!2326) s!2326))))

(declare-fun b!5228353 () Bool)

(assert (=> b!5228353 (= e!3253847 (= (++!13222 (_1!35320 (get!20837 lt!2144731)) (_2!35320 (get!20837 lt!2144731))) s!2326))))

(declare-fun d!1685553 () Bool)

(declare-fun e!3253849 () Bool)

(assert (=> d!1685553 e!3253849))

(declare-fun res!2219501 () Bool)

(assert (=> d!1685553 (=> res!2219501 e!3253849)))

(assert (=> d!1685553 (= res!2219501 e!3253847)))

(declare-fun res!2219497 () Bool)

(assert (=> d!1685553 (=> (not res!2219497) (not e!3253847))))

(assert (=> d!1685553 (= res!2219497 (isDefined!11632 lt!2144731))))

(assert (=> d!1685553 (= lt!2144731 e!3253851)))

(declare-fun c!902789 () Bool)

(assert (=> d!1685553 (= c!902789 e!3253848)))

(declare-fun res!2219498 () Bool)

(assert (=> d!1685553 (=> (not res!2219498) (not e!3253848))))

(assert (=> d!1685553 (= res!2219498 (matchR!7003 (regOne!30148 r!7292) Nil!60629))))

(assert (=> d!1685553 (validRegex!6554 (regOne!30148 r!7292))))

(assert (=> d!1685553 (= (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) Nil!60629 s!2326 s!2326) lt!2144731)))

(declare-fun b!5228354 () Bool)

(assert (=> b!5228354 (= e!3253849 (not (isDefined!11632 lt!2144731)))))

(declare-fun b!5228355 () Bool)

(assert (=> b!5228355 (= e!3253850 None!14928)))

(assert (= (and d!1685553 res!2219498) b!5228347))

(assert (= (and d!1685553 c!902789) b!5228349))

(assert (= (and d!1685553 (not c!902789)) b!5228351))

(assert (= (and b!5228351 c!902790) b!5228355))

(assert (= (and b!5228351 (not c!902790)) b!5228352))

(assert (= (and d!1685553 res!2219497) b!5228348))

(assert (= (and b!5228348 res!2219500) b!5228350))

(assert (= (and b!5228350 res!2219499) b!5228353))

(assert (= (and d!1685553 (not res!2219501)) b!5228354))

(declare-fun m!6274682 () Bool)

(assert (=> b!5228353 m!6274682))

(declare-fun m!6274684 () Bool)

(assert (=> b!5228353 m!6274684))

(declare-fun m!6274686 () Bool)

(assert (=> b!5228347 m!6274686))

(assert (=> b!5228350 m!6274682))

(declare-fun m!6274688 () Bool)

(assert (=> b!5228350 m!6274688))

(declare-fun m!6274690 () Bool)

(assert (=> b!5228354 m!6274690))

(assert (=> b!5228348 m!6274682))

(declare-fun m!6274692 () Bool)

(assert (=> b!5228348 m!6274692))

(assert (=> d!1685553 m!6274690))

(declare-fun m!6274694 () Bool)

(assert (=> d!1685553 m!6274694))

(declare-fun m!6274696 () Bool)

(assert (=> d!1685553 m!6274696))

(declare-fun m!6274698 () Bool)

(assert (=> b!5228352 m!6274698))

(assert (=> b!5228352 m!6274698))

(declare-fun m!6274700 () Bool)

(assert (=> b!5228352 m!6274700))

(declare-fun m!6274702 () Bool)

(assert (=> b!5228352 m!6274702))

(assert (=> b!5228352 m!6274698))

(declare-fun m!6274704 () Bool)

(assert (=> b!5228352 m!6274704))

(assert (=> b!5228014 d!1685553))

(declare-fun d!1685555 () Bool)

(declare-fun choose!38886 (Int) Bool)

(assert (=> d!1685555 (= (Exists!1999 lambda!262533) (choose!38886 lambda!262533))))

(declare-fun bs!1213841 () Bool)

(assert (= bs!1213841 d!1685555))

(declare-fun m!6274706 () Bool)

(assert (=> bs!1213841 m!6274706))

(assert (=> b!5228014 d!1685555))

(declare-fun d!1685557 () Bool)

(assert (=> d!1685557 (= (Exists!1999 lambda!262532) (choose!38886 lambda!262532))))

(declare-fun bs!1213842 () Bool)

(assert (= bs!1213842 d!1685557))

(declare-fun m!6274708 () Bool)

(assert (=> bs!1213842 m!6274708))

(assert (=> b!5228014 d!1685557))

(declare-fun bs!1213843 () Bool)

(declare-fun d!1685559 () Bool)

(assert (= bs!1213843 (and d!1685559 b!5228014)))

(declare-fun lambda!262569 () Int)

(assert (=> bs!1213843 (= lambda!262569 lambda!262532)))

(assert (=> bs!1213843 (not (= lambda!262569 lambda!262533))))

(assert (=> d!1685559 true))

(assert (=> d!1685559 true))

(assert (=> d!1685559 true))

(assert (=> d!1685559 (= (isDefined!11632 (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) Nil!60629 s!2326 s!2326)) (Exists!1999 lambda!262569))))

(declare-fun lt!2144735 () Unit!152558)

(declare-fun choose!38887 (Regex!14818 Regex!14818 List!60753) Unit!152558)

(assert (=> d!1685559 (= lt!2144735 (choose!38887 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326))))

(assert (=> d!1685559 (validRegex!6554 (regOne!30148 r!7292))))

(assert (=> d!1685559 (= (lemmaFindConcatSeparationEquivalentToExists!1107 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326) lt!2144735)))

(declare-fun bs!1213844 () Bool)

(assert (= bs!1213844 d!1685559))

(assert (=> bs!1213844 m!6274348))

(assert (=> bs!1213844 m!6274350))

(assert (=> bs!1213844 m!6274348))

(declare-fun m!6274710 () Bool)

(assert (=> bs!1213844 m!6274710))

(declare-fun m!6274712 () Bool)

(assert (=> bs!1213844 m!6274712))

(assert (=> bs!1213844 m!6274696))

(assert (=> b!5228014 d!1685559))

(declare-fun bs!1213845 () Bool)

(declare-fun d!1685561 () Bool)

(assert (= bs!1213845 (and d!1685561 b!5228014)))

(declare-fun lambda!262574 () Int)

(assert (=> bs!1213845 (= lambda!262574 lambda!262532)))

(assert (=> bs!1213845 (not (= lambda!262574 lambda!262533))))

(declare-fun bs!1213846 () Bool)

(assert (= bs!1213846 (and d!1685561 d!1685559)))

(assert (=> bs!1213846 (= lambda!262574 lambda!262569)))

(assert (=> d!1685561 true))

(assert (=> d!1685561 true))

(assert (=> d!1685561 true))

(declare-fun lambda!262575 () Int)

(assert (=> bs!1213845 (not (= lambda!262575 lambda!262532))))

(assert (=> bs!1213845 (= lambda!262575 lambda!262533)))

(assert (=> bs!1213846 (not (= lambda!262575 lambda!262569))))

(declare-fun bs!1213847 () Bool)

(assert (= bs!1213847 d!1685561))

(assert (=> bs!1213847 (not (= lambda!262575 lambda!262574))))

(assert (=> d!1685561 true))

(assert (=> d!1685561 true))

(assert (=> d!1685561 true))

(assert (=> d!1685561 (= (Exists!1999 lambda!262574) (Exists!1999 lambda!262575))))

(declare-fun lt!2144738 () Unit!152558)

(declare-fun choose!38888 (Regex!14818 Regex!14818 List!60753) Unit!152558)

(assert (=> d!1685561 (= lt!2144738 (choose!38888 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326))))

(assert (=> d!1685561 (validRegex!6554 (regOne!30148 r!7292))))

(assert (=> d!1685561 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!653 (regOne!30148 r!7292) (regTwo!30148 r!7292) s!2326) lt!2144738)))

(declare-fun m!6274714 () Bool)

(assert (=> bs!1213847 m!6274714))

(declare-fun m!6274716 () Bool)

(assert (=> bs!1213847 m!6274716))

(declare-fun m!6274718 () Bool)

(assert (=> bs!1213847 m!6274718))

(assert (=> bs!1213847 m!6274696))

(assert (=> b!5228014 d!1685561))

(declare-fun d!1685563 () Bool)

(declare-fun isEmpty!32560 (Option!14929) Bool)

(assert (=> d!1685563 (= (isDefined!11632 (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) Nil!60629 s!2326 s!2326)) (not (isEmpty!32560 (findConcatSeparation!1343 (regOne!30148 r!7292) (regTwo!30148 r!7292) Nil!60629 s!2326 s!2326))))))

(declare-fun bs!1213848 () Bool)

(assert (= bs!1213848 d!1685563))

(assert (=> bs!1213848 m!6274348))

(declare-fun m!6274720 () Bool)

(assert (=> bs!1213848 m!6274720))

(assert (=> b!5228014 d!1685563))

(declare-fun e!3253858 () Bool)

(declare-fun d!1685565 () Bool)

(assert (=> d!1685565 (= (matchZipper!1062 (set.union lt!2144588 lt!2144609) (t!373930 s!2326)) e!3253858)))

(declare-fun res!2219514 () Bool)

(assert (=> d!1685565 (=> res!2219514 e!3253858)))

(assert (=> d!1685565 (= res!2219514 (matchZipper!1062 lt!2144588 (t!373930 s!2326)))))

(declare-fun lt!2144739 () Unit!152558)

(assert (=> d!1685565 (= lt!2144739 (choose!38885 lt!2144588 lt!2144609 (t!373930 s!2326)))))

(assert (=> d!1685565 (= (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144588 lt!2144609 (t!373930 s!2326)) lt!2144739)))

(declare-fun b!5228368 () Bool)

(assert (=> b!5228368 (= e!3253858 (matchZipper!1062 lt!2144609 (t!373930 s!2326)))))

(assert (= (and d!1685565 (not res!2219514)) b!5228368))

(assert (=> d!1685565 m!6274376))

(assert (=> d!1685565 m!6274366))

(declare-fun m!6274722 () Bool)

(assert (=> d!1685565 m!6274722))

(assert (=> b!5228368 m!6274276))

(assert (=> b!5227995 d!1685565))

(declare-fun d!1685567 () Bool)

(declare-fun c!902791 () Bool)

(assert (=> d!1685567 (= c!902791 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253859 () Bool)

(assert (=> d!1685567 (= (matchZipper!1062 lt!2144588 (t!373930 s!2326)) e!3253859)))

(declare-fun b!5228369 () Bool)

(assert (=> b!5228369 (= e!3253859 (nullableZipper!1242 lt!2144588))))

(declare-fun b!5228370 () Bool)

(assert (=> b!5228370 (= e!3253859 (matchZipper!1062 (derivationStepZipper!1086 lt!2144588 (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685567 c!902791) b!5228369))

(assert (= (and d!1685567 (not c!902791)) b!5228370))

(assert (=> d!1685567 m!6274590))

(declare-fun m!6274724 () Bool)

(assert (=> b!5228369 m!6274724))

(assert (=> b!5228370 m!6274594))

(assert (=> b!5228370 m!6274594))

(declare-fun m!6274726 () Bool)

(assert (=> b!5228370 m!6274726))

(assert (=> b!5228370 m!6274598))

(assert (=> b!5228370 m!6274726))

(assert (=> b!5228370 m!6274598))

(declare-fun m!6274728 () Bool)

(assert (=> b!5228370 m!6274728))

(assert (=> b!5227995 d!1685567))

(declare-fun d!1685569 () Bool)

(declare-fun c!902792 () Bool)

(assert (=> d!1685569 (= c!902792 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253860 () Bool)

(assert (=> d!1685569 (= (matchZipper!1062 (set.union lt!2144588 lt!2144609) (t!373930 s!2326)) e!3253860)))

(declare-fun b!5228371 () Bool)

(assert (=> b!5228371 (= e!3253860 (nullableZipper!1242 (set.union lt!2144588 lt!2144609)))))

(declare-fun b!5228372 () Bool)

(assert (=> b!5228372 (= e!3253860 (matchZipper!1062 (derivationStepZipper!1086 (set.union lt!2144588 lt!2144609) (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685569 c!902792) b!5228371))

(assert (= (and d!1685569 (not c!902792)) b!5228372))

(assert (=> d!1685569 m!6274590))

(declare-fun m!6274730 () Bool)

(assert (=> b!5228371 m!6274730))

(assert (=> b!5228372 m!6274594))

(assert (=> b!5228372 m!6274594))

(declare-fun m!6274732 () Bool)

(assert (=> b!5228372 m!6274732))

(assert (=> b!5228372 m!6274598))

(assert (=> b!5228372 m!6274732))

(assert (=> b!5228372 m!6274598))

(declare-fun m!6274734 () Bool)

(assert (=> b!5228372 m!6274734))

(assert (=> b!5227995 d!1685569))

(declare-fun call!369597 () Bool)

(declare-fun c!902797 () Bool)

(declare-fun c!902798 () Bool)

(declare-fun bm!369591 () Bool)

(assert (=> bm!369591 (= call!369597 (validRegex!6554 (ite c!902798 (reg!15147 r!7292) (ite c!902797 (regTwo!30149 r!7292) (regTwo!30148 r!7292)))))))

(declare-fun b!5228391 () Bool)

(declare-fun res!2219527 () Bool)

(declare-fun e!3253878 () Bool)

(assert (=> b!5228391 (=> (not res!2219527) (not e!3253878))))

(declare-fun call!369598 () Bool)

(assert (=> b!5228391 (= res!2219527 call!369598)))

(declare-fun e!3253881 () Bool)

(assert (=> b!5228391 (= e!3253881 e!3253878)))

(declare-fun b!5228392 () Bool)

(declare-fun e!3253880 () Bool)

(assert (=> b!5228392 (= e!3253880 e!3253881)))

(assert (=> b!5228392 (= c!902797 (is-Union!14818 r!7292))))

(declare-fun b!5228393 () Bool)

(declare-fun call!369596 () Bool)

(assert (=> b!5228393 (= e!3253878 call!369596)))

(declare-fun bm!369592 () Bool)

(assert (=> bm!369592 (= call!369598 (validRegex!6554 (ite c!902797 (regOne!30149 r!7292) (regOne!30148 r!7292))))))

(declare-fun b!5228394 () Bool)

(declare-fun e!3253879 () Bool)

(assert (=> b!5228394 (= e!3253879 e!3253880)))

(assert (=> b!5228394 (= c!902798 (is-Star!14818 r!7292))))

(declare-fun d!1685571 () Bool)

(declare-fun res!2219528 () Bool)

(assert (=> d!1685571 (=> res!2219528 e!3253879)))

(assert (=> d!1685571 (= res!2219528 (is-ElementMatch!14818 r!7292))))

(assert (=> d!1685571 (= (validRegex!6554 r!7292) e!3253879)))

(declare-fun b!5228395 () Bool)

(declare-fun e!3253875 () Bool)

(assert (=> b!5228395 (= e!3253875 call!369597)))

(declare-fun b!5228396 () Bool)

(assert (=> b!5228396 (= e!3253880 e!3253875)))

(declare-fun res!2219529 () Bool)

(assert (=> b!5228396 (= res!2219529 (not (nullable!4987 (reg!15147 r!7292))))))

(assert (=> b!5228396 (=> (not res!2219529) (not e!3253875))))

(declare-fun b!5228397 () Bool)

(declare-fun res!2219526 () Bool)

(declare-fun e!3253877 () Bool)

(assert (=> b!5228397 (=> res!2219526 e!3253877)))

(assert (=> b!5228397 (= res!2219526 (not (is-Concat!23663 r!7292)))))

(assert (=> b!5228397 (= e!3253881 e!3253877)))

(declare-fun b!5228398 () Bool)

(declare-fun e!3253876 () Bool)

(assert (=> b!5228398 (= e!3253876 call!369596)))

(declare-fun b!5228399 () Bool)

(assert (=> b!5228399 (= e!3253877 e!3253876)))

(declare-fun res!2219525 () Bool)

(assert (=> b!5228399 (=> (not res!2219525) (not e!3253876))))

(assert (=> b!5228399 (= res!2219525 call!369598)))

(declare-fun bm!369593 () Bool)

(assert (=> bm!369593 (= call!369596 call!369597)))

(assert (= (and d!1685571 (not res!2219528)) b!5228394))

(assert (= (and b!5228394 c!902798) b!5228396))

(assert (= (and b!5228394 (not c!902798)) b!5228392))

(assert (= (and b!5228396 res!2219529) b!5228395))

(assert (= (and b!5228392 c!902797) b!5228391))

(assert (= (and b!5228392 (not c!902797)) b!5228397))

(assert (= (and b!5228391 res!2219527) b!5228393))

(assert (= (and b!5228397 (not res!2219526)) b!5228399))

(assert (= (and b!5228399 res!2219525) b!5228398))

(assert (= (or b!5228393 b!5228398) bm!369593))

(assert (= (or b!5228391 b!5228399) bm!369592))

(assert (= (or b!5228395 bm!369593) bm!369591))

(declare-fun m!6274736 () Bool)

(assert (=> bm!369591 m!6274736))

(declare-fun m!6274738 () Bool)

(assert (=> bm!369592 m!6274738))

(declare-fun m!6274740 () Bool)

(assert (=> b!5228396 m!6274740))

(assert (=> start!552888 d!1685571))

(assert (=> b!5227993 d!1685567))

(declare-fun d!1685573 () Bool)

(declare-fun c!902799 () Bool)

(assert (=> d!1685573 (= c!902799 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253882 () Bool)

(assert (=> d!1685573 (= (matchZipper!1062 lt!2144605 (t!373930 s!2326)) e!3253882)))

(declare-fun b!5228400 () Bool)

(assert (=> b!5228400 (= e!3253882 (nullableZipper!1242 lt!2144605))))

(declare-fun b!5228401 () Bool)

(assert (=> b!5228401 (= e!3253882 (matchZipper!1062 (derivationStepZipper!1086 lt!2144605 (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685573 c!902799) b!5228400))

(assert (= (and d!1685573 (not c!902799)) b!5228401))

(assert (=> d!1685573 m!6274590))

(declare-fun m!6274742 () Bool)

(assert (=> b!5228400 m!6274742))

(assert (=> b!5228401 m!6274594))

(assert (=> b!5228401 m!6274594))

(declare-fun m!6274744 () Bool)

(assert (=> b!5228401 m!6274744))

(assert (=> b!5228401 m!6274598))

(assert (=> b!5228401 m!6274744))

(assert (=> b!5228401 m!6274598))

(declare-fun m!6274746 () Bool)

(assert (=> b!5228401 m!6274746))

(assert (=> b!5227993 d!1685573))

(declare-fun d!1685575 () Bool)

(declare-fun c!902800 () Bool)

(assert (=> d!1685575 (= c!902800 (isEmpty!32559 (t!373930 s!2326)))))

(declare-fun e!3253883 () Bool)

(assert (=> d!1685575 (= (matchZipper!1062 lt!2144607 (t!373930 s!2326)) e!3253883)))

(declare-fun b!5228402 () Bool)

(assert (=> b!5228402 (= e!3253883 (nullableZipper!1242 lt!2144607))))

(declare-fun b!5228403 () Bool)

(assert (=> b!5228403 (= e!3253883 (matchZipper!1062 (derivationStepZipper!1086 lt!2144607 (head!11203 (t!373930 s!2326))) (tail!10300 (t!373930 s!2326))))))

(assert (= (and d!1685575 c!902800) b!5228402))

(assert (= (and d!1685575 (not c!902800)) b!5228403))

(assert (=> d!1685575 m!6274590))

(declare-fun m!6274748 () Bool)

(assert (=> b!5228402 m!6274748))

(assert (=> b!5228403 m!6274594))

(assert (=> b!5228403 m!6274594))

(declare-fun m!6274750 () Bool)

(assert (=> b!5228403 m!6274750))

(assert (=> b!5228403 m!6274598))

(assert (=> b!5228403 m!6274750))

(assert (=> b!5228403 m!6274598))

(declare-fun m!6274752 () Bool)

(assert (=> b!5228403 m!6274752))

(assert (=> b!5227993 d!1685575))

(declare-fun d!1685577 () Bool)

(declare-fun e!3253884 () Bool)

(assert (=> d!1685577 (= (matchZipper!1062 (set.union lt!2144607 lt!2144603) (t!373930 s!2326)) e!3253884)))

(declare-fun res!2219530 () Bool)

(assert (=> d!1685577 (=> res!2219530 e!3253884)))

(assert (=> d!1685577 (= res!2219530 (matchZipper!1062 lt!2144607 (t!373930 s!2326)))))

(declare-fun lt!2144740 () Unit!152558)

(assert (=> d!1685577 (= lt!2144740 (choose!38885 lt!2144607 lt!2144603 (t!373930 s!2326)))))

(assert (=> d!1685577 (= (lemmaZipperConcatMatchesSameAsBothZippers!55 lt!2144607 lt!2144603 (t!373930 s!2326)) lt!2144740)))

(declare-fun b!5228404 () Bool)

(assert (=> b!5228404 (= e!3253884 (matchZipper!1062 lt!2144603 (t!373930 s!2326)))))

(assert (= (and d!1685577 (not res!2219530)) b!5228404))

(declare-fun m!6274754 () Bool)

(assert (=> d!1685577 m!6274754))

(assert (=> d!1685577 m!6274370))

(declare-fun m!6274756 () Bool)

(assert (=> d!1685577 m!6274756))

(assert (=> b!5228404 m!6274292))

(assert (=> b!5227993 d!1685577))

(declare-fun bs!1213849 () Bool)

(declare-fun b!5228446 () Bool)

(assert (= bs!1213849 (and b!5228446 d!1685559)))

(declare-fun lambda!262580 () Int)

(assert (=> bs!1213849 (not (= lambda!262580 lambda!262569))))

(declare-fun bs!1213850 () Bool)

(assert (= bs!1213850 (and b!5228446 b!5228014)))

(assert (=> bs!1213850 (not (= lambda!262580 lambda!262533))))

(assert (=> bs!1213850 (not (= lambda!262580 lambda!262532))))

(declare-fun bs!1213851 () Bool)

(assert (= bs!1213851 (and b!5228446 d!1685561)))

(assert (=> bs!1213851 (not (= lambda!262580 lambda!262575))))

(assert (=> bs!1213851 (not (= lambda!262580 lambda!262574))))

(assert (=> b!5228446 true))

(assert (=> b!5228446 true))

(declare-fun bs!1213852 () Bool)

(declare-fun b!5228447 () Bool)

(assert (= bs!1213852 (and b!5228447 d!1685559)))

(declare-fun lambda!262581 () Int)

(assert (=> bs!1213852 (not (= lambda!262581 lambda!262569))))

(declare-fun bs!1213853 () Bool)

(assert (= bs!1213853 (and b!5228447 b!5228014)))

(assert (=> bs!1213853 (= lambda!262581 lambda!262533)))

(assert (=> bs!1213853 (not (= lambda!262581 lambda!262532))))

(declare-fun bs!1213854 () Bool)

(assert (= bs!1213854 (and b!5228447 d!1685561)))

(assert (=> bs!1213854 (not (= lambda!262581 lambda!262574))))

(declare-fun bs!1213855 () Bool)

(assert (= bs!1213855 (and b!5228447 b!5228446)))

(assert (=> bs!1213855 (not (= lambda!262581 lambda!262580))))

(assert (=> bs!1213854 (= lambda!262581 lambda!262575)))

(assert (=> b!5228447 true))

(assert (=> b!5228447 true))

(declare-fun b!5228437 () Bool)

(declare-fun c!902809 () Bool)

(assert (=> b!5228437 (= c!902809 (is-Union!14818 r!7292))))

(declare-fun e!3253909 () Bool)

(declare-fun e!3253905 () Bool)

(assert (=> b!5228437 (= e!3253909 e!3253905)))

(declare-fun b!5228438 () Bool)

(declare-fun e!3253908 () Bool)

(assert (=> b!5228438 (= e!3253905 e!3253908)))

(declare-fun res!2219549 () Bool)

(assert (=> b!5228438 (= res!2219549 (matchRSpec!1921 (regOne!30149 r!7292) s!2326))))

(assert (=> b!5228438 (=> res!2219549 e!3253908)))

(declare-fun d!1685579 () Bool)

(declare-fun c!902812 () Bool)

(assert (=> d!1685579 (= c!902812 (is-EmptyExpr!14818 r!7292))))

(declare-fun e!3253903 () Bool)

(assert (=> d!1685579 (= (matchRSpec!1921 r!7292 s!2326) e!3253903)))

(declare-fun b!5228439 () Bool)

(declare-fun e!3253904 () Bool)

(assert (=> b!5228439 (= e!3253903 e!3253904)))

(declare-fun res!2219548 () Bool)

(assert (=> b!5228439 (= res!2219548 (not (is-EmptyLang!14818 r!7292)))))

(assert (=> b!5228439 (=> (not res!2219548) (not e!3253904))))

(declare-fun b!5228440 () Bool)

(declare-fun call!369603 () Bool)

(assert (=> b!5228440 (= e!3253903 call!369603)))

(declare-fun b!5228441 () Bool)

(declare-fun e!3253906 () Bool)

(assert (=> b!5228441 (= e!3253905 e!3253906)))

(declare-fun c!902810 () Bool)

(assert (=> b!5228441 (= c!902810 (is-Star!14818 r!7292))))

(declare-fun b!5228442 () Bool)

(declare-fun res!2219547 () Bool)

(declare-fun e!3253907 () Bool)

(assert (=> b!5228442 (=> res!2219547 e!3253907)))

(assert (=> b!5228442 (= res!2219547 call!369603)))

(assert (=> b!5228442 (= e!3253906 e!3253907)))

(declare-fun b!5228443 () Bool)

(declare-fun c!902811 () Bool)

(assert (=> b!5228443 (= c!902811 (is-ElementMatch!14818 r!7292))))

(assert (=> b!5228443 (= e!3253904 e!3253909)))

(declare-fun bm!369598 () Bool)

(declare-fun call!369604 () Bool)

(assert (=> bm!369598 (= call!369604 (Exists!1999 (ite c!902810 lambda!262580 lambda!262581)))))

(declare-fun b!5228444 () Bool)

(assert (=> b!5228444 (= e!3253909 (= s!2326 (Cons!60629 (c!902692 r!7292) Nil!60629)))))

(declare-fun bm!369599 () Bool)

(assert (=> bm!369599 (= call!369603 (isEmpty!32559 s!2326))))

(declare-fun b!5228445 () Bool)

(assert (=> b!5228445 (= e!3253908 (matchRSpec!1921 (regTwo!30149 r!7292) s!2326))))

(assert (=> b!5228446 (= e!3253907 call!369604)))

(assert (=> b!5228447 (= e!3253906 call!369604)))

(assert (= (and d!1685579 c!902812) b!5228440))

(assert (= (and d!1685579 (not c!902812)) b!5228439))

(assert (= (and b!5228439 res!2219548) b!5228443))

(assert (= (and b!5228443 c!902811) b!5228444))

(assert (= (and b!5228443 (not c!902811)) b!5228437))

(assert (= (and b!5228437 c!902809) b!5228438))

(assert (= (and b!5228437 (not c!902809)) b!5228441))

(assert (= (and b!5228438 (not res!2219549)) b!5228445))

(assert (= (and b!5228441 c!902810) b!5228442))

(assert (= (and b!5228441 (not c!902810)) b!5228447))

(assert (= (and b!5228442 (not res!2219547)) b!5228446))

(assert (= (or b!5228446 b!5228447) bm!369598))

(assert (= (or b!5228440 b!5228442) bm!369599))

(declare-fun m!6274758 () Bool)

(assert (=> b!5228438 m!6274758))

(declare-fun m!6274760 () Bool)

(assert (=> bm!369598 m!6274760))

(assert (=> bm!369599 m!6274496))

(declare-fun m!6274762 () Bool)

(assert (=> b!5228445 m!6274762))

(assert (=> b!5228013 d!1685579))

(declare-fun b!5228476 () Bool)

(declare-fun e!3253927 () Bool)

(declare-fun e!3253928 () Bool)

(assert (=> b!5228476 (= e!3253927 e!3253928)))

(declare-fun res!2219573 () Bool)

(assert (=> b!5228476 (=> (not res!2219573) (not e!3253928))))

(declare-fun lt!2144743 () Bool)

(assert (=> b!5228476 (= res!2219573 (not lt!2144743))))

(declare-fun b!5228477 () Bool)

(declare-fun e!3253925 () Bool)

(assert (=> b!5228477 (= e!3253925 (nullable!4987 r!7292))))

(declare-fun b!5228478 () Bool)

(declare-fun e!3253929 () Bool)

(declare-fun call!369607 () Bool)

(assert (=> b!5228478 (= e!3253929 (= lt!2144743 call!369607))))

(declare-fun b!5228479 () Bool)

(declare-fun e!3253926 () Bool)

(assert (=> b!5228479 (= e!3253926 (not (= (head!11203 s!2326) (c!902692 r!7292))))))

(declare-fun b!5228481 () Bool)

(declare-fun res!2219570 () Bool)

(declare-fun e!3253924 () Bool)

(assert (=> b!5228481 (=> (not res!2219570) (not e!3253924))))

(assert (=> b!5228481 (= res!2219570 (not call!369607))))

(declare-fun b!5228482 () Bool)

(assert (=> b!5228482 (= e!3253928 e!3253926)))

(declare-fun res!2219567 () Bool)

(assert (=> b!5228482 (=> res!2219567 e!3253926)))

(assert (=> b!5228482 (= res!2219567 call!369607)))

(declare-fun b!5228483 () Bool)

(declare-fun res!2219569 () Bool)

(assert (=> b!5228483 (=> res!2219569 e!3253927)))

(assert (=> b!5228483 (= res!2219569 e!3253924)))

(declare-fun res!2219571 () Bool)

(assert (=> b!5228483 (=> (not res!2219571) (not e!3253924))))

(assert (=> b!5228483 (= res!2219571 lt!2144743)))

(declare-fun b!5228484 () Bool)

(declare-fun res!2219566 () Bool)

(assert (=> b!5228484 (=> res!2219566 e!3253927)))

(assert (=> b!5228484 (= res!2219566 (not (is-ElementMatch!14818 r!7292)))))

(declare-fun e!3253930 () Bool)

(assert (=> b!5228484 (= e!3253930 e!3253927)))

(declare-fun b!5228485 () Bool)

(assert (=> b!5228485 (= e!3253924 (= (head!11203 s!2326) (c!902692 r!7292)))))

(declare-fun b!5228486 () Bool)

(declare-fun res!2219572 () Bool)

(assert (=> b!5228486 (=> res!2219572 e!3253926)))

(assert (=> b!5228486 (= res!2219572 (not (isEmpty!32559 (tail!10300 s!2326))))))

(declare-fun b!5228487 () Bool)

(declare-fun res!2219568 () Bool)

(assert (=> b!5228487 (=> (not res!2219568) (not e!3253924))))

(assert (=> b!5228487 (= res!2219568 (isEmpty!32559 (tail!10300 s!2326)))))

(declare-fun b!5228488 () Bool)

(assert (=> b!5228488 (= e!3253930 (not lt!2144743))))

(declare-fun d!1685581 () Bool)

(assert (=> d!1685581 e!3253929))

(declare-fun c!902820 () Bool)

(assert (=> d!1685581 (= c!902820 (is-EmptyExpr!14818 r!7292))))

(assert (=> d!1685581 (= lt!2144743 e!3253925)))

(declare-fun c!902819 () Bool)

(assert (=> d!1685581 (= c!902819 (isEmpty!32559 s!2326))))

(assert (=> d!1685581 (validRegex!6554 r!7292)))

(assert (=> d!1685581 (= (matchR!7003 r!7292 s!2326) lt!2144743)))

(declare-fun b!5228480 () Bool)

(declare-fun derivativeStep!4064 (Regex!14818 C!29906) Regex!14818)

(assert (=> b!5228480 (= e!3253925 (matchR!7003 (derivativeStep!4064 r!7292 (head!11203 s!2326)) (tail!10300 s!2326)))))

(declare-fun b!5228489 () Bool)

(assert (=> b!5228489 (= e!3253929 e!3253930)))

(declare-fun c!902821 () Bool)

(assert (=> b!5228489 (= c!902821 (is-EmptyLang!14818 r!7292))))

(declare-fun bm!369602 () Bool)

(assert (=> bm!369602 (= call!369607 (isEmpty!32559 s!2326))))

(assert (= (and d!1685581 c!902819) b!5228477))

(assert (= (and d!1685581 (not c!902819)) b!5228480))

(assert (= (and d!1685581 c!902820) b!5228478))

(assert (= (and d!1685581 (not c!902820)) b!5228489))

(assert (= (and b!5228489 c!902821) b!5228488))

(assert (= (and b!5228489 (not c!902821)) b!5228484))

(assert (= (and b!5228484 (not res!2219566)) b!5228483))

(assert (= (and b!5228483 res!2219571) b!5228481))

(assert (= (and b!5228481 res!2219570) b!5228487))

(assert (= (and b!5228487 res!2219568) b!5228485))

(assert (= (and b!5228483 (not res!2219569)) b!5228476))

(assert (= (and b!5228476 res!2219573) b!5228482))

(assert (= (and b!5228482 (not res!2219567)) b!5228486))

(assert (= (and b!5228486 (not res!2219572)) b!5228479))

(assert (= (or b!5228478 b!5228481 b!5228482) bm!369602))

(assert (=> b!5228487 m!6274504))

(assert (=> b!5228487 m!6274504))

(declare-fun m!6274764 () Bool)

(assert (=> b!5228487 m!6274764))

(assert (=> b!5228480 m!6274500))

(assert (=> b!5228480 m!6274500))

(declare-fun m!6274766 () Bool)

(assert (=> b!5228480 m!6274766))

(assert (=> b!5228480 m!6274504))

(assert (=> b!5228480 m!6274766))

(assert (=> b!5228480 m!6274504))

(declare-fun m!6274768 () Bool)

(assert (=> b!5228480 m!6274768))

(assert (=> bm!369602 m!6274496))

(declare-fun m!6274770 () Bool)

(assert (=> b!5228477 m!6274770))

(assert (=> d!1685581 m!6274496))

(assert (=> d!1685581 m!6274314))

(assert (=> b!5228485 m!6274500))

(assert (=> b!5228486 m!6274504))

(assert (=> b!5228486 m!6274504))

(assert (=> b!5228486 m!6274764))

(assert (=> b!5228479 m!6274500))

(assert (=> b!5228013 d!1685581))

(declare-fun d!1685583 () Bool)

(assert (=> d!1685583 (= (matchR!7003 r!7292 s!2326) (matchRSpec!1921 r!7292 s!2326))))

(declare-fun lt!2144746 () Unit!152558)

(declare-fun choose!38889 (Regex!14818 List!60753) Unit!152558)

(assert (=> d!1685583 (= lt!2144746 (choose!38889 r!7292 s!2326))))

(assert (=> d!1685583 (validRegex!6554 r!7292)))

(assert (=> d!1685583 (= (mainMatchTheorem!1921 r!7292 s!2326) lt!2144746)))

(declare-fun bs!1213856 () Bool)

(assert (= bs!1213856 d!1685583))

(assert (=> bs!1213856 m!6274286))

(assert (=> bs!1213856 m!6274284))

(declare-fun m!6274772 () Bool)

(assert (=> bs!1213856 m!6274772))

(assert (=> bs!1213856 m!6274314))

(assert (=> b!5228013 d!1685583))

(assert (=> b!5227987 d!1685541))

(declare-fun d!1685585 () Bool)

(declare-fun lt!2144749 () Regex!14818)

(assert (=> d!1685585 (validRegex!6554 lt!2144749)))

(assert (=> d!1685585 (= lt!2144749 (generalisedUnion!747 (unfocusZipperList!260 zl!343)))))

(assert (=> d!1685585 (= (unfocusZipper!560 zl!343) lt!2144749)))

(declare-fun bs!1213857 () Bool)

(assert (= bs!1213857 d!1685585))

(declare-fun m!6274774 () Bool)

(assert (=> bs!1213857 m!6274774))

(assert (=> bs!1213857 m!6274296))

(assert (=> bs!1213857 m!6274296))

(assert (=> bs!1213857 m!6274298))

(assert (=> b!5227985 d!1685585))

(assert (=> b!5227986 d!1685549))

(assert (=> b!5228006 d!1685541))

(assert (=> b!5228010 d!1685549))

(declare-fun d!1685587 () Bool)

(declare-fun res!2219578 () Bool)

(declare-fun e!3253935 () Bool)

(assert (=> d!1685587 (=> res!2219578 e!3253935)))

(assert (=> d!1685587 (= res!2219578 (is-Nil!60630 (exprs!4702 (h!67079 zl!343))))))

(assert (=> d!1685587 (= (forall!14250 (exprs!4702 (h!67079 zl!343)) lambda!262535) e!3253935)))

(declare-fun b!5228494 () Bool)

(declare-fun e!3253936 () Bool)

(assert (=> b!5228494 (= e!3253935 e!3253936)))

(declare-fun res!2219579 () Bool)

(assert (=> b!5228494 (=> (not res!2219579) (not e!3253936))))

(declare-fun dynLambda!23960 (Int Regex!14818) Bool)

(assert (=> b!5228494 (= res!2219579 (dynLambda!23960 lambda!262535 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun b!5228495 () Bool)

(assert (=> b!5228495 (= e!3253936 (forall!14250 (t!373931 (exprs!4702 (h!67079 zl!343))) lambda!262535))))

(assert (= (and d!1685587 (not res!2219578)) b!5228494))

(assert (= (and b!5228494 res!2219579) b!5228495))

(declare-fun b_lambda!202147 () Bool)

(assert (=> (not b_lambda!202147) (not b!5228494)))

(declare-fun m!6274776 () Bool)

(assert (=> b!5228494 m!6274776))

(declare-fun m!6274778 () Bool)

(assert (=> b!5228495 m!6274778))

(assert (=> b!5227988 d!1685587))

(declare-fun b!5228500 () Bool)

(declare-fun e!3253939 () Bool)

(declare-fun tp!1465308 () Bool)

(assert (=> b!5228500 (= e!3253939 (and tp_is_empty!38889 tp!1465308))))

(assert (=> b!5228007 (= tp!1465270 e!3253939)))

(assert (= (and b!5228007 (is-Cons!60629 (t!373930 s!2326))) b!5228500))

(declare-fun b!5228505 () Bool)

(declare-fun e!3253942 () Bool)

(declare-fun tp!1465313 () Bool)

(declare-fun tp!1465314 () Bool)

(assert (=> b!5228505 (= e!3253942 (and tp!1465313 tp!1465314))))

(assert (=> b!5228012 (= tp!1465266 e!3253942)))

(assert (= (and b!5228012 (is-Cons!60630 (exprs!4702 (h!67079 zl!343)))) b!5228505))

(declare-fun b!5228516 () Bool)

(declare-fun e!3253945 () Bool)

(assert (=> b!5228516 (= e!3253945 tp_is_empty!38889)))

(declare-fun b!5228517 () Bool)

(declare-fun tp!1465328 () Bool)

(declare-fun tp!1465326 () Bool)

(assert (=> b!5228517 (= e!3253945 (and tp!1465328 tp!1465326))))

(declare-fun b!5228518 () Bool)

(declare-fun tp!1465329 () Bool)

(assert (=> b!5228518 (= e!3253945 tp!1465329)))

(declare-fun b!5228519 () Bool)

(declare-fun tp!1465325 () Bool)

(declare-fun tp!1465327 () Bool)

(assert (=> b!5228519 (= e!3253945 (and tp!1465325 tp!1465327))))

(assert (=> b!5227980 (= tp!1465274 e!3253945)))

(assert (= (and b!5227980 (is-ElementMatch!14818 (regOne!30148 r!7292))) b!5228516))

(assert (= (and b!5227980 (is-Concat!23663 (regOne!30148 r!7292))) b!5228517))

(assert (= (and b!5227980 (is-Star!14818 (regOne!30148 r!7292))) b!5228518))

(assert (= (and b!5227980 (is-Union!14818 (regOne!30148 r!7292))) b!5228519))

(declare-fun b!5228520 () Bool)

(declare-fun e!3253946 () Bool)

(assert (=> b!5228520 (= e!3253946 tp_is_empty!38889)))

(declare-fun b!5228521 () Bool)

(declare-fun tp!1465333 () Bool)

(declare-fun tp!1465331 () Bool)

(assert (=> b!5228521 (= e!3253946 (and tp!1465333 tp!1465331))))

(declare-fun b!5228522 () Bool)

(declare-fun tp!1465334 () Bool)

(assert (=> b!5228522 (= e!3253946 tp!1465334)))

(declare-fun b!5228523 () Bool)

(declare-fun tp!1465330 () Bool)

(declare-fun tp!1465332 () Bool)

(assert (=> b!5228523 (= e!3253946 (and tp!1465330 tp!1465332))))

(assert (=> b!5227980 (= tp!1465273 e!3253946)))

(assert (= (and b!5227980 (is-ElementMatch!14818 (regTwo!30148 r!7292))) b!5228520))

(assert (= (and b!5227980 (is-Concat!23663 (regTwo!30148 r!7292))) b!5228521))

(assert (= (and b!5227980 (is-Star!14818 (regTwo!30148 r!7292))) b!5228522))

(assert (= (and b!5227980 (is-Union!14818 (regTwo!30148 r!7292))) b!5228523))

(declare-fun b!5228531 () Bool)

(declare-fun e!3253952 () Bool)

(declare-fun tp!1465339 () Bool)

(assert (=> b!5228531 (= e!3253952 tp!1465339)))

(declare-fun b!5228530 () Bool)

(declare-fun e!3253951 () Bool)

(declare-fun tp!1465340 () Bool)

(assert (=> b!5228530 (= e!3253951 (and (inv!80293 (h!67079 (t!373932 zl!343))) e!3253952 tp!1465340))))

(assert (=> b!5227991 (= tp!1465267 e!3253951)))

(assert (= b!5228530 b!5228531))

(assert (= (and b!5227991 (is-Cons!60631 (t!373932 zl!343))) b!5228530))

(declare-fun m!6274780 () Bool)

(assert (=> b!5228530 m!6274780))

(declare-fun b!5228532 () Bool)

(declare-fun e!3253953 () Bool)

(declare-fun tp!1465341 () Bool)

(declare-fun tp!1465342 () Bool)

(assert (=> b!5228532 (= e!3253953 (and tp!1465341 tp!1465342))))

(assert (=> b!5227984 (= tp!1465271 e!3253953)))

(assert (= (and b!5227984 (is-Cons!60630 (exprs!4702 setElem!33284))) b!5228532))

(declare-fun b!5228533 () Bool)

(declare-fun e!3253954 () Bool)

(assert (=> b!5228533 (= e!3253954 tp_is_empty!38889)))

(declare-fun b!5228534 () Bool)

(declare-fun tp!1465346 () Bool)

(declare-fun tp!1465344 () Bool)

(assert (=> b!5228534 (= e!3253954 (and tp!1465346 tp!1465344))))

(declare-fun b!5228535 () Bool)

(declare-fun tp!1465347 () Bool)

(assert (=> b!5228535 (= e!3253954 tp!1465347)))

(declare-fun b!5228536 () Bool)

(declare-fun tp!1465343 () Bool)

(declare-fun tp!1465345 () Bool)

(assert (=> b!5228536 (= e!3253954 (and tp!1465343 tp!1465345))))

(assert (=> b!5227989 (= tp!1465275 e!3253954)))

(assert (= (and b!5227989 (is-ElementMatch!14818 (regOne!30149 r!7292))) b!5228533))

(assert (= (and b!5227989 (is-Concat!23663 (regOne!30149 r!7292))) b!5228534))

(assert (= (and b!5227989 (is-Star!14818 (regOne!30149 r!7292))) b!5228535))

(assert (= (and b!5227989 (is-Union!14818 (regOne!30149 r!7292))) b!5228536))

(declare-fun b!5228537 () Bool)

(declare-fun e!3253955 () Bool)

(assert (=> b!5228537 (= e!3253955 tp_is_empty!38889)))

(declare-fun b!5228538 () Bool)

(declare-fun tp!1465351 () Bool)

(declare-fun tp!1465349 () Bool)

(assert (=> b!5228538 (= e!3253955 (and tp!1465351 tp!1465349))))

(declare-fun b!5228539 () Bool)

(declare-fun tp!1465352 () Bool)

(assert (=> b!5228539 (= e!3253955 tp!1465352)))

(declare-fun b!5228540 () Bool)

(declare-fun tp!1465348 () Bool)

(declare-fun tp!1465350 () Bool)

(assert (=> b!5228540 (= e!3253955 (and tp!1465348 tp!1465350))))

(assert (=> b!5227989 (= tp!1465268 e!3253955)))

(assert (= (and b!5227989 (is-ElementMatch!14818 (regTwo!30149 r!7292))) b!5228537))

(assert (= (and b!5227989 (is-Concat!23663 (regTwo!30149 r!7292))) b!5228538))

(assert (= (and b!5227989 (is-Star!14818 (regTwo!30149 r!7292))) b!5228539))

(assert (= (and b!5227989 (is-Union!14818 (regTwo!30149 r!7292))) b!5228540))

(declare-fun condSetEmpty!33290 () Bool)

(assert (=> setNonEmpty!33284 (= condSetEmpty!33290 (= setRest!33284 (as set.empty (Set Context!8404))))))

(declare-fun setRes!33290 () Bool)

(assert (=> setNonEmpty!33284 (= tp!1465272 setRes!33290)))

(declare-fun setIsEmpty!33290 () Bool)

(assert (=> setIsEmpty!33290 setRes!33290))

(declare-fun setElem!33290 () Context!8404)

(declare-fun setNonEmpty!33290 () Bool)

(declare-fun tp!1465358 () Bool)

(declare-fun e!3253958 () Bool)

(assert (=> setNonEmpty!33290 (= setRes!33290 (and tp!1465358 (inv!80293 setElem!33290) e!3253958))))

(declare-fun setRest!33290 () (Set Context!8404))

(assert (=> setNonEmpty!33290 (= setRest!33284 (set.union (set.insert setElem!33290 (as set.empty (Set Context!8404))) setRest!33290))))

(declare-fun b!5228545 () Bool)

(declare-fun tp!1465357 () Bool)

(assert (=> b!5228545 (= e!3253958 tp!1465357)))

(assert (= (and setNonEmpty!33284 condSetEmpty!33290) setIsEmpty!33290))

(assert (= (and setNonEmpty!33284 (not condSetEmpty!33290)) setNonEmpty!33290))

(assert (= setNonEmpty!33290 b!5228545))

(declare-fun m!6274782 () Bool)

(assert (=> setNonEmpty!33290 m!6274782))

(declare-fun b!5228546 () Bool)

(declare-fun e!3253959 () Bool)

(assert (=> b!5228546 (= e!3253959 tp_is_empty!38889)))

(declare-fun b!5228547 () Bool)

(declare-fun tp!1465362 () Bool)

(declare-fun tp!1465360 () Bool)

(assert (=> b!5228547 (= e!3253959 (and tp!1465362 tp!1465360))))

(declare-fun b!5228548 () Bool)

(declare-fun tp!1465363 () Bool)

(assert (=> b!5228548 (= e!3253959 tp!1465363)))

(declare-fun b!5228549 () Bool)

(declare-fun tp!1465359 () Bool)

(declare-fun tp!1465361 () Bool)

(assert (=> b!5228549 (= e!3253959 (and tp!1465359 tp!1465361))))

(assert (=> b!5228008 (= tp!1465269 e!3253959)))

(assert (= (and b!5228008 (is-ElementMatch!14818 (reg!15147 r!7292))) b!5228546))

(assert (= (and b!5228008 (is-Concat!23663 (reg!15147 r!7292))) b!5228547))

(assert (= (and b!5228008 (is-Star!14818 (reg!15147 r!7292))) b!5228548))

(assert (= (and b!5228008 (is-Union!14818 (reg!15147 r!7292))) b!5228549))

(declare-fun b_lambda!202149 () Bool)

(assert (= b_lambda!202143 (or b!5228001 b_lambda!202149)))

(declare-fun bs!1213858 () Bool)

(declare-fun d!1685589 () Bool)

(assert (= bs!1213858 (and d!1685589 b!5228001)))

(assert (=> bs!1213858 (= (dynLambda!23959 lambda!262534 lt!2144602) (derivationStepZipperUp!190 lt!2144602 (h!67077 s!2326)))))

(assert (=> bs!1213858 m!6274334))

(assert (=> d!1685497 d!1685589))

(declare-fun b_lambda!202151 () Bool)

(assert (= b_lambda!202145 (or b!5228001 b_lambda!202151)))

(declare-fun bs!1213859 () Bool)

(declare-fun d!1685591 () Bool)

(assert (= bs!1213859 (and d!1685591 b!5228001)))

(assert (=> bs!1213859 (= (dynLambda!23959 lambda!262534 (h!67079 zl!343)) (derivationStepZipperUp!190 (h!67079 zl!343) (h!67077 s!2326)))))

(assert (=> bs!1213859 m!6274302))

(assert (=> d!1685509 d!1685591))

(declare-fun b_lambda!202153 () Bool)

(assert (= b_lambda!202147 (or b!5227988 b_lambda!202153)))

(declare-fun bs!1213860 () Bool)

(declare-fun d!1685593 () Bool)

(assert (= bs!1213860 (and d!1685593 b!5227988)))

(assert (=> bs!1213860 (= (dynLambda!23960 lambda!262535 (h!67078 (exprs!4702 (h!67079 zl!343)))) (validRegex!6554 (h!67078 (exprs!4702 (h!67079 zl!343)))))))

(declare-fun m!6274784 () Bool)

(assert (=> bs!1213860 m!6274784))

(assert (=> b!5228494 d!1685593))

(declare-fun b_lambda!202155 () Bool)

(assert (= b_lambda!202141 (or b!5228001 b_lambda!202155)))

(declare-fun bs!1213861 () Bool)

(declare-fun d!1685595 () Bool)

(assert (= bs!1213861 (and d!1685595 b!5228001)))

(assert (=> bs!1213861 (= (dynLambda!23959 lambda!262534 lt!2144598) (derivationStepZipperUp!190 lt!2144598 (h!67077 s!2326)))))

(assert (=> bs!1213861 m!6274330))

(assert (=> d!1685485 d!1685595))

(push 1)

(assert (not b!5228170))

(assert (not b!5228538))

(assert (not d!1685499))

(assert (not b!5228545))

(assert (not b!5228549))

(assert (not b!5228180))

(assert (not b!5228153))

(assert (not bs!1213858))

(assert (not d!1685573))

(assert (not b!5228193))

(assert (not d!1685521))

(assert (not b!5228223))

(assert (not b!5228325))

(assert (not b!5228403))

(assert (not b!5228292))

(assert (not b!5228327))

(assert (not d!1685583))

(assert (not d!1685529))

(assert (not b!5228534))

(assert (not b!5228347))

(assert (not d!1685485))

(assert (not bm!369602))

(assert (not d!1685511))

(assert (not b!5228371))

(assert (not b!5228485))

(assert (not d!1685561))

(assert (not b!5228283))

(assert (not d!1685551))

(assert (not b!5228353))

(assert (not b!5228290))

(assert (not b!5228296))

(assert (not b!5228227))

(assert (not b!5228402))

(assert (not d!1685487))

(assert (not b!5228293))

(assert (not b!5228324))

(assert (not d!1685503))

(assert (not b_lambda!202153))

(assert (not b!5228241))

(assert (not b!5228445))

(assert (not d!1685575))

(assert (not b!5228487))

(assert (not b!5228318))

(assert (not b!5228396))

(assert (not b!5228517))

(assert (not d!1685559))

(assert (not bm!369591))

(assert (not b!5228152))

(assert (not b!5228495))

(assert (not b!5228350))

(assert (not setNonEmpty!33290))

(assert (not b!5228231))

(assert (not b!5228547))

(assert (not d!1685515))

(assert (not b!5228232))

(assert (not b!5228480))

(assert (not b!5228175))

(assert (not d!1685495))

(assert (not bs!1213859))

(assert (not b!5228188))

(assert (not b!5228252))

(assert (not bm!369580))

(assert (not d!1685497))

(assert (not bm!369568))

(assert (not b!5228404))

(assert (not b!5228294))

(assert (not bm!369582))

(assert (not b!5228532))

(assert (not b!5228279))

(assert (not b!5228536))

(assert (not b_lambda!202149))

(assert (not b!5228185))

(assert (not b!5228280))

(assert (not d!1685543))

(assert (not bm!369551))

(assert (not bm!369574))

(assert (not d!1685567))

(assert (not b!5228323))

(assert (not b!5228165))

(assert (not d!1685577))

(assert tp_is_empty!38889)

(assert (not b!5228178))

(assert (not b!5228531))

(assert (not b!5228233))

(assert (not d!1685547))

(assert (not b_lambda!202151))

(assert (not d!1685541))

(assert (not d!1685491))

(assert (not d!1685555))

(assert (not d!1685527))

(assert (not bm!369576))

(assert (not bm!369599))

(assert (not b!5228535))

(assert (not bm!369552))

(assert (not b!5228328))

(assert (not b!5228277))

(assert (not b!5228168))

(assert (not d!1685569))

(assert (not b!5228183))

(assert (not b_lambda!202155))

(assert (not b!5228438))

(assert (not b!5228276))

(assert (not bm!369553))

(assert (not b!5228372))

(assert (not d!1685537))

(assert (not b!5228479))

(assert (not d!1685557))

(assert (not b!5228228))

(assert (not d!1685585))

(assert (not b!5228190))

(assert (not d!1685509))

(assert (not b!5228169))

(assert (not bm!369570))

(assert (not bm!369554))

(assert (not bm!369579))

(assert (not b!5228540))

(assert (not b!5228477))

(assert (not b!5228317))

(assert (not d!1685563))

(assert (not bs!1213860))

(assert (not bm!369592))

(assert (not b!5228505))

(assert (not b!5228518))

(assert (not d!1685525))

(assert (not b!5228400))

(assert (not b!5228321))

(assert (not d!1685549))

(assert (not b!5228500))

(assert (not b!5228354))

(assert (not b!5228530))

(assert (not b!5228370))

(assert (not d!1685581))

(assert (not b!5228278))

(assert (not b!5228519))

(assert (not b!5228320))

(assert (not d!1685539))

(assert (not b!5228172))

(assert (not b!5228523))

(assert (not bm!369573))

(assert (not bs!1213861))

(assert (not b!5228521))

(assert (not d!1685565))

(assert (not b!5228548))

(assert (not d!1685535))

(assert (not b!5228522))

(assert (not b!5228401))

(assert (not d!1685505))

(assert (not b!5228295))

(assert (not b!5228486))

(assert (not d!1685553))

(assert (not b!5228285))

(assert (not d!1685493))

(assert (not b!5228368))

(assert (not b!5228348))

(assert (not b!5228352))

(assert (not bm!369598))

(assert (not b!5228369))

(assert (not bm!369550))

(assert (not b!5228539))

(assert (not bm!369567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

