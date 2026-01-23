; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695164 () Bool)

(assert start!695164)

(declare-fun b!7134500 () Bool)

(declare-fun res!2911065 () Bool)

(declare-fun e!4287818 () Bool)

(assert (=> b!7134500 (=> (not res!2911065) (not e!4287818))))

(declare-datatypes ((C!36496 0))(
  ( (C!36497 (val!28196 Int)) )
))
(declare-datatypes ((Regex!18111 0))(
  ( (ElementMatch!18111 (c!1330534 C!36496)) (Concat!26956 (regOne!36734 Regex!18111) (regTwo!36734 Regex!18111)) (EmptyExpr!18111) (Star!18111 (reg!18440 Regex!18111)) (EmptyLang!18111) (Union!18111 (regOne!36735 Regex!18111) (regTwo!36735 Regex!18111)) )
))
(declare-fun r!11483 () Regex!18111)

(declare-datatypes ((List!69300 0))(
  ( (Nil!69176) (Cons!69176 (h!75624 Regex!18111) (t!383317 List!69300)) )
))
(declare-datatypes ((Context!14210 0))(
  ( (Context!14211 (exprs!7605 List!69300)) )
))
(declare-datatypes ((List!69301 0))(
  ( (Nil!69177) (Cons!69177 (h!75625 Context!14210) (t!383318 List!69301)) )
))
(declare-fun lt!2565386 () List!69301)

(declare-fun generalisedUnion!2616 (List!69300) Regex!18111)

(declare-fun unfocusZipperList!2152 (List!69301) List!69300)

(assert (=> b!7134500 (= res!2911065 (= r!11483 (generalisedUnion!2616 (unfocusZipperList!2152 lt!2565386))))))

(declare-fun b!7134501 () Bool)

(assert (=> b!7134501 (= e!4287818 false)))

(declare-fun setRes!52307 () Bool)

(declare-fun tp!1966798 () Bool)

(declare-fun setElem!52307 () Context!14210)

(declare-fun e!4287819 () Bool)

(declare-fun setNonEmpty!52307 () Bool)

(declare-fun inv!88341 (Context!14210) Bool)

(assert (=> setNonEmpty!52307 (= setRes!52307 (and tp!1966798 (inv!88341 setElem!52307) e!4287819))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3189 () (InoxSet Context!14210))

(declare-fun setRest!52307 () (InoxSet Context!14210))

(assert (=> setNonEmpty!52307 (= z!3189 ((_ map or) (store ((as const (Array Context!14210 Bool)) false) setElem!52307 true) setRest!52307))))

(declare-fun b!7134503 () Bool)

(declare-fun e!4287817 () Bool)

(declare-fun tp_is_empty!45859 () Bool)

(assert (=> b!7134503 (= e!4287817 tp_is_empty!45859)))

(declare-fun b!7134504 () Bool)

(declare-fun tp!1966797 () Bool)

(assert (=> b!7134504 (= e!4287817 tp!1966797)))

(declare-fun setIsEmpty!52307 () Bool)

(assert (=> setIsEmpty!52307 setRes!52307))

(declare-fun b!7134505 () Bool)

(declare-fun tp!1966803 () Bool)

(declare-fun tp!1966799 () Bool)

(assert (=> b!7134505 (= e!4287817 (and tp!1966803 tp!1966799))))

(declare-fun b!7134506 () Bool)

(declare-fun tp!1966802 () Bool)

(declare-fun tp!1966801 () Bool)

(assert (=> b!7134506 (= e!4287817 (and tp!1966802 tp!1966801))))

(declare-fun b!7134507 () Bool)

(declare-fun e!4287820 () Bool)

(assert (=> b!7134507 (= e!4287820 e!4287818)))

(declare-fun res!2911064 () Bool)

(assert (=> b!7134507 (=> (not res!2911064) (not e!4287818))))

(declare-fun unfocusZipper!2459 (List!69301) Regex!18111)

(assert (=> b!7134507 (= res!2911064 (= r!11483 (unfocusZipper!2459 lt!2565386)))))

(declare-fun toList!11142 ((InoxSet Context!14210)) List!69301)

(assert (=> b!7134507 (= lt!2565386 (toList!11142 z!3189))))

(declare-fun b!7134502 () Bool)

(declare-fun tp!1966800 () Bool)

(assert (=> b!7134502 (= e!4287819 tp!1966800)))

(declare-fun res!2911063 () Bool)

(assert (=> start!695164 (=> (not res!2911063) (not e!4287820))))

(declare-fun validRegex!9278 (Regex!18111) Bool)

(assert (=> start!695164 (= res!2911063 (validRegex!9278 r!11483))))

(assert (=> start!695164 e!4287820))

(assert (=> start!695164 e!4287817))

(declare-fun condSetEmpty!52307 () Bool)

(assert (=> start!695164 (= condSetEmpty!52307 (= z!3189 ((as const (Array Context!14210 Bool)) false)))))

(assert (=> start!695164 setRes!52307))

(assert (= (and start!695164 res!2911063) b!7134507))

(assert (= (and b!7134507 res!2911064) b!7134500))

(assert (= (and b!7134500 res!2911065) b!7134501))

(get-info :version)

(assert (= (and start!695164 ((_ is ElementMatch!18111) r!11483)) b!7134503))

(assert (= (and start!695164 ((_ is Concat!26956) r!11483)) b!7134505))

(assert (= (and start!695164 ((_ is Star!18111) r!11483)) b!7134504))

(assert (= (and start!695164 ((_ is Union!18111) r!11483)) b!7134506))

(assert (= (and start!695164 condSetEmpty!52307) setIsEmpty!52307))

(assert (= (and start!695164 (not condSetEmpty!52307)) setNonEmpty!52307))

(assert (= setNonEmpty!52307 b!7134502))

(declare-fun m!7851146 () Bool)

(assert (=> b!7134500 m!7851146))

(assert (=> b!7134500 m!7851146))

(declare-fun m!7851148 () Bool)

(assert (=> b!7134500 m!7851148))

(declare-fun m!7851150 () Bool)

(assert (=> setNonEmpty!52307 m!7851150))

(declare-fun m!7851152 () Bool)

(assert (=> b!7134507 m!7851152))

(declare-fun m!7851154 () Bool)

(assert (=> b!7134507 m!7851154))

(declare-fun m!7851156 () Bool)

(assert (=> start!695164 m!7851156))

(check-sat (not b!7134505) (not start!695164) (not b!7134500) (not setNonEmpty!52307) tp_is_empty!45859 (not b!7134502) (not b!7134504) (not b!7134506) (not b!7134507))
(check-sat)
