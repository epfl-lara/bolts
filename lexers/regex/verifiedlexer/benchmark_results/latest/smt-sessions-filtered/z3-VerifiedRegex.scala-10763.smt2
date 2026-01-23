; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!550002 () Bool)

(assert start!550002)

(declare-fun b!5198826 () Bool)

(assert (=> b!5198826 true))

(assert (=> b!5198826 true))

(declare-fun lambda!260335 () Int)

(declare-fun lambda!260334 () Int)

(assert (=> b!5198826 (not (= lambda!260335 lambda!260334))))

(assert (=> b!5198826 true))

(assert (=> b!5198826 true))

(declare-fun b!5198820 () Bool)

(assert (=> b!5198820 true))

(declare-fun b!5198809 () Bool)

(declare-fun e!3237504 () Bool)

(declare-fun e!3237508 () Bool)

(assert (=> b!5198809 (= e!3237504 (not e!3237508))))

(declare-fun res!2208612 () Bool)

(assert (=> b!5198809 (=> res!2208612 e!3237508)))

(declare-datatypes ((C!29816 0))(
  ( (C!29817 (val!24610 Int)) )
))
(declare-datatypes ((Regex!14773 0))(
  ( (ElementMatch!14773 (c!896012 C!29816)) (Concat!23618 (regOne!30058 Regex!14773) (regTwo!30058 Regex!14773)) (EmptyExpr!14773) (Star!14773 (reg!15102 Regex!14773)) (EmptyLang!14773) (Union!14773 (regOne!30059 Regex!14773) (regTwo!30059 Regex!14773)) )
))
(declare-datatypes ((List!60618 0))(
  ( (Nil!60494) (Cons!60494 (h!66942 Regex!14773) (t!373771 List!60618)) )
))
(declare-datatypes ((Context!8314 0))(
  ( (Context!8315 (exprs!4657 List!60618)) )
))
(declare-datatypes ((List!60619 0))(
  ( (Nil!60495) (Cons!60495 (h!66943 Context!8314) (t!373772 List!60619)) )
))
(declare-fun zl!343 () List!60619)

(get-info :version)

(assert (=> b!5198809 (= res!2208612 (not ((_ is Cons!60495) zl!343)))))

(declare-fun lt!2140140 () Bool)

(declare-fun r!7292 () Regex!14773)

(declare-datatypes ((List!60620 0))(
  ( (Nil!60496) (Cons!60496 (h!66944 C!29816) (t!373773 List!60620)) )
))
(declare-fun s!2326 () List!60620)

(declare-fun matchRSpec!1876 (Regex!14773 List!60620) Bool)

(assert (=> b!5198809 (= lt!2140140 (matchRSpec!1876 r!7292 s!2326))))

(declare-fun matchR!6958 (Regex!14773 List!60620) Bool)

(assert (=> b!5198809 (= lt!2140140 (matchR!6958 r!7292 s!2326))))

(declare-datatypes ((Unit!152380 0))(
  ( (Unit!152381) )
))
(declare-fun lt!2140137 () Unit!152380)

(declare-fun mainMatchTheorem!1876 (Regex!14773 List!60620) Unit!152380)

(assert (=> b!5198809 (= lt!2140137 (mainMatchTheorem!1876 r!7292 s!2326))))

(declare-fun b!5198810 () Bool)

(declare-fun res!2208621 () Bool)

(assert (=> b!5198810 (=> res!2208621 e!3237508)))

(assert (=> b!5198810 (= res!2208621 (or ((_ is EmptyExpr!14773) r!7292) ((_ is EmptyLang!14773) r!7292) ((_ is ElementMatch!14773) r!7292) ((_ is Union!14773) r!7292) (not ((_ is Concat!23618) r!7292))))))

(declare-fun b!5198811 () Bool)

(declare-fun res!2208617 () Bool)

(assert (=> b!5198811 (=> res!2208617 e!3237508)))

(declare-fun generalisedConcat!442 (List!60618) Regex!14773)

(assert (=> b!5198811 (= res!2208617 (not (= r!7292 (generalisedConcat!442 (exprs!4657 (h!66943 zl!343))))))))

(declare-fun b!5198812 () Bool)

(declare-fun res!2208619 () Bool)

(declare-fun e!3237501 () Bool)

(assert (=> b!5198812 (=> res!2208619 e!3237501)))

(declare-fun lt!2140128 () Regex!14773)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2140141 () (InoxSet Context!8314))

(declare-fun lt!2140143 () (InoxSet Context!8314))

(assert (=> b!5198812 (= res!2208619 (or (not (= lt!2140143 lt!2140141)) (not (= lt!2140128 r!7292))))))

(declare-fun b!5198813 () Bool)

(declare-fun e!3237503 () Bool)

(declare-fun tp!1458308 () Bool)

(assert (=> b!5198813 (= e!3237503 tp!1458308)))

(declare-fun b!5198814 () Bool)

(declare-fun res!2208616 () Bool)

(assert (=> b!5198814 (=> res!2208616 e!3237508)))

(assert (=> b!5198814 (= res!2208616 (not ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343)))))))

(declare-fun e!3237500 () Bool)

(declare-fun tp!1458306 () Bool)

(declare-fun b!5198815 () Bool)

(declare-fun e!3237498 () Bool)

(declare-fun inv!80179 (Context!8314) Bool)

(assert (=> b!5198815 (= e!3237498 (and (inv!80179 (h!66943 zl!343)) e!3237500 tp!1458306))))

(declare-fun b!5198816 () Bool)

(declare-fun e!3237502 () Bool)

(assert (=> b!5198816 (= e!3237502 e!3237501)))

(declare-fun res!2208620 () Bool)

(assert (=> b!5198816 (=> res!2208620 e!3237501)))

(declare-fun nullable!4944 (Regex!14773) Bool)

(assert (=> b!5198816 (= res!2208620 (nullable!4944 (regOne!30058 r!7292)))))

(declare-fun lt!2140139 () (InoxSet Context!8314))

(declare-fun lt!2140132 () Context!8314)

(declare-fun derivationStepZipperDown!222 (Regex!14773 Context!8314 C!29816) (InoxSet Context!8314))

(assert (=> b!5198816 (= lt!2140139 (derivationStepZipperDown!222 (regTwo!30058 r!7292) lt!2140132 (h!66944 s!2326)))))

(declare-fun lt!2140127 () Context!8314)

(assert (=> b!5198816 (= lt!2140141 (derivationStepZipperDown!222 (regOne!30058 r!7292) lt!2140127 (h!66944 s!2326)))))

(declare-fun lambda!260336 () Int)

(declare-fun lt!2140123 () (InoxSet Context!8314))

(declare-fun flatMap!504 ((InoxSet Context!8314) Int) (InoxSet Context!8314))

(declare-fun derivationStepZipperUp!145 (Context!8314 C!29816) (InoxSet Context!8314))

(assert (=> b!5198816 (= (flatMap!504 lt!2140123 lambda!260336) (derivationStepZipperUp!145 lt!2140127 (h!66944 s!2326)))))

(declare-fun lt!2140136 () Unit!152380)

(declare-fun lemmaFlatMapOnSingletonSet!36 ((InoxSet Context!8314) Context!8314 Int) Unit!152380)

(assert (=> b!5198816 (= lt!2140136 (lemmaFlatMapOnSingletonSet!36 lt!2140123 lt!2140127 lambda!260336))))

(declare-fun lt!2140135 () Context!8314)

(declare-fun lt!2140142 () (InoxSet Context!8314))

(assert (=> b!5198816 (= (flatMap!504 lt!2140142 lambda!260336) (derivationStepZipperUp!145 lt!2140135 (h!66944 s!2326)))))

(declare-fun lt!2140124 () Unit!152380)

(assert (=> b!5198816 (= lt!2140124 (lemmaFlatMapOnSingletonSet!36 lt!2140142 lt!2140135 lambda!260336))))

(declare-fun lt!2140125 () (InoxSet Context!8314))

(assert (=> b!5198816 (= lt!2140125 (derivationStepZipperUp!145 lt!2140127 (h!66944 s!2326)))))

(declare-fun lt!2140130 () (InoxSet Context!8314))

(assert (=> b!5198816 (= lt!2140130 (derivationStepZipperUp!145 lt!2140135 (h!66944 s!2326)))))

(assert (=> b!5198816 (= lt!2140123 (store ((as const (Array Context!8314 Bool)) false) lt!2140127 true))))

(declare-fun lt!2140134 () List!60618)

(assert (=> b!5198816 (= lt!2140127 (Context!8315 lt!2140134))))

(assert (=> b!5198816 (= lt!2140142 (store ((as const (Array Context!8314 Bool)) false) lt!2140135 true))))

(assert (=> b!5198816 (= lt!2140135 (Context!8315 (Cons!60494 (regOne!30058 r!7292) lt!2140134)))))

(assert (=> b!5198816 (= lt!2140134 (Cons!60494 (regTwo!30058 r!7292) Nil!60494))))

(declare-fun res!2208623 () Bool)

(declare-fun e!3237499 () Bool)

(assert (=> start!550002 (=> (not res!2208623) (not e!3237499))))

(declare-fun validRegex!6509 (Regex!14773) Bool)

(assert (=> start!550002 (= res!2208623 (validRegex!6509 r!7292))))

(assert (=> start!550002 e!3237499))

(assert (=> start!550002 e!3237503))

(declare-fun condSetEmpty!32944 () Bool)

(declare-fun z!1189 () (InoxSet Context!8314))

(assert (=> start!550002 (= condSetEmpty!32944 (= z!1189 ((as const (Array Context!8314 Bool)) false)))))

(declare-fun setRes!32944 () Bool)

(assert (=> start!550002 setRes!32944))

(assert (=> start!550002 e!3237498))

(declare-fun e!3237506 () Bool)

(assert (=> start!550002 e!3237506))

(declare-fun b!5198817 () Bool)

(declare-fun res!2208622 () Bool)

(assert (=> b!5198817 (=> res!2208622 e!3237508)))

(declare-fun generalisedUnion!702 (List!60618) Regex!14773)

(declare-fun unfocusZipperList!215 (List!60619) List!60618)

(assert (=> b!5198817 (= res!2208622 (not (= r!7292 (generalisedUnion!702 (unfocusZipperList!215 zl!343)))))))

(declare-fun b!5198818 () Bool)

(declare-fun tp_is_empty!38799 () Bool)

(declare-fun tp!1458305 () Bool)

(assert (=> b!5198818 (= e!3237506 (and tp_is_empty!38799 tp!1458305))))

(declare-fun b!5198819 () Bool)

(declare-fun res!2208614 () Bool)

(declare-fun e!3237509 () Bool)

(assert (=> b!5198819 (=> res!2208614 e!3237509)))

(declare-fun isEmpty!32406 (List!60618) Bool)

(assert (=> b!5198819 (= res!2208614 (not (isEmpty!32406 (t!373771 (exprs!4657 (h!66943 zl!343))))))))

(declare-fun e!3237507 () Bool)

(assert (=> b!5198820 (= e!3237507 e!3237502)))

(declare-fun res!2208626 () Bool)

(assert (=> b!5198820 (=> res!2208626 e!3237502)))

(declare-fun lt!2140129 () (InoxSet Context!8314))

(assert (=> b!5198820 (= res!2208626 (not (= lt!2140143 lt!2140129)))))

(assert (=> b!5198820 (= (flatMap!504 z!1189 lambda!260336) (derivationStepZipperUp!145 (h!66943 zl!343) (h!66944 s!2326)))))

(declare-fun lt!2140138 () Unit!152380)

(assert (=> b!5198820 (= lt!2140138 (lemmaFlatMapOnSingletonSet!36 z!1189 (h!66943 zl!343) lambda!260336))))

(declare-fun b!5198821 () Bool)

(declare-fun tp!1458309 () Bool)

(declare-fun tp!1458311 () Bool)

(assert (=> b!5198821 (= e!3237503 (and tp!1458309 tp!1458311))))

(declare-fun b!5198822 () Bool)

(declare-fun tp!1458312 () Bool)

(assert (=> b!5198822 (= e!3237500 tp!1458312)))

(declare-fun b!5198823 () Bool)

(assert (=> b!5198823 (= e!3237499 e!3237504)))

(declare-fun res!2208625 () Bool)

(assert (=> b!5198823 (=> (not res!2208625) (not e!3237504))))

(assert (=> b!5198823 (= res!2208625 (= r!7292 lt!2140128))))

(declare-fun unfocusZipper!515 (List!60619) Regex!14773)

(assert (=> b!5198823 (= lt!2140128 (unfocusZipper!515 zl!343))))

(declare-fun setIsEmpty!32944 () Bool)

(assert (=> setIsEmpty!32944 setRes!32944))

(declare-fun b!5198824 () Bool)

(declare-fun res!2208615 () Bool)

(assert (=> b!5198824 (=> (not res!2208615) (not e!3237499))))

(declare-fun toList!8557 ((InoxSet Context!8314)) List!60619)

(assert (=> b!5198824 (= res!2208615 (= (toList!8557 z!1189) zl!343))))

(declare-fun b!5198825 () Bool)

(declare-fun res!2208624 () Bool)

(assert (=> b!5198825 (=> res!2208624 e!3237508)))

(declare-fun isEmpty!32407 (List!60619) Bool)

(assert (=> b!5198825 (= res!2208624 (not (isEmpty!32407 (t!373772 zl!343))))))

(assert (=> b!5198826 (= e!3237508 e!3237509)))

(declare-fun res!2208618 () Bool)

(assert (=> b!5198826 (=> res!2208618 e!3237509)))

(declare-fun lt!2140122 () Bool)

(assert (=> b!5198826 (= res!2208618 (or (not (= lt!2140140 lt!2140122)) ((_ is Nil!60496) s!2326)))))

(declare-fun Exists!1954 (Int) Bool)

(assert (=> b!5198826 (= (Exists!1954 lambda!260334) (Exists!1954 lambda!260335))))

(declare-fun lt!2140126 () Unit!152380)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!608 (Regex!14773 Regex!14773 List!60620) Unit!152380)

(assert (=> b!5198826 (= lt!2140126 (lemmaExistCutMatchRandMatchRSpecEquivalent!608 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326))))

(assert (=> b!5198826 (= lt!2140122 (Exists!1954 lambda!260334))))

(declare-datatypes ((tuple2!63944 0))(
  ( (tuple2!63945 (_1!35275 List!60620) (_2!35275 List!60620)) )
))
(declare-datatypes ((Option!14884 0))(
  ( (None!14883) (Some!14883 (v!50912 tuple2!63944)) )
))
(declare-fun isDefined!11587 (Option!14884) Bool)

(declare-fun findConcatSeparation!1298 (Regex!14773 Regex!14773 List!60620 List!60620 List!60620) Option!14884)

(assert (=> b!5198826 (= lt!2140122 (isDefined!11587 (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) Nil!60496 s!2326 s!2326)))))

(declare-fun lt!2140133 () Unit!152380)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1062 (Regex!14773 Regex!14773 List!60620) Unit!152380)

(assert (=> b!5198826 (= lt!2140133 (lemmaFindConcatSeparationEquivalentToExists!1062 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326))))

(declare-fun b!5198827 () Bool)

(declare-fun lambda!260337 () Int)

(declare-fun forall!14222 (List!60618 Int) Bool)

(assert (=> b!5198827 (= e!3237501 (forall!14222 (exprs!4657 (h!66943 zl!343)) lambda!260337))))

(declare-fun b!5198828 () Bool)

(assert (=> b!5198828 (= e!3237503 tp_is_empty!38799)))

(declare-fun b!5198829 () Bool)

(declare-fun tp!1458310 () Bool)

