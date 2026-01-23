; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688618 () Bool)

(assert start!688618)

(declare-fun b!7080072 () Bool)

(assert (=> b!7080072 true))

(declare-fun b!7080091 () Bool)

(assert (=> b!7080091 true))

(declare-fun b!7080081 () Bool)

(assert (=> b!7080081 true))

(declare-fun bs!1881989 () Bool)

(declare-fun b!7080090 () Bool)

(assert (= bs!1881989 (and b!7080090 b!7080072)))

(declare-datatypes ((C!35638 0))(
  ( (C!35639 (val!27521 Int)) )
))
(declare-datatypes ((List!68578 0))(
  ( (Nil!68454) (Cons!68454 (h!74902 C!35638) (t!382363 List!68578)) )
))
(declare-fun lt!2551777 () List!68578)

(declare-fun lambda!427588 () Int)

(declare-fun s!7408 () List!68578)

(declare-fun lambda!427592 () Int)

(assert (=> bs!1881989 (= (= lt!2551777 s!7408) (= lambda!427592 lambda!427588))))

(assert (=> b!7080090 true))

(declare-fun e!4256507 () Bool)

(declare-fun e!4256508 () Bool)

(assert (=> b!7080072 (= e!4256507 (not e!4256508))))

(declare-fun res!2892073 () Bool)

(assert (=> b!7080072 (=> res!2892073 e!4256508)))

(declare-datatypes ((Regex!17684 0))(
  ( (ElementMatch!17684 (c!1321373 C!35638)) (Concat!26529 (regOne!35880 Regex!17684) (regTwo!35880 Regex!17684)) (EmptyExpr!17684) (Star!17684 (reg!18013 Regex!17684)) (EmptyLang!17684) (Union!17684 (regOne!35881 Regex!17684) (regTwo!35881 Regex!17684)) )
))
(declare-datatypes ((List!68579 0))(
  ( (Nil!68455) (Cons!68455 (h!74903 Regex!17684) (t!382364 List!68579)) )
))
(declare-datatypes ((Context!13360 0))(
  ( (Context!13361 (exprs!7180 List!68579)) )
))
(declare-fun lt!2551751 () (Set Context!13360))

(declare-fun matchZipper!3224 ((Set Context!13360) List!68578) Bool)

(assert (=> b!7080072 (= res!2892073 (not (matchZipper!3224 lt!2551751 s!7408)))))

(declare-fun lt!2551781 () Context!13360)

(assert (=> b!7080072 (= lt!2551751 (set.insert lt!2551781 (as set.empty (Set Context!13360))))))

(declare-fun lt!2551770 () (Set Context!13360))

(declare-fun getWitness!1810 ((Set Context!13360) Int) Context!13360)

(assert (=> b!7080072 (= lt!2551781 (getWitness!1810 lt!2551770 lambda!427588))))

(declare-datatypes ((List!68580 0))(
  ( (Nil!68456) (Cons!68456 (h!74904 Context!13360) (t!382365 List!68580)) )
))
(declare-fun lt!2551762 () List!68580)

(declare-fun exists!3763 (List!68580 Int) Bool)

(assert (=> b!7080072 (exists!3763 lt!2551762 lambda!427588)))

(declare-datatypes ((Unit!162079 0))(
  ( (Unit!162080) )
))
(declare-fun lt!2551757 () Unit!162079)

(declare-fun lemmaZipperMatchesExistsMatchingContext!605 (List!68580 List!68578) Unit!162079)

(assert (=> b!7080072 (= lt!2551757 (lemmaZipperMatchesExistsMatchingContext!605 lt!2551762 s!7408))))

(declare-fun toList!11025 ((Set Context!13360)) List!68580)

(assert (=> b!7080072 (= lt!2551762 (toList!11025 lt!2551770))))

(declare-fun b!7080073 () Bool)

(declare-fun res!2892069 () Bool)

(declare-fun e!4256510 () Bool)

(assert (=> b!7080073 (=> res!2892069 e!4256510)))

(declare-fun lt!2551765 () Context!13360)

(assert (=> b!7080073 (= res!2892069 (not (is-Cons!68455 (exprs!7180 lt!2551765))))))

(declare-fun b!7080074 () Bool)

(declare-fun res!2892058 () Bool)

(assert (=> b!7080074 (=> res!2892058 e!4256510)))

(declare-fun isEmpty!39965 (List!68579) Bool)

(assert (=> b!7080074 (= res!2892058 (isEmpty!39965 (exprs!7180 lt!2551765)))))

(declare-fun b!7080075 () Bool)

(declare-fun res!2892066 () Bool)

(declare-fun e!4256503 () Bool)

(assert (=> b!7080075 (=> res!2892066 e!4256503)))

(declare-fun lt!2551774 () (Set Context!13360))

(declare-datatypes ((tuple2!68326 0))(
  ( (tuple2!68327 (_1!37466 List!68578) (_2!37466 List!68578)) )
))
(declare-fun lt!2551772 () tuple2!68326)

(assert (=> b!7080075 (= res!2892066 (not (matchZipper!3224 lt!2551774 (_2!37466 lt!2551772))))))

(declare-fun b!7080076 () Bool)

(declare-fun res!2892057 () Bool)

(assert (=> b!7080076 (=> res!2892057 e!4256503)))

(declare-fun ++!15843 (List!68578 List!68578) List!68578)

(assert (=> b!7080076 (= res!2892057 (not (= (++!15843 (_1!37466 lt!2551772) (_2!37466 lt!2551772)) (t!382363 s!7408))))))

(declare-fun b!7080077 () Bool)

(declare-fun e!4256504 () Bool)

(declare-fun e!4256509 () Bool)

(assert (=> b!7080077 (= e!4256504 e!4256509)))

(declare-fun res!2892065 () Bool)

(assert (=> b!7080077 (=> res!2892065 e!4256509)))

(declare-fun lt!2551763 () (Set Context!13360))

(assert (=> b!7080077 (= res!2892065 (not (= lt!2551763 lt!2551751)))))

(declare-fun lt!2551754 () Context!13360)

(assert (=> b!7080077 (= lt!2551763 (set.insert lt!2551754 (as set.empty (Set Context!13360))))))

(declare-fun lt!2551758 () Unit!162079)

(declare-fun lambda!427590 () Int)

(declare-fun ct2!306 () Context!13360)

(declare-fun lemmaConcatPreservesForall!995 (List!68579 List!68579 Int) Unit!162079)

(assert (=> b!7080077 (= lt!2551758 (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551765) (exprs!7180 ct2!306) lambda!427590))))

(declare-fun b!7080078 () Bool)

(declare-fun e!4256515 () Bool)

(declare-fun tp!1943360 () Bool)

(assert (=> b!7080078 (= e!4256515 tp!1943360)))

(declare-fun b!7080079 () Bool)

(declare-fun e!4256512 () Bool)

(assert (=> b!7080079 (= e!4256503 e!4256512)))

(declare-fun res!2892070 () Bool)

(assert (=> b!7080079 (=> res!2892070 e!4256512)))

(declare-fun lt!2551779 () (Set Context!13360))

(declare-fun lt!2551764 () (Set Context!13360))

(declare-fun lt!2551769 () (Set Context!13360))

(assert (=> b!7080079 (= res!2892070 (or (not (= lt!2551769 lt!2551779)) (not (= lt!2551769 lt!2551764))))))

(declare-fun lambda!427591 () Int)

(declare-fun lt!2551752 () (Set Context!13360))

(declare-fun flatMap!2610 ((Set Context!13360) Int) (Set Context!13360))

(declare-fun derivationStepZipperUp!2268 (Context!13360 C!35638) (Set Context!13360))

(assert (=> b!7080079 (= (flatMap!2610 lt!2551752 lambda!427591) (derivationStepZipperUp!2268 lt!2551765 (h!74902 s!7408)))))

(declare-fun lt!2551753 () Unit!162079)

(declare-fun lemmaFlatMapOnSingletonSet!2119 ((Set Context!13360) Context!13360 Int) Unit!162079)

(assert (=> b!7080079 (= lt!2551753 (lemmaFlatMapOnSingletonSet!2119 lt!2551752 lt!2551765 lambda!427591))))

(assert (=> b!7080079 (= lt!2551779 (derivationStepZipperUp!2268 lt!2551765 (h!74902 s!7408)))))

(declare-fun derivationStepZipper!3134 ((Set Context!13360) C!35638) (Set Context!13360))

(assert (=> b!7080079 (= lt!2551769 (derivationStepZipper!3134 lt!2551752 (h!74902 s!7408)))))

(assert (=> b!7080079 (= lt!2551752 (set.insert lt!2551765 (as set.empty (Set Context!13360))))))

(declare-fun b!7080080 () Bool)

(declare-fun res!2892056 () Bool)

(assert (=> b!7080080 (=> res!2892056 e!4256508)))

(assert (=> b!7080080 (= res!2892056 (not (set.member lt!2551781 lt!2551770)))))

(declare-fun setNonEmpty!50470 () Bool)

(declare-fun e!4256516 () Bool)

(declare-fun setRes!50470 () Bool)

(declare-fun setElem!50470 () Context!13360)

(declare-fun tp!1943358 () Bool)

(declare-fun inv!87070 (Context!13360) Bool)

(assert (=> setNonEmpty!50470 (= setRes!50470 (and tp!1943358 (inv!87070 setElem!50470) e!4256516))))

(declare-fun z1!570 () (Set Context!13360))

(declare-fun setRest!50470 () (Set Context!13360))

(assert (=> setNonEmpty!50470 (= z1!570 (set.union (set.insert setElem!50470 (as set.empty (Set Context!13360))) setRest!50470))))

(assert (=> b!7080081 (= e!4256509 e!4256510)))

(declare-fun res!2892067 () Bool)

(assert (=> b!7080081 (=> res!2892067 e!4256510)))

(declare-fun lt!2551782 () (Set Context!13360))

(assert (=> b!7080081 (= res!2892067 (not (= (derivationStepZipper!3134 lt!2551763 (h!74902 s!7408)) lt!2551782)))))

(assert (=> b!7080081 (= (flatMap!2610 lt!2551763 lambda!427591) (derivationStepZipperUp!2268 lt!2551754 (h!74902 s!7408)))))

(declare-fun lt!2551776 () Unit!162079)

(assert (=> b!7080081 (= lt!2551776 (lemmaFlatMapOnSingletonSet!2119 lt!2551763 lt!2551754 lambda!427591))))

(assert (=> b!7080081 (= lt!2551782 (derivationStepZipperUp!2268 lt!2551754 (h!74902 s!7408)))))

(declare-fun lt!2551778 () Unit!162079)

(assert (=> b!7080081 (= lt!2551778 (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551765) (exprs!7180 ct2!306) lambda!427590))))

(declare-fun b!7080071 () Bool)

(declare-fun res!2892072 () Bool)

(assert (=> b!7080071 (=> (not res!2892072) (not e!4256507))))

(assert (=> b!7080071 (= res!2892072 (is-Cons!68454 s!7408))))

(declare-fun res!2892060 () Bool)

(assert (=> start!688618 (=> (not res!2892060) (not e!4256507))))

(assert (=> start!688618 (= res!2892060 (matchZipper!3224 lt!2551770 s!7408))))

(declare-fun appendTo!805 ((Set Context!13360) Context!13360) (Set Context!13360))

(assert (=> start!688618 (= lt!2551770 (appendTo!805 z1!570 ct2!306))))

(assert (=> start!688618 e!4256507))

(declare-fun condSetEmpty!50470 () Bool)

(assert (=> start!688618 (= condSetEmpty!50470 (= z1!570 (as set.empty (Set Context!13360))))))

(assert (=> start!688618 setRes!50470))

(assert (=> start!688618 (and (inv!87070 ct2!306) e!4256515)))

(declare-fun e!4256511 () Bool)

(assert (=> start!688618 e!4256511))

(declare-fun b!7080082 () Bool)

(declare-fun tp_is_empty!44593 () Bool)

(declare-fun tp!1943357 () Bool)

(assert (=> b!7080082 (= e!4256511 (and tp_is_empty!44593 tp!1943357))))

(declare-fun b!7080083 () Bool)

(declare-fun tp!1943359 () Bool)

(assert (=> b!7080083 (= e!4256516 tp!1943359)))

(declare-fun b!7080084 () Bool)

(declare-fun e!4256506 () Bool)

(assert (=> b!7080084 (= e!4256512 e!4256506)))

(declare-fun res!2892059 () Bool)

(assert (=> b!7080084 (=> res!2892059 e!4256506)))

(assert (=> b!7080084 (= res!2892059 (not (matchZipper!3224 lt!2551752 lt!2551777)))))

(assert (=> b!7080084 (= lt!2551777 (Cons!68454 (h!74902 s!7408) (_1!37466 lt!2551772)))))

(declare-fun b!7080085 () Bool)

(declare-fun res!2892071 () Bool)

(declare-fun e!4256514 () Bool)

(assert (=> b!7080085 (=> res!2892071 e!4256514)))

(declare-fun isPrefix!5865 (List!68578 List!68578) Bool)

(assert (=> b!7080085 (= res!2892071 (not (isPrefix!5865 Nil!68454 lt!2551777)))))

(declare-fun b!7080086 () Bool)

(declare-fun e!4256513 () Bool)

(assert (=> b!7080086 (= e!4256513 e!4256503)))

(declare-fun res!2892055 () Bool)

(assert (=> b!7080086 (=> res!2892055 e!4256503)))

(assert (=> b!7080086 (= res!2892055 (not (matchZipper!3224 lt!2551764 (_1!37466 lt!2551772))))))

(declare-datatypes ((Option!16995 0))(
  ( (None!16994) (Some!16994 (v!53288 tuple2!68326)) )
))
(declare-fun lt!2551780 () Option!16995)

(declare-fun get!23988 (Option!16995) tuple2!68326)

(assert (=> b!7080086 (= lt!2551772 (get!23988 lt!2551780))))

(declare-fun isDefined!13696 (Option!16995) Bool)

(assert (=> b!7080086 (isDefined!13696 lt!2551780)))

(declare-fun findConcatSeparationZippers!511 ((Set Context!13360) (Set Context!13360) List!68578 List!68578 List!68578) Option!16995)

(assert (=> b!7080086 (= lt!2551780 (findConcatSeparationZippers!511 lt!2551764 lt!2551774 Nil!68454 (t!382363 s!7408) (t!382363 s!7408)))))

(assert (=> b!7080086 (= lt!2551774 (set.insert ct2!306 (as set.empty (Set Context!13360))))))

(declare-fun lt!2551773 () Unit!162079)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!499 ((Set Context!13360) Context!13360 List!68578) Unit!162079)

(assert (=> b!7080086 (= lt!2551773 (lemmaConcatZipperMatchesStringThenFindConcatDefined!499 lt!2551764 ct2!306 (t!382363 s!7408)))))

(declare-fun lt!2551783 () (Set Context!13360))

(assert (=> b!7080086 (= lt!2551783 (appendTo!805 lt!2551764 ct2!306))))

(declare-fun lt!2551775 () Context!13360)

(declare-fun derivationStepZipperDown!2318 (Regex!17684 Context!13360 C!35638) (Set Context!13360))

(assert (=> b!7080086 (= lt!2551764 (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) lt!2551775 (h!74902 s!7408)))))

(declare-fun lt!2551760 () List!68579)

(declare-fun lt!2551761 () Unit!162079)

(assert (=> b!7080086 (= lt!2551761 (lemmaConcatPreservesForall!995 lt!2551760 (exprs!7180 ct2!306) lambda!427590))))

(declare-fun lt!2551759 () Unit!162079)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!151 (Context!13360 Regex!17684 C!35638 Context!13360) Unit!162079)

(assert (=> b!7080086 (= lt!2551759 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!151 lt!2551775 (h!74903 (exprs!7180 lt!2551765)) (h!74902 s!7408) ct2!306))))

(declare-fun b!7080087 () Bool)

(assert (=> b!7080087 (= e!4256514 (= (++!15843 Nil!68454 s!7408) s!7408))))

(declare-fun b!7080088 () Bool)

(declare-fun e!4256505 () Bool)

(assert (=> b!7080088 (= e!4256505 e!4256513)))

(declare-fun res!2892064 () Bool)

(assert (=> b!7080088 (=> res!2892064 e!4256513)))

