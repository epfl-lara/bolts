; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!645542 () Bool)

(assert start!645542)

(declare-fun b!6602010 () Bool)

(assert (=> b!6602010 true))

(assert (=> b!6602010 true))

(declare-fun lambda!368072 () Int)

(declare-fun lambda!368071 () Int)

(assert (=> b!6602010 (not (= lambda!368072 lambda!368071))))

(assert (=> b!6602010 true))

(assert (=> b!6602010 true))

(declare-fun b!6601980 () Bool)

(assert (=> b!6601980 true))

(declare-fun bs!1692515 () Bool)

(declare-fun b!6601988 () Bool)

(assert (= bs!1692515 (and b!6601988 b!6602010)))

(declare-datatypes ((C!33208 0))(
  ( (C!33209 (val!26306 Int)) )
))
(declare-datatypes ((Regex!16469 0))(
  ( (ElementMatch!16469 (c!1216194 C!33208)) (Concat!25314 (regOne!33450 Regex!16469) (regTwo!33450 Regex!16469)) (EmptyExpr!16469) (Star!16469 (reg!16798 Regex!16469)) (EmptyLang!16469) (Union!16469 (regOne!33451 Regex!16469) (regTwo!33451 Regex!16469)) )
))
(declare-fun r!7292 () Regex!16469)

(declare-datatypes ((List!65706 0))(
  ( (Nil!65582) (Cons!65582 (h!72030 C!33208) (t!379358 List!65706)) )
))
(declare-fun s!2326 () List!65706)

(declare-fun lambda!368074 () Int)

(declare-fun lt!2413840 () Regex!16469)

(assert (=> bs!1692515 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368074 lambda!368071))))

(assert (=> bs!1692515 (not (= lambda!368074 lambda!368072))))

(assert (=> b!6601988 true))

(assert (=> b!6601988 true))

(declare-fun lambda!368075 () Int)

(assert (=> bs!1692515 (not (= lambda!368075 lambda!368071))))

(assert (=> bs!1692515 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368075 lambda!368072))))

(assert (=> b!6601988 (not (= lambda!368075 lambda!368074))))

(assert (=> b!6601988 true))

(assert (=> b!6601988 true))

(declare-fun b!6601978 () Bool)

(declare-fun e!3994717 () Bool)

(declare-fun e!3994728 () Bool)

(assert (=> b!6601978 (= e!3994717 e!3994728)))

(declare-fun res!2707116 () Bool)

(assert (=> b!6601978 (=> res!2707116 e!3994728)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65707 0))(
  ( (Nil!65583) (Cons!65583 (h!72031 Regex!16469) (t!379359 List!65707)) )
))
(declare-datatypes ((Context!11706 0))(
  ( (Context!11707 (exprs!6353 List!65707)) )
))
(declare-fun lt!2413834 () (InoxSet Context!11706))

(declare-fun lt!2413851 () (InoxSet Context!11706))

(assert (=> b!6601978 (= res!2707116 (not (= lt!2413834 lt!2413851)))))

(declare-fun lt!2413843 () Context!11706)

(declare-fun lambda!368073 () Int)

(declare-fun lt!2413849 () (InoxSet Context!11706))

(declare-fun flatMap!1974 ((InoxSet Context!11706) Int) (InoxSet Context!11706))

(declare-fun derivationStepZipperUp!1643 (Context!11706 C!33208) (InoxSet Context!11706))

(assert (=> b!6601978 (= (flatMap!1974 lt!2413849 lambda!368073) (derivationStepZipperUp!1643 lt!2413843 (h!72030 s!2326)))))

(declare-datatypes ((Unit!159211 0))(
  ( (Unit!159212) )
))
(declare-fun lt!2413846 () Unit!159211)

(declare-fun lemmaFlatMapOnSingletonSet!1500 ((InoxSet Context!11706) Context!11706 Int) Unit!159211)

(assert (=> b!6601978 (= lt!2413846 (lemmaFlatMapOnSingletonSet!1500 lt!2413849 lt!2413843 lambda!368073))))

(declare-fun lt!2413853 () (InoxSet Context!11706))

(assert (=> b!6601978 (= lt!2413853 (derivationStepZipperUp!1643 lt!2413843 (h!72030 s!2326)))))

(declare-fun derivationStepZipper!2435 ((InoxSet Context!11706) C!33208) (InoxSet Context!11706))

(assert (=> b!6601978 (= lt!2413834 (derivationStepZipper!2435 lt!2413849 (h!72030 s!2326)))))

(assert (=> b!6601978 (= lt!2413849 (store ((as const (Array Context!11706 Bool)) false) lt!2413843 true))))

(declare-fun lt!2413860 () List!65707)

(assert (=> b!6601978 (= lt!2413843 (Context!11707 (Cons!65583 (reg!16798 (regOne!33450 r!7292)) lt!2413860)))))

(declare-fun b!6601979 () Bool)

(declare-fun e!3994710 () Bool)

(declare-fun e!3994732 () Bool)

(assert (=> b!6601979 (= e!3994710 e!3994732)))

(declare-fun res!2707093 () Bool)

(assert (=> b!6601979 (=> res!2707093 e!3994732)))

(declare-fun matchR!8652 (Regex!16469 List!65706) Bool)

(assert (=> b!6601979 (= res!2707093 (not (matchR!8652 (regTwo!33450 r!7292) s!2326)))))

(declare-fun lt!2413854 () Regex!16469)

(declare-fun lt!2413844 () (InoxSet Context!11706))

(declare-fun matchZipper!2481 ((InoxSet Context!11706) List!65706) Bool)

(assert (=> b!6601979 (= (matchR!8652 lt!2413854 s!2326) (matchZipper!2481 lt!2413844 s!2326))))

(declare-fun lt!2413856 () Unit!159211)

(declare-datatypes ((List!65708 0))(
  ( (Nil!65584) (Cons!65584 (h!72032 Context!11706) (t!379360 List!65708)) )
))
(declare-fun lt!2413838 () List!65708)

(declare-fun theoremZipperRegexEquiv!891 ((InoxSet Context!11706) List!65708 Regex!16469 List!65706) Unit!159211)

(assert (=> b!6601979 (= lt!2413856 (theoremZipperRegexEquiv!891 lt!2413844 lt!2413838 lt!2413854 s!2326))))

(declare-fun e!3994721 () Bool)

(declare-fun e!3994719 () Bool)

(assert (=> b!6601980 (= e!3994721 e!3994719)))

(declare-fun res!2707110 () Bool)

(assert (=> b!6601980 (=> res!2707110 e!3994719)))

(get-info :version)

(assert (=> b!6601980 (= res!2707110 (or (and ((_ is ElementMatch!16469) (regOne!33450 r!7292)) (= (c!1216194 (regOne!33450 r!7292)) (h!72030 s!2326))) ((_ is Union!16469) (regOne!33450 r!7292))))))

(declare-fun lt!2413832 () Unit!159211)

(declare-fun e!3994708 () Unit!159211)

(assert (=> b!6601980 (= lt!2413832 e!3994708)))

(declare-fun c!1216193 () Bool)

(declare-fun lt!2413842 () Bool)

(assert (=> b!6601980 (= c!1216193 lt!2413842)))

(declare-fun zl!343 () List!65708)

(declare-fun nullable!6462 (Regex!16469) Bool)

(assert (=> b!6601980 (= lt!2413842 (nullable!6462 (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun z!1189 () (InoxSet Context!11706))

(assert (=> b!6601980 (= (flatMap!1974 z!1189 lambda!368073) (derivationStepZipperUp!1643 (h!72032 zl!343) (h!72030 s!2326)))))

(declare-fun lt!2413864 () Unit!159211)

(assert (=> b!6601980 (= lt!2413864 (lemmaFlatMapOnSingletonSet!1500 z!1189 (h!72032 zl!343) lambda!368073))))

(declare-fun lt!2413863 () (InoxSet Context!11706))

(declare-fun lt!2413850 () Context!11706)

(assert (=> b!6601980 (= lt!2413863 (derivationStepZipperUp!1643 lt!2413850 (h!72030 s!2326)))))

(declare-fun lt!2413836 () (InoxSet Context!11706))

(declare-fun derivationStepZipperDown!1717 (Regex!16469 Context!11706 C!33208) (InoxSet Context!11706))

(assert (=> b!6601980 (= lt!2413836 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 (h!72032 zl!343))) lt!2413850 (h!72030 s!2326)))))

(assert (=> b!6601980 (= lt!2413850 (Context!11707 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun lt!2413830 () (InoxSet Context!11706))

(assert (=> b!6601980 (= lt!2413830 (derivationStepZipperUp!1643 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343))))) (h!72030 s!2326)))))

(declare-fun b!6601981 () Bool)

(declare-fun tp!1819953 () Bool)

(declare-fun e!3994730 () Bool)

(declare-fun e!3994727 () Bool)

(declare-fun inv!84419 (Context!11706) Bool)

(assert (=> b!6601981 (= e!3994730 (and (inv!84419 (h!72032 zl!343)) e!3994727 tp!1819953))))

(declare-fun setIsEmpty!45084 () Bool)

(declare-fun setRes!45084 () Bool)

(assert (=> setIsEmpty!45084 setRes!45084))

(declare-fun b!6601982 () Bool)

(declare-fun res!2707098 () Bool)

(declare-fun e!3994729 () Bool)

(assert (=> b!6601982 (=> res!2707098 e!3994729)))

(assert (=> b!6601982 (= res!2707098 (not lt!2413842))))

(declare-fun b!6601983 () Bool)

(declare-fun e!3994716 () Bool)

(declare-fun tp!1819951 () Bool)

(assert (=> b!6601983 (= e!3994716 tp!1819951)))

(declare-fun b!6601984 () Bool)

(declare-fun e!3994718 () Bool)

(declare-fun tp!1819955 () Bool)

(assert (=> b!6601984 (= e!3994718 tp!1819955)))

(declare-fun b!6601985 () Bool)

(declare-fun e!3994711 () Bool)

(assert (=> b!6601985 (= e!3994711 e!3994710)))

(declare-fun res!2707113 () Bool)

(assert (=> b!6601985 (=> res!2707113 e!3994710)))

(declare-fun zipperDepth!406 (List!65708) Int)

(assert (=> b!6601985 (= res!2707113 (< (zipperDepth!406 zl!343) (zipperDepth!406 lt!2413838)))))

(assert (=> b!6601985 (= lt!2413838 (Cons!65584 lt!2413850 Nil!65584))))

(declare-fun b!6601986 () Bool)

(declare-fun res!2707083 () Bool)

(declare-fun e!3994723 () Bool)

(assert (=> b!6601986 (=> res!2707083 e!3994723)))

(assert (=> b!6601986 (= res!2707083 (not (matchZipper!2481 lt!2413863 (t!379358 s!2326))))))

(declare-fun b!6601987 () Bool)

(declare-fun e!3994712 () Bool)

(assert (=> b!6601987 (= e!3994712 e!3994729)))

(declare-fun res!2707092 () Bool)

(assert (=> b!6601987 (=> res!2707092 e!3994729)))

(declare-fun lt!2413841 () Bool)

(assert (=> b!6601987 (= res!2707092 lt!2413841)))

(declare-fun lt!2413833 () Regex!16469)

(declare-fun matchRSpec!3570 (Regex!16469 List!65706) Bool)

(assert (=> b!6601987 (= (matchR!8652 lt!2413833 s!2326) (matchRSpec!3570 lt!2413833 s!2326))))

(declare-fun lt!2413867 () Unit!159211)

(declare-fun mainMatchTheorem!3570 (Regex!16469 List!65706) Unit!159211)

(assert (=> b!6601987 (= lt!2413867 (mainMatchTheorem!3570 lt!2413833 s!2326))))

(declare-fun b!6601989 () Bool)

(declare-fun e!3994714 () Bool)

(declare-fun e!3994720 () Bool)

(assert (=> b!6601989 (= e!3994714 (not e!3994720))))

(declare-fun res!2707106 () Bool)

(assert (=> b!6601989 (=> res!2707106 e!3994720)))

(assert (=> b!6601989 (= res!2707106 (not ((_ is Cons!65584) zl!343)))))

(assert (=> b!6601989 (= lt!2413841 (matchRSpec!3570 r!7292 s!2326))))

(assert (=> b!6601989 (= lt!2413841 (matchR!8652 r!7292 s!2326))))

(declare-fun lt!2413852 () Unit!159211)

(assert (=> b!6601989 (= lt!2413852 (mainMatchTheorem!3570 r!7292 s!2326))))

(declare-fun b!6601990 () Bool)

(declare-fun res!2707095 () Bool)

(assert (=> b!6601990 (=> res!2707095 e!3994719)))

(declare-fun e!3994722 () Bool)

(assert (=> b!6601990 (= res!2707095 e!3994722)))

(declare-fun res!2707088 () Bool)

(assert (=> b!6601990 (=> (not res!2707088) (not e!3994722))))

(assert (=> b!6601990 (= res!2707088 ((_ is Concat!25314) (regOne!33450 r!7292)))))

(declare-fun b!6601991 () Bool)

(declare-fun res!2707101 () Bool)

(assert (=> b!6601991 (=> res!2707101 e!3994728)))

(declare-fun lt!2413859 () Regex!16469)

(assert (=> b!6601991 (= res!2707101 (not (= lt!2413859 r!7292)))))

(declare-fun b!6601992 () Bool)

(declare-fun res!2707103 () Bool)

(assert (=> b!6601992 (=> res!2707103 e!3994720)))

(declare-fun isEmpty!37853 (List!65708) Bool)

(assert (=> b!6601992 (= res!2707103 (not (isEmpty!37853 (t!379360 zl!343))))))

(declare-fun b!6601993 () Bool)

(declare-fun e!3994715 () Bool)

(declare-fun tp_is_empty!42191 () Bool)

(declare-fun tp!1819959 () Bool)

(assert (=> b!6601993 (= e!3994715 (and tp_is_empty!42191 tp!1819959))))

(declare-fun b!6601994 () Bool)

(declare-fun e!3994731 () Bool)

(declare-fun e!3994713 () Bool)

(assert (=> b!6601994 (= e!3994731 e!3994713)))

(declare-fun res!2707105 () Bool)

(assert (=> b!6601994 (=> res!2707105 e!3994713)))

(declare-fun unfocusZipper!2211 (List!65708) Regex!16469)

(assert (=> b!6601994 (= res!2707105 (not (= (unfocusZipper!2211 (Cons!65584 lt!2413843 Nil!65584)) lt!2413833)))))

(declare-fun lt!2413862 () Regex!16469)

(assert (=> b!6601994 (= lt!2413833 (Concat!25314 (reg!16798 (regOne!33450 r!7292)) lt!2413862))))

(declare-fun setElem!45084 () Context!11706)

(declare-fun setNonEmpty!45084 () Bool)

(declare-fun tp!1819956 () Bool)

(assert (=> setNonEmpty!45084 (= setRes!45084 (and tp!1819956 (inv!84419 setElem!45084) e!3994716))))

(declare-fun setRest!45084 () (InoxSet Context!11706))

(assert (=> setNonEmpty!45084 (= z!1189 ((_ map or) (store ((as const (Array Context!11706 Bool)) false) setElem!45084 true) setRest!45084))))

(declare-fun b!6601995 () Bool)

(assert (=> b!6601995 (= e!3994719 e!3994717)))

(declare-fun res!2707112 () Bool)

(assert (=> b!6601995 (=> res!2707112 e!3994717)))

(assert (=> b!6601995 (= res!2707112 (not (= lt!2413836 lt!2413851)))))

(declare-fun lt!2413831 () Context!11706)

(assert (=> b!6601995 (= lt!2413851 (derivationStepZipperDown!1717 (reg!16798 (regOne!33450 r!7292)) lt!2413831 (h!72030 s!2326)))))

(assert (=> b!6601995 (= lt!2413831 (Context!11707 lt!2413860))))

