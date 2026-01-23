; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676996 () Bool)

(assert start!676996)

(declare-fun b!7020497 () Bool)

(assert (=> b!7020497 true))

(declare-fun b!7020490 () Bool)

(assert (=> b!7020490 true))

(declare-fun b!7020495 () Bool)

(assert (=> b!7020495 true))

(declare-fun bs!1867449 () Bool)

(declare-fun b!7020496 () Bool)

(assert (= bs!1867449 (and b!7020496 b!7020497)))

(declare-datatypes ((C!35042 0))(
  ( (C!35043 (val!27223 Int)) )
))
(declare-datatypes ((List!67703 0))(
  ( (Nil!67579) (Cons!67579 (h!74027 C!35042) (t!381458 List!67703)) )
))
(declare-fun s!7408 () List!67703)

(declare-fun lambda!411256 () Int)

(declare-fun lambda!411252 () Int)

(assert (=> bs!1867449 (= (= Nil!67579 s!7408) (= lambda!411256 lambda!411252))))

(declare-fun e!4220166 () Bool)

(declare-fun e!4220165 () Bool)

(assert (=> b!7020490 (= e!4220166 e!4220165)))

(declare-fun res!2865671 () Bool)

(assert (=> b!7020490 (=> res!2865671 e!4220165)))

(declare-datatypes ((Regex!17386 0))(
  ( (ElementMatch!17386 (c!1304693 C!35042)) (Concat!26231 (regOne!35284 Regex!17386) (regTwo!35284 Regex!17386)) (EmptyExpr!17386) (Star!17386 (reg!17715 Regex!17386)) (EmptyLang!17386) (Union!17386 (regOne!35285 Regex!17386) (regTwo!35285 Regex!17386)) )
))
(declare-datatypes ((List!67704 0))(
  ( (Nil!67580) (Cons!67580 (h!74028 Regex!17386) (t!381459 List!67704)) )
))
(declare-datatypes ((Context!12764 0))(
  ( (Context!12765 (exprs!6882 List!67704)) )
))
(declare-fun lt!2511610 () Context!12764)

(declare-fun lt!2511616 () Context!12764)

(declare-fun z1!570 () (Set Context!12764))

(declare-fun lt!2511609 () Context!12764)

(assert (=> b!7020490 (= res!2865671 (or (not (= lt!2511610 lt!2511616)) (not (set.member lt!2511609 z1!570))))))

(declare-fun ct2!306 () Context!12764)

(declare-fun ++!15426 (List!67704 List!67704) List!67704)

(assert (=> b!7020490 (= lt!2511610 (Context!12765 (++!15426 (exprs!6882 lt!2511609) (exprs!6882 ct2!306))))))

(declare-datatypes ((Unit!161454 0))(
  ( (Unit!161455) )
))
(declare-fun lt!2511606 () Unit!161454)

(declare-fun lambda!411254 () Int)

(declare-fun lemmaConcatPreservesForall!722 (List!67704 List!67704 Int) Unit!161454)

(assert (=> b!7020490 (= lt!2511606 (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254))))

(declare-fun lambda!411253 () Int)

(declare-fun mapPost2!241 ((Set Context!12764) Int Context!12764) Context!12764)

(assert (=> b!7020490 (= lt!2511609 (mapPost2!241 z1!570 lambda!411253 lt!2511616))))

(declare-fun b!7020492 () Bool)

(declare-fun e!4220169 () Bool)

(declare-fun e!4220163 () Bool)

(assert (=> b!7020492 (= e!4220169 e!4220163)))

(declare-fun res!2865668 () Bool)

(assert (=> b!7020492 (=> res!2865668 e!4220163)))

(declare-fun lt!2511613 () Bool)

(assert (=> b!7020492 (= res!2865668 (not lt!2511613))))

(assert (=> b!7020492 (= lt!2511613 true)))

(declare-fun lt!2511617 () (Set Context!12764))

(declare-fun matchZipper!2926 ((Set Context!12764) List!67703) Bool)

(assert (=> b!7020492 (= lt!2511613 (matchZipper!2926 lt!2511617 Nil!67579))))

(declare-fun lt!2511624 () Unit!161454)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!17 ((Set Context!12764) List!67703) Unit!161454)

(assert (=> b!7020492 (= lt!2511624 (lemmaZipperOfEmptyContextMatchesEmptyString!17 lt!2511617 Nil!67579))))

(assert (=> b!7020492 (= lt!2511617 (set.insert lt!2511609 (as set.empty (Set Context!12764))))))

(declare-fun b!7020493 () Bool)

(declare-fun e!4220168 () Bool)

(declare-fun tp!1933943 () Bool)

(assert (=> b!7020493 (= e!4220168 tp!1933943)))

(declare-fun b!7020494 () Bool)

(declare-fun e!4220164 () Bool)

(declare-fun tp_is_empty!43997 () Bool)

(declare-fun tp!1933940 () Bool)

(assert (=> b!7020494 (= e!4220164 (and tp_is_empty!43997 tp!1933940))))

(declare-fun setElem!48681 () Context!12764)

(declare-fun setNonEmpty!48681 () Bool)

(declare-fun setRes!48681 () Bool)

(declare-fun e!4220170 () Bool)

(declare-fun tp!1933941 () Bool)

(declare-fun inv!86325 (Context!12764) Bool)

(assert (=> setNonEmpty!48681 (= setRes!48681 (and tp!1933941 (inv!86325 setElem!48681) e!4220170))))

(declare-fun setRest!48681 () (Set Context!12764))

(assert (=> setNonEmpty!48681 (= z1!570 (set.union (set.insert setElem!48681 (as set.empty (Set Context!12764))) setRest!48681))))

(declare-fun setIsEmpty!48681 () Bool)

(assert (=> setIsEmpty!48681 setRes!48681))

(declare-fun e!4220172 () Bool)

(declare-fun e!4220171 () Bool)

(assert (=> b!7020495 (= e!4220172 e!4220171)))

(declare-fun res!2865670 () Bool)

(assert (=> b!7020495 (=> res!2865670 e!4220171)))

(declare-fun lt!2511607 () (Set Context!12764))

(declare-fun lt!2511614 () (Set Context!12764))

(declare-fun derivationStepZipper!2866 ((Set Context!12764) C!35042) (Set Context!12764))

(assert (=> b!7020495 (= res!2865670 (not (= (derivationStepZipper!2866 lt!2511614 (h!74027 s!7408)) lt!2511607)))))

(declare-fun lambda!411255 () Int)

(declare-fun flatMap!2372 ((Set Context!12764) Int) (Set Context!12764))

(declare-fun derivationStepZipperUp!2036 (Context!12764 C!35042) (Set Context!12764))

(assert (=> b!7020495 (= (flatMap!2372 lt!2511614 lambda!411255) (derivationStepZipperUp!2036 lt!2511610 (h!74027 s!7408)))))

(declare-fun lt!2511620 () Unit!161454)

(declare-fun lemmaFlatMapOnSingletonSet!1887 ((Set Context!12764) Context!12764 Int) Unit!161454)

(assert (=> b!7020495 (= lt!2511620 (lemmaFlatMapOnSingletonSet!1887 lt!2511614 lt!2511610 lambda!411255))))

(assert (=> b!7020495 (= lt!2511607 (derivationStepZipperUp!2036 lt!2511610 (h!74027 s!7408)))))

(declare-fun lt!2511615 () Unit!161454)

(assert (=> b!7020495 (= lt!2511615 (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254))))

(declare-fun ++!15427 (List!67703 List!67703) List!67703)

(assert (=> b!7020496 (= e!4220163 (= (++!15427 Nil!67579 s!7408) s!7408))))

(declare-datatypes ((List!67705 0))(
  ( (Nil!67581) (Cons!67581 (h!74029 Context!12764) (t!381460 List!67705)) )
))
(declare-fun lt!2511626 () List!67705)

(declare-fun content!13453 (List!67705) (Set Context!12764))

(assert (=> b!7020496 (matchZipper!2926 (content!13453 lt!2511626) Nil!67579)))

(declare-fun lt!2511605 () Unit!161454)

(declare-fun lemmaExistsMatchingContextThenMatchingString!35 (List!67705 List!67703) Unit!161454)

(assert (=> b!7020496 (= lt!2511605 (lemmaExistsMatchingContextThenMatchingString!35 lt!2511626 Nil!67579))))

(declare-fun toList!10746 ((Set Context!12764)) List!67705)

(assert (=> b!7020496 (= lt!2511626 (toList!10746 z1!570))))

(declare-fun exists!3268 ((Set Context!12764) Int) Bool)

(assert (=> b!7020496 (exists!3268 z1!570 lambda!411256)))

(declare-fun lt!2511618 () Unit!161454)

(declare-fun lemmaContainsThenExists!108 ((Set Context!12764) Context!12764 Int) Unit!161454)

(assert (=> b!7020496 (= lt!2511618 (lemmaContainsThenExists!108 z1!570 lt!2511609 lambda!411256))))

(declare-fun lt!2511608 () (Set Context!12764))

