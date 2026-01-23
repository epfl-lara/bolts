; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541634 () Bool)

(assert start!541634)

(declare-fun b!5127889 () Bool)

(declare-fun e!3198024 () Bool)

(assert (=> b!5127889 (= e!3198024 false)))

(declare-fun lt!2114948 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28828 0))(
  ( (C!28829 (val!24066 Int)) )
))
(declare-datatypes ((Regex!14281 0))(
  ( (ElementMatch!14281 (c!881773 C!28828)) (Concat!23126 (regOne!29074 Regex!14281) (regTwo!29074 Regex!14281)) (EmptyExpr!14281) (Star!14281 (reg!14610 Regex!14281)) (EmptyLang!14281) (Union!14281 (regOne!29075 Regex!14281) (regTwo!29075 Regex!14281)) )
))
(declare-datatypes ((List!59502 0))(
  ( (Nil!59378) (Cons!59378 (h!65826 Regex!14281) (t!372529 List!59502)) )
))
(declare-datatypes ((Context!7330 0))(
  ( (Context!7331 (exprs!4165 List!59502)) )
))
(declare-fun z!1113 () (InoxSet Context!7330))

(declare-fun lambda!252249 () Int)

(declare-fun nullableContext!2 (Context!7330) Bool)

(declare-fun getWitness!687 ((InoxSet Context!7330) Int) Context!7330)

(assert (=> b!5127889 (= lt!2114948 (nullableContext!2 (getWitness!687 z!1113 lambda!252249)))))

(declare-fun b!5127890 () Bool)

(declare-fun res!2183211 () Bool)

(assert (=> b!5127890 (=> (not res!2183211) (not e!3198024))))

(declare-fun exists!1527 ((InoxSet Context!7330) Int) Bool)

(assert (=> b!5127890 (= res!2183211 (exists!1527 z!1113 lambda!252249))))

(declare-fun setNonEmpty!30800 () Bool)

(declare-fun setElem!30800 () Context!7330)

(declare-fun setRes!30800 () Bool)

(declare-fun tp!1430641 () Bool)

(declare-fun e!3198025 () Bool)

(declare-fun inv!78883 (Context!7330) Bool)

(assert (=> setNonEmpty!30800 (= setRes!30800 (and tp!1430641 (inv!78883 setElem!30800) e!3198025))))

(declare-fun setRest!30800 () (InoxSet Context!7330))

(assert (=> setNonEmpty!30800 (= z!1113 ((_ map or) (store ((as const (Array Context!7330 Bool)) false) setElem!30800 true) setRest!30800))))

(declare-fun res!2183212 () Bool)

(assert (=> start!541634 (=> (not res!2183212) (not e!3198024))))

(declare-fun nullableZipper!1066 ((InoxSet Context!7330)) Bool)

(assert (=> start!541634 (= res!2183212 (nullableZipper!1066 z!1113))))

(assert (=> start!541634 e!3198024))

(declare-fun condSetEmpty!30800 () Bool)

(assert (=> start!541634 (= condSetEmpty!30800 (= z!1113 ((as const (Array Context!7330 Bool)) false)))))

(assert (=> start!541634 setRes!30800))

(declare-fun setIsEmpty!30800 () Bool)

(assert (=> setIsEmpty!30800 setRes!30800))

(declare-fun b!5127891 () Bool)

(declare-fun tp!1430640 () Bool)

(assert (=> b!5127891 (= e!3198025 tp!1430640)))

(assert (= (and start!541634 res!2183212) b!5127890))

(assert (= (and b!5127890 res!2183211) b!5127889))

(assert (= (and start!541634 condSetEmpty!30800) setIsEmpty!30800))

(assert (= (and start!541634 (not condSetEmpty!30800)) setNonEmpty!30800))

(assert (= setNonEmpty!30800 b!5127891))

(declare-fun m!6192092 () Bool)

(assert (=> b!5127889 m!6192092))

(assert (=> b!5127889 m!6192092))

(declare-fun m!6192094 () Bool)

(assert (=> b!5127889 m!6192094))

(declare-fun m!6192096 () Bool)

(assert (=> b!5127890 m!6192096))

(declare-fun m!6192098 () Bool)

(assert (=> setNonEmpty!30800 m!6192098))

(declare-fun m!6192100 () Bool)

(assert (=> start!541634 m!6192100))

(check-sat (not setNonEmpty!30800) (not b!5127890) (not b!5127891) (not start!541634) (not b!5127889))
(check-sat)
