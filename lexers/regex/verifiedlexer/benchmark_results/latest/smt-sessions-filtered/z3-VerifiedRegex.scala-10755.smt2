; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549794 () Bool)

(assert start!549794)

(declare-fun b!5195853 () Bool)

(assert (=> b!5195853 true))

(assert (=> b!5195853 true))

(declare-fun lambda!259979 () Int)

(declare-fun lambda!259978 () Int)

(assert (=> b!5195853 (not (= lambda!259979 lambda!259978))))

(assert (=> b!5195853 true))

(assert (=> b!5195853 true))

(declare-fun setIsEmpty!32884 () Bool)

(declare-fun setRes!32884 () Bool)

(assert (=> setIsEmpty!32884 setRes!32884))

(declare-fun b!5195835 () Bool)

(declare-fun res!2207078 () Bool)

(declare-fun e!3235957 () Bool)

(assert (=> b!5195835 (=> res!2207078 e!3235957)))

(declare-datatypes ((C!29784 0))(
  ( (C!29785 (val!24594 Int)) )
))
(declare-datatypes ((Regex!14757 0))(
  ( (ElementMatch!14757 (c!895522 C!29784)) (Concat!23602 (regOne!30026 Regex!14757) (regTwo!30026 Regex!14757)) (EmptyExpr!14757) (Star!14757 (reg!15086 Regex!14757)) (EmptyLang!14757) (Union!14757 (regOne!30027 Regex!14757) (regTwo!30027 Regex!14757)) )
))
(declare-fun r!7292 () Regex!14757)

(declare-datatypes ((List!60570 0))(
  ( (Nil!60446) (Cons!60446 (h!66894 Regex!14757) (t!373723 List!60570)) )
))
(declare-datatypes ((Context!8282 0))(
  ( (Context!8283 (exprs!4641 List!60570)) )
))
(declare-datatypes ((List!60571 0))(
  ( (Nil!60447) (Cons!60447 (h!66895 Context!8282) (t!373724 List!60571)) )
))
(declare-fun zl!343 () List!60571)

(declare-fun generalisedConcat!426 (List!60570) Regex!14757)

(assert (=> b!5195835 (= res!2207078 (not (= r!7292 (generalisedConcat!426 (exprs!4641 (h!66895 zl!343))))))))

(declare-fun b!5195836 () Bool)

(declare-fun e!3235956 () Bool)

(declare-fun tp_is_empty!38767 () Bool)

(assert (=> b!5195836 (= e!3235956 tp_is_empty!38767)))

(declare-fun b!5195837 () Bool)

(declare-fun res!2207073 () Bool)

(assert (=> b!5195837 (=> res!2207073 e!3235957)))

(get-info :version)

(assert (=> b!5195837 (= res!2207073 (or ((_ is EmptyExpr!14757) r!7292) ((_ is EmptyLang!14757) r!7292) ((_ is ElementMatch!14757) r!7292) ((_ is Union!14757) r!7292) (not ((_ is Concat!23602) r!7292))))))

(declare-fun b!5195838 () Bool)

(declare-fun tp!1457600 () Bool)

(declare-fun tp!1457592 () Bool)

(assert (=> b!5195838 (= e!3235956 (and tp!1457600 tp!1457592))))

(declare-fun b!5195839 () Bool)

(declare-fun res!2207082 () Bool)

(assert (=> b!5195839 (=> res!2207082 e!3235957)))

(declare-fun isEmpty!32366 (List!60571) Bool)

(assert (=> b!5195839 (= res!2207082 (not (isEmpty!32366 (t!373724 zl!343))))))

(declare-fun b!5195840 () Bool)

(declare-fun res!2207079 () Bool)

(declare-fun e!3235951 () Bool)

(assert (=> b!5195840 (=> (not res!2207079) (not e!3235951))))

(declare-fun unfocusZipper!499 (List!60571) Regex!14757)

(assert (=> b!5195840 (= res!2207079 (= r!7292 (unfocusZipper!499 zl!343)))))

(declare-fun setElem!32884 () Context!8282)

(declare-fun tp!1457598 () Bool)

(declare-fun setNonEmpty!32884 () Bool)

