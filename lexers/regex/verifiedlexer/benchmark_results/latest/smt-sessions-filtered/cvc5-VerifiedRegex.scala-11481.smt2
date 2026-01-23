; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!624828 () Bool)

(assert start!624828)

(declare-fun b!6286709 () Bool)

(assert (=> b!6286709 true))

(assert (=> b!6286709 true))

(declare-fun lambda!345107 () Int)

(declare-fun lambda!345106 () Int)

(assert (=> b!6286709 (not (= lambda!345107 lambda!345106))))

(assert (=> b!6286709 true))

(assert (=> b!6286709 true))

(declare-fun b!6286730 () Bool)

(assert (=> b!6286730 true))

(declare-fun bs!1571382 () Bool)

(declare-fun b!6286700 () Bool)

(assert (= bs!1571382 (and b!6286700 b!6286709)))

(declare-datatypes ((C!32686 0))(
  ( (C!32687 (val!26045 Int)) )
))
(declare-datatypes ((Regex!16208 0))(
  ( (ElementMatch!16208 (c!1140533 C!32686)) (Concat!25053 (regOne!32928 Regex!16208) (regTwo!32928 Regex!16208)) (EmptyExpr!16208) (Star!16208 (reg!16537 Regex!16208)) (EmptyLang!16208) (Union!16208 (regOne!32929 Regex!16208) (regTwo!32929 Regex!16208)) )
))
(declare-fun r!7292 () Regex!16208)

(declare-fun lambda!345109 () Int)

(declare-fun lt!2355963 () Regex!16208)

(assert (=> bs!1571382 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355963 (regTwo!32928 r!7292))) (= lambda!345109 lambda!345106))))

(assert (=> bs!1571382 (not (= lambda!345109 lambda!345107))))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(declare-fun lambda!345110 () Int)

(assert (=> bs!1571382 (not (= lambda!345110 lambda!345106))))

(assert (=> bs!1571382 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355963 (regTwo!32928 r!7292))) (= lambda!345110 lambda!345107))))

(assert (=> b!6286700 (not (= lambda!345110 lambda!345109))))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(declare-fun lt!2355993 () Regex!16208)

(declare-fun lambda!345111 () Int)

(assert (=> bs!1571382 (= (and (= (regTwo!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355993 (regTwo!32928 r!7292))) (= lambda!345111 lambda!345106))))

(assert (=> bs!1571382 (not (= lambda!345111 lambda!345107))))

(assert (=> b!6286700 (= (and (= (regTwo!32928 (regOne!32928 r!7292)) (regOne!32928 (regOne!32928 r!7292))) (= lt!2355993 lt!2355963)) (= lambda!345111 lambda!345109))))

(assert (=> b!6286700 (not (= lambda!345111 lambda!345110))))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(assert (=> b!6286700 true))

(declare-fun e!3822901 () Bool)

(declare-fun e!3822903 () Bool)

(assert (=> b!6286700 (= e!3822901 e!3822903)))

(declare-fun res!2592656 () Bool)

(assert (=> b!6286700 (=> res!2592656 e!3822903)))

(declare-fun validRegex!7944 (Regex!16208) Bool)

(assert (=> b!6286700 (= res!2592656 (not (validRegex!7944 (regTwo!32928 (regOne!32928 r!7292)))))))

(declare-datatypes ((List!64923 0))(
  ( (Nil!64799) (Cons!64799 (h!71247 C!32686) (t!378485 List!64923)) )
))
(declare-fun s!2326 () List!64923)

(declare-datatypes ((tuple2!66374 0))(
  ( (tuple2!66375 (_1!36490 List!64923) (_2!36490 List!64923)) )
))
(declare-datatypes ((Option!16099 0))(
  ( (None!16098) (Some!16098 (v!52253 tuple2!66374)) )
))
(declare-fun isDefined!12802 (Option!16099) Bool)

(declare-fun findConcatSeparation!2513 (Regex!16208 Regex!16208 List!64923 List!64923 List!64923) Option!16099)

(declare-fun Exists!3278 (Int) Bool)

(assert (=> b!6286700 (= (isDefined!12802 (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 Nil!64799 s!2326 s!2326)) (Exists!3278 lambda!345111))))

(declare-datatypes ((Unit!158163 0))(
  ( (Unit!158164) )
))
(declare-fun lt!2355988 () Unit!158163)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2277 (Regex!16208 Regex!16208 List!64923) Unit!158163)

(assert (=> b!6286700 (= lt!2355988 (lemmaFindConcatSeparationEquivalentToExists!2277 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 s!2326))))

(declare-datatypes ((List!64924 0))(
  ( (Nil!64800) (Cons!64800 (h!71248 Regex!16208) (t!378486 List!64924)) )
))
(declare-datatypes ((Context!11184 0))(
  ( (Context!11185 (exprs!6092 List!64924)) )
))
(declare-datatypes ((List!64925 0))(
  ( (Nil!64801) (Cons!64801 (h!71249 Context!11184) (t!378487 List!64925)) )
))
(declare-fun zl!343 () List!64925)

(declare-fun generalisedConcat!1805 (List!64924) Regex!16208)

(assert (=> b!6286700 (= lt!2355993 (generalisedConcat!1805 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun lt!2355995 () Bool)

(declare-fun matchRSpec!3309 (Regex!16208 List!64923) Bool)

(assert (=> b!6286700 (= lt!2355995 (matchRSpec!3309 lt!2355963 s!2326))))

(declare-fun lt!2355972 () Unit!158163)

(declare-fun mainMatchTheorem!3309 (Regex!16208 List!64923) Unit!158163)

(assert (=> b!6286700 (= lt!2355972 (mainMatchTheorem!3309 lt!2355963 s!2326))))

(assert (=> b!6286700 (= (Exists!3278 lambda!345109) (Exists!3278 lambda!345110))))

(declare-fun lt!2355977 () Unit!158163)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1815 (Regex!16208 Regex!16208 List!64923) Unit!158163)

(assert (=> b!6286700 (= lt!2355977 (lemmaExistCutMatchRandMatchRSpecEquivalent!1815 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326))))

(assert (=> b!6286700 (= (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 Nil!64799 s!2326 s!2326)) (Exists!3278 lambda!345109))))

(declare-fun lt!2355975 () Unit!158163)

(assert (=> b!6286700 (= lt!2355975 (lemmaFindConcatSeparationEquivalentToExists!2277 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326))))

(declare-fun lt!2355984 () Bool)

(declare-fun lt!2355994 () Regex!16208)

(assert (=> b!6286700 (= lt!2355984 (matchRSpec!3309 lt!2355994 s!2326))))

(declare-fun lt!2355959 () Unit!158163)

(assert (=> b!6286700 (= lt!2355959 (mainMatchTheorem!3309 lt!2355994 s!2326))))

(declare-fun lt!2355968 () (Set Context!11184))

(declare-fun matchZipper!2220 ((Set Context!11184) List!64923) Bool)

(assert (=> b!6286700 (= lt!2355995 (matchZipper!2220 lt!2355968 s!2326))))

(declare-fun matchR!8391 (Regex!16208 List!64923) Bool)

(assert (=> b!6286700 (= lt!2355995 (matchR!8391 lt!2355963 s!2326))))

(declare-fun lt!2355990 () Context!11184)

(declare-fun lt!2355979 () Unit!158163)

(declare-fun theoremZipperRegexEquiv!778 ((Set Context!11184) List!64925 Regex!16208 List!64923) Unit!158163)

(assert (=> b!6286700 (= lt!2355979 (theoremZipperRegexEquiv!778 lt!2355968 (Cons!64801 lt!2355990 Nil!64801) lt!2355963 s!2326))))

(declare-fun lt!2355957 () List!64924)

(assert (=> b!6286700 (= lt!2355963 (generalisedConcat!1805 lt!2355957))))

(declare-fun lt!2355987 () (Set Context!11184))

(assert (=> b!6286700 (= lt!2355984 (matchZipper!2220 lt!2355987 s!2326))))

(assert (=> b!6286700 (= lt!2355984 (matchR!8391 lt!2355994 s!2326))))

(declare-fun lt!2355958 () List!64925)

(declare-fun lt!2355962 () Unit!158163)

(assert (=> b!6286700 (= lt!2355962 (theoremZipperRegexEquiv!778 lt!2355987 lt!2355958 lt!2355994 s!2326))))

(declare-fun lt!2355971 () List!64924)

(assert (=> b!6286700 (= lt!2355994 (generalisedConcat!1805 lt!2355971))))

(declare-fun b!6286701 () Bool)

(declare-fun e!3822913 () Bool)

(declare-fun tp!1751294 () Bool)

(assert (=> b!6286701 (= e!3822913 tp!1751294)))

(declare-fun b!6286702 () Bool)

(declare-fun e!3822907 () Bool)

(declare-fun derivationStepZipper!2174 ((Set Context!11184) C!32686) (Set Context!11184))

(assert (=> b!6286702 (= e!3822907 (not (matchZipper!2220 (derivationStepZipper!2174 lt!2355968 (h!71247 s!2326)) (t!378485 s!2326))))))

(declare-fun b!6286703 () Bool)

(declare-fun e!3822914 () Bool)

(declare-fun tp!1751293 () Bool)

(declare-fun inv!83768 (Context!11184) Bool)

(assert (=> b!6286703 (= e!3822914 (and (inv!83768 (h!71249 zl!343)) e!3822913 tp!1751293))))

(declare-fun b!6286704 () Bool)

(declare-fun res!2592659 () Bool)

(assert (=> b!6286704 (=> res!2592659 e!3822901)))

(declare-fun zipperDepth!333 (List!64925) Int)

(assert (=> b!6286704 (= res!2592659 (> (zipperDepth!333 lt!2355958) (zipperDepth!333 zl!343)))))

(declare-fun setElem!42785 () Context!11184)

(declare-fun tp!1751298 () Bool)

(declare-fun setNonEmpty!42785 () Bool)

(declare-fun setRes!42785 () Bool)

(declare-fun e!3822897 () Bool)

(assert (=> setNonEmpty!42785 (= setRes!42785 (and tp!1751298 (inv!83768 setElem!42785) e!3822897))))

(declare-fun z!1189 () (Set Context!11184))

(declare-fun setRest!42785 () (Set Context!11184))

(assert (=> setNonEmpty!42785 (= z!1189 (set.union (set.insert setElem!42785 (as set.empty (Set Context!11184))) setRest!42785))))

(declare-fun b!6286705 () Bool)

(assert (=> b!6286705 (= e!3822903 (validRegex!7944 lt!2355993))))

(declare-fun b!6286706 () Bool)

(declare-fun e!3822902 () Bool)

(declare-fun e!3822904 () Bool)

(assert (=> b!6286706 (= e!3822902 e!3822904)))

(declare-fun res!2592638 () Bool)

(assert (=> b!6286706 (=> res!2592638 e!3822904)))

(assert (=> b!6286706 (= res!2592638 e!3822907)))

(declare-fun res!2592635 () Bool)

(assert (=> b!6286706 (=> (not res!2592635) (not e!3822907))))

(declare-fun lt!2355982 () (Set Context!11184))

(declare-fun lt!2355964 () Bool)

(assert (=> b!6286706 (= res!2592635 (not (= lt!2355964 (matchZipper!2220 lt!2355982 (t!378485 s!2326)))))))

(declare-fun lt!2355973 () (Set Context!11184))

(declare-fun e!3822908 () Bool)

(assert (=> b!6286706 (= (matchZipper!2220 lt!2355973 (t!378485 s!2326)) e!3822908)))

(declare-fun res!2592653 () Bool)

(assert (=> b!6286706 (=> res!2592653 e!3822908)))

(declare-fun lt!2355985 () Bool)

(assert (=> b!6286706 (= res!2592653 lt!2355985)))

(declare-fun lt!2355965 () (Set Context!11184))

(declare-fun lt!2355956 () (Set Context!11184))

(declare-fun lt!2355992 () Unit!158163)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1039 ((Set Context!11184) (Set Context!11184) List!64923) Unit!158163)

(assert (=> b!6286706 (= lt!2355992 (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355965 lt!2355956 (t!378485 s!2326)))))

(declare-fun lambda!345108 () Int)

(declare-fun flatMap!1713 ((Set Context!11184) Int) (Set Context!11184))

(declare-fun derivationStepZipperUp!1382 (Context!11184 C!32686) (Set Context!11184))

(assert (=> b!6286706 (= (flatMap!1713 lt!2355968 lambda!345108) (derivationStepZipperUp!1382 lt!2355990 (h!71247 s!2326)))))

(declare-fun lt!2355991 () Unit!158163)

(declare-fun lemmaFlatMapOnSingletonSet!1239 ((Set Context!11184) Context!11184 Int) Unit!158163)

(assert (=> b!6286706 (= lt!2355991 (lemmaFlatMapOnSingletonSet!1239 lt!2355968 lt!2355990 lambda!345108))))

(declare-fun b!6286707 () Bool)

(declare-fun res!2592655 () Bool)

(declare-fun e!3822899 () Bool)

(assert (=> b!6286707 (=> res!2592655 e!3822899)))

(declare-fun generalisedUnion!2052 (List!64924) Regex!16208)

(declare-fun unfocusZipperList!1629 (List!64925) List!64924)

(assert (=> b!6286707 (= res!2592655 (not (= r!7292 (generalisedUnion!2052 (unfocusZipperList!1629 zl!343)))))))

(declare-fun b!6286708 () Bool)

(declare-fun e!3822905 () Bool)

(declare-fun tp!1751299 () Bool)

(assert (=> b!6286708 (= e!3822905 tp!1751299)))

(declare-fun e!3822900 () Bool)

(assert (=> b!6286709 (= e!3822899 e!3822900)))

(declare-fun res!2592657 () Bool)

(assert (=> b!6286709 (=> res!2592657 e!3822900)))

(declare-fun lt!2355989 () Bool)

(declare-fun lt!2355976 () Bool)

(assert (=> b!6286709 (= res!2592657 (or (not (= lt!2355976 lt!2355989)) (is-Nil!64799 s!2326)))))

(assert (=> b!6286709 (= (Exists!3278 lambda!345106) (Exists!3278 lambda!345107))))

(declare-fun lt!2355970 () Unit!158163)

(assert (=> b!6286709 (= lt!2355970 (lemmaExistCutMatchRandMatchRSpecEquivalent!1815 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326))))

(assert (=> b!6286709 (= lt!2355989 (Exists!3278 lambda!345106))))

(assert (=> b!6286709 (= lt!2355989 (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) Nil!64799 s!2326 s!2326)))))

(declare-fun lt!2355997 () Unit!158163)

(assert (=> b!6286709 (= lt!2355997 (lemmaFindConcatSeparationEquivalentToExists!2277 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326))))

(declare-fun b!6286710 () Bool)

(declare-fun e!3822910 () Bool)

(declare-fun tp_is_empty!41669 () Bool)

(declare-fun tp!1751297 () Bool)

(assert (=> b!6286710 (= e!3822910 (and tp_is_empty!41669 tp!1751297))))

(declare-fun b!6286711 () Bool)

(declare-fun e!3822909 () Bool)

(assert (=> b!6286711 (= e!3822909 (not e!3822899))))

(declare-fun res!2592650 () Bool)

(assert (=> b!6286711 (=> res!2592650 e!3822899)))

(assert (=> b!6286711 (= res!2592650 (not (is-Cons!64801 zl!343)))))

(assert (=> b!6286711 (= lt!2355976 (matchRSpec!3309 r!7292 s!2326))))

(assert (=> b!6286711 (= lt!2355976 (matchR!8391 r!7292 s!2326))))

(declare-fun lt!2355986 () Unit!158163)

(assert (=> b!6286711 (= lt!2355986 (mainMatchTheorem!3309 r!7292 s!2326))))

(declare-fun b!6286712 () Bool)

(declare-fun res!2592637 () Bool)

(assert (=> b!6286712 (=> (not res!2592637) (not e!3822909))))

(declare-fun toList!9992 ((Set Context!11184)) List!64925)

(assert (=> b!6286712 (= res!2592637 (= (toList!9992 z!1189) zl!343))))

(declare-fun b!6286713 () Bool)

(declare-fun res!2592642 () Bool)

(assert (=> b!6286713 (=> res!2592642 e!3822899)))