(declare-datatypes ((tuple2!68038 0))(
  ( (tuple2!68039 (_1!37322 List!67703) (_2!37322 List!67703)) )
))
(declare-datatypes ((Option!16851 0))(
  ( (None!16850) (Some!16850 (v!53128 tuple2!68038)) )
))
(declare-fun isDefined!13552 (Option!16851) Bool)

(declare-fun findConcatSeparationZippers!367 ((Set Context!12764) (Set Context!12764) List!67703 List!67703 List!67703) Option!16851)

(assert (=> b!7020496 (isDefined!13552 (findConcatSeparationZippers!367 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408))))

(declare-fun lt!2511612 () Unit!161454)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!39 ((Set Context!12764) (Set Context!12764) List!67703 List!67703 List!67703 List!67703 List!67703) Unit!161454)

(assert (=> b!7020496 (= lt!2511612 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!39 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408 Nil!67579 s!7408))))

(declare-fun e!4220173 () Bool)

(assert (=> b!7020497 (= e!4220173 (not e!4220166))))

(declare-fun res!2865676 () Bool)

(assert (=> b!7020497 (=> res!2865676 e!4220166)))

(declare-fun lt!2511623 () (Set Context!12764))

(assert (=> b!7020497 (= res!2865676 (not (matchZipper!2926 lt!2511623 s!7408)))))

(assert (=> b!7020497 (= lt!2511623 (set.insert lt!2511616 (as set.empty (Set Context!12764))))))

(declare-fun lt!2511619 () (Set Context!12764))

(declare-fun getWitness!1355 ((Set Context!12764) Int) Context!12764)

(assert (=> b!7020497 (= lt!2511616 (getWitness!1355 lt!2511619 lambda!411252))))

(declare-fun lt!2511625 () List!67705)

(declare-fun exists!3269 (List!67705 Int) Bool)

(assert (=> b!7020497 (exists!3269 lt!2511625 lambda!411252)))

(declare-fun lt!2511621 () Unit!161454)

(declare-fun lemmaZipperMatchesExistsMatchingContext!355 (List!67705 List!67703) Unit!161454)

(assert (=> b!7020497 (= lt!2511621 (lemmaZipperMatchesExistsMatchingContext!355 lt!2511625 s!7408))))

(assert (=> b!7020497 (= lt!2511625 (toList!10746 lt!2511619))))

(declare-fun b!7020498 () Bool)

(declare-fun res!2865669 () Bool)

(assert (=> b!7020498 (=> res!2865669 e!4220166)))

(assert (=> b!7020498 (= res!2865669 (not (set.member lt!2511616 lt!2511619)))))

(declare-fun b!7020499 () Bool)

(declare-fun tp!1933942 () Bool)

(assert (=> b!7020499 (= e!4220170 tp!1933942)))

(declare-fun res!2865675 () Bool)

(assert (=> start!676996 (=> (not res!2865675) (not e!4220173))))

(assert (=> start!676996 (= res!2865675 (matchZipper!2926 lt!2511619 s!7408))))

(declare-fun appendTo!507 ((Set Context!12764) Context!12764) (Set Context!12764))

(assert (=> start!676996 (= lt!2511619 (appendTo!507 z1!570 ct2!306))))

(assert (=> start!676996 e!4220173))

(declare-fun condSetEmpty!48681 () Bool)

(assert (=> start!676996 (= condSetEmpty!48681 (= z1!570 (as set.empty (Set Context!12764))))))

(assert (=> start!676996 setRes!48681))

(assert (=> start!676996 (and (inv!86325 ct2!306) e!4220168)))

(assert (=> start!676996 e!4220164))

(declare-fun b!7020491 () Bool)

(declare-fun res!2865666 () Bool)

(assert (=> b!7020491 (=> (not res!2865666) (not e!4220173))))

(assert (=> b!7020491 (= res!2865666 (is-Cons!67579 s!7408))))

(declare-fun b!7020500 () Bool)

(declare-fun res!2865667 () Bool)

(assert (=> b!7020500 (=> res!2865667 e!4220171)))

(assert (=> b!7020500 (= res!2865667 (is-Cons!67580 (exprs!6882 lt!2511609)))))

(declare-fun b!7020501 () Bool)

(declare-fun e!4220167 () Bool)

(assert (=> b!7020501 (= e!4220171 e!4220167)))

(declare-fun res!2865672 () Bool)

(assert (=> b!7020501 (=> res!2865672 e!4220167)))

(assert (=> b!7020501 (= res!2865672 (not (= lt!2511610 ct2!306)))))

(declare-fun lt!2511622 () Unit!161454)

(assert (=> b!7020501 (= lt!2511622 (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254))))

(declare-fun b!7020502 () Bool)

(assert (=> b!7020502 (= e!4220167 e!4220169)))

(declare-fun res!2865674 () Bool)

(assert (=> b!7020502 (=> res!2865674 e!4220169)))

(assert (=> b!7020502 (= res!2865674 (not (matchZipper!2926 lt!2511608 s!7408)))))

(assert (=> b!7020502 (= lt!2511608 (set.insert ct2!306 (as set.empty (Set Context!12764))))))

(declare-fun b!7020503 () Bool)

(assert (=> b!7020503 (= e!4220165 e!4220172)))

(declare-fun res!2865673 () Bool)

(assert (=> b!7020503 (=> res!2865673 e!4220172)))

(assert (=> b!7020503 (= res!2865673 (not (= lt!2511614 lt!2511623)))))

(assert (=> b!7020503 (= lt!2511614 (set.insert lt!2511610 (as set.empty (Set Context!12764))))))

(declare-fun lt!2511611 () Unit!161454)

(assert (=> b!7020503 (= lt!2511611 (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254))))

(assert (= (and start!676996 res!2865675) b!7020491))

(assert (= (and b!7020491 res!2865666) b!7020497))

(assert (= (and b!7020497 (not res!2865676)) b!7020498))

(assert (= (and b!7020498 (not res!2865669)) b!7020490))

(assert (= (and b!7020490 (not res!2865671)) b!7020503))

(assert (= (and b!7020503 (not res!2865673)) b!7020495))

(assert (= (and b!7020495 (not res!2865670)) b!7020500))

(assert (= (and b!7020500 (not res!2865667)) b!7020501))

(assert (= (and b!7020501 (not res!2865672)) b!7020502))

(assert (= (and b!7020502 (not res!2865674)) b!7020492))

(assert (= (and b!7020492 (not res!2865668)) b!7020496))

(assert (= (and start!676996 condSetEmpty!48681) setIsEmpty!48681))

(assert (= (and start!676996 (not condSetEmpty!48681)) setNonEmpty!48681))

(assert (= setNonEmpty!48681 b!7020499))

(assert (= start!676996 b!7020493))

(assert (= (and start!676996 (is-Cons!67579 s!7408)) b!7020494))

(declare-fun m!7722020 () Bool)

(assert (=> b!7020495 m!7722020))

(declare-fun m!7722022 () Bool)

(assert (=> b!7020495 m!7722022))

(declare-fun m!7722024 () Bool)

(assert (=> b!7020495 m!7722024))

(declare-fun m!7722026 () Bool)

(assert (=> b!7020495 m!7722026))

(declare-fun m!7722028 () Bool)

(assert (=> b!7020495 m!7722028))

(declare-fun m!7722030 () Bool)

(assert (=> b!7020498 m!7722030))

(declare-fun m!7722032 () Bool)

(assert (=> b!7020502 m!7722032))

(declare-fun m!7722034 () Bool)

(assert (=> b!7020502 m!7722034))

(declare-fun m!7722036 () Bool)

(assert (=> b!7020503 m!7722036))

(assert (=> b!7020503 m!7722028))

(declare-fun m!7722038 () Bool)

(assert (=> b!7020490 m!7722038))

(declare-fun m!7722040 () Bool)

(assert (=> b!7020490 m!7722040))

(assert (=> b!7020490 m!7722028))

(declare-fun m!7722042 () Bool)

(assert (=> b!7020490 m!7722042))

(declare-fun m!7722044 () Bool)

(assert (=> b!7020496 m!7722044))

(declare-fun m!7722046 () Bool)

(assert (=> b!7020496 m!7722046))

(declare-fun m!7722048 () Bool)

(assert (=> b!7020496 m!7722048))

(declare-fun m!7722050 () Bool)

(assert (=> b!7020496 m!7722050))

(declare-fun m!7722052 () Bool)

(assert (=> b!7020496 m!7722052))

(declare-fun m!7722054 () Bool)

(assert (=> b!7020496 m!7722054))

(declare-fun m!7722056 () Bool)

(assert (=> b!7020496 m!7722056))

(declare-fun m!7722058 () Bool)

(assert (=> b!7020496 m!7722058))

(assert (=> b!7020496 m!7722048))

(declare-fun m!7722060 () Bool)

(assert (=> b!7020496 m!7722060))

(assert (=> b!7020496 m!7722054))

(declare-fun m!7722062 () Bool)

(assert (=> b!7020496 m!7722062))

(declare-fun m!7722064 () Bool)

(assert (=> b!7020492 m!7722064))

(declare-fun m!7722066 () Bool)

(assert (=> b!7020492 m!7722066))