(declare-fun e!3235954 () Bool)

(declare-fun inv!80139 (Context!8282) Bool)

(assert (=> setNonEmpty!32884 (= setRes!32884 (and tp!1457598 (inv!80139 setElem!32884) e!3235954))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8282))

(declare-fun setRest!32884 () (InoxSet Context!8282))

(assert (=> setNonEmpty!32884 (= z!1189 ((_ map or) (store ((as const (Array Context!8282 Bool)) false) setElem!32884 true) setRest!32884))))

(declare-fun b!5195841 () Bool)

(declare-fun tp!1457596 () Bool)

(declare-fun tp!1457597 () Bool)

(assert (=> b!5195841 (= e!3235956 (and tp!1457596 tp!1457597))))

(declare-fun b!5195842 () Bool)

(declare-fun res!2207074 () Bool)

(assert (=> b!5195842 (=> (not res!2207074) (not e!3235951))))

(declare-fun toList!8541 ((InoxSet Context!8282)) List!60571)

(assert (=> b!5195842 (= res!2207074 (= (toList!8541 z!1189) zl!343))))

(declare-fun b!5195843 () Bool)

(declare-fun res!2207081 () Bool)

(assert (=> b!5195843 (=> res!2207081 e!3235957)))

(declare-fun generalisedUnion!686 (List!60570) Regex!14757)

(declare-fun unfocusZipperList!199 (List!60571) List!60570)

(assert (=> b!5195843 (= res!2207081 (not (= r!7292 (generalisedUnion!686 (unfocusZipperList!199 zl!343)))))))

(declare-fun b!5195845 () Bool)

(assert (=> b!5195845 (= e!3235951 (not e!3235957))))

(declare-fun res!2207076 () Bool)

(assert (=> b!5195845 (=> res!2207076 e!3235957)))

(assert (=> b!5195845 (= res!2207076 (not ((_ is Cons!60447) zl!343)))))

(declare-fun lt!2138827 () Bool)

(declare-datatypes ((List!60572 0))(
  ( (Nil!60448) (Cons!60448 (h!66896 C!29784) (t!373725 List!60572)) )
))
(declare-fun s!2326 () List!60572)

(declare-fun matchRSpec!1860 (Regex!14757 List!60572) Bool)

(assert (=> b!5195845 (= lt!2138827 (matchRSpec!1860 r!7292 s!2326))))

(declare-fun matchR!6942 (Regex!14757 List!60572) Bool)

(assert (=> b!5195845 (= lt!2138827 (matchR!6942 r!7292 s!2326))))

(declare-datatypes ((Unit!152348 0))(
  ( (Unit!152349) )
))
(declare-fun lt!2138832 () Unit!152348)

(declare-fun mainMatchTheorem!1860 (Regex!14757 List!60572) Unit!152348)

(assert (=> b!5195845 (= lt!2138832 (mainMatchTheorem!1860 r!7292 s!2326))))

(declare-fun b!5195846 () Bool)

(declare-fun res!2207080 () Bool)

(assert (=> b!5195846 (=> res!2207080 e!3235957)))

(assert (=> b!5195846 (= res!2207080 (not ((_ is Cons!60446) (exprs!4641 (h!66895 zl!343)))))))

(declare-fun e!3235953 () Bool)

(declare-fun tp!1457595 () Bool)

(declare-fun e!3235952 () Bool)

(declare-fun b!5195847 () Bool)

(assert (=> b!5195847 (= e!3235952 (and (inv!80139 (h!66895 zl!343)) e!3235953 tp!1457595))))

(declare-fun b!5195848 () Bool)

(declare-fun tp!1457601 () Bool)

(assert (=> b!5195848 (= e!3235956 tp!1457601)))

(declare-fun b!5195849 () Bool)

(declare-fun tp!1457599 () Bool)

(assert (=> b!5195849 (= e!3235954 tp!1457599)))

(declare-fun b!5195850 () Bool)

(declare-fun e!3235950 () Bool)

(declare-fun tp!1457593 () Bool)

(assert (=> b!5195850 (= e!3235950 (and tp_is_empty!38767 tp!1457593))))

(declare-fun b!5195851 () Bool)