(assert (=> b!7080088 (= res!2892064 (not (matchZipper!3224 lt!2551783 (t!382363 s!7408))))))

(declare-fun ++!15844 (List!68579 List!68579) List!68579)

(assert (=> b!7080088 (= lt!2551783 (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306))) (h!74902 s!7408)))))

(declare-fun lt!2551766 () Unit!162079)

(assert (=> b!7080088 (= lt!2551766 (lemmaConcatPreservesForall!995 lt!2551760 (exprs!7180 ct2!306) lambda!427590))))

(declare-fun b!7080089 () Bool)

(assert (=> b!7080089 (= e!4256510 e!4256505)))

(declare-fun res!2892061 () Bool)

(assert (=> b!7080089 (=> res!2892061 e!4256505)))

(declare-fun nullable!7367 (Regex!17684) Bool)

(assert (=> b!7080089 (= res!2892061 (nullable!7367 (h!74903 (exprs!7180 lt!2551765))))))

(assert (=> b!7080089 (= lt!2551775 (Context!13361 lt!2551760))))

(declare-fun tail!13893 (List!68579) List!68579)

(assert (=> b!7080089 (= lt!2551760 (tail!13893 (exprs!7180 lt!2551765)))))

(assert (=> b!7080090 (= e!4256506 e!4256514)))

(declare-fun res!2892063 () Bool)

(assert (=> b!7080090 (=> res!2892063 e!4256514)))

(assert (=> b!7080090 (= res!2892063 (not (matchZipper!3224 z1!570 lt!2551777)))))

(declare-fun lt!2551768 () List!68580)

(declare-fun content!13868 (List!68580) (Set Context!13360))

(assert (=> b!7080090 (matchZipper!3224 (content!13868 lt!2551768) lt!2551777)))

(declare-fun lt!2551756 () Unit!162079)

(declare-fun lemmaExistsMatchingContextThenMatchingString!69 (List!68580 List!68578) Unit!162079)

(assert (=> b!7080090 (= lt!2551756 (lemmaExistsMatchingContextThenMatchingString!69 lt!2551768 lt!2551777))))

(assert (=> b!7080090 (= lt!2551768 (toList!11025 z1!570))))

(declare-fun exists!3764 ((Set Context!13360) Int) Bool)

(assert (=> b!7080090 (exists!3764 z1!570 lambda!427592)))

(declare-fun lt!2551767 () Unit!162079)

(declare-fun lemmaContainsThenExists!176 ((Set Context!13360) Context!13360 Int) Unit!162079)

(assert (=> b!7080090 (= lt!2551767 (lemmaContainsThenExists!176 z1!570 lt!2551765 lambda!427592))))

(assert (=> b!7080090 (isDefined!13696 (findConcatSeparationZippers!511 lt!2551752 lt!2551774 Nil!68454 s!7408 s!7408))))

(declare-fun lt!2551771 () Unit!162079)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!97 ((Set Context!13360) (Set Context!13360) List!68578 List!68578 List!68578 List!68578 List!68578) Unit!162079)

(assert (=> b!7080090 (= lt!2551771 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!97 lt!2551752 lt!2551774 lt!2551777 (_2!37466 lt!2551772) s!7408 Nil!68454 s!7408))))

(declare-fun setIsEmpty!50470 () Bool)

(assert (=> setIsEmpty!50470 setRes!50470))

(assert (=> b!7080091 (= e!4256508 e!4256504)))

(declare-fun res!2892062 () Bool)

(assert (=> b!7080091 (=> res!2892062 e!4256504)))

(assert (=> b!7080091 (= res!2892062 (or (not (= lt!2551754 lt!2551781)) (not (set.member lt!2551765 z1!570))))))

(assert (=> b!7080091 (= lt!2551754 (Context!13361 (++!15844 (exprs!7180 lt!2551765) (exprs!7180 ct2!306))))))

(declare-fun lt!2551755 () Unit!162079)

(assert (=> b!7080091 (= lt!2551755 (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551765) (exprs!7180 ct2!306) lambda!427590))))

(declare-fun lambda!427589 () Int)

(declare-fun mapPost2!513 ((Set Context!13360) Int Context!13360) Context!13360)

(assert (=> b!7080091 (= lt!2551765 (mapPost2!513 z1!570 lambda!427589 lt!2551781))))

(declare-fun b!7080092 () Bool)

(declare-fun res!2892068 () Bool)

(assert (=> b!7080092 (=> res!2892068 e!4256514)))

(assert (=> b!7080092 (= res!2892068 (not (= (++!15843 lt!2551777 (_2!37466 lt!2551772)) s!7408)))))

(assert (= (and start!688618 res!2892060) b!7080071))

(assert (= (and b!7080071 res!2892072) b!7080072))

(assert (= (and b!7080072 (not res!2892073)) b!7080080))

(assert (= (and b!7080080 (not res!2892056)) b!7080091))

(assert (= (and b!7080091 (not res!2892062)) b!7080077))

(assert (= (and b!7080077 (not res!2892065)) b!7080081))

(assert (= (and b!7080081 (not res!2892067)) b!7080073))

(assert (= (and b!7080073 (not res!2892069)) b!7080074))

(assert (= (and b!7080074 (not res!2892058)) b!7080089))

(assert (= (and b!7080089 (not res!2892061)) b!7080088))

(assert (= (and b!7080088 (not res!2892064)) b!7080086))

(assert (= (and b!7080086 (not res!2892055)) b!7080075))

(assert (= (and b!7080075 (not res!2892066)) b!7080076))

(assert (= (and b!7080076 (not res!2892057)) b!7080079))

(assert (= (and b!7080079 (not res!2892070)) b!7080084))

(assert (= (and b!7080084 (not res!2892059)) b!7080090))

(assert (= (and b!7080090 (not res!2892063)) b!7080092))

(assert (= (and b!7080092 (not res!2892068)) b!7080085))

(assert (= (and b!7080085 (not res!2892071)) b!7080087))

(assert (= (and start!688618 condSetEmpty!50470) setIsEmpty!50470))

(assert (= (and start!688618 (not condSetEmpty!50470)) setNonEmpty!50470))

(assert (= setNonEmpty!50470 b!7080083))

(assert (= start!688618 b!7080078))

(assert (= (and start!688618 (is-Cons!68454 s!7408)) b!7080082))

(declare-fun m!7810448 () Bool)

(assert (=> b!7080072 m!7810448))

(declare-fun m!7810450 () Bool)

(assert (=> b!7080072 m!7810450))

(declare-fun m!7810452 () Bool)

(assert (=> b!7080072 m!7810452))

(declare-fun m!7810454 () Bool)

(assert (=> b!7080072 m!7810454))

(declare-fun m!7810456 () Bool)

(assert (=> b!7080072 m!7810456))

(declare-fun m!7810458 () Bool)

(assert (=> b!7080072 m!7810458))

(declare-fun m!7810460 () Bool)

(assert (=> b!7080080 m!7810460))

(declare-fun m!7810462 () Bool)

(assert (=> b!7080086 m!7810462))

(declare-fun m!7810464 () Bool)

(assert (=> b!7080086 m!7810464))

(declare-fun m!7810466 () Bool)

(assert (=> b!7080086 m!7810466))

(declare-fun m!7810468 () Bool)

(assert (=> b!7080086 m!7810468))

(declare-fun m!7810470 () Bool)

(assert (=> b!7080086 m!7810470))

(declare-fun m!7810472 () Bool)

(assert (=> b!7080086 m!7810472))

(declare-fun m!7810474 () Bool)

(assert (=> b!7080086 m!7810474))

(declare-fun m!7810476 () Bool)

(assert (=> b!7080086 m!7810476))

(declare-fun m!7810478 () Bool)

(assert (=> b!7080086 m!7810478))

(declare-fun m!7810480 () Bool)

(assert (=> b!7080086 m!7810480))

(declare-fun m!7810482 () Bool)

(assert (=> b!7080088 m!7810482))

(declare-fun m!7810484 () Bool)

(assert (=> b!7080088 m!7810484))

(declare-fun m!7810486 () Bool)

(assert (=> b!7080088 m!7810486))

(assert (=> b!7080088 m!7810480))

(declare-fun m!7810488 () Bool)

(assert (=> b!7080089 m!7810488))

(declare-fun m!7810490 () Bool)

(assert (=> b!7080089 m!7810490))

(declare-fun m!7810492 () Bool)

(assert (=> b!7080091 m!7810492))

(declare-fun m!7810494 () Bool)

(assert (=> b!7080091 m!7810494))

(declare-fun m!7810496 () Bool)

(assert (=> b!7080091 m!7810496))

(declare-fun m!7810498 () Bool)

(assert (=> b!7080091 m!7810498))

(declare-fun m!7810500 () Bool)

(assert (=> b!7080081 m!7810500))

(assert (=> b!7080081 m!7810496))

(declare-fun m!7810502 () Bool)

(assert (=> b!7080081 m!7810502))

(declare-fun m!7810504 () Bool)

(assert (=> b!7080081 m!7810504))

(declare-fun m!7810506 () Bool)

(assert (=> b!7080081 m!7810506))

(declare-fun m!7810508 () Bool)

(assert (=> start!688618 m!7810508))

(declare-fun m!7810510 () Bool)

(assert (=> start!688618 m!7810510))

(declare-fun m!7810512 () Bool)

(assert (=> start!688618 m!7810512))

(declare-fun m!7810514 () Bool)

(assert (=> b!7080075 m!7810514))

(declare-fun m!7810516 () Bool)

(assert (=> b!7080076 m!7810516))

(declare-fun m!7810518 () Bool)

(assert (=> b!7080092 m!7810518))

(declare-fun m!7810520 () Bool)

(assert (=> b!7080084 m!7810520))

(declare-fun m!7810522 () Bool)

(assert (=> setNonEmpty!50470 m!7810522))

(declare-fun m!7810524 () Bool)

(assert (=> b!7080074 m!7810524))

(declare-fun m!7810526 () Bool)

(assert (=> b!7080079 m!7810526))

(declare-fun m!7810528 () Bool)

(assert (=> b!7080079 m!7810528))

(declare-fun m!7810530 () Bool)

(assert (=> b!7080079 m!7810530))

(declare-fun m!7810532 () Bool)

(assert (=> b!7080079 m!7810532))

(declare-fun m!7810534 () Bool)

(assert (=> b!7080079 m!7810534))

(declare-fun m!7810536 () Bool)

(assert (=> b!7080090 m!7810536))

(declare-fun m!7810538 () Bool)

(assert (=> b!7080090 m!7810538))

(declare-fun m!7810540 () Bool)

(assert (=> b!7080090 m!7810540))

(declare-fun m!7810542 () Bool)

(assert (=> b!7080090 m!7810542))

(declare-fun m!7810544 () Bool)

(assert (=> b!7080090 m!7810544))

(assert (=> b!7080090 m!7810538))

(declare-fun m!7810546 () Bool)

(assert (=> b!7080090 m!7810546))

(declare-fun m!7810548 () Bool)

(assert (=> b!7080090 m!7810548))

(declare-fun m!7810550 () Bool)

(assert (=> b!7080090 m!7810550))

(assert (=> b!7080090 m!7810546))

(declare-fun m!7810552 () Bool)

(assert (=> b!7080090 m!7810552))

(declare-fun m!7810554 () Bool)

(assert (=> b!7080090 m!7810554))

(declare-fun m!7810556 () Bool)

(assert (=> b!7080077 m!7810556))

(assert (=> b!7080077 m!7810496))

(declare-fun m!7810558 () Bool)

(assert (=> b!7080085 m!7810558))

(declare-fun m!7810560 () Bool)

(assert (=> b!7080087 m!7810560))

(push 1)

(assert (not b!7080075))

(assert (not b!7080072))

(assert (not b!7080081))

(assert (not b!7080077))

(assert (not b!7080083))

(assert (not b!7080076))

(assert (not b!7080092))

(assert (not b!7080089))

(assert (not b!7080079))

(assert (not start!688618))

(assert (not b!7080086))

(assert (not b!7080084))

(assert (not b!7080085))

(assert (not b!7080074))

(assert (not b!7080082))

(assert (not b!7080088))

(assert (not setNonEmpty!50470))

(assert (not b!7080087))

(assert (not b!7080078))

(assert tp_is_empty!44593)

(assert (not b!7080091))