(declare-fun m!7722068 () Bool)

(assert (=> b!7020492 m!7722068))

(declare-fun m!7722070 () Bool)

(assert (=> start!676996 m!7722070))

(declare-fun m!7722072 () Bool)

(assert (=> start!676996 m!7722072))

(declare-fun m!7722074 () Bool)

(assert (=> start!676996 m!7722074))

(declare-fun m!7722076 () Bool)

(assert (=> b!7020497 m!7722076))

(declare-fun m!7722078 () Bool)

(assert (=> b!7020497 m!7722078))

(declare-fun m!7722080 () Bool)

(assert (=> b!7020497 m!7722080))

(declare-fun m!7722082 () Bool)

(assert (=> b!7020497 m!7722082))

(declare-fun m!7722084 () Bool)

(assert (=> b!7020497 m!7722084))

(declare-fun m!7722086 () Bool)

(assert (=> b!7020497 m!7722086))

(declare-fun m!7722088 () Bool)

(assert (=> setNonEmpty!48681 m!7722088))

(assert (=> b!7020501 m!7722028))

(push 1)

(assert (not b!7020490))

(assert (not setNonEmpty!48681))

(assert (not b!7020499))

(assert (not b!7020501))

(assert (not b!7020494))

(assert (not start!676996))

(assert (not b!7020492))

(assert tp_is_empty!43997)

(assert (not b!7020495))

(assert (not b!7020493))

(assert (not b!7020502))

(assert (not b!7020497))

(assert (not b!7020496))

(assert (not b!7020503))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7020567 () Bool)

(declare-fun e!4220212 () List!67704)

(assert (=> b!7020567 (= e!4220212 (Cons!67580 (h!74028 (exprs!6882 lt!2511609)) (++!15426 (t!381459 (exprs!6882 lt!2511609)) (exprs!6882 ct2!306))))))

(declare-fun b!7020568 () Bool)

(declare-fun res!2865717 () Bool)

(declare-fun e!4220211 () Bool)

(assert (=> b!7020568 (=> (not res!2865717) (not e!4220211))))

(declare-fun lt!2511697 () List!67704)

(declare-fun size!41019 (List!67704) Int)

(assert (=> b!7020568 (= res!2865717 (= (size!41019 lt!2511697) (+ (size!41019 (exprs!6882 lt!2511609)) (size!41019 (exprs!6882 ct2!306)))))))

(declare-fun d!2188307 () Bool)

(assert (=> d!2188307 e!4220211))

(declare-fun res!2865716 () Bool)

(assert (=> d!2188307 (=> (not res!2865716) (not e!4220211))))

(declare-fun content!13455 (List!67704) (Set Regex!17386))

(assert (=> d!2188307 (= res!2865716 (= (content!13455 lt!2511697) (set.union (content!13455 (exprs!6882 lt!2511609)) (content!13455 (exprs!6882 ct2!306)))))))

(assert (=> d!2188307 (= lt!2511697 e!4220212)))

(declare-fun c!1304707 () Bool)

(assert (=> d!2188307 (= c!1304707 (is-Nil!67580 (exprs!6882 lt!2511609)))))

(assert (=> d!2188307 (= (++!15426 (exprs!6882 lt!2511609) (exprs!6882 ct2!306)) lt!2511697)))

(declare-fun b!7020569 () Bool)

(assert (=> b!7020569 (= e!4220211 (or (not (= (exprs!6882 ct2!306) Nil!67580)) (= lt!2511697 (exprs!6882 lt!2511609))))))

(declare-fun b!7020566 () Bool)

(assert (=> b!7020566 (= e!4220212 (exprs!6882 ct2!306))))

(assert (= (and d!2188307 c!1304707) b!7020566))

(assert (= (and d!2188307 (not c!1304707)) b!7020567))

(assert (= (and d!2188307 res!2865716) b!7020568))

(assert (= (and b!7020568 res!2865717) b!7020569))

(declare-fun m!7722160 () Bool)

(assert (=> b!7020567 m!7722160))

(declare-fun m!7722162 () Bool)

(assert (=> b!7020568 m!7722162))

(declare-fun m!7722164 () Bool)

(assert (=> b!7020568 m!7722164))

(declare-fun m!7722166 () Bool)

(assert (=> b!7020568 m!7722166))

(declare-fun m!7722168 () Bool)

(assert (=> d!2188307 m!7722168))

(declare-fun m!7722170 () Bool)

(assert (=> d!2188307 m!7722170))

(declare-fun m!7722172 () Bool)

(assert (=> d!2188307 m!7722172))

(assert (=> b!7020490 d!2188307))

(declare-fun d!2188309 () Bool)

(declare-fun forall!16294 (List!67704 Int) Bool)

(assert (=> d!2188309 (forall!16294 (++!15426 (exprs!6882 lt!2511609) (exprs!6882 ct2!306)) lambda!411254)))

(declare-fun lt!2511700 () Unit!161454)

(declare-fun choose!52942 (List!67704 List!67704 Int) Unit!161454)

(assert (=> d!2188309 (= lt!2511700 (choose!52942 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254))))

(assert (=> d!2188309 (forall!16294 (exprs!6882 lt!2511609) lambda!411254)))

(assert (=> d!2188309 (= (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511609) (exprs!6882 ct2!306) lambda!411254) lt!2511700)))

(declare-fun bs!1867451 () Bool)

(assert (= bs!1867451 d!2188309))

(assert (=> bs!1867451 m!7722040))

(assert (=> bs!1867451 m!7722040))

(declare-fun m!7722174 () Bool)

(assert (=> bs!1867451 m!7722174))

(declare-fun m!7722176 () Bool)

(assert (=> bs!1867451 m!7722176))

(declare-fun m!7722178 () Bool)

(assert (=> bs!1867451 m!7722178))

(assert (=> b!7020490 d!2188309))

(declare-fun d!2188311 () Bool)

(declare-fun e!4220215 () Bool)

(assert (=> d!2188311 e!4220215))

(declare-fun res!2865720 () Bool)

(assert (=> d!2188311 (=> (not res!2865720) (not e!4220215))))

(declare-fun lt!2511703 () Context!12764)

(declare-fun dynLambda!27223 (Int Context!12764) Context!12764)

(assert (=> d!2188311 (= res!2865720 (= lt!2511616 (dynLambda!27223 lambda!411253 lt!2511703)))))

(declare-fun choose!52943 ((Set Context!12764) Int Context!12764) Context!12764)

(assert (=> d!2188311 (= lt!2511703 (choose!52943 z1!570 lambda!411253 lt!2511616))))

(declare-fun map!15675 ((Set Context!12764) Int) (Set Context!12764))

(assert (=> d!2188311 (set.member lt!2511616 (map!15675 z1!570 lambda!411253))))

(assert (=> d!2188311 (= (mapPost2!241 z1!570 lambda!411253 lt!2511616) lt!2511703)))

(declare-fun b!7020573 () Bool)

(assert (=> b!7020573 (= e!4220215 (set.member lt!2511703 z1!570))))

(assert (= (and d!2188311 res!2865720) b!7020573))

(declare-fun b_lambda!265043 () Bool)

(assert (=> (not b_lambda!265043) (not d!2188311)))

(declare-fun m!7722180 () Bool)

(assert (=> d!2188311 m!7722180))

(declare-fun m!7722182 () Bool)

(assert (=> d!2188311 m!7722182))

(declare-fun m!7722184 () Bool)

(assert (=> d!2188311 m!7722184))

(declare-fun m!7722186 () Bool)

(assert (=> d!2188311 m!7722186))

(declare-fun m!7722188 () Bool)

(assert (=> b!7020573 m!7722188))

(assert (=> b!7020490 d!2188311))

(declare-fun bs!1867452 () Bool)

(declare-fun d!2188313 () Bool)

(assert (= bs!1867452 (and d!2188313 b!7020490)))

(declare-fun lambda!411284 () Int)

(assert (=> bs!1867452 (= lambda!411284 lambda!411254)))

(assert (=> d!2188313 (= (inv!86325 setElem!48681) (forall!16294 (exprs!6882 setElem!48681) lambda!411284))))

(declare-fun bs!1867453 () Bool)

(assert (= bs!1867453 d!2188313))

(declare-fun m!7722190 () Bool)

(assert (=> bs!1867453 m!7722190))

(assert (=> setNonEmpty!48681 d!2188313))

(declare-fun d!2188315 () Bool)

(declare-fun c!1304710 () Bool)

(declare-fun isEmpty!39450 (List!67703) Bool)

(assert (=> d!2188315 (= c!1304710 (isEmpty!39450 Nil!67579))))

(declare-fun e!4220218 () Bool)

(assert (=> d!2188315 (= (matchZipper!2926 lt!2511617 Nil!67579) e!4220218)))

(declare-fun b!7020578 () Bool)

(declare-fun nullableZipper!2517 ((Set Context!12764)) Bool)

(assert (=> b!7020578 (= e!4220218 (nullableZipper!2517 lt!2511617))))

(declare-fun b!7020579 () Bool)

(declare-fun head!14207 (List!67703) C!35042)

