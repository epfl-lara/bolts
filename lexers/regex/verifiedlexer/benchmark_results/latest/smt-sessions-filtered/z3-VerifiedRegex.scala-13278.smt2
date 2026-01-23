; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!722446 () Bool)

(assert start!722446)

(declare-fun b!7433809 () Bool)

(assert (=> b!7433809 true))

(declare-fun res!2985179 () Bool)

(declare-fun e!4439987 () Bool)

(assert (=> start!722446 (=> (not res!2985179) (not e!4439987))))

(declare-datatypes ((C!39136 0))(
  ( (C!39137 (val!29942 Int)) )
))
(declare-datatypes ((Regex!19431 0))(
  ( (ElementMatch!19431 (c!1376311 C!39136)) (Concat!28276 (regOne!39374 Regex!19431) (regTwo!39374 Regex!19431)) (EmptyExpr!19431) (Star!19431 (reg!19760 Regex!19431)) (EmptyLang!19431) (Union!19431 (regOne!39375 Regex!19431) (regTwo!39375 Regex!19431)) )
))
(declare-datatypes ((List!72073 0))(
  ( (Nil!71949) (Cons!71949 (h!78397 Regex!19431) (t!386634 List!72073)) )
))
(declare-datatypes ((Context!16742 0))(
  ( (Context!16743 (exprs!8871 List!72073)) )
))
(declare-fun lt!2619161 () Context!16742)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3488 () (InoxSet Context!16742))

(declare-datatypes ((List!72074 0))(
  ( (Nil!71950) (Cons!71950 (h!78398 C!39136) (t!386635 List!72074)) )
))
(declare-fun s!7945 () List!72074)

(get-info :version)

(assert (=> start!722446 (= res!2985179 (and (= z!3488 (store ((as const (Array Context!16742 Bool)) false) lt!2619161 true)) ((_ is Cons!71950) s!7945)))))

(assert (=> start!722446 (= lt!2619161 (Context!16743 Nil!71949))))

(assert (=> start!722446 e!4439987))

(declare-fun condSetEmpty!56437 () Bool)

(assert (=> start!722446 (= condSetEmpty!56437 (= z!3488 ((as const (Array Context!16742 Bool)) false)))))

(declare-fun setRes!56437 () Bool)

(assert (=> start!722446 setRes!56437))

(declare-fun e!4439984 () Bool)

(assert (=> start!722446 e!4439984))

(declare-fun setElem!56437 () Context!16742)

(declare-fun tp!2145260 () Bool)

(declare-fun setNonEmpty!56437 () Bool)

(declare-fun e!4439982 () Bool)

(declare-fun inv!91938 (Context!16742) Bool)

(assert (=> setNonEmpty!56437 (= setRes!56437 (and tp!2145260 (inv!91938 setElem!56437) e!4439982))))

(declare-fun setRest!56437 () (InoxSet Context!16742))

(assert (=> setNonEmpty!56437 (= z!3488 ((_ map or) (store ((as const (Array Context!16742 Bool)) false) setElem!56437 true) setRest!56437))))

(declare-fun b!7433804 () Bool)

(declare-fun e!4439985 () Bool)

(declare-fun tp!2145259 () Bool)

(assert (=> b!7433804 (= e!4439985 tp!2145259)))

(declare-fun b!7433805 () Bool)

(declare-fun e!4439986 () Bool)

(assert (=> b!7433805 (= e!4439987 e!4439986)))

(declare-fun res!2985178 () Bool)

(assert (=> b!7433805 (=> (not res!2985178) (not e!4439986))))

(declare-fun derivationStepZipperUp!2827 (Context!16742 C!39136) (InoxSet Context!16742))

(assert (=> b!7433805 (= res!2985178 (= (derivationStepZipperUp!2827 lt!2619161 (h!78398 s!7945)) ((as const (Array Context!16742 Bool)) false)))))

(declare-fun lt!2619160 () (InoxSet Context!16742))

(declare-fun derivationStepZipper!3699 ((InoxSet Context!16742) C!39136) (InoxSet Context!16742))

(assert (=> b!7433805 (= lt!2619160 (derivationStepZipper!3699 z!3488 (h!78398 s!7945)))))

(declare-fun b!7433806 () Bool)

(declare-fun tp!2145261 () Bool)

(assert (=> b!7433806 (= e!4439982 tp!2145261)))