(assert (not b!7080090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7080181 () Bool)

(declare-fun res!2892136 () Bool)

(declare-fun e!4256563 () Bool)

(assert (=> b!7080181 (=> (not res!2892136) (not e!4256563))))

(declare-fun lt!2551887 () List!68578)

(declare-fun size!41256 (List!68578) Int)

(assert (=> b!7080181 (= res!2892136 (= (size!41256 lt!2551887) (+ (size!41256 lt!2551777) (size!41256 (_2!37466 lt!2551772)))))))

(declare-fun b!7080180 () Bool)

(declare-fun e!4256564 () List!68578)

(assert (=> b!7080180 (= e!4256564 (Cons!68454 (h!74902 lt!2551777) (++!15843 (t!382363 lt!2551777) (_2!37466 lt!2551772))))))

(declare-fun d!2214494 () Bool)

(assert (=> d!2214494 e!4256563))

(declare-fun res!2892137 () Bool)

(assert (=> d!2214494 (=> (not res!2892137) (not e!4256563))))

(declare-fun content!13870 (List!68578) (Set C!35638))

(assert (=> d!2214494 (= res!2892137 (= (content!13870 lt!2551887) (set.union (content!13870 lt!2551777) (content!13870 (_2!37466 lt!2551772)))))))

(assert (=> d!2214494 (= lt!2551887 e!4256564)))

(declare-fun c!1321389 () Bool)

(assert (=> d!2214494 (= c!1321389 (is-Nil!68454 lt!2551777))))

(assert (=> d!2214494 (= (++!15843 lt!2551777 (_2!37466 lt!2551772)) lt!2551887)))

(declare-fun b!7080179 () Bool)

(assert (=> b!7080179 (= e!4256564 (_2!37466 lt!2551772))))

(declare-fun b!7080182 () Bool)

(assert (=> b!7080182 (= e!4256563 (or (not (= (_2!37466 lt!2551772) Nil!68454)) (= lt!2551887 lt!2551777)))))

(assert (= (and d!2214494 c!1321389) b!7080179))

(assert (= (and d!2214494 (not c!1321389)) b!7080180))

(assert (= (and d!2214494 res!2892137) b!7080181))

(assert (= (and b!7080181 res!2892136) b!7080182))

(declare-fun m!7810676 () Bool)

(assert (=> b!7080181 m!7810676))

(declare-fun m!7810678 () Bool)

(assert (=> b!7080181 m!7810678))

(declare-fun m!7810680 () Bool)

(assert (=> b!7080181 m!7810680))

(declare-fun m!7810682 () Bool)

(assert (=> b!7080180 m!7810682))

(declare-fun m!7810684 () Bool)

(assert (=> d!2214494 m!7810684))

(declare-fun m!7810686 () Bool)

(assert (=> d!2214494 m!7810686))

(declare-fun m!7810688 () Bool)

(assert (=> d!2214494 m!7810688))

(assert (=> b!7080092 d!2214494))

(declare-fun d!2214496 () Bool)

(declare-fun c!1321392 () Bool)

(declare-fun isEmpty!39967 (List!68578) Bool)

(assert (=> d!2214496 (= c!1321392 (isEmpty!39967 s!7408))))

(declare-fun e!4256567 () Bool)

(assert (=> d!2214496 (= (matchZipper!3224 lt!2551770 s!7408) e!4256567)))

(declare-fun b!7080187 () Bool)

(declare-fun nullableZipper!2725 ((Set Context!13360)) Bool)

(assert (=> b!7080187 (= e!4256567 (nullableZipper!2725 lt!2551770))))

(declare-fun b!7080188 () Bool)

(declare-fun head!14434 (List!68578) C!35638)

(declare-fun tail!13895 (List!68578) List!68578)

(assert (=> b!7080188 (= e!4256567 (matchZipper!3224 (derivationStepZipper!3134 lt!2551770 (head!14434 s!7408)) (tail!13895 s!7408)))))

(assert (= (and d!2214496 c!1321392) b!7080187))

(assert (= (and d!2214496 (not c!1321392)) b!7080188))

(declare-fun m!7810690 () Bool)

(assert (=> d!2214496 m!7810690))

(declare-fun m!7810692 () Bool)

(assert (=> b!7080187 m!7810692))

(declare-fun m!7810694 () Bool)

(assert (=> b!7080188 m!7810694))

(assert (=> b!7080188 m!7810694))

(declare-fun m!7810696 () Bool)

(assert (=> b!7080188 m!7810696))

(declare-fun m!7810698 () Bool)

(assert (=> b!7080188 m!7810698))

(assert (=> b!7080188 m!7810696))

(assert (=> b!7080188 m!7810698))

(declare-fun m!7810700 () Bool)

(assert (=> b!7080188 m!7810700))

(assert (=> start!688618 d!2214496))

(declare-fun bs!1881991 () Bool)

(declare-fun d!2214498 () Bool)

(assert (= bs!1881991 (and d!2214498 b!7080091)))

(declare-fun lambda!427626 () Int)

(assert (=> bs!1881991 (= lambda!427626 lambda!427589)))

(assert (=> d!2214498 true))

(declare-fun map!16036 ((Set Context!13360) Int) (Set Context!13360))

(assert (=> d!2214498 (= (appendTo!805 z1!570 ct2!306) (map!16036 z1!570 lambda!427626))))

(declare-fun bs!1881992 () Bool)

(assert (= bs!1881992 d!2214498))

(declare-fun m!7810702 () Bool)

(assert (=> bs!1881992 m!7810702))

(assert (=> start!688618 d!2214498))

(declare-fun bs!1881993 () Bool)

(declare-fun d!2214500 () Bool)

(assert (= bs!1881993 (and d!2214500 b!7080091)))

(declare-fun lambda!427629 () Int)

(assert (=> bs!1881993 (= lambda!427629 lambda!427590)))

(declare-fun forall!16647 (List!68579 Int) Bool)

(assert (=> d!2214500 (= (inv!87070 ct2!306) (forall!16647 (exprs!7180 ct2!306) lambda!427629))))

(declare-fun bs!1881994 () Bool)

(assert (= bs!1881994 d!2214500))

(declare-fun m!7810704 () Bool)

(assert (=> bs!1881994 m!7810704))

(assert (=> start!688618 d!2214500))

(declare-fun b!7080197 () Bool)

(declare-fun e!4256573 () List!68579)

(assert (=> b!7080197 (= e!4256573 (exprs!7180 ct2!306))))

(declare-fun e!4256572 () Bool)

(declare-fun b!7080200 () Bool)

(declare-fun lt!2551892 () List!68579)

(assert (=> b!7080200 (= e!4256572 (or (not (= (exprs!7180 ct2!306) Nil!68455)) (= lt!2551892 (exprs!7180 lt!2551765))))))

(declare-fun b!7080199 () Bool)

(declare-fun res!2892144 () Bool)

(assert (=> b!7080199 (=> (not res!2892144) (not e!4256572))))

(declare-fun size!41257 (List!68579) Int)

(assert (=> b!7080199 (= res!2892144 (= (size!41257 lt!2551892) (+ (size!41257 (exprs!7180 lt!2551765)) (size!41257 (exprs!7180 ct2!306)))))))

(declare-fun b!7080198 () Bool)

(assert (=> b!7080198 (= e!4256573 (Cons!68455 (h!74903 (exprs!7180 lt!2551765)) (++!15844 (t!382364 (exprs!7180 lt!2551765)) (exprs!7180 ct2!306))))))

(declare-fun d!2214502 () Bool)

(assert (=> d!2214502 e!4256572))

(declare-fun res!2892143 () Bool)

(assert (=> d!2214502 (=> (not res!2892143) (not e!4256572))))

(declare-fun content!13871 (List!68579) (Set Regex!17684))

(assert (=> d!2214502 (= res!2892143 (= (content!13871 lt!2551892) (set.union (content!13871 (exprs!7180 lt!2551765)) (content!13871 (exprs!7180 ct2!306)))))))

(assert (=> d!2214502 (= lt!2551892 e!4256573)))

(declare-fun c!1321396 () Bool)

(assert (=> d!2214502 (= c!1321396 (is-Nil!68455 (exprs!7180 lt!2551765)))))

(assert (=> d!2214502 (= (++!15844 (exprs!7180 lt!2551765) (exprs!7180 ct2!306)) lt!2551892)))

(assert (= (and d!2214502 c!1321396) b!7080197))

(assert (= (and d!2214502 (not c!1321396)) b!7080198))

(assert (= (and d!2214502 res!2892143) b!7080199))

(assert (= (and b!7080199 res!2892144) b!7080200))

(declare-fun m!7810706 () Bool)

(assert (=> b!7080199 m!7810706))

(declare-fun m!7810708 () Bool)

(assert (=> b!7080199 m!7810708))

(declare-fun m!7810710 () Bool)

(assert (=> b!7080199 m!7810710))

(declare-fun m!7810712 () Bool)

(assert (=> b!7080198 m!7810712))

(declare-fun m!7810714 () Bool)

(assert (=> d!2214502 m!7810714))

(declare-fun m!7810716 () Bool)

(assert (=> d!2214502 m!7810716))

(declare-fun m!7810718 () Bool)

(assert (=> d!2214502 m!7810718))

(assert (=> b!7080091 d!2214502))

(declare-fun d!2214504 () Bool)

(assert (=> d!2214504 (forall!16647 (++!15844 (exprs!7180 lt!2551765) (exprs!7180 ct2!306)) lambda!427590)))

(declare-fun lt!2551895 () Unit!162079)

(declare-fun choose!54450 (List!68579 List!68579 Int) Unit!162079)

(assert (=> d!2214504 (= lt!2551895 (choose!54450 (exprs!7180 lt!2551765) (exprs!7180 ct2!306) lambda!427590))))

(assert (=> d!2214504 (forall!16647 (exprs!7180 lt!2551765) lambda!427590)))

(assert (=> d!2214504 (= (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551765) (exprs!7180 ct2!306) lambda!427590) lt!2551895)))

(declare-fun bs!1881995 () Bool)

(assert (= bs!1881995 d!2214504))

(assert (=> bs!1881995 m!7810494))

(assert (=> bs!1881995 m!7810494))

(declare-fun m!7810720 () Bool)

(assert (=> bs!1881995 m!7810720))

(declare-fun m!7810722 () Bool)

(assert (=> bs!1881995 m!7810722))

(declare-fun m!7810724 () Bool)

(assert (=> bs!1881995 m!7810724))

(assert (=> b!7080091 d!2214504))

(declare-fun d!2214506 () Bool)

(declare-fun e!4256576 () Bool)

(assert (=> d!2214506 e!4256576))

(declare-fun res!2892147 () Bool)

(assert (=> d!2214506 (=> (not res!2892147) (not e!4256576))))

(declare-fun lt!2551898 () Context!13360)

(declare-fun dynLambda!27898 (Int Context!13360) Context!13360)

(assert (=> d!2214506 (= res!2892147 (= lt!2551781 (dynLambda!27898 lambda!427589 lt!2551898)))))

(declare-fun choose!54451 ((Set Context!13360) Int Context!13360) Context!13360)

(assert (=> d!2214506 (= lt!2551898 (choose!54451 z1!570 lambda!427589 lt!2551781))))

(assert (=> d!2214506 (set.member lt!2551781 (map!16036 z1!570 lambda!427589))))

(assert (=> d!2214506 (= (mapPost2!513 z1!570 lambda!427589 lt!2551781) lt!2551898)))

(declare-fun b!7080204 () Bool)

(assert (=> b!7080204 (= e!4256576 (set.member lt!2551898 z1!570))))

(assert (= (and d!2214506 res!2892147) b!7080204))

(declare-fun b_lambda!270505 () Bool)

(assert (=> (not b_lambda!270505) (not d!2214506)))

(declare-fun m!7810726 () Bool)

(assert (=> d!2214506 m!7810726))

(declare-fun m!7810728 () Bool)

(assert (=> d!2214506 m!7810728))

(declare-fun m!7810730 () Bool)

(assert (=> d!2214506 m!7810730))

(declare-fun m!7810732 () Bool)

(assert (=> d!2214506 m!7810732))

(declare-fun m!7810734 () Bool)

(assert (=> b!7080204 m!7810734))

(assert (=> b!7080091 d!2214506))

(declare-fun d!2214508 () Bool)

(declare-fun dynLambda!27899 (Int Context!13360) (Set Context!13360))

(assert (=> d!2214508 (= (flatMap!2610 lt!2551763 lambda!427591) (dynLambda!27899 lambda!427591 lt!2551754))))

(declare-fun lt!2551901 () Unit!162079)

(declare-fun choose!54452 ((Set Context!13360) Context!13360 Int) Unit!162079)

(assert (=> d!2214508 (= lt!2551901 (choose!54452 lt!2551763 lt!2551754 lambda!427591))))

(assert (=> d!2214508 (= lt!2551763 (set.insert lt!2551754 (as set.empty (Set Context!13360))))))

(assert (=> d!2214508 (= (lemmaFlatMapOnSingletonSet!2119 lt!2551763 lt!2551754 lambda!427591) lt!2551901)))

(declare-fun b_lambda!270507 () Bool)

(assert (=> (not b_lambda!270507) (not d!2214508)))

(declare-fun bs!1881996 () Bool)

(assert (= bs!1881996 d!2214508))

(assert (=> bs!1881996 m!7810506))

(declare-fun m!7810736 () Bool)

(assert (=> bs!1881996 m!7810736))

(declare-fun m!7810738 () Bool)

(assert (=> bs!1881996 m!7810738))

(assert (=> bs!1881996 m!7810556))

(assert (=> b!7080081 d!2214508))

(declare-fun b!7080215 () Bool)

(declare-fun e!4256584 () Bool)

(assert (=> b!7080215 (= e!4256584 (nullable!7367 (h!74903 (exprs!7180 lt!2551754))))))

(declare-fun b!7080216 () Bool)

(declare-fun e!4256583 () (Set Context!13360))

(declare-fun e!4256585 () (Set Context!13360))

(assert (=> b!7080216 (= e!4256583 e!4256585)))

(declare-fun c!1321401 () Bool)

(assert (=> b!7080216 (= c!1321401 (is-Cons!68455 (exprs!7180 lt!2551754)))))

(declare-fun bm!643531 () Bool)

(declare-fun call!643536 () (Set Context!13360))

(assert (=> bm!643531 (= call!643536 (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551754)) (Context!13361 (t!382364 (exprs!7180 lt!2551754))) (h!74902 s!7408)))))

(declare-fun b!7080217 () Bool)

(assert (=> b!7080217 (= e!4256585 call!643536)))

(declare-fun d!2214510 () Bool)

(declare-fun c!1321402 () Bool)

(assert (=> d!2214510 (= c!1321402 e!4256584)))

(declare-fun res!2892150 () Bool)

(assert (=> d!2214510 (=> (not res!2892150) (not e!4256584))))

(assert (=> d!2214510 (= res!2892150 (is-Cons!68455 (exprs!7180 lt!2551754)))))

(assert (=> d!2214510 (= (derivationStepZipperUp!2268 lt!2551754 (h!74902 s!7408)) e!4256583)))

(declare-fun b!7080218 () Bool)

(assert (=> b!7080218 (= e!4256583 (set.union call!643536 (derivationStepZipperUp!2268 (Context!13361 (t!382364 (exprs!7180 lt!2551754))) (h!74902 s!7408))))))

(declare-fun b!7080219 () Bool)

(assert (=> b!7080219 (= e!4256585 (as set.empty (Set Context!13360)))))

(assert (= (and d!2214510 res!2892150) b!7080215))

(assert (= (and d!2214510 c!1321402) b!7080218))

(assert (= (and d!2214510 (not c!1321402)) b!7080216))

(assert (= (and b!7080216 c!1321401) b!7080217))

(assert (= (and b!7080216 (not c!1321401)) b!7080219))

(assert (= (or b!7080218 b!7080217) bm!643531))

(declare-fun m!7810740 () Bool)

(assert (=> b!7080215 m!7810740))

(declare-fun m!7810742 () Bool)

(assert (=> bm!643531 m!7810742))

(declare-fun m!7810744 () Bool)

(assert (=> b!7080218 m!7810744))

(assert (=> b!7080081 d!2214510))

(declare-fun bs!1881997 () Bool)

(declare-fun d!2214512 () Bool)

(assert (= bs!1881997 (and d!2214512 b!7080081)))

(declare-fun lambda!427632 () Int)

(assert (=> bs!1881997 (= lambda!427632 lambda!427591)))

(assert (=> d!2214512 true))

(assert (=> d!2214512 (= (derivationStepZipper!3134 lt!2551763 (h!74902 s!7408)) (flatMap!2610 lt!2551763 lambda!427632))))

(declare-fun bs!1881998 () Bool)

(assert (= bs!1881998 d!2214512))

(declare-fun m!7810746 () Bool)

(assert (=> bs!1881998 m!7810746))

(assert (=> b!7080081 d!2214512))

(declare-fun d!2214514 () Bool)

(declare-fun choose!54453 ((Set Context!13360) Int) (Set Context!13360))

(assert (=> d!2214514 (= (flatMap!2610 lt!2551763 lambda!427591) (choose!54453 lt!2551763 lambda!427591))))

(declare-fun bs!1881999 () Bool)

(assert (= bs!1881999 d!2214514))

(declare-fun m!7810748 () Bool)

(assert (=> bs!1881999 m!7810748))

(assert (=> b!7080081 d!2214514))

(assert (=> b!7080081 d!2214504))

(declare-fun bs!1882000 () Bool)

(declare-fun d!2214516 () Bool)

(assert (= bs!1882000 (and d!2214516 b!7080072)))

(declare-fun lambda!427635 () Int)

(assert (=> bs!1882000 (= lambda!427635 lambda!427588)))

(declare-fun bs!1882001 () Bool)

(assert (= bs!1882001 (and d!2214516 b!7080090)))

(assert (=> bs!1882001 (= (= s!7408 lt!2551777) (= lambda!427635 lambda!427592))))

(assert (=> d!2214516 true))

(assert (=> d!2214516 (exists!3763 lt!2551762 lambda!427635)))

(declare-fun lt!2551904 () Unit!162079)

(declare-fun choose!54454 (List!68580 List!68578) Unit!162079)

(assert (=> d!2214516 (= lt!2551904 (choose!54454 lt!2551762 s!7408))))

(assert (=> d!2214516 (matchZipper!3224 (content!13868 lt!2551762) s!7408)))

(assert (=> d!2214516 (= (lemmaZipperMatchesExistsMatchingContext!605 lt!2551762 s!7408) lt!2551904)))

(declare-fun bs!1882002 () Bool)

(assert (= bs!1882002 d!2214516))

(declare-fun m!7810750 () Bool)

(assert (=> bs!1882002 m!7810750))

(declare-fun m!7810752 () Bool)

(assert (=> bs!1882002 m!7810752))

(declare-fun m!7810754 () Bool)

(assert (=> bs!1882002 m!7810754))

(assert (=> bs!1882002 m!7810754))

(declare-fun m!7810756 () Bool)

(assert (=> bs!1882002 m!7810756))

(assert (=> b!7080072 d!2214516))

(declare-fun d!2214518 () Bool)

(declare-fun c!1321407 () Bool)

(assert (=> d!2214518 (= c!1321407 (isEmpty!39967 s!7408))))

(declare-fun e!4256586 () Bool)

(assert (=> d!2214518 (= (matchZipper!3224 lt!2551751 s!7408) e!4256586)))

(declare-fun b!7080222 () Bool)

(assert (=> b!7080222 (= e!4256586 (nullableZipper!2725 lt!2551751))))

(declare-fun b!7080223 () Bool)

(assert (=> b!7080223 (= e!4256586 (matchZipper!3224 (derivationStepZipper!3134 lt!2551751 (head!14434 s!7408)) (tail!13895 s!7408)))))

(assert (= (and d!2214518 c!1321407) b!7080222))

(assert (= (and d!2214518 (not c!1321407)) b!7080223))

(assert (=> d!2214518 m!7810690))

(declare-fun m!7810758 () Bool)

(assert (=> b!7080222 m!7810758))

(assert (=> b!7080223 m!7810694))

(assert (=> b!7080223 m!7810694))

(declare-fun m!7810760 () Bool)

(assert (=> b!7080223 m!7810760))

