; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725814 () Bool)

(assert start!725814)

(declare-datatypes ((C!39640 0))(
  ( (C!39641 (val!30218 Int)) )
))
(declare-datatypes ((Regex!19667 0))(
  ( (ElementMatch!19667 (c!1384898 C!39640)) (Concat!28512 (regOne!39846 Regex!19667) (regTwo!39846 Regex!19667)) (EmptyExpr!19667) (Star!19667 (reg!19996 Regex!19667)) (EmptyLang!19667) (Union!19667 (regOne!39847 Regex!19667) (regTwo!39847 Regex!19667)) )
))
(declare-datatypes ((List!72404 0))(
  ( (Nil!72280) (Cons!72280 (h!78728 Regex!19667) (t!386973 List!72404)) )
))
(declare-datatypes ((Context!16838 0))(
  ( (Context!16839 (exprs!8919 List!72404)) )
))
(declare-fun setElem!56828 () Context!16838)

(declare-fun setNonEmpty!56828 () Bool)

(declare-fun tp!2177695 () Bool)

(declare-fun e!4472632 () Bool)

(declare-fun setRes!56828 () Bool)

(declare-fun inv!92382 (Context!16838) Bool)

(assert (=> setNonEmpty!56828 (= setRes!56828 (and tp!2177695 (inv!92382 setElem!56828) e!4472632))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3716 () (InoxSet Context!16838))

(declare-fun setRest!56828 () (InoxSet Context!16838))

(assert (=> setNonEmpty!56828 (= z!3716 ((_ map or) (store ((as const (Array Context!16838 Bool)) false) setElem!56828 true) setRest!56828))))

(declare-fun b!7501942 () Bool)

(declare-fun res!3009508 () Bool)

(declare-fun e!4472633 () Bool)

(assert (=> b!7501942 (=> res!3009508 e!4472633)))

(declare-fun testedPSize!164 () Int)

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7501942 (= res!3009508 (= testedPSize!164 totalInputSize!226))))

(declare-fun b!7501943 () Bool)

(declare-fun e!4472635 () Bool)

(declare-fun tp_is_empty!49655 () Bool)

(declare-fun tp!2177698 () Bool)

(assert (=> b!7501943 (= e!4472635 (and tp_is_empty!49655 tp!2177698))))

(declare-fun b!7501944 () Bool)

(declare-fun e!4472634 () Bool)

(declare-fun e!4472640 () Bool)

(assert (=> b!7501944 (= e!4472634 e!4472640)))

(declare-fun res!3009507 () Bool)

(assert (=> b!7501944 (=> (not res!3009507) (not e!4472640))))

(declare-fun lt!2632148 () Int)

(assert (=> b!7501944 (= res!3009507 (= testedPSize!164 lt!2632148))))

(declare-datatypes ((List!72405 0))(
  ( (Nil!72281) (Cons!72281 (h!78729 C!39640) (t!386974 List!72405)) )
))
(declare-fun testedP!204 () List!72405)

(declare-fun size!42228 (List!72405) Int)

(assert (=> b!7501944 (= lt!2632148 (size!42228 testedP!204))))

(declare-fun b!7501945 () Bool)

(assert (=> b!7501945 (= e!4472633 true)))

(declare-fun lt!2632146 () Int)

(assert (=> b!7501945 (<= lt!2632148 lt!2632146)))

(declare-datatypes ((Unit!166200 0))(
  ( (Unit!166201) )
))
(declare-fun lt!2632142 () Unit!166200)

(declare-fun totalInput!779 () List!72405)

(declare-fun lemmaIsPrefixThenSmallerEqSize!958 (List!72405 List!72405) Unit!166200)

(assert (=> b!7501945 (= lt!2632142 (lemmaIsPrefixThenSmallerEqSize!958 testedP!204 totalInput!779))))

(declare-fun b!7501946 () Bool)

(declare-fun e!4472637 () Bool)

(declare-fun tp!2177697 () Bool)

(assert (=> b!7501946 (= e!4472637 (and tp_is_empty!49655 tp!2177697))))

(declare-fun b!7501947 () Bool)

(declare-fun e!4472636 () Bool)

(declare-fun tp!2177696 () Bool)

(assert (=> b!7501947 (= e!4472636 (and tp_is_empty!49655 tp!2177696))))

(declare-fun setIsEmpty!56828 () Bool)

(assert (=> setIsEmpty!56828 setRes!56828))

(declare-fun b!7501948 () Bool)

(declare-fun e!4472638 () Bool)

(declare-fun e!4472639 () Bool)

(assert (=> b!7501948 (= e!4472638 (not e!4472639))))

(declare-fun res!3009506 () Bool)

(assert (=> b!7501948 (=> res!3009506 e!4472639)))

(declare-fun isPrefix!5953 (List!72405 List!72405) Bool)

(assert (=> b!7501948 (= res!3009506 (not (isPrefix!5953 testedP!204 totalInput!779)))))

(declare-fun lt!2632144 () List!72405)

(assert (=> b!7501948 (isPrefix!5953 testedP!204 lt!2632144)))

(declare-fun lt!2632145 () Unit!166200)

(declare-fun testedSuffix!164 () List!72405)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3666 (List!72405 List!72405) Unit!166200)

