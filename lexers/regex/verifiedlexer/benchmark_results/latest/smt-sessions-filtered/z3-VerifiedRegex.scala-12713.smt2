; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!702898 () Bool)

(assert start!702898)

(declare-fun b!7237867 () Bool)

(assert (=> b!7237867 true))

(declare-fun b!7237866 () Bool)

(assert (=> b!7237866 true))

(declare-fun b!7237860 () Bool)

(declare-fun e!4339284 () Bool)

(declare-fun e!4339285 () Bool)

(assert (=> b!7237860 (= e!4339284 e!4339285)))

(declare-fun res!2936311 () Bool)

(assert (=> b!7237860 (=> (not res!2936311) (not e!4339285))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37344 0))(
  ( (C!37345 (val!28620 Int)) )
))
(declare-datatypes ((Regex!18535 0))(
  ( (ElementMatch!18535 (c!1343603 C!37344)) (Concat!27380 (regOne!37582 Regex!18535) (regTwo!37582 Regex!18535)) (EmptyExpr!18535) (Star!18535 (reg!18864 Regex!18535)) (EmptyLang!18535) (Union!18535 (regOne!37583 Regex!18535) (regTwo!37583 Regex!18535)) )
))
(declare-datatypes ((List!70213 0))(
  ( (Nil!70089) (Cons!70089 (h!76537 Regex!18535) (t!384264 List!70213)) )
))
(declare-datatypes ((Context!14950 0))(
  ( (Context!14951 (exprs!7975 List!70213)) )
))
(declare-fun lt!2577076 () (InoxSet Context!14950))

(declare-datatypes ((List!70214 0))(
  ( (Nil!70090) (Cons!70090 (h!76538 C!37344) (t!384265 List!70214)) )
))
(declare-fun s1!1971 () List!70214)

(declare-fun matchZipper!3445 ((InoxSet Context!14950) List!70214) Bool)

(assert (=> b!7237860 (= res!2936311 (matchZipper!3445 lt!2577076 (t!384265 s1!1971)))))

(declare-fun lt!2577085 () (InoxSet Context!14950))

(declare-fun derivationStepZipper!3327 ((InoxSet Context!14950) C!37344) (InoxSet Context!14950))

(assert (=> b!7237860 (= lt!2577076 (derivationStepZipper!3327 lt!2577085 (h!76538 s1!1971)))))

(declare-fun b!7237861 () Bool)

(declare-fun e!4339279 () Bool)

(declare-fun e!4339282 () Bool)

(assert (=> b!7237861 (= e!4339279 e!4339282)))

(declare-fun res!2936307 () Bool)

(assert (=> b!7237861 (=> res!2936307 e!4339282)))

(declare-fun lt!2577058 () List!70213)

(declare-fun isEmpty!40393 (List!70213) Bool)

(assert (=> b!7237861 (= res!2936307 (isEmpty!40393 lt!2577058))))

(declare-datatypes ((Unit!163614 0))(
  ( (Unit!163615) )
))
(declare-fun lt!2577073 () Unit!163614)

(declare-fun ct1!232 () Context!14950)

(declare-fun lambda!440860 () Int)

(declare-fun ct2!328 () Context!14950)

(declare-fun lemmaConcatPreservesForall!1344 (List!70213 List!70213 Int) Unit!163614)