(assert (=> b!6601995 (= lt!2413860 (Cons!65583 lt!2413840 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(assert (=> b!6601995 (= lt!2413840 (Star!16469 (reg!16798 (regOne!33450 r!7292))))))

(declare-fun b!6601996 () Bool)

(assert (=> b!6601996 (= e!3994718 tp_is_empty!42191)))

(declare-fun b!6601997 () Bool)

(assert (=> b!6601997 (= e!3994729 e!3994723)))

(declare-fun res!2707104 () Bool)

(assert (=> b!6601997 (=> res!2707104 e!3994723)))

(declare-fun e!3994725 () Bool)

(assert (=> b!6601997 (= res!2707104 e!3994725)))

(declare-fun res!2707109 () Bool)

(assert (=> b!6601997 (=> (not res!2707109) (not e!3994725))))

(declare-fun lt!2413858 () Bool)

(assert (=> b!6601997 (= res!2707109 (not lt!2413858))))

(assert (=> b!6601997 (= lt!2413858 (matchZipper!2481 lt!2413836 (t!379358 s!2326)))))

(declare-fun b!6601998 () Bool)

(declare-fun res!2707090 () Bool)

(assert (=> b!6601998 (=> res!2707090 e!3994720)))

(declare-fun generalisedUnion!2313 (List!65707) Regex!16469)

(declare-fun unfocusZipperList!1890 (List!65708) List!65707)

(assert (=> b!6601998 (= res!2707090 (not (= r!7292 (generalisedUnion!2313 (unfocusZipperList!1890 zl!343)))))))

(declare-fun b!6601999 () Bool)

(declare-fun tp!1819958 () Bool)

(declare-fun tp!1819957 () Bool)

(assert (=> b!6601999 (= e!3994718 (and tp!1819958 tp!1819957))))

(declare-fun b!6602000 () Bool)

(declare-fun res!2707084 () Bool)

(declare-fun e!3994726 () Bool)

(assert (=> b!6602000 (=> (not res!2707084) (not e!3994726))))

(declare-fun toList!10253 ((InoxSet Context!11706)) List!65708)

(assert (=> b!6602000 (= res!2707084 (= (toList!10253 z!1189) zl!343))))

(declare-fun b!6602001 () Bool)

(declare-fun res!2707107 () Bool)

(assert (=> b!6602001 (=> res!2707107 e!3994728)))

(assert (=> b!6602001 (= res!2707107 (not (= (matchZipper!2481 lt!2413849 s!2326) (matchZipper!2481 lt!2413834 (t!379358 s!2326)))))))

(declare-fun b!6602002 () Bool)

(declare-fun e!3994709 () Bool)

(assert (=> b!6602002 (= e!3994709 e!3994711)))

(declare-fun res!2707097 () Bool)

(assert (=> b!6602002 (=> res!2707097 e!3994711)))

(declare-fun regexDepth!366 (Regex!16469) Int)

(assert (=> b!6602002 (= res!2707097 (< (regexDepth!366 r!7292) (regexDepth!366 lt!2413854)))))

(declare-fun generalisedConcat!2066 (List!65707) Regex!16469)

(assert (=> b!6602002 (= lt!2413854 (generalisedConcat!2066 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6602003 () Bool)

(declare-fun tp!1819950 () Bool)

(assert (=> b!6602003 (= e!3994727 tp!1819950)))

(declare-fun b!6602004 () Bool)

(assert (=> b!6602004 (= e!3994713 e!3994712)))

(declare-fun res!2707086 () Bool)

(assert (=> b!6602004 (=> res!2707086 e!3994712)))

(declare-fun lt!2413845 () Context!11706)

(assert (=> b!6602004 (= res!2707086 (not (= (unfocusZipper!2211 (Cons!65584 lt!2413845 Nil!65584)) (reg!16798 (regOne!33450 r!7292)))))))

(declare-fun lt!2413829 () (InoxSet Context!11706))

(assert (=> b!6602004 (= (flatMap!1974 lt!2413829 lambda!368073) (derivationStepZipperUp!1643 lt!2413831 (h!72030 s!2326)))))

(declare-fun lt!2413868 () Unit!159211)

(assert (=> b!6602004 (= lt!2413868 (lemmaFlatMapOnSingletonSet!1500 lt!2413829 lt!2413831 lambda!368073))))

(declare-fun lt!2413839 () (InoxSet Context!11706))

(assert (=> b!6602004 (= (flatMap!1974 lt!2413839 lambda!368073) (derivationStepZipperUp!1643 lt!2413845 (h!72030 s!2326)))))

(declare-fun lt!2413869 () Unit!159211)

(assert (=> b!6602004 (= lt!2413869 (lemmaFlatMapOnSingletonSet!1500 lt!2413839 lt!2413845 lambda!368073))))

(declare-fun lt!2413866 () (InoxSet Context!11706))

(assert (=> b!6602004 (= lt!2413866 (derivationStepZipperUp!1643 lt!2413831 (h!72030 s!2326)))))

(declare-fun lt!2413857 () (InoxSet Context!11706))

(assert (=> b!6602004 (= lt!2413857 (derivationStepZipperUp!1643 lt!2413845 (h!72030 s!2326)))))

(assert (=> b!6602004 (= lt!2413829 (store ((as const (Array Context!11706 Bool)) false) lt!2413831 true))))

(assert (=> b!6602004 (= lt!2413839 (store ((as const (Array Context!11706 Bool)) false) lt!2413845 true))))

(assert (=> b!6602004 (= lt!2413845 (Context!11707 (Cons!65583 (reg!16798 (regOne!33450 r!7292)) Nil!65583)))))

(declare-fun b!6602005 () Bool)

(declare-fun res!2707087 () Bool)

(assert (=> b!6602005 (=> res!2707087 e!3994720)))

(assert (=> b!6602005 (= res!2707087 (or ((_ is EmptyExpr!16469) r!7292) ((_ is EmptyLang!16469) r!7292) ((_ is ElementMatch!16469) r!7292) ((_ is Union!16469) r!7292) (not ((_ is Concat!25314) r!7292))))))

(declare-fun b!6602006 () Bool)

(assert (=> b!6602006 (= e!3994726 e!3994714)))

(declare-fun res!2707099 () Bool)

(assert (=> b!6602006 (=> (not res!2707099) (not e!3994714))))

(assert (=> b!6602006 (= res!2707099 (= r!7292 lt!2413859))))

(assert (=> b!6602006 (= lt!2413859 (unfocusZipper!2211 zl!343))))

(declare-fun b!6602007 () Bool)

(assert (=> b!6602007 (= e!3994722 (nullable!6462 (regOne!33450 (regOne!33450 r!7292))))))

(declare-fun b!6602008 () Bool)

(declare-fun e!3994724 () Bool)

(assert (=> b!6602008 (= e!3994724 (matchZipper!2481 lt!2413863 (t!379358 s!2326)))))

(declare-fun b!6602009 () Bool)

(assert (=> b!6602009 (= e!3994728 e!3994731)))

(declare-fun res!2707094 () Bool)

(assert (=> b!6602009 (=> res!2707094 e!3994731)))

(assert (=> b!6602009 (= res!2707094 (not (= r!7292 lt!2413862)))))

(assert (=> b!6602009 (= lt!2413862 (Concat!25314 lt!2413840 (regTwo!33450 r!7292)))))

(assert (=> b!6602010 (= e!3994720 e!3994721)))

(declare-fun res!2707108 () Bool)

(assert (=> b!6602010 (=> res!2707108 e!3994721)))

(declare-fun lt!2413865 () Bool)

(assert (=> b!6602010 (= res!2707108 (or (not (= lt!2413841 lt!2413865)) ((_ is Nil!65582) s!2326)))))

(declare-fun Exists!3539 (Int) Bool)

(assert (=> b!6602010 (= (Exists!3539 lambda!368071) (Exists!3539 lambda!368072))))

(declare-fun lt!2413870 () Unit!159211)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2076 (Regex!16469 Regex!16469 List!65706) Unit!159211)

(assert (=> b!6602010 (= lt!2413870 (lemmaExistCutMatchRandMatchRSpecEquivalent!2076 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326))))

(assert (=> b!6602010 (= lt!2413865 (Exists!3539 lambda!368071))))

(declare-datatypes ((tuple2!66896 0))(
  ( (tuple2!66897 (_1!36751 List!65706) (_2!36751 List!65706)) )
))
(declare-datatypes ((Option!16360 0))(
  ( (None!16359) (Some!16359 (v!52548 tuple2!66896)) )
))
(declare-fun isDefined!13063 (Option!16360) Bool)

(declare-fun findConcatSeparation!2774 (Regex!16469 Regex!16469 List!65706 List!65706 List!65706) Option!16360)

(assert (=> b!6602010 (= lt!2413865 (isDefined!13063 (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) Nil!65582 s!2326 s!2326)))))

(declare-fun lt!2413847 () Unit!159211)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2538 (Regex!16469 Regex!16469 List!65706) Unit!159211)

(assert (=> b!6602010 (= lt!2413847 (lemmaFindConcatSeparationEquivalentToExists!2538 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326))))

(declare-fun b!6602011 () Bool)

(declare-fun res!2707100 () Bool)

(assert (=> b!6602011 (=> res!2707100 e!3994723)))

(assert (=> b!6602011 (= res!2707100 lt!2413858)))

(declare-fun b!6602012 () Bool)

(declare-fun tp!1819954 () Bool)

(declare-fun tp!1819952 () Bool)

(assert (=> b!6602012 (= e!3994718 (and tp!1819954 tp!1819952))))

(declare-fun b!6602013 () Bool)

(assert (=> b!6602013 (= e!3994723 e!3994709)))

(declare-fun res!2707091 () Bool)

(assert (=> b!6602013 (=> res!2707091 e!3994709)))

(assert (=> b!6602013 (= res!2707091 (not (= lt!2413863 (derivationStepZipper!2435 lt!2413844 (h!72030 s!2326)))))))

(assert (=> b!6602013 (= (flatMap!1974 lt!2413844 lambda!368073) (derivationStepZipperUp!1643 lt!2413850 (h!72030 s!2326)))))

(declare-fun lt!2413835 () Unit!159211)

(assert (=> b!6602013 (= lt!2413835 (lemmaFlatMapOnSingletonSet!1500 lt!2413844 lt!2413850 lambda!368073))))

(assert (=> b!6602013 (= lt!2413844 (store ((as const (Array Context!11706 Bool)) false) lt!2413850 true))))

(declare-fun b!6602014 () Bool)

(declare-fun res!2707082 () Bool)

(assert (=> b!6602014 (=> res!2707082 e!3994712)))

(assert (=> b!6602014 (= res!2707082 (not (= (unfocusZipper!2211 (Cons!65584 lt!2413831 Nil!65584)) lt!2413862)))))

(declare-fun b!6602015 () Bool)

(assert (=> b!6602015 (= e!3994725 (not (matchZipper!2481 lt!2413863 (t!379358 s!2326))))))

(declare-fun b!6602016 () Bool)

(declare-fun res!2707096 () Bool)

(assert (=> b!6602016 (=> res!2707096 e!3994729)))

(assert (=> b!6602016 (= res!2707096 (not (matchZipper!2481 z!1189 s!2326)))))

(declare-fun b!6602017 () Bool)

(declare-fun res!2707111 () Bool)

(assert (=> b!6602017 (=> res!2707111 e!3994719)))

(assert (=> b!6602017 (= res!2707111 (or ((_ is Concat!25314) (regOne!33450 r!7292)) (not ((_ is Star!16469) (regOne!33450 r!7292)))))))

(declare-fun b!6602018 () Bool)

(declare-fun res!2707089 () Bool)

(assert (=> b!6602018 (=> res!2707089 e!3994720)))

(assert (=> b!6602018 (= res!2707089 (not ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343)))))))

(declare-fun validRegex!8205 (Regex!16469) Bool)

(assert (=> b!6601988 (= e!3994732 (validRegex!8205 (reg!16798 (regOne!33450 r!7292))))))

(assert (=> b!6601988 (= (Exists!3539 lambda!368074) (Exists!3539 lambda!368075))))

(declare-fun lt!2413861 () Unit!159211)

(assert (=> b!6601988 (= lt!2413861 (lemmaExistCutMatchRandMatchRSpecEquivalent!2076 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582))))

(assert (=> b!6601988 (= (isDefined!13063 (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582 Nil!65582 Nil!65582)) (Exists!3539 lambda!368074))))

(declare-fun lt!2413848 () Unit!159211)

(assert (=> b!6601988 (= lt!2413848 (lemmaFindConcatSeparationEquivalentToExists!2538 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582))))

(assert (=> b!6601988 (= (matchR!8652 lt!2413840 Nil!65582) (matchRSpec!3570 lt!2413840 Nil!65582))))

(declare-fun lt!2413837 () Unit!159211)

(assert (=> b!6601988 (= lt!2413837 (mainMatchTheorem!3570 lt!2413840 Nil!65582))))

(declare-fun res!2707115 () Bool)

(assert (=> start!645542 (=> (not res!2707115) (not e!3994726))))

(assert (=> start!645542 (= res!2707115 (validRegex!8205 r!7292))))

(assert (=> start!645542 e!3994726))

(assert (=> start!645542 e!3994718))

(declare-fun condSetEmpty!45084 () Bool)

(assert (=> start!645542 (= condSetEmpty!45084 (= z!1189 ((as const (Array Context!11706 Bool)) false)))))

(assert (=> start!645542 setRes!45084))

(assert (=> start!645542 e!3994730))

(assert (=> start!645542 e!3994715))

(declare-fun b!6602019 () Bool)

(declare-fun res!2707085 () Bool)

(assert (=> b!6602019 (=> res!2707085 e!3994720)))

(assert (=> b!6602019 (= res!2707085 (not (= r!7292 (generalisedConcat!2066 (exprs!6353 (h!72032 zl!343))))))))

(declare-fun b!6602020 () Bool)

(declare-fun Unit!159213 () Unit!159211)

(assert (=> b!6602020 (= e!3994708 Unit!159213)))

(declare-fun b!6602021 () Bool)

(declare-fun res!2707102 () Bool)

(assert (=> b!6602021 (=> res!2707102 e!3994721)))

(declare-fun isEmpty!37854 (List!65707) Bool)

(assert (=> b!6602021 (= res!2707102 (isEmpty!37854 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6602022 () Bool)

(declare-fun Unit!159214 () Unit!159211)

(assert (=> b!6602022 (= e!3994708 Unit!159214)))

(declare-fun lt!2413855 () Unit!159211)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1300 ((InoxSet Context!11706) (InoxSet Context!11706) List!65706) Unit!159211)

(assert (=> b!6602022 (= lt!2413855 (lemmaZipperConcatMatchesSameAsBothZippers!1300 lt!2413836 lt!2413863 (t!379358 s!2326)))))

(declare-fun res!2707114 () Bool)

(assert (=> b!6602022 (= res!2707114 (matchZipper!2481 lt!2413836 (t!379358 s!2326)))))

(assert (=> b!6602022 (=> res!2707114 e!3994724)))

(assert (=> b!6602022 (= (matchZipper!2481 ((_ map or) lt!2413836 lt!2413863) (t!379358 s!2326)) e!3994724)))

(assert (= (and start!645542 res!2707115) b!6602000))

(assert (= (and b!6602000 res!2707084) b!6602006))

(assert (= (and b!6602006 res!2707099) b!6601989))

(assert (= (and b!6601989 (not res!2707106)) b!6601992))

(assert (= (and b!6601992 (not res!2707103)) b!6602019))

(assert (= (and b!6602019 (not res!2707085)) b!6602018))

(assert (= (and b!6602018 (not res!2707089)) b!6601998))

(assert (= (and b!6601998 (not res!2707090)) b!6602005))

(assert (= (and b!6602005 (not res!2707087)) b!6602010))

(assert (= (and b!6602010 (not res!2707108)) b!6602021))

(assert (= (and b!6602021 (not res!2707102)) b!6601980))

(assert (= (and b!6601980 c!1216193) b!6602022))

(assert (= (and b!6601980 (not c!1216193)) b!6602020))

(assert (= (and b!6602022 (not res!2707114)) b!6602008))

(assert (= (and b!6601980 (not res!2707110)) b!6601990))

(assert (= (and b!6601990 res!2707088) b!6602007))

(assert (= (and b!6601990 (not res!2707095)) b!6602017))

(assert (= (and b!6602017 (not res!2707111)) b!6601995))

(assert (= (and b!6601995 (not res!2707112)) b!6601978))

(assert (= (and b!6601978 (not res!2707116)) b!6602001))

(assert (= (and b!6602001 (not res!2707107)) b!6601991))

(assert (= (and b!6601991 (not res!2707101)) b!6602009))

(assert (= (and b!6602009 (not res!2707094)) b!6601994))

(assert (= (and b!6601994 (not res!2707105)) b!6602004))

(assert (= (and b!6602004 (not res!2707086)) b!6602014))

(assert (= (and b!6602014 (not res!2707082)) b!6601987))

(assert (= (and b!6601987 (not res!2707092)) b!6602016))

(assert (= (and b!6602016 (not res!2707096)) b!6601982))

(assert (= (and b!6601982 (not res!2707098)) b!6601997))

(assert (= (and b!6601997 res!2707109) b!6602015))

(assert (= (and b!6601997 (not res!2707104)) b!6602011))

(assert (= (and b!6602011 (not res!2707100)) b!6601986))

(assert (= (and b!6601986 (not res!2707083)) b!6602013))

(assert (= (and b!6602013 (not res!2707091)) b!6602002))

(assert (= (and b!6602002 (not res!2707097)) b!6601985))

(assert (= (and b!6601985 (not res!2707113)) b!6601979))

(assert (= (and b!6601979 (not res!2707093)) b!6601988))

(assert (= (and start!645542 ((_ is ElementMatch!16469) r!7292)) b!6601996))

(assert (= (and start!645542 ((_ is Concat!25314) r!7292)) b!6602012))

(assert (= (and start!645542 ((_ is Star!16469) r!7292)) b!6601984))

(assert (= (and start!645542 ((_ is Union!16469) r!7292)) b!6601999))

(assert (= (and start!645542 condSetEmpty!45084) setIsEmpty!45084))

(assert (= (and start!645542 (not condSetEmpty!45084)) setNonEmpty!45084))

(assert (= setNonEmpty!45084 b!6601983))

(assert (= b!6601981 b!6602003))

(assert (= (and start!645542 ((_ is Cons!65584) zl!343)) b!6601981))

(assert (= (and start!645542 ((_ is Cons!65582) s!2326)) b!6601993))

(declare-fun m!7377946 () Bool)

(assert (=> b!6602021 m!7377946))

(declare-fun m!7377948 () Bool)

(assert (=> b!6601987 m!7377948))

(declare-fun m!7377950 () Bool)

(assert (=> b!6601987 m!7377950))

(declare-fun m!7377952 () Bool)

(assert (=> b!6601987 m!7377952))

(declare-fun m!7377954 () Bool)

(assert (=> start!645542 m!7377954))

(declare-fun m!7377956 () Bool)

(assert (=> b!6602022 m!7377956))

(declare-fun m!7377958 () Bool)

(assert (=> b!6602022 m!7377958))

(declare-fun m!7377960 () Bool)

(assert (=> b!6602022 m!7377960))

(declare-fun m!7377962 () Bool)

(assert (=> setNonEmpty!45084 m!7377962))

(declare-fun m!7377964 () Bool)

(assert (=> b!6602004 m!7377964))

(declare-fun m!7377966 () Bool)

(assert (=> b!6602004 m!7377966))

(declare-fun m!7377968 () Bool)

(assert (=> b!6602004 m!7377968))

(declare-fun m!7377970 () Bool)

(assert (=> b!6602004 m!7377970))

(declare-fun m!7377972 () Bool)

(assert (=> b!6602004 m!7377972))

(declare-fun m!7377974 () Bool)

(assert (=> b!6602004 m!7377974))

(declare-fun m!7377976 () Bool)

(assert (=> b!6602004 m!7377976))

(declare-fun m!7377978 () Bool)

(assert (=> b!6602004 m!7377978))

(declare-fun m!7377980 () Bool)

(assert (=> b!6602004 m!7377980))

(declare-fun m!7377982 () Bool)

(assert (=> b!6602019 m!7377982))

(declare-fun m!7377984 () Bool)

(assert (=> b!6602013 m!7377984))

(declare-fun m!7377986 () Bool)

(assert (=> b!6602013 m!7377986))

(declare-fun m!7377988 () Bool)

(assert (=> b!6602013 m!7377988))

(declare-fun m!7377990 () Bool)

(assert (=> b!6602013 m!7377990))

(declare-fun m!7377992 () Bool)

(assert (=> b!6602013 m!7377992))

(declare-fun m!7377994 () Bool)

(assert (=> b!6601980 m!7377994))

(declare-fun m!7377996 () Bool)

(assert (=> b!6601980 m!7377996))

(declare-fun m!7377998 () Bool)

(assert (=> b!6601980 m!7377998))

(assert (=> b!6601980 m!7377986))

(declare-fun m!7378000 () Bool)

(assert (=> b!6601980 m!7378000))

(declare-fun m!7378002 () Bool)

(assert (=> b!6601980 m!7378002))

(declare-fun m!7378004 () Bool)

(assert (=> b!6601980 m!7378004))

(declare-fun m!7378006 () Bool)

(assert (=> b!6601978 m!7378006))

(declare-fun m!7378008 () Bool)

(assert (=> b!6601978 m!7378008))

(declare-fun m!7378010 () Bool)

(assert (=> b!6601978 m!7378010))

(declare-fun m!7378012 () Bool)

(assert (=> b!6601978 m!7378012))

(declare-fun m!7378014 () Bool)

(assert (=> b!6601978 m!7378014))

(declare-fun m!7378016 () Bool)

(assert (=> b!6601988 m!7378016))

(declare-fun m!7378018 () Bool)

(assert (=> b!6601988 m!7378018))

(declare-fun m!7378020 () Bool)

(assert (=> b!6601988 m!7378020))

(assert (=> b!6601988 m!7378020))

(declare-fun m!7378022 () Bool)

(assert (=> b!6601988 m!7378022))

(declare-fun m!7378024 () Bool)

(assert (=> b!6601988 m!7378024))

(declare-fun m!7378026 () Bool)

(assert (=> b!6601988 m!7378026))

(declare-fun m!7378028 () Bool)

(assert (=> b!6601988 m!7378028))

(declare-fun m!7378030 () Bool)

(assert (=> b!6601988 m!7378030))

(declare-fun m!7378032 () Bool)

(assert (=> b!6601988 m!7378032))

(assert (=> b!6601988 m!7378030))

(declare-fun m!7378034 () Bool)

(assert (=> b!6601988 m!7378034))

(assert (=> b!6601997 m!7377958))

(declare-fun m!7378036 () Bool)

(assert (=> b!6601985 m!7378036))

(declare-fun m!7378038 () Bool)

(assert (=> b!6601985 m!7378038))

(declare-fun m!7378040 () Bool)

(assert (=> b!6601981 m!7378040))

(declare-fun m!7378042 () Bool)

(assert (=> b!6602006 m!7378042))

(declare-fun m!7378044 () Bool)

(assert (=> b!6601998 m!7378044))

(assert (=> b!6601998 m!7378044))

(declare-fun m!7378046 () Bool)

(assert (=> b!6601998 m!7378046))

(declare-fun m!7378048 () Bool)

(assert (=> b!6602000 m!7378048))

(declare-fun m!7378050 () Bool)

(assert (=> b!6601986 m!7378050))

(assert (=> b!6602015 m!7378050))

(declare-fun m!7378052 () Bool)

(assert (=> b!6602014 m!7378052))

(assert (=> b!6602008 m!7378050))

(declare-fun m!7378054 () Bool)

(assert (=> b!6601989 m!7378054))

(declare-fun m!7378056 () Bool)

(assert (=> b!6601989 m!7378056))

(declare-fun m!7378058 () Bool)

(assert (=> b!6601989 m!7378058))

(declare-fun m!7378060 () Bool)

(assert (=> b!6602010 m!7378060))

(declare-fun m!7378062 () Bool)

(assert (=> b!6602010 m!7378062))

(declare-fun m!7378064 () Bool)

(assert (=> b!6602010 m!7378064))

(declare-fun m!7378066 () Bool)

(assert (=> b!6602010 m!7378066))

(declare-fun m!7378068 () Bool)

(assert (=> b!6602010 m!7378068))

(assert (=> b!6602010 m!7378066))

(assert (=> b!6602010 m!7378062))

(declare-fun m!7378070 () Bool)

(assert (=> b!6602010 m!7378070))

(declare-fun m!7378072 () Bool)

(assert (=> b!6601992 m!7378072))

(declare-fun m!7378074 () Bool)

(assert (=> b!6601994 m!7378074))

(declare-fun m!7378076 () Bool)

(assert (=> b!6602002 m!7378076))

(declare-fun m!7378078 () Bool)

(assert (=> b!6602002 m!7378078))

(declare-fun m!7378080 () Bool)

(assert (=> b!6602002 m!7378080))

(declare-fun m!7378082 () Bool)

(assert (=> b!6602007 m!7378082))

(declare-fun m!7378084 () Bool)

(assert (=> b!6601979 m!7378084))

(declare-fun m!7378086 () Bool)

(assert (=> b!6601979 m!7378086))

(declare-fun m!7378088 () Bool)

(assert (=> b!6601979 m!7378088))

(declare-fun m!7378090 () Bool)

(assert (=> b!6601979 m!7378090))

(declare-fun m!7378092 () Bool)

(assert (=> b!6602016 m!7378092))

(declare-fun m!7378094 () Bool)

(assert (=> b!6602001 m!7378094))

(declare-fun m!7378096 () Bool)

(assert (=> b!6602001 m!7378096))

(declare-fun m!7378098 () Bool)

(assert (=> b!6601995 m!7378098))

(check-sat (not b!6601981) (not b!6602014) (not b!6601979) (not b!6601987) (not b!6601993) (not b!6602016) (not b!6602007) tp_is_empty!42191 (not b!6602000) (not b!6602006) (not b!6602004) (not b!6601997) (not b!6602010) (not b!6601978) (not b!6601999) (not b!6601980) (not b!6602019) (not b!6601989) (not b!6602001) (not b!6601984) (not b!6601986) (not b!6602008) (not b!6602013) (not b!6601992) (not b!6602003) (not b!6601983) (not setNonEmpty!45084) (not b!6601988) (not start!645542) (not b!6602002) (not b!6601995) (not b!6602012) (not b!6602022) (not b!6601994) (not b!6601998) (not b!6602015) (not b!6602021) (not b!6601985))
(check-sat)
(get-model)

(declare-fun b!6602402 () Bool)

(declare-fun e!3994952 () (InoxSet Context!11706))

(declare-fun call!577483 () (InoxSet Context!11706))

(assert (=> b!6602402 (= e!3994952 call!577483)))

(declare-fun b!6602403 () Bool)

(declare-fun e!3994949 () (InoxSet Context!11706))

(assert (=> b!6602403 (= e!3994949 call!577483)))

(declare-fun b!6602404 () Bool)

(declare-fun e!3994953 () (InoxSet Context!11706))

(declare-fun call!577480 () (InoxSet Context!11706))

(declare-fun call!577484 () (InoxSet Context!11706))

(assert (=> b!6602404 (= e!3994953 ((_ map or) call!577480 call!577484))))

(declare-fun c!1216323 () Bool)

(declare-fun bm!577474 () Bool)

(declare-fun c!1216326 () Bool)

(declare-fun call!577481 () List!65707)

(declare-fun c!1216324 () Bool)

(assert (=> bm!577474 (= call!577480 (derivationStepZipperDown!1717 (ite c!1216326 (regOne!33451 (reg!16798 (regOne!33450 r!7292))) (ite c!1216323 (regTwo!33450 (reg!16798 (regOne!33450 r!7292))) (ite c!1216324 (regOne!33450 (reg!16798 (regOne!33450 r!7292))) (reg!16798 (reg!16798 (regOne!33450 r!7292)))))) (ite (or c!1216326 c!1216323) lt!2413831 (Context!11707 call!577481)) (h!72030 s!2326)))))

(declare-fun b!6602406 () Bool)

(declare-fun e!3994948 () (InoxSet Context!11706))

(declare-fun call!577479 () (InoxSet Context!11706))

(assert (=> b!6602406 (= e!3994948 ((_ map or) call!577484 call!577479))))

(declare-fun b!6602407 () Bool)

(declare-fun e!3994950 () (InoxSet Context!11706))

(assert (=> b!6602407 (= e!3994950 (store ((as const (Array Context!11706 Bool)) false) lt!2413831 true))))

(declare-fun b!6602408 () Bool)

(assert (=> b!6602408 (= e!3994948 e!3994952)))

(assert (=> b!6602408 (= c!1216324 ((_ is Concat!25314) (reg!16798 (regOne!33450 r!7292))))))

(declare-fun b!6602409 () Bool)

(assert (=> b!6602409 (= e!3994949 ((as const (Array Context!11706 Bool)) false))))

(declare-fun bm!577475 () Bool)

(declare-fun call!577482 () List!65707)

(assert (=> bm!577475 (= call!577481 call!577482)))

(declare-fun bm!577476 () Bool)

(assert (=> bm!577476 (= call!577483 call!577479)))

(declare-fun bm!577477 () Bool)

(assert (=> bm!577477 (= call!577484 (derivationStepZipperDown!1717 (ite c!1216326 (regTwo!33451 (reg!16798 (regOne!33450 r!7292))) (regOne!33450 (reg!16798 (regOne!33450 r!7292)))) (ite c!1216326 lt!2413831 (Context!11707 call!577482)) (h!72030 s!2326)))))

(declare-fun d!2070690 () Bool)

(declare-fun c!1216327 () Bool)

(assert (=> d!2070690 (= c!1216327 (and ((_ is ElementMatch!16469) (reg!16798 (regOne!33450 r!7292))) (= (c!1216194 (reg!16798 (regOne!33450 r!7292))) (h!72030 s!2326))))))

(assert (=> d!2070690 (= (derivationStepZipperDown!1717 (reg!16798 (regOne!33450 r!7292)) lt!2413831 (h!72030 s!2326)) e!3994950)))

(declare-fun b!6602405 () Bool)

(declare-fun c!1216325 () Bool)

(assert (=> b!6602405 (= c!1216325 ((_ is Star!16469) (reg!16798 (regOne!33450 r!7292))))))

(assert (=> b!6602405 (= e!3994952 e!3994949)))

(declare-fun b!6602410 () Bool)

(assert (=> b!6602410 (= e!3994950 e!3994953)))

(assert (=> b!6602410 (= c!1216326 ((_ is Union!16469) (reg!16798 (regOne!33450 r!7292))))))

(declare-fun bm!577478 () Bool)

(assert (=> bm!577478 (= call!577479 call!577480)))

(declare-fun b!6602411 () Bool)

(declare-fun e!3994951 () Bool)

(assert (=> b!6602411 (= c!1216323 e!3994951)))

(declare-fun res!2707236 () Bool)

(assert (=> b!6602411 (=> (not res!2707236) (not e!3994951))))

(assert (=> b!6602411 (= res!2707236 ((_ is Concat!25314) (reg!16798 (regOne!33450 r!7292))))))

(assert (=> b!6602411 (= e!3994953 e!3994948)))

(declare-fun b!6602412 () Bool)

(assert (=> b!6602412 (= e!3994951 (nullable!6462 (regOne!33450 (reg!16798 (regOne!33450 r!7292)))))))

(declare-fun bm!577479 () Bool)

(declare-fun $colon$colon!2310 (List!65707 Regex!16469) List!65707)

(assert (=> bm!577479 (= call!577482 ($colon$colon!2310 (exprs!6353 lt!2413831) (ite (or c!1216323 c!1216324) (regTwo!33450 (reg!16798 (regOne!33450 r!7292))) (reg!16798 (regOne!33450 r!7292)))))))

(assert (= (and d!2070690 c!1216327) b!6602407))

(assert (= (and d!2070690 (not c!1216327)) b!6602410))

(assert (= (and b!6602410 c!1216326) b!6602404))

(assert (= (and b!6602410 (not c!1216326)) b!6602411))

(assert (= (and b!6602411 res!2707236) b!6602412))

(assert (= (and b!6602411 c!1216323) b!6602406))

(assert (= (and b!6602411 (not c!1216323)) b!6602408))

(assert (= (and b!6602408 c!1216324) b!6602402))

(assert (= (and b!6602408 (not c!1216324)) b!6602405))

(assert (= (and b!6602405 c!1216325) b!6602403))

(assert (= (and b!6602405 (not c!1216325)) b!6602409))

(assert (= (or b!6602402 b!6602403) bm!577475))

(assert (= (or b!6602402 b!6602403) bm!577476))

(assert (= (or b!6602406 bm!577475) bm!577479))

(assert (= (or b!6602406 bm!577476) bm!577478))

(assert (= (or b!6602404 b!6602406) bm!577477))

(assert (= (or b!6602404 bm!577478) bm!577474))

(assert (=> b!6602407 m!7377970))

(declare-fun m!7378296 () Bool)

(assert (=> bm!577477 m!7378296))

(declare-fun m!7378298 () Bool)

(assert (=> bm!577479 m!7378298))

(declare-fun m!7378300 () Bool)

(assert (=> b!6602412 m!7378300))

(declare-fun m!7378302 () Bool)

(assert (=> bm!577474 m!7378302))

(assert (=> b!6601995 d!2070690))

(declare-fun d!2070706 () Bool)

(declare-fun c!1216339 () Bool)

(declare-fun isEmpty!37857 (List!65706) Bool)

(assert (=> d!2070706 (= c!1216339 (isEmpty!37857 s!2326))))

(declare-fun e!3994970 () Bool)

(assert (=> d!2070706 (= (matchZipper!2481 z!1189 s!2326) e!3994970)))

(declare-fun b!6602440 () Bool)

(declare-fun nullableZipper!2214 ((InoxSet Context!11706)) Bool)

(assert (=> b!6602440 (= e!3994970 (nullableZipper!2214 z!1189))))

(declare-fun b!6602441 () Bool)

(declare-fun head!13389 (List!65706) C!33208)

(declare-fun tail!12474 (List!65706) List!65706)

(assert (=> b!6602441 (= e!3994970 (matchZipper!2481 (derivationStepZipper!2435 z!1189 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070706 c!1216339) b!6602440))

(assert (= (and d!2070706 (not c!1216339)) b!6602441))

(declare-fun m!7378346 () Bool)

(assert (=> d!2070706 m!7378346))

(declare-fun m!7378348 () Bool)

(assert (=> b!6602440 m!7378348))

(declare-fun m!7378350 () Bool)

(assert (=> b!6602441 m!7378350))

(assert (=> b!6602441 m!7378350))

(declare-fun m!7378352 () Bool)

(assert (=> b!6602441 m!7378352))

(declare-fun m!7378354 () Bool)

(assert (=> b!6602441 m!7378354))

(assert (=> b!6602441 m!7378352))

(assert (=> b!6602441 m!7378354))

(declare-fun m!7378356 () Bool)

(assert (=> b!6602441 m!7378356))

(assert (=> b!6602016 d!2070706))

(declare-fun d!2070728 () Bool)

(declare-fun c!1216340 () Bool)

(assert (=> d!2070728 (= c!1216340 (isEmpty!37857 (t!379358 s!2326)))))

(declare-fun e!3994971 () Bool)

(assert (=> d!2070728 (= (matchZipper!2481 lt!2413863 (t!379358 s!2326)) e!3994971)))

(declare-fun b!6602442 () Bool)

(assert (=> b!6602442 (= e!3994971 (nullableZipper!2214 lt!2413863))))

(declare-fun b!6602443 () Bool)

(assert (=> b!6602443 (= e!3994971 (matchZipper!2481 (derivationStepZipper!2435 lt!2413863 (head!13389 (t!379358 s!2326))) (tail!12474 (t!379358 s!2326))))))

(assert (= (and d!2070728 c!1216340) b!6602442))

(assert (= (and d!2070728 (not c!1216340)) b!6602443))

(declare-fun m!7378364 () Bool)

(assert (=> d!2070728 m!7378364))

(declare-fun m!7378366 () Bool)

(assert (=> b!6602442 m!7378366))

(declare-fun m!7378368 () Bool)

(assert (=> b!6602443 m!7378368))

(assert (=> b!6602443 m!7378368))

(declare-fun m!7378370 () Bool)

(assert (=> b!6602443 m!7378370))

(declare-fun m!7378374 () Bool)

(assert (=> b!6602443 m!7378374))

(assert (=> b!6602443 m!7378370))

(assert (=> b!6602443 m!7378374))

(declare-fun m!7378378 () Bool)

(assert (=> b!6602443 m!7378378))

(assert (=> b!6602015 d!2070728))

(declare-fun d!2070734 () Bool)

(declare-fun lambda!368108 () Int)

(declare-fun forall!15661 (List!65707 Int) Bool)

(assert (=> d!2070734 (= (inv!84419 setElem!45084) (forall!15661 (exprs!6353 setElem!45084) lambda!368108))))

(declare-fun bs!1692556 () Bool)

(assert (= bs!1692556 d!2070734))

(declare-fun m!7378386 () Bool)

(assert (=> bs!1692556 m!7378386))

(assert (=> setNonEmpty!45084 d!2070734))

(declare-fun b!6602565 () Bool)

(declare-fun e!3995039 () Bool)

(assert (=> b!6602565 (= e!3995039 (= (head!13389 s!2326) (c!1216194 (regTwo!33450 r!7292))))))

(declare-fun b!6602566 () Bool)

(declare-fun e!3995043 () Bool)

(assert (=> b!6602566 (= e!3995043 (not (= (head!13389 s!2326) (c!1216194 (regTwo!33450 r!7292)))))))

(declare-fun b!6602567 () Bool)

(declare-fun res!2707298 () Bool)

(assert (=> b!6602567 (=> res!2707298 e!3995043)))

(assert (=> b!6602567 (= res!2707298 (not (isEmpty!37857 (tail!12474 s!2326))))))

(declare-fun b!6602568 () Bool)

(declare-fun e!3995040 () Bool)

(declare-fun e!3995041 () Bool)

(assert (=> b!6602568 (= e!3995040 e!3995041)))

(declare-fun res!2707301 () Bool)

(assert (=> b!6602568 (=> (not res!2707301) (not e!3995041))))

(declare-fun lt!2413945 () Bool)

(assert (=> b!6602568 (= res!2707301 (not lt!2413945))))

(declare-fun b!6602569 () Bool)

(declare-fun e!3995038 () Bool)

(declare-fun call!577500 () Bool)

(assert (=> b!6602569 (= e!3995038 (= lt!2413945 call!577500))))

(declare-fun b!6602570 () Bool)

(declare-fun res!2707300 () Bool)

(assert (=> b!6602570 (=> res!2707300 e!3995040)))

(assert (=> b!6602570 (= res!2707300 (not ((_ is ElementMatch!16469) (regTwo!33450 r!7292))))))

(declare-fun e!3995044 () Bool)

(assert (=> b!6602570 (= e!3995044 e!3995040)))

(declare-fun bm!577495 () Bool)

(assert (=> bm!577495 (= call!577500 (isEmpty!37857 s!2326))))

(declare-fun b!6602571 () Bool)

(assert (=> b!6602571 (= e!3995038 e!3995044)))

(declare-fun c!1216382 () Bool)

(assert (=> b!6602571 (= c!1216382 ((_ is EmptyLang!16469) (regTwo!33450 r!7292)))))

(declare-fun b!6602573 () Bool)

(declare-fun res!2707296 () Bool)

(assert (=> b!6602573 (=> (not res!2707296) (not e!3995039))))

(assert (=> b!6602573 (= res!2707296 (isEmpty!37857 (tail!12474 s!2326)))))

(declare-fun b!6602574 () Bool)

(assert (=> b!6602574 (= e!3995044 (not lt!2413945))))

(declare-fun b!6602575 () Bool)

(declare-fun res!2707302 () Bool)

(assert (=> b!6602575 (=> res!2707302 e!3995040)))

(assert (=> b!6602575 (= res!2707302 e!3995039)))

(declare-fun res!2707297 () Bool)

(assert (=> b!6602575 (=> (not res!2707297) (not e!3995039))))

(assert (=> b!6602575 (= res!2707297 lt!2413945)))

(declare-fun b!6602576 () Bool)

(declare-fun res!2707299 () Bool)

(assert (=> b!6602576 (=> (not res!2707299) (not e!3995039))))

(assert (=> b!6602576 (= res!2707299 (not call!577500))))

(declare-fun b!6602577 () Bool)

(declare-fun e!3995042 () Bool)

(assert (=> b!6602577 (= e!3995042 (nullable!6462 (regTwo!33450 r!7292)))))

(declare-fun b!6602578 () Bool)

(assert (=> b!6602578 (= e!3995041 e!3995043)))

(declare-fun res!2707295 () Bool)

(assert (=> b!6602578 (=> res!2707295 e!3995043)))

(assert (=> b!6602578 (= res!2707295 call!577500)))

(declare-fun d!2070738 () Bool)

(assert (=> d!2070738 e!3995038))

(declare-fun c!1216381 () Bool)

(assert (=> d!2070738 (= c!1216381 ((_ is EmptyExpr!16469) (regTwo!33450 r!7292)))))

(assert (=> d!2070738 (= lt!2413945 e!3995042)))

(declare-fun c!1216380 () Bool)

(assert (=> d!2070738 (= c!1216380 (isEmpty!37857 s!2326))))

(assert (=> d!2070738 (validRegex!8205 (regTwo!33450 r!7292))))

(assert (=> d!2070738 (= (matchR!8652 (regTwo!33450 r!7292) s!2326) lt!2413945)))

(declare-fun b!6602572 () Bool)

(declare-fun derivativeStep!5153 (Regex!16469 C!33208) Regex!16469)

(assert (=> b!6602572 (= e!3995042 (matchR!8652 (derivativeStep!5153 (regTwo!33450 r!7292) (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070738 c!1216380) b!6602577))

(assert (= (and d!2070738 (not c!1216380)) b!6602572))

(assert (= (and d!2070738 c!1216381) b!6602569))

(assert (= (and d!2070738 (not c!1216381)) b!6602571))

(assert (= (and b!6602571 c!1216382) b!6602574))

(assert (= (and b!6602571 (not c!1216382)) b!6602570))

(assert (= (and b!6602570 (not res!2707300)) b!6602575))

(assert (= (and b!6602575 res!2707297) b!6602576))

(assert (= (and b!6602576 res!2707299) b!6602573))

(assert (= (and b!6602573 res!2707296) b!6602565))

(assert (= (and b!6602575 (not res!2707302)) b!6602568))

(assert (= (and b!6602568 res!2707301) b!6602578))

(assert (= (and b!6602578 (not res!2707295)) b!6602567))

(assert (= (and b!6602567 (not res!2707298)) b!6602566))

(assert (= (or b!6602569 b!6602578 b!6602576) bm!577495))

(assert (=> b!6602566 m!7378350))

(assert (=> b!6602573 m!7378354))

(assert (=> b!6602573 m!7378354))

(declare-fun m!7378484 () Bool)

(assert (=> b!6602573 m!7378484))

(assert (=> b!6602572 m!7378350))

(assert (=> b!6602572 m!7378350))

(declare-fun m!7378486 () Bool)

(assert (=> b!6602572 m!7378486))

(assert (=> b!6602572 m!7378354))

(assert (=> b!6602572 m!7378486))

(assert (=> b!6602572 m!7378354))

(declare-fun m!7378488 () Bool)

(assert (=> b!6602572 m!7378488))

(assert (=> b!6602565 m!7378350))

(declare-fun m!7378490 () Bool)

(assert (=> b!6602577 m!7378490))

(assert (=> d!2070738 m!7378346))

(declare-fun m!7378492 () Bool)

(assert (=> d!2070738 m!7378492))

(assert (=> bm!577495 m!7378346))

(assert (=> b!6602567 m!7378354))

(assert (=> b!6602567 m!7378354))

(assert (=> b!6602567 m!7378484))

(assert (=> b!6601979 d!2070738))

(declare-fun b!6602579 () Bool)

(declare-fun e!3995046 () Bool)

(assert (=> b!6602579 (= e!3995046 (= (head!13389 s!2326) (c!1216194 lt!2413854)))))

(declare-fun b!6602580 () Bool)

(declare-fun e!3995050 () Bool)

(assert (=> b!6602580 (= e!3995050 (not (= (head!13389 s!2326) (c!1216194 lt!2413854))))))

(declare-fun b!6602581 () Bool)

(declare-fun res!2707306 () Bool)

(assert (=> b!6602581 (=> res!2707306 e!3995050)))

(assert (=> b!6602581 (= res!2707306 (not (isEmpty!37857 (tail!12474 s!2326))))))

(declare-fun b!6602582 () Bool)

(declare-fun e!3995047 () Bool)

(declare-fun e!3995048 () Bool)

(assert (=> b!6602582 (= e!3995047 e!3995048)))

(declare-fun res!2707309 () Bool)

(assert (=> b!6602582 (=> (not res!2707309) (not e!3995048))))

(declare-fun lt!2413946 () Bool)

(assert (=> b!6602582 (= res!2707309 (not lt!2413946))))

(declare-fun b!6602583 () Bool)

(declare-fun e!3995045 () Bool)

(declare-fun call!577501 () Bool)

(assert (=> b!6602583 (= e!3995045 (= lt!2413946 call!577501))))

(declare-fun b!6602584 () Bool)

(declare-fun res!2707308 () Bool)

(assert (=> b!6602584 (=> res!2707308 e!3995047)))

(assert (=> b!6602584 (= res!2707308 (not ((_ is ElementMatch!16469) lt!2413854)))))

(declare-fun e!3995051 () Bool)

(assert (=> b!6602584 (= e!3995051 e!3995047)))

(declare-fun bm!577496 () Bool)

(assert (=> bm!577496 (= call!577501 (isEmpty!37857 s!2326))))

(declare-fun b!6602585 () Bool)

(assert (=> b!6602585 (= e!3995045 e!3995051)))

(declare-fun c!1216385 () Bool)

(assert (=> b!6602585 (= c!1216385 ((_ is EmptyLang!16469) lt!2413854))))

(declare-fun b!6602587 () Bool)

(declare-fun res!2707304 () Bool)

(assert (=> b!6602587 (=> (not res!2707304) (not e!3995046))))

(assert (=> b!6602587 (= res!2707304 (isEmpty!37857 (tail!12474 s!2326)))))

(declare-fun b!6602588 () Bool)

(assert (=> b!6602588 (= e!3995051 (not lt!2413946))))

(declare-fun b!6602589 () Bool)

(declare-fun res!2707310 () Bool)

(assert (=> b!6602589 (=> res!2707310 e!3995047)))

(assert (=> b!6602589 (= res!2707310 e!3995046)))

(declare-fun res!2707305 () Bool)

(assert (=> b!6602589 (=> (not res!2707305) (not e!3995046))))

(assert (=> b!6602589 (= res!2707305 lt!2413946)))

(declare-fun b!6602590 () Bool)

(declare-fun res!2707307 () Bool)

(assert (=> b!6602590 (=> (not res!2707307) (not e!3995046))))

(assert (=> b!6602590 (= res!2707307 (not call!577501))))

(declare-fun b!6602591 () Bool)

(declare-fun e!3995049 () Bool)

(assert (=> b!6602591 (= e!3995049 (nullable!6462 lt!2413854))))

(declare-fun b!6602592 () Bool)

(assert (=> b!6602592 (= e!3995048 e!3995050)))

(declare-fun res!2707303 () Bool)

(assert (=> b!6602592 (=> res!2707303 e!3995050)))

(assert (=> b!6602592 (= res!2707303 call!577501)))

(declare-fun d!2070768 () Bool)

(assert (=> d!2070768 e!3995045))

(declare-fun c!1216384 () Bool)

(assert (=> d!2070768 (= c!1216384 ((_ is EmptyExpr!16469) lt!2413854))))

(assert (=> d!2070768 (= lt!2413946 e!3995049)))

(declare-fun c!1216383 () Bool)

(assert (=> d!2070768 (= c!1216383 (isEmpty!37857 s!2326))))

(assert (=> d!2070768 (validRegex!8205 lt!2413854)))

(assert (=> d!2070768 (= (matchR!8652 lt!2413854 s!2326) lt!2413946)))

(declare-fun b!6602586 () Bool)

(assert (=> b!6602586 (= e!3995049 (matchR!8652 (derivativeStep!5153 lt!2413854 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070768 c!1216383) b!6602591))

(assert (= (and d!2070768 (not c!1216383)) b!6602586))

(assert (= (and d!2070768 c!1216384) b!6602583))

(assert (= (and d!2070768 (not c!1216384)) b!6602585))

(assert (= (and b!6602585 c!1216385) b!6602588))

(assert (= (and b!6602585 (not c!1216385)) b!6602584))

(assert (= (and b!6602584 (not res!2707308)) b!6602589))

(assert (= (and b!6602589 res!2707305) b!6602590))

(assert (= (and b!6602590 res!2707307) b!6602587))

(assert (= (and b!6602587 res!2707304) b!6602579))

(assert (= (and b!6602589 (not res!2707310)) b!6602582))

(assert (= (and b!6602582 res!2707309) b!6602592))

(assert (= (and b!6602592 (not res!2707303)) b!6602581))

(assert (= (and b!6602581 (not res!2707306)) b!6602580))

(assert (= (or b!6602583 b!6602592 b!6602590) bm!577496))

(assert (=> b!6602580 m!7378350))

(assert (=> b!6602587 m!7378354))

(assert (=> b!6602587 m!7378354))

(assert (=> b!6602587 m!7378484))

(assert (=> b!6602586 m!7378350))

(assert (=> b!6602586 m!7378350))

(declare-fun m!7378494 () Bool)

(assert (=> b!6602586 m!7378494))

(assert (=> b!6602586 m!7378354))

(assert (=> b!6602586 m!7378494))

(assert (=> b!6602586 m!7378354))

(declare-fun m!7378496 () Bool)

(assert (=> b!6602586 m!7378496))

(assert (=> b!6602579 m!7378350))

(declare-fun m!7378498 () Bool)

(assert (=> b!6602591 m!7378498))

(assert (=> d!2070768 m!7378346))

(declare-fun m!7378500 () Bool)

(assert (=> d!2070768 m!7378500))

(assert (=> bm!577496 m!7378346))

(assert (=> b!6602581 m!7378354))

(assert (=> b!6602581 m!7378354))

(assert (=> b!6602581 m!7378484))

(assert (=> b!6601979 d!2070768))

(declare-fun d!2070770 () Bool)

(declare-fun c!1216386 () Bool)

(assert (=> d!2070770 (= c!1216386 (isEmpty!37857 s!2326))))

(declare-fun e!3995052 () Bool)

(assert (=> d!2070770 (= (matchZipper!2481 lt!2413844 s!2326) e!3995052)))

(declare-fun b!6602593 () Bool)

(assert (=> b!6602593 (= e!3995052 (nullableZipper!2214 lt!2413844))))

(declare-fun b!6602594 () Bool)

(assert (=> b!6602594 (= e!3995052 (matchZipper!2481 (derivationStepZipper!2435 lt!2413844 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070770 c!1216386) b!6602593))

(assert (= (and d!2070770 (not c!1216386)) b!6602594))

(assert (=> d!2070770 m!7378346))

(declare-fun m!7378504 () Bool)

(assert (=> b!6602593 m!7378504))

(assert (=> b!6602594 m!7378350))

(assert (=> b!6602594 m!7378350))

(declare-fun m!7378508 () Bool)

(assert (=> b!6602594 m!7378508))

(assert (=> b!6602594 m!7378354))

(assert (=> b!6602594 m!7378508))

(assert (=> b!6602594 m!7378354))

(declare-fun m!7378510 () Bool)

(assert (=> b!6602594 m!7378510))

(assert (=> b!6601979 d!2070770))

(declare-fun d!2070776 () Bool)

(assert (=> d!2070776 (= (matchR!8652 lt!2413854 s!2326) (matchZipper!2481 lt!2413844 s!2326))))

(declare-fun lt!2413957 () Unit!159211)

(declare-fun choose!49291 ((InoxSet Context!11706) List!65708 Regex!16469 List!65706) Unit!159211)

(assert (=> d!2070776 (= lt!2413957 (choose!49291 lt!2413844 lt!2413838 lt!2413854 s!2326))))

(assert (=> d!2070776 (validRegex!8205 lt!2413854)))

(assert (=> d!2070776 (= (theoremZipperRegexEquiv!891 lt!2413844 lt!2413838 lt!2413854 s!2326) lt!2413957)))

(declare-fun bs!1692618 () Bool)

(assert (= bs!1692618 d!2070776))

(assert (=> bs!1692618 m!7378086))

(assert (=> bs!1692618 m!7378088))

(declare-fun m!7378564 () Bool)

(assert (=> bs!1692618 m!7378564))

(assert (=> bs!1692618 m!7378500))

(assert (=> b!6601979 d!2070776))

(declare-fun bs!1692646 () Bool)

(declare-fun d!2070800 () Bool)

(assert (= bs!1692646 (and d!2070800 d!2070734)))

(declare-fun lambda!368133 () Int)

(assert (=> bs!1692646 (= lambda!368133 lambda!368108)))

(declare-fun b!6602717 () Bool)

(declare-fun e!3995117 () Bool)

(declare-fun e!3995119 () Bool)

(assert (=> b!6602717 (= e!3995117 e!3995119)))

(declare-fun c!1216411 () Bool)

(assert (=> b!6602717 (= c!1216411 (isEmpty!37854 (exprs!6353 (h!72032 zl!343))))))

(declare-fun b!6602718 () Bool)

(declare-fun e!3995120 () Regex!16469)

(assert (=> b!6602718 (= e!3995120 (Concat!25314 (h!72031 (exprs!6353 (h!72032 zl!343))) (generalisedConcat!2066 (t!379359 (exprs!6353 (h!72032 zl!343))))))))

(assert (=> d!2070800 e!3995117))

(declare-fun res!2707338 () Bool)

(assert (=> d!2070800 (=> (not res!2707338) (not e!3995117))))

(declare-fun lt!2413964 () Regex!16469)

(assert (=> d!2070800 (= res!2707338 (validRegex!8205 lt!2413964))))

(declare-fun e!3995118 () Regex!16469)

(assert (=> d!2070800 (= lt!2413964 e!3995118)))

(declare-fun c!1216410 () Bool)

(declare-fun e!3995121 () Bool)

(assert (=> d!2070800 (= c!1216410 e!3995121)))

(declare-fun res!2707337 () Bool)

(assert (=> d!2070800 (=> (not res!2707337) (not e!3995121))))

(assert (=> d!2070800 (= res!2707337 ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343))))))

(assert (=> d!2070800 (forall!15661 (exprs!6353 (h!72032 zl!343)) lambda!368133)))

(assert (=> d!2070800 (= (generalisedConcat!2066 (exprs!6353 (h!72032 zl!343))) lt!2413964)))

(declare-fun b!6602719 () Bool)

(assert (=> b!6602719 (= e!3995121 (isEmpty!37854 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6602720 () Bool)

(assert (=> b!6602720 (= e!3995118 e!3995120)))

(declare-fun c!1216409 () Bool)

(assert (=> b!6602720 (= c!1216409 ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343))))))

(declare-fun b!6602721 () Bool)

(declare-fun e!3995122 () Bool)

(declare-fun isConcat!1370 (Regex!16469) Bool)

(assert (=> b!6602721 (= e!3995122 (isConcat!1370 lt!2413964))))

(declare-fun b!6602722 () Bool)

(declare-fun head!13390 (List!65707) Regex!16469)

(assert (=> b!6602722 (= e!3995122 (= lt!2413964 (head!13390 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6602723 () Bool)

(assert (=> b!6602723 (= e!3995120 EmptyExpr!16469)))

(declare-fun b!6602724 () Bool)

(declare-fun isEmptyExpr!1847 (Regex!16469) Bool)

(assert (=> b!6602724 (= e!3995119 (isEmptyExpr!1847 lt!2413964))))

(declare-fun b!6602725 () Bool)

(assert (=> b!6602725 (= e!3995118 (h!72031 (exprs!6353 (h!72032 zl!343))))))

(declare-fun b!6602726 () Bool)

(assert (=> b!6602726 (= e!3995119 e!3995122)))

(declare-fun c!1216408 () Bool)

(declare-fun tail!12475 (List!65707) List!65707)

(assert (=> b!6602726 (= c!1216408 (isEmpty!37854 (tail!12475 (exprs!6353 (h!72032 zl!343)))))))

(assert (= (and d!2070800 res!2707337) b!6602719))

(assert (= (and d!2070800 c!1216410) b!6602725))

(assert (= (and d!2070800 (not c!1216410)) b!6602720))

(assert (= (and b!6602720 c!1216409) b!6602718))

(assert (= (and b!6602720 (not c!1216409)) b!6602723))

(assert (= (and d!2070800 res!2707338) b!6602717))

(assert (= (and b!6602717 c!1216411) b!6602724))

(assert (= (and b!6602717 (not c!1216411)) b!6602726))

(assert (= (and b!6602726 c!1216408) b!6602722))

(assert (= (and b!6602726 (not c!1216408)) b!6602721))

(assert (=> b!6602718 m!7378080))

(declare-fun m!7378602 () Bool)

(assert (=> b!6602722 m!7378602))

(declare-fun m!7378604 () Bool)

(assert (=> d!2070800 m!7378604))

(declare-fun m!7378606 () Bool)

(assert (=> d!2070800 m!7378606))

(declare-fun m!7378608 () Bool)

(assert (=> b!6602724 m!7378608))

(declare-fun m!7378610 () Bool)

(assert (=> b!6602717 m!7378610))

(declare-fun m!7378612 () Bool)

(assert (=> b!6602721 m!7378612))

(assert (=> b!6602719 m!7377946))

(declare-fun m!7378614 () Bool)

(assert (=> b!6602726 m!7378614))

(assert (=> b!6602726 m!7378614))

(declare-fun m!7378616 () Bool)

(assert (=> b!6602726 m!7378616))

(assert (=> b!6602019 d!2070800))

(declare-fun bs!1692647 () Bool)

(declare-fun d!2070816 () Bool)

(assert (= bs!1692647 (and d!2070816 d!2070734)))

(declare-fun lambda!368136 () Int)

(assert (=> bs!1692647 (= lambda!368136 lambda!368108)))

(declare-fun bs!1692648 () Bool)

(assert (= bs!1692648 (and d!2070816 d!2070800)))

(assert (=> bs!1692648 (= lambda!368136 lambda!368133)))

(declare-fun b!6602747 () Bool)

(declare-fun e!3995140 () Regex!16469)

(assert (=> b!6602747 (= e!3995140 EmptyLang!16469)))

(declare-fun b!6602748 () Bool)

(declare-fun e!3995136 () Bool)

(declare-fun lt!2413967 () Regex!16469)

(declare-fun isUnion!1286 (Regex!16469) Bool)

(assert (=> b!6602748 (= e!3995136 (isUnion!1286 lt!2413967))))

(declare-fun b!6602749 () Bool)

(declare-fun e!3995139 () Bool)

(assert (=> b!6602749 (= e!3995139 (isEmpty!37854 (t!379359 (unfocusZipperList!1890 zl!343))))))

(declare-fun b!6602750 () Bool)

(declare-fun e!3995138 () Bool)

(declare-fun isEmptyLang!1856 (Regex!16469) Bool)

(assert (=> b!6602750 (= e!3995138 (isEmptyLang!1856 lt!2413967))))

(declare-fun b!6602751 () Bool)

(assert (=> b!6602751 (= e!3995140 (Union!16469 (h!72031 (unfocusZipperList!1890 zl!343)) (generalisedUnion!2313 (t!379359 (unfocusZipperList!1890 zl!343)))))))

(declare-fun b!6602752 () Bool)

(declare-fun e!3995137 () Bool)

(assert (=> b!6602752 (= e!3995137 e!3995138)))

(declare-fun c!1216423 () Bool)

(assert (=> b!6602752 (= c!1216423 (isEmpty!37854 (unfocusZipperList!1890 zl!343)))))

(declare-fun b!6602753 () Bool)

(declare-fun e!3995135 () Regex!16469)

(assert (=> b!6602753 (= e!3995135 e!3995140)))

(declare-fun c!1216421 () Bool)

(assert (=> b!6602753 (= c!1216421 ((_ is Cons!65583) (unfocusZipperList!1890 zl!343)))))

(assert (=> d!2070816 e!3995137))

(declare-fun res!2707343 () Bool)

(assert (=> d!2070816 (=> (not res!2707343) (not e!3995137))))

(assert (=> d!2070816 (= res!2707343 (validRegex!8205 lt!2413967))))

(assert (=> d!2070816 (= lt!2413967 e!3995135)))

(declare-fun c!1216420 () Bool)

(assert (=> d!2070816 (= c!1216420 e!3995139)))

(declare-fun res!2707344 () Bool)

(assert (=> d!2070816 (=> (not res!2707344) (not e!3995139))))

(assert (=> d!2070816 (= res!2707344 ((_ is Cons!65583) (unfocusZipperList!1890 zl!343)))))

(assert (=> d!2070816 (forall!15661 (unfocusZipperList!1890 zl!343) lambda!368136)))

(assert (=> d!2070816 (= (generalisedUnion!2313 (unfocusZipperList!1890 zl!343)) lt!2413967)))

(declare-fun b!6602754 () Bool)

(assert (=> b!6602754 (= e!3995136 (= lt!2413967 (head!13390 (unfocusZipperList!1890 zl!343))))))

(declare-fun b!6602755 () Bool)

(assert (=> b!6602755 (= e!3995138 e!3995136)))

(declare-fun c!1216422 () Bool)

(assert (=> b!6602755 (= c!1216422 (isEmpty!37854 (tail!12475 (unfocusZipperList!1890 zl!343))))))

(declare-fun b!6602756 () Bool)

(assert (=> b!6602756 (= e!3995135 (h!72031 (unfocusZipperList!1890 zl!343)))))

(assert (= (and d!2070816 res!2707344) b!6602749))

(assert (= (and d!2070816 c!1216420) b!6602756))

(assert (= (and d!2070816 (not c!1216420)) b!6602753))

(assert (= (and b!6602753 c!1216421) b!6602751))

(assert (= (and b!6602753 (not c!1216421)) b!6602747))

(assert (= (and d!2070816 res!2707343) b!6602752))

(assert (= (and b!6602752 c!1216423) b!6602750))

(assert (= (and b!6602752 (not c!1216423)) b!6602755))

(assert (= (and b!6602755 c!1216422) b!6602754))

(assert (= (and b!6602755 (not c!1216422)) b!6602748))

(assert (=> b!6602752 m!7378044))

(declare-fun m!7378618 () Bool)

(assert (=> b!6602752 m!7378618))

(assert (=> b!6602755 m!7378044))

(declare-fun m!7378620 () Bool)

(assert (=> b!6602755 m!7378620))

(assert (=> b!6602755 m!7378620))

(declare-fun m!7378622 () Bool)

(assert (=> b!6602755 m!7378622))

(declare-fun m!7378624 () Bool)

(assert (=> b!6602751 m!7378624))

(declare-fun m!7378626 () Bool)

(assert (=> d!2070816 m!7378626))

(assert (=> d!2070816 m!7378044))

(declare-fun m!7378628 () Bool)

(assert (=> d!2070816 m!7378628))

(declare-fun m!7378630 () Bool)

(assert (=> b!6602750 m!7378630))

(declare-fun m!7378632 () Bool)

(assert (=> b!6602749 m!7378632))

(declare-fun m!7378634 () Bool)

(assert (=> b!6602748 m!7378634))

(assert (=> b!6602754 m!7378044))

(declare-fun m!7378636 () Bool)

(assert (=> b!6602754 m!7378636))

(assert (=> b!6601998 d!2070816))

(declare-fun bs!1692649 () Bool)

(declare-fun d!2070818 () Bool)

(assert (= bs!1692649 (and d!2070818 d!2070734)))

(declare-fun lambda!368139 () Int)

(assert (=> bs!1692649 (= lambda!368139 lambda!368108)))

(declare-fun bs!1692650 () Bool)

(assert (= bs!1692650 (and d!2070818 d!2070800)))

(assert (=> bs!1692650 (= lambda!368139 lambda!368133)))

(declare-fun bs!1692651 () Bool)

(assert (= bs!1692651 (and d!2070818 d!2070816)))

(assert (=> bs!1692651 (= lambda!368139 lambda!368136)))

(declare-fun lt!2413970 () List!65707)

(assert (=> d!2070818 (forall!15661 lt!2413970 lambda!368139)))

(declare-fun e!3995143 () List!65707)

(assert (=> d!2070818 (= lt!2413970 e!3995143)))

(declare-fun c!1216426 () Bool)

(assert (=> d!2070818 (= c!1216426 ((_ is Cons!65584) zl!343))))

(assert (=> d!2070818 (= (unfocusZipperList!1890 zl!343) lt!2413970)))

(declare-fun b!6602761 () Bool)

(assert (=> b!6602761 (= e!3995143 (Cons!65583 (generalisedConcat!2066 (exprs!6353 (h!72032 zl!343))) (unfocusZipperList!1890 (t!379360 zl!343))))))

(declare-fun b!6602762 () Bool)

(assert (=> b!6602762 (= e!3995143 Nil!65583)))

(assert (= (and d!2070818 c!1216426) b!6602761))

(assert (= (and d!2070818 (not c!1216426)) b!6602762))

(declare-fun m!7378638 () Bool)

(assert (=> d!2070818 m!7378638))

(assert (=> b!6602761 m!7377982))

(declare-fun m!7378640 () Bool)

(assert (=> b!6602761 m!7378640))

(assert (=> b!6601998 d!2070818))

(declare-fun d!2070820 () Bool)

(declare-fun c!1216427 () Bool)

(assert (=> d!2070820 (= c!1216427 (isEmpty!37857 (t!379358 s!2326)))))

(declare-fun e!3995144 () Bool)

(assert (=> d!2070820 (= (matchZipper!2481 lt!2413836 (t!379358 s!2326)) e!3995144)))

(declare-fun b!6602763 () Bool)

(assert (=> b!6602763 (= e!3995144 (nullableZipper!2214 lt!2413836))))

(declare-fun b!6602764 () Bool)

(assert (=> b!6602764 (= e!3995144 (matchZipper!2481 (derivationStepZipper!2435 lt!2413836 (head!13389 (t!379358 s!2326))) (tail!12474 (t!379358 s!2326))))))

(assert (= (and d!2070820 c!1216427) b!6602763))

(assert (= (and d!2070820 (not c!1216427)) b!6602764))

(assert (=> d!2070820 m!7378364))

(declare-fun m!7378642 () Bool)

(assert (=> b!6602763 m!7378642))

(assert (=> b!6602764 m!7378368))

(assert (=> b!6602764 m!7378368))

(declare-fun m!7378644 () Bool)

(assert (=> b!6602764 m!7378644))

(assert (=> b!6602764 m!7378374))

(assert (=> b!6602764 m!7378644))

(assert (=> b!6602764 m!7378374))

(declare-fun m!7378646 () Bool)

(assert (=> b!6602764 m!7378646))

(assert (=> b!6601997 d!2070820))

(declare-fun d!2070822 () Bool)

(declare-fun choose!49292 ((InoxSet Context!11706) Int) (InoxSet Context!11706))

(assert (=> d!2070822 (= (flatMap!1974 lt!2413849 lambda!368073) (choose!49292 lt!2413849 lambda!368073))))

(declare-fun bs!1692652 () Bool)

(assert (= bs!1692652 d!2070822))

(declare-fun m!7378648 () Bool)

(assert (=> bs!1692652 m!7378648))

(assert (=> b!6601978 d!2070822))

(declare-fun bm!577506 () Bool)

(declare-fun call!577511 () (InoxSet Context!11706))

(assert (=> bm!577506 (= call!577511 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 lt!2413843)) (Context!11707 (t!379359 (exprs!6353 lt!2413843))) (h!72030 s!2326)))))

(declare-fun d!2070824 () Bool)

(declare-fun c!1216433 () Bool)

(declare-fun e!3995151 () Bool)

(assert (=> d!2070824 (= c!1216433 e!3995151)))

(declare-fun res!2707347 () Bool)

(assert (=> d!2070824 (=> (not res!2707347) (not e!3995151))))

(assert (=> d!2070824 (= res!2707347 ((_ is Cons!65583) (exprs!6353 lt!2413843)))))

(declare-fun e!3995153 () (InoxSet Context!11706))

(assert (=> d!2070824 (= (derivationStepZipperUp!1643 lt!2413843 (h!72030 s!2326)) e!3995153)))

(declare-fun b!6602775 () Bool)

(assert (=> b!6602775 (= e!3995153 ((_ map or) call!577511 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 lt!2413843))) (h!72030 s!2326))))))

(declare-fun b!6602776 () Bool)

(declare-fun e!3995152 () (InoxSet Context!11706))

(assert (=> b!6602776 (= e!3995152 call!577511)))

(declare-fun b!6602777 () Bool)

(assert (=> b!6602777 (= e!3995151 (nullable!6462 (h!72031 (exprs!6353 lt!2413843))))))

(declare-fun b!6602778 () Bool)

(assert (=> b!6602778 (= e!3995152 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6602779 () Bool)

(assert (=> b!6602779 (= e!3995153 e!3995152)))

(declare-fun c!1216432 () Bool)

(assert (=> b!6602779 (= c!1216432 ((_ is Cons!65583) (exprs!6353 lt!2413843)))))

(assert (= (and d!2070824 res!2707347) b!6602777))

(assert (= (and d!2070824 c!1216433) b!6602775))

(assert (= (and d!2070824 (not c!1216433)) b!6602779))

(assert (= (and b!6602779 c!1216432) b!6602776))

(assert (= (and b!6602779 (not c!1216432)) b!6602778))

(assert (= (or b!6602775 b!6602776) bm!577506))

(declare-fun m!7378650 () Bool)

(assert (=> bm!577506 m!7378650))

(declare-fun m!7378652 () Bool)

(assert (=> b!6602775 m!7378652))

(declare-fun m!7378654 () Bool)

(assert (=> b!6602777 m!7378654))

(assert (=> b!6601978 d!2070824))

(declare-fun d!2070826 () Bool)

(declare-fun dynLambda!26116 (Int Context!11706) (InoxSet Context!11706))

(assert (=> d!2070826 (= (flatMap!1974 lt!2413849 lambda!368073) (dynLambda!26116 lambda!368073 lt!2413843))))

(declare-fun lt!2413973 () Unit!159211)

(declare-fun choose!49293 ((InoxSet Context!11706) Context!11706 Int) Unit!159211)

(assert (=> d!2070826 (= lt!2413973 (choose!49293 lt!2413849 lt!2413843 lambda!368073))))

(assert (=> d!2070826 (= lt!2413849 (store ((as const (Array Context!11706 Bool)) false) lt!2413843 true))))

(assert (=> d!2070826 (= (lemmaFlatMapOnSingletonSet!1500 lt!2413849 lt!2413843 lambda!368073) lt!2413973)))

(declare-fun b_lambda!249877 () Bool)

(assert (=> (not b_lambda!249877) (not d!2070826)))

(declare-fun bs!1692653 () Bool)

(assert (= bs!1692653 d!2070826))

(assert (=> bs!1692653 m!7378012))

(declare-fun m!7378656 () Bool)

(assert (=> bs!1692653 m!7378656))

(declare-fun m!7378658 () Bool)

(assert (=> bs!1692653 m!7378658))

(assert (=> bs!1692653 m!7378008))

(assert (=> b!6601978 d!2070826))

(declare-fun bs!1692654 () Bool)

(declare-fun d!2070828 () Bool)

(assert (= bs!1692654 (and d!2070828 b!6601980)))

(declare-fun lambda!368142 () Int)

(assert (=> bs!1692654 (= lambda!368142 lambda!368073)))

(assert (=> d!2070828 true))

(assert (=> d!2070828 (= (derivationStepZipper!2435 lt!2413849 (h!72030 s!2326)) (flatMap!1974 lt!2413849 lambda!368142))))

(declare-fun bs!1692655 () Bool)

(assert (= bs!1692655 d!2070828))

(declare-fun m!7378660 () Bool)

(assert (=> bs!1692655 m!7378660))

(assert (=> b!6601978 d!2070828))

(declare-fun b!6602800 () Bool)

(declare-fun e!3995169 () Bool)

(declare-fun call!577518 () Bool)

(assert (=> b!6602800 (= e!3995169 call!577518)))

(declare-fun b!6602801 () Bool)

(declare-fun e!3995173 () Bool)

(declare-fun call!577520 () Bool)

(assert (=> b!6602801 (= e!3995173 call!577520)))

(declare-fun bm!577513 () Bool)

(declare-fun call!577519 () Bool)

(assert (=> bm!577513 (= call!577519 call!577520)))

(declare-fun d!2070830 () Bool)

(declare-fun res!2707362 () Bool)

(declare-fun e!3995170 () Bool)

(assert (=> d!2070830 (=> res!2707362 e!3995170)))

(assert (=> d!2070830 (= res!2707362 ((_ is ElementMatch!16469) r!7292))))

(assert (=> d!2070830 (= (validRegex!8205 r!7292) e!3995170)))

(declare-fun b!6602802 () Bool)

(declare-fun e!3995172 () Bool)

(assert (=> b!6602802 (= e!3995172 e!3995173)))

(declare-fun res!2707360 () Bool)

(assert (=> b!6602802 (= res!2707360 (not (nullable!6462 (reg!16798 r!7292))))))

(assert (=> b!6602802 (=> (not res!2707360) (not e!3995173))))

(declare-fun b!6602803 () Bool)

(declare-fun e!3995174 () Bool)

(declare-fun e!3995168 () Bool)

(assert (=> b!6602803 (= e!3995174 e!3995168)))

(declare-fun res!2707359 () Bool)

(assert (=> b!6602803 (=> (not res!2707359) (not e!3995168))))

(assert (=> b!6602803 (= res!2707359 call!577519)))

(declare-fun b!6602804 () Bool)

(declare-fun res!2707358 () Bool)

(assert (=> b!6602804 (=> res!2707358 e!3995174)))

(assert (=> b!6602804 (= res!2707358 (not ((_ is Concat!25314) r!7292)))))

(declare-fun e!3995171 () Bool)

(assert (=> b!6602804 (= e!3995171 e!3995174)))

(declare-fun bm!577514 () Bool)

(declare-fun c!1216441 () Bool)

(declare-fun c!1216440 () Bool)

(assert (=> bm!577514 (= call!577520 (validRegex!8205 (ite c!1216440 (reg!16798 r!7292) (ite c!1216441 (regOne!33451 r!7292) (regOne!33450 r!7292)))))))

(declare-fun bm!577515 () Bool)

(assert (=> bm!577515 (= call!577518 (validRegex!8205 (ite c!1216441 (regTwo!33451 r!7292) (regTwo!33450 r!7292))))))

(declare-fun b!6602805 () Bool)

(assert (=> b!6602805 (= e!3995172 e!3995171)))

(assert (=> b!6602805 (= c!1216441 ((_ is Union!16469) r!7292))))

(declare-fun b!6602806 () Bool)

(declare-fun res!2707361 () Bool)

(assert (=> b!6602806 (=> (not res!2707361) (not e!3995169))))

(assert (=> b!6602806 (= res!2707361 call!577519)))

(assert (=> b!6602806 (= e!3995171 e!3995169)))

(declare-fun b!6602807 () Bool)

(assert (=> b!6602807 (= e!3995168 call!577518)))

(declare-fun b!6602808 () Bool)

(assert (=> b!6602808 (= e!3995170 e!3995172)))

(assert (=> b!6602808 (= c!1216440 ((_ is Star!16469) r!7292))))

(assert (= (and d!2070830 (not res!2707362)) b!6602808))

(assert (= (and b!6602808 c!1216440) b!6602802))

(assert (= (and b!6602808 (not c!1216440)) b!6602805))

(assert (= (and b!6602802 res!2707360) b!6602801))

(assert (= (and b!6602805 c!1216441) b!6602806))

(assert (= (and b!6602805 (not c!1216441)) b!6602804))

(assert (= (and b!6602806 res!2707361) b!6602800))

(assert (= (and b!6602804 (not res!2707358)) b!6602803))

(assert (= (and b!6602803 res!2707359) b!6602807))

(assert (= (or b!6602800 b!6602807) bm!577515))

(assert (= (or b!6602806 b!6602803) bm!577513))

(assert (= (or b!6602801 bm!577513) bm!577514))

(declare-fun m!7378662 () Bool)

(assert (=> b!6602802 m!7378662))

(declare-fun m!7378664 () Bool)

(assert (=> bm!577514 m!7378664))

(declare-fun m!7378666 () Bool)

(assert (=> bm!577515 m!7378666))

(assert (=> start!645542 d!2070830))

(declare-fun d!2070832 () Bool)

(declare-fun choose!49294 (Int) Bool)

(assert (=> d!2070832 (= (Exists!3539 lambda!368072) (choose!49294 lambda!368072))))

(declare-fun bs!1692656 () Bool)

(assert (= bs!1692656 d!2070832))

(declare-fun m!7378668 () Bool)

(assert (=> bs!1692656 m!7378668))

(assert (=> b!6602010 d!2070832))

(declare-fun bs!1692657 () Bool)

(declare-fun d!2070834 () Bool)

(assert (= bs!1692657 (and d!2070834 b!6602010)))

(declare-fun lambda!368145 () Int)

(assert (=> bs!1692657 (= lambda!368145 lambda!368071)))

(assert (=> bs!1692657 (not (= lambda!368145 lambda!368072))))

(declare-fun bs!1692658 () Bool)

(assert (= bs!1692658 (and d!2070834 b!6601988)))

(assert (=> bs!1692658 (= (and (= s!2326 Nil!65582) (= (regOne!33450 r!7292) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 r!7292) lt!2413840)) (= lambda!368145 lambda!368074))))

(assert (=> bs!1692658 (not (= lambda!368145 lambda!368075))))

(assert (=> d!2070834 true))

(assert (=> d!2070834 true))

(assert (=> d!2070834 true))

(assert (=> d!2070834 (= (isDefined!13063 (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) Nil!65582 s!2326 s!2326)) (Exists!3539 lambda!368145))))

(declare-fun lt!2413976 () Unit!159211)

(declare-fun choose!49295 (Regex!16469 Regex!16469 List!65706) Unit!159211)

(assert (=> d!2070834 (= lt!2413976 (choose!49295 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326))))

(assert (=> d!2070834 (validRegex!8205 (regOne!33450 r!7292))))

(assert (=> d!2070834 (= (lemmaFindConcatSeparationEquivalentToExists!2538 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326) lt!2413976)))

(declare-fun bs!1692659 () Bool)

(assert (= bs!1692659 d!2070834))

(declare-fun m!7378670 () Bool)

(assert (=> bs!1692659 m!7378670))

(declare-fun m!7378672 () Bool)

(assert (=> bs!1692659 m!7378672))

(declare-fun m!7378674 () Bool)

(assert (=> bs!1692659 m!7378674))

(assert (=> bs!1692659 m!7378062))

(assert (=> bs!1692659 m!7378062))

(assert (=> bs!1692659 m!7378064))

(assert (=> b!6602010 d!2070834))

(declare-fun b!6602831 () Bool)

(declare-fun lt!2413983 () Unit!159211)

(declare-fun lt!2413985 () Unit!159211)

(assert (=> b!6602831 (= lt!2413983 lt!2413985)))

(declare-fun ++!14615 (List!65706 List!65706) List!65706)

(assert (=> b!6602831 (= (++!14615 (++!14615 Nil!65582 (Cons!65582 (h!72030 s!2326) Nil!65582)) (t!379358 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2612 (List!65706 C!33208 List!65706 List!65706) Unit!159211)

(assert (=> b!6602831 (= lt!2413985 (lemmaMoveElementToOtherListKeepsConcatEq!2612 Nil!65582 (h!72030 s!2326) (t!379358 s!2326) s!2326))))

(declare-fun e!3995191 () Option!16360)

(assert (=> b!6602831 (= e!3995191 (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) (++!14615 Nil!65582 (Cons!65582 (h!72030 s!2326) Nil!65582)) (t!379358 s!2326) s!2326))))

(declare-fun b!6602832 () Bool)

(declare-fun e!3995189 () Option!16360)

(assert (=> b!6602832 (= e!3995189 (Some!16359 (tuple2!66897 Nil!65582 s!2326)))))

(declare-fun b!6602833 () Bool)

(declare-fun res!2707381 () Bool)

(declare-fun e!3995190 () Bool)

(assert (=> b!6602833 (=> (not res!2707381) (not e!3995190))))

(declare-fun lt!2413984 () Option!16360)

(declare-fun get!22785 (Option!16360) tuple2!66896)

(assert (=> b!6602833 (= res!2707381 (matchR!8652 (regTwo!33450 r!7292) (_2!36751 (get!22785 lt!2413984))))))

(declare-fun b!6602834 () Bool)

(declare-fun res!2707380 () Bool)

(assert (=> b!6602834 (=> (not res!2707380) (not e!3995190))))

(assert (=> b!6602834 (= res!2707380 (matchR!8652 (regOne!33450 r!7292) (_1!36751 (get!22785 lt!2413984))))))

(declare-fun d!2070836 () Bool)

(declare-fun e!3995188 () Bool)

(assert (=> d!2070836 e!3995188))

(declare-fun res!2707378 () Bool)

(assert (=> d!2070836 (=> res!2707378 e!3995188)))

(assert (=> d!2070836 (= res!2707378 e!3995190)))

(declare-fun res!2707379 () Bool)

(assert (=> d!2070836 (=> (not res!2707379) (not e!3995190))))

(assert (=> d!2070836 (= res!2707379 (isDefined!13063 lt!2413984))))

(assert (=> d!2070836 (= lt!2413984 e!3995189)))

(declare-fun c!1216447 () Bool)

(declare-fun e!3995187 () Bool)

(assert (=> d!2070836 (= c!1216447 e!3995187)))

(declare-fun res!2707377 () Bool)

(assert (=> d!2070836 (=> (not res!2707377) (not e!3995187))))

(assert (=> d!2070836 (= res!2707377 (matchR!8652 (regOne!33450 r!7292) Nil!65582))))

(assert (=> d!2070836 (validRegex!8205 (regOne!33450 r!7292))))

(assert (=> d!2070836 (= (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) Nil!65582 s!2326 s!2326) lt!2413984)))

(declare-fun b!6602835 () Bool)

(assert (=> b!6602835 (= e!3995187 (matchR!8652 (regTwo!33450 r!7292) s!2326))))

(declare-fun b!6602836 () Bool)

(assert (=> b!6602836 (= e!3995188 (not (isDefined!13063 lt!2413984)))))

(declare-fun b!6602837 () Bool)

(assert (=> b!6602837 (= e!3995191 None!16359)))

(declare-fun b!6602838 () Bool)

(assert (=> b!6602838 (= e!3995189 e!3995191)))

(declare-fun c!1216446 () Bool)

(assert (=> b!6602838 (= c!1216446 ((_ is Nil!65582) s!2326))))

(declare-fun b!6602839 () Bool)

(assert (=> b!6602839 (= e!3995190 (= (++!14615 (_1!36751 (get!22785 lt!2413984)) (_2!36751 (get!22785 lt!2413984))) s!2326))))

(assert (= (and d!2070836 res!2707377) b!6602835))

(assert (= (and d!2070836 c!1216447) b!6602832))

(assert (= (and d!2070836 (not c!1216447)) b!6602838))

(assert (= (and b!6602838 c!1216446) b!6602837))

(assert (= (and b!6602838 (not c!1216446)) b!6602831))

(assert (= (and d!2070836 res!2707379) b!6602834))

(assert (= (and b!6602834 res!2707380) b!6602833))

(assert (= (and b!6602833 res!2707381) b!6602839))

(assert (= (and d!2070836 (not res!2707378)) b!6602836))

(assert (=> b!6602835 m!7378084))

(declare-fun m!7378676 () Bool)

(assert (=> b!6602833 m!7378676))

(declare-fun m!7378678 () Bool)

(assert (=> b!6602833 m!7378678))

(declare-fun m!7378680 () Bool)

(assert (=> d!2070836 m!7378680))

(declare-fun m!7378682 () Bool)

(assert (=> d!2070836 m!7378682))

(assert (=> d!2070836 m!7378674))

(declare-fun m!7378684 () Bool)

(assert (=> b!6602831 m!7378684))

(assert (=> b!6602831 m!7378684))

(declare-fun m!7378686 () Bool)

(assert (=> b!6602831 m!7378686))

(declare-fun m!7378688 () Bool)

(assert (=> b!6602831 m!7378688))

(assert (=> b!6602831 m!7378684))

(declare-fun m!7378690 () Bool)

(assert (=> b!6602831 m!7378690))

(assert (=> b!6602834 m!7378676))

(declare-fun m!7378692 () Bool)

(assert (=> b!6602834 m!7378692))

(assert (=> b!6602839 m!7378676))

(declare-fun m!7378694 () Bool)

(assert (=> b!6602839 m!7378694))

(assert (=> b!6602836 m!7378680))

(assert (=> b!6602010 d!2070836))

(declare-fun d!2070838 () Bool)

(assert (=> d!2070838 (= (Exists!3539 lambda!368071) (choose!49294 lambda!368071))))

(declare-fun bs!1692660 () Bool)

(assert (= bs!1692660 d!2070838))

(declare-fun m!7378696 () Bool)

(assert (=> bs!1692660 m!7378696))

(assert (=> b!6602010 d!2070838))

(declare-fun bs!1692661 () Bool)

(declare-fun d!2070840 () Bool)

(assert (= bs!1692661 (and d!2070840 d!2070834)))

(declare-fun lambda!368150 () Int)

(assert (=> bs!1692661 (= lambda!368150 lambda!368145)))

(declare-fun bs!1692662 () Bool)

(assert (= bs!1692662 (and d!2070840 b!6601988)))

(assert (=> bs!1692662 (not (= lambda!368150 lambda!368075))))

(declare-fun bs!1692663 () Bool)

(assert (= bs!1692663 (and d!2070840 b!6602010)))

(assert (=> bs!1692663 (= lambda!368150 lambda!368071)))

(assert (=> bs!1692663 (not (= lambda!368150 lambda!368072))))

(assert (=> bs!1692662 (= (and (= s!2326 Nil!65582) (= (regOne!33450 r!7292) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 r!7292) lt!2413840)) (= lambda!368150 lambda!368074))))

(assert (=> d!2070840 true))

(assert (=> d!2070840 true))

(assert (=> d!2070840 true))

(declare-fun lambda!368151 () Int)

(assert (=> bs!1692661 (not (= lambda!368151 lambda!368145))))

(assert (=> bs!1692662 (= (and (= s!2326 Nil!65582) (= (regOne!33450 r!7292) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 r!7292) lt!2413840)) (= lambda!368151 lambda!368075))))

(declare-fun bs!1692664 () Bool)

(assert (= bs!1692664 d!2070840))

(assert (=> bs!1692664 (not (= lambda!368151 lambda!368150))))

(assert (=> bs!1692663 (not (= lambda!368151 lambda!368071))))

(assert (=> bs!1692663 (= lambda!368151 lambda!368072)))

(assert (=> bs!1692662 (not (= lambda!368151 lambda!368074))))

(assert (=> d!2070840 true))

(assert (=> d!2070840 true))

(assert (=> d!2070840 true))

(assert (=> d!2070840 (= (Exists!3539 lambda!368150) (Exists!3539 lambda!368151))))

(declare-fun lt!2413988 () Unit!159211)

(declare-fun choose!49296 (Regex!16469 Regex!16469 List!65706) Unit!159211)

(assert (=> d!2070840 (= lt!2413988 (choose!49296 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326))))

(assert (=> d!2070840 (validRegex!8205 (regOne!33450 r!7292))))

(assert (=> d!2070840 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2076 (regOne!33450 r!7292) (regTwo!33450 r!7292) s!2326) lt!2413988)))

(declare-fun m!7378698 () Bool)

(assert (=> bs!1692664 m!7378698))

(declare-fun m!7378700 () Bool)

(assert (=> bs!1692664 m!7378700))

(declare-fun m!7378702 () Bool)

(assert (=> bs!1692664 m!7378702))

(assert (=> bs!1692664 m!7378674))

(assert (=> b!6602010 d!2070840))

(declare-fun d!2070842 () Bool)

(declare-fun isEmpty!37858 (Option!16360) Bool)

(assert (=> d!2070842 (= (isDefined!13063 (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) Nil!65582 s!2326 s!2326)) (not (isEmpty!37858 (findConcatSeparation!2774 (regOne!33450 r!7292) (regTwo!33450 r!7292) Nil!65582 s!2326 s!2326))))))

(declare-fun bs!1692665 () Bool)

(assert (= bs!1692665 d!2070842))

(assert (=> bs!1692665 m!7378062))

(declare-fun m!7378704 () Bool)

(assert (=> bs!1692665 m!7378704))

(assert (=> b!6602010 d!2070842))

(declare-fun d!2070844 () Bool)

(declare-fun lt!2413991 () Regex!16469)

(assert (=> d!2070844 (validRegex!8205 lt!2413991)))

(assert (=> d!2070844 (= lt!2413991 (generalisedUnion!2313 (unfocusZipperList!1890 (Cons!65584 lt!2413843 Nil!65584))))))

(assert (=> d!2070844 (= (unfocusZipper!2211 (Cons!65584 lt!2413843 Nil!65584)) lt!2413991)))

(declare-fun bs!1692666 () Bool)

(assert (= bs!1692666 d!2070844))

(declare-fun m!7378706 () Bool)

(assert (=> bs!1692666 m!7378706))

(declare-fun m!7378708 () Bool)

(assert (=> bs!1692666 m!7378708))

(assert (=> bs!1692666 m!7378708))

(declare-fun m!7378710 () Bool)

(assert (=> bs!1692666 m!7378710))

(assert (=> b!6601994 d!2070844))

(declare-fun d!2070846 () Bool)

(declare-fun lt!2413992 () Regex!16469)

(assert (=> d!2070846 (validRegex!8205 lt!2413992)))

(assert (=> d!2070846 (= lt!2413992 (generalisedUnion!2313 (unfocusZipperList!1890 (Cons!65584 lt!2413831 Nil!65584))))))

(assert (=> d!2070846 (= (unfocusZipper!2211 (Cons!65584 lt!2413831 Nil!65584)) lt!2413992)))

(declare-fun bs!1692667 () Bool)

(assert (= bs!1692667 d!2070846))

(declare-fun m!7378712 () Bool)

(assert (=> bs!1692667 m!7378712))

(declare-fun m!7378714 () Bool)

(assert (=> bs!1692667 m!7378714))

(assert (=> bs!1692667 m!7378714))

(declare-fun m!7378716 () Bool)

(assert (=> bs!1692667 m!7378716))

(assert (=> b!6602014 d!2070846))

(declare-fun bs!1692668 () Bool)

(declare-fun d!2070848 () Bool)

(assert (= bs!1692668 (and d!2070848 b!6601980)))

(declare-fun lambda!368152 () Int)

(assert (=> bs!1692668 (= lambda!368152 lambda!368073)))

(declare-fun bs!1692669 () Bool)

(assert (= bs!1692669 (and d!2070848 d!2070828)))

(assert (=> bs!1692669 (= lambda!368152 lambda!368142)))

(assert (=> d!2070848 true))

(assert (=> d!2070848 (= (derivationStepZipper!2435 lt!2413844 (h!72030 s!2326)) (flatMap!1974 lt!2413844 lambda!368152))))

(declare-fun bs!1692670 () Bool)

(assert (= bs!1692670 d!2070848))

(declare-fun m!7378718 () Bool)

(assert (=> bs!1692670 m!7378718))

(assert (=> b!6602013 d!2070848))

(declare-fun d!2070850 () Bool)

(assert (=> d!2070850 (= (flatMap!1974 lt!2413844 lambda!368073) (choose!49292 lt!2413844 lambda!368073))))

(declare-fun bs!1692671 () Bool)

(assert (= bs!1692671 d!2070850))

(declare-fun m!7378720 () Bool)

(assert (=> bs!1692671 m!7378720))

(assert (=> b!6602013 d!2070850))

(declare-fun bm!577516 () Bool)

(declare-fun call!577521 () (InoxSet Context!11706))

(assert (=> bm!577516 (= call!577521 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 lt!2413850)) (Context!11707 (t!379359 (exprs!6353 lt!2413850))) (h!72030 s!2326)))))

