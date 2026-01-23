; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695158 () Bool)

(assert start!695158)

(declare-fun b!7134424 () Bool)

(declare-fun e!4287778 () Bool)

(declare-fun e!4287781 () Bool)

(assert (=> b!7134424 (= e!4287778 e!4287781)))

(declare-fun res!2911034 () Bool)

(assert (=> b!7134424 (=> (not res!2911034) (not e!4287781))))

(declare-datatypes ((C!36490 0))(
  ( (C!36491 (val!28193 Int)) )
))
(declare-datatypes ((Regex!18108 0))(
  ( (ElementMatch!18108 (c!1330531 C!36490)) (Concat!26953 (regOne!36728 Regex!18108) (regTwo!36728 Regex!18108)) (EmptyExpr!18108) (Star!18108 (reg!18437 Regex!18108)) (EmptyLang!18108) (Union!18108 (regOne!36729 Regex!18108) (regTwo!36729 Regex!18108)) )
))
(declare-fun r!11483 () Regex!18108)

(declare-datatypes ((List!69294 0))(
  ( (Nil!69170) (Cons!69170 (h!75618 Regex!18108) (t!383311 List!69294)) )
))
(declare-fun lt!2565374 () List!69294)

(declare-fun generalisedUnion!2613 (List!69294) Regex!18108)

(assert (=> b!7134424 (= res!2911034 (= r!11483 (generalisedUnion!2613 lt!2565374)))))

(declare-datatypes ((Context!14204 0))(
  ( (Context!14205 (exprs!7602 List!69294)) )
))
(declare-datatypes ((List!69295 0))(
  ( (Nil!69171) (Cons!69171 (h!75619 Context!14204) (t!383312 List!69295)) )
))
(declare-fun lt!2565373 () List!69295)

(declare-fun unfocusZipperList!2149 (List!69295) List!69294)

(assert (=> b!7134424 (= lt!2565374 (unfocusZipperList!2149 lt!2565373))))

(declare-fun b!7134425 () Bool)

(declare-fun res!2911032 () Bool)

(assert (=> b!7134425 (=> (not res!2911032) (not e!4287781))))

(declare-fun lambda!433295 () Int)

(declare-fun forall!16956 (List!69294 Int) Bool)

(assert (=> b!7134425 (= res!2911032 (forall!16956 lt!2565374 lambda!433295))))

(declare-fun res!2911033 () Bool)

(declare-fun e!4287779 () Bool)

(assert (=> start!695158 (=> (not res!2911033) (not e!4287779))))

(declare-fun validRegex!9275 (Regex!18108) Bool)

(assert (=> start!695158 (= res!2911033 (validRegex!9275 r!11483))))

(assert (=> start!695158 e!4287779))

(declare-fun e!4287777 () Bool)

(assert (=> start!695158 e!4287777))

(declare-fun condSetEmpty!52298 () Bool)

(declare-fun z!3189 () (Set Context!14204))

(assert (=> start!695158 (= condSetEmpty!52298 (= z!3189 (as set.empty (Set Context!14204))))))

(declare-fun setRes!52298 () Bool)

(assert (=> start!695158 setRes!52298))

(declare-fun b!7134426 () Bool)

(declare-fun tp!1966736 () Bool)

(declare-fun tp!1966737 () Bool)

(assert (=> b!7134426 (= e!4287777 (and tp!1966736 tp!1966737))))

(declare-fun b!7134427 () Bool)

(declare-fun e!4287780 () Bool)

(declare-fun tp!1966738 () Bool)

(assert (=> b!7134427 (= e!4287780 tp!1966738)))

(declare-fun b!7134428 () Bool)

(declare-fun tp_is_empty!45853 () Bool)

(assert (=> b!7134428 (= e!4287777 tp_is_empty!45853)))

(declare-fun b!7134429 () Bool)

(assert (=> b!7134429 (= e!4287781 (not (forall!16956 lt!2565374 lambda!433295)))))

(declare-fun setNonEmpty!52298 () Bool)

(declare-fun tp!1966735 () Bool)

(declare-fun setElem!52298 () Context!14204)

(declare-fun inv!88335 (Context!14204) Bool)

(assert (=> setNonEmpty!52298 (= setRes!52298 (and tp!1966735 (inv!88335 setElem!52298) e!4287780))))

(declare-fun setRest!52298 () (Set Context!14204))

(assert (=> setNonEmpty!52298 (= z!3189 (set.union (set.insert setElem!52298 (as set.empty (Set Context!14204))) setRest!52298))))

(declare-fun setIsEmpty!52298 () Bool)

(assert (=> setIsEmpty!52298 setRes!52298))

(declare-fun b!7134430 () Bool)

(declare-fun tp!1966740 () Bool)

(declare-fun tp!1966734 () Bool)

(assert (=> b!7134430 (= e!4287777 (and tp!1966740 tp!1966734))))

(declare-fun b!7134431 () Bool)

(declare-fun tp!1966739 () Bool)

(assert (=> b!7134431 (= e!4287777 tp!1966739)))

(declare-fun b!7134432 () Bool)

(assert (=> b!7134432 (= e!4287779 e!4287778)))

(declare-fun res!2911035 () Bool)

(assert (=> b!7134432 (=> (not res!2911035) (not e!4287778))))

(declare-fun unfocusZipper!2456 (List!69295) Regex!18108)

(assert (=> b!7134432 (= res!2911035 (= r!11483 (unfocusZipper!2456 lt!2565373)))))

(declare-fun toList!11139 ((Set Context!14204)) List!69295)

(assert (=> b!7134432 (= lt!2565373 (toList!11139 z!3189))))

(assert (= (and start!695158 res!2911033) b!7134432))

(assert (= (and b!7134432 res!2911035) b!7134424))

(assert (= (and b!7134424 res!2911034) b!7134425))

(assert (= (and b!7134425 res!2911032) b!7134429))

(assert (= (and start!695158 (is-ElementMatch!18108 r!11483)) b!7134428))

(assert (= (and start!695158 (is-Concat!26953 r!11483)) b!7134426))

(assert (= (and start!695158 (is-Star!18108 r!11483)) b!7134431))

(assert (= (and start!695158 (is-Union!18108 r!11483)) b!7134430))

(assert (= (and start!695158 condSetEmpty!52298) setIsEmpty!52298))

(assert (= (and start!695158 (not condSetEmpty!52298)) setNonEmpty!52298))

(assert (= setNonEmpty!52298 b!7134427))

(declare-fun m!7851106 () Bool)

(assert (=> b!7134424 m!7851106))

(declare-fun m!7851108 () Bool)

(assert (=> b!7134424 m!7851108))

(declare-fun m!7851110 () Bool)

(assert (=> setNonEmpty!52298 m!7851110))

(declare-fun m!7851112 () Bool)

(assert (=> b!7134432 m!7851112))

(declare-fun m!7851114 () Bool)

(assert (=> b!7134432 m!7851114))

(declare-fun m!7851116 () Bool)

(assert (=> start!695158 m!7851116))

(declare-fun m!7851118 () Bool)

(assert (=> b!7134429 m!7851118))

(assert (=> b!7134425 m!7851118))

(push 1)

(assert (not b!7134425))

(assert tp_is_empty!45853)

(assert (not setNonEmpty!52298))

(assert (not start!695158))

(assert (not b!7134430))

(assert (not b!7134431))

(assert (not b!7134432))

(assert (not b!7134429))

(assert (not b!7134424))

(assert (not b!7134427))

(assert (not b!7134426))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