(declare-fun tp!1458313 () Bool)

(assert (=> b!5198829 (= e!3237503 (and tp!1458310 tp!1458313))))

(declare-fun b!5198830 () Bool)

(declare-fun e!3237505 () Bool)

(declare-fun tp!1458307 () Bool)

(assert (=> b!5198830 (= e!3237505 tp!1458307)))

(declare-fun setElem!32944 () Context!8314)

(declare-fun tp!1458304 () Bool)

(declare-fun setNonEmpty!32944 () Bool)

(assert (=> setNonEmpty!32944 (= setRes!32944 (and tp!1458304 (inv!80179 setElem!32944) e!3237505))))

(declare-fun setRest!32944 () (InoxSet Context!8314))

(assert (=> setNonEmpty!32944 (= z!1189 ((_ map or) (store ((as const (Array Context!8314 Bool)) false) setElem!32944 true) setRest!32944))))

(declare-fun b!5198831 () Bool)

(assert (=> b!5198831 (= e!3237509 e!3237507)))

(declare-fun res!2208613 () Bool)

(assert (=> b!5198831 (=> res!2208613 e!3237507)))

(declare-fun lt!2140131 () (InoxSet Context!8314))

(assert (=> b!5198831 (= res!2208613 (not (= lt!2140131 lt!2140129)))))

(assert (=> b!5198831 (= lt!2140129 (derivationStepZipperDown!222 r!7292 lt!2140132 (h!66944 s!2326)))))

(assert (=> b!5198831 (= lt!2140132 (Context!8315 Nil!60494))))

(assert (=> b!5198831 (= lt!2140131 (derivationStepZipperUp!145 (Context!8315 (Cons!60494 r!7292 Nil!60494)) (h!66944 s!2326)))))

(declare-fun derivationStepZipper!1053 ((InoxSet Context!8314) C!29816) (InoxSet Context!8314))

(assert (=> b!5198831 (= lt!2140143 (derivationStepZipper!1053 z!1189 (h!66944 s!2326)))))

(assert (= (and start!550002 res!2208623) b!5198824))

(assert (= (and b!5198824 res!2208615) b!5198823))

(assert (= (and b!5198823 res!2208625) b!5198809))

(assert (= (and b!5198809 (not res!2208612)) b!5198825))

(assert (= (and b!5198825 (not res!2208624)) b!5198811))

(assert (= (and b!5198811 (not res!2208617)) b!5198814))

(assert (= (and b!5198814 (not res!2208616)) b!5198817))

(assert (= (and b!5198817 (not res!2208622)) b!5198810))

(assert (= (and b!5198810 (not res!2208621)) b!5198826))

(assert (= (and b!5198826 (not res!2208618)) b!5198819))

(assert (= (and b!5198819 (not res!2208614)) b!5198831))

(assert (= (and b!5198831 (not res!2208613)) b!5198820))

(assert (= (and b!5198820 (not res!2208626)) b!5198816))

(assert (= (and b!5198816 (not res!2208620)) b!5198812))

(assert (= (and b!5198812 (not res!2208619)) b!5198827))

(assert (= (and start!550002 ((_ is ElementMatch!14773) r!7292)) b!5198828))

(assert (= (and start!550002 ((_ is Concat!23618) r!7292)) b!5198829))

(assert (= (and start!550002 ((_ is Star!14773) r!7292)) b!5198813))

(assert (= (and start!550002 ((_ is Union!14773) r!7292)) b!5198821))

(assert (= (and start!550002 condSetEmpty!32944) setIsEmpty!32944))

(assert (= (and start!550002 (not condSetEmpty!32944)) setNonEmpty!32944))

(assert (= setNonEmpty!32944 b!5198830))

(assert (= b!5198815 b!5198822))

(assert (= (and start!550002 ((_ is Cons!60495) zl!343)) b!5198815))

(assert (= (and start!550002 ((_ is Cons!60496) s!2326)) b!5198818))

(declare-fun m!6252096 () Bool)

(assert (=> start!550002 m!6252096))

(declare-fun m!6252098 () Bool)

(assert (=> b!5198824 m!6252098))

(declare-fun m!6252100 () Bool)

(assert (=> b!5198811 m!6252100))

(declare-fun m!6252102 () Bool)

(assert (=> setNonEmpty!32944 m!6252102))

(declare-fun m!6252104 () Bool)

(assert (=> b!5198809 m!6252104))

(declare-fun m!6252106 () Bool)

(assert (=> b!5198809 m!6252106))

(declare-fun m!6252108 () Bool)

(assert (=> b!5198809 m!6252108))

(declare-fun m!6252110 () Bool)

(assert (=> b!5198817 m!6252110))

(assert (=> b!5198817 m!6252110))

(declare-fun m!6252112 () Bool)

(assert (=> b!5198817 m!6252112))

(declare-fun m!6252114 () Bool)

(assert (=> b!5198831 m!6252114))

(declare-fun m!6252116 () Bool)

(assert (=> b!5198831 m!6252116))

(declare-fun m!6252118 () Bool)

(assert (=> b!5198831 m!6252118))

(declare-fun m!6252120 () Bool)

(assert (=> b!5198815 m!6252120))

(declare-fun m!6252122 () Bool)

(assert (=> b!5198823 m!6252122))

(declare-fun m!6252124 () Bool)

(assert (=> b!5198820 m!6252124))

(declare-fun m!6252126 () Bool)

(assert (=> b!5198820 m!6252126))

(declare-fun m!6252128 () Bool)

(assert (=> b!5198820 m!6252128))

(declare-fun m!6252130 () Bool)

(assert (=> b!5198825 m!6252130))

(declare-fun m!6252132 () Bool)

(assert (=> b!5198826 m!6252132))

(declare-fun m!6252134 () Bool)

(assert (=> b!5198826 m!6252134))

(declare-fun m!6252136 () Bool)

(assert (=> b!5198826 m!6252136))

(declare-fun m!6252138 () Bool)

(assert (=> b!5198826 m!6252138))

(assert (=> b!5198826 m!6252136))

(declare-fun m!6252140 () Bool)

(assert (=> b!5198826 m!6252140))

(declare-fun m!6252142 () Bool)

(assert (=> b!5198826 m!6252142))

(assert (=> b!5198826 m!6252134))

(declare-fun m!6252144 () Bool)

(assert (=> b!5198819 m!6252144))

(declare-fun m!6252146 () Bool)

(assert (=> b!5198816 m!6252146))

(declare-fun m!6252148 () Bool)

(assert (=> b!5198816 m!6252148))

(declare-fun m!6252150 () Bool)

(assert (=> b!5198816 m!6252150))

(declare-fun m!6252152 () Bool)

(assert (=> b!5198816 m!6252152))

(declare-fun m!6252154 () Bool)

(assert (=> b!5198816 m!6252154))

(declare-fun m!6252156 () Bool)

(assert (=> b!5198816 m!6252156))

(declare-fun m!6252158 () Bool)

(assert (=> b!5198816 m!6252158))

(declare-fun m!6252160 () Bool)

(assert (=> b!5198816 m!6252160))

(declare-fun m!6252162 () Bool)

(assert (=> b!5198816 m!6252162))

(declare-fun m!6252164 () Bool)

(assert (=> b!5198816 m!6252164))

(declare-fun m!6252166 () Bool)

(assert (=> b!5198816 m!6252166))

(declare-fun m!6252168 () Bool)

(assert (=> b!5198827 m!6252168))

(check-sat (not b!5198821) (not b!5198830) (not setNonEmpty!32944) (not b!5198831) (not b!5198818) (not b!5198827) tp_is_empty!38799 (not b!5198820) (not b!5198816) (not b!5198826) (not b!5198819) (not start!550002) (not b!5198811) (not b!5198825) (not b!5198815) (not b!5198823) (not b!5198829) (not b!5198822) (not b!5198817) (not b!5198809) (not b!5198824) (not b!5198813))
(check-sat)
(get-model)

(declare-fun b!5198926 () Bool)

(declare-fun e!3237569 () Option!14884)

(declare-fun e!3237570 () Option!14884)

(assert (=> b!5198926 (= e!3237569 e!3237570)))

(declare-fun c!896037 () Bool)

(assert (=> b!5198926 (= c!896037 ((_ is Nil!60496) s!2326))))

(declare-fun b!5198927 () Bool)

(declare-fun e!3237566 () Bool)

(assert (=> b!5198927 (= e!3237566 (matchR!6958 (regTwo!30058 r!7292) s!2326))))

(declare-fun b!5198928 () Bool)

(declare-fun e!3237567 () Bool)

(declare-fun lt!2140154 () Option!14884)

(declare-fun ++!13192 (List!60620 List!60620) List!60620)

(declare-fun get!20784 (Option!14884) tuple2!63944)

(assert (=> b!5198928 (= e!3237567 (= (++!13192 (_1!35275 (get!20784 lt!2140154)) (_2!35275 (get!20784 lt!2140154))) s!2326))))

(declare-fun b!5198929 () Bool)

(declare-fun lt!2140153 () Unit!152380)

(declare-fun lt!2140155 () Unit!152380)

(assert (=> b!5198929 (= lt!2140153 lt!2140155)))

(assert (=> b!5198929 (= (++!13192 (++!13192 Nil!60496 (Cons!60496 (h!66944 s!2326) Nil!60496)) (t!373773 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1607 (List!60620 C!29816 List!60620 List!60620) Unit!152380)

(assert (=> b!5198929 (= lt!2140155 (lemmaMoveElementToOtherListKeepsConcatEq!1607 Nil!60496 (h!66944 s!2326) (t!373773 s!2326) s!2326))))

(assert (=> b!5198929 (= e!3237570 (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) (++!13192 Nil!60496 (Cons!60496 (h!66944 s!2326) Nil!60496)) (t!373773 s!2326) s!2326))))

(declare-fun b!5198930 () Bool)

(assert (=> b!5198930 (= e!3237569 (Some!14883 (tuple2!63945 Nil!60496 s!2326)))))

(declare-fun d!1677466 () Bool)

(declare-fun e!3237568 () Bool)

(assert (=> d!1677466 e!3237568))

(declare-fun res!2208670 () Bool)

(assert (=> d!1677466 (=> res!2208670 e!3237568)))

(assert (=> d!1677466 (= res!2208670 e!3237567)))

(declare-fun res!2208667 () Bool)

(assert (=> d!1677466 (=> (not res!2208667) (not e!3237567))))

(assert (=> d!1677466 (= res!2208667 (isDefined!11587 lt!2140154))))

(assert (=> d!1677466 (= lt!2140154 e!3237569)))

(declare-fun c!896038 () Bool)

(assert (=> d!1677466 (= c!896038 e!3237566)))

(declare-fun res!2208671 () Bool)

(assert (=> d!1677466 (=> (not res!2208671) (not e!3237566))))

(assert (=> d!1677466 (= res!2208671 (matchR!6958 (regOne!30058 r!7292) Nil!60496))))

(assert (=> d!1677466 (validRegex!6509 (regOne!30058 r!7292))))

(assert (=> d!1677466 (= (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) Nil!60496 s!2326 s!2326) lt!2140154)))

(declare-fun b!5198931 () Bool)

(declare-fun res!2208668 () Bool)

(assert (=> b!5198931 (=> (not res!2208668) (not e!3237567))))

(assert (=> b!5198931 (= res!2208668 (matchR!6958 (regTwo!30058 r!7292) (_2!35275 (get!20784 lt!2140154))))))

(declare-fun b!5198932 () Bool)

(declare-fun res!2208669 () Bool)

(assert (=> b!5198932 (=> (not res!2208669) (not e!3237567))))

(assert (=> b!5198932 (= res!2208669 (matchR!6958 (regOne!30058 r!7292) (_1!35275 (get!20784 lt!2140154))))))

(declare-fun b!5198933 () Bool)

(assert (=> b!5198933 (= e!3237568 (not (isDefined!11587 lt!2140154)))))

(declare-fun b!5198934 () Bool)

(assert (=> b!5198934 (= e!3237570 None!14883)))

(assert (= (and d!1677466 res!2208671) b!5198927))

(assert (= (and d!1677466 c!896038) b!5198930))

(assert (= (and d!1677466 (not c!896038)) b!5198926))

(assert (= (and b!5198926 c!896037) b!5198934))

(assert (= (and b!5198926 (not c!896037)) b!5198929))

(assert (= (and d!1677466 res!2208667) b!5198932))

(assert (= (and b!5198932 res!2208669) b!5198931))

(assert (= (and b!5198931 res!2208668) b!5198928))

(assert (= (and d!1677466 (not res!2208670)) b!5198933))

(declare-fun m!6252190 () Bool)

(assert (=> b!5198933 m!6252190))

(declare-fun m!6252192 () Bool)

(assert (=> b!5198932 m!6252192))

(declare-fun m!6252194 () Bool)

(assert (=> b!5198932 m!6252194))

(declare-fun m!6252196 () Bool)

(assert (=> b!5198927 m!6252196))

(assert (=> b!5198931 m!6252192))

(declare-fun m!6252198 () Bool)

(assert (=> b!5198931 m!6252198))

(assert (=> d!1677466 m!6252190))

(declare-fun m!6252200 () Bool)

(assert (=> d!1677466 m!6252200))

(declare-fun m!6252202 () Bool)

(assert (=> d!1677466 m!6252202))

(assert (=> b!5198928 m!6252192))

(declare-fun m!6252204 () Bool)

(assert (=> b!5198928 m!6252204))

(declare-fun m!6252206 () Bool)

(assert (=> b!5198929 m!6252206))

(assert (=> b!5198929 m!6252206))

(declare-fun m!6252208 () Bool)

(assert (=> b!5198929 m!6252208))

(declare-fun m!6252210 () Bool)

(assert (=> b!5198929 m!6252210))

(assert (=> b!5198929 m!6252206))

(declare-fun m!6252212 () Bool)

(assert (=> b!5198929 m!6252212))

(assert (=> b!5198826 d!1677466))

(declare-fun d!1677478 () Bool)

(declare-fun choose!38631 (Int) Bool)

(assert (=> d!1677478 (= (Exists!1954 lambda!260335) (choose!38631 lambda!260335))))

(declare-fun bs!1209096 () Bool)

(assert (= bs!1209096 d!1677478))

(declare-fun m!6252214 () Bool)

(assert (=> bs!1209096 m!6252214))

(assert (=> b!5198826 d!1677478))

(declare-fun d!1677480 () Bool)

(assert (=> d!1677480 (= (Exists!1954 lambda!260334) (choose!38631 lambda!260334))))

(declare-fun bs!1209097 () Bool)

(assert (= bs!1209097 d!1677480))

(declare-fun m!6252216 () Bool)

(assert (=> bs!1209097 m!6252216))

(assert (=> b!5198826 d!1677480))

(declare-fun bs!1209101 () Bool)

(declare-fun d!1677482 () Bool)

(assert (= bs!1209101 (and d!1677482 b!5198826)))

(declare-fun lambda!260346 () Int)

(assert (=> bs!1209101 (= lambda!260346 lambda!260334)))

(assert (=> bs!1209101 (not (= lambda!260346 lambda!260335))))

(assert (=> d!1677482 true))

(assert (=> d!1677482 true))

(assert (=> d!1677482 true))

(assert (=> d!1677482 (= (isDefined!11587 (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) Nil!60496 s!2326 s!2326)) (Exists!1954 lambda!260346))))

(declare-fun lt!2140161 () Unit!152380)

(declare-fun choose!38632 (Regex!14773 Regex!14773 List!60620) Unit!152380)

(assert (=> d!1677482 (= lt!2140161 (choose!38632 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326))))

(assert (=> d!1677482 (validRegex!6509 (regOne!30058 r!7292))))

(assert (=> d!1677482 (= (lemmaFindConcatSeparationEquivalentToExists!1062 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326) lt!2140161)))

(declare-fun bs!1209103 () Bool)

(assert (= bs!1209103 d!1677482))

(assert (=> bs!1209103 m!6252136))

(assert (=> bs!1209103 m!6252202))

(assert (=> bs!1209103 m!6252136))

(assert (=> bs!1209103 m!6252138))

(declare-fun m!6252240 () Bool)

(assert (=> bs!1209103 m!6252240))

(declare-fun m!6252242 () Bool)

(assert (=> bs!1209103 m!6252242))

(assert (=> b!5198826 d!1677482))

(declare-fun bs!1209112 () Bool)

(declare-fun d!1677490 () Bool)

(assert (= bs!1209112 (and d!1677490 b!5198826)))

(declare-fun lambda!260357 () Int)

(assert (=> bs!1209112 (= lambda!260357 lambda!260334)))

(assert (=> bs!1209112 (not (= lambda!260357 lambda!260335))))

(declare-fun bs!1209113 () Bool)

(assert (= bs!1209113 (and d!1677490 d!1677482)))

(assert (=> bs!1209113 (= lambda!260357 lambda!260346)))

(assert (=> d!1677490 true))

(assert (=> d!1677490 true))

(assert (=> d!1677490 true))

(declare-fun lambda!260358 () Int)

(assert (=> bs!1209112 (not (= lambda!260358 lambda!260334))))

(assert (=> bs!1209112 (= lambda!260358 lambda!260335)))

(assert (=> bs!1209113 (not (= lambda!260358 lambda!260346))))

(declare-fun bs!1209115 () Bool)

(assert (= bs!1209115 d!1677490))

(assert (=> bs!1209115 (not (= lambda!260358 lambda!260357))))

(assert (=> d!1677490 true))

(assert (=> d!1677490 true))

(assert (=> d!1677490 true))

(assert (=> d!1677490 (= (Exists!1954 lambda!260357) (Exists!1954 lambda!260358))))

(declare-fun lt!2140172 () Unit!152380)

(declare-fun choose!38633 (Regex!14773 Regex!14773 List!60620) Unit!152380)

(assert (=> d!1677490 (= lt!2140172 (choose!38633 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326))))

(assert (=> d!1677490 (validRegex!6509 (regOne!30058 r!7292))))

(assert (=> d!1677490 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!608 (regOne!30058 r!7292) (regTwo!30058 r!7292) s!2326) lt!2140172)))