(assert (=> b!7501948 (= lt!2632145 (lemmaConcatTwoListThenFirstIsPrefix!3666 testedP!204 testedSuffix!164))))

(declare-fun res!3009505 () Bool)

(assert (=> start!725814 (=> (not res!3009505) (not e!4472634))))

(assert (=> start!725814 (= res!3009505 (= lt!2632144 totalInput!779))))

(declare-fun ++!17286 (List!72405 List!72405) List!72405)

(assert (=> start!725814 (= lt!2632144 (++!17286 testedP!204 testedSuffix!164))))

(assert (=> start!725814 e!4472634))

(assert (=> start!725814 e!4472635))

(assert (=> start!725814 true))

(assert (=> start!725814 e!4472637))

(assert (=> start!725814 e!4472636))

(declare-fun condSetEmpty!56828 () Bool)

(assert (=> start!725814 (= condSetEmpty!56828 (= z!3716 ((as const (Array Context!16838 Bool)) false)))))

(assert (=> start!725814 setRes!56828))

(declare-fun b!7501949 () Bool)

(declare-fun tp!2177699 () Bool)

(assert (=> b!7501949 (= e!4472632 tp!2177699)))

(declare-fun b!7501950 () Bool)

(assert (=> b!7501950 (= e!4472639 e!4472633)))

(declare-fun res!3009504 () Bool)

(assert (=> b!7501950 (=> res!3009504 e!4472633)))

(declare-fun lostCauseZipper!1355 ((InoxSet Context!16838)) Bool)

(assert (=> b!7501950 (= res!3009504 (lostCauseZipper!1355 z!3716))))

(declare-fun lt!2632147 () List!72405)

(assert (=> b!7501950 (and (= testedSuffix!164 lt!2632147) (= lt!2632147 testedSuffix!164))))

(declare-fun lt!2632143 () Unit!166200)

(declare-fun lemmaSamePrefixThenSameSuffix!2758 (List!72405 List!72405 List!72405 List!72405 List!72405) Unit!166200)

(assert (=> b!7501950 (= lt!2632143 (lemmaSamePrefixThenSameSuffix!2758 testedP!204 testedSuffix!164 testedP!204 lt!2632147 totalInput!779))))

(declare-fun getSuffix!3455 (List!72405 List!72405) List!72405)

(assert (=> b!7501950 (= lt!2632147 (getSuffix!3455 totalInput!779 testedP!204))))

(declare-fun b!7501951 () Bool)

(assert (=> b!7501951 (= e!4472640 e!4472638)))

(declare-fun res!3009503 () Bool)

(assert (=> b!7501951 (=> (not res!3009503) (not e!4472638))))

(assert (=> b!7501951 (= res!3009503 (= totalInputSize!226 lt!2632146))))

(assert (=> b!7501951 (= lt!2632146 (size!42228 totalInput!779))))

(assert (= (and start!725814 res!3009505) b!7501944))

(assert (= (and b!7501944 res!3009507) b!7501951))

(assert (= (and b!7501951 res!3009503) b!7501948))

(assert (= (and b!7501948 (not res!3009506)) b!7501950))

(assert (= (and b!7501950 (not res!3009504)) b!7501942))

(assert (= (and b!7501942 (not res!3009508)) b!7501945))

(get-info :version)

(assert (= (and start!725814 ((_ is Cons!72281) testedSuffix!164)) b!7501943))

(assert (= (and start!725814 ((_ is Cons!72281) totalInput!779)) b!7501946))

(assert (= (and start!725814 ((_ is Cons!72281) testedP!204)) b!7501947))

(assert (= (and start!725814 condSetEmpty!56828) setIsEmpty!56828))

(assert (= (and start!725814 (not condSetEmpty!56828)) setNonEmpty!56828))

(assert (= setNonEmpty!56828 b!7501949))

(declare-fun m!8083520 () Bool)

(assert (=> start!725814 m!8083520))

(declare-fun m!8083522 () Bool)

(assert (=> setNonEmpty!56828 m!8083522))

(declare-fun m!8083524 () Bool)

(assert (=> b!7501944 m!8083524))

(declare-fun m!8083526 () Bool)

(assert (=> b!7501945 m!8083526))

(declare-fun m!8083528 () Bool)

(assert (=> b!7501950 m!8083528))

(declare-fun m!8083530 () Bool)

(assert (=> b!7501950 m!8083530))

(declare-fun m!8083532 () Bool)

(assert (=> b!7501950 m!8083532))

(declare-fun m!8083534 () Bool)

(assert (=> b!7501948 m!8083534))

(declare-fun m!8083536 () Bool)

(assert (=> b!7501948 m!8083536))

(declare-fun m!8083538 () Bool)

(assert (=> b!7501948 m!8083538))

(declare-fun m!8083540 () Bool)

(assert (=> b!7501951 m!8083540))

(check-sat (not b!7501947) (not b!7501944) (not b!7501946) (not b!7501948) (not b!7501943) (not start!725814) (not b!7501945) (not b!7501951) (not b!7501949) (not setNonEmpty!56828) (not b!7501950) tp_is_empty!49655)
(check-sat)