(declare-fun res!2207075 () Bool)

(declare-fun e!3235955 () Bool)

(assert (=> b!5195851 (=> res!2207075 e!3235955)))

(declare-fun isEmpty!32367 (List!60570) Bool)

(assert (=> b!5195851 (= res!2207075 (not (isEmpty!32367 (t!373723 (exprs!4641 (h!66895 zl!343))))))))

(declare-fun res!2207077 () Bool)

(assert (=> start!549794 (=> (not res!2207077) (not e!3235951))))

(declare-fun validRegex!6493 (Regex!14757) Bool)

(assert (=> start!549794 (= res!2207077 (validRegex!6493 r!7292))))

(assert (=> start!549794 e!3235951))

(assert (=> start!549794 e!3235956))

(declare-fun condSetEmpty!32884 () Bool)

(assert (=> start!549794 (= condSetEmpty!32884 (= z!1189 ((as const (Array Context!8282 Bool)) false)))))

(assert (=> start!549794 setRes!32884))

(assert (=> start!549794 e!3235952))

(assert (=> start!549794 e!3235950))

(declare-fun b!5195844 () Bool)

(assert (=> b!5195844 (= e!3235955 true)))

(declare-fun lt!2138833 () (InoxSet Context!8282))

(declare-fun derivationStepZipperDown!206 (Regex!14757 Context!8282 C!29784) (InoxSet Context!8282))

(assert (=> b!5195844 (= lt!2138833 (derivationStepZipperDown!206 r!7292 (Context!8283 Nil!60446) (h!66896 s!2326)))))

(declare-fun lt!2138830 () (InoxSet Context!8282))

(declare-fun derivationStepZipperUp!129 (Context!8282 C!29784) (InoxSet Context!8282))

(assert (=> b!5195844 (= lt!2138830 (derivationStepZipperUp!129 (Context!8283 (Cons!60446 r!7292 Nil!60446)) (h!66896 s!2326)))))

(declare-fun b!5195852 () Bool)

(declare-fun tp!1457594 () Bool)

(assert (=> b!5195852 (= e!3235953 tp!1457594)))

(assert (=> b!5195853 (= e!3235957 e!3235955)))

(declare-fun res!2207072 () Bool)

(assert (=> b!5195853 (=> res!2207072 e!3235955)))

(declare-fun lt!2138831 () Bool)

(assert (=> b!5195853 (= res!2207072 (or (not (= lt!2138827 lt!2138831)) ((_ is Nil!60448) s!2326)))))

(declare-fun Exists!1938 (Int) Bool)

(assert (=> b!5195853 (= (Exists!1938 lambda!259978) (Exists!1938 lambda!259979))))

(declare-fun lt!2138829 () Unit!152348)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!592 (Regex!14757 Regex!14757 List!60572) Unit!152348)

(assert (=> b!5195853 (= lt!2138829 (lemmaExistCutMatchRandMatchRSpecEquivalent!592 (regOne!30026 r!7292) (regTwo!30026 r!7292) s!2326))))

(assert (=> b!5195853 (= lt!2138831 (Exists!1938 lambda!259978))))

(declare-datatypes ((tuple2!63912 0))(
  ( (tuple2!63913 (_1!35259 List!60572) (_2!35259 List!60572)) )
))
(declare-datatypes ((Option!14868 0))(
  ( (None!14867) (Some!14867 (v!50896 tuple2!63912)) )
))
(declare-fun isDefined!11571 (Option!14868) Bool)

(declare-fun findConcatSeparation!1282 (Regex!14757 Regex!14757 List!60572 List!60572 List!60572) Option!14868)

(assert (=> b!5195853 (= lt!2138831 (isDefined!11571 (findConcatSeparation!1282 (regOne!30026 r!7292) (regTwo!30026 r!7292) Nil!60448 s!2326 s!2326)))))

(declare-fun lt!2138828 () Unit!152348)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1046 (Regex!14757 Regex!14757 List!60572) Unit!152348)

(assert (=> b!5195853 (= lt!2138828 (lemmaFindConcatSeparationEquivalentToExists!1046 (regOne!30026 r!7292) (regTwo!30026 r!7292) s!2326))))

