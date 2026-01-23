; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!594388 () Bool)

(assert start!594388)

(declare-fun b!5797664 () Bool)

(assert (=> b!5797664 true))

(assert (=> b!5797664 true))

(declare-fun lambda!316272 () Int)

(declare-fun lambda!316271 () Int)

(assert (=> b!5797664 (not (= lambda!316272 lambda!316271))))

(assert (=> b!5797664 true))

(assert (=> b!5797664 true))

(declare-fun lambda!316273 () Int)

(assert (=> b!5797664 (not (= lambda!316273 lambda!316271))))

(assert (=> b!5797664 (not (= lambda!316273 lambda!316272))))

(assert (=> b!5797664 true))

(assert (=> b!5797664 true))

(declare-fun b!5797668 () Bool)

(assert (=> b!5797668 true))

(declare-fun b!5797661 () Bool)

(declare-fun e!3559786 () Bool)

(declare-fun tp_is_empty!40879 () Bool)

(assert (=> b!5797661 (= e!3559786 tp_is_empty!40879)))

(declare-fun setIsEmpty!38994 () Bool)

(declare-fun setRes!38994 () Bool)

(assert (=> setIsEmpty!38994 setRes!38994))

(declare-fun b!5797662 () Bool)

(declare-fun res!2445631 () Bool)

(declare-fun e!3559785 () Bool)

(assert (=> b!5797662 (=> res!2445631 e!3559785)))

(declare-datatypes ((C!31896 0))(
  ( (C!31897 (val!25650 Int)) )
))
(declare-datatypes ((Regex!15813 0))(
  ( (ElementMatch!15813 (c!1026709 C!31896)) (Concat!24658 (regOne!32138 Regex!15813) (regTwo!32138 Regex!15813)) (EmptyExpr!15813) (Star!15813 (reg!16142 Regex!15813)) (EmptyLang!15813) (Union!15813 (regOne!32139 Regex!15813) (regTwo!32139 Regex!15813)) )
))
(declare-fun lt!2297899 () Regex!15813)

(declare-fun r!7292 () Regex!15813)

(assert (=> b!5797662 (= res!2445631 (or (not (= lt!2297899 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5797663 () Bool)

(declare-fun e!3559787 () Bool)

(declare-fun lt!2297902 () Bool)

(assert (=> b!5797663 (= e!3559787 lt!2297902)))

(declare-fun e!3559791 () Bool)

(declare-fun e!3559788 () Bool)

(assert (=> b!5797664 (= e!3559791 e!3559788)))

(declare-fun res!2445644 () Bool)

(assert (=> b!5797664 (=> res!2445644 e!3559788)))

(declare-fun lt!2297892 () Bool)

(assert (=> b!5797664 (= res!2445644 (not (= lt!2297892 e!3559787)))))

(declare-fun res!2445642 () Bool)

(assert (=> b!5797664 (=> res!2445642 e!3559787)))

(declare-datatypes ((List!63738 0))(
  ( (Nil!63614) (Cons!63614 (h!70062 C!31896) (t!377087 List!63738)) )
))
(declare-fun s!2326 () List!63738)

(declare-fun isEmpty!35519 (List!63738) Bool)

(assert (=> b!5797664 (= res!2445642 (isEmpty!35519 s!2326))))

(declare-fun Exists!2913 (Int) Bool)

(assert (=> b!5797664 (= (Exists!2913 lambda!316271) (Exists!2913 lambda!316273))))

(declare-datatypes ((Unit!156886 0))(
  ( (Unit!156887) )
))
(declare-fun lt!2297894 () Unit!156886)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1542 (Regex!15813 Regex!15813 List!63738) Unit!156886)

(assert (=> b!5797664 (= lt!2297894 (lemmaExistCutMatchRandMatchRSpecEquivalent!1542 (reg!16142 r!7292) r!7292 s!2326))))

(assert (=> b!5797664 (= (Exists!2913 lambda!316271) (Exists!2913 lambda!316272))))

(declare-fun lt!2297896 () Unit!156886)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!594 (Regex!15813 List!63738) Unit!156886)

(assert (=> b!5797664 (= lt!2297896 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!594 (reg!16142 r!7292) s!2326))))

(assert (=> b!5797664 (= lt!2297902 (Exists!2913 lambda!316271))))

(declare-datatypes ((tuple2!65820 0))(
  ( (tuple2!65821 (_1!36213 List!63738) (_2!36213 List!63738)) )
))
(declare-datatypes ((Option!15822 0))(
  ( (None!15821) (Some!15821 (v!51883 tuple2!65820)) )
))
(declare-fun isDefined!12525 (Option!15822) Bool)

(declare-fun findConcatSeparation!2236 (Regex!15813 Regex!15813 List!63738 List!63738 List!63738) Option!15822)

(assert (=> b!5797664 (= lt!2297902 (isDefined!12525 (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 Nil!63614 s!2326 s!2326)))))

(declare-fun lt!2297904 () Unit!156886)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2000 (Regex!15813 Regex!15813 List!63738) Unit!156886)

(assert (=> b!5797664 (= lt!2297904 (lemmaFindConcatSeparationEquivalentToExists!2000 (reg!16142 r!7292) r!7292 s!2326))))

(declare-fun b!5797665 () Bool)

(declare-fun e!3559796 () Bool)

(assert (=> b!5797665 (= e!3559796 e!3559785)))

(declare-fun res!2445637 () Bool)

(assert (=> b!5797665 (=> res!2445637 e!3559785)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63739 0))(
  ( (Nil!63615) (Cons!63615 (h!70063 Regex!15813) (t!377088 List!63739)) )
))
(declare-datatypes ((Context!10394 0))(
  ( (Context!10395 (exprs!5697 List!63739)) )
))
(declare-fun lt!2297908 () (InoxSet Context!10394))

(declare-fun lt!2297901 () Context!10394)

(declare-fun derivationStepZipperDown!1151 (Regex!15813 Context!10394 C!31896) (InoxSet Context!10394))

(assert (=> b!5797665 (= res!2445637 (not (= lt!2297908 (derivationStepZipperDown!1151 (reg!16142 r!7292) lt!2297901 (h!70062 s!2326)))))))

(declare-fun lt!2297898 () List!63739)

(assert (=> b!5797665 (= lt!2297901 (Context!10395 lt!2297898))))

(declare-fun lt!2297905 () (InoxSet Context!10394))

(declare-fun lt!2297886 () Context!10394)

(declare-fun lambda!316274 () Int)

(declare-fun flatMap!1420 ((InoxSet Context!10394) Int) (InoxSet Context!10394))

(declare-fun derivationStepZipperUp!1077 (Context!10394 C!31896) (InoxSet Context!10394))

(assert (=> b!5797665 (= (flatMap!1420 lt!2297905 lambda!316274) (derivationStepZipperUp!1077 lt!2297886 (h!70062 s!2326)))))

(declare-fun lt!2297895 () Unit!156886)

(declare-fun lemmaFlatMapOnSingletonSet!952 ((InoxSet Context!10394) Context!10394 Int) Unit!156886)

(assert (=> b!5797665 (= lt!2297895 (lemmaFlatMapOnSingletonSet!952 lt!2297905 lt!2297886 lambda!316274))))

(declare-fun lt!2297885 () (InoxSet Context!10394))

(assert (=> b!5797665 (= lt!2297885 (derivationStepZipperUp!1077 lt!2297886 (h!70062 s!2326)))))

(assert (=> b!5797665 (= lt!2297905 (store ((as const (Array Context!10394 Bool)) false) lt!2297886 true))))

(assert (=> b!5797665 (= lt!2297886 (Context!10395 (Cons!63615 (reg!16142 r!7292) lt!2297898)))))

(assert (=> b!5797665 (= lt!2297898 (Cons!63615 r!7292 Nil!63615))))

(declare-fun b!5797666 () Bool)

(declare-fun e!3559790 () Bool)

(declare-fun tp!1600120 () Bool)

(assert (=> b!5797666 (= e!3559790 tp!1600120)))

(declare-fun b!5797667 () Bool)

(declare-fun res!2445634 () Bool)

(assert (=> b!5797667 (=> res!2445634 e!3559791)))

(declare-datatypes ((List!63740 0))(
  ( (Nil!63616) (Cons!63616 (h!70064 Context!10394) (t!377089 List!63740)) )
))
(declare-fun zl!343 () List!63740)

(get-info :version)

(assert (=> b!5797667 (= res!2445634 (not ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343)))))))

(declare-fun e!3559793 () Bool)

(assert (=> b!5797668 (= e!3559793 e!3559796)))

(declare-fun res!2445636 () Bool)

(assert (=> b!5797668 (=> res!2445636 e!3559796)))

(declare-fun lt!2297903 () (InoxSet Context!10394))

(assert (=> b!5797668 (= res!2445636 (not (= lt!2297908 lt!2297903)))))

(declare-fun z!1189 () (InoxSet Context!10394))

(assert (=> b!5797668 (= (flatMap!1420 z!1189 lambda!316274) (derivationStepZipperUp!1077 (h!70064 zl!343) (h!70062 s!2326)))))

(declare-fun lt!2297888 () Unit!156886)

(assert (=> b!5797668 (= lt!2297888 (lemmaFlatMapOnSingletonSet!952 z!1189 (h!70064 zl!343) lambda!316274))))

(declare-fun b!5797669 () Bool)

(declare-fun e!3559795 () Bool)

(assert (=> b!5797669 (= e!3559795 (not e!3559791))))

(declare-fun res!2445632 () Bool)

(assert (=> b!5797669 (=> res!2445632 e!3559791)))

(assert (=> b!5797669 (= res!2445632 (not ((_ is Cons!63616) zl!343)))))

(declare-fun matchRSpec!2916 (Regex!15813 List!63738) Bool)

(assert (=> b!5797669 (= lt!2297892 (matchRSpec!2916 r!7292 s!2326))))

(declare-fun matchR!7998 (Regex!15813 List!63738) Bool)

(assert (=> b!5797669 (= lt!2297892 (matchR!7998 r!7292 s!2326))))

(declare-fun lt!2297889 () Unit!156886)

(declare-fun mainMatchTheorem!2916 (Regex!15813 List!63738) Unit!156886)

(assert (=> b!5797669 (= lt!2297889 (mainMatchTheorem!2916 r!7292 s!2326))))

(declare-fun tp!1600127 () Bool)

(declare-fun e!3559792 () Bool)

(declare-fun b!5797670 () Bool)

(declare-fun e!3559797 () Bool)

(declare-fun inv!82779 (Context!10394) Bool)

(assert (=> b!5797670 (= e!3559792 (and (inv!82779 (h!70064 zl!343)) e!3559797 tp!1600127))))

(declare-fun b!5797671 () Bool)

(declare-fun e!3559789 () Bool)

(declare-fun tp!1600126 () Bool)

(assert (=> b!5797671 (= e!3559789 (and tp_is_empty!40879 tp!1600126))))

(declare-fun b!5797672 () Bool)

(declare-fun tp!1600125 () Bool)

(declare-fun tp!1600128 () Bool)

(assert (=> b!5797672 (= e!3559786 (and tp!1600125 tp!1600128))))

(declare-fun b!5797673 () Bool)

(declare-fun res!2445645 () Bool)

(assert (=> b!5797673 (=> res!2445645 e!3559791)))

(declare-fun isEmpty!35520 (List!63740) Bool)

(assert (=> b!5797673 (= res!2445645 (not (isEmpty!35520 (t!377089 zl!343))))))

(declare-fun setNonEmpty!38994 () Bool)

(declare-fun setElem!38994 () Context!10394)

(declare-fun tp!1600122 () Bool)

(assert (=> setNonEmpty!38994 (= setRes!38994 (and tp!1600122 (inv!82779 setElem!38994) e!3559790))))

(declare-fun setRest!38994 () (InoxSet Context!10394))

(assert (=> setNonEmpty!38994 (= z!1189 ((_ map or) (store ((as const (Array Context!10394 Bool)) false) setElem!38994 true) setRest!38994))))

(declare-fun b!5797674 () Bool)

(declare-fun res!2445633 () Bool)

(assert (=> b!5797674 (=> res!2445633 e!3559788)))

(assert (=> b!5797674 (= res!2445633 ((_ is Nil!63614) s!2326))))

(declare-fun b!5797675 () Bool)

(declare-fun res!2445639 () Bool)

(assert (=> b!5797675 (=> res!2445639 e!3559785)))

(declare-fun matchZipper!1941 ((InoxSet Context!10394) List!63738) Bool)

(declare-fun derivationStepZipper!1882 ((InoxSet Context!10394) C!31896) (InoxSet Context!10394))

(assert (=> b!5797675 (= res!2445639 (not (= (matchZipper!1941 lt!2297905 s!2326) (matchZipper!1941 (derivationStepZipper!1882 lt!2297905 (h!70062 s!2326)) (t!377087 s!2326)))))))

(declare-fun b!5797676 () Bool)

(declare-fun res!2445641 () Bool)

(assert (=> b!5797676 (=> res!2445641 e!3559791)))

(assert (=> b!5797676 (= res!2445641 (or ((_ is EmptyExpr!15813) r!7292) ((_ is EmptyLang!15813) r!7292) ((_ is ElementMatch!15813) r!7292) ((_ is Union!15813) r!7292) ((_ is Concat!24658) r!7292)))))

(declare-fun b!5797677 () Bool)

(declare-fun e!3559794 () Bool)

(assert (=> b!5797677 (= e!3559794 e!3559795)))

(declare-fun res!2445638 () Bool)

(assert (=> b!5797677 (=> (not res!2445638) (not e!3559795))))

(assert (=> b!5797677 (= res!2445638 (= r!7292 lt!2297899))))

(declare-fun unfocusZipper!1555 (List!63740) Regex!15813)

(assert (=> b!5797677 (= lt!2297899 (unfocusZipper!1555 zl!343))))

(declare-fun b!5797678 () Bool)

(declare-fun res!2445640 () Bool)

(assert (=> b!5797678 (=> res!2445640 e!3559791)))

(declare-fun generalisedUnion!1676 (List!63739) Regex!15813)

(declare-fun unfocusZipperList!1241 (List!63740) List!63739)

(assert (=> b!5797678 (= res!2445640 (not (= r!7292 (generalisedUnion!1676 (unfocusZipperList!1241 zl!343)))))))

(declare-fun b!5797679 () Bool)

(declare-fun lt!2297900 () (InoxSet Context!10394))

(assert (=> b!5797679 (= e!3559785 (= lt!2297908 (derivationStepZipper!1882 lt!2297900 (h!70062 s!2326))))))

(assert (=> b!5797679 (= (flatMap!1420 lt!2297900 lambda!316274) (derivationStepZipperUp!1077 lt!2297901 (h!70062 s!2326)))))

(declare-fun lt!2297893 () Unit!156886)

(assert (=> b!5797679 (= lt!2297893 (lemmaFlatMapOnSingletonSet!952 lt!2297900 lt!2297901 lambda!316274))))

(declare-fun lt!2297887 () Context!10394)

(declare-fun lt!2297907 () (InoxSet Context!10394))

(assert (=> b!5797679 (= (flatMap!1420 lt!2297907 lambda!316274) (derivationStepZipperUp!1077 lt!2297887 (h!70062 s!2326)))))

(declare-fun lt!2297897 () Unit!156886)

(assert (=> b!5797679 (= lt!2297897 (lemmaFlatMapOnSingletonSet!952 lt!2297907 lt!2297887 lambda!316274))))

(declare-fun lt!2297890 () (InoxSet Context!10394))

(assert (=> b!5797679 (= lt!2297890 (derivationStepZipperUp!1077 lt!2297901 (h!70062 s!2326)))))

(declare-fun lt!2297891 () (InoxSet Context!10394))

(assert (=> b!5797679 (= lt!2297891 (derivationStepZipperUp!1077 lt!2297887 (h!70062 s!2326)))))

(assert (=> b!5797679 (= lt!2297900 (store ((as const (Array Context!10394 Bool)) false) lt!2297901 true))))

(assert (=> b!5797679 (= lt!2297907 (store ((as const (Array Context!10394 Bool)) false) lt!2297887 true))))

(assert (=> b!5797679 (= lt!2297887 (Context!10395 (Cons!63615 (reg!16142 r!7292) Nil!63615)))))

(declare-fun b!5797680 () Bool)

(declare-fun tp!1600123 () Bool)

(assert (=> b!5797680 (= e!3559786 tp!1600123)))

(declare-fun b!5797681 () Bool)

(declare-fun res!2445646 () Bool)

(assert (=> b!5797681 (=> (not res!2445646) (not e!3559794))))

(declare-fun toList!9597 ((InoxSet Context!10394)) List!63740)

(assert (=> b!5797681 (= res!2445646 (= (toList!9597 z!1189) zl!343))))

(declare-fun b!5797682 () Bool)

