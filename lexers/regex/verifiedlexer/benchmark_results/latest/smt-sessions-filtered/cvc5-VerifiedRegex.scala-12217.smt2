; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!688374 () Bool)

(assert start!688374)

(declare-fun b!7079026 () Bool)

(assert (=> b!7079026 true))

(declare-fun b!7079020 () Bool)

(assert (=> b!7079020 true))

(declare-fun b!7079035 () Bool)

(assert (=> b!7079035 true))

(declare-fun bs!1881789 () Bool)

(declare-fun b!7079033 () Bool)

(assert (= bs!1881789 (and b!7079033 b!7079026)))

(declare-fun lambda!427368 () Int)

(declare-fun lambda!427372 () Int)

(declare-datatypes ((C!35630 0))(
  ( (C!35631 (val!27517 Int)) )
))
(declare-datatypes ((List!68566 0))(
  ( (Nil!68442) (Cons!68442 (h!74890 C!35630) (t!382351 List!68566)) )
))
(declare-fun s!7408 () List!68566)

(declare-fun lt!2551090 () List!68566)

(assert (=> bs!1881789 (= (= lt!2551090 s!7408) (= lambda!427372 lambda!427368))))

(assert (=> b!7079033 true))

(declare-fun b!7079017 () Bool)

(declare-fun res!2891599 () Bool)

(declare-fun e!4255906 () Bool)

(assert (=> b!7079017 (=> res!2891599 e!4255906)))

(declare-datatypes ((Regex!17680 0))(
  ( (ElementMatch!17680 (c!1321061 C!35630)) (Concat!26525 (regOne!35872 Regex!17680) (regTwo!35872 Regex!17680)) (EmptyExpr!17680) (Star!17680 (reg!18009 Regex!17680)) (EmptyLang!17680) (Union!17680 (regOne!35873 Regex!17680) (regTwo!35873 Regex!17680)) )
))
(declare-datatypes ((List!68567 0))(
  ( (Nil!68443) (Cons!68443 (h!74891 Regex!17680) (t!382352 List!68567)) )
))
(declare-datatypes ((Context!13352 0))(
  ( (Context!13353 (exprs!7176 List!68567)) )
))
(declare-fun lt!2551097 () Context!13352)

(declare-fun isEmpty!39953 (List!68567) Bool)

(assert (=> b!7079017 (= res!2891599 (isEmpty!39953 (exprs!7176 lt!2551097)))))

(declare-fun b!7079018 () Bool)

(declare-fun res!2891610 () Bool)

(assert (=> b!7079018 (=> res!2891610 e!4255906)))

(assert (=> b!7079018 (= res!2891610 (not (is-Cons!68443 (exprs!7176 lt!2551097))))))

(declare-fun b!7079019 () Bool)

(declare-fun e!4255897 () Bool)

(declare-fun tp!1943242 () Bool)

(assert (=> b!7079019 (= e!4255897 tp!1943242)))

(declare-fun e!4255895 () Bool)

(declare-fun e!4255896 () Bool)

(assert (=> b!7079020 (= e!4255895 e!4255896)))

(declare-fun res!2891612 () Bool)

(assert (=> b!7079020 (=> res!2891612 e!4255896)))

(declare-fun lt!2551099 () Context!13352)

(declare-fun z1!570 () (Set Context!13352))

(declare-fun lt!2551113 () Context!13352)

(assert (=> b!7079020 (= res!2891612 (or (not (= lt!2551113 lt!2551099)) (not (set.member lt!2551097 z1!570))))))

(declare-fun ct2!306 () Context!13352)

(declare-fun ++!15835 (List!68567 List!68567) List!68567)

(assert (=> b!7079020 (= lt!2551113 (Context!13353 (++!15835 (exprs!7176 lt!2551097) (exprs!7176 ct2!306))))))

(declare-fun lambda!427370 () Int)

(declare-datatypes ((Unit!162071 0))(
  ( (Unit!162072) )
))
(declare-fun lt!2551100 () Unit!162071)

(declare-fun lemmaConcatPreservesForall!991 (List!68567 List!68567 Int) Unit!162071)

(assert (=> b!7079020 (= lt!2551100 (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551097) (exprs!7176 ct2!306) lambda!427370))))

(declare-fun lambda!427369 () Int)

(declare-fun mapPost2!509 ((Set Context!13352) Int Context!13352) Context!13352)

(assert (=> b!7079020 (= lt!2551097 (mapPost2!509 z1!570 lambda!427369 lt!2551099))))

(declare-fun b!7079021 () Bool)

(declare-fun e!4255902 () Bool)

(declare-fun tp!1943244 () Bool)

(assert (=> b!7079021 (= e!4255902 tp!1943244)))

(declare-fun setRes!50446 () Bool)

(declare-fun setElem!50446 () Context!13352)

(declare-fun tp!1943243 () Bool)

(declare-fun setNonEmpty!50446 () Bool)

(declare-fun inv!87060 (Context!13352) Bool)

(assert (=> setNonEmpty!50446 (= setRes!50446 (and tp!1943243 (inv!87060 setElem!50446) e!4255897))))

(declare-fun setRest!50446 () (Set Context!13352))

(assert (=> setNonEmpty!50446 (= z1!570 (set.union (set.insert setElem!50446 (as set.empty (Set Context!13352))) setRest!50446))))

(declare-fun b!7079023 () Bool)

(declare-fun res!2891603 () Bool)

(declare-fun e!4255893 () Bool)

(assert (=> b!7079023 (=> res!2891603 e!4255893)))

(declare-datatypes ((tuple2!68318 0))(
  ( (tuple2!68319 (_1!37462 List!68566) (_2!37462 List!68566)) )
))
(declare-fun lt!2551107 () tuple2!68318)

(declare-fun ++!15836 (List!68566 List!68566) List!68566)

(assert (=> b!7079023 (= res!2891603 (not (= (++!15836 (_1!37462 lt!2551107) (_2!37462 lt!2551107)) (t!382351 s!7408))))))

(declare-fun b!7079024 () Bool)

(declare-fun res!2891597 () Bool)

(declare-fun e!4255905 () Bool)

(assert (=> b!7079024 (=> (not res!2891597) (not e!4255905))))

(assert (=> b!7079024 (= res!2891597 (is-Cons!68442 s!7408))))

(declare-fun b!7079025 () Bool)

(declare-fun e!4255904 () Bool)

(assert (=> b!7079025 (= e!4255893 e!4255904)))

(declare-fun res!2891613 () Bool)

(assert (=> b!7079025 (=> res!2891613 e!4255904)))

(declare-fun lt!2551086 () (Set Context!13352))

(declare-fun lt!2551108 () (Set Context!13352))

(declare-fun lt!2551081 () (Set Context!13352))

(assert (=> b!7079025 (= res!2891613 (or (not (= lt!2551086 lt!2551108)) (not (= lt!2551086 lt!2551081))))))

(declare-fun lt!2551102 () (Set Context!13352))

(declare-fun lambda!427371 () Int)

(declare-fun flatMap!2606 ((Set Context!13352) Int) (Set Context!13352))

(declare-fun derivationStepZipperUp!2264 (Context!13352 C!35630) (Set Context!13352))

(assert (=> b!7079025 (= (flatMap!2606 lt!2551102 lambda!427371) (derivationStepZipperUp!2264 lt!2551097 (h!74890 s!7408)))))

(declare-fun lt!2551093 () Unit!162071)

(declare-fun lemmaFlatMapOnSingletonSet!2115 ((Set Context!13352) Context!13352 Int) Unit!162071)

(assert (=> b!7079025 (= lt!2551093 (lemmaFlatMapOnSingletonSet!2115 lt!2551102 lt!2551097 lambda!427371))))

(assert (=> b!7079025 (= lt!2551108 (derivationStepZipperUp!2264 lt!2551097 (h!74890 s!7408)))))

(declare-fun derivationStepZipper!3130 ((Set Context!13352) C!35630) (Set Context!13352))

(assert (=> b!7079025 (= lt!2551086 (derivationStepZipper!3130 lt!2551102 (h!74890 s!7408)))))

(assert (=> b!7079025 (= lt!2551102 (set.insert lt!2551097 (as set.empty (Set Context!13352))))))

(assert (=> b!7079026 (= e!4255905 (not e!4255895))))

(declare-fun res!2891607 () Bool)

(assert (=> b!7079026 (=> res!2891607 e!4255895)))

(declare-fun lt!2551105 () (Set Context!13352))

(declare-fun matchZipper!3220 ((Set Context!13352) List!68566) Bool)

(assert (=> b!7079026 (= res!2891607 (not (matchZipper!3220 lt!2551105 s!7408)))))

(assert (=> b!7079026 (= lt!2551105 (set.insert lt!2551099 (as set.empty (Set Context!13352))))))

(declare-fun lt!2551110 () (Set Context!13352))

(declare-fun getWitness!1802 ((Set Context!13352) Int) Context!13352)

(assert (=> b!7079026 (= lt!2551099 (getWitness!1802 lt!2551110 lambda!427368))))

(declare-datatypes ((List!68568 0))(
  ( (Nil!68444) (Cons!68444 (h!74892 Context!13352) (t!382353 List!68568)) )
))
(declare-fun lt!2551091 () List!68568)

(declare-fun exists!3755 (List!68568 Int) Bool)

(assert (=> b!7079026 (exists!3755 lt!2551091 lambda!427368)))

(declare-fun lt!2551085 () Unit!162071)

(declare-fun lemmaZipperMatchesExistsMatchingContext!601 (List!68568 List!68566) Unit!162071)

(assert (=> b!7079026 (= lt!2551085 (lemmaZipperMatchesExistsMatchingContext!601 lt!2551091 s!7408))))

(declare-fun toList!11021 ((Set Context!13352)) List!68568)

(assert (=> b!7079026 (= lt!2551091 (toList!11021 lt!2551110))))

(declare-fun b!7079027 () Bool)

(declare-fun res!2891606 () Bool)

(assert (=> b!7079027 (=> res!2891606 e!4255895)))

(assert (=> b!7079027 (= res!2891606 (not (set.member lt!2551099 lt!2551110)))))

(declare-fun b!7079028 () Bool)

(declare-fun e!4255899 () Bool)

(assert (=> b!7079028 (= e!4255906 e!4255899)))

(declare-fun res!2891608 () Bool)

(assert (=> b!7079028 (=> res!2891608 e!4255899)))

(declare-fun nullable!7363 (Regex!17680) Bool)

(assert (=> b!7079028 (= res!2891608 (nullable!7363 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun lt!2551109 () Context!13352)

(declare-fun lt!2551096 () List!68567)

(assert (=> b!7079028 (= lt!2551109 (Context!13353 lt!2551096))))

(declare-fun tail!13885 (List!68567) List!68567)

(assert (=> b!7079028 (= lt!2551096 (tail!13885 (exprs!7176 lt!2551097)))))

(declare-fun e!4255898 () Bool)

(declare-fun b!7079029 () Bool)

(assert (=> b!7079029 (= e!4255898 (= (++!15836 lt!2551090 (_2!37462 lt!2551107)) s!7408))))

(declare-fun b!7079030 () Bool)

(declare-fun e!4255894 () Bool)

(assert (=> b!7079030 (= e!4255904 e!4255894)))

(declare-fun res!2891601 () Bool)

(assert (=> b!7079030 (=> res!2891601 e!4255894)))

(assert (=> b!7079030 (= res!2891601 (not (matchZipper!3220 lt!2551102 lt!2551090)))))

(assert (=> b!7079030 (= lt!2551090 (Cons!68442 (h!74890 s!7408) (_1!37462 lt!2551107)))))

(declare-fun b!7079022 () Bool)

(declare-fun e!4255901 () Bool)

(assert (=> b!7079022 (= e!4255901 e!4255893)))

(declare-fun res!2891602 () Bool)

(assert (=> b!7079022 (=> res!2891602 e!4255893)))

(assert (=> b!7079022 (= res!2891602 (not (matchZipper!3220 lt!2551081 (_1!37462 lt!2551107))))))

(declare-datatypes ((Option!16991 0))(
  ( (None!16990) (Some!16990 (v!53284 tuple2!68318)) )
))
(declare-fun lt!2551101 () Option!16991)

(declare-fun get!23982 (Option!16991) tuple2!68318)

(assert (=> b!7079022 (= lt!2551107 (get!23982 lt!2551101))))

(declare-fun isDefined!13692 (Option!16991) Bool)

(assert (=> b!7079022 (isDefined!13692 lt!2551101)))

(declare-fun lt!2551103 () (Set Context!13352))

(declare-fun findConcatSeparationZippers!507 ((Set Context!13352) (Set Context!13352) List!68566 List!68566 List!68566) Option!16991)

(assert (=> b!7079022 (= lt!2551101 (findConcatSeparationZippers!507 lt!2551081 lt!2551103 Nil!68442 (t!382351 s!7408) (t!382351 s!7408)))))

(assert (=> b!7079022 (= lt!2551103 (set.insert ct2!306 (as set.empty (Set Context!13352))))))

(declare-fun lt!2551111 () Unit!162071)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!495 ((Set Context!13352) Context!13352 List!68566) Unit!162071)

(assert (=> b!7079022 (= lt!2551111 (lemmaConcatZipperMatchesStringThenFindConcatDefined!495 lt!2551081 ct2!306 (t!382351 s!7408)))))

(declare-fun lt!2551089 () (Set Context!13352))

(declare-fun appendTo!801 ((Set Context!13352) Context!13352) (Set Context!13352))

(assert (=> b!7079022 (= lt!2551089 (appendTo!801 lt!2551081 ct2!306))))

(declare-fun derivationStepZipperDown!2314 (Regex!17680 Context!13352 C!35630) (Set Context!13352))

(assert (=> b!7079022 (= lt!2551081 (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) lt!2551109 (h!74890 s!7408)))))

(declare-fun lt!2551084 () Unit!162071)

(assert (=> b!7079022 (= lt!2551084 (lemmaConcatPreservesForall!991 lt!2551096 (exprs!7176 ct2!306) lambda!427370))))

(declare-fun lt!2551087 () Unit!162071)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!147 (Context!13352 Regex!17680 C!35630 Context!13352) Unit!162071)

(assert (=> b!7079022 (= lt!2551087 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!147 lt!2551109 (h!74891 (exprs!7176 lt!2551097)) (h!74890 s!7408) ct2!306))))

(declare-fun res!2891600 () Bool)

(assert (=> start!688374 (=> (not res!2891600) (not e!4255905))))

(assert (=> start!688374 (= res!2891600 (matchZipper!3220 lt!2551110 s!7408))))

(assert (=> start!688374 (= lt!2551110 (appendTo!801 z1!570 ct2!306))))

(assert (=> start!688374 e!4255905))

(declare-fun condSetEmpty!50446 () Bool)

(assert (=> start!688374 (= condSetEmpty!50446 (= z1!570 (as set.empty (Set Context!13352))))))

(assert (=> start!688374 setRes!50446))

(assert (=> start!688374 (and (inv!87060 ct2!306) e!4255902)))

(declare-fun e!4255900 () Bool)

(assert (=> start!688374 e!4255900))

(declare-fun b!7079031 () Bool)

(declare-fun tp_is_empty!44585 () Bool)

(declare-fun tp!1943241 () Bool)

(assert (=> b!7079031 (= e!4255900 (and tp_is_empty!44585 tp!1943241))))

(declare-fun b!7079032 () Bool)

(declare-fun res!2891605 () Bool)

(assert (=> b!7079032 (=> res!2891605 e!4255893)))