(assert (=> b!6286713 (= res!2592642 (not (= r!7292 (generalisedConcat!1805 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun setIsEmpty!42785 () Bool)

(assert (=> setIsEmpty!42785 setRes!42785))

(declare-fun b!6286714 () Bool)

(declare-fun res!2592654 () Bool)

(assert (=> b!6286714 (=> (not res!2592654) (not e!3822909))))

(declare-fun unfocusZipper!1950 (List!64925) Regex!16208)

(assert (=> b!6286714 (= res!2592654 (= r!7292 (unfocusZipper!1950 zl!343)))))

(declare-fun b!6286715 () Bool)

(assert (=> b!6286715 (= e!3822905 tp_is_empty!41669)))

(declare-fun b!6286716 () Bool)

(assert (=> b!6286716 (= e!3822908 (matchZipper!2220 lt!2355956 (t!378485 s!2326)))))

(declare-fun b!6286717 () Bool)

(declare-fun res!2592641 () Bool)

(declare-fun e!3822915 () Bool)

(assert (=> b!6286717 (=> res!2592641 e!3822915)))

(declare-fun nullable!6201 (Regex!16208) Bool)

(assert (=> b!6286717 (= res!2592641 (not (nullable!6201 (regOne!32928 (regOne!32928 r!7292)))))))

(declare-fun b!6286718 () Bool)

(declare-fun tp!1751300 () Bool)

(declare-fun tp!1751292 () Bool)

(assert (=> b!6286718 (= e!3822905 (and tp!1751300 tp!1751292))))

(declare-fun b!6286719 () Bool)

(declare-fun res!2592640 () Bool)

(assert (=> b!6286719 (=> res!2592640 e!3822899)))

(assert (=> b!6286719 (= res!2592640 (or (is-EmptyExpr!16208 r!7292) (is-EmptyLang!16208 r!7292) (is-ElementMatch!16208 r!7292) (is-Union!16208 r!7292) (not (is-Concat!25053 r!7292))))))

(declare-fun b!6286720 () Bool)

(declare-fun tp!1751291 () Bool)

(declare-fun tp!1751296 () Bool)

(assert (=> b!6286720 (= e!3822905 (and tp!1751291 tp!1751296))))

(declare-fun b!6286721 () Bool)

(declare-fun e!3822896 () Unit!158163)

(declare-fun Unit!158165 () Unit!158163)

(assert (=> b!6286721 (= e!3822896 Unit!158165)))

(declare-fun b!6286722 () Bool)

(declare-fun res!2592639 () Bool)

(assert (=> b!6286722 (=> res!2592639 e!3822904)))

(declare-fun lt!2355966 () Context!11184)

(declare-fun contextDepthTotal!331 (Context!11184) Int)

(assert (=> b!6286722 (= res!2592639 (>= (contextDepthTotal!331 lt!2355966) (contextDepthTotal!331 (h!71249 zl!343))))))

(declare-fun b!6286723 () Bool)

(declare-fun tp!1751295 () Bool)

(assert (=> b!6286723 (= e!3822897 tp!1751295)))

(declare-fun b!6286724 () Bool)

(declare-fun e!3822895 () Bool)

(declare-fun lt!2355969 () (Set Context!11184))

(assert (=> b!6286724 (= e!3822895 (matchZipper!2220 lt!2355969 (t!378485 s!2326)))))

(declare-fun b!6286725 () Bool)

(declare-fun res!2592644 () Bool)

(assert (=> b!6286725 (=> res!2592644 e!3822900)))

(declare-fun isEmpty!36851 (List!64924) Bool)

(assert (=> b!6286725 (= res!2592644 (isEmpty!36851 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6286726 () Bool)

(declare-fun e!3822898 () Bool)

(assert (=> b!6286726 (= e!3822898 e!3822902)))

(declare-fun res!2592643 () Bool)

(assert (=> b!6286726 (=> res!2592643 e!3822902)))

(assert (=> b!6286726 (= res!2592643 (not (= lt!2355982 lt!2355973)))))

(assert (=> b!6286726 (= lt!2355973 (set.union lt!2355965 lt!2355956))))

(assert (=> b!6286726 (= lt!2355956 (derivationStepZipperUp!1382 lt!2355990 (h!71247 s!2326)))))

(assert (=> b!6286726 (= (flatMap!1713 lt!2355987 lambda!345108) (derivationStepZipperUp!1382 lt!2355966 (h!71247 s!2326)))))

(declare-fun lt!2355996 () Unit!158163)

(assert (=> b!6286726 (= lt!2355996 (lemmaFlatMapOnSingletonSet!1239 lt!2355987 lt!2355966 lambda!345108))))

(declare-fun lt!2355978 () (Set Context!11184))

(assert (=> b!6286726 (= lt!2355978 (derivationStepZipperUp!1382 lt!2355966 (h!71247 s!2326)))))

(assert (=> b!6286726 (= lt!2355982 (derivationStepZipper!2174 lt!2355987 (h!71247 s!2326)))))

(assert (=> b!6286726 (= lt!2355968 (set.insert lt!2355990 (as set.empty (Set Context!11184))))))

(assert (=> b!6286726 (= lt!2355987 (set.insert lt!2355966 (as set.empty (Set Context!11184))))))

(assert (=> b!6286726 (= lt!2355966 (Context!11185 lt!2355971))))

(assert (=> b!6286726 (= lt!2355971 (Cons!64800 (regOne!32928 (regOne!32928 r!7292)) lt!2355957))))

(declare-fun b!6286727 () Bool)

(declare-fun e!3822912 () Bool)

(declare-fun lt!2355955 () (Set Context!11184))

(assert (=> b!6286727 (= e!3822912 (not (matchZipper!2220 lt!2355955 (t!378485 s!2326))))))

(declare-fun b!6286728 () Bool)

(declare-fun res!2592633 () Bool)

(assert (=> b!6286728 (=> res!2592633 e!3822899)))

(declare-fun isEmpty!36852 (List!64925) Bool)

(assert (=> b!6286728 (= res!2592633 (not (isEmpty!36852 (t!378487 zl!343))))))

(declare-fun b!6286729 () Bool)

(declare-fun e!3822906 () Bool)

(assert (=> b!6286729 (= e!3822906 e!3822898)))

(declare-fun res!2592645 () Bool)

(assert (=> b!6286729 (=> res!2592645 e!3822898)))

(assert (=> b!6286729 (= res!2592645 e!3822912)))

(declare-fun res!2592634 () Bool)

(assert (=> b!6286729 (=> (not res!2592634) (not e!3822912))))

(assert (=> b!6286729 (= res!2592634 (not (= lt!2355964 lt!2355985)))))

(declare-fun lt!2355960 () (Set Context!11184))

(assert (=> b!6286729 (= lt!2355964 (matchZipper!2220 lt!2355960 (t!378485 s!2326)))))

(declare-fun lt!2355961 () (Set Context!11184))

(declare-fun e!3822911 () Bool)

(assert (=> b!6286729 (= (matchZipper!2220 lt!2355961 (t!378485 s!2326)) e!3822911)))

(declare-fun res!2592646 () Bool)

(assert (=> b!6286729 (=> res!2592646 e!3822911)))

(assert (=> b!6286729 (= res!2592646 lt!2355985)))

(assert (=> b!6286729 (= lt!2355985 (matchZipper!2220 lt!2355965 (t!378485 s!2326)))))

(declare-fun lt!2355983 () Unit!158163)

(assert (=> b!6286729 (= lt!2355983 (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355965 lt!2355955 (t!378485 s!2326)))))

(assert (=> b!6286730 (= e!3822900 e!3822915)))

(declare-fun res!2592647 () Bool)

(assert (=> b!6286730 (=> res!2592647 e!3822915)))

(assert (=> b!6286730 (= res!2592647 (or (and (is-ElementMatch!16208 (regOne!32928 r!7292)) (= (c!1140533 (regOne!32928 r!7292)) (h!71247 s!2326))) (is-Union!16208 (regOne!32928 r!7292)) (not (is-Concat!25053 (regOne!32928 r!7292)))))))

(declare-fun lt!2355981 () Unit!158163)

(assert (=> b!6286730 (= lt!2355981 e!3822896)))

(declare-fun c!1140532 () Bool)

(assert (=> b!6286730 (= c!1140532 (nullable!6201 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(assert (=> b!6286730 (= (flatMap!1713 z!1189 lambda!345108) (derivationStepZipperUp!1382 (h!71249 zl!343) (h!71247 s!2326)))))

(declare-fun lt!2355974 () Unit!158163)

(assert (=> b!6286730 (= lt!2355974 (lemmaFlatMapOnSingletonSet!1239 z!1189 (h!71249 zl!343) lambda!345108))))

(declare-fun lt!2355998 () Context!11184)

(assert (=> b!6286730 (= lt!2355969 (derivationStepZipperUp!1382 lt!2355998 (h!71247 s!2326)))))

(declare-fun derivationStepZipperDown!1456 (Regex!16208 Context!11184 C!32686) (Set Context!11184))

(assert (=> b!6286730 (= lt!2355960 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 (h!71249 zl!343))) lt!2355998 (h!71247 s!2326)))))

(assert (=> b!6286730 (= lt!2355998 (Context!11185 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun lt!2355967 () (Set Context!11184))

(assert (=> b!6286730 (= lt!2355967 (derivationStepZipperUp!1382 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343))))) (h!71247 s!2326)))))

(declare-fun b!6286731 () Bool)

(assert (=> b!6286731 (= e!3822915 e!3822906)))

(declare-fun res!2592636 () Bool)

(assert (=> b!6286731 (=> res!2592636 e!3822906)))

(assert (=> b!6286731 (= res!2592636 (not (= lt!2355960 lt!2355961)))))

(assert (=> b!6286731 (= lt!2355961 (set.union lt!2355965 lt!2355955))))

(assert (=> b!6286731 (= lt!2355955 (derivationStepZipperDown!1456 (regTwo!32928 (regOne!32928 r!7292)) lt!2355998 (h!71247 s!2326)))))

(assert (=> b!6286731 (= lt!2355965 (derivationStepZipperDown!1456 (regOne!32928 (regOne!32928 r!7292)) lt!2355990 (h!71247 s!2326)))))

(assert (=> b!6286731 (= lt!2355990 (Context!11185 lt!2355957))))

(assert (=> b!6286731 (= lt!2355957 (Cons!64800 (regTwo!32928 (regOne!32928 r!7292)) (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6286732 () Bool)

(declare-fun res!2592649 () Bool)

(assert (=> b!6286732 (=> res!2592649 e!3822904)))

(assert (=> b!6286732 (= res!2592649 (not (= (exprs!6092 (h!71249 zl!343)) (Cons!64800 (Concat!25053 (regOne!32928 (regOne!32928 r!7292)) (regTwo!32928 (regOne!32928 r!7292))) (t!378486 (exprs!6092 (h!71249 zl!343)))))))))

(declare-fun b!6286733 () Bool)

(declare-fun Unit!158166 () Unit!158163)

(assert (=> b!6286733 (= e!3822896 Unit!158166)))

(declare-fun lt!2355980 () Unit!158163)

(assert (=> b!6286733 (= lt!2355980 (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355960 lt!2355969 (t!378485 s!2326)))))

(declare-fun res!2592651 () Bool)

(assert (=> b!6286733 (= res!2592651 (matchZipper!2220 lt!2355960 (t!378485 s!2326)))))

(assert (=> b!6286733 (=> res!2592651 e!3822895)))

(assert (=> b!6286733 (= (matchZipper!2220 (set.union lt!2355960 lt!2355969) (t!378485 s!2326)) e!3822895)))

(declare-fun b!6286734 () Bool)

(assert (=> b!6286734 (= e!3822904 e!3822901)))

(declare-fun res!2592648 () Bool)

(assert (=> b!6286734 (=> res!2592648 e!3822901)))

(declare-fun zipperDepthTotal!361 (List!64925) Int)

(assert (=> b!6286734 (= res!2592648 (>= (zipperDepthTotal!361 lt!2355958) (zipperDepthTotal!361 zl!343)))))

(assert (=> b!6286734 (= lt!2355958 (Cons!64801 lt!2355966 Nil!64801))))

(declare-fun res!2592658 () Bool)

(assert (=> start!624828 (=> (not res!2592658) (not e!3822909))))

(assert (=> start!624828 (= res!2592658 (validRegex!7944 r!7292))))

(assert (=> start!624828 e!3822909))

(assert (=> start!624828 e!3822905))

(declare-fun condSetEmpty!42785 () Bool)

(assert (=> start!624828 (= condSetEmpty!42785 (= z!1189 (as set.empty (Set Context!11184))))))

(assert (=> start!624828 setRes!42785))

(assert (=> start!624828 e!3822914))

(assert (=> start!624828 e!3822910))

(declare-fun b!6286735 () Bool)

(declare-fun res!2592652 () Bool)

(assert (=> b!6286735 (=> res!2592652 e!3822899)))

(assert (=> b!6286735 (= res!2592652 (not (is-Cons!64800 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6286736 () Bool)

(assert (=> b!6286736 (= e!3822911 (matchZipper!2220 lt!2355955 (t!378485 s!2326)))))

(assert (= (and start!624828 res!2592658) b!6286712))

(assert (= (and b!6286712 res!2592637) b!6286714))

(assert (= (and b!6286714 res!2592654) b!6286711))

(assert (= (and b!6286711 (not res!2592650)) b!6286728))

(assert (= (and b!6286728 (not res!2592633)) b!6286713))

(assert (= (and b!6286713 (not res!2592642)) b!6286735))

(assert (= (and b!6286735 (not res!2592652)) b!6286707))

(assert (= (and b!6286707 (not res!2592655)) b!6286719))

(assert (= (and b!6286719 (not res!2592640)) b!6286709))

(assert (= (and b!6286709 (not res!2592657)) b!6286725))

(assert (= (and b!6286725 (not res!2592644)) b!6286730))

(assert (= (and b!6286730 c!1140532) b!6286733))

(assert (= (and b!6286730 (not c!1140532)) b!6286721))

(assert (= (and b!6286733 (not res!2592651)) b!6286724))

(assert (= (and b!6286730 (not res!2592647)) b!6286717))

(assert (= (and b!6286717 (not res!2592641)) b!6286731))

(assert (= (and b!6286731 (not res!2592636)) b!6286729))

(assert (= (and b!6286729 (not res!2592646)) b!6286736))

(assert (= (and b!6286729 res!2592634) b!6286727))

(assert (= (and b!6286729 (not res!2592645)) b!6286726))

(assert (= (and b!6286726 (not res!2592643)) b!6286706))

(assert (= (and b!6286706 (not res!2592653)) b!6286716))

(assert (= (and b!6286706 res!2592635) b!6286702))

(assert (= (and b!6286706 (not res!2592638)) b!6286732))

(assert (= (and b!6286732 (not res!2592649)) b!6286722))

(assert (= (and b!6286722 (not res!2592639)) b!6286734))

(assert (= (and b!6286734 (not res!2592648)) b!6286704))

(assert (= (and b!6286704 (not res!2592659)) b!6286700))

(assert (= (and b!6286700 (not res!2592656)) b!6286705))

(assert (= (and start!624828 (is-ElementMatch!16208 r!7292)) b!6286715))

(assert (= (and start!624828 (is-Concat!25053 r!7292)) b!6286718))

(assert (= (and start!624828 (is-Star!16208 r!7292)) b!6286708))

(assert (= (and start!624828 (is-Union!16208 r!7292)) b!6286720))

(assert (= (and start!624828 condSetEmpty!42785) setIsEmpty!42785))

(assert (= (and start!624828 (not condSetEmpty!42785)) setNonEmpty!42785))

(assert (= setNonEmpty!42785 b!6286723))

(assert (= b!6286703 b!6286701))

(assert (= (and start!624828 (is-Cons!64801 zl!343)) b!6286703))

(assert (= (and start!624828 (is-Cons!64799 s!2326)) b!6286710))

(declare-fun m!7107400 () Bool)

(assert (=> b!6286726 m!7107400))

(declare-fun m!7107402 () Bool)

(assert (=> b!6286726 m!7107402))

(declare-fun m!7107404 () Bool)

(assert (=> b!6286726 m!7107404))

(declare-fun m!7107406 () Bool)

(assert (=> b!6286726 m!7107406))

(declare-fun m!7107408 () Bool)

(assert (=> b!6286726 m!7107408))

(declare-fun m!7107410 () Bool)

(assert (=> b!6286726 m!7107410))

(declare-fun m!7107412 () Bool)

(assert (=> b!6286726 m!7107412))

(declare-fun m!7107414 () Bool)

(assert (=> b!6286703 m!7107414))

(declare-fun m!7107416 () Bool)

(assert (=> b!6286734 m!7107416))

(declare-fun m!7107418 () Bool)

(assert (=> b!6286734 m!7107418))

(declare-fun m!7107420 () Bool)

(assert (=> b!6286702 m!7107420))

(assert (=> b!6286702 m!7107420))

(declare-fun m!7107422 () Bool)

(assert (=> b!6286702 m!7107422))

(declare-fun m!7107424 () Bool)

(assert (=> b!6286700 m!7107424))

(declare-fun m!7107426 () Bool)

(assert (=> b!6286700 m!7107426))

(declare-fun m!7107428 () Bool)

(assert (=> b!6286700 m!7107428))

(declare-fun m!7107430 () Bool)

(assert (=> b!6286700 m!7107430))

(declare-fun m!7107432 () Bool)

(assert (=> b!6286700 m!7107432))

(declare-fun m!7107434 () Bool)

(assert (=> b!6286700 m!7107434))

(declare-fun m!7107436 () Bool)

(assert (=> b!6286700 m!7107436))

(declare-fun m!7107438 () Bool)

(assert (=> b!6286700 m!7107438))

(declare-fun m!7107440 () Bool)

(assert (=> b!6286700 m!7107440))

(declare-fun m!7107442 () Bool)

(assert (=> b!6286700 m!7107442))

(declare-fun m!7107444 () Bool)

(assert (=> b!6286700 m!7107444))

(declare-fun m!7107446 () Bool)

(assert (=> b!6286700 m!7107446))

(declare-fun m!7107448 () Bool)

(assert (=> b!6286700 m!7107448))

(declare-fun m!7107450 () Bool)

(assert (=> b!6286700 m!7107450))

(declare-fun m!7107452 () Bool)

(assert (=> b!6286700 m!7107452))

(declare-fun m!7107454 () Bool)

(assert (=> b!6286700 m!7107454))

(declare-fun m!7107456 () Bool)

(assert (=> b!6286700 m!7107456))

(assert (=> b!6286700 m!7107426))

(assert (=> b!6286700 m!7107430))

(declare-fun m!7107458 () Bool)

(assert (=> b!6286700 m!7107458))

(declare-fun m!7107460 () Bool)

(assert (=> b!6286700 m!7107460))

(declare-fun m!7107462 () Bool)

(assert (=> b!6286700 m!7107462))

(declare-fun m!7107464 () Bool)

(assert (=> b!6286700 m!7107464))

(declare-fun m!7107466 () Bool)

(assert (=> b!6286700 m!7107466))

(declare-fun m!7107468 () Bool)

(assert (=> b!6286700 m!7107468))

(declare-fun m!7107470 () Bool)

(assert (=> b!6286700 m!7107470))

(assert (=> b!6286700 m!7107454))

(declare-fun m!7107472 () Bool)

(assert (=> b!6286705 m!7107472))

(declare-fun m!7107474 () Bool)

(assert (=> b!6286731 m!7107474))

(declare-fun m!7107476 () Bool)

(assert (=> b!6286731 m!7107476))

(declare-fun m!7107478 () Bool)

(assert (=> b!6286712 m!7107478))

(declare-fun m!7107480 () Bool)

(assert (=> b!6286729 m!7107480))

(declare-fun m!7107482 () Bool)

(assert (=> b!6286729 m!7107482))

(declare-fun m!7107484 () Bool)

(assert (=> b!6286729 m!7107484))

(declare-fun m!7107486 () Bool)

(assert (=> b!6286729 m!7107486))

(declare-fun m!7107488 () Bool)

(assert (=> b!6286713 m!7107488))

(declare-fun m!7107490 () Bool)

(assert (=> b!6286724 m!7107490))

(declare-fun m!7107492 () Bool)

(assert (=> b!6286711 m!7107492))

(declare-fun m!7107494 () Bool)

(assert (=> b!6286711 m!7107494))

(declare-fun m!7107496 () Bool)

(assert (=> b!6286711 m!7107496))

(declare-fun m!7107498 () Bool)

(assert (=> b!6286709 m!7107498))

(declare-fun m!7107500 () Bool)

(assert (=> b!6286709 m!7107500))

(declare-fun m!7107502 () Bool)

(assert (=> b!6286709 m!7107502))

(declare-fun m!7107504 () Bool)

(assert (=> b!6286709 m!7107504))

(assert (=> b!6286709 m!7107498))

(declare-fun m!7107506 () Bool)

(assert (=> b!6286709 m!7107506))

(assert (=> b!6286709 m!7107504))

(declare-fun m!7107508 () Bool)

(assert (=> b!6286709 m!7107508))

(declare-fun m!7107510 () Bool)

(assert (=> b!6286736 m!7107510))

(declare-fun m!7107512 () Bool)

(assert (=> b!6286722 m!7107512))

(declare-fun m!7107514 () Bool)

(assert (=> b!6286722 m!7107514))

(declare-fun m!7107516 () Bool)

(assert (=> b!6286707 m!7107516))

(assert (=> b!6286707 m!7107516))

(declare-fun m!7107518 () Bool)

(assert (=> b!6286707 m!7107518))

(declare-fun m!7107520 () Bool)

(assert (=> b!6286716 m!7107520))

(declare-fun m!7107522 () Bool)

(assert (=> setNonEmpty!42785 m!7107522))

(declare-fun m!7107524 () Bool)

(assert (=> b!6286730 m!7107524))

(declare-fun m!7107526 () Bool)

(assert (=> b!6286730 m!7107526))

(declare-fun m!7107528 () Bool)

(assert (=> b!6286730 m!7107528))

(declare-fun m!7107530 () Bool)

(assert (=> b!6286730 m!7107530))

(declare-fun m!7107532 () Bool)

(assert (=> b!6286730 m!7107532))

(declare-fun m!7107534 () Bool)

(assert (=> b!6286730 m!7107534))

(declare-fun m!7107536 () Bool)

(assert (=> b!6286730 m!7107536))

(declare-fun m!7107538 () Bool)

(assert (=> start!624828 m!7107538))

(declare-fun m!7107540 () Bool)

(assert (=> b!6286717 m!7107540))

(declare-fun m!7107542 () Bool)

(assert (=> b!6286706 m!7107542))

(declare-fun m!7107544 () Bool)

(assert (=> b!6286706 m!7107544))

(declare-fun m!7107546 () Bool)

(assert (=> b!6286706 m!7107546))

(declare-fun m!7107548 () Bool)

(assert (=> b!6286706 m!7107548))

(assert (=> b!6286706 m!7107412))

(declare-fun m!7107550 () Bool)

(assert (=> b!6286706 m!7107550))

(declare-fun m!7107552 () Bool)

(assert (=> b!6286733 m!7107552))

(assert (=> b!6286733 m!7107480))

(declare-fun m!7107554 () Bool)

(assert (=> b!6286733 m!7107554))

(declare-fun m!7107556 () Bool)

(assert (=> b!6286725 m!7107556))

(declare-fun m!7107558 () Bool)

(assert (=> b!6286704 m!7107558))

(declare-fun m!7107560 () Bool)

(assert (=> b!6286704 m!7107560))

(declare-fun m!7107562 () Bool)

(assert (=> b!6286714 m!7107562))

(assert (=> b!6286727 m!7107510))

(declare-fun m!7107564 () Bool)

(assert (=> b!6286728 m!7107564))

(push 1)

(assert tp_is_empty!41669)

(assert (not b!6286712))

(assert (not setNonEmpty!42785))

(assert (not b!6286730))

(assert (not b!6286700))

(assert (not b!6286724))

(assert (not b!6286733))

(assert (not b!6286703))

(assert (not b!6286723))

(assert (not b!6286711))

(assert (not start!624828))

(assert (not b!6286710))

(assert (not b!6286704))

(assert (not b!6286720))

(assert (not b!6286725))

(assert (not b!6286729))

(assert (not b!6286736))

(assert (not b!6286716))

(assert (not b!6286706))

(assert (not b!6286731))

(assert (not b!6286718))

(assert (not b!6286708))

(assert (not b!6286707))

(assert (not b!6286702))

(assert (not b!6286701))

(assert (not b!6286705))

(assert (not b!6286728))

(assert (not b!6286727))

(assert (not b!6286714))

(assert (not b!6286726))

(assert (not b!6286709))

(assert (not b!6286717))

(assert (not b!6286734))

(assert (not b!6286713))

(assert (not b!6286722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1973058 () Bool)

(declare-fun c!1140547 () Bool)

(declare-fun isEmpty!36855 (List!64923) Bool)

(assert (=> d!1973058 (= c!1140547 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3822995 () Bool)

(assert (=> d!1973058 (= (matchZipper!2220 lt!2355956 (t!378485 s!2326)) e!3822995)))

(declare-fun b!6286892 () Bool)

(declare-fun nullableZipper!1978 ((Set Context!11184)) Bool)

(assert (=> b!6286892 (= e!3822995 (nullableZipper!1978 lt!2355956))))

(declare-fun b!6286893 () Bool)

(declare-fun head!12916 (List!64923) C!32686)

(declare-fun tail!12001 (List!64923) List!64923)

(assert (=> b!6286893 (= e!3822995 (matchZipper!2220 (derivationStepZipper!2174 lt!2355956 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973058 c!1140547) b!6286892))

(assert (= (and d!1973058 (not c!1140547)) b!6286893))

(declare-fun m!7107732 () Bool)

(assert (=> d!1973058 m!7107732))

(declare-fun m!7107734 () Bool)

(assert (=> b!6286892 m!7107734))

(declare-fun m!7107736 () Bool)

(assert (=> b!6286893 m!7107736))

(assert (=> b!6286893 m!7107736))

(declare-fun m!7107738 () Bool)

(assert (=> b!6286893 m!7107738))

(declare-fun m!7107740 () Bool)

(assert (=> b!6286893 m!7107740))

(assert (=> b!6286893 m!7107738))

(assert (=> b!6286893 m!7107740))

(declare-fun m!7107742 () Bool)

(assert (=> b!6286893 m!7107742))

(assert (=> b!6286716 d!1973058))

(declare-fun d!1973060 () Bool)

(declare-fun c!1140548 () Bool)

(assert (=> d!1973060 (= c!1140548 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3822996 () Bool)

(assert (=> d!1973060 (= (matchZipper!2220 lt!2355955 (t!378485 s!2326)) e!3822996)))

(declare-fun b!6286894 () Bool)

(assert (=> b!6286894 (= e!3822996 (nullableZipper!1978 lt!2355955))))

(declare-fun b!6286895 () Bool)

(assert (=> b!6286895 (= e!3822996 (matchZipper!2220 (derivationStepZipper!2174 lt!2355955 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973060 c!1140548) b!6286894))

(assert (= (and d!1973060 (not c!1140548)) b!6286895))

(assert (=> d!1973060 m!7107732))

(declare-fun m!7107744 () Bool)

(assert (=> b!6286894 m!7107744))

(assert (=> b!6286895 m!7107736))

(assert (=> b!6286895 m!7107736))

(declare-fun m!7107746 () Bool)

(assert (=> b!6286895 m!7107746))

(assert (=> b!6286895 m!7107740))

(assert (=> b!6286895 m!7107746))

(assert (=> b!6286895 m!7107740))

(declare-fun m!7107748 () Bool)

(assert (=> b!6286895 m!7107748))

(assert (=> b!6286736 d!1973060))

(declare-fun d!1973062 () Bool)

(declare-fun lt!2356133 () Regex!16208)

(assert (=> d!1973062 (validRegex!7944 lt!2356133)))

(assert (=> d!1973062 (= lt!2356133 (generalisedUnion!2052 (unfocusZipperList!1629 zl!343)))))

(assert (=> d!1973062 (= (unfocusZipper!1950 zl!343) lt!2356133)))

(declare-fun bs!1571384 () Bool)

(assert (= bs!1571384 d!1973062))

(declare-fun m!7107750 () Bool)

(assert (=> bs!1571384 m!7107750))

(assert (=> bs!1571384 m!7107516))

(assert (=> bs!1571384 m!7107516))

(assert (=> bs!1571384 m!7107518))

(assert (=> b!6286714 d!1973062))

(declare-fun d!1973064 () Bool)

(declare-fun lt!2356136 () Int)

(assert (=> d!1973064 (>= lt!2356136 0)))

(declare-fun e!3822999 () Int)

(assert (=> d!1973064 (= lt!2356136 e!3822999)))

(declare-fun c!1140551 () Bool)

(assert (=> d!1973064 (= c!1140551 (is-Cons!64801 lt!2355958))))

(assert (=> d!1973064 (= (zipperDepthTotal!361 lt!2355958) lt!2356136)))

(declare-fun b!6286900 () Bool)

(assert (=> b!6286900 (= e!3822999 (+ (contextDepthTotal!331 (h!71249 lt!2355958)) (zipperDepthTotal!361 (t!378487 lt!2355958))))))

(declare-fun b!6286901 () Bool)

(assert (=> b!6286901 (= e!3822999 0)))

(assert (= (and d!1973064 c!1140551) b!6286900))

(assert (= (and d!1973064 (not c!1140551)) b!6286901))

(declare-fun m!7107752 () Bool)

(assert (=> b!6286900 m!7107752))

(declare-fun m!7107754 () Bool)

(assert (=> b!6286900 m!7107754))

(assert (=> b!6286734 d!1973064))

(declare-fun d!1973066 () Bool)

(declare-fun lt!2356137 () Int)

(assert (=> d!1973066 (>= lt!2356137 0)))

(declare-fun e!3823000 () Int)

(assert (=> d!1973066 (= lt!2356137 e!3823000)))

(declare-fun c!1140552 () Bool)

(assert (=> d!1973066 (= c!1140552 (is-Cons!64801 zl!343))))

(assert (=> d!1973066 (= (zipperDepthTotal!361 zl!343) lt!2356137)))

(declare-fun b!6286902 () Bool)

(assert (=> b!6286902 (= e!3823000 (+ (contextDepthTotal!331 (h!71249 zl!343)) (zipperDepthTotal!361 (t!378487 zl!343))))))

(declare-fun b!6286903 () Bool)

(assert (=> b!6286903 (= e!3823000 0)))

(assert (= (and d!1973066 c!1140552) b!6286902))

(assert (= (and d!1973066 (not c!1140552)) b!6286903))

(assert (=> b!6286902 m!7107514))

(declare-fun m!7107756 () Bool)

(assert (=> b!6286902 m!7107756))

(assert (=> b!6286734 d!1973066))

(declare-fun b!6286924 () Bool)

(declare-fun e!3823014 () Regex!16208)

(declare-fun e!3823018 () Regex!16208)

(assert (=> b!6286924 (= e!3823014 e!3823018)))

(declare-fun c!1140563 () Bool)

(assert (=> b!6286924 (= c!1140563 (is-Cons!64800 (exprs!6092 (h!71249 zl!343))))))

(declare-fun b!6286925 () Bool)

(declare-fun e!3823013 () Bool)

(declare-fun e!3823015 () Bool)

(assert (=> b!6286925 (= e!3823013 e!3823015)))

(declare-fun c!1140562 () Bool)

(declare-fun tail!12002 (List!64924) List!64924)

(assert (=> b!6286925 (= c!1140562 (isEmpty!36851 (tail!12002 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6286926 () Bool)

(declare-fun e!3823017 () Bool)

(assert (=> b!6286926 (= e!3823017 e!3823013)))

(declare-fun c!1140561 () Bool)

(assert (=> b!6286926 (= c!1140561 (isEmpty!36851 (exprs!6092 (h!71249 zl!343))))))

(declare-fun b!6286927 () Bool)

(declare-fun lt!2356140 () Regex!16208)

(declare-fun isEmptyExpr!1614 (Regex!16208) Bool)

(assert (=> b!6286927 (= e!3823013 (isEmptyExpr!1614 lt!2356140))))

(declare-fun b!6286928 () Bool)

(declare-fun head!12917 (List!64924) Regex!16208)

(assert (=> b!6286928 (= e!3823015 (= lt!2356140 (head!12917 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun d!1973068 () Bool)

(assert (=> d!1973068 e!3823017))

(declare-fun res!2592773 () Bool)

(assert (=> d!1973068 (=> (not res!2592773) (not e!3823017))))

(assert (=> d!1973068 (= res!2592773 (validRegex!7944 lt!2356140))))

(assert (=> d!1973068 (= lt!2356140 e!3823014)))

(declare-fun c!1140564 () Bool)

(declare-fun e!3823016 () Bool)

(assert (=> d!1973068 (= c!1140564 e!3823016)))

(declare-fun res!2592774 () Bool)

(assert (=> d!1973068 (=> (not res!2592774) (not e!3823016))))

(assert (=> d!1973068 (= res!2592774 (is-Cons!64800 (exprs!6092 (h!71249 zl!343))))))

(declare-fun lambda!345140 () Int)

(declare-fun forall!15353 (List!64924 Int) Bool)

(assert (=> d!1973068 (forall!15353 (exprs!6092 (h!71249 zl!343)) lambda!345140)))

(assert (=> d!1973068 (= (generalisedConcat!1805 (exprs!6092 (h!71249 zl!343))) lt!2356140)))

(declare-fun b!6286929 () Bool)

(declare-fun isConcat!1137 (Regex!16208) Bool)

(assert (=> b!6286929 (= e!3823015 (isConcat!1137 lt!2356140))))

(declare-fun b!6286930 () Bool)

(assert (=> b!6286930 (= e!3823014 (h!71248 (exprs!6092 (h!71249 zl!343))))))

(declare-fun b!6286931 () Bool)

(assert (=> b!6286931 (= e!3823016 (isEmpty!36851 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6286932 () Bool)

(assert (=> b!6286932 (= e!3823018 (Concat!25053 (h!71248 (exprs!6092 (h!71249 zl!343))) (generalisedConcat!1805 (t!378486 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun b!6286933 () Bool)

(assert (=> b!6286933 (= e!3823018 EmptyExpr!16208)))

(assert (= (and d!1973068 res!2592774) b!6286931))

(assert (= (and d!1973068 c!1140564) b!6286930))

(assert (= (and d!1973068 (not c!1140564)) b!6286924))

(assert (= (and b!6286924 c!1140563) b!6286932))

(assert (= (and b!6286924 (not c!1140563)) b!6286933))

(assert (= (and d!1973068 res!2592773) b!6286926))

(assert (= (and b!6286926 c!1140561) b!6286927))

(assert (= (and b!6286926 (not c!1140561)) b!6286925))

(assert (= (and b!6286925 c!1140562) b!6286928))

(assert (= (and b!6286925 (not c!1140562)) b!6286929))

(assert (=> b!6286931 m!7107556))

(declare-fun m!7107758 () Bool)

(assert (=> b!6286929 m!7107758))

(declare-fun m!7107760 () Bool)

(assert (=> b!6286927 m!7107760))

(declare-fun m!7107762 () Bool)

(assert (=> b!6286925 m!7107762))

(assert (=> b!6286925 m!7107762))

(declare-fun m!7107764 () Bool)

(assert (=> b!6286925 m!7107764))

(declare-fun m!7107766 () Bool)

(assert (=> b!6286928 m!7107766))

(assert (=> b!6286932 m!7107468))

(declare-fun m!7107768 () Bool)

(assert (=> b!6286926 m!7107768))

(declare-fun m!7107770 () Bool)

(assert (=> d!1973068 m!7107770))

(declare-fun m!7107772 () Bool)

(assert (=> d!1973068 m!7107772))

(assert (=> b!6286713 d!1973068))

(declare-fun d!1973070 () Bool)

(declare-fun e!3823021 () Bool)

(assert (=> d!1973070 (= (matchZipper!2220 (set.union lt!2355960 lt!2355969) (t!378485 s!2326)) e!3823021)))

(declare-fun res!2592777 () Bool)

(assert (=> d!1973070 (=> res!2592777 e!3823021)))

(assert (=> d!1973070 (= res!2592777 (matchZipper!2220 lt!2355960 (t!378485 s!2326)))))

(declare-fun lt!2356143 () Unit!158163)

(declare-fun choose!46692 ((Set Context!11184) (Set Context!11184) List!64923) Unit!158163)

(assert (=> d!1973070 (= lt!2356143 (choose!46692 lt!2355960 lt!2355969 (t!378485 s!2326)))))

(assert (=> d!1973070 (= (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355960 lt!2355969 (t!378485 s!2326)) lt!2356143)))

(declare-fun b!6286936 () Bool)

(assert (=> b!6286936 (= e!3823021 (matchZipper!2220 lt!2355969 (t!378485 s!2326)))))

(assert (= (and d!1973070 (not res!2592777)) b!6286936))

(assert (=> d!1973070 m!7107554))

(assert (=> d!1973070 m!7107480))

(declare-fun m!7107774 () Bool)

(assert (=> d!1973070 m!7107774))

(assert (=> b!6286936 m!7107490))

(assert (=> b!6286733 d!1973070))

(declare-fun d!1973072 () Bool)

(declare-fun c!1140565 () Bool)

(assert (=> d!1973072 (= c!1140565 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823022 () Bool)

(assert (=> d!1973072 (= (matchZipper!2220 lt!2355960 (t!378485 s!2326)) e!3823022)))

(declare-fun b!6286937 () Bool)

(assert (=> b!6286937 (= e!3823022 (nullableZipper!1978 lt!2355960))))

(declare-fun b!6286938 () Bool)

(assert (=> b!6286938 (= e!3823022 (matchZipper!2220 (derivationStepZipper!2174 lt!2355960 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973072 c!1140565) b!6286937))

(assert (= (and d!1973072 (not c!1140565)) b!6286938))

(assert (=> d!1973072 m!7107732))

(declare-fun m!7107776 () Bool)

(assert (=> b!6286937 m!7107776))

(assert (=> b!6286938 m!7107736))

(assert (=> b!6286938 m!7107736))

(declare-fun m!7107778 () Bool)

(assert (=> b!6286938 m!7107778))

(assert (=> b!6286938 m!7107740))

(assert (=> b!6286938 m!7107778))

(assert (=> b!6286938 m!7107740))

(declare-fun m!7107780 () Bool)

(assert (=> b!6286938 m!7107780))

(assert (=> b!6286733 d!1973072))

(declare-fun d!1973074 () Bool)

(declare-fun c!1140566 () Bool)

(assert (=> d!1973074 (= c!1140566 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823023 () Bool)

(assert (=> d!1973074 (= (matchZipper!2220 (set.union lt!2355960 lt!2355969) (t!378485 s!2326)) e!3823023)))

(declare-fun b!6286939 () Bool)

(assert (=> b!6286939 (= e!3823023 (nullableZipper!1978 (set.union lt!2355960 lt!2355969)))))

(declare-fun b!6286940 () Bool)

(assert (=> b!6286940 (= e!3823023 (matchZipper!2220 (derivationStepZipper!2174 (set.union lt!2355960 lt!2355969) (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973074 c!1140566) b!6286939))

(assert (= (and d!1973074 (not c!1140566)) b!6286940))

(assert (=> d!1973074 m!7107732))

(declare-fun m!7107782 () Bool)

(assert (=> b!6286939 m!7107782))

(assert (=> b!6286940 m!7107736))

(assert (=> b!6286940 m!7107736))

(declare-fun m!7107784 () Bool)

(assert (=> b!6286940 m!7107784))

(assert (=> b!6286940 m!7107740))

(assert (=> b!6286940 m!7107784))

(assert (=> b!6286940 m!7107740))

(declare-fun m!7107786 () Bool)

(assert (=> b!6286940 m!7107786))

(assert (=> b!6286733 d!1973074))

(declare-fun d!1973076 () Bool)

(declare-fun c!1140567 () Bool)

(assert (=> d!1973076 (= c!1140567 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823024 () Bool)

(assert (=> d!1973076 (= (matchZipper!2220 (derivationStepZipper!2174 lt!2355968 (h!71247 s!2326)) (t!378485 s!2326)) e!3823024)))

(declare-fun b!6286941 () Bool)

(assert (=> b!6286941 (= e!3823024 (nullableZipper!1978 (derivationStepZipper!2174 lt!2355968 (h!71247 s!2326))))))

(declare-fun b!6286942 () Bool)

(assert (=> b!6286942 (= e!3823024 (matchZipper!2220 (derivationStepZipper!2174 (derivationStepZipper!2174 lt!2355968 (h!71247 s!2326)) (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973076 c!1140567) b!6286941))

(assert (= (and d!1973076 (not c!1140567)) b!6286942))

(assert (=> d!1973076 m!7107732))

(assert (=> b!6286941 m!7107420))

(declare-fun m!7107788 () Bool)

(assert (=> b!6286941 m!7107788))

(assert (=> b!6286942 m!7107736))

(assert (=> b!6286942 m!7107420))

(assert (=> b!6286942 m!7107736))

(declare-fun m!7107790 () Bool)

(assert (=> b!6286942 m!7107790))

(assert (=> b!6286942 m!7107740))

(assert (=> b!6286942 m!7107790))

(assert (=> b!6286942 m!7107740))

(declare-fun m!7107792 () Bool)

(assert (=> b!6286942 m!7107792))

(assert (=> b!6286702 d!1973076))

(declare-fun bs!1571385 () Bool)

(declare-fun d!1973078 () Bool)

(assert (= bs!1571385 (and d!1973078 b!6286730)))

(declare-fun lambda!345143 () Int)

(assert (=> bs!1571385 (= lambda!345143 lambda!345108)))

(assert (=> d!1973078 true))

(assert (=> d!1973078 (= (derivationStepZipper!2174 lt!2355968 (h!71247 s!2326)) (flatMap!1713 lt!2355968 lambda!345143))))

(declare-fun bs!1571386 () Bool)

(assert (= bs!1571386 d!1973078))

(declare-fun m!7107794 () Bool)

(assert (=> bs!1571386 m!7107794))

(assert (=> b!6286702 d!1973078))

(declare-fun bs!1571387 () Bool)

(declare-fun d!1973080 () Bool)

(assert (= bs!1571387 (and d!1973080 b!6286709)))

(declare-fun lambda!345146 () Int)

(assert (=> bs!1571387 (= (and (= (regTwo!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355993 (regTwo!32928 r!7292))) (= lambda!345146 lambda!345106))))

(declare-fun bs!1571388 () Bool)

(assert (= bs!1571388 (and d!1973080 b!6286700)))

(assert (=> bs!1571388 (= lambda!345146 lambda!345111)))

(assert (=> bs!1571388 (not (= lambda!345146 lambda!345110))))

(assert (=> bs!1571388 (= (and (= (regTwo!32928 (regOne!32928 r!7292)) (regOne!32928 (regOne!32928 r!7292))) (= lt!2355993 lt!2355963)) (= lambda!345146 lambda!345109))))

(assert (=> bs!1571387 (not (= lambda!345146 lambda!345107))))

(assert (=> d!1973080 true))

(assert (=> d!1973080 true))

(assert (=> d!1973080 true))

(assert (=> d!1973080 (= (isDefined!12802 (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 Nil!64799 s!2326 s!2326)) (Exists!3278 lambda!345146))))

(declare-fun lt!2356146 () Unit!158163)

(declare-fun choose!46693 (Regex!16208 Regex!16208 List!64923) Unit!158163)

(assert (=> d!1973080 (= lt!2356146 (choose!46693 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 s!2326))))

(assert (=> d!1973080 (validRegex!7944 (regTwo!32928 (regOne!32928 r!7292)))))

(assert (=> d!1973080 (= (lemmaFindConcatSeparationEquivalentToExists!2277 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 s!2326) lt!2356146)))

(declare-fun bs!1571389 () Bool)

(assert (= bs!1571389 d!1973080))

(declare-fun m!7107796 () Bool)

(assert (=> bs!1571389 m!7107796))

(declare-fun m!7107798 () Bool)

(assert (=> bs!1571389 m!7107798))

(assert (=> bs!1571389 m!7107430))

(assert (=> bs!1571389 m!7107464))

(assert (=> bs!1571389 m!7107430))

(assert (=> bs!1571389 m!7107432))

(assert (=> b!6286700 d!1973080))

(declare-fun bs!1571390 () Bool)

(declare-fun d!1973082 () Bool)

(assert (= bs!1571390 (and d!1973082 d!1973068)))

(declare-fun lambda!345147 () Int)

(assert (=> bs!1571390 (= lambda!345147 lambda!345140)))

(declare-fun b!6286949 () Bool)

(declare-fun e!3823028 () Regex!16208)

(declare-fun e!3823032 () Regex!16208)

(assert (=> b!6286949 (= e!3823028 e!3823032)))

(declare-fun c!1140572 () Bool)

(assert (=> b!6286949 (= c!1140572 (is-Cons!64800 lt!2355957))))

(declare-fun b!6286950 () Bool)

(declare-fun e!3823027 () Bool)

(declare-fun e!3823029 () Bool)

(assert (=> b!6286950 (= e!3823027 e!3823029)))

(declare-fun c!1140571 () Bool)

(assert (=> b!6286950 (= c!1140571 (isEmpty!36851 (tail!12002 lt!2355957)))))

(declare-fun b!6286951 () Bool)

(declare-fun e!3823031 () Bool)

(assert (=> b!6286951 (= e!3823031 e!3823027)))

(declare-fun c!1140570 () Bool)

(assert (=> b!6286951 (= c!1140570 (isEmpty!36851 lt!2355957))))

(declare-fun b!6286952 () Bool)

(declare-fun lt!2356147 () Regex!16208)

(assert (=> b!6286952 (= e!3823027 (isEmptyExpr!1614 lt!2356147))))

(declare-fun b!6286953 () Bool)

(assert (=> b!6286953 (= e!3823029 (= lt!2356147 (head!12917 lt!2355957)))))

(assert (=> d!1973082 e!3823031))

(declare-fun res!2592782 () Bool)

(assert (=> d!1973082 (=> (not res!2592782) (not e!3823031))))

(assert (=> d!1973082 (= res!2592782 (validRegex!7944 lt!2356147))))

(assert (=> d!1973082 (= lt!2356147 e!3823028)))

(declare-fun c!1140573 () Bool)

(declare-fun e!3823030 () Bool)

(assert (=> d!1973082 (= c!1140573 e!3823030)))

(declare-fun res!2592783 () Bool)

(assert (=> d!1973082 (=> (not res!2592783) (not e!3823030))))

(assert (=> d!1973082 (= res!2592783 (is-Cons!64800 lt!2355957))))

(assert (=> d!1973082 (forall!15353 lt!2355957 lambda!345147)))

(assert (=> d!1973082 (= (generalisedConcat!1805 lt!2355957) lt!2356147)))

(declare-fun b!6286954 () Bool)

(assert (=> b!6286954 (= e!3823029 (isConcat!1137 lt!2356147))))

(declare-fun b!6286955 () Bool)

(assert (=> b!6286955 (= e!3823028 (h!71248 lt!2355957))))

(declare-fun b!6286956 () Bool)

(assert (=> b!6286956 (= e!3823030 (isEmpty!36851 (t!378486 lt!2355957)))))

(declare-fun b!6286957 () Bool)

(assert (=> b!6286957 (= e!3823032 (Concat!25053 (h!71248 lt!2355957) (generalisedConcat!1805 (t!378486 lt!2355957))))))

(declare-fun b!6286958 () Bool)

(assert (=> b!6286958 (= e!3823032 EmptyExpr!16208)))

(assert (= (and d!1973082 res!2592783) b!6286956))

(assert (= (and d!1973082 c!1140573) b!6286955))

(assert (= (and d!1973082 (not c!1140573)) b!6286949))

(assert (= (and b!6286949 c!1140572) b!6286957))

(assert (= (and b!6286949 (not c!1140572)) b!6286958))

(assert (= (and d!1973082 res!2592782) b!6286951))

(assert (= (and b!6286951 c!1140570) b!6286952))

(assert (= (and b!6286951 (not c!1140570)) b!6286950))

(assert (= (and b!6286950 c!1140571) b!6286953))

(assert (= (and b!6286950 (not c!1140571)) b!6286954))

(declare-fun m!7107800 () Bool)

(assert (=> b!6286956 m!7107800))

(declare-fun m!7107802 () Bool)

(assert (=> b!6286954 m!7107802))

(declare-fun m!7107804 () Bool)

(assert (=> b!6286952 m!7107804))

(declare-fun m!7107806 () Bool)

(assert (=> b!6286950 m!7107806))

(assert (=> b!6286950 m!7107806))

(declare-fun m!7107808 () Bool)

(assert (=> b!6286950 m!7107808))

(declare-fun m!7107810 () Bool)

(assert (=> b!6286953 m!7107810))

(declare-fun m!7107812 () Bool)

(assert (=> b!6286957 m!7107812))

(declare-fun m!7107814 () Bool)

(assert (=> b!6286951 m!7107814))

(declare-fun m!7107816 () Bool)

(assert (=> d!1973082 m!7107816))

(declare-fun m!7107818 () Bool)

(assert (=> d!1973082 m!7107818))

(assert (=> b!6286700 d!1973082))

(declare-fun d!1973084 () Bool)

(declare-fun isEmpty!36856 (Option!16099) Bool)

(assert (=> d!1973084 (= (isDefined!12802 (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 Nil!64799 s!2326 s!2326)) (not (isEmpty!36856 (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 Nil!64799 s!2326 s!2326))))))

(declare-fun bs!1571391 () Bool)

(assert (= bs!1571391 d!1973084))

(assert (=> bs!1571391 m!7107430))

(declare-fun m!7107820 () Bool)

(assert (=> bs!1571391 m!7107820))

(assert (=> b!6286700 d!1973084))

(declare-fun b!6286987 () Bool)

(declare-fun e!3823052 () Bool)

(assert (=> b!6286987 (= e!3823052 (= (head!12916 s!2326) (c!1140533 lt!2355963)))))

(declare-fun b!6286988 () Bool)

(declare-fun res!2592804 () Bool)

(assert (=> b!6286988 (=> (not res!2592804) (not e!3823052))))

(declare-fun call!532259 () Bool)

(assert (=> b!6286988 (= res!2592804 (not call!532259))))

(declare-fun b!6286989 () Bool)

(declare-fun res!2592805 () Bool)

(declare-fun e!3823048 () Bool)

(assert (=> b!6286989 (=> res!2592805 e!3823048)))

(assert (=> b!6286989 (= res!2592805 (not (is-ElementMatch!16208 lt!2355963)))))

(declare-fun e!3823047 () Bool)

(assert (=> b!6286989 (= e!3823047 e!3823048)))

(declare-fun b!6286990 () Bool)

(declare-fun e!3823053 () Bool)

(declare-fun derivativeStep!4917 (Regex!16208 C!32686) Regex!16208)

(assert (=> b!6286990 (= e!3823053 (matchR!8391 (derivativeStep!4917 lt!2355963 (head!12916 s!2326)) (tail!12001 s!2326)))))

(declare-fun b!6286992 () Bool)

(declare-fun res!2592800 () Bool)

(assert (=> b!6286992 (=> res!2592800 e!3823048)))

(assert (=> b!6286992 (= res!2592800 e!3823052)))

(declare-fun res!2592801 () Bool)

(assert (=> b!6286992 (=> (not res!2592801) (not e!3823052))))

(declare-fun lt!2356150 () Bool)

(assert (=> b!6286992 (= res!2592801 lt!2356150)))

(declare-fun b!6286993 () Bool)

(assert (=> b!6286993 (= e!3823053 (nullable!6201 lt!2355963))))

(declare-fun b!6286994 () Bool)

(declare-fun res!2592803 () Bool)

(assert (=> b!6286994 (=> (not res!2592803) (not e!3823052))))

(assert (=> b!6286994 (= res!2592803 (isEmpty!36855 (tail!12001 s!2326)))))

(declare-fun bm!532254 () Bool)

(assert (=> bm!532254 (= call!532259 (isEmpty!36855 s!2326))))

(declare-fun b!6286995 () Bool)

(declare-fun e!3823049 () Bool)

(assert (=> b!6286995 (= e!3823049 e!3823047)))

(declare-fun c!1140581 () Bool)

(assert (=> b!6286995 (= c!1140581 (is-EmptyLang!16208 lt!2355963))))

(declare-fun b!6286996 () Bool)

(declare-fun res!2592806 () Bool)

(declare-fun e!3823050 () Bool)

(assert (=> b!6286996 (=> res!2592806 e!3823050)))

(assert (=> b!6286996 (= res!2592806 (not (isEmpty!36855 (tail!12001 s!2326))))))

(declare-fun b!6286997 () Bool)

(assert (=> b!6286997 (= e!3823050 (not (= (head!12916 s!2326) (c!1140533 lt!2355963))))))

(declare-fun b!6286998 () Bool)

(declare-fun e!3823051 () Bool)

(assert (=> b!6286998 (= e!3823051 e!3823050)))

(declare-fun res!2592807 () Bool)

(assert (=> b!6286998 (=> res!2592807 e!3823050)))

(assert (=> b!6286998 (= res!2592807 call!532259)))

(declare-fun b!6286999 () Bool)

(assert (=> b!6286999 (= e!3823047 (not lt!2356150))))

(declare-fun b!6287000 () Bool)

(assert (=> b!6287000 (= e!3823048 e!3823051)))

(declare-fun res!2592802 () Bool)

(assert (=> b!6287000 (=> (not res!2592802) (not e!3823051))))

(assert (=> b!6287000 (= res!2592802 (not lt!2356150))))

(declare-fun d!1973086 () Bool)

(assert (=> d!1973086 e!3823049))

(declare-fun c!1140580 () Bool)

(assert (=> d!1973086 (= c!1140580 (is-EmptyExpr!16208 lt!2355963))))

(assert (=> d!1973086 (= lt!2356150 e!3823053)))

(declare-fun c!1140582 () Bool)

(assert (=> d!1973086 (= c!1140582 (isEmpty!36855 s!2326))))

(assert (=> d!1973086 (validRegex!7944 lt!2355963)))

(assert (=> d!1973086 (= (matchR!8391 lt!2355963 s!2326) lt!2356150)))

(declare-fun b!6286991 () Bool)

(assert (=> b!6286991 (= e!3823049 (= lt!2356150 call!532259))))

(assert (= (and d!1973086 c!1140582) b!6286993))

(assert (= (and d!1973086 (not c!1140582)) b!6286990))

(assert (= (and d!1973086 c!1140580) b!6286991))

(assert (= (and d!1973086 (not c!1140580)) b!6286995))

(assert (= (and b!6286995 c!1140581) b!6286999))

(assert (= (and b!6286995 (not c!1140581)) b!6286989))

(assert (= (and b!6286989 (not res!2592805)) b!6286992))

(assert (= (and b!6286992 res!2592801) b!6286988))

(assert (= (and b!6286988 res!2592804) b!6286994))

(assert (= (and b!6286994 res!2592803) b!6286987))

(assert (= (and b!6286992 (not res!2592800)) b!6287000))

(assert (= (and b!6287000 res!2592802) b!6286998))

(assert (= (and b!6286998 (not res!2592807)) b!6286996))

(assert (= (and b!6286996 (not res!2592806)) b!6286997))

(assert (= (or b!6286991 b!6286988 b!6286998) bm!532254))

(declare-fun m!7107822 () Bool)

(assert (=> b!6286994 m!7107822))

(assert (=> b!6286994 m!7107822))

(declare-fun m!7107824 () Bool)

(assert (=> b!6286994 m!7107824))

(declare-fun m!7107826 () Bool)

(assert (=> b!6286997 m!7107826))

(assert (=> b!6286990 m!7107826))

(assert (=> b!6286990 m!7107826))

(declare-fun m!7107828 () Bool)

(assert (=> b!6286990 m!7107828))

(assert (=> b!6286990 m!7107822))

(assert (=> b!6286990 m!7107828))

(assert (=> b!6286990 m!7107822))

(declare-fun m!7107830 () Bool)

(assert (=> b!6286990 m!7107830))

(declare-fun m!7107832 () Bool)

(assert (=> d!1973086 m!7107832))

(declare-fun m!7107834 () Bool)

(assert (=> d!1973086 m!7107834))

(assert (=> b!6286987 m!7107826))

(assert (=> b!6286996 m!7107822))

(assert (=> b!6286996 m!7107822))

(assert (=> b!6286996 m!7107824))

(assert (=> bm!532254 m!7107832))

(declare-fun m!7107836 () Bool)

(assert (=> b!6286993 m!7107836))

(assert (=> b!6286700 d!1973086))

(declare-fun d!1973088 () Bool)

(assert (=> d!1973088 (= (matchR!8391 lt!2355963 s!2326) (matchRSpec!3309 lt!2355963 s!2326))))

(declare-fun lt!2356153 () Unit!158163)

(declare-fun choose!46694 (Regex!16208 List!64923) Unit!158163)

(assert (=> d!1973088 (= lt!2356153 (choose!46694 lt!2355963 s!2326))))

(assert (=> d!1973088 (validRegex!7944 lt!2355963)))

(assert (=> d!1973088 (= (mainMatchTheorem!3309 lt!2355963 s!2326) lt!2356153)))

(declare-fun bs!1571392 () Bool)

(assert (= bs!1571392 d!1973088))

(assert (=> bs!1571392 m!7107436))

(assert (=> bs!1571392 m!7107462))

(declare-fun m!7107838 () Bool)

(assert (=> bs!1571392 m!7107838))

(assert (=> bs!1571392 m!7107834))

(assert (=> b!6286700 d!1973088))

(declare-fun d!1973090 () Bool)

(declare-fun res!2592820 () Bool)

(declare-fun e!3823071 () Bool)

(assert (=> d!1973090 (=> res!2592820 e!3823071)))

(assert (=> d!1973090 (= res!2592820 (is-ElementMatch!16208 (regTwo!32928 (regOne!32928 r!7292))))))

(assert (=> d!1973090 (= (validRegex!7944 (regTwo!32928 (regOne!32928 r!7292))) e!3823071)))

(declare-fun b!6287019 () Bool)

(declare-fun e!3823069 () Bool)

(declare-fun e!3823073 () Bool)

(assert (=> b!6287019 (= e!3823069 e!3823073)))

(declare-fun res!2592819 () Bool)

(assert (=> b!6287019 (= res!2592819 (not (nullable!6201 (reg!16537 (regTwo!32928 (regOne!32928 r!7292))))))))

(assert (=> b!6287019 (=> (not res!2592819) (not e!3823073))))

(declare-fun bm!532261 () Bool)

(declare-fun call!532267 () Bool)

(declare-fun call!532266 () Bool)

(assert (=> bm!532261 (= call!532267 call!532266)))

(declare-fun b!6287020 () Bool)

(assert (=> b!6287020 (= e!3823073 call!532266)))

(declare-fun b!6287021 () Bool)

(declare-fun res!2592818 () Bool)

(declare-fun e!3823070 () Bool)

(assert (=> b!6287021 (=> (not res!2592818) (not e!3823070))))

(declare-fun call!532268 () Bool)

(assert (=> b!6287021 (= res!2592818 call!532268)))

(declare-fun e!3823074 () Bool)

(assert (=> b!6287021 (= e!3823074 e!3823070)))

(declare-fun b!6287022 () Bool)

(declare-fun res!2592822 () Bool)

(declare-fun e!3823072 () Bool)

(assert (=> b!6287022 (=> res!2592822 e!3823072)))

(assert (=> b!6287022 (= res!2592822 (not (is-Concat!25053 (regTwo!32928 (regOne!32928 r!7292)))))))

(assert (=> b!6287022 (= e!3823074 e!3823072)))

(declare-fun b!6287023 () Bool)

(assert (=> b!6287023 (= e!3823069 e!3823074)))

(declare-fun c!1140587 () Bool)

(assert (=> b!6287023 (= c!1140587 (is-Union!16208 (regTwo!32928 (regOne!32928 r!7292))))))

(declare-fun b!6287024 () Bool)

(assert (=> b!6287024 (= e!3823070 call!532267)))

(declare-fun bm!532262 () Bool)

(declare-fun c!1140588 () Bool)

(assert (=> bm!532262 (= call!532266 (validRegex!7944 (ite c!1140588 (reg!16537 (regTwo!32928 (regOne!32928 r!7292))) (ite c!1140587 (regTwo!32929 (regTwo!32928 (regOne!32928 r!7292))) (regTwo!32928 (regTwo!32928 (regOne!32928 r!7292)))))))))

(declare-fun b!6287025 () Bool)

(declare-fun e!3823068 () Bool)

(assert (=> b!6287025 (= e!3823068 call!532267)))

(declare-fun b!6287026 () Bool)

(assert (=> b!6287026 (= e!3823071 e!3823069)))

(assert (=> b!6287026 (= c!1140588 (is-Star!16208 (regTwo!32928 (regOne!32928 r!7292))))))

(declare-fun bm!532263 () Bool)

(assert (=> bm!532263 (= call!532268 (validRegex!7944 (ite c!1140587 (regOne!32929 (regTwo!32928 (regOne!32928 r!7292))) (regOne!32928 (regTwo!32928 (regOne!32928 r!7292))))))))

(declare-fun b!6287027 () Bool)

(assert (=> b!6287027 (= e!3823072 e!3823068)))

(declare-fun res!2592821 () Bool)

(assert (=> b!6287027 (=> (not res!2592821) (not e!3823068))))

(assert (=> b!6287027 (= res!2592821 call!532268)))

(assert (= (and d!1973090 (not res!2592820)) b!6287026))

(assert (= (and b!6287026 c!1140588) b!6287019))

(assert (= (and b!6287026 (not c!1140588)) b!6287023))

(assert (= (and b!6287019 res!2592819) b!6287020))

(assert (= (and b!6287023 c!1140587) b!6287021))

(assert (= (and b!6287023 (not c!1140587)) b!6287022))

(assert (= (and b!6287021 res!2592818) b!6287024))

(assert (= (and b!6287022 (not res!2592822)) b!6287027))

(assert (= (and b!6287027 res!2592821) b!6287025))

(assert (= (or b!6287024 b!6287025) bm!532261))

(assert (= (or b!6287021 b!6287027) bm!532263))

(assert (= (or b!6287020 bm!532261) bm!532262))

(declare-fun m!7107840 () Bool)

(assert (=> b!6287019 m!7107840))

(declare-fun m!7107842 () Bool)

(assert (=> bm!532262 m!7107842))

(declare-fun m!7107844 () Bool)

(assert (=> bm!532263 m!7107844))

(assert (=> b!6286700 d!1973090))

(declare-fun d!1973092 () Bool)

(assert (=> d!1973092 (= (matchR!8391 lt!2355994 s!2326) (matchZipper!2220 lt!2355987 s!2326))))

(declare-fun lt!2356156 () Unit!158163)

(declare-fun choose!46695 ((Set Context!11184) List!64925 Regex!16208 List!64923) Unit!158163)

(assert (=> d!1973092 (= lt!2356156 (choose!46695 lt!2355987 lt!2355958 lt!2355994 s!2326))))

(assert (=> d!1973092 (validRegex!7944 lt!2355994)))

(assert (=> d!1973092 (= (theoremZipperRegexEquiv!778 lt!2355987 lt!2355958 lt!2355994 s!2326) lt!2356156)))

(declare-fun bs!1571393 () Bool)

(assert (= bs!1571393 d!1973092))

(assert (=> bs!1571393 m!7107458))

(assert (=> bs!1571393 m!7107444))

(declare-fun m!7107846 () Bool)

(assert (=> bs!1571393 m!7107846))

(declare-fun m!7107848 () Bool)

(assert (=> bs!1571393 m!7107848))

(assert (=> b!6286700 d!1973092))

(declare-fun d!1973094 () Bool)

(declare-fun e!3823087 () Bool)

(assert (=> d!1973094 e!3823087))

(declare-fun res!2592835 () Bool)

(assert (=> d!1973094 (=> res!2592835 e!3823087)))

(declare-fun e!3823085 () Bool)

(assert (=> d!1973094 (= res!2592835 e!3823085)))

(declare-fun res!2592833 () Bool)

(assert (=> d!1973094 (=> (not res!2592833) (not e!3823085))))

(declare-fun lt!2356165 () Option!16099)

(assert (=> d!1973094 (= res!2592833 (isDefined!12802 lt!2356165))))

(declare-fun e!3823089 () Option!16099)

(assert (=> d!1973094 (= lt!2356165 e!3823089)))

(declare-fun c!1140594 () Bool)

(declare-fun e!3823086 () Bool)

(assert (=> d!1973094 (= c!1140594 e!3823086)))

(declare-fun res!2592836 () Bool)

(assert (=> d!1973094 (=> (not res!2592836) (not e!3823086))))

(assert (=> d!1973094 (= res!2592836 (matchR!8391 (regOne!32928 (regOne!32928 r!7292)) Nil!64799))))

(assert (=> d!1973094 (validRegex!7944 (regOne!32928 (regOne!32928 r!7292)))))

(assert (=> d!1973094 (= (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 Nil!64799 s!2326 s!2326) lt!2356165)))

(declare-fun b!6287046 () Bool)

(assert (=> b!6287046 (= e!3823087 (not (isDefined!12802 lt!2356165)))))

(declare-fun b!6287047 () Bool)

(declare-fun res!2592834 () Bool)

(assert (=> b!6287047 (=> (not res!2592834) (not e!3823085))))

(declare-fun get!22401 (Option!16099) tuple2!66374)

(assert (=> b!6287047 (= res!2592834 (matchR!8391 (regOne!32928 (regOne!32928 r!7292)) (_1!36490 (get!22401 lt!2356165))))))

(declare-fun b!6287048 () Bool)

(declare-fun res!2592837 () Bool)

(assert (=> b!6287048 (=> (not res!2592837) (not e!3823085))))

(assert (=> b!6287048 (= res!2592837 (matchR!8391 lt!2355963 (_2!36490 (get!22401 lt!2356165))))))

(declare-fun b!6287049 () Bool)

(declare-fun e!3823088 () Option!16099)

(assert (=> b!6287049 (= e!3823088 None!16098)))

(declare-fun b!6287050 () Bool)

(assert (=> b!6287050 (= e!3823089 e!3823088)))

(declare-fun c!1140593 () Bool)

(assert (=> b!6287050 (= c!1140593 (is-Nil!64799 s!2326))))

(declare-fun b!6287051 () Bool)

(assert (=> b!6287051 (= e!3823089 (Some!16098 (tuple2!66375 Nil!64799 s!2326)))))

(declare-fun b!6287052 () Bool)

(declare-fun lt!2356163 () Unit!158163)

(declare-fun lt!2356164 () Unit!158163)

(assert (=> b!6287052 (= lt!2356163 lt!2356164)))

(declare-fun ++!14281 (List!64923 List!64923) List!64923)

(assert (=> b!6287052 (= (++!14281 (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2376 (List!64923 C!32686 List!64923 List!64923) Unit!158163)

(assert (=> b!6287052 (= lt!2356164 (lemmaMoveElementToOtherListKeepsConcatEq!2376 Nil!64799 (h!71247 s!2326) (t!378485 s!2326) s!2326))))

(assert (=> b!6287052 (= e!3823088 (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326) s!2326))))

(declare-fun b!6287053 () Bool)

(assert (=> b!6287053 (= e!3823085 (= (++!14281 (_1!36490 (get!22401 lt!2356165)) (_2!36490 (get!22401 lt!2356165))) s!2326))))

(declare-fun b!6287054 () Bool)

(assert (=> b!6287054 (= e!3823086 (matchR!8391 lt!2355963 s!2326))))

(assert (= (and d!1973094 res!2592836) b!6287054))

(assert (= (and d!1973094 c!1140594) b!6287051))

(assert (= (and d!1973094 (not c!1140594)) b!6287050))

(assert (= (and b!6287050 c!1140593) b!6287049))

(assert (= (and b!6287050 (not c!1140593)) b!6287052))

(assert (= (and d!1973094 res!2592833) b!6287047))

(assert (= (and b!6287047 res!2592834) b!6287048))

(assert (= (and b!6287048 res!2592837) b!6287053))

(assert (= (and d!1973094 (not res!2592835)) b!6287046))

(declare-fun m!7107850 () Bool)

(assert (=> b!6287052 m!7107850))

(assert (=> b!6287052 m!7107850))

(declare-fun m!7107852 () Bool)

(assert (=> b!6287052 m!7107852))

(declare-fun m!7107854 () Bool)

(assert (=> b!6287052 m!7107854))

(assert (=> b!6287052 m!7107850))

(declare-fun m!7107856 () Bool)

(assert (=> b!6287052 m!7107856))

(declare-fun m!7107858 () Bool)

(assert (=> b!6287048 m!7107858))

(declare-fun m!7107860 () Bool)

(assert (=> b!6287048 m!7107860))

(declare-fun m!7107862 () Bool)

(assert (=> d!1973094 m!7107862))

(declare-fun m!7107864 () Bool)

(assert (=> d!1973094 m!7107864))

(declare-fun m!7107866 () Bool)

(assert (=> d!1973094 m!7107866))

(assert (=> b!6287054 m!7107436))

(assert (=> b!6287046 m!7107862))

(assert (=> b!6287053 m!7107858))

(declare-fun m!7107868 () Bool)

(assert (=> b!6287053 m!7107868))

(assert (=> b!6287047 m!7107858))

(declare-fun m!7107870 () Bool)

(assert (=> b!6287047 m!7107870))

(assert (=> b!6286700 d!1973094))

(declare-fun d!1973096 () Bool)

(assert (=> d!1973096 (= (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 Nil!64799 s!2326 s!2326)) (not (isEmpty!36856 (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 Nil!64799 s!2326 s!2326))))))

(declare-fun bs!1571394 () Bool)

(assert (= bs!1571394 d!1973096))

(assert (=> bs!1571394 m!7107426))

(declare-fun m!7107872 () Bool)

(assert (=> bs!1571394 m!7107872))

(assert (=> b!6286700 d!1973096))

(declare-fun bs!1571395 () Bool)

(declare-fun b!6287091 () Bool)

(assert (= bs!1571395 (and b!6287091 b!6286709)))

(declare-fun lambda!345152 () Int)

(assert (=> bs!1571395 (not (= lambda!345152 lambda!345106))))

(declare-fun bs!1571396 () Bool)

(assert (= bs!1571396 (and b!6287091 b!6286700)))

(assert (=> bs!1571396 (not (= lambda!345152 lambda!345111))))

(declare-fun bs!1571397 () Bool)

(assert (= bs!1571397 (and b!6287091 d!1973080)))

(assert (=> bs!1571397 (not (= lambda!345152 lambda!345146))))

(assert (=> bs!1571396 (not (= lambda!345152 lambda!345110))))

(assert (=> bs!1571396 (not (= lambda!345152 lambda!345109))))

(assert (=> bs!1571395 (not (= lambda!345152 lambda!345107))))

(assert (=> b!6287091 true))

(assert (=> b!6287091 true))

(declare-fun bs!1571398 () Bool)

(declare-fun b!6287094 () Bool)

(assert (= bs!1571398 (and b!6287094 b!6286709)))

(declare-fun lambda!345153 () Int)

(assert (=> bs!1571398 (not (= lambda!345153 lambda!345106))))

(declare-fun bs!1571399 () Bool)

(assert (= bs!1571399 (and b!6287094 b!6286700)))

(assert (=> bs!1571399 (not (= lambda!345153 lambda!345111))))

(declare-fun bs!1571400 () Bool)

(assert (= bs!1571400 (and b!6287094 d!1973080)))

(assert (=> bs!1571400 (not (= lambda!345153 lambda!345146))))

(assert (=> bs!1571399 (= (and (= (regOne!32928 lt!2355963) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 lt!2355963) lt!2355963)) (= lambda!345153 lambda!345110))))

(declare-fun bs!1571401 () Bool)

(assert (= bs!1571401 (and b!6287094 b!6287091)))

(assert (=> bs!1571401 (not (= lambda!345153 lambda!345152))))

(assert (=> bs!1571399 (not (= lambda!345153 lambda!345109))))

(assert (=> bs!1571398 (= (and (= (regOne!32928 lt!2355963) (regOne!32928 r!7292)) (= (regTwo!32928 lt!2355963) (regTwo!32928 r!7292))) (= lambda!345153 lambda!345107))))

(assert (=> b!6287094 true))

(assert (=> b!6287094 true))

(declare-fun d!1973098 () Bool)

(declare-fun c!1140603 () Bool)

(assert (=> d!1973098 (= c!1140603 (is-EmptyExpr!16208 lt!2355963))))

(declare-fun e!3823112 () Bool)

(assert (=> d!1973098 (= (matchRSpec!3309 lt!2355963 s!2326) e!3823112)))

(declare-fun b!6287087 () Bool)

(declare-fun e!3823113 () Bool)

(assert (=> b!6287087 (= e!3823113 (= s!2326 (Cons!64799 (c!1140533 lt!2355963) Nil!64799)))))

(declare-fun b!6287088 () Bool)

(declare-fun c!1140604 () Bool)

(assert (=> b!6287088 (= c!1140604 (is-Union!16208 lt!2355963))))

(declare-fun e!3823108 () Bool)

(assert (=> b!6287088 (= e!3823113 e!3823108)))

(declare-fun b!6287089 () Bool)

(declare-fun e!3823109 () Bool)

(assert (=> b!6287089 (= e!3823108 e!3823109)))

(declare-fun res!2592855 () Bool)

(assert (=> b!6287089 (= res!2592855 (matchRSpec!3309 (regOne!32929 lt!2355963) s!2326))))

(assert (=> b!6287089 (=> res!2592855 e!3823109)))

(declare-fun b!6287090 () Bool)

(declare-fun e!3823111 () Bool)

(assert (=> b!6287090 (= e!3823112 e!3823111)))

(declare-fun res!2592854 () Bool)

(assert (=> b!6287090 (= res!2592854 (not (is-EmptyLang!16208 lt!2355963)))))

(assert (=> b!6287090 (=> (not res!2592854) (not e!3823111))))

(declare-fun e!3823110 () Bool)

(declare-fun call!532274 () Bool)

(assert (=> b!6287091 (= e!3823110 call!532274)))

(declare-fun bm!532268 () Bool)

(declare-fun call!532273 () Bool)

(assert (=> bm!532268 (= call!532273 (isEmpty!36855 s!2326))))

(declare-fun b!6287092 () Bool)

(assert (=> b!6287092 (= e!3823109 (matchRSpec!3309 (regTwo!32929 lt!2355963) s!2326))))

(declare-fun b!6287093 () Bool)

(assert (=> b!6287093 (= e!3823112 call!532273)))

(declare-fun bm!532269 () Bool)

(declare-fun c!1140605 () Bool)

(assert (=> bm!532269 (= call!532274 (Exists!3278 (ite c!1140605 lambda!345152 lambda!345153)))))

(declare-fun e!3823114 () Bool)

(assert (=> b!6287094 (= e!3823114 call!532274)))

(declare-fun b!6287095 () Bool)

(declare-fun c!1140606 () Bool)

(assert (=> b!6287095 (= c!1140606 (is-ElementMatch!16208 lt!2355963))))

(assert (=> b!6287095 (= e!3823111 e!3823113)))

(declare-fun b!6287096 () Bool)

(assert (=> b!6287096 (= e!3823108 e!3823114)))

(assert (=> b!6287096 (= c!1140605 (is-Star!16208 lt!2355963))))

(declare-fun b!6287097 () Bool)

(declare-fun res!2592856 () Bool)

(assert (=> b!6287097 (=> res!2592856 e!3823110)))

(assert (=> b!6287097 (= res!2592856 call!532273)))

(assert (=> b!6287097 (= e!3823114 e!3823110)))

(assert (= (and d!1973098 c!1140603) b!6287093))

(assert (= (and d!1973098 (not c!1140603)) b!6287090))

(assert (= (and b!6287090 res!2592854) b!6287095))

(assert (= (and b!6287095 c!1140606) b!6287087))

(assert (= (and b!6287095 (not c!1140606)) b!6287088))

(assert (= (and b!6287088 c!1140604) b!6287089))

(assert (= (and b!6287088 (not c!1140604)) b!6287096))

(assert (= (and b!6287089 (not res!2592855)) b!6287092))

(assert (= (and b!6287096 c!1140605) b!6287097))

(assert (= (and b!6287096 (not c!1140605)) b!6287094))

(assert (= (and b!6287097 (not res!2592856)) b!6287091))

(assert (= (or b!6287091 b!6287094) bm!532269))

(assert (= (or b!6287093 b!6287097) bm!532268))

(declare-fun m!7107874 () Bool)

(assert (=> b!6287089 m!7107874))

(assert (=> bm!532268 m!7107832))

(declare-fun m!7107876 () Bool)

(assert (=> b!6287092 m!7107876))

(declare-fun m!7107878 () Bool)

(assert (=> bm!532269 m!7107878))

(assert (=> b!6286700 d!1973098))

(declare-fun d!1973100 () Bool)

(declare-fun e!3823117 () Bool)

(assert (=> d!1973100 e!3823117))

(declare-fun res!2592859 () Bool)

(assert (=> d!1973100 (=> res!2592859 e!3823117)))

(declare-fun e!3823115 () Bool)

(assert (=> d!1973100 (= res!2592859 e!3823115)))

(declare-fun res!2592857 () Bool)

(assert (=> d!1973100 (=> (not res!2592857) (not e!3823115))))

(declare-fun lt!2356168 () Option!16099)

(assert (=> d!1973100 (= res!2592857 (isDefined!12802 lt!2356168))))

(declare-fun e!3823119 () Option!16099)

(assert (=> d!1973100 (= lt!2356168 e!3823119)))

(declare-fun c!1140608 () Bool)

(declare-fun e!3823116 () Bool)

(assert (=> d!1973100 (= c!1140608 e!3823116)))

(declare-fun res!2592860 () Bool)

(assert (=> d!1973100 (=> (not res!2592860) (not e!3823116))))

(assert (=> d!1973100 (= res!2592860 (matchR!8391 (regTwo!32928 (regOne!32928 r!7292)) Nil!64799))))

(assert (=> d!1973100 (validRegex!7944 (regTwo!32928 (regOne!32928 r!7292)))))

(assert (=> d!1973100 (= (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 Nil!64799 s!2326 s!2326) lt!2356168)))

(declare-fun b!6287098 () Bool)

(assert (=> b!6287098 (= e!3823117 (not (isDefined!12802 lt!2356168)))))

(declare-fun b!6287099 () Bool)

(declare-fun res!2592858 () Bool)

(assert (=> b!6287099 (=> (not res!2592858) (not e!3823115))))

(assert (=> b!6287099 (= res!2592858 (matchR!8391 (regTwo!32928 (regOne!32928 r!7292)) (_1!36490 (get!22401 lt!2356168))))))

(declare-fun b!6287100 () Bool)

(declare-fun res!2592861 () Bool)

(assert (=> b!6287100 (=> (not res!2592861) (not e!3823115))))

(assert (=> b!6287100 (= res!2592861 (matchR!8391 lt!2355993 (_2!36490 (get!22401 lt!2356168))))))

(declare-fun b!6287101 () Bool)

(declare-fun e!3823118 () Option!16099)

(assert (=> b!6287101 (= e!3823118 None!16098)))

(declare-fun b!6287102 () Bool)

(assert (=> b!6287102 (= e!3823119 e!3823118)))

(declare-fun c!1140607 () Bool)

(assert (=> b!6287102 (= c!1140607 (is-Nil!64799 s!2326))))

(declare-fun b!6287103 () Bool)

(assert (=> b!6287103 (= e!3823119 (Some!16098 (tuple2!66375 Nil!64799 s!2326)))))

(declare-fun b!6287104 () Bool)

(declare-fun lt!2356166 () Unit!158163)

(declare-fun lt!2356167 () Unit!158163)

(assert (=> b!6287104 (= lt!2356166 lt!2356167)))

(assert (=> b!6287104 (= (++!14281 (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326)) s!2326)))

(assert (=> b!6287104 (= lt!2356167 (lemmaMoveElementToOtherListKeepsConcatEq!2376 Nil!64799 (h!71247 s!2326) (t!378485 s!2326) s!2326))))

(assert (=> b!6287104 (= e!3823118 (findConcatSeparation!2513 (regTwo!32928 (regOne!32928 r!7292)) lt!2355993 (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326) s!2326))))

(declare-fun b!6287105 () Bool)

(assert (=> b!6287105 (= e!3823115 (= (++!14281 (_1!36490 (get!22401 lt!2356168)) (_2!36490 (get!22401 lt!2356168))) s!2326))))

(declare-fun b!6287106 () Bool)

(assert (=> b!6287106 (= e!3823116 (matchR!8391 lt!2355993 s!2326))))

(assert (= (and d!1973100 res!2592860) b!6287106))

(assert (= (and d!1973100 c!1140608) b!6287103))

(assert (= (and d!1973100 (not c!1140608)) b!6287102))

(assert (= (and b!6287102 c!1140607) b!6287101))

(assert (= (and b!6287102 (not c!1140607)) b!6287104))

(assert (= (and d!1973100 res!2592857) b!6287099))

(assert (= (and b!6287099 res!2592858) b!6287100))

(assert (= (and b!6287100 res!2592861) b!6287105))

(assert (= (and d!1973100 (not res!2592859)) b!6287098))

(assert (=> b!6287104 m!7107850))

(assert (=> b!6287104 m!7107850))

(assert (=> b!6287104 m!7107852))

(assert (=> b!6287104 m!7107854))

(assert (=> b!6287104 m!7107850))

(declare-fun m!7107880 () Bool)

(assert (=> b!6287104 m!7107880))

(declare-fun m!7107882 () Bool)

(assert (=> b!6287100 m!7107882))

(declare-fun m!7107884 () Bool)

(assert (=> b!6287100 m!7107884))

(declare-fun m!7107886 () Bool)

(assert (=> d!1973100 m!7107886))

(declare-fun m!7107888 () Bool)

(assert (=> d!1973100 m!7107888))

(assert (=> d!1973100 m!7107464))

(declare-fun m!7107890 () Bool)

(assert (=> b!6287106 m!7107890))

(assert (=> b!6287098 m!7107886))

(assert (=> b!6287105 m!7107882))

(declare-fun m!7107892 () Bool)

(assert (=> b!6287105 m!7107892))

(assert (=> b!6287099 m!7107882))

(declare-fun m!7107894 () Bool)

(assert (=> b!6287099 m!7107894))

(assert (=> b!6286700 d!1973100))

(declare-fun d!1973102 () Bool)

(assert (=> d!1973102 (= (matchR!8391 lt!2355963 s!2326) (matchZipper!2220 lt!2355968 s!2326))))

(declare-fun lt!2356169 () Unit!158163)

(assert (=> d!1973102 (= lt!2356169 (choose!46695 lt!2355968 (Cons!64801 lt!2355990 Nil!64801) lt!2355963 s!2326))))

(assert (=> d!1973102 (validRegex!7944 lt!2355963)))

(assert (=> d!1973102 (= (theoremZipperRegexEquiv!778 lt!2355968 (Cons!64801 lt!2355990 Nil!64801) lt!2355963 s!2326) lt!2356169)))

(declare-fun bs!1571402 () Bool)

(assert (= bs!1571402 d!1973102))

(assert (=> bs!1571402 m!7107436))

(assert (=> bs!1571402 m!7107470))

(declare-fun m!7107896 () Bool)

(assert (=> bs!1571402 m!7107896))

(assert (=> bs!1571402 m!7107834))

(assert (=> b!6286700 d!1973102))

(declare-fun bs!1571403 () Bool)

(declare-fun d!1973104 () Bool)

(assert (= bs!1571403 (and d!1973104 b!6286709)))

(declare-fun lambda!345154 () Int)

(assert (=> bs!1571403 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355963 (regTwo!32928 r!7292))) (= lambda!345154 lambda!345106))))

(declare-fun bs!1571404 () Bool)

(assert (= bs!1571404 (and d!1973104 b!6287094)))

(assert (=> bs!1571404 (not (= lambda!345154 lambda!345153))))

(declare-fun bs!1571405 () Bool)

(assert (= bs!1571405 (and d!1973104 b!6286700)))

(assert (=> bs!1571405 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regTwo!32928 (regOne!32928 r!7292))) (= lt!2355963 lt!2355993)) (= lambda!345154 lambda!345111))))

(declare-fun bs!1571406 () Bool)

(assert (= bs!1571406 (and d!1973104 d!1973080)))

(assert (=> bs!1571406 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regTwo!32928 (regOne!32928 r!7292))) (= lt!2355963 lt!2355993)) (= lambda!345154 lambda!345146))))

(assert (=> bs!1571405 (not (= lambda!345154 lambda!345110))))

(declare-fun bs!1571407 () Bool)

(assert (= bs!1571407 (and d!1973104 b!6287091)))

(assert (=> bs!1571407 (not (= lambda!345154 lambda!345152))))

(assert (=> bs!1571405 (= lambda!345154 lambda!345109)))

(assert (=> bs!1571403 (not (= lambda!345154 lambda!345107))))

(assert (=> d!1973104 true))

(assert (=> d!1973104 true))

(assert (=> d!1973104 true))

(assert (=> d!1973104 (= (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 Nil!64799 s!2326 s!2326)) (Exists!3278 lambda!345154))))

(declare-fun lt!2356170 () Unit!158163)

(assert (=> d!1973104 (= lt!2356170 (choose!46693 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326))))

(assert (=> d!1973104 (validRegex!7944 (regOne!32928 (regOne!32928 r!7292)))))

(assert (=> d!1973104 (= (lemmaFindConcatSeparationEquivalentToExists!2277 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326) lt!2356170)))

(declare-fun bs!1571408 () Bool)

(assert (= bs!1571408 d!1973104))

(declare-fun m!7107898 () Bool)

(assert (=> bs!1571408 m!7107898))

(declare-fun m!7107900 () Bool)

(assert (=> bs!1571408 m!7107900))

(assert (=> bs!1571408 m!7107426))

(assert (=> bs!1571408 m!7107866))

(assert (=> bs!1571408 m!7107426))

(assert (=> bs!1571408 m!7107428))

(assert (=> b!6286700 d!1973104))

(declare-fun d!1973106 () Bool)

(declare-fun c!1140609 () Bool)

(assert (=> d!1973106 (= c!1140609 (isEmpty!36855 s!2326))))

(declare-fun e!3823120 () Bool)

(assert (=> d!1973106 (= (matchZipper!2220 lt!2355987 s!2326) e!3823120)))

(declare-fun b!6287107 () Bool)

(assert (=> b!6287107 (= e!3823120 (nullableZipper!1978 lt!2355987))))

(declare-fun b!6287108 () Bool)

(assert (=> b!6287108 (= e!3823120 (matchZipper!2220 (derivationStepZipper!2174 lt!2355987 (head!12916 s!2326)) (tail!12001 s!2326)))))

(assert (= (and d!1973106 c!1140609) b!6287107))

(assert (= (and d!1973106 (not c!1140609)) b!6287108))

(assert (=> d!1973106 m!7107832))

(declare-fun m!7107902 () Bool)

(assert (=> b!6287107 m!7107902))

(assert (=> b!6287108 m!7107826))

(assert (=> b!6287108 m!7107826))

(declare-fun m!7107904 () Bool)

(assert (=> b!6287108 m!7107904))

(assert (=> b!6287108 m!7107822))

(assert (=> b!6287108 m!7107904))

(assert (=> b!6287108 m!7107822))

(declare-fun m!7107906 () Bool)

(assert (=> b!6287108 m!7107906))

(assert (=> b!6286700 d!1973106))

(declare-fun d!1973108 () Bool)

(declare-fun choose!46696 (Int) Bool)

(assert (=> d!1973108 (= (Exists!3278 lambda!345110) (choose!46696 lambda!345110))))

(declare-fun bs!1571409 () Bool)

(assert (= bs!1571409 d!1973108))

(declare-fun m!7107908 () Bool)

(assert (=> bs!1571409 m!7107908))

(assert (=> b!6286700 d!1973108))

(declare-fun d!1973110 () Bool)

(assert (=> d!1973110 (= (Exists!3278 lambda!345111) (choose!46696 lambda!345111))))

(declare-fun bs!1571410 () Bool)

(assert (= bs!1571410 d!1973110))

(declare-fun m!7107910 () Bool)

(assert (=> bs!1571410 m!7107910))

(assert (=> b!6286700 d!1973110))

(declare-fun bs!1571411 () Bool)

(declare-fun d!1973112 () Bool)

(assert (= bs!1571411 (and d!1973112 d!1973068)))

(declare-fun lambda!345155 () Int)

(assert (=> bs!1571411 (= lambda!345155 lambda!345140)))

(declare-fun bs!1571412 () Bool)

(assert (= bs!1571412 (and d!1973112 d!1973082)))

(assert (=> bs!1571412 (= lambda!345155 lambda!345147)))

(declare-fun b!6287109 () Bool)

(declare-fun e!3823122 () Regex!16208)

(declare-fun e!3823126 () Regex!16208)

(assert (=> b!6287109 (= e!3823122 e!3823126)))

(declare-fun c!1140612 () Bool)

(assert (=> b!6287109 (= c!1140612 (is-Cons!64800 lt!2355971))))

(declare-fun b!6287110 () Bool)

(declare-fun e!3823121 () Bool)

(declare-fun e!3823123 () Bool)

(assert (=> b!6287110 (= e!3823121 e!3823123)))

(declare-fun c!1140611 () Bool)

(assert (=> b!6287110 (= c!1140611 (isEmpty!36851 (tail!12002 lt!2355971)))))

(declare-fun b!6287111 () Bool)

(declare-fun e!3823125 () Bool)

(assert (=> b!6287111 (= e!3823125 e!3823121)))

(declare-fun c!1140610 () Bool)

(assert (=> b!6287111 (= c!1140610 (isEmpty!36851 lt!2355971))))

(declare-fun b!6287112 () Bool)

(declare-fun lt!2356171 () Regex!16208)

(assert (=> b!6287112 (= e!3823121 (isEmptyExpr!1614 lt!2356171))))

(declare-fun b!6287113 () Bool)

(assert (=> b!6287113 (= e!3823123 (= lt!2356171 (head!12917 lt!2355971)))))

(assert (=> d!1973112 e!3823125))

(declare-fun res!2592862 () Bool)

(assert (=> d!1973112 (=> (not res!2592862) (not e!3823125))))

(assert (=> d!1973112 (= res!2592862 (validRegex!7944 lt!2356171))))

(assert (=> d!1973112 (= lt!2356171 e!3823122)))

(declare-fun c!1140613 () Bool)

(declare-fun e!3823124 () Bool)

(assert (=> d!1973112 (= c!1140613 e!3823124)))

(declare-fun res!2592863 () Bool)

(assert (=> d!1973112 (=> (not res!2592863) (not e!3823124))))

(assert (=> d!1973112 (= res!2592863 (is-Cons!64800 lt!2355971))))

(assert (=> d!1973112 (forall!15353 lt!2355971 lambda!345155)))

(assert (=> d!1973112 (= (generalisedConcat!1805 lt!2355971) lt!2356171)))

(declare-fun b!6287114 () Bool)

(assert (=> b!6287114 (= e!3823123 (isConcat!1137 lt!2356171))))

(declare-fun b!6287115 () Bool)

(assert (=> b!6287115 (= e!3823122 (h!71248 lt!2355971))))

(declare-fun b!6287116 () Bool)

(assert (=> b!6287116 (= e!3823124 (isEmpty!36851 (t!378486 lt!2355971)))))

(declare-fun b!6287117 () Bool)

(assert (=> b!6287117 (= e!3823126 (Concat!25053 (h!71248 lt!2355971) (generalisedConcat!1805 (t!378486 lt!2355971))))))

(declare-fun b!6287118 () Bool)

(assert (=> b!6287118 (= e!3823126 EmptyExpr!16208)))

(assert (= (and d!1973112 res!2592863) b!6287116))

(assert (= (and d!1973112 c!1140613) b!6287115))

(assert (= (and d!1973112 (not c!1140613)) b!6287109))

(assert (= (and b!6287109 c!1140612) b!6287117))

(assert (= (and b!6287109 (not c!1140612)) b!6287118))

(assert (= (and d!1973112 res!2592862) b!6287111))

(assert (= (and b!6287111 c!1140610) b!6287112))

(assert (= (and b!6287111 (not c!1140610)) b!6287110))

(assert (= (and b!6287110 c!1140611) b!6287113))

(assert (= (and b!6287110 (not c!1140611)) b!6287114))

(declare-fun m!7107912 () Bool)

(assert (=> b!6287116 m!7107912))

(declare-fun m!7107914 () Bool)

(assert (=> b!6287114 m!7107914))

(declare-fun m!7107916 () Bool)

(assert (=> b!6287112 m!7107916))

(declare-fun m!7107918 () Bool)

(assert (=> b!6287110 m!7107918))

(assert (=> b!6287110 m!7107918))

(declare-fun m!7107920 () Bool)

(assert (=> b!6287110 m!7107920))

(declare-fun m!7107922 () Bool)

(assert (=> b!6287113 m!7107922))

(declare-fun m!7107924 () Bool)

(assert (=> b!6287117 m!7107924))

(declare-fun m!7107926 () Bool)

(assert (=> b!6287111 m!7107926))

(declare-fun m!7107928 () Bool)

(assert (=> d!1973112 m!7107928))

(declare-fun m!7107930 () Bool)

(assert (=> d!1973112 m!7107930))

(assert (=> b!6286700 d!1973112))

(declare-fun d!1973114 () Bool)

(declare-fun c!1140614 () Bool)

(assert (=> d!1973114 (= c!1140614 (isEmpty!36855 s!2326))))

(declare-fun e!3823127 () Bool)

(assert (=> d!1973114 (= (matchZipper!2220 lt!2355968 s!2326) e!3823127)))

(declare-fun b!6287119 () Bool)

(assert (=> b!6287119 (= e!3823127 (nullableZipper!1978 lt!2355968))))

(declare-fun b!6287120 () Bool)

(assert (=> b!6287120 (= e!3823127 (matchZipper!2220 (derivationStepZipper!2174 lt!2355968 (head!12916 s!2326)) (tail!12001 s!2326)))))

(assert (= (and d!1973114 c!1140614) b!6287119))

(assert (= (and d!1973114 (not c!1140614)) b!6287120))

(assert (=> d!1973114 m!7107832))

(declare-fun m!7107932 () Bool)

(assert (=> b!6287119 m!7107932))

(assert (=> b!6287120 m!7107826))

(assert (=> b!6287120 m!7107826))

(declare-fun m!7107934 () Bool)

(assert (=> b!6287120 m!7107934))

(assert (=> b!6287120 m!7107822))

(assert (=> b!6287120 m!7107934))

(assert (=> b!6287120 m!7107822))

(declare-fun m!7107936 () Bool)

(assert (=> b!6287120 m!7107936))

(assert (=> b!6286700 d!1973114))

(declare-fun bs!1571413 () Bool)

(declare-fun d!1973116 () Bool)

(assert (= bs!1571413 (and d!1973116 d!1973068)))

(declare-fun lambda!345156 () Int)

(assert (=> bs!1571413 (= lambda!345156 lambda!345140)))

(declare-fun bs!1571414 () Bool)

(assert (= bs!1571414 (and d!1973116 d!1973082)))

(assert (=> bs!1571414 (= lambda!345156 lambda!345147)))

(declare-fun bs!1571415 () Bool)

(assert (= bs!1571415 (and d!1973116 d!1973112)))

(assert (=> bs!1571415 (= lambda!345156 lambda!345155)))

(declare-fun b!6287121 () Bool)

(declare-fun e!3823129 () Regex!16208)

(declare-fun e!3823133 () Regex!16208)

(assert (=> b!6287121 (= e!3823129 e!3823133)))

(declare-fun c!1140617 () Bool)

(assert (=> b!6287121 (= c!1140617 (is-Cons!64800 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6287122 () Bool)

(declare-fun e!3823128 () Bool)

(declare-fun e!3823130 () Bool)

(assert (=> b!6287122 (= e!3823128 e!3823130)))

(declare-fun c!1140616 () Bool)

(assert (=> b!6287122 (= c!1140616 (isEmpty!36851 (tail!12002 (t!378486 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun b!6287123 () Bool)

(declare-fun e!3823132 () Bool)

(assert (=> b!6287123 (= e!3823132 e!3823128)))

(declare-fun c!1140615 () Bool)

(assert (=> b!6287123 (= c!1140615 (isEmpty!36851 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6287124 () Bool)

(declare-fun lt!2356172 () Regex!16208)

(assert (=> b!6287124 (= e!3823128 (isEmptyExpr!1614 lt!2356172))))

(declare-fun b!6287125 () Bool)

(assert (=> b!6287125 (= e!3823130 (= lt!2356172 (head!12917 (t!378486 (exprs!6092 (h!71249 zl!343))))))))

(assert (=> d!1973116 e!3823132))

(declare-fun res!2592864 () Bool)

(assert (=> d!1973116 (=> (not res!2592864) (not e!3823132))))

(assert (=> d!1973116 (= res!2592864 (validRegex!7944 lt!2356172))))

(assert (=> d!1973116 (= lt!2356172 e!3823129)))

(declare-fun c!1140618 () Bool)

(declare-fun e!3823131 () Bool)

(assert (=> d!1973116 (= c!1140618 e!3823131)))

(declare-fun res!2592865 () Bool)

(assert (=> d!1973116 (=> (not res!2592865) (not e!3823131))))

(assert (=> d!1973116 (= res!2592865 (is-Cons!64800 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(assert (=> d!1973116 (forall!15353 (t!378486 (exprs!6092 (h!71249 zl!343))) lambda!345156)))

(assert (=> d!1973116 (= (generalisedConcat!1805 (t!378486 (exprs!6092 (h!71249 zl!343)))) lt!2356172)))

(declare-fun b!6287126 () Bool)

(assert (=> b!6287126 (= e!3823130 (isConcat!1137 lt!2356172))))

(declare-fun b!6287127 () Bool)

(assert (=> b!6287127 (= e!3823129 (h!71248 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6287128 () Bool)

(assert (=> b!6287128 (= e!3823131 (isEmpty!36851 (t!378486 (t!378486 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun b!6287129 () Bool)

(assert (=> b!6287129 (= e!3823133 (Concat!25053 (h!71248 (t!378486 (exprs!6092 (h!71249 zl!343)))) (generalisedConcat!1805 (t!378486 (t!378486 (exprs!6092 (h!71249 zl!343)))))))))

(declare-fun b!6287130 () Bool)

(assert (=> b!6287130 (= e!3823133 EmptyExpr!16208)))

(assert (= (and d!1973116 res!2592865) b!6287128))

(assert (= (and d!1973116 c!1140618) b!6287127))

(assert (= (and d!1973116 (not c!1140618)) b!6287121))

(assert (= (and b!6287121 c!1140617) b!6287129))

(assert (= (and b!6287121 (not c!1140617)) b!6287130))

(assert (= (and d!1973116 res!2592864) b!6287123))

(assert (= (and b!6287123 c!1140615) b!6287124))

(assert (= (and b!6287123 (not c!1140615)) b!6287122))

(assert (= (and b!6287122 c!1140616) b!6287125))

(assert (= (and b!6287122 (not c!1140616)) b!6287126))

(declare-fun m!7107938 () Bool)

(assert (=> b!6287128 m!7107938))

(declare-fun m!7107940 () Bool)

(assert (=> b!6287126 m!7107940))

(declare-fun m!7107942 () Bool)

(assert (=> b!6287124 m!7107942))

(declare-fun m!7107944 () Bool)

(assert (=> b!6287122 m!7107944))

(assert (=> b!6287122 m!7107944))

(declare-fun m!7107946 () Bool)

(assert (=> b!6287122 m!7107946))

(declare-fun m!7107948 () Bool)

(assert (=> b!6287125 m!7107948))

(declare-fun m!7107950 () Bool)

(assert (=> b!6287129 m!7107950))

(assert (=> b!6287123 m!7107556))

(declare-fun m!7107952 () Bool)

(assert (=> d!1973116 m!7107952))

(declare-fun m!7107954 () Bool)

(assert (=> d!1973116 m!7107954))

(assert (=> b!6286700 d!1973116))

(declare-fun b!6287131 () Bool)

(declare-fun e!3823139 () Bool)

(assert (=> b!6287131 (= e!3823139 (= (head!12916 s!2326) (c!1140533 lt!2355994)))))

(declare-fun b!6287132 () Bool)

(declare-fun res!2592870 () Bool)

(assert (=> b!6287132 (=> (not res!2592870) (not e!3823139))))

(declare-fun call!532275 () Bool)

(assert (=> b!6287132 (= res!2592870 (not call!532275))))

(declare-fun b!6287133 () Bool)

(declare-fun res!2592871 () Bool)

(declare-fun e!3823135 () Bool)

(assert (=> b!6287133 (=> res!2592871 e!3823135)))

(assert (=> b!6287133 (= res!2592871 (not (is-ElementMatch!16208 lt!2355994)))))

(declare-fun e!3823134 () Bool)

(assert (=> b!6287133 (= e!3823134 e!3823135)))

(declare-fun b!6287134 () Bool)

(declare-fun e!3823140 () Bool)

(assert (=> b!6287134 (= e!3823140 (matchR!8391 (derivativeStep!4917 lt!2355994 (head!12916 s!2326)) (tail!12001 s!2326)))))

(declare-fun b!6287136 () Bool)

(declare-fun res!2592866 () Bool)

(assert (=> b!6287136 (=> res!2592866 e!3823135)))

(assert (=> b!6287136 (= res!2592866 e!3823139)))

(declare-fun res!2592867 () Bool)

(assert (=> b!6287136 (=> (not res!2592867) (not e!3823139))))

(declare-fun lt!2356173 () Bool)

(assert (=> b!6287136 (= res!2592867 lt!2356173)))

(declare-fun b!6287137 () Bool)

(assert (=> b!6287137 (= e!3823140 (nullable!6201 lt!2355994))))

(declare-fun b!6287138 () Bool)

(declare-fun res!2592869 () Bool)

(assert (=> b!6287138 (=> (not res!2592869) (not e!3823139))))

(assert (=> b!6287138 (= res!2592869 (isEmpty!36855 (tail!12001 s!2326)))))

(declare-fun bm!532270 () Bool)

(assert (=> bm!532270 (= call!532275 (isEmpty!36855 s!2326))))

(declare-fun b!6287139 () Bool)

(declare-fun e!3823136 () Bool)

(assert (=> b!6287139 (= e!3823136 e!3823134)))

(declare-fun c!1140620 () Bool)

(assert (=> b!6287139 (= c!1140620 (is-EmptyLang!16208 lt!2355994))))

(declare-fun b!6287140 () Bool)

(declare-fun res!2592872 () Bool)

(declare-fun e!3823137 () Bool)

(assert (=> b!6287140 (=> res!2592872 e!3823137)))

(assert (=> b!6287140 (= res!2592872 (not (isEmpty!36855 (tail!12001 s!2326))))))

(declare-fun b!6287141 () Bool)

(assert (=> b!6287141 (= e!3823137 (not (= (head!12916 s!2326) (c!1140533 lt!2355994))))))

(declare-fun b!6287142 () Bool)

(declare-fun e!3823138 () Bool)

(assert (=> b!6287142 (= e!3823138 e!3823137)))

(declare-fun res!2592873 () Bool)

(assert (=> b!6287142 (=> res!2592873 e!3823137)))

(assert (=> b!6287142 (= res!2592873 call!532275)))

(declare-fun b!6287143 () Bool)

(assert (=> b!6287143 (= e!3823134 (not lt!2356173))))

(declare-fun b!6287144 () Bool)

(assert (=> b!6287144 (= e!3823135 e!3823138)))

(declare-fun res!2592868 () Bool)

(assert (=> b!6287144 (=> (not res!2592868) (not e!3823138))))

(assert (=> b!6287144 (= res!2592868 (not lt!2356173))))

(declare-fun d!1973118 () Bool)

(assert (=> d!1973118 e!3823136))

(declare-fun c!1140619 () Bool)

(assert (=> d!1973118 (= c!1140619 (is-EmptyExpr!16208 lt!2355994))))

(assert (=> d!1973118 (= lt!2356173 e!3823140)))

(declare-fun c!1140621 () Bool)

(assert (=> d!1973118 (= c!1140621 (isEmpty!36855 s!2326))))

(assert (=> d!1973118 (validRegex!7944 lt!2355994)))

(assert (=> d!1973118 (= (matchR!8391 lt!2355994 s!2326) lt!2356173)))

(declare-fun b!6287135 () Bool)

(assert (=> b!6287135 (= e!3823136 (= lt!2356173 call!532275))))

(assert (= (and d!1973118 c!1140621) b!6287137))

(assert (= (and d!1973118 (not c!1140621)) b!6287134))

(assert (= (and d!1973118 c!1140619) b!6287135))

(assert (= (and d!1973118 (not c!1140619)) b!6287139))

(assert (= (and b!6287139 c!1140620) b!6287143))

(assert (= (and b!6287139 (not c!1140620)) b!6287133))

(assert (= (and b!6287133 (not res!2592871)) b!6287136))

(assert (= (and b!6287136 res!2592867) b!6287132))

(assert (= (and b!6287132 res!2592870) b!6287138))

(assert (= (and b!6287138 res!2592869) b!6287131))

(assert (= (and b!6287136 (not res!2592866)) b!6287144))

(assert (= (and b!6287144 res!2592868) b!6287142))

(assert (= (and b!6287142 (not res!2592873)) b!6287140))

(assert (= (and b!6287140 (not res!2592872)) b!6287141))

(assert (= (or b!6287135 b!6287132 b!6287142) bm!532270))

(assert (=> b!6287138 m!7107822))

(assert (=> b!6287138 m!7107822))

(assert (=> b!6287138 m!7107824))

(assert (=> b!6287141 m!7107826))

(assert (=> b!6287134 m!7107826))

(assert (=> b!6287134 m!7107826))

(declare-fun m!7107956 () Bool)

(assert (=> b!6287134 m!7107956))

(assert (=> b!6287134 m!7107822))

(assert (=> b!6287134 m!7107956))

(assert (=> b!6287134 m!7107822))

(declare-fun m!7107958 () Bool)

(assert (=> b!6287134 m!7107958))

(assert (=> d!1973118 m!7107832))

(assert (=> d!1973118 m!7107848))

(assert (=> b!6287131 m!7107826))

(assert (=> b!6287140 m!7107822))

(assert (=> b!6287140 m!7107822))

(assert (=> b!6287140 m!7107824))

(assert (=> bm!532270 m!7107832))

(declare-fun m!7107960 () Bool)

(assert (=> b!6287137 m!7107960))

(assert (=> b!6286700 d!1973118))

(declare-fun bs!1571416 () Bool)

(declare-fun b!6287149 () Bool)

(assert (= bs!1571416 (and b!6287149 b!6286709)))

(declare-fun lambda!345157 () Int)

(assert (=> bs!1571416 (not (= lambda!345157 lambda!345106))))

(declare-fun bs!1571417 () Bool)

(assert (= bs!1571417 (and b!6287149 b!6287094)))

(assert (=> bs!1571417 (not (= lambda!345157 lambda!345153))))

(declare-fun bs!1571418 () Bool)

(assert (= bs!1571418 (and b!6287149 b!6286700)))

(assert (=> bs!1571418 (not (= lambda!345157 lambda!345111))))

(declare-fun bs!1571419 () Bool)

(assert (= bs!1571419 (and b!6287149 d!1973080)))

(assert (=> bs!1571419 (not (= lambda!345157 lambda!345146))))

(declare-fun bs!1571420 () Bool)

(assert (= bs!1571420 (and b!6287149 d!1973104)))

(assert (=> bs!1571420 (not (= lambda!345157 lambda!345154))))

(assert (=> bs!1571418 (not (= lambda!345157 lambda!345110))))

(declare-fun bs!1571421 () Bool)

(assert (= bs!1571421 (and b!6287149 b!6287091)))

(assert (=> bs!1571421 (= (and (= (reg!16537 lt!2355994) (reg!16537 lt!2355963)) (= lt!2355994 lt!2355963)) (= lambda!345157 lambda!345152))))

(assert (=> bs!1571418 (not (= lambda!345157 lambda!345109))))

(assert (=> bs!1571416 (not (= lambda!345157 lambda!345107))))

(assert (=> b!6287149 true))

(assert (=> b!6287149 true))

(declare-fun bs!1571422 () Bool)

(declare-fun b!6287152 () Bool)

(assert (= bs!1571422 (and b!6287152 b!6286709)))

(declare-fun lambda!345158 () Int)

(assert (=> bs!1571422 (not (= lambda!345158 lambda!345106))))

(declare-fun bs!1571423 () Bool)

(assert (= bs!1571423 (and b!6287152 b!6287094)))

(assert (=> bs!1571423 (= (and (= (regOne!32928 lt!2355994) (regOne!32928 lt!2355963)) (= (regTwo!32928 lt!2355994) (regTwo!32928 lt!2355963))) (= lambda!345158 lambda!345153))))

(declare-fun bs!1571424 () Bool)

(assert (= bs!1571424 (and b!6287152 b!6286700)))

(assert (=> bs!1571424 (not (= lambda!345158 lambda!345111))))

(declare-fun bs!1571425 () Bool)

(assert (= bs!1571425 (and b!6287152 d!1973080)))

(assert (=> bs!1571425 (not (= lambda!345158 lambda!345146))))

(declare-fun bs!1571426 () Bool)

(assert (= bs!1571426 (and b!6287152 d!1973104)))

(assert (=> bs!1571426 (not (= lambda!345158 lambda!345154))))

(assert (=> bs!1571424 (= (and (= (regOne!32928 lt!2355994) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 lt!2355994) lt!2355963)) (= lambda!345158 lambda!345110))))

(declare-fun bs!1571427 () Bool)

(assert (= bs!1571427 (and b!6287152 b!6287149)))

(assert (=> bs!1571427 (not (= lambda!345158 lambda!345157))))

(declare-fun bs!1571428 () Bool)

(assert (= bs!1571428 (and b!6287152 b!6287091)))

(assert (=> bs!1571428 (not (= lambda!345158 lambda!345152))))

(assert (=> bs!1571424 (not (= lambda!345158 lambda!345109))))

(assert (=> bs!1571422 (= (and (= (regOne!32928 lt!2355994) (regOne!32928 r!7292)) (= (regTwo!32928 lt!2355994) (regTwo!32928 r!7292))) (= lambda!345158 lambda!345107))))

(assert (=> b!6287152 true))

(assert (=> b!6287152 true))

(declare-fun d!1973120 () Bool)

(declare-fun c!1140622 () Bool)

(assert (=> d!1973120 (= c!1140622 (is-EmptyExpr!16208 lt!2355994))))

(declare-fun e!3823145 () Bool)

(assert (=> d!1973120 (= (matchRSpec!3309 lt!2355994 s!2326) e!3823145)))

(declare-fun b!6287145 () Bool)

(declare-fun e!3823146 () Bool)

(assert (=> b!6287145 (= e!3823146 (= s!2326 (Cons!64799 (c!1140533 lt!2355994) Nil!64799)))))

(declare-fun b!6287146 () Bool)

(declare-fun c!1140623 () Bool)

(assert (=> b!6287146 (= c!1140623 (is-Union!16208 lt!2355994))))

(declare-fun e!3823141 () Bool)

(assert (=> b!6287146 (= e!3823146 e!3823141)))

(declare-fun b!6287147 () Bool)

(declare-fun e!3823142 () Bool)

(assert (=> b!6287147 (= e!3823141 e!3823142)))

(declare-fun res!2592875 () Bool)

(assert (=> b!6287147 (= res!2592875 (matchRSpec!3309 (regOne!32929 lt!2355994) s!2326))))

(assert (=> b!6287147 (=> res!2592875 e!3823142)))

(declare-fun b!6287148 () Bool)

(declare-fun e!3823144 () Bool)

(assert (=> b!6287148 (= e!3823145 e!3823144)))

(declare-fun res!2592874 () Bool)

(assert (=> b!6287148 (= res!2592874 (not (is-EmptyLang!16208 lt!2355994)))))

(assert (=> b!6287148 (=> (not res!2592874) (not e!3823144))))

(declare-fun e!3823143 () Bool)

(declare-fun call!532277 () Bool)

(assert (=> b!6287149 (= e!3823143 call!532277)))

(declare-fun bm!532271 () Bool)

(declare-fun call!532276 () Bool)

(assert (=> bm!532271 (= call!532276 (isEmpty!36855 s!2326))))

(declare-fun b!6287150 () Bool)

(assert (=> b!6287150 (= e!3823142 (matchRSpec!3309 (regTwo!32929 lt!2355994) s!2326))))

(declare-fun b!6287151 () Bool)

(assert (=> b!6287151 (= e!3823145 call!532276)))

(declare-fun bm!532272 () Bool)

(declare-fun c!1140624 () Bool)

(assert (=> bm!532272 (= call!532277 (Exists!3278 (ite c!1140624 lambda!345157 lambda!345158)))))

(declare-fun e!3823147 () Bool)

(assert (=> b!6287152 (= e!3823147 call!532277)))

(declare-fun b!6287153 () Bool)

(declare-fun c!1140625 () Bool)

(assert (=> b!6287153 (= c!1140625 (is-ElementMatch!16208 lt!2355994))))

(assert (=> b!6287153 (= e!3823144 e!3823146)))

(declare-fun b!6287154 () Bool)

(assert (=> b!6287154 (= e!3823141 e!3823147)))

(assert (=> b!6287154 (= c!1140624 (is-Star!16208 lt!2355994))))

(declare-fun b!6287155 () Bool)

(declare-fun res!2592876 () Bool)

(assert (=> b!6287155 (=> res!2592876 e!3823143)))

(assert (=> b!6287155 (= res!2592876 call!532276)))

(assert (=> b!6287155 (= e!3823147 e!3823143)))

(assert (= (and d!1973120 c!1140622) b!6287151))

(assert (= (and d!1973120 (not c!1140622)) b!6287148))

(assert (= (and b!6287148 res!2592874) b!6287153))

(assert (= (and b!6287153 c!1140625) b!6287145))

(assert (= (and b!6287153 (not c!1140625)) b!6287146))

(assert (= (and b!6287146 c!1140623) b!6287147))

(assert (= (and b!6287146 (not c!1140623)) b!6287154))

(assert (= (and b!6287147 (not res!2592875)) b!6287150))

(assert (= (and b!6287154 c!1140624) b!6287155))

(assert (= (and b!6287154 (not c!1140624)) b!6287152))

(assert (= (and b!6287155 (not res!2592876)) b!6287149))

(assert (= (or b!6287149 b!6287152) bm!532272))

(assert (= (or b!6287151 b!6287155) bm!532271))

(declare-fun m!7107962 () Bool)

(assert (=> b!6287147 m!7107962))

(assert (=> bm!532271 m!7107832))

(declare-fun m!7107964 () Bool)

(assert (=> b!6287150 m!7107964))

(declare-fun m!7107966 () Bool)

(assert (=> bm!532272 m!7107966))

(assert (=> b!6286700 d!1973120))

(declare-fun d!1973122 () Bool)

(assert (=> d!1973122 (= (Exists!3278 lambda!345109) (choose!46696 lambda!345109))))

(declare-fun bs!1571429 () Bool)

(assert (= bs!1571429 d!1973122))

(declare-fun m!7107968 () Bool)

(assert (=> bs!1571429 m!7107968))

(assert (=> b!6286700 d!1973122))

(declare-fun d!1973124 () Bool)

(assert (=> d!1973124 (= (matchR!8391 lt!2355994 s!2326) (matchRSpec!3309 lt!2355994 s!2326))))

(declare-fun lt!2356174 () Unit!158163)

(assert (=> d!1973124 (= lt!2356174 (choose!46694 lt!2355994 s!2326))))

(assert (=> d!1973124 (validRegex!7944 lt!2355994)))

(assert (=> d!1973124 (= (mainMatchTheorem!3309 lt!2355994 s!2326) lt!2356174)))

(declare-fun bs!1571430 () Bool)

(assert (= bs!1571430 d!1973124))

(assert (=> bs!1571430 m!7107458))

(assert (=> bs!1571430 m!7107456))

(declare-fun m!7107970 () Bool)

(assert (=> bs!1571430 m!7107970))

(assert (=> bs!1571430 m!7107848))

(assert (=> b!6286700 d!1973124))

(declare-fun bs!1571431 () Bool)

(declare-fun d!1973126 () Bool)

(assert (= bs!1571431 (and d!1973126 b!6286709)))

(declare-fun lambda!345163 () Int)

(assert (=> bs!1571431 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355963 (regTwo!32928 r!7292))) (= lambda!345163 lambda!345106))))

(declare-fun bs!1571432 () Bool)

(assert (= bs!1571432 (and d!1973126 b!6287094)))

(assert (=> bs!1571432 (not (= lambda!345163 lambda!345153))))

(declare-fun bs!1571433 () Bool)

(assert (= bs!1571433 (and d!1973126 d!1973080)))

(assert (=> bs!1571433 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regTwo!32928 (regOne!32928 r!7292))) (= lt!2355963 lt!2355993)) (= lambda!345163 lambda!345146))))

(declare-fun bs!1571434 () Bool)

(assert (= bs!1571434 (and d!1973126 d!1973104)))

(assert (=> bs!1571434 (= lambda!345163 lambda!345154)))

(declare-fun bs!1571435 () Bool)

(assert (= bs!1571435 (and d!1973126 b!6286700)))

(assert (=> bs!1571435 (not (= lambda!345163 lambda!345110))))

(declare-fun bs!1571436 () Bool)

(assert (= bs!1571436 (and d!1973126 b!6287149)))

(assert (=> bs!1571436 (not (= lambda!345163 lambda!345157))))

(declare-fun bs!1571437 () Bool)

(assert (= bs!1571437 (and d!1973126 b!6287091)))

(assert (=> bs!1571437 (not (= lambda!345163 lambda!345152))))

(assert (=> bs!1571435 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regTwo!32928 (regOne!32928 r!7292))) (= lt!2355963 lt!2355993)) (= lambda!345163 lambda!345111))))

(declare-fun bs!1571438 () Bool)

(assert (= bs!1571438 (and d!1973126 b!6287152)))

(assert (=> bs!1571438 (not (= lambda!345163 lambda!345158))))

(assert (=> bs!1571435 (= lambda!345163 lambda!345109)))

(assert (=> bs!1571431 (not (= lambda!345163 lambda!345107))))

(assert (=> d!1973126 true))

(assert (=> d!1973126 true))

(assert (=> d!1973126 true))

(declare-fun lambda!345164 () Int)

(assert (=> bs!1571431 (not (= lambda!345164 lambda!345106))))

(assert (=> bs!1571432 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 lt!2355963)) (= lt!2355963 (regTwo!32928 lt!2355963))) (= lambda!345164 lambda!345153))))

(assert (=> bs!1571433 (not (= lambda!345164 lambda!345146))))

(assert (=> bs!1571434 (not (= lambda!345164 lambda!345154))))

(declare-fun bs!1571439 () Bool)

(assert (= bs!1571439 d!1973126))

(assert (=> bs!1571439 (not (= lambda!345164 lambda!345163))))

(assert (=> bs!1571435 (= lambda!345164 lambda!345110)))

(assert (=> bs!1571436 (not (= lambda!345164 lambda!345157))))

(assert (=> bs!1571437 (not (= lambda!345164 lambda!345152))))

(assert (=> bs!1571435 (not (= lambda!345164 lambda!345111))))

(assert (=> bs!1571438 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 lt!2355994)) (= lt!2355963 (regTwo!32928 lt!2355994))) (= lambda!345164 lambda!345158))))

(assert (=> bs!1571435 (not (= lambda!345164 lambda!345109))))

(assert (=> bs!1571431 (= (and (= (regOne!32928 (regOne!32928 r!7292)) (regOne!32928 r!7292)) (= lt!2355963 (regTwo!32928 r!7292))) (= lambda!345164 lambda!345107))))

(assert (=> d!1973126 true))

(assert (=> d!1973126 true))

(assert (=> d!1973126 true))

(assert (=> d!1973126 (= (Exists!3278 lambda!345163) (Exists!3278 lambda!345164))))

(declare-fun lt!2356177 () Unit!158163)

(declare-fun choose!46697 (Regex!16208 Regex!16208 List!64923) Unit!158163)

(assert (=> d!1973126 (= lt!2356177 (choose!46697 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326))))

(assert (=> d!1973126 (validRegex!7944 (regOne!32928 (regOne!32928 r!7292)))))

(assert (=> d!1973126 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1815 (regOne!32928 (regOne!32928 r!7292)) lt!2355963 s!2326) lt!2356177)))

(declare-fun m!7107972 () Bool)

(assert (=> bs!1571439 m!7107972))

(declare-fun m!7107974 () Bool)

(assert (=> bs!1571439 m!7107974))

(declare-fun m!7107976 () Bool)

(assert (=> bs!1571439 m!7107976))

(assert (=> bs!1571439 m!7107866))

(assert (=> b!6286700 d!1973126))

(declare-fun d!1973128 () Bool)

(declare-fun nullableFct!2152 (Regex!16208) Bool)

(assert (=> d!1973128 (= (nullable!6201 (regOne!32928 (regOne!32928 r!7292))) (nullableFct!2152 (regOne!32928 (regOne!32928 r!7292))))))

(declare-fun bs!1571440 () Bool)

(assert (= bs!1571440 d!1973128))

(declare-fun m!7107978 () Bool)

(assert (=> bs!1571440 m!7107978))

(assert (=> b!6286717 d!1973128))

(assert (=> b!6286727 d!1973060))

(declare-fun bs!1571441 () Bool)

(declare-fun d!1973130 () Bool)

(assert (= bs!1571441 (and d!1973130 b!6286730)))

(declare-fun lambda!345165 () Int)

(assert (=> bs!1571441 (= lambda!345165 lambda!345108)))

(declare-fun bs!1571442 () Bool)

(assert (= bs!1571442 (and d!1973130 d!1973078)))

(assert (=> bs!1571442 (= lambda!345165 lambda!345143)))

(assert (=> d!1973130 true))

(assert (=> d!1973130 (= (derivationStepZipper!2174 lt!2355987 (h!71247 s!2326)) (flatMap!1713 lt!2355987 lambda!345165))))

(declare-fun bs!1571443 () Bool)

(assert (= bs!1571443 d!1973130))

(declare-fun m!7107980 () Bool)

(assert (=> bs!1571443 m!7107980))

(assert (=> b!6286726 d!1973130))

(declare-fun d!1973132 () Bool)

(declare-fun choose!46698 ((Set Context!11184) Int) (Set Context!11184))

(assert (=> d!1973132 (= (flatMap!1713 lt!2355987 lambda!345108) (choose!46698 lt!2355987 lambda!345108))))

(declare-fun bs!1571444 () Bool)

(assert (= bs!1571444 d!1973132))

(declare-fun m!7107982 () Bool)

(assert (=> bs!1571444 m!7107982))

(assert (=> b!6286726 d!1973132))

(declare-fun d!1973134 () Bool)

(declare-fun dynLambda!25642 (Int Context!11184) (Set Context!11184))

(assert (=> d!1973134 (= (flatMap!1713 lt!2355987 lambda!345108) (dynLambda!25642 lambda!345108 lt!2355966))))

(declare-fun lt!2356180 () Unit!158163)

(declare-fun choose!46699 ((Set Context!11184) Context!11184 Int) Unit!158163)

(assert (=> d!1973134 (= lt!2356180 (choose!46699 lt!2355987 lt!2355966 lambda!345108))))

(assert (=> d!1973134 (= lt!2355987 (set.insert lt!2355966 (as set.empty (Set Context!11184))))))

(assert (=> d!1973134 (= (lemmaFlatMapOnSingletonSet!1239 lt!2355987 lt!2355966 lambda!345108) lt!2356180)))

(declare-fun b_lambda!239293 () Bool)

(assert (=> (not b_lambda!239293) (not d!1973134)))

(declare-fun bs!1571445 () Bool)

(assert (= bs!1571445 d!1973134))

(assert (=> bs!1571445 m!7107404))

(declare-fun m!7107984 () Bool)

(assert (=> bs!1571445 m!7107984))

(declare-fun m!7107986 () Bool)

(assert (=> bs!1571445 m!7107986))

(assert (=> bs!1571445 m!7107400))

(assert (=> b!6286726 d!1973134))

(declare-fun d!1973136 () Bool)

(declare-fun c!1140630 () Bool)

(declare-fun e!3823160 () Bool)

(assert (=> d!1973136 (= c!1140630 e!3823160)))

(declare-fun res!2592887 () Bool)

(assert (=> d!1973136 (=> (not res!2592887) (not e!3823160))))

(assert (=> d!1973136 (= res!2592887 (is-Cons!64800 (exprs!6092 lt!2355990)))))

(declare-fun e!3823159 () (Set Context!11184))

(assert (=> d!1973136 (= (derivationStepZipperUp!1382 lt!2355990 (h!71247 s!2326)) e!3823159)))

(declare-fun b!6287174 () Bool)

(assert (=> b!6287174 (= e!3823160 (nullable!6201 (h!71248 (exprs!6092 lt!2355990))))))

(declare-fun b!6287175 () Bool)

(declare-fun e!3823158 () (Set Context!11184))

(assert (=> b!6287175 (= e!3823158 (as set.empty (Set Context!11184)))))

(declare-fun bm!532275 () Bool)

(declare-fun call!532280 () (Set Context!11184))

(assert (=> bm!532275 (= call!532280 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 lt!2355990)) (Context!11185 (t!378486 (exprs!6092 lt!2355990))) (h!71247 s!2326)))))

(declare-fun b!6287176 () Bool)

(assert (=> b!6287176 (= e!3823159 e!3823158)))

(declare-fun c!1140631 () Bool)

(assert (=> b!6287176 (= c!1140631 (is-Cons!64800 (exprs!6092 lt!2355990)))))

(declare-fun b!6287177 () Bool)

(assert (=> b!6287177 (= e!3823159 (set.union call!532280 (derivationStepZipperUp!1382 (Context!11185 (t!378486 (exprs!6092 lt!2355990))) (h!71247 s!2326))))))

(declare-fun b!6287178 () Bool)

(assert (=> b!6287178 (= e!3823158 call!532280)))

(assert (= (and d!1973136 res!2592887) b!6287174))

(assert (= (and d!1973136 c!1140630) b!6287177))

(assert (= (and d!1973136 (not c!1140630)) b!6287176))

(assert (= (and b!6287176 c!1140631) b!6287178))

(assert (= (and b!6287176 (not c!1140631)) b!6287175))

(assert (= (or b!6287177 b!6287178) bm!532275))

(declare-fun m!7107988 () Bool)

(assert (=> b!6287174 m!7107988))

(declare-fun m!7107990 () Bool)

(assert (=> bm!532275 m!7107990))

(declare-fun m!7107992 () Bool)

(assert (=> b!6287177 m!7107992))

(assert (=> b!6286726 d!1973136))

(declare-fun d!1973138 () Bool)

(declare-fun c!1140632 () Bool)

(declare-fun e!3823163 () Bool)

(assert (=> d!1973138 (= c!1140632 e!3823163)))

(declare-fun res!2592888 () Bool)

(assert (=> d!1973138 (=> (not res!2592888) (not e!3823163))))

(assert (=> d!1973138 (= res!2592888 (is-Cons!64800 (exprs!6092 lt!2355966)))))

(declare-fun e!3823162 () (Set Context!11184))

(assert (=> d!1973138 (= (derivationStepZipperUp!1382 lt!2355966 (h!71247 s!2326)) e!3823162)))

(declare-fun b!6287179 () Bool)

(assert (=> b!6287179 (= e!3823163 (nullable!6201 (h!71248 (exprs!6092 lt!2355966))))))

(declare-fun b!6287180 () Bool)

(declare-fun e!3823161 () (Set Context!11184))

(assert (=> b!6287180 (= e!3823161 (as set.empty (Set Context!11184)))))

(declare-fun bm!532276 () Bool)

(declare-fun call!532281 () (Set Context!11184))

(assert (=> bm!532276 (= call!532281 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 lt!2355966)) (Context!11185 (t!378486 (exprs!6092 lt!2355966))) (h!71247 s!2326)))))

(declare-fun b!6287181 () Bool)

(assert (=> b!6287181 (= e!3823162 e!3823161)))

(declare-fun c!1140633 () Bool)

(assert (=> b!6287181 (= c!1140633 (is-Cons!64800 (exprs!6092 lt!2355966)))))

(declare-fun b!6287182 () Bool)

(assert (=> b!6287182 (= e!3823162 (set.union call!532281 (derivationStepZipperUp!1382 (Context!11185 (t!378486 (exprs!6092 lt!2355966))) (h!71247 s!2326))))))

(declare-fun b!6287183 () Bool)

(assert (=> b!6287183 (= e!3823161 call!532281)))

(assert (= (and d!1973138 res!2592888) b!6287179))

(assert (= (and d!1973138 c!1140632) b!6287182))

(assert (= (and d!1973138 (not c!1140632)) b!6287181))

(assert (= (and b!6287181 c!1140633) b!6287183))

(assert (= (and b!6287181 (not c!1140633)) b!6287180))

(assert (= (or b!6287182 b!6287183) bm!532276))

(declare-fun m!7107994 () Bool)

(assert (=> b!6287179 m!7107994))

(declare-fun m!7107996 () Bool)

(assert (=> bm!532276 m!7107996))

(declare-fun m!7107998 () Bool)

(assert (=> b!6287182 m!7107998))

(assert (=> b!6286726 d!1973138))

(declare-fun d!1973140 () Bool)

(declare-fun e!3823164 () Bool)

(assert (=> d!1973140 (= (matchZipper!2220 (set.union lt!2355965 lt!2355956) (t!378485 s!2326)) e!3823164)))

(declare-fun res!2592889 () Bool)

(assert (=> d!1973140 (=> res!2592889 e!3823164)))

(assert (=> d!1973140 (= res!2592889 (matchZipper!2220 lt!2355965 (t!378485 s!2326)))))

(declare-fun lt!2356181 () Unit!158163)

(assert (=> d!1973140 (= lt!2356181 (choose!46692 lt!2355965 lt!2355956 (t!378485 s!2326)))))

(assert (=> d!1973140 (= (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355965 lt!2355956 (t!378485 s!2326)) lt!2356181)))

(declare-fun b!6287184 () Bool)

(assert (=> b!6287184 (= e!3823164 (matchZipper!2220 lt!2355956 (t!378485 s!2326)))))

(assert (= (and d!1973140 (not res!2592889)) b!6287184))

(declare-fun m!7108000 () Bool)

(assert (=> d!1973140 m!7108000))

(assert (=> d!1973140 m!7107484))

(declare-fun m!7108002 () Bool)

(assert (=> d!1973140 m!7108002))

(assert (=> b!6287184 m!7107520))

(assert (=> b!6286706 d!1973140))

(declare-fun d!1973142 () Bool)

(assert (=> d!1973142 (= (flatMap!1713 lt!2355968 lambda!345108) (choose!46698 lt!2355968 lambda!345108))))

(declare-fun bs!1571446 () Bool)

(assert (= bs!1571446 d!1973142))

(declare-fun m!7108004 () Bool)

(assert (=> bs!1571446 m!7108004))

(assert (=> b!6286706 d!1973142))

(declare-fun d!1973144 () Bool)

(declare-fun c!1140634 () Bool)

(assert (=> d!1973144 (= c!1140634 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823165 () Bool)

(assert (=> d!1973144 (= (matchZipper!2220 lt!2355973 (t!378485 s!2326)) e!3823165)))

(declare-fun b!6287185 () Bool)

(assert (=> b!6287185 (= e!3823165 (nullableZipper!1978 lt!2355973))))

(declare-fun b!6287186 () Bool)

(assert (=> b!6287186 (= e!3823165 (matchZipper!2220 (derivationStepZipper!2174 lt!2355973 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973144 c!1140634) b!6287185))

(assert (= (and d!1973144 (not c!1140634)) b!6287186))

(assert (=> d!1973144 m!7107732))

(declare-fun m!7108006 () Bool)

(assert (=> b!6287185 m!7108006))

(assert (=> b!6287186 m!7107736))

(assert (=> b!6287186 m!7107736))

(declare-fun m!7108008 () Bool)

(assert (=> b!6287186 m!7108008))

(assert (=> b!6287186 m!7107740))

(assert (=> b!6287186 m!7108008))

(assert (=> b!6287186 m!7107740))

(declare-fun m!7108010 () Bool)

(assert (=> b!6287186 m!7108010))

(assert (=> b!6286706 d!1973144))

(declare-fun d!1973146 () Bool)

(declare-fun c!1140635 () Bool)

(assert (=> d!1973146 (= c!1140635 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823166 () Bool)

(assert (=> d!1973146 (= (matchZipper!2220 lt!2355982 (t!378485 s!2326)) e!3823166)))

(declare-fun b!6287187 () Bool)

(assert (=> b!6287187 (= e!3823166 (nullableZipper!1978 lt!2355982))))

(declare-fun b!6287188 () Bool)

(assert (=> b!6287188 (= e!3823166 (matchZipper!2220 (derivationStepZipper!2174 lt!2355982 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973146 c!1140635) b!6287187))

(assert (= (and d!1973146 (not c!1140635)) b!6287188))

(assert (=> d!1973146 m!7107732))

(declare-fun m!7108012 () Bool)

(assert (=> b!6287187 m!7108012))

(assert (=> b!6287188 m!7107736))

(assert (=> b!6287188 m!7107736))

(declare-fun m!7108014 () Bool)

(assert (=> b!6287188 m!7108014))

(assert (=> b!6287188 m!7107740))

(assert (=> b!6287188 m!7108014))

(assert (=> b!6287188 m!7107740))

(declare-fun m!7108016 () Bool)

(assert (=> b!6287188 m!7108016))

(assert (=> b!6286706 d!1973146))

(declare-fun d!1973148 () Bool)

(assert (=> d!1973148 (= (flatMap!1713 lt!2355968 lambda!345108) (dynLambda!25642 lambda!345108 lt!2355990))))

(declare-fun lt!2356182 () Unit!158163)

(assert (=> d!1973148 (= lt!2356182 (choose!46699 lt!2355968 lt!2355990 lambda!345108))))

(assert (=> d!1973148 (= lt!2355968 (set.insert lt!2355990 (as set.empty (Set Context!11184))))))

(assert (=> d!1973148 (= (lemmaFlatMapOnSingletonSet!1239 lt!2355968 lt!2355990 lambda!345108) lt!2356182)))

(declare-fun b_lambda!239295 () Bool)

(assert (=> (not b_lambda!239295) (not d!1973148)))

(declare-fun bs!1571447 () Bool)

(assert (= bs!1571447 d!1973148))

(assert (=> bs!1571447 m!7107548))

(declare-fun m!7108018 () Bool)

(assert (=> bs!1571447 m!7108018))

(declare-fun m!7108020 () Bool)

(assert (=> bs!1571447 m!7108020))

(assert (=> bs!1571447 m!7107402))

(assert (=> b!6286706 d!1973148))

(assert (=> b!6286706 d!1973136))

(declare-fun d!1973150 () Bool)

(declare-fun res!2592892 () Bool)

(declare-fun e!3823170 () Bool)

(assert (=> d!1973150 (=> res!2592892 e!3823170)))

(assert (=> d!1973150 (= res!2592892 (is-ElementMatch!16208 lt!2355993))))

(assert (=> d!1973150 (= (validRegex!7944 lt!2355993) e!3823170)))

(declare-fun b!6287189 () Bool)

(declare-fun e!3823168 () Bool)

(declare-fun e!3823172 () Bool)

(assert (=> b!6287189 (= e!3823168 e!3823172)))

(declare-fun res!2592891 () Bool)

(assert (=> b!6287189 (= res!2592891 (not (nullable!6201 (reg!16537 lt!2355993))))))

(assert (=> b!6287189 (=> (not res!2592891) (not e!3823172))))

(declare-fun bm!532277 () Bool)

(declare-fun call!532283 () Bool)

(declare-fun call!532282 () Bool)

(assert (=> bm!532277 (= call!532283 call!532282)))

(declare-fun b!6287190 () Bool)

(assert (=> b!6287190 (= e!3823172 call!532282)))

(declare-fun b!6287191 () Bool)

(declare-fun res!2592890 () Bool)

(declare-fun e!3823169 () Bool)

(assert (=> b!6287191 (=> (not res!2592890) (not e!3823169))))

(declare-fun call!532284 () Bool)

(assert (=> b!6287191 (= res!2592890 call!532284)))

(declare-fun e!3823173 () Bool)

(assert (=> b!6287191 (= e!3823173 e!3823169)))

(declare-fun b!6287192 () Bool)

(declare-fun res!2592894 () Bool)

(declare-fun e!3823171 () Bool)

(assert (=> b!6287192 (=> res!2592894 e!3823171)))

(assert (=> b!6287192 (= res!2592894 (not (is-Concat!25053 lt!2355993)))))

(assert (=> b!6287192 (= e!3823173 e!3823171)))

(declare-fun b!6287193 () Bool)

(assert (=> b!6287193 (= e!3823168 e!3823173)))

(declare-fun c!1140636 () Bool)

(assert (=> b!6287193 (= c!1140636 (is-Union!16208 lt!2355993))))

(declare-fun b!6287194 () Bool)

(assert (=> b!6287194 (= e!3823169 call!532283)))

(declare-fun bm!532278 () Bool)

(declare-fun c!1140637 () Bool)

(assert (=> bm!532278 (= call!532282 (validRegex!7944 (ite c!1140637 (reg!16537 lt!2355993) (ite c!1140636 (regTwo!32929 lt!2355993) (regTwo!32928 lt!2355993)))))))

(declare-fun b!6287195 () Bool)

(declare-fun e!3823167 () Bool)

(assert (=> b!6287195 (= e!3823167 call!532283)))

(declare-fun b!6287196 () Bool)

(assert (=> b!6287196 (= e!3823170 e!3823168)))

(assert (=> b!6287196 (= c!1140637 (is-Star!16208 lt!2355993))))

(declare-fun bm!532279 () Bool)

(assert (=> bm!532279 (= call!532284 (validRegex!7944 (ite c!1140636 (regOne!32929 lt!2355993) (regOne!32928 lt!2355993))))))

(declare-fun b!6287197 () Bool)

(assert (=> b!6287197 (= e!3823171 e!3823167)))

(declare-fun res!2592893 () Bool)

(assert (=> b!6287197 (=> (not res!2592893) (not e!3823167))))

(assert (=> b!6287197 (= res!2592893 call!532284)))

(assert (= (and d!1973150 (not res!2592892)) b!6287196))

(assert (= (and b!6287196 c!1140637) b!6287189))

(assert (= (and b!6287196 (not c!1140637)) b!6287193))

(assert (= (and b!6287189 res!2592891) b!6287190))

(assert (= (and b!6287193 c!1140636) b!6287191))

(assert (= (and b!6287193 (not c!1140636)) b!6287192))

(assert (= (and b!6287191 res!2592890) b!6287194))

(assert (= (and b!6287192 (not res!2592894)) b!6287197))

(assert (= (and b!6287197 res!2592893) b!6287195))

(assert (= (or b!6287194 b!6287195) bm!532277))

(assert (= (or b!6287191 b!6287197) bm!532279))

(assert (= (or b!6287190 bm!532277) bm!532278))

(declare-fun m!7108022 () Bool)

(assert (=> b!6287189 m!7108022))

(declare-fun m!7108024 () Bool)

(assert (=> bm!532278 m!7108024))

(declare-fun m!7108026 () Bool)

(assert (=> bm!532279 m!7108026))

(assert (=> b!6286705 d!1973150))

(declare-fun d!1973152 () Bool)

(assert (=> d!1973152 (= (isEmpty!36851 (t!378486 (exprs!6092 (h!71249 zl!343)))) (is-Nil!64800 (t!378486 (exprs!6092 (h!71249 zl!343)))))))

(assert (=> b!6286725 d!1973152))

(declare-fun d!1973154 () Bool)

(declare-fun c!1140638 () Bool)

(assert (=> d!1973154 (= c!1140638 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823174 () Bool)

(assert (=> d!1973154 (= (matchZipper!2220 lt!2355969 (t!378485 s!2326)) e!3823174)))

(declare-fun b!6287198 () Bool)

(assert (=> b!6287198 (= e!3823174 (nullableZipper!1978 lt!2355969))))

(declare-fun b!6287199 () Bool)

(assert (=> b!6287199 (= e!3823174 (matchZipper!2220 (derivationStepZipper!2174 lt!2355969 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973154 c!1140638) b!6287198))

(assert (= (and d!1973154 (not c!1140638)) b!6287199))

(assert (=> d!1973154 m!7107732))

(declare-fun m!7108028 () Bool)

(assert (=> b!6287198 m!7108028))

(assert (=> b!6287199 m!7107736))

(assert (=> b!6287199 m!7107736))

(declare-fun m!7108030 () Bool)

(assert (=> b!6287199 m!7108030))

(assert (=> b!6287199 m!7107740))

(assert (=> b!6287199 m!7108030))

(assert (=> b!6287199 m!7107740))

(declare-fun m!7108032 () Bool)

(assert (=> b!6287199 m!7108032))

(assert (=> b!6286724 d!1973154))

(declare-fun bs!1571448 () Bool)

(declare-fun d!1973156 () Bool)

(assert (= bs!1571448 (and d!1973156 d!1973068)))

(declare-fun lambda!345168 () Int)

(assert (=> bs!1571448 (= lambda!345168 lambda!345140)))

(declare-fun bs!1571449 () Bool)

(assert (= bs!1571449 (and d!1973156 d!1973082)))

(assert (=> bs!1571449 (= lambda!345168 lambda!345147)))

(declare-fun bs!1571450 () Bool)

(assert (= bs!1571450 (and d!1973156 d!1973112)))

(assert (=> bs!1571450 (= lambda!345168 lambda!345155)))

(declare-fun bs!1571451 () Bool)

(assert (= bs!1571451 (and d!1973156 d!1973116)))

(assert (=> bs!1571451 (= lambda!345168 lambda!345156)))

(assert (=> d!1973156 (= (inv!83768 setElem!42785) (forall!15353 (exprs!6092 setElem!42785) lambda!345168))))

(declare-fun bs!1571452 () Bool)

(assert (= bs!1571452 d!1973156))

(declare-fun m!7108034 () Bool)

(assert (=> bs!1571452 m!7108034))

(assert (=> setNonEmpty!42785 d!1973156))

(declare-fun b!6287206 () Bool)

(assert (=> b!6287206 true))

(declare-fun bs!1571453 () Bool)

(declare-fun b!6287208 () Bool)

(assert (= bs!1571453 (and b!6287208 b!6287206)))

(declare-fun lt!2356194 () Int)

(declare-fun lambda!345177 () Int)

(declare-fun lt!2356193 () Int)

(declare-fun lambda!345176 () Int)

(assert (=> bs!1571453 (= (= lt!2356193 lt!2356194) (= lambda!345177 lambda!345176))))

(assert (=> b!6287208 true))

(declare-fun d!1973158 () Bool)

(declare-fun e!3823179 () Bool)

(assert (=> d!1973158 e!3823179))

(declare-fun res!2592897 () Bool)

(assert (=> d!1973158 (=> (not res!2592897) (not e!3823179))))

(assert (=> d!1973158 (= res!2592897 (>= lt!2356193 0))))

(declare-fun e!3823180 () Int)

(assert (=> d!1973158 (= lt!2356193 e!3823180)))

(declare-fun c!1140647 () Bool)

(assert (=> d!1973158 (= c!1140647 (is-Cons!64801 lt!2355958))))

(assert (=> d!1973158 (= (zipperDepth!333 lt!2355958) lt!2356193)))

(assert (=> b!6287206 (= e!3823180 lt!2356194)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!225 (Context!11184) Int)

(assert (=> b!6287206 (= lt!2356194 (maxBigInt!0 (contextDepth!225 (h!71249 lt!2355958)) (zipperDepth!333 (t!378487 lt!2355958))))))

(declare-fun lt!2356192 () Unit!158163)

(declare-fun lambda!345175 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!209 (List!64925 Int Int Int) Unit!158163)

(assert (=> b!6287206 (= lt!2356192 (lemmaForallContextDepthBiggerThanTransitive!209 (t!378487 lt!2355958) lt!2356194 (zipperDepth!333 (t!378487 lt!2355958)) lambda!345175))))

(declare-fun forall!15354 (List!64925 Int) Bool)

(assert (=> b!6287206 (forall!15354 (t!378487 lt!2355958) lambda!345176)))

(declare-fun lt!2356191 () Unit!158163)

(assert (=> b!6287206 (= lt!2356191 lt!2356192)))

(declare-fun b!6287207 () Bool)

(assert (=> b!6287207 (= e!3823180 0)))

(assert (=> b!6287208 (= e!3823179 (forall!15354 lt!2355958 lambda!345177))))

(assert (= (and d!1973158 c!1140647) b!6287206))

(assert (= (and d!1973158 (not c!1140647)) b!6287207))

(assert (= (and d!1973158 res!2592897) b!6287208))

(declare-fun m!7108036 () Bool)

(assert (=> b!6287206 m!7108036))

(declare-fun m!7108038 () Bool)

(assert (=> b!6287206 m!7108038))

(declare-fun m!7108040 () Bool)

(assert (=> b!6287206 m!7108040))

(declare-fun m!7108042 () Bool)

(assert (=> b!6287206 m!7108042))

(assert (=> b!6287206 m!7108038))

(assert (=> b!6287206 m!7108036))

(assert (=> b!6287206 m!7108038))

(declare-fun m!7108044 () Bool)

(assert (=> b!6287206 m!7108044))

(declare-fun m!7108046 () Bool)

(assert (=> b!6287208 m!7108046))

(assert (=> b!6286704 d!1973158))

(declare-fun bs!1571454 () Bool)

(declare-fun b!6287211 () Bool)

(assert (= bs!1571454 (and b!6287211 b!6287206)))

(declare-fun lambda!345178 () Int)

(assert (=> bs!1571454 (= lambda!345178 lambda!345175)))

(declare-fun lambda!345179 () Int)

(declare-fun lt!2356198 () Int)

(assert (=> bs!1571454 (= (= lt!2356198 lt!2356194) (= lambda!345179 lambda!345176))))

(declare-fun bs!1571455 () Bool)

(assert (= bs!1571455 (and b!6287211 b!6287208)))

(assert (=> bs!1571455 (= (= lt!2356198 lt!2356193) (= lambda!345179 lambda!345177))))

(assert (=> b!6287211 true))

(declare-fun bs!1571456 () Bool)

(declare-fun b!6287213 () Bool)

(assert (= bs!1571456 (and b!6287213 b!6287206)))

(declare-fun lt!2356197 () Int)

(declare-fun lambda!345180 () Int)

(assert (=> bs!1571456 (= (= lt!2356197 lt!2356194) (= lambda!345180 lambda!345176))))

(declare-fun bs!1571457 () Bool)

(assert (= bs!1571457 (and b!6287213 b!6287208)))

(assert (=> bs!1571457 (= (= lt!2356197 lt!2356193) (= lambda!345180 lambda!345177))))

(declare-fun bs!1571458 () Bool)

(assert (= bs!1571458 (and b!6287213 b!6287211)))

(assert (=> bs!1571458 (= (= lt!2356197 lt!2356198) (= lambda!345180 lambda!345179))))

(assert (=> b!6287213 true))

(declare-fun d!1973160 () Bool)

(declare-fun e!3823181 () Bool)

(assert (=> d!1973160 e!3823181))

(declare-fun res!2592898 () Bool)

(assert (=> d!1973160 (=> (not res!2592898) (not e!3823181))))

(assert (=> d!1973160 (= res!2592898 (>= lt!2356197 0))))

(declare-fun e!3823182 () Int)

(assert (=> d!1973160 (= lt!2356197 e!3823182)))

(declare-fun c!1140648 () Bool)

(assert (=> d!1973160 (= c!1140648 (is-Cons!64801 zl!343))))

(assert (=> d!1973160 (= (zipperDepth!333 zl!343) lt!2356197)))

(assert (=> b!6287211 (= e!3823182 lt!2356198)))

(assert (=> b!6287211 (= lt!2356198 (maxBigInt!0 (contextDepth!225 (h!71249 zl!343)) (zipperDepth!333 (t!378487 zl!343))))))

(declare-fun lt!2356196 () Unit!158163)

(assert (=> b!6287211 (= lt!2356196 (lemmaForallContextDepthBiggerThanTransitive!209 (t!378487 zl!343) lt!2356198 (zipperDepth!333 (t!378487 zl!343)) lambda!345178))))

(assert (=> b!6287211 (forall!15354 (t!378487 zl!343) lambda!345179)))

(declare-fun lt!2356195 () Unit!158163)

(assert (=> b!6287211 (= lt!2356195 lt!2356196)))

(declare-fun b!6287212 () Bool)

(assert (=> b!6287212 (= e!3823182 0)))

(assert (=> b!6287213 (= e!3823181 (forall!15354 zl!343 lambda!345180))))

(assert (= (and d!1973160 c!1140648) b!6287211))

(assert (= (and d!1973160 (not c!1140648)) b!6287212))

(assert (= (and d!1973160 res!2592898) b!6287213))

(declare-fun m!7108048 () Bool)

(assert (=> b!6287211 m!7108048))

(declare-fun m!7108050 () Bool)

(assert (=> b!6287211 m!7108050))

(declare-fun m!7108052 () Bool)

(assert (=> b!6287211 m!7108052))

(declare-fun m!7108054 () Bool)

(assert (=> b!6287211 m!7108054))

(assert (=> b!6287211 m!7108050))

(assert (=> b!6287211 m!7108048))

(assert (=> b!6287211 m!7108050))

(declare-fun m!7108056 () Bool)

(assert (=> b!6287211 m!7108056))

(declare-fun m!7108058 () Bool)

(assert (=> b!6287213 m!7108058))

(assert (=> b!6286704 d!1973160))

(declare-fun d!1973162 () Bool)

(declare-fun lt!2356201 () Int)

(assert (=> d!1973162 (>= lt!2356201 0)))

(declare-fun e!3823185 () Int)

(assert (=> d!1973162 (= lt!2356201 e!3823185)))

(declare-fun c!1140652 () Bool)

(assert (=> d!1973162 (= c!1140652 (is-Cons!64800 (exprs!6092 lt!2355966)))))

(assert (=> d!1973162 (= (contextDepthTotal!331 lt!2355966) lt!2356201)))

(declare-fun b!6287218 () Bool)

(declare-fun regexDepthTotal!183 (Regex!16208) Int)

(assert (=> b!6287218 (= e!3823185 (+ (regexDepthTotal!183 (h!71248 (exprs!6092 lt!2355966))) (contextDepthTotal!331 (Context!11185 (t!378486 (exprs!6092 lt!2355966))))))))

(declare-fun b!6287219 () Bool)

(assert (=> b!6287219 (= e!3823185 1)))

(assert (= (and d!1973162 c!1140652) b!6287218))

(assert (= (and d!1973162 (not c!1140652)) b!6287219))

(declare-fun m!7108060 () Bool)

(assert (=> b!6287218 m!7108060))

(declare-fun m!7108062 () Bool)

(assert (=> b!6287218 m!7108062))

(assert (=> b!6286722 d!1973162))

(declare-fun d!1973164 () Bool)

(declare-fun lt!2356202 () Int)

(assert (=> d!1973164 (>= lt!2356202 0)))

(declare-fun e!3823186 () Int)

(assert (=> d!1973164 (= lt!2356202 e!3823186)))

(declare-fun c!1140653 () Bool)

(assert (=> d!1973164 (= c!1140653 (is-Cons!64800 (exprs!6092 (h!71249 zl!343))))))

(assert (=> d!1973164 (= (contextDepthTotal!331 (h!71249 zl!343)) lt!2356202)))

(declare-fun b!6287220 () Bool)

(assert (=> b!6287220 (= e!3823186 (+ (regexDepthTotal!183 (h!71248 (exprs!6092 (h!71249 zl!343)))) (contextDepthTotal!331 (Context!11185 (t!378486 (exprs!6092 (h!71249 zl!343)))))))))

(declare-fun b!6287221 () Bool)

(assert (=> b!6287221 (= e!3823186 1)))

(assert (= (and d!1973164 c!1140653) b!6287220))

(assert (= (and d!1973164 (not c!1140653)) b!6287221))

(declare-fun m!7108064 () Bool)

(assert (=> b!6287220 m!7108064))

(declare-fun m!7108066 () Bool)

(assert (=> b!6287220 m!7108066))

(assert (=> b!6286722 d!1973164))

(declare-fun bs!1571459 () Bool)

(declare-fun d!1973166 () Bool)

(assert (= bs!1571459 (and d!1973166 d!1973068)))

(declare-fun lambda!345181 () Int)

(assert (=> bs!1571459 (= lambda!345181 lambda!345140)))

(declare-fun bs!1571460 () Bool)

(assert (= bs!1571460 (and d!1973166 d!1973116)))

(assert (=> bs!1571460 (= lambda!345181 lambda!345156)))

(declare-fun bs!1571461 () Bool)

(assert (= bs!1571461 (and d!1973166 d!1973112)))

(assert (=> bs!1571461 (= lambda!345181 lambda!345155)))

(declare-fun bs!1571462 () Bool)

(assert (= bs!1571462 (and d!1973166 d!1973156)))

(assert (=> bs!1571462 (= lambda!345181 lambda!345168)))

(declare-fun bs!1571463 () Bool)

(assert (= bs!1571463 (and d!1973166 d!1973082)))

(assert (=> bs!1571463 (= lambda!345181 lambda!345147)))

(assert (=> d!1973166 (= (inv!83768 (h!71249 zl!343)) (forall!15353 (exprs!6092 (h!71249 zl!343)) lambda!345181))))

(declare-fun bs!1571464 () Bool)

(assert (= bs!1571464 d!1973166))

(declare-fun m!7108068 () Bool)

(assert (=> bs!1571464 m!7108068))

(assert (=> b!6286703 d!1973166))

(declare-fun d!1973168 () Bool)

(declare-fun e!3823189 () Bool)

(assert (=> d!1973168 e!3823189))

(declare-fun res!2592901 () Bool)

(assert (=> d!1973168 (=> (not res!2592901) (not e!3823189))))

(declare-fun lt!2356205 () List!64925)

(declare-fun noDuplicate!2042 (List!64925) Bool)

(assert (=> d!1973168 (= res!2592901 (noDuplicate!2042 lt!2356205))))

(declare-fun choose!46700 ((Set Context!11184)) List!64925)

(assert (=> d!1973168 (= lt!2356205 (choose!46700 z!1189))))

(assert (=> d!1973168 (= (toList!9992 z!1189) lt!2356205)))

(declare-fun b!6287224 () Bool)

(declare-fun content!12185 (List!64925) (Set Context!11184))

(assert (=> b!6287224 (= e!3823189 (= (content!12185 lt!2356205) z!1189))))

(assert (= (and d!1973168 res!2592901) b!6287224))

(declare-fun m!7108070 () Bool)

(assert (=> d!1973168 m!7108070))

(declare-fun m!7108072 () Bool)

(assert (=> d!1973168 m!7108072))

(declare-fun m!7108074 () Bool)

(assert (=> b!6287224 m!7108074))

(assert (=> b!6286712 d!1973168))

(declare-fun bs!1571465 () Bool)

(declare-fun b!6287229 () Bool)

(assert (= bs!1571465 (and b!6287229 b!6286709)))

(declare-fun lambda!345182 () Int)

(assert (=> bs!1571465 (not (= lambda!345182 lambda!345106))))

(declare-fun bs!1571466 () Bool)

(assert (= bs!1571466 (and b!6287229 b!6287094)))

(assert (=> bs!1571466 (not (= lambda!345182 lambda!345153))))

(declare-fun bs!1571467 () Bool)

(assert (= bs!1571467 (and b!6287229 d!1973080)))

(assert (=> bs!1571467 (not (= lambda!345182 lambda!345146))))

(declare-fun bs!1571468 () Bool)

(assert (= bs!1571468 (and b!6287229 d!1973104)))

(assert (=> bs!1571468 (not (= lambda!345182 lambda!345154))))

(declare-fun bs!1571469 () Bool)

(assert (= bs!1571469 (and b!6287229 d!1973126)))

(assert (=> bs!1571469 (not (= lambda!345182 lambda!345163))))

(declare-fun bs!1571470 () Bool)

(assert (= bs!1571470 (and b!6287229 b!6286700)))

(assert (=> bs!1571470 (not (= lambda!345182 lambda!345110))))

(assert (=> bs!1571469 (not (= lambda!345182 lambda!345164))))

(declare-fun bs!1571471 () Bool)

(assert (= bs!1571471 (and b!6287229 b!6287149)))

(assert (=> bs!1571471 (= (and (= (reg!16537 r!7292) (reg!16537 lt!2355994)) (= r!7292 lt!2355994)) (= lambda!345182 lambda!345157))))

(declare-fun bs!1571472 () Bool)

(assert (= bs!1571472 (and b!6287229 b!6287091)))

(assert (=> bs!1571472 (= (and (= (reg!16537 r!7292) (reg!16537 lt!2355963)) (= r!7292 lt!2355963)) (= lambda!345182 lambda!345152))))

(assert (=> bs!1571470 (not (= lambda!345182 lambda!345111))))

(declare-fun bs!1571473 () Bool)

(assert (= bs!1571473 (and b!6287229 b!6287152)))

(assert (=> bs!1571473 (not (= lambda!345182 lambda!345158))))

(assert (=> bs!1571470 (not (= lambda!345182 lambda!345109))))

(assert (=> bs!1571465 (not (= lambda!345182 lambda!345107))))

(assert (=> b!6287229 true))

(assert (=> b!6287229 true))

(declare-fun bs!1571474 () Bool)

(declare-fun b!6287232 () Bool)

(assert (= bs!1571474 (and b!6287232 b!6286709)))

(declare-fun lambda!345183 () Int)

(assert (=> bs!1571474 (not (= lambda!345183 lambda!345106))))

(declare-fun bs!1571475 () Bool)

(assert (= bs!1571475 (and b!6287232 b!6287094)))

(assert (=> bs!1571475 (= (and (= (regOne!32928 r!7292) (regOne!32928 lt!2355963)) (= (regTwo!32928 r!7292) (regTwo!32928 lt!2355963))) (= lambda!345183 lambda!345153))))

(declare-fun bs!1571476 () Bool)

(assert (= bs!1571476 (and b!6287232 d!1973080)))

(assert (=> bs!1571476 (not (= lambda!345183 lambda!345146))))

(declare-fun bs!1571477 () Bool)

(assert (= bs!1571477 (and b!6287232 d!1973104)))

(assert (=> bs!1571477 (not (= lambda!345183 lambda!345154))))

(declare-fun bs!1571478 () Bool)

(assert (= bs!1571478 (and b!6287232 d!1973126)))

(assert (=> bs!1571478 (not (= lambda!345183 lambda!345163))))

(declare-fun bs!1571479 () Bool)

(assert (= bs!1571479 (and b!6287232 b!6286700)))

(assert (=> bs!1571479 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345183 lambda!345110))))

(assert (=> bs!1571478 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345183 lambda!345164))))

(declare-fun bs!1571480 () Bool)

(assert (= bs!1571480 (and b!6287232 b!6287149)))

(assert (=> bs!1571480 (not (= lambda!345183 lambda!345157))))

(assert (=> bs!1571479 (not (= lambda!345183 lambda!345111))))

(declare-fun bs!1571481 () Bool)

(assert (= bs!1571481 (and b!6287232 b!6287152)))

(assert (=> bs!1571481 (= (and (= (regOne!32928 r!7292) (regOne!32928 lt!2355994)) (= (regTwo!32928 r!7292) (regTwo!32928 lt!2355994))) (= lambda!345183 lambda!345158))))

(assert (=> bs!1571479 (not (= lambda!345183 lambda!345109))))

(assert (=> bs!1571474 (= lambda!345183 lambda!345107)))

(declare-fun bs!1571482 () Bool)

(assert (= bs!1571482 (and b!6287232 b!6287091)))

(assert (=> bs!1571482 (not (= lambda!345183 lambda!345152))))

(declare-fun bs!1571483 () Bool)

(assert (= bs!1571483 (and b!6287232 b!6287229)))

(assert (=> bs!1571483 (not (= lambda!345183 lambda!345182))))

(assert (=> b!6287232 true))

(assert (=> b!6287232 true))

(declare-fun d!1973170 () Bool)

(declare-fun c!1140654 () Bool)

(assert (=> d!1973170 (= c!1140654 (is-EmptyExpr!16208 r!7292))))

(declare-fun e!3823194 () Bool)

(assert (=> d!1973170 (= (matchRSpec!3309 r!7292 s!2326) e!3823194)))

(declare-fun b!6287225 () Bool)

(declare-fun e!3823195 () Bool)

(assert (=> b!6287225 (= e!3823195 (= s!2326 (Cons!64799 (c!1140533 r!7292) Nil!64799)))))

(declare-fun b!6287226 () Bool)

(declare-fun c!1140655 () Bool)

(assert (=> b!6287226 (= c!1140655 (is-Union!16208 r!7292))))

(declare-fun e!3823190 () Bool)

(assert (=> b!6287226 (= e!3823195 e!3823190)))

(declare-fun b!6287227 () Bool)

(declare-fun e!3823191 () Bool)

(assert (=> b!6287227 (= e!3823190 e!3823191)))

(declare-fun res!2592903 () Bool)

(assert (=> b!6287227 (= res!2592903 (matchRSpec!3309 (regOne!32929 r!7292) s!2326))))

(assert (=> b!6287227 (=> res!2592903 e!3823191)))

(declare-fun b!6287228 () Bool)

(declare-fun e!3823193 () Bool)

(assert (=> b!6287228 (= e!3823194 e!3823193)))

(declare-fun res!2592902 () Bool)

(assert (=> b!6287228 (= res!2592902 (not (is-EmptyLang!16208 r!7292)))))

(assert (=> b!6287228 (=> (not res!2592902) (not e!3823193))))

(declare-fun e!3823192 () Bool)

(declare-fun call!532286 () Bool)

(assert (=> b!6287229 (= e!3823192 call!532286)))

(declare-fun bm!532280 () Bool)

(declare-fun call!532285 () Bool)

(assert (=> bm!532280 (= call!532285 (isEmpty!36855 s!2326))))

(declare-fun b!6287230 () Bool)

(assert (=> b!6287230 (= e!3823191 (matchRSpec!3309 (regTwo!32929 r!7292) s!2326))))

(declare-fun b!6287231 () Bool)

(assert (=> b!6287231 (= e!3823194 call!532285)))

(declare-fun bm!532281 () Bool)

(declare-fun c!1140656 () Bool)

(assert (=> bm!532281 (= call!532286 (Exists!3278 (ite c!1140656 lambda!345182 lambda!345183)))))

(declare-fun e!3823196 () Bool)

(assert (=> b!6287232 (= e!3823196 call!532286)))

(declare-fun b!6287233 () Bool)

(declare-fun c!1140657 () Bool)

(assert (=> b!6287233 (= c!1140657 (is-ElementMatch!16208 r!7292))))

(assert (=> b!6287233 (= e!3823193 e!3823195)))

(declare-fun b!6287234 () Bool)

(assert (=> b!6287234 (= e!3823190 e!3823196)))

(assert (=> b!6287234 (= c!1140656 (is-Star!16208 r!7292))))

(declare-fun b!6287235 () Bool)

(declare-fun res!2592904 () Bool)

(assert (=> b!6287235 (=> res!2592904 e!3823192)))

(assert (=> b!6287235 (= res!2592904 call!532285)))

(assert (=> b!6287235 (= e!3823196 e!3823192)))

(assert (= (and d!1973170 c!1140654) b!6287231))

(assert (= (and d!1973170 (not c!1140654)) b!6287228))

(assert (= (and b!6287228 res!2592902) b!6287233))

(assert (= (and b!6287233 c!1140657) b!6287225))

(assert (= (and b!6287233 (not c!1140657)) b!6287226))

(assert (= (and b!6287226 c!1140655) b!6287227))

(assert (= (and b!6287226 (not c!1140655)) b!6287234))

(assert (= (and b!6287227 (not res!2592903)) b!6287230))

(assert (= (and b!6287234 c!1140656) b!6287235))

(assert (= (and b!6287234 (not c!1140656)) b!6287232))

(assert (= (and b!6287235 (not res!2592904)) b!6287229))

(assert (= (or b!6287229 b!6287232) bm!532281))

(assert (= (or b!6287231 b!6287235) bm!532280))

(declare-fun m!7108076 () Bool)

(assert (=> b!6287227 m!7108076))

(assert (=> bm!532280 m!7107832))

(declare-fun m!7108078 () Bool)

(assert (=> b!6287230 m!7108078))

(declare-fun m!7108080 () Bool)

(assert (=> bm!532281 m!7108080))

(assert (=> b!6286711 d!1973170))

(declare-fun b!6287236 () Bool)

(declare-fun e!3823202 () Bool)

(assert (=> b!6287236 (= e!3823202 (= (head!12916 s!2326) (c!1140533 r!7292)))))

(declare-fun b!6287237 () Bool)

(declare-fun res!2592909 () Bool)

(assert (=> b!6287237 (=> (not res!2592909) (not e!3823202))))

(declare-fun call!532287 () Bool)

(assert (=> b!6287237 (= res!2592909 (not call!532287))))

(declare-fun b!6287238 () Bool)

(declare-fun res!2592910 () Bool)

(declare-fun e!3823198 () Bool)

(assert (=> b!6287238 (=> res!2592910 e!3823198)))

(assert (=> b!6287238 (= res!2592910 (not (is-ElementMatch!16208 r!7292)))))

(declare-fun e!3823197 () Bool)

(assert (=> b!6287238 (= e!3823197 e!3823198)))

(declare-fun b!6287239 () Bool)

(declare-fun e!3823203 () Bool)

(assert (=> b!6287239 (= e!3823203 (matchR!8391 (derivativeStep!4917 r!7292 (head!12916 s!2326)) (tail!12001 s!2326)))))

(declare-fun b!6287241 () Bool)

(declare-fun res!2592905 () Bool)

(assert (=> b!6287241 (=> res!2592905 e!3823198)))

(assert (=> b!6287241 (= res!2592905 e!3823202)))

(declare-fun res!2592906 () Bool)

(assert (=> b!6287241 (=> (not res!2592906) (not e!3823202))))

(declare-fun lt!2356206 () Bool)

(assert (=> b!6287241 (= res!2592906 lt!2356206)))

(declare-fun b!6287242 () Bool)

(assert (=> b!6287242 (= e!3823203 (nullable!6201 r!7292))))

(declare-fun b!6287243 () Bool)

(declare-fun res!2592908 () Bool)

(assert (=> b!6287243 (=> (not res!2592908) (not e!3823202))))

(assert (=> b!6287243 (= res!2592908 (isEmpty!36855 (tail!12001 s!2326)))))

(declare-fun bm!532282 () Bool)

(assert (=> bm!532282 (= call!532287 (isEmpty!36855 s!2326))))

(declare-fun b!6287244 () Bool)

(declare-fun e!3823199 () Bool)

(assert (=> b!6287244 (= e!3823199 e!3823197)))

(declare-fun c!1140659 () Bool)

(assert (=> b!6287244 (= c!1140659 (is-EmptyLang!16208 r!7292))))

(declare-fun b!6287245 () Bool)

(declare-fun res!2592911 () Bool)

(declare-fun e!3823200 () Bool)

(assert (=> b!6287245 (=> res!2592911 e!3823200)))

(assert (=> b!6287245 (= res!2592911 (not (isEmpty!36855 (tail!12001 s!2326))))))

(declare-fun b!6287246 () Bool)

(assert (=> b!6287246 (= e!3823200 (not (= (head!12916 s!2326) (c!1140533 r!7292))))))

(declare-fun b!6287247 () Bool)

(declare-fun e!3823201 () Bool)

(assert (=> b!6287247 (= e!3823201 e!3823200)))

(declare-fun res!2592912 () Bool)

(assert (=> b!6287247 (=> res!2592912 e!3823200)))

(assert (=> b!6287247 (= res!2592912 call!532287)))

(declare-fun b!6287248 () Bool)

(assert (=> b!6287248 (= e!3823197 (not lt!2356206))))

(declare-fun b!6287249 () Bool)

(assert (=> b!6287249 (= e!3823198 e!3823201)))

(declare-fun res!2592907 () Bool)

(assert (=> b!6287249 (=> (not res!2592907) (not e!3823201))))

(assert (=> b!6287249 (= res!2592907 (not lt!2356206))))

(declare-fun d!1973172 () Bool)

(assert (=> d!1973172 e!3823199))

(declare-fun c!1140658 () Bool)

(assert (=> d!1973172 (= c!1140658 (is-EmptyExpr!16208 r!7292))))

(assert (=> d!1973172 (= lt!2356206 e!3823203)))

(declare-fun c!1140660 () Bool)

(assert (=> d!1973172 (= c!1140660 (isEmpty!36855 s!2326))))

(assert (=> d!1973172 (validRegex!7944 r!7292)))

(assert (=> d!1973172 (= (matchR!8391 r!7292 s!2326) lt!2356206)))

(declare-fun b!6287240 () Bool)

(assert (=> b!6287240 (= e!3823199 (= lt!2356206 call!532287))))

(assert (= (and d!1973172 c!1140660) b!6287242))

(assert (= (and d!1973172 (not c!1140660)) b!6287239))

(assert (= (and d!1973172 c!1140658) b!6287240))

(assert (= (and d!1973172 (not c!1140658)) b!6287244))

(assert (= (and b!6287244 c!1140659) b!6287248))

(assert (= (and b!6287244 (not c!1140659)) b!6287238))

(assert (= (and b!6287238 (not res!2592910)) b!6287241))

(assert (= (and b!6287241 res!2592906) b!6287237))

(assert (= (and b!6287237 res!2592909) b!6287243))

(assert (= (and b!6287243 res!2592908) b!6287236))

(assert (= (and b!6287241 (not res!2592905)) b!6287249))

(assert (= (and b!6287249 res!2592907) b!6287247))

(assert (= (and b!6287247 (not res!2592912)) b!6287245))

(assert (= (and b!6287245 (not res!2592911)) b!6287246))

(assert (= (or b!6287240 b!6287237 b!6287247) bm!532282))

(assert (=> b!6287243 m!7107822))

(assert (=> b!6287243 m!7107822))

(assert (=> b!6287243 m!7107824))

(assert (=> b!6287246 m!7107826))

(assert (=> b!6287239 m!7107826))

(assert (=> b!6287239 m!7107826))

(declare-fun m!7108082 () Bool)

(assert (=> b!6287239 m!7108082))

(assert (=> b!6287239 m!7107822))

(assert (=> b!6287239 m!7108082))

(assert (=> b!6287239 m!7107822))

(declare-fun m!7108084 () Bool)

(assert (=> b!6287239 m!7108084))

(assert (=> d!1973172 m!7107832))

(assert (=> d!1973172 m!7107538))

(assert (=> b!6287236 m!7107826))

(assert (=> b!6287245 m!7107822))

(assert (=> b!6287245 m!7107822))

(assert (=> b!6287245 m!7107824))

(assert (=> bm!532282 m!7107832))

(declare-fun m!7108086 () Bool)

(assert (=> b!6287242 m!7108086))

(assert (=> b!6286711 d!1973172))

(declare-fun d!1973174 () Bool)

(assert (=> d!1973174 (= (matchR!8391 r!7292 s!2326) (matchRSpec!3309 r!7292 s!2326))))

(declare-fun lt!2356207 () Unit!158163)

(assert (=> d!1973174 (= lt!2356207 (choose!46694 r!7292 s!2326))))

(assert (=> d!1973174 (validRegex!7944 r!7292)))

(assert (=> d!1973174 (= (mainMatchTheorem!3309 r!7292 s!2326) lt!2356207)))

(declare-fun bs!1571484 () Bool)

(assert (= bs!1571484 d!1973174))

(assert (=> bs!1571484 m!7107494))

(assert (=> bs!1571484 m!7107492))

(declare-fun m!7108088 () Bool)

(assert (=> bs!1571484 m!7108088))

(assert (=> bs!1571484 m!7107538))

(assert (=> b!6286711 d!1973174))

(declare-fun b!6287273 () Bool)

(declare-fun c!1140671 () Bool)

(declare-fun e!3823218 () Bool)

(assert (=> b!6287273 (= c!1140671 e!3823218)))

(declare-fun res!2592915 () Bool)

(assert (=> b!6287273 (=> (not res!2592915) (not e!3823218))))

(assert (=> b!6287273 (= res!2592915 (is-Concat!25053 (regTwo!32928 (regOne!32928 r!7292))))))

(declare-fun e!3823217 () (Set Context!11184))

(declare-fun e!3823221 () (Set Context!11184))

(assert (=> b!6287273 (= e!3823217 e!3823221)))

(declare-fun b!6287274 () Bool)

(declare-fun call!532305 () (Set Context!11184))

(declare-fun call!532303 () (Set Context!11184))

(assert (=> b!6287274 (= e!3823221 (set.union call!532305 call!532303))))

(declare-fun bm!532295 () Bool)

(declare-fun c!1140673 () Bool)

(declare-fun call!532304 () List!64924)

(declare-fun call!532301 () (Set Context!11184))

(declare-fun c!1140674 () Bool)

(assert (=> bm!532295 (= call!532301 (derivationStepZipperDown!1456 (ite c!1140674 (regTwo!32929 (regTwo!32928 (regOne!32928 r!7292))) (ite c!1140671 (regTwo!32928 (regTwo!32928 (regOne!32928 r!7292))) (ite c!1140673 (regOne!32928 (regTwo!32928 (regOne!32928 r!7292))) (reg!16537 (regTwo!32928 (regOne!32928 r!7292)))))) (ite (or c!1140674 c!1140671) lt!2355998 (Context!11185 call!532304)) (h!71247 s!2326)))))

(declare-fun b!6287275 () Bool)

(assert (=> b!6287275 (= e!3823218 (nullable!6201 (regOne!32928 (regTwo!32928 (regOne!32928 r!7292)))))))

(declare-fun call!532300 () List!64924)

(declare-fun bm!532296 () Bool)

(assert (=> bm!532296 (= call!532305 (derivationStepZipperDown!1456 (ite c!1140674 (regOne!32929 (regTwo!32928 (regOne!32928 r!7292))) (regOne!32928 (regTwo!32928 (regOne!32928 r!7292)))) (ite c!1140674 lt!2355998 (Context!11185 call!532300)) (h!71247 s!2326)))))

(declare-fun bm!532297 () Bool)

(declare-fun call!532302 () (Set Context!11184))

(assert (=> bm!532297 (= call!532302 call!532303)))

(declare-fun b!6287276 () Bool)

(declare-fun e!3823220 () (Set Context!11184))

(assert (=> b!6287276 (= e!3823220 (set.insert lt!2355998 (as set.empty (Set Context!11184))))))

(declare-fun b!6287277 () Bool)

(declare-fun e!3823216 () (Set Context!11184))

(assert (=> b!6287277 (= e!3823221 e!3823216)))

(assert (=> b!6287277 (= c!1140673 (is-Concat!25053 (regTwo!32928 (regOne!32928 r!7292))))))

(declare-fun b!6287278 () Bool)

(assert (=> b!6287278 (= e!3823216 call!532302)))

(declare-fun b!6287279 () Bool)

(declare-fun e!3823219 () (Set Context!11184))

(assert (=> b!6287279 (= e!3823219 call!532302)))

(declare-fun b!6287280 () Bool)

(declare-fun c!1140672 () Bool)

(assert (=> b!6287280 (= c!1140672 (is-Star!16208 (regTwo!32928 (regOne!32928 r!7292))))))

(assert (=> b!6287280 (= e!3823216 e!3823219)))

(declare-fun bm!532298 () Bool)

(declare-fun $colon$colon!2073 (List!64924 Regex!16208) List!64924)

(assert (=> bm!532298 (= call!532300 ($colon$colon!2073 (exprs!6092 lt!2355998) (ite (or c!1140671 c!1140673) (regTwo!32928 (regTwo!32928 (regOne!32928 r!7292))) (regTwo!32928 (regOne!32928 r!7292)))))))

(declare-fun bm!532299 () Bool)

(assert (=> bm!532299 (= call!532304 call!532300)))

(declare-fun bm!532300 () Bool)

(assert (=> bm!532300 (= call!532303 call!532301)))

(declare-fun b!6287272 () Bool)

(assert (=> b!6287272 (= e!3823219 (as set.empty (Set Context!11184)))))

(declare-fun d!1973176 () Bool)

(declare-fun c!1140675 () Bool)

(assert (=> d!1973176 (= c!1140675 (and (is-ElementMatch!16208 (regTwo!32928 (regOne!32928 r!7292))) (= (c!1140533 (regTwo!32928 (regOne!32928 r!7292))) (h!71247 s!2326))))))

(assert (=> d!1973176 (= (derivationStepZipperDown!1456 (regTwo!32928 (regOne!32928 r!7292)) lt!2355998 (h!71247 s!2326)) e!3823220)))

(declare-fun b!6287281 () Bool)

(assert (=> b!6287281 (= e!3823217 (set.union call!532305 call!532301))))

(declare-fun b!6287282 () Bool)

(assert (=> b!6287282 (= e!3823220 e!3823217)))

(assert (=> b!6287282 (= c!1140674 (is-Union!16208 (regTwo!32928 (regOne!32928 r!7292))))))

(assert (= (and d!1973176 c!1140675) b!6287276))

(assert (= (and d!1973176 (not c!1140675)) b!6287282))

(assert (= (and b!6287282 c!1140674) b!6287281))

(assert (= (and b!6287282 (not c!1140674)) b!6287273))

(assert (= (and b!6287273 res!2592915) b!6287275))

(assert (= (and b!6287273 c!1140671) b!6287274))

(assert (= (and b!6287273 (not c!1140671)) b!6287277))

(assert (= (and b!6287277 c!1140673) b!6287278))

(assert (= (and b!6287277 (not c!1140673)) b!6287280))

(assert (= (and b!6287280 c!1140672) b!6287279))

(assert (= (and b!6287280 (not c!1140672)) b!6287272))

(assert (= (or b!6287278 b!6287279) bm!532299))

(assert (= (or b!6287278 b!6287279) bm!532297))

(assert (= (or b!6287274 bm!532299) bm!532298))

(assert (= (or b!6287274 bm!532297) bm!532300))

(assert (= (or b!6287281 bm!532300) bm!532295))

(assert (= (or b!6287281 b!6287274) bm!532296))

(declare-fun m!7108090 () Bool)

(assert (=> bm!532295 m!7108090))

(declare-fun m!7108092 () Bool)

(assert (=> b!6287276 m!7108092))

(declare-fun m!7108094 () Bool)

(assert (=> b!6287275 m!7108094))

(declare-fun m!7108096 () Bool)

(assert (=> bm!532296 m!7108096))

(declare-fun m!7108098 () Bool)

(assert (=> bm!532298 m!7108098))

(assert (=> b!6286731 d!1973176))

(declare-fun b!6287284 () Bool)

(declare-fun c!1140676 () Bool)

(declare-fun e!3823224 () Bool)

(assert (=> b!6287284 (= c!1140676 e!3823224)))

(declare-fun res!2592916 () Bool)

(assert (=> b!6287284 (=> (not res!2592916) (not e!3823224))))

(assert (=> b!6287284 (= res!2592916 (is-Concat!25053 (regOne!32928 (regOne!32928 r!7292))))))

(declare-fun e!3823223 () (Set Context!11184))

(declare-fun e!3823227 () (Set Context!11184))

(assert (=> b!6287284 (= e!3823223 e!3823227)))

(declare-fun b!6287285 () Bool)

(declare-fun call!532311 () (Set Context!11184))

(declare-fun call!532309 () (Set Context!11184))

(assert (=> b!6287285 (= e!3823227 (set.union call!532311 call!532309))))

(declare-fun call!532310 () List!64924)

(declare-fun call!532307 () (Set Context!11184))

(declare-fun c!1140678 () Bool)

(declare-fun bm!532301 () Bool)

(declare-fun c!1140679 () Bool)

(assert (=> bm!532301 (= call!532307 (derivationStepZipperDown!1456 (ite c!1140679 (regTwo!32929 (regOne!32928 (regOne!32928 r!7292))) (ite c!1140676 (regTwo!32928 (regOne!32928 (regOne!32928 r!7292))) (ite c!1140678 (regOne!32928 (regOne!32928 (regOne!32928 r!7292))) (reg!16537 (regOne!32928 (regOne!32928 r!7292)))))) (ite (or c!1140679 c!1140676) lt!2355990 (Context!11185 call!532310)) (h!71247 s!2326)))))

(declare-fun b!6287286 () Bool)

(assert (=> b!6287286 (= e!3823224 (nullable!6201 (regOne!32928 (regOne!32928 (regOne!32928 r!7292)))))))

(declare-fun call!532306 () List!64924)

(declare-fun bm!532302 () Bool)

(assert (=> bm!532302 (= call!532311 (derivationStepZipperDown!1456 (ite c!1140679 (regOne!32929 (regOne!32928 (regOne!32928 r!7292))) (regOne!32928 (regOne!32928 (regOne!32928 r!7292)))) (ite c!1140679 lt!2355990 (Context!11185 call!532306)) (h!71247 s!2326)))))

(declare-fun bm!532303 () Bool)

(declare-fun call!532308 () (Set Context!11184))

(assert (=> bm!532303 (= call!532308 call!532309)))

(declare-fun b!6287287 () Bool)

(declare-fun e!3823226 () (Set Context!11184))

(assert (=> b!6287287 (= e!3823226 (set.insert lt!2355990 (as set.empty (Set Context!11184))))))

(declare-fun b!6287288 () Bool)

(declare-fun e!3823222 () (Set Context!11184))

(assert (=> b!6287288 (= e!3823227 e!3823222)))

(assert (=> b!6287288 (= c!1140678 (is-Concat!25053 (regOne!32928 (regOne!32928 r!7292))))))

(declare-fun b!6287289 () Bool)

(assert (=> b!6287289 (= e!3823222 call!532308)))

(declare-fun b!6287290 () Bool)

(declare-fun e!3823225 () (Set Context!11184))

(assert (=> b!6287290 (= e!3823225 call!532308)))

(declare-fun b!6287291 () Bool)

(declare-fun c!1140677 () Bool)

(assert (=> b!6287291 (= c!1140677 (is-Star!16208 (regOne!32928 (regOne!32928 r!7292))))))

(assert (=> b!6287291 (= e!3823222 e!3823225)))

(declare-fun bm!532304 () Bool)

(assert (=> bm!532304 (= call!532306 ($colon$colon!2073 (exprs!6092 lt!2355990) (ite (or c!1140676 c!1140678) (regTwo!32928 (regOne!32928 (regOne!32928 r!7292))) (regOne!32928 (regOne!32928 r!7292)))))))

(declare-fun bm!532305 () Bool)

(assert (=> bm!532305 (= call!532310 call!532306)))

(declare-fun bm!532306 () Bool)

(assert (=> bm!532306 (= call!532309 call!532307)))

(declare-fun b!6287283 () Bool)

(assert (=> b!6287283 (= e!3823225 (as set.empty (Set Context!11184)))))

(declare-fun d!1973178 () Bool)

(declare-fun c!1140680 () Bool)

(assert (=> d!1973178 (= c!1140680 (and (is-ElementMatch!16208 (regOne!32928 (regOne!32928 r!7292))) (= (c!1140533 (regOne!32928 (regOne!32928 r!7292))) (h!71247 s!2326))))))

(assert (=> d!1973178 (= (derivationStepZipperDown!1456 (regOne!32928 (regOne!32928 r!7292)) lt!2355990 (h!71247 s!2326)) e!3823226)))

(declare-fun b!6287292 () Bool)

(assert (=> b!6287292 (= e!3823223 (set.union call!532311 call!532307))))

(declare-fun b!6287293 () Bool)

(assert (=> b!6287293 (= e!3823226 e!3823223)))

(assert (=> b!6287293 (= c!1140679 (is-Union!16208 (regOne!32928 (regOne!32928 r!7292))))))

(assert (= (and d!1973178 c!1140680) b!6287287))

(assert (= (and d!1973178 (not c!1140680)) b!6287293))

(assert (= (and b!6287293 c!1140679) b!6287292))

(assert (= (and b!6287293 (not c!1140679)) b!6287284))

(assert (= (and b!6287284 res!2592916) b!6287286))

(assert (= (and b!6287284 c!1140676) b!6287285))

(assert (= (and b!6287284 (not c!1140676)) b!6287288))

(assert (= (and b!6287288 c!1140678) b!6287289))

(assert (= (and b!6287288 (not c!1140678)) b!6287291))

(assert (= (and b!6287291 c!1140677) b!6287290))

(assert (= (and b!6287291 (not c!1140677)) b!6287283))

(assert (= (or b!6287289 b!6287290) bm!532305))

(assert (= (or b!6287289 b!6287290) bm!532303))

(assert (= (or b!6287285 bm!532305) bm!532304))

(assert (= (or b!6287285 bm!532303) bm!532306))

(assert (= (or b!6287292 bm!532306) bm!532301))

(assert (= (or b!6287292 b!6287285) bm!532302))

(declare-fun m!7108100 () Bool)

(assert (=> bm!532301 m!7108100))

(assert (=> b!6287287 m!7107402))

(declare-fun m!7108102 () Bool)

(assert (=> b!6287286 m!7108102))

(declare-fun m!7108104 () Bool)

(assert (=> bm!532302 m!7108104))

(declare-fun m!7108106 () Bool)

(assert (=> bm!532304 m!7108106))

(assert (=> b!6286731 d!1973178))

(declare-fun d!1973180 () Bool)

(assert (=> d!1973180 (= (flatMap!1713 z!1189 lambda!345108) (choose!46698 z!1189 lambda!345108))))

(declare-fun bs!1571485 () Bool)

(assert (= bs!1571485 d!1973180))

(declare-fun m!7108108 () Bool)

(assert (=> bs!1571485 m!7108108))

(assert (=> b!6286730 d!1973180))

(declare-fun d!1973182 () Bool)

(assert (=> d!1973182 (= (nullable!6201 (h!71248 (exprs!6092 (h!71249 zl!343)))) (nullableFct!2152 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun bs!1571486 () Bool)

(assert (= bs!1571486 d!1973182))

(declare-fun m!7108110 () Bool)

(assert (=> bs!1571486 m!7108110))

(assert (=> b!6286730 d!1973182))

(declare-fun d!1973184 () Bool)

(declare-fun c!1140681 () Bool)

(declare-fun e!3823230 () Bool)

(assert (=> d!1973184 (= c!1140681 e!3823230)))

(declare-fun res!2592917 () Bool)

(assert (=> d!1973184 (=> (not res!2592917) (not e!3823230))))

(assert (=> d!1973184 (= res!2592917 (is-Cons!64800 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343))))))))))

(declare-fun e!3823229 () (Set Context!11184))

(assert (=> d!1973184 (= (derivationStepZipperUp!1382 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343))))) (h!71247 s!2326)) e!3823229)))

(declare-fun b!6287294 () Bool)

(assert (=> b!6287294 (= e!3823230 (nullable!6201 (h!71248 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343)))))))))))

(declare-fun b!6287295 () Bool)

(declare-fun e!3823228 () (Set Context!11184))

(assert (=> b!6287295 (= e!3823228 (as set.empty (Set Context!11184)))))

(declare-fun bm!532307 () Bool)

(declare-fun call!532312 () (Set Context!11184))

(assert (=> bm!532307 (= call!532312 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343))))))) (Context!11185 (t!378486 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343)))))))) (h!71247 s!2326)))))

(declare-fun b!6287296 () Bool)

(assert (=> b!6287296 (= e!3823229 e!3823228)))

(declare-fun c!1140682 () Bool)

(assert (=> b!6287296 (= c!1140682 (is-Cons!64800 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343))))))))))

(declare-fun b!6287297 () Bool)

(assert (=> b!6287297 (= e!3823229 (set.union call!532312 (derivationStepZipperUp!1382 (Context!11185 (t!378486 (exprs!6092 (Context!11185 (Cons!64800 (h!71248 (exprs!6092 (h!71249 zl!343))) (t!378486 (exprs!6092 (h!71249 zl!343)))))))) (h!71247 s!2326))))))

(declare-fun b!6287298 () Bool)

(assert (=> b!6287298 (= e!3823228 call!532312)))

(assert (= (and d!1973184 res!2592917) b!6287294))

(assert (= (and d!1973184 c!1140681) b!6287297))

(assert (= (and d!1973184 (not c!1140681)) b!6287296))

(assert (= (and b!6287296 c!1140682) b!6287298))

(assert (= (and b!6287296 (not c!1140682)) b!6287295))

(assert (= (or b!6287297 b!6287298) bm!532307))

(declare-fun m!7108112 () Bool)

(assert (=> b!6287294 m!7108112))

(declare-fun m!7108114 () Bool)

(assert (=> bm!532307 m!7108114))

(declare-fun m!7108116 () Bool)

(assert (=> b!6287297 m!7108116))

(assert (=> b!6286730 d!1973184))

(declare-fun b!6287300 () Bool)

(declare-fun c!1140683 () Bool)

(declare-fun e!3823233 () Bool)

(assert (=> b!6287300 (= c!1140683 e!3823233)))

(declare-fun res!2592918 () Bool)

(assert (=> b!6287300 (=> (not res!2592918) (not e!3823233))))

(assert (=> b!6287300 (= res!2592918 (is-Concat!25053 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun e!3823232 () (Set Context!11184))

(declare-fun e!3823236 () (Set Context!11184))

(assert (=> b!6287300 (= e!3823232 e!3823236)))

(declare-fun b!6287301 () Bool)

(declare-fun call!532318 () (Set Context!11184))

(declare-fun call!532316 () (Set Context!11184))

(assert (=> b!6287301 (= e!3823236 (set.union call!532318 call!532316))))

(declare-fun c!1140685 () Bool)

(declare-fun call!532317 () List!64924)

(declare-fun bm!532308 () Bool)

(declare-fun call!532314 () (Set Context!11184))

(declare-fun c!1140686 () Bool)

(assert (=> bm!532308 (= call!532314 (derivationStepZipperDown!1456 (ite c!1140686 (regTwo!32929 (h!71248 (exprs!6092 (h!71249 zl!343)))) (ite c!1140683 (regTwo!32928 (h!71248 (exprs!6092 (h!71249 zl!343)))) (ite c!1140685 (regOne!32928 (h!71248 (exprs!6092 (h!71249 zl!343)))) (reg!16537 (h!71248 (exprs!6092 (h!71249 zl!343))))))) (ite (or c!1140686 c!1140683) lt!2355998 (Context!11185 call!532317)) (h!71247 s!2326)))))

(declare-fun b!6287302 () Bool)

(assert (=> b!6287302 (= e!3823233 (nullable!6201 (regOne!32928 (h!71248 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun call!532313 () List!64924)

(declare-fun bm!532309 () Bool)

(assert (=> bm!532309 (= call!532318 (derivationStepZipperDown!1456 (ite c!1140686 (regOne!32929 (h!71248 (exprs!6092 (h!71249 zl!343)))) (regOne!32928 (h!71248 (exprs!6092 (h!71249 zl!343))))) (ite c!1140686 lt!2355998 (Context!11185 call!532313)) (h!71247 s!2326)))))

(declare-fun bm!532310 () Bool)

(declare-fun call!532315 () (Set Context!11184))

(assert (=> bm!532310 (= call!532315 call!532316)))

(declare-fun b!6287303 () Bool)

(declare-fun e!3823235 () (Set Context!11184))

(assert (=> b!6287303 (= e!3823235 (set.insert lt!2355998 (as set.empty (Set Context!11184))))))

(declare-fun b!6287304 () Bool)

(declare-fun e!3823231 () (Set Context!11184))

(assert (=> b!6287304 (= e!3823236 e!3823231)))

(assert (=> b!6287304 (= c!1140685 (is-Concat!25053 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6287305 () Bool)

(assert (=> b!6287305 (= e!3823231 call!532315)))

(declare-fun b!6287306 () Bool)

(declare-fun e!3823234 () (Set Context!11184))

(assert (=> b!6287306 (= e!3823234 call!532315)))

(declare-fun b!6287307 () Bool)

(declare-fun c!1140684 () Bool)

(assert (=> b!6287307 (= c!1140684 (is-Star!16208 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(assert (=> b!6287307 (= e!3823231 e!3823234)))

(declare-fun bm!532311 () Bool)

(assert (=> bm!532311 (= call!532313 ($colon$colon!2073 (exprs!6092 lt!2355998) (ite (or c!1140683 c!1140685) (regTwo!32928 (h!71248 (exprs!6092 (h!71249 zl!343)))) (h!71248 (exprs!6092 (h!71249 zl!343))))))))

(declare-fun bm!532312 () Bool)

(assert (=> bm!532312 (= call!532317 call!532313)))

(declare-fun bm!532313 () Bool)

(assert (=> bm!532313 (= call!532316 call!532314)))

(declare-fun b!6287299 () Bool)

(assert (=> b!6287299 (= e!3823234 (as set.empty (Set Context!11184)))))

(declare-fun d!1973186 () Bool)

(declare-fun c!1140687 () Bool)

(assert (=> d!1973186 (= c!1140687 (and (is-ElementMatch!16208 (h!71248 (exprs!6092 (h!71249 zl!343)))) (= (c!1140533 (h!71248 (exprs!6092 (h!71249 zl!343)))) (h!71247 s!2326))))))

(assert (=> d!1973186 (= (derivationStepZipperDown!1456 (h!71248 (exprs!6092 (h!71249 zl!343))) lt!2355998 (h!71247 s!2326)) e!3823235)))

(declare-fun b!6287308 () Bool)

(assert (=> b!6287308 (= e!3823232 (set.union call!532318 call!532314))))

(declare-fun b!6287309 () Bool)

(assert (=> b!6287309 (= e!3823235 e!3823232)))

(assert (=> b!6287309 (= c!1140686 (is-Union!16208 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(assert (= (and d!1973186 c!1140687) b!6287303))

(assert (= (and d!1973186 (not c!1140687)) b!6287309))

(assert (= (and b!6287309 c!1140686) b!6287308))

(assert (= (and b!6287309 (not c!1140686)) b!6287300))

(assert (= (and b!6287300 res!2592918) b!6287302))

(assert (= (and b!6287300 c!1140683) b!6287301))

(assert (= (and b!6287300 (not c!1140683)) b!6287304))

(assert (= (and b!6287304 c!1140685) b!6287305))

(assert (= (and b!6287304 (not c!1140685)) b!6287307))

(assert (= (and b!6287307 c!1140684) b!6287306))

(assert (= (and b!6287307 (not c!1140684)) b!6287299))

(assert (= (or b!6287305 b!6287306) bm!532312))

(assert (= (or b!6287305 b!6287306) bm!532310))

(assert (= (or b!6287301 bm!532312) bm!532311))

(assert (= (or b!6287301 bm!532310) bm!532313))

(assert (= (or b!6287308 bm!532313) bm!532308))

(assert (= (or b!6287308 b!6287301) bm!532309))

(declare-fun m!7108118 () Bool)

(assert (=> bm!532308 m!7108118))

(assert (=> b!6287303 m!7108092))

(declare-fun m!7108120 () Bool)

(assert (=> b!6287302 m!7108120))

(declare-fun m!7108122 () Bool)

(assert (=> bm!532309 m!7108122))

(declare-fun m!7108124 () Bool)

(assert (=> bm!532311 m!7108124))

(assert (=> b!6286730 d!1973186))

(declare-fun d!1973188 () Bool)

(declare-fun c!1140688 () Bool)

(declare-fun e!3823239 () Bool)

(assert (=> d!1973188 (= c!1140688 e!3823239)))

(declare-fun res!2592919 () Bool)

(assert (=> d!1973188 (=> (not res!2592919) (not e!3823239))))

(assert (=> d!1973188 (= res!2592919 (is-Cons!64800 (exprs!6092 lt!2355998)))))

(declare-fun e!3823238 () (Set Context!11184))

(assert (=> d!1973188 (= (derivationStepZipperUp!1382 lt!2355998 (h!71247 s!2326)) e!3823238)))

(declare-fun b!6287310 () Bool)

(assert (=> b!6287310 (= e!3823239 (nullable!6201 (h!71248 (exprs!6092 lt!2355998))))))

(declare-fun b!6287311 () Bool)

(declare-fun e!3823237 () (Set Context!11184))

(assert (=> b!6287311 (= e!3823237 (as set.empty (Set Context!11184)))))

(declare-fun bm!532314 () Bool)

(declare-fun call!532319 () (Set Context!11184))

(assert (=> bm!532314 (= call!532319 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 lt!2355998)) (Context!11185 (t!378486 (exprs!6092 lt!2355998))) (h!71247 s!2326)))))

(declare-fun b!6287312 () Bool)

(assert (=> b!6287312 (= e!3823238 e!3823237)))

(declare-fun c!1140689 () Bool)

(assert (=> b!6287312 (= c!1140689 (is-Cons!64800 (exprs!6092 lt!2355998)))))

(declare-fun b!6287313 () Bool)

(assert (=> b!6287313 (= e!3823238 (set.union call!532319 (derivationStepZipperUp!1382 (Context!11185 (t!378486 (exprs!6092 lt!2355998))) (h!71247 s!2326))))))

(declare-fun b!6287314 () Bool)

(assert (=> b!6287314 (= e!3823237 call!532319)))

(assert (= (and d!1973188 res!2592919) b!6287310))

(assert (= (and d!1973188 c!1140688) b!6287313))

(assert (= (and d!1973188 (not c!1140688)) b!6287312))

(assert (= (and b!6287312 c!1140689) b!6287314))

(assert (= (and b!6287312 (not c!1140689)) b!6287311))

(assert (= (or b!6287313 b!6287314) bm!532314))

(declare-fun m!7108126 () Bool)

(assert (=> b!6287310 m!7108126))

(declare-fun m!7108128 () Bool)

(assert (=> bm!532314 m!7108128))

(declare-fun m!7108130 () Bool)

(assert (=> b!6287313 m!7108130))

(assert (=> b!6286730 d!1973188))

(declare-fun d!1973190 () Bool)

(assert (=> d!1973190 (= (flatMap!1713 z!1189 lambda!345108) (dynLambda!25642 lambda!345108 (h!71249 zl!343)))))

(declare-fun lt!2356208 () Unit!158163)

(assert (=> d!1973190 (= lt!2356208 (choose!46699 z!1189 (h!71249 zl!343) lambda!345108))))

(assert (=> d!1973190 (= z!1189 (set.insert (h!71249 zl!343) (as set.empty (Set Context!11184))))))

(assert (=> d!1973190 (= (lemmaFlatMapOnSingletonSet!1239 z!1189 (h!71249 zl!343) lambda!345108) lt!2356208)))

(declare-fun b_lambda!239297 () Bool)

(assert (=> (not b_lambda!239297) (not d!1973190)))

(declare-fun bs!1571487 () Bool)

(assert (= bs!1571487 d!1973190))

(assert (=> bs!1571487 m!7107528))

(declare-fun m!7108132 () Bool)

(assert (=> bs!1571487 m!7108132))

(declare-fun m!7108134 () Bool)

(assert (=> bs!1571487 m!7108134))

(declare-fun m!7108136 () Bool)

(assert (=> bs!1571487 m!7108136))

(assert (=> b!6286730 d!1973190))

(declare-fun d!1973192 () Bool)

(declare-fun c!1140690 () Bool)

(declare-fun e!3823242 () Bool)

(assert (=> d!1973192 (= c!1140690 e!3823242)))

(declare-fun res!2592920 () Bool)

(assert (=> d!1973192 (=> (not res!2592920) (not e!3823242))))

(assert (=> d!1973192 (= res!2592920 (is-Cons!64800 (exprs!6092 (h!71249 zl!343))))))

(declare-fun e!3823241 () (Set Context!11184))

(assert (=> d!1973192 (= (derivationStepZipperUp!1382 (h!71249 zl!343) (h!71247 s!2326)) e!3823241)))

(declare-fun b!6287315 () Bool)

(assert (=> b!6287315 (= e!3823242 (nullable!6201 (h!71248 (exprs!6092 (h!71249 zl!343)))))))

(declare-fun b!6287316 () Bool)

(declare-fun e!3823240 () (Set Context!11184))

(assert (=> b!6287316 (= e!3823240 (as set.empty (Set Context!11184)))))

(declare-fun bm!532315 () Bool)

(declare-fun call!532320 () (Set Context!11184))

(assert (=> bm!532315 (= call!532320 (derivationStepZipperDown!1456 (h!71248 (exprs!6092 (h!71249 zl!343))) (Context!11185 (t!378486 (exprs!6092 (h!71249 zl!343)))) (h!71247 s!2326)))))

(declare-fun b!6287317 () Bool)

(assert (=> b!6287317 (= e!3823241 e!3823240)))

(declare-fun c!1140691 () Bool)

(assert (=> b!6287317 (= c!1140691 (is-Cons!64800 (exprs!6092 (h!71249 zl!343))))))

(declare-fun b!6287318 () Bool)

(assert (=> b!6287318 (= e!3823241 (set.union call!532320 (derivationStepZipperUp!1382 (Context!11185 (t!378486 (exprs!6092 (h!71249 zl!343)))) (h!71247 s!2326))))))

(declare-fun b!6287319 () Bool)

(assert (=> b!6287319 (= e!3823240 call!532320)))

(assert (= (and d!1973192 res!2592920) b!6287315))

(assert (= (and d!1973192 c!1140690) b!6287318))

(assert (= (and d!1973192 (not c!1140690)) b!6287317))

(assert (= (and b!6287317 c!1140691) b!6287319))

(assert (= (and b!6287317 (not c!1140691)) b!6287316))

(assert (= (or b!6287318 b!6287319) bm!532315))

(assert (=> b!6287315 m!7107532))

(declare-fun m!7108138 () Bool)

(assert (=> bm!532315 m!7108138))

(declare-fun m!7108140 () Bool)

(assert (=> b!6287318 m!7108140))

(assert (=> b!6286730 d!1973192))

(declare-fun d!1973194 () Bool)

(declare-fun e!3823245 () Bool)

(assert (=> d!1973194 e!3823245))

(declare-fun res!2592923 () Bool)

(assert (=> d!1973194 (=> res!2592923 e!3823245)))

(declare-fun e!3823243 () Bool)

(assert (=> d!1973194 (= res!2592923 e!3823243)))

(declare-fun res!2592921 () Bool)

(assert (=> d!1973194 (=> (not res!2592921) (not e!3823243))))

(declare-fun lt!2356211 () Option!16099)

(assert (=> d!1973194 (= res!2592921 (isDefined!12802 lt!2356211))))

(declare-fun e!3823247 () Option!16099)

(assert (=> d!1973194 (= lt!2356211 e!3823247)))

(declare-fun c!1140693 () Bool)

(declare-fun e!3823244 () Bool)

(assert (=> d!1973194 (= c!1140693 e!3823244)))

(declare-fun res!2592924 () Bool)

(assert (=> d!1973194 (=> (not res!2592924) (not e!3823244))))

(assert (=> d!1973194 (= res!2592924 (matchR!8391 (regOne!32928 r!7292) Nil!64799))))

(assert (=> d!1973194 (validRegex!7944 (regOne!32928 r!7292))))

(assert (=> d!1973194 (= (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) Nil!64799 s!2326 s!2326) lt!2356211)))

(declare-fun b!6287320 () Bool)

(assert (=> b!6287320 (= e!3823245 (not (isDefined!12802 lt!2356211)))))

(declare-fun b!6287321 () Bool)

(declare-fun res!2592922 () Bool)

(assert (=> b!6287321 (=> (not res!2592922) (not e!3823243))))

(assert (=> b!6287321 (= res!2592922 (matchR!8391 (regOne!32928 r!7292) (_1!36490 (get!22401 lt!2356211))))))

(declare-fun b!6287322 () Bool)

(declare-fun res!2592925 () Bool)

(assert (=> b!6287322 (=> (not res!2592925) (not e!3823243))))

(assert (=> b!6287322 (= res!2592925 (matchR!8391 (regTwo!32928 r!7292) (_2!36490 (get!22401 lt!2356211))))))

(declare-fun b!6287323 () Bool)

(declare-fun e!3823246 () Option!16099)

(assert (=> b!6287323 (= e!3823246 None!16098)))

(declare-fun b!6287324 () Bool)

(assert (=> b!6287324 (= e!3823247 e!3823246)))

(declare-fun c!1140692 () Bool)

(assert (=> b!6287324 (= c!1140692 (is-Nil!64799 s!2326))))

(declare-fun b!6287325 () Bool)

(assert (=> b!6287325 (= e!3823247 (Some!16098 (tuple2!66375 Nil!64799 s!2326)))))

(declare-fun b!6287326 () Bool)

(declare-fun lt!2356209 () Unit!158163)

(declare-fun lt!2356210 () Unit!158163)

(assert (=> b!6287326 (= lt!2356209 lt!2356210)))

(assert (=> b!6287326 (= (++!14281 (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326)) s!2326)))

(assert (=> b!6287326 (= lt!2356210 (lemmaMoveElementToOtherListKeepsConcatEq!2376 Nil!64799 (h!71247 s!2326) (t!378485 s!2326) s!2326))))

(assert (=> b!6287326 (= e!3823246 (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) (++!14281 Nil!64799 (Cons!64799 (h!71247 s!2326) Nil!64799)) (t!378485 s!2326) s!2326))))

(declare-fun b!6287327 () Bool)

(assert (=> b!6287327 (= e!3823243 (= (++!14281 (_1!36490 (get!22401 lt!2356211)) (_2!36490 (get!22401 lt!2356211))) s!2326))))

(declare-fun b!6287328 () Bool)

(assert (=> b!6287328 (= e!3823244 (matchR!8391 (regTwo!32928 r!7292) s!2326))))

(assert (= (and d!1973194 res!2592924) b!6287328))

(assert (= (and d!1973194 c!1140693) b!6287325))

(assert (= (and d!1973194 (not c!1140693)) b!6287324))

(assert (= (and b!6287324 c!1140692) b!6287323))

(assert (= (and b!6287324 (not c!1140692)) b!6287326))

(assert (= (and d!1973194 res!2592921) b!6287321))

(assert (= (and b!6287321 res!2592922) b!6287322))

(assert (= (and b!6287322 res!2592925) b!6287327))

(assert (= (and d!1973194 (not res!2592923)) b!6287320))

(assert (=> b!6287326 m!7107850))

(assert (=> b!6287326 m!7107850))

(assert (=> b!6287326 m!7107852))

(assert (=> b!6287326 m!7107854))

(assert (=> b!6287326 m!7107850))

(declare-fun m!7108142 () Bool)

(assert (=> b!6287326 m!7108142))

(declare-fun m!7108144 () Bool)

(assert (=> b!6287322 m!7108144))

(declare-fun m!7108146 () Bool)

(assert (=> b!6287322 m!7108146))

(declare-fun m!7108148 () Bool)

(assert (=> d!1973194 m!7108148))

(declare-fun m!7108150 () Bool)

(assert (=> d!1973194 m!7108150))

(declare-fun m!7108152 () Bool)

(assert (=> d!1973194 m!7108152))

(declare-fun m!7108154 () Bool)

(assert (=> b!6287328 m!7108154))

(assert (=> b!6287320 m!7108148))

(assert (=> b!6287327 m!7108144))

(declare-fun m!7108156 () Bool)

(assert (=> b!6287327 m!7108156))

(assert (=> b!6287321 m!7108144))

(declare-fun m!7108158 () Bool)

(assert (=> b!6287321 m!7108158))

(assert (=> b!6286709 d!1973194))

(declare-fun d!1973196 () Bool)

(assert (=> d!1973196 (= (Exists!3278 lambda!345106) (choose!46696 lambda!345106))))

(declare-fun bs!1571488 () Bool)

(assert (= bs!1571488 d!1973196))

(declare-fun m!7108160 () Bool)

(assert (=> bs!1571488 m!7108160))

(assert (=> b!6286709 d!1973196))

(declare-fun d!1973198 () Bool)

(assert (=> d!1973198 (= (Exists!3278 lambda!345107) (choose!46696 lambda!345107))))

(declare-fun bs!1571489 () Bool)

(assert (= bs!1571489 d!1973198))

(declare-fun m!7108162 () Bool)

(assert (=> bs!1571489 m!7108162))

(assert (=> b!6286709 d!1973198))

(declare-fun bs!1571490 () Bool)

(declare-fun d!1973200 () Bool)

(assert (= bs!1571490 (and d!1973200 b!6286709)))

(declare-fun lambda!345184 () Int)

(assert (=> bs!1571490 (= lambda!345184 lambda!345106)))

(declare-fun bs!1571491 () Bool)

(assert (= bs!1571491 (and d!1973200 b!6287094)))

(assert (=> bs!1571491 (not (= lambda!345184 lambda!345153))))

(declare-fun bs!1571492 () Bool)

(assert (= bs!1571492 (and d!1973200 d!1973080)))

(assert (=> bs!1571492 (= (and (= (regOne!32928 r!7292) (regTwo!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355993)) (= lambda!345184 lambda!345146))))

(declare-fun bs!1571493 () Bool)

(assert (= bs!1571493 (and d!1973200 d!1973104)))

(assert (=> bs!1571493 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345184 lambda!345154))))

(declare-fun bs!1571494 () Bool)

(assert (= bs!1571494 (and d!1973200 d!1973126)))

(assert (=> bs!1571494 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345184 lambda!345163))))

(declare-fun bs!1571495 () Bool)

(assert (= bs!1571495 (and d!1973200 b!6286700)))

(assert (=> bs!1571495 (not (= lambda!345184 lambda!345110))))

(assert (=> bs!1571494 (not (= lambda!345184 lambda!345164))))

(declare-fun bs!1571496 () Bool)

(assert (= bs!1571496 (and d!1973200 b!6287149)))

(assert (=> bs!1571496 (not (= lambda!345184 lambda!345157))))

(declare-fun bs!1571497 () Bool)

(assert (= bs!1571497 (and d!1973200 b!6287232)))

(assert (=> bs!1571497 (not (= lambda!345184 lambda!345183))))

(assert (=> bs!1571495 (= (and (= (regOne!32928 r!7292) (regTwo!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355993)) (= lambda!345184 lambda!345111))))

(declare-fun bs!1571498 () Bool)

(assert (= bs!1571498 (and d!1973200 b!6287152)))

(assert (=> bs!1571498 (not (= lambda!345184 lambda!345158))))

(assert (=> bs!1571495 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345184 lambda!345109))))

(assert (=> bs!1571490 (not (= lambda!345184 lambda!345107))))

(declare-fun bs!1571499 () Bool)

(assert (= bs!1571499 (and d!1973200 b!6287091)))

(assert (=> bs!1571499 (not (= lambda!345184 lambda!345152))))

(declare-fun bs!1571500 () Bool)

(assert (= bs!1571500 (and d!1973200 b!6287229)))

(assert (=> bs!1571500 (not (= lambda!345184 lambda!345182))))

(assert (=> d!1973200 true))

(assert (=> d!1973200 true))

(assert (=> d!1973200 true))

(assert (=> d!1973200 (= (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) Nil!64799 s!2326 s!2326)) (Exists!3278 lambda!345184))))

(declare-fun lt!2356212 () Unit!158163)

(assert (=> d!1973200 (= lt!2356212 (choose!46693 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326))))

(assert (=> d!1973200 (validRegex!7944 (regOne!32928 r!7292))))

(assert (=> d!1973200 (= (lemmaFindConcatSeparationEquivalentToExists!2277 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326) lt!2356212)))

(declare-fun bs!1571501 () Bool)

(assert (= bs!1571501 d!1973200))

(declare-fun m!7108164 () Bool)

(assert (=> bs!1571501 m!7108164))

(declare-fun m!7108166 () Bool)

(assert (=> bs!1571501 m!7108166))

(assert (=> bs!1571501 m!7107498))

(assert (=> bs!1571501 m!7108152))

(assert (=> bs!1571501 m!7107498))

(assert (=> bs!1571501 m!7107500))

(assert (=> b!6286709 d!1973200))

(declare-fun bs!1571502 () Bool)

(declare-fun d!1973202 () Bool)

(assert (= bs!1571502 (and d!1973202 b!6286709)))

(declare-fun lambda!345185 () Int)

(assert (=> bs!1571502 (= lambda!345185 lambda!345106)))

(declare-fun bs!1571503 () Bool)

(assert (= bs!1571503 (and d!1973202 b!6287094)))

(assert (=> bs!1571503 (not (= lambda!345185 lambda!345153))))

(declare-fun bs!1571504 () Bool)

(assert (= bs!1571504 (and d!1973202 d!1973080)))

(assert (=> bs!1571504 (= (and (= (regOne!32928 r!7292) (regTwo!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355993)) (= lambda!345185 lambda!345146))))

(declare-fun bs!1571505 () Bool)

(assert (= bs!1571505 (and d!1973202 d!1973104)))

(assert (=> bs!1571505 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345185 lambda!345154))))

(declare-fun bs!1571506 () Bool)

(assert (= bs!1571506 (and d!1973202 d!1973126)))

(assert (=> bs!1571506 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345185 lambda!345163))))

(declare-fun bs!1571507 () Bool)

(assert (= bs!1571507 (and d!1973202 b!6286700)))

(assert (=> bs!1571507 (not (= lambda!345185 lambda!345110))))

(assert (=> bs!1571506 (not (= lambda!345185 lambda!345164))))

(declare-fun bs!1571508 () Bool)

(assert (= bs!1571508 (and d!1973202 b!6287149)))

(assert (=> bs!1571508 (not (= lambda!345185 lambda!345157))))

(declare-fun bs!1571509 () Bool)

(assert (= bs!1571509 (and d!1973202 b!6287232)))

(assert (=> bs!1571509 (not (= lambda!345185 lambda!345183))))

(assert (=> bs!1571507 (= (and (= (regOne!32928 r!7292) (regTwo!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355993)) (= lambda!345185 lambda!345111))))

(declare-fun bs!1571510 () Bool)

(assert (= bs!1571510 (and d!1973202 b!6287152)))

(assert (=> bs!1571510 (not (= lambda!345185 lambda!345158))))

(assert (=> bs!1571507 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345185 lambda!345109))))

(declare-fun bs!1571511 () Bool)

(assert (= bs!1571511 (and d!1973202 d!1973200)))

(assert (=> bs!1571511 (= lambda!345185 lambda!345184)))

(assert (=> bs!1571502 (not (= lambda!345185 lambda!345107))))

(declare-fun bs!1571512 () Bool)

(assert (= bs!1571512 (and d!1973202 b!6287091)))

(assert (=> bs!1571512 (not (= lambda!345185 lambda!345152))))

(declare-fun bs!1571513 () Bool)

(assert (= bs!1571513 (and d!1973202 b!6287229)))

(assert (=> bs!1571513 (not (= lambda!345185 lambda!345182))))

(assert (=> d!1973202 true))

(assert (=> d!1973202 true))

(assert (=> d!1973202 true))

(declare-fun bs!1571514 () Bool)

(assert (= bs!1571514 d!1973202))

(declare-fun lambda!345186 () Int)

(assert (=> bs!1571514 (not (= lambda!345186 lambda!345185))))

(assert (=> bs!1571502 (not (= lambda!345186 lambda!345106))))

(assert (=> bs!1571503 (= (and (= (regOne!32928 r!7292) (regOne!32928 lt!2355963)) (= (regTwo!32928 r!7292) (regTwo!32928 lt!2355963))) (= lambda!345186 lambda!345153))))

(assert (=> bs!1571504 (not (= lambda!345186 lambda!345146))))

(assert (=> bs!1571505 (not (= lambda!345186 lambda!345154))))

(assert (=> bs!1571506 (not (= lambda!345186 lambda!345163))))

(assert (=> bs!1571507 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345186 lambda!345110))))

(assert (=> bs!1571506 (= (and (= (regOne!32928 r!7292) (regOne!32928 (regOne!32928 r!7292))) (= (regTwo!32928 r!7292) lt!2355963)) (= lambda!345186 lambda!345164))))

(assert (=> bs!1571508 (not (= lambda!345186 lambda!345157))))

(assert (=> bs!1571509 (= lambda!345186 lambda!345183)))

(assert (=> bs!1571507 (not (= lambda!345186 lambda!345111))))

(assert (=> bs!1571510 (= (and (= (regOne!32928 r!7292) (regOne!32928 lt!2355994)) (= (regTwo!32928 r!7292) (regTwo!32928 lt!2355994))) (= lambda!345186 lambda!345158))))

(assert (=> bs!1571507 (not (= lambda!345186 lambda!345109))))

(assert (=> bs!1571511 (not (= lambda!345186 lambda!345184))))

(assert (=> bs!1571502 (= lambda!345186 lambda!345107)))

(assert (=> bs!1571512 (not (= lambda!345186 lambda!345152))))

(assert (=> bs!1571513 (not (= lambda!345186 lambda!345182))))

(assert (=> d!1973202 true))

(assert (=> d!1973202 true))

(assert (=> d!1973202 true))

(assert (=> d!1973202 (= (Exists!3278 lambda!345185) (Exists!3278 lambda!345186))))

(declare-fun lt!2356213 () Unit!158163)

(assert (=> d!1973202 (= lt!2356213 (choose!46697 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326))))

(assert (=> d!1973202 (validRegex!7944 (regOne!32928 r!7292))))

(assert (=> d!1973202 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1815 (regOne!32928 r!7292) (regTwo!32928 r!7292) s!2326) lt!2356213)))

(declare-fun m!7108168 () Bool)

(assert (=> bs!1571514 m!7108168))

(declare-fun m!7108170 () Bool)

(assert (=> bs!1571514 m!7108170))

(declare-fun m!7108172 () Bool)

(assert (=> bs!1571514 m!7108172))

(assert (=> bs!1571514 m!7108152))

(assert (=> b!6286709 d!1973202))

(declare-fun d!1973204 () Bool)

(assert (=> d!1973204 (= (isDefined!12802 (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) Nil!64799 s!2326 s!2326)) (not (isEmpty!36856 (findConcatSeparation!2513 (regOne!32928 r!7292) (regTwo!32928 r!7292) Nil!64799 s!2326 s!2326))))))

(declare-fun bs!1571515 () Bool)

(assert (= bs!1571515 d!1973204))

(assert (=> bs!1571515 m!7107498))

(declare-fun m!7108174 () Bool)

(assert (=> bs!1571515 m!7108174))

(assert (=> b!6286709 d!1973204))

(declare-fun d!1973206 () Bool)

(declare-fun res!2592928 () Bool)

(declare-fun e!3823251 () Bool)

(assert (=> d!1973206 (=> res!2592928 e!3823251)))

(assert (=> d!1973206 (= res!2592928 (is-ElementMatch!16208 r!7292))))

(assert (=> d!1973206 (= (validRegex!7944 r!7292) e!3823251)))

(declare-fun b!6287329 () Bool)

(declare-fun e!3823249 () Bool)

(declare-fun e!3823253 () Bool)

(assert (=> b!6287329 (= e!3823249 e!3823253)))

(declare-fun res!2592927 () Bool)

(assert (=> b!6287329 (= res!2592927 (not (nullable!6201 (reg!16537 r!7292))))))

(assert (=> b!6287329 (=> (not res!2592927) (not e!3823253))))

(declare-fun bm!532316 () Bool)

(declare-fun call!532322 () Bool)

(declare-fun call!532321 () Bool)

(assert (=> bm!532316 (= call!532322 call!532321)))

(declare-fun b!6287330 () Bool)

(assert (=> b!6287330 (= e!3823253 call!532321)))

(declare-fun b!6287331 () Bool)

(declare-fun res!2592926 () Bool)

(declare-fun e!3823250 () Bool)

(assert (=> b!6287331 (=> (not res!2592926) (not e!3823250))))

(declare-fun call!532323 () Bool)

(assert (=> b!6287331 (= res!2592926 call!532323)))

(declare-fun e!3823254 () Bool)

(assert (=> b!6287331 (= e!3823254 e!3823250)))

(declare-fun b!6287332 () Bool)

(declare-fun res!2592930 () Bool)

(declare-fun e!3823252 () Bool)

(assert (=> b!6287332 (=> res!2592930 e!3823252)))

(assert (=> b!6287332 (= res!2592930 (not (is-Concat!25053 r!7292)))))

(assert (=> b!6287332 (= e!3823254 e!3823252)))

(declare-fun b!6287333 () Bool)

(assert (=> b!6287333 (= e!3823249 e!3823254)))

(declare-fun c!1140694 () Bool)

(assert (=> b!6287333 (= c!1140694 (is-Union!16208 r!7292))))

(declare-fun b!6287334 () Bool)

(assert (=> b!6287334 (= e!3823250 call!532322)))

(declare-fun bm!532317 () Bool)

(declare-fun c!1140695 () Bool)

(assert (=> bm!532317 (= call!532321 (validRegex!7944 (ite c!1140695 (reg!16537 r!7292) (ite c!1140694 (regTwo!32929 r!7292) (regTwo!32928 r!7292)))))))

(declare-fun b!6287335 () Bool)

(declare-fun e!3823248 () Bool)

(assert (=> b!6287335 (= e!3823248 call!532322)))

(declare-fun b!6287336 () Bool)

(assert (=> b!6287336 (= e!3823251 e!3823249)))

(assert (=> b!6287336 (= c!1140695 (is-Star!16208 r!7292))))

(declare-fun bm!532318 () Bool)

(assert (=> bm!532318 (= call!532323 (validRegex!7944 (ite c!1140694 (regOne!32929 r!7292) (regOne!32928 r!7292))))))

(declare-fun b!6287337 () Bool)

(assert (=> b!6287337 (= e!3823252 e!3823248)))

(declare-fun res!2592929 () Bool)

(assert (=> b!6287337 (=> (not res!2592929) (not e!3823248))))

(assert (=> b!6287337 (= res!2592929 call!532323)))

(assert (= (and d!1973206 (not res!2592928)) b!6287336))

(assert (= (and b!6287336 c!1140695) b!6287329))

(assert (= (and b!6287336 (not c!1140695)) b!6287333))

(assert (= (and b!6287329 res!2592927) b!6287330))

(assert (= (and b!6287333 c!1140694) b!6287331))

(assert (= (and b!6287333 (not c!1140694)) b!6287332))

(assert (= (and b!6287331 res!2592926) b!6287334))

(assert (= (and b!6287332 (not res!2592930)) b!6287337))

(assert (= (and b!6287337 res!2592929) b!6287335))

(assert (= (or b!6287334 b!6287335) bm!532316))

(assert (= (or b!6287331 b!6287337) bm!532318))

(assert (= (or b!6287330 bm!532316) bm!532317))

(declare-fun m!7108176 () Bool)

(assert (=> b!6287329 m!7108176))

(declare-fun m!7108178 () Bool)

(assert (=> bm!532317 m!7108178))

(declare-fun m!7108180 () Bool)

(assert (=> bm!532318 m!7108180))

(assert (=> start!624828 d!1973206))

(assert (=> b!6286729 d!1973072))

(declare-fun d!1973208 () Bool)

(declare-fun c!1140696 () Bool)

(assert (=> d!1973208 (= c!1140696 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823255 () Bool)

(assert (=> d!1973208 (= (matchZipper!2220 lt!2355961 (t!378485 s!2326)) e!3823255)))

(declare-fun b!6287338 () Bool)

(assert (=> b!6287338 (= e!3823255 (nullableZipper!1978 lt!2355961))))

(declare-fun b!6287339 () Bool)

(assert (=> b!6287339 (= e!3823255 (matchZipper!2220 (derivationStepZipper!2174 lt!2355961 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973208 c!1140696) b!6287338))

(assert (= (and d!1973208 (not c!1140696)) b!6287339))

(assert (=> d!1973208 m!7107732))

(declare-fun m!7108182 () Bool)

(assert (=> b!6287338 m!7108182))

(assert (=> b!6287339 m!7107736))

(assert (=> b!6287339 m!7107736))

(declare-fun m!7108184 () Bool)

(assert (=> b!6287339 m!7108184))

(assert (=> b!6287339 m!7107740))

(assert (=> b!6287339 m!7108184))

(assert (=> b!6287339 m!7107740))

(declare-fun m!7108186 () Bool)

(assert (=> b!6287339 m!7108186))

(assert (=> b!6286729 d!1973208))

(declare-fun d!1973210 () Bool)

(declare-fun c!1140697 () Bool)

(assert (=> d!1973210 (= c!1140697 (isEmpty!36855 (t!378485 s!2326)))))

(declare-fun e!3823256 () Bool)

(assert (=> d!1973210 (= (matchZipper!2220 lt!2355965 (t!378485 s!2326)) e!3823256)))

(declare-fun b!6287340 () Bool)

(assert (=> b!6287340 (= e!3823256 (nullableZipper!1978 lt!2355965))))

(declare-fun b!6287341 () Bool)

(assert (=> b!6287341 (= e!3823256 (matchZipper!2220 (derivationStepZipper!2174 lt!2355965 (head!12916 (t!378485 s!2326))) (tail!12001 (t!378485 s!2326))))))

(assert (= (and d!1973210 c!1140697) b!6287340))

(assert (= (and d!1973210 (not c!1140697)) b!6287341))

(assert (=> d!1973210 m!7107732))

(declare-fun m!7108188 () Bool)

(assert (=> b!6287340 m!7108188))

(assert (=> b!6287341 m!7107736))

(assert (=> b!6287341 m!7107736))

(declare-fun m!7108190 () Bool)

(assert (=> b!6287341 m!7108190))

(assert (=> b!6287341 m!7107740))

(assert (=> b!6287341 m!7108190))

(assert (=> b!6287341 m!7107740))

(declare-fun m!7108192 () Bool)

(assert (=> b!6287341 m!7108192))

(assert (=> b!6286729 d!1973210))

(declare-fun e!3823257 () Bool)

(declare-fun d!1973212 () Bool)

(assert (=> d!1973212 (= (matchZipper!2220 (set.union lt!2355965 lt!2355955) (t!378485 s!2326)) e!3823257)))

(declare-fun res!2592931 () Bool)

(assert (=> d!1973212 (=> res!2592931 e!3823257)))

(assert (=> d!1973212 (= res!2592931 (matchZipper!2220 lt!2355965 (t!378485 s!2326)))))

(declare-fun lt!2356214 () Unit!158163)

(assert (=> d!1973212 (= lt!2356214 (choose!46692 lt!2355965 lt!2355955 (t!378485 s!2326)))))

(assert (=> d!1973212 (= (lemmaZipperConcatMatchesSameAsBothZippers!1039 lt!2355965 lt!2355955 (t!378485 s!2326)) lt!2356214)))

(declare-fun b!6287342 () Bool)

(assert (=> b!6287342 (= e!3823257 (matchZipper!2220 lt!2355955 (t!378485 s!2326)))))

(assert (= (and d!1973212 (not res!2592931)) b!6287342))

(declare-fun m!7108194 () Bool)

(assert (=> d!1973212 m!7108194))

(assert (=> d!1973212 m!7107484))

(declare-fun m!7108196 () Bool)

(assert (=> d!1973212 m!7108196))

(assert (=> b!6287342 m!7107510))

(assert (=> b!6286729 d!1973212))

(declare-fun d!1973214 () Bool)

(assert (=> d!1973214 (= (isEmpty!36852 (t!378487 zl!343)) (is-Nil!64801 (t!378487 zl!343)))))

(assert (=> b!6286728 d!1973214))

(declare-fun bs!1571516 () Bool)

(declare-fun d!1973216 () Bool)

(assert (= bs!1571516 (and d!1973216 d!1973068)))

(declare-fun lambda!345189 () Int)

(assert (=> bs!1571516 (= lambda!345189 lambda!345140)))

(declare-fun bs!1571517 () Bool)

(assert (= bs!1571517 (and d!1973216 d!1973166)))

(assert (=> bs!1571517 (= lambda!345189 lambda!345181)))

(declare-fun bs!1571518 () Bool)

(assert (= bs!1571518 (and d!1973216 d!1973116)))

(assert (=> bs!1571518 (= lambda!345189 lambda!345156)))

(declare-fun bs!1571519 () Bool)

(assert (= bs!1571519 (and d!1973216 d!1973112)))

(assert (=> bs!1571519 (= lambda!345189 lambda!345155)))

(declare-fun bs!1571520 () Bool)

(assert (= bs!1571520 (and d!1973216 d!1973156)))

(assert (=> bs!1571520 (= lambda!345189 lambda!345168)))

(declare-fun bs!1571521 () Bool)

(assert (= bs!1571521 (and d!1973216 d!1973082)))

(assert (=> bs!1571521 (= lambda!345189 lambda!345147)))

(declare-fun b!6287363 () Bool)

(declare-fun e!3823272 () Regex!16208)

(assert (=> b!6287363 (= e!3823272 EmptyLang!16208)))

(declare-fun b!6287364 () Bool)

(declare-fun e!3823275 () Bool)

(declare-fun lt!2356217 () Regex!16208)

(declare-fun isUnion!1051 (Regex!16208) Bool)

(assert (=> b!6287364 (= e!3823275 (isUnion!1051 lt!2356217))))

(declare-fun e!3823273 () Bool)

(assert (=> d!1973216 e!3823273))

(declare-fun res!2592937 () Bool)

(assert (=> d!1973216 (=> (not res!2592937) (not e!3823273))))

(assert (=> d!1973216 (= res!2592937 (validRegex!7944 lt!2356217))))

(declare-fun e!3823270 () Regex!16208)

(assert (=> d!1973216 (= lt!2356217 e!3823270)))

(declare-fun c!1140708 () Bool)

(declare-fun e!3823271 () Bool)

(assert (=> d!1973216 (= c!1140708 e!3823271)))

(declare-fun res!2592936 () Bool)

(assert (=> d!1973216 (=> (not res!2592936) (not e!3823271))))

(assert (=> d!1973216 (= res!2592936 (is-Cons!64800 (unfocusZipperList!1629 zl!343)))))

(assert (=> d!1973216 (forall!15353 (unfocusZipperList!1629 zl!343) lambda!345189)))

(assert (=> d!1973216 (= (generalisedUnion!2052 (unfocusZipperList!1629 zl!343)) lt!2356217)))

(declare-fun b!6287365 () Bool)

(declare-fun e!3823274 () Bool)

(declare-fun isEmptyLang!1621 (Regex!16208) Bool)

(assert (=> b!6287365 (= e!3823274 (isEmptyLang!1621 lt!2356217))))

(declare-fun b!6287366 () Bool)

(assert (=> b!6287366 (= e!3823272 (Union!16208 (h!71248 (unfocusZipperList!1629 zl!343)) (generalisedUnion!2052 (t!378486 (unfocusZipperList!1629 zl!343)))))))

(declare-fun b!6287367 () Bool)

(assert (=> b!6287367 (= e!3823273 e!3823274)))

(declare-fun c!1140707 () Bool)

(assert (=> b!6287367 (= c!1140707 (isEmpty!36851 (unfocusZipperList!1629 zl!343)))))

(declare-fun b!6287368 () Bool)

(assert (=> b!6287368 (= e!3823270 (h!71248 (unfocusZipperList!1629 zl!343)))))

(declare-fun b!6287369 () Bool)

(assert (=> b!6287369 (= e!3823270 e!3823272)))

(declare-fun c!1140706 () Bool)

(assert (=> b!6287369 (= c!1140706 (is-Cons!64800 (unfocusZipperList!1629 zl!343)))))

(declare-fun b!6287370 () Bool)

(assert (=> b!6287370 (= e!3823275 (= lt!2356217 (head!12917 (unfocusZipperList!1629 zl!343))))))

(declare-fun b!6287371 () Bool)

(assert (=> b!6287371 (= e!3823274 e!3823275)))

(declare-fun c!1140709 () Bool)

(assert (=> b!6287371 (= c!1140709 (isEmpty!36851 (tail!12002 (unfocusZipperList!1629 zl!343))))))

(declare-fun b!6287372 () Bool)

(assert (=> b!6287372 (= e!3823271 (isEmpty!36851 (t!378486 (unfocusZipperList!1629 zl!343))))))

(assert (= (and d!1973216 res!2592936) b!6287372))

(assert (= (and d!1973216 c!1140708) b!6287368))

(assert (= (and d!1973216 (not c!1140708)) b!6287369))

(assert (= (and b!6287369 c!1140706) b!6287366))

(assert (= (and b!6287369 (not c!1140706)) b!6287363))

(assert (= (and d!1973216 res!2592937) b!6287367))

(assert (= (and b!6287367 c!1140707) b!6287365))

(assert (= (and b!6287367 (not c!1140707)) b!6287371))

(assert (= (and b!6287371 c!1140709) b!6287370))

(assert (= (and b!6287371 (not c!1140709)) b!6287364))

(assert (=> b!6287367 m!7107516))

(declare-fun m!7108198 () Bool)

(assert (=> b!6287367 m!7108198))

(declare-fun m!7108200 () Bool)

(assert (=> b!6287372 m!7108200))

(declare-fun m!7108202 () Bool)

(assert (=> b!6287365 m!7108202))

(declare-fun m!7108204 () Bool)

(assert (=> b!6287366 m!7108204))

(assert (=> b!6287371 m!7107516))

(declare-fun m!7108206 () Bool)

(assert (=> b!6287371 m!7108206))

(assert (=> b!6287371 m!7108206))

(declare-fun m!7108208 () Bool)

(assert (=> b!6287371 m!7108208))

(assert (=> b!6287370 m!7107516))

(declare-fun m!7108210 () Bool)

(assert (=> b!6287370 m!7108210))

(declare-fun m!7108212 () Bool)

(assert (=> b!6287364 m!7108212))

(declare-fun m!7108214 () Bool)

(assert (=> d!1973216 m!7108214))

(assert (=> d!1973216 m!7107516))

(declare-fun m!7108216 () Bool)

(assert (=> d!1973216 m!7108216))

(assert (=> b!6286707 d!1973216))

(declare-fun bs!1571522 () Bool)

(declare-fun d!1973218 () Bool)

(assert (= bs!1571522 (and d!1973218 d!1973068)))

(declare-fun lambda!345192 () Int)

(assert (=> bs!1571522 (= lambda!345192 lambda!345140)))

(declare-fun bs!1571523 () Bool)

(assert (= bs!1571523 (and d!1973218 d!1973166)))

(assert (=> bs!1571523 (= lambda!345192 lambda!345181)))

(declare-fun bs!1571524 () Bool)

(assert (= bs!1571524 (and d!1973218 d!1973116)))

(assert (=> bs!1571524 (= lambda!345192 lambda!345156)))

(declare-fun bs!1571525 () Bool)

(assert (= bs!1571525 (and d!1973218 d!1973112)))

(assert (=> bs!1571525 (= lambda!345192 lambda!345155)))

(declare-fun bs!1571526 () Bool)

(assert (= bs!1571526 (and d!1973218 d!1973156)))

(assert (=> bs!1571526 (= lambda!345192 lambda!345168)))

(declare-fun bs!1571527 () Bool)

(assert (= bs!1571527 (and d!1973218 d!1973082)))

(assert (=> bs!1571527 (= lambda!345192 lambda!345147)))

(declare-fun bs!1571528 () Bool)

(assert (= bs!1571528 (and d!1973218 d!1973216)))

(assert (=> bs!1571528 (= lambda!345192 lambda!345189)))

(declare-fun lt!2356220 () List!64924)

(assert (=> d!1973218 (forall!15353 lt!2356220 lambda!345192)))

(declare-fun e!3823278 () List!64924)

(assert (=> d!1973218 (= lt!2356220 e!3823278)))

(declare-fun c!1140712 () Bool)

(assert (=> d!1973218 (= c!1140712 (is-Cons!64801 zl!343))))

(assert (=> d!1973218 (= (unfocusZipperList!1629 zl!343) lt!2356220)))

(declare-fun b!6287377 () Bool)

(assert (=> b!6287377 (= e!3823278 (Cons!64800 (generalisedConcat!1805 (exprs!6092 (h!71249 zl!343))) (unfocusZipperList!1629 (t!378487 zl!343))))))

(declare-fun b!6287378 () Bool)

(assert (=> b!6287378 (= e!3823278 Nil!64800)))

(assert (= (and d!1973218 c!1140712) b!6287377))

(assert (= (and d!1973218 (not c!1140712)) b!6287378))

(declare-fun m!7108218 () Bool)

(assert (=> d!1973218 m!7108218))

(assert (=> b!6287377 m!7107488))

(declare-fun m!7108220 () Bool)

(assert (=> b!6287377 m!7108220))

(assert (=> b!6286707 d!1973218))

(declare-fun e!3823281 () Bool)

(assert (=> b!6286720 (= tp!1751291 e!3823281)))

(declare-fun b!6287389 () Bool)

(assert (=> b!6287389 (= e!3823281 tp_is_empty!41669)))

(declare-fun b!6287392 () Bool)

(declare-fun tp!1751341 () Bool)

(declare-fun tp!1751342 () Bool)

(assert (=> b!6287392 (= e!3823281 (and tp!1751341 tp!1751342))))

(declare-fun b!6287390 () Bool)

(declare-fun tp!1751345 () Bool)

(declare-fun tp!1751344 () Bool)

(assert (=> b!6287390 (= e!3823281 (and tp!1751345 tp!1751344))))

(declare-fun b!6287391 () Bool)

(declare-fun tp!1751343 () Bool)

(assert (=> b!6287391 (= e!3823281 tp!1751343)))

(assert (= (and b!6286720 (is-ElementMatch!16208 (regOne!32929 r!7292))) b!6287389))

(assert (= (and b!6286720 (is-Concat!25053 (regOne!32929 r!7292))) b!6287390))

(assert (= (and b!6286720 (is-Star!16208 (regOne!32929 r!7292))) b!6287391))

(assert (= (and b!6286720 (is-Union!16208 (regOne!32929 r!7292))) b!6287392))

(declare-fun e!3823282 () Bool)

(assert (=> b!6286720 (= tp!1751296 e!3823282)))

(declare-fun b!6287393 () Bool)

(assert (=> b!6287393 (= e!3823282 tp_is_empty!41669)))

(declare-fun b!6287396 () Bool)

(declare-fun tp!1751346 () Bool)

(declare-fun tp!1751347 () Bool)

(assert (=> b!6287396 (= e!3823282 (and tp!1751346 tp!1751347))))

(declare-fun b!6287394 () Bool)

(declare-fun tp!1751350 () Bool)

(declare-fun tp!1751349 () Bool)

(assert (=> b!6287394 (= e!3823282 (and tp!1751350 tp!1751349))))

(declare-fun b!6287395 () Bool)

(declare-fun tp!1751348 () Bool)

(assert (=> b!6287395 (= e!3823282 tp!1751348)))

(assert (= (and b!6286720 (is-ElementMatch!16208 (regTwo!32929 r!7292))) b!6287393))

(assert (= (and b!6286720 (is-Concat!25053 (regTwo!32929 r!7292))) b!6287394))

(assert (= (and b!6286720 (is-Star!16208 (regTwo!32929 r!7292))) b!6287395))

(assert (= (and b!6286720 (is-Union!16208 (regTwo!32929 r!7292))) b!6287396))

(declare-fun b!6287401 () Bool)

(declare-fun e!3823285 () Bool)

(declare-fun tp!1751355 () Bool)

(declare-fun tp!1751356 () Bool)

(assert (=> b!6287401 (= e!3823285 (and tp!1751355 tp!1751356))))

(assert (=> b!6286701 (= tp!1751294 e!3823285)))

(assert (= (and b!6286701 (is-Cons!64800 (exprs!6092 (h!71249 zl!343)))) b!6287401))

(declare-fun b!6287406 () Bool)

(declare-fun e!3823288 () Bool)

(declare-fun tp!1751359 () Bool)

(assert (=> b!6287406 (= e!3823288 (and tp_is_empty!41669 tp!1751359))))

(assert (=> b!6286710 (= tp!1751297 e!3823288)))

(assert (= (and b!6286710 (is-Cons!64799 (t!378485 s!2326))) b!6287406))

(declare-fun condSetEmpty!42791 () Bool)

(assert (=> setNonEmpty!42785 (= condSetEmpty!42791 (= setRest!42785 (as set.empty (Set Context!11184))))))

(declare-fun setRes!42791 () Bool)

(assert (=> setNonEmpty!42785 (= tp!1751298 setRes!42791)))

(declare-fun setIsEmpty!42791 () Bool)

(assert (=> setIsEmpty!42791 setRes!42791))

(declare-fun tp!1751365 () Bool)

(declare-fun setElem!42791 () Context!11184)

(declare-fun e!3823291 () Bool)

(declare-fun setNonEmpty!42791 () Bool)

(assert (=> setNonEmpty!42791 (= setRes!42791 (and tp!1751365 (inv!83768 setElem!42791) e!3823291))))

(declare-fun setRest!42791 () (Set Context!11184))

(assert (=> setNonEmpty!42791 (= setRest!42785 (set.union (set.insert setElem!42791 (as set.empty (Set Context!11184))) setRest!42791))))

(declare-fun b!6287411 () Bool)

(declare-fun tp!1751364 () Bool)

(assert (=> b!6287411 (= e!3823291 tp!1751364)))

(assert (= (and setNonEmpty!42785 condSetEmpty!42791) setIsEmpty!42791))

(assert (= (and setNonEmpty!42785 (not condSetEmpty!42791)) setNonEmpty!42791))

(assert (= setNonEmpty!42791 b!6287411))

(declare-fun m!7108222 () Bool)

(assert (=> setNonEmpty!42791 m!7108222))

(declare-fun e!3823292 () Bool)

(assert (=> b!6286718 (= tp!1751300 e!3823292)))

(declare-fun b!6287412 () Bool)

(assert (=> b!6287412 (= e!3823292 tp_is_empty!41669)))

(declare-fun b!6287415 () Bool)

(declare-fun tp!1751366 () Bool)

(declare-fun tp!1751367 () Bool)

(assert (=> b!6287415 (= e!3823292 (and tp!1751366 tp!1751367))))

(declare-fun b!6287413 () Bool)

(declare-fun tp!1751370 () Bool)

(declare-fun tp!1751369 () Bool)

(assert (=> b!6287413 (= e!3823292 (and tp!1751370 tp!1751369))))

(declare-fun b!6287414 () Bool)

(declare-fun tp!1751368 () Bool)

(assert (=> b!6287414 (= e!3823292 tp!1751368)))

(assert (= (and b!6286718 (is-ElementMatch!16208 (regOne!32928 r!7292))) b!6287412))

(assert (= (and b!6286718 (is-Concat!25053 (regOne!32928 r!7292))) b!6287413))

(assert (= (and b!6286718 (is-Star!16208 (regOne!32928 r!7292))) b!6287414))

(assert (= (and b!6286718 (is-Union!16208 (regOne!32928 r!7292))) b!6287415))

(declare-fun e!3823293 () Bool)

(assert (=> b!6286718 (= tp!1751292 e!3823293)))

(declare-fun b!6287416 () Bool)

(assert (=> b!6287416 (= e!3823293 tp_is_empty!41669)))

(declare-fun b!6287419 () Bool)

(declare-fun tp!1751371 () Bool)

(declare-fun tp!1751372 () Bool)

(assert (=> b!6287419 (= e!3823293 (and tp!1751371 tp!1751372))))

(declare-fun b!6287417 () Bool)

(declare-fun tp!1751375 () Bool)

(declare-fun tp!1751374 () Bool)

(assert (=> b!6287417 (= e!3823293 (and tp!1751375 tp!1751374))))

(declare-fun b!6287418 () Bool)

(declare-fun tp!1751373 () Bool)

(assert (=> b!6287418 (= e!3823293 tp!1751373)))

(assert (= (and b!6286718 (is-ElementMatch!16208 (regTwo!32928 r!7292))) b!6287416))

(assert (= (and b!6286718 (is-Concat!25053 (regTwo!32928 r!7292))) b!6287417))

(assert (= (and b!6286718 (is-Star!16208 (regTwo!32928 r!7292))) b!6287418))

(assert (= (and b!6286718 (is-Union!16208 (regTwo!32928 r!7292))) b!6287419))

(declare-fun e!3823294 () Bool)

(assert (=> b!6286708 (= tp!1751299 e!3823294)))

(declare-fun b!6287420 () Bool)

(assert (=> b!6287420 (= e!3823294 tp_is_empty!41669)))

(declare-fun b!6287423 () Bool)

(declare-fun tp!1751376 () Bool)

(declare-fun tp!1751377 () Bool)

(assert (=> b!6287423 (= e!3823294 (and tp!1751376 tp!1751377))))

(declare-fun b!6287421 () Bool)

(declare-fun tp!1751380 () Bool)

(declare-fun tp!1751379 () Bool)

(assert (=> b!6287421 (= e!3823294 (and tp!1751380 tp!1751379))))

(declare-fun b!6287422 () Bool)

(declare-fun tp!1751378 () Bool)

(assert (=> b!6287422 (= e!3823294 tp!1751378)))

(assert (= (and b!6286708 (is-ElementMatch!16208 (reg!16537 r!7292))) b!6287420))

(assert (= (and b!6286708 (is-Concat!25053 (reg!16537 r!7292))) b!6287421))

(assert (= (and b!6286708 (is-Star!16208 (reg!16537 r!7292))) b!6287422))

(assert (= (and b!6286708 (is-Union!16208 (reg!16537 r!7292))) b!6287423))

(declare-fun b!6287424 () Bool)

(declare-fun e!3823295 () Bool)

(declare-fun tp!1751381 () Bool)

(declare-fun tp!1751382 () Bool)

(assert (=> b!6287424 (= e!3823295 (and tp!1751381 tp!1751382))))

(assert (=> b!6286723 (= tp!1751295 e!3823295)))

(assert (= (and b!6286723 (is-Cons!64800 (exprs!6092 setElem!42785))) b!6287424))

(declare-fun b!6287432 () Bool)

(declare-fun e!3823301 () Bool)

(declare-fun tp!1751387 () Bool)

(assert (=> b!6287432 (= e!3823301 tp!1751387)))

(declare-fun b!6287431 () Bool)

(declare-fun e!3823300 () Bool)

(declare-fun tp!1751388 () Bool)

(assert (=> b!6287431 (= e!3823300 (and (inv!83768 (h!71249 (t!378487 zl!343))) e!3823301 tp!1751388))))

(assert (=> b!6286703 (= tp!1751293 e!3823300)))

(assert (= b!6287431 b!6287432))

(assert (= (and b!6286703 (is-Cons!64801 (t!378487 zl!343))) b!6287431))

(declare-fun m!7108224 () Bool)

(assert (=> b!6287431 m!7108224))

(declare-fun b_lambda!239299 () Bool)

(assert (= b_lambda!239297 (or b!6286730 b_lambda!239299)))

(declare-fun bs!1571529 () Bool)

(declare-fun d!1973220 () Bool)

(assert (= bs!1571529 (and d!1973220 b!6286730)))

(assert (=> bs!1571529 (= (dynLambda!25642 lambda!345108 (h!71249 zl!343)) (derivationStepZipperUp!1382 (h!71249 zl!343) (h!71247 s!2326)))))

(assert (=> bs!1571529 m!7107526))

(assert (=> d!1973190 d!1973220))

(declare-fun b_lambda!239301 () Bool)

(assert (= b_lambda!239295 (or b!6286730 b_lambda!239301)))

(declare-fun bs!1571530 () Bool)

(declare-fun d!1973222 () Bool)

(assert (= bs!1571530 (and d!1973222 b!6286730)))

(assert (=> bs!1571530 (= (dynLambda!25642 lambda!345108 lt!2355990) (derivationStepZipperUp!1382 lt!2355990 (h!71247 s!2326)))))

(assert (=> bs!1571530 m!7107412))

(assert (=> d!1973148 d!1973222))

(declare-fun b_lambda!239303 () Bool)

(assert (= b_lambda!239293 (or b!6286730 b_lambda!239303)))

(declare-fun bs!1571531 () Bool)

(declare-fun d!1973224 () Bool)

(assert (= bs!1571531 (and d!1973224 b!6286730)))

(assert (=> bs!1571531 (= (dynLambda!25642 lambda!345108 lt!2355966) (derivationStepZipperUp!1382 lt!2355966 (h!71247 s!2326)))))

(assert (=> bs!1571531 m!7107406))

(assert (=> d!1973134 d!1973224))

(push 1)

(assert (not b!6287174))

(assert (not d!1973102))

(assert (not b!6286937))

(assert (not b!6287141))

(assert (not b!6286950))

(assert (not bm!532275))

(assert (not d!1973086))

(assert (not d!1973124))

(assert (not b!6287392))

(assert (not d!1973218))

(assert (not d!1973134))

(assert (not b!6286926))

(assert (not b!6287125))

(assert (not d!1973142))

(assert (not d!1973126))

(assert (not d!1973118))

(assert (not b!6287117))

(assert (not b!6287054))

(assert (not b!6287104))

(assert (not d!1973146))

(assert (not bm!532272))

(assert (not b!6287188))

(assert (not d!1973122))

(assert (not b!6287113))

(assert (not b!6287377))

(assert (not b!6287313))

(assert (not d!1973076))

(assert (not b!6287401))

(assert (not b!6286928))

(assert (not b!6286927))

(assert (not bm!532271))

(assert (not b!6287322))

(assert (not b!6286940))

(assert (not b!6287395))

(assert (not b!6287126))

(assert (not b!6286990))

(assert (not b!6287275))

(assert (not d!1973202))

(assert (not b!6287189))

(assert (not d!1973094))

(assert (not b!6287246))

(assert (not b!6287208))

(assert (not b!6287340))

(assert (not bm!532315))

(assert (not bm!532263))

(assert (not b!6287120))

(assert tp_is_empty!41669)

(assert (not b!6287211))

(assert (not d!1973072))

(assert (not bm!532314))

(assert (not b!6287123))

(assert (not b!6287413))

(assert (not b!6287198))

(assert (not b!6287220))

(assert (not bm!532309))

(assert (not d!1973084))

(assert (not b!6286987))

(assert (not d!1973106))

(assert (not b!6287100))

(assert (not b!6287242))

(assert (not d!1973190))

(assert (not b!6287318))

(assert (not b!6287052))

(assert (not b!6287106))

(assert (not b!6287098))

(assert (not b!6286900))

(assert (not b!6287116))

(assert (not b!6287329))

(assert (not d!1973080))

(assert (not b!6286941))

(assert (not b!6287422))

(assert (not b!6287366))

(assert (not bm!532268))

(assert (not b!6286892))

(assert (not d!1973200))

(assert (not d!1973216))

(assert (not b!6287134))

(assert (not b!6287227))

(assert (not d!1973068))

(assert (not bm!532311))

(assert (not b!6287328))

(assert (not b!6287147))

(assert (not b!6287137))

(assert (not b!6286936))

(assert (not b!6286957))

(assert (not b!6287367))

(assert (not b!6286956))

(assert (not bs!1571530))

(assert (not b!6287371))

(assert (not d!1973212))

(assert (not b!6287421))

(assert (not b!6286925))

(assert (not d!1973132))

(assert (not d!1973166))

(assert (not d!1973060))

(assert (not b!6287186))

(assert (not b!6286895))

(assert (not d!1973082))

(assert (not b!6287092))

(assert (not b!6287364))

(assert (not b!6287185))

(assert (not d!1973148))

(assert (not b!6286997))

(assert (not bm!532278))

(assert (not b!6287418))

(assert (not b!6287423))

(assert (not b!6286994))

(assert (not d!1973182))

(assert (not b!6287046))

(assert (not b!6286931))

(assert (not d!1973104))

(assert (not b!6287411))

(assert (not b!6287294))

(assert (not d!1973078))

(assert (not d!1973108))

(assert (not bm!532276))

(assert (not d!1973194))

(assert (not b!6286953))

(assert (not b!6287396))

(assert (not b!6287150))

(assert (not b!6287129))

(assert (not b!6287111))

(assert (not b!6287213))

(assert (not d!1973074))

(assert (not b!6287218))

(assert (not b!6287342))

(assert (not b!6287370))

(assert (not d!1973172))

(assert (not d!1973198))

(assert (not b!6287338))

(assert (not bs!1571529))

(assert (not bm!532318))

(assert (not b!6287122))

(assert (not b!6287431))

(assert (not b!6287119))

(assert (not d!1973208))

(assert (not b!6287315))

(assert (not b!6287184))

(assert (not bm!532279))

(assert (not b!6287326))

(assert (not bm!532254))

(assert (not b!6287297))

(assert (not bm!532302))

(assert (not d!1973204))

(assert (not d!1973100))

(assert (not b!6287182))

(assert (not b!6287321))

(assert (not b!6287053))

(assert (not b!6287140))

(assert (not b!6286942))

(assert (not bm!532280))

(assert (not d!1973140))

(assert (not bm!532269))

(assert (not b!6287112))

(assert (not setNonEmpty!42791))

(assert (not d!1973062))

(assert (not b!6287110))

(assert (not d!1973130))

(assert (not bm!532270))

(assert (not bm!532281))

(assert (not b!6287406))

(assert (not b!6287417))

(assert (not b!6287365))

(assert (not b!6287138))

(assert (not d!1973128))

(assert (not b!6287341))

(assert (not b!6287239))

(assert (not d!1973168))

(assert (not bm!532298))

(assert (not b!6287432))

(assert (not b!6286954))

(assert (not d!1973096))

(assert (not b!6286902))

(assert (not b!6287310))

(assert (not b!6286938))

(assert (not b!6287391))

(assert (not d!1973210))

(assert (not bm!532308))

(assert (not b!6287320))

(assert (not b!6287372))

(assert (not bs!1571531))

(assert (not b!6286951))

(assert (not bm!532307))

(assert (not d!1973144))

(assert (not d!1973116))

(assert (not b!6287419))

(assert (not b!6286993))

(assert (not b!6287048))

(assert (not b!6287114))

(assert (not b!6287243))

(assert (not d!1973112))

(assert (not b!6287128))

(assert (not b!6287394))

(assert (not b!6287245))

(assert (not b!6287206))

(assert (not d!1973196))

(assert (not d!1973154))

(assert (not d!1973180))

(assert (not b!6287414))

(assert (not b!6287199))

(assert (not b!6287105))

(assert (not b!6287108))

(assert (not b!6286952))

(assert (not d!1973070))

(assert (not b!6287107))

(assert (not b!6287019))

(assert (not d!1973174))

(assert (not b!6287286))

(assert (not b!6286893))

(assert (not b!6287327))

(assert (not b_lambda!239301))

(assert (not b!6287047))

(assert (not b!6287415))

(assert (not bm!532262))

(assert (not d!1973114))

(assert (not bm!532304))

(assert (not d!1973156))

(assert (not b!6287339))

(assert (not b!6287179))

(assert (not bm!532282))

(assert (not b!6287124))

(assert (not b_lambda!239303))

(assert (not b!6286894))

(assert (not b!6287424))

(assert (not b!6286996))

(assert (not b!6287187))

(assert (not b!6287236))

(assert (not bm!532295))

(assert (not b_lambda!239299))

(assert (not bm!532296))

(assert (not b!6287302))

(assert (not b!6286939))

(assert (not b!6287230))

(assert (not b!6287390))

(assert (not b!6286929))

(assert (not b!6287177))

(assert (not d!1973092))

(assert (not b!6287224))

(assert (not b!6287089))

(assert (not b!6286932))

(assert (not b!6287099))

(assert (not bm!532301))

(assert (not b!6287131))

(assert (not d!1973110))

(assert (not d!1973088))

(assert (not d!1973058))

(assert (not bm!532317))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