(declare-fun d!2070852 () Bool)

(declare-fun c!1216449 () Bool)

(declare-fun e!3995196 () Bool)

(assert (=> d!2070852 (= c!1216449 e!3995196)))

(declare-fun res!2707390 () Bool)

(assert (=> d!2070852 (=> (not res!2707390) (not e!3995196))))

(assert (=> d!2070852 (= res!2707390 ((_ is Cons!65583) (exprs!6353 lt!2413850)))))

(declare-fun e!3995198 () (InoxSet Context!11706))

(assert (=> d!2070852 (= (derivationStepZipperUp!1643 lt!2413850 (h!72030 s!2326)) e!3995198)))

(declare-fun b!6602848 () Bool)

(assert (=> b!6602848 (= e!3995198 ((_ map or) call!577521 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 lt!2413850))) (h!72030 s!2326))))))

(declare-fun b!6602849 () Bool)

(declare-fun e!3995197 () (InoxSet Context!11706))

(assert (=> b!6602849 (= e!3995197 call!577521)))

(declare-fun b!6602850 () Bool)

(assert (=> b!6602850 (= e!3995196 (nullable!6462 (h!72031 (exprs!6353 lt!2413850))))))

(declare-fun b!6602851 () Bool)

(assert (=> b!6602851 (= e!3995197 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6602852 () Bool)

(assert (=> b!6602852 (= e!3995198 e!3995197)))

(declare-fun c!1216448 () Bool)

(assert (=> b!6602852 (= c!1216448 ((_ is Cons!65583) (exprs!6353 lt!2413850)))))

(assert (= (and d!2070852 res!2707390) b!6602850))

(assert (= (and d!2070852 c!1216449) b!6602848))

(assert (= (and d!2070852 (not c!1216449)) b!6602852))

(assert (= (and b!6602852 c!1216448) b!6602849))

(assert (= (and b!6602852 (not c!1216448)) b!6602851))

(assert (= (or b!6602848 b!6602849) bm!577516))

(declare-fun m!7378722 () Bool)

(assert (=> bm!577516 m!7378722))

(declare-fun m!7378724 () Bool)

(assert (=> b!6602848 m!7378724))

(declare-fun m!7378726 () Bool)

(assert (=> b!6602850 m!7378726))

(assert (=> b!6602013 d!2070852))

(declare-fun d!2070854 () Bool)

(assert (=> d!2070854 (= (flatMap!1974 lt!2413844 lambda!368073) (dynLambda!26116 lambda!368073 lt!2413850))))

(declare-fun lt!2413993 () Unit!159211)

(assert (=> d!2070854 (= lt!2413993 (choose!49293 lt!2413844 lt!2413850 lambda!368073))))

(assert (=> d!2070854 (= lt!2413844 (store ((as const (Array Context!11706 Bool)) false) lt!2413850 true))))

(assert (=> d!2070854 (= (lemmaFlatMapOnSingletonSet!1500 lt!2413844 lt!2413850 lambda!368073) lt!2413993)))

(declare-fun b_lambda!249879 () Bool)

(assert (=> (not b_lambda!249879) (not d!2070854)))

(declare-fun bs!1692672 () Bool)

(assert (= bs!1692672 d!2070854))

(assert (=> bs!1692672 m!7377992))

(declare-fun m!7378728 () Bool)

(assert (=> bs!1692672 m!7378728))

(declare-fun m!7378730 () Bool)

(assert (=> bs!1692672 m!7378730))

(assert (=> bs!1692672 m!7377990))

(assert (=> b!6602013 d!2070854))

(declare-fun d!2070856 () Bool)

(assert (=> d!2070856 (= (isEmpty!37853 (t!379360 zl!343)) ((_ is Nil!65584) (t!379360 zl!343)))))

(assert (=> b!6601992 d!2070856))

(assert (=> b!6601986 d!2070728))

(declare-fun d!2070858 () Bool)

(declare-fun lt!2413994 () Regex!16469)

(assert (=> d!2070858 (validRegex!8205 lt!2413994)))

(assert (=> d!2070858 (= lt!2413994 (generalisedUnion!2313 (unfocusZipperList!1890 zl!343)))))

(assert (=> d!2070858 (= (unfocusZipper!2211 zl!343) lt!2413994)))

(declare-fun bs!1692673 () Bool)

(assert (= bs!1692673 d!2070858))

(declare-fun m!7378732 () Bool)

(assert (=> bs!1692673 m!7378732))

(assert (=> bs!1692673 m!7378044))

(assert (=> bs!1692673 m!7378044))

(assert (=> bs!1692673 m!7378046))

(assert (=> b!6602006 d!2070858))

(declare-fun b!6602859 () Bool)

(assert (=> b!6602859 true))

(declare-fun bs!1692674 () Bool)

(declare-fun b!6602861 () Bool)

(assert (= bs!1692674 (and b!6602861 b!6602859)))

(declare-fun lt!2414004 () Int)

(declare-fun lambda!368160 () Int)

(declare-fun lt!2414006 () Int)

(declare-fun lambda!368161 () Int)

(assert (=> bs!1692674 (= (= lt!2414004 lt!2414006) (= lambda!368161 lambda!368160))))

(assert (=> b!6602861 true))

(declare-fun d!2070860 () Bool)

(declare-fun e!3995204 () Bool)

(assert (=> d!2070860 e!3995204))

(declare-fun res!2707393 () Bool)

(assert (=> d!2070860 (=> (not res!2707393) (not e!3995204))))

(assert (=> d!2070860 (= res!2707393 (>= lt!2414004 0))))

(declare-fun e!3995203 () Int)

(assert (=> d!2070860 (= lt!2414004 e!3995203)))

(declare-fun c!1216458 () Bool)

(assert (=> d!2070860 (= c!1216458 ((_ is Cons!65584) zl!343))))

(assert (=> d!2070860 (= (zipperDepth!406 zl!343) lt!2414004)))

(assert (=> b!6602859 (= e!3995203 lt!2414006)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!295 (Context!11706) Int)

(assert (=> b!6602859 (= lt!2414006 (maxBigInt!0 (contextDepth!295 (h!72032 zl!343)) (zipperDepth!406 (t!379360 zl!343))))))

(declare-fun lt!2414003 () Unit!159211)

(declare-fun lambda!368159 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!279 (List!65708 Int Int Int) Unit!159211)

(assert (=> b!6602859 (= lt!2414003 (lemmaForallContextDepthBiggerThanTransitive!279 (t!379360 zl!343) lt!2414006 (zipperDepth!406 (t!379360 zl!343)) lambda!368159))))

(declare-fun forall!15663 (List!65708 Int) Bool)

(assert (=> b!6602859 (forall!15663 (t!379360 zl!343) lambda!368160)))

(declare-fun lt!2414005 () Unit!159211)

(assert (=> b!6602859 (= lt!2414005 lt!2414003)))

(declare-fun b!6602860 () Bool)

(assert (=> b!6602860 (= e!3995203 0)))

(assert (=> b!6602861 (= e!3995204 (forall!15663 zl!343 lambda!368161))))

(assert (= (and d!2070860 c!1216458) b!6602859))

(assert (= (and d!2070860 (not c!1216458)) b!6602860))

(assert (= (and d!2070860 res!2707393) b!6602861))

(declare-fun m!7378734 () Bool)

(assert (=> b!6602859 m!7378734))

(assert (=> b!6602859 m!7378734))

(declare-fun m!7378736 () Bool)

(assert (=> b!6602859 m!7378736))

(declare-fun m!7378738 () Bool)

(assert (=> b!6602859 m!7378738))

(assert (=> b!6602859 m!7378734))

(declare-fun m!7378740 () Bool)

(assert (=> b!6602859 m!7378740))

(declare-fun m!7378742 () Bool)

(assert (=> b!6602859 m!7378742))

(assert (=> b!6602859 m!7378738))

(declare-fun m!7378744 () Bool)

(assert (=> b!6602861 m!7378744))

(assert (=> b!6601985 d!2070860))

(declare-fun bs!1692675 () Bool)

(declare-fun b!6602864 () Bool)

(assert (= bs!1692675 (and b!6602864 b!6602859)))

(declare-fun lambda!368162 () Int)

(assert (=> bs!1692675 (= lambda!368162 lambda!368159)))

(declare-fun lambda!368163 () Int)

(declare-fun lt!2414010 () Int)

(assert (=> bs!1692675 (= (= lt!2414010 lt!2414006) (= lambda!368163 lambda!368160))))

(declare-fun bs!1692676 () Bool)

(assert (= bs!1692676 (and b!6602864 b!6602861)))

(assert (=> bs!1692676 (= (= lt!2414010 lt!2414004) (= lambda!368163 lambda!368161))))

(assert (=> b!6602864 true))

(declare-fun bs!1692677 () Bool)

(declare-fun b!6602866 () Bool)

(assert (= bs!1692677 (and b!6602866 b!6602859)))

(declare-fun lambda!368164 () Int)

(declare-fun lt!2414008 () Int)

(assert (=> bs!1692677 (= (= lt!2414008 lt!2414006) (= lambda!368164 lambda!368160))))

(declare-fun bs!1692678 () Bool)

(assert (= bs!1692678 (and b!6602866 b!6602861)))

(assert (=> bs!1692678 (= (= lt!2414008 lt!2414004) (= lambda!368164 lambda!368161))))

(declare-fun bs!1692679 () Bool)

(assert (= bs!1692679 (and b!6602866 b!6602864)))

(assert (=> bs!1692679 (= (= lt!2414008 lt!2414010) (= lambda!368164 lambda!368163))))

(assert (=> b!6602866 true))

(declare-fun d!2070862 () Bool)

(declare-fun e!3995206 () Bool)

(assert (=> d!2070862 e!3995206))

(declare-fun res!2707394 () Bool)

(assert (=> d!2070862 (=> (not res!2707394) (not e!3995206))))

(assert (=> d!2070862 (= res!2707394 (>= lt!2414008 0))))

(declare-fun e!3995205 () Int)

(assert (=> d!2070862 (= lt!2414008 e!3995205)))

(declare-fun c!1216459 () Bool)

(assert (=> d!2070862 (= c!1216459 ((_ is Cons!65584) lt!2413838))))

(assert (=> d!2070862 (= (zipperDepth!406 lt!2413838) lt!2414008)))

(assert (=> b!6602864 (= e!3995205 lt!2414010)))

(assert (=> b!6602864 (= lt!2414010 (maxBigInt!0 (contextDepth!295 (h!72032 lt!2413838)) (zipperDepth!406 (t!379360 lt!2413838))))))

(declare-fun lt!2414007 () Unit!159211)

(assert (=> b!6602864 (= lt!2414007 (lemmaForallContextDepthBiggerThanTransitive!279 (t!379360 lt!2413838) lt!2414010 (zipperDepth!406 (t!379360 lt!2413838)) lambda!368162))))

(assert (=> b!6602864 (forall!15663 (t!379360 lt!2413838) lambda!368163)))

(declare-fun lt!2414009 () Unit!159211)

(assert (=> b!6602864 (= lt!2414009 lt!2414007)))

(declare-fun b!6602865 () Bool)

(assert (=> b!6602865 (= e!3995205 0)))

(assert (=> b!6602866 (= e!3995206 (forall!15663 lt!2413838 lambda!368164))))

(assert (= (and d!2070862 c!1216459) b!6602864))

(assert (= (and d!2070862 (not c!1216459)) b!6602865))

(assert (= (and d!2070862 res!2707394) b!6602866))

(declare-fun m!7378746 () Bool)

(assert (=> b!6602864 m!7378746))

(assert (=> b!6602864 m!7378746))

(declare-fun m!7378748 () Bool)

(assert (=> b!6602864 m!7378748))

(declare-fun m!7378750 () Bool)

(assert (=> b!6602864 m!7378750))

(assert (=> b!6602864 m!7378746))

(declare-fun m!7378752 () Bool)

(assert (=> b!6602864 m!7378752))

(declare-fun m!7378754 () Bool)

(assert (=> b!6602864 m!7378754))

(assert (=> b!6602864 m!7378750))

(declare-fun m!7378756 () Bool)

(assert (=> b!6602866 m!7378756))

(assert (=> b!6601985 d!2070862))

(declare-fun bs!1692680 () Bool)

(declare-fun b!6602900 () Bool)

(assert (= bs!1692680 (and b!6602900 d!2070834)))

(declare-fun lambda!368169 () Int)

(assert (=> bs!1692680 (not (= lambda!368169 lambda!368145))))

(declare-fun bs!1692681 () Bool)

(assert (= bs!1692681 (and b!6602900 b!6601988)))

(assert (=> bs!1692681 (not (= lambda!368169 lambda!368075))))

(declare-fun bs!1692682 () Bool)

(assert (= bs!1692682 (and b!6602900 d!2070840)))

(assert (=> bs!1692682 (not (= lambda!368169 lambda!368150))))

(declare-fun bs!1692683 () Bool)

(assert (= bs!1692683 (and b!6602900 b!6602010)))

(assert (=> bs!1692683 (not (= lambda!368169 lambda!368071))))

(assert (=> bs!1692681 (not (= lambda!368169 lambda!368074))))

(assert (=> bs!1692682 (not (= lambda!368169 lambda!368151))))

(assert (=> bs!1692683 (not (= lambda!368169 lambda!368072))))

(assert (=> b!6602900 true))

(assert (=> b!6602900 true))

(declare-fun bs!1692684 () Bool)

(declare-fun b!6602909 () Bool)

(assert (= bs!1692684 (and b!6602909 b!6602900)))

(declare-fun lambda!368170 () Int)

(assert (=> bs!1692684 (not (= lambda!368170 lambda!368169))))

(declare-fun bs!1692685 () Bool)

(assert (= bs!1692685 (and b!6602909 d!2070834)))

(assert (=> bs!1692685 (not (= lambda!368170 lambda!368145))))

(declare-fun bs!1692686 () Bool)

(assert (= bs!1692686 (and b!6602909 b!6601988)))

(assert (=> bs!1692686 (= (and (= s!2326 Nil!65582) (= (regOne!33450 r!7292) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 r!7292) lt!2413840)) (= lambda!368170 lambda!368075))))

(declare-fun bs!1692687 () Bool)

(assert (= bs!1692687 (and b!6602909 d!2070840)))

(assert (=> bs!1692687 (not (= lambda!368170 lambda!368150))))

(declare-fun bs!1692688 () Bool)

(assert (= bs!1692688 (and b!6602909 b!6602010)))

(assert (=> bs!1692688 (not (= lambda!368170 lambda!368071))))

(assert (=> bs!1692686 (not (= lambda!368170 lambda!368074))))

(assert (=> bs!1692687 (= lambda!368170 lambda!368151)))

(assert (=> bs!1692688 (= lambda!368170 lambda!368072)))

(assert (=> b!6602909 true))

(assert (=> b!6602909 true))

(declare-fun b!6602899 () Bool)

(declare-fun e!3995231 () Bool)

(assert (=> b!6602899 (= e!3995231 (matchRSpec!3570 (regTwo!33451 r!7292) s!2326))))

(declare-fun e!3995230 () Bool)

(declare-fun call!577526 () Bool)

(assert (=> b!6602900 (= e!3995230 call!577526)))

(declare-fun b!6602901 () Bool)

(declare-fun c!1216471 () Bool)

(assert (=> b!6602901 (= c!1216471 ((_ is Union!16469) r!7292))))

(declare-fun e!3995225 () Bool)

(declare-fun e!3995226 () Bool)

(assert (=> b!6602901 (= e!3995225 e!3995226)))

(declare-fun bm!577521 () Bool)

(declare-fun call!577527 () Bool)

(assert (=> bm!577521 (= call!577527 (isEmpty!37857 s!2326))))

(declare-fun b!6602902 () Bool)

(declare-fun res!2707413 () Bool)

(assert (=> b!6602902 (=> res!2707413 e!3995230)))

(assert (=> b!6602902 (= res!2707413 call!577527)))

(declare-fun e!3995227 () Bool)

(assert (=> b!6602902 (= e!3995227 e!3995230)))

(declare-fun b!6602903 () Bool)

(assert (=> b!6602903 (= e!3995226 e!3995231)))

(declare-fun res!2707411 () Bool)

(assert (=> b!6602903 (= res!2707411 (matchRSpec!3570 (regOne!33451 r!7292) s!2326))))

(assert (=> b!6602903 (=> res!2707411 e!3995231)))

(declare-fun b!6602904 () Bool)

(declare-fun c!1216469 () Bool)

(assert (=> b!6602904 (= c!1216469 ((_ is ElementMatch!16469) r!7292))))

(declare-fun e!3995229 () Bool)

(assert (=> b!6602904 (= e!3995229 e!3995225)))

(declare-fun bm!577522 () Bool)

(declare-fun c!1216468 () Bool)

(assert (=> bm!577522 (= call!577526 (Exists!3539 (ite c!1216468 lambda!368169 lambda!368170)))))

(declare-fun b!6602905 () Bool)

(declare-fun e!3995228 () Bool)

(assert (=> b!6602905 (= e!3995228 call!577527)))

(declare-fun b!6602906 () Bool)

(assert (=> b!6602906 (= e!3995228 e!3995229)))

(declare-fun res!2707412 () Bool)

(assert (=> b!6602906 (= res!2707412 (not ((_ is EmptyLang!16469) r!7292)))))

(assert (=> b!6602906 (=> (not res!2707412) (not e!3995229))))

(declare-fun b!6602907 () Bool)

(assert (=> b!6602907 (= e!3995225 (= s!2326 (Cons!65582 (c!1216194 r!7292) Nil!65582)))))

(assert (=> b!6602909 (= e!3995227 call!577526)))

(declare-fun b!6602908 () Bool)

(assert (=> b!6602908 (= e!3995226 e!3995227)))

(assert (=> b!6602908 (= c!1216468 ((_ is Star!16469) r!7292))))

(declare-fun d!2070864 () Bool)

(declare-fun c!1216470 () Bool)

(assert (=> d!2070864 (= c!1216470 ((_ is EmptyExpr!16469) r!7292))))

(assert (=> d!2070864 (= (matchRSpec!3570 r!7292 s!2326) e!3995228)))

(assert (= (and d!2070864 c!1216470) b!6602905))

(assert (= (and d!2070864 (not c!1216470)) b!6602906))

(assert (= (and b!6602906 res!2707412) b!6602904))

(assert (= (and b!6602904 c!1216469) b!6602907))

(assert (= (and b!6602904 (not c!1216469)) b!6602901))

(assert (= (and b!6602901 c!1216471) b!6602903))

(assert (= (and b!6602901 (not c!1216471)) b!6602908))

(assert (= (and b!6602903 (not res!2707411)) b!6602899))

(assert (= (and b!6602908 c!1216468) b!6602902))

(assert (= (and b!6602908 (not c!1216468)) b!6602909))

(assert (= (and b!6602902 (not res!2707413)) b!6602900))

(assert (= (or b!6602900 b!6602909) bm!577522))

(assert (= (or b!6602905 b!6602902) bm!577521))

(declare-fun m!7378758 () Bool)

(assert (=> b!6602899 m!7378758))

(assert (=> bm!577521 m!7378346))

(declare-fun m!7378760 () Bool)

(assert (=> b!6602903 m!7378760))

(declare-fun m!7378762 () Bool)

(assert (=> bm!577522 m!7378762))

(assert (=> b!6601989 d!2070864))

(declare-fun b!6602910 () Bool)

(declare-fun e!3995233 () Bool)

(assert (=> b!6602910 (= e!3995233 (= (head!13389 s!2326) (c!1216194 r!7292)))))

(declare-fun b!6602911 () Bool)

(declare-fun e!3995237 () Bool)

(assert (=> b!6602911 (= e!3995237 (not (= (head!13389 s!2326) (c!1216194 r!7292))))))

(declare-fun b!6602912 () Bool)

(declare-fun res!2707417 () Bool)

(assert (=> b!6602912 (=> res!2707417 e!3995237)))

(assert (=> b!6602912 (= res!2707417 (not (isEmpty!37857 (tail!12474 s!2326))))))

(declare-fun b!6602913 () Bool)

(declare-fun e!3995234 () Bool)

(declare-fun e!3995235 () Bool)

(assert (=> b!6602913 (= e!3995234 e!3995235)))

(declare-fun res!2707420 () Bool)

(assert (=> b!6602913 (=> (not res!2707420) (not e!3995235))))

(declare-fun lt!2414011 () Bool)

(assert (=> b!6602913 (= res!2707420 (not lt!2414011))))

(declare-fun b!6602914 () Bool)

(declare-fun e!3995232 () Bool)

(declare-fun call!577528 () Bool)

(assert (=> b!6602914 (= e!3995232 (= lt!2414011 call!577528))))

(declare-fun b!6602915 () Bool)

(declare-fun res!2707419 () Bool)

(assert (=> b!6602915 (=> res!2707419 e!3995234)))

(assert (=> b!6602915 (= res!2707419 (not ((_ is ElementMatch!16469) r!7292)))))

(declare-fun e!3995238 () Bool)

(assert (=> b!6602915 (= e!3995238 e!3995234)))

(declare-fun bm!577523 () Bool)

(assert (=> bm!577523 (= call!577528 (isEmpty!37857 s!2326))))

(declare-fun b!6602916 () Bool)

(assert (=> b!6602916 (= e!3995232 e!3995238)))

(declare-fun c!1216474 () Bool)

(assert (=> b!6602916 (= c!1216474 ((_ is EmptyLang!16469) r!7292))))

(declare-fun b!6602918 () Bool)

(declare-fun res!2707415 () Bool)

(assert (=> b!6602918 (=> (not res!2707415) (not e!3995233))))

(assert (=> b!6602918 (= res!2707415 (isEmpty!37857 (tail!12474 s!2326)))))

(declare-fun b!6602919 () Bool)

(assert (=> b!6602919 (= e!3995238 (not lt!2414011))))

(declare-fun b!6602920 () Bool)

(declare-fun res!2707421 () Bool)

(assert (=> b!6602920 (=> res!2707421 e!3995234)))

(assert (=> b!6602920 (= res!2707421 e!3995233)))

(declare-fun res!2707416 () Bool)

(assert (=> b!6602920 (=> (not res!2707416) (not e!3995233))))

(assert (=> b!6602920 (= res!2707416 lt!2414011)))

(declare-fun b!6602921 () Bool)

(declare-fun res!2707418 () Bool)

(assert (=> b!6602921 (=> (not res!2707418) (not e!3995233))))

(assert (=> b!6602921 (= res!2707418 (not call!577528))))

(declare-fun b!6602922 () Bool)

(declare-fun e!3995236 () Bool)

(assert (=> b!6602922 (= e!3995236 (nullable!6462 r!7292))))

(declare-fun b!6602923 () Bool)

(assert (=> b!6602923 (= e!3995235 e!3995237)))

(declare-fun res!2707414 () Bool)

(assert (=> b!6602923 (=> res!2707414 e!3995237)))

(assert (=> b!6602923 (= res!2707414 call!577528)))

(declare-fun d!2070866 () Bool)

(assert (=> d!2070866 e!3995232))

(declare-fun c!1216473 () Bool)

(assert (=> d!2070866 (= c!1216473 ((_ is EmptyExpr!16469) r!7292))))

(assert (=> d!2070866 (= lt!2414011 e!3995236)))

(declare-fun c!1216472 () Bool)

(assert (=> d!2070866 (= c!1216472 (isEmpty!37857 s!2326))))

(assert (=> d!2070866 (validRegex!8205 r!7292)))

(assert (=> d!2070866 (= (matchR!8652 r!7292 s!2326) lt!2414011)))

(declare-fun b!6602917 () Bool)

(assert (=> b!6602917 (= e!3995236 (matchR!8652 (derivativeStep!5153 r!7292 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070866 c!1216472) b!6602922))

(assert (= (and d!2070866 (not c!1216472)) b!6602917))

(assert (= (and d!2070866 c!1216473) b!6602914))

(assert (= (and d!2070866 (not c!1216473)) b!6602916))

(assert (= (and b!6602916 c!1216474) b!6602919))

(assert (= (and b!6602916 (not c!1216474)) b!6602915))

(assert (= (and b!6602915 (not res!2707419)) b!6602920))

(assert (= (and b!6602920 res!2707416) b!6602921))

(assert (= (and b!6602921 res!2707418) b!6602918))

(assert (= (and b!6602918 res!2707415) b!6602910))

(assert (= (and b!6602920 (not res!2707421)) b!6602913))

(assert (= (and b!6602913 res!2707420) b!6602923))

(assert (= (and b!6602923 (not res!2707414)) b!6602912))

(assert (= (and b!6602912 (not res!2707417)) b!6602911))

(assert (= (or b!6602914 b!6602923 b!6602921) bm!577523))

(assert (=> b!6602911 m!7378350))

(assert (=> b!6602918 m!7378354))

(assert (=> b!6602918 m!7378354))

(assert (=> b!6602918 m!7378484))

(assert (=> b!6602917 m!7378350))

(assert (=> b!6602917 m!7378350))

(declare-fun m!7378764 () Bool)

(assert (=> b!6602917 m!7378764))

(assert (=> b!6602917 m!7378354))

(assert (=> b!6602917 m!7378764))

(assert (=> b!6602917 m!7378354))

(declare-fun m!7378766 () Bool)

(assert (=> b!6602917 m!7378766))

(assert (=> b!6602910 m!7378350))

(declare-fun m!7378768 () Bool)

(assert (=> b!6602922 m!7378768))

(assert (=> d!2070866 m!7378346))

(assert (=> d!2070866 m!7377954))

(assert (=> bm!577523 m!7378346))

(assert (=> b!6602912 m!7378354))

(assert (=> b!6602912 m!7378354))

(assert (=> b!6602912 m!7378484))

(assert (=> b!6601989 d!2070866))

(declare-fun d!2070868 () Bool)

(assert (=> d!2070868 (= (matchR!8652 r!7292 s!2326) (matchRSpec!3570 r!7292 s!2326))))

(declare-fun lt!2414014 () Unit!159211)

(declare-fun choose!49298 (Regex!16469 List!65706) Unit!159211)

(assert (=> d!2070868 (= lt!2414014 (choose!49298 r!7292 s!2326))))

(assert (=> d!2070868 (validRegex!8205 r!7292)))

(assert (=> d!2070868 (= (mainMatchTheorem!3570 r!7292 s!2326) lt!2414014)))

(declare-fun bs!1692689 () Bool)

(assert (= bs!1692689 d!2070868))

(assert (=> bs!1692689 m!7378056))

(assert (=> bs!1692689 m!7378054))

(declare-fun m!7378770 () Bool)

(assert (=> bs!1692689 m!7378770))

(assert (=> bs!1692689 m!7377954))

(assert (=> b!6601989 d!2070868))

(declare-fun bs!1692690 () Bool)

(declare-fun b!6602925 () Bool)

(assert (= bs!1692690 (and b!6602925 b!6602900)))

(declare-fun lambda!368171 () Int)

(assert (=> bs!1692690 (= (and (= Nil!65582 s!2326) (= (reg!16798 lt!2413840) (reg!16798 r!7292)) (= lt!2413840 r!7292)) (= lambda!368171 lambda!368169))))

(declare-fun bs!1692691 () Bool)

(assert (= bs!1692691 (and b!6602925 d!2070834)))

(assert (=> bs!1692691 (not (= lambda!368171 lambda!368145))))

(declare-fun bs!1692692 () Bool)

(assert (= bs!1692692 (and b!6602925 b!6601988)))

(assert (=> bs!1692692 (not (= lambda!368171 lambda!368075))))

(declare-fun bs!1692693 () Bool)

(assert (= bs!1692693 (and b!6602925 d!2070840)))

(assert (=> bs!1692693 (not (= lambda!368171 lambda!368150))))

(declare-fun bs!1692694 () Bool)

(assert (= bs!1692694 (and b!6602925 b!6602010)))

(assert (=> bs!1692694 (not (= lambda!368171 lambda!368071))))

(assert (=> bs!1692692 (not (= lambda!368171 lambda!368074))))

(declare-fun bs!1692695 () Bool)

(assert (= bs!1692695 (and b!6602925 b!6602909)))

(assert (=> bs!1692695 (not (= lambda!368171 lambda!368170))))

(assert (=> bs!1692693 (not (= lambda!368171 lambda!368151))))

(assert (=> bs!1692694 (not (= lambda!368171 lambda!368072))))

(assert (=> b!6602925 true))

(assert (=> b!6602925 true))

(declare-fun bs!1692696 () Bool)

(declare-fun b!6602934 () Bool)

(assert (= bs!1692696 (and b!6602934 b!6602900)))

(declare-fun lambda!368172 () Int)

(assert (=> bs!1692696 (not (= lambda!368172 lambda!368169))))

(declare-fun bs!1692697 () Bool)

(assert (= bs!1692697 (and b!6602934 d!2070834)))

(assert (=> bs!1692697 (not (= lambda!368172 lambda!368145))))

(declare-fun bs!1692698 () Bool)

(assert (= bs!1692698 (and b!6602934 b!6601988)))

(assert (=> bs!1692698 (= (and (= (regOne!33450 lt!2413840) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 lt!2413840) lt!2413840)) (= lambda!368172 lambda!368075))))

(declare-fun bs!1692699 () Bool)

(assert (= bs!1692699 (and b!6602934 d!2070840)))

(assert (=> bs!1692699 (not (= lambda!368172 lambda!368150))))

(assert (=> bs!1692698 (not (= lambda!368172 lambda!368074))))

(declare-fun bs!1692700 () Bool)

(assert (= bs!1692700 (and b!6602934 b!6602909)))

(assert (=> bs!1692700 (= (and (= Nil!65582 s!2326) (= (regOne!33450 lt!2413840) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413840) (regTwo!33450 r!7292))) (= lambda!368172 lambda!368170))))

(declare-fun bs!1692701 () Bool)

(assert (= bs!1692701 (and b!6602934 b!6602925)))

(assert (=> bs!1692701 (not (= lambda!368172 lambda!368171))))

(declare-fun bs!1692702 () Bool)

(assert (= bs!1692702 (and b!6602934 b!6602010)))

(assert (=> bs!1692702 (not (= lambda!368172 lambda!368071))))

(assert (=> bs!1692699 (= (and (= Nil!65582 s!2326) (= (regOne!33450 lt!2413840) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413840) (regTwo!33450 r!7292))) (= lambda!368172 lambda!368151))))

(assert (=> bs!1692702 (= (and (= Nil!65582 s!2326) (= (regOne!33450 lt!2413840) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413840) (regTwo!33450 r!7292))) (= lambda!368172 lambda!368072))))

