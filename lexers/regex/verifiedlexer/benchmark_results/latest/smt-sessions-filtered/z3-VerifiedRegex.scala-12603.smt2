; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!698138 () Bool)

(assert start!698138)

(declare-fun b!7159268 () Bool)

(assert (=> b!7159268 true))

(declare-datatypes ((C!36904 0))(
  ( (C!36905 (val!28400 Int)) )
))
(declare-datatypes ((Regex!18315 0))(
  ( (ElementMatch!18315 (c!1334159 C!36904)) (Concat!27160 (regOne!37142 Regex!18315) (regTwo!37142 Regex!18315)) (EmptyExpr!18315) (Star!18315 (reg!18644 Regex!18315)) (EmptyLang!18315) (Union!18315 (regOne!37143 Regex!18315) (regTwo!37143 Regex!18315)) )
))
(declare-datatypes ((List!69685 0))(
  ( (Nil!69561) (Cons!69561 (h!76009 Regex!18315) (t!383702 List!69685)) )
))
(declare-datatypes ((Context!14534 0))(
  ( (Context!14535 (exprs!7767 List!69685)) )
))
(declare-fun setElem!52847 () Context!14534)

(declare-fun e!4301038 () Bool)

(declare-fun tp!1979884 () Bool)

(declare-fun setNonEmpty!52847 () Bool)

(declare-fun setRes!52847 () Bool)

(declare-fun inv!88809 (Context!14534) Bool)

