; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!699396 () Bool)

(assert start!699396)

(declare-fun b!7185709 () Bool)

(assert (=> b!7185709 true))

(declare-fun b!7185704 () Bool)

(declare-fun e!4315278 () Bool)

(declare-fun e!4315271 () Bool)

(assert (=> b!7185704 (= e!4315278 (not e!4315271))))

(declare-fun res!2926206 () Bool)

(assert (=> b!7185704 (=> res!2926206 e!4315271)))

(declare-datatypes ((C!36976 0))(
  ( (C!36977 (val!28436 Int)) )
))
(declare-datatypes ((List!69783 0))(
  ( (Nil!69659) (Cons!69659 (h!76107 C!36976) (t!383806 List!69783)) )
))
(declare-fun s!7967 () List!69783)

(declare-fun isEmpty!40213 (List!69783) Bool)

(assert (=> b!7185704 (= res!2926206 (isEmpty!40213 s!7967))))

(declare-datatypes ((Regex!18351 0))(
  ( (ElementMatch!18351 (c!1337796 C!36976)) (Concat!27196 (regOne!37214 Regex!18351) (regTwo!37214 Regex!18351)) (EmptyExpr!18351) (Star!18351 (reg!18680 Regex!18351)) (EmptyLang!18351) (Union!18351 (regOne!37215 Regex!18351) (regTwo!37215 Regex!18351)) )
))
(declare-datatypes ((List!69784 0))(
  ( (Nil!69660) (Cons!69660 (h!76108 Regex!18351) (t!383807 List!69784)) )
))
(declare-datatypes ((Context!14606 0))(
  ( (Context!14607 (exprs!7803 List!69784)) )
))
(declare-fun lt!2570904 () Context!14606)

(declare-fun nullableContext!200 (Context!14606) Bool)

(assert (=> b!7185704 (nullableContext!200 lt!2570904)))

(assert (=> b!7185704 (= lt!2570904 (Context!14607 (Cons!69660 EmptyExpr!18351 Nil!69660)))))

(declare-fun b!7185705 () Bool)

(declare-fun e!4315273 () Bool)

(declare-fun tp!1995395 () Bool)

(assert (=> b!7185705 (= e!4315273 tp!1995395)))

(declare-fun b!7185706 () Bool)

(declare-fun e!4315277 () Bool)

(declare-fun tp!1995394 () Bool)

(assert (=> b!7185706 (= e!4315277 tp!1995394)))

(declare-fun b!7185707 () Bool)

(declare-fun e!4315275 () Bool)

(assert (=> b!7185707 (= e!4315275 false)))

(declare-fun setIsEmpty!53163 () Bool)

(declare-fun setRes!53163 () Bool)

(assert (=> setIsEmpty!53163 setRes!53163))

(declare-fun res!2926204 () Bool)

(assert (=> start!699396 (=> (not res!2926204) (not e!4315278))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14606))

(declare-datatypes ((List!69785 0))(
  ( (Nil!69661) (Cons!69661 (h!76109 Context!14606) (t!383808 List!69785)) )
))
(declare-fun unfocusZipper!2611 (List!69785) Regex!18351)

(declare-fun toList!11294 ((InoxSet Context!14606)) List!69785)

(assert (=> start!699396 (= res!2926204 (= (unfocusZipper!2611 (toList!11294 z!3530)) EmptyExpr!18351))))

(assert (=> start!699396 e!4315278))

(declare-fun condSetEmpty!53163 () Bool)

(assert (=> start!699396 (= condSetEmpty!53163 (= z!3530 ((as const (Array Context!14606 Bool)) false)))))

(assert (=> start!699396 setRes!53163))

(declare-fun e!4315274 () Bool)

(assert (=> start!699396 e!4315274))

(declare-fun b!7185708 () Bool)

(declare-datatypes ((Unit!163351 0))(
  ( (Unit!163352) )
))
(declare-fun e!4315276 () Unit!163351)

(declare-fun Unit!163353 () Unit!163351)

(assert (=> b!7185708 (= e!4315276 Unit!163353)))

(declare-fun Unit!163354 () Unit!163351)

(assert (=> b!7185709 (= e!4315276 Unit!163354)))

(declare-fun empty!2975 () Context!14606)

(declare-fun inv!88899 (Context!14606) Bool)

(assert (=> b!7185709 (and (inv!88899 empty!2975) e!4315277)))

(assert (=> b!7185709 true))

(declare-fun lambda!437625 () Int)

(declare-fun lt!2570907 () (InoxSet Context!14606))

(declare-fun res!2926207 () Bool)

(declare-fun flatMapPost!64 ((InoxSet Context!14606) Int Context!14606) Context!14606)

(declare-fun head!14667 (List!69785) Context!14606)

(assert (=> b!7185709 (= res!2926207 (= (flatMapPost!64 z!3530 lambda!437625 (head!14667 (toList!11294 lt!2570907))) empty!2975))))

(assert (=> b!7185709 (=> (not res!2926207) (not e!4315275))))

(assert (=> b!7185709 e!4315275))

(declare-fun b!7185710 () Bool)

(declare-fun e!4315272 () Bool)

