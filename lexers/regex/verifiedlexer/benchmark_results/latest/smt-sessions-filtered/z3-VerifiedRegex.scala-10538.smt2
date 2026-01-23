; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543028 () Bool)

(assert start!543028)

(declare-fun b!5132993 () Bool)

(assert (=> b!5132993 true))

(declare-fun bs!1198969 () Bool)

(declare-fun b!5132990 () Bool)

(declare-fun b!5132995 () Bool)

(assert (= bs!1198969 (and b!5132990 b!5132995)))

(declare-fun lambda!255204 () Int)

(declare-fun lambda!255203 () Int)

(assert (=> bs!1198969 (not (= lambda!255204 lambda!255203))))

(declare-fun b!5132986 () Bool)

(declare-fun res!2186261 () Bool)

(declare-fun e!3201527 () Bool)

(assert (=> b!5132986 (=> (not res!2186261) (not e!3201527))))

(declare-fun lt!2118224 () Bool)

(assert (=> b!5132986 (= res!2186261 (not lt!2118224))))

(declare-fun b!5132987 () Bool)

(declare-fun e!3201529 () Bool)

(declare-fun tp!1431896 () Bool)

(assert (=> b!5132987 (= e!3201529 tp!1431896)))

(declare-fun b!5132988 () Bool)

(declare-fun res!2186266 () Bool)

(declare-fun e!3201530 () Bool)

(assert (=> b!5132988 (=> res!2186266 e!3201530)))

(declare-datatypes ((C!29000 0))(
  ( (C!29001 (val!24152 Int)) )
))
(declare-datatypes ((Regex!14367 0))(
  ( (ElementMatch!14367 (c!883366 C!29000)) (Concat!23212 (regOne!29246 Regex!14367) (regTwo!29246 Regex!14367)) (EmptyExpr!14367) (Star!14367 (reg!14696 Regex!14367)) (EmptyLang!14367) (Union!14367 (regOne!29247 Regex!14367) (regTwo!29247 Regex!14367)) )
))
(declare-datatypes ((List!59679 0))(
  ( (Nil!59555) (Cons!59555 (h!66003 Regex!14367) (t!372706 List!59679)) )
))
(declare-datatypes ((Context!7502 0))(
  ( (Context!7503 (exprs!4251 List!59679)) )
))
(declare-fun lt!2118225 () Context!7502)

(declare-fun lostCause!1309 (Context!7502) Bool)

(assert (=> b!5132988 (= res!2186266 (lostCause!1309 lt!2118225))))

(declare-fun b!5132989 () Bool)

(declare-fun e!3201528 () Bool)

(assert (=> b!5132989 (= e!3201528 e!3201530)))

(declare-fun res!2186265 () Bool)