(assert (=> b!6602934 true))

(assert (=> b!6602934 true))

(declare-fun b!6602924 () Bool)

(declare-fun e!3995245 () Bool)

(assert (=> b!6602924 (= e!3995245 (matchRSpec!3570 (regTwo!33451 lt!2413840) Nil!65582))))

(declare-fun e!3995244 () Bool)

(declare-fun call!577529 () Bool)

(assert (=> b!6602925 (= e!3995244 call!577529)))

(declare-fun b!6602926 () Bool)

(declare-fun c!1216478 () Bool)

(assert (=> b!6602926 (= c!1216478 ((_ is Union!16469) lt!2413840))))

(declare-fun e!3995239 () Bool)

(declare-fun e!3995240 () Bool)

(assert (=> b!6602926 (= e!3995239 e!3995240)))

(declare-fun bm!577524 () Bool)

(declare-fun call!577530 () Bool)

(assert (=> bm!577524 (= call!577530 (isEmpty!37857 Nil!65582))))

(declare-fun b!6602927 () Bool)

(declare-fun res!2707424 () Bool)

(assert (=> b!6602927 (=> res!2707424 e!3995244)))

(assert (=> b!6602927 (= res!2707424 call!577530)))

(declare-fun e!3995241 () Bool)

(assert (=> b!6602927 (= e!3995241 e!3995244)))

