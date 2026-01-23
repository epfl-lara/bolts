; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694796 () Bool)

(assert start!694796)

(declare-fun b!7132025 () Bool)

(declare-fun e!4286095 () Bool)

(declare-fun tp!1965555 () Bool)

(assert (=> b!7132025 (= e!4286095 tp!1965555)))

(declare-datatypes ((C!36420 0))(
  ( (C!36421 (val!28136 Int)) )
))
(declare-datatypes ((Regex!18075 0))(
  ( (ElementMatch!18075 (c!1330277 C!36420)) (Concat!26920 (regOne!36662 Regex!18075) (regTwo!36662 Regex!18075)) (EmptyExpr!18075) (Star!18075 (reg!18404 Regex!18075)) (EmptyLang!18075) (Union!18075 (regOne!36663 Regex!18075) (regTwo!36663 Regex!18075)) )
))
(declare-datatypes ((List!69204 0))(
  ( (Nil!69080) (Cons!69080 (h!75528 Regex!18075) (t!383181 List!69204)) )
))
(declare-datatypes ((Context!14138 0))(
  ( (Context!14139 (exprs!7569 List!69204)) )
))
(declare-fun setElem!52115 () Context!14138)

(declare-fun setNonEmpty!52114 () Bool)

(declare-fun tp!1965553 () Bool)

(declare-fun setRes!52115 () Bool)

(declare-fun inv!88215 (Context!14138) Bool)

(assert (=> setNonEmpty!52114 (= setRes!52115 (and tp!1965553 (inv!88215 setElem!52115) e!4286095))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!538 () (InoxSet Context!14138))

(declare-fun setRest!52114 () (InoxSet Context!14138))

(assert (=> setNonEmpty!52114 (= z1!538 ((_ map or) (store ((as const (Array Context!14138 Bool)) false) setElem!52115 true) setRest!52114))))

(declare-fun b!7132026 () Bool)

(declare-fun e!4286098 () Bool)

(assert (=> b!7132026 (= e!4286098 false)))

(declare-fun lt!2564936 () Bool)

(declare-fun e!4286097 () Bool)

(assert (=> b!7132026 (= lt!2564936 e!4286097)))

(declare-fun res!2910056 () Bool)

(assert (=> b!7132026 (=> res!2910056 e!4286097)))

(declare-datatypes ((List!69205 0))(
  ( (Nil!69081) (Cons!69081 (h!75529 C!36420) (t!383182 List!69205)) )
))
(declare-fun s1!1678 () List!69205)

(declare-fun matchZipper!3331 ((InoxSet Context!14138) List!69205) Bool)

(assert (=> b!7132026 (= res!2910056 (not (matchZipper!3331 z1!538 s1!1678)))))

(declare-fun setIsEmpty!52115 () Bool)

(declare-fun setRes!52114 () Bool)

(assert (=> setIsEmpty!52115 setRes!52114))

(declare-fun b!7132027 () Bool)

(declare-fun e!4286100 () Bool)

(declare-fun tp_is_empty!45751 () Bool)

(declare-fun tp!1965554 () Bool)

(assert (=> b!7132027 (= e!4286100 (and tp_is_empty!45751 tp!1965554))))

(declare-fun b!7132028 () Bool)

(declare-fun e!4286101 () Bool)

(declare-fun tp!1965556 () Bool)

(assert (=> b!7132028 (= e!4286101 (and tp_is_empty!45751 tp!1965556))))

(declare-fun b!7132029 () Bool)

(declare-fun z2!457 () (InoxSet Context!14138))

(declare-fun s2!1615 () List!69205)

(assert (=> b!7132029 (= e!4286097 (not (matchZipper!3331 z2!457 s2!1615)))))

(declare-fun e!4286099 () Bool)

(declare-fun setNonEmpty!52115 () Bool)

(declare-fun tp!1965559 () Bool)

(declare-fun setElem!52114 () Context!14138)

(assert (=> setNonEmpty!52115 (= setRes!52114 (and tp!1965559 (inv!88215 setElem!52114) e!4286099))))

(declare-fun setRest!52115 () (InoxSet Context!14138))

(assert (=> setNonEmpty!52115 (= z2!457 ((_ map or) (store ((as const (Array Context!14138 Bool)) false) setElem!52114 true) setRest!52115))))

(declare-fun b!7132030 () Bool)

(declare-fun e!4286096 () Bool)

(declare-fun tp!1965557 () Bool)

(assert (=> b!7132030 (= e!4286096 (and tp_is_empty!45751 tp!1965557))))

(declare-fun b!7132031 () Bool)

(declare-fun tp!1965558 () Bool)

(assert (=> b!7132031 (= e!4286099 tp!1965558)))

(declare-fun setIsEmpty!52114 () Bool)

(assert (=> setIsEmpty!52114 setRes!52115))

(declare-fun res!2910057 () Bool)

(assert (=> start!694796 (=> (not res!2910057) (not e!4286098))))

(declare-fun s!7358 () List!69205)

(declare-fun ++!16213 (List!69205 List!69205) List!69205)

(assert (=> start!694796 (= res!2910057 (= (++!16213 s1!1678 s2!1615) s!7358))))

(assert (=> start!694796 e!4286098))

(declare-fun condSetEmpty!52114 () Bool)

(assert (=> start!694796 (= condSetEmpty!52114 (= z2!457 ((as const (Array Context!14138 Bool)) false)))))

(assert (=> start!694796 setRes!52114))

(assert (=> start!694796 e!4286101))

(declare-fun condSetEmpty!52115 () Bool)

(assert (=> start!694796 (= condSetEmpty!52115 (= z1!538 ((as const (Array Context!14138 Bool)) false)))))

(assert (=> start!694796 setRes!52115))

(assert (=> start!694796 e!4286096))

(assert (=> start!694796 e!4286100))

(assert (= (and start!694796 res!2910057) b!7132026))

(assert (= (and b!7132026 (not res!2910056)) b!7132029))

(assert (= (and start!694796 condSetEmpty!52114) setIsEmpty!52115))

(assert (= (and start!694796 (not condSetEmpty!52114)) setNonEmpty!52115))

(assert (= setNonEmpty!52115 b!7132031))

(get-info :version)

(assert (= (and start!694796 ((_ is Cons!69081) s2!1615)) b!7132028))

(assert (= (and start!694796 condSetEmpty!52115) setIsEmpty!52114))

(assert (= (and start!694796 (not condSetEmpty!52115)) setNonEmpty!52114))

(assert (= setNonEmpty!52114 b!7132025))

(assert (= (and start!694796 ((_ is Cons!69081) s1!1678)) b!7132030))

(assert (= (and start!694796 ((_ is Cons!69081) s!7358)) b!7132027))

(declare-fun m!7849394 () Bool)

(assert (=> b!7132029 m!7849394))

(declare-fun m!7849396 () Bool)

(assert (=> start!694796 m!7849396))

(declare-fun m!7849398 () Bool)

(assert (=> setNonEmpty!52114 m!7849398))

(declare-fun m!7849400 () Bool)

(assert (=> setNonEmpty!52115 m!7849400))

(declare-fun m!7849402 () Bool)

(assert (=> b!7132026 m!7849402))

(check-sat (not b!7132031) (not b!7132025) (not b!7132029) (not start!694796) (not setNonEmpty!52114) (not b!7132030) (not b!7132027) (not setNonEmpty!52115) (not b!7132028) (not b!7132026) tp_is_empty!45751)
(check-sat)
