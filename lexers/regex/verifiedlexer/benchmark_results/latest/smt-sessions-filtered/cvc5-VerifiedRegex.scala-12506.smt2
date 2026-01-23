; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!695298 () Bool)

(assert start!695298)

(declare-fun b!7135424 () Bool)

(assert (=> b!7135424 true))

(declare-fun b!7135420 () Bool)

(declare-fun e!4288353 () Bool)

(declare-fun tp!1967198 () Bool)

(assert (=> b!7135420 (= e!4288353 tp!1967198)))

(declare-fun b!7135421 () Bool)

(declare-fun res!2911437 () Bool)

(declare-fun e!4288350 () Bool)

(assert (=> b!7135421 (=> res!2911437 e!4288350)))

(declare-datatypes ((C!36514 0))(
  ( (C!36515 (val!28205 Int)) )
))
(declare-datatypes ((Regex!18120 0))(
  ( (ElementMatch!18120 (c!1330677 C!36514)) (Concat!26965 (regOne!36752 Regex!18120) (regTwo!36752 Regex!18120)) (EmptyExpr!18120) (Star!18120 (reg!18449 Regex!18120)) (EmptyLang!18120) (Union!18120 (regOne!36753 Regex!18120) (regTwo!36753 Regex!18120)) )
))
(declare-datatypes ((List!69318 0))(
  ( (Nil!69194) (Cons!69194 (h!75642 Regex!18120) (t!383335 List!69318)) )
))
(declare-fun lt!2565673 () List!69318)

(declare-fun lambda!433515 () Int)

(declare-fun exists!3849 (List!69318 Int) Bool)

(assert (=> b!7135421 (= res!2911437 (not (exists!3849 lt!2565673 lambda!433515)))))

(declare-fun b!7135422 () Bool)

(declare-fun res!2911438 () Bool)

(assert (=> b!7135422 (=> res!2911438 e!4288350)))

(declare-fun lt!2565677 () Bool)

(assert (=> b!7135422 (= res!2911438 (not lt!2565677))))

(declare-fun b!7135423 () Bool)

(declare-fun e!4288355 () Bool)

(assert (=> b!7135423 (= e!4288350 e!4288355)))

(declare-fun res!2911440 () Bool)

(assert (=> b!7135423 (=> res!2911440 e!4288355)))

(declare-fun lt!2565671 () Regex!18120)

(declare-fun nullable!7640 (Regex!18120) Bool)

(assert (=> b!7135423 (= res!2911440 (not (nullable!7640 lt!2565671)))))

(declare-fun getWitness!1869 (List!69318 Int) Regex!18120)

(assert (=> b!7135423 (= lt!2565671 (getWitness!1869 lt!2565673 lambda!433515))))

(declare-fun e!4288352 () Bool)

(assert (=> b!7135424 (= e!4288355 e!4288352)))

(declare-fun res!2911432 () Bool)

(assert (=> b!7135424 (=> res!2911432 e!4288352)))

(declare-datatypes ((Context!14228 0))(
  ( (Context!14229 (exprs!7614 List!69318)) )
))
(declare-fun z!3189 () (Set Context!14228))

(declare-fun lambda!433516 () Int)

(declare-fun exists!3850 ((Set Context!14228) Int) Bool)

(assert (=> b!7135424 (= res!2911432 (not (exists!3850 z!3189 lambda!433516)))))

(declare-datatypes ((List!69319 0))(
  ( (Nil!69195) (Cons!69195 (h!75643 Context!14228) (t!383336 List!69319)) )
))
(declare-fun lt!2565676 () List!69319)

(declare-fun exists!3851 (List!69319 Int) Bool)

(assert (=> b!7135424 (exists!3851 lt!2565676 lambda!433516)))

(declare-datatypes ((Unit!163092 0))(
  ( (Unit!163093) )
))
(declare-fun lt!2565674 () Unit!163092)

(declare-fun lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!5 (List!69319 Regex!18120) Unit!163092)

(assert (=> b!7135424 (= lt!2565674 (lemmaUnfocusZipperListContainsRegexFromContextThenZipperContains!5 lt!2565676 lt!2565671))))

(declare-fun b!7135425 () Bool)

