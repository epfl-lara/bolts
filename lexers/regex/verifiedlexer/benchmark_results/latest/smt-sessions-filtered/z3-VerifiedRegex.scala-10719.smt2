; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!549014 () Bool)

(assert start!549014)

(declare-fun tp!1454160 () Bool)

(declare-fun b!5183843 () Bool)

(declare-datatypes ((C!29640 0))(
  ( (C!29641 (val!24522 Int)) )
))
(declare-datatypes ((Regex!14685 0))(
  ( (ElementMatch!14685 (c!893470 C!29640)) (Concat!23530 (regOne!29882 Regex!14685) (regTwo!29882 Regex!14685)) (EmptyExpr!14685) (Star!14685 (reg!15014 Regex!14685)) (EmptyLang!14685) (Union!14685 (regOne!29883 Regex!14685) (regTwo!29883 Regex!14685)) )
))
(declare-datatypes ((List!60354 0))(
  ( (Nil!60230) (Cons!60230 (h!66678 Regex!14685) (t!373507 List!60354)) )
))
(declare-datatypes ((Context!8138 0))(
  ( (Context!8139 (exprs!4569 List!60354)) )
))
(declare-datatypes ((List!60355 0))(
  ( (Nil!60231) (Cons!60231 (h!66679 Context!8138) (t!373508 List!60355)) )
))
(declare-fun zl!343 () List!60355)

(declare-fun e!3229652 () Bool)

(declare-fun e!3229659 () Bool)

(declare-fun inv!79959 (Context!8138) Bool)

(assert (=> b!5183843 (= e!3229659 (and (inv!79959 (h!66679 zl!343)) e!3229652 tp!1454160))))

(declare-fun b!5183844 () Bool)

(declare-fun e!3229653 () Bool)

(declare-fun tp!1454158 () Bool)

(declare-fun tp!1454161 () Bool)

(assert (=> b!5183844 (= e!3229653 (and tp!1454158 tp!1454161))))

(declare-fun b!5183845 () Bool)

(declare-fun res!2201952 () Bool)

(declare-fun e!3229656 () Bool)

(assert (=> b!5183845 (=> res!2201952 e!3229656)))

(declare-fun r!7292 () Regex!14685)

(get-info :version)

(assert (=> b!5183845 (= res!2201952 (not ((_ is EmptyExpr!14685) r!7292)))))

(declare-fun b!5183846 () Bool)

(declare-fun res!2201948 () Bool)

(assert (=> b!5183846 (=> res!2201948 e!3229656)))

(declare-fun isEmpty!32236 (List!60355) Bool)

(assert (=> b!5183846 (= res!2201948 (not (isEmpty!32236 (t!373508 zl!343))))))

(declare-fun b!5183847 () Bool)

(declare-fun res!2201950 () Bool)

(assert (=> b!5183847 (=> res!2201950 e!3229656)))

(declare-fun generalisedUnion!614 (List!60354) Regex!14685)

(declare-fun unfocusZipperList!127 (List!60355) List!60354)

(assert (=> b!5183847 (= res!2201950 (not (= r!7292 (generalisedUnion!614 (unfocusZipperList!127 zl!343)))))))

(declare-fun b!5183848 () Bool)

(declare-fun res!2201945 () Bool)

(assert (=> b!5183848 (=> res!2201945 e!3229656)))

(assert (=> b!5183848 (= res!2201945 (not ((_ is Cons!60230) (exprs!4569 (h!66679 zl!343)))))))

(declare-fun b!5183849 () Bool)

(declare-fun res!2201951 () Bool)

(declare-fun e!3229654 () Bool)

(assert (=> b!5183849 (=> (not res!2201951) (not e!3229654))))

(declare-fun unfocusZipper!427 (List!60355) Regex!14685)

(assert (=> b!5183849 (= res!2201951 (= r!7292 (unfocusZipper!427 zl!343)))))

(declare-fun b!5183850 () Bool)

(assert (=> b!5183850 (= e!3229656 true)))

(declare-fun lt!2136192 () Regex!14685)