(declare-fun tail!13476 (List!67703) List!67703)

(assert (=> b!7020579 (= e!4220218 (matchZipper!2926 (derivationStepZipper!2866 lt!2511617 (head!14207 Nil!67579)) (tail!13476 Nil!67579)))))

(assert (= (and d!2188315 c!1304710) b!7020578))

(assert (= (and d!2188315 (not c!1304710)) b!7020579))

(declare-fun m!7722192 () Bool)

(assert (=> d!2188315 m!7722192))

(declare-fun m!7722194 () Bool)

(assert (=> b!7020578 m!7722194))

(declare-fun m!7722196 () Bool)

(assert (=> b!7020579 m!7722196))

(assert (=> b!7020579 m!7722196))

(declare-fun m!7722198 () Bool)

(assert (=> b!7020579 m!7722198))

(declare-fun m!7722200 () Bool)

(assert (=> b!7020579 m!7722200))

(assert (=> b!7020579 m!7722198))

(assert (=> b!7020579 m!7722200))

(declare-fun m!7722202 () Bool)

(assert (=> b!7020579 m!7722202))

(assert (=> b!7020492 d!2188315))

(declare-fun d!2188317 () Bool)

(assert (=> d!2188317 (= (matchZipper!2926 lt!2511617 Nil!67579) (isEmpty!39450 Nil!67579))))

(declare-fun lt!2511706 () Unit!161454)

(declare-fun choose!52944 ((Set Context!12764) List!67703) Unit!161454)

(assert (=> d!2188317 (= lt!2511706 (choose!52944 lt!2511617 Nil!67579))))

(assert (=> d!2188317 (= lt!2511617 (set.singleton (Context!12765 Nil!67580)))))

(assert (=> d!2188317 (= (lemmaZipperOfEmptyContextMatchesEmptyString!17 lt!2511617 Nil!67579) lt!2511706)))

(declare-fun bs!1867454 () Bool)

(assert (= bs!1867454 d!2188317))

(assert (=> bs!1867454 m!7722064))

(assert (=> bs!1867454 m!7722192))

(declare-fun m!7722204 () Bool)

(assert (=> bs!1867454 m!7722204))

(assert (=> b!7020492 d!2188317))

(assert (=> b!7020495 d!2188309))

(declare-fun d!2188319 () Bool)

(declare-fun choose!52945 ((Set Context!12764) Int) (Set Context!12764))

(assert (=> d!2188319 (= (flatMap!2372 lt!2511614 lambda!411255) (choose!52945 lt!2511614 lambda!411255))))

(declare-fun bs!1867455 () Bool)

(assert (= bs!1867455 d!2188319))

(declare-fun m!7722206 () Bool)

(assert (=> bs!1867455 m!7722206))

(assert (=> b!7020495 d!2188319))

(declare-fun bs!1867456 () Bool)

(declare-fun d!2188321 () Bool)

(assert (= bs!1867456 (and d!2188321 b!7020495)))

(declare-fun lambda!411287 () Int)

(assert (=> bs!1867456 (= lambda!411287 lambda!411255)))

(assert (=> d!2188321 true))

(assert (=> d!2188321 (= (derivationStepZipper!2866 lt!2511614 (h!74027 s!7408)) (flatMap!2372 lt!2511614 lambda!411287))))

(declare-fun bs!1867457 () Bool)

(assert (= bs!1867457 d!2188321))

(declare-fun m!7722208 () Bool)

(assert (=> bs!1867457 m!7722208))

(assert (=> b!7020495 d!2188321))

(declare-fun b!7020592 () Bool)

(declare-fun e!4220225 () (Set Context!12764))

(declare-fun e!4220227 () (Set Context!12764))

(assert (=> b!7020592 (= e!4220225 e!4220227)))

(declare-fun c!1304718 () Bool)

(assert (=> b!7020592 (= c!1304718 (is-Cons!67580 (exprs!6882 lt!2511610)))))

(declare-fun d!2188323 () Bool)

(declare-fun c!1304717 () Bool)

(declare-fun e!4220226 () Bool)

(assert (=> d!2188323 (= c!1304717 e!4220226)))

(declare-fun res!2865723 () Bool)

(assert (=> d!2188323 (=> (not res!2865723) (not e!4220226))))

(assert (=> d!2188323 (= res!2865723 (is-Cons!67580 (exprs!6882 lt!2511610)))))

(assert (=> d!2188323 (= (derivationStepZipperUp!2036 lt!2511610 (h!74027 s!7408)) e!4220225)))

(declare-fun b!7020593 () Bool)

(declare-fun call!637619 () (Set Context!12764))

(assert (=> b!7020593 (= e!4220227 call!637619)))

(declare-fun b!7020594 () Bool)

(assert (=> b!7020594 (= e!4220225 (set.union call!637619 (derivationStepZipperUp!2036 (Context!12765 (t!381459 (exprs!6882 lt!2511610))) (h!74027 s!7408))))))

(declare-fun b!7020595 () Bool)

(declare-fun nullable!7137 (Regex!17386) Bool)

(assert (=> b!7020595 (= e!4220226 (nullable!7137 (h!74028 (exprs!6882 lt!2511610))))))

(declare-fun bm!637614 () Bool)

(declare-fun derivationStepZipperDown!2095 (Regex!17386 Context!12764 C!35042) (Set Context!12764))

(assert (=> bm!637614 (= call!637619 (derivationStepZipperDown!2095 (h!74028 (exprs!6882 lt!2511610)) (Context!12765 (t!381459 (exprs!6882 lt!2511610))) (h!74027 s!7408)))))

(declare-fun b!7020596 () Bool)

(assert (=> b!7020596 (= e!4220227 (as set.empty (Set Context!12764)))))

(assert (= (and d!2188323 res!2865723) b!7020595))

(assert (= (and d!2188323 c!1304717) b!7020594))

(assert (= (and d!2188323 (not c!1304717)) b!7020592))

(assert (= (and b!7020592 c!1304718) b!7020593))

(assert (= (and b!7020592 (not c!1304718)) b!7020596))

(assert (= (or b!7020594 b!7020593) bm!637614))

(declare-fun m!7722210 () Bool)

(assert (=> b!7020594 m!7722210))

(declare-fun m!7722212 () Bool)

(assert (=> b!7020595 m!7722212))

(declare-fun m!7722214 () Bool)

(assert (=> bm!637614 m!7722214))

(assert (=> b!7020495 d!2188323))

(declare-fun d!2188327 () Bool)

(declare-fun dynLambda!27224 (Int Context!12764) (Set Context!12764))

(assert (=> d!2188327 (= (flatMap!2372 lt!2511614 lambda!411255) (dynLambda!27224 lambda!411255 lt!2511610))))

(declare-fun lt!2511709 () Unit!161454)

(declare-fun choose!52946 ((Set Context!12764) Context!12764 Int) Unit!161454)

(assert (=> d!2188327 (= lt!2511709 (choose!52946 lt!2511614 lt!2511610 lambda!411255))))

(assert (=> d!2188327 (= lt!2511614 (set.insert lt!2511610 (as set.empty (Set Context!12764))))))

(assert (=> d!2188327 (= (lemmaFlatMapOnSingletonSet!1887 lt!2511614 lt!2511610 lambda!411255) lt!2511709)))

(declare-fun b_lambda!265045 () Bool)

(assert (=> (not b_lambda!265045) (not d!2188327)))

(declare-fun bs!1867458 () Bool)

(assert (= bs!1867458 d!2188327))

(assert (=> bs!1867458 m!7722022))

(declare-fun m!7722216 () Bool)

(assert (=> bs!1867458 m!7722216))

(declare-fun m!7722218 () Bool)

(assert (=> bs!1867458 m!7722218))

(assert (=> bs!1867458 m!7722036))

(assert (=> b!7020495 d!2188327))

(declare-fun d!2188329 () Bool)

(declare-fun c!1304721 () Bool)

(assert (=> d!2188329 (= c!1304721 (isEmpty!39450 s!7408))))

(declare-fun e!4220230 () Bool)

(assert (=> d!2188329 (= (matchZipper!2926 lt!2511619 s!7408) e!4220230)))

(declare-fun b!7020601 () Bool)

(assert (=> b!7020601 (= e!4220230 (nullableZipper!2517 lt!2511619))))

(declare-fun b!7020602 () Bool)

(assert (=> b!7020602 (= e!4220230 (matchZipper!2926 (derivationStepZipper!2866 lt!2511619 (head!14207 s!7408)) (tail!13476 s!7408)))))

(assert (= (and d!2188329 c!1304721) b!7020601))

(assert (= (and d!2188329 (not c!1304721)) b!7020602))

(declare-fun m!7722220 () Bool)

(assert (=> d!2188329 m!7722220))

(declare-fun m!7722222 () Bool)

(assert (=> b!7020601 m!7722222))

(declare-fun m!7722224 () Bool)

(assert (=> b!7020602 m!7722224))

(assert (=> b!7020602 m!7722224))

(declare-fun m!7722226 () Bool)

(assert (=> b!7020602 m!7722226))

(declare-fun m!7722228 () Bool)

