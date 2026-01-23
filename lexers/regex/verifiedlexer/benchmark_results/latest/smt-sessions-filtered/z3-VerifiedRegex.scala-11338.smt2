; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!599020 () Bool)

(assert start!599020)

(declare-fun b!5855690 () Bool)

(assert (=> b!5855690 true))

(declare-fun b!5855675 () Bool)

(declare-fun e!3590657 () Bool)

(declare-fun tp!1619924 () Bool)

(declare-fun tp!1619920 () Bool)

(assert (=> b!5855675 (= e!3590657 (and tp!1619924 tp!1619920))))

(declare-fun b!5855676 () Bool)

(declare-fun e!3590647 () Bool)

(declare-fun e!3590658 () Bool)

(assert (=> b!5855676 (= e!3590647 e!3590658)))

(declare-fun res!2464732 () Bool)

(assert (=> b!5855676 (=> res!2464732 e!3590658)))

(declare-fun lt!2304895 () Bool)

(declare-fun lt!2304899 () Bool)

(assert (=> b!5855676 (= res!2464732 (not (= lt!2304895 lt!2304899)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!32116 0))(
  ( (C!32117 (val!25760 Int)) )
))
(declare-datatypes ((Regex!15923 0))(
  ( (ElementMatch!15923 (c!1038343 C!32116)) (Concat!24768 (regOne!32358 Regex!15923) (regTwo!32358 Regex!15923)) (EmptyExpr!15923) (Star!15923 (reg!16252 Regex!15923)) (EmptyLang!15923) (Union!15923 (regOne!32359 Regex!15923) (regTwo!32359 Regex!15923)) )
))
(declare-datatypes ((List!64068 0))(
  ( (Nil!63944) (Cons!63944 (h!70392 Regex!15923) (t!377435 List!64068)) )
))
(declare-datatypes ((Context!10614 0))(
  ( (Context!10615 (exprs!5807 List!64068)) )
))
(declare-fun z!1189 () (InoxSet Context!10614))

(declare-datatypes ((List!64069 0))(
  ( (Nil!63945) (Cons!63945 (h!70393 C!32116) (t!377436 List!64069)) )
))
(declare-fun s!2326 () List!64069)

(declare-fun matchZipper!1989 ((InoxSet Context!10614) List!64069) Bool)

(assert (=> b!5855676 (= lt!2304899 (matchZipper!1989 z!1189 s!2326))))

(declare-fun lt!2304900 () (InoxSet Context!10614))

(assert (=> b!5855676 (= lt!2304895 (matchZipper!1989 lt!2304900 (t!377436 s!2326)))))

(declare-fun b!5855677 () Bool)

(declare-fun e!3590654 () Bool)

(declare-fun lt!2304909 () (InoxSet Context!10614))

(assert (=> b!5855677 (= e!3590654 (matchZipper!1989 lt!2304909 (t!377436 s!2326)))))

(declare-fun tp!1619919 () Bool)

(declare-fun e!3590656 () Bool)

(declare-fun e!3590652 () Bool)

(declare-datatypes ((List!64070 0))(
  ( (Nil!63946) (Cons!63946 (h!70394 Context!10614) (t!377437 List!64070)) )
))
(declare-fun zl!343 () List!64070)

(declare-fun b!5855678 () Bool)

(declare-fun inv!83054 (Context!10614) Bool)

(assert (=> b!5855678 (= e!3590656 (and (inv!83054 (h!70394 zl!343)) e!3590652 tp!1619919))))

(declare-fun b!5855679 () Bool)

(declare-fun e!3590651 () Bool)

(declare-fun e!3590649 () Bool)

(assert (=> b!5855679 (= e!3590651 (not e!3590649))))

(declare-fun res!2464737 () Bool)

(assert (=> b!5855679 (=> res!2464737 e!3590649)))

(get-info :version)

(assert (=> b!5855679 (= res!2464737 (not ((_ is Cons!63946) zl!343)))))

(declare-fun lt!2304897 () Bool)

(declare-fun r!7292 () Regex!15923)

(declare-fun matchRSpec!3024 (Regex!15923 List!64069) Bool)

(assert (=> b!5855679 (= lt!2304897 (matchRSpec!3024 r!7292 s!2326))))

(declare-fun matchR!8106 (Regex!15923 List!64069) Bool)

(assert (=> b!5855679 (= lt!2304897 (matchR!8106 r!7292 s!2326))))

(declare-datatypes ((Unit!157117 0))(
  ( (Unit!157118) )
))
(declare-fun lt!2304902 () Unit!157117)

(declare-fun mainMatchTheorem!3024 (Regex!15923 List!64069) Unit!157117)

(assert (=> b!5855679 (= lt!2304902 (mainMatchTheorem!3024 r!7292 s!2326))))

(declare-fun b!5855680 () Bool)

(declare-fun e!3590659 () Bool)

(declare-fun tp_is_empty!41099 () Bool)

(declare-fun tp!1619926 () Bool)

(assert (=> b!5855680 (= e!3590659 (and tp_is_empty!41099 tp!1619926))))

(declare-fun setIsEmpty!39690 () Bool)

(declare-fun setRes!39690 () Bool)

(assert (=> setIsEmpty!39690 setRes!39690))

(declare-fun b!5855681 () Bool)

(declare-fun e!3590653 () Bool)

(declare-fun tp!1619921 () Bool)

(assert (=> b!5855681 (= e!3590653 tp!1619921)))

(declare-fun b!5855682 () Bool)

(assert (=> b!5855682 (= e!3590657 tp_is_empty!41099)))

(declare-fun b!5855684 () Bool)

(declare-fun res!2464730 () Bool)

(assert (=> b!5855684 (=> res!2464730 e!3590649)))

(assert (=> b!5855684 (= res!2464730 (or ((_ is EmptyExpr!15923) r!7292) ((_ is EmptyLang!15923) r!7292) ((_ is ElementMatch!15923) r!7292) (not ((_ is Union!15923) r!7292))))))

(declare-fun b!5855685 () Bool)

(declare-fun res!2464742 () Bool)

(assert (=> b!5855685 (=> (not res!2464742) (not e!3590651))))

(declare-fun unfocusZipper!1665 (List!64070) Regex!15923)

(assert (=> b!5855685 (= res!2464742 (= r!7292 (unfocusZipper!1665 zl!343)))))

(declare-fun b!5855686 () Bool)

(declare-fun e!3590655 () Bool)

(declare-fun lt!2304891 () Context!10614)

(assert (=> b!5855686 (= e!3590655 (inv!83054 lt!2304891))))

(declare-fun lt!2304893 () (InoxSet Context!10614))

(declare-fun derivationStepZipperUp!1115 (Context!10614 C!32116) (InoxSet Context!10614))

(assert (=> b!5855686 (= lt!2304893 (derivationStepZipperUp!1115 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)) (h!70393 s!2326)))))

(declare-fun lt!2304903 () (InoxSet Context!10614))

(assert (=> b!5855686 (= lt!2304903 (derivationStepZipperUp!1115 lt!2304891 (h!70393 s!2326)))))

(assert (=> b!5855686 (= lt!2304891 (Context!10615 (Cons!63944 (regOne!32359 r!7292) Nil!63944)))))

(declare-fun b!5855687 () Bool)

(declare-fun tp!1619927 () Bool)

(assert (=> b!5855687 (= e!3590657 tp!1619927)))

(declare-fun b!5855688 () Bool)

(declare-fun e!3590650 () Bool)

(assert (=> b!5855688 (= e!3590649 e!3590650)))

(declare-fun res!2464740 () Bool)

(assert (=> b!5855688 (=> res!2464740 e!3590650)))

(declare-fun lt!2304907 () Bool)

(declare-fun lt!2304908 () Bool)

(assert (=> b!5855688 (= res!2464740 (or (not (= lt!2304897 (or lt!2304907 lt!2304908))) ((_ is Nil!63945) s!2326)))))

(assert (=> b!5855688 (= lt!2304908 (matchRSpec!3024 (regTwo!32359 r!7292) s!2326))))

(assert (=> b!5855688 (= lt!2304908 (matchR!8106 (regTwo!32359 r!7292) s!2326))))

(declare-fun lt!2304910 () Unit!157117)

(assert (=> b!5855688 (= lt!2304910 (mainMatchTheorem!3024 (regTwo!32359 r!7292) s!2326))))

(assert (=> b!5855688 (= lt!2304907 (matchRSpec!3024 (regOne!32359 r!7292) s!2326))))

(assert (=> b!5855688 (= lt!2304907 (matchR!8106 (regOne!32359 r!7292) s!2326))))

(declare-fun lt!2304894 () Unit!157117)

(assert (=> b!5855688 (= lt!2304894 (mainMatchTheorem!3024 (regOne!32359 r!7292) s!2326))))

(declare-fun b!5855689 () Bool)

(declare-fun tp!1619928 () Bool)

(assert (=> b!5855689 (= e!3590652 tp!1619928)))

(declare-fun e!3590648 () Bool)

(assert (=> b!5855690 (= e!3590648 e!3590647)))

(declare-fun res!2464738 () Bool)

(assert (=> b!5855690 (=> res!2464738 e!3590647)))

(declare-fun derivationStepZipper!1922 ((InoxSet Context!10614) C!32116) (InoxSet Context!10614))

(assert (=> b!5855690 (= res!2464738 (not (= (derivationStepZipper!1922 z!1189 (h!70393 s!2326)) lt!2304900)))))

(declare-fun lambda!320170 () Int)

(declare-fun flatMap!1454 ((InoxSet Context!10614) Int) (InoxSet Context!10614))

(assert (=> b!5855690 (= (flatMap!1454 z!1189 lambda!320170) (derivationStepZipperUp!1115 (h!70394 zl!343) (h!70393 s!2326)))))

(declare-fun lt!2304896 () Unit!157117)

(declare-fun lemmaFlatMapOnSingletonSet!982 ((InoxSet Context!10614) Context!10614 Int) Unit!157117)

(assert (=> b!5855690 (= lt!2304896 (lemmaFlatMapOnSingletonSet!982 z!1189 (h!70394 zl!343) lambda!320170))))

(declare-fun b!5855691 () Bool)

(assert (=> b!5855691 (= e!3590658 e!3590655)))

(declare-fun res!2464736 () Bool)

(assert (=> b!5855691 (=> res!2464736 e!3590655)))

(declare-fun lt!2304901 () Bool)

(assert (=> b!5855691 (= res!2464736 (or (not (= lt!2304901 lt!2304895)) (not (= lt!2304901 lt!2304899))))))

(assert (=> b!5855691 (= lt!2304895 lt!2304901)))

(assert (=> b!5855691 (= lt!2304901 e!3590654)))

(declare-fun res!2464733 () Bool)

(assert (=> b!5855691 (=> res!2464733 e!3590654)))

(declare-fun lt!2304905 () (InoxSet Context!10614))

(assert (=> b!5855691 (= res!2464733 (matchZipper!1989 lt!2304905 (t!377436 s!2326)))))

(declare-fun lt!2304906 () Unit!157117)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!824 ((InoxSet Context!10614) (InoxSet Context!10614) List!64069) Unit!157117)

(assert (=> b!5855691 (= lt!2304906 (lemmaZipperConcatMatchesSameAsBothZippers!824 lt!2304905 lt!2304909 (t!377436 s!2326)))))

(declare-fun setElem!39690 () Context!10614)

(declare-fun setNonEmpty!39690 () Bool)

(declare-fun tp!1619922 () Bool)

(assert (=> setNonEmpty!39690 (= setRes!39690 (and tp!1619922 (inv!83054 setElem!39690) e!3590653))))

(declare-fun setRest!39690 () (InoxSet Context!10614))

(assert (=> setNonEmpty!39690 (= z!1189 ((_ map or) (store ((as const (Array Context!10614 Bool)) false) setElem!39690 true) setRest!39690))))

(declare-fun b!5855692 () Bool)

(declare-fun res!2464734 () Bool)

(assert (=> b!5855692 (=> (not res!2464734) (not e!3590651))))

(declare-fun toList!9707 ((InoxSet Context!10614)) List!64070)

(assert (=> b!5855692 (= res!2464734 (= (toList!9707 z!1189) zl!343))))

(declare-fun b!5855693 () Bool)

(declare-fun res!2464735 () Bool)

(assert (=> b!5855693 (=> res!2464735 e!3590649)))

(declare-fun generalisedConcat!1520 (List!64068) Regex!15923)

(assert (=> b!5855693 (= res!2464735 (not (= r!7292 (generalisedConcat!1520 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5855694 () Bool)

(declare-fun res!2464739 () Bool)

(assert (=> b!5855694 (=> res!2464739 e!3590649)))

(declare-fun generalisedUnion!1767 (List!64068) Regex!15923)

(declare-fun unfocusZipperList!1344 (List!64070) List!64068)

(assert (=> b!5855694 (= res!2464739 (not (= r!7292 (generalisedUnion!1767 (unfocusZipperList!1344 zl!343)))))))

(declare-fun b!5855695 () Bool)

(declare-fun e!3590646 () Bool)

(assert (=> b!5855695 (= e!3590650 e!3590646)))

(declare-fun res!2464744 () Bool)

(assert (=> b!5855695 (=> res!2464744 e!3590646)))

(declare-fun lt!2304904 () (InoxSet Context!10614))

(declare-fun lt!2304892 () (InoxSet Context!10614))

(assert (=> b!5855695 (= res!2464744 (not (= lt!2304904 lt!2304892)))))

(declare-fun lt!2304898 () Context!10614)

(declare-fun derivationStepZipperDown!1189 (Regex!15923 Context!10614 C!32116) (InoxSet Context!10614))

(assert (=> b!5855695 (= lt!2304892 (derivationStepZipperDown!1189 r!7292 lt!2304898 (h!70393 s!2326)))))

(assert (=> b!5855695 (= lt!2304898 (Context!10615 Nil!63944))))

(assert (=> b!5855695 (= lt!2304904 (derivationStepZipperUp!1115 (Context!10615 (Cons!63944 r!7292 Nil!63944)) (h!70393 s!2326)))))

(declare-fun b!5855696 () Bool)

(assert (=> b!5855696 (= e!3590646 e!3590648)))

(declare-fun res!2464741 () Bool)

(assert (=> b!5855696 (=> res!2464741 e!3590648)))

(assert (=> b!5855696 (= res!2464741 (not (= lt!2304892 lt!2304900)))))

(assert (=> b!5855696 (= lt!2304900 ((_ map or) lt!2304905 lt!2304909))))

(assert (=> b!5855696 (= lt!2304909 (derivationStepZipperDown!1189 (regTwo!32359 r!7292) lt!2304898 (h!70393 s!2326)))))

(assert (=> b!5855696 (= lt!2304905 (derivationStepZipperDown!1189 (regOne!32359 r!7292) lt!2304898 (h!70393 s!2326)))))

(declare-fun res!2464731 () Bool)

(assert (=> start!599020 (=> (not res!2464731) (not e!3590651))))

(declare-fun validRegex!7659 (Regex!15923) Bool)

(assert (=> start!599020 (= res!2464731 (validRegex!7659 r!7292))))

(assert (=> start!599020 e!3590651))

(assert (=> start!599020 e!3590657))

(declare-fun condSetEmpty!39690 () Bool)

(assert (=> start!599020 (= condSetEmpty!39690 (= z!1189 ((as const (Array Context!10614 Bool)) false)))))

(assert (=> start!599020 setRes!39690))

(assert (=> start!599020 e!3590656))

(assert (=> start!599020 e!3590659))

(declare-fun b!5855683 () Bool)

(declare-fun tp!1619923 () Bool)

(declare-fun tp!1619925 () Bool)

(assert (=> b!5855683 (= e!3590657 (and tp!1619923 tp!1619925))))

(declare-fun b!5855697 () Bool)

(declare-fun res!2464743 () Bool)

(assert (=> b!5855697 (=> res!2464743 e!3590649)))

(assert (=> b!5855697 (= res!2464743 (not ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5855698 () Bool)

(declare-fun res!2464729 () Bool)

(assert (=> b!5855698 (=> res!2464729 e!3590649)))

(declare-fun isEmpty!35802 (List!64070) Bool)

(assert (=> b!5855698 (= res!2464729 (not (isEmpty!35802 (t!377437 zl!343))))))

(assert (= (and start!599020 res!2464731) b!5855692))

(assert (= (and b!5855692 res!2464734) b!5855685))

(assert (= (and b!5855685 res!2464742) b!5855679))

(assert (= (and b!5855679 (not res!2464737)) b!5855698))

(assert (= (and b!5855698 (not res!2464729)) b!5855693))

(assert (= (and b!5855693 (not res!2464735)) b!5855697))

(assert (= (and b!5855697 (not res!2464743)) b!5855694))

(assert (= (and b!5855694 (not res!2464739)) b!5855684))

(assert (= (and b!5855684 (not res!2464730)) b!5855688))

(assert (= (and b!5855688 (not res!2464740)) b!5855695))

(assert (= (and b!5855695 (not res!2464744)) b!5855696))

(assert (= (and b!5855696 (not res!2464741)) b!5855690))

(assert (= (and b!5855690 (not res!2464738)) b!5855676))

(assert (= (and b!5855676 (not res!2464732)) b!5855691))

(assert (= (and b!5855691 (not res!2464733)) b!5855677))

(assert (= (and b!5855691 (not res!2464736)) b!5855686))

(assert (= (and start!599020 ((_ is ElementMatch!15923) r!7292)) b!5855682))

(assert (= (and start!599020 ((_ is Concat!24768) r!7292)) b!5855675))

(assert (= (and start!599020 ((_ is Star!15923) r!7292)) b!5855687))

(assert (= (and start!599020 ((_ is Union!15923) r!7292)) b!5855683))

(assert (= (and start!599020 condSetEmpty!39690) setIsEmpty!39690))

(assert (= (and start!599020 (not condSetEmpty!39690)) setNonEmpty!39690))

(assert (= setNonEmpty!39690 b!5855681))

(assert (= b!5855678 b!5855689))

(assert (= (and start!599020 ((_ is Cons!63946) zl!343)) b!5855678))

(assert (= (and start!599020 ((_ is Cons!63945) s!2326)) b!5855680))

(declare-fun m!6774180 () Bool)

(assert (=> b!5855688 m!6774180))

(declare-fun m!6774182 () Bool)

(assert (=> b!5855688 m!6774182))

(declare-fun m!6774184 () Bool)

(assert (=> b!5855688 m!6774184))

(declare-fun m!6774186 () Bool)

(assert (=> b!5855688 m!6774186))

(declare-fun m!6774188 () Bool)

(assert (=> b!5855688 m!6774188))

(declare-fun m!6774190 () Bool)

(assert (=> b!5855688 m!6774190))

(declare-fun m!6774192 () Bool)

(assert (=> b!5855692 m!6774192))

(declare-fun m!6774194 () Bool)

(assert (=> b!5855698 m!6774194))

(declare-fun m!6774196 () Bool)

(assert (=> b!5855685 m!6774196))

(declare-fun m!6774198 () Bool)

(assert (=> b!5855695 m!6774198))

(declare-fun m!6774200 () Bool)

(assert (=> b!5855695 m!6774200))

(declare-fun m!6774202 () Bool)

(assert (=> b!5855691 m!6774202))

(declare-fun m!6774204 () Bool)

(assert (=> b!5855691 m!6774204))

(declare-fun m!6774206 () Bool)

(assert (=> b!5855693 m!6774206))

(declare-fun m!6774208 () Bool)

(assert (=> setNonEmpty!39690 m!6774208))

(declare-fun m!6774210 () Bool)

(assert (=> b!5855690 m!6774210))

(declare-fun m!6774212 () Bool)

(assert (=> b!5855690 m!6774212))

(declare-fun m!6774214 () Bool)

(assert (=> b!5855690 m!6774214))

(declare-fun m!6774216 () Bool)

(assert (=> b!5855690 m!6774216))

(declare-fun m!6774218 () Bool)

(assert (=> b!5855678 m!6774218))

(declare-fun m!6774220 () Bool)

(assert (=> b!5855676 m!6774220))

(declare-fun m!6774222 () Bool)

(assert (=> b!5855676 m!6774222))

(declare-fun m!6774224 () Bool)

(assert (=> start!599020 m!6774224))

(declare-fun m!6774226 () Bool)

(assert (=> b!5855679 m!6774226))

(declare-fun m!6774228 () Bool)

(assert (=> b!5855679 m!6774228))

(declare-fun m!6774230 () Bool)

(assert (=> b!5855679 m!6774230))

(declare-fun m!6774232 () Bool)

(assert (=> b!5855686 m!6774232))

(declare-fun m!6774234 () Bool)

(assert (=> b!5855686 m!6774234))

(declare-fun m!6774236 () Bool)

(assert (=> b!5855686 m!6774236))

(declare-fun m!6774238 () Bool)

(assert (=> b!5855696 m!6774238))

(declare-fun m!6774240 () Bool)

(assert (=> b!5855696 m!6774240))

(declare-fun m!6774242 () Bool)

(assert (=> b!5855694 m!6774242))

(assert (=> b!5855694 m!6774242))

(declare-fun m!6774244 () Bool)

(assert (=> b!5855694 m!6774244))

(declare-fun m!6774246 () Bool)

(assert (=> b!5855677 m!6774246))

(check-sat (not b!5855686) (not b!5855695) (not b!5855680) tp_is_empty!41099 (not b!5855677) (not b!5855681) (not b!5855693) (not b!5855679) (not setNonEmpty!39690) (not b!5855692) (not start!599020) (not b!5855690) (not b!5855683) (not b!5855694) (not b!5855689) (not b!5855696) (not b!5855675) (not b!5855687) (not b!5855678) (not b!5855676) (not b!5855685) (not b!5855691) (not b!5855688) (not b!5855698))
(check-sat)
(get-model)

(declare-fun b!5856114 () Bool)

(declare-fun e!3590894 () (InoxSet Context!10614))

(declare-fun call!458753 () (InoxSet Context!10614))

(assert (=> b!5856114 (= e!3590894 call!458753)))

(declare-fun b!5856115 () Bool)

(assert (=> b!5856115 (= e!3590894 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5856116 () Bool)

(declare-fun e!3590891 () (InoxSet Context!10614))

(assert (=> b!5856116 (= e!3590891 (store ((as const (Array Context!10614 Bool)) false) lt!2304898 true))))

(declare-fun b!5856117 () Bool)

(declare-fun e!3590890 () (InoxSet Context!10614))

(assert (=> b!5856117 (= e!3590891 e!3590890)))

(declare-fun c!1038470 () Bool)

(assert (=> b!5856117 (= c!1038470 ((_ is Union!15923) r!7292))))

(declare-fun bm!458747 () Bool)

(declare-fun c!1038471 () Bool)

(declare-fun c!1038467 () Bool)

(declare-fun call!458756 () List!64068)

(declare-fun $colon$colon!1828 (List!64068 Regex!15923) List!64068)

(assert (=> bm!458747 (= call!458756 ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038467 c!1038471) (regTwo!32358 r!7292) r!7292)))))

(declare-fun b!5856118 () Bool)

(declare-fun e!3590889 () (InoxSet Context!10614))

(declare-fun call!458751 () (InoxSet Context!10614))

(declare-fun call!458752 () (InoxSet Context!10614))

(assert (=> b!5856118 (= e!3590889 ((_ map or) call!458751 call!458752))))

(declare-fun bm!458748 () Bool)

(assert (=> bm!458748 (= call!458751 (derivationStepZipperDown!1189 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)) (ite c!1038470 lt!2304898 (Context!10615 call!458756)) (h!70393 s!2326)))))

(declare-fun bm!458749 () Bool)

(assert (=> bm!458749 (= call!458753 call!458752)))

(declare-fun d!1839085 () Bool)

(declare-fun c!1038468 () Bool)

(assert (=> d!1839085 (= c!1038468 (and ((_ is ElementMatch!15923) r!7292) (= (c!1038343 r!7292) (h!70393 s!2326))))))

(assert (=> d!1839085 (= (derivationStepZipperDown!1189 r!7292 lt!2304898 (h!70393 s!2326)) e!3590891)))

(declare-fun bm!458746 () Bool)

(declare-fun call!458754 () List!64068)

(assert (=> bm!458746 (= call!458754 call!458756)))

(declare-fun bm!458750 () Bool)

(declare-fun call!458755 () (InoxSet Context!10614))

(assert (=> bm!458750 (= call!458752 call!458755)))

(declare-fun b!5856119 () Bool)

(declare-fun e!3590893 () (InoxSet Context!10614))

(assert (=> b!5856119 (= e!3590893 call!458753)))

(declare-fun b!5856120 () Bool)

(declare-fun e!3590892 () Bool)

(declare-fun nullable!5923 (Regex!15923) Bool)

(assert (=> b!5856120 (= e!3590892 (nullable!5923 (regOne!32358 r!7292)))))

(declare-fun b!5856121 () Bool)

(assert (=> b!5856121 (= c!1038467 e!3590892)))

(declare-fun res!2464856 () Bool)

(assert (=> b!5856121 (=> (not res!2464856) (not e!3590892))))

(assert (=> b!5856121 (= res!2464856 ((_ is Concat!24768) r!7292))))

(assert (=> b!5856121 (= e!3590890 e!3590889)))

(declare-fun b!5856122 () Bool)

(assert (=> b!5856122 (= e!3590889 e!3590893)))

(assert (=> b!5856122 (= c!1038471 ((_ is Concat!24768) r!7292))))

(declare-fun bm!458751 () Bool)

(assert (=> bm!458751 (= call!458755 (derivationStepZipperDown!1189 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))) (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754)) (h!70393 s!2326)))))

(declare-fun b!5856123 () Bool)

(declare-fun c!1038469 () Bool)

(assert (=> b!5856123 (= c!1038469 ((_ is Star!15923) r!7292))))

(assert (=> b!5856123 (= e!3590893 e!3590894)))

(declare-fun b!5856124 () Bool)

(assert (=> b!5856124 (= e!3590890 ((_ map or) call!458755 call!458751))))

(assert (= (and d!1839085 c!1038468) b!5856116))

(assert (= (and d!1839085 (not c!1038468)) b!5856117))

(assert (= (and b!5856117 c!1038470) b!5856124))

(assert (= (and b!5856117 (not c!1038470)) b!5856121))

(assert (= (and b!5856121 res!2464856) b!5856120))

(assert (= (and b!5856121 c!1038467) b!5856118))

(assert (= (and b!5856121 (not c!1038467)) b!5856122))

(assert (= (and b!5856122 c!1038471) b!5856119))

(assert (= (and b!5856122 (not c!1038471)) b!5856123))

(assert (= (and b!5856123 c!1038469) b!5856114))

(assert (= (and b!5856123 (not c!1038469)) b!5856115))

(assert (= (or b!5856119 b!5856114) bm!458746))

(assert (= (or b!5856119 b!5856114) bm!458749))

(assert (= (or b!5856118 bm!458746) bm!458747))

(assert (= (or b!5856118 bm!458749) bm!458750))

(assert (= (or b!5856124 b!5856118) bm!458748))

(assert (= (or b!5856124 bm!458750) bm!458751))

(declare-fun m!6774460 () Bool)

(assert (=> bm!458747 m!6774460))

(declare-fun m!6774462 () Bool)

(assert (=> b!5856120 m!6774462))

(declare-fun m!6774464 () Bool)

(assert (=> bm!458751 m!6774464))

(declare-fun m!6774466 () Bool)

(assert (=> bm!458748 m!6774466))

(declare-fun m!6774468 () Bool)

(assert (=> b!5856116 m!6774468))

(assert (=> b!5855695 d!1839085))

(declare-fun b!5856135 () Bool)

(declare-fun e!3590902 () Bool)

(assert (=> b!5856135 (= e!3590902 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(declare-fun b!5856136 () Bool)

(declare-fun e!3590903 () (InoxSet Context!10614))

(declare-fun e!3590901 () (InoxSet Context!10614))

(assert (=> b!5856136 (= e!3590903 e!3590901)))

(declare-fun c!1038476 () Bool)

(assert (=> b!5856136 (= c!1038476 ((_ is Cons!63944) (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))

(declare-fun d!1839089 () Bool)

(declare-fun c!1038477 () Bool)

(assert (=> d!1839089 (= c!1038477 e!3590902)))

(declare-fun res!2464859 () Bool)

(assert (=> d!1839089 (=> (not res!2464859) (not e!3590902))))

(assert (=> d!1839089 (= res!2464859 ((_ is Cons!63944) (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))

(assert (=> d!1839089 (= (derivationStepZipperUp!1115 (Context!10615 (Cons!63944 r!7292 Nil!63944)) (h!70393 s!2326)) e!3590903)))

(declare-fun b!5856137 () Bool)

(assert (=> b!5856137 (= e!3590901 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458754 () Bool)

(declare-fun call!458759 () (InoxSet Context!10614))

(assert (=> bm!458754 (= call!458759 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70393 s!2326)))))

(declare-fun b!5856138 () Bool)

(assert (=> b!5856138 (= e!3590903 ((_ map or) call!458759 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70393 s!2326))))))

(declare-fun b!5856139 () Bool)

(assert (=> b!5856139 (= e!3590901 call!458759)))

(assert (= (and d!1839089 res!2464859) b!5856135))

(assert (= (and d!1839089 c!1038477) b!5856138))

(assert (= (and d!1839089 (not c!1038477)) b!5856136))

(assert (= (and b!5856136 c!1038476) b!5856139))

(assert (= (and b!5856136 (not c!1038476)) b!5856137))

(assert (= (or b!5856138 b!5856139) bm!458754))

(declare-fun m!6774470 () Bool)

(assert (=> b!5856135 m!6774470))

(declare-fun m!6774472 () Bool)

(assert (=> bm!458754 m!6774472))

(declare-fun m!6774474 () Bool)

(assert (=> b!5856138 m!6774474))

(assert (=> b!5855695 d!1839089))

(declare-fun d!1839091 () Bool)

(declare-fun c!1038480 () Bool)

(declare-fun isEmpty!35805 (List!64069) Bool)

(assert (=> d!1839091 (= c!1038480 (isEmpty!35805 s!2326))))

(declare-fun e!3590906 () Bool)

(assert (=> d!1839091 (= (matchZipper!1989 z!1189 s!2326) e!3590906)))

(declare-fun b!5856144 () Bool)

(declare-fun nullableZipper!1762 ((InoxSet Context!10614)) Bool)

(assert (=> b!5856144 (= e!3590906 (nullableZipper!1762 z!1189))))

(declare-fun b!5856145 () Bool)

(declare-fun head!12400 (List!64069) C!32116)

(declare-fun tail!11485 (List!64069) List!64069)

(assert (=> b!5856145 (= e!3590906 (matchZipper!1989 (derivationStepZipper!1922 z!1189 (head!12400 s!2326)) (tail!11485 s!2326)))))

(assert (= (and d!1839091 c!1038480) b!5856144))

(assert (= (and d!1839091 (not c!1038480)) b!5856145))

(declare-fun m!6774476 () Bool)

(assert (=> d!1839091 m!6774476))

(declare-fun m!6774478 () Bool)

(assert (=> b!5856144 m!6774478))

(declare-fun m!6774480 () Bool)

(assert (=> b!5856145 m!6774480))

(assert (=> b!5856145 m!6774480))

(declare-fun m!6774482 () Bool)

(assert (=> b!5856145 m!6774482))

(declare-fun m!6774484 () Bool)

(assert (=> b!5856145 m!6774484))

(assert (=> b!5856145 m!6774482))

(assert (=> b!5856145 m!6774484))

(declare-fun m!6774486 () Bool)

(assert (=> b!5856145 m!6774486))

(assert (=> b!5855676 d!1839091))

(declare-fun d!1839093 () Bool)

(declare-fun c!1038481 () Bool)

(assert (=> d!1839093 (= c!1038481 (isEmpty!35805 (t!377436 s!2326)))))

(declare-fun e!3590907 () Bool)

(assert (=> d!1839093 (= (matchZipper!1989 lt!2304900 (t!377436 s!2326)) e!3590907)))

(declare-fun b!5856146 () Bool)

(assert (=> b!5856146 (= e!3590907 (nullableZipper!1762 lt!2304900))))

(declare-fun b!5856147 () Bool)

(assert (=> b!5856147 (= e!3590907 (matchZipper!1989 (derivationStepZipper!1922 lt!2304900 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))))))

(assert (= (and d!1839093 c!1038481) b!5856146))

(assert (= (and d!1839093 (not c!1038481)) b!5856147))

(declare-fun m!6774488 () Bool)

(assert (=> d!1839093 m!6774488))

(declare-fun m!6774490 () Bool)

(assert (=> b!5856146 m!6774490))

(declare-fun m!6774492 () Bool)

(assert (=> b!5856147 m!6774492))

(assert (=> b!5856147 m!6774492))

(declare-fun m!6774494 () Bool)

(assert (=> b!5856147 m!6774494))

(declare-fun m!6774496 () Bool)

(assert (=> b!5856147 m!6774496))

(assert (=> b!5856147 m!6774494))

(assert (=> b!5856147 m!6774496))

(declare-fun m!6774498 () Bool)

(assert (=> b!5856147 m!6774498))

(assert (=> b!5855676 d!1839093))

(declare-fun d!1839095 () Bool)

(declare-fun lt!2304944 () Regex!15923)

(assert (=> d!1839095 (validRegex!7659 lt!2304944)))

(assert (=> d!1839095 (= lt!2304944 (generalisedUnion!1767 (unfocusZipperList!1344 zl!343)))))

(assert (=> d!1839095 (= (unfocusZipper!1665 zl!343) lt!2304944)))

(declare-fun bs!1379774 () Bool)

(assert (= bs!1379774 d!1839095))

(declare-fun m!6774500 () Bool)

(assert (=> bs!1379774 m!6774500))

(assert (=> bs!1379774 m!6774242))

(assert (=> bs!1379774 m!6774242))

(assert (=> bs!1379774 m!6774244))

(assert (=> b!5855685 d!1839095))

(declare-fun d!1839097 () Bool)

(declare-fun c!1038482 () Bool)

(assert (=> d!1839097 (= c!1038482 (isEmpty!35805 (t!377436 s!2326)))))

(declare-fun e!3590908 () Bool)

(assert (=> d!1839097 (= (matchZipper!1989 lt!2304909 (t!377436 s!2326)) e!3590908)))

(declare-fun b!5856148 () Bool)

(assert (=> b!5856148 (= e!3590908 (nullableZipper!1762 lt!2304909))))

(declare-fun b!5856149 () Bool)

(assert (=> b!5856149 (= e!3590908 (matchZipper!1989 (derivationStepZipper!1922 lt!2304909 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))))))

(assert (= (and d!1839097 c!1038482) b!5856148))

(assert (= (and d!1839097 (not c!1038482)) b!5856149))

(assert (=> d!1839097 m!6774488))

(declare-fun m!6774502 () Bool)

(assert (=> b!5856148 m!6774502))

(assert (=> b!5856149 m!6774492))

(assert (=> b!5856149 m!6774492))

(declare-fun m!6774504 () Bool)

(assert (=> b!5856149 m!6774504))

(assert (=> b!5856149 m!6774496))

(assert (=> b!5856149 m!6774504))

(assert (=> b!5856149 m!6774496))

(declare-fun m!6774506 () Bool)

(assert (=> b!5856149 m!6774506))

(assert (=> b!5855677 d!1839097))

(declare-fun d!1839099 () Bool)

(declare-fun lambda!320200 () Int)

(declare-fun forall!15010 (List!64068 Int) Bool)

(assert (=> d!1839099 (= (inv!83054 lt!2304891) (forall!15010 (exprs!5807 lt!2304891) lambda!320200))))

(declare-fun bs!1379775 () Bool)

(assert (= bs!1379775 d!1839099))

(declare-fun m!6774508 () Bool)

(assert (=> bs!1379775 m!6774508))

(assert (=> b!5855686 d!1839099))

(declare-fun b!5856150 () Bool)

(declare-fun e!3590910 () Bool)

(assert (=> b!5856150 (= e!3590910 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(declare-fun b!5856151 () Bool)

(declare-fun e!3590911 () (InoxSet Context!10614))

(declare-fun e!3590909 () (InoxSet Context!10614))

(assert (=> b!5856151 (= e!3590911 e!3590909)))

(declare-fun c!1038483 () Bool)

(assert (=> b!5856151 (= c!1038483 ((_ is Cons!63944) (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))

(declare-fun d!1839101 () Bool)

(declare-fun c!1038484 () Bool)

(assert (=> d!1839101 (= c!1038484 e!3590910)))

(declare-fun res!2464860 () Bool)

(assert (=> d!1839101 (=> (not res!2464860) (not e!3590910))))

(assert (=> d!1839101 (= res!2464860 ((_ is Cons!63944) (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))

(assert (=> d!1839101 (= (derivationStepZipperUp!1115 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)) (h!70393 s!2326)) e!3590911)))

(declare-fun b!5856152 () Bool)

(assert (=> b!5856152 (= e!3590909 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458755 () Bool)

(declare-fun call!458760 () (InoxSet Context!10614))

(assert (=> bm!458755 (= call!458760 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70393 s!2326)))))

(declare-fun b!5856153 () Bool)

(assert (=> b!5856153 (= e!3590911 ((_ map or) call!458760 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70393 s!2326))))))

(declare-fun b!5856154 () Bool)

(assert (=> b!5856154 (= e!3590909 call!458760)))

(assert (= (and d!1839101 res!2464860) b!5856150))

(assert (= (and d!1839101 c!1038484) b!5856153))

(assert (= (and d!1839101 (not c!1038484)) b!5856151))

(assert (= (and b!5856151 c!1038483) b!5856154))

(assert (= (and b!5856151 (not c!1038483)) b!5856152))

(assert (= (or b!5856153 b!5856154) bm!458755))

(declare-fun m!6774510 () Bool)

(assert (=> b!5856150 m!6774510))

(declare-fun m!6774512 () Bool)

(assert (=> bm!458755 m!6774512))

(declare-fun m!6774514 () Bool)

(assert (=> b!5856153 m!6774514))

(assert (=> b!5855686 d!1839101))

(declare-fun b!5856155 () Bool)

(declare-fun e!3590913 () Bool)

(assert (=> b!5856155 (= e!3590913 (nullable!5923 (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun b!5856156 () Bool)

(declare-fun e!3590914 () (InoxSet Context!10614))

(declare-fun e!3590912 () (InoxSet Context!10614))

(assert (=> b!5856156 (= e!3590914 e!3590912)))

(declare-fun c!1038485 () Bool)

(assert (=> b!5856156 (= c!1038485 ((_ is Cons!63944) (exprs!5807 lt!2304891)))))

(declare-fun d!1839103 () Bool)

(declare-fun c!1038486 () Bool)

(assert (=> d!1839103 (= c!1038486 e!3590913)))

(declare-fun res!2464861 () Bool)

(assert (=> d!1839103 (=> (not res!2464861) (not e!3590913))))

(assert (=> d!1839103 (= res!2464861 ((_ is Cons!63944) (exprs!5807 lt!2304891)))))

(assert (=> d!1839103 (= (derivationStepZipperUp!1115 lt!2304891 (h!70393 s!2326)) e!3590914)))

(declare-fun b!5856157 () Bool)

(assert (=> b!5856157 (= e!3590912 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458756 () Bool)

(declare-fun call!458761 () (InoxSet Context!10614))

(assert (=> bm!458756 (= call!458761 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 lt!2304891)) (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (h!70393 s!2326)))))

(declare-fun b!5856158 () Bool)

(assert (=> b!5856158 (= e!3590914 ((_ map or) call!458761 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (h!70393 s!2326))))))

(declare-fun b!5856159 () Bool)

(assert (=> b!5856159 (= e!3590912 call!458761)))

(assert (= (and d!1839103 res!2464861) b!5856155))

(assert (= (and d!1839103 c!1038486) b!5856158))

(assert (= (and d!1839103 (not c!1038486)) b!5856156))

(assert (= (and b!5856156 c!1038485) b!5856159))

(assert (= (and b!5856156 (not c!1038485)) b!5856157))

(assert (= (or b!5856158 b!5856159) bm!458756))

(declare-fun m!6774516 () Bool)

(assert (=> b!5856155 m!6774516))

(declare-fun m!6774518 () Bool)

(assert (=> bm!458756 m!6774518))

(declare-fun m!6774520 () Bool)

(assert (=> b!5856158 m!6774520))

(assert (=> b!5855686 d!1839103))

(declare-fun b!5856160 () Bool)

(declare-fun e!3590920 () (InoxSet Context!10614))

(declare-fun call!458764 () (InoxSet Context!10614))

(assert (=> b!5856160 (= e!3590920 call!458764)))

(declare-fun b!5856161 () Bool)

(assert (=> b!5856161 (= e!3590920 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5856162 () Bool)

(declare-fun e!3590917 () (InoxSet Context!10614))

(assert (=> b!5856162 (= e!3590917 (store ((as const (Array Context!10614 Bool)) false) lt!2304898 true))))

(declare-fun b!5856163 () Bool)

(declare-fun e!3590916 () (InoxSet Context!10614))

(assert (=> b!5856163 (= e!3590917 e!3590916)))

(declare-fun c!1038490 () Bool)

(assert (=> b!5856163 (= c!1038490 ((_ is Union!15923) (regTwo!32359 r!7292)))))

(declare-fun bm!458758 () Bool)

(declare-fun c!1038491 () Bool)

(declare-fun c!1038487 () Bool)

(declare-fun call!458767 () List!64068)

(assert (=> bm!458758 (= call!458767 ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038487 c!1038491) (regTwo!32358 (regTwo!32359 r!7292)) (regTwo!32359 r!7292))))))

(declare-fun b!5856164 () Bool)

(declare-fun e!3590915 () (InoxSet Context!10614))

(declare-fun call!458762 () (InoxSet Context!10614))

(declare-fun call!458763 () (InoxSet Context!10614))

(assert (=> b!5856164 (= e!3590915 ((_ map or) call!458762 call!458763))))

(declare-fun bm!458759 () Bool)

(assert (=> bm!458759 (= call!458762 (derivationStepZipperDown!1189 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))) (ite c!1038490 lt!2304898 (Context!10615 call!458767)) (h!70393 s!2326)))))

(declare-fun bm!458760 () Bool)

(assert (=> bm!458760 (= call!458764 call!458763)))

(declare-fun d!1839105 () Bool)

(declare-fun c!1038488 () Bool)

(assert (=> d!1839105 (= c!1038488 (and ((_ is ElementMatch!15923) (regTwo!32359 r!7292)) (= (c!1038343 (regTwo!32359 r!7292)) (h!70393 s!2326))))))

(assert (=> d!1839105 (= (derivationStepZipperDown!1189 (regTwo!32359 r!7292) lt!2304898 (h!70393 s!2326)) e!3590917)))

(declare-fun bm!458757 () Bool)

(declare-fun call!458765 () List!64068)

(assert (=> bm!458757 (= call!458765 call!458767)))

(declare-fun bm!458761 () Bool)

(declare-fun call!458766 () (InoxSet Context!10614))

(assert (=> bm!458761 (= call!458763 call!458766)))

(declare-fun b!5856165 () Bool)

(declare-fun e!3590919 () (InoxSet Context!10614))

(assert (=> b!5856165 (= e!3590919 call!458764)))

(declare-fun b!5856166 () Bool)

(declare-fun e!3590918 () Bool)

(assert (=> b!5856166 (= e!3590918 (nullable!5923 (regOne!32358 (regTwo!32359 r!7292))))))

(declare-fun b!5856167 () Bool)

(assert (=> b!5856167 (= c!1038487 e!3590918)))

(declare-fun res!2464862 () Bool)

(assert (=> b!5856167 (=> (not res!2464862) (not e!3590918))))

(assert (=> b!5856167 (= res!2464862 ((_ is Concat!24768) (regTwo!32359 r!7292)))))

(assert (=> b!5856167 (= e!3590916 e!3590915)))

(declare-fun b!5856168 () Bool)

(assert (=> b!5856168 (= e!3590915 e!3590919)))

(assert (=> b!5856168 (= c!1038491 ((_ is Concat!24768) (regTwo!32359 r!7292)))))

(declare-fun bm!458762 () Bool)

(assert (=> bm!458762 (= call!458766 (derivationStepZipperDown!1189 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))) (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765)) (h!70393 s!2326)))))

(declare-fun b!5856169 () Bool)

(declare-fun c!1038489 () Bool)

(assert (=> b!5856169 (= c!1038489 ((_ is Star!15923) (regTwo!32359 r!7292)))))

(assert (=> b!5856169 (= e!3590919 e!3590920)))

(declare-fun b!5856170 () Bool)

(assert (=> b!5856170 (= e!3590916 ((_ map or) call!458766 call!458762))))

(assert (= (and d!1839105 c!1038488) b!5856162))

(assert (= (and d!1839105 (not c!1038488)) b!5856163))

(assert (= (and b!5856163 c!1038490) b!5856170))

(assert (= (and b!5856163 (not c!1038490)) b!5856167))

(assert (= (and b!5856167 res!2464862) b!5856166))

(assert (= (and b!5856167 c!1038487) b!5856164))

(assert (= (and b!5856167 (not c!1038487)) b!5856168))

(assert (= (and b!5856168 c!1038491) b!5856165))

(assert (= (and b!5856168 (not c!1038491)) b!5856169))

(assert (= (and b!5856169 c!1038489) b!5856160))

(assert (= (and b!5856169 (not c!1038489)) b!5856161))

(assert (= (or b!5856165 b!5856160) bm!458757))

(assert (= (or b!5856165 b!5856160) bm!458760))

(assert (= (or b!5856164 bm!458757) bm!458758))

(assert (= (or b!5856164 bm!458760) bm!458761))

(assert (= (or b!5856170 b!5856164) bm!458759))

(assert (= (or b!5856170 bm!458761) bm!458762))

(declare-fun m!6774522 () Bool)

(assert (=> bm!458758 m!6774522))

(declare-fun m!6774524 () Bool)

(assert (=> b!5856166 m!6774524))

(declare-fun m!6774526 () Bool)

(assert (=> bm!458762 m!6774526))

(declare-fun m!6774528 () Bool)

(assert (=> bm!458759 m!6774528))

(assert (=> b!5856162 m!6774468))

(assert (=> b!5855696 d!1839105))

(declare-fun b!5856171 () Bool)

(declare-fun e!3590926 () (InoxSet Context!10614))

(declare-fun call!458770 () (InoxSet Context!10614))

(assert (=> b!5856171 (= e!3590926 call!458770)))

(declare-fun b!5856172 () Bool)

(assert (=> b!5856172 (= e!3590926 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5856173 () Bool)

(declare-fun e!3590923 () (InoxSet Context!10614))

(assert (=> b!5856173 (= e!3590923 (store ((as const (Array Context!10614 Bool)) false) lt!2304898 true))))

(declare-fun b!5856174 () Bool)

(declare-fun e!3590922 () (InoxSet Context!10614))

(assert (=> b!5856174 (= e!3590923 e!3590922)))

(declare-fun c!1038495 () Bool)

(assert (=> b!5856174 (= c!1038495 ((_ is Union!15923) (regOne!32359 r!7292)))))

(declare-fun call!458773 () List!64068)

(declare-fun bm!458764 () Bool)

(declare-fun c!1038496 () Bool)

(declare-fun c!1038492 () Bool)

(assert (=> bm!458764 (= call!458773 ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038492 c!1038496) (regTwo!32358 (regOne!32359 r!7292)) (regOne!32359 r!7292))))))

(declare-fun b!5856175 () Bool)

(declare-fun e!3590921 () (InoxSet Context!10614))

(declare-fun call!458768 () (InoxSet Context!10614))

(declare-fun call!458769 () (InoxSet Context!10614))

(assert (=> b!5856175 (= e!3590921 ((_ map or) call!458768 call!458769))))

(declare-fun bm!458765 () Bool)

(assert (=> bm!458765 (= call!458768 (derivationStepZipperDown!1189 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))) (ite c!1038495 lt!2304898 (Context!10615 call!458773)) (h!70393 s!2326)))))

(declare-fun bm!458766 () Bool)

(assert (=> bm!458766 (= call!458770 call!458769)))

(declare-fun d!1839107 () Bool)

(declare-fun c!1038493 () Bool)

(assert (=> d!1839107 (= c!1038493 (and ((_ is ElementMatch!15923) (regOne!32359 r!7292)) (= (c!1038343 (regOne!32359 r!7292)) (h!70393 s!2326))))))

(assert (=> d!1839107 (= (derivationStepZipperDown!1189 (regOne!32359 r!7292) lt!2304898 (h!70393 s!2326)) e!3590923)))

(declare-fun bm!458763 () Bool)

(declare-fun call!458771 () List!64068)

(assert (=> bm!458763 (= call!458771 call!458773)))

(declare-fun bm!458767 () Bool)

(declare-fun call!458772 () (InoxSet Context!10614))

(assert (=> bm!458767 (= call!458769 call!458772)))

(declare-fun b!5856176 () Bool)

(declare-fun e!3590925 () (InoxSet Context!10614))

(assert (=> b!5856176 (= e!3590925 call!458770)))

(declare-fun b!5856177 () Bool)

(declare-fun e!3590924 () Bool)

(assert (=> b!5856177 (= e!3590924 (nullable!5923 (regOne!32358 (regOne!32359 r!7292))))))

(declare-fun b!5856178 () Bool)

(assert (=> b!5856178 (= c!1038492 e!3590924)))

(declare-fun res!2464863 () Bool)

(assert (=> b!5856178 (=> (not res!2464863) (not e!3590924))))

(assert (=> b!5856178 (= res!2464863 ((_ is Concat!24768) (regOne!32359 r!7292)))))

(assert (=> b!5856178 (= e!3590922 e!3590921)))

(declare-fun b!5856179 () Bool)

(assert (=> b!5856179 (= e!3590921 e!3590925)))

(assert (=> b!5856179 (= c!1038496 ((_ is Concat!24768) (regOne!32359 r!7292)))))

(declare-fun bm!458768 () Bool)

(assert (=> bm!458768 (= call!458772 (derivationStepZipperDown!1189 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))) (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771)) (h!70393 s!2326)))))

(declare-fun b!5856180 () Bool)

(declare-fun c!1038494 () Bool)

(assert (=> b!5856180 (= c!1038494 ((_ is Star!15923) (regOne!32359 r!7292)))))

(assert (=> b!5856180 (= e!3590925 e!3590926)))

(declare-fun b!5856181 () Bool)

(assert (=> b!5856181 (= e!3590922 ((_ map or) call!458772 call!458768))))

(assert (= (and d!1839107 c!1038493) b!5856173))

(assert (= (and d!1839107 (not c!1038493)) b!5856174))

(assert (= (and b!5856174 c!1038495) b!5856181))

(assert (= (and b!5856174 (not c!1038495)) b!5856178))

(assert (= (and b!5856178 res!2464863) b!5856177))

(assert (= (and b!5856178 c!1038492) b!5856175))

(assert (= (and b!5856178 (not c!1038492)) b!5856179))

(assert (= (and b!5856179 c!1038496) b!5856176))

(assert (= (and b!5856179 (not c!1038496)) b!5856180))

(assert (= (and b!5856180 c!1038494) b!5856171))

(assert (= (and b!5856180 (not c!1038494)) b!5856172))

(assert (= (or b!5856176 b!5856171) bm!458763))

(assert (= (or b!5856176 b!5856171) bm!458766))

(assert (= (or b!5856175 bm!458763) bm!458764))

(assert (= (or b!5856175 bm!458766) bm!458767))

(assert (= (or b!5856181 b!5856175) bm!458765))

(assert (= (or b!5856181 bm!458767) bm!458768))

(declare-fun m!6774530 () Bool)

(assert (=> bm!458764 m!6774530))

(declare-fun m!6774532 () Bool)

(assert (=> b!5856177 m!6774532))

(declare-fun m!6774534 () Bool)

(assert (=> bm!458768 m!6774534))

(declare-fun m!6774536 () Bool)

(assert (=> bm!458765 m!6774536))

(assert (=> b!5856173 m!6774468))

(assert (=> b!5855696 d!1839107))

(declare-fun b!5856214 () Bool)

(assert (=> b!5856214 true))

(assert (=> b!5856214 true))

(declare-fun bs!1379776 () Bool)

(declare-fun b!5856224 () Bool)

(assert (= bs!1379776 (and b!5856224 b!5856214)))

(declare-fun lambda!320206 () Int)

(declare-fun lambda!320205 () Int)

(assert (=> bs!1379776 (not (= lambda!320206 lambda!320205))))

(assert (=> b!5856224 true))

(assert (=> b!5856224 true))

(declare-fun e!3590949 () Bool)

(declare-fun call!458779 () Bool)

(assert (=> b!5856214 (= e!3590949 call!458779)))

(declare-fun b!5856215 () Bool)

(declare-fun e!3590947 () Bool)

(declare-fun call!458778 () Bool)

(assert (=> b!5856215 (= e!3590947 call!458778)))

(declare-fun b!5856216 () Bool)

(declare-fun c!1038508 () Bool)

(assert (=> b!5856216 (= c!1038508 ((_ is ElementMatch!15923) (regTwo!32359 r!7292)))))

(declare-fun e!3590948 () Bool)

(declare-fun e!3590945 () Bool)

(assert (=> b!5856216 (= e!3590948 e!3590945)))

(declare-fun b!5856217 () Bool)

(declare-fun e!3590950 () Bool)

(assert (=> b!5856217 (= e!3590950 (matchRSpec!3024 (regTwo!32359 (regTwo!32359 r!7292)) s!2326))))

(declare-fun b!5856219 () Bool)

(declare-fun c!1038506 () Bool)

(assert (=> b!5856219 (= c!1038506 ((_ is Union!15923) (regTwo!32359 r!7292)))))

(declare-fun e!3590946 () Bool)

(assert (=> b!5856219 (= e!3590945 e!3590946)))

(declare-fun b!5856220 () Bool)

(declare-fun res!2464882 () Bool)

(assert (=> b!5856220 (=> res!2464882 e!3590949)))

(assert (=> b!5856220 (= res!2464882 call!458778)))

(declare-fun e!3590951 () Bool)

(assert (=> b!5856220 (= e!3590951 e!3590949)))

(declare-fun b!5856221 () Bool)

(assert (=> b!5856221 (= e!3590946 e!3590950)))

(declare-fun res!2464880 () Bool)

(assert (=> b!5856221 (= res!2464880 (matchRSpec!3024 (regOne!32359 (regTwo!32359 r!7292)) s!2326))))

(assert (=> b!5856221 (=> res!2464880 e!3590950)))

(declare-fun b!5856222 () Bool)

(assert (=> b!5856222 (= e!3590947 e!3590948)))

(declare-fun res!2464881 () Bool)

(assert (=> b!5856222 (= res!2464881 (not ((_ is EmptyLang!15923) (regTwo!32359 r!7292))))))

(assert (=> b!5856222 (=> (not res!2464881) (not e!3590948))))

(declare-fun bm!458773 () Bool)

(assert (=> bm!458773 (= call!458778 (isEmpty!35805 s!2326))))

(declare-fun b!5856223 () Bool)

(assert (=> b!5856223 (= e!3590946 e!3590951)))

(declare-fun c!1038505 () Bool)

(assert (=> b!5856223 (= c!1038505 ((_ is Star!15923) (regTwo!32359 r!7292)))))

(declare-fun d!1839109 () Bool)

(declare-fun c!1038507 () Bool)

(assert (=> d!1839109 (= c!1038507 ((_ is EmptyExpr!15923) (regTwo!32359 r!7292)))))

(assert (=> d!1839109 (= (matchRSpec!3024 (regTwo!32359 r!7292) s!2326) e!3590947)))

(declare-fun b!5856218 () Bool)

(assert (=> b!5856218 (= e!3590945 (= s!2326 (Cons!63945 (c!1038343 (regTwo!32359 r!7292)) Nil!63945)))))

(assert (=> b!5856224 (= e!3590951 call!458779)))

(declare-fun bm!458774 () Bool)

(declare-fun Exists!2995 (Int) Bool)

(assert (=> bm!458774 (= call!458779 (Exists!2995 (ite c!1038505 lambda!320205 lambda!320206)))))

(assert (= (and d!1839109 c!1038507) b!5856215))

(assert (= (and d!1839109 (not c!1038507)) b!5856222))

(assert (= (and b!5856222 res!2464881) b!5856216))

(assert (= (and b!5856216 c!1038508) b!5856218))

(assert (= (and b!5856216 (not c!1038508)) b!5856219))

(assert (= (and b!5856219 c!1038506) b!5856221))

(assert (= (and b!5856219 (not c!1038506)) b!5856223))

(assert (= (and b!5856221 (not res!2464880)) b!5856217))

(assert (= (and b!5856223 c!1038505) b!5856220))

(assert (= (and b!5856223 (not c!1038505)) b!5856224))

(assert (= (and b!5856220 (not res!2464882)) b!5856214))

(assert (= (or b!5856214 b!5856224) bm!458774))

(assert (= (or b!5856215 b!5856220) bm!458773))

(declare-fun m!6774538 () Bool)

(assert (=> b!5856217 m!6774538))

(declare-fun m!6774540 () Bool)

(assert (=> b!5856221 m!6774540))

(assert (=> bm!458773 m!6774476))

(declare-fun m!6774542 () Bool)

(assert (=> bm!458774 m!6774542))

(assert (=> b!5855688 d!1839109))

(declare-fun d!1839111 () Bool)

(assert (=> d!1839111 (= (matchR!8106 (regOne!32359 r!7292) s!2326) (matchRSpec!3024 (regOne!32359 r!7292) s!2326))))

(declare-fun lt!2304947 () Unit!157117)

(declare-fun choose!44405 (Regex!15923 List!64069) Unit!157117)

(assert (=> d!1839111 (= lt!2304947 (choose!44405 (regOne!32359 r!7292) s!2326))))

(assert (=> d!1839111 (validRegex!7659 (regOne!32359 r!7292))))

(assert (=> d!1839111 (= (mainMatchTheorem!3024 (regOne!32359 r!7292) s!2326) lt!2304947)))

(declare-fun bs!1379777 () Bool)

(assert (= bs!1379777 d!1839111))

(assert (=> bs!1379777 m!6774190))

(assert (=> bs!1379777 m!6774186))

(declare-fun m!6774544 () Bool)

(assert (=> bs!1379777 m!6774544))

(declare-fun m!6774546 () Bool)

(assert (=> bs!1379777 m!6774546))

(assert (=> b!5855688 d!1839111))

(declare-fun b!5856257 () Bool)

(declare-fun res!2464903 () Bool)

(declare-fun e!3590970 () Bool)

(assert (=> b!5856257 (=> res!2464903 e!3590970)))

(assert (=> b!5856257 (= res!2464903 (not (isEmpty!35805 (tail!11485 s!2326))))))

(declare-fun b!5856258 () Bool)

(declare-fun e!3590966 () Bool)

(declare-fun derivativeStep!4661 (Regex!15923 C!32116) Regex!15923)

(assert (=> b!5856258 (= e!3590966 (matchR!8106 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)) (tail!11485 s!2326)))))

(declare-fun b!5856259 () Bool)

(declare-fun e!3590972 () Bool)

(assert (=> b!5856259 (= e!3590972 (= (head!12400 s!2326) (c!1038343 (regTwo!32359 r!7292))))))

(declare-fun b!5856260 () Bool)

(declare-fun res!2464904 () Bool)

(assert (=> b!5856260 (=> (not res!2464904) (not e!3590972))))

(assert (=> b!5856260 (= res!2464904 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5856261 () Bool)

(assert (=> b!5856261 (= e!3590966 (nullable!5923 (regTwo!32359 r!7292)))))

(declare-fun d!1839113 () Bool)

(declare-fun e!3590968 () Bool)

(assert (=> d!1839113 e!3590968))

(declare-fun c!1038517 () Bool)

(assert (=> d!1839113 (= c!1038517 ((_ is EmptyExpr!15923) (regTwo!32359 r!7292)))))

(declare-fun lt!2304950 () Bool)

(assert (=> d!1839113 (= lt!2304950 e!3590966)))

(declare-fun c!1038515 () Bool)

(assert (=> d!1839113 (= c!1038515 (isEmpty!35805 s!2326))))

(assert (=> d!1839113 (validRegex!7659 (regTwo!32359 r!7292))))

(assert (=> d!1839113 (= (matchR!8106 (regTwo!32359 r!7292) s!2326) lt!2304950)))

(declare-fun b!5856262 () Bool)

(declare-fun res!2464905 () Bool)

(declare-fun e!3590969 () Bool)

(assert (=> b!5856262 (=> res!2464905 e!3590969)))

(assert (=> b!5856262 (= res!2464905 e!3590972)))

(declare-fun res!2464899 () Bool)

(assert (=> b!5856262 (=> (not res!2464899) (not e!3590972))))

(assert (=> b!5856262 (= res!2464899 lt!2304950)))

(declare-fun b!5856263 () Bool)

(declare-fun e!3590967 () Bool)

(assert (=> b!5856263 (= e!3590968 e!3590967)))

(declare-fun c!1038516 () Bool)

(assert (=> b!5856263 (= c!1038516 ((_ is EmptyLang!15923) (regTwo!32359 r!7292)))))

(declare-fun b!5856264 () Bool)

(assert (=> b!5856264 (= e!3590970 (not (= (head!12400 s!2326) (c!1038343 (regTwo!32359 r!7292)))))))

(declare-fun b!5856265 () Bool)

(assert (=> b!5856265 (= e!3590967 (not lt!2304950))))

(declare-fun b!5856266 () Bool)

(declare-fun e!3590971 () Bool)

(assert (=> b!5856266 (= e!3590971 e!3590970)))

(declare-fun res!2464902 () Bool)

(assert (=> b!5856266 (=> res!2464902 e!3590970)))

(declare-fun call!458782 () Bool)

(assert (=> b!5856266 (= res!2464902 call!458782)))

(declare-fun b!5856267 () Bool)

(assert (=> b!5856267 (= e!3590969 e!3590971)))

(declare-fun res!2464901 () Bool)

(assert (=> b!5856267 (=> (not res!2464901) (not e!3590971))))

(assert (=> b!5856267 (= res!2464901 (not lt!2304950))))

(declare-fun b!5856268 () Bool)

(assert (=> b!5856268 (= e!3590968 (= lt!2304950 call!458782))))

(declare-fun bm!458777 () Bool)

(assert (=> bm!458777 (= call!458782 (isEmpty!35805 s!2326))))

(declare-fun b!5856269 () Bool)

(declare-fun res!2464906 () Bool)

(assert (=> b!5856269 (=> (not res!2464906) (not e!3590972))))

(assert (=> b!5856269 (= res!2464906 (not call!458782))))

(declare-fun b!5856270 () Bool)

(declare-fun res!2464900 () Bool)

(assert (=> b!5856270 (=> res!2464900 e!3590969)))

(assert (=> b!5856270 (= res!2464900 (not ((_ is ElementMatch!15923) (regTwo!32359 r!7292))))))

(assert (=> b!5856270 (= e!3590967 e!3590969)))

(assert (= (and d!1839113 c!1038515) b!5856261))

(assert (= (and d!1839113 (not c!1038515)) b!5856258))

(assert (= (and d!1839113 c!1038517) b!5856268))

(assert (= (and d!1839113 (not c!1038517)) b!5856263))

(assert (= (and b!5856263 c!1038516) b!5856265))

(assert (= (and b!5856263 (not c!1038516)) b!5856270))

(assert (= (and b!5856270 (not res!2464900)) b!5856262))

(assert (= (and b!5856262 res!2464899) b!5856269))

(assert (= (and b!5856269 res!2464906) b!5856260))

(assert (= (and b!5856260 res!2464904) b!5856259))

(assert (= (and b!5856262 (not res!2464905)) b!5856267))

(assert (= (and b!5856267 res!2464901) b!5856266))

(assert (= (and b!5856266 (not res!2464902)) b!5856257))

(assert (= (and b!5856257 (not res!2464903)) b!5856264))

(assert (= (or b!5856268 b!5856266 b!5856269) bm!458777))

(assert (=> b!5856259 m!6774480))

(declare-fun m!6774548 () Bool)

(assert (=> b!5856261 m!6774548))

(assert (=> b!5856257 m!6774484))

(assert (=> b!5856257 m!6774484))

(declare-fun m!6774550 () Bool)

(assert (=> b!5856257 m!6774550))

(assert (=> bm!458777 m!6774476))

(assert (=> b!5856264 m!6774480))

(assert (=> b!5856260 m!6774484))

(assert (=> b!5856260 m!6774484))

(assert (=> b!5856260 m!6774550))

(assert (=> d!1839113 m!6774476))

(declare-fun m!6774552 () Bool)

(assert (=> d!1839113 m!6774552))

(assert (=> b!5856258 m!6774480))

(assert (=> b!5856258 m!6774480))

(declare-fun m!6774554 () Bool)

(assert (=> b!5856258 m!6774554))

(assert (=> b!5856258 m!6774484))

(assert (=> b!5856258 m!6774554))

(assert (=> b!5856258 m!6774484))

(declare-fun m!6774556 () Bool)

(assert (=> b!5856258 m!6774556))

(assert (=> b!5855688 d!1839113))

(declare-fun d!1839115 () Bool)

(assert (=> d!1839115 (= (matchR!8106 (regTwo!32359 r!7292) s!2326) (matchRSpec!3024 (regTwo!32359 r!7292) s!2326))))

(declare-fun lt!2304951 () Unit!157117)

(assert (=> d!1839115 (= lt!2304951 (choose!44405 (regTwo!32359 r!7292) s!2326))))

(assert (=> d!1839115 (validRegex!7659 (regTwo!32359 r!7292))))

(assert (=> d!1839115 (= (mainMatchTheorem!3024 (regTwo!32359 r!7292) s!2326) lt!2304951)))

(declare-fun bs!1379778 () Bool)

(assert (= bs!1379778 d!1839115))

(assert (=> bs!1379778 m!6774184))

(assert (=> bs!1379778 m!6774180))

(declare-fun m!6774558 () Bool)

(assert (=> bs!1379778 m!6774558))

(assert (=> bs!1379778 m!6774552))

(assert (=> b!5855688 d!1839115))

(declare-fun bs!1379779 () Bool)

(declare-fun b!5856271 () Bool)

(assert (= bs!1379779 (and b!5856271 b!5856214)))

(declare-fun lambda!320207 () Int)

(assert (=> bs!1379779 (= (and (= (reg!16252 (regOne!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))) (= (regOne!32359 r!7292) (regTwo!32359 r!7292))) (= lambda!320207 lambda!320205))))

(declare-fun bs!1379780 () Bool)

(assert (= bs!1379780 (and b!5856271 b!5856224)))

(assert (=> bs!1379780 (not (= lambda!320207 lambda!320206))))

(assert (=> b!5856271 true))

(assert (=> b!5856271 true))

(declare-fun bs!1379781 () Bool)

(declare-fun b!5856281 () Bool)

(assert (= bs!1379781 (and b!5856281 b!5856214)))

(declare-fun lambda!320208 () Int)

(assert (=> bs!1379781 (not (= lambda!320208 lambda!320205))))

(declare-fun bs!1379782 () Bool)

(assert (= bs!1379782 (and b!5856281 b!5856224)))

(assert (=> bs!1379782 (= (and (= (regOne!32358 (regOne!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 (regOne!32359 r!7292)) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320208 lambda!320206))))

(declare-fun bs!1379783 () Bool)

(assert (= bs!1379783 (and b!5856281 b!5856271)))

(assert (=> bs!1379783 (not (= lambda!320208 lambda!320207))))

(assert (=> b!5856281 true))

(assert (=> b!5856281 true))

(declare-fun e!3590977 () Bool)

(declare-fun call!458784 () Bool)

(assert (=> b!5856271 (= e!3590977 call!458784)))

(declare-fun b!5856272 () Bool)

(declare-fun e!3590975 () Bool)

(declare-fun call!458783 () Bool)

(assert (=> b!5856272 (= e!3590975 call!458783)))

(declare-fun b!5856273 () Bool)

(declare-fun c!1038521 () Bool)

(assert (=> b!5856273 (= c!1038521 ((_ is ElementMatch!15923) (regOne!32359 r!7292)))))

(declare-fun e!3590976 () Bool)

(declare-fun e!3590973 () Bool)

(assert (=> b!5856273 (= e!3590976 e!3590973)))

(declare-fun b!5856274 () Bool)

(declare-fun e!3590978 () Bool)

(assert (=> b!5856274 (= e!3590978 (matchRSpec!3024 (regTwo!32359 (regOne!32359 r!7292)) s!2326))))

(declare-fun b!5856276 () Bool)

(declare-fun c!1038519 () Bool)

(assert (=> b!5856276 (= c!1038519 ((_ is Union!15923) (regOne!32359 r!7292)))))

(declare-fun e!3590974 () Bool)

(assert (=> b!5856276 (= e!3590973 e!3590974)))

(declare-fun b!5856277 () Bool)

(declare-fun res!2464909 () Bool)

(assert (=> b!5856277 (=> res!2464909 e!3590977)))

(assert (=> b!5856277 (= res!2464909 call!458783)))

(declare-fun e!3590979 () Bool)

(assert (=> b!5856277 (= e!3590979 e!3590977)))

(declare-fun b!5856278 () Bool)

(assert (=> b!5856278 (= e!3590974 e!3590978)))

(declare-fun res!2464907 () Bool)

(assert (=> b!5856278 (= res!2464907 (matchRSpec!3024 (regOne!32359 (regOne!32359 r!7292)) s!2326))))

(assert (=> b!5856278 (=> res!2464907 e!3590978)))

(declare-fun b!5856279 () Bool)

(assert (=> b!5856279 (= e!3590975 e!3590976)))

(declare-fun res!2464908 () Bool)

(assert (=> b!5856279 (= res!2464908 (not ((_ is EmptyLang!15923) (regOne!32359 r!7292))))))

(assert (=> b!5856279 (=> (not res!2464908) (not e!3590976))))

(declare-fun bm!458778 () Bool)

(assert (=> bm!458778 (= call!458783 (isEmpty!35805 s!2326))))

(declare-fun b!5856280 () Bool)

(assert (=> b!5856280 (= e!3590974 e!3590979)))

(declare-fun c!1038518 () Bool)

(assert (=> b!5856280 (= c!1038518 ((_ is Star!15923) (regOne!32359 r!7292)))))

(declare-fun d!1839117 () Bool)

(declare-fun c!1038520 () Bool)

(assert (=> d!1839117 (= c!1038520 ((_ is EmptyExpr!15923) (regOne!32359 r!7292)))))

(assert (=> d!1839117 (= (matchRSpec!3024 (regOne!32359 r!7292) s!2326) e!3590975)))

(declare-fun b!5856275 () Bool)

(assert (=> b!5856275 (= e!3590973 (= s!2326 (Cons!63945 (c!1038343 (regOne!32359 r!7292)) Nil!63945)))))

(assert (=> b!5856281 (= e!3590979 call!458784)))

(declare-fun bm!458779 () Bool)

(assert (=> bm!458779 (= call!458784 (Exists!2995 (ite c!1038518 lambda!320207 lambda!320208)))))

(assert (= (and d!1839117 c!1038520) b!5856272))

(assert (= (and d!1839117 (not c!1038520)) b!5856279))

(assert (= (and b!5856279 res!2464908) b!5856273))

(assert (= (and b!5856273 c!1038521) b!5856275))

(assert (= (and b!5856273 (not c!1038521)) b!5856276))

(assert (= (and b!5856276 c!1038519) b!5856278))

(assert (= (and b!5856276 (not c!1038519)) b!5856280))

(assert (= (and b!5856278 (not res!2464907)) b!5856274))

(assert (= (and b!5856280 c!1038518) b!5856277))

(assert (= (and b!5856280 (not c!1038518)) b!5856281))

(assert (= (and b!5856277 (not res!2464909)) b!5856271))

(assert (= (or b!5856271 b!5856281) bm!458779))

(assert (= (or b!5856272 b!5856277) bm!458778))

(declare-fun m!6774560 () Bool)

(assert (=> b!5856274 m!6774560))

(declare-fun m!6774562 () Bool)

(assert (=> b!5856278 m!6774562))

(assert (=> bm!458778 m!6774476))

(declare-fun m!6774564 () Bool)

(assert (=> bm!458779 m!6774564))

(assert (=> b!5855688 d!1839117))

(declare-fun b!5856282 () Bool)

(declare-fun res!2464914 () Bool)

(declare-fun e!3590984 () Bool)

(assert (=> b!5856282 (=> res!2464914 e!3590984)))

(assert (=> b!5856282 (= res!2464914 (not (isEmpty!35805 (tail!11485 s!2326))))))

(declare-fun b!5856283 () Bool)

(declare-fun e!3590980 () Bool)

(assert (=> b!5856283 (= e!3590980 (matchR!8106 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)) (tail!11485 s!2326)))))

(declare-fun b!5856284 () Bool)

(declare-fun e!3590986 () Bool)

(assert (=> b!5856284 (= e!3590986 (= (head!12400 s!2326) (c!1038343 (regOne!32359 r!7292))))))

(declare-fun b!5856285 () Bool)

(declare-fun res!2464915 () Bool)

(assert (=> b!5856285 (=> (not res!2464915) (not e!3590986))))

(assert (=> b!5856285 (= res!2464915 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5856286 () Bool)

(assert (=> b!5856286 (= e!3590980 (nullable!5923 (regOne!32359 r!7292)))))

(declare-fun d!1839119 () Bool)

(declare-fun e!3590982 () Bool)

(assert (=> d!1839119 e!3590982))

(declare-fun c!1038524 () Bool)

(assert (=> d!1839119 (= c!1038524 ((_ is EmptyExpr!15923) (regOne!32359 r!7292)))))

(declare-fun lt!2304952 () Bool)

(assert (=> d!1839119 (= lt!2304952 e!3590980)))

(declare-fun c!1038522 () Bool)

(assert (=> d!1839119 (= c!1038522 (isEmpty!35805 s!2326))))

(assert (=> d!1839119 (validRegex!7659 (regOne!32359 r!7292))))

(assert (=> d!1839119 (= (matchR!8106 (regOne!32359 r!7292) s!2326) lt!2304952)))

(declare-fun b!5856287 () Bool)

(declare-fun res!2464916 () Bool)

(declare-fun e!3590983 () Bool)

(assert (=> b!5856287 (=> res!2464916 e!3590983)))

(assert (=> b!5856287 (= res!2464916 e!3590986)))

(declare-fun res!2464910 () Bool)

(assert (=> b!5856287 (=> (not res!2464910) (not e!3590986))))

(assert (=> b!5856287 (= res!2464910 lt!2304952)))

(declare-fun b!5856288 () Bool)

(declare-fun e!3590981 () Bool)

(assert (=> b!5856288 (= e!3590982 e!3590981)))

(declare-fun c!1038523 () Bool)

(assert (=> b!5856288 (= c!1038523 ((_ is EmptyLang!15923) (regOne!32359 r!7292)))))

(declare-fun b!5856289 () Bool)

(assert (=> b!5856289 (= e!3590984 (not (= (head!12400 s!2326) (c!1038343 (regOne!32359 r!7292)))))))

(declare-fun b!5856290 () Bool)

(assert (=> b!5856290 (= e!3590981 (not lt!2304952))))

(declare-fun b!5856291 () Bool)

(declare-fun e!3590985 () Bool)

(assert (=> b!5856291 (= e!3590985 e!3590984)))

(declare-fun res!2464913 () Bool)

(assert (=> b!5856291 (=> res!2464913 e!3590984)))

(declare-fun call!458785 () Bool)

(assert (=> b!5856291 (= res!2464913 call!458785)))

(declare-fun b!5856292 () Bool)

(assert (=> b!5856292 (= e!3590983 e!3590985)))

(declare-fun res!2464912 () Bool)

(assert (=> b!5856292 (=> (not res!2464912) (not e!3590985))))

(assert (=> b!5856292 (= res!2464912 (not lt!2304952))))

(declare-fun b!5856293 () Bool)

(assert (=> b!5856293 (= e!3590982 (= lt!2304952 call!458785))))

(declare-fun bm!458780 () Bool)

(assert (=> bm!458780 (= call!458785 (isEmpty!35805 s!2326))))

(declare-fun b!5856294 () Bool)

(declare-fun res!2464917 () Bool)

(assert (=> b!5856294 (=> (not res!2464917) (not e!3590986))))

(assert (=> b!5856294 (= res!2464917 (not call!458785))))

(declare-fun b!5856295 () Bool)

(declare-fun res!2464911 () Bool)

(assert (=> b!5856295 (=> res!2464911 e!3590983)))

(assert (=> b!5856295 (= res!2464911 (not ((_ is ElementMatch!15923) (regOne!32359 r!7292))))))

(assert (=> b!5856295 (= e!3590981 e!3590983)))

(assert (= (and d!1839119 c!1038522) b!5856286))

(assert (= (and d!1839119 (not c!1038522)) b!5856283))

(assert (= (and d!1839119 c!1038524) b!5856293))

(assert (= (and d!1839119 (not c!1038524)) b!5856288))

(assert (= (and b!5856288 c!1038523) b!5856290))

(assert (= (and b!5856288 (not c!1038523)) b!5856295))

(assert (= (and b!5856295 (not res!2464911)) b!5856287))

(assert (= (and b!5856287 res!2464910) b!5856294))

(assert (= (and b!5856294 res!2464917) b!5856285))

(assert (= (and b!5856285 res!2464915) b!5856284))

(assert (= (and b!5856287 (not res!2464916)) b!5856292))

(assert (= (and b!5856292 res!2464912) b!5856291))

(assert (= (and b!5856291 (not res!2464913)) b!5856282))

(assert (= (and b!5856282 (not res!2464914)) b!5856289))

(assert (= (or b!5856293 b!5856291 b!5856294) bm!458780))

(assert (=> b!5856284 m!6774480))

(declare-fun m!6774566 () Bool)

(assert (=> b!5856286 m!6774566))

(assert (=> b!5856282 m!6774484))

(assert (=> b!5856282 m!6774484))

(assert (=> b!5856282 m!6774550))

(assert (=> bm!458780 m!6774476))

(assert (=> b!5856289 m!6774480))

(assert (=> b!5856285 m!6774484))

(assert (=> b!5856285 m!6774484))

(assert (=> b!5856285 m!6774550))

(assert (=> d!1839119 m!6774476))

(assert (=> d!1839119 m!6774546))

(assert (=> b!5856283 m!6774480))

(assert (=> b!5856283 m!6774480))

(declare-fun m!6774568 () Bool)

(assert (=> b!5856283 m!6774568))

(assert (=> b!5856283 m!6774484))

(assert (=> b!5856283 m!6774568))

(assert (=> b!5856283 m!6774484))

(declare-fun m!6774570 () Bool)

(assert (=> b!5856283 m!6774570))

(assert (=> b!5855688 d!1839119))

(declare-fun d!1839121 () Bool)

(assert (=> d!1839121 (= (isEmpty!35802 (t!377437 zl!343)) ((_ is Nil!63946) (t!377437 zl!343)))))

(assert (=> b!5855698 d!1839121))

(declare-fun bs!1379784 () Bool)

(declare-fun d!1839123 () Bool)

(assert (= bs!1379784 (and d!1839123 d!1839099)))

(declare-fun lambda!320209 () Int)

(assert (=> bs!1379784 (= lambda!320209 lambda!320200)))

(assert (=> d!1839123 (= (inv!83054 (h!70394 zl!343)) (forall!15010 (exprs!5807 (h!70394 zl!343)) lambda!320209))))

(declare-fun bs!1379785 () Bool)

(assert (= bs!1379785 d!1839123))

(declare-fun m!6774572 () Bool)

(assert (=> bs!1379785 m!6774572))

(assert (=> b!5855678 d!1839123))

(declare-fun bs!1379786 () Bool)

(declare-fun b!5856296 () Bool)

(assert (= bs!1379786 (and b!5856296 b!5856214)))

(declare-fun lambda!320210 () Int)

(assert (=> bs!1379786 (= (and (= (reg!16252 r!7292) (reg!16252 (regTwo!32359 r!7292))) (= r!7292 (regTwo!32359 r!7292))) (= lambda!320210 lambda!320205))))

(declare-fun bs!1379787 () Bool)

(assert (= bs!1379787 (and b!5856296 b!5856224)))

(assert (=> bs!1379787 (not (= lambda!320210 lambda!320206))))

(declare-fun bs!1379788 () Bool)

(assert (= bs!1379788 (and b!5856296 b!5856271)))

(assert (=> bs!1379788 (= (and (= (reg!16252 r!7292) (reg!16252 (regOne!32359 r!7292))) (= r!7292 (regOne!32359 r!7292))) (= lambda!320210 lambda!320207))))

(declare-fun bs!1379789 () Bool)

(assert (= bs!1379789 (and b!5856296 b!5856281)))

(assert (=> bs!1379789 (not (= lambda!320210 lambda!320208))))

(assert (=> b!5856296 true))

(assert (=> b!5856296 true))

(declare-fun bs!1379790 () Bool)

(declare-fun b!5856306 () Bool)

(assert (= bs!1379790 (and b!5856306 b!5856271)))

(declare-fun lambda!320211 () Int)

(assert (=> bs!1379790 (not (= lambda!320211 lambda!320207))))

(declare-fun bs!1379791 () Bool)

(assert (= bs!1379791 (and b!5856306 b!5856281)))

(assert (=> bs!1379791 (= (and (= (regOne!32358 r!7292) (regOne!32358 (regOne!32359 r!7292))) (= (regTwo!32358 r!7292) (regTwo!32358 (regOne!32359 r!7292)))) (= lambda!320211 lambda!320208))))

(declare-fun bs!1379792 () Bool)

(assert (= bs!1379792 (and b!5856306 b!5856296)))

(assert (=> bs!1379792 (not (= lambda!320211 lambda!320210))))

(declare-fun bs!1379793 () Bool)

(assert (= bs!1379793 (and b!5856306 b!5856224)))

(assert (=> bs!1379793 (= (and (= (regOne!32358 r!7292) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 r!7292) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320211 lambda!320206))))

(declare-fun bs!1379794 () Bool)

(assert (= bs!1379794 (and b!5856306 b!5856214)))

(assert (=> bs!1379794 (not (= lambda!320211 lambda!320205))))

(assert (=> b!5856306 true))

(assert (=> b!5856306 true))

(declare-fun e!3590991 () Bool)

(declare-fun call!458787 () Bool)

(assert (=> b!5856296 (= e!3590991 call!458787)))

(declare-fun b!5856297 () Bool)

(declare-fun e!3590989 () Bool)

(declare-fun call!458786 () Bool)

(assert (=> b!5856297 (= e!3590989 call!458786)))

(declare-fun b!5856298 () Bool)

(declare-fun c!1038528 () Bool)

(assert (=> b!5856298 (= c!1038528 ((_ is ElementMatch!15923) r!7292))))

(declare-fun e!3590990 () Bool)

(declare-fun e!3590987 () Bool)

(assert (=> b!5856298 (= e!3590990 e!3590987)))

(declare-fun b!5856299 () Bool)

(declare-fun e!3590992 () Bool)

(assert (=> b!5856299 (= e!3590992 (matchRSpec!3024 (regTwo!32359 r!7292) s!2326))))

(declare-fun b!5856301 () Bool)

(declare-fun c!1038526 () Bool)

(assert (=> b!5856301 (= c!1038526 ((_ is Union!15923) r!7292))))

(declare-fun e!3590988 () Bool)

(assert (=> b!5856301 (= e!3590987 e!3590988)))

(declare-fun b!5856302 () Bool)

(declare-fun res!2464920 () Bool)

(assert (=> b!5856302 (=> res!2464920 e!3590991)))

(assert (=> b!5856302 (= res!2464920 call!458786)))

(declare-fun e!3590993 () Bool)

(assert (=> b!5856302 (= e!3590993 e!3590991)))

(declare-fun b!5856303 () Bool)

(assert (=> b!5856303 (= e!3590988 e!3590992)))

(declare-fun res!2464918 () Bool)

(assert (=> b!5856303 (= res!2464918 (matchRSpec!3024 (regOne!32359 r!7292) s!2326))))

(assert (=> b!5856303 (=> res!2464918 e!3590992)))

(declare-fun b!5856304 () Bool)

(assert (=> b!5856304 (= e!3590989 e!3590990)))

(declare-fun res!2464919 () Bool)

(assert (=> b!5856304 (= res!2464919 (not ((_ is EmptyLang!15923) r!7292)))))

(assert (=> b!5856304 (=> (not res!2464919) (not e!3590990))))

(declare-fun bm!458781 () Bool)

(assert (=> bm!458781 (= call!458786 (isEmpty!35805 s!2326))))

(declare-fun b!5856305 () Bool)

(assert (=> b!5856305 (= e!3590988 e!3590993)))

(declare-fun c!1038525 () Bool)

(assert (=> b!5856305 (= c!1038525 ((_ is Star!15923) r!7292))))

(declare-fun d!1839125 () Bool)

(declare-fun c!1038527 () Bool)

(assert (=> d!1839125 (= c!1038527 ((_ is EmptyExpr!15923) r!7292))))

(assert (=> d!1839125 (= (matchRSpec!3024 r!7292 s!2326) e!3590989)))

(declare-fun b!5856300 () Bool)

(assert (=> b!5856300 (= e!3590987 (= s!2326 (Cons!63945 (c!1038343 r!7292) Nil!63945)))))

(assert (=> b!5856306 (= e!3590993 call!458787)))

(declare-fun bm!458782 () Bool)

(assert (=> bm!458782 (= call!458787 (Exists!2995 (ite c!1038525 lambda!320210 lambda!320211)))))

(assert (= (and d!1839125 c!1038527) b!5856297))

(assert (= (and d!1839125 (not c!1038527)) b!5856304))

(assert (= (and b!5856304 res!2464919) b!5856298))

(assert (= (and b!5856298 c!1038528) b!5856300))

(assert (= (and b!5856298 (not c!1038528)) b!5856301))

(assert (= (and b!5856301 c!1038526) b!5856303))

(assert (= (and b!5856301 (not c!1038526)) b!5856305))

(assert (= (and b!5856303 (not res!2464918)) b!5856299))

(assert (= (and b!5856305 c!1038525) b!5856302))

(assert (= (and b!5856305 (not c!1038525)) b!5856306))

(assert (= (and b!5856302 (not res!2464920)) b!5856296))

(assert (= (or b!5856296 b!5856306) bm!458782))

(assert (= (or b!5856297 b!5856302) bm!458781))

(assert (=> b!5856299 m!6774180))

(assert (=> b!5856303 m!6774186))

(assert (=> bm!458781 m!6774476))

(declare-fun m!6774574 () Bool)

(assert (=> bm!458782 m!6774574))

(assert (=> b!5855679 d!1839125))

(declare-fun b!5856307 () Bool)

(declare-fun res!2464925 () Bool)

(declare-fun e!3590998 () Bool)

(assert (=> b!5856307 (=> res!2464925 e!3590998)))

(assert (=> b!5856307 (= res!2464925 (not (isEmpty!35805 (tail!11485 s!2326))))))

(declare-fun b!5856308 () Bool)

(declare-fun e!3590994 () Bool)

(assert (=> b!5856308 (= e!3590994 (matchR!8106 (derivativeStep!4661 r!7292 (head!12400 s!2326)) (tail!11485 s!2326)))))

(declare-fun b!5856309 () Bool)

(declare-fun e!3591000 () Bool)

(assert (=> b!5856309 (= e!3591000 (= (head!12400 s!2326) (c!1038343 r!7292)))))

(declare-fun b!5856310 () Bool)

(declare-fun res!2464926 () Bool)

(assert (=> b!5856310 (=> (not res!2464926) (not e!3591000))))

(assert (=> b!5856310 (= res!2464926 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5856311 () Bool)

(assert (=> b!5856311 (= e!3590994 (nullable!5923 r!7292))))

(declare-fun d!1839127 () Bool)

(declare-fun e!3590996 () Bool)

(assert (=> d!1839127 e!3590996))

(declare-fun c!1038531 () Bool)

(assert (=> d!1839127 (= c!1038531 ((_ is EmptyExpr!15923) r!7292))))

(declare-fun lt!2304953 () Bool)

(assert (=> d!1839127 (= lt!2304953 e!3590994)))

(declare-fun c!1038529 () Bool)

(assert (=> d!1839127 (= c!1038529 (isEmpty!35805 s!2326))))

(assert (=> d!1839127 (validRegex!7659 r!7292)))

(assert (=> d!1839127 (= (matchR!8106 r!7292 s!2326) lt!2304953)))

(declare-fun b!5856312 () Bool)

(declare-fun res!2464927 () Bool)

(declare-fun e!3590997 () Bool)

(assert (=> b!5856312 (=> res!2464927 e!3590997)))

(assert (=> b!5856312 (= res!2464927 e!3591000)))

(declare-fun res!2464921 () Bool)

(assert (=> b!5856312 (=> (not res!2464921) (not e!3591000))))

(assert (=> b!5856312 (= res!2464921 lt!2304953)))

(declare-fun b!5856313 () Bool)

(declare-fun e!3590995 () Bool)

(assert (=> b!5856313 (= e!3590996 e!3590995)))

(declare-fun c!1038530 () Bool)

(assert (=> b!5856313 (= c!1038530 ((_ is EmptyLang!15923) r!7292))))

(declare-fun b!5856314 () Bool)

(assert (=> b!5856314 (= e!3590998 (not (= (head!12400 s!2326) (c!1038343 r!7292))))))

(declare-fun b!5856315 () Bool)

(assert (=> b!5856315 (= e!3590995 (not lt!2304953))))

(declare-fun b!5856316 () Bool)

(declare-fun e!3590999 () Bool)

(assert (=> b!5856316 (= e!3590999 e!3590998)))

(declare-fun res!2464924 () Bool)

(assert (=> b!5856316 (=> res!2464924 e!3590998)))

(declare-fun call!458788 () Bool)

(assert (=> b!5856316 (= res!2464924 call!458788)))

(declare-fun b!5856317 () Bool)

(assert (=> b!5856317 (= e!3590997 e!3590999)))

(declare-fun res!2464923 () Bool)

(assert (=> b!5856317 (=> (not res!2464923) (not e!3590999))))

(assert (=> b!5856317 (= res!2464923 (not lt!2304953))))

(declare-fun b!5856318 () Bool)

(assert (=> b!5856318 (= e!3590996 (= lt!2304953 call!458788))))

(declare-fun bm!458783 () Bool)

(assert (=> bm!458783 (= call!458788 (isEmpty!35805 s!2326))))

(declare-fun b!5856319 () Bool)

(declare-fun res!2464928 () Bool)

(assert (=> b!5856319 (=> (not res!2464928) (not e!3591000))))

(assert (=> b!5856319 (= res!2464928 (not call!458788))))

(declare-fun b!5856320 () Bool)

(declare-fun res!2464922 () Bool)

(assert (=> b!5856320 (=> res!2464922 e!3590997)))

(assert (=> b!5856320 (= res!2464922 (not ((_ is ElementMatch!15923) r!7292)))))

(assert (=> b!5856320 (= e!3590995 e!3590997)))

(assert (= (and d!1839127 c!1038529) b!5856311))

(assert (= (and d!1839127 (not c!1038529)) b!5856308))

(assert (= (and d!1839127 c!1038531) b!5856318))

(assert (= (and d!1839127 (not c!1038531)) b!5856313))

(assert (= (and b!5856313 c!1038530) b!5856315))

(assert (= (and b!5856313 (not c!1038530)) b!5856320))

(assert (= (and b!5856320 (not res!2464922)) b!5856312))

(assert (= (and b!5856312 res!2464921) b!5856319))

(assert (= (and b!5856319 res!2464928) b!5856310))

(assert (= (and b!5856310 res!2464926) b!5856309))

(assert (= (and b!5856312 (not res!2464927)) b!5856317))

(assert (= (and b!5856317 res!2464923) b!5856316))

(assert (= (and b!5856316 (not res!2464924)) b!5856307))

(assert (= (and b!5856307 (not res!2464925)) b!5856314))

(assert (= (or b!5856318 b!5856316 b!5856319) bm!458783))

(assert (=> b!5856309 m!6774480))

(declare-fun m!6774576 () Bool)

(assert (=> b!5856311 m!6774576))

(assert (=> b!5856307 m!6774484))

(assert (=> b!5856307 m!6774484))

(assert (=> b!5856307 m!6774550))

(assert (=> bm!458783 m!6774476))

(assert (=> b!5856314 m!6774480))

(assert (=> b!5856310 m!6774484))

(assert (=> b!5856310 m!6774484))

(assert (=> b!5856310 m!6774550))

(assert (=> d!1839127 m!6774476))

(assert (=> d!1839127 m!6774224))

(assert (=> b!5856308 m!6774480))

(assert (=> b!5856308 m!6774480))

(declare-fun m!6774578 () Bool)

(assert (=> b!5856308 m!6774578))

(assert (=> b!5856308 m!6774484))

(assert (=> b!5856308 m!6774578))

(assert (=> b!5856308 m!6774484))

(declare-fun m!6774580 () Bool)

(assert (=> b!5856308 m!6774580))

(assert (=> b!5855679 d!1839127))

(declare-fun d!1839129 () Bool)

(assert (=> d!1839129 (= (matchR!8106 r!7292 s!2326) (matchRSpec!3024 r!7292 s!2326))))

(declare-fun lt!2304954 () Unit!157117)

(assert (=> d!1839129 (= lt!2304954 (choose!44405 r!7292 s!2326))))

(assert (=> d!1839129 (validRegex!7659 r!7292)))

(assert (=> d!1839129 (= (mainMatchTheorem!3024 r!7292 s!2326) lt!2304954)))

(declare-fun bs!1379795 () Bool)

(assert (= bs!1379795 d!1839129))

(assert (=> bs!1379795 m!6774228))

(assert (=> bs!1379795 m!6774226))

(declare-fun m!6774582 () Bool)

(assert (=> bs!1379795 m!6774582))

(assert (=> bs!1379795 m!6774224))

(assert (=> b!5855679 d!1839129))

(declare-fun d!1839131 () Bool)

(declare-fun c!1038532 () Bool)

(assert (=> d!1839131 (= c!1038532 (isEmpty!35805 (t!377436 s!2326)))))

(declare-fun e!3591001 () Bool)

(assert (=> d!1839131 (= (matchZipper!1989 lt!2304905 (t!377436 s!2326)) e!3591001)))

(declare-fun b!5856321 () Bool)

(assert (=> b!5856321 (= e!3591001 (nullableZipper!1762 lt!2304905))))

(declare-fun b!5856322 () Bool)

(assert (=> b!5856322 (= e!3591001 (matchZipper!1989 (derivationStepZipper!1922 lt!2304905 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))))))

(assert (= (and d!1839131 c!1038532) b!5856321))

(assert (= (and d!1839131 (not c!1038532)) b!5856322))

(assert (=> d!1839131 m!6774488))

(declare-fun m!6774584 () Bool)

(assert (=> b!5856321 m!6774584))

(assert (=> b!5856322 m!6774492))

(assert (=> b!5856322 m!6774492))

(declare-fun m!6774586 () Bool)

(assert (=> b!5856322 m!6774586))

(assert (=> b!5856322 m!6774496))

(assert (=> b!5856322 m!6774586))

(assert (=> b!5856322 m!6774496))

(declare-fun m!6774588 () Bool)

(assert (=> b!5856322 m!6774588))

(assert (=> b!5855691 d!1839131))

(declare-fun d!1839133 () Bool)

(declare-fun e!3591004 () Bool)

(assert (=> d!1839133 (= (matchZipper!1989 ((_ map or) lt!2304905 lt!2304909) (t!377436 s!2326)) e!3591004)))

(declare-fun res!2464931 () Bool)

(assert (=> d!1839133 (=> res!2464931 e!3591004)))

(assert (=> d!1839133 (= res!2464931 (matchZipper!1989 lt!2304905 (t!377436 s!2326)))))

(declare-fun lt!2304957 () Unit!157117)

(declare-fun choose!44406 ((InoxSet Context!10614) (InoxSet Context!10614) List!64069) Unit!157117)

(assert (=> d!1839133 (= lt!2304957 (choose!44406 lt!2304905 lt!2304909 (t!377436 s!2326)))))

(assert (=> d!1839133 (= (lemmaZipperConcatMatchesSameAsBothZippers!824 lt!2304905 lt!2304909 (t!377436 s!2326)) lt!2304957)))

(declare-fun b!5856325 () Bool)

(assert (=> b!5856325 (= e!3591004 (matchZipper!1989 lt!2304909 (t!377436 s!2326)))))

(assert (= (and d!1839133 (not res!2464931)) b!5856325))

(declare-fun m!6774590 () Bool)

(assert (=> d!1839133 m!6774590))

(assert (=> d!1839133 m!6774202))

(declare-fun m!6774592 () Bool)

(assert (=> d!1839133 m!6774592))

(assert (=> b!5856325 m!6774246))

(assert (=> b!5855691 d!1839133))

(declare-fun bs!1379796 () Bool)

(declare-fun d!1839135 () Bool)

(assert (= bs!1379796 (and d!1839135 b!5855690)))

(declare-fun lambda!320214 () Int)

(assert (=> bs!1379796 (= lambda!320214 lambda!320170)))

(assert (=> d!1839135 true))

(assert (=> d!1839135 (= (derivationStepZipper!1922 z!1189 (h!70393 s!2326)) (flatMap!1454 z!1189 lambda!320214))))

(declare-fun bs!1379797 () Bool)

(assert (= bs!1379797 d!1839135))

(declare-fun m!6774594 () Bool)

(assert (=> bs!1379797 m!6774594))

(assert (=> b!5855690 d!1839135))

(declare-fun d!1839137 () Bool)

(declare-fun choose!44407 ((InoxSet Context!10614) Int) (InoxSet Context!10614))

(assert (=> d!1839137 (= (flatMap!1454 z!1189 lambda!320170) (choose!44407 z!1189 lambda!320170))))

(declare-fun bs!1379798 () Bool)

(assert (= bs!1379798 d!1839137))

(declare-fun m!6774596 () Bool)

(assert (=> bs!1379798 m!6774596))

(assert (=> b!5855690 d!1839137))

(declare-fun b!5856328 () Bool)

(declare-fun e!3591006 () Bool)

(assert (=> b!5856328 (= e!3591006 (nullable!5923 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5856329 () Bool)

(declare-fun e!3591007 () (InoxSet Context!10614))

(declare-fun e!3591005 () (InoxSet Context!10614))

(assert (=> b!5856329 (= e!3591007 e!3591005)))

(declare-fun c!1038535 () Bool)

(assert (=> b!5856329 (= c!1038535 ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343))))))

(declare-fun d!1839139 () Bool)

(declare-fun c!1038536 () Bool)

(assert (=> d!1839139 (= c!1038536 e!3591006)))

(declare-fun res!2464932 () Bool)

(assert (=> d!1839139 (=> (not res!2464932) (not e!3591006))))

(assert (=> d!1839139 (= res!2464932 ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343))))))

(assert (=> d!1839139 (= (derivationStepZipperUp!1115 (h!70394 zl!343) (h!70393 s!2326)) e!3591007)))

(declare-fun b!5856330 () Bool)

(assert (=> b!5856330 (= e!3591005 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458784 () Bool)

(declare-fun call!458789 () (InoxSet Context!10614))

(assert (=> bm!458784 (= call!458789 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (h!70394 zl!343))) (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (h!70393 s!2326)))))

(declare-fun b!5856331 () Bool)

(assert (=> b!5856331 (= e!3591007 ((_ map or) call!458789 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (h!70393 s!2326))))))

(declare-fun b!5856332 () Bool)

(assert (=> b!5856332 (= e!3591005 call!458789)))

(assert (= (and d!1839139 res!2464932) b!5856328))

(assert (= (and d!1839139 c!1038536) b!5856331))

(assert (= (and d!1839139 (not c!1038536)) b!5856329))

(assert (= (and b!5856329 c!1038535) b!5856332))

(assert (= (and b!5856329 (not c!1038535)) b!5856330))

(assert (= (or b!5856331 b!5856332) bm!458784))

(declare-fun m!6774598 () Bool)

(assert (=> b!5856328 m!6774598))

(declare-fun m!6774600 () Bool)

(assert (=> bm!458784 m!6774600))

(declare-fun m!6774602 () Bool)

(assert (=> b!5856331 m!6774602))

(assert (=> b!5855690 d!1839139))

(declare-fun d!1839141 () Bool)

(declare-fun dynLambda!25000 (Int Context!10614) (InoxSet Context!10614))

(assert (=> d!1839141 (= (flatMap!1454 z!1189 lambda!320170) (dynLambda!25000 lambda!320170 (h!70394 zl!343)))))

(declare-fun lt!2304960 () Unit!157117)

(declare-fun choose!44408 ((InoxSet Context!10614) Context!10614 Int) Unit!157117)

(assert (=> d!1839141 (= lt!2304960 (choose!44408 z!1189 (h!70394 zl!343) lambda!320170))))

(assert (=> d!1839141 (= z!1189 (store ((as const (Array Context!10614 Bool)) false) (h!70394 zl!343) true))))

(assert (=> d!1839141 (= (lemmaFlatMapOnSingletonSet!982 z!1189 (h!70394 zl!343) lambda!320170) lt!2304960)))

(declare-fun b_lambda!220417 () Bool)

(assert (=> (not b_lambda!220417) (not d!1839141)))

(declare-fun bs!1379799 () Bool)

(assert (= bs!1379799 d!1839141))

(assert (=> bs!1379799 m!6774212))

(declare-fun m!6774604 () Bool)

(assert (=> bs!1379799 m!6774604))

(declare-fun m!6774606 () Bool)

(assert (=> bs!1379799 m!6774606))

(declare-fun m!6774608 () Bool)

(assert (=> bs!1379799 m!6774608))

(assert (=> b!5855690 d!1839141))

(declare-fun bs!1379800 () Bool)

(declare-fun d!1839143 () Bool)

(assert (= bs!1379800 (and d!1839143 d!1839099)))

(declare-fun lambda!320215 () Int)

(assert (=> bs!1379800 (= lambda!320215 lambda!320200)))

(declare-fun bs!1379801 () Bool)

(assert (= bs!1379801 (and d!1839143 d!1839123)))

(assert (=> bs!1379801 (= lambda!320215 lambda!320209)))

(assert (=> d!1839143 (= (inv!83054 setElem!39690) (forall!15010 (exprs!5807 setElem!39690) lambda!320215))))

(declare-fun bs!1379802 () Bool)

(assert (= bs!1379802 d!1839143))

(declare-fun m!6774610 () Bool)

(assert (=> bs!1379802 m!6774610))

(assert (=> setNonEmpty!39690 d!1839143))

(declare-fun d!1839145 () Bool)

(declare-fun e!3591010 () Bool)

(assert (=> d!1839145 e!3591010))

(declare-fun res!2464935 () Bool)

(assert (=> d!1839145 (=> (not res!2464935) (not e!3591010))))

(declare-fun lt!2304963 () List!64070)

(declare-fun noDuplicate!1788 (List!64070) Bool)

(assert (=> d!1839145 (= res!2464935 (noDuplicate!1788 lt!2304963))))

(declare-fun choose!44409 ((InoxSet Context!10614)) List!64070)

(assert (=> d!1839145 (= lt!2304963 (choose!44409 z!1189))))

(assert (=> d!1839145 (= (toList!9707 z!1189) lt!2304963)))

(declare-fun b!5856335 () Bool)

(declare-fun content!11753 (List!64070) (InoxSet Context!10614))

(assert (=> b!5856335 (= e!3591010 (= (content!11753 lt!2304963) z!1189))))

(assert (= (and d!1839145 res!2464935) b!5856335))

(declare-fun m!6774612 () Bool)

(assert (=> d!1839145 m!6774612))

(declare-fun m!6774614 () Bool)

(assert (=> d!1839145 m!6774614))

(declare-fun m!6774616 () Bool)

(assert (=> b!5856335 m!6774616))

(assert (=> b!5855692 d!1839145))

(declare-fun bs!1379803 () Bool)

(declare-fun d!1839147 () Bool)

(assert (= bs!1379803 (and d!1839147 d!1839099)))

(declare-fun lambda!320218 () Int)

(assert (=> bs!1379803 (= lambda!320218 lambda!320200)))

(declare-fun bs!1379804 () Bool)

(assert (= bs!1379804 (and d!1839147 d!1839123)))

(assert (=> bs!1379804 (= lambda!320218 lambda!320209)))

(declare-fun bs!1379805 () Bool)

(assert (= bs!1379805 (and d!1839147 d!1839143)))

(assert (=> bs!1379805 (= lambda!320218 lambda!320215)))

(declare-fun b!5856356 () Bool)

(declare-fun e!3591028 () Bool)

(declare-fun lt!2304966 () Regex!15923)

(declare-fun isEmptyLang!1366 (Regex!15923) Bool)

(assert (=> b!5856356 (= e!3591028 (isEmptyLang!1366 lt!2304966))))

(declare-fun b!5856357 () Bool)

(declare-fun e!3591024 () Bool)

(assert (=> b!5856357 (= e!3591024 e!3591028)))

(declare-fun c!1038548 () Bool)

(declare-fun isEmpty!35806 (List!64068) Bool)

(assert (=> b!5856357 (= c!1038548 (isEmpty!35806 (unfocusZipperList!1344 zl!343)))))

(declare-fun b!5856358 () Bool)

(declare-fun e!3591026 () Bool)

(assert (=> b!5856358 (= e!3591026 (isEmpty!35806 (t!377435 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5856359 () Bool)

(declare-fun e!3591023 () Bool)

(declare-fun head!12401 (List!64068) Regex!15923)

(assert (=> b!5856359 (= e!3591023 (= lt!2304966 (head!12401 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5856360 () Bool)

(declare-fun e!3591027 () Regex!15923)

(assert (=> b!5856360 (= e!3591027 (h!70392 (unfocusZipperList!1344 zl!343)))))

(assert (=> d!1839147 e!3591024))

(declare-fun res!2464941 () Bool)

(assert (=> d!1839147 (=> (not res!2464941) (not e!3591024))))

(assert (=> d!1839147 (= res!2464941 (validRegex!7659 lt!2304966))))

(assert (=> d!1839147 (= lt!2304966 e!3591027)))

(declare-fun c!1038545 () Bool)

(assert (=> d!1839147 (= c!1038545 e!3591026)))

(declare-fun res!2464940 () Bool)

(assert (=> d!1839147 (=> (not res!2464940) (not e!3591026))))

(assert (=> d!1839147 (= res!2464940 ((_ is Cons!63944) (unfocusZipperList!1344 zl!343)))))

(assert (=> d!1839147 (forall!15010 (unfocusZipperList!1344 zl!343) lambda!320218)))

(assert (=> d!1839147 (= (generalisedUnion!1767 (unfocusZipperList!1344 zl!343)) lt!2304966)))

(declare-fun b!5856361 () Bool)

(declare-fun e!3591025 () Regex!15923)

(assert (=> b!5856361 (= e!3591025 EmptyLang!15923)))

(declare-fun b!5856362 () Bool)

(assert (=> b!5856362 (= e!3591027 e!3591025)))

(declare-fun c!1038547 () Bool)

(assert (=> b!5856362 (= c!1038547 ((_ is Cons!63944) (unfocusZipperList!1344 zl!343)))))

(declare-fun b!5856363 () Bool)

(assert (=> b!5856363 (= e!3591025 (Union!15923 (h!70392 (unfocusZipperList!1344 zl!343)) (generalisedUnion!1767 (t!377435 (unfocusZipperList!1344 zl!343)))))))

(declare-fun b!5856364 () Bool)

(assert (=> b!5856364 (= e!3591028 e!3591023)))

(declare-fun c!1038546 () Bool)

(declare-fun tail!11486 (List!64068) List!64068)

(assert (=> b!5856364 (= c!1038546 (isEmpty!35806 (tail!11486 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5856365 () Bool)

(declare-fun isUnion!796 (Regex!15923) Bool)

(assert (=> b!5856365 (= e!3591023 (isUnion!796 lt!2304966))))

(assert (= (and d!1839147 res!2464940) b!5856358))

(assert (= (and d!1839147 c!1038545) b!5856360))

(assert (= (and d!1839147 (not c!1038545)) b!5856362))

(assert (= (and b!5856362 c!1038547) b!5856363))

(assert (= (and b!5856362 (not c!1038547)) b!5856361))

(assert (= (and d!1839147 res!2464941) b!5856357))

(assert (= (and b!5856357 c!1038548) b!5856356))

(assert (= (and b!5856357 (not c!1038548)) b!5856364))

(assert (= (and b!5856364 c!1038546) b!5856359))

(assert (= (and b!5856364 (not c!1038546)) b!5856365))

(assert (=> b!5856364 m!6774242))

(declare-fun m!6774618 () Bool)

(assert (=> b!5856364 m!6774618))

(assert (=> b!5856364 m!6774618))

(declare-fun m!6774620 () Bool)

(assert (=> b!5856364 m!6774620))

(declare-fun m!6774622 () Bool)

(assert (=> b!5856363 m!6774622))

(declare-fun m!6774624 () Bool)

(assert (=> b!5856356 m!6774624))

(declare-fun m!6774626 () Bool)

(assert (=> b!5856365 m!6774626))

(declare-fun m!6774628 () Bool)

(assert (=> b!5856358 m!6774628))

(assert (=> b!5856359 m!6774242))

(declare-fun m!6774630 () Bool)

(assert (=> b!5856359 m!6774630))

(assert (=> b!5856357 m!6774242))

(declare-fun m!6774632 () Bool)

(assert (=> b!5856357 m!6774632))

(declare-fun m!6774634 () Bool)

(assert (=> d!1839147 m!6774634))

(assert (=> d!1839147 m!6774242))

(declare-fun m!6774636 () Bool)

(assert (=> d!1839147 m!6774636))

(assert (=> b!5855694 d!1839147))

(declare-fun bs!1379806 () Bool)

(declare-fun d!1839149 () Bool)

(assert (= bs!1379806 (and d!1839149 d!1839099)))

(declare-fun lambda!320221 () Int)

(assert (=> bs!1379806 (= lambda!320221 lambda!320200)))

(declare-fun bs!1379807 () Bool)

(assert (= bs!1379807 (and d!1839149 d!1839123)))

(assert (=> bs!1379807 (= lambda!320221 lambda!320209)))

(declare-fun bs!1379808 () Bool)

(assert (= bs!1379808 (and d!1839149 d!1839143)))

(assert (=> bs!1379808 (= lambda!320221 lambda!320215)))

(declare-fun bs!1379809 () Bool)

(assert (= bs!1379809 (and d!1839149 d!1839147)))

(assert (=> bs!1379809 (= lambda!320221 lambda!320218)))

(declare-fun lt!2304969 () List!64068)

(assert (=> d!1839149 (forall!15010 lt!2304969 lambda!320221)))

(declare-fun e!3591031 () List!64068)

(assert (=> d!1839149 (= lt!2304969 e!3591031)))

(declare-fun c!1038551 () Bool)

(assert (=> d!1839149 (= c!1038551 ((_ is Cons!63946) zl!343))))

(assert (=> d!1839149 (= (unfocusZipperList!1344 zl!343) lt!2304969)))

(declare-fun b!5856370 () Bool)

(assert (=> b!5856370 (= e!3591031 (Cons!63944 (generalisedConcat!1520 (exprs!5807 (h!70394 zl!343))) (unfocusZipperList!1344 (t!377437 zl!343))))))

(declare-fun b!5856371 () Bool)

(assert (=> b!5856371 (= e!3591031 Nil!63944)))

(assert (= (and d!1839149 c!1038551) b!5856370))

(assert (= (and d!1839149 (not c!1038551)) b!5856371))

(declare-fun m!6774638 () Bool)

(assert (=> d!1839149 m!6774638))

(assert (=> b!5856370 m!6774206))

(declare-fun m!6774640 () Bool)

(assert (=> b!5856370 m!6774640))

(assert (=> b!5855694 d!1839149))

(declare-fun b!5856390 () Bool)

(declare-fun e!3591049 () Bool)

(declare-fun call!458798 () Bool)

(assert (=> b!5856390 (= e!3591049 call!458798)))

(declare-fun b!5856391 () Bool)

(declare-fun e!3591046 () Bool)

(declare-fun e!3591052 () Bool)

(assert (=> b!5856391 (= e!3591046 e!3591052)))

(declare-fun c!1038557 () Bool)

(assert (=> b!5856391 (= c!1038557 ((_ is Union!15923) r!7292))))

(declare-fun c!1038556 () Bool)

(declare-fun call!458797 () Bool)

(declare-fun bm!458791 () Bool)

(assert (=> bm!458791 (= call!458797 (validRegex!7659 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))

(declare-fun b!5856392 () Bool)

(declare-fun e!3591047 () Bool)

(declare-fun e!3591050 () Bool)

(assert (=> b!5856392 (= e!3591047 e!3591050)))

(declare-fun res!2464952 () Bool)

(assert (=> b!5856392 (=> (not res!2464952) (not e!3591050))))

(declare-fun call!458796 () Bool)

(assert (=> b!5856392 (= res!2464952 call!458796)))

(declare-fun b!5856393 () Bool)

(declare-fun e!3591051 () Bool)

(assert (=> b!5856393 (= e!3591051 e!3591046)))

(assert (=> b!5856393 (= c!1038556 ((_ is Star!15923) r!7292))))

(declare-fun b!5856394 () Bool)

(declare-fun e!3591048 () Bool)

(assert (=> b!5856394 (= e!3591046 e!3591048)))

(declare-fun res!2464954 () Bool)

(assert (=> b!5856394 (= res!2464954 (not (nullable!5923 (reg!16252 r!7292))))))

(assert (=> b!5856394 (=> (not res!2464954) (not e!3591048))))

(declare-fun b!5856395 () Bool)

(declare-fun res!2464955 () Bool)

(assert (=> b!5856395 (=> (not res!2464955) (not e!3591049))))

(assert (=> b!5856395 (= res!2464955 call!458796)))

(assert (=> b!5856395 (= e!3591052 e!3591049)))

(declare-fun d!1839151 () Bool)

(declare-fun res!2464953 () Bool)

(assert (=> d!1839151 (=> res!2464953 e!3591051)))

(assert (=> d!1839151 (= res!2464953 ((_ is ElementMatch!15923) r!7292))))

(assert (=> d!1839151 (= (validRegex!7659 r!7292) e!3591051)))

(declare-fun b!5856396 () Bool)

(assert (=> b!5856396 (= e!3591050 call!458798)))

(declare-fun b!5856397 () Bool)

(assert (=> b!5856397 (= e!3591048 call!458797)))

(declare-fun bm!458792 () Bool)

(assert (=> bm!458792 (= call!458798 call!458797)))

(declare-fun b!5856398 () Bool)

(declare-fun res!2464956 () Bool)

(assert (=> b!5856398 (=> res!2464956 e!3591047)))

(assert (=> b!5856398 (= res!2464956 (not ((_ is Concat!24768) r!7292)))))

(assert (=> b!5856398 (= e!3591052 e!3591047)))

(declare-fun bm!458793 () Bool)

(assert (=> bm!458793 (= call!458796 (validRegex!7659 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))

(assert (= (and d!1839151 (not res!2464953)) b!5856393))

(assert (= (and b!5856393 c!1038556) b!5856394))

(assert (= (and b!5856393 (not c!1038556)) b!5856391))

(assert (= (and b!5856394 res!2464954) b!5856397))

(assert (= (and b!5856391 c!1038557) b!5856395))

(assert (= (and b!5856391 (not c!1038557)) b!5856398))

(assert (= (and b!5856395 res!2464955) b!5856390))

(assert (= (and b!5856398 (not res!2464956)) b!5856392))

(assert (= (and b!5856392 res!2464952) b!5856396))

(assert (= (or b!5856390 b!5856396) bm!458792))

(assert (= (or b!5856395 b!5856392) bm!458793))

(assert (= (or b!5856397 bm!458792) bm!458791))

(declare-fun m!6774642 () Bool)

(assert (=> bm!458791 m!6774642))

(declare-fun m!6774644 () Bool)

(assert (=> b!5856394 m!6774644))

(declare-fun m!6774646 () Bool)

(assert (=> bm!458793 m!6774646))

(assert (=> start!599020 d!1839151))

(declare-fun bs!1379810 () Bool)

(declare-fun d!1839153 () Bool)

(assert (= bs!1379810 (and d!1839153 d!1839099)))

(declare-fun lambda!320224 () Int)

(assert (=> bs!1379810 (= lambda!320224 lambda!320200)))

(declare-fun bs!1379811 () Bool)

(assert (= bs!1379811 (and d!1839153 d!1839149)))

(assert (=> bs!1379811 (= lambda!320224 lambda!320221)))

(declare-fun bs!1379812 () Bool)

(assert (= bs!1379812 (and d!1839153 d!1839147)))

(assert (=> bs!1379812 (= lambda!320224 lambda!320218)))

(declare-fun bs!1379813 () Bool)

(assert (= bs!1379813 (and d!1839153 d!1839143)))

(assert (=> bs!1379813 (= lambda!320224 lambda!320215)))

(declare-fun bs!1379814 () Bool)

(assert (= bs!1379814 (and d!1839153 d!1839123)))

(assert (=> bs!1379814 (= lambda!320224 lambda!320209)))

(declare-fun b!5856419 () Bool)

(declare-fun e!3591069 () Bool)

(assert (=> b!5856419 (= e!3591069 (isEmpty!35806 (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5856420 () Bool)

(declare-fun e!3591065 () Bool)

(declare-fun lt!2304972 () Regex!15923)

(declare-fun isEmptyExpr!1358 (Regex!15923) Bool)

(assert (=> b!5856420 (= e!3591065 (isEmptyExpr!1358 lt!2304972))))

(declare-fun b!5856421 () Bool)

(declare-fun e!3591067 () Bool)

(declare-fun isConcat!881 (Regex!15923) Bool)

(assert (=> b!5856421 (= e!3591067 (isConcat!881 lt!2304972))))

(declare-fun b!5856422 () Bool)

(declare-fun e!3591070 () Regex!15923)

(assert (=> b!5856422 (= e!3591070 (Concat!24768 (h!70392 (exprs!5807 (h!70394 zl!343))) (generalisedConcat!1520 (t!377435 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5856423 () Bool)

(declare-fun e!3591068 () Bool)

(assert (=> b!5856423 (= e!3591068 e!3591065)))

(declare-fun c!1038567 () Bool)

(assert (=> b!5856423 (= c!1038567 (isEmpty!35806 (exprs!5807 (h!70394 zl!343))))))

(assert (=> d!1839153 e!3591068))

(declare-fun res!2464962 () Bool)

(assert (=> d!1839153 (=> (not res!2464962) (not e!3591068))))

(assert (=> d!1839153 (= res!2464962 (validRegex!7659 lt!2304972))))

(declare-fun e!3591066 () Regex!15923)

(assert (=> d!1839153 (= lt!2304972 e!3591066)))

(declare-fun c!1038566 () Bool)

(assert (=> d!1839153 (= c!1038566 e!3591069)))

(declare-fun res!2464961 () Bool)

(assert (=> d!1839153 (=> (not res!2464961) (not e!3591069))))

(assert (=> d!1839153 (= res!2464961 ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343))))))

(assert (=> d!1839153 (forall!15010 (exprs!5807 (h!70394 zl!343)) lambda!320224)))

(assert (=> d!1839153 (= (generalisedConcat!1520 (exprs!5807 (h!70394 zl!343))) lt!2304972)))

(declare-fun b!5856424 () Bool)

(assert (=> b!5856424 (= e!3591066 (h!70392 (exprs!5807 (h!70394 zl!343))))))

(declare-fun b!5856425 () Bool)

(assert (=> b!5856425 (= e!3591066 e!3591070)))

(declare-fun c!1038569 () Bool)

(assert (=> b!5856425 (= c!1038569 ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343))))))

(declare-fun b!5856426 () Bool)

(assert (=> b!5856426 (= e!3591070 EmptyExpr!15923)))

(declare-fun b!5856427 () Bool)

(assert (=> b!5856427 (= e!3591065 e!3591067)))

(declare-fun c!1038568 () Bool)

(assert (=> b!5856427 (= c!1038568 (isEmpty!35806 (tail!11486 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5856428 () Bool)

(assert (=> b!5856428 (= e!3591067 (= lt!2304972 (head!12401 (exprs!5807 (h!70394 zl!343)))))))

(assert (= (and d!1839153 res!2464961) b!5856419))

(assert (= (and d!1839153 c!1038566) b!5856424))

(assert (= (and d!1839153 (not c!1038566)) b!5856425))

(assert (= (and b!5856425 c!1038569) b!5856422))

(assert (= (and b!5856425 (not c!1038569)) b!5856426))

(assert (= (and d!1839153 res!2464962) b!5856423))

(assert (= (and b!5856423 c!1038567) b!5856420))

(assert (= (and b!5856423 (not c!1038567)) b!5856427))

(assert (= (and b!5856427 c!1038568) b!5856428))

(assert (= (and b!5856427 (not c!1038568)) b!5856421))

(declare-fun m!6774648 () Bool)

(assert (=> b!5856419 m!6774648))

(declare-fun m!6774650 () Bool)

(assert (=> b!5856428 m!6774650))

(declare-fun m!6774652 () Bool)

(assert (=> b!5856421 m!6774652))

(declare-fun m!6774654 () Bool)

(assert (=> b!5856422 m!6774654))

(declare-fun m!6774656 () Bool)

(assert (=> d!1839153 m!6774656))

(declare-fun m!6774658 () Bool)

(assert (=> d!1839153 m!6774658))

(declare-fun m!6774660 () Bool)

(assert (=> b!5856420 m!6774660))

(declare-fun m!6774662 () Bool)

(assert (=> b!5856423 m!6774662))

(declare-fun m!6774664 () Bool)

(assert (=> b!5856427 m!6774664))

(assert (=> b!5856427 m!6774664))

(declare-fun m!6774666 () Bool)

(assert (=> b!5856427 m!6774666))

(assert (=> b!5855693 d!1839153))

(declare-fun b!5856439 () Bool)

(declare-fun e!3591073 () Bool)

(assert (=> b!5856439 (= e!3591073 tp_is_empty!41099)))

(declare-fun b!5856441 () Bool)

(declare-fun tp!1620001 () Bool)

(assert (=> b!5856441 (= e!3591073 tp!1620001)))

(declare-fun b!5856442 () Bool)

(declare-fun tp!1619999 () Bool)

(declare-fun tp!1619998 () Bool)

(assert (=> b!5856442 (= e!3591073 (and tp!1619999 tp!1619998))))

(declare-fun b!5856440 () Bool)

(declare-fun tp!1619997 () Bool)

(declare-fun tp!1620000 () Bool)

(assert (=> b!5856440 (= e!3591073 (and tp!1619997 tp!1620000))))

(assert (=> b!5855675 (= tp!1619924 e!3591073)))

(assert (= (and b!5855675 ((_ is ElementMatch!15923) (regOne!32358 r!7292))) b!5856439))

(assert (= (and b!5855675 ((_ is Concat!24768) (regOne!32358 r!7292))) b!5856440))

(assert (= (and b!5855675 ((_ is Star!15923) (regOne!32358 r!7292))) b!5856441))

(assert (= (and b!5855675 ((_ is Union!15923) (regOne!32358 r!7292))) b!5856442))

(declare-fun b!5856443 () Bool)

(declare-fun e!3591074 () Bool)

(assert (=> b!5856443 (= e!3591074 tp_is_empty!41099)))

(declare-fun b!5856445 () Bool)

(declare-fun tp!1620006 () Bool)

(assert (=> b!5856445 (= e!3591074 tp!1620006)))

(declare-fun b!5856446 () Bool)

(declare-fun tp!1620004 () Bool)

(declare-fun tp!1620003 () Bool)

(assert (=> b!5856446 (= e!3591074 (and tp!1620004 tp!1620003))))

(declare-fun b!5856444 () Bool)

(declare-fun tp!1620002 () Bool)

(declare-fun tp!1620005 () Bool)

(assert (=> b!5856444 (= e!3591074 (and tp!1620002 tp!1620005))))

(assert (=> b!5855675 (= tp!1619920 e!3591074)))

(assert (= (and b!5855675 ((_ is ElementMatch!15923) (regTwo!32358 r!7292))) b!5856443))

(assert (= (and b!5855675 ((_ is Concat!24768) (regTwo!32358 r!7292))) b!5856444))

(assert (= (and b!5855675 ((_ is Star!15923) (regTwo!32358 r!7292))) b!5856445))

(assert (= (and b!5855675 ((_ is Union!15923) (regTwo!32358 r!7292))) b!5856446))

(declare-fun condSetEmpty!39696 () Bool)

(assert (=> setNonEmpty!39690 (= condSetEmpty!39696 (= setRest!39690 ((as const (Array Context!10614 Bool)) false)))))

(declare-fun setRes!39696 () Bool)

(assert (=> setNonEmpty!39690 (= tp!1619922 setRes!39696)))

(declare-fun setIsEmpty!39696 () Bool)

(assert (=> setIsEmpty!39696 setRes!39696))

(declare-fun setElem!39696 () Context!10614)

(declare-fun tp!1620012 () Bool)

(declare-fun e!3591077 () Bool)

(declare-fun setNonEmpty!39696 () Bool)

(assert (=> setNonEmpty!39696 (= setRes!39696 (and tp!1620012 (inv!83054 setElem!39696) e!3591077))))

(declare-fun setRest!39696 () (InoxSet Context!10614))

(assert (=> setNonEmpty!39696 (= setRest!39690 ((_ map or) (store ((as const (Array Context!10614 Bool)) false) setElem!39696 true) setRest!39696))))

(declare-fun b!5856451 () Bool)

(declare-fun tp!1620011 () Bool)

(assert (=> b!5856451 (= e!3591077 tp!1620011)))

(assert (= (and setNonEmpty!39690 condSetEmpty!39696) setIsEmpty!39696))

(assert (= (and setNonEmpty!39690 (not condSetEmpty!39696)) setNonEmpty!39696))

(assert (= setNonEmpty!39696 b!5856451))

(declare-fun m!6774668 () Bool)

(assert (=> setNonEmpty!39696 m!6774668))

(declare-fun b!5856452 () Bool)

(declare-fun e!3591078 () Bool)

(assert (=> b!5856452 (= e!3591078 tp_is_empty!41099)))

(declare-fun b!5856454 () Bool)

(declare-fun tp!1620017 () Bool)

(assert (=> b!5856454 (= e!3591078 tp!1620017)))

(declare-fun b!5856455 () Bool)

(declare-fun tp!1620015 () Bool)

(declare-fun tp!1620014 () Bool)

(assert (=> b!5856455 (= e!3591078 (and tp!1620015 tp!1620014))))

(declare-fun b!5856453 () Bool)

(declare-fun tp!1620013 () Bool)

(declare-fun tp!1620016 () Bool)

(assert (=> b!5856453 (= e!3591078 (and tp!1620013 tp!1620016))))

(assert (=> b!5855687 (= tp!1619927 e!3591078)))

(assert (= (and b!5855687 ((_ is ElementMatch!15923) (reg!16252 r!7292))) b!5856452))

(assert (= (and b!5855687 ((_ is Concat!24768) (reg!16252 r!7292))) b!5856453))

(assert (= (and b!5855687 ((_ is Star!15923) (reg!16252 r!7292))) b!5856454))

(assert (= (and b!5855687 ((_ is Union!15923) (reg!16252 r!7292))) b!5856455))

(declare-fun b!5856460 () Bool)

(declare-fun e!3591081 () Bool)

(declare-fun tp!1620022 () Bool)

(declare-fun tp!1620023 () Bool)

(assert (=> b!5856460 (= e!3591081 (and tp!1620022 tp!1620023))))

(assert (=> b!5855681 (= tp!1619921 e!3591081)))

(assert (= (and b!5855681 ((_ is Cons!63944) (exprs!5807 setElem!39690))) b!5856460))

(declare-fun b!5856461 () Bool)

(declare-fun e!3591082 () Bool)

(assert (=> b!5856461 (= e!3591082 tp_is_empty!41099)))

(declare-fun b!5856463 () Bool)

(declare-fun tp!1620028 () Bool)

(assert (=> b!5856463 (= e!3591082 tp!1620028)))

(declare-fun b!5856464 () Bool)

(declare-fun tp!1620026 () Bool)

(declare-fun tp!1620025 () Bool)

(assert (=> b!5856464 (= e!3591082 (and tp!1620026 tp!1620025))))

(declare-fun b!5856462 () Bool)

(declare-fun tp!1620024 () Bool)

(declare-fun tp!1620027 () Bool)

(assert (=> b!5856462 (= e!3591082 (and tp!1620024 tp!1620027))))

(assert (=> b!5855683 (= tp!1619923 e!3591082)))

(assert (= (and b!5855683 ((_ is ElementMatch!15923) (regOne!32359 r!7292))) b!5856461))

(assert (= (and b!5855683 ((_ is Concat!24768) (regOne!32359 r!7292))) b!5856462))

(assert (= (and b!5855683 ((_ is Star!15923) (regOne!32359 r!7292))) b!5856463))

(assert (= (and b!5855683 ((_ is Union!15923) (regOne!32359 r!7292))) b!5856464))

(declare-fun b!5856465 () Bool)

(declare-fun e!3591083 () Bool)

(assert (=> b!5856465 (= e!3591083 tp_is_empty!41099)))

(declare-fun b!5856467 () Bool)

(declare-fun tp!1620033 () Bool)

(assert (=> b!5856467 (= e!3591083 tp!1620033)))

(declare-fun b!5856468 () Bool)

(declare-fun tp!1620031 () Bool)

(declare-fun tp!1620030 () Bool)

(assert (=> b!5856468 (= e!3591083 (and tp!1620031 tp!1620030))))

(declare-fun b!5856466 () Bool)

(declare-fun tp!1620029 () Bool)

(declare-fun tp!1620032 () Bool)

(assert (=> b!5856466 (= e!3591083 (and tp!1620029 tp!1620032))))

(assert (=> b!5855683 (= tp!1619925 e!3591083)))

(assert (= (and b!5855683 ((_ is ElementMatch!15923) (regTwo!32359 r!7292))) b!5856465))

(assert (= (and b!5855683 ((_ is Concat!24768) (regTwo!32359 r!7292))) b!5856466))

(assert (= (and b!5855683 ((_ is Star!15923) (regTwo!32359 r!7292))) b!5856467))

(assert (= (and b!5855683 ((_ is Union!15923) (regTwo!32359 r!7292))) b!5856468))

(declare-fun b!5856476 () Bool)

(declare-fun e!3591089 () Bool)

(declare-fun tp!1620038 () Bool)

(assert (=> b!5856476 (= e!3591089 tp!1620038)))

(declare-fun tp!1620039 () Bool)

(declare-fun e!3591088 () Bool)

(declare-fun b!5856475 () Bool)

(assert (=> b!5856475 (= e!3591088 (and (inv!83054 (h!70394 (t!377437 zl!343))) e!3591089 tp!1620039))))

(assert (=> b!5855678 (= tp!1619919 e!3591088)))

(assert (= b!5856475 b!5856476))

(assert (= (and b!5855678 ((_ is Cons!63946) (t!377437 zl!343))) b!5856475))

(declare-fun m!6774670 () Bool)

(assert (=> b!5856475 m!6774670))

(declare-fun b!5856481 () Bool)

(declare-fun e!3591092 () Bool)

(declare-fun tp!1620042 () Bool)

(assert (=> b!5856481 (= e!3591092 (and tp_is_empty!41099 tp!1620042))))

(assert (=> b!5855680 (= tp!1619926 e!3591092)))

(assert (= (and b!5855680 ((_ is Cons!63945) (t!377436 s!2326))) b!5856481))

(declare-fun b!5856482 () Bool)

(declare-fun e!3591093 () Bool)

(declare-fun tp!1620043 () Bool)

(declare-fun tp!1620044 () Bool)

(assert (=> b!5856482 (= e!3591093 (and tp!1620043 tp!1620044))))

(assert (=> b!5855689 (= tp!1619928 e!3591093)))

(assert (= (and b!5855689 ((_ is Cons!63944) (exprs!5807 (h!70394 zl!343)))) b!5856482))

(declare-fun b_lambda!220419 () Bool)

(assert (= b_lambda!220417 (or b!5855690 b_lambda!220419)))

(declare-fun bs!1379815 () Bool)

(declare-fun d!1839155 () Bool)

(assert (= bs!1379815 (and d!1839155 b!5855690)))

(assert (=> bs!1379815 (= (dynLambda!25000 lambda!320170 (h!70394 zl!343)) (derivationStepZipperUp!1115 (h!70394 zl!343) (h!70393 s!2326)))))

(assert (=> bs!1379815 m!6774214))

(assert (=> d!1839141 d!1839155))

(check-sat (not b!5856444) (not b!5856264) (not b!5856311) (not d!1839095) (not d!1839135) (not bm!458784) (not d!1839147) (not b!5856135) (not b!5856328) (not b!5856440) (not d!1839131) (not b!5856462) (not b!5856308) (not d!1839115) (not b!5856148) (not b!5856149) (not bm!458751) (not d!1839097) (not b!5856419) (not b!5856283) (not b_lambda!220419) (not d!1839153) (not b!5856446) (not b!5856278) (not bm!458747) (not b!5856370) (not b!5856145) (not b!5856260) (not bm!458773) (not b!5856221) (not b!5856481) (not b!5856421) (not d!1839099) (not b!5856217) (not b!5856177) (not d!1839149) (not b!5856451) (not b!5856322) (not b!5856427) (not b!5856467) (not d!1839091) (not bm!458793) (not b!5856259) (not b!5856314) (not b!5856146) (not b!5856325) tp_is_empty!41099 (not bm!458754) (not b!5856454) (not b!5856422) (not b!5856423) (not d!1839137) (not b!5856394) (not b!5856356) (not b!5856144) (not bm!458756) (not b!5856257) (not b!5856460) (not b!5856357) (not b!5856363) (not b!5856358) (not b!5856258) (not b!5856166) (not b!5856453) (not bs!1379815) (not b!5856310) (not b!5856303) (not b!5856420) (not bm!458748) (not b!5856359) (not b!5856475) (not b!5856468) (not b!5856476) (not b!5856445) (not d!1839111) (not b!5856309) (not bm!458791) (not b!5856120) (not setNonEmpty!39696) (not b!5856286) (not b!5856289) (not b!5856466) (not bm!458779) (not b!5856482) (not b!5856153) (not b!5856364) (not bm!458764) (not bm!458755) (not b!5856321) (not b!5856455) (not b!5856463) (not d!1839145) (not b!5856147) (not b!5856441) (not b!5856284) (not d!1839133) (not bm!458765) (not b!5856158) (not d!1839113) (not d!1839129) (not bm!458782) (not b!5856261) (not bm!458780) (not d!1839093) (not bm!458781) (not b!5856365) (not d!1839141) (not bm!458777) (not bm!458768) (not b!5856464) (not d!1839143) (not b!5856285) (not b!5856442) (not bm!458762) (not b!5856150) (not b!5856331) (not d!1839119) (not b!5856282) (not bm!458774) (not b!5856138) (not b!5856307) (not bm!458778) (not b!5856299) (not d!1839123) (not b!5856335) (not bm!458783) (not d!1839127) (not b!5856155) (not bm!458758) (not bm!458759) (not b!5856428) (not b!5856274))
(check-sat)
(get-model)

(declare-fun b!5857003 () Bool)

(declare-fun e!3591387 () (InoxSet Context!10614))

(declare-fun call!458917 () (InoxSet Context!10614))

(assert (=> b!5857003 (= e!3591387 call!458917)))

(declare-fun b!5857004 () Bool)

(assert (=> b!5857004 (= e!3591387 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857005 () Bool)

(declare-fun e!3591384 () (InoxSet Context!10614))

(assert (=> b!5857005 (= e!3591384 (store ((as const (Array Context!10614 Bool)) false) (ite c!1038490 lt!2304898 (Context!10615 call!458767)) true))))

(declare-fun b!5857006 () Bool)

(declare-fun e!3591383 () (InoxSet Context!10614))

(assert (=> b!5857006 (= e!3591384 e!3591383)))

(declare-fun c!1038714 () Bool)

(assert (=> b!5857006 (= c!1038714 ((_ is Union!15923) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))))))

(declare-fun c!1038715 () Bool)

(declare-fun bm!458911 () Bool)

(declare-fun call!458920 () List!64068)

(declare-fun c!1038711 () Bool)

(assert (=> bm!458911 (= call!458920 ($colon$colon!1828 (exprs!5807 (ite c!1038490 lt!2304898 (Context!10615 call!458767))) (ite (or c!1038711 c!1038715) (regTwo!32358 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))))))))

(declare-fun b!5857007 () Bool)

(declare-fun e!3591382 () (InoxSet Context!10614))

(declare-fun call!458915 () (InoxSet Context!10614))

(declare-fun call!458916 () (InoxSet Context!10614))

(assert (=> b!5857007 (= e!3591382 ((_ map or) call!458915 call!458916))))

(declare-fun bm!458912 () Bool)

(assert (=> bm!458912 (= call!458915 (derivationStepZipperDown!1189 (ite c!1038714 (regTwo!32359 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (regOne!32358 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))))) (ite c!1038714 (ite c!1038490 lt!2304898 (Context!10615 call!458767)) (Context!10615 call!458920)) (h!70393 s!2326)))))

(declare-fun bm!458913 () Bool)

(assert (=> bm!458913 (= call!458917 call!458916)))

(declare-fun d!1839375 () Bool)

(declare-fun c!1038712 () Bool)

(assert (=> d!1839375 (= c!1038712 (and ((_ is ElementMatch!15923) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (= (c!1038343 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (h!70393 s!2326))))))

(assert (=> d!1839375 (= (derivationStepZipperDown!1189 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))) (ite c!1038490 lt!2304898 (Context!10615 call!458767)) (h!70393 s!2326)) e!3591384)))

(declare-fun bm!458910 () Bool)

(declare-fun call!458918 () List!64068)

(assert (=> bm!458910 (= call!458918 call!458920)))

(declare-fun bm!458914 () Bool)

(declare-fun call!458919 () (InoxSet Context!10614))

(assert (=> bm!458914 (= call!458916 call!458919)))

(declare-fun b!5857008 () Bool)

(declare-fun e!3591386 () (InoxSet Context!10614))

(assert (=> b!5857008 (= e!3591386 call!458917)))

(declare-fun b!5857009 () Bool)

(declare-fun e!3591385 () Bool)

(assert (=> b!5857009 (= e!3591385 (nullable!5923 (regOne!32358 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))))))))

(declare-fun b!5857010 () Bool)

(assert (=> b!5857010 (= c!1038711 e!3591385)))

(declare-fun res!2465086 () Bool)

(assert (=> b!5857010 (=> (not res!2465086) (not e!3591385))))

(assert (=> b!5857010 (= res!2465086 ((_ is Concat!24768) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))))))

(assert (=> b!5857010 (= e!3591383 e!3591382)))

(declare-fun b!5857011 () Bool)

(assert (=> b!5857011 (= e!3591382 e!3591386)))

(assert (=> b!5857011 (= c!1038715 ((_ is Concat!24768) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))))))

(declare-fun bm!458915 () Bool)

(assert (=> bm!458915 (= call!458919 (derivationStepZipperDown!1189 (ite c!1038714 (regOne!32359 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (ite c!1038711 (regTwo!32358 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (ite c!1038715 (regOne!32358 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))) (reg!16252 (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))))))) (ite (or c!1038714 c!1038711) (ite c!1038490 lt!2304898 (Context!10615 call!458767)) (Context!10615 call!458918)) (h!70393 s!2326)))))

(declare-fun b!5857012 () Bool)

(declare-fun c!1038713 () Bool)

(assert (=> b!5857012 (= c!1038713 ((_ is Star!15923) (ite c!1038490 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))))))

(assert (=> b!5857012 (= e!3591386 e!3591387)))

(declare-fun b!5857013 () Bool)

(assert (=> b!5857013 (= e!3591383 ((_ map or) call!458919 call!458915))))

(assert (= (and d!1839375 c!1038712) b!5857005))

(assert (= (and d!1839375 (not c!1038712)) b!5857006))

(assert (= (and b!5857006 c!1038714) b!5857013))

(assert (= (and b!5857006 (not c!1038714)) b!5857010))

(assert (= (and b!5857010 res!2465086) b!5857009))

(assert (= (and b!5857010 c!1038711) b!5857007))

(assert (= (and b!5857010 (not c!1038711)) b!5857011))

(assert (= (and b!5857011 c!1038715) b!5857008))

(assert (= (and b!5857011 (not c!1038715)) b!5857012))

(assert (= (and b!5857012 c!1038713) b!5857003))

(assert (= (and b!5857012 (not c!1038713)) b!5857004))

(assert (= (or b!5857008 b!5857003) bm!458910))

(assert (= (or b!5857008 b!5857003) bm!458913))

(assert (= (or b!5857007 bm!458910) bm!458911))

(assert (= (or b!5857007 bm!458913) bm!458914))

(assert (= (or b!5857013 b!5857007) bm!458912))

(assert (= (or b!5857013 bm!458914) bm!458915))

(declare-fun m!6775092 () Bool)

(assert (=> bm!458911 m!6775092))

(declare-fun m!6775094 () Bool)

(assert (=> b!5857009 m!6775094))

(declare-fun m!6775096 () Bool)

(assert (=> bm!458915 m!6775096))

(declare-fun m!6775098 () Bool)

(assert (=> bm!458912 m!6775098))

(declare-fun m!6775100 () Bool)

(assert (=> b!5857005 m!6775100))

(assert (=> bm!458759 d!1839375))

(declare-fun d!1839377 () Bool)

(assert (=> d!1839377 (= (isEmpty!35806 (t!377435 (unfocusZipperList!1344 zl!343))) ((_ is Nil!63944) (t!377435 (unfocusZipperList!1344 zl!343))))))

(assert (=> b!5856358 d!1839377))

(declare-fun d!1839379 () Bool)

(assert (=> d!1839379 (= (isEmpty!35805 s!2326) ((_ is Nil!63945) s!2326))))

(assert (=> d!1839127 d!1839379))

(assert (=> d!1839127 d!1839151))

(declare-fun b!5857014 () Bool)

(declare-fun e!3591389 () Bool)

(assert (=> b!5857014 (= e!3591389 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))))))

(declare-fun b!5857015 () Bool)

(declare-fun e!3591390 () (InoxSet Context!10614))

(declare-fun e!3591388 () (InoxSet Context!10614))

(assert (=> b!5857015 (= e!3591390 e!3591388)))

(declare-fun c!1038716 () Bool)

(assert (=> b!5857015 (= c!1038716 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))))

(declare-fun d!1839381 () Bool)

(declare-fun c!1038717 () Bool)

(assert (=> d!1839381 (= c!1038717 e!3591389)))

(declare-fun res!2465087 () Bool)

(assert (=> d!1839381 (=> (not res!2465087) (not e!3591389))))

(assert (=> d!1839381 (= res!2465087 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))))

(assert (=> d!1839381 (= (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70393 s!2326)) e!3591390)))

(declare-fun b!5857016 () Bool)

(assert (=> b!5857016 (= e!3591388 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458916 () Bool)

(declare-fun call!458921 () (InoxSet Context!10614))

(assert (=> bm!458916 (= call!458921 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))) (h!70393 s!2326)))))

(declare-fun b!5857017 () Bool)

(assert (=> b!5857017 (= e!3591390 ((_ map or) call!458921 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))) (h!70393 s!2326))))))

(declare-fun b!5857018 () Bool)

(assert (=> b!5857018 (= e!3591388 call!458921)))

(assert (= (and d!1839381 res!2465087) b!5857014))

(assert (= (and d!1839381 c!1038717) b!5857017))

(assert (= (and d!1839381 (not c!1038717)) b!5857015))

(assert (= (and b!5857015 c!1038716) b!5857018))

(assert (= (and b!5857015 (not c!1038716)) b!5857016))

(assert (= (or b!5857017 b!5857018) bm!458916))

(declare-fun m!6775102 () Bool)

(assert (=> b!5857014 m!6775102))

(declare-fun m!6775104 () Bool)

(assert (=> bm!458916 m!6775104))

(declare-fun m!6775106 () Bool)

(assert (=> b!5857017 m!6775106))

(assert (=> b!5856138 d!1839381))

(declare-fun d!1839383 () Bool)

(declare-fun nullableFct!1910 (Regex!15923) Bool)

(assert (=> d!1839383 (= (nullable!5923 (regOne!32358 r!7292)) (nullableFct!1910 (regOne!32358 r!7292)))))

(declare-fun bs!1379987 () Bool)

(assert (= bs!1379987 d!1839383))

(declare-fun m!6775108 () Bool)

(assert (=> bs!1379987 m!6775108))

(assert (=> b!5856120 d!1839383))

(declare-fun d!1839385 () Bool)

(assert (=> d!1839385 (= (nullable!5923 r!7292) (nullableFct!1910 r!7292))))

(declare-fun bs!1379988 () Bool)

(assert (= bs!1379988 d!1839385))

(declare-fun m!6775110 () Bool)

(assert (=> bs!1379988 m!6775110))

(assert (=> b!5856311 d!1839385))

(declare-fun d!1839387 () Bool)

(assert (=> d!1839387 (= (nullable!5923 (regOne!32358 (regTwo!32359 r!7292))) (nullableFct!1910 (regOne!32358 (regTwo!32359 r!7292))))))

(declare-fun bs!1379989 () Bool)

(assert (= bs!1379989 d!1839387))

(declare-fun m!6775112 () Bool)

(assert (=> bs!1379989 m!6775112))

(assert (=> b!5856166 d!1839387))

(declare-fun d!1839389 () Bool)

(assert (=> d!1839389 (= (isEmpty!35805 (tail!11485 s!2326)) ((_ is Nil!63945) (tail!11485 s!2326)))))

(assert (=> b!5856257 d!1839389))

(declare-fun d!1839391 () Bool)

(assert (=> d!1839391 (= (tail!11485 s!2326) (t!377436 s!2326))))

(assert (=> b!5856257 d!1839391))

(declare-fun b!5857019 () Bool)

(declare-fun e!3591394 () Bool)

(declare-fun call!458924 () Bool)

(assert (=> b!5857019 (= e!3591394 call!458924)))

(declare-fun b!5857020 () Bool)

(declare-fun e!3591391 () Bool)

(declare-fun e!3591397 () Bool)

(assert (=> b!5857020 (= e!3591391 e!3591397)))

(declare-fun c!1038719 () Bool)

(assert (=> b!5857020 (= c!1038719 ((_ is Union!15923) lt!2304944))))

(declare-fun c!1038718 () Bool)

(declare-fun call!458923 () Bool)

(declare-fun bm!458917 () Bool)

(assert (=> bm!458917 (= call!458923 (validRegex!7659 (ite c!1038718 (reg!16252 lt!2304944) (ite c!1038719 (regTwo!32359 lt!2304944) (regTwo!32358 lt!2304944)))))))

(declare-fun b!5857021 () Bool)

(declare-fun e!3591392 () Bool)

(declare-fun e!3591395 () Bool)

(assert (=> b!5857021 (= e!3591392 e!3591395)))

(declare-fun res!2465088 () Bool)

(assert (=> b!5857021 (=> (not res!2465088) (not e!3591395))))

(declare-fun call!458922 () Bool)

(assert (=> b!5857021 (= res!2465088 call!458922)))

(declare-fun b!5857022 () Bool)

(declare-fun e!3591396 () Bool)

(assert (=> b!5857022 (= e!3591396 e!3591391)))

(assert (=> b!5857022 (= c!1038718 ((_ is Star!15923) lt!2304944))))

(declare-fun b!5857023 () Bool)

(declare-fun e!3591393 () Bool)

(assert (=> b!5857023 (= e!3591391 e!3591393)))

(declare-fun res!2465090 () Bool)

(assert (=> b!5857023 (= res!2465090 (not (nullable!5923 (reg!16252 lt!2304944))))))

(assert (=> b!5857023 (=> (not res!2465090) (not e!3591393))))

(declare-fun b!5857024 () Bool)

(declare-fun res!2465091 () Bool)

(assert (=> b!5857024 (=> (not res!2465091) (not e!3591394))))

(assert (=> b!5857024 (= res!2465091 call!458922)))

(assert (=> b!5857024 (= e!3591397 e!3591394)))

(declare-fun d!1839393 () Bool)

(declare-fun res!2465089 () Bool)

(assert (=> d!1839393 (=> res!2465089 e!3591396)))

(assert (=> d!1839393 (= res!2465089 ((_ is ElementMatch!15923) lt!2304944))))

(assert (=> d!1839393 (= (validRegex!7659 lt!2304944) e!3591396)))

(declare-fun b!5857025 () Bool)

(assert (=> b!5857025 (= e!3591395 call!458924)))

(declare-fun b!5857026 () Bool)

(assert (=> b!5857026 (= e!3591393 call!458923)))

(declare-fun bm!458918 () Bool)

(assert (=> bm!458918 (= call!458924 call!458923)))

(declare-fun b!5857027 () Bool)

(declare-fun res!2465092 () Bool)

(assert (=> b!5857027 (=> res!2465092 e!3591392)))

(assert (=> b!5857027 (= res!2465092 (not ((_ is Concat!24768) lt!2304944)))))

(assert (=> b!5857027 (= e!3591397 e!3591392)))

(declare-fun bm!458919 () Bool)

(assert (=> bm!458919 (= call!458922 (validRegex!7659 (ite c!1038719 (regOne!32359 lt!2304944) (regOne!32358 lt!2304944))))))

(assert (= (and d!1839393 (not res!2465089)) b!5857022))

(assert (= (and b!5857022 c!1038718) b!5857023))

(assert (= (and b!5857022 (not c!1038718)) b!5857020))

(assert (= (and b!5857023 res!2465090) b!5857026))

(assert (= (and b!5857020 c!1038719) b!5857024))

(assert (= (and b!5857020 (not c!1038719)) b!5857027))

(assert (= (and b!5857024 res!2465091) b!5857019))

(assert (= (and b!5857027 (not res!2465092)) b!5857021))

(assert (= (and b!5857021 res!2465088) b!5857025))

(assert (= (or b!5857019 b!5857025) bm!458918))

(assert (= (or b!5857024 b!5857021) bm!458919))

(assert (= (or b!5857026 bm!458918) bm!458917))

(declare-fun m!6775114 () Bool)

(assert (=> bm!458917 m!6775114))

(declare-fun m!6775116 () Bool)

(assert (=> b!5857023 m!6775116))

(declare-fun m!6775118 () Bool)

(assert (=> bm!458919 m!6775118))

(assert (=> d!1839095 d!1839393))

(assert (=> d!1839095 d!1839147))

(assert (=> d!1839095 d!1839149))

(declare-fun d!1839395 () Bool)

(assert (=> d!1839395 (= (nullable!5923 (regTwo!32359 r!7292)) (nullableFct!1910 (regTwo!32359 r!7292)))))

(declare-fun bs!1379990 () Bool)

(assert (= bs!1379990 d!1839395))

(declare-fun m!6775120 () Bool)

(assert (=> bs!1379990 m!6775120))

(assert (=> b!5856261 d!1839395))

(declare-fun d!1839397 () Bool)

(assert (=> d!1839397 (= (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (nullableFct!1910 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(declare-fun bs!1379991 () Bool)

(assert (= bs!1379991 d!1839397))

(declare-fun m!6775122 () Bool)

(assert (=> bs!1379991 m!6775122))

(assert (=> b!5856135 d!1839397))

(declare-fun b!5857028 () Bool)

(declare-fun e!3591403 () (InoxSet Context!10614))

(declare-fun call!458927 () (InoxSet Context!10614))

(assert (=> b!5857028 (= e!3591403 call!458927)))

(declare-fun b!5857029 () Bool)

(assert (=> b!5857029 (= e!3591403 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857030 () Bool)

(declare-fun e!3591400 () (InoxSet Context!10614))

(assert (=> b!5857030 (= e!3591400 (store ((as const (Array Context!10614 Bool)) false) (ite c!1038470 lt!2304898 (Context!10615 call!458756)) true))))

(declare-fun b!5857031 () Bool)

(declare-fun e!3591399 () (InoxSet Context!10614))

(assert (=> b!5857031 (= e!3591400 e!3591399)))

(declare-fun c!1038723 () Bool)

(assert (=> b!5857031 (= c!1038723 ((_ is Union!15923) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))))))

(declare-fun c!1038720 () Bool)

(declare-fun c!1038724 () Bool)

(declare-fun bm!458921 () Bool)

(declare-fun call!458930 () List!64068)

(assert (=> bm!458921 (= call!458930 ($colon$colon!1828 (exprs!5807 (ite c!1038470 lt!2304898 (Context!10615 call!458756))) (ite (or c!1038720 c!1038724) (regTwo!32358 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)))))))

(declare-fun b!5857032 () Bool)

(declare-fun e!3591398 () (InoxSet Context!10614))

(declare-fun call!458925 () (InoxSet Context!10614))

(declare-fun call!458926 () (InoxSet Context!10614))

(assert (=> b!5857032 (= e!3591398 ((_ map or) call!458925 call!458926))))

(declare-fun bm!458922 () Bool)

(assert (=> bm!458922 (= call!458925 (derivationStepZipperDown!1189 (ite c!1038723 (regTwo!32359 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (regOne!32358 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)))) (ite c!1038723 (ite c!1038470 lt!2304898 (Context!10615 call!458756)) (Context!10615 call!458930)) (h!70393 s!2326)))))

(declare-fun bm!458923 () Bool)

(assert (=> bm!458923 (= call!458927 call!458926)))

(declare-fun c!1038721 () Bool)

(declare-fun d!1839399 () Bool)

(assert (=> d!1839399 (= c!1038721 (and ((_ is ElementMatch!15923) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (= (c!1038343 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (h!70393 s!2326))))))

(assert (=> d!1839399 (= (derivationStepZipperDown!1189 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)) (ite c!1038470 lt!2304898 (Context!10615 call!458756)) (h!70393 s!2326)) e!3591400)))

(declare-fun bm!458920 () Bool)

(declare-fun call!458928 () List!64068)

(assert (=> bm!458920 (= call!458928 call!458930)))

(declare-fun bm!458924 () Bool)

(declare-fun call!458929 () (InoxSet Context!10614))

(assert (=> bm!458924 (= call!458926 call!458929)))

(declare-fun b!5857033 () Bool)

(declare-fun e!3591402 () (InoxSet Context!10614))

(assert (=> b!5857033 (= e!3591402 call!458927)))

(declare-fun b!5857034 () Bool)

(declare-fun e!3591401 () Bool)

(assert (=> b!5857034 (= e!3591401 (nullable!5923 (regOne!32358 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)))))))

(declare-fun b!5857035 () Bool)

(assert (=> b!5857035 (= c!1038720 e!3591401)))

(declare-fun res!2465093 () Bool)

(assert (=> b!5857035 (=> (not res!2465093) (not e!3591401))))

(assert (=> b!5857035 (= res!2465093 ((_ is Concat!24768) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))))))

(assert (=> b!5857035 (= e!3591399 e!3591398)))

(declare-fun b!5857036 () Bool)

(assert (=> b!5857036 (= e!3591398 e!3591402)))

(assert (=> b!5857036 (= c!1038724 ((_ is Concat!24768) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))))))

(declare-fun bm!458925 () Bool)

(assert (=> bm!458925 (= call!458929 (derivationStepZipperDown!1189 (ite c!1038723 (regOne!32359 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (ite c!1038720 (regTwo!32358 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (ite c!1038724 (regOne!32358 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))) (reg!16252 (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292)))))) (ite (or c!1038723 c!1038720) (ite c!1038470 lt!2304898 (Context!10615 call!458756)) (Context!10615 call!458928)) (h!70393 s!2326)))))

(declare-fun b!5857037 () Bool)

(declare-fun c!1038722 () Bool)

(assert (=> b!5857037 (= c!1038722 ((_ is Star!15923) (ite c!1038470 (regTwo!32359 r!7292) (regOne!32358 r!7292))))))

(assert (=> b!5857037 (= e!3591402 e!3591403)))

(declare-fun b!5857038 () Bool)

(assert (=> b!5857038 (= e!3591399 ((_ map or) call!458929 call!458925))))

(assert (= (and d!1839399 c!1038721) b!5857030))

(assert (= (and d!1839399 (not c!1038721)) b!5857031))

(assert (= (and b!5857031 c!1038723) b!5857038))

(assert (= (and b!5857031 (not c!1038723)) b!5857035))

(assert (= (and b!5857035 res!2465093) b!5857034))

(assert (= (and b!5857035 c!1038720) b!5857032))

(assert (= (and b!5857035 (not c!1038720)) b!5857036))

(assert (= (and b!5857036 c!1038724) b!5857033))

(assert (= (and b!5857036 (not c!1038724)) b!5857037))

(assert (= (and b!5857037 c!1038722) b!5857028))

(assert (= (and b!5857037 (not c!1038722)) b!5857029))

(assert (= (or b!5857033 b!5857028) bm!458920))

(assert (= (or b!5857033 b!5857028) bm!458923))

(assert (= (or b!5857032 bm!458920) bm!458921))

(assert (= (or b!5857032 bm!458923) bm!458924))

(assert (= (or b!5857038 b!5857032) bm!458922))

(assert (= (or b!5857038 bm!458924) bm!458925))

(declare-fun m!6775124 () Bool)

(assert (=> bm!458921 m!6775124))

(declare-fun m!6775126 () Bool)

(assert (=> b!5857034 m!6775126))

(declare-fun m!6775128 () Bool)

(assert (=> bm!458925 m!6775128))

(declare-fun m!6775130 () Bool)

(assert (=> bm!458922 m!6775130))

(declare-fun m!6775132 () Bool)

(assert (=> b!5857030 m!6775132))

(assert (=> bm!458748 d!1839399))

(declare-fun d!1839401 () Bool)

(assert (=> d!1839401 (= (isConcat!881 lt!2304972) ((_ is Concat!24768) lt!2304972))))

(assert (=> b!5856421 d!1839401))

(assert (=> b!5856307 d!1839389))

(assert (=> b!5856307 d!1839391))

(assert (=> b!5856370 d!1839153))

(declare-fun bs!1379992 () Bool)

(declare-fun d!1839403 () Bool)

(assert (= bs!1379992 (and d!1839403 d!1839099)))

(declare-fun lambda!320248 () Int)

(assert (=> bs!1379992 (= lambda!320248 lambda!320200)))

(declare-fun bs!1379993 () Bool)

(assert (= bs!1379993 (and d!1839403 d!1839149)))

(assert (=> bs!1379993 (= lambda!320248 lambda!320221)))

(declare-fun bs!1379994 () Bool)

(assert (= bs!1379994 (and d!1839403 d!1839147)))

(assert (=> bs!1379994 (= lambda!320248 lambda!320218)))

(declare-fun bs!1379995 () Bool)

(assert (= bs!1379995 (and d!1839403 d!1839153)))

(assert (=> bs!1379995 (= lambda!320248 lambda!320224)))

(declare-fun bs!1379996 () Bool)

(assert (= bs!1379996 (and d!1839403 d!1839143)))

(assert (=> bs!1379996 (= lambda!320248 lambda!320215)))

(declare-fun bs!1379997 () Bool)

(assert (= bs!1379997 (and d!1839403 d!1839123)))

(assert (=> bs!1379997 (= lambda!320248 lambda!320209)))

(declare-fun lt!2304984 () List!64068)

(assert (=> d!1839403 (forall!15010 lt!2304984 lambda!320248)))

(declare-fun e!3591404 () List!64068)

(assert (=> d!1839403 (= lt!2304984 e!3591404)))

(declare-fun c!1038725 () Bool)

(assert (=> d!1839403 (= c!1038725 ((_ is Cons!63946) (t!377437 zl!343)))))

(assert (=> d!1839403 (= (unfocusZipperList!1344 (t!377437 zl!343)) lt!2304984)))

(declare-fun b!5857039 () Bool)

(assert (=> b!5857039 (= e!3591404 (Cons!63944 (generalisedConcat!1520 (exprs!5807 (h!70394 (t!377437 zl!343)))) (unfocusZipperList!1344 (t!377437 (t!377437 zl!343)))))))

(declare-fun b!5857040 () Bool)

(assert (=> b!5857040 (= e!3591404 Nil!63944)))

(assert (= (and d!1839403 c!1038725) b!5857039))

(assert (= (and d!1839403 (not c!1038725)) b!5857040))

(declare-fun m!6775134 () Bool)

(assert (=> d!1839403 m!6775134))

(declare-fun m!6775136 () Bool)

(assert (=> b!5857039 m!6775136))

(declare-fun m!6775138 () Bool)

(assert (=> b!5857039 m!6775138))

(assert (=> b!5856370 d!1839403))

(declare-fun d!1839405 () Bool)

(declare-fun c!1038726 () Bool)

(assert (=> d!1839405 (= c!1038726 (isEmpty!35805 (tail!11485 (t!377436 s!2326))))))

(declare-fun e!3591405 () Bool)

(assert (=> d!1839405 (= (matchZipper!1989 (derivationStepZipper!1922 lt!2304905 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))) e!3591405)))

(declare-fun b!5857041 () Bool)

(assert (=> b!5857041 (= e!3591405 (nullableZipper!1762 (derivationStepZipper!1922 lt!2304905 (head!12400 (t!377436 s!2326)))))))

(declare-fun b!5857042 () Bool)

(assert (=> b!5857042 (= e!3591405 (matchZipper!1989 (derivationStepZipper!1922 (derivationStepZipper!1922 lt!2304905 (head!12400 (t!377436 s!2326))) (head!12400 (tail!11485 (t!377436 s!2326)))) (tail!11485 (tail!11485 (t!377436 s!2326)))))))

(assert (= (and d!1839405 c!1038726) b!5857041))

(assert (= (and d!1839405 (not c!1038726)) b!5857042))

(assert (=> d!1839405 m!6774496))

(declare-fun m!6775140 () Bool)

(assert (=> d!1839405 m!6775140))

(assert (=> b!5857041 m!6774586))

(declare-fun m!6775142 () Bool)

(assert (=> b!5857041 m!6775142))

(assert (=> b!5857042 m!6774496))

(declare-fun m!6775144 () Bool)

(assert (=> b!5857042 m!6775144))

(assert (=> b!5857042 m!6774586))

(assert (=> b!5857042 m!6775144))

(declare-fun m!6775146 () Bool)

(assert (=> b!5857042 m!6775146))

(assert (=> b!5857042 m!6774496))

(declare-fun m!6775148 () Bool)

(assert (=> b!5857042 m!6775148))

(assert (=> b!5857042 m!6775146))

(assert (=> b!5857042 m!6775148))

(declare-fun m!6775150 () Bool)

(assert (=> b!5857042 m!6775150))

(assert (=> b!5856322 d!1839405))

(declare-fun bs!1379998 () Bool)

(declare-fun d!1839407 () Bool)

(assert (= bs!1379998 (and d!1839407 b!5855690)))

(declare-fun lambda!320249 () Int)

(assert (=> bs!1379998 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320249 lambda!320170))))

(declare-fun bs!1379999 () Bool)

(assert (= bs!1379999 (and d!1839407 d!1839135)))

(assert (=> bs!1379999 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320249 lambda!320214))))

(assert (=> d!1839407 true))

(assert (=> d!1839407 (= (derivationStepZipper!1922 lt!2304905 (head!12400 (t!377436 s!2326))) (flatMap!1454 lt!2304905 lambda!320249))))

(declare-fun bs!1380000 () Bool)

(assert (= bs!1380000 d!1839407))

(declare-fun m!6775152 () Bool)

(assert (=> bs!1380000 m!6775152))

(assert (=> b!5856322 d!1839407))

(declare-fun d!1839409 () Bool)

(assert (=> d!1839409 (= (head!12400 (t!377436 s!2326)) (h!70393 (t!377436 s!2326)))))

(assert (=> b!5856322 d!1839409))

(declare-fun d!1839411 () Bool)

(assert (=> d!1839411 (= (tail!11485 (t!377436 s!2326)) (t!377436 (t!377436 s!2326)))))

(assert (=> b!5856322 d!1839411))

(declare-fun d!1839413 () Bool)

(declare-fun res!2465098 () Bool)

(declare-fun e!3591410 () Bool)

(assert (=> d!1839413 (=> res!2465098 e!3591410)))

(assert (=> d!1839413 (= res!2465098 ((_ is Nil!63944) lt!2304969))))

(assert (=> d!1839413 (= (forall!15010 lt!2304969 lambda!320221) e!3591410)))

(declare-fun b!5857047 () Bool)

(declare-fun e!3591411 () Bool)

(assert (=> b!5857047 (= e!3591410 e!3591411)))

(declare-fun res!2465099 () Bool)

(assert (=> b!5857047 (=> (not res!2465099) (not e!3591411))))

(declare-fun dynLambda!25002 (Int Regex!15923) Bool)

(assert (=> b!5857047 (= res!2465099 (dynLambda!25002 lambda!320221 (h!70392 lt!2304969)))))

(declare-fun b!5857048 () Bool)

(assert (=> b!5857048 (= e!3591411 (forall!15010 (t!377435 lt!2304969) lambda!320221))))

(assert (= (and d!1839413 (not res!2465098)) b!5857047))

(assert (= (and b!5857047 res!2465099) b!5857048))

(declare-fun b_lambda!220449 () Bool)

(assert (=> (not b_lambda!220449) (not b!5857047)))

(declare-fun m!6775154 () Bool)

(assert (=> b!5857047 m!6775154))

(declare-fun m!6775156 () Bool)

(assert (=> b!5857048 m!6775156))

(assert (=> d!1839149 d!1839413))

(assert (=> bm!458783 d!1839379))

(declare-fun d!1839415 () Bool)

(declare-fun res!2465100 () Bool)

(declare-fun e!3591412 () Bool)

(assert (=> d!1839415 (=> res!2465100 e!3591412)))

(assert (=> d!1839415 (= res!2465100 ((_ is Nil!63944) (exprs!5807 (h!70394 zl!343))))))

(assert (=> d!1839415 (= (forall!15010 (exprs!5807 (h!70394 zl!343)) lambda!320209) e!3591412)))

(declare-fun b!5857049 () Bool)

(declare-fun e!3591413 () Bool)

(assert (=> b!5857049 (= e!3591412 e!3591413)))

(declare-fun res!2465101 () Bool)

(assert (=> b!5857049 (=> (not res!2465101) (not e!3591413))))

(assert (=> b!5857049 (= res!2465101 (dynLambda!25002 lambda!320209 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5857050 () Bool)

(assert (=> b!5857050 (= e!3591413 (forall!15010 (t!377435 (exprs!5807 (h!70394 zl!343))) lambda!320209))))

(assert (= (and d!1839415 (not res!2465100)) b!5857049))

(assert (= (and b!5857049 res!2465101) b!5857050))

(declare-fun b_lambda!220451 () Bool)

(assert (=> (not b_lambda!220451) (not b!5857049)))

(declare-fun m!6775158 () Bool)

(assert (=> b!5857049 m!6775158))

(declare-fun m!6775160 () Bool)

(assert (=> b!5857050 m!6775160))

(assert (=> d!1839123 d!1839415))

(declare-fun d!1839417 () Bool)

(declare-fun choose!44411 (Int) Bool)

(assert (=> d!1839417 (= (Exists!2995 (ite c!1038518 lambda!320207 lambda!320208)) (choose!44411 (ite c!1038518 lambda!320207 lambda!320208)))))

(declare-fun bs!1380001 () Bool)

(assert (= bs!1380001 d!1839417))

(declare-fun m!6775162 () Bool)

(assert (=> bs!1380001 m!6775162))

(assert (=> bm!458779 d!1839417))

(assert (=> b!5856325 d!1839097))

(assert (=> bm!458777 d!1839379))

(declare-fun d!1839419 () Bool)

(assert (=> d!1839419 (= (isEmpty!35805 (t!377436 s!2326)) ((_ is Nil!63945) (t!377436 s!2326)))))

(assert (=> d!1839131 d!1839419))

(declare-fun d!1839421 () Bool)

(assert (=> d!1839421 (= (head!12400 s!2326) (h!70393 s!2326))))

(assert (=> b!5856284 d!1839421))

(declare-fun d!1839423 () Bool)

(assert (=> d!1839423 (= (isEmptyExpr!1358 lt!2304972) ((_ is EmptyExpr!15923) lt!2304972))))

(assert (=> b!5856420 d!1839423))

(assert (=> d!1839093 d!1839419))

(declare-fun b!5857051 () Bool)

(declare-fun e!3591419 () (InoxSet Context!10614))

(declare-fun call!458933 () (InoxSet Context!10614))

(assert (=> b!5857051 (= e!3591419 call!458933)))

(declare-fun b!5857052 () Bool)

(assert (=> b!5857052 (= e!3591419 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857053 () Bool)

(declare-fun e!3591416 () (InoxSet Context!10614))

(assert (=> b!5857053 (= e!3591416 (store ((as const (Array Context!10614 Bool)) false) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) true))))

(declare-fun b!5857054 () Bool)

(declare-fun e!3591415 () (InoxSet Context!10614))

(assert (=> b!5857054 (= e!3591416 e!3591415)))

(declare-fun c!1038730 () Bool)

(assert (=> b!5857054 (= c!1038730 ((_ is Union!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(declare-fun call!458936 () List!64068)

(declare-fun c!1038727 () Bool)

(declare-fun bm!458927 () Bool)

(declare-fun c!1038731 () Bool)

(assert (=> bm!458927 (= call!458936 ($colon$colon!1828 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))) (ite (or c!1038727 c!1038731) (regTwo!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))))

(declare-fun b!5857055 () Bool)

(declare-fun e!3591414 () (InoxSet Context!10614))

(declare-fun call!458931 () (InoxSet Context!10614))

(declare-fun call!458932 () (InoxSet Context!10614))

(assert (=> b!5857055 (= e!3591414 ((_ map or) call!458931 call!458932))))

(declare-fun bm!458928 () Bool)

(assert (=> bm!458928 (= call!458931 (derivationStepZipperDown!1189 (ite c!1038730 (regTwo!32359 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))) (ite c!1038730 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (Context!10615 call!458936)) (h!70393 s!2326)))))

(declare-fun bm!458929 () Bool)

(assert (=> bm!458929 (= call!458933 call!458932)))

(declare-fun d!1839425 () Bool)

(declare-fun c!1038728 () Bool)

(assert (=> d!1839425 (= c!1038728 (and ((_ is ElementMatch!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (= (c!1038343 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70393 s!2326))))))

(assert (=> d!1839425 (= (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (h!70393 s!2326)) e!3591416)))

(declare-fun bm!458926 () Bool)

(declare-fun call!458934 () List!64068)

(assert (=> bm!458926 (= call!458934 call!458936)))

(declare-fun bm!458930 () Bool)

(declare-fun call!458935 () (InoxSet Context!10614))

(assert (=> bm!458930 (= call!458932 call!458935)))

(declare-fun b!5857056 () Bool)

(declare-fun e!3591418 () (InoxSet Context!10614))

(assert (=> b!5857056 (= e!3591418 call!458933)))

(declare-fun b!5857057 () Bool)

(declare-fun e!3591417 () Bool)

(assert (=> b!5857057 (= e!3591417 (nullable!5923 (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))))

(declare-fun b!5857058 () Bool)

(assert (=> b!5857058 (= c!1038727 e!3591417)))

(declare-fun res!2465102 () Bool)

(assert (=> b!5857058 (=> (not res!2465102) (not e!3591417))))

(assert (=> b!5857058 (= res!2465102 ((_ is Concat!24768) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(assert (=> b!5857058 (= e!3591415 e!3591414)))

(declare-fun b!5857059 () Bool)

(assert (=> b!5857059 (= e!3591414 e!3591418)))

(assert (=> b!5857059 (= c!1038731 ((_ is Concat!24768) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(declare-fun bm!458931 () Bool)

(assert (=> bm!458931 (= call!458935 (derivationStepZipperDown!1189 (ite c!1038730 (regOne!32359 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (ite c!1038727 (regTwo!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (ite c!1038731 (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (reg!16252 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944)))))))) (ite (or c!1038730 c!1038727) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))) (Context!10615 call!458934)) (h!70393 s!2326)))))

(declare-fun b!5857060 () Bool)

(declare-fun c!1038729 () Bool)

(assert (=> b!5857060 (= c!1038729 ((_ is Star!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 r!7292 Nil!63944))))))))

(assert (=> b!5857060 (= e!3591418 e!3591419)))

(declare-fun b!5857061 () Bool)

(assert (=> b!5857061 (= e!3591415 ((_ map or) call!458935 call!458931))))

(assert (= (and d!1839425 c!1038728) b!5857053))

(assert (= (and d!1839425 (not c!1038728)) b!5857054))

(assert (= (and b!5857054 c!1038730) b!5857061))

(assert (= (and b!5857054 (not c!1038730)) b!5857058))

(assert (= (and b!5857058 res!2465102) b!5857057))

(assert (= (and b!5857058 c!1038727) b!5857055))

(assert (= (and b!5857058 (not c!1038727)) b!5857059))

(assert (= (and b!5857059 c!1038731) b!5857056))

(assert (= (and b!5857059 (not c!1038731)) b!5857060))

(assert (= (and b!5857060 c!1038729) b!5857051))

(assert (= (and b!5857060 (not c!1038729)) b!5857052))

(assert (= (or b!5857056 b!5857051) bm!458926))

(assert (= (or b!5857056 b!5857051) bm!458929))

(assert (= (or b!5857055 bm!458926) bm!458927))

(assert (= (or b!5857055 bm!458929) bm!458930))

(assert (= (or b!5857061 b!5857055) bm!458928))

(assert (= (or b!5857061 bm!458930) bm!458931))

(declare-fun m!6775164 () Bool)

(assert (=> bm!458927 m!6775164))

(declare-fun m!6775166 () Bool)

(assert (=> b!5857057 m!6775166))

(declare-fun m!6775168 () Bool)

(assert (=> bm!458931 m!6775168))

(declare-fun m!6775170 () Bool)

(assert (=> bm!458928 m!6775170))

(declare-fun m!6775172 () Bool)

(assert (=> b!5857053 m!6775172))

(assert (=> bm!458754 d!1839425))

(assert (=> b!5856264 d!1839421))

(declare-fun b!5857062 () Bool)

(declare-fun e!3591425 () (InoxSet Context!10614))

(declare-fun call!458939 () (InoxSet Context!10614))

(assert (=> b!5857062 (= e!3591425 call!458939)))

(declare-fun b!5857063 () Bool)

(assert (=> b!5857063 (= e!3591425 ((as const (Array Context!10614 Bool)) false))))

(declare-fun e!3591422 () (InoxSet Context!10614))

(declare-fun b!5857064 () Bool)

(assert (=> b!5857064 (= e!3591422 (store ((as const (Array Context!10614 Bool)) false) (ite c!1038495 lt!2304898 (Context!10615 call!458773)) true))))

(declare-fun b!5857065 () Bool)

(declare-fun e!3591421 () (InoxSet Context!10614))

(assert (=> b!5857065 (= e!3591422 e!3591421)))

(declare-fun c!1038735 () Bool)

(assert (=> b!5857065 (= c!1038735 ((_ is Union!15923) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))))))

(declare-fun call!458942 () List!64068)

(declare-fun c!1038736 () Bool)

(declare-fun c!1038732 () Bool)

(declare-fun bm!458933 () Bool)

(assert (=> bm!458933 (= call!458942 ($colon$colon!1828 (exprs!5807 (ite c!1038495 lt!2304898 (Context!10615 call!458773))) (ite (or c!1038732 c!1038736) (regTwo!32358 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))))))))

(declare-fun b!5857066 () Bool)

(declare-fun e!3591420 () (InoxSet Context!10614))

(declare-fun call!458937 () (InoxSet Context!10614))

(declare-fun call!458938 () (InoxSet Context!10614))

(assert (=> b!5857066 (= e!3591420 ((_ map or) call!458937 call!458938))))

(declare-fun bm!458934 () Bool)

(assert (=> bm!458934 (= call!458937 (derivationStepZipperDown!1189 (ite c!1038735 (regTwo!32359 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (regOne!32358 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))))) (ite c!1038735 (ite c!1038495 lt!2304898 (Context!10615 call!458773)) (Context!10615 call!458942)) (h!70393 s!2326)))))

(declare-fun bm!458935 () Bool)

(assert (=> bm!458935 (= call!458939 call!458938)))

(declare-fun c!1038733 () Bool)

(declare-fun d!1839427 () Bool)

(assert (=> d!1839427 (= c!1038733 (and ((_ is ElementMatch!15923) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (= (c!1038343 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (h!70393 s!2326))))))

(assert (=> d!1839427 (= (derivationStepZipperDown!1189 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))) (ite c!1038495 lt!2304898 (Context!10615 call!458773)) (h!70393 s!2326)) e!3591422)))

(declare-fun bm!458932 () Bool)

(declare-fun call!458940 () List!64068)

(assert (=> bm!458932 (= call!458940 call!458942)))

(declare-fun bm!458936 () Bool)

(declare-fun call!458941 () (InoxSet Context!10614))

(assert (=> bm!458936 (= call!458938 call!458941)))

(declare-fun b!5857067 () Bool)

(declare-fun e!3591424 () (InoxSet Context!10614))

(assert (=> b!5857067 (= e!3591424 call!458939)))

(declare-fun b!5857068 () Bool)

(declare-fun e!3591423 () Bool)

(assert (=> b!5857068 (= e!3591423 (nullable!5923 (regOne!32358 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))))))))

(declare-fun b!5857069 () Bool)

(assert (=> b!5857069 (= c!1038732 e!3591423)))

(declare-fun res!2465103 () Bool)

(assert (=> b!5857069 (=> (not res!2465103) (not e!3591423))))

(assert (=> b!5857069 (= res!2465103 ((_ is Concat!24768) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))))))

(assert (=> b!5857069 (= e!3591421 e!3591420)))

(declare-fun b!5857070 () Bool)

(assert (=> b!5857070 (= e!3591420 e!3591424)))

(assert (=> b!5857070 (= c!1038736 ((_ is Concat!24768) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))))))

(declare-fun bm!458937 () Bool)

(assert (=> bm!458937 (= call!458941 (derivationStepZipperDown!1189 (ite c!1038735 (regOne!32359 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (ite c!1038732 (regTwo!32358 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (ite c!1038736 (regOne!32358 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))) (reg!16252 (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))))))) (ite (or c!1038735 c!1038732) (ite c!1038495 lt!2304898 (Context!10615 call!458773)) (Context!10615 call!458940)) (h!70393 s!2326)))))

(declare-fun b!5857071 () Bool)

(declare-fun c!1038734 () Bool)

(assert (=> b!5857071 (= c!1038734 ((_ is Star!15923) (ite c!1038495 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))))))

(assert (=> b!5857071 (= e!3591424 e!3591425)))

(declare-fun b!5857072 () Bool)

(assert (=> b!5857072 (= e!3591421 ((_ map or) call!458941 call!458937))))

(assert (= (and d!1839427 c!1038733) b!5857064))

(assert (= (and d!1839427 (not c!1038733)) b!5857065))

(assert (= (and b!5857065 c!1038735) b!5857072))

(assert (= (and b!5857065 (not c!1038735)) b!5857069))

(assert (= (and b!5857069 res!2465103) b!5857068))

(assert (= (and b!5857069 c!1038732) b!5857066))

(assert (= (and b!5857069 (not c!1038732)) b!5857070))

(assert (= (and b!5857070 c!1038736) b!5857067))

(assert (= (and b!5857070 (not c!1038736)) b!5857071))

(assert (= (and b!5857071 c!1038734) b!5857062))

(assert (= (and b!5857071 (not c!1038734)) b!5857063))

(assert (= (or b!5857067 b!5857062) bm!458932))

(assert (= (or b!5857067 b!5857062) bm!458935))

(assert (= (or b!5857066 bm!458932) bm!458933))

(assert (= (or b!5857066 bm!458935) bm!458936))

(assert (= (or b!5857072 b!5857066) bm!458934))

(assert (= (or b!5857072 bm!458936) bm!458937))

(declare-fun m!6775174 () Bool)

(assert (=> bm!458933 m!6775174))

(declare-fun m!6775176 () Bool)

(assert (=> b!5857068 m!6775176))

(declare-fun m!6775178 () Bool)

(assert (=> bm!458937 m!6775178))

(declare-fun m!6775180 () Bool)

(assert (=> bm!458934 m!6775180))

(declare-fun m!6775182 () Bool)

(assert (=> b!5857064 m!6775182))

(assert (=> bm!458765 d!1839427))

(assert (=> b!5856310 d!1839389))

(assert (=> b!5856310 d!1839391))

(assert (=> bm!458781 d!1839379))

(declare-fun bs!1380002 () Bool)

(declare-fun d!1839429 () Bool)

(assert (= bs!1380002 (and d!1839429 d!1839099)))

(declare-fun lambda!320250 () Int)

(assert (=> bs!1380002 (= lambda!320250 lambda!320200)))

(declare-fun bs!1380003 () Bool)

(assert (= bs!1380003 (and d!1839429 d!1839149)))

(assert (=> bs!1380003 (= lambda!320250 lambda!320221)))

(declare-fun bs!1380004 () Bool)

(assert (= bs!1380004 (and d!1839429 d!1839147)))

(assert (=> bs!1380004 (= lambda!320250 lambda!320218)))

(declare-fun bs!1380005 () Bool)

(assert (= bs!1380005 (and d!1839429 d!1839403)))

(assert (=> bs!1380005 (= lambda!320250 lambda!320248)))

(declare-fun bs!1380006 () Bool)

(assert (= bs!1380006 (and d!1839429 d!1839153)))

(assert (=> bs!1380006 (= lambda!320250 lambda!320224)))

(declare-fun bs!1380007 () Bool)

(assert (= bs!1380007 (and d!1839429 d!1839143)))

(assert (=> bs!1380007 (= lambda!320250 lambda!320215)))

(declare-fun bs!1380008 () Bool)

(assert (= bs!1380008 (and d!1839429 d!1839123)))

(assert (=> bs!1380008 (= lambda!320250 lambda!320209)))

(assert (=> d!1839429 (= (inv!83054 (h!70394 (t!377437 zl!343))) (forall!15010 (exprs!5807 (h!70394 (t!377437 zl!343))) lambda!320250))))

(declare-fun bs!1380009 () Bool)

(assert (= bs!1380009 d!1839429))

(declare-fun m!6775184 () Bool)

(assert (=> bs!1380009 m!6775184))

(assert (=> b!5856475 d!1839429))

(declare-fun d!1839431 () Bool)

(assert (=> d!1839431 (= (nullable!5923 (h!70392 (exprs!5807 lt!2304891))) (nullableFct!1910 (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun bs!1380010 () Bool)

(assert (= bs!1380010 d!1839431))

(declare-fun m!6775186 () Bool)

(assert (=> bs!1380010 m!6775186))

(assert (=> b!5856155 d!1839431))

(assert (=> bm!458773 d!1839379))

(declare-fun d!1839433 () Bool)

(assert (=> d!1839433 (= (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (nullableFct!1910 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(declare-fun bs!1380011 () Bool)

(assert (= bs!1380011 d!1839433))

(declare-fun m!6775188 () Bool)

(assert (=> bs!1380011 m!6775188))

(assert (=> b!5856150 d!1839433))

(declare-fun d!1839435 () Bool)

(declare-fun c!1038737 () Bool)

(assert (=> d!1839435 (= c!1038737 (isEmpty!35805 (tail!11485 (t!377436 s!2326))))))

(declare-fun e!3591426 () Bool)

(assert (=> d!1839435 (= (matchZipper!1989 (derivationStepZipper!1922 lt!2304900 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))) e!3591426)))

(declare-fun b!5857073 () Bool)

(assert (=> b!5857073 (= e!3591426 (nullableZipper!1762 (derivationStepZipper!1922 lt!2304900 (head!12400 (t!377436 s!2326)))))))

(declare-fun b!5857074 () Bool)

(assert (=> b!5857074 (= e!3591426 (matchZipper!1989 (derivationStepZipper!1922 (derivationStepZipper!1922 lt!2304900 (head!12400 (t!377436 s!2326))) (head!12400 (tail!11485 (t!377436 s!2326)))) (tail!11485 (tail!11485 (t!377436 s!2326)))))))

(assert (= (and d!1839435 c!1038737) b!5857073))

(assert (= (and d!1839435 (not c!1038737)) b!5857074))

(assert (=> d!1839435 m!6774496))

(assert (=> d!1839435 m!6775140))

(assert (=> b!5857073 m!6774494))

(declare-fun m!6775190 () Bool)

(assert (=> b!5857073 m!6775190))

(assert (=> b!5857074 m!6774496))

(assert (=> b!5857074 m!6775144))

(assert (=> b!5857074 m!6774494))

(assert (=> b!5857074 m!6775144))

(declare-fun m!6775192 () Bool)

(assert (=> b!5857074 m!6775192))

(assert (=> b!5857074 m!6774496))

(assert (=> b!5857074 m!6775148))

(assert (=> b!5857074 m!6775192))

(assert (=> b!5857074 m!6775148))

(declare-fun m!6775194 () Bool)

(assert (=> b!5857074 m!6775194))

(assert (=> b!5856147 d!1839435))

(declare-fun bs!1380012 () Bool)

(declare-fun d!1839437 () Bool)

(assert (= bs!1380012 (and d!1839437 b!5855690)))

(declare-fun lambda!320251 () Int)

(assert (=> bs!1380012 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320251 lambda!320170))))

(declare-fun bs!1380013 () Bool)

(assert (= bs!1380013 (and d!1839437 d!1839135)))

(assert (=> bs!1380013 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320251 lambda!320214))))

(declare-fun bs!1380014 () Bool)

(assert (= bs!1380014 (and d!1839437 d!1839407)))

(assert (=> bs!1380014 (= lambda!320251 lambda!320249)))

(assert (=> d!1839437 true))

(assert (=> d!1839437 (= (derivationStepZipper!1922 lt!2304900 (head!12400 (t!377436 s!2326))) (flatMap!1454 lt!2304900 lambda!320251))))

(declare-fun bs!1380015 () Bool)

(assert (= bs!1380015 d!1839437))

(declare-fun m!6775196 () Bool)

(assert (=> bs!1380015 m!6775196))

(assert (=> b!5856147 d!1839437))

(assert (=> b!5856147 d!1839409))

(assert (=> b!5856147 d!1839411))

(declare-fun bs!1380016 () Bool)

(declare-fun b!5857075 () Bool)

(assert (= bs!1380016 (and b!5857075 b!5856271)))

(declare-fun lambda!320252 () Int)

(assert (=> bs!1380016 (= (and (= (reg!16252 (regTwo!32359 (regOne!32359 r!7292))) (reg!16252 (regOne!32359 r!7292))) (= (regTwo!32359 (regOne!32359 r!7292)) (regOne!32359 r!7292))) (= lambda!320252 lambda!320207))))

(declare-fun bs!1380017 () Bool)

(assert (= bs!1380017 (and b!5857075 b!5856281)))

(assert (=> bs!1380017 (not (= lambda!320252 lambda!320208))))

(declare-fun bs!1380018 () Bool)

(assert (= bs!1380018 (and b!5857075 b!5856296)))

(assert (=> bs!1380018 (= (and (= (reg!16252 (regTwo!32359 (regOne!32359 r!7292))) (reg!16252 r!7292)) (= (regTwo!32359 (regOne!32359 r!7292)) r!7292)) (= lambda!320252 lambda!320210))))

(declare-fun bs!1380019 () Bool)

(assert (= bs!1380019 (and b!5857075 b!5856224)))

(assert (=> bs!1380019 (not (= lambda!320252 lambda!320206))))

(declare-fun bs!1380020 () Bool)

(assert (= bs!1380020 (and b!5857075 b!5856214)))

(assert (=> bs!1380020 (= (and (= (reg!16252 (regTwo!32359 (regOne!32359 r!7292))) (reg!16252 (regTwo!32359 r!7292))) (= (regTwo!32359 (regOne!32359 r!7292)) (regTwo!32359 r!7292))) (= lambda!320252 lambda!320205))))

(declare-fun bs!1380021 () Bool)

(assert (= bs!1380021 (and b!5857075 b!5856306)))

(assert (=> bs!1380021 (not (= lambda!320252 lambda!320211))))

(assert (=> b!5857075 true))

(assert (=> b!5857075 true))

(declare-fun bs!1380022 () Bool)

(declare-fun b!5857085 () Bool)

(assert (= bs!1380022 (and b!5857085 b!5856271)))

(declare-fun lambda!320253 () Int)

(assert (=> bs!1380022 (not (= lambda!320253 lambda!320207))))

(declare-fun bs!1380023 () Bool)

(assert (= bs!1380023 (and b!5857085 b!5856281)))

(assert (=> bs!1380023 (= (and (= (regOne!32358 (regTwo!32359 (regOne!32359 r!7292))) (regOne!32358 (regOne!32359 r!7292))) (= (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))) (regTwo!32358 (regOne!32359 r!7292)))) (= lambda!320253 lambda!320208))))

(declare-fun bs!1380024 () Bool)

(assert (= bs!1380024 (and b!5857085 b!5856296)))

(assert (=> bs!1380024 (not (= lambda!320253 lambda!320210))))

(declare-fun bs!1380025 () Bool)

(assert (= bs!1380025 (and b!5857085 b!5856224)))

(assert (=> bs!1380025 (= (and (= (regOne!32358 (regTwo!32359 (regOne!32359 r!7292))) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320253 lambda!320206))))

(declare-fun bs!1380026 () Bool)

(assert (= bs!1380026 (and b!5857085 b!5857075)))

(assert (=> bs!1380026 (not (= lambda!320253 lambda!320252))))

(declare-fun bs!1380027 () Bool)

(assert (= bs!1380027 (and b!5857085 b!5856214)))

(assert (=> bs!1380027 (not (= lambda!320253 lambda!320205))))

(declare-fun bs!1380028 () Bool)

(assert (= bs!1380028 (and b!5857085 b!5856306)))

(assert (=> bs!1380028 (= (and (= (regOne!32358 (regTwo!32359 (regOne!32359 r!7292))) (regOne!32358 r!7292)) (= (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))) (regTwo!32358 r!7292))) (= lambda!320253 lambda!320211))))

(assert (=> b!5857085 true))

(assert (=> b!5857085 true))

(declare-fun e!3591431 () Bool)

(declare-fun call!458944 () Bool)

(assert (=> b!5857075 (= e!3591431 call!458944)))

(declare-fun b!5857076 () Bool)

(declare-fun e!3591429 () Bool)

(declare-fun call!458943 () Bool)

(assert (=> b!5857076 (= e!3591429 call!458943)))

(declare-fun b!5857077 () Bool)

(declare-fun c!1038741 () Bool)

(assert (=> b!5857077 (= c!1038741 ((_ is ElementMatch!15923) (regTwo!32359 (regOne!32359 r!7292))))))

(declare-fun e!3591430 () Bool)

(declare-fun e!3591427 () Bool)

(assert (=> b!5857077 (= e!3591430 e!3591427)))

(declare-fun b!5857078 () Bool)

(declare-fun e!3591432 () Bool)

(assert (=> b!5857078 (= e!3591432 (matchRSpec!3024 (regTwo!32359 (regTwo!32359 (regOne!32359 r!7292))) s!2326))))

(declare-fun b!5857080 () Bool)

(declare-fun c!1038739 () Bool)

(assert (=> b!5857080 (= c!1038739 ((_ is Union!15923) (regTwo!32359 (regOne!32359 r!7292))))))

(declare-fun e!3591428 () Bool)

(assert (=> b!5857080 (= e!3591427 e!3591428)))

(declare-fun b!5857081 () Bool)

(declare-fun res!2465106 () Bool)

(assert (=> b!5857081 (=> res!2465106 e!3591431)))

(assert (=> b!5857081 (= res!2465106 call!458943)))

(declare-fun e!3591433 () Bool)

(assert (=> b!5857081 (= e!3591433 e!3591431)))

(declare-fun b!5857082 () Bool)

(assert (=> b!5857082 (= e!3591428 e!3591432)))

(declare-fun res!2465104 () Bool)

(assert (=> b!5857082 (= res!2465104 (matchRSpec!3024 (regOne!32359 (regTwo!32359 (regOne!32359 r!7292))) s!2326))))

(assert (=> b!5857082 (=> res!2465104 e!3591432)))

(declare-fun b!5857083 () Bool)

(assert (=> b!5857083 (= e!3591429 e!3591430)))

(declare-fun res!2465105 () Bool)

(assert (=> b!5857083 (= res!2465105 (not ((_ is EmptyLang!15923) (regTwo!32359 (regOne!32359 r!7292)))))))

(assert (=> b!5857083 (=> (not res!2465105) (not e!3591430))))

(declare-fun bm!458938 () Bool)

(assert (=> bm!458938 (= call!458943 (isEmpty!35805 s!2326))))

(declare-fun b!5857084 () Bool)

(assert (=> b!5857084 (= e!3591428 e!3591433)))

(declare-fun c!1038738 () Bool)

(assert (=> b!5857084 (= c!1038738 ((_ is Star!15923) (regTwo!32359 (regOne!32359 r!7292))))))

(declare-fun d!1839439 () Bool)

(declare-fun c!1038740 () Bool)

(assert (=> d!1839439 (= c!1038740 ((_ is EmptyExpr!15923) (regTwo!32359 (regOne!32359 r!7292))))))

(assert (=> d!1839439 (= (matchRSpec!3024 (regTwo!32359 (regOne!32359 r!7292)) s!2326) e!3591429)))

(declare-fun b!5857079 () Bool)

(assert (=> b!5857079 (= e!3591427 (= s!2326 (Cons!63945 (c!1038343 (regTwo!32359 (regOne!32359 r!7292))) Nil!63945)))))

(assert (=> b!5857085 (= e!3591433 call!458944)))

(declare-fun bm!458939 () Bool)

(assert (=> bm!458939 (= call!458944 (Exists!2995 (ite c!1038738 lambda!320252 lambda!320253)))))

(assert (= (and d!1839439 c!1038740) b!5857076))

(assert (= (and d!1839439 (not c!1038740)) b!5857083))

(assert (= (and b!5857083 res!2465105) b!5857077))

(assert (= (and b!5857077 c!1038741) b!5857079))

(assert (= (and b!5857077 (not c!1038741)) b!5857080))

(assert (= (and b!5857080 c!1038739) b!5857082))

(assert (= (and b!5857080 (not c!1038739)) b!5857084))

(assert (= (and b!5857082 (not res!2465104)) b!5857078))

(assert (= (and b!5857084 c!1038738) b!5857081))

(assert (= (and b!5857084 (not c!1038738)) b!5857085))

(assert (= (and b!5857081 (not res!2465106)) b!5857075))

(assert (= (or b!5857075 b!5857085) bm!458939))

(assert (= (or b!5857076 b!5857081) bm!458938))

(declare-fun m!6775198 () Bool)

(assert (=> b!5857078 m!6775198))

(declare-fun m!6775200 () Bool)

(assert (=> b!5857082 m!6775200))

(assert (=> bm!458938 m!6774476))

(declare-fun m!6775202 () Bool)

(assert (=> bm!458939 m!6775202))

(assert (=> b!5856274 d!1839439))

(assert (=> b!5856260 d!1839389))

(assert (=> b!5856260 d!1839391))

(declare-fun d!1839441 () Bool)

(declare-fun c!1038742 () Bool)

(assert (=> d!1839441 (= c!1038742 (isEmpty!35805 (t!377436 s!2326)))))

(declare-fun e!3591434 () Bool)

(assert (=> d!1839441 (= (matchZipper!1989 ((_ map or) lt!2304905 lt!2304909) (t!377436 s!2326)) e!3591434)))

(declare-fun b!5857086 () Bool)

(assert (=> b!5857086 (= e!3591434 (nullableZipper!1762 ((_ map or) lt!2304905 lt!2304909)))))

(declare-fun b!5857087 () Bool)

(assert (=> b!5857087 (= e!3591434 (matchZipper!1989 (derivationStepZipper!1922 ((_ map or) lt!2304905 lt!2304909) (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))))))

(assert (= (and d!1839441 c!1038742) b!5857086))

(assert (= (and d!1839441 (not c!1038742)) b!5857087))

(assert (=> d!1839441 m!6774488))

(declare-fun m!6775204 () Bool)

(assert (=> b!5857086 m!6775204))

(assert (=> b!5857087 m!6774492))

(assert (=> b!5857087 m!6774492))

(declare-fun m!6775206 () Bool)

(assert (=> b!5857087 m!6775206))

(assert (=> b!5857087 m!6774496))

(assert (=> b!5857087 m!6775206))

(assert (=> b!5857087 m!6774496))

(declare-fun m!6775208 () Bool)

(assert (=> b!5857087 m!6775208))

(assert (=> d!1839133 d!1839441))

(assert (=> d!1839133 d!1839131))

(declare-fun e!3591437 () Bool)

(declare-fun d!1839443 () Bool)

(assert (=> d!1839443 (= (matchZipper!1989 ((_ map or) lt!2304905 lt!2304909) (t!377436 s!2326)) e!3591437)))

(declare-fun res!2465109 () Bool)

(assert (=> d!1839443 (=> res!2465109 e!3591437)))

(assert (=> d!1839443 (= res!2465109 (matchZipper!1989 lt!2304905 (t!377436 s!2326)))))

(assert (=> d!1839443 true))

(declare-fun _$48!1425 () Unit!157117)

(assert (=> d!1839443 (= (choose!44406 lt!2304905 lt!2304909 (t!377436 s!2326)) _$48!1425)))

(declare-fun b!5857090 () Bool)

(assert (=> b!5857090 (= e!3591437 (matchZipper!1989 lt!2304909 (t!377436 s!2326)))))

(assert (= (and d!1839443 (not res!2465109)) b!5857090))

(assert (=> d!1839443 m!6774590))

(assert (=> d!1839443 m!6774202))

(assert (=> b!5857090 m!6774246))

(assert (=> d!1839133 d!1839443))

(declare-fun d!1839445 () Bool)

(assert (=> d!1839445 (= (isEmpty!35806 (unfocusZipperList!1344 zl!343)) ((_ is Nil!63944) (unfocusZipperList!1344 zl!343)))))

(assert (=> b!5856357 d!1839445))

(assert (=> d!1839111 d!1839119))

(assert (=> d!1839111 d!1839117))

(declare-fun d!1839447 () Bool)

(assert (=> d!1839447 (= (matchR!8106 (regOne!32359 r!7292) s!2326) (matchRSpec!3024 (regOne!32359 r!7292) s!2326))))

(assert (=> d!1839447 true))

(declare-fun _$88!4278 () Unit!157117)

(assert (=> d!1839447 (= (choose!44405 (regOne!32359 r!7292) s!2326) _$88!4278)))

(declare-fun bs!1380029 () Bool)

(assert (= bs!1380029 d!1839447))

(assert (=> bs!1380029 m!6774190))

(assert (=> bs!1380029 m!6774186))

(assert (=> d!1839111 d!1839447))

(declare-fun b!5857091 () Bool)

(declare-fun e!3591441 () Bool)

(declare-fun call!458947 () Bool)

(assert (=> b!5857091 (= e!3591441 call!458947)))

(declare-fun b!5857092 () Bool)

(declare-fun e!3591438 () Bool)

(declare-fun e!3591444 () Bool)

(assert (=> b!5857092 (= e!3591438 e!3591444)))

(declare-fun c!1038744 () Bool)

(assert (=> b!5857092 (= c!1038744 ((_ is Union!15923) (regOne!32359 r!7292)))))

(declare-fun call!458946 () Bool)

(declare-fun c!1038743 () Bool)

(declare-fun bm!458940 () Bool)

(assert (=> bm!458940 (= call!458946 (validRegex!7659 (ite c!1038743 (reg!16252 (regOne!32359 r!7292)) (ite c!1038744 (regTwo!32359 (regOne!32359 r!7292)) (regTwo!32358 (regOne!32359 r!7292))))))))

(declare-fun b!5857093 () Bool)

(declare-fun e!3591439 () Bool)

(declare-fun e!3591442 () Bool)

(assert (=> b!5857093 (= e!3591439 e!3591442)))

(declare-fun res!2465110 () Bool)

(assert (=> b!5857093 (=> (not res!2465110) (not e!3591442))))

(declare-fun call!458945 () Bool)

(assert (=> b!5857093 (= res!2465110 call!458945)))

(declare-fun b!5857094 () Bool)

(declare-fun e!3591443 () Bool)

(assert (=> b!5857094 (= e!3591443 e!3591438)))

(assert (=> b!5857094 (= c!1038743 ((_ is Star!15923) (regOne!32359 r!7292)))))

(declare-fun b!5857095 () Bool)

(declare-fun e!3591440 () Bool)

(assert (=> b!5857095 (= e!3591438 e!3591440)))

(declare-fun res!2465112 () Bool)

(assert (=> b!5857095 (= res!2465112 (not (nullable!5923 (reg!16252 (regOne!32359 r!7292)))))))

(assert (=> b!5857095 (=> (not res!2465112) (not e!3591440))))

(declare-fun b!5857096 () Bool)

(declare-fun res!2465113 () Bool)

(assert (=> b!5857096 (=> (not res!2465113) (not e!3591441))))

(assert (=> b!5857096 (= res!2465113 call!458945)))

(assert (=> b!5857096 (= e!3591444 e!3591441)))

(declare-fun d!1839449 () Bool)

(declare-fun res!2465111 () Bool)

(assert (=> d!1839449 (=> res!2465111 e!3591443)))

(assert (=> d!1839449 (= res!2465111 ((_ is ElementMatch!15923) (regOne!32359 r!7292)))))

(assert (=> d!1839449 (= (validRegex!7659 (regOne!32359 r!7292)) e!3591443)))

(declare-fun b!5857097 () Bool)

(assert (=> b!5857097 (= e!3591442 call!458947)))

(declare-fun b!5857098 () Bool)

(assert (=> b!5857098 (= e!3591440 call!458946)))

(declare-fun bm!458941 () Bool)

(assert (=> bm!458941 (= call!458947 call!458946)))

(declare-fun b!5857099 () Bool)

(declare-fun res!2465114 () Bool)

(assert (=> b!5857099 (=> res!2465114 e!3591439)))

(assert (=> b!5857099 (= res!2465114 (not ((_ is Concat!24768) (regOne!32359 r!7292))))))

(assert (=> b!5857099 (= e!3591444 e!3591439)))

(declare-fun bm!458942 () Bool)

(assert (=> bm!458942 (= call!458945 (validRegex!7659 (ite c!1038744 (regOne!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292)))))))

(assert (= (and d!1839449 (not res!2465111)) b!5857094))

(assert (= (and b!5857094 c!1038743) b!5857095))

(assert (= (and b!5857094 (not c!1038743)) b!5857092))

(assert (= (and b!5857095 res!2465112) b!5857098))

(assert (= (and b!5857092 c!1038744) b!5857096))

(assert (= (and b!5857092 (not c!1038744)) b!5857099))

(assert (= (and b!5857096 res!2465113) b!5857091))

(assert (= (and b!5857099 (not res!2465114)) b!5857093))

(assert (= (and b!5857093 res!2465110) b!5857097))

(assert (= (or b!5857091 b!5857097) bm!458941))

(assert (= (or b!5857096 b!5857093) bm!458942))

(assert (= (or b!5857098 bm!458941) bm!458940))

(declare-fun m!6775210 () Bool)

(assert (=> bm!458940 m!6775210))

(declare-fun m!6775212 () Bool)

(assert (=> b!5857095 m!6775212))

(declare-fun m!6775214 () Bool)

(assert (=> bm!458942 m!6775214))

(assert (=> d!1839111 d!1839449))

(declare-fun d!1839451 () Bool)

(declare-fun c!1038745 () Bool)

(assert (=> d!1839451 (= c!1038745 (isEmpty!35805 (tail!11485 (t!377436 s!2326))))))

(declare-fun e!3591445 () Bool)

(assert (=> d!1839451 (= (matchZipper!1989 (derivationStepZipper!1922 lt!2304909 (head!12400 (t!377436 s!2326))) (tail!11485 (t!377436 s!2326))) e!3591445)))

(declare-fun b!5857100 () Bool)

(assert (=> b!5857100 (= e!3591445 (nullableZipper!1762 (derivationStepZipper!1922 lt!2304909 (head!12400 (t!377436 s!2326)))))))

(declare-fun b!5857101 () Bool)

(assert (=> b!5857101 (= e!3591445 (matchZipper!1989 (derivationStepZipper!1922 (derivationStepZipper!1922 lt!2304909 (head!12400 (t!377436 s!2326))) (head!12400 (tail!11485 (t!377436 s!2326)))) (tail!11485 (tail!11485 (t!377436 s!2326)))))))

(assert (= (and d!1839451 c!1038745) b!5857100))

(assert (= (and d!1839451 (not c!1038745)) b!5857101))

(assert (=> d!1839451 m!6774496))

(assert (=> d!1839451 m!6775140))

(assert (=> b!5857100 m!6774504))

(declare-fun m!6775216 () Bool)

(assert (=> b!5857100 m!6775216))

(assert (=> b!5857101 m!6774496))

(assert (=> b!5857101 m!6775144))

(assert (=> b!5857101 m!6774504))

(assert (=> b!5857101 m!6775144))

(declare-fun m!6775218 () Bool)

(assert (=> b!5857101 m!6775218))

(assert (=> b!5857101 m!6774496))

(assert (=> b!5857101 m!6775148))

(assert (=> b!5857101 m!6775218))

(assert (=> b!5857101 m!6775148))

(declare-fun m!6775220 () Bool)

(assert (=> b!5857101 m!6775220))

(assert (=> b!5856149 d!1839451))

(declare-fun bs!1380030 () Bool)

(declare-fun d!1839453 () Bool)

(assert (= bs!1380030 (and d!1839453 b!5855690)))

(declare-fun lambda!320254 () Int)

(assert (=> bs!1380030 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320254 lambda!320170))))

(declare-fun bs!1380031 () Bool)

(assert (= bs!1380031 (and d!1839453 d!1839135)))

(assert (=> bs!1380031 (= (= (head!12400 (t!377436 s!2326)) (h!70393 s!2326)) (= lambda!320254 lambda!320214))))

(declare-fun bs!1380032 () Bool)

(assert (= bs!1380032 (and d!1839453 d!1839407)))

(assert (=> bs!1380032 (= lambda!320254 lambda!320249)))

(declare-fun bs!1380033 () Bool)

(assert (= bs!1380033 (and d!1839453 d!1839437)))

(assert (=> bs!1380033 (= lambda!320254 lambda!320251)))

(assert (=> d!1839453 true))

(assert (=> d!1839453 (= (derivationStepZipper!1922 lt!2304909 (head!12400 (t!377436 s!2326))) (flatMap!1454 lt!2304909 lambda!320254))))

(declare-fun bs!1380034 () Bool)

(assert (= bs!1380034 d!1839453))

(declare-fun m!6775222 () Bool)

(assert (=> bs!1380034 m!6775222))

(assert (=> b!5856149 d!1839453))

(assert (=> b!5856149 d!1839409))

(assert (=> b!5856149 d!1839411))

(assert (=> d!1839091 d!1839379))

(declare-fun d!1839455 () Bool)

(assert (=> d!1839455 (= (head!12401 (exprs!5807 (h!70394 zl!343))) (h!70392 (exprs!5807 (h!70394 zl!343))))))

(assert (=> b!5856428 d!1839455))

(declare-fun d!1839457 () Bool)

(assert (=> d!1839457 (= (nullable!5923 (regOne!32358 (regOne!32359 r!7292))) (nullableFct!1910 (regOne!32358 (regOne!32359 r!7292))))))

(declare-fun bs!1380035 () Bool)

(assert (= bs!1380035 d!1839457))

(declare-fun m!6775224 () Bool)

(assert (=> bs!1380035 m!6775224))

(assert (=> b!5856177 d!1839457))

(assert (=> b!5856314 d!1839421))

(declare-fun b!5857102 () Bool)

(declare-fun e!3591451 () (InoxSet Context!10614))

(declare-fun call!458950 () (InoxSet Context!10614))

(assert (=> b!5857102 (= e!3591451 call!458950)))

(declare-fun b!5857103 () Bool)

(assert (=> b!5857103 (= e!3591451 ((as const (Array Context!10614 Bool)) false))))

(declare-fun e!3591448 () (InoxSet Context!10614))

(declare-fun b!5857104 () Bool)

(assert (=> b!5857104 (= e!3591448 (store ((as const (Array Context!10614 Bool)) false) (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754)) true))))

(declare-fun b!5857105 () Bool)

(declare-fun e!3591447 () (InoxSet Context!10614))

(assert (=> b!5857105 (= e!3591448 e!3591447)))

(declare-fun c!1038749 () Bool)

(assert (=> b!5857105 (= c!1038749 ((_ is Union!15923) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))))))

(declare-fun c!1038750 () Bool)

(declare-fun call!458953 () List!64068)

(declare-fun c!1038746 () Bool)

(declare-fun bm!458944 () Bool)

(assert (=> bm!458944 (= call!458953 ($colon$colon!1828 (exprs!5807 (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754))) (ite (or c!1038746 c!1038750) (regTwo!32358 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))))))))

(declare-fun b!5857106 () Bool)

(declare-fun e!3591446 () (InoxSet Context!10614))

(declare-fun call!458948 () (InoxSet Context!10614))

(declare-fun call!458949 () (InoxSet Context!10614))

(assert (=> b!5857106 (= e!3591446 ((_ map or) call!458948 call!458949))))

(declare-fun bm!458945 () Bool)

(assert (=> bm!458945 (= call!458948 (derivationStepZipperDown!1189 (ite c!1038749 (regTwo!32359 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (regOne!32358 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))))) (ite c!1038749 (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754)) (Context!10615 call!458953)) (h!70393 s!2326)))))

(declare-fun bm!458946 () Bool)

(assert (=> bm!458946 (= call!458950 call!458949)))

(declare-fun d!1839459 () Bool)

(declare-fun c!1038747 () Bool)

(assert (=> d!1839459 (= c!1038747 (and ((_ is ElementMatch!15923) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (= (c!1038343 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (h!70393 s!2326))))))

(assert (=> d!1839459 (= (derivationStepZipperDown!1189 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))) (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754)) (h!70393 s!2326)) e!3591448)))

(declare-fun bm!458943 () Bool)

(declare-fun call!458951 () List!64068)

(assert (=> bm!458943 (= call!458951 call!458953)))

(declare-fun bm!458947 () Bool)

(declare-fun call!458952 () (InoxSet Context!10614))

(assert (=> bm!458947 (= call!458949 call!458952)))

(declare-fun b!5857107 () Bool)

(declare-fun e!3591450 () (InoxSet Context!10614))

(assert (=> b!5857107 (= e!3591450 call!458950)))

(declare-fun e!3591449 () Bool)

(declare-fun b!5857108 () Bool)

(assert (=> b!5857108 (= e!3591449 (nullable!5923 (regOne!32358 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))))))))

(declare-fun b!5857109 () Bool)

(assert (=> b!5857109 (= c!1038746 e!3591449)))

(declare-fun res!2465115 () Bool)

(assert (=> b!5857109 (=> (not res!2465115) (not e!3591449))))

(assert (=> b!5857109 (= res!2465115 ((_ is Concat!24768) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))))))

(assert (=> b!5857109 (= e!3591447 e!3591446)))

(declare-fun b!5857110 () Bool)

(assert (=> b!5857110 (= e!3591446 e!3591450)))

(assert (=> b!5857110 (= c!1038750 ((_ is Concat!24768) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))))))

(declare-fun bm!458948 () Bool)

(assert (=> bm!458948 (= call!458952 (derivationStepZipperDown!1189 (ite c!1038749 (regOne!32359 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (ite c!1038746 (regTwo!32358 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (ite c!1038750 (regOne!32358 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))) (reg!16252 (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292)))))))) (ite (or c!1038749 c!1038746) (ite (or c!1038470 c!1038467) lt!2304898 (Context!10615 call!458754)) (Context!10615 call!458951)) (h!70393 s!2326)))))

(declare-fun b!5857111 () Bool)

(declare-fun c!1038748 () Bool)

(assert (=> b!5857111 (= c!1038748 ((_ is Star!15923) (ite c!1038470 (regOne!32359 r!7292) (ite c!1038467 (regTwo!32358 r!7292) (ite c!1038471 (regOne!32358 r!7292) (reg!16252 r!7292))))))))

(assert (=> b!5857111 (= e!3591450 e!3591451)))

(declare-fun b!5857112 () Bool)

(assert (=> b!5857112 (= e!3591447 ((_ map or) call!458952 call!458948))))

(assert (= (and d!1839459 c!1038747) b!5857104))

(assert (= (and d!1839459 (not c!1038747)) b!5857105))

(assert (= (and b!5857105 c!1038749) b!5857112))

(assert (= (and b!5857105 (not c!1038749)) b!5857109))

(assert (= (and b!5857109 res!2465115) b!5857108))

(assert (= (and b!5857109 c!1038746) b!5857106))

(assert (= (and b!5857109 (not c!1038746)) b!5857110))

(assert (= (and b!5857110 c!1038750) b!5857107))

(assert (= (and b!5857110 (not c!1038750)) b!5857111))

(assert (= (and b!5857111 c!1038748) b!5857102))

(assert (= (and b!5857111 (not c!1038748)) b!5857103))

(assert (= (or b!5857107 b!5857102) bm!458943))

(assert (= (or b!5857107 b!5857102) bm!458946))

(assert (= (or b!5857106 bm!458943) bm!458944))

(assert (= (or b!5857106 bm!458946) bm!458947))

(assert (= (or b!5857112 b!5857106) bm!458945))

(assert (= (or b!5857112 bm!458947) bm!458948))

(declare-fun m!6775226 () Bool)

(assert (=> bm!458944 m!6775226))

(declare-fun m!6775228 () Bool)

(assert (=> b!5857108 m!6775228))

(declare-fun m!6775230 () Bool)

(assert (=> bm!458948 m!6775230))

(declare-fun m!6775232 () Bool)

(assert (=> bm!458945 m!6775232))

(declare-fun m!6775234 () Bool)

(assert (=> b!5857104 m!6775234))

(assert (=> bm!458751 d!1839459))

(declare-fun b!5857113 () Bool)

(declare-fun e!3591457 () (InoxSet Context!10614))

(declare-fun call!458956 () (InoxSet Context!10614))

(assert (=> b!5857113 (= e!3591457 call!458956)))

(declare-fun b!5857114 () Bool)

(assert (=> b!5857114 (= e!3591457 ((as const (Array Context!10614 Bool)) false))))

(declare-fun e!3591454 () (InoxSet Context!10614))

(declare-fun b!5857115 () Bool)

(assert (=> b!5857115 (= e!3591454 (store ((as const (Array Context!10614 Bool)) false) (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765)) true))))

(declare-fun b!5857116 () Bool)

(declare-fun e!3591453 () (InoxSet Context!10614))

(assert (=> b!5857116 (= e!3591454 e!3591453)))

(declare-fun c!1038754 () Bool)

(assert (=> b!5857116 (= c!1038754 ((_ is Union!15923) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))))))

(declare-fun c!1038755 () Bool)

(declare-fun bm!458950 () Bool)

(declare-fun c!1038751 () Bool)

(declare-fun call!458959 () List!64068)

(assert (=> bm!458950 (= call!458959 ($colon$colon!1828 (exprs!5807 (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765))) (ite (or c!1038751 c!1038755) (regTwo!32358 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))))))))

(declare-fun b!5857117 () Bool)

(declare-fun e!3591452 () (InoxSet Context!10614))

(declare-fun call!458954 () (InoxSet Context!10614))

(declare-fun call!458955 () (InoxSet Context!10614))

(assert (=> b!5857117 (= e!3591452 ((_ map or) call!458954 call!458955))))

(declare-fun bm!458951 () Bool)

(assert (=> bm!458951 (= call!458954 (derivationStepZipperDown!1189 (ite c!1038754 (regTwo!32359 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (regOne!32358 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))))) (ite c!1038754 (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765)) (Context!10615 call!458959)) (h!70393 s!2326)))))

(declare-fun bm!458952 () Bool)

(assert (=> bm!458952 (= call!458956 call!458955)))

(declare-fun c!1038752 () Bool)

(declare-fun d!1839461 () Bool)

(assert (=> d!1839461 (= c!1038752 (and ((_ is ElementMatch!15923) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (= (c!1038343 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (h!70393 s!2326))))))

(assert (=> d!1839461 (= (derivationStepZipperDown!1189 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))) (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765)) (h!70393 s!2326)) e!3591454)))

(declare-fun bm!458949 () Bool)

(declare-fun call!458957 () List!64068)

(assert (=> bm!458949 (= call!458957 call!458959)))

(declare-fun bm!458953 () Bool)

(declare-fun call!458958 () (InoxSet Context!10614))

(assert (=> bm!458953 (= call!458955 call!458958)))

(declare-fun b!5857118 () Bool)

(declare-fun e!3591456 () (InoxSet Context!10614))

(assert (=> b!5857118 (= e!3591456 call!458956)))

(declare-fun e!3591455 () Bool)

(declare-fun b!5857119 () Bool)

(assert (=> b!5857119 (= e!3591455 (nullable!5923 (regOne!32358 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))))))))

(declare-fun b!5857120 () Bool)

(assert (=> b!5857120 (= c!1038751 e!3591455)))

(declare-fun res!2465116 () Bool)

(assert (=> b!5857120 (=> (not res!2465116) (not e!3591455))))

(assert (=> b!5857120 (= res!2465116 ((_ is Concat!24768) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))))))

(assert (=> b!5857120 (= e!3591453 e!3591452)))

(declare-fun b!5857121 () Bool)

(assert (=> b!5857121 (= e!3591452 e!3591456)))

(assert (=> b!5857121 (= c!1038755 ((_ is Concat!24768) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))))))

(declare-fun bm!458954 () Bool)

(assert (=> bm!458954 (= call!458958 (derivationStepZipperDown!1189 (ite c!1038754 (regOne!32359 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (ite c!1038751 (regTwo!32358 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (ite c!1038755 (regOne!32358 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))) (reg!16252 (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292))))))))) (ite (or c!1038754 c!1038751) (ite (or c!1038490 c!1038487) lt!2304898 (Context!10615 call!458765)) (Context!10615 call!458957)) (h!70393 s!2326)))))

(declare-fun c!1038753 () Bool)

(declare-fun b!5857122 () Bool)

(assert (=> b!5857122 (= c!1038753 ((_ is Star!15923) (ite c!1038490 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038487 (regTwo!32358 (regTwo!32359 r!7292)) (ite c!1038491 (regOne!32358 (regTwo!32359 r!7292)) (reg!16252 (regTwo!32359 r!7292)))))))))

(assert (=> b!5857122 (= e!3591456 e!3591457)))

(declare-fun b!5857123 () Bool)

(assert (=> b!5857123 (= e!3591453 ((_ map or) call!458958 call!458954))))

(assert (= (and d!1839461 c!1038752) b!5857115))

(assert (= (and d!1839461 (not c!1038752)) b!5857116))

(assert (= (and b!5857116 c!1038754) b!5857123))

(assert (= (and b!5857116 (not c!1038754)) b!5857120))

(assert (= (and b!5857120 res!2465116) b!5857119))

(assert (= (and b!5857120 c!1038751) b!5857117))

(assert (= (and b!5857120 (not c!1038751)) b!5857121))

(assert (= (and b!5857121 c!1038755) b!5857118))

(assert (= (and b!5857121 (not c!1038755)) b!5857122))

(assert (= (and b!5857122 c!1038753) b!5857113))

(assert (= (and b!5857122 (not c!1038753)) b!5857114))

(assert (= (or b!5857118 b!5857113) bm!458949))

(assert (= (or b!5857118 b!5857113) bm!458952))

(assert (= (or b!5857117 bm!458949) bm!458950))

(assert (= (or b!5857117 bm!458952) bm!458953))

(assert (= (or b!5857123 b!5857117) bm!458951))

(assert (= (or b!5857123 bm!458953) bm!458954))

(declare-fun m!6775236 () Bool)

(assert (=> bm!458950 m!6775236))

(declare-fun m!6775238 () Bool)

(assert (=> b!5857119 m!6775238))

(declare-fun m!6775240 () Bool)

(assert (=> bm!458954 m!6775240))

(declare-fun m!6775242 () Bool)

(assert (=> bm!458951 m!6775242))

(declare-fun m!6775244 () Bool)

(assert (=> b!5857115 m!6775244))

(assert (=> bm!458762 d!1839461))

(declare-fun d!1839463 () Bool)

(assert (=> d!1839463 (= (isUnion!796 lt!2304966) ((_ is Union!15923) lt!2304966))))

(assert (=> b!5856365 d!1839463))

(declare-fun b!5857124 () Bool)

(declare-fun e!3591459 () Bool)

(assert (=> b!5857124 (= e!3591459 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891)))))))))

(declare-fun b!5857125 () Bool)

(declare-fun e!3591460 () (InoxSet Context!10614))

(declare-fun e!3591458 () (InoxSet Context!10614))

(assert (=> b!5857125 (= e!3591460 e!3591458)))

(declare-fun c!1038756 () Bool)

(assert (=> b!5857125 (= c!1038756 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891))))))))

(declare-fun d!1839465 () Bool)

(declare-fun c!1038757 () Bool)

(assert (=> d!1839465 (= c!1038757 e!3591459)))

(declare-fun res!2465117 () Bool)

(assert (=> d!1839465 (=> (not res!2465117) (not e!3591459))))

(assert (=> d!1839465 (= res!2465117 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891))))))))

(assert (=> d!1839465 (= (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (h!70393 s!2326)) e!3591460)))

(declare-fun b!5857126 () Bool)

(assert (=> b!5857126 (= e!3591458 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458955 () Bool)

(declare-fun call!458960 () (InoxSet Context!10614))

(assert (=> bm!458955 (= call!458960 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891))))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891)))))) (h!70393 s!2326)))))

(declare-fun b!5857127 () Bool)

(assert (=> b!5857127 (= e!3591460 ((_ map or) call!458960 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891)))))) (h!70393 s!2326))))))

(declare-fun b!5857128 () Bool)

(assert (=> b!5857128 (= e!3591458 call!458960)))

(assert (= (and d!1839465 res!2465117) b!5857124))

(assert (= (and d!1839465 c!1038757) b!5857127))

(assert (= (and d!1839465 (not c!1038757)) b!5857125))

(assert (= (and b!5857125 c!1038756) b!5857128))

(assert (= (and b!5857125 (not c!1038756)) b!5857126))

(assert (= (or b!5857127 b!5857128) bm!458955))

(declare-fun m!6775246 () Bool)

(assert (=> b!5857124 m!6775246))

(declare-fun m!6775248 () Bool)

(assert (=> bm!458955 m!6775248))

(declare-fun m!6775250 () Bool)

(assert (=> b!5857127 m!6775250))

(assert (=> b!5856158 d!1839465))

(declare-fun b!5857129 () Bool)

(declare-fun e!3591462 () Bool)

(assert (=> b!5857129 (= e!3591462 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))))))

(declare-fun b!5857130 () Bool)

(declare-fun e!3591463 () (InoxSet Context!10614))

(declare-fun e!3591461 () (InoxSet Context!10614))

(assert (=> b!5857130 (= e!3591463 e!3591461)))

(declare-fun c!1038758 () Bool)

(assert (=> b!5857130 (= c!1038758 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))))

(declare-fun d!1839467 () Bool)

(declare-fun c!1038759 () Bool)

(assert (=> d!1839467 (= c!1038759 e!3591462)))

(declare-fun res!2465118 () Bool)

(assert (=> d!1839467 (=> (not res!2465118) (not e!3591462))))

(assert (=> d!1839467 (= res!2465118 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))))

(assert (=> d!1839467 (= (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70393 s!2326)) e!3591463)))

(declare-fun b!5857131 () Bool)

(assert (=> b!5857131 (= e!3591461 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458956 () Bool)

(declare-fun call!458961 () (InoxSet Context!10614))

(assert (=> bm!458956 (= call!458961 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))) (h!70393 s!2326)))))

(declare-fun b!5857132 () Bool)

(assert (=> b!5857132 (= e!3591463 ((_ map or) call!458961 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))) (h!70393 s!2326))))))

(declare-fun b!5857133 () Bool)

(assert (=> b!5857133 (= e!3591461 call!458961)))

(assert (= (and d!1839467 res!2465118) b!5857129))

(assert (= (and d!1839467 c!1038759) b!5857132))

(assert (= (and d!1839467 (not c!1038759)) b!5857130))

(assert (= (and b!5857130 c!1038758) b!5857133))

(assert (= (and b!5857130 (not c!1038758)) b!5857131))

(assert (= (or b!5857132 b!5857133) bm!458956))

(declare-fun m!6775252 () Bool)

(assert (=> b!5857129 m!6775252))

(declare-fun m!6775254 () Bool)

(assert (=> bm!458956 m!6775254))

(declare-fun m!6775256 () Bool)

(assert (=> b!5857132 m!6775256))

(assert (=> b!5856153 d!1839467))

(declare-fun b!5857134 () Bool)

(declare-fun res!2465123 () Bool)

(declare-fun e!3591468 () Bool)

(assert (=> b!5857134 (=> res!2465123 e!3591468)))

(assert (=> b!5857134 (= res!2465123 (not (isEmpty!35805 (tail!11485 (tail!11485 s!2326)))))))

(declare-fun b!5857135 () Bool)

(declare-fun e!3591464 () Bool)

(assert (=> b!5857135 (= e!3591464 (matchR!8106 (derivativeStep!4661 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)) (head!12400 (tail!11485 s!2326))) (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857136 () Bool)

(declare-fun e!3591470 () Bool)

(assert (=> b!5857136 (= e!3591470 (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)))))))

(declare-fun b!5857137 () Bool)

(declare-fun res!2465124 () Bool)

(assert (=> b!5857137 (=> (not res!2465124) (not e!3591470))))

(assert (=> b!5857137 (= res!2465124 (isEmpty!35805 (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857138 () Bool)

(assert (=> b!5857138 (= e!3591464 (nullable!5923 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326))))))

(declare-fun d!1839469 () Bool)

(declare-fun e!3591466 () Bool)

(assert (=> d!1839469 e!3591466))

(declare-fun c!1038762 () Bool)

(assert (=> d!1839469 (= c!1038762 ((_ is EmptyExpr!15923) (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326))))))

(declare-fun lt!2304985 () Bool)

(assert (=> d!1839469 (= lt!2304985 e!3591464)))

(declare-fun c!1038760 () Bool)

(assert (=> d!1839469 (= c!1038760 (isEmpty!35805 (tail!11485 s!2326)))))

(assert (=> d!1839469 (validRegex!7659 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)))))

(assert (=> d!1839469 (= (matchR!8106 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)) (tail!11485 s!2326)) lt!2304985)))

(declare-fun b!5857139 () Bool)

(declare-fun res!2465125 () Bool)

(declare-fun e!3591467 () Bool)

(assert (=> b!5857139 (=> res!2465125 e!3591467)))

(assert (=> b!5857139 (= res!2465125 e!3591470)))

(declare-fun res!2465119 () Bool)

(assert (=> b!5857139 (=> (not res!2465119) (not e!3591470))))

(assert (=> b!5857139 (= res!2465119 lt!2304985)))

(declare-fun b!5857140 () Bool)

(declare-fun e!3591465 () Bool)

(assert (=> b!5857140 (= e!3591466 e!3591465)))

(declare-fun c!1038761 () Bool)

(assert (=> b!5857140 (= c!1038761 ((_ is EmptyLang!15923) (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326))))))

(declare-fun b!5857141 () Bool)

(assert (=> b!5857141 (= e!3591468 (not (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326))))))))

(declare-fun b!5857142 () Bool)

(assert (=> b!5857142 (= e!3591465 (not lt!2304985))))

(declare-fun b!5857143 () Bool)

(declare-fun e!3591469 () Bool)

(assert (=> b!5857143 (= e!3591469 e!3591468)))

(declare-fun res!2465122 () Bool)

(assert (=> b!5857143 (=> res!2465122 e!3591468)))

(declare-fun call!458962 () Bool)

(assert (=> b!5857143 (= res!2465122 call!458962)))

(declare-fun b!5857144 () Bool)

(assert (=> b!5857144 (= e!3591467 e!3591469)))

(declare-fun res!2465121 () Bool)

(assert (=> b!5857144 (=> (not res!2465121) (not e!3591469))))

(assert (=> b!5857144 (= res!2465121 (not lt!2304985))))

(declare-fun b!5857145 () Bool)

(assert (=> b!5857145 (= e!3591466 (= lt!2304985 call!458962))))

(declare-fun bm!458957 () Bool)

(assert (=> bm!458957 (= call!458962 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5857146 () Bool)

(declare-fun res!2465126 () Bool)

(assert (=> b!5857146 (=> (not res!2465126) (not e!3591470))))

(assert (=> b!5857146 (= res!2465126 (not call!458962))))

(declare-fun b!5857147 () Bool)

(declare-fun res!2465120 () Bool)

(assert (=> b!5857147 (=> res!2465120 e!3591467)))

(assert (=> b!5857147 (= res!2465120 (not ((_ is ElementMatch!15923) (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)))))))

(assert (=> b!5857147 (= e!3591465 e!3591467)))

(assert (= (and d!1839469 c!1038760) b!5857138))

(assert (= (and d!1839469 (not c!1038760)) b!5857135))

(assert (= (and d!1839469 c!1038762) b!5857145))

(assert (= (and d!1839469 (not c!1038762)) b!5857140))

(assert (= (and b!5857140 c!1038761) b!5857142))

(assert (= (and b!5857140 (not c!1038761)) b!5857147))

(assert (= (and b!5857147 (not res!2465120)) b!5857139))

(assert (= (and b!5857139 res!2465119) b!5857146))

(assert (= (and b!5857146 res!2465126) b!5857137))

(assert (= (and b!5857137 res!2465124) b!5857136))

(assert (= (and b!5857139 (not res!2465125)) b!5857144))

(assert (= (and b!5857144 res!2465121) b!5857143))

(assert (= (and b!5857143 (not res!2465122)) b!5857134))

(assert (= (and b!5857134 (not res!2465123)) b!5857141))

(assert (= (or b!5857145 b!5857143 b!5857146) bm!458957))

(assert (=> b!5857136 m!6774484))

(declare-fun m!6775258 () Bool)

(assert (=> b!5857136 m!6775258))

(assert (=> b!5857138 m!6774568))

(declare-fun m!6775260 () Bool)

(assert (=> b!5857138 m!6775260))

(assert (=> b!5857134 m!6774484))

(declare-fun m!6775262 () Bool)

(assert (=> b!5857134 m!6775262))

(assert (=> b!5857134 m!6775262))

(declare-fun m!6775264 () Bool)

(assert (=> b!5857134 m!6775264))

(assert (=> bm!458957 m!6774484))

(assert (=> bm!458957 m!6774550))

(assert (=> b!5857141 m!6774484))

(assert (=> b!5857141 m!6775258))

(assert (=> b!5857137 m!6774484))

(assert (=> b!5857137 m!6775262))

(assert (=> b!5857137 m!6775262))

(assert (=> b!5857137 m!6775264))

(assert (=> d!1839469 m!6774484))

(assert (=> d!1839469 m!6774550))

(assert (=> d!1839469 m!6774568))

(declare-fun m!6775266 () Bool)

(assert (=> d!1839469 m!6775266))

(assert (=> b!5857135 m!6774484))

(assert (=> b!5857135 m!6775258))

(assert (=> b!5857135 m!6774568))

(assert (=> b!5857135 m!6775258))

(declare-fun m!6775268 () Bool)

(assert (=> b!5857135 m!6775268))

(assert (=> b!5857135 m!6774484))

(assert (=> b!5857135 m!6775262))

(assert (=> b!5857135 m!6775268))

(assert (=> b!5857135 m!6775262))

(declare-fun m!6775270 () Bool)

(assert (=> b!5857135 m!6775270))

(assert (=> b!5856283 d!1839469))

(declare-fun b!5857168 () Bool)

(declare-fun c!1038776 () Bool)

(assert (=> b!5857168 (= c!1038776 ((_ is Union!15923) (regOne!32359 r!7292)))))

(declare-fun e!3591481 () Regex!15923)

(declare-fun e!3591483 () Regex!15923)

(assert (=> b!5857168 (= e!3591481 e!3591483)))

(declare-fun bm!458966 () Bool)

(declare-fun call!458971 () Regex!15923)

(declare-fun call!458974 () Regex!15923)

(assert (=> bm!458966 (= call!458971 call!458974)))

(declare-fun call!458973 () Regex!15923)

(declare-fun bm!458967 () Bool)

(assert (=> bm!458967 (= call!458973 (derivativeStep!4661 (ite c!1038776 (regTwo!32359 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))) (head!12400 s!2326)))))

(declare-fun b!5857169 () Bool)

(assert (=> b!5857169 (= e!3591483 (Union!15923 call!458974 call!458973))))

(declare-fun b!5857170 () Bool)

(declare-fun e!3591482 () Regex!15923)

(assert (=> b!5857170 (= e!3591483 e!3591482)))

(declare-fun c!1038774 () Bool)

(assert (=> b!5857170 (= c!1038774 ((_ is Star!15923) (regOne!32359 r!7292)))))

(declare-fun b!5857171 () Bool)

(assert (=> b!5857171 (= e!3591481 (ite (= (head!12400 s!2326) (c!1038343 (regOne!32359 r!7292))) EmptyExpr!15923 EmptyLang!15923))))

(declare-fun b!5857172 () Bool)

(declare-fun e!3591484 () Regex!15923)

(declare-fun call!458972 () Regex!15923)

(assert (=> b!5857172 (= e!3591484 (Union!15923 (Concat!24768 call!458972 (regTwo!32358 (regOne!32359 r!7292))) EmptyLang!15923))))

(declare-fun b!5857173 () Bool)

(assert (=> b!5857173 (= e!3591484 (Union!15923 (Concat!24768 call!458973 (regTwo!32358 (regOne!32359 r!7292))) call!458972))))

(declare-fun b!5857174 () Bool)

(declare-fun c!1038775 () Bool)

(assert (=> b!5857174 (= c!1038775 (nullable!5923 (regOne!32358 (regOne!32359 r!7292))))))

(assert (=> b!5857174 (= e!3591482 e!3591484)))

(declare-fun b!5857175 () Bool)

(declare-fun e!3591485 () Regex!15923)

(assert (=> b!5857175 (= e!3591485 e!3591481)))

(declare-fun c!1038777 () Bool)

(assert (=> b!5857175 (= c!1038777 ((_ is ElementMatch!15923) (regOne!32359 r!7292)))))

(declare-fun bm!458968 () Bool)

(assert (=> bm!458968 (= call!458972 call!458971)))

(declare-fun b!5857177 () Bool)

(assert (=> b!5857177 (= e!3591482 (Concat!24768 call!458971 (regOne!32359 r!7292)))))

(declare-fun bm!458969 () Bool)

(assert (=> bm!458969 (= call!458974 (derivativeStep!4661 (ite c!1038776 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038774 (reg!16252 (regOne!32359 r!7292)) (ite c!1038775 (regTwo!32358 (regOne!32359 r!7292)) (regOne!32358 (regOne!32359 r!7292))))) (head!12400 s!2326)))))

(declare-fun b!5857176 () Bool)

(assert (=> b!5857176 (= e!3591485 EmptyLang!15923)))

(declare-fun d!1839471 () Bool)

(declare-fun lt!2304988 () Regex!15923)

(assert (=> d!1839471 (validRegex!7659 lt!2304988)))

(assert (=> d!1839471 (= lt!2304988 e!3591485)))

(declare-fun c!1038773 () Bool)

(assert (=> d!1839471 (= c!1038773 (or ((_ is EmptyExpr!15923) (regOne!32359 r!7292)) ((_ is EmptyLang!15923) (regOne!32359 r!7292))))))

(assert (=> d!1839471 (validRegex!7659 (regOne!32359 r!7292))))

(assert (=> d!1839471 (= (derivativeStep!4661 (regOne!32359 r!7292) (head!12400 s!2326)) lt!2304988)))

(assert (= (and d!1839471 c!1038773) b!5857176))

(assert (= (and d!1839471 (not c!1038773)) b!5857175))

(assert (= (and b!5857175 c!1038777) b!5857171))

(assert (= (and b!5857175 (not c!1038777)) b!5857168))

(assert (= (and b!5857168 c!1038776) b!5857169))

(assert (= (and b!5857168 (not c!1038776)) b!5857170))

(assert (= (and b!5857170 c!1038774) b!5857177))

(assert (= (and b!5857170 (not c!1038774)) b!5857174))

(assert (= (and b!5857174 c!1038775) b!5857173))

(assert (= (and b!5857174 (not c!1038775)) b!5857172))

(assert (= (or b!5857173 b!5857172) bm!458968))

(assert (= (or b!5857177 bm!458968) bm!458966))

(assert (= (or b!5857169 b!5857173) bm!458967))

(assert (= (or b!5857169 bm!458966) bm!458969))

(assert (=> bm!458967 m!6774480))

(declare-fun m!6775272 () Bool)

(assert (=> bm!458967 m!6775272))

(assert (=> b!5857174 m!6774532))

(assert (=> bm!458969 m!6774480))

(declare-fun m!6775274 () Bool)

(assert (=> bm!458969 m!6775274))

(declare-fun m!6775276 () Bool)

(assert (=> d!1839471 m!6775276))

(assert (=> d!1839471 m!6774546))

(assert (=> b!5856283 d!1839471))

(assert (=> b!5856283 d!1839421))

(assert (=> b!5856283 d!1839391))

(declare-fun d!1839473 () Bool)

(declare-fun c!1038780 () Bool)

(assert (=> d!1839473 (= c!1038780 ((_ is Nil!63946) lt!2304963))))

(declare-fun e!3591488 () (InoxSet Context!10614))

(assert (=> d!1839473 (= (content!11753 lt!2304963) e!3591488)))

(declare-fun b!5857182 () Bool)

(assert (=> b!5857182 (= e!3591488 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857183 () Bool)

(assert (=> b!5857183 (= e!3591488 ((_ map or) (store ((as const (Array Context!10614 Bool)) false) (h!70394 lt!2304963) true) (content!11753 (t!377437 lt!2304963))))))

(assert (= (and d!1839473 c!1038780) b!5857182))

(assert (= (and d!1839473 (not c!1038780)) b!5857183))

(declare-fun m!6775278 () Bool)

(assert (=> b!5857183 m!6775278))

(declare-fun m!6775280 () Bool)

(assert (=> b!5857183 m!6775280))

(assert (=> b!5856335 d!1839473))

(declare-fun b!5857184 () Bool)

(declare-fun e!3591492 () Bool)

(declare-fun call!458977 () Bool)

(assert (=> b!5857184 (= e!3591492 call!458977)))

(declare-fun b!5857185 () Bool)

(declare-fun e!3591489 () Bool)

(declare-fun e!3591495 () Bool)

(assert (=> b!5857185 (= e!3591489 e!3591495)))

(declare-fun c!1038782 () Bool)

(assert (=> b!5857185 (= c!1038782 ((_ is Union!15923) (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))

(declare-fun c!1038781 () Bool)

(declare-fun bm!458970 () Bool)

(declare-fun call!458976 () Bool)

(assert (=> bm!458970 (= call!458976 (validRegex!7659 (ite c!1038781 (reg!16252 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))) (ite c!1038782 (regTwo!32359 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))) (regTwo!32358 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292)))))))))

(declare-fun b!5857186 () Bool)

(declare-fun e!3591490 () Bool)

(declare-fun e!3591493 () Bool)

(assert (=> b!5857186 (= e!3591490 e!3591493)))

(declare-fun res!2465127 () Bool)

(assert (=> b!5857186 (=> (not res!2465127) (not e!3591493))))

(declare-fun call!458975 () Bool)

(assert (=> b!5857186 (= res!2465127 call!458975)))

(declare-fun b!5857187 () Bool)

(declare-fun e!3591494 () Bool)

(assert (=> b!5857187 (= e!3591494 e!3591489)))

(assert (=> b!5857187 (= c!1038781 ((_ is Star!15923) (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))

(declare-fun b!5857188 () Bool)

(declare-fun e!3591491 () Bool)

(assert (=> b!5857188 (= e!3591489 e!3591491)))

(declare-fun res!2465129 () Bool)

(assert (=> b!5857188 (= res!2465129 (not (nullable!5923 (reg!16252 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))))

(assert (=> b!5857188 (=> (not res!2465129) (not e!3591491))))

(declare-fun b!5857189 () Bool)

(declare-fun res!2465130 () Bool)

(assert (=> b!5857189 (=> (not res!2465130) (not e!3591492))))

(assert (=> b!5857189 (= res!2465130 call!458975)))

(assert (=> b!5857189 (= e!3591495 e!3591492)))

(declare-fun d!1839475 () Bool)

(declare-fun res!2465128 () Bool)

(assert (=> d!1839475 (=> res!2465128 e!3591494)))

(assert (=> d!1839475 (= res!2465128 ((_ is ElementMatch!15923) (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))

(assert (=> d!1839475 (= (validRegex!7659 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))) e!3591494)))

(declare-fun b!5857190 () Bool)

(assert (=> b!5857190 (= e!3591493 call!458977)))

(declare-fun b!5857191 () Bool)

(assert (=> b!5857191 (= e!3591491 call!458976)))

(declare-fun bm!458971 () Bool)

(assert (=> bm!458971 (= call!458977 call!458976)))

(declare-fun b!5857192 () Bool)

(declare-fun res!2465131 () Bool)

(assert (=> b!5857192 (=> res!2465131 e!3591490)))

(assert (=> b!5857192 (= res!2465131 (not ((_ is Concat!24768) (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292)))))))

(assert (=> b!5857192 (= e!3591495 e!3591490)))

(declare-fun bm!458972 () Bool)

(assert (=> bm!458972 (= call!458975 (validRegex!7659 (ite c!1038782 (regOne!32359 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))) (regOne!32358 (ite c!1038557 (regOne!32359 r!7292) (regOne!32358 r!7292))))))))

(assert (= (and d!1839475 (not res!2465128)) b!5857187))

(assert (= (and b!5857187 c!1038781) b!5857188))

(assert (= (and b!5857187 (not c!1038781)) b!5857185))

(assert (= (and b!5857188 res!2465129) b!5857191))

(assert (= (and b!5857185 c!1038782) b!5857189))

(assert (= (and b!5857185 (not c!1038782)) b!5857192))

(assert (= (and b!5857189 res!2465130) b!5857184))

(assert (= (and b!5857192 (not res!2465131)) b!5857186))

(assert (= (and b!5857186 res!2465127) b!5857190))

(assert (= (or b!5857184 b!5857190) bm!458971))

(assert (= (or b!5857189 b!5857186) bm!458972))

(assert (= (or b!5857191 bm!458971) bm!458970))

(declare-fun m!6775282 () Bool)

(assert (=> bm!458970 m!6775282))

(declare-fun m!6775284 () Bool)

(assert (=> b!5857188 m!6775284))

(declare-fun m!6775286 () Bool)

(assert (=> bm!458972 m!6775286))

(assert (=> bm!458793 d!1839475))

(assert (=> d!1839097 d!1839419))

(declare-fun bs!1380036 () Bool)

(declare-fun b!5857193 () Bool)

(assert (= bs!1380036 (and b!5857193 b!5856271)))

(declare-fun lambda!320255 () Int)

(assert (=> bs!1380036 (= (and (= (reg!16252 (regOne!32359 (regOne!32359 r!7292))) (reg!16252 (regOne!32359 r!7292))) (= (regOne!32359 (regOne!32359 r!7292)) (regOne!32359 r!7292))) (= lambda!320255 lambda!320207))))

(declare-fun bs!1380037 () Bool)

(assert (= bs!1380037 (and b!5857193 b!5856281)))

(assert (=> bs!1380037 (not (= lambda!320255 lambda!320208))))

(declare-fun bs!1380038 () Bool)

(assert (= bs!1380038 (and b!5857193 b!5856296)))

(assert (=> bs!1380038 (= (and (= (reg!16252 (regOne!32359 (regOne!32359 r!7292))) (reg!16252 r!7292)) (= (regOne!32359 (regOne!32359 r!7292)) r!7292)) (= lambda!320255 lambda!320210))))

(declare-fun bs!1380039 () Bool)

(assert (= bs!1380039 (and b!5857193 b!5856224)))

(assert (=> bs!1380039 (not (= lambda!320255 lambda!320206))))

(declare-fun bs!1380040 () Bool)

(assert (= bs!1380040 (and b!5857193 b!5857085)))

(assert (=> bs!1380040 (not (= lambda!320255 lambda!320253))))

(declare-fun bs!1380041 () Bool)

(assert (= bs!1380041 (and b!5857193 b!5857075)))

(assert (=> bs!1380041 (= (and (= (reg!16252 (regOne!32359 (regOne!32359 r!7292))) (reg!16252 (regTwo!32359 (regOne!32359 r!7292)))) (= (regOne!32359 (regOne!32359 r!7292)) (regTwo!32359 (regOne!32359 r!7292)))) (= lambda!320255 lambda!320252))))

(declare-fun bs!1380042 () Bool)

(assert (= bs!1380042 (and b!5857193 b!5856214)))

(assert (=> bs!1380042 (= (and (= (reg!16252 (regOne!32359 (regOne!32359 r!7292))) (reg!16252 (regTwo!32359 r!7292))) (= (regOne!32359 (regOne!32359 r!7292)) (regTwo!32359 r!7292))) (= lambda!320255 lambda!320205))))

(declare-fun bs!1380043 () Bool)

(assert (= bs!1380043 (and b!5857193 b!5856306)))

(assert (=> bs!1380043 (not (= lambda!320255 lambda!320211))))

(assert (=> b!5857193 true))

(assert (=> b!5857193 true))

(declare-fun bs!1380044 () Bool)

(declare-fun b!5857203 () Bool)

(assert (= bs!1380044 (and b!5857203 b!5856271)))

(declare-fun lambda!320256 () Int)

(assert (=> bs!1380044 (not (= lambda!320256 lambda!320207))))

(declare-fun bs!1380045 () Bool)

(assert (= bs!1380045 (and b!5857203 b!5856281)))

(assert (=> bs!1380045 (= (and (= (regOne!32358 (regOne!32359 (regOne!32359 r!7292))) (regOne!32358 (regOne!32359 r!7292))) (= (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))) (regTwo!32358 (regOne!32359 r!7292)))) (= lambda!320256 lambda!320208))))

(declare-fun bs!1380046 () Bool)

(assert (= bs!1380046 (and b!5857203 b!5856296)))

(assert (=> bs!1380046 (not (= lambda!320256 lambda!320210))))

(declare-fun bs!1380047 () Bool)

(assert (= bs!1380047 (and b!5857203 b!5856224)))

(assert (=> bs!1380047 (= (and (= (regOne!32358 (regOne!32359 (regOne!32359 r!7292))) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320256 lambda!320206))))

(declare-fun bs!1380048 () Bool)

(assert (= bs!1380048 (and b!5857203 b!5857193)))

(assert (=> bs!1380048 (not (= lambda!320256 lambda!320255))))

(declare-fun bs!1380049 () Bool)

(assert (= bs!1380049 (and b!5857203 b!5857085)))

(assert (=> bs!1380049 (= (and (= (regOne!32358 (regOne!32359 (regOne!32359 r!7292))) (regOne!32358 (regTwo!32359 (regOne!32359 r!7292)))) (= (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))) (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))))) (= lambda!320256 lambda!320253))))

(declare-fun bs!1380050 () Bool)

(assert (= bs!1380050 (and b!5857203 b!5857075)))

(assert (=> bs!1380050 (not (= lambda!320256 lambda!320252))))

(declare-fun bs!1380051 () Bool)

(assert (= bs!1380051 (and b!5857203 b!5856214)))

(assert (=> bs!1380051 (not (= lambda!320256 lambda!320205))))

(declare-fun bs!1380052 () Bool)

(assert (= bs!1380052 (and b!5857203 b!5856306)))

(assert (=> bs!1380052 (= (and (= (regOne!32358 (regOne!32359 (regOne!32359 r!7292))) (regOne!32358 r!7292)) (= (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))) (regTwo!32358 r!7292))) (= lambda!320256 lambda!320211))))

(assert (=> b!5857203 true))

(assert (=> b!5857203 true))

(declare-fun e!3591500 () Bool)

(declare-fun call!458979 () Bool)

(assert (=> b!5857193 (= e!3591500 call!458979)))

(declare-fun b!5857194 () Bool)

(declare-fun e!3591498 () Bool)

(declare-fun call!458978 () Bool)

(assert (=> b!5857194 (= e!3591498 call!458978)))

(declare-fun b!5857195 () Bool)

(declare-fun c!1038786 () Bool)

(assert (=> b!5857195 (= c!1038786 ((_ is ElementMatch!15923) (regOne!32359 (regOne!32359 r!7292))))))

(declare-fun e!3591499 () Bool)

(declare-fun e!3591496 () Bool)

(assert (=> b!5857195 (= e!3591499 e!3591496)))

(declare-fun b!5857196 () Bool)

(declare-fun e!3591501 () Bool)

(assert (=> b!5857196 (= e!3591501 (matchRSpec!3024 (regTwo!32359 (regOne!32359 (regOne!32359 r!7292))) s!2326))))

(declare-fun b!5857198 () Bool)

(declare-fun c!1038784 () Bool)

(assert (=> b!5857198 (= c!1038784 ((_ is Union!15923) (regOne!32359 (regOne!32359 r!7292))))))

(declare-fun e!3591497 () Bool)

(assert (=> b!5857198 (= e!3591496 e!3591497)))

(declare-fun b!5857199 () Bool)

(declare-fun res!2465134 () Bool)

(assert (=> b!5857199 (=> res!2465134 e!3591500)))

(assert (=> b!5857199 (= res!2465134 call!458978)))

(declare-fun e!3591502 () Bool)

(assert (=> b!5857199 (= e!3591502 e!3591500)))

(declare-fun b!5857200 () Bool)

(assert (=> b!5857200 (= e!3591497 e!3591501)))

(declare-fun res!2465132 () Bool)

(assert (=> b!5857200 (= res!2465132 (matchRSpec!3024 (regOne!32359 (regOne!32359 (regOne!32359 r!7292))) s!2326))))

(assert (=> b!5857200 (=> res!2465132 e!3591501)))

(declare-fun b!5857201 () Bool)

(assert (=> b!5857201 (= e!3591498 e!3591499)))

(declare-fun res!2465133 () Bool)

(assert (=> b!5857201 (= res!2465133 (not ((_ is EmptyLang!15923) (regOne!32359 (regOne!32359 r!7292)))))))

(assert (=> b!5857201 (=> (not res!2465133) (not e!3591499))))

(declare-fun bm!458973 () Bool)

(assert (=> bm!458973 (= call!458978 (isEmpty!35805 s!2326))))

(declare-fun b!5857202 () Bool)

(assert (=> b!5857202 (= e!3591497 e!3591502)))

(declare-fun c!1038783 () Bool)

(assert (=> b!5857202 (= c!1038783 ((_ is Star!15923) (regOne!32359 (regOne!32359 r!7292))))))

(declare-fun d!1839477 () Bool)

(declare-fun c!1038785 () Bool)

(assert (=> d!1839477 (= c!1038785 ((_ is EmptyExpr!15923) (regOne!32359 (regOne!32359 r!7292))))))

(assert (=> d!1839477 (= (matchRSpec!3024 (regOne!32359 (regOne!32359 r!7292)) s!2326) e!3591498)))

(declare-fun b!5857197 () Bool)

(assert (=> b!5857197 (= e!3591496 (= s!2326 (Cons!63945 (c!1038343 (regOne!32359 (regOne!32359 r!7292))) Nil!63945)))))

(assert (=> b!5857203 (= e!3591502 call!458979)))

(declare-fun bm!458974 () Bool)

(assert (=> bm!458974 (= call!458979 (Exists!2995 (ite c!1038783 lambda!320255 lambda!320256)))))

(assert (= (and d!1839477 c!1038785) b!5857194))

(assert (= (and d!1839477 (not c!1038785)) b!5857201))

(assert (= (and b!5857201 res!2465133) b!5857195))

(assert (= (and b!5857195 c!1038786) b!5857197))

(assert (= (and b!5857195 (not c!1038786)) b!5857198))

(assert (= (and b!5857198 c!1038784) b!5857200))

(assert (= (and b!5857198 (not c!1038784)) b!5857202))

(assert (= (and b!5857200 (not res!2465132)) b!5857196))

(assert (= (and b!5857202 c!1038783) b!5857199))

(assert (= (and b!5857202 (not c!1038783)) b!5857203))

(assert (= (and b!5857199 (not res!2465134)) b!5857193))

(assert (= (or b!5857193 b!5857203) bm!458974))

(assert (= (or b!5857194 b!5857199) bm!458973))

(declare-fun m!6775288 () Bool)

(assert (=> b!5857196 m!6775288))

(declare-fun m!6775290 () Bool)

(assert (=> b!5857200 m!6775290))

(assert (=> bm!458973 m!6774476))

(declare-fun m!6775292 () Bool)

(assert (=> bm!458974 m!6775292))

(assert (=> b!5856278 d!1839477))

(assert (=> d!1839141 d!1839137))

(declare-fun d!1839479 () Bool)

(assert (=> d!1839479 (= (flatMap!1454 z!1189 lambda!320170) (dynLambda!25000 lambda!320170 (h!70394 zl!343)))))

(assert (=> d!1839479 true))

(declare-fun _$13!2571 () Unit!157117)

(assert (=> d!1839479 (= (choose!44408 z!1189 (h!70394 zl!343) lambda!320170) _$13!2571)))

(declare-fun b_lambda!220453 () Bool)

(assert (=> (not b_lambda!220453) (not d!1839479)))

(declare-fun bs!1380053 () Bool)

(assert (= bs!1380053 d!1839479))

(assert (=> bs!1380053 m!6774212))

(assert (=> bs!1380053 m!6774604))

(assert (=> d!1839141 d!1839479))

(declare-fun d!1839481 () Bool)

(declare-fun lambda!320259 () Int)

(declare-fun exists!2307 ((InoxSet Context!10614) Int) Bool)

(assert (=> d!1839481 (= (nullableZipper!1762 lt!2304905) (exists!2307 lt!2304905 lambda!320259))))

(declare-fun bs!1380054 () Bool)

(assert (= bs!1380054 d!1839481))

(declare-fun m!6775294 () Bool)

(assert (=> bs!1380054 m!6775294))

(assert (=> b!5856321 d!1839481))

(declare-fun b!5857204 () Bool)

(declare-fun e!3591504 () Bool)

(assert (=> b!5857204 (= e!3591504 (nullable!5923 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343))))))))))

(declare-fun b!5857205 () Bool)

(declare-fun e!3591505 () (InoxSet Context!10614))

(declare-fun e!3591503 () (InoxSet Context!10614))

(assert (=> b!5857205 (= e!3591505 e!3591503)))

(declare-fun c!1038789 () Bool)

(assert (=> b!5857205 (= c!1038789 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))))))))

(declare-fun d!1839483 () Bool)

(declare-fun c!1038790 () Bool)

(assert (=> d!1839483 (= c!1038790 e!3591504)))

(declare-fun res!2465135 () Bool)

(assert (=> d!1839483 (=> (not res!2465135) (not e!3591504))))

(assert (=> d!1839483 (= res!2465135 ((_ is Cons!63944) (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))))))))

(assert (=> d!1839483 (= (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (h!70393 s!2326)) e!3591505)))

(declare-fun b!5857206 () Bool)

(assert (=> b!5857206 (= e!3591503 ((as const (Array Context!10614 Bool)) false))))

(declare-fun bm!458975 () Bool)

(declare-fun call!458980 () (InoxSet Context!10614))

(assert (=> bm!458975 (= call!458980 (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343))))))) (h!70393 s!2326)))))

(declare-fun b!5857207 () Bool)

(assert (=> b!5857207 (= e!3591505 ((_ map or) call!458980 (derivationStepZipperUp!1115 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343))))))) (h!70393 s!2326))))))

(declare-fun b!5857208 () Bool)

(assert (=> b!5857208 (= e!3591503 call!458980)))

(assert (= (and d!1839483 res!2465135) b!5857204))

(assert (= (and d!1839483 c!1038790) b!5857207))

(assert (= (and d!1839483 (not c!1038790)) b!5857205))

(assert (= (and b!5857205 c!1038789) b!5857208))

(assert (= (and b!5857205 (not c!1038789)) b!5857206))

(assert (= (or b!5857207 b!5857208) bm!458975))

(declare-fun m!6775296 () Bool)

(assert (=> b!5857204 m!6775296))

(declare-fun m!6775298 () Bool)

(assert (=> bm!458975 m!6775298))

(declare-fun m!6775300 () Bool)

(assert (=> b!5857207 m!6775300))

(assert (=> b!5856331 d!1839483))

(declare-fun d!1839485 () Bool)

(assert (=> d!1839485 true))

(declare-fun setRes!39703 () Bool)

(assert (=> d!1839485 setRes!39703))

(declare-fun condSetEmpty!39703 () Bool)

(declare-fun res!2465138 () (InoxSet Context!10614))

(assert (=> d!1839485 (= condSetEmpty!39703 (= res!2465138 ((as const (Array Context!10614 Bool)) false)))))

(assert (=> d!1839485 (= (choose!44407 z!1189 lambda!320170) res!2465138)))

(declare-fun setIsEmpty!39703 () Bool)

(assert (=> setIsEmpty!39703 setRes!39703))

(declare-fun tp!1620209 () Bool)

(declare-fun setNonEmpty!39703 () Bool)

(declare-fun e!3591508 () Bool)

(declare-fun setElem!39703 () Context!10614)

(assert (=> setNonEmpty!39703 (= setRes!39703 (and tp!1620209 (inv!83054 setElem!39703) e!3591508))))

(declare-fun setRest!39703 () (InoxSet Context!10614))

(assert (=> setNonEmpty!39703 (= res!2465138 ((_ map or) (store ((as const (Array Context!10614 Bool)) false) setElem!39703 true) setRest!39703))))

(declare-fun b!5857211 () Bool)

(declare-fun tp!1620210 () Bool)

(assert (=> b!5857211 (= e!3591508 tp!1620210)))

(assert (= (and d!1839485 condSetEmpty!39703) setIsEmpty!39703))

(assert (= (and d!1839485 (not condSetEmpty!39703)) setNonEmpty!39703))

(assert (= setNonEmpty!39703 b!5857211))

(declare-fun m!6775302 () Bool)

(assert (=> setNonEmpty!39703 m!6775302))

(assert (=> d!1839137 d!1839485))

(assert (=> d!1839129 d!1839127))

(assert (=> d!1839129 d!1839125))

(declare-fun d!1839487 () Bool)

(assert (=> d!1839487 (= (matchR!8106 r!7292 s!2326) (matchRSpec!3024 r!7292 s!2326))))

(assert (=> d!1839487 true))

(declare-fun _$88!4279 () Unit!157117)

(assert (=> d!1839487 (= (choose!44405 r!7292 s!2326) _$88!4279)))

(declare-fun bs!1380055 () Bool)

(assert (= bs!1380055 d!1839487))

(assert (=> bs!1380055 m!6774228))

(assert (=> bs!1380055 m!6774226))

(assert (=> d!1839129 d!1839487))

(assert (=> d!1839129 d!1839151))

(declare-fun d!1839489 () Bool)

(assert (=> d!1839489 (= (isEmpty!35806 (t!377435 (exprs!5807 (h!70394 zl!343)))) ((_ is Nil!63944) (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> b!5856419 d!1839489))

(assert (=> b!5856309 d!1839421))

(declare-fun bs!1380056 () Bool)

(declare-fun d!1839491 () Bool)

(assert (= bs!1380056 (and d!1839491 d!1839481)))

(declare-fun lambda!320260 () Int)

(assert (=> bs!1380056 (= lambda!320260 lambda!320259)))

(assert (=> d!1839491 (= (nullableZipper!1762 lt!2304900) (exists!2307 lt!2304900 lambda!320260))))

(declare-fun bs!1380057 () Bool)

(assert (= bs!1380057 d!1839491))

(declare-fun m!6775304 () Bool)

(assert (=> bs!1380057 m!6775304))

(assert (=> b!5856146 d!1839491))

(declare-fun b!5857212 () Bool)

(declare-fun e!3591512 () Bool)

(declare-fun call!458983 () Bool)

(assert (=> b!5857212 (= e!3591512 call!458983)))

(declare-fun b!5857213 () Bool)

(declare-fun e!3591509 () Bool)

(declare-fun e!3591515 () Bool)

(assert (=> b!5857213 (= e!3591509 e!3591515)))

(declare-fun c!1038792 () Bool)

(assert (=> b!5857213 (= c!1038792 ((_ is Union!15923) lt!2304966))))

(declare-fun c!1038791 () Bool)

(declare-fun call!458982 () Bool)

(declare-fun bm!458976 () Bool)

(assert (=> bm!458976 (= call!458982 (validRegex!7659 (ite c!1038791 (reg!16252 lt!2304966) (ite c!1038792 (regTwo!32359 lt!2304966) (regTwo!32358 lt!2304966)))))))

(declare-fun b!5857214 () Bool)

(declare-fun e!3591510 () Bool)

(declare-fun e!3591513 () Bool)

(assert (=> b!5857214 (= e!3591510 e!3591513)))

(declare-fun res!2465139 () Bool)

(assert (=> b!5857214 (=> (not res!2465139) (not e!3591513))))

(declare-fun call!458981 () Bool)

(assert (=> b!5857214 (= res!2465139 call!458981)))

(declare-fun b!5857215 () Bool)

(declare-fun e!3591514 () Bool)

(assert (=> b!5857215 (= e!3591514 e!3591509)))

(assert (=> b!5857215 (= c!1038791 ((_ is Star!15923) lt!2304966))))

(declare-fun b!5857216 () Bool)

(declare-fun e!3591511 () Bool)

(assert (=> b!5857216 (= e!3591509 e!3591511)))

(declare-fun res!2465141 () Bool)

(assert (=> b!5857216 (= res!2465141 (not (nullable!5923 (reg!16252 lt!2304966))))))

(assert (=> b!5857216 (=> (not res!2465141) (not e!3591511))))

(declare-fun b!5857217 () Bool)

(declare-fun res!2465142 () Bool)

(assert (=> b!5857217 (=> (not res!2465142) (not e!3591512))))

(assert (=> b!5857217 (= res!2465142 call!458981)))

(assert (=> b!5857217 (= e!3591515 e!3591512)))

(declare-fun d!1839493 () Bool)

(declare-fun res!2465140 () Bool)

(assert (=> d!1839493 (=> res!2465140 e!3591514)))

(assert (=> d!1839493 (= res!2465140 ((_ is ElementMatch!15923) lt!2304966))))

(assert (=> d!1839493 (= (validRegex!7659 lt!2304966) e!3591514)))

(declare-fun b!5857218 () Bool)

(assert (=> b!5857218 (= e!3591513 call!458983)))

(declare-fun b!5857219 () Bool)

(assert (=> b!5857219 (= e!3591511 call!458982)))

(declare-fun bm!458977 () Bool)

(assert (=> bm!458977 (= call!458983 call!458982)))

(declare-fun b!5857220 () Bool)

(declare-fun res!2465143 () Bool)

(assert (=> b!5857220 (=> res!2465143 e!3591510)))

(assert (=> b!5857220 (= res!2465143 (not ((_ is Concat!24768) lt!2304966)))))

(assert (=> b!5857220 (= e!3591515 e!3591510)))

(declare-fun bm!458978 () Bool)

(assert (=> bm!458978 (= call!458981 (validRegex!7659 (ite c!1038792 (regOne!32359 lt!2304966) (regOne!32358 lt!2304966))))))

(assert (= (and d!1839493 (not res!2465140)) b!5857215))

(assert (= (and b!5857215 c!1038791) b!5857216))

(assert (= (and b!5857215 (not c!1038791)) b!5857213))

(assert (= (and b!5857216 res!2465141) b!5857219))

(assert (= (and b!5857213 c!1038792) b!5857217))

(assert (= (and b!5857213 (not c!1038792)) b!5857220))

(assert (= (and b!5857217 res!2465142) b!5857212))

(assert (= (and b!5857220 (not res!2465143)) b!5857214))

(assert (= (and b!5857214 res!2465139) b!5857218))

(assert (= (or b!5857212 b!5857218) bm!458977))

(assert (= (or b!5857217 b!5857214) bm!458978))

(assert (= (or b!5857219 bm!458977) bm!458976))

(declare-fun m!6775306 () Bool)

(assert (=> bm!458976 m!6775306))

(declare-fun m!6775308 () Bool)

(assert (=> b!5857216 m!6775308))

(declare-fun m!6775310 () Bool)

(assert (=> bm!458978 m!6775310))

(assert (=> d!1839147 d!1839493))

(declare-fun d!1839495 () Bool)

(declare-fun res!2465144 () Bool)

(declare-fun e!3591516 () Bool)

(assert (=> d!1839495 (=> res!2465144 e!3591516)))

(assert (=> d!1839495 (= res!2465144 ((_ is Nil!63944) (unfocusZipperList!1344 zl!343)))))

(assert (=> d!1839495 (= (forall!15010 (unfocusZipperList!1344 zl!343) lambda!320218) e!3591516)))

(declare-fun b!5857221 () Bool)

(declare-fun e!3591517 () Bool)

(assert (=> b!5857221 (= e!3591516 e!3591517)))

(declare-fun res!2465145 () Bool)

(assert (=> b!5857221 (=> (not res!2465145) (not e!3591517))))

(assert (=> b!5857221 (= res!2465145 (dynLambda!25002 lambda!320218 (h!70392 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5857222 () Bool)

(assert (=> b!5857222 (= e!3591517 (forall!15010 (t!377435 (unfocusZipperList!1344 zl!343)) lambda!320218))))

(assert (= (and d!1839495 (not res!2465144)) b!5857221))

(assert (= (and b!5857221 res!2465145) b!5857222))

(declare-fun b_lambda!220455 () Bool)

(assert (=> (not b_lambda!220455) (not b!5857221)))

(declare-fun m!6775312 () Bool)

(assert (=> b!5857221 m!6775312))

(declare-fun m!6775314 () Bool)

(assert (=> b!5857222 m!6775314))

(assert (=> d!1839147 d!1839495))

(declare-fun b!5857223 () Bool)

(declare-fun e!3591521 () Bool)

(declare-fun call!458986 () Bool)

(assert (=> b!5857223 (= e!3591521 call!458986)))

(declare-fun b!5857224 () Bool)

(declare-fun e!3591518 () Bool)

(declare-fun e!3591524 () Bool)

(assert (=> b!5857224 (= e!3591518 e!3591524)))

(declare-fun c!1038794 () Bool)

(assert (=> b!5857224 (= c!1038794 ((_ is Union!15923) lt!2304972))))

(declare-fun bm!458979 () Bool)

(declare-fun call!458985 () Bool)

(declare-fun c!1038793 () Bool)

(assert (=> bm!458979 (= call!458985 (validRegex!7659 (ite c!1038793 (reg!16252 lt!2304972) (ite c!1038794 (regTwo!32359 lt!2304972) (regTwo!32358 lt!2304972)))))))

(declare-fun b!5857225 () Bool)

(declare-fun e!3591519 () Bool)

(declare-fun e!3591522 () Bool)

(assert (=> b!5857225 (= e!3591519 e!3591522)))

(declare-fun res!2465146 () Bool)

(assert (=> b!5857225 (=> (not res!2465146) (not e!3591522))))

(declare-fun call!458984 () Bool)

(assert (=> b!5857225 (= res!2465146 call!458984)))

(declare-fun b!5857226 () Bool)

(declare-fun e!3591523 () Bool)

(assert (=> b!5857226 (= e!3591523 e!3591518)))

(assert (=> b!5857226 (= c!1038793 ((_ is Star!15923) lt!2304972))))

(declare-fun b!5857227 () Bool)

(declare-fun e!3591520 () Bool)

(assert (=> b!5857227 (= e!3591518 e!3591520)))

(declare-fun res!2465148 () Bool)

(assert (=> b!5857227 (= res!2465148 (not (nullable!5923 (reg!16252 lt!2304972))))))

(assert (=> b!5857227 (=> (not res!2465148) (not e!3591520))))

(declare-fun b!5857228 () Bool)

(declare-fun res!2465149 () Bool)

(assert (=> b!5857228 (=> (not res!2465149) (not e!3591521))))

(assert (=> b!5857228 (= res!2465149 call!458984)))

(assert (=> b!5857228 (= e!3591524 e!3591521)))

(declare-fun d!1839497 () Bool)

(declare-fun res!2465147 () Bool)

(assert (=> d!1839497 (=> res!2465147 e!3591523)))

(assert (=> d!1839497 (= res!2465147 ((_ is ElementMatch!15923) lt!2304972))))

(assert (=> d!1839497 (= (validRegex!7659 lt!2304972) e!3591523)))

(declare-fun b!5857229 () Bool)

(assert (=> b!5857229 (= e!3591522 call!458986)))

(declare-fun b!5857230 () Bool)

(assert (=> b!5857230 (= e!3591520 call!458985)))

(declare-fun bm!458980 () Bool)

(assert (=> bm!458980 (= call!458986 call!458985)))

(declare-fun b!5857231 () Bool)

(declare-fun res!2465150 () Bool)

(assert (=> b!5857231 (=> res!2465150 e!3591519)))

(assert (=> b!5857231 (= res!2465150 (not ((_ is Concat!24768) lt!2304972)))))

(assert (=> b!5857231 (= e!3591524 e!3591519)))

(declare-fun bm!458981 () Bool)

(assert (=> bm!458981 (= call!458984 (validRegex!7659 (ite c!1038794 (regOne!32359 lt!2304972) (regOne!32358 lt!2304972))))))

(assert (= (and d!1839497 (not res!2465147)) b!5857226))

(assert (= (and b!5857226 c!1038793) b!5857227))

(assert (= (and b!5857226 (not c!1038793)) b!5857224))

(assert (= (and b!5857227 res!2465148) b!5857230))

(assert (= (and b!5857224 c!1038794) b!5857228))

(assert (= (and b!5857224 (not c!1038794)) b!5857231))

(assert (= (and b!5857228 res!2465149) b!5857223))

(assert (= (and b!5857231 (not res!2465150)) b!5857225))

(assert (= (and b!5857225 res!2465146) b!5857229))

(assert (= (or b!5857223 b!5857229) bm!458980))

(assert (= (or b!5857228 b!5857225) bm!458981))

(assert (= (or b!5857230 bm!458980) bm!458979))

(declare-fun m!6775316 () Bool)

(assert (=> bm!458979 m!6775316))

(declare-fun m!6775318 () Bool)

(assert (=> b!5857227 m!6775318))

(declare-fun m!6775320 () Bool)

(assert (=> bm!458981 m!6775320))

(assert (=> d!1839153 d!1839497))

(declare-fun d!1839499 () Bool)

(declare-fun res!2465151 () Bool)

(declare-fun e!3591525 () Bool)

(assert (=> d!1839499 (=> res!2465151 e!3591525)))

(assert (=> d!1839499 (= res!2465151 ((_ is Nil!63944) (exprs!5807 (h!70394 zl!343))))))

(assert (=> d!1839499 (= (forall!15010 (exprs!5807 (h!70394 zl!343)) lambda!320224) e!3591525)))

(declare-fun b!5857232 () Bool)

(declare-fun e!3591526 () Bool)

(assert (=> b!5857232 (= e!3591525 e!3591526)))

(declare-fun res!2465152 () Bool)

(assert (=> b!5857232 (=> (not res!2465152) (not e!3591526))))

(assert (=> b!5857232 (= res!2465152 (dynLambda!25002 lambda!320224 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5857233 () Bool)

(assert (=> b!5857233 (= e!3591526 (forall!15010 (t!377435 (exprs!5807 (h!70394 zl!343))) lambda!320224))))

(assert (= (and d!1839499 (not res!2465151)) b!5857232))

(assert (= (and b!5857232 res!2465152) b!5857233))

(declare-fun b_lambda!220457 () Bool)

(assert (=> (not b_lambda!220457) (not b!5857232)))

(declare-fun m!6775322 () Bool)

(assert (=> b!5857232 m!6775322))

(declare-fun m!6775324 () Bool)

(assert (=> b!5857233 m!6775324))

(assert (=> d!1839153 d!1839499))

(declare-fun d!1839501 () Bool)

(assert (=> d!1839501 (= (nullable!5923 (h!70392 (exprs!5807 (h!70394 zl!343)))) (nullableFct!1910 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun bs!1380058 () Bool)

(assert (= bs!1380058 d!1839501))

(declare-fun m!6775326 () Bool)

(assert (=> bs!1380058 m!6775326))

(assert (=> b!5856328 d!1839501))

(assert (=> b!5856259 d!1839421))

(declare-fun d!1839503 () Bool)

(assert (=> d!1839503 (= ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038467 c!1038471) (regTwo!32358 r!7292) r!7292)) (Cons!63944 (ite (or c!1038467 c!1038471) (regTwo!32358 r!7292) r!7292) (exprs!5807 lt!2304898)))))

(assert (=> bm!458747 d!1839503))

(declare-fun d!1839505 () Bool)

(assert (=> d!1839505 (= (isEmpty!35806 (exprs!5807 (h!70394 zl!343))) ((_ is Nil!63944) (exprs!5807 (h!70394 zl!343))))))

(assert (=> b!5856423 d!1839505))

(declare-fun d!1839507 () Bool)

(assert (=> d!1839507 (= ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038487 c!1038491) (regTwo!32358 (regTwo!32359 r!7292)) (regTwo!32359 r!7292))) (Cons!63944 (ite (or c!1038487 c!1038491) (regTwo!32358 (regTwo!32359 r!7292)) (regTwo!32359 r!7292)) (exprs!5807 lt!2304898)))))

(assert (=> bm!458758 d!1839507))

(declare-fun d!1839509 () Bool)

(assert (=> d!1839509 (= (isEmptyLang!1366 lt!2304966) ((_ is EmptyLang!15923) lt!2304966))))

(assert (=> b!5856356 d!1839509))

(declare-fun d!1839511 () Bool)

(declare-fun res!2465153 () Bool)

(declare-fun e!3591527 () Bool)

(assert (=> d!1839511 (=> res!2465153 e!3591527)))

(assert (=> d!1839511 (= res!2465153 ((_ is Nil!63944) (exprs!5807 lt!2304891)))))

(assert (=> d!1839511 (= (forall!15010 (exprs!5807 lt!2304891) lambda!320200) e!3591527)))

(declare-fun b!5857234 () Bool)

(declare-fun e!3591528 () Bool)

(assert (=> b!5857234 (= e!3591527 e!3591528)))

(declare-fun res!2465154 () Bool)

(assert (=> b!5857234 (=> (not res!2465154) (not e!3591528))))

(assert (=> b!5857234 (= res!2465154 (dynLambda!25002 lambda!320200 (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun b!5857235 () Bool)

(assert (=> b!5857235 (= e!3591528 (forall!15010 (t!377435 (exprs!5807 lt!2304891)) lambda!320200))))

(assert (= (and d!1839511 (not res!2465153)) b!5857234))

(assert (= (and b!5857234 res!2465154) b!5857235))

(declare-fun b_lambda!220459 () Bool)

(assert (=> (not b_lambda!220459) (not b!5857234)))

(declare-fun m!6775328 () Bool)

(assert (=> b!5857234 m!6775328))

(declare-fun m!6775330 () Bool)

(assert (=> b!5857235 m!6775330))

(assert (=> d!1839099 d!1839511))

(declare-fun b!5857236 () Bool)

(declare-fun e!3591532 () Bool)

(declare-fun call!458989 () Bool)

(assert (=> b!5857236 (= e!3591532 call!458989)))

(declare-fun b!5857237 () Bool)

(declare-fun e!3591529 () Bool)

(declare-fun e!3591535 () Bool)

(assert (=> b!5857237 (= e!3591529 e!3591535)))

(declare-fun c!1038796 () Bool)

(assert (=> b!5857237 (= c!1038796 ((_ is Union!15923) (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))

(declare-fun call!458988 () Bool)

(declare-fun c!1038795 () Bool)

(declare-fun bm!458982 () Bool)

(assert (=> bm!458982 (= call!458988 (validRegex!7659 (ite c!1038795 (reg!16252 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))) (ite c!1038796 (regTwo!32359 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))) (regTwo!32358 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292))))))))))

(declare-fun b!5857238 () Bool)

(declare-fun e!3591530 () Bool)

(declare-fun e!3591533 () Bool)

(assert (=> b!5857238 (= e!3591530 e!3591533)))

(declare-fun res!2465155 () Bool)

(assert (=> b!5857238 (=> (not res!2465155) (not e!3591533))))

(declare-fun call!458987 () Bool)

(assert (=> b!5857238 (= res!2465155 call!458987)))

(declare-fun b!5857239 () Bool)

(declare-fun e!3591534 () Bool)

(assert (=> b!5857239 (= e!3591534 e!3591529)))

(assert (=> b!5857239 (= c!1038795 ((_ is Star!15923) (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))

(declare-fun b!5857240 () Bool)

(declare-fun e!3591531 () Bool)

(assert (=> b!5857240 (= e!3591529 e!3591531)))

(declare-fun res!2465157 () Bool)

(assert (=> b!5857240 (= res!2465157 (not (nullable!5923 (reg!16252 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))))

(assert (=> b!5857240 (=> (not res!2465157) (not e!3591531))))

(declare-fun b!5857241 () Bool)

(declare-fun res!2465158 () Bool)

(assert (=> b!5857241 (=> (not res!2465158) (not e!3591532))))

(assert (=> b!5857241 (= res!2465158 call!458987)))

(assert (=> b!5857241 (= e!3591535 e!3591532)))

(declare-fun d!1839513 () Bool)

(declare-fun res!2465156 () Bool)

(assert (=> d!1839513 (=> res!2465156 e!3591534)))

(assert (=> d!1839513 (= res!2465156 ((_ is ElementMatch!15923) (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))

(assert (=> d!1839513 (= (validRegex!7659 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))) e!3591534)))

(declare-fun b!5857242 () Bool)

(assert (=> b!5857242 (= e!3591533 call!458989)))

(declare-fun b!5857243 () Bool)

(assert (=> b!5857243 (= e!3591531 call!458988)))

(declare-fun bm!458983 () Bool)

(assert (=> bm!458983 (= call!458989 call!458988)))

(declare-fun b!5857244 () Bool)

(declare-fun res!2465159 () Bool)

(assert (=> b!5857244 (=> res!2465159 e!3591530)))

(assert (=> b!5857244 (= res!2465159 (not ((_ is Concat!24768) (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292))))))))

(assert (=> b!5857244 (= e!3591535 e!3591530)))

(declare-fun bm!458984 () Bool)

(assert (=> bm!458984 (= call!458987 (validRegex!7659 (ite c!1038796 (regOne!32359 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))) (regOne!32358 (ite c!1038556 (reg!16252 r!7292) (ite c!1038557 (regTwo!32359 r!7292) (regTwo!32358 r!7292)))))))))

(assert (= (and d!1839513 (not res!2465156)) b!5857239))

(assert (= (and b!5857239 c!1038795) b!5857240))

(assert (= (and b!5857239 (not c!1038795)) b!5857237))

(assert (= (and b!5857240 res!2465157) b!5857243))

(assert (= (and b!5857237 c!1038796) b!5857241))

(assert (= (and b!5857237 (not c!1038796)) b!5857244))

(assert (= (and b!5857241 res!2465158) b!5857236))

(assert (= (and b!5857244 (not res!2465159)) b!5857238))

(assert (= (and b!5857238 res!2465155) b!5857242))

(assert (= (or b!5857236 b!5857242) bm!458983))

(assert (= (or b!5857241 b!5857238) bm!458984))

(assert (= (or b!5857243 bm!458983) bm!458982))

(declare-fun m!6775332 () Bool)

(assert (=> bm!458982 m!6775332))

(declare-fun m!6775334 () Bool)

(assert (=> b!5857240 m!6775334))

(declare-fun m!6775336 () Bool)

(assert (=> bm!458984 m!6775336))

(assert (=> bm!458791 d!1839513))

(declare-fun bs!1380059 () Bool)

(declare-fun d!1839515 () Bool)

(assert (= bs!1380059 (and d!1839515 d!1839481)))

(declare-fun lambda!320261 () Int)

(assert (=> bs!1380059 (= lambda!320261 lambda!320259)))

(declare-fun bs!1380060 () Bool)

(assert (= bs!1380060 (and d!1839515 d!1839491)))

(assert (=> bs!1380060 (= lambda!320261 lambda!320260)))

(assert (=> d!1839515 (= (nullableZipper!1762 lt!2304909) (exists!2307 lt!2304909 lambda!320261))))

(declare-fun bs!1380061 () Bool)

(assert (= bs!1380061 d!1839515))

(declare-fun m!6775338 () Bool)

(assert (=> bs!1380061 m!6775338))

(assert (=> b!5856148 d!1839515))

(declare-fun d!1839517 () Bool)

(assert (=> d!1839517 (= (nullable!5923 (regOne!32359 r!7292)) (nullableFct!1910 (regOne!32359 r!7292)))))

(declare-fun bs!1380062 () Bool)

(assert (= bs!1380062 d!1839517))

(declare-fun m!6775340 () Bool)

(assert (=> bs!1380062 m!6775340))

(assert (=> b!5856286 d!1839517))

(declare-fun d!1839519 () Bool)

(assert (=> d!1839519 (= (isEmpty!35806 (tail!11486 (exprs!5807 (h!70394 zl!343)))) ((_ is Nil!63944) (tail!11486 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> b!5856427 d!1839519))

(declare-fun d!1839521 () Bool)

(assert (=> d!1839521 (= (tail!11486 (exprs!5807 (h!70394 zl!343))) (t!377435 (exprs!5807 (h!70394 zl!343))))))

(assert (=> b!5856427 d!1839521))

(declare-fun d!1839523 () Bool)

(assert (=> d!1839523 (= (isEmpty!35806 (tail!11486 (unfocusZipperList!1344 zl!343))) ((_ is Nil!63944) (tail!11486 (unfocusZipperList!1344 zl!343))))))

(assert (=> b!5856364 d!1839523))

(declare-fun d!1839525 () Bool)

(assert (=> d!1839525 (= (tail!11486 (unfocusZipperList!1344 zl!343)) (t!377435 (unfocusZipperList!1344 zl!343)))))

(assert (=> b!5856364 d!1839525))

(declare-fun d!1839527 () Bool)

(assert (=> d!1839527 (= (Exists!2995 (ite c!1038525 lambda!320210 lambda!320211)) (choose!44411 (ite c!1038525 lambda!320210 lambda!320211)))))

(declare-fun bs!1380063 () Bool)

(assert (= bs!1380063 d!1839527))

(declare-fun m!6775342 () Bool)

(assert (=> bs!1380063 m!6775342))

(assert (=> bm!458782 d!1839527))

(declare-fun b!5857245 () Bool)

(declare-fun e!3591541 () (InoxSet Context!10614))

(declare-fun call!458992 () (InoxSet Context!10614))

(assert (=> b!5857245 (= e!3591541 call!458992)))

(declare-fun b!5857246 () Bool)

(assert (=> b!5857246 (= e!3591541 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857247 () Bool)

(declare-fun e!3591538 () (InoxSet Context!10614))

(assert (=> b!5857247 (= e!3591538 (store ((as const (Array Context!10614 Bool)) false) (Context!10615 (t!377435 (exprs!5807 lt!2304891))) true))))

(declare-fun b!5857248 () Bool)

(declare-fun e!3591537 () (InoxSet Context!10614))

(assert (=> b!5857248 (= e!3591538 e!3591537)))

(declare-fun c!1038800 () Bool)

(assert (=> b!5857248 (= c!1038800 ((_ is Union!15923) (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun c!1038797 () Bool)

(declare-fun call!458995 () List!64068)

(declare-fun bm!458986 () Bool)

(declare-fun c!1038801 () Bool)

(assert (=> bm!458986 (= call!458995 ($colon$colon!1828 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 lt!2304891)))) (ite (or c!1038797 c!1038801) (regTwo!32358 (h!70392 (exprs!5807 lt!2304891))) (h!70392 (exprs!5807 lt!2304891)))))))

(declare-fun b!5857249 () Bool)

(declare-fun e!3591536 () (InoxSet Context!10614))

(declare-fun call!458990 () (InoxSet Context!10614))

(declare-fun call!458991 () (InoxSet Context!10614))

(assert (=> b!5857249 (= e!3591536 ((_ map or) call!458990 call!458991))))

(declare-fun bm!458987 () Bool)

(assert (=> bm!458987 (= call!458990 (derivationStepZipperDown!1189 (ite c!1038800 (regTwo!32359 (h!70392 (exprs!5807 lt!2304891))) (regOne!32358 (h!70392 (exprs!5807 lt!2304891)))) (ite c!1038800 (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (Context!10615 call!458995)) (h!70393 s!2326)))))

(declare-fun bm!458988 () Bool)

(assert (=> bm!458988 (= call!458992 call!458991)))

(declare-fun d!1839529 () Bool)

(declare-fun c!1038798 () Bool)

(assert (=> d!1839529 (= c!1038798 (and ((_ is ElementMatch!15923) (h!70392 (exprs!5807 lt!2304891))) (= (c!1038343 (h!70392 (exprs!5807 lt!2304891))) (h!70393 s!2326))))))

(assert (=> d!1839529 (= (derivationStepZipperDown!1189 (h!70392 (exprs!5807 lt!2304891)) (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (h!70393 s!2326)) e!3591538)))

(declare-fun bm!458985 () Bool)

(declare-fun call!458993 () List!64068)

(assert (=> bm!458985 (= call!458993 call!458995)))

(declare-fun bm!458989 () Bool)

(declare-fun call!458994 () (InoxSet Context!10614))

(assert (=> bm!458989 (= call!458991 call!458994)))

(declare-fun b!5857250 () Bool)

(declare-fun e!3591540 () (InoxSet Context!10614))

(assert (=> b!5857250 (= e!3591540 call!458992)))

(declare-fun b!5857251 () Bool)

(declare-fun e!3591539 () Bool)

(assert (=> b!5857251 (= e!3591539 (nullable!5923 (regOne!32358 (h!70392 (exprs!5807 lt!2304891)))))))

(declare-fun b!5857252 () Bool)

(assert (=> b!5857252 (= c!1038797 e!3591539)))

(declare-fun res!2465160 () Bool)

(assert (=> b!5857252 (=> (not res!2465160) (not e!3591539))))

(assert (=> b!5857252 (= res!2465160 ((_ is Concat!24768) (h!70392 (exprs!5807 lt!2304891))))))

(assert (=> b!5857252 (= e!3591537 e!3591536)))

(declare-fun b!5857253 () Bool)

(assert (=> b!5857253 (= e!3591536 e!3591540)))

(assert (=> b!5857253 (= c!1038801 ((_ is Concat!24768) (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun bm!458990 () Bool)

(assert (=> bm!458990 (= call!458994 (derivationStepZipperDown!1189 (ite c!1038800 (regOne!32359 (h!70392 (exprs!5807 lt!2304891))) (ite c!1038797 (regTwo!32358 (h!70392 (exprs!5807 lt!2304891))) (ite c!1038801 (regOne!32358 (h!70392 (exprs!5807 lt!2304891))) (reg!16252 (h!70392 (exprs!5807 lt!2304891)))))) (ite (or c!1038800 c!1038797) (Context!10615 (t!377435 (exprs!5807 lt!2304891))) (Context!10615 call!458993)) (h!70393 s!2326)))))

(declare-fun b!5857254 () Bool)

(declare-fun c!1038799 () Bool)

(assert (=> b!5857254 (= c!1038799 ((_ is Star!15923) (h!70392 (exprs!5807 lt!2304891))))))

(assert (=> b!5857254 (= e!3591540 e!3591541)))

(declare-fun b!5857255 () Bool)

(assert (=> b!5857255 (= e!3591537 ((_ map or) call!458994 call!458990))))

(assert (= (and d!1839529 c!1038798) b!5857247))

(assert (= (and d!1839529 (not c!1038798)) b!5857248))

(assert (= (and b!5857248 c!1038800) b!5857255))

(assert (= (and b!5857248 (not c!1038800)) b!5857252))

(assert (= (and b!5857252 res!2465160) b!5857251))

(assert (= (and b!5857252 c!1038797) b!5857249))

(assert (= (and b!5857252 (not c!1038797)) b!5857253))

(assert (= (and b!5857253 c!1038801) b!5857250))

(assert (= (and b!5857253 (not c!1038801)) b!5857254))

(assert (= (and b!5857254 c!1038799) b!5857245))

(assert (= (and b!5857254 (not c!1038799)) b!5857246))

(assert (= (or b!5857250 b!5857245) bm!458985))

(assert (= (or b!5857250 b!5857245) bm!458988))

(assert (= (or b!5857249 bm!458985) bm!458986))

(assert (= (or b!5857249 bm!458988) bm!458989))

(assert (= (or b!5857255 b!5857249) bm!458987))

(assert (= (or b!5857255 bm!458989) bm!458990))

(declare-fun m!6775344 () Bool)

(assert (=> bm!458986 m!6775344))

(declare-fun m!6775346 () Bool)

(assert (=> b!5857251 m!6775346))

(declare-fun m!6775348 () Bool)

(assert (=> bm!458990 m!6775348))

(declare-fun m!6775350 () Bool)

(assert (=> bm!458987 m!6775350))

(declare-fun m!6775352 () Bool)

(assert (=> b!5857247 m!6775352))

(assert (=> bm!458756 d!1839529))

(declare-fun d!1839531 () Bool)

(assert (=> d!1839531 (= (Exists!2995 (ite c!1038505 lambda!320205 lambda!320206)) (choose!44411 (ite c!1038505 lambda!320205 lambda!320206)))))

(declare-fun bs!1380064 () Bool)

(assert (= bs!1380064 d!1839531))

(declare-fun m!6775354 () Bool)

(assert (=> bs!1380064 m!6775354))

(assert (=> bm!458774 d!1839531))

(declare-fun b!5857256 () Bool)

(declare-fun e!3591547 () (InoxSet Context!10614))

(declare-fun call!458998 () (InoxSet Context!10614))

(assert (=> b!5857256 (= e!3591547 call!458998)))

(declare-fun b!5857257 () Bool)

(assert (=> b!5857257 (= e!3591547 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857258 () Bool)

(declare-fun e!3591544 () (InoxSet Context!10614))

(assert (=> b!5857258 (= e!3591544 (store ((as const (Array Context!10614 Bool)) false) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) true))))

(declare-fun b!5857259 () Bool)

(declare-fun e!3591543 () (InoxSet Context!10614))

(assert (=> b!5857259 (= e!3591544 e!3591543)))

(declare-fun c!1038805 () Bool)

(assert (=> b!5857259 (= c!1038805 ((_ is Union!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(declare-fun call!459001 () List!64068)

(declare-fun bm!458992 () Bool)

(declare-fun c!1038806 () Bool)

(declare-fun c!1038802 () Bool)

(assert (=> bm!458992 (= call!459001 ($colon$colon!1828 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))) (ite (or c!1038802 c!1038806) (regTwo!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))))

(declare-fun b!5857260 () Bool)

(declare-fun e!3591542 () (InoxSet Context!10614))

(declare-fun call!458996 () (InoxSet Context!10614))

(declare-fun call!458997 () (InoxSet Context!10614))

(assert (=> b!5857260 (= e!3591542 ((_ map or) call!458996 call!458997))))

(declare-fun bm!458993 () Bool)

(assert (=> bm!458993 (= call!458996 (derivationStepZipperDown!1189 (ite c!1038805 (regTwo!32359 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))) (ite c!1038805 (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (Context!10615 call!459001)) (h!70393 s!2326)))))

(declare-fun bm!458994 () Bool)

(assert (=> bm!458994 (= call!458998 call!458997)))

(declare-fun d!1839533 () Bool)

(declare-fun c!1038803 () Bool)

(assert (=> d!1839533 (= c!1038803 (and ((_ is ElementMatch!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (= (c!1038343 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70393 s!2326))))))

(assert (=> d!1839533 (= (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (h!70393 s!2326)) e!3591544)))

(declare-fun bm!458991 () Bool)

(declare-fun call!458999 () List!64068)

(assert (=> bm!458991 (= call!458999 call!459001)))

(declare-fun bm!458995 () Bool)

(declare-fun call!459000 () (InoxSet Context!10614))

(assert (=> bm!458995 (= call!458997 call!459000)))

(declare-fun b!5857261 () Bool)

(declare-fun e!3591546 () (InoxSet Context!10614))

(assert (=> b!5857261 (= e!3591546 call!458998)))

(declare-fun b!5857262 () Bool)

(declare-fun e!3591545 () Bool)

(assert (=> b!5857262 (= e!3591545 (nullable!5923 (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))))

(declare-fun b!5857263 () Bool)

(assert (=> b!5857263 (= c!1038802 e!3591545)))

(declare-fun res!2465161 () Bool)

(assert (=> b!5857263 (=> (not res!2465161) (not e!3591545))))

(assert (=> b!5857263 (= res!2465161 ((_ is Concat!24768) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(assert (=> b!5857263 (= e!3591543 e!3591542)))

(declare-fun b!5857264 () Bool)

(assert (=> b!5857264 (= e!3591542 e!3591546)))

(assert (=> b!5857264 (= c!1038806 ((_ is Concat!24768) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(declare-fun bm!458996 () Bool)

(assert (=> bm!458996 (= call!459000 (derivationStepZipperDown!1189 (ite c!1038805 (regOne!32359 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (ite c!1038802 (regTwo!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (ite c!1038806 (regOne!32358 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (reg!16252 (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944)))))))) (ite (or c!1038805 c!1038802) (Context!10615 (t!377435 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))) (Context!10615 call!458999)) (h!70393 s!2326)))))

(declare-fun b!5857265 () Bool)

(declare-fun c!1038804 () Bool)

(assert (=> b!5857265 (= c!1038804 ((_ is Star!15923) (h!70392 (exprs!5807 (Context!10615 (Cons!63944 (regTwo!32359 r!7292) Nil!63944))))))))

(assert (=> b!5857265 (= e!3591546 e!3591547)))

(declare-fun b!5857266 () Bool)

(assert (=> b!5857266 (= e!3591543 ((_ map or) call!459000 call!458996))))

(assert (= (and d!1839533 c!1038803) b!5857258))

(assert (= (and d!1839533 (not c!1038803)) b!5857259))

(assert (= (and b!5857259 c!1038805) b!5857266))

(assert (= (and b!5857259 (not c!1038805)) b!5857263))

(assert (= (and b!5857263 res!2465161) b!5857262))

(assert (= (and b!5857263 c!1038802) b!5857260))

(assert (= (and b!5857263 (not c!1038802)) b!5857264))

(assert (= (and b!5857264 c!1038806) b!5857261))

(assert (= (and b!5857264 (not c!1038806)) b!5857265))

(assert (= (and b!5857265 c!1038804) b!5857256))

(assert (= (and b!5857265 (not c!1038804)) b!5857257))

(assert (= (or b!5857261 b!5857256) bm!458991))

(assert (= (or b!5857261 b!5857256) bm!458994))

(assert (= (or b!5857260 bm!458991) bm!458992))

(assert (= (or b!5857260 bm!458994) bm!458995))

(assert (= (or b!5857266 b!5857260) bm!458993))

(assert (= (or b!5857266 bm!458995) bm!458996))

(declare-fun m!6775356 () Bool)

(assert (=> bm!458992 m!6775356))

(declare-fun m!6775358 () Bool)

(assert (=> b!5857262 m!6775358))

(declare-fun m!6775360 () Bool)

(assert (=> bm!458996 m!6775360))

(declare-fun m!6775362 () Bool)

(assert (=> bm!458993 m!6775362))

(declare-fun m!6775364 () Bool)

(assert (=> b!5857258 m!6775364))

(assert (=> bm!458755 d!1839533))

(assert (=> b!5856282 d!1839389))

(assert (=> b!5856282 d!1839391))

(assert (=> d!1839119 d!1839379))

(assert (=> d!1839119 d!1839449))

(declare-fun d!1839535 () Bool)

(declare-fun c!1038807 () Bool)

(assert (=> d!1839535 (= c!1038807 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun e!3591548 () Bool)

(assert (=> d!1839535 (= (matchZipper!1989 (derivationStepZipper!1922 z!1189 (head!12400 s!2326)) (tail!11485 s!2326)) e!3591548)))

(declare-fun b!5857267 () Bool)

(assert (=> b!5857267 (= e!3591548 (nullableZipper!1762 (derivationStepZipper!1922 z!1189 (head!12400 s!2326))))))

(declare-fun b!5857268 () Bool)

(assert (=> b!5857268 (= e!3591548 (matchZipper!1989 (derivationStepZipper!1922 (derivationStepZipper!1922 z!1189 (head!12400 s!2326)) (head!12400 (tail!11485 s!2326))) (tail!11485 (tail!11485 s!2326))))))

(assert (= (and d!1839535 c!1038807) b!5857267))

(assert (= (and d!1839535 (not c!1038807)) b!5857268))

(assert (=> d!1839535 m!6774484))

(assert (=> d!1839535 m!6774550))

(assert (=> b!5857267 m!6774482))

(declare-fun m!6775366 () Bool)

(assert (=> b!5857267 m!6775366))

(assert (=> b!5857268 m!6774484))

(assert (=> b!5857268 m!6775258))

(assert (=> b!5857268 m!6774482))

(assert (=> b!5857268 m!6775258))

(declare-fun m!6775368 () Bool)

(assert (=> b!5857268 m!6775368))

(assert (=> b!5857268 m!6774484))

(assert (=> b!5857268 m!6775262))

(assert (=> b!5857268 m!6775368))

(assert (=> b!5857268 m!6775262))

(declare-fun m!6775370 () Bool)

(assert (=> b!5857268 m!6775370))

(assert (=> b!5856145 d!1839535))

(declare-fun bs!1380065 () Bool)

(declare-fun d!1839537 () Bool)

(assert (= bs!1380065 (and d!1839537 d!1839135)))

(declare-fun lambda!320262 () Int)

(assert (=> bs!1380065 (= (= (head!12400 s!2326) (h!70393 s!2326)) (= lambda!320262 lambda!320214))))

(declare-fun bs!1380066 () Bool)

(assert (= bs!1380066 (and d!1839537 d!1839453)))

(assert (=> bs!1380066 (= (= (head!12400 s!2326) (head!12400 (t!377436 s!2326))) (= lambda!320262 lambda!320254))))

(declare-fun bs!1380067 () Bool)

(assert (= bs!1380067 (and d!1839537 b!5855690)))

(assert (=> bs!1380067 (= (= (head!12400 s!2326) (h!70393 s!2326)) (= lambda!320262 lambda!320170))))

(declare-fun bs!1380068 () Bool)

(assert (= bs!1380068 (and d!1839537 d!1839407)))

(assert (=> bs!1380068 (= (= (head!12400 s!2326) (head!12400 (t!377436 s!2326))) (= lambda!320262 lambda!320249))))

(declare-fun bs!1380069 () Bool)

(assert (= bs!1380069 (and d!1839537 d!1839437)))

(assert (=> bs!1380069 (= (= (head!12400 s!2326) (head!12400 (t!377436 s!2326))) (= lambda!320262 lambda!320251))))

(assert (=> d!1839537 true))

(assert (=> d!1839537 (= (derivationStepZipper!1922 z!1189 (head!12400 s!2326)) (flatMap!1454 z!1189 lambda!320262))))

(declare-fun bs!1380070 () Bool)

(assert (= bs!1380070 d!1839537))

(declare-fun m!6775372 () Bool)

(assert (=> bs!1380070 m!6775372))

(assert (=> b!5856145 d!1839537))

(assert (=> b!5856145 d!1839421))

(assert (=> b!5856145 d!1839391))

(declare-fun b!5857269 () Bool)

(declare-fun e!3591554 () (InoxSet Context!10614))

(declare-fun call!459004 () (InoxSet Context!10614))

(assert (=> b!5857269 (= e!3591554 call!459004)))

(declare-fun b!5857270 () Bool)

(assert (=> b!5857270 (= e!3591554 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857271 () Bool)

(declare-fun e!3591551 () (InoxSet Context!10614))

(assert (=> b!5857271 (= e!3591551 (store ((as const (Array Context!10614 Bool)) false) (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771)) true))))

(declare-fun b!5857272 () Bool)

(declare-fun e!3591550 () (InoxSet Context!10614))

(assert (=> b!5857272 (= e!3591551 e!3591550)))

(declare-fun c!1038811 () Bool)

(assert (=> b!5857272 (= c!1038811 ((_ is Union!15923) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))))))

(declare-fun call!459007 () List!64068)

(declare-fun c!1038812 () Bool)

(declare-fun c!1038808 () Bool)

(declare-fun bm!458998 () Bool)

(assert (=> bm!458998 (= call!459007 ($colon$colon!1828 (exprs!5807 (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771))) (ite (or c!1038808 c!1038812) (regTwo!32358 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))))))))

(declare-fun b!5857273 () Bool)

(declare-fun e!3591549 () (InoxSet Context!10614))

(declare-fun call!459002 () (InoxSet Context!10614))

(declare-fun call!459003 () (InoxSet Context!10614))

(assert (=> b!5857273 (= e!3591549 ((_ map or) call!459002 call!459003))))

(declare-fun bm!458999 () Bool)

(assert (=> bm!458999 (= call!459002 (derivationStepZipperDown!1189 (ite c!1038811 (regTwo!32359 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (regOne!32358 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))))) (ite c!1038811 (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771)) (Context!10615 call!459007)) (h!70393 s!2326)))))

(declare-fun bm!459000 () Bool)

(assert (=> bm!459000 (= call!459004 call!459003)))

(declare-fun c!1038809 () Bool)

(declare-fun d!1839539 () Bool)

(assert (=> d!1839539 (= c!1038809 (and ((_ is ElementMatch!15923) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (= (c!1038343 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (h!70393 s!2326))))))

(assert (=> d!1839539 (= (derivationStepZipperDown!1189 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))) (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771)) (h!70393 s!2326)) e!3591551)))

(declare-fun bm!458997 () Bool)

(declare-fun call!459005 () List!64068)

(assert (=> bm!458997 (= call!459005 call!459007)))

(declare-fun bm!459001 () Bool)

(declare-fun call!459006 () (InoxSet Context!10614))

(assert (=> bm!459001 (= call!459003 call!459006)))

(declare-fun b!5857274 () Bool)

(declare-fun e!3591553 () (InoxSet Context!10614))

(assert (=> b!5857274 (= e!3591553 call!459004)))

(declare-fun b!5857275 () Bool)

(declare-fun e!3591552 () Bool)

(assert (=> b!5857275 (= e!3591552 (nullable!5923 (regOne!32358 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))))))))

(declare-fun b!5857276 () Bool)

(assert (=> b!5857276 (= c!1038808 e!3591552)))

(declare-fun res!2465162 () Bool)

(assert (=> b!5857276 (=> (not res!2465162) (not e!3591552))))

(assert (=> b!5857276 (= res!2465162 ((_ is Concat!24768) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))))))

(assert (=> b!5857276 (= e!3591550 e!3591549)))

(declare-fun b!5857277 () Bool)

(assert (=> b!5857277 (= e!3591549 e!3591553)))

(assert (=> b!5857277 (= c!1038812 ((_ is Concat!24768) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))))))

(declare-fun bm!459002 () Bool)

(assert (=> bm!459002 (= call!459006 (derivationStepZipperDown!1189 (ite c!1038811 (regOne!32359 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (ite c!1038808 (regTwo!32358 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (ite c!1038812 (regOne!32358 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))) (reg!16252 (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292))))))))) (ite (or c!1038811 c!1038808) (ite (or c!1038495 c!1038492) lt!2304898 (Context!10615 call!458771)) (Context!10615 call!459005)) (h!70393 s!2326)))))

(declare-fun c!1038810 () Bool)

(declare-fun b!5857278 () Bool)

(assert (=> b!5857278 (= c!1038810 ((_ is Star!15923) (ite c!1038495 (regOne!32359 (regOne!32359 r!7292)) (ite c!1038492 (regTwo!32358 (regOne!32359 r!7292)) (ite c!1038496 (regOne!32358 (regOne!32359 r!7292)) (reg!16252 (regOne!32359 r!7292)))))))))

(assert (=> b!5857278 (= e!3591553 e!3591554)))

(declare-fun b!5857279 () Bool)

(assert (=> b!5857279 (= e!3591550 ((_ map or) call!459006 call!459002))))

(assert (= (and d!1839539 c!1038809) b!5857271))

(assert (= (and d!1839539 (not c!1038809)) b!5857272))

(assert (= (and b!5857272 c!1038811) b!5857279))

(assert (= (and b!5857272 (not c!1038811)) b!5857276))

(assert (= (and b!5857276 res!2465162) b!5857275))

(assert (= (and b!5857276 c!1038808) b!5857273))

(assert (= (and b!5857276 (not c!1038808)) b!5857277))

(assert (= (and b!5857277 c!1038812) b!5857274))

(assert (= (and b!5857277 (not c!1038812)) b!5857278))

(assert (= (and b!5857278 c!1038810) b!5857269))

(assert (= (and b!5857278 (not c!1038810)) b!5857270))

(assert (= (or b!5857274 b!5857269) bm!458997))

(assert (= (or b!5857274 b!5857269) bm!459000))

(assert (= (or b!5857273 bm!458997) bm!458998))

(assert (= (or b!5857273 bm!459000) bm!459001))

(assert (= (or b!5857279 b!5857273) bm!458999))

(assert (= (or b!5857279 bm!459001) bm!459002))

(declare-fun m!6775374 () Bool)

(assert (=> bm!458998 m!6775374))

(declare-fun m!6775376 () Bool)

(assert (=> b!5857275 m!6775376))

(declare-fun m!6775378 () Bool)

(assert (=> bm!459002 m!6775378))

(declare-fun m!6775380 () Bool)

(assert (=> bm!458999 m!6775380))

(declare-fun m!6775382 () Bool)

(assert (=> b!5857271 m!6775382))

(assert (=> bm!458768 d!1839539))

(declare-fun d!1839541 () Bool)

(assert (=> d!1839541 (= ($colon$colon!1828 (exprs!5807 lt!2304898) (ite (or c!1038492 c!1038496) (regTwo!32358 (regOne!32359 r!7292)) (regOne!32359 r!7292))) (Cons!63944 (ite (or c!1038492 c!1038496) (regTwo!32358 (regOne!32359 r!7292)) (regOne!32359 r!7292)) (exprs!5807 lt!2304898)))))

(assert (=> bm!458764 d!1839541))

(declare-fun b!5857280 () Bool)

(declare-fun res!2465167 () Bool)

(declare-fun e!3591559 () Bool)

(assert (=> b!5857280 (=> res!2465167 e!3591559)))

(assert (=> b!5857280 (= res!2465167 (not (isEmpty!35805 (tail!11485 (tail!11485 s!2326)))))))

(declare-fun b!5857281 () Bool)

(declare-fun e!3591555 () Bool)

(assert (=> b!5857281 (= e!3591555 (matchR!8106 (derivativeStep!4661 (derivativeStep!4661 r!7292 (head!12400 s!2326)) (head!12400 (tail!11485 s!2326))) (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857282 () Bool)

(declare-fun e!3591561 () Bool)

(assert (=> b!5857282 (= e!3591561 (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 r!7292 (head!12400 s!2326)))))))

(declare-fun b!5857283 () Bool)

(declare-fun res!2465168 () Bool)

(assert (=> b!5857283 (=> (not res!2465168) (not e!3591561))))

(assert (=> b!5857283 (= res!2465168 (isEmpty!35805 (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857284 () Bool)

(assert (=> b!5857284 (= e!3591555 (nullable!5923 (derivativeStep!4661 r!7292 (head!12400 s!2326))))))

(declare-fun d!1839543 () Bool)

(declare-fun e!3591557 () Bool)

(assert (=> d!1839543 e!3591557))

(declare-fun c!1038815 () Bool)

(assert (=> d!1839543 (= c!1038815 ((_ is EmptyExpr!15923) (derivativeStep!4661 r!7292 (head!12400 s!2326))))))

(declare-fun lt!2304989 () Bool)

(assert (=> d!1839543 (= lt!2304989 e!3591555)))

(declare-fun c!1038813 () Bool)

(assert (=> d!1839543 (= c!1038813 (isEmpty!35805 (tail!11485 s!2326)))))

(assert (=> d!1839543 (validRegex!7659 (derivativeStep!4661 r!7292 (head!12400 s!2326)))))

(assert (=> d!1839543 (= (matchR!8106 (derivativeStep!4661 r!7292 (head!12400 s!2326)) (tail!11485 s!2326)) lt!2304989)))

(declare-fun b!5857285 () Bool)

(declare-fun res!2465169 () Bool)

(declare-fun e!3591558 () Bool)

(assert (=> b!5857285 (=> res!2465169 e!3591558)))

(assert (=> b!5857285 (= res!2465169 e!3591561)))

(declare-fun res!2465163 () Bool)

(assert (=> b!5857285 (=> (not res!2465163) (not e!3591561))))

(assert (=> b!5857285 (= res!2465163 lt!2304989)))

(declare-fun b!5857286 () Bool)

(declare-fun e!3591556 () Bool)

(assert (=> b!5857286 (= e!3591557 e!3591556)))

(declare-fun c!1038814 () Bool)

(assert (=> b!5857286 (= c!1038814 ((_ is EmptyLang!15923) (derivativeStep!4661 r!7292 (head!12400 s!2326))))))

(declare-fun b!5857287 () Bool)

(assert (=> b!5857287 (= e!3591559 (not (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 r!7292 (head!12400 s!2326))))))))

(declare-fun b!5857288 () Bool)

(assert (=> b!5857288 (= e!3591556 (not lt!2304989))))

(declare-fun b!5857289 () Bool)

(declare-fun e!3591560 () Bool)

(assert (=> b!5857289 (= e!3591560 e!3591559)))

(declare-fun res!2465166 () Bool)

(assert (=> b!5857289 (=> res!2465166 e!3591559)))

(declare-fun call!459008 () Bool)

(assert (=> b!5857289 (= res!2465166 call!459008)))

(declare-fun b!5857290 () Bool)

(assert (=> b!5857290 (= e!3591558 e!3591560)))

(declare-fun res!2465165 () Bool)

(assert (=> b!5857290 (=> (not res!2465165) (not e!3591560))))

(assert (=> b!5857290 (= res!2465165 (not lt!2304989))))

(declare-fun b!5857291 () Bool)

(assert (=> b!5857291 (= e!3591557 (= lt!2304989 call!459008))))

(declare-fun bm!459003 () Bool)

(assert (=> bm!459003 (= call!459008 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5857292 () Bool)

(declare-fun res!2465170 () Bool)

(assert (=> b!5857292 (=> (not res!2465170) (not e!3591561))))

(assert (=> b!5857292 (= res!2465170 (not call!459008))))

(declare-fun b!5857293 () Bool)

(declare-fun res!2465164 () Bool)

(assert (=> b!5857293 (=> res!2465164 e!3591558)))

(assert (=> b!5857293 (= res!2465164 (not ((_ is ElementMatch!15923) (derivativeStep!4661 r!7292 (head!12400 s!2326)))))))

(assert (=> b!5857293 (= e!3591556 e!3591558)))

(assert (= (and d!1839543 c!1038813) b!5857284))

(assert (= (and d!1839543 (not c!1038813)) b!5857281))

(assert (= (and d!1839543 c!1038815) b!5857291))

(assert (= (and d!1839543 (not c!1038815)) b!5857286))

(assert (= (and b!5857286 c!1038814) b!5857288))

(assert (= (and b!5857286 (not c!1038814)) b!5857293))

(assert (= (and b!5857293 (not res!2465164)) b!5857285))

(assert (= (and b!5857285 res!2465163) b!5857292))

(assert (= (and b!5857292 res!2465170) b!5857283))

(assert (= (and b!5857283 res!2465168) b!5857282))

(assert (= (and b!5857285 (not res!2465169)) b!5857290))

(assert (= (and b!5857290 res!2465165) b!5857289))

(assert (= (and b!5857289 (not res!2465166)) b!5857280))

(assert (= (and b!5857280 (not res!2465167)) b!5857287))

(assert (= (or b!5857291 b!5857289 b!5857292) bm!459003))

(assert (=> b!5857282 m!6774484))

(assert (=> b!5857282 m!6775258))

(assert (=> b!5857284 m!6774578))

(declare-fun m!6775384 () Bool)

(assert (=> b!5857284 m!6775384))

(assert (=> b!5857280 m!6774484))

(assert (=> b!5857280 m!6775262))

(assert (=> b!5857280 m!6775262))

(assert (=> b!5857280 m!6775264))

(assert (=> bm!459003 m!6774484))

(assert (=> bm!459003 m!6774550))

(assert (=> b!5857287 m!6774484))

(assert (=> b!5857287 m!6775258))

(assert (=> b!5857283 m!6774484))

(assert (=> b!5857283 m!6775262))

(assert (=> b!5857283 m!6775262))

(assert (=> b!5857283 m!6775264))

(assert (=> d!1839543 m!6774484))

(assert (=> d!1839543 m!6774550))

(assert (=> d!1839543 m!6774578))

(declare-fun m!6775386 () Bool)

(assert (=> d!1839543 m!6775386))

(assert (=> b!5857281 m!6774484))

(assert (=> b!5857281 m!6775258))

(assert (=> b!5857281 m!6774578))

(assert (=> b!5857281 m!6775258))

(declare-fun m!6775388 () Bool)

(assert (=> b!5857281 m!6775388))

(assert (=> b!5857281 m!6774484))

(assert (=> b!5857281 m!6775262))

(assert (=> b!5857281 m!6775388))

(assert (=> b!5857281 m!6775262))

(declare-fun m!6775390 () Bool)

(assert (=> b!5857281 m!6775390))

(assert (=> b!5856308 d!1839543))

(declare-fun b!5857294 () Bool)

(declare-fun c!1038819 () Bool)

(assert (=> b!5857294 (= c!1038819 ((_ is Union!15923) r!7292))))

(declare-fun e!3591562 () Regex!15923)

(declare-fun e!3591564 () Regex!15923)

(assert (=> b!5857294 (= e!3591562 e!3591564)))

(declare-fun bm!459004 () Bool)

(declare-fun call!459009 () Regex!15923)

(declare-fun call!459012 () Regex!15923)

(assert (=> bm!459004 (= call!459009 call!459012)))

(declare-fun call!459011 () Regex!15923)

(declare-fun bm!459005 () Bool)

(assert (=> bm!459005 (= call!459011 (derivativeStep!4661 (ite c!1038819 (regTwo!32359 r!7292) (regOne!32358 r!7292)) (head!12400 s!2326)))))

(declare-fun b!5857295 () Bool)

(assert (=> b!5857295 (= e!3591564 (Union!15923 call!459012 call!459011))))

(declare-fun b!5857296 () Bool)

(declare-fun e!3591563 () Regex!15923)

(assert (=> b!5857296 (= e!3591564 e!3591563)))

(declare-fun c!1038817 () Bool)

(assert (=> b!5857296 (= c!1038817 ((_ is Star!15923) r!7292))))

(declare-fun b!5857297 () Bool)

(assert (=> b!5857297 (= e!3591562 (ite (= (head!12400 s!2326) (c!1038343 r!7292)) EmptyExpr!15923 EmptyLang!15923))))

(declare-fun b!5857298 () Bool)

(declare-fun e!3591565 () Regex!15923)

(declare-fun call!459010 () Regex!15923)

(assert (=> b!5857298 (= e!3591565 (Union!15923 (Concat!24768 call!459010 (regTwo!32358 r!7292)) EmptyLang!15923))))

(declare-fun b!5857299 () Bool)

(assert (=> b!5857299 (= e!3591565 (Union!15923 (Concat!24768 call!459011 (regTwo!32358 r!7292)) call!459010))))

(declare-fun b!5857300 () Bool)

(declare-fun c!1038818 () Bool)

(assert (=> b!5857300 (= c!1038818 (nullable!5923 (regOne!32358 r!7292)))))

(assert (=> b!5857300 (= e!3591563 e!3591565)))

(declare-fun b!5857301 () Bool)

(declare-fun e!3591566 () Regex!15923)

(assert (=> b!5857301 (= e!3591566 e!3591562)))

(declare-fun c!1038820 () Bool)

(assert (=> b!5857301 (= c!1038820 ((_ is ElementMatch!15923) r!7292))))

(declare-fun bm!459006 () Bool)

(assert (=> bm!459006 (= call!459010 call!459009)))

(declare-fun b!5857303 () Bool)

(assert (=> b!5857303 (= e!3591563 (Concat!24768 call!459009 r!7292))))

(declare-fun bm!459007 () Bool)

(assert (=> bm!459007 (= call!459012 (derivativeStep!4661 (ite c!1038819 (regOne!32359 r!7292) (ite c!1038817 (reg!16252 r!7292) (ite c!1038818 (regTwo!32358 r!7292) (regOne!32358 r!7292)))) (head!12400 s!2326)))))

(declare-fun b!5857302 () Bool)

(assert (=> b!5857302 (= e!3591566 EmptyLang!15923)))

(declare-fun d!1839545 () Bool)

(declare-fun lt!2304990 () Regex!15923)

(assert (=> d!1839545 (validRegex!7659 lt!2304990)))

(assert (=> d!1839545 (= lt!2304990 e!3591566)))

(declare-fun c!1038816 () Bool)

(assert (=> d!1839545 (= c!1038816 (or ((_ is EmptyExpr!15923) r!7292) ((_ is EmptyLang!15923) r!7292)))))

(assert (=> d!1839545 (validRegex!7659 r!7292)))

(assert (=> d!1839545 (= (derivativeStep!4661 r!7292 (head!12400 s!2326)) lt!2304990)))

(assert (= (and d!1839545 c!1038816) b!5857302))

(assert (= (and d!1839545 (not c!1038816)) b!5857301))

(assert (= (and b!5857301 c!1038820) b!5857297))

(assert (= (and b!5857301 (not c!1038820)) b!5857294))

(assert (= (and b!5857294 c!1038819) b!5857295))

(assert (= (and b!5857294 (not c!1038819)) b!5857296))

(assert (= (and b!5857296 c!1038817) b!5857303))

(assert (= (and b!5857296 (not c!1038817)) b!5857300))

(assert (= (and b!5857300 c!1038818) b!5857299))

(assert (= (and b!5857300 (not c!1038818)) b!5857298))

(assert (= (or b!5857299 b!5857298) bm!459006))

(assert (= (or b!5857303 bm!459006) bm!459004))

(assert (= (or b!5857295 b!5857299) bm!459005))

(assert (= (or b!5857295 bm!459004) bm!459007))

(assert (=> bm!459005 m!6774480))

(declare-fun m!6775392 () Bool)

(assert (=> bm!459005 m!6775392))

(assert (=> b!5857300 m!6774462))

(assert (=> bm!459007 m!6774480))

(declare-fun m!6775394 () Bool)

(assert (=> bm!459007 m!6775394))

(declare-fun m!6775396 () Bool)

(assert (=> d!1839545 m!6775396))

(assert (=> d!1839545 m!6774224))

(assert (=> b!5856308 d!1839545))

(assert (=> b!5856308 d!1839421))

(assert (=> b!5856308 d!1839391))

(declare-fun d!1839547 () Bool)

(assert (=> d!1839547 (= (head!12401 (unfocusZipperList!1344 zl!343)) (h!70392 (unfocusZipperList!1344 zl!343)))))

(assert (=> b!5856359 d!1839547))

(assert (=> b!5856303 d!1839117))

(declare-fun bs!1380071 () Bool)

(declare-fun b!5857304 () Bool)

(assert (= bs!1380071 (and b!5857304 b!5856271)))

(declare-fun lambda!320263 () Int)

(assert (=> bs!1380071 (= (and (= (reg!16252 (regOne!32359 (regTwo!32359 r!7292))) (reg!16252 (regOne!32359 r!7292))) (= (regOne!32359 (regTwo!32359 r!7292)) (regOne!32359 r!7292))) (= lambda!320263 lambda!320207))))

(declare-fun bs!1380072 () Bool)

(assert (= bs!1380072 (and b!5857304 b!5856281)))

(assert (=> bs!1380072 (not (= lambda!320263 lambda!320208))))

(declare-fun bs!1380073 () Bool)

(assert (= bs!1380073 (and b!5857304 b!5856296)))

(assert (=> bs!1380073 (= (and (= (reg!16252 (regOne!32359 (regTwo!32359 r!7292))) (reg!16252 r!7292)) (= (regOne!32359 (regTwo!32359 r!7292)) r!7292)) (= lambda!320263 lambda!320210))))

(declare-fun bs!1380074 () Bool)

(assert (= bs!1380074 (and b!5857304 b!5856224)))

(assert (=> bs!1380074 (not (= lambda!320263 lambda!320206))))

(declare-fun bs!1380075 () Bool)

(assert (= bs!1380075 (and b!5857304 b!5857193)))

(assert (=> bs!1380075 (= (and (= (reg!16252 (regOne!32359 (regTwo!32359 r!7292))) (reg!16252 (regOne!32359 (regOne!32359 r!7292)))) (= (regOne!32359 (regTwo!32359 r!7292)) (regOne!32359 (regOne!32359 r!7292)))) (= lambda!320263 lambda!320255))))

(declare-fun bs!1380076 () Bool)

(assert (= bs!1380076 (and b!5857304 b!5857085)))

(assert (=> bs!1380076 (not (= lambda!320263 lambda!320253))))

(declare-fun bs!1380077 () Bool)

(assert (= bs!1380077 (and b!5857304 b!5856214)))

(assert (=> bs!1380077 (= (and (= (reg!16252 (regOne!32359 (regTwo!32359 r!7292))) (reg!16252 (regTwo!32359 r!7292))) (= (regOne!32359 (regTwo!32359 r!7292)) (regTwo!32359 r!7292))) (= lambda!320263 lambda!320205))))

(declare-fun bs!1380078 () Bool)

(assert (= bs!1380078 (and b!5857304 b!5856306)))

(assert (=> bs!1380078 (not (= lambda!320263 lambda!320211))))

(declare-fun bs!1380079 () Bool)

(assert (= bs!1380079 (and b!5857304 b!5857203)))

(assert (=> bs!1380079 (not (= lambda!320263 lambda!320256))))

(declare-fun bs!1380080 () Bool)

(assert (= bs!1380080 (and b!5857304 b!5857075)))

(assert (=> bs!1380080 (= (and (= (reg!16252 (regOne!32359 (regTwo!32359 r!7292))) (reg!16252 (regTwo!32359 (regOne!32359 r!7292)))) (= (regOne!32359 (regTwo!32359 r!7292)) (regTwo!32359 (regOne!32359 r!7292)))) (= lambda!320263 lambda!320252))))

(assert (=> b!5857304 true))

(assert (=> b!5857304 true))

(declare-fun bs!1380081 () Bool)

(declare-fun b!5857314 () Bool)

(assert (= bs!1380081 (and b!5857314 b!5856271)))

(declare-fun lambda!320264 () Int)

(assert (=> bs!1380081 (not (= lambda!320264 lambda!320207))))

(declare-fun bs!1380082 () Bool)

(assert (= bs!1380082 (and b!5857314 b!5856281)))

(assert (=> bs!1380082 (= (and (= (regOne!32358 (regOne!32359 (regTwo!32359 r!7292))) (regOne!32358 (regOne!32359 r!7292))) (= (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regOne!32359 r!7292)))) (= lambda!320264 lambda!320208))))

(declare-fun bs!1380083 () Bool)

(assert (= bs!1380083 (and b!5857314 b!5856296)))

(assert (=> bs!1380083 (not (= lambda!320264 lambda!320210))))

(declare-fun bs!1380084 () Bool)

(assert (= bs!1380084 (and b!5857314 b!5856224)))

(assert (=> bs!1380084 (= (and (= (regOne!32358 (regOne!32359 (regTwo!32359 r!7292))) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320264 lambda!320206))))

(declare-fun bs!1380085 () Bool)

(assert (= bs!1380085 (and b!5857314 b!5857193)))

(assert (=> bs!1380085 (not (= lambda!320264 lambda!320255))))

(declare-fun bs!1380086 () Bool)

(assert (= bs!1380086 (and b!5857314 b!5857085)))

(assert (=> bs!1380086 (= (and (= (regOne!32358 (regOne!32359 (regTwo!32359 r!7292))) (regOne!32358 (regTwo!32359 (regOne!32359 r!7292)))) (= (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))))) (= lambda!320264 lambda!320253))))

(declare-fun bs!1380087 () Bool)

(assert (= bs!1380087 (and b!5857314 b!5856214)))

(assert (=> bs!1380087 (not (= lambda!320264 lambda!320205))))

(declare-fun bs!1380088 () Bool)

(assert (= bs!1380088 (and b!5857314 b!5856306)))

(assert (=> bs!1380088 (= (and (= (regOne!32358 (regOne!32359 (regTwo!32359 r!7292))) (regOne!32358 r!7292)) (= (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))) (regTwo!32358 r!7292))) (= lambda!320264 lambda!320211))))

(declare-fun bs!1380089 () Bool)

(assert (= bs!1380089 (and b!5857314 b!5857304)))

(assert (=> bs!1380089 (not (= lambda!320264 lambda!320263))))

(declare-fun bs!1380090 () Bool)

(assert (= bs!1380090 (and b!5857314 b!5857203)))

(assert (=> bs!1380090 (= (and (= (regOne!32358 (regOne!32359 (regTwo!32359 r!7292))) (regOne!32358 (regOne!32359 (regOne!32359 r!7292)))) (= (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))))) (= lambda!320264 lambda!320256))))

(declare-fun bs!1380091 () Bool)

(assert (= bs!1380091 (and b!5857314 b!5857075)))

(assert (=> bs!1380091 (not (= lambda!320264 lambda!320252))))

(assert (=> b!5857314 true))

(assert (=> b!5857314 true))

(declare-fun e!3591571 () Bool)

(declare-fun call!459014 () Bool)

(assert (=> b!5857304 (= e!3591571 call!459014)))

(declare-fun b!5857305 () Bool)

(declare-fun e!3591569 () Bool)

(declare-fun call!459013 () Bool)

(assert (=> b!5857305 (= e!3591569 call!459013)))

(declare-fun b!5857306 () Bool)

(declare-fun c!1038824 () Bool)

(assert (=> b!5857306 (= c!1038824 ((_ is ElementMatch!15923) (regOne!32359 (regTwo!32359 r!7292))))))

(declare-fun e!3591570 () Bool)

(declare-fun e!3591567 () Bool)

(assert (=> b!5857306 (= e!3591570 e!3591567)))

(declare-fun b!5857307 () Bool)

(declare-fun e!3591572 () Bool)

(assert (=> b!5857307 (= e!3591572 (matchRSpec!3024 (regTwo!32359 (regOne!32359 (regTwo!32359 r!7292))) s!2326))))

(declare-fun b!5857309 () Bool)

(declare-fun c!1038822 () Bool)

(assert (=> b!5857309 (= c!1038822 ((_ is Union!15923) (regOne!32359 (regTwo!32359 r!7292))))))

(declare-fun e!3591568 () Bool)

(assert (=> b!5857309 (= e!3591567 e!3591568)))

(declare-fun b!5857310 () Bool)

(declare-fun res!2465173 () Bool)

(assert (=> b!5857310 (=> res!2465173 e!3591571)))

(assert (=> b!5857310 (= res!2465173 call!459013)))

(declare-fun e!3591573 () Bool)

(assert (=> b!5857310 (= e!3591573 e!3591571)))

(declare-fun b!5857311 () Bool)

(assert (=> b!5857311 (= e!3591568 e!3591572)))

(declare-fun res!2465171 () Bool)

(assert (=> b!5857311 (= res!2465171 (matchRSpec!3024 (regOne!32359 (regOne!32359 (regTwo!32359 r!7292))) s!2326))))

(assert (=> b!5857311 (=> res!2465171 e!3591572)))

(declare-fun b!5857312 () Bool)

(assert (=> b!5857312 (= e!3591569 e!3591570)))

(declare-fun res!2465172 () Bool)

(assert (=> b!5857312 (= res!2465172 (not ((_ is EmptyLang!15923) (regOne!32359 (regTwo!32359 r!7292)))))))

(assert (=> b!5857312 (=> (not res!2465172) (not e!3591570))))

(declare-fun bm!459008 () Bool)

(assert (=> bm!459008 (= call!459013 (isEmpty!35805 s!2326))))

(declare-fun b!5857313 () Bool)

(assert (=> b!5857313 (= e!3591568 e!3591573)))

(declare-fun c!1038821 () Bool)

(assert (=> b!5857313 (= c!1038821 ((_ is Star!15923) (regOne!32359 (regTwo!32359 r!7292))))))

(declare-fun d!1839549 () Bool)

(declare-fun c!1038823 () Bool)

(assert (=> d!1839549 (= c!1038823 ((_ is EmptyExpr!15923) (regOne!32359 (regTwo!32359 r!7292))))))

(assert (=> d!1839549 (= (matchRSpec!3024 (regOne!32359 (regTwo!32359 r!7292)) s!2326) e!3591569)))

(declare-fun b!5857308 () Bool)

(assert (=> b!5857308 (= e!3591567 (= s!2326 (Cons!63945 (c!1038343 (regOne!32359 (regTwo!32359 r!7292))) Nil!63945)))))

(assert (=> b!5857314 (= e!3591573 call!459014)))

(declare-fun bm!459009 () Bool)

(assert (=> bm!459009 (= call!459014 (Exists!2995 (ite c!1038821 lambda!320263 lambda!320264)))))

(assert (= (and d!1839549 c!1038823) b!5857305))

(assert (= (and d!1839549 (not c!1038823)) b!5857312))

(assert (= (and b!5857312 res!2465172) b!5857306))

(assert (= (and b!5857306 c!1038824) b!5857308))

(assert (= (and b!5857306 (not c!1038824)) b!5857309))

(assert (= (and b!5857309 c!1038822) b!5857311))

(assert (= (and b!5857309 (not c!1038822)) b!5857313))

(assert (= (and b!5857311 (not res!2465171)) b!5857307))

(assert (= (and b!5857313 c!1038821) b!5857310))

(assert (= (and b!5857313 (not c!1038821)) b!5857314))

(assert (= (and b!5857310 (not res!2465173)) b!5857304))

(assert (= (or b!5857304 b!5857314) bm!459009))

(assert (= (or b!5857305 b!5857310) bm!459008))

(declare-fun m!6775398 () Bool)

(assert (=> b!5857307 m!6775398))

(declare-fun m!6775400 () Bool)

(assert (=> b!5857311 m!6775400))

(assert (=> bm!459008 m!6774476))

(declare-fun m!6775402 () Bool)

(assert (=> bm!459009 m!6775402))

(assert (=> b!5856221 d!1839549))

(declare-fun d!1839551 () Bool)

(assert (=> d!1839551 (= (nullable!5923 (reg!16252 r!7292)) (nullableFct!1910 (reg!16252 r!7292)))))

(declare-fun bs!1380092 () Bool)

(assert (= bs!1380092 d!1839551))

(declare-fun m!6775404 () Bool)

(assert (=> bs!1380092 m!6775404))

(assert (=> b!5856394 d!1839551))

(declare-fun bs!1380093 () Bool)

(declare-fun d!1839553 () Bool)

(assert (= bs!1380093 (and d!1839553 d!1839099)))

(declare-fun lambda!320265 () Int)

(assert (=> bs!1380093 (= lambda!320265 lambda!320200)))

(declare-fun bs!1380094 () Bool)

(assert (= bs!1380094 (and d!1839553 d!1839149)))

(assert (=> bs!1380094 (= lambda!320265 lambda!320221)))

(declare-fun bs!1380095 () Bool)

(assert (= bs!1380095 (and d!1839553 d!1839147)))

(assert (=> bs!1380095 (= lambda!320265 lambda!320218)))

(declare-fun bs!1380096 () Bool)

(assert (= bs!1380096 (and d!1839553 d!1839403)))

(assert (=> bs!1380096 (= lambda!320265 lambda!320248)))

(declare-fun bs!1380097 () Bool)

(assert (= bs!1380097 (and d!1839553 d!1839153)))

(assert (=> bs!1380097 (= lambda!320265 lambda!320224)))

(declare-fun bs!1380098 () Bool)

(assert (= bs!1380098 (and d!1839553 d!1839143)))

(assert (=> bs!1380098 (= lambda!320265 lambda!320215)))

(declare-fun bs!1380099 () Bool)

(assert (= bs!1380099 (and d!1839553 d!1839429)))

(assert (=> bs!1380099 (= lambda!320265 lambda!320250)))

(declare-fun bs!1380100 () Bool)

(assert (= bs!1380100 (and d!1839553 d!1839123)))

(assert (=> bs!1380100 (= lambda!320265 lambda!320209)))

(declare-fun b!5857315 () Bool)

(declare-fun e!3591579 () Bool)

(declare-fun lt!2304991 () Regex!15923)

(assert (=> b!5857315 (= e!3591579 (isEmptyLang!1366 lt!2304991))))

(declare-fun b!5857316 () Bool)

(declare-fun e!3591575 () Bool)

(assert (=> b!5857316 (= e!3591575 e!3591579)))

(declare-fun c!1038828 () Bool)

(assert (=> b!5857316 (= c!1038828 (isEmpty!35806 (t!377435 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5857317 () Bool)

(declare-fun e!3591577 () Bool)

(assert (=> b!5857317 (= e!3591577 (isEmpty!35806 (t!377435 (t!377435 (unfocusZipperList!1344 zl!343)))))))

(declare-fun b!5857318 () Bool)

(declare-fun e!3591574 () Bool)

(assert (=> b!5857318 (= e!3591574 (= lt!2304991 (head!12401 (t!377435 (unfocusZipperList!1344 zl!343)))))))

(declare-fun b!5857319 () Bool)

(declare-fun e!3591578 () Regex!15923)

(assert (=> b!5857319 (= e!3591578 (h!70392 (t!377435 (unfocusZipperList!1344 zl!343))))))

(assert (=> d!1839553 e!3591575))

(declare-fun res!2465175 () Bool)

(assert (=> d!1839553 (=> (not res!2465175) (not e!3591575))))

(assert (=> d!1839553 (= res!2465175 (validRegex!7659 lt!2304991))))

(assert (=> d!1839553 (= lt!2304991 e!3591578)))

(declare-fun c!1038825 () Bool)

(assert (=> d!1839553 (= c!1038825 e!3591577)))

(declare-fun res!2465174 () Bool)

(assert (=> d!1839553 (=> (not res!2465174) (not e!3591577))))

(assert (=> d!1839553 (= res!2465174 ((_ is Cons!63944) (t!377435 (unfocusZipperList!1344 zl!343))))))

(assert (=> d!1839553 (forall!15010 (t!377435 (unfocusZipperList!1344 zl!343)) lambda!320265)))

(assert (=> d!1839553 (= (generalisedUnion!1767 (t!377435 (unfocusZipperList!1344 zl!343))) lt!2304991)))

(declare-fun b!5857320 () Bool)

(declare-fun e!3591576 () Regex!15923)

(assert (=> b!5857320 (= e!3591576 EmptyLang!15923)))

(declare-fun b!5857321 () Bool)

(assert (=> b!5857321 (= e!3591578 e!3591576)))

(declare-fun c!1038827 () Bool)

(assert (=> b!5857321 (= c!1038827 ((_ is Cons!63944) (t!377435 (unfocusZipperList!1344 zl!343))))))

(declare-fun b!5857322 () Bool)

(assert (=> b!5857322 (= e!3591576 (Union!15923 (h!70392 (t!377435 (unfocusZipperList!1344 zl!343))) (generalisedUnion!1767 (t!377435 (t!377435 (unfocusZipperList!1344 zl!343))))))))

(declare-fun b!5857323 () Bool)

(assert (=> b!5857323 (= e!3591579 e!3591574)))

(declare-fun c!1038826 () Bool)

(assert (=> b!5857323 (= c!1038826 (isEmpty!35806 (tail!11486 (t!377435 (unfocusZipperList!1344 zl!343)))))))

(declare-fun b!5857324 () Bool)

(assert (=> b!5857324 (= e!3591574 (isUnion!796 lt!2304991))))

(assert (= (and d!1839553 res!2465174) b!5857317))

(assert (= (and d!1839553 c!1038825) b!5857319))

(assert (= (and d!1839553 (not c!1038825)) b!5857321))

(assert (= (and b!5857321 c!1038827) b!5857322))

(assert (= (and b!5857321 (not c!1038827)) b!5857320))

(assert (= (and d!1839553 res!2465175) b!5857316))

(assert (= (and b!5857316 c!1038828) b!5857315))

(assert (= (and b!5857316 (not c!1038828)) b!5857323))

(assert (= (and b!5857323 c!1038826) b!5857318))

(assert (= (and b!5857323 (not c!1038826)) b!5857324))

(declare-fun m!6775406 () Bool)

(assert (=> b!5857323 m!6775406))

(assert (=> b!5857323 m!6775406))

(declare-fun m!6775408 () Bool)

(assert (=> b!5857323 m!6775408))

(declare-fun m!6775410 () Bool)

(assert (=> b!5857322 m!6775410))

(declare-fun m!6775412 () Bool)

(assert (=> b!5857315 m!6775412))

(declare-fun m!6775414 () Bool)

(assert (=> b!5857324 m!6775414))

(declare-fun m!6775416 () Bool)

(assert (=> b!5857317 m!6775416))

(declare-fun m!6775418 () Bool)

(assert (=> b!5857318 m!6775418))

(assert (=> b!5857316 m!6774628))

(declare-fun m!6775420 () Bool)

(assert (=> d!1839553 m!6775420))

(declare-fun m!6775422 () Bool)

(assert (=> d!1839553 m!6775422))

(assert (=> b!5856363 d!1839553))

(declare-fun b!5857325 () Bool)

(declare-fun res!2465180 () Bool)

(declare-fun e!3591584 () Bool)

(assert (=> b!5857325 (=> res!2465180 e!3591584)))

(assert (=> b!5857325 (= res!2465180 (not (isEmpty!35805 (tail!11485 (tail!11485 s!2326)))))))

(declare-fun b!5857326 () Bool)

(declare-fun e!3591580 () Bool)

(assert (=> b!5857326 (= e!3591580 (matchR!8106 (derivativeStep!4661 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)) (head!12400 (tail!11485 s!2326))) (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857327 () Bool)

(declare-fun e!3591586 () Bool)

(assert (=> b!5857327 (= e!3591586 (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)))))))

(declare-fun b!5857328 () Bool)

(declare-fun res!2465181 () Bool)

(assert (=> b!5857328 (=> (not res!2465181) (not e!3591586))))

(assert (=> b!5857328 (= res!2465181 (isEmpty!35805 (tail!11485 (tail!11485 s!2326))))))

(declare-fun b!5857329 () Bool)

(assert (=> b!5857329 (= e!3591580 (nullable!5923 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326))))))

(declare-fun d!1839555 () Bool)

(declare-fun e!3591582 () Bool)

(assert (=> d!1839555 e!3591582))

(declare-fun c!1038831 () Bool)

(assert (=> d!1839555 (= c!1038831 ((_ is EmptyExpr!15923) (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326))))))

(declare-fun lt!2304992 () Bool)

(assert (=> d!1839555 (= lt!2304992 e!3591580)))

(declare-fun c!1038829 () Bool)

(assert (=> d!1839555 (= c!1038829 (isEmpty!35805 (tail!11485 s!2326)))))

(assert (=> d!1839555 (validRegex!7659 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)))))

(assert (=> d!1839555 (= (matchR!8106 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)) (tail!11485 s!2326)) lt!2304992)))

(declare-fun b!5857330 () Bool)

(declare-fun res!2465182 () Bool)

(declare-fun e!3591583 () Bool)

(assert (=> b!5857330 (=> res!2465182 e!3591583)))

(assert (=> b!5857330 (= res!2465182 e!3591586)))

(declare-fun res!2465176 () Bool)

(assert (=> b!5857330 (=> (not res!2465176) (not e!3591586))))

(assert (=> b!5857330 (= res!2465176 lt!2304992)))

(declare-fun b!5857331 () Bool)

(declare-fun e!3591581 () Bool)

(assert (=> b!5857331 (= e!3591582 e!3591581)))

(declare-fun c!1038830 () Bool)

(assert (=> b!5857331 (= c!1038830 ((_ is EmptyLang!15923) (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326))))))

(declare-fun b!5857332 () Bool)

(assert (=> b!5857332 (= e!3591584 (not (= (head!12400 (tail!11485 s!2326)) (c!1038343 (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326))))))))

(declare-fun b!5857333 () Bool)

(assert (=> b!5857333 (= e!3591581 (not lt!2304992))))

(declare-fun b!5857334 () Bool)

(declare-fun e!3591585 () Bool)

(assert (=> b!5857334 (= e!3591585 e!3591584)))

(declare-fun res!2465179 () Bool)

(assert (=> b!5857334 (=> res!2465179 e!3591584)))

(declare-fun call!459015 () Bool)

(assert (=> b!5857334 (= res!2465179 call!459015)))

(declare-fun b!5857335 () Bool)

(assert (=> b!5857335 (= e!3591583 e!3591585)))

(declare-fun res!2465178 () Bool)

(assert (=> b!5857335 (=> (not res!2465178) (not e!3591585))))

(assert (=> b!5857335 (= res!2465178 (not lt!2304992))))

(declare-fun b!5857336 () Bool)

(assert (=> b!5857336 (= e!3591582 (= lt!2304992 call!459015))))

(declare-fun bm!459010 () Bool)

(assert (=> bm!459010 (= call!459015 (isEmpty!35805 (tail!11485 s!2326)))))

(declare-fun b!5857337 () Bool)

(declare-fun res!2465183 () Bool)

(assert (=> b!5857337 (=> (not res!2465183) (not e!3591586))))

(assert (=> b!5857337 (= res!2465183 (not call!459015))))

(declare-fun b!5857338 () Bool)

(declare-fun res!2465177 () Bool)

(assert (=> b!5857338 (=> res!2465177 e!3591583)))

(assert (=> b!5857338 (= res!2465177 (not ((_ is ElementMatch!15923) (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)))))))

(assert (=> b!5857338 (= e!3591581 e!3591583)))

(assert (= (and d!1839555 c!1038829) b!5857329))

(assert (= (and d!1839555 (not c!1038829)) b!5857326))

(assert (= (and d!1839555 c!1038831) b!5857336))

(assert (= (and d!1839555 (not c!1038831)) b!5857331))

(assert (= (and b!5857331 c!1038830) b!5857333))

(assert (= (and b!5857331 (not c!1038830)) b!5857338))

(assert (= (and b!5857338 (not res!2465177)) b!5857330))

(assert (= (and b!5857330 res!2465176) b!5857337))

(assert (= (and b!5857337 res!2465183) b!5857328))

(assert (= (and b!5857328 res!2465181) b!5857327))

(assert (= (and b!5857330 (not res!2465182)) b!5857335))

(assert (= (and b!5857335 res!2465178) b!5857334))

(assert (= (and b!5857334 (not res!2465179)) b!5857325))

(assert (= (and b!5857325 (not res!2465180)) b!5857332))

(assert (= (or b!5857336 b!5857334 b!5857337) bm!459010))

(assert (=> b!5857327 m!6774484))

(assert (=> b!5857327 m!6775258))

(assert (=> b!5857329 m!6774554))

(declare-fun m!6775424 () Bool)

(assert (=> b!5857329 m!6775424))

(assert (=> b!5857325 m!6774484))

(assert (=> b!5857325 m!6775262))

(assert (=> b!5857325 m!6775262))

(assert (=> b!5857325 m!6775264))

(assert (=> bm!459010 m!6774484))

(assert (=> bm!459010 m!6774550))

(assert (=> b!5857332 m!6774484))

(assert (=> b!5857332 m!6775258))

(assert (=> b!5857328 m!6774484))

(assert (=> b!5857328 m!6775262))

(assert (=> b!5857328 m!6775262))

(assert (=> b!5857328 m!6775264))

(assert (=> d!1839555 m!6774484))

(assert (=> d!1839555 m!6774550))

(assert (=> d!1839555 m!6774554))

(declare-fun m!6775426 () Bool)

(assert (=> d!1839555 m!6775426))

(assert (=> b!5857326 m!6774484))

(assert (=> b!5857326 m!6775258))

(assert (=> b!5857326 m!6774554))

(assert (=> b!5857326 m!6775258))

(declare-fun m!6775428 () Bool)

(assert (=> b!5857326 m!6775428))

(assert (=> b!5857326 m!6774484))

(assert (=> b!5857326 m!6775262))

(assert (=> b!5857326 m!6775428))

(assert (=> b!5857326 m!6775262))

(declare-fun m!6775430 () Bool)

(assert (=> b!5857326 m!6775430))

(assert (=> b!5856258 d!1839555))

(declare-fun b!5857339 () Bool)

(declare-fun c!1038835 () Bool)

(assert (=> b!5857339 (= c!1038835 ((_ is Union!15923) (regTwo!32359 r!7292)))))

(declare-fun e!3591587 () Regex!15923)

(declare-fun e!3591589 () Regex!15923)

(assert (=> b!5857339 (= e!3591587 e!3591589)))

(declare-fun bm!459011 () Bool)

(declare-fun call!459016 () Regex!15923)

(declare-fun call!459019 () Regex!15923)

(assert (=> bm!459011 (= call!459016 call!459019)))

(declare-fun bm!459012 () Bool)

(declare-fun call!459018 () Regex!15923)

(assert (=> bm!459012 (= call!459018 (derivativeStep!4661 (ite c!1038835 (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))) (head!12400 s!2326)))))

(declare-fun b!5857340 () Bool)

(assert (=> b!5857340 (= e!3591589 (Union!15923 call!459019 call!459018))))

(declare-fun b!5857341 () Bool)

(declare-fun e!3591588 () Regex!15923)

(assert (=> b!5857341 (= e!3591589 e!3591588)))

(declare-fun c!1038833 () Bool)

(assert (=> b!5857341 (= c!1038833 ((_ is Star!15923) (regTwo!32359 r!7292)))))

(declare-fun b!5857342 () Bool)

(assert (=> b!5857342 (= e!3591587 (ite (= (head!12400 s!2326) (c!1038343 (regTwo!32359 r!7292))) EmptyExpr!15923 EmptyLang!15923))))

(declare-fun b!5857343 () Bool)

(declare-fun e!3591590 () Regex!15923)

(declare-fun call!459017 () Regex!15923)

(assert (=> b!5857343 (= e!3591590 (Union!15923 (Concat!24768 call!459017 (regTwo!32358 (regTwo!32359 r!7292))) EmptyLang!15923))))

(declare-fun b!5857344 () Bool)

(assert (=> b!5857344 (= e!3591590 (Union!15923 (Concat!24768 call!459018 (regTwo!32358 (regTwo!32359 r!7292))) call!459017))))

(declare-fun b!5857345 () Bool)

(declare-fun c!1038834 () Bool)

(assert (=> b!5857345 (= c!1038834 (nullable!5923 (regOne!32358 (regTwo!32359 r!7292))))))

(assert (=> b!5857345 (= e!3591588 e!3591590)))

(declare-fun b!5857346 () Bool)

(declare-fun e!3591591 () Regex!15923)

(assert (=> b!5857346 (= e!3591591 e!3591587)))

(declare-fun c!1038836 () Bool)

(assert (=> b!5857346 (= c!1038836 ((_ is ElementMatch!15923) (regTwo!32359 r!7292)))))

(declare-fun bm!459013 () Bool)

(assert (=> bm!459013 (= call!459017 call!459016)))

(declare-fun b!5857348 () Bool)

(assert (=> b!5857348 (= e!3591588 (Concat!24768 call!459016 (regTwo!32359 r!7292)))))

(declare-fun bm!459014 () Bool)

(assert (=> bm!459014 (= call!459019 (derivativeStep!4661 (ite c!1038835 (regOne!32359 (regTwo!32359 r!7292)) (ite c!1038833 (reg!16252 (regTwo!32359 r!7292)) (ite c!1038834 (regTwo!32358 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292))))) (head!12400 s!2326)))))

(declare-fun b!5857347 () Bool)

(assert (=> b!5857347 (= e!3591591 EmptyLang!15923)))

(declare-fun d!1839557 () Bool)

(declare-fun lt!2304993 () Regex!15923)

(assert (=> d!1839557 (validRegex!7659 lt!2304993)))

(assert (=> d!1839557 (= lt!2304993 e!3591591)))

(declare-fun c!1038832 () Bool)

(assert (=> d!1839557 (= c!1038832 (or ((_ is EmptyExpr!15923) (regTwo!32359 r!7292)) ((_ is EmptyLang!15923) (regTwo!32359 r!7292))))))

(assert (=> d!1839557 (validRegex!7659 (regTwo!32359 r!7292))))

(assert (=> d!1839557 (= (derivativeStep!4661 (regTwo!32359 r!7292) (head!12400 s!2326)) lt!2304993)))

(assert (= (and d!1839557 c!1038832) b!5857347))

(assert (= (and d!1839557 (not c!1038832)) b!5857346))

(assert (= (and b!5857346 c!1038836) b!5857342))

(assert (= (and b!5857346 (not c!1038836)) b!5857339))

(assert (= (and b!5857339 c!1038835) b!5857340))

(assert (= (and b!5857339 (not c!1038835)) b!5857341))

(assert (= (and b!5857341 c!1038833) b!5857348))

(assert (= (and b!5857341 (not c!1038833)) b!5857345))

(assert (= (and b!5857345 c!1038834) b!5857344))

(assert (= (and b!5857345 (not c!1038834)) b!5857343))

(assert (= (or b!5857344 b!5857343) bm!459013))

(assert (= (or b!5857348 bm!459013) bm!459011))

(assert (= (or b!5857340 b!5857344) bm!459012))

(assert (= (or b!5857340 bm!459011) bm!459014))

(assert (=> bm!459012 m!6774480))

(declare-fun m!6775432 () Bool)

(assert (=> bm!459012 m!6775432))

(assert (=> b!5857345 m!6774524))

(assert (=> bm!459014 m!6774480))

(declare-fun m!6775434 () Bool)

(assert (=> bm!459014 m!6775434))

(declare-fun m!6775436 () Bool)

(assert (=> d!1839557 m!6775436))

(assert (=> d!1839557 m!6774552))

(assert (=> b!5856258 d!1839557))

(assert (=> b!5856258 d!1839421))

(assert (=> b!5856258 d!1839391))

(assert (=> b!5856299 d!1839109))

(assert (=> bs!1379815 d!1839139))

(assert (=> bm!458780 d!1839379))

(declare-fun bs!1380101 () Bool)

(declare-fun b!5857349 () Bool)

(assert (= bs!1380101 (and b!5857349 b!5856271)))

(declare-fun lambda!320266 () Int)

(assert (=> bs!1380101 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 (regOne!32359 r!7292))) (= (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32359 r!7292))) (= lambda!320266 lambda!320207))))

(declare-fun bs!1380102 () Bool)

(assert (= bs!1380102 (and b!5857349 b!5856281)))

(assert (=> bs!1380102 (not (= lambda!320266 lambda!320208))))

(declare-fun bs!1380103 () Bool)

(assert (= bs!1380103 (and b!5857349 b!5856296)))

(assert (=> bs!1380103 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 r!7292)) (= (regTwo!32359 (regTwo!32359 r!7292)) r!7292)) (= lambda!320266 lambda!320210))))

(declare-fun bs!1380104 () Bool)

(assert (= bs!1380104 (and b!5857349 b!5856224)))

(assert (=> bs!1380104 (not (= lambda!320266 lambda!320206))))

(declare-fun bs!1380105 () Bool)

(assert (= bs!1380105 (and b!5857349 b!5857193)))

(assert (=> bs!1380105 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 (regOne!32359 (regOne!32359 r!7292)))) (= (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32359 (regOne!32359 r!7292)))) (= lambda!320266 lambda!320255))))

(declare-fun bs!1380106 () Bool)

(assert (= bs!1380106 (and b!5857349 b!5857085)))

(assert (=> bs!1380106 (not (= lambda!320266 lambda!320253))))

(declare-fun bs!1380107 () Bool)

(assert (= bs!1380107 (and b!5857349 b!5856306)))

(assert (=> bs!1380107 (not (= lambda!320266 lambda!320211))))

(declare-fun bs!1380108 () Bool)

(assert (= bs!1380108 (and b!5857349 b!5857304)))

(assert (=> bs!1380108 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 (regOne!32359 (regTwo!32359 r!7292)))) (= (regTwo!32359 (regTwo!32359 r!7292)) (regOne!32359 (regTwo!32359 r!7292)))) (= lambda!320266 lambda!320263))))

(declare-fun bs!1380109 () Bool)

(assert (= bs!1380109 (and b!5857349 b!5857203)))

(assert (=> bs!1380109 (not (= lambda!320266 lambda!320256))))

(declare-fun bs!1380110 () Bool)

(assert (= bs!1380110 (and b!5857349 b!5857075)))

(assert (=> bs!1380110 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 (regTwo!32359 (regOne!32359 r!7292)))) (= (regTwo!32359 (regTwo!32359 r!7292)) (regTwo!32359 (regOne!32359 r!7292)))) (= lambda!320266 lambda!320252))))

(declare-fun bs!1380111 () Bool)

(assert (= bs!1380111 (and b!5857349 b!5857314)))

(assert (=> bs!1380111 (not (= lambda!320266 lambda!320264))))

(declare-fun bs!1380112 () Bool)

(assert (= bs!1380112 (and b!5857349 b!5856214)))

(assert (=> bs!1380112 (= (and (= (reg!16252 (regTwo!32359 (regTwo!32359 r!7292))) (reg!16252 (regTwo!32359 r!7292))) (= (regTwo!32359 (regTwo!32359 r!7292)) (regTwo!32359 r!7292))) (= lambda!320266 lambda!320205))))

(assert (=> b!5857349 true))

(assert (=> b!5857349 true))

(declare-fun bs!1380113 () Bool)

(declare-fun b!5857359 () Bool)

(assert (= bs!1380113 (and b!5857359 b!5856271)))

(declare-fun lambda!320267 () Int)

(assert (=> bs!1380113 (not (= lambda!320267 lambda!320207))))

(declare-fun bs!1380114 () Bool)

(assert (= bs!1380114 (and b!5857359 b!5857349)))

(assert (=> bs!1380114 (not (= lambda!320267 lambda!320266))))

(declare-fun bs!1380115 () Bool)

(assert (= bs!1380115 (and b!5857359 b!5856281)))

(assert (=> bs!1380115 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 (regOne!32359 r!7292))) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regOne!32359 r!7292)))) (= lambda!320267 lambda!320208))))

(declare-fun bs!1380116 () Bool)

(assert (= bs!1380116 (and b!5857359 b!5856296)))

(assert (=> bs!1380116 (not (= lambda!320267 lambda!320210))))

(declare-fun bs!1380117 () Bool)

(assert (= bs!1380117 (and b!5857359 b!5856224)))

(assert (=> bs!1380117 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 (regTwo!32359 r!7292))) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regTwo!32359 r!7292)))) (= lambda!320267 lambda!320206))))

(declare-fun bs!1380118 () Bool)

(assert (= bs!1380118 (and b!5857359 b!5857193)))

(assert (=> bs!1380118 (not (= lambda!320267 lambda!320255))))

(declare-fun bs!1380119 () Bool)

(assert (= bs!1380119 (and b!5857359 b!5857085)))

(assert (=> bs!1380119 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 (regTwo!32359 (regOne!32359 r!7292)))) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regTwo!32359 (regOne!32359 r!7292))))) (= lambda!320267 lambda!320253))))

(declare-fun bs!1380120 () Bool)

(assert (= bs!1380120 (and b!5857359 b!5856306)))

(assert (=> bs!1380120 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 r!7292)) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 r!7292))) (= lambda!320267 lambda!320211))))

(declare-fun bs!1380121 () Bool)

(assert (= bs!1380121 (and b!5857359 b!5857304)))

(assert (=> bs!1380121 (not (= lambda!320267 lambda!320263))))

(declare-fun bs!1380122 () Bool)

(assert (= bs!1380122 (and b!5857359 b!5857203)))

(assert (=> bs!1380122 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 (regOne!32359 (regOne!32359 r!7292)))) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regOne!32359 (regOne!32359 r!7292))))) (= lambda!320267 lambda!320256))))

(declare-fun bs!1380123 () Bool)

(assert (= bs!1380123 (and b!5857359 b!5857075)))

(assert (=> bs!1380123 (not (= lambda!320267 lambda!320252))))

(declare-fun bs!1380124 () Bool)

(assert (= bs!1380124 (and b!5857359 b!5857314)))

(assert (=> bs!1380124 (= (and (= (regOne!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regOne!32358 (regOne!32359 (regTwo!32359 r!7292)))) (= (regTwo!32358 (regTwo!32359 (regTwo!32359 r!7292))) (regTwo!32358 (regOne!32359 (regTwo!32359 r!7292))))) (= lambda!320267 lambda!320264))))

(declare-fun bs!1380125 () Bool)

(assert (= bs!1380125 (and b!5857359 b!5856214)))

(assert (=> bs!1380125 (not (= lambda!320267 lambda!320205))))

(assert (=> b!5857359 true))

(assert (=> b!5857359 true))

(declare-fun e!3591596 () Bool)

(declare-fun call!459021 () Bool)

(assert (=> b!5857349 (= e!3591596 call!459021)))

(declare-fun b!5857350 () Bool)

(declare-fun e!3591594 () Bool)

(declare-fun call!459020 () Bool)

(assert (=> b!5857350 (= e!3591594 call!459020)))

(declare-fun b!5857351 () Bool)

(declare-fun c!1038840 () Bool)

(assert (=> b!5857351 (= c!1038840 ((_ is ElementMatch!15923) (regTwo!32359 (regTwo!32359 r!7292))))))

(declare-fun e!3591595 () Bool)

(declare-fun e!3591592 () Bool)

(assert (=> b!5857351 (= e!3591595 e!3591592)))

(declare-fun b!5857352 () Bool)

(declare-fun e!3591597 () Bool)

(assert (=> b!5857352 (= e!3591597 (matchRSpec!3024 (regTwo!32359 (regTwo!32359 (regTwo!32359 r!7292))) s!2326))))

(declare-fun b!5857354 () Bool)

(declare-fun c!1038838 () Bool)

(assert (=> b!5857354 (= c!1038838 ((_ is Union!15923) (regTwo!32359 (regTwo!32359 r!7292))))))

(declare-fun e!3591593 () Bool)

(assert (=> b!5857354 (= e!3591592 e!3591593)))

(declare-fun b!5857355 () Bool)

(declare-fun res!2465186 () Bool)

(assert (=> b!5857355 (=> res!2465186 e!3591596)))

(assert (=> b!5857355 (= res!2465186 call!459020)))

(declare-fun e!3591598 () Bool)

(assert (=> b!5857355 (= e!3591598 e!3591596)))

(declare-fun b!5857356 () Bool)

(assert (=> b!5857356 (= e!3591593 e!3591597)))

(declare-fun res!2465184 () Bool)

(assert (=> b!5857356 (= res!2465184 (matchRSpec!3024 (regOne!32359 (regTwo!32359 (regTwo!32359 r!7292))) s!2326))))

(assert (=> b!5857356 (=> res!2465184 e!3591597)))

(declare-fun b!5857357 () Bool)

(assert (=> b!5857357 (= e!3591594 e!3591595)))

(declare-fun res!2465185 () Bool)

(assert (=> b!5857357 (= res!2465185 (not ((_ is EmptyLang!15923) (regTwo!32359 (regTwo!32359 r!7292)))))))

(assert (=> b!5857357 (=> (not res!2465185) (not e!3591595))))

(declare-fun bm!459015 () Bool)

(assert (=> bm!459015 (= call!459020 (isEmpty!35805 s!2326))))

(declare-fun b!5857358 () Bool)

(assert (=> b!5857358 (= e!3591593 e!3591598)))

(declare-fun c!1038837 () Bool)

(assert (=> b!5857358 (= c!1038837 ((_ is Star!15923) (regTwo!32359 (regTwo!32359 r!7292))))))

(declare-fun d!1839559 () Bool)

(declare-fun c!1038839 () Bool)

(assert (=> d!1839559 (= c!1038839 ((_ is EmptyExpr!15923) (regTwo!32359 (regTwo!32359 r!7292))))))

(assert (=> d!1839559 (= (matchRSpec!3024 (regTwo!32359 (regTwo!32359 r!7292)) s!2326) e!3591594)))

(declare-fun b!5857353 () Bool)

(assert (=> b!5857353 (= e!3591592 (= s!2326 (Cons!63945 (c!1038343 (regTwo!32359 (regTwo!32359 r!7292))) Nil!63945)))))

(assert (=> b!5857359 (= e!3591598 call!459021)))

(declare-fun bm!459016 () Bool)

(assert (=> bm!459016 (= call!459021 (Exists!2995 (ite c!1038837 lambda!320266 lambda!320267)))))

(assert (= (and d!1839559 c!1038839) b!5857350))

(assert (= (and d!1839559 (not c!1038839)) b!5857357))

(assert (= (and b!5857357 res!2465185) b!5857351))

(assert (= (and b!5857351 c!1038840) b!5857353))

(assert (= (and b!5857351 (not c!1038840)) b!5857354))

(assert (= (and b!5857354 c!1038838) b!5857356))

(assert (= (and b!5857354 (not c!1038838)) b!5857358))

(assert (= (and b!5857356 (not res!2465184)) b!5857352))

(assert (= (and b!5857358 c!1038837) b!5857355))

(assert (= (and b!5857358 (not c!1038837)) b!5857359))

(assert (= (and b!5857355 (not res!2465186)) b!5857349))

(assert (= (or b!5857349 b!5857359) bm!459016))

(assert (= (or b!5857350 b!5857355) bm!459015))

(declare-fun m!6775438 () Bool)

(assert (=> b!5857352 m!6775438))

(declare-fun m!6775440 () Bool)

(assert (=> b!5857356 m!6775440))

(assert (=> bm!459015 m!6774476))

(declare-fun m!6775442 () Bool)

(assert (=> bm!459016 m!6775442))

(assert (=> b!5856217 d!1839559))

(declare-fun bs!1380126 () Bool)

(declare-fun d!1839561 () Bool)

(assert (= bs!1380126 (and d!1839561 d!1839099)))

(declare-fun lambda!320268 () Int)

(assert (=> bs!1380126 (= lambda!320268 lambda!320200)))

(declare-fun bs!1380127 () Bool)

(assert (= bs!1380127 (and d!1839561 d!1839149)))

(assert (=> bs!1380127 (= lambda!320268 lambda!320221)))

(declare-fun bs!1380128 () Bool)

(assert (= bs!1380128 (and d!1839561 d!1839147)))

(assert (=> bs!1380128 (= lambda!320268 lambda!320218)))

(declare-fun bs!1380129 () Bool)

(assert (= bs!1380129 (and d!1839561 d!1839403)))

(assert (=> bs!1380129 (= lambda!320268 lambda!320248)))

(declare-fun bs!1380130 () Bool)

(assert (= bs!1380130 (and d!1839561 d!1839153)))

(assert (=> bs!1380130 (= lambda!320268 lambda!320224)))

(declare-fun bs!1380131 () Bool)

(assert (= bs!1380131 (and d!1839561 d!1839143)))

(assert (=> bs!1380131 (= lambda!320268 lambda!320215)))

(declare-fun bs!1380132 () Bool)

(assert (= bs!1380132 (and d!1839561 d!1839123)))

(assert (=> bs!1380132 (= lambda!320268 lambda!320209)))

(declare-fun bs!1380133 () Bool)

(assert (= bs!1380133 (and d!1839561 d!1839553)))

(assert (=> bs!1380133 (= lambda!320268 lambda!320265)))

(declare-fun bs!1380134 () Bool)

(assert (= bs!1380134 (and d!1839561 d!1839429)))

(assert (=> bs!1380134 (= lambda!320268 lambda!320250)))

(declare-fun b!5857360 () Bool)

(declare-fun e!3591603 () Bool)

(assert (=> b!5857360 (= e!3591603 (isEmpty!35806 (t!377435 (t!377435 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5857361 () Bool)

(declare-fun e!3591599 () Bool)

(declare-fun lt!2304994 () Regex!15923)

(assert (=> b!5857361 (= e!3591599 (isEmptyExpr!1358 lt!2304994))))

(declare-fun b!5857362 () Bool)

(declare-fun e!3591601 () Bool)

(assert (=> b!5857362 (= e!3591601 (isConcat!881 lt!2304994))))

(declare-fun b!5857363 () Bool)

(declare-fun e!3591604 () Regex!15923)

(assert (=> b!5857363 (= e!3591604 (Concat!24768 (h!70392 (t!377435 (exprs!5807 (h!70394 zl!343)))) (generalisedConcat!1520 (t!377435 (t!377435 (exprs!5807 (h!70394 zl!343)))))))))

(declare-fun b!5857364 () Bool)

(declare-fun e!3591602 () Bool)

(assert (=> b!5857364 (= e!3591602 e!3591599)))

(declare-fun c!1038842 () Bool)

(assert (=> b!5857364 (= c!1038842 (isEmpty!35806 (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> d!1839561 e!3591602))

(declare-fun res!2465188 () Bool)

(assert (=> d!1839561 (=> (not res!2465188) (not e!3591602))))

(assert (=> d!1839561 (= res!2465188 (validRegex!7659 lt!2304994))))

(declare-fun e!3591600 () Regex!15923)

(assert (=> d!1839561 (= lt!2304994 e!3591600)))

(declare-fun c!1038841 () Bool)

(assert (=> d!1839561 (= c!1038841 e!3591603)))

(declare-fun res!2465187 () Bool)

(assert (=> d!1839561 (=> (not res!2465187) (not e!3591603))))

(assert (=> d!1839561 (= res!2465187 ((_ is Cons!63944) (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> d!1839561 (forall!15010 (t!377435 (exprs!5807 (h!70394 zl!343))) lambda!320268)))

(assert (=> d!1839561 (= (generalisedConcat!1520 (t!377435 (exprs!5807 (h!70394 zl!343)))) lt!2304994)))

(declare-fun b!5857365 () Bool)

(assert (=> b!5857365 (= e!3591600 (h!70392 (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5857366 () Bool)

(assert (=> b!5857366 (= e!3591600 e!3591604)))

(declare-fun c!1038844 () Bool)

(assert (=> b!5857366 (= c!1038844 ((_ is Cons!63944) (t!377435 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun b!5857367 () Bool)

(assert (=> b!5857367 (= e!3591604 EmptyExpr!15923)))

(declare-fun b!5857368 () Bool)

(assert (=> b!5857368 (= e!3591599 e!3591601)))

(declare-fun c!1038843 () Bool)

(assert (=> b!5857368 (= c!1038843 (isEmpty!35806 (tail!11486 (t!377435 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5857369 () Bool)

(assert (=> b!5857369 (= e!3591601 (= lt!2304994 (head!12401 (t!377435 (exprs!5807 (h!70394 zl!343))))))))

(assert (= (and d!1839561 res!2465187) b!5857360))

(assert (= (and d!1839561 c!1038841) b!5857365))

(assert (= (and d!1839561 (not c!1038841)) b!5857366))

(assert (= (and b!5857366 c!1038844) b!5857363))

(assert (= (and b!5857366 (not c!1038844)) b!5857367))

(assert (= (and d!1839561 res!2465188) b!5857364))

(assert (= (and b!5857364 c!1038842) b!5857361))

(assert (= (and b!5857364 (not c!1038842)) b!5857368))

(assert (= (and b!5857368 c!1038843) b!5857369))

(assert (= (and b!5857368 (not c!1038843)) b!5857362))

(declare-fun m!6775444 () Bool)

(assert (=> b!5857360 m!6775444))

(declare-fun m!6775446 () Bool)

(assert (=> b!5857369 m!6775446))

(declare-fun m!6775448 () Bool)

(assert (=> b!5857362 m!6775448))

(declare-fun m!6775450 () Bool)

(assert (=> b!5857363 m!6775450))

(declare-fun m!6775452 () Bool)

(assert (=> d!1839561 m!6775452))

(declare-fun m!6775454 () Bool)

(assert (=> d!1839561 m!6775454))

(declare-fun m!6775456 () Bool)

(assert (=> b!5857361 m!6775456))

(assert (=> b!5857364 m!6774648))

(declare-fun m!6775458 () Bool)

(assert (=> b!5857368 m!6775458))

(assert (=> b!5857368 m!6775458))

(declare-fun m!6775460 () Bool)

(assert (=> b!5857368 m!6775460))

(assert (=> b!5856422 d!1839561))

(declare-fun b!5857370 () Bool)

(declare-fun e!3591610 () (InoxSet Context!10614))

(declare-fun call!459024 () (InoxSet Context!10614))

(assert (=> b!5857370 (= e!3591610 call!459024)))

(declare-fun b!5857371 () Bool)

(assert (=> b!5857371 (= e!3591610 ((as const (Array Context!10614 Bool)) false))))

(declare-fun b!5857372 () Bool)

(declare-fun e!3591607 () (InoxSet Context!10614))

(assert (=> b!5857372 (= e!3591607 (store ((as const (Array Context!10614 Bool)) false) (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) true))))

(declare-fun b!5857373 () Bool)

(declare-fun e!3591606 () (InoxSet Context!10614))

(assert (=> b!5857373 (= e!3591607 e!3591606)))

(declare-fun c!1038848 () Bool)

(assert (=> b!5857373 (= c!1038848 ((_ is Union!15923) (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun c!1038845 () Bool)

(declare-fun call!459027 () List!64068)

(declare-fun bm!459018 () Bool)

(declare-fun c!1038849 () Bool)

(assert (=> bm!459018 (= call!459027 ($colon$colon!1828 (exprs!5807 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343))))) (ite (or c!1038845 c!1038849) (regTwo!32358 (h!70392 (exprs!5807 (h!70394 zl!343)))) (h!70392 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5857374 () Bool)

(declare-fun e!3591605 () (InoxSet Context!10614))

(declare-fun call!459022 () (InoxSet Context!10614))

(declare-fun call!459023 () (InoxSet Context!10614))

(assert (=> b!5857374 (= e!3591605 ((_ map or) call!459022 call!459023))))

(declare-fun bm!459019 () Bool)

(assert (=> bm!459019 (= call!459022 (derivationStepZipperDown!1189 (ite c!1038848 (regTwo!32359 (h!70392 (exprs!5807 (h!70394 zl!343)))) (regOne!32358 (h!70392 (exprs!5807 (h!70394 zl!343))))) (ite c!1038848 (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (Context!10615 call!459027)) (h!70393 s!2326)))))

(declare-fun bm!459020 () Bool)

(assert (=> bm!459020 (= call!459024 call!459023)))

(declare-fun d!1839563 () Bool)

(declare-fun c!1038846 () Bool)

(assert (=> d!1839563 (= c!1038846 (and ((_ is ElementMatch!15923) (h!70392 (exprs!5807 (h!70394 zl!343)))) (= (c!1038343 (h!70392 (exprs!5807 (h!70394 zl!343)))) (h!70393 s!2326))))))

(assert (=> d!1839563 (= (derivationStepZipperDown!1189 (h!70392 (exprs!5807 (h!70394 zl!343))) (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (h!70393 s!2326)) e!3591607)))

(declare-fun bm!459017 () Bool)

(declare-fun call!459025 () List!64068)

(assert (=> bm!459017 (= call!459025 call!459027)))

(declare-fun bm!459021 () Bool)

(declare-fun call!459026 () (InoxSet Context!10614))

(assert (=> bm!459021 (= call!459023 call!459026)))

(declare-fun b!5857375 () Bool)

(declare-fun e!3591609 () (InoxSet Context!10614))

(assert (=> b!5857375 (= e!3591609 call!459024)))

(declare-fun b!5857376 () Bool)

(declare-fun e!3591608 () Bool)

(assert (=> b!5857376 (= e!3591608 (nullable!5923 (regOne!32358 (h!70392 (exprs!5807 (h!70394 zl!343))))))))

(declare-fun b!5857377 () Bool)

(assert (=> b!5857377 (= c!1038845 e!3591608)))

(declare-fun res!2465189 () Bool)

(assert (=> b!5857377 (=> (not res!2465189) (not e!3591608))))

(assert (=> b!5857377 (= res!2465189 ((_ is Concat!24768) (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> b!5857377 (= e!3591606 e!3591605)))

(declare-fun b!5857378 () Bool)

(assert (=> b!5857378 (= e!3591605 e!3591609)))

(assert (=> b!5857378 (= c!1038849 ((_ is Concat!24768) (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun bm!459022 () Bool)

(assert (=> bm!459022 (= call!459026 (derivationStepZipperDown!1189 (ite c!1038848 (regOne!32359 (h!70392 (exprs!5807 (h!70394 zl!343)))) (ite c!1038845 (regTwo!32358 (h!70392 (exprs!5807 (h!70394 zl!343)))) (ite c!1038849 (regOne!32358 (h!70392 (exprs!5807 (h!70394 zl!343)))) (reg!16252 (h!70392 (exprs!5807 (h!70394 zl!343))))))) (ite (or c!1038848 c!1038845) (Context!10615 (t!377435 (exprs!5807 (h!70394 zl!343)))) (Context!10615 call!459025)) (h!70393 s!2326)))))

(declare-fun b!5857379 () Bool)

(declare-fun c!1038847 () Bool)

(assert (=> b!5857379 (= c!1038847 ((_ is Star!15923) (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> b!5857379 (= e!3591609 e!3591610)))

(declare-fun b!5857380 () Bool)

(assert (=> b!5857380 (= e!3591606 ((_ map or) call!459026 call!459022))))

(assert (= (and d!1839563 c!1038846) b!5857372))

(assert (= (and d!1839563 (not c!1038846)) b!5857373))

(assert (= (and b!5857373 c!1038848) b!5857380))

(assert (= (and b!5857373 (not c!1038848)) b!5857377))

(assert (= (and b!5857377 res!2465189) b!5857376))

(assert (= (and b!5857377 c!1038845) b!5857374))

(assert (= (and b!5857377 (not c!1038845)) b!5857378))

(assert (= (and b!5857378 c!1038849) b!5857375))

(assert (= (and b!5857378 (not c!1038849)) b!5857379))

(assert (= (and b!5857379 c!1038847) b!5857370))

(assert (= (and b!5857379 (not c!1038847)) b!5857371))

(assert (= (or b!5857375 b!5857370) bm!459017))

(assert (= (or b!5857375 b!5857370) bm!459020))

(assert (= (or b!5857374 bm!459017) bm!459018))

(assert (= (or b!5857374 bm!459020) bm!459021))

(assert (= (or b!5857380 b!5857374) bm!459019))

(assert (= (or b!5857380 bm!459021) bm!459022))

(declare-fun m!6775462 () Bool)

(assert (=> bm!459018 m!6775462))

(declare-fun m!6775464 () Bool)

(assert (=> b!5857376 m!6775464))

(declare-fun m!6775466 () Bool)

(assert (=> bm!459022 m!6775466))

(declare-fun m!6775468 () Bool)

(assert (=> bm!459019 m!6775468))

(declare-fun m!6775470 () Bool)

(assert (=> b!5857372 m!6775470))

(assert (=> bm!458784 d!1839563))

(assert (=> d!1839115 d!1839113))

(assert (=> d!1839115 d!1839109))

(declare-fun d!1839565 () Bool)

(assert (=> d!1839565 (= (matchR!8106 (regTwo!32359 r!7292) s!2326) (matchRSpec!3024 (regTwo!32359 r!7292) s!2326))))

(assert (=> d!1839565 true))

(declare-fun _$88!4280 () Unit!157117)

(assert (=> d!1839565 (= (choose!44405 (regTwo!32359 r!7292) s!2326) _$88!4280)))

(declare-fun bs!1380135 () Bool)

(assert (= bs!1380135 d!1839565))

(assert (=> bs!1380135 m!6774184))

(assert (=> bs!1380135 m!6774180))

(assert (=> d!1839115 d!1839565))

(declare-fun b!5857381 () Bool)

(declare-fun e!3591614 () Bool)

(declare-fun call!459030 () Bool)

(assert (=> b!5857381 (= e!3591614 call!459030)))

(declare-fun b!5857382 () Bool)

(declare-fun e!3591611 () Bool)

(declare-fun e!3591617 () Bool)

(assert (=> b!5857382 (= e!3591611 e!3591617)))

(declare-fun c!1038851 () Bool)

(assert (=> b!5857382 (= c!1038851 ((_ is Union!15923) (regTwo!32359 r!7292)))))

(declare-fun call!459029 () Bool)

(declare-fun bm!459023 () Bool)

(declare-fun c!1038850 () Bool)

(assert (=> bm!459023 (= call!459029 (validRegex!7659 (ite c!1038850 (reg!16252 (regTwo!32359 r!7292)) (ite c!1038851 (regTwo!32359 (regTwo!32359 r!7292)) (regTwo!32358 (regTwo!32359 r!7292))))))))

(declare-fun b!5857383 () Bool)

(declare-fun e!3591612 () Bool)

(declare-fun e!3591615 () Bool)

(assert (=> b!5857383 (= e!3591612 e!3591615)))

(declare-fun res!2465190 () Bool)

(assert (=> b!5857383 (=> (not res!2465190) (not e!3591615))))

(declare-fun call!459028 () Bool)

(assert (=> b!5857383 (= res!2465190 call!459028)))

(declare-fun b!5857384 () Bool)

(declare-fun e!3591616 () Bool)

(assert (=> b!5857384 (= e!3591616 e!3591611)))

(assert (=> b!5857384 (= c!1038850 ((_ is Star!15923) (regTwo!32359 r!7292)))))

(declare-fun b!5857385 () Bool)

(declare-fun e!3591613 () Bool)

(assert (=> b!5857385 (= e!3591611 e!3591613)))

(declare-fun res!2465192 () Bool)

(assert (=> b!5857385 (= res!2465192 (not (nullable!5923 (reg!16252 (regTwo!32359 r!7292)))))))

(assert (=> b!5857385 (=> (not res!2465192) (not e!3591613))))

(declare-fun b!5857386 () Bool)

(declare-fun res!2465193 () Bool)

(assert (=> b!5857386 (=> (not res!2465193) (not e!3591614))))

(assert (=> b!5857386 (= res!2465193 call!459028)))

(assert (=> b!5857386 (= e!3591617 e!3591614)))

(declare-fun d!1839567 () Bool)

(declare-fun res!2465191 () Bool)

(assert (=> d!1839567 (=> res!2465191 e!3591616)))

(assert (=> d!1839567 (= res!2465191 ((_ is ElementMatch!15923) (regTwo!32359 r!7292)))))

(assert (=> d!1839567 (= (validRegex!7659 (regTwo!32359 r!7292)) e!3591616)))

(declare-fun b!5857387 () Bool)

(assert (=> b!5857387 (= e!3591615 call!459030)))

(declare-fun b!5857388 () Bool)

(assert (=> b!5857388 (= e!3591613 call!459029)))

(declare-fun bm!459024 () Bool)

(assert (=> bm!459024 (= call!459030 call!459029)))

(declare-fun b!5857389 () Bool)

(declare-fun res!2465194 () Bool)

(assert (=> b!5857389 (=> res!2465194 e!3591612)))

(assert (=> b!5857389 (= res!2465194 (not ((_ is Concat!24768) (regTwo!32359 r!7292))))))

(assert (=> b!5857389 (= e!3591617 e!3591612)))

(declare-fun bm!459025 () Bool)

(assert (=> bm!459025 (= call!459028 (validRegex!7659 (ite c!1038851 (regOne!32359 (regTwo!32359 r!7292)) (regOne!32358 (regTwo!32359 r!7292)))))))

(assert (= (and d!1839567 (not res!2465191)) b!5857384))

(assert (= (and b!5857384 c!1038850) b!5857385))

(assert (= (and b!5857384 (not c!1038850)) b!5857382))

(assert (= (and b!5857385 res!2465192) b!5857388))

(assert (= (and b!5857382 c!1038851) b!5857386))

(assert (= (and b!5857382 (not c!1038851)) b!5857389))

(assert (= (and b!5857386 res!2465193) b!5857381))

(assert (= (and b!5857389 (not res!2465194)) b!5857383))

(assert (= (and b!5857383 res!2465190) b!5857387))

(assert (= (or b!5857381 b!5857387) bm!459024))

(assert (= (or b!5857386 b!5857383) bm!459025))

(assert (= (or b!5857388 bm!459024) bm!459023))

(declare-fun m!6775472 () Bool)

(assert (=> bm!459023 m!6775472))

(declare-fun m!6775474 () Bool)

(assert (=> b!5857385 m!6775474))

(declare-fun m!6775476 () Bool)

(assert (=> bm!459025 m!6775476))

(assert (=> d!1839115 d!1839567))

(declare-fun d!1839569 () Bool)

(assert (=> d!1839569 (= (flatMap!1454 z!1189 lambda!320214) (choose!44407 z!1189 lambda!320214))))

(declare-fun bs!1380136 () Bool)

(assert (= bs!1380136 d!1839569))

(declare-fun m!6775478 () Bool)

(assert (=> bs!1380136 m!6775478))

(assert (=> d!1839135 d!1839569))

(assert (=> bm!458778 d!1839379))

(declare-fun bs!1380137 () Bool)

(declare-fun d!1839571 () Bool)

(assert (= bs!1380137 (and d!1839571 d!1839099)))

(declare-fun lambda!320269 () Int)

(assert (=> bs!1380137 (= lambda!320269 lambda!320200)))

(declare-fun bs!1380138 () Bool)

(assert (= bs!1380138 (and d!1839571 d!1839149)))

(assert (=> bs!1380138 (= lambda!320269 lambda!320221)))

(declare-fun bs!1380139 () Bool)

(assert (= bs!1380139 (and d!1839571 d!1839147)))

(assert (=> bs!1380139 (= lambda!320269 lambda!320218)))

(declare-fun bs!1380140 () Bool)

(assert (= bs!1380140 (and d!1839571 d!1839403)))

(assert (=> bs!1380140 (= lambda!320269 lambda!320248)))

(declare-fun bs!1380141 () Bool)

(assert (= bs!1380141 (and d!1839571 d!1839153)))

(assert (=> bs!1380141 (= lambda!320269 lambda!320224)))

(declare-fun bs!1380142 () Bool)

(assert (= bs!1380142 (and d!1839571 d!1839561)))

(assert (=> bs!1380142 (= lambda!320269 lambda!320268)))

(declare-fun bs!1380143 () Bool)

(assert (= bs!1380143 (and d!1839571 d!1839143)))

(assert (=> bs!1380143 (= lambda!320269 lambda!320215)))

(declare-fun bs!1380144 () Bool)

(assert (= bs!1380144 (and d!1839571 d!1839123)))

(assert (=> bs!1380144 (= lambda!320269 lambda!320209)))

(declare-fun bs!1380145 () Bool)

(assert (= bs!1380145 (and d!1839571 d!1839553)))

(assert (=> bs!1380145 (= lambda!320269 lambda!320265)))

(declare-fun bs!1380146 () Bool)

(assert (= bs!1380146 (and d!1839571 d!1839429)))

(assert (=> bs!1380146 (= lambda!320269 lambda!320250)))

(assert (=> d!1839571 (= (inv!83054 setElem!39696) (forall!15010 (exprs!5807 setElem!39696) lambda!320269))))

(declare-fun bs!1380147 () Bool)

(assert (= bs!1380147 d!1839571))

(declare-fun m!6775480 () Bool)

(assert (=> bs!1380147 m!6775480))

(assert (=> setNonEmpty!39696 d!1839571))

(assert (=> b!5856289 d!1839421))

(declare-fun d!1839573 () Bool)

(declare-fun res!2465199 () Bool)

(declare-fun e!3591622 () Bool)

(assert (=> d!1839573 (=> res!2465199 e!3591622)))

(assert (=> d!1839573 (= res!2465199 ((_ is Nil!63946) lt!2304963))))

(assert (=> d!1839573 (= (noDuplicate!1788 lt!2304963) e!3591622)))

(declare-fun b!5857394 () Bool)

(declare-fun e!3591623 () Bool)

(assert (=> b!5857394 (= e!3591622 e!3591623)))

(declare-fun res!2465200 () Bool)

(assert (=> b!5857394 (=> (not res!2465200) (not e!3591623))))

(declare-fun contains!19929 (List!64070 Context!10614) Bool)

(assert (=> b!5857394 (= res!2465200 (not (contains!19929 (t!377437 lt!2304963) (h!70394 lt!2304963))))))

(declare-fun b!5857395 () Bool)

(assert (=> b!5857395 (= e!3591623 (noDuplicate!1788 (t!377437 lt!2304963)))))

(assert (= (and d!1839573 (not res!2465199)) b!5857394))

(assert (= (and b!5857394 res!2465200) b!5857395))

(declare-fun m!6775482 () Bool)

(assert (=> b!5857394 m!6775482))

(declare-fun m!6775484 () Bool)

(assert (=> b!5857395 m!6775484))

(assert (=> d!1839145 d!1839573))

(declare-fun d!1839575 () Bool)

(declare-fun e!3591630 () Bool)

(assert (=> d!1839575 e!3591630))

(declare-fun res!2465206 () Bool)

(assert (=> d!1839575 (=> (not res!2465206) (not e!3591630))))

(declare-fun res!2465205 () List!64070)

(assert (=> d!1839575 (= res!2465206 (noDuplicate!1788 res!2465205))))

(declare-fun e!3591632 () Bool)

(assert (=> d!1839575 e!3591632))

(assert (=> d!1839575 (= (choose!44409 z!1189) res!2465205)))

(declare-fun b!5857403 () Bool)

(declare-fun e!3591631 () Bool)

(declare-fun tp!1620216 () Bool)

(assert (=> b!5857403 (= e!3591631 tp!1620216)))

(declare-fun tp!1620215 () Bool)

(declare-fun b!5857402 () Bool)

(assert (=> b!5857402 (= e!3591632 (and (inv!83054 (h!70394 res!2465205)) e!3591631 tp!1620215))))

(declare-fun b!5857404 () Bool)

(assert (=> b!5857404 (= e!3591630 (= (content!11753 res!2465205) z!1189))))

(assert (= b!5857402 b!5857403))

(assert (= (and d!1839575 ((_ is Cons!63946) res!2465205)) b!5857402))

(assert (= (and d!1839575 res!2465206) b!5857404))

(declare-fun m!6775486 () Bool)

(assert (=> d!1839575 m!6775486))

(declare-fun m!6775488 () Bool)

(assert (=> b!5857402 m!6775488))

(declare-fun m!6775490 () Bool)

(assert (=> b!5857404 m!6775490))

(assert (=> d!1839145 d!1839575))

(assert (=> d!1839113 d!1839379))

(assert (=> d!1839113 d!1839567))

(declare-fun d!1839577 () Bool)

(declare-fun res!2465207 () Bool)

(declare-fun e!3591633 () Bool)

(assert (=> d!1839577 (=> res!2465207 e!3591633)))

(assert (=> d!1839577 (= res!2465207 ((_ is Nil!63944) (exprs!5807 setElem!39690)))))

(assert (=> d!1839577 (= (forall!15010 (exprs!5807 setElem!39690) lambda!320215) e!3591633)))

(declare-fun b!5857405 () Bool)

(declare-fun e!3591634 () Bool)

(assert (=> b!5857405 (= e!3591633 e!3591634)))

(declare-fun res!2465208 () Bool)

(assert (=> b!5857405 (=> (not res!2465208) (not e!3591634))))

(assert (=> b!5857405 (= res!2465208 (dynLambda!25002 lambda!320215 (h!70392 (exprs!5807 setElem!39690))))))

(declare-fun b!5857406 () Bool)

(assert (=> b!5857406 (= e!3591634 (forall!15010 (t!377435 (exprs!5807 setElem!39690)) lambda!320215))))

(assert (= (and d!1839577 (not res!2465207)) b!5857405))

(assert (= (and b!5857405 res!2465208) b!5857406))

(declare-fun b_lambda!220461 () Bool)

(assert (=> (not b_lambda!220461) (not b!5857405)))

(declare-fun m!6775492 () Bool)

(assert (=> b!5857405 m!6775492))

(declare-fun m!6775494 () Bool)

(assert (=> b!5857406 m!6775494))

(assert (=> d!1839143 d!1839577))

(declare-fun bs!1380148 () Bool)

(declare-fun d!1839579 () Bool)

(assert (= bs!1380148 (and d!1839579 d!1839481)))

(declare-fun lambda!320270 () Int)

(assert (=> bs!1380148 (= lambda!320270 lambda!320259)))

(declare-fun bs!1380149 () Bool)

(assert (= bs!1380149 (and d!1839579 d!1839491)))

(assert (=> bs!1380149 (= lambda!320270 lambda!320260)))

(declare-fun bs!1380150 () Bool)

(assert (= bs!1380150 (and d!1839579 d!1839515)))

(assert (=> bs!1380150 (= lambda!320270 lambda!320261)))

(assert (=> d!1839579 (= (nullableZipper!1762 z!1189) (exists!2307 z!1189 lambda!320270))))

(declare-fun bs!1380151 () Bool)

(assert (= bs!1380151 d!1839579))

(declare-fun m!6775496 () Bool)

(assert (=> bs!1380151 m!6775496))

(assert (=> b!5856144 d!1839579))

(assert (=> b!5856285 d!1839389))

(assert (=> b!5856285 d!1839391))

(declare-fun b!5857407 () Bool)

(declare-fun e!3591635 () Bool)

(assert (=> b!5857407 (= e!3591635 tp_is_empty!41099)))

(declare-fun b!5857409 () Bool)

(declare-fun tp!1620221 () Bool)

(assert (=> b!5857409 (= e!3591635 tp!1620221)))

(declare-fun b!5857410 () Bool)

(declare-fun tp!1620219 () Bool)

(declare-fun tp!1620218 () Bool)

(assert (=> b!5857410 (= e!3591635 (and tp!1620219 tp!1620218))))

(declare-fun b!5857408 () Bool)

(declare-fun tp!1620217 () Bool)

(declare-fun tp!1620220 () Bool)

(assert (=> b!5857408 (= e!3591635 (and tp!1620217 tp!1620220))))

(assert (=> b!5856455 (= tp!1620015 e!3591635)))

(assert (= (and b!5856455 ((_ is ElementMatch!15923) (regOne!32359 (reg!16252 r!7292)))) b!5857407))

(assert (= (and b!5856455 ((_ is Concat!24768) (regOne!32359 (reg!16252 r!7292)))) b!5857408))

(assert (= (and b!5856455 ((_ is Star!15923) (regOne!32359 (reg!16252 r!7292)))) b!5857409))

(assert (= (and b!5856455 ((_ is Union!15923) (regOne!32359 (reg!16252 r!7292)))) b!5857410))

(declare-fun b!5857411 () Bool)

(declare-fun e!3591636 () Bool)

(assert (=> b!5857411 (= e!3591636 tp_is_empty!41099)))

(declare-fun b!5857413 () Bool)

(declare-fun tp!1620226 () Bool)

(assert (=> b!5857413 (= e!3591636 tp!1620226)))

(declare-fun b!5857414 () Bool)

(declare-fun tp!1620224 () Bool)

(declare-fun tp!1620223 () Bool)

(assert (=> b!5857414 (= e!3591636 (and tp!1620224 tp!1620223))))

(declare-fun b!5857412 () Bool)

(declare-fun tp!1620222 () Bool)

(declare-fun tp!1620225 () Bool)

(assert (=> b!5857412 (= e!3591636 (and tp!1620222 tp!1620225))))

(assert (=> b!5856455 (= tp!1620014 e!3591636)))

(assert (= (and b!5856455 ((_ is ElementMatch!15923) (regTwo!32359 (reg!16252 r!7292)))) b!5857411))

(assert (= (and b!5856455 ((_ is Concat!24768) (regTwo!32359 (reg!16252 r!7292)))) b!5857412))

(assert (= (and b!5856455 ((_ is Star!15923) (regTwo!32359 (reg!16252 r!7292)))) b!5857413))

(assert (= (and b!5856455 ((_ is Union!15923) (regTwo!32359 (reg!16252 r!7292)))) b!5857414))

(declare-fun b!5857415 () Bool)

(declare-fun e!3591637 () Bool)

(assert (=> b!5857415 (= e!3591637 tp_is_empty!41099)))

(declare-fun b!5857417 () Bool)

(declare-fun tp!1620231 () Bool)

(assert (=> b!5857417 (= e!3591637 tp!1620231)))

(declare-fun b!5857418 () Bool)

(declare-fun tp!1620229 () Bool)

(declare-fun tp!1620228 () Bool)

(assert (=> b!5857418 (= e!3591637 (and tp!1620229 tp!1620228))))

(declare-fun b!5857416 () Bool)

(declare-fun tp!1620227 () Bool)

(declare-fun tp!1620230 () Bool)

(assert (=> b!5857416 (= e!3591637 (and tp!1620227 tp!1620230))))

(assert (=> b!5856454 (= tp!1620017 e!3591637)))

(assert (= (and b!5856454 ((_ is ElementMatch!15923) (reg!16252 (reg!16252 r!7292)))) b!5857415))

(assert (= (and b!5856454 ((_ is Concat!24768) (reg!16252 (reg!16252 r!7292)))) b!5857416))

(assert (= (and b!5856454 ((_ is Star!15923) (reg!16252 (reg!16252 r!7292)))) b!5857417))

(assert (= (and b!5856454 ((_ is Union!15923) (reg!16252 (reg!16252 r!7292)))) b!5857418))

(declare-fun b!5857419 () Bool)

(declare-fun e!3591638 () Bool)

(declare-fun tp!1620232 () Bool)

(declare-fun tp!1620233 () Bool)

(assert (=> b!5857419 (= e!3591638 (and tp!1620232 tp!1620233))))

(assert (=> b!5856476 (= tp!1620038 e!3591638)))

(assert (= (and b!5856476 ((_ is Cons!63944) (exprs!5807 (h!70394 (t!377437 zl!343))))) b!5857419))

(declare-fun b!5857420 () Bool)

(declare-fun e!3591639 () Bool)

(assert (=> b!5857420 (= e!3591639 tp_is_empty!41099)))

(declare-fun b!5857422 () Bool)

(declare-fun tp!1620238 () Bool)

(assert (=> b!5857422 (= e!3591639 tp!1620238)))

(declare-fun b!5857423 () Bool)

(declare-fun tp!1620236 () Bool)

(declare-fun tp!1620235 () Bool)

(assert (=> b!5857423 (= e!3591639 (and tp!1620236 tp!1620235))))

(declare-fun b!5857421 () Bool)

(declare-fun tp!1620234 () Bool)

(declare-fun tp!1620237 () Bool)

(assert (=> b!5857421 (= e!3591639 (and tp!1620234 tp!1620237))))

(assert (=> b!5856453 (= tp!1620013 e!3591639)))

(assert (= (and b!5856453 ((_ is ElementMatch!15923) (regOne!32358 (reg!16252 r!7292)))) b!5857420))

(assert (= (and b!5856453 ((_ is Concat!24768) (regOne!32358 (reg!16252 r!7292)))) b!5857421))

(assert (= (and b!5856453 ((_ is Star!15923) (regOne!32358 (reg!16252 r!7292)))) b!5857422))

(assert (= (and b!5856453 ((_ is Union!15923) (regOne!32358 (reg!16252 r!7292)))) b!5857423))

(declare-fun b!5857424 () Bool)

(declare-fun e!3591640 () Bool)

(assert (=> b!5857424 (= e!3591640 tp_is_empty!41099)))

(declare-fun b!5857426 () Bool)

(declare-fun tp!1620243 () Bool)

(assert (=> b!5857426 (= e!3591640 tp!1620243)))

(declare-fun b!5857427 () Bool)

(declare-fun tp!1620241 () Bool)

(declare-fun tp!1620240 () Bool)

(assert (=> b!5857427 (= e!3591640 (and tp!1620241 tp!1620240))))

(declare-fun b!5857425 () Bool)

(declare-fun tp!1620239 () Bool)

(declare-fun tp!1620242 () Bool)

(assert (=> b!5857425 (= e!3591640 (and tp!1620239 tp!1620242))))

(assert (=> b!5856453 (= tp!1620016 e!3591640)))

(assert (= (and b!5856453 ((_ is ElementMatch!15923) (regTwo!32358 (reg!16252 r!7292)))) b!5857424))

(assert (= (and b!5856453 ((_ is Concat!24768) (regTwo!32358 (reg!16252 r!7292)))) b!5857425))

(assert (= (and b!5856453 ((_ is Star!15923) (regTwo!32358 (reg!16252 r!7292)))) b!5857426))

(assert (= (and b!5856453 ((_ is Union!15923) (regTwo!32358 (reg!16252 r!7292)))) b!5857427))

(declare-fun b!5857428 () Bool)

(declare-fun e!3591641 () Bool)

(assert (=> b!5857428 (= e!3591641 tp_is_empty!41099)))

(declare-fun b!5857430 () Bool)

(declare-fun tp!1620248 () Bool)

(assert (=> b!5857430 (= e!3591641 tp!1620248)))

(declare-fun b!5857431 () Bool)

(declare-fun tp!1620246 () Bool)

(declare-fun tp!1620245 () Bool)

(assert (=> b!5857431 (= e!3591641 (and tp!1620246 tp!1620245))))

(declare-fun b!5857429 () Bool)

(declare-fun tp!1620244 () Bool)

(declare-fun tp!1620247 () Bool)

(assert (=> b!5857429 (= e!3591641 (and tp!1620244 tp!1620247))))

(assert (=> b!5856482 (= tp!1620043 e!3591641)))

(assert (= (and b!5856482 ((_ is ElementMatch!15923) (h!70392 (exprs!5807 (h!70394 zl!343))))) b!5857428))

(assert (= (and b!5856482 ((_ is Concat!24768) (h!70392 (exprs!5807 (h!70394 zl!343))))) b!5857429))

(assert (= (and b!5856482 ((_ is Star!15923) (h!70392 (exprs!5807 (h!70394 zl!343))))) b!5857430))

(assert (= (and b!5856482 ((_ is Union!15923) (h!70392 (exprs!5807 (h!70394 zl!343))))) b!5857431))

(declare-fun b!5857432 () Bool)

(declare-fun e!3591642 () Bool)

(declare-fun tp!1620249 () Bool)

(declare-fun tp!1620250 () Bool)

(assert (=> b!5857432 (= e!3591642 (and tp!1620249 tp!1620250))))

(assert (=> b!5856482 (= tp!1620044 e!3591642)))

(assert (= (and b!5856482 ((_ is Cons!63944) (t!377435 (exprs!5807 (h!70394 zl!343))))) b!5857432))

(declare-fun b!5857434 () Bool)

(declare-fun e!3591644 () Bool)

(declare-fun tp!1620251 () Bool)

(assert (=> b!5857434 (= e!3591644 tp!1620251)))

(declare-fun b!5857433 () Bool)

(declare-fun tp!1620252 () Bool)

(declare-fun e!3591643 () Bool)

(assert (=> b!5857433 (= e!3591643 (and (inv!83054 (h!70394 (t!377437 (t!377437 zl!343)))) e!3591644 tp!1620252))))

(assert (=> b!5856475 (= tp!1620039 e!3591643)))

(assert (= b!5857433 b!5857434))

(assert (= (and b!5856475 ((_ is Cons!63946) (t!377437 (t!377437 zl!343)))) b!5857433))

(declare-fun m!6775498 () Bool)

(assert (=> b!5857433 m!6775498))

(declare-fun b!5857435 () Bool)

(declare-fun e!3591645 () Bool)

(assert (=> b!5857435 (= e!3591645 tp_is_empty!41099)))

(declare-fun b!5857437 () Bool)

(declare-fun tp!1620257 () Bool)

(assert (=> b!5857437 (= e!3591645 tp!1620257)))

(declare-fun b!5857438 () Bool)

(declare-fun tp!1620255 () Bool)

(declare-fun tp!1620254 () Bool)

(assert (=> b!5857438 (= e!3591645 (and tp!1620255 tp!1620254))))

(declare-fun b!5857436 () Bool)

(declare-fun tp!1620253 () Bool)

(declare-fun tp!1620256 () Bool)

(assert (=> b!5857436 (= e!3591645 (and tp!1620253 tp!1620256))))

(assert (=> b!5856460 (= tp!1620022 e!3591645)))

(assert (= (and b!5856460 ((_ is ElementMatch!15923) (h!70392 (exprs!5807 setElem!39690)))) b!5857435))

(assert (= (and b!5856460 ((_ is Concat!24768) (h!70392 (exprs!5807 setElem!39690)))) b!5857436))

(assert (= (and b!5856460 ((_ is Star!15923) (h!70392 (exprs!5807 setElem!39690)))) b!5857437))

(assert (= (and b!5856460 ((_ is Union!15923) (h!70392 (exprs!5807 setElem!39690)))) b!5857438))

(declare-fun b!5857439 () Bool)

(declare-fun e!3591646 () Bool)

(declare-fun tp!1620258 () Bool)

(declare-fun tp!1620259 () Bool)

(assert (=> b!5857439 (= e!3591646 (and tp!1620258 tp!1620259))))

(assert (=> b!5856460 (= tp!1620023 e!3591646)))

(assert (= (and b!5856460 ((_ is Cons!63944) (t!377435 (exprs!5807 setElem!39690)))) b!5857439))

(declare-fun b!5857440 () Bool)

(declare-fun e!3591647 () Bool)

(assert (=> b!5857440 (= e!3591647 tp_is_empty!41099)))

(declare-fun b!5857442 () Bool)

(declare-fun tp!1620264 () Bool)

(assert (=> b!5857442 (= e!3591647 tp!1620264)))

(declare-fun b!5857443 () Bool)

(declare-fun tp!1620262 () Bool)

(declare-fun tp!1620261 () Bool)

(assert (=> b!5857443 (= e!3591647 (and tp!1620262 tp!1620261))))

(declare-fun b!5857441 () Bool)

(declare-fun tp!1620260 () Bool)

(declare-fun tp!1620263 () Bool)

(assert (=> b!5857441 (= e!3591647 (and tp!1620260 tp!1620263))))

(assert (=> b!5856468 (= tp!1620031 e!3591647)))

(assert (= (and b!5856468 ((_ is ElementMatch!15923) (regOne!32359 (regTwo!32359 r!7292)))) b!5857440))

(assert (= (and b!5856468 ((_ is Concat!24768) (regOne!32359 (regTwo!32359 r!7292)))) b!5857441))

(assert (= (and b!5856468 ((_ is Star!15923) (regOne!32359 (regTwo!32359 r!7292)))) b!5857442))

(assert (= (and b!5856468 ((_ is Union!15923) (regOne!32359 (regTwo!32359 r!7292)))) b!5857443))

(declare-fun b!5857444 () Bool)

(declare-fun e!3591648 () Bool)

(assert (=> b!5857444 (= e!3591648 tp_is_empty!41099)))

(declare-fun b!5857446 () Bool)

(declare-fun tp!1620269 () Bool)

(assert (=> b!5857446 (= e!3591648 tp!1620269)))

(declare-fun b!5857447 () Bool)

(declare-fun tp!1620267 () Bool)

(declare-fun tp!1620266 () Bool)

(assert (=> b!5857447 (= e!3591648 (and tp!1620267 tp!1620266))))

(declare-fun b!5857445 () Bool)

(declare-fun tp!1620265 () Bool)

(declare-fun tp!1620268 () Bool)

(assert (=> b!5857445 (= e!3591648 (and tp!1620265 tp!1620268))))

(assert (=> b!5856468 (= tp!1620030 e!3591648)))

(assert (= (and b!5856468 ((_ is ElementMatch!15923) (regTwo!32359 (regTwo!32359 r!7292)))) b!5857444))

(assert (= (and b!5856468 ((_ is Concat!24768) (regTwo!32359 (regTwo!32359 r!7292)))) b!5857445))

(assert (= (and b!5856468 ((_ is Star!15923) (regTwo!32359 (regTwo!32359 r!7292)))) b!5857446))

(assert (= (and b!5856468 ((_ is Union!15923) (regTwo!32359 (regTwo!32359 r!7292)))) b!5857447))

(declare-fun b!5857448 () Bool)

(declare-fun e!3591649 () Bool)

(assert (=> b!5857448 (= e!3591649 tp_is_empty!41099)))

(declare-fun b!5857450 () Bool)

(declare-fun tp!1620274 () Bool)

(assert (=> b!5857450 (= e!3591649 tp!1620274)))

(declare-fun b!5857451 () Bool)

(declare-fun tp!1620272 () Bool)

(declare-fun tp!1620271 () Bool)

(assert (=> b!5857451 (= e!3591649 (and tp!1620272 tp!1620271))))

(declare-fun b!5857449 () Bool)

(declare-fun tp!1620270 () Bool)

(declare-fun tp!1620273 () Bool)

(assert (=> b!5857449 (= e!3591649 (and tp!1620270 tp!1620273))))

(assert (=> b!5856463 (= tp!1620028 e!3591649)))

(assert (= (and b!5856463 ((_ is ElementMatch!15923) (reg!16252 (regOne!32359 r!7292)))) b!5857448))

(assert (= (and b!5856463 ((_ is Concat!24768) (reg!16252 (regOne!32359 r!7292)))) b!5857449))

(assert (= (and b!5856463 ((_ is Star!15923) (reg!16252 (regOne!32359 r!7292)))) b!5857450))

(assert (= (and b!5856463 ((_ is Union!15923) (reg!16252 (regOne!32359 r!7292)))) b!5857451))

(declare-fun b!5857452 () Bool)

(declare-fun e!3591650 () Bool)

(assert (=> b!5857452 (= e!3591650 tp_is_empty!41099)))

(declare-fun b!5857454 () Bool)

(declare-fun tp!1620279 () Bool)

(assert (=> b!5857454 (= e!3591650 tp!1620279)))

(declare-fun b!5857455 () Bool)

(declare-fun tp!1620277 () Bool)

(declare-fun tp!1620276 () Bool)

(assert (=> b!5857455 (= e!3591650 (and tp!1620277 tp!1620276))))

(declare-fun b!5857453 () Bool)

(declare-fun tp!1620275 () Bool)

(declare-fun tp!1620278 () Bool)

(assert (=> b!5857453 (= e!3591650 (and tp!1620275 tp!1620278))))

(assert (=> b!5856441 (= tp!1620001 e!3591650)))

(assert (= (and b!5856441 ((_ is ElementMatch!15923) (reg!16252 (regOne!32358 r!7292)))) b!5857452))

(assert (= (and b!5856441 ((_ is Concat!24768) (reg!16252 (regOne!32358 r!7292)))) b!5857453))

(assert (= (and b!5856441 ((_ is Star!15923) (reg!16252 (regOne!32358 r!7292)))) b!5857454))

(assert (= (and b!5856441 ((_ is Union!15923) (reg!16252 (regOne!32358 r!7292)))) b!5857455))

(declare-fun b!5857456 () Bool)

(declare-fun e!3591651 () Bool)

(assert (=> b!5857456 (= e!3591651 tp_is_empty!41099)))

(declare-fun b!5857458 () Bool)

(declare-fun tp!1620284 () Bool)

(assert (=> b!5857458 (= e!3591651 tp!1620284)))

(declare-fun b!5857459 () Bool)

(declare-fun tp!1620282 () Bool)

(declare-fun tp!1620281 () Bool)

(assert (=> b!5857459 (= e!3591651 (and tp!1620282 tp!1620281))))

(declare-fun b!5857457 () Bool)

(declare-fun tp!1620280 () Bool)

(declare-fun tp!1620283 () Bool)

(assert (=> b!5857457 (= e!3591651 (and tp!1620280 tp!1620283))))

(assert (=> b!5856462 (= tp!1620024 e!3591651)))

(assert (= (and b!5856462 ((_ is ElementMatch!15923) (regOne!32358 (regOne!32359 r!7292)))) b!5857456))

(assert (= (and b!5856462 ((_ is Concat!24768) (regOne!32358 (regOne!32359 r!7292)))) b!5857457))

(assert (= (and b!5856462 ((_ is Star!15923) (regOne!32358 (regOne!32359 r!7292)))) b!5857458))

(assert (= (and b!5856462 ((_ is Union!15923) (regOne!32358 (regOne!32359 r!7292)))) b!5857459))

(declare-fun b!5857460 () Bool)

(declare-fun e!3591652 () Bool)

(assert (=> b!5857460 (= e!3591652 tp_is_empty!41099)))

(declare-fun b!5857462 () Bool)

(declare-fun tp!1620289 () Bool)

(assert (=> b!5857462 (= e!3591652 tp!1620289)))

(declare-fun b!5857463 () Bool)

(declare-fun tp!1620287 () Bool)

(declare-fun tp!1620286 () Bool)

(assert (=> b!5857463 (= e!3591652 (and tp!1620287 tp!1620286))))

(declare-fun b!5857461 () Bool)

(declare-fun tp!1620285 () Bool)

(declare-fun tp!1620288 () Bool)

(assert (=> b!5857461 (= e!3591652 (and tp!1620285 tp!1620288))))

(assert (=> b!5856462 (= tp!1620027 e!3591652)))

(assert (= (and b!5856462 ((_ is ElementMatch!15923) (regTwo!32358 (regOne!32359 r!7292)))) b!5857460))

(assert (= (and b!5856462 ((_ is Concat!24768) (regTwo!32358 (regOne!32359 r!7292)))) b!5857461))

(assert (= (and b!5856462 ((_ is Star!15923) (regTwo!32358 (regOne!32359 r!7292)))) b!5857462))

(assert (= (and b!5856462 ((_ is Union!15923) (regTwo!32358 (regOne!32359 r!7292)))) b!5857463))

(declare-fun b!5857464 () Bool)

(declare-fun e!3591653 () Bool)

(assert (=> b!5857464 (= e!3591653 tp_is_empty!41099)))

(declare-fun b!5857466 () Bool)

(declare-fun tp!1620294 () Bool)

(assert (=> b!5857466 (= e!3591653 tp!1620294)))

(declare-fun b!5857467 () Bool)

(declare-fun tp!1620292 () Bool)

(declare-fun tp!1620291 () Bool)

(assert (=> b!5857467 (= e!3591653 (and tp!1620292 tp!1620291))))

(declare-fun b!5857465 () Bool)

(declare-fun tp!1620290 () Bool)

(declare-fun tp!1620293 () Bool)

(assert (=> b!5857465 (= e!3591653 (and tp!1620290 tp!1620293))))

(assert (=> b!5856440 (= tp!1619997 e!3591653)))

(assert (= (and b!5856440 ((_ is ElementMatch!15923) (regOne!32358 (regOne!32358 r!7292)))) b!5857464))

(assert (= (and b!5856440 ((_ is Concat!24768) (regOne!32358 (regOne!32358 r!7292)))) b!5857465))

(assert (= (and b!5856440 ((_ is Star!15923) (regOne!32358 (regOne!32358 r!7292)))) b!5857466))

(assert (= (and b!5856440 ((_ is Union!15923) (regOne!32358 (regOne!32358 r!7292)))) b!5857467))

(declare-fun b!5857468 () Bool)

(declare-fun e!3591654 () Bool)

(assert (=> b!5857468 (= e!3591654 tp_is_empty!41099)))

(declare-fun b!5857470 () Bool)

(declare-fun tp!1620299 () Bool)

(assert (=> b!5857470 (= e!3591654 tp!1620299)))

(declare-fun b!5857471 () Bool)

(declare-fun tp!1620297 () Bool)

(declare-fun tp!1620296 () Bool)

(assert (=> b!5857471 (= e!3591654 (and tp!1620297 tp!1620296))))

(declare-fun b!5857469 () Bool)

(declare-fun tp!1620295 () Bool)

(declare-fun tp!1620298 () Bool)

(assert (=> b!5857469 (= e!3591654 (and tp!1620295 tp!1620298))))

(assert (=> b!5856440 (= tp!1620000 e!3591654)))

(assert (= (and b!5856440 ((_ is ElementMatch!15923) (regTwo!32358 (regOne!32358 r!7292)))) b!5857468))

(assert (= (and b!5856440 ((_ is Concat!24768) (regTwo!32358 (regOne!32358 r!7292)))) b!5857469))

(assert (= (and b!5856440 ((_ is Star!15923) (regTwo!32358 (regOne!32358 r!7292)))) b!5857470))

(assert (= (and b!5856440 ((_ is Union!15923) (regTwo!32358 (regOne!32358 r!7292)))) b!5857471))

(declare-fun b!5857472 () Bool)

(declare-fun e!3591655 () Bool)

(declare-fun tp!1620300 () Bool)

(declare-fun tp!1620301 () Bool)

(assert (=> b!5857472 (= e!3591655 (and tp!1620300 tp!1620301))))

(assert (=> b!5856451 (= tp!1620011 e!3591655)))

(assert (= (and b!5856451 ((_ is Cons!63944) (exprs!5807 setElem!39696))) b!5857472))

(declare-fun condSetEmpty!39704 () Bool)

(assert (=> setNonEmpty!39696 (= condSetEmpty!39704 (= setRest!39696 ((as const (Array Context!10614 Bool)) false)))))

(declare-fun setRes!39704 () Bool)

(assert (=> setNonEmpty!39696 (= tp!1620012 setRes!39704)))

(declare-fun setIsEmpty!39704 () Bool)

(assert (=> setIsEmpty!39704 setRes!39704))

(declare-fun e!3591656 () Bool)

(declare-fun setNonEmpty!39704 () Bool)

(declare-fun tp!1620303 () Bool)

(declare-fun setElem!39704 () Context!10614)

(assert (=> setNonEmpty!39704 (= setRes!39704 (and tp!1620303 (inv!83054 setElem!39704) e!3591656))))

(declare-fun setRest!39704 () (InoxSet Context!10614))

(assert (=> setNonEmpty!39704 (= setRest!39696 ((_ map or) (store ((as const (Array Context!10614 Bool)) false) setElem!39704 true) setRest!39704))))

(declare-fun b!5857473 () Bool)

(declare-fun tp!1620302 () Bool)

(assert (=> b!5857473 (= e!3591656 tp!1620302)))

(assert (= (and setNonEmpty!39696 condSetEmpty!39704) setIsEmpty!39704))

(assert (= (and setNonEmpty!39696 (not condSetEmpty!39704)) setNonEmpty!39704))

(assert (= setNonEmpty!39704 b!5857473))

(declare-fun m!6775500 () Bool)

(assert (=> setNonEmpty!39704 m!6775500))

(declare-fun b!5857474 () Bool)

(declare-fun e!3591657 () Bool)

(assert (=> b!5857474 (= e!3591657 tp_is_empty!41099)))

(declare-fun b!5857476 () Bool)

(declare-fun tp!1620308 () Bool)

(assert (=> b!5857476 (= e!3591657 tp!1620308)))

(declare-fun b!5857477 () Bool)

(declare-fun tp!1620306 () Bool)

(declare-fun tp!1620305 () Bool)

(assert (=> b!5857477 (= e!3591657 (and tp!1620306 tp!1620305))))

(declare-fun b!5857475 () Bool)

(declare-fun tp!1620304 () Bool)

(declare-fun tp!1620307 () Bool)

(assert (=> b!5857475 (= e!3591657 (and tp!1620304 tp!1620307))))

(assert (=> b!5856464 (= tp!1620026 e!3591657)))

(assert (= (and b!5856464 ((_ is ElementMatch!15923) (regOne!32359 (regOne!32359 r!7292)))) b!5857474))

(assert (= (and b!5856464 ((_ is Concat!24768) (regOne!32359 (regOne!32359 r!7292)))) b!5857475))

(assert (= (and b!5856464 ((_ is Star!15923) (regOne!32359 (regOne!32359 r!7292)))) b!5857476))

(assert (= (and b!5856464 ((_ is Union!15923) (regOne!32359 (regOne!32359 r!7292)))) b!5857477))

(declare-fun b!5857478 () Bool)

(declare-fun e!3591658 () Bool)

(assert (=> b!5857478 (= e!3591658 tp_is_empty!41099)))

(declare-fun b!5857480 () Bool)

(declare-fun tp!1620313 () Bool)

(assert (=> b!5857480 (= e!3591658 tp!1620313)))

(declare-fun b!5857481 () Bool)

(declare-fun tp!1620311 () Bool)

(declare-fun tp!1620310 () Bool)

(assert (=> b!5857481 (= e!3591658 (and tp!1620311 tp!1620310))))

(declare-fun b!5857479 () Bool)

(declare-fun tp!1620309 () Bool)

(declare-fun tp!1620312 () Bool)

(assert (=> b!5857479 (= e!3591658 (and tp!1620309 tp!1620312))))

(assert (=> b!5856464 (= tp!1620025 e!3591658)))

(assert (= (and b!5856464 ((_ is ElementMatch!15923) (regTwo!32359 (regOne!32359 r!7292)))) b!5857478))

(assert (= (and b!5856464 ((_ is Concat!24768) (regTwo!32359 (regOne!32359 r!7292)))) b!5857479))

(assert (= (and b!5856464 ((_ is Star!15923) (regTwo!32359 (regOne!32359 r!7292)))) b!5857480))

(assert (= (and b!5856464 ((_ is Union!15923) (regTwo!32359 (regOne!32359 r!7292)))) b!5857481))

(declare-fun b!5857482 () Bool)

(declare-fun e!3591659 () Bool)

(assert (=> b!5857482 (= e!3591659 tp_is_empty!41099)))

(declare-fun b!5857484 () Bool)

(declare-fun tp!1620318 () Bool)

(assert (=> b!5857484 (= e!3591659 tp!1620318)))

(declare-fun b!5857485 () Bool)

(declare-fun tp!1620316 () Bool)

(declare-fun tp!1620315 () Bool)

(assert (=> b!5857485 (= e!3591659 (and tp!1620316 tp!1620315))))

(declare-fun b!5857483 () Bool)

(declare-fun tp!1620314 () Bool)

(declare-fun tp!1620317 () Bool)

(assert (=> b!5857483 (= e!3591659 (and tp!1620314 tp!1620317))))

(assert (=> b!5856442 (= tp!1619999 e!3591659)))

(assert (= (and b!5856442 ((_ is ElementMatch!15923) (regOne!32359 (regOne!32358 r!7292)))) b!5857482))

(assert (= (and b!5856442 ((_ is Concat!24768) (regOne!32359 (regOne!32358 r!7292)))) b!5857483))

(assert (= (and b!5856442 ((_ is Star!15923) (regOne!32359 (regOne!32358 r!7292)))) b!5857484))

(assert (= (and b!5856442 ((_ is Union!15923) (regOne!32359 (regOne!32358 r!7292)))) b!5857485))

(declare-fun b!5857486 () Bool)

(declare-fun e!3591660 () Bool)

(assert (=> b!5857486 (= e!3591660 tp_is_empty!41099)))

(declare-fun b!5857488 () Bool)

(declare-fun tp!1620323 () Bool)

(assert (=> b!5857488 (= e!3591660 tp!1620323)))

(declare-fun b!5857489 () Bool)

(declare-fun tp!1620321 () Bool)

(declare-fun tp!1620320 () Bool)

(assert (=> b!5857489 (= e!3591660 (and tp!1620321 tp!1620320))))

(declare-fun b!5857487 () Bool)

(declare-fun tp!1620319 () Bool)

(declare-fun tp!1620322 () Bool)

(assert (=> b!5857487 (= e!3591660 (and tp!1620319 tp!1620322))))

(assert (=> b!5856442 (= tp!1619998 e!3591660)))

(assert (= (and b!5856442 ((_ is ElementMatch!15923) (regTwo!32359 (regOne!32358 r!7292)))) b!5857486))

(assert (= (and b!5856442 ((_ is Concat!24768) (regTwo!32359 (regOne!32358 r!7292)))) b!5857487))

(assert (= (and b!5856442 ((_ is Star!15923) (regTwo!32359 (regOne!32358 r!7292)))) b!5857488))

(assert (= (and b!5856442 ((_ is Union!15923) (regTwo!32359 (regOne!32358 r!7292)))) b!5857489))

(declare-fun b!5857490 () Bool)

(declare-fun e!3591661 () Bool)

(assert (=> b!5857490 (= e!3591661 tp_is_empty!41099)))

(declare-fun b!5857492 () Bool)

(declare-fun tp!1620328 () Bool)

(assert (=> b!5857492 (= e!3591661 tp!1620328)))

(declare-fun b!5857493 () Bool)

(declare-fun tp!1620326 () Bool)

(declare-fun tp!1620325 () Bool)

(assert (=> b!5857493 (= e!3591661 (and tp!1620326 tp!1620325))))

(declare-fun b!5857491 () Bool)

(declare-fun tp!1620324 () Bool)

(declare-fun tp!1620327 () Bool)

(assert (=> b!5857491 (= e!3591661 (and tp!1620324 tp!1620327))))

(assert (=> b!5856446 (= tp!1620004 e!3591661)))

(assert (= (and b!5856446 ((_ is ElementMatch!15923) (regOne!32359 (regTwo!32358 r!7292)))) b!5857490))

(assert (= (and b!5856446 ((_ is Concat!24768) (regOne!32359 (regTwo!32358 r!7292)))) b!5857491))

(assert (= (and b!5856446 ((_ is Star!15923) (regOne!32359 (regTwo!32358 r!7292)))) b!5857492))

(assert (= (and b!5856446 ((_ is Union!15923) (regOne!32359 (regTwo!32358 r!7292)))) b!5857493))

(declare-fun b!5857494 () Bool)

(declare-fun e!3591662 () Bool)

(assert (=> b!5857494 (= e!3591662 tp_is_empty!41099)))

(declare-fun b!5857496 () Bool)

(declare-fun tp!1620333 () Bool)

(assert (=> b!5857496 (= e!3591662 tp!1620333)))

(declare-fun b!5857497 () Bool)

(declare-fun tp!1620331 () Bool)

(declare-fun tp!1620330 () Bool)

(assert (=> b!5857497 (= e!3591662 (and tp!1620331 tp!1620330))))

(declare-fun b!5857495 () Bool)

(declare-fun tp!1620329 () Bool)

(declare-fun tp!1620332 () Bool)

(assert (=> b!5857495 (= e!3591662 (and tp!1620329 tp!1620332))))

(assert (=> b!5856446 (= tp!1620003 e!3591662)))

(assert (= (and b!5856446 ((_ is ElementMatch!15923) (regTwo!32359 (regTwo!32358 r!7292)))) b!5857494))

(assert (= (and b!5856446 ((_ is Concat!24768) (regTwo!32359 (regTwo!32358 r!7292)))) b!5857495))

(assert (= (and b!5856446 ((_ is Star!15923) (regTwo!32359 (regTwo!32358 r!7292)))) b!5857496))

(assert (= (and b!5856446 ((_ is Union!15923) (regTwo!32359 (regTwo!32358 r!7292)))) b!5857497))

(declare-fun b!5857498 () Bool)

(declare-fun e!3591663 () Bool)

(assert (=> b!5857498 (= e!3591663 tp_is_empty!41099)))

(declare-fun b!5857500 () Bool)

(declare-fun tp!1620338 () Bool)

(assert (=> b!5857500 (= e!3591663 tp!1620338)))

(declare-fun b!5857501 () Bool)

(declare-fun tp!1620336 () Bool)

(declare-fun tp!1620335 () Bool)

(assert (=> b!5857501 (= e!3591663 (and tp!1620336 tp!1620335))))

(declare-fun b!5857499 () Bool)

(declare-fun tp!1620334 () Bool)

(declare-fun tp!1620337 () Bool)

(assert (=> b!5857499 (= e!3591663 (and tp!1620334 tp!1620337))))

(assert (=> b!5856467 (= tp!1620033 e!3591663)))

(assert (= (and b!5856467 ((_ is ElementMatch!15923) (reg!16252 (regTwo!32359 r!7292)))) b!5857498))

(assert (= (and b!5856467 ((_ is Concat!24768) (reg!16252 (regTwo!32359 r!7292)))) b!5857499))

(assert (= (and b!5856467 ((_ is Star!15923) (reg!16252 (regTwo!32359 r!7292)))) b!5857500))

(assert (= (and b!5856467 ((_ is Union!15923) (reg!16252 (regTwo!32359 r!7292)))) b!5857501))

(declare-fun b!5857502 () Bool)

(declare-fun e!3591664 () Bool)

(declare-fun tp!1620339 () Bool)

(assert (=> b!5857502 (= e!3591664 (and tp_is_empty!41099 tp!1620339))))

(assert (=> b!5856481 (= tp!1620042 e!3591664)))

(assert (= (and b!5856481 ((_ is Cons!63945) (t!377436 (t!377436 s!2326)))) b!5857502))

(declare-fun b!5857503 () Bool)

(declare-fun e!3591665 () Bool)

(assert (=> b!5857503 (= e!3591665 tp_is_empty!41099)))

(declare-fun b!5857505 () Bool)

(declare-fun tp!1620344 () Bool)

(assert (=> b!5857505 (= e!3591665 tp!1620344)))

(declare-fun b!5857506 () Bool)

(declare-fun tp!1620342 () Bool)

(declare-fun tp!1620341 () Bool)

(assert (=> b!5857506 (= e!3591665 (and tp!1620342 tp!1620341))))

(declare-fun b!5857504 () Bool)

(declare-fun tp!1620340 () Bool)

(declare-fun tp!1620343 () Bool)

(assert (=> b!5857504 (= e!3591665 (and tp!1620340 tp!1620343))))

(assert (=> b!5856445 (= tp!1620006 e!3591665)))

(assert (= (and b!5856445 ((_ is ElementMatch!15923) (reg!16252 (regTwo!32358 r!7292)))) b!5857503))

(assert (= (and b!5856445 ((_ is Concat!24768) (reg!16252 (regTwo!32358 r!7292)))) b!5857504))

(assert (= (and b!5856445 ((_ is Star!15923) (reg!16252 (regTwo!32358 r!7292)))) b!5857505))

(assert (= (and b!5856445 ((_ is Union!15923) (reg!16252 (regTwo!32358 r!7292)))) b!5857506))

(declare-fun b!5857507 () Bool)

(declare-fun e!3591666 () Bool)

(assert (=> b!5857507 (= e!3591666 tp_is_empty!41099)))

(declare-fun b!5857509 () Bool)

(declare-fun tp!1620349 () Bool)

(assert (=> b!5857509 (= e!3591666 tp!1620349)))

(declare-fun b!5857510 () Bool)

(declare-fun tp!1620347 () Bool)

(declare-fun tp!1620346 () Bool)

(assert (=> b!5857510 (= e!3591666 (and tp!1620347 tp!1620346))))

(declare-fun b!5857508 () Bool)

(declare-fun tp!1620345 () Bool)

(declare-fun tp!1620348 () Bool)

(assert (=> b!5857508 (= e!3591666 (and tp!1620345 tp!1620348))))

(assert (=> b!5856466 (= tp!1620029 e!3591666)))

(assert (= (and b!5856466 ((_ is ElementMatch!15923) (regOne!32358 (regTwo!32359 r!7292)))) b!5857507))

(assert (= (and b!5856466 ((_ is Concat!24768) (regOne!32358 (regTwo!32359 r!7292)))) b!5857508))

(assert (= (and b!5856466 ((_ is Star!15923) (regOne!32358 (regTwo!32359 r!7292)))) b!5857509))

(assert (= (and b!5856466 ((_ is Union!15923) (regOne!32358 (regTwo!32359 r!7292)))) b!5857510))

(declare-fun b!5857511 () Bool)

(declare-fun e!3591667 () Bool)

(assert (=> b!5857511 (= e!3591667 tp_is_empty!41099)))

(declare-fun b!5857513 () Bool)

(declare-fun tp!1620354 () Bool)

(assert (=> b!5857513 (= e!3591667 tp!1620354)))

(declare-fun b!5857514 () Bool)

(declare-fun tp!1620352 () Bool)

(declare-fun tp!1620351 () Bool)

(assert (=> b!5857514 (= e!3591667 (and tp!1620352 tp!1620351))))

(declare-fun b!5857512 () Bool)

(declare-fun tp!1620350 () Bool)

(declare-fun tp!1620353 () Bool)

(assert (=> b!5857512 (= e!3591667 (and tp!1620350 tp!1620353))))

(assert (=> b!5856466 (= tp!1620032 e!3591667)))

(assert (= (and b!5856466 ((_ is ElementMatch!15923) (regTwo!32358 (regTwo!32359 r!7292)))) b!5857511))

(assert (= (and b!5856466 ((_ is Concat!24768) (regTwo!32358 (regTwo!32359 r!7292)))) b!5857512))

(assert (= (and b!5856466 ((_ is Star!15923) (regTwo!32358 (regTwo!32359 r!7292)))) b!5857513))

(assert (= (and b!5856466 ((_ is Union!15923) (regTwo!32358 (regTwo!32359 r!7292)))) b!5857514))

(declare-fun b!5857515 () Bool)

(declare-fun e!3591668 () Bool)

(assert (=> b!5857515 (= e!3591668 tp_is_empty!41099)))

(declare-fun b!5857517 () Bool)

(declare-fun tp!1620359 () Bool)

(assert (=> b!5857517 (= e!3591668 tp!1620359)))

(declare-fun b!5857518 () Bool)

(declare-fun tp!1620357 () Bool)

(declare-fun tp!1620356 () Bool)

(assert (=> b!5857518 (= e!3591668 (and tp!1620357 tp!1620356))))

(declare-fun b!5857516 () Bool)

(declare-fun tp!1620355 () Bool)

(declare-fun tp!1620358 () Bool)

(assert (=> b!5857516 (= e!3591668 (and tp!1620355 tp!1620358))))

(assert (=> b!5856444 (= tp!1620002 e!3591668)))

(assert (= (and b!5856444 ((_ is ElementMatch!15923) (regOne!32358 (regTwo!32358 r!7292)))) b!5857515))

(assert (= (and b!5856444 ((_ is Concat!24768) (regOne!32358 (regTwo!32358 r!7292)))) b!5857516))

(assert (= (and b!5856444 ((_ is Star!15923) (regOne!32358 (regTwo!32358 r!7292)))) b!5857517))

(assert (= (and b!5856444 ((_ is Union!15923) (regOne!32358 (regTwo!32358 r!7292)))) b!5857518))

(declare-fun b!5857519 () Bool)

(declare-fun e!3591669 () Bool)

(assert (=> b!5857519 (= e!3591669 tp_is_empty!41099)))

(declare-fun b!5857521 () Bool)

(declare-fun tp!1620364 () Bool)

(assert (=> b!5857521 (= e!3591669 tp!1620364)))

(declare-fun b!5857522 () Bool)

(declare-fun tp!1620362 () Bool)

(declare-fun tp!1620361 () Bool)

(assert (=> b!5857522 (= e!3591669 (and tp!1620362 tp!1620361))))

(declare-fun b!5857520 () Bool)

(declare-fun tp!1620360 () Bool)

(declare-fun tp!1620363 () Bool)

(assert (=> b!5857520 (= e!3591669 (and tp!1620360 tp!1620363))))

(assert (=> b!5856444 (= tp!1620005 e!3591669)))

(assert (= (and b!5856444 ((_ is ElementMatch!15923) (regTwo!32358 (regTwo!32358 r!7292)))) b!5857519))

(assert (= (and b!5856444 ((_ is Concat!24768) (regTwo!32358 (regTwo!32358 r!7292)))) b!5857520))

(assert (= (and b!5856444 ((_ is Star!15923) (regTwo!32358 (regTwo!32358 r!7292)))) b!5857521))

(assert (= (and b!5856444 ((_ is Union!15923) (regTwo!32358 (regTwo!32358 r!7292)))) b!5857522))

(declare-fun b_lambda!220463 () Bool)

(assert (= b_lambda!220461 (or d!1839143 b_lambda!220463)))

(declare-fun bs!1380152 () Bool)

(declare-fun d!1839581 () Bool)

(assert (= bs!1380152 (and d!1839581 d!1839143)))

(assert (=> bs!1380152 (= (dynLambda!25002 lambda!320215 (h!70392 (exprs!5807 setElem!39690))) (validRegex!7659 (h!70392 (exprs!5807 setElem!39690))))))

(declare-fun m!6775502 () Bool)

(assert (=> bs!1380152 m!6775502))

(assert (=> b!5857405 d!1839581))

(declare-fun b_lambda!220465 () Bool)

(assert (= b_lambda!220457 (or d!1839153 b_lambda!220465)))

(declare-fun bs!1380153 () Bool)

(declare-fun d!1839583 () Bool)

(assert (= bs!1380153 (and d!1839583 d!1839153)))

(assert (=> bs!1380153 (= (dynLambda!25002 lambda!320224 (h!70392 (exprs!5807 (h!70394 zl!343)))) (validRegex!7659 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(declare-fun m!6775504 () Bool)

(assert (=> bs!1380153 m!6775504))

(assert (=> b!5857232 d!1839583))

(declare-fun b_lambda!220467 () Bool)

(assert (= b_lambda!220451 (or d!1839123 b_lambda!220467)))

(declare-fun bs!1380154 () Bool)

(declare-fun d!1839585 () Bool)

(assert (= bs!1380154 (and d!1839585 d!1839123)))

(assert (=> bs!1380154 (= (dynLambda!25002 lambda!320209 (h!70392 (exprs!5807 (h!70394 zl!343)))) (validRegex!7659 (h!70392 (exprs!5807 (h!70394 zl!343)))))))

(assert (=> bs!1380154 m!6775504))

(assert (=> b!5857049 d!1839585))

(declare-fun b_lambda!220469 () Bool)

(assert (= b_lambda!220459 (or d!1839099 b_lambda!220469)))

(declare-fun bs!1380155 () Bool)

(declare-fun d!1839587 () Bool)

(assert (= bs!1380155 (and d!1839587 d!1839099)))

(assert (=> bs!1380155 (= (dynLambda!25002 lambda!320200 (h!70392 (exprs!5807 lt!2304891))) (validRegex!7659 (h!70392 (exprs!5807 lt!2304891))))))

(declare-fun m!6775506 () Bool)

(assert (=> bs!1380155 m!6775506))

(assert (=> b!5857234 d!1839587))

(declare-fun b_lambda!220471 () Bool)

(assert (= b_lambda!220455 (or d!1839147 b_lambda!220471)))

(declare-fun bs!1380156 () Bool)

(declare-fun d!1839589 () Bool)

(assert (= bs!1380156 (and d!1839589 d!1839147)))

(assert (=> bs!1380156 (= (dynLambda!25002 lambda!320218 (h!70392 (unfocusZipperList!1344 zl!343))) (validRegex!7659 (h!70392 (unfocusZipperList!1344 zl!343))))))

(declare-fun m!6775508 () Bool)

(assert (=> bs!1380156 m!6775508))

(assert (=> b!5857221 d!1839589))

(declare-fun b_lambda!220473 () Bool)

(assert (= b_lambda!220453 (or b!5855690 b_lambda!220473)))

(assert (=> d!1839479 d!1839155))

(declare-fun b_lambda!220475 () Bool)

(assert (= b_lambda!220449 (or d!1839149 b_lambda!220475)))

(declare-fun bs!1380157 () Bool)

(declare-fun d!1839591 () Bool)

(assert (= bs!1380157 (and d!1839591 d!1839149)))

(assert (=> bs!1380157 (= (dynLambda!25002 lambda!320221 (h!70392 lt!2304969)) (validRegex!7659 (h!70392 lt!2304969)))))

(declare-fun m!6775510 () Bool)

(assert (=> bs!1380157 m!6775510))

(assert (=> b!5857047 d!1839591))

(check-sat (not bm!458972) (not b!5857505) (not b!5857429) (not b!5857463) (not d!1839457) (not b!5857426) (not b!5857362) (not d!1839575) (not d!1839553) (not d!1839543) (not b!5857487) (not b!5857504) (not bm!458957) (not bm!458986) (not b!5857517) (not bs!1380156) (not bm!458922) (not b!5857509) (not bs!1380154) (not b!5857136) (not b_lambda!220467) (not b!5857492) (not b!5857326) (not d!1839515) (not b!5857513) (not b!5857495) (not b!5857361) (not b!5857441) (not b!5857196) (not b_lambda!220475) (not b!5857510) (not bm!459015) (not b!5857323) (not b!5857395) (not b!5857132) (not b!5857466) (not bm!458938) (not b!5857311) (not b!5857449) (not bm!458996) (not b_lambda!220419) (not d!1839441) (not b!5857479) (not setNonEmpty!39704) (not b!5857461) (not b!5857317) (not d!1839417) (not d!1839531) (not setNonEmpty!39703) (not b!5857280) (not b!5857074) (not b!5857450) (not b!5857516) (not bm!458945) (not b!5857416) (not bm!458951) (not bm!458981) (not b!5857316) (not b_lambda!220469) (not bm!458987) (not b!5857458) (not b!5857281) (not b!5857475) (not b!5857262) (not b!5857467) (not bm!458916) (not bm!458999) (not bm!458956) (not b!5857135) (not d!1839479) (not d!1839571) (not b!5857138) (not b!5857042) (not bm!459016) (not b!5857404) (not b!5857484) (not b!5857048) (not bm!458917) (not d!1839387) (not b!5857421) (not b!5857508) (not d!1839385) (not b!5857481) (not bm!458982) (not b!5857412) (not b!5857086) (not b!5857068) (not b!5857422) (not bm!459018) (not d!1839561) (not b!5857009) (not b!5857453) (not b!5857352) (not bm!458954) (not b!5857522) (not bm!458948) (not bm!458967) (not b!5857437) (not b!5857233) tp_is_empty!41099 (not bs!1380152) (not b!5857137) (not b!5857427) (not d!1839569) (not b!5857325) (not d!1839443) (not b!5857499) (not d!1839501) (not bm!458975) (not b!5857417) (not b!5857425) (not d!1839545) (not b!5857360) (not b!5857134) (not b!5857364) (not b!5857502) (not b!5857345) (not d!1839395) (not b!5857431) (not b!5857485) (not b!5857459) (not b!5857454) (not b!5857100) (not b!5857207) (not b!5857332) (not b!5857432) (not d!1839405) (not b!5857039) (not d!1839407) (not b!5857436) (not bm!458984) (not bm!458911) (not d!1839535) (not b!5857204) (not b!5857188) (not b!5857240) (not b!5857443) (not b!5857473) (not b!5857329) (not bm!459005) (not b!5857087) (not b!5857095) (not b!5857023) (not b!5857451) (not b!5857287) (not b!5857462) (not b!5857014) (not b_lambda!220471) (not b!5857472) (not b!5857438) (not b!5857520) (not bm!458969) (not b!5857521) (not b!5857090) (not b!5857363) (not b!5857506) (not b!5857119) (not b_lambda!220465) (not b!5857489) (not b!5857267) (not bm!458992) (not b!5857477) (not b!5857413) (not b!5857446) (not d!1839453) (not b!5857406) (not b!5857235) (not b!5857434) (not bm!458940) (not b!5857445) (not bm!458931) (not d!1839565) (not d!1839555) (not d!1839557) (not bm!458933) (not b!5857483) (not b!5857300) (not bm!459014) (not b!5857268) (not b!5857501) (not d!1839397) (not bm!458939) (not bm!459003) (not bm!459023) (not bm!458950) (not b!5857356) (not bm!458919) (not d!1839487) (not bm!458990) (not d!1839447) (not d!1839429) (not b!5857409) (not bm!459007) (not b!5857283) (not bm!459025) (not b!5857419) (not bm!458978) (not b!5857480) (not b!5857073) (not b!5857497) (not bm!458998) (not d!1839481) (not d!1839403) (not b!5857470) (not bm!458921) (not bm!458970) (not b!5857414) (not b!5857471) (not b_lambda!220463) (not b!5857442) (not bm!458927) (not b!5857050) (not b!5857430) (not b!5857200) (not b!5857078) (not b!5857455) (not b!5857315) (not d!1839469) (not bm!458934) (not bm!458974) (not b!5857141) (not b!5857124) (not bm!459009) (not b!5857514) (not b!5857324) (not bm!458979) (not d!1839471) (not b!5857410) (not d!1839551) (not d!1839437) (not bm!458928) (not b!5857418) (not b!5857423) (not b!5857394) (not b!5857376) (not d!1839527) (not b!5857465) (not bm!459012) (not d!1839433) (not b!5857251) (not bm!459019) (not b!5857447) (not b!5857216) (not b!5857469) (not bm!458912) (not b!5857403) (not b!5857488) (not bm!458942) (not b!5857183) (not b!5857493) (not bs!1380157) (not b!5857101) (not b!5857017) (not bm!459022) (not bm!458925) (not bs!1380153) (not bs!1380155) (not b!5857327) (not b_lambda!220473) (not b!5857369) (not d!1839383) (not b!5857318) (not bm!458944) (not b!5857129) (not b!5857491) (not b!5857368) (not b!5857211) (not d!1839579) (not b!5857034) (not b!5857282) (not bm!458955) (not b!5857057) (not bm!458993) (not bm!459010) (not bm!459002) (not b!5857402) (not b!5857408) (not b!5857284) (not b!5857041) (not bm!458937) (not b!5857307) (not d!1839537) (not b!5857108) (not b!5857433) (not b!5857457) (not d!1839431) (not b!5857082) (not bm!458915) (not b!5857496) (not b!5857174) (not b!5857222) (not b!5857476) (not b!5857518) (not b!5857385) (not b!5857500) (not b!5857275) (not b!5857227) (not d!1839517) (not d!1839491) (not b!5857127) (not b!5857439) (not b!5857322) (not d!1839451) (not bm!459008) (not bm!458973) (not b!5857512) (not bm!458976) (not d!1839435) (not b!5857328))
(check-sat)