(declare-fun lt!2136193 () List!60355)

(assert (=> b!5183850 (= lt!2136192 (unfocusZipper!427 lt!2136193))))

(declare-fun b!5183851 () Bool)

(assert (=> b!5183851 (= e!3229654 (not e!3229656))))

(declare-fun res!2201944 () Bool)

(assert (=> b!5183851 (=> res!2201944 e!3229656)))

(assert (=> b!5183851 (= res!2201944 (not ((_ is Cons!60231) zl!343)))))

(declare-datatypes ((List!60356 0))(
  ( (Nil!60232) (Cons!60232 (h!66680 C!29640) (t!373509 List!60356)) )
))
(declare-fun s!2326 () List!60356)

(declare-fun matchR!6870 (Regex!14685 List!60356) Bool)

(declare-fun matchRSpec!1788 (Regex!14685 List!60356) Bool)

(assert (=> b!5183851 (= (matchR!6870 r!7292 s!2326) (matchRSpec!1788 r!7292 s!2326))))

(declare-datatypes ((Unit!152204 0))(
  ( (Unit!152205) )
))
(declare-fun lt!2136191 () Unit!152204)

(declare-fun mainMatchTheorem!1788 (Regex!14685 List!60356) Unit!152204)

(assert (=> b!5183851 (= lt!2136191 (mainMatchTheorem!1788 r!7292 s!2326))))

(declare-fun b!5183852 () Bool)

(declare-fun e!3229655 () Bool)

(declare-fun tp_is_empty!38623 () Bool)

(declare-fun tp!1454163 () Bool)

(assert (=> b!5183852 (= e!3229655 (and tp_is_empty!38623 tp!1454163))))

(declare-fun b!5183853 () Bool)

(declare-fun tp!1454157 () Bool)

(assert (=> b!5183853 (= e!3229652 tp!1454157)))

(declare-fun b!5183854 () Bool)

(declare-fun res!2201946 () Bool)

(assert (=> b!5183854 (=> res!2201946 e!3229656)))

(declare-fun generalisedConcat!354 (List!60354) Regex!14685)

(assert (=> b!5183854 (= res!2201946 (not (= r!7292 (generalisedConcat!354 (exprs!4569 (h!66679 zl!343))))))))

(declare-fun setIsEmpty!32602 () Bool)

(declare-fun setRes!32602 () Bool)

(assert (=> setIsEmpty!32602 setRes!32602))

(declare-fun setElem!32602 () Context!8138)

(declare-fun e!3229657 () Bool)

(declare-fun setNonEmpty!32602 () Bool)

(declare-fun tp!1454159 () Bool)

(assert (=> setNonEmpty!32602 (= setRes!32602 (and tp!1454159 (inv!79959 setElem!32602) e!3229657))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!8138))

(declare-fun setRest!32602 () (InoxSet Context!8138))

(assert (=> setNonEmpty!32602 (= z!1189 ((_ map or) (store ((as const (Array Context!8138 Bool)) false) setElem!32602 true) setRest!32602))))

(declare-fun b!5183855 () Bool)

(declare-fun tp!1454156 () Bool)

(assert (=> b!5183855 (= e!3229657 tp!1454156)))

(declare-fun b!5183856 () Bool)

(assert (=> b!5183856 (= e!3229653 tp_is_empty!38623)))

(declare-fun res!2201949 () Bool)

(declare-fun e!3229658 () Bool)

(assert (=> start!549014 (=> (not res!2201949) (not e!3229658))))

(declare-fun validRegex!6421 (Regex!14685) Bool)

(assert (=> start!549014 (= res!2201949 (validRegex!6421 r!7292))))

(assert (=> start!549014 e!3229658))

(assert (=> start!549014 e!3229653))

(assert (=> start!549014 e!3229655))

(declare-fun condSetEmpty!32602 () Bool)

(assert (=> start!549014 (= condSetEmpty!32602 (= z!1189 ((as const (Array Context!8138 Bool)) false)))))

(assert (=> start!549014 setRes!32602))

(assert (=> start!549014 e!3229659))

