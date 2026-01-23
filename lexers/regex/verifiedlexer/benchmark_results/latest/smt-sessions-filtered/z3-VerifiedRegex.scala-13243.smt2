; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720478 () Bool)

(assert start!720478)

(declare-fun b!7385488 () Bool)

(assert (=> b!7385488 true))

(declare-fun b!7385486 () Bool)

(declare-fun res!2978496 () Bool)

(declare-fun e!4420754 () Bool)

(assert (=> b!7385486 (=> (not res!2978496) (not e!4420754))))

(declare-datatypes ((C!38996 0))(
  ( (C!38997 (val!29872 Int)) )
))
(declare-datatypes ((Regex!19361 0))(
  ( (ElementMatch!19361 (c!1372761 C!38996)) (Concat!28206 (regOne!39234 Regex!19361) (regTwo!39234 Regex!19361)) (EmptyExpr!19361) (Star!19361 (reg!19690 Regex!19361)) (EmptyLang!19361) (Union!19361 (regOne!39235 Regex!19361) (regTwo!39235 Regex!19361)) )
))
(declare-datatypes ((List!71885 0))(
  ( (Nil!71761) (Cons!71761 (h!78209 Regex!19361) (t!386436 List!71885)) )
))
(declare-datatypes ((Context!16602 0))(
  ( (Context!16603 (exprs!8801 List!71885)) )
))
(declare-fun c!10532 () Context!16602)

(declare-fun a!2228 () C!38996)

(declare-fun head!15106 (List!71885) Regex!19361)

(assert (=> b!7385486 (= res!2978496 (= (head!15106 (exprs!8801 c!10532)) (ElementMatch!19361 a!2228)))))

(declare-fun b!7385487 () Bool)

(declare-fun res!2978494 () Bool)

(assert (=> b!7385487 (=> (not res!2978494) (not e!4420754))))

(declare-fun isEmpty!41001 (List!71885) Bool)

(assert (=> b!7385487 (= res!2978494 (not (isEmpty!41001 (exprs!8801 c!10532))))))

(declare-fun setNonEmpty!55878 () Bool)

(declare-fun setRes!55878 () Bool)

(declare-fun e!4420751 () Bool)

(declare-fun setElem!55878 () Context!16602)

(declare-fun tp!2101245 () Bool)

(declare-fun inv!91763 (Context!16602) Bool)

(assert (=> setNonEmpty!55878 (= setRes!55878 (and tp!2101245 (inv!91763 setElem!55878) e!4420751))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16602))

(declare-fun setRest!55878 () (InoxSet Context!16602))

(assert (=> setNonEmpty!55878 (= z!3451 ((_ map or) (store ((as const (Array Context!16602 Bool)) false) setElem!55878 true) setRest!55878))))

(declare-datatypes ((Unit!165645 0))(
  ( (Unit!165646) )
))
(declare-fun e!4420753 () Unit!165645)

(declare-fun Unit!165647 () Unit!165645)

(assert (=> b!7385488 (= e!4420753 Unit!165647)))

(declare-fun empty!3447 () Context!16602)

(declare-fun e!4420748 () Bool)

(assert (=> b!7385488 (and (inv!91763 empty!3447) e!4420748)))

(assert (=> b!7385488 true))

(declare-fun lt!2617682 () (InoxSet Context!16602))

(declare-fun res!2978491 () Bool)

(declare-fun lambda!458896 () Int)

(declare-fun flatMapPost!182 ((InoxSet Context!16602) Int Context!16602) Context!16602)

(declare-datatypes ((List!71886 0))(
  ( (Nil!71762) (Cons!71762 (h!78210 Context!16602) (t!386437 List!71886)) )
))
(declare-fun head!15107 (List!71886) Context!16602)

(declare-fun toList!11726 ((InoxSet Context!16602)) List!71886)

(assert (=> b!7385488 (= res!2978491 (= (flatMapPost!182 z!3451 lambda!458896 (head!15107 (toList!11726 lt!2617682))) empty!3447))))

(declare-fun e!4420752 () Bool)

(assert (=> b!7385488 (=> (not res!2978491) (not e!4420752))))

(assert (=> b!7385488 e!4420752))

(declare-fun b!7385489 () Bool)

(declare-fun res!2978492 () Bool)

(assert (=> b!7385489 (=> (not res!2978492) (not e!4420754))))

(declare-datatypes ((List!71887 0))(
  ( (Nil!71763) (Cons!71763 (h!78211 C!38996) (t!386438 List!71887)) )
))
(declare-fun s!7927 () List!71887)

(get-info :version)

(assert (=> b!7385489 (= res!2978492 (and (or (not ((_ is Cons!71763) s!7927)) (not (= (h!78211 s!7927) a!2228))) ((_ is Cons!71763) s!7927) (not (= (h!78211 s!7927) a!2228))))))

(declare-fun b!7385490 () Bool)

(declare-fun e!4420750 () Bool)

(declare-fun tp_is_empty!48985 () Bool)

(declare-fun tp!2101243 () Bool)

(assert (=> b!7385490 (= e!4420750 (and tp_is_empty!48985 tp!2101243))))

(declare-fun b!7385491 () Bool)

(declare-fun e!4420747 () Bool)

(assert (=> b!7385491 (= e!4420747 false)))

(declare-fun lt!2617683 () Unit!165645)

(assert (=> b!7385491 (= lt!2617683 e!4420753)))

(declare-fun c!1372760 () Bool)

(assert (=> b!7385491 (= c!1372760 (not (= lt!2617682 ((as const (Array Context!16602 Bool)) false))))))