(declare-fun b!6602928 () Bool)

(assert (=> b!6602928 (= e!3995240 e!3995245)))

(declare-fun res!2707422 () Bool)

(assert (=> b!6602928 (= res!2707422 (matchRSpec!3570 (regOne!33451 lt!2413840) Nil!65582))))

(assert (=> b!6602928 (=> res!2707422 e!3995245)))

(declare-fun b!6602929 () Bool)

(declare-fun c!1216476 () Bool)

(assert (=> b!6602929 (= c!1216476 ((_ is ElementMatch!16469) lt!2413840))))

(declare-fun e!3995243 () Bool)

(assert (=> b!6602929 (= e!3995243 e!3995239)))

(declare-fun c!1216475 () Bool)

(declare-fun bm!577525 () Bool)

(assert (=> bm!577525 (= call!577529 (Exists!3539 (ite c!1216475 lambda!368171 lambda!368172)))))

(declare-fun b!6602930 () Bool)

(declare-fun e!3995242 () Bool)

(assert (=> b!6602930 (= e!3995242 call!577530)))

(declare-fun b!6602931 () Bool)

(assert (=> b!6602931 (= e!3995242 e!3995243)))

(declare-fun res!2707423 () Bool)

(assert (=> b!6602931 (= res!2707423 (not ((_ is EmptyLang!16469) lt!2413840)))))

(assert (=> b!6602931 (=> (not res!2707423) (not e!3995243))))

(declare-fun b!6602932 () Bool)

(assert (=> b!6602932 (= e!3995239 (= Nil!65582 (Cons!65582 (c!1216194 lt!2413840) Nil!65582)))))

(assert (=> b!6602934 (= e!3995241 call!577529)))

(declare-fun b!6602933 () Bool)

(assert (=> b!6602933 (= e!3995240 e!3995241)))

(assert (=> b!6602933 (= c!1216475 ((_ is Star!16469) lt!2413840))))

(declare-fun d!2070870 () Bool)

(declare-fun c!1216477 () Bool)

(assert (=> d!2070870 (= c!1216477 ((_ is EmptyExpr!16469) lt!2413840))))

(assert (=> d!2070870 (= (matchRSpec!3570 lt!2413840 Nil!65582) e!3995242)))

(assert (= (and d!2070870 c!1216477) b!6602930))

(assert (= (and d!2070870 (not c!1216477)) b!6602931))

(assert (= (and b!6602931 res!2707423) b!6602929))

(assert (= (and b!6602929 c!1216476) b!6602932))

(assert (= (and b!6602929 (not c!1216476)) b!6602926))

(assert (= (and b!6602926 c!1216478) b!6602928))

(assert (= (and b!6602926 (not c!1216478)) b!6602933))

(assert (= (and b!6602928 (not res!2707422)) b!6602924))

(assert (= (and b!6602933 c!1216475) b!6602927))

(assert (= (and b!6602933 (not c!1216475)) b!6602934))

(assert (= (and b!6602927 (not res!2707424)) b!6602925))

(assert (= (or b!6602925 b!6602934) bm!577525))

(assert (= (or b!6602930 b!6602927) bm!577524))

(declare-fun m!7378772 () Bool)

(assert (=> b!6602924 m!7378772))

(declare-fun m!7378774 () Bool)

(assert (=> bm!577524 m!7378774))

(declare-fun m!7378776 () Bool)

(assert (=> b!6602928 m!7378776))

(declare-fun m!7378778 () Bool)

(assert (=> bm!577525 m!7378778))

(assert (=> b!6601988 d!2070870))

(declare-fun bs!1692703 () Bool)

(declare-fun d!2070872 () Bool)

(assert (= bs!1692703 (and d!2070872 b!6602900)))

(declare-fun lambda!368173 () Int)

(assert (=> bs!1692703 (not (= lambda!368173 lambda!368169))))

(declare-fun bs!1692704 () Bool)

(assert (= bs!1692704 (and d!2070872 d!2070834)))

(assert (=> bs!1692704 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368173 lambda!368145))))

(declare-fun bs!1692705 () Bool)

(assert (= bs!1692705 (and d!2070872 b!6601988)))

(assert (=> bs!1692705 (not (= lambda!368173 lambda!368075))))

(declare-fun bs!1692706 () Bool)

(assert (= bs!1692706 (and d!2070872 b!6602934)))

(assert (=> bs!1692706 (not (= lambda!368173 lambda!368172))))

(declare-fun bs!1692707 () Bool)

(assert (= bs!1692707 (and d!2070872 d!2070840)))

(assert (=> bs!1692707 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368173 lambda!368150))))

(assert (=> bs!1692705 (= lambda!368173 lambda!368074)))

(declare-fun bs!1692708 () Bool)

(assert (= bs!1692708 (and d!2070872 b!6602909)))

(assert (=> bs!1692708 (not (= lambda!368173 lambda!368170))))

(declare-fun bs!1692709 () Bool)

(assert (= bs!1692709 (and d!2070872 b!6602925)))

(assert (=> bs!1692709 (not (= lambda!368173 lambda!368171))))

(declare-fun bs!1692710 () Bool)

(assert (= bs!1692710 (and d!2070872 b!6602010)))

(assert (=> bs!1692710 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368173 lambda!368071))))

(assert (=> bs!1692707 (not (= lambda!368173 lambda!368151))))

(assert (=> bs!1692710 (not (= lambda!368173 lambda!368072))))

(assert (=> d!2070872 true))

(assert (=> d!2070872 true))

(assert (=> d!2070872 true))

(declare-fun lambda!368174 () Int)

(assert (=> bs!1692703 (not (= lambda!368174 lambda!368169))))

(assert (=> bs!1692704 (not (= lambda!368174 lambda!368145))))

(declare-fun bs!1692711 () Bool)

(assert (= bs!1692711 d!2070872))

(assert (=> bs!1692711 (not (= lambda!368174 lambda!368173))))

(assert (=> bs!1692705 (= lambda!368174 lambda!368075)))

(assert (=> bs!1692706 (= (and (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 lt!2413840)) (= lt!2413840 (regTwo!33450 lt!2413840))) (= lambda!368174 lambda!368172))))

(assert (=> bs!1692707 (not (= lambda!368174 lambda!368150))))

(assert (=> bs!1692705 (not (= lambda!368174 lambda!368074))))

(assert (=> bs!1692708 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368174 lambda!368170))))

(assert (=> bs!1692709 (not (= lambda!368174 lambda!368171))))

(assert (=> bs!1692710 (not (= lambda!368174 lambda!368071))))

(assert (=> bs!1692707 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368174 lambda!368151))))

(assert (=> bs!1692710 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368174 lambda!368072))))

(assert (=> d!2070872 true))

(assert (=> d!2070872 true))

(assert (=> d!2070872 true))

(assert (=> d!2070872 (= (Exists!3539 lambda!368173) (Exists!3539 lambda!368174))))

(declare-fun lt!2414015 () Unit!159211)

(assert (=> d!2070872 (= lt!2414015 (choose!49296 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582))))

(assert (=> d!2070872 (validRegex!8205 (reg!16798 (regOne!33450 r!7292)))))

(assert (=> d!2070872 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2076 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582) lt!2414015)))

(declare-fun m!7378780 () Bool)

(assert (=> bs!1692711 m!7378780))

(declare-fun m!7378782 () Bool)

(assert (=> bs!1692711 m!7378782))

(declare-fun m!7378784 () Bool)

(assert (=> bs!1692711 m!7378784))

(assert (=> bs!1692711 m!7378018))

(assert (=> b!6601988 d!2070872))

(declare-fun b!6602935 () Bool)

(declare-fun e!3995247 () Bool)

(declare-fun call!577531 () Bool)

(assert (=> b!6602935 (= e!3995247 call!577531)))

(declare-fun b!6602936 () Bool)

(declare-fun e!3995251 () Bool)

(declare-fun call!577533 () Bool)

(assert (=> b!6602936 (= e!3995251 call!577533)))

(declare-fun bm!577526 () Bool)

(declare-fun call!577532 () Bool)

(assert (=> bm!577526 (= call!577532 call!577533)))

(declare-fun d!2070874 () Bool)

(declare-fun res!2707429 () Bool)

(declare-fun e!3995248 () Bool)

(assert (=> d!2070874 (=> res!2707429 e!3995248)))

(assert (=> d!2070874 (= res!2707429 ((_ is ElementMatch!16469) (reg!16798 (regOne!33450 r!7292))))))

(assert (=> d!2070874 (= (validRegex!8205 (reg!16798 (regOne!33450 r!7292))) e!3995248)))

(declare-fun b!6602937 () Bool)

(declare-fun e!3995250 () Bool)

(assert (=> b!6602937 (= e!3995250 e!3995251)))

(declare-fun res!2707427 () Bool)

(assert (=> b!6602937 (= res!2707427 (not (nullable!6462 (reg!16798 (reg!16798 (regOne!33450 r!7292))))))))

(assert (=> b!6602937 (=> (not res!2707427) (not e!3995251))))

(declare-fun b!6602938 () Bool)

(declare-fun e!3995252 () Bool)

(declare-fun e!3995246 () Bool)

(assert (=> b!6602938 (= e!3995252 e!3995246)))

(declare-fun res!2707426 () Bool)

(assert (=> b!6602938 (=> (not res!2707426) (not e!3995246))))

(assert (=> b!6602938 (= res!2707426 call!577532)))

(declare-fun b!6602939 () Bool)

(declare-fun res!2707425 () Bool)

(assert (=> b!6602939 (=> res!2707425 e!3995252)))

(assert (=> b!6602939 (= res!2707425 (not ((_ is Concat!25314) (reg!16798 (regOne!33450 r!7292)))))))

(declare-fun e!3995249 () Bool)

(assert (=> b!6602939 (= e!3995249 e!3995252)))

(declare-fun c!1216479 () Bool)

(declare-fun c!1216480 () Bool)

(declare-fun bm!577527 () Bool)

(assert (=> bm!577527 (= call!577533 (validRegex!8205 (ite c!1216479 (reg!16798 (reg!16798 (regOne!33450 r!7292))) (ite c!1216480 (regOne!33451 (reg!16798 (regOne!33450 r!7292))) (regOne!33450 (reg!16798 (regOne!33450 r!7292)))))))))

(declare-fun bm!577528 () Bool)

(assert (=> bm!577528 (= call!577531 (validRegex!8205 (ite c!1216480 (regTwo!33451 (reg!16798 (regOne!33450 r!7292))) (regTwo!33450 (reg!16798 (regOne!33450 r!7292))))))))

(declare-fun b!6602940 () Bool)

(assert (=> b!6602940 (= e!3995250 e!3995249)))

(assert (=> b!6602940 (= c!1216480 ((_ is Union!16469) (reg!16798 (regOne!33450 r!7292))))))

(declare-fun b!6602941 () Bool)

(declare-fun res!2707428 () Bool)

(assert (=> b!6602941 (=> (not res!2707428) (not e!3995247))))

(assert (=> b!6602941 (= res!2707428 call!577532)))

(assert (=> b!6602941 (= e!3995249 e!3995247)))

(declare-fun b!6602942 () Bool)

(assert (=> b!6602942 (= e!3995246 call!577531)))

(declare-fun b!6602943 () Bool)

(assert (=> b!6602943 (= e!3995248 e!3995250)))

(assert (=> b!6602943 (= c!1216479 ((_ is Star!16469) (reg!16798 (regOne!33450 r!7292))))))

(assert (= (and d!2070874 (not res!2707429)) b!6602943))

(assert (= (and b!6602943 c!1216479) b!6602937))

(assert (= (and b!6602943 (not c!1216479)) b!6602940))

(assert (= (and b!6602937 res!2707427) b!6602936))

(assert (= (and b!6602940 c!1216480) b!6602941))

(assert (= (and b!6602940 (not c!1216480)) b!6602939))

(assert (= (and b!6602941 res!2707428) b!6602935))

(assert (= (and b!6602939 (not res!2707425)) b!6602938))

(assert (= (and b!6602938 res!2707426) b!6602942))

(assert (= (or b!6602935 b!6602942) bm!577528))

(assert (= (or b!6602941 b!6602938) bm!577526))

(assert (= (or b!6602936 bm!577526) bm!577527))

(declare-fun m!7378786 () Bool)

(assert (=> b!6602937 m!7378786))

(declare-fun m!7378788 () Bool)

(assert (=> bm!577527 m!7378788))

(declare-fun m!7378790 () Bool)

(assert (=> bm!577528 m!7378790))

(assert (=> b!6601988 d!2070874))

(declare-fun d!2070876 () Bool)

(assert (=> d!2070876 (= (matchR!8652 lt!2413840 Nil!65582) (matchRSpec!3570 lt!2413840 Nil!65582))))

(declare-fun lt!2414016 () Unit!159211)

(assert (=> d!2070876 (= lt!2414016 (choose!49298 lt!2413840 Nil!65582))))

(assert (=> d!2070876 (validRegex!8205 lt!2413840)))

(assert (=> d!2070876 (= (mainMatchTheorem!3570 lt!2413840 Nil!65582) lt!2414016)))

(declare-fun bs!1692712 () Bool)

(assert (= bs!1692712 d!2070876))

(assert (=> bs!1692712 m!7378034))

(assert (=> bs!1692712 m!7378028))

(declare-fun m!7378792 () Bool)

(assert (=> bs!1692712 m!7378792))

(declare-fun m!7378794 () Bool)

(assert (=> bs!1692712 m!7378794))

(assert (=> b!6601988 d!2070876))

(declare-fun bs!1692713 () Bool)

(declare-fun d!2070878 () Bool)

(assert (= bs!1692713 (and d!2070878 b!6602900)))

(declare-fun lambda!368175 () Int)

(assert (=> bs!1692713 (not (= lambda!368175 lambda!368169))))

(declare-fun bs!1692714 () Bool)

(assert (= bs!1692714 (and d!2070878 d!2070834)))

(assert (=> bs!1692714 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368175 lambda!368145))))

(declare-fun bs!1692715 () Bool)

(assert (= bs!1692715 (and d!2070878 d!2070872)))

(assert (=> bs!1692715 (= lambda!368175 lambda!368173)))

(declare-fun bs!1692716 () Bool)

(assert (= bs!1692716 (and d!2070878 b!6601988)))

(assert (=> bs!1692716 (not (= lambda!368175 lambda!368075))))

(declare-fun bs!1692717 () Bool)

(assert (= bs!1692717 (and d!2070878 b!6602934)))

(assert (=> bs!1692717 (not (= lambda!368175 lambda!368172))))

(declare-fun bs!1692718 () Bool)

(assert (= bs!1692718 (and d!2070878 d!2070840)))

(assert (=> bs!1692718 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368175 lambda!368150))))

(assert (=> bs!1692716 (= lambda!368175 lambda!368074)))

(assert (=> bs!1692715 (not (= lambda!368175 lambda!368174))))

(declare-fun bs!1692719 () Bool)

(assert (= bs!1692719 (and d!2070878 b!6602909)))

(assert (=> bs!1692719 (not (= lambda!368175 lambda!368170))))

(declare-fun bs!1692720 () Bool)

(assert (= bs!1692720 (and d!2070878 b!6602925)))

(assert (=> bs!1692720 (not (= lambda!368175 lambda!368171))))

(declare-fun bs!1692721 () Bool)

(assert (= bs!1692721 (and d!2070878 b!6602010)))

(assert (=> bs!1692721 (= (and (= Nil!65582 s!2326) (= (reg!16798 (regOne!33450 r!7292)) (regOne!33450 r!7292)) (= lt!2413840 (regTwo!33450 r!7292))) (= lambda!368175 lambda!368071))))

(assert (=> bs!1692718 (not (= lambda!368175 lambda!368151))))

(assert (=> bs!1692721 (not (= lambda!368175 lambda!368072))))

(assert (=> d!2070878 true))

(assert (=> d!2070878 true))

(assert (=> d!2070878 true))

(assert (=> d!2070878 (= (isDefined!13063 (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582 Nil!65582 Nil!65582)) (Exists!3539 lambda!368175))))

(declare-fun lt!2414017 () Unit!159211)

(assert (=> d!2070878 (= lt!2414017 (choose!49295 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582))))

(assert (=> d!2070878 (validRegex!8205 (reg!16798 (regOne!33450 r!7292)))))

(assert (=> d!2070878 (= (lemmaFindConcatSeparationEquivalentToExists!2538 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582) lt!2414017)))

(declare-fun bs!1692722 () Bool)

(assert (= bs!1692722 d!2070878))

(declare-fun m!7378796 () Bool)

(assert (=> bs!1692722 m!7378796))

(declare-fun m!7378798 () Bool)

(assert (=> bs!1692722 m!7378798))

(assert (=> bs!1692722 m!7378018))

(assert (=> bs!1692722 m!7378030))

(assert (=> bs!1692722 m!7378030))

(assert (=> bs!1692722 m!7378032))

(assert (=> b!6601988 d!2070878))

(declare-fun d!2070880 () Bool)

(assert (=> d!2070880 (= (Exists!3539 lambda!368074) (choose!49294 lambda!368074))))

(declare-fun bs!1692723 () Bool)

(assert (= bs!1692723 d!2070880))

(declare-fun m!7378800 () Bool)

(assert (=> bs!1692723 m!7378800))

(assert (=> b!6601988 d!2070880))

(declare-fun b!6602944 () Bool)

(declare-fun e!3995254 () Bool)

(assert (=> b!6602944 (= e!3995254 (= (head!13389 Nil!65582) (c!1216194 lt!2413840)))))

(declare-fun b!6602945 () Bool)

(declare-fun e!3995258 () Bool)

(assert (=> b!6602945 (= e!3995258 (not (= (head!13389 Nil!65582) (c!1216194 lt!2413840))))))

(declare-fun b!6602946 () Bool)

(declare-fun res!2707433 () Bool)

(assert (=> b!6602946 (=> res!2707433 e!3995258)))

(assert (=> b!6602946 (= res!2707433 (not (isEmpty!37857 (tail!12474 Nil!65582))))))

(declare-fun b!6602947 () Bool)

(declare-fun e!3995255 () Bool)

(declare-fun e!3995256 () Bool)

(assert (=> b!6602947 (= e!3995255 e!3995256)))

(declare-fun res!2707436 () Bool)

(assert (=> b!6602947 (=> (not res!2707436) (not e!3995256))))

(declare-fun lt!2414018 () Bool)

(assert (=> b!6602947 (= res!2707436 (not lt!2414018))))

(declare-fun b!6602948 () Bool)

(declare-fun e!3995253 () Bool)

(declare-fun call!577534 () Bool)

(assert (=> b!6602948 (= e!3995253 (= lt!2414018 call!577534))))

(declare-fun b!6602949 () Bool)

(declare-fun res!2707435 () Bool)

(assert (=> b!6602949 (=> res!2707435 e!3995255)))

(assert (=> b!6602949 (= res!2707435 (not ((_ is ElementMatch!16469) lt!2413840)))))

(declare-fun e!3995259 () Bool)

(assert (=> b!6602949 (= e!3995259 e!3995255)))

(declare-fun bm!577529 () Bool)

(assert (=> bm!577529 (= call!577534 (isEmpty!37857 Nil!65582))))

(declare-fun b!6602950 () Bool)

(assert (=> b!6602950 (= e!3995253 e!3995259)))

(declare-fun c!1216483 () Bool)

(assert (=> b!6602950 (= c!1216483 ((_ is EmptyLang!16469) lt!2413840))))

(declare-fun b!6602952 () Bool)

(declare-fun res!2707431 () Bool)

(assert (=> b!6602952 (=> (not res!2707431) (not e!3995254))))

(assert (=> b!6602952 (= res!2707431 (isEmpty!37857 (tail!12474 Nil!65582)))))

(declare-fun b!6602953 () Bool)

(assert (=> b!6602953 (= e!3995259 (not lt!2414018))))

(declare-fun b!6602954 () Bool)

(declare-fun res!2707437 () Bool)

(assert (=> b!6602954 (=> res!2707437 e!3995255)))

(assert (=> b!6602954 (= res!2707437 e!3995254)))

(declare-fun res!2707432 () Bool)

(assert (=> b!6602954 (=> (not res!2707432) (not e!3995254))))

(assert (=> b!6602954 (= res!2707432 lt!2414018)))

(declare-fun b!6602955 () Bool)

(declare-fun res!2707434 () Bool)

(assert (=> b!6602955 (=> (not res!2707434) (not e!3995254))))

(assert (=> b!6602955 (= res!2707434 (not call!577534))))

(declare-fun b!6602956 () Bool)

(declare-fun e!3995257 () Bool)

(assert (=> b!6602956 (= e!3995257 (nullable!6462 lt!2413840))))

(declare-fun b!6602957 () Bool)

(assert (=> b!6602957 (= e!3995256 e!3995258)))

(declare-fun res!2707430 () Bool)

(assert (=> b!6602957 (=> res!2707430 e!3995258)))

(assert (=> b!6602957 (= res!2707430 call!577534)))

(declare-fun d!2070882 () Bool)

(assert (=> d!2070882 e!3995253))

(declare-fun c!1216482 () Bool)

(assert (=> d!2070882 (= c!1216482 ((_ is EmptyExpr!16469) lt!2413840))))

(assert (=> d!2070882 (= lt!2414018 e!3995257)))

(declare-fun c!1216481 () Bool)

(assert (=> d!2070882 (= c!1216481 (isEmpty!37857 Nil!65582))))

(assert (=> d!2070882 (validRegex!8205 lt!2413840)))

(assert (=> d!2070882 (= (matchR!8652 lt!2413840 Nil!65582) lt!2414018)))

(declare-fun b!6602951 () Bool)

(assert (=> b!6602951 (= e!3995257 (matchR!8652 (derivativeStep!5153 lt!2413840 (head!13389 Nil!65582)) (tail!12474 Nil!65582)))))

(assert (= (and d!2070882 c!1216481) b!6602956))

(assert (= (and d!2070882 (not c!1216481)) b!6602951))

(assert (= (and d!2070882 c!1216482) b!6602948))

(assert (= (and d!2070882 (not c!1216482)) b!6602950))

(assert (= (and b!6602950 c!1216483) b!6602953))

(assert (= (and b!6602950 (not c!1216483)) b!6602949))

(assert (= (and b!6602949 (not res!2707435)) b!6602954))

(assert (= (and b!6602954 res!2707432) b!6602955))

(assert (= (and b!6602955 res!2707434) b!6602952))

(assert (= (and b!6602952 res!2707431) b!6602944))

(assert (= (and b!6602954 (not res!2707437)) b!6602947))

(assert (= (and b!6602947 res!2707436) b!6602957))

(assert (= (and b!6602957 (not res!2707430)) b!6602946))

(assert (= (and b!6602946 (not res!2707433)) b!6602945))

(assert (= (or b!6602948 b!6602957 b!6602955) bm!577529))

(declare-fun m!7378802 () Bool)

(assert (=> b!6602945 m!7378802))

(declare-fun m!7378804 () Bool)

(assert (=> b!6602952 m!7378804))

(assert (=> b!6602952 m!7378804))

(declare-fun m!7378806 () Bool)

(assert (=> b!6602952 m!7378806))

(assert (=> b!6602951 m!7378802))

(assert (=> b!6602951 m!7378802))