(declare-fun m!6252298 () Bool)

(assert (=> bs!1209115 m!6252298))

(declare-fun m!6252300 () Bool)

(assert (=> bs!1209115 m!6252300))

(declare-fun m!6252302 () Bool)

(assert (=> bs!1209115 m!6252302))

(assert (=> bs!1209115 m!6252202))

(assert (=> b!5198826 d!1677490))

(declare-fun d!1677512 () Bool)

(declare-fun isEmpty!32409 (Option!14884) Bool)

(assert (=> d!1677512 (= (isDefined!11587 (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) Nil!60496 s!2326 s!2326)) (not (isEmpty!32409 (findConcatSeparation!1298 (regOne!30058 r!7292) (regTwo!30058 r!7292) Nil!60496 s!2326 s!2326))))))

(declare-fun bs!1209116 () Bool)

(assert (= bs!1209116 d!1677512))

(assert (=> bs!1209116 m!6252136))

(declare-fun m!6252320 () Bool)

(assert (=> bs!1209116 m!6252320))

(assert (=> b!5198826 d!1677512))

(declare-fun d!1677518 () Bool)

(declare-fun dynLambda!23907 (Int Context!8314) (InoxSet Context!8314))

(assert (=> d!1677518 (= (flatMap!504 lt!2140123 lambda!260336) (dynLambda!23907 lambda!260336 lt!2140127))))

(declare-fun lt!2140178 () Unit!152380)

(declare-fun choose!38634 ((InoxSet Context!8314) Context!8314 Int) Unit!152380)

(assert (=> d!1677518 (= lt!2140178 (choose!38634 lt!2140123 lt!2140127 lambda!260336))))

(assert (=> d!1677518 (= lt!2140123 (store ((as const (Array Context!8314 Bool)) false) lt!2140127 true))))

(assert (=> d!1677518 (= (lemmaFlatMapOnSingletonSet!36 lt!2140123 lt!2140127 lambda!260336) lt!2140178)))

(declare-fun b_lambda!201259 () Bool)

(assert (=> (not b_lambda!201259) (not d!1677518)))

(declare-fun bs!1209119 () Bool)

(assert (= bs!1209119 d!1677518))

(assert (=> bs!1209119 m!6252164))

(declare-fun m!6252336 () Bool)

(assert (=> bs!1209119 m!6252336))

(declare-fun m!6252338 () Bool)

(assert (=> bs!1209119 m!6252338))

(assert (=> bs!1209119 m!6252158))

(assert (=> b!5198816 d!1677518))

(declare-fun d!1677526 () Bool)

(declare-fun nullableFct!1367 (Regex!14773) Bool)

(assert (=> d!1677526 (= (nullable!4944 (regOne!30058 r!7292)) (nullableFct!1367 (regOne!30058 r!7292)))))

(declare-fun bs!1209121 () Bool)

(assert (= bs!1209121 d!1677526))

(declare-fun m!6252342 () Bool)

(assert (=> bs!1209121 m!6252342))

(assert (=> b!5198816 d!1677526))

(declare-fun d!1677530 () Bool)

(assert (=> d!1677530 (= (flatMap!504 lt!2140142 lambda!260336) (dynLambda!23907 lambda!260336 lt!2140135))))

(declare-fun lt!2140182 () Unit!152380)

(assert (=> d!1677530 (= lt!2140182 (choose!38634 lt!2140142 lt!2140135 lambda!260336))))

(assert (=> d!1677530 (= lt!2140142 (store ((as const (Array Context!8314 Bool)) false) lt!2140135 true))))

(assert (=> d!1677530 (= (lemmaFlatMapOnSingletonSet!36 lt!2140142 lt!2140135 lambda!260336) lt!2140182)))

(declare-fun b_lambda!201261 () Bool)

(assert (=> (not b_lambda!201261) (not d!1677530)))

(declare-fun bs!1209125 () Bool)

(assert (= bs!1209125 d!1677530))

(assert (=> bs!1209125 m!6252160))

(declare-fun m!6252344 () Bool)

(assert (=> bs!1209125 m!6252344))

(declare-fun m!6252348 () Bool)

(assert (=> bs!1209125 m!6252348))

(assert (=> bs!1209125 m!6252150))

(assert (=> b!5198816 d!1677530))

(declare-fun d!1677536 () Bool)

(declare-fun c!896106 () Bool)

(declare-fun e!3237685 () Bool)

(assert (=> d!1677536 (= c!896106 e!3237685)))

(declare-fun res!2208744 () Bool)

(assert (=> d!1677536 (=> (not res!2208744) (not e!3237685))))

(assert (=> d!1677536 (= res!2208744 ((_ is Cons!60494) (exprs!4657 lt!2140135)))))

(declare-fun e!3237684 () (InoxSet Context!8314))

(assert (=> d!1677536 (= (derivationStepZipperUp!145 lt!2140135 (h!66944 s!2326)) e!3237684)))

(declare-fun b!5199137 () Bool)

(declare-fun e!3237683 () (InoxSet Context!8314))