(declare-fun res!2445635 () Bool)

(assert (=> b!5797682 (=> res!2445635 e!3559785)))

(assert (=> b!5797682 (= res!2445635 (not (= (unfocusZipper!1555 (Cons!63616 lt!2297886 Nil!63616)) (Concat!24658 (reg!16142 r!7292) r!7292))))))

(declare-fun res!2445643 () Bool)

(assert (=> start!594388 (=> (not res!2445643) (not e!3559794))))

(declare-fun validRegex!7549 (Regex!15813) Bool)

(assert (=> start!594388 (= res!2445643 (validRegex!7549 r!7292))))

(assert (=> start!594388 e!3559794))

(assert (=> start!594388 e!3559786))

(declare-fun condSetEmpty!38994 () Bool)

(assert (=> start!594388 (= condSetEmpty!38994 (= z!1189 ((as const (Array Context!10394 Bool)) false)))))

(assert (=> start!594388 setRes!38994))

(assert (=> start!594388 e!3559792))

(assert (=> start!594388 e!3559789))

(declare-fun b!5797683 () Bool)

(declare-fun res!2445629 () Bool)

(assert (=> b!5797683 (=> res!2445629 e!3559791)))

(declare-fun generalisedConcat!1428 (List!63739) Regex!15813)

(assert (=> b!5797683 (= res!2445629 (not (= r!7292 (generalisedConcat!1428 (exprs!5697 (h!70064 zl!343))))))))

(declare-fun b!5797684 () Bool)

(declare-fun tp!1600119 () Bool)

(declare-fun tp!1600121 () Bool)

(assert (=> b!5797684 (= e!3559786 (and tp!1600119 tp!1600121))))

(declare-fun b!5797685 () Bool)

(assert (=> b!5797685 (= e!3559788 e!3559793)))

(declare-fun res!2445630 () Bool)

(assert (=> b!5797685 (=> res!2445630 e!3559793)))

(declare-fun lt!2297906 () (InoxSet Context!10394))

(assert (=> b!5797685 (= res!2445630 (not (= lt!2297906 lt!2297903)))))

(assert (=> b!5797685 (= lt!2297903 (derivationStepZipperDown!1151 r!7292 (Context!10395 Nil!63615) (h!70062 s!2326)))))

(assert (=> b!5797685 (= lt!2297906 (derivationStepZipperUp!1077 (Context!10395 (Cons!63615 r!7292 Nil!63615)) (h!70062 s!2326)))))

(assert (=> b!5797685 (= lt!2297908 (derivationStepZipper!1882 z!1189 (h!70062 s!2326)))))

(declare-fun b!5797686 () Bool)

(declare-fun tp!1600124 () Bool)

(assert (=> b!5797686 (= e!3559797 tp!1600124)))

(assert (= (and start!594388 res!2445643) b!5797681))

(assert (= (and b!5797681 res!2445646) b!5797677))

(assert (= (and b!5797677 res!2445638) b!5797669))

(assert (= (and b!5797669 (not res!2445632)) b!5797673))

(assert (= (and b!5797673 (not res!2445645)) b!5797683))

(assert (= (and b!5797683 (not res!2445629)) b!5797667))

(assert (= (and b!5797667 (not res!2445634)) b!5797678))

(assert (= (and b!5797678 (not res!2445640)) b!5797676))

(assert (= (and b!5797676 (not res!2445641)) b!5797664))

(assert (= (and b!5797664 (not res!2445642)) b!5797663))

(assert (= (and b!5797664 (not res!2445644)) b!5797674))

(assert (= (and b!5797674 (not res!2445633)) b!5797685))

(assert (= (and b!5797685 (not res!2445630)) b!5797668))

(assert (= (and b!5797668 (not res!2445636)) b!5797665))

(assert (= (and b!5797665 (not res!2445637)) b!5797675))

(assert (= (and b!5797675 (not res!2445639)) b!5797662))

(assert (= (and b!5797662 (not res!2445631)) b!5797682))

(assert (= (and b!5797682 (not res!2445635)) b!5797679))

(assert (= (and start!594388 ((_ is ElementMatch!15813) r!7292)) b!5797661))

(assert (= (and start!594388 ((_ is Concat!24658) r!7292)) b!5797684))

(assert (= (and start!594388 ((_ is Star!15813) r!7292)) b!5797680))

(assert (= (and start!594388 ((_ is Union!15813) r!7292)) b!5797672))

(assert (= (and start!594388 condSetEmpty!38994) setIsEmpty!38994))

(assert (= (and start!594388 (not condSetEmpty!38994)) setNonEmpty!38994))

(assert (= setNonEmpty!38994 b!5797666))

(assert (= b!5797670 b!5797686))

(assert (= (and start!594388 ((_ is Cons!63616) zl!343)) b!5797670))

(assert (= (and start!594388 ((_ is Cons!63614) s!2326)) b!5797671))

(declare-fun m!6739074 () Bool)

(assert (=> b!5797682 m!6739074))

(declare-fun m!6739076 () Bool)

(assert (=> b!5797677 m!6739076))

(declare-fun m!6739078 () Bool)

(assert (=> b!5797665 m!6739078))

(declare-fun m!6739080 () Bool)

(assert (=> b!5797665 m!6739080))

(declare-fun m!6739082 () Bool)

(assert (=> b!5797665 m!6739082))

(declare-fun m!6739084 () Bool)

(assert (=> b!5797665 m!6739084))

(declare-fun m!6739086 () Bool)

(assert (=> b!5797665 m!6739086))

(declare-fun m!6739088 () Bool)

(assert (=> b!5797678 m!6739088))

(assert (=> b!5797678 m!6739088))

(declare-fun m!6739090 () Bool)

(assert (=> b!5797678 m!6739090))

(declare-fun m!6739092 () Bool)

(assert (=> b!5797664 m!6739092))

(declare-fun m!6739094 () Bool)

(assert (=> b!5797664 m!6739094))

(assert (=> b!5797664 m!6739092))

(declare-fun m!6739096 () Bool)

(assert (=> b!5797664 m!6739096))

(assert (=> b!5797664 m!6739092))

(declare-fun m!6739098 () Bool)

(assert (=> b!5797664 m!6739098))

(declare-fun m!6739100 () Bool)

(assert (=> b!5797664 m!6739100))

(declare-fun m!6739102 () Bool)

(assert (=> b!5797664 m!6739102))

(declare-fun m!6739104 () Bool)

(assert (=> b!5797664 m!6739104))

(declare-fun m!6739106 () Bool)

(assert (=> b!5797664 m!6739106))

(assert (=> b!5797664 m!6739098))

(declare-fun m!6739108 () Bool)

(assert (=> b!5797664 m!6739108))

(declare-fun m!6739110 () Bool)

(assert (=> b!5797675 m!6739110))

(declare-fun m!6739112 () Bool)

(assert (=> b!5797675 m!6739112))

(assert (=> b!5797675 m!6739112))

(declare-fun m!6739114 () Bool)

(assert (=> b!5797675 m!6739114))

(declare-fun m!6739116 () Bool)

(assert (=> b!5797685 m!6739116))

(declare-fun m!6739118 () Bool)

(assert (=> b!5797685 m!6739118))

(declare-fun m!6739120 () Bool)

(assert (=> b!5797685 m!6739120))

(declare-fun m!6739122 () Bool)

(assert (=> setNonEmpty!38994 m!6739122))

(declare-fun m!6739124 () Bool)

(assert (=> b!5797683 m!6739124))

(declare-fun m!6739126 () Bool)

(assert (=> b!5797679 m!6739126))

(declare-fun m!6739128 () Bool)

(assert (=> b!5797679 m!6739128))

(declare-fun m!6739130 () Bool)

(assert (=> b!5797679 m!6739130))

(declare-fun m!6739132 () Bool)

(assert (=> b!5797679 m!6739132))

(declare-fun m!6739134 () Bool)

(assert (=> b!5797679 m!6739134))

(declare-fun m!6739136 () Bool)

(assert (=> b!5797679 m!6739136))

(declare-fun m!6739138 () Bool)

(assert (=> b!5797679 m!6739138))

(declare-fun m!6739140 () Bool)

(assert (=> b!5797679 m!6739140))

(declare-fun m!6739142 () Bool)

(assert (=> b!5797679 m!6739142))

(declare-fun m!6739144 () Bool)

(assert (=> b!5797681 m!6739144))

(declare-fun m!6739146 () Bool)

(assert (=> b!5797670 m!6739146))

(declare-fun m!6739148 () Bool)

(assert (=> start!594388 m!6739148))

(declare-fun m!6739150 () Bool)

(assert (=> b!5797673 m!6739150))

(declare-fun m!6739152 () Bool)

(assert (=> b!5797669 m!6739152))

(declare-fun m!6739154 () Bool)

(assert (=> b!5797669 m!6739154))

(declare-fun m!6739156 () Bool)

(assert (=> b!5797669 m!6739156))

(declare-fun m!6739158 () Bool)

(assert (=> b!5797668 m!6739158))

(declare-fun m!6739160 () Bool)

(assert (=> b!5797668 m!6739160))

(declare-fun m!6739162 () Bool)

(assert (=> b!5797668 m!6739162))

(check-sat (not setNonEmpty!38994) (not b!5797682) (not b!5797675) (not b!5797681) (not b!5797668) (not b!5797670) (not b!5797678) (not b!5797669) (not b!5797684) (not b!5797685) (not b!5797683) (not b!5797671) (not b!5797672) (not start!594388) (not b!5797677) (not b!5797686) tp_is_empty!40879 (not b!5797679) (not b!5797673) (not b!5797666) (not b!5797680) (not b!5797664) (not b!5797665))
(check-sat)
(get-model)

(declare-fun d!1826202 () Bool)

(declare-fun lt!2297911 () Regex!15813)

(assert (=> d!1826202 (validRegex!7549 lt!2297911)))

(assert (=> d!1826202 (= lt!2297911 (generalisedUnion!1676 (unfocusZipperList!1241 (Cons!63616 lt!2297886 Nil!63616))))))

(assert (=> d!1826202 (= (unfocusZipper!1555 (Cons!63616 lt!2297886 Nil!63616)) lt!2297911)))

(declare-fun bs!1368564 () Bool)

(assert (= bs!1368564 d!1826202))

(declare-fun m!6739164 () Bool)

(assert (=> bs!1368564 m!6739164))

(declare-fun m!6739166 () Bool)

(assert (=> bs!1368564 m!6739166))

(assert (=> bs!1368564 m!6739166))

(declare-fun m!6739168 () Bool)

(assert (=> bs!1368564 m!6739168))

(assert (=> b!5797682 d!1826202))

(declare-fun b!5797711 () Bool)

(declare-fun e!3559812 () Bool)

(declare-fun call!451995 () Bool)

(assert (=> b!5797711 (= e!3559812 call!451995)))

(declare-fun bm!451988 () Bool)

(declare-fun call!451994 () Bool)

(declare-fun c!1026714 () Bool)

(assert (=> bm!451988 (= call!451994 (validRegex!7549 (ite c!1026714 (regOne!32139 r!7292) (regOne!32138 r!7292))))))

(declare-fun c!1026715 () Bool)

(declare-fun call!451993 () Bool)

(declare-fun bm!451989 () Bool)

(assert (=> bm!451989 (= call!451993 (validRegex!7549 (ite c!1026715 (reg!16142 r!7292) (ite c!1026714 (regTwo!32139 r!7292) (regTwo!32138 r!7292)))))))

(declare-fun b!5797712 () Bool)

(declare-fun e!3559813 () Bool)

(declare-fun e!3559818 () Bool)

(assert (=> b!5797712 (= e!3559813 e!3559818)))

(declare-fun res!2445660 () Bool)

(declare-fun nullable!5839 (Regex!15813) Bool)

(assert (=> b!5797712 (= res!2445660 (not (nullable!5839 (reg!16142 r!7292))))))

(assert (=> b!5797712 (=> (not res!2445660) (not e!3559818))))

(declare-fun b!5797713 () Bool)

(declare-fun e!3559815 () Bool)

(assert (=> b!5797713 (= e!3559815 call!451995)))

(declare-fun b!5797714 () Bool)

(declare-fun e!3559816 () Bool)

(assert (=> b!5797714 (= e!3559813 e!3559816)))

(assert (=> b!5797714 (= c!1026714 ((_ is Union!15813) r!7292))))

(declare-fun b!5797715 () Bool)

(declare-fun res!2445657 () Bool)

(assert (=> b!5797715 (=> (not res!2445657) (not e!3559812))))

(assert (=> b!5797715 (= res!2445657 call!451994)))

(assert (=> b!5797715 (= e!3559816 e!3559812)))

(declare-fun b!5797716 () Bool)

(declare-fun e!3559814 () Bool)

(assert (=> b!5797716 (= e!3559814 e!3559815)))

(declare-fun res!2445659 () Bool)

(assert (=> b!5797716 (=> (not res!2445659) (not e!3559815))))

(assert (=> b!5797716 (= res!2445659 call!451994)))

(declare-fun d!1826204 () Bool)

(declare-fun res!2445658 () Bool)

(declare-fun e!3559817 () Bool)

(assert (=> d!1826204 (=> res!2445658 e!3559817)))

(assert (=> d!1826204 (= res!2445658 ((_ is ElementMatch!15813) r!7292))))

(assert (=> d!1826204 (= (validRegex!7549 r!7292) e!3559817)))

(declare-fun b!5797717 () Bool)

(assert (=> b!5797717 (= e!3559817 e!3559813)))

(assert (=> b!5797717 (= c!1026715 ((_ is Star!15813) r!7292))))

(declare-fun b!5797718 () Bool)

(assert (=> b!5797718 (= e!3559818 call!451993)))

(declare-fun bm!451990 () Bool)

(assert (=> bm!451990 (= call!451995 call!451993)))

(declare-fun b!5797719 () Bool)

(declare-fun res!2445661 () Bool)

(assert (=> b!5797719 (=> res!2445661 e!3559814)))

(assert (=> b!5797719 (= res!2445661 (not ((_ is Concat!24658) r!7292)))))

(assert (=> b!5797719 (= e!3559816 e!3559814)))

(assert (= (and d!1826204 (not res!2445658)) b!5797717))

(assert (= (and b!5797717 c!1026715) b!5797712))

(assert (= (and b!5797717 (not c!1026715)) b!5797714))

(assert (= (and b!5797712 res!2445660) b!5797718))

(assert (= (and b!5797714 c!1026714) b!5797715))

(assert (= (and b!5797714 (not c!1026714)) b!5797719))

(assert (= (and b!5797715 res!2445657) b!5797711))

(assert (= (and b!5797719 (not res!2445661)) b!5797716))

(assert (= (and b!5797716 res!2445659) b!5797713))

(assert (= (or b!5797711 b!5797713) bm!451990))

(assert (= (or b!5797715 b!5797716) bm!451988))

(assert (= (or b!5797718 bm!451990) bm!451989))

(declare-fun m!6739170 () Bool)

(assert (=> bm!451988 m!6739170))

(declare-fun m!6739172 () Bool)

(assert (=> bm!451989 m!6739172))

(declare-fun m!6739174 () Bool)

(assert (=> b!5797712 m!6739174))

(assert (=> start!594388 d!1826204))

(declare-fun d!1826206 () Bool)

(declare-fun e!3559821 () Bool)

(assert (=> d!1826206 e!3559821))

(declare-fun res!2445664 () Bool)

(assert (=> d!1826206 (=> (not res!2445664) (not e!3559821))))

(declare-fun lt!2297914 () List!63740)

(declare-fun noDuplicate!1707 (List!63740) Bool)

(assert (=> d!1826206 (= res!2445664 (noDuplicate!1707 lt!2297914))))

(declare-fun choose!44007 ((InoxSet Context!10394)) List!63740)

(assert (=> d!1826206 (= lt!2297914 (choose!44007 z!1189))))

(assert (=> d!1826206 (= (toList!9597 z!1189) lt!2297914)))

(declare-fun b!5797722 () Bool)

(declare-fun content!11639 (List!63740) (InoxSet Context!10394))

(assert (=> b!5797722 (= e!3559821 (= (content!11639 lt!2297914) z!1189))))

(assert (= (and d!1826206 res!2445664) b!5797722))

(declare-fun m!6739176 () Bool)

(assert (=> d!1826206 m!6739176))

(declare-fun m!6739178 () Bool)

(assert (=> d!1826206 m!6739178))

(declare-fun m!6739180 () Bool)

(assert (=> b!5797722 m!6739180))

(assert (=> b!5797681 d!1826206))

(declare-fun bs!1368567 () Bool)

(declare-fun d!1826210 () Bool)

(assert (= bs!1368567 (and d!1826210 b!5797664)))

(declare-fun lambda!316279 () Int)