(assert (=> setNonEmpty!52847 (= setRes!52847 (and tp!1979884 (inv!88809 setElem!52847) e!4301038))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3530 () (InoxSet Context!14534))

(declare-fun setRest!52847 () (InoxSet Context!14534))

(assert (=> setNonEmpty!52847 (= z!3530 ((_ map or) (store ((as const (Array Context!14534 Bool)) false) setElem!52847 true) setRest!52847))))

(declare-fun b!7159261 () Bool)

(declare-fun e!4301034 () Bool)

(assert (=> b!7159261 (= e!4301034 false)))

(declare-datatypes ((Unit!163343 0))(
  ( (Unit!163344) )
))
(declare-fun lt!2569859 () Unit!163343)

(declare-fun e!4301035 () Unit!163343)

(assert (=> b!7159261 (= lt!2569859 e!4301035)))

(declare-fun c!1334158 () Bool)

(declare-fun lt!2569862 () (InoxSet Context!14534))

(assert (=> b!7159261 (= c!1334158 (not (= lt!2569862 ((as const (Array Context!14534 Bool)) false))))))

(declare-fun b!7159262 () Bool)

(declare-fun tp!1979887 () Bool)

(assert (=> b!7159262 (= e!4301038 tp!1979887)))

(declare-fun setIsEmpty!52847 () Bool)

(assert (=> setIsEmpty!52847 setRes!52847))

(declare-fun b!7159263 () Bool)

(declare-fun e!4301037 () Bool)

(declare-fun tp_is_empty!46203 () Bool)

(declare-fun tp!1979886 () Bool)

(assert (=> b!7159263 (= e!4301037 (and tp_is_empty!46203 tp!1979886))))

(declare-fun b!7159264 () Bool)

(declare-fun res!2919092 () Bool)

(declare-fun e!4301040 () Bool)

(assert (=> b!7159264 (=> (not res!2919092) (not e!4301040))))

(declare-datatypes ((List!69686 0))(
  ( (Nil!69562) (Cons!69562 (h!76010 C!36904) (t!383703 List!69686)) )
))
(declare-fun s!7967 () List!69686)

(declare-fun isEmpty!40169 (List!69686) Bool)

(assert (=> b!7159264 (= res!2919092 (not (isEmpty!40169 s!7967)))))

(declare-fun res!2919091 () Bool)

(declare-fun e!4301033 () Bool)

(assert (=> start!698138 (=> (not res!2919091) (not e!4301033))))

(declare-datatypes ((List!69687 0))(
  ( (Nil!69563) (Cons!69563 (h!76011 Context!14534) (t!383704 List!69687)) )
))
(declare-fun unfocusZipper!2575 (List!69687) Regex!18315)

(declare-fun toList!11258 ((InoxSet Context!14534)) List!69687)

(assert (=> start!698138 (= res!2919091 (= (unfocusZipper!2575 (toList!11258 z!3530)) EmptyExpr!18315))))

(assert (=> start!698138 e!4301033))

(declare-fun condSetEmpty!52847 () Bool)

(assert (=> start!698138 (= condSetEmpty!52847 (= z!3530 ((as const (Array Context!14534 Bool)) false)))))

(assert (=> start!698138 setRes!52847))

(assert (=> start!698138 e!4301037))

(declare-fun b!7159265 () Bool)

(declare-fun Unit!163345 () Unit!163343)

(assert (=> b!7159265 (= e!4301035 Unit!163345)))

(declare-fun b!7159266 () Bool)

(assert (=> b!7159266 (= e!4301040 e!4301034)))

(declare-fun res!2919090 () Bool)

(assert (=> b!7159266 (=> (not res!2919090) (not e!4301034))))

(declare-fun lt!2569860 () Context!14534)

(declare-fun lt!2569861 () C!36904)

(declare-fun derivationStepZipperUp!2303 (Context!14534 C!36904) (InoxSet Context!14534))

(assert (=> b!7159266 (= res!2919090 (= (derivationStepZipperUp!2303 lt!2569860 lt!2569861) ((as const (Array Context!14534 Bool)) false)))))

(declare-fun derivationStepZipper!3198 ((InoxSet Context!14534) C!36904) (InoxSet Context!14534))

(assert (=> b!7159266 (= lt!2569862 (derivationStepZipper!3198 z!3530 lt!2569861))))

(declare-fun head!14604 (List!69686) C!36904)

(assert (=> b!7159266 (= lt!2569861 (head!14604 s!7967))))

(declare-fun b!7159267 () Bool)

(declare-fun e!4301039 () Bool)

(assert (=> b!7159267 (= e!4301039 false)))

(declare-fun Unit!163346 () Unit!163343)

(assert (=> b!7159268 (= e!4301035 Unit!163346)))

(declare-fun empty!2927 () Context!14534)

(declare-fun e!4301036 () Bool)

(assert (=> b!7159268 (and (inv!88809 empty!2927) e!4301036)))

(assert (=> b!7159268 true))

(declare-fun lambda!436777 () Int)

(declare-fun res!2919095 () Bool)

(declare-fun flatMapPost!52 ((InoxSet Context!14534) Int Context!14534) Context!14534)

(declare-fun head!14605 (List!69687) Context!14534)

(assert (=> b!7159268 (= res!2919095 (= (flatMapPost!52 z!3530 lambda!436777 (head!14605 (toList!11258 lt!2569862))) empty!2927))))

(assert (=> b!7159268 (=> (not res!2919095) (not e!4301039))))

(assert (=> b!7159268 e!4301039))

(declare-fun b!7159269 () Bool)

(assert (=> b!7159269 (= e!4301033 e!4301040)))

(declare-fun res!2919094 () Bool)

(assert (=> b!7159269 (=> (not res!2919094) (not e!4301040))))

(assert (=> b!7159269 (= res!2919094 (= z!3530 (store ((as const (Array Context!14534 Bool)) false) lt!2569860 true)))))

(assert (=> b!7159269 (= lt!2569860 (Context!14535 Nil!69561))))

(declare-fun b!7159270 () Bool)

(declare-fun res!2919093 () Bool)

(assert (=> b!7159270 (=> (not res!2919093) (not e!4301033))))

(declare-fun focus!390 (Regex!18315) (InoxSet Context!14534))

(assert (=> b!7159270 (= res!2919093 (not (= z!3530 (focus!390 EmptyExpr!18315))))))

(declare-fun b!7159271 () Bool)

(declare-fun tp!1979885 () Bool)

(assert (=> b!7159271 (= e!4301036 tp!1979885)))

(assert (= (and start!698138 res!2919091) b!7159270))

(assert (= (and b!7159270 res!2919093) b!7159269))

(assert (= (and b!7159269 res!2919094) b!7159264))

(assert (= (and b!7159264 res!2919092) b!7159266))

(assert (= (and b!7159266 res!2919090) b!7159261))

(assert (= (and b!7159261 c!1334158) b!7159268))

(assert (= (and b!7159261 (not c!1334158)) b!7159265))

(assert (= b!7159268 b!7159271))

(assert (= (and b!7159268 res!2919095) b!7159267))

(assert (= (and start!698138 condSetEmpty!52847) setIsEmpty!52847))

(assert (= (and start!698138 (not condSetEmpty!52847)) setNonEmpty!52847))

(assert (= setNonEmpty!52847 b!7159262))

(get-info :version)

(assert (= (and start!698138 ((_ is Cons!69562) s!7967)) b!7159263))

(declare-fun m!7865384 () Bool)

(assert (=> b!7159269 m!7865384))

(declare-fun m!7865386 () Bool)

(assert (=> setNonEmpty!52847 m!7865386))

(declare-fun m!7865388 () Bool)

(assert (=> b!7159264 m!7865388))

(declare-fun m!7865390 () Bool)

(assert (=> start!698138 m!7865390))

(assert (=> start!698138 m!7865390))

(declare-fun m!7865392 () Bool)

(assert (=> start!698138 m!7865392))

(declare-fun m!7865394 () Bool)

(assert (=> b!7159266 m!7865394))

(declare-fun m!7865396 () Bool)

(assert (=> b!7159266 m!7865396))

(declare-fun m!7865398 () Bool)

(assert (=> b!7159266 m!7865398))

(declare-fun m!7865400 () Bool)

(assert (=> b!7159270 m!7865400))

(declare-fun m!7865402 () Bool)

(assert (=> b!7159268 m!7865402))

(declare-fun m!7865404 () Bool)

(assert (=> b!7159268 m!7865404))

(assert (=> b!7159268 m!7865404))

(declare-fun m!7865406 () Bool)

(assert (=> b!7159268 m!7865406))

(assert (=> b!7159268 m!7865406))

(declare-fun m!7865408 () Bool)

(assert (=> b!7159268 m!7865408))

(check-sat (not b!7159262) (not b!7159271) (not b!7159266) (not b!7159264) (not b!7159270) tp_is_empty!46203 (not start!698138) (not b!7159268) (not setNonEmpty!52847) (not b!7159263))
(check-sat)