(assert (=> b!5199137 (= e!3237683 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199138 () Bool)

(assert (=> b!5199138 (= e!3237685 (nullable!4944 (h!66942 (exprs!4657 lt!2140135))))))

(declare-fun bm!365481 () Bool)

(declare-fun call!365486 () (InoxSet Context!8314))

(assert (=> bm!365481 (= call!365486 (derivationStepZipperDown!222 (h!66942 (exprs!4657 lt!2140135)) (Context!8315 (t!373771 (exprs!4657 lt!2140135))) (h!66944 s!2326)))))

(declare-fun b!5199139 () Bool)

(assert (=> b!5199139 (= e!3237683 call!365486)))

(declare-fun b!5199140 () Bool)

(assert (=> b!5199140 (= e!3237684 e!3237683)))

(declare-fun c!896105 () Bool)

(assert (=> b!5199140 (= c!896105 ((_ is Cons!60494) (exprs!4657 lt!2140135)))))

(declare-fun b!5199141 () Bool)

(assert (=> b!5199141 (= e!3237684 ((_ map or) call!365486 (derivationStepZipperUp!145 (Context!8315 (t!373771 (exprs!4657 lt!2140135))) (h!66944 s!2326))))))

(assert (= (and d!1677536 res!2208744) b!5199138))

(assert (= (and d!1677536 c!896106) b!5199141))

(assert (= (and d!1677536 (not c!896106)) b!5199140))

(assert (= (and b!5199140 c!896105) b!5199139))

(assert (= (and b!5199140 (not c!896105)) b!5199137))

(assert (= (or b!5199141 b!5199139) bm!365481))

(declare-fun m!6252350 () Bool)

(assert (=> b!5199138 m!6252350))

(declare-fun m!6252352 () Bool)

(assert (=> bm!365481 m!6252352))

(declare-fun m!6252354 () Bool)

(assert (=> b!5199141 m!6252354))

(assert (=> b!5198816 d!1677536))

(declare-fun bm!365494 () Bool)

(declare-fun call!365500 () (InoxSet Context!8314))

(declare-fun call!365504 () (InoxSet Context!8314))

(assert (=> bm!365494 (= call!365500 call!365504)))

(declare-fun call!365503 () List!60618)

(declare-fun c!896120 () Bool)

(declare-fun c!896121 () Bool)

(declare-fun c!896123 () Bool)

(declare-fun call!365501 () (InoxSet Context!8314))

(declare-fun bm!365495 () Bool)

(assert (=> bm!365495 (= call!365501 (derivationStepZipperDown!222 (ite c!896121 (regOne!30059 (regTwo!30058 r!7292)) (ite c!896123 (regTwo!30058 (regTwo!30058 r!7292)) (ite c!896120 (regOne!30058 (regTwo!30058 r!7292)) (reg!15102 (regTwo!30058 r!7292))))) (ite (or c!896121 c!896123) lt!2140132 (Context!8315 call!365503)) (h!66944 s!2326)))))

(declare-fun b!5199181 () Bool)

(declare-fun e!3237707 () (InoxSet Context!8314))

(assert (=> b!5199181 (= e!3237707 call!365500)))

(declare-fun call!365499 () List!60618)

(declare-fun bm!365496 () Bool)

(declare-fun $colon$colon!1265 (List!60618 Regex!14773) List!60618)

(assert (=> bm!365496 (= call!365499 ($colon$colon!1265 (exprs!4657 lt!2140132) (ite (or c!896123 c!896120) (regTwo!30058 (regTwo!30058 r!7292)) (regTwo!30058 r!7292))))))

(declare-fun call!365502 () (InoxSet Context!8314))

(declare-fun bm!365497 () Bool)

(assert (=> bm!365497 (= call!365502 (derivationStepZipperDown!222 (ite c!896121 (regTwo!30059 (regTwo!30058 r!7292)) (regOne!30058 (regTwo!30058 r!7292))) (ite c!896121 lt!2140132 (Context!8315 call!365499)) (h!66944 s!2326)))))

(declare-fun d!1677538 () Bool)

(declare-fun c!896122 () Bool)

(assert (=> d!1677538 (= c!896122 (and ((_ is ElementMatch!14773) (regTwo!30058 r!7292)) (= (c!896012 (regTwo!30058 r!7292)) (h!66944 s!2326))))))

(declare-fun e!3237712 () (InoxSet Context!8314))

(assert (=> d!1677538 (= (derivationStepZipperDown!222 (regTwo!30058 r!7292) lt!2140132 (h!66944 s!2326)) e!3237712)))

(declare-fun b!5199182 () Bool)

(declare-fun e!3237710 () Bool)

(assert (=> b!5199182 (= c!896123 e!3237710)))

(declare-fun res!2208760 () Bool)

(assert (=> b!5199182 (=> (not res!2208760) (not e!3237710))))

(assert (=> b!5199182 (= res!2208760 ((_ is Concat!23618) (regTwo!30058 r!7292)))))

(declare-fun e!3237708 () (InoxSet Context!8314))

(declare-fun e!3237711 () (InoxSet Context!8314))

(assert (=> b!5199182 (= e!3237708 e!3237711)))

(declare-fun b!5199183 () Bool)

(assert (=> b!5199183 (= e!3237711 ((_ map or) call!365502 call!365504))))

(declare-fun b!5199184 () Bool)

(assert (=> b!5199184 (= e!3237707 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199185 () Bool)

(assert (=> b!5199185 (= e!3237712 e!3237708)))

(assert (=> b!5199185 (= c!896121 ((_ is Union!14773) (regTwo!30058 r!7292)))))

(declare-fun bm!365498 () Bool)

(assert (=> bm!365498 (= call!365503 call!365499)))

(declare-fun b!5199186 () Bool)

(assert (=> b!5199186 (= e!3237712 (store ((as const (Array Context!8314 Bool)) false) lt!2140132 true))))

(declare-fun b!5199187 () Bool)

(assert (=> b!5199187 (= e!3237708 ((_ map or) call!365501 call!365502))))

(declare-fun b!5199188 () Bool)

(declare-fun c!896119 () Bool)

(assert (=> b!5199188 (= c!896119 ((_ is Star!14773) (regTwo!30058 r!7292)))))

(declare-fun e!3237709 () (InoxSet Context!8314))

(assert (=> b!5199188 (= e!3237709 e!3237707)))

(declare-fun bm!365499 () Bool)

(assert (=> bm!365499 (= call!365504 call!365501)))

(declare-fun b!5199189 () Bool)

(assert (=> b!5199189 (= e!3237710 (nullable!4944 (regOne!30058 (regTwo!30058 r!7292))))))

(declare-fun b!5199190 () Bool)

(assert (=> b!5199190 (= e!3237711 e!3237709)))

(assert (=> b!5199190 (= c!896120 ((_ is Concat!23618) (regTwo!30058 r!7292)))))

(declare-fun b!5199191 () Bool)

(assert (=> b!5199191 (= e!3237709 call!365500)))

(assert (= (and d!1677538 c!896122) b!5199186))

(assert (= (and d!1677538 (not c!896122)) b!5199185))

(assert (= (and b!5199185 c!896121) b!5199187))

(assert (= (and b!5199185 (not c!896121)) b!5199182))

(assert (= (and b!5199182 res!2208760) b!5199189))

(assert (= (and b!5199182 c!896123) b!5199183))

(assert (= (and b!5199182 (not c!896123)) b!5199190))

(assert (= (and b!5199190 c!896120) b!5199191))

(assert (= (and b!5199190 (not c!896120)) b!5199188))

(assert (= (and b!5199188 c!896119) b!5199181))

(assert (= (and b!5199188 (not c!896119)) b!5199184))

(assert (= (or b!5199191 b!5199181) bm!365498))

(assert (= (or b!5199191 b!5199181) bm!365494))

(assert (= (or b!5199183 bm!365498) bm!365496))

(assert (= (or b!5199183 bm!365494) bm!365499))

(assert (= (or b!5199187 b!5199183) bm!365497))

(assert (= (or b!5199187 bm!365499) bm!365495))

(declare-fun m!6252388 () Bool)

(assert (=> b!5199189 m!6252388))

(declare-fun m!6252390 () Bool)

(assert (=> bm!365497 m!6252390))

(declare-fun m!6252392 () Bool)

(assert (=> b!5199186 m!6252392))

(declare-fun m!6252394 () Bool)

(assert (=> bm!365495 m!6252394))

(declare-fun m!6252396 () Bool)

(assert (=> bm!365496 m!6252396))

(assert (=> b!5198816 d!1677538))

(declare-fun d!1677548 () Bool)

(declare-fun choose!38635 ((InoxSet Context!8314) Int) (InoxSet Context!8314))

(assert (=> d!1677548 (= (flatMap!504 lt!2140123 lambda!260336) (choose!38635 lt!2140123 lambda!260336))))

(declare-fun bs!1209133 () Bool)

(assert (= bs!1209133 d!1677548))

(declare-fun m!6252398 () Bool)

(assert (=> bs!1209133 m!6252398))

(assert (=> b!5198816 d!1677548))

(declare-fun d!1677550 () Bool)

(declare-fun c!896125 () Bool)

(declare-fun e!3237717 () Bool)

(assert (=> d!1677550 (= c!896125 e!3237717)))

(declare-fun res!2208765 () Bool)

(assert (=> d!1677550 (=> (not res!2208765) (not e!3237717))))

(assert (=> d!1677550 (= res!2208765 ((_ is Cons!60494) (exprs!4657 lt!2140127)))))

(declare-fun e!3237716 () (InoxSet Context!8314))

(assert (=> d!1677550 (= (derivationStepZipperUp!145 lt!2140127 (h!66944 s!2326)) e!3237716)))

(declare-fun b!5199196 () Bool)

(declare-fun e!3237715 () (InoxSet Context!8314))

(assert (=> b!5199196 (= e!3237715 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199197 () Bool)

(assert (=> b!5199197 (= e!3237717 (nullable!4944 (h!66942 (exprs!4657 lt!2140127))))))

(declare-fun bm!365500 () Bool)

(declare-fun call!365505 () (InoxSet Context!8314))

(assert (=> bm!365500 (= call!365505 (derivationStepZipperDown!222 (h!66942 (exprs!4657 lt!2140127)) (Context!8315 (t!373771 (exprs!4657 lt!2140127))) (h!66944 s!2326)))))

(declare-fun b!5199198 () Bool)

(assert (=> b!5199198 (= e!3237715 call!365505)))

(declare-fun b!5199199 () Bool)

(assert (=> b!5199199 (= e!3237716 e!3237715)))

(declare-fun c!896124 () Bool)

(assert (=> b!5199199 (= c!896124 ((_ is Cons!60494) (exprs!4657 lt!2140127)))))

(declare-fun b!5199200 () Bool)

(assert (=> b!5199200 (= e!3237716 ((_ map or) call!365505 (derivationStepZipperUp!145 (Context!8315 (t!373771 (exprs!4657 lt!2140127))) (h!66944 s!2326))))))

(assert (= (and d!1677550 res!2208765) b!5199197))

(assert (= (and d!1677550 c!896125) b!5199200))

(assert (= (and d!1677550 (not c!896125)) b!5199199))

(assert (= (and b!5199199 c!896124) b!5199198))

(assert (= (and b!5199199 (not c!896124)) b!5199196))

(assert (= (or b!5199200 b!5199198) bm!365500))

(declare-fun m!6252400 () Bool)

(assert (=> b!5199197 m!6252400))

(declare-fun m!6252402 () Bool)

(assert (=> bm!365500 m!6252402))

(declare-fun m!6252404 () Bool)

(assert (=> b!5199200 m!6252404))

(assert (=> b!5198816 d!1677550))

(declare-fun d!1677552 () Bool)

(assert (=> d!1677552 (= (flatMap!504 lt!2140142 lambda!260336) (choose!38635 lt!2140142 lambda!260336))))

(declare-fun bs!1209138 () Bool)

(assert (= bs!1209138 d!1677552))

(declare-fun m!6252406 () Bool)

(assert (=> bs!1209138 m!6252406))

(assert (=> b!5198816 d!1677552))

(declare-fun bm!365501 () Bool)

(declare-fun call!365507 () (InoxSet Context!8314))

(declare-fun call!365511 () (InoxSet Context!8314))

(assert (=> bm!365501 (= call!365507 call!365511)))

(declare-fun c!896128 () Bool)

(declare-fun call!365508 () (InoxSet Context!8314))

(declare-fun bm!365502 () Bool)

(declare-fun call!365510 () List!60618)

(declare-fun c!896127 () Bool)

(declare-fun c!896130 () Bool)

(assert (=> bm!365502 (= call!365508 (derivationStepZipperDown!222 (ite c!896128 (regOne!30059 (regOne!30058 r!7292)) (ite c!896130 (regTwo!30058 (regOne!30058 r!7292)) (ite c!896127 (regOne!30058 (regOne!30058 r!7292)) (reg!15102 (regOne!30058 r!7292))))) (ite (or c!896128 c!896130) lt!2140127 (Context!8315 call!365510)) (h!66944 s!2326)))))

(declare-fun b!5199201 () Bool)

(declare-fun e!3237718 () (InoxSet Context!8314))

(assert (=> b!5199201 (= e!3237718 call!365507)))

(declare-fun bm!365503 () Bool)

(declare-fun call!365506 () List!60618)

(assert (=> bm!365503 (= call!365506 ($colon$colon!1265 (exprs!4657 lt!2140127) (ite (or c!896130 c!896127) (regTwo!30058 (regOne!30058 r!7292)) (regOne!30058 r!7292))))))

(declare-fun call!365509 () (InoxSet Context!8314))

(declare-fun bm!365504 () Bool)

(assert (=> bm!365504 (= call!365509 (derivationStepZipperDown!222 (ite c!896128 (regTwo!30059 (regOne!30058 r!7292)) (regOne!30058 (regOne!30058 r!7292))) (ite c!896128 lt!2140127 (Context!8315 call!365506)) (h!66944 s!2326)))))

(declare-fun d!1677554 () Bool)

(declare-fun c!896129 () Bool)

(assert (=> d!1677554 (= c!896129 (and ((_ is ElementMatch!14773) (regOne!30058 r!7292)) (= (c!896012 (regOne!30058 r!7292)) (h!66944 s!2326))))))

(declare-fun e!3237723 () (InoxSet Context!8314))

(assert (=> d!1677554 (= (derivationStepZipperDown!222 (regOne!30058 r!7292) lt!2140127 (h!66944 s!2326)) e!3237723)))

(declare-fun b!5199202 () Bool)

(declare-fun e!3237721 () Bool)

(assert (=> b!5199202 (= c!896130 e!3237721)))

(declare-fun res!2208766 () Bool)

(assert (=> b!5199202 (=> (not res!2208766) (not e!3237721))))

(assert (=> b!5199202 (= res!2208766 ((_ is Concat!23618) (regOne!30058 r!7292)))))

(declare-fun e!3237719 () (InoxSet Context!8314))

(declare-fun e!3237722 () (InoxSet Context!8314))

(assert (=> b!5199202 (= e!3237719 e!3237722)))

(declare-fun b!5199203 () Bool)

(assert (=> b!5199203 (= e!3237722 ((_ map or) call!365509 call!365511))))

(declare-fun b!5199204 () Bool)

(assert (=> b!5199204 (= e!3237718 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199205 () Bool)

(assert (=> b!5199205 (= e!3237723 e!3237719)))

(assert (=> b!5199205 (= c!896128 ((_ is Union!14773) (regOne!30058 r!7292)))))

(declare-fun bm!365505 () Bool)

(assert (=> bm!365505 (= call!365510 call!365506)))

(declare-fun b!5199206 () Bool)

(assert (=> b!5199206 (= e!3237723 (store ((as const (Array Context!8314 Bool)) false) lt!2140127 true))))

(declare-fun b!5199207 () Bool)

(assert (=> b!5199207 (= e!3237719 ((_ map or) call!365508 call!365509))))

(declare-fun b!5199208 () Bool)

(declare-fun c!896126 () Bool)

(assert (=> b!5199208 (= c!896126 ((_ is Star!14773) (regOne!30058 r!7292)))))

(declare-fun e!3237720 () (InoxSet Context!8314))

(assert (=> b!5199208 (= e!3237720 e!3237718)))

(declare-fun bm!365506 () Bool)

(assert (=> bm!365506 (= call!365511 call!365508)))

(declare-fun b!5199209 () Bool)

(assert (=> b!5199209 (= e!3237721 (nullable!4944 (regOne!30058 (regOne!30058 r!7292))))))

(declare-fun b!5199210 () Bool)

(assert (=> b!5199210 (= e!3237722 e!3237720)))

(assert (=> b!5199210 (= c!896127 ((_ is Concat!23618) (regOne!30058 r!7292)))))

(declare-fun b!5199211 () Bool)

(assert (=> b!5199211 (= e!3237720 call!365507)))

(assert (= (and d!1677554 c!896129) b!5199206))

(assert (= (and d!1677554 (not c!896129)) b!5199205))

(assert (= (and b!5199205 c!896128) b!5199207))

(assert (= (and b!5199205 (not c!896128)) b!5199202))

(assert (= (and b!5199202 res!2208766) b!5199209))

(assert (= (and b!5199202 c!896130) b!5199203))

(assert (= (and b!5199202 (not c!896130)) b!5199210))

(assert (= (and b!5199210 c!896127) b!5199211))

(assert (= (and b!5199210 (not c!896127)) b!5199208))

(assert (= (and b!5199208 c!896126) b!5199201))

(assert (= (and b!5199208 (not c!896126)) b!5199204))

(assert (= (or b!5199211 b!5199201) bm!365505))

(assert (= (or b!5199211 b!5199201) bm!365501))

(assert (= (or b!5199203 bm!365505) bm!365503))

(assert (= (or b!5199203 bm!365501) bm!365506))

(assert (= (or b!5199207 b!5199203) bm!365504))

(assert (= (or b!5199207 bm!365506) bm!365502))

(declare-fun m!6252416 () Bool)

(assert (=> b!5199209 m!6252416))

(declare-fun m!6252418 () Bool)

(assert (=> bm!365504 m!6252418))

(assert (=> b!5199206 m!6252158))

(declare-fun m!6252420 () Bool)

(assert (=> bm!365502 m!6252420))

(declare-fun m!6252422 () Bool)

(assert (=> bm!365503 m!6252422))

(assert (=> b!5198816 d!1677554))

(declare-fun d!1677562 () Bool)

(assert (=> d!1677562 (= (isEmpty!32407 (t!373772 zl!343)) ((_ is Nil!60495) (t!373772 zl!343)))))

(assert (=> b!5198825 d!1677562))

(declare-fun bs!1209141 () Bool)

(declare-fun d!1677564 () Bool)

(assert (= bs!1209141 (and d!1677564 b!5198827)))

(declare-fun lambda!260374 () Int)

(assert (=> bs!1209141 (= lambda!260374 lambda!260337)))

(assert (=> d!1677564 (= (inv!80179 (h!66943 zl!343)) (forall!14222 (exprs!4657 (h!66943 zl!343)) lambda!260374))))

(declare-fun bs!1209142 () Bool)

(assert (= bs!1209142 d!1677564))

(declare-fun m!6252424 () Bool)

(assert (=> bs!1209142 m!6252424))

(assert (=> b!5198815 d!1677564))

(declare-fun d!1677566 () Bool)

(declare-fun e!3237738 () Bool)

(assert (=> d!1677566 e!3237738))

(declare-fun res!2208773 () Bool)

(assert (=> d!1677566 (=> (not res!2208773) (not e!3237738))))

(declare-fun lt!2140202 () List!60619)

(declare-fun noDuplicate!1169 (List!60619) Bool)

(assert (=> d!1677566 (= res!2208773 (noDuplicate!1169 lt!2140202))))

(declare-fun choose!38637 ((InoxSet Context!8314)) List!60619)

(assert (=> d!1677566 (= lt!2140202 (choose!38637 z!1189))))

(assert (=> d!1677566 (= (toList!8557 z!1189) lt!2140202)))

(declare-fun b!5199234 () Bool)

(declare-fun content!10707 (List!60619) (InoxSet Context!8314))

(assert (=> b!5199234 (= e!3237738 (= (content!10707 lt!2140202) z!1189))))

(assert (= (and d!1677566 res!2208773) b!5199234))

(declare-fun m!6252426 () Bool)

(assert (=> d!1677566 m!6252426))

(declare-fun m!6252428 () Bool)

(assert (=> d!1677566 m!6252428))

(declare-fun m!6252430 () Bool)

(assert (=> b!5199234 m!6252430))

(assert (=> b!5198824 d!1677566))

(declare-fun d!1677568 () Bool)

(assert (=> d!1677568 (= (isEmpty!32406 (t!373771 (exprs!4657 (h!66943 zl!343)))) ((_ is Nil!60494) (t!373771 (exprs!4657 (h!66943 zl!343)))))))

(assert (=> b!5198819 d!1677568))

(declare-fun d!1677570 () Bool)

(declare-fun res!2208795 () Bool)

(declare-fun e!3237785 () Bool)

(assert (=> d!1677570 (=> res!2208795 e!3237785)))

(assert (=> d!1677570 (= res!2208795 ((_ is ElementMatch!14773) r!7292))))

(assert (=> d!1677570 (= (validRegex!6509 r!7292) e!3237785)))

(declare-fun b!5199319 () Bool)

(declare-fun e!3237787 () Bool)

(declare-fun call!365519 () Bool)

(assert (=> b!5199319 (= e!3237787 call!365519)))

(declare-fun b!5199320 () Bool)

(declare-fun res!2208792 () Bool)

(declare-fun e!3237786 () Bool)

(assert (=> b!5199320 (=> res!2208792 e!3237786)))

(assert (=> b!5199320 (= res!2208792 (not ((_ is Concat!23618) r!7292)))))

(declare-fun e!3237788 () Bool)

(assert (=> b!5199320 (= e!3237788 e!3237786)))

(declare-fun b!5199321 () Bool)

(declare-fun e!3237784 () Bool)

(assert (=> b!5199321 (= e!3237784 call!365519)))

(declare-fun b!5199322 () Bool)

(declare-fun e!3237783 () Bool)

(declare-fun call!365520 () Bool)

(assert (=> b!5199322 (= e!3237783 call!365520)))

(declare-fun b!5199323 () Bool)

(assert (=> b!5199323 (= e!3237786 e!3237787)))

(declare-fun res!2208796 () Bool)

(assert (=> b!5199323 (=> (not res!2208796) (not e!3237787))))

(declare-fun call!365518 () Bool)

(assert (=> b!5199323 (= res!2208796 call!365518)))

(declare-fun b!5199324 () Bool)

(declare-fun res!2208794 () Bool)

(assert (=> b!5199324 (=> (not res!2208794) (not e!3237784))))

(assert (=> b!5199324 (= res!2208794 call!365518)))

(assert (=> b!5199324 (= e!3237788 e!3237784)))

(declare-fun bm!365513 () Bool)

(declare-fun c!896150 () Bool)

(assert (=> bm!365513 (= call!365518 (validRegex!6509 (ite c!896150 (regOne!30059 r!7292) (regOne!30058 r!7292))))))

(declare-fun b!5199325 () Bool)

(declare-fun e!3237789 () Bool)

(assert (=> b!5199325 (= e!3237789 e!3237783)))

(declare-fun res!2208793 () Bool)

(assert (=> b!5199325 (= res!2208793 (not (nullable!4944 (reg!15102 r!7292))))))

(assert (=> b!5199325 (=> (not res!2208793) (not e!3237783))))

(declare-fun b!5199326 () Bool)

(assert (=> b!5199326 (= e!3237785 e!3237789)))

(declare-fun c!896151 () Bool)

(assert (=> b!5199326 (= c!896151 ((_ is Star!14773) r!7292))))

(declare-fun bm!365514 () Bool)

(assert (=> bm!365514 (= call!365520 (validRegex!6509 (ite c!896151 (reg!15102 r!7292) (ite c!896150 (regTwo!30059 r!7292) (regTwo!30058 r!7292)))))))

(declare-fun b!5199327 () Bool)

(assert (=> b!5199327 (= e!3237789 e!3237788)))

(assert (=> b!5199327 (= c!896150 ((_ is Union!14773) r!7292))))

(declare-fun bm!365515 () Bool)

(assert (=> bm!365515 (= call!365519 call!365520)))

(assert (= (and d!1677570 (not res!2208795)) b!5199326))

(assert (= (and b!5199326 c!896151) b!5199325))

(assert (= (and b!5199326 (not c!896151)) b!5199327))

(assert (= (and b!5199325 res!2208793) b!5199322))

(assert (= (and b!5199327 c!896150) b!5199324))

(assert (= (and b!5199327 (not c!896150)) b!5199320))

(assert (= (and b!5199324 res!2208794) b!5199321))

(assert (= (and b!5199320 (not res!2208792)) b!5199323))

(assert (= (and b!5199323 res!2208796) b!5199319))

(assert (= (or b!5199321 b!5199319) bm!365515))

(assert (= (or b!5199324 b!5199323) bm!365513))

(assert (= (or b!5199322 bm!365515) bm!365514))

(declare-fun m!6252462 () Bool)

(assert (=> bm!365513 m!6252462))

(declare-fun m!6252464 () Bool)

(assert (=> b!5199325 m!6252464))

(declare-fun m!6252466 () Bool)

(assert (=> bm!365514 m!6252466))

(assert (=> start!550002 d!1677570))

(declare-fun d!1677576 () Bool)

(declare-fun res!2208801 () Bool)

(declare-fun e!3237802 () Bool)

(assert (=> d!1677576 (=> res!2208801 e!3237802)))

(assert (=> d!1677576 (= res!2208801 ((_ is Nil!60494) (exprs!4657 (h!66943 zl!343))))))

(assert (=> d!1677576 (= (forall!14222 (exprs!4657 (h!66943 zl!343)) lambda!260337) e!3237802)))

(declare-fun b!5199342 () Bool)

(declare-fun e!3237803 () Bool)

(assert (=> b!5199342 (= e!3237802 e!3237803)))

(declare-fun res!2208802 () Bool)

(assert (=> b!5199342 (=> (not res!2208802) (not e!3237803))))

(declare-fun dynLambda!23908 (Int Regex!14773) Bool)

(assert (=> b!5199342 (= res!2208802 (dynLambda!23908 lambda!260337 (h!66942 (exprs!4657 (h!66943 zl!343)))))))

(declare-fun b!5199343 () Bool)

(assert (=> b!5199343 (= e!3237803 (forall!14222 (t!373771 (exprs!4657 (h!66943 zl!343))) lambda!260337))))

(assert (= (and d!1677576 (not res!2208801)) b!5199342))

(assert (= (and b!5199342 res!2208802) b!5199343))

(declare-fun b_lambda!201273 () Bool)

(assert (=> (not b_lambda!201273) (not b!5199342)))

(declare-fun m!6252472 () Bool)

(assert (=> b!5199342 m!6252472))

(declare-fun m!6252474 () Bool)

(assert (=> b!5199343 m!6252474))

(assert (=> b!5198827 d!1677576))

(declare-fun bs!1209156 () Bool)

(declare-fun d!1677586 () Bool)

(assert (= bs!1209156 (and d!1677586 b!5198827)))

(declare-fun lambda!260383 () Int)

(assert (=> bs!1209156 (= lambda!260383 lambda!260337)))

(declare-fun bs!1209157 () Bool)

(assert (= bs!1209157 (and d!1677586 d!1677564)))

(assert (=> bs!1209157 (= lambda!260383 lambda!260374)))

(declare-fun b!5199364 () Bool)

(declare-fun e!3237818 () Bool)

(declare-fun e!3237820 () Bool)

(assert (=> b!5199364 (= e!3237818 e!3237820)))

(declare-fun c!896162 () Bool)

(declare-fun tail!10244 (List!60618) List!60618)

(assert (=> b!5199364 (= c!896162 (isEmpty!32406 (tail!10244 (unfocusZipperList!215 zl!343))))))

(declare-fun b!5199365 () Bool)

(declare-fun e!3237819 () Regex!14773)

(assert (=> b!5199365 (= e!3237819 EmptyLang!14773)))

(declare-fun b!5199366 () Bool)

(declare-fun lt!2140209 () Regex!14773)

(declare-fun isUnion!190 (Regex!14773) Bool)

(assert (=> b!5199366 (= e!3237820 (isUnion!190 lt!2140209))))

(declare-fun b!5199367 () Bool)

(assert (=> b!5199367 (= e!3237819 (Union!14773 (h!66942 (unfocusZipperList!215 zl!343)) (generalisedUnion!702 (t!373771 (unfocusZipperList!215 zl!343)))))))

(declare-fun b!5199368 () Bool)

(declare-fun e!3237817 () Regex!14773)

(assert (=> b!5199368 (= e!3237817 (h!66942 (unfocusZipperList!215 zl!343)))))

(declare-fun b!5199369 () Bool)

(declare-fun head!11147 (List!60618) Regex!14773)

(assert (=> b!5199369 (= e!3237820 (= lt!2140209 (head!11147 (unfocusZipperList!215 zl!343))))))

(declare-fun b!5199370 () Bool)

(declare-fun e!3237821 () Bool)

(assert (=> b!5199370 (= e!3237821 (isEmpty!32406 (t!373771 (unfocusZipperList!215 zl!343))))))

(declare-fun b!5199371 () Bool)

(assert (=> b!5199371 (= e!3237817 e!3237819)))

(declare-fun c!896163 () Bool)

(assert (=> b!5199371 (= c!896163 ((_ is Cons!60494) (unfocusZipperList!215 zl!343)))))

(declare-fun b!5199372 () Bool)

(declare-fun e!3237816 () Bool)

(assert (=> b!5199372 (= e!3237816 e!3237818)))

(declare-fun c!896160 () Bool)

(assert (=> b!5199372 (= c!896160 (isEmpty!32406 (unfocusZipperList!215 zl!343)))))

(assert (=> d!1677586 e!3237816))

(declare-fun res!2208807 () Bool)

(assert (=> d!1677586 (=> (not res!2208807) (not e!3237816))))

(assert (=> d!1677586 (= res!2208807 (validRegex!6509 lt!2140209))))

(assert (=> d!1677586 (= lt!2140209 e!3237817)))

(declare-fun c!896161 () Bool)

(assert (=> d!1677586 (= c!896161 e!3237821)))

(declare-fun res!2208808 () Bool)

(assert (=> d!1677586 (=> (not res!2208808) (not e!3237821))))

(assert (=> d!1677586 (= res!2208808 ((_ is Cons!60494) (unfocusZipperList!215 zl!343)))))

(assert (=> d!1677586 (forall!14222 (unfocusZipperList!215 zl!343) lambda!260383)))

(assert (=> d!1677586 (= (generalisedUnion!702 (unfocusZipperList!215 zl!343)) lt!2140209)))

(declare-fun b!5199373 () Bool)

(declare-fun isEmptyLang!759 (Regex!14773) Bool)

(assert (=> b!5199373 (= e!3237818 (isEmptyLang!759 lt!2140209))))

(assert (= (and d!1677586 res!2208808) b!5199370))

(assert (= (and d!1677586 c!896161) b!5199368))

(assert (= (and d!1677586 (not c!896161)) b!5199371))

(assert (= (and b!5199371 c!896163) b!5199367))

(assert (= (and b!5199371 (not c!896163)) b!5199365))

(assert (= (and d!1677586 res!2208807) b!5199372))

(assert (= (and b!5199372 c!896160) b!5199373))

(assert (= (and b!5199372 (not c!896160)) b!5199364))

(assert (= (and b!5199364 c!896162) b!5199369))

(assert (= (and b!5199364 (not c!896162)) b!5199366))

(declare-fun m!6252476 () Bool)

(assert (=> b!5199367 m!6252476))

(declare-fun m!6252478 () Bool)

(assert (=> b!5199366 m!6252478))

(assert (=> b!5199372 m!6252110))

(declare-fun m!6252480 () Bool)

(assert (=> b!5199372 m!6252480))

(declare-fun m!6252482 () Bool)

(assert (=> d!1677586 m!6252482))

(assert (=> d!1677586 m!6252110))

(declare-fun m!6252484 () Bool)

(assert (=> d!1677586 m!6252484))

(declare-fun m!6252486 () Bool)

(assert (=> b!5199373 m!6252486))

(declare-fun m!6252488 () Bool)

(assert (=> b!5199370 m!6252488))

(assert (=> b!5199369 m!6252110))

(declare-fun m!6252490 () Bool)

(assert (=> b!5199369 m!6252490))

(assert (=> b!5199364 m!6252110))

(declare-fun m!6252492 () Bool)

(assert (=> b!5199364 m!6252492))

(assert (=> b!5199364 m!6252492))

(declare-fun m!6252494 () Bool)

(assert (=> b!5199364 m!6252494))

(assert (=> b!5198817 d!1677586))

(declare-fun bs!1209158 () Bool)

(declare-fun d!1677588 () Bool)

(assert (= bs!1209158 (and d!1677588 b!5198827)))

(declare-fun lambda!260386 () Int)

(assert (=> bs!1209158 (= lambda!260386 lambda!260337)))

(declare-fun bs!1209159 () Bool)

(assert (= bs!1209159 (and d!1677588 d!1677564)))

(assert (=> bs!1209159 (= lambda!260386 lambda!260374)))

(declare-fun bs!1209160 () Bool)

(assert (= bs!1209160 (and d!1677588 d!1677586)))

(assert (=> bs!1209160 (= lambda!260386 lambda!260383)))

(declare-fun lt!2140212 () List!60618)

(assert (=> d!1677588 (forall!14222 lt!2140212 lambda!260386)))

(declare-fun e!3237824 () List!60618)

(assert (=> d!1677588 (= lt!2140212 e!3237824)))

(declare-fun c!896166 () Bool)

(assert (=> d!1677588 (= c!896166 ((_ is Cons!60495) zl!343))))

(assert (=> d!1677588 (= (unfocusZipperList!215 zl!343) lt!2140212)))

(declare-fun b!5199378 () Bool)

(assert (=> b!5199378 (= e!3237824 (Cons!60494 (generalisedConcat!442 (exprs!4657 (h!66943 zl!343))) (unfocusZipperList!215 (t!373772 zl!343))))))

(declare-fun b!5199379 () Bool)

(assert (=> b!5199379 (= e!3237824 Nil!60494)))

(assert (= (and d!1677588 c!896166) b!5199378))

(assert (= (and d!1677588 (not c!896166)) b!5199379))

(declare-fun m!6252496 () Bool)

(assert (=> d!1677588 m!6252496))

(assert (=> b!5199378 m!6252100))

(declare-fun m!6252498 () Bool)

(assert (=> b!5199378 m!6252498))

(assert (=> b!5198817 d!1677588))

(declare-fun bs!1209161 () Bool)

(declare-fun d!1677590 () Bool)

(assert (= bs!1209161 (and d!1677590 b!5198827)))

(declare-fun lambda!260387 () Int)

(assert (=> bs!1209161 (= lambda!260387 lambda!260337)))

(declare-fun bs!1209162 () Bool)

(assert (= bs!1209162 (and d!1677590 d!1677564)))

(assert (=> bs!1209162 (= lambda!260387 lambda!260374)))

(declare-fun bs!1209163 () Bool)

(assert (= bs!1209163 (and d!1677590 d!1677586)))

(assert (=> bs!1209163 (= lambda!260387 lambda!260383)))

(declare-fun bs!1209164 () Bool)

(assert (= bs!1209164 (and d!1677590 d!1677588)))

(assert (=> bs!1209164 (= lambda!260387 lambda!260386)))

(assert (=> d!1677590 (= (inv!80179 setElem!32944) (forall!14222 (exprs!4657 setElem!32944) lambda!260387))))

(declare-fun bs!1209165 () Bool)

(assert (= bs!1209165 d!1677590))

(declare-fun m!6252500 () Bool)

(assert (=> bs!1209165 m!6252500))

(assert (=> setNonEmpty!32944 d!1677590))

(declare-fun d!1677592 () Bool)

(assert (=> d!1677592 (= (flatMap!504 z!1189 lambda!260336) (choose!38635 z!1189 lambda!260336))))

(declare-fun bs!1209166 () Bool)

(assert (= bs!1209166 d!1677592))

(declare-fun m!6252502 () Bool)

(assert (=> bs!1209166 m!6252502))

(assert (=> b!5198820 d!1677592))

(declare-fun d!1677594 () Bool)

(declare-fun c!896168 () Bool)

(declare-fun e!3237827 () Bool)

(assert (=> d!1677594 (= c!896168 e!3237827)))

(declare-fun res!2208809 () Bool)

(assert (=> d!1677594 (=> (not res!2208809) (not e!3237827))))

(assert (=> d!1677594 (= res!2208809 ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343))))))

(declare-fun e!3237826 () (InoxSet Context!8314))

(assert (=> d!1677594 (= (derivationStepZipperUp!145 (h!66943 zl!343) (h!66944 s!2326)) e!3237826)))

(declare-fun b!5199380 () Bool)

(declare-fun e!3237825 () (InoxSet Context!8314))

(assert (=> b!5199380 (= e!3237825 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199381 () Bool)

(assert (=> b!5199381 (= e!3237827 (nullable!4944 (h!66942 (exprs!4657 (h!66943 zl!343)))))))

(declare-fun bm!365516 () Bool)

(declare-fun call!365521 () (InoxSet Context!8314))

(assert (=> bm!365516 (= call!365521 (derivationStepZipperDown!222 (h!66942 (exprs!4657 (h!66943 zl!343))) (Context!8315 (t!373771 (exprs!4657 (h!66943 zl!343)))) (h!66944 s!2326)))))

(declare-fun b!5199382 () Bool)

(assert (=> b!5199382 (= e!3237825 call!365521)))

(declare-fun b!5199383 () Bool)

(assert (=> b!5199383 (= e!3237826 e!3237825)))

(declare-fun c!896167 () Bool)

(assert (=> b!5199383 (= c!896167 ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343))))))

(declare-fun b!5199384 () Bool)

(assert (=> b!5199384 (= e!3237826 ((_ map or) call!365521 (derivationStepZipperUp!145 (Context!8315 (t!373771 (exprs!4657 (h!66943 zl!343)))) (h!66944 s!2326))))))

(assert (= (and d!1677594 res!2208809) b!5199381))

(assert (= (and d!1677594 c!896168) b!5199384))

(assert (= (and d!1677594 (not c!896168)) b!5199383))

(assert (= (and b!5199383 c!896167) b!5199382))

(assert (= (and b!5199383 (not c!896167)) b!5199380))

(assert (= (or b!5199384 b!5199382) bm!365516))

(declare-fun m!6252504 () Bool)

(assert (=> b!5199381 m!6252504))

(declare-fun m!6252506 () Bool)

(assert (=> bm!365516 m!6252506))

(declare-fun m!6252508 () Bool)

(assert (=> b!5199384 m!6252508))

(assert (=> b!5198820 d!1677594))

(declare-fun d!1677596 () Bool)

(assert (=> d!1677596 (= (flatMap!504 z!1189 lambda!260336) (dynLambda!23907 lambda!260336 (h!66943 zl!343)))))

(declare-fun lt!2140213 () Unit!152380)

(assert (=> d!1677596 (= lt!2140213 (choose!38634 z!1189 (h!66943 zl!343) lambda!260336))))

(assert (=> d!1677596 (= z!1189 (store ((as const (Array Context!8314 Bool)) false) (h!66943 zl!343) true))))

(assert (=> d!1677596 (= (lemmaFlatMapOnSingletonSet!36 z!1189 (h!66943 zl!343) lambda!260336) lt!2140213)))

(declare-fun b_lambda!201275 () Bool)

(assert (=> (not b_lambda!201275) (not d!1677596)))

(declare-fun bs!1209167 () Bool)

(assert (= bs!1209167 d!1677596))

(assert (=> bs!1209167 m!6252124))

(declare-fun m!6252510 () Bool)

(assert (=> bs!1209167 m!6252510))

(declare-fun m!6252512 () Bool)

(assert (=> bs!1209167 m!6252512))

(declare-fun m!6252514 () Bool)

(assert (=> bs!1209167 m!6252514))

(assert (=> b!5198820 d!1677596))

(declare-fun bs!1209168 () Bool)

(declare-fun b!5199421 () Bool)

(assert (= bs!1209168 (and b!5199421 b!5198826)))

(declare-fun lambda!260392 () Int)

(assert (=> bs!1209168 (not (= lambda!260392 lambda!260335))))

(declare-fun bs!1209169 () Bool)

(assert (= bs!1209169 (and b!5199421 d!1677482)))

(assert (=> bs!1209169 (not (= lambda!260392 lambda!260346))))

(declare-fun bs!1209170 () Bool)

(assert (= bs!1209170 (and b!5199421 d!1677490)))

(assert (=> bs!1209170 (not (= lambda!260392 lambda!260358))))

(assert (=> bs!1209168 (not (= lambda!260392 lambda!260334))))

(assert (=> bs!1209170 (not (= lambda!260392 lambda!260357))))

(assert (=> b!5199421 true))

(assert (=> b!5199421 true))

(declare-fun bs!1209171 () Bool)

(declare-fun b!5199420 () Bool)

(assert (= bs!1209171 (and b!5199420 b!5199421)))

(declare-fun lambda!260393 () Int)

(assert (=> bs!1209171 (not (= lambda!260393 lambda!260392))))

(declare-fun bs!1209172 () Bool)

(assert (= bs!1209172 (and b!5199420 b!5198826)))

(assert (=> bs!1209172 (= lambda!260393 lambda!260335)))

(declare-fun bs!1209173 () Bool)

(assert (= bs!1209173 (and b!5199420 d!1677482)))

(assert (=> bs!1209173 (not (= lambda!260393 lambda!260346))))

(declare-fun bs!1209174 () Bool)

(assert (= bs!1209174 (and b!5199420 d!1677490)))

(assert (=> bs!1209174 (= lambda!260393 lambda!260358)))

(assert (=> bs!1209172 (not (= lambda!260393 lambda!260334))))

(assert (=> bs!1209174 (not (= lambda!260393 lambda!260357))))

(assert (=> b!5199420 true))

(assert (=> b!5199420 true))

(declare-fun b!5199417 () Bool)

(declare-fun res!2208828 () Bool)

(declare-fun e!3237847 () Bool)

(assert (=> b!5199417 (=> res!2208828 e!3237847)))

(declare-fun call!365526 () Bool)

(assert (=> b!5199417 (= res!2208828 call!365526)))

(declare-fun e!3237852 () Bool)

(assert (=> b!5199417 (= e!3237852 e!3237847)))

(declare-fun b!5199418 () Bool)

(declare-fun e!3237850 () Bool)

(assert (=> b!5199418 (= e!3237850 e!3237852)))

(declare-fun c!896180 () Bool)

(assert (=> b!5199418 (= c!896180 ((_ is Star!14773) r!7292))))

(declare-fun b!5199419 () Bool)

(declare-fun c!896179 () Bool)

(assert (=> b!5199419 (= c!896179 ((_ is Union!14773) r!7292))))

(declare-fun e!3237849 () Bool)

(assert (=> b!5199419 (= e!3237849 e!3237850)))

(declare-fun call!365527 () Bool)

(assert (=> b!5199420 (= e!3237852 call!365527)))

(assert (=> b!5199421 (= e!3237847 call!365527)))

(declare-fun b!5199422 () Bool)

(declare-fun e!3237846 () Bool)

(assert (=> b!5199422 (= e!3237846 call!365526)))

(declare-fun b!5199424 () Bool)

(declare-fun e!3237851 () Bool)

(assert (=> b!5199424 (= e!3237846 e!3237851)))

(declare-fun res!2208827 () Bool)

(assert (=> b!5199424 (= res!2208827 (not ((_ is EmptyLang!14773) r!7292)))))

(assert (=> b!5199424 (=> (not res!2208827) (not e!3237851))))

(declare-fun b!5199425 () Bool)

(declare-fun e!3237848 () Bool)

(assert (=> b!5199425 (= e!3237850 e!3237848)))

(declare-fun res!2208826 () Bool)

(assert (=> b!5199425 (= res!2208826 (matchRSpec!1876 (regOne!30059 r!7292) s!2326))))

(assert (=> b!5199425 (=> res!2208826 e!3237848)))

(declare-fun b!5199426 () Bool)

(assert (=> b!5199426 (= e!3237849 (= s!2326 (Cons!60496 (c!896012 r!7292) Nil!60496)))))

(declare-fun bm!365521 () Bool)

(declare-fun isEmpty!32411 (List!60620) Bool)

(assert (=> bm!365521 (= call!365526 (isEmpty!32411 s!2326))))

(declare-fun b!5199427 () Bool)

(declare-fun c!896178 () Bool)

(assert (=> b!5199427 (= c!896178 ((_ is ElementMatch!14773) r!7292))))

(assert (=> b!5199427 (= e!3237851 e!3237849)))

(declare-fun bm!365522 () Bool)

(assert (=> bm!365522 (= call!365527 (Exists!1954 (ite c!896180 lambda!260392 lambda!260393)))))

(declare-fun d!1677598 () Bool)

(declare-fun c!896177 () Bool)

(assert (=> d!1677598 (= c!896177 ((_ is EmptyExpr!14773) r!7292))))

(assert (=> d!1677598 (= (matchRSpec!1876 r!7292 s!2326) e!3237846)))

(declare-fun b!5199423 () Bool)

(assert (=> b!5199423 (= e!3237848 (matchRSpec!1876 (regTwo!30059 r!7292) s!2326))))

(assert (= (and d!1677598 c!896177) b!5199422))

(assert (= (and d!1677598 (not c!896177)) b!5199424))

(assert (= (and b!5199424 res!2208827) b!5199427))

(assert (= (and b!5199427 c!896178) b!5199426))

(assert (= (and b!5199427 (not c!896178)) b!5199419))

(assert (= (and b!5199419 c!896179) b!5199425))

(assert (= (and b!5199419 (not c!896179)) b!5199418))

(assert (= (and b!5199425 (not res!2208826)) b!5199423))

(assert (= (and b!5199418 c!896180) b!5199417))

(assert (= (and b!5199418 (not c!896180)) b!5199420))

(assert (= (and b!5199417 (not res!2208828)) b!5199421))

(assert (= (or b!5199421 b!5199420) bm!365522))

(assert (= (or b!5199422 b!5199417) bm!365521))

(declare-fun m!6252516 () Bool)

(assert (=> b!5199425 m!6252516))

(declare-fun m!6252518 () Bool)

(assert (=> bm!365521 m!6252518))

(declare-fun m!6252520 () Bool)

(assert (=> bm!365522 m!6252520))

(declare-fun m!6252522 () Bool)

(assert (=> b!5199423 m!6252522))

(assert (=> b!5198809 d!1677598))

(declare-fun b!5199456 () Bool)

(declare-fun res!2208852 () Bool)

(declare-fun e!3237872 () Bool)

(assert (=> b!5199456 (=> (not res!2208852) (not e!3237872))))

(declare-fun tail!10245 (List!60620) List!60620)

(assert (=> b!5199456 (= res!2208852 (isEmpty!32411 (tail!10245 s!2326)))))

(declare-fun d!1677600 () Bool)

(declare-fun e!3237871 () Bool)

(assert (=> d!1677600 e!3237871))

(declare-fun c!896187 () Bool)

(assert (=> d!1677600 (= c!896187 ((_ is EmptyExpr!14773) r!7292))))

(declare-fun lt!2140216 () Bool)

(declare-fun e!3237869 () Bool)

(assert (=> d!1677600 (= lt!2140216 e!3237869)))

(declare-fun c!896189 () Bool)

(assert (=> d!1677600 (= c!896189 (isEmpty!32411 s!2326))))

(assert (=> d!1677600 (validRegex!6509 r!7292)))

(assert (=> d!1677600 (= (matchR!6958 r!7292 s!2326) lt!2140216)))

(declare-fun b!5199457 () Bool)

(declare-fun call!365530 () Bool)

(assert (=> b!5199457 (= e!3237871 (= lt!2140216 call!365530))))

(declare-fun b!5199458 () Bool)

(declare-fun res!2208847 () Bool)

(declare-fun e!3237868 () Bool)

(assert (=> b!5199458 (=> res!2208847 e!3237868)))

(assert (=> b!5199458 (= res!2208847 e!3237872)))

(declare-fun res!2208849 () Bool)

(assert (=> b!5199458 (=> (not res!2208849) (not e!3237872))))

(assert (=> b!5199458 (= res!2208849 lt!2140216)))

(declare-fun bm!365525 () Bool)

(assert (=> bm!365525 (= call!365530 (isEmpty!32411 s!2326))))

(declare-fun b!5199459 () Bool)

(declare-fun head!11148 (List!60620) C!29816)

(assert (=> b!5199459 (= e!3237872 (= (head!11148 s!2326) (c!896012 r!7292)))))

(declare-fun b!5199460 () Bool)

(declare-fun res!2208850 () Bool)

(assert (=> b!5199460 (=> (not res!2208850) (not e!3237872))))

(assert (=> b!5199460 (= res!2208850 (not call!365530))))

(declare-fun b!5199461 () Bool)

(declare-fun e!3237867 () Bool)

(declare-fun e!3237873 () Bool)

(assert (=> b!5199461 (= e!3237867 e!3237873)))

(declare-fun res!2208848 () Bool)

(assert (=> b!5199461 (=> res!2208848 e!3237873)))

(assert (=> b!5199461 (= res!2208848 call!365530)))

(declare-fun b!5199462 () Bool)

(declare-fun res!2208846 () Bool)

(assert (=> b!5199462 (=> res!2208846 e!3237868)))

(assert (=> b!5199462 (= res!2208846 (not ((_ is ElementMatch!14773) r!7292)))))

(declare-fun e!3237870 () Bool)

(assert (=> b!5199462 (= e!3237870 e!3237868)))

(declare-fun b!5199463 () Bool)

(assert (=> b!5199463 (= e!3237869 (nullable!4944 r!7292))))

(declare-fun b!5199464 () Bool)

(assert (=> b!5199464 (= e!3237870 (not lt!2140216))))

(declare-fun b!5199465 () Bool)

(assert (=> b!5199465 (= e!3237868 e!3237867)))

(declare-fun res!2208851 () Bool)

(assert (=> b!5199465 (=> (not res!2208851) (not e!3237867))))

(assert (=> b!5199465 (= res!2208851 (not lt!2140216))))

(declare-fun b!5199466 () Bool)

(declare-fun derivativeStep!4036 (Regex!14773 C!29816) Regex!14773)

(assert (=> b!5199466 (= e!3237869 (matchR!6958 (derivativeStep!4036 r!7292 (head!11148 s!2326)) (tail!10245 s!2326)))))

(declare-fun b!5199467 () Bool)

(assert (=> b!5199467 (= e!3237871 e!3237870)))

(declare-fun c!896188 () Bool)

(assert (=> b!5199467 (= c!896188 ((_ is EmptyLang!14773) r!7292))))

(declare-fun b!5199468 () Bool)

(assert (=> b!5199468 (= e!3237873 (not (= (head!11148 s!2326) (c!896012 r!7292))))))

(declare-fun b!5199469 () Bool)

(declare-fun res!2208845 () Bool)

(assert (=> b!5199469 (=> res!2208845 e!3237873)))

(assert (=> b!5199469 (= res!2208845 (not (isEmpty!32411 (tail!10245 s!2326))))))

(assert (= (and d!1677600 c!896189) b!5199463))

(assert (= (and d!1677600 (not c!896189)) b!5199466))

(assert (= (and d!1677600 c!896187) b!5199457))

(assert (= (and d!1677600 (not c!896187)) b!5199467))

(assert (= (and b!5199467 c!896188) b!5199464))

(assert (= (and b!5199467 (not c!896188)) b!5199462))

(assert (= (and b!5199462 (not res!2208846)) b!5199458))

(assert (= (and b!5199458 res!2208849) b!5199460))

(assert (= (and b!5199460 res!2208850) b!5199456))

(assert (= (and b!5199456 res!2208852) b!5199459))

(assert (= (and b!5199458 (not res!2208847)) b!5199465))

(assert (= (and b!5199465 res!2208851) b!5199461))

(assert (= (and b!5199461 (not res!2208848)) b!5199469))

(assert (= (and b!5199469 (not res!2208845)) b!5199468))

(assert (= (or b!5199457 b!5199460 b!5199461) bm!365525))

(assert (=> bm!365525 m!6252518))

(declare-fun m!6252524 () Bool)

(assert (=> b!5199469 m!6252524))

(assert (=> b!5199469 m!6252524))

(declare-fun m!6252526 () Bool)

(assert (=> b!5199469 m!6252526))

(declare-fun m!6252528 () Bool)

(assert (=> b!5199468 m!6252528))

(assert (=> d!1677600 m!6252518))

(assert (=> d!1677600 m!6252096))

(declare-fun m!6252530 () Bool)

(assert (=> b!5199463 m!6252530))

(assert (=> b!5199456 m!6252524))

(assert (=> b!5199456 m!6252524))

(assert (=> b!5199456 m!6252526))

(assert (=> b!5199459 m!6252528))

(assert (=> b!5199466 m!6252528))

(assert (=> b!5199466 m!6252528))

(declare-fun m!6252532 () Bool)

(assert (=> b!5199466 m!6252532))

(assert (=> b!5199466 m!6252524))

(assert (=> b!5199466 m!6252532))

(assert (=> b!5199466 m!6252524))

(declare-fun m!6252534 () Bool)

(assert (=> b!5199466 m!6252534))

(assert (=> b!5198809 d!1677600))

(declare-fun d!1677602 () Bool)

(assert (=> d!1677602 (= (matchR!6958 r!7292 s!2326) (matchRSpec!1876 r!7292 s!2326))))

(declare-fun lt!2140219 () Unit!152380)

(declare-fun choose!38641 (Regex!14773 List!60620) Unit!152380)

(assert (=> d!1677602 (= lt!2140219 (choose!38641 r!7292 s!2326))))

(assert (=> d!1677602 (validRegex!6509 r!7292)))

(assert (=> d!1677602 (= (mainMatchTheorem!1876 r!7292 s!2326) lt!2140219)))

(declare-fun bs!1209175 () Bool)

(assert (= bs!1209175 d!1677602))

(assert (=> bs!1209175 m!6252106))

(assert (=> bs!1209175 m!6252104))

(declare-fun m!6252536 () Bool)

(assert (=> bs!1209175 m!6252536))

(assert (=> bs!1209175 m!6252096))

(assert (=> b!5198809 d!1677602))

(declare-fun d!1677604 () Bool)

(declare-fun lt!2140222 () Regex!14773)

(assert (=> d!1677604 (validRegex!6509 lt!2140222)))

(assert (=> d!1677604 (= lt!2140222 (generalisedUnion!702 (unfocusZipperList!215 zl!343)))))

(assert (=> d!1677604 (= (unfocusZipper!515 zl!343) lt!2140222)))

(declare-fun bs!1209176 () Bool)

(assert (= bs!1209176 d!1677604))

(declare-fun m!6252538 () Bool)

(assert (=> bs!1209176 m!6252538))

(assert (=> bs!1209176 m!6252110))

(assert (=> bs!1209176 m!6252110))

(assert (=> bs!1209176 m!6252112))

(assert (=> b!5198823 d!1677604))

(declare-fun bm!365526 () Bool)

(declare-fun call!365532 () (InoxSet Context!8314))

(declare-fun call!365536 () (InoxSet Context!8314))

(assert (=> bm!365526 (= call!365532 call!365536)))

(declare-fun call!365535 () List!60618)

(declare-fun c!896192 () Bool)

(declare-fun bm!365527 () Bool)

(declare-fun c!896194 () Bool)

(declare-fun call!365533 () (InoxSet Context!8314))

(declare-fun c!896191 () Bool)

(assert (=> bm!365527 (= call!365533 (derivationStepZipperDown!222 (ite c!896192 (regOne!30059 r!7292) (ite c!896194 (regTwo!30058 r!7292) (ite c!896191 (regOne!30058 r!7292) (reg!15102 r!7292)))) (ite (or c!896192 c!896194) lt!2140132 (Context!8315 call!365535)) (h!66944 s!2326)))))

(declare-fun b!5199470 () Bool)

(declare-fun e!3237874 () (InoxSet Context!8314))

(assert (=> b!5199470 (= e!3237874 call!365532)))

(declare-fun bm!365528 () Bool)

(declare-fun call!365531 () List!60618)

(assert (=> bm!365528 (= call!365531 ($colon$colon!1265 (exprs!4657 lt!2140132) (ite (or c!896194 c!896191) (regTwo!30058 r!7292) r!7292)))))

(declare-fun call!365534 () (InoxSet Context!8314))

(declare-fun bm!365529 () Bool)

(assert (=> bm!365529 (= call!365534 (derivationStepZipperDown!222 (ite c!896192 (regTwo!30059 r!7292) (regOne!30058 r!7292)) (ite c!896192 lt!2140132 (Context!8315 call!365531)) (h!66944 s!2326)))))

(declare-fun d!1677606 () Bool)

(declare-fun c!896193 () Bool)

(assert (=> d!1677606 (= c!896193 (and ((_ is ElementMatch!14773) r!7292) (= (c!896012 r!7292) (h!66944 s!2326))))))

(declare-fun e!3237879 () (InoxSet Context!8314))

(assert (=> d!1677606 (= (derivationStepZipperDown!222 r!7292 lt!2140132 (h!66944 s!2326)) e!3237879)))

(declare-fun b!5199471 () Bool)

(declare-fun e!3237877 () Bool)

(assert (=> b!5199471 (= c!896194 e!3237877)))

(declare-fun res!2208853 () Bool)

(assert (=> b!5199471 (=> (not res!2208853) (not e!3237877))))

(assert (=> b!5199471 (= res!2208853 ((_ is Concat!23618) r!7292))))

(declare-fun e!3237875 () (InoxSet Context!8314))

(declare-fun e!3237878 () (InoxSet Context!8314))

(assert (=> b!5199471 (= e!3237875 e!3237878)))

(declare-fun b!5199472 () Bool)

(assert (=> b!5199472 (= e!3237878 ((_ map or) call!365534 call!365536))))

(declare-fun b!5199473 () Bool)

(assert (=> b!5199473 (= e!3237874 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199474 () Bool)

(assert (=> b!5199474 (= e!3237879 e!3237875)))

(assert (=> b!5199474 (= c!896192 ((_ is Union!14773) r!7292))))

(declare-fun bm!365530 () Bool)

(assert (=> bm!365530 (= call!365535 call!365531)))

(declare-fun b!5199475 () Bool)

(assert (=> b!5199475 (= e!3237879 (store ((as const (Array Context!8314 Bool)) false) lt!2140132 true))))

(declare-fun b!5199476 () Bool)

(assert (=> b!5199476 (= e!3237875 ((_ map or) call!365533 call!365534))))

(declare-fun b!5199477 () Bool)

(declare-fun c!896190 () Bool)

(assert (=> b!5199477 (= c!896190 ((_ is Star!14773) r!7292))))

(declare-fun e!3237876 () (InoxSet Context!8314))

(assert (=> b!5199477 (= e!3237876 e!3237874)))

(declare-fun bm!365531 () Bool)

(assert (=> bm!365531 (= call!365536 call!365533)))

(declare-fun b!5199478 () Bool)

(assert (=> b!5199478 (= e!3237877 (nullable!4944 (regOne!30058 r!7292)))))

(declare-fun b!5199479 () Bool)

(assert (=> b!5199479 (= e!3237878 e!3237876)))

(assert (=> b!5199479 (= c!896191 ((_ is Concat!23618) r!7292))))

(declare-fun b!5199480 () Bool)

(assert (=> b!5199480 (= e!3237876 call!365532)))

(assert (= (and d!1677606 c!896193) b!5199475))

(assert (= (and d!1677606 (not c!896193)) b!5199474))

(assert (= (and b!5199474 c!896192) b!5199476))

(assert (= (and b!5199474 (not c!896192)) b!5199471))

(assert (= (and b!5199471 res!2208853) b!5199478))

(assert (= (and b!5199471 c!896194) b!5199472))

(assert (= (and b!5199471 (not c!896194)) b!5199479))

(assert (= (and b!5199479 c!896191) b!5199480))

(assert (= (and b!5199479 (not c!896191)) b!5199477))

(assert (= (and b!5199477 c!896190) b!5199470))

(assert (= (and b!5199477 (not c!896190)) b!5199473))

(assert (= (or b!5199480 b!5199470) bm!365530))

(assert (= (or b!5199480 b!5199470) bm!365526))

(assert (= (or b!5199472 bm!365530) bm!365528))

(assert (= (or b!5199472 bm!365526) bm!365531))

(assert (= (or b!5199476 b!5199472) bm!365529))

(assert (= (or b!5199476 bm!365531) bm!365527))

(assert (=> b!5199478 m!6252156))

(declare-fun m!6252540 () Bool)

(assert (=> bm!365529 m!6252540))

(assert (=> b!5199475 m!6252392))

(declare-fun m!6252542 () Bool)

(assert (=> bm!365527 m!6252542))

(declare-fun m!6252544 () Bool)

(assert (=> bm!365528 m!6252544))

(assert (=> b!5198831 d!1677606))

(declare-fun d!1677608 () Bool)

(declare-fun c!896196 () Bool)

(declare-fun e!3237882 () Bool)

(assert (=> d!1677608 (= c!896196 e!3237882)))

(declare-fun res!2208854 () Bool)

(assert (=> d!1677608 (=> (not res!2208854) (not e!3237882))))

(assert (=> d!1677608 (= res!2208854 ((_ is Cons!60494) (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494)))))))

(declare-fun e!3237881 () (InoxSet Context!8314))

(assert (=> d!1677608 (= (derivationStepZipperUp!145 (Context!8315 (Cons!60494 r!7292 Nil!60494)) (h!66944 s!2326)) e!3237881)))

(declare-fun b!5199481 () Bool)

(declare-fun e!3237880 () (InoxSet Context!8314))

(assert (=> b!5199481 (= e!3237880 ((as const (Array Context!8314 Bool)) false))))

(declare-fun b!5199482 () Bool)

(assert (=> b!5199482 (= e!3237882 (nullable!4944 (h!66942 (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494))))))))

(declare-fun bm!365532 () Bool)

(declare-fun call!365537 () (InoxSet Context!8314))

(assert (=> bm!365532 (= call!365537 (derivationStepZipperDown!222 (h!66942 (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494)))) (Context!8315 (t!373771 (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494))))) (h!66944 s!2326)))))