(declare-fun b!5183857 () Bool)

(declare-fun tp!1454165 () Bool)

(assert (=> b!5183857 (= e!3229653 tp!1454165)))

(declare-fun b!5183858 () Bool)

(assert (=> b!5183858 (= e!3229658 e!3229654)))

(declare-fun res!2201947 () Bool)

(assert (=> b!5183858 (=> (not res!2201947) (not e!3229654))))

(assert (=> b!5183858 (= res!2201947 (= lt!2136193 zl!343))))

(declare-fun toList!8469 ((InoxSet Context!8138)) List!60355)

(assert (=> b!5183858 (= lt!2136193 (toList!8469 z!1189))))

(declare-fun b!5183859 () Bool)

(declare-fun tp!1454164 () Bool)

(declare-fun tp!1454162 () Bool)

(assert (=> b!5183859 (= e!3229653 (and tp!1454164 tp!1454162))))

(assert (= (and start!549014 res!2201949) b!5183858))

(assert (= (and b!5183858 res!2201947) b!5183849))

(assert (= (and b!5183849 res!2201951) b!5183851))

(assert (= (and b!5183851 (not res!2201944)) b!5183846))

(assert (= (and b!5183846 (not res!2201948)) b!5183854))

(assert (= (and b!5183854 (not res!2201946)) b!5183848))

(assert (= (and b!5183848 (not res!2201945)) b!5183847))

(assert (= (and b!5183847 (not res!2201950)) b!5183845))

(assert (= (and b!5183845 (not res!2201952)) b!5183850))

(assert (= (and start!549014 ((_ is ElementMatch!14685) r!7292)) b!5183856))

(assert (= (and start!549014 ((_ is Concat!23530) r!7292)) b!5183844))

(assert (= (and start!549014 ((_ is Star!14685) r!7292)) b!5183857))

(assert (= (and start!549014 ((_ is Union!14685) r!7292)) b!5183859))

(assert (= (and start!549014 ((_ is Cons!60232) s!2326)) b!5183852))

(assert (= (and start!549014 condSetEmpty!32602) setIsEmpty!32602))

(assert (= (and start!549014 (not condSetEmpty!32602)) setNonEmpty!32602))

(assert (= setNonEmpty!32602 b!5183855))

(assert (= b!5183843 b!5183853))

(assert (= (and start!549014 ((_ is Cons!60231) zl!343)) b!5183843))

(declare-fun m!6243304 () Bool)

(assert (=> b!5183858 m!6243304))

(declare-fun m!6243306 () Bool)

(assert (=> b!5183846 m!6243306))

(declare-fun m!6243308 () Bool)

(assert (=> b!5183854 m!6243308))

(declare-fun m!6243310 () Bool)

(assert (=> b!5183849 m!6243310))

(declare-fun m!6243312 () Bool)

(assert (=> setNonEmpty!32602 m!6243312))

(declare-fun m!6243314 () Bool)

(assert (=> b!5183847 m!6243314))

(assert (=> b!5183847 m!6243314))

(declare-fun m!6243316 () Bool)

(assert (=> b!5183847 m!6243316))

(declare-fun m!6243318 () Bool)

(assert (=> b!5183851 m!6243318))

(declare-fun m!6243320 () Bool)

(assert (=> b!5183851 m!6243320))

(declare-fun m!6243322 () Bool)

(assert (=> b!5183851 m!6243322))

(declare-fun m!6243324 () Bool)

(assert (=> b!5183843 m!6243324))

(declare-fun m!6243326 () Bool)

(assert (=> b!5183850 m!6243326))

(declare-fun m!6243328 () Bool)

(assert (=> start!549014 m!6243328))

(check-sat (not setNonEmpty!32602) (not b!5183852) tp_is_empty!38623 (not b!5183843) (not b!5183844) (not b!5183850) (not start!549014) (not b!5183847) (not b!5183858) (not b!5183855) (not b!5183857) (not b!5183853) (not b!5183854) (not b!5183859) (not b!5183846) (not b!5183849) (not b!5183851))
(check-sat)