(assert (=> b!7020602 m!7722228))

(assert (=> b!7020602 m!7722226))

(assert (=> b!7020602 m!7722228))

(declare-fun m!7722230 () Bool)

(assert (=> b!7020602 m!7722230))

(assert (=> start!676996 d!2188329))

(declare-fun bs!1867459 () Bool)

(declare-fun d!2188331 () Bool)

(assert (= bs!1867459 (and d!2188331 b!7020490)))

(declare-fun lambda!411292 () Int)

(assert (=> bs!1867459 (= lambda!411292 lambda!411253)))

(assert (=> d!2188331 true))

(assert (=> d!2188331 (= (appendTo!507 z1!570 ct2!306) (map!15675 z1!570 lambda!411292))))

(declare-fun bs!1867460 () Bool)

(assert (= bs!1867460 d!2188331))

(declare-fun m!7722244 () Bool)

(assert (=> bs!1867460 m!7722244))

(assert (=> start!676996 d!2188331))

(declare-fun bs!1867461 () Bool)

(declare-fun d!2188335 () Bool)

(assert (= bs!1867461 (and d!2188335 b!7020490)))

(declare-fun lambda!411293 () Int)

(assert (=> bs!1867461 (= lambda!411293 lambda!411254)))

(declare-fun bs!1867462 () Bool)

(assert (= bs!1867462 (and d!2188335 d!2188313)))

(assert (=> bs!1867462 (= lambda!411293 lambda!411284)))

(assert (=> d!2188335 (= (inv!86325 ct2!306) (forall!16294 (exprs!6882 ct2!306) lambda!411293))))

(declare-fun bs!1867463 () Bool)

(assert (= bs!1867463 d!2188335))

(declare-fun m!7722246 () Bool)

(assert (=> bs!1867463 m!7722246))

(assert (=> start!676996 d!2188335))

(declare-fun d!2188337 () Bool)

(declare-fun c!1304724 () Bool)

(assert (=> d!2188337 (= c!1304724 (isEmpty!39450 s!7408))))

(declare-fun e!4220232 () Bool)

(assert (=> d!2188337 (= (matchZipper!2926 lt!2511608 s!7408) e!4220232)))

(declare-fun b!7020605 () Bool)

(assert (=> b!7020605 (= e!4220232 (nullableZipper!2517 lt!2511608))))

(declare-fun b!7020606 () Bool)

(assert (=> b!7020606 (= e!4220232 (matchZipper!2926 (derivationStepZipper!2866 lt!2511608 (head!14207 s!7408)) (tail!13476 s!7408)))))

(assert (= (and d!2188337 c!1304724) b!7020605))

(assert (= (and d!2188337 (not c!1304724)) b!7020606))

(assert (=> d!2188337 m!7722220))

(declare-fun m!7722248 () Bool)

(assert (=> b!7020605 m!7722248))

(assert (=> b!7020606 m!7722224))

(assert (=> b!7020606 m!7722224))

(declare-fun m!7722250 () Bool)

(assert (=> b!7020606 m!7722250))

(assert (=> b!7020606 m!7722228))

(assert (=> b!7020606 m!7722250))

(assert (=> b!7020606 m!7722228))

(declare-fun m!7722252 () Bool)

(assert (=> b!7020606 m!7722252))

(assert (=> b!7020502 d!2188337))

(declare-fun d!2188339 () Bool)

(declare-fun e!4220235 () Bool)

(assert (=> d!2188339 e!4220235))

(declare-fun res!2865726 () Bool)

(assert (=> d!2188339 (=> (not res!2865726) (not e!4220235))))

(declare-fun lt!2511714 () List!67705)

(declare-fun noDuplicate!2594 (List!67705) Bool)

(assert (=> d!2188339 (= res!2865726 (noDuplicate!2594 lt!2511714))))

(declare-fun choose!52947 ((Set Context!12764)) List!67705)

(assert (=> d!2188339 (= lt!2511714 (choose!52947 z1!570))))

(assert (=> d!2188339 (= (toList!10746 z1!570) lt!2511714)))

(declare-fun b!7020609 () Bool)

(assert (=> b!7020609 (= e!4220235 (= (content!13453 lt!2511714) z1!570))))

(assert (= (and d!2188339 res!2865726) b!7020609))

(declare-fun m!7722254 () Bool)

(assert (=> d!2188339 m!7722254))

(declare-fun m!7722256 () Bool)

(assert (=> d!2188339 m!7722256))

(declare-fun m!7722258 () Bool)

(assert (=> b!7020609 m!7722258))

(assert (=> b!7020496 d!2188339))

(declare-fun b!7020618 () Bool)

(declare-fun e!4220240 () List!67703)

(assert (=> b!7020618 (= e!4220240 s!7408)))

(declare-fun b!7020619 () Bool)

(assert (=> b!7020619 (= e!4220240 (Cons!67579 (h!74027 Nil!67579) (++!15427 (t!381458 Nil!67579) s!7408)))))

(declare-fun b!7020621 () Bool)

(declare-fun e!4220241 () Bool)

(declare-fun lt!2511719 () List!67703)

(assert (=> b!7020621 (= e!4220241 (or (not (= s!7408 Nil!67579)) (= lt!2511719 Nil!67579)))))

(declare-fun d!2188341 () Bool)

(assert (=> d!2188341 e!4220241))

(declare-fun res!2865732 () Bool)

(assert (=> d!2188341 (=> (not res!2865732) (not e!4220241))))

(declare-fun content!13456 (List!67703) (Set C!35042))

(assert (=> d!2188341 (= res!2865732 (= (content!13456 lt!2511719) (set.union (content!13456 Nil!67579) (content!13456 s!7408))))))

(assert (=> d!2188341 (= lt!2511719 e!4220240)))

(declare-fun c!1304728 () Bool)

(assert (=> d!2188341 (= c!1304728 (is-Nil!67579 Nil!67579))))

(assert (=> d!2188341 (= (++!15427 Nil!67579 s!7408) lt!2511719)))

(declare-fun b!7020620 () Bool)

(declare-fun res!2865731 () Bool)

(assert (=> b!7020620 (=> (not res!2865731) (not e!4220241))))

(declare-fun size!41020 (List!67703) Int)

(assert (=> b!7020620 (= res!2865731 (= (size!41020 lt!2511719) (+ (size!41020 Nil!67579) (size!41020 s!7408))))))

(assert (= (and d!2188341 c!1304728) b!7020618))

(assert (= (and d!2188341 (not c!1304728)) b!7020619))

(assert (= (and d!2188341 res!2865732) b!7020620))

(assert (= (and b!7020620 res!2865731) b!7020621))

(declare-fun m!7722260 () Bool)

(assert (=> b!7020619 m!7722260))

(declare-fun m!7722262 () Bool)

(assert (=> d!2188341 m!7722262))

(declare-fun m!7722264 () Bool)

(assert (=> d!2188341 m!7722264))

(declare-fun m!7722266 () Bool)

(assert (=> d!2188341 m!7722266))

(declare-fun m!7722268 () Bool)

(assert (=> b!7020620 m!7722268))

(declare-fun m!7722272 () Bool)

(assert (=> b!7020620 m!7722272))

(declare-fun m!7722274 () Bool)

(assert (=> b!7020620 m!7722274))

(assert (=> b!7020496 d!2188341))

(declare-fun bs!1867468 () Bool)

(declare-fun d!2188343 () Bool)

(assert (= bs!1867468 (and d!2188343 b!7020497)))

(declare-fun lambda!411304 () Int)

(assert (=> bs!1867468 (= (= Nil!67579 s!7408) (= lambda!411304 lambda!411252))))

(declare-fun bs!1867469 () Bool)

(assert (= bs!1867469 (and d!2188343 b!7020496)))

(assert (=> bs!1867469 (= lambda!411304 lambda!411256)))

(assert (=> d!2188343 true))

(assert (=> d!2188343 (matchZipper!2926 (content!13453 lt!2511626) Nil!67579)))

(declare-fun lt!2511722 () Unit!161454)

(declare-fun choose!52948 (List!67705 List!67703) Unit!161454)

(assert (=> d!2188343 (= lt!2511722 (choose!52948 lt!2511626 Nil!67579))))

(assert (=> d!2188343 (exists!3269 lt!2511626 lambda!411304)))

(assert (=> d!2188343 (= (lemmaExistsMatchingContextThenMatchingString!35 lt!2511626 Nil!67579) lt!2511722)))

(declare-fun bs!1867470 () Bool)

(assert (= bs!1867470 d!2188343))

(assert (=> bs!1867470 m!7722048))

(assert (=> bs!1867470 m!7722048))

(assert (=> bs!1867470 m!7722060))

(declare-fun m!7722278 () Bool)

(assert (=> bs!1867470 m!7722278))

(declare-fun m!7722280 () Bool)

(assert (=> bs!1867470 m!7722280))

(assert (=> b!7020496 d!2188343))

(declare-fun d!2188349 () Bool)

(declare-fun isEmpty!39451 (Option!16851) Bool)

(assert (=> d!2188349 (= (isDefined!13552 (findConcatSeparationZippers!367 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408)) (not (isEmpty!39451 (findConcatSeparationZippers!367 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408))))))