(declare-fun m!7378808 () Bool)

(assert (=> b!6602951 m!7378808))

(assert (=> b!6602951 m!7378804))

(assert (=> b!6602951 m!7378808))

(assert (=> b!6602951 m!7378804))

(declare-fun m!7378810 () Bool)

(assert (=> b!6602951 m!7378810))

(assert (=> b!6602944 m!7378802))

(declare-fun m!7378812 () Bool)

(assert (=> b!6602956 m!7378812))

(assert (=> d!2070882 m!7378774))

(assert (=> d!2070882 m!7378794))

(assert (=> bm!577529 m!7378774))

(assert (=> b!6602946 m!7378804))

(assert (=> b!6602946 m!7378804))

(assert (=> b!6602946 m!7378806))

(assert (=> b!6601988 d!2070882))

(declare-fun d!2070884 () Bool)

(assert (=> d!2070884 (= (Exists!3539 lambda!368075) (choose!49294 lambda!368075))))

(declare-fun bs!1692724 () Bool)

(assert (= bs!1692724 d!2070884))

(declare-fun m!7378814 () Bool)

(assert (=> bs!1692724 m!7378814))

(assert (=> b!6601988 d!2070884))

(declare-fun d!2070886 () Bool)

(assert (=> d!2070886 (= (isDefined!13063 (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582 Nil!65582 Nil!65582)) (not (isEmpty!37858 (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582 Nil!65582 Nil!65582))))))

(declare-fun bs!1692725 () Bool)

(assert (= bs!1692725 d!2070886))

(assert (=> bs!1692725 m!7378030))

(declare-fun m!7378816 () Bool)

(assert (=> bs!1692725 m!7378816))

(assert (=> b!6601988 d!2070886))

(declare-fun b!6602958 () Bool)

(declare-fun lt!2414019 () Unit!159211)

(declare-fun lt!2414021 () Unit!159211)

(assert (=> b!6602958 (= lt!2414019 lt!2414021)))

(assert (=> b!6602958 (= (++!14615 (++!14615 Nil!65582 (Cons!65582 (h!72030 Nil!65582) Nil!65582)) (t!379358 Nil!65582)) Nil!65582)))

(assert (=> b!6602958 (= lt!2414021 (lemmaMoveElementToOtherListKeepsConcatEq!2612 Nil!65582 (h!72030 Nil!65582) (t!379358 Nil!65582) Nil!65582))))

(declare-fun e!3995264 () Option!16360)

(assert (=> b!6602958 (= e!3995264 (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 (++!14615 Nil!65582 (Cons!65582 (h!72030 Nil!65582) Nil!65582)) (t!379358 Nil!65582) Nil!65582))))

(declare-fun b!6602959 () Bool)

(declare-fun e!3995262 () Option!16360)

(assert (=> b!6602959 (= e!3995262 (Some!16359 (tuple2!66897 Nil!65582 Nil!65582)))))

(declare-fun b!6602960 () Bool)

(declare-fun res!2707442 () Bool)

(declare-fun e!3995263 () Bool)

(assert (=> b!6602960 (=> (not res!2707442) (not e!3995263))))

(declare-fun lt!2414020 () Option!16360)

(assert (=> b!6602960 (= res!2707442 (matchR!8652 lt!2413840 (_2!36751 (get!22785 lt!2414020))))))

(declare-fun b!6602961 () Bool)

(declare-fun res!2707441 () Bool)

(assert (=> b!6602961 (=> (not res!2707441) (not e!3995263))))

(assert (=> b!6602961 (= res!2707441 (matchR!8652 (reg!16798 (regOne!33450 r!7292)) (_1!36751 (get!22785 lt!2414020))))))

(declare-fun d!2070888 () Bool)

(declare-fun e!3995261 () Bool)

(assert (=> d!2070888 e!3995261))

(declare-fun res!2707439 () Bool)

(assert (=> d!2070888 (=> res!2707439 e!3995261)))

(assert (=> d!2070888 (= res!2707439 e!3995263)))

(declare-fun res!2707440 () Bool)

(assert (=> d!2070888 (=> (not res!2707440) (not e!3995263))))

(assert (=> d!2070888 (= res!2707440 (isDefined!13063 lt!2414020))))

(assert (=> d!2070888 (= lt!2414020 e!3995262)))

(declare-fun c!1216485 () Bool)

(declare-fun e!3995260 () Bool)

(assert (=> d!2070888 (= c!1216485 e!3995260)))

(declare-fun res!2707438 () Bool)

(assert (=> d!2070888 (=> (not res!2707438) (not e!3995260))))

(assert (=> d!2070888 (= res!2707438 (matchR!8652 (reg!16798 (regOne!33450 r!7292)) Nil!65582))))

(assert (=> d!2070888 (validRegex!8205 (reg!16798 (regOne!33450 r!7292)))))

(assert (=> d!2070888 (= (findConcatSeparation!2774 (reg!16798 (regOne!33450 r!7292)) lt!2413840 Nil!65582 Nil!65582 Nil!65582) lt!2414020)))

(declare-fun b!6602962 () Bool)

(assert (=> b!6602962 (= e!3995260 (matchR!8652 lt!2413840 Nil!65582))))

(declare-fun b!6602963 () Bool)

(assert (=> b!6602963 (= e!3995261 (not (isDefined!13063 lt!2414020)))))

(declare-fun b!6602964 () Bool)

(assert (=> b!6602964 (= e!3995264 None!16359)))

(declare-fun b!6602965 () Bool)

(assert (=> b!6602965 (= e!3995262 e!3995264)))

(declare-fun c!1216484 () Bool)

(assert (=> b!6602965 (= c!1216484 ((_ is Nil!65582) Nil!65582))))

(declare-fun b!6602966 () Bool)

(assert (=> b!6602966 (= e!3995263 (= (++!14615 (_1!36751 (get!22785 lt!2414020)) (_2!36751 (get!22785 lt!2414020))) Nil!65582))))

(assert (= (and d!2070888 res!2707438) b!6602962))

(assert (= (and d!2070888 c!1216485) b!6602959))

(assert (= (and d!2070888 (not c!1216485)) b!6602965))

(assert (= (and b!6602965 c!1216484) b!6602964))

(assert (= (and b!6602965 (not c!1216484)) b!6602958))

(assert (= (and d!2070888 res!2707440) b!6602961))

(assert (= (and b!6602961 res!2707441) b!6602960))

(assert (= (and b!6602960 res!2707442) b!6602966))

(assert (= (and d!2070888 (not res!2707439)) b!6602963))

(assert (=> b!6602962 m!7378034))

(declare-fun m!7378818 () Bool)

(assert (=> b!6602960 m!7378818))

(declare-fun m!7378820 () Bool)

(assert (=> b!6602960 m!7378820))

(declare-fun m!7378822 () Bool)

(assert (=> d!2070888 m!7378822))

(declare-fun m!7378824 () Bool)

(assert (=> d!2070888 m!7378824))

(assert (=> d!2070888 m!7378018))

(declare-fun m!7378826 () Bool)

(assert (=> b!6602958 m!7378826))

(assert (=> b!6602958 m!7378826))

(declare-fun m!7378828 () Bool)

(assert (=> b!6602958 m!7378828))

(declare-fun m!7378830 () Bool)

(assert (=> b!6602958 m!7378830))

(assert (=> b!6602958 m!7378826))

(declare-fun m!7378832 () Bool)

(assert (=> b!6602958 m!7378832))

(assert (=> b!6602961 m!7378818))

(declare-fun m!7378834 () Bool)

(assert (=> b!6602961 m!7378834))

(assert (=> b!6602966 m!7378818))

(declare-fun m!7378836 () Bool)

(assert (=> b!6602966 m!7378836))

(assert (=> b!6602963 m!7378822))

(assert (=> b!6601988 d!2070888))

(assert (=> b!6602008 d!2070728))

(declare-fun d!2070890 () Bool)

(declare-fun nullableFct!2388 (Regex!16469) Bool)

(assert (=> d!2070890 (= (nullable!6462 (regOne!33450 (regOne!33450 r!7292))) (nullableFct!2388 (regOne!33450 (regOne!33450 r!7292))))))

(declare-fun bs!1692726 () Bool)

(assert (= bs!1692726 d!2070890))

(declare-fun m!7378838 () Bool)

(assert (=> bs!1692726 m!7378838))

(assert (=> b!6602007 d!2070890))

(declare-fun b!6602967 () Bool)

(declare-fun e!3995266 () Bool)

(assert (=> b!6602967 (= e!3995266 (= (head!13389 s!2326) (c!1216194 lt!2413833)))))

(declare-fun b!6602968 () Bool)

(declare-fun e!3995270 () Bool)

(assert (=> b!6602968 (= e!3995270 (not (= (head!13389 s!2326) (c!1216194 lt!2413833))))))

(declare-fun b!6602969 () Bool)

(declare-fun res!2707446 () Bool)

(assert (=> b!6602969 (=> res!2707446 e!3995270)))

(assert (=> b!6602969 (= res!2707446 (not (isEmpty!37857 (tail!12474 s!2326))))))

(declare-fun b!6602970 () Bool)

(declare-fun e!3995267 () Bool)

(declare-fun e!3995268 () Bool)

(assert (=> b!6602970 (= e!3995267 e!3995268)))

(declare-fun res!2707449 () Bool)

(assert (=> b!6602970 (=> (not res!2707449) (not e!3995268))))

(declare-fun lt!2414022 () Bool)

(assert (=> b!6602970 (= res!2707449 (not lt!2414022))))

(declare-fun b!6602971 () Bool)

(declare-fun e!3995265 () Bool)

(declare-fun call!577535 () Bool)

(assert (=> b!6602971 (= e!3995265 (= lt!2414022 call!577535))))

(declare-fun b!6602972 () Bool)

(declare-fun res!2707448 () Bool)

(assert (=> b!6602972 (=> res!2707448 e!3995267)))

(assert (=> b!6602972 (= res!2707448 (not ((_ is ElementMatch!16469) lt!2413833)))))

(declare-fun e!3995271 () Bool)

(assert (=> b!6602972 (= e!3995271 e!3995267)))

(declare-fun bm!577530 () Bool)

(assert (=> bm!577530 (= call!577535 (isEmpty!37857 s!2326))))

(declare-fun b!6602973 () Bool)

(assert (=> b!6602973 (= e!3995265 e!3995271)))

(declare-fun c!1216488 () Bool)

(assert (=> b!6602973 (= c!1216488 ((_ is EmptyLang!16469) lt!2413833))))

(declare-fun b!6602975 () Bool)

(declare-fun res!2707444 () Bool)

(assert (=> b!6602975 (=> (not res!2707444) (not e!3995266))))

(assert (=> b!6602975 (= res!2707444 (isEmpty!37857 (tail!12474 s!2326)))))

(declare-fun b!6602976 () Bool)

(assert (=> b!6602976 (= e!3995271 (not lt!2414022))))

(declare-fun b!6602977 () Bool)

(declare-fun res!2707450 () Bool)

(assert (=> b!6602977 (=> res!2707450 e!3995267)))

(assert (=> b!6602977 (= res!2707450 e!3995266)))

(declare-fun res!2707445 () Bool)

(assert (=> b!6602977 (=> (not res!2707445) (not e!3995266))))

(assert (=> b!6602977 (= res!2707445 lt!2414022)))

(declare-fun b!6602978 () Bool)

(declare-fun res!2707447 () Bool)

(assert (=> b!6602978 (=> (not res!2707447) (not e!3995266))))

(assert (=> b!6602978 (= res!2707447 (not call!577535))))

(declare-fun b!6602979 () Bool)

(declare-fun e!3995269 () Bool)

(assert (=> b!6602979 (= e!3995269 (nullable!6462 lt!2413833))))

(declare-fun b!6602980 () Bool)

(assert (=> b!6602980 (= e!3995268 e!3995270)))

(declare-fun res!2707443 () Bool)

(assert (=> b!6602980 (=> res!2707443 e!3995270)))

(assert (=> b!6602980 (= res!2707443 call!577535)))

(declare-fun d!2070892 () Bool)

(assert (=> d!2070892 e!3995265))

(declare-fun c!1216487 () Bool)

(assert (=> d!2070892 (= c!1216487 ((_ is EmptyExpr!16469) lt!2413833))))

(assert (=> d!2070892 (= lt!2414022 e!3995269)))

(declare-fun c!1216486 () Bool)

(assert (=> d!2070892 (= c!1216486 (isEmpty!37857 s!2326))))

(assert (=> d!2070892 (validRegex!8205 lt!2413833)))

(assert (=> d!2070892 (= (matchR!8652 lt!2413833 s!2326) lt!2414022)))

(declare-fun b!6602974 () Bool)

(assert (=> b!6602974 (= e!3995269 (matchR!8652 (derivativeStep!5153 lt!2413833 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070892 c!1216486) b!6602979))

(assert (= (and d!2070892 (not c!1216486)) b!6602974))

(assert (= (and d!2070892 c!1216487) b!6602971))

(assert (= (and d!2070892 (not c!1216487)) b!6602973))

(assert (= (and b!6602973 c!1216488) b!6602976))

(assert (= (and b!6602973 (not c!1216488)) b!6602972))

(assert (= (and b!6602972 (not res!2707448)) b!6602977))

(assert (= (and b!6602977 res!2707445) b!6602978))

(assert (= (and b!6602978 res!2707447) b!6602975))

(assert (= (and b!6602975 res!2707444) b!6602967))

(assert (= (and b!6602977 (not res!2707450)) b!6602970))

(assert (= (and b!6602970 res!2707449) b!6602980))

(assert (= (and b!6602980 (not res!2707443)) b!6602969))

(assert (= (and b!6602969 (not res!2707446)) b!6602968))

(assert (= (or b!6602971 b!6602980 b!6602978) bm!577530))

(assert (=> b!6602968 m!7378350))

(assert (=> b!6602975 m!7378354))

(assert (=> b!6602975 m!7378354))

(assert (=> b!6602975 m!7378484))

(assert (=> b!6602974 m!7378350))

(assert (=> b!6602974 m!7378350))

(declare-fun m!7378840 () Bool)

(assert (=> b!6602974 m!7378840))

(assert (=> b!6602974 m!7378354))

(assert (=> b!6602974 m!7378840))

(assert (=> b!6602974 m!7378354))

(declare-fun m!7378842 () Bool)

(assert (=> b!6602974 m!7378842))

(assert (=> b!6602967 m!7378350))

(declare-fun m!7378844 () Bool)

(assert (=> b!6602979 m!7378844))

(assert (=> d!2070892 m!7378346))

(declare-fun m!7378846 () Bool)

(assert (=> d!2070892 m!7378846))

(assert (=> bm!577530 m!7378346))

(assert (=> b!6602969 m!7378354))

(assert (=> b!6602969 m!7378354))

(assert (=> b!6602969 m!7378484))

(assert (=> b!6601987 d!2070892))

(declare-fun bs!1692727 () Bool)

(declare-fun b!6602982 () Bool)

(assert (= bs!1692727 (and b!6602982 b!6602900)))

(declare-fun lambda!368176 () Int)

(assert (=> bs!1692727 (= (and (= (reg!16798 lt!2413833) (reg!16798 r!7292)) (= lt!2413833 r!7292)) (= lambda!368176 lambda!368169))))

(declare-fun bs!1692728 () Bool)

(assert (= bs!1692728 (and b!6602982 d!2070834)))

(assert (=> bs!1692728 (not (= lambda!368176 lambda!368145))))

(declare-fun bs!1692729 () Bool)

(assert (= bs!1692729 (and b!6602982 d!2070872)))

(assert (=> bs!1692729 (not (= lambda!368176 lambda!368173))))

(declare-fun bs!1692730 () Bool)

(assert (= bs!1692730 (and b!6602982 b!6601988)))

(assert (=> bs!1692730 (not (= lambda!368176 lambda!368075))))

(declare-fun bs!1692731 () Bool)

(assert (= bs!1692731 (and b!6602982 d!2070840)))

(assert (=> bs!1692731 (not (= lambda!368176 lambda!368150))))

(assert (=> bs!1692730 (not (= lambda!368176 lambda!368074))))

(assert (=> bs!1692729 (not (= lambda!368176 lambda!368174))))

(declare-fun bs!1692732 () Bool)

(assert (= bs!1692732 (and b!6602982 b!6602909)))

(assert (=> bs!1692732 (not (= lambda!368176 lambda!368170))))

(declare-fun bs!1692733 () Bool)

(assert (= bs!1692733 (and b!6602982 b!6602934)))

(assert (=> bs!1692733 (not (= lambda!368176 lambda!368172))))

(declare-fun bs!1692734 () Bool)

(assert (= bs!1692734 (and b!6602982 d!2070878)))

(assert (=> bs!1692734 (not (= lambda!368176 lambda!368175))))

(declare-fun bs!1692735 () Bool)

(assert (= bs!1692735 (and b!6602982 b!6602925)))

(assert (=> bs!1692735 (= (and (= s!2326 Nil!65582) (= (reg!16798 lt!2413833) (reg!16798 lt!2413840)) (= lt!2413833 lt!2413840)) (= lambda!368176 lambda!368171))))

(declare-fun bs!1692736 () Bool)

(assert (= bs!1692736 (and b!6602982 b!6602010)))

(assert (=> bs!1692736 (not (= lambda!368176 lambda!368071))))

(assert (=> bs!1692731 (not (= lambda!368176 lambda!368151))))

(assert (=> bs!1692736 (not (= lambda!368176 lambda!368072))))

(assert (=> b!6602982 true))

(assert (=> b!6602982 true))

(declare-fun bs!1692737 () Bool)

(declare-fun b!6602991 () Bool)

(assert (= bs!1692737 (and b!6602991 b!6602900)))

(declare-fun lambda!368177 () Int)

(assert (=> bs!1692737 (not (= lambda!368177 lambda!368169))))

(declare-fun bs!1692738 () Bool)

(assert (= bs!1692738 (and b!6602991 d!2070834)))

(assert (=> bs!1692738 (not (= lambda!368177 lambda!368145))))

(declare-fun bs!1692739 () Bool)

(assert (= bs!1692739 (and b!6602991 b!6601988)))

(assert (=> bs!1692739 (= (and (= s!2326 Nil!65582) (= (regOne!33450 lt!2413833) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 lt!2413833) lt!2413840)) (= lambda!368177 lambda!368075))))

(declare-fun bs!1692740 () Bool)

(assert (= bs!1692740 (and b!6602991 d!2070840)))

(assert (=> bs!1692740 (not (= lambda!368177 lambda!368150))))

(assert (=> bs!1692739 (not (= lambda!368177 lambda!368074))))

(declare-fun bs!1692741 () Bool)

(assert (= bs!1692741 (and b!6602991 d!2070872)))

(assert (=> bs!1692741 (= (and (= s!2326 Nil!65582) (= (regOne!33450 lt!2413833) (reg!16798 (regOne!33450 r!7292))) (= (regTwo!33450 lt!2413833) lt!2413840)) (= lambda!368177 lambda!368174))))

(declare-fun bs!1692742 () Bool)

(assert (= bs!1692742 (and b!6602991 b!6602909)))

(assert (=> bs!1692742 (= (and (= (regOne!33450 lt!2413833) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413833) (regTwo!33450 r!7292))) (= lambda!368177 lambda!368170))))

(assert (=> bs!1692741 (not (= lambda!368177 lambda!368173))))

(declare-fun bs!1692743 () Bool)

(assert (= bs!1692743 (and b!6602991 b!6602982)))

(assert (=> bs!1692743 (not (= lambda!368177 lambda!368176))))

(declare-fun bs!1692744 () Bool)

(assert (= bs!1692744 (and b!6602991 b!6602934)))

(assert (=> bs!1692744 (= (and (= s!2326 Nil!65582) (= (regOne!33450 lt!2413833) (regOne!33450 lt!2413840)) (= (regTwo!33450 lt!2413833) (regTwo!33450 lt!2413840))) (= lambda!368177 lambda!368172))))

(declare-fun bs!1692745 () Bool)

(assert (= bs!1692745 (and b!6602991 d!2070878)))

(assert (=> bs!1692745 (not (= lambda!368177 lambda!368175))))

(declare-fun bs!1692746 () Bool)

(assert (= bs!1692746 (and b!6602991 b!6602925)))

(assert (=> bs!1692746 (not (= lambda!368177 lambda!368171))))

(declare-fun bs!1692747 () Bool)

(assert (= bs!1692747 (and b!6602991 b!6602010)))

(assert (=> bs!1692747 (not (= lambda!368177 lambda!368071))))

(assert (=> bs!1692740 (= (and (= (regOne!33450 lt!2413833) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413833) (regTwo!33450 r!7292))) (= lambda!368177 lambda!368151))))

(assert (=> bs!1692747 (= (and (= (regOne!33450 lt!2413833) (regOne!33450 r!7292)) (= (regTwo!33450 lt!2413833) (regTwo!33450 r!7292))) (= lambda!368177 lambda!368072))))

(assert (=> b!6602991 true))

(assert (=> b!6602991 true))

(declare-fun b!6602981 () Bool)

(declare-fun e!3995278 () Bool)

(assert (=> b!6602981 (= e!3995278 (matchRSpec!3570 (regTwo!33451 lt!2413833) s!2326))))

(declare-fun e!3995277 () Bool)

(declare-fun call!577536 () Bool)

(assert (=> b!6602982 (= e!3995277 call!577536)))

(declare-fun b!6602983 () Bool)

(declare-fun c!1216492 () Bool)

(assert (=> b!6602983 (= c!1216492 ((_ is Union!16469) lt!2413833))))

(declare-fun e!3995272 () Bool)

(declare-fun e!3995273 () Bool)

(assert (=> b!6602983 (= e!3995272 e!3995273)))

(declare-fun bm!577531 () Bool)

(declare-fun call!577537 () Bool)

(assert (=> bm!577531 (= call!577537 (isEmpty!37857 s!2326))))

(declare-fun b!6602984 () Bool)

(declare-fun res!2707453 () Bool)

(assert (=> b!6602984 (=> res!2707453 e!3995277)))

(assert (=> b!6602984 (= res!2707453 call!577537)))

(declare-fun e!3995274 () Bool)

(assert (=> b!6602984 (= e!3995274 e!3995277)))

(declare-fun b!6602985 () Bool)

(assert (=> b!6602985 (= e!3995273 e!3995278)))

(declare-fun res!2707451 () Bool)

(assert (=> b!6602985 (= res!2707451 (matchRSpec!3570 (regOne!33451 lt!2413833) s!2326))))

(assert (=> b!6602985 (=> res!2707451 e!3995278)))

(declare-fun b!6602986 () Bool)

(declare-fun c!1216490 () Bool)

(assert (=> b!6602986 (= c!1216490 ((_ is ElementMatch!16469) lt!2413833))))

(declare-fun e!3995276 () Bool)

(assert (=> b!6602986 (= e!3995276 e!3995272)))

(declare-fun bm!577532 () Bool)

(declare-fun c!1216489 () Bool)

(assert (=> bm!577532 (= call!577536 (Exists!3539 (ite c!1216489 lambda!368176 lambda!368177)))))

(declare-fun b!6602987 () Bool)

(declare-fun e!3995275 () Bool)

(assert (=> b!6602987 (= e!3995275 call!577537)))

(declare-fun b!6602988 () Bool)

(assert (=> b!6602988 (= e!3995275 e!3995276)))

(declare-fun res!2707452 () Bool)

(assert (=> b!6602988 (= res!2707452 (not ((_ is EmptyLang!16469) lt!2413833)))))

(assert (=> b!6602988 (=> (not res!2707452) (not e!3995276))))

(declare-fun b!6602989 () Bool)

(assert (=> b!6602989 (= e!3995272 (= s!2326 (Cons!65582 (c!1216194 lt!2413833) Nil!65582)))))

(assert (=> b!6602991 (= e!3995274 call!577536)))

(declare-fun b!6602990 () Bool)

(assert (=> b!6602990 (= e!3995273 e!3995274)))

(assert (=> b!6602990 (= c!1216489 ((_ is Star!16469) lt!2413833))))

(declare-fun d!2070894 () Bool)

(declare-fun c!1216491 () Bool)

(assert (=> d!2070894 (= c!1216491 ((_ is EmptyExpr!16469) lt!2413833))))

(assert (=> d!2070894 (= (matchRSpec!3570 lt!2413833 s!2326) e!3995275)))

(assert (= (and d!2070894 c!1216491) b!6602987))

(assert (= (and d!2070894 (not c!1216491)) b!6602988))

(assert (= (and b!6602988 res!2707452) b!6602986))

(assert (= (and b!6602986 c!1216490) b!6602989))

(assert (= (and b!6602986 (not c!1216490)) b!6602983))

(assert (= (and b!6602983 c!1216492) b!6602985))

(assert (= (and b!6602983 (not c!1216492)) b!6602990))

(assert (= (and b!6602985 (not res!2707451)) b!6602981))

(assert (= (and b!6602990 c!1216489) b!6602984))

(assert (= (and b!6602990 (not c!1216489)) b!6602991))

(assert (= (and b!6602984 (not res!2707453)) b!6602982))

(assert (= (or b!6602982 b!6602991) bm!577532))

(assert (= (or b!6602987 b!6602984) bm!577531))

(declare-fun m!7378848 () Bool)

(assert (=> b!6602981 m!7378848))

(assert (=> bm!577531 m!7378346))

(declare-fun m!7378850 () Bool)

(assert (=> b!6602985 m!7378850))

(declare-fun m!7378852 () Bool)

(assert (=> bm!577532 m!7378852))

(assert (=> b!6601987 d!2070894))

(declare-fun d!2070896 () Bool)

(assert (=> d!2070896 (= (matchR!8652 lt!2413833 s!2326) (matchRSpec!3570 lt!2413833 s!2326))))

(declare-fun lt!2414023 () Unit!159211)

(assert (=> d!2070896 (= lt!2414023 (choose!49298 lt!2413833 s!2326))))

(assert (=> d!2070896 (validRegex!8205 lt!2413833)))

(assert (=> d!2070896 (= (mainMatchTheorem!3570 lt!2413833 s!2326) lt!2414023)))

(declare-fun bs!1692748 () Bool)

(assert (= bs!1692748 d!2070896))

(assert (=> bs!1692748 m!7377948))

(assert (=> bs!1692748 m!7377950))

(declare-fun m!7378854 () Bool)

(assert (=> bs!1692748 m!7378854))

(assert (=> bs!1692748 m!7378846))

(assert (=> b!6601987 d!2070896))

(declare-fun d!2070898 () Bool)

(declare-fun c!1216493 () Bool)

(assert (=> d!2070898 (= c!1216493 (isEmpty!37857 s!2326))))

(declare-fun e!3995279 () Bool)

(assert (=> d!2070898 (= (matchZipper!2481 lt!2413849 s!2326) e!3995279)))

(declare-fun b!6602992 () Bool)

(assert (=> b!6602992 (= e!3995279 (nullableZipper!2214 lt!2413849))))

(declare-fun b!6602993 () Bool)

(assert (=> b!6602993 (= e!3995279 (matchZipper!2481 (derivationStepZipper!2435 lt!2413849 (head!13389 s!2326)) (tail!12474 s!2326)))))

(assert (= (and d!2070898 c!1216493) b!6602992))

(assert (= (and d!2070898 (not c!1216493)) b!6602993))

(assert (=> d!2070898 m!7378346))

(declare-fun m!7378856 () Bool)

(assert (=> b!6602992 m!7378856))

(assert (=> b!6602993 m!7378350))

(assert (=> b!6602993 m!7378350))

(declare-fun m!7378858 () Bool)

(assert (=> b!6602993 m!7378858))

(assert (=> b!6602993 m!7378354))

(assert (=> b!6602993 m!7378858))

(assert (=> b!6602993 m!7378354))

(declare-fun m!7378860 () Bool)

(assert (=> b!6602993 m!7378860))

(assert (=> b!6602001 d!2070898))

(declare-fun d!2070900 () Bool)

(declare-fun c!1216494 () Bool)

(assert (=> d!2070900 (= c!1216494 (isEmpty!37857 (t!379358 s!2326)))))

(declare-fun e!3995280 () Bool)

(assert (=> d!2070900 (= (matchZipper!2481 lt!2413834 (t!379358 s!2326)) e!3995280)))

(declare-fun b!6602994 () Bool)

(assert (=> b!6602994 (= e!3995280 (nullableZipper!2214 lt!2413834))))

(declare-fun b!6602995 () Bool)

(assert (=> b!6602995 (= e!3995280 (matchZipper!2481 (derivationStepZipper!2435 lt!2413834 (head!13389 (t!379358 s!2326))) (tail!12474 (t!379358 s!2326))))))

(assert (= (and d!2070900 c!1216494) b!6602994))

(assert (= (and d!2070900 (not c!1216494)) b!6602995))

(assert (=> d!2070900 m!7378364))

(declare-fun m!7378862 () Bool)

(assert (=> b!6602994 m!7378862))

(assert (=> b!6602995 m!7378368))

(assert (=> b!6602995 m!7378368))

(declare-fun m!7378864 () Bool)

(assert (=> b!6602995 m!7378864))

(assert (=> b!6602995 m!7378374))

(assert (=> b!6602995 m!7378864))

(assert (=> b!6602995 m!7378374))

(declare-fun m!7378866 () Bool)

(assert (=> b!6602995 m!7378866))

(assert (=> b!6602001 d!2070900))

(declare-fun bs!1692749 () Bool)

(declare-fun d!2070902 () Bool)

(assert (= bs!1692749 (and d!2070902 d!2070734)))

(declare-fun lambda!368178 () Int)

(assert (=> bs!1692749 (= lambda!368178 lambda!368108)))

(declare-fun bs!1692750 () Bool)

(assert (= bs!1692750 (and d!2070902 d!2070800)))

(assert (=> bs!1692750 (= lambda!368178 lambda!368133)))

(declare-fun bs!1692751 () Bool)

(assert (= bs!1692751 (and d!2070902 d!2070816)))

(assert (=> bs!1692751 (= lambda!368178 lambda!368136)))

(declare-fun bs!1692752 () Bool)

(assert (= bs!1692752 (and d!2070902 d!2070818)))

(assert (=> bs!1692752 (= lambda!368178 lambda!368139)))

(assert (=> d!2070902 (= (inv!84419 (h!72032 zl!343)) (forall!15661 (exprs!6353 (h!72032 zl!343)) lambda!368178))))

(declare-fun bs!1692753 () Bool)

(assert (= bs!1692753 d!2070902))

(declare-fun m!7378868 () Bool)

(assert (=> bs!1692753 m!7378868))

(assert (=> b!6601981 d!2070902))

(declare-fun d!2070904 () Bool)

(declare-fun e!3995283 () Bool)

(assert (=> d!2070904 (= (matchZipper!2481 ((_ map or) lt!2413836 lt!2413863) (t!379358 s!2326)) e!3995283)))

(declare-fun res!2707456 () Bool)

(assert (=> d!2070904 (=> res!2707456 e!3995283)))

(assert (=> d!2070904 (= res!2707456 (matchZipper!2481 lt!2413836 (t!379358 s!2326)))))

(declare-fun lt!2414026 () Unit!159211)

(declare-fun choose!49299 ((InoxSet Context!11706) (InoxSet Context!11706) List!65706) Unit!159211)

(assert (=> d!2070904 (= lt!2414026 (choose!49299 lt!2413836 lt!2413863 (t!379358 s!2326)))))

(assert (=> d!2070904 (= (lemmaZipperConcatMatchesSameAsBothZippers!1300 lt!2413836 lt!2413863 (t!379358 s!2326)) lt!2414026)))

(declare-fun b!6602998 () Bool)

(assert (=> b!6602998 (= e!3995283 (matchZipper!2481 lt!2413863 (t!379358 s!2326)))))

(assert (= (and d!2070904 (not res!2707456)) b!6602998))

(assert (=> d!2070904 m!7377960))

(assert (=> d!2070904 m!7377958))

(declare-fun m!7378870 () Bool)

(assert (=> d!2070904 m!7378870))

(assert (=> b!6602998 m!7378050))

(assert (=> b!6602022 d!2070904))

(assert (=> b!6602022 d!2070820))

(declare-fun d!2070906 () Bool)

(declare-fun c!1216495 () Bool)

(assert (=> d!2070906 (= c!1216495 (isEmpty!37857 (t!379358 s!2326)))))

(declare-fun e!3995284 () Bool)

(assert (=> d!2070906 (= (matchZipper!2481 ((_ map or) lt!2413836 lt!2413863) (t!379358 s!2326)) e!3995284)))

(declare-fun b!6602999 () Bool)

(assert (=> b!6602999 (= e!3995284 (nullableZipper!2214 ((_ map or) lt!2413836 lt!2413863)))))

(declare-fun b!6603000 () Bool)