(assert (=> b!7185710 (= e!4315271 e!4315272)))

(declare-fun res!2926203 () Bool)

(assert (=> b!7185710 (=> res!2926203 e!4315272)))

(declare-fun lt!2570908 () C!36976)

(declare-fun derivationStepZipperUp!2327 (Context!14606 C!36976) (InoxSet Context!14606))

(assert (=> b!7185710 (= res!2926203 (not (= (derivationStepZipperUp!2327 lt!2570904 lt!2570908) ((as const (Array Context!14606 Bool)) false))))))

(declare-fun derivationStepZipper!3220 ((InoxSet Context!14606) C!36976) (InoxSet Context!14606))

(assert (=> b!7185710 (= lt!2570907 (derivationStepZipper!3220 z!3530 lt!2570908))))

(declare-fun head!14668 (List!69783) C!36976)

(assert (=> b!7185710 (= lt!2570908 (head!14668 s!7967))))

(declare-fun b!7185711 () Bool)

(declare-fun lt!2570905 () Bool)

(assert (=> b!7185711 (= e!4315272 lt!2570905)))

(declare-fun lt!2570906 () Unit!163351)

(assert (=> b!7185711 (= lt!2570906 e!4315276)))

(declare-fun c!1337795 () Bool)

(assert (=> b!7185711 (= c!1337795 (not lt!2570905))))

(assert (=> b!7185711 (= lt!2570905 (= lt!2570907 ((as const (Array Context!14606 Bool)) false)))))

(declare-fun b!7185712 () Bool)

(declare-fun tp_is_empty!46263 () Bool)

(declare-fun tp!1995392 () Bool)

(assert (=> b!7185712 (= e!4315274 (and tp_is_empty!46263 tp!1995392))))

(declare-fun b!7185713 () Bool)

(declare-fun res!2926205 () Bool)

(assert (=> b!7185713 (=> (not res!2926205) (not e!4315278))))

(declare-fun focus!426 (Regex!18351) (InoxSet Context!14606))

(assert (=> b!7185713 (= res!2926205 (= z!3530 (focus!426 EmptyExpr!18351)))))

(declare-fun setNonEmpty!53163 () Bool)

(declare-fun tp!1995393 () Bool)

(declare-fun setElem!53163 () Context!14606)

(assert (=> setNonEmpty!53163 (= setRes!53163 (and tp!1995393 (inv!88899 setElem!53163) e!4315273))))

(declare-fun setRest!53163 () (InoxSet Context!14606))

(assert (=> setNonEmpty!53163 (= z!3530 ((_ map or) (store ((as const (Array Context!14606 Bool)) false) setElem!53163 true) setRest!53163))))

(assert (= (and start!699396 res!2926204) b!7185713))

(assert (= (and b!7185713 res!2926205) b!7185704))

(assert (= (and b!7185704 (not res!2926206)) b!7185710))

(assert (= (and b!7185710 (not res!2926203)) b!7185711))

(assert (= (and b!7185711 c!1337795) b!7185709))

(assert (= (and b!7185711 (not c!1337795)) b!7185708))

(assert (= b!7185709 b!7185706))

(assert (= (and b!7185709 res!2926207) b!7185707))

(assert (= (and start!699396 condSetEmpty!53163) setIsEmpty!53163))

(assert (= (and start!699396 (not condSetEmpty!53163)) setNonEmpty!53163))

(assert (= setNonEmpty!53163 b!7185705))

(get-info :version)

(assert (= (and start!699396 ((_ is Cons!69659) s!7967)) b!7185712))

(declare-fun m!7882504 () Bool)

(assert (=> b!7185713 m!7882504))

(declare-fun m!7882506 () Bool)

(assert (=> b!7185710 m!7882506))

(declare-fun m!7882508 () Bool)

(assert (=> b!7185710 m!7882508))

(declare-fun m!7882510 () Bool)

(assert (=> b!7185710 m!7882510))

(declare-fun m!7882512 () Bool)

(assert (=> b!7185709 m!7882512))

(declare-fun m!7882514 () Bool)

(assert (=> b!7185709 m!7882514))

(assert (=> b!7185709 m!7882514))

(declare-fun m!7882516 () Bool)

(assert (=> b!7185709 m!7882516))

(assert (=> b!7185709 m!7882516))

(declare-fun m!7882518 () Bool)

(assert (=> b!7185709 m!7882518))

(declare-fun m!7882520 () Bool)

(assert (=> start!699396 m!7882520))

(assert (=> start!699396 m!7882520))

(declare-fun m!7882522 () Bool)

(assert (=> start!699396 m!7882522))

(declare-fun m!7882524 () Bool)

(assert (=> b!7185704 m!7882524))

(declare-fun m!7882526 () Bool)

(assert (=> b!7185704 m!7882526))

(declare-fun m!7882528 () Bool)

(assert (=> setNonEmpty!53163 m!7882528))

(check-sat (not setNonEmpty!53163) (not b!7185710) (not b!7185709) tp_is_empty!46263 (not b!7185712) (not b!7185713) (not b!7185706) (not b!7185704) (not b!7185705) (not start!699396))
(check-sat)
