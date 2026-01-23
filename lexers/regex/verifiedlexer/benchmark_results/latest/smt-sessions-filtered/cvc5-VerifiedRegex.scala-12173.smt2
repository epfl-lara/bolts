; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!684978 () Bool)

(assert start!684978)

(declare-fun b!7060583 () Bool)

(assert (=> b!7060583 true))

(declare-fun b!7060601 () Bool)

(assert (=> b!7060601 true))

(declare-fun b!7060579 () Bool)

(assert (=> b!7060579 true))

(declare-fun bs!1878998 () Bool)

(declare-fun b!7060582 () Bool)

(assert (= bs!1878998 (and b!7060582 b!7060583)))

(declare-fun lambda!421879 () Int)

(declare-fun lambda!421875 () Int)

(assert (=> bs!1878998 (not (= lambda!421879 lambda!421875))))

(declare-fun e!4244764 () Bool)

(declare-fun e!4244760 () Bool)

(assert (=> b!7060579 (= e!4244764 e!4244760)))

(declare-fun res!2882533 () Bool)

(assert (=> b!7060579 (=> res!2882533 e!4244760)))

(declare-datatypes ((C!35454 0))(
  ( (C!35455 (val!27429 Int)) )
))
(declare-datatypes ((Regex!17592 0))(
  ( (ElementMatch!17592 (c!1315951 C!35454)) (Concat!26437 (regOne!35696 Regex!17592) (regTwo!35696 Regex!17592)) (EmptyExpr!17592) (Star!17592 (reg!17921 Regex!17592)) (EmptyLang!17592) (Union!17592 (regOne!35697 Regex!17592) (regTwo!35697 Regex!17592)) )
))
(declare-datatypes ((List!68302 0))(
  ( (Nil!68178) (Cons!68178 (h!74626 Regex!17592) (t!382083 List!68302)) )
))
(declare-datatypes ((Context!13176 0))(
  ( (Context!13177 (exprs!7088 List!68302)) )
))
(declare-fun lt!2535515 () (Set Context!13176))

(declare-fun lt!2535548 () (Set Context!13176))

(declare-datatypes ((List!68303 0))(
  ( (Nil!68179) (Cons!68179 (h!74627 C!35454) (t!382084 List!68303)) )
))
(declare-fun s!7408 () List!68303)

(declare-fun derivationStepZipper!3042 ((Set Context!13176) C!35454) (Set Context!13176))

(assert (=> b!7060579 (= res!2882533 (not (= (derivationStepZipper!3042 lt!2535515 (h!74627 s!7408)) lt!2535548)))))

(declare-fun lt!2535550 () Context!13176)

(declare-fun lambda!421878 () Int)

(declare-fun flatMap!2518 ((Set Context!13176) Int) (Set Context!13176))

(declare-fun derivationStepZipperUp!2176 (Context!13176 C!35454) (Set Context!13176))

(assert (=> b!7060579 (= (flatMap!2518 lt!2535515 lambda!421878) (derivationStepZipperUp!2176 lt!2535550 (h!74627 s!7408)))))

(declare-datatypes ((Unit!161860 0))(
  ( (Unit!161861) )
))
(declare-fun lt!2535510 () Unit!161860)

(declare-fun lemmaFlatMapOnSingletonSet!2027 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> b!7060579 (= lt!2535510 (lemmaFlatMapOnSingletonSet!2027 lt!2535515 lt!2535550 lambda!421878))))

(assert (=> b!7060579 (= lt!2535548 (derivationStepZipperUp!2176 lt!2535550 (h!74627 s!7408)))))

(declare-fun lt!2535551 () Context!13176)

(declare-fun lambda!421877 () Int)

(declare-fun ct2!306 () Context!13176)

(declare-fun lt!2535513 () Unit!161860)

(declare-fun lemmaConcatPreservesForall!903 (List!68302 List!68302 Int) Unit!161860)