(assert (=> b!6603000 (= e!3995284 (matchZipper!2481 (derivationStepZipper!2435 ((_ map or) lt!2413836 lt!2413863) (head!13389 (t!379358 s!2326))) (tail!12474 (t!379358 s!2326))))))

(assert (= (and d!2070906 c!1216495) b!6602999))

(assert (= (and d!2070906 (not c!1216495)) b!6603000))

(assert (=> d!2070906 m!7378364))

(declare-fun m!7378872 () Bool)

(assert (=> b!6602999 m!7378872))

(assert (=> b!6603000 m!7378368))

(assert (=> b!6603000 m!7378368))

(declare-fun m!7378874 () Bool)

(assert (=> b!6603000 m!7378874))

(assert (=> b!6603000 m!7378374))

(assert (=> b!6603000 m!7378874))

(assert (=> b!6603000 m!7378374))

(declare-fun m!7378876 () Bool)

(assert (=> b!6603000 m!7378876))

(assert (=> b!6602022 d!2070906))

(declare-fun d!2070908 () Bool)

(assert (=> d!2070908 (= (isEmpty!37854 (t!379359 (exprs!6353 (h!72032 zl!343)))) ((_ is Nil!65583) (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(assert (=> b!6602021 d!2070908))

(declare-fun d!2070910 () Bool)

(declare-fun e!3995287 () Bool)

(assert (=> d!2070910 e!3995287))

(declare-fun res!2707459 () Bool)

(assert (=> d!2070910 (=> (not res!2707459) (not e!3995287))))

(declare-fun lt!2414029 () List!65708)

(declare-fun noDuplicate!2274 (List!65708) Bool)

(assert (=> d!2070910 (= res!2707459 (noDuplicate!2274 lt!2414029))))

(declare-fun choose!49300 ((InoxSet Context!11706)) List!65708)

(assert (=> d!2070910 (= lt!2414029 (choose!49300 z!1189))))

(assert (=> d!2070910 (= (toList!10253 z!1189) lt!2414029)))

(declare-fun b!6603003 () Bool)

(declare-fun content!12646 (List!65708) (InoxSet Context!11706))

(assert (=> b!6603003 (= e!3995287 (= (content!12646 lt!2414029) z!1189))))

(assert (= (and d!2070910 res!2707459) b!6603003))

(declare-fun m!7378878 () Bool)

(assert (=> d!2070910 m!7378878))

(declare-fun m!7378880 () Bool)

(assert (=> d!2070910 m!7378880))

(declare-fun m!7378882 () Bool)

(assert (=> b!6603003 m!7378882))

(assert (=> b!6602000 d!2070910))

(declare-fun d!2070912 () Bool)

(assert (=> d!2070912 (= (flatMap!1974 z!1189 lambda!368073) (dynLambda!26116 lambda!368073 (h!72032 zl!343)))))

(declare-fun lt!2414030 () Unit!159211)

(assert (=> d!2070912 (= lt!2414030 (choose!49293 z!1189 (h!72032 zl!343) lambda!368073))))

(assert (=> d!2070912 (= z!1189 (store ((as const (Array Context!11706 Bool)) false) (h!72032 zl!343) true))))

(assert (=> d!2070912 (= (lemmaFlatMapOnSingletonSet!1500 z!1189 (h!72032 zl!343) lambda!368073) lt!2414030)))

(declare-fun b_lambda!249881 () Bool)

(assert (=> (not b_lambda!249881) (not d!2070912)))

(declare-fun bs!1692754 () Bool)

(assert (= bs!1692754 d!2070912))

(assert (=> bs!1692754 m!7378004))

(declare-fun m!7378884 () Bool)

(assert (=> bs!1692754 m!7378884))

(declare-fun m!7378886 () Bool)

(assert (=> bs!1692754 m!7378886))

(declare-fun m!7378888 () Bool)

(assert (=> bs!1692754 m!7378888))

(assert (=> b!6601980 d!2070912))

(declare-fun d!2070914 () Bool)

(assert (=> d!2070914 (= (nullable!6462 (h!72031 (exprs!6353 (h!72032 zl!343)))) (nullableFct!2388 (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun bs!1692755 () Bool)

(assert (= bs!1692755 d!2070914))

(declare-fun m!7378890 () Bool)

(assert (=> bs!1692755 m!7378890))

(assert (=> b!6601980 d!2070914))

(declare-fun d!2070916 () Bool)

(assert (=> d!2070916 (= (flatMap!1974 z!1189 lambda!368073) (choose!49292 z!1189 lambda!368073))))

(declare-fun bs!1692756 () Bool)

(assert (= bs!1692756 d!2070916))

(declare-fun m!7378892 () Bool)

(assert (=> bs!1692756 m!7378892))

(assert (=> b!6601980 d!2070916))

(declare-fun bm!577533 () Bool)

(declare-fun call!577538 () (InoxSet Context!11706))

(assert (=> bm!577533 (= call!577538 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 (h!72032 zl!343))) (Context!11707 (t!379359 (exprs!6353 (h!72032 zl!343)))) (h!72030 s!2326)))))

(declare-fun d!2070918 () Bool)

(declare-fun c!1216497 () Bool)

(declare-fun e!3995288 () Bool)

(assert (=> d!2070918 (= c!1216497 e!3995288)))

(declare-fun res!2707460 () Bool)

(assert (=> d!2070918 (=> (not res!2707460) (not e!3995288))))

(assert (=> d!2070918 (= res!2707460 ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343))))))

(declare-fun e!3995290 () (InoxSet Context!11706))

(assert (=> d!2070918 (= (derivationStepZipperUp!1643 (h!72032 zl!343) (h!72030 s!2326)) e!3995290)))

(declare-fun b!6603004 () Bool)

(assert (=> b!6603004 (= e!3995290 ((_ map or) call!577538 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 (h!72032 zl!343)))) (h!72030 s!2326))))))

(declare-fun b!6603005 () Bool)

(declare-fun e!3995289 () (InoxSet Context!11706))

(assert (=> b!6603005 (= e!3995289 call!577538)))

(declare-fun b!6603006 () Bool)

(assert (=> b!6603006 (= e!3995288 (nullable!6462 (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6603007 () Bool)

(assert (=> b!6603007 (= e!3995289 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6603008 () Bool)

(assert (=> b!6603008 (= e!3995290 e!3995289)))

(declare-fun c!1216496 () Bool)

(assert (=> b!6603008 (= c!1216496 ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343))))))

(assert (= (and d!2070918 res!2707460) b!6603006))

(assert (= (and d!2070918 c!1216497) b!6603004))

(assert (= (and d!2070918 (not c!1216497)) b!6603008))

(assert (= (and b!6603008 c!1216496) b!6603005))

(assert (= (and b!6603008 (not c!1216496)) b!6603007))

(assert (= (or b!6603004 b!6603005) bm!577533))

(declare-fun m!7378894 () Bool)

(assert (=> bm!577533 m!7378894))

(declare-fun m!7378896 () Bool)

(assert (=> b!6603004 m!7378896))

(assert (=> b!6603006 m!7378002))

(assert (=> b!6601980 d!2070918))

(declare-fun b!6603009 () Bool)

(declare-fun e!3995295 () (InoxSet Context!11706))

(declare-fun call!577543 () (InoxSet Context!11706))

(assert (=> b!6603009 (= e!3995295 call!577543)))

(declare-fun b!6603010 () Bool)

(declare-fun e!3995292 () (InoxSet Context!11706))

(assert (=> b!6603010 (= e!3995292 call!577543)))

(declare-fun b!6603011 () Bool)

(declare-fun e!3995296 () (InoxSet Context!11706))

(declare-fun call!577540 () (InoxSet Context!11706))

(declare-fun call!577544 () (InoxSet Context!11706))

(assert (=> b!6603011 (= e!3995296 ((_ map or) call!577540 call!577544))))

(declare-fun c!1216498 () Bool)

(declare-fun bm!577534 () Bool)

(declare-fun c!1216501 () Bool)

(declare-fun c!1216499 () Bool)

(declare-fun call!577541 () List!65707)

(assert (=> bm!577534 (= call!577540 (derivationStepZipperDown!1717 (ite c!1216501 (regOne!33451 (h!72031 (exprs!6353 (h!72032 zl!343)))) (ite c!1216498 (regTwo!33450 (h!72031 (exprs!6353 (h!72032 zl!343)))) (ite c!1216499 (regOne!33450 (h!72031 (exprs!6353 (h!72032 zl!343)))) (reg!16798 (h!72031 (exprs!6353 (h!72032 zl!343))))))) (ite (or c!1216501 c!1216498) lt!2413850 (Context!11707 call!577541)) (h!72030 s!2326)))))

(declare-fun b!6603013 () Bool)

(declare-fun e!3995291 () (InoxSet Context!11706))

(declare-fun call!577539 () (InoxSet Context!11706))

(assert (=> b!6603013 (= e!3995291 ((_ map or) call!577544 call!577539))))

(declare-fun b!6603014 () Bool)

(declare-fun e!3995293 () (InoxSet Context!11706))

(assert (=> b!6603014 (= e!3995293 (store ((as const (Array Context!11706 Bool)) false) lt!2413850 true))))

(declare-fun b!6603015 () Bool)

(assert (=> b!6603015 (= e!3995291 e!3995295)))

(assert (=> b!6603015 (= c!1216499 ((_ is Concat!25314) (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6603016 () Bool)

(assert (=> b!6603016 (= e!3995292 ((as const (Array Context!11706 Bool)) false))))

(declare-fun bm!577535 () Bool)

(declare-fun call!577542 () List!65707)

(assert (=> bm!577535 (= call!577541 call!577542)))

(declare-fun bm!577536 () Bool)

(assert (=> bm!577536 (= call!577543 call!577539)))

(declare-fun bm!577537 () Bool)

(assert (=> bm!577537 (= call!577544 (derivationStepZipperDown!1717 (ite c!1216501 (regTwo!33451 (h!72031 (exprs!6353 (h!72032 zl!343)))) (regOne!33450 (h!72031 (exprs!6353 (h!72032 zl!343))))) (ite c!1216501 lt!2413850 (Context!11707 call!577542)) (h!72030 s!2326)))))

(declare-fun d!2070920 () Bool)

(declare-fun c!1216502 () Bool)

(assert (=> d!2070920 (= c!1216502 (and ((_ is ElementMatch!16469) (h!72031 (exprs!6353 (h!72032 zl!343)))) (= (c!1216194 (h!72031 (exprs!6353 (h!72032 zl!343)))) (h!72030 s!2326))))))

(assert (=> d!2070920 (= (derivationStepZipperDown!1717 (h!72031 (exprs!6353 (h!72032 zl!343))) lt!2413850 (h!72030 s!2326)) e!3995293)))

(declare-fun b!6603012 () Bool)

(declare-fun c!1216500 () Bool)

(assert (=> b!6603012 (= c!1216500 ((_ is Star!16469) (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(assert (=> b!6603012 (= e!3995295 e!3995292)))

(declare-fun b!6603017 () Bool)

(assert (=> b!6603017 (= e!3995293 e!3995296)))

(assert (=> b!6603017 (= c!1216501 ((_ is Union!16469) (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun bm!577538 () Bool)

(assert (=> bm!577538 (= call!577539 call!577540)))

(declare-fun b!6603018 () Bool)

(declare-fun e!3995294 () Bool)

(assert (=> b!6603018 (= c!1216498 e!3995294)))

(declare-fun res!2707461 () Bool)

(assert (=> b!6603018 (=> (not res!2707461) (not e!3995294))))

(assert (=> b!6603018 (= res!2707461 ((_ is Concat!25314) (h!72031 (exprs!6353 (h!72032 zl!343)))))))

(assert (=> b!6603018 (= e!3995296 e!3995291)))

(declare-fun b!6603019 () Bool)

(assert (=> b!6603019 (= e!3995294 (nullable!6462 (regOne!33450 (h!72031 (exprs!6353 (h!72032 zl!343))))))))

(declare-fun bm!577539 () Bool)

(assert (=> bm!577539 (= call!577542 ($colon$colon!2310 (exprs!6353 lt!2413850) (ite (or c!1216498 c!1216499) (regTwo!33450 (h!72031 (exprs!6353 (h!72032 zl!343)))) (h!72031 (exprs!6353 (h!72032 zl!343))))))))

(assert (= (and d!2070920 c!1216502) b!6603014))

(assert (= (and d!2070920 (not c!1216502)) b!6603017))

(assert (= (and b!6603017 c!1216501) b!6603011))

(assert (= (and b!6603017 (not c!1216501)) b!6603018))

(assert (= (and b!6603018 res!2707461) b!6603019))

(assert (= (and b!6603018 c!1216498) b!6603013))

(assert (= (and b!6603018 (not c!1216498)) b!6603015))

(assert (= (and b!6603015 c!1216499) b!6603009))

(assert (= (and b!6603015 (not c!1216499)) b!6603012))

(assert (= (and b!6603012 c!1216500) b!6603010))

(assert (= (and b!6603012 (not c!1216500)) b!6603016))

(assert (= (or b!6603009 b!6603010) bm!577535))

(assert (= (or b!6603009 b!6603010) bm!577536))

(assert (= (or b!6603013 bm!577535) bm!577539))

(assert (= (or b!6603013 bm!577536) bm!577538))

(assert (= (or b!6603011 b!6603013) bm!577537))

(assert (= (or b!6603011 bm!577538) bm!577534))

(assert (=> b!6603014 m!7377990))

(declare-fun m!7378898 () Bool)

(assert (=> bm!577537 m!7378898))

(declare-fun m!7378900 () Bool)

(assert (=> bm!577539 m!7378900))

(declare-fun m!7378902 () Bool)

(assert (=> b!6603019 m!7378902))

(declare-fun m!7378904 () Bool)

(assert (=> bm!577534 m!7378904))

(assert (=> b!6601980 d!2070920))

(assert (=> b!6601980 d!2070852))

(declare-fun bm!577540 () Bool)

(declare-fun call!577545 () (InoxSet Context!11706))

(assert (=> bm!577540 (= call!577545 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343))))))) (Context!11707 (t!379359 (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343)))))))) (h!72030 s!2326)))))

(declare-fun d!2070922 () Bool)

(declare-fun c!1216504 () Bool)

(declare-fun e!3995297 () Bool)

(assert (=> d!2070922 (= c!1216504 e!3995297)))

(declare-fun res!2707462 () Bool)

(assert (=> d!2070922 (=> (not res!2707462) (not e!3995297))))

(assert (=> d!2070922 (= res!2707462 ((_ is Cons!65583) (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343))))))))))

(declare-fun e!3995299 () (InoxSet Context!11706))

(assert (=> d!2070922 (= (derivationStepZipperUp!1643 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343))))) (h!72030 s!2326)) e!3995299)))

(declare-fun b!6603020 () Bool)

(assert (=> b!6603020 (= e!3995299 ((_ map or) call!577545 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343)))))))) (h!72030 s!2326))))))

(declare-fun b!6603021 () Bool)

(declare-fun e!3995298 () (InoxSet Context!11706))

(assert (=> b!6603021 (= e!3995298 call!577545)))

(declare-fun b!6603022 () Bool)

(assert (=> b!6603022 (= e!3995297 (nullable!6462 (h!72031 (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343)))))))))))

(declare-fun b!6603023 () Bool)

(assert (=> b!6603023 (= e!3995298 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6603024 () Bool)

(assert (=> b!6603024 (= e!3995299 e!3995298)))

(declare-fun c!1216503 () Bool)

(assert (=> b!6603024 (= c!1216503 ((_ is Cons!65583) (exprs!6353 (Context!11707 (Cons!65583 (h!72031 (exprs!6353 (h!72032 zl!343))) (t!379359 (exprs!6353 (h!72032 zl!343))))))))))

(assert (= (and d!2070922 res!2707462) b!6603022))

(assert (= (and d!2070922 c!1216504) b!6603020))

(assert (= (and d!2070922 (not c!1216504)) b!6603024))

(assert (= (and b!6603024 c!1216503) b!6603021))

(assert (= (and b!6603024 (not c!1216503)) b!6603023))

(assert (= (or b!6603020 b!6603021) bm!577540))

(declare-fun m!7378906 () Bool)

(assert (=> bm!577540 m!7378906))

(declare-fun m!7378908 () Bool)

(assert (=> b!6603020 m!7378908))

(declare-fun m!7378910 () Bool)

(assert (=> b!6603022 m!7378910))

(assert (=> b!6601980 d!2070922))

(declare-fun d!2070924 () Bool)

(assert (=> d!2070924 (= (flatMap!1974 lt!2413829 lambda!368073) (choose!49292 lt!2413829 lambda!368073))))

(declare-fun bs!1692757 () Bool)

(assert (= bs!1692757 d!2070924))

(declare-fun m!7378912 () Bool)

(assert (=> bs!1692757 m!7378912))

(assert (=> b!6602004 d!2070924))

(declare-fun bm!577541 () Bool)

(declare-fun call!577546 () (InoxSet Context!11706))

(assert (=> bm!577541 (= call!577546 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 lt!2413845)) (Context!11707 (t!379359 (exprs!6353 lt!2413845))) (h!72030 s!2326)))))

(declare-fun d!2070926 () Bool)

(declare-fun c!1216506 () Bool)

(declare-fun e!3995300 () Bool)

(assert (=> d!2070926 (= c!1216506 e!3995300)))

(declare-fun res!2707463 () Bool)

(assert (=> d!2070926 (=> (not res!2707463) (not e!3995300))))

(assert (=> d!2070926 (= res!2707463 ((_ is Cons!65583) (exprs!6353 lt!2413845)))))

(declare-fun e!3995302 () (InoxSet Context!11706))

(assert (=> d!2070926 (= (derivationStepZipperUp!1643 lt!2413845 (h!72030 s!2326)) e!3995302)))

(declare-fun b!6603025 () Bool)

(assert (=> b!6603025 (= e!3995302 ((_ map or) call!577546 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 lt!2413845))) (h!72030 s!2326))))))

(declare-fun b!6603026 () Bool)

(declare-fun e!3995301 () (InoxSet Context!11706))

(assert (=> b!6603026 (= e!3995301 call!577546)))

(declare-fun b!6603027 () Bool)

(assert (=> b!6603027 (= e!3995300 (nullable!6462 (h!72031 (exprs!6353 lt!2413845))))))

(declare-fun b!6603028 () Bool)

