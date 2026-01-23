; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!546540 () Bool)

(assert start!546540)

(declare-fun e!3218810 () Bool)

(declare-datatypes ((C!29436 0))(
  ( (C!29437 (val!24420 Int)) )
))
(declare-datatypes ((Regex!14583 0))(
  ( (ElementMatch!14583 (c!888794 C!29436)) (Concat!23428 (regOne!29678 Regex!14583) (regTwo!29678 Regex!14583)) (EmptyExpr!14583) (Star!14583 (reg!14912 Regex!14583)) (EmptyLang!14583) (Union!14583 (regOne!29679 Regex!14583) (regTwo!29679 Regex!14583)) )
))
(declare-datatypes ((List!60121 0))(
  ( (Nil!59997) (Cons!59997 (h!66445 Regex!14583) (t!373274 List!60121)) )
))
(declare-datatypes ((Context!7934 0))(
  ( (Context!7935 (exprs!4467 List!60121)) )
))
(declare-fun setElem!31712 () Context!7934)

(declare-fun tp!1449249 () Bool)

(declare-fun setNonEmpty!31711 () Bool)

(declare-fun setRes!31712 () Bool)

(declare-fun inv!79704 (Context!7934) Bool)

(assert (=> setNonEmpty!31711 (= setRes!31712 (and tp!1449249 (inv!79704 setElem!31712) e!3218810))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun baseZ!62 () (InoxSet Context!7934))

(declare-fun setRest!31711 () (InoxSet Context!7934))

(assert (=> setNonEmpty!31711 (= baseZ!62 ((_ map or) (store ((as const (Array Context!7934 Bool)) false) setElem!31712 true) setRest!31711))))

(declare-fun res!2196026 () Bool)

(declare-fun e!3218811 () Bool)

(assert (=> start!546540 (=> (not res!2196026) (not e!3218811))))

(declare-datatypes ((List!60122 0))(
  ( (Nil!59998) (Cons!59998 (h!66446 C!29436) (t!373275 List!60122)) )
))
(declare-fun testedP!294 () List!60122)

(declare-fun input!5817 () List!60122)

(declare-fun isPrefix!5716 (List!60122 List!60122) Bool)

(assert (=> start!546540 (= res!2196026 (isPrefix!5716 testedP!294 input!5817))))

(assert (=> start!546540 e!3218811))

(declare-fun e!3218812 () Bool)

(assert (=> start!546540 e!3218812))

(declare-fun e!3218815 () Bool)

(assert (=> start!546540 e!3218815))

(declare-fun condSetEmpty!31712 () Bool)

(assert (=> start!546540 (= condSetEmpty!31712 (= baseZ!62 ((as const (Array Context!7934 Bool)) false)))))

(assert (=> start!546540 setRes!31712))

(declare-fun condSetEmpty!31711 () Bool)

(declare-fun z!4581 () (InoxSet Context!7934))

(assert (=> start!546540 (= condSetEmpty!31711 (= z!4581 ((as const (Array Context!7934 Bool)) false)))))

(declare-fun setRes!31711 () Bool)

(assert (=> start!546540 setRes!31711))

(declare-fun setNonEmpty!31712 () Bool)

(declare-fun setElem!31711 () Context!7934)

(declare-fun e!3218814 () Bool)

(declare-fun tp!1449248 () Bool)

(assert (=> setNonEmpty!31712 (= setRes!31711 (and tp!1449248 (inv!79704 setElem!31711) e!3218814))))

(declare-fun setRest!31712 () (InoxSet Context!7934))

(assert (=> setNonEmpty!31712 (= z!4581 ((_ map or) (store ((as const (Array Context!7934 Bool)) false) setElem!31711 true) setRest!31712))))

(declare-fun b!5165849 () Bool)

(declare-fun res!2196027 () Bool)

(assert (=> b!5165849 (=> (not res!2196027) (not e!3218811))))

(declare-fun derivationZipper!206 ((InoxSet Context!7934) List!60122) (InoxSet Context!7934))

(assert (=> b!5165849 (= res!2196027 (= (derivationZipper!206 baseZ!62 testedP!294) z!4581))))

(declare-fun setIsEmpty!31711 () Bool)

(assert (=> setIsEmpty!31711 setRes!31712))

(declare-fun b!5165850 () Bool)

(declare-fun e!3218816 () Bool)

(declare-fun e!3218813 () Bool)

(assert (=> b!5165850 (= e!3218816 (not e!3218813))))

(declare-fun res!2196024 () Bool)

(assert (=> b!5165850 (=> res!2196024 e!3218813)))

(declare-fun lt!2124652 () Int)

(declare-fun lt!2124655 () Int)

(assert (=> b!5165850 (= res!2196024 (not (= lt!2124652 lt!2124655)))))

(assert (=> b!5165850 (<= lt!2124652 lt!2124655)))

(declare-datatypes ((Unit!151440 0))(
  ( (Unit!151441) )
))
(declare-fun lt!2124654 () Unit!151440)

(declare-fun lemmaIsPrefixThenSmallerEqSize!879 (List!60122 List!60122) Unit!151440)

(assert (=> b!5165850 (= lt!2124654 (lemmaIsPrefixThenSmallerEqSize!879 testedP!294 input!5817))))

(declare-fun b!5165851 () Bool)

(declare-fun tp_is_empty!38419 () Bool)

(declare-fun tp!1449246 () Bool)

(assert (=> b!5165851 (= e!3218812 (and tp_is_empty!38419 tp!1449246))))

(declare-fun b!5165852 () Bool)

(assert (=> b!5165852 (= e!3218813 true)))

(assert (=> b!5165852 (isPrefix!5716 input!5817 input!5817)))

(declare-fun lt!2124656 () Unit!151440)

(declare-fun lemmaIsPrefixRefl!3723 (List!60122 List!60122) Unit!151440)

(assert (=> b!5165852 (= lt!2124656 (lemmaIsPrefixRefl!3723 input!5817 input!5817))))

(declare-fun b!5165853 () Bool)

(declare-fun res!2196025 () Bool)

(assert (=> b!5165853 (=> (not res!2196025) (not e!3218816))))

(assert (=> b!5165853 (= res!2196025 (not (= testedP!294 input!5817)))))

(declare-fun b!5165854 () Bool)

(assert (=> b!5165854 (= e!3218811 e!3218816)))

(declare-fun res!2196028 () Bool)

(assert (=> b!5165854 (=> (not res!2196028) (not e!3218816))))

(declare-fun lt!2124653 () List!60122)

(declare-fun isEmpty!32121 (List!60122) Bool)

(declare-datatypes ((tuple2!63720 0))(
  ( (tuple2!63721 (_1!35163 List!60122) (_2!35163 List!60122)) )
))
(declare-fun findLongestMatchInnerZipper!241 ((InoxSet Context!7934) List!60122 Int List!60122 List!60122 Int) tuple2!63720)

(assert (=> b!5165854 (= res!2196028 (not (isEmpty!32121 (_1!35163 (findLongestMatchInnerZipper!241 z!4581 testedP!294 lt!2124652 lt!2124653 input!5817 lt!2124655)))))))

(declare-fun size!39619 (List!60122) Int)

(assert (=> b!5165854 (= lt!2124655 (size!39619 input!5817))))

(declare-fun getSuffix!3366 (List!60122 List!60122) List!60122)

(assert (=> b!5165854 (= lt!2124653 (getSuffix!3366 input!5817 testedP!294))))

(assert (=> b!5165854 (= lt!2124652 (size!39619 testedP!294))))

(declare-fun b!5165855 () Bool)

(declare-fun tp!1449250 () Bool)

(assert (=> b!5165855 (= e!3218814 tp!1449250)))

(declare-fun b!5165856 () Bool)

(declare-fun tp!1449247 () Bool)

(assert (=> b!5165856 (= e!3218815 (and tp_is_empty!38419 tp!1449247))))

(declare-fun b!5165857 () Bool)

(declare-fun tp!1449251 () Bool)

(assert (=> b!5165857 (= e!3218810 tp!1449251)))

(declare-fun setIsEmpty!31712 () Bool)

(assert (=> setIsEmpty!31712 setRes!31711))

(assert (= (and start!546540 res!2196026) b!5165849))

(assert (= (and b!5165849 res!2196027) b!5165854))

(assert (= (and b!5165854 res!2196028) b!5165853))

(assert (= (and b!5165853 res!2196025) b!5165850))

(assert (= (and b!5165850 (not res!2196024)) b!5165852))

(get-info :version)

(assert (= (and start!546540 ((_ is Cons!59998) testedP!294)) b!5165851))

(assert (= (and start!546540 ((_ is Cons!59998) input!5817)) b!5165856))

(assert (= (and start!546540 condSetEmpty!31712) setIsEmpty!31711))

(assert (= (and start!546540 (not condSetEmpty!31712)) setNonEmpty!31711))

(assert (= setNonEmpty!31711 b!5165857))

(assert (= (and start!546540 condSetEmpty!31711) setIsEmpty!31712))

(assert (= (and start!546540 (not condSetEmpty!31711)) setNonEmpty!31712))

(assert (= setNonEmpty!31712 b!5165855))

(declare-fun m!6216280 () Bool)

(assert (=> setNonEmpty!31711 m!6216280))

(declare-fun m!6216282 () Bool)

(assert (=> start!546540 m!6216282))

(declare-fun m!6216284 () Bool)

(assert (=> setNonEmpty!31712 m!6216284))

(declare-fun m!6216286 () Bool)

(assert (=> b!5165849 m!6216286))

(declare-fun m!6216288 () Bool)

(assert (=> b!5165854 m!6216288))

(declare-fun m!6216290 () Bool)

(assert (=> b!5165854 m!6216290))

(declare-fun m!6216292 () Bool)

(assert (=> b!5165854 m!6216292))

(declare-fun m!6216294 () Bool)

(assert (=> b!5165854 m!6216294))

(declare-fun m!6216296 () Bool)

(assert (=> b!5165854 m!6216296))

(declare-fun m!6216298 () Bool)

(assert (=> b!5165852 m!6216298))

(declare-fun m!6216300 () Bool)

(assert (=> b!5165852 m!6216300))

(declare-fun m!6216302 () Bool)

(assert (=> b!5165850 m!6216302))

(check-sat (not setNonEmpty!31711) (not b!5165857) (not b!5165856) (not b!5165851) (not b!5165850) (not setNonEmpty!31712) tp_is_empty!38419 (not b!5165854) (not b!5165855) (not b!5165849) (not b!5165852) (not start!546540))
(check-sat)