(assert (=> b!7079032 (= res!2891605 (not (matchZipper!3220 lt!2551103 (_2!37462 lt!2551107))))))

(assert (=> b!7079033 (= e!4255894 e!4255898)))

(declare-fun res!2891598 () Bool)

(assert (=> b!7079033 (=> res!2891598 e!4255898)))

(assert (=> b!7079033 (= res!2891598 (not (matchZipper!3220 z1!570 lt!2551090)))))

(declare-fun lt!2551094 () List!68568)

(declare-fun content!13856 (List!68568) (Set Context!13352))

(assert (=> b!7079033 (matchZipper!3220 (content!13856 lt!2551094) lt!2551090)))

(declare-fun lt!2551106 () Unit!162071)

(declare-fun lemmaExistsMatchingContextThenMatchingString!65 (List!68568 List!68566) Unit!162071)

(assert (=> b!7079033 (= lt!2551106 (lemmaExistsMatchingContextThenMatchingString!65 lt!2551094 lt!2551090))))

(assert (=> b!7079033 (= lt!2551094 (toList!11021 z1!570))))

(declare-fun exists!3756 ((Set Context!13352) Int) Bool)

(assert (=> b!7079033 (exists!3756 z1!570 lambda!427372)))

(declare-fun lt!2551083 () Unit!162071)

(declare-fun lemmaContainsThenExists!172 ((Set Context!13352) Context!13352 Int) Unit!162071)

(assert (=> b!7079033 (= lt!2551083 (lemmaContainsThenExists!172 z1!570 lt!2551097 lambda!427372))))

(assert (=> b!7079033 (isDefined!13692 (findConcatSeparationZippers!507 lt!2551102 lt!2551103 Nil!68442 s!7408 s!7408))))

(declare-fun lt!2551098 () Unit!162071)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!93 ((Set Context!13352) (Set Context!13352) List!68566 List!68566 List!68566 List!68566 List!68566) Unit!162071)

(assert (=> b!7079033 (= lt!2551098 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!93 lt!2551102 lt!2551103 lt!2551090 (_2!37462 lt!2551107) s!7408 Nil!68442 s!7408))))

(declare-fun b!7079034 () Bool)

(declare-fun e!4255903 () Bool)

(assert (=> b!7079034 (= e!4255896 e!4255903)))

(declare-fun res!2891609 () Bool)

(assert (=> b!7079034 (=> res!2891609 e!4255903)))

(declare-fun lt!2551082 () (Set Context!13352))

(assert (=> b!7079034 (= res!2891609 (not (= lt!2551082 lt!2551105)))))

(assert (=> b!7079034 (= lt!2551082 (set.insert lt!2551113 (as set.empty (Set Context!13352))))))

(declare-fun lt!2551112 () Unit!162071)

(assert (=> b!7079034 (= lt!2551112 (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551097) (exprs!7176 ct2!306) lambda!427370))))

(declare-fun setIsEmpty!50446 () Bool)

(assert (=> setIsEmpty!50446 setRes!50446))

(assert (=> b!7079035 (= e!4255903 e!4255906)))

(declare-fun res!2891604 () Bool)

(assert (=> b!7079035 (=> res!2891604 e!4255906)))

(declare-fun lt!2551095 () (Set Context!13352))

(assert (=> b!7079035 (= res!2891604 (not (= (derivationStepZipper!3130 lt!2551082 (h!74890 s!7408)) lt!2551095)))))

(assert (=> b!7079035 (= (flatMap!2606 lt!2551082 lambda!427371) (derivationStepZipperUp!2264 lt!2551113 (h!74890 s!7408)))))

(declare-fun lt!2551088 () Unit!162071)

(assert (=> b!7079035 (= lt!2551088 (lemmaFlatMapOnSingletonSet!2115 lt!2551082 lt!2551113 lambda!427371))))

(assert (=> b!7079035 (= lt!2551095 (derivationStepZipperUp!2264 lt!2551113 (h!74890 s!7408)))))

(declare-fun lt!2551104 () Unit!162071)

(assert (=> b!7079035 (= lt!2551104 (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551097) (exprs!7176 ct2!306) lambda!427370))))

(declare-fun b!7079036 () Bool)

(assert (=> b!7079036 (= e!4255899 e!4255901)))

(declare-fun res!2891611 () Bool)

(assert (=> b!7079036 (=> res!2891611 e!4255901)))

(assert (=> b!7079036 (= res!2891611 (not (matchZipper!3220 lt!2551089 (t!382351 s!7408))))))

(assert (=> b!7079036 (= lt!2551089 (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306))) (h!74890 s!7408)))))

(declare-fun lt!2551092 () Unit!162071)

(assert (=> b!7079036 (= lt!2551092 (lemmaConcatPreservesForall!991 lt!2551096 (exprs!7176 ct2!306) lambda!427370))))

(assert (= (and start!688374 res!2891600) b!7079024))

(assert (= (and b!7079024 res!2891597) b!7079026))

(assert (= (and b!7079026 (not res!2891607)) b!7079027))

(assert (= (and b!7079027 (not res!2891606)) b!7079020))

(assert (= (and b!7079020 (not res!2891612)) b!7079034))

(assert (= (and b!7079034 (not res!2891609)) b!7079035))

(assert (= (and b!7079035 (not res!2891604)) b!7079018))

(assert (= (and b!7079018 (not res!2891610)) b!7079017))

(assert (= (and b!7079017 (not res!2891599)) b!7079028))

(assert (= (and b!7079028 (not res!2891608)) b!7079036))

(assert (= (and b!7079036 (not res!2891611)) b!7079022))

(assert (= (and b!7079022 (not res!2891602)) b!7079032))

(assert (= (and b!7079032 (not res!2891605)) b!7079023))

(assert (= (and b!7079023 (not res!2891603)) b!7079025))

(assert (= (and b!7079025 (not res!2891613)) b!7079030))

(assert (= (and b!7079030 (not res!2891601)) b!7079033))

(assert (= (and b!7079033 (not res!2891598)) b!7079029))

(assert (= (and start!688374 condSetEmpty!50446) setIsEmpty!50446))

(assert (= (and start!688374 (not condSetEmpty!50446)) setNonEmpty!50446))

(assert (= setNonEmpty!50446 b!7079019))

(assert (= start!688374 b!7079021))

(assert (= (and start!688374 (is-Cons!68442 s!7408)) b!7079031))

(declare-fun m!7808668 () Bool)

(assert (=> b!7079036 m!7808668))

(declare-fun m!7808670 () Bool)

(assert (=> b!7079036 m!7808670))

(declare-fun m!7808672 () Bool)

(assert (=> b!7079036 m!7808672))

(declare-fun m!7808674 () Bool)

(assert (=> b!7079036 m!7808674))

(declare-fun m!7808676 () Bool)

(assert (=> b!7079028 m!7808676))

(declare-fun m!7808678 () Bool)

(assert (=> b!7079028 m!7808678))

(declare-fun m!7808680 () Bool)

(assert (=> b!7079027 m!7808680))

(declare-fun m!7808682 () Bool)

(assert (=> b!7079017 m!7808682))

(declare-fun m!7808684 () Bool)

(assert (=> b!7079023 m!7808684))

(declare-fun m!7808686 () Bool)

(assert (=> start!688374 m!7808686))

(declare-fun m!7808688 () Bool)

(assert (=> start!688374 m!7808688))

(declare-fun m!7808690 () Bool)

(assert (=> start!688374 m!7808690))

(declare-fun m!7808692 () Bool)

(assert (=> b!7079029 m!7808692))

(declare-fun m!7808694 () Bool)

(assert (=> setNonEmpty!50446 m!7808694))

(declare-fun m!7808696 () Bool)

(assert (=> b!7079033 m!7808696))

(declare-fun m!7808698 () Bool)

(assert (=> b!7079033 m!7808698))

(declare-fun m!7808700 () Bool)

(assert (=> b!7079033 m!7808700))

(declare-fun m!7808702 () Bool)

(assert (=> b!7079033 m!7808702))

(declare-fun m!7808704 () Bool)

(assert (=> b!7079033 m!7808704))

(declare-fun m!7808706 () Bool)

(assert (=> b!7079033 m!7808706))

(declare-fun m!7808708 () Bool)

(assert (=> b!7079033 m!7808708))

(declare-fun m!7808710 () Bool)

(assert (=> b!7079033 m!7808710))

(declare-fun m!7808712 () Bool)

(assert (=> b!7079033 m!7808712))

(assert (=> b!7079033 m!7808708))

(declare-fun m!7808714 () Bool)

(assert (=> b!7079033 m!7808714))

(assert (=> b!7079033 m!7808704))

(declare-fun m!7808716 () Bool)

(assert (=> b!7079020 m!7808716))

(declare-fun m!7808718 () Bool)

(assert (=> b!7079020 m!7808718))

(declare-fun m!7808720 () Bool)

(assert (=> b!7079020 m!7808720))

(declare-fun m!7808722 () Bool)

(assert (=> b!7079020 m!7808722))

(declare-fun m!7808724 () Bool)

(assert (=> b!7079032 m!7808724))

(declare-fun m!7808726 () Bool)

(assert (=> b!7079022 m!7808726))

(declare-fun m!7808728 () Bool)

(assert (=> b!7079022 m!7808728))

(declare-fun m!7808730 () Bool)

(assert (=> b!7079022 m!7808730))

(declare-fun m!7808732 () Bool)

(assert (=> b!7079022 m!7808732))

(declare-fun m!7808734 () Bool)

(assert (=> b!7079022 m!7808734))

(declare-fun m!7808736 () Bool)

(assert (=> b!7079022 m!7808736))

(declare-fun m!7808738 () Bool)

(assert (=> b!7079022 m!7808738))

(declare-fun m!7808740 () Bool)

(assert (=> b!7079022 m!7808740))

(declare-fun m!7808742 () Bool)

(assert (=> b!7079022 m!7808742))

(assert (=> b!7079022 m!7808674))

(declare-fun m!7808744 () Bool)

(assert (=> b!7079030 m!7808744))

(declare-fun m!7808746 () Bool)

(assert (=> b!7079035 m!7808746))

(declare-fun m!7808748 () Bool)

(assert (=> b!7079035 m!7808748))

(declare-fun m!7808750 () Bool)

(assert (=> b!7079035 m!7808750))

(declare-fun m!7808752 () Bool)

(assert (=> b!7079035 m!7808752))

(assert (=> b!7079035 m!7808720))

(declare-fun m!7808754 () Bool)

(assert (=> b!7079025 m!7808754))

(declare-fun m!7808756 () Bool)

(assert (=> b!7079025 m!7808756))

(declare-fun m!7808758 () Bool)

(assert (=> b!7079025 m!7808758))

(declare-fun m!7808760 () Bool)

(assert (=> b!7079025 m!7808760))

(declare-fun m!7808762 () Bool)

(assert (=> b!7079025 m!7808762))

(declare-fun m!7808764 () Bool)

(assert (=> b!7079034 m!7808764))

(assert (=> b!7079034 m!7808720))

(declare-fun m!7808766 () Bool)

(assert (=> b!7079026 m!7808766))

(declare-fun m!7808768 () Bool)

(assert (=> b!7079026 m!7808768))

(declare-fun m!7808770 () Bool)

(assert (=> b!7079026 m!7808770))

(declare-fun m!7808772 () Bool)

(assert (=> b!7079026 m!7808772))

(declare-fun m!7808774 () Bool)

(assert (=> b!7079026 m!7808774))

(declare-fun m!7808776 () Bool)

(assert (=> b!7079026 m!7808776))

(push 1)

(assert (not b!7079034))

(assert (not b!7079031))

(assert (not b!7079036))

(assert (not b!7079026))

(assert (not b!7079019))

(assert (not b!7079025))

(assert (not b!7079020))

(assert (not b!7079035))

(assert (not setNonEmpty!50446))

(assert (not b!7079028))

(assert (not start!688374))

(assert (not b!7079022))

(assert (not b!7079032))

(assert (not b!7079029))

(assert tp_is_empty!44585)

(assert (not b!7079033))

(assert (not b!7079023))

(assert (not b!7079017))

(assert (not b!7079030))

(assert (not b!7079021))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2214064 () Bool)

(assert (=> d!2214064 (= (isEmpty!39953 (exprs!7176 lt!2551097)) (is-Nil!68443 (exprs!7176 lt!2551097)))))

(assert (=> b!7079017 d!2214064))

(declare-fun d!2214066 () Bool)

(declare-fun c!1321077 () Bool)

(declare-fun isEmpty!39955 (List!68566) Bool)

(assert (=> d!2214066 (= c!1321077 (isEmpty!39955 (t!382351 s!7408)))))

(declare-fun e!4255951 () Bool)

(assert (=> d!2214066 (= (matchZipper!3220 lt!2551089 (t!382351 s!7408)) e!4255951)))

(declare-fun b!7079113 () Bool)

(declare-fun nullableZipper!2721 ((Set Context!13352)) Bool)

(assert (=> b!7079113 (= e!4255951 (nullableZipper!2721 lt!2551089))))

(declare-fun b!7079114 () Bool)

(declare-fun head!14430 (List!68566) C!35630)

(declare-fun tail!13887 (List!68566) List!68566)

(assert (=> b!7079114 (= e!4255951 (matchZipper!3220 (derivationStepZipper!3130 lt!2551089 (head!14430 (t!382351 s!7408))) (tail!13887 (t!382351 s!7408))))))

(assert (= (and d!2214066 c!1321077) b!7079113))

(assert (= (and d!2214066 (not c!1321077)) b!7079114))

(declare-fun m!7808888 () Bool)

(assert (=> d!2214066 m!7808888))

(declare-fun m!7808890 () Bool)

(assert (=> b!7079113 m!7808890))

(declare-fun m!7808892 () Bool)

(assert (=> b!7079114 m!7808892))

(assert (=> b!7079114 m!7808892))

(declare-fun m!7808894 () Bool)

(assert (=> b!7079114 m!7808894))

(declare-fun m!7808896 () Bool)

(assert (=> b!7079114 m!7808896))

(assert (=> b!7079114 m!7808894))

(assert (=> b!7079114 m!7808896))

(declare-fun m!7808898 () Bool)

(assert (=> b!7079114 m!7808898))

(assert (=> b!7079036 d!2214066))

(declare-fun bm!643429 () Bool)

(declare-fun c!1321092 () Bool)

(declare-fun c!1321088 () Bool)

(declare-fun call!643439 () List!68567)

(declare-fun call!643436 () (Set Context!13352))

(declare-fun c!1321091 () Bool)

(assert (=> bm!643429 (= call!643436 (derivationStepZipperDown!2314 (ite c!1321091 (regOne!35873 (h!74891 (exprs!7176 lt!2551097))) (ite c!1321092 (regTwo!35872 (h!74891 (exprs!7176 lt!2551097))) (ite c!1321088 (regOne!35872 (h!74891 (exprs!7176 lt!2551097))) (reg!18009 (h!74891 (exprs!7176 lt!2551097)))))) (ite (or c!1321091 c!1321092) (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306))) (Context!13353 call!643439)) (h!74890 s!7408)))))

(declare-fun b!7079137 () Bool)

(declare-fun e!4255968 () (Set Context!13352))

(assert (=> b!7079137 (= e!4255968 (set.insert (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306))) (as set.empty (Set Context!13352))))))

(declare-fun b!7079138 () Bool)

(declare-fun e!4255964 () (Set Context!13352))

(declare-fun call!643438 () (Set Context!13352))

