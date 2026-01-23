; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!541516 () Bool)

(assert start!541516)

(declare-fun b!5127570 () Bool)

(declare-fun res!2183131 () Bool)

(declare-fun e!3197811 () Bool)

(assert (=> b!5127570 (=> (not res!2183131) (not e!3197811))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!28808 0))(
  ( (C!28809 (val!24056 Int)) )
))
(declare-datatypes ((Regex!14271 0))(
  ( (ElementMatch!14271 (c!881652 C!28808)) (Concat!23116 (regOne!29054 Regex!14271) (regTwo!29054 Regex!14271)) (EmptyExpr!14271) (Star!14271 (reg!14600 Regex!14271)) (EmptyLang!14271) (Union!14271 (regOne!29055 Regex!14271) (regTwo!29055 Regex!14271)) )
))
(declare-datatypes ((List!59482 0))(
  ( (Nil!59358) (Cons!59358 (h!65806 Regex!14271) (t!372509 List!59482)) )
))
(declare-datatypes ((Context!7310 0))(
  ( (Context!7311 (exprs!4155 List!59482)) )
))
(declare-fun z!1006 () (InoxSet Context!7310))

(declare-datatypes ((List!59483 0))(
  ( (Nil!59359) (Cons!59359 (h!65807 C!28808) (t!372510 List!59483)) )
))
(declare-fun s!2272 () List!59483)

(declare-fun matchZipper!933 ((InoxSet Context!7310) List!59483) Bool)

(assert (=> b!5127570 (= res!2183131 (matchZipper!933 z!1006 s!2272))))

(declare-fun setIsEmpty!30756 () Bool)

(declare-fun setRes!30756 () Bool)

(assert (=> setIsEmpty!30756 setRes!30756))

(declare-fun res!2183130 () Bool)

(assert (=> start!541516 (=> (not res!2183130) (not e!3197811))))

(declare-fun lostCauseZipper!1149 ((InoxSet Context!7310)) Bool)

(assert (=> start!541516 (= res!2183130 (lostCauseZipper!1149 z!1006))))

(assert (=> start!541516 e!3197811))

(declare-fun condSetEmpty!30756 () Bool)

(assert (=> start!541516 (= condSetEmpty!30756 (= z!1006 ((as const (Array Context!7310 Bool)) false)))))

(assert (=> start!541516 setRes!30756))

(declare-fun e!3197810 () Bool)

(assert (=> start!541516 e!3197810))

(declare-fun b!5127571 () Bool)

(declare-fun e!3197812 () Bool)

(declare-fun tp!1430457 () Bool)

(assert (=> b!5127571 (= e!3197812 tp!1430457)))

(declare-fun b!5127572 () Bool)

(declare-fun tp_is_empty!37811 () Bool)

(declare-fun tp!1430459 () Bool)

(assert (=> b!5127572 (= e!3197810 (and tp_is_empty!37811 tp!1430459))))

(declare-fun b!5127573 () Bool)

(declare-fun res!2183132 () Bool)

(assert (=> b!5127573 (=> (not res!2183132) (not e!3197811))))

(get-info :version)

(assert (=> b!5127573 (= res!2183132 ((_ is Nil!59359) s!2272))))

(declare-fun setElem!30756 () Context!7310)

(declare-fun setNonEmpty!30756 () Bool)

(declare-fun tp!1430458 () Bool)

(declare-fun inv!78858 (Context!7310) Bool)

(assert (=> setNonEmpty!30756 (= setRes!30756 (and tp!1430458 (inv!78858 setElem!30756) e!3197812))))

(declare-fun setRest!30756 () (InoxSet Context!7310))

(assert (=> setNonEmpty!30756 (= z!1006 ((_ map or) (store ((as const (Array Context!7310 Bool)) false) setElem!30756 true) setRest!30756))))

(declare-fun b!5127574 () Bool)

(declare-fun res!2183129 () Bool)

(assert (=> b!5127574 (=> (not res!2183129) (not e!3197811))))

(declare-fun nullableZipper!1060 ((InoxSet Context!7310)) Bool)

(assert (=> b!5127574 (= res!2183129 (nullableZipper!1060 z!1006))))

(declare-fun b!5127575 () Bool)

(assert (=> b!5127575 (= e!3197811 (not true))))

(assert (=> b!5127575 false))

(declare-datatypes ((Unit!150545 0))(
  ( (Unit!150546) )
))
(declare-fun lt!2114717 () Unit!150545)

(declare-fun lemmaZipperNullableThenNotLostCause!2 ((InoxSet Context!7310)) Unit!150545)

(assert (=> b!5127575 (= lt!2114717 (lemmaZipperNullableThenNotLostCause!2 z!1006))))

(assert (= (and start!541516 res!2183130) b!5127573))

(assert (= (and b!5127573 res!2183132) b!5127570))

(assert (= (and b!5127570 res!2183131) b!5127574))

(assert (= (and b!5127574 res!2183129) b!5127575))

(assert (= (and start!541516 condSetEmpty!30756) setIsEmpty!30756))

(assert (= (and start!541516 (not condSetEmpty!30756)) setNonEmpty!30756))

(assert (= setNonEmpty!30756 b!5127571))

(assert (= (and start!541516 ((_ is Cons!59359) s!2272)) b!5127572))

(declare-fun m!6191576 () Bool)

(assert (=> start!541516 m!6191576))

(declare-fun m!6191578 () Bool)

(assert (=> b!5127575 m!6191578))

(declare-fun m!6191580 () Bool)

(assert (=> b!5127570 m!6191580))

(declare-fun m!6191582 () Bool)

(assert (=> setNonEmpty!30756 m!6191582))

(declare-fun m!6191584 () Bool)

(assert (=> b!5127574 m!6191584))

(check-sat (not b!5127570) tp_is_empty!37811 (not b!5127575) (not b!5127571) (not b!5127572) (not start!541516) (not setNonEmpty!30756) (not b!5127574))
(check-sat)
