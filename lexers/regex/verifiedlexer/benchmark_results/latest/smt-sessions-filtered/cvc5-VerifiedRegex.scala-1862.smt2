; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92220 () Bool)

(assert start!92220)

(declare-fun bs!256452 () Bool)

(declare-fun b!1084699 () Bool)

(declare-fun b!1084697 () Bool)

(assert (= bs!256452 (and b!1084699 b!1084697)))

(declare-fun lambda!39531 () Int)

(declare-fun lambda!39530 () Int)

(assert (=> bs!256452 (not (= lambda!39531 lambda!39530))))

(assert (=> b!1084699 true))

(declare-fun b!1084696 () Bool)

(declare-fun e!685930 () Bool)

(declare-fun tp_is_empty!5595 () Bool)

(declare-fun tp!324513 () Bool)

(assert (=> b!1084696 (= e!685930 (and tp_is_empty!5595 tp!324513))))

(declare-fun res!482535 () Bool)

(declare-fun e!685933 () Bool)

(assert (=> b!1084697 (=> (not res!482535) (not e!685933))))

(declare-datatypes ((C!6534 0))(
  ( (C!6535 (val!3515 Int)) )
))
(declare-datatypes ((Regex!2982 0))(
  ( (ElementMatch!2982 (c!183159 C!6534)) (Concat!4815 (regOne!6476 Regex!2982) (regTwo!6476 Regex!2982)) (EmptyExpr!2982) (Star!2982 (reg!3311 Regex!2982)) (EmptyLang!2982) (Union!2982 (regOne!6477 Regex!2982) (regTwo!6477 Regex!2982)) )
))
(declare-datatypes ((List!10249 0))(
  ( (Nil!10233) (Cons!10233 (h!15634 Regex!2982) (t!101295 List!10249)) )
))
(declare-datatypes ((Context!924 0))(
  ( (Context!925 (exprs!962 List!10249)) )
))
(declare-fun z!1122 () (Set Context!924))

(declare-datatypes ((List!10250 0))(
  ( (Nil!10234) (Cons!10234 (h!15635 C!6534) (t!101296 List!10250)) )
))
(declare-fun s!2287 () List!10250)

(declare-fun matchZipper!30 ((Set Context!924) List!10250) Bool)

(declare-fun filter!152 ((Set Context!924) Int) (Set Context!924))

(assert (=> b!1084697 (= res!482535 (matchZipper!30 (filter!152 z!1122 lambda!39530) s!2287))))

(declare-fun b!1084698 () Bool)

(declare-fun res!482536 () Bool)

(assert (=> b!1084698 (=> (not res!482536) (not e!685933))))

(assert (=> b!1084698 (= res!482536 (not (matchZipper!30 z!1122 s!2287)))))

(declare-fun e!685931 () Bool)

(assert (=> b!1084699 (= e!685933 (not e!685931))))

(declare-fun res!482537 () Bool)

(assert (=> b!1084699 (=> res!482537 e!685931)))

(declare-fun exists!105 ((Set Context!924) Int) Bool)

(assert (=> b!1084699 (= res!482537 (not (exists!105 (filter!152 z!1122 lambda!39530) lambda!39531)))))

(declare-datatypes ((List!10251 0))(
  ( (Nil!10235) (Cons!10235 (h!15636 Context!924) (t!101297 List!10251)) )
))
(declare-fun lt!362800 () List!10251)

(declare-fun exists!106 (List!10251 Int) Bool)

(assert (=> b!1084699 (exists!106 lt!362800 lambda!39531)))

(declare-datatypes ((Unit!15639 0))(
  ( (Unit!15640) )
))
(declare-fun lt!362801 () Unit!15639)

(declare-fun lemmaZipperMatchesExistsMatchingContext!9 (List!10251 List!10250) Unit!15639)

(assert (=> b!1084699 (= lt!362801 (lemmaZipperMatchesExistsMatchingContext!9 lt!362800 s!2287))))

(declare-fun toList!600 ((Set Context!924)) List!10251)

(assert (=> b!1084699 (= lt!362800 (toList!600 (filter!152 z!1122 lambda!39530)))))

(declare-fun e!685932 () Bool)

(declare-fun setRes!7461 () Bool)

(declare-fun setNonEmpty!7461 () Bool)

(declare-fun setElem!7461 () Context!924)

(declare-fun tp!324515 () Bool)