(declare-fun e!4288349 () Bool)

(assert (=> b!7135425 (= e!4288349 (not e!4288350))))

(declare-fun res!2911434 () Bool)

(assert (=> b!7135425 (=> res!2911434 e!4288350)))

(assert (=> b!7135425 (= res!2911434 (not (= lt!2565677 (exists!3849 lt!2565673 lambda!433515))))))

(assert (=> b!7135425 (= lt!2565677 (exists!3849 lt!2565673 lambda!433515))))

(declare-fun lt!2565675 () Regex!18120)

(assert (=> b!7135425 (= lt!2565677 (nullable!7640 lt!2565675))))

(declare-fun lt!2565672 () Unit!163092)

(declare-fun nullableGenUnionSpec!9 (Regex!18120 List!69318) Unit!163092)

(assert (=> b!7135425 (= lt!2565672 (nullableGenUnionSpec!9 lt!2565675 lt!2565673))))

(declare-fun b!7135426 () Bool)

(declare-fun e!4288351 () Bool)

(declare-fun e!4288354 () Bool)

(assert (=> b!7135426 (= e!4288351 e!4288354)))

(declare-fun res!2911435 () Bool)

(assert (=> b!7135426 (=> (not res!2911435) (not e!4288354))))

(declare-fun r!11483 () Regex!18120)

(declare-fun unfocusZipper!2468 (List!69319) Regex!18120)

(assert (=> b!7135426 (= res!2911435 (= r!11483 (unfocusZipper!2468 lt!2565676)))))

(declare-fun toList!11151 ((Set Context!14228)) List!69319)

(assert (=> b!7135426 (= lt!2565676 (toList!11151 z!3189))))

(declare-fun b!7135427 () Bool)

(assert (=> b!7135427 (= e!4288354 e!4288349)))

(declare-fun res!2911436 () Bool)

(assert (=> b!7135427 (=> (not res!2911436) (not e!4288349))))

(assert (=> b!7135427 (= res!2911436 (= r!11483 lt!2565675))))

(declare-fun generalisedUnion!2625 (List!69318) Regex!18120)

(assert (=> b!7135427 (= lt!2565675 (generalisedUnion!2625 lt!2565673))))

(declare-fun unfocusZipperList!2161 (List!69319) List!69318)

(assert (=> b!7135427 (= lt!2565673 (unfocusZipperList!2161 lt!2565676))))

(declare-fun res!2911433 () Bool)

(assert (=> start!695298 (=> (not res!2911433) (not e!4288351))))

(declare-fun validRegex!9287 (Regex!18120) Bool)

(assert (=> start!695298 (= res!2911433 (validRegex!9287 r!11483))))

(assert (=> start!695298 e!4288351))

(assert (=> start!695298 e!4288353))

(declare-fun condSetEmpty!52346 () Bool)

(assert (=> start!695298 (= condSetEmpty!52346 (= z!3189 (as set.empty (Set Context!14228))))))

(declare-fun setRes!52346 () Bool)

(assert (=> start!695298 setRes!52346))

(declare-fun b!7135428 () Bool)

(declare-fun tp!1967196 () Bool)

(declare-fun tp!1967195 () Bool)

(assert (=> b!7135428 (= e!4288353 (and tp!1967196 tp!1967195))))

(declare-fun setIsEmpty!52346 () Bool)

(assert (=> setIsEmpty!52346 setRes!52346))

(declare-fun b!7135429 () Bool)

(assert (=> b!7135429 (= e!4288352 (exists!3850 z!3189 lambda!433516))))

(declare-fun b!7135430 () Bool)

(declare-fun tp_is_empty!45877 () Bool)

(assert (=> b!7135430 (= e!4288353 tp_is_empty!45877)))

(declare-fun b!7135431 () Bool)

(declare-fun e!4288356 () Bool)

(declare-fun tp!1967199 () Bool)

(assert (=> b!7135431 (= e!4288356 tp!1967199)))

(declare-fun b!7135432 () Bool)

(declare-fun res!2911439 () Bool)

(assert (=> b!7135432 (=> res!2911439 e!4288355)))

(declare-fun contains!20560 (List!69318 Regex!18120) Bool)