(declare-fun b!7433807 () Bool)

(declare-fun e!4439983 () Bool)

(assert (=> b!7433807 (= e!4439983 false)))

(declare-fun b!7433808 () Bool)

(declare-fun tp_is_empty!49125 () Bool)

(declare-fun tp!2145262 () Bool)

(assert (=> b!7433808 (= e!4439984 (and tp_is_empty!49125 tp!2145262))))

(declare-datatypes ((Unit!165751 0))(
  ( (Unit!165752) )
))
(declare-fun e!4439981 () Unit!165751)

(declare-fun Unit!165753 () Unit!165751)

(assert (=> b!7433809 (= e!4439981 Unit!165753)))

(declare-fun empty!3631 () Context!16742)

(assert (=> b!7433809 (and (inv!91938 empty!3631) e!4439985)))

(assert (=> b!7433809 true))

(declare-fun lambda!460211 () Int)

(declare-fun res!2985180 () Bool)

(declare-fun flatMapPost!228 ((InoxSet Context!16742) Int Context!16742) Context!16742)

(declare-datatypes ((List!72075 0))(
  ( (Nil!71951) (Cons!71951 (h!78399 Context!16742) (t!386636 List!72075)) )
))
(declare-fun head!15247 (List!72075) Context!16742)

(declare-fun toList!11776 ((InoxSet Context!16742)) List!72075)

(assert (=> b!7433809 (= res!2985180 (= (flatMapPost!228 z!3488 lambda!460211 (head!15247 (toList!11776 lt!2619160))) empty!3631))))

(assert (=> b!7433809 (=> (not res!2985180) (not e!4439983))))

(assert (=> b!7433809 e!4439983))

(declare-fun b!7433810 () Bool)

(assert (=> b!7433810 (= e!4439986 (not true))))

(declare-fun lt!2619162 () Bool)

(assert (=> b!7433810 lt!2619162))

(declare-fun lt!2619163 () Unit!165751)

(assert (=> b!7433810 (= lt!2619163 e!4439981)))

(declare-fun c!1376310 () Bool)

(assert (=> b!7433810 (= c!1376310 (not lt!2619162))))

(assert (=> b!7433810 (= lt!2619162 (= lt!2619160 ((as const (Array Context!16742 Bool)) false)))))

(declare-fun b!7433811 () Bool)

(declare-fun Unit!165754 () Unit!165751)

(assert (=> b!7433811 (= e!4439981 Unit!165754)))

(declare-fun setIsEmpty!56437 () Bool)

(assert (=> setIsEmpty!56437 setRes!56437))

(assert (= (and start!722446 res!2985179) b!7433805))

(assert (= (and b!7433805 res!2985178) b!7433810))

(assert (= (and b!7433810 c!1376310) b!7433809))

(assert (= (and b!7433810 (not c!1376310)) b!7433811))

(assert (= b!7433809 b!7433804))

(assert (= (and b!7433809 res!2985180) b!7433807))

(assert (= (and start!722446 condSetEmpty!56437) setIsEmpty!56437))

(assert (= (and start!722446 (not condSetEmpty!56437)) setNonEmpty!56437))

(assert (= setNonEmpty!56437 b!7433806))

(assert (= (and start!722446 ((_ is Cons!71950) s!7945)) b!7433808))

(declare-fun m!8049888 () Bool)

(assert (=> start!722446 m!8049888))

(declare-fun m!8049890 () Bool)

(assert (=> setNonEmpty!56437 m!8049890))

(declare-fun m!8049892 () Bool)

(assert (=> b!7433805 m!8049892))

(declare-fun m!8049894 () Bool)

(assert (=> b!7433805 m!8049894))

(declare-fun m!8049896 () Bool)

(assert (=> b!7433809 m!8049896))

(declare-fun m!8049898 () Bool)

(assert (=> b!7433809 m!8049898))

(assert (=> b!7433809 m!8049898))

(declare-fun m!8049900 () Bool)

(assert (=> b!7433809 m!8049900))

(assert (=> b!7433809 m!8049900))

(declare-fun m!8049902 () Bool)

(assert (=> b!7433809 m!8049902))

(check-sat (not b!7433805) (not setNonEmpty!56437) tp_is_empty!49125 (not b!7433809) (not b!7433806) (not b!7433804) (not b!7433808))
(check-sat)