(assert (=> b!7080223 m!7810698))

(assert (=> b!7080223 m!7810760))

(assert (=> b!7080223 m!7810698))

(declare-fun m!7810762 () Bool)

(assert (=> b!7080223 m!7810762))

(assert (=> b!7080072 d!2214518))

(declare-fun d!2214520 () Bool)

(declare-fun e!4256589 () Bool)

(assert (=> d!2214520 e!4256589))

(declare-fun res!2892153 () Bool)

(assert (=> d!2214520 (=> (not res!2892153) (not e!4256589))))

(declare-fun lt!2551907 () Context!13360)

(declare-fun dynLambda!27900 (Int Context!13360) Bool)

(assert (=> d!2214520 (= res!2892153 (dynLambda!27900 lambda!427588 lt!2551907))))

(declare-fun getWitness!1812 (List!68580 Int) Context!13360)

(assert (=> d!2214520 (= lt!2551907 (getWitness!1812 (toList!11025 lt!2551770) lambda!427588))))

(assert (=> d!2214520 (exists!3764 lt!2551770 lambda!427588)))

(assert (=> d!2214520 (= (getWitness!1810 lt!2551770 lambda!427588) lt!2551907)))

(declare-fun b!7080226 () Bool)

(assert (=> b!7080226 (= e!4256589 (set.member lt!2551907 lt!2551770))))

(assert (= (and d!2214520 res!2892153) b!7080226))

(declare-fun b_lambda!270509 () Bool)

(assert (=> (not b_lambda!270509) (not d!2214520)))

(declare-fun m!7810764 () Bool)

(assert (=> d!2214520 m!7810764))

(assert (=> d!2214520 m!7810448))

(assert (=> d!2214520 m!7810448))

(declare-fun m!7810766 () Bool)

(assert (=> d!2214520 m!7810766))

(declare-fun m!7810768 () Bool)

(assert (=> d!2214520 m!7810768))

(declare-fun m!7810770 () Bool)

(assert (=> b!7080226 m!7810770))

(assert (=> b!7080072 d!2214520))

(declare-fun d!2214522 () Bool)

(declare-fun e!4256592 () Bool)

(assert (=> d!2214522 e!4256592))

(declare-fun res!2892156 () Bool)

(assert (=> d!2214522 (=> (not res!2892156) (not e!4256592))))

(declare-fun lt!2551910 () List!68580)

(declare-fun noDuplicate!2753 (List!68580) Bool)

(assert (=> d!2214522 (= res!2892156 (noDuplicate!2753 lt!2551910))))

(declare-fun choose!54455 ((Set Context!13360)) List!68580)

(assert (=> d!2214522 (= lt!2551910 (choose!54455 lt!2551770))))

(assert (=> d!2214522 (= (toList!11025 lt!2551770) lt!2551910)))

(declare-fun b!7080229 () Bool)

(assert (=> b!7080229 (= e!4256592 (= (content!13868 lt!2551910) lt!2551770))))

(assert (= (and d!2214522 res!2892156) b!7080229))

(declare-fun m!7810772 () Bool)

(assert (=> d!2214522 m!7810772))

(declare-fun m!7810774 () Bool)

(assert (=> d!2214522 m!7810774))

(declare-fun m!7810776 () Bool)

(assert (=> b!7080229 m!7810776))

(assert (=> b!7080072 d!2214522))

(declare-fun bs!1882003 () Bool)

(declare-fun d!2214524 () Bool)

(assert (= bs!1882003 (and d!2214524 b!7080072)))

(declare-fun lambda!427638 () Int)

(assert (=> bs!1882003 (not (= lambda!427638 lambda!427588))))

(declare-fun bs!1882004 () Bool)

(assert (= bs!1882004 (and d!2214524 b!7080090)))

(assert (=> bs!1882004 (not (= lambda!427638 lambda!427592))))

(declare-fun bs!1882005 () Bool)

(assert (= bs!1882005 (and d!2214524 d!2214516)))

(assert (=> bs!1882005 (not (= lambda!427638 lambda!427635))))

(assert (=> d!2214524 true))

(declare-fun order!28463 () Int)

(declare-fun dynLambda!27901 (Int Int) Int)

(assert (=> d!2214524 (< (dynLambda!27901 order!28463 lambda!427588) (dynLambda!27901 order!28463 lambda!427638))))

(declare-fun forall!16648 (List!68580 Int) Bool)

(assert (=> d!2214524 (= (exists!3763 lt!2551762 lambda!427588) (not (forall!16648 lt!2551762 lambda!427638)))))

(declare-fun bs!1882006 () Bool)

(assert (= bs!1882006 d!2214524))

(declare-fun m!7810778 () Bool)

(assert (=> bs!1882006 m!7810778))

(assert (=> b!7080072 d!2214524))

(declare-fun b!7080240 () Bool)

(declare-fun e!4256601 () Bool)

(declare-fun e!4256600 () Bool)

(assert (=> b!7080240 (= e!4256601 e!4256600)))

(declare-fun res!2892167 () Bool)

(assert (=> b!7080240 (=> (not res!2892167) (not e!4256600))))

(assert (=> b!7080240 (= res!2892167 (not (is-Nil!68454 lt!2551777)))))

(declare-fun d!2214528 () Bool)

(declare-fun e!4256599 () Bool)

(assert (=> d!2214528 e!4256599))

(declare-fun res!2892166 () Bool)

(assert (=> d!2214528 (=> res!2892166 e!4256599)))

(declare-fun lt!2551913 () Bool)

(assert (=> d!2214528 (= res!2892166 (not lt!2551913))))

(assert (=> d!2214528 (= lt!2551913 e!4256601)))

(declare-fun res!2892165 () Bool)

(assert (=> d!2214528 (=> res!2892165 e!4256601)))

(assert (=> d!2214528 (= res!2892165 (is-Nil!68454 Nil!68454))))

(assert (=> d!2214528 (= (isPrefix!5865 Nil!68454 lt!2551777) lt!2551913)))

(declare-fun b!7080243 () Bool)

(assert (=> b!7080243 (= e!4256599 (>= (size!41256 lt!2551777) (size!41256 Nil!68454)))))

(declare-fun b!7080242 () Bool)

(assert (=> b!7080242 (= e!4256600 (isPrefix!5865 (tail!13895 Nil!68454) (tail!13895 lt!2551777)))))

(declare-fun b!7080241 () Bool)

(declare-fun res!2892168 () Bool)

(assert (=> b!7080241 (=> (not res!2892168) (not e!4256600))))

(assert (=> b!7080241 (= res!2892168 (= (head!14434 Nil!68454) (head!14434 lt!2551777)))))

(assert (= (and d!2214528 (not res!2892165)) b!7080240))

(assert (= (and b!7080240 res!2892167) b!7080241))

(assert (= (and b!7080241 res!2892168) b!7080242))

(assert (= (and d!2214528 (not res!2892166)) b!7080243))

(assert (=> b!7080243 m!7810678))

(declare-fun m!7810782 () Bool)

(assert (=> b!7080243 m!7810782))

(declare-fun m!7810784 () Bool)

(assert (=> b!7080242 m!7810784))

(declare-fun m!7810786 () Bool)

(assert (=> b!7080242 m!7810786))

(assert (=> b!7080242 m!7810784))

(assert (=> b!7080242 m!7810786))

(declare-fun m!7810788 () Bool)

(assert (=> b!7080242 m!7810788))

(declare-fun m!7810790 () Bool)

(assert (=> b!7080241 m!7810790))

(declare-fun m!7810792 () Bool)

(assert (=> b!7080241 m!7810792))

(assert (=> b!7080085 d!2214528))

(declare-fun b!7080278 () Bool)

(declare-fun c!1321420 () Bool)