(declare-fun b!5199483 () Bool)

(assert (=> b!5199483 (= e!3237880 call!365537)))

(declare-fun b!5199484 () Bool)

(assert (=> b!5199484 (= e!3237881 e!3237880)))

(declare-fun c!896195 () Bool)

(assert (=> b!5199484 (= c!896195 ((_ is Cons!60494) (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494)))))))

(declare-fun b!5199485 () Bool)

(assert (=> b!5199485 (= e!3237881 ((_ map or) call!365537 (derivationStepZipperUp!145 (Context!8315 (t!373771 (exprs!4657 (Context!8315 (Cons!60494 r!7292 Nil!60494))))) (h!66944 s!2326))))))

(assert (= (and d!1677608 res!2208854) b!5199482))

(assert (= (and d!1677608 c!896196) b!5199485))

(assert (= (and d!1677608 (not c!896196)) b!5199484))

(assert (= (and b!5199484 c!896195) b!5199483))

(assert (= (and b!5199484 (not c!896195)) b!5199481))

(assert (= (or b!5199485 b!5199483) bm!365532))

(declare-fun m!6252546 () Bool)

(assert (=> b!5199482 m!6252546))

(declare-fun m!6252548 () Bool)

(assert (=> bm!365532 m!6252548))

(declare-fun m!6252550 () Bool)

