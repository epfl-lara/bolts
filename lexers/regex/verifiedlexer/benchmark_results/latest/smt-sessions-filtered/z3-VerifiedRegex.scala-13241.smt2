; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720428 () Bool)

(assert start!720428)

(declare-fun b!7385181 () Bool)

(assert (=> b!7385181 true))

(declare-fun b!7385184 () Bool)

(assert (=> b!7385184 true))

(declare-fun lambda!458875 () Int)

(declare-fun lambda!458874 () Int)

(assert (=> b!7385184 (not (= lambda!458875 lambda!458874))))

(assert (=> b!7385184 true))

(assert (=> b!7385184 true))

(declare-fun b!7385179 () Bool)

(declare-fun e!4420576 () Bool)

(declare-fun tp!2101121 () Bool)

(assert (=> b!7385179 (= e!4420576 tp!2101121)))

(declare-fun b!7385180 () Bool)

(declare-fun res!2978376 () Bool)

(declare-fun e!4420574 () Bool)

(assert (=> b!7385180 (=> (not res!2978376) (not e!4420574))))

(declare-datatypes ((C!38988 0))(
  ( (C!38989 (val!29868 Int)) )
))
(declare-datatypes ((List!71874 0))(
  ( (Nil!71750) (Cons!71750 (h!78198 C!38988) (t!386425 List!71874)) )
))
(declare-fun s!7927 () List!71874)

(declare-fun a!2228 () C!38988)

(get-info :version)

(assert (=> b!7385180 (= res!2978376 (and ((_ is Cons!71750) s!7927) (= (h!78198 s!7927) a!2228)))))

(declare-fun e!4420573 () Bool)

(declare-fun e!4420570 () Bool)

(assert (=> b!7385181 (= e!4420573 (not e!4420570))))

(declare-fun res!2978373 () Bool)

(assert (=> b!7385181 (=> res!2978373 e!4420570)))

(declare-datatypes ((Regex!19357 0))(
  ( (ElementMatch!19357 (c!1372715 C!38988)) (Concat!28202 (regOne!39226 Regex!19357) (regTwo!39226 Regex!19357)) (EmptyExpr!19357) (Star!19357 (reg!19686 Regex!19357)) (EmptyLang!19357) (Union!19357 (regOne!39227 Regex!19357) (regTwo!39227 Regex!19357)) )
))
(declare-datatypes ((List!71875 0))(
  ( (Nil!71751) (Cons!71751 (h!78199 Regex!19357) (t!386426 List!71875)) )
))
(declare-datatypes ((Context!16594 0))(
  ( (Context!16595 (exprs!8797 List!71875)) )
))
(declare-fun lt!2617657 () Context!16594)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2617655 () (InoxSet Context!16594))

(assert (=> b!7385181 (= res!2978373 (not (select lt!2617655 lt!2617657)))))

(declare-fun lambda!458873 () Int)

(declare-fun lt!2617656 () Context!16594)

(declare-fun z!3451 () (InoxSet Context!16594))

(declare-fun flatMapPost!180 ((InoxSet Context!16594) Int Context!16594) Context!16594)

(assert (=> b!7385181 (= (flatMapPost!180 z!3451 lambda!458873 lt!2617657) lt!2617656)))

(declare-fun empty!3439 () Context!16594)

(assert (=> b!7385181 (= lt!2617656 empty!3439)))

(assert (=> b!7385181 true))

(declare-fun e!4420575 () Bool)

(declare-fun inv!91753 (Context!16594) Bool)

(assert (=> b!7385181 (and (inv!91753 empty!3439) e!4420575)))

(declare-fun b!7385182 () Bool)

(declare-fun tp!2101118 () Bool)

(assert (=> b!7385182 (= e!4420575 tp!2101118)))

(declare-fun b!7385183 () Bool)

(assert (=> b!7385183 (= e!4420574 e!4420573)))

(declare-fun res!2978372 () Bool)

(assert (=> b!7385183 (=> (not res!2978372) (not e!4420573))))

(declare-fun lt!2617659 () C!38988)

(declare-fun c!10532 () Context!16594)

(declare-fun lt!2617651 () (InoxSet Context!16594))

(declare-fun derivationStepZipperUp!2763 (Context!16594 C!38988) (InoxSet Context!16594))