(assert (=> bs!1368567 (= (= (Star!15813 (reg!16142 r!7292)) r!7292) (= lambda!316279 lambda!316271))))

(assert (=> bs!1368567 (not (= lambda!316279 lambda!316272))))

(assert (=> bs!1368567 (not (= lambda!316279 lambda!316273))))

(assert (=> d!1826210 true))

(assert (=> d!1826210 true))

(declare-fun lambda!316280 () Int)

(assert (=> bs!1368567 (not (= lambda!316280 lambda!316271))))

(assert (=> bs!1368567 (= (= (Star!15813 (reg!16142 r!7292)) r!7292) (= lambda!316280 lambda!316272))))

(assert (=> bs!1368567 (not (= lambda!316280 lambda!316273))))

(declare-fun bs!1368568 () Bool)

(assert (= bs!1368568 d!1826210))

(assert (=> bs!1368568 (not (= lambda!316280 lambda!316279))))

(assert (=> d!1826210 true))

(assert (=> d!1826210 true))

(assert (=> d!1826210 (= (Exists!2913 lambda!316279) (Exists!2913 lambda!316280))))

(declare-fun lt!2297920 () Unit!156886)

(declare-fun choose!44008 (Regex!15813 List!63738) Unit!156886)

(assert (=> d!1826210 (= lt!2297920 (choose!44008 (reg!16142 r!7292) s!2326))))

(assert (=> d!1826210 (validRegex!7549 (reg!16142 r!7292))))

(assert (=> d!1826210 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!594 (reg!16142 r!7292) s!2326) lt!2297920)))

(declare-fun m!6739202 () Bool)

(assert (=> bs!1368568 m!6739202))

(declare-fun m!6739204 () Bool)

(assert (=> bs!1368568 m!6739204))

(declare-fun m!6739206 () Bool)

(assert (=> bs!1368568 m!6739206))

(declare-fun m!6739208 () Bool)

(assert (=> bs!1368568 m!6739208))

(assert (=> b!5797664 d!1826210))

(declare-fun d!1826220 () Bool)

(declare-fun choose!44009 (Int) Bool)

(assert (=> d!1826220 (= (Exists!2913 lambda!316273) (choose!44009 lambda!316273))))

(declare-fun bs!1368569 () Bool)

(assert (= bs!1368569 d!1826220))

(declare-fun m!6739216 () Bool)

(assert (=> bs!1368569 m!6739216))

(assert (=> b!5797664 d!1826220))

(declare-fun d!1826224 () Bool)

(assert (=> d!1826224 (= (isEmpty!35519 s!2326) ((_ is Nil!63614) s!2326))))

(assert (=> b!5797664 d!1826224))

(declare-fun d!1826226 () Bool)

(assert (=> d!1826226 (= (Exists!2913 lambda!316272) (choose!44009 lambda!316272))))

(declare-fun bs!1368570 () Bool)

(assert (= bs!1368570 d!1826226))

(declare-fun m!6739218 () Bool)

(assert (=> bs!1368570 m!6739218))

(assert (=> b!5797664 d!1826226))

(declare-fun d!1826228 () Bool)

(declare-fun isEmpty!35522 (Option!15822) Bool)

(assert (=> d!1826228 (= (isDefined!12525 (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 Nil!63614 s!2326 s!2326)) (not (isEmpty!35522 (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 Nil!63614 s!2326 s!2326))))))

(declare-fun bs!1368571 () Bool)

(assert (= bs!1368571 d!1826228))

(assert (=> bs!1368571 m!6739098))

(declare-fun m!6739220 () Bool)

(assert (=> bs!1368571 m!6739220))

(assert (=> b!5797664 d!1826228))

(declare-fun bs!1368577 () Bool)

(declare-fun d!1826230 () Bool)

(assert (= bs!1368577 (and d!1826230 d!1826210)))

(declare-fun lambda!316291 () Int)

(assert (=> bs!1368577 (= (= r!7292 (Star!15813 (reg!16142 r!7292))) (= lambda!316291 lambda!316279))))

(declare-fun bs!1368578 () Bool)

(assert (= bs!1368578 (and d!1826230 b!5797664)))

(assert (=> bs!1368578 (= lambda!316291 lambda!316271)))

(assert (=> bs!1368577 (not (= lambda!316291 lambda!316280))))

(assert (=> bs!1368578 (not (= lambda!316291 lambda!316273))))

(assert (=> bs!1368578 (not (= lambda!316291 lambda!316272))))

(assert (=> d!1826230 true))

(assert (=> d!1826230 true))

(assert (=> d!1826230 true))

(declare-fun lambda!316292 () Int)

(assert (=> bs!1368577 (not (= lambda!316292 lambda!316279))))

(assert (=> bs!1368578 (not (= lambda!316292 lambda!316271))))

(assert (=> bs!1368577 (not (= lambda!316292 lambda!316280))))

(declare-fun bs!1368579 () Bool)

(assert (= bs!1368579 d!1826230))

(assert (=> bs!1368579 (not (= lambda!316292 lambda!316291))))

(assert (=> bs!1368578 (= lambda!316292 lambda!316273)))

(assert (=> bs!1368578 (not (= lambda!316292 lambda!316272))))

(assert (=> d!1826230 true))

(assert (=> d!1826230 true))

(assert (=> d!1826230 true))

(assert (=> d!1826230 (= (Exists!2913 lambda!316291) (Exists!2913 lambda!316292))))

(declare-fun lt!2297927 () Unit!156886)

(declare-fun choose!44010 (Regex!15813 Regex!15813 List!63738) Unit!156886)

(assert (=> d!1826230 (= lt!2297927 (choose!44010 (reg!16142 r!7292) r!7292 s!2326))))

(assert (=> d!1826230 (validRegex!7549 (reg!16142 r!7292))))

(assert (=> d!1826230 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1542 (reg!16142 r!7292) r!7292 s!2326) lt!2297927)))

(declare-fun m!6739282 () Bool)

(assert (=> bs!1368579 m!6739282))

(declare-fun m!6739284 () Bool)

(assert (=> bs!1368579 m!6739284))

(declare-fun m!6739286 () Bool)

(assert (=> bs!1368579 m!6739286))

(assert (=> bs!1368579 m!6739208))

(assert (=> b!5797664 d!1826230))

(declare-fun d!1826248 () Bool)

(assert (=> d!1826248 (= (Exists!2913 lambda!316271) (choose!44009 lambda!316271))))

(declare-fun bs!1368580 () Bool)

(assert (= bs!1368580 d!1826248))

(declare-fun m!6739288 () Bool)

(assert (=> bs!1368580 m!6739288))

(assert (=> b!5797664 d!1826248))

(declare-fun b!5797897 () Bool)

(declare-fun e!3559923 () Option!15822)

(assert (=> b!5797897 (= e!3559923 None!15821)))

(declare-fun d!1826250 () Bool)

(declare-fun e!3559925 () Bool)

(assert (=> d!1826250 e!3559925))

(declare-fun res!2445740 () Bool)

(assert (=> d!1826250 (=> res!2445740 e!3559925)))

(declare-fun e!3559921 () Bool)

(assert (=> d!1826250 (= res!2445740 e!3559921)))

(declare-fun res!2445741 () Bool)

(assert (=> d!1826250 (=> (not res!2445741) (not e!3559921))))

(declare-fun lt!2297942 () Option!15822)

(assert (=> d!1826250 (= res!2445741 (isDefined!12525 lt!2297942))))

(declare-fun e!3559922 () Option!15822)

(assert (=> d!1826250 (= lt!2297942 e!3559922)))

(declare-fun c!1026767 () Bool)

(declare-fun e!3559924 () Bool)

(assert (=> d!1826250 (= c!1026767 e!3559924)))

(declare-fun res!2445742 () Bool)

(assert (=> d!1826250 (=> (not res!2445742) (not e!3559924))))

(assert (=> d!1826250 (= res!2445742 (matchR!7998 (reg!16142 r!7292) Nil!63614))))

(assert (=> d!1826250 (validRegex!7549 (reg!16142 r!7292))))

(assert (=> d!1826250 (= (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 Nil!63614 s!2326 s!2326) lt!2297942)))

(declare-fun b!5797898 () Bool)

(assert (=> b!5797898 (= e!3559922 (Some!15821 (tuple2!65821 Nil!63614 s!2326)))))

(declare-fun b!5797899 () Bool)

(assert (=> b!5797899 (= e!3559925 (not (isDefined!12525 lt!2297942)))))

(declare-fun b!5797900 () Bool)

(assert (=> b!5797900 (= e!3559922 e!3559923)))

(declare-fun c!1026768 () Bool)

(assert (=> b!5797900 (= c!1026768 ((_ is Nil!63614) s!2326))))

(declare-fun b!5797901 () Bool)

(declare-fun ++!14024 (List!63738 List!63738) List!63738)

(declare-fun get!21956 (Option!15822) tuple2!65820)

(assert (=> b!5797901 (= e!3559921 (= (++!14024 (_1!36213 (get!21956 lt!2297942)) (_2!36213 (get!21956 lt!2297942))) s!2326))))

(declare-fun b!5797902 () Bool)

(declare-fun res!2445743 () Bool)

(assert (=> b!5797902 (=> (not res!2445743) (not e!3559921))))

(assert (=> b!5797902 (= res!2445743 (matchR!7998 (reg!16142 r!7292) (_1!36213 (get!21956 lt!2297942))))))

(declare-fun b!5797903 () Bool)

(declare-fun res!2445739 () Bool)

(assert (=> b!5797903 (=> (not res!2445739) (not e!3559921))))

(assert (=> b!5797903 (= res!2445739 (matchR!7998 r!7292 (_2!36213 (get!21956 lt!2297942))))))

(declare-fun b!5797904 () Bool)

(declare-fun lt!2297940 () Unit!156886)

(declare-fun lt!2297941 () Unit!156886)

(assert (=> b!5797904 (= lt!2297940 lt!2297941)))

(assert (=> b!5797904 (= (++!14024 (++!14024 Nil!63614 (Cons!63614 (h!70062 s!2326) Nil!63614)) (t!377087 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2131 (List!63738 C!31896 List!63738 List!63738) Unit!156886)

(assert (=> b!5797904 (= lt!2297941 (lemmaMoveElementToOtherListKeepsConcatEq!2131 Nil!63614 (h!70062 s!2326) (t!377087 s!2326) s!2326))))

(assert (=> b!5797904 (= e!3559923 (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 (++!14024 Nil!63614 (Cons!63614 (h!70062 s!2326) Nil!63614)) (t!377087 s!2326) s!2326))))

(declare-fun b!5797905 () Bool)

(assert (=> b!5797905 (= e!3559924 (matchR!7998 r!7292 s!2326))))

(assert (= (and d!1826250 res!2445742) b!5797905))

(assert (= (and d!1826250 c!1026767) b!5797898))

(assert (= (and d!1826250 (not c!1026767)) b!5797900))

(assert (= (and b!5797900 c!1026768) b!5797897))

(assert (= (and b!5797900 (not c!1026768)) b!5797904))

(assert (= (and d!1826250 res!2445741) b!5797902))

(assert (= (and b!5797902 res!2445743) b!5797903))

(assert (= (and b!5797903 res!2445739) b!5797901))

(assert (= (and d!1826250 (not res!2445740)) b!5797899))

(assert (=> b!5797905 m!6739154))

(declare-fun m!6739308 () Bool)

(assert (=> d!1826250 m!6739308))

(declare-fun m!6739310 () Bool)

(assert (=> d!1826250 m!6739310))

(assert (=> d!1826250 m!6739208))

(declare-fun m!6739312 () Bool)

(assert (=> b!5797902 m!6739312))

(declare-fun m!6739314 () Bool)

(assert (=> b!5797902 m!6739314))

(declare-fun m!6739316 () Bool)

(assert (=> b!5797904 m!6739316))

(assert (=> b!5797904 m!6739316))

(declare-fun m!6739318 () Bool)

(assert (=> b!5797904 m!6739318))

(declare-fun m!6739320 () Bool)

(assert (=> b!5797904 m!6739320))

(assert (=> b!5797904 m!6739316))

(declare-fun m!6739322 () Bool)

(assert (=> b!5797904 m!6739322))

(assert (=> b!5797903 m!6739312))

(declare-fun m!6739324 () Bool)

(assert (=> b!5797903 m!6739324))

(assert (=> b!5797901 m!6739312))

(declare-fun m!6739326 () Bool)

(assert (=> b!5797901 m!6739326))

(assert (=> b!5797899 m!6739308))

(assert (=> b!5797664 d!1826250))

(declare-fun bs!1368589 () Bool)

(declare-fun d!1826262 () Bool)

(assert (= bs!1368589 (and d!1826262 d!1826210)))

(declare-fun lambda!316309 () Int)

(assert (=> bs!1368589 (= (= r!7292 (Star!15813 (reg!16142 r!7292))) (= lambda!316309 lambda!316279))))

(declare-fun bs!1368590 () Bool)

(assert (= bs!1368590 (and d!1826262 d!1826230)))

(assert (=> bs!1368590 (not (= lambda!316309 lambda!316292))))

(declare-fun bs!1368591 () Bool)

(assert (= bs!1368591 (and d!1826262 b!5797664)))

(assert (=> bs!1368591 (= lambda!316309 lambda!316271)))

(assert (=> bs!1368589 (not (= lambda!316309 lambda!316280))))

(assert (=> bs!1368590 (= lambda!316309 lambda!316291)))

(assert (=> bs!1368591 (not (= lambda!316309 lambda!316273))))

(assert (=> bs!1368591 (not (= lambda!316309 lambda!316272))))

(assert (=> d!1826262 true))

(assert (=> d!1826262 true))

(assert (=> d!1826262 true))

(assert (=> d!1826262 (= (isDefined!12525 (findConcatSeparation!2236 (reg!16142 r!7292) r!7292 Nil!63614 s!2326 s!2326)) (Exists!2913 lambda!316309))))

(declare-fun lt!2297956 () Unit!156886)

(declare-fun choose!44012 (Regex!15813 Regex!15813 List!63738) Unit!156886)

(assert (=> d!1826262 (= lt!2297956 (choose!44012 (reg!16142 r!7292) r!7292 s!2326))))

(assert (=> d!1826262 (validRegex!7549 (reg!16142 r!7292))))

(assert (=> d!1826262 (= (lemmaFindConcatSeparationEquivalentToExists!2000 (reg!16142 r!7292) r!7292 s!2326) lt!2297956)))

(declare-fun bs!1368592 () Bool)

(assert (= bs!1368592 d!1826262))

(declare-fun m!6739350 () Bool)

(assert (=> bs!1368592 m!6739350))

(assert (=> bs!1368592 m!6739098))

(assert (=> bs!1368592 m!6739208))

(assert (=> bs!1368592 m!6739098))

(assert (=> bs!1368592 m!6739100))

(declare-fun m!6739352 () Bool)

(assert (=> bs!1368592 m!6739352))

(assert (=> b!5797664 d!1826262))

(declare-fun b!5798006 () Bool)

(declare-fun e!3559987 () (InoxSet Context!10394))

(declare-fun call!452045 () (InoxSet Context!10394))

(declare-fun call!452050 () (InoxSet Context!10394))

(assert (=> b!5798006 (= e!3559987 ((_ map or) call!452045 call!452050))))

(declare-fun b!5798007 () Bool)

(declare-fun e!3559982 () (InoxSet Context!10394))

(assert (=> b!5798007 (= e!3559982 (store ((as const (Array Context!10394 Bool)) false) (Context!10395 Nil!63615) true))))

(declare-fun call!452048 () List!63739)

(declare-fun c!1026797 () Bool)

(declare-fun c!1026800 () Bool)

(declare-fun bm!452040 () Bool)

(declare-fun $colon$colon!1794 (List!63739 Regex!15813) List!63739)

(assert (=> bm!452040 (= call!452048 ($colon$colon!1794 (exprs!5697 (Context!10395 Nil!63615)) (ite (or c!1026800 c!1026797) (regTwo!32138 r!7292) r!7292)))))

(declare-fun bm!452041 () Bool)

(declare-fun call!452047 () (InoxSet Context!10394))

(assert (=> bm!452041 (= call!452050 call!452047)))

(declare-fun b!5798008 () Bool)

(declare-fun e!3559983 () (InoxSet Context!10394))

(declare-fun call!452049 () (InoxSet Context!10394))

(assert (=> b!5798008 (= e!3559983 call!452049)))

(declare-fun b!5798009 () Bool)

(declare-fun e!3559984 () Bool)

(assert (=> b!5798009 (= c!1026800 e!3559984)))

(declare-fun res!2445788 () Bool)

(assert (=> b!5798009 (=> (not res!2445788) (not e!3559984))))

(assert (=> b!5798009 (= res!2445788 ((_ is Concat!24658) r!7292))))

(declare-fun e!3559986 () (InoxSet Context!10394))

(assert (=> b!5798009 (= e!3559986 e!3559987)))

(declare-fun b!5798010 () Bool)

(assert (=> b!5798010 (= e!3559984 (nullable!5839 (regOne!32138 r!7292)))))

(declare-fun c!1026801 () Bool)

(declare-fun bm!452042 () Bool)

(assert (=> bm!452042 (= call!452045 (derivationStepZipperDown!1151 (ite c!1026801 (regTwo!32139 r!7292) (regOne!32138 r!7292)) (ite c!1026801 (Context!10395 Nil!63615) (Context!10395 call!452048)) (h!70062 s!2326)))))

(declare-fun bm!452043 () Bool)

(declare-fun call!452046 () List!63739)

(assert (=> bm!452043 (= call!452046 call!452048)))

(declare-fun b!5798011 () Bool)

(declare-fun e!3559985 () (InoxSet Context!10394))

(assert (=> b!5798011 (= e!3559987 e!3559985)))

(assert (=> b!5798011 (= c!1026797 ((_ is Concat!24658) r!7292))))

(declare-fun b!5798012 () Bool)

(declare-fun c!1026799 () Bool)

(assert (=> b!5798012 (= c!1026799 ((_ is Star!15813) r!7292))))

(assert (=> b!5798012 (= e!3559985 e!3559983)))

(declare-fun b!5798013 () Bool)

(assert (=> b!5798013 (= e!3559983 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452044 () Bool)

(assert (=> bm!452044 (= call!452047 (derivationStepZipperDown!1151 (ite c!1026801 (regOne!32139 r!7292) (ite c!1026800 (regTwo!32138 r!7292) (ite c!1026797 (regOne!32138 r!7292) (reg!16142 r!7292)))) (ite (or c!1026801 c!1026800) (Context!10395 Nil!63615) (Context!10395 call!452046)) (h!70062 s!2326)))))

(declare-fun b!5798014 () Bool)

(assert (=> b!5798014 (= e!3559982 e!3559986)))

(assert (=> b!5798014 (= c!1026801 ((_ is Union!15813) r!7292))))

(declare-fun b!5798015 () Bool)

(assert (=> b!5798015 (= e!3559985 call!452049)))

(declare-fun bm!452045 () Bool)

(assert (=> bm!452045 (= call!452049 call!452050)))

(declare-fun b!5798016 () Bool)

(assert (=> b!5798016 (= e!3559986 ((_ map or) call!452047 call!452045))))

(declare-fun d!1826268 () Bool)

(declare-fun c!1026798 () Bool)

(assert (=> d!1826268 (= c!1026798 (and ((_ is ElementMatch!15813) r!7292) (= (c!1026709 r!7292) (h!70062 s!2326))))))

(assert (=> d!1826268 (= (derivationStepZipperDown!1151 r!7292 (Context!10395 Nil!63615) (h!70062 s!2326)) e!3559982)))

(assert (= (and d!1826268 c!1026798) b!5798007))

(assert (= (and d!1826268 (not c!1026798)) b!5798014))

(assert (= (and b!5798014 c!1026801) b!5798016))

(assert (= (and b!5798014 (not c!1026801)) b!5798009))

(assert (= (and b!5798009 res!2445788) b!5798010))

(assert (= (and b!5798009 c!1026800) b!5798006))

(assert (= (and b!5798009 (not c!1026800)) b!5798011))

(assert (= (and b!5798011 c!1026797) b!5798015))

(assert (= (and b!5798011 (not c!1026797)) b!5798012))

(assert (= (and b!5798012 c!1026799) b!5798008))

(assert (= (and b!5798012 (not c!1026799)) b!5798013))

(assert (= (or b!5798015 b!5798008) bm!452043))

(assert (= (or b!5798015 b!5798008) bm!452045))

(assert (= (or b!5798006 bm!452043) bm!452040))

(assert (= (or b!5798006 bm!452045) bm!452041))

(assert (= (or b!5798016 b!5798006) bm!452042))

(assert (= (or b!5798016 bm!452041) bm!452044))

(declare-fun m!6739368 () Bool)

(assert (=> bm!452040 m!6739368))

(declare-fun m!6739370 () Bool)

(assert (=> b!5798010 m!6739370))

(declare-fun m!6739372 () Bool)

(assert (=> bm!452042 m!6739372))

(declare-fun m!6739374 () Bool)

(assert (=> bm!452044 m!6739374))

(declare-fun m!6739376 () Bool)

(assert (=> b!5798007 m!6739376))

(assert (=> b!5797685 d!1826268))

(declare-fun call!452053 () (InoxSet Context!10394))

(declare-fun e!3559994 () (InoxSet Context!10394))

(declare-fun b!5798028 () Bool)

(assert (=> b!5798028 (= e!3559994 ((_ map or) call!452053 (derivationStepZipperUp!1077 (Context!10395 (t!377088 (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615))))) (h!70062 s!2326))))))

(declare-fun b!5798029 () Bool)

(declare-fun e!3559996 () (InoxSet Context!10394))

(assert (=> b!5798029 (= e!3559996 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452048 () Bool)

(assert (=> bm!452048 (= call!452053 (derivationStepZipperDown!1151 (h!70063 (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615)))) (Context!10395 (t!377088 (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615))))) (h!70062 s!2326)))))

(declare-fun b!5798030 () Bool)

(assert (=> b!5798030 (= e!3559996 call!452053)))

(declare-fun b!5798031 () Bool)

(assert (=> b!5798031 (= e!3559994 e!3559996)))

(declare-fun c!1026807 () Bool)

(assert (=> b!5798031 (= c!1026807 ((_ is Cons!63615) (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615)))))))