(declare-fun b!7385492 () Bool)

(declare-fun tp!2101241 () Bool)

(assert (=> b!7385492 (= e!4420751 tp!2101241)))

(declare-fun b!7385493 () Bool)

(declare-fun res!2978493 () Bool)

(assert (=> b!7385493 (=> (not res!2978493) (not e!4420754))))

(declare-fun tail!14768 (List!71885) List!71885)

(assert (=> b!7385493 (= res!2978493 (isEmpty!41001 (tail!14768 (exprs!8801 c!10532))))))

(declare-fun setIsEmpty!55878 () Bool)

(assert (=> setIsEmpty!55878 setRes!55878))

(declare-fun b!7385494 () Bool)

(declare-fun Unit!165648 () Unit!165645)

(assert (=> b!7385494 (= e!4420753 Unit!165648)))

(declare-fun b!7385496 () Bool)

(declare-fun tp!2101242 () Bool)

(assert (=> b!7385496 (= e!4420748 tp!2101242)))

(declare-fun b!7385497 () Bool)

(declare-fun e!4420749 () Bool)

(declare-fun tp!2101244 () Bool)

(assert (=> b!7385497 (= e!4420749 tp!2101244)))

(declare-fun b!7385498 () Bool)

(assert (=> b!7385498 (= e!4420754 e!4420747)))

(declare-fun res!2978495 () Bool)

(assert (=> b!7385498 (=> (not res!2978495) (not e!4420747))))

(declare-fun derivationStepZipperUp!2767 (Context!16602 C!38996) (InoxSet Context!16602))

(assert (=> b!7385498 (= res!2978495 (= (derivationStepZipperUp!2767 c!10532 (h!78211 s!7927)) ((as const (Array Context!16602 Bool)) false)))))

(declare-fun derivationStepZipper!3647 ((InoxSet Context!16602) C!38996) (InoxSet Context!16602))

(assert (=> b!7385498 (= lt!2617682 (derivationStepZipper!3647 z!3451 (h!78211 s!7927)))))

(declare-fun res!2978490 () Bool)

(assert (=> start!720478 (=> (not res!2978490) (not e!4420754))))

(assert (=> start!720478 (= res!2978490 (= z!3451 (store ((as const (Array Context!16602 Bool)) false) c!10532 true)))))

(assert (=> start!720478 e!4420754))

(declare-fun condSetEmpty!55878 () Bool)

(assert (=> start!720478 (= condSetEmpty!55878 (= z!3451 ((as const (Array Context!16602 Bool)) false)))))

(assert (=> start!720478 setRes!55878))

(assert (=> start!720478 (and (inv!91763 c!10532) e!4420749)))

(assert (=> start!720478 tp_is_empty!48985))

(assert (=> start!720478 e!4420750))

(declare-fun b!7385495 () Bool)

(assert (=> b!7385495 (= e!4420752 false)))

(assert (= (and start!720478 res!2978490) b!7385487))

(assert (= (and b!7385487 res!2978494) b!7385486))

(assert (= (and b!7385486 res!2978496) b!7385493))

(assert (= (and b!7385493 res!2978493) b!7385489))

(assert (= (and b!7385489 res!2978492) b!7385498))

(assert (= (and b!7385498 res!2978495) b!7385491))

(assert (= (and b!7385491 c!1372760) b!7385488))

(assert (= (and b!7385491 (not c!1372760)) b!7385494))

(assert (= b!7385488 b!7385496))

(assert (= (and b!7385488 res!2978491) b!7385495))

(assert (= (and start!720478 condSetEmpty!55878) setIsEmpty!55878))

(assert (= (and start!720478 (not condSetEmpty!55878)) setNonEmpty!55878))

(assert (= setNonEmpty!55878 b!7385492))

(assert (= start!720478 b!7385497))

(assert (= (and start!720478 ((_ is Cons!71763) s!7927)) b!7385490))

(declare-fun m!8033952 () Bool)

(assert (=> start!720478 m!8033952))

(declare-fun m!8033954 () Bool)

(assert (=> start!720478 m!8033954))

(declare-fun m!8033956 () Bool)

(assert (=> setNonEmpty!55878 m!8033956))

(declare-fun m!8033958 () Bool)

(assert (=> b!7385486 m!8033958))

(declare-fun m!8033960 () Bool)

(assert (=> b!7385488 m!8033960))

(declare-fun m!8033962 () Bool)

(assert (=> b!7385488 m!8033962))

(assert (=> b!7385488 m!8033962))

(declare-fun m!8033964 () Bool)

(assert (=> b!7385488 m!8033964))

(assert (=> b!7385488 m!8033964))

(declare-fun m!8033966 () Bool)

(assert (=> b!7385488 m!8033966))

(declare-fun m!8033968 () Bool)

(assert (=> b!7385487 m!8033968))

(declare-fun m!8033970 () Bool)

(assert (=> b!7385498 m!8033970))

(declare-fun m!8033972 () Bool)

(assert (=> b!7385498 m!8033972))

(declare-fun m!8033974 () Bool)

(assert (=> b!7385493 m!8033974))

(assert (=> b!7385493 m!8033974))

(declare-fun m!8033976 () Bool)

(assert (=> b!7385493 m!8033976))

(check-sat (not b!7385486) (not b!7385487) (not b!7385488) (not setNonEmpty!55878) (not b!7385497) (not b!7385493) (not b!7385498) (not b!7385496) (not b!7385490) (not start!720478) tp_is_empty!48985 (not b!7385492))
(check-sat)