(assert (=> b!7385183 (= res!2978372 (= (derivationStepZipperUp!2763 c!10532 lt!2617659) lt!2617651))))

(assert (=> b!7385183 (= lt!2617651 (store ((as const (Array Context!16594 Bool)) false) lt!2617657 true))))

(assert (=> b!7385183 (= lt!2617657 (Context!16595 Nil!71751))))

(declare-fun derivationStepZipper!3643 ((InoxSet Context!16594) C!38988) (InoxSet Context!16594))

(assert (=> b!7385183 (= lt!2617655 (derivationStepZipper!3643 z!3451 lt!2617659))))

(declare-fun head!15100 (List!71874) C!38988)

(assert (=> b!7385183 (= lt!2617659 (head!15100 s!7927))))

(declare-fun res!2978375 () Bool)

(assert (=> start!720428 (=> (not res!2978375) (not e!4420574))))

(assert (=> start!720428 (= res!2978375 (= z!3451 (store ((as const (Array Context!16594 Bool)) false) c!10532 true)))))

(assert (=> start!720428 e!4420574))

(declare-fun condSetEmpty!55859 () Bool)

(assert (=> start!720428 (= condSetEmpty!55859 (= z!3451 ((as const (Array Context!16594 Bool)) false)))))

(declare-fun setRes!55859 () Bool)

(assert (=> start!720428 setRes!55859))

(declare-fun e!4420572 () Bool)

(assert (=> start!720428 (and (inv!91753 c!10532) e!4420572)))

(declare-fun tp_is_empty!48977 () Bool)

(assert (=> start!720428 tp_is_empty!48977))

(declare-fun e!4420569 () Bool)

(assert (=> start!720428 e!4420569))

(declare-fun b!7385178 () Bool)

(declare-datatypes ((Unit!165637 0))(
  ( (Unit!165638) )
))
(declare-fun e!4420571 () Unit!165637)

(declare-fun Unit!165639 () Unit!165637)

(assert (=> b!7385178 (= e!4420571 Unit!165639)))

(declare-fun Unit!165640 () Unit!165637)

(assert (=> b!7385184 (= e!4420571 Unit!165640)))

(declare-fun lt!2617652 () Context!16594)

(declare-fun getWitness!2422 ((InoxSet Context!16594) Int) Context!16594)

(assert (=> b!7385184 (= lt!2617652 (getWitness!2422 lt!2617655 lambda!458874))))

(assert (=> b!7385184 (= (flatMapPost!180 z!3451 lambda!458873 lt!2617652) lt!2617656)))

(declare-fun lt!2617653 () Context!16594)

(assert (=> b!7385184 (= lt!2617653 (getWitness!2422 z!3451 lambda!458875))))

(assert (=> b!7385184 false))

(declare-fun b!7385185 () Bool)

(declare-fun res!2978374 () Bool)

(assert (=> b!7385185 (=> (not res!2978374) (not e!4420574))))

(declare-fun head!15101 (List!71875) Regex!19357)

(assert (=> b!7385185 (= res!2978374 (= (head!15101 (exprs!8797 c!10532)) (ElementMatch!19357 a!2228)))))

(declare-fun b!7385186 () Bool)

(declare-fun res!2978370 () Bool)

(assert (=> b!7385186 (=> (not res!2978370) (not e!4420574))))

(declare-fun isEmpty!40997 (List!71875) Bool)

(declare-fun tail!14764 (List!71875) List!71875)

(assert (=> b!7385186 (= res!2978370 (isEmpty!40997 (tail!14764 (exprs!8797 c!10532))))))

(declare-fun tp!2101122 () Bool)

(declare-fun setNonEmpty!55859 () Bool)

(declare-fun setElem!55859 () Context!16594)

(assert (=> setNonEmpty!55859 (= setRes!55859 (and tp!2101122 (inv!91753 setElem!55859) e!4420576))))

(declare-fun setRest!55859 () (InoxSet Context!16594))

(assert (=> setNonEmpty!55859 (= z!3451 ((_ map or) (store ((as const (Array Context!16594 Bool)) false) setElem!55859 true) setRest!55859))))

(declare-fun b!7385187 () Bool)

(declare-fun tp!2101120 () Bool)