(declare-fun b!5798027 () Bool)

(declare-fun e!3559995 () Bool)

(assert (=> b!5798027 (= e!3559995 (nullable!5839 (h!70063 (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615))))))))

(declare-fun d!1826278 () Bool)

(declare-fun c!1026806 () Bool)

(assert (=> d!1826278 (= c!1026806 e!3559995)))

(declare-fun res!2445791 () Bool)

(assert (=> d!1826278 (=> (not res!2445791) (not e!3559995))))

(assert (=> d!1826278 (= res!2445791 ((_ is Cons!63615) (exprs!5697 (Context!10395 (Cons!63615 r!7292 Nil!63615)))))))

(assert (=> d!1826278 (= (derivationStepZipperUp!1077 (Context!10395 (Cons!63615 r!7292 Nil!63615)) (h!70062 s!2326)) e!3559994)))

(assert (= (and d!1826278 res!2445791) b!5798027))

(assert (= (and d!1826278 c!1026806) b!5798028))

(assert (= (and d!1826278 (not c!1026806)) b!5798031))

(assert (= (and b!5798031 c!1026807) b!5798030))

(assert (= (and b!5798031 (not c!1026807)) b!5798029))

(assert (= (or b!5798028 b!5798030) bm!452048))

(declare-fun m!6739384 () Bool)

(assert (=> b!5798028 m!6739384))

(declare-fun m!6739386 () Bool)

(assert (=> bm!452048 m!6739386))

(declare-fun m!6739388 () Bool)

(assert (=> b!5798027 m!6739388))

(assert (=> b!5797685 d!1826278))

(declare-fun bs!1368610 () Bool)

(declare-fun d!1826282 () Bool)

(assert (= bs!1368610 (and d!1826282 b!5797668)))

(declare-fun lambda!316322 () Int)

(assert (=> bs!1368610 (= lambda!316322 lambda!316274)))

(assert (=> d!1826282 true))

(assert (=> d!1826282 (= (derivationStepZipper!1882 z!1189 (h!70062 s!2326)) (flatMap!1420 z!1189 lambda!316322))))

(declare-fun bs!1368611 () Bool)

(assert (= bs!1368611 d!1826282))

(declare-fun m!6739390 () Bool)

(assert (=> bs!1368611 m!6739390))

(assert (=> b!5797685 d!1826282))

(declare-fun b!5798096 () Bool)

(declare-fun e!3560032 () Bool)

(declare-fun isEmpty!35524 (List!63739) Bool)

(assert (=> b!5798096 (= e!3560032 (isEmpty!35524 (t!377088 (exprs!5697 (h!70064 zl!343)))))))

(declare-fun b!5798097 () Bool)

(declare-fun e!3560030 () Regex!15813)

(assert (=> b!5798097 (= e!3560030 (Concat!24658 (h!70063 (exprs!5697 (h!70064 zl!343))) (generalisedConcat!1428 (t!377088 (exprs!5697 (h!70064 zl!343))))))))

(declare-fun b!5798098 () Bool)

(declare-fun e!3560035 () Bool)

(declare-fun e!3560034 () Bool)

(assert (=> b!5798098 (= e!3560035 e!3560034)))

(declare-fun c!1026827 () Bool)

(declare-fun tail!11333 (List!63739) List!63739)

(assert (=> b!5798098 (= c!1026827 (isEmpty!35524 (tail!11333 (exprs!5697 (h!70064 zl!343)))))))

(declare-fun b!5798099 () Bool)

(declare-fun lt!2297967 () Regex!15813)

(declare-fun head!12238 (List!63739) Regex!15813)

(assert (=> b!5798099 (= e!3560034 (= lt!2297967 (head!12238 (exprs!5697 (h!70064 zl!343)))))))

(declare-fun b!5798100 () Bool)

(declare-fun e!3560031 () Bool)

(assert (=> b!5798100 (= e!3560031 e!3560035)))

(declare-fun c!1026829 () Bool)

(assert (=> b!5798100 (= c!1026829 (isEmpty!35524 (exprs!5697 (h!70064 zl!343))))))

(declare-fun b!5798101 () Bool)

(declare-fun e!3560033 () Regex!15813)

(assert (=> b!5798101 (= e!3560033 (h!70063 (exprs!5697 (h!70064 zl!343))))))

(declare-fun b!5798102 () Bool)

(declare-fun isEmptyExpr!1287 (Regex!15813) Bool)

(assert (=> b!5798102 (= e!3560035 (isEmptyExpr!1287 lt!2297967))))

(declare-fun b!5798103 () Bool)

(assert (=> b!5798103 (= e!3560030 EmptyExpr!15813)))

(declare-fun b!5798104 () Bool)

(assert (=> b!5798104 (= e!3560033 e!3560030)))

(declare-fun c!1026830 () Bool)

(assert (=> b!5798104 (= c!1026830 ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343))))))

(declare-fun d!1826284 () Bool)

(assert (=> d!1826284 e!3560031))

(declare-fun res!2445821 () Bool)

(assert (=> d!1826284 (=> (not res!2445821) (not e!3560031))))

(assert (=> d!1826284 (= res!2445821 (validRegex!7549 lt!2297967))))

(assert (=> d!1826284 (= lt!2297967 e!3560033)))

(declare-fun c!1026828 () Bool)

(assert (=> d!1826284 (= c!1026828 e!3560032)))

(declare-fun res!2445820 () Bool)

(assert (=> d!1826284 (=> (not res!2445820) (not e!3560032))))

(assert (=> d!1826284 (= res!2445820 ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343))))))

(declare-fun lambda!316325 () Int)

(declare-fun forall!14921 (List!63739 Int) Bool)

(assert (=> d!1826284 (forall!14921 (exprs!5697 (h!70064 zl!343)) lambda!316325)))

(assert (=> d!1826284 (= (generalisedConcat!1428 (exprs!5697 (h!70064 zl!343))) lt!2297967)))

(declare-fun b!5798105 () Bool)

(declare-fun isConcat!810 (Regex!15813) Bool)

(assert (=> b!5798105 (= e!3560034 (isConcat!810 lt!2297967))))

(assert (= (and d!1826284 res!2445820) b!5798096))

(assert (= (and d!1826284 c!1026828) b!5798101))

(assert (= (and d!1826284 (not c!1026828)) b!5798104))

(assert (= (and b!5798104 c!1026830) b!5798097))

(assert (= (and b!5798104 (not c!1026830)) b!5798103))

(assert (= (and d!1826284 res!2445821) b!5798100))

(assert (= (and b!5798100 c!1026829) b!5798102))

(assert (= (and b!5798100 (not c!1026829)) b!5798098))

(assert (= (and b!5798098 c!1026827) b!5798099))

(assert (= (and b!5798098 (not c!1026827)) b!5798105))

(declare-fun m!6739400 () Bool)

(assert (=> d!1826284 m!6739400))

(declare-fun m!6739402 () Bool)

(assert (=> d!1826284 m!6739402))

(declare-fun m!6739404 () Bool)

(assert (=> b!5798098 m!6739404))

(assert (=> b!5798098 m!6739404))

(declare-fun m!6739406 () Bool)

(assert (=> b!5798098 m!6739406))

(declare-fun m!6739408 () Bool)

(assert (=> b!5798100 m!6739408))

(declare-fun m!6739410 () Bool)

(assert (=> b!5798105 m!6739410))

(declare-fun m!6739412 () Bool)

(assert (=> b!5798102 m!6739412))

(declare-fun m!6739414 () Bool)

(assert (=> b!5798096 m!6739414))

(declare-fun m!6739416 () Bool)

(assert (=> b!5798099 m!6739416))

(declare-fun m!6739418 () Bool)

(assert (=> b!5798097 m!6739418))

(assert (=> b!5797683 d!1826284))

(declare-fun d!1826288 () Bool)

(assert (=> d!1826288 (= (isEmpty!35520 (t!377089 zl!343)) ((_ is Nil!63616) (t!377089 zl!343)))))

(assert (=> b!5797673 d!1826288))

(declare-fun bs!1368615 () Bool)

(declare-fun d!1826292 () Bool)

(assert (= bs!1368615 (and d!1826292 d!1826284)))

(declare-fun lambda!316328 () Int)

(assert (=> bs!1368615 (= lambda!316328 lambda!316325)))

(assert (=> d!1826292 (= (inv!82779 setElem!38994) (forall!14921 (exprs!5697 setElem!38994) lambda!316328))))

(declare-fun bs!1368617 () Bool)

(assert (= bs!1368617 d!1826292))

(declare-fun m!6739430 () Bool)

(assert (=> bs!1368617 m!6739430))

(assert (=> setNonEmpty!38994 d!1826292))

(declare-fun d!1826300 () Bool)

(declare-fun lt!2297973 () Regex!15813)

(assert (=> d!1826300 (validRegex!7549 lt!2297973)))

(assert (=> d!1826300 (= lt!2297973 (generalisedUnion!1676 (unfocusZipperList!1241 zl!343)))))

(assert (=> d!1826300 (= (unfocusZipper!1555 zl!343) lt!2297973)))

(declare-fun bs!1368619 () Bool)

(assert (= bs!1368619 d!1826300))

(declare-fun m!6739432 () Bool)

(assert (=> bs!1368619 m!6739432))

(assert (=> bs!1368619 m!6739088))

(assert (=> bs!1368619 m!6739088))

(assert (=> bs!1368619 m!6739090))

(assert (=> b!5797677 d!1826300))

(declare-fun d!1826302 () Bool)

(declare-fun c!1026837 () Bool)

(assert (=> d!1826302 (= c!1026837 (isEmpty!35519 s!2326))))

(declare-fun e!3560044 () Bool)

(assert (=> d!1826302 (= (matchZipper!1941 lt!2297905 s!2326) e!3560044)))

(declare-fun b!5798120 () Bool)

(declare-fun nullableZipper!1722 ((InoxSet Context!10394)) Bool)

(assert (=> b!5798120 (= e!3560044 (nullableZipper!1722 lt!2297905))))

(declare-fun b!5798121 () Bool)

(declare-fun head!12239 (List!63738) C!31896)

(declare-fun tail!11334 (List!63738) List!63738)

(assert (=> b!5798121 (= e!3560044 (matchZipper!1941 (derivationStepZipper!1882 lt!2297905 (head!12239 s!2326)) (tail!11334 s!2326)))))

(assert (= (and d!1826302 c!1026837) b!5798120))

(assert (= (and d!1826302 (not c!1026837)) b!5798121))

(assert (=> d!1826302 m!6739094))

(declare-fun m!6739454 () Bool)

(assert (=> b!5798120 m!6739454))

(declare-fun m!6739456 () Bool)

(assert (=> b!5798121 m!6739456))

(assert (=> b!5798121 m!6739456))

(declare-fun m!6739458 () Bool)

(assert (=> b!5798121 m!6739458))

(declare-fun m!6739460 () Bool)

(assert (=> b!5798121 m!6739460))

(assert (=> b!5798121 m!6739458))

(assert (=> b!5798121 m!6739460))

(declare-fun m!6739462 () Bool)

(assert (=> b!5798121 m!6739462))

(assert (=> b!5797675 d!1826302))

(declare-fun d!1826316 () Bool)

(declare-fun c!1026838 () Bool)

(assert (=> d!1826316 (= c!1026838 (isEmpty!35519 (t!377087 s!2326)))))

