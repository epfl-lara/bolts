; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!578374 () Bool)

(assert start!578374)

(declare-fun b!5555888 () Bool)

(assert (=> b!5555888 true))

(assert (=> b!5555888 true))

(declare-fun lambda!298140 () Int)

(declare-fun lambda!298139 () Int)

(assert (=> b!5555888 (not (= lambda!298140 lambda!298139))))

(assert (=> b!5555888 true))

(assert (=> b!5555888 true))

(declare-fun b!5555886 () Bool)

(assert (=> b!5555886 true))

(declare-fun b!5555877 () Bool)

(declare-fun res!2361621 () Bool)

(declare-fun e!3431244 () Bool)

(assert (=> b!5555877 (=> (not res!2361621) (not e!3431244))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31356 0))(
  ( (C!31357 (val!25380 Int)) )
))
(declare-datatypes ((Regex!15543 0))(
  ( (ElementMatch!15543 (c!972627 C!31356)) (Concat!24388 (regOne!31598 Regex!15543) (regTwo!31598 Regex!15543)) (EmptyExpr!15543) (Star!15543 (reg!15872 Regex!15543)) (EmptyLang!15543) (Union!15543 (regOne!31599 Regex!15543) (regTwo!31599 Regex!15543)) )
))
(declare-datatypes ((List!62928 0))(
  ( (Nil!62804) (Cons!62804 (h!69252 Regex!15543) (t!376193 List!62928)) )
))
(declare-datatypes ((Context!9854 0))(
  ( (Context!9855 (exprs!5427 List!62928)) )
))
(declare-fun z!1189 () (InoxSet Context!9854))

(declare-datatypes ((List!62929 0))(
  ( (Nil!62805) (Cons!62805 (h!69253 Context!9854) (t!376194 List!62929)) )
))
(declare-fun zl!343 () List!62929)

(declare-fun toList!9327 ((InoxSet Context!9854)) List!62929)

(assert (=> b!5555877 (= res!2361621 (= (toList!9327 z!1189) zl!343))))

(declare-datatypes ((List!62930 0))(
  ( (Nil!62806) (Cons!62806 (h!69254 C!31356) (t!376195 List!62930)) )
))
(declare-fun s!2326 () List!62930)

(declare-fun lt!2251093 () (InoxSet Context!9854))

(declare-fun e!3431245 () Bool)

(declare-fun b!5555878 () Bool)

(declare-fun matchZipper!1681 ((InoxSet Context!9854) List!62930) Bool)

(assert (=> b!5555878 (= e!3431245 (= (matchZipper!1681 lt!2251093 (t!376195 s!2326)) (matchZipper!1681 z!1189 s!2326)))))

(declare-fun b!5555879 () Bool)

(declare-fun res!2361615 () Bool)

(declare-fun e!3431248 () Bool)

(assert (=> b!5555879 (=> res!2361615 e!3431248)))

(declare-fun r!7292 () Regex!15543)

(get-info :version)

(assert (=> b!5555879 (= res!2361615 (or ((_ is EmptyExpr!15543) r!7292) ((_ is EmptyLang!15543) r!7292) ((_ is ElementMatch!15543) r!7292) ((_ is Union!15543) r!7292) (not ((_ is Concat!24388) r!7292))))))

(declare-fun b!5555880 () Bool)

(declare-fun res!2361623 () Bool)

(assert (=> b!5555880 (=> res!2361623 e!3431248)))

(declare-fun generalisedConcat!1158 (List!62928) Regex!15543)

(assert (=> b!5555880 (= res!2361623 (not (= r!7292 (generalisedConcat!1158 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5555881 () Bool)

(declare-fun e!3431247 () Bool)

(declare-fun tp!1532846 () Bool)

(declare-fun e!3431241 () Bool)

(declare-fun inv!82104 (Context!9854) Bool)

(assert (=> b!5555881 (= e!3431241 (and (inv!82104 (h!69253 zl!343)) e!3431247 tp!1532846))))

(declare-fun b!5555882 () Bool)

(declare-fun e!3431246 () Bool)

(declare-fun tp_is_empty!40339 () Bool)

(declare-fun tp!1532849 () Bool)

(assert (=> b!5555882 (= e!3431246 (and tp_is_empty!40339 tp!1532849))))

(declare-fun b!5555883 () Bool)

(declare-fun e!3431242 () Bool)

(assert (=> b!5555883 (= e!3431242 tp_is_empty!40339)))

(declare-fun b!5555884 () Bool)

(declare-fun res!2361619 () Bool)

(declare-fun e!3431240 () Bool)

(assert (=> b!5555884 (=> res!2361619 e!3431240)))

(declare-fun isEmpty!34600 (List!62928) Bool)

(assert (=> b!5555884 (= res!2361619 (isEmpty!34600 (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5555885 () Bool)

(declare-fun tp!1532851 () Bool)

(assert (=> b!5555885 (= e!3431247 tp!1532851)))

(assert (=> b!5555886 (= e!3431240 e!3431245)))

(declare-fun res!2361620 () Bool)

(assert (=> b!5555886 (=> res!2361620 e!3431245)))

(declare-fun nullable!5575 (Regex!15543) Bool)

(assert (=> b!5555886 (= res!2361620 (nullable!5575 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun lambda!298141 () Int)

(declare-fun flatMap!1156 ((InoxSet Context!9854) Int) (InoxSet Context!9854))

(declare-fun derivationStepZipperUp!811 (Context!9854 C!31356) (InoxSet Context!9854))

(assert (=> b!5555886 (= (flatMap!1156 z!1189 lambda!298141) (derivationStepZipperUp!811 (h!69253 zl!343) (h!69254 s!2326)))))

(declare-datatypes ((Unit!155546 0))(
  ( (Unit!155547) )
))
(declare-fun lt!2251090 () Unit!155546)

(declare-fun lemmaFlatMapOnSingletonSet!688 ((InoxSet Context!9854) Context!9854 Int) Unit!155546)

(assert (=> b!5555886 (= lt!2251090 (lemmaFlatMapOnSingletonSet!688 z!1189 (h!69253 zl!343) lambda!298141))))

(declare-fun lt!2251088 () (InoxSet Context!9854))

(declare-fun lt!2251092 () Context!9854)

(assert (=> b!5555886 (= lt!2251088 (derivationStepZipperUp!811 lt!2251092 (h!69254 s!2326)))))

(declare-fun derivationStepZipperDown!885 (Regex!15543 Context!9854 C!31356) (InoxSet Context!9854))

(assert (=> b!5555886 (= lt!2251093 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (h!69253 zl!343))) lt!2251092 (h!69254 s!2326)))))

(assert (=> b!5555886 (= lt!2251092 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun lt!2251089 () (InoxSet Context!9854))

(assert (=> b!5555886 (= lt!2251089 (derivationStepZipperUp!811 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))) (h!69254 s!2326)))))

(declare-fun b!5555887 () Bool)

(declare-fun tp!1532845 () Bool)

(declare-fun tp!1532844 () Bool)

(assert (=> b!5555887 (= e!3431242 (and tp!1532845 tp!1532844))))

(assert (=> b!5555888 (= e!3431248 e!3431240)))

(declare-fun res!2361624 () Bool)

(assert (=> b!5555888 (=> res!2361624 e!3431240)))

(declare-fun lt!2251084 () Bool)

(declare-fun lt!2251091 () Bool)

(assert (=> b!5555888 (= res!2361624 (or (not (= lt!2251091 lt!2251084)) ((_ is Nil!62806) s!2326)))))

(declare-fun Exists!2643 (Int) Bool)

(assert (=> b!5555888 (= (Exists!2643 lambda!298139) (Exists!2643 lambda!298140))))

(declare-fun lt!2251087 () Unit!155546)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1272 (Regex!15543 Regex!15543 List!62930) Unit!155546)

(assert (=> b!5555888 (= lt!2251087 (lemmaExistCutMatchRandMatchRSpecEquivalent!1272 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326))))

(assert (=> b!5555888 (= lt!2251084 (Exists!2643 lambda!298139))))

(declare-datatypes ((tuple2!65280 0))(
  ( (tuple2!65281 (_1!35943 List!62930) (_2!35943 List!62930)) )
))
(declare-datatypes ((Option!15552 0))(
  ( (None!15551) (Some!15551 (v!51590 tuple2!65280)) )
))
(declare-fun isDefined!12255 (Option!15552) Bool)

(declare-fun findConcatSeparation!1966 (Regex!15543 Regex!15543 List!62930 List!62930 List!62930) Option!15552)

(assert (=> b!5555888 (= lt!2251084 (isDefined!12255 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326)))))

(declare-fun lt!2251086 () Unit!155546)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1730 (Regex!15543 Regex!15543 List!62930) Unit!155546)

(assert (=> b!5555888 (= lt!2251086 (lemmaFindConcatSeparationEquivalentToExists!1730 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326))))

(declare-fun b!5555889 () Bool)

(declare-fun res!2361614 () Bool)

(assert (=> b!5555889 (=> res!2361614 e!3431245)))

(declare-fun derivationStepZipper!1644 ((InoxSet Context!9854) C!31356) (InoxSet Context!9854))

(assert (=> b!5555889 (= res!2361614 (not (= (derivationStepZipper!1644 z!1189 (h!69254 s!2326)) lt!2251093)))))

(declare-fun setElem!36981 () Context!9854)

(declare-fun e!3431243 () Bool)

(declare-fun tp!1532848 () Bool)

(declare-fun setNonEmpty!36981 () Bool)

(declare-fun setRes!36981 () Bool)

(assert (=> setNonEmpty!36981 (= setRes!36981 (and tp!1532848 (inv!82104 setElem!36981) e!3431243))))

(declare-fun setRest!36981 () (InoxSet Context!9854))

(assert (=> setNonEmpty!36981 (= z!1189 ((_ map or) (store ((as const (Array Context!9854 Bool)) false) setElem!36981 true) setRest!36981))))

(declare-fun b!5555890 () Bool)

(declare-fun tp!1532847 () Bool)

(declare-fun tp!1532843 () Bool)

(assert (=> b!5555890 (= e!3431242 (and tp!1532847 tp!1532843))))

(declare-fun b!5555891 () Bool)

(assert (=> b!5555891 (= e!3431244 (not e!3431248))))

(declare-fun res!2361622 () Bool)

(assert (=> b!5555891 (=> res!2361622 e!3431248)))

(assert (=> b!5555891 (= res!2361622 (not ((_ is Cons!62805) zl!343)))))

(declare-fun matchRSpec!2646 (Regex!15543 List!62930) Bool)

(assert (=> b!5555891 (= lt!2251091 (matchRSpec!2646 r!7292 s!2326))))

(declare-fun matchR!7728 (Regex!15543 List!62930) Bool)

(assert (=> b!5555891 (= lt!2251091 (matchR!7728 r!7292 s!2326))))

(declare-fun lt!2251085 () Unit!155546)

(declare-fun mainMatchTheorem!2646 (Regex!15543 List!62930) Unit!155546)

(assert (=> b!5555891 (= lt!2251085 (mainMatchTheorem!2646 r!7292 s!2326))))

(declare-fun b!5555892 () Bool)

(declare-fun res!2361616 () Bool)

(assert (=> b!5555892 (=> res!2361616 e!3431245)))

(assert (=> b!5555892 (= res!2361616 (not (= lt!2251089 lt!2251093)))))

(declare-fun b!5555893 () Bool)

(declare-fun tp!1532850 () Bool)

(assert (=> b!5555893 (= e!3431242 tp!1532850)))

(declare-fun b!5555894 () Bool)

(declare-fun res!2361617 () Bool)

(assert (=> b!5555894 (=> res!2361617 e!3431248)))

(declare-fun generalisedUnion!1406 (List!62928) Regex!15543)

(declare-fun unfocusZipperList!971 (List!62929) List!62928)

(assert (=> b!5555894 (= res!2361617 (not (= r!7292 (generalisedUnion!1406 (unfocusZipperList!971 zl!343)))))))

(declare-fun setIsEmpty!36981 () Bool)

(assert (=> setIsEmpty!36981 setRes!36981))

(declare-fun res!2361612 () Bool)

(assert (=> start!578374 (=> (not res!2361612) (not e!3431244))))

(declare-fun validRegex!7279 (Regex!15543) Bool)

(assert (=> start!578374 (= res!2361612 (validRegex!7279 r!7292))))

(assert (=> start!578374 e!3431244))

(assert (=> start!578374 e!3431242))

(declare-fun condSetEmpty!36981 () Bool)

(assert (=> start!578374 (= condSetEmpty!36981 (= z!1189 ((as const (Array Context!9854 Bool)) false)))))

(assert (=> start!578374 setRes!36981))

(assert (=> start!578374 e!3431241))

(assert (=> start!578374 e!3431246))

(declare-fun b!5555895 () Bool)

(declare-fun res!2361618 () Bool)

(assert (=> b!5555895 (=> (not res!2361618) (not e!3431244))))

(declare-fun unfocusZipper!1285 (List!62929) Regex!15543)

(assert (=> b!5555895 (= res!2361618 (= r!7292 (unfocusZipper!1285 zl!343)))))

(declare-fun b!5555896 () Bool)

(declare-fun res!2361613 () Bool)

(assert (=> b!5555896 (=> res!2361613 e!3431248)))

(declare-fun isEmpty!34601 (List!62929) Bool)

(assert (=> b!5555896 (= res!2361613 (not (isEmpty!34601 (t!376194 zl!343))))))

(declare-fun b!5555897 () Bool)

(declare-fun tp!1532842 () Bool)

(assert (=> b!5555897 (= e!3431243 tp!1532842)))

(declare-fun b!5555898 () Bool)

(declare-fun res!2361611 () Bool)

(assert (=> b!5555898 (=> res!2361611 e!3431248)))

(assert (=> b!5555898 (= res!2361611 (not ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343)))))))

(assert (= (and start!578374 res!2361612) b!5555877))

(assert (= (and b!5555877 res!2361621) b!5555895))

(assert (= (and b!5555895 res!2361618) b!5555891))

(assert (= (and b!5555891 (not res!2361622)) b!5555896))

(assert (= (and b!5555896 (not res!2361613)) b!5555880))

(assert (= (and b!5555880 (not res!2361623)) b!5555898))

(assert (= (and b!5555898 (not res!2361611)) b!5555894))

(assert (= (and b!5555894 (not res!2361617)) b!5555879))

(assert (= (and b!5555879 (not res!2361615)) b!5555888))

(assert (= (and b!5555888 (not res!2361624)) b!5555884))

(assert (= (and b!5555884 (not res!2361619)) b!5555886))

(assert (= (and b!5555886 (not res!2361620)) b!5555892))

(assert (= (and b!5555892 (not res!2361616)) b!5555889))

(assert (= (and b!5555889 (not res!2361614)) b!5555878))

(assert (= (and start!578374 ((_ is ElementMatch!15543) r!7292)) b!5555883))

(assert (= (and start!578374 ((_ is Concat!24388) r!7292)) b!5555890))

(assert (= (and start!578374 ((_ is Star!15543) r!7292)) b!5555893))

(assert (= (and start!578374 ((_ is Union!15543) r!7292)) b!5555887))

(assert (= (and start!578374 condSetEmpty!36981) setIsEmpty!36981))

(assert (= (and start!578374 (not condSetEmpty!36981)) setNonEmpty!36981))

(assert (= setNonEmpty!36981 b!5555897))

(assert (= b!5555881 b!5555885))

(assert (= (and start!578374 ((_ is Cons!62805) zl!343)) b!5555881))

(assert (= (and start!578374 ((_ is Cons!62806) s!2326)) b!5555882))

(declare-fun m!6547914 () Bool)

(assert (=> b!5555895 m!6547914))

(declare-fun m!6547916 () Bool)

(assert (=> b!5555881 m!6547916))

(declare-fun m!6547918 () Bool)

(assert (=> b!5555884 m!6547918))

(declare-fun m!6547920 () Bool)

(assert (=> b!5555888 m!6547920))

(declare-fun m!6547922 () Bool)

(assert (=> b!5555888 m!6547922))

(declare-fun m!6547924 () Bool)

(assert (=> b!5555888 m!6547924))

(assert (=> b!5555888 m!6547920))

(declare-fun m!6547926 () Bool)

(assert (=> b!5555888 m!6547926))

(declare-fun m!6547928 () Bool)

(assert (=> b!5555888 m!6547928))

(assert (=> b!5555888 m!6547922))

(declare-fun m!6547930 () Bool)

(assert (=> b!5555888 m!6547930))

(declare-fun m!6547932 () Bool)

(assert (=> b!5555878 m!6547932))

(declare-fun m!6547934 () Bool)

(assert (=> b!5555878 m!6547934))

(declare-fun m!6547936 () Bool)

(assert (=> b!5555880 m!6547936))

(declare-fun m!6547938 () Bool)

(assert (=> b!5555886 m!6547938))

(declare-fun m!6547940 () Bool)

(assert (=> b!5555886 m!6547940))

(declare-fun m!6547942 () Bool)

(assert (=> b!5555886 m!6547942))

(declare-fun m!6547944 () Bool)

(assert (=> b!5555886 m!6547944))

(declare-fun m!6547946 () Bool)

(assert (=> b!5555886 m!6547946))

(declare-fun m!6547948 () Bool)

(assert (=> b!5555886 m!6547948))

(declare-fun m!6547950 () Bool)

(assert (=> b!5555886 m!6547950))

(declare-fun m!6547952 () Bool)

(assert (=> setNonEmpty!36981 m!6547952))

(declare-fun m!6547954 () Bool)

(assert (=> b!5555889 m!6547954))

(declare-fun m!6547956 () Bool)

(assert (=> b!5555891 m!6547956))

(declare-fun m!6547958 () Bool)

(assert (=> b!5555891 m!6547958))

(declare-fun m!6547960 () Bool)

(assert (=> b!5555891 m!6547960))

(declare-fun m!6547962 () Bool)

(assert (=> b!5555896 m!6547962))

(declare-fun m!6547964 () Bool)

(assert (=> b!5555877 m!6547964))

(declare-fun m!6547966 () Bool)

(assert (=> start!578374 m!6547966))

(declare-fun m!6547968 () Bool)

(assert (=> b!5555894 m!6547968))

(assert (=> b!5555894 m!6547968))

(declare-fun m!6547970 () Bool)

(assert (=> b!5555894 m!6547970))

(check-sat (not b!5555887) (not b!5555882) (not start!578374) (not b!5555877) (not b!5555888) (not b!5555886) (not b!5555884) (not b!5555891) (not b!5555890) (not b!5555880) tp_is_empty!40339 (not b!5555895) (not b!5555897) (not b!5555885) (not b!5555881) (not b!5555889) (not b!5555896) (not b!5555894) (not setNonEmpty!36981) (not b!5555893) (not b!5555878))
(check-sat)
(get-model)

(declare-fun b!5555958 () Bool)

(declare-fun lt!2251116 () Unit!155546)

(declare-fun lt!2251115 () Unit!155546)

(assert (=> b!5555958 (= lt!2251116 lt!2251115)))

(declare-fun ++!13780 (List!62930 List!62930) List!62930)

(assert (=> b!5555958 (= (++!13780 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1949 (List!62930 C!31356 List!62930 List!62930) Unit!155546)

(assert (=> b!5555958 (= lt!2251115 (lemmaMoveElementToOtherListKeepsConcatEq!1949 Nil!62806 (h!69254 s!2326) (t!376195 s!2326) s!2326))))

(declare-fun e!3431282 () Option!15552)

(assert (=> b!5555958 (= e!3431282 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326) s!2326))))

(declare-fun b!5555959 () Bool)

(assert (=> b!5555959 (= e!3431282 None!15551)))

(declare-fun b!5555960 () Bool)

(declare-fun res!2361662 () Bool)

(declare-fun e!3431281 () Bool)

(assert (=> b!5555960 (=> (not res!2361662) (not e!3431281))))

(declare-fun lt!2251114 () Option!15552)

(declare-fun get!21619 (Option!15552) tuple2!65280)

(assert (=> b!5555960 (= res!2361662 (matchR!7728 (regTwo!31598 r!7292) (_2!35943 (get!21619 lt!2251114))))))

(declare-fun b!5555961 () Bool)

(declare-fun e!3431278 () Bool)

(assert (=> b!5555961 (= e!3431278 (matchR!7728 (regTwo!31598 r!7292) s!2326))))

(declare-fun b!5555962 () Bool)

(assert (=> b!5555962 (= e!3431281 (= (++!13780 (_1!35943 (get!21619 lt!2251114)) (_2!35943 (get!21619 lt!2251114))) s!2326))))

(declare-fun b!5555963 () Bool)

(declare-fun res!2361658 () Bool)

(assert (=> b!5555963 (=> (not res!2361658) (not e!3431281))))

(assert (=> b!5555963 (= res!2361658 (matchR!7728 (regOne!31598 r!7292) (_1!35943 (get!21619 lt!2251114))))))

(declare-fun b!5555964 () Bool)

(declare-fun e!3431280 () Option!15552)

(assert (=> b!5555964 (= e!3431280 e!3431282)))

(declare-fun c!972639 () Bool)

(assert (=> b!5555964 (= c!972639 ((_ is Nil!62806) s!2326))))

(declare-fun d!1758529 () Bool)

(declare-fun e!3431279 () Bool)

(assert (=> d!1758529 e!3431279))

(declare-fun res!2361660 () Bool)

(assert (=> d!1758529 (=> res!2361660 e!3431279)))

(assert (=> d!1758529 (= res!2361660 e!3431281)))

(declare-fun res!2361661 () Bool)

(assert (=> d!1758529 (=> (not res!2361661) (not e!3431281))))

(assert (=> d!1758529 (= res!2361661 (isDefined!12255 lt!2251114))))

(assert (=> d!1758529 (= lt!2251114 e!3431280)))

(declare-fun c!972638 () Bool)

(assert (=> d!1758529 (= c!972638 e!3431278)))

(declare-fun res!2361659 () Bool)

(assert (=> d!1758529 (=> (not res!2361659) (not e!3431278))))

(assert (=> d!1758529 (= res!2361659 (matchR!7728 (regOne!31598 r!7292) Nil!62806))))

(assert (=> d!1758529 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758529 (= (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326) lt!2251114)))

(declare-fun b!5555965 () Bool)

(assert (=> b!5555965 (= e!3431280 (Some!15551 (tuple2!65281 Nil!62806 s!2326)))))

(declare-fun b!5555966 () Bool)

(assert (=> b!5555966 (= e!3431279 (not (isDefined!12255 lt!2251114)))))

(assert (= (and d!1758529 res!2361659) b!5555961))

(assert (= (and d!1758529 c!972638) b!5555965))

(assert (= (and d!1758529 (not c!972638)) b!5555964))

(assert (= (and b!5555964 c!972639) b!5555959))

(assert (= (and b!5555964 (not c!972639)) b!5555958))

(assert (= (and d!1758529 res!2361661) b!5555963))

(assert (= (and b!5555963 res!2361658) b!5555960))

(assert (= (and b!5555960 res!2361662) b!5555962))

(assert (= (and d!1758529 (not res!2361660)) b!5555966))

(declare-fun m!6548006 () Bool)

(assert (=> b!5555961 m!6548006))

(declare-fun m!6548008 () Bool)

(assert (=> b!5555963 m!6548008))

(declare-fun m!6548010 () Bool)

(assert (=> b!5555963 m!6548010))

(assert (=> b!5555962 m!6548008))

(declare-fun m!6548012 () Bool)

(assert (=> b!5555962 m!6548012))

(declare-fun m!6548014 () Bool)

(assert (=> b!5555958 m!6548014))

(assert (=> b!5555958 m!6548014))

(declare-fun m!6548016 () Bool)

(assert (=> b!5555958 m!6548016))

(declare-fun m!6548018 () Bool)

(assert (=> b!5555958 m!6548018))

(assert (=> b!5555958 m!6548014))

(declare-fun m!6548020 () Bool)

(assert (=> b!5555958 m!6548020))

(declare-fun m!6548022 () Bool)

(assert (=> d!1758529 m!6548022))

(declare-fun m!6548024 () Bool)

(assert (=> d!1758529 m!6548024))

(declare-fun m!6548026 () Bool)

(assert (=> d!1758529 m!6548026))

(assert (=> b!5555960 m!6548008))

(declare-fun m!6548028 () Bool)

(assert (=> b!5555960 m!6548028))

(assert (=> b!5555966 m!6548022))

(assert (=> b!5555888 d!1758529))

(declare-fun d!1758537 () Bool)

(declare-fun choose!42151 (Int) Bool)

(assert (=> d!1758537 (= (Exists!2643 lambda!298140) (choose!42151 lambda!298140))))

(declare-fun bs!1286714 () Bool)

(assert (= bs!1286714 d!1758537))

(declare-fun m!6548030 () Bool)

(assert (=> bs!1286714 m!6548030))

(assert (=> b!5555888 d!1758537))

(declare-fun d!1758539 () Bool)

(assert (=> d!1758539 (= (Exists!2643 lambda!298139) (choose!42151 lambda!298139))))

(declare-fun bs!1286715 () Bool)

(assert (= bs!1286715 d!1758539))

(declare-fun m!6548032 () Bool)

(assert (=> bs!1286715 m!6548032))

(assert (=> b!5555888 d!1758539))

(declare-fun bs!1286720 () Bool)

(declare-fun d!1758541 () Bool)

(assert (= bs!1286720 (and d!1758541 b!5555888)))

(declare-fun lambda!298158 () Int)

(assert (=> bs!1286720 (= lambda!298158 lambda!298139)))

(assert (=> bs!1286720 (not (= lambda!298158 lambda!298140))))

(assert (=> d!1758541 true))

(assert (=> d!1758541 true))

(assert (=> d!1758541 true))

(assert (=> d!1758541 (= (isDefined!12255 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326)) (Exists!2643 lambda!298158))))

(declare-fun lt!2251122 () Unit!155546)

(declare-fun choose!42152 (Regex!15543 Regex!15543 List!62930) Unit!155546)

(assert (=> d!1758541 (= lt!2251122 (choose!42152 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326))))

(assert (=> d!1758541 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758541 (= (lemmaFindConcatSeparationEquivalentToExists!1730 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326) lt!2251122)))

(declare-fun bs!1286721 () Bool)

(assert (= bs!1286721 d!1758541))

(assert (=> bs!1286721 m!6548026))

(assert (=> bs!1286721 m!6547922))

(declare-fun m!6548042 () Bool)

(assert (=> bs!1286721 m!6548042))

(declare-fun m!6548044 () Bool)

(assert (=> bs!1286721 m!6548044))

(assert (=> bs!1286721 m!6547922))

(assert (=> bs!1286721 m!6547924))

(assert (=> b!5555888 d!1758541))

(declare-fun bs!1286730 () Bool)

(declare-fun d!1758547 () Bool)

(assert (= bs!1286730 (and d!1758547 b!5555888)))

(declare-fun lambda!298171 () Int)

(assert (=> bs!1286730 (= lambda!298171 lambda!298139)))

(assert (=> bs!1286730 (not (= lambda!298171 lambda!298140))))

(declare-fun bs!1286732 () Bool)

(assert (= bs!1286732 (and d!1758547 d!1758541)))

(assert (=> bs!1286732 (= lambda!298171 lambda!298158)))

(assert (=> d!1758547 true))

(assert (=> d!1758547 true))

(assert (=> d!1758547 true))

(declare-fun lambda!298172 () Int)

(assert (=> bs!1286730 (not (= lambda!298172 lambda!298139))))

(assert (=> bs!1286730 (= lambda!298172 lambda!298140)))

(assert (=> bs!1286732 (not (= lambda!298172 lambda!298158))))

(declare-fun bs!1286733 () Bool)

(assert (= bs!1286733 d!1758547))

(assert (=> bs!1286733 (not (= lambda!298172 lambda!298171))))

(assert (=> d!1758547 true))

(assert (=> d!1758547 true))

(assert (=> d!1758547 true))

(assert (=> d!1758547 (= (Exists!2643 lambda!298171) (Exists!2643 lambda!298172))))

(declare-fun lt!2251129 () Unit!155546)

(declare-fun choose!42153 (Regex!15543 Regex!15543 List!62930) Unit!155546)

(assert (=> d!1758547 (= lt!2251129 (choose!42153 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326))))

(assert (=> d!1758547 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758547 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1272 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326) lt!2251129)))

(declare-fun m!6548074 () Bool)

(assert (=> bs!1286733 m!6548074))

(declare-fun m!6548076 () Bool)

(assert (=> bs!1286733 m!6548076))

(declare-fun m!6548078 () Bool)

(assert (=> bs!1286733 m!6548078))

(assert (=> bs!1286733 m!6548026))

(assert (=> b!5555888 d!1758547))

(declare-fun d!1758557 () Bool)

(declare-fun isEmpty!34603 (Option!15552) Bool)

(assert (=> d!1758557 (= (isDefined!12255 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326)) (not (isEmpty!34603 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326))))))

(declare-fun bs!1286734 () Bool)

(assert (= bs!1286734 d!1758557))

(assert (=> bs!1286734 m!6547922))

(declare-fun m!6548080 () Bool)

(assert (=> bs!1286734 m!6548080))

(assert (=> b!5555888 d!1758557))

(declare-fun d!1758559 () Bool)

(declare-fun e!3431314 () Bool)

(assert (=> d!1758559 e!3431314))

(declare-fun res!2361687 () Bool)

(assert (=> d!1758559 (=> (not res!2361687) (not e!3431314))))

(declare-fun lt!2251132 () List!62929)

(declare-fun noDuplicate!1525 (List!62929) Bool)

(assert (=> d!1758559 (= res!2361687 (noDuplicate!1525 lt!2251132))))

(declare-fun choose!42154 ((InoxSet Context!9854)) List!62929)

(assert (=> d!1758559 (= lt!2251132 (choose!42154 z!1189))))

(assert (=> d!1758559 (= (toList!9327 z!1189) lt!2251132)))

(declare-fun b!5556023 () Bool)

(declare-fun content!11309 (List!62929) (InoxSet Context!9854))

(assert (=> b!5556023 (= e!3431314 (= (content!11309 lt!2251132) z!1189))))

(assert (= (and d!1758559 res!2361687) b!5556023))

(declare-fun m!6548082 () Bool)

(assert (=> d!1758559 m!6548082))

(declare-fun m!6548084 () Bool)

(assert (=> d!1758559 m!6548084))

(declare-fun m!6548086 () Bool)

(assert (=> b!5556023 m!6548086))

(assert (=> b!5555877 d!1758559))

(declare-fun d!1758561 () Bool)

(declare-fun c!972671 () Bool)

(declare-fun isEmpty!34604 (List!62930) Bool)

(assert (=> d!1758561 (= c!972671 (isEmpty!34604 (t!376195 s!2326)))))

(declare-fun e!3431335 () Bool)

(assert (=> d!1758561 (= (matchZipper!1681 lt!2251093 (t!376195 s!2326)) e!3431335)))

(declare-fun b!5556058 () Bool)

(declare-fun nullableZipper!1544 ((InoxSet Context!9854)) Bool)

(assert (=> b!5556058 (= e!3431335 (nullableZipper!1544 lt!2251093))))

(declare-fun b!5556059 () Bool)

(declare-fun head!11868 (List!62930) C!31356)

(declare-fun tail!10963 (List!62930) List!62930)

(assert (=> b!5556059 (= e!3431335 (matchZipper!1681 (derivationStepZipper!1644 lt!2251093 (head!11868 (t!376195 s!2326))) (tail!10963 (t!376195 s!2326))))))

(assert (= (and d!1758561 c!972671) b!5556058))

(assert (= (and d!1758561 (not c!972671)) b!5556059))

(declare-fun m!6548088 () Bool)

(assert (=> d!1758561 m!6548088))

(declare-fun m!6548090 () Bool)

(assert (=> b!5556058 m!6548090))

(declare-fun m!6548092 () Bool)

(assert (=> b!5556059 m!6548092))

(assert (=> b!5556059 m!6548092))

(declare-fun m!6548094 () Bool)

(assert (=> b!5556059 m!6548094))

(declare-fun m!6548096 () Bool)

(assert (=> b!5556059 m!6548096))

(assert (=> b!5556059 m!6548094))

(assert (=> b!5556059 m!6548096))

(declare-fun m!6548098 () Bool)

(assert (=> b!5556059 m!6548098))

(assert (=> b!5555878 d!1758561))

(declare-fun d!1758563 () Bool)

(declare-fun c!972672 () Bool)

(assert (=> d!1758563 (= c!972672 (isEmpty!34604 s!2326))))

(declare-fun e!3431336 () Bool)

(assert (=> d!1758563 (= (matchZipper!1681 z!1189 s!2326) e!3431336)))

(declare-fun b!5556060 () Bool)

(assert (=> b!5556060 (= e!3431336 (nullableZipper!1544 z!1189))))

(declare-fun b!5556061 () Bool)

(assert (=> b!5556061 (= e!3431336 (matchZipper!1681 (derivationStepZipper!1644 z!1189 (head!11868 s!2326)) (tail!10963 s!2326)))))

(assert (= (and d!1758563 c!972672) b!5556060))

(assert (= (and d!1758563 (not c!972672)) b!5556061))

(declare-fun m!6548100 () Bool)

(assert (=> d!1758563 m!6548100))

(declare-fun m!6548102 () Bool)

(assert (=> b!5556060 m!6548102))

(declare-fun m!6548104 () Bool)

(assert (=> b!5556061 m!6548104))

(assert (=> b!5556061 m!6548104))

(declare-fun m!6548106 () Bool)

(assert (=> b!5556061 m!6548106))

(declare-fun m!6548108 () Bool)

(assert (=> b!5556061 m!6548108))

(assert (=> b!5556061 m!6548106))

(assert (=> b!5556061 m!6548108))

(declare-fun m!6548110 () Bool)

(assert (=> b!5556061 m!6548110))

(assert (=> b!5555878 d!1758563))

(declare-fun bm!414213 () Bool)

(declare-fun call!414220 () Bool)

(declare-fun c!972680 () Bool)

(assert (=> bm!414213 (= call!414220 (validRegex!7279 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))

(declare-fun b!5556084 () Bool)

(declare-fun e!3431353 () Bool)

(declare-fun call!414219 () Bool)

(assert (=> b!5556084 (= e!3431353 call!414219)))

(declare-fun bm!414214 () Bool)

(declare-fun call!414218 () Bool)

(assert (=> bm!414214 (= call!414219 call!414218)))

(declare-fun bm!414215 () Bool)

(declare-fun c!972679 () Bool)

(assert (=> bm!414215 (= call!414218 (validRegex!7279 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))

(declare-fun d!1758565 () Bool)

(declare-fun res!2361706 () Bool)

(declare-fun e!3431356 () Bool)

(assert (=> d!1758565 (=> res!2361706 e!3431356)))

(assert (=> d!1758565 (= res!2361706 ((_ is ElementMatch!15543) r!7292))))

(assert (=> d!1758565 (= (validRegex!7279 r!7292) e!3431356)))

(declare-fun b!5556085 () Bool)

(declare-fun e!3431358 () Bool)

(assert (=> b!5556085 (= e!3431358 call!414218)))

(declare-fun b!5556086 () Bool)

(declare-fun e!3431357 () Bool)

(assert (=> b!5556086 (= e!3431357 call!414219)))

(declare-fun b!5556087 () Bool)

(declare-fun e!3431354 () Bool)

(assert (=> b!5556087 (= e!3431354 e!3431357)))

(declare-fun res!2361704 () Bool)

(assert (=> b!5556087 (=> (not res!2361704) (not e!3431357))))

(assert (=> b!5556087 (= res!2361704 call!414220)))

(declare-fun b!5556088 () Bool)

(declare-fun e!3431359 () Bool)

(assert (=> b!5556088 (= e!3431356 e!3431359)))

(assert (=> b!5556088 (= c!972679 ((_ is Star!15543) r!7292))))

(declare-fun b!5556089 () Bool)

(declare-fun e!3431355 () Bool)

(assert (=> b!5556089 (= e!3431359 e!3431355)))

(assert (=> b!5556089 (= c!972680 ((_ is Union!15543) r!7292))))

(declare-fun b!5556090 () Bool)

(declare-fun res!2361705 () Bool)

(assert (=> b!5556090 (=> (not res!2361705) (not e!3431353))))

(assert (=> b!5556090 (= res!2361705 call!414220)))

(assert (=> b!5556090 (= e!3431355 e!3431353)))

(declare-fun b!5556091 () Bool)

(assert (=> b!5556091 (= e!3431359 e!3431358)))

(declare-fun res!2361708 () Bool)

(assert (=> b!5556091 (= res!2361708 (not (nullable!5575 (reg!15872 r!7292))))))

(assert (=> b!5556091 (=> (not res!2361708) (not e!3431358))))

(declare-fun b!5556092 () Bool)

(declare-fun res!2361707 () Bool)

(assert (=> b!5556092 (=> res!2361707 e!3431354)))

(assert (=> b!5556092 (= res!2361707 (not ((_ is Concat!24388) r!7292)))))

(assert (=> b!5556092 (= e!3431355 e!3431354)))

(assert (= (and d!1758565 (not res!2361706)) b!5556088))

(assert (= (and b!5556088 c!972679) b!5556091))

(assert (= (and b!5556088 (not c!972679)) b!5556089))

(assert (= (and b!5556091 res!2361708) b!5556085))

(assert (= (and b!5556089 c!972680) b!5556090))

(assert (= (and b!5556089 (not c!972680)) b!5556092))

(assert (= (and b!5556090 res!2361705) b!5556084))

(assert (= (and b!5556092 (not res!2361707)) b!5556087))

(assert (= (and b!5556087 res!2361704) b!5556086))

(assert (= (or b!5556084 b!5556086) bm!414214))

(assert (= (or b!5556090 b!5556087) bm!414213))

(assert (= (or b!5556085 bm!414214) bm!414215))

(declare-fun m!6548130 () Bool)

(assert (=> bm!414213 m!6548130))

(declare-fun m!6548132 () Bool)

(assert (=> bm!414215 m!6548132))

(declare-fun m!6548134 () Bool)

(assert (=> b!5556091 m!6548134))

(assert (=> start!578374 d!1758565))

(declare-fun d!1758571 () Bool)

(declare-fun lt!2251138 () Regex!15543)

(assert (=> d!1758571 (validRegex!7279 lt!2251138)))

(assert (=> d!1758571 (= lt!2251138 (generalisedUnion!1406 (unfocusZipperList!971 zl!343)))))

(assert (=> d!1758571 (= (unfocusZipper!1285 zl!343) lt!2251138)))

(declare-fun bs!1286739 () Bool)

(assert (= bs!1286739 d!1758571))

(declare-fun m!6548136 () Bool)

(assert (=> bs!1286739 m!6548136))

(assert (=> bs!1286739 m!6547968))

(assert (=> bs!1286739 m!6547968))

(assert (=> bs!1286739 m!6547970))

(assert (=> b!5555895 d!1758571))

(declare-fun d!1758573 () Bool)

(assert (=> d!1758573 (= (isEmpty!34601 (t!376194 zl!343)) ((_ is Nil!62805) (t!376194 zl!343)))))

(assert (=> b!5555896 d!1758573))

(declare-fun b!5556131 () Bool)

(declare-fun e!3431383 () (InoxSet Context!9854))

(declare-fun e!3431384 () (InoxSet Context!9854))

(assert (=> b!5556131 (= e!3431383 e!3431384)))

(declare-fun c!972691 () Bool)

(assert (=> b!5556131 (= c!972691 ((_ is Cons!62804) (exprs!5427 lt!2251092)))))

(declare-fun call!414227 () (InoxSet Context!9854))

(declare-fun b!5556132 () Bool)

(assert (=> b!5556132 (= e!3431383 ((_ map or) call!414227 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (h!69254 s!2326))))))

(declare-fun d!1758575 () Bool)

(declare-fun c!972692 () Bool)

(declare-fun e!3431382 () Bool)

(assert (=> d!1758575 (= c!972692 e!3431382)))

(declare-fun res!2361727 () Bool)

(assert (=> d!1758575 (=> (not res!2361727) (not e!3431382))))

(assert (=> d!1758575 (= res!2361727 ((_ is Cons!62804) (exprs!5427 lt!2251092)))))

(assert (=> d!1758575 (= (derivationStepZipperUp!811 lt!2251092 (h!69254 s!2326)) e!3431383)))

(declare-fun b!5556133 () Bool)

(assert (=> b!5556133 (= e!3431384 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556134 () Bool)

(assert (=> b!5556134 (= e!3431384 call!414227)))

(declare-fun b!5556135 () Bool)

(assert (=> b!5556135 (= e!3431382 (nullable!5575 (h!69252 (exprs!5427 lt!2251092))))))

(declare-fun bm!414222 () Bool)

(assert (=> bm!414222 (= call!414227 (derivationStepZipperDown!885 (h!69252 (exprs!5427 lt!2251092)) (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (h!69254 s!2326)))))

(assert (= (and d!1758575 res!2361727) b!5556135))

(assert (= (and d!1758575 c!972692) b!5556132))

(assert (= (and d!1758575 (not c!972692)) b!5556131))

(assert (= (and b!5556131 c!972691) b!5556134))

(assert (= (and b!5556131 (not c!972691)) b!5556133))

(assert (= (or b!5556132 b!5556134) bm!414222))

(declare-fun m!6548138 () Bool)

(assert (=> b!5556132 m!6548138))

(declare-fun m!6548140 () Bool)

(assert (=> b!5556135 m!6548140))

(declare-fun m!6548142 () Bool)

(assert (=> bm!414222 m!6548142))

(assert (=> b!5555886 d!1758575))

(declare-fun bm!414239 () Bool)

(declare-fun call!414245 () (InoxSet Context!9854))

(declare-fun call!414248 () (InoxSet Context!9854))

(assert (=> bm!414239 (= call!414245 call!414248)))

(declare-fun c!972716 () Bool)

(declare-fun call!414246 () List!62928)

(declare-fun call!414247 () (InoxSet Context!9854))

(declare-fun bm!414240 () Bool)

(assert (=> bm!414240 (= call!414247 (derivationStepZipperDown!885 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))) (ite c!972716 lt!2251092 (Context!9855 call!414246)) (h!69254 s!2326)))))

(declare-fun b!5556197 () Bool)

(declare-fun e!3431422 () Bool)

(assert (=> b!5556197 (= e!3431422 (nullable!5575 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun bm!414241 () Bool)

(declare-fun call!414249 () (InoxSet Context!9854))

(assert (=> bm!414241 (= call!414249 call!414245)))

(declare-fun b!5556198 () Bool)

(declare-fun c!972714 () Bool)

(assert (=> b!5556198 (= c!972714 ((_ is Star!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun e!3431420 () (InoxSet Context!9854))

(declare-fun e!3431418 () (InoxSet Context!9854))

(assert (=> b!5556198 (= e!3431420 e!3431418)))

(declare-fun b!5556200 () Bool)

(declare-fun e!3431419 () (InoxSet Context!9854))

(assert (=> b!5556200 (= e!3431419 ((_ map or) call!414247 call!414245))))

(declare-fun bm!414242 () Bool)

(declare-fun c!972713 () Bool)

(declare-fun c!972715 () Bool)

(declare-fun $colon$colon!1611 (List!62928 Regex!15543) List!62928)

(assert (=> bm!414242 (= call!414246 ($colon$colon!1611 (exprs!5427 lt!2251092) (ite (or c!972713 c!972715) (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69252 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556201 () Bool)

(assert (=> b!5556201 (= c!972713 e!3431422)))

(declare-fun res!2361749 () Bool)

(assert (=> b!5556201 (=> (not res!2361749) (not e!3431422))))

(assert (=> b!5556201 (= res!2361749 ((_ is Concat!24388) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun e!3431421 () (InoxSet Context!9854))

(assert (=> b!5556201 (= e!3431421 e!3431419)))

(declare-fun bm!414243 () Bool)

(declare-fun call!414244 () List!62928)

(assert (=> bm!414243 (= call!414244 call!414246)))

(declare-fun bm!414244 () Bool)

(assert (=> bm!414244 (= call!414248 (derivationStepZipperDown!885 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))) (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244)) (h!69254 s!2326)))))

(declare-fun b!5556202 () Bool)

(assert (=> b!5556202 (= e!3431418 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556203 () Bool)

(assert (=> b!5556203 (= e!3431421 ((_ map or) call!414248 call!414247))))

(declare-fun b!5556204 () Bool)

(assert (=> b!5556204 (= e!3431418 call!414249)))

(declare-fun b!5556205 () Bool)

(assert (=> b!5556205 (= e!3431420 call!414249)))

(declare-fun b!5556199 () Bool)

(declare-fun e!3431423 () (InoxSet Context!9854))

(assert (=> b!5556199 (= e!3431423 (store ((as const (Array Context!9854 Bool)) false) lt!2251092 true))))

(declare-fun d!1758577 () Bool)

(declare-fun c!972717 () Bool)

(assert (=> d!1758577 (= c!972717 (and ((_ is ElementMatch!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))) (= (c!972627 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326))))))

(assert (=> d!1758577 (= (derivationStepZipperDown!885 (h!69252 (exprs!5427 (h!69253 zl!343))) lt!2251092 (h!69254 s!2326)) e!3431423)))

(declare-fun b!5556206 () Bool)

(assert (=> b!5556206 (= e!3431423 e!3431421)))

(assert (=> b!5556206 (= c!972716 ((_ is Union!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556207 () Bool)

(assert (=> b!5556207 (= e!3431419 e!3431420)))

(assert (=> b!5556207 (= c!972715 ((_ is Concat!24388) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(assert (= (and d!1758577 c!972717) b!5556199))

(assert (= (and d!1758577 (not c!972717)) b!5556206))

(assert (= (and b!5556206 c!972716) b!5556203))

(assert (= (and b!5556206 (not c!972716)) b!5556201))

(assert (= (and b!5556201 res!2361749) b!5556197))

(assert (= (and b!5556201 c!972713) b!5556200))

(assert (= (and b!5556201 (not c!972713)) b!5556207))

(assert (= (and b!5556207 c!972715) b!5556205))

(assert (= (and b!5556207 (not c!972715)) b!5556198))

(assert (= (and b!5556198 c!972714) b!5556204))

(assert (= (and b!5556198 (not c!972714)) b!5556202))

(assert (= (or b!5556205 b!5556204) bm!414243))

(assert (= (or b!5556205 b!5556204) bm!414241))

(assert (= (or b!5556200 bm!414243) bm!414242))

(assert (= (or b!5556200 bm!414241) bm!414239))

(assert (= (or b!5556203 b!5556200) bm!414240))

(assert (= (or b!5556203 bm!414239) bm!414244))

(declare-fun m!6548152 () Bool)

(assert (=> bm!414244 m!6548152))

(declare-fun m!6548154 () Bool)

(assert (=> bm!414240 m!6548154))

(declare-fun m!6548156 () Bool)

(assert (=> b!5556199 m!6548156))

(declare-fun m!6548158 () Bool)

(assert (=> bm!414242 m!6548158))

(declare-fun m!6548160 () Bool)

(assert (=> b!5556197 m!6548160))

(assert (=> b!5555886 d!1758577))

(declare-fun d!1758581 () Bool)

(declare-fun nullableFct!1690 (Regex!15543) Bool)

(assert (=> d!1758581 (= (nullable!5575 (h!69252 (exprs!5427 (h!69253 zl!343)))) (nullableFct!1690 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun bs!1286747 () Bool)

(assert (= bs!1286747 d!1758581))

(declare-fun m!6548162 () Bool)

(assert (=> bs!1286747 m!6548162))

(assert (=> b!5555886 d!1758581))

(declare-fun b!5556208 () Bool)

(declare-fun e!3431425 () (InoxSet Context!9854))

(declare-fun e!3431426 () (InoxSet Context!9854))

(assert (=> b!5556208 (= e!3431425 e!3431426)))

(declare-fun c!972718 () Bool)

(assert (=> b!5556208 (= c!972718 ((_ is Cons!62804) (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))

(declare-fun b!5556209 () Bool)

(declare-fun call!414250 () (InoxSet Context!9854))

(assert (=> b!5556209 (= e!3431425 ((_ map or) call!414250 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326))))))

(declare-fun d!1758583 () Bool)

(declare-fun c!972719 () Bool)

(declare-fun e!3431424 () Bool)

(assert (=> d!1758583 (= c!972719 e!3431424)))

(declare-fun res!2361750 () Bool)

(assert (=> d!1758583 (=> (not res!2361750) (not e!3431424))))

(assert (=> d!1758583 (= res!2361750 ((_ is Cons!62804) (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))

(assert (=> d!1758583 (= (derivationStepZipperUp!811 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))) (h!69254 s!2326)) e!3431425)))

(declare-fun b!5556210 () Bool)

(assert (=> b!5556210 (= e!3431426 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556211 () Bool)

(assert (=> b!5556211 (= e!3431426 call!414250)))

(declare-fun b!5556212 () Bool)

(assert (=> b!5556212 (= e!3431424 (nullable!5575 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun bm!414245 () Bool)

(assert (=> bm!414245 (= call!414250 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326)))))

(assert (= (and d!1758583 res!2361750) b!5556212))

(assert (= (and d!1758583 c!972719) b!5556209))

(assert (= (and d!1758583 (not c!972719)) b!5556208))

(assert (= (and b!5556208 c!972718) b!5556211))

(assert (= (and b!5556208 (not c!972718)) b!5556210))

(assert (= (or b!5556209 b!5556211) bm!414245))

(declare-fun m!6548164 () Bool)

(assert (=> b!5556209 m!6548164))

(declare-fun m!6548166 () Bool)

(assert (=> b!5556212 m!6548166))

(declare-fun m!6548168 () Bool)

(assert (=> bm!414245 m!6548168))

(assert (=> b!5555886 d!1758583))

(declare-fun b!5556213 () Bool)

(declare-fun e!3431428 () (InoxSet Context!9854))

(declare-fun e!3431429 () (InoxSet Context!9854))

(assert (=> b!5556213 (= e!3431428 e!3431429)))

(declare-fun c!972720 () Bool)

(assert (=> b!5556213 (= c!972720 ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343))))))

(declare-fun b!5556214 () Bool)

(declare-fun call!414251 () (InoxSet Context!9854))

(assert (=> b!5556214 (= e!3431428 ((_ map or) call!414251 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326))))))

(declare-fun d!1758585 () Bool)

(declare-fun c!972721 () Bool)

(declare-fun e!3431427 () Bool)

(assert (=> d!1758585 (= c!972721 e!3431427)))

(declare-fun res!2361751 () Bool)

(assert (=> d!1758585 (=> (not res!2361751) (not e!3431427))))

(assert (=> d!1758585 (= res!2361751 ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343))))))

(assert (=> d!1758585 (= (derivationStepZipperUp!811 (h!69253 zl!343) (h!69254 s!2326)) e!3431428)))

(declare-fun b!5556215 () Bool)

(assert (=> b!5556215 (= e!3431429 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556216 () Bool)

(assert (=> b!5556216 (= e!3431429 call!414251)))

(declare-fun b!5556217 () Bool)

(assert (=> b!5556217 (= e!3431427 (nullable!5575 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun bm!414246 () Bool)

(assert (=> bm!414246 (= call!414251 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (h!69253 zl!343))) (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326)))))

(assert (= (and d!1758585 res!2361751) b!5556217))

(assert (= (and d!1758585 c!972721) b!5556214))

(assert (= (and d!1758585 (not c!972721)) b!5556213))

(assert (= (and b!5556213 c!972720) b!5556216))

(assert (= (and b!5556213 (not c!972720)) b!5556215))

(assert (= (or b!5556214 b!5556216) bm!414246))

(declare-fun m!6548170 () Bool)

(assert (=> b!5556214 m!6548170))

(assert (=> b!5556217 m!6547950))

(declare-fun m!6548172 () Bool)

(assert (=> bm!414246 m!6548172))

(assert (=> b!5555886 d!1758585))

(declare-fun d!1758587 () Bool)

(declare-fun choose!42156 ((InoxSet Context!9854) Int) (InoxSet Context!9854))

(assert (=> d!1758587 (= (flatMap!1156 z!1189 lambda!298141) (choose!42156 z!1189 lambda!298141))))

(declare-fun bs!1286748 () Bool)

(assert (= bs!1286748 d!1758587))

(declare-fun m!6548174 () Bool)

(assert (=> bs!1286748 m!6548174))

(assert (=> b!5555886 d!1758587))

(declare-fun d!1758589 () Bool)

(declare-fun dynLambda!24561 (Int Context!9854) (InoxSet Context!9854))

(assert (=> d!1758589 (= (flatMap!1156 z!1189 lambda!298141) (dynLambda!24561 lambda!298141 (h!69253 zl!343)))))

(declare-fun lt!2251144 () Unit!155546)

(declare-fun choose!42157 ((InoxSet Context!9854) Context!9854 Int) Unit!155546)

(assert (=> d!1758589 (= lt!2251144 (choose!42157 z!1189 (h!69253 zl!343) lambda!298141))))

(assert (=> d!1758589 (= z!1189 (store ((as const (Array Context!9854 Bool)) false) (h!69253 zl!343) true))))

(assert (=> d!1758589 (= (lemmaFlatMapOnSingletonSet!688 z!1189 (h!69253 zl!343) lambda!298141) lt!2251144)))

(declare-fun b_lambda!210979 () Bool)

(assert (=> (not b_lambda!210979) (not d!1758589)))

(declare-fun bs!1286749 () Bool)

(assert (= bs!1286749 d!1758589))

(assert (=> bs!1286749 m!6547948))

(declare-fun m!6548188 () Bool)

(assert (=> bs!1286749 m!6548188))

(declare-fun m!6548190 () Bool)

(assert (=> bs!1286749 m!6548190))

(declare-fun m!6548192 () Bool)

(assert (=> bs!1286749 m!6548192))

(assert (=> b!5555886 d!1758589))

(declare-fun d!1758593 () Bool)

(assert (=> d!1758593 (= (isEmpty!34600 (t!376193 (exprs!5427 (h!69253 zl!343)))) ((_ is Nil!62804) (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(assert (=> b!5555884 d!1758593))

(declare-fun b!5556278 () Bool)

(declare-fun e!3431471 () Bool)

(declare-fun lt!2251150 () Regex!15543)

(declare-fun head!11870 (List!62928) Regex!15543)

(assert (=> b!5556278 (= e!3431471 (= lt!2251150 (head!11870 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556279 () Bool)

(declare-fun e!3431469 () Bool)

(assert (=> b!5556279 (= e!3431469 e!3431471)))

(declare-fun c!972744 () Bool)

(declare-fun tail!10965 (List!62928) List!62928)

(assert (=> b!5556279 (= c!972744 (isEmpty!34600 (tail!10965 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556280 () Bool)

(declare-fun e!3431472 () Regex!15543)

(declare-fun e!3431467 () Regex!15543)

(assert (=> b!5556280 (= e!3431472 e!3431467)))

(declare-fun c!972743 () Bool)

(assert (=> b!5556280 (= c!972743 ((_ is Cons!62804) (unfocusZipperList!971 zl!343)))))

(declare-fun b!5556281 () Bool)

(declare-fun isUnion!546 (Regex!15543) Bool)

(assert (=> b!5556281 (= e!3431471 (isUnion!546 lt!2251150))))

(declare-fun b!5556282 () Bool)

(declare-fun isEmptyLang!1116 (Regex!15543) Bool)

(assert (=> b!5556282 (= e!3431469 (isEmptyLang!1116 lt!2251150))))

(declare-fun b!5556284 () Bool)

(assert (=> b!5556284 (= e!3431467 (Union!15543 (h!69252 (unfocusZipperList!971 zl!343)) (generalisedUnion!1406 (t!376193 (unfocusZipperList!971 zl!343)))))))

(declare-fun b!5556285 () Bool)

(declare-fun e!3431468 () Bool)

(assert (=> b!5556285 (= e!3431468 e!3431469)))

(declare-fun c!972741 () Bool)

(assert (=> b!5556285 (= c!972741 (isEmpty!34600 (unfocusZipperList!971 zl!343)))))

(declare-fun b!5556286 () Bool)

(assert (=> b!5556286 (= e!3431472 (h!69252 (unfocusZipperList!971 zl!343)))))

(declare-fun b!5556287 () Bool)

(assert (=> b!5556287 (= e!3431467 EmptyLang!15543)))

(declare-fun b!5556283 () Bool)

(declare-fun e!3431470 () Bool)

(assert (=> b!5556283 (= e!3431470 (isEmpty!34600 (t!376193 (unfocusZipperList!971 zl!343))))))

(declare-fun d!1758595 () Bool)

(assert (=> d!1758595 e!3431468))

(declare-fun res!2361775 () Bool)

(assert (=> d!1758595 (=> (not res!2361775) (not e!3431468))))

(assert (=> d!1758595 (= res!2361775 (validRegex!7279 lt!2251150))))

(assert (=> d!1758595 (= lt!2251150 e!3431472)))

(declare-fun c!972742 () Bool)

(assert (=> d!1758595 (= c!972742 e!3431470)))

(declare-fun res!2361774 () Bool)

(assert (=> d!1758595 (=> (not res!2361774) (not e!3431470))))

(assert (=> d!1758595 (= res!2361774 ((_ is Cons!62804) (unfocusZipperList!971 zl!343)))))

(declare-fun lambda!298184 () Int)

(declare-fun forall!14715 (List!62928 Int) Bool)

(assert (=> d!1758595 (forall!14715 (unfocusZipperList!971 zl!343) lambda!298184)))

(assert (=> d!1758595 (= (generalisedUnion!1406 (unfocusZipperList!971 zl!343)) lt!2251150)))

(assert (= (and d!1758595 res!2361774) b!5556283))

(assert (= (and d!1758595 c!972742) b!5556286))

(assert (= (and d!1758595 (not c!972742)) b!5556280))

(assert (= (and b!5556280 c!972743) b!5556284))

(assert (= (and b!5556280 (not c!972743)) b!5556287))

(assert (= (and d!1758595 res!2361775) b!5556285))

(assert (= (and b!5556285 c!972741) b!5556282))

(assert (= (and b!5556285 (not c!972741)) b!5556279))

(assert (= (and b!5556279 c!972744) b!5556278))

(assert (= (and b!5556279 (not c!972744)) b!5556281))

(declare-fun m!6548214 () Bool)

(assert (=> d!1758595 m!6548214))

(assert (=> d!1758595 m!6547968))

(declare-fun m!6548216 () Bool)

(assert (=> d!1758595 m!6548216))

(declare-fun m!6548218 () Bool)

(assert (=> b!5556283 m!6548218))

(declare-fun m!6548220 () Bool)

(assert (=> b!5556281 m!6548220))

(assert (=> b!5556278 m!6547968))

(declare-fun m!6548222 () Bool)

(assert (=> b!5556278 m!6548222))

(assert (=> b!5556279 m!6547968))

(declare-fun m!6548224 () Bool)

(assert (=> b!5556279 m!6548224))

(assert (=> b!5556279 m!6548224))

(declare-fun m!6548226 () Bool)

(assert (=> b!5556279 m!6548226))

(declare-fun m!6548228 () Bool)

(assert (=> b!5556284 m!6548228))

(assert (=> b!5556285 m!6547968))

(declare-fun m!6548230 () Bool)

(assert (=> b!5556285 m!6548230))

(declare-fun m!6548232 () Bool)

(assert (=> b!5556282 m!6548232))

(assert (=> b!5555894 d!1758595))

(declare-fun bs!1286751 () Bool)

(declare-fun d!1758605 () Bool)

(assert (= bs!1286751 (and d!1758605 d!1758595)))

(declare-fun lambda!298187 () Int)

(assert (=> bs!1286751 (= lambda!298187 lambda!298184)))

(declare-fun lt!2251153 () List!62928)

(assert (=> d!1758605 (forall!14715 lt!2251153 lambda!298187)))

(declare-fun e!3431482 () List!62928)

(assert (=> d!1758605 (= lt!2251153 e!3431482)))

(declare-fun c!972749 () Bool)

(assert (=> d!1758605 (= c!972749 ((_ is Cons!62805) zl!343))))

(assert (=> d!1758605 (= (unfocusZipperList!971 zl!343) lt!2251153)))

(declare-fun b!5556301 () Bool)

(assert (=> b!5556301 (= e!3431482 (Cons!62804 (generalisedConcat!1158 (exprs!5427 (h!69253 zl!343))) (unfocusZipperList!971 (t!376194 zl!343))))))

(declare-fun b!5556302 () Bool)

(assert (=> b!5556302 (= e!3431482 Nil!62804)))

(assert (= (and d!1758605 c!972749) b!5556301))

(assert (= (and d!1758605 (not c!972749)) b!5556302))

(declare-fun m!6548240 () Bool)

(assert (=> d!1758605 m!6548240))

(assert (=> b!5556301 m!6547936))

(declare-fun m!6548242 () Bool)

(assert (=> b!5556301 m!6548242))

(assert (=> b!5555894 d!1758605))

(declare-fun bs!1286756 () Bool)

(declare-fun b!5556365 () Bool)

(assert (= bs!1286756 (and b!5556365 d!1758547)))

(declare-fun lambda!298192 () Int)

(assert (=> bs!1286756 (not (= lambda!298192 lambda!298171))))

(declare-fun bs!1286757 () Bool)

(assert (= bs!1286757 (and b!5556365 d!1758541)))

(assert (=> bs!1286757 (not (= lambda!298192 lambda!298158))))

(declare-fun bs!1286758 () Bool)

(assert (= bs!1286758 (and b!5556365 b!5555888)))

(assert (=> bs!1286758 (not (= lambda!298192 lambda!298139))))

(assert (=> bs!1286756 (not (= lambda!298192 lambda!298172))))

(assert (=> bs!1286758 (not (= lambda!298192 lambda!298140))))

(assert (=> b!5556365 true))

(assert (=> b!5556365 true))

(declare-fun bs!1286759 () Bool)

(declare-fun b!5556369 () Bool)

(assert (= bs!1286759 (and b!5556369 d!1758547)))

(declare-fun lambda!298193 () Int)

(assert (=> bs!1286759 (not (= lambda!298193 lambda!298171))))

(declare-fun bs!1286760 () Bool)

(assert (= bs!1286760 (and b!5556369 d!1758541)))

(assert (=> bs!1286760 (not (= lambda!298193 lambda!298158))))

(declare-fun bs!1286761 () Bool)

(assert (= bs!1286761 (and b!5556369 b!5555888)))

(assert (=> bs!1286761 (not (= lambda!298193 lambda!298139))))

(declare-fun bs!1286762 () Bool)

(assert (= bs!1286762 (and b!5556369 b!5556365)))

(assert (=> bs!1286762 (not (= lambda!298193 lambda!298192))))

(assert (=> bs!1286759 (= lambda!298193 lambda!298172)))

(assert (=> bs!1286761 (= lambda!298193 lambda!298140)))

(assert (=> b!5556369 true))

(assert (=> b!5556369 true))

(declare-fun call!414271 () Bool)

(declare-fun c!972769 () Bool)

(declare-fun bm!414266 () Bool)

(assert (=> bm!414266 (= call!414271 (Exists!2643 (ite c!972769 lambda!298192 lambda!298193)))))

(declare-fun b!5556363 () Bool)

(declare-fun e!3431523 () Bool)

(declare-fun e!3431520 () Bool)

(assert (=> b!5556363 (= e!3431523 e!3431520)))

(declare-fun res!2361807 () Bool)

(assert (=> b!5556363 (= res!2361807 (matchRSpec!2646 (regOne!31599 r!7292) s!2326))))

(assert (=> b!5556363 (=> res!2361807 e!3431520)))

(declare-fun b!5556364 () Bool)

(declare-fun e!3431519 () Bool)

(assert (=> b!5556364 (= e!3431519 (= s!2326 (Cons!62806 (c!972627 r!7292) Nil!62806)))))

(declare-fun e!3431521 () Bool)

(assert (=> b!5556365 (= e!3431521 call!414271)))

(declare-fun b!5556366 () Bool)

(declare-fun c!972771 () Bool)

(assert (=> b!5556366 (= c!972771 ((_ is Union!15543) r!7292))))

(assert (=> b!5556366 (= e!3431519 e!3431523)))

(declare-fun b!5556367 () Bool)

(assert (=> b!5556367 (= e!3431520 (matchRSpec!2646 (regTwo!31599 r!7292) s!2326))))

(declare-fun d!1758609 () Bool)

(declare-fun c!972770 () Bool)

(assert (=> d!1758609 (= c!972770 ((_ is EmptyExpr!15543) r!7292))))

(declare-fun e!3431524 () Bool)

(assert (=> d!1758609 (= (matchRSpec!2646 r!7292 s!2326) e!3431524)))

(declare-fun b!5556368 () Bool)

(declare-fun e!3431525 () Bool)

(assert (=> b!5556368 (= e!3431524 e!3431525)))

(declare-fun res!2361806 () Bool)

(assert (=> b!5556368 (= res!2361806 (not ((_ is EmptyLang!15543) r!7292)))))

(assert (=> b!5556368 (=> (not res!2361806) (not e!3431525))))

(declare-fun e!3431522 () Bool)

(assert (=> b!5556369 (= e!3431522 call!414271)))

(declare-fun b!5556370 () Bool)

(assert (=> b!5556370 (= e!3431523 e!3431522)))

(assert (=> b!5556370 (= c!972769 ((_ is Star!15543) r!7292))))

(declare-fun bm!414267 () Bool)

(declare-fun call!414272 () Bool)

(assert (=> bm!414267 (= call!414272 (isEmpty!34604 s!2326))))

(declare-fun b!5556371 () Bool)

(assert (=> b!5556371 (= e!3431524 call!414272)))

(declare-fun b!5556372 () Bool)

(declare-fun c!972768 () Bool)

(assert (=> b!5556372 (= c!972768 ((_ is ElementMatch!15543) r!7292))))

(assert (=> b!5556372 (= e!3431525 e!3431519)))

(declare-fun b!5556373 () Bool)

(declare-fun res!2361805 () Bool)

(assert (=> b!5556373 (=> res!2361805 e!3431521)))

(assert (=> b!5556373 (= res!2361805 call!414272)))

(assert (=> b!5556373 (= e!3431522 e!3431521)))

(assert (= (and d!1758609 c!972770) b!5556371))

(assert (= (and d!1758609 (not c!972770)) b!5556368))

(assert (= (and b!5556368 res!2361806) b!5556372))

(assert (= (and b!5556372 c!972768) b!5556364))

(assert (= (and b!5556372 (not c!972768)) b!5556366))

(assert (= (and b!5556366 c!972771) b!5556363))

(assert (= (and b!5556366 (not c!972771)) b!5556370))

(assert (= (and b!5556363 (not res!2361807)) b!5556367))

(assert (= (and b!5556370 c!972769) b!5556373))

(assert (= (and b!5556370 (not c!972769)) b!5556369))

(assert (= (and b!5556373 (not res!2361805)) b!5556365))

(assert (= (or b!5556365 b!5556369) bm!414266))

(assert (= (or b!5556371 b!5556373) bm!414267))

(declare-fun m!6548278 () Bool)

(assert (=> bm!414266 m!6548278))

(declare-fun m!6548280 () Bool)

(assert (=> b!5556363 m!6548280))

(declare-fun m!6548282 () Bool)

(assert (=> b!5556367 m!6548282))

(assert (=> bm!414267 m!6548100))

(assert (=> b!5555891 d!1758609))

(declare-fun b!5556458 () Bool)

(declare-fun e!3431570 () Bool)

(declare-fun e!3431569 () Bool)

(assert (=> b!5556458 (= e!3431570 e!3431569)))

(declare-fun res!2361832 () Bool)

(assert (=> b!5556458 (=> (not res!2361832) (not e!3431569))))

(declare-fun lt!2251165 () Bool)

(assert (=> b!5556458 (= res!2361832 (not lt!2251165))))

(declare-fun bm!414288 () Bool)

(declare-fun call!414293 () Bool)

(assert (=> bm!414288 (= call!414293 (isEmpty!34604 s!2326))))

(declare-fun b!5556459 () Bool)

(declare-fun e!3431574 () Bool)

(assert (=> b!5556459 (= e!3431574 (not (= (head!11868 s!2326) (c!972627 r!7292))))))

(declare-fun d!1758627 () Bool)

(declare-fun e!3431575 () Bool)

(assert (=> d!1758627 e!3431575))

(declare-fun c!972794 () Bool)

(assert (=> d!1758627 (= c!972794 ((_ is EmptyExpr!15543) r!7292))))

(declare-fun e!3431573 () Bool)

(assert (=> d!1758627 (= lt!2251165 e!3431573)))

(declare-fun c!972795 () Bool)

(assert (=> d!1758627 (= c!972795 (isEmpty!34604 s!2326))))

(assert (=> d!1758627 (validRegex!7279 r!7292)))

(assert (=> d!1758627 (= (matchR!7728 r!7292 s!2326) lt!2251165)))

(declare-fun b!5556460 () Bool)

(declare-fun res!2361828 () Bool)

(declare-fun e!3431572 () Bool)

(assert (=> b!5556460 (=> (not res!2361828) (not e!3431572))))

(assert (=> b!5556460 (= res!2361828 (not call!414293))))

(declare-fun b!5556461 () Bool)

(declare-fun e!3431571 () Bool)

(assert (=> b!5556461 (= e!3431575 e!3431571)))

(declare-fun c!972793 () Bool)

(assert (=> b!5556461 (= c!972793 ((_ is EmptyLang!15543) r!7292))))

(declare-fun b!5556462 () Bool)

(declare-fun derivativeStep!4398 (Regex!15543 C!31356) Regex!15543)

(assert (=> b!5556462 (= e!3431573 (matchR!7728 (derivativeStep!4398 r!7292 (head!11868 s!2326)) (tail!10963 s!2326)))))

(declare-fun b!5556463 () Bool)

(declare-fun res!2361830 () Bool)

(assert (=> b!5556463 (=> res!2361830 e!3431570)))

(assert (=> b!5556463 (= res!2361830 (not ((_ is ElementMatch!15543) r!7292)))))

(assert (=> b!5556463 (= e!3431571 e!3431570)))

(declare-fun b!5556464 () Bool)

(assert (=> b!5556464 (= e!3431571 (not lt!2251165))))

(declare-fun b!5556465 () Bool)

(declare-fun res!2361829 () Bool)

(assert (=> b!5556465 (=> res!2361829 e!3431570)))

(assert (=> b!5556465 (= res!2361829 e!3431572)))

(declare-fun res!2361833 () Bool)

(assert (=> b!5556465 (=> (not res!2361833) (not e!3431572))))

(assert (=> b!5556465 (= res!2361833 lt!2251165)))

(declare-fun b!5556466 () Bool)

(assert (=> b!5556466 (= e!3431575 (= lt!2251165 call!414293))))

(declare-fun b!5556467 () Bool)

(assert (=> b!5556467 (= e!3431569 e!3431574)))

(declare-fun res!2361827 () Bool)

(assert (=> b!5556467 (=> res!2361827 e!3431574)))

(assert (=> b!5556467 (= res!2361827 call!414293)))

(declare-fun b!5556468 () Bool)

(assert (=> b!5556468 (= e!3431572 (= (head!11868 s!2326) (c!972627 r!7292)))))

(declare-fun b!5556469 () Bool)

(assert (=> b!5556469 (= e!3431573 (nullable!5575 r!7292))))

(declare-fun b!5556470 () Bool)

(declare-fun res!2361831 () Bool)

(assert (=> b!5556470 (=> res!2361831 e!3431574)))

(assert (=> b!5556470 (= res!2361831 (not (isEmpty!34604 (tail!10963 s!2326))))))

(declare-fun b!5556471 () Bool)

(declare-fun res!2361834 () Bool)

(assert (=> b!5556471 (=> (not res!2361834) (not e!3431572))))

(assert (=> b!5556471 (= res!2361834 (isEmpty!34604 (tail!10963 s!2326)))))

(assert (= (and d!1758627 c!972795) b!5556469))

(assert (= (and d!1758627 (not c!972795)) b!5556462))

(assert (= (and d!1758627 c!972794) b!5556466))

(assert (= (and d!1758627 (not c!972794)) b!5556461))

(assert (= (and b!5556461 c!972793) b!5556464))

(assert (= (and b!5556461 (not c!972793)) b!5556463))

(assert (= (and b!5556463 (not res!2361830)) b!5556465))

(assert (= (and b!5556465 res!2361833) b!5556460))

(assert (= (and b!5556460 res!2361828) b!5556471))

(assert (= (and b!5556471 res!2361834) b!5556468))

(assert (= (and b!5556465 (not res!2361829)) b!5556458))

(assert (= (and b!5556458 res!2361832) b!5556467))

(assert (= (and b!5556467 (not res!2361827)) b!5556470))

(assert (= (and b!5556470 (not res!2361831)) b!5556459))

(assert (= (or b!5556466 b!5556460 b!5556467) bm!414288))

(assert (=> bm!414288 m!6548100))

(declare-fun m!6548296 () Bool)

(assert (=> b!5556469 m!6548296))

(assert (=> b!5556459 m!6548104))

(assert (=> d!1758627 m!6548100))

(assert (=> d!1758627 m!6547966))

(assert (=> b!5556471 m!6548108))

(assert (=> b!5556471 m!6548108))

(declare-fun m!6548298 () Bool)

(assert (=> b!5556471 m!6548298))

(assert (=> b!5556470 m!6548108))

(assert (=> b!5556470 m!6548108))

(assert (=> b!5556470 m!6548298))

(assert (=> b!5556462 m!6548104))

(assert (=> b!5556462 m!6548104))

(declare-fun m!6548300 () Bool)

(assert (=> b!5556462 m!6548300))

(assert (=> b!5556462 m!6548108))

(assert (=> b!5556462 m!6548300))

(assert (=> b!5556462 m!6548108))

(declare-fun m!6548302 () Bool)

(assert (=> b!5556462 m!6548302))

(assert (=> b!5556468 m!6548104))

(assert (=> b!5555891 d!1758627))

(declare-fun d!1758629 () Bool)

(assert (=> d!1758629 (= (matchR!7728 r!7292 s!2326) (matchRSpec!2646 r!7292 s!2326))))

(declare-fun lt!2251168 () Unit!155546)

(declare-fun choose!42161 (Regex!15543 List!62930) Unit!155546)

(assert (=> d!1758629 (= lt!2251168 (choose!42161 r!7292 s!2326))))

(assert (=> d!1758629 (validRegex!7279 r!7292)))

(assert (=> d!1758629 (= (mainMatchTheorem!2646 r!7292 s!2326) lt!2251168)))

(declare-fun bs!1286764 () Bool)

(assert (= bs!1286764 d!1758629))

(assert (=> bs!1286764 m!6547958))

(assert (=> bs!1286764 m!6547956))

(declare-fun m!6548306 () Bool)

(assert (=> bs!1286764 m!6548306))

(assert (=> bs!1286764 m!6547966))

(assert (=> b!5555891 d!1758629))

(declare-fun bs!1286765 () Bool)

(declare-fun d!1758633 () Bool)

(assert (= bs!1286765 (and d!1758633 d!1758595)))

(declare-fun lambda!298196 () Int)

(assert (=> bs!1286765 (= lambda!298196 lambda!298184)))

(declare-fun bs!1286766 () Bool)

(assert (= bs!1286766 (and d!1758633 d!1758605)))

(assert (=> bs!1286766 (= lambda!298196 lambda!298187)))

(assert (=> d!1758633 (= (inv!82104 (h!69253 zl!343)) (forall!14715 (exprs!5427 (h!69253 zl!343)) lambda!298196))))

(declare-fun bs!1286767 () Bool)

(assert (= bs!1286767 d!1758633))

(declare-fun m!6548308 () Bool)

(assert (=> bs!1286767 m!6548308))

(assert (=> b!5555881 d!1758633))

(declare-fun bs!1286768 () Bool)

(declare-fun d!1758635 () Bool)

(assert (= bs!1286768 (and d!1758635 d!1758595)))

(declare-fun lambda!298199 () Int)

(assert (=> bs!1286768 (= lambda!298199 lambda!298184)))

(declare-fun bs!1286769 () Bool)

(assert (= bs!1286769 (and d!1758635 d!1758605)))

(assert (=> bs!1286769 (= lambda!298199 lambda!298187)))

(declare-fun bs!1286770 () Bool)

(assert (= bs!1286770 (and d!1758635 d!1758633)))

(assert (=> bs!1286770 (= lambda!298199 lambda!298196)))

(declare-fun b!5556523 () Bool)

(declare-fun e!3431602 () Regex!15543)

(assert (=> b!5556523 (= e!3431602 EmptyExpr!15543)))

(declare-fun b!5556524 () Bool)

(declare-fun e!3431600 () Bool)

(declare-fun lt!2251171 () Regex!15543)

(assert (=> b!5556524 (= e!3431600 (= lt!2251171 (head!11870 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556525 () Bool)

(declare-fun e!3431605 () Bool)

(declare-fun isEmptyExpr!1105 (Regex!15543) Bool)

(assert (=> b!5556525 (= e!3431605 (isEmptyExpr!1105 lt!2251171))))

(declare-fun b!5556526 () Bool)

(declare-fun isConcat!628 (Regex!15543) Bool)

(assert (=> b!5556526 (= e!3431600 (isConcat!628 lt!2251171))))

(declare-fun b!5556527 () Bool)

(assert (=> b!5556527 (= e!3431605 e!3431600)))

(declare-fun c!972806 () Bool)

(assert (=> b!5556527 (= c!972806 (isEmpty!34600 (tail!10965 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556528 () Bool)

(declare-fun e!3431604 () Regex!15543)

(assert (=> b!5556528 (= e!3431604 e!3431602)))

(declare-fun c!972807 () Bool)

(assert (=> b!5556528 (= c!972807 ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343))))))

(declare-fun e!3431603 () Bool)

(assert (=> d!1758635 e!3431603))

(declare-fun res!2361840 () Bool)

(assert (=> d!1758635 (=> (not res!2361840) (not e!3431603))))

(assert (=> d!1758635 (= res!2361840 (validRegex!7279 lt!2251171))))

(assert (=> d!1758635 (= lt!2251171 e!3431604)))

(declare-fun c!972804 () Bool)

(declare-fun e!3431601 () Bool)

(assert (=> d!1758635 (= c!972804 e!3431601)))

(declare-fun res!2361839 () Bool)

(assert (=> d!1758635 (=> (not res!2361839) (not e!3431601))))

(assert (=> d!1758635 (= res!2361839 ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343))))))

(assert (=> d!1758635 (forall!14715 (exprs!5427 (h!69253 zl!343)) lambda!298199)))

(assert (=> d!1758635 (= (generalisedConcat!1158 (exprs!5427 (h!69253 zl!343))) lt!2251171)))

(declare-fun b!5556529 () Bool)

(assert (=> b!5556529 (= e!3431601 (isEmpty!34600 (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556530 () Bool)

(assert (=> b!5556530 (= e!3431604 (h!69252 (exprs!5427 (h!69253 zl!343))))))

(declare-fun b!5556531 () Bool)

(assert (=> b!5556531 (= e!3431602 (Concat!24388 (h!69252 (exprs!5427 (h!69253 zl!343))) (generalisedConcat!1158 (t!376193 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556532 () Bool)

(assert (=> b!5556532 (= e!3431603 e!3431605)))

(declare-fun c!972805 () Bool)

(assert (=> b!5556532 (= c!972805 (isEmpty!34600 (exprs!5427 (h!69253 zl!343))))))

(assert (= (and d!1758635 res!2361839) b!5556529))

(assert (= (and d!1758635 c!972804) b!5556530))

(assert (= (and d!1758635 (not c!972804)) b!5556528))

(assert (= (and b!5556528 c!972807) b!5556531))

(assert (= (and b!5556528 (not c!972807)) b!5556523))

(assert (= (and d!1758635 res!2361840) b!5556532))

(assert (= (and b!5556532 c!972805) b!5556525))

(assert (= (and b!5556532 (not c!972805)) b!5556527))

(assert (= (and b!5556527 c!972806) b!5556524))

(assert (= (and b!5556527 (not c!972806)) b!5556526))

(declare-fun m!6548310 () Bool)

(assert (=> d!1758635 m!6548310))

(declare-fun m!6548312 () Bool)

(assert (=> d!1758635 m!6548312))

(declare-fun m!6548314 () Bool)

(assert (=> b!5556527 m!6548314))

(assert (=> b!5556527 m!6548314))

(declare-fun m!6548316 () Bool)

(assert (=> b!5556527 m!6548316))

(declare-fun m!6548318 () Bool)

(assert (=> b!5556531 m!6548318))

(declare-fun m!6548320 () Bool)

(assert (=> b!5556532 m!6548320))

(declare-fun m!6548322 () Bool)

(assert (=> b!5556526 m!6548322))

(declare-fun m!6548324 () Bool)

(assert (=> b!5556524 m!6548324))

(declare-fun m!6548326 () Bool)

(assert (=> b!5556525 m!6548326))

(assert (=> b!5556529 m!6547918))

(assert (=> b!5555880 d!1758635))

(declare-fun bs!1286771 () Bool)

(declare-fun d!1758637 () Bool)

(assert (= bs!1286771 (and d!1758637 b!5555886)))

(declare-fun lambda!298202 () Int)

(assert (=> bs!1286771 (= lambda!298202 lambda!298141)))

(assert (=> d!1758637 true))

(assert (=> d!1758637 (= (derivationStepZipper!1644 z!1189 (h!69254 s!2326)) (flatMap!1156 z!1189 lambda!298202))))

(declare-fun bs!1286772 () Bool)

(assert (= bs!1286772 d!1758637))

(declare-fun m!6548328 () Bool)

(assert (=> bs!1286772 m!6548328))

(assert (=> b!5555889 d!1758637))

(declare-fun bs!1286773 () Bool)

(declare-fun d!1758639 () Bool)

(assert (= bs!1286773 (and d!1758639 d!1758595)))

(declare-fun lambda!298203 () Int)

(assert (=> bs!1286773 (= lambda!298203 lambda!298184)))

(declare-fun bs!1286774 () Bool)

(assert (= bs!1286774 (and d!1758639 d!1758605)))

(assert (=> bs!1286774 (= lambda!298203 lambda!298187)))

(declare-fun bs!1286775 () Bool)

(assert (= bs!1286775 (and d!1758639 d!1758633)))

(assert (=> bs!1286775 (= lambda!298203 lambda!298196)))

(declare-fun bs!1286776 () Bool)

(assert (= bs!1286776 (and d!1758639 d!1758635)))

(assert (=> bs!1286776 (= lambda!298203 lambda!298199)))

(assert (=> d!1758639 (= (inv!82104 setElem!36981) (forall!14715 (exprs!5427 setElem!36981) lambda!298203))))

(declare-fun bs!1286777 () Bool)

(assert (= bs!1286777 d!1758639))

(declare-fun m!6548330 () Bool)

(assert (=> bs!1286777 m!6548330))

(assert (=> setNonEmpty!36981 d!1758639))

(declare-fun b!5556547 () Bool)

(declare-fun e!3431608 () Bool)

(declare-fun tp!1532924 () Bool)

(assert (=> b!5556547 (= e!3431608 tp!1532924)))

(declare-fun b!5556545 () Bool)

(assert (=> b!5556545 (= e!3431608 tp_is_empty!40339)))

(assert (=> b!5555893 (= tp!1532850 e!3431608)))

(declare-fun b!5556546 () Bool)

(declare-fun tp!1532921 () Bool)

(declare-fun tp!1532922 () Bool)

(assert (=> b!5556546 (= e!3431608 (and tp!1532921 tp!1532922))))

(declare-fun b!5556548 () Bool)

(declare-fun tp!1532920 () Bool)

(declare-fun tp!1532923 () Bool)

(assert (=> b!5556548 (= e!3431608 (and tp!1532920 tp!1532923))))

(assert (= (and b!5555893 ((_ is ElementMatch!15543) (reg!15872 r!7292))) b!5556545))

(assert (= (and b!5555893 ((_ is Concat!24388) (reg!15872 r!7292))) b!5556546))

(assert (= (and b!5555893 ((_ is Star!15543) (reg!15872 r!7292))) b!5556547))

(assert (= (and b!5555893 ((_ is Union!15543) (reg!15872 r!7292))) b!5556548))

(declare-fun b!5556553 () Bool)

(declare-fun e!3431611 () Bool)

(declare-fun tp!1532929 () Bool)

(declare-fun tp!1532930 () Bool)

(assert (=> b!5556553 (= e!3431611 (and tp!1532929 tp!1532930))))

(assert (=> b!5555897 (= tp!1532842 e!3431611)))

(assert (= (and b!5555897 ((_ is Cons!62804) (exprs!5427 setElem!36981))) b!5556553))

(declare-fun b!5556561 () Bool)

(declare-fun e!3431617 () Bool)

(declare-fun tp!1532935 () Bool)

(assert (=> b!5556561 (= e!3431617 tp!1532935)))

(declare-fun tp!1532936 () Bool)

(declare-fun b!5556560 () Bool)

(declare-fun e!3431616 () Bool)

(assert (=> b!5556560 (= e!3431616 (and (inv!82104 (h!69253 (t!376194 zl!343))) e!3431617 tp!1532936))))

(assert (=> b!5555881 (= tp!1532846 e!3431616)))

(assert (= b!5556560 b!5556561))

(assert (= (and b!5555881 ((_ is Cons!62805) (t!376194 zl!343))) b!5556560))

(declare-fun m!6548332 () Bool)

(assert (=> b!5556560 m!6548332))

(declare-fun b!5556566 () Bool)

(declare-fun e!3431620 () Bool)

(declare-fun tp!1532939 () Bool)

(assert (=> b!5556566 (= e!3431620 (and tp_is_empty!40339 tp!1532939))))

(assert (=> b!5555882 (= tp!1532849 e!3431620)))

(assert (= (and b!5555882 ((_ is Cons!62806) (t!376195 s!2326))) b!5556566))

(declare-fun b!5556569 () Bool)

(declare-fun e!3431621 () Bool)

(declare-fun tp!1532944 () Bool)

(assert (=> b!5556569 (= e!3431621 tp!1532944)))

(declare-fun b!5556567 () Bool)

(assert (=> b!5556567 (= e!3431621 tp_is_empty!40339)))

(assert (=> b!5555887 (= tp!1532845 e!3431621)))

(declare-fun b!5556568 () Bool)

(declare-fun tp!1532941 () Bool)

(declare-fun tp!1532942 () Bool)

(assert (=> b!5556568 (= e!3431621 (and tp!1532941 tp!1532942))))

(declare-fun b!5556570 () Bool)

(declare-fun tp!1532940 () Bool)

(declare-fun tp!1532943 () Bool)

(assert (=> b!5556570 (= e!3431621 (and tp!1532940 tp!1532943))))

(assert (= (and b!5555887 ((_ is ElementMatch!15543) (regOne!31599 r!7292))) b!5556567))

(assert (= (and b!5555887 ((_ is Concat!24388) (regOne!31599 r!7292))) b!5556568))

(assert (= (and b!5555887 ((_ is Star!15543) (regOne!31599 r!7292))) b!5556569))

(assert (= (and b!5555887 ((_ is Union!15543) (regOne!31599 r!7292))) b!5556570))

(declare-fun b!5556573 () Bool)

(declare-fun e!3431622 () Bool)

(declare-fun tp!1532949 () Bool)

(assert (=> b!5556573 (= e!3431622 tp!1532949)))

(declare-fun b!5556571 () Bool)

(assert (=> b!5556571 (= e!3431622 tp_is_empty!40339)))

(assert (=> b!5555887 (= tp!1532844 e!3431622)))

(declare-fun b!5556572 () Bool)

(declare-fun tp!1532946 () Bool)

(declare-fun tp!1532947 () Bool)

(assert (=> b!5556572 (= e!3431622 (and tp!1532946 tp!1532947))))

(declare-fun b!5556574 () Bool)

(declare-fun tp!1532945 () Bool)

(declare-fun tp!1532948 () Bool)

(assert (=> b!5556574 (= e!3431622 (and tp!1532945 tp!1532948))))

(assert (= (and b!5555887 ((_ is ElementMatch!15543) (regTwo!31599 r!7292))) b!5556571))

(assert (= (and b!5555887 ((_ is Concat!24388) (regTwo!31599 r!7292))) b!5556572))

(assert (= (and b!5555887 ((_ is Star!15543) (regTwo!31599 r!7292))) b!5556573))

(assert (= (and b!5555887 ((_ is Union!15543) (regTwo!31599 r!7292))) b!5556574))

(declare-fun b!5556575 () Bool)

(declare-fun e!3431623 () Bool)

(declare-fun tp!1532950 () Bool)

(declare-fun tp!1532951 () Bool)

(assert (=> b!5556575 (= e!3431623 (and tp!1532950 tp!1532951))))

(assert (=> b!5555885 (= tp!1532851 e!3431623)))

(assert (= (and b!5555885 ((_ is Cons!62804) (exprs!5427 (h!69253 zl!343)))) b!5556575))

(declare-fun b!5556578 () Bool)

(declare-fun e!3431624 () Bool)

(declare-fun tp!1532956 () Bool)

(assert (=> b!5556578 (= e!3431624 tp!1532956)))

(declare-fun b!5556576 () Bool)

(assert (=> b!5556576 (= e!3431624 tp_is_empty!40339)))

(assert (=> b!5555890 (= tp!1532847 e!3431624)))

(declare-fun b!5556577 () Bool)

(declare-fun tp!1532953 () Bool)

(declare-fun tp!1532954 () Bool)

(assert (=> b!5556577 (= e!3431624 (and tp!1532953 tp!1532954))))

(declare-fun b!5556579 () Bool)

(declare-fun tp!1532952 () Bool)

(declare-fun tp!1532955 () Bool)

(assert (=> b!5556579 (= e!3431624 (and tp!1532952 tp!1532955))))

(assert (= (and b!5555890 ((_ is ElementMatch!15543) (regOne!31598 r!7292))) b!5556576))

(assert (= (and b!5555890 ((_ is Concat!24388) (regOne!31598 r!7292))) b!5556577))

(assert (= (and b!5555890 ((_ is Star!15543) (regOne!31598 r!7292))) b!5556578))

(assert (= (and b!5555890 ((_ is Union!15543) (regOne!31598 r!7292))) b!5556579))

(declare-fun b!5556582 () Bool)

(declare-fun e!3431625 () Bool)

(declare-fun tp!1532961 () Bool)

(assert (=> b!5556582 (= e!3431625 tp!1532961)))

(declare-fun b!5556580 () Bool)

(assert (=> b!5556580 (= e!3431625 tp_is_empty!40339)))

(assert (=> b!5555890 (= tp!1532843 e!3431625)))

(declare-fun b!5556581 () Bool)

(declare-fun tp!1532958 () Bool)

(declare-fun tp!1532959 () Bool)

(assert (=> b!5556581 (= e!3431625 (and tp!1532958 tp!1532959))))

(declare-fun b!5556583 () Bool)

(declare-fun tp!1532957 () Bool)

(declare-fun tp!1532960 () Bool)

(assert (=> b!5556583 (= e!3431625 (and tp!1532957 tp!1532960))))

(assert (= (and b!5555890 ((_ is ElementMatch!15543) (regTwo!31598 r!7292))) b!5556580))

(assert (= (and b!5555890 ((_ is Concat!24388) (regTwo!31598 r!7292))) b!5556581))

(assert (= (and b!5555890 ((_ is Star!15543) (regTwo!31598 r!7292))) b!5556582))

(assert (= (and b!5555890 ((_ is Union!15543) (regTwo!31598 r!7292))) b!5556583))

(declare-fun condSetEmpty!36987 () Bool)

(assert (=> setNonEmpty!36981 (= condSetEmpty!36987 (= setRest!36981 ((as const (Array Context!9854 Bool)) false)))))

(declare-fun setRes!36987 () Bool)

(assert (=> setNonEmpty!36981 (= tp!1532848 setRes!36987)))

(declare-fun setIsEmpty!36987 () Bool)

(assert (=> setIsEmpty!36987 setRes!36987))

(declare-fun setElem!36987 () Context!9854)

(declare-fun e!3431628 () Bool)

(declare-fun tp!1532966 () Bool)

(declare-fun setNonEmpty!36987 () Bool)

(assert (=> setNonEmpty!36987 (= setRes!36987 (and tp!1532966 (inv!82104 setElem!36987) e!3431628))))

(declare-fun setRest!36987 () (InoxSet Context!9854))

(assert (=> setNonEmpty!36987 (= setRest!36981 ((_ map or) (store ((as const (Array Context!9854 Bool)) false) setElem!36987 true) setRest!36987))))

(declare-fun b!5556588 () Bool)

(declare-fun tp!1532967 () Bool)

(assert (=> b!5556588 (= e!3431628 tp!1532967)))

(assert (= (and setNonEmpty!36981 condSetEmpty!36987) setIsEmpty!36987))

(assert (= (and setNonEmpty!36981 (not condSetEmpty!36987)) setNonEmpty!36987))

(assert (= setNonEmpty!36987 b!5556588))

(declare-fun m!6548334 () Bool)

(assert (=> setNonEmpty!36987 m!6548334))

(declare-fun b_lambda!210985 () Bool)

(assert (= b_lambda!210979 (or b!5555886 b_lambda!210985)))

(declare-fun bs!1286778 () Bool)

(declare-fun d!1758641 () Bool)

(assert (= bs!1286778 (and d!1758641 b!5555886)))

(assert (=> bs!1286778 (= (dynLambda!24561 lambda!298141 (h!69253 zl!343)) (derivationStepZipperUp!811 (h!69253 zl!343) (h!69254 s!2326)))))

(assert (=> bs!1286778 m!6547942))

(assert (=> d!1758589 d!1758641))

(check-sat (not b!5556459) (not d!1758537) (not bm!414267) (not b!5556367) (not d!1758635) (not b!5556524) (not b!5556284) (not b!5556572) (not bm!414213) (not bm!414222) (not b!5556531) (not b!5556132) (not b!5556285) (not b!5556568) (not b!5556574) (not b!5556217) (not d!1758637) (not b!5556091) (not d!1758539) (not b!5556578) (not b!5556060) (not b!5556281) (not b!5556569) (not b!5555963) (not b!5556023) (not d!1758581) (not bm!414242) (not b!5556279) (not d!1758559) (not b!5556573) (not b!5556278) (not b!5556561) (not b!5556546) (not b!5556470) (not d!1758587) (not b!5556212) (not b!5555961) (not d!1758571) (not b!5555960) (not b!5556560) (not d!1758633) (not b_lambda!210985) (not b!5556363) (not b!5556581) (not d!1758629) (not bm!414246) (not b!5556529) (not b!5556283) (not b!5556577) (not b!5556058) (not b!5556135) (not b!5556582) (not b!5556547) (not b!5555962) (not b!5556548) (not b!5556197) (not d!1758557) (not d!1758563) (not b!5555966) (not b!5556525) (not b!5556579) (not d!1758589) (not b!5556468) (not d!1758627) (not bm!414244) (not b!5555958) (not b!5556566) (not d!1758605) (not b!5556570) (not b!5556471) (not b!5556575) (not b!5556462) (not setNonEmpty!36987) (not b!5556588) (not bm!414266) (not b!5556527) (not b!5556526) (not d!1758547) (not d!1758561) (not b!5556061) (not b!5556301) (not b!5556209) (not bm!414215) (not b!5556469) (not b!5556553) (not b!5556583) tp_is_empty!40339 (not b!5556282) (not bm!414245) (not d!1758541) (not bm!414240) (not bm!414288) (not b!5556214) (not d!1758529) (not bs!1286778) (not d!1758639) (not b!5556532) (not b!5556059) (not d!1758595))
(check-sat)
(get-model)

(declare-fun b!5556589 () Bool)

(declare-fun e!3431630 () Bool)

(declare-fun e!3431629 () Bool)

(assert (=> b!5556589 (= e!3431630 e!3431629)))

(declare-fun res!2361846 () Bool)

(assert (=> b!5556589 (=> (not res!2361846) (not e!3431629))))

(declare-fun lt!2251172 () Bool)

(assert (=> b!5556589 (= res!2361846 (not lt!2251172))))

(declare-fun bm!414289 () Bool)

(declare-fun call!414294 () Bool)

(assert (=> bm!414289 (= call!414294 (isEmpty!34604 (_2!35943 (get!21619 lt!2251114))))))

(declare-fun b!5556590 () Bool)

(declare-fun e!3431634 () Bool)

(assert (=> b!5556590 (= e!3431634 (not (= (head!11868 (_2!35943 (get!21619 lt!2251114))) (c!972627 (regTwo!31598 r!7292)))))))

(declare-fun d!1758643 () Bool)

(declare-fun e!3431635 () Bool)

(assert (=> d!1758643 e!3431635))

(declare-fun c!972811 () Bool)

(assert (=> d!1758643 (= c!972811 ((_ is EmptyExpr!15543) (regTwo!31598 r!7292)))))

(declare-fun e!3431633 () Bool)

(assert (=> d!1758643 (= lt!2251172 e!3431633)))

(declare-fun c!972812 () Bool)

(assert (=> d!1758643 (= c!972812 (isEmpty!34604 (_2!35943 (get!21619 lt!2251114))))))

(assert (=> d!1758643 (validRegex!7279 (regTwo!31598 r!7292))))

(assert (=> d!1758643 (= (matchR!7728 (regTwo!31598 r!7292) (_2!35943 (get!21619 lt!2251114))) lt!2251172)))

(declare-fun b!5556591 () Bool)

(declare-fun res!2361842 () Bool)

(declare-fun e!3431632 () Bool)

(assert (=> b!5556591 (=> (not res!2361842) (not e!3431632))))

(assert (=> b!5556591 (= res!2361842 (not call!414294))))

(declare-fun b!5556592 () Bool)

(declare-fun e!3431631 () Bool)

(assert (=> b!5556592 (= e!3431635 e!3431631)))

(declare-fun c!972810 () Bool)

(assert (=> b!5556592 (= c!972810 ((_ is EmptyLang!15543) (regTwo!31598 r!7292)))))

(declare-fun b!5556593 () Bool)

(assert (=> b!5556593 (= e!3431633 (matchR!7728 (derivativeStep!4398 (regTwo!31598 r!7292) (head!11868 (_2!35943 (get!21619 lt!2251114)))) (tail!10963 (_2!35943 (get!21619 lt!2251114)))))))

(declare-fun b!5556594 () Bool)

(declare-fun res!2361844 () Bool)

(assert (=> b!5556594 (=> res!2361844 e!3431630)))

(assert (=> b!5556594 (= res!2361844 (not ((_ is ElementMatch!15543) (regTwo!31598 r!7292))))))

(assert (=> b!5556594 (= e!3431631 e!3431630)))

(declare-fun b!5556595 () Bool)

(assert (=> b!5556595 (= e!3431631 (not lt!2251172))))

(declare-fun b!5556596 () Bool)

(declare-fun res!2361843 () Bool)

(assert (=> b!5556596 (=> res!2361843 e!3431630)))

(assert (=> b!5556596 (= res!2361843 e!3431632)))

(declare-fun res!2361847 () Bool)

(assert (=> b!5556596 (=> (not res!2361847) (not e!3431632))))

(assert (=> b!5556596 (= res!2361847 lt!2251172)))

(declare-fun b!5556597 () Bool)

(assert (=> b!5556597 (= e!3431635 (= lt!2251172 call!414294))))

(declare-fun b!5556598 () Bool)

(assert (=> b!5556598 (= e!3431629 e!3431634)))

(declare-fun res!2361841 () Bool)

(assert (=> b!5556598 (=> res!2361841 e!3431634)))

(assert (=> b!5556598 (= res!2361841 call!414294)))

(declare-fun b!5556599 () Bool)

(assert (=> b!5556599 (= e!3431632 (= (head!11868 (_2!35943 (get!21619 lt!2251114))) (c!972627 (regTwo!31598 r!7292))))))

(declare-fun b!5556600 () Bool)

(assert (=> b!5556600 (= e!3431633 (nullable!5575 (regTwo!31598 r!7292)))))

(declare-fun b!5556601 () Bool)

(declare-fun res!2361845 () Bool)

(assert (=> b!5556601 (=> res!2361845 e!3431634)))

(assert (=> b!5556601 (= res!2361845 (not (isEmpty!34604 (tail!10963 (_2!35943 (get!21619 lt!2251114))))))))

(declare-fun b!5556602 () Bool)

(declare-fun res!2361848 () Bool)

(assert (=> b!5556602 (=> (not res!2361848) (not e!3431632))))

(assert (=> b!5556602 (= res!2361848 (isEmpty!34604 (tail!10963 (_2!35943 (get!21619 lt!2251114)))))))

(assert (= (and d!1758643 c!972812) b!5556600))

(assert (= (and d!1758643 (not c!972812)) b!5556593))

(assert (= (and d!1758643 c!972811) b!5556597))

(assert (= (and d!1758643 (not c!972811)) b!5556592))

(assert (= (and b!5556592 c!972810) b!5556595))

(assert (= (and b!5556592 (not c!972810)) b!5556594))

(assert (= (and b!5556594 (not res!2361844)) b!5556596))

(assert (= (and b!5556596 res!2361847) b!5556591))

(assert (= (and b!5556591 res!2361842) b!5556602))

(assert (= (and b!5556602 res!2361848) b!5556599))

(assert (= (and b!5556596 (not res!2361843)) b!5556589))

(assert (= (and b!5556589 res!2361846) b!5556598))

(assert (= (and b!5556598 (not res!2361841)) b!5556601))

(assert (= (and b!5556601 (not res!2361845)) b!5556590))

(assert (= (or b!5556597 b!5556591 b!5556598) bm!414289))

(declare-fun m!6548336 () Bool)

(assert (=> bm!414289 m!6548336))

(declare-fun m!6548338 () Bool)

(assert (=> b!5556600 m!6548338))

(declare-fun m!6548340 () Bool)

(assert (=> b!5556590 m!6548340))

(assert (=> d!1758643 m!6548336))

(declare-fun m!6548342 () Bool)

(assert (=> d!1758643 m!6548342))

(declare-fun m!6548344 () Bool)

(assert (=> b!5556602 m!6548344))

(assert (=> b!5556602 m!6548344))

(declare-fun m!6548346 () Bool)

(assert (=> b!5556602 m!6548346))

(assert (=> b!5556601 m!6548344))

(assert (=> b!5556601 m!6548344))

(assert (=> b!5556601 m!6548346))

(assert (=> b!5556593 m!6548340))

(assert (=> b!5556593 m!6548340))

(declare-fun m!6548348 () Bool)

(assert (=> b!5556593 m!6548348))

(assert (=> b!5556593 m!6548344))

(assert (=> b!5556593 m!6548348))

(assert (=> b!5556593 m!6548344))

(declare-fun m!6548350 () Bool)

(assert (=> b!5556593 m!6548350))

(assert (=> b!5556599 m!6548340))

(assert (=> b!5555960 d!1758643))

(declare-fun d!1758645 () Bool)

(assert (=> d!1758645 (= (get!21619 lt!2251114) (v!51590 lt!2251114))))

(assert (=> b!5555960 d!1758645))

(declare-fun d!1758647 () Bool)

(assert (=> d!1758647 (= (nullable!5575 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))) (nullableFct!1690 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun bs!1286779 () Bool)

(assert (= bs!1286779 d!1758647))

(declare-fun m!6548352 () Bool)

(assert (=> bs!1286779 m!6548352))

(assert (=> b!5556197 d!1758647))

(declare-fun d!1758649 () Bool)

(assert (=> d!1758649 (= (Exists!2643 (ite c!972769 lambda!298192 lambda!298193)) (choose!42151 (ite c!972769 lambda!298192 lambda!298193)))))

(declare-fun bs!1286780 () Bool)

(assert (= bs!1286780 d!1758649))

(declare-fun m!6548354 () Bool)

(assert (=> bs!1286780 m!6548354))

(assert (=> bm!414266 d!1758649))

(declare-fun d!1758651 () Bool)

(assert (=> d!1758651 (= (isEmpty!34600 (unfocusZipperList!971 zl!343)) ((_ is Nil!62804) (unfocusZipperList!971 zl!343)))))

(assert (=> b!5556285 d!1758651))

(assert (=> d!1758541 d!1758529))

(declare-fun bm!414290 () Bool)

(declare-fun call!414297 () Bool)

(declare-fun c!972814 () Bool)

(assert (=> bm!414290 (= call!414297 (validRegex!7279 (ite c!972814 (regOne!31599 (regOne!31598 r!7292)) (regOne!31598 (regOne!31598 r!7292)))))))

(declare-fun b!5556603 () Bool)

(declare-fun e!3431636 () Bool)

(declare-fun call!414296 () Bool)

(assert (=> b!5556603 (= e!3431636 call!414296)))

(declare-fun bm!414291 () Bool)

(declare-fun call!414295 () Bool)

(assert (=> bm!414291 (= call!414296 call!414295)))

(declare-fun bm!414292 () Bool)

(declare-fun c!972813 () Bool)

(assert (=> bm!414292 (= call!414295 (validRegex!7279 (ite c!972813 (reg!15872 (regOne!31598 r!7292)) (ite c!972814 (regTwo!31599 (regOne!31598 r!7292)) (regTwo!31598 (regOne!31598 r!7292))))))))

(declare-fun d!1758653 () Bool)

(declare-fun res!2361851 () Bool)

(declare-fun e!3431639 () Bool)

(assert (=> d!1758653 (=> res!2361851 e!3431639)))

(assert (=> d!1758653 (= res!2361851 ((_ is ElementMatch!15543) (regOne!31598 r!7292)))))

(assert (=> d!1758653 (= (validRegex!7279 (regOne!31598 r!7292)) e!3431639)))

(declare-fun b!5556604 () Bool)

(declare-fun e!3431641 () Bool)

(assert (=> b!5556604 (= e!3431641 call!414295)))

(declare-fun b!5556605 () Bool)

(declare-fun e!3431640 () Bool)

(assert (=> b!5556605 (= e!3431640 call!414296)))

(declare-fun b!5556606 () Bool)

(declare-fun e!3431637 () Bool)

(assert (=> b!5556606 (= e!3431637 e!3431640)))

(declare-fun res!2361849 () Bool)

(assert (=> b!5556606 (=> (not res!2361849) (not e!3431640))))

(assert (=> b!5556606 (= res!2361849 call!414297)))

(declare-fun b!5556607 () Bool)

(declare-fun e!3431642 () Bool)

(assert (=> b!5556607 (= e!3431639 e!3431642)))

(assert (=> b!5556607 (= c!972813 ((_ is Star!15543) (regOne!31598 r!7292)))))

(declare-fun b!5556608 () Bool)

(declare-fun e!3431638 () Bool)

(assert (=> b!5556608 (= e!3431642 e!3431638)))

(assert (=> b!5556608 (= c!972814 ((_ is Union!15543) (regOne!31598 r!7292)))))

(declare-fun b!5556609 () Bool)

(declare-fun res!2361850 () Bool)

(assert (=> b!5556609 (=> (not res!2361850) (not e!3431636))))

(assert (=> b!5556609 (= res!2361850 call!414297)))

(assert (=> b!5556609 (= e!3431638 e!3431636)))

(declare-fun b!5556610 () Bool)

(assert (=> b!5556610 (= e!3431642 e!3431641)))

(declare-fun res!2361853 () Bool)

(assert (=> b!5556610 (= res!2361853 (not (nullable!5575 (reg!15872 (regOne!31598 r!7292)))))))

(assert (=> b!5556610 (=> (not res!2361853) (not e!3431641))))

(declare-fun b!5556611 () Bool)

(declare-fun res!2361852 () Bool)

(assert (=> b!5556611 (=> res!2361852 e!3431637)))

(assert (=> b!5556611 (= res!2361852 (not ((_ is Concat!24388) (regOne!31598 r!7292))))))

(assert (=> b!5556611 (= e!3431638 e!3431637)))

(assert (= (and d!1758653 (not res!2361851)) b!5556607))

(assert (= (and b!5556607 c!972813) b!5556610))

(assert (= (and b!5556607 (not c!972813)) b!5556608))

(assert (= (and b!5556610 res!2361853) b!5556604))

(assert (= (and b!5556608 c!972814) b!5556609))

(assert (= (and b!5556608 (not c!972814)) b!5556611))

(assert (= (and b!5556609 res!2361850) b!5556603))

(assert (= (and b!5556611 (not res!2361852)) b!5556606))

(assert (= (and b!5556606 res!2361849) b!5556605))

(assert (= (or b!5556603 b!5556605) bm!414291))

(assert (= (or b!5556609 b!5556606) bm!414290))

(assert (= (or b!5556604 bm!414291) bm!414292))

(declare-fun m!6548356 () Bool)

(assert (=> bm!414290 m!6548356))

(declare-fun m!6548358 () Bool)

(assert (=> bm!414292 m!6548358))

(declare-fun m!6548360 () Bool)

(assert (=> b!5556610 m!6548360))

(assert (=> d!1758541 d!1758653))

(assert (=> d!1758541 d!1758557))

(declare-fun d!1758655 () Bool)

(assert (=> d!1758655 (= (Exists!2643 lambda!298158) (choose!42151 lambda!298158))))

(declare-fun bs!1286781 () Bool)

(assert (= bs!1286781 d!1758655))

(declare-fun m!6548362 () Bool)

(assert (=> bs!1286781 m!6548362))

(assert (=> d!1758541 d!1758655))

(declare-fun bs!1286782 () Bool)

(declare-fun d!1758657 () Bool)

(assert (= bs!1286782 (and d!1758657 d!1758547)))

(declare-fun lambda!298206 () Int)

(assert (=> bs!1286782 (= lambda!298206 lambda!298171)))

(declare-fun bs!1286783 () Bool)

(assert (= bs!1286783 (and d!1758657 d!1758541)))

(assert (=> bs!1286783 (= lambda!298206 lambda!298158)))

(declare-fun bs!1286784 () Bool)

(assert (= bs!1286784 (and d!1758657 b!5555888)))

(assert (=> bs!1286784 (= lambda!298206 lambda!298139)))

(declare-fun bs!1286785 () Bool)

(assert (= bs!1286785 (and d!1758657 b!5556365)))

(assert (=> bs!1286785 (not (= lambda!298206 lambda!298192))))

(assert (=> bs!1286782 (not (= lambda!298206 lambda!298172))))

(assert (=> bs!1286784 (not (= lambda!298206 lambda!298140))))

(declare-fun bs!1286786 () Bool)

(assert (= bs!1286786 (and d!1758657 b!5556369)))

(assert (=> bs!1286786 (not (= lambda!298206 lambda!298193))))

(assert (=> d!1758657 true))

(assert (=> d!1758657 true))

(assert (=> d!1758657 true))

(assert (=> d!1758657 (= (isDefined!12255 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326)) (Exists!2643 lambda!298206))))

(assert (=> d!1758657 true))

(declare-fun _$89!1659 () Unit!155546)

(assert (=> d!1758657 (= (choose!42152 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326) _$89!1659)))

(declare-fun bs!1286787 () Bool)

(assert (= bs!1286787 d!1758657))

(assert (=> bs!1286787 m!6547922))

(assert (=> bs!1286787 m!6547922))

(assert (=> bs!1286787 m!6547924))

(declare-fun m!6548364 () Bool)

(assert (=> bs!1286787 m!6548364))

(assert (=> d!1758541 d!1758657))

(declare-fun d!1758659 () Bool)

(assert (=> d!1758659 (= (isEmpty!34600 (t!376193 (unfocusZipperList!971 zl!343))) ((_ is Nil!62804) (t!376193 (unfocusZipperList!971 zl!343))))))

(assert (=> b!5556283 d!1758659))

(declare-fun bs!1286788 () Bool)

(declare-fun d!1758661 () Bool)

(assert (= bs!1286788 (and d!1758661 d!1758605)))

(declare-fun lambda!298207 () Int)

(assert (=> bs!1286788 (= lambda!298207 lambda!298187)))

(declare-fun bs!1286789 () Bool)

(assert (= bs!1286789 (and d!1758661 d!1758595)))

(assert (=> bs!1286789 (= lambda!298207 lambda!298184)))

(declare-fun bs!1286790 () Bool)

(assert (= bs!1286790 (and d!1758661 d!1758639)))

(assert (=> bs!1286790 (= lambda!298207 lambda!298203)))

(declare-fun bs!1286791 () Bool)

(assert (= bs!1286791 (and d!1758661 d!1758635)))

(assert (=> bs!1286791 (= lambda!298207 lambda!298199)))

(declare-fun bs!1286792 () Bool)

(assert (= bs!1286792 (and d!1758661 d!1758633)))

(assert (=> bs!1286792 (= lambda!298207 lambda!298196)))

(declare-fun b!5556616 () Bool)

(declare-fun e!3431647 () Regex!15543)

(assert (=> b!5556616 (= e!3431647 EmptyExpr!15543)))

(declare-fun b!5556617 () Bool)

(declare-fun e!3431645 () Bool)

(declare-fun lt!2251173 () Regex!15543)

(assert (=> b!5556617 (= e!3431645 (= lt!2251173 (head!11870 (t!376193 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556618 () Bool)

(declare-fun e!3431650 () Bool)

(assert (=> b!5556618 (= e!3431650 (isEmptyExpr!1105 lt!2251173))))

(declare-fun b!5556619 () Bool)

(assert (=> b!5556619 (= e!3431645 (isConcat!628 lt!2251173))))

(declare-fun b!5556620 () Bool)

(assert (=> b!5556620 (= e!3431650 e!3431645)))

(declare-fun c!972817 () Bool)

(assert (=> b!5556620 (= c!972817 (isEmpty!34600 (tail!10965 (t!376193 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556621 () Bool)

(declare-fun e!3431649 () Regex!15543)

(assert (=> b!5556621 (= e!3431649 e!3431647)))

(declare-fun c!972818 () Bool)

(assert (=> b!5556621 (= c!972818 ((_ is Cons!62804) (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun e!3431648 () Bool)

(assert (=> d!1758661 e!3431648))

(declare-fun res!2361859 () Bool)

(assert (=> d!1758661 (=> (not res!2361859) (not e!3431648))))

(assert (=> d!1758661 (= res!2361859 (validRegex!7279 lt!2251173))))

(assert (=> d!1758661 (= lt!2251173 e!3431649)))

(declare-fun c!972815 () Bool)

(declare-fun e!3431646 () Bool)

(assert (=> d!1758661 (= c!972815 e!3431646)))

(declare-fun res!2361858 () Bool)

(assert (=> d!1758661 (=> (not res!2361858) (not e!3431646))))

(assert (=> d!1758661 (= res!2361858 ((_ is Cons!62804) (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(assert (=> d!1758661 (forall!14715 (t!376193 (exprs!5427 (h!69253 zl!343))) lambda!298207)))

(assert (=> d!1758661 (= (generalisedConcat!1158 (t!376193 (exprs!5427 (h!69253 zl!343)))) lt!2251173)))

(declare-fun b!5556622 () Bool)

(assert (=> b!5556622 (= e!3431646 (isEmpty!34600 (t!376193 (t!376193 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556623 () Bool)

(assert (=> b!5556623 (= e!3431649 (h!69252 (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556624 () Bool)

(assert (=> b!5556624 (= e!3431647 (Concat!24388 (h!69252 (t!376193 (exprs!5427 (h!69253 zl!343)))) (generalisedConcat!1158 (t!376193 (t!376193 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun b!5556625 () Bool)

(assert (=> b!5556625 (= e!3431648 e!3431650)))

(declare-fun c!972816 () Bool)

(assert (=> b!5556625 (= c!972816 (isEmpty!34600 (t!376193 (exprs!5427 (h!69253 zl!343)))))))

(assert (= (and d!1758661 res!2361858) b!5556622))

(assert (= (and d!1758661 c!972815) b!5556623))

(assert (= (and d!1758661 (not c!972815)) b!5556621))

(assert (= (and b!5556621 c!972818) b!5556624))

(assert (= (and b!5556621 (not c!972818)) b!5556616))

(assert (= (and d!1758661 res!2361859) b!5556625))

(assert (= (and b!5556625 c!972816) b!5556618))

(assert (= (and b!5556625 (not c!972816)) b!5556620))

(assert (= (and b!5556620 c!972817) b!5556617))

(assert (= (and b!5556620 (not c!972817)) b!5556619))

(declare-fun m!6548366 () Bool)

(assert (=> d!1758661 m!6548366))

(declare-fun m!6548368 () Bool)

(assert (=> d!1758661 m!6548368))

(declare-fun m!6548370 () Bool)

(assert (=> b!5556620 m!6548370))

(assert (=> b!5556620 m!6548370))

(declare-fun m!6548372 () Bool)

(assert (=> b!5556620 m!6548372))

(declare-fun m!6548374 () Bool)

(assert (=> b!5556624 m!6548374))

(assert (=> b!5556625 m!6547918))

(declare-fun m!6548376 () Bool)

(assert (=> b!5556619 m!6548376))

(declare-fun m!6548378 () Bool)

(assert (=> b!5556617 m!6548378))

(declare-fun m!6548380 () Bool)

(assert (=> b!5556618 m!6548380))

(declare-fun m!6548382 () Bool)

(assert (=> b!5556622 m!6548382))

(assert (=> b!5556531 d!1758661))

(declare-fun d!1758663 () Bool)

(assert (=> d!1758663 (= (isEmpty!34600 (tail!10965 (exprs!5427 (h!69253 zl!343)))) ((_ is Nil!62804) (tail!10965 (exprs!5427 (h!69253 zl!343)))))))

(assert (=> b!5556527 d!1758663))

(declare-fun d!1758665 () Bool)

(assert (=> d!1758665 (= (tail!10965 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))

(assert (=> b!5556527 d!1758665))

(declare-fun d!1758667 () Bool)

(declare-fun e!3431655 () Bool)

(assert (=> d!1758667 e!3431655))

(declare-fun res!2361865 () Bool)

(assert (=> d!1758667 (=> (not res!2361865) (not e!3431655))))

(declare-fun lt!2251176 () List!62930)

(declare-fun content!11311 (List!62930) (InoxSet C!31356))

(assert (=> d!1758667 (= res!2361865 (= (content!11311 lt!2251176) ((_ map or) (content!11311 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))) (content!11311 (t!376195 s!2326)))))))

(declare-fun e!3431656 () List!62930)

(assert (=> d!1758667 (= lt!2251176 e!3431656)))

(declare-fun c!972821 () Bool)

(assert (=> d!1758667 (= c!972821 ((_ is Nil!62806) (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))))))

(assert (=> d!1758667 (= (++!13780 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326)) lt!2251176)))

(declare-fun b!5556637 () Bool)

(assert (=> b!5556637 (= e!3431655 (or (not (= (t!376195 s!2326) Nil!62806)) (= lt!2251176 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)))))))

(declare-fun b!5556635 () Bool)

(assert (=> b!5556635 (= e!3431656 (Cons!62806 (h!69254 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))) (++!13780 (t!376195 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))) (t!376195 s!2326))))))

(declare-fun b!5556636 () Bool)

(declare-fun res!2361864 () Bool)

(assert (=> b!5556636 (=> (not res!2361864) (not e!3431655))))

(declare-fun size!39951 (List!62930) Int)

(assert (=> b!5556636 (= res!2361864 (= (size!39951 lt!2251176) (+ (size!39951 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))) (size!39951 (t!376195 s!2326)))))))

(declare-fun b!5556634 () Bool)

(assert (=> b!5556634 (= e!3431656 (t!376195 s!2326))))

(assert (= (and d!1758667 c!972821) b!5556634))

(assert (= (and d!1758667 (not c!972821)) b!5556635))

(assert (= (and d!1758667 res!2361865) b!5556636))

(assert (= (and b!5556636 res!2361864) b!5556637))

(declare-fun m!6548384 () Bool)

(assert (=> d!1758667 m!6548384))

(assert (=> d!1758667 m!6548014))

(declare-fun m!6548386 () Bool)

(assert (=> d!1758667 m!6548386))

(declare-fun m!6548388 () Bool)

(assert (=> d!1758667 m!6548388))

(declare-fun m!6548390 () Bool)

(assert (=> b!5556635 m!6548390))

(declare-fun m!6548392 () Bool)

(assert (=> b!5556636 m!6548392))

(assert (=> b!5556636 m!6548014))

(declare-fun m!6548394 () Bool)

(assert (=> b!5556636 m!6548394))

(declare-fun m!6548396 () Bool)

(assert (=> b!5556636 m!6548396))

(assert (=> b!5555958 d!1758667))

(declare-fun d!1758669 () Bool)

(declare-fun e!3431657 () Bool)

(assert (=> d!1758669 e!3431657))

(declare-fun res!2361867 () Bool)

(assert (=> d!1758669 (=> (not res!2361867) (not e!3431657))))

(declare-fun lt!2251177 () List!62930)

(assert (=> d!1758669 (= res!2361867 (= (content!11311 lt!2251177) ((_ map or) (content!11311 Nil!62806) (content!11311 (Cons!62806 (h!69254 s!2326) Nil!62806)))))))

(declare-fun e!3431658 () List!62930)

(assert (=> d!1758669 (= lt!2251177 e!3431658)))

(declare-fun c!972822 () Bool)

(assert (=> d!1758669 (= c!972822 ((_ is Nil!62806) Nil!62806))))

(assert (=> d!1758669 (= (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) lt!2251177)))

(declare-fun b!5556641 () Bool)

(assert (=> b!5556641 (= e!3431657 (or (not (= (Cons!62806 (h!69254 s!2326) Nil!62806) Nil!62806)) (= lt!2251177 Nil!62806)))))

(declare-fun b!5556639 () Bool)

(assert (=> b!5556639 (= e!3431658 (Cons!62806 (h!69254 Nil!62806) (++!13780 (t!376195 Nil!62806) (Cons!62806 (h!69254 s!2326) Nil!62806))))))

(declare-fun b!5556640 () Bool)

(declare-fun res!2361866 () Bool)

(assert (=> b!5556640 (=> (not res!2361866) (not e!3431657))))

(assert (=> b!5556640 (= res!2361866 (= (size!39951 lt!2251177) (+ (size!39951 Nil!62806) (size!39951 (Cons!62806 (h!69254 s!2326) Nil!62806)))))))

(declare-fun b!5556638 () Bool)

(assert (=> b!5556638 (= e!3431658 (Cons!62806 (h!69254 s!2326) Nil!62806))))

(assert (= (and d!1758669 c!972822) b!5556638))

(assert (= (and d!1758669 (not c!972822)) b!5556639))

(assert (= (and d!1758669 res!2361867) b!5556640))

(assert (= (and b!5556640 res!2361866) b!5556641))

(declare-fun m!6548398 () Bool)

(assert (=> d!1758669 m!6548398))

(declare-fun m!6548400 () Bool)

(assert (=> d!1758669 m!6548400))

(declare-fun m!6548402 () Bool)

(assert (=> d!1758669 m!6548402))

(declare-fun m!6548404 () Bool)

(assert (=> b!5556639 m!6548404))

(declare-fun m!6548406 () Bool)

(assert (=> b!5556640 m!6548406))

(declare-fun m!6548408 () Bool)

(assert (=> b!5556640 m!6548408))

(declare-fun m!6548410 () Bool)

(assert (=> b!5556640 m!6548410))

(assert (=> b!5555958 d!1758669))

(declare-fun d!1758671 () Bool)

(assert (=> d!1758671 (= (++!13780 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326)) s!2326)))

(declare-fun lt!2251180 () Unit!155546)

(declare-fun choose!42162 (List!62930 C!31356 List!62930 List!62930) Unit!155546)

(assert (=> d!1758671 (= lt!2251180 (choose!42162 Nil!62806 (h!69254 s!2326) (t!376195 s!2326) s!2326))))

(assert (=> d!1758671 (= (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) (t!376195 s!2326))) s!2326)))

(assert (=> d!1758671 (= (lemmaMoveElementToOtherListKeepsConcatEq!1949 Nil!62806 (h!69254 s!2326) (t!376195 s!2326) s!2326) lt!2251180)))

(declare-fun bs!1286793 () Bool)

(assert (= bs!1286793 d!1758671))

(assert (=> bs!1286793 m!6548014))

(assert (=> bs!1286793 m!6548014))

(assert (=> bs!1286793 m!6548016))

(declare-fun m!6548412 () Bool)

(assert (=> bs!1286793 m!6548412))

(declare-fun m!6548414 () Bool)

(assert (=> bs!1286793 m!6548414))

(assert (=> b!5555958 d!1758671))

(declare-fun b!5556642 () Bool)

(declare-fun lt!2251183 () Unit!155546)

(declare-fun lt!2251182 () Unit!155546)

(assert (=> b!5556642 (= lt!2251183 lt!2251182)))

(assert (=> b!5556642 (= (++!13780 (++!13780 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (Cons!62806 (h!69254 (t!376195 s!2326)) Nil!62806)) (t!376195 (t!376195 s!2326))) s!2326)))

(assert (=> b!5556642 (= lt!2251182 (lemmaMoveElementToOtherListKeepsConcatEq!1949 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (h!69254 (t!376195 s!2326)) (t!376195 (t!376195 s!2326)) s!2326))))

(declare-fun e!3431663 () Option!15552)

(assert (=> b!5556642 (= e!3431663 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) (++!13780 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (Cons!62806 (h!69254 (t!376195 s!2326)) Nil!62806)) (t!376195 (t!376195 s!2326)) s!2326))))

(declare-fun b!5556643 () Bool)

(assert (=> b!5556643 (= e!3431663 None!15551)))

(declare-fun b!5556644 () Bool)

(declare-fun res!2361872 () Bool)

(declare-fun e!3431662 () Bool)

(assert (=> b!5556644 (=> (not res!2361872) (not e!3431662))))

(declare-fun lt!2251181 () Option!15552)

(assert (=> b!5556644 (= res!2361872 (matchR!7728 (regTwo!31598 r!7292) (_2!35943 (get!21619 lt!2251181))))))

(declare-fun b!5556645 () Bool)

(declare-fun e!3431659 () Bool)

(assert (=> b!5556645 (= e!3431659 (matchR!7728 (regTwo!31598 r!7292) (t!376195 s!2326)))))

(declare-fun b!5556646 () Bool)

(assert (=> b!5556646 (= e!3431662 (= (++!13780 (_1!35943 (get!21619 lt!2251181)) (_2!35943 (get!21619 lt!2251181))) s!2326))))

(declare-fun b!5556647 () Bool)

(declare-fun res!2361868 () Bool)

(assert (=> b!5556647 (=> (not res!2361868) (not e!3431662))))

(assert (=> b!5556647 (= res!2361868 (matchR!7728 (regOne!31598 r!7292) (_1!35943 (get!21619 lt!2251181))))))

(declare-fun b!5556648 () Bool)

(declare-fun e!3431661 () Option!15552)

(assert (=> b!5556648 (= e!3431661 e!3431663)))

(declare-fun c!972824 () Bool)

(assert (=> b!5556648 (= c!972824 ((_ is Nil!62806) (t!376195 s!2326)))))

(declare-fun d!1758673 () Bool)

(declare-fun e!3431660 () Bool)

(assert (=> d!1758673 e!3431660))

(declare-fun res!2361870 () Bool)

(assert (=> d!1758673 (=> res!2361870 e!3431660)))

(assert (=> d!1758673 (= res!2361870 e!3431662)))

(declare-fun res!2361871 () Bool)

(assert (=> d!1758673 (=> (not res!2361871) (not e!3431662))))

(assert (=> d!1758673 (= res!2361871 (isDefined!12255 lt!2251181))))

(assert (=> d!1758673 (= lt!2251181 e!3431661)))

(declare-fun c!972823 () Bool)

(assert (=> d!1758673 (= c!972823 e!3431659)))

(declare-fun res!2361869 () Bool)

(assert (=> d!1758673 (=> (not res!2361869) (not e!3431659))))

(assert (=> d!1758673 (= res!2361869 (matchR!7728 (regOne!31598 r!7292) (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806))))))

(assert (=> d!1758673 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758673 (= (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326) s!2326) lt!2251181)))

(declare-fun b!5556649 () Bool)

(assert (=> b!5556649 (= e!3431661 (Some!15551 (tuple2!65281 (++!13780 Nil!62806 (Cons!62806 (h!69254 s!2326) Nil!62806)) (t!376195 s!2326))))))

(declare-fun b!5556650 () Bool)

(assert (=> b!5556650 (= e!3431660 (not (isDefined!12255 lt!2251181)))))

(assert (= (and d!1758673 res!2361869) b!5556645))

(assert (= (and d!1758673 c!972823) b!5556649))

(assert (= (and d!1758673 (not c!972823)) b!5556648))

(assert (= (and b!5556648 c!972824) b!5556643))

(assert (= (and b!5556648 (not c!972824)) b!5556642))

(assert (= (and d!1758673 res!2361871) b!5556647))

(assert (= (and b!5556647 res!2361868) b!5556644))

(assert (= (and b!5556644 res!2361872) b!5556646))

(assert (= (and d!1758673 (not res!2361870)) b!5556650))

(declare-fun m!6548416 () Bool)

(assert (=> b!5556645 m!6548416))

(declare-fun m!6548418 () Bool)

(assert (=> b!5556647 m!6548418))

(declare-fun m!6548420 () Bool)

(assert (=> b!5556647 m!6548420))

(assert (=> b!5556646 m!6548418))

(declare-fun m!6548422 () Bool)

(assert (=> b!5556646 m!6548422))

(assert (=> b!5556642 m!6548014))

(declare-fun m!6548424 () Bool)

(assert (=> b!5556642 m!6548424))

(assert (=> b!5556642 m!6548424))

(declare-fun m!6548426 () Bool)

(assert (=> b!5556642 m!6548426))

(assert (=> b!5556642 m!6548014))

(declare-fun m!6548428 () Bool)

(assert (=> b!5556642 m!6548428))

(assert (=> b!5556642 m!6548424))

(declare-fun m!6548430 () Bool)

(assert (=> b!5556642 m!6548430))

(declare-fun m!6548432 () Bool)

(assert (=> d!1758673 m!6548432))

(assert (=> d!1758673 m!6548014))

(declare-fun m!6548434 () Bool)

(assert (=> d!1758673 m!6548434))

(assert (=> d!1758673 m!6548026))

(assert (=> b!5556644 m!6548418))

(declare-fun m!6548436 () Bool)

(assert (=> b!5556644 m!6548436))

(assert (=> b!5556650 m!6548432))

(assert (=> b!5555958 d!1758673))

(assert (=> b!5556529 d!1758593))

(declare-fun b!5556651 () Bool)

(declare-fun e!3431665 () Bool)

(declare-fun e!3431664 () Bool)

(assert (=> b!5556651 (= e!3431665 e!3431664)))

(declare-fun res!2361878 () Bool)

(assert (=> b!5556651 (=> (not res!2361878) (not e!3431664))))

(declare-fun lt!2251184 () Bool)

(assert (=> b!5556651 (= res!2361878 (not lt!2251184))))

(declare-fun bm!414293 () Bool)

(declare-fun call!414298 () Bool)

(assert (=> bm!414293 (= call!414298 (isEmpty!34604 (tail!10963 s!2326)))))

(declare-fun b!5556652 () Bool)

(declare-fun e!3431669 () Bool)

(assert (=> b!5556652 (= e!3431669 (not (= (head!11868 (tail!10963 s!2326)) (c!972627 (derivativeStep!4398 r!7292 (head!11868 s!2326))))))))

(declare-fun d!1758675 () Bool)

(declare-fun e!3431670 () Bool)

(assert (=> d!1758675 e!3431670))

(declare-fun c!972826 () Bool)

(assert (=> d!1758675 (= c!972826 ((_ is EmptyExpr!15543) (derivativeStep!4398 r!7292 (head!11868 s!2326))))))

(declare-fun e!3431668 () Bool)

(assert (=> d!1758675 (= lt!2251184 e!3431668)))

(declare-fun c!972827 () Bool)

(assert (=> d!1758675 (= c!972827 (isEmpty!34604 (tail!10963 s!2326)))))

(assert (=> d!1758675 (validRegex!7279 (derivativeStep!4398 r!7292 (head!11868 s!2326)))))

(assert (=> d!1758675 (= (matchR!7728 (derivativeStep!4398 r!7292 (head!11868 s!2326)) (tail!10963 s!2326)) lt!2251184)))

(declare-fun b!5556653 () Bool)

(declare-fun res!2361874 () Bool)

(declare-fun e!3431667 () Bool)

(assert (=> b!5556653 (=> (not res!2361874) (not e!3431667))))

(assert (=> b!5556653 (= res!2361874 (not call!414298))))

(declare-fun b!5556654 () Bool)

(declare-fun e!3431666 () Bool)

(assert (=> b!5556654 (= e!3431670 e!3431666)))

(declare-fun c!972825 () Bool)

(assert (=> b!5556654 (= c!972825 ((_ is EmptyLang!15543) (derivativeStep!4398 r!7292 (head!11868 s!2326))))))

(declare-fun b!5556655 () Bool)

(assert (=> b!5556655 (= e!3431668 (matchR!7728 (derivativeStep!4398 (derivativeStep!4398 r!7292 (head!11868 s!2326)) (head!11868 (tail!10963 s!2326))) (tail!10963 (tail!10963 s!2326))))))

(declare-fun b!5556656 () Bool)

(declare-fun res!2361876 () Bool)

(assert (=> b!5556656 (=> res!2361876 e!3431665)))

(assert (=> b!5556656 (= res!2361876 (not ((_ is ElementMatch!15543) (derivativeStep!4398 r!7292 (head!11868 s!2326)))))))

(assert (=> b!5556656 (= e!3431666 e!3431665)))

(declare-fun b!5556657 () Bool)

(assert (=> b!5556657 (= e!3431666 (not lt!2251184))))

(declare-fun b!5556658 () Bool)

(declare-fun res!2361875 () Bool)

(assert (=> b!5556658 (=> res!2361875 e!3431665)))

(assert (=> b!5556658 (= res!2361875 e!3431667)))

(declare-fun res!2361879 () Bool)

(assert (=> b!5556658 (=> (not res!2361879) (not e!3431667))))

(assert (=> b!5556658 (= res!2361879 lt!2251184)))

(declare-fun b!5556659 () Bool)

(assert (=> b!5556659 (= e!3431670 (= lt!2251184 call!414298))))

(declare-fun b!5556660 () Bool)

(assert (=> b!5556660 (= e!3431664 e!3431669)))

(declare-fun res!2361873 () Bool)

(assert (=> b!5556660 (=> res!2361873 e!3431669)))

(assert (=> b!5556660 (= res!2361873 call!414298)))

(declare-fun b!5556661 () Bool)

(assert (=> b!5556661 (= e!3431667 (= (head!11868 (tail!10963 s!2326)) (c!972627 (derivativeStep!4398 r!7292 (head!11868 s!2326)))))))

(declare-fun b!5556662 () Bool)

(assert (=> b!5556662 (= e!3431668 (nullable!5575 (derivativeStep!4398 r!7292 (head!11868 s!2326))))))

(declare-fun b!5556663 () Bool)

(declare-fun res!2361877 () Bool)

(assert (=> b!5556663 (=> res!2361877 e!3431669)))

(assert (=> b!5556663 (= res!2361877 (not (isEmpty!34604 (tail!10963 (tail!10963 s!2326)))))))

(declare-fun b!5556664 () Bool)

(declare-fun res!2361880 () Bool)

(assert (=> b!5556664 (=> (not res!2361880) (not e!3431667))))

(assert (=> b!5556664 (= res!2361880 (isEmpty!34604 (tail!10963 (tail!10963 s!2326))))))

(assert (= (and d!1758675 c!972827) b!5556662))

(assert (= (and d!1758675 (not c!972827)) b!5556655))

(assert (= (and d!1758675 c!972826) b!5556659))

(assert (= (and d!1758675 (not c!972826)) b!5556654))

(assert (= (and b!5556654 c!972825) b!5556657))

(assert (= (and b!5556654 (not c!972825)) b!5556656))

(assert (= (and b!5556656 (not res!2361876)) b!5556658))

(assert (= (and b!5556658 res!2361879) b!5556653))

(assert (= (and b!5556653 res!2361874) b!5556664))

(assert (= (and b!5556664 res!2361880) b!5556661))

(assert (= (and b!5556658 (not res!2361875)) b!5556651))

(assert (= (and b!5556651 res!2361878) b!5556660))

(assert (= (and b!5556660 (not res!2361873)) b!5556663))

(assert (= (and b!5556663 (not res!2361877)) b!5556652))

(assert (= (or b!5556659 b!5556653 b!5556660) bm!414293))

(assert (=> bm!414293 m!6548108))

(assert (=> bm!414293 m!6548298))

(assert (=> b!5556662 m!6548300))

(declare-fun m!6548438 () Bool)

(assert (=> b!5556662 m!6548438))

(assert (=> b!5556652 m!6548108))

(declare-fun m!6548440 () Bool)

(assert (=> b!5556652 m!6548440))

(assert (=> d!1758675 m!6548108))

(assert (=> d!1758675 m!6548298))

(assert (=> d!1758675 m!6548300))

(declare-fun m!6548442 () Bool)

(assert (=> d!1758675 m!6548442))

(assert (=> b!5556664 m!6548108))

(declare-fun m!6548444 () Bool)

(assert (=> b!5556664 m!6548444))

(assert (=> b!5556664 m!6548444))

(declare-fun m!6548446 () Bool)

(assert (=> b!5556664 m!6548446))

(assert (=> b!5556663 m!6548108))

(assert (=> b!5556663 m!6548444))

(assert (=> b!5556663 m!6548444))

(assert (=> b!5556663 m!6548446))

(assert (=> b!5556655 m!6548108))

(assert (=> b!5556655 m!6548440))

(assert (=> b!5556655 m!6548300))

(assert (=> b!5556655 m!6548440))

(declare-fun m!6548448 () Bool)

(assert (=> b!5556655 m!6548448))

(assert (=> b!5556655 m!6548108))

(assert (=> b!5556655 m!6548444))

(assert (=> b!5556655 m!6548448))

(assert (=> b!5556655 m!6548444))

(declare-fun m!6548450 () Bool)

(assert (=> b!5556655 m!6548450))

(assert (=> b!5556661 m!6548108))

(assert (=> b!5556661 m!6548440))

(assert (=> b!5556462 d!1758675))

(declare-fun b!5556685 () Bool)

(declare-fun e!3431682 () Regex!15543)

(assert (=> b!5556685 (= e!3431682 (ite (= (head!11868 s!2326) (c!972627 r!7292)) EmptyExpr!15543 EmptyLang!15543))))

(declare-fun b!5556686 () Bool)

(declare-fun c!972838 () Bool)

(assert (=> b!5556686 (= c!972838 (nullable!5575 (regOne!31598 r!7292)))))

(declare-fun e!3431685 () Regex!15543)

(declare-fun e!3431681 () Regex!15543)

(assert (=> b!5556686 (= e!3431685 e!3431681)))

(declare-fun bm!414302 () Bool)

(declare-fun call!414308 () Regex!15543)

(declare-fun call!414310 () Regex!15543)

(assert (=> bm!414302 (= call!414308 call!414310)))

(declare-fun b!5556687 () Bool)

(declare-fun e!3431683 () Regex!15543)

(assert (=> b!5556687 (= e!3431683 e!3431685)))

(declare-fun c!972839 () Bool)

(assert (=> b!5556687 (= c!972839 ((_ is Star!15543) r!7292))))

(declare-fun b!5556688 () Bool)

(declare-fun e!3431684 () Regex!15543)

(assert (=> b!5556688 (= e!3431684 EmptyLang!15543)))

(declare-fun call!414307 () Regex!15543)

(declare-fun b!5556689 () Bool)

(assert (=> b!5556689 (= e!3431681 (Union!15543 (Concat!24388 call!414307 (regTwo!31598 r!7292)) call!414308))))

(declare-fun d!1758677 () Bool)

(declare-fun lt!2251187 () Regex!15543)

(assert (=> d!1758677 (validRegex!7279 lt!2251187)))

(assert (=> d!1758677 (= lt!2251187 e!3431684)))

(declare-fun c!972841 () Bool)

(assert (=> d!1758677 (= c!972841 (or ((_ is EmptyExpr!15543) r!7292) ((_ is EmptyLang!15543) r!7292)))))

(assert (=> d!1758677 (validRegex!7279 r!7292)))

(assert (=> d!1758677 (= (derivativeStep!4398 r!7292 (head!11868 s!2326)) lt!2251187)))

(declare-fun b!5556690 () Bool)

(declare-fun call!414309 () Regex!15543)

(assert (=> b!5556690 (= e!3431683 (Union!15543 call!414310 call!414309))))

(declare-fun bm!414303 () Bool)

(assert (=> bm!414303 (= call!414307 call!414309)))

(declare-fun bm!414304 () Bool)

(declare-fun c!972840 () Bool)

(assert (=> bm!414304 (= call!414310 (derivativeStep!4398 (ite c!972840 (regOne!31599 r!7292) (ite c!972838 (regTwo!31598 r!7292) (regOne!31598 r!7292))) (head!11868 s!2326)))))

(declare-fun b!5556691 () Bool)

(assert (=> b!5556691 (= c!972840 ((_ is Union!15543) r!7292))))

(assert (=> b!5556691 (= e!3431682 e!3431683)))

(declare-fun bm!414305 () Bool)

(assert (=> bm!414305 (= call!414309 (derivativeStep!4398 (ite c!972840 (regTwo!31599 r!7292) (ite c!972839 (reg!15872 r!7292) (regOne!31598 r!7292))) (head!11868 s!2326)))))

(declare-fun b!5556692 () Bool)

(assert (=> b!5556692 (= e!3431684 e!3431682)))

(declare-fun c!972842 () Bool)

(assert (=> b!5556692 (= c!972842 ((_ is ElementMatch!15543) r!7292))))

(declare-fun b!5556693 () Bool)

(assert (=> b!5556693 (= e!3431681 (Union!15543 (Concat!24388 call!414308 (regTwo!31598 r!7292)) EmptyLang!15543))))

(declare-fun b!5556694 () Bool)

(assert (=> b!5556694 (= e!3431685 (Concat!24388 call!414307 r!7292))))

(assert (= (and d!1758677 c!972841) b!5556688))

(assert (= (and d!1758677 (not c!972841)) b!5556692))

(assert (= (and b!5556692 c!972842) b!5556685))

(assert (= (and b!5556692 (not c!972842)) b!5556691))

(assert (= (and b!5556691 c!972840) b!5556690))

(assert (= (and b!5556691 (not c!972840)) b!5556687))

(assert (= (and b!5556687 c!972839) b!5556694))

(assert (= (and b!5556687 (not c!972839)) b!5556686))

(assert (= (and b!5556686 c!972838) b!5556689))

(assert (= (and b!5556686 (not c!972838)) b!5556693))

(assert (= (or b!5556689 b!5556693) bm!414302))

(assert (= (or b!5556694 b!5556689) bm!414303))

(assert (= (or b!5556690 bm!414303) bm!414305))

(assert (= (or b!5556690 bm!414302) bm!414304))

(declare-fun m!6548452 () Bool)

(assert (=> b!5556686 m!6548452))

(declare-fun m!6548454 () Bool)

(assert (=> d!1758677 m!6548454))

(assert (=> d!1758677 m!6547966))

(assert (=> bm!414304 m!6548104))

(declare-fun m!6548456 () Bool)

(assert (=> bm!414304 m!6548456))

(assert (=> bm!414305 m!6548104))

(declare-fun m!6548458 () Bool)

(assert (=> bm!414305 m!6548458))

(assert (=> b!5556462 d!1758677))

(declare-fun d!1758679 () Bool)

(assert (=> d!1758679 (= (head!11868 s!2326) (h!69254 s!2326))))

(assert (=> b!5556462 d!1758679))

(declare-fun d!1758681 () Bool)

(assert (=> d!1758681 (= (tail!10963 s!2326) (t!376195 s!2326))))

(assert (=> b!5556462 d!1758681))

(declare-fun d!1758683 () Bool)

(assert (=> d!1758683 (= (isUnion!546 lt!2251150) ((_ is Union!15543) lt!2251150))))

(assert (=> b!5556281 d!1758683))

(declare-fun d!1758685 () Bool)

(assert (=> d!1758685 (= (isEmptyExpr!1105 lt!2251171) ((_ is EmptyExpr!15543) lt!2251171))))

(assert (=> b!5556525 d!1758685))

(declare-fun d!1758687 () Bool)

(assert (=> d!1758687 (= (isEmpty!34600 (tail!10965 (unfocusZipperList!971 zl!343))) ((_ is Nil!62804) (tail!10965 (unfocusZipperList!971 zl!343))))))

(assert (=> b!5556279 d!1758687))

(declare-fun d!1758689 () Bool)

(assert (=> d!1758689 (= (tail!10965 (unfocusZipperList!971 zl!343)) (t!376193 (unfocusZipperList!971 zl!343)))))

(assert (=> b!5556279 d!1758689))

(declare-fun d!1758691 () Bool)

(assert (=> d!1758691 (= (isEmpty!34604 s!2326) ((_ is Nil!62806) s!2326))))

(assert (=> bm!414288 d!1758691))

(declare-fun bm!414306 () Bool)

(declare-fun call!414313 () Bool)

(declare-fun c!972844 () Bool)

(assert (=> bm!414306 (= call!414313 (validRegex!7279 (ite c!972844 (regOne!31599 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))) (regOne!31598 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))))

(declare-fun b!5556695 () Bool)

(declare-fun e!3431686 () Bool)

(declare-fun call!414312 () Bool)

(assert (=> b!5556695 (= e!3431686 call!414312)))

(declare-fun bm!414307 () Bool)

(declare-fun call!414311 () Bool)

(assert (=> bm!414307 (= call!414312 call!414311)))

(declare-fun c!972843 () Bool)

(declare-fun bm!414308 () Bool)

(assert (=> bm!414308 (= call!414311 (validRegex!7279 (ite c!972843 (reg!15872 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))) (ite c!972844 (regTwo!31599 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))) (regTwo!31598 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292)))))))))

(declare-fun d!1758693 () Bool)

(declare-fun res!2361883 () Bool)

(declare-fun e!3431689 () Bool)

(assert (=> d!1758693 (=> res!2361883 e!3431689)))

(assert (=> d!1758693 (= res!2361883 ((_ is ElementMatch!15543) (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))

(assert (=> d!1758693 (= (validRegex!7279 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))) e!3431689)))

(declare-fun b!5556696 () Bool)

(declare-fun e!3431691 () Bool)

(assert (=> b!5556696 (= e!3431691 call!414311)))

(declare-fun b!5556697 () Bool)

(declare-fun e!3431690 () Bool)

(assert (=> b!5556697 (= e!3431690 call!414312)))

(declare-fun b!5556698 () Bool)

(declare-fun e!3431687 () Bool)

(assert (=> b!5556698 (= e!3431687 e!3431690)))

(declare-fun res!2361881 () Bool)

(assert (=> b!5556698 (=> (not res!2361881) (not e!3431690))))

(assert (=> b!5556698 (= res!2361881 call!414313)))

(declare-fun b!5556699 () Bool)

(declare-fun e!3431692 () Bool)

(assert (=> b!5556699 (= e!3431689 e!3431692)))

(assert (=> b!5556699 (= c!972843 ((_ is Star!15543) (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))

(declare-fun b!5556700 () Bool)

(declare-fun e!3431688 () Bool)

(assert (=> b!5556700 (= e!3431692 e!3431688)))

(assert (=> b!5556700 (= c!972844 ((_ is Union!15543) (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))

(declare-fun b!5556701 () Bool)

(declare-fun res!2361882 () Bool)

(assert (=> b!5556701 (=> (not res!2361882) (not e!3431686))))

(assert (=> b!5556701 (= res!2361882 call!414313)))

(assert (=> b!5556701 (= e!3431688 e!3431686)))

(declare-fun b!5556702 () Bool)

(assert (=> b!5556702 (= e!3431692 e!3431691)))

(declare-fun res!2361885 () Bool)

(assert (=> b!5556702 (= res!2361885 (not (nullable!5575 (reg!15872 (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292))))))))

(assert (=> b!5556702 (=> (not res!2361885) (not e!3431691))))

(declare-fun b!5556703 () Bool)

(declare-fun res!2361884 () Bool)

(assert (=> b!5556703 (=> res!2361884 e!3431687)))

(assert (=> b!5556703 (= res!2361884 (not ((_ is Concat!24388) (ite c!972680 (regOne!31599 r!7292) (regOne!31598 r!7292)))))))

(assert (=> b!5556703 (= e!3431688 e!3431687)))

(assert (= (and d!1758693 (not res!2361883)) b!5556699))

(assert (= (and b!5556699 c!972843) b!5556702))

(assert (= (and b!5556699 (not c!972843)) b!5556700))

(assert (= (and b!5556702 res!2361885) b!5556696))

(assert (= (and b!5556700 c!972844) b!5556701))

(assert (= (and b!5556700 (not c!972844)) b!5556703))

(assert (= (and b!5556701 res!2361882) b!5556695))

(assert (= (and b!5556703 (not res!2361884)) b!5556698))

(assert (= (and b!5556698 res!2361881) b!5556697))

(assert (= (or b!5556695 b!5556697) bm!414307))

(assert (= (or b!5556701 b!5556698) bm!414306))

(assert (= (or b!5556696 bm!414307) bm!414308))

(declare-fun m!6548460 () Bool)

(assert (=> bm!414306 m!6548460))

(declare-fun m!6548462 () Bool)

(assert (=> bm!414308 m!6548462))

(declare-fun m!6548464 () Bool)

(assert (=> b!5556702 m!6548464))

(assert (=> bm!414213 d!1758693))

(declare-fun d!1758695 () Bool)

(assert (=> d!1758695 true))

(assert (=> d!1758695 true))

(declare-fun res!2361888 () Bool)

(assert (=> d!1758695 (= (choose!42151 lambda!298139) res!2361888)))

(assert (=> d!1758539 d!1758695))

(declare-fun bm!414309 () Bool)

(declare-fun call!414316 () Bool)

(declare-fun c!972846 () Bool)

(assert (=> bm!414309 (= call!414316 (validRegex!7279 (ite c!972846 (regOne!31599 lt!2251138) (regOne!31598 lt!2251138))))))

(declare-fun b!5556704 () Bool)

(declare-fun e!3431693 () Bool)

(declare-fun call!414315 () Bool)

(assert (=> b!5556704 (= e!3431693 call!414315)))

(declare-fun bm!414310 () Bool)

(declare-fun call!414314 () Bool)

(assert (=> bm!414310 (= call!414315 call!414314)))

(declare-fun c!972845 () Bool)

(declare-fun bm!414311 () Bool)

(assert (=> bm!414311 (= call!414314 (validRegex!7279 (ite c!972845 (reg!15872 lt!2251138) (ite c!972846 (regTwo!31599 lt!2251138) (regTwo!31598 lt!2251138)))))))

(declare-fun d!1758697 () Bool)

(declare-fun res!2361891 () Bool)

(declare-fun e!3431696 () Bool)

(assert (=> d!1758697 (=> res!2361891 e!3431696)))

(assert (=> d!1758697 (= res!2361891 ((_ is ElementMatch!15543) lt!2251138))))

(assert (=> d!1758697 (= (validRegex!7279 lt!2251138) e!3431696)))

(declare-fun b!5556705 () Bool)

(declare-fun e!3431698 () Bool)

(assert (=> b!5556705 (= e!3431698 call!414314)))

(declare-fun b!5556706 () Bool)

(declare-fun e!3431697 () Bool)

(assert (=> b!5556706 (= e!3431697 call!414315)))

(declare-fun b!5556707 () Bool)

(declare-fun e!3431694 () Bool)

(assert (=> b!5556707 (= e!3431694 e!3431697)))

(declare-fun res!2361889 () Bool)

(assert (=> b!5556707 (=> (not res!2361889) (not e!3431697))))

(assert (=> b!5556707 (= res!2361889 call!414316)))

(declare-fun b!5556708 () Bool)

(declare-fun e!3431699 () Bool)

(assert (=> b!5556708 (= e!3431696 e!3431699)))

(assert (=> b!5556708 (= c!972845 ((_ is Star!15543) lt!2251138))))

(declare-fun b!5556709 () Bool)

(declare-fun e!3431695 () Bool)

(assert (=> b!5556709 (= e!3431699 e!3431695)))

(assert (=> b!5556709 (= c!972846 ((_ is Union!15543) lt!2251138))))

(declare-fun b!5556710 () Bool)

(declare-fun res!2361890 () Bool)

(assert (=> b!5556710 (=> (not res!2361890) (not e!3431693))))

(assert (=> b!5556710 (= res!2361890 call!414316)))

(assert (=> b!5556710 (= e!3431695 e!3431693)))

(declare-fun b!5556711 () Bool)

(assert (=> b!5556711 (= e!3431699 e!3431698)))

(declare-fun res!2361893 () Bool)

(assert (=> b!5556711 (= res!2361893 (not (nullable!5575 (reg!15872 lt!2251138))))))

(assert (=> b!5556711 (=> (not res!2361893) (not e!3431698))))

(declare-fun b!5556712 () Bool)

(declare-fun res!2361892 () Bool)

(assert (=> b!5556712 (=> res!2361892 e!3431694)))

(assert (=> b!5556712 (= res!2361892 (not ((_ is Concat!24388) lt!2251138)))))

(assert (=> b!5556712 (= e!3431695 e!3431694)))

(assert (= (and d!1758697 (not res!2361891)) b!5556708))

(assert (= (and b!5556708 c!972845) b!5556711))

(assert (= (and b!5556708 (not c!972845)) b!5556709))

(assert (= (and b!5556711 res!2361893) b!5556705))

(assert (= (and b!5556709 c!972846) b!5556710))

(assert (= (and b!5556709 (not c!972846)) b!5556712))

(assert (= (and b!5556710 res!2361890) b!5556704))

(assert (= (and b!5556712 (not res!2361892)) b!5556707))

(assert (= (and b!5556707 res!2361889) b!5556706))

(assert (= (or b!5556704 b!5556706) bm!414310))

(assert (= (or b!5556710 b!5556707) bm!414309))

(assert (= (or b!5556705 bm!414310) bm!414311))

(declare-fun m!6548466 () Bool)

(assert (=> bm!414309 m!6548466))

(declare-fun m!6548468 () Bool)

(assert (=> bm!414311 m!6548468))

(declare-fun m!6548470 () Bool)

(assert (=> b!5556711 m!6548470))

(assert (=> d!1758571 d!1758697))

(assert (=> d!1758571 d!1758595))

(assert (=> d!1758571 d!1758605))

(declare-fun d!1758699 () Bool)

(declare-fun lambda!298210 () Int)

(declare-fun exists!2152 ((InoxSet Context!9854) Int) Bool)

(assert (=> d!1758699 (= (nullableZipper!1544 z!1189) (exists!2152 z!1189 lambda!298210))))

(declare-fun bs!1286794 () Bool)

(assert (= bs!1286794 d!1758699))

(declare-fun m!6548472 () Bool)

(assert (=> bs!1286794 m!6548472))

(assert (=> b!5556060 d!1758699))

(declare-fun d!1758701 () Bool)

(assert (=> d!1758701 (= (nullable!5575 (h!69252 (exprs!5427 lt!2251092))) (nullableFct!1690 (h!69252 (exprs!5427 lt!2251092))))))

(declare-fun bs!1286795 () Bool)

(assert (= bs!1286795 d!1758701))

(declare-fun m!6548474 () Bool)

(assert (=> bs!1286795 m!6548474))

(assert (=> b!5556135 d!1758701))

(declare-fun bm!414312 () Bool)

(declare-fun call!414319 () Bool)

(declare-fun c!972850 () Bool)

(assert (=> bm!414312 (= call!414319 (validRegex!7279 (ite c!972850 (regOne!31599 lt!2251171) (regOne!31598 lt!2251171))))))

(declare-fun b!5556713 () Bool)

(declare-fun e!3431700 () Bool)

(declare-fun call!414318 () Bool)

(assert (=> b!5556713 (= e!3431700 call!414318)))

(declare-fun bm!414313 () Bool)

(declare-fun call!414317 () Bool)

(assert (=> bm!414313 (= call!414318 call!414317)))

(declare-fun bm!414314 () Bool)

(declare-fun c!972849 () Bool)

(assert (=> bm!414314 (= call!414317 (validRegex!7279 (ite c!972849 (reg!15872 lt!2251171) (ite c!972850 (regTwo!31599 lt!2251171) (regTwo!31598 lt!2251171)))))))

(declare-fun d!1758703 () Bool)

(declare-fun res!2361896 () Bool)

(declare-fun e!3431703 () Bool)

(assert (=> d!1758703 (=> res!2361896 e!3431703)))

(assert (=> d!1758703 (= res!2361896 ((_ is ElementMatch!15543) lt!2251171))))

(assert (=> d!1758703 (= (validRegex!7279 lt!2251171) e!3431703)))

(declare-fun b!5556714 () Bool)

(declare-fun e!3431705 () Bool)

(assert (=> b!5556714 (= e!3431705 call!414317)))

(declare-fun b!5556715 () Bool)

(declare-fun e!3431704 () Bool)

(assert (=> b!5556715 (= e!3431704 call!414318)))

(declare-fun b!5556716 () Bool)

(declare-fun e!3431701 () Bool)

(assert (=> b!5556716 (= e!3431701 e!3431704)))

(declare-fun res!2361894 () Bool)

(assert (=> b!5556716 (=> (not res!2361894) (not e!3431704))))

(assert (=> b!5556716 (= res!2361894 call!414319)))

(declare-fun b!5556717 () Bool)

(declare-fun e!3431706 () Bool)

(assert (=> b!5556717 (= e!3431703 e!3431706)))

(assert (=> b!5556717 (= c!972849 ((_ is Star!15543) lt!2251171))))

(declare-fun b!5556718 () Bool)

(declare-fun e!3431702 () Bool)

(assert (=> b!5556718 (= e!3431706 e!3431702)))

(assert (=> b!5556718 (= c!972850 ((_ is Union!15543) lt!2251171))))

(declare-fun b!5556719 () Bool)

(declare-fun res!2361895 () Bool)

(assert (=> b!5556719 (=> (not res!2361895) (not e!3431700))))

(assert (=> b!5556719 (= res!2361895 call!414319)))

(assert (=> b!5556719 (= e!3431702 e!3431700)))

(declare-fun b!5556720 () Bool)

(assert (=> b!5556720 (= e!3431706 e!3431705)))

(declare-fun res!2361898 () Bool)

(assert (=> b!5556720 (= res!2361898 (not (nullable!5575 (reg!15872 lt!2251171))))))

(assert (=> b!5556720 (=> (not res!2361898) (not e!3431705))))

(declare-fun b!5556721 () Bool)

(declare-fun res!2361897 () Bool)

(assert (=> b!5556721 (=> res!2361897 e!3431701)))

(assert (=> b!5556721 (= res!2361897 (not ((_ is Concat!24388) lt!2251171)))))

(assert (=> b!5556721 (= e!3431702 e!3431701)))

(assert (= (and d!1758703 (not res!2361896)) b!5556717))

(assert (= (and b!5556717 c!972849) b!5556720))

(assert (= (and b!5556717 (not c!972849)) b!5556718))

(assert (= (and b!5556720 res!2361898) b!5556714))

(assert (= (and b!5556718 c!972850) b!5556719))

(assert (= (and b!5556718 (not c!972850)) b!5556721))

(assert (= (and b!5556719 res!2361895) b!5556713))

(assert (= (and b!5556721 (not res!2361897)) b!5556716))

(assert (= (and b!5556716 res!2361894) b!5556715))

(assert (= (or b!5556713 b!5556715) bm!414313))

(assert (= (or b!5556719 b!5556716) bm!414312))

(assert (= (or b!5556714 bm!414313) bm!414314))

(declare-fun m!6548476 () Bool)

(assert (=> bm!414312 m!6548476))

(declare-fun m!6548478 () Bool)

(assert (=> bm!414314 m!6548478))

(declare-fun m!6548480 () Bool)

(assert (=> b!5556720 m!6548480))

(assert (=> d!1758635 d!1758703))

(declare-fun d!1758705 () Bool)

(declare-fun res!2361903 () Bool)

(declare-fun e!3431711 () Bool)

(assert (=> d!1758705 (=> res!2361903 e!3431711)))

(assert (=> d!1758705 (= res!2361903 ((_ is Nil!62804) (exprs!5427 (h!69253 zl!343))))))

(assert (=> d!1758705 (= (forall!14715 (exprs!5427 (h!69253 zl!343)) lambda!298199) e!3431711)))

(declare-fun b!5556726 () Bool)

(declare-fun e!3431712 () Bool)

(assert (=> b!5556726 (= e!3431711 e!3431712)))

(declare-fun res!2361904 () Bool)

(assert (=> b!5556726 (=> (not res!2361904) (not e!3431712))))

(declare-fun dynLambda!24564 (Int Regex!15543) Bool)

(assert (=> b!5556726 (= res!2361904 (dynLambda!24564 lambda!298199 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556727 () Bool)

(assert (=> b!5556727 (= e!3431712 (forall!14715 (t!376193 (exprs!5427 (h!69253 zl!343))) lambda!298199))))

(assert (= (and d!1758705 (not res!2361903)) b!5556726))

(assert (= (and b!5556726 res!2361904) b!5556727))

(declare-fun b_lambda!210987 () Bool)

(assert (=> (not b_lambda!210987) (not b!5556726)))

(declare-fun m!6548482 () Bool)

(assert (=> b!5556726 m!6548482))

(declare-fun m!6548484 () Bool)

(assert (=> b!5556727 m!6548484))

(assert (=> d!1758635 d!1758705))

(declare-fun bm!414315 () Bool)

(declare-fun call!414321 () (InoxSet Context!9854))

(declare-fun call!414324 () (InoxSet Context!9854))

(assert (=> bm!414315 (= call!414321 call!414324)))

(declare-fun call!414323 () (InoxSet Context!9854))

(declare-fun call!414322 () List!62928)

(declare-fun c!972854 () Bool)

(declare-fun bm!414316 () Bool)

(assert (=> bm!414316 (= call!414323 (derivationStepZipperDown!885 (ite c!972854 (regTwo!31599 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (regOne!31598 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))))) (ite c!972854 (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244)) (Context!9855 call!414322)) (h!69254 s!2326)))))

(declare-fun b!5556728 () Bool)

(declare-fun e!3431717 () Bool)

(assert (=> b!5556728 (= e!3431717 (nullable!5575 (regOne!31598 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))))))))

(declare-fun bm!414317 () Bool)

(declare-fun call!414325 () (InoxSet Context!9854))

(assert (=> bm!414317 (= call!414325 call!414321)))

(declare-fun b!5556729 () Bool)

(declare-fun c!972852 () Bool)

(assert (=> b!5556729 (= c!972852 ((_ is Star!15543) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun e!3431715 () (InoxSet Context!9854))

(declare-fun e!3431713 () (InoxSet Context!9854))

(assert (=> b!5556729 (= e!3431715 e!3431713)))

(declare-fun b!5556731 () Bool)

(declare-fun e!3431714 () (InoxSet Context!9854))

(assert (=> b!5556731 (= e!3431714 ((_ map or) call!414323 call!414321))))

(declare-fun bm!414318 () Bool)

(declare-fun c!972851 () Bool)

(declare-fun c!972853 () Bool)

(assert (=> bm!414318 (= call!414322 ($colon$colon!1611 (exprs!5427 (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244))) (ite (or c!972851 c!972853) (regTwo!31598 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))))))))

(declare-fun b!5556732 () Bool)

(assert (=> b!5556732 (= c!972851 e!3431717)))

(declare-fun res!2361905 () Bool)

(assert (=> b!5556732 (=> (not res!2361905) (not e!3431717))))

(assert (=> b!5556732 (= res!2361905 ((_ is Concat!24388) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun e!3431716 () (InoxSet Context!9854))

(assert (=> b!5556732 (= e!3431716 e!3431714)))

(declare-fun bm!414319 () Bool)

(declare-fun call!414320 () List!62928)

(assert (=> bm!414319 (= call!414320 call!414322)))

(declare-fun bm!414320 () Bool)

(assert (=> bm!414320 (= call!414324 (derivationStepZipperDown!885 (ite c!972854 (regOne!31599 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (ite c!972851 (regTwo!31598 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (ite c!972853 (regOne!31598 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (reg!15872 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))))))) (ite (or c!972854 c!972851) (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244)) (Context!9855 call!414320)) (h!69254 s!2326)))))

(declare-fun b!5556733 () Bool)

(assert (=> b!5556733 (= e!3431713 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556734 () Bool)

(assert (=> b!5556734 (= e!3431716 ((_ map or) call!414324 call!414323))))

(declare-fun b!5556735 () Bool)

(assert (=> b!5556735 (= e!3431713 call!414325)))

(declare-fun b!5556736 () Bool)

(assert (=> b!5556736 (= e!3431715 call!414325)))

(declare-fun e!3431718 () (InoxSet Context!9854))

(declare-fun b!5556730 () Bool)

(assert (=> b!5556730 (= e!3431718 (store ((as const (Array Context!9854 Bool)) false) (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244)) true))))

(declare-fun d!1758707 () Bool)

(declare-fun c!972855 () Bool)

(assert (=> d!1758707 (= c!972855 (and ((_ is ElementMatch!15543) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (= (c!972627 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326))))))

(assert (=> d!1758707 (= (derivationStepZipperDown!885 (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))) (ite (or c!972716 c!972713) lt!2251092 (Context!9855 call!414244)) (h!69254 s!2326)) e!3431718)))

(declare-fun b!5556737 () Bool)

(assert (=> b!5556737 (= e!3431718 e!3431716)))

(assert (=> b!5556737 (= c!972854 ((_ is Union!15543) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun b!5556738 () Bool)

(assert (=> b!5556738 (= e!3431714 e!3431715)))

(assert (=> b!5556738 (= c!972853 ((_ is Concat!24388) (ite c!972716 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972713 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972715 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))))

(assert (= (and d!1758707 c!972855) b!5556730))

(assert (= (and d!1758707 (not c!972855)) b!5556737))

(assert (= (and b!5556737 c!972854) b!5556734))

(assert (= (and b!5556737 (not c!972854)) b!5556732))

(assert (= (and b!5556732 res!2361905) b!5556728))

(assert (= (and b!5556732 c!972851) b!5556731))

(assert (= (and b!5556732 (not c!972851)) b!5556738))

(assert (= (and b!5556738 c!972853) b!5556736))

(assert (= (and b!5556738 (not c!972853)) b!5556729))

(assert (= (and b!5556729 c!972852) b!5556735))

(assert (= (and b!5556729 (not c!972852)) b!5556733))

(assert (= (or b!5556736 b!5556735) bm!414319))

(assert (= (or b!5556736 b!5556735) bm!414317))

(assert (= (or b!5556731 bm!414319) bm!414318))

(assert (= (or b!5556731 bm!414317) bm!414315))

(assert (= (or b!5556734 b!5556731) bm!414316))

(assert (= (or b!5556734 bm!414315) bm!414320))

(declare-fun m!6548486 () Bool)

(assert (=> bm!414320 m!6548486))

(declare-fun m!6548488 () Bool)

(assert (=> bm!414316 m!6548488))

(declare-fun m!6548490 () Bool)

(assert (=> b!5556730 m!6548490))

(declare-fun m!6548492 () Bool)

(assert (=> bm!414318 m!6548492))

(declare-fun m!6548494 () Bool)

(assert (=> b!5556728 m!6548494))

(assert (=> bm!414244 d!1758707))

(declare-fun bs!1286796 () Bool)

(declare-fun d!1758709 () Bool)

(assert (= bs!1286796 (and d!1758709 d!1758699)))

(declare-fun lambda!298211 () Int)

(assert (=> bs!1286796 (= lambda!298211 lambda!298210)))

(assert (=> d!1758709 (= (nullableZipper!1544 lt!2251093) (exists!2152 lt!2251093 lambda!298211))))

(declare-fun bs!1286797 () Bool)

(assert (= bs!1286797 d!1758709))

(declare-fun m!6548496 () Bool)

(assert (=> bs!1286797 m!6548496))

(assert (=> b!5556058 d!1758709))

(declare-fun d!1758711 () Bool)

(assert (=> d!1758711 (= (isDefined!12255 lt!2251114) (not (isEmpty!34603 lt!2251114)))))

(declare-fun bs!1286798 () Bool)

(assert (= bs!1286798 d!1758711))

(declare-fun m!6548498 () Bool)

(assert (=> bs!1286798 m!6548498))

(assert (=> b!5555966 d!1758711))

(declare-fun d!1758713 () Bool)

(assert (=> d!1758713 (= (flatMap!1156 z!1189 lambda!298202) (choose!42156 z!1189 lambda!298202))))

(declare-fun bs!1286799 () Bool)

(assert (= bs!1286799 d!1758713))

(declare-fun m!6548500 () Bool)

(assert (=> bs!1286799 m!6548500))

(assert (=> d!1758637 d!1758713))

(assert (=> b!5556468 d!1758679))

(declare-fun d!1758715 () Bool)

(assert (=> d!1758715 (= (isEmpty!34604 (tail!10963 s!2326)) ((_ is Nil!62806) (tail!10963 s!2326)))))

(assert (=> b!5556470 d!1758715))

(assert (=> b!5556470 d!1758681))

(assert (=> b!5556217 d!1758581))

(declare-fun d!1758717 () Bool)

(assert (=> d!1758717 (= (nullable!5575 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (nullableFct!1690 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun bs!1286800 () Bool)

(assert (= bs!1286800 d!1758717))

(declare-fun m!6548502 () Bool)

(assert (=> bs!1286800 m!6548502))

(assert (=> b!5556212 d!1758717))

(assert (=> d!1758629 d!1758627))

(assert (=> d!1758629 d!1758609))

(declare-fun d!1758719 () Bool)

(assert (=> d!1758719 (= (matchR!7728 r!7292 s!2326) (matchRSpec!2646 r!7292 s!2326))))

(assert (=> d!1758719 true))

(declare-fun _$88!3829 () Unit!155546)

(assert (=> d!1758719 (= (choose!42161 r!7292 s!2326) _$88!3829)))

(declare-fun bs!1286801 () Bool)

(assert (= bs!1286801 d!1758719))

(assert (=> bs!1286801 m!6547958))

(assert (=> bs!1286801 m!6547956))

(assert (=> d!1758629 d!1758719))

(assert (=> d!1758629 d!1758565))

(declare-fun d!1758721 () Bool)

(declare-fun e!3431719 () Bool)

(assert (=> d!1758721 e!3431719))

(declare-fun res!2361907 () Bool)

(assert (=> d!1758721 (=> (not res!2361907) (not e!3431719))))

(declare-fun lt!2251188 () List!62930)

(assert (=> d!1758721 (= res!2361907 (= (content!11311 lt!2251188) ((_ map or) (content!11311 (_1!35943 (get!21619 lt!2251114))) (content!11311 (_2!35943 (get!21619 lt!2251114))))))))

(declare-fun e!3431720 () List!62930)

(assert (=> d!1758721 (= lt!2251188 e!3431720)))

(declare-fun c!972856 () Bool)

(assert (=> d!1758721 (= c!972856 ((_ is Nil!62806) (_1!35943 (get!21619 lt!2251114))))))

(assert (=> d!1758721 (= (++!13780 (_1!35943 (get!21619 lt!2251114)) (_2!35943 (get!21619 lt!2251114))) lt!2251188)))

(declare-fun b!5556742 () Bool)

(assert (=> b!5556742 (= e!3431719 (or (not (= (_2!35943 (get!21619 lt!2251114)) Nil!62806)) (= lt!2251188 (_1!35943 (get!21619 lt!2251114)))))))

(declare-fun b!5556740 () Bool)

(assert (=> b!5556740 (= e!3431720 (Cons!62806 (h!69254 (_1!35943 (get!21619 lt!2251114))) (++!13780 (t!376195 (_1!35943 (get!21619 lt!2251114))) (_2!35943 (get!21619 lt!2251114)))))))

(declare-fun b!5556741 () Bool)

(declare-fun res!2361906 () Bool)

(assert (=> b!5556741 (=> (not res!2361906) (not e!3431719))))

(assert (=> b!5556741 (= res!2361906 (= (size!39951 lt!2251188) (+ (size!39951 (_1!35943 (get!21619 lt!2251114))) (size!39951 (_2!35943 (get!21619 lt!2251114))))))))

(declare-fun b!5556739 () Bool)

(assert (=> b!5556739 (= e!3431720 (_2!35943 (get!21619 lt!2251114)))))

(assert (= (and d!1758721 c!972856) b!5556739))

(assert (= (and d!1758721 (not c!972856)) b!5556740))

(assert (= (and d!1758721 res!2361907) b!5556741))

(assert (= (and b!5556741 res!2361906) b!5556742))

(declare-fun m!6548504 () Bool)

(assert (=> d!1758721 m!6548504))

(declare-fun m!6548506 () Bool)

(assert (=> d!1758721 m!6548506))

(declare-fun m!6548508 () Bool)

(assert (=> d!1758721 m!6548508))

(declare-fun m!6548510 () Bool)

(assert (=> b!5556740 m!6548510))

(declare-fun m!6548512 () Bool)

(assert (=> b!5556741 m!6548512))

(declare-fun m!6548514 () Bool)

(assert (=> b!5556741 m!6548514))

(declare-fun m!6548516 () Bool)

(assert (=> b!5556741 m!6548516))

(assert (=> b!5555962 d!1758721))

(assert (=> b!5555962 d!1758645))

(declare-fun d!1758723 () Bool)

(assert (=> d!1758723 (= (nullable!5575 (reg!15872 r!7292)) (nullableFct!1690 (reg!15872 r!7292)))))

(declare-fun bs!1286802 () Bool)

(assert (= bs!1286802 d!1758723))

(declare-fun m!6548518 () Bool)

(assert (=> bs!1286802 m!6548518))

(assert (=> b!5556091 d!1758723))

(declare-fun d!1758725 () Bool)

(declare-fun c!972859 () Bool)

(assert (=> d!1758725 (= c!972859 ((_ is Nil!62805) lt!2251132))))

(declare-fun e!3431723 () (InoxSet Context!9854))

(assert (=> d!1758725 (= (content!11309 lt!2251132) e!3431723)))

(declare-fun b!5556747 () Bool)

(assert (=> b!5556747 (= e!3431723 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556748 () Bool)

(assert (=> b!5556748 (= e!3431723 ((_ map or) (store ((as const (Array Context!9854 Bool)) false) (h!69253 lt!2251132) true) (content!11309 (t!376194 lt!2251132))))))

(assert (= (and d!1758725 c!972859) b!5556747))

(assert (= (and d!1758725 (not c!972859)) b!5556748))

(declare-fun m!6548520 () Bool)

(assert (=> b!5556748 m!6548520))

(declare-fun m!6548522 () Bool)

(assert (=> b!5556748 m!6548522))

(assert (=> b!5556023 d!1758725))

(declare-fun d!1758727 () Bool)

(assert (=> d!1758727 (= (Exists!2643 lambda!298171) (choose!42151 lambda!298171))))

(declare-fun bs!1286803 () Bool)

(assert (= bs!1286803 d!1758727))

(declare-fun m!6548524 () Bool)

(assert (=> bs!1286803 m!6548524))

(assert (=> d!1758547 d!1758727))

(declare-fun d!1758729 () Bool)

(assert (=> d!1758729 (= (Exists!2643 lambda!298172) (choose!42151 lambda!298172))))

(declare-fun bs!1286804 () Bool)

(assert (= bs!1286804 d!1758729))

(declare-fun m!6548526 () Bool)

(assert (=> bs!1286804 m!6548526))

(assert (=> d!1758547 d!1758729))

(declare-fun bs!1286805 () Bool)

(declare-fun d!1758731 () Bool)

(assert (= bs!1286805 (and d!1758731 d!1758547)))

(declare-fun lambda!298216 () Int)

(assert (=> bs!1286805 (= lambda!298216 lambda!298171)))

(declare-fun bs!1286806 () Bool)

(assert (= bs!1286806 (and d!1758731 d!1758541)))

(assert (=> bs!1286806 (= lambda!298216 lambda!298158)))

(declare-fun bs!1286807 () Bool)

(assert (= bs!1286807 (and d!1758731 b!5555888)))

(assert (=> bs!1286807 (= lambda!298216 lambda!298139)))

(declare-fun bs!1286808 () Bool)

(assert (= bs!1286808 (and d!1758731 b!5556365)))

(assert (=> bs!1286808 (not (= lambda!298216 lambda!298192))))

(declare-fun bs!1286809 () Bool)

(assert (= bs!1286809 (and d!1758731 d!1758657)))

(assert (=> bs!1286809 (= lambda!298216 lambda!298206)))

(assert (=> bs!1286805 (not (= lambda!298216 lambda!298172))))

(assert (=> bs!1286807 (not (= lambda!298216 lambda!298140))))

(declare-fun bs!1286810 () Bool)

(assert (= bs!1286810 (and d!1758731 b!5556369)))

(assert (=> bs!1286810 (not (= lambda!298216 lambda!298193))))

(assert (=> d!1758731 true))

(assert (=> d!1758731 true))

(assert (=> d!1758731 true))

(declare-fun lambda!298217 () Int)

(assert (=> bs!1286805 (not (= lambda!298217 lambda!298171))))

(declare-fun bs!1286811 () Bool)

(assert (= bs!1286811 d!1758731))

(assert (=> bs!1286811 (not (= lambda!298217 lambda!298216))))

(assert (=> bs!1286806 (not (= lambda!298217 lambda!298158))))

(assert (=> bs!1286807 (not (= lambda!298217 lambda!298139))))

(assert (=> bs!1286808 (not (= lambda!298217 lambda!298192))))

(assert (=> bs!1286809 (not (= lambda!298217 lambda!298206))))

(assert (=> bs!1286805 (= lambda!298217 lambda!298172)))

(assert (=> bs!1286807 (= lambda!298217 lambda!298140)))

(assert (=> bs!1286810 (= lambda!298217 lambda!298193)))

(assert (=> d!1758731 true))

(assert (=> d!1758731 true))

(assert (=> d!1758731 true))

(assert (=> d!1758731 (= (Exists!2643 lambda!298216) (Exists!2643 lambda!298217))))

(assert (=> d!1758731 true))

(declare-fun _$90!1283 () Unit!155546)

(assert (=> d!1758731 (= (choose!42153 (regOne!31598 r!7292) (regTwo!31598 r!7292) s!2326) _$90!1283)))

(declare-fun m!6548528 () Bool)

(assert (=> bs!1286811 m!6548528))

(declare-fun m!6548530 () Bool)

(assert (=> bs!1286811 m!6548530))

(assert (=> d!1758547 d!1758731))

(assert (=> d!1758547 d!1758653))

(declare-fun bs!1286812 () Bool)

(declare-fun d!1758733 () Bool)

(assert (= bs!1286812 (and d!1758733 d!1758661)))

(declare-fun lambda!298218 () Int)

(assert (=> bs!1286812 (= lambda!298218 lambda!298207)))

(declare-fun bs!1286813 () Bool)

(assert (= bs!1286813 (and d!1758733 d!1758605)))

(assert (=> bs!1286813 (= lambda!298218 lambda!298187)))

(declare-fun bs!1286814 () Bool)

(assert (= bs!1286814 (and d!1758733 d!1758595)))

(assert (=> bs!1286814 (= lambda!298218 lambda!298184)))

(declare-fun bs!1286815 () Bool)

(assert (= bs!1286815 (and d!1758733 d!1758639)))

(assert (=> bs!1286815 (= lambda!298218 lambda!298203)))

(declare-fun bs!1286816 () Bool)

(assert (= bs!1286816 (and d!1758733 d!1758635)))

(assert (=> bs!1286816 (= lambda!298218 lambda!298199)))

(declare-fun bs!1286817 () Bool)

(assert (= bs!1286817 (and d!1758733 d!1758633)))

(assert (=> bs!1286817 (= lambda!298218 lambda!298196)))

(declare-fun b!5556757 () Bool)

(declare-fun e!3431732 () Bool)

(declare-fun lt!2251189 () Regex!15543)

(assert (=> b!5556757 (= e!3431732 (= lt!2251189 (head!11870 (t!376193 (unfocusZipperList!971 zl!343)))))))

(declare-fun b!5556758 () Bool)

(declare-fun e!3431730 () Bool)

(assert (=> b!5556758 (= e!3431730 e!3431732)))

(declare-fun c!972863 () Bool)

(assert (=> b!5556758 (= c!972863 (isEmpty!34600 (tail!10965 (t!376193 (unfocusZipperList!971 zl!343)))))))

(declare-fun b!5556759 () Bool)

(declare-fun e!3431733 () Regex!15543)

(declare-fun e!3431728 () Regex!15543)

(assert (=> b!5556759 (= e!3431733 e!3431728)))

(declare-fun c!972862 () Bool)

(assert (=> b!5556759 (= c!972862 ((_ is Cons!62804) (t!376193 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556760 () Bool)

(assert (=> b!5556760 (= e!3431732 (isUnion!546 lt!2251189))))

(declare-fun b!5556761 () Bool)

(assert (=> b!5556761 (= e!3431730 (isEmptyLang!1116 lt!2251189))))

(declare-fun b!5556763 () Bool)

(assert (=> b!5556763 (= e!3431728 (Union!15543 (h!69252 (t!376193 (unfocusZipperList!971 zl!343))) (generalisedUnion!1406 (t!376193 (t!376193 (unfocusZipperList!971 zl!343))))))))

(declare-fun b!5556764 () Bool)

(declare-fun e!3431729 () Bool)

(assert (=> b!5556764 (= e!3431729 e!3431730)))

(declare-fun c!972860 () Bool)

(assert (=> b!5556764 (= c!972860 (isEmpty!34600 (t!376193 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556765 () Bool)

(assert (=> b!5556765 (= e!3431733 (h!69252 (t!376193 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556766 () Bool)

(assert (=> b!5556766 (= e!3431728 EmptyLang!15543)))

(declare-fun b!5556762 () Bool)

(declare-fun e!3431731 () Bool)

(assert (=> b!5556762 (= e!3431731 (isEmpty!34600 (t!376193 (t!376193 (unfocusZipperList!971 zl!343)))))))

(assert (=> d!1758733 e!3431729))

(declare-fun res!2361917 () Bool)

(assert (=> d!1758733 (=> (not res!2361917) (not e!3431729))))

(assert (=> d!1758733 (= res!2361917 (validRegex!7279 lt!2251189))))

(assert (=> d!1758733 (= lt!2251189 e!3431733)))

(declare-fun c!972861 () Bool)

(assert (=> d!1758733 (= c!972861 e!3431731)))

(declare-fun res!2361916 () Bool)

(assert (=> d!1758733 (=> (not res!2361916) (not e!3431731))))

(assert (=> d!1758733 (= res!2361916 ((_ is Cons!62804) (t!376193 (unfocusZipperList!971 zl!343))))))

(assert (=> d!1758733 (forall!14715 (t!376193 (unfocusZipperList!971 zl!343)) lambda!298218)))

(assert (=> d!1758733 (= (generalisedUnion!1406 (t!376193 (unfocusZipperList!971 zl!343))) lt!2251189)))

(assert (= (and d!1758733 res!2361916) b!5556762))

(assert (= (and d!1758733 c!972861) b!5556765))

(assert (= (and d!1758733 (not c!972861)) b!5556759))

(assert (= (and b!5556759 c!972862) b!5556763))

(assert (= (and b!5556759 (not c!972862)) b!5556766))

(assert (= (and d!1758733 res!2361917) b!5556764))

(assert (= (and b!5556764 c!972860) b!5556761))

(assert (= (and b!5556764 (not c!972860)) b!5556758))

(assert (= (and b!5556758 c!972863) b!5556757))

(assert (= (and b!5556758 (not c!972863)) b!5556760))

(declare-fun m!6548532 () Bool)

(assert (=> d!1758733 m!6548532))

(declare-fun m!6548534 () Bool)

(assert (=> d!1758733 m!6548534))

(declare-fun m!6548536 () Bool)

(assert (=> b!5556762 m!6548536))

(declare-fun m!6548538 () Bool)

(assert (=> b!5556760 m!6548538))

(declare-fun m!6548540 () Bool)

(assert (=> b!5556757 m!6548540))

(declare-fun m!6548542 () Bool)

(assert (=> b!5556758 m!6548542))

(assert (=> b!5556758 m!6548542))

(declare-fun m!6548544 () Bool)

(assert (=> b!5556758 m!6548544))

(declare-fun m!6548546 () Bool)

(assert (=> b!5556763 m!6548546))

(assert (=> b!5556764 m!6548218))

(declare-fun m!6548548 () Bool)

(assert (=> b!5556761 m!6548548))

(assert (=> b!5556284 d!1758733))

(declare-fun b!5556767 () Bool)

(declare-fun e!3431735 () (InoxSet Context!9854))

(declare-fun e!3431736 () (InoxSet Context!9854))

(assert (=> b!5556767 (= e!3431735 e!3431736)))

(declare-fun c!972864 () Bool)

(assert (=> b!5556767 (= c!972864 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun b!5556768 () Bool)

(declare-fun call!414326 () (InoxSet Context!9854))

(assert (=> b!5556768 (= e!3431735 ((_ map or) call!414326 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343))))))) (h!69254 s!2326))))))

(declare-fun d!1758735 () Bool)

(declare-fun c!972865 () Bool)

(declare-fun e!3431734 () Bool)

(assert (=> d!1758735 (= c!972865 e!3431734)))

(declare-fun res!2361918 () Bool)

(assert (=> d!1758735 (=> (not res!2361918) (not e!3431734))))

(assert (=> d!1758735 (= res!2361918 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))))))))

(assert (=> d!1758735 (= (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326)) e!3431735)))

(declare-fun b!5556769 () Bool)

(assert (=> b!5556769 (= e!3431736 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556770 () Bool)

(assert (=> b!5556770 (= e!3431736 call!414326)))

(declare-fun b!5556771 () Bool)

(assert (=> b!5556771 (= e!3431734 (nullable!5575 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343))))))))))

(declare-fun bm!414321 () Bool)

(assert (=> bm!414321 (= call!414326 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))))) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343))))))) (h!69254 s!2326)))))

(assert (= (and d!1758735 res!2361918) b!5556771))

(assert (= (and d!1758735 c!972865) b!5556768))

(assert (= (and d!1758735 (not c!972865)) b!5556767))

(assert (= (and b!5556767 c!972864) b!5556770))

(assert (= (and b!5556767 (not c!972864)) b!5556769))

(assert (= (or b!5556768 b!5556770) bm!414321))

(declare-fun m!6548550 () Bool)

(assert (=> b!5556768 m!6548550))

(declare-fun m!6548552 () Bool)

(assert (=> b!5556771 m!6548552))

(declare-fun m!6548554 () Bool)

(assert (=> bm!414321 m!6548554))

(assert (=> b!5556214 d!1758735))

(declare-fun b!5556772 () Bool)

(declare-fun e!3431738 () Bool)

(declare-fun e!3431737 () Bool)

(assert (=> b!5556772 (= e!3431738 e!3431737)))

(declare-fun res!2361924 () Bool)

(assert (=> b!5556772 (=> (not res!2361924) (not e!3431737))))

(declare-fun lt!2251190 () Bool)

(assert (=> b!5556772 (= res!2361924 (not lt!2251190))))

(declare-fun bm!414322 () Bool)

(declare-fun call!414327 () Bool)

(assert (=> bm!414322 (= call!414327 (isEmpty!34604 s!2326))))

(declare-fun b!5556773 () Bool)

(declare-fun e!3431742 () Bool)

(assert (=> b!5556773 (= e!3431742 (not (= (head!11868 s!2326) (c!972627 (regTwo!31598 r!7292)))))))

(declare-fun d!1758737 () Bool)

(declare-fun e!3431743 () Bool)

(assert (=> d!1758737 e!3431743))

(declare-fun c!972867 () Bool)

(assert (=> d!1758737 (= c!972867 ((_ is EmptyExpr!15543) (regTwo!31598 r!7292)))))

(declare-fun e!3431741 () Bool)

(assert (=> d!1758737 (= lt!2251190 e!3431741)))

(declare-fun c!972868 () Bool)

(assert (=> d!1758737 (= c!972868 (isEmpty!34604 s!2326))))

(assert (=> d!1758737 (validRegex!7279 (regTwo!31598 r!7292))))

(assert (=> d!1758737 (= (matchR!7728 (regTwo!31598 r!7292) s!2326) lt!2251190)))

(declare-fun b!5556774 () Bool)

(declare-fun res!2361920 () Bool)

(declare-fun e!3431740 () Bool)

(assert (=> b!5556774 (=> (not res!2361920) (not e!3431740))))

(assert (=> b!5556774 (= res!2361920 (not call!414327))))

(declare-fun b!5556775 () Bool)

(declare-fun e!3431739 () Bool)

(assert (=> b!5556775 (= e!3431743 e!3431739)))

(declare-fun c!972866 () Bool)

(assert (=> b!5556775 (= c!972866 ((_ is EmptyLang!15543) (regTwo!31598 r!7292)))))

(declare-fun b!5556776 () Bool)

(assert (=> b!5556776 (= e!3431741 (matchR!7728 (derivativeStep!4398 (regTwo!31598 r!7292) (head!11868 s!2326)) (tail!10963 s!2326)))))

(declare-fun b!5556777 () Bool)

(declare-fun res!2361922 () Bool)

(assert (=> b!5556777 (=> res!2361922 e!3431738)))

(assert (=> b!5556777 (= res!2361922 (not ((_ is ElementMatch!15543) (regTwo!31598 r!7292))))))

(assert (=> b!5556777 (= e!3431739 e!3431738)))

(declare-fun b!5556778 () Bool)

(assert (=> b!5556778 (= e!3431739 (not lt!2251190))))

(declare-fun b!5556779 () Bool)

(declare-fun res!2361921 () Bool)

(assert (=> b!5556779 (=> res!2361921 e!3431738)))

(assert (=> b!5556779 (= res!2361921 e!3431740)))

(declare-fun res!2361925 () Bool)

(assert (=> b!5556779 (=> (not res!2361925) (not e!3431740))))

(assert (=> b!5556779 (= res!2361925 lt!2251190)))

(declare-fun b!5556780 () Bool)

(assert (=> b!5556780 (= e!3431743 (= lt!2251190 call!414327))))

(declare-fun b!5556781 () Bool)

(assert (=> b!5556781 (= e!3431737 e!3431742)))

(declare-fun res!2361919 () Bool)

(assert (=> b!5556781 (=> res!2361919 e!3431742)))

(assert (=> b!5556781 (= res!2361919 call!414327)))

(declare-fun b!5556782 () Bool)

(assert (=> b!5556782 (= e!3431740 (= (head!11868 s!2326) (c!972627 (regTwo!31598 r!7292))))))

(declare-fun b!5556783 () Bool)

(assert (=> b!5556783 (= e!3431741 (nullable!5575 (regTwo!31598 r!7292)))))

(declare-fun b!5556784 () Bool)

(declare-fun res!2361923 () Bool)

(assert (=> b!5556784 (=> res!2361923 e!3431742)))

(assert (=> b!5556784 (= res!2361923 (not (isEmpty!34604 (tail!10963 s!2326))))))

(declare-fun b!5556785 () Bool)

(declare-fun res!2361926 () Bool)

(assert (=> b!5556785 (=> (not res!2361926) (not e!3431740))))

(assert (=> b!5556785 (= res!2361926 (isEmpty!34604 (tail!10963 s!2326)))))

(assert (= (and d!1758737 c!972868) b!5556783))

(assert (= (and d!1758737 (not c!972868)) b!5556776))

(assert (= (and d!1758737 c!972867) b!5556780))

(assert (= (and d!1758737 (not c!972867)) b!5556775))

(assert (= (and b!5556775 c!972866) b!5556778))

(assert (= (and b!5556775 (not c!972866)) b!5556777))

(assert (= (and b!5556777 (not res!2361922)) b!5556779))

(assert (= (and b!5556779 res!2361925) b!5556774))

(assert (= (and b!5556774 res!2361920) b!5556785))

(assert (= (and b!5556785 res!2361926) b!5556782))

(assert (= (and b!5556779 (not res!2361921)) b!5556772))

(assert (= (and b!5556772 res!2361924) b!5556781))

(assert (= (and b!5556781 (not res!2361919)) b!5556784))

(assert (= (and b!5556784 (not res!2361923)) b!5556773))

(assert (= (or b!5556780 b!5556774 b!5556781) bm!414322))

(assert (=> bm!414322 m!6548100))

(assert (=> b!5556783 m!6548338))

(assert (=> b!5556773 m!6548104))

(assert (=> d!1758737 m!6548100))

(assert (=> d!1758737 m!6548342))

(assert (=> b!5556785 m!6548108))

(assert (=> b!5556785 m!6548108))

(assert (=> b!5556785 m!6548298))

(assert (=> b!5556784 m!6548108))

(assert (=> b!5556784 m!6548108))

(assert (=> b!5556784 m!6548298))

(assert (=> b!5556776 m!6548104))

(assert (=> b!5556776 m!6548104))

(declare-fun m!6548556 () Bool)

(assert (=> b!5556776 m!6548556))

(assert (=> b!5556776 m!6548108))

(assert (=> b!5556776 m!6548556))

(assert (=> b!5556776 m!6548108))

(declare-fun m!6548558 () Bool)

(assert (=> b!5556776 m!6548558))

(assert (=> b!5556782 m!6548104))

(assert (=> b!5555961 d!1758737))

(declare-fun b!5556786 () Bool)

(declare-fun e!3431745 () (InoxSet Context!9854))

(declare-fun e!3431746 () (InoxSet Context!9854))

(assert (=> b!5556786 (= e!3431745 e!3431746)))

(declare-fun c!972869 () Bool)

(assert (=> b!5556786 (= c!972869 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))))

(declare-fun call!414328 () (InoxSet Context!9854))

(declare-fun b!5556787 () Bool)

(assert (=> b!5556787 (= e!3431745 ((_ map or) call!414328 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))) (h!69254 s!2326))))))

(declare-fun d!1758739 () Bool)

(declare-fun c!972870 () Bool)

(declare-fun e!3431744 () Bool)

(assert (=> d!1758739 (= c!972870 e!3431744)))

(declare-fun res!2361927 () Bool)

(assert (=> d!1758739 (=> (not res!2361927) (not e!3431744))))

(assert (=> d!1758739 (= res!2361927 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))))

(assert (=> d!1758739 (= (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326)) e!3431745)))

(declare-fun b!5556788 () Bool)

(assert (=> b!5556788 (= e!3431746 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556789 () Bool)

(assert (=> b!5556789 (= e!3431746 call!414328)))

(declare-fun b!5556790 () Bool)

(assert (=> b!5556790 (= e!3431744 (nullable!5575 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))))))

(declare-fun bm!414323 () Bool)

(assert (=> bm!414323 (= call!414328 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))) (h!69254 s!2326)))))

(assert (= (and d!1758739 res!2361927) b!5556790))

(assert (= (and d!1758739 c!972870) b!5556787))

(assert (= (and d!1758739 (not c!972870)) b!5556786))

(assert (= (and b!5556786 c!972869) b!5556789))

(assert (= (and b!5556786 (not c!972869)) b!5556788))

(assert (= (or b!5556787 b!5556789) bm!414323))

(declare-fun m!6548560 () Bool)

(assert (=> b!5556787 m!6548560))

(declare-fun m!6548562 () Bool)

(assert (=> b!5556790 m!6548562))

(declare-fun m!6548564 () Bool)

(assert (=> bm!414323 m!6548564))

(assert (=> b!5556209 d!1758739))

(declare-fun bm!414324 () Bool)

(declare-fun call!414330 () (InoxSet Context!9854))

(declare-fun call!414333 () (InoxSet Context!9854))

(assert (=> bm!414324 (= call!414330 call!414333)))

(declare-fun call!414331 () List!62928)

(declare-fun c!972874 () Bool)

(declare-fun call!414332 () (InoxSet Context!9854))

(declare-fun bm!414325 () Bool)

(assert (=> bm!414325 (= call!414332 (derivationStepZipperDown!885 (ite c!972874 (regTwo!31599 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (regOne!31598 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))) (ite c!972874 (ite c!972716 lt!2251092 (Context!9855 call!414246)) (Context!9855 call!414331)) (h!69254 s!2326)))))

(declare-fun b!5556791 () Bool)

(declare-fun e!3431751 () Bool)

(assert (=> b!5556791 (= e!3431751 (nullable!5575 (regOne!31598 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))))

(declare-fun bm!414326 () Bool)

(declare-fun call!414334 () (InoxSet Context!9854))

(assert (=> bm!414326 (= call!414334 call!414330)))

(declare-fun b!5556792 () Bool)

(declare-fun c!972872 () Bool)

(assert (=> b!5556792 (= c!972872 ((_ is Star!15543) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun e!3431749 () (InoxSet Context!9854))

(declare-fun e!3431747 () (InoxSet Context!9854))

(assert (=> b!5556792 (= e!3431749 e!3431747)))

(declare-fun b!5556794 () Bool)

(declare-fun e!3431748 () (InoxSet Context!9854))

(assert (=> b!5556794 (= e!3431748 ((_ map or) call!414332 call!414330))))

(declare-fun bm!414327 () Bool)

(declare-fun c!972873 () Bool)

(declare-fun c!972871 () Bool)

(assert (=> bm!414327 (= call!414331 ($colon$colon!1611 (exprs!5427 (ite c!972716 lt!2251092 (Context!9855 call!414246))) (ite (or c!972871 c!972873) (regTwo!31598 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))))

(declare-fun b!5556795 () Bool)

(assert (=> b!5556795 (= c!972871 e!3431751)))

(declare-fun res!2361928 () Bool)

(assert (=> b!5556795 (=> (not res!2361928) (not e!3431751))))

(assert (=> b!5556795 (= res!2361928 ((_ is Concat!24388) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun e!3431750 () (InoxSet Context!9854))

(assert (=> b!5556795 (= e!3431750 e!3431748)))

(declare-fun bm!414328 () Bool)

(declare-fun call!414329 () List!62928)

(assert (=> bm!414328 (= call!414329 call!414331)))

(declare-fun bm!414329 () Bool)

(assert (=> bm!414329 (= call!414333 (derivationStepZipperDown!885 (ite c!972874 (regOne!31599 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (ite c!972871 (regTwo!31598 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (ite c!972873 (regOne!31598 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (reg!15872 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))) (ite (or c!972874 c!972871) (ite c!972716 lt!2251092 (Context!9855 call!414246)) (Context!9855 call!414329)) (h!69254 s!2326)))))

(declare-fun b!5556796 () Bool)

(assert (=> b!5556796 (= e!3431747 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556797 () Bool)

(assert (=> b!5556797 (= e!3431750 ((_ map or) call!414333 call!414332))))

(declare-fun b!5556798 () Bool)

(assert (=> b!5556798 (= e!3431747 call!414334)))

(declare-fun b!5556799 () Bool)

(assert (=> b!5556799 (= e!3431749 call!414334)))

(declare-fun b!5556793 () Bool)

(declare-fun e!3431752 () (InoxSet Context!9854))

(assert (=> b!5556793 (= e!3431752 (store ((as const (Array Context!9854 Bool)) false) (ite c!972716 lt!2251092 (Context!9855 call!414246)) true))))

(declare-fun d!1758741 () Bool)

(declare-fun c!972875 () Bool)

(assert (=> d!1758741 (= c!972875 (and ((_ is ElementMatch!15543) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (= (c!972627 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))) (h!69254 s!2326))))))

(assert (=> d!1758741 (= (derivationStepZipperDown!885 (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))) (ite c!972716 lt!2251092 (Context!9855 call!414246)) (h!69254 s!2326)) e!3431752)))

(declare-fun b!5556800 () Bool)

(assert (=> b!5556800 (= e!3431752 e!3431750)))

(assert (=> b!5556800 (= c!972874 ((_ is Union!15543) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun b!5556801 () Bool)

(assert (=> b!5556801 (= e!3431748 e!3431749)))

(assert (=> b!5556801 (= c!972873 ((_ is Concat!24388) (ite c!972716 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(assert (= (and d!1758741 c!972875) b!5556793))

(assert (= (and d!1758741 (not c!972875)) b!5556800))

(assert (= (and b!5556800 c!972874) b!5556797))

(assert (= (and b!5556800 (not c!972874)) b!5556795))

(assert (= (and b!5556795 res!2361928) b!5556791))

(assert (= (and b!5556795 c!972871) b!5556794))

(assert (= (and b!5556795 (not c!972871)) b!5556801))

(assert (= (and b!5556801 c!972873) b!5556799))

(assert (= (and b!5556801 (not c!972873)) b!5556792))

(assert (= (and b!5556792 c!972872) b!5556798))

(assert (= (and b!5556792 (not c!972872)) b!5556796))

(assert (= (or b!5556799 b!5556798) bm!414328))

(assert (= (or b!5556799 b!5556798) bm!414326))

(assert (= (or b!5556794 bm!414328) bm!414327))

(assert (= (or b!5556794 bm!414326) bm!414324))

(assert (= (or b!5556797 b!5556794) bm!414325))

(assert (= (or b!5556797 bm!414324) bm!414329))

(declare-fun m!6548566 () Bool)

(assert (=> bm!414329 m!6548566))

(declare-fun m!6548568 () Bool)

(assert (=> bm!414325 m!6548568))

(declare-fun m!6548570 () Bool)

(assert (=> b!5556793 m!6548570))

(declare-fun m!6548572 () Bool)

(assert (=> bm!414327 m!6548572))

(declare-fun m!6548574 () Bool)

(assert (=> b!5556791 m!6548574))

(assert (=> bm!414240 d!1758741))

(declare-fun bs!1286818 () Bool)

(declare-fun b!5556804 () Bool)

(assert (= bs!1286818 (and b!5556804 d!1758547)))

(declare-fun lambda!298219 () Int)

(assert (=> bs!1286818 (not (= lambda!298219 lambda!298171))))

(declare-fun bs!1286819 () Bool)

(assert (= bs!1286819 (and b!5556804 d!1758731)))

(assert (=> bs!1286819 (not (= lambda!298219 lambda!298216))))

(declare-fun bs!1286820 () Bool)

(assert (= bs!1286820 (and b!5556804 b!5555888)))

(assert (=> bs!1286820 (not (= lambda!298219 lambda!298139))))

(declare-fun bs!1286821 () Bool)

(assert (= bs!1286821 (and b!5556804 b!5556365)))

(assert (=> bs!1286821 (= (and (= (reg!15872 (regOne!31599 r!7292)) (reg!15872 r!7292)) (= (regOne!31599 r!7292) r!7292)) (= lambda!298219 lambda!298192))))

(declare-fun bs!1286822 () Bool)

(assert (= bs!1286822 (and b!5556804 d!1758657)))

(assert (=> bs!1286822 (not (= lambda!298219 lambda!298206))))

(assert (=> bs!1286818 (not (= lambda!298219 lambda!298172))))

(assert (=> bs!1286820 (not (= lambda!298219 lambda!298140))))

(declare-fun bs!1286823 () Bool)

(assert (= bs!1286823 (and b!5556804 b!5556369)))

(assert (=> bs!1286823 (not (= lambda!298219 lambda!298193))))

(assert (=> bs!1286819 (not (= lambda!298219 lambda!298217))))

(declare-fun bs!1286824 () Bool)

(assert (= bs!1286824 (and b!5556804 d!1758541)))

(assert (=> bs!1286824 (not (= lambda!298219 lambda!298158))))

(assert (=> b!5556804 true))

(assert (=> b!5556804 true))

(declare-fun bs!1286828 () Bool)

(declare-fun b!5556808 () Bool)

(assert (= bs!1286828 (and b!5556808 d!1758547)))

(declare-fun lambda!298221 () Int)

(assert (=> bs!1286828 (not (= lambda!298221 lambda!298171))))

(declare-fun bs!1286830 () Bool)

(assert (= bs!1286830 (and b!5556808 d!1758731)))

(assert (=> bs!1286830 (not (= lambda!298221 lambda!298216))))

(declare-fun bs!1286832 () Bool)

(assert (= bs!1286832 (and b!5556808 b!5555888)))

(assert (=> bs!1286832 (not (= lambda!298221 lambda!298139))))

(declare-fun bs!1286833 () Bool)

(assert (= bs!1286833 (and b!5556808 b!5556365)))

(assert (=> bs!1286833 (not (= lambda!298221 lambda!298192))))

(declare-fun bs!1286834 () Bool)

(assert (= bs!1286834 (and b!5556808 d!1758657)))

(assert (=> bs!1286834 (not (= lambda!298221 lambda!298206))))

(assert (=> bs!1286828 (= (and (= (regOne!31598 (regOne!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regOne!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298221 lambda!298172))))

(assert (=> bs!1286832 (= (and (= (regOne!31598 (regOne!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regOne!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298221 lambda!298140))))

(declare-fun bs!1286835 () Bool)

(assert (= bs!1286835 (and b!5556808 b!5556804)))

(assert (=> bs!1286835 (not (= lambda!298221 lambda!298219))))

(declare-fun bs!1286836 () Bool)

(assert (= bs!1286836 (and b!5556808 b!5556369)))

(assert (=> bs!1286836 (= (and (= (regOne!31598 (regOne!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regOne!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298221 lambda!298193))))

(assert (=> bs!1286830 (= (and (= (regOne!31598 (regOne!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regOne!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298221 lambda!298217))))

(declare-fun bs!1286837 () Bool)

(assert (= bs!1286837 (and b!5556808 d!1758541)))

(assert (=> bs!1286837 (not (= lambda!298221 lambda!298158))))

(assert (=> b!5556808 true))

(assert (=> b!5556808 true))

(declare-fun c!972877 () Bool)

(declare-fun bm!414330 () Bool)

(declare-fun call!414335 () Bool)

(assert (=> bm!414330 (= call!414335 (Exists!2643 (ite c!972877 lambda!298219 lambda!298221)))))

(declare-fun b!5556802 () Bool)

(declare-fun e!3431757 () Bool)

(declare-fun e!3431754 () Bool)

(assert (=> b!5556802 (= e!3431757 e!3431754)))

(declare-fun res!2361931 () Bool)

(assert (=> b!5556802 (= res!2361931 (matchRSpec!2646 (regOne!31599 (regOne!31599 r!7292)) s!2326))))

(assert (=> b!5556802 (=> res!2361931 e!3431754)))

(declare-fun b!5556803 () Bool)

(declare-fun e!3431753 () Bool)

(assert (=> b!5556803 (= e!3431753 (= s!2326 (Cons!62806 (c!972627 (regOne!31599 r!7292)) Nil!62806)))))

(declare-fun e!3431755 () Bool)

(assert (=> b!5556804 (= e!3431755 call!414335)))

(declare-fun b!5556805 () Bool)

(declare-fun c!972879 () Bool)

(assert (=> b!5556805 (= c!972879 ((_ is Union!15543) (regOne!31599 r!7292)))))

(assert (=> b!5556805 (= e!3431753 e!3431757)))

(declare-fun b!5556806 () Bool)

(assert (=> b!5556806 (= e!3431754 (matchRSpec!2646 (regTwo!31599 (regOne!31599 r!7292)) s!2326))))

(declare-fun d!1758745 () Bool)

(declare-fun c!972878 () Bool)

(assert (=> d!1758745 (= c!972878 ((_ is EmptyExpr!15543) (regOne!31599 r!7292)))))

(declare-fun e!3431758 () Bool)

(assert (=> d!1758745 (= (matchRSpec!2646 (regOne!31599 r!7292) s!2326) e!3431758)))

(declare-fun b!5556807 () Bool)

(declare-fun e!3431759 () Bool)

(assert (=> b!5556807 (= e!3431758 e!3431759)))

(declare-fun res!2361930 () Bool)

(assert (=> b!5556807 (= res!2361930 (not ((_ is EmptyLang!15543) (regOne!31599 r!7292))))))

(assert (=> b!5556807 (=> (not res!2361930) (not e!3431759))))

(declare-fun e!3431756 () Bool)

(assert (=> b!5556808 (= e!3431756 call!414335)))

(declare-fun b!5556809 () Bool)

(assert (=> b!5556809 (= e!3431757 e!3431756)))

(assert (=> b!5556809 (= c!972877 ((_ is Star!15543) (regOne!31599 r!7292)))))

(declare-fun bm!414331 () Bool)

(declare-fun call!414336 () Bool)

(assert (=> bm!414331 (= call!414336 (isEmpty!34604 s!2326))))

(declare-fun b!5556810 () Bool)

(assert (=> b!5556810 (= e!3431758 call!414336)))

(declare-fun b!5556811 () Bool)

(declare-fun c!972876 () Bool)

(assert (=> b!5556811 (= c!972876 ((_ is ElementMatch!15543) (regOne!31599 r!7292)))))

(assert (=> b!5556811 (= e!3431759 e!3431753)))

(declare-fun b!5556812 () Bool)

(declare-fun res!2361929 () Bool)

(assert (=> b!5556812 (=> res!2361929 e!3431755)))

(assert (=> b!5556812 (= res!2361929 call!414336)))

(assert (=> b!5556812 (= e!3431756 e!3431755)))

(assert (= (and d!1758745 c!972878) b!5556810))

(assert (= (and d!1758745 (not c!972878)) b!5556807))

(assert (= (and b!5556807 res!2361930) b!5556811))

(assert (= (and b!5556811 c!972876) b!5556803))

(assert (= (and b!5556811 (not c!972876)) b!5556805))

(assert (= (and b!5556805 c!972879) b!5556802))

(assert (= (and b!5556805 (not c!972879)) b!5556809))

(assert (= (and b!5556802 (not res!2361931)) b!5556806))

(assert (= (and b!5556809 c!972877) b!5556812))

(assert (= (and b!5556809 (not c!972877)) b!5556808))

(assert (= (and b!5556812 (not res!2361929)) b!5556804))

(assert (= (or b!5556804 b!5556808) bm!414330))

(assert (= (or b!5556810 b!5556812) bm!414331))

(declare-fun m!6548590 () Bool)

(assert (=> bm!414330 m!6548590))

(declare-fun m!6548594 () Bool)

(assert (=> b!5556802 m!6548594))

(declare-fun m!6548596 () Bool)

(assert (=> b!5556806 m!6548596))

(assert (=> bm!414331 m!6548100))

(assert (=> b!5556363 d!1758745))

(declare-fun d!1758749 () Bool)

(assert (=> d!1758749 (= (isEmptyLang!1116 lt!2251150) ((_ is EmptyLang!15543) lt!2251150))))

(assert (=> b!5556282 d!1758749))

(declare-fun c!972885 () Bool)

(declare-fun call!414339 () Bool)

(declare-fun bm!414332 () Bool)

(assert (=> bm!414332 (= call!414339 (validRegex!7279 (ite c!972885 (regOne!31599 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))) (regOne!31598 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))))

(declare-fun b!5556823 () Bool)

(declare-fun e!3431766 () Bool)

(declare-fun call!414338 () Bool)

(assert (=> b!5556823 (= e!3431766 call!414338)))

(declare-fun bm!414333 () Bool)

(declare-fun call!414337 () Bool)

(assert (=> bm!414333 (= call!414338 call!414337)))

(declare-fun bm!414334 () Bool)

(declare-fun c!972884 () Bool)

(assert (=> bm!414334 (= call!414337 (validRegex!7279 (ite c!972884 (reg!15872 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))) (ite c!972885 (regTwo!31599 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))) (regTwo!31598 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292))))))))))

(declare-fun d!1758753 () Bool)

(declare-fun res!2361936 () Bool)

(declare-fun e!3431769 () Bool)

(assert (=> d!1758753 (=> res!2361936 e!3431769)))

(assert (=> d!1758753 (= res!2361936 ((_ is ElementMatch!15543) (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))

(assert (=> d!1758753 (= (validRegex!7279 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))) e!3431769)))

(declare-fun b!5556824 () Bool)

(declare-fun e!3431771 () Bool)

(assert (=> b!5556824 (= e!3431771 call!414337)))

(declare-fun b!5556825 () Bool)

(declare-fun e!3431770 () Bool)

(assert (=> b!5556825 (= e!3431770 call!414338)))

(declare-fun b!5556826 () Bool)

(declare-fun e!3431767 () Bool)

(assert (=> b!5556826 (= e!3431767 e!3431770)))

(declare-fun res!2361934 () Bool)

(assert (=> b!5556826 (=> (not res!2361934) (not e!3431770))))

(assert (=> b!5556826 (= res!2361934 call!414339)))

(declare-fun b!5556827 () Bool)

(declare-fun e!3431772 () Bool)

(assert (=> b!5556827 (= e!3431769 e!3431772)))

(assert (=> b!5556827 (= c!972884 ((_ is Star!15543) (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))

(declare-fun b!5556828 () Bool)

(declare-fun e!3431768 () Bool)

(assert (=> b!5556828 (= e!3431772 e!3431768)))

(assert (=> b!5556828 (= c!972885 ((_ is Union!15543) (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))

(declare-fun b!5556829 () Bool)

(declare-fun res!2361935 () Bool)

(assert (=> b!5556829 (=> (not res!2361935) (not e!3431766))))

(assert (=> b!5556829 (= res!2361935 call!414339)))

(assert (=> b!5556829 (= e!3431768 e!3431766)))

(declare-fun b!5556830 () Bool)

(assert (=> b!5556830 (= e!3431772 e!3431771)))

(declare-fun res!2361938 () Bool)

(assert (=> b!5556830 (= res!2361938 (not (nullable!5575 (reg!15872 (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292)))))))))

(assert (=> b!5556830 (=> (not res!2361938) (not e!3431771))))

(declare-fun b!5556831 () Bool)

(declare-fun res!2361937 () Bool)

(assert (=> b!5556831 (=> res!2361937 e!3431767)))

(assert (=> b!5556831 (= res!2361937 (not ((_ is Concat!24388) (ite c!972679 (reg!15872 r!7292) (ite c!972680 (regTwo!31599 r!7292) (regTwo!31598 r!7292))))))))

(assert (=> b!5556831 (= e!3431768 e!3431767)))

(assert (= (and d!1758753 (not res!2361936)) b!5556827))

(assert (= (and b!5556827 c!972884) b!5556830))

(assert (= (and b!5556827 (not c!972884)) b!5556828))

(assert (= (and b!5556830 res!2361938) b!5556824))

(assert (= (and b!5556828 c!972885) b!5556829))

(assert (= (and b!5556828 (not c!972885)) b!5556831))

(assert (= (and b!5556829 res!2361935) b!5556823))

(assert (= (and b!5556831 (not res!2361937)) b!5556826))

(assert (= (and b!5556826 res!2361934) b!5556825))

(assert (= (or b!5556823 b!5556825) bm!414333))

(assert (= (or b!5556829 b!5556826) bm!414332))

(assert (= (or b!5556824 bm!414333) bm!414334))

(declare-fun m!6548600 () Bool)

(assert (=> bm!414332 m!6548600))

(declare-fun m!6548602 () Bool)

(assert (=> bm!414334 m!6548602))

(declare-fun m!6548604 () Bool)

(assert (=> b!5556830 m!6548604))

(assert (=> bm!414215 d!1758753))

(declare-fun d!1758757 () Bool)

(assert (=> d!1758757 (= (head!11870 (exprs!5427 (h!69253 zl!343))) (h!69252 (exprs!5427 (h!69253 zl!343))))))

(assert (=> b!5556524 d!1758757))

(declare-fun d!1758759 () Bool)

(assert (=> d!1758759 (= (isEmpty!34603 (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326)) (not ((_ is Some!15551) (findConcatSeparation!1966 (regOne!31598 r!7292) (regTwo!31598 r!7292) Nil!62806 s!2326 s!2326))))))

(assert (=> d!1758557 d!1758759))

(declare-fun d!1758761 () Bool)

(declare-fun res!2361944 () Bool)

(declare-fun e!3431780 () Bool)

(assert (=> d!1758761 (=> res!2361944 e!3431780)))

(assert (=> d!1758761 (= res!2361944 ((_ is Nil!62804) lt!2251153))))

(assert (=> d!1758761 (= (forall!14715 lt!2251153 lambda!298187) e!3431780)))

(declare-fun b!5556841 () Bool)

(declare-fun e!3431781 () Bool)

(assert (=> b!5556841 (= e!3431780 e!3431781)))

(declare-fun res!2361945 () Bool)

(assert (=> b!5556841 (=> (not res!2361945) (not e!3431781))))

(assert (=> b!5556841 (= res!2361945 (dynLambda!24564 lambda!298187 (h!69252 lt!2251153)))))

(declare-fun b!5556842 () Bool)

(assert (=> b!5556842 (= e!3431781 (forall!14715 (t!376193 lt!2251153) lambda!298187))))

(assert (= (and d!1758761 (not res!2361944)) b!5556841))

(assert (= (and b!5556841 res!2361945) b!5556842))

(declare-fun b_lambda!210989 () Bool)

(assert (=> (not b_lambda!210989) (not b!5556841)))

(declare-fun m!6548612 () Bool)

(assert (=> b!5556841 m!6548612))

(declare-fun m!6548614 () Bool)

(assert (=> b!5556842 m!6548614))

(assert (=> d!1758605 d!1758761))

(declare-fun d!1758765 () Bool)

(assert (=> d!1758765 (= (isConcat!628 lt!2251171) ((_ is Concat!24388) lt!2251171))))

(assert (=> b!5556526 d!1758765))

(declare-fun bs!1286838 () Bool)

(declare-fun d!1758767 () Bool)

(assert (= bs!1286838 (and d!1758767 d!1758661)))

(declare-fun lambda!298222 () Int)

(assert (=> bs!1286838 (= lambda!298222 lambda!298207)))

(declare-fun bs!1286839 () Bool)

(assert (= bs!1286839 (and d!1758767 d!1758605)))

(assert (=> bs!1286839 (= lambda!298222 lambda!298187)))

(declare-fun bs!1286840 () Bool)

(assert (= bs!1286840 (and d!1758767 d!1758733)))

(assert (=> bs!1286840 (= lambda!298222 lambda!298218)))

(declare-fun bs!1286841 () Bool)

(assert (= bs!1286841 (and d!1758767 d!1758595)))

(assert (=> bs!1286841 (= lambda!298222 lambda!298184)))

(declare-fun bs!1286842 () Bool)

(assert (= bs!1286842 (and d!1758767 d!1758639)))

(assert (=> bs!1286842 (= lambda!298222 lambda!298203)))

(declare-fun bs!1286843 () Bool)

(assert (= bs!1286843 (and d!1758767 d!1758635)))

(assert (=> bs!1286843 (= lambda!298222 lambda!298199)))

(declare-fun bs!1286844 () Bool)

(assert (= bs!1286844 (and d!1758767 d!1758633)))

(assert (=> bs!1286844 (= lambda!298222 lambda!298196)))

(assert (=> d!1758767 (= (inv!82104 setElem!36987) (forall!14715 (exprs!5427 setElem!36987) lambda!298222))))

(declare-fun bs!1286845 () Bool)

(assert (= bs!1286845 d!1758767))

(declare-fun m!6548616 () Bool)

(assert (=> bs!1286845 m!6548616))

(assert (=> setNonEmpty!36987 d!1758767))

(declare-fun d!1758769 () Bool)

(assert (=> d!1758769 (= (head!11870 (unfocusZipperList!971 zl!343)) (h!69252 (unfocusZipperList!971 zl!343)))))

(assert (=> b!5556278 d!1758769))

(assert (=> b!5556459 d!1758679))

(declare-fun d!1758771 () Bool)

(declare-fun res!2361950 () Bool)

(declare-fun e!3431786 () Bool)

(assert (=> d!1758771 (=> res!2361950 e!3431786)))

(assert (=> d!1758771 (= res!2361950 ((_ is Nil!62804) (exprs!5427 (h!69253 zl!343))))))

(assert (=> d!1758771 (= (forall!14715 (exprs!5427 (h!69253 zl!343)) lambda!298196) e!3431786)))

(declare-fun b!5556845 () Bool)

(declare-fun e!3431787 () Bool)

(assert (=> b!5556845 (= e!3431786 e!3431787)))

(declare-fun res!2361951 () Bool)

(assert (=> b!5556845 (=> (not res!2361951) (not e!3431787))))

(assert (=> b!5556845 (= res!2361951 (dynLambda!24564 lambda!298196 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556848 () Bool)

(assert (=> b!5556848 (= e!3431787 (forall!14715 (t!376193 (exprs!5427 (h!69253 zl!343))) lambda!298196))))

(assert (= (and d!1758771 (not res!2361950)) b!5556845))

(assert (= (and b!5556845 res!2361951) b!5556848))

(declare-fun b_lambda!210991 () Bool)

(assert (=> (not b_lambda!210991) (not b!5556845)))

(declare-fun m!6548618 () Bool)

(assert (=> b!5556845 m!6548618))

(declare-fun m!6548620 () Bool)

(assert (=> b!5556848 m!6548620))

(assert (=> d!1758633 d!1758771))

(declare-fun d!1758773 () Bool)

(declare-fun c!972888 () Bool)

(assert (=> d!1758773 (= c!972888 (isEmpty!34604 (tail!10963 s!2326)))))

(declare-fun e!3431788 () Bool)

(assert (=> d!1758773 (= (matchZipper!1681 (derivationStepZipper!1644 z!1189 (head!11868 s!2326)) (tail!10963 s!2326)) e!3431788)))

(declare-fun b!5556849 () Bool)

(assert (=> b!5556849 (= e!3431788 (nullableZipper!1544 (derivationStepZipper!1644 z!1189 (head!11868 s!2326))))))

(declare-fun b!5556850 () Bool)

(assert (=> b!5556850 (= e!3431788 (matchZipper!1681 (derivationStepZipper!1644 (derivationStepZipper!1644 z!1189 (head!11868 s!2326)) (head!11868 (tail!10963 s!2326))) (tail!10963 (tail!10963 s!2326))))))

(assert (= (and d!1758773 c!972888) b!5556849))

(assert (= (and d!1758773 (not c!972888)) b!5556850))

(assert (=> d!1758773 m!6548108))

(assert (=> d!1758773 m!6548298))

(assert (=> b!5556849 m!6548106))

(declare-fun m!6548622 () Bool)

(assert (=> b!5556849 m!6548622))

(assert (=> b!5556850 m!6548108))

(assert (=> b!5556850 m!6548440))

(assert (=> b!5556850 m!6548106))

(assert (=> b!5556850 m!6548440))

(declare-fun m!6548624 () Bool)

(assert (=> b!5556850 m!6548624))

(assert (=> b!5556850 m!6548108))

(assert (=> b!5556850 m!6548444))

(assert (=> b!5556850 m!6548624))

(assert (=> b!5556850 m!6548444))

(declare-fun m!6548626 () Bool)

(assert (=> b!5556850 m!6548626))

(assert (=> b!5556061 d!1758773))

(declare-fun bs!1286846 () Bool)

(declare-fun d!1758775 () Bool)

(assert (= bs!1286846 (and d!1758775 b!5555886)))

(declare-fun lambda!298223 () Int)

(assert (=> bs!1286846 (= (= (head!11868 s!2326) (h!69254 s!2326)) (= lambda!298223 lambda!298141))))

(declare-fun bs!1286847 () Bool)

(assert (= bs!1286847 (and d!1758775 d!1758637)))

(assert (=> bs!1286847 (= (= (head!11868 s!2326) (h!69254 s!2326)) (= lambda!298223 lambda!298202))))

(assert (=> d!1758775 true))

(assert (=> d!1758775 (= (derivationStepZipper!1644 z!1189 (head!11868 s!2326)) (flatMap!1156 z!1189 lambda!298223))))

(declare-fun bs!1286848 () Bool)

(assert (= bs!1286848 d!1758775))

(declare-fun m!6548628 () Bool)

(assert (=> bs!1286848 m!6548628))

(assert (=> b!5556061 d!1758775))

(assert (=> b!5556061 d!1758679))

(assert (=> b!5556061 d!1758681))

(assert (=> d!1758589 d!1758587))

(declare-fun d!1758777 () Bool)

(assert (=> d!1758777 (= (flatMap!1156 z!1189 lambda!298141) (dynLambda!24561 lambda!298141 (h!69253 zl!343)))))

(assert (=> d!1758777 true))

(declare-fun _$13!2133 () Unit!155546)

(assert (=> d!1758777 (= (choose!42157 z!1189 (h!69253 zl!343) lambda!298141) _$13!2133)))

(declare-fun b_lambda!210995 () Bool)

(assert (=> (not b_lambda!210995) (not d!1758777)))

(declare-fun bs!1286849 () Bool)

(assert (= bs!1286849 d!1758777))

(assert (=> bs!1286849 m!6547948))

(assert (=> bs!1286849 m!6548188))

(assert (=> d!1758589 d!1758777))

(declare-fun d!1758781 () Bool)

(declare-fun c!972889 () Bool)

(assert (=> d!1758781 (= c!972889 (isEmpty!34604 (tail!10963 (t!376195 s!2326))))))

(declare-fun e!3431793 () Bool)

(assert (=> d!1758781 (= (matchZipper!1681 (derivationStepZipper!1644 lt!2251093 (head!11868 (t!376195 s!2326))) (tail!10963 (t!376195 s!2326))) e!3431793)))

(declare-fun b!5556855 () Bool)

(assert (=> b!5556855 (= e!3431793 (nullableZipper!1544 (derivationStepZipper!1644 lt!2251093 (head!11868 (t!376195 s!2326)))))))

(declare-fun b!5556856 () Bool)

(assert (=> b!5556856 (= e!3431793 (matchZipper!1681 (derivationStepZipper!1644 (derivationStepZipper!1644 lt!2251093 (head!11868 (t!376195 s!2326))) (head!11868 (tail!10963 (t!376195 s!2326)))) (tail!10963 (tail!10963 (t!376195 s!2326)))))))

(assert (= (and d!1758781 c!972889) b!5556855))

(assert (= (and d!1758781 (not c!972889)) b!5556856))

(assert (=> d!1758781 m!6548096))

(declare-fun m!6548634 () Bool)

(assert (=> d!1758781 m!6548634))

(assert (=> b!5556855 m!6548094))

(declare-fun m!6548636 () Bool)

(assert (=> b!5556855 m!6548636))

(assert (=> b!5556856 m!6548096))

(declare-fun m!6548638 () Bool)

(assert (=> b!5556856 m!6548638))

(assert (=> b!5556856 m!6548094))

(assert (=> b!5556856 m!6548638))

(declare-fun m!6548640 () Bool)

(assert (=> b!5556856 m!6548640))

(assert (=> b!5556856 m!6548096))

(declare-fun m!6548644 () Bool)

(assert (=> b!5556856 m!6548644))

(assert (=> b!5556856 m!6548640))

(assert (=> b!5556856 m!6548644))

(declare-fun m!6548648 () Bool)

(assert (=> b!5556856 m!6548648))

(assert (=> b!5556059 d!1758781))

(declare-fun bs!1286850 () Bool)

(declare-fun d!1758785 () Bool)

(assert (= bs!1286850 (and d!1758785 b!5555886)))

(declare-fun lambda!298224 () Int)

(assert (=> bs!1286850 (= (= (head!11868 (t!376195 s!2326)) (h!69254 s!2326)) (= lambda!298224 lambda!298141))))

(declare-fun bs!1286851 () Bool)

(assert (= bs!1286851 (and d!1758785 d!1758637)))

(assert (=> bs!1286851 (= (= (head!11868 (t!376195 s!2326)) (h!69254 s!2326)) (= lambda!298224 lambda!298202))))

(declare-fun bs!1286853 () Bool)

(assert (= bs!1286853 (and d!1758785 d!1758775)))

(assert (=> bs!1286853 (= (= (head!11868 (t!376195 s!2326)) (head!11868 s!2326)) (= lambda!298224 lambda!298223))))

(assert (=> d!1758785 true))

(assert (=> d!1758785 (= (derivationStepZipper!1644 lt!2251093 (head!11868 (t!376195 s!2326))) (flatMap!1156 lt!2251093 lambda!298224))))

(declare-fun bs!1286855 () Bool)

(assert (= bs!1286855 d!1758785))

(declare-fun m!6548650 () Bool)

(assert (=> bs!1286855 m!6548650))

(assert (=> b!5556059 d!1758785))

(declare-fun d!1758789 () Bool)

(assert (=> d!1758789 (= (head!11868 (t!376195 s!2326)) (h!69254 (t!376195 s!2326)))))

(assert (=> b!5556059 d!1758789))

(declare-fun d!1758791 () Bool)

(assert (=> d!1758791 (= (tail!10963 (t!376195 s!2326)) (t!376195 (t!376195 s!2326)))))

(assert (=> b!5556059 d!1758791))

(declare-fun d!1758793 () Bool)

(assert (=> d!1758793 true))

(declare-fun setRes!36990 () Bool)

(assert (=> d!1758793 setRes!36990))

(declare-fun condSetEmpty!36990 () Bool)

(declare-fun res!2361958 () (InoxSet Context!9854))

(assert (=> d!1758793 (= condSetEmpty!36990 (= res!2361958 ((as const (Array Context!9854 Bool)) false)))))

(assert (=> d!1758793 (= (choose!42156 z!1189 lambda!298141) res!2361958)))

(declare-fun setIsEmpty!36990 () Bool)

(assert (=> setIsEmpty!36990 setRes!36990))

(declare-fun tp!1532972 () Bool)

(declare-fun setNonEmpty!36990 () Bool)

(declare-fun setElem!36990 () Context!9854)

(declare-fun e!3431796 () Bool)

(assert (=> setNonEmpty!36990 (= setRes!36990 (and tp!1532972 (inv!82104 setElem!36990) e!3431796))))

(declare-fun setRest!36990 () (InoxSet Context!9854))

(assert (=> setNonEmpty!36990 (= res!2361958 ((_ map or) (store ((as const (Array Context!9854 Bool)) false) setElem!36990 true) setRest!36990))))

(declare-fun b!5556859 () Bool)

(declare-fun tp!1532973 () Bool)

(assert (=> b!5556859 (= e!3431796 tp!1532973)))

(assert (= (and d!1758793 condSetEmpty!36990) setIsEmpty!36990))

(assert (= (and d!1758793 (not condSetEmpty!36990)) setNonEmpty!36990))

(assert (= setNonEmpty!36990 b!5556859))

(declare-fun m!6548654 () Bool)

(assert (=> setNonEmpty!36990 m!6548654))

(assert (=> d!1758587 d!1758793))

(assert (=> b!5556301 d!1758635))

(declare-fun bs!1286861 () Bool)

(declare-fun d!1758801 () Bool)

(assert (= bs!1286861 (and d!1758801 d!1758661)))

(declare-fun lambda!298226 () Int)

(assert (=> bs!1286861 (= lambda!298226 lambda!298207)))

(declare-fun bs!1286862 () Bool)

(assert (= bs!1286862 (and d!1758801 d!1758605)))

(assert (=> bs!1286862 (= lambda!298226 lambda!298187)))

(declare-fun bs!1286863 () Bool)

(assert (= bs!1286863 (and d!1758801 d!1758733)))

(assert (=> bs!1286863 (= lambda!298226 lambda!298218)))

(declare-fun bs!1286864 () Bool)

(assert (= bs!1286864 (and d!1758801 d!1758595)))

(assert (=> bs!1286864 (= lambda!298226 lambda!298184)))

(declare-fun bs!1286865 () Bool)

(assert (= bs!1286865 (and d!1758801 d!1758639)))

(assert (=> bs!1286865 (= lambda!298226 lambda!298203)))

(declare-fun bs!1286866 () Bool)

(assert (= bs!1286866 (and d!1758801 d!1758635)))

(assert (=> bs!1286866 (= lambda!298226 lambda!298199)))

(declare-fun bs!1286867 () Bool)

(assert (= bs!1286867 (and d!1758801 d!1758767)))

(assert (=> bs!1286867 (= lambda!298226 lambda!298222)))

(declare-fun bs!1286868 () Bool)

(assert (= bs!1286868 (and d!1758801 d!1758633)))

(assert (=> bs!1286868 (= lambda!298226 lambda!298196)))

(declare-fun lt!2251192 () List!62928)

(assert (=> d!1758801 (forall!14715 lt!2251192 lambda!298226)))

(declare-fun e!3431797 () List!62928)

(assert (=> d!1758801 (= lt!2251192 e!3431797)))

(declare-fun c!972890 () Bool)

(assert (=> d!1758801 (= c!972890 ((_ is Cons!62805) (t!376194 zl!343)))))

(assert (=> d!1758801 (= (unfocusZipperList!971 (t!376194 zl!343)) lt!2251192)))

(declare-fun b!5556860 () Bool)

(assert (=> b!5556860 (= e!3431797 (Cons!62804 (generalisedConcat!1158 (exprs!5427 (h!69253 (t!376194 zl!343)))) (unfocusZipperList!971 (t!376194 (t!376194 zl!343)))))))

(declare-fun b!5556861 () Bool)

(assert (=> b!5556861 (= e!3431797 Nil!62804)))

(assert (= (and d!1758801 c!972890) b!5556860))

(assert (= (and d!1758801 (not c!972890)) b!5556861))

(declare-fun m!6548656 () Bool)

(assert (=> d!1758801 m!6548656))

(declare-fun m!6548658 () Bool)

(assert (=> b!5556860 m!6548658))

(declare-fun m!6548660 () Bool)

(assert (=> b!5556860 m!6548660))

(assert (=> b!5556301 d!1758801))

(assert (=> d!1758627 d!1758691))

(assert (=> d!1758627 d!1758565))

(assert (=> b!5556471 d!1758715))

(assert (=> b!5556471 d!1758681))

(declare-fun bm!414338 () Bool)

(declare-fun call!414344 () (InoxSet Context!9854))

(declare-fun call!414347 () (InoxSet Context!9854))

(assert (=> bm!414338 (= call!414344 call!414347)))

(declare-fun c!972894 () Bool)

(declare-fun bm!414339 () Bool)

(declare-fun call!414345 () List!62928)

(declare-fun call!414346 () (InoxSet Context!9854))

(assert (=> bm!414339 (= call!414346 (derivationStepZipperDown!885 (ite c!972894 (regTwo!31599 (h!69252 (exprs!5427 lt!2251092))) (regOne!31598 (h!69252 (exprs!5427 lt!2251092)))) (ite c!972894 (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (Context!9855 call!414345)) (h!69254 s!2326)))))

(declare-fun b!5556862 () Bool)

(declare-fun e!3431802 () Bool)

(assert (=> b!5556862 (= e!3431802 (nullable!5575 (regOne!31598 (h!69252 (exprs!5427 lt!2251092)))))))

(declare-fun bm!414340 () Bool)

(declare-fun call!414348 () (InoxSet Context!9854))

(assert (=> bm!414340 (= call!414348 call!414344)))

(declare-fun b!5556863 () Bool)

(declare-fun c!972892 () Bool)

(assert (=> b!5556863 (= c!972892 ((_ is Star!15543) (h!69252 (exprs!5427 lt!2251092))))))

(declare-fun e!3431800 () (InoxSet Context!9854))

(declare-fun e!3431798 () (InoxSet Context!9854))

(assert (=> b!5556863 (= e!3431800 e!3431798)))

(declare-fun b!5556865 () Bool)

(declare-fun e!3431799 () (InoxSet Context!9854))

(assert (=> b!5556865 (= e!3431799 ((_ map or) call!414346 call!414344))))

(declare-fun c!972891 () Bool)

(declare-fun bm!414341 () Bool)

(declare-fun c!972893 () Bool)

(assert (=> bm!414341 (= call!414345 ($colon$colon!1611 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092)))) (ite (or c!972891 c!972893) (regTwo!31598 (h!69252 (exprs!5427 lt!2251092))) (h!69252 (exprs!5427 lt!2251092)))))))

(declare-fun b!5556866 () Bool)

(assert (=> b!5556866 (= c!972891 e!3431802)))

(declare-fun res!2361959 () Bool)

(assert (=> b!5556866 (=> (not res!2361959) (not e!3431802))))

(assert (=> b!5556866 (= res!2361959 ((_ is Concat!24388) (h!69252 (exprs!5427 lt!2251092))))))

(declare-fun e!3431801 () (InoxSet Context!9854))

(assert (=> b!5556866 (= e!3431801 e!3431799)))

(declare-fun bm!414342 () Bool)

(declare-fun call!414343 () List!62928)

(assert (=> bm!414342 (= call!414343 call!414345)))

(declare-fun bm!414343 () Bool)

(assert (=> bm!414343 (= call!414347 (derivationStepZipperDown!885 (ite c!972894 (regOne!31599 (h!69252 (exprs!5427 lt!2251092))) (ite c!972891 (regTwo!31598 (h!69252 (exprs!5427 lt!2251092))) (ite c!972893 (regOne!31598 (h!69252 (exprs!5427 lt!2251092))) (reg!15872 (h!69252 (exprs!5427 lt!2251092)))))) (ite (or c!972894 c!972891) (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (Context!9855 call!414343)) (h!69254 s!2326)))))

(declare-fun b!5556867 () Bool)

(assert (=> b!5556867 (= e!3431798 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556868 () Bool)

(assert (=> b!5556868 (= e!3431801 ((_ map or) call!414347 call!414346))))

(declare-fun b!5556869 () Bool)

(assert (=> b!5556869 (= e!3431798 call!414348)))

(declare-fun b!5556870 () Bool)

(assert (=> b!5556870 (= e!3431800 call!414348)))

(declare-fun b!5556864 () Bool)

(declare-fun e!3431803 () (InoxSet Context!9854))

(assert (=> b!5556864 (= e!3431803 (store ((as const (Array Context!9854 Bool)) false) (Context!9855 (t!376193 (exprs!5427 lt!2251092))) true))))

(declare-fun d!1758805 () Bool)

(declare-fun c!972895 () Bool)

(assert (=> d!1758805 (= c!972895 (and ((_ is ElementMatch!15543) (h!69252 (exprs!5427 lt!2251092))) (= (c!972627 (h!69252 (exprs!5427 lt!2251092))) (h!69254 s!2326))))))

(assert (=> d!1758805 (= (derivationStepZipperDown!885 (h!69252 (exprs!5427 lt!2251092)) (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (h!69254 s!2326)) e!3431803)))

(declare-fun b!5556871 () Bool)

(assert (=> b!5556871 (= e!3431803 e!3431801)))

(assert (=> b!5556871 (= c!972894 ((_ is Union!15543) (h!69252 (exprs!5427 lt!2251092))))))

(declare-fun b!5556872 () Bool)

(assert (=> b!5556872 (= e!3431799 e!3431800)))

(assert (=> b!5556872 (= c!972893 ((_ is Concat!24388) (h!69252 (exprs!5427 lt!2251092))))))

(assert (= (and d!1758805 c!972895) b!5556864))

(assert (= (and d!1758805 (not c!972895)) b!5556871))

(assert (= (and b!5556871 c!972894) b!5556868))

(assert (= (and b!5556871 (not c!972894)) b!5556866))

(assert (= (and b!5556866 res!2361959) b!5556862))

(assert (= (and b!5556866 c!972891) b!5556865))

(assert (= (and b!5556866 (not c!972891)) b!5556872))

(assert (= (and b!5556872 c!972893) b!5556870))

(assert (= (and b!5556872 (not c!972893)) b!5556863))

(assert (= (and b!5556863 c!972892) b!5556869))

(assert (= (and b!5556863 (not c!972892)) b!5556867))

(assert (= (or b!5556870 b!5556869) bm!414342))

(assert (= (or b!5556870 b!5556869) bm!414340))

(assert (= (or b!5556865 bm!414342) bm!414341))

(assert (= (or b!5556865 bm!414340) bm!414338))

(assert (= (or b!5556868 b!5556865) bm!414339))

(assert (= (or b!5556868 bm!414338) bm!414343))

(declare-fun m!6548662 () Bool)

(assert (=> bm!414343 m!6548662))

(declare-fun m!6548664 () Bool)

(assert (=> bm!414339 m!6548664))

(declare-fun m!6548666 () Bool)

(assert (=> b!5556864 m!6548666))

(declare-fun m!6548668 () Bool)

(assert (=> bm!414341 m!6548668))

(declare-fun m!6548670 () Bool)

(assert (=> b!5556862 m!6548670))

(assert (=> bm!414222 d!1758805))

(declare-fun bm!414345 () Bool)

(declare-fun call!414352 () Bool)

(declare-fun c!972900 () Bool)

(assert (=> bm!414345 (= call!414352 (validRegex!7279 (ite c!972900 (regOne!31599 lt!2251150) (regOne!31598 lt!2251150))))))

(declare-fun b!5556887 () Bool)

(declare-fun e!3431811 () Bool)

(declare-fun call!414351 () Bool)

(assert (=> b!5556887 (= e!3431811 call!414351)))

(declare-fun bm!414346 () Bool)

(declare-fun call!414350 () Bool)

(assert (=> bm!414346 (= call!414351 call!414350)))

(declare-fun bm!414347 () Bool)

(declare-fun c!972899 () Bool)

(assert (=> bm!414347 (= call!414350 (validRegex!7279 (ite c!972899 (reg!15872 lt!2251150) (ite c!972900 (regTwo!31599 lt!2251150) (regTwo!31598 lt!2251150)))))))

(declare-fun d!1758811 () Bool)

(declare-fun res!2361970 () Bool)

(declare-fun e!3431814 () Bool)

(assert (=> d!1758811 (=> res!2361970 e!3431814)))

(assert (=> d!1758811 (= res!2361970 ((_ is ElementMatch!15543) lt!2251150))))

(assert (=> d!1758811 (= (validRegex!7279 lt!2251150) e!3431814)))

(declare-fun b!5556888 () Bool)

(declare-fun e!3431816 () Bool)

(assert (=> b!5556888 (= e!3431816 call!414350)))

(declare-fun b!5556889 () Bool)

(declare-fun e!3431815 () Bool)

(assert (=> b!5556889 (= e!3431815 call!414351)))

(declare-fun b!5556890 () Bool)

(declare-fun e!3431812 () Bool)

(assert (=> b!5556890 (= e!3431812 e!3431815)))

(declare-fun res!2361968 () Bool)

(assert (=> b!5556890 (=> (not res!2361968) (not e!3431815))))

(assert (=> b!5556890 (= res!2361968 call!414352)))

(declare-fun b!5556891 () Bool)

(declare-fun e!3431817 () Bool)

(assert (=> b!5556891 (= e!3431814 e!3431817)))

(assert (=> b!5556891 (= c!972899 ((_ is Star!15543) lt!2251150))))

(declare-fun b!5556892 () Bool)

(declare-fun e!3431813 () Bool)

(assert (=> b!5556892 (= e!3431817 e!3431813)))

(assert (=> b!5556892 (= c!972900 ((_ is Union!15543) lt!2251150))))

(declare-fun b!5556893 () Bool)

(declare-fun res!2361969 () Bool)

(assert (=> b!5556893 (=> (not res!2361969) (not e!3431811))))

(assert (=> b!5556893 (= res!2361969 call!414352)))

(assert (=> b!5556893 (= e!3431813 e!3431811)))

(declare-fun b!5556894 () Bool)

(assert (=> b!5556894 (= e!3431817 e!3431816)))

(declare-fun res!2361972 () Bool)

(assert (=> b!5556894 (= res!2361972 (not (nullable!5575 (reg!15872 lt!2251150))))))

(assert (=> b!5556894 (=> (not res!2361972) (not e!3431816))))

(declare-fun b!5556895 () Bool)

(declare-fun res!2361971 () Bool)

(assert (=> b!5556895 (=> res!2361971 e!3431812)))

(assert (=> b!5556895 (= res!2361971 (not ((_ is Concat!24388) lt!2251150)))))

(assert (=> b!5556895 (= e!3431813 e!3431812)))

(assert (= (and d!1758811 (not res!2361970)) b!5556891))

(assert (= (and b!5556891 c!972899) b!5556894))

(assert (= (and b!5556891 (not c!972899)) b!5556892))

(assert (= (and b!5556894 res!2361972) b!5556888))

(assert (= (and b!5556892 c!972900) b!5556893))

(assert (= (and b!5556892 (not c!972900)) b!5556895))

(assert (= (and b!5556893 res!2361969) b!5556887))

(assert (= (and b!5556895 (not res!2361971)) b!5556890))

(assert (= (and b!5556890 res!2361968) b!5556889))

(assert (= (or b!5556887 b!5556889) bm!414346))

(assert (= (or b!5556893 b!5556890) bm!414345))

(assert (= (or b!5556888 bm!414346) bm!414347))

(declare-fun m!6548672 () Bool)

(assert (=> bm!414345 m!6548672))

(declare-fun m!6548674 () Bool)

(assert (=> bm!414347 m!6548674))

(declare-fun m!6548676 () Bool)

(assert (=> b!5556894 m!6548676))

(assert (=> d!1758595 d!1758811))

(declare-fun d!1758813 () Bool)

(declare-fun res!2361973 () Bool)

(declare-fun e!3431818 () Bool)

(assert (=> d!1758813 (=> res!2361973 e!3431818)))

(assert (=> d!1758813 (= res!2361973 ((_ is Nil!62804) (unfocusZipperList!971 zl!343)))))

(assert (=> d!1758813 (= (forall!14715 (unfocusZipperList!971 zl!343) lambda!298184) e!3431818)))

(declare-fun b!5556896 () Bool)

(declare-fun e!3431819 () Bool)

(assert (=> b!5556896 (= e!3431818 e!3431819)))

(declare-fun res!2361974 () Bool)

(assert (=> b!5556896 (=> (not res!2361974) (not e!3431819))))

(assert (=> b!5556896 (= res!2361974 (dynLambda!24564 lambda!298184 (h!69252 (unfocusZipperList!971 zl!343))))))

(declare-fun b!5556897 () Bool)

(assert (=> b!5556897 (= e!3431819 (forall!14715 (t!376193 (unfocusZipperList!971 zl!343)) lambda!298184))))

(assert (= (and d!1758813 (not res!2361973)) b!5556896))

(assert (= (and b!5556896 res!2361974) b!5556897))

(declare-fun b_lambda!210999 () Bool)

(assert (=> (not b_lambda!210999) (not b!5556896)))

(declare-fun m!6548684 () Bool)

(assert (=> b!5556896 m!6548684))

(declare-fun m!6548686 () Bool)

(assert (=> b!5556897 m!6548686))

(assert (=> d!1758595 d!1758813))

(assert (=> d!1758563 d!1758691))

(assert (=> bm!414267 d!1758691))

(declare-fun d!1758815 () Bool)

(assert (=> d!1758815 (= ($colon$colon!1611 (exprs!5427 lt!2251092) (ite (or c!972713 c!972715) (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69252 (exprs!5427 (h!69253 zl!343))))) (Cons!62804 (ite (or c!972713 c!972715) (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69252 (exprs!5427 (h!69253 zl!343)))) (exprs!5427 lt!2251092)))))

(assert (=> bm!414242 d!1758815))

(declare-fun d!1758821 () Bool)

(assert (=> d!1758821 (= (nullable!5575 r!7292) (nullableFct!1690 r!7292))))

(declare-fun bs!1286870 () Bool)

(assert (= bs!1286870 d!1758821))

(declare-fun m!6548692 () Bool)

(assert (=> bs!1286870 m!6548692))

(assert (=> b!5556469 d!1758821))

(assert (=> d!1758529 d!1758711))

(declare-fun b!5556903 () Bool)

(declare-fun e!3431824 () Bool)

(declare-fun e!3431823 () Bool)

(assert (=> b!5556903 (= e!3431824 e!3431823)))

(declare-fun res!2361981 () Bool)

(assert (=> b!5556903 (=> (not res!2361981) (not e!3431823))))

(declare-fun lt!2251194 () Bool)

(assert (=> b!5556903 (= res!2361981 (not lt!2251194))))

(declare-fun bm!414349 () Bool)

(declare-fun call!414354 () Bool)

(assert (=> bm!414349 (= call!414354 (isEmpty!34604 Nil!62806))))

(declare-fun b!5556904 () Bool)

(declare-fun e!3431828 () Bool)

(assert (=> b!5556904 (= e!3431828 (not (= (head!11868 Nil!62806) (c!972627 (regOne!31598 r!7292)))))))

(declare-fun d!1758823 () Bool)

(declare-fun e!3431829 () Bool)

(assert (=> d!1758823 e!3431829))

(declare-fun c!972904 () Bool)

(assert (=> d!1758823 (= c!972904 ((_ is EmptyExpr!15543) (regOne!31598 r!7292)))))

(declare-fun e!3431827 () Bool)

(assert (=> d!1758823 (= lt!2251194 e!3431827)))

(declare-fun c!972905 () Bool)

(assert (=> d!1758823 (= c!972905 (isEmpty!34604 Nil!62806))))

(assert (=> d!1758823 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758823 (= (matchR!7728 (regOne!31598 r!7292) Nil!62806) lt!2251194)))

(declare-fun b!5556905 () Bool)

(declare-fun res!2361977 () Bool)

(declare-fun e!3431826 () Bool)

(assert (=> b!5556905 (=> (not res!2361977) (not e!3431826))))

(assert (=> b!5556905 (= res!2361977 (not call!414354))))

(declare-fun b!5556906 () Bool)

(declare-fun e!3431825 () Bool)

(assert (=> b!5556906 (= e!3431829 e!3431825)))

(declare-fun c!972903 () Bool)

(assert (=> b!5556906 (= c!972903 ((_ is EmptyLang!15543) (regOne!31598 r!7292)))))

(declare-fun b!5556907 () Bool)

(assert (=> b!5556907 (= e!3431827 (matchR!7728 (derivativeStep!4398 (regOne!31598 r!7292) (head!11868 Nil!62806)) (tail!10963 Nil!62806)))))

(declare-fun b!5556908 () Bool)

(declare-fun res!2361979 () Bool)

(assert (=> b!5556908 (=> res!2361979 e!3431824)))

(assert (=> b!5556908 (= res!2361979 (not ((_ is ElementMatch!15543) (regOne!31598 r!7292))))))

(assert (=> b!5556908 (= e!3431825 e!3431824)))

(declare-fun b!5556909 () Bool)

(assert (=> b!5556909 (= e!3431825 (not lt!2251194))))

(declare-fun b!5556910 () Bool)

(declare-fun res!2361978 () Bool)

(assert (=> b!5556910 (=> res!2361978 e!3431824)))

(assert (=> b!5556910 (= res!2361978 e!3431826)))

(declare-fun res!2361982 () Bool)

(assert (=> b!5556910 (=> (not res!2361982) (not e!3431826))))

(assert (=> b!5556910 (= res!2361982 lt!2251194)))

(declare-fun b!5556911 () Bool)

(assert (=> b!5556911 (= e!3431829 (= lt!2251194 call!414354))))

(declare-fun b!5556912 () Bool)

(assert (=> b!5556912 (= e!3431823 e!3431828)))

(declare-fun res!2361976 () Bool)

(assert (=> b!5556912 (=> res!2361976 e!3431828)))

(assert (=> b!5556912 (= res!2361976 call!414354)))

(declare-fun b!5556913 () Bool)

(assert (=> b!5556913 (= e!3431826 (= (head!11868 Nil!62806) (c!972627 (regOne!31598 r!7292))))))

(declare-fun b!5556914 () Bool)

(assert (=> b!5556914 (= e!3431827 (nullable!5575 (regOne!31598 r!7292)))))

(declare-fun b!5556915 () Bool)

(declare-fun res!2361980 () Bool)

(assert (=> b!5556915 (=> res!2361980 e!3431828)))

(assert (=> b!5556915 (= res!2361980 (not (isEmpty!34604 (tail!10963 Nil!62806))))))

(declare-fun b!5556916 () Bool)

(declare-fun res!2361983 () Bool)

(assert (=> b!5556916 (=> (not res!2361983) (not e!3431826))))

(assert (=> b!5556916 (= res!2361983 (isEmpty!34604 (tail!10963 Nil!62806)))))

(assert (= (and d!1758823 c!972905) b!5556914))

(assert (= (and d!1758823 (not c!972905)) b!5556907))

(assert (= (and d!1758823 c!972904) b!5556911))

(assert (= (and d!1758823 (not c!972904)) b!5556906))

(assert (= (and b!5556906 c!972903) b!5556909))

(assert (= (and b!5556906 (not c!972903)) b!5556908))

(assert (= (and b!5556908 (not res!2361979)) b!5556910))

(assert (= (and b!5556910 res!2361982) b!5556905))

(assert (= (and b!5556905 res!2361977) b!5556916))

(assert (= (and b!5556916 res!2361983) b!5556913))

(assert (= (and b!5556910 (not res!2361978)) b!5556903))

(assert (= (and b!5556903 res!2361981) b!5556912))

(assert (= (and b!5556912 (not res!2361976)) b!5556915))

(assert (= (and b!5556915 (not res!2361980)) b!5556904))

(assert (= (or b!5556911 b!5556905 b!5556912) bm!414349))

(declare-fun m!6548698 () Bool)

(assert (=> bm!414349 m!6548698))

(assert (=> b!5556914 m!6548452))

(declare-fun m!6548702 () Bool)

(assert (=> b!5556904 m!6548702))

(assert (=> d!1758823 m!6548698))

(assert (=> d!1758823 m!6548026))

(declare-fun m!6548704 () Bool)

(assert (=> b!5556916 m!6548704))

(assert (=> b!5556916 m!6548704))

(declare-fun m!6548706 () Bool)

(assert (=> b!5556916 m!6548706))

(assert (=> b!5556915 m!6548704))

(assert (=> b!5556915 m!6548704))

(assert (=> b!5556915 m!6548706))

(assert (=> b!5556907 m!6548702))

(assert (=> b!5556907 m!6548702))

(declare-fun m!6548708 () Bool)

(assert (=> b!5556907 m!6548708))

(assert (=> b!5556907 m!6548704))

(assert (=> b!5556907 m!6548708))

(assert (=> b!5556907 m!6548704))

(declare-fun m!6548710 () Bool)

(assert (=> b!5556907 m!6548710))

(assert (=> b!5556913 m!6548702))

(assert (=> d!1758529 d!1758823))

(assert (=> d!1758529 d!1758653))

(declare-fun d!1758827 () Bool)

(declare-fun res!2361984 () Bool)

(declare-fun e!3431830 () Bool)

(assert (=> d!1758827 (=> res!2361984 e!3431830)))

(assert (=> d!1758827 (= res!2361984 ((_ is Nil!62804) (exprs!5427 setElem!36981)))))

(assert (=> d!1758827 (= (forall!14715 (exprs!5427 setElem!36981) lambda!298203) e!3431830)))

(declare-fun b!5556917 () Bool)

(declare-fun e!3431831 () Bool)

(assert (=> b!5556917 (= e!3431830 e!3431831)))

(declare-fun res!2361985 () Bool)

(assert (=> b!5556917 (=> (not res!2361985) (not e!3431831))))

(assert (=> b!5556917 (= res!2361985 (dynLambda!24564 lambda!298203 (h!69252 (exprs!5427 setElem!36981))))))

(declare-fun b!5556918 () Bool)

(assert (=> b!5556918 (= e!3431831 (forall!14715 (t!376193 (exprs!5427 setElem!36981)) lambda!298203))))

(assert (= (and d!1758827 (not res!2361984)) b!5556917))

(assert (= (and b!5556917 res!2361985) b!5556918))

(declare-fun b_lambda!211001 () Bool)

(assert (=> (not b_lambda!211001) (not b!5556917)))

(declare-fun m!6548712 () Bool)

(assert (=> b!5556917 m!6548712))

(declare-fun m!6548714 () Bool)

(assert (=> b!5556918 m!6548714))

(assert (=> d!1758639 d!1758827))

(declare-fun d!1758829 () Bool)

(assert (=> d!1758829 true))

(assert (=> d!1758829 true))

(declare-fun res!2361986 () Bool)

(assert (=> d!1758829 (= (choose!42151 lambda!298140) res!2361986)))

(assert (=> d!1758537 d!1758829))

(declare-fun bs!1286871 () Bool)

(declare-fun b!5556921 () Bool)

(assert (= bs!1286871 (and b!5556921 b!5556808)))

(declare-fun lambda!298227 () Int)

(assert (=> bs!1286871 (not (= lambda!298227 lambda!298221))))

(declare-fun bs!1286872 () Bool)

(assert (= bs!1286872 (and b!5556921 d!1758547)))

(assert (=> bs!1286872 (not (= lambda!298227 lambda!298171))))

(declare-fun bs!1286873 () Bool)

(assert (= bs!1286873 (and b!5556921 d!1758731)))

(assert (=> bs!1286873 (not (= lambda!298227 lambda!298216))))

(declare-fun bs!1286874 () Bool)

(assert (= bs!1286874 (and b!5556921 b!5555888)))

(assert (=> bs!1286874 (not (= lambda!298227 lambda!298139))))

(declare-fun bs!1286875 () Bool)

(assert (= bs!1286875 (and b!5556921 b!5556365)))

(assert (=> bs!1286875 (= (and (= (reg!15872 (regTwo!31599 r!7292)) (reg!15872 r!7292)) (= (regTwo!31599 r!7292) r!7292)) (= lambda!298227 lambda!298192))))

(declare-fun bs!1286876 () Bool)

(assert (= bs!1286876 (and b!5556921 d!1758657)))

(assert (=> bs!1286876 (not (= lambda!298227 lambda!298206))))

(assert (=> bs!1286872 (not (= lambda!298227 lambda!298172))))

(assert (=> bs!1286874 (not (= lambda!298227 lambda!298140))))

(declare-fun bs!1286877 () Bool)

(assert (= bs!1286877 (and b!5556921 b!5556804)))

(assert (=> bs!1286877 (= (and (= (reg!15872 (regTwo!31599 r!7292)) (reg!15872 (regOne!31599 r!7292))) (= (regTwo!31599 r!7292) (regOne!31599 r!7292))) (= lambda!298227 lambda!298219))))

(declare-fun bs!1286878 () Bool)

(assert (= bs!1286878 (and b!5556921 b!5556369)))

(assert (=> bs!1286878 (not (= lambda!298227 lambda!298193))))

(assert (=> bs!1286873 (not (= lambda!298227 lambda!298217))))

(declare-fun bs!1286880 () Bool)

(assert (= bs!1286880 (and b!5556921 d!1758541)))

(assert (=> bs!1286880 (not (= lambda!298227 lambda!298158))))

(assert (=> b!5556921 true))

(assert (=> b!5556921 true))

(declare-fun bs!1286881 () Bool)

(declare-fun b!5556925 () Bool)

(assert (= bs!1286881 (and b!5556925 b!5556808)))

(declare-fun lambda!298228 () Int)

(assert (=> bs!1286881 (= (and (= (regOne!31598 (regTwo!31599 r!7292)) (regOne!31598 (regOne!31599 r!7292))) (= (regTwo!31598 (regTwo!31599 r!7292)) (regTwo!31598 (regOne!31599 r!7292)))) (= lambda!298228 lambda!298221))))

(declare-fun bs!1286882 () Bool)

(assert (= bs!1286882 (and b!5556925 d!1758547)))

(assert (=> bs!1286882 (not (= lambda!298228 lambda!298171))))

(declare-fun bs!1286883 () Bool)

(assert (= bs!1286883 (and b!5556925 d!1758731)))

(assert (=> bs!1286883 (not (= lambda!298228 lambda!298216))))

(declare-fun bs!1286884 () Bool)

(assert (= bs!1286884 (and b!5556925 b!5555888)))

(assert (=> bs!1286884 (not (= lambda!298228 lambda!298139))))

(declare-fun bs!1286885 () Bool)

(assert (= bs!1286885 (and b!5556925 b!5556365)))

(assert (=> bs!1286885 (not (= lambda!298228 lambda!298192))))

(declare-fun bs!1286886 () Bool)

(assert (= bs!1286886 (and b!5556925 d!1758657)))

(assert (=> bs!1286886 (not (= lambda!298228 lambda!298206))))

(assert (=> bs!1286882 (= (and (= (regOne!31598 (regTwo!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regTwo!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298228 lambda!298172))))

(assert (=> bs!1286884 (= (and (= (regOne!31598 (regTwo!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regTwo!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298228 lambda!298140))))

(declare-fun bs!1286887 () Bool)

(assert (= bs!1286887 (and b!5556925 b!5556804)))

(assert (=> bs!1286887 (not (= lambda!298228 lambda!298219))))

(declare-fun bs!1286888 () Bool)

(assert (= bs!1286888 (and b!5556925 b!5556921)))

(assert (=> bs!1286888 (not (= lambda!298228 lambda!298227))))

(declare-fun bs!1286889 () Bool)

(assert (= bs!1286889 (and b!5556925 b!5556369)))

(assert (=> bs!1286889 (= (and (= (regOne!31598 (regTwo!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regTwo!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298228 lambda!298193))))

(assert (=> bs!1286883 (= (and (= (regOne!31598 (regTwo!31599 r!7292)) (regOne!31598 r!7292)) (= (regTwo!31598 (regTwo!31599 r!7292)) (regTwo!31598 r!7292))) (= lambda!298228 lambda!298217))))

(declare-fun bs!1286890 () Bool)

(assert (= bs!1286890 (and b!5556925 d!1758541)))

(assert (=> bs!1286890 (not (= lambda!298228 lambda!298158))))

(assert (=> b!5556925 true))

(assert (=> b!5556925 true))

(declare-fun call!414355 () Bool)

(declare-fun bm!414350 () Bool)

(declare-fun c!972907 () Bool)

(assert (=> bm!414350 (= call!414355 (Exists!2643 (ite c!972907 lambda!298227 lambda!298228)))))

(declare-fun b!5556919 () Bool)

(declare-fun e!3431836 () Bool)

(declare-fun e!3431833 () Bool)

(assert (=> b!5556919 (= e!3431836 e!3431833)))

(declare-fun res!2361989 () Bool)

(assert (=> b!5556919 (= res!2361989 (matchRSpec!2646 (regOne!31599 (regTwo!31599 r!7292)) s!2326))))

(assert (=> b!5556919 (=> res!2361989 e!3431833)))

(declare-fun b!5556920 () Bool)

(declare-fun e!3431832 () Bool)

(assert (=> b!5556920 (= e!3431832 (= s!2326 (Cons!62806 (c!972627 (regTwo!31599 r!7292)) Nil!62806)))))

(declare-fun e!3431834 () Bool)

(assert (=> b!5556921 (= e!3431834 call!414355)))

(declare-fun b!5556922 () Bool)

(declare-fun c!972909 () Bool)

(assert (=> b!5556922 (= c!972909 ((_ is Union!15543) (regTwo!31599 r!7292)))))

(assert (=> b!5556922 (= e!3431832 e!3431836)))

(declare-fun b!5556923 () Bool)

(assert (=> b!5556923 (= e!3431833 (matchRSpec!2646 (regTwo!31599 (regTwo!31599 r!7292)) s!2326))))

(declare-fun d!1758831 () Bool)

(declare-fun c!972908 () Bool)

(assert (=> d!1758831 (= c!972908 ((_ is EmptyExpr!15543) (regTwo!31599 r!7292)))))

(declare-fun e!3431837 () Bool)

(assert (=> d!1758831 (= (matchRSpec!2646 (regTwo!31599 r!7292) s!2326) e!3431837)))

(declare-fun b!5556924 () Bool)

(declare-fun e!3431838 () Bool)

(assert (=> b!5556924 (= e!3431837 e!3431838)))

(declare-fun res!2361988 () Bool)

(assert (=> b!5556924 (= res!2361988 (not ((_ is EmptyLang!15543) (regTwo!31599 r!7292))))))

(assert (=> b!5556924 (=> (not res!2361988) (not e!3431838))))

(declare-fun e!3431835 () Bool)

(assert (=> b!5556925 (= e!3431835 call!414355)))

(declare-fun b!5556926 () Bool)

(assert (=> b!5556926 (= e!3431836 e!3431835)))

(assert (=> b!5556926 (= c!972907 ((_ is Star!15543) (regTwo!31599 r!7292)))))

(declare-fun bm!414351 () Bool)

(declare-fun call!414356 () Bool)

(assert (=> bm!414351 (= call!414356 (isEmpty!34604 s!2326))))

(declare-fun b!5556927 () Bool)

(assert (=> b!5556927 (= e!3431837 call!414356)))

(declare-fun b!5556928 () Bool)

(declare-fun c!972906 () Bool)

(assert (=> b!5556928 (= c!972906 ((_ is ElementMatch!15543) (regTwo!31599 r!7292)))))

(assert (=> b!5556928 (= e!3431838 e!3431832)))

(declare-fun b!5556929 () Bool)

(declare-fun res!2361987 () Bool)

(assert (=> b!5556929 (=> res!2361987 e!3431834)))

(assert (=> b!5556929 (= res!2361987 call!414356)))

(assert (=> b!5556929 (= e!3431835 e!3431834)))

(assert (= (and d!1758831 c!972908) b!5556927))

(assert (= (and d!1758831 (not c!972908)) b!5556924))

(assert (= (and b!5556924 res!2361988) b!5556928))

(assert (= (and b!5556928 c!972906) b!5556920))

(assert (= (and b!5556928 (not c!972906)) b!5556922))

(assert (= (and b!5556922 c!972909) b!5556919))

(assert (= (and b!5556922 (not c!972909)) b!5556926))

(assert (= (and b!5556919 (not res!2361989)) b!5556923))

(assert (= (and b!5556926 c!972907) b!5556929))

(assert (= (and b!5556926 (not c!972907)) b!5556925))

(assert (= (and b!5556929 (not res!2361987)) b!5556921))

(assert (= (or b!5556921 b!5556925) bm!414350))

(assert (= (or b!5556927 b!5556929) bm!414351))

(declare-fun m!6548722 () Bool)

(assert (=> bm!414350 m!6548722))

(declare-fun m!6548726 () Bool)

(assert (=> b!5556919 m!6548726))

(declare-fun m!6548728 () Bool)

(assert (=> b!5556923 m!6548728))

(assert (=> bm!414351 m!6548100))

(assert (=> b!5556367 d!1758831))

(declare-fun bm!414353 () Bool)

(declare-fun call!414359 () (InoxSet Context!9854))

(declare-fun call!414362 () (InoxSet Context!9854))

(assert (=> bm!414353 (= call!414359 call!414362)))

(declare-fun call!414360 () List!62928)

(declare-fun c!972916 () Bool)

(declare-fun bm!414354 () Bool)

(declare-fun call!414361 () (InoxSet Context!9854))

(assert (=> bm!414354 (= call!414361 (derivationStepZipperDown!885 (ite c!972916 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))) (ite c!972916 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (Context!9855 call!414360)) (h!69254 s!2326)))))

(declare-fun b!5556944 () Bool)

(declare-fun e!3431850 () Bool)

(assert (=> b!5556944 (= e!3431850 (nullable!5575 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun bm!414355 () Bool)

(declare-fun call!414363 () (InoxSet Context!9854))

(assert (=> bm!414355 (= call!414363 call!414359)))

(declare-fun b!5556945 () Bool)

(declare-fun c!972914 () Bool)

(assert (=> b!5556945 (= c!972914 ((_ is Star!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun e!3431848 () (InoxSet Context!9854))

(declare-fun e!3431846 () (InoxSet Context!9854))

(assert (=> b!5556945 (= e!3431848 e!3431846)))

(declare-fun b!5556947 () Bool)

(declare-fun e!3431847 () (InoxSet Context!9854))

(assert (=> b!5556947 (= e!3431847 ((_ map or) call!414361 call!414359))))

(declare-fun c!972915 () Bool)

(declare-fun c!972913 () Bool)

(declare-fun bm!414356 () Bool)

(assert (=> bm!414356 (= call!414360 ($colon$colon!1611 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343))))) (ite (or c!972913 c!972915) (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69252 (exprs!5427 (h!69253 zl!343))))))))

(declare-fun b!5556948 () Bool)

(assert (=> b!5556948 (= c!972913 e!3431850)))

(declare-fun res!2362001 () Bool)

(assert (=> b!5556948 (=> (not res!2362001) (not e!3431850))))

(assert (=> b!5556948 (= res!2362001 ((_ is Concat!24388) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun e!3431849 () (InoxSet Context!9854))

(assert (=> b!5556948 (= e!3431849 e!3431847)))

(declare-fun bm!414357 () Bool)

(declare-fun call!414358 () List!62928)

(assert (=> bm!414357 (= call!414358 call!414360)))

(declare-fun bm!414358 () Bool)

(assert (=> bm!414358 (= call!414362 (derivationStepZipperDown!885 (ite c!972916 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972913 (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (ite c!972915 (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))) (reg!15872 (h!69252 (exprs!5427 (h!69253 zl!343))))))) (ite (or c!972916 c!972913) (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (Context!9855 call!414358)) (h!69254 s!2326)))))

(declare-fun b!5556949 () Bool)

(assert (=> b!5556949 (= e!3431846 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556950 () Bool)

(assert (=> b!5556950 (= e!3431849 ((_ map or) call!414362 call!414361))))

(declare-fun b!5556951 () Bool)

(assert (=> b!5556951 (= e!3431846 call!414363)))

(declare-fun b!5556952 () Bool)

(assert (=> b!5556952 (= e!3431848 call!414363)))

(declare-fun b!5556946 () Bool)

(declare-fun e!3431851 () (InoxSet Context!9854))

(assert (=> b!5556946 (= e!3431851 (store ((as const (Array Context!9854 Bool)) false) (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) true))))

(declare-fun d!1758841 () Bool)

(declare-fun c!972917 () Bool)

(assert (=> d!1758841 (= c!972917 (and ((_ is ElementMatch!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))) (= (c!972627 (h!69252 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326))))))

(assert (=> d!1758841 (= (derivationStepZipperDown!885 (h!69252 (exprs!5427 (h!69253 zl!343))) (Context!9855 (t!376193 (exprs!5427 (h!69253 zl!343)))) (h!69254 s!2326)) e!3431851)))

(declare-fun b!5556953 () Bool)

(assert (=> b!5556953 (= e!3431851 e!3431849)))

(assert (=> b!5556953 (= c!972916 ((_ is Union!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5556954 () Bool)

(assert (=> b!5556954 (= e!3431847 e!3431848)))

(assert (=> b!5556954 (= c!972915 ((_ is Concat!24388) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(assert (= (and d!1758841 c!972917) b!5556946))

(assert (= (and d!1758841 (not c!972917)) b!5556953))

(assert (= (and b!5556953 c!972916) b!5556950))

(assert (= (and b!5556953 (not c!972916)) b!5556948))

(assert (= (and b!5556948 res!2362001) b!5556944))

(assert (= (and b!5556948 c!972913) b!5556947))

(assert (= (and b!5556948 (not c!972913)) b!5556954))

(assert (= (and b!5556954 c!972915) b!5556952))

(assert (= (and b!5556954 (not c!972915)) b!5556945))

(assert (= (and b!5556945 c!972914) b!5556951))

(assert (= (and b!5556945 (not c!972914)) b!5556949))

(assert (= (or b!5556952 b!5556951) bm!414357))

(assert (= (or b!5556952 b!5556951) bm!414355))

(assert (= (or b!5556947 bm!414357) bm!414356))

(assert (= (or b!5556947 bm!414355) bm!414353))

(assert (= (or b!5556950 b!5556947) bm!414354))

(assert (= (or b!5556950 bm!414353) bm!414358))

(declare-fun m!6548736 () Bool)

(assert (=> bm!414358 m!6548736))

(declare-fun m!6548738 () Bool)

(assert (=> bm!414354 m!6548738))

(declare-fun m!6548740 () Bool)

(assert (=> b!5556946 m!6548740))

(declare-fun m!6548742 () Bool)

(assert (=> bm!414356 m!6548742))

(assert (=> b!5556944 m!6548160))

(assert (=> bm!414246 d!1758841))

(declare-fun bm!414359 () Bool)

(declare-fun call!414365 () (InoxSet Context!9854))

(declare-fun call!414368 () (InoxSet Context!9854))

(assert (=> bm!414359 (= call!414365 call!414368)))

(declare-fun bm!414360 () Bool)

(declare-fun call!414367 () (InoxSet Context!9854))

(declare-fun c!972921 () Bool)

(declare-fun call!414366 () List!62928)

(assert (=> bm!414360 (= call!414367 (derivationStepZipperDown!885 (ite c!972921 (regTwo!31599 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (regOne!31598 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))) (ite c!972921 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (Context!9855 call!414366)) (h!69254 s!2326)))))

(declare-fun b!5556955 () Bool)

(declare-fun e!3431856 () Bool)

(assert (=> b!5556955 (= e!3431856 (nullable!5575 (regOne!31598 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))))

(declare-fun bm!414361 () Bool)

(declare-fun call!414369 () (InoxSet Context!9854))

(assert (=> bm!414361 (= call!414369 call!414365)))

(declare-fun b!5556956 () Bool)

(declare-fun c!972919 () Bool)

(assert (=> b!5556956 (= c!972919 ((_ is Star!15543) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun e!3431854 () (InoxSet Context!9854))

(declare-fun e!3431852 () (InoxSet Context!9854))

(assert (=> b!5556956 (= e!3431854 e!3431852)))

(declare-fun b!5556958 () Bool)

(declare-fun e!3431853 () (InoxSet Context!9854))

(assert (=> b!5556958 (= e!3431853 ((_ map or) call!414367 call!414365))))

(declare-fun c!972920 () Bool)

(declare-fun bm!414362 () Bool)

(declare-fun c!972918 () Bool)

(assert (=> bm!414362 (= call!414366 ($colon$colon!1611 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))) (ite (or c!972918 c!972920) (regTwo!31598 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))))

(declare-fun b!5556959 () Bool)

(assert (=> b!5556959 (= c!972918 e!3431856)))

(declare-fun res!2362002 () Bool)

(assert (=> b!5556959 (=> (not res!2362002) (not e!3431856))))

(assert (=> b!5556959 (= res!2362002 ((_ is Concat!24388) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun e!3431855 () (InoxSet Context!9854))

(assert (=> b!5556959 (= e!3431855 e!3431853)))

(declare-fun bm!414363 () Bool)

(declare-fun call!414364 () List!62928)

(assert (=> bm!414363 (= call!414364 call!414366)))

(declare-fun bm!414364 () Bool)

(assert (=> bm!414364 (= call!414368 (derivationStepZipperDown!885 (ite c!972921 (regOne!31599 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (ite c!972918 (regTwo!31598 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (ite c!972920 (regOne!31598 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (reg!15872 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))))))) (ite (or c!972921 c!972918) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (Context!9855 call!414364)) (h!69254 s!2326)))))

(declare-fun b!5556960 () Bool)

(assert (=> b!5556960 (= e!3431852 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556961 () Bool)

(assert (=> b!5556961 (= e!3431855 ((_ map or) call!414368 call!414367))))

(declare-fun b!5556962 () Bool)

(assert (=> b!5556962 (= e!3431852 call!414369)))

(declare-fun b!5556963 () Bool)

(assert (=> b!5556963 (= e!3431854 call!414369)))

(declare-fun b!5556957 () Bool)

(declare-fun e!3431857 () (InoxSet Context!9854))

(assert (=> b!5556957 (= e!3431857 (store ((as const (Array Context!9854 Bool)) false) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) true))))

(declare-fun d!1758847 () Bool)

(declare-fun c!972922 () Bool)

(assert (=> d!1758847 (= c!972922 (and ((_ is ElementMatch!15543) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (= (c!972627 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326))))))

(assert (=> d!1758847 (= (derivationStepZipperDown!885 (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343))))))) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))) (h!69254 s!2326)) e!3431857)))

(declare-fun b!5556964 () Bool)

(assert (=> b!5556964 (= e!3431857 e!3431855)))

(assert (=> b!5556964 (= c!972921 ((_ is Union!15543) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(declare-fun b!5556965 () Bool)

(assert (=> b!5556965 (= e!3431853 e!3431854)))

(assert (=> b!5556965 (= c!972920 ((_ is Concat!24388) (h!69252 (exprs!5427 (Context!9855 (Cons!62804 (h!69252 (exprs!5427 (h!69253 zl!343))) (t!376193 (exprs!5427 (h!69253 zl!343)))))))))))

(assert (= (and d!1758847 c!972922) b!5556957))

(assert (= (and d!1758847 (not c!972922)) b!5556964))

(assert (= (and b!5556964 c!972921) b!5556961))

(assert (= (and b!5556964 (not c!972921)) b!5556959))

(assert (= (and b!5556959 res!2362002) b!5556955))

(assert (= (and b!5556959 c!972918) b!5556958))

(assert (= (and b!5556959 (not c!972918)) b!5556965))

(assert (= (and b!5556965 c!972920) b!5556963))

(assert (= (and b!5556965 (not c!972920)) b!5556956))

(assert (= (and b!5556956 c!972919) b!5556962))

(assert (= (and b!5556956 (not c!972919)) b!5556960))

(assert (= (or b!5556963 b!5556962) bm!414363))

(assert (= (or b!5556963 b!5556962) bm!414361))

(assert (= (or b!5556958 bm!414363) bm!414362))

(assert (= (or b!5556958 bm!414361) bm!414359))

(assert (= (or b!5556961 b!5556958) bm!414360))

(assert (= (or b!5556961 bm!414359) bm!414364))

(declare-fun m!6548746 () Bool)

(assert (=> bm!414364 m!6548746))

(declare-fun m!6548748 () Bool)

(assert (=> bm!414360 m!6548748))

(declare-fun m!6548750 () Bool)

(assert (=> b!5556957 m!6548750))

(declare-fun m!6548752 () Bool)

(assert (=> bm!414362 m!6548752))

(declare-fun m!6548754 () Bool)

(assert (=> b!5556955 m!6548754))

(assert (=> bm!414245 d!1758847))

(declare-fun b!5556966 () Bool)

(declare-fun e!3431859 () (InoxSet Context!9854))

(declare-fun e!3431860 () (InoxSet Context!9854))

(assert (=> b!5556966 (= e!3431859 e!3431860)))

(declare-fun c!972923 () Bool)

(assert (=> b!5556966 (= c!972923 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092))))))))

(declare-fun call!414370 () (InoxSet Context!9854))

(declare-fun b!5556967 () Bool)

(assert (=> b!5556967 (= e!3431859 ((_ map or) call!414370 (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092)))))) (h!69254 s!2326))))))

(declare-fun d!1758851 () Bool)

(declare-fun c!972924 () Bool)

(declare-fun e!3431858 () Bool)

(assert (=> d!1758851 (= c!972924 e!3431858)))

(declare-fun res!2362003 () Bool)

(assert (=> d!1758851 (=> (not res!2362003) (not e!3431858))))

(assert (=> d!1758851 (= res!2362003 ((_ is Cons!62804) (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092))))))))

(assert (=> d!1758851 (= (derivationStepZipperUp!811 (Context!9855 (t!376193 (exprs!5427 lt!2251092))) (h!69254 s!2326)) e!3431859)))

(declare-fun b!5556968 () Bool)

(assert (=> b!5556968 (= e!3431860 ((as const (Array Context!9854 Bool)) false))))

(declare-fun b!5556969 () Bool)

(assert (=> b!5556969 (= e!3431860 call!414370)))

(declare-fun b!5556970 () Bool)

(assert (=> b!5556970 (= e!3431858 (nullable!5575 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092)))))))))

(declare-fun bm!414365 () Bool)

(assert (=> bm!414365 (= call!414370 (derivationStepZipperDown!885 (h!69252 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092))))) (Context!9855 (t!376193 (exprs!5427 (Context!9855 (t!376193 (exprs!5427 lt!2251092)))))) (h!69254 s!2326)))))

(assert (= (and d!1758851 res!2362003) b!5556970))

(assert (= (and d!1758851 c!972924) b!5556967))

(assert (= (and d!1758851 (not c!972924)) b!5556966))

(assert (= (and b!5556966 c!972923) b!5556969))

(assert (= (and b!5556966 (not c!972923)) b!5556968))

(assert (= (or b!5556967 b!5556969) bm!414365))

(declare-fun m!6548756 () Bool)

(assert (=> b!5556967 m!6548756))

(declare-fun m!6548758 () Bool)

(assert (=> b!5556970 m!6548758))

(declare-fun m!6548760 () Bool)

(assert (=> bm!414365 m!6548760))

(assert (=> b!5556132 d!1758851))

(declare-fun bm!414370 () Bool)

(declare-fun call!414375 () Bool)

(declare-fun c!972927 () Bool)

(assert (=> bm!414370 (= call!414375 (nullable!5575 (ite c!972927 (regTwo!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regTwo!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun d!1758853 () Bool)

(declare-fun res!2362028 () Bool)

(declare-fun e!3431890 () Bool)

(assert (=> d!1758853 (=> res!2362028 e!3431890)))

(assert (=> d!1758853 (= res!2362028 ((_ is EmptyExpr!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(assert (=> d!1758853 (= (nullableFct!1690 (h!69252 (exprs!5427 (h!69253 zl!343)))) e!3431890)))

(declare-fun b!5556997 () Bool)

(declare-fun e!3431888 () Bool)

(declare-fun e!3431886 () Bool)

(assert (=> b!5556997 (= e!3431888 e!3431886)))

(declare-fun res!2362026 () Bool)

(declare-fun call!414376 () Bool)

(assert (=> b!5556997 (= res!2362026 call!414376)))

(assert (=> b!5556997 (=> res!2362026 e!3431886)))

(declare-fun b!5556998 () Bool)

(declare-fun e!3431885 () Bool)

(assert (=> b!5556998 (= e!3431885 e!3431888)))

(assert (=> b!5556998 (= c!972927 ((_ is Union!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun bm!414371 () Bool)

(assert (=> bm!414371 (= call!414376 (nullable!5575 (ite c!972927 (regOne!31599 (h!69252 (exprs!5427 (h!69253 zl!343)))) (regOne!31598 (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(declare-fun b!5556999 () Bool)

(declare-fun e!3431889 () Bool)

(assert (=> b!5556999 (= e!3431889 call!414375)))

(declare-fun b!5557000 () Bool)

(declare-fun e!3431887 () Bool)

(assert (=> b!5557000 (= e!3431887 e!3431885)))

(declare-fun res!2362025 () Bool)

(assert (=> b!5557000 (=> res!2362025 e!3431885)))

(assert (=> b!5557000 (= res!2362025 ((_ is Star!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun b!5557001 () Bool)

(assert (=> b!5557001 (= e!3431888 e!3431889)))

(declare-fun res!2362024 () Bool)

(assert (=> b!5557001 (= res!2362024 call!414376)))

(assert (=> b!5557001 (=> (not res!2362024) (not e!3431889))))

(declare-fun b!5557002 () Bool)

(assert (=> b!5557002 (= e!3431886 call!414375)))

(declare-fun b!5557003 () Bool)

(assert (=> b!5557003 (= e!3431890 e!3431887)))

(declare-fun res!2362027 () Bool)

(assert (=> b!5557003 (=> (not res!2362027) (not e!3431887))))

(assert (=> b!5557003 (= res!2362027 (and (not ((_ is EmptyLang!15543) (h!69252 (exprs!5427 (h!69253 zl!343))))) (not ((_ is ElementMatch!15543) (h!69252 (exprs!5427 (h!69253 zl!343)))))))))

(assert (= (and d!1758853 (not res!2362028)) b!5557003))

(assert (= (and b!5557003 res!2362027) b!5557000))

(assert (= (and b!5557000 (not res!2362025)) b!5556998))

(assert (= (and b!5556998 c!972927) b!5556997))

(assert (= (and b!5556998 (not c!972927)) b!5557001))

(assert (= (and b!5556997 (not res!2362026)) b!5557002))

(assert (= (and b!5557001 res!2362024) b!5556999))

(assert (= (or b!5557002 b!5556999) bm!414370))

(assert (= (or b!5556997 b!5557001) bm!414371))

(declare-fun m!6548766 () Bool)

(assert (=> bm!414370 m!6548766))

(declare-fun m!6548768 () Bool)

(assert (=> bm!414371 m!6548768))

(assert (=> d!1758581 d!1758853))

(declare-fun bs!1286892 () Bool)

(declare-fun d!1758857 () Bool)

(assert (= bs!1286892 (and d!1758857 d!1758661)))

(declare-fun lambda!298229 () Int)

(assert (=> bs!1286892 (= lambda!298229 lambda!298207)))

(declare-fun bs!1286893 () Bool)

(assert (= bs!1286893 (and d!1758857 d!1758605)))

(assert (=> bs!1286893 (= lambda!298229 lambda!298187)))

(declare-fun bs!1286894 () Bool)

(assert (= bs!1286894 (and d!1758857 d!1758733)))

(assert (=> bs!1286894 (= lambda!298229 lambda!298218)))

(declare-fun bs!1286895 () Bool)

(assert (= bs!1286895 (and d!1758857 d!1758801)))

(assert (=> bs!1286895 (= lambda!298229 lambda!298226)))

(declare-fun bs!1286896 () Bool)

(assert (= bs!1286896 (and d!1758857 d!1758595)))

(assert (=> bs!1286896 (= lambda!298229 lambda!298184)))

(declare-fun bs!1286897 () Bool)

(assert (= bs!1286897 (and d!1758857 d!1758639)))

(assert (=> bs!1286897 (= lambda!298229 lambda!298203)))

(declare-fun bs!1286898 () Bool)

(assert (= bs!1286898 (and d!1758857 d!1758635)))

(assert (=> bs!1286898 (= lambda!298229 lambda!298199)))

(declare-fun bs!1286899 () Bool)

(assert (= bs!1286899 (and d!1758857 d!1758767)))

(assert (=> bs!1286899 (= lambda!298229 lambda!298222)))

(declare-fun bs!1286900 () Bool)

(assert (= bs!1286900 (and d!1758857 d!1758633)))

(assert (=> bs!1286900 (= lambda!298229 lambda!298196)))

(assert (=> d!1758857 (= (inv!82104 (h!69253 (t!376194 zl!343))) (forall!14715 (exprs!5427 (h!69253 (t!376194 zl!343))) lambda!298229))))

(declare-fun bs!1286901 () Bool)

(assert (= bs!1286901 d!1758857))

(declare-fun m!6548770 () Bool)

(assert (=> bs!1286901 m!6548770))

(assert (=> b!5556560 d!1758857))

(declare-fun b!5557007 () Bool)

(declare-fun e!3431895 () Bool)

(declare-fun e!3431894 () Bool)

(assert (=> b!5557007 (= e!3431895 e!3431894)))

(declare-fun res!2362036 () Bool)

(assert (=> b!5557007 (=> (not res!2362036) (not e!3431894))))

(declare-fun lt!2251196 () Bool)

(assert (=> b!5557007 (= res!2362036 (not lt!2251196))))

(declare-fun bm!414372 () Bool)

(declare-fun call!414377 () Bool)

(assert (=> bm!414372 (= call!414377 (isEmpty!34604 (_1!35943 (get!21619 lt!2251114))))))

(declare-fun b!5557008 () Bool)

(declare-fun e!3431899 () Bool)

(assert (=> b!5557008 (= e!3431899 (not (= (head!11868 (_1!35943 (get!21619 lt!2251114))) (c!972627 (regOne!31598 r!7292)))))))

(declare-fun d!1758859 () Bool)

(declare-fun e!3431900 () Bool)

(assert (=> d!1758859 e!3431900))

(declare-fun c!972929 () Bool)

(assert (=> d!1758859 (= c!972929 ((_ is EmptyExpr!15543) (regOne!31598 r!7292)))))

(declare-fun e!3431898 () Bool)

(assert (=> d!1758859 (= lt!2251196 e!3431898)))

(declare-fun c!972930 () Bool)

(assert (=> d!1758859 (= c!972930 (isEmpty!34604 (_1!35943 (get!21619 lt!2251114))))))

(assert (=> d!1758859 (validRegex!7279 (regOne!31598 r!7292))))

(assert (=> d!1758859 (= (matchR!7728 (regOne!31598 r!7292) (_1!35943 (get!21619 lt!2251114))) lt!2251196)))

(declare-fun b!5557009 () Bool)

(declare-fun res!2362032 () Bool)

(declare-fun e!3431897 () Bool)

(assert (=> b!5557009 (=> (not res!2362032) (not e!3431897))))

(assert (=> b!5557009 (= res!2362032 (not call!414377))))

(declare-fun b!5557010 () Bool)

(declare-fun e!3431896 () Bool)

(assert (=> b!5557010 (= e!3431900 e!3431896)))

(declare-fun c!972928 () Bool)

(assert (=> b!5557010 (= c!972928 ((_ is EmptyLang!15543) (regOne!31598 r!7292)))))

(declare-fun b!5557011 () Bool)

(assert (=> b!5557011 (= e!3431898 (matchR!7728 (derivativeStep!4398 (regOne!31598 r!7292) (head!11868 (_1!35943 (get!21619 lt!2251114)))) (tail!10963 (_1!35943 (get!21619 lt!2251114)))))))

(declare-fun b!5557012 () Bool)

(declare-fun res!2362034 () Bool)

(assert (=> b!5557012 (=> res!2362034 e!3431895)))

(assert (=> b!5557012 (= res!2362034 (not ((_ is ElementMatch!15543) (regOne!31598 r!7292))))))

(assert (=> b!5557012 (= e!3431896 e!3431895)))

(declare-fun b!5557013 () Bool)

(assert (=> b!5557013 (= e!3431896 (not lt!2251196))))

(declare-fun b!5557014 () Bool)

(declare-fun res!2362033 () Bool)

(assert (=> b!5557014 (=> res!2362033 e!3431895)))

(assert (=> b!5557014 (= res!2362033 e!3431897)))

(declare-fun res!2362037 () Bool)

(assert (=> b!5557014 (=> (not res!2362037) (not e!3431897))))

(assert (=> b!5557014 (= res!2362037 lt!2251196)))

(declare-fun b!5557015 () Bool)

(assert (=> b!5557015 (= e!3431900 (= lt!2251196 call!414377))))

(declare-fun b!5557016 () Bool)

(assert (=> b!5557016 (= e!3431894 e!3431899)))

(declare-fun res!2362031 () Bool)

(assert (=> b!5557016 (=> res!2362031 e!3431899)))

(assert (=> b!5557016 (= res!2362031 call!414377)))

(declare-fun b!5557017 () Bool)

(assert (=> b!5557017 (= e!3431897 (= (head!11868 (_1!35943 (get!21619 lt!2251114))) (c!972627 (regOne!31598 r!7292))))))

(declare-fun b!5557018 () Bool)

(assert (=> b!5557018 (= e!3431898 (nullable!5575 (regOne!31598 r!7292)))))

(declare-fun b!5557019 () Bool)

(declare-fun res!2362035 () Bool)

(assert (=> b!5557019 (=> res!2362035 e!3431899)))

(assert (=> b!5557019 (= res!2362035 (not (isEmpty!34604 (tail!10963 (_1!35943 (get!21619 lt!2251114))))))))

(declare-fun b!5557020 () Bool)

(declare-fun res!2362038 () Bool)

(assert (=> b!5557020 (=> (not res!2362038) (not e!3431897))))

(assert (=> b!5557020 (= res!2362038 (isEmpty!34604 (tail!10963 (_1!35943 (get!21619 lt!2251114)))))))

(assert (= (and d!1758859 c!972930) b!5557018))

(assert (= (and d!1758859 (not c!972930)) b!5557011))

(assert (= (and d!1758859 c!972929) b!5557015))

(assert (= (and d!1758859 (not c!972929)) b!5557010))

(assert (= (and b!5557010 c!972928) b!5557013))

(assert (= (and b!5557010 (not c!972928)) b!5557012))

(assert (= (and b!5557012 (not res!2362034)) b!5557014))

(assert (= (and b!5557014 res!2362037) b!5557009))

(assert (= (and b!5557009 res!2362032) b!5557020))

(assert (= (and b!5557020 res!2362038) b!5557017))

(assert (= (and b!5557014 (not res!2362033)) b!5557007))

(assert (= (and b!5557007 res!2362036) b!5557016))

(assert (= (and b!5557016 (not res!2362031)) b!5557019))

(assert (= (and b!5557019 (not res!2362035)) b!5557008))

(assert (= (or b!5557015 b!5557009 b!5557016) bm!414372))

(declare-fun m!6548782 () Bool)

(assert (=> bm!414372 m!6548782))

(assert (=> b!5557018 m!6548452))

(declare-fun m!6548784 () Bool)

(assert (=> b!5557008 m!6548784))

(assert (=> d!1758859 m!6548782))

(assert (=> d!1758859 m!6548026))

(declare-fun m!6548786 () Bool)

(assert (=> b!5557020 m!6548786))

(assert (=> b!5557020 m!6548786))

(declare-fun m!6548788 () Bool)

(assert (=> b!5557020 m!6548788))

(assert (=> b!5557019 m!6548786))

(assert (=> b!5557019 m!6548786))

(assert (=> b!5557019 m!6548788))

(assert (=> b!5557011 m!6548784))

(assert (=> b!5557011 m!6548784))

(declare-fun m!6548790 () Bool)

(assert (=> b!5557011 m!6548790))

(assert (=> b!5557011 m!6548786))

(assert (=> b!5557011 m!6548790))

(assert (=> b!5557011 m!6548786))

(declare-fun m!6548792 () Bool)

(assert (=> b!5557011 m!6548792))

(assert (=> b!5557017 m!6548784))

(assert (=> b!5555963 d!1758859))

(assert (=> b!5555963 d!1758645))

(declare-fun d!1758867 () Bool)

(assert (=> d!1758867 (= (isEmpty!34604 (t!376195 s!2326)) ((_ is Nil!62806) (t!376195 s!2326)))))

(assert (=> d!1758561 d!1758867))

(declare-fun d!1758869 () Bool)

(assert (=> d!1758869 (= (isEmpty!34600 (exprs!5427 (h!69253 zl!343))) ((_ is Nil!62804) (exprs!5427 (h!69253 zl!343))))))

(assert (=> b!5556532 d!1758869))

(declare-fun d!1758871 () Bool)

(declare-fun res!2362043 () Bool)

(declare-fun e!3431905 () Bool)

(assert (=> d!1758871 (=> res!2362043 e!3431905)))

(assert (=> d!1758871 (= res!2362043 ((_ is Nil!62805) lt!2251132))))

(assert (=> d!1758871 (= (noDuplicate!1525 lt!2251132) e!3431905)))

(declare-fun b!5557025 () Bool)

(declare-fun e!3431906 () Bool)

(assert (=> b!5557025 (= e!3431905 e!3431906)))

(declare-fun res!2362044 () Bool)

(assert (=> b!5557025 (=> (not res!2362044) (not e!3431906))))

(declare-fun contains!19799 (List!62929 Context!9854) Bool)

(assert (=> b!5557025 (= res!2362044 (not (contains!19799 (t!376194 lt!2251132) (h!69253 lt!2251132))))))

(declare-fun b!5557026 () Bool)

(assert (=> b!5557026 (= e!3431906 (noDuplicate!1525 (t!376194 lt!2251132)))))

(assert (= (and d!1758871 (not res!2362043)) b!5557025))

(assert (= (and b!5557025 res!2362044) b!5557026))

(declare-fun m!6548794 () Bool)

(assert (=> b!5557025 m!6548794))

(declare-fun m!6548796 () Bool)

(assert (=> b!5557026 m!6548796))

(assert (=> d!1758559 d!1758871))

(declare-fun d!1758873 () Bool)

(declare-fun e!3431914 () Bool)

(assert (=> d!1758873 e!3431914))

(declare-fun res!2362050 () Bool)

(assert (=> d!1758873 (=> (not res!2362050) (not e!3431914))))

(declare-fun res!2362049 () List!62929)

(assert (=> d!1758873 (= res!2362050 (noDuplicate!1525 res!2362049))))

(declare-fun e!3431913 () Bool)

(assert (=> d!1758873 e!3431913))

(assert (=> d!1758873 (= (choose!42154 z!1189) res!2362049)))

(declare-fun b!5557034 () Bool)

(declare-fun e!3431915 () Bool)

(declare-fun tp!1532985 () Bool)

(assert (=> b!5557034 (= e!3431915 tp!1532985)))

(declare-fun tp!1532984 () Bool)

(declare-fun b!5557033 () Bool)

(assert (=> b!5557033 (= e!3431913 (and (inv!82104 (h!69253 res!2362049)) e!3431915 tp!1532984))))

(declare-fun b!5557035 () Bool)

(assert (=> b!5557035 (= e!3431914 (= (content!11309 res!2362049) z!1189))))

(assert (= b!5557033 b!5557034))

(assert (= (and d!1758873 ((_ is Cons!62805) res!2362049)) b!5557033))

(assert (= (and d!1758873 res!2362050) b!5557035))

(declare-fun m!6548798 () Bool)

(assert (=> d!1758873 m!6548798))

(declare-fun m!6548800 () Bool)

(assert (=> b!5557033 m!6548800))

(declare-fun m!6548802 () Bool)

(assert (=> b!5557035 m!6548802))

(assert (=> d!1758559 d!1758873))

(assert (=> bs!1286778 d!1758585))

(declare-fun b!5557038 () Bool)

(declare-fun e!3431916 () Bool)

(declare-fun tp!1532990 () Bool)

(assert (=> b!5557038 (= e!3431916 tp!1532990)))

(declare-fun b!5557036 () Bool)

(assert (=> b!5557036 (= e!3431916 tp_is_empty!40339)))

(assert (=> b!5556573 (= tp!1532949 e!3431916)))

(declare-fun b!5557037 () Bool)

(declare-fun tp!1532987 () Bool)

(declare-fun tp!1532988 () Bool)

(assert (=> b!5557037 (= e!3431916 (and tp!1532987 tp!1532988))))

(declare-fun b!5557039 () Bool)

(declare-fun tp!1532986 () Bool)

(declare-fun tp!1532989 () Bool)

(assert (=> b!5557039 (= e!3431916 (and tp!1532986 tp!1532989))))

(assert (= (and b!5556573 ((_ is ElementMatch!15543) (reg!15872 (regTwo!31599 r!7292)))) b!5557036))

(assert (= (and b!5556573 ((_ is Concat!24388) (reg!15872 (regTwo!31599 r!7292)))) b!5557037))

(assert (= (and b!5556573 ((_ is Star!15543) (reg!15872 (regTwo!31599 r!7292)))) b!5557038))

(assert (= (and b!5556573 ((_ is Union!15543) (reg!15872 (regTwo!31599 r!7292)))) b!5557039))

(declare-fun b!5557042 () Bool)

(declare-fun e!3431917 () Bool)

(declare-fun tp!1532995 () Bool)

(assert (=> b!5557042 (= e!3431917 tp!1532995)))

(declare-fun b!5557040 () Bool)

(assert (=> b!5557040 (= e!3431917 tp_is_empty!40339)))

(assert (=> b!5556572 (= tp!1532946 e!3431917)))

(declare-fun b!5557041 () Bool)

(declare-fun tp!1532992 () Bool)

(declare-fun tp!1532993 () Bool)

(assert (=> b!5557041 (= e!3431917 (and tp!1532992 tp!1532993))))

(declare-fun b!5557043 () Bool)

(declare-fun tp!1532991 () Bool)

(declare-fun tp!1532994 () Bool)

(assert (=> b!5557043 (= e!3431917 (and tp!1532991 tp!1532994))))

(assert (= (and b!5556572 ((_ is ElementMatch!15543) (regOne!31598 (regTwo!31599 r!7292)))) b!5557040))

(assert (= (and b!5556572 ((_ is Concat!24388) (regOne!31598 (regTwo!31599 r!7292)))) b!5557041))

(assert (= (and b!5556572 ((_ is Star!15543) (regOne!31598 (regTwo!31599 r!7292)))) b!5557042))

(assert (= (and b!5556572 ((_ is Union!15543) (regOne!31598 (regTwo!31599 r!7292)))) b!5557043))

(declare-fun b!5557046 () Bool)

(declare-fun e!3431918 () Bool)

(declare-fun tp!1533000 () Bool)

(assert (=> b!5557046 (= e!3431918 tp!1533000)))

(declare-fun b!5557044 () Bool)

(assert (=> b!5557044 (= e!3431918 tp_is_empty!40339)))

(assert (=> b!5556572 (= tp!1532947 e!3431918)))

(declare-fun b!5557045 () Bool)

(declare-fun tp!1532997 () Bool)

(declare-fun tp!1532998 () Bool)

(assert (=> b!5557045 (= e!3431918 (and tp!1532997 tp!1532998))))

(declare-fun b!5557047 () Bool)

(declare-fun tp!1532996 () Bool)

(declare-fun tp!1532999 () Bool)

(assert (=> b!5557047 (= e!3431918 (and tp!1532996 tp!1532999))))

(assert (= (and b!5556572 ((_ is ElementMatch!15543) (regTwo!31598 (regTwo!31599 r!7292)))) b!5557044))

(assert (= (and b!5556572 ((_ is Concat!24388) (regTwo!31598 (regTwo!31599 r!7292)))) b!5557045))

(assert (= (and b!5556572 ((_ is Star!15543) (regTwo!31598 (regTwo!31599 r!7292)))) b!5557046))

(assert (= (and b!5556572 ((_ is Union!15543) (regTwo!31598 (regTwo!31599 r!7292)))) b!5557047))

(declare-fun b!5557050 () Bool)

(declare-fun e!3431919 () Bool)

(declare-fun tp!1533005 () Bool)

(assert (=> b!5557050 (= e!3431919 tp!1533005)))

(declare-fun b!5557048 () Bool)

(assert (=> b!5557048 (= e!3431919 tp_is_empty!40339)))

(assert (=> b!5556574 (= tp!1532945 e!3431919)))

(declare-fun b!5557049 () Bool)

(declare-fun tp!1533002 () Bool)

(declare-fun tp!1533003 () Bool)

(assert (=> b!5557049 (= e!3431919 (and tp!1533002 tp!1533003))))

(declare-fun b!5557051 () Bool)

(declare-fun tp!1533001 () Bool)

(declare-fun tp!1533004 () Bool)

(assert (=> b!5557051 (= e!3431919 (and tp!1533001 tp!1533004))))

(assert (= (and b!5556574 ((_ is ElementMatch!15543) (regOne!31599 (regTwo!31599 r!7292)))) b!5557048))

(assert (= (and b!5556574 ((_ is Concat!24388) (regOne!31599 (regTwo!31599 r!7292)))) b!5557049))

(assert (= (and b!5556574 ((_ is Star!15543) (regOne!31599 (regTwo!31599 r!7292)))) b!5557050))

(assert (= (and b!5556574 ((_ is Union!15543) (regOne!31599 (regTwo!31599 r!7292)))) b!5557051))

(declare-fun b!5557054 () Bool)

(declare-fun e!3431920 () Bool)

(declare-fun tp!1533010 () Bool)

(assert (=> b!5557054 (= e!3431920 tp!1533010)))

(declare-fun b!5557052 () Bool)

(assert (=> b!5557052 (= e!3431920 tp_is_empty!40339)))

(assert (=> b!5556574 (= tp!1532948 e!3431920)))

(declare-fun b!5557053 () Bool)

(declare-fun tp!1533007 () Bool)

(declare-fun tp!1533008 () Bool)

(assert (=> b!5557053 (= e!3431920 (and tp!1533007 tp!1533008))))

(declare-fun b!5557055 () Bool)

(declare-fun tp!1533006 () Bool)

(declare-fun tp!1533009 () Bool)

(assert (=> b!5557055 (= e!3431920 (and tp!1533006 tp!1533009))))

(assert (= (and b!5556574 ((_ is ElementMatch!15543) (regTwo!31599 (regTwo!31599 r!7292)))) b!5557052))

(assert (= (and b!5556574 ((_ is Concat!24388) (regTwo!31599 (regTwo!31599 r!7292)))) b!5557053))

(assert (= (and b!5556574 ((_ is Star!15543) (regTwo!31599 (regTwo!31599 r!7292)))) b!5557054))

(assert (= (and b!5556574 ((_ is Union!15543) (regTwo!31599 (regTwo!31599 r!7292)))) b!5557055))

(declare-fun b!5557056 () Bool)

(declare-fun e!3431921 () Bool)

(declare-fun tp!1533011 () Bool)

(declare-fun tp!1533012 () Bool)

(assert (=> b!5557056 (= e!3431921 (and tp!1533011 tp!1533012))))

(assert (=> b!5556588 (= tp!1532967 e!3431921)))

(assert (= (and b!5556588 ((_ is Cons!62804) (exprs!5427 setElem!36987))) b!5557056))

(declare-fun b!5557059 () Bool)

(declare-fun e!3431922 () Bool)

(declare-fun tp!1533017 () Bool)

(assert (=> b!5557059 (= e!3431922 tp!1533017)))

(declare-fun b!5557057 () Bool)

(assert (=> b!5557057 (= e!3431922 tp_is_empty!40339)))

(assert (=> b!5556579 (= tp!1532952 e!3431922)))

(declare-fun b!5557058 () Bool)

(declare-fun tp!1533014 () Bool)

(declare-fun tp!1533015 () Bool)

(assert (=> b!5557058 (= e!3431922 (and tp!1533014 tp!1533015))))

(declare-fun b!5557060 () Bool)

(declare-fun tp!1533013 () Bool)

(declare-fun tp!1533016 () Bool)

(assert (=> b!5557060 (= e!3431922 (and tp!1533013 tp!1533016))))

(assert (= (and b!5556579 ((_ is ElementMatch!15543) (regOne!31599 (regOne!31598 r!7292)))) b!5557057))

(assert (= (and b!5556579 ((_ is Concat!24388) (regOne!31599 (regOne!31598 r!7292)))) b!5557058))

(assert (= (and b!5556579 ((_ is Star!15543) (regOne!31599 (regOne!31598 r!7292)))) b!5557059))

(assert (= (and b!5556579 ((_ is Union!15543) (regOne!31599 (regOne!31598 r!7292)))) b!5557060))

(declare-fun b!5557063 () Bool)

(declare-fun e!3431923 () Bool)

(declare-fun tp!1533022 () Bool)

(assert (=> b!5557063 (= e!3431923 tp!1533022)))

(declare-fun b!5557061 () Bool)

(assert (=> b!5557061 (= e!3431923 tp_is_empty!40339)))

(assert (=> b!5556579 (= tp!1532955 e!3431923)))

(declare-fun b!5557062 () Bool)

(declare-fun tp!1533019 () Bool)

(declare-fun tp!1533020 () Bool)

(assert (=> b!5557062 (= e!3431923 (and tp!1533019 tp!1533020))))

(declare-fun b!5557064 () Bool)

(declare-fun tp!1533018 () Bool)

(declare-fun tp!1533021 () Bool)

(assert (=> b!5557064 (= e!3431923 (and tp!1533018 tp!1533021))))

(assert (= (and b!5556579 ((_ is ElementMatch!15543) (regTwo!31599 (regOne!31598 r!7292)))) b!5557061))

(assert (= (and b!5556579 ((_ is Concat!24388) (regTwo!31599 (regOne!31598 r!7292)))) b!5557062))

(assert (= (and b!5556579 ((_ is Star!15543) (regTwo!31599 (regOne!31598 r!7292)))) b!5557063))

(assert (= (and b!5556579 ((_ is Union!15543) (regTwo!31599 (regOne!31598 r!7292)))) b!5557064))

(declare-fun condSetEmpty!36991 () Bool)

(assert (=> setNonEmpty!36987 (= condSetEmpty!36991 (= setRest!36987 ((as const (Array Context!9854 Bool)) false)))))

(declare-fun setRes!36991 () Bool)

(assert (=> setNonEmpty!36987 (= tp!1532966 setRes!36991)))

(declare-fun setIsEmpty!36991 () Bool)

(assert (=> setIsEmpty!36991 setRes!36991))

(declare-fun tp!1533023 () Bool)

(declare-fun setElem!36991 () Context!9854)

(declare-fun e!3431924 () Bool)

(declare-fun setNonEmpty!36991 () Bool)

(assert (=> setNonEmpty!36991 (= setRes!36991 (and tp!1533023 (inv!82104 setElem!36991) e!3431924))))

(declare-fun setRest!36991 () (InoxSet Context!9854))

(assert (=> setNonEmpty!36991 (= setRest!36987 ((_ map or) (store ((as const (Array Context!9854 Bool)) false) setElem!36991 true) setRest!36991))))

(declare-fun b!5557065 () Bool)

(declare-fun tp!1533024 () Bool)

(assert (=> b!5557065 (= e!3431924 tp!1533024)))

(assert (= (and setNonEmpty!36987 condSetEmpty!36991) setIsEmpty!36991))

(assert (= (and setNonEmpty!36987 (not condSetEmpty!36991)) setNonEmpty!36991))

(assert (= setNonEmpty!36991 b!5557065))

(declare-fun m!6548804 () Bool)

(assert (=> setNonEmpty!36991 m!6548804))

(declare-fun b!5557068 () Bool)

(declare-fun e!3431925 () Bool)

(declare-fun tp!1533029 () Bool)

(assert (=> b!5557068 (= e!3431925 tp!1533029)))

(declare-fun b!5557066 () Bool)

(assert (=> b!5557066 (= e!3431925 tp_is_empty!40339)))

(assert (=> b!5556577 (= tp!1532953 e!3431925)))

(declare-fun b!5557067 () Bool)

(declare-fun tp!1533026 () Bool)

(declare-fun tp!1533027 () Bool)

(assert (=> b!5557067 (= e!3431925 (and tp!1533026 tp!1533027))))

(declare-fun b!5557069 () Bool)

(declare-fun tp!1533025 () Bool)

(declare-fun tp!1533028 () Bool)

(assert (=> b!5557069 (= e!3431925 (and tp!1533025 tp!1533028))))

(assert (= (and b!5556577 ((_ is ElementMatch!15543) (regOne!31598 (regOne!31598 r!7292)))) b!5557066))

(assert (= (and b!5556577 ((_ is Concat!24388) (regOne!31598 (regOne!31598 r!7292)))) b!5557067))

(assert (= (and b!5556577 ((_ is Star!15543) (regOne!31598 (regOne!31598 r!7292)))) b!5557068))

(assert (= (and b!5556577 ((_ is Union!15543) (regOne!31598 (regOne!31598 r!7292)))) b!5557069))

(declare-fun b!5557072 () Bool)

(declare-fun e!3431926 () Bool)

(declare-fun tp!1533034 () Bool)

(assert (=> b!5557072 (= e!3431926 tp!1533034)))

(declare-fun b!5557070 () Bool)

(assert (=> b!5557070 (= e!3431926 tp_is_empty!40339)))

(assert (=> b!5556577 (= tp!1532954 e!3431926)))

(declare-fun b!5557071 () Bool)

(declare-fun tp!1533031 () Bool)

(declare-fun tp!1533032 () Bool)

(assert (=> b!5557071 (= e!3431926 (and tp!1533031 tp!1533032))))

(declare-fun b!5557073 () Bool)

(declare-fun tp!1533030 () Bool)

(declare-fun tp!1533033 () Bool)

(assert (=> b!5557073 (= e!3431926 (and tp!1533030 tp!1533033))))

(assert (= (and b!5556577 ((_ is ElementMatch!15543) (regTwo!31598 (regOne!31598 r!7292)))) b!5557070))

(assert (= (and b!5556577 ((_ is Concat!24388) (regTwo!31598 (regOne!31598 r!7292)))) b!5557071))

(assert (= (and b!5556577 ((_ is Star!15543) (regTwo!31598 (regOne!31598 r!7292)))) b!5557072))

(assert (= (and b!5556577 ((_ is Union!15543) (regTwo!31598 (regOne!31598 r!7292)))) b!5557073))

(declare-fun b!5557076 () Bool)

(declare-fun e!3431927 () Bool)

(declare-fun tp!1533039 () Bool)

(assert (=> b!5557076 (= e!3431927 tp!1533039)))

(declare-fun b!5557074 () Bool)

(assert (=> b!5557074 (= e!3431927 tp_is_empty!40339)))

(assert (=> b!5556570 (= tp!1532940 e!3431927)))

(declare-fun b!5557075 () Bool)

(declare-fun tp!1533036 () Bool)

(declare-fun tp!1533037 () Bool)

(assert (=> b!5557075 (= e!3431927 (and tp!1533036 tp!1533037))))

(declare-fun b!5557077 () Bool)

(declare-fun tp!1533035 () Bool)

(declare-fun tp!1533038 () Bool)

(assert (=> b!5557077 (= e!3431927 (and tp!1533035 tp!1533038))))

(assert (= (and b!5556570 ((_ is ElementMatch!15543) (regOne!31599 (regOne!31599 r!7292)))) b!5557074))

(assert (= (and b!5556570 ((_ is Concat!24388) (regOne!31599 (regOne!31599 r!7292)))) b!5557075))

(assert (= (and b!5556570 ((_ is Star!15543) (regOne!31599 (regOne!31599 r!7292)))) b!5557076))

(assert (= (and b!5556570 ((_ is Union!15543) (regOne!31599 (regOne!31599 r!7292)))) b!5557077))

(declare-fun b!5557080 () Bool)

(declare-fun e!3431928 () Bool)

(declare-fun tp!1533044 () Bool)

(assert (=> b!5557080 (= e!3431928 tp!1533044)))

(declare-fun b!5557078 () Bool)

(assert (=> b!5557078 (= e!3431928 tp_is_empty!40339)))

(assert (=> b!5556570 (= tp!1532943 e!3431928)))

(declare-fun b!5557079 () Bool)

(declare-fun tp!1533041 () Bool)

(declare-fun tp!1533042 () Bool)

(assert (=> b!5557079 (= e!3431928 (and tp!1533041 tp!1533042))))

(declare-fun b!5557081 () Bool)

(declare-fun tp!1533040 () Bool)

(declare-fun tp!1533043 () Bool)

(assert (=> b!5557081 (= e!3431928 (and tp!1533040 tp!1533043))))

(assert (= (and b!5556570 ((_ is ElementMatch!15543) (regTwo!31599 (regOne!31599 r!7292)))) b!5557078))

(assert (= (and b!5556570 ((_ is Concat!24388) (regTwo!31599 (regOne!31599 r!7292)))) b!5557079))

(assert (= (and b!5556570 ((_ is Star!15543) (regTwo!31599 (regOne!31599 r!7292)))) b!5557080))

(assert (= (and b!5556570 ((_ is Union!15543) (regTwo!31599 (regOne!31599 r!7292)))) b!5557081))

(declare-fun b!5557087 () Bool)

(declare-fun e!3431931 () Bool)

(declare-fun tp!1533049 () Bool)

(assert (=> b!5557087 (= e!3431931 tp!1533049)))

(declare-fun b!5557084 () Bool)

(assert (=> b!5557084 (= e!3431931 tp_is_empty!40339)))

(assert (=> b!5556578 (= tp!1532956 e!3431931)))

(declare-fun b!5557085 () Bool)

(declare-fun tp!1533046 () Bool)

(declare-fun tp!1533047 () Bool)

(assert (=> b!5557085 (= e!3431931 (and tp!1533046 tp!1533047))))

(declare-fun b!5557089 () Bool)

(declare-fun tp!1533045 () Bool)

(declare-fun tp!1533048 () Bool)

(assert (=> b!5557089 (= e!3431931 (and tp!1533045 tp!1533048))))

(assert (= (and b!5556578 ((_ is ElementMatch!15543) (reg!15872 (regOne!31598 r!7292)))) b!5557084))

(assert (= (and b!5556578 ((_ is Concat!24388) (reg!15872 (regOne!31598 r!7292)))) b!5557085))

(assert (= (and b!5556578 ((_ is Star!15543) (reg!15872 (regOne!31598 r!7292)))) b!5557087))

(assert (= (and b!5556578 ((_ is Union!15543) (reg!15872 (regOne!31598 r!7292)))) b!5557089))

(declare-fun b!5557092 () Bool)

(declare-fun e!3431932 () Bool)

(declare-fun tp!1533054 () Bool)

(assert (=> b!5557092 (= e!3431932 tp!1533054)))

(declare-fun b!5557090 () Bool)

(assert (=> b!5557090 (= e!3431932 tp_is_empty!40339)))

(assert (=> b!5556568 (= tp!1532941 e!3431932)))

(declare-fun b!5557091 () Bool)

(declare-fun tp!1533051 () Bool)

(declare-fun tp!1533052 () Bool)

(assert (=> b!5557091 (= e!3431932 (and tp!1533051 tp!1533052))))

(declare-fun b!5557093 () Bool)

(declare-fun tp!1533050 () Bool)

(declare-fun tp!1533053 () Bool)

(assert (=> b!5557093 (= e!3431932 (and tp!1533050 tp!1533053))))

(assert (= (and b!5556568 ((_ is ElementMatch!15543) (regOne!31598 (regOne!31599 r!7292)))) b!5557090))

(assert (= (and b!5556568 ((_ is Concat!24388) (regOne!31598 (regOne!31599 r!7292)))) b!5557091))

(assert (= (and b!5556568 ((_ is Star!15543) (regOne!31598 (regOne!31599 r!7292)))) b!5557092))

(assert (= (and b!5556568 ((_ is Union!15543) (regOne!31598 (regOne!31599 r!7292)))) b!5557093))

(declare-fun b!5557096 () Bool)

(declare-fun e!3431933 () Bool)

(declare-fun tp!1533059 () Bool)

(assert (=> b!5557096 (= e!3431933 tp!1533059)))

(declare-fun b!5557094 () Bool)

(assert (=> b!5557094 (= e!3431933 tp_is_empty!40339)))

(assert (=> b!5556568 (= tp!1532942 e!3431933)))

(declare-fun b!5557095 () Bool)

(declare-fun tp!1533056 () Bool)

(declare-fun tp!1533057 () Bool)

(assert (=> b!5557095 (= e!3431933 (and tp!1533056 tp!1533057))))

(declare-fun b!5557097 () Bool)

(declare-fun tp!1533055 () Bool)

(declare-fun tp!1533058 () Bool)

(assert (=> b!5557097 (= e!3431933 (and tp!1533055 tp!1533058))))

(assert (= (and b!5556568 ((_ is ElementMatch!15543) (regTwo!31598 (regOne!31599 r!7292)))) b!5557094))

(assert (= (and b!5556568 ((_ is Concat!24388) (regTwo!31598 (regOne!31599 r!7292)))) b!5557095))

(assert (= (and b!5556568 ((_ is Star!15543) (regTwo!31598 (regOne!31599 r!7292)))) b!5557096))

(assert (= (and b!5556568 ((_ is Union!15543) (regTwo!31598 (regOne!31599 r!7292)))) b!5557097))

(declare-fun b!5557100 () Bool)

(declare-fun e!3431934 () Bool)

(declare-fun tp!1533064 () Bool)

(assert (=> b!5557100 (= e!3431934 tp!1533064)))

(declare-fun b!5557098 () Bool)

(assert (=> b!5557098 (= e!3431934 tp_is_empty!40339)))

(assert (=> b!5556569 (= tp!1532944 e!3431934)))

(declare-fun b!5557099 () Bool)

(declare-fun tp!1533061 () Bool)

(declare-fun tp!1533062 () Bool)

(assert (=> b!5557099 (= e!3431934 (and tp!1533061 tp!1533062))))

(declare-fun b!5557101 () Bool)

(declare-fun tp!1533060 () Bool)

(declare-fun tp!1533063 () Bool)

(assert (=> b!5557101 (= e!3431934 (and tp!1533060 tp!1533063))))

(assert (= (and b!5556569 ((_ is ElementMatch!15543) (reg!15872 (regOne!31599 r!7292)))) b!5557098))

(assert (= (and b!5556569 ((_ is Concat!24388) (reg!15872 (regOne!31599 r!7292)))) b!5557099))

(assert (= (and b!5556569 ((_ is Star!15543) (reg!15872 (regOne!31599 r!7292)))) b!5557100))

(assert (= (and b!5556569 ((_ is Union!15543) (reg!15872 (regOne!31599 r!7292)))) b!5557101))

(declare-fun b!5557104 () Bool)

(declare-fun e!3431935 () Bool)

(declare-fun tp!1533069 () Bool)

(assert (=> b!5557104 (= e!3431935 tp!1533069)))

(declare-fun b!5557102 () Bool)

(assert (=> b!5557102 (= e!3431935 tp_is_empty!40339)))

(assert (=> b!5556547 (= tp!1532924 e!3431935)))

(declare-fun b!5557103 () Bool)

(declare-fun tp!1533066 () Bool)

(declare-fun tp!1533067 () Bool)

(assert (=> b!5557103 (= e!3431935 (and tp!1533066 tp!1533067))))

(declare-fun b!5557105 () Bool)

(declare-fun tp!1533065 () Bool)

(declare-fun tp!1533068 () Bool)

(assert (=> b!5557105 (= e!3431935 (and tp!1533065 tp!1533068))))

(assert (= (and b!5556547 ((_ is ElementMatch!15543) (reg!15872 (reg!15872 r!7292)))) b!5557102))

(assert (= (and b!5556547 ((_ is Concat!24388) (reg!15872 (reg!15872 r!7292)))) b!5557103))

(assert (= (and b!5556547 ((_ is Star!15543) (reg!15872 (reg!15872 r!7292)))) b!5557104))

(assert (= (and b!5556547 ((_ is Union!15543) (reg!15872 (reg!15872 r!7292)))) b!5557105))

(declare-fun b!5557108 () Bool)

(declare-fun e!3431936 () Bool)

(declare-fun tp!1533074 () Bool)

(assert (=> b!5557108 (= e!3431936 tp!1533074)))

(declare-fun b!5557106 () Bool)

(assert (=> b!5557106 (= e!3431936 tp_is_empty!40339)))

(assert (=> b!5556575 (= tp!1532950 e!3431936)))

(declare-fun b!5557107 () Bool)

(declare-fun tp!1533071 () Bool)

(declare-fun tp!1533072 () Bool)

(assert (=> b!5557107 (= e!3431936 (and tp!1533071 tp!1533072))))

(declare-fun b!5557109 () Bool)

(declare-fun tp!1533070 () Bool)

(declare-fun tp!1533073 () Bool)

(assert (=> b!5557109 (= e!3431936 (and tp!1533070 tp!1533073))))

(assert (= (and b!5556575 ((_ is ElementMatch!15543) (h!69252 (exprs!5427 (h!69253 zl!343))))) b!5557106))

(assert (= (and b!5556575 ((_ is Concat!24388) (h!69252 (exprs!5427 (h!69253 zl!343))))) b!5557107))

(assert (= (and b!5556575 ((_ is Star!15543) (h!69252 (exprs!5427 (h!69253 zl!343))))) b!5557108))

(assert (= (and b!5556575 ((_ is Union!15543) (h!69252 (exprs!5427 (h!69253 zl!343))))) b!5557109))

(declare-fun b!5557110 () Bool)

(declare-fun e!3431937 () Bool)

(declare-fun tp!1533075 () Bool)

(declare-fun tp!1533076 () Bool)

(assert (=> b!5557110 (= e!3431937 (and tp!1533075 tp!1533076))))

(assert (=> b!5556575 (= tp!1532951 e!3431937)))

(assert (= (and b!5556575 ((_ is Cons!62804) (t!376193 (exprs!5427 (h!69253 zl!343))))) b!5557110))

(declare-fun b!5557113 () Bool)

(declare-fun e!3431938 () Bool)

(declare-fun tp!1533081 () Bool)

(assert (=> b!5557113 (= e!3431938 tp!1533081)))

(declare-fun b!5557111 () Bool)

(assert (=> b!5557111 (= e!3431938 tp_is_empty!40339)))

(assert (=> b!5556546 (= tp!1532921 e!3431938)))

(declare-fun b!5557112 () Bool)

(declare-fun tp!1533078 () Bool)

(declare-fun tp!1533079 () Bool)

(assert (=> b!5557112 (= e!3431938 (and tp!1533078 tp!1533079))))

(declare-fun b!5557114 () Bool)

(declare-fun tp!1533077 () Bool)

(declare-fun tp!1533080 () Bool)

(assert (=> b!5557114 (= e!3431938 (and tp!1533077 tp!1533080))))

(assert (= (and b!5556546 ((_ is ElementMatch!15543) (regOne!31598 (reg!15872 r!7292)))) b!5557111))

(assert (= (and b!5556546 ((_ is Concat!24388) (regOne!31598 (reg!15872 r!7292)))) b!5557112))

(assert (= (and b!5556546 ((_ is Star!15543) (regOne!31598 (reg!15872 r!7292)))) b!5557113))

(assert (= (and b!5556546 ((_ is Union!15543) (regOne!31598 (reg!15872 r!7292)))) b!5557114))

(declare-fun b!5557117 () Bool)

(declare-fun e!3431939 () Bool)

(declare-fun tp!1533086 () Bool)

(assert (=> b!5557117 (= e!3431939 tp!1533086)))

(declare-fun b!5557115 () Bool)

(assert (=> b!5557115 (= e!3431939 tp_is_empty!40339)))

(assert (=> b!5556546 (= tp!1532922 e!3431939)))

(declare-fun b!5557116 () Bool)

(declare-fun tp!1533083 () Bool)

(declare-fun tp!1533084 () Bool)

(assert (=> b!5557116 (= e!3431939 (and tp!1533083 tp!1533084))))

(declare-fun b!5557118 () Bool)

(declare-fun tp!1533082 () Bool)

(declare-fun tp!1533085 () Bool)

(assert (=> b!5557118 (= e!3431939 (and tp!1533082 tp!1533085))))

(assert (= (and b!5556546 ((_ is ElementMatch!15543) (regTwo!31598 (reg!15872 r!7292)))) b!5557115))

(assert (= (and b!5556546 ((_ is Concat!24388) (regTwo!31598 (reg!15872 r!7292)))) b!5557116))

(assert (= (and b!5556546 ((_ is Star!15543) (regTwo!31598 (reg!15872 r!7292)))) b!5557117))

(assert (= (and b!5556546 ((_ is Union!15543) (regTwo!31598 (reg!15872 r!7292)))) b!5557118))

(declare-fun b!5557119 () Bool)

(declare-fun e!3431940 () Bool)

(declare-fun tp!1533087 () Bool)

(declare-fun tp!1533088 () Bool)

(assert (=> b!5557119 (= e!3431940 (and tp!1533087 tp!1533088))))

(assert (=> b!5556561 (= tp!1532935 e!3431940)))

(assert (= (and b!5556561 ((_ is Cons!62804) (exprs!5427 (h!69253 (t!376194 zl!343))))) b!5557119))

(declare-fun b!5557122 () Bool)

(declare-fun e!3431941 () Bool)

(declare-fun tp!1533093 () Bool)

(assert (=> b!5557122 (= e!3431941 tp!1533093)))

(declare-fun b!5557120 () Bool)

(assert (=> b!5557120 (= e!3431941 tp_is_empty!40339)))

(assert (=> b!5556548 (= tp!1532920 e!3431941)))

(declare-fun b!5557121 () Bool)

(declare-fun tp!1533090 () Bool)

(declare-fun tp!1533091 () Bool)

(assert (=> b!5557121 (= e!3431941 (and tp!1533090 tp!1533091))))

(declare-fun b!5557123 () Bool)

(declare-fun tp!1533089 () Bool)

(declare-fun tp!1533092 () Bool)

(assert (=> b!5557123 (= e!3431941 (and tp!1533089 tp!1533092))))

(assert (= (and b!5556548 ((_ is ElementMatch!15543) (regOne!31599 (reg!15872 r!7292)))) b!5557120))

(assert (= (and b!5556548 ((_ is Concat!24388) (regOne!31599 (reg!15872 r!7292)))) b!5557121))

(assert (= (and b!5556548 ((_ is Star!15543) (regOne!31599 (reg!15872 r!7292)))) b!5557122))

(assert (= (and b!5556548 ((_ is Union!15543) (regOne!31599 (reg!15872 r!7292)))) b!5557123))

(declare-fun b!5557126 () Bool)

(declare-fun e!3431942 () Bool)

(declare-fun tp!1533098 () Bool)

(assert (=> b!5557126 (= e!3431942 tp!1533098)))

(declare-fun b!5557124 () Bool)

(assert (=> b!5557124 (= e!3431942 tp_is_empty!40339)))

(assert (=> b!5556548 (= tp!1532923 e!3431942)))

(declare-fun b!5557125 () Bool)

(declare-fun tp!1533095 () Bool)

(declare-fun tp!1533096 () Bool)

(assert (=> b!5557125 (= e!3431942 (and tp!1533095 tp!1533096))))

(declare-fun b!5557127 () Bool)

(declare-fun tp!1533094 () Bool)

(declare-fun tp!1533097 () Bool)

(assert (=> b!5557127 (= e!3431942 (and tp!1533094 tp!1533097))))

(assert (= (and b!5556548 ((_ is ElementMatch!15543) (regTwo!31599 (reg!15872 r!7292)))) b!5557124))

(assert (= (and b!5556548 ((_ is Concat!24388) (regTwo!31599 (reg!15872 r!7292)))) b!5557125))

(assert (= (and b!5556548 ((_ is Star!15543) (regTwo!31599 (reg!15872 r!7292)))) b!5557126))

(assert (= (and b!5556548 ((_ is Union!15543) (regTwo!31599 (reg!15872 r!7292)))) b!5557127))

(declare-fun b!5557129 () Bool)

(declare-fun e!3431944 () Bool)

(declare-fun tp!1533099 () Bool)

(assert (=> b!5557129 (= e!3431944 tp!1533099)))

(declare-fun tp!1533100 () Bool)

(declare-fun b!5557128 () Bool)

(declare-fun e!3431943 () Bool)

(assert (=> b!5557128 (= e!3431943 (and (inv!82104 (h!69253 (t!376194 (t!376194 zl!343)))) e!3431944 tp!1533100))))

(assert (=> b!5556560 (= tp!1532936 e!3431943)))

(assert (= b!5557128 b!5557129))

(assert (= (and b!5556560 ((_ is Cons!62805) (t!376194 (t!376194 zl!343)))) b!5557128))

(declare-fun m!6548806 () Bool)

(assert (=> b!5557128 m!6548806))

(declare-fun b!5557130 () Bool)

(declare-fun e!3431945 () Bool)

(declare-fun tp!1533101 () Bool)

(assert (=> b!5557130 (= e!3431945 (and tp_is_empty!40339 tp!1533101))))

(assert (=> b!5556566 (= tp!1532939 e!3431945)))

(assert (= (and b!5556566 ((_ is Cons!62806) (t!376195 (t!376195 s!2326)))) b!5557130))

(declare-fun b!5557133 () Bool)

(declare-fun e!3431946 () Bool)

(declare-fun tp!1533106 () Bool)

(assert (=> b!5557133 (= e!3431946 tp!1533106)))

(declare-fun b!5557131 () Bool)

(assert (=> b!5557131 (= e!3431946 tp_is_empty!40339)))

(assert (=> b!5556582 (= tp!1532961 e!3431946)))

(declare-fun b!5557132 () Bool)

(declare-fun tp!1533103 () Bool)

(declare-fun tp!1533104 () Bool)

(assert (=> b!5557132 (= e!3431946 (and tp!1533103 tp!1533104))))

(declare-fun b!5557134 () Bool)

(declare-fun tp!1533102 () Bool)

(declare-fun tp!1533105 () Bool)

(assert (=> b!5557134 (= e!3431946 (and tp!1533102 tp!1533105))))

(assert (= (and b!5556582 ((_ is ElementMatch!15543) (reg!15872 (regTwo!31598 r!7292)))) b!5557131))

(assert (= (and b!5556582 ((_ is Concat!24388) (reg!15872 (regTwo!31598 r!7292)))) b!5557132))

(assert (= (and b!5556582 ((_ is Star!15543) (reg!15872 (regTwo!31598 r!7292)))) b!5557133))

(assert (= (and b!5556582 ((_ is Union!15543) (reg!15872 (regTwo!31598 r!7292)))) b!5557134))

(declare-fun b!5557137 () Bool)

(declare-fun e!3431947 () Bool)

(declare-fun tp!1533111 () Bool)

(assert (=> b!5557137 (= e!3431947 tp!1533111)))

(declare-fun b!5557135 () Bool)

(assert (=> b!5557135 (= e!3431947 tp_is_empty!40339)))

(assert (=> b!5556581 (= tp!1532958 e!3431947)))

(declare-fun b!5557136 () Bool)

(declare-fun tp!1533108 () Bool)

(declare-fun tp!1533109 () Bool)

(assert (=> b!5557136 (= e!3431947 (and tp!1533108 tp!1533109))))

(declare-fun b!5557138 () Bool)

(declare-fun tp!1533107 () Bool)

(declare-fun tp!1533110 () Bool)

(assert (=> b!5557138 (= e!3431947 (and tp!1533107 tp!1533110))))

(assert (= (and b!5556581 ((_ is ElementMatch!15543) (regOne!31598 (regTwo!31598 r!7292)))) b!5557135))

(assert (= (and b!5556581 ((_ is Concat!24388) (regOne!31598 (regTwo!31598 r!7292)))) b!5557136))

(assert (= (and b!5556581 ((_ is Star!15543) (regOne!31598 (regTwo!31598 r!7292)))) b!5557137))

(assert (= (and b!5556581 ((_ is Union!15543) (regOne!31598 (regTwo!31598 r!7292)))) b!5557138))

(declare-fun b!5557141 () Bool)

(declare-fun e!3431948 () Bool)

(declare-fun tp!1533116 () Bool)

(assert (=> b!5557141 (= e!3431948 tp!1533116)))

(declare-fun b!5557139 () Bool)

(assert (=> b!5557139 (= e!3431948 tp_is_empty!40339)))

(assert (=> b!5556581 (= tp!1532959 e!3431948)))

(declare-fun b!5557140 () Bool)

(declare-fun tp!1533113 () Bool)

(declare-fun tp!1533114 () Bool)

(assert (=> b!5557140 (= e!3431948 (and tp!1533113 tp!1533114))))

(declare-fun b!5557142 () Bool)

(declare-fun tp!1533112 () Bool)

(declare-fun tp!1533115 () Bool)

(assert (=> b!5557142 (= e!3431948 (and tp!1533112 tp!1533115))))

(assert (= (and b!5556581 ((_ is ElementMatch!15543) (regTwo!31598 (regTwo!31598 r!7292)))) b!5557139))

(assert (= (and b!5556581 ((_ is Concat!24388) (regTwo!31598 (regTwo!31598 r!7292)))) b!5557140))

(assert (= (and b!5556581 ((_ is Star!15543) (regTwo!31598 (regTwo!31598 r!7292)))) b!5557141))

(assert (= (and b!5556581 ((_ is Union!15543) (regTwo!31598 (regTwo!31598 r!7292)))) b!5557142))

(declare-fun b!5557145 () Bool)

(declare-fun e!3431949 () Bool)

(declare-fun tp!1533121 () Bool)

(assert (=> b!5557145 (= e!3431949 tp!1533121)))

(declare-fun b!5557143 () Bool)

(assert (=> b!5557143 (= e!3431949 tp_is_empty!40339)))

(assert (=> b!5556583 (= tp!1532957 e!3431949)))

(declare-fun b!5557144 () Bool)

(declare-fun tp!1533118 () Bool)

(declare-fun tp!1533119 () Bool)

(assert (=> b!5557144 (= e!3431949 (and tp!1533118 tp!1533119))))

(declare-fun b!5557146 () Bool)

(declare-fun tp!1533117 () Bool)

(declare-fun tp!1533120 () Bool)

(assert (=> b!5557146 (= e!3431949 (and tp!1533117 tp!1533120))))

(assert (= (and b!5556583 ((_ is ElementMatch!15543) (regOne!31599 (regTwo!31598 r!7292)))) b!5557143))

(assert (= (and b!5556583 ((_ is Concat!24388) (regOne!31599 (regTwo!31598 r!7292)))) b!5557144))

(assert (= (and b!5556583 ((_ is Star!15543) (regOne!31599 (regTwo!31598 r!7292)))) b!5557145))

(assert (= (and b!5556583 ((_ is Union!15543) (regOne!31599 (regTwo!31598 r!7292)))) b!5557146))

(declare-fun b!5557149 () Bool)

(declare-fun e!3431950 () Bool)

(declare-fun tp!1533126 () Bool)

(assert (=> b!5557149 (= e!3431950 tp!1533126)))

(declare-fun b!5557147 () Bool)

(assert (=> b!5557147 (= e!3431950 tp_is_empty!40339)))

(assert (=> b!5556583 (= tp!1532960 e!3431950)))

(declare-fun b!5557148 () Bool)

(declare-fun tp!1533123 () Bool)

(declare-fun tp!1533124 () Bool)

(assert (=> b!5557148 (= e!3431950 (and tp!1533123 tp!1533124))))

(declare-fun b!5557150 () Bool)

(declare-fun tp!1533122 () Bool)

(declare-fun tp!1533125 () Bool)

(assert (=> b!5557150 (= e!3431950 (and tp!1533122 tp!1533125))))

(assert (= (and b!5556583 ((_ is ElementMatch!15543) (regTwo!31599 (regTwo!31598 r!7292)))) b!5557147))

(assert (= (and b!5556583 ((_ is Concat!24388) (regTwo!31599 (regTwo!31598 r!7292)))) b!5557148))

(assert (= (and b!5556583 ((_ is Star!15543) (regTwo!31599 (regTwo!31598 r!7292)))) b!5557149))

(assert (= (and b!5556583 ((_ is Union!15543) (regTwo!31599 (regTwo!31598 r!7292)))) b!5557150))

(declare-fun b!5557153 () Bool)

(declare-fun e!3431951 () Bool)

(declare-fun tp!1533131 () Bool)

(assert (=> b!5557153 (= e!3431951 tp!1533131)))

(declare-fun b!5557151 () Bool)

(assert (=> b!5557151 (= e!3431951 tp_is_empty!40339)))

(assert (=> b!5556553 (= tp!1532929 e!3431951)))

(declare-fun b!5557152 () Bool)

(declare-fun tp!1533128 () Bool)

(declare-fun tp!1533129 () Bool)

(assert (=> b!5557152 (= e!3431951 (and tp!1533128 tp!1533129))))

(declare-fun b!5557154 () Bool)

(declare-fun tp!1533127 () Bool)

(declare-fun tp!1533130 () Bool)

(assert (=> b!5557154 (= e!3431951 (and tp!1533127 tp!1533130))))

(assert (= (and b!5556553 ((_ is ElementMatch!15543) (h!69252 (exprs!5427 setElem!36981)))) b!5557151))

(assert (= (and b!5556553 ((_ is Concat!24388) (h!69252 (exprs!5427 setElem!36981)))) b!5557152))

(assert (= (and b!5556553 ((_ is Star!15543) (h!69252 (exprs!5427 setElem!36981)))) b!5557153))

(assert (= (and b!5556553 ((_ is Union!15543) (h!69252 (exprs!5427 setElem!36981)))) b!5557154))

(declare-fun b!5557155 () Bool)

(declare-fun e!3431952 () Bool)

(declare-fun tp!1533132 () Bool)

(declare-fun tp!1533133 () Bool)

(assert (=> b!5557155 (= e!3431952 (and tp!1533132 tp!1533133))))

(assert (=> b!5556553 (= tp!1532930 e!3431952)))

(assert (= (and b!5556553 ((_ is Cons!62804) (t!376193 (exprs!5427 setElem!36981)))) b!5557155))

(declare-fun b_lambda!211003 () Bool)

(assert (= b_lambda!210989 (or d!1758605 b_lambda!211003)))

(declare-fun bs!1286904 () Bool)

(declare-fun d!1758875 () Bool)

(assert (= bs!1286904 (and d!1758875 d!1758605)))

(assert (=> bs!1286904 (= (dynLambda!24564 lambda!298187 (h!69252 lt!2251153)) (validRegex!7279 (h!69252 lt!2251153)))))

(declare-fun m!6548808 () Bool)

(assert (=> bs!1286904 m!6548808))

(assert (=> b!5556841 d!1758875))

(declare-fun b_lambda!211005 () Bool)

(assert (= b_lambda!210999 (or d!1758595 b_lambda!211005)))

(declare-fun bs!1286905 () Bool)

(declare-fun d!1758877 () Bool)

(assert (= bs!1286905 (and d!1758877 d!1758595)))

(assert (=> bs!1286905 (= (dynLambda!24564 lambda!298184 (h!69252 (unfocusZipperList!971 zl!343))) (validRegex!7279 (h!69252 (unfocusZipperList!971 zl!343))))))

(declare-fun m!6548810 () Bool)

(assert (=> bs!1286905 m!6548810))

(assert (=> b!5556896 d!1758877))

(declare-fun b_lambda!211007 () Bool)

(assert (= b_lambda!210995 (or b!5555886 b_lambda!211007)))

(assert (=> d!1758777 d!1758641))

(declare-fun b_lambda!211009 () Bool)

(assert (= b_lambda!211001 (or d!1758639 b_lambda!211009)))

(declare-fun bs!1286906 () Bool)

(declare-fun d!1758879 () Bool)

(assert (= bs!1286906 (and d!1758879 d!1758639)))

(assert (=> bs!1286906 (= (dynLambda!24564 lambda!298203 (h!69252 (exprs!5427 setElem!36981))) (validRegex!7279 (h!69252 (exprs!5427 setElem!36981))))))

(declare-fun m!6548812 () Bool)

(assert (=> bs!1286906 m!6548812))

(assert (=> b!5556917 d!1758879))

(declare-fun b_lambda!211011 () Bool)

(assert (= b_lambda!210991 (or d!1758633 b_lambda!211011)))

(declare-fun bs!1286907 () Bool)

(declare-fun d!1758881 () Bool)

(assert (= bs!1286907 (and d!1758881 d!1758633)))

(assert (=> bs!1286907 (= (dynLambda!24564 lambda!298196 (h!69252 (exprs!5427 (h!69253 zl!343)))) (validRegex!7279 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(declare-fun m!6548814 () Bool)

(assert (=> bs!1286907 m!6548814))

(assert (=> b!5556845 d!1758881))

(declare-fun b_lambda!211013 () Bool)

(assert (= b_lambda!210987 (or d!1758635 b_lambda!211013)))

(declare-fun bs!1286908 () Bool)

(declare-fun d!1758883 () Bool)

(assert (= bs!1286908 (and d!1758883 d!1758635)))

(assert (=> bs!1286908 (= (dynLambda!24564 lambda!298199 (h!69252 (exprs!5427 (h!69253 zl!343)))) (validRegex!7279 (h!69252 (exprs!5427 (h!69253 zl!343)))))))

(assert (=> bs!1286908 m!6548814))

(assert (=> b!5556726 d!1758883))

(check-sat (not bm!414304) (not d!1758773) (not b!5556907) (not bm!414321) (not bm!414345) (not b!5557096) (not b!5557035) (not b!5557148) (not b_lambda!211005) (not b_lambda!211009) (not b!5556830) (not b!5557100) (not bm!414339) (not bs!1286907) (not bm!414308) (not bm!414306) (not b!5556856) (not b!5557140) (not b!5556860) (not b!5556619) (not b!5556686) (not b!5556768) (not b!5556918) (not b!5556644) (not bm!414364) (not b!5556636) (not b!5556728) (not b!5556771) (not b!5557125) (not b!5556762) (not b!5556702) (not d!1758699) (not b!5556904) (not b!5557145) (not b!5557038) (not b!5557017) (not bm!414365) (not b!5557141) (not b!5556955) (not bm!414292) (not b!5557089) (not b!5556635) (not b!5557121) (not d!1758857) (not b!5557033) (not bm!414371) (not b!5556647) (not bm!414322) (not bm!414318) (not bm!414311) (not bm!414320) (not b!5557133) (not b!5557047) (not b_lambda!211011) (not bs!1286906) (not bm!414305) (not b!5556806) (not b!5556646) (not b!5557087) (not b!5556620) (not b!5557097) (not b!5556600) (not bm!414290) (not d!1758785) (not b!5557112) (not b!5557051) (not bm!414372) (not b!5556764) (not b!5557019) (not b_lambda!210985) (not b!5557060) (not b!5556757) (not bm!414332) (not b!5557055) (not d!1758777) (not b!5556763) (not d!1758859) (not b!5556642) (not b!5556894) (not b!5557110) (not b!5556782) (not bm!414370) (not b!5556862) (not d!1758723) (not d!1758727) (not b!5556661) (not b!5557053) (not d!1758823) (not d!1758717) (not b!5556617) (not b!5557130) (not b!5556913) (not bm!414312) (not b!5557104) (not bm!414350) (not d!1758649) (not b!5557011) (not b!5557054) (not b!5556919) (not b!5557091) (not b!5557117) (not d!1758677) (not bm!414334) (not b!5556601) (not b!5557137) (not b!5557116) (not b!5557113) (not b!5556761) (not b!5557058) (not b!5557068) (not d!1758657) (not b!5557126) (not bm!414362) (not b!5557101) (not b!5556618) (not b!5557095) (not setNonEmpty!36991) (not b!5556655) (not b!5557122) (not b!5556711) (not d!1758647) (not b!5557020) (not b!5557046) (not b!5557045) (not d!1758709) (not d!1758873) (not b_lambda!211013) (not d!1758701) (not b!5557039) (not b!5557081) (not b!5557099) (not b!5557008) (not bm!414347) (not b!5556663) (not d!1758711) (not b!5557042) (not b!5556741) (not d!1758655) (not b!5556967) (not b!5557105) (not bm!414349) (not b!5556625) (not b!5557154) (not b!5557073) (not b!5556622) (not b!5556855) (not b!5556645) (not b!5557062) (not b!5557132) (not bm!414289) (not b!5557118) (not b!5556664) (not b!5557077) (not b!5556776) (not b!5556849) (not b!5557069) (not b!5557114) (not b!5556785) (not d!1758721) (not bm!414327) (not b!5557152) (not b!5557049) (not b!5556783) (not d!1758661) (not b!5557075) (not b!5556652) (not b!5557092) (not b!5556859) (not b!5556650) (not b_lambda!211007) (not b!5556727) (not b!5557109) (not bm!414331) (not b!5556720) (not b!5556790) (not b!5557026) (not bm!414343) (not bm!414329) (not bm!414293) (not d!1758821) (not d!1758775) (not b!5557041) (not bs!1286908) (not b!5557129) (not b!5557056) (not d!1758675) (not b!5556802) (not b!5556915) (not b!5557103) (not bm!414356) (not b!5556740) (not b!5556923) (not d!1758667) (not d!1758719) (not b!5557153) (not bs!1286904) (not b!5557050) (not bm!414360) (not b!5556599) (not b!5557079) (not b!5556784) (not b!5556590) (not b!5557071) (not b!5556842) (not d!1758731) (not b!5556850) (not b!5556914) (not b!5557127) (not b!5557064) (not b!5556916) (not b!5557072) (not b!5556791) (not b!5557059) (not b!5557063) (not bm!414316) (not b!5556602) (not b!5557025) (not b!5556662) (not d!1758733) (not bm!414341) (not b!5556897) (not b!5557043) (not b!5556970) (not b!5556639) (not bm!414314) (not b!5557123) (not b!5556758) (not d!1758643) (not bs!1286905) (not b!5557146) (not b!5557093) (not b!5557150) (not b!5557085) (not bm!414351) (not b!5557155) (not d!1758801) (not b!5557107) (not b!5557149) (not b!5557144) tp_is_empty!40339 (not d!1758669) (not b!5557037) (not b!5557080) (not d!1758767) (not b!5557076) (not b!5557034) (not bm!414325) (not b!5557138) (not b!5557134) (not b!5557136) (not bm!414354) (not b!5557142) (not b!5556610) (not bm!414330) (not d!1758729) (not b!5556773) (not bm!414309) (not b!5557018) (not bm!414358) (not setNonEmpty!36990) (not b!5557128) (not d!1758781) (not b!5557119) (not bm!414323) (not d!1758737) (not b!5556593) (not b!5556944) (not b!5556787) (not b!5557108) (not d!1758673) (not d!1758713) (not d!1758671) (not b!5557067) (not b!5556624) (not b!5557065) (not b!5556760) (not b!5556848) (not b!5556748) (not b!5556640) (not b_lambda!211003))
(check-sat)