(assert (=> b!7237861 (= lt!2577073 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577064 () (InoxSet Context!14950))

(declare-fun lt!2577089 () Context!14950)

(declare-fun derivationStepZipperUp!2409 (Context!14950 C!37344) (InoxSet Context!14950))

(assert (=> b!7237861 (= lt!2577064 (derivationStepZipperUp!2409 lt!2577089 (h!76538 s1!1971)))))

(declare-fun lt!2577061 () Unit!163614)

(assert (=> b!7237861 (= lt!2577061 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577062 () (InoxSet Context!14950))

(declare-fun lt!2577081 () Context!14950)

(declare-fun derivationStepZipperDown!2579 (Regex!18535 Context!14950 C!37344) (InoxSet Context!14950))

(assert (=> b!7237861 (= lt!2577062 (derivationStepZipperDown!2579 (h!76537 (exprs!7975 ct1!232)) lt!2577081 (h!76538 s1!1971)))))

(declare-fun tail!14180 (List!70213) List!70213)

(assert (=> b!7237861 (= lt!2577081 (Context!14951 (tail!14180 (exprs!7975 ct1!232))))))

(declare-fun res!2936310 () Bool)

(declare-fun e!4339289 () Bool)

(assert (=> start!702898 (=> (not res!2936310) (not e!4339289))))

(assert (=> start!702898 (= res!2936310 (matchZipper!3445 lt!2577085 s1!1971))))

(assert (=> start!702898 (= lt!2577085 (store ((as const (Array Context!14950 Bool)) false) ct1!232 true))))

(assert (=> start!702898 e!4339289))

(declare-fun e!4339278 () Bool)

(declare-fun inv!89347 (Context!14950) Bool)

(assert (=> start!702898 (and (inv!89347 ct1!232) e!4339278)))

(declare-fun e!4339280 () Bool)

(assert (=> start!702898 e!4339280))

(declare-fun e!4339290 () Bool)

(assert (=> start!702898 e!4339290))

(declare-fun e!4339288 () Bool)

(assert (=> start!702898 (and (inv!89347 ct2!328) e!4339288)))

(declare-fun b!7237862 () Bool)

(declare-fun res!2936309 () Bool)

(assert (=> b!7237862 (=> (not res!2936309) (not e!4339289))))

(declare-fun s2!1849 () List!70214)

(assert (=> b!7237862 (= res!2936309 (matchZipper!3445 (store ((as const (Array Context!14950 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7237863 () Bool)

(declare-fun tp!2034837 () Bool)

(assert (=> b!7237863 (= e!4339288 tp!2034837)))

(declare-fun b!7237864 () Bool)

(assert (=> b!7237864 (= e!4339289 e!4339284)))

(declare-fun res!2936308 () Bool)

(assert (=> b!7237864 (=> (not res!2936308) (not e!4339284))))

(get-info :version)

(assert (=> b!7237864 (= res!2936308 (and (not ((_ is Nil!70089) (exprs!7975 ct1!232))) ((_ is Cons!70090) s1!1971)))))

(declare-fun lt!2577080 () (InoxSet Context!14950))

(assert (=> b!7237864 (= lt!2577080 (store ((as const (Array Context!14950 Bool)) false) lt!2577089 true))))

(assert (=> b!7237864 (= lt!2577089 (Context!14951 lt!2577058))))

(declare-fun ++!16370 (List!70213 List!70213) List!70213)

(assert (=> b!7237864 (= lt!2577058 (++!16370 (exprs!7975 ct1!232) (exprs!7975 ct2!328)))))

(declare-fun lt!2577072 () Unit!163614)

(assert (=> b!7237864 (= lt!2577072 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun b!7237865 () Bool)

(declare-fun e!4339286 () Unit!163614)

(declare-fun Unit!163616 () Unit!163614)

(assert (=> b!7237865 (= e!4339286 Unit!163616)))

(declare-fun lt!2577083 () Unit!163614)

(assert (=> b!7237865 (= lt!2577083 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577065 () (InoxSet Context!14950))

(assert (=> b!7237865 (= lt!2577065 (derivationStepZipperUp!2409 lt!2577081 (h!76538 s1!1971)))))

(declare-fun lt!2577084 () Unit!163614)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1682 ((InoxSet Context!14950) (InoxSet Context!14950) List!70214) Unit!163614)

(assert (=> b!7237865 (= lt!2577084 (lemmaZipperConcatMatchesSameAsBothZippers!1682 lt!2577062 lt!2577065 (t!384265 s1!1971)))))

(declare-fun res!2936304 () Bool)

(assert (=> b!7237865 (= res!2936304 (matchZipper!3445 lt!2577062 (t!384265 s1!1971)))))

(declare-fun e!4339283 () Bool)

(assert (=> b!7237865 (=> res!2936304 e!4339283)))

(assert (=> b!7237865 (= (matchZipper!3445 ((_ map or) lt!2577062 lt!2577065) (t!384265 s1!1971)) e!4339283)))

(declare-fun lt!2577087 () Unit!163614)

(assert (=> b!7237865 (= lt!2577087 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577078 () (InoxSet Context!14950))

(declare-fun lt!2577082 () Context!14950)

(assert (=> b!7237865 (= lt!2577078 (derivationStepZipperUp!2409 lt!2577082 (h!76538 s1!1971)))))

(declare-fun lt!2577088 () (InoxSet Context!14950))

(declare-fun lt!2577077 () Unit!163614)

(declare-fun lt!2577075 () List!70214)

(assert (=> b!7237865 (= lt!2577077 (lemmaZipperConcatMatchesSameAsBothZippers!1682 lt!2577088 lt!2577078 lt!2577075))))

(declare-fun res!2936303 () Bool)

(assert (=> b!7237865 (= res!2936303 (matchZipper!3445 lt!2577088 lt!2577075))))

(declare-fun e!4339287 () Bool)

(assert (=> b!7237865 (=> res!2936303 e!4339287)))

(assert (=> b!7237865 (= (matchZipper!3445 ((_ map or) lt!2577088 lt!2577078) lt!2577075) e!4339287)))

(assert (=> b!7237866 (= e!4339282 true)))

(declare-fun tail!14181 (List!70214) List!70214)

(declare-fun ++!16371 (List!70214 List!70214) List!70214)

(assert (=> b!7237866 (= (tail!14181 (++!16371 s1!1971 s2!1849)) lt!2577075)))

(declare-fun lt!2577074 () Unit!163614)

(assert (=> b!7237866 (= lt!2577074 e!4339286)))

(declare-fun c!1343602 () Bool)

(declare-fun nullable!7848 (Regex!18535) Bool)

(assert (=> b!7237866 (= c!1343602 (nullable!7848 (h!76537 (exprs!7975 ct1!232))))))

(declare-fun lambda!440862 () Int)

(declare-fun flatMap!2739 ((InoxSet Context!14950) Int) (InoxSet Context!14950))

(assert (=> b!7237866 (= (flatMap!2739 lt!2577080 lambda!440862) (derivationStepZipperUp!2409 lt!2577089 (h!76538 s1!1971)))))

(declare-fun lt!2577069 () Unit!163614)

(declare-fun lemmaFlatMapOnSingletonSet!2166 ((InoxSet Context!14950) Context!14950 Int) Unit!163614)

(assert (=> b!7237866 (= lt!2577069 (lemmaFlatMapOnSingletonSet!2166 lt!2577080 lt!2577089 lambda!440862))))

(declare-fun lt!2577070 () Unit!163614)

(assert (=> b!7237866 (= lt!2577070 (lemmaConcatPreservesForall!1344 (exprs!7975 ct1!232) (exprs!7975 ct2!328) lambda!440860))))

(assert (=> b!7237866 (= (flatMap!2739 lt!2577085 lambda!440862) (derivationStepZipperUp!2409 ct1!232 (h!76538 s1!1971)))))

(declare-fun lt!2577067 () Unit!163614)

(assert (=> b!7237866 (= lt!2577067 (lemmaFlatMapOnSingletonSet!2166 lt!2577085 ct1!232 lambda!440862))))

(assert (=> b!7237866 (= lt!2577088 (derivationStepZipperDown!2579 (h!76537 (exprs!7975 ct1!232)) lt!2577082 (h!76538 s1!1971)))))

(assert (=> b!7237866 (= lt!2577082 (Context!14951 (tail!14180 lt!2577058)))))

(declare-fun e!4339281 () Bool)

(assert (=> b!7237867 (= e!4339285 (not e!4339281))))

(declare-fun res!2936305 () Bool)

(assert (=> b!7237867 (=> res!2936305 e!4339281)))

(declare-fun lambda!440861 () Int)

(declare-fun exists!4213 ((InoxSet Context!14950) Int) Bool)

(assert (=> b!7237867 (= res!2936305 (not (exists!4213 lt!2577076 lambda!440861)))))

(declare-datatypes ((List!70215 0))(
  ( (Nil!70091) (Cons!70091 (h!76539 Context!14950) (t!384266 List!70215)) )
))
(declare-fun lt!2577079 () List!70215)

(declare-fun exists!4214 (List!70215 Int) Bool)

(assert (=> b!7237867 (exists!4214 lt!2577079 lambda!440861)))

(declare-fun lt!2577068 () Unit!163614)

(declare-fun lemmaZipperMatchesExistsMatchingContext!678 (List!70215 List!70214) Unit!163614)

(assert (=> b!7237867 (= lt!2577068 (lemmaZipperMatchesExistsMatchingContext!678 lt!2577079 (t!384265 s1!1971)))))

(declare-fun toList!11392 ((InoxSet Context!14950)) List!70215)

(assert (=> b!7237867 (= lt!2577079 (toList!11392 lt!2577076))))

(declare-fun b!7237868 () Bool)

(assert (=> b!7237868 (= e!4339281 e!4339279)))

(declare-fun res!2936306 () Bool)

(assert (=> b!7237868 (=> res!2936306 e!4339279)))

(assert (=> b!7237868 (= res!2936306 (isEmpty!40393 (exprs!7975 ct1!232)))))

(declare-fun lt!2577071 () (InoxSet Context!14950))

(assert (=> b!7237868 (= lt!2577071 (derivationStepZipperUp!2409 ct1!232 (h!76538 s1!1971)))))

(declare-fun lt!2577066 () Unit!163614)

(declare-fun lt!2577059 () Context!14950)

(assert (=> b!7237868 (= lt!2577066 (lemmaConcatPreservesForall!1344 (exprs!7975 lt!2577059) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577086 () List!70213)

(assert (=> b!7237868 (matchZipper!3445 (store ((as const (Array Context!14950 Bool)) false) (Context!14951 lt!2577086) true) lt!2577075)))

(assert (=> b!7237868 (= lt!2577075 (++!16371 (t!384265 s1!1971) s2!1849))))

(assert (=> b!7237868 (= lt!2577086 (++!16370 (exprs!7975 lt!2577059) (exprs!7975 ct2!328)))))

(declare-fun lt!2577063 () Unit!163614)

(assert (=> b!7237868 (= lt!2577063 (lemmaConcatPreservesForall!1344 (exprs!7975 lt!2577059) (exprs!7975 ct2!328) lambda!440860))))

(declare-fun lt!2577060 () Unit!163614)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!326 (Context!14950 Context!14950 List!70214 List!70214) Unit!163614)

(assert (=> b!7237868 (= lt!2577060 (lemmaConcatenateContextMatchesConcatOfStrings!326 lt!2577059 ct2!328 (t!384265 s1!1971) s2!1849))))

(declare-fun getWitness!2077 ((InoxSet Context!14950) Int) Context!14950)

(assert (=> b!7237868 (= lt!2577059 (getWitness!2077 lt!2577076 lambda!440861))))

(declare-fun b!7237869 () Bool)

(declare-fun tp_is_empty!46535 () Bool)

(declare-fun tp!2034840 () Bool)

(assert (=> b!7237869 (= e!4339290 (and tp_is_empty!46535 tp!2034840))))

(declare-fun b!7237870 () Bool)

(declare-fun tp!2034838 () Bool)

(assert (=> b!7237870 (= e!4339280 (and tp_is_empty!46535 tp!2034838))))

(declare-fun b!7237871 () Bool)

(assert (=> b!7237871 (= e!4339283 (matchZipper!3445 lt!2577065 (t!384265 s1!1971)))))

(declare-fun b!7237872 () Bool)

(declare-fun tp!2034839 () Bool)

(assert (=> b!7237872 (= e!4339278 tp!2034839)))

(declare-fun b!7237873 () Bool)

(declare-fun Unit!163617 () Unit!163614)

(assert (=> b!7237873 (= e!4339286 Unit!163617)))

(declare-fun b!7237874 () Bool)

(assert (=> b!7237874 (= e!4339287 (matchZipper!3445 lt!2577078 lt!2577075))))

(assert (= (and start!702898 res!2936310) b!7237862))

(assert (= (and b!7237862 res!2936309) b!7237864))

(assert (= (and b!7237864 res!2936308) b!7237860))

(assert (= (and b!7237860 res!2936311) b!7237867))

(assert (= (and b!7237867 (not res!2936305)) b!7237868))

(assert (= (and b!7237868 (not res!2936306)) b!7237861))

(assert (= (and b!7237861 (not res!2936307)) b!7237866))

(assert (= (and b!7237866 c!1343602) b!7237865))

(assert (= (and b!7237866 (not c!1343602)) b!7237873))

(assert (= (and b!7237865 (not res!2936304)) b!7237871))

(assert (= (and b!7237865 (not res!2936303)) b!7237874))

(assert (= start!702898 b!7237872))

(assert (= (and start!702898 ((_ is Cons!70090) s1!1971)) b!7237870))

(assert (= (and start!702898 ((_ is Cons!70090) s2!1849)) b!7237869))

(assert (= start!702898 b!7237863))

(declare-fun m!7909654 () Bool)

(assert (=> b!7237862 m!7909654))

(assert (=> b!7237862 m!7909654))

(declare-fun m!7909656 () Bool)

(assert (=> b!7237862 m!7909656))

(declare-fun m!7909658 () Bool)

(assert (=> b!7237860 m!7909658))

(declare-fun m!7909660 () Bool)

(assert (=> b!7237860 m!7909660))

(declare-fun m!7909662 () Bool)

(assert (=> b!7237861 m!7909662))

(declare-fun m!7909664 () Bool)

(assert (=> b!7237861 m!7909664))

(declare-fun m!7909666 () Bool)

(assert (=> b!7237861 m!7909666))

(assert (=> b!7237861 m!7909664))

(declare-fun m!7909668 () Bool)

(assert (=> b!7237861 m!7909668))

(declare-fun m!7909670 () Bool)

(assert (=> b!7237861 m!7909670))

(declare-fun m!7909672 () Bool)

(assert (=> b!7237867 m!7909672))

(declare-fun m!7909674 () Bool)

(assert (=> b!7237867 m!7909674))

(declare-fun m!7909676 () Bool)

(assert (=> b!7237867 m!7909676))

(declare-fun m!7909678 () Bool)

(assert (=> b!7237867 m!7909678))

(declare-fun m!7909680 () Bool)

(assert (=> b!7237864 m!7909680))

(declare-fun m!7909682 () Bool)

(assert (=> b!7237864 m!7909682))

(assert (=> b!7237864 m!7909664))

(declare-fun m!7909684 () Bool)

(assert (=> b!7237871 m!7909684))

(declare-fun m!7909686 () Bool)

(assert (=> b!7237865 m!7909686))

(declare-fun m!7909688 () Bool)

(assert (=> b!7237865 m!7909688))

(declare-fun m!7909690 () Bool)

(assert (=> b!7237865 m!7909690))

(declare-fun m!7909692 () Bool)

(assert (=> b!7237865 m!7909692))

(assert (=> b!7237865 m!7909664))

(declare-fun m!7909694 () Bool)

(assert (=> b!7237865 m!7909694))

(declare-fun m!7909696 () Bool)

(assert (=> b!7237865 m!7909696))

(declare-fun m!7909698 () Bool)

(assert (=> b!7237865 m!7909698))

(assert (=> b!7237865 m!7909664))

(declare-fun m!7909700 () Bool)

(assert (=> b!7237865 m!7909700))

(declare-fun m!7909702 () Bool)

(assert (=> b!7237866 m!7909702))

(declare-fun m!7909704 () Bool)

(assert (=> b!7237866 m!7909704))

(declare-fun m!7909706 () Bool)

(assert (=> b!7237866 m!7909706))

(declare-fun m!7909708 () Bool)

(assert (=> b!7237866 m!7909708))

(declare-fun m!7909710 () Bool)

(assert (=> b!7237866 m!7909710))

(declare-fun m!7909712 () Bool)

(assert (=> b!7237866 m!7909712))

(declare-fun m!7909714 () Bool)

(assert (=> b!7237866 m!7909714))

(assert (=> b!7237866 m!7909662))

(assert (=> b!7237866 m!7909664))

(declare-fun m!7909716 () Bool)

(assert (=> b!7237866 m!7909716))

(declare-fun m!7909718 () Bool)

(assert (=> b!7237866 m!7909718))

(assert (=> b!7237866 m!7909712))

(declare-fun m!7909720 () Bool)

(assert (=> b!7237866 m!7909720))

(declare-fun m!7909722 () Bool)

(assert (=> b!7237874 m!7909722))

(declare-fun m!7909724 () Bool)

(assert (=> start!702898 m!7909724))

(declare-fun m!7909726 () Bool)

(assert (=> start!702898 m!7909726))

(declare-fun m!7909728 () Bool)

(assert (=> start!702898 m!7909728))

(declare-fun m!7909730 () Bool)

(assert (=> start!702898 m!7909730))

(declare-fun m!7909732 () Bool)

(assert (=> b!7237868 m!7909732))

(declare-fun m!7909734 () Bool)

(assert (=> b!7237868 m!7909734))

(declare-fun m!7909736 () Bool)

(assert (=> b!7237868 m!7909736))

(assert (=> b!7237868 m!7909736))

(assert (=> b!7237868 m!7909708))

(declare-fun m!7909738 () Bool)

(assert (=> b!7237868 m!7909738))

(declare-fun m!7909740 () Bool)

(assert (=> b!7237868 m!7909740))

(declare-fun m!7909742 () Bool)

(assert (=> b!7237868 m!7909742))

(declare-fun m!7909744 () Bool)

(assert (=> b!7237868 m!7909744))

(declare-fun m!7909746 () Bool)

(assert (=> b!7237868 m!7909746))

(assert (=> b!7237868 m!7909740))

(check-sat (not b!7237872) (not b!7237867) (not b!7237864) (not b!7237874) (not b!7237871) (not b!7237868) (not b!7237869) (not b!7237861) (not b!7237870) (not b!7237866) (not b!7237860) (not b!7237862) (not b!7237863) (not start!702898) (not b!7237865) tp_is_empty!46535)
(check-sat)