(assert (=> b!7079138 (= e!4255964 call!643438)))

(declare-fun b!7079139 () Bool)

(declare-fun e!4255967 () Bool)

(assert (=> b!7079139 (= c!1321092 e!4255967)))

(declare-fun res!2891668 () Bool)

(assert (=> b!7079139 (=> (not res!2891668) (not e!4255967))))

(assert (=> b!7079139 (= res!2891668 (is-Concat!26525 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun e!4255965 () (Set Context!13352))

(declare-fun e!4255966 () (Set Context!13352))

(assert (=> b!7079139 (= e!4255965 e!4255966)))

(declare-fun bm!643430 () Bool)

(declare-fun call!643437 () List!68567)

(assert (=> bm!643430 (= call!643439 call!643437)))

(declare-fun bm!643431 () Bool)

(declare-fun $colon$colon!2678 (List!68567 Regex!17680) List!68567)

(assert (=> bm!643431 (= call!643437 ($colon$colon!2678 (exprs!7176 (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306)))) (ite (or c!1321092 c!1321088) (regTwo!35872 (h!74891 (exprs!7176 lt!2551097))) (h!74891 (exprs!7176 lt!2551097)))))))

(declare-fun b!7079140 () Bool)

(declare-fun call!643434 () (Set Context!13352))

(assert (=> b!7079140 (= e!4255965 (set.union call!643436 call!643434))))

(declare-fun b!7079141 () Bool)

(assert (=> b!7079141 (= e!4255967 (nullable!7363 (regOne!35872 (h!74891 (exprs!7176 lt!2551097)))))))

(declare-fun bm!643432 () Bool)

(declare-fun call!643435 () (Set Context!13352))

(assert (=> bm!643432 (= call!643438 call!643435)))

(declare-fun b!7079142 () Bool)

(assert (=> b!7079142 (= e!4255964 (as set.empty (Set Context!13352)))))

(declare-fun bm!643433 () Bool)

(assert (=> bm!643433 (= call!643435 call!643436)))

(declare-fun b!7079144 () Bool)

(declare-fun c!1321089 () Bool)

(assert (=> b!7079144 (= c!1321089 (is-Star!17680 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun e!4255969 () (Set Context!13352))

(assert (=> b!7079144 (= e!4255969 e!4255964)))

(declare-fun bm!643434 () Bool)

(assert (=> bm!643434 (= call!643434 (derivationStepZipperDown!2314 (ite c!1321091 (regTwo!35873 (h!74891 (exprs!7176 lt!2551097))) (regOne!35872 (h!74891 (exprs!7176 lt!2551097)))) (ite c!1321091 (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306))) (Context!13353 call!643437)) (h!74890 s!7408)))))

(declare-fun b!7079145 () Bool)

(assert (=> b!7079145 (= e!4255969 call!643438)))

(declare-fun b!7079146 () Bool)

(assert (=> b!7079146 (= e!4255968 e!4255965)))

(assert (=> b!7079146 (= c!1321091 (is-Union!17680 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun b!7079147 () Bool)

(assert (=> b!7079147 (= e!4255966 e!4255969)))

(assert (=> b!7079147 (= c!1321088 (is-Concat!26525 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun b!7079143 () Bool)

(assert (=> b!7079143 (= e!4255966 (set.union call!643434 call!643435))))

(declare-fun d!2214068 () Bool)

(declare-fun c!1321090 () Bool)

(assert (=> d!2214068 (= c!1321090 (and (is-ElementMatch!17680 (h!74891 (exprs!7176 lt!2551097))) (= (c!1321061 (h!74891 (exprs!7176 lt!2551097))) (h!74890 s!7408))))))

(assert (=> d!2214068 (= (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) (Context!13353 (++!15835 lt!2551096 (exprs!7176 ct2!306))) (h!74890 s!7408)) e!4255968)))

(assert (= (and d!2214068 c!1321090) b!7079137))

(assert (= (and d!2214068 (not c!1321090)) b!7079146))

(assert (= (and b!7079146 c!1321091) b!7079140))

(assert (= (and b!7079146 (not c!1321091)) b!7079139))

(assert (= (and b!7079139 res!2891668) b!7079141))

(assert (= (and b!7079139 c!1321092) b!7079143))

(assert (= (and b!7079139 (not c!1321092)) b!7079147))

(assert (= (and b!7079147 c!1321088) b!7079145))

(assert (= (and b!7079147 (not c!1321088)) b!7079144))

(assert (= (and b!7079144 c!1321089) b!7079138))

(assert (= (and b!7079144 (not c!1321089)) b!7079142))

(assert (= (or b!7079145 b!7079138) bm!643430))

(assert (= (or b!7079145 b!7079138) bm!643432))

(assert (= (or b!7079143 bm!643432) bm!643433))

(assert (= (or b!7079143 bm!643430) bm!643431))

(assert (= (or b!7079140 bm!643433) bm!643429))

(assert (= (or b!7079140 b!7079143) bm!643434))

(declare-fun m!7808900 () Bool)

(assert (=> bm!643431 m!7808900))

(declare-fun m!7808902 () Bool)

(assert (=> b!7079137 m!7808902))

(declare-fun m!7808904 () Bool)

(assert (=> bm!643429 m!7808904))

(declare-fun m!7808906 () Bool)

(assert (=> bm!643434 m!7808906))

(declare-fun m!7808908 () Bool)

(assert (=> b!7079141 m!7808908))

(assert (=> b!7079036 d!2214068))

(declare-fun b!7079158 () Bool)

(declare-fun res!2891674 () Bool)

(declare-fun e!4255975 () Bool)

(assert (=> b!7079158 (=> (not res!2891674) (not e!4255975))))

(declare-fun lt!2551217 () List!68567)

(declare-fun size!41248 (List!68567) Int)

(assert (=> b!7079158 (= res!2891674 (= (size!41248 lt!2551217) (+ (size!41248 lt!2551096) (size!41248 (exprs!7176 ct2!306)))))))

(declare-fun b!7079159 () Bool)

(assert (=> b!7079159 (= e!4255975 (or (not (= (exprs!7176 ct2!306) Nil!68443)) (= lt!2551217 lt!2551096)))))

(declare-fun d!2214070 () Bool)

(assert (=> d!2214070 e!4255975))

(declare-fun res!2891673 () Bool)

(assert (=> d!2214070 (=> (not res!2891673) (not e!4255975))))

(declare-fun content!13858 (List!68567) (Set Regex!17680))

(assert (=> d!2214070 (= res!2891673 (= (content!13858 lt!2551217) (set.union (content!13858 lt!2551096) (content!13858 (exprs!7176 ct2!306)))))))

(declare-fun e!4255974 () List!68567)

(assert (=> d!2214070 (= lt!2551217 e!4255974)))

(declare-fun c!1321095 () Bool)

(assert (=> d!2214070 (= c!1321095 (is-Nil!68443 lt!2551096))))

(assert (=> d!2214070 (= (++!15835 lt!2551096 (exprs!7176 ct2!306)) lt!2551217)))

(declare-fun b!7079156 () Bool)

(assert (=> b!7079156 (= e!4255974 (exprs!7176 ct2!306))))

(declare-fun b!7079157 () Bool)

(assert (=> b!7079157 (= e!4255974 (Cons!68443 (h!74891 lt!2551096) (++!15835 (t!382352 lt!2551096) (exprs!7176 ct2!306))))))

(assert (= (and d!2214070 c!1321095) b!7079156))

(assert (= (and d!2214070 (not c!1321095)) b!7079157))

(assert (= (and d!2214070 res!2891673) b!7079158))

(assert (= (and b!7079158 res!2891674) b!7079159))

(declare-fun m!7808910 () Bool)

(assert (=> b!7079158 m!7808910))

(declare-fun m!7808912 () Bool)

(assert (=> b!7079158 m!7808912))

(declare-fun m!7808914 () Bool)

(assert (=> b!7079158 m!7808914))

(declare-fun m!7808916 () Bool)

(assert (=> d!2214070 m!7808916))

(declare-fun m!7808918 () Bool)

(assert (=> d!2214070 m!7808918))

(declare-fun m!7808920 () Bool)

(assert (=> d!2214070 m!7808920))

(declare-fun m!7808922 () Bool)

(assert (=> b!7079157 m!7808922))

(assert (=> b!7079036 d!2214070))

(declare-fun d!2214072 () Bool)

(declare-fun forall!16640 (List!68567 Int) Bool)

(assert (=> d!2214072 (forall!16640 (++!15835 lt!2551096 (exprs!7176 ct2!306)) lambda!427370)))

(declare-fun lt!2551220 () Unit!162071)

(declare-fun choose!54403 (List!68567 List!68567 Int) Unit!162071)

(assert (=> d!2214072 (= lt!2551220 (choose!54403 lt!2551096 (exprs!7176 ct2!306) lambda!427370))))

(assert (=> d!2214072 (forall!16640 lt!2551096 lambda!427370)))

(assert (=> d!2214072 (= (lemmaConcatPreservesForall!991 lt!2551096 (exprs!7176 ct2!306) lambda!427370) lt!2551220)))

(declare-fun bs!1881791 () Bool)

(assert (= bs!1881791 d!2214072))

(assert (=> bs!1881791 m!7808670))

(assert (=> bs!1881791 m!7808670))

(declare-fun m!7808924 () Bool)

(assert (=> bs!1881791 m!7808924))

(declare-fun m!7808926 () Bool)

(assert (=> bs!1881791 m!7808926))

(declare-fun m!7808928 () Bool)

(assert (=> bs!1881791 m!7808928))

(assert (=> b!7079036 d!2214072))

(declare-fun d!2214074 () Bool)

(declare-fun c!1321096 () Bool)

(assert (=> d!2214074 (= c!1321096 (isEmpty!39955 s!7408))))

(declare-fun e!4255976 () Bool)

(assert (=> d!2214074 (= (matchZipper!3220 lt!2551110 s!7408) e!4255976)))

(declare-fun b!7079160 () Bool)

(assert (=> b!7079160 (= e!4255976 (nullableZipper!2721 lt!2551110))))

(declare-fun b!7079161 () Bool)

(assert (=> b!7079161 (= e!4255976 (matchZipper!3220 (derivationStepZipper!3130 lt!2551110 (head!14430 s!7408)) (tail!13887 s!7408)))))

(assert (= (and d!2214074 c!1321096) b!7079160))

(assert (= (and d!2214074 (not c!1321096)) b!7079161))

(declare-fun m!7808930 () Bool)

(assert (=> d!2214074 m!7808930))

(declare-fun m!7808932 () Bool)

(assert (=> b!7079160 m!7808932))

(declare-fun m!7808934 () Bool)

(assert (=> b!7079161 m!7808934))

(assert (=> b!7079161 m!7808934))

(declare-fun m!7808936 () Bool)

(assert (=> b!7079161 m!7808936))

(declare-fun m!7808938 () Bool)

(assert (=> b!7079161 m!7808938))

(assert (=> b!7079161 m!7808936))

(assert (=> b!7079161 m!7808938))

(declare-fun m!7808940 () Bool)

(assert (=> b!7079161 m!7808940))

(assert (=> start!688374 d!2214074))

(declare-fun bs!1881792 () Bool)

(declare-fun d!2214076 () Bool)

(assert (= bs!1881792 (and d!2214076 b!7079020)))

(declare-fun lambda!427406 () Int)

(assert (=> bs!1881792 (= lambda!427406 lambda!427369)))

(assert (=> d!2214076 true))

(declare-fun map!16030 ((Set Context!13352) Int) (Set Context!13352))

(assert (=> d!2214076 (= (appendTo!801 z1!570 ct2!306) (map!16030 z1!570 lambda!427406))))

(declare-fun bs!1881793 () Bool)

(assert (= bs!1881793 d!2214076))

(declare-fun m!7808942 () Bool)

(assert (=> bs!1881793 m!7808942))

(assert (=> start!688374 d!2214076))

(declare-fun bs!1881794 () Bool)

(declare-fun d!2214078 () Bool)

(assert (= bs!1881794 (and d!2214078 b!7079020)))

(declare-fun lambda!427409 () Int)

(assert (=> bs!1881794 (= lambda!427409 lambda!427370)))

(assert (=> d!2214078 (= (inv!87060 ct2!306) (forall!16640 (exprs!7176 ct2!306) lambda!427409))))

(declare-fun bs!1881795 () Bool)

(assert (= bs!1881795 d!2214078))

(declare-fun m!7808944 () Bool)

(assert (=> bs!1881795 m!7808944))

(assert (=> start!688374 d!2214078))

(declare-fun d!2214080 () Bool)

(assert (=> d!2214080 (forall!16640 (++!15835 (exprs!7176 lt!2551097) (exprs!7176 ct2!306)) lambda!427370)))

(declare-fun lt!2551223 () Unit!162071)

(assert (=> d!2214080 (= lt!2551223 (choose!54403 (exprs!7176 lt!2551097) (exprs!7176 ct2!306) lambda!427370))))

(assert (=> d!2214080 (forall!16640 (exprs!7176 lt!2551097) lambda!427370)))

(assert (=> d!2214080 (= (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551097) (exprs!7176 ct2!306) lambda!427370) lt!2551223)))

(declare-fun bs!1881796 () Bool)

(assert (= bs!1881796 d!2214080))

(assert (=> bs!1881796 m!7808718))

(assert (=> bs!1881796 m!7808718))

(declare-fun m!7808946 () Bool)

(assert (=> bs!1881796 m!7808946))

(declare-fun m!7808948 () Bool)

(assert (=> bs!1881796 m!7808948))

(declare-fun m!7808950 () Bool)

(assert (=> bs!1881796 m!7808950))

(assert (=> b!7079035 d!2214080))

(declare-fun bs!1881797 () Bool)

(declare-fun d!2214082 () Bool)

(assert (= bs!1881797 (and d!2214082 b!7079035)))

(declare-fun lambda!427412 () Int)

(assert (=> bs!1881797 (= lambda!427412 lambda!427371)))

(assert (=> d!2214082 true))

(assert (=> d!2214082 (= (derivationStepZipper!3130 lt!2551082 (h!74890 s!7408)) (flatMap!2606 lt!2551082 lambda!427412))))

(declare-fun bs!1881798 () Bool)

(assert (= bs!1881798 d!2214082))

(declare-fun m!7808952 () Bool)

(assert (=> bs!1881798 m!7808952))

(assert (=> b!7079035 d!2214082))

(declare-fun d!2214084 () Bool)

(declare-fun choose!54404 ((Set Context!13352) Int) (Set Context!13352))

(assert (=> d!2214084 (= (flatMap!2606 lt!2551082 lambda!427371) (choose!54404 lt!2551082 lambda!427371))))

(declare-fun bs!1881799 () Bool)

(assert (= bs!1881799 d!2214084))

(declare-fun m!7808954 () Bool)

(assert (=> bs!1881799 m!7808954))

(assert (=> b!7079035 d!2214084))

(declare-fun d!2214086 () Bool)

(declare-fun dynLambda!27883 (Int Context!13352) (Set Context!13352))

(assert (=> d!2214086 (= (flatMap!2606 lt!2551082 lambda!427371) (dynLambda!27883 lambda!427371 lt!2551113))))

(declare-fun lt!2551226 () Unit!162071)

(declare-fun choose!54405 ((Set Context!13352) Context!13352 Int) Unit!162071)

(assert (=> d!2214086 (= lt!2551226 (choose!54405 lt!2551082 lt!2551113 lambda!427371))))

(assert (=> d!2214086 (= lt!2551082 (set.insert lt!2551113 (as set.empty (Set Context!13352))))))

(assert (=> d!2214086 (= (lemmaFlatMapOnSingletonSet!2115 lt!2551082 lt!2551113 lambda!427371) lt!2551226)))

(declare-fun b_lambda!270441 () Bool)

(assert (=> (not b_lambda!270441) (not d!2214086)))

(declare-fun bs!1881800 () Bool)

(assert (= bs!1881800 d!2214086))

(assert (=> bs!1881800 m!7808748))

(declare-fun m!7808956 () Bool)

(assert (=> bs!1881800 m!7808956))

(declare-fun m!7808958 () Bool)

(assert (=> bs!1881800 m!7808958))

(assert (=> bs!1881800 m!7808764))

(assert (=> b!7079035 d!2214086))

(declare-fun call!643442 () (Set Context!13352))

(declare-fun e!4255983 () (Set Context!13352))

(declare-fun b!7079174 () Bool)

(assert (=> b!7079174 (= e!4255983 (set.union call!643442 (derivationStepZipperUp!2264 (Context!13353 (t!382352 (exprs!7176 lt!2551113))) (h!74890 s!7408))))))

(declare-fun b!7079175 () Bool)

(declare-fun e!4255984 () Bool)

(assert (=> b!7079175 (= e!4255984 (nullable!7363 (h!74891 (exprs!7176 lt!2551113))))))

(declare-fun bm!643437 () Bool)

(assert (=> bm!643437 (= call!643442 (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551113)) (Context!13353 (t!382352 (exprs!7176 lt!2551113))) (h!74890 s!7408)))))

(declare-fun b!7079176 () Bool)

(declare-fun e!4255985 () (Set Context!13352))

(assert (=> b!7079176 (= e!4255985 (as set.empty (Set Context!13352)))))

(declare-fun b!7079177 () Bool)

(assert (=> b!7079177 (= e!4255983 e!4255985)))

(declare-fun c!1321104 () Bool)

(assert (=> b!7079177 (= c!1321104 (is-Cons!68443 (exprs!7176 lt!2551113)))))

(declare-fun b!7079178 () Bool)

(assert (=> b!7079178 (= e!4255985 call!643442)))

(declare-fun d!2214088 () Bool)

(declare-fun c!1321105 () Bool)

(assert (=> d!2214088 (= c!1321105 e!4255984)))

(declare-fun res!2891678 () Bool)

(assert (=> d!2214088 (=> (not res!2891678) (not e!4255984))))

(assert (=> d!2214088 (= res!2891678 (is-Cons!68443 (exprs!7176 lt!2551113)))))

(assert (=> d!2214088 (= (derivationStepZipperUp!2264 lt!2551113 (h!74890 s!7408)) e!4255983)))

(assert (= (and d!2214088 res!2891678) b!7079175))

(assert (= (and d!2214088 c!1321105) b!7079174))

(assert (= (and d!2214088 (not c!1321105)) b!7079177))

(assert (= (and b!7079177 c!1321104) b!7079178))

(assert (= (and b!7079177 (not c!1321104)) b!7079176))

(assert (= (or b!7079174 b!7079178) bm!643437))

(declare-fun m!7808960 () Bool)

(assert (=> b!7079174 m!7808960))

(declare-fun m!7808962 () Bool)

(assert (=> b!7079175 m!7808962))

(declare-fun m!7808964 () Bool)

(assert (=> bm!643437 m!7808964))

(assert (=> b!7079035 d!2214088))

(declare-fun d!2214090 () Bool)

(assert (=> d!2214090 (= (flatMap!2606 lt!2551102 lambda!427371) (choose!54404 lt!2551102 lambda!427371))))

(declare-fun bs!1881801 () Bool)

(assert (= bs!1881801 d!2214090))

(declare-fun m!7808966 () Bool)

(assert (=> bs!1881801 m!7808966))

(assert (=> b!7079025 d!2214090))

(declare-fun e!4255986 () (Set Context!13352))

(declare-fun call!643443 () (Set Context!13352))

(declare-fun b!7079179 () Bool)

(assert (=> b!7079179 (= e!4255986 (set.union call!643443 (derivationStepZipperUp!2264 (Context!13353 (t!382352 (exprs!7176 lt!2551097))) (h!74890 s!7408))))))

(declare-fun b!7079180 () Bool)

(declare-fun e!4255987 () Bool)

(assert (=> b!7079180 (= e!4255987 (nullable!7363 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun bm!643438 () Bool)

(assert (=> bm!643438 (= call!643443 (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) (Context!13353 (t!382352 (exprs!7176 lt!2551097))) (h!74890 s!7408)))))

(declare-fun b!7079181 () Bool)

(declare-fun e!4255988 () (Set Context!13352))

(assert (=> b!7079181 (= e!4255988 (as set.empty (Set Context!13352)))))

(declare-fun b!7079182 () Bool)

(assert (=> b!7079182 (= e!4255986 e!4255988)))

(declare-fun c!1321106 () Bool)

(assert (=> b!7079182 (= c!1321106 (is-Cons!68443 (exprs!7176 lt!2551097)))))

(declare-fun b!7079183 () Bool)

(assert (=> b!7079183 (= e!4255988 call!643443)))

(declare-fun d!2214092 () Bool)

(declare-fun c!1321107 () Bool)

(assert (=> d!2214092 (= c!1321107 e!4255987)))

(declare-fun res!2891679 () Bool)

(assert (=> d!2214092 (=> (not res!2891679) (not e!4255987))))

(assert (=> d!2214092 (= res!2891679 (is-Cons!68443 (exprs!7176 lt!2551097)))))

(assert (=> d!2214092 (= (derivationStepZipperUp!2264 lt!2551097 (h!74890 s!7408)) e!4255986)))

(assert (= (and d!2214092 res!2891679) b!7079180))

(assert (= (and d!2214092 c!1321107) b!7079179))

(assert (= (and d!2214092 (not c!1321107)) b!7079182))

(assert (= (and b!7079182 c!1321106) b!7079183))

(assert (= (and b!7079182 (not c!1321106)) b!7079181))

(assert (= (or b!7079179 b!7079183) bm!643438))

(declare-fun m!7808968 () Bool)

(assert (=> b!7079179 m!7808968))

(assert (=> b!7079180 m!7808676))

(declare-fun m!7808970 () Bool)

(assert (=> bm!643438 m!7808970))

(assert (=> b!7079025 d!2214092))

(declare-fun d!2214094 () Bool)

(assert (=> d!2214094 (= (flatMap!2606 lt!2551102 lambda!427371) (dynLambda!27883 lambda!427371 lt!2551097))))

(declare-fun lt!2551227 () Unit!162071)

(assert (=> d!2214094 (= lt!2551227 (choose!54405 lt!2551102 lt!2551097 lambda!427371))))

(assert (=> d!2214094 (= lt!2551102 (set.insert lt!2551097 (as set.empty (Set Context!13352))))))

(assert (=> d!2214094 (= (lemmaFlatMapOnSingletonSet!2115 lt!2551102 lt!2551097 lambda!427371) lt!2551227)))

(declare-fun b_lambda!270443 () Bool)

(assert (=> (not b_lambda!270443) (not d!2214094)))

(declare-fun bs!1881802 () Bool)

(assert (= bs!1881802 d!2214094))

(assert (=> bs!1881802 m!7808754))

(declare-fun m!7808972 () Bool)

(assert (=> bs!1881802 m!7808972))

(declare-fun m!7808974 () Bool)

(assert (=> bs!1881802 m!7808974))

(assert (=> bs!1881802 m!7808758))

(assert (=> b!7079025 d!2214094))

(declare-fun bs!1881803 () Bool)

(declare-fun d!2214096 () Bool)

(assert (= bs!1881803 (and d!2214096 b!7079035)))

(declare-fun lambda!427413 () Int)

(assert (=> bs!1881803 (= lambda!427413 lambda!427371)))

(declare-fun bs!1881804 () Bool)

(assert (= bs!1881804 (and d!2214096 d!2214082)))

(assert (=> bs!1881804 (= lambda!427413 lambda!427412)))

(assert (=> d!2214096 true))

(assert (=> d!2214096 (= (derivationStepZipper!3130 lt!2551102 (h!74890 s!7408)) (flatMap!2606 lt!2551102 lambda!427413))))

(declare-fun bs!1881805 () Bool)

(assert (= bs!1881805 d!2214096))

(declare-fun m!7808976 () Bool)

(assert (=> bs!1881805 m!7808976))

(assert (=> b!7079025 d!2214096))

(declare-fun d!2214098 () Bool)

(declare-fun e!4255991 () Bool)

(assert (=> d!2214098 e!4255991))

(declare-fun res!2891682 () Bool)

(assert (=> d!2214098 (=> (not res!2891682) (not e!4255991))))

(declare-fun lt!2551230 () List!68568)

(declare-fun noDuplicate!2749 (List!68568) Bool)

(assert (=> d!2214098 (= res!2891682 (noDuplicate!2749 lt!2551230))))

(declare-fun choose!54406 ((Set Context!13352)) List!68568)

(assert (=> d!2214098 (= lt!2551230 (choose!54406 lt!2551110))))

(assert (=> d!2214098 (= (toList!11021 lt!2551110) lt!2551230)))

(declare-fun b!7079186 () Bool)

(assert (=> b!7079186 (= e!4255991 (= (content!13856 lt!2551230) lt!2551110))))

(assert (= (and d!2214098 res!2891682) b!7079186))

(declare-fun m!7808978 () Bool)

(assert (=> d!2214098 m!7808978))

(declare-fun m!7808980 () Bool)

(assert (=> d!2214098 m!7808980))

(declare-fun m!7808982 () Bool)

(assert (=> b!7079186 m!7808982))

(assert (=> b!7079026 d!2214098))

(declare-fun bs!1881806 () Bool)

(declare-fun d!2214100 () Bool)

(assert (= bs!1881806 (and d!2214100 b!7079026)))

(declare-fun lambda!427416 () Int)

(assert (=> bs!1881806 (not (= lambda!427416 lambda!427368))))

(declare-fun bs!1881807 () Bool)

(assert (= bs!1881807 (and d!2214100 b!7079033)))

(assert (=> bs!1881807 (not (= lambda!427416 lambda!427372))))

(assert (=> d!2214100 true))

(declare-fun order!28455 () Int)

(declare-fun dynLambda!27884 (Int Int) Int)

(assert (=> d!2214100 (< (dynLambda!27884 order!28455 lambda!427368) (dynLambda!27884 order!28455 lambda!427416))))

(declare-fun forall!16641 (List!68568 Int) Bool)

(assert (=> d!2214100 (= (exists!3755 lt!2551091 lambda!427368) (not (forall!16641 lt!2551091 lambda!427416)))))

(declare-fun bs!1881808 () Bool)

(assert (= bs!1881808 d!2214100))

(declare-fun m!7808984 () Bool)

(assert (=> bs!1881808 m!7808984))

(assert (=> b!7079026 d!2214100))

(declare-fun bs!1881809 () Bool)

(declare-fun d!2214102 () Bool)

(assert (= bs!1881809 (and d!2214102 b!7079026)))

(declare-fun lambda!427419 () Int)

(assert (=> bs!1881809 (= lambda!427419 lambda!427368)))

(declare-fun bs!1881810 () Bool)

(assert (= bs!1881810 (and d!2214102 b!7079033)))

(assert (=> bs!1881810 (= (= s!7408 lt!2551090) (= lambda!427419 lambda!427372))))

(declare-fun bs!1881811 () Bool)

(assert (= bs!1881811 (and d!2214102 d!2214100)))

(assert (=> bs!1881811 (not (= lambda!427419 lambda!427416))))

(assert (=> d!2214102 true))

(assert (=> d!2214102 (exists!3755 lt!2551091 lambda!427419)))

(declare-fun lt!2551233 () Unit!162071)

(declare-fun choose!54407 (List!68568 List!68566) Unit!162071)

(assert (=> d!2214102 (= lt!2551233 (choose!54407 lt!2551091 s!7408))))

(assert (=> d!2214102 (matchZipper!3220 (content!13856 lt!2551091) s!7408)))

(assert (=> d!2214102 (= (lemmaZipperMatchesExistsMatchingContext!601 lt!2551091 s!7408) lt!2551233)))

(declare-fun bs!1881812 () Bool)

(assert (= bs!1881812 d!2214102))

(declare-fun m!7808986 () Bool)

(assert (=> bs!1881812 m!7808986))

(declare-fun m!7808988 () Bool)

(assert (=> bs!1881812 m!7808988))

(declare-fun m!7808990 () Bool)

(assert (=> bs!1881812 m!7808990))

(assert (=> bs!1881812 m!7808990))

(declare-fun m!7808992 () Bool)

(assert (=> bs!1881812 m!7808992))

(assert (=> b!7079026 d!2214102))

(declare-fun d!2214104 () Bool)

(declare-fun e!4255994 () Bool)

(assert (=> d!2214104 e!4255994))

(declare-fun res!2891685 () Bool)

(assert (=> d!2214104 (=> (not res!2891685) (not e!4255994))))

(declare-fun lt!2551236 () Context!13352)

(declare-fun dynLambda!27885 (Int Context!13352) Bool)

(assert (=> d!2214104 (= res!2891685 (dynLambda!27885 lambda!427368 lt!2551236))))

(declare-fun getWitness!1804 (List!68568 Int) Context!13352)

(assert (=> d!2214104 (= lt!2551236 (getWitness!1804 (toList!11021 lt!2551110) lambda!427368))))

(assert (=> d!2214104 (exists!3756 lt!2551110 lambda!427368)))

(assert (=> d!2214104 (= (getWitness!1802 lt!2551110 lambda!427368) lt!2551236)))

(declare-fun b!7079191 () Bool)

(assert (=> b!7079191 (= e!4255994 (set.member lt!2551236 lt!2551110))))

(assert (= (and d!2214104 res!2891685) b!7079191))

(declare-fun b_lambda!270445 () Bool)

(assert (=> (not b_lambda!270445) (not d!2214104)))

(declare-fun m!7808994 () Bool)

(assert (=> d!2214104 m!7808994))

(assert (=> d!2214104 m!7808766))

(assert (=> d!2214104 m!7808766))

(declare-fun m!7808996 () Bool)

(assert (=> d!2214104 m!7808996))

(declare-fun m!7808998 () Bool)

(assert (=> d!2214104 m!7808998))

(declare-fun m!7809000 () Bool)

(assert (=> b!7079191 m!7809000))

(assert (=> b!7079026 d!2214104))

(declare-fun d!2214106 () Bool)

(declare-fun c!1321110 () Bool)

(assert (=> d!2214106 (= c!1321110 (isEmpty!39955 s!7408))))

(declare-fun e!4255995 () Bool)

(assert (=> d!2214106 (= (matchZipper!3220 lt!2551105 s!7408) e!4255995)))

(declare-fun b!7079192 () Bool)

(assert (=> b!7079192 (= e!4255995 (nullableZipper!2721 lt!2551105))))

(declare-fun b!7079193 () Bool)

(assert (=> b!7079193 (= e!4255995 (matchZipper!3220 (derivationStepZipper!3130 lt!2551105 (head!14430 s!7408)) (tail!13887 s!7408)))))

(assert (= (and d!2214106 c!1321110) b!7079192))

(assert (= (and d!2214106 (not c!1321110)) b!7079193))

(assert (=> d!2214106 m!7808930))

(declare-fun m!7809002 () Bool)

(assert (=> b!7079192 m!7809002))

(assert (=> b!7079193 m!7808934))

(assert (=> b!7079193 m!7808934))

(declare-fun m!7809004 () Bool)

(assert (=> b!7079193 m!7809004))

(assert (=> b!7079193 m!7808938))

(assert (=> b!7079193 m!7809004))

(assert (=> b!7079193 m!7808938))

(declare-fun m!7809006 () Bool)

(assert (=> b!7079193 m!7809006))

(assert (=> b!7079026 d!2214106))

(declare-fun d!2214108 () Bool)

(declare-fun c!1321111 () Bool)

(assert (=> d!2214108 (= c!1321111 (isEmpty!39955 lt!2551090))))

(declare-fun e!4255996 () Bool)

(assert (=> d!2214108 (= (matchZipper!3220 z1!570 lt!2551090) e!4255996)))

(declare-fun b!7079194 () Bool)

(assert (=> b!7079194 (= e!4255996 (nullableZipper!2721 z1!570))))

(declare-fun b!7079195 () Bool)

(assert (=> b!7079195 (= e!4255996 (matchZipper!3220 (derivationStepZipper!3130 z1!570 (head!14430 lt!2551090)) (tail!13887 lt!2551090)))))

(assert (= (and d!2214108 c!1321111) b!7079194))

(assert (= (and d!2214108 (not c!1321111)) b!7079195))

(declare-fun m!7809008 () Bool)

(assert (=> d!2214108 m!7809008))

(declare-fun m!7809010 () Bool)

(assert (=> b!7079194 m!7809010))

(declare-fun m!7809012 () Bool)

(assert (=> b!7079195 m!7809012))

(assert (=> b!7079195 m!7809012))

(declare-fun m!7809014 () Bool)

(assert (=> b!7079195 m!7809014))

(declare-fun m!7809016 () Bool)

(assert (=> b!7079195 m!7809016))

(assert (=> b!7079195 m!7809014))

(assert (=> b!7079195 m!7809016))

(declare-fun m!7809018 () Bool)

(assert (=> b!7079195 m!7809018))

(assert (=> b!7079033 d!2214108))

(declare-fun d!2214110 () Bool)

(assert (=> d!2214110 (exists!3756 z1!570 lambda!427372)))

(declare-fun lt!2551239 () Unit!162071)

(declare-fun choose!54408 ((Set Context!13352) Context!13352 Int) Unit!162071)

(assert (=> d!2214110 (= lt!2551239 (choose!54408 z1!570 lt!2551097 lambda!427372))))

(assert (=> d!2214110 (set.member lt!2551097 z1!570)))

(assert (=> d!2214110 (= (lemmaContainsThenExists!172 z1!570 lt!2551097 lambda!427372) lt!2551239)))

(declare-fun bs!1881813 () Bool)

(assert (= bs!1881813 d!2214110))

(assert (=> bs!1881813 m!7808698))

(declare-fun m!7809020 () Bool)

(assert (=> bs!1881813 m!7809020))

(assert (=> bs!1881813 m!7808716))

(assert (=> b!7079033 d!2214110))

(declare-fun d!2214112 () Bool)

(declare-fun lt!2551242 () Bool)

(assert (=> d!2214112 (= lt!2551242 (exists!3755 (toList!11021 z1!570) lambda!427372))))

(declare-fun choose!54409 ((Set Context!13352) Int) Bool)

(assert (=> d!2214112 (= lt!2551242 (choose!54409 z1!570 lambda!427372))))

(assert (=> d!2214112 (= (exists!3756 z1!570 lambda!427372) lt!2551242)))

(declare-fun bs!1881814 () Bool)

(assert (= bs!1881814 d!2214112))

(assert (=> bs!1881814 m!7808696))

(assert (=> bs!1881814 m!7808696))

(declare-fun m!7809022 () Bool)

(assert (=> bs!1881814 m!7809022))

(declare-fun m!7809024 () Bool)

(assert (=> bs!1881814 m!7809024))

(assert (=> b!7079033 d!2214112))

(declare-fun bs!1881815 () Bool)

(declare-fun d!2214114 () Bool)

(assert (= bs!1881815 (and d!2214114 b!7079026)))

(declare-fun lambda!427422 () Int)

(assert (=> bs!1881815 (= (= lt!2551090 s!7408) (= lambda!427422 lambda!427368))))

(declare-fun bs!1881816 () Bool)

(assert (= bs!1881816 (and d!2214114 b!7079033)))

(assert (=> bs!1881816 (= lambda!427422 lambda!427372)))

(declare-fun bs!1881817 () Bool)

(assert (= bs!1881817 (and d!2214114 d!2214100)))

(assert (=> bs!1881817 (not (= lambda!427422 lambda!427416))))

(declare-fun bs!1881818 () Bool)

(assert (= bs!1881818 (and d!2214114 d!2214102)))

(assert (=> bs!1881818 (= (= lt!2551090 s!7408) (= lambda!427422 lambda!427419))))

(assert (=> d!2214114 true))

(assert (=> d!2214114 (matchZipper!3220 (content!13856 lt!2551094) lt!2551090)))

(declare-fun lt!2551245 () Unit!162071)

(declare-fun choose!54410 (List!68568 List!68566) Unit!162071)

(assert (=> d!2214114 (= lt!2551245 (choose!54410 lt!2551094 lt!2551090))))

(assert (=> d!2214114 (exists!3755 lt!2551094 lambda!427422)))

(assert (=> d!2214114 (= (lemmaExistsMatchingContextThenMatchingString!65 lt!2551094 lt!2551090) lt!2551245)))

(declare-fun bs!1881819 () Bool)

(assert (= bs!1881819 d!2214114))

(assert (=> bs!1881819 m!7808708))

(assert (=> bs!1881819 m!7808708))

(assert (=> bs!1881819 m!7808714))

(declare-fun m!7809026 () Bool)

(assert (=> bs!1881819 m!7809026))

(declare-fun m!7809028 () Bool)

(assert (=> bs!1881819 m!7809028))

(assert (=> b!7079033 d!2214114))

(declare-fun d!2214116 () Bool)

(assert (=> d!2214116 (isDefined!13692 (findConcatSeparationZippers!507 lt!2551102 lt!2551103 Nil!68442 s!7408 s!7408))))

(declare-fun lt!2551248 () Unit!162071)

(declare-fun choose!54411 ((Set Context!13352) (Set Context!13352) List!68566 List!68566 List!68566 List!68566 List!68566) Unit!162071)

(assert (=> d!2214116 (= lt!2551248 (choose!54411 lt!2551102 lt!2551103 lt!2551090 (_2!37462 lt!2551107) s!7408 Nil!68442 s!7408))))

(assert (=> d!2214116 (matchZipper!3220 lt!2551102 lt!2551090)))

(assert (=> d!2214116 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!93 lt!2551102 lt!2551103 lt!2551090 (_2!37462 lt!2551107) s!7408 Nil!68442 s!7408) lt!2551248)))

(declare-fun bs!1881820 () Bool)

(assert (= bs!1881820 d!2214116))

(assert (=> bs!1881820 m!7808704))

(assert (=> bs!1881820 m!7808704))

(assert (=> bs!1881820 m!7808706))

(declare-fun m!7809030 () Bool)

(assert (=> bs!1881820 m!7809030))

(assert (=> bs!1881820 m!7808744))

(assert (=> b!7079033 d!2214116))

(declare-fun b!7079220 () Bool)

(declare-fun e!4256011 () Option!16991)

(assert (=> b!7079220 (= e!4256011 None!16990)))

(declare-fun b!7079221 () Bool)

(declare-fun lt!2551255 () Unit!162071)

(declare-fun lt!2551256 () Unit!162071)

(assert (=> b!7079221 (= lt!2551255 lt!2551256)))

(assert (=> b!7079221 (= (++!15836 (++!15836 Nil!68442 (Cons!68442 (h!74890 s!7408) Nil!68442)) (t!382351 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2990 (List!68566 C!35630 List!68566 List!68566) Unit!162071)

(assert (=> b!7079221 (= lt!2551256 (lemmaMoveElementToOtherListKeepsConcatEq!2990 Nil!68442 (h!74890 s!7408) (t!382351 s!7408) s!7408))))

(assert (=> b!7079221 (= e!4256011 (findConcatSeparationZippers!507 lt!2551102 lt!2551103 (++!15836 Nil!68442 (Cons!68442 (h!74890 s!7408) Nil!68442)) (t!382351 s!7408) s!7408))))

(declare-fun b!7079222 () Bool)

(declare-fun e!4256015 () Option!16991)

(assert (=> b!7079222 (= e!4256015 (Some!16990 (tuple2!68319 Nil!68442 s!7408)))))

(declare-fun d!2214120 () Bool)

(declare-fun e!4256013 () Bool)

(assert (=> d!2214120 e!4256013))

(declare-fun res!2891696 () Bool)

(assert (=> d!2214120 (=> res!2891696 e!4256013)))

(declare-fun e!4256014 () Bool)

(assert (=> d!2214120 (= res!2891696 e!4256014)))

(declare-fun res!2891697 () Bool)

(assert (=> d!2214120 (=> (not res!2891697) (not e!4256014))))

(declare-fun lt!2551257 () Option!16991)

(assert (=> d!2214120 (= res!2891697 (isDefined!13692 lt!2551257))))

(assert (=> d!2214120 (= lt!2551257 e!4256015)))

(declare-fun c!1321121 () Bool)

(declare-fun e!4256012 () Bool)

(assert (=> d!2214120 (= c!1321121 e!4256012)))

(declare-fun res!2891699 () Bool)

(assert (=> d!2214120 (=> (not res!2891699) (not e!4256012))))

(assert (=> d!2214120 (= res!2891699 (matchZipper!3220 lt!2551102 Nil!68442))))

(assert (=> d!2214120 (= (++!15836 Nil!68442 s!7408) s!7408)))

(assert (=> d!2214120 (= (findConcatSeparationZippers!507 lt!2551102 lt!2551103 Nil!68442 s!7408 s!7408) lt!2551257)))

(declare-fun b!7079223 () Bool)

(declare-fun res!2891700 () Bool)

(assert (=> b!7079223 (=> (not res!2891700) (not e!4256014))))

(assert (=> b!7079223 (= res!2891700 (matchZipper!3220 lt!2551103 (_2!37462 (get!23982 lt!2551257))))))

(declare-fun b!7079224 () Bool)

(assert (=> b!7079224 (= e!4256013 (not (isDefined!13692 lt!2551257)))))

(declare-fun b!7079225 () Bool)

(assert (=> b!7079225 (= e!4256014 (= (++!15836 (_1!37462 (get!23982 lt!2551257)) (_2!37462 (get!23982 lt!2551257))) s!7408))))

(declare-fun b!7079226 () Bool)

(assert (=> b!7079226 (= e!4256012 (matchZipper!3220 lt!2551103 s!7408))))

(declare-fun b!7079227 () Bool)

(assert (=> b!7079227 (= e!4256015 e!4256011)))

(declare-fun c!1321122 () Bool)

(assert (=> b!7079227 (= c!1321122 (is-Nil!68442 s!7408))))

(declare-fun b!7079228 () Bool)

(declare-fun res!2891698 () Bool)

(assert (=> b!7079228 (=> (not res!2891698) (not e!4256014))))

(assert (=> b!7079228 (= res!2891698 (matchZipper!3220 lt!2551102 (_1!37462 (get!23982 lt!2551257))))))

(assert (= (and d!2214120 res!2891699) b!7079226))

(assert (= (and d!2214120 c!1321121) b!7079222))

(assert (= (and d!2214120 (not c!1321121)) b!7079227))

(assert (= (and b!7079227 c!1321122) b!7079220))

(assert (= (and b!7079227 (not c!1321122)) b!7079221))

(assert (= (and d!2214120 res!2891697) b!7079228))

(assert (= (and b!7079228 res!2891698) b!7079223))

(assert (= (and b!7079223 res!2891700) b!7079225))

(assert (= (and d!2214120 (not res!2891696)) b!7079224))

(declare-fun m!7809044 () Bool)

(assert (=> b!7079221 m!7809044))

(assert (=> b!7079221 m!7809044))

(declare-fun m!7809046 () Bool)

(assert (=> b!7079221 m!7809046))

(declare-fun m!7809048 () Bool)

(assert (=> b!7079221 m!7809048))

(assert (=> b!7079221 m!7809044))

(declare-fun m!7809050 () Bool)

(assert (=> b!7079221 m!7809050))

(declare-fun m!7809052 () Bool)

(assert (=> b!7079228 m!7809052))

(declare-fun m!7809054 () Bool)

(assert (=> b!7079228 m!7809054))

(declare-fun m!7809056 () Bool)

(assert (=> b!7079224 m!7809056))

(assert (=> d!2214120 m!7809056))

(declare-fun m!7809058 () Bool)

(assert (=> d!2214120 m!7809058))

(declare-fun m!7809060 () Bool)

(assert (=> d!2214120 m!7809060))

(assert (=> b!7079223 m!7809052))

(declare-fun m!7809062 () Bool)

(assert (=> b!7079223 m!7809062))

(declare-fun m!7809064 () Bool)

(assert (=> b!7079226 m!7809064))

(assert (=> b!7079225 m!7809052))

(declare-fun m!7809066 () Bool)

(assert (=> b!7079225 m!7809066))

(assert (=> b!7079033 d!2214120))

(declare-fun d!2214124 () Bool)

(declare-fun c!1321131 () Bool)

(assert (=> d!2214124 (= c!1321131 (is-Nil!68444 lt!2551094))))

(declare-fun e!4256026 () (Set Context!13352))

(assert (=> d!2214124 (= (content!13856 lt!2551094) e!4256026)))

(declare-fun b!7079247 () Bool)

(assert (=> b!7079247 (= e!4256026 (as set.empty (Set Context!13352)))))

(declare-fun b!7079248 () Bool)

(assert (=> b!7079248 (= e!4256026 (set.union (set.insert (h!74892 lt!2551094) (as set.empty (Set Context!13352))) (content!13856 (t!382353 lt!2551094))))))

(assert (= (and d!2214124 c!1321131) b!7079247))

(assert (= (and d!2214124 (not c!1321131)) b!7079248))

(declare-fun m!7809068 () Bool)

(assert (=> b!7079248 m!7809068))

(declare-fun m!7809070 () Bool)

(assert (=> b!7079248 m!7809070))

(assert (=> b!7079033 d!2214124))

(declare-fun d!2214126 () Bool)

(declare-fun isEmpty!39956 (Option!16991) Bool)

(assert (=> d!2214126 (= (isDefined!13692 (findConcatSeparationZippers!507 lt!2551102 lt!2551103 Nil!68442 s!7408 s!7408)) (not (isEmpty!39956 (findConcatSeparationZippers!507 lt!2551102 lt!2551103 Nil!68442 s!7408 s!7408))))))

(declare-fun bs!1881821 () Bool)

(assert (= bs!1881821 d!2214126))

(assert (=> bs!1881821 m!7808704))

(declare-fun m!7809072 () Bool)

(assert (=> bs!1881821 m!7809072))

(assert (=> b!7079033 d!2214126))

(declare-fun d!2214128 () Bool)

(declare-fun c!1321136 () Bool)

(assert (=> d!2214128 (= c!1321136 (isEmpty!39955 lt!2551090))))

(declare-fun e!4256031 () Bool)

(assert (=> d!2214128 (= (matchZipper!3220 (content!13856 lt!2551094) lt!2551090) e!4256031)))

(declare-fun b!7079257 () Bool)

(assert (=> b!7079257 (= e!4256031 (nullableZipper!2721 (content!13856 lt!2551094)))))

(declare-fun b!7079258 () Bool)

(assert (=> b!7079258 (= e!4256031 (matchZipper!3220 (derivationStepZipper!3130 (content!13856 lt!2551094) (head!14430 lt!2551090)) (tail!13887 lt!2551090)))))

(assert (= (and d!2214128 c!1321136) b!7079257))

(assert (= (and d!2214128 (not c!1321136)) b!7079258))

(assert (=> d!2214128 m!7809008))

(assert (=> b!7079257 m!7808708))

(declare-fun m!7809074 () Bool)

(assert (=> b!7079257 m!7809074))

(assert (=> b!7079258 m!7809012))

(assert (=> b!7079258 m!7808708))

(assert (=> b!7079258 m!7809012))

(declare-fun m!7809076 () Bool)

(assert (=> b!7079258 m!7809076))

(assert (=> b!7079258 m!7809016))

(assert (=> b!7079258 m!7809076))

(assert (=> b!7079258 m!7809016))

(declare-fun m!7809078 () Bool)

(assert (=> b!7079258 m!7809078))

(assert (=> b!7079033 d!2214128))

(declare-fun d!2214130 () Bool)

(declare-fun e!4256032 () Bool)

(assert (=> d!2214130 e!4256032))

(declare-fun res!2891703 () Bool)

(assert (=> d!2214130 (=> (not res!2891703) (not e!4256032))))

(declare-fun lt!2551258 () List!68568)

(assert (=> d!2214130 (= res!2891703 (noDuplicate!2749 lt!2551258))))

(assert (=> d!2214130 (= lt!2551258 (choose!54406 z1!570))))

(assert (=> d!2214130 (= (toList!11021 z1!570) lt!2551258)))

(declare-fun b!7079259 () Bool)

(assert (=> b!7079259 (= e!4256032 (= (content!13856 lt!2551258) z1!570))))

(assert (= (and d!2214130 res!2891703) b!7079259))

(declare-fun m!7809080 () Bool)

(assert (=> d!2214130 m!7809080))

(declare-fun m!7809082 () Bool)

(assert (=> d!2214130 m!7809082))

(declare-fun m!7809084 () Bool)

(assert (=> b!7079259 m!7809084))

(assert (=> b!7079033 d!2214130))

(assert (=> b!7079034 d!2214080))

(declare-fun b!7079268 () Bool)

(declare-fun e!4256037 () List!68566)

(assert (=> b!7079268 (= e!4256037 (_2!37462 lt!2551107))))

(declare-fun b!7079271 () Bool)

(declare-fun e!4256038 () Bool)

(declare-fun lt!2551261 () List!68566)

(assert (=> b!7079271 (= e!4256038 (or (not (= (_2!37462 lt!2551107) Nil!68442)) (= lt!2551261 (_1!37462 lt!2551107))))))

(declare-fun b!7079270 () Bool)

(declare-fun res!2891708 () Bool)

(assert (=> b!7079270 (=> (not res!2891708) (not e!4256038))))

(declare-fun size!41249 (List!68566) Int)

(assert (=> b!7079270 (= res!2891708 (= (size!41249 lt!2551261) (+ (size!41249 (_1!37462 lt!2551107)) (size!41249 (_2!37462 lt!2551107)))))))

(declare-fun d!2214132 () Bool)

(assert (=> d!2214132 e!4256038))

(declare-fun res!2891709 () Bool)

(assert (=> d!2214132 (=> (not res!2891709) (not e!4256038))))

(declare-fun content!13859 (List!68566) (Set C!35630))

(assert (=> d!2214132 (= res!2891709 (= (content!13859 lt!2551261) (set.union (content!13859 (_1!37462 lt!2551107)) (content!13859 (_2!37462 lt!2551107)))))))

(assert (=> d!2214132 (= lt!2551261 e!4256037)))

(declare-fun c!1321139 () Bool)

(assert (=> d!2214132 (= c!1321139 (is-Nil!68442 (_1!37462 lt!2551107)))))

(assert (=> d!2214132 (= (++!15836 (_1!37462 lt!2551107) (_2!37462 lt!2551107)) lt!2551261)))

(declare-fun b!7079269 () Bool)

(assert (=> b!7079269 (= e!4256037 (Cons!68442 (h!74890 (_1!37462 lt!2551107)) (++!15836 (t!382351 (_1!37462 lt!2551107)) (_2!37462 lt!2551107))))))

(assert (= (and d!2214132 c!1321139) b!7079268))

(assert (= (and d!2214132 (not c!1321139)) b!7079269))

(assert (= (and d!2214132 res!2891709) b!7079270))

(assert (= (and b!7079270 res!2891708) b!7079271))

(declare-fun m!7809086 () Bool)

(assert (=> b!7079270 m!7809086))

(declare-fun m!7809088 () Bool)

(assert (=> b!7079270 m!7809088))

(declare-fun m!7809090 () Bool)

(assert (=> b!7079270 m!7809090))

(declare-fun m!7809092 () Bool)

(assert (=> d!2214132 m!7809092))

(declare-fun m!7809094 () Bool)

(assert (=> d!2214132 m!7809094))

(declare-fun m!7809096 () Bool)

(assert (=> d!2214132 m!7809096))

(declare-fun m!7809098 () Bool)

(assert (=> b!7079269 m!7809098))

(assert (=> b!7079023 d!2214132))

(declare-fun d!2214134 () Bool)

(declare-fun c!1321140 () Bool)

(assert (=> d!2214134 (= c!1321140 (isEmpty!39955 (_2!37462 lt!2551107)))))

(declare-fun e!4256039 () Bool)

(assert (=> d!2214134 (= (matchZipper!3220 lt!2551103 (_2!37462 lt!2551107)) e!4256039)))

(declare-fun b!7079272 () Bool)

(assert (=> b!7079272 (= e!4256039 (nullableZipper!2721 lt!2551103))))

(declare-fun b!7079273 () Bool)

(assert (=> b!7079273 (= e!4256039 (matchZipper!3220 (derivationStepZipper!3130 lt!2551103 (head!14430 (_2!37462 lt!2551107))) (tail!13887 (_2!37462 lt!2551107))))))

(assert (= (and d!2214134 c!1321140) b!7079272))

(assert (= (and d!2214134 (not c!1321140)) b!7079273))

(declare-fun m!7809100 () Bool)

(assert (=> d!2214134 m!7809100))

(declare-fun m!7809102 () Bool)

(assert (=> b!7079272 m!7809102))

(declare-fun m!7809104 () Bool)

(assert (=> b!7079273 m!7809104))

(assert (=> b!7079273 m!7809104))

(declare-fun m!7809106 () Bool)

(assert (=> b!7079273 m!7809106))

(declare-fun m!7809108 () Bool)

(assert (=> b!7079273 m!7809108))

(assert (=> b!7079273 m!7809106))

(assert (=> b!7079273 m!7809108))

(declare-fun m!7809110 () Bool)

(assert (=> b!7079273 m!7809110))

(assert (=> b!7079032 d!2214134))

(declare-fun bs!1881822 () Bool)

(declare-fun d!2214136 () Bool)

(assert (= bs!1881822 (and d!2214136 b!7079020)))

(declare-fun lambda!427423 () Int)

(assert (=> bs!1881822 (= lambda!427423 lambda!427370)))

(declare-fun bs!1881823 () Bool)

(assert (= bs!1881823 (and d!2214136 d!2214078)))

(assert (=> bs!1881823 (= lambda!427423 lambda!427409)))

(assert (=> d!2214136 (= (inv!87060 setElem!50446) (forall!16640 (exprs!7176 setElem!50446) lambda!427423))))

(declare-fun bs!1881824 () Bool)

(assert (= bs!1881824 d!2214136))

(declare-fun m!7809112 () Bool)

(assert (=> bs!1881824 m!7809112))

(assert (=> setNonEmpty!50446 d!2214136))

(declare-fun d!2214138 () Bool)

(declare-fun c!1321141 () Bool)

(assert (=> d!2214138 (= c!1321141 (isEmpty!39955 (_1!37462 lt!2551107)))))

(declare-fun e!4256040 () Bool)

(assert (=> d!2214138 (= (matchZipper!3220 lt!2551081 (_1!37462 lt!2551107)) e!4256040)))

(declare-fun b!7079274 () Bool)

(assert (=> b!7079274 (= e!4256040 (nullableZipper!2721 lt!2551081))))

(declare-fun b!7079275 () Bool)

(assert (=> b!7079275 (= e!4256040 (matchZipper!3220 (derivationStepZipper!3130 lt!2551081 (head!14430 (_1!37462 lt!2551107))) (tail!13887 (_1!37462 lt!2551107))))))

(assert (= (and d!2214138 c!1321141) b!7079274))

(assert (= (and d!2214138 (not c!1321141)) b!7079275))

(declare-fun m!7809114 () Bool)

(assert (=> d!2214138 m!7809114))

(declare-fun m!7809116 () Bool)

(assert (=> b!7079274 m!7809116))

(declare-fun m!7809118 () Bool)

(assert (=> b!7079275 m!7809118))

(assert (=> b!7079275 m!7809118))

(declare-fun m!7809120 () Bool)

(assert (=> b!7079275 m!7809120))

(declare-fun m!7809122 () Bool)

(assert (=> b!7079275 m!7809122))

(assert (=> b!7079275 m!7809120))

(assert (=> b!7079275 m!7809122))

(declare-fun m!7809124 () Bool)

(assert (=> b!7079275 m!7809124))

(assert (=> b!7079022 d!2214138))

(assert (=> b!7079022 d!2214072))

(declare-fun d!2214140 () Bool)

(assert (=> d!2214140 (isDefined!13692 (findConcatSeparationZippers!507 lt!2551081 (set.insert ct2!306 (as set.empty (Set Context!13352))) Nil!68442 (t!382351 s!7408) (t!382351 s!7408)))))

(declare-fun lt!2551264 () Unit!162071)

(declare-fun choose!54412 ((Set Context!13352) Context!13352 List!68566) Unit!162071)

(assert (=> d!2214140 (= lt!2551264 (choose!54412 lt!2551081 ct2!306 (t!382351 s!7408)))))

(assert (=> d!2214140 (matchZipper!3220 (appendTo!801 lt!2551081 ct2!306) (t!382351 s!7408))))

(assert (=> d!2214140 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!495 lt!2551081 ct2!306 (t!382351 s!7408)) lt!2551264)))

(declare-fun bs!1881825 () Bool)

(assert (= bs!1881825 d!2214140))

(declare-fun m!7809126 () Bool)

(assert (=> bs!1881825 m!7809126))

(declare-fun m!7809128 () Bool)

(assert (=> bs!1881825 m!7809128))

(declare-fun m!7809130 () Bool)

(assert (=> bs!1881825 m!7809130))

(assert (=> bs!1881825 m!7808734))

(assert (=> bs!1881825 m!7808726))

(assert (=> bs!1881825 m!7808726))

(assert (=> bs!1881825 m!7809128))

(assert (=> bs!1881825 m!7808734))

(declare-fun m!7809132 () Bool)

(assert (=> bs!1881825 m!7809132))

(assert (=> b!7079022 d!2214140))

(declare-fun call!643461 () List!68567)

(declare-fun bm!643451 () Bool)

(declare-fun c!1321142 () Bool)

(declare-fun call!643458 () (Set Context!13352))

(declare-fun c!1321145 () Bool)

(declare-fun c!1321146 () Bool)

(assert (=> bm!643451 (= call!643458 (derivationStepZipperDown!2314 (ite c!1321145 (regOne!35873 (h!74891 (exprs!7176 lt!2551097))) (ite c!1321146 (regTwo!35872 (h!74891 (exprs!7176 lt!2551097))) (ite c!1321142 (regOne!35872 (h!74891 (exprs!7176 lt!2551097))) (reg!18009 (h!74891 (exprs!7176 lt!2551097)))))) (ite (or c!1321145 c!1321146) lt!2551109 (Context!13353 call!643461)) (h!74890 s!7408)))))

(declare-fun b!7079276 () Bool)

(declare-fun e!4256045 () (Set Context!13352))

(assert (=> b!7079276 (= e!4256045 (set.insert lt!2551109 (as set.empty (Set Context!13352))))))

(declare-fun b!7079277 () Bool)

(declare-fun e!4256041 () (Set Context!13352))

(declare-fun call!643460 () (Set Context!13352))

(assert (=> b!7079277 (= e!4256041 call!643460)))

(declare-fun b!7079278 () Bool)

(declare-fun e!4256044 () Bool)

(assert (=> b!7079278 (= c!1321146 e!4256044)))

(declare-fun res!2891710 () Bool)

(assert (=> b!7079278 (=> (not res!2891710) (not e!4256044))))

(assert (=> b!7079278 (= res!2891710 (is-Concat!26525 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun e!4256042 () (Set Context!13352))

(declare-fun e!4256043 () (Set Context!13352))

(assert (=> b!7079278 (= e!4256042 e!4256043)))

(declare-fun bm!643452 () Bool)

(declare-fun call!643459 () List!68567)

(assert (=> bm!643452 (= call!643461 call!643459)))

(declare-fun bm!643453 () Bool)

(assert (=> bm!643453 (= call!643459 ($colon$colon!2678 (exprs!7176 lt!2551109) (ite (or c!1321146 c!1321142) (regTwo!35872 (h!74891 (exprs!7176 lt!2551097))) (h!74891 (exprs!7176 lt!2551097)))))))

(declare-fun b!7079279 () Bool)

(declare-fun call!643456 () (Set Context!13352))

(assert (=> b!7079279 (= e!4256042 (set.union call!643458 call!643456))))

(declare-fun b!7079280 () Bool)

(assert (=> b!7079280 (= e!4256044 (nullable!7363 (regOne!35872 (h!74891 (exprs!7176 lt!2551097)))))))

(declare-fun bm!643454 () Bool)

(declare-fun call!643457 () (Set Context!13352))

(assert (=> bm!643454 (= call!643460 call!643457)))

(declare-fun b!7079281 () Bool)

(assert (=> b!7079281 (= e!4256041 (as set.empty (Set Context!13352)))))

(declare-fun bm!643455 () Bool)

(assert (=> bm!643455 (= call!643457 call!643458)))

(declare-fun b!7079283 () Bool)

(declare-fun c!1321143 () Bool)

(assert (=> b!7079283 (= c!1321143 (is-Star!17680 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun e!4256046 () (Set Context!13352))

(assert (=> b!7079283 (= e!4256046 e!4256041)))

(declare-fun bm!643456 () Bool)

(assert (=> bm!643456 (= call!643456 (derivationStepZipperDown!2314 (ite c!1321145 (regTwo!35873 (h!74891 (exprs!7176 lt!2551097))) (regOne!35872 (h!74891 (exprs!7176 lt!2551097)))) (ite c!1321145 lt!2551109 (Context!13353 call!643459)) (h!74890 s!7408)))))

(declare-fun b!7079284 () Bool)

(assert (=> b!7079284 (= e!4256046 call!643460)))

(declare-fun b!7079285 () Bool)

(assert (=> b!7079285 (= e!4256045 e!4256042)))

(assert (=> b!7079285 (= c!1321145 (is-Union!17680 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun b!7079286 () Bool)

(assert (=> b!7079286 (= e!4256043 e!4256046)))

(assert (=> b!7079286 (= c!1321142 (is-Concat!26525 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun b!7079282 () Bool)

(assert (=> b!7079282 (= e!4256043 (set.union call!643456 call!643457))))

(declare-fun d!2214142 () Bool)

(declare-fun c!1321144 () Bool)

(assert (=> d!2214142 (= c!1321144 (and (is-ElementMatch!17680 (h!74891 (exprs!7176 lt!2551097))) (= (c!1321061 (h!74891 (exprs!7176 lt!2551097))) (h!74890 s!7408))))))

(assert (=> d!2214142 (= (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) lt!2551109 (h!74890 s!7408)) e!4256045)))

(assert (= (and d!2214142 c!1321144) b!7079276))

(assert (= (and d!2214142 (not c!1321144)) b!7079285))

(assert (= (and b!7079285 c!1321145) b!7079279))

(assert (= (and b!7079285 (not c!1321145)) b!7079278))

(assert (= (and b!7079278 res!2891710) b!7079280))

(assert (= (and b!7079278 c!1321146) b!7079282))

(assert (= (and b!7079278 (not c!1321146)) b!7079286))

(assert (= (and b!7079286 c!1321142) b!7079284))

(assert (= (and b!7079286 (not c!1321142)) b!7079283))

(assert (= (and b!7079283 c!1321143) b!7079277))

(assert (= (and b!7079283 (not c!1321143)) b!7079281))

(assert (= (or b!7079284 b!7079277) bm!643452))

(assert (= (or b!7079284 b!7079277) bm!643454))

(assert (= (or b!7079282 bm!643454) bm!643455))

(assert (= (or b!7079282 bm!643452) bm!643453))

(assert (= (or b!7079279 bm!643455) bm!643451))

(assert (= (or b!7079279 b!7079282) bm!643456))

(declare-fun m!7809134 () Bool)

(assert (=> bm!643453 m!7809134))

(declare-fun m!7809136 () Bool)

(assert (=> b!7079276 m!7809136))

(declare-fun m!7809138 () Bool)

(assert (=> bm!643451 m!7809138))

(declare-fun m!7809140 () Bool)

(assert (=> bm!643456 m!7809140))

(assert (=> b!7079280 m!7808908))

(assert (=> b!7079022 d!2214142))

(declare-fun bs!1881826 () Bool)

(declare-fun d!2214144 () Bool)

(assert (= bs!1881826 (and d!2214144 b!7079020)))

(declare-fun lambda!427424 () Int)

(assert (=> bs!1881826 (= lambda!427424 lambda!427369)))

(declare-fun bs!1881827 () Bool)

(assert (= bs!1881827 (and d!2214144 d!2214076)))

(assert (=> bs!1881827 (= lambda!427424 lambda!427406)))

(assert (=> d!2214144 true))

(assert (=> d!2214144 (= (appendTo!801 lt!2551081 ct2!306) (map!16030 lt!2551081 lambda!427424))))

(declare-fun bs!1881828 () Bool)

(assert (= bs!1881828 d!2214144))

(declare-fun m!7809142 () Bool)

(assert (=> bs!1881828 m!7809142))

(assert (=> b!7079022 d!2214144))

(declare-fun d!2214146 () Bool)

(assert (=> d!2214146 (= (isDefined!13692 lt!2551101) (not (isEmpty!39956 lt!2551101)))))

(declare-fun bs!1881829 () Bool)

(assert (= bs!1881829 d!2214146))

(declare-fun m!7809144 () Bool)

(assert (=> bs!1881829 m!7809144))

(assert (=> b!7079022 d!2214146))

(declare-fun b!7079298 () Bool)

(declare-fun e!4256053 () Option!16991)

(assert (=> b!7079298 (= e!4256053 None!16990)))

(declare-fun b!7079299 () Bool)

(declare-fun lt!2551265 () Unit!162071)

(declare-fun lt!2551266 () Unit!162071)

(assert (=> b!7079299 (= lt!2551265 lt!2551266)))

(assert (=> b!7079299 (= (++!15836 (++!15836 Nil!68442 (Cons!68442 (h!74890 (t!382351 s!7408)) Nil!68442)) (t!382351 (t!382351 s!7408))) (t!382351 s!7408))))

(assert (=> b!7079299 (= lt!2551266 (lemmaMoveElementToOtherListKeepsConcatEq!2990 Nil!68442 (h!74890 (t!382351 s!7408)) (t!382351 (t!382351 s!7408)) (t!382351 s!7408)))))

(assert (=> b!7079299 (= e!4256053 (findConcatSeparationZippers!507 lt!2551081 lt!2551103 (++!15836 Nil!68442 (Cons!68442 (h!74890 (t!382351 s!7408)) Nil!68442)) (t!382351 (t!382351 s!7408)) (t!382351 s!7408)))))

(declare-fun b!7079300 () Bool)

(declare-fun e!4256057 () Option!16991)

(assert (=> b!7079300 (= e!4256057 (Some!16990 (tuple2!68319 Nil!68442 (t!382351 s!7408))))))

(declare-fun d!2214148 () Bool)

(declare-fun e!4256055 () Bool)

(assert (=> d!2214148 e!4256055))

(declare-fun res!2891712 () Bool)

(assert (=> d!2214148 (=> res!2891712 e!4256055)))

(declare-fun e!4256056 () Bool)

(assert (=> d!2214148 (= res!2891712 e!4256056)))

(declare-fun res!2891713 () Bool)

(assert (=> d!2214148 (=> (not res!2891713) (not e!4256056))))

(declare-fun lt!2551267 () Option!16991)

(assert (=> d!2214148 (= res!2891713 (isDefined!13692 lt!2551267))))

(assert (=> d!2214148 (= lt!2551267 e!4256057)))

(declare-fun c!1321152 () Bool)

(declare-fun e!4256054 () Bool)

(assert (=> d!2214148 (= c!1321152 e!4256054)))

(declare-fun res!2891715 () Bool)

(assert (=> d!2214148 (=> (not res!2891715) (not e!4256054))))

(assert (=> d!2214148 (= res!2891715 (matchZipper!3220 lt!2551081 Nil!68442))))

(assert (=> d!2214148 (= (++!15836 Nil!68442 (t!382351 s!7408)) (t!382351 s!7408))))

(assert (=> d!2214148 (= (findConcatSeparationZippers!507 lt!2551081 lt!2551103 Nil!68442 (t!382351 s!7408) (t!382351 s!7408)) lt!2551267)))

(declare-fun b!7079301 () Bool)

(declare-fun res!2891716 () Bool)

(assert (=> b!7079301 (=> (not res!2891716) (not e!4256056))))

(assert (=> b!7079301 (= res!2891716 (matchZipper!3220 lt!2551103 (_2!37462 (get!23982 lt!2551267))))))

(declare-fun b!7079302 () Bool)

(assert (=> b!7079302 (= e!4256055 (not (isDefined!13692 lt!2551267)))))

(declare-fun b!7079303 () Bool)

(assert (=> b!7079303 (= e!4256056 (= (++!15836 (_1!37462 (get!23982 lt!2551267)) (_2!37462 (get!23982 lt!2551267))) (t!382351 s!7408)))))

(declare-fun b!7079304 () Bool)

(assert (=> b!7079304 (= e!4256054 (matchZipper!3220 lt!2551103 (t!382351 s!7408)))))

(declare-fun b!7079305 () Bool)

(assert (=> b!7079305 (= e!4256057 e!4256053)))

(declare-fun c!1321153 () Bool)

(assert (=> b!7079305 (= c!1321153 (is-Nil!68442 (t!382351 s!7408)))))

(declare-fun b!7079306 () Bool)

(declare-fun res!2891714 () Bool)

(assert (=> b!7079306 (=> (not res!2891714) (not e!4256056))))

(assert (=> b!7079306 (= res!2891714 (matchZipper!3220 lt!2551081 (_1!37462 (get!23982 lt!2551267))))))

(assert (= (and d!2214148 res!2891715) b!7079304))

(assert (= (and d!2214148 c!1321152) b!7079300))

(assert (= (and d!2214148 (not c!1321152)) b!7079305))

(assert (= (and b!7079305 c!1321153) b!7079298))

(assert (= (and b!7079305 (not c!1321153)) b!7079299))

(assert (= (and d!2214148 res!2891713) b!7079306))

(assert (= (and b!7079306 res!2891714) b!7079301))

(assert (= (and b!7079301 res!2891716) b!7079303))

(assert (= (and d!2214148 (not res!2891712)) b!7079302))

(declare-fun m!7809146 () Bool)

(assert (=> b!7079299 m!7809146))

(assert (=> b!7079299 m!7809146))

(declare-fun m!7809148 () Bool)

(assert (=> b!7079299 m!7809148))

(declare-fun m!7809150 () Bool)

(assert (=> b!7079299 m!7809150))

(assert (=> b!7079299 m!7809146))

(declare-fun m!7809152 () Bool)

(assert (=> b!7079299 m!7809152))

(declare-fun m!7809154 () Bool)

(assert (=> b!7079306 m!7809154))

(declare-fun m!7809156 () Bool)

(assert (=> b!7079306 m!7809156))

(declare-fun m!7809158 () Bool)

(assert (=> b!7079302 m!7809158))

(assert (=> d!2214148 m!7809158))

(declare-fun m!7809160 () Bool)

(assert (=> d!2214148 m!7809160))

(declare-fun m!7809162 () Bool)

(assert (=> d!2214148 m!7809162))

(assert (=> b!7079301 m!7809154))

(declare-fun m!7809164 () Bool)

(assert (=> b!7079301 m!7809164))

(declare-fun m!7809166 () Bool)

(assert (=> b!7079304 m!7809166))

(assert (=> b!7079303 m!7809154))

(declare-fun m!7809168 () Bool)

(assert (=> b!7079303 m!7809168))

(assert (=> b!7079022 d!2214148))

(declare-fun d!2214150 () Bool)

(assert (=> d!2214150 (= (get!23982 lt!2551101) (v!53284 lt!2551101))))

(assert (=> b!7079022 d!2214150))

(declare-fun bs!1881830 () Bool)

(declare-fun d!2214152 () Bool)

(assert (= bs!1881830 (and d!2214152 b!7079020)))

(declare-fun lambda!427427 () Int)

(assert (=> bs!1881830 (= lambda!427427 lambda!427370)))

(declare-fun bs!1881831 () Bool)

(assert (= bs!1881831 (and d!2214152 d!2214078)))

(assert (=> bs!1881831 (= lambda!427427 lambda!427409)))

(declare-fun bs!1881832 () Bool)

(assert (= bs!1881832 (and d!2214152 d!2214136)))

(assert (=> bs!1881832 (= lambda!427427 lambda!427423)))

(assert (=> d!2214152 (= (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) (Context!13353 (++!15835 (exprs!7176 lt!2551109) (exprs!7176 ct2!306))) (h!74890 s!7408)) (appendTo!801 (derivationStepZipperDown!2314 (h!74891 (exprs!7176 lt!2551097)) lt!2551109 (h!74890 s!7408)) ct2!306))))

(declare-fun lt!2551273 () Unit!162071)

(assert (=> d!2214152 (= lt!2551273 (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551109) (exprs!7176 ct2!306) lambda!427427))))

(declare-fun lt!2551272 () Unit!162071)

(declare-fun choose!54413 (Context!13352 Regex!17680 C!35630 Context!13352) Unit!162071)

(assert (=> d!2214152 (= lt!2551272 (choose!54413 lt!2551109 (h!74891 (exprs!7176 lt!2551097)) (h!74890 s!7408) ct2!306))))

(declare-fun validRegex!8989 (Regex!17680) Bool)

(assert (=> d!2214152 (validRegex!8989 (h!74891 (exprs!7176 lt!2551097)))))

(assert (=> d!2214152 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!147 lt!2551109 (h!74891 (exprs!7176 lt!2551097)) (h!74890 s!7408) ct2!306) lt!2551272)))

(declare-fun bs!1881833 () Bool)

(assert (= bs!1881833 d!2214152))

(assert (=> bs!1881833 m!7808728))

(declare-fun m!7809180 () Bool)

(assert (=> bs!1881833 m!7809180))

(declare-fun m!7809182 () Bool)

(assert (=> bs!1881833 m!7809182))

(declare-fun m!7809184 () Bool)

(assert (=> bs!1881833 m!7809184))

(assert (=> bs!1881833 m!7808728))

(declare-fun m!7809186 () Bool)

(assert (=> bs!1881833 m!7809186))

(declare-fun m!7809188 () Bool)

(assert (=> bs!1881833 m!7809188))

(declare-fun m!7809190 () Bool)

(assert (=> bs!1881833 m!7809190))

(assert (=> b!7079022 d!2214152))

(declare-fun b!7079311 () Bool)

(declare-fun e!4256060 () List!68566)

(assert (=> b!7079311 (= e!4256060 (_2!37462 lt!2551107))))

(declare-fun lt!2551276 () List!68566)

(declare-fun b!7079314 () Bool)

(declare-fun e!4256061 () Bool)

(assert (=> b!7079314 (= e!4256061 (or (not (= (_2!37462 lt!2551107) Nil!68442)) (= lt!2551276 lt!2551090)))))

(declare-fun b!7079313 () Bool)

(declare-fun res!2891717 () Bool)

(assert (=> b!7079313 (=> (not res!2891717) (not e!4256061))))

(assert (=> b!7079313 (= res!2891717 (= (size!41249 lt!2551276) (+ (size!41249 lt!2551090) (size!41249 (_2!37462 lt!2551107)))))))

(declare-fun d!2214156 () Bool)

(assert (=> d!2214156 e!4256061))

(declare-fun res!2891718 () Bool)

(assert (=> d!2214156 (=> (not res!2891718) (not e!4256061))))

(assert (=> d!2214156 (= res!2891718 (= (content!13859 lt!2551276) (set.union (content!13859 lt!2551090) (content!13859 (_2!37462 lt!2551107)))))))

(assert (=> d!2214156 (= lt!2551276 e!4256060)))

(declare-fun c!1321157 () Bool)

(assert (=> d!2214156 (= c!1321157 (is-Nil!68442 lt!2551090))))

(assert (=> d!2214156 (= (++!15836 lt!2551090 (_2!37462 lt!2551107)) lt!2551276)))

(declare-fun b!7079312 () Bool)

(assert (=> b!7079312 (= e!4256060 (Cons!68442 (h!74890 lt!2551090) (++!15836 (t!382351 lt!2551090) (_2!37462 lt!2551107))))))

(assert (= (and d!2214156 c!1321157) b!7079311))

(assert (= (and d!2214156 (not c!1321157)) b!7079312))

(assert (= (and d!2214156 res!2891718) b!7079313))

(assert (= (and b!7079313 res!2891717) b!7079314))

(declare-fun m!7809192 () Bool)

(assert (=> b!7079313 m!7809192))

(declare-fun m!7809194 () Bool)

(assert (=> b!7079313 m!7809194))

(assert (=> b!7079313 m!7809090))

(declare-fun m!7809196 () Bool)

(assert (=> d!2214156 m!7809196))

(declare-fun m!7809198 () Bool)

(assert (=> d!2214156 m!7809198))

(assert (=> d!2214156 m!7809096))

(declare-fun m!7809200 () Bool)

(assert (=> b!7079312 m!7809200))

(assert (=> b!7079029 d!2214156))

(declare-fun d!2214158 () Bool)

(declare-fun c!1321158 () Bool)

(assert (=> d!2214158 (= c!1321158 (isEmpty!39955 lt!2551090))))

(declare-fun e!4256064 () Bool)

(assert (=> d!2214158 (= (matchZipper!3220 lt!2551102 lt!2551090) e!4256064)))

(declare-fun b!7079319 () Bool)

(assert (=> b!7079319 (= e!4256064 (nullableZipper!2721 lt!2551102))))

(declare-fun b!7079320 () Bool)

(assert (=> b!7079320 (= e!4256064 (matchZipper!3220 (derivationStepZipper!3130 lt!2551102 (head!14430 lt!2551090)) (tail!13887 lt!2551090)))))

(assert (= (and d!2214158 c!1321158) b!7079319))

(assert (= (and d!2214158 (not c!1321158)) b!7079320))

(assert (=> d!2214158 m!7809008))

(declare-fun m!7809202 () Bool)

(assert (=> b!7079319 m!7809202))

(assert (=> b!7079320 m!7809012))

(assert (=> b!7079320 m!7809012))

(declare-fun m!7809204 () Bool)

(assert (=> b!7079320 m!7809204))

(assert (=> b!7079320 m!7809016))

(assert (=> b!7079320 m!7809204))

(assert (=> b!7079320 m!7809016))

(declare-fun m!7809206 () Bool)

(assert (=> b!7079320 m!7809206))

(assert (=> b!7079030 d!2214158))

(declare-fun b!7079323 () Bool)

(declare-fun res!2891724 () Bool)

(declare-fun e!4256066 () Bool)

(assert (=> b!7079323 (=> (not res!2891724) (not e!4256066))))

(declare-fun lt!2551277 () List!68567)

(assert (=> b!7079323 (= res!2891724 (= (size!41248 lt!2551277) (+ (size!41248 (exprs!7176 lt!2551097)) (size!41248 (exprs!7176 ct2!306)))))))

(declare-fun b!7079324 () Bool)

(assert (=> b!7079324 (= e!4256066 (or (not (= (exprs!7176 ct2!306) Nil!68443)) (= lt!2551277 (exprs!7176 lt!2551097))))))

(declare-fun d!2214160 () Bool)

(assert (=> d!2214160 e!4256066))

(declare-fun res!2891723 () Bool)

(assert (=> d!2214160 (=> (not res!2891723) (not e!4256066))))

(assert (=> d!2214160 (= res!2891723 (= (content!13858 lt!2551277) (set.union (content!13858 (exprs!7176 lt!2551097)) (content!13858 (exprs!7176 ct2!306)))))))

(declare-fun e!4256065 () List!68567)

(assert (=> d!2214160 (= lt!2551277 e!4256065)))

(declare-fun c!1321159 () Bool)

(assert (=> d!2214160 (= c!1321159 (is-Nil!68443 (exprs!7176 lt!2551097)))))

(assert (=> d!2214160 (= (++!15835 (exprs!7176 lt!2551097) (exprs!7176 ct2!306)) lt!2551277)))

(declare-fun b!7079321 () Bool)

(assert (=> b!7079321 (= e!4256065 (exprs!7176 ct2!306))))

(declare-fun b!7079322 () Bool)

(assert (=> b!7079322 (= e!4256065 (Cons!68443 (h!74891 (exprs!7176 lt!2551097)) (++!15835 (t!382352 (exprs!7176 lt!2551097)) (exprs!7176 ct2!306))))))

(assert (= (and d!2214160 c!1321159) b!7079321))

(assert (= (and d!2214160 (not c!1321159)) b!7079322))

(assert (= (and d!2214160 res!2891723) b!7079323))

(assert (= (and b!7079323 res!2891724) b!7079324))

(declare-fun m!7809208 () Bool)

(assert (=> b!7079323 m!7809208))

(declare-fun m!7809210 () Bool)

(assert (=> b!7079323 m!7809210))

(assert (=> b!7079323 m!7808914))

(declare-fun m!7809212 () Bool)

(assert (=> d!2214160 m!7809212))

(declare-fun m!7809214 () Bool)

(assert (=> d!2214160 m!7809214))

(assert (=> d!2214160 m!7808920))

(declare-fun m!7809216 () Bool)

(assert (=> b!7079322 m!7809216))

(assert (=> b!7079020 d!2214160))

(assert (=> b!7079020 d!2214080))

(declare-fun d!2214162 () Bool)

(declare-fun e!4256071 () Bool)

(assert (=> d!2214162 e!4256071))

(declare-fun res!2891729 () Bool)

(assert (=> d!2214162 (=> (not res!2891729) (not e!4256071))))

(declare-fun lt!2551280 () Context!13352)

(declare-fun dynLambda!27886 (Int Context!13352) Context!13352)

(assert (=> d!2214162 (= res!2891729 (= lt!2551099 (dynLambda!27886 lambda!427369 lt!2551280)))))

(declare-fun choose!54415 ((Set Context!13352) Int Context!13352) Context!13352)

(assert (=> d!2214162 (= lt!2551280 (choose!54415 z1!570 lambda!427369 lt!2551099))))

(assert (=> d!2214162 (set.member lt!2551099 (map!16030 z1!570 lambda!427369))))

(assert (=> d!2214162 (= (mapPost2!509 z1!570 lambda!427369 lt!2551099) lt!2551280)))

(declare-fun b!7079328 () Bool)

(assert (=> b!7079328 (= e!4256071 (set.member lt!2551280 z1!570))))

(assert (= (and d!2214162 res!2891729) b!7079328))

(declare-fun b_lambda!270447 () Bool)

(assert (=> (not b_lambda!270447) (not d!2214162)))

(declare-fun m!7809218 () Bool)

(assert (=> d!2214162 m!7809218))

(declare-fun m!7809220 () Bool)

(assert (=> d!2214162 m!7809220))

(declare-fun m!7809222 () Bool)

(assert (=> d!2214162 m!7809222))

(declare-fun m!7809224 () Bool)

(assert (=> d!2214162 m!7809224))

(declare-fun m!7809226 () Bool)

(assert (=> b!7079328 m!7809226))

(assert (=> b!7079020 d!2214162))

(declare-fun d!2214164 () Bool)

(declare-fun nullableFct!2833 (Regex!17680) Bool)

(assert (=> d!2214164 (= (nullable!7363 (h!74891 (exprs!7176 lt!2551097))) (nullableFct!2833 (h!74891 (exprs!7176 lt!2551097))))))

(declare-fun bs!1881834 () Bool)

(assert (= bs!1881834 d!2214164))

(declare-fun m!7809234 () Bool)

(assert (=> bs!1881834 m!7809234))

(assert (=> b!7079028 d!2214164))

(declare-fun d!2214166 () Bool)

(assert (=> d!2214166 (= (tail!13885 (exprs!7176 lt!2551097)) (t!382352 (exprs!7176 lt!2551097)))))

(assert (=> b!7079028 d!2214166))

(declare-fun condSetEmpty!50452 () Bool)

(assert (=> setNonEmpty!50446 (= condSetEmpty!50452 (= setRest!50446 (as set.empty (Set Context!13352))))))

(declare-fun setRes!50452 () Bool)

(assert (=> setNonEmpty!50446 (= tp!1943243 setRes!50452)))

(declare-fun setIsEmpty!50452 () Bool)

(assert (=> setIsEmpty!50452 setRes!50452))

(declare-fun tp!1943262 () Bool)

(declare-fun e!4256074 () Bool)

(declare-fun setElem!50452 () Context!13352)

(declare-fun setNonEmpty!50452 () Bool)

(assert (=> setNonEmpty!50452 (= setRes!50452 (and tp!1943262 (inv!87060 setElem!50452) e!4256074))))

(declare-fun setRest!50452 () (Set Context!13352))

(assert (=> setNonEmpty!50452 (= setRest!50446 (set.union (set.insert setElem!50452 (as set.empty (Set Context!13352))) setRest!50452))))

(declare-fun b!7079337 () Bool)

(declare-fun tp!1943261 () Bool)

(assert (=> b!7079337 (= e!4256074 tp!1943261)))

(assert (= (and setNonEmpty!50446 condSetEmpty!50452) setIsEmpty!50452))

(assert (= (and setNonEmpty!50446 (not condSetEmpty!50452)) setNonEmpty!50452))

(assert (= setNonEmpty!50452 b!7079337))

(declare-fun m!7809244 () Bool)

(assert (=> setNonEmpty!50452 m!7809244))

(declare-fun b!7079342 () Bool)

(declare-fun e!4256077 () Bool)

(declare-fun tp!1943267 () Bool)

(declare-fun tp!1943268 () Bool)

(assert (=> b!7079342 (= e!4256077 (and tp!1943267 tp!1943268))))

(assert (=> b!7079021 (= tp!1943244 e!4256077)))

(assert (= (and b!7079021 (is-Cons!68443 (exprs!7176 ct2!306))) b!7079342))

(declare-fun b!7079347 () Bool)

(declare-fun e!4256080 () Bool)

(declare-fun tp!1943271 () Bool)

(assert (=> b!7079347 (= e!4256080 (and tp_is_empty!44585 tp!1943271))))

(assert (=> b!7079031 (= tp!1943241 e!4256080)))

(assert (= (and b!7079031 (is-Cons!68442 (t!382351 s!7408))) b!7079347))

(declare-fun b!7079348 () Bool)

(declare-fun e!4256081 () Bool)

(declare-fun tp!1943272 () Bool)

(declare-fun tp!1943273 () Bool)

(assert (=> b!7079348 (= e!4256081 (and tp!1943272 tp!1943273))))

(assert (=> b!7079019 (= tp!1943242 e!4256081)))

(assert (= (and b!7079019 (is-Cons!68443 (exprs!7176 setElem!50446))) b!7079348))

(declare-fun b_lambda!270449 () Bool)

(assert (= b_lambda!270447 (or b!7079020 b_lambda!270449)))

(declare-fun bs!1881835 () Bool)

(declare-fun d!2214170 () Bool)

(assert (= bs!1881835 (and d!2214170 b!7079020)))

(declare-fun lt!2551282 () Unit!162071)

(assert (=> bs!1881835 (= lt!2551282 (lemmaConcatPreservesForall!991 (exprs!7176 lt!2551280) (exprs!7176 ct2!306) lambda!427370))))

(assert (=> bs!1881835 (= (dynLambda!27886 lambda!427369 lt!2551280) (Context!13353 (++!15835 (exprs!7176 lt!2551280) (exprs!7176 ct2!306))))))

(declare-fun m!7809246 () Bool)

(assert (=> bs!1881835 m!7809246))

(declare-fun m!7809248 () Bool)

(assert (=> bs!1881835 m!7809248))

(assert (=> d!2214162 d!2214170))

(declare-fun b_lambda!270451 () Bool)

(assert (= b_lambda!270445 (or b!7079026 b_lambda!270451)))

(declare-fun bs!1881836 () Bool)

(declare-fun d!2214172 () Bool)

(assert (= bs!1881836 (and d!2214172 b!7079026)))

(assert (=> bs!1881836 (= (dynLambda!27885 lambda!427368 lt!2551236) (matchZipper!3220 (set.insert lt!2551236 (as set.empty (Set Context!13352))) s!7408))))

(declare-fun m!7809250 () Bool)

(assert (=> bs!1881836 m!7809250))

(assert (=> bs!1881836 m!7809250))

(declare-fun m!7809252 () Bool)

(assert (=> bs!1881836 m!7809252))

(assert (=> d!2214104 d!2214172))

(declare-fun b_lambda!270453 () Bool)

(assert (= b_lambda!270441 (or b!7079035 b_lambda!270453)))

(declare-fun bs!1881837 () Bool)

(declare-fun d!2214174 () Bool)

(assert (= bs!1881837 (and d!2214174 b!7079035)))

(assert (=> bs!1881837 (= (dynLambda!27883 lambda!427371 lt!2551113) (derivationStepZipperUp!2264 lt!2551113 (h!74890 s!7408)))))

(assert (=> bs!1881837 m!7808752))

(assert (=> d!2214086 d!2214174))

(declare-fun b_lambda!270455 () Bool)

(assert (= b_lambda!270443 (or b!7079035 b_lambda!270455)))

(declare-fun bs!1881838 () Bool)

(declare-fun d!2214176 () Bool)

(assert (= bs!1881838 (and d!2214176 b!7079035)))

(assert (=> bs!1881838 (= (dynLambda!27883 lambda!427371 lt!2551097) (derivationStepZipperUp!2264 lt!2551097 (h!74890 s!7408)))))

(assert (=> bs!1881838 m!7808760))

(assert (=> d!2214094 d!2214176))

(push 1)

(assert (not d!2214096))

(assert (not b!7079114))

(assert (not b!7079304))

(assert (not d!2214106))

(assert (not b_lambda!270455))

(assert (not b!7079270))

(assert (not bs!1881837))

(assert (not b!7079323))

(assert (not b!7079274))

(assert (not setNonEmpty!50452))

(assert (not d!2214136))

(assert (not b!7079175))

(assert (not d!2214156))

(assert (not d!2214152))

(assert (not d!2214112))

(assert (not b!7079228))

(assert (not b!7079337))

(assert (not d!2214128))

(assert (not d!2214104))

(assert (not b!7079342))

(assert (not b!7079158))

(assert (not d!2214132))

(assert (not d!2214084))

(assert (not d!2214138))

(assert (not bm!643451))

(assert (not b!7079248))

(assert (not b!7079273))

(assert (not b!7079348))

(assert (not b!7079157))

(assert (not d!2214130))

(assert (not b!7079194))

(assert (not b!7079225))

(assert (not bs!1881836))

(assert (not b!7079275))

(assert (not b!7079161))

(assert (not b!7079303))

(assert (not b!7079313))

(assert (not bm!643456))

(assert (not d!2214094))

(assert (not bs!1881838))

(assert (not d!2214114))

(assert (not d!2214148))

(assert (not d!2214074))

(assert (not b!7079193))

(assert (not bm!643431))

(assert (not b!7079174))

(assert (not b!7079223))

(assert (not b!7079302))

(assert (not b!7079259))

(assert (not b!7079226))

(assert (not b!7079301))

(assert (not bs!1881835))

(assert (not d!2214134))

(assert (not bm!643429))

(assert (not b!7079221))

(assert (not b!7079269))

(assert (not d!2214158))

(assert (not b!7079160))

(assert (not d!2214120))

(assert (not d!2214076))

(assert (not d!2214126))

(assert (not d!2214090))

(assert (not b!7079280))

(assert (not b!7079113))

(assert (not d!2214082))

(assert (not bm!643453))

(assert (not b!7079186))

(assert (not d!2214078))

(assert (not b!7079272))

(assert (not b_lambda!270453))

(assert (not d!2214086))

(assert (not b!7079224))

(assert (not bm!643438))

(assert (not d!2214072))

(assert (not d!2214066))

(assert (not b!7079258))

(assert (not d!2214140))

(assert (not b!7079312))

(assert (not b!7079141))

(assert (not b!7079257))

(assert (not b_lambda!270451))

(assert (not d!2214108))

(assert tp_is_empty!44585)

(assert (not d!2214116))

(assert (not b!7079306))

(assert (not b!7079320))

(assert (not d!2214098))

(assert (not b!7079322))

(assert (not b!7079192))

(assert (not b!7079319))

(assert (not d!2214162))

(assert (not b!7079347))

(assert (not d!2214160))

(assert (not d!2214146))

(assert (not d!2214110))

(assert (not bm!643437))

(assert (not b!7079180))

(assert (not b!7079179))

(assert (not d!2214102))

(assert (not b!7079299))

(assert (not d!2214144))

(assert (not d!2214080))

(assert (not bm!643434))

(assert (not b!7079195))

(assert (not d!2214164))

(assert (not b_lambda!270449))

(assert (not d!2214070))

(assert (not d!2214100))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