(declare-fun e!3560045 () Bool)

(assert (=> d!1826316 (= (matchZipper!1941 (derivationStepZipper!1882 lt!2297905 (h!70062 s!2326)) (t!377087 s!2326)) e!3560045)))

(declare-fun b!5798122 () Bool)

(assert (=> b!5798122 (= e!3560045 (nullableZipper!1722 (derivationStepZipper!1882 lt!2297905 (h!70062 s!2326))))))

(declare-fun b!5798123 () Bool)

(assert (=> b!5798123 (= e!3560045 (matchZipper!1941 (derivationStepZipper!1882 (derivationStepZipper!1882 lt!2297905 (h!70062 s!2326)) (head!12239 (t!377087 s!2326))) (tail!11334 (t!377087 s!2326))))))

(assert (= (and d!1826316 c!1026838) b!5798122))

(assert (= (and d!1826316 (not c!1026838)) b!5798123))

(declare-fun m!6739464 () Bool)

(assert (=> d!1826316 m!6739464))

(assert (=> b!5798122 m!6739112))

(declare-fun m!6739466 () Bool)

(assert (=> b!5798122 m!6739466))

(declare-fun m!6739468 () Bool)

(assert (=> b!5798123 m!6739468))

(assert (=> b!5798123 m!6739112))

(assert (=> b!5798123 m!6739468))

(declare-fun m!6739470 () Bool)

(assert (=> b!5798123 m!6739470))

(declare-fun m!6739472 () Bool)

(assert (=> b!5798123 m!6739472))

(assert (=> b!5798123 m!6739470))

(assert (=> b!5798123 m!6739472))

(declare-fun m!6739474 () Bool)

(assert (=> b!5798123 m!6739474))

(assert (=> b!5797675 d!1826316))

(declare-fun bs!1368626 () Bool)

(declare-fun d!1826318 () Bool)

(assert (= bs!1368626 (and d!1826318 b!5797668)))

(declare-fun lambda!316331 () Int)

(assert (=> bs!1368626 (= lambda!316331 lambda!316274)))

(declare-fun bs!1368627 () Bool)

(assert (= bs!1368627 (and d!1826318 d!1826282)))

(assert (=> bs!1368627 (= lambda!316331 lambda!316322)))

(assert (=> d!1826318 true))

(assert (=> d!1826318 (= (derivationStepZipper!1882 lt!2297905 (h!70062 s!2326)) (flatMap!1420 lt!2297905 lambda!316331))))

(declare-fun bs!1368628 () Bool)

(assert (= bs!1368628 d!1826318))

(declare-fun m!6739476 () Bool)

(assert (=> bs!1368628 m!6739476))

(assert (=> b!5797675 d!1826318))

(declare-fun b!5798124 () Bool)

(declare-fun e!3560051 () (InoxSet Context!10394))

(declare-fun call!452059 () (InoxSet Context!10394))

(declare-fun call!452064 () (InoxSet Context!10394))

(assert (=> b!5798124 (= e!3560051 ((_ map or) call!452059 call!452064))))

(declare-fun b!5798125 () Bool)

(declare-fun e!3560046 () (InoxSet Context!10394))

(assert (=> b!5798125 (= e!3560046 (store ((as const (Array Context!10394 Bool)) false) lt!2297901 true))))

(declare-fun c!1026842 () Bool)

(declare-fun call!452062 () List!63739)

(declare-fun bm!452054 () Bool)

(declare-fun c!1026839 () Bool)

(assert (=> bm!452054 (= call!452062 ($colon$colon!1794 (exprs!5697 lt!2297901) (ite (or c!1026842 c!1026839) (regTwo!32138 (reg!16142 r!7292)) (reg!16142 r!7292))))))

(declare-fun bm!452055 () Bool)

(declare-fun call!452061 () (InoxSet Context!10394))

(assert (=> bm!452055 (= call!452064 call!452061)))

(declare-fun b!5798126 () Bool)

(declare-fun e!3560047 () (InoxSet Context!10394))

(declare-fun call!452063 () (InoxSet Context!10394))

(assert (=> b!5798126 (= e!3560047 call!452063)))

(declare-fun b!5798127 () Bool)

(declare-fun e!3560048 () Bool)

(assert (=> b!5798127 (= c!1026842 e!3560048)))

(declare-fun res!2445824 () Bool)

(assert (=> b!5798127 (=> (not res!2445824) (not e!3560048))))

(assert (=> b!5798127 (= res!2445824 ((_ is Concat!24658) (reg!16142 r!7292)))))

(declare-fun e!3560050 () (InoxSet Context!10394))

(assert (=> b!5798127 (= e!3560050 e!3560051)))

(declare-fun b!5798128 () Bool)

(assert (=> b!5798128 (= e!3560048 (nullable!5839 (regOne!32138 (reg!16142 r!7292))))))

(declare-fun bm!452056 () Bool)

(declare-fun c!1026843 () Bool)

(assert (=> bm!452056 (= call!452059 (derivationStepZipperDown!1151 (ite c!1026843 (regTwo!32139 (reg!16142 r!7292)) (regOne!32138 (reg!16142 r!7292))) (ite c!1026843 lt!2297901 (Context!10395 call!452062)) (h!70062 s!2326)))))

(declare-fun bm!452057 () Bool)

(declare-fun call!452060 () List!63739)

(assert (=> bm!452057 (= call!452060 call!452062)))

(declare-fun b!5798129 () Bool)

(declare-fun e!3560049 () (InoxSet Context!10394))

(assert (=> b!5798129 (= e!3560051 e!3560049)))

(assert (=> b!5798129 (= c!1026839 ((_ is Concat!24658) (reg!16142 r!7292)))))

(declare-fun b!5798130 () Bool)

(declare-fun c!1026841 () Bool)

(assert (=> b!5798130 (= c!1026841 ((_ is Star!15813) (reg!16142 r!7292)))))

(assert (=> b!5798130 (= e!3560049 e!3560047)))

(declare-fun b!5798131 () Bool)

