; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720424 () Bool)

(assert start!720424)

(declare-fun b!7385096 () Bool)

(assert (=> b!7385096 true))

(declare-fun b!7385095 () Bool)

(assert (=> b!7385095 true))

(declare-fun bs!1921907 () Bool)

(declare-fun b!7385088 () Bool)

(assert (= bs!1921907 (and b!7385088 b!7385095)))

(declare-fun lambda!458853 () Int)

(declare-fun lambda!458852 () Int)

(assert (=> bs!1921907 (not (= lambda!458853 lambda!458852))))

(assert (=> b!7385088 true))

(assert (=> b!7385088 true))

(declare-fun b!7385087 () Bool)

(declare-fun res!2978326 () Bool)

(declare-fun e!4420523 () Bool)

(assert (=> b!7385087 (=> (not res!2978326) (not e!4420523))))

(declare-datatypes ((C!38984 0))(
  ( (C!38985 (val!29866 Int)) )
))
(declare-datatypes ((Regex!19355 0))(
  ( (ElementMatch!19355 (c!1372691 C!38984)) (Concat!28200 (regOne!39222 Regex!19355) (regTwo!39222 Regex!19355)) (EmptyExpr!19355) (Star!19355 (reg!19684 Regex!19355)) (EmptyLang!19355) (Union!19355 (regOne!39223 Regex!19355) (regTwo!39223 Regex!19355)) )
))
(declare-datatypes ((List!71870 0))(
  ( (Nil!71746) (Cons!71746 (h!78194 Regex!19355) (t!386421 List!71870)) )
))
(declare-datatypes ((Context!16590 0))(
  ( (Context!16591 (exprs!8795 List!71870)) )
))
(declare-fun c!10532 () Context!16590)

(declare-fun a!2228 () C!38984)

(declare-fun head!15096 (List!71870) Regex!19355)

(assert (=> b!7385087 (= res!2978326 (= (head!15096 (exprs!8795 c!10532)) (ElementMatch!19355 a!2228)))))

(declare-fun res!2978328 () Bool)

(declare-fun e!4420522 () Bool)