(assert (= (and start!549794 res!2207077) b!5195842))

(assert (= (and b!5195842 res!2207074) b!5195840))

(assert (= (and b!5195840 res!2207079) b!5195845))

(assert (= (and b!5195845 (not res!2207076)) b!5195839))

(assert (= (and b!5195839 (not res!2207082)) b!5195835))

(assert (= (and b!5195835 (not res!2207078)) b!5195846))

(assert (= (and b!5195846 (not res!2207080)) b!5195843))

(assert (= (and b!5195843 (not res!2207081)) b!5195837))

(assert (= (and b!5195837 (not res!2207073)) b!5195853))

(assert (= (and b!5195853 (not res!2207072)) b!5195851))

(assert (= (and b!5195851 (not res!2207075)) b!5195844))

(assert (= (and start!549794 ((_ is ElementMatch!14757) r!7292)) b!5195836))

(assert (= (and start!549794 ((_ is Concat!23602) r!7292)) b!5195841))

(assert (= (and start!549794 ((_ is Star!14757) r!7292)) b!5195848))

(assert (= (and start!549794 ((_ is Union!14757) r!7292)) b!5195838))

(assert (= (and start!549794 condSetEmpty!32884) setIsEmpty!32884))

(assert (= (and start!549794 (not condSetEmpty!32884)) setNonEmpty!32884))

(assert (= setNonEmpty!32884 b!5195849))

(assert (= b!5195847 b!5195852))

(assert (= (and start!549794 ((_ is Cons!60447) zl!343)) b!5195847))

(assert (= (and start!549794 ((_ is Cons!60448) s!2326)) b!5195850))

(declare-fun m!6249992 () Bool)

(assert (=> b!5195839 m!6249992))

(declare-fun m!6249994 () Bool)

(assert (=> b!5195853 m!6249994))

(declare-fun m!6249996 () Bool)

(assert (=> b!5195853 m!6249996))

(declare-fun m!6249998 () Bool)

(assert (=> b!5195853 m!6249998))

(declare-fun m!6250000 () Bool)

(assert (=> b!5195853 m!6250000))

(declare-fun m!6250002 () Bool)

(assert (=> b!5195853 m!6250002))

(assert (=> b!5195853 m!6250000))

(assert (=> b!5195853 m!6249996))

(declare-fun m!6250004 () Bool)

(assert (=> b!5195853 m!6250004))

(declare-fun m!6250006 () Bool)

(assert (=> start!549794 m!6250006))

(declare-fun m!6250008 () Bool)

(assert (=> b!5195843 m!6250008))

(assert (=> b!5195843 m!6250008))

(declare-fun m!6250010 () Bool)

(assert (=> b!5195843 m!6250010))

(declare-fun m!6250012 () Bool)

(assert (=> b!5195851 m!6250012))

(declare-fun m!6250014 () Bool)

(assert (=> b!5195835 m!6250014))

(declare-fun m!6250016 () Bool)

(assert (=> b!5195842 m!6250016))

(declare-fun m!6250018 () Bool)

(assert (=> setNonEmpty!32884 m!6250018))

(declare-fun m!6250020 () Bool)

(assert (=> b!5195844 m!6250020))

(declare-fun m!6250022 () Bool)

(assert (=> b!5195844 m!6250022))

(declare-fun m!6250024 () Bool)

(assert (=> b!5195847 m!6250024))

(declare-fun m!6250026 () Bool)

(assert (=> b!5195845 m!6250026))

(declare-fun m!6250028 () Bool)

(assert (=> b!5195845 m!6250028))

(declare-fun m!6250030 () Bool)

(assert (=> b!5195845 m!6250030))

(declare-fun m!6250032 () Bool)

(assert (=> b!5195840 m!6250032))

(check-sat (not b!5195850) (not setNonEmpty!32884) (not b!5195849) (not b!5195848) (not b!5195840) tp_is_empty!38767 (not b!5195853) (not b!5195835) (not b!5195844) (not b!5195851) (not b!5195842) (not start!549794) (not b!5195839) (not b!5195843) (not b!5195841) (not b!5195845) (not b!5195838) (not b!5195852) (not b!5195847))
(check-sat)