(declare-fun bs!1867471 () Bool)

(assert (= bs!1867471 d!2188349))

(assert (=> bs!1867471 m!7722054))

(declare-fun m!7722282 () Bool)

(assert (=> bs!1867471 m!7722282))

(assert (=> b!7020496 d!2188349))

(declare-fun d!2188351 () Bool)

(declare-fun c!1304733 () Bool)

(assert (=> d!2188351 (= c!1304733 (is-Nil!67581 lt!2511626))))

(declare-fun e!4220244 () (Set Context!12764))

(assert (=> d!2188351 (= (content!13453 lt!2511626) e!4220244)))

(declare-fun b!7020626 () Bool)

(assert (=> b!7020626 (= e!4220244 (as set.empty (Set Context!12764)))))

(declare-fun b!7020627 () Bool)

(assert (=> b!7020627 (= e!4220244 (set.union (set.insert (h!74029 lt!2511626) (as set.empty (Set Context!12764))) (content!13453 (t!381460 lt!2511626))))))

(assert (= (and d!2188351 c!1304733) b!7020626))

(assert (= (and d!2188351 (not c!1304733)) b!7020627))

(declare-fun m!7722284 () Bool)

(assert (=> b!7020627 m!7722284))

(declare-fun m!7722286 () Bool)

(assert (=> b!7020627 m!7722286))

(assert (=> b!7020496 d!2188351))

(declare-fun d!2188353 () Bool)

(declare-fun lt!2511728 () Bool)

(assert (=> d!2188353 (= lt!2511728 (exists!3269 (toList!10746 z1!570) lambda!411256))))

(declare-fun choose!52949 ((Set Context!12764) Int) Bool)

(assert (=> d!2188353 (= lt!2511728 (choose!52949 z1!570 lambda!411256))))

(assert (=> d!2188353 (= (exists!3268 z1!570 lambda!411256) lt!2511728)))

(declare-fun bs!1867473 () Bool)

(assert (= bs!1867473 d!2188353))

(assert (=> bs!1867473 m!7722046))

(assert (=> bs!1867473 m!7722046))

(declare-fun m!7722294 () Bool)

(assert (=> bs!1867473 m!7722294))

(declare-fun m!7722296 () Bool)

(assert (=> bs!1867473 m!7722296))

(assert (=> b!7020496 d!2188353))

(declare-fun d!2188357 () Bool)

(assert (=> d!2188357 (isDefined!13552 (findConcatSeparationZippers!367 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408))))

(declare-fun lt!2511733 () Unit!161454)

(declare-fun choose!52950 ((Set Context!12764) (Set Context!12764) List!67703 List!67703 List!67703 List!67703 List!67703) Unit!161454)

(assert (=> d!2188357 (= lt!2511733 (choose!52950 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408 Nil!67579 s!7408))))

(assert (=> d!2188357 (matchZipper!2926 lt!2511617 Nil!67579)))

(assert (=> d!2188357 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!39 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408 Nil!67579 s!7408) lt!2511733)))

(declare-fun bs!1867474 () Bool)

(assert (= bs!1867474 d!2188357))

(assert (=> bs!1867474 m!7722054))

(assert (=> bs!1867474 m!7722054))

(assert (=> bs!1867474 m!7722062))

(declare-fun m!7722298 () Bool)

(assert (=> bs!1867474 m!7722298))

(assert (=> bs!1867474 m!7722064))

(assert (=> b!7020496 d!2188357))

(declare-fun d!2188359 () Bool)

(declare-fun c!1304736 () Bool)

(assert (=> d!2188359 (= c!1304736 (isEmpty!39450 Nil!67579))))

(declare-fun e!4220249 () Bool)

(assert (=> d!2188359 (= (matchZipper!2926 (content!13453 lt!2511626) Nil!67579) e!4220249)))

(declare-fun b!7020636 () Bool)

(assert (=> b!7020636 (= e!4220249 (nullableZipper!2517 (content!13453 lt!2511626)))))

(declare-fun b!7020637 () Bool)

(assert (=> b!7020637 (= e!4220249 (matchZipper!2926 (derivationStepZipper!2866 (content!13453 lt!2511626) (head!14207 Nil!67579)) (tail!13476 Nil!67579)))))

(assert (= (and d!2188359 c!1304736) b!7020636))

(assert (= (and d!2188359 (not c!1304736)) b!7020637))

(assert (=> d!2188359 m!7722192))

(assert (=> b!7020636 m!7722048))

(declare-fun m!7722300 () Bool)

(assert (=> b!7020636 m!7722300))

(assert (=> b!7020637 m!7722196))

(assert (=> b!7020637 m!7722048))

(assert (=> b!7020637 m!7722196))

(declare-fun m!7722302 () Bool)

(assert (=> b!7020637 m!7722302))

(assert (=> b!7020637 m!7722200))

(assert (=> b!7020637 m!7722302))

(assert (=> b!7020637 m!7722200))

(declare-fun m!7722304 () Bool)

(assert (=> b!7020637 m!7722304))

(assert (=> b!7020496 d!2188359))

(declare-fun b!7020666 () Bool)

(declare-fun e!4220266 () Bool)

(assert (=> b!7020666 (= e!4220266 (matchZipper!2926 lt!2511608 s!7408))))

(declare-fun b!7020667 () Bool)

(declare-fun e!4220268 () Bool)

(declare-fun lt!2511749 () Option!16851)

(declare-fun get!23698 (Option!16851) tuple2!68038)

(assert (=> b!7020667 (= e!4220268 (= (++!15427 (_1!37322 (get!23698 lt!2511749)) (_2!37322 (get!23698 lt!2511749))) s!7408))))

(declare-fun b!7020668 () Bool)

(declare-fun e!4220270 () Option!16851)

(assert (=> b!7020668 (= e!4220270 (Some!16850 (tuple2!68039 Nil!67579 s!7408)))))

(declare-fun b!7020669 () Bool)

(declare-fun res!2865756 () Bool)

(assert (=> b!7020669 (=> (not res!2865756) (not e!4220268))))

(assert (=> b!7020669 (= res!2865756 (matchZipper!2926 lt!2511608 (_2!37322 (get!23698 lt!2511749))))))

(declare-fun d!2188361 () Bool)

(declare-fun e!4220267 () Bool)

(assert (=> d!2188361 e!4220267))

(declare-fun res!2865755 () Bool)

(assert (=> d!2188361 (=> res!2865755 e!4220267)))

(assert (=> d!2188361 (= res!2865755 e!4220268)))

(declare-fun res!2865752 () Bool)

(assert (=> d!2188361 (=> (not res!2865752) (not e!4220268))))

(assert (=> d!2188361 (= res!2865752 (isDefined!13552 lt!2511749))))

(assert (=> d!2188361 (= lt!2511749 e!4220270)))

(declare-fun c!1304744 () Bool)

(assert (=> d!2188361 (= c!1304744 e!4220266)))

(declare-fun res!2865754 () Bool)

(assert (=> d!2188361 (=> (not res!2865754) (not e!4220266))))

(assert (=> d!2188361 (= res!2865754 (matchZipper!2926 lt!2511617 Nil!67579))))

(assert (=> d!2188361 (= (++!15427 Nil!67579 s!7408) s!7408)))

(assert (=> d!2188361 (= (findConcatSeparationZippers!367 lt!2511617 lt!2511608 Nil!67579 s!7408 s!7408) lt!2511749)))

(declare-fun b!7020670 () Bool)

(declare-fun e!4220269 () Option!16851)

(assert (=> b!7020670 (= e!4220269 None!16850)))

(declare-fun b!7020671 () Bool)

(declare-fun res!2865753 () Bool)

(assert (=> b!7020671 (=> (not res!2865753) (not e!4220268))))

(assert (=> b!7020671 (= res!2865753 (matchZipper!2926 lt!2511617 (_1!37322 (get!23698 lt!2511749))))))

(declare-fun b!7020672 () Bool)

(assert (=> b!7020672 (= e!4220267 (not (isDefined!13552 lt!2511749)))))

(declare-fun b!7020673 () Bool)

(assert (=> b!7020673 (= e!4220270 e!4220269)))

(declare-fun c!1304743 () Bool)

(assert (=> b!7020673 (= c!1304743 (is-Nil!67579 s!7408))))

(declare-fun b!7020674 () Bool)

(declare-fun lt!2511748 () Unit!161454)

(declare-fun lt!2511747 () Unit!161454)

(assert (=> b!7020674 (= lt!2511748 lt!2511747)))