(assert (=> b!6603028 (= e!3995301 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6603029 () Bool)

(assert (=> b!6603029 (= e!3995302 e!3995301)))

(declare-fun c!1216505 () Bool)

(assert (=> b!6603029 (= c!1216505 ((_ is Cons!65583) (exprs!6353 lt!2413845)))))

(assert (= (and d!2070926 res!2707463) b!6603027))

(assert (= (and d!2070926 c!1216506) b!6603025))

(assert (= (and d!2070926 (not c!1216506)) b!6603029))

(assert (= (and b!6603029 c!1216505) b!6603026))

(assert (= (and b!6603029 (not c!1216505)) b!6603028))

(assert (= (or b!6603025 b!6603026) bm!577541))

(declare-fun m!7378914 () Bool)

(assert (=> bm!577541 m!7378914))

(declare-fun m!7378916 () Bool)

(assert (=> b!6603025 m!7378916))

(declare-fun m!7378918 () Bool)

(assert (=> b!6603027 m!7378918))

(assert (=> b!6602004 d!2070926))

(declare-fun d!2070928 () Bool)

(declare-fun lt!2414031 () Regex!16469)

(assert (=> d!2070928 (validRegex!8205 lt!2414031)))

(assert (=> d!2070928 (= lt!2414031 (generalisedUnion!2313 (unfocusZipperList!1890 (Cons!65584 lt!2413845 Nil!65584))))))

(assert (=> d!2070928 (= (unfocusZipper!2211 (Cons!65584 lt!2413845 Nil!65584)) lt!2414031)))

(declare-fun bs!1692758 () Bool)

(assert (= bs!1692758 d!2070928))

(declare-fun m!7378920 () Bool)

(assert (=> bs!1692758 m!7378920))

(declare-fun m!7378922 () Bool)

(assert (=> bs!1692758 m!7378922))

(assert (=> bs!1692758 m!7378922))

(declare-fun m!7378924 () Bool)

(assert (=> bs!1692758 m!7378924))

(assert (=> b!6602004 d!2070928))

(declare-fun d!2070930 () Bool)

(assert (=> d!2070930 (= (flatMap!1974 lt!2413839 lambda!368073) (choose!49292 lt!2413839 lambda!368073))))

(declare-fun bs!1692759 () Bool)

(assert (= bs!1692759 d!2070930))

(declare-fun m!7378926 () Bool)

(assert (=> bs!1692759 m!7378926))

(assert (=> b!6602004 d!2070930))

(declare-fun d!2070932 () Bool)

(assert (=> d!2070932 (= (flatMap!1974 lt!2413829 lambda!368073) (dynLambda!26116 lambda!368073 lt!2413831))))

(declare-fun lt!2414032 () Unit!159211)

(assert (=> d!2070932 (= lt!2414032 (choose!49293 lt!2413829 lt!2413831 lambda!368073))))

(assert (=> d!2070932 (= lt!2413829 (store ((as const (Array Context!11706 Bool)) false) lt!2413831 true))))

(assert (=> d!2070932 (= (lemmaFlatMapOnSingletonSet!1500 lt!2413829 lt!2413831 lambda!368073) lt!2414032)))

(declare-fun b_lambda!249883 () Bool)

(assert (=> (not b_lambda!249883) (not d!2070932)))

(declare-fun bs!1692760 () Bool)

(assert (= bs!1692760 d!2070932))

(assert (=> bs!1692760 m!7377974))

(declare-fun m!7378928 () Bool)

(assert (=> bs!1692760 m!7378928))

(declare-fun m!7378930 () Bool)

(assert (=> bs!1692760 m!7378930))

(assert (=> bs!1692760 m!7377970))

(assert (=> b!6602004 d!2070932))

(declare-fun d!2070934 () Bool)

(assert (=> d!2070934 (= (flatMap!1974 lt!2413839 lambda!368073) (dynLambda!26116 lambda!368073 lt!2413845))))

(declare-fun lt!2414033 () Unit!159211)

(assert (=> d!2070934 (= lt!2414033 (choose!49293 lt!2413839 lt!2413845 lambda!368073))))

(assert (=> d!2070934 (= lt!2413839 (store ((as const (Array Context!11706 Bool)) false) lt!2413845 true))))

(assert (=> d!2070934 (= (lemmaFlatMapOnSingletonSet!1500 lt!2413839 lt!2413845 lambda!368073) lt!2414033)))

(declare-fun b_lambda!249885 () Bool)

(assert (=> (not b_lambda!249885) (not d!2070934)))

(declare-fun bs!1692761 () Bool)

(assert (= bs!1692761 d!2070934))

(assert (=> bs!1692761 m!7377968))

(declare-fun m!7378932 () Bool)

(assert (=> bs!1692761 m!7378932))

(declare-fun m!7378934 () Bool)

(assert (=> bs!1692761 m!7378934))

(assert (=> bs!1692761 m!7377978))

(assert (=> b!6602004 d!2070934))

(declare-fun bm!577542 () Bool)

(declare-fun call!577547 () (InoxSet Context!11706))

(assert (=> bm!577542 (= call!577547 (derivationStepZipperDown!1717 (h!72031 (exprs!6353 lt!2413831)) (Context!11707 (t!379359 (exprs!6353 lt!2413831))) (h!72030 s!2326)))))

(declare-fun d!2070936 () Bool)

(declare-fun c!1216508 () Bool)

(declare-fun e!3995303 () Bool)

(assert (=> d!2070936 (= c!1216508 e!3995303)))

(declare-fun res!2707464 () Bool)

(assert (=> d!2070936 (=> (not res!2707464) (not e!3995303))))

(assert (=> d!2070936 (= res!2707464 ((_ is Cons!65583) (exprs!6353 lt!2413831)))))

(declare-fun e!3995305 () (InoxSet Context!11706))

(assert (=> d!2070936 (= (derivationStepZipperUp!1643 lt!2413831 (h!72030 s!2326)) e!3995305)))

(declare-fun b!6603030 () Bool)

(assert (=> b!6603030 (= e!3995305 ((_ map or) call!577547 (derivationStepZipperUp!1643 (Context!11707 (t!379359 (exprs!6353 lt!2413831))) (h!72030 s!2326))))))

(declare-fun b!6603031 () Bool)

(declare-fun e!3995304 () (InoxSet Context!11706))

(assert (=> b!6603031 (= e!3995304 call!577547)))

(declare-fun b!6603032 () Bool)

(assert (=> b!6603032 (= e!3995303 (nullable!6462 (h!72031 (exprs!6353 lt!2413831))))))

(declare-fun b!6603033 () Bool)

(assert (=> b!6603033 (= e!3995304 ((as const (Array Context!11706 Bool)) false))))

(declare-fun b!6603034 () Bool)

(assert (=> b!6603034 (= e!3995305 e!3995304)))

(declare-fun c!1216507 () Bool)

(assert (=> b!6603034 (= c!1216507 ((_ is Cons!65583) (exprs!6353 lt!2413831)))))

(assert (= (and d!2070936 res!2707464) b!6603032))

(assert (= (and d!2070936 c!1216508) b!6603030))

(assert (= (and d!2070936 (not c!1216508)) b!6603034))

(assert (= (and b!6603034 c!1216507) b!6603031))

(assert (= (and b!6603034 (not c!1216507)) b!6603033))

(assert (= (or b!6603030 b!6603031) bm!577542))

(declare-fun m!7378936 () Bool)

(assert (=> bm!577542 m!7378936))

(declare-fun m!7378938 () Bool)

(assert (=> b!6603030 m!7378938))

(declare-fun m!7378940 () Bool)

(assert (=> b!6603032 m!7378940))

(assert (=> b!6602004 d!2070936))

(declare-fun b!6603070 () Bool)

(declare-fun e!3995330 () Int)

(declare-fun e!3995333 () Int)

(assert (=> b!6603070 (= e!3995330 e!3995333)))

(declare-fun c!1216524 () Bool)

(assert (=> b!6603070 (= c!1216524 ((_ is Concat!25314) r!7292))))

(declare-fun b!6603071 () Bool)

(declare-fun e!3995334 () Int)

(declare-fun e!3995331 () Int)

(assert (=> b!6603071 (= e!3995334 e!3995331)))

(declare-fun c!1216527 () Bool)

(assert (=> b!6603071 (= c!1216527 ((_ is Star!16469) r!7292))))

(declare-fun b!6603072 () Bool)

(declare-fun call!577566 () Int)

(assert (=> b!6603072 (= e!3995333 (+ 1 call!577566))))

(declare-fun b!6603073 () Bool)

(declare-fun e!3995329 () Bool)

(declare-fun e!3995327 () Bool)

(assert (=> b!6603073 (= e!3995329 e!3995327)))

(declare-fun res!2707471 () Bool)

(declare-fun lt!2414036 () Int)

(declare-fun call!577563 () Int)

(assert (=> b!6603073 (= res!2707471 (> lt!2414036 call!577563))))

(assert (=> b!6603073 (=> (not res!2707471) (not e!3995327))))

(declare-fun b!6603074 () Bool)

(assert (=> b!6603074 (= e!3995330 (+ 1 call!577566))))

(declare-fun b!6603075 () Bool)

(declare-fun e!3995328 () Bool)

(declare-fun call!577565 () Int)

(assert (=> b!6603075 (= e!3995328 (> lt!2414036 call!577565))))

(declare-fun bm!577557 () Bool)

(declare-fun call!577564 () Int)

(declare-fun call!577567 () Int)

(declare-fun c!1216525 () Bool)

(assert (=> bm!577557 (= call!577566 (maxBigInt!0 (ite c!1216525 call!577564 call!577567) (ite c!1216525 call!577567 call!577564)))))

(declare-fun bm!577558 () Bool)

(declare-fun c!1216529 () Bool)

(assert (=> bm!577558 (= call!577565 (regexDepth!366 (ite c!1216529 (regTwo!33451 r!7292) (regTwo!33450 r!7292))))))

(declare-fun b!6603076 () Bool)

(declare-fun res!2707473 () Bool)

(assert (=> b!6603076 (=> (not res!2707473) (not e!3995328))))

(declare-fun call!577562 () Int)

(assert (=> b!6603076 (= res!2707473 (> lt!2414036 call!577562))))

(declare-fun e!3995335 () Bool)

(assert (=> b!6603076 (= e!3995335 e!3995328)))

(declare-fun c!1216526 () Bool)

(declare-fun bm!577559 () Bool)

(assert (=> bm!577559 (= call!577563 (regexDepth!366 (ite c!1216529 (regOne!33451 r!7292) (ite c!1216526 (regOne!33450 r!7292) (reg!16798 r!7292)))))))

(declare-fun b!6603077 () Bool)

(declare-fun e!3995332 () Bool)

(assert (=> b!6603077 (= e!3995332 (> lt!2414036 call!577562))))

(declare-fun bm!577560 () Bool)

(declare-fun call!577568 () Int)

(assert (=> bm!577560 (= call!577567 call!577568)))

(declare-fun b!6603069 () Bool)

(assert (=> b!6603069 (= e!3995332 (= lt!2414036 1))))

(declare-fun d!2070938 () Bool)

(declare-fun e!3995326 () Bool)

(assert (=> d!2070938 e!3995326))

(declare-fun res!2707472 () Bool)

(assert (=> d!2070938 (=> (not res!2707472) (not e!3995326))))

(assert (=> d!2070938 (= res!2707472 (> lt!2414036 0))))

(assert (=> d!2070938 (= lt!2414036 e!3995334)))

(declare-fun c!1216523 () Bool)

(assert (=> d!2070938 (= c!1216523 ((_ is ElementMatch!16469) r!7292))))

(assert (=> d!2070938 (= (regexDepth!366 r!7292) lt!2414036)))

(declare-fun bm!577561 () Bool)

(assert (=> bm!577561 (= call!577562 call!577563)))

(declare-fun b!6603078 () Bool)

(assert (=> b!6603078 (= c!1216525 ((_ is Union!16469) r!7292))))

(assert (=> b!6603078 (= e!3995331 e!3995330)))

(declare-fun bm!577562 () Bool)

(assert (=> bm!577562 (= call!577564 (regexDepth!366 (ite c!1216525 (regOne!33451 r!7292) (regTwo!33450 r!7292))))))

(declare-fun b!6603079 () Bool)

(declare-fun c!1216528 () Bool)

(assert (=> b!6603079 (= c!1216528 ((_ is Star!16469) r!7292))))

(assert (=> b!6603079 (= e!3995335 e!3995332)))

(declare-fun b!6603080 () Bool)

(assert (=> b!6603080 (= e!3995329 e!3995335)))

(assert (=> b!6603080 (= c!1216526 ((_ is Concat!25314) r!7292))))

(declare-fun bm!577563 () Bool)

(assert (=> bm!577563 (= call!577568 (regexDepth!366 (ite c!1216527 (reg!16798 r!7292) (ite c!1216525 (regTwo!33451 r!7292) (regOne!33450 r!7292)))))))

(declare-fun b!6603081 () Bool)

(assert (=> b!6603081 (= e!3995326 e!3995329)))

(assert (=> b!6603081 (= c!1216529 ((_ is Union!16469) r!7292))))

(declare-fun b!6603082 () Bool)

(assert (=> b!6603082 (= e!3995331 (+ 1 call!577568))))

(declare-fun b!6603083 () Bool)

(assert (=> b!6603083 (= e!3995333 1)))

(declare-fun b!6603084 () Bool)

(assert (=> b!6603084 (= e!3995327 (> lt!2414036 call!577565))))

(declare-fun b!6603085 () Bool)

(assert (=> b!6603085 (= e!3995334 1)))

(assert (= (and d!2070938 c!1216523) b!6603085))

(assert (= (and d!2070938 (not c!1216523)) b!6603071))

(assert (= (and b!6603071 c!1216527) b!6603082))

(assert (= (and b!6603071 (not c!1216527)) b!6603078))

(assert (= (and b!6603078 c!1216525) b!6603074))

(assert (= (and b!6603078 (not c!1216525)) b!6603070))

(assert (= (and b!6603070 c!1216524) b!6603072))

(assert (= (and b!6603070 (not c!1216524)) b!6603083))

(assert (= (or b!6603074 b!6603072) bm!577560))

(assert (= (or b!6603074 b!6603072) bm!577562))

(assert (= (or b!6603074 b!6603072) bm!577557))

(assert (= (or b!6603082 bm!577560) bm!577563))

(assert (= (and d!2070938 res!2707472) b!6603081))

(assert (= (and b!6603081 c!1216529) b!6603073))

(assert (= (and b!6603081 (not c!1216529)) b!6603080))

(assert (= (and b!6603073 res!2707471) b!6603084))

(assert (= (and b!6603080 c!1216526) b!6603076))

(assert (= (and b!6603080 (not c!1216526)) b!6603079))

(assert (= (and b!6603076 res!2707473) b!6603075))

(assert (= (and b!6603079 c!1216528) b!6603077))

(assert (= (and b!6603079 (not c!1216528)) b!6603069))

(assert (= (or b!6603076 b!6603077) bm!577561))

(assert (= (or b!6603084 b!6603075) bm!577558))

(assert (= (or b!6603073 bm!577561) bm!577559))

(declare-fun m!7378942 () Bool)

(assert (=> bm!577562 m!7378942))

(declare-fun m!7378944 () Bool)

(assert (=> bm!577558 m!7378944))

(declare-fun m!7378946 () Bool)

(assert (=> bm!577563 m!7378946))

(declare-fun m!7378948 () Bool)

(assert (=> bm!577557 m!7378948))

(declare-fun m!7378950 () Bool)

(assert (=> bm!577559 m!7378950))

(assert (=> b!6602002 d!2070938))

(declare-fun b!6603087 () Bool)

(declare-fun e!3995340 () Int)

(declare-fun e!3995343 () Int)

(assert (=> b!6603087 (= e!3995340 e!3995343)))

(declare-fun c!1216531 () Bool)

(assert (=> b!6603087 (= c!1216531 ((_ is Concat!25314) lt!2413854))))

(declare-fun b!6603088 () Bool)

(declare-fun e!3995344 () Int)

(declare-fun e!3995341 () Int)

(assert (=> b!6603088 (= e!3995344 e!3995341)))

(declare-fun c!1216534 () Bool)

(assert (=> b!6603088 (= c!1216534 ((_ is Star!16469) lt!2413854))))

(declare-fun b!6603089 () Bool)

(declare-fun call!577573 () Int)

(assert (=> b!6603089 (= e!3995343 (+ 1 call!577573))))

(declare-fun b!6603090 () Bool)

(declare-fun e!3995339 () Bool)

(declare-fun e!3995337 () Bool)

(assert (=> b!6603090 (= e!3995339 e!3995337)))

(declare-fun res!2707474 () Bool)

(declare-fun lt!2414037 () Int)

(declare-fun call!577570 () Int)

(assert (=> b!6603090 (= res!2707474 (> lt!2414037 call!577570))))

(assert (=> b!6603090 (=> (not res!2707474) (not e!3995337))))

(declare-fun b!6603091 () Bool)

(assert (=> b!6603091 (= e!3995340 (+ 1 call!577573))))

(declare-fun b!6603092 () Bool)

(declare-fun e!3995338 () Bool)

(declare-fun call!577572 () Int)

(assert (=> b!6603092 (= e!3995338 (> lt!2414037 call!577572))))

(declare-fun c!1216532 () Bool)

(declare-fun bm!577564 () Bool)

(declare-fun call!577571 () Int)

(declare-fun call!577574 () Int)

(assert (=> bm!577564 (= call!577573 (maxBigInt!0 (ite c!1216532 call!577571 call!577574) (ite c!1216532 call!577574 call!577571)))))

(declare-fun bm!577565 () Bool)

(declare-fun c!1216536 () Bool)

(assert (=> bm!577565 (= call!577572 (regexDepth!366 (ite c!1216536 (regTwo!33451 lt!2413854) (regTwo!33450 lt!2413854))))))

(declare-fun b!6603093 () Bool)

(declare-fun res!2707476 () Bool)

(assert (=> b!6603093 (=> (not res!2707476) (not e!3995338))))

(declare-fun call!577569 () Int)

(assert (=> b!6603093 (= res!2707476 (> lt!2414037 call!577569))))

(declare-fun e!3995345 () Bool)

(assert (=> b!6603093 (= e!3995345 e!3995338)))

(declare-fun bm!577566 () Bool)

(declare-fun c!1216533 () Bool)

(assert (=> bm!577566 (= call!577570 (regexDepth!366 (ite c!1216536 (regOne!33451 lt!2413854) (ite c!1216533 (regOne!33450 lt!2413854) (reg!16798 lt!2413854)))))))

(declare-fun b!6603094 () Bool)

(declare-fun e!3995342 () Bool)

(assert (=> b!6603094 (= e!3995342 (> lt!2414037 call!577569))))

(declare-fun bm!577567 () Bool)

(declare-fun call!577575 () Int)

(assert (=> bm!577567 (= call!577574 call!577575)))

(declare-fun b!6603086 () Bool)

(assert (=> b!6603086 (= e!3995342 (= lt!2414037 1))))

(declare-fun d!2070940 () Bool)

(declare-fun e!3995336 () Bool)

(assert (=> d!2070940 e!3995336))

(declare-fun res!2707475 () Bool)

(assert (=> d!2070940 (=> (not res!2707475) (not e!3995336))))

(assert (=> d!2070940 (= res!2707475 (> lt!2414037 0))))

(assert (=> d!2070940 (= lt!2414037 e!3995344)))

(declare-fun c!1216530 () Bool)

(assert (=> d!2070940 (= c!1216530 ((_ is ElementMatch!16469) lt!2413854))))

(assert (=> d!2070940 (= (regexDepth!366 lt!2413854) lt!2414037)))

(declare-fun bm!577568 () Bool)

(assert (=> bm!577568 (= call!577569 call!577570)))

(declare-fun b!6603095 () Bool)

(assert (=> b!6603095 (= c!1216532 ((_ is Union!16469) lt!2413854))))

(assert (=> b!6603095 (= e!3995341 e!3995340)))

(declare-fun bm!577569 () Bool)

(assert (=> bm!577569 (= call!577571 (regexDepth!366 (ite c!1216532 (regOne!33451 lt!2413854) (regTwo!33450 lt!2413854))))))

(declare-fun b!6603096 () Bool)

(declare-fun c!1216535 () Bool)

(assert (=> b!6603096 (= c!1216535 ((_ is Star!16469) lt!2413854))))

(assert (=> b!6603096 (= e!3995345 e!3995342)))

(declare-fun b!6603097 () Bool)

(assert (=> b!6603097 (= e!3995339 e!3995345)))

(assert (=> b!6603097 (= c!1216533 ((_ is Concat!25314) lt!2413854))))

(declare-fun bm!577570 () Bool)

(assert (=> bm!577570 (= call!577575 (regexDepth!366 (ite c!1216534 (reg!16798 lt!2413854) (ite c!1216532 (regTwo!33451 lt!2413854) (regOne!33450 lt!2413854)))))))

(declare-fun b!6603098 () Bool)

(assert (=> b!6603098 (= e!3995336 e!3995339)))

(assert (=> b!6603098 (= c!1216536 ((_ is Union!16469) lt!2413854))))

(declare-fun b!6603099 () Bool)

(assert (=> b!6603099 (= e!3995341 (+ 1 call!577575))))

(declare-fun b!6603100 () Bool)

(assert (=> b!6603100 (= e!3995343 1)))

(declare-fun b!6603101 () Bool)

(assert (=> b!6603101 (= e!3995337 (> lt!2414037 call!577572))))

(declare-fun b!6603102 () Bool)

(assert (=> b!6603102 (= e!3995344 1)))

(assert (= (and d!2070940 c!1216530) b!6603102))

(assert (= (and d!2070940 (not c!1216530)) b!6603088))

(assert (= (and b!6603088 c!1216534) b!6603099))

(assert (= (and b!6603088 (not c!1216534)) b!6603095))

(assert (= (and b!6603095 c!1216532) b!6603091))

(assert (= (and b!6603095 (not c!1216532)) b!6603087))

(assert (= (and b!6603087 c!1216531) b!6603089))

(assert (= (and b!6603087 (not c!1216531)) b!6603100))

(assert (= (or b!6603091 b!6603089) bm!577567))

(assert (= (or b!6603091 b!6603089) bm!577569))

(assert (= (or b!6603091 b!6603089) bm!577564))

(assert (= (or b!6603099 bm!577567) bm!577570))

(assert (= (and d!2070940 res!2707475) b!6603098))

(assert (= (and b!6603098 c!1216536) b!6603090))

(assert (= (and b!6603098 (not c!1216536)) b!6603097))

(assert (= (and b!6603090 res!2707474) b!6603101))

(assert (= (and b!6603097 c!1216533) b!6603093))

(assert (= (and b!6603097 (not c!1216533)) b!6603096))

(assert (= (and b!6603093 res!2707476) b!6603092))

(assert (= (and b!6603096 c!1216535) b!6603094))

(assert (= (and b!6603096 (not c!1216535)) b!6603086))

(assert (= (or b!6603093 b!6603094) bm!577568))

(assert (= (or b!6603101 b!6603092) bm!577565))

(assert (= (or b!6603090 bm!577568) bm!577566))

(declare-fun m!7378952 () Bool)

(assert (=> bm!577569 m!7378952))

(declare-fun m!7378954 () Bool)

(assert (=> bm!577565 m!7378954))

(declare-fun m!7378956 () Bool)

(assert (=> bm!577570 m!7378956))

(declare-fun m!7378958 () Bool)

(assert (=> bm!577564 m!7378958))

(declare-fun m!7378960 () Bool)

(assert (=> bm!577566 m!7378960))

(assert (=> b!6602002 d!2070940))

(declare-fun bs!1692762 () Bool)

(declare-fun d!2070942 () Bool)

(assert (= bs!1692762 (and d!2070942 d!2070816)))

(declare-fun lambda!368179 () Int)

(assert (=> bs!1692762 (= lambda!368179 lambda!368136)))

(declare-fun bs!1692763 () Bool)

(assert (= bs!1692763 (and d!2070942 d!2070800)))

(assert (=> bs!1692763 (= lambda!368179 lambda!368133)))

(declare-fun bs!1692764 () Bool)

(assert (= bs!1692764 (and d!2070942 d!2070818)))

(assert (=> bs!1692764 (= lambda!368179 lambda!368139)))

(declare-fun bs!1692765 () Bool)

(assert (= bs!1692765 (and d!2070942 d!2070902)))

(assert (=> bs!1692765 (= lambda!368179 lambda!368178)))

(declare-fun bs!1692766 () Bool)

(assert (= bs!1692766 (and d!2070942 d!2070734)))

(assert (=> bs!1692766 (= lambda!368179 lambda!368108)))

(declare-fun b!6603103 () Bool)

(declare-fun e!3995346 () Bool)

(declare-fun e!3995348 () Bool)

(assert (=> b!6603103 (= e!3995346 e!3995348)))

(declare-fun c!1216540 () Bool)

(assert (=> b!6603103 (= c!1216540 (isEmpty!37854 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6603104 () Bool)

(declare-fun e!3995349 () Regex!16469)

(assert (=> b!6603104 (= e!3995349 (Concat!25314 (h!72031 (t!379359 (exprs!6353 (h!72032 zl!343)))) (generalisedConcat!2066 (t!379359 (t!379359 (exprs!6353 (h!72032 zl!343)))))))))

(assert (=> d!2070942 e!3995346))

(declare-fun res!2707478 () Bool)

(assert (=> d!2070942 (=> (not res!2707478) (not e!3995346))))

(declare-fun lt!2414038 () Regex!16469)

(assert (=> d!2070942 (= res!2707478 (validRegex!8205 lt!2414038))))

(declare-fun e!3995347 () Regex!16469)

(assert (=> d!2070942 (= lt!2414038 e!3995347)))

(declare-fun c!1216539 () Bool)

(declare-fun e!3995350 () Bool)

(assert (=> d!2070942 (= c!1216539 e!3995350)))

(declare-fun res!2707477 () Bool)

(assert (=> d!2070942 (=> (not res!2707477) (not e!3995350))))

(assert (=> d!2070942 (= res!2707477 ((_ is Cons!65583) (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(assert (=> d!2070942 (forall!15661 (t!379359 (exprs!6353 (h!72032 zl!343))) lambda!368179)))

(assert (=> d!2070942 (= (generalisedConcat!2066 (t!379359 (exprs!6353 (h!72032 zl!343)))) lt!2414038)))

(declare-fun b!6603105 () Bool)

(assert (=> b!6603105 (= e!3995350 (isEmpty!37854 (t!379359 (t!379359 (exprs!6353 (h!72032 zl!343))))))))

(declare-fun b!6603106 () Bool)

(assert (=> b!6603106 (= e!3995347 e!3995349)))

(declare-fun c!1216538 () Bool)

(assert (=> b!6603106 (= c!1216538 ((_ is Cons!65583) (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6603107 () Bool)

(declare-fun e!3995351 () Bool)

(assert (=> b!6603107 (= e!3995351 (isConcat!1370 lt!2414038))))

(declare-fun b!6603108 () Bool)

(assert (=> b!6603108 (= e!3995351 (= lt!2414038 (head!13390 (t!379359 (exprs!6353 (h!72032 zl!343))))))))

(declare-fun b!6603109 () Bool)

(assert (=> b!6603109 (= e!3995349 EmptyExpr!16469)))

(declare-fun b!6603110 () Bool)

(assert (=> b!6603110 (= e!3995348 (isEmptyExpr!1847 lt!2414038))))

(declare-fun b!6603111 () Bool)

(assert (=> b!6603111 (= e!3995347 (h!72031 (t!379359 (exprs!6353 (h!72032 zl!343)))))))

(declare-fun b!6603112 () Bool)

(assert (=> b!6603112 (= e!3995348 e!3995351)))

(declare-fun c!1216537 () Bool)

(assert (=> b!6603112 (= c!1216537 (isEmpty!37854 (tail!12475 (t!379359 (exprs!6353 (h!72032 zl!343))))))))

(assert (= (and d!2070942 res!2707477) b!6603105))

(assert (= (and d!2070942 c!1216539) b!6603111))

(assert (= (and d!2070942 (not c!1216539)) b!6603106))

(assert (= (and b!6603106 c!1216538) b!6603104))

(assert (= (and b!6603106 (not c!1216538)) b!6603109))

(assert (= (and d!2070942 res!2707478) b!6603103))

(assert (= (and b!6603103 c!1216540) b!6603110))

(assert (= (and b!6603103 (not c!1216540)) b!6603112))

(assert (= (and b!6603112 c!1216537) b!6603108))

(assert (= (and b!6603112 (not c!1216537)) b!6603107))

(declare-fun m!7378962 () Bool)

(assert (=> b!6603104 m!7378962))

(declare-fun m!7378964 () Bool)

(assert (=> b!6603108 m!7378964))

(declare-fun m!7378966 () Bool)

(assert (=> d!2070942 m!7378966))

(declare-fun m!7378968 () Bool)

(assert (=> d!2070942 m!7378968))

(declare-fun m!7378970 () Bool)

(assert (=> b!6603110 m!7378970))

(assert (=> b!6603103 m!7377946))

(declare-fun m!7378972 () Bool)

(assert (=> b!6603107 m!7378972))

(declare-fun m!7378974 () Bool)

(assert (=> b!6603105 m!7378974))

(declare-fun m!7378976 () Bool)

(assert (=> b!6603112 m!7378976))

(assert (=> b!6603112 m!7378976))

(declare-fun m!7378978 () Bool)

(assert (=> b!6603112 m!7378978))

(assert (=> b!6602002 d!2070942))

(declare-fun b!6603125 () Bool)

(declare-fun e!3995354 () Bool)

(declare-fun tp!1820031 () Bool)

(assert (=> b!6603125 (= e!3995354 tp!1820031)))

(declare-fun b!6603124 () Bool)

(declare-fun tp!1820032 () Bool)

(declare-fun tp!1820028 () Bool)

(assert (=> b!6603124 (= e!3995354 (and tp!1820032 tp!1820028))))

(declare-fun b!6603126 () Bool)

(declare-fun tp!1820030 () Bool)

(declare-fun tp!1820029 () Bool)

(assert (=> b!6603126 (= e!3995354 (and tp!1820030 tp!1820029))))

(declare-fun b!6603123 () Bool)

(assert (=> b!6603123 (= e!3995354 tp_is_empty!42191)))

(assert (=> b!6602012 (= tp!1819954 e!3995354)))

(assert (= (and b!6602012 ((_ is ElementMatch!16469) (regOne!33450 r!7292))) b!6603123))

(assert (= (and b!6602012 ((_ is Concat!25314) (regOne!33450 r!7292))) b!6603124))

(assert (= (and b!6602012 ((_ is Star!16469) (regOne!33450 r!7292))) b!6603125))

(assert (= (and b!6602012 ((_ is Union!16469) (regOne!33450 r!7292))) b!6603126))

(declare-fun b!6603129 () Bool)

(declare-fun e!3995355 () Bool)

(declare-fun tp!1820036 () Bool)

(assert (=> b!6603129 (= e!3995355 tp!1820036)))

(declare-fun b!6603128 () Bool)

(declare-fun tp!1820037 () Bool)

(declare-fun tp!1820033 () Bool)

(assert (=> b!6603128 (= e!3995355 (and tp!1820037 tp!1820033))))

(declare-fun b!6603130 () Bool)

(declare-fun tp!1820035 () Bool)

(declare-fun tp!1820034 () Bool)

(assert (=> b!6603130 (= e!3995355 (and tp!1820035 tp!1820034))))

(declare-fun b!6603127 () Bool)

(assert (=> b!6603127 (= e!3995355 tp_is_empty!42191)))

(assert (=> b!6602012 (= tp!1819952 e!3995355)))

(assert (= (and b!6602012 ((_ is ElementMatch!16469) (regTwo!33450 r!7292))) b!6603127))

(assert (= (and b!6602012 ((_ is Concat!25314) (regTwo!33450 r!7292))) b!6603128))

(assert (= (and b!6602012 ((_ is Star!16469) (regTwo!33450 r!7292))) b!6603129))

(assert (= (and b!6602012 ((_ is Union!16469) (regTwo!33450 r!7292))) b!6603130))

(declare-fun b!6603138 () Bool)

(declare-fun e!3995361 () Bool)

(declare-fun tp!1820042 () Bool)

(assert (=> b!6603138 (= e!3995361 tp!1820042)))

(declare-fun b!6603137 () Bool)

(declare-fun e!3995360 () Bool)

(declare-fun tp!1820043 () Bool)

(assert (=> b!6603137 (= e!3995360 (and (inv!84419 (h!72032 (t!379360 zl!343))) e!3995361 tp!1820043))))

(assert (=> b!6601981 (= tp!1819953 e!3995360)))

(assert (= b!6603137 b!6603138))

(assert (= (and b!6601981 ((_ is Cons!65584) (t!379360 zl!343))) b!6603137))

(declare-fun m!7378980 () Bool)

(assert (=> b!6603137 m!7378980))

(declare-fun b!6603141 () Bool)

(declare-fun e!3995362 () Bool)

(declare-fun tp!1820047 () Bool)

(assert (=> b!6603141 (= e!3995362 tp!1820047)))

(declare-fun b!6603140 () Bool)

(declare-fun tp!1820048 () Bool)

(declare-fun tp!1820044 () Bool)

(assert (=> b!6603140 (= e!3995362 (and tp!1820048 tp!1820044))))

(declare-fun b!6603142 () Bool)

(declare-fun tp!1820046 () Bool)

(declare-fun tp!1820045 () Bool)

(assert (=> b!6603142 (= e!3995362 (and tp!1820046 tp!1820045))))

(declare-fun b!6603139 () Bool)

(assert (=> b!6603139 (= e!3995362 tp_is_empty!42191)))

(assert (=> b!6601984 (= tp!1819955 e!3995362)))

(assert (= (and b!6601984 ((_ is ElementMatch!16469) (reg!16798 r!7292))) b!6603139))

(assert (= (and b!6601984 ((_ is Concat!25314) (reg!16798 r!7292))) b!6603140))

(assert (= (and b!6601984 ((_ is Star!16469) (reg!16798 r!7292))) b!6603141))

(assert (= (and b!6601984 ((_ is Union!16469) (reg!16798 r!7292))) b!6603142))

(declare-fun b!6603145 () Bool)

(declare-fun e!3995363 () Bool)

(declare-fun tp!1820052 () Bool)

(assert (=> b!6603145 (= e!3995363 tp!1820052)))

(declare-fun b!6603144 () Bool)

(declare-fun tp!1820053 () Bool)

(declare-fun tp!1820049 () Bool)

(assert (=> b!6603144 (= e!3995363 (and tp!1820053 tp!1820049))))

(declare-fun b!6603146 () Bool)

(declare-fun tp!1820051 () Bool)

(declare-fun tp!1820050 () Bool)

(assert (=> b!6603146 (= e!3995363 (and tp!1820051 tp!1820050))))

(declare-fun b!6603143 () Bool)

(assert (=> b!6603143 (= e!3995363 tp_is_empty!42191)))

(assert (=> b!6601999 (= tp!1819958 e!3995363)))

(assert (= (and b!6601999 ((_ is ElementMatch!16469) (regOne!33451 r!7292))) b!6603143))

(assert (= (and b!6601999 ((_ is Concat!25314) (regOne!33451 r!7292))) b!6603144))

(assert (= (and b!6601999 ((_ is Star!16469) (regOne!33451 r!7292))) b!6603145))

(assert (= (and b!6601999 ((_ is Union!16469) (regOne!33451 r!7292))) b!6603146))

(declare-fun b!6603149 () Bool)

(declare-fun e!3995364 () Bool)

(declare-fun tp!1820057 () Bool)

(assert (=> b!6603149 (= e!3995364 tp!1820057)))

(declare-fun b!6603148 () Bool)

(declare-fun tp!1820058 () Bool)

(declare-fun tp!1820054 () Bool)

(assert (=> b!6603148 (= e!3995364 (and tp!1820058 tp!1820054))))

(declare-fun b!6603150 () Bool)

(declare-fun tp!1820056 () Bool)

(declare-fun tp!1820055 () Bool)

(assert (=> b!6603150 (= e!3995364 (and tp!1820056 tp!1820055))))

(declare-fun b!6603147 () Bool)

(assert (=> b!6603147 (= e!3995364 tp_is_empty!42191)))

(assert (=> b!6601999 (= tp!1819957 e!3995364)))

(assert (= (and b!6601999 ((_ is ElementMatch!16469) (regTwo!33451 r!7292))) b!6603147))

(assert (= (and b!6601999 ((_ is Concat!25314) (regTwo!33451 r!7292))) b!6603148))

(assert (= (and b!6601999 ((_ is Star!16469) (regTwo!33451 r!7292))) b!6603149))

(assert (= (and b!6601999 ((_ is Union!16469) (regTwo!33451 r!7292))) b!6603150))

(declare-fun condSetEmpty!45090 () Bool)

(assert (=> setNonEmpty!45084 (= condSetEmpty!45090 (= setRest!45084 ((as const (Array Context!11706 Bool)) false)))))

(declare-fun setRes!45090 () Bool)

(assert (=> setNonEmpty!45084 (= tp!1819956 setRes!45090)))

(declare-fun setIsEmpty!45090 () Bool)

(assert (=> setIsEmpty!45090 setRes!45090))

(declare-fun setElem!45090 () Context!11706)

(declare-fun e!3995367 () Bool)

(declare-fun tp!1820063 () Bool)

(declare-fun setNonEmpty!45090 () Bool)

(assert (=> setNonEmpty!45090 (= setRes!45090 (and tp!1820063 (inv!84419 setElem!45090) e!3995367))))

(declare-fun setRest!45090 () (InoxSet Context!11706))

(assert (=> setNonEmpty!45090 (= setRest!45084 ((_ map or) (store ((as const (Array Context!11706 Bool)) false) setElem!45090 true) setRest!45090))))

(declare-fun b!6603155 () Bool)

(declare-fun tp!1820064 () Bool)

(assert (=> b!6603155 (= e!3995367 tp!1820064)))

(assert (= (and setNonEmpty!45084 condSetEmpty!45090) setIsEmpty!45090))

(assert (= (and setNonEmpty!45084 (not condSetEmpty!45090)) setNonEmpty!45090))

(assert (= setNonEmpty!45090 b!6603155))

(declare-fun m!7378982 () Bool)

(assert (=> setNonEmpty!45090 m!7378982))

(declare-fun b!6603160 () Bool)

(declare-fun e!3995370 () Bool)

(declare-fun tp!1820069 () Bool)

(declare-fun tp!1820070 () Bool)

(assert (=> b!6603160 (= e!3995370 (and tp!1820069 tp!1820070))))

(assert (=> b!6602003 (= tp!1819950 e!3995370)))

(assert (= (and b!6602003 ((_ is Cons!65583) (exprs!6353 (h!72032 zl!343)))) b!6603160))

(declare-fun b!6603161 () Bool)

(declare-fun e!3995371 () Bool)

(declare-fun tp!1820071 () Bool)

(declare-fun tp!1820072 () Bool)

(assert (=> b!6603161 (= e!3995371 (and tp!1820071 tp!1820072))))

(assert (=> b!6601983 (= tp!1819951 e!3995371)))

(assert (= (and b!6601983 ((_ is Cons!65583) (exprs!6353 setElem!45084))) b!6603161))

(declare-fun b!6603166 () Bool)

(declare-fun e!3995374 () Bool)

(declare-fun tp!1820075 () Bool)

(assert (=> b!6603166 (= e!3995374 (and tp_is_empty!42191 tp!1820075))))

(assert (=> b!6601993 (= tp!1819959 e!3995374)))

(assert (= (and b!6601993 ((_ is Cons!65582) (t!379358 s!2326))) b!6603166))

(declare-fun b_lambda!249887 () Bool)

(assert (= b_lambda!249885 (or b!6601980 b_lambda!249887)))

(declare-fun bs!1692767 () Bool)

(declare-fun d!2070944 () Bool)

(assert (= bs!1692767 (and d!2070944 b!6601980)))

(assert (=> bs!1692767 (= (dynLambda!26116 lambda!368073 lt!2413845) (derivationStepZipperUp!1643 lt!2413845 (h!72030 s!2326)))))

(assert (=> bs!1692767 m!7377966))

(assert (=> d!2070934 d!2070944))

(declare-fun b_lambda!249889 () Bool)

(assert (= b_lambda!249883 (or b!6601980 b_lambda!249889)))

(declare-fun bs!1692768 () Bool)

(declare-fun d!2070946 () Bool)

(assert (= bs!1692768 (and d!2070946 b!6601980)))

(assert (=> bs!1692768 (= (dynLambda!26116 lambda!368073 lt!2413831) (derivationStepZipperUp!1643 lt!2413831 (h!72030 s!2326)))))

(assert (=> bs!1692768 m!7377972))

(assert (=> d!2070932 d!2070946))

(declare-fun b_lambda!249891 () Bool)

(assert (= b_lambda!249877 (or b!6601980 b_lambda!249891)))

(declare-fun bs!1692769 () Bool)

(declare-fun d!2070948 () Bool)

(assert (= bs!1692769 (and d!2070948 b!6601980)))

(assert (=> bs!1692769 (= (dynLambda!26116 lambda!368073 lt!2413843) (derivationStepZipperUp!1643 lt!2413843 (h!72030 s!2326)))))

(assert (=> bs!1692769 m!7378006))

(assert (=> d!2070826 d!2070948))

(declare-fun b_lambda!249893 () Bool)

(assert (= b_lambda!249879 (or b!6601980 b_lambda!249893)))

(declare-fun bs!1692770 () Bool)

(declare-fun d!2070950 () Bool)

(assert (= bs!1692770 (and d!2070950 b!6601980)))

(assert (=> bs!1692770 (= (dynLambda!26116 lambda!368073 lt!2413850) (derivationStepZipperUp!1643 lt!2413850 (h!72030 s!2326)))))

(assert (=> bs!1692770 m!7377986))

(assert (=> d!2070854 d!2070950))

(declare-fun b_lambda!249895 () Bool)

(assert (= b_lambda!249881 (or b!6601980 b_lambda!249895)))

(declare-fun bs!1692771 () Bool)

(declare-fun d!2070952 () Bool)

(assert (= bs!1692771 (and d!2070952 b!6601980)))

(assert (=> bs!1692771 (= (dynLambda!26116 lambda!368073 (h!72032 zl!343)) (derivationStepZipperUp!1643 (h!72032 zl!343) (h!72030 s!2326)))))

(assert (=> bs!1692771 m!7377998))

(assert (=> d!2070912 d!2070952))

(check-sat (not b!6602861) (not b!6602985) (not bm!577570) (not d!2070818) (not b!6602995) (not b!6602917) (not bm!577515) (not d!2070942) (not b!6603144) (not d!2070912) (not b!6603129) (not b!6603148) (not bm!577540) (not b!6602859) (not b!6603128) (not b!6603155) (not d!2070886) (not b!6603104) (not b!6602718) (not b!6602974) (not bm!577524) (not d!2070882) (not d!2070916) (not d!2070820) (not b!6603025) (not d!2070770) (not b!6602839) (not bm!577496) (not b!6603146) (not b!6602579) (not b_lambda!249891) (not b!6602922) (not bm!577474) (not b!6603112) (not bm!577528) (not bs!1692769) (not b!6602752) (not bm!577514) (not b!6603108) (not bm!577516) (not b!6602848) (not d!2070800) (not b!6603145) (not b!6602899) (not bm!577522) (not d!2070906) (not b!6602754) (not bm!577530) (not b!6602967) (not d!2070934) (not b!6602835) (not b!6602968) (not b!6602577) (not bm!577542) (not b!6602719) (not b!6602998) (not b!6602566) (not b!6602981) (not b!6602412) (not b_lambda!249893) (not bm!577566) (not d!2070878) (not d!2070738) (not d!2070888) (not bs!1692768) (not bm!577569) (not d!2070832) (not d!2070898) (not b!6602722) (not d!2070816) (not bm!577506) (not bm!577525) (not b!6602751) (not b!6602834) (not b!6603126) (not b!6603137) (not b!6602944) (not d!2070868) (not b!6603166) (not b!6602591) (not b!6602928) (not bm!577477) (not b_lambda!249889) (not d!2070842) (not d!2070844) (not d!2070892) (not b!6602726) (not b!6603032) (not d!2070896) (not d!2070846) (not b!6603160) (not d!2070880) (not b!6602565) (not b!6602441) (not bm!577531) (not b!6602749) (not bs!1692767) (not b!6602761) (not bm!577529) (not d!2070836) (not bm!577479) (not b!6603000) (not b!6602993) (not b!6603020) (not b!6603130) (not d!2070854) (not d!2070822) (not b!6603103) (not b!6602924) (not d!2070866) (not b!6602960) (not b!6603003) (not b!6602979) (not d!2070924) (not bm!577523) (not d!2070928) (not d!2070930) (not b!6602833) (not b!6602864) (not bm!577539) (not bm!577521) (not d!2070768) (not b!6602763) (not bm!577533) (not b!6602748) (not d!2070876) (not bm!577537) (not b!6602717) (not b_lambda!249887) (not bm!577562) (not d!2070902) (not b!6602994) (not b!6602956) (not d!2070828) (not b!6602593) (not b!6602764) (not b!6603027) (not b!6603022) (not d!2070932) (not bm!577495) (not b!6603110) (not b!6602750) (not b!6602587) (not b!6602999) (not b!6602866) (not b!6602586) (not b!6602440) (not b!6602836) (not b!6602572) (not b!6602594) (not d!2070890) (not b!6602903) (not d!2070910) (not bm!577541) (not bm!577559) (not d!2070728) (not b!6602721) (not b!6602952) (not b!6603142) (not d!2070884) (not bm!577564) (not b!6602580) (not b!6603150) (not b!6602775) (not d!2070834) (not bs!1692770) (not b!6602992) (not d!2070872) (not d!2070858) (not bm!577532) (not b!6603161) (not b!6603030) (not b!6603140) (not b!6603125) (not bm!577557) (not b!6602581) (not bs!1692771) (not b!6602918) tp_is_empty!42191 (not b!6602945) (not d!2070734) (not d!2070904) (not b!6603141) (not b!6602975) (not b!6602937) (not b!6602442) (not d!2070848) (not d!2070838) (not b!6603107) (not bm!577558) (not d!2070840) (not b!6603149) (not b!6603004) (not b!6602910) (not bm!577565) (not b!6603105) (not bm!577534) (not b!6602912) (not b!6602724) (not d!2070776) (not b_lambda!249895) (not d!2070850) (not b!6602911) (not b!6603124) (not b!6602567) (not b!6602961) (not b!6602969) (not b!6602777) (not b!6603019) (not bm!577527) (not b!6602443) (not setNonEmpty!45090) (not b!6603006) (not b!6602962) (not b!6602946) (not d!2070900) (not d!2070706) (not b!6602573) (not b!6602850) (not b!6602958) (not b!6602966) (not b!6602831) (not d!2070826) (not b!6602951) (not b!6602963) (not b!6603138) (not d!2070914) (not b!6602802) (not bm!577563) (not b!6602755))
(check-sat)