(assert (=> b!5199485 m!6252550))

(assert (=> b!5198831 d!1677608))

(declare-fun bs!1209177 () Bool)

(declare-fun d!1677610 () Bool)

(assert (= bs!1209177 (and d!1677610 b!5198820)))

(declare-fun lambda!260396 () Int)

(assert (=> bs!1209177 (= lambda!260396 lambda!260336)))

(assert (=> d!1677610 true))

(assert (=> d!1677610 (= (derivationStepZipper!1053 z!1189 (h!66944 s!2326)) (flatMap!504 z!1189 lambda!260396))))

(declare-fun bs!1209178 () Bool)

(assert (= bs!1209178 d!1677610))

(declare-fun m!6252552 () Bool)

(assert (=> bs!1209178 m!6252552))

(assert (=> b!5198831 d!1677610))

(declare-fun bs!1209179 () Bool)

(declare-fun d!1677612 () Bool)

(assert (= bs!1209179 (and d!1677612 d!1677590)))

(declare-fun lambda!260399 () Int)

(assert (=> bs!1209179 (= lambda!260399 lambda!260387)))

(declare-fun bs!1209180 () Bool)

(assert (= bs!1209180 (and d!1677612 d!1677564)))

(assert (=> bs!1209180 (= lambda!260399 lambda!260374)))