(assert (=> b!7385187 (= e!4420572 tp!2101120)))

(declare-fun b!7385188 () Bool)

(assert (=> b!7385188 (= e!4420570 true)))

(declare-fun lt!2617654 () Bool)

(assert (=> b!7385188 lt!2617654))

(declare-fun lt!2617658 () Unit!165637)

(assert (=> b!7385188 (= lt!2617658 e!4420571)))

(declare-fun c!1372714 () Bool)

(assert (=> b!7385188 (= c!1372714 (not lt!2617654))))

(assert (=> b!7385188 (= lt!2617654 (= lt!2617655 lt!2617651))))

(declare-fun setIsEmpty!55859 () Bool)

(assert (=> setIsEmpty!55859 setRes!55859))

(declare-fun b!7385189 () Bool)

(declare-fun tp!2101119 () Bool)

(assert (=> b!7385189 (= e!4420569 (and tp_is_empty!48977 tp!2101119))))

(declare-fun b!7385190 () Bool)

(declare-fun res!2978371 () Bool)

(assert (=> b!7385190 (=> (not res!2978371) (not e!4420574))))

(assert (=> b!7385190 (= res!2978371 (not (isEmpty!40997 (exprs!8797 c!10532))))))

(assert (= (and start!720428 res!2978375) b!7385190))

(assert (= (and b!7385190 res!2978371) b!7385185))

(assert (= (and b!7385185 res!2978374) b!7385186))

(assert (= (and b!7385186 res!2978370) b!7385180))

(assert (= (and b!7385180 res!2978376) b!7385183))

(assert (= (and b!7385183 res!2978372) b!7385181))

(assert (= b!7385181 b!7385182))

(assert (= (and b!7385181 (not res!2978373)) b!7385188))

(assert (= (and b!7385188 c!1372714) b!7385184))

(assert (= (and b!7385188 (not c!1372714)) b!7385178))

(assert (= (and start!720428 condSetEmpty!55859) setIsEmpty!55859))

(assert (= (and start!720428 (not condSetEmpty!55859)) setNonEmpty!55859))

(assert (= setNonEmpty!55859 b!7385179))

(assert (= start!720428 b!7385187))

(assert (= (and start!720428 ((_ is Cons!71750) s!7927)) b!7385189))

(declare-fun m!8033762 () Bool)

(assert (=> start!720428 m!8033762))

(declare-fun m!8033764 () Bool)

(assert (=> start!720428 m!8033764))

(declare-fun m!8033766 () Bool)

(assert (=> b!7385184 m!8033766))

(declare-fun m!8033768 () Bool)

(assert (=> b!7385184 m!8033768))

(declare-fun m!8033770 () Bool)

(assert (=> b!7385184 m!8033770))

(declare-fun m!8033772 () Bool)

(assert (=> b!7385183 m!8033772))

(declare-fun m!8033774 () Bool)

(assert (=> b!7385183 m!8033774))

(declare-fun m!8033776 () Bool)

(assert (=> b!7385183 m!8033776))

(declare-fun m!8033778 () Bool)

(assert (=> b!7385183 m!8033778))

(declare-fun m!8033780 () Bool)

(assert (=> b!7385181 m!8033780))

(declare-fun m!8033782 () Bool)

(assert (=> b!7385181 m!8033782))

(declare-fun m!8033784 () Bool)

(assert (=> b!7385181 m!8033784))

(declare-fun m!8033786 () Bool)

(assert (=> b!7385185 m!8033786))

(declare-fun m!8033788 () Bool)

(assert (=> b!7385186 m!8033788))

(assert (=> b!7385186 m!8033788))

(declare-fun m!8033790 () Bool)

(assert (=> b!7385186 m!8033790))

(declare-fun m!8033792 () Bool)

(assert (=> b!7385190 m!8033792))

(declare-fun m!8033794 () Bool)

(assert (=> setNonEmpty!55859 m!8033794))

(check-sat (not b!7385181) (not start!720428) (not setNonEmpty!55859) (not b!7385183) (not b!7385190) (not b!7385184) (not b!7385179) (not b!7385186) tp_is_empty!48977 (not b!7385187) (not b!7385182) (not b!7385189) (not b!7385185))
(check-sat)