(assert (=> b!5798131 (= e!3560047 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452058 () Bool)

(assert (=> bm!452058 (= call!452061 (derivationStepZipperDown!1151 (ite c!1026843 (regOne!32139 (reg!16142 r!7292)) (ite c!1026842 (regTwo!32138 (reg!16142 r!7292)) (ite c!1026839 (regOne!32138 (reg!16142 r!7292)) (reg!16142 (reg!16142 r!7292))))) (ite (or c!1026843 c!1026842) lt!2297901 (Context!10395 call!452060)) (h!70062 s!2326)))))

(declare-fun b!5798132 () Bool)

(assert (=> b!5798132 (= e!3560046 e!3560050)))

(assert (=> b!5798132 (= c!1026843 ((_ is Union!15813) (reg!16142 r!7292)))))

(declare-fun b!5798133 () Bool)

(assert (=> b!5798133 (= e!3560049 call!452063)))

(declare-fun bm!452059 () Bool)

(assert (=> bm!452059 (= call!452063 call!452064)))

(declare-fun b!5798134 () Bool)

(assert (=> b!5798134 (= e!3560050 ((_ map or) call!452061 call!452059))))

(declare-fun d!1826320 () Bool)

(declare-fun c!1026840 () Bool)

(assert (=> d!1826320 (= c!1026840 (and ((_ is ElementMatch!15813) (reg!16142 r!7292)) (= (c!1026709 (reg!16142 r!7292)) (h!70062 s!2326))))))

(assert (=> d!1826320 (= (derivationStepZipperDown!1151 (reg!16142 r!7292) lt!2297901 (h!70062 s!2326)) e!3560046)))

(assert (= (and d!1826320 c!1026840) b!5798125))

(assert (= (and d!1826320 (not c!1026840)) b!5798132))

(assert (= (and b!5798132 c!1026843) b!5798134))

(assert (= (and b!5798132 (not c!1026843)) b!5798127))

(assert (= (and b!5798127 res!2445824) b!5798128))

(assert (= (and b!5798127 c!1026842) b!5798124))

(assert (= (and b!5798127 (not c!1026842)) b!5798129))

(assert (= (and b!5798129 c!1026839) b!5798133))

(assert (= (and b!5798129 (not c!1026839)) b!5798130))

(assert (= (and b!5798130 c!1026841) b!5798126))

(assert (= (and b!5798130 (not c!1026841)) b!5798131))

(assert (= (or b!5798133 b!5798126) bm!452057))

(assert (= (or b!5798133 b!5798126) bm!452059))

(assert (= (or b!5798124 bm!452057) bm!452054))

(assert (= (or b!5798124 bm!452059) bm!452055))

(assert (= (or b!5798134 b!5798124) bm!452056))

(assert (= (or b!5798134 bm!452055) bm!452058))

(declare-fun m!6739478 () Bool)

(assert (=> bm!452054 m!6739478))

(declare-fun m!6739480 () Bool)

(assert (=> b!5798128 m!6739480))

(declare-fun m!6739482 () Bool)

(assert (=> bm!452056 m!6739482))

(declare-fun m!6739484 () Bool)

(assert (=> bm!452058 m!6739484))

(assert (=> b!5798125 m!6739126))

(assert (=> b!5797665 d!1826320))

(declare-fun d!1826322 () Bool)

(declare-fun choose!44016 ((InoxSet Context!10394) Int) (InoxSet Context!10394))

(assert (=> d!1826322 (= (flatMap!1420 lt!2297905 lambda!316274) (choose!44016 lt!2297905 lambda!316274))))

(declare-fun bs!1368629 () Bool)

(assert (= bs!1368629 d!1826322))

(declare-fun m!6739486 () Bool)

(assert (=> bs!1368629 m!6739486))

(assert (=> b!5797665 d!1826322))

(declare-fun e!3560058 () (InoxSet Context!10394))

(declare-fun call!452065 () (InoxSet Context!10394))

(declare-fun b!5798148 () Bool)

(assert (=> b!5798148 (= e!3560058 ((_ map or) call!452065 (derivationStepZipperUp!1077 (Context!10395 (t!377088 (exprs!5697 lt!2297886))) (h!70062 s!2326))))))

(declare-fun b!5798149 () Bool)

(declare-fun e!3560062 () (InoxSet Context!10394))

(assert (=> b!5798149 (= e!3560062 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452060 () Bool)

(assert (=> bm!452060 (= call!452065 (derivationStepZipperDown!1151 (h!70063 (exprs!5697 lt!2297886)) (Context!10395 (t!377088 (exprs!5697 lt!2297886))) (h!70062 s!2326)))))

(declare-fun b!5798150 () Bool)

(assert (=> b!5798150 (= e!3560062 call!452065)))

(declare-fun b!5798151 () Bool)

(assert (=> b!5798151 (= e!3560058 e!3560062)))

(declare-fun c!1026849 () Bool)

(assert (=> b!5798151 (= c!1026849 ((_ is Cons!63615) (exprs!5697 lt!2297886)))))

(declare-fun b!5798147 () Bool)

(declare-fun e!3560061 () Bool)

(assert (=> b!5798147 (= e!3560061 (nullable!5839 (h!70063 (exprs!5697 lt!2297886))))))

(declare-fun d!1826324 () Bool)

(declare-fun c!1026848 () Bool)

(assert (=> d!1826324 (= c!1026848 e!3560061)))

(declare-fun res!2445827 () Bool)

(assert (=> d!1826324 (=> (not res!2445827) (not e!3560061))))

(assert (=> d!1826324 (= res!2445827 ((_ is Cons!63615) (exprs!5697 lt!2297886)))))

(assert (=> d!1826324 (= (derivationStepZipperUp!1077 lt!2297886 (h!70062 s!2326)) e!3560058)))

(assert (= (and d!1826324 res!2445827) b!5798147))

(assert (= (and d!1826324 c!1026848) b!5798148))

(assert (= (and d!1826324 (not c!1026848)) b!5798151))

(assert (= (and b!5798151 c!1026849) b!5798150))

(assert (= (and b!5798151 (not c!1026849)) b!5798149))

(assert (= (or b!5798148 b!5798150) bm!452060))

(declare-fun m!6739488 () Bool)

(assert (=> b!5798148 m!6739488))

(declare-fun m!6739490 () Bool)

(assert (=> bm!452060 m!6739490))

(declare-fun m!6739492 () Bool)

(assert (=> b!5798147 m!6739492))

(assert (=> b!5797665 d!1826324))

(declare-fun d!1826326 () Bool)

(declare-fun dynLambda!24904 (Int Context!10394) (InoxSet Context!10394))

(assert (=> d!1826326 (= (flatMap!1420 lt!2297905 lambda!316274) (dynLambda!24904 lambda!316274 lt!2297886))))

(declare-fun lt!2297978 () Unit!156886)

(declare-fun choose!44017 ((InoxSet Context!10394) Context!10394 Int) Unit!156886)

(assert (=> d!1826326 (= lt!2297978 (choose!44017 lt!2297905 lt!2297886 lambda!316274))))

(assert (=> d!1826326 (= lt!2297905 (store ((as const (Array Context!10394 Bool)) false) lt!2297886 true))))

(assert (=> d!1826326 (= (lemmaFlatMapOnSingletonSet!952 lt!2297905 lt!2297886 lambda!316274) lt!2297978)))

(declare-fun b_lambda!218541 () Bool)

(assert (=> (not b_lambda!218541) (not d!1826326)))

(declare-fun bs!1368630 () Bool)

(assert (= bs!1368630 d!1826326))

(assert (=> bs!1368630 m!6739078))

(declare-fun m!6739494 () Bool)

(assert (=> bs!1368630 m!6739494))

(declare-fun m!6739496 () Bool)

(assert (=> bs!1368630 m!6739496))

(assert (=> bs!1368630 m!6739082))

(assert (=> b!5797665 d!1826326))

(declare-fun bs!1368633 () Bool)

(declare-fun d!1826328 () Bool)

(assert (= bs!1368633 (and d!1826328 b!5797668)))

(declare-fun lambda!316335 () Int)

(assert (=> bs!1368633 (= lambda!316335 lambda!316274)))

(declare-fun bs!1368635 () Bool)

(assert (= bs!1368635 (and d!1826328 d!1826282)))

(assert (=> bs!1368635 (= lambda!316335 lambda!316322)))

(declare-fun bs!1368636 () Bool)

(assert (= bs!1368636 (and d!1826328 d!1826318)))

(assert (=> bs!1368636 (= lambda!316335 lambda!316331)))

(assert (=> d!1826328 true))

(assert (=> d!1826328 (= (derivationStepZipper!1882 lt!2297900 (h!70062 s!2326)) (flatMap!1420 lt!2297900 lambda!316335))))

(declare-fun bs!1368637 () Bool)

(assert (= bs!1368637 d!1826328))

(declare-fun m!6739498 () Bool)

(assert (=> bs!1368637 m!6739498))

(assert (=> b!5797679 d!1826328))

(declare-fun d!1826330 () Bool)

(assert (=> d!1826330 (= (flatMap!1420 lt!2297900 lambda!316274) (dynLambda!24904 lambda!316274 lt!2297901))))

(declare-fun lt!2297980 () Unit!156886)

(assert (=> d!1826330 (= lt!2297980 (choose!44017 lt!2297900 lt!2297901 lambda!316274))))

(assert (=> d!1826330 (= lt!2297900 (store ((as const (Array Context!10394 Bool)) false) lt!2297901 true))))

(assert (=> d!1826330 (= (lemmaFlatMapOnSingletonSet!952 lt!2297900 lt!2297901 lambda!316274) lt!2297980)))

(declare-fun b_lambda!218543 () Bool)

(assert (=> (not b_lambda!218543) (not d!1826330)))

(declare-fun bs!1368638 () Bool)

(assert (= bs!1368638 d!1826330))

(assert (=> bs!1368638 m!6739138))

(declare-fun m!6739500 () Bool)

(assert (=> bs!1368638 m!6739500))

(declare-fun m!6739502 () Bool)

(assert (=> bs!1368638 m!6739502))

(assert (=> bs!1368638 m!6739126))

(assert (=> b!5797679 d!1826330))

(declare-fun d!1826332 () Bool)

(assert (=> d!1826332 (= (flatMap!1420 lt!2297900 lambda!316274) (choose!44016 lt!2297900 lambda!316274))))

(declare-fun bs!1368639 () Bool)

(assert (= bs!1368639 d!1826332))

(declare-fun m!6739512 () Bool)

(assert (=> bs!1368639 m!6739512))

(assert (=> b!5797679 d!1826332))

(declare-fun d!1826334 () Bool)

(assert (=> d!1826334 (= (flatMap!1420 lt!2297907 lambda!316274) (dynLambda!24904 lambda!316274 lt!2297887))))

(declare-fun lt!2297981 () Unit!156886)

(assert (=> d!1826334 (= lt!2297981 (choose!44017 lt!2297907 lt!2297887 lambda!316274))))

(assert (=> d!1826334 (= lt!2297907 (store ((as const (Array Context!10394 Bool)) false) lt!2297887 true))))

(assert (=> d!1826334 (= (lemmaFlatMapOnSingletonSet!952 lt!2297907 lt!2297887 lambda!316274) lt!2297981)))

(declare-fun b_lambda!218545 () Bool)

(assert (=> (not b_lambda!218545) (not d!1826334)))

(declare-fun bs!1368640 () Bool)

(assert (= bs!1368640 d!1826334))

(assert (=> bs!1368640 m!6739142))

(declare-fun m!6739526 () Bool)

(assert (=> bs!1368640 m!6739526))

(declare-fun m!6739528 () Bool)

(assert (=> bs!1368640 m!6739528))

(assert (=> bs!1368640 m!6739136))

(assert (=> b!5797679 d!1826334))

(declare-fun b!5798171 () Bool)

(declare-fun call!452066 () (InoxSet Context!10394))

(declare-fun e!3560073 () (InoxSet Context!10394))

(assert (=> b!5798171 (= e!3560073 ((_ map or) call!452066 (derivationStepZipperUp!1077 (Context!10395 (t!377088 (exprs!5697 lt!2297887))) (h!70062 s!2326))))))

(declare-fun b!5798172 () Bool)

(declare-fun e!3560075 () (InoxSet Context!10394))

(assert (=> b!5798172 (= e!3560075 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452061 () Bool)

(assert (=> bm!452061 (= call!452066 (derivationStepZipperDown!1151 (h!70063 (exprs!5697 lt!2297887)) (Context!10395 (t!377088 (exprs!5697 lt!2297887))) (h!70062 s!2326)))))

(declare-fun b!5798173 () Bool)

(assert (=> b!5798173 (= e!3560075 call!452066)))

(declare-fun b!5798174 () Bool)

(assert (=> b!5798174 (= e!3560073 e!3560075)))

(declare-fun c!1026859 () Bool)

(assert (=> b!5798174 (= c!1026859 ((_ is Cons!63615) (exprs!5697 lt!2297887)))))

(declare-fun b!5798170 () Bool)

(declare-fun e!3560074 () Bool)

(assert (=> b!5798170 (= e!3560074 (nullable!5839 (h!70063 (exprs!5697 lt!2297887))))))

(declare-fun d!1826338 () Bool)

(declare-fun c!1026858 () Bool)

(assert (=> d!1826338 (= c!1026858 e!3560074)))

(declare-fun res!2445832 () Bool)

(assert (=> d!1826338 (=> (not res!2445832) (not e!3560074))))

(assert (=> d!1826338 (= res!2445832 ((_ is Cons!63615) (exprs!5697 lt!2297887)))))

(assert (=> d!1826338 (= (derivationStepZipperUp!1077 lt!2297887 (h!70062 s!2326)) e!3560073)))

(assert (= (and d!1826338 res!2445832) b!5798170))

(assert (= (and d!1826338 c!1026858) b!5798171))

(assert (= (and d!1826338 (not c!1026858)) b!5798174))

(assert (= (and b!5798174 c!1026859) b!5798173))

(assert (= (and b!5798174 (not c!1026859)) b!5798172))

(assert (= (or b!5798171 b!5798173) bm!452061))

(declare-fun m!6739530 () Bool)

(assert (=> b!5798171 m!6739530))

(declare-fun m!6739532 () Bool)

(assert (=> bm!452061 m!6739532))

(declare-fun m!6739534 () Bool)

(assert (=> b!5798170 m!6739534))

(assert (=> b!5797679 d!1826338))

(declare-fun e!3560076 () (InoxSet Context!10394))

(declare-fun call!452067 () (InoxSet Context!10394))

(declare-fun b!5798176 () Bool)

(assert (=> b!5798176 (= e!3560076 ((_ map or) call!452067 (derivationStepZipperUp!1077 (Context!10395 (t!377088 (exprs!5697 lt!2297901))) (h!70062 s!2326))))))

(declare-fun b!5798177 () Bool)

(declare-fun e!3560078 () (InoxSet Context!10394))

(assert (=> b!5798177 (= e!3560078 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452062 () Bool)

(assert (=> bm!452062 (= call!452067 (derivationStepZipperDown!1151 (h!70063 (exprs!5697 lt!2297901)) (Context!10395 (t!377088 (exprs!5697 lt!2297901))) (h!70062 s!2326)))))

(declare-fun b!5798178 () Bool)

(assert (=> b!5798178 (= e!3560078 call!452067)))

(declare-fun b!5798179 () Bool)

(assert (=> b!5798179 (= e!3560076 e!3560078)))

(declare-fun c!1026861 () Bool)

(assert (=> b!5798179 (= c!1026861 ((_ is Cons!63615) (exprs!5697 lt!2297901)))))

(declare-fun b!5798175 () Bool)

(declare-fun e!3560077 () Bool)

(assert (=> b!5798175 (= e!3560077 (nullable!5839 (h!70063 (exprs!5697 lt!2297901))))))

(declare-fun d!1826340 () Bool)

(declare-fun c!1026860 () Bool)

(assert (=> d!1826340 (= c!1026860 e!3560077)))

(declare-fun res!2445833 () Bool)

(assert (=> d!1826340 (=> (not res!2445833) (not e!3560077))))

(assert (=> d!1826340 (= res!2445833 ((_ is Cons!63615) (exprs!5697 lt!2297901)))))

(assert (=> d!1826340 (= (derivationStepZipperUp!1077 lt!2297901 (h!70062 s!2326)) e!3560076)))

(assert (= (and d!1826340 res!2445833) b!5798175))

(assert (= (and d!1826340 c!1026860) b!5798176))

(assert (= (and d!1826340 (not c!1026860)) b!5798179))

(assert (= (and b!5798179 c!1026861) b!5798178))

(assert (= (and b!5798179 (not c!1026861)) b!5798177))

(assert (= (or b!5798176 b!5798178) bm!452062))

(declare-fun m!6739536 () Bool)

(assert (=> b!5798176 m!6739536))

(declare-fun m!6739538 () Bool)

(assert (=> bm!452062 m!6739538))

(declare-fun m!6739540 () Bool)

(assert (=> b!5798175 m!6739540))

(assert (=> b!5797679 d!1826340))

(declare-fun d!1826342 () Bool)

(assert (=> d!1826342 (= (flatMap!1420 lt!2297907 lambda!316274) (choose!44016 lt!2297907 lambda!316274))))

(declare-fun bs!1368641 () Bool)

(assert (= bs!1368641 d!1826342))

(declare-fun m!6739542 () Bool)

(assert (=> bs!1368641 m!6739542))

(assert (=> b!5797679 d!1826342))

(declare-fun bs!1368654 () Bool)

(declare-fun b!5798296 () Bool)

(assert (= bs!1368654 (and b!5798296 d!1826210)))

(declare-fun lambda!316344 () Int)

(assert (=> bs!1368654 (not (= lambda!316344 lambda!316279))))

(declare-fun bs!1368655 () Bool)

(assert (= bs!1368655 (and b!5798296 d!1826230)))

(assert (=> bs!1368655 (not (= lambda!316344 lambda!316292))))

(declare-fun bs!1368656 () Bool)

(assert (= bs!1368656 (and b!5798296 d!1826262)))

(assert (=> bs!1368656 (not (= lambda!316344 lambda!316309))))

(declare-fun bs!1368657 () Bool)

(assert (= bs!1368657 (and b!5798296 b!5797664)))

(assert (=> bs!1368657 (not (= lambda!316344 lambda!316271))))

(assert (=> bs!1368654 (= (= r!7292 (Star!15813 (reg!16142 r!7292))) (= lambda!316344 lambda!316280))))

(assert (=> bs!1368655 (not (= lambda!316344 lambda!316291))))

(assert (=> bs!1368657 (not (= lambda!316344 lambda!316273))))

(assert (=> bs!1368657 (= lambda!316344 lambda!316272)))

(assert (=> b!5798296 true))

(assert (=> b!5798296 true))

(declare-fun bs!1368658 () Bool)

(declare-fun b!5798297 () Bool)

(assert (= bs!1368658 (and b!5798297 b!5798296)))

(declare-fun lambda!316345 () Int)

(assert (=> bs!1368658 (not (= lambda!316345 lambda!316344))))

(declare-fun bs!1368659 () Bool)

(assert (= bs!1368659 (and b!5798297 d!1826210)))

(assert (=> bs!1368659 (not (= lambda!316345 lambda!316279))))

(declare-fun bs!1368660 () Bool)

(assert (= bs!1368660 (and b!5798297 d!1826230)))

(assert (=> bs!1368660 (= (and (= (regOne!32138 r!7292) (reg!16142 r!7292)) (= (regTwo!32138 r!7292) r!7292)) (= lambda!316345 lambda!316292))))

(declare-fun bs!1368661 () Bool)

(assert (= bs!1368661 (and b!5798297 d!1826262)))

(assert (=> bs!1368661 (not (= lambda!316345 lambda!316309))))

(declare-fun bs!1368662 () Bool)

(assert (= bs!1368662 (and b!5798297 b!5797664)))

(assert (=> bs!1368662 (not (= lambda!316345 lambda!316271))))

(assert (=> bs!1368659 (not (= lambda!316345 lambda!316280))))

(assert (=> bs!1368660 (not (= lambda!316345 lambda!316291))))

(assert (=> bs!1368662 (= (and (= (regOne!32138 r!7292) (reg!16142 r!7292)) (= (regTwo!32138 r!7292) r!7292)) (= lambda!316345 lambda!316273))))

(assert (=> bs!1368662 (not (= lambda!316345 lambda!316272))))

(assert (=> b!5798297 true))

(assert (=> b!5798297 true))

(declare-fun b!5798291 () Bool)

(declare-fun c!1026883 () Bool)

(assert (=> b!5798291 (= c!1026883 ((_ is Union!15813) r!7292))))

(declare-fun e!3560141 () Bool)

(declare-fun e!3560135 () Bool)

(assert (=> b!5798291 (= e!3560141 e!3560135)))

(declare-fun b!5798292 () Bool)

(declare-fun c!1026880 () Bool)

(assert (=> b!5798292 (= c!1026880 ((_ is ElementMatch!15813) r!7292))))

(declare-fun e!3560140 () Bool)

(assert (=> b!5798292 (= e!3560140 e!3560141)))

(declare-fun d!1826344 () Bool)

(declare-fun c!1026881 () Bool)

(assert (=> d!1826344 (= c!1026881 ((_ is EmptyExpr!15813) r!7292))))

(declare-fun e!3560136 () Bool)

(assert (=> d!1826344 (= (matchRSpec!2916 r!7292 s!2326) e!3560136)))

(declare-fun c!1026882 () Bool)

(declare-fun bm!452074 () Bool)

(declare-fun call!452079 () Bool)

(assert (=> bm!452074 (= call!452079 (Exists!2913 (ite c!1026882 lambda!316344 lambda!316345)))))

(declare-fun b!5798293 () Bool)

(declare-fun call!452080 () Bool)

(assert (=> b!5798293 (= e!3560136 call!452080)))

(declare-fun b!5798294 () Bool)

(declare-fun e!3560139 () Bool)

(assert (=> b!5798294 (= e!3560135 e!3560139)))

(declare-fun res!2445856 () Bool)

(assert (=> b!5798294 (= res!2445856 (matchRSpec!2916 (regOne!32139 r!7292) s!2326))))

(assert (=> b!5798294 (=> res!2445856 e!3560139)))

(declare-fun b!5798295 () Bool)

(assert (=> b!5798295 (= e!3560139 (matchRSpec!2916 (regTwo!32139 r!7292) s!2326))))

(declare-fun e!3560137 () Bool)

(assert (=> b!5798296 (= e!3560137 call!452079)))

(declare-fun e!3560138 () Bool)

(assert (=> b!5798297 (= e!3560138 call!452079)))

(declare-fun b!5798298 () Bool)

(assert (=> b!5798298 (= e!3560136 e!3560140)))

(declare-fun res!2445857 () Bool)

(assert (=> b!5798298 (= res!2445857 (not ((_ is EmptyLang!15813) r!7292)))))

(assert (=> b!5798298 (=> (not res!2445857) (not e!3560140))))

(declare-fun b!5798299 () Bool)

(assert (=> b!5798299 (= e!3560141 (= s!2326 (Cons!63614 (c!1026709 r!7292) Nil!63614)))))

(declare-fun b!5798300 () Bool)

(assert (=> b!5798300 (= e!3560135 e!3560138)))

(assert (=> b!5798300 (= c!1026882 ((_ is Star!15813) r!7292))))

(declare-fun bm!452075 () Bool)

(assert (=> bm!452075 (= call!452080 (isEmpty!35519 s!2326))))

(declare-fun b!5798301 () Bool)

(declare-fun res!2445855 () Bool)

(assert (=> b!5798301 (=> res!2445855 e!3560137)))

(assert (=> b!5798301 (= res!2445855 call!452080)))

(assert (=> b!5798301 (= e!3560138 e!3560137)))

(assert (= (and d!1826344 c!1026881) b!5798293))

(assert (= (and d!1826344 (not c!1026881)) b!5798298))

(assert (= (and b!5798298 res!2445857) b!5798292))

(assert (= (and b!5798292 c!1026880) b!5798299))

(assert (= (and b!5798292 (not c!1026880)) b!5798291))

(assert (= (and b!5798291 c!1026883) b!5798294))

(assert (= (and b!5798291 (not c!1026883)) b!5798300))

(assert (= (and b!5798294 (not res!2445856)) b!5798295))

(assert (= (and b!5798300 c!1026882) b!5798301))

(assert (= (and b!5798300 (not c!1026882)) b!5798297))

(assert (= (and b!5798301 (not res!2445855)) b!5798296))

(assert (= (or b!5798296 b!5798297) bm!452074))

(assert (= (or b!5798293 b!5798301) bm!452075))

(declare-fun m!6739576 () Bool)

(assert (=> bm!452074 m!6739576))

(declare-fun m!6739578 () Bool)

(assert (=> b!5798294 m!6739578))

(declare-fun m!6739580 () Bool)

(assert (=> b!5798295 m!6739580))

(assert (=> bm!452075 m!6739094))

(assert (=> b!5797669 d!1826344))

(declare-fun b!5798330 () Bool)

(declare-fun e!3560158 () Bool)

(declare-fun lt!2297990 () Bool)

(assert (=> b!5798330 (= e!3560158 (not lt!2297990))))

(declare-fun b!5798331 () Bool)

(declare-fun res!2445875 () Bool)

(declare-fun e!3560159 () Bool)

(assert (=> b!5798331 (=> (not res!2445875) (not e!3560159))))

(declare-fun call!452083 () Bool)

(assert (=> b!5798331 (= res!2445875 (not call!452083))))

(declare-fun b!5798332 () Bool)

(declare-fun res!2445881 () Bool)

(declare-fun e!3560161 () Bool)

(assert (=> b!5798332 (=> res!2445881 e!3560161)))

(assert (=> b!5798332 (= res!2445881 (not ((_ is ElementMatch!15813) r!7292)))))

(assert (=> b!5798332 (= e!3560158 e!3560161)))

(declare-fun b!5798333 () Bool)

(declare-fun res!2445879 () Bool)

(assert (=> b!5798333 (=> res!2445879 e!3560161)))

(assert (=> b!5798333 (= res!2445879 e!3560159)))

(declare-fun res!2445876 () Bool)

(assert (=> b!5798333 (=> (not res!2445876) (not e!3560159))))

(assert (=> b!5798333 (= res!2445876 lt!2297990)))

(declare-fun b!5798334 () Bool)

(declare-fun e!3560157 () Bool)

(assert (=> b!5798334 (= e!3560157 (not (= (head!12239 s!2326) (c!1026709 r!7292))))))

(declare-fun b!5798335 () Bool)

(assert (=> b!5798335 (= e!3560159 (= (head!12239 s!2326) (c!1026709 r!7292)))))

(declare-fun bm!452078 () Bool)

(assert (=> bm!452078 (= call!452083 (isEmpty!35519 s!2326))))

(declare-fun b!5798336 () Bool)

(declare-fun res!2445880 () Bool)

(assert (=> b!5798336 (=> (not res!2445880) (not e!3560159))))

(assert (=> b!5798336 (= res!2445880 (isEmpty!35519 (tail!11334 s!2326)))))

(declare-fun b!5798337 () Bool)

(declare-fun res!2445878 () Bool)

(assert (=> b!5798337 (=> res!2445878 e!3560157)))

(assert (=> b!5798337 (= res!2445878 (not (isEmpty!35519 (tail!11334 s!2326))))))

(declare-fun b!5798338 () Bool)

(declare-fun e!3560162 () Bool)

(assert (=> b!5798338 (= e!3560162 e!3560157)))

(declare-fun res!2445874 () Bool)

(assert (=> b!5798338 (=> res!2445874 e!3560157)))

(assert (=> b!5798338 (= res!2445874 call!452083)))

(declare-fun b!5798339 () Bool)

(declare-fun e!3560156 () Bool)

(assert (=> b!5798339 (= e!3560156 (= lt!2297990 call!452083))))

(declare-fun b!5798340 () Bool)

(assert (=> b!5798340 (= e!3560156 e!3560158)))

(declare-fun c!1026892 () Bool)

(assert (=> b!5798340 (= c!1026892 ((_ is EmptyLang!15813) r!7292))))

(declare-fun b!5798341 () Bool)

(declare-fun e!3560160 () Bool)

(assert (=> b!5798341 (= e!3560160 (nullable!5839 r!7292))))

(declare-fun d!1826362 () Bool)

(assert (=> d!1826362 e!3560156))

(declare-fun c!1026891 () Bool)

(assert (=> d!1826362 (= c!1026891 ((_ is EmptyExpr!15813) r!7292))))

(assert (=> d!1826362 (= lt!2297990 e!3560160)))

(declare-fun c!1026890 () Bool)

(assert (=> d!1826362 (= c!1026890 (isEmpty!35519 s!2326))))

(assert (=> d!1826362 (validRegex!7549 r!7292)))

(assert (=> d!1826362 (= (matchR!7998 r!7292 s!2326) lt!2297990)))

(declare-fun b!5798342 () Bool)

(declare-fun derivativeStep!4582 (Regex!15813 C!31896) Regex!15813)

(assert (=> b!5798342 (= e!3560160 (matchR!7998 (derivativeStep!4582 r!7292 (head!12239 s!2326)) (tail!11334 s!2326)))))

(declare-fun b!5798343 () Bool)

(assert (=> b!5798343 (= e!3560161 e!3560162)))

(declare-fun res!2445877 () Bool)

(assert (=> b!5798343 (=> (not res!2445877) (not e!3560162))))

(assert (=> b!5798343 (= res!2445877 (not lt!2297990))))

(assert (= (and d!1826362 c!1026890) b!5798341))

(assert (= (and d!1826362 (not c!1026890)) b!5798342))

(assert (= (and d!1826362 c!1026891) b!5798339))

(assert (= (and d!1826362 (not c!1026891)) b!5798340))

(assert (= (and b!5798340 c!1026892) b!5798330))

(assert (= (and b!5798340 (not c!1026892)) b!5798332))

(assert (= (and b!5798332 (not res!2445881)) b!5798333))

(assert (= (and b!5798333 res!2445876) b!5798331))

(assert (= (and b!5798331 res!2445875) b!5798336))

(assert (= (and b!5798336 res!2445880) b!5798335))

(assert (= (and b!5798333 (not res!2445879)) b!5798343))

(assert (= (and b!5798343 res!2445877) b!5798338))

(assert (= (and b!5798338 (not res!2445874)) b!5798337))

(assert (= (and b!5798337 (not res!2445878)) b!5798334))

(assert (= (or b!5798339 b!5798331 b!5798338) bm!452078))

(assert (=> b!5798342 m!6739456))

(assert (=> b!5798342 m!6739456))

(declare-fun m!6739582 () Bool)

(assert (=> b!5798342 m!6739582))

(assert (=> b!5798342 m!6739460))

(assert (=> b!5798342 m!6739582))

(assert (=> b!5798342 m!6739460))

(declare-fun m!6739584 () Bool)

(assert (=> b!5798342 m!6739584))

(assert (=> b!5798334 m!6739456))

(assert (=> d!1826362 m!6739094))

(assert (=> d!1826362 m!6739148))

(assert (=> bm!452078 m!6739094))

(assert (=> b!5798336 m!6739460))

(assert (=> b!5798336 m!6739460))

(declare-fun m!6739586 () Bool)

(assert (=> b!5798336 m!6739586))

(declare-fun m!6739588 () Bool)

(assert (=> b!5798341 m!6739588))

(assert (=> b!5798337 m!6739460))

(assert (=> b!5798337 m!6739460))

(assert (=> b!5798337 m!6739586))

(assert (=> b!5798335 m!6739456))

(assert (=> b!5797669 d!1826362))

(declare-fun d!1826364 () Bool)

(assert (=> d!1826364 (= (matchR!7998 r!7292 s!2326) (matchRSpec!2916 r!7292 s!2326))))

(declare-fun lt!2297993 () Unit!156886)

(declare-fun choose!44019 (Regex!15813 List!63738) Unit!156886)

(assert (=> d!1826364 (= lt!2297993 (choose!44019 r!7292 s!2326))))

(assert (=> d!1826364 (validRegex!7549 r!7292)))

(assert (=> d!1826364 (= (mainMatchTheorem!2916 r!7292 s!2326) lt!2297993)))

(declare-fun bs!1368663 () Bool)

(assert (= bs!1368663 d!1826364))

(assert (=> bs!1368663 m!6739154))

(assert (=> bs!1368663 m!6739152))

(declare-fun m!6739590 () Bool)

(assert (=> bs!1368663 m!6739590))

(assert (=> bs!1368663 m!6739148))

(assert (=> b!5797669 d!1826364))

(declare-fun bs!1368664 () Bool)

(declare-fun d!1826366 () Bool)

(assert (= bs!1368664 (and d!1826366 d!1826284)))

(declare-fun lambda!316346 () Int)

(assert (=> bs!1368664 (= lambda!316346 lambda!316325)))

(declare-fun bs!1368665 () Bool)

(assert (= bs!1368665 (and d!1826366 d!1826292)))

(assert (=> bs!1368665 (= lambda!316346 lambda!316328)))

(assert (=> d!1826366 (= (inv!82779 (h!70064 zl!343)) (forall!14921 (exprs!5697 (h!70064 zl!343)) lambda!316346))))

(declare-fun bs!1368666 () Bool)

(assert (= bs!1368666 d!1826366))

(declare-fun m!6739592 () Bool)

(assert (=> bs!1368666 m!6739592))

(assert (=> b!5797670 d!1826366))

(declare-fun d!1826368 () Bool)

(assert (=> d!1826368 (= (flatMap!1420 z!1189 lambda!316274) (choose!44016 z!1189 lambda!316274))))

(declare-fun bs!1368667 () Bool)

(assert (= bs!1368667 d!1826368))

(declare-fun m!6739594 () Bool)

(assert (=> bs!1368667 m!6739594))

(assert (=> b!5797668 d!1826368))

(declare-fun e!3560163 () (InoxSet Context!10394))

(declare-fun call!452084 () (InoxSet Context!10394))

(declare-fun b!5798345 () Bool)

(assert (=> b!5798345 (= e!3560163 ((_ map or) call!452084 (derivationStepZipperUp!1077 (Context!10395 (t!377088 (exprs!5697 (h!70064 zl!343)))) (h!70062 s!2326))))))

(declare-fun b!5798346 () Bool)

(declare-fun e!3560165 () (InoxSet Context!10394))

(assert (=> b!5798346 (= e!3560165 ((as const (Array Context!10394 Bool)) false))))

(declare-fun bm!452079 () Bool)

(assert (=> bm!452079 (= call!452084 (derivationStepZipperDown!1151 (h!70063 (exprs!5697 (h!70064 zl!343))) (Context!10395 (t!377088 (exprs!5697 (h!70064 zl!343)))) (h!70062 s!2326)))))

(declare-fun b!5798347 () Bool)

(assert (=> b!5798347 (= e!3560165 call!452084)))

(declare-fun b!5798348 () Bool)

(assert (=> b!5798348 (= e!3560163 e!3560165)))

(declare-fun c!1026894 () Bool)

(assert (=> b!5798348 (= c!1026894 ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343))))))

(declare-fun b!5798344 () Bool)

(declare-fun e!3560164 () Bool)

(assert (=> b!5798344 (= e!3560164 (nullable!5839 (h!70063 (exprs!5697 (h!70064 zl!343)))))))

(declare-fun d!1826370 () Bool)

(declare-fun c!1026893 () Bool)

(assert (=> d!1826370 (= c!1026893 e!3560164)))

(declare-fun res!2445882 () Bool)

(assert (=> d!1826370 (=> (not res!2445882) (not e!3560164))))

(assert (=> d!1826370 (= res!2445882 ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343))))))

(assert (=> d!1826370 (= (derivationStepZipperUp!1077 (h!70064 zl!343) (h!70062 s!2326)) e!3560163)))

(assert (= (and d!1826370 res!2445882) b!5798344))

(assert (= (and d!1826370 c!1026893) b!5798345))

(assert (= (and d!1826370 (not c!1026893)) b!5798348))

(assert (= (and b!5798348 c!1026894) b!5798347))

(assert (= (and b!5798348 (not c!1026894)) b!5798346))

(assert (= (or b!5798345 b!5798347) bm!452079))

(declare-fun m!6739596 () Bool)

(assert (=> b!5798345 m!6739596))

(declare-fun m!6739598 () Bool)

(assert (=> bm!452079 m!6739598))

(declare-fun m!6739600 () Bool)

(assert (=> b!5798344 m!6739600))

(assert (=> b!5797668 d!1826370))

(declare-fun d!1826372 () Bool)

(assert (=> d!1826372 (= (flatMap!1420 z!1189 lambda!316274) (dynLambda!24904 lambda!316274 (h!70064 zl!343)))))

(declare-fun lt!2297994 () Unit!156886)

(assert (=> d!1826372 (= lt!2297994 (choose!44017 z!1189 (h!70064 zl!343) lambda!316274))))

(assert (=> d!1826372 (= z!1189 (store ((as const (Array Context!10394 Bool)) false) (h!70064 zl!343) true))))

(assert (=> d!1826372 (= (lemmaFlatMapOnSingletonSet!952 z!1189 (h!70064 zl!343) lambda!316274) lt!2297994)))

(declare-fun b_lambda!218555 () Bool)

(assert (=> (not b_lambda!218555) (not d!1826372)))

(declare-fun bs!1368668 () Bool)

(assert (= bs!1368668 d!1826372))

(assert (=> bs!1368668 m!6739158))

(declare-fun m!6739602 () Bool)

(assert (=> bs!1368668 m!6739602))

(declare-fun m!6739604 () Bool)

(assert (=> bs!1368668 m!6739604))

(declare-fun m!6739606 () Bool)

(assert (=> bs!1368668 m!6739606))

(assert (=> b!5797668 d!1826372))

(declare-fun bs!1368669 () Bool)

(declare-fun d!1826374 () Bool)

(assert (= bs!1368669 (and d!1826374 d!1826284)))

(declare-fun lambda!316349 () Int)

(assert (=> bs!1368669 (= lambda!316349 lambda!316325)))

(declare-fun bs!1368670 () Bool)

(assert (= bs!1368670 (and d!1826374 d!1826292)))

(assert (=> bs!1368670 (= lambda!316349 lambda!316328)))

(declare-fun bs!1368671 () Bool)

(assert (= bs!1368671 (and d!1826374 d!1826366)))

(assert (=> bs!1368671 (= lambda!316349 lambda!316346)))

(declare-fun b!5798369 () Bool)

(declare-fun e!3560178 () Bool)

(assert (=> b!5798369 (= e!3560178 (isEmpty!35524 (t!377088 (unfocusZipperList!1241 zl!343))))))

(declare-fun e!3560182 () Bool)

(assert (=> d!1826374 e!3560182))

(declare-fun res!2445888 () Bool)

(assert (=> d!1826374 (=> (not res!2445888) (not e!3560182))))

(declare-fun lt!2297997 () Regex!15813)

(assert (=> d!1826374 (= res!2445888 (validRegex!7549 lt!2297997))))

(declare-fun e!3560179 () Regex!15813)

(assert (=> d!1826374 (= lt!2297997 e!3560179)))

(declare-fun c!1026904 () Bool)

(assert (=> d!1826374 (= c!1026904 e!3560178)))

(declare-fun res!2445887 () Bool)

(assert (=> d!1826374 (=> (not res!2445887) (not e!3560178))))

(assert (=> d!1826374 (= res!2445887 ((_ is Cons!63615) (unfocusZipperList!1241 zl!343)))))

(assert (=> d!1826374 (forall!14921 (unfocusZipperList!1241 zl!343) lambda!316349)))

(assert (=> d!1826374 (= (generalisedUnion!1676 (unfocusZipperList!1241 zl!343)) lt!2297997)))

(declare-fun b!5798370 () Bool)

(declare-fun e!3560181 () Regex!15813)

(assert (=> b!5798370 (= e!3560179 e!3560181)))

(declare-fun c!1026903 () Bool)

(assert (=> b!5798370 (= c!1026903 ((_ is Cons!63615) (unfocusZipperList!1241 zl!343)))))

(declare-fun b!5798371 () Bool)

(assert (=> b!5798371 (= e!3560179 (h!70063 (unfocusZipperList!1241 zl!343)))))

(declare-fun b!5798372 () Bool)

(declare-fun e!3560180 () Bool)

(declare-fun isEmptyLang!1296 (Regex!15813) Bool)

(assert (=> b!5798372 (= e!3560180 (isEmptyLang!1296 lt!2297997))))

(declare-fun b!5798373 () Bool)

(declare-fun e!3560183 () Bool)

(declare-fun isUnion!726 (Regex!15813) Bool)

(assert (=> b!5798373 (= e!3560183 (isUnion!726 lt!2297997))))

(declare-fun b!5798374 () Bool)

(assert (=> b!5798374 (= e!3560181 EmptyLang!15813)))

(declare-fun b!5798375 () Bool)

(assert (=> b!5798375 (= e!3560183 (= lt!2297997 (head!12238 (unfocusZipperList!1241 zl!343))))))

(declare-fun b!5798376 () Bool)

(assert (=> b!5798376 (= e!3560181 (Union!15813 (h!70063 (unfocusZipperList!1241 zl!343)) (generalisedUnion!1676 (t!377088 (unfocusZipperList!1241 zl!343)))))))

(declare-fun b!5798377 () Bool)

(assert (=> b!5798377 (= e!3560180 e!3560183)))

(declare-fun c!1026906 () Bool)

(assert (=> b!5798377 (= c!1026906 (isEmpty!35524 (tail!11333 (unfocusZipperList!1241 zl!343))))))

(declare-fun b!5798378 () Bool)

(assert (=> b!5798378 (= e!3560182 e!3560180)))

(declare-fun c!1026905 () Bool)

(assert (=> b!5798378 (= c!1026905 (isEmpty!35524 (unfocusZipperList!1241 zl!343)))))

(assert (= (and d!1826374 res!2445887) b!5798369))

(assert (= (and d!1826374 c!1026904) b!5798371))

(assert (= (and d!1826374 (not c!1026904)) b!5798370))

(assert (= (and b!5798370 c!1026903) b!5798376))

(assert (= (and b!5798370 (not c!1026903)) b!5798374))

(assert (= (and d!1826374 res!2445888) b!5798378))

(assert (= (and b!5798378 c!1026905) b!5798372))

(assert (= (and b!5798378 (not c!1026905)) b!5798377))

(assert (= (and b!5798377 c!1026906) b!5798375))

(assert (= (and b!5798377 (not c!1026906)) b!5798373))

(assert (=> b!5798375 m!6739088))

(declare-fun m!6739608 () Bool)

(assert (=> b!5798375 m!6739608))

(assert (=> b!5798377 m!6739088))

(declare-fun m!6739610 () Bool)

(assert (=> b!5798377 m!6739610))

(assert (=> b!5798377 m!6739610))

(declare-fun m!6739612 () Bool)

(assert (=> b!5798377 m!6739612))

(declare-fun m!6739614 () Bool)

(assert (=> b!5798369 m!6739614))

(declare-fun m!6739616 () Bool)

(assert (=> b!5798372 m!6739616))

(declare-fun m!6739618 () Bool)

(assert (=> b!5798373 m!6739618))

(declare-fun m!6739620 () Bool)

(assert (=> d!1826374 m!6739620))

(assert (=> d!1826374 m!6739088))

(declare-fun m!6739622 () Bool)

(assert (=> d!1826374 m!6739622))

(assert (=> b!5798378 m!6739088))

(declare-fun m!6739624 () Bool)

(assert (=> b!5798378 m!6739624))

(declare-fun m!6739626 () Bool)

(assert (=> b!5798376 m!6739626))

(assert (=> b!5797678 d!1826374))

(declare-fun bs!1368672 () Bool)

(declare-fun d!1826376 () Bool)

(assert (= bs!1368672 (and d!1826376 d!1826284)))

(declare-fun lambda!316352 () Int)

(assert (=> bs!1368672 (= lambda!316352 lambda!316325)))

(declare-fun bs!1368673 () Bool)

(assert (= bs!1368673 (and d!1826376 d!1826292)))

(assert (=> bs!1368673 (= lambda!316352 lambda!316328)))

(declare-fun bs!1368674 () Bool)

(assert (= bs!1368674 (and d!1826376 d!1826366)))

(assert (=> bs!1368674 (= lambda!316352 lambda!316346)))

(declare-fun bs!1368675 () Bool)

(assert (= bs!1368675 (and d!1826376 d!1826374)))

(assert (=> bs!1368675 (= lambda!316352 lambda!316349)))

(declare-fun lt!2298000 () List!63739)

(assert (=> d!1826376 (forall!14921 lt!2298000 lambda!316352)))

(declare-fun e!3560186 () List!63739)

(assert (=> d!1826376 (= lt!2298000 e!3560186)))

(declare-fun c!1026909 () Bool)

(assert (=> d!1826376 (= c!1026909 ((_ is Cons!63616) zl!343))))

(assert (=> d!1826376 (= (unfocusZipperList!1241 zl!343) lt!2298000)))

(declare-fun b!5798383 () Bool)

(assert (=> b!5798383 (= e!3560186 (Cons!63615 (generalisedConcat!1428 (exprs!5697 (h!70064 zl!343))) (unfocusZipperList!1241 (t!377089 zl!343))))))

(declare-fun b!5798384 () Bool)

(assert (=> b!5798384 (= e!3560186 Nil!63615)))

(assert (= (and d!1826376 c!1026909) b!5798383))

(assert (= (and d!1826376 (not c!1026909)) b!5798384))

(declare-fun m!6739628 () Bool)

(assert (=> d!1826376 m!6739628))

(assert (=> b!5798383 m!6739124))

(declare-fun m!6739630 () Bool)

(assert (=> b!5798383 m!6739630))

(assert (=> b!5797678 d!1826376))

(declare-fun b!5798395 () Bool)

(declare-fun e!3560189 () Bool)

(assert (=> b!5798395 (= e!3560189 tp_is_empty!40879)))

(declare-fun b!5798398 () Bool)

(declare-fun tp!1600198 () Bool)

(declare-fun tp!1600199 () Bool)

(assert (=> b!5798398 (= e!3560189 (and tp!1600198 tp!1600199))))

(assert (=> b!5797672 (= tp!1600125 e!3560189)))

(declare-fun b!5798396 () Bool)

(declare-fun tp!1600201 () Bool)

(declare-fun tp!1600197 () Bool)

(assert (=> b!5798396 (= e!3560189 (and tp!1600201 tp!1600197))))

(declare-fun b!5798397 () Bool)

(declare-fun tp!1600200 () Bool)

(assert (=> b!5798397 (= e!3560189 tp!1600200)))

(assert (= (and b!5797672 ((_ is ElementMatch!15813) (regOne!32139 r!7292))) b!5798395))

(assert (= (and b!5797672 ((_ is Concat!24658) (regOne!32139 r!7292))) b!5798396))

(assert (= (and b!5797672 ((_ is Star!15813) (regOne!32139 r!7292))) b!5798397))

(assert (= (and b!5797672 ((_ is Union!15813) (regOne!32139 r!7292))) b!5798398))

(declare-fun b!5798399 () Bool)

(declare-fun e!3560190 () Bool)

(assert (=> b!5798399 (= e!3560190 tp_is_empty!40879)))

(declare-fun b!5798402 () Bool)

(declare-fun tp!1600203 () Bool)

(declare-fun tp!1600204 () Bool)

(assert (=> b!5798402 (= e!3560190 (and tp!1600203 tp!1600204))))

(assert (=> b!5797672 (= tp!1600128 e!3560190)))

(declare-fun b!5798400 () Bool)

(declare-fun tp!1600206 () Bool)

(declare-fun tp!1600202 () Bool)

(assert (=> b!5798400 (= e!3560190 (and tp!1600206 tp!1600202))))

(declare-fun b!5798401 () Bool)

(declare-fun tp!1600205 () Bool)

(assert (=> b!5798401 (= e!3560190 tp!1600205)))

(assert (= (and b!5797672 ((_ is ElementMatch!15813) (regTwo!32139 r!7292))) b!5798399))

(assert (= (and b!5797672 ((_ is Concat!24658) (regTwo!32139 r!7292))) b!5798400))

(assert (= (and b!5797672 ((_ is Star!15813) (regTwo!32139 r!7292))) b!5798401))

(assert (= (and b!5797672 ((_ is Union!15813) (regTwo!32139 r!7292))) b!5798402))

(declare-fun b!5798403 () Bool)

(declare-fun e!3560191 () Bool)

(assert (=> b!5798403 (= e!3560191 tp_is_empty!40879)))

(declare-fun b!5798406 () Bool)

(declare-fun tp!1600208 () Bool)

(declare-fun tp!1600209 () Bool)

(assert (=> b!5798406 (= e!3560191 (and tp!1600208 tp!1600209))))

(assert (=> b!5797680 (= tp!1600123 e!3560191)))

(declare-fun b!5798404 () Bool)

(declare-fun tp!1600211 () Bool)

(declare-fun tp!1600207 () Bool)

(assert (=> b!5798404 (= e!3560191 (and tp!1600211 tp!1600207))))

(declare-fun b!5798405 () Bool)

(declare-fun tp!1600210 () Bool)

(assert (=> b!5798405 (= e!3560191 tp!1600210)))

(assert (= (and b!5797680 ((_ is ElementMatch!15813) (reg!16142 r!7292))) b!5798403))

(assert (= (and b!5797680 ((_ is Concat!24658) (reg!16142 r!7292))) b!5798404))

(assert (= (and b!5797680 ((_ is Star!15813) (reg!16142 r!7292))) b!5798405))

(assert (= (and b!5797680 ((_ is Union!15813) (reg!16142 r!7292))) b!5798406))

(declare-fun b!5798411 () Bool)

(declare-fun e!3560194 () Bool)

(declare-fun tp!1600216 () Bool)

(declare-fun tp!1600217 () Bool)

(assert (=> b!5798411 (= e!3560194 (and tp!1600216 tp!1600217))))

(assert (=> b!5797666 (= tp!1600120 e!3560194)))

(assert (= (and b!5797666 ((_ is Cons!63615) (exprs!5697 setElem!38994))) b!5798411))

(declare-fun b!5798412 () Bool)

(declare-fun e!3560195 () Bool)

(declare-fun tp!1600218 () Bool)

(declare-fun tp!1600219 () Bool)

(assert (=> b!5798412 (= e!3560195 (and tp!1600218 tp!1600219))))

(assert (=> b!5797686 (= tp!1600124 e!3560195)))

(assert (= (and b!5797686 ((_ is Cons!63615) (exprs!5697 (h!70064 zl!343)))) b!5798412))

(declare-fun b!5798417 () Bool)

(declare-fun e!3560198 () Bool)

(declare-fun tp!1600222 () Bool)

(assert (=> b!5798417 (= e!3560198 (and tp_is_empty!40879 tp!1600222))))

(assert (=> b!5797671 (= tp!1600126 e!3560198)))

(assert (= (and b!5797671 ((_ is Cons!63614) (t!377087 s!2326))) b!5798417))

(declare-fun b!5798418 () Bool)

(declare-fun e!3560199 () Bool)

(assert (=> b!5798418 (= e!3560199 tp_is_empty!40879)))

(declare-fun b!5798421 () Bool)

(declare-fun tp!1600224 () Bool)

(declare-fun tp!1600225 () Bool)

(assert (=> b!5798421 (= e!3560199 (and tp!1600224 tp!1600225))))

(assert (=> b!5797684 (= tp!1600119 e!3560199)))

(declare-fun b!5798419 () Bool)

(declare-fun tp!1600227 () Bool)

(declare-fun tp!1600223 () Bool)

(assert (=> b!5798419 (= e!3560199 (and tp!1600227 tp!1600223))))

(declare-fun b!5798420 () Bool)

(declare-fun tp!1600226 () Bool)

(assert (=> b!5798420 (= e!3560199 tp!1600226)))

(assert (= (and b!5797684 ((_ is ElementMatch!15813) (regOne!32138 r!7292))) b!5798418))

(assert (= (and b!5797684 ((_ is Concat!24658) (regOne!32138 r!7292))) b!5798419))

(assert (= (and b!5797684 ((_ is Star!15813) (regOne!32138 r!7292))) b!5798420))

(assert (= (and b!5797684 ((_ is Union!15813) (regOne!32138 r!7292))) b!5798421))

(declare-fun b!5798422 () Bool)

(declare-fun e!3560200 () Bool)

(assert (=> b!5798422 (= e!3560200 tp_is_empty!40879)))

(declare-fun b!5798425 () Bool)

(declare-fun tp!1600229 () Bool)

(declare-fun tp!1600230 () Bool)

(assert (=> b!5798425 (= e!3560200 (and tp!1600229 tp!1600230))))

(assert (=> b!5797684 (= tp!1600121 e!3560200)))

(declare-fun b!5798423 () Bool)

(declare-fun tp!1600232 () Bool)

(declare-fun tp!1600228 () Bool)

(assert (=> b!5798423 (= e!3560200 (and tp!1600232 tp!1600228))))

(declare-fun b!5798424 () Bool)

(declare-fun tp!1600231 () Bool)

(assert (=> b!5798424 (= e!3560200 tp!1600231)))

(assert (= (and b!5797684 ((_ is ElementMatch!15813) (regTwo!32138 r!7292))) b!5798422))

(assert (= (and b!5797684 ((_ is Concat!24658) (regTwo!32138 r!7292))) b!5798423))

(assert (= (and b!5797684 ((_ is Star!15813) (regTwo!32138 r!7292))) b!5798424))

(assert (= (and b!5797684 ((_ is Union!15813) (regTwo!32138 r!7292))) b!5798425))

(declare-fun b!5798433 () Bool)

(declare-fun e!3560206 () Bool)

(declare-fun tp!1600237 () Bool)

(assert (=> b!5798433 (= e!3560206 tp!1600237)))

(declare-fun e!3560205 () Bool)

(declare-fun b!5798432 () Bool)

(declare-fun tp!1600238 () Bool)

(assert (=> b!5798432 (= e!3560205 (and (inv!82779 (h!70064 (t!377089 zl!343))) e!3560206 tp!1600238))))

(assert (=> b!5797670 (= tp!1600127 e!3560205)))

(assert (= b!5798432 b!5798433))

(assert (= (and b!5797670 ((_ is Cons!63616) (t!377089 zl!343))) b!5798432))

(declare-fun m!6739632 () Bool)

(assert (=> b!5798432 m!6739632))

(declare-fun condSetEmpty!39000 () Bool)

(assert (=> setNonEmpty!38994 (= condSetEmpty!39000 (= setRest!38994 ((as const (Array Context!10394 Bool)) false)))))

(declare-fun setRes!39000 () Bool)

(assert (=> setNonEmpty!38994 (= tp!1600122 setRes!39000)))

(declare-fun setIsEmpty!39000 () Bool)

(assert (=> setIsEmpty!39000 setRes!39000))

(declare-fun setNonEmpty!39000 () Bool)

(declare-fun tp!1600243 () Bool)

(declare-fun setElem!39000 () Context!10394)

(declare-fun e!3560209 () Bool)

(assert (=> setNonEmpty!39000 (= setRes!39000 (and tp!1600243 (inv!82779 setElem!39000) e!3560209))))

(declare-fun setRest!39000 () (InoxSet Context!10394))

(assert (=> setNonEmpty!39000 (= setRest!38994 ((_ map or) (store ((as const (Array Context!10394 Bool)) false) setElem!39000 true) setRest!39000))))

(declare-fun b!5798438 () Bool)

(declare-fun tp!1600244 () Bool)

(assert (=> b!5798438 (= e!3560209 tp!1600244)))

(assert (= (and setNonEmpty!38994 condSetEmpty!39000) setIsEmpty!39000))

(assert (= (and setNonEmpty!38994 (not condSetEmpty!39000)) setNonEmpty!39000))

(assert (= setNonEmpty!39000 b!5798438))

(declare-fun m!6739634 () Bool)

(assert (=> setNonEmpty!39000 m!6739634))

(declare-fun b_lambda!218557 () Bool)

(assert (= b_lambda!218545 (or b!5797668 b_lambda!218557)))

(declare-fun bs!1368676 () Bool)

(declare-fun d!1826378 () Bool)

(assert (= bs!1368676 (and d!1826378 b!5797668)))

(assert (=> bs!1368676 (= (dynLambda!24904 lambda!316274 lt!2297887) (derivationStepZipperUp!1077 lt!2297887 (h!70062 s!2326)))))

(assert (=> bs!1368676 m!6739128))

(assert (=> d!1826334 d!1826378))

(declare-fun b_lambda!218559 () Bool)

(assert (= b_lambda!218541 (or b!5797668 b_lambda!218559)))

(declare-fun bs!1368677 () Bool)

(declare-fun d!1826380 () Bool)

(assert (= bs!1368677 (and d!1826380 b!5797668)))

(assert (=> bs!1368677 (= (dynLambda!24904 lambda!316274 lt!2297886) (derivationStepZipperUp!1077 lt!2297886 (h!70062 s!2326)))))

(assert (=> bs!1368677 m!6739086))

(assert (=> d!1826326 d!1826380))

(declare-fun b_lambda!218561 () Bool)

(assert (= b_lambda!218555 (or b!5797668 b_lambda!218561)))

(declare-fun bs!1368678 () Bool)

(declare-fun d!1826382 () Bool)

(assert (= bs!1368678 (and d!1826382 b!5797668)))

(assert (=> bs!1368678 (= (dynLambda!24904 lambda!316274 (h!70064 zl!343)) (derivationStepZipperUp!1077 (h!70064 zl!343) (h!70062 s!2326)))))

(assert (=> bs!1368678 m!6739160))

(assert (=> d!1826372 d!1826382))

(declare-fun b_lambda!218563 () Bool)

(assert (= b_lambda!218543 (or b!5797668 b_lambda!218563)))

(declare-fun bs!1368679 () Bool)

(declare-fun d!1826384 () Bool)

(assert (= bs!1368679 (and d!1826384 b!5797668)))

(assert (=> bs!1368679 (= (dynLambda!24904 lambda!316274 lt!2297901) (derivationStepZipperUp!1077 lt!2297901 (h!70062 s!2326)))))

(assert (=> bs!1368679 m!6739130))

(assert (=> d!1826330 d!1826384))

(check-sat (not d!1826250) (not b!5798417) (not b!5798105) (not d!1826332) (not d!1826364) (not b!5798096) (not d!1826228) (not d!1826362) (not b!5797722) (not bm!452048) (not bm!452056) (not b!5798335) (not b!5798433) (not b!5798345) (not b!5797902) (not b!5798128) (not bm!452044) (not b!5798396) (not d!1826334) (not b!5798171) (not d!1826210) (not setNonEmpty!39000) (not bm!452058) (not b!5798122) (not b!5798375) (not d!1826300) (not b!5798401) (not b!5797901) (not b!5798294) (not b!5798176) (not d!1826282) (not b!5798123) (not b!5798121) (not bm!452040) (not b!5798419) (not b!5798170) (not d!1826292) (not bm!452042) (not b!5798342) (not bm!452062) (not b!5798295) (not b!5798336) (not d!1826368) (not d!1826326) (not d!1826262) (not b!5798344) (not b!5798402) (not b!5798377) (not d!1826366) (not b_lambda!218557) (not d!1826374) (not b!5798432) (not b!5798010) (not bs!1368676) (not b!5798420) (not d!1826302) (not b!5798425) (not b!5798337) (not b!5798376) (not b!5797899) (not bm!452060) (not d!1826330) (not b!5798148) (not d!1826220) (not d!1826202) (not b!5798398) (not bm!451988) (not bm!452074) (not bs!1368677) (not bm!452075) (not bm!452078) (not b!5798406) (not b!5798175) (not b!5798383) (not b!5797904) (not bm!452079) (not b!5798438) (not b!5797712) (not b_lambda!218559) (not b!5798397) (not d!1826226) (not b!5798102) (not b!5798404) (not b!5798378) (not b!5798423) tp_is_empty!40879 (not b!5797905) (not b!5798373) (not b_lambda!218561) (not d!1826376) (not b!5798334) (not d!1826322) (not b!5798372) (not bs!1368678) (not d!1826230) (not b!5798099) (not d!1826342) (not b!5798412) (not b!5797903) (not b!5798369) (not bm!452054) (not bm!451989) (not b!5798405) (not b!5798341) (not d!1826206) (not b!5798100) (not bm!452061) (not b!5798120) (not d!1826284) (not b!5798028) (not b!5798424) (not b!5798027) (not d!1826318) (not bs!1368679) (not b_lambda!218563) (not d!1826316) (not b!5798098) (not b!5798411) (not b!5798400) (not d!1826328) (not b!5798147) (not d!1826248) (not b!5798421) (not d!1826372) (not b!5798097))
(check-sat)