(assert (=> b!7020674 (= (++!15427 (++!15427 Nil!67579 (Cons!67579 (h!74027 s!7408) Nil!67579)) (t!381458 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2910 (List!67703 C!35042 List!67703 List!67703) Unit!161454)

(assert (=> b!7020674 (= lt!2511747 (lemmaMoveElementToOtherListKeepsConcatEq!2910 Nil!67579 (h!74027 s!7408) (t!381458 s!7408) s!7408))))

(assert (=> b!7020674 (= e!4220269 (findConcatSeparationZippers!367 lt!2511617 lt!2511608 (++!15427 Nil!67579 (Cons!67579 (h!74027 s!7408) Nil!67579)) (t!381458 s!7408) s!7408))))

(assert (= (and d!2188361 res!2865754) b!7020666))

(assert (= (and d!2188361 c!1304744) b!7020668))

(assert (= (and d!2188361 (not c!1304744)) b!7020673))

(assert (= (and b!7020673 c!1304743) b!7020670))

(assert (= (and b!7020673 (not c!1304743)) b!7020674))

(assert (= (and d!2188361 res!2865752) b!7020671))

(assert (= (and b!7020671 res!2865753) b!7020669))

(assert (= (and b!7020669 res!2865756) b!7020667))

(assert (= (and d!2188361 (not res!2865755)) b!7020672))

(assert (=> b!7020666 m!7722032))

(declare-fun m!7722348 () Bool)

(assert (=> b!7020671 m!7722348))

(declare-fun m!7722350 () Bool)

(assert (=> b!7020671 m!7722350))

(declare-fun m!7722352 () Bool)

(assert (=> b!7020672 m!7722352))

(declare-fun m!7722354 () Bool)

(assert (=> b!7020674 m!7722354))

(assert (=> b!7020674 m!7722354))

(declare-fun m!7722356 () Bool)

(assert (=> b!7020674 m!7722356))

(declare-fun m!7722358 () Bool)

(assert (=> b!7020674 m!7722358))

(assert (=> b!7020674 m!7722354))

(declare-fun m!7722360 () Bool)

(assert (=> b!7020674 m!7722360))

(assert (=> d!2188361 m!7722352))

(assert (=> d!2188361 m!7722064))

(assert (=> d!2188361 m!7722058))

(assert (=> b!7020669 m!7722348))

(declare-fun m!7722362 () Bool)

(assert (=> b!7020669 m!7722362))

(assert (=> b!7020667 m!7722348))

(declare-fun m!7722364 () Bool)

(assert (=> b!7020667 m!7722364))

(assert (=> b!7020496 d!2188361))

(declare-fun d!2188373 () Bool)

(assert (=> d!2188373 (exists!3268 z1!570 lambda!411256)))

(declare-fun lt!2511752 () Unit!161454)

(declare-fun choose!52951 ((Set Context!12764) Context!12764 Int) Unit!161454)

(assert (=> d!2188373 (= lt!2511752 (choose!52951 z1!570 lt!2511609 lambda!411256))))

(assert (=> d!2188373 (set.member lt!2511609 z1!570)))

(assert (=> d!2188373 (= (lemmaContainsThenExists!108 z1!570 lt!2511609 lambda!411256) lt!2511752)))

(declare-fun bs!1867477 () Bool)

(assert (= bs!1867477 d!2188373))

(assert (=> bs!1867477 m!7722056))

(declare-fun m!7722366 () Bool)

(assert (=> bs!1867477 m!7722366))

(assert (=> bs!1867477 m!7722038))

(assert (=> b!7020496 d!2188373))

(assert (=> b!7020501 d!2188309))

(assert (=> b!7020503 d!2188309))

(declare-fun bs!1867478 () Bool)

(declare-fun d!2188375 () Bool)

(assert (= bs!1867478 (and d!2188375 b!7020497)))

(declare-fun lambda!411307 () Int)

(assert (=> bs!1867478 (not (= lambda!411307 lambda!411252))))

(declare-fun bs!1867479 () Bool)

(assert (= bs!1867479 (and d!2188375 b!7020496)))

(assert (=> bs!1867479 (not (= lambda!411307 lambda!411256))))

(declare-fun bs!1867480 () Bool)

(assert (= bs!1867480 (and d!2188375 d!2188343)))

(assert (=> bs!1867480 (not (= lambda!411307 lambda!411304))))

(assert (=> d!2188375 true))

(declare-fun order!28097 () Int)

(declare-fun dynLambda!27225 (Int Int) Int)

(assert (=> d!2188375 (< (dynLambda!27225 order!28097 lambda!411252) (dynLambda!27225 order!28097 lambda!411307))))

(declare-fun forall!16295 (List!67705 Int) Bool)

(assert (=> d!2188375 (= (exists!3269 lt!2511625 lambda!411252) (not (forall!16295 lt!2511625 lambda!411307)))))

(declare-fun bs!1867481 () Bool)

(assert (= bs!1867481 d!2188375))

(declare-fun m!7722372 () Bool)

(assert (=> bs!1867481 m!7722372))

(assert (=> b!7020497 d!2188375))

(declare-fun bs!1867482 () Bool)

(declare-fun d!2188379 () Bool)

(assert (= bs!1867482 (and d!2188379 b!7020497)))

(declare-fun lambda!411310 () Int)

(assert (=> bs!1867482 (= lambda!411310 lambda!411252)))

(declare-fun bs!1867483 () Bool)

(assert (= bs!1867483 (and d!2188379 b!7020496)))

(assert (=> bs!1867483 (= (= s!7408 Nil!67579) (= lambda!411310 lambda!411256))))

(declare-fun bs!1867484 () Bool)

(assert (= bs!1867484 (and d!2188379 d!2188343)))

(assert (=> bs!1867484 (= (= s!7408 Nil!67579) (= lambda!411310 lambda!411304))))

(declare-fun bs!1867485 () Bool)

(assert (= bs!1867485 (and d!2188379 d!2188375)))

(assert (=> bs!1867485 (not (= lambda!411310 lambda!411307))))

(assert (=> d!2188379 true))

(assert (=> d!2188379 (exists!3269 lt!2511625 lambda!411310)))

(declare-fun lt!2511757 () Unit!161454)

(declare-fun choose!52952 (List!67705 List!67703) Unit!161454)

(assert (=> d!2188379 (= lt!2511757 (choose!52952 lt!2511625 s!7408))))

(assert (=> d!2188379 (matchZipper!2926 (content!13453 lt!2511625) s!7408)))

(assert (=> d!2188379 (= (lemmaZipperMatchesExistsMatchingContext!355 lt!2511625 s!7408) lt!2511757)))

(declare-fun bs!1867486 () Bool)

(assert (= bs!1867486 d!2188379))

(declare-fun m!7722374 () Bool)

(assert (=> bs!1867486 m!7722374))

(declare-fun m!7722376 () Bool)

(assert (=> bs!1867486 m!7722376))

(declare-fun m!7722378 () Bool)

(assert (=> bs!1867486 m!7722378))

(assert (=> bs!1867486 m!7722378))

(declare-fun m!7722380 () Bool)

(assert (=> bs!1867486 m!7722380))

(assert (=> b!7020497 d!2188379))

(declare-fun d!2188381 () Bool)

(declare-fun e!4220279 () Bool)

(assert (=> d!2188381 e!4220279))

(declare-fun res!2865761 () Bool)

(assert (=> d!2188381 (=> (not res!2865761) (not e!4220279))))

(declare-fun lt!2511758 () List!67705)

(assert (=> d!2188381 (= res!2865761 (noDuplicate!2594 lt!2511758))))

(assert (=> d!2188381 (= lt!2511758 (choose!52947 lt!2511619))))

(assert (=> d!2188381 (= (toList!10746 lt!2511619) lt!2511758)))

(declare-fun b!7020691 () Bool)

(assert (=> b!7020691 (= e!4220279 (= (content!13453 lt!2511758) lt!2511619))))

(assert (= (and d!2188381 res!2865761) b!7020691))

(declare-fun m!7722382 () Bool)

(assert (=> d!2188381 m!7722382))

(declare-fun m!7722384 () Bool)

(assert (=> d!2188381 m!7722384))

(declare-fun m!7722386 () Bool)

(assert (=> b!7020691 m!7722386))

(assert (=> b!7020497 d!2188381))

(declare-fun d!2188383 () Bool)

(declare-fun c!1304752 () Bool)

(assert (=> d!2188383 (= c!1304752 (isEmpty!39450 s!7408))))

(declare-fun e!4220280 () Bool)

(assert (=> d!2188383 (= (matchZipper!2926 lt!2511623 s!7408) e!4220280)))

(declare-fun b!7020692 () Bool)

(assert (=> b!7020692 (= e!4220280 (nullableZipper!2517 lt!2511623))))

(declare-fun b!7020693 () Bool)

(assert (=> b!7020693 (= e!4220280 (matchZipper!2926 (derivationStepZipper!2866 lt!2511623 (head!14207 s!7408)) (tail!13476 s!7408)))))

(assert (= (and d!2188383 c!1304752) b!7020692))

(assert (= (and d!2188383 (not c!1304752)) b!7020693))

(assert (=> d!2188383 m!7722220))

(declare-fun m!7722388 () Bool)

(assert (=> b!7020692 m!7722388))

(assert (=> b!7020693 m!7722224))

(assert (=> b!7020693 m!7722224))

(declare-fun m!7722390 () Bool)

(assert (=> b!7020693 m!7722390))

(assert (=> b!7020693 m!7722228))

(assert (=> b!7020693 m!7722390))

(assert (=> b!7020693 m!7722228))

(declare-fun m!7722392 () Bool)

(assert (=> b!7020693 m!7722392))

(assert (=> b!7020497 d!2188383))

(declare-fun d!2188385 () Bool)

(declare-fun e!4220285 () Bool)

(assert (=> d!2188385 e!4220285))

(declare-fun res!2865766 () Bool)

(assert (=> d!2188385 (=> (not res!2865766) (not e!4220285))))

(declare-fun lt!2511762 () Context!12764)

(declare-fun dynLambda!27226 (Int Context!12764) Bool)

(assert (=> d!2188385 (= res!2865766 (dynLambda!27226 lambda!411252 lt!2511762))))

(declare-fun getWitness!1357 (List!67705 Int) Context!12764)

(assert (=> d!2188385 (= lt!2511762 (getWitness!1357 (toList!10746 lt!2511619) lambda!411252))))

(assert (=> d!2188385 (exists!3268 lt!2511619 lambda!411252)))

(assert (=> d!2188385 (= (getWitness!1355 lt!2511619 lambda!411252) lt!2511762)))

(declare-fun b!7020700 () Bool)

(assert (=> b!7020700 (= e!4220285 (set.member lt!2511762 lt!2511619))))

(assert (= (and d!2188385 res!2865766) b!7020700))

(declare-fun b_lambda!265049 () Bool)

(assert (=> (not b_lambda!265049) (not d!2188385)))

(declare-fun m!7722408 () Bool)

(assert (=> d!2188385 m!7722408))

(assert (=> d!2188385 m!7722076))

(assert (=> d!2188385 m!7722076))

(declare-fun m!7722410 () Bool)

(assert (=> d!2188385 m!7722410))

(declare-fun m!7722412 () Bool)

(assert (=> d!2188385 m!7722412))

(declare-fun m!7722414 () Bool)

(assert (=> b!7020700 m!7722414))

(assert (=> b!7020497 d!2188385))

(declare-fun b!7020705 () Bool)

(declare-fun e!4220288 () Bool)

(declare-fun tp!1933960 () Bool)

(declare-fun tp!1933961 () Bool)

(assert (=> b!7020705 (= e!4220288 (and tp!1933960 tp!1933961))))

(assert (=> b!7020499 (= tp!1933942 e!4220288)))

(assert (= (and b!7020499 (is-Cons!67580 (exprs!6882 setElem!48681))) b!7020705))

(declare-fun condSetEmpty!48687 () Bool)

(assert (=> setNonEmpty!48681 (= condSetEmpty!48687 (= setRest!48681 (as set.empty (Set Context!12764))))))

(declare-fun setRes!48687 () Bool)

(assert (=> setNonEmpty!48681 (= tp!1933941 setRes!48687)))

(declare-fun setIsEmpty!48687 () Bool)

(assert (=> setIsEmpty!48687 setRes!48687))

(declare-fun setElem!48687 () Context!12764)

(declare-fun tp!1933967 () Bool)

(declare-fun e!4220291 () Bool)

(declare-fun setNonEmpty!48687 () Bool)

(assert (=> setNonEmpty!48687 (= setRes!48687 (and tp!1933967 (inv!86325 setElem!48687) e!4220291))))

(declare-fun setRest!48687 () (Set Context!12764))

(assert (=> setNonEmpty!48687 (= setRest!48681 (set.union (set.insert setElem!48687 (as set.empty (Set Context!12764))) setRest!48687))))

(declare-fun b!7020710 () Bool)

(declare-fun tp!1933966 () Bool)

(assert (=> b!7020710 (= e!4220291 tp!1933966)))

(assert (= (and setNonEmpty!48681 condSetEmpty!48687) setIsEmpty!48687))

(assert (= (and setNonEmpty!48681 (not condSetEmpty!48687)) setNonEmpty!48687))

(assert (= setNonEmpty!48687 b!7020710))

(declare-fun m!7722416 () Bool)

(assert (=> setNonEmpty!48687 m!7722416))

(declare-fun b!7020711 () Bool)

(declare-fun e!4220292 () Bool)

(declare-fun tp!1933968 () Bool)

(declare-fun tp!1933969 () Bool)

(assert (=> b!7020711 (= e!4220292 (and tp!1933968 tp!1933969))))

(assert (=> b!7020493 (= tp!1933943 e!4220292)))

(assert (= (and b!7020493 (is-Cons!67580 (exprs!6882 ct2!306))) b!7020711))

(declare-fun b!7020716 () Bool)

(declare-fun e!4220295 () Bool)

(declare-fun tp!1933972 () Bool)

(assert (=> b!7020716 (= e!4220295 (and tp_is_empty!43997 tp!1933972))))

(assert (=> b!7020494 (= tp!1933940 e!4220295)))

(assert (= (and b!7020494 (is-Cons!67579 (t!381458 s!7408))) b!7020716))

(declare-fun b_lambda!265051 () Bool)

(assert (= b_lambda!265043 (or b!7020490 b_lambda!265051)))

(declare-fun bs!1867487 () Bool)

(declare-fun d!2188389 () Bool)

(assert (= bs!1867487 (and d!2188389 b!7020490)))

(declare-fun lt!2511763 () Unit!161454)

(assert (=> bs!1867487 (= lt!2511763 (lemmaConcatPreservesForall!722 (exprs!6882 lt!2511703) (exprs!6882 ct2!306) lambda!411254))))

(assert (=> bs!1867487 (= (dynLambda!27223 lambda!411253 lt!2511703) (Context!12765 (++!15426 (exprs!6882 lt!2511703) (exprs!6882 ct2!306))))))

(declare-fun m!7722418 () Bool)

(assert (=> bs!1867487 m!7722418))

(declare-fun m!7722420 () Bool)

(assert (=> bs!1867487 m!7722420))

(assert (=> d!2188311 d!2188389))

(declare-fun b_lambda!265053 () Bool)

(assert (= b_lambda!265049 (or b!7020497 b_lambda!265053)))

(declare-fun bs!1867488 () Bool)

(declare-fun d!2188391 () Bool)

(assert (= bs!1867488 (and d!2188391 b!7020497)))

(assert (=> bs!1867488 (= (dynLambda!27226 lambda!411252 lt!2511762) (matchZipper!2926 (set.insert lt!2511762 (as set.empty (Set Context!12764))) s!7408))))

(declare-fun m!7722422 () Bool)

(assert (=> bs!1867488 m!7722422))

(assert (=> bs!1867488 m!7722422))

(declare-fun m!7722424 () Bool)

(assert (=> bs!1867488 m!7722424))

(assert (=> d!2188385 d!2188391))

(declare-fun b_lambda!265055 () Bool)

(assert (= b_lambda!265045 (or b!7020495 b_lambda!265055)))

(declare-fun bs!1867489 () Bool)

(declare-fun d!2188393 () Bool)

(assert (= bs!1867489 (and d!2188393 b!7020495)))

(assert (=> bs!1867489 (= (dynLambda!27224 lambda!411255 lt!2511610) (derivationStepZipperUp!2036 lt!2511610 (h!74027 s!7408)))))

(assert (=> bs!1867489 m!7722020))

(assert (=> d!2188327 d!2188393))

(push 1)

(assert (not b!7020619))

(assert (not b!7020669))

(assert (not d!2188339))

(assert (not b!7020636))

(assert (not d!2188353))

(assert (not b!7020602))

(assert (not d!2188375))

(assert (not b!7020595))

(assert (not b_lambda!265051))

(assert (not bs!1867487))

(assert (not d!2188319))

(assert (not b!7020606))

(assert (not d!2188335))

(assert (not b!7020693))

(assert (not d!2188359))

(assert (not b!7020579))

(assert (not d!2188313))

(assert (not b!7020705))

(assert (not d!2188373))

(assert (not b!7020568))

(assert (not d!2188381))

(assert (not d!2188329))

(assert (not b!7020672))

(assert (not d!2188327))

(assert (not d!2188337))

(assert (not b!7020671))

(assert (not b!7020674))

(assert (not b!7020691))

(assert (not b!7020567))

(assert tp_is_empty!43997)

(assert (not d!2188321))

(assert (not b!7020594))

(assert (not b_lambda!265055))

(assert (not b!7020637))

(assert (not bs!1867488))

(assert (not d!2188341))

(assert (not d!2188357))

(assert (not d!2188385))

(assert (not d!2188311))

(assert (not b!7020711))

(assert (not d!2188331))

(assert (not b!7020578))

(assert (not b!7020710))

(assert (not d!2188317))

(assert (not b!7020620))

(assert (not b!7020605))

(assert (not b!7020627))

(assert (not d!2188307))

(assert (not d!2188315))

(assert (not b!7020601))

(assert (not b!7020667))

(assert (not d!2188383))

(assert (not b!7020692))

(assert (not d!2188349))

(assert (not b!7020716))

(assert (not bm!637614))

(assert (not setNonEmpty!48687))

(assert (not b!7020609))

(assert (not d!2188379))

(assert (not b!7020666))

(assert (not b_lambda!265053))

(assert (not d!2188361))

(assert (not d!2188309))

(assert (not d!2188343))

(assert (not bs!1867489))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