(assert (=> b!7135432 (= res!2911439 (not (contains!20560 lt!2565673 lt!2565671)))))

(declare-fun tp!1967197 () Bool)

(declare-fun setElem!52346 () Context!14228)

(declare-fun setNonEmpty!52346 () Bool)

(declare-fun inv!88365 (Context!14228) Bool)

(assert (=> setNonEmpty!52346 (= setRes!52346 (and tp!1967197 (inv!88365 setElem!52346) e!4288356))))

(declare-fun setRest!52346 () (Set Context!14228))

(assert (=> setNonEmpty!52346 (= z!3189 (set.union (set.insert setElem!52346 (as set.empty (Set Context!14228))) setRest!52346))))

(declare-fun b!7135433 () Bool)

(declare-fun tp!1967200 () Bool)

(declare-fun tp!1967194 () Bool)

(assert (=> b!7135433 (= e!4288353 (and tp!1967200 tp!1967194))))

(assert (= (and start!695298 res!2911433) b!7135426))

(assert (= (and b!7135426 res!2911435) b!7135427))

(assert (= (and b!7135427 res!2911436) b!7135425))

(assert (= (and b!7135425 (not res!2911434)) b!7135422))

(assert (= (and b!7135422 (not res!2911438)) b!7135421))

(assert (= (and b!7135421 (not res!2911437)) b!7135423))

(assert (= (and b!7135423 (not res!2911440)) b!7135432))

(assert (= (and b!7135432 (not res!2911439)) b!7135424))

(assert (= (and b!7135424 (not res!2911432)) b!7135429))

(assert (= (and start!695298 (is-ElementMatch!18120 r!11483)) b!7135430))

(assert (= (and start!695298 (is-Concat!26965 r!11483)) b!7135428))

(assert (= (and start!695298 (is-Star!18120 r!11483)) b!7135420))

(assert (= (and start!695298 (is-Union!18120 r!11483)) b!7135433))

(assert (= (and start!695298 condSetEmpty!52346) setIsEmpty!52346))

(assert (= (and start!695298 (not condSetEmpty!52346)) setNonEmpty!52346))

(assert (= setNonEmpty!52346 b!7135431))

(declare-fun m!7851750 () Bool)

(assert (=> b!7135427 m!7851750))

(declare-fun m!7851752 () Bool)

(assert (=> b!7135427 m!7851752))

(declare-fun m!7851754 () Bool)

(assert (=> setNonEmpty!52346 m!7851754))

(declare-fun m!7851756 () Bool)

(assert (=> b!7135432 m!7851756))

(declare-fun m!7851758 () Bool)

(assert (=> b!7135425 m!7851758))

(assert (=> b!7135425 m!7851758))

(declare-fun m!7851760 () Bool)

(assert (=> b!7135425 m!7851760))

(declare-fun m!7851762 () Bool)

(assert (=> b!7135425 m!7851762))

(declare-fun m!7851764 () Bool)

(assert (=> b!7135424 m!7851764))

(declare-fun m!7851766 () Bool)

(assert (=> b!7135424 m!7851766))

(declare-fun m!7851768 () Bool)

(assert (=> b!7135424 m!7851768))

(assert (=> b!7135421 m!7851758))

(declare-fun m!7851770 () Bool)

(assert (=> b!7135426 m!7851770))

(declare-fun m!7851772 () Bool)

(assert (=> b!7135426 m!7851772))

(declare-fun m!7851774 () Bool)

(assert (=> b!7135423 m!7851774))

(declare-fun m!7851776 () Bool)

(assert (=> b!7135423 m!7851776))

(assert (=> b!7135429 m!7851764))

(declare-fun m!7851778 () Bool)

(assert (=> start!695298 m!7851778))

(push 1)

(assert tp_is_empty!45877)

(assert (not b!7135427))

(assert (not b!7135424))

(assert (not b!7135423))

(assert (not b!7135428))

(assert (not b!7135429))

(assert (not setNonEmpty!52346))

(assert (not b!7135431))

(assert (not b!7135426))

(assert (not b!7135425))

(assert (not b!7135432))

(assert (not b!7135421))

(assert (not b!7135433))

(assert (not b!7135420))

(assert (not start!695298))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