(assert (=> b!7080278 (= c!1321420 (is-Star!17684 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun e!4256628 () (Set Context!13360))

(declare-fun e!4256623 () (Set Context!13360))

(assert (=> b!7080278 (= e!4256628 e!4256623)))

(declare-fun bm!643544 () Bool)

(declare-fun call!643554 () (Set Context!13360))

(declare-fun call!643550 () (Set Context!13360))

(assert (=> bm!643544 (= call!643554 call!643550)))

(declare-fun b!7080279 () Bool)

(declare-fun e!4256626 () Bool)

(assert (=> b!7080279 (= e!4256626 (nullable!7367 (regOne!35880 (h!74903 (exprs!7180 lt!2551765)))))))

(declare-fun b!7080280 () Bool)

(declare-fun e!4256625 () (Set Context!13360))

(assert (=> b!7080280 (= e!4256625 (set.insert lt!2551775 (as set.empty (Set Context!13360))))))

(declare-fun b!7080281 () Bool)

(declare-fun e!4256627 () (Set Context!13360))

(assert (=> b!7080281 (= e!4256627 e!4256628)))

(declare-fun c!1321421 () Bool)

(assert (=> b!7080281 (= c!1321421 (is-Concat!26529 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun bm!643545 () Bool)

(declare-fun call!643549 () List!68579)

(declare-fun call!643553 () List!68579)

(assert (=> bm!643545 (= call!643549 call!643553)))

(declare-fun b!7080282 () Bool)

(declare-fun c!1321422 () Bool)

(assert (=> b!7080282 (= c!1321422 e!4256626)))

(declare-fun res!2892183 () Bool)

(assert (=> b!7080282 (=> (not res!2892183) (not e!4256626))))

(assert (=> b!7080282 (= res!2892183 (is-Concat!26529 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun e!4256624 () (Set Context!13360))

(assert (=> b!7080282 (= e!4256624 e!4256627)))

(declare-fun call!643552 () (Set Context!13360))

(declare-fun c!1321419 () Bool)

(declare-fun bm!643546 () Bool)

(assert (=> bm!643546 (= call!643552 (derivationStepZipperDown!2318 (ite c!1321419 (regTwo!35881 (h!74903 (exprs!7180 lt!2551765))) (ite c!1321422 (regTwo!35880 (h!74903 (exprs!7180 lt!2551765))) (ite c!1321421 (regOne!35880 (h!74903 (exprs!7180 lt!2551765))) (reg!18013 (h!74903 (exprs!7180 lt!2551765)))))) (ite (or c!1321419 c!1321422) lt!2551775 (Context!13361 call!643549)) (h!74902 s!7408)))))

(declare-fun d!2214532 () Bool)

(declare-fun c!1321418 () Bool)

(assert (=> d!2214532 (= c!1321418 (and (is-ElementMatch!17684 (h!74903 (exprs!7180 lt!2551765))) (= (c!1321373 (h!74903 (exprs!7180 lt!2551765))) (h!74902 s!7408))))))

(assert (=> d!2214532 (= (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) lt!2551775 (h!74902 s!7408)) e!4256625)))

(declare-fun b!7080283 () Bool)

(assert (=> b!7080283 (= e!4256623 (as set.empty (Set Context!13360)))))

(declare-fun b!7080284 () Bool)

(assert (=> b!7080284 (= e!4256623 call!643554)))

(declare-fun bm!643547 () Bool)

(declare-fun call!643551 () (Set Context!13360))

(assert (=> bm!643547 (= call!643551 (derivationStepZipperDown!2318 (ite c!1321419 (regOne!35881 (h!74903 (exprs!7180 lt!2551765))) (regOne!35880 (h!74903 (exprs!7180 lt!2551765)))) (ite c!1321419 lt!2551775 (Context!13361 call!643553)) (h!74902 s!7408)))))

(declare-fun bm!643548 () Bool)

(assert (=> bm!643548 (= call!643550 call!643552)))

(declare-fun b!7080285 () Bool)

(assert (=> b!7080285 (= e!4256627 (set.union call!643551 call!643550))))

(declare-fun bm!643549 () Bool)

(declare-fun $colon$colon!2681 (List!68579 Regex!17684) List!68579)

(assert (=> bm!643549 (= call!643553 ($colon$colon!2681 (exprs!7180 lt!2551775) (ite (or c!1321422 c!1321421) (regTwo!35880 (h!74903 (exprs!7180 lt!2551765))) (h!74903 (exprs!7180 lt!2551765)))))))

(declare-fun b!7080286 () Bool)

(assert (=> b!7080286 (= e!4256625 e!4256624)))

(assert (=> b!7080286 (= c!1321419 (is-Union!17684 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun b!7080287 () Bool)

(assert (=> b!7080287 (= e!4256628 call!643554)))

(declare-fun b!7080288 () Bool)

(assert (=> b!7080288 (= e!4256624 (set.union call!643551 call!643552))))

(assert (= (and d!2214532 c!1321418) b!7080280))

(assert (= (and d!2214532 (not c!1321418)) b!7080286))

(assert (= (and b!7080286 c!1321419) b!7080288))

(assert (= (and b!7080286 (not c!1321419)) b!7080282))

(assert (= (and b!7080282 res!2892183) b!7080279))

(assert (= (and b!7080282 c!1321422) b!7080285))

(assert (= (and b!7080282 (not c!1321422)) b!7080281))

(assert (= (and b!7080281 c!1321421) b!7080287))

(assert (= (and b!7080281 (not c!1321421)) b!7080278))

(assert (= (and b!7080278 c!1321420) b!7080284))

(assert (= (and b!7080278 (not c!1321420)) b!7080283))

(assert (= (or b!7080287 b!7080284) bm!643545))

(assert (= (or b!7080287 b!7080284) bm!643544))

(assert (= (or b!7080285 bm!643544) bm!643548))

(assert (= (or b!7080285 bm!643545) bm!643549))

(assert (= (or b!7080288 b!7080285) bm!643547))

(assert (= (or b!7080288 bm!643548) bm!643546))

(declare-fun m!7810808 () Bool)

(assert (=> bm!643549 m!7810808))

(declare-fun m!7810810 () Bool)

(assert (=> b!7080279 m!7810810))

(declare-fun m!7810812 () Bool)

(assert (=> bm!643546 m!7810812))

(declare-fun m!7810814 () Bool)

(assert (=> b!7080280 m!7810814))

(declare-fun m!7810816 () Bool)

(assert (=> bm!643547 m!7810816))

(assert (=> b!7080086 d!2214532))

(declare-fun d!2214536 () Bool)

(assert (=> d!2214536 (= (get!23988 lt!2551780) (v!53288 lt!2551780))))

(assert (=> b!7080086 d!2214536))

(declare-fun bs!1882009 () Bool)

(declare-fun d!2214538 () Bool)

(assert (= bs!1882009 (and d!2214538 b!7080091)))

(declare-fun lambda!427642 () Int)

(assert (=> bs!1882009 (= lambda!427642 lambda!427589)))

(declare-fun bs!1882010 () Bool)

(assert (= bs!1882010 (and d!2214538 d!2214498)))

(assert (=> bs!1882010 (= lambda!427642 lambda!427626)))

(assert (=> d!2214538 true))

(assert (=> d!2214538 (= (appendTo!805 lt!2551764 ct2!306) (map!16036 lt!2551764 lambda!427642))))

(declare-fun bs!1882011 () Bool)

(assert (= bs!1882011 d!2214538))

(declare-fun m!7810818 () Bool)

(assert (=> bs!1882011 m!7810818))

(assert (=> b!7080086 d!2214538))

(declare-fun d!2214540 () Bool)

(declare-fun c!1321423 () Bool)

(assert (=> d!2214540 (= c!1321423 (isEmpty!39967 (_1!37466 lt!2551772)))))

(declare-fun e!4256629 () Bool)

(assert (=> d!2214540 (= (matchZipper!3224 lt!2551764 (_1!37466 lt!2551772)) e!4256629)))

(declare-fun b!7080289 () Bool)

(assert (=> b!7080289 (= e!4256629 (nullableZipper!2725 lt!2551764))))

(declare-fun b!7080290 () Bool)

(assert (=> b!7080290 (= e!4256629 (matchZipper!3224 (derivationStepZipper!3134 lt!2551764 (head!14434 (_1!37466 lt!2551772))) (tail!13895 (_1!37466 lt!2551772))))))

(assert (= (and d!2214540 c!1321423) b!7080289))

(assert (= (and d!2214540 (not c!1321423)) b!7080290))

(declare-fun m!7810820 () Bool)

(assert (=> d!2214540 m!7810820))

(declare-fun m!7810822 () Bool)

(assert (=> b!7080289 m!7810822))

(declare-fun m!7810824 () Bool)

(assert (=> b!7080290 m!7810824))

(assert (=> b!7080290 m!7810824))

(declare-fun m!7810826 () Bool)

(assert (=> b!7080290 m!7810826))

(declare-fun m!7810828 () Bool)

(assert (=> b!7080290 m!7810828))

(assert (=> b!7080290 m!7810826))

(assert (=> b!7080290 m!7810828))

(declare-fun m!7810830 () Bool)

(assert (=> b!7080290 m!7810830))

(assert (=> b!7080086 d!2214540))

(declare-fun bs!1882013 () Bool)

(declare-fun d!2214542 () Bool)

(assert (= bs!1882013 (and d!2214542 b!7080091)))

(declare-fun lambda!427645 () Int)

(assert (=> bs!1882013 (= lambda!427645 lambda!427590)))

(declare-fun bs!1882014 () Bool)

(assert (= bs!1882014 (and d!2214542 d!2214500)))

(assert (=> bs!1882014 (= lambda!427645 lambda!427629)))

(assert (=> d!2214542 (= (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) (Context!13361 (++!15844 (exprs!7180 lt!2551775) (exprs!7180 ct2!306))) (h!74902 s!7408)) (appendTo!805 (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) lt!2551775 (h!74902 s!7408)) ct2!306))))

(declare-fun lt!2551925 () Unit!162079)

(assert (=> d!2214542 (= lt!2551925 (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551775) (exprs!7180 ct2!306) lambda!427645))))

(declare-fun lt!2551924 () Unit!162079)

(declare-fun choose!54456 (Context!13360 Regex!17684 C!35638 Context!13360) Unit!162079)

(assert (=> d!2214542 (= lt!2551924 (choose!54456 lt!2551775 (h!74903 (exprs!7180 lt!2551765)) (h!74902 s!7408) ct2!306))))

(declare-fun validRegex!8993 (Regex!17684) Bool)

(assert (=> d!2214542 (validRegex!8993 (h!74903 (exprs!7180 lt!2551765)))))

(assert (=> d!2214542 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!151 lt!2551775 (h!74903 (exprs!7180 lt!2551765)) (h!74902 s!7408) ct2!306) lt!2551924)))

(declare-fun bs!1882015 () Bool)

(assert (= bs!1882015 d!2214542))

(assert (=> bs!1882015 m!7810474))

(declare-fun m!7810838 () Bool)

(assert (=> bs!1882015 m!7810838))

(assert (=> bs!1882015 m!7810474))

(declare-fun m!7810840 () Bool)

(assert (=> bs!1882015 m!7810840))

(declare-fun m!7810842 () Bool)

(assert (=> bs!1882015 m!7810842))

(declare-fun m!7810844 () Bool)

(assert (=> bs!1882015 m!7810844))

(declare-fun m!7810846 () Bool)

(assert (=> bs!1882015 m!7810846))

(declare-fun m!7810848 () Bool)

(assert (=> bs!1882015 m!7810848))

(assert (=> b!7080086 d!2214542))

(declare-fun d!2214546 () Bool)

(assert (=> d!2214546 (isDefined!13696 (findConcatSeparationZippers!511 lt!2551764 (set.insert ct2!306 (as set.empty (Set Context!13360))) Nil!68454 (t!382363 s!7408) (t!382363 s!7408)))))

(declare-fun lt!2551928 () Unit!162079)

(declare-fun choose!54457 ((Set Context!13360) Context!13360 List!68578) Unit!162079)

(assert (=> d!2214546 (= lt!2551928 (choose!54457 lt!2551764 ct2!306 (t!382363 s!7408)))))

(assert (=> d!2214546 (matchZipper!3224 (appendTo!805 lt!2551764 ct2!306) (t!382363 s!7408))))

(assert (=> d!2214546 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!499 lt!2551764 ct2!306 (t!382363 s!7408)) lt!2551928)))

(declare-fun bs!1882016 () Bool)

(assert (= bs!1882016 d!2214546))

(assert (=> bs!1882016 m!7810478))

(declare-fun m!7810850 () Bool)

(assert (=> bs!1882016 m!7810850))

(assert (=> bs!1882016 m!7810478))

(assert (=> bs!1882016 m!7810468))

(declare-fun m!7810852 () Bool)

(assert (=> bs!1882016 m!7810852))

(assert (=> bs!1882016 m!7810468))

(declare-fun m!7810854 () Bool)

(assert (=> bs!1882016 m!7810854))

(assert (=> bs!1882016 m!7810850))

(declare-fun m!7810856 () Bool)

(assert (=> bs!1882016 m!7810856))

(assert (=> b!7080086 d!2214546))

(declare-fun d!2214548 () Bool)

(declare-fun isEmpty!39968 (Option!16995) Bool)

(assert (=> d!2214548 (= (isDefined!13696 lt!2551780) (not (isEmpty!39968 lt!2551780)))))

(declare-fun bs!1882017 () Bool)

(assert (= bs!1882017 d!2214548))

(declare-fun m!7810858 () Bool)

(assert (=> bs!1882017 m!7810858))

(assert (=> b!7080086 d!2214548))

(declare-fun b!7080315 () Bool)

(declare-fun res!2892195 () Bool)

(declare-fun e!4256646 () Bool)

(assert (=> b!7080315 (=> (not res!2892195) (not e!4256646))))

(declare-fun lt!2551941 () Option!16995)

(assert (=> b!7080315 (= res!2892195 (matchZipper!3224 lt!2551764 (_1!37466 (get!23988 lt!2551941))))))

(declare-fun b!7080316 () Bool)

(assert (=> b!7080316 (= e!4256646 (= (++!15843 (_1!37466 (get!23988 lt!2551941)) (_2!37466 (get!23988 lt!2551941))) (t!382363 s!7408)))))

(declare-fun b!7080317 () Bool)

(declare-fun e!4256644 () Option!16995)

(assert (=> b!7080317 (= e!4256644 None!16994)))

(declare-fun b!7080318 () Bool)

(declare-fun e!4256643 () Option!16995)

(assert (=> b!7080318 (= e!4256643 (Some!16994 (tuple2!68327 Nil!68454 (t!382363 s!7408))))))

(declare-fun b!7080319 () Bool)

(declare-fun e!4256645 () Bool)

(assert (=> b!7080319 (= e!4256645 (matchZipper!3224 lt!2551774 (t!382363 s!7408)))))

(declare-fun b!7080320 () Bool)

(assert (=> b!7080320 (= e!4256643 e!4256644)))

(declare-fun c!1321432 () Bool)

(assert (=> b!7080320 (= c!1321432 (is-Nil!68454 (t!382363 s!7408)))))

(declare-fun b!7080321 () Bool)

(declare-fun res!2892196 () Bool)

(assert (=> b!7080321 (=> (not res!2892196) (not e!4256646))))

(assert (=> b!7080321 (= res!2892196 (matchZipper!3224 lt!2551774 (_2!37466 (get!23988 lt!2551941))))))

(declare-fun d!2214550 () Bool)

(declare-fun e!4256647 () Bool)

(assert (=> d!2214550 e!4256647))

(declare-fun res!2892198 () Bool)

(assert (=> d!2214550 (=> res!2892198 e!4256647)))

(assert (=> d!2214550 (= res!2892198 e!4256646)))

(declare-fun res!2892197 () Bool)

(assert (=> d!2214550 (=> (not res!2892197) (not e!4256646))))

(assert (=> d!2214550 (= res!2892197 (isDefined!13696 lt!2551941))))

(assert (=> d!2214550 (= lt!2551941 e!4256643)))

(declare-fun c!1321433 () Bool)

(assert (=> d!2214550 (= c!1321433 e!4256645)))

(declare-fun res!2892194 () Bool)

(assert (=> d!2214550 (=> (not res!2892194) (not e!4256645))))

(assert (=> d!2214550 (= res!2892194 (matchZipper!3224 lt!2551764 Nil!68454))))

(assert (=> d!2214550 (= (++!15843 Nil!68454 (t!382363 s!7408)) (t!382363 s!7408))))

(assert (=> d!2214550 (= (findConcatSeparationZippers!511 lt!2551764 lt!2551774 Nil!68454 (t!382363 s!7408) (t!382363 s!7408)) lt!2551941)))

(declare-fun b!7080322 () Bool)

(assert (=> b!7080322 (= e!4256647 (not (isDefined!13696 lt!2551941)))))

(declare-fun b!7080323 () Bool)

(declare-fun lt!2551940 () Unit!162079)

(declare-fun lt!2551939 () Unit!162079)

(assert (=> b!7080323 (= lt!2551940 lt!2551939)))

(assert (=> b!7080323 (= (++!15843 (++!15843 Nil!68454 (Cons!68454 (h!74902 (t!382363 s!7408)) Nil!68454)) (t!382363 (t!382363 s!7408))) (t!382363 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2994 (List!68578 C!35638 List!68578 List!68578) Unit!162079)

(assert (=> b!7080323 (= lt!2551939 (lemmaMoveElementToOtherListKeepsConcatEq!2994 Nil!68454 (h!74902 (t!382363 s!7408)) (t!382363 (t!382363 s!7408)) (t!382363 s!7408)))))

(assert (=> b!7080323 (= e!4256644 (findConcatSeparationZippers!511 lt!2551764 lt!2551774 (++!15843 Nil!68454 (Cons!68454 (h!74902 (t!382363 s!7408)) Nil!68454)) (t!382363 (t!382363 s!7408)) (t!382363 s!7408)))))

(assert (= (and d!2214550 res!2892194) b!7080319))

(assert (= (and d!2214550 c!1321433) b!7080318))

(assert (= (and d!2214550 (not c!1321433)) b!7080320))

(assert (= (and b!7080320 c!1321432) b!7080317))

(assert (= (and b!7080320 (not c!1321432)) b!7080323))

(assert (= (and d!2214550 res!2892197) b!7080315))

(assert (= (and b!7080315 res!2892195) b!7080321))

(assert (= (and b!7080321 res!2892196) b!7080316))

(assert (= (and d!2214550 (not res!2892198)) b!7080322))

(declare-fun m!7810888 () Bool)

(assert (=> b!7080323 m!7810888))

(assert (=> b!7080323 m!7810888))

(declare-fun m!7810890 () Bool)

(assert (=> b!7080323 m!7810890))

(declare-fun m!7810892 () Bool)

(assert (=> b!7080323 m!7810892))

(assert (=> b!7080323 m!7810888))

(declare-fun m!7810894 () Bool)

(assert (=> b!7080323 m!7810894))

(declare-fun m!7810896 () Bool)

(assert (=> b!7080322 m!7810896))

(declare-fun m!7810898 () Bool)

(assert (=> b!7080319 m!7810898))

(declare-fun m!7810900 () Bool)

(assert (=> b!7080315 m!7810900))

(declare-fun m!7810902 () Bool)

(assert (=> b!7080315 m!7810902))

(assert (=> b!7080316 m!7810900))

(declare-fun m!7810904 () Bool)

(assert (=> b!7080316 m!7810904))

(assert (=> d!2214550 m!7810896))

(declare-fun m!7810906 () Bool)

(assert (=> d!2214550 m!7810906))

(declare-fun m!7810908 () Bool)

(assert (=> d!2214550 m!7810908))

(assert (=> b!7080321 m!7810900))

(declare-fun m!7810910 () Bool)

(assert (=> b!7080321 m!7810910))

(assert (=> b!7080086 d!2214550))

(declare-fun d!2214560 () Bool)

(assert (=> d!2214560 (forall!16647 (++!15844 lt!2551760 (exprs!7180 ct2!306)) lambda!427590)))

(declare-fun lt!2551942 () Unit!162079)

(assert (=> d!2214560 (= lt!2551942 (choose!54450 lt!2551760 (exprs!7180 ct2!306) lambda!427590))))

(assert (=> d!2214560 (forall!16647 lt!2551760 lambda!427590)))

(assert (=> d!2214560 (= (lemmaConcatPreservesForall!995 lt!2551760 (exprs!7180 ct2!306) lambda!427590) lt!2551942)))

(declare-fun bs!1882021 () Bool)

(assert (= bs!1882021 d!2214560))

(assert (=> bs!1882021 m!7810484))

(assert (=> bs!1882021 m!7810484))

(declare-fun m!7810912 () Bool)

(assert (=> bs!1882021 m!7810912))

(declare-fun m!7810914 () Bool)

(assert (=> bs!1882021 m!7810914))

(declare-fun m!7810916 () Bool)

(assert (=> bs!1882021 m!7810916))

(assert (=> b!7080086 d!2214560))

(declare-fun b!7080326 () Bool)

(declare-fun res!2892199 () Bool)

(declare-fun e!4256648 () Bool)

(assert (=> b!7080326 (=> (not res!2892199) (not e!4256648))))

(declare-fun lt!2551943 () List!68578)

(assert (=> b!7080326 (= res!2892199 (= (size!41256 lt!2551943) (+ (size!41256 (_1!37466 lt!2551772)) (size!41256 (_2!37466 lt!2551772)))))))

(declare-fun b!7080325 () Bool)

(declare-fun e!4256649 () List!68578)

(assert (=> b!7080325 (= e!4256649 (Cons!68454 (h!74902 (_1!37466 lt!2551772)) (++!15843 (t!382363 (_1!37466 lt!2551772)) (_2!37466 lt!2551772))))))

(declare-fun d!2214562 () Bool)

(assert (=> d!2214562 e!4256648))

(declare-fun res!2892200 () Bool)

(assert (=> d!2214562 (=> (not res!2892200) (not e!4256648))))

(assert (=> d!2214562 (= res!2892200 (= (content!13870 lt!2551943) (set.union (content!13870 (_1!37466 lt!2551772)) (content!13870 (_2!37466 lt!2551772)))))))

(assert (=> d!2214562 (= lt!2551943 e!4256649)))

(declare-fun c!1321435 () Bool)

(assert (=> d!2214562 (= c!1321435 (is-Nil!68454 (_1!37466 lt!2551772)))))

(assert (=> d!2214562 (= (++!15843 (_1!37466 lt!2551772) (_2!37466 lt!2551772)) lt!2551943)))

(declare-fun b!7080324 () Bool)

(assert (=> b!7080324 (= e!4256649 (_2!37466 lt!2551772))))

(declare-fun b!7080327 () Bool)

(assert (=> b!7080327 (= e!4256648 (or (not (= (_2!37466 lt!2551772) Nil!68454)) (= lt!2551943 (_1!37466 lt!2551772))))))

(assert (= (and d!2214562 c!1321435) b!7080324))

(assert (= (and d!2214562 (not c!1321435)) b!7080325))

(assert (= (and d!2214562 res!2892200) b!7080326))

(assert (= (and b!7080326 res!2892199) b!7080327))

(declare-fun m!7810918 () Bool)

(assert (=> b!7080326 m!7810918))

(declare-fun m!7810920 () Bool)

(assert (=> b!7080326 m!7810920))

(assert (=> b!7080326 m!7810680))

(declare-fun m!7810922 () Bool)

(assert (=> b!7080325 m!7810922))

(declare-fun m!7810924 () Bool)

(assert (=> d!2214562 m!7810924))

(declare-fun m!7810926 () Bool)

(assert (=> d!2214562 m!7810926))

(assert (=> d!2214562 m!7810688))

(assert (=> b!7080076 d!2214562))

(declare-fun d!2214564 () Bool)

(declare-fun c!1321436 () Bool)

(assert (=> d!2214564 (= c!1321436 (isEmpty!39967 lt!2551777))))

(declare-fun e!4256650 () Bool)

(assert (=> d!2214564 (= (matchZipper!3224 lt!2551752 lt!2551777) e!4256650)))

(declare-fun b!7080328 () Bool)

(assert (=> b!7080328 (= e!4256650 (nullableZipper!2725 lt!2551752))))

(declare-fun b!7080329 () Bool)

(assert (=> b!7080329 (= e!4256650 (matchZipper!3224 (derivationStepZipper!3134 lt!2551752 (head!14434 lt!2551777)) (tail!13895 lt!2551777)))))

(assert (= (and d!2214564 c!1321436) b!7080328))

(assert (= (and d!2214564 (not c!1321436)) b!7080329))

(declare-fun m!7810928 () Bool)

(assert (=> d!2214564 m!7810928))

(declare-fun m!7810930 () Bool)

(assert (=> b!7080328 m!7810930))

(assert (=> b!7080329 m!7810792))

(assert (=> b!7080329 m!7810792))

(declare-fun m!7810932 () Bool)

(assert (=> b!7080329 m!7810932))

(assert (=> b!7080329 m!7810786))

(assert (=> b!7080329 m!7810932))

(assert (=> b!7080329 m!7810786))

(declare-fun m!7810934 () Bool)

(assert (=> b!7080329 m!7810934))

(assert (=> b!7080084 d!2214564))

(declare-fun d!2214566 () Bool)

(assert (=> d!2214566 (= (isEmpty!39965 (exprs!7180 lt!2551765)) (is-Nil!68455 (exprs!7180 lt!2551765)))))

(assert (=> b!7080074 d!2214566))

(declare-fun d!2214568 () Bool)

(declare-fun c!1321437 () Bool)

(assert (=> d!2214568 (= c!1321437 (isEmpty!39967 (_2!37466 lt!2551772)))))

(declare-fun e!4256651 () Bool)

(assert (=> d!2214568 (= (matchZipper!3224 lt!2551774 (_2!37466 lt!2551772)) e!4256651)))

(declare-fun b!7080330 () Bool)

(assert (=> b!7080330 (= e!4256651 (nullableZipper!2725 lt!2551774))))

(declare-fun b!7080331 () Bool)

(assert (=> b!7080331 (= e!4256651 (matchZipper!3224 (derivationStepZipper!3134 lt!2551774 (head!14434 (_2!37466 lt!2551772))) (tail!13895 (_2!37466 lt!2551772))))))

(assert (= (and d!2214568 c!1321437) b!7080330))

(assert (= (and d!2214568 (not c!1321437)) b!7080331))

(declare-fun m!7810936 () Bool)

(assert (=> d!2214568 m!7810936))

(declare-fun m!7810938 () Bool)

(assert (=> b!7080330 m!7810938))

(declare-fun m!7810940 () Bool)

(assert (=> b!7080331 m!7810940))

(assert (=> b!7080331 m!7810940))

(declare-fun m!7810942 () Bool)

(assert (=> b!7080331 m!7810942))

(declare-fun m!7810944 () Bool)

(assert (=> b!7080331 m!7810944))

(assert (=> b!7080331 m!7810942))

(assert (=> b!7080331 m!7810944))

(declare-fun m!7810946 () Bool)

(assert (=> b!7080331 m!7810946))

(assert (=> b!7080075 d!2214568))

(declare-fun d!2214570 () Bool)

(declare-fun c!1321438 () Bool)

(assert (=> d!2214570 (= c!1321438 (isEmpty!39967 (t!382363 s!7408)))))

(declare-fun e!4256652 () Bool)

(assert (=> d!2214570 (= (matchZipper!3224 lt!2551783 (t!382363 s!7408)) e!4256652)))

(declare-fun b!7080332 () Bool)

(assert (=> b!7080332 (= e!4256652 (nullableZipper!2725 lt!2551783))))

(declare-fun b!7080333 () Bool)

(assert (=> b!7080333 (= e!4256652 (matchZipper!3224 (derivationStepZipper!3134 lt!2551783 (head!14434 (t!382363 s!7408))) (tail!13895 (t!382363 s!7408))))))

(assert (= (and d!2214570 c!1321438) b!7080332))

(assert (= (and d!2214570 (not c!1321438)) b!7080333))

(declare-fun m!7810948 () Bool)

(assert (=> d!2214570 m!7810948))

(declare-fun m!7810950 () Bool)

(assert (=> b!7080332 m!7810950))

(declare-fun m!7810952 () Bool)

(assert (=> b!7080333 m!7810952))

(assert (=> b!7080333 m!7810952))

(declare-fun m!7810954 () Bool)

(assert (=> b!7080333 m!7810954))

(declare-fun m!7810956 () Bool)

(assert (=> b!7080333 m!7810956))

(assert (=> b!7080333 m!7810954))

(assert (=> b!7080333 m!7810956))

(declare-fun m!7810958 () Bool)

(assert (=> b!7080333 m!7810958))

(assert (=> b!7080088 d!2214570))

(declare-fun b!7080334 () Bool)

(declare-fun c!1321441 () Bool)

(assert (=> b!7080334 (= c!1321441 (is-Star!17684 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun e!4256658 () (Set Context!13360))

(declare-fun e!4256653 () (Set Context!13360))

(assert (=> b!7080334 (= e!4256658 e!4256653)))

(declare-fun bm!643550 () Bool)

(declare-fun call!643560 () (Set Context!13360))

(declare-fun call!643556 () (Set Context!13360))

(assert (=> bm!643550 (= call!643560 call!643556)))

(declare-fun b!7080335 () Bool)

(declare-fun e!4256656 () Bool)

(assert (=> b!7080335 (= e!4256656 (nullable!7367 (regOne!35880 (h!74903 (exprs!7180 lt!2551765)))))))

(declare-fun b!7080336 () Bool)

(declare-fun e!4256655 () (Set Context!13360))

(assert (=> b!7080336 (= e!4256655 (set.insert (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306))) (as set.empty (Set Context!13360))))))

(declare-fun b!7080337 () Bool)

(declare-fun e!4256657 () (Set Context!13360))

(assert (=> b!7080337 (= e!4256657 e!4256658)))

(declare-fun c!1321442 () Bool)

(assert (=> b!7080337 (= c!1321442 (is-Concat!26529 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun bm!643551 () Bool)

(declare-fun call!643555 () List!68579)

(declare-fun call!643559 () List!68579)

(assert (=> bm!643551 (= call!643555 call!643559)))

(declare-fun b!7080338 () Bool)

(declare-fun c!1321443 () Bool)

(assert (=> b!7080338 (= c!1321443 e!4256656)))

(declare-fun res!2892201 () Bool)

(assert (=> b!7080338 (=> (not res!2892201) (not e!4256656))))

(assert (=> b!7080338 (= res!2892201 (is-Concat!26529 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun e!4256654 () (Set Context!13360))

(assert (=> b!7080338 (= e!4256654 e!4256657)))

(declare-fun bm!643552 () Bool)

(declare-fun call!643558 () (Set Context!13360))

(declare-fun c!1321440 () Bool)

(assert (=> bm!643552 (= call!643558 (derivationStepZipperDown!2318 (ite c!1321440 (regTwo!35881 (h!74903 (exprs!7180 lt!2551765))) (ite c!1321443 (regTwo!35880 (h!74903 (exprs!7180 lt!2551765))) (ite c!1321442 (regOne!35880 (h!74903 (exprs!7180 lt!2551765))) (reg!18013 (h!74903 (exprs!7180 lt!2551765)))))) (ite (or c!1321440 c!1321443) (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306))) (Context!13361 call!643555)) (h!74902 s!7408)))))

(declare-fun d!2214572 () Bool)

(declare-fun c!1321439 () Bool)

(assert (=> d!2214572 (= c!1321439 (and (is-ElementMatch!17684 (h!74903 (exprs!7180 lt!2551765))) (= (c!1321373 (h!74903 (exprs!7180 lt!2551765))) (h!74902 s!7408))))))

(assert (=> d!2214572 (= (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306))) (h!74902 s!7408)) e!4256655)))

(declare-fun b!7080339 () Bool)

(assert (=> b!7080339 (= e!4256653 (as set.empty (Set Context!13360)))))

(declare-fun b!7080340 () Bool)

(assert (=> b!7080340 (= e!4256653 call!643560)))

(declare-fun call!643557 () (Set Context!13360))

(declare-fun bm!643553 () Bool)

(assert (=> bm!643553 (= call!643557 (derivationStepZipperDown!2318 (ite c!1321440 (regOne!35881 (h!74903 (exprs!7180 lt!2551765))) (regOne!35880 (h!74903 (exprs!7180 lt!2551765)))) (ite c!1321440 (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306))) (Context!13361 call!643559)) (h!74902 s!7408)))))

(declare-fun bm!643554 () Bool)

(assert (=> bm!643554 (= call!643556 call!643558)))

(declare-fun b!7080341 () Bool)

(assert (=> b!7080341 (= e!4256657 (set.union call!643557 call!643556))))

(declare-fun bm!643555 () Bool)

(assert (=> bm!643555 (= call!643559 ($colon$colon!2681 (exprs!7180 (Context!13361 (++!15844 lt!2551760 (exprs!7180 ct2!306)))) (ite (or c!1321443 c!1321442) (regTwo!35880 (h!74903 (exprs!7180 lt!2551765))) (h!74903 (exprs!7180 lt!2551765)))))))

(declare-fun b!7080342 () Bool)

(assert (=> b!7080342 (= e!4256655 e!4256654)))

(assert (=> b!7080342 (= c!1321440 (is-Union!17684 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun b!7080343 () Bool)

(assert (=> b!7080343 (= e!4256658 call!643560)))

(declare-fun b!7080344 () Bool)

(assert (=> b!7080344 (= e!4256654 (set.union call!643557 call!643558))))

(assert (= (and d!2214572 c!1321439) b!7080336))

(assert (= (and d!2214572 (not c!1321439)) b!7080342))

(assert (= (and b!7080342 c!1321440) b!7080344))

(assert (= (and b!7080342 (not c!1321440)) b!7080338))

(assert (= (and b!7080338 res!2892201) b!7080335))

(assert (= (and b!7080338 c!1321443) b!7080341))

(assert (= (and b!7080338 (not c!1321443)) b!7080337))

(assert (= (and b!7080337 c!1321442) b!7080343))

(assert (= (and b!7080337 (not c!1321442)) b!7080334))

(assert (= (and b!7080334 c!1321441) b!7080340))

(assert (= (and b!7080334 (not c!1321441)) b!7080339))

(assert (= (or b!7080343 b!7080340) bm!643551))

(assert (= (or b!7080343 b!7080340) bm!643550))

(assert (= (or b!7080341 bm!643550) bm!643554))

(assert (= (or b!7080341 bm!643551) bm!643555))

(assert (= (or b!7080344 b!7080341) bm!643553))

(assert (= (or b!7080344 bm!643554) bm!643552))

(declare-fun m!7810960 () Bool)

(assert (=> bm!643555 m!7810960))

(assert (=> b!7080335 m!7810810))

(declare-fun m!7810962 () Bool)

(assert (=> bm!643552 m!7810962))

(declare-fun m!7810964 () Bool)

(assert (=> b!7080336 m!7810964))

(declare-fun m!7810966 () Bool)

(assert (=> bm!643553 m!7810966))

(assert (=> b!7080088 d!2214572))

(declare-fun b!7080345 () Bool)

(declare-fun e!4256660 () List!68579)

(assert (=> b!7080345 (= e!4256660 (exprs!7180 ct2!306))))

(declare-fun b!7080348 () Bool)

(declare-fun e!4256659 () Bool)

(declare-fun lt!2551946 () List!68579)

(assert (=> b!7080348 (= e!4256659 (or (not (= (exprs!7180 ct2!306) Nil!68455)) (= lt!2551946 lt!2551760)))))

(declare-fun b!7080347 () Bool)

(declare-fun res!2892203 () Bool)

(assert (=> b!7080347 (=> (not res!2892203) (not e!4256659))))

(assert (=> b!7080347 (= res!2892203 (= (size!41257 lt!2551946) (+ (size!41257 lt!2551760) (size!41257 (exprs!7180 ct2!306)))))))

(declare-fun b!7080346 () Bool)

(assert (=> b!7080346 (= e!4256660 (Cons!68455 (h!74903 lt!2551760) (++!15844 (t!382364 lt!2551760) (exprs!7180 ct2!306))))))

(declare-fun d!2214574 () Bool)

(assert (=> d!2214574 e!4256659))

(declare-fun res!2892202 () Bool)

(assert (=> d!2214574 (=> (not res!2892202) (not e!4256659))))

(assert (=> d!2214574 (= res!2892202 (= (content!13871 lt!2551946) (set.union (content!13871 lt!2551760) (content!13871 (exprs!7180 ct2!306)))))))

(assert (=> d!2214574 (= lt!2551946 e!4256660)))

(declare-fun c!1321444 () Bool)

(assert (=> d!2214574 (= c!1321444 (is-Nil!68455 lt!2551760))))

(assert (=> d!2214574 (= (++!15844 lt!2551760 (exprs!7180 ct2!306)) lt!2551946)))

(assert (= (and d!2214574 c!1321444) b!7080345))

(assert (= (and d!2214574 (not c!1321444)) b!7080346))

(assert (= (and d!2214574 res!2892202) b!7080347))

(assert (= (and b!7080347 res!2892203) b!7080348))

(declare-fun m!7810968 () Bool)

(assert (=> b!7080347 m!7810968))

(declare-fun m!7810970 () Bool)

(assert (=> b!7080347 m!7810970))

(assert (=> b!7080347 m!7810710))

(declare-fun m!7810972 () Bool)

(assert (=> b!7080346 m!7810972))

(declare-fun m!7810974 () Bool)

(assert (=> d!2214574 m!7810974))

(declare-fun m!7810976 () Bool)

(assert (=> d!2214574 m!7810976))

(assert (=> d!2214574 m!7810718))

(assert (=> b!7080088 d!2214574))

(assert (=> b!7080088 d!2214560))

(declare-fun d!2214576 () Bool)

(assert (=> d!2214576 (= (flatMap!2610 lt!2551752 lambda!427591) (choose!54453 lt!2551752 lambda!427591))))

(declare-fun bs!1882022 () Bool)

(assert (= bs!1882022 d!2214576))

(declare-fun m!7810978 () Bool)

(assert (=> bs!1882022 m!7810978))

(assert (=> b!7080079 d!2214576))

(declare-fun b!7080349 () Bool)

(declare-fun e!4256662 () Bool)

(assert (=> b!7080349 (= e!4256662 (nullable!7367 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun b!7080350 () Bool)

(declare-fun e!4256661 () (Set Context!13360))

(declare-fun e!4256663 () (Set Context!13360))

(assert (=> b!7080350 (= e!4256661 e!4256663)))

(declare-fun c!1321445 () Bool)

(assert (=> b!7080350 (= c!1321445 (is-Cons!68455 (exprs!7180 lt!2551765)))))

(declare-fun bm!643556 () Bool)

(declare-fun call!643561 () (Set Context!13360))

(assert (=> bm!643556 (= call!643561 (derivationStepZipperDown!2318 (h!74903 (exprs!7180 lt!2551765)) (Context!13361 (t!382364 (exprs!7180 lt!2551765))) (h!74902 s!7408)))))

(declare-fun b!7080351 () Bool)

(assert (=> b!7080351 (= e!4256663 call!643561)))

(declare-fun d!2214578 () Bool)

(declare-fun c!1321446 () Bool)

(assert (=> d!2214578 (= c!1321446 e!4256662)))

(declare-fun res!2892204 () Bool)

(assert (=> d!2214578 (=> (not res!2892204) (not e!4256662))))

(assert (=> d!2214578 (= res!2892204 (is-Cons!68455 (exprs!7180 lt!2551765)))))

(assert (=> d!2214578 (= (derivationStepZipperUp!2268 lt!2551765 (h!74902 s!7408)) e!4256661)))

(declare-fun b!7080352 () Bool)

(assert (=> b!7080352 (= e!4256661 (set.union call!643561 (derivationStepZipperUp!2268 (Context!13361 (t!382364 (exprs!7180 lt!2551765))) (h!74902 s!7408))))))

(declare-fun b!7080353 () Bool)

(assert (=> b!7080353 (= e!4256663 (as set.empty (Set Context!13360)))))

(assert (= (and d!2214578 res!2892204) b!7080349))

(assert (= (and d!2214578 c!1321446) b!7080352))

(assert (= (and d!2214578 (not c!1321446)) b!7080350))

(assert (= (and b!7080350 c!1321445) b!7080351))

(assert (= (and b!7080350 (not c!1321445)) b!7080353))

(assert (= (or b!7080352 b!7080351) bm!643556))

(assert (=> b!7080349 m!7810488))

(declare-fun m!7810980 () Bool)

(assert (=> bm!643556 m!7810980))

(declare-fun m!7810982 () Bool)

(assert (=> b!7080352 m!7810982))

(assert (=> b!7080079 d!2214578))

(declare-fun d!2214580 () Bool)

(assert (=> d!2214580 (= (flatMap!2610 lt!2551752 lambda!427591) (dynLambda!27899 lambda!427591 lt!2551765))))

(declare-fun lt!2551947 () Unit!162079)

(assert (=> d!2214580 (= lt!2551947 (choose!54452 lt!2551752 lt!2551765 lambda!427591))))

(assert (=> d!2214580 (= lt!2551752 (set.insert lt!2551765 (as set.empty (Set Context!13360))))))

(assert (=> d!2214580 (= (lemmaFlatMapOnSingletonSet!2119 lt!2551752 lt!2551765 lambda!427591) lt!2551947)))

(declare-fun b_lambda!270511 () Bool)

(assert (=> (not b_lambda!270511) (not d!2214580)))

(declare-fun bs!1882024 () Bool)

(assert (= bs!1882024 d!2214580))

(assert (=> bs!1882024 m!7810528))

(declare-fun m!7810984 () Bool)

(assert (=> bs!1882024 m!7810984))

(declare-fun m!7810986 () Bool)

(assert (=> bs!1882024 m!7810986))

(assert (=> bs!1882024 m!7810530))

(assert (=> b!7080079 d!2214580))

(declare-fun bs!1882026 () Bool)

(declare-fun d!2214582 () Bool)

(assert (= bs!1882026 (and d!2214582 b!7080081)))

(declare-fun lambda!427651 () Int)

(assert (=> bs!1882026 (= lambda!427651 lambda!427591)))

(declare-fun bs!1882027 () Bool)

(assert (= bs!1882027 (and d!2214582 d!2214512)))

(assert (=> bs!1882027 (= lambda!427651 lambda!427632)))

(assert (=> d!2214582 true))

(assert (=> d!2214582 (= (derivationStepZipper!3134 lt!2551752 (h!74902 s!7408)) (flatMap!2610 lt!2551752 lambda!427651))))

(declare-fun bs!1882028 () Bool)

(assert (= bs!1882028 d!2214582))

(declare-fun m!7810990 () Bool)

(assert (=> bs!1882028 m!7810990))

(assert (=> b!7080079 d!2214582))

(assert (=> b!7080077 d!2214504))

(declare-fun b!7080356 () Bool)

(declare-fun res!2892205 () Bool)

(declare-fun e!4256664 () Bool)

(assert (=> b!7080356 (=> (not res!2892205) (not e!4256664))))

(declare-fun lt!2551948 () List!68578)

(assert (=> b!7080356 (= res!2892205 (= (size!41256 lt!2551948) (+ (size!41256 Nil!68454) (size!41256 s!7408))))))

(declare-fun b!7080355 () Bool)

(declare-fun e!4256665 () List!68578)

(assert (=> b!7080355 (= e!4256665 (Cons!68454 (h!74902 Nil!68454) (++!15843 (t!382363 Nil!68454) s!7408)))))

(declare-fun d!2214586 () Bool)

(assert (=> d!2214586 e!4256664))

(declare-fun res!2892206 () Bool)

(assert (=> d!2214586 (=> (not res!2892206) (not e!4256664))))

(assert (=> d!2214586 (= res!2892206 (= (content!13870 lt!2551948) (set.union (content!13870 Nil!68454) (content!13870 s!7408))))))

(assert (=> d!2214586 (= lt!2551948 e!4256665)))

(declare-fun c!1321447 () Bool)

(assert (=> d!2214586 (= c!1321447 (is-Nil!68454 Nil!68454))))

(assert (=> d!2214586 (= (++!15843 Nil!68454 s!7408) lt!2551948)))

(declare-fun b!7080354 () Bool)

(assert (=> b!7080354 (= e!4256665 s!7408)))

(declare-fun b!7080357 () Bool)

(assert (=> b!7080357 (= e!4256664 (or (not (= s!7408 Nil!68454)) (= lt!2551948 Nil!68454)))))

(assert (= (and d!2214586 c!1321447) b!7080354))

(assert (= (and d!2214586 (not c!1321447)) b!7080355))

(assert (= (and d!2214586 res!2892206) b!7080356))

(assert (= (and b!7080356 res!2892205) b!7080357))

(declare-fun m!7810992 () Bool)

(assert (=> b!7080356 m!7810992))

(assert (=> b!7080356 m!7810782))

(declare-fun m!7810994 () Bool)

(assert (=> b!7080356 m!7810994))

(declare-fun m!7810996 () Bool)

(assert (=> b!7080355 m!7810996))

(declare-fun m!7810998 () Bool)

(assert (=> d!2214586 m!7810998))

(declare-fun m!7811000 () Bool)

(assert (=> d!2214586 m!7811000))

(declare-fun m!7811002 () Bool)

(assert (=> d!2214586 m!7811002))

(assert (=> b!7080087 d!2214586))

(declare-fun bs!1882029 () Bool)

(declare-fun d!2214588 () Bool)

(assert (= bs!1882029 (and d!2214588 b!7080091)))

(declare-fun lambda!427652 () Int)

(assert (=> bs!1882029 (= lambda!427652 lambda!427590)))

(declare-fun bs!1882030 () Bool)

(assert (= bs!1882030 (and d!2214588 d!2214500)))

(assert (=> bs!1882030 (= lambda!427652 lambda!427629)))

(declare-fun bs!1882031 () Bool)

(assert (= bs!1882031 (and d!2214588 d!2214542)))

(assert (=> bs!1882031 (= lambda!427652 lambda!427645)))

(assert (=> d!2214588 (= (inv!87070 setElem!50470) (forall!16647 (exprs!7180 setElem!50470) lambda!427652))))

(declare-fun bs!1882032 () Bool)

(assert (= bs!1882032 d!2214588))

(declare-fun m!7811004 () Bool)

(assert (=> bs!1882032 m!7811004))

(assert (=> setNonEmpty!50470 d!2214588))

(declare-fun d!2214590 () Bool)

(declare-fun nullableFct!2837 (Regex!17684) Bool)

(assert (=> d!2214590 (= (nullable!7367 (h!74903 (exprs!7180 lt!2551765))) (nullableFct!2837 (h!74903 (exprs!7180 lt!2551765))))))

(declare-fun bs!1882033 () Bool)

(assert (= bs!1882033 d!2214590))

(declare-fun m!7811006 () Bool)

(assert (=> bs!1882033 m!7811006))

(assert (=> b!7080089 d!2214590))

(declare-fun d!2214592 () Bool)

(assert (=> d!2214592 (= (tail!13893 (exprs!7180 lt!2551765)) (t!382364 (exprs!7180 lt!2551765)))))

(assert (=> b!7080089 d!2214592))

(declare-fun b!7080358 () Bool)

(declare-fun res!2892208 () Bool)

(declare-fun e!4256669 () Bool)

(assert (=> b!7080358 (=> (not res!2892208) (not e!4256669))))

(declare-fun lt!2551951 () Option!16995)

(assert (=> b!7080358 (= res!2892208 (matchZipper!3224 lt!2551752 (_1!37466 (get!23988 lt!2551951))))))

(declare-fun b!7080359 () Bool)

(assert (=> b!7080359 (= e!4256669 (= (++!15843 (_1!37466 (get!23988 lt!2551951)) (_2!37466 (get!23988 lt!2551951))) s!7408))))

(declare-fun b!7080360 () Bool)

(declare-fun e!4256667 () Option!16995)

(assert (=> b!7080360 (= e!4256667 None!16994)))

(declare-fun b!7080361 () Bool)

(declare-fun e!4256666 () Option!16995)

(assert (=> b!7080361 (= e!4256666 (Some!16994 (tuple2!68327 Nil!68454 s!7408)))))

(declare-fun b!7080362 () Bool)

(declare-fun e!4256668 () Bool)

(assert (=> b!7080362 (= e!4256668 (matchZipper!3224 lt!2551774 s!7408))))

(declare-fun b!7080363 () Bool)

(assert (=> b!7080363 (= e!4256666 e!4256667)))

(declare-fun c!1321448 () Bool)

(assert (=> b!7080363 (= c!1321448 (is-Nil!68454 s!7408))))

(declare-fun b!7080364 () Bool)

(declare-fun res!2892209 () Bool)

(assert (=> b!7080364 (=> (not res!2892209) (not e!4256669))))

(assert (=> b!7080364 (= res!2892209 (matchZipper!3224 lt!2551774 (_2!37466 (get!23988 lt!2551951))))))

(declare-fun d!2214594 () Bool)

(declare-fun e!4256670 () Bool)

(assert (=> d!2214594 e!4256670))

(declare-fun res!2892211 () Bool)

(assert (=> d!2214594 (=> res!2892211 e!4256670)))

(assert (=> d!2214594 (= res!2892211 e!4256669)))

(declare-fun res!2892210 () Bool)

(assert (=> d!2214594 (=> (not res!2892210) (not e!4256669))))

(assert (=> d!2214594 (= res!2892210 (isDefined!13696 lt!2551951))))

(assert (=> d!2214594 (= lt!2551951 e!4256666)))

(declare-fun c!1321449 () Bool)

(assert (=> d!2214594 (= c!1321449 e!4256668)))

(declare-fun res!2892207 () Bool)

(assert (=> d!2214594 (=> (not res!2892207) (not e!4256668))))

(assert (=> d!2214594 (= res!2892207 (matchZipper!3224 lt!2551752 Nil!68454))))

(assert (=> d!2214594 (= (++!15843 Nil!68454 s!7408) s!7408)))

(assert (=> d!2214594 (= (findConcatSeparationZippers!511 lt!2551752 lt!2551774 Nil!68454 s!7408 s!7408) lt!2551951)))

(declare-fun b!7080365 () Bool)

(assert (=> b!7080365 (= e!4256670 (not (isDefined!13696 lt!2551951)))))

(declare-fun b!7080366 () Bool)

(declare-fun lt!2551950 () Unit!162079)

(declare-fun lt!2551949 () Unit!162079)

(assert (=> b!7080366 (= lt!2551950 lt!2551949)))

(assert (=> b!7080366 (= (++!15843 (++!15843 Nil!68454 (Cons!68454 (h!74902 s!7408) Nil!68454)) (t!382363 s!7408)) s!7408)))

(assert (=> b!7080366 (= lt!2551949 (lemmaMoveElementToOtherListKeepsConcatEq!2994 Nil!68454 (h!74902 s!7408) (t!382363 s!7408) s!7408))))

(assert (=> b!7080366 (= e!4256667 (findConcatSeparationZippers!511 lt!2551752 lt!2551774 (++!15843 Nil!68454 (Cons!68454 (h!74902 s!7408) Nil!68454)) (t!382363 s!7408) s!7408))))

(assert (= (and d!2214594 res!2892207) b!7080362))

(assert (= (and d!2214594 c!1321449) b!7080361))

(assert (= (and d!2214594 (not c!1321449)) b!7080363))

(assert (= (and b!7080363 c!1321448) b!7080360))

(assert (= (and b!7080363 (not c!1321448)) b!7080366))

(assert (= (and d!2214594 res!2892210) b!7080358))

(assert (= (and b!7080358 res!2892208) b!7080364))

(assert (= (and b!7080364 res!2892209) b!7080359))

(assert (= (and d!2214594 (not res!2892211)) b!7080365))

(declare-fun m!7811008 () Bool)

(assert (=> b!7080366 m!7811008))

(assert (=> b!7080366 m!7811008))

(declare-fun m!7811010 () Bool)

(assert (=> b!7080366 m!7811010))

(declare-fun m!7811012 () Bool)

(assert (=> b!7080366 m!7811012))

(assert (=> b!7080366 m!7811008))

(declare-fun m!7811014 () Bool)

(assert (=> b!7080366 m!7811014))

(declare-fun m!7811016 () Bool)

(assert (=> b!7080365 m!7811016))

(declare-fun m!7811018 () Bool)

(assert (=> b!7080362 m!7811018))

(declare-fun m!7811020 () Bool)

(assert (=> b!7080358 m!7811020))

(declare-fun m!7811022 () Bool)

(assert (=> b!7080358 m!7811022))

(assert (=> b!7080359 m!7811020))

(declare-fun m!7811024 () Bool)

(assert (=> b!7080359 m!7811024))

(assert (=> d!2214594 m!7811016))

(declare-fun m!7811026 () Bool)

(assert (=> d!2214594 m!7811026))

(assert (=> d!2214594 m!7810560))

(assert (=> b!7080364 m!7811020))

(declare-fun m!7811028 () Bool)

(assert (=> b!7080364 m!7811028))

(assert (=> b!7080090 d!2214594))

(declare-fun d!2214596 () Bool)

(declare-fun e!4256671 () Bool)

(assert (=> d!2214596 e!4256671))

(declare-fun res!2892212 () Bool)

(assert (=> d!2214596 (=> (not res!2892212) (not e!4256671))))

(declare-fun lt!2551952 () List!68580)

(assert (=> d!2214596 (= res!2892212 (noDuplicate!2753 lt!2551952))))

(assert (=> d!2214596 (= lt!2551952 (choose!54455 z1!570))))

(assert (=> d!2214596 (= (toList!11025 z1!570) lt!2551952)))

(declare-fun b!7080367 () Bool)

(assert (=> b!7080367 (= e!4256671 (= (content!13868 lt!2551952) z1!570))))

(assert (= (and d!2214596 res!2892212) b!7080367))

(declare-fun m!7811030 () Bool)

(assert (=> d!2214596 m!7811030))

(declare-fun m!7811032 () Bool)

(assert (=> d!2214596 m!7811032))

(declare-fun m!7811034 () Bool)

(assert (=> b!7080367 m!7811034))

(assert (=> b!7080090 d!2214596))

(declare-fun d!2214598 () Bool)

(assert (=> d!2214598 (exists!3764 z1!570 lambda!427592)))

(declare-fun lt!2551955 () Unit!162079)

(declare-fun choose!54461 ((Set Context!13360) Context!13360 Int) Unit!162079)

(assert (=> d!2214598 (= lt!2551955 (choose!54461 z1!570 lt!2551765 lambda!427592))))

(assert (=> d!2214598 (set.member lt!2551765 z1!570)))

(assert (=> d!2214598 (= (lemmaContainsThenExists!176 z1!570 lt!2551765 lambda!427592) lt!2551955)))

(declare-fun bs!1882034 () Bool)

(assert (= bs!1882034 d!2214598))

(assert (=> bs!1882034 m!7810554))

(declare-fun m!7811036 () Bool)

(assert (=> bs!1882034 m!7811036))

(assert (=> bs!1882034 m!7810492))

(assert (=> b!7080090 d!2214598))

(declare-fun d!2214600 () Bool)

(declare-fun c!1321452 () Bool)

(assert (=> d!2214600 (= c!1321452 (is-Nil!68456 lt!2551768))))

(declare-fun e!4256675 () (Set Context!13360))

(assert (=> d!2214600 (= (content!13868 lt!2551768) e!4256675)))

(declare-fun b!7080372 () Bool)

(assert (=> b!7080372 (= e!4256675 (as set.empty (Set Context!13360)))))

(declare-fun b!7080373 () Bool)

(assert (=> b!7080373 (= e!4256675 (set.union (set.insert (h!74904 lt!2551768) (as set.empty (Set Context!13360))) (content!13868 (t!382365 lt!2551768))))))

(assert (= (and d!2214600 c!1321452) b!7080372))

(assert (= (and d!2214600 (not c!1321452)) b!7080373))

(declare-fun m!7811038 () Bool)

(assert (=> b!7080373 m!7811038))

(declare-fun m!7811040 () Bool)

(assert (=> b!7080373 m!7811040))

(assert (=> b!7080090 d!2214600))

(declare-fun d!2214602 () Bool)

(declare-fun c!1321453 () Bool)

(assert (=> d!2214602 (= c!1321453 (isEmpty!39967 lt!2551777))))

(declare-fun e!4256676 () Bool)

(assert (=> d!2214602 (= (matchZipper!3224 z1!570 lt!2551777) e!4256676)))

(declare-fun b!7080376 () Bool)

(assert (=> b!7080376 (= e!4256676 (nullableZipper!2725 z1!570))))

(declare-fun b!7080377 () Bool)

(assert (=> b!7080377 (= e!4256676 (matchZipper!3224 (derivationStepZipper!3134 z1!570 (head!14434 lt!2551777)) (tail!13895 lt!2551777)))))

(assert (= (and d!2214602 c!1321453) b!7080376))

(assert (= (and d!2214602 (not c!1321453)) b!7080377))

(assert (=> d!2214602 m!7810928))

(declare-fun m!7811042 () Bool)

(assert (=> b!7080376 m!7811042))

(assert (=> b!7080377 m!7810792))

(assert (=> b!7080377 m!7810792))

(declare-fun m!7811044 () Bool)

(assert (=> b!7080377 m!7811044))

(assert (=> b!7080377 m!7810786))

(assert (=> b!7080377 m!7811044))

(assert (=> b!7080377 m!7810786))

(declare-fun m!7811046 () Bool)

(assert (=> b!7080377 m!7811046))

(assert (=> b!7080090 d!2214602))

(declare-fun d!2214604 () Bool)

(declare-fun lt!2551958 () Bool)

(assert (=> d!2214604 (= lt!2551958 (exists!3763 (toList!11025 z1!570) lambda!427592))))

(declare-fun choose!54462 ((Set Context!13360) Int) Bool)

(assert (=> d!2214604 (= lt!2551958 (choose!54462 z1!570 lambda!427592))))

(assert (=> d!2214604 (= (exists!3764 z1!570 lambda!427592) lt!2551958)))

(declare-fun bs!1882035 () Bool)

(assert (= bs!1882035 d!2214604))

(assert (=> bs!1882035 m!7810536))

(assert (=> bs!1882035 m!7810536))

(declare-fun m!7811048 () Bool)

(assert (=> bs!1882035 m!7811048))

(declare-fun m!7811050 () Bool)

(assert (=> bs!1882035 m!7811050))

(assert (=> b!7080090 d!2214604))

(declare-fun d!2214606 () Bool)

(declare-fun c!1321464 () Bool)

(assert (=> d!2214606 (= c!1321464 (isEmpty!39967 lt!2551777))))

(declare-fun e!4256689 () Bool)

(assert (=> d!2214606 (= (matchZipper!3224 (content!13868 lt!2551768) lt!2551777) e!4256689)))

(declare-fun b!7080398 () Bool)

(assert (=> b!7080398 (= e!4256689 (nullableZipper!2725 (content!13868 lt!2551768)))))

(declare-fun b!7080399 () Bool)

(assert (=> b!7080399 (= e!4256689 (matchZipper!3224 (derivationStepZipper!3134 (content!13868 lt!2551768) (head!14434 lt!2551777)) (tail!13895 lt!2551777)))))

(assert (= (and d!2214606 c!1321464) b!7080398))

(assert (= (and d!2214606 (not c!1321464)) b!7080399))

(assert (=> d!2214606 m!7810928))

(assert (=> b!7080398 m!7810546))

(declare-fun m!7811052 () Bool)

(assert (=> b!7080398 m!7811052))

(assert (=> b!7080399 m!7810792))

(assert (=> b!7080399 m!7810546))

(assert (=> b!7080399 m!7810792))

(declare-fun m!7811054 () Bool)

(assert (=> b!7080399 m!7811054))

(assert (=> b!7080399 m!7810786))

(assert (=> b!7080399 m!7811054))

(assert (=> b!7080399 m!7810786))

(declare-fun m!7811056 () Bool)

(assert (=> b!7080399 m!7811056))

(assert (=> b!7080090 d!2214606))

(declare-fun d!2214608 () Bool)

(assert (=> d!2214608 (= (isDefined!13696 (findConcatSeparationZippers!511 lt!2551752 lt!2551774 Nil!68454 s!7408 s!7408)) (not (isEmpty!39968 (findConcatSeparationZippers!511 lt!2551752 lt!2551774 Nil!68454 s!7408 s!7408))))))

(declare-fun bs!1882036 () Bool)

(assert (= bs!1882036 d!2214608))

(assert (=> bs!1882036 m!7810538))

(declare-fun m!7811058 () Bool)

(assert (=> bs!1882036 m!7811058))

(assert (=> b!7080090 d!2214608))

(declare-fun bs!1882037 () Bool)

(declare-fun d!2214610 () Bool)

(assert (= bs!1882037 (and d!2214610 b!7080072)))

(declare-fun lambda!427655 () Int)

(assert (=> bs!1882037 (= (= lt!2551777 s!7408) (= lambda!427655 lambda!427588))))

(declare-fun bs!1882038 () Bool)

(assert (= bs!1882038 (and d!2214610 b!7080090)))

(assert (=> bs!1882038 (= lambda!427655 lambda!427592)))

(declare-fun bs!1882039 () Bool)

(assert (= bs!1882039 (and d!2214610 d!2214516)))

(assert (=> bs!1882039 (= (= lt!2551777 s!7408) (= lambda!427655 lambda!427635))))

(declare-fun bs!1882040 () Bool)

(assert (= bs!1882040 (and d!2214610 d!2214524)))

(assert (=> bs!1882040 (not (= lambda!427655 lambda!427638))))

(assert (=> d!2214610 true))

(assert (=> d!2214610 (matchZipper!3224 (content!13868 lt!2551768) lt!2551777)))

(declare-fun lt!2551961 () Unit!162079)

(declare-fun choose!54463 (List!68580 List!68578) Unit!162079)

(assert (=> d!2214610 (= lt!2551961 (choose!54463 lt!2551768 lt!2551777))))

(assert (=> d!2214610 (exists!3763 lt!2551768 lambda!427655)))

(assert (=> d!2214610 (= (lemmaExistsMatchingContextThenMatchingString!69 lt!2551768 lt!2551777) lt!2551961)))

(declare-fun bs!1882041 () Bool)

(assert (= bs!1882041 d!2214610))

(assert (=> bs!1882041 m!7810546))

(assert (=> bs!1882041 m!7810546))

(assert (=> bs!1882041 m!7810548))

(declare-fun m!7811060 () Bool)

(assert (=> bs!1882041 m!7811060))

(declare-fun m!7811062 () Bool)

(assert (=> bs!1882041 m!7811062))

(assert (=> b!7080090 d!2214610))

(declare-fun d!2214612 () Bool)

(assert (=> d!2214612 (isDefined!13696 (findConcatSeparationZippers!511 lt!2551752 lt!2551774 Nil!68454 s!7408 s!7408))))

(declare-fun lt!2551964 () Unit!162079)

(declare-fun choose!54464 ((Set Context!13360) (Set Context!13360) List!68578 List!68578 List!68578 List!68578 List!68578) Unit!162079)

(assert (=> d!2214612 (= lt!2551964 (choose!54464 lt!2551752 lt!2551774 lt!2551777 (_2!37466 lt!2551772) s!7408 Nil!68454 s!7408))))

(assert (=> d!2214612 (matchZipper!3224 lt!2551752 lt!2551777)))

(assert (=> d!2214612 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!97 lt!2551752 lt!2551774 lt!2551777 (_2!37466 lt!2551772) s!7408 Nil!68454 s!7408) lt!2551964)))

(declare-fun bs!1882042 () Bool)

(assert (= bs!1882042 d!2214612))

(assert (=> bs!1882042 m!7810538))

(assert (=> bs!1882042 m!7810538))

(assert (=> bs!1882042 m!7810540))

(declare-fun m!7811064 () Bool)

(assert (=> bs!1882042 m!7811064))

(assert (=> bs!1882042 m!7810520))

(assert (=> b!7080090 d!2214612))

(declare-fun b!7080415 () Bool)

(declare-fun e!4256698 () Bool)

(declare-fun tp!1943377 () Bool)

(declare-fun tp!1943378 () Bool)

(assert (=> b!7080415 (= e!4256698 (and tp!1943377 tp!1943378))))

(assert (=> b!7080078 (= tp!1943360 e!4256698)))

(assert (= (and b!7080078 (is-Cons!68455 (exprs!7180 ct2!306))) b!7080415))

(declare-fun b!7080416 () Bool)

(declare-fun e!4256699 () Bool)

(declare-fun tp!1943379 () Bool)

(declare-fun tp!1943380 () Bool)

(assert (=> b!7080416 (= e!4256699 (and tp!1943379 tp!1943380))))

(assert (=> b!7080083 (= tp!1943359 e!4256699)))

(assert (= (and b!7080083 (is-Cons!68455 (exprs!7180 setElem!50470))) b!7080416))

(declare-fun b!7080421 () Bool)

(declare-fun e!4256702 () Bool)

(declare-fun tp!1943383 () Bool)

(assert (=> b!7080421 (= e!4256702 (and tp_is_empty!44593 tp!1943383))))

(assert (=> b!7080082 (= tp!1943357 e!4256702)))

(assert (= (and b!7080082 (is-Cons!68454 (t!382363 s!7408))) b!7080421))

(declare-fun condSetEmpty!50476 () Bool)

(assert (=> setNonEmpty!50470 (= condSetEmpty!50476 (= setRest!50470 (as set.empty (Set Context!13360))))))

(declare-fun setRes!50476 () Bool)

(assert (=> setNonEmpty!50470 (= tp!1943358 setRes!50476)))

(declare-fun setIsEmpty!50476 () Bool)

(assert (=> setIsEmpty!50476 setRes!50476))

(declare-fun e!4256705 () Bool)

(declare-fun setNonEmpty!50476 () Bool)

(declare-fun tp!1943388 () Bool)

(declare-fun setElem!50476 () Context!13360)

(assert (=> setNonEmpty!50476 (= setRes!50476 (and tp!1943388 (inv!87070 setElem!50476) e!4256705))))

(declare-fun setRest!50476 () (Set Context!13360))

(assert (=> setNonEmpty!50476 (= setRest!50470 (set.union (set.insert setElem!50476 (as set.empty (Set Context!13360))) setRest!50476))))

(declare-fun b!7080426 () Bool)

(declare-fun tp!1943389 () Bool)

(assert (=> b!7080426 (= e!4256705 tp!1943389)))

(assert (= (and setNonEmpty!50470 condSetEmpty!50476) setIsEmpty!50476))

(assert (= (and setNonEmpty!50470 (not condSetEmpty!50476)) setNonEmpty!50476))

(assert (= setNonEmpty!50476 b!7080426))

(declare-fun m!7811074 () Bool)

(assert (=> setNonEmpty!50476 m!7811074))

(declare-fun b_lambda!270513 () Bool)

(assert (= b_lambda!270509 (or b!7080072 b_lambda!270513)))

(declare-fun bs!1882043 () Bool)

(declare-fun d!2214616 () Bool)

(assert (= bs!1882043 (and d!2214616 b!7080072)))

(assert (=> bs!1882043 (= (dynLambda!27900 lambda!427588 lt!2551907) (matchZipper!3224 (set.insert lt!2551907 (as set.empty (Set Context!13360))) s!7408))))

(declare-fun m!7811078 () Bool)

(assert (=> bs!1882043 m!7811078))

(assert (=> bs!1882043 m!7811078))

(declare-fun m!7811080 () Bool)

(assert (=> bs!1882043 m!7811080))

(assert (=> d!2214520 d!2214616))

(declare-fun b_lambda!270515 () Bool)

(assert (= b_lambda!270507 (or b!7080081 b_lambda!270515)))

(declare-fun bs!1882044 () Bool)

(declare-fun d!2214618 () Bool)

(assert (= bs!1882044 (and d!2214618 b!7080081)))

(assert (=> bs!1882044 (= (dynLambda!27899 lambda!427591 lt!2551754) (derivationStepZipperUp!2268 lt!2551754 (h!74902 s!7408)))))

(assert (=> bs!1882044 m!7810502))

(assert (=> d!2214508 d!2214618))

(declare-fun b_lambda!270517 () Bool)

(assert (= b_lambda!270505 (or b!7080091 b_lambda!270517)))

(declare-fun bs!1882045 () Bool)

(declare-fun d!2214620 () Bool)

(assert (= bs!1882045 (and d!2214620 b!7080091)))

(declare-fun lt!2551965 () Unit!162079)

(assert (=> bs!1882045 (= lt!2551965 (lemmaConcatPreservesForall!995 (exprs!7180 lt!2551898) (exprs!7180 ct2!306) lambda!427590))))

(assert (=> bs!1882045 (= (dynLambda!27898 lambda!427589 lt!2551898) (Context!13361 (++!15844 (exprs!7180 lt!2551898) (exprs!7180 ct2!306))))))

(declare-fun m!7811082 () Bool)

(assert (=> bs!1882045 m!7811082))

(declare-fun m!7811084 () Bool)

(assert (=> bs!1882045 m!7811084))

(assert (=> d!2214506 d!2214620))

(declare-fun b_lambda!270519 () Bool)

(assert (= b_lambda!270511 (or b!7080081 b_lambda!270519)))

(declare-fun bs!1882046 () Bool)

(declare-fun d!2214622 () Bool)

(assert (= bs!1882046 (and d!2214622 b!7080081)))

(assert (=> bs!1882046 (= (dynLambda!27899 lambda!427591 lt!2551765) (derivationStepZipperUp!2268 lt!2551765 (h!74902 s!7408)))))

(assert (=> bs!1882046 m!7810532))

(assert (=> d!2214580 d!2214622))

(push 1)

(assert (not d!2214540))

(assert (not b!7080181))

(assert (not d!2214604))

(assert (not d!2214516))

(assert (not d!2214538))

(assert (not d!2214522))

(assert (not d!2214512))

(assert (not bm!643547))

(assert (not b!7080358))

(assert (not d!2214588))

(assert (not b!7080331))

(assert (not b!7080356))

(assert (not d!2214564))

(assert (not b!7080421))

(assert (not d!2214524))

(assert (not bs!1882045))

(assert (not d!2214612))

(assert (not bs!1882043))

(assert (not b!7080399))

(assert (not d!2214602))

(assert (not b!7080367))

(assert (not b!7080376))

(assert (not b!7080347))

(assert (not b!7080188))

(assert (not b!7080223))

(assert (not d!2214560))

(assert (not bm!643556))

(assert (not b!7080349))

(assert (not b!7080180))

(assert (not b!7080330))

(assert (not d!2214502))

(assert (not b!7080362))

(assert (not b!7080289))

(assert (not d!2214580))

(assert (not b!7080242))

(assert (not d!2214542))

(assert (not bm!643552))

(assert (not d!2214596))

(assert (not b!7080243))

(assert (not b!7080377))

(assert (not b!7080325))

(assert (not d!2214506))

(assert (not b!7080333))

(assert (not bm!643531))

(assert (not b!7080352))

(assert (not b!7080329))

(assert (not b!7080416))

(assert (not d!2214546))

(assert (not b!7080290))

(assert (not b!7080335))

(assert (not d!2214514))

(assert (not b!7080326))

(assert (not bm!643553))

(assert (not d!2214500))

(assert (not b!7080366))

(assert (not b!7080322))

(assert (not d!2214494))

(assert (not d!2214586))

(assert (not b_lambda!270517))

(assert (not d!2214570))

(assert (not b!7080229))

(assert (not b_lambda!270519))

(assert (not b!7080316))

(assert (not b!7080198))

(assert (not b!7080215))

(assert (not bs!1882046))

(assert (not d!2214576))

(assert (not d!2214550))

(assert (not b!7080398))

(assert (not d!2214498))

(assert (not b!7080199))

(assert (not bm!643546))

(assert (not b!7080328))

(assert (not b!7080187))

(assert (not b!7080355))

(assert (not b!7080426))

(assert (not b!7080415))

(assert (not d!2214594))

(assert (not d!2214568))

(assert (not d!2214606))

(assert (not setNonEmpty!50476))

(assert (not b!7080373))

(assert (not b!7080321))

(assert (not b!7080332))

(assert (not d!2214562))

(assert (not d!2214504))

(assert (not d!2214548))

(assert (not d!2214582))

(assert (not b!7080279))

(assert (not d!2214590))

(assert (not d!2214496))

(assert (not b!7080359))

(assert (not bm!643549))

(assert (not b!7080323))

(assert (not d!2214520))

(assert (not d!2214598))

(assert (not d!2214518))

(assert (not b!7080218))

(assert (not b_lambda!270515))

(assert (not bm!643555))

(assert (not b!7080365))

(assert (not d!2214508))

(assert (not b!7080222))

(assert (not d!2214610))

(assert tp_is_empty!44593)

(assert (not bs!1882044))

(assert (not b!7080346))

(assert (not b_lambda!270513))

(assert (not b!7080319))

(assert (not d!2214574))

(assert (not d!2214608))

(assert (not b!7080364))

(assert (not b!7080241))

(assert (not b!7080315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

