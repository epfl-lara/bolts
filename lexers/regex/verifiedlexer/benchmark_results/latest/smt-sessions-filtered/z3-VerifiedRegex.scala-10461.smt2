; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!540480 () Bool)

(assert start!540480)

(declare-fun setRes!30328 () Bool)

(declare-fun e!3193477 () Bool)

(declare-datatypes ((C!28692 0))(
  ( (C!28693 (val!23998 Int)) )
))
(declare-datatypes ((Regex!14213 0))(
  ( (ElementMatch!14213 (c!879991 C!28692)) (Concat!23058 (regOne!28938 Regex!14213) (regTwo!28938 Regex!14213)) (EmptyExpr!14213) (Star!14213 (reg!14542 Regex!14213)) (EmptyLang!14213) (Union!14213 (regOne!28939 Regex!14213) (regTwo!28939 Regex!14213)) )
))
(declare-datatypes ((List!59347 0))(
  ( (Nil!59223) (Cons!59223 (h!65671 Regex!14213) (t!372366 List!59347)) )
))
(declare-datatypes ((Context!7194 0))(
  ( (Context!7195 (exprs!4097 List!59347)) )
))
(declare-fun setElem!30328 () Context!7194)

(declare-fun setNonEmpty!30328 () Bool)

(declare-fun tp!1428420 () Bool)

(declare-fun inv!78713 (Context!7194) Bool)

(assert (=> setNonEmpty!30328 (= setRes!30328 (and tp!1428420 (inv!78713 setElem!30328) e!3193477))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!46 () (InoxSet Context!7194))

(declare-fun setRest!30328 () (InoxSet Context!7194))

(assert (=> setNonEmpty!30328 (= baseZ!46 ((_ map or) (store ((as const (Array Context!7194 Bool)) false) setElem!30328 true) setRest!30328))))

(declare-fun b!5120478 () Bool)

(declare-fun e!3193474 () Bool)

(declare-fun lt!2110995 () Int)

(declare-fun lt!2110996 () Int)

(assert (=> b!5120478 (= e!3193474 (> lt!2110995 lt!2110996))))

(declare-fun res!2180221 () Bool)

(declare-fun e!3193476 () Bool)

(assert (=> start!540480 (=> (not res!2180221) (not e!3193476))))

(declare-datatypes ((List!59348 0))(
  ( (Nil!59224) (Cons!59224 (h!65672 C!28692) (t!372367 List!59348)) )
))
(declare-fun testedP!265 () List!59348)

(declare-fun input!5745 () List!59348)

(declare-fun isPrefix!5618 (List!59348 List!59348) Bool)

(assert (=> start!540480 (= res!2180221 (isPrefix!5618 testedP!265 input!5745))))

(assert (=> start!540480 e!3193476))

(declare-fun e!3193473 () Bool)

(assert (=> start!540480 e!3193473))

(declare-fun e!3193472 () Bool)

(assert (=> start!540480 e!3193472))

(declare-fun e!3193475 () Bool)

(assert (=> start!540480 e!3193475))

(declare-fun condSetEmpty!30328 () Bool)

(assert (=> start!540480 (= condSetEmpty!30328 (= baseZ!46 ((as const (Array Context!7194 Bool)) false)))))

(assert (=> start!540480 setRes!30328))

(declare-fun b!5120479 () Bool)

(declare-fun res!2180220 () Bool)

(assert (=> b!5120479 (=> (not res!2180220) (not e!3193474))))

(declare-fun knownP!20 () List!59348)

(declare-fun matchZipper!881 ((InoxSet Context!7194) List!59348) Bool)

(assert (=> b!5120479 (= res!2180220 (matchZipper!881 baseZ!46 knownP!20))))

(declare-fun b!5120480 () Bool)

(declare-fun tp!1428418 () Bool)

(assert (=> b!5120480 (= e!3193477 tp!1428418)))

(declare-fun b!5120481 () Bool)

(declare-fun res!2180222 () Bool)

(assert (=> b!5120481 (=> (not res!2180222) (not e!3193476))))

(assert (=> b!5120481 (= res!2180222 (isPrefix!5618 knownP!20 input!5745))))

(declare-fun setIsEmpty!30328 () Bool)

(assert (=> setIsEmpty!30328 setRes!30328))

(declare-fun b!5120482 () Bool)

(assert (=> b!5120482 (= e!3193476 e!3193474)))

(declare-fun res!2180219 () Bool)

(assert (=> b!5120482 (=> (not res!2180219) (not e!3193474))))

(assert (=> b!5120482 (= res!2180219 (>= lt!2110996 lt!2110995))))

(declare-fun size!39519 (List!59348) Int)

(assert (=> b!5120482 (= lt!2110995 (size!39519 testedP!265))))

(assert (=> b!5120482 (= lt!2110996 (size!39519 knownP!20))))

(declare-fun b!5120483 () Bool)

(declare-fun tp_is_empty!37699 () Bool)

(declare-fun tp!1428417 () Bool)

(assert (=> b!5120483 (= e!3193472 (and tp_is_empty!37699 tp!1428417))))

(declare-fun b!5120484 () Bool)

(declare-fun tp!1428419 () Bool)

(assert (=> b!5120484 (= e!3193473 (and tp_is_empty!37699 tp!1428419))))

(declare-fun b!5120485 () Bool)

(declare-fun tp!1428421 () Bool)

(assert (=> b!5120485 (= e!3193475 (and tp_is_empty!37699 tp!1428421))))

(assert (= (and start!540480 res!2180221) b!5120481))

(assert (= (and b!5120481 res!2180222) b!5120482))

(assert (= (and b!5120482 res!2180219) b!5120479))

(assert (= (and b!5120479 res!2180220) b!5120478))

(get-info :version)

(assert (= (and start!540480 ((_ is Cons!59224) testedP!265)) b!5120484))

(assert (= (and start!540480 ((_ is Cons!59224) input!5745)) b!5120483))

(assert (= (and start!540480 ((_ is Cons!59224) knownP!20)) b!5120485))

(assert (= (and start!540480 condSetEmpty!30328) setIsEmpty!30328))

(assert (= (and start!540480 (not condSetEmpty!30328)) setNonEmpty!30328))

(assert (= setNonEmpty!30328 b!5120480))

(declare-fun m!6181558 () Bool)

(assert (=> setNonEmpty!30328 m!6181558))

(declare-fun m!6181560 () Bool)

(assert (=> b!5120481 m!6181560))

(declare-fun m!6181562 () Bool)

(assert (=> b!5120482 m!6181562))

(declare-fun m!6181564 () Bool)

(assert (=> b!5120482 m!6181564))

(declare-fun m!6181566 () Bool)

(assert (=> b!5120479 m!6181566))

(declare-fun m!6181568 () Bool)

(assert (=> start!540480 m!6181568))

(check-sat (not b!5120482) (not start!540480) tp_is_empty!37699 (not setNonEmpty!30328) (not b!5120484) (not b!5120483) (not b!5120479) (not b!5120485) (not b!5120481) (not b!5120480))
(check-sat)