(assert (=> b!5132989 (=> res!2186265 e!3201530)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2118223 () (InoxSet Context!7502))

(assert (=> b!5132989 (= res!2186265 (not (select lt!2118223 lt!2118225)))))

(declare-datatypes ((List!59680 0))(
  ( (Nil!59556) (Cons!59556 (h!66004 Context!7502) (t!372707 List!59680)) )
))
(declare-fun lt!2118221 () List!59680)

(declare-fun getWitness!821 (List!59680 Int) Context!7502)

(assert (=> b!5132989 (= lt!2118225 (getWitness!821 lt!2118221 lambda!255204))))

(assert (=> b!5132990 (= e!3201527 (not e!3201528))))

(declare-fun res!2186268 () Bool)

(assert (=> b!5132990 (=> res!2186268 e!3201528)))

(declare-fun exists!1696 ((InoxSet Context!7502) Int) Bool)

(assert (=> b!5132990 (= res!2186268 (not (exists!1696 lt!2118223 lambda!255204)))))

(declare-fun exists!1697 (List!59680 Int) Bool)

(assert (=> b!5132990 (exists!1697 lt!2118221 lambda!255204)))

(declare-datatypes ((Unit!150871 0))(
  ( (Unit!150872) )
))
(declare-fun lt!2118222 () Unit!150871)

(declare-fun lemmaNotForallThenExists!400 (List!59680 Int) Unit!150871)

(assert (=> b!5132990 (= lt!2118222 (lemmaNotForallThenExists!400 lt!2118221 lambda!255203))))

(declare-fun toList!8352 ((InoxSet Context!7502)) List!59680)

(assert (=> b!5132990 (= lt!2118221 (toList!8352 lt!2118223))))

(declare-fun b!5132991 () Bool)

(declare-fun res!2186262 () Bool)

(assert (=> b!5132991 (=> (not res!2186262) (not e!3201527))))

(declare-fun forall!13819 ((InoxSet Context!7502) Int) Bool)

(assert (=> b!5132991 (= res!2186262 (not (forall!13819 lt!2118223 lambda!255203)))))

(declare-fun setIsEmpty!31224 () Bool)

(declare-fun setRes!31224 () Bool)

(assert (=> setIsEmpty!31224 setRes!31224))

(declare-fun res!2186267 () Bool)

(declare-fun e!3201525 () Bool)

(assert (=> start!543028 (=> (not res!2186267) (not e!3201525))))

(declare-fun z!1054 () (InoxSet Context!7502))

(declare-fun lostCauseZipper!1211 ((InoxSet Context!7502)) Bool)

(assert (=> start!543028 (= res!2186267 (lostCauseZipper!1211 z!1054))))

(assert (=> start!543028 e!3201525))

(declare-fun condSetEmpty!31224 () Bool)

(assert (=> start!543028 (= condSetEmpty!31224 (= z!1054 ((as const (Array Context!7502 Bool)) false)))))

(assert (=> start!543028 setRes!31224))

(declare-fun tp_is_empty!37907 () Bool)

(assert (=> start!543028 tp_is_empty!37907))

(declare-fun b!5132992 () Bool)

(declare-fun lt!2118220 () (InoxSet Context!7502))

(assert (=> b!5132992 (= e!3201530 (select lt!2118220 lt!2118225))))

(declare-fun e!3201526 () Bool)

(assert (=> b!5132993 (= e!3201525 e!3201526)))

(declare-fun res!2186260 () Bool)

(assert (=> b!5132993 (=> (not res!2186260) (not e!3201526))))

(assert (=> b!5132993 (= res!2186260 (= lt!2118223 lt!2118220))))

(declare-fun lambda!255202 () Int)

(declare-fun flatMap!418 ((InoxSet Context!7502) Int) (InoxSet Context!7502))

(assert (=> b!5132993 (= lt!2118220 (flatMap!418 z!1054 lambda!255202))))

(declare-fun a!1233 () C!29000)

(declare-fun derivationStepZipper!922 ((InoxSet Context!7502) C!29000) (InoxSet Context!7502))

(assert (=> b!5132993 (= lt!2118223 (derivationStepZipper!922 z!1054 a!1233))))

(declare-fun b!5132994 () Bool)

(declare-fun res!2186263 () Bool)

(assert (=> b!5132994 (=> (not res!2186263) (not e!3201527))))

(assert (=> b!5132994 (= res!2186263 (forall!13819 z!1054 lambda!255203))))

(declare-fun tp!1431897 () Bool)

(declare-fun setNonEmpty!31224 () Bool)

(declare-fun setElem!31224 () Context!7502)

(declare-fun inv!79098 (Context!7502) Bool)

(assert (=> setNonEmpty!31224 (= setRes!31224 (and tp!1431897 (inv!79098 setElem!31224) e!3201529))))

(declare-fun setRest!31224 () (InoxSet Context!7502))

(assert (=> setNonEmpty!31224 (= z!1054 ((_ map or) (store ((as const (Array Context!7502 Bool)) false) setElem!31224 true) setRest!31224))))

(assert (=> b!5132995 (= e!3201526 e!3201527)))

(declare-fun res!2186264 () Bool)

(assert (=> b!5132995 (=> (not res!2186264) (not e!3201527))))

(assert (=> b!5132995 (= res!2186264 (= lt!2118224 (forall!13819 lt!2118223 lambda!255203)))))

(assert (=> b!5132995 (= lt!2118224 (lostCauseZipper!1211 lt!2118223))))

(assert (= (and start!543028 res!2186267) b!5132993))

(assert (= (and b!5132993 res!2186260) b!5132995))

(assert (= (and b!5132995 res!2186264) b!5132994))

(assert (= (and b!5132994 res!2186263) b!5132986))

(assert (= (and b!5132986 res!2186261) b!5132991))

(assert (= (and b!5132991 res!2186262) b!5132990))

(assert (= (and b!5132990 (not res!2186268)) b!5132989))

(assert (= (and b!5132989 (not res!2186265)) b!5132988))

(assert (= (and b!5132988 (not res!2186266)) b!5132992))

(assert (= (and start!543028 condSetEmpty!31224) setIsEmpty!31224))

(assert (= (and start!543028 (not condSetEmpty!31224)) setNonEmpty!31224))

(assert (= setNonEmpty!31224 b!5132987))

(declare-fun m!6198952 () Bool)

(assert (=> b!5132991 m!6198952))

(declare-fun m!6198954 () Bool)

(assert (=> b!5132989 m!6198954))

(declare-fun m!6198956 () Bool)

(assert (=> b!5132989 m!6198956))

(declare-fun m!6198958 () Bool)

(assert (=> b!5132988 m!6198958))

(declare-fun m!6198960 () Bool)

(assert (=> b!5132994 m!6198960))

(assert (=> b!5132995 m!6198952))

(declare-fun m!6198962 () Bool)

(assert (=> b!5132995 m!6198962))

(declare-fun m!6198964 () Bool)

(assert (=> start!543028 m!6198964))

(declare-fun m!6198966 () Bool)

(assert (=> b!5132992 m!6198966))

(declare-fun m!6198968 () Bool)

(assert (=> b!5132990 m!6198968))

(declare-fun m!6198970 () Bool)

(assert (=> b!5132990 m!6198970))

(declare-fun m!6198972 () Bool)

(assert (=> b!5132990 m!6198972))

(declare-fun m!6198974 () Bool)

(assert (=> b!5132990 m!6198974))

(declare-fun m!6198976 () Bool)

(assert (=> b!5132993 m!6198976))

(declare-fun m!6198978 () Bool)

(assert (=> b!5132993 m!6198978))

(declare-fun m!6198980 () Bool)

(assert (=> setNonEmpty!31224 m!6198980))

(check-sat (not start!543028) (not b!5132990) (not b!5132988) (not setNonEmpty!31224) (not b!5132989) (not b!5132987) (not b!5132993) (not b!5132991) (not b!5132995) tp_is_empty!37907 (not b!5132994))
(check-sat)