(declare-fun bs!1209181 () Bool)

(assert (= bs!1209181 (and d!1677612 d!1677586)))

(assert (=> bs!1209181 (= lambda!260399 lambda!260383)))

(declare-fun bs!1209182 () Bool)

(assert (= bs!1209182 (and d!1677612 d!1677588)))

(assert (=> bs!1209182 (= lambda!260399 lambda!260386)))

(declare-fun bs!1209183 () Bool)

(assert (= bs!1209183 (and d!1677612 b!5198827)))

(assert (=> bs!1209183 (= lambda!260399 lambda!260337)))

(declare-fun b!5199508 () Bool)

(declare-fun e!3237898 () Bool)

(declare-fun e!3237895 () Bool)

(assert (=> b!5199508 (= e!3237898 e!3237895)))

(declare-fun c!896210 () Bool)

(assert (=> b!5199508 (= c!896210 (isEmpty!32406 (exprs!4657 (h!66943 zl!343))))))

(assert (=> d!1677612 e!3237898))

(declare-fun res!2208860 () Bool)

(assert (=> d!1677612 (=> (not res!2208860) (not e!3237898))))

(declare-fun lt!2140225 () Regex!14773)

(assert (=> d!1677612 (= res!2208860 (validRegex!6509 lt!2140225))))

(declare-fun e!3237896 () Regex!14773)

(assert (=> d!1677612 (= lt!2140225 e!3237896)))

(declare-fun c!896209 () Bool)

(declare-fun e!3237897 () Bool)

(assert (=> d!1677612 (= c!896209 e!3237897)))

(declare-fun res!2208859 () Bool)

(assert (=> d!1677612 (=> (not res!2208859) (not e!3237897))))

(assert (=> d!1677612 (= res!2208859 ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343))))))

(assert (=> d!1677612 (forall!14222 (exprs!4657 (h!66943 zl!343)) lambda!260399)))

(assert (=> d!1677612 (= (generalisedConcat!442 (exprs!4657 (h!66943 zl!343))) lt!2140225)))

(declare-fun b!5199509 () Bool)

(declare-fun e!3237900 () Bool)

(assert (=> b!5199509 (= e!3237900 (= lt!2140225 (head!11147 (exprs!4657 (h!66943 zl!343)))))))

(declare-fun b!5199510 () Bool)

(declare-fun e!3237899 () Regex!14773)

(assert (=> b!5199510 (= e!3237899 (Concat!23618 (h!66942 (exprs!4657 (h!66943 zl!343))) (generalisedConcat!442 (t!373771 (exprs!4657 (h!66943 zl!343))))))))

(declare-fun b!5199511 () Bool)

(declare-fun isConcat!273 (Regex!14773) Bool)

(assert (=> b!5199511 (= e!3237900 (isConcat!273 lt!2140225))))

(declare-fun b!5199512 () Bool)

(assert (=> b!5199512 (= e!3237896 (h!66942 (exprs!4657 (h!66943 zl!343))))))

(declare-fun b!5199513 () Bool)

(assert (=> b!5199513 (= e!3237896 e!3237899)))

(declare-fun c!896207 () Bool)

(assert (=> b!5199513 (= c!896207 ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343))))))

(declare-fun b!5199514 () Bool)

(declare-fun isEmptyExpr!750 (Regex!14773) Bool)

(assert (=> b!5199514 (= e!3237895 (isEmptyExpr!750 lt!2140225))))

(declare-fun b!5199515 () Bool)

(assert (=> b!5199515 (= e!3237897 (isEmpty!32406 (t!373771 (exprs!4657 (h!66943 zl!343)))))))

(declare-fun b!5199516 () Bool)

(assert (=> b!5199516 (= e!3237899 EmptyExpr!14773)))

(declare-fun b!5199517 () Bool)

(assert (=> b!5199517 (= e!3237895 e!3237900)))

(declare-fun c!896208 () Bool)

(assert (=> b!5199517 (= c!896208 (isEmpty!32406 (tail!10244 (exprs!4657 (h!66943 zl!343)))))))

(assert (= (and d!1677612 res!2208859) b!5199515))

(assert (= (and d!1677612 c!896209) b!5199512))

(assert (= (and d!1677612 (not c!896209)) b!5199513))

(assert (= (and b!5199513 c!896207) b!5199510))

(assert (= (and b!5199513 (not c!896207)) b!5199516))

(assert (= (and d!1677612 res!2208860) b!5199508))

(assert (= (and b!5199508 c!896210) b!5199514))

(assert (= (and b!5199508 (not c!896210)) b!5199517))

(assert (= (and b!5199517 c!896208) b!5199509))

(assert (= (and b!5199517 (not c!896208)) b!5199511))

(declare-fun m!6252554 () Bool)

(assert (=> b!5199514 m!6252554))

(declare-fun m!6252556 () Bool)

(assert (=> d!1677612 m!6252556))

(declare-fun m!6252558 () Bool)

(assert (=> d!1677612 m!6252558))

(assert (=> b!5199515 m!6252144))

(declare-fun m!6252560 () Bool)

(assert (=> b!5199508 m!6252560))