(assert (=> b!7060579 (= lt!2535513 (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535551) (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060580 () Bool)

(declare-fun e!4244747 () Bool)

(declare-fun e!4244762 () Bool)

(assert (=> b!7060580 (= e!4244747 e!4244762)))

(declare-fun res!2882536 () Bool)

(assert (=> b!7060580 (=> res!2882536 e!4244762)))

(declare-fun lt!2535539 () Int)

(declare-fun lt!2535512 () Context!13176)

(declare-fun contextDepthTotal!528 (Context!13176) Int)

(assert (=> b!7060580 (= res!2882536 (<= lt!2535539 (contextDepthTotal!528 lt!2535512)))))

(declare-fun lt!2535511 () Int)

(assert (=> b!7060580 (<= lt!2535539 lt!2535511)))

(declare-datatypes ((List!68304 0))(
  ( (Nil!68180) (Cons!68180 (h!74628 Context!13176) (t!382085 List!68304)) )
))
(declare-fun lt!2535525 () List!68304)

(declare-fun zipperDepthTotal!557 (List!68304) Int)

(assert (=> b!7060580 (= lt!2535511 (zipperDepthTotal!557 lt!2535525))))

(assert (=> b!7060580 (= lt!2535539 (contextDepthTotal!528 lt!2535551))))

(declare-fun lt!2535505 () Unit!161860)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!95 (List!68304 Context!13176) Unit!161860)

(assert (=> b!7060580 (= lt!2535505 (lemmaTotalDepthZipperLargerThanOfAnyContext!95 lt!2535525 lt!2535551))))

(declare-fun z1!570 () (Set Context!13176))

(declare-fun toList!10933 ((Set Context!13176)) List!68304)

(assert (=> b!7060580 (= lt!2535525 (toList!10933 z1!570))))

(declare-fun lt!2535555 () Unit!161860)

(declare-fun lt!2535534 () List!68302)

(assert (=> b!7060580 (= lt!2535555 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535536 () Unit!161860)

(assert (=> b!7060580 (= lt!2535536 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535537 () Unit!161860)

(assert (=> b!7060580 (= lt!2535537 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535535 () (Set Context!13176))

(assert (=> b!7060580 (= (flatMap!2518 lt!2535535 lambda!421878) (derivationStepZipperUp!2176 lt!2535512 (h!74627 s!7408)))))

(declare-fun lt!2535516 () Unit!161860)

(assert (=> b!7060580 (= lt!2535516 (lemmaFlatMapOnSingletonSet!2027 lt!2535535 lt!2535512 lambda!421878))))

(declare-fun lambda!421876 () Int)

(declare-fun map!15921 ((Set Context!13176) Int) (Set Context!13176))

(declare-fun ++!15681 (List!68302 List!68302) List!68302)

(assert (=> b!7060580 (= (map!15921 lt!2535535 lambda!421876) (set.insert (Context!13177 (++!15681 lt!2535534 (exprs!7088 ct2!306))) (as set.empty (Set Context!13176))))))

(declare-fun lt!2535531 () Unit!161860)

(assert (=> b!7060580 (= lt!2535531 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535528 () Unit!161860)

(declare-fun lemmaMapOnSingletonSet!409 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> b!7060580 (= lt!2535528 (lemmaMapOnSingletonSet!409 lt!2535535 lt!2535512 lambda!421876))))

(assert (=> b!7060580 (= lt!2535535 (set.insert lt!2535512 (as set.empty (Set Context!13176))))))

(declare-fun b!7060581 () Bool)

(declare-fun e!4244754 () Bool)

(declare-fun e!4244748 () Bool)

(assert (=> b!7060581 (= e!4244754 e!4244748)))

(declare-fun res!2882509 () Bool)

(assert (=> b!7060581 (=> res!2882509 e!4244748)))

(declare-fun lt!2535533 () (Set Context!13176))

(declare-fun matchZipper!3132 ((Set Context!13176) List!68303) Bool)

(assert (=> b!7060581 (= res!2882509 (not (matchZipper!3132 lt!2535533 (t!382084 s!7408))))))

(declare-fun lt!2535504 () Unit!161860)

(assert (=> b!7060581 (= lt!2535504 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun res!2882524 () Bool)

(declare-fun e!4244753 () Bool)

(assert (=> b!7060582 (=> res!2882524 e!4244753)))

(declare-fun exists!3598 ((Set Context!13176) Int) Bool)

(assert (=> b!7060582 (= res!2882524 (not (exists!3598 lt!2535535 lambda!421879)))))

(declare-fun e!4244745 () Bool)

(declare-fun e!4244759 () Bool)

(assert (=> b!7060583 (= e!4244745 (not e!4244759))))

(declare-fun res!2882529 () Bool)

(assert (=> b!7060583 (=> res!2882529 e!4244759)))

(declare-fun lt!2535506 () (Set Context!13176))

(assert (=> b!7060583 (= res!2882529 (not (matchZipper!3132 lt!2535506 s!7408)))))

(declare-fun lt!2535545 () Context!13176)

(assert (=> b!7060583 (= lt!2535506 (set.insert lt!2535545 (as set.empty (Set Context!13176))))))

(declare-fun lt!2535520 () (Set Context!13176))

(declare-fun getWitness!1666 ((Set Context!13176) Int) Context!13176)

(assert (=> b!7060583 (= lt!2535545 (getWitness!1666 lt!2535520 lambda!421875))))

(declare-fun lt!2535519 () List!68304)

(declare-fun exists!3599 (List!68304 Int) Bool)

(assert (=> b!7060583 (exists!3599 lt!2535519 lambda!421875)))

(declare-fun lt!2535508 () Unit!161860)

(declare-fun lemmaZipperMatchesExistsMatchingContext!513 (List!68304 List!68303) Unit!161860)

(assert (=> b!7060583 (= lt!2535508 (lemmaZipperMatchesExistsMatchingContext!513 lt!2535519 s!7408))))

(assert (=> b!7060583 (= lt!2535519 (toList!10933 lt!2535520))))

(declare-fun b!7060584 () Bool)

(declare-fun res!2882522 () Bool)

(assert (=> b!7060584 (=> res!2882522 e!4244760)))

(assert (=> b!7060584 (= res!2882522 (not (is-Cons!68178 (exprs!7088 lt!2535551))))))

(declare-fun b!7060585 () Bool)

(declare-fun e!4244761 () Bool)

(assert (=> b!7060585 (= e!4244761 (not (matchZipper!3132 lt!2535533 (t!382084 s!7408))))))

(declare-fun lt!2535527 () Unit!161860)

(assert (=> b!7060585 (= lt!2535527 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060586 () Bool)

(declare-fun res!2882532 () Bool)

(assert (=> b!7060586 (=> res!2882532 e!4244753)))

(declare-datatypes ((tuple2!68186 0))(
  ( (tuple2!68187 (_1!37396 List!68303) (_2!37396 List!68303)) )
))
(declare-fun lt!2535518 () tuple2!68186)

(declare-fun isEmpty!39768 (List!68303) Bool)

(assert (=> b!7060586 (= res!2882532 (not (isEmpty!39768 (_1!37396 lt!2535518))))))

(declare-fun b!7060587 () Bool)

(declare-fun res!2882530 () Bool)

(assert (=> b!7060587 (=> res!2882530 e!4244760)))

(declare-fun isEmpty!39769 (List!68302) Bool)

(assert (=> b!7060587 (= res!2882530 (isEmpty!39769 (exprs!7088 lt!2535551)))))

(declare-fun b!7060588 () Bool)

(declare-fun res!2882519 () Bool)

(declare-fun e!4244751 () Bool)

(assert (=> b!7060588 (=> res!2882519 e!4244751)))

(declare-fun nullableContext!104 (Context!13176) Bool)

(assert (=> b!7060588 (= res!2882519 (not (nullableContext!104 lt!2535551)))))

(declare-fun b!7060589 () Bool)

(declare-fun e!4244756 () Bool)

(assert (=> b!7060589 (= e!4244756 e!4244747)))

(declare-fun res!2882510 () Bool)

(assert (=> b!7060589 (=> res!2882510 e!4244747)))

(declare-fun lt!2535544 () (Set Context!13176))

(assert (=> b!7060589 (= res!2882510 (not (matchZipper!3132 lt!2535544 s!7408)))))

(declare-fun lt!2535549 () Unit!161860)

(assert (=> b!7060589 (= lt!2535549 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060590 () Bool)

(declare-fun res!2882515 () Bool)

(assert (=> b!7060590 (=> (not res!2882515) (not e!4244745))))

(assert (=> b!7060590 (= res!2882515 (is-Cons!68179 s!7408))))

(declare-fun b!7060591 () Bool)

(declare-fun e!4244749 () Bool)

(declare-fun e!4244755 () Bool)

(assert (=> b!7060591 (= e!4244749 e!4244755)))

(declare-fun res!2882517 () Bool)

(assert (=> b!7060591 (=> res!2882517 e!4244755)))

(declare-fun lt!2535523 () (Set Context!13176))

(assert (=> b!7060591 (= res!2882517 (not (= lt!2535548 lt!2535523)))))

(declare-fun lt!2535543 () (Set Context!13176))

(assert (=> b!7060591 (= lt!2535523 (set.union lt!2535543 lt!2535533))))

(declare-fun lt!2535521 () Context!13176)

(assert (=> b!7060591 (= lt!2535533 (derivationStepZipperUp!2176 lt!2535521 (h!74627 s!7408)))))

(declare-fun derivationStepZipperDown!2226 (Regex!17592 Context!13176 C!35454) (Set Context!13176))

(assert (=> b!7060591 (= lt!2535543 (derivationStepZipperDown!2226 (h!74626 (exprs!7088 lt!2535551)) lt!2535521 (h!74627 s!7408)))))

(assert (=> b!7060591 (= lt!2535521 (Context!13177 (++!15681 lt!2535534 (exprs!7088 ct2!306))))))

(declare-fun lt!2535538 () Unit!161860)

(assert (=> b!7060591 (= lt!2535538 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535532 () Unit!161860)

(assert (=> b!7060591 (= lt!2535532 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060592 () Bool)

(declare-fun res!2882531 () Bool)

(assert (=> b!7060592 (=> res!2882531 e!4244753)))

(declare-fun ++!15682 (List!68303 List!68303) List!68303)

(assert (=> b!7060592 (= res!2882531 (not (= (++!15682 (_1!37396 lt!2535518) (_2!37396 lt!2535518)) s!7408)))))

(declare-fun b!7060593 () Bool)

(declare-fun e!4244750 () Bool)

(assert (=> b!7060593 (= e!4244750 e!4244764)))

(declare-fun res!2882511 () Bool)

(assert (=> b!7060593 (=> res!2882511 e!4244764)))

(assert (=> b!7060593 (= res!2882511 (not (= lt!2535515 lt!2535506)))))

(assert (=> b!7060593 (= lt!2535515 (set.insert lt!2535550 (as set.empty (Set Context!13176))))))

(declare-fun lt!2535541 () Unit!161860)

(assert (=> b!7060593 (= lt!2535541 (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535551) (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060594 () Bool)

(declare-fun res!2882514 () Bool)

(assert (=> b!7060594 (=> res!2882514 e!4244753)))

(declare-fun lt!2535502 () (Set Context!13176))

(assert (=> b!7060594 (= res!2882514 (not (matchZipper!3132 lt!2535502 (_2!37396 lt!2535518))))))

(declare-fun b!7060595 () Bool)

(declare-fun res!2882520 () Bool)

(assert (=> b!7060595 (=> res!2882520 e!4244762)))

(assert (=> b!7060595 (= res!2882520 (>= (zipperDepthTotal!557 (Cons!68180 lt!2535512 Nil!68180)) lt!2535511))))

(declare-fun b!7060596 () Bool)

(declare-fun res!2882518 () Bool)

(assert (=> b!7060596 (=> res!2882518 e!4244759)))

(assert (=> b!7060596 (= res!2882518 (not (set.member lt!2535545 lt!2535520)))))

(declare-fun b!7060597 () Bool)

(declare-fun e!4244746 () Bool)

(declare-fun tp!1941025 () Bool)

(assert (=> b!7060597 (= e!4244746 tp!1941025)))

(declare-fun b!7060598 () Bool)

(assert (=> b!7060598 (= e!4244755 e!4244754)))

(declare-fun res!2882528 () Bool)

(assert (=> b!7060598 (=> res!2882528 e!4244754)))

(assert (=> b!7060598 (= res!2882528 e!4244761)))

(declare-fun res!2882516 () Bool)

(assert (=> b!7060598 (=> (not res!2882516) (not e!4244761))))

(declare-fun lt!2535503 () Bool)

(declare-fun lt!2535509 () Bool)

(assert (=> b!7060598 (= res!2882516 (not (= lt!2535503 lt!2535509)))))

(assert (=> b!7060598 (= lt!2535503 (matchZipper!3132 lt!2535548 (t!382084 s!7408)))))

(declare-fun lt!2535547 () Unit!161860)

(assert (=> b!7060598 (= lt!2535547 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun e!4244758 () Bool)

(assert (=> b!7060598 (= (matchZipper!3132 lt!2535523 (t!382084 s!7408)) e!4244758)))

(declare-fun res!2882513 () Bool)

(assert (=> b!7060598 (=> res!2882513 e!4244758)))

(assert (=> b!7060598 (= res!2882513 lt!2535509)))

(assert (=> b!7060598 (= lt!2535509 (matchZipper!3132 lt!2535543 (t!382084 s!7408)))))

(declare-fun lt!2535529 () Unit!161860)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1605 ((Set Context!13176) (Set Context!13176) List!68303) Unit!161860)

(assert (=> b!7060598 (= lt!2535529 (lemmaZipperConcatMatchesSameAsBothZippers!1605 lt!2535543 lt!2535533 (t!382084 s!7408)))))

(declare-fun lt!2535553 () Unit!161860)

(assert (=> b!7060598 (= lt!2535553 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535552 () Unit!161860)

(assert (=> b!7060598 (= lt!2535552 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060599 () Bool)

(assert (=> b!7060599 (= e!4244748 e!4244756)))

(declare-fun res!2882512 () Bool)

(assert (=> b!7060599 (=> res!2882512 e!4244756)))

(assert (=> b!7060599 (= res!2882512 (not (= (derivationStepZipper!3042 lt!2535544 (h!74627 s!7408)) lt!2535533)))))

(declare-fun lt!2535542 () Unit!161860)

(assert (=> b!7060599 (= lt!2535542 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535530 () Unit!161860)

(assert (=> b!7060599 (= lt!2535530 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(assert (=> b!7060599 (= (flatMap!2518 lt!2535544 lambda!421878) (derivationStepZipperUp!2176 lt!2535521 (h!74627 s!7408)))))

(declare-fun lt!2535554 () Unit!161860)

(assert (=> b!7060599 (= lt!2535554 (lemmaFlatMapOnSingletonSet!2027 lt!2535544 lt!2535521 lambda!421878))))

(assert (=> b!7060599 (= lt!2535544 (set.insert lt!2535521 (as set.empty (Set Context!13176))))))

(declare-fun lt!2535514 () Unit!161860)

(assert (=> b!7060599 (= lt!2535514 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun lt!2535522 () Unit!161860)

(assert (=> b!7060599 (= lt!2535522 (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(declare-fun b!7060600 () Bool)

(declare-fun res!2882527 () Bool)

(assert (=> b!7060600 (=> res!2882527 e!4244754)))

(assert (=> b!7060600 (= res!2882527 (not lt!2535503))))

(assert (=> b!7060601 (= e!4244759 e!4244750)))

(declare-fun res!2882525 () Bool)

(assert (=> b!7060601 (=> res!2882525 e!4244750)))

(assert (=> b!7060601 (= res!2882525 (or (not (= lt!2535550 lt!2535545)) (not (set.member lt!2535551 z1!570))))))

(assert (=> b!7060601 (= lt!2535550 (Context!13177 (++!15681 (exprs!7088 lt!2535551) (exprs!7088 ct2!306))))))

(declare-fun lt!2535526 () Unit!161860)

(assert (=> b!7060601 (= lt!2535526 (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535551) (exprs!7088 ct2!306) lambda!421877))))

(declare-fun mapPost2!421 ((Set Context!13176) Int Context!13176) Context!13176)

(assert (=> b!7060601 (= lt!2535551 (mapPost2!421 z1!570 lambda!421876 lt!2535545))))

(declare-fun res!2882535 () Bool)

(assert (=> start!684978 (=> (not res!2882535) (not e!4244745))))

(assert (=> start!684978 (= res!2882535 (matchZipper!3132 lt!2535520 s!7408))))

(declare-fun appendTo!713 ((Set Context!13176) Context!13176) (Set Context!13176))

(assert (=> start!684978 (= lt!2535520 (appendTo!713 z1!570 ct2!306))))

(assert (=> start!684978 e!4244745))

(declare-fun condSetEmpty!49992 () Bool)

(assert (=> start!684978 (= condSetEmpty!49992 (= z1!570 (as set.empty (Set Context!13176))))))

(declare-fun setRes!49992 () Bool)

(assert (=> start!684978 setRes!49992))

(declare-fun e!4244757 () Bool)

(declare-fun inv!86840 (Context!13176) Bool)

(assert (=> start!684978 (and (inv!86840 ct2!306) e!4244757)))

(declare-fun e!4244763 () Bool)

(assert (=> start!684978 e!4244763))

(declare-fun b!7060602 () Bool)

(declare-fun tp_is_empty!44409 () Bool)

(declare-fun tp!1941024 () Bool)

(assert (=> b!7060602 (= e!4244763 (and tp_is_empty!44409 tp!1941024))))

(declare-fun tp!1941023 () Bool)

(declare-fun setNonEmpty!49992 () Bool)

(declare-fun setElem!49992 () Context!13176)

(assert (=> setNonEmpty!49992 (= setRes!49992 (and tp!1941023 (inv!86840 setElem!49992) e!4244746))))

(declare-fun setRest!49992 () (Set Context!13176))

(assert (=> setNonEmpty!49992 (= z1!570 (set.union (set.insert setElem!49992 (as set.empty (Set Context!13176))) setRest!49992))))

(declare-fun b!7060603 () Bool)

(declare-fun e!4244752 () Bool)

(assert (=> b!7060603 (= e!4244751 e!4244752)))

(declare-fun res!2882523 () Bool)

(assert (=> b!7060603 (=> res!2882523 e!4244752)))

(declare-fun lt!2535517 () (Set Context!13176))

(assert (=> b!7060603 (= res!2882523 (not (matchZipper!3132 lt!2535517 (_1!37396 lt!2535518))))))

(assert (=> b!7060603 (exists!3598 lt!2535517 lambda!421879)))

(declare-fun lt!2535507 () Unit!161860)

(declare-fun lemmaContainsThenExists!130 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> b!7060603 (= lt!2535507 (lemmaContainsThenExists!130 lt!2535517 lt!2535551 lambda!421879))))

(assert (=> b!7060603 (= lt!2535517 (set.insert lt!2535551 (as set.empty (Set Context!13176))))))

(assert (=> b!7060603 (exists!3598 lt!2535535 lambda!421879)))

(declare-fun lt!2535540 () Unit!161860)

(assert (=> b!7060603 (= lt!2535540 (lemmaContainsThenExists!130 lt!2535535 lt!2535512 lambda!421879))))

(declare-fun b!7060604 () Bool)

(assert (=> b!7060604 (= e!4244758 (matchZipper!3132 lt!2535533 (t!382084 s!7408)))))

(declare-fun b!7060605 () Bool)

(assert (=> b!7060605 (= e!4244753 e!4244751)))

(declare-fun res!2882534 () Bool)

(assert (=> b!7060605 (=> res!2882534 e!4244751)))

(assert (=> b!7060605 (= res!2882534 (not (nullableContext!104 lt!2535512)))))

(declare-fun lt!2535556 () Context!13176)

(assert (=> b!7060605 (= lt!2535556 (getWitness!1666 lt!2535535 lambda!421879))))

(declare-fun b!7060606 () Bool)

(assert (=> b!7060606 (= e!4244762 e!4244753)))

(declare-fun res!2882521 () Bool)

(assert (=> b!7060606 (=> res!2882521 e!4244753)))

(assert (=> b!7060606 (= res!2882521 (not (matchZipper!3132 lt!2535535 (_1!37396 lt!2535518))))))

(declare-datatypes ((Option!16925 0))(
  ( (None!16924) (Some!16924 (v!53218 tuple2!68186)) )
))
(declare-fun lt!2535524 () Option!16925)

(declare-fun get!23872 (Option!16925) tuple2!68186)

(assert (=> b!7060606 (= lt!2535518 (get!23872 lt!2535524))))

(declare-fun isDefined!13626 (Option!16925) Bool)

(assert (=> b!7060606 (isDefined!13626 lt!2535524)))

(declare-fun findConcatSeparationZippers!441 ((Set Context!13176) (Set Context!13176) List!68303 List!68303 List!68303) Option!16925)

(assert (=> b!7060606 (= lt!2535524 (findConcatSeparationZippers!441 lt!2535535 lt!2535502 Nil!68179 s!7408 s!7408))))

(assert (=> b!7060606 (= lt!2535502 (set.insert ct2!306 (as set.empty (Set Context!13176))))))

(declare-fun lt!2535546 () Unit!161860)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!429 ((Set Context!13176) Context!13176 List!68303) Unit!161860)

(assert (=> b!7060606 (= lt!2535546 (lemmaConcatZipperMatchesStringThenFindConcatDefined!429 lt!2535535 ct2!306 s!7408))))

(declare-fun b!7060607 () Bool)

(assert (=> b!7060607 (= e!4244760 e!4244749)))

(declare-fun res!2882526 () Bool)

(assert (=> b!7060607 (=> res!2882526 e!4244749)))

(declare-fun nullable!7275 (Regex!17592) Bool)

(assert (=> b!7060607 (= res!2882526 (not (nullable!7275 (h!74626 (exprs!7088 lt!2535551)))))))

(assert (=> b!7060607 (= lt!2535512 (Context!13177 lt!2535534))))

(declare-fun tail!13734 (List!68302) List!68302)

(assert (=> b!7060607 (= lt!2535534 (tail!13734 (exprs!7088 lt!2535551)))))

(declare-fun b!7060608 () Bool)

(declare-fun tp!1941026 () Bool)

(assert (=> b!7060608 (= e!4244757 tp!1941026)))

(declare-fun b!7060609 () Bool)

(declare-fun isPrefix!5839 (List!68303 List!68303) Bool)

(assert (=> b!7060609 (= e!4244752 (isPrefix!5839 Nil!68179 (_1!37396 lt!2535518)))))

(declare-fun setIsEmpty!49992 () Bool)

(assert (=> setIsEmpty!49992 setRes!49992))

(assert (= (and start!684978 res!2882535) b!7060590))

(assert (= (and b!7060590 res!2882515) b!7060583))

(assert (= (and b!7060583 (not res!2882529)) b!7060596))

(assert (= (and b!7060596 (not res!2882518)) b!7060601))

(assert (= (and b!7060601 (not res!2882525)) b!7060593))

(assert (= (and b!7060593 (not res!2882511)) b!7060579))

(assert (= (and b!7060579 (not res!2882533)) b!7060584))

(assert (= (and b!7060584 (not res!2882522)) b!7060587))

(assert (= (and b!7060587 (not res!2882530)) b!7060607))

(assert (= (and b!7060607 (not res!2882526)) b!7060591))

(assert (= (and b!7060591 (not res!2882517)) b!7060598))

(assert (= (and b!7060598 (not res!2882513)) b!7060604))

(assert (= (and b!7060598 res!2882516) b!7060585))

(assert (= (and b!7060598 (not res!2882528)) b!7060600))

(assert (= (and b!7060600 (not res!2882527)) b!7060581))

(assert (= (and b!7060581 (not res!2882509)) b!7060599))

(assert (= (and b!7060599 (not res!2882512)) b!7060589))

(assert (= (and b!7060589 (not res!2882510)) b!7060580))

(assert (= (and b!7060580 (not res!2882536)) b!7060595))

(assert (= (and b!7060595 (not res!2882520)) b!7060606))

(assert (= (and b!7060606 (not res!2882521)) b!7060594))

(assert (= (and b!7060594 (not res!2882514)) b!7060592))

(assert (= (and b!7060592 (not res!2882531)) b!7060586))

(assert (= (and b!7060586 (not res!2882532)) b!7060582))

(assert (= (and b!7060582 (not res!2882524)) b!7060605))

(assert (= (and b!7060605 (not res!2882534)) b!7060588))

(assert (= (and b!7060588 (not res!2882519)) b!7060603))

(assert (= (and b!7060603 (not res!2882523)) b!7060609))

(assert (= (and start!684978 condSetEmpty!49992) setIsEmpty!49992))

(assert (= (and start!684978 (not condSetEmpty!49992)) setNonEmpty!49992))

(assert (= setNonEmpty!49992 b!7060597))

(assert (= start!684978 b!7060608))

(assert (= (and start!684978 (is-Cons!68179 s!7408)) b!7060602))

(declare-fun m!7780482 () Bool)

(assert (=> b!7060599 m!7780482))

(assert (=> b!7060599 m!7780482))

(declare-fun m!7780484 () Bool)

(assert (=> b!7060599 m!7780484))

(declare-fun m!7780486 () Bool)

(assert (=> b!7060599 m!7780486))

(assert (=> b!7060599 m!7780482))

(assert (=> b!7060599 m!7780482))

(declare-fun m!7780488 () Bool)

(assert (=> b!7060599 m!7780488))

(declare-fun m!7780490 () Bool)

(assert (=> b!7060599 m!7780490))

(declare-fun m!7780492 () Bool)

(assert (=> b!7060599 m!7780492))

(assert (=> b!7060591 m!7780482))

(declare-fun m!7780494 () Bool)

(assert (=> b!7060591 m!7780494))

(declare-fun m!7780496 () Bool)

(assert (=> b!7060591 m!7780496))

(assert (=> b!7060591 m!7780488))

(assert (=> b!7060591 m!7780482))

(declare-fun m!7780498 () Bool)

(assert (=> b!7060589 m!7780498))

(assert (=> b!7060589 m!7780482))

(declare-fun m!7780500 () Bool)

(assert (=> b!7060596 m!7780500))

(declare-fun m!7780502 () Bool)

(assert (=> b!7060579 m!7780502))

(declare-fun m!7780504 () Bool)

(assert (=> b!7060579 m!7780504))

(declare-fun m!7780506 () Bool)

(assert (=> b!7060579 m!7780506))

(declare-fun m!7780508 () Bool)

(assert (=> b!7060579 m!7780508))

(declare-fun m!7780510 () Bool)

(assert (=> b!7060579 m!7780510))

(declare-fun m!7780512 () Bool)

(assert (=> b!7060587 m!7780512))

(declare-fun m!7780514 () Bool)

(assert (=> b!7060603 m!7780514))

(declare-fun m!7780516 () Bool)

(assert (=> b!7060603 m!7780516))

(declare-fun m!7780518 () Bool)

(assert (=> b!7060603 m!7780518))

(declare-fun m!7780520 () Bool)

(assert (=> b!7060603 m!7780520))

(declare-fun m!7780522 () Bool)

(assert (=> b!7060603 m!7780522))

(declare-fun m!7780524 () Bool)

(assert (=> b!7060603 m!7780524))

(declare-fun m!7780526 () Bool)

(assert (=> b!7060595 m!7780526))

(declare-fun m!7780528 () Bool)

(assert (=> setNonEmpty!49992 m!7780528))

(declare-fun m!7780530 () Bool)

(assert (=> b!7060605 m!7780530))

(declare-fun m!7780532 () Bool)

(assert (=> b!7060605 m!7780532))

(assert (=> b!7060582 m!7780524))

(declare-fun m!7780534 () Bool)

(assert (=> b!7060588 m!7780534))

(declare-fun m!7780536 () Bool)

(assert (=> b!7060593 m!7780536))

(assert (=> b!7060593 m!7780506))

(declare-fun m!7780538 () Bool)

(assert (=> b!7060585 m!7780538))

(assert (=> b!7060585 m!7780482))

(declare-fun m!7780540 () Bool)

(assert (=> start!684978 m!7780540))

(declare-fun m!7780542 () Bool)

(assert (=> start!684978 m!7780542))

(declare-fun m!7780544 () Bool)

(assert (=> start!684978 m!7780544))

(declare-fun m!7780546 () Bool)

(assert (=> b!7060594 m!7780546))

(declare-fun m!7780548 () Bool)

(assert (=> b!7060583 m!7780548))

(declare-fun m!7780550 () Bool)

(assert (=> b!7060583 m!7780550))

(declare-fun m!7780552 () Bool)

(assert (=> b!7060583 m!7780552))

(declare-fun m!7780554 () Bool)

(assert (=> b!7060583 m!7780554))

(declare-fun m!7780556 () Bool)

(assert (=> b!7060583 m!7780556))

(declare-fun m!7780558 () Bool)

(assert (=> b!7060583 m!7780558))

(declare-fun m!7780560 () Bool)

(assert (=> b!7060580 m!7780560))

(declare-fun m!7780562 () Bool)

(assert (=> b!7060580 m!7780562))

(assert (=> b!7060580 m!7780482))

(declare-fun m!7780564 () Bool)

(assert (=> b!7060580 m!7780564))

(declare-fun m!7780566 () Bool)

(assert (=> b!7060580 m!7780566))

(declare-fun m!7780568 () Bool)

(assert (=> b!7060580 m!7780568))

(declare-fun m!7780570 () Bool)

(assert (=> b!7060580 m!7780570))

(assert (=> b!7060580 m!7780496))

(declare-fun m!7780572 () Bool)

(assert (=> b!7060580 m!7780572))

(declare-fun m!7780574 () Bool)

(assert (=> b!7060580 m!7780574))

(declare-fun m!7780576 () Bool)

(assert (=> b!7060580 m!7780576))

(declare-fun m!7780578 () Bool)

(assert (=> b!7060580 m!7780578))

(assert (=> b!7060580 m!7780482))

(declare-fun m!7780580 () Bool)

(assert (=> b!7060580 m!7780580))

(declare-fun m!7780582 () Bool)

(assert (=> b!7060580 m!7780582))

(assert (=> b!7060580 m!7780482))

(assert (=> b!7060580 m!7780482))

(declare-fun m!7780584 () Bool)

(assert (=> b!7060601 m!7780584))

(declare-fun m!7780586 () Bool)

(assert (=> b!7060601 m!7780586))

(assert (=> b!7060601 m!7780506))

(declare-fun m!7780588 () Bool)

(assert (=> b!7060601 m!7780588))

(declare-fun m!7780590 () Bool)

(assert (=> b!7060607 m!7780590))

(declare-fun m!7780592 () Bool)

(assert (=> b!7060607 m!7780592))

(assert (=> b!7060581 m!7780538))

(assert (=> b!7060581 m!7780482))

(declare-fun m!7780594 () Bool)

(assert (=> b!7060606 m!7780594))

(declare-fun m!7780596 () Bool)

(assert (=> b!7060606 m!7780596))

(declare-fun m!7780598 () Bool)

(assert (=> b!7060606 m!7780598))

(declare-fun m!7780600 () Bool)

(assert (=> b!7060606 m!7780600))

(declare-fun m!7780602 () Bool)

(assert (=> b!7060606 m!7780602))

(declare-fun m!7780604 () Bool)

(assert (=> b!7060606 m!7780604))

(declare-fun m!7780606 () Bool)

(assert (=> b!7060609 m!7780606))

(declare-fun m!7780608 () Bool)

(assert (=> b!7060598 m!7780608))

(assert (=> b!7060598 m!7780482))

(declare-fun m!7780610 () Bool)

(assert (=> b!7060598 m!7780610))

(declare-fun m!7780612 () Bool)

(assert (=> b!7060598 m!7780612))

(assert (=> b!7060598 m!7780482))

(assert (=> b!7060598 m!7780482))

(declare-fun m!7780614 () Bool)

(assert (=> b!7060598 m!7780614))

(assert (=> b!7060604 m!7780538))

(declare-fun m!7780616 () Bool)

(assert (=> b!7060592 m!7780616))

(declare-fun m!7780618 () Bool)

(assert (=> b!7060586 m!7780618))

(push 1)

(assert (not b!7060602))

(assert (not b!7060585))

(assert (not b!7060605))

(assert tp_is_empty!44409)

(assert (not b!7060588))

(assert (not b!7060595))

(assert (not b!7060586))

(assert (not b!7060608))

(assert (not start!684978))

(assert (not b!7060606))

(assert (not b!7060598))

(assert (not b!7060592))

(assert (not b!7060591))

(assert (not b!7060593))

(assert (not b!7060579))

(assert (not b!7060587))

(assert (not b!7060597))

(assert (not b!7060580))

(assert (not b!7060582))

(assert (not b!7060583))

(assert (not b!7060607))

(assert (not b!7060589))

(assert (not b!7060603))

(assert (not b!7060599))

(assert (not b!7060594))

(assert (not b!7060581))

(assert (not setNonEmpty!49992))

(assert (not b!7060601))

(assert (not b!7060604))

(assert (not b!7060609))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2207414 () Bool)

(declare-fun c!1315977 () Bool)

(assert (=> d!2207414 (= c!1315977 (isEmpty!39768 s!7408))))

(declare-fun e!4244827 () Bool)

(assert (=> d!2207414 (= (matchZipper!3132 lt!2535520 s!7408) e!4244827)))

(declare-fun b!7060719 () Bool)

(declare-fun nullableZipper!2669 ((Set Context!13176)) Bool)

(assert (=> b!7060719 (= e!4244827 (nullableZipper!2669 lt!2535520))))

(declare-fun b!7060720 () Bool)

(declare-fun head!14372 (List!68303) C!35454)

(declare-fun tail!13736 (List!68303) List!68303)

(assert (=> b!7060720 (= e!4244827 (matchZipper!3132 (derivationStepZipper!3042 lt!2535520 (head!14372 s!7408)) (tail!13736 s!7408)))))

(assert (= (and d!2207414 c!1315977) b!7060719))

(assert (= (and d!2207414 (not c!1315977)) b!7060720))

(declare-fun m!7780758 () Bool)

(assert (=> d!2207414 m!7780758))

(declare-fun m!7780760 () Bool)

(assert (=> b!7060719 m!7780760))

(declare-fun m!7780762 () Bool)

(assert (=> b!7060720 m!7780762))

(assert (=> b!7060720 m!7780762))

(declare-fun m!7780764 () Bool)

(assert (=> b!7060720 m!7780764))

(declare-fun m!7780766 () Bool)

(assert (=> b!7060720 m!7780766))

(assert (=> b!7060720 m!7780764))

(assert (=> b!7060720 m!7780766))

(declare-fun m!7780768 () Bool)

(assert (=> b!7060720 m!7780768))

(assert (=> start!684978 d!2207414))

(declare-fun bs!1879000 () Bool)

(declare-fun d!2207416 () Bool)

(assert (= bs!1879000 (and d!2207416 b!7060601)))

(declare-fun lambda!421953 () Int)

(assert (=> bs!1879000 (= lambda!421953 lambda!421876)))

(assert (=> d!2207416 true))

(assert (=> d!2207416 (= (appendTo!713 z1!570 ct2!306) (map!15921 z1!570 lambda!421953))))

(declare-fun bs!1879001 () Bool)

(assert (= bs!1879001 d!2207416))

(declare-fun m!7780770 () Bool)

(assert (=> bs!1879001 m!7780770))

(assert (=> start!684978 d!2207416))

(declare-fun bs!1879002 () Bool)

(declare-fun d!2207418 () Bool)

(assert (= bs!1879002 (and d!2207418 b!7060601)))

(declare-fun lambda!421956 () Int)

(assert (=> bs!1879002 (= lambda!421956 lambda!421877)))

(declare-fun forall!16540 (List!68302 Int) Bool)

(assert (=> d!2207418 (= (inv!86840 ct2!306) (forall!16540 (exprs!7088 ct2!306) lambda!421956))))

(declare-fun bs!1879003 () Bool)

(assert (= bs!1879003 d!2207418))

(declare-fun m!7780772 () Bool)

(assert (=> bs!1879003 m!7780772))

(assert (=> start!684978 d!2207418))

(declare-fun b!7060730 () Bool)

(declare-fun e!4244833 () List!68303)

(assert (=> b!7060730 (= e!4244833 (Cons!68179 (h!74627 (_1!37396 lt!2535518)) (++!15682 (t!382084 (_1!37396 lt!2535518)) (_2!37396 lt!2535518))))))

(declare-fun d!2207420 () Bool)

(declare-fun e!4244832 () Bool)

(assert (=> d!2207420 e!4244832))

(declare-fun res!2882627 () Bool)

(assert (=> d!2207420 (=> (not res!2882627) (not e!4244832))))

(declare-fun lt!2535730 () List!68303)

(declare-fun content!13707 (List!68303) (Set C!35454))

(assert (=> d!2207420 (= res!2882627 (= (content!13707 lt!2535730) (set.union (content!13707 (_1!37396 lt!2535518)) (content!13707 (_2!37396 lt!2535518)))))))

(assert (=> d!2207420 (= lt!2535730 e!4244833)))

(declare-fun c!1315981 () Bool)

(assert (=> d!2207420 (= c!1315981 (is-Nil!68179 (_1!37396 lt!2535518)))))

(assert (=> d!2207420 (= (++!15682 (_1!37396 lt!2535518) (_2!37396 lt!2535518)) lt!2535730)))

(declare-fun b!7060732 () Bool)

(assert (=> b!7060732 (= e!4244832 (or (not (= (_2!37396 lt!2535518) Nil!68179)) (= lt!2535730 (_1!37396 lt!2535518))))))

(declare-fun b!7060731 () Bool)

(declare-fun res!2882626 () Bool)

(assert (=> b!7060731 (=> (not res!2882626) (not e!4244832))))

(declare-fun size!41163 (List!68303) Int)

(assert (=> b!7060731 (= res!2882626 (= (size!41163 lt!2535730) (+ (size!41163 (_1!37396 lt!2535518)) (size!41163 (_2!37396 lt!2535518)))))))

(declare-fun b!7060729 () Bool)

(assert (=> b!7060729 (= e!4244833 (_2!37396 lt!2535518))))

(assert (= (and d!2207420 c!1315981) b!7060729))

(assert (= (and d!2207420 (not c!1315981)) b!7060730))

(assert (= (and d!2207420 res!2882627) b!7060731))

(assert (= (and b!7060731 res!2882626) b!7060732))

(declare-fun m!7780774 () Bool)

(assert (=> b!7060730 m!7780774))

(declare-fun m!7780776 () Bool)

(assert (=> d!2207420 m!7780776))

(declare-fun m!7780778 () Bool)

(assert (=> d!2207420 m!7780778))

(declare-fun m!7780780 () Bool)

(assert (=> d!2207420 m!7780780))

(declare-fun m!7780782 () Bool)

(assert (=> b!7060731 m!7780782))

(declare-fun m!7780784 () Bool)

(assert (=> b!7060731 m!7780784))

(declare-fun m!7780786 () Bool)

(assert (=> b!7060731 m!7780786))

(assert (=> b!7060592 d!2207420))

(declare-fun b!7060742 () Bool)

(declare-fun e!4244839 () List!68302)

(assert (=> b!7060742 (= e!4244839 (Cons!68178 (h!74626 lt!2535534) (++!15681 (t!382083 lt!2535534) (exprs!7088 ct2!306))))))

(declare-fun b!7060741 () Bool)

(assert (=> b!7060741 (= e!4244839 (exprs!7088 ct2!306))))

(declare-fun b!7060743 () Bool)

(declare-fun res!2882633 () Bool)

(declare-fun e!4244838 () Bool)

(assert (=> b!7060743 (=> (not res!2882633) (not e!4244838))))

(declare-fun lt!2535733 () List!68302)

(declare-fun size!41164 (List!68302) Int)

(assert (=> b!7060743 (= res!2882633 (= (size!41164 lt!2535733) (+ (size!41164 lt!2535534) (size!41164 (exprs!7088 ct2!306)))))))

(declare-fun d!2207422 () Bool)

(assert (=> d!2207422 e!4244838))

(declare-fun res!2882632 () Bool)

(assert (=> d!2207422 (=> (not res!2882632) (not e!4244838))))

(declare-fun content!13708 (List!68302) (Set Regex!17592))

(assert (=> d!2207422 (= res!2882632 (= (content!13708 lt!2535733) (set.union (content!13708 lt!2535534) (content!13708 (exprs!7088 ct2!306)))))))

(assert (=> d!2207422 (= lt!2535733 e!4244839)))

(declare-fun c!1315984 () Bool)

(assert (=> d!2207422 (= c!1315984 (is-Nil!68178 lt!2535534))))

(assert (=> d!2207422 (= (++!15681 lt!2535534 (exprs!7088 ct2!306)) lt!2535733)))

(declare-fun b!7060744 () Bool)

(assert (=> b!7060744 (= e!4244838 (or (not (= (exprs!7088 ct2!306) Nil!68178)) (= lt!2535733 lt!2535534)))))

(assert (= (and d!2207422 c!1315984) b!7060741))

(assert (= (and d!2207422 (not c!1315984)) b!7060742))

(assert (= (and d!2207422 res!2882632) b!7060743))

(assert (= (and b!7060743 res!2882633) b!7060744))

(declare-fun m!7780788 () Bool)

(assert (=> b!7060742 m!7780788))

(declare-fun m!7780790 () Bool)

(assert (=> b!7060743 m!7780790))

(declare-fun m!7780792 () Bool)

(assert (=> b!7060743 m!7780792))

(declare-fun m!7780794 () Bool)

(assert (=> b!7060743 m!7780794))

(declare-fun m!7780796 () Bool)

(assert (=> d!2207422 m!7780796))

(declare-fun m!7780798 () Bool)

(assert (=> d!2207422 m!7780798))

(declare-fun m!7780800 () Bool)

(assert (=> d!2207422 m!7780800))

(assert (=> b!7060591 d!2207422))

(declare-fun d!2207424 () Bool)

(assert (=> d!2207424 (forall!16540 (++!15681 lt!2535534 (exprs!7088 ct2!306)) lambda!421877)))

(declare-fun lt!2535736 () Unit!161860)

(declare-fun choose!53902 (List!68302 List!68302 Int) Unit!161860)

(assert (=> d!2207424 (= lt!2535736 (choose!53902 lt!2535534 (exprs!7088 ct2!306) lambda!421877))))

(assert (=> d!2207424 (forall!16540 lt!2535534 lambda!421877)))

(assert (=> d!2207424 (= (lemmaConcatPreservesForall!903 lt!2535534 (exprs!7088 ct2!306) lambda!421877) lt!2535736)))

(declare-fun bs!1879004 () Bool)

(assert (= bs!1879004 d!2207424))

(assert (=> bs!1879004 m!7780496))

(assert (=> bs!1879004 m!7780496))

(declare-fun m!7780802 () Bool)

(assert (=> bs!1879004 m!7780802))

(declare-fun m!7780804 () Bool)

(assert (=> bs!1879004 m!7780804))

(declare-fun m!7780806 () Bool)

(assert (=> bs!1879004 m!7780806))

(assert (=> b!7060591 d!2207424))

(declare-fun d!2207426 () Bool)

(declare-fun c!1315989 () Bool)

(declare-fun e!4244846 () Bool)

(assert (=> d!2207426 (= c!1315989 e!4244846)))

(declare-fun res!2882636 () Bool)

(assert (=> d!2207426 (=> (not res!2882636) (not e!4244846))))

(assert (=> d!2207426 (= res!2882636 (is-Cons!68178 (exprs!7088 lt!2535521)))))

(declare-fun e!4244848 () (Set Context!13176))

(assert (=> d!2207426 (= (derivationStepZipperUp!2176 lt!2535521 (h!74627 s!7408)) e!4244848)))

(declare-fun bm!641610 () Bool)

(declare-fun call!641615 () (Set Context!13176))

(assert (=> bm!641610 (= call!641615 (derivationStepZipperDown!2226 (h!74626 (exprs!7088 lt!2535521)) (Context!13177 (t!382083 (exprs!7088 lt!2535521))) (h!74627 s!7408)))))

(declare-fun b!7060755 () Bool)

(assert (=> b!7060755 (= e!4244848 (set.union call!641615 (derivationStepZipperUp!2176 (Context!13177 (t!382083 (exprs!7088 lt!2535521))) (h!74627 s!7408))))))

(declare-fun b!7060756 () Bool)

(declare-fun e!4244847 () (Set Context!13176))

(assert (=> b!7060756 (= e!4244847 call!641615)))

(declare-fun b!7060757 () Bool)

(assert (=> b!7060757 (= e!4244846 (nullable!7275 (h!74626 (exprs!7088 lt!2535521))))))

(declare-fun b!7060758 () Bool)

(assert (=> b!7060758 (= e!4244848 e!4244847)))

(declare-fun c!1315990 () Bool)

(assert (=> b!7060758 (= c!1315990 (is-Cons!68178 (exprs!7088 lt!2535521)))))

(declare-fun b!7060759 () Bool)

(assert (=> b!7060759 (= e!4244847 (as set.empty (Set Context!13176)))))

(assert (= (and d!2207426 res!2882636) b!7060757))

(assert (= (and d!2207426 c!1315989) b!7060755))

(assert (= (and d!2207426 (not c!1315989)) b!7060758))

(assert (= (and b!7060758 c!1315990) b!7060756))

(assert (= (and b!7060758 (not c!1315990)) b!7060759))

(assert (= (or b!7060755 b!7060756) bm!641610))

(declare-fun m!7780808 () Bool)

(assert (=> bm!641610 m!7780808))

(declare-fun m!7780810 () Bool)

(assert (=> b!7060755 m!7780810))

(declare-fun m!7780812 () Bool)

(assert (=> b!7060757 m!7780812))

(assert (=> b!7060591 d!2207426))

(declare-fun bm!641623 () Bool)

(declare-fun call!641631 () (Set Context!13176))

(declare-fun call!641628 () (Set Context!13176))

(assert (=> bm!641623 (= call!641631 call!641628)))

(declare-fun bm!641624 () Bool)

(declare-fun call!641633 () (Set Context!13176))

(assert (=> bm!641624 (= call!641628 call!641633)))

(declare-fun b!7060782 () Bool)

(declare-fun e!4244866 () (Set Context!13176))

(assert (=> b!7060782 (= e!4244866 call!641631)))

(declare-fun d!2207428 () Bool)

(declare-fun c!1316005 () Bool)

(assert (=> d!2207428 (= c!1316005 (and (is-ElementMatch!17592 (h!74626 (exprs!7088 lt!2535551))) (= (c!1315951 (h!74626 (exprs!7088 lt!2535551))) (h!74627 s!7408))))))

(declare-fun e!4244861 () (Set Context!13176))

(assert (=> d!2207428 (= (derivationStepZipperDown!2226 (h!74626 (exprs!7088 lt!2535551)) lt!2535521 (h!74627 s!7408)) e!4244861)))

(declare-fun bm!641625 () Bool)

(declare-fun call!641630 () List!68302)

(declare-fun call!641629 () List!68302)

(assert (=> bm!641625 (= call!641630 call!641629)))

(declare-fun b!7060783 () Bool)

(assert (=> b!7060783 (= e!4244861 (set.insert lt!2535521 (as set.empty (Set Context!13176))))))

(declare-fun b!7060784 () Bool)

(declare-fun e!4244863 () (Set Context!13176))

(assert (=> b!7060784 (= e!4244863 e!4244866)))

(declare-fun c!1316004 () Bool)

(assert (=> b!7060784 (= c!1316004 (is-Concat!26437 (h!74626 (exprs!7088 lt!2535551))))))

(declare-fun b!7060785 () Bool)

(declare-fun c!1316003 () Bool)

(declare-fun e!4244865 () Bool)

(assert (=> b!7060785 (= c!1316003 e!4244865)))

(declare-fun res!2882639 () Bool)

(assert (=> b!7060785 (=> (not res!2882639) (not e!4244865))))

(assert (=> b!7060785 (= res!2882639 (is-Concat!26437 (h!74626 (exprs!7088 lt!2535551))))))

(declare-fun e!4244864 () (Set Context!13176))

(assert (=> b!7060785 (= e!4244864 e!4244863)))

(declare-fun b!7060786 () Bool)

(declare-fun c!1316002 () Bool)

(assert (=> b!7060786 (= c!1316002 (is-Star!17592 (h!74626 (exprs!7088 lt!2535551))))))

(declare-fun e!4244862 () (Set Context!13176))

(assert (=> b!7060786 (= e!4244866 e!4244862)))

(declare-fun c!1316001 () Bool)

(declare-fun bm!641626 () Bool)

(declare-fun call!641632 () (Set Context!13176))

(assert (=> bm!641626 (= call!641632 (derivationStepZipperDown!2226 (ite c!1316001 (regTwo!35697 (h!74626 (exprs!7088 lt!2535551))) (regOne!35696 (h!74626 (exprs!7088 lt!2535551)))) (ite c!1316001 lt!2535521 (Context!13177 call!641629)) (h!74627 s!7408)))))

(declare-fun b!7060787 () Bool)

(assert (=> b!7060787 (= e!4244862 call!641631)))

(declare-fun bm!641627 () Bool)

(declare-fun $colon$colon!2632 (List!68302 Regex!17592) List!68302)

(assert (=> bm!641627 (= call!641629 ($colon$colon!2632 (exprs!7088 lt!2535521) (ite (or c!1316003 c!1316004) (regTwo!35696 (h!74626 (exprs!7088 lt!2535551))) (h!74626 (exprs!7088 lt!2535551)))))))

(declare-fun b!7060788 () Bool)

(assert (=> b!7060788 (= e!4244862 (as set.empty (Set Context!13176)))))

(declare-fun b!7060789 () Bool)

(assert (=> b!7060789 (= e!4244861 e!4244864)))

(assert (=> b!7060789 (= c!1316001 (is-Union!17592 (h!74626 (exprs!7088 lt!2535551))))))

(declare-fun b!7060790 () Bool)

(assert (=> b!7060790 (= e!4244865 (nullable!7275 (regOne!35696 (h!74626 (exprs!7088 lt!2535551)))))))

(declare-fun bm!641628 () Bool)

(assert (=> bm!641628 (= call!641633 (derivationStepZipperDown!2226 (ite c!1316001 (regOne!35697 (h!74626 (exprs!7088 lt!2535551))) (ite c!1316003 (regTwo!35696 (h!74626 (exprs!7088 lt!2535551))) (ite c!1316004 (regOne!35696 (h!74626 (exprs!7088 lt!2535551))) (reg!17921 (h!74626 (exprs!7088 lt!2535551)))))) (ite (or c!1316001 c!1316003) lt!2535521 (Context!13177 call!641630)) (h!74627 s!7408)))))

(declare-fun b!7060791 () Bool)

(assert (=> b!7060791 (= e!4244863 (set.union call!641632 call!641628))))

(declare-fun b!7060792 () Bool)

(assert (=> b!7060792 (= e!4244864 (set.union call!641633 call!641632))))

(assert (= (and d!2207428 c!1316005) b!7060783))

(assert (= (and d!2207428 (not c!1316005)) b!7060789))

(assert (= (and b!7060789 c!1316001) b!7060792))

(assert (= (and b!7060789 (not c!1316001)) b!7060785))

(assert (= (and b!7060785 res!2882639) b!7060790))

(assert (= (and b!7060785 c!1316003) b!7060791))

(assert (= (and b!7060785 (not c!1316003)) b!7060784))

(assert (= (and b!7060784 c!1316004) b!7060782))

(assert (= (and b!7060784 (not c!1316004)) b!7060786))

(assert (= (and b!7060786 c!1316002) b!7060787))

(assert (= (and b!7060786 (not c!1316002)) b!7060788))

(assert (= (or b!7060782 b!7060787) bm!641625))

(assert (= (or b!7060782 b!7060787) bm!641623))

(assert (= (or b!7060791 bm!641623) bm!641624))

(assert (= (or b!7060791 bm!641625) bm!641627))

(assert (= (or b!7060792 bm!641624) bm!641628))

(assert (= (or b!7060792 b!7060791) bm!641626))

(declare-fun m!7780814 () Bool)

(assert (=> b!7060790 m!7780814))

(declare-fun m!7780816 () Bool)

(assert (=> bm!641626 m!7780816))

(declare-fun m!7780818 () Bool)

(assert (=> bm!641627 m!7780818))

(assert (=> b!7060783 m!7780486))

(declare-fun m!7780820 () Bool)

(assert (=> bm!641628 m!7780820))

(assert (=> b!7060591 d!2207428))

(declare-fun d!2207430 () Bool)

(assert (=> d!2207430 (forall!16540 (++!15681 (exprs!7088 lt!2535551) (exprs!7088 ct2!306)) lambda!421877)))

(declare-fun lt!2535737 () Unit!161860)

(assert (=> d!2207430 (= lt!2535737 (choose!53902 (exprs!7088 lt!2535551) (exprs!7088 ct2!306) lambda!421877))))

(assert (=> d!2207430 (forall!16540 (exprs!7088 lt!2535551) lambda!421877)))

(assert (=> d!2207430 (= (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535551) (exprs!7088 ct2!306) lambda!421877) lt!2535737)))

(declare-fun bs!1879005 () Bool)

(assert (= bs!1879005 d!2207430))

(assert (=> bs!1879005 m!7780586))

(assert (=> bs!1879005 m!7780586))

(declare-fun m!7780822 () Bool)

(assert (=> bs!1879005 m!7780822))

(declare-fun m!7780824 () Bool)

(assert (=> bs!1879005 m!7780824))

(declare-fun m!7780826 () Bool)

(assert (=> bs!1879005 m!7780826))

(assert (=> b!7060593 d!2207430))

(declare-fun d!2207432 () Bool)

(declare-fun c!1316006 () Bool)

(assert (=> d!2207432 (= c!1316006 (isEmpty!39768 (_2!37396 lt!2535518)))))

(declare-fun e!4244867 () Bool)

(assert (=> d!2207432 (= (matchZipper!3132 lt!2535502 (_2!37396 lt!2535518)) e!4244867)))

(declare-fun b!7060793 () Bool)

(assert (=> b!7060793 (= e!4244867 (nullableZipper!2669 lt!2535502))))

(declare-fun b!7060794 () Bool)

(assert (=> b!7060794 (= e!4244867 (matchZipper!3132 (derivationStepZipper!3042 lt!2535502 (head!14372 (_2!37396 lt!2535518))) (tail!13736 (_2!37396 lt!2535518))))))

(assert (= (and d!2207432 c!1316006) b!7060793))

(assert (= (and d!2207432 (not c!1316006)) b!7060794))

(declare-fun m!7780828 () Bool)

(assert (=> d!2207432 m!7780828))

(declare-fun m!7780830 () Bool)

(assert (=> b!7060793 m!7780830))

(declare-fun m!7780832 () Bool)

(assert (=> b!7060794 m!7780832))

(assert (=> b!7060794 m!7780832))

(declare-fun m!7780834 () Bool)

(assert (=> b!7060794 m!7780834))

(declare-fun m!7780836 () Bool)

(assert (=> b!7060794 m!7780836))

(assert (=> b!7060794 m!7780834))

(assert (=> b!7060794 m!7780836))

(declare-fun m!7780838 () Bool)

(assert (=> b!7060794 m!7780838))

(assert (=> b!7060594 d!2207432))

(declare-fun d!2207434 () Bool)

(declare-fun lt!2535740 () Int)

(assert (=> d!2207434 (>= lt!2535740 0)))

(declare-fun e!4244870 () Int)

(assert (=> d!2207434 (= lt!2535740 e!4244870)))

(declare-fun c!1316009 () Bool)

(assert (=> d!2207434 (= c!1316009 (is-Cons!68180 (Cons!68180 lt!2535512 Nil!68180)))))

(assert (=> d!2207434 (= (zipperDepthTotal!557 (Cons!68180 lt!2535512 Nil!68180)) lt!2535740)))

(declare-fun b!7060799 () Bool)

(assert (=> b!7060799 (= e!4244870 (+ (contextDepthTotal!528 (h!74628 (Cons!68180 lt!2535512 Nil!68180))) (zipperDepthTotal!557 (t!382085 (Cons!68180 lt!2535512 Nil!68180)))))))

(declare-fun b!7060800 () Bool)

(assert (=> b!7060800 (= e!4244870 0)))

(assert (= (and d!2207434 c!1316009) b!7060799))

(assert (= (and d!2207434 (not c!1316009)) b!7060800))

(declare-fun m!7780840 () Bool)

(assert (=> b!7060799 m!7780840))

(declare-fun m!7780842 () Bool)

(assert (=> b!7060799 m!7780842))

(assert (=> b!7060595 d!2207434))

(assert (=> b!7060598 d!2207424))

(declare-fun d!2207436 () Bool)

(declare-fun c!1316010 () Bool)

(assert (=> d!2207436 (= c!1316010 (isEmpty!39768 (t!382084 s!7408)))))

(declare-fun e!4244871 () Bool)

(assert (=> d!2207436 (= (matchZipper!3132 lt!2535543 (t!382084 s!7408)) e!4244871)))

(declare-fun b!7060801 () Bool)

(assert (=> b!7060801 (= e!4244871 (nullableZipper!2669 lt!2535543))))

(declare-fun b!7060802 () Bool)

(assert (=> b!7060802 (= e!4244871 (matchZipper!3132 (derivationStepZipper!3042 lt!2535543 (head!14372 (t!382084 s!7408))) (tail!13736 (t!382084 s!7408))))))

(assert (= (and d!2207436 c!1316010) b!7060801))

(assert (= (and d!2207436 (not c!1316010)) b!7060802))

(declare-fun m!7780844 () Bool)

(assert (=> d!2207436 m!7780844))

(declare-fun m!7780846 () Bool)

(assert (=> b!7060801 m!7780846))

(declare-fun m!7780848 () Bool)

(assert (=> b!7060802 m!7780848))

(assert (=> b!7060802 m!7780848))

(declare-fun m!7780850 () Bool)

(assert (=> b!7060802 m!7780850))

(declare-fun m!7780852 () Bool)

(assert (=> b!7060802 m!7780852))

(assert (=> b!7060802 m!7780850))

(assert (=> b!7060802 m!7780852))

(declare-fun m!7780854 () Bool)

(assert (=> b!7060802 m!7780854))

(assert (=> b!7060598 d!2207436))

(declare-fun d!2207438 () Bool)

(declare-fun c!1316011 () Bool)

(assert (=> d!2207438 (= c!1316011 (isEmpty!39768 (t!382084 s!7408)))))

(declare-fun e!4244872 () Bool)

(assert (=> d!2207438 (= (matchZipper!3132 lt!2535523 (t!382084 s!7408)) e!4244872)))

(declare-fun b!7060803 () Bool)

(assert (=> b!7060803 (= e!4244872 (nullableZipper!2669 lt!2535523))))

(declare-fun b!7060804 () Bool)

(assert (=> b!7060804 (= e!4244872 (matchZipper!3132 (derivationStepZipper!3042 lt!2535523 (head!14372 (t!382084 s!7408))) (tail!13736 (t!382084 s!7408))))))

(assert (= (and d!2207438 c!1316011) b!7060803))

(assert (= (and d!2207438 (not c!1316011)) b!7060804))

(assert (=> d!2207438 m!7780844))

(declare-fun m!7780856 () Bool)

(assert (=> b!7060803 m!7780856))

(assert (=> b!7060804 m!7780848))

(assert (=> b!7060804 m!7780848))

(declare-fun m!7780858 () Bool)

(assert (=> b!7060804 m!7780858))

(assert (=> b!7060804 m!7780852))

(assert (=> b!7060804 m!7780858))

(assert (=> b!7060804 m!7780852))

(declare-fun m!7780860 () Bool)

(assert (=> b!7060804 m!7780860))

(assert (=> b!7060598 d!2207438))

(declare-fun d!2207440 () Bool)

(declare-fun c!1316012 () Bool)

(assert (=> d!2207440 (= c!1316012 (isEmpty!39768 (t!382084 s!7408)))))

(declare-fun e!4244873 () Bool)

(assert (=> d!2207440 (= (matchZipper!3132 lt!2535548 (t!382084 s!7408)) e!4244873)))

(declare-fun b!7060805 () Bool)

(assert (=> b!7060805 (= e!4244873 (nullableZipper!2669 lt!2535548))))

(declare-fun b!7060806 () Bool)

(assert (=> b!7060806 (= e!4244873 (matchZipper!3132 (derivationStepZipper!3042 lt!2535548 (head!14372 (t!382084 s!7408))) (tail!13736 (t!382084 s!7408))))))

(assert (= (and d!2207440 c!1316012) b!7060805))

(assert (= (and d!2207440 (not c!1316012)) b!7060806))

(assert (=> d!2207440 m!7780844))

(declare-fun m!7780862 () Bool)

(assert (=> b!7060805 m!7780862))

(assert (=> b!7060806 m!7780848))

(assert (=> b!7060806 m!7780848))

(declare-fun m!7780864 () Bool)

(assert (=> b!7060806 m!7780864))

(assert (=> b!7060806 m!7780852))

(assert (=> b!7060806 m!7780864))

(assert (=> b!7060806 m!7780852))

(declare-fun m!7780866 () Bool)

(assert (=> b!7060806 m!7780866))

(assert (=> b!7060598 d!2207440))

(declare-fun d!2207442 () Bool)

(declare-fun e!4244876 () Bool)

(assert (=> d!2207442 (= (matchZipper!3132 (set.union lt!2535543 lt!2535533) (t!382084 s!7408)) e!4244876)))

(declare-fun res!2882643 () Bool)

(assert (=> d!2207442 (=> res!2882643 e!4244876)))

(assert (=> d!2207442 (= res!2882643 (matchZipper!3132 lt!2535543 (t!382084 s!7408)))))

(declare-fun lt!2535743 () Unit!161860)

(declare-fun choose!53903 ((Set Context!13176) (Set Context!13176) List!68303) Unit!161860)

(assert (=> d!2207442 (= lt!2535743 (choose!53903 lt!2535543 lt!2535533 (t!382084 s!7408)))))

(assert (=> d!2207442 (= (lemmaZipperConcatMatchesSameAsBothZippers!1605 lt!2535543 lt!2535533 (t!382084 s!7408)) lt!2535743)))

(declare-fun b!7060809 () Bool)

(assert (=> b!7060809 (= e!4244876 (matchZipper!3132 lt!2535533 (t!382084 s!7408)))))

(assert (= (and d!2207442 (not res!2882643)) b!7060809))

(declare-fun m!7780868 () Bool)

(assert (=> d!2207442 m!7780868))

(assert (=> d!2207442 m!7780614))

(declare-fun m!7780870 () Bool)

(assert (=> d!2207442 m!7780870))

(assert (=> b!7060809 m!7780538))

(assert (=> b!7060598 d!2207442))

(assert (=> b!7060599 d!2207424))

(declare-fun bs!1879006 () Bool)

(declare-fun d!2207444 () Bool)

(assert (= bs!1879006 (and d!2207444 b!7060579)))

(declare-fun lambda!421959 () Int)

(assert (=> bs!1879006 (= lambda!421959 lambda!421878)))

(assert (=> d!2207444 true))

(assert (=> d!2207444 (= (derivationStepZipper!3042 lt!2535544 (h!74627 s!7408)) (flatMap!2518 lt!2535544 lambda!421959))))

(declare-fun bs!1879007 () Bool)

(assert (= bs!1879007 d!2207444))

(declare-fun m!7780872 () Bool)

(assert (=> bs!1879007 m!7780872))

(assert (=> b!7060599 d!2207444))

(declare-fun d!2207446 () Bool)

(declare-fun choose!53904 ((Set Context!13176) Int) (Set Context!13176))

(assert (=> d!2207446 (= (flatMap!2518 lt!2535544 lambda!421878) (choose!53904 lt!2535544 lambda!421878))))

(declare-fun bs!1879008 () Bool)

(assert (= bs!1879008 d!2207446))

(declare-fun m!7780874 () Bool)

(assert (=> bs!1879008 m!7780874))

(assert (=> b!7060599 d!2207446))

(assert (=> b!7060599 d!2207426))

(declare-fun d!2207448 () Bool)

(declare-fun dynLambda!27683 (Int Context!13176) (Set Context!13176))

(assert (=> d!2207448 (= (flatMap!2518 lt!2535544 lambda!421878) (dynLambda!27683 lambda!421878 lt!2535521))))

(declare-fun lt!2535746 () Unit!161860)

(declare-fun choose!53905 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> d!2207448 (= lt!2535746 (choose!53905 lt!2535544 lt!2535521 lambda!421878))))

(assert (=> d!2207448 (= lt!2535544 (set.insert lt!2535521 (as set.empty (Set Context!13176))))))

(assert (=> d!2207448 (= (lemmaFlatMapOnSingletonSet!2027 lt!2535544 lt!2535521 lambda!421878) lt!2535746)))

(declare-fun b_lambda!269211 () Bool)

(assert (=> (not b_lambda!269211) (not d!2207448)))

(declare-fun bs!1879009 () Bool)

(assert (= bs!1879009 d!2207448))

(assert (=> bs!1879009 m!7780490))

(declare-fun m!7780876 () Bool)

(assert (=> bs!1879009 m!7780876))

(declare-fun m!7780878 () Bool)

(assert (=> bs!1879009 m!7780878))

(assert (=> bs!1879009 m!7780486))

(assert (=> b!7060599 d!2207448))

(declare-fun d!2207450 () Bool)

(declare-fun c!1316015 () Bool)

(declare-fun e!4244877 () Bool)

(assert (=> d!2207450 (= c!1316015 e!4244877)))

(declare-fun res!2882644 () Bool)

(assert (=> d!2207450 (=> (not res!2882644) (not e!4244877))))

(assert (=> d!2207450 (= res!2882644 (is-Cons!68178 (exprs!7088 lt!2535512)))))

(declare-fun e!4244879 () (Set Context!13176))

(assert (=> d!2207450 (= (derivationStepZipperUp!2176 lt!2535512 (h!74627 s!7408)) e!4244879)))

(declare-fun bm!641629 () Bool)

(declare-fun call!641634 () (Set Context!13176))

(assert (=> bm!641629 (= call!641634 (derivationStepZipperDown!2226 (h!74626 (exprs!7088 lt!2535512)) (Context!13177 (t!382083 (exprs!7088 lt!2535512))) (h!74627 s!7408)))))

(declare-fun b!7060812 () Bool)

(assert (=> b!7060812 (= e!4244879 (set.union call!641634 (derivationStepZipperUp!2176 (Context!13177 (t!382083 (exprs!7088 lt!2535512))) (h!74627 s!7408))))))

(declare-fun b!7060813 () Bool)

(declare-fun e!4244878 () (Set Context!13176))

(assert (=> b!7060813 (= e!4244878 call!641634)))

(declare-fun b!7060814 () Bool)

(assert (=> b!7060814 (= e!4244877 (nullable!7275 (h!74626 (exprs!7088 lt!2535512))))))

(declare-fun b!7060815 () Bool)

(assert (=> b!7060815 (= e!4244879 e!4244878)))

(declare-fun c!1316016 () Bool)

(assert (=> b!7060815 (= c!1316016 (is-Cons!68178 (exprs!7088 lt!2535512)))))

(declare-fun b!7060816 () Bool)

(assert (=> b!7060816 (= e!4244878 (as set.empty (Set Context!13176)))))

(assert (= (and d!2207450 res!2882644) b!7060814))

(assert (= (and d!2207450 c!1316015) b!7060812))

(assert (= (and d!2207450 (not c!1316015)) b!7060815))

(assert (= (and b!7060815 c!1316016) b!7060813))

(assert (= (and b!7060815 (not c!1316016)) b!7060816))

(assert (= (or b!7060812 b!7060813) bm!641629))

(declare-fun m!7780880 () Bool)

(assert (=> bm!641629 m!7780880))

(declare-fun m!7780882 () Bool)

(assert (=> b!7060812 m!7780882))

(declare-fun m!7780884 () Bool)

(assert (=> b!7060814 m!7780884))

(assert (=> b!7060580 d!2207450))

(declare-fun d!2207452 () Bool)

(declare-fun lt!2535749 () Int)

(assert (=> d!2207452 (>= lt!2535749 0)))

(declare-fun e!4244882 () Int)

(assert (=> d!2207452 (= lt!2535749 e!4244882)))

(declare-fun c!1316020 () Bool)

(assert (=> d!2207452 (= c!1316020 (is-Cons!68178 (exprs!7088 lt!2535551)))))

(assert (=> d!2207452 (= (contextDepthTotal!528 lt!2535551) lt!2535749)))

(declare-fun b!7060821 () Bool)

(declare-fun regexDepthTotal!318 (Regex!17592) Int)

(assert (=> b!7060821 (= e!4244882 (+ (regexDepthTotal!318 (h!74626 (exprs!7088 lt!2535551))) (contextDepthTotal!528 (Context!13177 (t!382083 (exprs!7088 lt!2535551))))))))

(declare-fun b!7060822 () Bool)

(assert (=> b!7060822 (= e!4244882 1)))

(assert (= (and d!2207452 c!1316020) b!7060821))

(assert (= (and d!2207452 (not c!1316020)) b!7060822))

(declare-fun m!7780886 () Bool)

(assert (=> b!7060821 m!7780886))

(declare-fun m!7780888 () Bool)

(assert (=> b!7060821 m!7780888))

(assert (=> b!7060580 d!2207452))

(assert (=> b!7060580 d!2207422))

(declare-fun d!2207454 () Bool)

(declare-fun dynLambda!27684 (Int Context!13176) Context!13176)

(assert (=> d!2207454 (= (map!15921 lt!2535535 lambda!421876) (set.insert (dynLambda!27684 lambda!421876 lt!2535512) (as set.empty (Set Context!13176))))))

(declare-fun lt!2535752 () Unit!161860)

(declare-fun choose!53906 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> d!2207454 (= lt!2535752 (choose!53906 lt!2535535 lt!2535512 lambda!421876))))

(assert (=> d!2207454 (= lt!2535535 (set.insert lt!2535512 (as set.empty (Set Context!13176))))))

(assert (=> d!2207454 (= (lemmaMapOnSingletonSet!409 lt!2535535 lt!2535512 lambda!421876) lt!2535752)))

(declare-fun b_lambda!269213 () Bool)

(assert (=> (not b_lambda!269213) (not d!2207454)))

(declare-fun bs!1879010 () Bool)

(assert (= bs!1879010 d!2207454))

(declare-fun m!7780890 () Bool)

(assert (=> bs!1879010 m!7780890))

(declare-fun m!7780892 () Bool)

(assert (=> bs!1879010 m!7780892))

(assert (=> bs!1879010 m!7780564))

(assert (=> bs!1879010 m!7780890))

(declare-fun m!7780894 () Bool)

(assert (=> bs!1879010 m!7780894))

(assert (=> bs!1879010 m!7780582))

(assert (=> b!7060580 d!2207454))

(declare-fun d!2207456 () Bool)

(assert (=> d!2207456 (= (flatMap!2518 lt!2535535 lambda!421878) (choose!53904 lt!2535535 lambda!421878))))

(declare-fun bs!1879011 () Bool)

(assert (= bs!1879011 d!2207456))

(declare-fun m!7780896 () Bool)

(assert (=> bs!1879011 m!7780896))

(assert (=> b!7060580 d!2207456))

(assert (=> b!7060580 d!2207424))

(declare-fun d!2207458 () Bool)

(declare-fun lt!2535753 () Int)

(assert (=> d!2207458 (>= lt!2535753 0)))

(declare-fun e!4244883 () Int)

(assert (=> d!2207458 (= lt!2535753 e!4244883)))

(declare-fun c!1316021 () Bool)

(assert (=> d!2207458 (= c!1316021 (is-Cons!68178 (exprs!7088 lt!2535512)))))

(assert (=> d!2207458 (= (contextDepthTotal!528 lt!2535512) lt!2535753)))

(declare-fun b!7060823 () Bool)

(assert (=> b!7060823 (= e!4244883 (+ (regexDepthTotal!318 (h!74626 (exprs!7088 lt!2535512))) (contextDepthTotal!528 (Context!13177 (t!382083 (exprs!7088 lt!2535512))))))))

(declare-fun b!7060824 () Bool)

(assert (=> b!7060824 (= e!4244883 1)))

(assert (= (and d!2207458 c!1316021) b!7060823))

(assert (= (and d!2207458 (not c!1316021)) b!7060824))

(declare-fun m!7780898 () Bool)

(assert (=> b!7060823 m!7780898))

(declare-fun m!7780900 () Bool)

(assert (=> b!7060823 m!7780900))

(assert (=> b!7060580 d!2207458))

(declare-fun d!2207460 () Bool)

(declare-fun lt!2535754 () Int)

(assert (=> d!2207460 (>= lt!2535754 0)))

(declare-fun e!4244884 () Int)

(assert (=> d!2207460 (= lt!2535754 e!4244884)))

(declare-fun c!1316022 () Bool)

(assert (=> d!2207460 (= c!1316022 (is-Cons!68180 lt!2535525))))

(assert (=> d!2207460 (= (zipperDepthTotal!557 lt!2535525) lt!2535754)))

(declare-fun b!7060825 () Bool)

(assert (=> b!7060825 (= e!4244884 (+ (contextDepthTotal!528 (h!74628 lt!2535525)) (zipperDepthTotal!557 (t!382085 lt!2535525))))))

(declare-fun b!7060826 () Bool)

(assert (=> b!7060826 (= e!4244884 0)))

(assert (= (and d!2207460 c!1316022) b!7060825))

(assert (= (and d!2207460 (not c!1316022)) b!7060826))

(declare-fun m!7780902 () Bool)

(assert (=> b!7060825 m!7780902))

(declare-fun m!7780904 () Bool)

(assert (=> b!7060825 m!7780904))

(assert (=> b!7060580 d!2207460))

(declare-fun d!2207462 () Bool)

(declare-fun e!4244887 () Bool)

(assert (=> d!2207462 e!4244887))

(declare-fun res!2882647 () Bool)

(assert (=> d!2207462 (=> (not res!2882647) (not e!4244887))))

(declare-fun lt!2535757 () List!68304)

(declare-fun noDuplicate!2700 (List!68304) Bool)

(assert (=> d!2207462 (= res!2882647 (noDuplicate!2700 lt!2535757))))

(declare-fun choose!53907 ((Set Context!13176)) List!68304)

(assert (=> d!2207462 (= lt!2535757 (choose!53907 z1!570))))

(assert (=> d!2207462 (= (toList!10933 z1!570) lt!2535757)))

(declare-fun b!7060829 () Bool)

(declare-fun content!13709 (List!68304) (Set Context!13176))

(assert (=> b!7060829 (= e!4244887 (= (content!13709 lt!2535757) z1!570))))

(assert (= (and d!2207462 res!2882647) b!7060829))

(declare-fun m!7780906 () Bool)

(assert (=> d!2207462 m!7780906))

(declare-fun m!7780908 () Bool)

(assert (=> d!2207462 m!7780908))

(declare-fun m!7780910 () Bool)

(assert (=> b!7060829 m!7780910))

(assert (=> b!7060580 d!2207462))

(declare-fun d!2207464 () Bool)

(declare-fun choose!53908 ((Set Context!13176) Int) (Set Context!13176))

(assert (=> d!2207464 (= (map!15921 lt!2535535 lambda!421876) (choose!53908 lt!2535535 lambda!421876))))

(declare-fun bs!1879012 () Bool)

(assert (= bs!1879012 d!2207464))

(declare-fun m!7780912 () Bool)

(assert (=> bs!1879012 m!7780912))

(assert (=> b!7060580 d!2207464))

(declare-fun d!2207466 () Bool)

(assert (=> d!2207466 (<= (contextDepthTotal!528 lt!2535551) (zipperDepthTotal!557 lt!2535525))))

(declare-fun lt!2535760 () Unit!161860)

(declare-fun choose!53909 (List!68304 Context!13176) Unit!161860)

(assert (=> d!2207466 (= lt!2535760 (choose!53909 lt!2535525 lt!2535551))))

(declare-fun contains!20488 (List!68304 Context!13176) Bool)

(assert (=> d!2207466 (contains!20488 lt!2535525 lt!2535551)))

(assert (=> d!2207466 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!95 lt!2535525 lt!2535551) lt!2535760)))

(declare-fun bs!1879013 () Bool)

(assert (= bs!1879013 d!2207466))

(assert (=> bs!1879013 m!7780566))

(assert (=> bs!1879013 m!7780576))

(declare-fun m!7780914 () Bool)

(assert (=> bs!1879013 m!7780914))

(declare-fun m!7780916 () Bool)

(assert (=> bs!1879013 m!7780916))

(assert (=> b!7060580 d!2207466))

(declare-fun d!2207468 () Bool)

(assert (=> d!2207468 (= (flatMap!2518 lt!2535535 lambda!421878) (dynLambda!27683 lambda!421878 lt!2535512))))

(declare-fun lt!2535761 () Unit!161860)

(assert (=> d!2207468 (= lt!2535761 (choose!53905 lt!2535535 lt!2535512 lambda!421878))))

(assert (=> d!2207468 (= lt!2535535 (set.insert lt!2535512 (as set.empty (Set Context!13176))))))

(assert (=> d!2207468 (= (lemmaFlatMapOnSingletonSet!2027 lt!2535535 lt!2535512 lambda!421878) lt!2535761)))

(declare-fun b_lambda!269215 () Bool)

(assert (=> (not b_lambda!269215) (not d!2207468)))

(declare-fun bs!1879014 () Bool)

(assert (= bs!1879014 d!2207468))

(assert (=> bs!1879014 m!7780570))

(declare-fun m!7780918 () Bool)

(assert (=> bs!1879014 m!7780918))

(declare-fun m!7780920 () Bool)

(assert (=> bs!1879014 m!7780920))

(assert (=> bs!1879014 m!7780564))

(assert (=> b!7060580 d!2207468))

(declare-fun b!7060831 () Bool)

(declare-fun e!4244889 () List!68302)

(assert (=> b!7060831 (= e!4244889 (Cons!68178 (h!74626 (exprs!7088 lt!2535551)) (++!15681 (t!382083 (exprs!7088 lt!2535551)) (exprs!7088 ct2!306))))))

(declare-fun b!7060830 () Bool)

(assert (=> b!7060830 (= e!4244889 (exprs!7088 ct2!306))))

(declare-fun b!7060832 () Bool)

(declare-fun res!2882649 () Bool)

(declare-fun e!4244888 () Bool)

(assert (=> b!7060832 (=> (not res!2882649) (not e!4244888))))

(declare-fun lt!2535762 () List!68302)

(assert (=> b!7060832 (= res!2882649 (= (size!41164 lt!2535762) (+ (size!41164 (exprs!7088 lt!2535551)) (size!41164 (exprs!7088 ct2!306)))))))

(declare-fun d!2207470 () Bool)

(assert (=> d!2207470 e!4244888))

(declare-fun res!2882648 () Bool)

(assert (=> d!2207470 (=> (not res!2882648) (not e!4244888))))

(assert (=> d!2207470 (= res!2882648 (= (content!13708 lt!2535762) (set.union (content!13708 (exprs!7088 lt!2535551)) (content!13708 (exprs!7088 ct2!306)))))))

(assert (=> d!2207470 (= lt!2535762 e!4244889)))

(declare-fun c!1316024 () Bool)

(assert (=> d!2207470 (= c!1316024 (is-Nil!68178 (exprs!7088 lt!2535551)))))

(assert (=> d!2207470 (= (++!15681 (exprs!7088 lt!2535551) (exprs!7088 ct2!306)) lt!2535762)))

(declare-fun b!7060833 () Bool)

(assert (=> b!7060833 (= e!4244888 (or (not (= (exprs!7088 ct2!306) Nil!68178)) (= lt!2535762 (exprs!7088 lt!2535551))))))

(assert (= (and d!2207470 c!1316024) b!7060830))

(assert (= (and d!2207470 (not c!1316024)) b!7060831))

(assert (= (and d!2207470 res!2882648) b!7060832))

(assert (= (and b!7060832 res!2882649) b!7060833))

(declare-fun m!7780922 () Bool)

(assert (=> b!7060831 m!7780922))

(declare-fun m!7780924 () Bool)

(assert (=> b!7060832 m!7780924))

(declare-fun m!7780926 () Bool)

(assert (=> b!7060832 m!7780926))

(assert (=> b!7060832 m!7780794))

(declare-fun m!7780928 () Bool)

(assert (=> d!2207470 m!7780928))

(declare-fun m!7780930 () Bool)

(assert (=> d!2207470 m!7780930))

(assert (=> d!2207470 m!7780800))

(assert (=> b!7060601 d!2207470))

(assert (=> b!7060601 d!2207430))

(declare-fun d!2207472 () Bool)

(declare-fun e!4244892 () Bool)

(assert (=> d!2207472 e!4244892))

(declare-fun res!2882652 () Bool)

(assert (=> d!2207472 (=> (not res!2882652) (not e!4244892))))

(declare-fun lt!2535765 () Context!13176)

(assert (=> d!2207472 (= res!2882652 (= lt!2535545 (dynLambda!27684 lambda!421876 lt!2535765)))))

(declare-fun choose!53910 ((Set Context!13176) Int Context!13176) Context!13176)

(assert (=> d!2207472 (= lt!2535765 (choose!53910 z1!570 lambda!421876 lt!2535545))))

(assert (=> d!2207472 (set.member lt!2535545 (map!15921 z1!570 lambda!421876))))

(assert (=> d!2207472 (= (mapPost2!421 z1!570 lambda!421876 lt!2535545) lt!2535765)))

(declare-fun b!7060837 () Bool)

(assert (=> b!7060837 (= e!4244892 (set.member lt!2535765 z1!570))))

(assert (= (and d!2207472 res!2882652) b!7060837))

(declare-fun b_lambda!269217 () Bool)

(assert (=> (not b_lambda!269217) (not d!2207472)))

(declare-fun m!7780932 () Bool)

(assert (=> d!2207472 m!7780932))

(declare-fun m!7780934 () Bool)

(assert (=> d!2207472 m!7780934))

(declare-fun m!7780936 () Bool)

(assert (=> d!2207472 m!7780936))

(declare-fun m!7780938 () Bool)

(assert (=> d!2207472 m!7780938))

(declare-fun m!7780940 () Bool)

(assert (=> b!7060837 m!7780940))

(assert (=> b!7060601 d!2207472))

(declare-fun d!2207474 () Bool)

(declare-fun c!1316025 () Bool)

(declare-fun e!4244893 () Bool)

(assert (=> d!2207474 (= c!1316025 e!4244893)))

(declare-fun res!2882653 () Bool)

(assert (=> d!2207474 (=> (not res!2882653) (not e!4244893))))

(assert (=> d!2207474 (= res!2882653 (is-Cons!68178 (exprs!7088 lt!2535550)))))

(declare-fun e!4244895 () (Set Context!13176))

(assert (=> d!2207474 (= (derivationStepZipperUp!2176 lt!2535550 (h!74627 s!7408)) e!4244895)))

(declare-fun bm!641630 () Bool)

(declare-fun call!641635 () (Set Context!13176))

(assert (=> bm!641630 (= call!641635 (derivationStepZipperDown!2226 (h!74626 (exprs!7088 lt!2535550)) (Context!13177 (t!382083 (exprs!7088 lt!2535550))) (h!74627 s!7408)))))

(declare-fun b!7060838 () Bool)

(assert (=> b!7060838 (= e!4244895 (set.union call!641635 (derivationStepZipperUp!2176 (Context!13177 (t!382083 (exprs!7088 lt!2535550))) (h!74627 s!7408))))))

(declare-fun b!7060839 () Bool)

(declare-fun e!4244894 () (Set Context!13176))

(assert (=> b!7060839 (= e!4244894 call!641635)))

(declare-fun b!7060840 () Bool)

(assert (=> b!7060840 (= e!4244893 (nullable!7275 (h!74626 (exprs!7088 lt!2535550))))))

(declare-fun b!7060841 () Bool)

(assert (=> b!7060841 (= e!4244895 e!4244894)))

(declare-fun c!1316026 () Bool)

(assert (=> b!7060841 (= c!1316026 (is-Cons!68178 (exprs!7088 lt!2535550)))))

(declare-fun b!7060842 () Bool)

(assert (=> b!7060842 (= e!4244894 (as set.empty (Set Context!13176)))))

(assert (= (and d!2207474 res!2882653) b!7060840))

(assert (= (and d!2207474 c!1316025) b!7060838))

(assert (= (and d!2207474 (not c!1316025)) b!7060841))

(assert (= (and b!7060841 c!1316026) b!7060839))

(assert (= (and b!7060841 (not c!1316026)) b!7060842))

(assert (= (or b!7060838 b!7060839) bm!641630))

(declare-fun m!7780942 () Bool)

(assert (=> bm!641630 m!7780942))

(declare-fun m!7780944 () Bool)

(assert (=> b!7060838 m!7780944))

(declare-fun m!7780946 () Bool)

(assert (=> b!7060840 m!7780946))

(assert (=> b!7060579 d!2207474))

(assert (=> b!7060579 d!2207430))

(declare-fun d!2207476 () Bool)

(assert (=> d!2207476 (= (flatMap!2518 lt!2535515 lambda!421878) (choose!53904 lt!2535515 lambda!421878))))

(declare-fun bs!1879015 () Bool)

(assert (= bs!1879015 d!2207476))

(declare-fun m!7780948 () Bool)

(assert (=> bs!1879015 m!7780948))

(assert (=> b!7060579 d!2207476))

(declare-fun bs!1879016 () Bool)

(declare-fun d!2207478 () Bool)

(assert (= bs!1879016 (and d!2207478 b!7060579)))

(declare-fun lambda!421960 () Int)

(assert (=> bs!1879016 (= lambda!421960 lambda!421878)))

(declare-fun bs!1879017 () Bool)

(assert (= bs!1879017 (and d!2207478 d!2207444)))

(assert (=> bs!1879017 (= lambda!421960 lambda!421959)))

(assert (=> d!2207478 true))

(assert (=> d!2207478 (= (derivationStepZipper!3042 lt!2535515 (h!74627 s!7408)) (flatMap!2518 lt!2535515 lambda!421960))))

(declare-fun bs!1879018 () Bool)

(assert (= bs!1879018 d!2207478))

(declare-fun m!7780950 () Bool)

(assert (=> bs!1879018 m!7780950))

(assert (=> b!7060579 d!2207478))

(declare-fun d!2207480 () Bool)

(assert (=> d!2207480 (= (flatMap!2518 lt!2535515 lambda!421878) (dynLambda!27683 lambda!421878 lt!2535550))))

(declare-fun lt!2535766 () Unit!161860)

(assert (=> d!2207480 (= lt!2535766 (choose!53905 lt!2535515 lt!2535550 lambda!421878))))

(assert (=> d!2207480 (= lt!2535515 (set.insert lt!2535550 (as set.empty (Set Context!13176))))))

(assert (=> d!2207480 (= (lemmaFlatMapOnSingletonSet!2027 lt!2535515 lt!2535550 lambda!421878) lt!2535766)))

(declare-fun b_lambda!269219 () Bool)

(assert (=> (not b_lambda!269219) (not d!2207480)))

(declare-fun bs!1879019 () Bool)

(assert (= bs!1879019 d!2207480))

(assert (=> bs!1879019 m!7780504))

(declare-fun m!7780952 () Bool)

(assert (=> bs!1879019 m!7780952))

(declare-fun m!7780954 () Bool)

(assert (=> bs!1879019 m!7780954))

(assert (=> bs!1879019 m!7780536))

(assert (=> b!7060579 d!2207480))

(declare-fun d!2207482 () Bool)

(declare-fun c!1316027 () Bool)

(assert (=> d!2207482 (= c!1316027 (isEmpty!39768 (t!382084 s!7408)))))

(declare-fun e!4244896 () Bool)

(assert (=> d!2207482 (= (matchZipper!3132 lt!2535533 (t!382084 s!7408)) e!4244896)))

(declare-fun b!7060843 () Bool)

(assert (=> b!7060843 (= e!4244896 (nullableZipper!2669 lt!2535533))))

(declare-fun b!7060844 () Bool)

(assert (=> b!7060844 (= e!4244896 (matchZipper!3132 (derivationStepZipper!3042 lt!2535533 (head!14372 (t!382084 s!7408))) (tail!13736 (t!382084 s!7408))))))

(assert (= (and d!2207482 c!1316027) b!7060843))

(assert (= (and d!2207482 (not c!1316027)) b!7060844))

(assert (=> d!2207482 m!7780844))

(declare-fun m!7780956 () Bool)

(assert (=> b!7060843 m!7780956))

(assert (=> b!7060844 m!7780848))

(assert (=> b!7060844 m!7780848))

(declare-fun m!7780958 () Bool)

(assert (=> b!7060844 m!7780958))

(assert (=> b!7060844 m!7780852))

(assert (=> b!7060844 m!7780958))

(assert (=> b!7060844 m!7780852))

(declare-fun m!7780960 () Bool)

(assert (=> b!7060844 m!7780960))

(assert (=> b!7060581 d!2207482))

(assert (=> b!7060581 d!2207424))

(declare-fun d!2207484 () Bool)

(declare-fun lt!2535769 () Bool)

(assert (=> d!2207484 (= lt!2535769 (exists!3599 (toList!10933 lt!2535517) lambda!421879))))

(declare-fun choose!53911 ((Set Context!13176) Int) Bool)

(assert (=> d!2207484 (= lt!2535769 (choose!53911 lt!2535517 lambda!421879))))

(assert (=> d!2207484 (= (exists!3598 lt!2535517 lambda!421879) lt!2535769)))

(declare-fun bs!1879020 () Bool)

(assert (= bs!1879020 d!2207484))

(declare-fun m!7780962 () Bool)

(assert (=> bs!1879020 m!7780962))

(assert (=> bs!1879020 m!7780962))

(declare-fun m!7780964 () Bool)

(assert (=> bs!1879020 m!7780964))

(declare-fun m!7780966 () Bool)

(assert (=> bs!1879020 m!7780966))

(assert (=> b!7060603 d!2207484))

(declare-fun d!2207486 () Bool)

(declare-fun c!1316028 () Bool)

(assert (=> d!2207486 (= c!1316028 (isEmpty!39768 (_1!37396 lt!2535518)))))

(declare-fun e!4244897 () Bool)

(assert (=> d!2207486 (= (matchZipper!3132 lt!2535517 (_1!37396 lt!2535518)) e!4244897)))

(declare-fun b!7060845 () Bool)

(assert (=> b!7060845 (= e!4244897 (nullableZipper!2669 lt!2535517))))

(declare-fun b!7060846 () Bool)

(assert (=> b!7060846 (= e!4244897 (matchZipper!3132 (derivationStepZipper!3042 lt!2535517 (head!14372 (_1!37396 lt!2535518))) (tail!13736 (_1!37396 lt!2535518))))))

(assert (= (and d!2207486 c!1316028) b!7060845))

(assert (= (and d!2207486 (not c!1316028)) b!7060846))

(assert (=> d!2207486 m!7780618))

(declare-fun m!7780968 () Bool)

(assert (=> b!7060845 m!7780968))

(declare-fun m!7780970 () Bool)

(assert (=> b!7060846 m!7780970))

(assert (=> b!7060846 m!7780970))

(declare-fun m!7780972 () Bool)

(assert (=> b!7060846 m!7780972))

(declare-fun m!7780974 () Bool)

(assert (=> b!7060846 m!7780974))

(assert (=> b!7060846 m!7780972))

(assert (=> b!7060846 m!7780974))

(declare-fun m!7780976 () Bool)

(assert (=> b!7060846 m!7780976))

(assert (=> b!7060603 d!2207486))

(declare-fun d!2207488 () Bool)

(assert (=> d!2207488 (exists!3598 lt!2535535 lambda!421879)))

(declare-fun lt!2535772 () Unit!161860)

(declare-fun choose!53912 ((Set Context!13176) Context!13176 Int) Unit!161860)

(assert (=> d!2207488 (= lt!2535772 (choose!53912 lt!2535535 lt!2535512 lambda!421879))))

(assert (=> d!2207488 (set.member lt!2535512 lt!2535535)))

(assert (=> d!2207488 (= (lemmaContainsThenExists!130 lt!2535535 lt!2535512 lambda!421879) lt!2535772)))

(declare-fun bs!1879021 () Bool)

(assert (= bs!1879021 d!2207488))

(assert (=> bs!1879021 m!7780524))

(declare-fun m!7780978 () Bool)

(assert (=> bs!1879021 m!7780978))

(declare-fun m!7780980 () Bool)

(assert (=> bs!1879021 m!7780980))

(assert (=> b!7060603 d!2207488))

(declare-fun d!2207490 () Bool)

(assert (=> d!2207490 (exists!3598 lt!2535517 lambda!421879)))

(declare-fun lt!2535773 () Unit!161860)

(assert (=> d!2207490 (= lt!2535773 (choose!53912 lt!2535517 lt!2535551 lambda!421879))))

(assert (=> d!2207490 (set.member lt!2535551 lt!2535517)))

(assert (=> d!2207490 (= (lemmaContainsThenExists!130 lt!2535517 lt!2535551 lambda!421879) lt!2535773)))

(declare-fun bs!1879022 () Bool)

(assert (= bs!1879022 d!2207490))

(assert (=> bs!1879022 m!7780514))

(declare-fun m!7780982 () Bool)

(assert (=> bs!1879022 m!7780982))

(declare-fun m!7780984 () Bool)

(assert (=> bs!1879022 m!7780984))

(assert (=> b!7060603 d!2207490))

(declare-fun d!2207492 () Bool)

(declare-fun lt!2535774 () Bool)

(assert (=> d!2207492 (= lt!2535774 (exists!3599 (toList!10933 lt!2535535) lambda!421879))))

(assert (=> d!2207492 (= lt!2535774 (choose!53911 lt!2535535 lambda!421879))))

(assert (=> d!2207492 (= (exists!3598 lt!2535535 lambda!421879) lt!2535774)))

(declare-fun bs!1879023 () Bool)

(assert (= bs!1879023 d!2207492))

(declare-fun m!7780986 () Bool)

(assert (=> bs!1879023 m!7780986))

(assert (=> bs!1879023 m!7780986))

(declare-fun m!7780988 () Bool)

(assert (=> bs!1879023 m!7780988))

(declare-fun m!7780990 () Bool)

(assert (=> bs!1879023 m!7780990))

(assert (=> b!7060603 d!2207492))

(assert (=> b!7060582 d!2207492))

(declare-fun bs!1879024 () Bool)

(declare-fun d!2207494 () Bool)

(assert (= bs!1879024 (and d!2207494 b!7060601)))

(declare-fun lambda!421961 () Int)

(assert (=> bs!1879024 (= lambda!421961 lambda!421877)))

(declare-fun bs!1879025 () Bool)

(assert (= bs!1879025 (and d!2207494 d!2207418)))

(assert (=> bs!1879025 (= lambda!421961 lambda!421956)))

(assert (=> d!2207494 (= (inv!86840 setElem!49992) (forall!16540 (exprs!7088 setElem!49992) lambda!421961))))

(declare-fun bs!1879026 () Bool)

(assert (= bs!1879026 d!2207494))

(declare-fun m!7780992 () Bool)

(assert (=> bs!1879026 m!7780992))

(assert (=> setNonEmpty!49992 d!2207494))

(assert (=> b!7060604 d!2207482))

(declare-fun d!2207496 () Bool)

(declare-fun e!4244899 () Bool)

(assert (=> d!2207496 e!4244899))

(declare-fun res!2882654 () Bool)

(assert (=> d!2207496 (=> (not res!2882654) (not e!4244899))))

(declare-fun lt!2535775 () List!68304)

(assert (=> d!2207496 (= res!2882654 (noDuplicate!2700 lt!2535775))))

(assert (=> d!2207496 (= lt!2535775 (choose!53907 lt!2535520))))

(assert (=> d!2207496 (= (toList!10933 lt!2535520) lt!2535775)))

(declare-fun b!7060847 () Bool)

(assert (=> b!7060847 (= e!4244899 (= (content!13709 lt!2535775) lt!2535520))))

(assert (= (and d!2207496 res!2882654) b!7060847))

(declare-fun m!7780994 () Bool)

(assert (=> d!2207496 m!7780994))

(declare-fun m!7780996 () Bool)

(assert (=> d!2207496 m!7780996))

(declare-fun m!7780998 () Bool)

(assert (=> b!7060847 m!7780998))

(assert (=> b!7060583 d!2207496))

(declare-fun d!2207498 () Bool)

(declare-fun e!4244902 () Bool)

(assert (=> d!2207498 e!4244902))

(declare-fun res!2882657 () Bool)

(assert (=> d!2207498 (=> (not res!2882657) (not e!4244902))))

(declare-fun lt!2535778 () Context!13176)

(declare-fun dynLambda!27685 (Int Context!13176) Bool)

(assert (=> d!2207498 (= res!2882657 (dynLambda!27685 lambda!421875 lt!2535778))))

(declare-fun getWitness!1668 (List!68304 Int) Context!13176)

(assert (=> d!2207498 (= lt!2535778 (getWitness!1668 (toList!10933 lt!2535520) lambda!421875))))

(assert (=> d!2207498 (exists!3598 lt!2535520 lambda!421875)))

(assert (=> d!2207498 (= (getWitness!1666 lt!2535520 lambda!421875) lt!2535778)))

(declare-fun b!7060850 () Bool)

(assert (=> b!7060850 (= e!4244902 (set.member lt!2535778 lt!2535520))))

(assert (= (and d!2207498 res!2882657) b!7060850))

(declare-fun b_lambda!269221 () Bool)

(assert (=> (not b_lambda!269221) (not d!2207498)))

(declare-fun m!7781000 () Bool)

(assert (=> d!2207498 m!7781000))

(assert (=> d!2207498 m!7780552))

(assert (=> d!2207498 m!7780552))

(declare-fun m!7781002 () Bool)

(assert (=> d!2207498 m!7781002))

(declare-fun m!7781004 () Bool)

(assert (=> d!2207498 m!7781004))

(declare-fun m!7781006 () Bool)

(assert (=> b!7060850 m!7781006))

(assert (=> b!7060583 d!2207498))

(declare-fun bs!1879027 () Bool)

(declare-fun d!2207500 () Bool)

(assert (= bs!1879027 (and d!2207500 b!7060583)))

(declare-fun lambda!421964 () Int)

(assert (=> bs!1879027 (= lambda!421964 lambda!421875)))

(declare-fun bs!1879028 () Bool)

(assert (= bs!1879028 (and d!2207500 b!7060582)))

(assert (=> bs!1879028 (not (= lambda!421964 lambda!421879))))

(assert (=> d!2207500 true))

(assert (=> d!2207500 (exists!3599 lt!2535519 lambda!421964)))

(declare-fun lt!2535781 () Unit!161860)

(declare-fun choose!53913 (List!68304 List!68303) Unit!161860)

(assert (=> d!2207500 (= lt!2535781 (choose!53913 lt!2535519 s!7408))))

(assert (=> d!2207500 (matchZipper!3132 (content!13709 lt!2535519) s!7408)))

(assert (=> d!2207500 (= (lemmaZipperMatchesExistsMatchingContext!513 lt!2535519 s!7408) lt!2535781)))

(declare-fun bs!1879029 () Bool)

(assert (= bs!1879029 d!2207500))

(declare-fun m!7781008 () Bool)

(assert (=> bs!1879029 m!7781008))

(declare-fun m!7781010 () Bool)

(assert (=> bs!1879029 m!7781010))

(declare-fun m!7781012 () Bool)

(assert (=> bs!1879029 m!7781012))

(assert (=> bs!1879029 m!7781012))

(declare-fun m!7781014 () Bool)

(assert (=> bs!1879029 m!7781014))

(assert (=> b!7060583 d!2207500))

(declare-fun d!2207502 () Bool)

(declare-fun c!1316031 () Bool)

(assert (=> d!2207502 (= c!1316031 (isEmpty!39768 s!7408))))

(declare-fun e!4244903 () Bool)

(assert (=> d!2207502 (= (matchZipper!3132 lt!2535506 s!7408) e!4244903)))

(declare-fun b!7060851 () Bool)

(assert (=> b!7060851 (= e!4244903 (nullableZipper!2669 lt!2535506))))

(declare-fun b!7060852 () Bool)

(assert (=> b!7060852 (= e!4244903 (matchZipper!3132 (derivationStepZipper!3042 lt!2535506 (head!14372 s!7408)) (tail!13736 s!7408)))))

(assert (= (and d!2207502 c!1316031) b!7060851))

(assert (= (and d!2207502 (not c!1316031)) b!7060852))

(assert (=> d!2207502 m!7780758))

(declare-fun m!7781016 () Bool)

(assert (=> b!7060851 m!7781016))

(assert (=> b!7060852 m!7780762))

(assert (=> b!7060852 m!7780762))

(declare-fun m!7781018 () Bool)

(assert (=> b!7060852 m!7781018))

(assert (=> b!7060852 m!7780766))

(assert (=> b!7060852 m!7781018))

(assert (=> b!7060852 m!7780766))

(declare-fun m!7781020 () Bool)

(assert (=> b!7060852 m!7781020))

(assert (=> b!7060583 d!2207502))

(declare-fun bs!1879030 () Bool)

(declare-fun d!2207504 () Bool)

(assert (= bs!1879030 (and d!2207504 b!7060583)))

(declare-fun lambda!421967 () Int)

(assert (=> bs!1879030 (not (= lambda!421967 lambda!421875))))

(declare-fun bs!1879031 () Bool)

(assert (= bs!1879031 (and d!2207504 b!7060582)))

(assert (=> bs!1879031 (not (= lambda!421967 lambda!421879))))

(declare-fun bs!1879032 () Bool)

(assert (= bs!1879032 (and d!2207504 d!2207500)))

(assert (=> bs!1879032 (not (= lambda!421967 lambda!421964))))

(assert (=> d!2207504 true))

(declare-fun order!28345 () Int)

(declare-fun dynLambda!27686 (Int Int) Int)

(assert (=> d!2207504 (< (dynLambda!27686 order!28345 lambda!421875) (dynLambda!27686 order!28345 lambda!421967))))

(declare-fun forall!16541 (List!68304 Int) Bool)

(assert (=> d!2207504 (= (exists!3599 lt!2535519 lambda!421875) (not (forall!16541 lt!2535519 lambda!421967)))))

(declare-fun bs!1879033 () Bool)

(assert (= bs!1879033 d!2207504))

(declare-fun m!7781022 () Bool)

(assert (=> bs!1879033 m!7781022))

(assert (=> b!7060583 d!2207504))

(assert (=> b!7060585 d!2207482))

(assert (=> b!7060585 d!2207424))

(declare-fun bs!1879034 () Bool)

(declare-fun d!2207506 () Bool)

(assert (= bs!1879034 (and d!2207506 b!7060601)))

(declare-fun lambda!421970 () Int)

(assert (=> bs!1879034 (not (= lambda!421970 lambda!421877))))

(declare-fun bs!1879035 () Bool)

(assert (= bs!1879035 (and d!2207506 d!2207418)))

(assert (=> bs!1879035 (not (= lambda!421970 lambda!421956))))

(declare-fun bs!1879036 () Bool)

(assert (= bs!1879036 (and d!2207506 d!2207494)))

(assert (=> bs!1879036 (not (= lambda!421970 lambda!421961))))

(assert (=> d!2207506 (= (nullableContext!104 lt!2535512) (forall!16540 (exprs!7088 lt!2535512) lambda!421970))))

(declare-fun bs!1879037 () Bool)

(assert (= bs!1879037 d!2207506))

(declare-fun m!7781024 () Bool)

(assert (=> bs!1879037 m!7781024))

(assert (=> b!7060605 d!2207506))

(declare-fun d!2207508 () Bool)

(declare-fun e!4244904 () Bool)

(assert (=> d!2207508 e!4244904))

(declare-fun res!2882658 () Bool)

(assert (=> d!2207508 (=> (not res!2882658) (not e!4244904))))

(declare-fun lt!2535782 () Context!13176)

(assert (=> d!2207508 (= res!2882658 (dynLambda!27685 lambda!421879 lt!2535782))))

(assert (=> d!2207508 (= lt!2535782 (getWitness!1668 (toList!10933 lt!2535535) lambda!421879))))

(assert (=> d!2207508 (exists!3598 lt!2535535 lambda!421879)))

(assert (=> d!2207508 (= (getWitness!1666 lt!2535535 lambda!421879) lt!2535782)))

(declare-fun b!7060855 () Bool)

(assert (=> b!7060855 (= e!4244904 (set.member lt!2535782 lt!2535535))))

(assert (= (and d!2207508 res!2882658) b!7060855))

(declare-fun b_lambda!269223 () Bool)

(assert (=> (not b_lambda!269223) (not d!2207508)))

(declare-fun m!7781026 () Bool)

(assert (=> d!2207508 m!7781026))

(assert (=> d!2207508 m!7780986))

(assert (=> d!2207508 m!7780986))

(declare-fun m!7781028 () Bool)

(assert (=> d!2207508 m!7781028))

(assert (=> d!2207508 m!7780524))

(declare-fun m!7781030 () Bool)

(assert (=> b!7060855 m!7781030))

(assert (=> b!7060605 d!2207508))

(declare-fun d!2207510 () Bool)

(declare-fun nullableFct!2785 (Regex!17592) Bool)

(assert (=> d!2207510 (= (nullable!7275 (h!74626 (exprs!7088 lt!2535551))) (nullableFct!2785 (h!74626 (exprs!7088 lt!2535551))))))

(declare-fun bs!1879038 () Bool)

(assert (= bs!1879038 d!2207510))

(declare-fun m!7781032 () Bool)

(assert (=> bs!1879038 m!7781032))

(assert (=> b!7060607 d!2207510))

(declare-fun d!2207512 () Bool)

(assert (=> d!2207512 (= (tail!13734 (exprs!7088 lt!2535551)) (t!382083 (exprs!7088 lt!2535551)))))

(assert (=> b!7060607 d!2207512))

(declare-fun d!2207514 () Bool)

(assert (=> d!2207514 (= (isEmpty!39768 (_1!37396 lt!2535518)) (is-Nil!68179 (_1!37396 lt!2535518)))))

(assert (=> b!7060586 d!2207514))

(declare-fun d!2207516 () Bool)

(declare-fun isEmpty!39772 (Option!16925) Bool)

(assert (=> d!2207516 (= (isDefined!13626 lt!2535524) (not (isEmpty!39772 lt!2535524)))))

(declare-fun bs!1879039 () Bool)

(assert (= bs!1879039 d!2207516))

(declare-fun m!7781034 () Bool)

(assert (=> bs!1879039 m!7781034))

(assert (=> b!7060606 d!2207516))

(declare-fun d!2207518 () Bool)

(declare-fun c!1316033 () Bool)

(assert (=> d!2207518 (= c!1316033 (isEmpty!39768 (_1!37396 lt!2535518)))))

(declare-fun e!4244905 () Bool)

(assert (=> d!2207518 (= (matchZipper!3132 lt!2535535 (_1!37396 lt!2535518)) e!4244905)))

(declare-fun b!7060856 () Bool)

(assert (=> b!7060856 (= e!4244905 (nullableZipper!2669 lt!2535535))))

(declare-fun b!7060857 () Bool)

(assert (=> b!7060857 (= e!4244905 (matchZipper!3132 (derivationStepZipper!3042 lt!2535535 (head!14372 (_1!37396 lt!2535518))) (tail!13736 (_1!37396 lt!2535518))))))

(assert (= (and d!2207518 c!1316033) b!7060856))

(assert (= (and d!2207518 (not c!1316033)) b!7060857))

(assert (=> d!2207518 m!7780618))

(declare-fun m!7781036 () Bool)

(assert (=> b!7060856 m!7781036))

(assert (=> b!7060857 m!7780970))

(assert (=> b!7060857 m!7780970))

(declare-fun m!7781038 () Bool)

(assert (=> b!7060857 m!7781038))

(assert (=> b!7060857 m!7780974))

(assert (=> b!7060857 m!7781038))

(assert (=> b!7060857 m!7780974))

(declare-fun m!7781040 () Bool)

(assert (=> b!7060857 m!7781040))

(assert (=> b!7060606 d!2207518))

(declare-fun d!2207520 () Bool)

(assert (=> d!2207520 (= (get!23872 lt!2535524) (v!53218 lt!2535524))))

(assert (=> b!7060606 d!2207520))

(declare-fun d!2207522 () Bool)

(assert (=> d!2207522 (isDefined!13626 (findConcatSeparationZippers!441 lt!2535535 (set.insert ct2!306 (as set.empty (Set Context!13176))) Nil!68179 s!7408 s!7408))))

(declare-fun lt!2535785 () Unit!161860)

(declare-fun choose!53914 ((Set Context!13176) Context!13176 List!68303) Unit!161860)

(assert (=> d!2207522 (= lt!2535785 (choose!53914 lt!2535535 ct2!306 s!7408))))

(assert (=> d!2207522 (matchZipper!3132 (appendTo!713 lt!2535535 ct2!306) s!7408)))

(assert (=> d!2207522 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!429 lt!2535535 ct2!306 s!7408) lt!2535785)))

(declare-fun bs!1879040 () Bool)

(assert (= bs!1879040 d!2207522))

(assert (=> bs!1879040 m!7780594))

(declare-fun m!7781042 () Bool)

(assert (=> bs!1879040 m!7781042))

(declare-fun m!7781044 () Bool)

(assert (=> bs!1879040 m!7781044))

(declare-fun m!7781046 () Bool)

(assert (=> bs!1879040 m!7781046))

(assert (=> bs!1879040 m!7781044))

(declare-fun m!7781048 () Bool)

(assert (=> bs!1879040 m!7781048))

(declare-fun m!7781050 () Bool)

(assert (=> bs!1879040 m!7781050))

(assert (=> bs!1879040 m!7780594))

(assert (=> bs!1879040 m!7781048))

(assert (=> b!7060606 d!2207522))

(declare-fun b!7060876 () Bool)

(declare-fun e!4244918 () Option!16925)

(assert (=> b!7060876 (= e!4244918 None!16924)))

(declare-fun b!7060877 () Bool)

(declare-fun res!2882673 () Bool)

(declare-fun e!4244916 () Bool)

(assert (=> b!7060877 (=> (not res!2882673) (not e!4244916))))

(declare-fun lt!2535792 () Option!16925)

(assert (=> b!7060877 (= res!2882673 (matchZipper!3132 lt!2535535 (_1!37396 (get!23872 lt!2535792))))))

(declare-fun b!7060878 () Bool)

(declare-fun e!4244920 () Option!16925)

(assert (=> b!7060878 (= e!4244920 e!4244918)))

(declare-fun c!1316039 () Bool)

(assert (=> b!7060878 (= c!1316039 (is-Nil!68179 s!7408))))

(declare-fun b!7060879 () Bool)

(declare-fun e!4244919 () Bool)

(assert (=> b!7060879 (= e!4244919 (matchZipper!3132 lt!2535502 s!7408))))

(declare-fun b!7060881 () Bool)

(declare-fun e!4244917 () Bool)

(assert (=> b!7060881 (= e!4244917 (not (isDefined!13626 lt!2535792)))))

(declare-fun b!7060882 () Bool)

(declare-fun lt!2535793 () Unit!161860)

(declare-fun lt!2535794 () Unit!161860)

(assert (=> b!7060882 (= lt!2535793 lt!2535794)))

(assert (=> b!7060882 (= (++!15682 (++!15682 Nil!68179 (Cons!68179 (h!74627 s!7408) Nil!68179)) (t!382084 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2956 (List!68303 C!35454 List!68303 List!68303) Unit!161860)

(assert (=> b!7060882 (= lt!2535794 (lemmaMoveElementToOtherListKeepsConcatEq!2956 Nil!68179 (h!74627 s!7408) (t!382084 s!7408) s!7408))))

(assert (=> b!7060882 (= e!4244918 (findConcatSeparationZippers!441 lt!2535535 lt!2535502 (++!15682 Nil!68179 (Cons!68179 (h!74627 s!7408) Nil!68179)) (t!382084 s!7408) s!7408))))

(declare-fun b!7060883 () Bool)

(declare-fun res!2882669 () Bool)

(assert (=> b!7060883 (=> (not res!2882669) (not e!4244916))))

(assert (=> b!7060883 (= res!2882669 (matchZipper!3132 lt!2535502 (_2!37396 (get!23872 lt!2535792))))))

(declare-fun b!7060884 () Bool)

(assert (=> b!7060884 (= e!4244916 (= (++!15682 (_1!37396 (get!23872 lt!2535792)) (_2!37396 (get!23872 lt!2535792))) s!7408))))

(declare-fun d!2207524 () Bool)

(assert (=> d!2207524 e!4244917))

(declare-fun res!2882670 () Bool)

(assert (=> d!2207524 (=> res!2882670 e!4244917)))

(assert (=> d!2207524 (= res!2882670 e!4244916)))

(declare-fun res!2882672 () Bool)

(assert (=> d!2207524 (=> (not res!2882672) (not e!4244916))))

(assert (=> d!2207524 (= res!2882672 (isDefined!13626 lt!2535792))))

(assert (=> d!2207524 (= lt!2535792 e!4244920)))

(declare-fun c!1316038 () Bool)

(assert (=> d!2207524 (= c!1316038 e!4244919)))

(declare-fun res!2882671 () Bool)

(assert (=> d!2207524 (=> (not res!2882671) (not e!4244919))))

(assert (=> d!2207524 (= res!2882671 (matchZipper!3132 lt!2535535 Nil!68179))))

(assert (=> d!2207524 (= (++!15682 Nil!68179 s!7408) s!7408)))

(assert (=> d!2207524 (= (findConcatSeparationZippers!441 lt!2535535 lt!2535502 Nil!68179 s!7408 s!7408) lt!2535792)))

(declare-fun b!7060880 () Bool)

(assert (=> b!7060880 (= e!4244920 (Some!16924 (tuple2!68187 Nil!68179 s!7408)))))

(assert (= (and d!2207524 res!2882671) b!7060879))

(assert (= (and d!2207524 c!1316038) b!7060880))

(assert (= (and d!2207524 (not c!1316038)) b!7060878))

(assert (= (and b!7060878 c!1316039) b!7060876))

(assert (= (and b!7060878 (not c!1316039)) b!7060882))

(assert (= (and d!2207524 res!2882672) b!7060877))

(assert (= (and b!7060877 res!2882673) b!7060883))

(assert (= (and b!7060883 res!2882669) b!7060884))

(assert (= (and d!2207524 (not res!2882670)) b!7060881))

(declare-fun m!7781052 () Bool)

(assert (=> d!2207524 m!7781052))

(declare-fun m!7781054 () Bool)

(assert (=> d!2207524 m!7781054))

(declare-fun m!7781056 () Bool)

(assert (=> d!2207524 m!7781056))

(declare-fun m!7781058 () Bool)

(assert (=> b!7060884 m!7781058))

(declare-fun m!7781060 () Bool)

(assert (=> b!7060884 m!7781060))

(assert (=> b!7060881 m!7781052))

(assert (=> b!7060883 m!7781058))

(declare-fun m!7781062 () Bool)

(assert (=> b!7060883 m!7781062))

(declare-fun m!7781064 () Bool)

(assert (=> b!7060879 m!7781064))

(assert (=> b!7060877 m!7781058))

(declare-fun m!7781066 () Bool)

(assert (=> b!7060877 m!7781066))

(declare-fun m!7781068 () Bool)

(assert (=> b!7060882 m!7781068))

(assert (=> b!7060882 m!7781068))

(declare-fun m!7781070 () Bool)

(assert (=> b!7060882 m!7781070))

(declare-fun m!7781072 () Bool)

(assert (=> b!7060882 m!7781072))

(assert (=> b!7060882 m!7781068))

(declare-fun m!7781074 () Bool)

(assert (=> b!7060882 m!7781074))

(assert (=> b!7060606 d!2207524))

(declare-fun bs!1879041 () Bool)

(declare-fun d!2207526 () Bool)

(assert (= bs!1879041 (and d!2207526 b!7060601)))

(declare-fun lambda!421971 () Int)

(assert (=> bs!1879041 (not (= lambda!421971 lambda!421877))))

(declare-fun bs!1879042 () Bool)

(assert (= bs!1879042 (and d!2207526 d!2207418)))

(assert (=> bs!1879042 (not (= lambda!421971 lambda!421956))))

(declare-fun bs!1879043 () Bool)

(assert (= bs!1879043 (and d!2207526 d!2207494)))

(assert (=> bs!1879043 (not (= lambda!421971 lambda!421961))))

(declare-fun bs!1879044 () Bool)

(assert (= bs!1879044 (and d!2207526 d!2207506)))

(assert (=> bs!1879044 (= lambda!421971 lambda!421970)))

(assert (=> d!2207526 (= (nullableContext!104 lt!2535551) (forall!16540 (exprs!7088 lt!2535551) lambda!421971))))

(declare-fun bs!1879045 () Bool)

(assert (= bs!1879045 d!2207526))

(declare-fun m!7781076 () Bool)

(assert (=> bs!1879045 m!7781076))

(assert (=> b!7060588 d!2207526))

(declare-fun d!2207528 () Bool)

(assert (=> d!2207528 (= (isEmpty!39769 (exprs!7088 lt!2535551)) (is-Nil!68178 (exprs!7088 lt!2535551)))))

(assert (=> b!7060587 d!2207528))

(declare-fun d!2207530 () Bool)

(declare-fun c!1316040 () Bool)

(assert (=> d!2207530 (= c!1316040 (isEmpty!39768 s!7408))))

(declare-fun e!4244921 () Bool)

(assert (=> d!2207530 (= (matchZipper!3132 lt!2535544 s!7408) e!4244921)))

(declare-fun b!7060885 () Bool)

(assert (=> b!7060885 (= e!4244921 (nullableZipper!2669 lt!2535544))))

(declare-fun b!7060886 () Bool)

(assert (=> b!7060886 (= e!4244921 (matchZipper!3132 (derivationStepZipper!3042 lt!2535544 (head!14372 s!7408)) (tail!13736 s!7408)))))

(assert (= (and d!2207530 c!1316040) b!7060885))

(assert (= (and d!2207530 (not c!1316040)) b!7060886))

(assert (=> d!2207530 m!7780758))

(declare-fun m!7781078 () Bool)

(assert (=> b!7060885 m!7781078))

(assert (=> b!7060886 m!7780762))

(assert (=> b!7060886 m!7780762))

(declare-fun m!7781080 () Bool)

(assert (=> b!7060886 m!7781080))

(assert (=> b!7060886 m!7780766))

(assert (=> b!7060886 m!7781080))

(assert (=> b!7060886 m!7780766))

(declare-fun m!7781082 () Bool)

(assert (=> b!7060886 m!7781082))

(assert (=> b!7060589 d!2207530))

(assert (=> b!7060589 d!2207424))

(declare-fun b!7060895 () Bool)

(declare-fun e!4244928 () Bool)

(declare-fun e!4244930 () Bool)

(assert (=> b!7060895 (= e!4244928 e!4244930)))

(declare-fun res!2882684 () Bool)

(assert (=> b!7060895 (=> (not res!2882684) (not e!4244930))))

(assert (=> b!7060895 (= res!2882684 (not (is-Nil!68179 (_1!37396 lt!2535518))))))

(declare-fun b!7060898 () Bool)

(declare-fun e!4244929 () Bool)

(assert (=> b!7060898 (= e!4244929 (>= (size!41163 (_1!37396 lt!2535518)) (size!41163 Nil!68179)))))

(declare-fun b!7060897 () Bool)

(assert (=> b!7060897 (= e!4244930 (isPrefix!5839 (tail!13736 Nil!68179) (tail!13736 (_1!37396 lt!2535518))))))

(declare-fun b!7060896 () Bool)

(declare-fun res!2882683 () Bool)

(assert (=> b!7060896 (=> (not res!2882683) (not e!4244930))))

(assert (=> b!7060896 (= res!2882683 (= (head!14372 Nil!68179) (head!14372 (_1!37396 lt!2535518))))))

(declare-fun d!2207532 () Bool)

(assert (=> d!2207532 e!4244929))

(declare-fun res!2882682 () Bool)

(assert (=> d!2207532 (=> res!2882682 e!4244929)))

(declare-fun lt!2535797 () Bool)

(assert (=> d!2207532 (= res!2882682 (not lt!2535797))))

(assert (=> d!2207532 (= lt!2535797 e!4244928)))

(declare-fun res!2882685 () Bool)

(assert (=> d!2207532 (=> res!2882685 e!4244928)))

(assert (=> d!2207532 (= res!2882685 (is-Nil!68179 Nil!68179))))

(assert (=> d!2207532 (= (isPrefix!5839 Nil!68179 (_1!37396 lt!2535518)) lt!2535797)))

(assert (= (and d!2207532 (not res!2882685)) b!7060895))

(assert (= (and b!7060895 res!2882684) b!7060896))

(assert (= (and b!7060896 res!2882683) b!7060897))

(assert (= (and d!2207532 (not res!2882682)) b!7060898))

(assert (=> b!7060898 m!7780784))

(declare-fun m!7781084 () Bool)

(assert (=> b!7060898 m!7781084))

(declare-fun m!7781086 () Bool)

(assert (=> b!7060897 m!7781086))

(assert (=> b!7060897 m!7780974))

(assert (=> b!7060897 m!7781086))

(assert (=> b!7060897 m!7780974))

(declare-fun m!7781088 () Bool)

(assert (=> b!7060897 m!7781088))

(declare-fun m!7781090 () Bool)

(assert (=> b!7060896 m!7781090))

(assert (=> b!7060896 m!7780970))

(assert (=> b!7060609 d!2207532))

(declare-fun b!7060903 () Bool)

(declare-fun e!4244933 () Bool)

(declare-fun tp!1941043 () Bool)

(declare-fun tp!1941044 () Bool)

(assert (=> b!7060903 (= e!4244933 (and tp!1941043 tp!1941044))))

(assert (=> b!7060597 (= tp!1941025 e!4244933)))

(assert (= (and b!7060597 (is-Cons!68178 (exprs!7088 setElem!49992))) b!7060903))

(declare-fun b!7060908 () Bool)

(declare-fun e!4244936 () Bool)

(declare-fun tp!1941047 () Bool)

(assert (=> b!7060908 (= e!4244936 (and tp_is_empty!44409 tp!1941047))))

(assert (=> b!7060602 (= tp!1941024 e!4244936)))

(assert (= (and b!7060602 (is-Cons!68179 (t!382084 s!7408))) b!7060908))

(declare-fun b!7060909 () Bool)

(declare-fun e!4244937 () Bool)

(declare-fun tp!1941048 () Bool)

(declare-fun tp!1941049 () Bool)

(assert (=> b!7060909 (= e!4244937 (and tp!1941048 tp!1941049))))

(assert (=> b!7060608 (= tp!1941026 e!4244937)))

(assert (= (and b!7060608 (is-Cons!68178 (exprs!7088 ct2!306))) b!7060909))

(declare-fun condSetEmpty!49998 () Bool)

(assert (=> setNonEmpty!49992 (= condSetEmpty!49998 (= setRest!49992 (as set.empty (Set Context!13176))))))

(declare-fun setRes!49998 () Bool)

(assert (=> setNonEmpty!49992 (= tp!1941023 setRes!49998)))

(declare-fun setIsEmpty!49998 () Bool)

(assert (=> setIsEmpty!49998 setRes!49998))

(declare-fun tp!1941055 () Bool)

(declare-fun e!4244940 () Bool)

(declare-fun setNonEmpty!49998 () Bool)

(declare-fun setElem!49998 () Context!13176)

(assert (=> setNonEmpty!49998 (= setRes!49998 (and tp!1941055 (inv!86840 setElem!49998) e!4244940))))

(declare-fun setRest!49998 () (Set Context!13176))

(assert (=> setNonEmpty!49998 (= setRest!49992 (set.union (set.insert setElem!49998 (as set.empty (Set Context!13176))) setRest!49998))))

(declare-fun b!7060914 () Bool)

(declare-fun tp!1941054 () Bool)

(assert (=> b!7060914 (= e!4244940 tp!1941054)))

(assert (= (and setNonEmpty!49992 condSetEmpty!49998) setIsEmpty!49998))

(assert (= (and setNonEmpty!49992 (not condSetEmpty!49998)) setNonEmpty!49998))

(assert (= setNonEmpty!49998 b!7060914))

(declare-fun m!7781092 () Bool)

(assert (=> setNonEmpty!49998 m!7781092))

(declare-fun b_lambda!269225 () Bool)

(assert (= b_lambda!269213 (or b!7060601 b_lambda!269225)))

(declare-fun bs!1879046 () Bool)

(declare-fun d!2207534 () Bool)

(assert (= bs!1879046 (and d!2207534 b!7060601)))

(declare-fun lt!2535798 () Unit!161860)

(assert (=> bs!1879046 (= lt!2535798 (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535512) (exprs!7088 ct2!306) lambda!421877))))

(assert (=> bs!1879046 (= (dynLambda!27684 lambda!421876 lt!2535512) (Context!13177 (++!15681 (exprs!7088 lt!2535512) (exprs!7088 ct2!306))))))

(declare-fun m!7781094 () Bool)

(assert (=> bs!1879046 m!7781094))

(declare-fun m!7781096 () Bool)

(assert (=> bs!1879046 m!7781096))

(assert (=> d!2207454 d!2207534))

(declare-fun b_lambda!269227 () Bool)

(assert (= b_lambda!269211 (or b!7060579 b_lambda!269227)))

(declare-fun bs!1879047 () Bool)

(declare-fun d!2207536 () Bool)

(assert (= bs!1879047 (and d!2207536 b!7060579)))

(assert (=> bs!1879047 (= (dynLambda!27683 lambda!421878 lt!2535521) (derivationStepZipperUp!2176 lt!2535521 (h!74627 s!7408)))))

(assert (=> bs!1879047 m!7780488))

(assert (=> d!2207448 d!2207536))

(declare-fun b_lambda!269229 () Bool)

(assert (= b_lambda!269217 (or b!7060601 b_lambda!269229)))

(declare-fun bs!1879048 () Bool)

(declare-fun d!2207538 () Bool)

(assert (= bs!1879048 (and d!2207538 b!7060601)))

(declare-fun lt!2535799 () Unit!161860)

(assert (=> bs!1879048 (= lt!2535799 (lemmaConcatPreservesForall!903 (exprs!7088 lt!2535765) (exprs!7088 ct2!306) lambda!421877))))

(assert (=> bs!1879048 (= (dynLambda!27684 lambda!421876 lt!2535765) (Context!13177 (++!15681 (exprs!7088 lt!2535765) (exprs!7088 ct2!306))))))

(declare-fun m!7781098 () Bool)

(assert (=> bs!1879048 m!7781098))

(declare-fun m!7781100 () Bool)

(assert (=> bs!1879048 m!7781100))

(assert (=> d!2207472 d!2207538))

(declare-fun b_lambda!269231 () Bool)

(assert (= b_lambda!269219 (or b!7060579 b_lambda!269231)))

(declare-fun bs!1879049 () Bool)

(declare-fun d!2207540 () Bool)

(assert (= bs!1879049 (and d!2207540 b!7060579)))

(assert (=> bs!1879049 (= (dynLambda!27683 lambda!421878 lt!2535550) (derivationStepZipperUp!2176 lt!2535550 (h!74627 s!7408)))))

(assert (=> bs!1879049 m!7780508))

(assert (=> d!2207480 d!2207540))

(declare-fun b_lambda!269233 () Bool)

(assert (= b_lambda!269223 (or b!7060582 b_lambda!269233)))

(declare-fun bs!1879050 () Bool)

(declare-fun d!2207542 () Bool)

(assert (= bs!1879050 (and d!2207542 b!7060582)))

(assert (=> bs!1879050 (= (dynLambda!27685 lambda!421879 lt!2535782) (nullableContext!104 lt!2535782))))

(declare-fun m!7781102 () Bool)

(assert (=> bs!1879050 m!7781102))

(assert (=> d!2207508 d!2207542))

(declare-fun b_lambda!269235 () Bool)

(assert (= b_lambda!269221 (or b!7060583 b_lambda!269235)))

(declare-fun bs!1879051 () Bool)

(declare-fun d!2207544 () Bool)

(assert (= bs!1879051 (and d!2207544 b!7060583)))

(assert (=> bs!1879051 (= (dynLambda!27685 lambda!421875 lt!2535778) (matchZipper!3132 (set.insert lt!2535778 (as set.empty (Set Context!13176))) s!7408))))

(declare-fun m!7781104 () Bool)

(assert (=> bs!1879051 m!7781104))

(assert (=> bs!1879051 m!7781104))

(declare-fun m!7781106 () Bool)

(assert (=> bs!1879051 m!7781106))

(assert (=> d!2207498 d!2207544))

(declare-fun b_lambda!269237 () Bool)

(assert (= b_lambda!269215 (or b!7060579 b_lambda!269237)))

(declare-fun bs!1879052 () Bool)

(declare-fun d!2207546 () Bool)

(assert (= bs!1879052 (and d!2207546 b!7060579)))

(assert (=> bs!1879052 (= (dynLambda!27683 lambda!421878 lt!2535512) (derivationStepZipperUp!2176 lt!2535512 (h!74627 s!7408)))))

(assert (=> bs!1879052 m!7780560))

(assert (=> d!2207468 d!2207546))

(push 1)

(assert (not b!7060856))

(assert (not b!7060814))

(assert (not b!7060852))

(assert (not bm!641610))

(assert (not b!7060879))

(assert (not b!7060806))

(assert (not d!2207494))

(assert (not b!7060914))

(assert (not b!7060832))

(assert (not d!2207498))

(assert (not b_lambda!269235))

(assert (not b!7060790))

(assert (not b!7060831))

(assert (not b!7060885))

(assert (not d!2207444))

(assert (not d!2207522))

(assert (not d!2207518))

(assert (not b!7060829))

(assert (not d!2207530))

(assert (not b!7060897))

(assert (not b!7060896))

(assert (not b!7060845))

(assert (not b!7060809))

(assert (not b!7060812))

(assert (not b!7060719))

(assert (not b!7060805))

(assert (not d!2207482))

(assert (not d!2207478))

(assert (not setNonEmpty!49998))

(assert (not d!2207488))

(assert (not d!2207524))

(assert (not d!2207430))

(assert (not d!2207502))

(assert tp_is_empty!44409)

(assert (not b!7060804))

(assert (not d!2207486))

(assert (not b!7060846))

(assert (not d!2207420))

(assert (not d!2207492))

(assert (not d!2207468))

(assert (not d!2207454))

(assert (not b!7060743))

(assert (not d!2207508))

(assert (not d!2207440))

(assert (not b!7060903))

(assert (not b!7060883))

(assert (not d!2207476))

(assert (not b!7060755))

(assert (not b!7060909))

(assert (not d!2207422))

(assert (not bs!1879050))

(assert (not bm!641629))

(assert (not d!2207526))

(assert (not b!7060730))

(assert (not d!2207438))

(assert (not bs!1879052))

(assert (not d!2207516))

(assert (not d!2207496))

(assert (not b!7060857))

(assert (not bs!1879047))

(assert (not b!7060881))

(assert (not d!2207436))

(assert (not d!2207418))

(assert (not d!2207490))

(assert (not b_lambda!269233))

(assert (not d!2207414))

(assert (not b!7060877))

(assert (not b_lambda!269231))

(assert (not b_lambda!269227))

(assert (not b!7060720))

(assert (not d!2207506))

(assert (not d!2207510))

(assert (not b!7060825))

(assert (not d!2207500))

(assert (not d!2207472))

(assert (not b!7060801))

(assert (not b!7060821))

(assert (not d!2207456))

(assert (not d!2207464))

(assert (not b!7060731))

(assert (not d!2207480))

(assert (not b!7060844))

(assert (not b!7060847))

(assert (not d!2207432))

(assert (not d!2207462))

(assert (not bs!1879046))

(assert (not b!7060794))

(assert (not b!7060851))

(assert (not b!7060898))

(assert (not d!2207470))

(assert (not bm!641630))

(assert (not d!2207424))

(assert (not d!2207484))

(assert (not b!7060843))

(assert (not b!7060742))

(assert (not b_lambda!269237))

(assert (not b!7060840))

(assert (not bm!641626))

(assert (not b!7060886))

(assert (not b!7060908))

(assert (not d!2207466))

(assert (not b!7060823))

(assert (not b_lambda!269225))

(assert (not b!7060757))

(assert (not bs!1879049))

(assert (not b!7060802))

(assert (not bs!1879048))

(assert (not b!7060793))

(assert (not b!7060884))

(assert (not bs!1879051))

(assert (not b!7060882))

(assert (not d!2207416))

(assert (not b!7060799))

(assert (not d!2207446))

(assert (not bm!641628))

(assert (not d!2207442))

(assert (not bm!641627))

(assert (not b_lambda!269229))

(assert (not b!7060838))

(assert (not d!2207504))

(assert (not b!7060803))

(assert (not d!2207448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