(declare-fun inv!13169 (Context!924) Bool)

(assert (=> setNonEmpty!7461 (= setRes!7461 (and tp!324515 (inv!13169 setElem!7461) e!685932))))

(declare-fun setRest!7461 () (Set Context!924))

(assert (=> setNonEmpty!7461 (= z!1122 (set.union (set.insert setElem!7461 (as set.empty (Set Context!924))) setRest!7461))))

(declare-fun res!482534 () Bool)

(assert (=> start!92220 (=> (not res!482534) (not e!685933))))

(declare-fun zl!316 () List!10251)

(assert (=> start!92220 (= res!482534 (= (toList!600 z!1122) zl!316))))

(assert (=> start!92220 e!685933))

(declare-fun condSetEmpty!7461 () Bool)

(assert (=> start!92220 (= condSetEmpty!7461 (= z!1122 (as set.empty (Set Context!924))))))

(assert (=> start!92220 setRes!7461))

(declare-fun e!685935 () Bool)

(assert (=> start!92220 e!685935))

(assert (=> start!92220 e!685930))

(declare-fun e!685934 () Bool)

(declare-fun b!1084700 () Bool)

(declare-fun tp!324514 () Bool)

(assert (=> b!1084700 (= e!685935 (and (inv!13169 (h!15636 zl!316)) e!685934 tp!324514))))

(declare-fun b!1084701 () Bool)

(assert (=> b!1084701 (= e!685931 (exists!105 (filter!152 z!1122 lambda!39530) lambda!39531))))

(declare-fun b!1084702 () Bool)

(declare-fun tp!324512 () Bool)

(assert (=> b!1084702 (= e!685932 tp!324512)))

(declare-fun b!1084703 () Bool)

(declare-fun tp!324511 () Bool)

(assert (=> b!1084703 (= e!685934 tp!324511)))

(declare-fun setIsEmpty!7461 () Bool)

(assert (=> setIsEmpty!7461 setRes!7461))

(assert (= (and start!92220 res!482534) b!1084698))

(assert (= (and b!1084698 res!482536) b!1084697))

(assert (= (and b!1084697 res!482535) b!1084699))

(assert (= (and b!1084699 (not res!482537)) b!1084701))

(assert (= (and start!92220 condSetEmpty!7461) setIsEmpty!7461))

(assert (= (and start!92220 (not condSetEmpty!7461)) setNonEmpty!7461))

(assert (= setNonEmpty!7461 b!1084702))

(assert (= b!1084700 b!1084703))

(assert (= (and start!92220 (is-Cons!10235 zl!316)) b!1084700))

(assert (= (and start!92220 (is-Cons!10234 s!2287)) b!1084696))

(declare-fun m!1234333 () Bool)

(assert (=> b!1084699 m!1234333))

(declare-fun m!1234335 () Bool)

(assert (=> b!1084699 m!1234335))

(declare-fun m!1234337 () Bool)

(assert (=> b!1084699 m!1234337))

(assert (=> b!1084699 m!1234333))

(declare-fun m!1234339 () Bool)

(assert (=> b!1084699 m!1234339))

(assert (=> b!1084699 m!1234333))

(declare-fun m!1234341 () Bool)

(assert (=> b!1084699 m!1234341))

(assert (=> b!1084699 m!1234333))

(declare-fun m!1234343 () Bool)

(assert (=> b!1084700 m!1234343))

(declare-fun m!1234345 () Bool)

(assert (=> setNonEmpty!7461 m!1234345))

(assert (=> b!1084701 m!1234333))

(assert (=> b!1084701 m!1234333))

(assert (=> b!1084701 m!1234339))

(declare-fun m!1234347 () Bool)

(assert (=> start!92220 m!1234347))

(assert (=> b!1084697 m!1234333))

(assert (=> b!1084697 m!1234333))

(declare-fun m!1234349 () Bool)

(assert (=> b!1084697 m!1234349))

(declare-fun m!1234351 () Bool)

(assert (=> b!1084698 m!1234351))

(push 1)

(assert (not b!1084700))

(assert (not b!1084699))

(assert (not b!1084703))

(assert (not b!1084698))

(assert (not b!1084697))

(assert (not setNonEmpty!7461))

(assert (not b!1084696))

(assert (not start!92220))

(assert (not b!1084702))

(assert tp_is_empty!5595)

(assert (not b!1084701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