(declare-fun m!6252562 () Bool)

(assert (=> b!5199510 m!6252562))

(declare-fun m!6252564 () Bool)

(assert (=> b!5199511 m!6252564))

(declare-fun m!6252566 () Bool)

(assert (=> b!5199517 m!6252566))

(assert (=> b!5199517 m!6252566))

(declare-fun m!6252568 () Bool)

(assert (=> b!5199517 m!6252568))

(declare-fun m!6252570 () Bool)

(assert (=> b!5199509 m!6252570))

(assert (=> b!5198811 d!1677612))

(declare-fun condSetEmpty!32950 () Bool)

(assert (=> setNonEmpty!32944 (= condSetEmpty!32950 (= setRest!32944 ((as const (Array Context!8314 Bool)) false)))))

(declare-fun setRes!32950 () Bool)

(assert (=> setNonEmpty!32944 (= tp!1458304 setRes!32950)))

(declare-fun setIsEmpty!32950 () Bool)

(assert (=> setIsEmpty!32950 setRes!32950))

(declare-fun tp!1458377 () Bool)

(declare-fun setElem!32950 () Context!8314)

(declare-fun e!3237903 () Bool)

(declare-fun setNonEmpty!32950 () Bool)

(assert (=> setNonEmpty!32950 (= setRes!32950 (and tp!1458377 (inv!80179 setElem!32950) e!3237903))))

(declare-fun setRest!32950 () (InoxSet Context!8314))

(assert (=> setNonEmpty!32950 (= setRest!32944 ((_ map or) (store ((as const (Array Context!8314 Bool)) false) setElem!32950 true) setRest!32950))))

(declare-fun b!5199522 () Bool)

(declare-fun tp!1458376 () Bool)

(assert (=> b!5199522 (= e!3237903 tp!1458376)))

(assert (= (and setNonEmpty!32944 condSetEmpty!32950) setIsEmpty!32950))

(assert (= (and setNonEmpty!32944 (not condSetEmpty!32950)) setNonEmpty!32950))

(assert (= setNonEmpty!32950 b!5199522))

(declare-fun m!6252572 () Bool)

(assert (=> setNonEmpty!32950 m!6252572))

(declare-fun b!5199534 () Bool)

(declare-fun e!3237906 () Bool)

(declare-fun tp!1458391 () Bool)

(declare-fun tp!1458388 () Bool)

(assert (=> b!5199534 (= e!3237906 (and tp!1458391 tp!1458388))))

(declare-fun b!5199536 () Bool)

(declare-fun tp!1458390 () Bool)

(declare-fun tp!1458392 () Bool)

(assert (=> b!5199536 (= e!3237906 (and tp!1458390 tp!1458392))))

(declare-fun b!5199535 () Bool)

(declare-fun tp!1458389 () Bool)

(assert (=> b!5199535 (= e!3237906 tp!1458389)))

(declare-fun b!5199533 () Bool)

(assert (=> b!5199533 (= e!3237906 tp_is_empty!38799)))

(assert (=> b!5198821 (= tp!1458309 e!3237906)))

(assert (= (and b!5198821 ((_ is ElementMatch!14773) (regOne!30059 r!7292))) b!5199533))

(assert (= (and b!5198821 ((_ is Concat!23618) (regOne!30059 r!7292))) b!5199534))

(assert (= (and b!5198821 ((_ is Star!14773) (regOne!30059 r!7292))) b!5199535))

(assert (= (and b!5198821 ((_ is Union!14773) (regOne!30059 r!7292))) b!5199536))

(declare-fun b!5199538 () Bool)

(declare-fun e!3237907 () Bool)

(declare-fun tp!1458396 () Bool)

(declare-fun tp!1458393 () Bool)

(assert (=> b!5199538 (= e!3237907 (and tp!1458396 tp!1458393))))

(declare-fun b!5199540 () Bool)

(declare-fun tp!1458395 () Bool)

(declare-fun tp!1458397 () Bool)

(assert (=> b!5199540 (= e!3237907 (and tp!1458395 tp!1458397))))

(declare-fun b!5199539 () Bool)

(declare-fun tp!1458394 () Bool)

(assert (=> b!5199539 (= e!3237907 tp!1458394)))

(declare-fun b!5199537 () Bool)

(assert (=> b!5199537 (= e!3237907 tp_is_empty!38799)))

(assert (=> b!5198821 (= tp!1458311 e!3237907)))

(assert (= (and b!5198821 ((_ is ElementMatch!14773) (regTwo!30059 r!7292))) b!5199537))

(assert (= (and b!5198821 ((_ is Concat!23618) (regTwo!30059 r!7292))) b!5199538))

(assert (= (and b!5198821 ((_ is Star!14773) (regTwo!30059 r!7292))) b!5199539))

(assert (= (and b!5198821 ((_ is Union!14773) (regTwo!30059 r!7292))) b!5199540))

(declare-fun b!5199545 () Bool)

(declare-fun e!3237910 () Bool)

(declare-fun tp!1458402 () Bool)

(declare-fun tp!1458403 () Bool)

(assert (=> b!5199545 (= e!3237910 (and tp!1458402 tp!1458403))))

(assert (=> b!5198830 (= tp!1458307 e!3237910)))

(assert (= (and b!5198830 ((_ is Cons!60494) (exprs!4657 setElem!32944))) b!5199545))

(declare-fun b!5199553 () Bool)

(declare-fun e!3237916 () Bool)

(declare-fun tp!1458408 () Bool)

(assert (=> b!5199553 (= e!3237916 tp!1458408)))

(declare-fun tp!1458409 () Bool)

(declare-fun b!5199552 () Bool)

(declare-fun e!3237915 () Bool)

(assert (=> b!5199552 (= e!3237915 (and (inv!80179 (h!66943 (t!373772 zl!343))) e!3237916 tp!1458409))))

(assert (=> b!5198815 (= tp!1458306 e!3237915)))

(assert (= b!5199552 b!5199553))

(assert (= (and b!5198815 ((_ is Cons!60495) (t!373772 zl!343))) b!5199552))

(declare-fun m!6252574 () Bool)

(assert (=> b!5199552 m!6252574))

(declare-fun b!5199555 () Bool)

(declare-fun e!3237917 () Bool)

(declare-fun tp!1458413 () Bool)

(declare-fun tp!1458410 () Bool)

(assert (=> b!5199555 (= e!3237917 (and tp!1458413 tp!1458410))))

(declare-fun b!5199557 () Bool)

(declare-fun tp!1458412 () Bool)

(declare-fun tp!1458414 () Bool)

(assert (=> b!5199557 (= e!3237917 (and tp!1458412 tp!1458414))))

(declare-fun b!5199556 () Bool)

(declare-fun tp!1458411 () Bool)

(assert (=> b!5199556 (= e!3237917 tp!1458411)))

(declare-fun b!5199554 () Bool)

(assert (=> b!5199554 (= e!3237917 tp_is_empty!38799)))

(assert (=> b!5198813 (= tp!1458308 e!3237917)))

(assert (= (and b!5198813 ((_ is ElementMatch!14773) (reg!15102 r!7292))) b!5199554))

(assert (= (and b!5198813 ((_ is Concat!23618) (reg!15102 r!7292))) b!5199555))

(assert (= (and b!5198813 ((_ is Star!14773) (reg!15102 r!7292))) b!5199556))

(assert (= (and b!5198813 ((_ is Union!14773) (reg!15102 r!7292))) b!5199557))

(declare-fun b!5199559 () Bool)

(declare-fun e!3237918 () Bool)

(declare-fun tp!1458418 () Bool)

(declare-fun tp!1458415 () Bool)

(assert (=> b!5199559 (= e!3237918 (and tp!1458418 tp!1458415))))

(declare-fun b!5199561 () Bool)

(declare-fun tp!1458417 () Bool)

(declare-fun tp!1458419 () Bool)

(assert (=> b!5199561 (= e!3237918 (and tp!1458417 tp!1458419))))

(declare-fun b!5199560 () Bool)

(declare-fun tp!1458416 () Bool)

(assert (=> b!5199560 (= e!3237918 tp!1458416)))

(declare-fun b!5199558 () Bool)

(assert (=> b!5199558 (= e!3237918 tp_is_empty!38799)))

(assert (=> b!5198829 (= tp!1458310 e!3237918)))

(assert (= (and b!5198829 ((_ is ElementMatch!14773) (regOne!30058 r!7292))) b!5199558))

(assert (= (and b!5198829 ((_ is Concat!23618) (regOne!30058 r!7292))) b!5199559))

(assert (= (and b!5198829 ((_ is Star!14773) (regOne!30058 r!7292))) b!5199560))

(assert (= (and b!5198829 ((_ is Union!14773) (regOne!30058 r!7292))) b!5199561))

(declare-fun b!5199563 () Bool)

(declare-fun e!3237919 () Bool)

(declare-fun tp!1458423 () Bool)

(declare-fun tp!1458420 () Bool)

(assert (=> b!5199563 (= e!3237919 (and tp!1458423 tp!1458420))))

(declare-fun b!5199565 () Bool)

(declare-fun tp!1458422 () Bool)

(declare-fun tp!1458424 () Bool)

(assert (=> b!5199565 (= e!3237919 (and tp!1458422 tp!1458424))))

(declare-fun b!5199564 () Bool)

(declare-fun tp!1458421 () Bool)

(assert (=> b!5199564 (= e!3237919 tp!1458421)))

(declare-fun b!5199562 () Bool)

(assert (=> b!5199562 (= e!3237919 tp_is_empty!38799)))

(assert (=> b!5198829 (= tp!1458313 e!3237919)))

(assert (= (and b!5198829 ((_ is ElementMatch!14773) (regTwo!30058 r!7292))) b!5199562))

(assert (= (and b!5198829 ((_ is Concat!23618) (regTwo!30058 r!7292))) b!5199563))

(assert (= (and b!5198829 ((_ is Star!14773) (regTwo!30058 r!7292))) b!5199564))

(assert (= (and b!5198829 ((_ is Union!14773) (regTwo!30058 r!7292))) b!5199565))

(declare-fun b!5199570 () Bool)

(declare-fun e!3237922 () Bool)

(declare-fun tp!1458427 () Bool)

(assert (=> b!5199570 (= e!3237922 (and tp_is_empty!38799 tp!1458427))))

(assert (=> b!5198818 (= tp!1458305 e!3237922)))

(assert (= (and b!5198818 ((_ is Cons!60496) (t!373773 s!2326))) b!5199570))

(declare-fun b!5199571 () Bool)

(declare-fun e!3237923 () Bool)

(declare-fun tp!1458428 () Bool)

(declare-fun tp!1458429 () Bool)

(assert (=> b!5199571 (= e!3237923 (and tp!1458428 tp!1458429))))

(assert (=> b!5198822 (= tp!1458312 e!3237923)))

(assert (= (and b!5198822 ((_ is Cons!60494) (exprs!4657 (h!66943 zl!343)))) b!5199571))

(declare-fun b_lambda!201277 () Bool)

(assert (= b_lambda!201273 (or b!5198827 b_lambda!201277)))

(declare-fun bs!1209184 () Bool)

(declare-fun d!1677614 () Bool)

(assert (= bs!1209184 (and d!1677614 b!5198827)))

(assert (=> bs!1209184 (= (dynLambda!23908 lambda!260337 (h!66942 (exprs!4657 (h!66943 zl!343)))) (validRegex!6509 (h!66942 (exprs!4657 (h!66943 zl!343)))))))

(declare-fun m!6252576 () Bool)

(assert (=> bs!1209184 m!6252576))

(assert (=> b!5199342 d!1677614))

(declare-fun b_lambda!201279 () Bool)

(assert (= b_lambda!201259 (or b!5198820 b_lambda!201279)))

(declare-fun bs!1209185 () Bool)

(declare-fun d!1677616 () Bool)

(assert (= bs!1209185 (and d!1677616 b!5198820)))

(assert (=> bs!1209185 (= (dynLambda!23907 lambda!260336 lt!2140127) (derivationStepZipperUp!145 lt!2140127 (h!66944 s!2326)))))

(assert (=> bs!1209185 m!6252152))

(assert (=> d!1677518 d!1677616))

(declare-fun b_lambda!201281 () Bool)

(assert (= b_lambda!201275 (or b!5198820 b_lambda!201281)))

(declare-fun bs!1209186 () Bool)

(declare-fun d!1677618 () Bool)

(assert (= bs!1209186 (and d!1677618 b!5198820)))

(assert (=> bs!1209186 (= (dynLambda!23907 lambda!260336 (h!66943 zl!343)) (derivationStepZipperUp!145 (h!66943 zl!343) (h!66944 s!2326)))))

(assert (=> bs!1209186 m!6252126))

(assert (=> d!1677596 d!1677618))

(declare-fun b_lambda!201283 () Bool)

(assert (= b_lambda!201261 (or b!5198820 b_lambda!201283)))

(declare-fun bs!1209187 () Bool)

(declare-fun d!1677620 () Bool)

(assert (= bs!1209187 (and d!1677620 b!5198820)))

(assert (=> bs!1209187 (= (dynLambda!23907 lambda!260336 lt!2140135) (derivationStepZipperUp!145 lt!2140135 (h!66944 s!2326)))))

(assert (=> bs!1209187 m!6252146))

(assert (=> d!1677530 d!1677620))

(check-sat (not b!5199189) (not b!5199373) (not d!1677602) (not b!5198927) (not d!1677512) (not b!5198933) (not bs!1209184) (not b_lambda!201277) (not b!5199535) (not d!1677564) (not b!5199560) (not b!5199559) (not b!5199209) (not bm!365529) (not b!5199553) (not b!5199565) (not b!5199517) (not b!5199510) (not d!1677588) (not d!1677600) (not b!5199141) (not bm!365514) (not d!1677518) (not bm!365504) (not d!1677526) (not b!5199538) (not b_lambda!201281) (not bm!365521) (not b!5199138) (not b!5199200) (not b!5199463) (not b!5199522) (not b!5199534) (not b!5199381) (not b!5199423) (not d!1677490) (not d!1677586) (not d!1677604) (not b!5199540) (not b!5199564) (not d!1677480) (not bm!365503) (not b!5198931) (not b!5199459) (not b!5199539) (not d!1677466) (not bm!365532) (not b!5199367) (not b!5199372) (not b!5199456) (not b!5199370) (not d!1677592) (not setNonEmpty!32950) (not b!5198932) (not b!5199485) (not b!5199508) (not bm!365528) (not b!5199478) (not b!5198929) (not b!5199343) (not d!1677610) (not b!5199197) (not bm!365527) (not b!5199234) (not bm!365481) (not b!5199468) (not bm!365525) tp_is_empty!38799 (not d!1677612) (not bm!365495) (not b!5199466) (not bs!1209186) (not b!5199557) (not b!5199482) (not b!5199571) (not b_lambda!201279) (not b!5199364) (not bm!365497) (not b!5198928) (not b!5199555) (not b!5199556) (not d!1677548) (not d!1677482) (not b!5199515) (not b!5199325) (not b!5199509) (not b!5199545) (not b!5199511) (not bm!365513) (not d!1677566) (not bm!365522) (not b!5199469) (not d!1677530) (not b!5199514) (not b!5199378) (not bm!365502) (not b!5199425) (not bs!1209185) (not d!1677590) (not b!5199366) (not bs!1209187) (not b!5199384) (not d!1677596) (not b!5199561) (not b!5199536) (not b_lambda!201283) (not d!1677552) (not bm!365500) (not bm!365496) (not b!5199563) (not b!5199369) (not bm!365516) (not b!5199552) (not b!5199570) (not d!1677478))
(check-sat)