(assert (=> b!7385088 (=> res!2978328 e!4420522)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3451 () (InoxSet Context!16590))

(declare-fun exists!4721 ((InoxSet Context!16590) Int) Bool)

(assert (=> b!7385088 (= res!2978328 (not (exists!4721 z!3451 lambda!458853)))))

(declare-fun b!7385089 () Bool)

(declare-fun e!4420526 () Bool)

(declare-fun tp!2101089 () Bool)

(assert (=> b!7385089 (= e!4420526 tp!2101089)))

(declare-fun setIsEmpty!55853 () Bool)

(declare-fun setRes!55853 () Bool)

(assert (=> setIsEmpty!55853 setRes!55853))

(declare-fun b!7385090 () Bool)

(assert (=> b!7385090 (= e!4420522 (exists!4721 z!3451 lambda!458853))))

(declare-fun b!7385091 () Bool)

(declare-fun e!4420521 () Bool)

(declare-fun tp!2101090 () Bool)

(assert (=> b!7385091 (= e!4420521 tp!2101090)))

(declare-fun b!7385092 () Bool)

(declare-fun res!2978331 () Bool)

(assert (=> b!7385092 (=> (not res!2978331) (not e!4420523))))

(declare-datatypes ((List!71871 0))(
  ( (Nil!71747) (Cons!71747 (h!78195 C!38984) (t!386422 List!71871)) )
))
(declare-fun s!7927 () List!71871)

(get-info :version)

(assert (=> b!7385092 (= res!2978331 (and ((_ is Cons!71747) s!7927) (= (h!78195 s!7927) a!2228)))))

(declare-fun b!7385093 () Bool)

(declare-fun e!4420525 () Bool)

(declare-fun tp_is_empty!48973 () Bool)

(declare-fun tp!2101091 () Bool)

(assert (=> b!7385093 (= e!4420525 (and tp_is_empty!48973 tp!2101091))))

(declare-fun res!2978327 () Bool)

(assert (=> start!720424 (=> (not res!2978327) (not e!4420523))))

(assert (=> start!720424 (= res!2978327 (= z!3451 (store ((as const (Array Context!16590 Bool)) false) c!10532 true)))))

(assert (=> start!720424 e!4420523))

(declare-fun condSetEmpty!55853 () Bool)

(assert (=> start!720424 (= condSetEmpty!55853 (= z!3451 ((as const (Array Context!16590 Bool)) false)))))

(assert (=> start!720424 setRes!55853))

(declare-fun e!4420527 () Bool)

(declare-fun inv!91748 (Context!16590) Bool)

(assert (=> start!720424 (and (inv!91748 c!10532) e!4420527)))

(assert (=> start!720424 tp_is_empty!48973))

(assert (=> start!720424 e!4420525))

(declare-fun b!7385094 () Bool)

(declare-fun res!2978333 () Bool)

(assert (=> b!7385094 (=> (not res!2978333) (not e!4420523))))

(declare-fun isEmpty!40995 (List!71870) Bool)

(assert (=> b!7385094 (= res!2978333 (not (isEmpty!40995 (exprs!8795 c!10532))))))

(declare-fun res!2978329 () Bool)

(declare-fun e!4420528 () Bool)

(assert (=> b!7385095 (=> res!2978329 e!4420528)))

(declare-fun lt!2617604 () (InoxSet Context!16590))

(assert (=> b!7385095 (= res!2978329 (not (exists!4721 lt!2617604 lambda!458852)))))

(declare-fun e!4420524 () Bool)

(assert (=> b!7385096 (= e!4420524 (not e!4420528))))

(declare-fun res!2978330 () Bool)

(assert (=> b!7385096 (=> res!2978330 e!4420528)))

(declare-fun lt!2617601 () (InoxSet Context!16590))

(declare-fun lt!2617602 () Context!16590)

(assert (=> b!7385096 (= res!2978330 (or (not (select lt!2617604 lt!2617602)) (= lt!2617604 lt!2617601)))))

(declare-fun lt!2617600 () Context!16590)

(declare-fun lambda!458851 () Int)

(declare-fun flatMapPost!178 ((InoxSet Context!16590) Int Context!16590) Context!16590)

(assert (=> b!7385096 (= (flatMapPost!178 z!3451 lambda!458851 lt!2617602) lt!2617600)))

(declare-fun empty!3431 () Context!16590)

(assert (=> b!7385096 (= lt!2617600 empty!3431)))

(assert (=> b!7385096 true))

(assert (=> b!7385096 (and (inv!91748 empty!3431) e!4420526)))

(declare-fun b!7385097 () Bool)

(declare-fun tp!2101092 () Bool)

(assert (=> b!7385097 (= e!4420527 tp!2101092)))

(declare-fun b!7385098 () Bool)

(assert (=> b!7385098 (= e!4420528 e!4420522)))

(declare-fun res!2978325 () Bool)

(assert (=> b!7385098 (=> res!2978325 e!4420522)))

(declare-fun lt!2617603 () Context!16590)

(assert (=> b!7385098 (= res!2978325 (not (select lt!2617604 lt!2617603)))))

(assert (=> b!7385098 (= (flatMapPost!178 z!3451 lambda!458851 lt!2617603) lt!2617600)))

(declare-fun getWitness!2420 ((InoxSet Context!16590) Int) Context!16590)

(assert (=> b!7385098 (= lt!2617603 (getWitness!2420 lt!2617604 lambda!458852))))

(declare-fun b!7385099 () Bool)

(declare-fun res!2978332 () Bool)

(assert (=> b!7385099 (=> (not res!2978332) (not e!4420523))))

(declare-fun tail!14762 (List!71870) List!71870)

(assert (=> b!7385099 (= res!2978332 (isEmpty!40995 (tail!14762 (exprs!8795 c!10532))))))

(declare-fun b!7385100 () Bool)

(assert (=> b!7385100 (= e!4420523 e!4420524)))

(declare-fun res!2978334 () Bool)

(assert (=> b!7385100 (=> (not res!2978334) (not e!4420524))))

(declare-fun lt!2617605 () C!38984)

(declare-fun derivationStepZipperUp!2761 (Context!16590 C!38984) (InoxSet Context!16590))

(assert (=> b!7385100 (= res!2978334 (= (derivationStepZipperUp!2761 c!10532 lt!2617605) lt!2617601))))

(assert (=> b!7385100 (= lt!2617601 (store ((as const (Array Context!16590 Bool)) false) lt!2617602 true))))

(assert (=> b!7385100 (= lt!2617602 (Context!16591 Nil!71746))))

(declare-fun derivationStepZipper!3641 ((InoxSet Context!16590) C!38984) (InoxSet Context!16590))

(assert (=> b!7385100 (= lt!2617604 (derivationStepZipper!3641 z!3451 lt!2617605))))

(declare-fun head!15097 (List!71871) C!38984)

(assert (=> b!7385100 (= lt!2617605 (head!15097 s!7927))))

(declare-fun setElem!55853 () Context!16590)

(declare-fun tp!2101088 () Bool)

(declare-fun setNonEmpty!55853 () Bool)

(assert (=> setNonEmpty!55853 (= setRes!55853 (and tp!2101088 (inv!91748 setElem!55853) e!4420521))))

(declare-fun setRest!55853 () (InoxSet Context!16590))

(assert (=> setNonEmpty!55853 (= z!3451 ((_ map or) (store ((as const (Array Context!16590 Bool)) false) setElem!55853 true) setRest!55853))))

(assert (= (and start!720424 res!2978327) b!7385094))

(assert (= (and b!7385094 res!2978333) b!7385087))

(assert (= (and b!7385087 res!2978326) b!7385099))

(assert (= (and b!7385099 res!2978332) b!7385092))

(assert (= (and b!7385092 res!2978331) b!7385100))

(assert (= (and b!7385100 res!2978334) b!7385096))

(assert (= b!7385096 b!7385089))

(assert (= (and b!7385096 (not res!2978330)) b!7385095))

(assert (= (and b!7385095 (not res!2978329)) b!7385098))

(assert (= (and b!7385098 (not res!2978325)) b!7385088))

(assert (= (and b!7385088 (not res!2978328)) b!7385090))

(assert (= (and start!720424 condSetEmpty!55853) setIsEmpty!55853))

(assert (= (and start!720424 (not condSetEmpty!55853)) setNonEmpty!55853))

(assert (= setNonEmpty!55853 b!7385091))

(assert (= start!720424 b!7385097))

(assert (= (and start!720424 ((_ is Cons!71747) s!7927)) b!7385093))

(declare-fun m!8033690 () Bool)

(assert (=> b!7385096 m!8033690))

(declare-fun m!8033692 () Bool)

(assert (=> b!7385096 m!8033692))

(declare-fun m!8033694 () Bool)

(assert (=> b!7385096 m!8033694))

(declare-fun m!8033696 () Bool)

(assert (=> b!7385099 m!8033696))

(assert (=> b!7385099 m!8033696))

(declare-fun m!8033698 () Bool)

(assert (=> b!7385099 m!8033698))

(declare-fun m!8033700 () Bool)

(assert (=> b!7385088 m!8033700))

(declare-fun m!8033702 () Bool)

(assert (=> setNonEmpty!55853 m!8033702))

(declare-fun m!8033704 () Bool)

(assert (=> start!720424 m!8033704))

(declare-fun m!8033706 () Bool)

(assert (=> start!720424 m!8033706))

(assert (=> b!7385090 m!8033700))

(declare-fun m!8033708 () Bool)

(assert (=> b!7385098 m!8033708))

(declare-fun m!8033710 () Bool)

(assert (=> b!7385098 m!8033710))

(declare-fun m!8033712 () Bool)

(assert (=> b!7385098 m!8033712))

(declare-fun m!8033714 () Bool)

(assert (=> b!7385094 m!8033714))

(declare-fun m!8033716 () Bool)

(assert (=> b!7385087 m!8033716))

(declare-fun m!8033718 () Bool)

(assert (=> b!7385100 m!8033718))

(declare-fun m!8033720 () Bool)

(assert (=> b!7385100 m!8033720))

(declare-fun m!8033722 () Bool)

(assert (=> b!7385100 m!8033722))

(declare-fun m!8033724 () Bool)

(assert (=> b!7385100 m!8033724))

(declare-fun m!8033726 () Bool)

(assert (=> b!7385095 m!8033726))

(check-sat (not b!7385094) (not b!7385090) (not start!720424) (not b!7385096) (not b!7385095) (not setNonEmpty!55853) (not b!7385089) (not b!7385100) (not b!7385098) tp_is_empty!48973 (not b!7385087) (not b!7385097) (not b!7385093) (not b!7385099) (not b!7385088) (not b!7385091))
(check-sat)
