; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!625070 () Bool)

(assert start!625070)

(declare-fun b!6289816 () Bool)

(assert (=> b!6289816 true))

(assert (=> b!6289816 true))

(declare-fun lambda!345480 () Int)

(declare-fun lambda!345479 () Int)

(assert (=> b!6289816 (not (= lambda!345480 lambda!345479))))

(assert (=> b!6289816 true))

(assert (=> b!6289816 true))

(declare-fun b!6289808 () Bool)

(assert (=> b!6289808 true))

(declare-fun bs!1572013 () Bool)

(declare-fun b!6289815 () Bool)

(assert (= bs!1572013 (and b!6289815 b!6289816)))

(declare-datatypes ((C!32696 0))(
  ( (C!32697 (val!26050 Int)) )
))
(declare-datatypes ((Regex!16213 0))(
  ( (ElementMatch!16213 (c!1141284 C!32696)) (Concat!25058 (regOne!32938 Regex!16213) (regTwo!32938 Regex!16213)) (EmptyExpr!16213) (Star!16213 (reg!16542 Regex!16213)) (EmptyLang!16213) (Union!16213 (regOne!32939 Regex!16213) (regTwo!32939 Regex!16213)) )
))
(declare-fun r!7292 () Regex!16213)

(declare-fun lambda!345482 () Int)

(declare-fun lt!2357070 () Regex!16213)

(assert (=> bs!1572013 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345482 lambda!345479))))

(assert (=> bs!1572013 (not (= lambda!345482 lambda!345480))))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(declare-fun lambda!345483 () Int)

(assert (=> bs!1572013 (not (= lambda!345483 lambda!345479))))

(assert (=> bs!1572013 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345483 lambda!345480))))

(assert (=> b!6289815 (not (= lambda!345483 lambda!345482))))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(declare-fun lt!2357053 () Regex!16213)

(declare-fun lambda!345484 () Int)

(assert (=> bs!1572013 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345484 lambda!345479))))

(assert (=> bs!1572013 (not (= lambda!345484 lambda!345480))))

(assert (=> b!6289815 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345484 lambda!345482))))

(assert (=> b!6289815 (not (= lambda!345484 lambda!345483))))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(declare-fun lambda!345485 () Int)

(assert (=> b!6289815 (not (= lambda!345485 lambda!345482))))

(assert (=> bs!1572013 (not (= lambda!345485 lambda!345479))))

(assert (=> b!6289815 (not (= lambda!345485 lambda!345484))))

(assert (=> bs!1572013 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345485 lambda!345480))))

(assert (=> b!6289815 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345485 lambda!345483))))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(assert (=> b!6289815 true))

(declare-fun b!6289789 () Bool)

(declare-fun res!2594008 () Bool)

(declare-fun e!3824620 () Bool)

(assert (=> b!6289789 (=> res!2594008 e!3824620)))

(declare-datatypes ((List!64938 0))(
  ( (Nil!64814) (Cons!64814 (h!71262 C!32696) (t!378500 List!64938)) )
))
(declare-fun s!2326 () List!64938)

(declare-fun lt!2357081 () Bool)

(declare-fun matchR!8396 (Regex!16213 List!64938) Bool)

(assert (=> b!6289789 (= res!2594008 (not (= lt!2357081 (matchR!8396 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) s!2326))))))

(declare-fun b!6289790 () Bool)

(declare-fun res!2594011 () Bool)

(declare-fun e!3824616 () Bool)

(assert (=> b!6289790 (=> res!2594011 e!3824616)))

(declare-datatypes ((List!64939 0))(
  ( (Nil!64815) (Cons!64815 (h!71263 Regex!16213) (t!378501 List!64939)) )
))
(declare-datatypes ((Context!11194 0))(
  ( (Context!11195 (exprs!6097 List!64939)) )
))
(declare-datatypes ((List!64940 0))(
  ( (Nil!64816) (Cons!64816 (h!71264 Context!11194) (t!378502 List!64940)) )
))
(declare-fun zl!343 () List!64940)

(declare-fun isEmpty!36869 (List!64940) Bool)

(assert (=> b!6289790 (= res!2594011 (not (isEmpty!36869 (t!378502 zl!343))))))

(declare-fun b!6289791 () Bool)

(declare-fun e!3824624 () Bool)

(declare-fun tp!1751676 () Bool)

(assert (=> b!6289791 (= e!3824624 tp!1751676)))

(declare-fun e!3824629 () Bool)

(declare-fun tp!1751680 () Bool)

(declare-fun b!6289792 () Bool)

(declare-fun e!3824630 () Bool)

(declare-fun inv!83779 (Context!11194) Bool)

(assert (=> b!6289792 (= e!3824630 (and (inv!83779 (h!71264 zl!343)) e!3824629 tp!1751680))))

(declare-fun b!6289793 () Bool)

(declare-fun e!3824633 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2357093 () (InoxSet Context!11194))

(declare-fun matchZipper!2225 ((InoxSet Context!11194) List!64938) Bool)

(assert (=> b!6289793 (= e!3824633 (matchZipper!2225 lt!2357093 (t!378500 s!2326)))))

(declare-fun e!3824632 () Bool)

(declare-fun setElem!42812 () Context!11194)

(declare-fun tp!1751679 () Bool)

(declare-fun setRes!42812 () Bool)

(declare-fun setNonEmpty!42812 () Bool)

(assert (=> setNonEmpty!42812 (= setRes!42812 (and tp!1751679 (inv!83779 setElem!42812) e!3824632))))

(declare-fun z!1189 () (InoxSet Context!11194))

(declare-fun setRest!42812 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42812 (= z!1189 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42812 true) setRest!42812))))

(declare-fun b!6289794 () Bool)

(declare-fun res!2594010 () Bool)

(declare-fun e!3824622 () Bool)

(assert (=> b!6289794 (=> res!2594010 e!3824622)))

(declare-fun lt!2357078 () List!64940)

(declare-fun zipperDepth!338 (List!64940) Int)

(assert (=> b!6289794 (= res!2594010 (> (zipperDepth!338 lt!2357078) (zipperDepth!338 zl!343)))))

(declare-fun b!6289795 () Bool)

(declare-fun e!3824621 () Bool)

(declare-fun tp_is_empty!41679 () Bool)

(declare-fun tp!1751677 () Bool)

(assert (=> b!6289795 (= e!3824621 (and tp_is_empty!41679 tp!1751677))))

(declare-fun b!6289796 () Bool)

(declare-fun e!3824634 () Bool)

(declare-fun lt!2357084 () (InoxSet Context!11194))

(assert (=> b!6289796 (= e!3824634 (matchZipper!2225 lt!2357084 (t!378500 s!2326)))))

(declare-fun b!6289797 () Bool)

(declare-fun e!3824613 () Bool)

(declare-fun e!3824626 () Bool)

(assert (=> b!6289797 (= e!3824613 e!3824626)))

(declare-fun res!2593997 () Bool)

(assert (=> b!6289797 (=> res!2593997 e!3824626)))

(declare-fun lt!2357063 () Regex!16213)

(assert (=> b!6289797 (= res!2593997 (not (= (exprs!6097 (h!71264 zl!343)) (Cons!64815 lt!2357063 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> b!6289797 (= lt!2357063 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6289798 () Bool)

(declare-fun e!3824631 () Bool)

(declare-fun lt!2357069 () (InoxSet Context!11194))

(declare-fun derivationStepZipper!2179 ((InoxSet Context!11194) C!32696) (InoxSet Context!11194))

(assert (=> b!6289798 (= e!3824631 (not (matchZipper!2225 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (t!378500 s!2326))))))

(declare-fun b!6289799 () Bool)

(declare-fun tp!1751675 () Bool)

(declare-fun tp!1751682 () Bool)

(assert (=> b!6289799 (= e!3824624 (and tp!1751675 tp!1751682))))

(declare-fun b!6289800 () Bool)

(declare-fun tp!1751678 () Bool)

(assert (=> b!6289800 (= e!3824629 tp!1751678)))

(declare-fun setIsEmpty!42812 () Bool)

(assert (=> setIsEmpty!42812 setRes!42812))

(declare-fun b!6289801 () Bool)

(declare-fun res!2593990 () Bool)

(assert (=> b!6289801 (=> res!2593990 e!3824620)))

(assert (=> b!6289801 (= res!2593990 (not (= lt!2357081 (matchR!8396 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) s!2326))))))

(declare-fun b!6289802 () Bool)

(declare-fun res!2594001 () Bool)

(declare-fun e!3824617 () Bool)

(assert (=> b!6289802 (=> (not res!2594001) (not e!3824617))))

(declare-fun toList!9997 ((InoxSet Context!11194)) List!64940)

(assert (=> b!6289802 (= res!2594001 (= (toList!9997 z!1189) zl!343))))

(declare-fun b!6289788 () Bool)

(declare-fun res!2594004 () Bool)

(assert (=> b!6289788 (=> res!2594004 e!3824616)))

(declare-fun generalisedConcat!1810 (List!64939) Regex!16213)

(assert (=> b!6289788 (= res!2594004 (not (= r!7292 (generalisedConcat!1810 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun res!2594009 () Bool)

(assert (=> start!625070 (=> (not res!2594009) (not e!3824617))))

(declare-fun validRegex!7949 (Regex!16213) Bool)

(assert (=> start!625070 (= res!2594009 (validRegex!7949 r!7292))))

(assert (=> start!625070 e!3824617))

(assert (=> start!625070 e!3824624))

(declare-fun condSetEmpty!42812 () Bool)

(assert (=> start!625070 (= condSetEmpty!42812 (= z!1189 ((as const (Array Context!11194 Bool)) false)))))

(assert (=> start!625070 setRes!42812))

(assert (=> start!625070 e!3824630))

(assert (=> start!625070 e!3824621))

(declare-fun b!6289803 () Bool)

(declare-fun res!2593989 () Bool)

(assert (=> b!6289803 (=> res!2593989 e!3824616)))

(declare-fun generalisedUnion!2057 (List!64939) Regex!16213)

(declare-fun unfocusZipperList!1634 (List!64940) List!64939)

(assert (=> b!6289803 (= res!2593989 (not (= r!7292 (generalisedUnion!2057 (unfocusZipperList!1634 zl!343)))))))

(declare-fun b!6289804 () Bool)

(declare-fun res!2594013 () Bool)

(assert (=> b!6289804 (=> res!2594013 e!3824616)))

(get-info :version)

(assert (=> b!6289804 (= res!2594013 (not ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6289805 () Bool)

(declare-fun tp!1751674 () Bool)

(assert (=> b!6289805 (= e!3824632 tp!1751674)))

(declare-fun b!6289806 () Bool)

(declare-fun e!3824625 () Bool)

(declare-fun e!3824615 () Bool)

(assert (=> b!6289806 (= e!3824625 e!3824615)))

(declare-fun res!2593991 () Bool)

(assert (=> b!6289806 (=> res!2593991 e!3824615)))

(declare-fun e!3824627 () Bool)

(assert (=> b!6289806 (= res!2593991 e!3824627)))

(declare-fun res!2594003 () Bool)

(assert (=> b!6289806 (=> (not res!2594003) (not e!3824627))))

(declare-fun lt!2357074 () Bool)

(declare-fun lt!2357072 () Bool)

(assert (=> b!6289806 (= res!2594003 (not (= lt!2357074 lt!2357072)))))

(declare-fun lt!2357085 () (InoxSet Context!11194))

(assert (=> b!6289806 (= lt!2357074 (matchZipper!2225 lt!2357085 (t!378500 s!2326)))))

(declare-fun lt!2357055 () (InoxSet Context!11194))

(assert (=> b!6289806 (= (matchZipper!2225 lt!2357055 (t!378500 s!2326)) e!3824634)))

(declare-fun res!2594002 () Bool)

(assert (=> b!6289806 (=> res!2594002 e!3824634)))

(assert (=> b!6289806 (= res!2594002 lt!2357072)))

(declare-fun lt!2357087 () (InoxSet Context!11194))

(assert (=> b!6289806 (= lt!2357072 (matchZipper!2225 lt!2357087 (t!378500 s!2326)))))

(declare-datatypes ((Unit!158183 0))(
  ( (Unit!158184) )
))
(declare-fun lt!2357088 () Unit!158183)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1044 ((InoxSet Context!11194) (InoxSet Context!11194) List!64938) Unit!158183)

(assert (=> b!6289806 (= lt!2357088 (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357087 lt!2357084 (t!378500 s!2326)))))

(declare-fun b!6289807 () Bool)

(declare-fun e!3824618 () Bool)

(declare-fun lt!2357092 () Bool)

(assert (=> b!6289807 (= e!3824618 (= lt!2357081 lt!2357092))))

(declare-fun lt!2357062 () Bool)

(assert (=> b!6289807 (= lt!2357062 (matchR!8396 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) s!2326))))

(declare-fun lt!2357090 () Unit!158183)

(declare-fun lemmaConcatAssociative!112 (Regex!16213 Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> b!6289807 (= lt!2357090 (lemmaConcatAssociative!112 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(declare-fun e!3824612 () Bool)

(declare-fun e!3824614 () Bool)

(assert (=> b!6289808 (= e!3824612 e!3824614)))

(declare-fun res!2593992 () Bool)

(assert (=> b!6289808 (=> res!2593992 e!3824614)))

(assert (=> b!6289808 (= res!2593992 (or (and ((_ is ElementMatch!16213) (regOne!32938 r!7292)) (= (c!1141284 (regOne!32938 r!7292)) (h!71262 s!2326))) ((_ is Union!16213) (regOne!32938 r!7292)) (not ((_ is Concat!25058) (regOne!32938 r!7292)))))))

(declare-fun lt!2357073 () Unit!158183)

(declare-fun e!3824619 () Unit!158183)

(assert (=> b!6289808 (= lt!2357073 e!3824619)))

(declare-fun c!1141283 () Bool)

(declare-fun nullable!6206 (Regex!16213) Bool)

(assert (=> b!6289808 (= c!1141283 (nullable!6206 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun lambda!345481 () Int)

(declare-fun flatMap!1718 ((InoxSet Context!11194) Int) (InoxSet Context!11194))

(declare-fun derivationStepZipperUp!1387 (Context!11194 C!32696) (InoxSet Context!11194))

(assert (=> b!6289808 (= (flatMap!1718 z!1189 lambda!345481) (derivationStepZipperUp!1387 (h!71264 zl!343) (h!71262 s!2326)))))

(declare-fun lt!2357080 () Unit!158183)

(declare-fun lemmaFlatMapOnSingletonSet!1244 ((InoxSet Context!11194) Context!11194 Int) Unit!158183)

(assert (=> b!6289808 (= lt!2357080 (lemmaFlatMapOnSingletonSet!1244 z!1189 (h!71264 zl!343) lambda!345481))))

(declare-fun lt!2357077 () Context!11194)

(assert (=> b!6289808 (= lt!2357093 (derivationStepZipperUp!1387 lt!2357077 (h!71262 s!2326)))))

(declare-fun derivationStepZipperDown!1461 (Regex!16213 Context!11194 C!32696) (InoxSet Context!11194))

(assert (=> b!6289808 (= lt!2357085 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (h!71264 zl!343))) lt!2357077 (h!71262 s!2326)))))

(assert (=> b!6289808 (= lt!2357077 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun lt!2357097 () (InoxSet Context!11194))

(assert (=> b!6289808 (= lt!2357097 (derivationStepZipperUp!1387 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))) (h!71262 s!2326)))))

(declare-fun b!6289809 () Bool)

(assert (=> b!6289809 (= e!3824614 e!3824625)))

(declare-fun res!2593995 () Bool)

(assert (=> b!6289809 (=> res!2593995 e!3824625)))

(assert (=> b!6289809 (= res!2593995 (not (= lt!2357085 lt!2357055)))))

(assert (=> b!6289809 (= lt!2357055 ((_ map or) lt!2357087 lt!2357084))))

(assert (=> b!6289809 (= lt!2357084 (derivationStepZipperDown!1461 (regTwo!32938 (regOne!32938 r!7292)) lt!2357077 (h!71262 s!2326)))))

(declare-fun lt!2357094 () Context!11194)

(assert (=> b!6289809 (= lt!2357087 (derivationStepZipperDown!1461 (regOne!32938 (regOne!32938 r!7292)) lt!2357094 (h!71262 s!2326)))))

(declare-fun lt!2357082 () List!64939)

(assert (=> b!6289809 (= lt!2357094 (Context!11195 lt!2357082))))

(assert (=> b!6289809 (= lt!2357082 (Cons!64815 (regTwo!32938 (regOne!32938 r!7292)) (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6289810 () Bool)

(declare-fun e!3824623 () Bool)

(assert (=> b!6289810 (= e!3824615 e!3824623)))

(declare-fun res!2594016 () Bool)

(assert (=> b!6289810 (=> res!2594016 e!3824623)))

(declare-fun lt!2357052 () (InoxSet Context!11194))

(declare-fun lt!2357075 () (InoxSet Context!11194))

(assert (=> b!6289810 (= res!2594016 (not (= lt!2357052 lt!2357075)))))

(declare-fun lt!2357086 () (InoxSet Context!11194))

(assert (=> b!6289810 (= lt!2357075 ((_ map or) lt!2357087 lt!2357086))))

(assert (=> b!6289810 (= lt!2357086 (derivationStepZipperUp!1387 lt!2357094 (h!71262 s!2326)))))

(declare-fun lt!2357071 () (InoxSet Context!11194))

(declare-fun lt!2357083 () Context!11194)

(assert (=> b!6289810 (= (flatMap!1718 lt!2357071 lambda!345481) (derivationStepZipperUp!1387 lt!2357083 (h!71262 s!2326)))))

(declare-fun lt!2357051 () Unit!158183)

(assert (=> b!6289810 (= lt!2357051 (lemmaFlatMapOnSingletonSet!1244 lt!2357071 lt!2357083 lambda!345481))))

(declare-fun lt!2357098 () (InoxSet Context!11194))

(assert (=> b!6289810 (= lt!2357098 (derivationStepZipperUp!1387 lt!2357083 (h!71262 s!2326)))))

(assert (=> b!6289810 (= lt!2357052 (derivationStepZipper!2179 lt!2357071 (h!71262 s!2326)))))

(assert (=> b!6289810 (= lt!2357069 (store ((as const (Array Context!11194 Bool)) false) lt!2357094 true))))

(assert (=> b!6289810 (= lt!2357071 (store ((as const (Array Context!11194 Bool)) false) lt!2357083 true))))

(declare-fun lt!2357060 () List!64939)

(assert (=> b!6289810 (= lt!2357083 (Context!11195 lt!2357060))))

(assert (=> b!6289810 (= lt!2357060 (Cons!64815 (regOne!32938 (regOne!32938 r!7292)) lt!2357082))))

(declare-fun b!6289811 () Bool)

(assert (=> b!6289811 (= e!3824627 (not (matchZipper!2225 lt!2357084 (t!378500 s!2326))))))

(declare-fun b!6289812 () Bool)

(declare-fun res!2593999 () Bool)

(assert (=> b!6289812 (=> (not res!2593999) (not e!3824617))))

(declare-fun unfocusZipper!1955 (List!64940) Regex!16213)

(assert (=> b!6289812 (= res!2593999 (= r!7292 (unfocusZipper!1955 zl!343)))))

(declare-fun b!6289813 () Bool)

(declare-fun Unit!158185 () Unit!158183)

(assert (=> b!6289813 (= e!3824619 Unit!158185)))

(declare-fun b!6289814 () Bool)

(declare-fun tp!1751673 () Bool)

(declare-fun tp!1751681 () Bool)

(assert (=> b!6289814 (= e!3824624 (and tp!1751673 tp!1751681))))

(assert (=> b!6289815 (= e!3824622 e!3824620)))

(declare-fun res!2593998 () Bool)

(assert (=> b!6289815 (=> res!2593998 e!3824620)))

(declare-fun lt!2357049 () Bool)

(declare-fun lt!2357057 () Bool)

(declare-fun lt!2357066 () Bool)

(declare-fun lt!2357059 () Bool)

(assert (=> b!6289815 (= res!2593998 (or (not (= lt!2357092 (or lt!2357049 lt!2357059))) (not (= lt!2357092 (or lt!2357066 lt!2357057)))))))

(assert (=> b!6289815 (= lt!2357092 (matchZipper!2225 z!1189 s!2326))))

(declare-fun Exists!3283 (Int) Bool)

(assert (=> b!6289815 (= (Exists!3283 lambda!345484) (Exists!3283 lambda!345485))))

(declare-fun lt!2357054 () Unit!158183)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> b!6289815 (= lt!2357054 (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(declare-datatypes ((tuple2!66384 0))(
  ( (tuple2!66385 (_1!36495 List!64938) (_2!36495 List!64938)) )
))
(declare-datatypes ((Option!16104 0))(
  ( (None!16103) (Some!16103 (v!52258 tuple2!66384)) )
))
(declare-fun isDefined!12807 (Option!16104) Bool)

(declare-fun findConcatSeparation!2518 (Regex!16213 Regex!16213 List!64938 List!64938 List!64938) Option!16104)

(assert (=> b!6289815 (= (isDefined!12807 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345484))))

(declare-fun lt!2357058 () Unit!158183)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2282 (Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> b!6289815 (= lt!2357058 (lemmaFindConcatSeparationEquivalentToExists!2282 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(assert (=> b!6289815 (= lt!2357053 (generalisedConcat!1810 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun matchRSpec!3314 (Regex!16213 List!64938) Bool)

(assert (=> b!6289815 (= lt!2357057 (matchRSpec!3314 lt!2357070 s!2326))))

(declare-fun lt!2357076 () Unit!158183)

(declare-fun mainMatchTheorem!3314 (Regex!16213 List!64938) Unit!158183)

(assert (=> b!6289815 (= lt!2357076 (mainMatchTheorem!3314 lt!2357070 s!2326))))

(assert (=> b!6289815 (= (Exists!3283 lambda!345482) (Exists!3283 lambda!345483))))

(declare-fun lt!2357068 () Unit!158183)

(assert (=> b!6289815 (= lt!2357068 (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326))))

(assert (=> b!6289815 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345482))))

(declare-fun lt!2357095 () Unit!158183)

(assert (=> b!6289815 (= lt!2357095 (lemmaFindConcatSeparationEquivalentToExists!2282 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326))))

(declare-fun lt!2357061 () Regex!16213)

(assert (=> b!6289815 (= lt!2357066 (matchRSpec!3314 lt!2357061 s!2326))))

(declare-fun lt!2357048 () Unit!158183)

(assert (=> b!6289815 (= lt!2357048 (mainMatchTheorem!3314 lt!2357061 s!2326))))

(assert (=> b!6289815 (= lt!2357057 lt!2357059)))

(assert (=> b!6289815 (= lt!2357059 (matchZipper!2225 lt!2357069 s!2326))))

(assert (=> b!6289815 (= lt!2357057 (matchR!8396 lt!2357070 s!2326))))

(declare-fun lt!2357089 () Unit!158183)

(declare-fun theoremZipperRegexEquiv!783 ((InoxSet Context!11194) List!64940 Regex!16213 List!64938) Unit!158183)

(assert (=> b!6289815 (= lt!2357089 (theoremZipperRegexEquiv!783 lt!2357069 (Cons!64816 lt!2357094 Nil!64816) lt!2357070 s!2326))))

(assert (=> b!6289815 (= lt!2357070 (generalisedConcat!1810 lt!2357082))))

(assert (=> b!6289815 (= lt!2357066 lt!2357049)))

(assert (=> b!6289815 (= lt!2357049 (matchZipper!2225 lt!2357071 s!2326))))

(assert (=> b!6289815 (= lt!2357066 (matchR!8396 lt!2357061 s!2326))))

(declare-fun lt!2357067 () Unit!158183)

(assert (=> b!6289815 (= lt!2357067 (theoremZipperRegexEquiv!783 lt!2357071 lt!2357078 lt!2357061 s!2326))))

(assert (=> b!6289815 (= lt!2357061 (generalisedConcat!1810 lt!2357060))))

(assert (=> b!6289816 (= e!3824616 e!3824612)))

(declare-fun res!2594012 () Bool)

(assert (=> b!6289816 (=> res!2594012 e!3824612)))

(declare-fun lt!2357050 () Bool)

(assert (=> b!6289816 (= res!2594012 (or (not (= lt!2357081 lt!2357050)) ((_ is Nil!64814) s!2326)))))

(assert (=> b!6289816 (= (Exists!3283 lambda!345479) (Exists!3283 lambda!345480))))

(declare-fun lt!2357096 () Unit!158183)

(assert (=> b!6289816 (= lt!2357096 (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326))))

(assert (=> b!6289816 (= lt!2357050 (Exists!3283 lambda!345479))))

(assert (=> b!6289816 (= lt!2357050 (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326)))))

(declare-fun lt!2357079 () Unit!158183)

(assert (=> b!6289816 (= lt!2357079 (lemmaFindConcatSeparationEquivalentToExists!2282 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326))))

(declare-fun b!6289817 () Bool)

(declare-fun res!2593994 () Bool)

(assert (=> b!6289817 (=> res!2593994 e!3824616)))

(assert (=> b!6289817 (= res!2593994 (or ((_ is EmptyExpr!16213) r!7292) ((_ is EmptyLang!16213) r!7292) ((_ is ElementMatch!16213) r!7292) ((_ is Union!16213) r!7292) (not ((_ is Concat!25058) r!7292))))))

(declare-fun b!6289818 () Bool)

(declare-fun e!3824628 () Bool)

(assert (=> b!6289818 (= e!3824628 (matchZipper!2225 lt!2357086 (t!378500 s!2326)))))

(declare-fun b!6289819 () Bool)

(assert (=> b!6289819 (= e!3824620 e!3824618)))

(declare-fun res!2594007 () Bool)

(assert (=> b!6289819 (=> res!2594007 e!3824618)))

(assert (=> b!6289819 (= res!2594007 (not (= lt!2357081 lt!2357062)))))

(assert (=> b!6289819 (= lt!2357062 (matchR!8396 (Concat!25058 lt!2357063 lt!2357053) s!2326))))

(declare-fun b!6289820 () Bool)

(declare-fun res!2594018 () Bool)

(assert (=> b!6289820 (=> res!2594018 e!3824612)))

(declare-fun isEmpty!36870 (List!64939) Bool)

(assert (=> b!6289820 (= res!2594018 (isEmpty!36870 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6289821 () Bool)

(declare-fun res!2594006 () Bool)

(assert (=> b!6289821 (=> res!2594006 e!3824626)))

(declare-fun contextDepthTotal!336 (Context!11194) Int)

(assert (=> b!6289821 (= res!2594006 (>= (contextDepthTotal!336 lt!2357083) (contextDepthTotal!336 (h!71264 zl!343))))))

(declare-fun b!6289822 () Bool)

(declare-fun res!2594000 () Bool)

(assert (=> b!6289822 (=> res!2594000 e!3824614)))

(assert (=> b!6289822 (= res!2594000 (not (nullable!6206 (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6289823 () Bool)

(declare-fun Unit!158186 () Unit!158183)

(assert (=> b!6289823 (= e!3824619 Unit!158186)))

(declare-fun lt!2357064 () Unit!158183)

(assert (=> b!6289823 (= lt!2357064 (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357085 lt!2357093 (t!378500 s!2326)))))

(declare-fun res!2594014 () Bool)

(assert (=> b!6289823 (= res!2594014 (matchZipper!2225 lt!2357085 (t!378500 s!2326)))))

(assert (=> b!6289823 (=> res!2594014 e!3824633)))

(assert (=> b!6289823 (= (matchZipper!2225 ((_ map or) lt!2357085 lt!2357093) (t!378500 s!2326)) e!3824633)))

(declare-fun b!6289824 () Bool)

(assert (=> b!6289824 (= e!3824617 (not e!3824616))))

(declare-fun res!2593996 () Bool)

(assert (=> b!6289824 (=> res!2593996 e!3824616)))

(assert (=> b!6289824 (= res!2593996 (not ((_ is Cons!64816) zl!343)))))

(assert (=> b!6289824 (= lt!2357081 (matchRSpec!3314 r!7292 s!2326))))

(assert (=> b!6289824 (= lt!2357081 (matchR!8396 r!7292 s!2326))))

(declare-fun lt!2357056 () Unit!158183)

(assert (=> b!6289824 (= lt!2357056 (mainMatchTheorem!3314 r!7292 s!2326))))

(declare-fun b!6289825 () Bool)

(assert (=> b!6289825 (= e!3824624 tp_is_empty!41679)))

(declare-fun b!6289826 () Bool)

(assert (=> b!6289826 (= e!3824626 e!3824622)))

(declare-fun res!2594005 () Bool)

(assert (=> b!6289826 (=> res!2594005 e!3824622)))

(declare-fun zipperDepthTotal!366 (List!64940) Int)

(assert (=> b!6289826 (= res!2594005 (>= (zipperDepthTotal!366 lt!2357078) (zipperDepthTotal!366 zl!343)))))

(assert (=> b!6289826 (= lt!2357078 (Cons!64816 lt!2357083 Nil!64816))))

(declare-fun b!6289827 () Bool)

(assert (=> b!6289827 (= e!3824623 e!3824613)))

(declare-fun res!2593993 () Bool)

(assert (=> b!6289827 (=> res!2593993 e!3824613)))

(assert (=> b!6289827 (= res!2593993 e!3824631)))

(declare-fun res!2594015 () Bool)

(assert (=> b!6289827 (=> (not res!2594015) (not e!3824631))))

(assert (=> b!6289827 (= res!2594015 (not (= lt!2357074 (matchZipper!2225 lt!2357052 (t!378500 s!2326)))))))

(assert (=> b!6289827 (= (matchZipper!2225 lt!2357075 (t!378500 s!2326)) e!3824628)))

(declare-fun res!2594017 () Bool)

(assert (=> b!6289827 (=> res!2594017 e!3824628)))

(assert (=> b!6289827 (= res!2594017 lt!2357072)))

(declare-fun lt!2357091 () Unit!158183)

(assert (=> b!6289827 (= lt!2357091 (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357087 lt!2357086 (t!378500 s!2326)))))

(assert (=> b!6289827 (= (flatMap!1718 lt!2357069 lambda!345481) (derivationStepZipperUp!1387 lt!2357094 (h!71262 s!2326)))))

(declare-fun lt!2357065 () Unit!158183)

(assert (=> b!6289827 (= lt!2357065 (lemmaFlatMapOnSingletonSet!1244 lt!2357069 lt!2357094 lambda!345481))))

(assert (= (and start!625070 res!2594009) b!6289802))

(assert (= (and b!6289802 res!2594001) b!6289812))

(assert (= (and b!6289812 res!2593999) b!6289824))

(assert (= (and b!6289824 (not res!2593996)) b!6289790))

(assert (= (and b!6289790 (not res!2594011)) b!6289788))

(assert (= (and b!6289788 (not res!2594004)) b!6289804))

(assert (= (and b!6289804 (not res!2594013)) b!6289803))

(assert (= (and b!6289803 (not res!2593989)) b!6289817))

(assert (= (and b!6289817 (not res!2593994)) b!6289816))

(assert (= (and b!6289816 (not res!2594012)) b!6289820))

(assert (= (and b!6289820 (not res!2594018)) b!6289808))

(assert (= (and b!6289808 c!1141283) b!6289823))

(assert (= (and b!6289808 (not c!1141283)) b!6289813))

(assert (= (and b!6289823 (not res!2594014)) b!6289793))

(assert (= (and b!6289808 (not res!2593992)) b!6289822))

(assert (= (and b!6289822 (not res!2594000)) b!6289809))

(assert (= (and b!6289809 (not res!2593995)) b!6289806))

(assert (= (and b!6289806 (not res!2594002)) b!6289796))

(assert (= (and b!6289806 res!2594003) b!6289811))

(assert (= (and b!6289806 (not res!2593991)) b!6289810))

(assert (= (and b!6289810 (not res!2594016)) b!6289827))

(assert (= (and b!6289827 (not res!2594017)) b!6289818))

(assert (= (and b!6289827 res!2594015) b!6289798))

(assert (= (and b!6289827 (not res!2593993)) b!6289797))

(assert (= (and b!6289797 (not res!2593997)) b!6289821))

(assert (= (and b!6289821 (not res!2594006)) b!6289826))

(assert (= (and b!6289826 (not res!2594005)) b!6289794))

(assert (= (and b!6289794 (not res!2594010)) b!6289815))

(assert (= (and b!6289815 (not res!2593998)) b!6289789))

(assert (= (and b!6289789 (not res!2594008)) b!6289801))

(assert (= (and b!6289801 (not res!2593990)) b!6289819))

(assert (= (and b!6289819 (not res!2594007)) b!6289807))

(assert (= (and start!625070 ((_ is ElementMatch!16213) r!7292)) b!6289825))

(assert (= (and start!625070 ((_ is Concat!25058) r!7292)) b!6289814))

(assert (= (and start!625070 ((_ is Star!16213) r!7292)) b!6289791))

(assert (= (and start!625070 ((_ is Union!16213) r!7292)) b!6289799))

(assert (= (and start!625070 condSetEmpty!42812) setIsEmpty!42812))

(assert (= (and start!625070 (not condSetEmpty!42812)) setNonEmpty!42812))

(assert (= setNonEmpty!42812 b!6289805))

(assert (= b!6289792 b!6289800))

(assert (= (and start!625070 ((_ is Cons!64816) zl!343)) b!6289792))

(assert (= (and start!625070 ((_ is Cons!64814) s!2326)) b!6289795))

(declare-fun m!7110330 () Bool)

(assert (=> b!6289812 m!7110330))

(declare-fun m!7110332 () Bool)

(assert (=> b!6289792 m!7110332))

(declare-fun m!7110334 () Bool)

(assert (=> b!6289788 m!7110334))

(declare-fun m!7110336 () Bool)

(assert (=> b!6289794 m!7110336))

(declare-fun m!7110338 () Bool)

(assert (=> b!6289794 m!7110338))

(declare-fun m!7110340 () Bool)

(assert (=> b!6289790 m!7110340))

(declare-fun m!7110342 () Bool)

(assert (=> b!6289803 m!7110342))

(assert (=> b!6289803 m!7110342))

(declare-fun m!7110344 () Bool)

(assert (=> b!6289803 m!7110344))

(declare-fun m!7110346 () Bool)

(assert (=> b!6289818 m!7110346))

(declare-fun m!7110348 () Bool)

(assert (=> b!6289816 m!7110348))

(declare-fun m!7110350 () Bool)

(assert (=> b!6289816 m!7110350))

(declare-fun m!7110352 () Bool)

(assert (=> b!6289816 m!7110352))

(declare-fun m!7110354 () Bool)

(assert (=> b!6289816 m!7110354))

(declare-fun m!7110356 () Bool)

(assert (=> b!6289816 m!7110356))

(assert (=> b!6289816 m!7110356))

(assert (=> b!6289816 m!7110348))

(declare-fun m!7110358 () Bool)

(assert (=> b!6289816 m!7110358))

(declare-fun m!7110360 () Bool)

(assert (=> b!6289826 m!7110360))

(declare-fun m!7110362 () Bool)

(assert (=> b!6289826 m!7110362))

(declare-fun m!7110364 () Bool)

(assert (=> b!6289821 m!7110364))

(declare-fun m!7110366 () Bool)

(assert (=> b!6289821 m!7110366))

(declare-fun m!7110368 () Bool)

(assert (=> b!6289789 m!7110368))

(declare-fun m!7110370 () Bool)

(assert (=> start!625070 m!7110370))

(declare-fun m!7110372 () Bool)

(assert (=> b!6289815 m!7110372))

(declare-fun m!7110374 () Bool)

(assert (=> b!6289815 m!7110374))

(declare-fun m!7110376 () Bool)

(assert (=> b!6289815 m!7110376))

(declare-fun m!7110378 () Bool)

(assert (=> b!6289815 m!7110378))

(declare-fun m!7110380 () Bool)

(assert (=> b!6289815 m!7110380))

(declare-fun m!7110382 () Bool)

(assert (=> b!6289815 m!7110382))

(declare-fun m!7110384 () Bool)

(assert (=> b!6289815 m!7110384))

(declare-fun m!7110386 () Bool)

(assert (=> b!6289815 m!7110386))

(declare-fun m!7110388 () Bool)

(assert (=> b!6289815 m!7110388))

(declare-fun m!7110390 () Bool)

(assert (=> b!6289815 m!7110390))

(assert (=> b!6289815 m!7110386))

(declare-fun m!7110392 () Bool)

(assert (=> b!6289815 m!7110392))

(declare-fun m!7110394 () Bool)

(assert (=> b!6289815 m!7110394))

(declare-fun m!7110396 () Bool)

(assert (=> b!6289815 m!7110396))

(assert (=> b!6289815 m!7110392))

(declare-fun m!7110398 () Bool)

(assert (=> b!6289815 m!7110398))

(declare-fun m!7110400 () Bool)

(assert (=> b!6289815 m!7110400))

(declare-fun m!7110402 () Bool)

(assert (=> b!6289815 m!7110402))

(declare-fun m!7110404 () Bool)

(assert (=> b!6289815 m!7110404))

(assert (=> b!6289815 m!7110388))

(declare-fun m!7110406 () Bool)

(assert (=> b!6289815 m!7110406))

(declare-fun m!7110408 () Bool)

(assert (=> b!6289815 m!7110408))

(declare-fun m!7110410 () Bool)

(assert (=> b!6289815 m!7110410))

(declare-fun m!7110412 () Bool)

(assert (=> b!6289815 m!7110412))

(assert (=> b!6289815 m!7110382))

(declare-fun m!7110414 () Bool)

(assert (=> b!6289815 m!7110414))

(declare-fun m!7110416 () Bool)

(assert (=> b!6289815 m!7110416))

(declare-fun m!7110418 () Bool)

(assert (=> b!6289815 m!7110418))

(declare-fun m!7110420 () Bool)

(assert (=> b!6289815 m!7110420))

(declare-fun m!7110422 () Bool)

(assert (=> b!6289815 m!7110422))

(declare-fun m!7110424 () Bool)

(assert (=> b!6289796 m!7110424))

(declare-fun m!7110426 () Bool)

(assert (=> b!6289827 m!7110426))

(declare-fun m!7110428 () Bool)

(assert (=> b!6289827 m!7110428))

(declare-fun m!7110430 () Bool)

(assert (=> b!6289827 m!7110430))

(declare-fun m!7110432 () Bool)

(assert (=> b!6289827 m!7110432))

(declare-fun m!7110434 () Bool)

(assert (=> b!6289827 m!7110434))

(declare-fun m!7110436 () Bool)

(assert (=> b!6289827 m!7110436))

(declare-fun m!7110438 () Bool)

(assert (=> b!6289807 m!7110438))

(declare-fun m!7110440 () Bool)

(assert (=> b!6289807 m!7110440))

(declare-fun m!7110442 () Bool)

(assert (=> b!6289822 m!7110442))

(declare-fun m!7110444 () Bool)

(assert (=> b!6289802 m!7110444))

(declare-fun m!7110446 () Bool)

(assert (=> b!6289806 m!7110446))

(declare-fun m!7110448 () Bool)

(assert (=> b!6289806 m!7110448))

(declare-fun m!7110450 () Bool)

(assert (=> b!6289806 m!7110450))

(declare-fun m!7110452 () Bool)

(assert (=> b!6289806 m!7110452))

(assert (=> b!6289811 m!7110424))

(declare-fun m!7110454 () Bool)

(assert (=> b!6289819 m!7110454))

(declare-fun m!7110456 () Bool)

(assert (=> b!6289823 m!7110456))

(assert (=> b!6289823 m!7110446))

(declare-fun m!7110458 () Bool)

(assert (=> b!6289823 m!7110458))

(declare-fun m!7110460 () Bool)

(assert (=> b!6289801 m!7110460))

(declare-fun m!7110462 () Bool)

(assert (=> setNonEmpty!42812 m!7110462))

(declare-fun m!7110464 () Bool)

(assert (=> b!6289793 m!7110464))

(declare-fun m!7110466 () Bool)

(assert (=> b!6289808 m!7110466))

(declare-fun m!7110468 () Bool)

(assert (=> b!6289808 m!7110468))

(declare-fun m!7110470 () Bool)

(assert (=> b!6289808 m!7110470))

(declare-fun m!7110472 () Bool)

(assert (=> b!6289808 m!7110472))

(declare-fun m!7110474 () Bool)

(assert (=> b!6289808 m!7110474))

(declare-fun m!7110476 () Bool)

(assert (=> b!6289808 m!7110476))

(declare-fun m!7110478 () Bool)

(assert (=> b!6289808 m!7110478))

(declare-fun m!7110480 () Bool)

(assert (=> b!6289798 m!7110480))

(assert (=> b!6289798 m!7110480))

(declare-fun m!7110482 () Bool)

(assert (=> b!6289798 m!7110482))

(declare-fun m!7110484 () Bool)

(assert (=> b!6289809 m!7110484))

(declare-fun m!7110486 () Bool)

(assert (=> b!6289809 m!7110486))

(declare-fun m!7110488 () Bool)

(assert (=> b!6289810 m!7110488))

(declare-fun m!7110490 () Bool)

(assert (=> b!6289810 m!7110490))

(declare-fun m!7110492 () Bool)

(assert (=> b!6289810 m!7110492))

(assert (=> b!6289810 m!7110428))

(declare-fun m!7110494 () Bool)

(assert (=> b!6289810 m!7110494))

(declare-fun m!7110496 () Bool)

(assert (=> b!6289810 m!7110496))

(declare-fun m!7110498 () Bool)

(assert (=> b!6289810 m!7110498))

(declare-fun m!7110500 () Bool)

(assert (=> b!6289824 m!7110500))

(declare-fun m!7110502 () Bool)

(assert (=> b!6289824 m!7110502))

(declare-fun m!7110504 () Bool)

(assert (=> b!6289824 m!7110504))

(declare-fun m!7110506 () Bool)

(assert (=> b!6289820 m!7110506))

(check-sat (not b!6289815) (not b!6289814) (not b!6289819) (not b!6289810) (not b!6289816) (not b!6289821) (not b!6289800) (not b!6289796) (not setNonEmpty!42812) (not b!6289788) (not b!6289801) (not b!6289805) (not b!6289818) (not b!6289809) (not b!6289808) (not b!6289798) (not b!6289826) (not b!6289807) (not b!6289812) (not b!6289803) (not b!6289802) (not b!6289824) (not b!6289791) (not b!6289820) (not b!6289799) (not b!6289811) (not b!6289827) (not b!6289793) (not b!6289795) (not b!6289823) (not b!6289822) (not b!6289789) (not b!6289792) (not b!6289794) (not b!6289790) tp_is_empty!41679 (not start!625070) (not b!6289806))
(check-sat)
(get-model)

(declare-fun d!1973888 () Bool)

(declare-fun lt!2357182 () Int)

(assert (=> d!1973888 (>= lt!2357182 0)))

(declare-fun e!3824883 () Int)

(assert (=> d!1973888 (= lt!2357182 e!3824883)))

(declare-fun c!1141437 () Bool)

(assert (=> d!1973888 (= c!1141437 ((_ is Cons!64816) lt!2357078))))

(assert (=> d!1973888 (= (zipperDepthTotal!366 lt!2357078) lt!2357182)))

(declare-fun b!6290267 () Bool)

(assert (=> b!6290267 (= e!3824883 (+ (contextDepthTotal!336 (h!71264 lt!2357078)) (zipperDepthTotal!366 (t!378502 lt!2357078))))))

(declare-fun b!6290268 () Bool)

(assert (=> b!6290268 (= e!3824883 0)))

(assert (= (and d!1973888 c!1141437) b!6290267))

(assert (= (and d!1973888 (not c!1141437)) b!6290268))

(declare-fun m!7110898 () Bool)

(assert (=> b!6290267 m!7110898))

(declare-fun m!7110900 () Bool)

(assert (=> b!6290267 m!7110900))

(assert (=> b!6289826 d!1973888))

(declare-fun d!1973898 () Bool)

(declare-fun lt!2357183 () Int)

(assert (=> d!1973898 (>= lt!2357183 0)))

(declare-fun e!3824884 () Int)

(assert (=> d!1973898 (= lt!2357183 e!3824884)))

(declare-fun c!1141438 () Bool)

(assert (=> d!1973898 (= c!1141438 ((_ is Cons!64816) zl!343))))

(assert (=> d!1973898 (= (zipperDepthTotal!366 zl!343) lt!2357183)))

(declare-fun b!6290269 () Bool)

(assert (=> b!6290269 (= e!3824884 (+ (contextDepthTotal!336 (h!71264 zl!343)) (zipperDepthTotal!366 (t!378502 zl!343))))))

(declare-fun b!6290270 () Bool)

(assert (=> b!6290270 (= e!3824884 0)))

(assert (= (and d!1973898 c!1141438) b!6290269))

(assert (= (and d!1973898 (not c!1141438)) b!6290270))

(assert (=> b!6290269 m!7110366))

(declare-fun m!7110902 () Bool)

(assert (=> b!6290269 m!7110902))

(assert (=> b!6289826 d!1973898))

(declare-fun d!1973900 () Bool)

(declare-fun e!3824909 () Bool)

(assert (=> d!1973900 e!3824909))

(declare-fun res!2594174 () Bool)

(assert (=> d!1973900 (=> (not res!2594174) (not e!3824909))))

(declare-fun lt!2357190 () Regex!16213)

(assert (=> d!1973900 (= res!2594174 (validRegex!7949 lt!2357190))))

(declare-fun e!3824913 () Regex!16213)

(assert (=> d!1973900 (= lt!2357190 e!3824913)))

(declare-fun c!1141455 () Bool)

(declare-fun e!3824911 () Bool)

(assert (=> d!1973900 (= c!1141455 e!3824911)))

(declare-fun res!2594175 () Bool)

(assert (=> d!1973900 (=> (not res!2594175) (not e!3824911))))

(assert (=> d!1973900 (= res!2594175 ((_ is Cons!64815) (unfocusZipperList!1634 zl!343)))))

(declare-fun lambda!345542 () Int)

(declare-fun forall!15362 (List!64939 Int) Bool)

(assert (=> d!1973900 (forall!15362 (unfocusZipperList!1634 zl!343) lambda!345542)))

(assert (=> d!1973900 (= (generalisedUnion!2057 (unfocusZipperList!1634 zl!343)) lt!2357190)))

(declare-fun b!6290311 () Bool)

(declare-fun e!3824910 () Regex!16213)

(assert (=> b!6290311 (= e!3824910 EmptyLang!16213)))

(declare-fun b!6290312 () Bool)

(declare-fun e!3824912 () Bool)

(declare-fun head!12926 (List!64939) Regex!16213)

(assert (=> b!6290312 (= e!3824912 (= lt!2357190 (head!12926 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6290313 () Bool)

(declare-fun e!3824914 () Bool)

(declare-fun isEmptyLang!1626 (Regex!16213) Bool)

(assert (=> b!6290313 (= e!3824914 (isEmptyLang!1626 lt!2357190))))

(declare-fun b!6290314 () Bool)

(assert (=> b!6290314 (= e!3824914 e!3824912)))

(declare-fun c!1141454 () Bool)

(declare-fun tail!12011 (List!64939) List!64939)

(assert (=> b!6290314 (= c!1141454 (isEmpty!36870 (tail!12011 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6290315 () Bool)

(assert (=> b!6290315 (= e!3824913 (h!71263 (unfocusZipperList!1634 zl!343)))))

(declare-fun b!6290316 () Bool)

(assert (=> b!6290316 (= e!3824913 e!3824910)))

(declare-fun c!1141456 () Bool)

(assert (=> b!6290316 (= c!1141456 ((_ is Cons!64815) (unfocusZipperList!1634 zl!343)))))

(declare-fun b!6290317 () Bool)

(assert (=> b!6290317 (= e!3824911 (isEmpty!36870 (t!378501 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6290318 () Bool)

(declare-fun isUnion!1056 (Regex!16213) Bool)

(assert (=> b!6290318 (= e!3824912 (isUnion!1056 lt!2357190))))

(declare-fun b!6290319 () Bool)

(assert (=> b!6290319 (= e!3824910 (Union!16213 (h!71263 (unfocusZipperList!1634 zl!343)) (generalisedUnion!2057 (t!378501 (unfocusZipperList!1634 zl!343)))))))

(declare-fun b!6290320 () Bool)

(assert (=> b!6290320 (= e!3824909 e!3824914)))

(declare-fun c!1141453 () Bool)

(assert (=> b!6290320 (= c!1141453 (isEmpty!36870 (unfocusZipperList!1634 zl!343)))))

(assert (= (and d!1973900 res!2594175) b!6290317))

(assert (= (and d!1973900 c!1141455) b!6290315))

(assert (= (and d!1973900 (not c!1141455)) b!6290316))

(assert (= (and b!6290316 c!1141456) b!6290319))

(assert (= (and b!6290316 (not c!1141456)) b!6290311))

(assert (= (and d!1973900 res!2594174) b!6290320))

(assert (= (and b!6290320 c!1141453) b!6290313))

(assert (= (and b!6290320 (not c!1141453)) b!6290314))

(assert (= (and b!6290314 c!1141454) b!6290312))

(assert (= (and b!6290314 (not c!1141454)) b!6290318))

(declare-fun m!7110948 () Bool)

(assert (=> b!6290313 m!7110948))

(assert (=> b!6290314 m!7110342))

(declare-fun m!7110950 () Bool)

(assert (=> b!6290314 m!7110950))

(assert (=> b!6290314 m!7110950))

(declare-fun m!7110952 () Bool)

(assert (=> b!6290314 m!7110952))

(assert (=> b!6290312 m!7110342))

(declare-fun m!7110954 () Bool)

(assert (=> b!6290312 m!7110954))

(declare-fun m!7110956 () Bool)

(assert (=> b!6290319 m!7110956))

(declare-fun m!7110958 () Bool)

(assert (=> b!6290317 m!7110958))

(assert (=> b!6290320 m!7110342))

(declare-fun m!7110960 () Bool)

(assert (=> b!6290320 m!7110960))

(declare-fun m!7110962 () Bool)

(assert (=> d!1973900 m!7110962))

(assert (=> d!1973900 m!7110342))

(declare-fun m!7110964 () Bool)

(assert (=> d!1973900 m!7110964))

(declare-fun m!7110966 () Bool)

(assert (=> b!6290318 m!7110966))

(assert (=> b!6289803 d!1973900))

(declare-fun bs!1572155 () Bool)

(declare-fun d!1973910 () Bool)

(assert (= bs!1572155 (and d!1973910 d!1973900)))

(declare-fun lambda!345546 () Int)

(assert (=> bs!1572155 (= lambda!345546 lambda!345542)))

(declare-fun lt!2357198 () List!64939)

(assert (=> d!1973910 (forall!15362 lt!2357198 lambda!345546)))

(declare-fun e!3824935 () List!64939)

(assert (=> d!1973910 (= lt!2357198 e!3824935)))

(declare-fun c!1141468 () Bool)

(assert (=> d!1973910 (= c!1141468 ((_ is Cons!64816) zl!343))))

(assert (=> d!1973910 (= (unfocusZipperList!1634 zl!343) lt!2357198)))

(declare-fun b!6290358 () Bool)

(assert (=> b!6290358 (= e!3824935 (Cons!64815 (generalisedConcat!1810 (exprs!6097 (h!71264 zl!343))) (unfocusZipperList!1634 (t!378502 zl!343))))))

(declare-fun b!6290359 () Bool)

(assert (=> b!6290359 (= e!3824935 Nil!64815)))

(assert (= (and d!1973910 c!1141468) b!6290358))

(assert (= (and d!1973910 (not c!1141468)) b!6290359))

(declare-fun m!7111014 () Bool)

(assert (=> d!1973910 m!7111014))

(assert (=> b!6290358 m!7110334))

(declare-fun m!7111018 () Bool)

(assert (=> b!6290358 m!7111018))

(assert (=> b!6289803 d!1973910))

(declare-fun bs!1572175 () Bool)

(declare-fun b!6290457 () Bool)

(assert (= bs!1572175 (and b!6290457 b!6289815)))

(declare-fun lambda!345553 () Int)

(assert (=> bs!1572175 (not (= lambda!345553 lambda!345482))))

(declare-fun bs!1572176 () Bool)

(assert (= bs!1572176 (and b!6290457 b!6289816)))

(assert (=> bs!1572176 (not (= lambda!345553 lambda!345479))))

(assert (=> bs!1572175 (not (= lambda!345553 lambda!345484))))

(assert (=> bs!1572176 (not (= lambda!345553 lambda!345480))))

(assert (=> bs!1572175 (not (= lambda!345553 lambda!345483))))

(assert (=> bs!1572175 (not (= lambda!345553 lambda!345485))))

(assert (=> b!6290457 true))

(assert (=> b!6290457 true))

(declare-fun bs!1572177 () Bool)

(declare-fun b!6290448 () Bool)

(assert (= bs!1572177 (and b!6290448 b!6289815)))

(declare-fun lambda!345554 () Int)

(assert (=> bs!1572177 (not (= lambda!345554 lambda!345482))))

(declare-fun bs!1572178 () Bool)

(assert (= bs!1572178 (and b!6290448 b!6289816)))

(assert (=> bs!1572178 (not (= lambda!345554 lambda!345479))))

(assert (=> bs!1572177 (not (= lambda!345554 lambda!345484))))

(assert (=> bs!1572178 (= lambda!345554 lambda!345480)))

(assert (=> bs!1572177 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345554 lambda!345483))))

(declare-fun bs!1572179 () Bool)

(assert (= bs!1572179 (and b!6290448 b!6290457)))

(assert (=> bs!1572179 (not (= lambda!345554 lambda!345553))))

(assert (=> bs!1572177 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345554 lambda!345485))))

(assert (=> b!6290448 true))

(assert (=> b!6290448 true))

(declare-fun b!6290447 () Bool)

(declare-fun c!1141490 () Bool)

(assert (=> b!6290447 (= c!1141490 ((_ is Union!16213) r!7292))))

(declare-fun e!3824986 () Bool)

(declare-fun e!3824985 () Bool)

(assert (=> b!6290447 (= e!3824986 e!3824985)))

(declare-fun e!3824983 () Bool)

(declare-fun call!532607 () Bool)

(assert (=> b!6290448 (= e!3824983 call!532607)))

(declare-fun b!6290449 () Bool)

(declare-fun e!3824982 () Bool)

(declare-fun e!3824988 () Bool)

(assert (=> b!6290449 (= e!3824982 e!3824988)))

(declare-fun res!2594238 () Bool)

(assert (=> b!6290449 (= res!2594238 (not ((_ is EmptyLang!16213) r!7292)))))

(assert (=> b!6290449 (=> (not res!2594238) (not e!3824988))))

(declare-fun b!6290450 () Bool)

(declare-fun e!3824987 () Bool)

(assert (=> b!6290450 (= e!3824985 e!3824987)))

(declare-fun res!2594239 () Bool)

(assert (=> b!6290450 (= res!2594239 (matchRSpec!3314 (regOne!32939 r!7292) s!2326))))

(assert (=> b!6290450 (=> res!2594239 e!3824987)))

(declare-fun b!6290451 () Bool)

(declare-fun res!2594240 () Bool)

(declare-fun e!3824984 () Bool)

(assert (=> b!6290451 (=> res!2594240 e!3824984)))

(declare-fun call!532606 () Bool)

(assert (=> b!6290451 (= res!2594240 call!532606)))

(assert (=> b!6290451 (= e!3824983 e!3824984)))

(declare-fun b!6290452 () Bool)

(assert (=> b!6290452 (= e!3824986 (= s!2326 (Cons!64814 (c!1141284 r!7292) Nil!64814)))))

(declare-fun b!6290453 () Bool)

(assert (=> b!6290453 (= e!3824985 e!3824983)))

(declare-fun c!1141489 () Bool)

(assert (=> b!6290453 (= c!1141489 ((_ is Star!16213) r!7292))))

(declare-fun b!6290454 () Bool)

(declare-fun c!1141492 () Bool)

(assert (=> b!6290454 (= c!1141492 ((_ is ElementMatch!16213) r!7292))))

(assert (=> b!6290454 (= e!3824988 e!3824986)))

(declare-fun d!1973922 () Bool)

(declare-fun c!1141491 () Bool)

(assert (=> d!1973922 (= c!1141491 ((_ is EmptyExpr!16213) r!7292))))

(assert (=> d!1973922 (= (matchRSpec!3314 r!7292 s!2326) e!3824982)))

(declare-fun b!6290455 () Bool)

(assert (=> b!6290455 (= e!3824987 (matchRSpec!3314 (regTwo!32939 r!7292) s!2326))))

(declare-fun b!6290456 () Bool)

(assert (=> b!6290456 (= e!3824982 call!532606)))

(assert (=> b!6290457 (= e!3824984 call!532607)))

(declare-fun bm!532601 () Bool)

(declare-fun isEmpty!36872 (List!64938) Bool)

(assert (=> bm!532601 (= call!532606 (isEmpty!36872 s!2326))))

(declare-fun bm!532602 () Bool)

(assert (=> bm!532602 (= call!532607 (Exists!3283 (ite c!1141489 lambda!345553 lambda!345554)))))

(assert (= (and d!1973922 c!1141491) b!6290456))

(assert (= (and d!1973922 (not c!1141491)) b!6290449))

(assert (= (and b!6290449 res!2594238) b!6290454))

(assert (= (and b!6290454 c!1141492) b!6290452))

(assert (= (and b!6290454 (not c!1141492)) b!6290447))

(assert (= (and b!6290447 c!1141490) b!6290450))

(assert (= (and b!6290447 (not c!1141490)) b!6290453))

(assert (= (and b!6290450 (not res!2594239)) b!6290455))

(assert (= (and b!6290453 c!1141489) b!6290451))

(assert (= (and b!6290453 (not c!1141489)) b!6290448))

(assert (= (and b!6290451 (not res!2594240)) b!6290457))

(assert (= (or b!6290457 b!6290448) bm!532602))

(assert (= (or b!6290456 b!6290451) bm!532601))

(declare-fun m!7111072 () Bool)

(assert (=> b!6290450 m!7111072))

(declare-fun m!7111074 () Bool)

(assert (=> b!6290455 m!7111074))

(declare-fun m!7111076 () Bool)

(assert (=> bm!532601 m!7111076))

(declare-fun m!7111078 () Bool)

(assert (=> bm!532602 m!7111078))

(assert (=> b!6289824 d!1973922))

(declare-fun b!6290540 () Bool)

(declare-fun e!3825032 () Bool)

(assert (=> b!6290540 (= e!3825032 (nullable!6206 r!7292))))

(declare-fun b!6290541 () Bool)

(declare-fun res!2594261 () Bool)

(declare-fun e!3825029 () Bool)

(assert (=> b!6290541 (=> res!2594261 e!3825029)))

(declare-fun e!3825028 () Bool)

(assert (=> b!6290541 (= res!2594261 e!3825028)))

(declare-fun res!2594264 () Bool)

(assert (=> b!6290541 (=> (not res!2594264) (not e!3825028))))

(declare-fun lt!2357209 () Bool)

(assert (=> b!6290541 (= res!2594264 lt!2357209)))

(declare-fun b!6290542 () Bool)

(declare-fun head!12927 (List!64938) C!32696)

(assert (=> b!6290542 (= e!3825028 (= (head!12927 s!2326) (c!1141284 r!7292)))))

(declare-fun b!6290543 () Bool)

(declare-fun e!3825030 () Bool)

(assert (=> b!6290543 (= e!3825030 (not (= (head!12927 s!2326) (c!1141284 r!7292))))))

(declare-fun d!1973944 () Bool)

(declare-fun e!3825031 () Bool)

(assert (=> d!1973944 e!3825031))

(declare-fun c!1141499 () Bool)

(assert (=> d!1973944 (= c!1141499 ((_ is EmptyExpr!16213) r!7292))))

(assert (=> d!1973944 (= lt!2357209 e!3825032)))

(declare-fun c!1141500 () Bool)

(assert (=> d!1973944 (= c!1141500 (isEmpty!36872 s!2326))))

(assert (=> d!1973944 (validRegex!7949 r!7292)))

(assert (=> d!1973944 (= (matchR!8396 r!7292 s!2326) lt!2357209)))

(declare-fun b!6290544 () Bool)

(declare-fun e!3825027 () Bool)

(assert (=> b!6290544 (= e!3825027 (not lt!2357209))))

(declare-fun b!6290545 () Bool)

(declare-fun e!3825026 () Bool)

(assert (=> b!6290545 (= e!3825029 e!3825026)))

(declare-fun res!2594263 () Bool)

(assert (=> b!6290545 (=> (not res!2594263) (not e!3825026))))

(assert (=> b!6290545 (= res!2594263 (not lt!2357209))))

(declare-fun bm!532605 () Bool)

(declare-fun call!532610 () Bool)

(assert (=> bm!532605 (= call!532610 (isEmpty!36872 s!2326))))

(declare-fun b!6290546 () Bool)

(assert (=> b!6290546 (= e!3825031 (= lt!2357209 call!532610))))

(declare-fun b!6290547 () Bool)

(assert (=> b!6290547 (= e!3825031 e!3825027)))

(declare-fun c!1141501 () Bool)

(assert (=> b!6290547 (= c!1141501 ((_ is EmptyLang!16213) r!7292))))

(declare-fun b!6290548 () Bool)

(assert (=> b!6290548 (= e!3825026 e!3825030)))

(declare-fun res!2594262 () Bool)

(assert (=> b!6290548 (=> res!2594262 e!3825030)))

(assert (=> b!6290548 (= res!2594262 call!532610)))

(declare-fun b!6290549 () Bool)

(declare-fun res!2594258 () Bool)

(assert (=> b!6290549 (=> (not res!2594258) (not e!3825028))))

(assert (=> b!6290549 (= res!2594258 (not call!532610))))

(declare-fun b!6290550 () Bool)

(declare-fun res!2594257 () Bool)

(assert (=> b!6290550 (=> res!2594257 e!3825029)))

(assert (=> b!6290550 (= res!2594257 (not ((_ is ElementMatch!16213) r!7292)))))

(assert (=> b!6290550 (= e!3825027 e!3825029)))

(declare-fun b!6290551 () Bool)

(declare-fun derivativeStep!4922 (Regex!16213 C!32696) Regex!16213)

(declare-fun tail!12012 (List!64938) List!64938)

(assert (=> b!6290551 (= e!3825032 (matchR!8396 (derivativeStep!4922 r!7292 (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290552 () Bool)

(declare-fun res!2594259 () Bool)

(assert (=> b!6290552 (=> (not res!2594259) (not e!3825028))))

(assert (=> b!6290552 (= res!2594259 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290553 () Bool)

(declare-fun res!2594260 () Bool)

(assert (=> b!6290553 (=> res!2594260 e!3825030)))

(assert (=> b!6290553 (= res!2594260 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1973944 c!1141500) b!6290540))

(assert (= (and d!1973944 (not c!1141500)) b!6290551))

(assert (= (and d!1973944 c!1141499) b!6290546))

(assert (= (and d!1973944 (not c!1141499)) b!6290547))

(assert (= (and b!6290547 c!1141501) b!6290544))

(assert (= (and b!6290547 (not c!1141501)) b!6290550))

(assert (= (and b!6290550 (not res!2594257)) b!6290541))

(assert (= (and b!6290541 res!2594264) b!6290549))

(assert (= (and b!6290549 res!2594258) b!6290552))

(assert (= (and b!6290552 res!2594259) b!6290542))

(assert (= (and b!6290541 (not res!2594261)) b!6290545))

(assert (= (and b!6290545 res!2594263) b!6290548))

(assert (= (and b!6290548 (not res!2594262)) b!6290553))

(assert (= (and b!6290553 (not res!2594260)) b!6290543))

(assert (= (or b!6290546 b!6290548 b!6290549) bm!532605))

(assert (=> bm!532605 m!7111076))

(declare-fun m!7111082 () Bool)

(assert (=> b!6290551 m!7111082))

(assert (=> b!6290551 m!7111082))

(declare-fun m!7111084 () Bool)

(assert (=> b!6290551 m!7111084))

(declare-fun m!7111086 () Bool)

(assert (=> b!6290551 m!7111086))

(assert (=> b!6290551 m!7111084))

(assert (=> b!6290551 m!7111086))

(declare-fun m!7111088 () Bool)

(assert (=> b!6290551 m!7111088))

(assert (=> b!6290543 m!7111082))

(assert (=> b!6290553 m!7111086))

(assert (=> b!6290553 m!7111086))

(declare-fun m!7111090 () Bool)

(assert (=> b!6290553 m!7111090))

(declare-fun m!7111092 () Bool)

(assert (=> b!6290540 m!7111092))

(assert (=> b!6290542 m!7111082))

(assert (=> b!6290552 m!7111086))

(assert (=> b!6290552 m!7111086))

(assert (=> b!6290552 m!7111090))

(assert (=> d!1973944 m!7111076))

(assert (=> d!1973944 m!7110370))

(assert (=> b!6289824 d!1973944))

(declare-fun d!1973952 () Bool)

(assert (=> d!1973952 (= (matchR!8396 r!7292 s!2326) (matchRSpec!3314 r!7292 s!2326))))

(declare-fun lt!2357212 () Unit!158183)

(declare-fun choose!46733 (Regex!16213 List!64938) Unit!158183)

(assert (=> d!1973952 (= lt!2357212 (choose!46733 r!7292 s!2326))))

(assert (=> d!1973952 (validRegex!7949 r!7292)))

(assert (=> d!1973952 (= (mainMatchTheorem!3314 r!7292 s!2326) lt!2357212)))

(declare-fun bs!1572183 () Bool)

(assert (= bs!1572183 d!1973952))

(assert (=> bs!1572183 m!7110502))

(assert (=> bs!1572183 m!7110500))

(declare-fun m!7111094 () Bool)

(assert (=> bs!1572183 m!7111094))

(assert (=> bs!1572183 m!7110370))

(assert (=> b!6289824 d!1973952))

(declare-fun d!1973954 () Bool)

(declare-fun e!3825035 () Bool)

(assert (=> d!1973954 e!3825035))

(declare-fun res!2594267 () Bool)

(assert (=> d!1973954 (=> (not res!2594267) (not e!3825035))))

(declare-fun lt!2357215 () List!64940)

(declare-fun noDuplicate!2047 (List!64940) Bool)

(assert (=> d!1973954 (= res!2594267 (noDuplicate!2047 lt!2357215))))

(declare-fun choose!46734 ((InoxSet Context!11194)) List!64940)

(assert (=> d!1973954 (= lt!2357215 (choose!46734 z!1189))))

(assert (=> d!1973954 (= (toList!9997 z!1189) lt!2357215)))

(declare-fun b!6290556 () Bool)

(declare-fun content!12190 (List!64940) (InoxSet Context!11194))

(assert (=> b!6290556 (= e!3825035 (= (content!12190 lt!2357215) z!1189))))

(assert (= (and d!1973954 res!2594267) b!6290556))

(declare-fun m!7111096 () Bool)

(assert (=> d!1973954 m!7111096))

(declare-fun m!7111098 () Bool)

(assert (=> d!1973954 m!7111098))

(declare-fun m!7111100 () Bool)

(assert (=> b!6290556 m!7111100))

(assert (=> b!6289802 d!1973954))

(declare-fun e!3825038 () Bool)

(declare-fun d!1973956 () Bool)

(assert (=> d!1973956 (= (matchZipper!2225 ((_ map or) lt!2357085 lt!2357093) (t!378500 s!2326)) e!3825038)))

(declare-fun res!2594270 () Bool)

(assert (=> d!1973956 (=> res!2594270 e!3825038)))

(assert (=> d!1973956 (= res!2594270 (matchZipper!2225 lt!2357085 (t!378500 s!2326)))))

(declare-fun lt!2357218 () Unit!158183)

(declare-fun choose!46735 ((InoxSet Context!11194) (InoxSet Context!11194) List!64938) Unit!158183)

(assert (=> d!1973956 (= lt!2357218 (choose!46735 lt!2357085 lt!2357093 (t!378500 s!2326)))))

(assert (=> d!1973956 (= (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357085 lt!2357093 (t!378500 s!2326)) lt!2357218)))

(declare-fun b!6290559 () Bool)

(assert (=> b!6290559 (= e!3825038 (matchZipper!2225 lt!2357093 (t!378500 s!2326)))))

(assert (= (and d!1973956 (not res!2594270)) b!6290559))

(assert (=> d!1973956 m!7110458))

(assert (=> d!1973956 m!7110446))

(declare-fun m!7111102 () Bool)

(assert (=> d!1973956 m!7111102))

(assert (=> b!6290559 m!7110464))

(assert (=> b!6289823 d!1973956))

(declare-fun d!1973958 () Bool)

(declare-fun c!1141504 () Bool)

(assert (=> d!1973958 (= c!1141504 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825041 () Bool)

(assert (=> d!1973958 (= (matchZipper!2225 lt!2357085 (t!378500 s!2326)) e!3825041)))

(declare-fun b!6290564 () Bool)

(declare-fun nullableZipper!1983 ((InoxSet Context!11194)) Bool)

(assert (=> b!6290564 (= e!3825041 (nullableZipper!1983 lt!2357085))))

(declare-fun b!6290565 () Bool)

(assert (=> b!6290565 (= e!3825041 (matchZipper!2225 (derivationStepZipper!2179 lt!2357085 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1973958 c!1141504) b!6290564))

(assert (= (and d!1973958 (not c!1141504)) b!6290565))

(declare-fun m!7111104 () Bool)

(assert (=> d!1973958 m!7111104))

(declare-fun m!7111106 () Bool)

(assert (=> b!6290564 m!7111106))

(declare-fun m!7111108 () Bool)

(assert (=> b!6290565 m!7111108))

(assert (=> b!6290565 m!7111108))

(declare-fun m!7111110 () Bool)

(assert (=> b!6290565 m!7111110))

(declare-fun m!7111112 () Bool)

(assert (=> b!6290565 m!7111112))

(assert (=> b!6290565 m!7111110))

(assert (=> b!6290565 m!7111112))

(declare-fun m!7111114 () Bool)

(assert (=> b!6290565 m!7111114))

(assert (=> b!6289823 d!1973958))

(declare-fun d!1973960 () Bool)

(declare-fun c!1141505 () Bool)

(assert (=> d!1973960 (= c!1141505 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825042 () Bool)

(assert (=> d!1973960 (= (matchZipper!2225 ((_ map or) lt!2357085 lt!2357093) (t!378500 s!2326)) e!3825042)))

(declare-fun b!6290566 () Bool)

(assert (=> b!6290566 (= e!3825042 (nullableZipper!1983 ((_ map or) lt!2357085 lt!2357093)))))

(declare-fun b!6290567 () Bool)

(assert (=> b!6290567 (= e!3825042 (matchZipper!2225 (derivationStepZipper!2179 ((_ map or) lt!2357085 lt!2357093) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1973960 c!1141505) b!6290566))

(assert (= (and d!1973960 (not c!1141505)) b!6290567))

(assert (=> d!1973960 m!7111104))

(declare-fun m!7111116 () Bool)

(assert (=> b!6290566 m!7111116))

(assert (=> b!6290567 m!7111108))

(assert (=> b!6290567 m!7111108))

(declare-fun m!7111118 () Bool)

(assert (=> b!6290567 m!7111118))

(assert (=> b!6290567 m!7111112))

(assert (=> b!6290567 m!7111118))

(assert (=> b!6290567 m!7111112))

(declare-fun m!7111120 () Bool)

(assert (=> b!6290567 m!7111120))

(assert (=> b!6289823 d!1973960))

(declare-fun b!6290568 () Bool)

(declare-fun e!3825049 () Bool)

(assert (=> b!6290568 (= e!3825049 (nullable!6206 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun b!6290569 () Bool)

(declare-fun res!2594275 () Bool)

(declare-fun e!3825046 () Bool)

(assert (=> b!6290569 (=> res!2594275 e!3825046)))

(declare-fun e!3825045 () Bool)

(assert (=> b!6290569 (= res!2594275 e!3825045)))

(declare-fun res!2594278 () Bool)

(assert (=> b!6290569 (=> (not res!2594278) (not e!3825045))))

(declare-fun lt!2357219 () Bool)

(assert (=> b!6290569 (= res!2594278 lt!2357219)))

(declare-fun b!6290570 () Bool)

(assert (=> b!6290570 (= e!3825045 (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))

(declare-fun b!6290571 () Bool)

(declare-fun e!3825047 () Bool)

(assert (=> b!6290571 (= e!3825047 (not (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))))

(declare-fun d!1973962 () Bool)

(declare-fun e!3825048 () Bool)

(assert (=> d!1973962 e!3825048))

(declare-fun c!1141506 () Bool)

(assert (=> d!1973962 (= c!1141506 ((_ is EmptyExpr!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(assert (=> d!1973962 (= lt!2357219 e!3825049)))

(declare-fun c!1141507 () Bool)

(assert (=> d!1973962 (= c!1141507 (isEmpty!36872 s!2326))))

(assert (=> d!1973962 (validRegex!7949 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))

(assert (=> d!1973962 (= (matchR!8396 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) s!2326) lt!2357219)))

(declare-fun b!6290572 () Bool)

(declare-fun e!3825044 () Bool)

(assert (=> b!6290572 (= e!3825044 (not lt!2357219))))

(declare-fun b!6290573 () Bool)

(declare-fun e!3825043 () Bool)

(assert (=> b!6290573 (= e!3825046 e!3825043)))

(declare-fun res!2594277 () Bool)

(assert (=> b!6290573 (=> (not res!2594277) (not e!3825043))))

(assert (=> b!6290573 (= res!2594277 (not lt!2357219))))

(declare-fun bm!532606 () Bool)

(declare-fun call!532611 () Bool)

(assert (=> bm!532606 (= call!532611 (isEmpty!36872 s!2326))))

(declare-fun b!6290574 () Bool)

(assert (=> b!6290574 (= e!3825048 (= lt!2357219 call!532611))))

(declare-fun b!6290575 () Bool)

(assert (=> b!6290575 (= e!3825048 e!3825044)))

(declare-fun c!1141508 () Bool)

(assert (=> b!6290575 (= c!1141508 ((_ is EmptyLang!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun b!6290576 () Bool)

(assert (=> b!6290576 (= e!3825043 e!3825047)))

(declare-fun res!2594276 () Bool)

(assert (=> b!6290576 (=> res!2594276 e!3825047)))

(assert (=> b!6290576 (= res!2594276 call!532611)))

(declare-fun b!6290577 () Bool)

(declare-fun res!2594272 () Bool)

(assert (=> b!6290577 (=> (not res!2594272) (not e!3825045))))

(assert (=> b!6290577 (= res!2594272 (not call!532611))))

(declare-fun b!6290578 () Bool)

(declare-fun res!2594271 () Bool)

(assert (=> b!6290578 (=> res!2594271 e!3825046)))

(assert (=> b!6290578 (= res!2594271 (not ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))

(assert (=> b!6290578 (= e!3825044 e!3825046)))

(declare-fun b!6290579 () Bool)

(assert (=> b!6290579 (= e!3825049 (matchR!8396 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290580 () Bool)

(declare-fun res!2594273 () Bool)

(assert (=> b!6290580 (=> (not res!2594273) (not e!3825045))))

(assert (=> b!6290580 (= res!2594273 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290581 () Bool)

(declare-fun res!2594274 () Bool)

(assert (=> b!6290581 (=> res!2594274 e!3825047)))

(assert (=> b!6290581 (= res!2594274 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1973962 c!1141507) b!6290568))

(assert (= (and d!1973962 (not c!1141507)) b!6290579))

(assert (= (and d!1973962 c!1141506) b!6290574))

(assert (= (and d!1973962 (not c!1141506)) b!6290575))

(assert (= (and b!6290575 c!1141508) b!6290572))

(assert (= (and b!6290575 (not c!1141508)) b!6290578))

(assert (= (and b!6290578 (not res!2594271)) b!6290569))

(assert (= (and b!6290569 res!2594278) b!6290577))

(assert (= (and b!6290577 res!2594272) b!6290580))

(assert (= (and b!6290580 res!2594273) b!6290570))

(assert (= (and b!6290569 (not res!2594275)) b!6290573))

(assert (= (and b!6290573 res!2594277) b!6290576))

(assert (= (and b!6290576 (not res!2594276)) b!6290581))

(assert (= (and b!6290581 (not res!2594274)) b!6290571))

(assert (= (or b!6290574 b!6290576 b!6290577) bm!532606))

(assert (=> bm!532606 m!7111076))

(assert (=> b!6290579 m!7111082))

(assert (=> b!6290579 m!7111082))

(declare-fun m!7111122 () Bool)

(assert (=> b!6290579 m!7111122))

(assert (=> b!6290579 m!7111086))

(assert (=> b!6290579 m!7111122))

(assert (=> b!6290579 m!7111086))

(declare-fun m!7111124 () Bool)

(assert (=> b!6290579 m!7111124))

(assert (=> b!6290571 m!7111082))

(assert (=> b!6290581 m!7111086))

(assert (=> b!6290581 m!7111086))

(assert (=> b!6290581 m!7111090))

(declare-fun m!7111126 () Bool)

(assert (=> b!6290568 m!7111126))

(assert (=> b!6290570 m!7111082))

(assert (=> b!6290580 m!7111086))

(assert (=> b!6290580 m!7111086))

(assert (=> b!6290580 m!7111090))

(assert (=> d!1973962 m!7111076))

(declare-fun m!7111128 () Bool)

(assert (=> d!1973962 m!7111128))

(assert (=> b!6289801 d!1973962))

(declare-fun d!1973964 () Bool)

(declare-fun nullableFct!2157 (Regex!16213) Bool)

(assert (=> d!1973964 (= (nullable!6206 (regOne!32938 (regOne!32938 r!7292))) (nullableFct!2157 (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun bs!1572184 () Bool)

(assert (= bs!1572184 d!1973964))

(declare-fun m!7111130 () Bool)

(assert (=> bs!1572184 m!7111130))

(assert (=> b!6289822 d!1973964))

(declare-fun d!1973966 () Bool)

(declare-fun lt!2357222 () Int)

(assert (=> d!1973966 (>= lt!2357222 0)))

(declare-fun e!3825052 () Int)

(assert (=> d!1973966 (= lt!2357222 e!3825052)))

(declare-fun c!1141512 () Bool)

(assert (=> d!1973966 (= c!1141512 ((_ is Cons!64815) (exprs!6097 lt!2357083)))))

(assert (=> d!1973966 (= (contextDepthTotal!336 lt!2357083) lt!2357222)))

(declare-fun b!6290586 () Bool)

(declare-fun regexDepthTotal!187 (Regex!16213) Int)

(assert (=> b!6290586 (= e!3825052 (+ (regexDepthTotal!187 (h!71263 (exprs!6097 lt!2357083))) (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 lt!2357083))))))))

(declare-fun b!6290587 () Bool)

(assert (=> b!6290587 (= e!3825052 1)))

(assert (= (and d!1973966 c!1141512) b!6290586))

(assert (= (and d!1973966 (not c!1141512)) b!6290587))

(declare-fun m!7111132 () Bool)

(assert (=> b!6290586 m!7111132))

(declare-fun m!7111134 () Bool)

(assert (=> b!6290586 m!7111134))

(assert (=> b!6289821 d!1973966))

(declare-fun d!1973968 () Bool)

(declare-fun lt!2357223 () Int)

(assert (=> d!1973968 (>= lt!2357223 0)))

(declare-fun e!3825053 () Int)

(assert (=> d!1973968 (= lt!2357223 e!3825053)))

(declare-fun c!1141513 () Bool)

(assert (=> d!1973968 (= c!1141513 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1973968 (= (contextDepthTotal!336 (h!71264 zl!343)) lt!2357223)))

(declare-fun b!6290588 () Bool)

(assert (=> b!6290588 (= e!3825053 (+ (regexDepthTotal!187 (h!71263 (exprs!6097 (h!71264 zl!343)))) (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6290589 () Bool)

(assert (=> b!6290589 (= e!3825053 1)))

(assert (= (and d!1973968 c!1141513) b!6290588))

(assert (= (and d!1973968 (not c!1141513)) b!6290589))

(declare-fun m!7111136 () Bool)

(assert (=> b!6290588 m!7111136))

(declare-fun m!7111138 () Bool)

(assert (=> b!6290588 m!7111138))

(assert (=> b!6289821 d!1973968))

(declare-fun d!1973970 () Bool)

(assert (=> d!1973970 (= (isEmpty!36870 (t!378501 (exprs!6097 (h!71264 zl!343)))) ((_ is Nil!64815) (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6289820 d!1973970))

(declare-fun b!6290590 () Bool)

(declare-fun e!3825060 () Bool)

(assert (=> b!6290590 (= e!3825060 (nullable!6206 (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun b!6290591 () Bool)

(declare-fun res!2594283 () Bool)

(declare-fun e!3825057 () Bool)

(assert (=> b!6290591 (=> res!2594283 e!3825057)))

(declare-fun e!3825056 () Bool)

(assert (=> b!6290591 (= res!2594283 e!3825056)))

(declare-fun res!2594286 () Bool)

(assert (=> b!6290591 (=> (not res!2594286) (not e!3825056))))

(declare-fun lt!2357224 () Bool)

(assert (=> b!6290591 (= res!2594286 lt!2357224)))

(declare-fun b!6290592 () Bool)

(assert (=> b!6290592 (= e!3825056 (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 lt!2357053))))))

(declare-fun b!6290593 () Bool)

(declare-fun e!3825058 () Bool)

(assert (=> b!6290593 (= e!3825058 (not (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 lt!2357053)))))))

(declare-fun d!1973972 () Bool)

(declare-fun e!3825059 () Bool)

(assert (=> d!1973972 e!3825059))

(declare-fun c!1141514 () Bool)

(assert (=> d!1973972 (= c!1141514 ((_ is EmptyExpr!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(assert (=> d!1973972 (= lt!2357224 e!3825060)))

(declare-fun c!1141515 () Bool)

(assert (=> d!1973972 (= c!1141515 (isEmpty!36872 s!2326))))

(assert (=> d!1973972 (validRegex!7949 (Concat!25058 lt!2357063 lt!2357053))))

(assert (=> d!1973972 (= (matchR!8396 (Concat!25058 lt!2357063 lt!2357053) s!2326) lt!2357224)))

(declare-fun b!6290594 () Bool)

(declare-fun e!3825055 () Bool)

(assert (=> b!6290594 (= e!3825055 (not lt!2357224))))

(declare-fun b!6290595 () Bool)

(declare-fun e!3825054 () Bool)

(assert (=> b!6290595 (= e!3825057 e!3825054)))

(declare-fun res!2594285 () Bool)

(assert (=> b!6290595 (=> (not res!2594285) (not e!3825054))))

(assert (=> b!6290595 (= res!2594285 (not lt!2357224))))

(declare-fun bm!532607 () Bool)

(declare-fun call!532612 () Bool)

(assert (=> bm!532607 (= call!532612 (isEmpty!36872 s!2326))))

(declare-fun b!6290596 () Bool)

(assert (=> b!6290596 (= e!3825059 (= lt!2357224 call!532612))))

(declare-fun b!6290597 () Bool)

(assert (=> b!6290597 (= e!3825059 e!3825055)))

(declare-fun c!1141516 () Bool)

(assert (=> b!6290597 (= c!1141516 ((_ is EmptyLang!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun b!6290598 () Bool)

(assert (=> b!6290598 (= e!3825054 e!3825058)))

(declare-fun res!2594284 () Bool)

(assert (=> b!6290598 (=> res!2594284 e!3825058)))

(assert (=> b!6290598 (= res!2594284 call!532612)))

(declare-fun b!6290599 () Bool)

(declare-fun res!2594280 () Bool)

(assert (=> b!6290599 (=> (not res!2594280) (not e!3825056))))

(assert (=> b!6290599 (= res!2594280 (not call!532612))))

(declare-fun b!6290600 () Bool)

(declare-fun res!2594279 () Bool)

(assert (=> b!6290600 (=> res!2594279 e!3825057)))

(assert (=> b!6290600 (= res!2594279 (not ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 lt!2357053))))))

(assert (=> b!6290600 (= e!3825055 e!3825057)))

(declare-fun b!6290601 () Bool)

(assert (=> b!6290601 (= e!3825060 (matchR!8396 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290602 () Bool)

(declare-fun res!2594281 () Bool)

(assert (=> b!6290602 (=> (not res!2594281) (not e!3825056))))

(assert (=> b!6290602 (= res!2594281 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290603 () Bool)

(declare-fun res!2594282 () Bool)

(assert (=> b!6290603 (=> res!2594282 e!3825058)))

(assert (=> b!6290603 (= res!2594282 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1973972 c!1141515) b!6290590))

(assert (= (and d!1973972 (not c!1141515)) b!6290601))

(assert (= (and d!1973972 c!1141514) b!6290596))

(assert (= (and d!1973972 (not c!1141514)) b!6290597))

(assert (= (and b!6290597 c!1141516) b!6290594))

(assert (= (and b!6290597 (not c!1141516)) b!6290600))

(assert (= (and b!6290600 (not res!2594279)) b!6290591))

(assert (= (and b!6290591 res!2594286) b!6290599))

(assert (= (and b!6290599 res!2594280) b!6290602))

(assert (= (and b!6290602 res!2594281) b!6290592))

(assert (= (and b!6290591 (not res!2594283)) b!6290595))

(assert (= (and b!6290595 res!2594285) b!6290598))

(assert (= (and b!6290598 (not res!2594284)) b!6290603))

(assert (= (and b!6290603 (not res!2594282)) b!6290593))

(assert (= (or b!6290596 b!6290598 b!6290599) bm!532607))

(assert (=> bm!532607 m!7111076))

(assert (=> b!6290601 m!7111082))

(assert (=> b!6290601 m!7111082))

(declare-fun m!7111140 () Bool)

(assert (=> b!6290601 m!7111140))

(assert (=> b!6290601 m!7111086))

(assert (=> b!6290601 m!7111140))

(assert (=> b!6290601 m!7111086))

(declare-fun m!7111142 () Bool)

(assert (=> b!6290601 m!7111142))

(assert (=> b!6290593 m!7111082))

(assert (=> b!6290603 m!7111086))

(assert (=> b!6290603 m!7111086))

(assert (=> b!6290603 m!7111090))

(declare-fun m!7111144 () Bool)

(assert (=> b!6290590 m!7111144))

(assert (=> b!6290592 m!7111082))

(assert (=> b!6290602 m!7111086))

(assert (=> b!6290602 m!7111086))

(assert (=> b!6290602 m!7111090))

(assert (=> d!1973972 m!7111076))

(declare-fun m!7111146 () Bool)

(assert (=> d!1973972 m!7111146))

(assert (=> b!6289819 d!1973972))

(declare-fun d!1973974 () Bool)

(declare-fun c!1141517 () Bool)

(assert (=> d!1973974 (= c!1141517 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825061 () Bool)

(assert (=> d!1973974 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (t!378500 s!2326)) e!3825061)))

(declare-fun b!6290604 () Bool)

(assert (=> b!6290604 (= e!3825061 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326))))))

(declare-fun b!6290605 () Bool)

(assert (=> b!6290605 (= e!3825061 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1973974 c!1141517) b!6290604))

(assert (= (and d!1973974 (not c!1141517)) b!6290605))

(assert (=> d!1973974 m!7111104))

(assert (=> b!6290604 m!7110480))

(declare-fun m!7111148 () Bool)

(assert (=> b!6290604 m!7111148))

(assert (=> b!6290605 m!7111108))

(assert (=> b!6290605 m!7110480))

(assert (=> b!6290605 m!7111108))

(declare-fun m!7111150 () Bool)

(assert (=> b!6290605 m!7111150))

(assert (=> b!6290605 m!7111112))

(assert (=> b!6290605 m!7111150))

(assert (=> b!6290605 m!7111112))

(declare-fun m!7111152 () Bool)

(assert (=> b!6290605 m!7111152))

(assert (=> b!6289798 d!1973974))

(declare-fun bs!1572185 () Bool)

(declare-fun d!1973976 () Bool)

(assert (= bs!1572185 (and d!1973976 b!6289808)))

(declare-fun lambda!345557 () Int)

(assert (=> bs!1572185 (= lambda!345557 lambda!345481)))

(assert (=> d!1973976 true))

(assert (=> d!1973976 (= (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (flatMap!1718 lt!2357069 lambda!345557))))

(declare-fun bs!1572186 () Bool)

(assert (= bs!1572186 d!1973976))

(declare-fun m!7111154 () Bool)

(assert (=> bs!1572186 m!7111154))

(assert (=> b!6289798 d!1973976))

(declare-fun d!1973978 () Bool)

(declare-fun c!1141520 () Bool)

(assert (=> d!1973978 (= c!1141520 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825062 () Bool)

(assert (=> d!1973978 (= (matchZipper!2225 lt!2357086 (t!378500 s!2326)) e!3825062)))

(declare-fun b!6290608 () Bool)

(assert (=> b!6290608 (= e!3825062 (nullableZipper!1983 lt!2357086))))

(declare-fun b!6290609 () Bool)

(assert (=> b!6290609 (= e!3825062 (matchZipper!2225 (derivationStepZipper!2179 lt!2357086 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1973978 c!1141520) b!6290608))

(assert (= (and d!1973978 (not c!1141520)) b!6290609))

(assert (=> d!1973978 m!7111104))

(declare-fun m!7111156 () Bool)

(assert (=> b!6290608 m!7111156))

(assert (=> b!6290609 m!7111108))

(assert (=> b!6290609 m!7111108))

(declare-fun m!7111158 () Bool)

(assert (=> b!6290609 m!7111158))

(assert (=> b!6290609 m!7111112))

(assert (=> b!6290609 m!7111158))

(assert (=> b!6290609 m!7111112))

(declare-fun m!7111160 () Bool)

(assert (=> b!6290609 m!7111160))

(assert (=> b!6289818 d!1973978))

(declare-fun d!1973980 () Bool)

(declare-fun c!1141521 () Bool)

(assert (=> d!1973980 (= c!1141521 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825063 () Bool)

(assert (=> d!1973980 (= (matchZipper!2225 lt!2357084 (t!378500 s!2326)) e!3825063)))

(declare-fun b!6290610 () Bool)

(assert (=> b!6290610 (= e!3825063 (nullableZipper!1983 lt!2357084))))

(declare-fun b!6290611 () Bool)

(assert (=> b!6290611 (= e!3825063 (matchZipper!2225 (derivationStepZipper!2179 lt!2357084 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1973980 c!1141521) b!6290610))

(assert (= (and d!1973980 (not c!1141521)) b!6290611))

(assert (=> d!1973980 m!7111104))

(declare-fun m!7111162 () Bool)

(assert (=> b!6290610 m!7111162))

(assert (=> b!6290611 m!7111108))

(assert (=> b!6290611 m!7111108))

(declare-fun m!7111164 () Bool)

(assert (=> b!6290611 m!7111164))

(assert (=> b!6290611 m!7111112))

(assert (=> b!6290611 m!7111164))

(assert (=> b!6290611 m!7111112))

(declare-fun m!7111166 () Bool)

(assert (=> b!6290611 m!7111166))

(assert (=> b!6289796 d!1973980))

(declare-fun b!6290631 () Bool)

(declare-fun lt!2357233 () Unit!158183)

(declare-fun lt!2357232 () Unit!158183)

(assert (=> b!6290631 (= lt!2357233 lt!2357232)))

(declare-fun ++!14286 (List!64938 List!64938) List!64938)

(assert (=> b!6290631 (= (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2381 (List!64938 C!32696 List!64938 List!64938) Unit!158183)

(assert (=> b!6290631 (= lt!2357232 (lemmaMoveElementToOtherListKeepsConcatEq!2381 Nil!64814 (h!71262 s!2326) (t!378500 s!2326) s!2326))))

(declare-fun e!3825077 () Option!16104)

(assert (=> b!6290631 (= e!3825077 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326))))

(declare-fun b!6290632 () Bool)

(declare-fun e!3825074 () Option!16104)

(assert (=> b!6290632 (= e!3825074 e!3825077)))

(declare-fun c!1141526 () Bool)

(assert (=> b!6290632 (= c!1141526 ((_ is Nil!64814) s!2326))))

(declare-fun b!6290633 () Bool)

(assert (=> b!6290633 (= e!3825077 None!16103)))

(declare-fun b!6290634 () Bool)

(declare-fun res!2594299 () Bool)

(declare-fun e!3825078 () Bool)

(assert (=> b!6290634 (=> (not res!2594299) (not e!3825078))))

(declare-fun lt!2357231 () Option!16104)

(declare-fun get!22408 (Option!16104) tuple2!66384)

(assert (=> b!6290634 (= res!2594299 (matchR!8396 (regTwo!32938 r!7292) (_2!36495 (get!22408 lt!2357231))))))

(declare-fun b!6290635 () Bool)

(declare-fun res!2594298 () Bool)

(assert (=> b!6290635 (=> (not res!2594298) (not e!3825078))))

(assert (=> b!6290635 (= res!2594298 (matchR!8396 (regOne!32938 r!7292) (_1!36495 (get!22408 lt!2357231))))))

(declare-fun b!6290636 () Bool)

(assert (=> b!6290636 (= e!3825074 (Some!16103 (tuple2!66385 Nil!64814 s!2326)))))

(declare-fun b!6290637 () Bool)

(declare-fun e!3825075 () Bool)

(assert (=> b!6290637 (= e!3825075 (matchR!8396 (regTwo!32938 r!7292) s!2326))))

(declare-fun b!6290638 () Bool)

(assert (=> b!6290638 (= e!3825078 (= (++!14286 (_1!36495 (get!22408 lt!2357231)) (_2!36495 (get!22408 lt!2357231))) s!2326))))

(declare-fun d!1973982 () Bool)

(declare-fun e!3825076 () Bool)

(assert (=> d!1973982 e!3825076))

(declare-fun res!2594301 () Bool)

(assert (=> d!1973982 (=> res!2594301 e!3825076)))

(assert (=> d!1973982 (= res!2594301 e!3825078)))

(declare-fun res!2594297 () Bool)

(assert (=> d!1973982 (=> (not res!2594297) (not e!3825078))))

(assert (=> d!1973982 (= res!2594297 (isDefined!12807 lt!2357231))))

(assert (=> d!1973982 (= lt!2357231 e!3825074)))

(declare-fun c!1141527 () Bool)

(assert (=> d!1973982 (= c!1141527 e!3825075)))

(declare-fun res!2594300 () Bool)

(assert (=> d!1973982 (=> (not res!2594300) (not e!3825075))))

(assert (=> d!1973982 (= res!2594300 (matchR!8396 (regOne!32938 r!7292) Nil!64814))))

(assert (=> d!1973982 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1973982 (= (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326) lt!2357231)))

(declare-fun b!6290630 () Bool)

(assert (=> b!6290630 (= e!3825076 (not (isDefined!12807 lt!2357231)))))

(assert (= (and d!1973982 res!2594300) b!6290637))

(assert (= (and d!1973982 c!1141527) b!6290636))

(assert (= (and d!1973982 (not c!1141527)) b!6290632))

(assert (= (and b!6290632 c!1141526) b!6290633))

(assert (= (and b!6290632 (not c!1141526)) b!6290631))

(assert (= (and d!1973982 res!2594297) b!6290635))

(assert (= (and b!6290635 res!2594298) b!6290634))

(assert (= (and b!6290634 res!2594299) b!6290638))

(assert (= (and d!1973982 (not res!2594301)) b!6290630))

(declare-fun m!7111168 () Bool)

(assert (=> b!6290630 m!7111168))

(assert (=> d!1973982 m!7111168))

(declare-fun m!7111170 () Bool)

(assert (=> d!1973982 m!7111170))

(declare-fun m!7111172 () Bool)

(assert (=> d!1973982 m!7111172))

(declare-fun m!7111174 () Bool)

(assert (=> b!6290635 m!7111174))

(declare-fun m!7111176 () Bool)

(assert (=> b!6290635 m!7111176))

(assert (=> b!6290638 m!7111174))

(declare-fun m!7111178 () Bool)

(assert (=> b!6290638 m!7111178))

(declare-fun m!7111180 () Bool)

(assert (=> b!6290637 m!7111180))

(declare-fun m!7111182 () Bool)

(assert (=> b!6290631 m!7111182))

(assert (=> b!6290631 m!7111182))

(declare-fun m!7111184 () Bool)

(assert (=> b!6290631 m!7111184))

(declare-fun m!7111186 () Bool)

(assert (=> b!6290631 m!7111186))

(assert (=> b!6290631 m!7111182))

(declare-fun m!7111188 () Bool)

(assert (=> b!6290631 m!7111188))

(assert (=> b!6290634 m!7111174))

(declare-fun m!7111190 () Bool)

(assert (=> b!6290634 m!7111190))

(assert (=> b!6289816 d!1973982))

(declare-fun d!1973984 () Bool)

(declare-fun choose!46739 (Int) Bool)

(assert (=> d!1973984 (= (Exists!3283 lambda!345480) (choose!46739 lambda!345480))))

(declare-fun bs!1572187 () Bool)

(assert (= bs!1572187 d!1973984))

(declare-fun m!7111192 () Bool)

(assert (=> bs!1572187 m!7111192))

(assert (=> b!6289816 d!1973984))

(declare-fun d!1973986 () Bool)

(assert (=> d!1973986 (= (Exists!3283 lambda!345479) (choose!46739 lambda!345479))))

(declare-fun bs!1572188 () Bool)

(assert (= bs!1572188 d!1973986))

(declare-fun m!7111194 () Bool)

(assert (=> bs!1572188 m!7111194))

(assert (=> b!6289816 d!1973986))

(declare-fun bs!1572189 () Bool)

(declare-fun d!1973988 () Bool)

(assert (= bs!1572189 (and d!1973988 b!6289815)))

(declare-fun lambda!345560 () Int)

(assert (=> bs!1572189 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345560 lambda!345482))))

(assert (=> bs!1572189 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345560 lambda!345484))))

(declare-fun bs!1572190 () Bool)

(assert (= bs!1572190 (and d!1973988 b!6289816)))

(assert (=> bs!1572190 (not (= lambda!345560 lambda!345480))))

(assert (=> bs!1572189 (not (= lambda!345560 lambda!345483))))

(declare-fun bs!1572191 () Bool)

(assert (= bs!1572191 (and d!1973988 b!6290457)))

(assert (=> bs!1572191 (not (= lambda!345560 lambda!345553))))

(assert (=> bs!1572189 (not (= lambda!345560 lambda!345485))))

(assert (=> bs!1572190 (= lambda!345560 lambda!345479)))

(declare-fun bs!1572192 () Bool)

(assert (= bs!1572192 (and d!1973988 b!6290448)))

(assert (=> bs!1572192 (not (= lambda!345560 lambda!345554))))

(assert (=> d!1973988 true))

(assert (=> d!1973988 true))

(assert (=> d!1973988 true))

(assert (=> d!1973988 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345560))))

(declare-fun lt!2357236 () Unit!158183)

(declare-fun choose!46740 (Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> d!1973988 (= lt!2357236 (choose!46740 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326))))

(assert (=> d!1973988 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1973988 (= (lemmaFindConcatSeparationEquivalentToExists!2282 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326) lt!2357236)))

(declare-fun bs!1572193 () Bool)

(assert (= bs!1572193 d!1973988))

(declare-fun m!7111196 () Bool)

(assert (=> bs!1572193 m!7111196))

(assert (=> bs!1572193 m!7110348))

(assert (=> bs!1572193 m!7111172))

(assert (=> bs!1572193 m!7110348))

(assert (=> bs!1572193 m!7110350))

(declare-fun m!7111198 () Bool)

(assert (=> bs!1572193 m!7111198))

(assert (=> b!6289816 d!1973988))

(declare-fun bs!1572194 () Bool)

(declare-fun d!1973990 () Bool)

(assert (= bs!1572194 (and d!1973990 b!6289815)))

(declare-fun lambda!345565 () Int)

(assert (=> bs!1572194 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345565 lambda!345482))))

(assert (=> bs!1572194 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345565 lambda!345484))))

(declare-fun bs!1572195 () Bool)

(assert (= bs!1572195 (and d!1973990 b!6289816)))

(assert (=> bs!1572195 (not (= lambda!345565 lambda!345480))))

(assert (=> bs!1572194 (not (= lambda!345565 lambda!345483))))

(declare-fun bs!1572196 () Bool)

(assert (= bs!1572196 (and d!1973990 d!1973988)))

(assert (=> bs!1572196 (= lambda!345565 lambda!345560)))

(declare-fun bs!1572197 () Bool)

(assert (= bs!1572197 (and d!1973990 b!6290457)))

(assert (=> bs!1572197 (not (= lambda!345565 lambda!345553))))

(assert (=> bs!1572194 (not (= lambda!345565 lambda!345485))))

(assert (=> bs!1572195 (= lambda!345565 lambda!345479)))

(declare-fun bs!1572198 () Bool)

(assert (= bs!1572198 (and d!1973990 b!6290448)))

(assert (=> bs!1572198 (not (= lambda!345565 lambda!345554))))

(assert (=> d!1973990 true))

(assert (=> d!1973990 true))

(assert (=> d!1973990 true))

(declare-fun lambda!345566 () Int)

(assert (=> bs!1572194 (not (= lambda!345566 lambda!345482))))

(declare-fun bs!1572199 () Bool)

(assert (= bs!1572199 d!1973990))

(assert (=> bs!1572199 (not (= lambda!345566 lambda!345565))))

(assert (=> bs!1572194 (not (= lambda!345566 lambda!345484))))

(assert (=> bs!1572195 (= lambda!345566 lambda!345480)))

(assert (=> bs!1572194 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345566 lambda!345483))))

(assert (=> bs!1572196 (not (= lambda!345566 lambda!345560))))

(assert (=> bs!1572197 (not (= lambda!345566 lambda!345553))))

(assert (=> bs!1572194 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345566 lambda!345485))))

(assert (=> bs!1572195 (not (= lambda!345566 lambda!345479))))

(assert (=> bs!1572198 (= lambda!345566 lambda!345554)))

(assert (=> d!1973990 true))

(assert (=> d!1973990 true))

(assert (=> d!1973990 true))

(assert (=> d!1973990 (= (Exists!3283 lambda!345565) (Exists!3283 lambda!345566))))

(declare-fun lt!2357239 () Unit!158183)

(declare-fun choose!46741 (Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> d!1973990 (= lt!2357239 (choose!46741 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326))))

(assert (=> d!1973990 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1973990 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326) lt!2357239)))

(declare-fun m!7111200 () Bool)

(assert (=> bs!1572199 m!7111200))

(declare-fun m!7111202 () Bool)

(assert (=> bs!1572199 m!7111202))

(declare-fun m!7111204 () Bool)

(assert (=> bs!1572199 m!7111204))

(assert (=> bs!1572199 m!7111172))

(assert (=> b!6289816 d!1973990))

(declare-fun d!1973992 () Bool)

(declare-fun isEmpty!36874 (Option!16104) Bool)

(assert (=> d!1973992 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326)) (not (isEmpty!36874 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326))))))

(declare-fun bs!1572200 () Bool)

(assert (= bs!1572200 d!1973992))

(assert (=> bs!1572200 m!7110348))

(declare-fun m!7111206 () Bool)

(assert (=> bs!1572200 m!7111206))

(assert (=> b!6289816 d!1973992))

(declare-fun b!6290651 () Bool)

(declare-fun e!3825091 () Bool)

(assert (=> b!6290651 (= e!3825091 (nullable!6206 lt!2357070))))

(declare-fun b!6290652 () Bool)

(declare-fun res!2594318 () Bool)

(declare-fun e!3825088 () Bool)

(assert (=> b!6290652 (=> res!2594318 e!3825088)))

(declare-fun e!3825087 () Bool)

(assert (=> b!6290652 (= res!2594318 e!3825087)))

(declare-fun res!2594321 () Bool)

(assert (=> b!6290652 (=> (not res!2594321) (not e!3825087))))

(declare-fun lt!2357240 () Bool)

(assert (=> b!6290652 (= res!2594321 lt!2357240)))

(declare-fun b!6290653 () Bool)

(assert (=> b!6290653 (= e!3825087 (= (head!12927 s!2326) (c!1141284 lt!2357070)))))

(declare-fun b!6290654 () Bool)

(declare-fun e!3825089 () Bool)

(assert (=> b!6290654 (= e!3825089 (not (= (head!12927 s!2326) (c!1141284 lt!2357070))))))

(declare-fun d!1973994 () Bool)

(declare-fun e!3825090 () Bool)

(assert (=> d!1973994 e!3825090))

(declare-fun c!1141528 () Bool)

(assert (=> d!1973994 (= c!1141528 ((_ is EmptyExpr!16213) lt!2357070))))

(assert (=> d!1973994 (= lt!2357240 e!3825091)))

(declare-fun c!1141529 () Bool)

(assert (=> d!1973994 (= c!1141529 (isEmpty!36872 s!2326))))

(assert (=> d!1973994 (validRegex!7949 lt!2357070)))

(assert (=> d!1973994 (= (matchR!8396 lt!2357070 s!2326) lt!2357240)))

(declare-fun b!6290655 () Bool)

(declare-fun e!3825086 () Bool)

(assert (=> b!6290655 (= e!3825086 (not lt!2357240))))

(declare-fun b!6290656 () Bool)

(declare-fun e!3825085 () Bool)

(assert (=> b!6290656 (= e!3825088 e!3825085)))

(declare-fun res!2594320 () Bool)

(assert (=> b!6290656 (=> (not res!2594320) (not e!3825085))))

(assert (=> b!6290656 (= res!2594320 (not lt!2357240))))

(declare-fun bm!532608 () Bool)

(declare-fun call!532613 () Bool)

(assert (=> bm!532608 (= call!532613 (isEmpty!36872 s!2326))))

(declare-fun b!6290657 () Bool)

(assert (=> b!6290657 (= e!3825090 (= lt!2357240 call!532613))))

(declare-fun b!6290658 () Bool)

(assert (=> b!6290658 (= e!3825090 e!3825086)))

(declare-fun c!1141530 () Bool)

(assert (=> b!6290658 (= c!1141530 ((_ is EmptyLang!16213) lt!2357070))))

(declare-fun b!6290659 () Bool)

(assert (=> b!6290659 (= e!3825085 e!3825089)))

(declare-fun res!2594319 () Bool)

(assert (=> b!6290659 (=> res!2594319 e!3825089)))

(assert (=> b!6290659 (= res!2594319 call!532613)))

(declare-fun b!6290660 () Bool)

(declare-fun res!2594315 () Bool)

(assert (=> b!6290660 (=> (not res!2594315) (not e!3825087))))

(assert (=> b!6290660 (= res!2594315 (not call!532613))))

(declare-fun b!6290661 () Bool)

(declare-fun res!2594314 () Bool)

(assert (=> b!6290661 (=> res!2594314 e!3825088)))

(assert (=> b!6290661 (= res!2594314 (not ((_ is ElementMatch!16213) lt!2357070)))))

(assert (=> b!6290661 (= e!3825086 e!3825088)))

(declare-fun b!6290662 () Bool)

(assert (=> b!6290662 (= e!3825091 (matchR!8396 (derivativeStep!4922 lt!2357070 (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290663 () Bool)

(declare-fun res!2594316 () Bool)

(assert (=> b!6290663 (=> (not res!2594316) (not e!3825087))))

(assert (=> b!6290663 (= res!2594316 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290664 () Bool)

(declare-fun res!2594317 () Bool)

(assert (=> b!6290664 (=> res!2594317 e!3825089)))

(assert (=> b!6290664 (= res!2594317 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1973994 c!1141529) b!6290651))

(assert (= (and d!1973994 (not c!1141529)) b!6290662))

(assert (= (and d!1973994 c!1141528) b!6290657))

(assert (= (and d!1973994 (not c!1141528)) b!6290658))

(assert (= (and b!6290658 c!1141530) b!6290655))

(assert (= (and b!6290658 (not c!1141530)) b!6290661))

(assert (= (and b!6290661 (not res!2594314)) b!6290652))

(assert (= (and b!6290652 res!2594321) b!6290660))

(assert (= (and b!6290660 res!2594315) b!6290663))

(assert (= (and b!6290663 res!2594316) b!6290653))

(assert (= (and b!6290652 (not res!2594318)) b!6290656))

(assert (= (and b!6290656 res!2594320) b!6290659))

(assert (= (and b!6290659 (not res!2594319)) b!6290664))

(assert (= (and b!6290664 (not res!2594317)) b!6290654))

(assert (= (or b!6290657 b!6290659 b!6290660) bm!532608))

(assert (=> bm!532608 m!7111076))

(assert (=> b!6290662 m!7111082))

(assert (=> b!6290662 m!7111082))

(declare-fun m!7111208 () Bool)

(assert (=> b!6290662 m!7111208))

(assert (=> b!6290662 m!7111086))

(assert (=> b!6290662 m!7111208))

(assert (=> b!6290662 m!7111086))

(declare-fun m!7111210 () Bool)

(assert (=> b!6290662 m!7111210))

(assert (=> b!6290654 m!7111082))

(assert (=> b!6290664 m!7111086))

(assert (=> b!6290664 m!7111086))

(assert (=> b!6290664 m!7111090))

(declare-fun m!7111212 () Bool)

(assert (=> b!6290651 m!7111212))

(assert (=> b!6290653 m!7111082))

(assert (=> b!6290663 m!7111086))

(assert (=> b!6290663 m!7111086))

(assert (=> b!6290663 m!7111090))

(assert (=> d!1973994 m!7111076))

(declare-fun m!7111214 () Bool)

(assert (=> d!1973994 m!7111214))

(assert (=> b!6289815 d!1973994))

(declare-fun bs!1572201 () Bool)

(declare-fun b!6290675 () Bool)

(assert (= bs!1572201 (and b!6290675 b!6289815)))

(declare-fun lambda!345567 () Int)

(assert (=> bs!1572201 (not (= lambda!345567 lambda!345482))))

(declare-fun bs!1572202 () Bool)

(assert (= bs!1572202 (and b!6290675 d!1973990)))

(assert (=> bs!1572202 (not (= lambda!345567 lambda!345565))))

(assert (=> bs!1572201 (not (= lambda!345567 lambda!345484))))

(declare-fun bs!1572203 () Bool)

(assert (= bs!1572203 (and b!6290675 b!6289816)))

(assert (=> bs!1572203 (not (= lambda!345567 lambda!345480))))

(assert (=> bs!1572201 (not (= lambda!345567 lambda!345483))))

(declare-fun bs!1572204 () Bool)

(assert (= bs!1572204 (and b!6290675 d!1973988)))

(assert (=> bs!1572204 (not (= lambda!345567 lambda!345560))))

(assert (=> bs!1572202 (not (= lambda!345567 lambda!345566))))

(declare-fun bs!1572205 () Bool)

(assert (= bs!1572205 (and b!6290675 b!6290457)))

(assert (=> bs!1572205 (= (and (= (reg!16542 lt!2357061) (reg!16542 r!7292)) (= lt!2357061 r!7292)) (= lambda!345567 lambda!345553))))

(assert (=> bs!1572201 (not (= lambda!345567 lambda!345485))))

(assert (=> bs!1572203 (not (= lambda!345567 lambda!345479))))

(declare-fun bs!1572206 () Bool)

(assert (= bs!1572206 (and b!6290675 b!6290448)))

(assert (=> bs!1572206 (not (= lambda!345567 lambda!345554))))

(assert (=> b!6290675 true))

(assert (=> b!6290675 true))

(declare-fun bs!1572207 () Bool)

(declare-fun b!6290666 () Bool)

(assert (= bs!1572207 (and b!6290666 b!6289815)))

(declare-fun lambda!345568 () Int)

(assert (=> bs!1572207 (not (= lambda!345568 lambda!345482))))

(declare-fun bs!1572208 () Bool)

(assert (= bs!1572208 (and b!6290666 d!1973990)))

(assert (=> bs!1572208 (not (= lambda!345568 lambda!345565))))

(assert (=> bs!1572207 (not (= lambda!345568 lambda!345484))))

(declare-fun bs!1572209 () Bool)

(assert (= bs!1572209 (and b!6290666 b!6289816)))

(assert (=> bs!1572209 (= (and (= (regOne!32938 lt!2357061) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357061) (regTwo!32938 r!7292))) (= lambda!345568 lambda!345480))))

(assert (=> bs!1572207 (= (and (= (regOne!32938 lt!2357061) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 lt!2357061) lt!2357070)) (= lambda!345568 lambda!345483))))

(declare-fun bs!1572210 () Bool)

(assert (= bs!1572210 (and b!6290666 d!1973988)))

(assert (=> bs!1572210 (not (= lambda!345568 lambda!345560))))

(declare-fun bs!1572211 () Bool)

(assert (= bs!1572211 (and b!6290666 b!6290675)))

(assert (=> bs!1572211 (not (= lambda!345568 lambda!345567))))

(assert (=> bs!1572208 (= (and (= (regOne!32938 lt!2357061) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357061) (regTwo!32938 r!7292))) (= lambda!345568 lambda!345566))))

(declare-fun bs!1572212 () Bool)

(assert (= bs!1572212 (and b!6290666 b!6290457)))

(assert (=> bs!1572212 (not (= lambda!345568 lambda!345553))))

(assert (=> bs!1572207 (= (and (= (regOne!32938 lt!2357061) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 lt!2357061) lt!2357053)) (= lambda!345568 lambda!345485))))

(assert (=> bs!1572209 (not (= lambda!345568 lambda!345479))))

(declare-fun bs!1572213 () Bool)

(assert (= bs!1572213 (and b!6290666 b!6290448)))

(assert (=> bs!1572213 (= (and (= (regOne!32938 lt!2357061) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357061) (regTwo!32938 r!7292))) (= lambda!345568 lambda!345554))))

(assert (=> b!6290666 true))

(assert (=> b!6290666 true))

(declare-fun b!6290665 () Bool)

(declare-fun c!1141532 () Bool)

(assert (=> b!6290665 (= c!1141532 ((_ is Union!16213) lt!2357061))))

(declare-fun e!3825096 () Bool)

(declare-fun e!3825095 () Bool)

(assert (=> b!6290665 (= e!3825096 e!3825095)))

(declare-fun e!3825093 () Bool)

(declare-fun call!532615 () Bool)

(assert (=> b!6290666 (= e!3825093 call!532615)))

(declare-fun b!6290667 () Bool)

(declare-fun e!3825092 () Bool)

(declare-fun e!3825098 () Bool)

(assert (=> b!6290667 (= e!3825092 e!3825098)))

(declare-fun res!2594322 () Bool)

(assert (=> b!6290667 (= res!2594322 (not ((_ is EmptyLang!16213) lt!2357061)))))

(assert (=> b!6290667 (=> (not res!2594322) (not e!3825098))))

(declare-fun b!6290668 () Bool)

(declare-fun e!3825097 () Bool)

(assert (=> b!6290668 (= e!3825095 e!3825097)))

(declare-fun res!2594323 () Bool)

(assert (=> b!6290668 (= res!2594323 (matchRSpec!3314 (regOne!32939 lt!2357061) s!2326))))

(assert (=> b!6290668 (=> res!2594323 e!3825097)))

(declare-fun b!6290669 () Bool)

(declare-fun res!2594324 () Bool)

(declare-fun e!3825094 () Bool)

(assert (=> b!6290669 (=> res!2594324 e!3825094)))

(declare-fun call!532614 () Bool)

(assert (=> b!6290669 (= res!2594324 call!532614)))

(assert (=> b!6290669 (= e!3825093 e!3825094)))

(declare-fun b!6290670 () Bool)

(assert (=> b!6290670 (= e!3825096 (= s!2326 (Cons!64814 (c!1141284 lt!2357061) Nil!64814)))))

(declare-fun b!6290671 () Bool)

(assert (=> b!6290671 (= e!3825095 e!3825093)))

(declare-fun c!1141531 () Bool)

(assert (=> b!6290671 (= c!1141531 ((_ is Star!16213) lt!2357061))))

(declare-fun b!6290672 () Bool)

(declare-fun c!1141534 () Bool)

(assert (=> b!6290672 (= c!1141534 ((_ is ElementMatch!16213) lt!2357061))))

(assert (=> b!6290672 (= e!3825098 e!3825096)))

(declare-fun d!1973996 () Bool)

(declare-fun c!1141533 () Bool)

(assert (=> d!1973996 (= c!1141533 ((_ is EmptyExpr!16213) lt!2357061))))

(assert (=> d!1973996 (= (matchRSpec!3314 lt!2357061 s!2326) e!3825092)))

(declare-fun b!6290673 () Bool)

(assert (=> b!6290673 (= e!3825097 (matchRSpec!3314 (regTwo!32939 lt!2357061) s!2326))))

(declare-fun b!6290674 () Bool)

(assert (=> b!6290674 (= e!3825092 call!532614)))

(assert (=> b!6290675 (= e!3825094 call!532615)))

(declare-fun bm!532609 () Bool)

(assert (=> bm!532609 (= call!532614 (isEmpty!36872 s!2326))))

(declare-fun bm!532610 () Bool)

(assert (=> bm!532610 (= call!532615 (Exists!3283 (ite c!1141531 lambda!345567 lambda!345568)))))

(assert (= (and d!1973996 c!1141533) b!6290674))

(assert (= (and d!1973996 (not c!1141533)) b!6290667))

(assert (= (and b!6290667 res!2594322) b!6290672))

(assert (= (and b!6290672 c!1141534) b!6290670))

(assert (= (and b!6290672 (not c!1141534)) b!6290665))

(assert (= (and b!6290665 c!1141532) b!6290668))

(assert (= (and b!6290665 (not c!1141532)) b!6290671))

(assert (= (and b!6290668 (not res!2594323)) b!6290673))

(assert (= (and b!6290671 c!1141531) b!6290669))

(assert (= (and b!6290671 (not c!1141531)) b!6290666))

(assert (= (and b!6290669 (not res!2594324)) b!6290675))

(assert (= (or b!6290675 b!6290666) bm!532610))

(assert (= (or b!6290674 b!6290669) bm!532609))

(declare-fun m!7111216 () Bool)

(assert (=> b!6290668 m!7111216))

(declare-fun m!7111218 () Bool)

(assert (=> b!6290673 m!7111218))

(assert (=> bm!532609 m!7111076))

(declare-fun m!7111220 () Bool)

(assert (=> bm!532610 m!7111220))

(assert (=> b!6289815 d!1973996))

(declare-fun bs!1572214 () Bool)

(declare-fun d!1973998 () Bool)

(assert (= bs!1572214 (and d!1973998 d!1973900)))

(declare-fun lambda!345571 () Int)

(assert (=> bs!1572214 (= lambda!345571 lambda!345542)))

(declare-fun bs!1572215 () Bool)

(assert (= bs!1572215 (and d!1973998 d!1973910)))

(assert (=> bs!1572215 (= lambda!345571 lambda!345546)))

(declare-fun b!6290696 () Bool)

(declare-fun e!3825115 () Bool)

(declare-fun lt!2357243 () Regex!16213)

(declare-fun isConcat!1142 (Regex!16213) Bool)

(assert (=> b!6290696 (= e!3825115 (isConcat!1142 lt!2357243))))

(declare-fun b!6290697 () Bool)

(assert (=> b!6290697 (= e!3825115 (= lt!2357243 (head!12926 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun e!3825113 () Bool)

(assert (=> d!1973998 e!3825113))

(declare-fun res!2594330 () Bool)

(assert (=> d!1973998 (=> (not res!2594330) (not e!3825113))))

(assert (=> d!1973998 (= res!2594330 (validRegex!7949 lt!2357243))))

(declare-fun e!3825114 () Regex!16213)

(assert (=> d!1973998 (= lt!2357243 e!3825114)))

(declare-fun c!1141546 () Bool)

(declare-fun e!3825112 () Bool)

(assert (=> d!1973998 (= c!1141546 e!3825112)))

(declare-fun res!2594329 () Bool)

(assert (=> d!1973998 (=> (not res!2594329) (not e!3825112))))

(assert (=> d!1973998 (= res!2594329 ((_ is Cons!64815) (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> d!1973998 (forall!15362 (t!378501 (exprs!6097 (h!71264 zl!343))) lambda!345571)))

(assert (=> d!1973998 (= (generalisedConcat!1810 (t!378501 (exprs!6097 (h!71264 zl!343)))) lt!2357243)))

(declare-fun b!6290698 () Bool)

(declare-fun e!3825111 () Bool)

(assert (=> b!6290698 (= e!3825111 e!3825115)))

(declare-fun c!1141543 () Bool)

(assert (=> b!6290698 (= c!1141543 (isEmpty!36870 (tail!12011 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6290699 () Bool)

(assert (=> b!6290699 (= e!3825112 (isEmpty!36870 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6290700 () Bool)

(declare-fun e!3825116 () Regex!16213)

(assert (=> b!6290700 (= e!3825114 e!3825116)))

(declare-fun c!1141545 () Bool)

(assert (=> b!6290700 (= c!1141545 ((_ is Cons!64815) (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290701 () Bool)

(assert (=> b!6290701 (= e!3825116 EmptyExpr!16213)))

(declare-fun b!6290702 () Bool)

(assert (=> b!6290702 (= e!3825116 (Concat!25058 (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343)))) (generalisedConcat!1810 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6290703 () Bool)

(declare-fun isEmptyExpr!1619 (Regex!16213) Bool)

(assert (=> b!6290703 (= e!3825111 (isEmptyExpr!1619 lt!2357243))))

(declare-fun b!6290704 () Bool)

(assert (=> b!6290704 (= e!3825114 (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290705 () Bool)

(assert (=> b!6290705 (= e!3825113 e!3825111)))

(declare-fun c!1141544 () Bool)

(assert (=> b!6290705 (= c!1141544 (isEmpty!36870 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (= (and d!1973998 res!2594329) b!6290699))

(assert (= (and d!1973998 c!1141546) b!6290704))

(assert (= (and d!1973998 (not c!1141546)) b!6290700))

(assert (= (and b!6290700 c!1141545) b!6290702))

(assert (= (and b!6290700 (not c!1141545)) b!6290701))

(assert (= (and d!1973998 res!2594330) b!6290705))

(assert (= (and b!6290705 c!1141544) b!6290703))

(assert (= (and b!6290705 (not c!1141544)) b!6290698))

(assert (= (and b!6290698 c!1141543) b!6290697))

(assert (= (and b!6290698 (not c!1141543)) b!6290696))

(declare-fun m!7111222 () Bool)

(assert (=> b!6290702 m!7111222))

(declare-fun m!7111224 () Bool)

(assert (=> b!6290697 m!7111224))

(declare-fun m!7111226 () Bool)

(assert (=> b!6290703 m!7111226))

(assert (=> b!6290705 m!7110506))

(declare-fun m!7111228 () Bool)

(assert (=> b!6290698 m!7111228))

(assert (=> b!6290698 m!7111228))

(declare-fun m!7111230 () Bool)

(assert (=> b!6290698 m!7111230))

(declare-fun m!7111232 () Bool)

(assert (=> b!6290696 m!7111232))

(declare-fun m!7111234 () Bool)

(assert (=> b!6290699 m!7111234))

(declare-fun m!7111236 () Bool)

(assert (=> d!1973998 m!7111236))

(declare-fun m!7111238 () Bool)

(assert (=> d!1973998 m!7111238))

(assert (=> b!6289815 d!1973998))

(declare-fun d!1974000 () Bool)

(assert (=> d!1974000 (= (Exists!3283 lambda!345485) (choose!46739 lambda!345485))))

(declare-fun bs!1572216 () Bool)

(assert (= bs!1572216 d!1974000))

(declare-fun m!7111240 () Bool)

(assert (=> bs!1572216 m!7111240))

(assert (=> b!6289815 d!1974000))

(declare-fun d!1974002 () Bool)

(assert (=> d!1974002 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326)) (not (isEmpty!36874 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326))))))

(declare-fun bs!1572217 () Bool)

(assert (= bs!1572217 d!1974002))

(assert (=> bs!1572217 m!7110388))

(declare-fun m!7111242 () Bool)

(assert (=> bs!1572217 m!7111242))

(assert (=> b!6289815 d!1974002))

(declare-fun bs!1572218 () Bool)

(declare-fun d!1974004 () Bool)

(assert (= bs!1572218 (and d!1974004 d!1973900)))

(declare-fun lambda!345572 () Int)

(assert (=> bs!1572218 (= lambda!345572 lambda!345542)))

(declare-fun bs!1572219 () Bool)

(assert (= bs!1572219 (and d!1974004 d!1973910)))

(assert (=> bs!1572219 (= lambda!345572 lambda!345546)))

(declare-fun bs!1572220 () Bool)

(assert (= bs!1572220 (and d!1974004 d!1973998)))

(assert (=> bs!1572220 (= lambda!345572 lambda!345571)))

(declare-fun b!6290706 () Bool)

(declare-fun e!3825121 () Bool)

(declare-fun lt!2357244 () Regex!16213)

(assert (=> b!6290706 (= e!3825121 (isConcat!1142 lt!2357244))))

(declare-fun b!6290707 () Bool)

(assert (=> b!6290707 (= e!3825121 (= lt!2357244 (head!12926 lt!2357060)))))

(declare-fun e!3825119 () Bool)

(assert (=> d!1974004 e!3825119))

(declare-fun res!2594332 () Bool)

(assert (=> d!1974004 (=> (not res!2594332) (not e!3825119))))

(assert (=> d!1974004 (= res!2594332 (validRegex!7949 lt!2357244))))

(declare-fun e!3825120 () Regex!16213)

(assert (=> d!1974004 (= lt!2357244 e!3825120)))

(declare-fun c!1141550 () Bool)

(declare-fun e!3825118 () Bool)

(assert (=> d!1974004 (= c!1141550 e!3825118)))

(declare-fun res!2594331 () Bool)

(assert (=> d!1974004 (=> (not res!2594331) (not e!3825118))))

(assert (=> d!1974004 (= res!2594331 ((_ is Cons!64815) lt!2357060))))

(assert (=> d!1974004 (forall!15362 lt!2357060 lambda!345572)))

(assert (=> d!1974004 (= (generalisedConcat!1810 lt!2357060) lt!2357244)))

(declare-fun b!6290708 () Bool)

(declare-fun e!3825117 () Bool)

(assert (=> b!6290708 (= e!3825117 e!3825121)))

(declare-fun c!1141547 () Bool)

(assert (=> b!6290708 (= c!1141547 (isEmpty!36870 (tail!12011 lt!2357060)))))

(declare-fun b!6290709 () Bool)

(assert (=> b!6290709 (= e!3825118 (isEmpty!36870 (t!378501 lt!2357060)))))

(declare-fun b!6290710 () Bool)

(declare-fun e!3825122 () Regex!16213)

(assert (=> b!6290710 (= e!3825120 e!3825122)))

(declare-fun c!1141549 () Bool)

(assert (=> b!6290710 (= c!1141549 ((_ is Cons!64815) lt!2357060))))

(declare-fun b!6290711 () Bool)

(assert (=> b!6290711 (= e!3825122 EmptyExpr!16213)))

(declare-fun b!6290712 () Bool)

(assert (=> b!6290712 (= e!3825122 (Concat!25058 (h!71263 lt!2357060) (generalisedConcat!1810 (t!378501 lt!2357060))))))

(declare-fun b!6290713 () Bool)

(assert (=> b!6290713 (= e!3825117 (isEmptyExpr!1619 lt!2357244))))

(declare-fun b!6290714 () Bool)

(assert (=> b!6290714 (= e!3825120 (h!71263 lt!2357060))))

(declare-fun b!6290715 () Bool)

(assert (=> b!6290715 (= e!3825119 e!3825117)))

(declare-fun c!1141548 () Bool)

(assert (=> b!6290715 (= c!1141548 (isEmpty!36870 lt!2357060))))

(assert (= (and d!1974004 res!2594331) b!6290709))

(assert (= (and d!1974004 c!1141550) b!6290714))

(assert (= (and d!1974004 (not c!1141550)) b!6290710))

(assert (= (and b!6290710 c!1141549) b!6290712))

(assert (= (and b!6290710 (not c!1141549)) b!6290711))

(assert (= (and d!1974004 res!2594332) b!6290715))

(assert (= (and b!6290715 c!1141548) b!6290713))

(assert (= (and b!6290715 (not c!1141548)) b!6290708))

(assert (= (and b!6290708 c!1141547) b!6290707))

(assert (= (and b!6290708 (not c!1141547)) b!6290706))

(declare-fun m!7111244 () Bool)

(assert (=> b!6290712 m!7111244))

(declare-fun m!7111246 () Bool)

(assert (=> b!6290707 m!7111246))

(declare-fun m!7111248 () Bool)

(assert (=> b!6290713 m!7111248))

(declare-fun m!7111250 () Bool)

(assert (=> b!6290715 m!7111250))

(declare-fun m!7111252 () Bool)

(assert (=> b!6290708 m!7111252))

(assert (=> b!6290708 m!7111252))

(declare-fun m!7111254 () Bool)

(assert (=> b!6290708 m!7111254))

(declare-fun m!7111256 () Bool)

(assert (=> b!6290706 m!7111256))

(declare-fun m!7111258 () Bool)

(assert (=> b!6290709 m!7111258))

(declare-fun m!7111260 () Bool)

(assert (=> d!1974004 m!7111260))

(declare-fun m!7111262 () Bool)

(assert (=> d!1974004 m!7111262))

(assert (=> b!6289815 d!1974004))

(declare-fun bs!1572221 () Bool)

(declare-fun d!1974006 () Bool)

(assert (= bs!1572221 (and d!1974006 b!6289815)))

(declare-fun lambda!345573 () Int)

(assert (=> bs!1572221 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345573 lambda!345482))))

(declare-fun bs!1572222 () Bool)

(assert (= bs!1572222 (and d!1974006 d!1973990)))

(assert (=> bs!1572222 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345573 lambda!345565))))

(assert (=> bs!1572221 (= lambda!345573 lambda!345484)))

(declare-fun bs!1572223 () Bool)

(assert (= bs!1572223 (and d!1974006 b!6289816)))

(assert (=> bs!1572223 (not (= lambda!345573 lambda!345480))))

(assert (=> bs!1572221 (not (= lambda!345573 lambda!345483))))

(declare-fun bs!1572224 () Bool)

(assert (= bs!1572224 (and d!1974006 d!1973988)))

(assert (=> bs!1572224 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345573 lambda!345560))))

(declare-fun bs!1572225 () Bool)

(assert (= bs!1572225 (and d!1974006 b!6290675)))

(assert (=> bs!1572225 (not (= lambda!345573 lambda!345567))))

(assert (=> bs!1572222 (not (= lambda!345573 lambda!345566))))

(declare-fun bs!1572226 () Bool)

(assert (= bs!1572226 (and d!1974006 b!6290457)))

(assert (=> bs!1572226 (not (= lambda!345573 lambda!345553))))

(assert (=> bs!1572221 (not (= lambda!345573 lambda!345485))))

(assert (=> bs!1572223 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345573 lambda!345479))))

(declare-fun bs!1572227 () Bool)

(assert (= bs!1572227 (and d!1974006 b!6290448)))

(assert (=> bs!1572227 (not (= lambda!345573 lambda!345554))))

(declare-fun bs!1572228 () Bool)

(assert (= bs!1572228 (and d!1974006 b!6290666)))

(assert (=> bs!1572228 (not (= lambda!345573 lambda!345568))))

(assert (=> d!1974006 true))

(assert (=> d!1974006 true))

(assert (=> d!1974006 true))

(assert (=> d!1974006 (= (isDefined!12807 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345573))))

(declare-fun lt!2357245 () Unit!158183)

(assert (=> d!1974006 (= lt!2357245 (choose!46740 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(assert (=> d!1974006 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974006 (= (lemmaFindConcatSeparationEquivalentToExists!2282 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) lt!2357245)))

(declare-fun bs!1572229 () Bool)

(assert (= bs!1572229 d!1974006))

(declare-fun m!7111264 () Bool)

(assert (=> bs!1572229 m!7111264))

(assert (=> bs!1572229 m!7110392))

(declare-fun m!7111266 () Bool)

(assert (=> bs!1572229 m!7111266))

(assert (=> bs!1572229 m!7110392))

(assert (=> bs!1572229 m!7110398))

(declare-fun m!7111268 () Bool)

(assert (=> bs!1572229 m!7111268))

(assert (=> b!6289815 d!1974006))

(declare-fun d!1974008 () Bool)

(assert (=> d!1974008 (= (matchR!8396 lt!2357070 s!2326) (matchRSpec!3314 lt!2357070 s!2326))))

(declare-fun lt!2357246 () Unit!158183)

(assert (=> d!1974008 (= lt!2357246 (choose!46733 lt!2357070 s!2326))))

(assert (=> d!1974008 (validRegex!7949 lt!2357070)))

(assert (=> d!1974008 (= (mainMatchTheorem!3314 lt!2357070 s!2326) lt!2357246)))

(declare-fun bs!1572230 () Bool)

(assert (= bs!1572230 d!1974008))

(assert (=> bs!1572230 m!7110402))

(assert (=> bs!1572230 m!7110394))

(declare-fun m!7111270 () Bool)

(assert (=> bs!1572230 m!7111270))

(assert (=> bs!1572230 m!7111214))

(assert (=> b!6289815 d!1974008))

(declare-fun bs!1572231 () Bool)

(declare-fun d!1974010 () Bool)

(assert (= bs!1572231 (and d!1974010 b!6289815)))

(declare-fun lambda!345574 () Int)

(assert (=> bs!1572231 (= lambda!345574 lambda!345482)))

(declare-fun bs!1572232 () Bool)

(assert (= bs!1572232 (and d!1974010 d!1974006)))

(assert (=> bs!1572232 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345574 lambda!345573))))

(declare-fun bs!1572233 () Bool)

(assert (= bs!1572233 (and d!1974010 d!1973990)))

(assert (=> bs!1572233 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345574 lambda!345565))))

(assert (=> bs!1572231 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345574 lambda!345484))))

(declare-fun bs!1572234 () Bool)

(assert (= bs!1572234 (and d!1974010 b!6289816)))

(assert (=> bs!1572234 (not (= lambda!345574 lambda!345480))))

(assert (=> bs!1572231 (not (= lambda!345574 lambda!345483))))

(declare-fun bs!1572235 () Bool)

(assert (= bs!1572235 (and d!1974010 d!1973988)))

(assert (=> bs!1572235 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345574 lambda!345560))))

(declare-fun bs!1572236 () Bool)

(assert (= bs!1572236 (and d!1974010 b!6290675)))

(assert (=> bs!1572236 (not (= lambda!345574 lambda!345567))))

(assert (=> bs!1572233 (not (= lambda!345574 lambda!345566))))

(declare-fun bs!1572237 () Bool)

(assert (= bs!1572237 (and d!1974010 b!6290457)))

(assert (=> bs!1572237 (not (= lambda!345574 lambda!345553))))

(assert (=> bs!1572231 (not (= lambda!345574 lambda!345485))))

(assert (=> bs!1572234 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345574 lambda!345479))))

(declare-fun bs!1572238 () Bool)

(assert (= bs!1572238 (and d!1974010 b!6290448)))

(assert (=> bs!1572238 (not (= lambda!345574 lambda!345554))))

(declare-fun bs!1572239 () Bool)

(assert (= bs!1572239 (and d!1974010 b!6290666)))

(assert (=> bs!1572239 (not (= lambda!345574 lambda!345568))))

(assert (=> d!1974010 true))

(assert (=> d!1974010 true))

(assert (=> d!1974010 true))

(assert (=> d!1974010 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345574))))

(declare-fun lt!2357247 () Unit!158183)

(assert (=> d!1974010 (= lt!2357247 (choose!46740 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326))))

(assert (=> d!1974010 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974010 (= (lemmaFindConcatSeparationEquivalentToExists!2282 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326) lt!2357247)))

(declare-fun bs!1572240 () Bool)

(assert (= bs!1572240 d!1974010))

(declare-fun m!7111272 () Bool)

(assert (=> bs!1572240 m!7111272))

(assert (=> bs!1572240 m!7110388))

(declare-fun m!7111274 () Bool)

(assert (=> bs!1572240 m!7111274))

(assert (=> bs!1572240 m!7110388))

(assert (=> bs!1572240 m!7110390))

(declare-fun m!7111276 () Bool)

(assert (=> bs!1572240 m!7111276))

(assert (=> b!6289815 d!1974010))

(declare-fun b!6290717 () Bool)

(declare-fun lt!2357250 () Unit!158183)

(declare-fun lt!2357249 () Unit!158183)

(assert (=> b!6290717 (= lt!2357250 lt!2357249)))

(assert (=> b!6290717 (= (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326)) s!2326)))

(assert (=> b!6290717 (= lt!2357249 (lemmaMoveElementToOtherListKeepsConcatEq!2381 Nil!64814 (h!71262 s!2326) (t!378500 s!2326) s!2326))))

(declare-fun e!3825126 () Option!16104)

(assert (=> b!6290717 (= e!3825126 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326))))

(declare-fun b!6290718 () Bool)

(declare-fun e!3825123 () Option!16104)

(assert (=> b!6290718 (= e!3825123 e!3825126)))

(declare-fun c!1141551 () Bool)

(assert (=> b!6290718 (= c!1141551 ((_ is Nil!64814) s!2326))))

(declare-fun b!6290719 () Bool)

(assert (=> b!6290719 (= e!3825126 None!16103)))

(declare-fun b!6290720 () Bool)

(declare-fun res!2594335 () Bool)

(declare-fun e!3825127 () Bool)

(assert (=> b!6290720 (=> (not res!2594335) (not e!3825127))))

(declare-fun lt!2357248 () Option!16104)

(assert (=> b!6290720 (= res!2594335 (matchR!8396 lt!2357070 (_2!36495 (get!22408 lt!2357248))))))

(declare-fun b!6290721 () Bool)

(declare-fun res!2594334 () Bool)

(assert (=> b!6290721 (=> (not res!2594334) (not e!3825127))))

(assert (=> b!6290721 (= res!2594334 (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357248))))))

(declare-fun b!6290722 () Bool)

(assert (=> b!6290722 (= e!3825123 (Some!16103 (tuple2!66385 Nil!64814 s!2326)))))

(declare-fun b!6290723 () Bool)

(declare-fun e!3825124 () Bool)

(assert (=> b!6290723 (= e!3825124 (matchR!8396 lt!2357070 s!2326))))

(declare-fun b!6290724 () Bool)

(assert (=> b!6290724 (= e!3825127 (= (++!14286 (_1!36495 (get!22408 lt!2357248)) (_2!36495 (get!22408 lt!2357248))) s!2326))))

(declare-fun d!1974012 () Bool)

(declare-fun e!3825125 () Bool)

(assert (=> d!1974012 e!3825125))

(declare-fun res!2594337 () Bool)

(assert (=> d!1974012 (=> res!2594337 e!3825125)))

(assert (=> d!1974012 (= res!2594337 e!3825127)))

(declare-fun res!2594333 () Bool)

(assert (=> d!1974012 (=> (not res!2594333) (not e!3825127))))

(assert (=> d!1974012 (= res!2594333 (isDefined!12807 lt!2357248))))

(assert (=> d!1974012 (= lt!2357248 e!3825123)))

(declare-fun c!1141552 () Bool)

(assert (=> d!1974012 (= c!1141552 e!3825124)))

(declare-fun res!2594336 () Bool)

(assert (=> d!1974012 (=> (not res!2594336) (not e!3825124))))

(assert (=> d!1974012 (= res!2594336 (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) Nil!64814))))

(assert (=> d!1974012 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974012 (= (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326) lt!2357248)))

(declare-fun b!6290716 () Bool)

(assert (=> b!6290716 (= e!3825125 (not (isDefined!12807 lt!2357248)))))

(assert (= (and d!1974012 res!2594336) b!6290723))

(assert (= (and d!1974012 c!1141552) b!6290722))

(assert (= (and d!1974012 (not c!1141552)) b!6290718))

(assert (= (and b!6290718 c!1141551) b!6290719))

(assert (= (and b!6290718 (not c!1141551)) b!6290717))

(assert (= (and d!1974012 res!2594333) b!6290721))

(assert (= (and b!6290721 res!2594334) b!6290720))

(assert (= (and b!6290720 res!2594335) b!6290724))

(assert (= (and d!1974012 (not res!2594337)) b!6290716))

(declare-fun m!7111278 () Bool)

(assert (=> b!6290716 m!7111278))

(assert (=> d!1974012 m!7111278))

(declare-fun m!7111280 () Bool)

(assert (=> d!1974012 m!7111280))

(assert (=> d!1974012 m!7111274))

(declare-fun m!7111282 () Bool)

(assert (=> b!6290721 m!7111282))

(declare-fun m!7111284 () Bool)

(assert (=> b!6290721 m!7111284))

(assert (=> b!6290724 m!7111282))

(declare-fun m!7111286 () Bool)

(assert (=> b!6290724 m!7111286))

(assert (=> b!6290723 m!7110402))

(assert (=> b!6290717 m!7111182))

(assert (=> b!6290717 m!7111182))

(assert (=> b!6290717 m!7111184))

(assert (=> b!6290717 m!7111186))

(assert (=> b!6290717 m!7111182))

(declare-fun m!7111288 () Bool)

(assert (=> b!6290717 m!7111288))

(assert (=> b!6290720 m!7111282))

(declare-fun m!7111290 () Bool)

(assert (=> b!6290720 m!7111290))

(assert (=> b!6289815 d!1974012))

(declare-fun d!1974014 () Bool)

(assert (=> d!1974014 (= (isDefined!12807 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326)) (not (isEmpty!36874 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326))))))

(declare-fun bs!1572241 () Bool)

(assert (= bs!1572241 d!1974014))

(assert (=> bs!1572241 m!7110392))

(declare-fun m!7111292 () Bool)

(assert (=> bs!1572241 m!7111292))

(assert (=> b!6289815 d!1974014))

(declare-fun d!1974016 () Bool)

(declare-fun c!1141553 () Bool)

(assert (=> d!1974016 (= c!1141553 (isEmpty!36872 s!2326))))

(declare-fun e!3825128 () Bool)

(assert (=> d!1974016 (= (matchZipper!2225 lt!2357069 s!2326) e!3825128)))

(declare-fun b!6290725 () Bool)

(assert (=> b!6290725 (= e!3825128 (nullableZipper!1983 lt!2357069))))

(declare-fun b!6290726 () Bool)

(assert (=> b!6290726 (= e!3825128 (matchZipper!2225 (derivationStepZipper!2179 lt!2357069 (head!12927 s!2326)) (tail!12012 s!2326)))))

(assert (= (and d!1974016 c!1141553) b!6290725))

(assert (= (and d!1974016 (not c!1141553)) b!6290726))

(assert (=> d!1974016 m!7111076))

(declare-fun m!7111294 () Bool)

(assert (=> b!6290725 m!7111294))

(assert (=> b!6290726 m!7111082))

(assert (=> b!6290726 m!7111082))

(declare-fun m!7111296 () Bool)

(assert (=> b!6290726 m!7111296))

(assert (=> b!6290726 m!7111086))

(assert (=> b!6290726 m!7111296))

(assert (=> b!6290726 m!7111086))

(declare-fun m!7111298 () Bool)

(assert (=> b!6290726 m!7111298))

(assert (=> b!6289815 d!1974016))

(declare-fun bs!1572242 () Bool)

(declare-fun b!6290737 () Bool)

(assert (= bs!1572242 (and b!6290737 b!6289815)))

(declare-fun lambda!345575 () Int)

(assert (=> bs!1572242 (not (= lambda!345575 lambda!345482))))

(declare-fun bs!1572243 () Bool)

(assert (= bs!1572243 (and b!6290737 d!1974006)))

(assert (=> bs!1572243 (not (= lambda!345575 lambda!345573))))

(declare-fun bs!1572244 () Bool)

(assert (= bs!1572244 (and b!6290737 d!1974010)))

(assert (=> bs!1572244 (not (= lambda!345575 lambda!345574))))

(declare-fun bs!1572245 () Bool)

(assert (= bs!1572245 (and b!6290737 d!1973990)))

(assert (=> bs!1572245 (not (= lambda!345575 lambda!345565))))

(assert (=> bs!1572242 (not (= lambda!345575 lambda!345484))))

(declare-fun bs!1572246 () Bool)

(assert (= bs!1572246 (and b!6290737 b!6289816)))

(assert (=> bs!1572246 (not (= lambda!345575 lambda!345480))))

(assert (=> bs!1572242 (not (= lambda!345575 lambda!345483))))

(declare-fun bs!1572247 () Bool)

(assert (= bs!1572247 (and b!6290737 d!1973988)))

(assert (=> bs!1572247 (not (= lambda!345575 lambda!345560))))

(declare-fun bs!1572248 () Bool)

(assert (= bs!1572248 (and b!6290737 b!6290675)))

(assert (=> bs!1572248 (= (and (= (reg!16542 lt!2357070) (reg!16542 lt!2357061)) (= lt!2357070 lt!2357061)) (= lambda!345575 lambda!345567))))

(assert (=> bs!1572245 (not (= lambda!345575 lambda!345566))))

(declare-fun bs!1572249 () Bool)

(assert (= bs!1572249 (and b!6290737 b!6290457)))

(assert (=> bs!1572249 (= (and (= (reg!16542 lt!2357070) (reg!16542 r!7292)) (= lt!2357070 r!7292)) (= lambda!345575 lambda!345553))))

(assert (=> bs!1572242 (not (= lambda!345575 lambda!345485))))

(assert (=> bs!1572246 (not (= lambda!345575 lambda!345479))))

(declare-fun bs!1572250 () Bool)

(assert (= bs!1572250 (and b!6290737 b!6290448)))

(assert (=> bs!1572250 (not (= lambda!345575 lambda!345554))))

(declare-fun bs!1572251 () Bool)

(assert (= bs!1572251 (and b!6290737 b!6290666)))

(assert (=> bs!1572251 (not (= lambda!345575 lambda!345568))))

(assert (=> b!6290737 true))

(assert (=> b!6290737 true))

(declare-fun bs!1572252 () Bool)

(declare-fun b!6290728 () Bool)

(assert (= bs!1572252 (and b!6290728 b!6289815)))

(declare-fun lambda!345576 () Int)

(assert (=> bs!1572252 (not (= lambda!345576 lambda!345482))))

(declare-fun bs!1572253 () Bool)

(assert (= bs!1572253 (and b!6290728 d!1974006)))

(assert (=> bs!1572253 (not (= lambda!345576 lambda!345573))))

(declare-fun bs!1572254 () Bool)

(assert (= bs!1572254 (and b!6290728 d!1974010)))

(assert (=> bs!1572254 (not (= lambda!345576 lambda!345574))))

(declare-fun bs!1572255 () Bool)

(assert (= bs!1572255 (and b!6290728 d!1973990)))

(assert (=> bs!1572255 (not (= lambda!345576 lambda!345565))))

(assert (=> bs!1572252 (not (= lambda!345576 lambda!345484))))

(declare-fun bs!1572256 () Bool)

(assert (= bs!1572256 (and b!6290728 b!6289816)))

(assert (=> bs!1572256 (= (and (= (regOne!32938 lt!2357070) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357070) (regTwo!32938 r!7292))) (= lambda!345576 lambda!345480))))

(assert (=> bs!1572252 (= (and (= (regOne!32938 lt!2357070) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 lt!2357070) lt!2357070)) (= lambda!345576 lambda!345483))))

(declare-fun bs!1572257 () Bool)

(assert (= bs!1572257 (and b!6290728 d!1973988)))

(assert (=> bs!1572257 (not (= lambda!345576 lambda!345560))))

(declare-fun bs!1572258 () Bool)

(assert (= bs!1572258 (and b!6290728 b!6290675)))

(assert (=> bs!1572258 (not (= lambda!345576 lambda!345567))))

(assert (=> bs!1572255 (= (and (= (regOne!32938 lt!2357070) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357070) (regTwo!32938 r!7292))) (= lambda!345576 lambda!345566))))

(declare-fun bs!1572259 () Bool)

(assert (= bs!1572259 (and b!6290728 b!6290457)))

(assert (=> bs!1572259 (not (= lambda!345576 lambda!345553))))

(assert (=> bs!1572252 (= (and (= (regOne!32938 lt!2357070) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 lt!2357070) lt!2357053)) (= lambda!345576 lambda!345485))))

(declare-fun bs!1572260 () Bool)

(assert (= bs!1572260 (and b!6290728 b!6290737)))

(assert (=> bs!1572260 (not (= lambda!345576 lambda!345575))))

(assert (=> bs!1572256 (not (= lambda!345576 lambda!345479))))

(declare-fun bs!1572261 () Bool)

(assert (= bs!1572261 (and b!6290728 b!6290448)))

(assert (=> bs!1572261 (= (and (= (regOne!32938 lt!2357070) (regOne!32938 r!7292)) (= (regTwo!32938 lt!2357070) (regTwo!32938 r!7292))) (= lambda!345576 lambda!345554))))

(declare-fun bs!1572262 () Bool)

(assert (= bs!1572262 (and b!6290728 b!6290666)))

(assert (=> bs!1572262 (= (and (= (regOne!32938 lt!2357070) (regOne!32938 lt!2357061)) (= (regTwo!32938 lt!2357070) (regTwo!32938 lt!2357061))) (= lambda!345576 lambda!345568))))

(assert (=> b!6290728 true))

(assert (=> b!6290728 true))

(declare-fun b!6290727 () Bool)

(declare-fun c!1141555 () Bool)

(assert (=> b!6290727 (= c!1141555 ((_ is Union!16213) lt!2357070))))

(declare-fun e!3825133 () Bool)

(declare-fun e!3825132 () Bool)

(assert (=> b!6290727 (= e!3825133 e!3825132)))

(declare-fun e!3825130 () Bool)

(declare-fun call!532617 () Bool)

(assert (=> b!6290728 (= e!3825130 call!532617)))

(declare-fun b!6290729 () Bool)

(declare-fun e!3825129 () Bool)

(declare-fun e!3825135 () Bool)

(assert (=> b!6290729 (= e!3825129 e!3825135)))

(declare-fun res!2594338 () Bool)

(assert (=> b!6290729 (= res!2594338 (not ((_ is EmptyLang!16213) lt!2357070)))))

(assert (=> b!6290729 (=> (not res!2594338) (not e!3825135))))

(declare-fun b!6290730 () Bool)

(declare-fun e!3825134 () Bool)

(assert (=> b!6290730 (= e!3825132 e!3825134)))

(declare-fun res!2594339 () Bool)

(assert (=> b!6290730 (= res!2594339 (matchRSpec!3314 (regOne!32939 lt!2357070) s!2326))))

(assert (=> b!6290730 (=> res!2594339 e!3825134)))

(declare-fun b!6290731 () Bool)

(declare-fun res!2594340 () Bool)

(declare-fun e!3825131 () Bool)

(assert (=> b!6290731 (=> res!2594340 e!3825131)))

(declare-fun call!532616 () Bool)

(assert (=> b!6290731 (= res!2594340 call!532616)))

(assert (=> b!6290731 (= e!3825130 e!3825131)))

(declare-fun b!6290732 () Bool)

(assert (=> b!6290732 (= e!3825133 (= s!2326 (Cons!64814 (c!1141284 lt!2357070) Nil!64814)))))

(declare-fun b!6290733 () Bool)

(assert (=> b!6290733 (= e!3825132 e!3825130)))

(declare-fun c!1141554 () Bool)

(assert (=> b!6290733 (= c!1141554 ((_ is Star!16213) lt!2357070))))

(declare-fun b!6290734 () Bool)

(declare-fun c!1141557 () Bool)

(assert (=> b!6290734 (= c!1141557 ((_ is ElementMatch!16213) lt!2357070))))

(assert (=> b!6290734 (= e!3825135 e!3825133)))

(declare-fun d!1974018 () Bool)

(declare-fun c!1141556 () Bool)

(assert (=> d!1974018 (= c!1141556 ((_ is EmptyExpr!16213) lt!2357070))))

(assert (=> d!1974018 (= (matchRSpec!3314 lt!2357070 s!2326) e!3825129)))

(declare-fun b!6290735 () Bool)

(assert (=> b!6290735 (= e!3825134 (matchRSpec!3314 (regTwo!32939 lt!2357070) s!2326))))

(declare-fun b!6290736 () Bool)

(assert (=> b!6290736 (= e!3825129 call!532616)))

(assert (=> b!6290737 (= e!3825131 call!532617)))

(declare-fun bm!532611 () Bool)

(assert (=> bm!532611 (= call!532616 (isEmpty!36872 s!2326))))

(declare-fun bm!532612 () Bool)

(assert (=> bm!532612 (= call!532617 (Exists!3283 (ite c!1141554 lambda!345575 lambda!345576)))))

(assert (= (and d!1974018 c!1141556) b!6290736))

(assert (= (and d!1974018 (not c!1141556)) b!6290729))

(assert (= (and b!6290729 res!2594338) b!6290734))

(assert (= (and b!6290734 c!1141557) b!6290732))

(assert (= (and b!6290734 (not c!1141557)) b!6290727))

(assert (= (and b!6290727 c!1141555) b!6290730))

(assert (= (and b!6290727 (not c!1141555)) b!6290733))

(assert (= (and b!6290730 (not res!2594339)) b!6290735))

(assert (= (and b!6290733 c!1141554) b!6290731))

(assert (= (and b!6290733 (not c!1141554)) b!6290728))

(assert (= (and b!6290731 (not res!2594340)) b!6290737))

(assert (= (or b!6290737 b!6290728) bm!532612))

(assert (= (or b!6290736 b!6290731) bm!532611))

(declare-fun m!7111300 () Bool)

(assert (=> b!6290730 m!7111300))

(declare-fun m!7111302 () Bool)

(assert (=> b!6290735 m!7111302))

(assert (=> bm!532611 m!7111076))

(declare-fun m!7111304 () Bool)

(assert (=> bm!532612 m!7111304))

(assert (=> b!6289815 d!1974018))

(declare-fun d!1974020 () Bool)

(assert (=> d!1974020 (= (Exists!3283 lambda!345484) (choose!46739 lambda!345484))))

(declare-fun bs!1572263 () Bool)

(assert (= bs!1572263 d!1974020))

(declare-fun m!7111306 () Bool)

(assert (=> bs!1572263 m!7111306))

(assert (=> b!6289815 d!1974020))

(declare-fun d!1974022 () Bool)

(declare-fun c!1141558 () Bool)

(assert (=> d!1974022 (= c!1141558 (isEmpty!36872 s!2326))))

(declare-fun e!3825136 () Bool)

(assert (=> d!1974022 (= (matchZipper!2225 z!1189 s!2326) e!3825136)))

(declare-fun b!6290738 () Bool)

(assert (=> b!6290738 (= e!3825136 (nullableZipper!1983 z!1189))))

(declare-fun b!6290739 () Bool)

(assert (=> b!6290739 (= e!3825136 (matchZipper!2225 (derivationStepZipper!2179 z!1189 (head!12927 s!2326)) (tail!12012 s!2326)))))

(assert (= (and d!1974022 c!1141558) b!6290738))

(assert (= (and d!1974022 (not c!1141558)) b!6290739))

(assert (=> d!1974022 m!7111076))

(declare-fun m!7111308 () Bool)

(assert (=> b!6290738 m!7111308))

(assert (=> b!6290739 m!7111082))

(assert (=> b!6290739 m!7111082))

(declare-fun m!7111310 () Bool)

(assert (=> b!6290739 m!7111310))

(assert (=> b!6290739 m!7111086))

(assert (=> b!6290739 m!7111310))

(assert (=> b!6290739 m!7111086))

(declare-fun m!7111312 () Bool)

(assert (=> b!6290739 m!7111312))

(assert (=> b!6289815 d!1974022))

(declare-fun d!1974024 () Bool)

(assert (=> d!1974024 (= (matchR!8396 lt!2357061 s!2326) (matchRSpec!3314 lt!2357061 s!2326))))

(declare-fun lt!2357251 () Unit!158183)

(assert (=> d!1974024 (= lt!2357251 (choose!46733 lt!2357061 s!2326))))

(assert (=> d!1974024 (validRegex!7949 lt!2357061)))

(assert (=> d!1974024 (= (mainMatchTheorem!3314 lt!2357061 s!2326) lt!2357251)))

(declare-fun bs!1572264 () Bool)

(assert (= bs!1572264 d!1974024))

(assert (=> bs!1572264 m!7110416))

(assert (=> bs!1572264 m!7110384))

(declare-fun m!7111314 () Bool)

(assert (=> bs!1572264 m!7111314))

(declare-fun m!7111316 () Bool)

(assert (=> bs!1572264 m!7111316))

(assert (=> b!6289815 d!1974024))

(declare-fun d!1974026 () Bool)

(assert (=> d!1974026 (= (matchR!8396 lt!2357061 s!2326) (matchZipper!2225 lt!2357071 s!2326))))

(declare-fun lt!2357254 () Unit!158183)

(declare-fun choose!46743 ((InoxSet Context!11194) List!64940 Regex!16213 List!64938) Unit!158183)

(assert (=> d!1974026 (= lt!2357254 (choose!46743 lt!2357071 lt!2357078 lt!2357061 s!2326))))

(assert (=> d!1974026 (validRegex!7949 lt!2357061)))

(assert (=> d!1974026 (= (theoremZipperRegexEquiv!783 lt!2357071 lt!2357078 lt!2357061 s!2326) lt!2357254)))

(declare-fun bs!1572265 () Bool)

(assert (= bs!1572265 d!1974026))

(assert (=> bs!1572265 m!7110416))

(assert (=> bs!1572265 m!7110408))

(declare-fun m!7111318 () Bool)

(assert (=> bs!1572265 m!7111318))

(assert (=> bs!1572265 m!7111316))

(assert (=> b!6289815 d!1974026))

(declare-fun b!6290740 () Bool)

(declare-fun e!3825143 () Bool)

(assert (=> b!6290740 (= e!3825143 (nullable!6206 lt!2357061))))

(declare-fun b!6290741 () Bool)

(declare-fun res!2594345 () Bool)

(declare-fun e!3825140 () Bool)

(assert (=> b!6290741 (=> res!2594345 e!3825140)))

(declare-fun e!3825139 () Bool)

(assert (=> b!6290741 (= res!2594345 e!3825139)))

(declare-fun res!2594348 () Bool)

(assert (=> b!6290741 (=> (not res!2594348) (not e!3825139))))

(declare-fun lt!2357255 () Bool)

(assert (=> b!6290741 (= res!2594348 lt!2357255)))

(declare-fun b!6290742 () Bool)

(assert (=> b!6290742 (= e!3825139 (= (head!12927 s!2326) (c!1141284 lt!2357061)))))

(declare-fun b!6290743 () Bool)

(declare-fun e!3825141 () Bool)

(assert (=> b!6290743 (= e!3825141 (not (= (head!12927 s!2326) (c!1141284 lt!2357061))))))

(declare-fun d!1974028 () Bool)

(declare-fun e!3825142 () Bool)

(assert (=> d!1974028 e!3825142))

(declare-fun c!1141559 () Bool)

(assert (=> d!1974028 (= c!1141559 ((_ is EmptyExpr!16213) lt!2357061))))

(assert (=> d!1974028 (= lt!2357255 e!3825143)))

(declare-fun c!1141560 () Bool)

(assert (=> d!1974028 (= c!1141560 (isEmpty!36872 s!2326))))

(assert (=> d!1974028 (validRegex!7949 lt!2357061)))

(assert (=> d!1974028 (= (matchR!8396 lt!2357061 s!2326) lt!2357255)))

(declare-fun b!6290744 () Bool)

(declare-fun e!3825138 () Bool)

(assert (=> b!6290744 (= e!3825138 (not lt!2357255))))

(declare-fun b!6290745 () Bool)

(declare-fun e!3825137 () Bool)

(assert (=> b!6290745 (= e!3825140 e!3825137)))

(declare-fun res!2594347 () Bool)

(assert (=> b!6290745 (=> (not res!2594347) (not e!3825137))))

(assert (=> b!6290745 (= res!2594347 (not lt!2357255))))

(declare-fun bm!532613 () Bool)

(declare-fun call!532618 () Bool)

(assert (=> bm!532613 (= call!532618 (isEmpty!36872 s!2326))))

(declare-fun b!6290746 () Bool)

(assert (=> b!6290746 (= e!3825142 (= lt!2357255 call!532618))))

(declare-fun b!6290747 () Bool)

(assert (=> b!6290747 (= e!3825142 e!3825138)))

(declare-fun c!1141561 () Bool)

(assert (=> b!6290747 (= c!1141561 ((_ is EmptyLang!16213) lt!2357061))))

(declare-fun b!6290748 () Bool)

(assert (=> b!6290748 (= e!3825137 e!3825141)))

(declare-fun res!2594346 () Bool)

(assert (=> b!6290748 (=> res!2594346 e!3825141)))

(assert (=> b!6290748 (= res!2594346 call!532618)))

(declare-fun b!6290749 () Bool)

(declare-fun res!2594342 () Bool)

(assert (=> b!6290749 (=> (not res!2594342) (not e!3825139))))

(assert (=> b!6290749 (= res!2594342 (not call!532618))))

(declare-fun b!6290750 () Bool)

(declare-fun res!2594341 () Bool)

(assert (=> b!6290750 (=> res!2594341 e!3825140)))

(assert (=> b!6290750 (= res!2594341 (not ((_ is ElementMatch!16213) lt!2357061)))))

(assert (=> b!6290750 (= e!3825138 e!3825140)))

(declare-fun b!6290751 () Bool)

(assert (=> b!6290751 (= e!3825143 (matchR!8396 (derivativeStep!4922 lt!2357061 (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290752 () Bool)

(declare-fun res!2594343 () Bool)

(assert (=> b!6290752 (=> (not res!2594343) (not e!3825139))))

(assert (=> b!6290752 (= res!2594343 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290753 () Bool)

(declare-fun res!2594344 () Bool)

(assert (=> b!6290753 (=> res!2594344 e!3825141)))

(assert (=> b!6290753 (= res!2594344 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974028 c!1141560) b!6290740))

(assert (= (and d!1974028 (not c!1141560)) b!6290751))

(assert (= (and d!1974028 c!1141559) b!6290746))

(assert (= (and d!1974028 (not c!1141559)) b!6290747))

(assert (= (and b!6290747 c!1141561) b!6290744))

(assert (= (and b!6290747 (not c!1141561)) b!6290750))

(assert (= (and b!6290750 (not res!2594341)) b!6290741))

(assert (= (and b!6290741 res!2594348) b!6290749))

(assert (= (and b!6290749 res!2594342) b!6290752))

(assert (= (and b!6290752 res!2594343) b!6290742))

(assert (= (and b!6290741 (not res!2594345)) b!6290745))

(assert (= (and b!6290745 res!2594347) b!6290748))

(assert (= (and b!6290748 (not res!2594346)) b!6290753))

(assert (= (and b!6290753 (not res!2594344)) b!6290743))

(assert (= (or b!6290746 b!6290748 b!6290749) bm!532613))

(assert (=> bm!532613 m!7111076))

(assert (=> b!6290751 m!7111082))

(assert (=> b!6290751 m!7111082))

(declare-fun m!7111320 () Bool)

(assert (=> b!6290751 m!7111320))

(assert (=> b!6290751 m!7111086))

(assert (=> b!6290751 m!7111320))

(assert (=> b!6290751 m!7111086))

(declare-fun m!7111322 () Bool)

(assert (=> b!6290751 m!7111322))

(assert (=> b!6290743 m!7111082))

(assert (=> b!6290753 m!7111086))

(assert (=> b!6290753 m!7111086))

(assert (=> b!6290753 m!7111090))

(declare-fun m!7111324 () Bool)

(assert (=> b!6290740 m!7111324))

(assert (=> b!6290742 m!7111082))

(assert (=> b!6290752 m!7111086))

(assert (=> b!6290752 m!7111086))

(assert (=> b!6290752 m!7111090))

(assert (=> d!1974028 m!7111076))

(assert (=> d!1974028 m!7111316))

(assert (=> b!6289815 d!1974028))

(declare-fun d!1974030 () Bool)

(assert (=> d!1974030 (= (matchR!8396 lt!2357070 s!2326) (matchZipper!2225 lt!2357069 s!2326))))

(declare-fun lt!2357256 () Unit!158183)

(assert (=> d!1974030 (= lt!2357256 (choose!46743 lt!2357069 (Cons!64816 lt!2357094 Nil!64816) lt!2357070 s!2326))))

(assert (=> d!1974030 (validRegex!7949 lt!2357070)))

(assert (=> d!1974030 (= (theoremZipperRegexEquiv!783 lt!2357069 (Cons!64816 lt!2357094 Nil!64816) lt!2357070 s!2326) lt!2357256)))

(declare-fun bs!1572266 () Bool)

(assert (= bs!1572266 d!1974030))

(assert (=> bs!1572266 m!7110402))

(assert (=> bs!1572266 m!7110404))

(declare-fun m!7111326 () Bool)

(assert (=> bs!1572266 m!7111326))

(assert (=> bs!1572266 m!7111214))

(assert (=> b!6289815 d!1974030))

(declare-fun d!1974032 () Bool)

(declare-fun c!1141562 () Bool)

(assert (=> d!1974032 (= c!1141562 (isEmpty!36872 s!2326))))

(declare-fun e!3825144 () Bool)

(assert (=> d!1974032 (= (matchZipper!2225 lt!2357071 s!2326) e!3825144)))

(declare-fun b!6290754 () Bool)

(assert (=> b!6290754 (= e!3825144 (nullableZipper!1983 lt!2357071))))

(declare-fun b!6290755 () Bool)

(assert (=> b!6290755 (= e!3825144 (matchZipper!2225 (derivationStepZipper!2179 lt!2357071 (head!12927 s!2326)) (tail!12012 s!2326)))))

(assert (= (and d!1974032 c!1141562) b!6290754))

(assert (= (and d!1974032 (not c!1141562)) b!6290755))

(assert (=> d!1974032 m!7111076))

(declare-fun m!7111328 () Bool)

(assert (=> b!6290754 m!7111328))

(assert (=> b!6290755 m!7111082))

(assert (=> b!6290755 m!7111082))

(declare-fun m!7111330 () Bool)

(assert (=> b!6290755 m!7111330))

(assert (=> b!6290755 m!7111086))

(assert (=> b!6290755 m!7111330))

(assert (=> b!6290755 m!7111086))

(declare-fun m!7111332 () Bool)

(assert (=> b!6290755 m!7111332))

(assert (=> b!6289815 d!1974032))

(declare-fun bs!1572267 () Bool)

(declare-fun d!1974034 () Bool)

(assert (= bs!1572267 (and d!1974034 d!1973900)))

(declare-fun lambda!345577 () Int)

(assert (=> bs!1572267 (= lambda!345577 lambda!345542)))

(declare-fun bs!1572268 () Bool)

(assert (= bs!1572268 (and d!1974034 d!1973910)))

(assert (=> bs!1572268 (= lambda!345577 lambda!345546)))

(declare-fun bs!1572269 () Bool)

(assert (= bs!1572269 (and d!1974034 d!1973998)))

(assert (=> bs!1572269 (= lambda!345577 lambda!345571)))

(declare-fun bs!1572270 () Bool)

(assert (= bs!1572270 (and d!1974034 d!1974004)))

(assert (=> bs!1572270 (= lambda!345577 lambda!345572)))

(declare-fun b!6290756 () Bool)

(declare-fun e!3825149 () Bool)

(declare-fun lt!2357257 () Regex!16213)

(assert (=> b!6290756 (= e!3825149 (isConcat!1142 lt!2357257))))

(declare-fun b!6290757 () Bool)

(assert (=> b!6290757 (= e!3825149 (= lt!2357257 (head!12926 lt!2357082)))))

(declare-fun e!3825147 () Bool)

(assert (=> d!1974034 e!3825147))

(declare-fun res!2594350 () Bool)

(assert (=> d!1974034 (=> (not res!2594350) (not e!3825147))))

(assert (=> d!1974034 (= res!2594350 (validRegex!7949 lt!2357257))))

(declare-fun e!3825148 () Regex!16213)

(assert (=> d!1974034 (= lt!2357257 e!3825148)))

(declare-fun c!1141566 () Bool)

(declare-fun e!3825146 () Bool)

(assert (=> d!1974034 (= c!1141566 e!3825146)))

(declare-fun res!2594349 () Bool)

(assert (=> d!1974034 (=> (not res!2594349) (not e!3825146))))

(assert (=> d!1974034 (= res!2594349 ((_ is Cons!64815) lt!2357082))))

(assert (=> d!1974034 (forall!15362 lt!2357082 lambda!345577)))

(assert (=> d!1974034 (= (generalisedConcat!1810 lt!2357082) lt!2357257)))

(declare-fun b!6290758 () Bool)

(declare-fun e!3825145 () Bool)

(assert (=> b!6290758 (= e!3825145 e!3825149)))

(declare-fun c!1141563 () Bool)

(assert (=> b!6290758 (= c!1141563 (isEmpty!36870 (tail!12011 lt!2357082)))))

(declare-fun b!6290759 () Bool)

(assert (=> b!6290759 (= e!3825146 (isEmpty!36870 (t!378501 lt!2357082)))))

(declare-fun b!6290760 () Bool)

(declare-fun e!3825150 () Regex!16213)

(assert (=> b!6290760 (= e!3825148 e!3825150)))

(declare-fun c!1141565 () Bool)

(assert (=> b!6290760 (= c!1141565 ((_ is Cons!64815) lt!2357082))))

(declare-fun b!6290761 () Bool)

(assert (=> b!6290761 (= e!3825150 EmptyExpr!16213)))

(declare-fun b!6290762 () Bool)

(assert (=> b!6290762 (= e!3825150 (Concat!25058 (h!71263 lt!2357082) (generalisedConcat!1810 (t!378501 lt!2357082))))))

(declare-fun b!6290763 () Bool)

(assert (=> b!6290763 (= e!3825145 (isEmptyExpr!1619 lt!2357257))))

(declare-fun b!6290764 () Bool)

(assert (=> b!6290764 (= e!3825148 (h!71263 lt!2357082))))

(declare-fun b!6290765 () Bool)

(assert (=> b!6290765 (= e!3825147 e!3825145)))

(declare-fun c!1141564 () Bool)

(assert (=> b!6290765 (= c!1141564 (isEmpty!36870 lt!2357082))))

(assert (= (and d!1974034 res!2594349) b!6290759))

(assert (= (and d!1974034 c!1141566) b!6290764))

(assert (= (and d!1974034 (not c!1141566)) b!6290760))

(assert (= (and b!6290760 c!1141565) b!6290762))

(assert (= (and b!6290760 (not c!1141565)) b!6290761))

(assert (= (and d!1974034 res!2594350) b!6290765))

(assert (= (and b!6290765 c!1141564) b!6290763))

(assert (= (and b!6290765 (not c!1141564)) b!6290758))

(assert (= (and b!6290758 c!1141563) b!6290757))

(assert (= (and b!6290758 (not c!1141563)) b!6290756))

(declare-fun m!7111334 () Bool)

(assert (=> b!6290762 m!7111334))

(declare-fun m!7111336 () Bool)

(assert (=> b!6290757 m!7111336))

(declare-fun m!7111338 () Bool)

(assert (=> b!6290763 m!7111338))

(declare-fun m!7111340 () Bool)

(assert (=> b!6290765 m!7111340))

(declare-fun m!7111342 () Bool)

(assert (=> b!6290758 m!7111342))

(assert (=> b!6290758 m!7111342))

(declare-fun m!7111344 () Bool)

(assert (=> b!6290758 m!7111344))

(declare-fun m!7111346 () Bool)

(assert (=> b!6290756 m!7111346))

(declare-fun m!7111348 () Bool)

(assert (=> b!6290759 m!7111348))

(declare-fun m!7111350 () Bool)

(assert (=> d!1974034 m!7111350))

(declare-fun m!7111352 () Bool)

(assert (=> d!1974034 m!7111352))

(assert (=> b!6289815 d!1974034))

(declare-fun b!6290767 () Bool)

(declare-fun lt!2357260 () Unit!158183)

(declare-fun lt!2357259 () Unit!158183)

(assert (=> b!6290767 (= lt!2357260 lt!2357259)))

(assert (=> b!6290767 (= (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326)) s!2326)))

(assert (=> b!6290767 (= lt!2357259 (lemmaMoveElementToOtherListKeepsConcatEq!2381 Nil!64814 (h!71262 s!2326) (t!378500 s!2326) s!2326))))

(declare-fun e!3825154 () Option!16104)

(assert (=> b!6290767 (= e!3825154 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326))))

(declare-fun b!6290768 () Bool)

(declare-fun e!3825151 () Option!16104)

(assert (=> b!6290768 (= e!3825151 e!3825154)))

(declare-fun c!1141567 () Bool)

(assert (=> b!6290768 (= c!1141567 ((_ is Nil!64814) s!2326))))

(declare-fun b!6290769 () Bool)

(assert (=> b!6290769 (= e!3825154 None!16103)))

(declare-fun b!6290770 () Bool)

(declare-fun res!2594353 () Bool)

(declare-fun e!3825155 () Bool)

(assert (=> b!6290770 (=> (not res!2594353) (not e!3825155))))

(declare-fun lt!2357258 () Option!16104)

(assert (=> b!6290770 (= res!2594353 (matchR!8396 lt!2357053 (_2!36495 (get!22408 lt!2357258))))))

(declare-fun b!6290771 () Bool)

(declare-fun res!2594352 () Bool)

(assert (=> b!6290771 (=> (not res!2594352) (not e!3825155))))

(assert (=> b!6290771 (= res!2594352 (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357258))))))

(declare-fun b!6290772 () Bool)

(assert (=> b!6290772 (= e!3825151 (Some!16103 (tuple2!66385 Nil!64814 s!2326)))))

(declare-fun b!6290773 () Bool)

(declare-fun e!3825152 () Bool)

(assert (=> b!6290773 (= e!3825152 (matchR!8396 lt!2357053 s!2326))))

(declare-fun b!6290774 () Bool)

(assert (=> b!6290774 (= e!3825155 (= (++!14286 (_1!36495 (get!22408 lt!2357258)) (_2!36495 (get!22408 lt!2357258))) s!2326))))

(declare-fun d!1974036 () Bool)

(declare-fun e!3825153 () Bool)

(assert (=> d!1974036 e!3825153))

(declare-fun res!2594355 () Bool)

(assert (=> d!1974036 (=> res!2594355 e!3825153)))

(assert (=> d!1974036 (= res!2594355 e!3825155)))

(declare-fun res!2594351 () Bool)

(assert (=> d!1974036 (=> (not res!2594351) (not e!3825155))))

(assert (=> d!1974036 (= res!2594351 (isDefined!12807 lt!2357258))))

(assert (=> d!1974036 (= lt!2357258 e!3825151)))

(declare-fun c!1141568 () Bool)

(assert (=> d!1974036 (= c!1141568 e!3825152)))

(declare-fun res!2594354 () Bool)

(assert (=> d!1974036 (=> (not res!2594354) (not e!3825152))))

(assert (=> d!1974036 (= res!2594354 (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) Nil!64814))))

(assert (=> d!1974036 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974036 (= (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326) lt!2357258)))

(declare-fun b!6290766 () Bool)

(assert (=> b!6290766 (= e!3825153 (not (isDefined!12807 lt!2357258)))))

(assert (= (and d!1974036 res!2594354) b!6290773))

(assert (= (and d!1974036 c!1141568) b!6290772))

(assert (= (and d!1974036 (not c!1141568)) b!6290768))

(assert (= (and b!6290768 c!1141567) b!6290769))

(assert (= (and b!6290768 (not c!1141567)) b!6290767))

(assert (= (and d!1974036 res!2594351) b!6290771))

(assert (= (and b!6290771 res!2594352) b!6290770))

(assert (= (and b!6290770 res!2594353) b!6290774))

(assert (= (and d!1974036 (not res!2594355)) b!6290766))

(declare-fun m!7111354 () Bool)

(assert (=> b!6290766 m!7111354))

(assert (=> d!1974036 m!7111354))

(declare-fun m!7111356 () Bool)

(assert (=> d!1974036 m!7111356))

(assert (=> d!1974036 m!7111266))

(declare-fun m!7111358 () Bool)

(assert (=> b!6290771 m!7111358))

(declare-fun m!7111360 () Bool)

(assert (=> b!6290771 m!7111360))

(assert (=> b!6290774 m!7111358))

(declare-fun m!7111362 () Bool)

(assert (=> b!6290774 m!7111362))

(declare-fun m!7111364 () Bool)

(assert (=> b!6290773 m!7111364))

(assert (=> b!6290767 m!7111182))

(assert (=> b!6290767 m!7111182))

(assert (=> b!6290767 m!7111184))

(assert (=> b!6290767 m!7111186))

(assert (=> b!6290767 m!7111182))

(declare-fun m!7111366 () Bool)

(assert (=> b!6290767 m!7111366))

(assert (=> b!6290770 m!7111358))

(declare-fun m!7111368 () Bool)

(assert (=> b!6290770 m!7111368))

(assert (=> b!6289815 d!1974036))

(declare-fun d!1974038 () Bool)

(assert (=> d!1974038 (= (Exists!3283 lambda!345482) (choose!46739 lambda!345482))))

(declare-fun bs!1572271 () Bool)

(assert (= bs!1572271 d!1974038))

(declare-fun m!7111370 () Bool)

(assert (=> bs!1572271 m!7111370))

(assert (=> b!6289815 d!1974038))

(declare-fun bs!1572272 () Bool)

(declare-fun d!1974040 () Bool)

(assert (= bs!1572272 (and d!1974040 b!6289815)))

(declare-fun lambda!345578 () Int)

(assert (=> bs!1572272 (= lambda!345578 lambda!345482)))

(declare-fun bs!1572273 () Bool)

(assert (= bs!1572273 (and d!1974040 d!1974006)))

(assert (=> bs!1572273 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345578 lambda!345573))))

(declare-fun bs!1572274 () Bool)

(assert (= bs!1572274 (and d!1974040 b!6290728)))

(assert (=> bs!1572274 (not (= lambda!345578 lambda!345576))))

(declare-fun bs!1572275 () Bool)

(assert (= bs!1572275 (and d!1974040 d!1974010)))

(assert (=> bs!1572275 (= lambda!345578 lambda!345574)))

(declare-fun bs!1572276 () Bool)

(assert (= bs!1572276 (and d!1974040 d!1973990)))

(assert (=> bs!1572276 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345578 lambda!345565))))

(assert (=> bs!1572272 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345578 lambda!345484))))

(declare-fun bs!1572277 () Bool)

(assert (= bs!1572277 (and d!1974040 b!6289816)))

(assert (=> bs!1572277 (not (= lambda!345578 lambda!345480))))

(assert (=> bs!1572272 (not (= lambda!345578 lambda!345483))))

(declare-fun bs!1572278 () Bool)

(assert (= bs!1572278 (and d!1974040 d!1973988)))

(assert (=> bs!1572278 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345578 lambda!345560))))

(declare-fun bs!1572279 () Bool)

(assert (= bs!1572279 (and d!1974040 b!6290675)))

(assert (=> bs!1572279 (not (= lambda!345578 lambda!345567))))

(assert (=> bs!1572276 (not (= lambda!345578 lambda!345566))))

(declare-fun bs!1572280 () Bool)

(assert (= bs!1572280 (and d!1974040 b!6290457)))

(assert (=> bs!1572280 (not (= lambda!345578 lambda!345553))))

(assert (=> bs!1572272 (not (= lambda!345578 lambda!345485))))

(declare-fun bs!1572281 () Bool)

(assert (= bs!1572281 (and d!1974040 b!6290737)))

(assert (=> bs!1572281 (not (= lambda!345578 lambda!345575))))

(assert (=> bs!1572277 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345578 lambda!345479))))

(declare-fun bs!1572282 () Bool)

(assert (= bs!1572282 (and d!1974040 b!6290448)))

(assert (=> bs!1572282 (not (= lambda!345578 lambda!345554))))

(declare-fun bs!1572283 () Bool)

(assert (= bs!1572283 (and d!1974040 b!6290666)))

(assert (=> bs!1572283 (not (= lambda!345578 lambda!345568))))

(assert (=> d!1974040 true))

(assert (=> d!1974040 true))

(assert (=> d!1974040 true))

(declare-fun lambda!345579 () Int)

(assert (=> bs!1572272 (not (= lambda!345579 lambda!345482))))

(assert (=> bs!1572273 (not (= lambda!345579 lambda!345573))))

(declare-fun bs!1572284 () Bool)

(assert (= bs!1572284 d!1974040))

(assert (=> bs!1572284 (not (= lambda!345579 lambda!345578))))

(assert (=> bs!1572274 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357070)) (= lt!2357070 (regTwo!32938 lt!2357070))) (= lambda!345579 lambda!345576))))

(assert (=> bs!1572275 (not (= lambda!345579 lambda!345574))))

(assert (=> bs!1572276 (not (= lambda!345579 lambda!345565))))

(assert (=> bs!1572272 (not (= lambda!345579 lambda!345484))))

(assert (=> bs!1572277 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345579 lambda!345480))))

(assert (=> bs!1572272 (= lambda!345579 lambda!345483)))

(assert (=> bs!1572278 (not (= lambda!345579 lambda!345560))))

(assert (=> bs!1572279 (not (= lambda!345579 lambda!345567))))

(assert (=> bs!1572276 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345579 lambda!345566))))

(assert (=> bs!1572280 (not (= lambda!345579 lambda!345553))))

(assert (=> bs!1572272 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345579 lambda!345485))))

(assert (=> bs!1572281 (not (= lambda!345579 lambda!345575))))

(assert (=> bs!1572277 (not (= lambda!345579 lambda!345479))))

(assert (=> bs!1572282 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345579 lambda!345554))))

(assert (=> bs!1572283 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357061)) (= lt!2357070 (regTwo!32938 lt!2357061))) (= lambda!345579 lambda!345568))))

(assert (=> d!1974040 true))

(assert (=> d!1974040 true))

(assert (=> d!1974040 true))

(assert (=> d!1974040 (= (Exists!3283 lambda!345578) (Exists!3283 lambda!345579))))

(declare-fun lt!2357261 () Unit!158183)

(assert (=> d!1974040 (= lt!2357261 (choose!46741 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326))))

(assert (=> d!1974040 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974040 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326) lt!2357261)))

(declare-fun m!7111372 () Bool)

(assert (=> bs!1572284 m!7111372))

(declare-fun m!7111374 () Bool)

(assert (=> bs!1572284 m!7111374))

(declare-fun m!7111376 () Bool)

(assert (=> bs!1572284 m!7111376))

(assert (=> bs!1572284 m!7111274))

(assert (=> b!6289815 d!1974040))

(declare-fun bs!1572285 () Bool)

(declare-fun d!1974042 () Bool)

(assert (= bs!1572285 (and d!1974042 b!6289815)))

(declare-fun lambda!345580 () Int)

(assert (=> bs!1572285 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345580 lambda!345482))))

(declare-fun bs!1572286 () Bool)

(assert (= bs!1572286 (and d!1974042 d!1974040)))

(assert (=> bs!1572286 (not (= lambda!345580 lambda!345579))))

(declare-fun bs!1572287 () Bool)

(assert (= bs!1572287 (and d!1974042 d!1974006)))

(assert (=> bs!1572287 (= lambda!345580 lambda!345573)))

(assert (=> bs!1572286 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345580 lambda!345578))))

(declare-fun bs!1572288 () Bool)

(assert (= bs!1572288 (and d!1974042 b!6290728)))

(assert (=> bs!1572288 (not (= lambda!345580 lambda!345576))))

(declare-fun bs!1572289 () Bool)

(assert (= bs!1572289 (and d!1974042 d!1974010)))

(assert (=> bs!1572289 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345580 lambda!345574))))

(declare-fun bs!1572290 () Bool)

(assert (= bs!1572290 (and d!1974042 d!1973990)))

(assert (=> bs!1572290 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345580 lambda!345565))))

(assert (=> bs!1572285 (= lambda!345580 lambda!345484)))

(declare-fun bs!1572291 () Bool)

(assert (= bs!1572291 (and d!1974042 b!6289816)))

(assert (=> bs!1572291 (not (= lambda!345580 lambda!345480))))

(assert (=> bs!1572285 (not (= lambda!345580 lambda!345483))))

(declare-fun bs!1572292 () Bool)

(assert (= bs!1572292 (and d!1974042 d!1973988)))

(assert (=> bs!1572292 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345580 lambda!345560))))

(declare-fun bs!1572293 () Bool)

(assert (= bs!1572293 (and d!1974042 b!6290675)))

(assert (=> bs!1572293 (not (= lambda!345580 lambda!345567))))

(assert (=> bs!1572290 (not (= lambda!345580 lambda!345566))))

(declare-fun bs!1572294 () Bool)

(assert (= bs!1572294 (and d!1974042 b!6290457)))

(assert (=> bs!1572294 (not (= lambda!345580 lambda!345553))))

(assert (=> bs!1572285 (not (= lambda!345580 lambda!345485))))

(declare-fun bs!1572295 () Bool)

(assert (= bs!1572295 (and d!1974042 b!6290737)))

(assert (=> bs!1572295 (not (= lambda!345580 lambda!345575))))

(assert (=> bs!1572291 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345580 lambda!345479))))

(declare-fun bs!1572296 () Bool)

(assert (= bs!1572296 (and d!1974042 b!6290448)))

(assert (=> bs!1572296 (not (= lambda!345580 lambda!345554))))

(declare-fun bs!1572297 () Bool)

(assert (= bs!1572297 (and d!1974042 b!6290666)))

(assert (=> bs!1572297 (not (= lambda!345580 lambda!345568))))

(assert (=> d!1974042 true))

(assert (=> d!1974042 true))

(assert (=> d!1974042 true))

(declare-fun lambda!345581 () Int)

(assert (=> bs!1572285 (not (= lambda!345581 lambda!345482))))

(assert (=> bs!1572286 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345581 lambda!345579))))

(assert (=> bs!1572287 (not (= lambda!345581 lambda!345573))))

(assert (=> bs!1572286 (not (= lambda!345581 lambda!345578))))

(assert (=> bs!1572288 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357070)) (= lt!2357053 (regTwo!32938 lt!2357070))) (= lambda!345581 lambda!345576))))

(assert (=> bs!1572290 (not (= lambda!345581 lambda!345565))))

(assert (=> bs!1572285 (not (= lambda!345581 lambda!345484))))

(assert (=> bs!1572291 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345581 lambda!345480))))

(assert (=> bs!1572285 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345581 lambda!345483))))

(assert (=> bs!1572292 (not (= lambda!345581 lambda!345560))))

(assert (=> bs!1572293 (not (= lambda!345581 lambda!345567))))

(assert (=> bs!1572290 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345581 lambda!345566))))

(assert (=> bs!1572294 (not (= lambda!345581 lambda!345553))))

(assert (=> bs!1572285 (= lambda!345581 lambda!345485)))

(assert (=> bs!1572295 (not (= lambda!345581 lambda!345575))))

(assert (=> bs!1572289 (not (= lambda!345581 lambda!345574))))

(declare-fun bs!1572298 () Bool)

(assert (= bs!1572298 d!1974042))

(assert (=> bs!1572298 (not (= lambda!345581 lambda!345580))))

(assert (=> bs!1572291 (not (= lambda!345581 lambda!345479))))

(assert (=> bs!1572296 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345581 lambda!345554))))

(assert (=> bs!1572297 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357061)) (= lt!2357053 (regTwo!32938 lt!2357061))) (= lambda!345581 lambda!345568))))

(assert (=> d!1974042 true))

(assert (=> d!1974042 true))

(assert (=> d!1974042 true))

(assert (=> d!1974042 (= (Exists!3283 lambda!345580) (Exists!3283 lambda!345581))))

(declare-fun lt!2357262 () Unit!158183)

(assert (=> d!1974042 (= lt!2357262 (choose!46741 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(assert (=> d!1974042 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974042 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1820 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) lt!2357262)))

(declare-fun m!7111378 () Bool)

(assert (=> bs!1572298 m!7111378))

(declare-fun m!7111380 () Bool)

(assert (=> bs!1572298 m!7111380))

(declare-fun m!7111382 () Bool)

(assert (=> bs!1572298 m!7111382))

(assert (=> bs!1572298 m!7111266))

(assert (=> b!6289815 d!1974042))

(declare-fun d!1974044 () Bool)

(assert (=> d!1974044 (= (Exists!3283 lambda!345483) (choose!46739 lambda!345483))))

(declare-fun bs!1572299 () Bool)

(assert (= bs!1572299 d!1974044))

(declare-fun m!7111384 () Bool)

(assert (=> bs!1572299 m!7111384))

(assert (=> b!6289815 d!1974044))

(declare-fun b!6290781 () Bool)

(assert (=> b!6290781 true))

(declare-fun bs!1572300 () Bool)

(declare-fun b!6290783 () Bool)

(assert (= bs!1572300 (and b!6290783 b!6290781)))

(declare-fun lt!2357274 () Int)

(declare-fun lt!2357271 () Int)

(declare-fun lambda!345590 () Int)

(declare-fun lambda!345589 () Int)

(assert (=> bs!1572300 (= (= lt!2357271 lt!2357274) (= lambda!345590 lambda!345589))))

(assert (=> b!6290783 true))

(declare-fun d!1974046 () Bool)

(declare-fun e!3825160 () Bool)

(assert (=> d!1974046 e!3825160))

(declare-fun res!2594358 () Bool)

(assert (=> d!1974046 (=> (not res!2594358) (not e!3825160))))

(assert (=> d!1974046 (= res!2594358 (>= lt!2357271 0))))

(declare-fun e!3825161 () Int)

(assert (=> d!1974046 (= lt!2357271 e!3825161)))

(declare-fun c!1141577 () Bool)

(assert (=> d!1974046 (= c!1141577 ((_ is Cons!64816) lt!2357078))))

(assert (=> d!1974046 (= (zipperDepth!338 lt!2357078) lt!2357271)))

(assert (=> b!6290781 (= e!3825161 lt!2357274)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!229 (Context!11194) Int)

(assert (=> b!6290781 (= lt!2357274 (maxBigInt!0 (contextDepth!229 (h!71264 lt!2357078)) (zipperDepth!338 (t!378502 lt!2357078))))))

(declare-fun lt!2357273 () Unit!158183)

(declare-fun lambda!345588 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!213 (List!64940 Int Int Int) Unit!158183)

(assert (=> b!6290781 (= lt!2357273 (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 lt!2357078) lt!2357274 (zipperDepth!338 (t!378502 lt!2357078)) lambda!345588))))

(declare-fun forall!15363 (List!64940 Int) Bool)

(assert (=> b!6290781 (forall!15363 (t!378502 lt!2357078) lambda!345589)))

(declare-fun lt!2357272 () Unit!158183)

(assert (=> b!6290781 (= lt!2357272 lt!2357273)))

(declare-fun b!6290782 () Bool)

(assert (=> b!6290782 (= e!3825161 0)))

(assert (=> b!6290783 (= e!3825160 (forall!15363 lt!2357078 lambda!345590))))

(assert (= (and d!1974046 c!1141577) b!6290781))

(assert (= (and d!1974046 (not c!1141577)) b!6290782))

(assert (= (and d!1974046 res!2594358) b!6290783))

(declare-fun m!7111386 () Bool)

(assert (=> b!6290781 m!7111386))

(declare-fun m!7111388 () Bool)

(assert (=> b!6290781 m!7111388))

(declare-fun m!7111390 () Bool)

(assert (=> b!6290781 m!7111390))

(assert (=> b!6290781 m!7111388))

(assert (=> b!6290781 m!7111386))

(assert (=> b!6290781 m!7111388))

(declare-fun m!7111392 () Bool)

(assert (=> b!6290781 m!7111392))

(declare-fun m!7111394 () Bool)

(assert (=> b!6290781 m!7111394))

(declare-fun m!7111396 () Bool)

(assert (=> b!6290783 m!7111396))

(assert (=> b!6289794 d!1974046))

(declare-fun bs!1572301 () Bool)

(declare-fun b!6290786 () Bool)

(assert (= bs!1572301 (and b!6290786 b!6290781)))

(declare-fun lambda!345591 () Int)

(assert (=> bs!1572301 (= lambda!345591 lambda!345588)))

(declare-fun lt!2357278 () Int)

(declare-fun lambda!345592 () Int)

(assert (=> bs!1572301 (= (= lt!2357278 lt!2357274) (= lambda!345592 lambda!345589))))

(declare-fun bs!1572302 () Bool)

(assert (= bs!1572302 (and b!6290786 b!6290783)))

(assert (=> bs!1572302 (= (= lt!2357278 lt!2357271) (= lambda!345592 lambda!345590))))

(assert (=> b!6290786 true))

(declare-fun bs!1572303 () Bool)

(declare-fun b!6290788 () Bool)

(assert (= bs!1572303 (and b!6290788 b!6290781)))

(declare-fun lt!2357275 () Int)

(declare-fun lambda!345593 () Int)

(assert (=> bs!1572303 (= (= lt!2357275 lt!2357274) (= lambda!345593 lambda!345589))))

(declare-fun bs!1572304 () Bool)

(assert (= bs!1572304 (and b!6290788 b!6290783)))

(assert (=> bs!1572304 (= (= lt!2357275 lt!2357271) (= lambda!345593 lambda!345590))))

(declare-fun bs!1572305 () Bool)

(assert (= bs!1572305 (and b!6290788 b!6290786)))

(assert (=> bs!1572305 (= (= lt!2357275 lt!2357278) (= lambda!345593 lambda!345592))))

(assert (=> b!6290788 true))

(declare-fun d!1974048 () Bool)

(declare-fun e!3825162 () Bool)

(assert (=> d!1974048 e!3825162))

(declare-fun res!2594359 () Bool)

(assert (=> d!1974048 (=> (not res!2594359) (not e!3825162))))

(assert (=> d!1974048 (= res!2594359 (>= lt!2357275 0))))

(declare-fun e!3825163 () Int)

(assert (=> d!1974048 (= lt!2357275 e!3825163)))

(declare-fun c!1141578 () Bool)

(assert (=> d!1974048 (= c!1141578 ((_ is Cons!64816) zl!343))))

(assert (=> d!1974048 (= (zipperDepth!338 zl!343) lt!2357275)))

(assert (=> b!6290786 (= e!3825163 lt!2357278)))

(assert (=> b!6290786 (= lt!2357278 (maxBigInt!0 (contextDepth!229 (h!71264 zl!343)) (zipperDepth!338 (t!378502 zl!343))))))

(declare-fun lt!2357277 () Unit!158183)

(assert (=> b!6290786 (= lt!2357277 (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 zl!343) lt!2357278 (zipperDepth!338 (t!378502 zl!343)) lambda!345591))))

(assert (=> b!6290786 (forall!15363 (t!378502 zl!343) lambda!345592)))

(declare-fun lt!2357276 () Unit!158183)

(assert (=> b!6290786 (= lt!2357276 lt!2357277)))

(declare-fun b!6290787 () Bool)

(assert (=> b!6290787 (= e!3825163 0)))

(assert (=> b!6290788 (= e!3825162 (forall!15363 zl!343 lambda!345593))))

(assert (= (and d!1974048 c!1141578) b!6290786))

(assert (= (and d!1974048 (not c!1141578)) b!6290787))

(assert (= (and d!1974048 res!2594359) b!6290788))

(declare-fun m!7111398 () Bool)

(assert (=> b!6290786 m!7111398))

(declare-fun m!7111400 () Bool)

(assert (=> b!6290786 m!7111400))

(declare-fun m!7111402 () Bool)

(assert (=> b!6290786 m!7111402))

(assert (=> b!6290786 m!7111400))

(assert (=> b!6290786 m!7111398))

(assert (=> b!6290786 m!7111400))

(declare-fun m!7111404 () Bool)

(assert (=> b!6290786 m!7111404))

(declare-fun m!7111406 () Bool)

(assert (=> b!6290786 m!7111406))

(declare-fun m!7111408 () Bool)

(assert (=> b!6290788 m!7111408))

(assert (=> b!6289794 d!1974048))

(declare-fun bs!1572306 () Bool)

(declare-fun d!1974050 () Bool)

(assert (= bs!1572306 (and d!1974050 d!1973910)))

(declare-fun lambda!345596 () Int)

(assert (=> bs!1572306 (= lambda!345596 lambda!345546)))

(declare-fun bs!1572307 () Bool)

(assert (= bs!1572307 (and d!1974050 d!1973998)))

(assert (=> bs!1572307 (= lambda!345596 lambda!345571)))

(declare-fun bs!1572308 () Bool)

(assert (= bs!1572308 (and d!1974050 d!1974034)))

(assert (=> bs!1572308 (= lambda!345596 lambda!345577)))

(declare-fun bs!1572309 () Bool)

(assert (= bs!1572309 (and d!1974050 d!1973900)))

(assert (=> bs!1572309 (= lambda!345596 lambda!345542)))

(declare-fun bs!1572310 () Bool)

(assert (= bs!1572310 (and d!1974050 d!1974004)))

(assert (=> bs!1572310 (= lambda!345596 lambda!345572)))

(assert (=> d!1974050 (= (inv!83779 setElem!42812) (forall!15362 (exprs!6097 setElem!42812) lambda!345596))))

(declare-fun bs!1572311 () Bool)

(assert (= bs!1572311 d!1974050))

(declare-fun m!7111410 () Bool)

(assert (=> bs!1572311 m!7111410))

(assert (=> setNonEmpty!42812 d!1974050))

(declare-fun d!1974052 () Bool)

(declare-fun c!1141579 () Bool)

(assert (=> d!1974052 (= c!1141579 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825164 () Bool)

(assert (=> d!1974052 (= (matchZipper!2225 lt!2357093 (t!378500 s!2326)) e!3825164)))

(declare-fun b!6290789 () Bool)

(assert (=> b!6290789 (= e!3825164 (nullableZipper!1983 lt!2357093))))

(declare-fun b!6290790 () Bool)

(assert (=> b!6290790 (= e!3825164 (matchZipper!2225 (derivationStepZipper!2179 lt!2357093 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974052 c!1141579) b!6290789))

(assert (= (and d!1974052 (not c!1141579)) b!6290790))

(assert (=> d!1974052 m!7111104))

(declare-fun m!7111412 () Bool)

(assert (=> b!6290789 m!7111412))

(assert (=> b!6290790 m!7111108))

(assert (=> b!6290790 m!7111108))

(declare-fun m!7111414 () Bool)

(assert (=> b!6290790 m!7111414))

(assert (=> b!6290790 m!7111112))

(assert (=> b!6290790 m!7111414))

(assert (=> b!6290790 m!7111112))

(declare-fun m!7111416 () Bool)

(assert (=> b!6290790 m!7111416))

(assert (=> b!6289793 d!1974052))

(declare-fun d!1974054 () Bool)

(declare-fun lt!2357281 () Regex!16213)

(assert (=> d!1974054 (validRegex!7949 lt!2357281)))

(assert (=> d!1974054 (= lt!2357281 (generalisedUnion!2057 (unfocusZipperList!1634 zl!343)))))

(assert (=> d!1974054 (= (unfocusZipper!1955 zl!343) lt!2357281)))

(declare-fun bs!1572312 () Bool)

(assert (= bs!1572312 d!1974054))

(declare-fun m!7111418 () Bool)

(assert (=> bs!1572312 m!7111418))

(assert (=> bs!1572312 m!7110342))

(assert (=> bs!1572312 m!7110342))

(assert (=> bs!1572312 m!7110344))

(assert (=> b!6289812 d!1974054))

(declare-fun bs!1572313 () Bool)

(declare-fun d!1974056 () Bool)

(assert (= bs!1572313 (and d!1974056 d!1973910)))

(declare-fun lambda!345597 () Int)

(assert (=> bs!1572313 (= lambda!345597 lambda!345546)))

(declare-fun bs!1572314 () Bool)

(assert (= bs!1572314 (and d!1974056 d!1973998)))

(assert (=> bs!1572314 (= lambda!345597 lambda!345571)))

(declare-fun bs!1572315 () Bool)

(assert (= bs!1572315 (and d!1974056 d!1974034)))

(assert (=> bs!1572315 (= lambda!345597 lambda!345577)))

(declare-fun bs!1572316 () Bool)

(assert (= bs!1572316 (and d!1974056 d!1973900)))

(assert (=> bs!1572316 (= lambda!345597 lambda!345542)))

(declare-fun bs!1572317 () Bool)

(assert (= bs!1572317 (and d!1974056 d!1974050)))

(assert (=> bs!1572317 (= lambda!345597 lambda!345596)))

(declare-fun bs!1572318 () Bool)

(assert (= bs!1572318 (and d!1974056 d!1974004)))

(assert (=> bs!1572318 (= lambda!345597 lambda!345572)))

(assert (=> d!1974056 (= (inv!83779 (h!71264 zl!343)) (forall!15362 (exprs!6097 (h!71264 zl!343)) lambda!345597))))

(declare-fun bs!1572319 () Bool)

(assert (= bs!1572319 d!1974056))

(declare-fun m!7111420 () Bool)

(assert (=> bs!1572319 m!7111420))

(assert (=> b!6289792 d!1974056))

(assert (=> b!6289811 d!1973980))

(declare-fun d!1974058 () Bool)

(declare-fun dynLambda!25647 (Int Context!11194) (InoxSet Context!11194))

(assert (=> d!1974058 (= (flatMap!1718 lt!2357071 lambda!345481) (dynLambda!25647 lambda!345481 lt!2357083))))

(declare-fun lt!2357284 () Unit!158183)

(declare-fun choose!46745 ((InoxSet Context!11194) Context!11194 Int) Unit!158183)

(assert (=> d!1974058 (= lt!2357284 (choose!46745 lt!2357071 lt!2357083 lambda!345481))))

(assert (=> d!1974058 (= lt!2357071 (store ((as const (Array Context!11194 Bool)) false) lt!2357083 true))))

(assert (=> d!1974058 (= (lemmaFlatMapOnSingletonSet!1244 lt!2357071 lt!2357083 lambda!345481) lt!2357284)))

(declare-fun b_lambda!239353 () Bool)

(assert (=> (not b_lambda!239353) (not d!1974058)))

(declare-fun bs!1572320 () Bool)

(assert (= bs!1572320 d!1974058))

(assert (=> bs!1572320 m!7110490))

(declare-fun m!7111422 () Bool)

(assert (=> bs!1572320 m!7111422))

(declare-fun m!7111424 () Bool)

(assert (=> bs!1572320 m!7111424))

(assert (=> bs!1572320 m!7110496))

(assert (=> b!6289810 d!1974058))

(declare-fun d!1974060 () Bool)

(declare-fun choose!46746 ((InoxSet Context!11194) Int) (InoxSet Context!11194))

(assert (=> d!1974060 (= (flatMap!1718 lt!2357071 lambda!345481) (choose!46746 lt!2357071 lambda!345481))))

(declare-fun bs!1572321 () Bool)

(assert (= bs!1572321 d!1974060))

(declare-fun m!7111426 () Bool)

(assert (=> bs!1572321 m!7111426))

(assert (=> b!6289810 d!1974060))

(declare-fun b!6290801 () Bool)

(declare-fun e!3825173 () Bool)

(assert (=> b!6290801 (= e!3825173 (nullable!6206 (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun b!6290802 () Bool)

(declare-fun e!3825171 () (InoxSet Context!11194))

(assert (=> b!6290802 (= e!3825171 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290803 () Bool)

(declare-fun call!532621 () (InoxSet Context!11194))

(assert (=> b!6290803 (= e!3825171 call!532621)))

(declare-fun b!6290804 () Bool)

(declare-fun e!3825172 () (InoxSet Context!11194))

(assert (=> b!6290804 (= e!3825172 ((_ map or) call!532621 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (h!71262 s!2326))))))

(declare-fun d!1974062 () Bool)

(declare-fun c!1141584 () Bool)

(assert (=> d!1974062 (= c!1141584 e!3825173)))

(declare-fun res!2594362 () Bool)

(assert (=> d!1974062 (=> (not res!2594362) (not e!3825173))))

(assert (=> d!1974062 (= res!2594362 ((_ is Cons!64815) (exprs!6097 lt!2357083)))))

(assert (=> d!1974062 (= (derivationStepZipperUp!1387 lt!2357083 (h!71262 s!2326)) e!3825172)))

(declare-fun bm!532616 () Bool)

(assert (=> bm!532616 (= call!532621 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357083)) (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (h!71262 s!2326)))))

(declare-fun b!6290805 () Bool)

(assert (=> b!6290805 (= e!3825172 e!3825171)))

(declare-fun c!1141585 () Bool)

(assert (=> b!6290805 (= c!1141585 ((_ is Cons!64815) (exprs!6097 lt!2357083)))))

(assert (= (and d!1974062 res!2594362) b!6290801))

(assert (= (and d!1974062 c!1141584) b!6290804))

(assert (= (and d!1974062 (not c!1141584)) b!6290805))

(assert (= (and b!6290805 c!1141585) b!6290803))

(assert (= (and b!6290805 (not c!1141585)) b!6290802))

(assert (= (or b!6290804 b!6290803) bm!532616))

(declare-fun m!7111428 () Bool)

(assert (=> b!6290801 m!7111428))

(declare-fun m!7111430 () Bool)

(assert (=> b!6290804 m!7111430))

(declare-fun m!7111432 () Bool)

(assert (=> bm!532616 m!7111432))

(assert (=> b!6289810 d!1974062))

(declare-fun bs!1572322 () Bool)

(declare-fun d!1974064 () Bool)

(assert (= bs!1572322 (and d!1974064 b!6289808)))

(declare-fun lambda!345598 () Int)

(assert (=> bs!1572322 (= lambda!345598 lambda!345481)))

(declare-fun bs!1572323 () Bool)

(assert (= bs!1572323 (and d!1974064 d!1973976)))

(assert (=> bs!1572323 (= lambda!345598 lambda!345557)))

(assert (=> d!1974064 true))

(assert (=> d!1974064 (= (derivationStepZipper!2179 lt!2357071 (h!71262 s!2326)) (flatMap!1718 lt!2357071 lambda!345598))))

(declare-fun bs!1572324 () Bool)

(assert (= bs!1572324 d!1974064))

(declare-fun m!7111434 () Bool)

(assert (=> bs!1572324 m!7111434))

(assert (=> b!6289810 d!1974064))

(declare-fun b!6290806 () Bool)

(declare-fun e!3825176 () Bool)

(assert (=> b!6290806 (= e!3825176 (nullable!6206 (h!71263 (exprs!6097 lt!2357094))))))

(declare-fun b!6290807 () Bool)

(declare-fun e!3825174 () (InoxSet Context!11194))

(assert (=> b!6290807 (= e!3825174 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290808 () Bool)

(declare-fun call!532622 () (InoxSet Context!11194))

(assert (=> b!6290808 (= e!3825174 call!532622)))

(declare-fun b!6290809 () Bool)

(declare-fun e!3825175 () (InoxSet Context!11194))

(assert (=> b!6290809 (= e!3825175 ((_ map or) call!532622 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (h!71262 s!2326))))))

(declare-fun d!1974066 () Bool)

(declare-fun c!1141586 () Bool)

(assert (=> d!1974066 (= c!1141586 e!3825176)))

(declare-fun res!2594363 () Bool)

(assert (=> d!1974066 (=> (not res!2594363) (not e!3825176))))

(assert (=> d!1974066 (= res!2594363 ((_ is Cons!64815) (exprs!6097 lt!2357094)))))

(assert (=> d!1974066 (= (derivationStepZipperUp!1387 lt!2357094 (h!71262 s!2326)) e!3825175)))

(declare-fun bm!532617 () Bool)

(assert (=> bm!532617 (= call!532622 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357094)) (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (h!71262 s!2326)))))

(declare-fun b!6290810 () Bool)

(assert (=> b!6290810 (= e!3825175 e!3825174)))

(declare-fun c!1141587 () Bool)

(assert (=> b!6290810 (= c!1141587 ((_ is Cons!64815) (exprs!6097 lt!2357094)))))

(assert (= (and d!1974066 res!2594363) b!6290806))

(assert (= (and d!1974066 c!1141586) b!6290809))

(assert (= (and d!1974066 (not c!1141586)) b!6290810))

(assert (= (and b!6290810 c!1141587) b!6290808))

(assert (= (and b!6290810 (not c!1141587)) b!6290807))

(assert (= (or b!6290809 b!6290808) bm!532617))

(declare-fun m!7111436 () Bool)

(assert (=> b!6290806 m!7111436))

(declare-fun m!7111438 () Bool)

(assert (=> b!6290809 m!7111438))

(declare-fun m!7111440 () Bool)

(assert (=> bm!532617 m!7111440))

(assert (=> b!6289810 d!1974066))

(declare-fun d!1974068 () Bool)

(assert (=> d!1974068 (= (isEmpty!36869 (t!378502 zl!343)) ((_ is Nil!64816) (t!378502 zl!343)))))

(assert (=> b!6289790 d!1974068))

(declare-fun bm!532630 () Bool)

(declare-fun c!1141598 () Bool)

(declare-fun call!532635 () List!64939)

(declare-fun call!532637 () (InoxSet Context!11194))

(assert (=> bm!532630 (= call!532637 (derivationStepZipperDown!1461 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))) (ite c!1141598 lt!2357077 (Context!11195 call!532635)) (h!71262 s!2326)))))

(declare-fun b!6290833 () Bool)

(declare-fun e!3825192 () Bool)

(assert (=> b!6290833 (= e!3825192 (nullable!6206 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun bm!532631 () Bool)

(declare-fun call!532639 () (InoxSet Context!11194))

(declare-fun call!532636 () (InoxSet Context!11194))

(assert (=> bm!532631 (= call!532639 call!532636)))

(declare-fun d!1974070 () Bool)

(declare-fun c!1141602 () Bool)

(assert (=> d!1974070 (= c!1141602 (and ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32938 r!7292))) (= (c!1141284 (regTwo!32938 (regOne!32938 r!7292))) (h!71262 s!2326))))))

(declare-fun e!3825189 () (InoxSet Context!11194))

(assert (=> d!1974070 (= (derivationStepZipperDown!1461 (regTwo!32938 (regOne!32938 r!7292)) lt!2357077 (h!71262 s!2326)) e!3825189)))

(declare-fun b!6290834 () Bool)

(assert (=> b!6290834 (= e!3825189 (store ((as const (Array Context!11194 Bool)) false) lt!2357077 true))))

(declare-fun c!1141601 () Bool)

(declare-fun call!532640 () List!64939)

(declare-fun c!1141600 () Bool)

(declare-fun bm!532632 () Bool)

(assert (=> bm!532632 (= call!532636 (derivationStepZipperDown!1461 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))) (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640)) (h!71262 s!2326)))))

(declare-fun b!6290835 () Bool)

(declare-fun e!3825191 () (InoxSet Context!11194))

(declare-fun call!532638 () (InoxSet Context!11194))

(assert (=> b!6290835 (= e!3825191 call!532638)))

(declare-fun b!6290836 () Bool)

(declare-fun e!3825194 () (InoxSet Context!11194))

(declare-fun e!3825193 () (InoxSet Context!11194))

(assert (=> b!6290836 (= e!3825194 e!3825193)))

(assert (=> b!6290836 (= c!1141601 ((_ is Concat!25058) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6290837 () Bool)

(assert (=> b!6290837 (= e!3825191 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290838 () Bool)

(declare-fun e!3825190 () (InoxSet Context!11194))

(assert (=> b!6290838 (= e!3825190 ((_ map or) call!532637 call!532636))))

(declare-fun b!6290839 () Bool)

(assert (=> b!6290839 (= e!3825193 call!532638)))

(declare-fun b!6290840 () Bool)

(assert (=> b!6290840 (= c!1141600 e!3825192)))

(declare-fun res!2594366 () Bool)

(assert (=> b!6290840 (=> (not res!2594366) (not e!3825192))))

(assert (=> b!6290840 (= res!2594366 ((_ is Concat!25058) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (=> b!6290840 (= e!3825190 e!3825194)))

(declare-fun bm!532633 () Bool)

(declare-fun $colon$colon!2078 (List!64939 Regex!16213) List!64939)

(assert (=> bm!532633 (= call!532635 ($colon$colon!2078 (exprs!6097 lt!2357077) (ite (or c!1141600 c!1141601) (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6290841 () Bool)

(assert (=> b!6290841 (= e!3825194 ((_ map or) call!532637 call!532639))))

(declare-fun b!6290842 () Bool)

(declare-fun c!1141599 () Bool)

(assert (=> b!6290842 (= c!1141599 ((_ is Star!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (=> b!6290842 (= e!3825193 e!3825191)))

(declare-fun bm!532634 () Bool)

(assert (=> bm!532634 (= call!532640 call!532635)))

(declare-fun bm!532635 () Bool)

(assert (=> bm!532635 (= call!532638 call!532639)))

(declare-fun b!6290843 () Bool)

(assert (=> b!6290843 (= e!3825189 e!3825190)))

(assert (=> b!6290843 (= c!1141598 ((_ is Union!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (= (and d!1974070 c!1141602) b!6290834))

(assert (= (and d!1974070 (not c!1141602)) b!6290843))

(assert (= (and b!6290843 c!1141598) b!6290838))

(assert (= (and b!6290843 (not c!1141598)) b!6290840))

(assert (= (and b!6290840 res!2594366) b!6290833))

(assert (= (and b!6290840 c!1141600) b!6290841))

(assert (= (and b!6290840 (not c!1141600)) b!6290836))

(assert (= (and b!6290836 c!1141601) b!6290839))

(assert (= (and b!6290836 (not c!1141601)) b!6290842))

(assert (= (and b!6290842 c!1141599) b!6290835))

(assert (= (and b!6290842 (not c!1141599)) b!6290837))

(assert (= (or b!6290839 b!6290835) bm!532634))

(assert (= (or b!6290839 b!6290835) bm!532635))

(assert (= (or b!6290841 bm!532634) bm!532633))

(assert (= (or b!6290841 bm!532635) bm!532631))

(assert (= (or b!6290838 bm!532631) bm!532632))

(assert (= (or b!6290838 b!6290841) bm!532630))

(declare-fun m!7111442 () Bool)

(assert (=> b!6290833 m!7111442))

(declare-fun m!7111444 () Bool)

(assert (=> b!6290834 m!7111444))

(declare-fun m!7111446 () Bool)

(assert (=> bm!532630 m!7111446))

(declare-fun m!7111448 () Bool)

(assert (=> bm!532633 m!7111448))

(declare-fun m!7111450 () Bool)

(assert (=> bm!532632 m!7111450))

(assert (=> b!6289809 d!1974070))

(declare-fun c!1141603 () Bool)

(declare-fun call!532643 () (InoxSet Context!11194))

(declare-fun call!532641 () List!64939)

(declare-fun bm!532636 () Bool)

(assert (=> bm!532636 (= call!532643 (derivationStepZipperDown!1461 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))) (ite c!1141603 lt!2357094 (Context!11195 call!532641)) (h!71262 s!2326)))))

(declare-fun b!6290844 () Bool)

(declare-fun e!3825198 () Bool)

(assert (=> b!6290844 (= e!3825198 (nullable!6206 (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun bm!532637 () Bool)

(declare-fun call!532645 () (InoxSet Context!11194))

(declare-fun call!532642 () (InoxSet Context!11194))

(assert (=> bm!532637 (= call!532645 call!532642)))

(declare-fun d!1974072 () Bool)

(declare-fun c!1141607 () Bool)

(assert (=> d!1974072 (= c!1141607 (and ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292))) (= (c!1141284 (regOne!32938 (regOne!32938 r!7292))) (h!71262 s!2326))))))

(declare-fun e!3825195 () (InoxSet Context!11194))

(assert (=> d!1974072 (= (derivationStepZipperDown!1461 (regOne!32938 (regOne!32938 r!7292)) lt!2357094 (h!71262 s!2326)) e!3825195)))

(declare-fun b!6290845 () Bool)

(assert (=> b!6290845 (= e!3825195 (store ((as const (Array Context!11194 Bool)) false) lt!2357094 true))))

(declare-fun c!1141606 () Bool)

(declare-fun c!1141605 () Bool)

(declare-fun call!532646 () List!64939)

(declare-fun bm!532638 () Bool)

(assert (=> bm!532638 (= call!532642 (derivationStepZipperDown!1461 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))) (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646)) (h!71262 s!2326)))))

(declare-fun b!6290846 () Bool)

(declare-fun e!3825197 () (InoxSet Context!11194))

(declare-fun call!532644 () (InoxSet Context!11194))

(assert (=> b!6290846 (= e!3825197 call!532644)))

(declare-fun b!6290847 () Bool)

(declare-fun e!3825200 () (InoxSet Context!11194))

(declare-fun e!3825199 () (InoxSet Context!11194))

(assert (=> b!6290847 (= e!3825200 e!3825199)))

(assert (=> b!6290847 (= c!1141606 ((_ is Concat!25058) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6290848 () Bool)

(assert (=> b!6290848 (= e!3825197 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290849 () Bool)

(declare-fun e!3825196 () (InoxSet Context!11194))

(assert (=> b!6290849 (= e!3825196 ((_ map or) call!532643 call!532642))))

(declare-fun b!6290850 () Bool)

(assert (=> b!6290850 (= e!3825199 call!532644)))

(declare-fun b!6290851 () Bool)

(assert (=> b!6290851 (= c!1141605 e!3825198)))

(declare-fun res!2594367 () Bool)

(assert (=> b!6290851 (=> (not res!2594367) (not e!3825198))))

(assert (=> b!6290851 (= res!2594367 ((_ is Concat!25058) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> b!6290851 (= e!3825196 e!3825200)))

(declare-fun bm!532639 () Bool)

(assert (=> bm!532639 (= call!532641 ($colon$colon!2078 (exprs!6097 lt!2357094) (ite (or c!1141605 c!1141606) (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6290852 () Bool)

(assert (=> b!6290852 (= e!3825200 ((_ map or) call!532643 call!532645))))

(declare-fun b!6290853 () Bool)

(declare-fun c!1141604 () Bool)

(assert (=> b!6290853 (= c!1141604 ((_ is Star!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> b!6290853 (= e!3825199 e!3825197)))

(declare-fun bm!532640 () Bool)

(assert (=> bm!532640 (= call!532646 call!532641)))

(declare-fun bm!532641 () Bool)

(assert (=> bm!532641 (= call!532644 call!532645)))

(declare-fun b!6290854 () Bool)

(assert (=> b!6290854 (= e!3825195 e!3825196)))

(assert (=> b!6290854 (= c!1141603 ((_ is Union!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (= (and d!1974072 c!1141607) b!6290845))

(assert (= (and d!1974072 (not c!1141607)) b!6290854))

(assert (= (and b!6290854 c!1141603) b!6290849))

(assert (= (and b!6290854 (not c!1141603)) b!6290851))

(assert (= (and b!6290851 res!2594367) b!6290844))

(assert (= (and b!6290851 c!1141605) b!6290852))

(assert (= (and b!6290851 (not c!1141605)) b!6290847))

(assert (= (and b!6290847 c!1141606) b!6290850))

(assert (= (and b!6290847 (not c!1141606)) b!6290853))

(assert (= (and b!6290853 c!1141604) b!6290846))

(assert (= (and b!6290853 (not c!1141604)) b!6290848))

(assert (= (or b!6290850 b!6290846) bm!532640))

(assert (= (or b!6290850 b!6290846) bm!532641))

(assert (= (or b!6290852 bm!532640) bm!532639))

(assert (= (or b!6290852 bm!532641) bm!532637))

(assert (= (or b!6290849 bm!532637) bm!532638))

(assert (= (or b!6290849 b!6290852) bm!532636))

(declare-fun m!7111452 () Bool)

(assert (=> b!6290844 m!7111452))

(assert (=> b!6290845 m!7110488))

(declare-fun m!7111454 () Bool)

(assert (=> bm!532636 m!7111454))

(declare-fun m!7111456 () Bool)

(assert (=> bm!532639 m!7111456))

(declare-fun m!7111458 () Bool)

(assert (=> bm!532638 m!7111458))

(assert (=> b!6289809 d!1974072))

(declare-fun b!6290855 () Bool)

(declare-fun e!3825207 () Bool)

(assert (=> b!6290855 (= e!3825207 (nullable!6206 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun b!6290856 () Bool)

(declare-fun res!2594372 () Bool)

(declare-fun e!3825204 () Bool)

(assert (=> b!6290856 (=> res!2594372 e!3825204)))

(declare-fun e!3825203 () Bool)

(assert (=> b!6290856 (= res!2594372 e!3825203)))

(declare-fun res!2594375 () Bool)

(assert (=> b!6290856 (=> (not res!2594375) (not e!3825203))))

(declare-fun lt!2357285 () Bool)

(assert (=> b!6290856 (= res!2594375 lt!2357285)))

(declare-fun b!6290857 () Bool)

(assert (=> b!6290857 (= e!3825203 (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))

(declare-fun b!6290858 () Bool)

(declare-fun e!3825205 () Bool)

(assert (=> b!6290858 (= e!3825205 (not (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))))

(declare-fun d!1974074 () Bool)

(declare-fun e!3825206 () Bool)

(assert (=> d!1974074 e!3825206))

(declare-fun c!1141608 () Bool)

(assert (=> d!1974074 (= c!1141608 ((_ is EmptyExpr!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(assert (=> d!1974074 (= lt!2357285 e!3825207)))

(declare-fun c!1141609 () Bool)

(assert (=> d!1974074 (= c!1141609 (isEmpty!36872 s!2326))))

(assert (=> d!1974074 (validRegex!7949 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))

(assert (=> d!1974074 (= (matchR!8396 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) s!2326) lt!2357285)))

(declare-fun b!6290859 () Bool)

(declare-fun e!3825202 () Bool)

(assert (=> b!6290859 (= e!3825202 (not lt!2357285))))

(declare-fun b!6290860 () Bool)

(declare-fun e!3825201 () Bool)

(assert (=> b!6290860 (= e!3825204 e!3825201)))

(declare-fun res!2594374 () Bool)

(assert (=> b!6290860 (=> (not res!2594374) (not e!3825201))))

(assert (=> b!6290860 (= res!2594374 (not lt!2357285))))

(declare-fun bm!532642 () Bool)

(declare-fun call!532647 () Bool)

(assert (=> bm!532642 (= call!532647 (isEmpty!36872 s!2326))))

(declare-fun b!6290861 () Bool)

(assert (=> b!6290861 (= e!3825206 (= lt!2357285 call!532647))))

(declare-fun b!6290862 () Bool)

(assert (=> b!6290862 (= e!3825206 e!3825202)))

(declare-fun c!1141610 () Bool)

(assert (=> b!6290862 (= c!1141610 ((_ is EmptyLang!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun b!6290863 () Bool)

(assert (=> b!6290863 (= e!3825201 e!3825205)))

(declare-fun res!2594373 () Bool)

(assert (=> b!6290863 (=> res!2594373 e!3825205)))

(assert (=> b!6290863 (= res!2594373 call!532647)))

(declare-fun b!6290864 () Bool)

(declare-fun res!2594369 () Bool)

(assert (=> b!6290864 (=> (not res!2594369) (not e!3825203))))

(assert (=> b!6290864 (= res!2594369 (not call!532647))))

(declare-fun b!6290865 () Bool)

(declare-fun res!2594368 () Bool)

(assert (=> b!6290865 (=> res!2594368 e!3825204)))

(assert (=> b!6290865 (= res!2594368 (not ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))

(assert (=> b!6290865 (= e!3825202 e!3825204)))

(declare-fun b!6290866 () Bool)

(assert (=> b!6290866 (= e!3825207 (matchR!8396 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290867 () Bool)

(declare-fun res!2594370 () Bool)

(assert (=> b!6290867 (=> (not res!2594370) (not e!3825203))))

(assert (=> b!6290867 (= res!2594370 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290868 () Bool)

(declare-fun res!2594371 () Bool)

(assert (=> b!6290868 (=> res!2594371 e!3825205)))

(assert (=> b!6290868 (= res!2594371 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974074 c!1141609) b!6290855))

(assert (= (and d!1974074 (not c!1141609)) b!6290866))

(assert (= (and d!1974074 c!1141608) b!6290861))

(assert (= (and d!1974074 (not c!1141608)) b!6290862))

(assert (= (and b!6290862 c!1141610) b!6290859))

(assert (= (and b!6290862 (not c!1141610)) b!6290865))

(assert (= (and b!6290865 (not res!2594368)) b!6290856))

(assert (= (and b!6290856 res!2594375) b!6290864))

(assert (= (and b!6290864 res!2594369) b!6290867))

(assert (= (and b!6290867 res!2594370) b!6290857))

(assert (= (and b!6290856 (not res!2594372)) b!6290860))

(assert (= (and b!6290860 res!2594374) b!6290863))

(assert (= (and b!6290863 (not res!2594373)) b!6290868))

(assert (= (and b!6290868 (not res!2594371)) b!6290858))

(assert (= (or b!6290861 b!6290863 b!6290864) bm!532642))

(assert (=> bm!532642 m!7111076))

(assert (=> b!6290866 m!7111082))

(assert (=> b!6290866 m!7111082))

(declare-fun m!7111460 () Bool)

(assert (=> b!6290866 m!7111460))

(assert (=> b!6290866 m!7111086))

(assert (=> b!6290866 m!7111460))

(assert (=> b!6290866 m!7111086))

(declare-fun m!7111462 () Bool)

(assert (=> b!6290866 m!7111462))

(assert (=> b!6290858 m!7111082))

(assert (=> b!6290868 m!7111086))

(assert (=> b!6290868 m!7111086))

(assert (=> b!6290868 m!7111090))

(declare-fun m!7111464 () Bool)

(assert (=> b!6290855 m!7111464))

(assert (=> b!6290857 m!7111082))

(assert (=> b!6290867 m!7111086))

(assert (=> b!6290867 m!7111086))

(assert (=> b!6290867 m!7111090))

(assert (=> d!1974074 m!7111076))

(declare-fun m!7111466 () Bool)

(assert (=> d!1974074 m!7111466))

(assert (=> b!6289789 d!1974074))

(declare-fun call!532650 () (InoxSet Context!11194))

(declare-fun call!532648 () List!64939)

(declare-fun c!1141611 () Bool)

(declare-fun bm!532643 () Bool)

(assert (=> bm!532643 (= call!532650 (derivationStepZipperDown!1461 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))) (ite c!1141611 lt!2357077 (Context!11195 call!532648)) (h!71262 s!2326)))))

(declare-fun b!6290869 () Bool)

(declare-fun e!3825211 () Bool)

(assert (=> b!6290869 (= e!3825211 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun bm!532644 () Bool)

(declare-fun call!532652 () (InoxSet Context!11194))

(declare-fun call!532649 () (InoxSet Context!11194))

(assert (=> bm!532644 (= call!532652 call!532649)))

(declare-fun d!1974076 () Bool)

(declare-fun c!1141615 () Bool)

(assert (=> d!1974076 (= c!1141615 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))) (= (c!1141284 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326))))))

(declare-fun e!3825208 () (InoxSet Context!11194))

(assert (=> d!1974076 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (h!71264 zl!343))) lt!2357077 (h!71262 s!2326)) e!3825208)))

(declare-fun b!6290870 () Bool)

(assert (=> b!6290870 (= e!3825208 (store ((as const (Array Context!11194 Bool)) false) lt!2357077 true))))

(declare-fun c!1141614 () Bool)

(declare-fun c!1141613 () Bool)

(declare-fun call!532653 () List!64939)

(declare-fun bm!532645 () Bool)

(assert (=> bm!532645 (= call!532649 (derivationStepZipperDown!1461 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))) (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653)) (h!71262 s!2326)))))

(declare-fun b!6290871 () Bool)

(declare-fun e!3825210 () (InoxSet Context!11194))

(declare-fun call!532651 () (InoxSet Context!11194))

(assert (=> b!6290871 (= e!3825210 call!532651)))

(declare-fun b!6290872 () Bool)

(declare-fun e!3825213 () (InoxSet Context!11194))

(declare-fun e!3825212 () (InoxSet Context!11194))

(assert (=> b!6290872 (= e!3825213 e!3825212)))

(assert (=> b!6290872 (= c!1141614 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290873 () Bool)

(assert (=> b!6290873 (= e!3825210 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290874 () Bool)

(declare-fun e!3825209 () (InoxSet Context!11194))

(assert (=> b!6290874 (= e!3825209 ((_ map or) call!532650 call!532649))))

(declare-fun b!6290875 () Bool)

(assert (=> b!6290875 (= e!3825212 call!532651)))

(declare-fun b!6290876 () Bool)

(assert (=> b!6290876 (= c!1141613 e!3825211)))

(declare-fun res!2594376 () Bool)

(assert (=> b!6290876 (=> (not res!2594376) (not e!3825211))))

(assert (=> b!6290876 (= res!2594376 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6290876 (= e!3825209 e!3825213)))

(declare-fun bm!532646 () Bool)

(assert (=> bm!532646 (= call!532648 ($colon$colon!2078 (exprs!6097 lt!2357077) (ite (or c!1141613 c!1141614) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71263 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6290877 () Bool)

(assert (=> b!6290877 (= e!3825213 ((_ map or) call!532650 call!532652))))

(declare-fun b!6290878 () Bool)

(declare-fun c!1141612 () Bool)

(assert (=> b!6290878 (= c!1141612 ((_ is Star!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6290878 (= e!3825212 e!3825210)))

(declare-fun bm!532647 () Bool)

(assert (=> bm!532647 (= call!532653 call!532648)))

(declare-fun bm!532648 () Bool)

(assert (=> bm!532648 (= call!532651 call!532652)))

(declare-fun b!6290879 () Bool)

(assert (=> b!6290879 (= e!3825208 e!3825209)))

(assert (=> b!6290879 (= c!1141611 ((_ is Union!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (= (and d!1974076 c!1141615) b!6290870))

(assert (= (and d!1974076 (not c!1141615)) b!6290879))

(assert (= (and b!6290879 c!1141611) b!6290874))

(assert (= (and b!6290879 (not c!1141611)) b!6290876))

(assert (= (and b!6290876 res!2594376) b!6290869))

(assert (= (and b!6290876 c!1141613) b!6290877))

(assert (= (and b!6290876 (not c!1141613)) b!6290872))

(assert (= (and b!6290872 c!1141614) b!6290875))

(assert (= (and b!6290872 (not c!1141614)) b!6290878))

(assert (= (and b!6290878 c!1141612) b!6290871))

(assert (= (and b!6290878 (not c!1141612)) b!6290873))

(assert (= (or b!6290875 b!6290871) bm!532647))

(assert (= (or b!6290875 b!6290871) bm!532648))

(assert (= (or b!6290877 bm!532647) bm!532646))

(assert (= (or b!6290877 bm!532648) bm!532644))

(assert (= (or b!6290874 bm!532644) bm!532645))

(assert (= (or b!6290874 b!6290877) bm!532643))

(declare-fun m!7111468 () Bool)

(assert (=> b!6290869 m!7111468))

(assert (=> b!6290870 m!7111444))

(declare-fun m!7111470 () Bool)

(assert (=> bm!532643 m!7111470))

(declare-fun m!7111472 () Bool)

(assert (=> bm!532646 m!7111472))

(declare-fun m!7111474 () Bool)

(assert (=> bm!532645 m!7111474))

(assert (=> b!6289808 d!1974076))

(declare-fun d!1974078 () Bool)

(assert (=> d!1974078 (= (flatMap!1718 z!1189 lambda!345481) (dynLambda!25647 lambda!345481 (h!71264 zl!343)))))

(declare-fun lt!2357286 () Unit!158183)

(assert (=> d!1974078 (= lt!2357286 (choose!46745 z!1189 (h!71264 zl!343) lambda!345481))))

(assert (=> d!1974078 (= z!1189 (store ((as const (Array Context!11194 Bool)) false) (h!71264 zl!343) true))))

(assert (=> d!1974078 (= (lemmaFlatMapOnSingletonSet!1244 z!1189 (h!71264 zl!343) lambda!345481) lt!2357286)))

(declare-fun b_lambda!239355 () Bool)

(assert (=> (not b_lambda!239355) (not d!1974078)))

(declare-fun bs!1572325 () Bool)

(assert (= bs!1572325 d!1974078))

(assert (=> bs!1572325 m!7110468))

(declare-fun m!7111476 () Bool)

(assert (=> bs!1572325 m!7111476))

(declare-fun m!7111478 () Bool)

(assert (=> bs!1572325 m!7111478))

(declare-fun m!7111480 () Bool)

(assert (=> bs!1572325 m!7111480))

(assert (=> b!6289808 d!1974078))

(declare-fun d!1974080 () Bool)

(assert (=> d!1974080 (= (nullable!6206 (h!71263 (exprs!6097 (h!71264 zl!343)))) (nullableFct!2157 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun bs!1572326 () Bool)

(assert (= bs!1572326 d!1974080))

(declare-fun m!7111482 () Bool)

(assert (=> bs!1572326 m!7111482))

(assert (=> b!6289808 d!1974080))

(declare-fun b!6290880 () Bool)

(declare-fun e!3825216 () Bool)

(assert (=> b!6290880 (= e!3825216 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(declare-fun b!6290881 () Bool)

(declare-fun e!3825214 () (InoxSet Context!11194))

(assert (=> b!6290881 (= e!3825214 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290882 () Bool)

(declare-fun call!532654 () (InoxSet Context!11194))

(assert (=> b!6290882 (= e!3825214 call!532654)))

(declare-fun b!6290883 () Bool)

(declare-fun e!3825215 () (InoxSet Context!11194))

(assert (=> b!6290883 (= e!3825215 ((_ map or) call!532654 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326))))))

(declare-fun d!1974082 () Bool)

(declare-fun c!1141616 () Bool)

(assert (=> d!1974082 (= c!1141616 e!3825216)))

(declare-fun res!2594377 () Bool)

(assert (=> d!1974082 (=> (not res!2594377) (not e!3825216))))

(assert (=> d!1974082 (= res!2594377 ((_ is Cons!64815) (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))

(assert (=> d!1974082 (= (derivationStepZipperUp!1387 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))) (h!71262 s!2326)) e!3825215)))

(declare-fun bm!532649 () Bool)

(assert (=> bm!532649 (= call!532654 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326)))))

(declare-fun b!6290884 () Bool)

(assert (=> b!6290884 (= e!3825215 e!3825214)))

(declare-fun c!1141617 () Bool)

(assert (=> b!6290884 (= c!1141617 ((_ is Cons!64815) (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))

(assert (= (and d!1974082 res!2594377) b!6290880))

(assert (= (and d!1974082 c!1141616) b!6290883))

(assert (= (and d!1974082 (not c!1141616)) b!6290884))

(assert (= (and b!6290884 c!1141617) b!6290882))

(assert (= (and b!6290884 (not c!1141617)) b!6290881))

(assert (= (or b!6290883 b!6290882) bm!532649))

(declare-fun m!7111484 () Bool)

(assert (=> b!6290880 m!7111484))

(declare-fun m!7111486 () Bool)

(assert (=> b!6290883 m!7111486))

(declare-fun m!7111488 () Bool)

(assert (=> bm!532649 m!7111488))

(assert (=> b!6289808 d!1974082))

(declare-fun d!1974084 () Bool)

(assert (=> d!1974084 (= (flatMap!1718 z!1189 lambda!345481) (choose!46746 z!1189 lambda!345481))))

(declare-fun bs!1572327 () Bool)

(assert (= bs!1572327 d!1974084))

(declare-fun m!7111490 () Bool)

(assert (=> bs!1572327 m!7111490))

(assert (=> b!6289808 d!1974084))

(declare-fun b!6290885 () Bool)

(declare-fun e!3825219 () Bool)

(assert (=> b!6290885 (= e!3825219 (nullable!6206 (h!71263 (exprs!6097 lt!2357077))))))

(declare-fun b!6290886 () Bool)

(declare-fun e!3825217 () (InoxSet Context!11194))

(assert (=> b!6290886 (= e!3825217 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290887 () Bool)

(declare-fun call!532655 () (InoxSet Context!11194))

(assert (=> b!6290887 (= e!3825217 call!532655)))

(declare-fun e!3825218 () (InoxSet Context!11194))

(declare-fun b!6290888 () Bool)

(assert (=> b!6290888 (= e!3825218 ((_ map or) call!532655 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (h!71262 s!2326))))))

(declare-fun d!1974086 () Bool)

(declare-fun c!1141618 () Bool)

(assert (=> d!1974086 (= c!1141618 e!3825219)))

(declare-fun res!2594378 () Bool)

(assert (=> d!1974086 (=> (not res!2594378) (not e!3825219))))

(assert (=> d!1974086 (= res!2594378 ((_ is Cons!64815) (exprs!6097 lt!2357077)))))

(assert (=> d!1974086 (= (derivationStepZipperUp!1387 lt!2357077 (h!71262 s!2326)) e!3825218)))

(declare-fun bm!532650 () Bool)

(assert (=> bm!532650 (= call!532655 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357077)) (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (h!71262 s!2326)))))

(declare-fun b!6290889 () Bool)

(assert (=> b!6290889 (= e!3825218 e!3825217)))

(declare-fun c!1141619 () Bool)

(assert (=> b!6290889 (= c!1141619 ((_ is Cons!64815) (exprs!6097 lt!2357077)))))

(assert (= (and d!1974086 res!2594378) b!6290885))

(assert (= (and d!1974086 c!1141618) b!6290888))

(assert (= (and d!1974086 (not c!1141618)) b!6290889))

(assert (= (and b!6290889 c!1141619) b!6290887))

(assert (= (and b!6290889 (not c!1141619)) b!6290886))

(assert (= (or b!6290888 b!6290887) bm!532650))

(declare-fun m!7111492 () Bool)

(assert (=> b!6290885 m!7111492))

(declare-fun m!7111494 () Bool)

(assert (=> b!6290888 m!7111494))

(declare-fun m!7111496 () Bool)

(assert (=> bm!532650 m!7111496))

(assert (=> b!6289808 d!1974086))

(declare-fun b!6290890 () Bool)

(declare-fun e!3825222 () Bool)

(assert (=> b!6290890 (= e!3825222 (nullable!6206 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290891 () Bool)

(declare-fun e!3825220 () (InoxSet Context!11194))

(assert (=> b!6290891 (= e!3825220 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6290892 () Bool)

(declare-fun call!532656 () (InoxSet Context!11194))

(assert (=> b!6290892 (= e!3825220 call!532656)))

(declare-fun b!6290893 () Bool)

(declare-fun e!3825221 () (InoxSet Context!11194))

(assert (=> b!6290893 (= e!3825221 ((_ map or) call!532656 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326))))))

(declare-fun d!1974088 () Bool)

(declare-fun c!1141620 () Bool)

(assert (=> d!1974088 (= c!1141620 e!3825222)))

(declare-fun res!2594379 () Bool)

(assert (=> d!1974088 (=> (not res!2594379) (not e!3825222))))

(assert (=> d!1974088 (= res!2594379 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1974088 (= (derivationStepZipperUp!1387 (h!71264 zl!343) (h!71262 s!2326)) e!3825221)))

(declare-fun bm!532651 () Bool)

(assert (=> bm!532651 (= call!532656 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (h!71264 zl!343))) (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326)))))

(declare-fun b!6290894 () Bool)

(assert (=> b!6290894 (= e!3825221 e!3825220)))

(declare-fun c!1141621 () Bool)

(assert (=> b!6290894 (= c!1141621 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (= (and d!1974088 res!2594379) b!6290890))

(assert (= (and d!1974088 c!1141620) b!6290893))

(assert (= (and d!1974088 (not c!1141620)) b!6290894))

(assert (= (and b!6290894 c!1141621) b!6290892))

(assert (= (and b!6290894 (not c!1141621)) b!6290891))

(assert (= (or b!6290893 b!6290892) bm!532651))

(assert (=> b!6290890 m!7110478))

(declare-fun m!7111498 () Bool)

(assert (=> b!6290893 m!7111498))

(declare-fun m!7111500 () Bool)

(assert (=> bm!532651 m!7111500))

(assert (=> b!6289808 d!1974088))

(declare-fun bs!1572328 () Bool)

(declare-fun d!1974090 () Bool)

(assert (= bs!1572328 (and d!1974090 d!1973910)))

(declare-fun lambda!345599 () Int)

(assert (=> bs!1572328 (= lambda!345599 lambda!345546)))

(declare-fun bs!1572329 () Bool)

(assert (= bs!1572329 (and d!1974090 d!1973998)))

(assert (=> bs!1572329 (= lambda!345599 lambda!345571)))

(declare-fun bs!1572330 () Bool)

(assert (= bs!1572330 (and d!1974090 d!1974034)))

(assert (=> bs!1572330 (= lambda!345599 lambda!345577)))

(declare-fun bs!1572331 () Bool)

(assert (= bs!1572331 (and d!1974090 d!1973900)))

(assert (=> bs!1572331 (= lambda!345599 lambda!345542)))

(declare-fun bs!1572332 () Bool)

(assert (= bs!1572332 (and d!1974090 d!1974050)))

(assert (=> bs!1572332 (= lambda!345599 lambda!345596)))

(declare-fun bs!1572333 () Bool)

(assert (= bs!1572333 (and d!1974090 d!1974004)))

(assert (=> bs!1572333 (= lambda!345599 lambda!345572)))

(declare-fun bs!1572334 () Bool)

(assert (= bs!1572334 (and d!1974090 d!1974056)))

(assert (=> bs!1572334 (= lambda!345599 lambda!345597)))

(declare-fun b!6290895 () Bool)

(declare-fun e!3825227 () Bool)

(declare-fun lt!2357287 () Regex!16213)

(assert (=> b!6290895 (= e!3825227 (isConcat!1142 lt!2357287))))

(declare-fun b!6290896 () Bool)

(assert (=> b!6290896 (= e!3825227 (= lt!2357287 (head!12926 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun e!3825225 () Bool)

(assert (=> d!1974090 e!3825225))

(declare-fun res!2594381 () Bool)

(assert (=> d!1974090 (=> (not res!2594381) (not e!3825225))))

(assert (=> d!1974090 (= res!2594381 (validRegex!7949 lt!2357287))))

(declare-fun e!3825226 () Regex!16213)

(assert (=> d!1974090 (= lt!2357287 e!3825226)))

(declare-fun c!1141625 () Bool)

(declare-fun e!3825224 () Bool)

(assert (=> d!1974090 (= c!1141625 e!3825224)))

(declare-fun res!2594380 () Bool)

(assert (=> d!1974090 (=> (not res!2594380) (not e!3825224))))

(assert (=> d!1974090 (= res!2594380 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1974090 (forall!15362 (exprs!6097 (h!71264 zl!343)) lambda!345599)))

(assert (=> d!1974090 (= (generalisedConcat!1810 (exprs!6097 (h!71264 zl!343))) lt!2357287)))

(declare-fun b!6290897 () Bool)

(declare-fun e!3825223 () Bool)

(assert (=> b!6290897 (= e!3825223 e!3825227)))

(declare-fun c!1141622 () Bool)

(assert (=> b!6290897 (= c!1141622 (isEmpty!36870 (tail!12011 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290898 () Bool)

(assert (=> b!6290898 (= e!3825224 (isEmpty!36870 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6290899 () Bool)

(declare-fun e!3825228 () Regex!16213)

(assert (=> b!6290899 (= e!3825226 e!3825228)))

(declare-fun c!1141624 () Bool)

(assert (=> b!6290899 (= c!1141624 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(declare-fun b!6290900 () Bool)

(assert (=> b!6290900 (= e!3825228 EmptyExpr!16213)))

(declare-fun b!6290901 () Bool)

(assert (=> b!6290901 (= e!3825228 (Concat!25058 (h!71263 (exprs!6097 (h!71264 zl!343))) (generalisedConcat!1810 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6290902 () Bool)

(assert (=> b!6290902 (= e!3825223 (isEmptyExpr!1619 lt!2357287))))

(declare-fun b!6290903 () Bool)

(assert (=> b!6290903 (= e!3825226 (h!71263 (exprs!6097 (h!71264 zl!343))))))

(declare-fun b!6290904 () Bool)

(assert (=> b!6290904 (= e!3825225 e!3825223)))

(declare-fun c!1141623 () Bool)

(assert (=> b!6290904 (= c!1141623 (isEmpty!36870 (exprs!6097 (h!71264 zl!343))))))

(assert (= (and d!1974090 res!2594380) b!6290898))

(assert (= (and d!1974090 c!1141625) b!6290903))

(assert (= (and d!1974090 (not c!1141625)) b!6290899))

(assert (= (and b!6290899 c!1141624) b!6290901))

(assert (= (and b!6290899 (not c!1141624)) b!6290900))

(assert (= (and d!1974090 res!2594381) b!6290904))

(assert (= (and b!6290904 c!1141623) b!6290902))

(assert (= (and b!6290904 (not c!1141623)) b!6290897))

(assert (= (and b!6290897 c!1141622) b!6290896))

(assert (= (and b!6290897 (not c!1141622)) b!6290895))

(assert (=> b!6290901 m!7110396))

(declare-fun m!7111502 () Bool)

(assert (=> b!6290896 m!7111502))

(declare-fun m!7111504 () Bool)

(assert (=> b!6290902 m!7111504))

(declare-fun m!7111506 () Bool)

(assert (=> b!6290904 m!7111506))

(declare-fun m!7111508 () Bool)

(assert (=> b!6290897 m!7111508))

(assert (=> b!6290897 m!7111508))

(declare-fun m!7111510 () Bool)

(assert (=> b!6290897 m!7111510))

(declare-fun m!7111512 () Bool)

(assert (=> b!6290895 m!7111512))

(assert (=> b!6290898 m!7110506))

(declare-fun m!7111514 () Bool)

(assert (=> d!1974090 m!7111514))

(declare-fun m!7111516 () Bool)

(assert (=> d!1974090 m!7111516))

(assert (=> b!6289788 d!1974090))

(declare-fun b!6290905 () Bool)

(declare-fun e!3825235 () Bool)

(assert (=> b!6290905 (= e!3825235 (nullable!6206 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun b!6290906 () Bool)

(declare-fun res!2594386 () Bool)

(declare-fun e!3825232 () Bool)

(assert (=> b!6290906 (=> res!2594386 e!3825232)))

(declare-fun e!3825231 () Bool)

(assert (=> b!6290906 (= res!2594386 e!3825231)))

(declare-fun res!2594389 () Bool)

(assert (=> b!6290906 (=> (not res!2594389) (not e!3825231))))

(declare-fun lt!2357288 () Bool)

(assert (=> b!6290906 (= res!2594389 lt!2357288)))

(declare-fun b!6290907 () Bool)

(assert (=> b!6290907 (= e!3825231 (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))

(declare-fun e!3825233 () Bool)

(declare-fun b!6290908 () Bool)

(assert (=> b!6290908 (= e!3825233 (not (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))))

(declare-fun d!1974092 () Bool)

(declare-fun e!3825234 () Bool)

(assert (=> d!1974092 e!3825234))

(declare-fun c!1141626 () Bool)

(assert (=> d!1974092 (= c!1141626 ((_ is EmptyExpr!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(assert (=> d!1974092 (= lt!2357288 e!3825235)))

(declare-fun c!1141627 () Bool)

(assert (=> d!1974092 (= c!1141627 (isEmpty!36872 s!2326))))

(assert (=> d!1974092 (validRegex!7949 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))

(assert (=> d!1974092 (= (matchR!8396 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) s!2326) lt!2357288)))

(declare-fun b!6290909 () Bool)

(declare-fun e!3825230 () Bool)

(assert (=> b!6290909 (= e!3825230 (not lt!2357288))))

(declare-fun b!6290910 () Bool)

(declare-fun e!3825229 () Bool)

(assert (=> b!6290910 (= e!3825232 e!3825229)))

(declare-fun res!2594388 () Bool)

(assert (=> b!6290910 (=> (not res!2594388) (not e!3825229))))

(assert (=> b!6290910 (= res!2594388 (not lt!2357288))))

(declare-fun bm!532652 () Bool)

(declare-fun call!532657 () Bool)

(assert (=> bm!532652 (= call!532657 (isEmpty!36872 s!2326))))

(declare-fun b!6290911 () Bool)

(assert (=> b!6290911 (= e!3825234 (= lt!2357288 call!532657))))

(declare-fun b!6290912 () Bool)

(assert (=> b!6290912 (= e!3825234 e!3825230)))

(declare-fun c!1141628 () Bool)

(assert (=> b!6290912 (= c!1141628 ((_ is EmptyLang!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun b!6290913 () Bool)

(assert (=> b!6290913 (= e!3825229 e!3825233)))

(declare-fun res!2594387 () Bool)

(assert (=> b!6290913 (=> res!2594387 e!3825233)))

(assert (=> b!6290913 (= res!2594387 call!532657)))

(declare-fun b!6290914 () Bool)

(declare-fun res!2594383 () Bool)

(assert (=> b!6290914 (=> (not res!2594383) (not e!3825231))))

(assert (=> b!6290914 (= res!2594383 (not call!532657))))

(declare-fun b!6290915 () Bool)

(declare-fun res!2594382 () Bool)

(assert (=> b!6290915 (=> res!2594382 e!3825232)))

(assert (=> b!6290915 (= res!2594382 (not ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))

(assert (=> b!6290915 (= e!3825230 e!3825232)))

(declare-fun b!6290916 () Bool)

(assert (=> b!6290916 (= e!3825235 (matchR!8396 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6290917 () Bool)

(declare-fun res!2594384 () Bool)

(assert (=> b!6290917 (=> (not res!2594384) (not e!3825231))))

(assert (=> b!6290917 (= res!2594384 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6290918 () Bool)

(declare-fun res!2594385 () Bool)

(assert (=> b!6290918 (=> res!2594385 e!3825233)))

(assert (=> b!6290918 (= res!2594385 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974092 c!1141627) b!6290905))

(assert (= (and d!1974092 (not c!1141627)) b!6290916))

(assert (= (and d!1974092 c!1141626) b!6290911))

(assert (= (and d!1974092 (not c!1141626)) b!6290912))

(assert (= (and b!6290912 c!1141628) b!6290909))

(assert (= (and b!6290912 (not c!1141628)) b!6290915))

(assert (= (and b!6290915 (not res!2594382)) b!6290906))

(assert (= (and b!6290906 res!2594389) b!6290914))

(assert (= (and b!6290914 res!2594383) b!6290917))

(assert (= (and b!6290917 res!2594384) b!6290907))

(assert (= (and b!6290906 (not res!2594386)) b!6290910))

(assert (= (and b!6290910 res!2594388) b!6290913))

(assert (= (and b!6290913 (not res!2594387)) b!6290918))

(assert (= (and b!6290918 (not res!2594385)) b!6290908))

(assert (= (or b!6290911 b!6290913 b!6290914) bm!532652))

(assert (=> bm!532652 m!7111076))

(assert (=> b!6290916 m!7111082))

(assert (=> b!6290916 m!7111082))

(declare-fun m!7111518 () Bool)

(assert (=> b!6290916 m!7111518))

(assert (=> b!6290916 m!7111086))

(assert (=> b!6290916 m!7111518))

(assert (=> b!6290916 m!7111086))

(declare-fun m!7111520 () Bool)

(assert (=> b!6290916 m!7111520))

(assert (=> b!6290908 m!7111082))

(assert (=> b!6290918 m!7111086))

(assert (=> b!6290918 m!7111086))

(assert (=> b!6290918 m!7111090))

(declare-fun m!7111522 () Bool)

(assert (=> b!6290905 m!7111522))

(assert (=> b!6290907 m!7111082))

(assert (=> b!6290917 m!7111086))

(assert (=> b!6290917 m!7111086))

(assert (=> b!6290917 m!7111090))

(assert (=> d!1974092 m!7111076))

(declare-fun m!7111524 () Bool)

(assert (=> d!1974092 m!7111524))

(assert (=> b!6289807 d!1974092))

(declare-fun d!1974094 () Bool)

(assert (=> d!1974094 (= (matchR!8396 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053) s!2326) (matchR!8396 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) s!2326))))

(declare-fun lt!2357291 () Unit!158183)

(declare-fun choose!46747 (Regex!16213 Regex!16213 Regex!16213 List!64938) Unit!158183)

(assert (=> d!1974094 (= lt!2357291 (choose!46747 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326))))

(declare-fun e!3825238 () Bool)

(assert (=> d!1974094 e!3825238))

(declare-fun res!2594394 () Bool)

(assert (=> d!1974094 (=> (not res!2594394) (not e!3825238))))

(assert (=> d!1974094 (= res!2594394 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974094 (= (lemmaConcatAssociative!112 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) lt!2357291)))

(declare-fun b!6290923 () Bool)

(declare-fun res!2594395 () Bool)

(assert (=> b!6290923 (=> (not res!2594395) (not e!3825238))))

(assert (=> b!6290923 (= res!2594395 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6290924 () Bool)

(assert (=> b!6290924 (= e!3825238 (validRegex!7949 lt!2357053))))

(assert (= (and d!1974094 res!2594394) b!6290923))

(assert (= (and b!6290923 res!2594395) b!6290924))

(declare-fun m!7111526 () Bool)

(assert (=> d!1974094 m!7111526))

(assert (=> d!1974094 m!7110438))

(declare-fun m!7111528 () Bool)

(assert (=> d!1974094 m!7111528))

(assert (=> d!1974094 m!7111274))

(assert (=> b!6290923 m!7111266))

(declare-fun m!7111530 () Bool)

(assert (=> b!6290924 m!7111530))

(assert (=> b!6289807 d!1974094))

(declare-fun d!1974096 () Bool)

(declare-fun res!2594407 () Bool)

(declare-fun e!3825256 () Bool)

(assert (=> d!1974096 (=> res!2594407 e!3825256)))

(assert (=> d!1974096 (= res!2594407 ((_ is ElementMatch!16213) r!7292))))

(assert (=> d!1974096 (= (validRegex!7949 r!7292) e!3825256)))

(declare-fun b!6290943 () Bool)

(declare-fun res!2594409 () Bool)

(declare-fun e!3825257 () Bool)

(assert (=> b!6290943 (=> res!2594409 e!3825257)))

(assert (=> b!6290943 (= res!2594409 (not ((_ is Concat!25058) r!7292)))))

(declare-fun e!3825253 () Bool)

(assert (=> b!6290943 (= e!3825253 e!3825257)))

(declare-fun c!1141633 () Bool)

(declare-fun bm!532659 () Bool)

(declare-fun c!1141634 () Bool)

(declare-fun call!532666 () Bool)

(assert (=> bm!532659 (= call!532666 (validRegex!7949 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))

(declare-fun b!6290944 () Bool)

(declare-fun e!3825255 () Bool)

(assert (=> b!6290944 (= e!3825255 e!3825253)))

(assert (=> b!6290944 (= c!1141633 ((_ is Union!16213) r!7292))))

(declare-fun bm!532660 () Bool)

(declare-fun call!532665 () Bool)

(assert (=> bm!532660 (= call!532665 call!532666)))

(declare-fun b!6290945 () Bool)

(declare-fun e!3825259 () Bool)

(assert (=> b!6290945 (= e!3825255 e!3825259)))

(declare-fun res!2594410 () Bool)

(assert (=> b!6290945 (= res!2594410 (not (nullable!6206 (reg!16542 r!7292))))))

(assert (=> b!6290945 (=> (not res!2594410) (not e!3825259))))

(declare-fun b!6290946 () Bool)

(assert (=> b!6290946 (= e!3825256 e!3825255)))

(assert (=> b!6290946 (= c!1141634 ((_ is Star!16213) r!7292))))

(declare-fun b!6290947 () Bool)

(declare-fun res!2594408 () Bool)

(declare-fun e!3825254 () Bool)

(assert (=> b!6290947 (=> (not res!2594408) (not e!3825254))))

(declare-fun call!532664 () Bool)

(assert (=> b!6290947 (= res!2594408 call!532664)))

(assert (=> b!6290947 (= e!3825253 e!3825254)))

(declare-fun bm!532661 () Bool)

(assert (=> bm!532661 (= call!532664 (validRegex!7949 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))

(declare-fun b!6290948 () Bool)

(assert (=> b!6290948 (= e!3825259 call!532666)))

(declare-fun b!6290949 () Bool)

(declare-fun e!3825258 () Bool)

(assert (=> b!6290949 (= e!3825257 e!3825258)))

(declare-fun res!2594406 () Bool)

(assert (=> b!6290949 (=> (not res!2594406) (not e!3825258))))

(assert (=> b!6290949 (= res!2594406 call!532664)))

(declare-fun b!6290950 () Bool)

(assert (=> b!6290950 (= e!3825258 call!532665)))

(declare-fun b!6290951 () Bool)

(assert (=> b!6290951 (= e!3825254 call!532665)))

(assert (= (and d!1974096 (not res!2594407)) b!6290946))

(assert (= (and b!6290946 c!1141634) b!6290945))

(assert (= (and b!6290946 (not c!1141634)) b!6290944))

(assert (= (and b!6290945 res!2594410) b!6290948))

(assert (= (and b!6290944 c!1141633) b!6290947))

(assert (= (and b!6290944 (not c!1141633)) b!6290943))

(assert (= (and b!6290947 res!2594408) b!6290951))

(assert (= (and b!6290943 (not res!2594409)) b!6290949))

(assert (= (and b!6290949 res!2594406) b!6290950))

(assert (= (or b!6290951 b!6290950) bm!532660))

(assert (= (or b!6290947 b!6290949) bm!532661))

(assert (= (or b!6290948 bm!532660) bm!532659))

(declare-fun m!7111532 () Bool)

(assert (=> bm!532659 m!7111532))

(declare-fun m!7111534 () Bool)

(assert (=> b!6290945 m!7111534))

(declare-fun m!7111536 () Bool)

(assert (=> bm!532661 m!7111536))

(assert (=> start!625070 d!1974096))

(assert (=> b!6289806 d!1973958))

(declare-fun d!1974098 () Bool)

(declare-fun c!1141635 () Bool)

(assert (=> d!1974098 (= c!1141635 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825260 () Bool)

(assert (=> d!1974098 (= (matchZipper!2225 lt!2357055 (t!378500 s!2326)) e!3825260)))

(declare-fun b!6290952 () Bool)

(assert (=> b!6290952 (= e!3825260 (nullableZipper!1983 lt!2357055))))

(declare-fun b!6290953 () Bool)

(assert (=> b!6290953 (= e!3825260 (matchZipper!2225 (derivationStepZipper!2179 lt!2357055 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974098 c!1141635) b!6290952))

(assert (= (and d!1974098 (not c!1141635)) b!6290953))

(assert (=> d!1974098 m!7111104))

(declare-fun m!7111538 () Bool)

(assert (=> b!6290952 m!7111538))

(assert (=> b!6290953 m!7111108))

(assert (=> b!6290953 m!7111108))

(declare-fun m!7111540 () Bool)

(assert (=> b!6290953 m!7111540))

(assert (=> b!6290953 m!7111112))

(assert (=> b!6290953 m!7111540))

(assert (=> b!6290953 m!7111112))

(declare-fun m!7111542 () Bool)

(assert (=> b!6290953 m!7111542))

(assert (=> b!6289806 d!1974098))

(declare-fun d!1974100 () Bool)

(declare-fun c!1141636 () Bool)

(assert (=> d!1974100 (= c!1141636 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825261 () Bool)

(assert (=> d!1974100 (= (matchZipper!2225 lt!2357087 (t!378500 s!2326)) e!3825261)))

(declare-fun b!6290954 () Bool)

(assert (=> b!6290954 (= e!3825261 (nullableZipper!1983 lt!2357087))))

(declare-fun b!6290955 () Bool)

(assert (=> b!6290955 (= e!3825261 (matchZipper!2225 (derivationStepZipper!2179 lt!2357087 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974100 c!1141636) b!6290954))

(assert (= (and d!1974100 (not c!1141636)) b!6290955))

(assert (=> d!1974100 m!7111104))

(declare-fun m!7111544 () Bool)

(assert (=> b!6290954 m!7111544))

(assert (=> b!6290955 m!7111108))

(assert (=> b!6290955 m!7111108))

(declare-fun m!7111546 () Bool)

(assert (=> b!6290955 m!7111546))

(assert (=> b!6290955 m!7111112))

(assert (=> b!6290955 m!7111546))

(assert (=> b!6290955 m!7111112))

(declare-fun m!7111548 () Bool)

(assert (=> b!6290955 m!7111548))

(assert (=> b!6289806 d!1974100))

(declare-fun e!3825262 () Bool)

(declare-fun d!1974102 () Bool)

(assert (=> d!1974102 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357084) (t!378500 s!2326)) e!3825262)))

(declare-fun res!2594411 () Bool)

(assert (=> d!1974102 (=> res!2594411 e!3825262)))

(assert (=> d!1974102 (= res!2594411 (matchZipper!2225 lt!2357087 (t!378500 s!2326)))))

(declare-fun lt!2357292 () Unit!158183)

(assert (=> d!1974102 (= lt!2357292 (choose!46735 lt!2357087 lt!2357084 (t!378500 s!2326)))))

(assert (=> d!1974102 (= (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357087 lt!2357084 (t!378500 s!2326)) lt!2357292)))

(declare-fun b!6290956 () Bool)

(assert (=> b!6290956 (= e!3825262 (matchZipper!2225 lt!2357084 (t!378500 s!2326)))))

(assert (= (and d!1974102 (not res!2594411)) b!6290956))

(declare-fun m!7111550 () Bool)

(assert (=> d!1974102 m!7111550))

(assert (=> d!1974102 m!7110450))

(declare-fun m!7111552 () Bool)

(assert (=> d!1974102 m!7111552))

(assert (=> b!6290956 m!7110424))

(assert (=> b!6289806 d!1974102))

(declare-fun d!1974104 () Bool)

(declare-fun e!3825263 () Bool)

(assert (=> d!1974104 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357086) (t!378500 s!2326)) e!3825263)))

(declare-fun res!2594412 () Bool)

(assert (=> d!1974104 (=> res!2594412 e!3825263)))

(assert (=> d!1974104 (= res!2594412 (matchZipper!2225 lt!2357087 (t!378500 s!2326)))))

(declare-fun lt!2357293 () Unit!158183)

(assert (=> d!1974104 (= lt!2357293 (choose!46735 lt!2357087 lt!2357086 (t!378500 s!2326)))))

(assert (=> d!1974104 (= (lemmaZipperConcatMatchesSameAsBothZippers!1044 lt!2357087 lt!2357086 (t!378500 s!2326)) lt!2357293)))

(declare-fun b!6290957 () Bool)

(assert (=> b!6290957 (= e!3825263 (matchZipper!2225 lt!2357086 (t!378500 s!2326)))))

(assert (= (and d!1974104 (not res!2594412)) b!6290957))

(declare-fun m!7111554 () Bool)

(assert (=> d!1974104 m!7111554))

(assert (=> d!1974104 m!7110450))

(declare-fun m!7111556 () Bool)

(assert (=> d!1974104 m!7111556))

(assert (=> b!6290957 m!7110346))

(assert (=> b!6289827 d!1974104))

(declare-fun d!1974106 () Bool)

(declare-fun c!1141637 () Bool)

(assert (=> d!1974106 (= c!1141637 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825264 () Bool)

(assert (=> d!1974106 (= (matchZipper!2225 lt!2357075 (t!378500 s!2326)) e!3825264)))

(declare-fun b!6290958 () Bool)

(assert (=> b!6290958 (= e!3825264 (nullableZipper!1983 lt!2357075))))

(declare-fun b!6290959 () Bool)

(assert (=> b!6290959 (= e!3825264 (matchZipper!2225 (derivationStepZipper!2179 lt!2357075 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974106 c!1141637) b!6290958))

(assert (= (and d!1974106 (not c!1141637)) b!6290959))

(assert (=> d!1974106 m!7111104))

(declare-fun m!7111558 () Bool)

(assert (=> b!6290958 m!7111558))

(assert (=> b!6290959 m!7111108))

(assert (=> b!6290959 m!7111108))

(declare-fun m!7111560 () Bool)

(assert (=> b!6290959 m!7111560))

(assert (=> b!6290959 m!7111112))

(assert (=> b!6290959 m!7111560))

(assert (=> b!6290959 m!7111112))

(declare-fun m!7111562 () Bool)

(assert (=> b!6290959 m!7111562))

(assert (=> b!6289827 d!1974106))

(declare-fun d!1974108 () Bool)

(assert (=> d!1974108 (= (flatMap!1718 lt!2357069 lambda!345481) (dynLambda!25647 lambda!345481 lt!2357094))))

(declare-fun lt!2357294 () Unit!158183)

(assert (=> d!1974108 (= lt!2357294 (choose!46745 lt!2357069 lt!2357094 lambda!345481))))

(assert (=> d!1974108 (= lt!2357069 (store ((as const (Array Context!11194 Bool)) false) lt!2357094 true))))

(assert (=> d!1974108 (= (lemmaFlatMapOnSingletonSet!1244 lt!2357069 lt!2357094 lambda!345481) lt!2357294)))

(declare-fun b_lambda!239357 () Bool)

(assert (=> (not b_lambda!239357) (not d!1974108)))

(declare-fun bs!1572335 () Bool)

(assert (= bs!1572335 d!1974108))

(assert (=> bs!1572335 m!7110434))

(declare-fun m!7111564 () Bool)

(assert (=> bs!1572335 m!7111564))

(declare-fun m!7111566 () Bool)

(assert (=> bs!1572335 m!7111566))

(assert (=> bs!1572335 m!7110488))

(assert (=> b!6289827 d!1974108))

(declare-fun d!1974110 () Bool)

(declare-fun c!1141638 () Bool)

(assert (=> d!1974110 (= c!1141638 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825265 () Bool)

(assert (=> d!1974110 (= (matchZipper!2225 lt!2357052 (t!378500 s!2326)) e!3825265)))

(declare-fun b!6290960 () Bool)

(assert (=> b!6290960 (= e!3825265 (nullableZipper!1983 lt!2357052))))

(declare-fun b!6290961 () Bool)

(assert (=> b!6290961 (= e!3825265 (matchZipper!2225 (derivationStepZipper!2179 lt!2357052 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974110 c!1141638) b!6290960))

(assert (= (and d!1974110 (not c!1141638)) b!6290961))

(assert (=> d!1974110 m!7111104))

(declare-fun m!7111568 () Bool)

(assert (=> b!6290960 m!7111568))

(assert (=> b!6290961 m!7111108))

(assert (=> b!6290961 m!7111108))

(declare-fun m!7111570 () Bool)

(assert (=> b!6290961 m!7111570))

(assert (=> b!6290961 m!7111112))

(assert (=> b!6290961 m!7111570))

(assert (=> b!6290961 m!7111112))

(declare-fun m!7111572 () Bool)

(assert (=> b!6290961 m!7111572))

(assert (=> b!6289827 d!1974110))

(assert (=> b!6289827 d!1974066))

(declare-fun d!1974112 () Bool)

(assert (=> d!1974112 (= (flatMap!1718 lt!2357069 lambda!345481) (choose!46746 lt!2357069 lambda!345481))))

(declare-fun bs!1572336 () Bool)

(assert (= bs!1572336 d!1974112))

(declare-fun m!7111574 () Bool)

(assert (=> bs!1572336 m!7111574))

(assert (=> b!6289827 d!1974112))

(declare-fun b!6290973 () Bool)

(declare-fun e!3825268 () Bool)

(declare-fun tp!1751754 () Bool)

(declare-fun tp!1751751 () Bool)

(assert (=> b!6290973 (= e!3825268 (and tp!1751754 tp!1751751))))

(assert (=> b!6289791 (= tp!1751676 e!3825268)))

(declare-fun b!6290975 () Bool)

(declare-fun tp!1751752 () Bool)

(declare-fun tp!1751753 () Bool)

(assert (=> b!6290975 (= e!3825268 (and tp!1751752 tp!1751753))))

(declare-fun b!6290972 () Bool)

(assert (=> b!6290972 (= e!3825268 tp_is_empty!41679)))

(declare-fun b!6290974 () Bool)

(declare-fun tp!1751755 () Bool)

(assert (=> b!6290974 (= e!3825268 tp!1751755)))

(assert (= (and b!6289791 ((_ is ElementMatch!16213) (reg!16542 r!7292))) b!6290972))

(assert (= (and b!6289791 ((_ is Concat!25058) (reg!16542 r!7292))) b!6290973))

(assert (= (and b!6289791 ((_ is Star!16213) (reg!16542 r!7292))) b!6290974))

(assert (= (and b!6289791 ((_ is Union!16213) (reg!16542 r!7292))) b!6290975))

(declare-fun b!6290980 () Bool)

(declare-fun e!3825271 () Bool)

(declare-fun tp!1751760 () Bool)

(declare-fun tp!1751761 () Bool)

(assert (=> b!6290980 (= e!3825271 (and tp!1751760 tp!1751761))))

(assert (=> b!6289805 (= tp!1751674 e!3825271)))

(assert (= (and b!6289805 ((_ is Cons!64815) (exprs!6097 setElem!42812))) b!6290980))

(declare-fun b!6290985 () Bool)

(declare-fun e!3825274 () Bool)

(declare-fun tp!1751764 () Bool)

(assert (=> b!6290985 (= e!3825274 (and tp_is_empty!41679 tp!1751764))))

(assert (=> b!6289795 (= tp!1751677 e!3825274)))

(assert (= (and b!6289795 ((_ is Cons!64814) (t!378500 s!2326))) b!6290985))

(declare-fun b!6290986 () Bool)

(declare-fun e!3825275 () Bool)

(declare-fun tp!1751765 () Bool)

(declare-fun tp!1751766 () Bool)

(assert (=> b!6290986 (= e!3825275 (and tp!1751765 tp!1751766))))

(assert (=> b!6289800 (= tp!1751678 e!3825275)))

(assert (= (and b!6289800 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343)))) b!6290986))

(declare-fun b!6290988 () Bool)

(declare-fun e!3825276 () Bool)

(declare-fun tp!1751770 () Bool)

(declare-fun tp!1751767 () Bool)

(assert (=> b!6290988 (= e!3825276 (and tp!1751770 tp!1751767))))

(assert (=> b!6289814 (= tp!1751673 e!3825276)))

(declare-fun b!6290990 () Bool)

(declare-fun tp!1751768 () Bool)

(declare-fun tp!1751769 () Bool)

(assert (=> b!6290990 (= e!3825276 (and tp!1751768 tp!1751769))))

(declare-fun b!6290987 () Bool)

(assert (=> b!6290987 (= e!3825276 tp_is_empty!41679)))

(declare-fun b!6290989 () Bool)

(declare-fun tp!1751771 () Bool)

(assert (=> b!6290989 (= e!3825276 tp!1751771)))

(assert (= (and b!6289814 ((_ is ElementMatch!16213) (regOne!32938 r!7292))) b!6290987))

(assert (= (and b!6289814 ((_ is Concat!25058) (regOne!32938 r!7292))) b!6290988))

(assert (= (and b!6289814 ((_ is Star!16213) (regOne!32938 r!7292))) b!6290989))

(assert (= (and b!6289814 ((_ is Union!16213) (regOne!32938 r!7292))) b!6290990))

(declare-fun b!6290992 () Bool)

(declare-fun e!3825277 () Bool)

(declare-fun tp!1751775 () Bool)

(declare-fun tp!1751772 () Bool)

(assert (=> b!6290992 (= e!3825277 (and tp!1751775 tp!1751772))))

(assert (=> b!6289814 (= tp!1751681 e!3825277)))

(declare-fun b!6290994 () Bool)

(declare-fun tp!1751773 () Bool)

(declare-fun tp!1751774 () Bool)

(assert (=> b!6290994 (= e!3825277 (and tp!1751773 tp!1751774))))

(declare-fun b!6290991 () Bool)

(assert (=> b!6290991 (= e!3825277 tp_is_empty!41679)))

(declare-fun b!6290993 () Bool)

(declare-fun tp!1751776 () Bool)

(assert (=> b!6290993 (= e!3825277 tp!1751776)))

(assert (= (and b!6289814 ((_ is ElementMatch!16213) (regTwo!32938 r!7292))) b!6290991))

(assert (= (and b!6289814 ((_ is Concat!25058) (regTwo!32938 r!7292))) b!6290992))

(assert (= (and b!6289814 ((_ is Star!16213) (regTwo!32938 r!7292))) b!6290993))

(assert (= (and b!6289814 ((_ is Union!16213) (regTwo!32938 r!7292))) b!6290994))

(declare-fun b!6290996 () Bool)

(declare-fun e!3825278 () Bool)

(declare-fun tp!1751780 () Bool)

(declare-fun tp!1751777 () Bool)

(assert (=> b!6290996 (= e!3825278 (and tp!1751780 tp!1751777))))

(assert (=> b!6289799 (= tp!1751675 e!3825278)))

(declare-fun b!6290998 () Bool)

(declare-fun tp!1751778 () Bool)

(declare-fun tp!1751779 () Bool)

(assert (=> b!6290998 (= e!3825278 (and tp!1751778 tp!1751779))))

(declare-fun b!6290995 () Bool)

(assert (=> b!6290995 (= e!3825278 tp_is_empty!41679)))

(declare-fun b!6290997 () Bool)

(declare-fun tp!1751781 () Bool)

(assert (=> b!6290997 (= e!3825278 tp!1751781)))

(assert (= (and b!6289799 ((_ is ElementMatch!16213) (regOne!32939 r!7292))) b!6290995))

(assert (= (and b!6289799 ((_ is Concat!25058) (regOne!32939 r!7292))) b!6290996))

(assert (= (and b!6289799 ((_ is Star!16213) (regOne!32939 r!7292))) b!6290997))

(assert (= (and b!6289799 ((_ is Union!16213) (regOne!32939 r!7292))) b!6290998))

(declare-fun b!6291000 () Bool)

(declare-fun e!3825279 () Bool)

(declare-fun tp!1751785 () Bool)

(declare-fun tp!1751782 () Bool)

(assert (=> b!6291000 (= e!3825279 (and tp!1751785 tp!1751782))))

(assert (=> b!6289799 (= tp!1751682 e!3825279)))

(declare-fun b!6291002 () Bool)

(declare-fun tp!1751783 () Bool)

(declare-fun tp!1751784 () Bool)

(assert (=> b!6291002 (= e!3825279 (and tp!1751783 tp!1751784))))

(declare-fun b!6290999 () Bool)

(assert (=> b!6290999 (= e!3825279 tp_is_empty!41679)))

(declare-fun b!6291001 () Bool)

(declare-fun tp!1751786 () Bool)

(assert (=> b!6291001 (= e!3825279 tp!1751786)))

(assert (= (and b!6289799 ((_ is ElementMatch!16213) (regTwo!32939 r!7292))) b!6290999))

(assert (= (and b!6289799 ((_ is Concat!25058) (regTwo!32939 r!7292))) b!6291000))

(assert (= (and b!6289799 ((_ is Star!16213) (regTwo!32939 r!7292))) b!6291001))

(assert (= (and b!6289799 ((_ is Union!16213) (regTwo!32939 r!7292))) b!6291002))

(declare-fun condSetEmpty!42818 () Bool)

(assert (=> setNonEmpty!42812 (= condSetEmpty!42818 (= setRest!42812 ((as const (Array Context!11194 Bool)) false)))))

(declare-fun setRes!42818 () Bool)

(assert (=> setNonEmpty!42812 (= tp!1751679 setRes!42818)))

(declare-fun setIsEmpty!42818 () Bool)

(assert (=> setIsEmpty!42818 setRes!42818))

(declare-fun e!3825282 () Bool)

(declare-fun setNonEmpty!42818 () Bool)

(declare-fun setElem!42818 () Context!11194)

(declare-fun tp!1751791 () Bool)

(assert (=> setNonEmpty!42818 (= setRes!42818 (and tp!1751791 (inv!83779 setElem!42818) e!3825282))))

(declare-fun setRest!42818 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42818 (= setRest!42812 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42818 true) setRest!42818))))

(declare-fun b!6291007 () Bool)

(declare-fun tp!1751792 () Bool)

(assert (=> b!6291007 (= e!3825282 tp!1751792)))

(assert (= (and setNonEmpty!42812 condSetEmpty!42818) setIsEmpty!42818))

(assert (= (and setNonEmpty!42812 (not condSetEmpty!42818)) setNonEmpty!42818))

(assert (= setNonEmpty!42818 b!6291007))

(declare-fun m!7111576 () Bool)

(assert (=> setNonEmpty!42818 m!7111576))

(declare-fun b!6291015 () Bool)

(declare-fun e!3825288 () Bool)

(declare-fun tp!1751797 () Bool)

(assert (=> b!6291015 (= e!3825288 tp!1751797)))

(declare-fun e!3825287 () Bool)

(declare-fun b!6291014 () Bool)

(declare-fun tp!1751798 () Bool)

(assert (=> b!6291014 (= e!3825287 (and (inv!83779 (h!71264 (t!378502 zl!343))) e!3825288 tp!1751798))))

(assert (=> b!6289792 (= tp!1751680 e!3825287)))

(assert (= b!6291014 b!6291015))

(assert (= (and b!6289792 ((_ is Cons!64816) (t!378502 zl!343))) b!6291014))

(declare-fun m!7111578 () Bool)

(assert (=> b!6291014 m!7111578))

(declare-fun b_lambda!239359 () Bool)

(assert (= b_lambda!239355 (or b!6289808 b_lambda!239359)))

(declare-fun bs!1572337 () Bool)

(declare-fun d!1974114 () Bool)

(assert (= bs!1572337 (and d!1974114 b!6289808)))

(assert (=> bs!1572337 (= (dynLambda!25647 lambda!345481 (h!71264 zl!343)) (derivationStepZipperUp!1387 (h!71264 zl!343) (h!71262 s!2326)))))

(assert (=> bs!1572337 m!7110472))

(assert (=> d!1974078 d!1974114))

(declare-fun b_lambda!239361 () Bool)

(assert (= b_lambda!239357 (or b!6289808 b_lambda!239361)))

(declare-fun bs!1572338 () Bool)

(declare-fun d!1974116 () Bool)

(assert (= bs!1572338 (and d!1974116 b!6289808)))

(assert (=> bs!1572338 (= (dynLambda!25647 lambda!345481 lt!2357094) (derivationStepZipperUp!1387 lt!2357094 (h!71262 s!2326)))))

(assert (=> bs!1572338 m!7110428))

(assert (=> d!1974108 d!1974116))

(declare-fun b_lambda!239363 () Bool)

(assert (= b_lambda!239353 (or b!6289808 b_lambda!239363)))

(declare-fun bs!1572339 () Bool)

(declare-fun d!1974118 () Bool)

(assert (= bs!1572339 (and d!1974118 b!6289808)))

(assert (=> bs!1572339 (= (dynLambda!25647 lambda!345481 lt!2357083) (derivationStepZipperUp!1387 lt!2357083 (h!71262 s!2326)))))

(assert (=> bs!1572339 m!7110498))

(assert (=> d!1974058 d!1974118))

(check-sat (not bm!532610) (not b!6290571) (not b!6290902) (not b!6290662) (not b!6290895) (not b!6290740) (not b!6290723) (not b!6290565) (not b!6290833) (not b!6290997) (not bm!532645) (not d!1973958) (not b!6290319) (not b!6290945) (not b!6290715) (not b!6290556) (not b!6290753) (not b!6290897) (not d!1974040) (not b!6290552) (not d!1974098) (not d!1974014) (not bm!532607) (not bm!532630) (not b!6290608) (not b!6290998) (not b!6290707) (not b!6290358) (not b!6290269) (not d!1974074) (not b!6290551) (not d!1973984) (not b!6290866) (not b!6290985) (not bm!532650) (not b!6290960) (not d!1974056) (not d!1973900) (not b!6290986) (not bm!532611) (not bm!532616) (not b!6290857) (not bm!532659) (not d!1974002) (not d!1973952) (not b_lambda!239361) (not b!6290559) (not d!1973954) (not d!1974030) (not bm!532639) (not b!6290696) (not b!6290697) (not b!6290756) (not d!1974006) (not b!6290757) (not d!1974022) (not d!1974026) (not b!6290990) (not b!6290705) (not b!6290604) (not b!6290974) (not d!1974078) (not b!6290924) (not b!6290771) (not b!6290908) (not bm!532617) (not b!6290786) (not bm!532646) (not b!6290318) (not d!1973960) (not d!1974102) (not d!1974036) (not b!6290603) (not b!6290317) (not b!6290956) (not b!6290885) (not b!6290751) (not b!6290789) (not d!1974042) (not b!6290953) (not b!6290904) (not b!6290735) (not b!6291015) (not b!6290654) (not b!6290709) (not b!6290314) (not b!6290958) (not b!6290567) (not d!1973944) (not b!6290739) (not b!6290712) (not b!6290888) (not d!1974104) (not d!1974020) (not d!1974024) (not d!1974108) (not d!1974060) (not b!6290267) (not b!6290653) (not bm!532605) (not b!6290581) (not b!6290703) (not b!6290994) (not b!6290717) (not d!1974058) (not bm!532652) (not d!1974090) (not bm!532602) (not b!6290754) (not b!6290609) (not b!6290610) (not b!6290883) (not d!1974064) (not b!6290855) (not b!6290638) (not b!6290992) (not bm!532661) (not b!6291007) (not b!6290767) (not d!1973992) (not b!6290568) (not b!6290634) (not bm!532642) (not b!6290630) (not b!6290668) (not b!6290724) (not b!6290762) (not b!6290907) (not d!1974012) (not b!6290758) (not b!6290716) (not b!6290673) (not b!6290905) (not bm!532612) (not bm!532636) (not b!6290313) (not b!6290635) (not bm!532651) (not b!6290993) (not b!6290699) (not d!1974008) (not d!1974050) (not b!6290743) (not b!6290952) (not b!6291000) (not bm!532638) (not d!1973988) (not b!6290759) (not d!1974016) (not d!1973972) (not d!1974054) (not b!6290774) (not b!6290959) (not b!6290954) (not b!6290611) (not b!6290961) (not b!6290752) (not d!1973978) (not d!1973990) (not d!1973976) (not d!1973980) (not b!6290790) (not b!6290713) (not d!1974112) (not b!6290579) (not d!1974110) (not b!6290980) (not bm!532606) (not b!6290773) (not b!6290869) (not b!6290742) (not d!1974038) (not b!6290880) (not b!6290988) (not b!6290450) (not b!6290721) (not b!6290312) (not setNonEmpty!42818) (not bs!1572338) (not d!1974028) (not bm!532632) (not bm!532601) (not b!6290605) (not b!6290804) (not b!6290738) (not d!1974092) (not b!6290601) (not b!6290755) (not b!6290788) (not b!6290720) (not b!6290725) (not bm!532613) (not b!6290602) (not b!6290766) (not b!6290637) (not b!6290893) (not b!6290868) (not b!6290806) (not b!6290989) (not d!1973982) (not bm!532633) (not b!6290570) (not d!1974032) (not d!1974100) (not b!6290708) (not b!6291001) (not b!6290586) (not b!6290455) (not b!6290580) (not bm!532609) (not b!6290543) (not d!1974000) (not d!1974004) (not b!6290651) (not b!6291002) (not b!6290663) (not bs!1572339) (not b!6290957) (not b!6290698) (not b!6290564) (not b!6290770) (not d!1974044) (not b!6290858) (not d!1974052) (not d!1974094) (not b!6290809) (not b!6290783) (not d!1974106) (not b!6290542) (not d!1974034) (not b!6290631) (not b!6290867) (not bs!1572337) tp_is_empty!41679 (not bm!532643) (not b!6290702) (not b!6290320) (not d!1973962) (not b!6290763) (not b!6290901) (not b!6290890) (not b!6290923) (not b!6290918) (not b!6290765) (not bm!532649) (not b!6290592) (not d!1974084) (not b!6290801) (not b!6290664) (not b!6290996) (not b!6290973) (not b!6290540) (not b!6290898) (not d!1973998) (not d!1973986) (not b!6290706) (not b!6290566) (not bm!532608) (not b_lambda!239359) (not b!6290955) (not d!1973910) (not b!6290726) (not d!1974010) (not b!6290593) (not b!6291014) (not d!1973964) (not b!6290730) (not b_lambda!239363) (not b!6290896) (not b!6290590) (not d!1974080) (not d!1973994) (not b!6290781) (not b!6290916) (not b!6290975) (not d!1973974) (not b!6290917) (not d!1973956) (not b!6290844) (not b!6290553) (not b!6290588))
(check-sat)
(get-model)

(declare-fun d!1974120 () Bool)

(assert (=> d!1974120 (= (isEmpty!36872 (t!378500 s!2326)) ((_ is Nil!64814) (t!378500 s!2326)))))

(assert (=> d!1973958 d!1974120))

(declare-fun b!6291024 () Bool)

(declare-fun e!3825294 () List!64938)

(assert (=> b!6291024 (= e!3825294 (_2!36495 (get!22408 lt!2357248)))))

(declare-fun b!6291025 () Bool)

(assert (=> b!6291025 (= e!3825294 (Cons!64814 (h!71262 (_1!36495 (get!22408 lt!2357248))) (++!14286 (t!378500 (_1!36495 (get!22408 lt!2357248))) (_2!36495 (get!22408 lt!2357248)))))))

(declare-fun b!6291026 () Bool)

(declare-fun res!2594417 () Bool)

(declare-fun e!3825293 () Bool)

(assert (=> b!6291026 (=> (not res!2594417) (not e!3825293))))

(declare-fun lt!2357297 () List!64938)

(declare-fun size!40315 (List!64938) Int)

(assert (=> b!6291026 (= res!2594417 (= (size!40315 lt!2357297) (+ (size!40315 (_1!36495 (get!22408 lt!2357248))) (size!40315 (_2!36495 (get!22408 lt!2357248))))))))

(declare-fun b!6291027 () Bool)

(assert (=> b!6291027 (= e!3825293 (or (not (= (_2!36495 (get!22408 lt!2357248)) Nil!64814)) (= lt!2357297 (_1!36495 (get!22408 lt!2357248)))))))

(declare-fun d!1974122 () Bool)

(assert (=> d!1974122 e!3825293))

(declare-fun res!2594418 () Bool)

(assert (=> d!1974122 (=> (not res!2594418) (not e!3825293))))

(declare-fun content!12191 (List!64938) (InoxSet C!32696))

(assert (=> d!1974122 (= res!2594418 (= (content!12191 lt!2357297) ((_ map or) (content!12191 (_1!36495 (get!22408 lt!2357248))) (content!12191 (_2!36495 (get!22408 lt!2357248))))))))

(assert (=> d!1974122 (= lt!2357297 e!3825294)))

(declare-fun c!1141641 () Bool)

(assert (=> d!1974122 (= c!1141641 ((_ is Nil!64814) (_1!36495 (get!22408 lt!2357248))))))

(assert (=> d!1974122 (= (++!14286 (_1!36495 (get!22408 lt!2357248)) (_2!36495 (get!22408 lt!2357248))) lt!2357297)))

(assert (= (and d!1974122 c!1141641) b!6291024))

(assert (= (and d!1974122 (not c!1141641)) b!6291025))

(assert (= (and d!1974122 res!2594418) b!6291026))

(assert (= (and b!6291026 res!2594417) b!6291027))

(declare-fun m!7111580 () Bool)

(assert (=> b!6291025 m!7111580))

(declare-fun m!7111582 () Bool)

(assert (=> b!6291026 m!7111582))

(declare-fun m!7111584 () Bool)

(assert (=> b!6291026 m!7111584))

(declare-fun m!7111586 () Bool)

(assert (=> b!6291026 m!7111586))

(declare-fun m!7111588 () Bool)

(assert (=> d!1974122 m!7111588))

(declare-fun m!7111590 () Bool)

(assert (=> d!1974122 m!7111590))

(declare-fun m!7111592 () Bool)

(assert (=> d!1974122 m!7111592))

(assert (=> b!6290724 d!1974122))

(declare-fun d!1974124 () Bool)

(assert (=> d!1974124 (= (get!22408 lt!2357248) (v!52258 lt!2357248))))

(assert (=> b!6290724 d!1974124))

(declare-fun b!6291028 () Bool)

(declare-fun e!3825301 () Bool)

(assert (=> b!6291028 (= e!3825301 (nullable!6206 (regTwo!32938 r!7292)))))

(declare-fun b!6291029 () Bool)

(declare-fun res!2594423 () Bool)

(declare-fun e!3825298 () Bool)

(assert (=> b!6291029 (=> res!2594423 e!3825298)))

(declare-fun e!3825297 () Bool)

(assert (=> b!6291029 (= res!2594423 e!3825297)))

(declare-fun res!2594426 () Bool)

(assert (=> b!6291029 (=> (not res!2594426) (not e!3825297))))

(declare-fun lt!2357298 () Bool)

(assert (=> b!6291029 (= res!2594426 lt!2357298)))

(declare-fun b!6291030 () Bool)

(assert (=> b!6291030 (= e!3825297 (= (head!12927 s!2326) (c!1141284 (regTwo!32938 r!7292))))))

(declare-fun b!6291031 () Bool)

(declare-fun e!3825299 () Bool)

(assert (=> b!6291031 (= e!3825299 (not (= (head!12927 s!2326) (c!1141284 (regTwo!32938 r!7292)))))))

(declare-fun d!1974126 () Bool)

(declare-fun e!3825300 () Bool)

(assert (=> d!1974126 e!3825300))

(declare-fun c!1141642 () Bool)

(assert (=> d!1974126 (= c!1141642 ((_ is EmptyExpr!16213) (regTwo!32938 r!7292)))))

(assert (=> d!1974126 (= lt!2357298 e!3825301)))

(declare-fun c!1141643 () Bool)

(assert (=> d!1974126 (= c!1141643 (isEmpty!36872 s!2326))))

(assert (=> d!1974126 (validRegex!7949 (regTwo!32938 r!7292))))

(assert (=> d!1974126 (= (matchR!8396 (regTwo!32938 r!7292) s!2326) lt!2357298)))

(declare-fun b!6291032 () Bool)

(declare-fun e!3825296 () Bool)

(assert (=> b!6291032 (= e!3825296 (not lt!2357298))))

(declare-fun b!6291033 () Bool)

(declare-fun e!3825295 () Bool)

(assert (=> b!6291033 (= e!3825298 e!3825295)))

(declare-fun res!2594425 () Bool)

(assert (=> b!6291033 (=> (not res!2594425) (not e!3825295))))

(assert (=> b!6291033 (= res!2594425 (not lt!2357298))))

(declare-fun bm!532662 () Bool)

(declare-fun call!532667 () Bool)

(assert (=> bm!532662 (= call!532667 (isEmpty!36872 s!2326))))

(declare-fun b!6291034 () Bool)

(assert (=> b!6291034 (= e!3825300 (= lt!2357298 call!532667))))

(declare-fun b!6291035 () Bool)

(assert (=> b!6291035 (= e!3825300 e!3825296)))

(declare-fun c!1141644 () Bool)

(assert (=> b!6291035 (= c!1141644 ((_ is EmptyLang!16213) (regTwo!32938 r!7292)))))

(declare-fun b!6291036 () Bool)

(assert (=> b!6291036 (= e!3825295 e!3825299)))

(declare-fun res!2594424 () Bool)

(assert (=> b!6291036 (=> res!2594424 e!3825299)))

(assert (=> b!6291036 (= res!2594424 call!532667)))

(declare-fun b!6291037 () Bool)

(declare-fun res!2594420 () Bool)

(assert (=> b!6291037 (=> (not res!2594420) (not e!3825297))))

(assert (=> b!6291037 (= res!2594420 (not call!532667))))

(declare-fun b!6291038 () Bool)

(declare-fun res!2594419 () Bool)

(assert (=> b!6291038 (=> res!2594419 e!3825298)))

(assert (=> b!6291038 (= res!2594419 (not ((_ is ElementMatch!16213) (regTwo!32938 r!7292))))))

(assert (=> b!6291038 (= e!3825296 e!3825298)))

(declare-fun b!6291039 () Bool)

(assert (=> b!6291039 (= e!3825301 (matchR!8396 (derivativeStep!4922 (regTwo!32938 r!7292) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6291040 () Bool)

(declare-fun res!2594421 () Bool)

(assert (=> b!6291040 (=> (not res!2594421) (not e!3825297))))

(assert (=> b!6291040 (= res!2594421 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291041 () Bool)

(declare-fun res!2594422 () Bool)

(assert (=> b!6291041 (=> res!2594422 e!3825299)))

(assert (=> b!6291041 (= res!2594422 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974126 c!1141643) b!6291028))

(assert (= (and d!1974126 (not c!1141643)) b!6291039))

(assert (= (and d!1974126 c!1141642) b!6291034))

(assert (= (and d!1974126 (not c!1141642)) b!6291035))

(assert (= (and b!6291035 c!1141644) b!6291032))

(assert (= (and b!6291035 (not c!1141644)) b!6291038))

(assert (= (and b!6291038 (not res!2594419)) b!6291029))

(assert (= (and b!6291029 res!2594426) b!6291037))

(assert (= (and b!6291037 res!2594420) b!6291040))

(assert (= (and b!6291040 res!2594421) b!6291030))

(assert (= (and b!6291029 (not res!2594423)) b!6291033))

(assert (= (and b!6291033 res!2594425) b!6291036))

(assert (= (and b!6291036 (not res!2594424)) b!6291041))

(assert (= (and b!6291041 (not res!2594422)) b!6291031))

(assert (= (or b!6291034 b!6291036 b!6291037) bm!532662))

(assert (=> bm!532662 m!7111076))

(assert (=> b!6291039 m!7111082))

(assert (=> b!6291039 m!7111082))

(declare-fun m!7111594 () Bool)

(assert (=> b!6291039 m!7111594))

(assert (=> b!6291039 m!7111086))

(assert (=> b!6291039 m!7111594))

(assert (=> b!6291039 m!7111086))

(declare-fun m!7111596 () Bool)

(assert (=> b!6291039 m!7111596))

(assert (=> b!6291031 m!7111082))

(assert (=> b!6291041 m!7111086))

(assert (=> b!6291041 m!7111086))

(assert (=> b!6291041 m!7111090))

(declare-fun m!7111598 () Bool)

(assert (=> b!6291028 m!7111598))

(assert (=> b!6291030 m!7111082))

(assert (=> b!6291040 m!7111086))

(assert (=> b!6291040 m!7111086))

(assert (=> b!6291040 m!7111090))

(assert (=> d!1974126 m!7111076))

(declare-fun m!7111600 () Bool)

(assert (=> d!1974126 m!7111600))

(assert (=> b!6290637 d!1974126))

(declare-fun d!1974128 () Bool)

(assert (=> d!1974128 (= (isEmpty!36872 (tail!12012 s!2326)) ((_ is Nil!64814) (tail!12012 s!2326)))))

(assert (=> b!6290868 d!1974128))

(declare-fun d!1974130 () Bool)

(assert (=> d!1974130 (= (tail!12012 s!2326) (t!378500 s!2326))))

(assert (=> b!6290868 d!1974130))

(declare-fun d!1974132 () Bool)

(declare-fun c!1141645 () Bool)

(assert (=> d!1974132 (= c!1141645 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3825302 () Bool)

(assert (=> d!1974132 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357084) (t!378500 s!2326)) e!3825302)))

(declare-fun b!6291042 () Bool)

(assert (=> b!6291042 (= e!3825302 (nullableZipper!1983 ((_ map or) lt!2357087 lt!2357084)))))

(declare-fun b!6291043 () Bool)

(assert (=> b!6291043 (= e!3825302 (matchZipper!2225 (derivationStepZipper!2179 ((_ map or) lt!2357087 lt!2357084) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974132 c!1141645) b!6291042))

(assert (= (and d!1974132 (not c!1141645)) b!6291043))

(assert (=> d!1974132 m!7111104))

(declare-fun m!7111602 () Bool)

(assert (=> b!6291042 m!7111602))

(assert (=> b!6291043 m!7111108))

(assert (=> b!6291043 m!7111108))

(declare-fun m!7111604 () Bool)

(assert (=> b!6291043 m!7111604))

(assert (=> b!6291043 m!7111112))

(assert (=> b!6291043 m!7111604))

(assert (=> b!6291043 m!7111112))

(declare-fun m!7111606 () Bool)

(assert (=> b!6291043 m!7111606))

(assert (=> d!1974102 d!1974132))

(assert (=> d!1974102 d!1974100))

(declare-fun d!1974134 () Bool)

(declare-fun e!3825305 () Bool)

(assert (=> d!1974134 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357084) (t!378500 s!2326)) e!3825305)))

(declare-fun res!2594429 () Bool)

(assert (=> d!1974134 (=> res!2594429 e!3825305)))

(assert (=> d!1974134 (= res!2594429 (matchZipper!2225 lt!2357087 (t!378500 s!2326)))))

(assert (=> d!1974134 true))

(declare-fun _$48!2047 () Unit!158183)

(assert (=> d!1974134 (= (choose!46735 lt!2357087 lt!2357084 (t!378500 s!2326)) _$48!2047)))

(declare-fun b!6291046 () Bool)

(assert (=> b!6291046 (= e!3825305 (matchZipper!2225 lt!2357084 (t!378500 s!2326)))))

(assert (= (and d!1974134 (not res!2594429)) b!6291046))

(assert (=> d!1974134 m!7111550))

(assert (=> d!1974134 m!7110450))

(assert (=> b!6291046 m!7110424))

(assert (=> d!1974102 d!1974134))

(declare-fun b!6291047 () Bool)

(declare-fun e!3825308 () Bool)

(assert (=> b!6291047 (= e!3825308 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077)))))))))

(declare-fun b!6291048 () Bool)

(declare-fun e!3825306 () (InoxSet Context!11194))

(assert (=> b!6291048 (= e!3825306 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291049 () Bool)

(declare-fun call!532668 () (InoxSet Context!11194))

(assert (=> b!6291049 (= e!3825306 call!532668)))

(declare-fun b!6291050 () Bool)

(declare-fun e!3825307 () (InoxSet Context!11194))

(assert (=> b!6291050 (= e!3825307 ((_ map or) call!532668 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077)))))) (h!71262 s!2326))))))

(declare-fun d!1974136 () Bool)

(declare-fun c!1141646 () Bool)

(assert (=> d!1974136 (= c!1141646 e!3825308)))

(declare-fun res!2594430 () Bool)

(assert (=> d!1974136 (=> (not res!2594430) (not e!3825308))))

(assert (=> d!1974136 (= res!2594430 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077))))))))

(assert (=> d!1974136 (= (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (h!71262 s!2326)) e!3825307)))

(declare-fun bm!532663 () Bool)

(assert (=> bm!532663 (= call!532668 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077)))))) (h!71262 s!2326)))))

(declare-fun b!6291051 () Bool)

(assert (=> b!6291051 (= e!3825307 e!3825306)))

(declare-fun c!1141647 () Bool)

(assert (=> b!6291051 (= c!1141647 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077))))))))

(assert (= (and d!1974136 res!2594430) b!6291047))

(assert (= (and d!1974136 c!1141646) b!6291050))

(assert (= (and d!1974136 (not c!1141646)) b!6291051))

(assert (= (and b!6291051 c!1141647) b!6291049))

(assert (= (and b!6291051 (not c!1141647)) b!6291048))

(assert (= (or b!6291050 b!6291049) bm!532663))

(declare-fun m!7111608 () Bool)

(assert (=> b!6291047 m!7111608))

(declare-fun m!7111610 () Bool)

(assert (=> b!6291050 m!7111610))

(declare-fun m!7111612 () Bool)

(assert (=> bm!532663 m!7111612))

(assert (=> b!6290888 d!1974136))

(declare-fun d!1974138 () Bool)

(assert (=> d!1974138 (= (isEmpty!36872 s!2326) ((_ is Nil!64814) s!2326))))

(assert (=> d!1973962 d!1974138))

(declare-fun d!1974140 () Bool)

(declare-fun res!2594432 () Bool)

(declare-fun e!3825312 () Bool)

(assert (=> d!1974140 (=> res!2594432 e!3825312)))

(assert (=> d!1974140 (= res!2594432 ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(assert (=> d!1974140 (= (validRegex!7949 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) e!3825312)))

(declare-fun b!6291052 () Bool)

(declare-fun res!2594434 () Bool)

(declare-fun e!3825313 () Bool)

(assert (=> b!6291052 (=> res!2594434 e!3825313)))

(assert (=> b!6291052 (= res!2594434 (not ((_ is Concat!25058) (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))

(declare-fun e!3825309 () Bool)

(assert (=> b!6291052 (= e!3825309 e!3825313)))

(declare-fun c!1141648 () Bool)

(declare-fun bm!532664 () Bool)

(declare-fun call!532671 () Bool)

(declare-fun c!1141649 () Bool)

(assert (=> bm!532664 (= call!532671 (validRegex!7949 (ite c!1141649 (reg!16542 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (ite c!1141648 (regTwo!32939 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (regTwo!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))))

(declare-fun b!6291053 () Bool)

(declare-fun e!3825311 () Bool)

(assert (=> b!6291053 (= e!3825311 e!3825309)))

(assert (=> b!6291053 (= c!1141648 ((_ is Union!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun bm!532665 () Bool)

(declare-fun call!532670 () Bool)

(assert (=> bm!532665 (= call!532670 call!532671)))

(declare-fun b!6291054 () Bool)

(declare-fun e!3825315 () Bool)

(assert (=> b!6291054 (= e!3825311 e!3825315)))

(declare-fun res!2594435 () Bool)

(assert (=> b!6291054 (= res!2594435 (not (nullable!6206 (reg!16542 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))))

(assert (=> b!6291054 (=> (not res!2594435) (not e!3825315))))

(declare-fun b!6291055 () Bool)

(assert (=> b!6291055 (= e!3825312 e!3825311)))

(assert (=> b!6291055 (= c!1141649 ((_ is Star!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun b!6291056 () Bool)

(declare-fun res!2594433 () Bool)

(declare-fun e!3825310 () Bool)

(assert (=> b!6291056 (=> (not res!2594433) (not e!3825310))))

(declare-fun call!532669 () Bool)

(assert (=> b!6291056 (= res!2594433 call!532669)))

(assert (=> b!6291056 (= e!3825309 e!3825310)))

(declare-fun bm!532666 () Bool)

(assert (=> bm!532666 (= call!532669 (validRegex!7949 (ite c!1141648 (regOne!32939 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))))

(declare-fun b!6291057 () Bool)

(assert (=> b!6291057 (= e!3825315 call!532671)))

(declare-fun b!6291058 () Bool)

(declare-fun e!3825314 () Bool)

(assert (=> b!6291058 (= e!3825313 e!3825314)))

(declare-fun res!2594431 () Bool)

(assert (=> b!6291058 (=> (not res!2594431) (not e!3825314))))

(assert (=> b!6291058 (= res!2594431 call!532669)))

(declare-fun b!6291059 () Bool)

(assert (=> b!6291059 (= e!3825314 call!532670)))

(declare-fun b!6291060 () Bool)

(assert (=> b!6291060 (= e!3825310 call!532670)))

(assert (= (and d!1974140 (not res!2594432)) b!6291055))

(assert (= (and b!6291055 c!1141649) b!6291054))

(assert (= (and b!6291055 (not c!1141649)) b!6291053))

(assert (= (and b!6291054 res!2594435) b!6291057))

(assert (= (and b!6291053 c!1141648) b!6291056))

(assert (= (and b!6291053 (not c!1141648)) b!6291052))

(assert (= (and b!6291056 res!2594433) b!6291060))

(assert (= (and b!6291052 (not res!2594434)) b!6291058))

(assert (= (and b!6291058 res!2594431) b!6291059))

(assert (= (or b!6291060 b!6291059) bm!532665))

(assert (= (or b!6291056 b!6291058) bm!532666))

(assert (= (or b!6291057 bm!532665) bm!532664))

(declare-fun m!7111614 () Bool)

(assert (=> bm!532664 m!7111614))

(declare-fun m!7111616 () Bool)

(assert (=> b!6291054 m!7111616))

(declare-fun m!7111618 () Bool)

(assert (=> bm!532666 m!7111618))

(assert (=> d!1973962 d!1974140))

(assert (=> d!1974110 d!1974120))

(declare-fun b!6291061 () Bool)

(declare-fun e!3825322 () Bool)

(assert (=> b!6291061 (= e!3825322 (nullable!6206 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326))))))

(declare-fun b!6291062 () Bool)

(declare-fun res!2594440 () Bool)

(declare-fun e!3825319 () Bool)

(assert (=> b!6291062 (=> res!2594440 e!3825319)))

(declare-fun e!3825318 () Bool)

(assert (=> b!6291062 (= res!2594440 e!3825318)))

(declare-fun res!2594443 () Bool)

(assert (=> b!6291062 (=> (not res!2594443) (not e!3825318))))

(declare-fun lt!2357299 () Bool)

(assert (=> b!6291062 (= res!2594443 lt!2357299)))

(declare-fun b!6291063 () Bool)

(assert (=> b!6291063 (= e!3825318 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)))))))

(declare-fun b!6291064 () Bool)

(declare-fun e!3825320 () Bool)

(assert (=> b!6291064 (= e!3825320 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326))))))))

(declare-fun d!1974142 () Bool)

(declare-fun e!3825321 () Bool)

(assert (=> d!1974142 e!3825321))

(declare-fun c!1141650 () Bool)

(assert (=> d!1974142 (= c!1141650 ((_ is EmptyExpr!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326))))))

(assert (=> d!1974142 (= lt!2357299 e!3825322)))

(declare-fun c!1141651 () Bool)

(assert (=> d!1974142 (= c!1141651 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974142 (validRegex!7949 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)))))

(assert (=> d!1974142 (= (matchR!8396 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357299)))

(declare-fun b!6291065 () Bool)

(declare-fun e!3825317 () Bool)

(assert (=> b!6291065 (= e!3825317 (not lt!2357299))))

(declare-fun b!6291066 () Bool)

(declare-fun e!3825316 () Bool)

(assert (=> b!6291066 (= e!3825319 e!3825316)))

(declare-fun res!2594442 () Bool)

(assert (=> b!6291066 (=> (not res!2594442) (not e!3825316))))

(assert (=> b!6291066 (= res!2594442 (not lt!2357299))))

(declare-fun bm!532667 () Bool)

(declare-fun call!532672 () Bool)

(assert (=> bm!532667 (= call!532672 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291067 () Bool)

(assert (=> b!6291067 (= e!3825321 (= lt!2357299 call!532672))))

(declare-fun b!6291068 () Bool)

(assert (=> b!6291068 (= e!3825321 e!3825317)))

(declare-fun c!1141652 () Bool)

(assert (=> b!6291068 (= c!1141652 ((_ is EmptyLang!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326))))))

(declare-fun b!6291069 () Bool)

(assert (=> b!6291069 (= e!3825316 e!3825320)))

(declare-fun res!2594441 () Bool)

(assert (=> b!6291069 (=> res!2594441 e!3825320)))

(assert (=> b!6291069 (= res!2594441 call!532672)))

(declare-fun b!6291070 () Bool)

(declare-fun res!2594437 () Bool)

(assert (=> b!6291070 (=> (not res!2594437) (not e!3825318))))

(assert (=> b!6291070 (= res!2594437 (not call!532672))))

(declare-fun b!6291071 () Bool)

(declare-fun res!2594436 () Bool)

(assert (=> b!6291071 (=> res!2594436 e!3825319)))

(assert (=> b!6291071 (= res!2594436 (not ((_ is ElementMatch!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)))))))

(assert (=> b!6291071 (= e!3825317 e!3825319)))

(declare-fun b!6291072 () Bool)

(assert (=> b!6291072 (= e!3825322 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291073 () Bool)

(declare-fun res!2594438 () Bool)

(assert (=> b!6291073 (=> (not res!2594438) (not e!3825318))))

(assert (=> b!6291073 (= res!2594438 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291074 () Bool)

(declare-fun res!2594439 () Bool)

(assert (=> b!6291074 (=> res!2594439 e!3825320)))

(assert (=> b!6291074 (= res!2594439 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974142 c!1141651) b!6291061))

(assert (= (and d!1974142 (not c!1141651)) b!6291072))

(assert (= (and d!1974142 c!1141650) b!6291067))

(assert (= (and d!1974142 (not c!1141650)) b!6291068))

(assert (= (and b!6291068 c!1141652) b!6291065))

(assert (= (and b!6291068 (not c!1141652)) b!6291071))

(assert (= (and b!6291071 (not res!2594436)) b!6291062))

(assert (= (and b!6291062 res!2594443) b!6291070))

(assert (= (and b!6291070 res!2594437) b!6291073))

(assert (= (and b!6291073 res!2594438) b!6291063))

(assert (= (and b!6291062 (not res!2594440)) b!6291066))

(assert (= (and b!6291066 res!2594442) b!6291069))

(assert (= (and b!6291069 (not res!2594441)) b!6291074))

(assert (= (and b!6291074 (not res!2594439)) b!6291064))

(assert (= (or b!6291067 b!6291069 b!6291070) bm!532667))

(assert (=> bm!532667 m!7111086))

(assert (=> bm!532667 m!7111090))

(assert (=> b!6291072 m!7111086))

(declare-fun m!7111620 () Bool)

(assert (=> b!6291072 m!7111620))

(assert (=> b!6291072 m!7111140))

(assert (=> b!6291072 m!7111620))

(declare-fun m!7111622 () Bool)

(assert (=> b!6291072 m!7111622))

(assert (=> b!6291072 m!7111086))

(declare-fun m!7111624 () Bool)

(assert (=> b!6291072 m!7111624))

(assert (=> b!6291072 m!7111622))

(assert (=> b!6291072 m!7111624))

(declare-fun m!7111626 () Bool)

(assert (=> b!6291072 m!7111626))

(assert (=> b!6291064 m!7111086))

(assert (=> b!6291064 m!7111620))

(assert (=> b!6291074 m!7111086))

(assert (=> b!6291074 m!7111624))

(assert (=> b!6291074 m!7111624))

(declare-fun m!7111628 () Bool)

(assert (=> b!6291074 m!7111628))

(assert (=> b!6291061 m!7111140))

(declare-fun m!7111630 () Bool)

(assert (=> b!6291061 m!7111630))

(assert (=> b!6291063 m!7111086))

(assert (=> b!6291063 m!7111620))

(assert (=> b!6291073 m!7111086))

(assert (=> b!6291073 m!7111624))

(assert (=> b!6291073 m!7111624))

(assert (=> b!6291073 m!7111628))

(assert (=> d!1974142 m!7111086))

(assert (=> d!1974142 m!7111090))

(assert (=> d!1974142 m!7111140))

(declare-fun m!7111632 () Bool)

(assert (=> d!1974142 m!7111632))

(assert (=> b!6290601 d!1974142))

(declare-fun b!6291095 () Bool)

(declare-fun e!3825334 () Regex!16213)

(declare-fun e!3825337 () Regex!16213)

(assert (=> b!6291095 (= e!3825334 e!3825337)))

(declare-fun c!1141667 () Bool)

(assert (=> b!6291095 (= c!1141667 ((_ is Star!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun b!6291096 () Bool)

(declare-fun call!532684 () Regex!16213)

(declare-fun e!3825335 () Regex!16213)

(assert (=> b!6291096 (= e!3825335 (Union!16213 (Concat!25058 call!532684 (regTwo!32938 (Concat!25058 lt!2357063 lt!2357053))) EmptyLang!16213))))

(declare-fun call!532682 () Regex!16213)

(declare-fun b!6291097 () Bool)

(assert (=> b!6291097 (= e!3825337 (Concat!25058 call!532682 (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun b!6291098 () Bool)

(declare-fun e!3825333 () Regex!16213)

(assert (=> b!6291098 (= e!3825333 EmptyLang!16213)))

(declare-fun c!1141664 () Bool)

(declare-fun call!532683 () Regex!16213)

(declare-fun bm!532676 () Bool)

(assert (=> bm!532676 (= call!532683 (derivativeStep!4922 (ite c!1141664 (regTwo!32939 (Concat!25058 lt!2357063 lt!2357053)) (regOne!32938 (Concat!25058 lt!2357063 lt!2357053))) (head!12927 s!2326)))))

(declare-fun b!6291099 () Bool)

(declare-fun call!532681 () Regex!16213)

(assert (=> b!6291099 (= e!3825334 (Union!16213 call!532681 call!532683))))

(declare-fun bm!532677 () Bool)

(assert (=> bm!532677 (= call!532682 call!532681)))

(declare-fun b!6291100 () Bool)

(declare-fun e!3825336 () Regex!16213)

(assert (=> b!6291100 (= e!3825336 (ite (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 lt!2357053))) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6291101 () Bool)

(assert (=> b!6291101 (= e!3825333 e!3825336)))

(declare-fun c!1141663 () Bool)

(assert (=> b!6291101 (= c!1141663 ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun bm!532678 () Bool)

(declare-fun c!1141665 () Bool)

(assert (=> bm!532678 (= call!532681 (derivativeStep!4922 (ite c!1141664 (regOne!32939 (Concat!25058 lt!2357063 lt!2357053)) (ite c!1141667 (reg!16542 (Concat!25058 lt!2357063 lt!2357053)) (ite c!1141665 (regTwo!32938 (Concat!25058 lt!2357063 lt!2357053)) (regOne!32938 (Concat!25058 lt!2357063 lt!2357053))))) (head!12927 s!2326)))))

(declare-fun b!6291102 () Bool)

(assert (=> b!6291102 (= c!1141664 ((_ is Union!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(assert (=> b!6291102 (= e!3825336 e!3825334)))

(declare-fun bm!532679 () Bool)

(assert (=> bm!532679 (= call!532684 call!532682)))

(declare-fun b!6291103 () Bool)

(assert (=> b!6291103 (= c!1141665 (nullable!6206 (regOne!32938 (Concat!25058 lt!2357063 lt!2357053))))))

(assert (=> b!6291103 (= e!3825337 e!3825335)))

(declare-fun d!1974144 () Bool)

(declare-fun lt!2357302 () Regex!16213)

(assert (=> d!1974144 (validRegex!7949 lt!2357302)))

(assert (=> d!1974144 (= lt!2357302 e!3825333)))

(declare-fun c!1141666 () Bool)

(assert (=> d!1974144 (= c!1141666 (or ((_ is EmptyExpr!16213) (Concat!25058 lt!2357063 lt!2357053)) ((_ is EmptyLang!16213) (Concat!25058 lt!2357063 lt!2357053))))))

(assert (=> d!1974144 (validRegex!7949 (Concat!25058 lt!2357063 lt!2357053))))

(assert (=> d!1974144 (= (derivativeStep!4922 (Concat!25058 lt!2357063 lt!2357053) (head!12927 s!2326)) lt!2357302)))

(declare-fun b!6291104 () Bool)

(assert (=> b!6291104 (= e!3825335 (Union!16213 (Concat!25058 call!532683 (regTwo!32938 (Concat!25058 lt!2357063 lt!2357053))) call!532684))))

(assert (= (and d!1974144 c!1141666) b!6291098))

(assert (= (and d!1974144 (not c!1141666)) b!6291101))

(assert (= (and b!6291101 c!1141663) b!6291100))

(assert (= (and b!6291101 (not c!1141663)) b!6291102))

(assert (= (and b!6291102 c!1141664) b!6291099))

(assert (= (and b!6291102 (not c!1141664)) b!6291095))

(assert (= (and b!6291095 c!1141667) b!6291097))

(assert (= (and b!6291095 (not c!1141667)) b!6291103))

(assert (= (and b!6291103 c!1141665) b!6291104))

(assert (= (and b!6291103 (not c!1141665)) b!6291096))

(assert (= (or b!6291104 b!6291096) bm!532679))

(assert (= (or b!6291097 bm!532679) bm!532677))

(assert (= (or b!6291099 b!6291104) bm!532676))

(assert (= (or b!6291099 bm!532677) bm!532678))

(assert (=> bm!532676 m!7111082))

(declare-fun m!7111634 () Bool)

(assert (=> bm!532676 m!7111634))

(assert (=> bm!532678 m!7111082))

(declare-fun m!7111636 () Bool)

(assert (=> bm!532678 m!7111636))

(declare-fun m!7111638 () Bool)

(assert (=> b!6291103 m!7111638))

(declare-fun m!7111640 () Bool)

(assert (=> d!1974144 m!7111640))

(assert (=> d!1974144 m!7111146))

(assert (=> b!6290601 d!1974144))

(declare-fun d!1974146 () Bool)

(assert (=> d!1974146 (= (head!12927 s!2326) (h!71262 s!2326))))

(assert (=> b!6290601 d!1974146))

(assert (=> b!6290601 d!1974130))

(assert (=> b!6290752 d!1974128))

(assert (=> b!6290752 d!1974130))

(assert (=> bs!1572339 d!1974062))

(assert (=> b!6290653 d!1974146))

(declare-fun d!1974148 () Bool)

(assert (=> d!1974148 (= (isConcat!1142 lt!2357257) ((_ is Concat!25058) lt!2357257))))

(assert (=> b!6290756 d!1974148))

(declare-fun call!532685 () List!64939)

(declare-fun c!1141668 () Bool)

(declare-fun call!532687 () (InoxSet Context!11194))

(declare-fun bm!532680 () Bool)

(assert (=> bm!532680 (= call!532687 (derivationStepZipperDown!1461 (ite c!1141668 (regOne!32939 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (regOne!32938 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))) (ite c!1141668 (ite c!1141598 lt!2357077 (Context!11195 call!532635)) (Context!11195 call!532685)) (h!71262 s!2326)))))

(declare-fun b!6291105 () Bool)

(declare-fun e!3825341 () Bool)

(assert (=> b!6291105 (= e!3825341 (nullable!6206 (regOne!32938 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))))))

(declare-fun bm!532681 () Bool)

(declare-fun call!532689 () (InoxSet Context!11194))

(declare-fun call!532686 () (InoxSet Context!11194))

(assert (=> bm!532681 (= call!532689 call!532686)))

(declare-fun c!1141672 () Bool)

(declare-fun d!1974150 () Bool)

(assert (=> d!1974150 (= c!1141672 (and ((_ is ElementMatch!16213) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (= (c!1141284 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (h!71262 s!2326))))))

(declare-fun e!3825338 () (InoxSet Context!11194))

(assert (=> d!1974150 (= (derivationStepZipperDown!1461 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))) (ite c!1141598 lt!2357077 (Context!11195 call!532635)) (h!71262 s!2326)) e!3825338)))

(declare-fun b!6291106 () Bool)

(assert (=> b!6291106 (= e!3825338 (store ((as const (Array Context!11194 Bool)) false) (ite c!1141598 lt!2357077 (Context!11195 call!532635)) true))))

(declare-fun call!532690 () List!64939)

(declare-fun c!1141671 () Bool)

(declare-fun c!1141670 () Bool)

(declare-fun bm!532682 () Bool)

(assert (=> bm!532682 (= call!532686 (derivationStepZipperDown!1461 (ite c!1141668 (regTwo!32939 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (ite c!1141670 (regTwo!32938 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (ite c!1141671 (regOne!32938 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (reg!16542 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))))) (ite (or c!1141668 c!1141670) (ite c!1141598 lt!2357077 (Context!11195 call!532635)) (Context!11195 call!532690)) (h!71262 s!2326)))))

(declare-fun b!6291107 () Bool)

(declare-fun e!3825340 () (InoxSet Context!11194))

(declare-fun call!532688 () (InoxSet Context!11194))

(assert (=> b!6291107 (= e!3825340 call!532688)))

(declare-fun b!6291108 () Bool)

(declare-fun e!3825343 () (InoxSet Context!11194))

(declare-fun e!3825342 () (InoxSet Context!11194))

(assert (=> b!6291108 (= e!3825343 e!3825342)))

(assert (=> b!6291108 (= c!1141671 ((_ is Concat!25058) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6291109 () Bool)

(assert (=> b!6291109 (= e!3825340 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291110 () Bool)

(declare-fun e!3825339 () (InoxSet Context!11194))

(assert (=> b!6291110 (= e!3825339 ((_ map or) call!532687 call!532686))))

(declare-fun b!6291111 () Bool)

(assert (=> b!6291111 (= e!3825342 call!532688)))

(declare-fun b!6291112 () Bool)

(assert (=> b!6291112 (= c!1141670 e!3825341)))

(declare-fun res!2594444 () Bool)

(assert (=> b!6291112 (=> (not res!2594444) (not e!3825341))))

(assert (=> b!6291112 (= res!2594444 ((_ is Concat!25058) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291112 (= e!3825339 e!3825343)))

(declare-fun bm!532683 () Bool)

(assert (=> bm!532683 (= call!532685 ($colon$colon!2078 (exprs!6097 (ite c!1141598 lt!2357077 (Context!11195 call!532635))) (ite (or c!1141670 c!1141671) (regTwo!32938 (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))))))

(declare-fun b!6291113 () Bool)

(assert (=> b!6291113 (= e!3825343 ((_ map or) call!532687 call!532689))))

(declare-fun b!6291114 () Bool)

(declare-fun c!1141669 () Bool)

(assert (=> b!6291114 (= c!1141669 ((_ is Star!16213) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291114 (= e!3825342 e!3825340)))

(declare-fun bm!532684 () Bool)

(assert (=> bm!532684 (= call!532690 call!532685)))

(declare-fun bm!532685 () Bool)

(assert (=> bm!532685 (= call!532688 call!532689)))

(declare-fun b!6291115 () Bool)

(assert (=> b!6291115 (= e!3825338 e!3825339)))

(assert (=> b!6291115 (= c!1141668 ((_ is Union!16213) (ite c!1141598 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))))))

(assert (= (and d!1974150 c!1141672) b!6291106))

(assert (= (and d!1974150 (not c!1141672)) b!6291115))

(assert (= (and b!6291115 c!1141668) b!6291110))

(assert (= (and b!6291115 (not c!1141668)) b!6291112))

(assert (= (and b!6291112 res!2594444) b!6291105))

(assert (= (and b!6291112 c!1141670) b!6291113))

(assert (= (and b!6291112 (not c!1141670)) b!6291108))

(assert (= (and b!6291108 c!1141671) b!6291111))

(assert (= (and b!6291108 (not c!1141671)) b!6291114))

(assert (= (and b!6291114 c!1141669) b!6291107))

(assert (= (and b!6291114 (not c!1141669)) b!6291109))

(assert (= (or b!6291111 b!6291107) bm!532684))

(assert (= (or b!6291111 b!6291107) bm!532685))

(assert (= (or b!6291113 bm!532684) bm!532683))

(assert (= (or b!6291113 bm!532685) bm!532681))

(assert (= (or b!6291110 bm!532681) bm!532682))

(assert (= (or b!6291110 b!6291113) bm!532680))

(declare-fun m!7111642 () Bool)

(assert (=> b!6291105 m!7111642))

(declare-fun m!7111644 () Bool)

(assert (=> b!6291106 m!7111644))

(declare-fun m!7111646 () Bool)

(assert (=> bm!532680 m!7111646))

(declare-fun m!7111648 () Bool)

(assert (=> bm!532683 m!7111648))

(declare-fun m!7111650 () Bool)

(assert (=> bm!532682 m!7111650))

(assert (=> bm!532630 d!1974150))

(assert (=> b!6290705 d!1973970))

(declare-fun call!532693 () (InoxSet Context!11194))

(declare-fun bm!532686 () Bool)

(declare-fun call!532691 () List!64939)

(declare-fun c!1141673 () Bool)

(assert (=> bm!532686 (= call!532693 (derivationStepZipperDown!1461 (ite c!1141673 (regOne!32939 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (regOne!32938 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))) (ite c!1141673 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (Context!11195 call!532691)) (h!71262 s!2326)))))

(declare-fun b!6291116 () Bool)

(declare-fun e!3825347 () Bool)

(assert (=> b!6291116 (= e!3825347 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))))

(declare-fun bm!532687 () Bool)

(declare-fun call!532695 () (InoxSet Context!11194))

(declare-fun call!532692 () (InoxSet Context!11194))

(assert (=> bm!532687 (= call!532695 call!532692)))

(declare-fun d!1974152 () Bool)

(declare-fun c!1141677 () Bool)

(assert (=> d!1974152 (= c!1141677 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (= (c!1141284 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326))))))

(declare-fun e!3825344 () (InoxSet Context!11194))

(assert (=> d!1974152 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326)) e!3825344)))

(declare-fun b!6291117 () Bool)

(assert (=> b!6291117 (= e!3825344 (store ((as const (Array Context!11194 Bool)) false) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) true))))

(declare-fun c!1141675 () Bool)

(declare-fun c!1141676 () Bool)

(declare-fun call!532696 () List!64939)

(declare-fun bm!532688 () Bool)

(assert (=> bm!532688 (= call!532692 (derivationStepZipperDown!1461 (ite c!1141673 (regTwo!32939 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (ite c!1141675 (regTwo!32938 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (ite c!1141676 (regOne!32938 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (reg!16542 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))) (ite (or c!1141673 c!1141675) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (Context!11195 call!532696)) (h!71262 s!2326)))))

(declare-fun b!6291118 () Bool)

(declare-fun e!3825346 () (InoxSet Context!11194))

(declare-fun call!532694 () (InoxSet Context!11194))

(assert (=> b!6291118 (= e!3825346 call!532694)))

(declare-fun b!6291119 () Bool)

(declare-fun e!3825349 () (InoxSet Context!11194))

(declare-fun e!3825348 () (InoxSet Context!11194))

(assert (=> b!6291119 (= e!3825349 e!3825348)))

(assert (=> b!6291119 (= c!1141676 ((_ is Concat!25058) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(declare-fun b!6291120 () Bool)

(assert (=> b!6291120 (= e!3825346 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291121 () Bool)

(declare-fun e!3825345 () (InoxSet Context!11194))

(assert (=> b!6291121 (= e!3825345 ((_ map or) call!532693 call!532692))))

(declare-fun b!6291122 () Bool)

(assert (=> b!6291122 (= e!3825348 call!532694)))

(declare-fun b!6291123 () Bool)

(assert (=> b!6291123 (= c!1141675 e!3825347)))

(declare-fun res!2594445 () Bool)

(assert (=> b!6291123 (=> (not res!2594445) (not e!3825347))))

(assert (=> b!6291123 (= res!2594445 ((_ is Concat!25058) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (=> b!6291123 (= e!3825345 e!3825349)))

(declare-fun bm!532689 () Bool)

(assert (=> bm!532689 (= call!532691 ($colon$colon!2078 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))) (ite (or c!1141675 c!1141676) (regTwo!32938 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))))

(declare-fun b!6291124 () Bool)

(assert (=> b!6291124 (= e!3825349 ((_ map or) call!532693 call!532695))))

(declare-fun b!6291125 () Bool)

(declare-fun c!1141674 () Bool)

(assert (=> b!6291125 (= c!1141674 ((_ is Star!16213) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (=> b!6291125 (= e!3825348 e!3825346)))

(declare-fun bm!532690 () Bool)

(assert (=> bm!532690 (= call!532696 call!532691)))

(declare-fun bm!532691 () Bool)

(assert (=> bm!532691 (= call!532694 call!532695)))

(declare-fun b!6291126 () Bool)

(assert (=> b!6291126 (= e!3825344 e!3825345)))

(assert (=> b!6291126 (= c!1141673 ((_ is Union!16213) (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (= (and d!1974152 c!1141677) b!6291117))

(assert (= (and d!1974152 (not c!1141677)) b!6291126))

(assert (= (and b!6291126 c!1141673) b!6291121))

(assert (= (and b!6291126 (not c!1141673)) b!6291123))

(assert (= (and b!6291123 res!2594445) b!6291116))

(assert (= (and b!6291123 c!1141675) b!6291124))

(assert (= (and b!6291123 (not c!1141675)) b!6291119))

(assert (= (and b!6291119 c!1141676) b!6291122))

(assert (= (and b!6291119 (not c!1141676)) b!6291125))

(assert (= (and b!6291125 c!1141674) b!6291118))

(assert (= (and b!6291125 (not c!1141674)) b!6291120))

(assert (= (or b!6291122 b!6291118) bm!532690))

(assert (= (or b!6291122 b!6291118) bm!532691))

(assert (= (or b!6291124 bm!532690) bm!532689))

(assert (= (or b!6291124 bm!532691) bm!532687))

(assert (= (or b!6291121 bm!532687) bm!532688))

(assert (= (or b!6291121 b!6291124) bm!532686))

(declare-fun m!7111652 () Bool)

(assert (=> b!6291116 m!7111652))

(declare-fun m!7111654 () Bool)

(assert (=> b!6291117 m!7111654))

(declare-fun m!7111656 () Bool)

(assert (=> bm!532686 m!7111656))

(declare-fun m!7111658 () Bool)

(assert (=> bm!532689 m!7111658))

(declare-fun m!7111660 () Bool)

(assert (=> bm!532688 m!7111660))

(assert (=> bm!532649 d!1974152))

(declare-fun d!1974154 () Bool)

(assert (=> d!1974154 (= (maxBigInt!0 (contextDepth!229 (h!71264 lt!2357078)) (zipperDepth!338 (t!378502 lt!2357078))) (ite (>= (contextDepth!229 (h!71264 lt!2357078)) (zipperDepth!338 (t!378502 lt!2357078))) (contextDepth!229 (h!71264 lt!2357078)) (zipperDepth!338 (t!378502 lt!2357078))))))

(assert (=> b!6290781 d!1974154))

(declare-fun bs!1572340 () Bool)

(declare-fun b!6291134 () Bool)

(assert (= bs!1572340 (and b!6291134 d!1973910)))

(declare-fun lambda!345604 () Int)

(assert (=> bs!1572340 (not (= lambda!345604 lambda!345546))))

(declare-fun bs!1572341 () Bool)

(assert (= bs!1572341 (and b!6291134 d!1973998)))

(assert (=> bs!1572341 (not (= lambda!345604 lambda!345571))))

(declare-fun bs!1572342 () Bool)

(assert (= bs!1572342 (and b!6291134 d!1974034)))

(assert (=> bs!1572342 (not (= lambda!345604 lambda!345577))))

(declare-fun bs!1572343 () Bool)

(assert (= bs!1572343 (and b!6291134 d!1973900)))

(assert (=> bs!1572343 (not (= lambda!345604 lambda!345542))))

(declare-fun bs!1572344 () Bool)

(assert (= bs!1572344 (and b!6291134 d!1974050)))

(assert (=> bs!1572344 (not (= lambda!345604 lambda!345596))))

(declare-fun bs!1572345 () Bool)

(assert (= bs!1572345 (and b!6291134 d!1974004)))

(assert (=> bs!1572345 (not (= lambda!345604 lambda!345572))))

(declare-fun bs!1572346 () Bool)

(assert (= bs!1572346 (and b!6291134 d!1974090)))

(assert (=> bs!1572346 (not (= lambda!345604 lambda!345599))))

(declare-fun bs!1572347 () Bool)

(assert (= bs!1572347 (and b!6291134 d!1974056)))

(assert (=> bs!1572347 (not (= lambda!345604 lambda!345597))))

(assert (=> b!6291134 true))

(declare-fun bs!1572348 () Bool)

(declare-fun b!6291136 () Bool)

(assert (= bs!1572348 (and b!6291136 b!6291134)))

(declare-fun lambda!345605 () Int)

(declare-fun lt!2357313 () Int)

(declare-fun lt!2357312 () Int)

(assert (=> bs!1572348 (= (= lt!2357312 lt!2357313) (= lambda!345605 lambda!345604))))

(declare-fun bs!1572349 () Bool)

(assert (= bs!1572349 (and b!6291136 d!1973910)))

(assert (=> bs!1572349 (not (= lambda!345605 lambda!345546))))

(declare-fun bs!1572350 () Bool)

(assert (= bs!1572350 (and b!6291136 d!1973998)))

(assert (=> bs!1572350 (not (= lambda!345605 lambda!345571))))

(declare-fun bs!1572351 () Bool)

(assert (= bs!1572351 (and b!6291136 d!1974034)))

(assert (=> bs!1572351 (not (= lambda!345605 lambda!345577))))

(declare-fun bs!1572352 () Bool)

(assert (= bs!1572352 (and b!6291136 d!1973900)))

(assert (=> bs!1572352 (not (= lambda!345605 lambda!345542))))

(declare-fun bs!1572353 () Bool)

(assert (= bs!1572353 (and b!6291136 d!1974050)))

(assert (=> bs!1572353 (not (= lambda!345605 lambda!345596))))

(declare-fun bs!1572354 () Bool)

(assert (= bs!1572354 (and b!6291136 d!1974004)))

(assert (=> bs!1572354 (not (= lambda!345605 lambda!345572))))

(declare-fun bs!1572355 () Bool)

(assert (= bs!1572355 (and b!6291136 d!1974090)))

(assert (=> bs!1572355 (not (= lambda!345605 lambda!345599))))

(declare-fun bs!1572356 () Bool)

(assert (= bs!1572356 (and b!6291136 d!1974056)))

(assert (=> bs!1572356 (not (= lambda!345605 lambda!345597))))

(assert (=> b!6291136 true))

(declare-fun d!1974156 () Bool)

(declare-fun e!3825355 () Bool)

(assert (=> d!1974156 e!3825355))

(declare-fun res!2594448 () Bool)

(assert (=> d!1974156 (=> (not res!2594448) (not e!3825355))))

(assert (=> d!1974156 (= res!2594448 (>= lt!2357312 0))))

(declare-fun e!3825354 () Int)

(assert (=> d!1974156 (= lt!2357312 e!3825354)))

(declare-fun c!1141681 () Bool)

(assert (=> d!1974156 (= c!1141681 ((_ is Cons!64815) (exprs!6097 (h!71264 lt!2357078))))))

(assert (=> d!1974156 (= (contextDepth!229 (h!71264 lt!2357078)) lt!2357312)))

(assert (=> b!6291134 (= e!3825354 lt!2357313)))

(declare-fun regexDepth!315 (Regex!16213) Int)

(assert (=> b!6291134 (= lt!2357313 (maxBigInt!0 (regexDepth!315 (h!71263 (exprs!6097 (h!71264 lt!2357078)))) (contextDepth!229 (Context!11195 (t!378501 (exprs!6097 (h!71264 lt!2357078)))))))))

(declare-fun lt!2357311 () Unit!158183)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!105 (List!64939 Int Int) Unit!158183)

(assert (=> b!6291134 (= lt!2357311 (lemmaForallRegexDepthBiggerThanTransitive!105 (t!378501 (exprs!6097 (h!71264 lt!2357078))) lt!2357313 (contextDepth!229 (Context!11195 (t!378501 (exprs!6097 (h!71264 lt!2357078)))))))))

(assert (=> b!6291134 (forall!15362 (t!378501 (exprs!6097 (h!71264 lt!2357078))) lambda!345604)))

(declare-fun lt!2357314 () Unit!158183)

(assert (=> b!6291134 (= lt!2357314 lt!2357311)))

(declare-fun b!6291135 () Bool)

(assert (=> b!6291135 (= e!3825354 0)))

(assert (=> b!6291136 (= e!3825355 (forall!15362 (exprs!6097 (h!71264 lt!2357078)) lambda!345605))))

(assert (= (and d!1974156 c!1141681) b!6291134))

(assert (= (and d!1974156 (not c!1141681)) b!6291135))

(assert (= (and d!1974156 res!2594448) b!6291136))

(declare-fun m!7111662 () Bool)

(assert (=> b!6291134 m!7111662))

(declare-fun m!7111664 () Bool)

(assert (=> b!6291134 m!7111664))

(declare-fun m!7111666 () Bool)

(assert (=> b!6291134 m!7111666))

(assert (=> b!6291134 m!7111664))

(declare-fun m!7111668 () Bool)

(assert (=> b!6291134 m!7111668))

(assert (=> b!6291134 m!7111666))

(assert (=> b!6291134 m!7111664))

(declare-fun m!7111670 () Bool)

(assert (=> b!6291134 m!7111670))

(declare-fun m!7111672 () Bool)

(assert (=> b!6291136 m!7111672))

(assert (=> b!6290781 d!1974156))

(declare-fun bs!1572357 () Bool)

(declare-fun d!1974158 () Bool)

(assert (= bs!1572357 (and d!1974158 b!6290781)))

(declare-fun lambda!345608 () Int)

(assert (=> bs!1572357 (not (= lambda!345608 lambda!345589))))

(declare-fun bs!1572358 () Bool)

(assert (= bs!1572358 (and d!1974158 b!6290783)))

(assert (=> bs!1572358 (not (= lambda!345608 lambda!345590))))

(declare-fun bs!1572359 () Bool)

(assert (= bs!1572359 (and d!1974158 b!6290786)))

(assert (=> bs!1572359 (not (= lambda!345608 lambda!345592))))

(declare-fun bs!1572360 () Bool)

(assert (= bs!1572360 (and d!1974158 b!6290788)))

(assert (=> bs!1572360 (not (= lambda!345608 lambda!345593))))

(assert (=> d!1974158 true))

(assert (=> d!1974158 true))

(declare-fun order!27479 () Int)

(declare-fun order!27477 () Int)

(declare-fun dynLambda!25648 (Int Int) Int)

(declare-fun dynLambda!25649 (Int Int) Int)

(assert (=> d!1974158 (< (dynLambda!25648 order!27477 lambda!345588) (dynLambda!25649 order!27479 lambda!345608))))

(assert (=> d!1974158 (forall!15363 (t!378502 lt!2357078) lambda!345608)))

(declare-fun lt!2357317 () Unit!158183)

(declare-fun choose!46748 (List!64940 Int Int Int) Unit!158183)

(assert (=> d!1974158 (= lt!2357317 (choose!46748 (t!378502 lt!2357078) lt!2357274 (zipperDepth!338 (t!378502 lt!2357078)) lambda!345588))))

(assert (=> d!1974158 (>= lt!2357274 (zipperDepth!338 (t!378502 lt!2357078)))))

(assert (=> d!1974158 (= (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 lt!2357078) lt!2357274 (zipperDepth!338 (t!378502 lt!2357078)) lambda!345588) lt!2357317)))

(declare-fun bs!1572361 () Bool)

(assert (= bs!1572361 d!1974158))

(declare-fun m!7111674 () Bool)

(assert (=> bs!1572361 m!7111674))

(assert (=> bs!1572361 m!7111388))

(declare-fun m!7111676 () Bool)

(assert (=> bs!1572361 m!7111676))

(assert (=> b!6290781 d!1974158))

(declare-fun bs!1572362 () Bool)

(declare-fun b!6291142 () Bool)

(assert (= bs!1572362 (and b!6291142 b!6290781)))

(declare-fun lambda!345609 () Int)

(assert (=> bs!1572362 (= lambda!345609 lambda!345588)))

(declare-fun bs!1572363 () Bool)

(assert (= bs!1572363 (and b!6291142 b!6290786)))

(assert (=> bs!1572363 (= lambda!345609 lambda!345591)))

(declare-fun bs!1572364 () Bool)

(assert (= bs!1572364 (and b!6291142 d!1974158)))

(declare-fun lambda!345610 () Int)

(assert (=> bs!1572364 (not (= lambda!345610 lambda!345608))))

(declare-fun bs!1572365 () Bool)

(assert (= bs!1572365 (and b!6291142 b!6290783)))

(declare-fun lt!2357321 () Int)

(assert (=> bs!1572365 (= (= lt!2357321 lt!2357271) (= lambda!345610 lambda!345590))))

(assert (=> bs!1572363 (= (= lt!2357321 lt!2357278) (= lambda!345610 lambda!345592))))

(declare-fun bs!1572366 () Bool)

(assert (= bs!1572366 (and b!6291142 b!6290788)))

(assert (=> bs!1572366 (= (= lt!2357321 lt!2357275) (= lambda!345610 lambda!345593))))

(assert (=> bs!1572362 (= (= lt!2357321 lt!2357274) (= lambda!345610 lambda!345589))))

(assert (=> b!6291142 true))

(declare-fun bs!1572367 () Bool)

(declare-fun b!6291144 () Bool)

(assert (= bs!1572367 (and b!6291144 b!6291142)))

(declare-fun lambda!345611 () Int)

(declare-fun lt!2357318 () Int)

(assert (=> bs!1572367 (= (= lt!2357318 lt!2357321) (= lambda!345611 lambda!345610))))

(declare-fun bs!1572368 () Bool)

(assert (= bs!1572368 (and b!6291144 d!1974158)))

(assert (=> bs!1572368 (not (= lambda!345611 lambda!345608))))

(declare-fun bs!1572369 () Bool)

(assert (= bs!1572369 (and b!6291144 b!6290783)))

(assert (=> bs!1572369 (= (= lt!2357318 lt!2357271) (= lambda!345611 lambda!345590))))

(declare-fun bs!1572370 () Bool)

(assert (= bs!1572370 (and b!6291144 b!6290786)))

(assert (=> bs!1572370 (= (= lt!2357318 lt!2357278) (= lambda!345611 lambda!345592))))

(declare-fun bs!1572371 () Bool)

(assert (= bs!1572371 (and b!6291144 b!6290788)))

(assert (=> bs!1572371 (= (= lt!2357318 lt!2357275) (= lambda!345611 lambda!345593))))

(declare-fun bs!1572372 () Bool)

(assert (= bs!1572372 (and b!6291144 b!6290781)))

(assert (=> bs!1572372 (= (= lt!2357318 lt!2357274) (= lambda!345611 lambda!345589))))

(assert (=> b!6291144 true))

(declare-fun d!1974160 () Bool)

(declare-fun e!3825356 () Bool)

(assert (=> d!1974160 e!3825356))

(declare-fun res!2594449 () Bool)

(assert (=> d!1974160 (=> (not res!2594449) (not e!3825356))))

(assert (=> d!1974160 (= res!2594449 (>= lt!2357318 0))))

(declare-fun e!3825357 () Int)

(assert (=> d!1974160 (= lt!2357318 e!3825357)))

(declare-fun c!1141684 () Bool)

(assert (=> d!1974160 (= c!1141684 ((_ is Cons!64816) (t!378502 lt!2357078)))))

(assert (=> d!1974160 (= (zipperDepth!338 (t!378502 lt!2357078)) lt!2357318)))

(assert (=> b!6291142 (= e!3825357 lt!2357321)))

(assert (=> b!6291142 (= lt!2357321 (maxBigInt!0 (contextDepth!229 (h!71264 (t!378502 lt!2357078))) (zipperDepth!338 (t!378502 (t!378502 lt!2357078)))))))

(declare-fun lt!2357320 () Unit!158183)

(assert (=> b!6291142 (= lt!2357320 (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 (t!378502 lt!2357078)) lt!2357321 (zipperDepth!338 (t!378502 (t!378502 lt!2357078))) lambda!345609))))

(assert (=> b!6291142 (forall!15363 (t!378502 (t!378502 lt!2357078)) lambda!345610)))

(declare-fun lt!2357319 () Unit!158183)

(assert (=> b!6291142 (= lt!2357319 lt!2357320)))

(declare-fun b!6291143 () Bool)

(assert (=> b!6291143 (= e!3825357 0)))

(assert (=> b!6291144 (= e!3825356 (forall!15363 (t!378502 lt!2357078) lambda!345611))))

(assert (= (and d!1974160 c!1141684) b!6291142))

(assert (= (and d!1974160 (not c!1141684)) b!6291143))

(assert (= (and d!1974160 res!2594449) b!6291144))

(declare-fun m!7111678 () Bool)

(assert (=> b!6291142 m!7111678))

(declare-fun m!7111680 () Bool)

(assert (=> b!6291142 m!7111680))

(declare-fun m!7111682 () Bool)

(assert (=> b!6291142 m!7111682))

(assert (=> b!6291142 m!7111680))

(assert (=> b!6291142 m!7111678))

(assert (=> b!6291142 m!7111680))

(declare-fun m!7111684 () Bool)

(assert (=> b!6291142 m!7111684))

(declare-fun m!7111686 () Bool)

(assert (=> b!6291142 m!7111686))

(declare-fun m!7111688 () Bool)

(assert (=> b!6291144 m!7111688))

(assert (=> b!6290781 d!1974160))

(declare-fun d!1974162 () Bool)

(declare-fun res!2594454 () Bool)

(declare-fun e!3825362 () Bool)

(assert (=> d!1974162 (=> res!2594454 e!3825362)))

(assert (=> d!1974162 (= res!2594454 ((_ is Nil!64816) (t!378502 lt!2357078)))))

(assert (=> d!1974162 (= (forall!15363 (t!378502 lt!2357078) lambda!345589) e!3825362)))

(declare-fun b!6291149 () Bool)

(declare-fun e!3825363 () Bool)

(assert (=> b!6291149 (= e!3825362 e!3825363)))

(declare-fun res!2594455 () Bool)

(assert (=> b!6291149 (=> (not res!2594455) (not e!3825363))))

(declare-fun dynLambda!25650 (Int Context!11194) Bool)

(assert (=> b!6291149 (= res!2594455 (dynLambda!25650 lambda!345589 (h!71264 (t!378502 lt!2357078))))))

(declare-fun b!6291150 () Bool)

(assert (=> b!6291150 (= e!3825363 (forall!15363 (t!378502 (t!378502 lt!2357078)) lambda!345589))))

(assert (= (and d!1974162 (not res!2594454)) b!6291149))

(assert (= (and b!6291149 res!2594455) b!6291150))

(declare-fun b_lambda!239365 () Bool)

(assert (=> (not b_lambda!239365) (not b!6291149)))

(declare-fun m!7111690 () Bool)

(assert (=> b!6291149 m!7111690))

(declare-fun m!7111692 () Bool)

(assert (=> b!6291150 m!7111692))

(assert (=> b!6290781 d!1974162))

(declare-fun call!532699 () (InoxSet Context!11194))

(declare-fun call!532697 () List!64939)

(declare-fun c!1141685 () Bool)

(declare-fun bm!532692 () Bool)

(assert (=> bm!532692 (= call!532699 (derivationStepZipperDown!1461 (ite c!1141685 (regOne!32939 (h!71263 (exprs!6097 lt!2357094))) (regOne!32938 (h!71263 (exprs!6097 lt!2357094)))) (ite c!1141685 (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (Context!11195 call!532697)) (h!71262 s!2326)))))

(declare-fun b!6291151 () Bool)

(declare-fun e!3825367 () Bool)

(assert (=> b!6291151 (= e!3825367 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 lt!2357094)))))))

(declare-fun bm!532693 () Bool)

(declare-fun call!532701 () (InoxSet Context!11194))

(declare-fun call!532698 () (InoxSet Context!11194))

(assert (=> bm!532693 (= call!532701 call!532698)))

(declare-fun d!1974164 () Bool)

(declare-fun c!1141689 () Bool)

(assert (=> d!1974164 (= c!1141689 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 lt!2357094))) (= (c!1141284 (h!71263 (exprs!6097 lt!2357094))) (h!71262 s!2326))))))

(declare-fun e!3825364 () (InoxSet Context!11194))

(assert (=> d!1974164 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357094)) (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (h!71262 s!2326)) e!3825364)))

(declare-fun b!6291152 () Bool)

(assert (=> b!6291152 (= e!3825364 (store ((as const (Array Context!11194 Bool)) false) (Context!11195 (t!378501 (exprs!6097 lt!2357094))) true))))

(declare-fun c!1141687 () Bool)

(declare-fun c!1141688 () Bool)

(declare-fun call!532702 () List!64939)

(declare-fun bm!532694 () Bool)

(assert (=> bm!532694 (= call!532698 (derivationStepZipperDown!1461 (ite c!1141685 (regTwo!32939 (h!71263 (exprs!6097 lt!2357094))) (ite c!1141687 (regTwo!32938 (h!71263 (exprs!6097 lt!2357094))) (ite c!1141688 (regOne!32938 (h!71263 (exprs!6097 lt!2357094))) (reg!16542 (h!71263 (exprs!6097 lt!2357094)))))) (ite (or c!1141685 c!1141687) (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (Context!11195 call!532702)) (h!71262 s!2326)))))

(declare-fun b!6291153 () Bool)

(declare-fun e!3825366 () (InoxSet Context!11194))

(declare-fun call!532700 () (InoxSet Context!11194))

(assert (=> b!6291153 (= e!3825366 call!532700)))

(declare-fun b!6291154 () Bool)

(declare-fun e!3825369 () (InoxSet Context!11194))

(declare-fun e!3825368 () (InoxSet Context!11194))

(assert (=> b!6291154 (= e!3825369 e!3825368)))

(assert (=> b!6291154 (= c!1141688 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357094))))))

(declare-fun b!6291155 () Bool)

(assert (=> b!6291155 (= e!3825366 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291156 () Bool)

(declare-fun e!3825365 () (InoxSet Context!11194))

(assert (=> b!6291156 (= e!3825365 ((_ map or) call!532699 call!532698))))

(declare-fun b!6291157 () Bool)

(assert (=> b!6291157 (= e!3825368 call!532700)))

(declare-fun b!6291158 () Bool)

(assert (=> b!6291158 (= c!1141687 e!3825367)))

(declare-fun res!2594456 () Bool)

(assert (=> b!6291158 (=> (not res!2594456) (not e!3825367))))

(assert (=> b!6291158 (= res!2594456 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357094))))))

(assert (=> b!6291158 (= e!3825365 e!3825369)))

(declare-fun bm!532695 () Bool)

(assert (=> bm!532695 (= call!532697 ($colon$colon!2078 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094)))) (ite (or c!1141687 c!1141688) (regTwo!32938 (h!71263 (exprs!6097 lt!2357094))) (h!71263 (exprs!6097 lt!2357094)))))))

(declare-fun b!6291159 () Bool)

(assert (=> b!6291159 (= e!3825369 ((_ map or) call!532699 call!532701))))

(declare-fun b!6291160 () Bool)

(declare-fun c!1141686 () Bool)

(assert (=> b!6291160 (= c!1141686 ((_ is Star!16213) (h!71263 (exprs!6097 lt!2357094))))))

(assert (=> b!6291160 (= e!3825368 e!3825366)))

(declare-fun bm!532696 () Bool)

(assert (=> bm!532696 (= call!532702 call!532697)))

(declare-fun bm!532697 () Bool)

(assert (=> bm!532697 (= call!532700 call!532701)))

(declare-fun b!6291161 () Bool)

(assert (=> b!6291161 (= e!3825364 e!3825365)))

(assert (=> b!6291161 (= c!1141685 ((_ is Union!16213) (h!71263 (exprs!6097 lt!2357094))))))

(assert (= (and d!1974164 c!1141689) b!6291152))

(assert (= (and d!1974164 (not c!1141689)) b!6291161))

(assert (= (and b!6291161 c!1141685) b!6291156))

(assert (= (and b!6291161 (not c!1141685)) b!6291158))

(assert (= (and b!6291158 res!2594456) b!6291151))

(assert (= (and b!6291158 c!1141687) b!6291159))

(assert (= (and b!6291158 (not c!1141687)) b!6291154))

(assert (= (and b!6291154 c!1141688) b!6291157))

(assert (= (and b!6291154 (not c!1141688)) b!6291160))

(assert (= (and b!6291160 c!1141686) b!6291153))

(assert (= (and b!6291160 (not c!1141686)) b!6291155))

(assert (= (or b!6291157 b!6291153) bm!532696))

(assert (= (or b!6291157 b!6291153) bm!532697))

(assert (= (or b!6291159 bm!532696) bm!532695))

(assert (= (or b!6291159 bm!532697) bm!532693))

(assert (= (or b!6291156 bm!532693) bm!532694))

(assert (= (or b!6291156 b!6291159) bm!532692))

(declare-fun m!7111694 () Bool)

(assert (=> b!6291151 m!7111694))

(declare-fun m!7111696 () Bool)

(assert (=> b!6291152 m!7111696))

(declare-fun m!7111698 () Bool)

(assert (=> bm!532692 m!7111698))

(declare-fun m!7111700 () Bool)

(assert (=> bm!532695 m!7111700))

(declare-fun m!7111702 () Bool)

(assert (=> bm!532694 m!7111702))

(assert (=> bm!532617 d!1974164))

(declare-fun bs!1572373 () Bool)

(declare-fun d!1974166 () Bool)

(assert (= bs!1572373 (and d!1974166 d!1974158)))

(declare-fun lambda!345614 () Int)

(assert (=> bs!1572373 (not (= lambda!345614 lambda!345608))))

(declare-fun bs!1572374 () Bool)

(assert (= bs!1572374 (and d!1974166 b!6290783)))

(assert (=> bs!1572374 (not (= lambda!345614 lambda!345590))))

(declare-fun bs!1572375 () Bool)

(assert (= bs!1572375 (and d!1974166 b!6290786)))

(assert (=> bs!1572375 (not (= lambda!345614 lambda!345592))))

(declare-fun bs!1572376 () Bool)

(assert (= bs!1572376 (and d!1974166 b!6291144)))

(assert (=> bs!1572376 (not (= lambda!345614 lambda!345611))))

(declare-fun bs!1572377 () Bool)

(assert (= bs!1572377 (and d!1974166 b!6291142)))

(assert (=> bs!1572377 (not (= lambda!345614 lambda!345610))))

(declare-fun bs!1572378 () Bool)

(assert (= bs!1572378 (and d!1974166 b!6290788)))

(assert (=> bs!1572378 (not (= lambda!345614 lambda!345593))))

(declare-fun bs!1572379 () Bool)

(assert (= bs!1572379 (and d!1974166 b!6290781)))

(assert (=> bs!1572379 (not (= lambda!345614 lambda!345589))))

(declare-fun exists!2528 ((InoxSet Context!11194) Int) Bool)

(assert (=> d!1974166 (= (nullableZipper!1983 z!1189) (exists!2528 z!1189 lambda!345614))))

(declare-fun bs!1572380 () Bool)

(assert (= bs!1572380 d!1974166))

(declare-fun m!7111704 () Bool)

(assert (=> bs!1572380 m!7111704))

(assert (=> b!6290738 d!1974166))

(declare-fun bs!1572381 () Bool)

(declare-fun b!6291172 () Bool)

(assert (= bs!1572381 (and b!6291172 b!6289815)))

(declare-fun lambda!345615 () Int)

(assert (=> bs!1572381 (not (= lambda!345615 lambda!345482))))

(declare-fun bs!1572382 () Bool)

(assert (= bs!1572382 (and b!6291172 d!1974040)))

(assert (=> bs!1572382 (not (= lambda!345615 lambda!345579))))

(declare-fun bs!1572383 () Bool)

(assert (= bs!1572383 (and b!6291172 d!1974006)))

(assert (=> bs!1572383 (not (= lambda!345615 lambda!345573))))

(declare-fun bs!1572384 () Bool)

(assert (= bs!1572384 (and b!6291172 d!1974042)))

(assert (=> bs!1572384 (not (= lambda!345615 lambda!345581))))

(assert (=> bs!1572382 (not (= lambda!345615 lambda!345578))))

(declare-fun bs!1572385 () Bool)

(assert (= bs!1572385 (and b!6291172 b!6290728)))

(assert (=> bs!1572385 (not (= lambda!345615 lambda!345576))))

(declare-fun bs!1572386 () Bool)

(assert (= bs!1572386 (and b!6291172 d!1973990)))

(assert (=> bs!1572386 (not (= lambda!345615 lambda!345565))))

(assert (=> bs!1572381 (not (= lambda!345615 lambda!345484))))

(declare-fun bs!1572387 () Bool)

(assert (= bs!1572387 (and b!6291172 b!6289816)))

(assert (=> bs!1572387 (not (= lambda!345615 lambda!345480))))

(assert (=> bs!1572381 (not (= lambda!345615 lambda!345483))))

(declare-fun bs!1572388 () Bool)

(assert (= bs!1572388 (and b!6291172 d!1973988)))

(assert (=> bs!1572388 (not (= lambda!345615 lambda!345560))))

(declare-fun bs!1572389 () Bool)

(assert (= bs!1572389 (and b!6291172 b!6290675)))

(assert (=> bs!1572389 (= (and (= (reg!16542 (regOne!32939 lt!2357061)) (reg!16542 lt!2357061)) (= (regOne!32939 lt!2357061) lt!2357061)) (= lambda!345615 lambda!345567))))

(assert (=> bs!1572386 (not (= lambda!345615 lambda!345566))))

(declare-fun bs!1572390 () Bool)

(assert (= bs!1572390 (and b!6291172 b!6290457)))

(assert (=> bs!1572390 (= (and (= (reg!16542 (regOne!32939 lt!2357061)) (reg!16542 r!7292)) (= (regOne!32939 lt!2357061) r!7292)) (= lambda!345615 lambda!345553))))

(assert (=> bs!1572381 (not (= lambda!345615 lambda!345485))))

(declare-fun bs!1572391 () Bool)

(assert (= bs!1572391 (and b!6291172 b!6290737)))

(assert (=> bs!1572391 (= (and (= (reg!16542 (regOne!32939 lt!2357061)) (reg!16542 lt!2357070)) (= (regOne!32939 lt!2357061) lt!2357070)) (= lambda!345615 lambda!345575))))

(declare-fun bs!1572392 () Bool)

(assert (= bs!1572392 (and b!6291172 d!1974010)))

(assert (=> bs!1572392 (not (= lambda!345615 lambda!345574))))

(assert (=> bs!1572384 (not (= lambda!345615 lambda!345580))))

(assert (=> bs!1572387 (not (= lambda!345615 lambda!345479))))

(declare-fun bs!1572393 () Bool)

(assert (= bs!1572393 (and b!6291172 b!6290448)))

(assert (=> bs!1572393 (not (= lambda!345615 lambda!345554))))

(declare-fun bs!1572394 () Bool)

(assert (= bs!1572394 (and b!6291172 b!6290666)))

(assert (=> bs!1572394 (not (= lambda!345615 lambda!345568))))

(assert (=> b!6291172 true))

(assert (=> b!6291172 true))

(declare-fun bs!1572395 () Bool)

(declare-fun b!6291163 () Bool)

(assert (= bs!1572395 (and b!6291163 b!6289815)))

(declare-fun lambda!345616 () Int)

(assert (=> bs!1572395 (not (= lambda!345616 lambda!345482))))

(declare-fun bs!1572396 () Bool)

(assert (= bs!1572396 (and b!6291163 d!1974040)))

(assert (=> bs!1572396 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357061)) lt!2357070)) (= lambda!345616 lambda!345579))))

(declare-fun bs!1572397 () Bool)

(assert (= bs!1572397 (and b!6291163 d!1974006)))

(assert (=> bs!1572397 (not (= lambda!345616 lambda!345573))))

(declare-fun bs!1572398 () Bool)

(assert (= bs!1572398 (and b!6291163 d!1974042)))

(assert (=> bs!1572398 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357061)) lt!2357053)) (= lambda!345616 lambda!345581))))

(assert (=> bs!1572396 (not (= lambda!345616 lambda!345578))))

(declare-fun bs!1572399 () Bool)

(assert (= bs!1572399 (and b!6291163 b!6290728)))

(assert (=> bs!1572399 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regOne!32939 lt!2357061)) (regTwo!32938 lt!2357070))) (= lambda!345616 lambda!345576))))

(declare-fun bs!1572400 () Bool)

(assert (= bs!1572400 (and b!6291163 b!6291172)))

(assert (=> bs!1572400 (not (= lambda!345616 lambda!345615))))

(declare-fun bs!1572401 () Bool)

(assert (= bs!1572401 (and b!6291163 d!1973990)))

(assert (=> bs!1572401 (not (= lambda!345616 lambda!345565))))

(assert (=> bs!1572395 (not (= lambda!345616 lambda!345484))))

(declare-fun bs!1572402 () Bool)

(assert (= bs!1572402 (and b!6291163 b!6289816)))

(assert (=> bs!1572402 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345616 lambda!345480))))

(assert (=> bs!1572395 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357061)) lt!2357070)) (= lambda!345616 lambda!345483))))

(declare-fun bs!1572403 () Bool)

(assert (= bs!1572403 (and b!6291163 d!1973988)))

(assert (=> bs!1572403 (not (= lambda!345616 lambda!345560))))

(declare-fun bs!1572404 () Bool)

(assert (= bs!1572404 (and b!6291163 b!6290675)))

(assert (=> bs!1572404 (not (= lambda!345616 lambda!345567))))

(assert (=> bs!1572401 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345616 lambda!345566))))

(declare-fun bs!1572405 () Bool)

(assert (= bs!1572405 (and b!6291163 b!6290457)))

(assert (=> bs!1572405 (not (= lambda!345616 lambda!345553))))

(assert (=> bs!1572395 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357061)) lt!2357053)) (= lambda!345616 lambda!345485))))

(declare-fun bs!1572406 () Bool)

(assert (= bs!1572406 (and b!6291163 b!6290737)))

(assert (=> bs!1572406 (not (= lambda!345616 lambda!345575))))

(declare-fun bs!1572407 () Bool)

(assert (= bs!1572407 (and b!6291163 d!1974010)))

(assert (=> bs!1572407 (not (= lambda!345616 lambda!345574))))

(assert (=> bs!1572398 (not (= lambda!345616 lambda!345580))))

(assert (=> bs!1572402 (not (= lambda!345616 lambda!345479))))

(declare-fun bs!1572408 () Bool)

(assert (= bs!1572408 (and b!6291163 b!6290448)))

(assert (=> bs!1572408 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345616 lambda!345554))))

(declare-fun bs!1572409 () Bool)

(assert (= bs!1572409 (and b!6291163 b!6290666)))

(assert (=> bs!1572409 (= (and (= (regOne!32938 (regOne!32939 lt!2357061)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regOne!32939 lt!2357061)) (regTwo!32938 lt!2357061))) (= lambda!345616 lambda!345568))))

(assert (=> b!6291163 true))

(assert (=> b!6291163 true))

(declare-fun b!6291162 () Bool)

(declare-fun c!1141693 () Bool)

(assert (=> b!6291162 (= c!1141693 ((_ is Union!16213) (regOne!32939 lt!2357061)))))

(declare-fun e!3825374 () Bool)

(declare-fun e!3825373 () Bool)

(assert (=> b!6291162 (= e!3825374 e!3825373)))

(declare-fun e!3825371 () Bool)

(declare-fun call!532704 () Bool)

(assert (=> b!6291163 (= e!3825371 call!532704)))

(declare-fun b!6291164 () Bool)

(declare-fun e!3825370 () Bool)

(declare-fun e!3825376 () Bool)

(assert (=> b!6291164 (= e!3825370 e!3825376)))

(declare-fun res!2594457 () Bool)

(assert (=> b!6291164 (= res!2594457 (not ((_ is EmptyLang!16213) (regOne!32939 lt!2357061))))))

(assert (=> b!6291164 (=> (not res!2594457) (not e!3825376))))

(declare-fun b!6291165 () Bool)

(declare-fun e!3825375 () Bool)

(assert (=> b!6291165 (= e!3825373 e!3825375)))

(declare-fun res!2594458 () Bool)

(assert (=> b!6291165 (= res!2594458 (matchRSpec!3314 (regOne!32939 (regOne!32939 lt!2357061)) s!2326))))

(assert (=> b!6291165 (=> res!2594458 e!3825375)))

(declare-fun b!6291166 () Bool)

(declare-fun res!2594459 () Bool)

(declare-fun e!3825372 () Bool)

(assert (=> b!6291166 (=> res!2594459 e!3825372)))

(declare-fun call!532703 () Bool)

(assert (=> b!6291166 (= res!2594459 call!532703)))

(assert (=> b!6291166 (= e!3825371 e!3825372)))

(declare-fun b!6291167 () Bool)

(assert (=> b!6291167 (= e!3825374 (= s!2326 (Cons!64814 (c!1141284 (regOne!32939 lt!2357061)) Nil!64814)))))

(declare-fun b!6291168 () Bool)

(assert (=> b!6291168 (= e!3825373 e!3825371)))

(declare-fun c!1141692 () Bool)

(assert (=> b!6291168 (= c!1141692 ((_ is Star!16213) (regOne!32939 lt!2357061)))))

(declare-fun b!6291169 () Bool)

(declare-fun c!1141695 () Bool)

(assert (=> b!6291169 (= c!1141695 ((_ is ElementMatch!16213) (regOne!32939 lt!2357061)))))

(assert (=> b!6291169 (= e!3825376 e!3825374)))

(declare-fun d!1974168 () Bool)

(declare-fun c!1141694 () Bool)

(assert (=> d!1974168 (= c!1141694 ((_ is EmptyExpr!16213) (regOne!32939 lt!2357061)))))

(assert (=> d!1974168 (= (matchRSpec!3314 (regOne!32939 lt!2357061) s!2326) e!3825370)))

(declare-fun b!6291170 () Bool)

(assert (=> b!6291170 (= e!3825375 (matchRSpec!3314 (regTwo!32939 (regOne!32939 lt!2357061)) s!2326))))

(declare-fun b!6291171 () Bool)

(assert (=> b!6291171 (= e!3825370 call!532703)))

(assert (=> b!6291172 (= e!3825372 call!532704)))

(declare-fun bm!532698 () Bool)

(assert (=> bm!532698 (= call!532703 (isEmpty!36872 s!2326))))

(declare-fun bm!532699 () Bool)

(assert (=> bm!532699 (= call!532704 (Exists!3283 (ite c!1141692 lambda!345615 lambda!345616)))))

(assert (= (and d!1974168 c!1141694) b!6291171))

(assert (= (and d!1974168 (not c!1141694)) b!6291164))

(assert (= (and b!6291164 res!2594457) b!6291169))

(assert (= (and b!6291169 c!1141695) b!6291167))

(assert (= (and b!6291169 (not c!1141695)) b!6291162))

(assert (= (and b!6291162 c!1141693) b!6291165))

(assert (= (and b!6291162 (not c!1141693)) b!6291168))

(assert (= (and b!6291165 (not res!2594458)) b!6291170))

(assert (= (and b!6291168 c!1141692) b!6291166))

(assert (= (and b!6291168 (not c!1141692)) b!6291163))

(assert (= (and b!6291166 (not res!2594459)) b!6291172))

(assert (= (or b!6291172 b!6291163) bm!532699))

(assert (= (or b!6291171 b!6291166) bm!532698))

(declare-fun m!7111706 () Bool)

(assert (=> b!6291165 m!7111706))

(declare-fun m!7111708 () Bool)

(assert (=> b!6291170 m!7111708))

(assert (=> bm!532698 m!7111076))

(declare-fun m!7111710 () Bool)

(assert (=> bm!532699 m!7111710))

(assert (=> b!6290668 d!1974168))

(assert (=> b!6290907 d!1974146))

(declare-fun d!1974170 () Bool)

(assert (=> d!1974170 (= (isDefined!12807 lt!2357248) (not (isEmpty!36874 lt!2357248)))))

(declare-fun bs!1572410 () Bool)

(assert (= bs!1572410 d!1974170))

(declare-fun m!7111712 () Bool)

(assert (=> bs!1572410 m!7111712))

(assert (=> b!6290716 d!1974170))

(declare-fun d!1974172 () Bool)

(declare-fun res!2594464 () Bool)

(declare-fun e!3825381 () Bool)

(assert (=> d!1974172 (=> res!2594464 e!3825381)))

(assert (=> d!1974172 (= res!2594464 ((_ is Nil!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1974172 (= (forall!15362 (exprs!6097 (h!71264 zl!343)) lambda!345597) e!3825381)))

(declare-fun b!6291177 () Bool)

(declare-fun e!3825382 () Bool)

(assert (=> b!6291177 (= e!3825381 e!3825382)))

(declare-fun res!2594465 () Bool)

(assert (=> b!6291177 (=> (not res!2594465) (not e!3825382))))

(declare-fun dynLambda!25651 (Int Regex!16213) Bool)

(assert (=> b!6291177 (= res!2594465 (dynLambda!25651 lambda!345597 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6291178 () Bool)

(assert (=> b!6291178 (= e!3825382 (forall!15362 (t!378501 (exprs!6097 (h!71264 zl!343))) lambda!345597))))

(assert (= (and d!1974172 (not res!2594464)) b!6291177))

(assert (= (and b!6291177 res!2594465) b!6291178))

(declare-fun b_lambda!239367 () Bool)

(assert (=> (not b_lambda!239367) (not b!6291177)))

(declare-fun m!7111714 () Bool)

(assert (=> b!6291177 m!7111714))

(declare-fun m!7111716 () Bool)

(assert (=> b!6291178 m!7111716))

(assert (=> d!1974056 d!1974172))

(declare-fun b!6291179 () Bool)

(declare-fun e!3825389 () Bool)

(assert (=> b!6291179 (= e!3825389 (nullable!6206 lt!2357053))))

(declare-fun b!6291180 () Bool)

(declare-fun res!2594470 () Bool)

(declare-fun e!3825386 () Bool)

(assert (=> b!6291180 (=> res!2594470 e!3825386)))

(declare-fun e!3825385 () Bool)

(assert (=> b!6291180 (= res!2594470 e!3825385)))

(declare-fun res!2594473 () Bool)

(assert (=> b!6291180 (=> (not res!2594473) (not e!3825385))))

(declare-fun lt!2357322 () Bool)

(assert (=> b!6291180 (= res!2594473 lt!2357322)))

(declare-fun b!6291181 () Bool)

(assert (=> b!6291181 (= e!3825385 (= (head!12927 s!2326) (c!1141284 lt!2357053)))))

(declare-fun b!6291182 () Bool)

(declare-fun e!3825387 () Bool)

(assert (=> b!6291182 (= e!3825387 (not (= (head!12927 s!2326) (c!1141284 lt!2357053))))))

(declare-fun d!1974174 () Bool)

(declare-fun e!3825388 () Bool)

(assert (=> d!1974174 e!3825388))

(declare-fun c!1141696 () Bool)

(assert (=> d!1974174 (= c!1141696 ((_ is EmptyExpr!16213) lt!2357053))))

(assert (=> d!1974174 (= lt!2357322 e!3825389)))

(declare-fun c!1141697 () Bool)

(assert (=> d!1974174 (= c!1141697 (isEmpty!36872 s!2326))))

(assert (=> d!1974174 (validRegex!7949 lt!2357053)))

(assert (=> d!1974174 (= (matchR!8396 lt!2357053 s!2326) lt!2357322)))

(declare-fun b!6291183 () Bool)

(declare-fun e!3825384 () Bool)

(assert (=> b!6291183 (= e!3825384 (not lt!2357322))))

(declare-fun b!6291184 () Bool)

(declare-fun e!3825383 () Bool)

(assert (=> b!6291184 (= e!3825386 e!3825383)))

(declare-fun res!2594472 () Bool)

(assert (=> b!6291184 (=> (not res!2594472) (not e!3825383))))

(assert (=> b!6291184 (= res!2594472 (not lt!2357322))))

(declare-fun bm!532700 () Bool)

(declare-fun call!532705 () Bool)

(assert (=> bm!532700 (= call!532705 (isEmpty!36872 s!2326))))

(declare-fun b!6291185 () Bool)

(assert (=> b!6291185 (= e!3825388 (= lt!2357322 call!532705))))

(declare-fun b!6291186 () Bool)

(assert (=> b!6291186 (= e!3825388 e!3825384)))

(declare-fun c!1141698 () Bool)

(assert (=> b!6291186 (= c!1141698 ((_ is EmptyLang!16213) lt!2357053))))

(declare-fun b!6291187 () Bool)

(assert (=> b!6291187 (= e!3825383 e!3825387)))

(declare-fun res!2594471 () Bool)

(assert (=> b!6291187 (=> res!2594471 e!3825387)))

(assert (=> b!6291187 (= res!2594471 call!532705)))

(declare-fun b!6291188 () Bool)

(declare-fun res!2594467 () Bool)

(assert (=> b!6291188 (=> (not res!2594467) (not e!3825385))))

(assert (=> b!6291188 (= res!2594467 (not call!532705))))

(declare-fun b!6291189 () Bool)

(declare-fun res!2594466 () Bool)

(assert (=> b!6291189 (=> res!2594466 e!3825386)))

(assert (=> b!6291189 (= res!2594466 (not ((_ is ElementMatch!16213) lt!2357053)))))

(assert (=> b!6291189 (= e!3825384 e!3825386)))

(declare-fun b!6291190 () Bool)

(assert (=> b!6291190 (= e!3825389 (matchR!8396 (derivativeStep!4922 lt!2357053 (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6291191 () Bool)

(declare-fun res!2594468 () Bool)

(assert (=> b!6291191 (=> (not res!2594468) (not e!3825385))))

(assert (=> b!6291191 (= res!2594468 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291192 () Bool)

(declare-fun res!2594469 () Bool)

(assert (=> b!6291192 (=> res!2594469 e!3825387)))

(assert (=> b!6291192 (= res!2594469 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974174 c!1141697) b!6291179))

(assert (= (and d!1974174 (not c!1141697)) b!6291190))

(assert (= (and d!1974174 c!1141696) b!6291185))

(assert (= (and d!1974174 (not c!1141696)) b!6291186))

(assert (= (and b!6291186 c!1141698) b!6291183))

(assert (= (and b!6291186 (not c!1141698)) b!6291189))

(assert (= (and b!6291189 (not res!2594466)) b!6291180))

(assert (= (and b!6291180 res!2594473) b!6291188))

(assert (= (and b!6291188 res!2594467) b!6291191))

(assert (= (and b!6291191 res!2594468) b!6291181))

(assert (= (and b!6291180 (not res!2594470)) b!6291184))

(assert (= (and b!6291184 res!2594472) b!6291187))

(assert (= (and b!6291187 (not res!2594471)) b!6291192))

(assert (= (and b!6291192 (not res!2594469)) b!6291182))

(assert (= (or b!6291185 b!6291187 b!6291188) bm!532700))

(assert (=> bm!532700 m!7111076))

(assert (=> b!6291190 m!7111082))

(assert (=> b!6291190 m!7111082))

(declare-fun m!7111718 () Bool)

(assert (=> b!6291190 m!7111718))

(assert (=> b!6291190 m!7111086))

(assert (=> b!6291190 m!7111718))

(assert (=> b!6291190 m!7111086))

(declare-fun m!7111720 () Bool)

(assert (=> b!6291190 m!7111720))

(assert (=> b!6291182 m!7111082))

(assert (=> b!6291192 m!7111086))

(assert (=> b!6291192 m!7111086))

(assert (=> b!6291192 m!7111090))

(declare-fun m!7111722 () Bool)

(assert (=> b!6291179 m!7111722))

(assert (=> b!6291181 m!7111082))

(assert (=> b!6291191 m!7111086))

(assert (=> b!6291191 m!7111086))

(assert (=> b!6291191 m!7111090))

(assert (=> d!1974174 m!7111076))

(assert (=> d!1974174 m!7111530))

(assert (=> b!6290773 d!1974174))

(assert (=> bm!532642 d!1974138))

(assert (=> b!6290580 d!1974128))

(assert (=> b!6290580 d!1974130))

(declare-fun d!1974176 () Bool)

(declare-fun c!1141699 () Bool)

(assert (=> d!1974176 (= c!1141699 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825390 () Bool)

(assert (=> d!1974176 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357087 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825390)))

(declare-fun b!6291193 () Bool)

(assert (=> b!6291193 (= e!3825390 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357087 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291194 () Bool)

(assert (=> b!6291194 (= e!3825390 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357087 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974176 c!1141699) b!6291193))

(assert (= (and d!1974176 (not c!1141699)) b!6291194))

(assert (=> d!1974176 m!7111112))

(declare-fun m!7111724 () Bool)

(assert (=> d!1974176 m!7111724))

(assert (=> b!6291193 m!7111546))

(declare-fun m!7111726 () Bool)

(assert (=> b!6291193 m!7111726))

(assert (=> b!6291194 m!7111112))

(declare-fun m!7111728 () Bool)

(assert (=> b!6291194 m!7111728))

(assert (=> b!6291194 m!7111546))

(assert (=> b!6291194 m!7111728))

(declare-fun m!7111730 () Bool)

(assert (=> b!6291194 m!7111730))

(assert (=> b!6291194 m!7111112))

(declare-fun m!7111732 () Bool)

(assert (=> b!6291194 m!7111732))

(assert (=> b!6291194 m!7111730))

(assert (=> b!6291194 m!7111732))

(declare-fun m!7111734 () Bool)

(assert (=> b!6291194 m!7111734))

(assert (=> b!6290955 d!1974176))

(declare-fun bs!1572411 () Bool)

(declare-fun d!1974178 () Bool)

(assert (= bs!1572411 (and d!1974178 b!6289808)))

(declare-fun lambda!345617 () Int)

(assert (=> bs!1572411 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345617 lambda!345481))))

(declare-fun bs!1572412 () Bool)

(assert (= bs!1572412 (and d!1974178 d!1973976)))

(assert (=> bs!1572412 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345617 lambda!345557))))

(declare-fun bs!1572413 () Bool)

(assert (= bs!1572413 (and d!1974178 d!1974064)))

(assert (=> bs!1572413 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345617 lambda!345598))))

(assert (=> d!1974178 true))

(assert (=> d!1974178 (= (derivationStepZipper!2179 lt!2357087 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357087 lambda!345617))))

(declare-fun bs!1572414 () Bool)

(assert (= bs!1572414 d!1974178))

(declare-fun m!7111736 () Bool)

(assert (=> bs!1572414 m!7111736))

(assert (=> b!6290955 d!1974178))

(declare-fun d!1974180 () Bool)

(assert (=> d!1974180 (= (head!12927 (t!378500 s!2326)) (h!71262 (t!378500 s!2326)))))

(assert (=> b!6290955 d!1974180))

(declare-fun d!1974182 () Bool)

(assert (=> d!1974182 (= (tail!12012 (t!378500 s!2326)) (t!378500 (t!378500 s!2326)))))

(assert (=> b!6290955 d!1974182))

(declare-fun d!1974184 () Bool)

(declare-fun c!1141700 () Bool)

(assert (=> d!1974184 (= c!1141700 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825391 () Bool)

(assert (=> d!1974184 (= (matchZipper!2225 (derivationStepZipper!2179 ((_ map or) lt!2357085 lt!2357093) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825391)))

(declare-fun b!6291195 () Bool)

(assert (=> b!6291195 (= e!3825391 (nullableZipper!1983 (derivationStepZipper!2179 ((_ map or) lt!2357085 lt!2357093) (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291196 () Bool)

(assert (=> b!6291196 (= e!3825391 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 ((_ map or) lt!2357085 lt!2357093) (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974184 c!1141700) b!6291195))

(assert (= (and d!1974184 (not c!1141700)) b!6291196))

(assert (=> d!1974184 m!7111112))

(assert (=> d!1974184 m!7111724))

(assert (=> b!6291195 m!7111118))

(declare-fun m!7111738 () Bool)

(assert (=> b!6291195 m!7111738))

(assert (=> b!6291196 m!7111112))

(assert (=> b!6291196 m!7111728))

(assert (=> b!6291196 m!7111118))

(assert (=> b!6291196 m!7111728))

(declare-fun m!7111740 () Bool)

(assert (=> b!6291196 m!7111740))

(assert (=> b!6291196 m!7111112))

(assert (=> b!6291196 m!7111732))

(assert (=> b!6291196 m!7111740))

(assert (=> b!6291196 m!7111732))

(declare-fun m!7111742 () Bool)

(assert (=> b!6291196 m!7111742))

(assert (=> b!6290567 d!1974184))

(declare-fun bs!1572415 () Bool)

(declare-fun d!1974186 () Bool)

(assert (= bs!1572415 (and d!1974186 b!6289808)))

(declare-fun lambda!345618 () Int)

(assert (=> bs!1572415 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345618 lambda!345481))))

(declare-fun bs!1572416 () Bool)

(assert (= bs!1572416 (and d!1974186 d!1973976)))

(assert (=> bs!1572416 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345618 lambda!345557))))

(declare-fun bs!1572417 () Bool)

(assert (= bs!1572417 (and d!1974186 d!1974064)))

(assert (=> bs!1572417 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345618 lambda!345598))))

(declare-fun bs!1572418 () Bool)

(assert (= bs!1572418 (and d!1974186 d!1974178)))

(assert (=> bs!1572418 (= lambda!345618 lambda!345617)))

(assert (=> d!1974186 true))

(assert (=> d!1974186 (= (derivationStepZipper!2179 ((_ map or) lt!2357085 lt!2357093) (head!12927 (t!378500 s!2326))) (flatMap!1718 ((_ map or) lt!2357085 lt!2357093) lambda!345618))))

(declare-fun bs!1572419 () Bool)

(assert (= bs!1572419 d!1974186))

(declare-fun m!7111744 () Bool)

(assert (=> bs!1572419 m!7111744))

(assert (=> b!6290567 d!1974186))

(assert (=> b!6290567 d!1974180))

(assert (=> b!6290567 d!1974182))

(assert (=> d!1974008 d!1973994))

(assert (=> d!1974008 d!1974018))

(declare-fun d!1974188 () Bool)

(assert (=> d!1974188 (= (matchR!8396 lt!2357070 s!2326) (matchRSpec!3314 lt!2357070 s!2326))))

(assert (=> d!1974188 true))

(declare-fun _$88!4934 () Unit!158183)

(assert (=> d!1974188 (= (choose!46733 lt!2357070 s!2326) _$88!4934)))

(declare-fun bs!1572420 () Bool)

(assert (= bs!1572420 d!1974188))

(assert (=> bs!1572420 m!7110402))

(assert (=> bs!1572420 m!7110394))

(assert (=> d!1974008 d!1974188))

(declare-fun d!1974190 () Bool)

(declare-fun res!2594475 () Bool)

(declare-fun e!3825395 () Bool)

(assert (=> d!1974190 (=> res!2594475 e!3825395)))

(assert (=> d!1974190 (= res!2594475 ((_ is ElementMatch!16213) lt!2357070))))

(assert (=> d!1974190 (= (validRegex!7949 lt!2357070) e!3825395)))

(declare-fun b!6291197 () Bool)

(declare-fun res!2594477 () Bool)

(declare-fun e!3825396 () Bool)

(assert (=> b!6291197 (=> res!2594477 e!3825396)))

(assert (=> b!6291197 (= res!2594477 (not ((_ is Concat!25058) lt!2357070)))))

(declare-fun e!3825392 () Bool)

(assert (=> b!6291197 (= e!3825392 e!3825396)))

(declare-fun bm!532701 () Bool)

(declare-fun c!1141702 () Bool)

(declare-fun call!532708 () Bool)

(declare-fun c!1141701 () Bool)

(assert (=> bm!532701 (= call!532708 (validRegex!7949 (ite c!1141702 (reg!16542 lt!2357070) (ite c!1141701 (regTwo!32939 lt!2357070) (regTwo!32938 lt!2357070)))))))

(declare-fun b!6291198 () Bool)

(declare-fun e!3825394 () Bool)

(assert (=> b!6291198 (= e!3825394 e!3825392)))

(assert (=> b!6291198 (= c!1141701 ((_ is Union!16213) lt!2357070))))

(declare-fun bm!532702 () Bool)

(declare-fun call!532707 () Bool)

(assert (=> bm!532702 (= call!532707 call!532708)))

(declare-fun b!6291199 () Bool)

(declare-fun e!3825398 () Bool)

(assert (=> b!6291199 (= e!3825394 e!3825398)))

(declare-fun res!2594478 () Bool)

(assert (=> b!6291199 (= res!2594478 (not (nullable!6206 (reg!16542 lt!2357070))))))

(assert (=> b!6291199 (=> (not res!2594478) (not e!3825398))))

(declare-fun b!6291200 () Bool)

(assert (=> b!6291200 (= e!3825395 e!3825394)))

(assert (=> b!6291200 (= c!1141702 ((_ is Star!16213) lt!2357070))))

(declare-fun b!6291201 () Bool)

(declare-fun res!2594476 () Bool)

(declare-fun e!3825393 () Bool)

(assert (=> b!6291201 (=> (not res!2594476) (not e!3825393))))

(declare-fun call!532706 () Bool)

(assert (=> b!6291201 (= res!2594476 call!532706)))

(assert (=> b!6291201 (= e!3825392 e!3825393)))

(declare-fun bm!532703 () Bool)

(assert (=> bm!532703 (= call!532706 (validRegex!7949 (ite c!1141701 (regOne!32939 lt!2357070) (regOne!32938 lt!2357070))))))

(declare-fun b!6291202 () Bool)

(assert (=> b!6291202 (= e!3825398 call!532708)))

(declare-fun b!6291203 () Bool)

(declare-fun e!3825397 () Bool)

(assert (=> b!6291203 (= e!3825396 e!3825397)))

(declare-fun res!2594474 () Bool)

(assert (=> b!6291203 (=> (not res!2594474) (not e!3825397))))

(assert (=> b!6291203 (= res!2594474 call!532706)))

(declare-fun b!6291204 () Bool)

(assert (=> b!6291204 (= e!3825397 call!532707)))

(declare-fun b!6291205 () Bool)

(assert (=> b!6291205 (= e!3825393 call!532707)))

(assert (= (and d!1974190 (not res!2594475)) b!6291200))

(assert (= (and b!6291200 c!1141702) b!6291199))

(assert (= (and b!6291200 (not c!1141702)) b!6291198))

(assert (= (and b!6291199 res!2594478) b!6291202))

(assert (= (and b!6291198 c!1141701) b!6291201))

(assert (= (and b!6291198 (not c!1141701)) b!6291197))

(assert (= (and b!6291201 res!2594476) b!6291205))

(assert (= (and b!6291197 (not res!2594477)) b!6291203))

(assert (= (and b!6291203 res!2594474) b!6291204))

(assert (= (or b!6291205 b!6291204) bm!532702))

(assert (= (or b!6291201 b!6291203) bm!532703))

(assert (= (or b!6291202 bm!532702) bm!532701))

(declare-fun m!7111746 () Bool)

(assert (=> bm!532701 m!7111746))

(declare-fun m!7111748 () Bool)

(assert (=> b!6291199 m!7111748))

(declare-fun m!7111750 () Bool)

(assert (=> bm!532703 m!7111750))

(assert (=> d!1974008 d!1974190))

(declare-fun d!1974192 () Bool)

(assert (=> d!1974192 (= (isEmptyLang!1626 lt!2357190) ((_ is EmptyLang!16213) lt!2357190))))

(assert (=> b!6290313 d!1974192))

(declare-fun d!1974194 () Bool)

(assert (=> d!1974194 (= (isConcat!1142 lt!2357243) ((_ is Concat!25058) lt!2357243))))

(assert (=> b!6290696 d!1974194))

(declare-fun e!3825405 () Bool)

(declare-fun b!6291206 () Bool)

(assert (=> b!6291206 (= e!3825405 (nullable!6206 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(declare-fun b!6291207 () Bool)

(declare-fun res!2594483 () Bool)

(declare-fun e!3825402 () Bool)

(assert (=> b!6291207 (=> res!2594483 e!3825402)))

(declare-fun e!3825401 () Bool)

(assert (=> b!6291207 (= res!2594483 e!3825401)))

(declare-fun res!2594486 () Bool)

(assert (=> b!6291207 (=> (not res!2594486) (not e!3825401))))

(declare-fun lt!2357323 () Bool)

(assert (=> b!6291207 (= res!2594486 lt!2357323)))

(declare-fun b!6291208 () Bool)

(assert (=> b!6291208 (= e!3825401 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)))))))

(declare-fun b!6291209 () Bool)

(declare-fun e!3825403 () Bool)

(assert (=> b!6291209 (= e!3825403 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326))))))))

(declare-fun d!1974196 () Bool)

(declare-fun e!3825404 () Bool)

(assert (=> d!1974196 e!3825404))

(declare-fun c!1141703 () Bool)

(assert (=> d!1974196 (= c!1141703 ((_ is EmptyExpr!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(assert (=> d!1974196 (= lt!2357323 e!3825405)))

(declare-fun c!1141704 () Bool)

(assert (=> d!1974196 (= c!1141704 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974196 (validRegex!7949 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)))))

(assert (=> d!1974196 (= (matchR!8396 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357323)))

(declare-fun b!6291210 () Bool)

(declare-fun e!3825400 () Bool)

(assert (=> b!6291210 (= e!3825400 (not lt!2357323))))

(declare-fun b!6291211 () Bool)

(declare-fun e!3825399 () Bool)

(assert (=> b!6291211 (= e!3825402 e!3825399)))

(declare-fun res!2594485 () Bool)

(assert (=> b!6291211 (=> (not res!2594485) (not e!3825399))))

(assert (=> b!6291211 (= res!2594485 (not lt!2357323))))

(declare-fun bm!532704 () Bool)

(declare-fun call!532709 () Bool)

(assert (=> bm!532704 (= call!532709 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291212 () Bool)

(assert (=> b!6291212 (= e!3825404 (= lt!2357323 call!532709))))

(declare-fun b!6291213 () Bool)

(assert (=> b!6291213 (= e!3825404 e!3825400)))

(declare-fun c!1141705 () Bool)

(assert (=> b!6291213 (= c!1141705 ((_ is EmptyLang!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(declare-fun b!6291214 () Bool)

(assert (=> b!6291214 (= e!3825399 e!3825403)))

(declare-fun res!2594484 () Bool)

(assert (=> b!6291214 (=> res!2594484 e!3825403)))

(assert (=> b!6291214 (= res!2594484 call!532709)))

(declare-fun b!6291215 () Bool)

(declare-fun res!2594480 () Bool)

(assert (=> b!6291215 (=> (not res!2594480) (not e!3825401))))

(assert (=> b!6291215 (= res!2594480 (not call!532709))))

(declare-fun b!6291216 () Bool)

(declare-fun res!2594479 () Bool)

(assert (=> b!6291216 (=> res!2594479 e!3825402)))

(assert (=> b!6291216 (= res!2594479 (not ((_ is ElementMatch!16213) (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)))))))

(assert (=> b!6291216 (= e!3825400 e!3825402)))

(declare-fun b!6291217 () Bool)

(assert (=> b!6291217 (= e!3825405 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291218 () Bool)

(declare-fun res!2594481 () Bool)

(assert (=> b!6291218 (=> (not res!2594481) (not e!3825401))))

(assert (=> b!6291218 (= res!2594481 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291219 () Bool)

(declare-fun res!2594482 () Bool)

(assert (=> b!6291219 (=> res!2594482 e!3825403)))

(assert (=> b!6291219 (= res!2594482 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974196 c!1141704) b!6291206))

(assert (= (and d!1974196 (not c!1141704)) b!6291217))

(assert (= (and d!1974196 c!1141703) b!6291212))

(assert (= (and d!1974196 (not c!1141703)) b!6291213))

(assert (= (and b!6291213 c!1141705) b!6291210))

(assert (= (and b!6291213 (not c!1141705)) b!6291216))

(assert (= (and b!6291216 (not res!2594479)) b!6291207))

(assert (= (and b!6291207 res!2594486) b!6291215))

(assert (= (and b!6291215 res!2594480) b!6291218))

(assert (= (and b!6291218 res!2594481) b!6291208))

(assert (= (and b!6291207 (not res!2594483)) b!6291211))

(assert (= (and b!6291211 res!2594485) b!6291214))

(assert (= (and b!6291214 (not res!2594484)) b!6291219))

(assert (= (and b!6291219 (not res!2594482)) b!6291209))

(assert (= (or b!6291212 b!6291214 b!6291215) bm!532704))

(assert (=> bm!532704 m!7111086))

(assert (=> bm!532704 m!7111090))

(assert (=> b!6291217 m!7111086))

(assert (=> b!6291217 m!7111620))

(assert (=> b!6291217 m!7111122))

(assert (=> b!6291217 m!7111620))

(declare-fun m!7111752 () Bool)

(assert (=> b!6291217 m!7111752))

(assert (=> b!6291217 m!7111086))

(assert (=> b!6291217 m!7111624))

(assert (=> b!6291217 m!7111752))

(assert (=> b!6291217 m!7111624))

(declare-fun m!7111754 () Bool)

(assert (=> b!6291217 m!7111754))

(assert (=> b!6291209 m!7111086))

(assert (=> b!6291209 m!7111620))

(assert (=> b!6291219 m!7111086))

(assert (=> b!6291219 m!7111624))

(assert (=> b!6291219 m!7111624))

(assert (=> b!6291219 m!7111628))

(assert (=> b!6291206 m!7111122))

(declare-fun m!7111756 () Bool)

(assert (=> b!6291206 m!7111756))

(assert (=> b!6291208 m!7111086))

(assert (=> b!6291208 m!7111620))

(assert (=> b!6291218 m!7111086))

(assert (=> b!6291218 m!7111624))

(assert (=> b!6291218 m!7111624))

(assert (=> b!6291218 m!7111628))

(assert (=> d!1974196 m!7111086))

(assert (=> d!1974196 m!7111090))

(assert (=> d!1974196 m!7111122))

(declare-fun m!7111758 () Bool)

(assert (=> d!1974196 m!7111758))

(assert (=> b!6290579 d!1974196))

(declare-fun b!6291220 () Bool)

(declare-fun e!3825407 () Regex!16213)

(declare-fun e!3825410 () Regex!16213)

(assert (=> b!6291220 (= e!3825407 e!3825410)))

(declare-fun c!1141710 () Bool)

(assert (=> b!6291220 (= c!1141710 ((_ is Star!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun e!3825408 () Regex!16213)

(declare-fun call!532713 () Regex!16213)

(declare-fun b!6291221 () Bool)

(assert (=> b!6291221 (= e!3825408 (Union!16213 (Concat!25058 call!532713 (regTwo!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))) EmptyLang!16213))))

(declare-fun b!6291222 () Bool)

(declare-fun call!532711 () Regex!16213)

(assert (=> b!6291222 (= e!3825410 (Concat!25058 call!532711 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun b!6291223 () Bool)

(declare-fun e!3825406 () Regex!16213)

(assert (=> b!6291223 (= e!3825406 EmptyLang!16213)))

(declare-fun call!532712 () Regex!16213)

(declare-fun bm!532705 () Bool)

(declare-fun c!1141707 () Bool)

(assert (=> bm!532705 (= call!532712 (derivativeStep!4922 (ite c!1141707 (regTwo!32939 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))) (head!12927 s!2326)))))

(declare-fun b!6291224 () Bool)

(declare-fun call!532710 () Regex!16213)

(assert (=> b!6291224 (= e!3825407 (Union!16213 call!532710 call!532712))))

(declare-fun bm!532706 () Bool)

(assert (=> bm!532706 (= call!532711 call!532710)))

(declare-fun b!6291225 () Bool)

(declare-fun e!3825409 () Regex!16213)

(assert (=> b!6291225 (= e!3825409 (ite (= (head!12927 s!2326) (c!1141284 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6291226 () Bool)

(assert (=> b!6291226 (= e!3825406 e!3825409)))

(declare-fun c!1141706 () Bool)

(assert (=> b!6291226 (= c!1141706 ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun c!1141708 () Bool)

(declare-fun bm!532707 () Bool)

(assert (=> bm!532707 (= call!532710 (derivativeStep!4922 (ite c!1141707 (regOne!32939 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (ite c!1141710 (reg!16542 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (ite c!1141708 (regTwo!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))) (head!12927 s!2326)))))

(declare-fun b!6291227 () Bool)

(assert (=> b!6291227 (= c!1141707 ((_ is Union!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(assert (=> b!6291227 (= e!3825409 e!3825407)))

(declare-fun bm!532708 () Bool)

(assert (=> bm!532708 (= call!532713 call!532711)))

(declare-fun b!6291228 () Bool)

(assert (=> b!6291228 (= c!1141708 (nullable!6206 (regOne!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))

(assert (=> b!6291228 (= e!3825410 e!3825408)))

(declare-fun d!1974198 () Bool)

(declare-fun lt!2357324 () Regex!16213)

(assert (=> d!1974198 (validRegex!7949 lt!2357324)))

(assert (=> d!1974198 (= lt!2357324 e!3825406)))

(declare-fun c!1141709 () Bool)

(assert (=> d!1974198 (= c!1141709 (or ((_ is EmptyExpr!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) ((_ is EmptyLang!16213) (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))))

(assert (=> d!1974198 (validRegex!7949 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))))

(assert (=> d!1974198 (= (derivativeStep!4922 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)) (head!12927 s!2326)) lt!2357324)))

(declare-fun b!6291229 () Bool)

(assert (=> b!6291229 (= e!3825408 (Union!16213 (Concat!25058 call!532712 (regTwo!32938 (Concat!25058 lt!2357063 (regTwo!32938 r!7292)))) call!532713))))

(assert (= (and d!1974198 c!1141709) b!6291223))

(assert (= (and d!1974198 (not c!1141709)) b!6291226))

(assert (= (and b!6291226 c!1141706) b!6291225))

(assert (= (and b!6291226 (not c!1141706)) b!6291227))

(assert (= (and b!6291227 c!1141707) b!6291224))

(assert (= (and b!6291227 (not c!1141707)) b!6291220))

(assert (= (and b!6291220 c!1141710) b!6291222))

(assert (= (and b!6291220 (not c!1141710)) b!6291228))

(assert (= (and b!6291228 c!1141708) b!6291229))

(assert (= (and b!6291228 (not c!1141708)) b!6291221))

(assert (= (or b!6291229 b!6291221) bm!532708))

(assert (= (or b!6291222 bm!532708) bm!532706))

(assert (= (or b!6291224 b!6291229) bm!532705))

(assert (= (or b!6291224 bm!532706) bm!532707))

(assert (=> bm!532705 m!7111082))

(declare-fun m!7111760 () Bool)

(assert (=> bm!532705 m!7111760))

(assert (=> bm!532707 m!7111082))

(declare-fun m!7111762 () Bool)

(assert (=> bm!532707 m!7111762))

(declare-fun m!7111764 () Bool)

(assert (=> b!6291228 m!7111764))

(declare-fun m!7111766 () Bool)

(assert (=> d!1974198 m!7111766))

(assert (=> d!1974198 m!7111128))

(assert (=> b!6290579 d!1974198))

(assert (=> b!6290579 d!1974146))

(assert (=> b!6290579 d!1974130))

(declare-fun call!532714 () List!64939)

(declare-fun bm!532709 () Bool)

(declare-fun call!532716 () (InoxSet Context!11194))

(declare-fun c!1141711 () Bool)

(assert (=> bm!532709 (= call!532716 (derivationStepZipperDown!1461 (ite c!1141711 (regOne!32939 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (regOne!32938 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))))) (ite c!1141711 (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653)) (Context!11195 call!532714)) (h!71262 s!2326)))))

(declare-fun b!6291230 () Bool)

(declare-fun e!3825414 () Bool)

(assert (=> b!6291230 (= e!3825414 (nullable!6206 (regOne!32938 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))))

(declare-fun bm!532710 () Bool)

(declare-fun call!532718 () (InoxSet Context!11194))

(declare-fun call!532715 () (InoxSet Context!11194))

(assert (=> bm!532710 (= call!532718 call!532715)))

(declare-fun c!1141715 () Bool)

(declare-fun d!1974200 () Bool)

(assert (=> d!1974200 (= c!1141715 (and ((_ is ElementMatch!16213) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (= (c!1141284 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326))))))

(declare-fun e!3825411 () (InoxSet Context!11194))

(assert (=> d!1974200 (= (derivationStepZipperDown!1461 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))) (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653)) (h!71262 s!2326)) e!3825411)))

(declare-fun b!6291231 () Bool)

(assert (=> b!6291231 (= e!3825411 (store ((as const (Array Context!11194 Bool)) false) (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653)) true))))

(declare-fun bm!532711 () Bool)

(declare-fun c!1141713 () Bool)

(declare-fun c!1141714 () Bool)

(declare-fun call!532719 () List!64939)

(assert (=> bm!532711 (= call!532715 (derivationStepZipperDown!1461 (ite c!1141711 (regTwo!32939 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (ite c!1141713 (regTwo!32938 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (ite c!1141714 (regOne!32938 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (reg!16542 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))) (ite (or c!1141711 c!1141713) (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653)) (Context!11195 call!532719)) (h!71262 s!2326)))))

(declare-fun b!6291232 () Bool)

(declare-fun e!3825413 () (InoxSet Context!11194))

(declare-fun call!532717 () (InoxSet Context!11194))

(assert (=> b!6291232 (= e!3825413 call!532717)))

(declare-fun b!6291233 () Bool)

(declare-fun e!3825416 () (InoxSet Context!11194))

(declare-fun e!3825415 () (InoxSet Context!11194))

(assert (=> b!6291233 (= e!3825416 e!3825415)))

(assert (=> b!6291233 (= c!1141714 ((_ is Concat!25058) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))))

(declare-fun b!6291234 () Bool)

(assert (=> b!6291234 (= e!3825413 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291235 () Bool)

(declare-fun e!3825412 () (InoxSet Context!11194))

(assert (=> b!6291235 (= e!3825412 ((_ map or) call!532716 call!532715))))

(declare-fun b!6291236 () Bool)

(assert (=> b!6291236 (= e!3825415 call!532717)))

(declare-fun b!6291237 () Bool)

(assert (=> b!6291237 (= c!1141713 e!3825414)))

(declare-fun res!2594487 () Bool)

(assert (=> b!6291237 (=> (not res!2594487) (not e!3825414))))

(assert (=> b!6291237 (= res!2594487 ((_ is Concat!25058) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (=> b!6291237 (= e!3825412 e!3825416)))

(declare-fun bm!532712 () Bool)

(assert (=> bm!532712 (= call!532714 ($colon$colon!2078 (exprs!6097 (ite (or c!1141611 c!1141613) lt!2357077 (Context!11195 call!532653))) (ite (or c!1141713 c!1141714) (regTwo!32938 (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))))

(declare-fun b!6291238 () Bool)

(assert (=> b!6291238 (= e!3825416 ((_ map or) call!532716 call!532718))))

(declare-fun b!6291239 () Bool)

(declare-fun c!1141712 () Bool)

(assert (=> b!6291239 (= c!1141712 ((_ is Star!16213) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (=> b!6291239 (= e!3825415 e!3825413)))

(declare-fun bm!532713 () Bool)

(assert (=> bm!532713 (= call!532719 call!532714)))

(declare-fun bm!532714 () Bool)

(assert (=> bm!532714 (= call!532717 call!532718)))

(declare-fun b!6291240 () Bool)

(assert (=> b!6291240 (= e!3825411 e!3825412)))

(assert (=> b!6291240 (= c!1141711 ((_ is Union!16213) (ite c!1141611 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141613 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141614 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))))

(assert (= (and d!1974200 c!1141715) b!6291231))

(assert (= (and d!1974200 (not c!1141715)) b!6291240))

(assert (= (and b!6291240 c!1141711) b!6291235))

(assert (= (and b!6291240 (not c!1141711)) b!6291237))

(assert (= (and b!6291237 res!2594487) b!6291230))

(assert (= (and b!6291237 c!1141713) b!6291238))

(assert (= (and b!6291237 (not c!1141713)) b!6291233))

(assert (= (and b!6291233 c!1141714) b!6291236))

(assert (= (and b!6291233 (not c!1141714)) b!6291239))

(assert (= (and b!6291239 c!1141712) b!6291232))

(assert (= (and b!6291239 (not c!1141712)) b!6291234))

(assert (= (or b!6291236 b!6291232) bm!532713))

(assert (= (or b!6291236 b!6291232) bm!532714))

(assert (= (or b!6291238 bm!532713) bm!532712))

(assert (= (or b!6291238 bm!532714) bm!532710))

(assert (= (or b!6291235 bm!532710) bm!532711))

(assert (= (or b!6291235 b!6291238) bm!532709))

(declare-fun m!7111768 () Bool)

(assert (=> b!6291230 m!7111768))

(declare-fun m!7111770 () Bool)

(assert (=> b!6291231 m!7111770))

(declare-fun m!7111772 () Bool)

(assert (=> bm!532709 m!7111772))

(declare-fun m!7111774 () Bool)

(assert (=> bm!532712 m!7111774))

(declare-fun m!7111776 () Bool)

(assert (=> bm!532711 m!7111776))

(assert (=> bm!532645 d!1974200))

(declare-fun d!1974202 () Bool)

(assert (=> d!1974202 (= (head!12926 (unfocusZipperList!1634 zl!343)) (h!71263 (unfocusZipperList!1634 zl!343)))))

(assert (=> b!6290312 d!1974202))

(declare-fun d!1974204 () Bool)

(declare-fun res!2594489 () Bool)

(declare-fun e!3825420 () Bool)

(assert (=> d!1974204 (=> res!2594489 e!3825420)))

(assert (=> d!1974204 (= res!2594489 ((_ is ElementMatch!16213) lt!2357244))))

(assert (=> d!1974204 (= (validRegex!7949 lt!2357244) e!3825420)))

(declare-fun b!6291241 () Bool)

(declare-fun res!2594491 () Bool)

(declare-fun e!3825421 () Bool)

(assert (=> b!6291241 (=> res!2594491 e!3825421)))

(assert (=> b!6291241 (= res!2594491 (not ((_ is Concat!25058) lt!2357244)))))

(declare-fun e!3825417 () Bool)

(assert (=> b!6291241 (= e!3825417 e!3825421)))

(declare-fun call!532722 () Bool)

(declare-fun bm!532715 () Bool)

(declare-fun c!1141717 () Bool)

(declare-fun c!1141716 () Bool)

(assert (=> bm!532715 (= call!532722 (validRegex!7949 (ite c!1141717 (reg!16542 lt!2357244) (ite c!1141716 (regTwo!32939 lt!2357244) (regTwo!32938 lt!2357244)))))))

(declare-fun b!6291242 () Bool)

(declare-fun e!3825419 () Bool)

(assert (=> b!6291242 (= e!3825419 e!3825417)))

(assert (=> b!6291242 (= c!1141716 ((_ is Union!16213) lt!2357244))))

(declare-fun bm!532716 () Bool)

(declare-fun call!532721 () Bool)

(assert (=> bm!532716 (= call!532721 call!532722)))

(declare-fun b!6291243 () Bool)

(declare-fun e!3825423 () Bool)

(assert (=> b!6291243 (= e!3825419 e!3825423)))

(declare-fun res!2594492 () Bool)

(assert (=> b!6291243 (= res!2594492 (not (nullable!6206 (reg!16542 lt!2357244))))))

(assert (=> b!6291243 (=> (not res!2594492) (not e!3825423))))

(declare-fun b!6291244 () Bool)

(assert (=> b!6291244 (= e!3825420 e!3825419)))

(assert (=> b!6291244 (= c!1141717 ((_ is Star!16213) lt!2357244))))

(declare-fun b!6291245 () Bool)

(declare-fun res!2594490 () Bool)

(declare-fun e!3825418 () Bool)

(assert (=> b!6291245 (=> (not res!2594490) (not e!3825418))))

(declare-fun call!532720 () Bool)

(assert (=> b!6291245 (= res!2594490 call!532720)))

(assert (=> b!6291245 (= e!3825417 e!3825418)))

(declare-fun bm!532717 () Bool)

(assert (=> bm!532717 (= call!532720 (validRegex!7949 (ite c!1141716 (regOne!32939 lt!2357244) (regOne!32938 lt!2357244))))))

(declare-fun b!6291246 () Bool)

(assert (=> b!6291246 (= e!3825423 call!532722)))

(declare-fun b!6291247 () Bool)

(declare-fun e!3825422 () Bool)

(assert (=> b!6291247 (= e!3825421 e!3825422)))

(declare-fun res!2594488 () Bool)

(assert (=> b!6291247 (=> (not res!2594488) (not e!3825422))))

(assert (=> b!6291247 (= res!2594488 call!532720)))

(declare-fun b!6291248 () Bool)

(assert (=> b!6291248 (= e!3825422 call!532721)))

(declare-fun b!6291249 () Bool)

(assert (=> b!6291249 (= e!3825418 call!532721)))

(assert (= (and d!1974204 (not res!2594489)) b!6291244))

(assert (= (and b!6291244 c!1141717) b!6291243))

(assert (= (and b!6291244 (not c!1141717)) b!6291242))

(assert (= (and b!6291243 res!2594492) b!6291246))

(assert (= (and b!6291242 c!1141716) b!6291245))

(assert (= (and b!6291242 (not c!1141716)) b!6291241))

(assert (= (and b!6291245 res!2594490) b!6291249))

(assert (= (and b!6291241 (not res!2594491)) b!6291247))

(assert (= (and b!6291247 res!2594488) b!6291248))

(assert (= (or b!6291249 b!6291248) bm!532716))

(assert (= (or b!6291245 b!6291247) bm!532717))

(assert (= (or b!6291246 bm!532716) bm!532715))

(declare-fun m!7111778 () Bool)

(assert (=> bm!532715 m!7111778))

(declare-fun m!7111780 () Bool)

(assert (=> b!6291243 m!7111780))

(declare-fun m!7111782 () Bool)

(assert (=> bm!532717 m!7111782))

(assert (=> d!1974004 d!1974204))

(declare-fun d!1974206 () Bool)

(declare-fun res!2594493 () Bool)

(declare-fun e!3825424 () Bool)

(assert (=> d!1974206 (=> res!2594493 e!3825424)))

(assert (=> d!1974206 (= res!2594493 ((_ is Nil!64815) lt!2357060))))

(assert (=> d!1974206 (= (forall!15362 lt!2357060 lambda!345572) e!3825424)))

(declare-fun b!6291250 () Bool)

(declare-fun e!3825425 () Bool)

(assert (=> b!6291250 (= e!3825424 e!3825425)))

(declare-fun res!2594494 () Bool)

(assert (=> b!6291250 (=> (not res!2594494) (not e!3825425))))

(assert (=> b!6291250 (= res!2594494 (dynLambda!25651 lambda!345572 (h!71263 lt!2357060)))))

(declare-fun b!6291251 () Bool)

(assert (=> b!6291251 (= e!3825425 (forall!15362 (t!378501 lt!2357060) lambda!345572))))

(assert (= (and d!1974206 (not res!2594493)) b!6291250))

(assert (= (and b!6291250 res!2594494) b!6291251))

(declare-fun b_lambda!239369 () Bool)

(assert (=> (not b_lambda!239369) (not b!6291250)))

(declare-fun m!7111784 () Bool)

(assert (=> b!6291250 m!7111784))

(declare-fun m!7111786 () Bool)

(assert (=> b!6291251 m!7111786))

(assert (=> d!1974004 d!1974206))

(declare-fun bs!1572421 () Bool)

(declare-fun d!1974208 () Bool)

(assert (= bs!1572421 (and d!1974208 d!1974166)))

(declare-fun lambda!345619 () Int)

(assert (=> bs!1572421 (= lambda!345619 lambda!345614)))

(declare-fun bs!1572422 () Bool)

(assert (= bs!1572422 (and d!1974208 d!1974158)))

(assert (=> bs!1572422 (not (= lambda!345619 lambda!345608))))

(declare-fun bs!1572423 () Bool)

(assert (= bs!1572423 (and d!1974208 b!6290783)))

(assert (=> bs!1572423 (not (= lambda!345619 lambda!345590))))

(declare-fun bs!1572424 () Bool)

(assert (= bs!1572424 (and d!1974208 b!6290786)))

(assert (=> bs!1572424 (not (= lambda!345619 lambda!345592))))

(declare-fun bs!1572425 () Bool)

(assert (= bs!1572425 (and d!1974208 b!6291144)))

(assert (=> bs!1572425 (not (= lambda!345619 lambda!345611))))

(declare-fun bs!1572426 () Bool)

(assert (= bs!1572426 (and d!1974208 b!6291142)))

(assert (=> bs!1572426 (not (= lambda!345619 lambda!345610))))

(declare-fun bs!1572427 () Bool)

(assert (= bs!1572427 (and d!1974208 b!6290788)))

(assert (=> bs!1572427 (not (= lambda!345619 lambda!345593))))

(declare-fun bs!1572428 () Bool)

(assert (= bs!1572428 (and d!1974208 b!6290781)))

(assert (=> bs!1572428 (not (= lambda!345619 lambda!345589))))

(assert (=> d!1974208 (= (nullableZipper!1983 ((_ map or) lt!2357085 lt!2357093)) (exists!2528 ((_ map or) lt!2357085 lt!2357093) lambda!345619))))

(declare-fun bs!1572429 () Bool)

(assert (= bs!1572429 d!1974208))

(declare-fun m!7111788 () Bool)

(assert (=> bs!1572429 m!7111788))

(assert (=> b!6290566 d!1974208))

(declare-fun b!6291252 () Bool)

(declare-fun e!3825432 () Bool)

(assert (=> b!6291252 (= e!3825432 (nullable!6206 (derivativeStep!4922 r!7292 (head!12927 s!2326))))))

(declare-fun b!6291253 () Bool)

(declare-fun res!2594499 () Bool)

(declare-fun e!3825429 () Bool)

(assert (=> b!6291253 (=> res!2594499 e!3825429)))

(declare-fun e!3825428 () Bool)

(assert (=> b!6291253 (= res!2594499 e!3825428)))

(declare-fun res!2594502 () Bool)

(assert (=> b!6291253 (=> (not res!2594502) (not e!3825428))))

(declare-fun lt!2357325 () Bool)

(assert (=> b!6291253 (= res!2594502 lt!2357325)))

(declare-fun b!6291254 () Bool)

(assert (=> b!6291254 (= e!3825428 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 r!7292 (head!12927 s!2326)))))))

(declare-fun b!6291255 () Bool)

(declare-fun e!3825430 () Bool)

(assert (=> b!6291255 (= e!3825430 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 r!7292 (head!12927 s!2326))))))))

(declare-fun d!1974210 () Bool)

(declare-fun e!3825431 () Bool)

(assert (=> d!1974210 e!3825431))

(declare-fun c!1141718 () Bool)

(assert (=> d!1974210 (= c!1141718 ((_ is EmptyExpr!16213) (derivativeStep!4922 r!7292 (head!12927 s!2326))))))

(assert (=> d!1974210 (= lt!2357325 e!3825432)))

(declare-fun c!1141719 () Bool)

(assert (=> d!1974210 (= c!1141719 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974210 (validRegex!7949 (derivativeStep!4922 r!7292 (head!12927 s!2326)))))

(assert (=> d!1974210 (= (matchR!8396 (derivativeStep!4922 r!7292 (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357325)))

(declare-fun b!6291256 () Bool)

(declare-fun e!3825427 () Bool)

(assert (=> b!6291256 (= e!3825427 (not lt!2357325))))

(declare-fun b!6291257 () Bool)

(declare-fun e!3825426 () Bool)

(assert (=> b!6291257 (= e!3825429 e!3825426)))

(declare-fun res!2594501 () Bool)

(assert (=> b!6291257 (=> (not res!2594501) (not e!3825426))))

(assert (=> b!6291257 (= res!2594501 (not lt!2357325))))

(declare-fun bm!532718 () Bool)

(declare-fun call!532723 () Bool)

(assert (=> bm!532718 (= call!532723 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291258 () Bool)

(assert (=> b!6291258 (= e!3825431 (= lt!2357325 call!532723))))

(declare-fun b!6291259 () Bool)

(assert (=> b!6291259 (= e!3825431 e!3825427)))

(declare-fun c!1141720 () Bool)

(assert (=> b!6291259 (= c!1141720 ((_ is EmptyLang!16213) (derivativeStep!4922 r!7292 (head!12927 s!2326))))))

(declare-fun b!6291260 () Bool)

(assert (=> b!6291260 (= e!3825426 e!3825430)))

(declare-fun res!2594500 () Bool)

(assert (=> b!6291260 (=> res!2594500 e!3825430)))

(assert (=> b!6291260 (= res!2594500 call!532723)))

(declare-fun b!6291261 () Bool)

(declare-fun res!2594496 () Bool)

(assert (=> b!6291261 (=> (not res!2594496) (not e!3825428))))

(assert (=> b!6291261 (= res!2594496 (not call!532723))))

(declare-fun b!6291262 () Bool)

(declare-fun res!2594495 () Bool)

(assert (=> b!6291262 (=> res!2594495 e!3825429)))

(assert (=> b!6291262 (= res!2594495 (not ((_ is ElementMatch!16213) (derivativeStep!4922 r!7292 (head!12927 s!2326)))))))

(assert (=> b!6291262 (= e!3825427 e!3825429)))

(declare-fun b!6291263 () Bool)

(assert (=> b!6291263 (= e!3825432 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 r!7292 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291264 () Bool)

(declare-fun res!2594497 () Bool)

(assert (=> b!6291264 (=> (not res!2594497) (not e!3825428))))

(assert (=> b!6291264 (= res!2594497 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291265 () Bool)

(declare-fun res!2594498 () Bool)

(assert (=> b!6291265 (=> res!2594498 e!3825430)))

(assert (=> b!6291265 (= res!2594498 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974210 c!1141719) b!6291252))

(assert (= (and d!1974210 (not c!1141719)) b!6291263))

(assert (= (and d!1974210 c!1141718) b!6291258))

(assert (= (and d!1974210 (not c!1141718)) b!6291259))

(assert (= (and b!6291259 c!1141720) b!6291256))

(assert (= (and b!6291259 (not c!1141720)) b!6291262))

(assert (= (and b!6291262 (not res!2594495)) b!6291253))

(assert (= (and b!6291253 res!2594502) b!6291261))

(assert (= (and b!6291261 res!2594496) b!6291264))

(assert (= (and b!6291264 res!2594497) b!6291254))

(assert (= (and b!6291253 (not res!2594499)) b!6291257))

(assert (= (and b!6291257 res!2594501) b!6291260))

(assert (= (and b!6291260 (not res!2594500)) b!6291265))

(assert (= (and b!6291265 (not res!2594498)) b!6291255))

(assert (= (or b!6291258 b!6291260 b!6291261) bm!532718))

(assert (=> bm!532718 m!7111086))

(assert (=> bm!532718 m!7111090))

(assert (=> b!6291263 m!7111086))

(assert (=> b!6291263 m!7111620))

(assert (=> b!6291263 m!7111084))

(assert (=> b!6291263 m!7111620))

(declare-fun m!7111790 () Bool)

(assert (=> b!6291263 m!7111790))

(assert (=> b!6291263 m!7111086))

(assert (=> b!6291263 m!7111624))

(assert (=> b!6291263 m!7111790))

(assert (=> b!6291263 m!7111624))

(declare-fun m!7111792 () Bool)

(assert (=> b!6291263 m!7111792))

(assert (=> b!6291255 m!7111086))

(assert (=> b!6291255 m!7111620))

(assert (=> b!6291265 m!7111086))

(assert (=> b!6291265 m!7111624))

(assert (=> b!6291265 m!7111624))

(assert (=> b!6291265 m!7111628))

(assert (=> b!6291252 m!7111084))

(declare-fun m!7111794 () Bool)

(assert (=> b!6291252 m!7111794))

(assert (=> b!6291254 m!7111086))

(assert (=> b!6291254 m!7111620))

(assert (=> b!6291264 m!7111086))

(assert (=> b!6291264 m!7111624))

(assert (=> b!6291264 m!7111624))

(assert (=> b!6291264 m!7111628))

(assert (=> d!1974210 m!7111086))

(assert (=> d!1974210 m!7111090))

(assert (=> d!1974210 m!7111084))

(declare-fun m!7111796 () Bool)

(assert (=> d!1974210 m!7111796))

(assert (=> b!6290551 d!1974210))

(declare-fun b!6291266 () Bool)

(declare-fun e!3825434 () Regex!16213)

(declare-fun e!3825437 () Regex!16213)

(assert (=> b!6291266 (= e!3825434 e!3825437)))

(declare-fun c!1141725 () Bool)

(assert (=> b!6291266 (= c!1141725 ((_ is Star!16213) r!7292))))

(declare-fun b!6291267 () Bool)

(declare-fun e!3825435 () Regex!16213)

(declare-fun call!532727 () Regex!16213)

(assert (=> b!6291267 (= e!3825435 (Union!16213 (Concat!25058 call!532727 (regTwo!32938 r!7292)) EmptyLang!16213))))

(declare-fun b!6291268 () Bool)

(declare-fun call!532725 () Regex!16213)

(assert (=> b!6291268 (= e!3825437 (Concat!25058 call!532725 r!7292))))

(declare-fun b!6291269 () Bool)

(declare-fun e!3825433 () Regex!16213)

(assert (=> b!6291269 (= e!3825433 EmptyLang!16213)))

(declare-fun c!1141722 () Bool)

(declare-fun call!532726 () Regex!16213)

(declare-fun bm!532719 () Bool)

(assert (=> bm!532719 (= call!532726 (derivativeStep!4922 (ite c!1141722 (regTwo!32939 r!7292) (regOne!32938 r!7292)) (head!12927 s!2326)))))

(declare-fun b!6291270 () Bool)

(declare-fun call!532724 () Regex!16213)

(assert (=> b!6291270 (= e!3825434 (Union!16213 call!532724 call!532726))))

(declare-fun bm!532720 () Bool)

(assert (=> bm!532720 (= call!532725 call!532724)))

(declare-fun b!6291271 () Bool)

(declare-fun e!3825436 () Regex!16213)

(assert (=> b!6291271 (= e!3825436 (ite (= (head!12927 s!2326) (c!1141284 r!7292)) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6291272 () Bool)

(assert (=> b!6291272 (= e!3825433 e!3825436)))

(declare-fun c!1141721 () Bool)

(assert (=> b!6291272 (= c!1141721 ((_ is ElementMatch!16213) r!7292))))

(declare-fun bm!532721 () Bool)

(declare-fun c!1141723 () Bool)

(assert (=> bm!532721 (= call!532724 (derivativeStep!4922 (ite c!1141722 (regOne!32939 r!7292) (ite c!1141725 (reg!16542 r!7292) (ite c!1141723 (regTwo!32938 r!7292) (regOne!32938 r!7292)))) (head!12927 s!2326)))))

(declare-fun b!6291273 () Bool)

(assert (=> b!6291273 (= c!1141722 ((_ is Union!16213) r!7292))))

(assert (=> b!6291273 (= e!3825436 e!3825434)))

(declare-fun bm!532722 () Bool)

(assert (=> bm!532722 (= call!532727 call!532725)))

(declare-fun b!6291274 () Bool)

(assert (=> b!6291274 (= c!1141723 (nullable!6206 (regOne!32938 r!7292)))))

(assert (=> b!6291274 (= e!3825437 e!3825435)))

(declare-fun d!1974212 () Bool)

(declare-fun lt!2357326 () Regex!16213)

(assert (=> d!1974212 (validRegex!7949 lt!2357326)))

(assert (=> d!1974212 (= lt!2357326 e!3825433)))

(declare-fun c!1141724 () Bool)

(assert (=> d!1974212 (= c!1141724 (or ((_ is EmptyExpr!16213) r!7292) ((_ is EmptyLang!16213) r!7292)))))

(assert (=> d!1974212 (validRegex!7949 r!7292)))

(assert (=> d!1974212 (= (derivativeStep!4922 r!7292 (head!12927 s!2326)) lt!2357326)))

(declare-fun b!6291275 () Bool)

(assert (=> b!6291275 (= e!3825435 (Union!16213 (Concat!25058 call!532726 (regTwo!32938 r!7292)) call!532727))))

(assert (= (and d!1974212 c!1141724) b!6291269))

(assert (= (and d!1974212 (not c!1141724)) b!6291272))

(assert (= (and b!6291272 c!1141721) b!6291271))

(assert (= (and b!6291272 (not c!1141721)) b!6291273))

(assert (= (and b!6291273 c!1141722) b!6291270))

(assert (= (and b!6291273 (not c!1141722)) b!6291266))

(assert (= (and b!6291266 c!1141725) b!6291268))

(assert (= (and b!6291266 (not c!1141725)) b!6291274))

(assert (= (and b!6291274 c!1141723) b!6291275))

(assert (= (and b!6291274 (not c!1141723)) b!6291267))

(assert (= (or b!6291275 b!6291267) bm!532722))

(assert (= (or b!6291268 bm!532722) bm!532720))

(assert (= (or b!6291270 b!6291275) bm!532719))

(assert (= (or b!6291270 bm!532720) bm!532721))

(assert (=> bm!532719 m!7111082))

(declare-fun m!7111798 () Bool)

(assert (=> bm!532719 m!7111798))

(assert (=> bm!532721 m!7111082))

(declare-fun m!7111800 () Bool)

(assert (=> bm!532721 m!7111800))

(declare-fun m!7111802 () Bool)

(assert (=> b!6291274 m!7111802))

(declare-fun m!7111804 () Bool)

(assert (=> d!1974212 m!7111804))

(assert (=> d!1974212 m!7110370))

(assert (=> b!6290551 d!1974212))

(assert (=> b!6290551 d!1974146))

(assert (=> b!6290551 d!1974130))

(assert (=> b!6290593 d!1974146))

(declare-fun d!1974214 () Bool)

(assert (=> d!1974214 (= ($colon$colon!2078 (exprs!6097 lt!2357094) (ite (or c!1141605 c!1141606) (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 r!7292)))) (Cons!64815 (ite (or c!1141605 c!1141606) (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 r!7292))) (exprs!6097 lt!2357094)))))

(assert (=> bm!532639 d!1974214))

(declare-fun d!1974216 () Bool)

(assert (=> d!1974216 (= (isEmptyExpr!1619 lt!2357287) ((_ is EmptyExpr!16213) lt!2357287))))

(assert (=> b!6290902 d!1974216))

(declare-fun d!1974218 () Bool)

(declare-fun c!1141726 () Bool)

(assert (=> d!1974218 (= c!1141726 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825438 () Bool)

(assert (=> d!1974218 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357086 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825438)))

(declare-fun b!6291276 () Bool)

(assert (=> b!6291276 (= e!3825438 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357086 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291277 () Bool)

(assert (=> b!6291277 (= e!3825438 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357086 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974218 c!1141726) b!6291276))

(assert (= (and d!1974218 (not c!1141726)) b!6291277))

(assert (=> d!1974218 m!7111112))

(assert (=> d!1974218 m!7111724))

(assert (=> b!6291276 m!7111158))

(declare-fun m!7111806 () Bool)

(assert (=> b!6291276 m!7111806))

(assert (=> b!6291277 m!7111112))

(assert (=> b!6291277 m!7111728))

(assert (=> b!6291277 m!7111158))

(assert (=> b!6291277 m!7111728))

(declare-fun m!7111808 () Bool)

(assert (=> b!6291277 m!7111808))

(assert (=> b!6291277 m!7111112))

(assert (=> b!6291277 m!7111732))

(assert (=> b!6291277 m!7111808))

(assert (=> b!6291277 m!7111732))

(declare-fun m!7111810 () Bool)

(assert (=> b!6291277 m!7111810))

(assert (=> b!6290609 d!1974218))

(declare-fun bs!1572430 () Bool)

(declare-fun d!1974220 () Bool)

(assert (= bs!1572430 (and d!1974220 d!1974064)))

(declare-fun lambda!345620 () Int)

(assert (=> bs!1572430 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345620 lambda!345598))))

(declare-fun bs!1572431 () Bool)

(assert (= bs!1572431 (and d!1974220 d!1974186)))

(assert (=> bs!1572431 (= lambda!345620 lambda!345618)))

(declare-fun bs!1572432 () Bool)

(assert (= bs!1572432 (and d!1974220 b!6289808)))

(assert (=> bs!1572432 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345620 lambda!345481))))

(declare-fun bs!1572433 () Bool)

(assert (= bs!1572433 (and d!1974220 d!1974178)))

(assert (=> bs!1572433 (= lambda!345620 lambda!345617)))

(declare-fun bs!1572434 () Bool)

(assert (= bs!1572434 (and d!1974220 d!1973976)))

(assert (=> bs!1572434 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345620 lambda!345557))))

(assert (=> d!1974220 true))

(assert (=> d!1974220 (= (derivationStepZipper!2179 lt!2357086 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357086 lambda!345620))))

(declare-fun bs!1572435 () Bool)

(assert (= bs!1572435 d!1974220))

(declare-fun m!7111812 () Bool)

(assert (=> bs!1572435 m!7111812))

(assert (=> b!6290609 d!1974220))

(assert (=> b!6290609 d!1974180))

(assert (=> b!6290609 d!1974182))

(assert (=> d!1974028 d!1974138))

(declare-fun d!1974222 () Bool)

(declare-fun res!2594504 () Bool)

(declare-fun e!3825442 () Bool)

(assert (=> d!1974222 (=> res!2594504 e!3825442)))

(assert (=> d!1974222 (= res!2594504 ((_ is ElementMatch!16213) lt!2357061))))

(assert (=> d!1974222 (= (validRegex!7949 lt!2357061) e!3825442)))

(declare-fun b!6291278 () Bool)

(declare-fun res!2594506 () Bool)

(declare-fun e!3825443 () Bool)

(assert (=> b!6291278 (=> res!2594506 e!3825443)))

(assert (=> b!6291278 (= res!2594506 (not ((_ is Concat!25058) lt!2357061)))))

(declare-fun e!3825439 () Bool)

(assert (=> b!6291278 (= e!3825439 e!3825443)))

(declare-fun c!1141727 () Bool)

(declare-fun call!532730 () Bool)

(declare-fun c!1141728 () Bool)

(declare-fun bm!532723 () Bool)

(assert (=> bm!532723 (= call!532730 (validRegex!7949 (ite c!1141728 (reg!16542 lt!2357061) (ite c!1141727 (regTwo!32939 lt!2357061) (regTwo!32938 lt!2357061)))))))

(declare-fun b!6291279 () Bool)

(declare-fun e!3825441 () Bool)

(assert (=> b!6291279 (= e!3825441 e!3825439)))

(assert (=> b!6291279 (= c!1141727 ((_ is Union!16213) lt!2357061))))

(declare-fun bm!532724 () Bool)

(declare-fun call!532729 () Bool)

(assert (=> bm!532724 (= call!532729 call!532730)))

(declare-fun b!6291280 () Bool)

(declare-fun e!3825445 () Bool)

(assert (=> b!6291280 (= e!3825441 e!3825445)))

(declare-fun res!2594507 () Bool)

(assert (=> b!6291280 (= res!2594507 (not (nullable!6206 (reg!16542 lt!2357061))))))

(assert (=> b!6291280 (=> (not res!2594507) (not e!3825445))))

(declare-fun b!6291281 () Bool)

(assert (=> b!6291281 (= e!3825442 e!3825441)))

(assert (=> b!6291281 (= c!1141728 ((_ is Star!16213) lt!2357061))))

(declare-fun b!6291282 () Bool)

(declare-fun res!2594505 () Bool)

(declare-fun e!3825440 () Bool)

(assert (=> b!6291282 (=> (not res!2594505) (not e!3825440))))

(declare-fun call!532728 () Bool)

(assert (=> b!6291282 (= res!2594505 call!532728)))

(assert (=> b!6291282 (= e!3825439 e!3825440)))

(declare-fun bm!532725 () Bool)

(assert (=> bm!532725 (= call!532728 (validRegex!7949 (ite c!1141727 (regOne!32939 lt!2357061) (regOne!32938 lt!2357061))))))

(declare-fun b!6291283 () Bool)

(assert (=> b!6291283 (= e!3825445 call!532730)))

(declare-fun b!6291284 () Bool)

(declare-fun e!3825444 () Bool)

(assert (=> b!6291284 (= e!3825443 e!3825444)))

(declare-fun res!2594503 () Bool)

(assert (=> b!6291284 (=> (not res!2594503) (not e!3825444))))

(assert (=> b!6291284 (= res!2594503 call!532728)))

(declare-fun b!6291285 () Bool)

(assert (=> b!6291285 (= e!3825444 call!532729)))

(declare-fun b!6291286 () Bool)

(assert (=> b!6291286 (= e!3825440 call!532729)))

(assert (= (and d!1974222 (not res!2594504)) b!6291281))

(assert (= (and b!6291281 c!1141728) b!6291280))

(assert (= (and b!6291281 (not c!1141728)) b!6291279))

(assert (= (and b!6291280 res!2594507) b!6291283))

(assert (= (and b!6291279 c!1141727) b!6291282))

(assert (= (and b!6291279 (not c!1141727)) b!6291278))

(assert (= (and b!6291282 res!2594505) b!6291286))

(assert (= (and b!6291278 (not res!2594506)) b!6291284))

(assert (= (and b!6291284 res!2594503) b!6291285))

(assert (= (or b!6291286 b!6291285) bm!532724))

(assert (= (or b!6291282 b!6291284) bm!532725))

(assert (= (or b!6291283 bm!532724) bm!532723))

(declare-fun m!7111814 () Bool)

(assert (=> bm!532723 m!7111814))

(declare-fun m!7111816 () Bool)

(assert (=> b!6291280 m!7111816))

(declare-fun m!7111818 () Bool)

(assert (=> bm!532725 m!7111818))

(assert (=> d!1974028 d!1974222))

(declare-fun d!1974224 () Bool)

(assert (=> d!1974224 (= (isEmpty!36870 (t!378501 lt!2357060)) ((_ is Nil!64815) (t!378501 lt!2357060)))))

(assert (=> b!6290709 d!1974224))

(declare-fun d!1974226 () Bool)

(declare-fun res!2594509 () Bool)

(declare-fun e!3825449 () Bool)

(assert (=> d!1974226 (=> res!2594509 e!3825449)))

(assert (=> d!1974226 (= res!2594509 ((_ is ElementMatch!16213) (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))

(assert (=> d!1974226 (= (validRegex!7949 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))) e!3825449)))

(declare-fun b!6291287 () Bool)

(declare-fun res!2594511 () Bool)

(declare-fun e!3825450 () Bool)

(assert (=> b!6291287 (=> res!2594511 e!3825450)))

(assert (=> b!6291287 (= res!2594511 (not ((_ is Concat!25058) (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292))))))))

(declare-fun e!3825446 () Bool)

(assert (=> b!6291287 (= e!3825446 e!3825450)))

(declare-fun bm!532726 () Bool)

(declare-fun c!1141729 () Bool)

(declare-fun call!532733 () Bool)

(declare-fun c!1141730 () Bool)

(assert (=> bm!532726 (= call!532733 (validRegex!7949 (ite c!1141730 (reg!16542 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))) (ite c!1141729 (regTwo!32939 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))) (regTwo!32938 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292))))))))))

(declare-fun b!6291288 () Bool)

(declare-fun e!3825448 () Bool)

(assert (=> b!6291288 (= e!3825448 e!3825446)))

(assert (=> b!6291288 (= c!1141729 ((_ is Union!16213) (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))

(declare-fun bm!532727 () Bool)

(declare-fun call!532732 () Bool)

(assert (=> bm!532727 (= call!532732 call!532733)))

(declare-fun b!6291289 () Bool)

(declare-fun e!3825452 () Bool)

(assert (=> b!6291289 (= e!3825448 e!3825452)))

(declare-fun res!2594512 () Bool)

(assert (=> b!6291289 (= res!2594512 (not (nullable!6206 (reg!16542 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))))

(assert (=> b!6291289 (=> (not res!2594512) (not e!3825452))))

(declare-fun b!6291290 () Bool)

(assert (=> b!6291290 (= e!3825449 e!3825448)))

(assert (=> b!6291290 (= c!1141730 ((_ is Star!16213) (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))

(declare-fun b!6291291 () Bool)

(declare-fun res!2594510 () Bool)

(declare-fun e!3825447 () Bool)

(assert (=> b!6291291 (=> (not res!2594510) (not e!3825447))))

(declare-fun call!532731 () Bool)

(assert (=> b!6291291 (= res!2594510 call!532731)))

(assert (=> b!6291291 (= e!3825446 e!3825447)))

(declare-fun bm!532728 () Bool)

(assert (=> bm!532728 (= call!532731 (validRegex!7949 (ite c!1141729 (regOne!32939 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))) (regOne!32938 (ite c!1141634 (reg!16542 r!7292) (ite c!1141633 (regTwo!32939 r!7292) (regTwo!32938 r!7292)))))))))

(declare-fun b!6291292 () Bool)

(assert (=> b!6291292 (= e!3825452 call!532733)))

(declare-fun b!6291293 () Bool)

(declare-fun e!3825451 () Bool)

(assert (=> b!6291293 (= e!3825450 e!3825451)))

(declare-fun res!2594508 () Bool)

(assert (=> b!6291293 (=> (not res!2594508) (not e!3825451))))

(assert (=> b!6291293 (= res!2594508 call!532731)))

(declare-fun b!6291294 () Bool)

(assert (=> b!6291294 (= e!3825451 call!532732)))

(declare-fun b!6291295 () Bool)

(assert (=> b!6291295 (= e!3825447 call!532732)))

(assert (= (and d!1974226 (not res!2594509)) b!6291290))

(assert (= (and b!6291290 c!1141730) b!6291289))

(assert (= (and b!6291290 (not c!1141730)) b!6291288))

(assert (= (and b!6291289 res!2594512) b!6291292))

(assert (= (and b!6291288 c!1141729) b!6291291))

(assert (= (and b!6291288 (not c!1141729)) b!6291287))

(assert (= (and b!6291291 res!2594510) b!6291295))

(assert (= (and b!6291287 (not res!2594511)) b!6291293))

(assert (= (and b!6291293 res!2594508) b!6291294))

(assert (= (or b!6291295 b!6291294) bm!532727))

(assert (= (or b!6291291 b!6291293) bm!532728))

(assert (= (or b!6291292 bm!532727) bm!532726))

(declare-fun m!7111820 () Bool)

(assert (=> bm!532726 m!7111820))

(declare-fun m!7111822 () Bool)

(assert (=> b!6291289 m!7111822))

(declare-fun m!7111824 () Bool)

(assert (=> bm!532728 m!7111824))

(assert (=> bm!532659 d!1974226))

(declare-fun d!1974228 () Bool)

(declare-fun res!2594525 () Bool)

(declare-fun e!3825466 () Bool)

(assert (=> d!1974228 (=> res!2594525 e!3825466)))

(assert (=> d!1974228 (= res!2594525 ((_ is EmptyExpr!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> d!1974228 (= (nullableFct!2157 (h!71263 (exprs!6097 (h!71264 zl!343)))) e!3825466)))

(declare-fun bm!532733 () Bool)

(declare-fun call!532739 () Bool)

(declare-fun c!1141733 () Bool)

(assert (=> bm!532733 (= call!532739 (nullable!6206 (ite c!1141733 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6291310 () Bool)

(declare-fun e!3825468 () Bool)

(declare-fun e!3825465 () Bool)

(assert (=> b!6291310 (= e!3825468 e!3825465)))

(assert (=> b!6291310 (= c!1141733 ((_ is Union!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6291311 () Bool)

(declare-fun e!3825467 () Bool)

(declare-fun call!532738 () Bool)

(assert (=> b!6291311 (= e!3825467 call!532738)))

(declare-fun b!6291312 () Bool)

(declare-fun e!3825470 () Bool)

(assert (=> b!6291312 (= e!3825465 e!3825470)))

(declare-fun res!2594526 () Bool)

(assert (=> b!6291312 (= res!2594526 call!532739)))

(assert (=> b!6291312 (=> res!2594526 e!3825470)))

(declare-fun b!6291313 () Bool)

(assert (=> b!6291313 (= e!3825465 e!3825467)))

(declare-fun res!2594524 () Bool)

(assert (=> b!6291313 (= res!2594524 call!532739)))

(assert (=> b!6291313 (=> (not res!2594524) (not e!3825467))))

(declare-fun b!6291314 () Bool)

(declare-fun e!3825469 () Bool)

(assert (=> b!6291314 (= e!3825466 e!3825469)))

(declare-fun res!2594527 () Bool)

(assert (=> b!6291314 (=> (not res!2594527) (not e!3825469))))

(assert (=> b!6291314 (= res!2594527 (and (not ((_ is EmptyLang!16213) (h!71263 (exprs!6097 (h!71264 zl!343))))) (not ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6291315 () Bool)

(assert (=> b!6291315 (= e!3825469 e!3825468)))

(declare-fun res!2594523 () Bool)

(assert (=> b!6291315 (=> res!2594523 e!3825468)))

(assert (=> b!6291315 (= res!2594523 ((_ is Star!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6291316 () Bool)

(assert (=> b!6291316 (= e!3825470 call!532738)))

(declare-fun bm!532734 () Bool)

(assert (=> bm!532734 (= call!532738 (nullable!6206 (ite c!1141733 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(assert (= (and d!1974228 (not res!2594525)) b!6291314))

(assert (= (and b!6291314 res!2594527) b!6291315))

(assert (= (and b!6291315 (not res!2594523)) b!6291310))

(assert (= (and b!6291310 c!1141733) b!6291312))

(assert (= (and b!6291310 (not c!1141733)) b!6291313))

(assert (= (and b!6291312 (not res!2594526)) b!6291316))

(assert (= (and b!6291313 res!2594524) b!6291311))

(assert (= (or b!6291316 b!6291311) bm!532734))

(assert (= (or b!6291312 b!6291313) bm!532733))

(declare-fun m!7111826 () Bool)

(assert (=> bm!532733 m!7111826))

(declare-fun m!7111828 () Bool)

(assert (=> bm!532734 m!7111828))

(assert (=> d!1974080 d!1974228))

(assert (=> bm!532609 d!1974138))

(declare-fun d!1974230 () Bool)

(declare-fun c!1141734 () Bool)

(assert (=> d!1974230 (= c!1141734 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun e!3825471 () Bool)

(assert (=> d!1974230 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357069 (head!12927 s!2326)) (tail!12012 s!2326)) e!3825471)))

(declare-fun b!6291317 () Bool)

(assert (=> b!6291317 (= e!3825471 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357069 (head!12927 s!2326))))))

(declare-fun b!6291318 () Bool)

(assert (=> b!6291318 (= e!3825471 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(assert (= (and d!1974230 c!1141734) b!6291317))

(assert (= (and d!1974230 (not c!1141734)) b!6291318))

(assert (=> d!1974230 m!7111086))

(assert (=> d!1974230 m!7111090))

(assert (=> b!6291317 m!7111296))

(declare-fun m!7111830 () Bool)

(assert (=> b!6291317 m!7111830))

(assert (=> b!6291318 m!7111086))

(assert (=> b!6291318 m!7111620))

(assert (=> b!6291318 m!7111296))

(assert (=> b!6291318 m!7111620))

(declare-fun m!7111832 () Bool)

(assert (=> b!6291318 m!7111832))

(assert (=> b!6291318 m!7111086))

(assert (=> b!6291318 m!7111624))

(assert (=> b!6291318 m!7111832))

(assert (=> b!6291318 m!7111624))

(declare-fun m!7111834 () Bool)

(assert (=> b!6291318 m!7111834))

(assert (=> b!6290726 d!1974230))

(declare-fun bs!1572436 () Bool)

(declare-fun d!1974232 () Bool)

(assert (= bs!1572436 (and d!1974232 d!1974064)))

(declare-fun lambda!345621 () Int)

(assert (=> bs!1572436 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345621 lambda!345598))))

(declare-fun bs!1572437 () Bool)

(assert (= bs!1572437 (and d!1974232 d!1974186)))

(assert (=> bs!1572437 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345621 lambda!345618))))

(declare-fun bs!1572438 () Bool)

(assert (= bs!1572438 (and d!1974232 b!6289808)))

(assert (=> bs!1572438 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345621 lambda!345481))))

(declare-fun bs!1572439 () Bool)

(assert (= bs!1572439 (and d!1974232 d!1974178)))

(assert (=> bs!1572439 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345621 lambda!345617))))

(declare-fun bs!1572440 () Bool)

(assert (= bs!1572440 (and d!1974232 d!1973976)))

(assert (=> bs!1572440 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345621 lambda!345557))))

(declare-fun bs!1572441 () Bool)

(assert (= bs!1572441 (and d!1974232 d!1974220)))

(assert (=> bs!1572441 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345621 lambda!345620))))

(assert (=> d!1974232 true))

(assert (=> d!1974232 (= (derivationStepZipper!2179 lt!2357069 (head!12927 s!2326)) (flatMap!1718 lt!2357069 lambda!345621))))

(declare-fun bs!1572442 () Bool)

(assert (= bs!1572442 d!1974232))

(declare-fun m!7111836 () Bool)

(assert (=> bs!1572442 m!7111836))

(assert (=> b!6290726 d!1974232))

(assert (=> b!6290726 d!1974146))

(assert (=> b!6290726 d!1974130))

(declare-fun d!1974234 () Bool)

(assert (=> d!1974234 (= (Exists!3283 (ite c!1141489 lambda!345553 lambda!345554)) (choose!46739 (ite c!1141489 lambda!345553 lambda!345554)))))

(declare-fun bs!1572443 () Bool)

(assert (= bs!1572443 d!1974234))

(declare-fun m!7111838 () Bool)

(assert (=> bs!1572443 m!7111838))

(assert (=> bm!532602 d!1974234))

(declare-fun b!6291319 () Bool)

(declare-fun e!3825473 () List!64938)

(assert (=> b!6291319 (= e!3825473 (_2!36495 (get!22408 lt!2357231)))))

(declare-fun b!6291320 () Bool)

(assert (=> b!6291320 (= e!3825473 (Cons!64814 (h!71262 (_1!36495 (get!22408 lt!2357231))) (++!14286 (t!378500 (_1!36495 (get!22408 lt!2357231))) (_2!36495 (get!22408 lt!2357231)))))))

(declare-fun b!6291321 () Bool)

(declare-fun res!2594528 () Bool)

(declare-fun e!3825472 () Bool)

(assert (=> b!6291321 (=> (not res!2594528) (not e!3825472))))

(declare-fun lt!2357327 () List!64938)

(assert (=> b!6291321 (= res!2594528 (= (size!40315 lt!2357327) (+ (size!40315 (_1!36495 (get!22408 lt!2357231))) (size!40315 (_2!36495 (get!22408 lt!2357231))))))))

(declare-fun b!6291322 () Bool)

(assert (=> b!6291322 (= e!3825472 (or (not (= (_2!36495 (get!22408 lt!2357231)) Nil!64814)) (= lt!2357327 (_1!36495 (get!22408 lt!2357231)))))))

(declare-fun d!1974236 () Bool)

(assert (=> d!1974236 e!3825472))

(declare-fun res!2594529 () Bool)

(assert (=> d!1974236 (=> (not res!2594529) (not e!3825472))))

(assert (=> d!1974236 (= res!2594529 (= (content!12191 lt!2357327) ((_ map or) (content!12191 (_1!36495 (get!22408 lt!2357231))) (content!12191 (_2!36495 (get!22408 lt!2357231))))))))

(assert (=> d!1974236 (= lt!2357327 e!3825473)))

(declare-fun c!1141735 () Bool)

(assert (=> d!1974236 (= c!1141735 ((_ is Nil!64814) (_1!36495 (get!22408 lt!2357231))))))

(assert (=> d!1974236 (= (++!14286 (_1!36495 (get!22408 lt!2357231)) (_2!36495 (get!22408 lt!2357231))) lt!2357327)))

(assert (= (and d!1974236 c!1141735) b!6291319))

(assert (= (and d!1974236 (not c!1141735)) b!6291320))

(assert (= (and d!1974236 res!2594529) b!6291321))

(assert (= (and b!6291321 res!2594528) b!6291322))

(declare-fun m!7111840 () Bool)

(assert (=> b!6291320 m!7111840))

(declare-fun m!7111842 () Bool)

(assert (=> b!6291321 m!7111842))

(declare-fun m!7111844 () Bool)

(assert (=> b!6291321 m!7111844))

(declare-fun m!7111846 () Bool)

(assert (=> b!6291321 m!7111846))

(declare-fun m!7111848 () Bool)

(assert (=> d!1974236 m!7111848))

(declare-fun m!7111850 () Bool)

(assert (=> d!1974236 m!7111850))

(declare-fun m!7111852 () Bool)

(assert (=> d!1974236 m!7111852))

(assert (=> b!6290638 d!1974236))

(declare-fun d!1974238 () Bool)

(assert (=> d!1974238 (= (get!22408 lt!2357231) (v!52258 lt!2357231))))

(assert (=> b!6290638 d!1974238))

(assert (=> d!1974012 d!1974170))

(declare-fun b!6291323 () Bool)

(declare-fun e!3825480 () Bool)

(assert (=> b!6291323 (= e!3825480 (nullable!6206 (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291324 () Bool)

(declare-fun res!2594534 () Bool)

(declare-fun e!3825477 () Bool)

(assert (=> b!6291324 (=> res!2594534 e!3825477)))

(declare-fun e!3825476 () Bool)

(assert (=> b!6291324 (= res!2594534 e!3825476)))

(declare-fun res!2594537 () Bool)

(assert (=> b!6291324 (=> (not res!2594537) (not e!3825476))))

(declare-fun lt!2357328 () Bool)

(assert (=> b!6291324 (= res!2594537 lt!2357328)))

(declare-fun b!6291325 () Bool)

(assert (=> b!6291325 (= e!3825476 (= (head!12927 Nil!64814) (c!1141284 (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6291326 () Bool)

(declare-fun e!3825478 () Bool)

(assert (=> b!6291326 (= e!3825478 (not (= (head!12927 Nil!64814) (c!1141284 (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun d!1974240 () Bool)

(declare-fun e!3825479 () Bool)

(assert (=> d!1974240 e!3825479))

(declare-fun c!1141736 () Bool)

(assert (=> d!1974240 (= c!1141736 ((_ is EmptyExpr!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974240 (= lt!2357328 e!3825480)))

(declare-fun c!1141737 () Bool)

(assert (=> d!1974240 (= c!1141737 (isEmpty!36872 Nil!64814))))

(assert (=> d!1974240 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974240 (= (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) Nil!64814) lt!2357328)))

(declare-fun b!6291327 () Bool)

(declare-fun e!3825475 () Bool)

(assert (=> b!6291327 (= e!3825475 (not lt!2357328))))

(declare-fun b!6291328 () Bool)

(declare-fun e!3825474 () Bool)

(assert (=> b!6291328 (= e!3825477 e!3825474)))

(declare-fun res!2594536 () Bool)

(assert (=> b!6291328 (=> (not res!2594536) (not e!3825474))))

(assert (=> b!6291328 (= res!2594536 (not lt!2357328))))

(declare-fun bm!532735 () Bool)

(declare-fun call!532740 () Bool)

(assert (=> bm!532735 (= call!532740 (isEmpty!36872 Nil!64814))))

(declare-fun b!6291329 () Bool)

(assert (=> b!6291329 (= e!3825479 (= lt!2357328 call!532740))))

(declare-fun b!6291330 () Bool)

(assert (=> b!6291330 (= e!3825479 e!3825475)))

(declare-fun c!1141738 () Bool)

(assert (=> b!6291330 (= c!1141738 ((_ is EmptyLang!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291331 () Bool)

(assert (=> b!6291331 (= e!3825474 e!3825478)))

(declare-fun res!2594535 () Bool)

(assert (=> b!6291331 (=> res!2594535 e!3825478)))

(assert (=> b!6291331 (= res!2594535 call!532740)))

(declare-fun b!6291332 () Bool)

(declare-fun res!2594531 () Bool)

(assert (=> b!6291332 (=> (not res!2594531) (not e!3825476))))

(assert (=> b!6291332 (= res!2594531 (not call!532740))))

(declare-fun b!6291333 () Bool)

(declare-fun res!2594530 () Bool)

(assert (=> b!6291333 (=> res!2594530 e!3825477)))

(assert (=> b!6291333 (= res!2594530 (not ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292)))))))

(assert (=> b!6291333 (= e!3825475 e!3825477)))

(declare-fun b!6291334 () Bool)

(assert (=> b!6291334 (= e!3825480 (matchR!8396 (derivativeStep!4922 (regOne!32938 (regOne!32938 r!7292)) (head!12927 Nil!64814)) (tail!12012 Nil!64814)))))

(declare-fun b!6291335 () Bool)

(declare-fun res!2594532 () Bool)

(assert (=> b!6291335 (=> (not res!2594532) (not e!3825476))))

(assert (=> b!6291335 (= res!2594532 (isEmpty!36872 (tail!12012 Nil!64814)))))

(declare-fun b!6291336 () Bool)

(declare-fun res!2594533 () Bool)

(assert (=> b!6291336 (=> res!2594533 e!3825478)))

(assert (=> b!6291336 (= res!2594533 (not (isEmpty!36872 (tail!12012 Nil!64814))))))

(assert (= (and d!1974240 c!1141737) b!6291323))

(assert (= (and d!1974240 (not c!1141737)) b!6291334))

(assert (= (and d!1974240 c!1141736) b!6291329))

(assert (= (and d!1974240 (not c!1141736)) b!6291330))

(assert (= (and b!6291330 c!1141738) b!6291327))

(assert (= (and b!6291330 (not c!1141738)) b!6291333))

(assert (= (and b!6291333 (not res!2594530)) b!6291324))

(assert (= (and b!6291324 res!2594537) b!6291332))

(assert (= (and b!6291332 res!2594531) b!6291335))

(assert (= (and b!6291335 res!2594532) b!6291325))

(assert (= (and b!6291324 (not res!2594534)) b!6291328))

(assert (= (and b!6291328 res!2594536) b!6291331))

(assert (= (and b!6291331 (not res!2594535)) b!6291336))

(assert (= (and b!6291336 (not res!2594533)) b!6291326))

(assert (= (or b!6291329 b!6291331 b!6291332) bm!532735))

(declare-fun m!7111854 () Bool)

(assert (=> bm!532735 m!7111854))

(declare-fun m!7111856 () Bool)

(assert (=> b!6291334 m!7111856))

(assert (=> b!6291334 m!7111856))

(declare-fun m!7111858 () Bool)

(assert (=> b!6291334 m!7111858))

(declare-fun m!7111860 () Bool)

(assert (=> b!6291334 m!7111860))

(assert (=> b!6291334 m!7111858))

(assert (=> b!6291334 m!7111860))

(declare-fun m!7111862 () Bool)

(assert (=> b!6291334 m!7111862))

(assert (=> b!6291326 m!7111856))

(assert (=> b!6291336 m!7111860))

(assert (=> b!6291336 m!7111860))

(declare-fun m!7111864 () Bool)

(assert (=> b!6291336 m!7111864))

(assert (=> b!6291323 m!7110442))

(assert (=> b!6291325 m!7111856))

(assert (=> b!6291335 m!7111860))

(assert (=> b!6291335 m!7111860))

(assert (=> b!6291335 m!7111864))

(assert (=> d!1974240 m!7111854))

(assert (=> d!1974240 m!7111274))

(assert (=> d!1974012 d!1974240))

(declare-fun d!1974242 () Bool)

(declare-fun res!2594539 () Bool)

(declare-fun e!3825484 () Bool)

(assert (=> d!1974242 (=> res!2594539 e!3825484)))

(assert (=> d!1974242 (= res!2594539 ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974242 (= (validRegex!7949 (regOne!32938 (regOne!32938 r!7292))) e!3825484)))

(declare-fun b!6291337 () Bool)

(declare-fun res!2594541 () Bool)

(declare-fun e!3825485 () Bool)

(assert (=> b!6291337 (=> res!2594541 e!3825485)))

(assert (=> b!6291337 (= res!2594541 (not ((_ is Concat!25058) (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun e!3825481 () Bool)

(assert (=> b!6291337 (= e!3825481 e!3825485)))

(declare-fun bm!532736 () Bool)

(declare-fun c!1141740 () Bool)

(declare-fun c!1141739 () Bool)

(declare-fun call!532743 () Bool)

(assert (=> bm!532736 (= call!532743 (validRegex!7949 (ite c!1141740 (reg!16542 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141739 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (regTwo!32938 (regOne!32938 (regOne!32938 r!7292)))))))))

(declare-fun b!6291338 () Bool)

(declare-fun e!3825483 () Bool)

(assert (=> b!6291338 (= e!3825483 e!3825481)))

(assert (=> b!6291338 (= c!1141739 ((_ is Union!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun bm!532737 () Bool)

(declare-fun call!532742 () Bool)

(assert (=> bm!532737 (= call!532742 call!532743)))

(declare-fun b!6291339 () Bool)

(declare-fun e!3825487 () Bool)

(assert (=> b!6291339 (= e!3825483 e!3825487)))

(declare-fun res!2594542 () Bool)

(assert (=> b!6291339 (= res!2594542 (not (nullable!6206 (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291339 (=> (not res!2594542) (not e!3825487))))

(declare-fun b!6291340 () Bool)

(assert (=> b!6291340 (= e!3825484 e!3825483)))

(assert (=> b!6291340 (= c!1141740 ((_ is Star!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291341 () Bool)

(declare-fun res!2594540 () Bool)

(declare-fun e!3825482 () Bool)

(assert (=> b!6291341 (=> (not res!2594540) (not e!3825482))))

(declare-fun call!532741 () Bool)

(assert (=> b!6291341 (= res!2594540 call!532741)))

(assert (=> b!6291341 (= e!3825481 e!3825482)))

(declare-fun bm!532738 () Bool)

(assert (=> bm!532738 (= call!532741 (validRegex!7949 (ite c!1141739 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6291342 () Bool)

(assert (=> b!6291342 (= e!3825487 call!532743)))

(declare-fun b!6291343 () Bool)

(declare-fun e!3825486 () Bool)

(assert (=> b!6291343 (= e!3825485 e!3825486)))

(declare-fun res!2594538 () Bool)

(assert (=> b!6291343 (=> (not res!2594538) (not e!3825486))))

(assert (=> b!6291343 (= res!2594538 call!532741)))

(declare-fun b!6291344 () Bool)

(assert (=> b!6291344 (= e!3825486 call!532742)))

(declare-fun b!6291345 () Bool)

(assert (=> b!6291345 (= e!3825482 call!532742)))

(assert (= (and d!1974242 (not res!2594539)) b!6291340))

(assert (= (and b!6291340 c!1141740) b!6291339))

(assert (= (and b!6291340 (not c!1141740)) b!6291338))

(assert (= (and b!6291339 res!2594542) b!6291342))

(assert (= (and b!6291338 c!1141739) b!6291341))

(assert (= (and b!6291338 (not c!1141739)) b!6291337))

(assert (= (and b!6291341 res!2594540) b!6291345))

(assert (= (and b!6291337 (not res!2594541)) b!6291343))

(assert (= (and b!6291343 res!2594538) b!6291344))

(assert (= (or b!6291345 b!6291344) bm!532737))

(assert (= (or b!6291341 b!6291343) bm!532738))

(assert (= (or b!6291342 bm!532737) bm!532736))

(declare-fun m!7111866 () Bool)

(assert (=> bm!532736 m!7111866))

(declare-fun m!7111868 () Bool)

(assert (=> b!6291339 m!7111868))

(declare-fun m!7111870 () Bool)

(assert (=> bm!532738 m!7111870))

(assert (=> d!1974012 d!1974242))

(assert (=> b!6290602 d!1974128))

(assert (=> b!6290602 d!1974130))

(assert (=> b!6290908 d!1974146))

(assert (=> d!1974098 d!1974120))

(assert (=> b!6290753 d!1974128))

(assert (=> b!6290753 d!1974130))

(declare-fun d!1974244 () Bool)

(assert (=> d!1974244 (= (nullable!6206 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))) (nullableFct!2157 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun bs!1572444 () Bool)

(assert (= bs!1572444 d!1974244))

(declare-fun m!7111872 () Bool)

(assert (=> bs!1572444 m!7111872))

(assert (=> b!6290833 d!1974244))

(assert (=> b!6290654 d!1974146))

(declare-fun d!1974246 () Bool)

(assert (=> d!1974246 (= (head!12926 lt!2357082) (h!71263 lt!2357082))))

(assert (=> b!6290757 d!1974246))

(assert (=> b!6290890 d!1974080))

(declare-fun d!1974248 () Bool)

(declare-fun res!2594543 () Bool)

(declare-fun e!3825488 () Bool)

(assert (=> d!1974248 (=> res!2594543 e!3825488)))

(assert (=> d!1974248 (= res!2594543 ((_ is Nil!64815) (exprs!6097 setElem!42812)))))

(assert (=> d!1974248 (= (forall!15362 (exprs!6097 setElem!42812) lambda!345596) e!3825488)))

(declare-fun b!6291346 () Bool)

(declare-fun e!3825489 () Bool)

(assert (=> b!6291346 (= e!3825488 e!3825489)))

(declare-fun res!2594544 () Bool)

(assert (=> b!6291346 (=> (not res!2594544) (not e!3825489))))

(assert (=> b!6291346 (= res!2594544 (dynLambda!25651 lambda!345596 (h!71263 (exprs!6097 setElem!42812))))))

(declare-fun b!6291347 () Bool)

(assert (=> b!6291347 (= e!3825489 (forall!15362 (t!378501 (exprs!6097 setElem!42812)) lambda!345596))))

(assert (= (and d!1974248 (not res!2594543)) b!6291346))

(assert (= (and b!6291346 res!2594544) b!6291347))

(declare-fun b_lambda!239371 () Bool)

(assert (=> (not b_lambda!239371) (not b!6291346)))

(declare-fun m!7111874 () Bool)

(assert (=> b!6291346 m!7111874))

(declare-fun m!7111876 () Bool)

(assert (=> b!6291347 m!7111876))

(assert (=> d!1974050 d!1974248))

(declare-fun d!1974250 () Bool)

(declare-fun c!1141741 () Bool)

(assert (=> d!1974250 (= c!1141741 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun e!3825490 () Bool)

(assert (=> d!1974250 (= (matchZipper!2225 (derivationStepZipper!2179 z!1189 (head!12927 s!2326)) (tail!12012 s!2326)) e!3825490)))

(declare-fun b!6291348 () Bool)

(assert (=> b!6291348 (= e!3825490 (nullableZipper!1983 (derivationStepZipper!2179 z!1189 (head!12927 s!2326))))))

(declare-fun b!6291349 () Bool)

(assert (=> b!6291349 (= e!3825490 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 z!1189 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(assert (= (and d!1974250 c!1141741) b!6291348))

(assert (= (and d!1974250 (not c!1141741)) b!6291349))

(assert (=> d!1974250 m!7111086))

(assert (=> d!1974250 m!7111090))

(assert (=> b!6291348 m!7111310))

(declare-fun m!7111878 () Bool)

(assert (=> b!6291348 m!7111878))

(assert (=> b!6291349 m!7111086))

(assert (=> b!6291349 m!7111620))

(assert (=> b!6291349 m!7111310))

(assert (=> b!6291349 m!7111620))

(declare-fun m!7111880 () Bool)

(assert (=> b!6291349 m!7111880))

(assert (=> b!6291349 m!7111086))

(assert (=> b!6291349 m!7111624))

(assert (=> b!6291349 m!7111880))

(assert (=> b!6291349 m!7111624))

(declare-fun m!7111882 () Bool)

(assert (=> b!6291349 m!7111882))

(assert (=> b!6290739 d!1974250))

(declare-fun bs!1572445 () Bool)

(declare-fun d!1974252 () Bool)

(assert (= bs!1572445 (and d!1974252 d!1974064)))

(declare-fun lambda!345622 () Int)

(assert (=> bs!1572445 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345622 lambda!345598))))

(declare-fun bs!1572446 () Bool)

(assert (= bs!1572446 (and d!1974252 d!1974186)))

(assert (=> bs!1572446 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345622 lambda!345618))))

(declare-fun bs!1572447 () Bool)

(assert (= bs!1572447 (and d!1974252 d!1974178)))

(assert (=> bs!1572447 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345622 lambda!345617))))

(declare-fun bs!1572448 () Bool)

(assert (= bs!1572448 (and d!1974252 d!1973976)))

(assert (=> bs!1572448 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345622 lambda!345557))))

(declare-fun bs!1572449 () Bool)

(assert (= bs!1572449 (and d!1974252 d!1974220)))

(assert (=> bs!1572449 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345622 lambda!345620))))

(declare-fun bs!1572450 () Bool)

(assert (= bs!1572450 (and d!1974252 d!1974232)))

(assert (=> bs!1572450 (= lambda!345622 lambda!345621)))

(declare-fun bs!1572451 () Bool)

(assert (= bs!1572451 (and d!1974252 b!6289808)))

(assert (=> bs!1572451 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345622 lambda!345481))))

(assert (=> d!1974252 true))

(assert (=> d!1974252 (= (derivationStepZipper!2179 z!1189 (head!12927 s!2326)) (flatMap!1718 z!1189 lambda!345622))))

(declare-fun bs!1572452 () Bool)

(assert (= bs!1572452 d!1974252))

(declare-fun m!7111884 () Bool)

(assert (=> bs!1572452 m!7111884))

(assert (=> b!6290739 d!1974252))

(assert (=> b!6290739 d!1974146))

(assert (=> b!6290739 d!1974130))

(declare-fun d!1974254 () Bool)

(assert (=> d!1974254 (= (isEmpty!36870 (tail!12011 (unfocusZipperList!1634 zl!343))) ((_ is Nil!64815) (tail!12011 (unfocusZipperList!1634 zl!343))))))

(assert (=> b!6290314 d!1974254))

(declare-fun d!1974256 () Bool)

(assert (=> d!1974256 (= (tail!12011 (unfocusZipperList!1634 zl!343)) (t!378501 (unfocusZipperList!1634 zl!343)))))

(assert (=> b!6290314 d!1974256))

(declare-fun d!1974258 () Bool)

(assert (=> d!1974258 (= (isEmpty!36870 (tail!12011 (t!378501 (exprs!6097 (h!71264 zl!343))))) ((_ is Nil!64815) (tail!12011 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(assert (=> b!6290698 d!1974258))

(declare-fun d!1974260 () Bool)

(assert (=> d!1974260 (= (tail!12011 (t!378501 (exprs!6097 (h!71264 zl!343)))) (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6290698 d!1974260))

(declare-fun b!6291350 () Bool)

(declare-fun e!3825492 () List!64938)

(assert (=> b!6291350 (= e!3825492 (t!378500 s!2326))))

(declare-fun b!6291351 () Bool)

(assert (=> b!6291351 (= e!3825492 (Cons!64814 (h!71262 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))) (++!14286 (t!378500 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))) (t!378500 s!2326))))))

(declare-fun b!6291352 () Bool)

(declare-fun res!2594545 () Bool)

(declare-fun e!3825491 () Bool)

(assert (=> b!6291352 (=> (not res!2594545) (not e!3825491))))

(declare-fun lt!2357329 () List!64938)

(assert (=> b!6291352 (= res!2594545 (= (size!40315 lt!2357329) (+ (size!40315 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))) (size!40315 (t!378500 s!2326)))))))

(declare-fun b!6291353 () Bool)

(assert (=> b!6291353 (= e!3825491 (or (not (= (t!378500 s!2326) Nil!64814)) (= lt!2357329 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)))))))

(declare-fun d!1974262 () Bool)

(assert (=> d!1974262 e!3825491))

(declare-fun res!2594546 () Bool)

(assert (=> d!1974262 (=> (not res!2594546) (not e!3825491))))

(assert (=> d!1974262 (= res!2594546 (= (content!12191 lt!2357329) ((_ map or) (content!12191 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))) (content!12191 (t!378500 s!2326)))))))

(assert (=> d!1974262 (= lt!2357329 e!3825492)))

(declare-fun c!1141742 () Bool)

(assert (=> d!1974262 (= c!1141742 ((_ is Nil!64814) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))))))

(assert (=> d!1974262 (= (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326)) lt!2357329)))

(assert (= (and d!1974262 c!1141742) b!6291350))

(assert (= (and d!1974262 (not c!1141742)) b!6291351))

(assert (= (and d!1974262 res!2594546) b!6291352))

(assert (= (and b!6291352 res!2594545) b!6291353))

(declare-fun m!7111886 () Bool)

(assert (=> b!6291351 m!7111886))

(declare-fun m!7111888 () Bool)

(assert (=> b!6291352 m!7111888))

(assert (=> b!6291352 m!7111182))

(declare-fun m!7111890 () Bool)

(assert (=> b!6291352 m!7111890))

(declare-fun m!7111892 () Bool)

(assert (=> b!6291352 m!7111892))

(declare-fun m!7111894 () Bool)

(assert (=> d!1974262 m!7111894))

(assert (=> d!1974262 m!7111182))

(declare-fun m!7111896 () Bool)

(assert (=> d!1974262 m!7111896))

(declare-fun m!7111898 () Bool)

(assert (=> d!1974262 m!7111898))

(assert (=> b!6290717 d!1974262))

(declare-fun b!6291354 () Bool)

(declare-fun e!3825494 () List!64938)

(assert (=> b!6291354 (= e!3825494 (Cons!64814 (h!71262 s!2326) Nil!64814))))

(declare-fun b!6291355 () Bool)

(assert (=> b!6291355 (= e!3825494 (Cons!64814 (h!71262 Nil!64814) (++!14286 (t!378500 Nil!64814) (Cons!64814 (h!71262 s!2326) Nil!64814))))))

(declare-fun b!6291356 () Bool)

(declare-fun res!2594547 () Bool)

(declare-fun e!3825493 () Bool)

(assert (=> b!6291356 (=> (not res!2594547) (not e!3825493))))

(declare-fun lt!2357330 () List!64938)

(assert (=> b!6291356 (= res!2594547 (= (size!40315 lt!2357330) (+ (size!40315 Nil!64814) (size!40315 (Cons!64814 (h!71262 s!2326) Nil!64814)))))))

(declare-fun b!6291357 () Bool)

(assert (=> b!6291357 (= e!3825493 (or (not (= (Cons!64814 (h!71262 s!2326) Nil!64814) Nil!64814)) (= lt!2357330 Nil!64814)))))

(declare-fun d!1974264 () Bool)

(assert (=> d!1974264 e!3825493))

(declare-fun res!2594548 () Bool)

(assert (=> d!1974264 (=> (not res!2594548) (not e!3825493))))

(assert (=> d!1974264 (= res!2594548 (= (content!12191 lt!2357330) ((_ map or) (content!12191 Nil!64814) (content!12191 (Cons!64814 (h!71262 s!2326) Nil!64814)))))))

(assert (=> d!1974264 (= lt!2357330 e!3825494)))

(declare-fun c!1141743 () Bool)

(assert (=> d!1974264 (= c!1141743 ((_ is Nil!64814) Nil!64814))))

(assert (=> d!1974264 (= (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) lt!2357330)))

(assert (= (and d!1974264 c!1141743) b!6291354))

(assert (= (and d!1974264 (not c!1141743)) b!6291355))

(assert (= (and d!1974264 res!2594548) b!6291356))

(assert (= (and b!6291356 res!2594547) b!6291357))

(declare-fun m!7111900 () Bool)

(assert (=> b!6291355 m!7111900))

(declare-fun m!7111902 () Bool)

(assert (=> b!6291356 m!7111902))

(declare-fun m!7111904 () Bool)

(assert (=> b!6291356 m!7111904))

(declare-fun m!7111906 () Bool)

(assert (=> b!6291356 m!7111906))

(declare-fun m!7111908 () Bool)

(assert (=> d!1974264 m!7111908))

(declare-fun m!7111910 () Bool)

(assert (=> d!1974264 m!7111910))

(declare-fun m!7111912 () Bool)

(assert (=> d!1974264 m!7111912))

(assert (=> b!6290717 d!1974264))

(declare-fun d!1974266 () Bool)

(assert (=> d!1974266 (= (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326)) s!2326)))

(declare-fun lt!2357333 () Unit!158183)

(declare-fun choose!46750 (List!64938 C!32696 List!64938 List!64938) Unit!158183)

(assert (=> d!1974266 (= lt!2357333 (choose!46750 Nil!64814 (h!71262 s!2326) (t!378500 s!2326) s!2326))))

(assert (=> d!1974266 (= (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) (t!378500 s!2326))) s!2326)))

(assert (=> d!1974266 (= (lemmaMoveElementToOtherListKeepsConcatEq!2381 Nil!64814 (h!71262 s!2326) (t!378500 s!2326) s!2326) lt!2357333)))

(declare-fun bs!1572453 () Bool)

(assert (= bs!1572453 d!1974266))

(assert (=> bs!1572453 m!7111182))

(assert (=> bs!1572453 m!7111182))

(assert (=> bs!1572453 m!7111184))

(declare-fun m!7111914 () Bool)

(assert (=> bs!1572453 m!7111914))

(declare-fun m!7111916 () Bool)

(assert (=> bs!1572453 m!7111916))

(assert (=> b!6290717 d!1974266))

(declare-fun b!6291359 () Bool)

(declare-fun lt!2357336 () Unit!158183)

(declare-fun lt!2357335 () Unit!158183)

(assert (=> b!6291359 (= lt!2357336 lt!2357335)))

(assert (=> b!6291359 (= (++!14286 (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326))) s!2326)))

(assert (=> b!6291359 (= lt!2357335 (lemmaMoveElementToOtherListKeepsConcatEq!2381 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (h!71262 (t!378500 s!2326)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun e!3825498 () Option!16104)

(assert (=> b!6291359 (= e!3825498 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun b!6291360 () Bool)

(declare-fun e!3825495 () Option!16104)

(assert (=> b!6291360 (= e!3825495 e!3825498)))

(declare-fun c!1141744 () Bool)

(assert (=> b!6291360 (= c!1141744 ((_ is Nil!64814) (t!378500 s!2326)))))

(declare-fun b!6291361 () Bool)

(assert (=> b!6291361 (= e!3825498 None!16103)))

(declare-fun b!6291362 () Bool)

(declare-fun res!2594551 () Bool)

(declare-fun e!3825499 () Bool)

(assert (=> b!6291362 (=> (not res!2594551) (not e!3825499))))

(declare-fun lt!2357334 () Option!16104)

(assert (=> b!6291362 (= res!2594551 (matchR!8396 lt!2357070 (_2!36495 (get!22408 lt!2357334))))))

(declare-fun b!6291363 () Bool)

(declare-fun res!2594550 () Bool)

(assert (=> b!6291363 (=> (not res!2594550) (not e!3825499))))

(assert (=> b!6291363 (= res!2594550 (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357334))))))

(declare-fun b!6291364 () Bool)

(assert (=> b!6291364 (= e!3825495 (Some!16103 (tuple2!66385 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326))))))

(declare-fun b!6291365 () Bool)

(declare-fun e!3825496 () Bool)

(assert (=> b!6291365 (= e!3825496 (matchR!8396 lt!2357070 (t!378500 s!2326)))))

(declare-fun b!6291366 () Bool)

(assert (=> b!6291366 (= e!3825499 (= (++!14286 (_1!36495 (get!22408 lt!2357334)) (_2!36495 (get!22408 lt!2357334))) s!2326))))

(declare-fun d!1974268 () Bool)

(declare-fun e!3825497 () Bool)

(assert (=> d!1974268 e!3825497))

(declare-fun res!2594553 () Bool)

(assert (=> d!1974268 (=> res!2594553 e!3825497)))

(assert (=> d!1974268 (= res!2594553 e!3825499)))

(declare-fun res!2594549 () Bool)

(assert (=> d!1974268 (=> (not res!2594549) (not e!3825499))))

(assert (=> d!1974268 (= res!2594549 (isDefined!12807 lt!2357334))))

(assert (=> d!1974268 (= lt!2357334 e!3825495)))

(declare-fun c!1141745 () Bool)

(assert (=> d!1974268 (= c!1141745 e!3825496)))

(declare-fun res!2594552 () Bool)

(assert (=> d!1974268 (=> (not res!2594552) (not e!3825496))))

(assert (=> d!1974268 (= res!2594552 (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))))))

(assert (=> d!1974268 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974268 (= (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326) lt!2357334)))

(declare-fun b!6291358 () Bool)

(assert (=> b!6291358 (= e!3825497 (not (isDefined!12807 lt!2357334)))))

(assert (= (and d!1974268 res!2594552) b!6291365))

(assert (= (and d!1974268 c!1141745) b!6291364))

(assert (= (and d!1974268 (not c!1141745)) b!6291360))

(assert (= (and b!6291360 c!1141744) b!6291361))

(assert (= (and b!6291360 (not c!1141744)) b!6291359))

(assert (= (and d!1974268 res!2594549) b!6291363))

(assert (= (and b!6291363 res!2594550) b!6291362))

(assert (= (and b!6291362 res!2594551) b!6291366))

(assert (= (and d!1974268 (not res!2594553)) b!6291358))

(declare-fun m!7111918 () Bool)

(assert (=> b!6291358 m!7111918))

(assert (=> d!1974268 m!7111918))

(assert (=> d!1974268 m!7111182))

(declare-fun m!7111920 () Bool)

(assert (=> d!1974268 m!7111920))

(assert (=> d!1974268 m!7111274))

(declare-fun m!7111922 () Bool)

(assert (=> b!6291363 m!7111922))

(declare-fun m!7111924 () Bool)

(assert (=> b!6291363 m!7111924))

(assert (=> b!6291366 m!7111922))

(declare-fun m!7111926 () Bool)

(assert (=> b!6291366 m!7111926))

(declare-fun m!7111928 () Bool)

(assert (=> b!6291365 m!7111928))

(assert (=> b!6291359 m!7111182))

(declare-fun m!7111930 () Bool)

(assert (=> b!6291359 m!7111930))

(assert (=> b!6291359 m!7111930))

(declare-fun m!7111932 () Bool)

(assert (=> b!6291359 m!7111932))

(assert (=> b!6291359 m!7111182))

(declare-fun m!7111934 () Bool)

(assert (=> b!6291359 m!7111934))

(assert (=> b!6291359 m!7111930))

(declare-fun m!7111936 () Bool)

(assert (=> b!6291359 m!7111936))

(assert (=> b!6291362 m!7111922))

(declare-fun m!7111938 () Bool)

(assert (=> b!6291362 m!7111938))

(assert (=> b!6290717 d!1974268))

(declare-fun b!6291367 () Bool)

(declare-fun e!3825501 () List!64938)

(assert (=> b!6291367 (= e!3825501 (_2!36495 (get!22408 lt!2357258)))))

(declare-fun b!6291368 () Bool)

(assert (=> b!6291368 (= e!3825501 (Cons!64814 (h!71262 (_1!36495 (get!22408 lt!2357258))) (++!14286 (t!378500 (_1!36495 (get!22408 lt!2357258))) (_2!36495 (get!22408 lt!2357258)))))))

(declare-fun b!6291369 () Bool)

(declare-fun res!2594554 () Bool)

(declare-fun e!3825500 () Bool)

(assert (=> b!6291369 (=> (not res!2594554) (not e!3825500))))

(declare-fun lt!2357337 () List!64938)

(assert (=> b!6291369 (= res!2594554 (= (size!40315 lt!2357337) (+ (size!40315 (_1!36495 (get!22408 lt!2357258))) (size!40315 (_2!36495 (get!22408 lt!2357258))))))))

(declare-fun b!6291370 () Bool)

(assert (=> b!6291370 (= e!3825500 (or (not (= (_2!36495 (get!22408 lt!2357258)) Nil!64814)) (= lt!2357337 (_1!36495 (get!22408 lt!2357258)))))))

(declare-fun d!1974270 () Bool)

(assert (=> d!1974270 e!3825500))

(declare-fun res!2594555 () Bool)

(assert (=> d!1974270 (=> (not res!2594555) (not e!3825500))))

(assert (=> d!1974270 (= res!2594555 (= (content!12191 lt!2357337) ((_ map or) (content!12191 (_1!36495 (get!22408 lt!2357258))) (content!12191 (_2!36495 (get!22408 lt!2357258))))))))

(assert (=> d!1974270 (= lt!2357337 e!3825501)))

(declare-fun c!1141746 () Bool)

(assert (=> d!1974270 (= c!1141746 ((_ is Nil!64814) (_1!36495 (get!22408 lt!2357258))))))

(assert (=> d!1974270 (= (++!14286 (_1!36495 (get!22408 lt!2357258)) (_2!36495 (get!22408 lt!2357258))) lt!2357337)))

(assert (= (and d!1974270 c!1141746) b!6291367))

(assert (= (and d!1974270 (not c!1141746)) b!6291368))

(assert (= (and d!1974270 res!2594555) b!6291369))

(assert (= (and b!6291369 res!2594554) b!6291370))

(declare-fun m!7111940 () Bool)

(assert (=> b!6291368 m!7111940))

(declare-fun m!7111942 () Bool)

(assert (=> b!6291369 m!7111942))

(declare-fun m!7111944 () Bool)

(assert (=> b!6291369 m!7111944))

(declare-fun m!7111946 () Bool)

(assert (=> b!6291369 m!7111946))

(declare-fun m!7111948 () Bool)

(assert (=> d!1974270 m!7111948))

(declare-fun m!7111950 () Bool)

(assert (=> d!1974270 m!7111950))

(declare-fun m!7111952 () Bool)

(assert (=> d!1974270 m!7111952))

(assert (=> b!6290774 d!1974270))

(declare-fun d!1974272 () Bool)

(assert (=> d!1974272 (= (get!22408 lt!2357258) (v!52258 lt!2357258))))

(assert (=> b!6290774 d!1974272))

(assert (=> b!6290581 d!1974128))

(assert (=> b!6290581 d!1974130))

(declare-fun d!1974274 () Bool)

(assert (=> d!1974274 (= (isDefined!12807 lt!2357231) (not (isEmpty!36874 lt!2357231)))))

(declare-fun bs!1572454 () Bool)

(assert (= bs!1572454 d!1974274))

(declare-fun m!7111954 () Bool)

(assert (=> bs!1572454 m!7111954))

(assert (=> b!6290630 d!1974274))

(declare-fun d!1974276 () Bool)

(assert (=> d!1974276 (= (head!12926 (t!378501 (exprs!6097 (h!71264 zl!343)))) (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6290697 d!1974276))

(assert (=> d!1974026 d!1974028))

(assert (=> d!1974026 d!1974032))

(declare-fun d!1974278 () Bool)

(assert (=> d!1974278 (= (matchR!8396 lt!2357061 s!2326) (matchZipper!2225 lt!2357071 s!2326))))

(assert (=> d!1974278 true))

(declare-fun _$44!1619 () Unit!158183)

(assert (=> d!1974278 (= (choose!46743 lt!2357071 lt!2357078 lt!2357061 s!2326) _$44!1619)))

(declare-fun bs!1572455 () Bool)

(assert (= bs!1572455 d!1974278))

(assert (=> bs!1572455 m!7110416))

(assert (=> bs!1572455 m!7110408))

(assert (=> d!1974026 d!1974278))

(assert (=> d!1974026 d!1974222))

(assert (=> b!6290552 d!1974128))

(assert (=> b!6290552 d!1974130))

(declare-fun d!1974280 () Bool)

(declare-fun lt!2357338 () Int)

(assert (=> d!1974280 (>= lt!2357338 0)))

(declare-fun e!3825502 () Int)

(assert (=> d!1974280 (= lt!2357338 e!3825502)))

(declare-fun c!1141747 () Bool)

(assert (=> d!1974280 (= c!1141747 ((_ is Cons!64815) (exprs!6097 (h!71264 lt!2357078))))))

(assert (=> d!1974280 (= (contextDepthTotal!336 (h!71264 lt!2357078)) lt!2357338)))

(declare-fun b!6291371 () Bool)

(assert (=> b!6291371 (= e!3825502 (+ (regexDepthTotal!187 (h!71263 (exprs!6097 (h!71264 lt!2357078)))) (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 (h!71264 lt!2357078)))))))))

(declare-fun b!6291372 () Bool)

(assert (=> b!6291372 (= e!3825502 1)))

(assert (= (and d!1974280 c!1141747) b!6291371))

(assert (= (and d!1974280 (not c!1141747)) b!6291372))

(declare-fun m!7111956 () Bool)

(assert (=> b!6291371 m!7111956))

(declare-fun m!7111958 () Bool)

(assert (=> b!6291371 m!7111958))

(assert (=> b!6290267 d!1974280))

(declare-fun d!1974282 () Bool)

(declare-fun lt!2357339 () Int)

(assert (=> d!1974282 (>= lt!2357339 0)))

(declare-fun e!3825503 () Int)

(assert (=> d!1974282 (= lt!2357339 e!3825503)))

(declare-fun c!1141748 () Bool)

(assert (=> d!1974282 (= c!1141748 ((_ is Cons!64816) (t!378502 lt!2357078)))))

(assert (=> d!1974282 (= (zipperDepthTotal!366 (t!378502 lt!2357078)) lt!2357339)))

(declare-fun b!6291373 () Bool)

(assert (=> b!6291373 (= e!3825503 (+ (contextDepthTotal!336 (h!71264 (t!378502 lt!2357078))) (zipperDepthTotal!366 (t!378502 (t!378502 lt!2357078)))))))

(declare-fun b!6291374 () Bool)

(assert (=> b!6291374 (= e!3825503 0)))

(assert (= (and d!1974282 c!1141748) b!6291373))

(assert (= (and d!1974282 (not c!1141748)) b!6291374))

(declare-fun m!7111960 () Bool)

(assert (=> b!6291373 m!7111960))

(declare-fun m!7111962 () Bool)

(assert (=> b!6291373 m!7111962))

(assert (=> b!6290267 d!1974282))

(declare-fun d!1974284 () Bool)

(assert (=> d!1974284 true))

(assert (=> d!1974284 true))

(declare-fun res!2594558 () Bool)

(assert (=> d!1974284 (= (choose!46739 lambda!345484) res!2594558)))

(assert (=> d!1974020 d!1974284))

(assert (=> d!1973972 d!1974138))

(declare-fun d!1974286 () Bool)

(declare-fun res!2594560 () Bool)

(declare-fun e!3825507 () Bool)

(assert (=> d!1974286 (=> res!2594560 e!3825507)))

(assert (=> d!1974286 (= res!2594560 ((_ is ElementMatch!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(assert (=> d!1974286 (= (validRegex!7949 (Concat!25058 lt!2357063 lt!2357053)) e!3825507)))

(declare-fun b!6291375 () Bool)

(declare-fun res!2594562 () Bool)

(declare-fun e!3825508 () Bool)

(assert (=> b!6291375 (=> res!2594562 e!3825508)))

(assert (=> b!6291375 (= res!2594562 (not ((_ is Concat!25058) (Concat!25058 lt!2357063 lt!2357053))))))

(declare-fun e!3825504 () Bool)

(assert (=> b!6291375 (= e!3825504 e!3825508)))

(declare-fun call!532746 () Bool)

(declare-fun bm!532739 () Bool)

(declare-fun c!1141750 () Bool)

(declare-fun c!1141749 () Bool)

(assert (=> bm!532739 (= call!532746 (validRegex!7949 (ite c!1141750 (reg!16542 (Concat!25058 lt!2357063 lt!2357053)) (ite c!1141749 (regTwo!32939 (Concat!25058 lt!2357063 lt!2357053)) (regTwo!32938 (Concat!25058 lt!2357063 lt!2357053))))))))

(declare-fun b!6291376 () Bool)

(declare-fun e!3825506 () Bool)

(assert (=> b!6291376 (= e!3825506 e!3825504)))

(assert (=> b!6291376 (= c!1141749 ((_ is Union!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun bm!532740 () Bool)

(declare-fun call!532745 () Bool)

(assert (=> bm!532740 (= call!532745 call!532746)))

(declare-fun b!6291377 () Bool)

(declare-fun e!3825510 () Bool)

(assert (=> b!6291377 (= e!3825506 e!3825510)))

(declare-fun res!2594563 () Bool)

(assert (=> b!6291377 (= res!2594563 (not (nullable!6206 (reg!16542 (Concat!25058 lt!2357063 lt!2357053)))))))

(assert (=> b!6291377 (=> (not res!2594563) (not e!3825510))))

(declare-fun b!6291378 () Bool)

(assert (=> b!6291378 (= e!3825507 e!3825506)))

(assert (=> b!6291378 (= c!1141750 ((_ is Star!16213) (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun b!6291379 () Bool)

(declare-fun res!2594561 () Bool)

(declare-fun e!3825505 () Bool)

(assert (=> b!6291379 (=> (not res!2594561) (not e!3825505))))

(declare-fun call!532744 () Bool)

(assert (=> b!6291379 (= res!2594561 call!532744)))

(assert (=> b!6291379 (= e!3825504 e!3825505)))

(declare-fun bm!532741 () Bool)

(assert (=> bm!532741 (= call!532744 (validRegex!7949 (ite c!1141749 (regOne!32939 (Concat!25058 lt!2357063 lt!2357053)) (regOne!32938 (Concat!25058 lt!2357063 lt!2357053)))))))

(declare-fun b!6291380 () Bool)

(assert (=> b!6291380 (= e!3825510 call!532746)))

(declare-fun b!6291381 () Bool)

(declare-fun e!3825509 () Bool)

(assert (=> b!6291381 (= e!3825508 e!3825509)))

(declare-fun res!2594559 () Bool)

(assert (=> b!6291381 (=> (not res!2594559) (not e!3825509))))

(assert (=> b!6291381 (= res!2594559 call!532744)))

(declare-fun b!6291382 () Bool)

(assert (=> b!6291382 (= e!3825509 call!532745)))

(declare-fun b!6291383 () Bool)

(assert (=> b!6291383 (= e!3825505 call!532745)))

(assert (= (and d!1974286 (not res!2594560)) b!6291378))

(assert (= (and b!6291378 c!1141750) b!6291377))

(assert (= (and b!6291378 (not c!1141750)) b!6291376))

(assert (= (and b!6291377 res!2594563) b!6291380))

(assert (= (and b!6291376 c!1141749) b!6291379))

(assert (= (and b!6291376 (not c!1141749)) b!6291375))

(assert (= (and b!6291379 res!2594561) b!6291383))

(assert (= (and b!6291375 (not res!2594562)) b!6291381))

(assert (= (and b!6291381 res!2594559) b!6291382))

(assert (= (or b!6291383 b!6291382) bm!532740))

(assert (= (or b!6291379 b!6291381) bm!532741))

(assert (= (or b!6291380 bm!532740) bm!532739))

(declare-fun m!7111964 () Bool)

(assert (=> bm!532739 m!7111964))

(declare-fun m!7111966 () Bool)

(assert (=> b!6291377 m!7111966))

(declare-fun m!7111968 () Bool)

(assert (=> bm!532741 m!7111968))

(assert (=> d!1973972 d!1974286))

(declare-fun bm!532742 () Bool)

(declare-fun call!532749 () (InoxSet Context!11194))

(declare-fun call!532747 () List!64939)

(declare-fun c!1141751 () Bool)

(assert (=> bm!532742 (= call!532749 (derivationStepZipperDown!1461 (ite c!1141751 (regOne!32939 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (regOne!32938 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))))) (ite c!1141751 (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646)) (Context!11195 call!532747)) (h!71262 s!2326)))))

(declare-fun b!6291384 () Bool)

(declare-fun e!3825514 () Bool)

(assert (=> b!6291384 (= e!3825514 (nullable!6206 (regOne!32938 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))))))))

(declare-fun bm!532743 () Bool)

(declare-fun call!532751 () (InoxSet Context!11194))

(declare-fun call!532748 () (InoxSet Context!11194))

(assert (=> bm!532743 (= call!532751 call!532748)))

(declare-fun c!1141755 () Bool)

(declare-fun d!1974288 () Bool)

(assert (=> d!1974288 (= c!1141755 (and ((_ is ElementMatch!16213) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (= (c!1141284 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (h!71262 s!2326))))))

(declare-fun e!3825511 () (InoxSet Context!11194))

(assert (=> d!1974288 (= (derivationStepZipperDown!1461 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))) (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646)) (h!71262 s!2326)) e!3825511)))

(declare-fun b!6291385 () Bool)

(assert (=> b!6291385 (= e!3825511 (store ((as const (Array Context!11194 Bool)) false) (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646)) true))))

(declare-fun c!1141753 () Bool)

(declare-fun bm!532744 () Bool)

(declare-fun c!1141754 () Bool)

(declare-fun call!532752 () List!64939)

(assert (=> bm!532744 (= call!532748 (derivationStepZipperDown!1461 (ite c!1141751 (regTwo!32939 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (ite c!1141753 (regTwo!32938 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (ite c!1141754 (regOne!32938 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (reg!16542 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))))))) (ite (or c!1141751 c!1141753) (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646)) (Context!11195 call!532752)) (h!71262 s!2326)))))

(declare-fun b!6291386 () Bool)

(declare-fun e!3825513 () (InoxSet Context!11194))

(declare-fun call!532750 () (InoxSet Context!11194))

(assert (=> b!6291386 (= e!3825513 call!532750)))

(declare-fun b!6291387 () Bool)

(declare-fun e!3825516 () (InoxSet Context!11194))

(declare-fun e!3825515 () (InoxSet Context!11194))

(assert (=> b!6291387 (= e!3825516 e!3825515)))

(assert (=> b!6291387 (= c!1141754 ((_ is Concat!25058) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))))))

(declare-fun b!6291388 () Bool)

(assert (=> b!6291388 (= e!3825513 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291389 () Bool)

(declare-fun e!3825512 () (InoxSet Context!11194))

(assert (=> b!6291389 (= e!3825512 ((_ map or) call!532749 call!532748))))

(declare-fun b!6291390 () Bool)

(assert (=> b!6291390 (= e!3825515 call!532750)))

(declare-fun b!6291391 () Bool)

(assert (=> b!6291391 (= c!1141753 e!3825514)))

(declare-fun res!2594564 () Bool)

(assert (=> b!6291391 (=> (not res!2594564) (not e!3825514))))

(assert (=> b!6291391 (= res!2594564 ((_ is Concat!25058) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))))))

(assert (=> b!6291391 (= e!3825512 e!3825516)))

(declare-fun bm!532745 () Bool)

(assert (=> bm!532745 (= call!532747 ($colon$colon!2078 (exprs!6097 (ite (or c!1141603 c!1141605) lt!2357094 (Context!11195 call!532646))) (ite (or c!1141753 c!1141754) (regTwo!32938 (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292)))))))))))

(declare-fun b!6291392 () Bool)

(assert (=> b!6291392 (= e!3825516 ((_ map or) call!532749 call!532751))))

(declare-fun b!6291393 () Bool)

(declare-fun c!1141752 () Bool)

(assert (=> b!6291393 (= c!1141752 ((_ is Star!16213) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))))))

(assert (=> b!6291393 (= e!3825515 e!3825513)))

(declare-fun bm!532746 () Bool)

(assert (=> bm!532746 (= call!532752 call!532747)))

(declare-fun bm!532747 () Bool)

(assert (=> bm!532747 (= call!532750 call!532751)))

(declare-fun b!6291394 () Bool)

(assert (=> b!6291394 (= e!3825511 e!3825512)))

(assert (=> b!6291394 (= c!1141751 ((_ is Union!16213) (ite c!1141603 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141605 (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))) (ite c!1141606 (regOne!32938 (regOne!32938 (regOne!32938 r!7292))) (reg!16542 (regOne!32938 (regOne!32938 r!7292))))))))))

(assert (= (and d!1974288 c!1141755) b!6291385))

(assert (= (and d!1974288 (not c!1141755)) b!6291394))

(assert (= (and b!6291394 c!1141751) b!6291389))

(assert (= (and b!6291394 (not c!1141751)) b!6291391))

(assert (= (and b!6291391 res!2594564) b!6291384))

(assert (= (and b!6291391 c!1141753) b!6291392))

(assert (= (and b!6291391 (not c!1141753)) b!6291387))

(assert (= (and b!6291387 c!1141754) b!6291390))

(assert (= (and b!6291387 (not c!1141754)) b!6291393))

(assert (= (and b!6291393 c!1141752) b!6291386))

(assert (= (and b!6291393 (not c!1141752)) b!6291388))

(assert (= (or b!6291390 b!6291386) bm!532746))

(assert (= (or b!6291390 b!6291386) bm!532747))

(assert (= (or b!6291392 bm!532746) bm!532745))

(assert (= (or b!6291392 bm!532747) bm!532743))

(assert (= (or b!6291389 bm!532743) bm!532744))

(assert (= (or b!6291389 b!6291392) bm!532742))

(declare-fun m!7111970 () Bool)

(assert (=> b!6291384 m!7111970))

(declare-fun m!7111972 () Bool)

(assert (=> b!6291385 m!7111972))

(declare-fun m!7111974 () Bool)

(assert (=> bm!532742 m!7111974))

(declare-fun m!7111976 () Bool)

(assert (=> bm!532745 m!7111976))

(declare-fun m!7111978 () Bool)

(assert (=> bm!532744 m!7111978))

(assert (=> bm!532638 d!1974288))

(declare-fun d!1974290 () Bool)

(assert (=> d!1974290 (= (Exists!3283 (ite c!1141531 lambda!345567 lambda!345568)) (choose!46739 (ite c!1141531 lambda!345567 lambda!345568)))))

(declare-fun bs!1572456 () Bool)

(assert (= bs!1572456 d!1974290))

(declare-fun m!7111980 () Bool)

(assert (=> bs!1572456 m!7111980))

(assert (=> bm!532610 d!1974290))

(declare-fun d!1974292 () Bool)

(assert (=> d!1974292 true))

(declare-fun setRes!42821 () Bool)

(assert (=> d!1974292 setRes!42821))

(declare-fun condSetEmpty!42821 () Bool)

(declare-fun res!2594567 () (InoxSet Context!11194))

(assert (=> d!1974292 (= condSetEmpty!42821 (= res!2594567 ((as const (Array Context!11194 Bool)) false)))))

(assert (=> d!1974292 (= (choose!46746 z!1189 lambda!345481) res!2594567)))

(declare-fun setIsEmpty!42821 () Bool)

(assert (=> setIsEmpty!42821 setRes!42821))

(declare-fun setElem!42821 () Context!11194)

(declare-fun tp!1751804 () Bool)

(declare-fun e!3825519 () Bool)

(declare-fun setNonEmpty!42821 () Bool)

(assert (=> setNonEmpty!42821 (= setRes!42821 (and tp!1751804 (inv!83779 setElem!42821) e!3825519))))

(declare-fun setRest!42821 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42821 (= res!2594567 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42821 true) setRest!42821))))

(declare-fun b!6291397 () Bool)

(declare-fun tp!1751803 () Bool)

(assert (=> b!6291397 (= e!3825519 tp!1751803)))

(assert (= (and d!1974292 condSetEmpty!42821) setIsEmpty!42821))

(assert (= (and d!1974292 (not condSetEmpty!42821)) setNonEmpty!42821))

(assert (= setNonEmpty!42821 b!6291397))

(declare-fun m!7111982 () Bool)

(assert (=> setNonEmpty!42821 m!7111982))

(assert (=> d!1974084 d!1974292))

(declare-fun d!1974294 () Bool)

(assert (=> d!1974294 (= (isEmpty!36870 lt!2357082) ((_ is Nil!64815) lt!2357082))))

(assert (=> b!6290765 d!1974294))

(declare-fun call!532755 () (InoxSet Context!11194))

(declare-fun call!532753 () List!64939)

(declare-fun bm!532748 () Bool)

(declare-fun c!1141756 () Bool)

(assert (=> bm!532748 (= call!532755 (derivationStepZipperDown!1461 (ite c!1141756 (regOne!32939 (h!71263 (exprs!6097 lt!2357077))) (regOne!32938 (h!71263 (exprs!6097 lt!2357077)))) (ite c!1141756 (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (Context!11195 call!532753)) (h!71262 s!2326)))))

(declare-fun b!6291398 () Bool)

(declare-fun e!3825523 () Bool)

(assert (=> b!6291398 (= e!3825523 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 lt!2357077)))))))

(declare-fun bm!532749 () Bool)

(declare-fun call!532757 () (InoxSet Context!11194))

(declare-fun call!532754 () (InoxSet Context!11194))

(assert (=> bm!532749 (= call!532757 call!532754)))

(declare-fun d!1974296 () Bool)

(declare-fun c!1141760 () Bool)

(assert (=> d!1974296 (= c!1141760 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 lt!2357077))) (= (c!1141284 (h!71263 (exprs!6097 lt!2357077))) (h!71262 s!2326))))))

(declare-fun e!3825520 () (InoxSet Context!11194))

(assert (=> d!1974296 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357077)) (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (h!71262 s!2326)) e!3825520)))

(declare-fun b!6291399 () Bool)

(assert (=> b!6291399 (= e!3825520 (store ((as const (Array Context!11194 Bool)) false) (Context!11195 (t!378501 (exprs!6097 lt!2357077))) true))))

(declare-fun bm!532750 () Bool)

(declare-fun call!532758 () List!64939)

(declare-fun c!1141759 () Bool)

(declare-fun c!1141758 () Bool)

(assert (=> bm!532750 (= call!532754 (derivationStepZipperDown!1461 (ite c!1141756 (regTwo!32939 (h!71263 (exprs!6097 lt!2357077))) (ite c!1141758 (regTwo!32938 (h!71263 (exprs!6097 lt!2357077))) (ite c!1141759 (regOne!32938 (h!71263 (exprs!6097 lt!2357077))) (reg!16542 (h!71263 (exprs!6097 lt!2357077)))))) (ite (or c!1141756 c!1141758) (Context!11195 (t!378501 (exprs!6097 lt!2357077))) (Context!11195 call!532758)) (h!71262 s!2326)))))

(declare-fun b!6291400 () Bool)

(declare-fun e!3825522 () (InoxSet Context!11194))

(declare-fun call!532756 () (InoxSet Context!11194))

(assert (=> b!6291400 (= e!3825522 call!532756)))

(declare-fun b!6291401 () Bool)

(declare-fun e!3825525 () (InoxSet Context!11194))

(declare-fun e!3825524 () (InoxSet Context!11194))

(assert (=> b!6291401 (= e!3825525 e!3825524)))

(assert (=> b!6291401 (= c!1141759 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357077))))))

(declare-fun b!6291402 () Bool)

(assert (=> b!6291402 (= e!3825522 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291403 () Bool)

(declare-fun e!3825521 () (InoxSet Context!11194))

(assert (=> b!6291403 (= e!3825521 ((_ map or) call!532755 call!532754))))

(declare-fun b!6291404 () Bool)

(assert (=> b!6291404 (= e!3825524 call!532756)))

(declare-fun b!6291405 () Bool)

(assert (=> b!6291405 (= c!1141758 e!3825523)))

(declare-fun res!2594568 () Bool)

(assert (=> b!6291405 (=> (not res!2594568) (not e!3825523))))

(assert (=> b!6291405 (= res!2594568 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357077))))))

(assert (=> b!6291405 (= e!3825521 e!3825525)))

(declare-fun bm!532751 () Bool)

(assert (=> bm!532751 (= call!532753 ($colon$colon!2078 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357077)))) (ite (or c!1141758 c!1141759) (regTwo!32938 (h!71263 (exprs!6097 lt!2357077))) (h!71263 (exprs!6097 lt!2357077)))))))

(declare-fun b!6291406 () Bool)

(assert (=> b!6291406 (= e!3825525 ((_ map or) call!532755 call!532757))))

(declare-fun b!6291407 () Bool)

(declare-fun c!1141757 () Bool)

(assert (=> b!6291407 (= c!1141757 ((_ is Star!16213) (h!71263 (exprs!6097 lt!2357077))))))

(assert (=> b!6291407 (= e!3825524 e!3825522)))

(declare-fun bm!532752 () Bool)

(assert (=> bm!532752 (= call!532758 call!532753)))

(declare-fun bm!532753 () Bool)

(assert (=> bm!532753 (= call!532756 call!532757)))

(declare-fun b!6291408 () Bool)

(assert (=> b!6291408 (= e!3825520 e!3825521)))

(assert (=> b!6291408 (= c!1141756 ((_ is Union!16213) (h!71263 (exprs!6097 lt!2357077))))))

(assert (= (and d!1974296 c!1141760) b!6291399))

(assert (= (and d!1974296 (not c!1141760)) b!6291408))

(assert (= (and b!6291408 c!1141756) b!6291403))

(assert (= (and b!6291408 (not c!1141756)) b!6291405))

(assert (= (and b!6291405 res!2594568) b!6291398))

(assert (= (and b!6291405 c!1141758) b!6291406))

(assert (= (and b!6291405 (not c!1141758)) b!6291401))

(assert (= (and b!6291401 c!1141759) b!6291404))

(assert (= (and b!6291401 (not c!1141759)) b!6291407))

(assert (= (and b!6291407 c!1141757) b!6291400))

(assert (= (and b!6291407 (not c!1141757)) b!6291402))

(assert (= (or b!6291404 b!6291400) bm!532752))

(assert (= (or b!6291404 b!6291400) bm!532753))

(assert (= (or b!6291406 bm!532752) bm!532751))

(assert (= (or b!6291406 bm!532753) bm!532749))

(assert (= (or b!6291403 bm!532749) bm!532750))

(assert (= (or b!6291403 b!6291406) bm!532748))

(declare-fun m!7111984 () Bool)

(assert (=> b!6291398 m!7111984))

(declare-fun m!7111986 () Bool)

(assert (=> b!6291399 m!7111986))

(declare-fun m!7111988 () Bool)

(assert (=> bm!532748 m!7111988))

(declare-fun m!7111990 () Bool)

(assert (=> bm!532751 m!7111990))

(declare-fun m!7111992 () Bool)

(assert (=> bm!532750 m!7111992))

(assert (=> bm!532650 d!1974296))

(declare-fun d!1974298 () Bool)

(assert (=> d!1974298 (= (isConcat!1142 lt!2357287) ((_ is Concat!25058) lt!2357287))))

(assert (=> b!6290895 d!1974298))

(declare-fun d!1974300 () Bool)

(assert (=> d!1974300 (= (nullable!6206 (h!71263 (exprs!6097 lt!2357083))) (nullableFct!2157 (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun bs!1572457 () Bool)

(assert (= bs!1572457 d!1974300))

(declare-fun m!7111994 () Bool)

(assert (=> bs!1572457 m!7111994))

(assert (=> b!6290801 d!1974300))

(assert (=> d!1974024 d!1974028))

(assert (=> d!1974024 d!1973996))

(declare-fun d!1974302 () Bool)

(assert (=> d!1974302 (= (matchR!8396 lt!2357061 s!2326) (matchRSpec!3314 lt!2357061 s!2326))))

(assert (=> d!1974302 true))

(declare-fun _$88!4935 () Unit!158183)

(assert (=> d!1974302 (= (choose!46733 lt!2357061 s!2326) _$88!4935)))

(declare-fun bs!1572458 () Bool)

(assert (= bs!1572458 d!1974302))

(assert (=> bs!1572458 m!7110416))

(assert (=> bs!1572458 m!7110384))

(assert (=> d!1974024 d!1974302))

(assert (=> d!1974024 d!1974222))

(declare-fun d!1974304 () Bool)

(assert (=> d!1974304 true))

(assert (=> d!1974304 true))

(declare-fun res!2594569 () Bool)

(assert (=> d!1974304 (= (choose!46739 lambda!345485) res!2594569)))

(assert (=> d!1974000 d!1974304))

(assert (=> b!6290570 d!1974146))

(assert (=> b!6290542 d!1974146))

(declare-fun d!1974306 () Bool)

(assert (=> d!1974306 true))

(assert (=> d!1974306 true))

(declare-fun res!2594570 () Bool)

(assert (=> d!1974306 (= (choose!46739 lambda!345483) res!2594570)))

(assert (=> d!1974044 d!1974306))

(declare-fun b!6291409 () Bool)

(declare-fun e!3825532 () Bool)

(assert (=> b!6291409 (= e!3825532 (nullable!6206 (regOne!32938 r!7292)))))

(declare-fun b!6291410 () Bool)

(declare-fun res!2594575 () Bool)

(declare-fun e!3825529 () Bool)

(assert (=> b!6291410 (=> res!2594575 e!3825529)))

(declare-fun e!3825528 () Bool)

(assert (=> b!6291410 (= res!2594575 e!3825528)))

(declare-fun res!2594578 () Bool)

(assert (=> b!6291410 (=> (not res!2594578) (not e!3825528))))

(declare-fun lt!2357340 () Bool)

(assert (=> b!6291410 (= res!2594578 lt!2357340)))

(declare-fun b!6291411 () Bool)

(assert (=> b!6291411 (= e!3825528 (= (head!12927 (_1!36495 (get!22408 lt!2357231))) (c!1141284 (regOne!32938 r!7292))))))

(declare-fun b!6291412 () Bool)

(declare-fun e!3825530 () Bool)

(assert (=> b!6291412 (= e!3825530 (not (= (head!12927 (_1!36495 (get!22408 lt!2357231))) (c!1141284 (regOne!32938 r!7292)))))))

(declare-fun d!1974308 () Bool)

(declare-fun e!3825531 () Bool)

(assert (=> d!1974308 e!3825531))

(declare-fun c!1141761 () Bool)

(assert (=> d!1974308 (= c!1141761 ((_ is EmptyExpr!16213) (regOne!32938 r!7292)))))

(assert (=> d!1974308 (= lt!2357340 e!3825532)))

(declare-fun c!1141762 () Bool)

(assert (=> d!1974308 (= c!1141762 (isEmpty!36872 (_1!36495 (get!22408 lt!2357231))))))

(assert (=> d!1974308 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1974308 (= (matchR!8396 (regOne!32938 r!7292) (_1!36495 (get!22408 lt!2357231))) lt!2357340)))

(declare-fun b!6291413 () Bool)

(declare-fun e!3825527 () Bool)

(assert (=> b!6291413 (= e!3825527 (not lt!2357340))))

(declare-fun b!6291414 () Bool)

(declare-fun e!3825526 () Bool)

(assert (=> b!6291414 (= e!3825529 e!3825526)))

(declare-fun res!2594577 () Bool)

(assert (=> b!6291414 (=> (not res!2594577) (not e!3825526))))

(assert (=> b!6291414 (= res!2594577 (not lt!2357340))))

(declare-fun bm!532754 () Bool)

(declare-fun call!532759 () Bool)

(assert (=> bm!532754 (= call!532759 (isEmpty!36872 (_1!36495 (get!22408 lt!2357231))))))

(declare-fun b!6291415 () Bool)

(assert (=> b!6291415 (= e!3825531 (= lt!2357340 call!532759))))

(declare-fun b!6291416 () Bool)

(assert (=> b!6291416 (= e!3825531 e!3825527)))

(declare-fun c!1141763 () Bool)

(assert (=> b!6291416 (= c!1141763 ((_ is EmptyLang!16213) (regOne!32938 r!7292)))))

(declare-fun b!6291417 () Bool)

(assert (=> b!6291417 (= e!3825526 e!3825530)))

(declare-fun res!2594576 () Bool)

(assert (=> b!6291417 (=> res!2594576 e!3825530)))

(assert (=> b!6291417 (= res!2594576 call!532759)))

(declare-fun b!6291418 () Bool)

(declare-fun res!2594572 () Bool)

(assert (=> b!6291418 (=> (not res!2594572) (not e!3825528))))

(assert (=> b!6291418 (= res!2594572 (not call!532759))))

(declare-fun b!6291419 () Bool)

(declare-fun res!2594571 () Bool)

(assert (=> b!6291419 (=> res!2594571 e!3825529)))

(assert (=> b!6291419 (= res!2594571 (not ((_ is ElementMatch!16213) (regOne!32938 r!7292))))))

(assert (=> b!6291419 (= e!3825527 e!3825529)))

(declare-fun b!6291420 () Bool)

(assert (=> b!6291420 (= e!3825532 (matchR!8396 (derivativeStep!4922 (regOne!32938 r!7292) (head!12927 (_1!36495 (get!22408 lt!2357231)))) (tail!12012 (_1!36495 (get!22408 lt!2357231)))))))

(declare-fun b!6291421 () Bool)

(declare-fun res!2594573 () Bool)

(assert (=> b!6291421 (=> (not res!2594573) (not e!3825528))))

(assert (=> b!6291421 (= res!2594573 (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357231)))))))

(declare-fun b!6291422 () Bool)

(declare-fun res!2594574 () Bool)

(assert (=> b!6291422 (=> res!2594574 e!3825530)))

(assert (=> b!6291422 (= res!2594574 (not (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357231))))))))

(assert (= (and d!1974308 c!1141762) b!6291409))

(assert (= (and d!1974308 (not c!1141762)) b!6291420))

(assert (= (and d!1974308 c!1141761) b!6291415))

(assert (= (and d!1974308 (not c!1141761)) b!6291416))

(assert (= (and b!6291416 c!1141763) b!6291413))

(assert (= (and b!6291416 (not c!1141763)) b!6291419))

(assert (= (and b!6291419 (not res!2594571)) b!6291410))

(assert (= (and b!6291410 res!2594578) b!6291418))

(assert (= (and b!6291418 res!2594572) b!6291421))

(assert (= (and b!6291421 res!2594573) b!6291411))

(assert (= (and b!6291410 (not res!2594575)) b!6291414))

(assert (= (and b!6291414 res!2594577) b!6291417))

(assert (= (and b!6291417 (not res!2594576)) b!6291422))

(assert (= (and b!6291422 (not res!2594574)) b!6291412))

(assert (= (or b!6291415 b!6291417 b!6291418) bm!532754))

(declare-fun m!7111996 () Bool)

(assert (=> bm!532754 m!7111996))

(declare-fun m!7111998 () Bool)

(assert (=> b!6291420 m!7111998))

(assert (=> b!6291420 m!7111998))

(declare-fun m!7112000 () Bool)

(assert (=> b!6291420 m!7112000))

(declare-fun m!7112002 () Bool)

(assert (=> b!6291420 m!7112002))

(assert (=> b!6291420 m!7112000))

(assert (=> b!6291420 m!7112002))

(declare-fun m!7112004 () Bool)

(assert (=> b!6291420 m!7112004))

(assert (=> b!6291412 m!7111998))

(assert (=> b!6291422 m!7112002))

(assert (=> b!6291422 m!7112002))

(declare-fun m!7112006 () Bool)

(assert (=> b!6291422 m!7112006))

(assert (=> b!6291409 m!7111802))

(assert (=> b!6291411 m!7111998))

(assert (=> b!6291421 m!7112002))

(assert (=> b!6291421 m!7112002))

(assert (=> b!6291421 m!7112006))

(assert (=> d!1974308 m!7111996))

(assert (=> d!1974308 m!7111172))

(assert (=> b!6290635 d!1974308))

(assert (=> b!6290635 d!1974238))

(declare-fun b!6291423 () Bool)

(declare-fun e!3825539 () Bool)

(assert (=> b!6291423 (= e!3825539 (nullable!6206 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(declare-fun b!6291424 () Bool)

(declare-fun res!2594583 () Bool)

(declare-fun e!3825536 () Bool)

(assert (=> b!6291424 (=> res!2594583 e!3825536)))

(declare-fun e!3825535 () Bool)

(assert (=> b!6291424 (= res!2594583 e!3825535)))

(declare-fun res!2594586 () Bool)

(assert (=> b!6291424 (=> (not res!2594586) (not e!3825535))))

(declare-fun lt!2357341 () Bool)

(assert (=> b!6291424 (= res!2594586 lt!2357341)))

(declare-fun b!6291425 () Bool)

(assert (=> b!6291425 (= e!3825535 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)))))))

(declare-fun b!6291426 () Bool)

(declare-fun e!3825537 () Bool)

(assert (=> b!6291426 (= e!3825537 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326))))))))

(declare-fun d!1974310 () Bool)

(declare-fun e!3825538 () Bool)

(assert (=> d!1974310 e!3825538))

(declare-fun c!1141764 () Bool)

(assert (=> d!1974310 (= c!1141764 ((_ is EmptyExpr!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(assert (=> d!1974310 (= lt!2357341 e!3825539)))

(declare-fun c!1141765 () Bool)

(assert (=> d!1974310 (= c!1141765 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974310 (validRegex!7949 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)))))

(assert (=> d!1974310 (= (matchR!8396 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357341)))

(declare-fun b!6291427 () Bool)

(declare-fun e!3825534 () Bool)

(assert (=> b!6291427 (= e!3825534 (not lt!2357341))))

(declare-fun b!6291428 () Bool)

(declare-fun e!3825533 () Bool)

(assert (=> b!6291428 (= e!3825536 e!3825533)))

(declare-fun res!2594585 () Bool)

(assert (=> b!6291428 (=> (not res!2594585) (not e!3825533))))

(assert (=> b!6291428 (= res!2594585 (not lt!2357341))))

(declare-fun bm!532755 () Bool)

(declare-fun call!532760 () Bool)

(assert (=> bm!532755 (= call!532760 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291429 () Bool)

(assert (=> b!6291429 (= e!3825538 (= lt!2357341 call!532760))))

(declare-fun b!6291430 () Bool)

(assert (=> b!6291430 (= e!3825538 e!3825534)))

(declare-fun c!1141766 () Bool)

(assert (=> b!6291430 (= c!1141766 ((_ is EmptyLang!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326))))))

(declare-fun b!6291431 () Bool)

(assert (=> b!6291431 (= e!3825533 e!3825537)))

(declare-fun res!2594584 () Bool)

(assert (=> b!6291431 (=> res!2594584 e!3825537)))

(assert (=> b!6291431 (= res!2594584 call!532760)))

(declare-fun b!6291432 () Bool)

(declare-fun res!2594580 () Bool)

(assert (=> b!6291432 (=> (not res!2594580) (not e!3825535))))

(assert (=> b!6291432 (= res!2594580 (not call!532760))))

(declare-fun b!6291433 () Bool)

(declare-fun res!2594579 () Bool)

(assert (=> b!6291433 (=> res!2594579 e!3825536)))

(assert (=> b!6291433 (= res!2594579 (not ((_ is ElementMatch!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)))))))

(assert (=> b!6291433 (= e!3825534 e!3825536)))

(declare-fun b!6291434 () Bool)

(assert (=> b!6291434 (= e!3825539 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291435 () Bool)

(declare-fun res!2594581 () Bool)

(assert (=> b!6291435 (=> (not res!2594581) (not e!3825535))))

(assert (=> b!6291435 (= res!2594581 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291436 () Bool)

(declare-fun res!2594582 () Bool)

(assert (=> b!6291436 (=> res!2594582 e!3825537)))

(assert (=> b!6291436 (= res!2594582 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974310 c!1141765) b!6291423))

(assert (= (and d!1974310 (not c!1141765)) b!6291434))

(assert (= (and d!1974310 c!1141764) b!6291429))

(assert (= (and d!1974310 (not c!1141764)) b!6291430))

(assert (= (and b!6291430 c!1141766) b!6291427))

(assert (= (and b!6291430 (not c!1141766)) b!6291433))

(assert (= (and b!6291433 (not res!2594579)) b!6291424))

(assert (= (and b!6291424 res!2594586) b!6291432))

(assert (= (and b!6291432 res!2594580) b!6291435))

(assert (= (and b!6291435 res!2594581) b!6291425))

(assert (= (and b!6291424 (not res!2594583)) b!6291428))

(assert (= (and b!6291428 res!2594585) b!6291431))

(assert (= (and b!6291431 (not res!2594584)) b!6291436))

(assert (= (and b!6291436 (not res!2594582)) b!6291426))

(assert (= (or b!6291429 b!6291431 b!6291432) bm!532755))

(assert (=> bm!532755 m!7111086))

(assert (=> bm!532755 m!7111090))

(assert (=> b!6291434 m!7111086))

(assert (=> b!6291434 m!7111620))

(assert (=> b!6291434 m!7111460))

(assert (=> b!6291434 m!7111620))

(declare-fun m!7112008 () Bool)

(assert (=> b!6291434 m!7112008))

(assert (=> b!6291434 m!7111086))

(assert (=> b!6291434 m!7111624))

(assert (=> b!6291434 m!7112008))

(assert (=> b!6291434 m!7111624))

(declare-fun m!7112010 () Bool)

(assert (=> b!6291434 m!7112010))

(assert (=> b!6291426 m!7111086))

(assert (=> b!6291426 m!7111620))

(assert (=> b!6291436 m!7111086))

(assert (=> b!6291436 m!7111624))

(assert (=> b!6291436 m!7111624))

(assert (=> b!6291436 m!7111628))

(assert (=> b!6291423 m!7111460))

(declare-fun m!7112012 () Bool)

(assert (=> b!6291423 m!7112012))

(assert (=> b!6291425 m!7111086))

(assert (=> b!6291425 m!7111620))

(assert (=> b!6291435 m!7111086))

(assert (=> b!6291435 m!7111624))

(assert (=> b!6291435 m!7111624))

(assert (=> b!6291435 m!7111628))

(assert (=> d!1974310 m!7111086))

(assert (=> d!1974310 m!7111090))

(assert (=> d!1974310 m!7111460))

(declare-fun m!7112014 () Bool)

(assert (=> d!1974310 m!7112014))

(assert (=> b!6290866 d!1974310))

(declare-fun b!6291437 () Bool)

(declare-fun e!3825541 () Regex!16213)

(declare-fun e!3825544 () Regex!16213)

(assert (=> b!6291437 (= e!3825541 e!3825544)))

(declare-fun c!1141771 () Bool)

(assert (=> b!6291437 (= c!1141771 ((_ is Star!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun b!6291438 () Bool)

(declare-fun e!3825542 () Regex!16213)

(declare-fun call!532764 () Regex!16213)

(assert (=> b!6291438 (= e!3825542 (Union!16213 (Concat!25058 call!532764 (regTwo!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))) EmptyLang!16213))))

(declare-fun b!6291439 () Bool)

(declare-fun call!532762 () Regex!16213)

(assert (=> b!6291439 (= e!3825544 (Concat!25058 call!532762 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun b!6291440 () Bool)

(declare-fun e!3825540 () Regex!16213)

(assert (=> b!6291440 (= e!3825540 EmptyLang!16213)))

(declare-fun bm!532756 () Bool)

(declare-fun c!1141768 () Bool)

(declare-fun call!532763 () Regex!16213)

(assert (=> bm!532756 (= call!532763 (derivativeStep!4922 (ite c!1141768 (regTwo!32939 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))) (head!12927 s!2326)))))

(declare-fun b!6291441 () Bool)

(declare-fun call!532761 () Regex!16213)

(assert (=> b!6291441 (= e!3825541 (Union!16213 call!532761 call!532763))))

(declare-fun bm!532757 () Bool)

(assert (=> bm!532757 (= call!532762 call!532761)))

(declare-fun b!6291442 () Bool)

(declare-fun e!3825543 () Regex!16213)

(assert (=> b!6291442 (= e!3825543 (ite (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6291443 () Bool)

(assert (=> b!6291443 (= e!3825540 e!3825543)))

(declare-fun c!1141767 () Bool)

(assert (=> b!6291443 (= c!1141767 ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun c!1141769 () Bool)

(declare-fun bm!532758 () Bool)

(assert (=> bm!532758 (= call!532761 (derivativeStep!4922 (ite c!1141768 (regOne!32939 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (ite c!1141771 (reg!16542 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (ite c!1141769 (regTwo!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))) (head!12927 s!2326)))))

(declare-fun b!6291444 () Bool)

(assert (=> b!6291444 (= c!1141768 ((_ is Union!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(assert (=> b!6291444 (= e!3825543 e!3825541)))

(declare-fun bm!532759 () Bool)

(assert (=> bm!532759 (= call!532764 call!532762)))

(declare-fun b!6291445 () Bool)

(assert (=> b!6291445 (= c!1141769 (nullable!6206 (regOne!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))

(assert (=> b!6291445 (= e!3825544 e!3825542)))

(declare-fun d!1974312 () Bool)

(declare-fun lt!2357342 () Regex!16213)

(assert (=> d!1974312 (validRegex!7949 lt!2357342)))

(assert (=> d!1974312 (= lt!2357342 e!3825540)))

(declare-fun c!1141770 () Bool)

(assert (=> d!1974312 (= c!1141770 (or ((_ is EmptyExpr!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) ((_ is EmptyLang!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))

(assert (=> d!1974312 (validRegex!7949 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))

(assert (=> d!1974312 (= (derivativeStep!4922 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)) (head!12927 s!2326)) lt!2357342)))

(declare-fun b!6291446 () Bool)

(assert (=> b!6291446 (= e!3825542 (Union!16213 (Concat!25058 call!532763 (regTwo!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))) call!532764))))

(assert (= (and d!1974312 c!1141770) b!6291440))

(assert (= (and d!1974312 (not c!1141770)) b!6291443))

(assert (= (and b!6291443 c!1141767) b!6291442))

(assert (= (and b!6291443 (not c!1141767)) b!6291444))

(assert (= (and b!6291444 c!1141768) b!6291441))

(assert (= (and b!6291444 (not c!1141768)) b!6291437))

(assert (= (and b!6291437 c!1141771) b!6291439))

(assert (= (and b!6291437 (not c!1141771)) b!6291445))

(assert (= (and b!6291445 c!1141769) b!6291446))

(assert (= (and b!6291445 (not c!1141769)) b!6291438))

(assert (= (or b!6291446 b!6291438) bm!532759))

(assert (= (or b!6291439 bm!532759) bm!532757))

(assert (= (or b!6291441 b!6291446) bm!532756))

(assert (= (or b!6291441 bm!532757) bm!532758))

(assert (=> bm!532756 m!7111082))

(declare-fun m!7112016 () Bool)

(assert (=> bm!532756 m!7112016))

(assert (=> bm!532758 m!7111082))

(declare-fun m!7112018 () Bool)

(assert (=> bm!532758 m!7112018))

(declare-fun m!7112020 () Bool)

(assert (=> b!6291445 m!7112020))

(declare-fun m!7112022 () Bool)

(assert (=> d!1974312 m!7112022))

(assert (=> d!1974312 m!7111466))

(assert (=> b!6290866 d!1974312))

(assert (=> b!6290866 d!1974146))

(assert (=> b!6290866 d!1974130))

(declare-fun bs!1572459 () Bool)

(declare-fun d!1974314 () Bool)

(assert (= bs!1572459 (and d!1974314 b!6291134)))

(declare-fun lambda!345623 () Int)

(assert (=> bs!1572459 (not (= lambda!345623 lambda!345604))))

(declare-fun bs!1572460 () Bool)

(assert (= bs!1572460 (and d!1974314 d!1973998)))

(assert (=> bs!1572460 (= lambda!345623 lambda!345571)))

(declare-fun bs!1572461 () Bool)

(assert (= bs!1572461 (and d!1974314 d!1974034)))

(assert (=> bs!1572461 (= lambda!345623 lambda!345577)))

(declare-fun bs!1572462 () Bool)

(assert (= bs!1572462 (and d!1974314 d!1973900)))

(assert (=> bs!1572462 (= lambda!345623 lambda!345542)))

(declare-fun bs!1572463 () Bool)

(assert (= bs!1572463 (and d!1974314 d!1974050)))

(assert (=> bs!1572463 (= lambda!345623 lambda!345596)))

(declare-fun bs!1572464 () Bool)

(assert (= bs!1572464 (and d!1974314 d!1974004)))

(assert (=> bs!1572464 (= lambda!345623 lambda!345572)))

(declare-fun bs!1572465 () Bool)

(assert (= bs!1572465 (and d!1974314 b!6291136)))

(assert (=> bs!1572465 (not (= lambda!345623 lambda!345605))))

(declare-fun bs!1572466 () Bool)

(assert (= bs!1572466 (and d!1974314 d!1973910)))

(assert (=> bs!1572466 (= lambda!345623 lambda!345546)))

(declare-fun bs!1572467 () Bool)

(assert (= bs!1572467 (and d!1974314 d!1974090)))

(assert (=> bs!1572467 (= lambda!345623 lambda!345599)))

(declare-fun bs!1572468 () Bool)

(assert (= bs!1572468 (and d!1974314 d!1974056)))

(assert (=> bs!1572468 (= lambda!345623 lambda!345597)))

(declare-fun e!3825545 () Bool)

(assert (=> d!1974314 e!3825545))

(declare-fun res!2594587 () Bool)

(assert (=> d!1974314 (=> (not res!2594587) (not e!3825545))))

(declare-fun lt!2357343 () Regex!16213)

(assert (=> d!1974314 (= res!2594587 (validRegex!7949 lt!2357343))))

(declare-fun e!3825549 () Regex!16213)

(assert (=> d!1974314 (= lt!2357343 e!3825549)))

(declare-fun c!1141774 () Bool)

(declare-fun e!3825547 () Bool)

(assert (=> d!1974314 (= c!1141774 e!3825547)))

(declare-fun res!2594588 () Bool)

(assert (=> d!1974314 (=> (not res!2594588) (not e!3825547))))

(assert (=> d!1974314 (= res!2594588 ((_ is Cons!64815) (t!378501 (unfocusZipperList!1634 zl!343))))))

(assert (=> d!1974314 (forall!15362 (t!378501 (unfocusZipperList!1634 zl!343)) lambda!345623)))

(assert (=> d!1974314 (= (generalisedUnion!2057 (t!378501 (unfocusZipperList!1634 zl!343))) lt!2357343)))

(declare-fun b!6291447 () Bool)

(declare-fun e!3825546 () Regex!16213)

(assert (=> b!6291447 (= e!3825546 EmptyLang!16213)))

(declare-fun b!6291448 () Bool)

(declare-fun e!3825548 () Bool)

(assert (=> b!6291448 (= e!3825548 (= lt!2357343 (head!12926 (t!378501 (unfocusZipperList!1634 zl!343)))))))

(declare-fun b!6291449 () Bool)

(declare-fun e!3825550 () Bool)

(assert (=> b!6291449 (= e!3825550 (isEmptyLang!1626 lt!2357343))))

(declare-fun b!6291450 () Bool)

(assert (=> b!6291450 (= e!3825550 e!3825548)))

(declare-fun c!1141773 () Bool)

(assert (=> b!6291450 (= c!1141773 (isEmpty!36870 (tail!12011 (t!378501 (unfocusZipperList!1634 zl!343)))))))

(declare-fun b!6291451 () Bool)

(assert (=> b!6291451 (= e!3825549 (h!71263 (t!378501 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6291452 () Bool)

(assert (=> b!6291452 (= e!3825549 e!3825546)))

(declare-fun c!1141775 () Bool)

(assert (=> b!6291452 (= c!1141775 ((_ is Cons!64815) (t!378501 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6291453 () Bool)

(assert (=> b!6291453 (= e!3825547 (isEmpty!36870 (t!378501 (t!378501 (unfocusZipperList!1634 zl!343)))))))

(declare-fun b!6291454 () Bool)

(assert (=> b!6291454 (= e!3825548 (isUnion!1056 lt!2357343))))

(declare-fun b!6291455 () Bool)

(assert (=> b!6291455 (= e!3825546 (Union!16213 (h!71263 (t!378501 (unfocusZipperList!1634 zl!343))) (generalisedUnion!2057 (t!378501 (t!378501 (unfocusZipperList!1634 zl!343))))))))

(declare-fun b!6291456 () Bool)

(assert (=> b!6291456 (= e!3825545 e!3825550)))

(declare-fun c!1141772 () Bool)

(assert (=> b!6291456 (= c!1141772 (isEmpty!36870 (t!378501 (unfocusZipperList!1634 zl!343))))))

(assert (= (and d!1974314 res!2594588) b!6291453))

(assert (= (and d!1974314 c!1141774) b!6291451))

(assert (= (and d!1974314 (not c!1141774)) b!6291452))

(assert (= (and b!6291452 c!1141775) b!6291455))

(assert (= (and b!6291452 (not c!1141775)) b!6291447))

(assert (= (and d!1974314 res!2594587) b!6291456))

(assert (= (and b!6291456 c!1141772) b!6291449))

(assert (= (and b!6291456 (not c!1141772)) b!6291450))

(assert (= (and b!6291450 c!1141773) b!6291448))

(assert (= (and b!6291450 (not c!1141773)) b!6291454))

(declare-fun m!7112024 () Bool)

(assert (=> b!6291449 m!7112024))

(declare-fun m!7112026 () Bool)

(assert (=> b!6291450 m!7112026))

(assert (=> b!6291450 m!7112026))

(declare-fun m!7112028 () Bool)

(assert (=> b!6291450 m!7112028))

(declare-fun m!7112030 () Bool)

(assert (=> b!6291448 m!7112030))

(declare-fun m!7112032 () Bool)

(assert (=> b!6291455 m!7112032))

(declare-fun m!7112034 () Bool)

(assert (=> b!6291453 m!7112034))

(assert (=> b!6291456 m!7110958))

(declare-fun m!7112036 () Bool)

(assert (=> d!1974314 m!7112036))

(declare-fun m!7112038 () Bool)

(assert (=> d!1974314 m!7112038))

(declare-fun m!7112040 () Bool)

(assert (=> b!6291454 m!7112040))

(assert (=> b!6290319 d!1974314))

(declare-fun d!1974316 () Bool)

(assert (=> d!1974316 (= (Exists!3283 lambda!345580) (choose!46739 lambda!345580))))

(declare-fun bs!1572469 () Bool)

(assert (= bs!1572469 d!1974316))

(declare-fun m!7112042 () Bool)

(assert (=> bs!1572469 m!7112042))

(assert (=> d!1974042 d!1974316))

(declare-fun d!1974318 () Bool)

(assert (=> d!1974318 (= (Exists!3283 lambda!345581) (choose!46739 lambda!345581))))

(declare-fun bs!1572470 () Bool)

(assert (= bs!1572470 d!1974318))

(declare-fun m!7112044 () Bool)

(assert (=> bs!1572470 m!7112044))

(assert (=> d!1974042 d!1974318))

(declare-fun bs!1572471 () Bool)

(declare-fun d!1974320 () Bool)

(assert (= bs!1572471 (and d!1974320 b!6289815)))

(declare-fun lambda!345628 () Int)

(assert (=> bs!1572471 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345628 lambda!345482))))

(declare-fun bs!1572472 () Bool)

(assert (= bs!1572472 (and d!1974320 d!1974040)))

(assert (=> bs!1572472 (not (= lambda!345628 lambda!345579))))

(declare-fun bs!1572473 () Bool)

(assert (= bs!1572473 (and d!1974320 d!1974006)))

(assert (=> bs!1572473 (= lambda!345628 lambda!345573)))

(declare-fun bs!1572474 () Bool)

(assert (= bs!1572474 (and d!1974320 d!1974042)))

(assert (=> bs!1572474 (not (= lambda!345628 lambda!345581))))

(assert (=> bs!1572472 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345628 lambda!345578))))

(declare-fun bs!1572475 () Bool)

(assert (= bs!1572475 (and d!1974320 b!6290728)))

(assert (=> bs!1572475 (not (= lambda!345628 lambda!345576))))

(declare-fun bs!1572476 () Bool)

(assert (= bs!1572476 (and d!1974320 b!6291172)))

(assert (=> bs!1572476 (not (= lambda!345628 lambda!345615))))

(declare-fun bs!1572477 () Bool)

(assert (= bs!1572477 (and d!1974320 b!6291163)))

(assert (=> bs!1572477 (not (= lambda!345628 lambda!345616))))

(declare-fun bs!1572478 () Bool)

(assert (= bs!1572478 (and d!1974320 d!1973990)))

(assert (=> bs!1572478 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345628 lambda!345565))))

(assert (=> bs!1572471 (= lambda!345628 lambda!345484)))

(declare-fun bs!1572479 () Bool)

(assert (= bs!1572479 (and d!1974320 b!6289816)))

(assert (=> bs!1572479 (not (= lambda!345628 lambda!345480))))

(assert (=> bs!1572471 (not (= lambda!345628 lambda!345483))))

(declare-fun bs!1572480 () Bool)

(assert (= bs!1572480 (and d!1974320 d!1973988)))

(assert (=> bs!1572480 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345628 lambda!345560))))

(declare-fun bs!1572481 () Bool)

(assert (= bs!1572481 (and d!1974320 b!6290675)))

(assert (=> bs!1572481 (not (= lambda!345628 lambda!345567))))

(assert (=> bs!1572478 (not (= lambda!345628 lambda!345566))))

(declare-fun bs!1572482 () Bool)

(assert (= bs!1572482 (and d!1974320 b!6290457)))

(assert (=> bs!1572482 (not (= lambda!345628 lambda!345553))))

(assert (=> bs!1572471 (not (= lambda!345628 lambda!345485))))

(declare-fun bs!1572483 () Bool)

(assert (= bs!1572483 (and d!1974320 b!6290737)))

(assert (=> bs!1572483 (not (= lambda!345628 lambda!345575))))

(declare-fun bs!1572484 () Bool)

(assert (= bs!1572484 (and d!1974320 d!1974010)))

(assert (=> bs!1572484 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345628 lambda!345574))))

(assert (=> bs!1572474 (= lambda!345628 lambda!345580)))

(assert (=> bs!1572479 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345628 lambda!345479))))

(declare-fun bs!1572485 () Bool)

(assert (= bs!1572485 (and d!1974320 b!6290448)))

(assert (=> bs!1572485 (not (= lambda!345628 lambda!345554))))

(declare-fun bs!1572486 () Bool)

(assert (= bs!1572486 (and d!1974320 b!6290666)))

(assert (=> bs!1572486 (not (= lambda!345628 lambda!345568))))

(assert (=> d!1974320 true))

(assert (=> d!1974320 true))

(assert (=> d!1974320 true))

(declare-fun lambda!345629 () Int)

(assert (=> bs!1572471 (not (= lambda!345629 lambda!345482))))

(assert (=> bs!1572472 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345629 lambda!345579))))

(assert (=> bs!1572473 (not (= lambda!345629 lambda!345573))))

(declare-fun bs!1572487 () Bool)

(assert (= bs!1572487 d!1974320))

(assert (=> bs!1572487 (not (= lambda!345629 lambda!345628))))

(assert (=> bs!1572474 (= lambda!345629 lambda!345581)))

(assert (=> bs!1572472 (not (= lambda!345629 lambda!345578))))

(assert (=> bs!1572475 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357070)) (= lt!2357053 (regTwo!32938 lt!2357070))) (= lambda!345629 lambda!345576))))

(assert (=> bs!1572476 (not (= lambda!345629 lambda!345615))))

(assert (=> bs!1572477 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32939 lt!2357061))) (= lt!2357053 (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345629 lambda!345616))))

(assert (=> bs!1572478 (not (= lambda!345629 lambda!345565))))

(assert (=> bs!1572471 (not (= lambda!345629 lambda!345484))))

(assert (=> bs!1572479 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345629 lambda!345480))))

(assert (=> bs!1572471 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345629 lambda!345483))))

(assert (=> bs!1572480 (not (= lambda!345629 lambda!345560))))

(assert (=> bs!1572481 (not (= lambda!345629 lambda!345567))))

(assert (=> bs!1572478 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345629 lambda!345566))))

(assert (=> bs!1572482 (not (= lambda!345629 lambda!345553))))

(assert (=> bs!1572471 (= lambda!345629 lambda!345485)))

(assert (=> bs!1572483 (not (= lambda!345629 lambda!345575))))

(assert (=> bs!1572484 (not (= lambda!345629 lambda!345574))))

(assert (=> bs!1572474 (not (= lambda!345629 lambda!345580))))

(assert (=> bs!1572479 (not (= lambda!345629 lambda!345479))))

(assert (=> bs!1572485 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345629 lambda!345554))))

(assert (=> bs!1572486 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357061)) (= lt!2357053 (regTwo!32938 lt!2357061))) (= lambda!345629 lambda!345568))))

(assert (=> d!1974320 true))

(assert (=> d!1974320 true))

(assert (=> d!1974320 true))

(assert (=> d!1974320 (= (Exists!3283 lambda!345628) (Exists!3283 lambda!345629))))

(assert (=> d!1974320 true))

(declare-fun _$90!2108 () Unit!158183)

(assert (=> d!1974320 (= (choose!46741 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) _$90!2108)))

(declare-fun m!7112052 () Bool)

(assert (=> bs!1572487 m!7112052))

(declare-fun m!7112054 () Bool)

(assert (=> bs!1572487 m!7112054))

(assert (=> d!1974042 d!1974320))

(declare-fun d!1974326 () Bool)

(declare-fun res!2594607 () Bool)

(declare-fun e!3825569 () Bool)

(assert (=> d!1974326 (=> res!2594607 e!3825569)))

(assert (=> d!1974326 (= res!2594607 ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974326 (= (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292))) e!3825569)))

(declare-fun b!6291478 () Bool)

(declare-fun res!2594609 () Bool)

(declare-fun e!3825570 () Bool)

(assert (=> b!6291478 (=> res!2594609 e!3825570)))

(assert (=> b!6291478 (= res!2594609 (not ((_ is Concat!25058) (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun e!3825566 () Bool)

(assert (=> b!6291478 (= e!3825566 e!3825570)))

(declare-fun bm!532763 () Bool)

(declare-fun call!532770 () Bool)

(declare-fun c!1141778 () Bool)

(declare-fun c!1141779 () Bool)

(assert (=> bm!532763 (= call!532770 (validRegex!7949 (ite c!1141779 (reg!16542 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141778 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292)))))))))

(declare-fun b!6291479 () Bool)

(declare-fun e!3825568 () Bool)

(assert (=> b!6291479 (= e!3825568 e!3825566)))

(assert (=> b!6291479 (= c!1141778 ((_ is Union!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun bm!532764 () Bool)

(declare-fun call!532769 () Bool)

(assert (=> bm!532764 (= call!532769 call!532770)))

(declare-fun b!6291480 () Bool)

(declare-fun e!3825572 () Bool)

(assert (=> b!6291480 (= e!3825568 e!3825572)))

(declare-fun res!2594610 () Bool)

(assert (=> b!6291480 (= res!2594610 (not (nullable!6206 (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291480 (=> (not res!2594610) (not e!3825572))))

(declare-fun b!6291481 () Bool)

(assert (=> b!6291481 (= e!3825569 e!3825568)))

(assert (=> b!6291481 (= c!1141779 ((_ is Star!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291482 () Bool)

(declare-fun res!2594608 () Bool)

(declare-fun e!3825567 () Bool)

(assert (=> b!6291482 (=> (not res!2594608) (not e!3825567))))

(declare-fun call!532768 () Bool)

(assert (=> b!6291482 (= res!2594608 call!532768)))

(assert (=> b!6291482 (= e!3825566 e!3825567)))

(declare-fun bm!532765 () Bool)

(assert (=> bm!532765 (= call!532768 (validRegex!7949 (ite c!1141778 (regOne!32939 (regTwo!32938 (regOne!32938 r!7292))) (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6291483 () Bool)

(assert (=> b!6291483 (= e!3825572 call!532770)))

(declare-fun b!6291484 () Bool)

(declare-fun e!3825571 () Bool)

(assert (=> b!6291484 (= e!3825570 e!3825571)))

(declare-fun res!2594606 () Bool)

(assert (=> b!6291484 (=> (not res!2594606) (not e!3825571))))

(assert (=> b!6291484 (= res!2594606 call!532768)))

(declare-fun b!6291485 () Bool)

(assert (=> b!6291485 (= e!3825571 call!532769)))

(declare-fun b!6291486 () Bool)

(assert (=> b!6291486 (= e!3825567 call!532769)))

(assert (= (and d!1974326 (not res!2594607)) b!6291481))

(assert (= (and b!6291481 c!1141779) b!6291480))

(assert (= (and b!6291481 (not c!1141779)) b!6291479))

(assert (= (and b!6291480 res!2594610) b!6291483))

(assert (= (and b!6291479 c!1141778) b!6291482))

(assert (= (and b!6291479 (not c!1141778)) b!6291478))

(assert (= (and b!6291482 res!2594608) b!6291486))

(assert (= (and b!6291478 (not res!2594609)) b!6291484))

(assert (= (and b!6291484 res!2594606) b!6291485))

(assert (= (or b!6291486 b!6291485) bm!532764))

(assert (= (or b!6291482 b!6291484) bm!532765))

(assert (= (or b!6291483 bm!532764) bm!532763))

(declare-fun m!7112056 () Bool)

(assert (=> bm!532763 m!7112056))

(declare-fun m!7112058 () Bool)

(assert (=> b!6291480 m!7112058))

(declare-fun m!7112060 () Bool)

(assert (=> bm!532765 m!7112060))

(assert (=> d!1974042 d!1974326))

(declare-fun d!1974328 () Bool)

(assert (=> d!1974328 (= ($colon$colon!2078 (exprs!6097 lt!2357077) (ite (or c!1141613 c!1141614) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71263 (exprs!6097 (h!71264 zl!343))))) (Cons!64815 (ite (or c!1141613 c!1141614) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71263 (exprs!6097 (h!71264 zl!343)))) (exprs!6097 lt!2357077)))))

(assert (=> bm!532646 d!1974328))

(declare-fun d!1974330 () Bool)

(assert (=> d!1974330 (= (isEmptyExpr!1619 lt!2357243) ((_ is EmptyExpr!16213) lt!2357243))))

(assert (=> b!6290703 d!1974330))

(assert (=> d!1974010 d!1974242))

(assert (=> d!1974010 d!1974002))

(declare-fun d!1974332 () Bool)

(assert (=> d!1974332 (= (Exists!3283 lambda!345574) (choose!46739 lambda!345574))))

(declare-fun bs!1572488 () Bool)

(assert (= bs!1572488 d!1974332))

(declare-fun m!7112062 () Bool)

(assert (=> bs!1572488 m!7112062))

(assert (=> d!1974010 d!1974332))

(declare-fun bs!1572490 () Bool)

(declare-fun d!1974334 () Bool)

(assert (= bs!1572490 (and d!1974334 b!6289815)))

(declare-fun lambda!345632 () Int)

(assert (=> bs!1572490 (= lambda!345632 lambda!345482)))

(declare-fun bs!1572491 () Bool)

(assert (= bs!1572491 (and d!1974334 d!1974040)))

(assert (=> bs!1572491 (not (= lambda!345632 lambda!345579))))

(declare-fun bs!1572492 () Bool)

(assert (= bs!1572492 (and d!1974334 d!1974006)))

(assert (=> bs!1572492 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345632 lambda!345573))))

(declare-fun bs!1572493 () Bool)

(assert (= bs!1572493 (and d!1974334 d!1974320)))

(assert (=> bs!1572493 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345632 lambda!345628))))

(declare-fun bs!1572494 () Bool)

(assert (= bs!1572494 (and d!1974334 d!1974042)))

(assert (=> bs!1572494 (not (= lambda!345632 lambda!345581))))

(assert (=> bs!1572491 (= lambda!345632 lambda!345578)))

(declare-fun bs!1572495 () Bool)

(assert (= bs!1572495 (and d!1974334 b!6290728)))

(assert (=> bs!1572495 (not (= lambda!345632 lambda!345576))))

(declare-fun bs!1572496 () Bool)

(assert (= bs!1572496 (and d!1974334 b!6291172)))

(assert (=> bs!1572496 (not (= lambda!345632 lambda!345615))))

(declare-fun bs!1572497 () Bool)

(assert (= bs!1572497 (and d!1974334 b!6291163)))

(assert (=> bs!1572497 (not (= lambda!345632 lambda!345616))))

(assert (=> bs!1572493 (not (= lambda!345632 lambda!345629))))

(declare-fun bs!1572498 () Bool)

(assert (= bs!1572498 (and d!1974334 d!1973990)))

(assert (=> bs!1572498 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345632 lambda!345565))))

(assert (=> bs!1572490 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345632 lambda!345484))))

(declare-fun bs!1572499 () Bool)

(assert (= bs!1572499 (and d!1974334 b!6289816)))

(assert (=> bs!1572499 (not (= lambda!345632 lambda!345480))))

(assert (=> bs!1572490 (not (= lambda!345632 lambda!345483))))

(declare-fun bs!1572500 () Bool)

(assert (= bs!1572500 (and d!1974334 d!1973988)))

(assert (=> bs!1572500 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345632 lambda!345560))))

(declare-fun bs!1572501 () Bool)

(assert (= bs!1572501 (and d!1974334 b!6290675)))

(assert (=> bs!1572501 (not (= lambda!345632 lambda!345567))))

(assert (=> bs!1572498 (not (= lambda!345632 lambda!345566))))

(declare-fun bs!1572502 () Bool)

(assert (= bs!1572502 (and d!1974334 b!6290457)))

(assert (=> bs!1572502 (not (= lambda!345632 lambda!345553))))

(assert (=> bs!1572490 (not (= lambda!345632 lambda!345485))))

(declare-fun bs!1572503 () Bool)

(assert (= bs!1572503 (and d!1974334 b!6290737)))

(assert (=> bs!1572503 (not (= lambda!345632 lambda!345575))))

(declare-fun bs!1572504 () Bool)

(assert (= bs!1572504 (and d!1974334 d!1974010)))

(assert (=> bs!1572504 (= lambda!345632 lambda!345574)))

(assert (=> bs!1572494 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345632 lambda!345580))))

(assert (=> bs!1572499 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345632 lambda!345479))))

(declare-fun bs!1572505 () Bool)

(assert (= bs!1572505 (and d!1974334 b!6290448)))

(assert (=> bs!1572505 (not (= lambda!345632 lambda!345554))))

(declare-fun bs!1572506 () Bool)

(assert (= bs!1572506 (and d!1974334 b!6290666)))

(assert (=> bs!1572506 (not (= lambda!345632 lambda!345568))))

(assert (=> d!1974334 true))

(assert (=> d!1974334 true))

(assert (=> d!1974334 true))

(assert (=> d!1974334 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345632))))

(assert (=> d!1974334 true))

(declare-fun _$89!2484 () Unit!158183)

(assert (=> d!1974334 (= (choose!46740 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326) _$89!2484)))

(declare-fun bs!1572507 () Bool)

(assert (= bs!1572507 d!1974334))

(assert (=> bs!1572507 m!7110388))

(assert (=> bs!1572507 m!7110388))

(assert (=> bs!1572507 m!7110390))

(declare-fun m!7112084 () Bool)

(assert (=> bs!1572507 m!7112084))

(assert (=> d!1974010 d!1974334))

(assert (=> d!1974010 d!1974012))

(declare-fun d!1974344 () Bool)

(assert (=> d!1974344 (= (nullable!6206 lt!2357070) (nullableFct!2157 lt!2357070))))

(declare-fun bs!1572508 () Bool)

(assert (= bs!1572508 d!1974344))

(declare-fun m!7112086 () Bool)

(assert (=> bs!1572508 m!7112086))

(assert (=> b!6290651 d!1974344))

(declare-fun d!1974346 () Bool)

(declare-fun c!1141783 () Bool)

(assert (=> d!1974346 (= c!1141783 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825584 () Bool)

(assert (=> d!1974346 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357093 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825584)))

(declare-fun b!6291507 () Bool)

(assert (=> b!6291507 (= e!3825584 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357093 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291508 () Bool)

(assert (=> b!6291508 (= e!3825584 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357093 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974346 c!1141783) b!6291507))

(assert (= (and d!1974346 (not c!1141783)) b!6291508))

(assert (=> d!1974346 m!7111112))

(assert (=> d!1974346 m!7111724))

(assert (=> b!6291507 m!7111414))

(declare-fun m!7112088 () Bool)

(assert (=> b!6291507 m!7112088))

(assert (=> b!6291508 m!7111112))

(assert (=> b!6291508 m!7111728))

(assert (=> b!6291508 m!7111414))

(assert (=> b!6291508 m!7111728))

(declare-fun m!7112090 () Bool)

(assert (=> b!6291508 m!7112090))

(assert (=> b!6291508 m!7111112))

(assert (=> b!6291508 m!7111732))

(assert (=> b!6291508 m!7112090))

(assert (=> b!6291508 m!7111732))

(declare-fun m!7112092 () Bool)

(assert (=> b!6291508 m!7112092))

(assert (=> b!6290790 d!1974346))

(declare-fun bs!1572509 () Bool)

(declare-fun d!1974348 () Bool)

(assert (= bs!1572509 (and d!1974348 d!1974252)))

(declare-fun lambda!345633 () Int)

(assert (=> bs!1572509 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345633 lambda!345622))))

(declare-fun bs!1572510 () Bool)

(assert (= bs!1572510 (and d!1974348 d!1974064)))

(assert (=> bs!1572510 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345633 lambda!345598))))

(declare-fun bs!1572511 () Bool)

(assert (= bs!1572511 (and d!1974348 d!1974186)))

(assert (=> bs!1572511 (= lambda!345633 lambda!345618)))

(declare-fun bs!1572512 () Bool)

(assert (= bs!1572512 (and d!1974348 d!1974178)))

(assert (=> bs!1572512 (= lambda!345633 lambda!345617)))

(declare-fun bs!1572513 () Bool)

(assert (= bs!1572513 (and d!1974348 d!1973976)))

(assert (=> bs!1572513 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345633 lambda!345557))))

(declare-fun bs!1572514 () Bool)

(assert (= bs!1572514 (and d!1974348 d!1974220)))

(assert (=> bs!1572514 (= lambda!345633 lambda!345620)))

(declare-fun bs!1572515 () Bool)

(assert (= bs!1572515 (and d!1974348 d!1974232)))

(assert (=> bs!1572515 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345633 lambda!345621))))

(declare-fun bs!1572516 () Bool)

(assert (= bs!1572516 (and d!1974348 b!6289808)))

(assert (=> bs!1572516 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345633 lambda!345481))))

(assert (=> d!1974348 true))

(assert (=> d!1974348 (= (derivationStepZipper!2179 lt!2357093 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357093 lambda!345633))))

(declare-fun bs!1572517 () Bool)

(assert (= bs!1572517 d!1974348))

(declare-fun m!7112094 () Bool)

(assert (=> bs!1572517 m!7112094))

(assert (=> b!6290790 d!1974348))

(assert (=> b!6290790 d!1974180))

(assert (=> b!6290790 d!1974182))

(declare-fun d!1974350 () Bool)

(assert (=> d!1974350 (= (nullable!6206 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (nullableFct!2157 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun bs!1572518 () Bool)

(assert (= bs!1572518 d!1974350))

(declare-fun m!7112096 () Bool)

(assert (=> bs!1572518 m!7112096))

(assert (=> b!6290905 d!1974350))

(declare-fun bs!1572519 () Bool)

(declare-fun d!1974352 () Bool)

(assert (= bs!1572519 (and d!1974352 b!6291134)))

(declare-fun lambda!345634 () Int)

(assert (=> bs!1572519 (not (= lambda!345634 lambda!345604))))

(declare-fun bs!1572520 () Bool)

(assert (= bs!1572520 (and d!1974352 d!1973998)))

(assert (=> bs!1572520 (= lambda!345634 lambda!345571)))

(declare-fun bs!1572521 () Bool)

(assert (= bs!1572521 (and d!1974352 d!1974034)))

(assert (=> bs!1572521 (= lambda!345634 lambda!345577)))

(declare-fun bs!1572522 () Bool)

(assert (= bs!1572522 (and d!1974352 d!1974314)))

(assert (=> bs!1572522 (= lambda!345634 lambda!345623)))

(declare-fun bs!1572523 () Bool)

(assert (= bs!1572523 (and d!1974352 d!1973900)))

(assert (=> bs!1572523 (= lambda!345634 lambda!345542)))

(declare-fun bs!1572524 () Bool)

(assert (= bs!1572524 (and d!1974352 d!1974050)))

(assert (=> bs!1572524 (= lambda!345634 lambda!345596)))

(declare-fun bs!1572525 () Bool)

(assert (= bs!1572525 (and d!1974352 d!1974004)))

(assert (=> bs!1572525 (= lambda!345634 lambda!345572)))

(declare-fun bs!1572526 () Bool)

(assert (= bs!1572526 (and d!1974352 b!6291136)))

(assert (=> bs!1572526 (not (= lambda!345634 lambda!345605))))

(declare-fun bs!1572527 () Bool)

(assert (= bs!1572527 (and d!1974352 d!1973910)))

(assert (=> bs!1572527 (= lambda!345634 lambda!345546)))

(declare-fun bs!1572528 () Bool)

(assert (= bs!1572528 (and d!1974352 d!1974090)))

(assert (=> bs!1572528 (= lambda!345634 lambda!345599)))

(declare-fun bs!1572529 () Bool)

(assert (= bs!1572529 (and d!1974352 d!1974056)))

(assert (=> bs!1572529 (= lambda!345634 lambda!345597)))

(assert (=> d!1974352 (= (inv!83779 setElem!42818) (forall!15362 (exprs!6097 setElem!42818) lambda!345634))))

(declare-fun bs!1572530 () Bool)

(assert (= bs!1572530 d!1974352))

(declare-fun m!7112098 () Bool)

(assert (=> bs!1572530 m!7112098))

(assert (=> setNonEmpty!42818 d!1974352))

(declare-fun bs!1572531 () Bool)

(declare-fun d!1974354 () Bool)

(assert (= bs!1572531 (and d!1974354 d!1974166)))

(declare-fun lambda!345635 () Int)

(assert (=> bs!1572531 (= lambda!345635 lambda!345614)))

(declare-fun bs!1572532 () Bool)

(assert (= bs!1572532 (and d!1974354 d!1974158)))

(assert (=> bs!1572532 (not (= lambda!345635 lambda!345608))))

(declare-fun bs!1572533 () Bool)

(assert (= bs!1572533 (and d!1974354 b!6290783)))

(assert (=> bs!1572533 (not (= lambda!345635 lambda!345590))))

(declare-fun bs!1572534 () Bool)

(assert (= bs!1572534 (and d!1974354 b!6291144)))

(assert (=> bs!1572534 (not (= lambda!345635 lambda!345611))))

(declare-fun bs!1572535 () Bool)

(assert (= bs!1572535 (and d!1974354 b!6291142)))

(assert (=> bs!1572535 (not (= lambda!345635 lambda!345610))))

(declare-fun bs!1572536 () Bool)

(assert (= bs!1572536 (and d!1974354 b!6290786)))

(assert (=> bs!1572536 (not (= lambda!345635 lambda!345592))))

(declare-fun bs!1572537 () Bool)

(assert (= bs!1572537 (and d!1974354 d!1974208)))

(assert (=> bs!1572537 (= lambda!345635 lambda!345619)))

(declare-fun bs!1572538 () Bool)

(assert (= bs!1572538 (and d!1974354 b!6290788)))

(assert (=> bs!1572538 (not (= lambda!345635 lambda!345593))))

(declare-fun bs!1572539 () Bool)

(assert (= bs!1572539 (and d!1974354 b!6290781)))

(assert (=> bs!1572539 (not (= lambda!345635 lambda!345589))))

(assert (=> d!1974354 (= (nullableZipper!1983 lt!2357085) (exists!2528 lt!2357085 lambda!345635))))

(declare-fun bs!1572540 () Bool)

(assert (= bs!1572540 d!1974354))

(declare-fun m!7112100 () Bool)

(assert (=> bs!1572540 m!7112100))

(assert (=> b!6290564 d!1974354))

(declare-fun bs!1572541 () Bool)

(declare-fun d!1974356 () Bool)

(assert (= bs!1572541 (and d!1974356 b!6289815)))

(declare-fun lambda!345636 () Int)

(assert (=> bs!1572541 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345636 lambda!345482))))

(declare-fun bs!1572542 () Bool)

(assert (= bs!1572542 (and d!1974356 d!1974040)))

(assert (=> bs!1572542 (not (= lambda!345636 lambda!345579))))

(declare-fun bs!1572543 () Bool)

(assert (= bs!1572543 (and d!1974356 d!1974006)))

(assert (=> bs!1572543 (= lambda!345636 lambda!345573)))

(declare-fun bs!1572544 () Bool)

(assert (= bs!1572544 (and d!1974356 d!1974334)))

(assert (=> bs!1572544 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345636 lambda!345632))))

(declare-fun bs!1572545 () Bool)

(assert (= bs!1572545 (and d!1974356 d!1974320)))

(assert (=> bs!1572545 (= lambda!345636 lambda!345628)))

(declare-fun bs!1572546 () Bool)

(assert (= bs!1572546 (and d!1974356 d!1974042)))

(assert (=> bs!1572546 (not (= lambda!345636 lambda!345581))))

(assert (=> bs!1572542 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345636 lambda!345578))))

(declare-fun bs!1572547 () Bool)

(assert (= bs!1572547 (and d!1974356 b!6290728)))

(assert (=> bs!1572547 (not (= lambda!345636 lambda!345576))))

(declare-fun bs!1572548 () Bool)

(assert (= bs!1572548 (and d!1974356 b!6291172)))

(assert (=> bs!1572548 (not (= lambda!345636 lambda!345615))))

(declare-fun bs!1572549 () Bool)

(assert (= bs!1572549 (and d!1974356 b!6291163)))

(assert (=> bs!1572549 (not (= lambda!345636 lambda!345616))))

(assert (=> bs!1572545 (not (= lambda!345636 lambda!345629))))

(declare-fun bs!1572550 () Bool)

(assert (= bs!1572550 (and d!1974356 d!1973990)))

(assert (=> bs!1572550 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345636 lambda!345565))))

(assert (=> bs!1572541 (= lambda!345636 lambda!345484)))

(declare-fun bs!1572551 () Bool)

(assert (= bs!1572551 (and d!1974356 b!6289816)))

(assert (=> bs!1572551 (not (= lambda!345636 lambda!345480))))

(assert (=> bs!1572541 (not (= lambda!345636 lambda!345483))))

(declare-fun bs!1572552 () Bool)

(assert (= bs!1572552 (and d!1974356 d!1973988)))

(assert (=> bs!1572552 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345636 lambda!345560))))

(declare-fun bs!1572553 () Bool)

(assert (= bs!1572553 (and d!1974356 b!6290675)))

(assert (=> bs!1572553 (not (= lambda!345636 lambda!345567))))

(assert (=> bs!1572550 (not (= lambda!345636 lambda!345566))))

(declare-fun bs!1572554 () Bool)

(assert (= bs!1572554 (and d!1974356 b!6290457)))

(assert (=> bs!1572554 (not (= lambda!345636 lambda!345553))))

(assert (=> bs!1572541 (not (= lambda!345636 lambda!345485))))

(declare-fun bs!1572555 () Bool)

(assert (= bs!1572555 (and d!1974356 b!6290737)))

(assert (=> bs!1572555 (not (= lambda!345636 lambda!345575))))

(declare-fun bs!1572556 () Bool)

(assert (= bs!1572556 (and d!1974356 d!1974010)))

(assert (=> bs!1572556 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= lt!2357053 lt!2357070)) (= lambda!345636 lambda!345574))))

(assert (=> bs!1572546 (= lambda!345636 lambda!345580)))

(assert (=> bs!1572551 (= (and (= (regTwo!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357053 (regTwo!32938 r!7292))) (= lambda!345636 lambda!345479))))

(declare-fun bs!1572557 () Bool)

(assert (= bs!1572557 (and d!1974356 b!6290448)))

(assert (=> bs!1572557 (not (= lambda!345636 lambda!345554))))

(declare-fun bs!1572558 () Bool)

(assert (= bs!1572558 (and d!1974356 b!6290666)))

(assert (=> bs!1572558 (not (= lambda!345636 lambda!345568))))

(assert (=> d!1974356 true))

(assert (=> d!1974356 true))

(assert (=> d!1974356 true))

(assert (=> d!1974356 (= (isDefined!12807 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345636))))

(assert (=> d!1974356 true))

(declare-fun _$89!2485 () Unit!158183)

(assert (=> d!1974356 (= (choose!46740 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) _$89!2485)))

(declare-fun bs!1572559 () Bool)

(assert (= bs!1572559 d!1974356))

(assert (=> bs!1572559 m!7110392))

(assert (=> bs!1572559 m!7110392))

(assert (=> bs!1572559 m!7110398))

(declare-fun m!7112102 () Bool)

(assert (=> bs!1572559 m!7112102))

(assert (=> d!1974006 d!1974356))

(assert (=> d!1974006 d!1974014))

(declare-fun d!1974358 () Bool)

(assert (=> d!1974358 (= (Exists!3283 lambda!345573) (choose!46739 lambda!345573))))

(declare-fun bs!1572560 () Bool)

(assert (= bs!1572560 d!1974358))

(declare-fun m!7112104 () Bool)

(assert (=> bs!1572560 m!7112104))

(assert (=> d!1974006 d!1974358))

(assert (=> d!1974006 d!1974326))

(assert (=> d!1974006 d!1974036))

(declare-fun bs!1572561 () Bool)

(declare-fun d!1974360 () Bool)

(assert (= bs!1572561 (and d!1974360 d!1974166)))

(declare-fun lambda!345637 () Int)

(assert (=> bs!1572561 (= lambda!345637 lambda!345614)))

(declare-fun bs!1572562 () Bool)

(assert (= bs!1572562 (and d!1974360 d!1974158)))

(assert (=> bs!1572562 (not (= lambda!345637 lambda!345608))))

(declare-fun bs!1572563 () Bool)

(assert (= bs!1572563 (and d!1974360 b!6290783)))

(assert (=> bs!1572563 (not (= lambda!345637 lambda!345590))))

(declare-fun bs!1572564 () Bool)

(assert (= bs!1572564 (and d!1974360 d!1974354)))

(assert (=> bs!1572564 (= lambda!345637 lambda!345635)))

(declare-fun bs!1572565 () Bool)

(assert (= bs!1572565 (and d!1974360 b!6291144)))

(assert (=> bs!1572565 (not (= lambda!345637 lambda!345611))))

(declare-fun bs!1572566 () Bool)

(assert (= bs!1572566 (and d!1974360 b!6291142)))

(assert (=> bs!1572566 (not (= lambda!345637 lambda!345610))))

(declare-fun bs!1572567 () Bool)

(assert (= bs!1572567 (and d!1974360 b!6290786)))

(assert (=> bs!1572567 (not (= lambda!345637 lambda!345592))))

(declare-fun bs!1572568 () Bool)

(assert (= bs!1572568 (and d!1974360 d!1974208)))

(assert (=> bs!1572568 (= lambda!345637 lambda!345619)))

(declare-fun bs!1572569 () Bool)

(assert (= bs!1572569 (and d!1974360 b!6290788)))

(assert (=> bs!1572569 (not (= lambda!345637 lambda!345593))))

(declare-fun bs!1572570 () Bool)

(assert (= bs!1572570 (and d!1974360 b!6290781)))

(assert (=> bs!1572570 (not (= lambda!345637 lambda!345589))))

(assert (=> d!1974360 (= (nullableZipper!1983 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326))) (exists!2528 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) lambda!345637))))

(declare-fun bs!1572571 () Bool)

(assert (= bs!1572571 d!1974360))

(assert (=> bs!1572571 m!7110480))

(declare-fun m!7112106 () Bool)

(assert (=> bs!1572571 m!7112106))

(assert (=> b!6290604 d!1974360))

(declare-fun b!6291529 () Bool)

(declare-fun e!3825601 () Bool)

(assert (=> b!6291529 (= e!3825601 (nullable!6206 lt!2357053))))

(declare-fun b!6291530 () Bool)

(declare-fun res!2594629 () Bool)

(declare-fun e!3825598 () Bool)

(assert (=> b!6291530 (=> res!2594629 e!3825598)))

(declare-fun e!3825597 () Bool)

(assert (=> b!6291530 (= res!2594629 e!3825597)))

(declare-fun res!2594632 () Bool)

(assert (=> b!6291530 (=> (not res!2594632) (not e!3825597))))

(declare-fun lt!2357347 () Bool)

(assert (=> b!6291530 (= res!2594632 lt!2357347)))

(declare-fun b!6291531 () Bool)

(assert (=> b!6291531 (= e!3825597 (= (head!12927 (_2!36495 (get!22408 lt!2357258))) (c!1141284 lt!2357053)))))

(declare-fun b!6291532 () Bool)

(declare-fun e!3825599 () Bool)

(assert (=> b!6291532 (= e!3825599 (not (= (head!12927 (_2!36495 (get!22408 lt!2357258))) (c!1141284 lt!2357053))))))

(declare-fun d!1974362 () Bool)

(declare-fun e!3825600 () Bool)

(assert (=> d!1974362 e!3825600))

(declare-fun c!1141794 () Bool)

(assert (=> d!1974362 (= c!1141794 ((_ is EmptyExpr!16213) lt!2357053))))

(assert (=> d!1974362 (= lt!2357347 e!3825601)))

(declare-fun c!1141795 () Bool)

(assert (=> d!1974362 (= c!1141795 (isEmpty!36872 (_2!36495 (get!22408 lt!2357258))))))

(assert (=> d!1974362 (validRegex!7949 lt!2357053)))

(assert (=> d!1974362 (= (matchR!8396 lt!2357053 (_2!36495 (get!22408 lt!2357258))) lt!2357347)))

(declare-fun b!6291533 () Bool)

(declare-fun e!3825596 () Bool)

(assert (=> b!6291533 (= e!3825596 (not lt!2357347))))

(declare-fun b!6291534 () Bool)

(declare-fun e!3825595 () Bool)

(assert (=> b!6291534 (= e!3825598 e!3825595)))

(declare-fun res!2594631 () Bool)

(assert (=> b!6291534 (=> (not res!2594631) (not e!3825595))))

(assert (=> b!6291534 (= res!2594631 (not lt!2357347))))

(declare-fun bm!532775 () Bool)

(declare-fun call!532780 () Bool)

(assert (=> bm!532775 (= call!532780 (isEmpty!36872 (_2!36495 (get!22408 lt!2357258))))))

(declare-fun b!6291535 () Bool)

(assert (=> b!6291535 (= e!3825600 (= lt!2357347 call!532780))))

(declare-fun b!6291536 () Bool)

(assert (=> b!6291536 (= e!3825600 e!3825596)))

(declare-fun c!1141796 () Bool)

(assert (=> b!6291536 (= c!1141796 ((_ is EmptyLang!16213) lt!2357053))))

(declare-fun b!6291537 () Bool)

(assert (=> b!6291537 (= e!3825595 e!3825599)))

(declare-fun res!2594630 () Bool)

(assert (=> b!6291537 (=> res!2594630 e!3825599)))

(assert (=> b!6291537 (= res!2594630 call!532780)))

(declare-fun b!6291538 () Bool)

(declare-fun res!2594626 () Bool)

(assert (=> b!6291538 (=> (not res!2594626) (not e!3825597))))

(assert (=> b!6291538 (= res!2594626 (not call!532780))))

(declare-fun b!6291539 () Bool)

(declare-fun res!2594625 () Bool)

(assert (=> b!6291539 (=> res!2594625 e!3825598)))

(assert (=> b!6291539 (= res!2594625 (not ((_ is ElementMatch!16213) lt!2357053)))))

(assert (=> b!6291539 (= e!3825596 e!3825598)))

(declare-fun b!6291540 () Bool)

(assert (=> b!6291540 (= e!3825601 (matchR!8396 (derivativeStep!4922 lt!2357053 (head!12927 (_2!36495 (get!22408 lt!2357258)))) (tail!12012 (_2!36495 (get!22408 lt!2357258)))))))

(declare-fun b!6291541 () Bool)

(declare-fun res!2594627 () Bool)

(assert (=> b!6291541 (=> (not res!2594627) (not e!3825597))))

(assert (=> b!6291541 (= res!2594627 (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357258)))))))

(declare-fun b!6291542 () Bool)

(declare-fun res!2594628 () Bool)

(assert (=> b!6291542 (=> res!2594628 e!3825599)))

(assert (=> b!6291542 (= res!2594628 (not (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357258))))))))

(assert (= (and d!1974362 c!1141795) b!6291529))

(assert (= (and d!1974362 (not c!1141795)) b!6291540))

(assert (= (and d!1974362 c!1141794) b!6291535))

(assert (= (and d!1974362 (not c!1141794)) b!6291536))

(assert (= (and b!6291536 c!1141796) b!6291533))

(assert (= (and b!6291536 (not c!1141796)) b!6291539))

(assert (= (and b!6291539 (not res!2594625)) b!6291530))

(assert (= (and b!6291530 res!2594632) b!6291538))

(assert (= (and b!6291538 res!2594626) b!6291541))

(assert (= (and b!6291541 res!2594627) b!6291531))

(assert (= (and b!6291530 (not res!2594629)) b!6291534))

(assert (= (and b!6291534 res!2594631) b!6291537))

(assert (= (and b!6291537 (not res!2594630)) b!6291542))

(assert (= (and b!6291542 (not res!2594628)) b!6291532))

(assert (= (or b!6291535 b!6291537 b!6291538) bm!532775))

(declare-fun m!7112108 () Bool)

(assert (=> bm!532775 m!7112108))

(declare-fun m!7112110 () Bool)

(assert (=> b!6291540 m!7112110))

(assert (=> b!6291540 m!7112110))

(declare-fun m!7112112 () Bool)

(assert (=> b!6291540 m!7112112))

(declare-fun m!7112114 () Bool)

(assert (=> b!6291540 m!7112114))

(assert (=> b!6291540 m!7112112))

(assert (=> b!6291540 m!7112114))

(declare-fun m!7112116 () Bool)

(assert (=> b!6291540 m!7112116))

(assert (=> b!6291532 m!7112110))

(assert (=> b!6291542 m!7112114))

(assert (=> b!6291542 m!7112114))

(declare-fun m!7112118 () Bool)

(assert (=> b!6291542 m!7112118))

(assert (=> b!6291529 m!7111722))

(assert (=> b!6291531 m!7112110))

(assert (=> b!6291541 m!7112114))

(assert (=> b!6291541 m!7112114))

(assert (=> b!6291541 m!7112118))

(assert (=> d!1974362 m!7112108))

(assert (=> d!1974362 m!7111530))

(assert (=> b!6290770 d!1974362))

(assert (=> b!6290770 d!1974272))

(declare-fun d!1974364 () Bool)

(assert (=> d!1974364 (= (isEmpty!36870 lt!2357060) ((_ is Nil!64815) lt!2357060))))

(assert (=> b!6290715 d!1974364))

(declare-fun d!1974366 () Bool)

(declare-fun res!2594634 () Bool)

(declare-fun e!3825605 () Bool)

(assert (=> d!1974366 (=> res!2594634 e!3825605)))

(assert (=> d!1974366 (= res!2594634 ((_ is ElementMatch!16213) (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))

(assert (=> d!1974366 (= (validRegex!7949 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))) e!3825605)))

(declare-fun b!6291543 () Bool)

(declare-fun res!2594636 () Bool)

(declare-fun e!3825606 () Bool)

(assert (=> b!6291543 (=> res!2594636 e!3825606)))

(assert (=> b!6291543 (= res!2594636 (not ((_ is Concat!25058) (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292)))))))

(declare-fun e!3825602 () Bool)

(assert (=> b!6291543 (= e!3825602 e!3825606)))

(declare-fun call!532783 () Bool)

(declare-fun c!1141798 () Bool)

(declare-fun c!1141797 () Bool)

(declare-fun bm!532776 () Bool)

(assert (=> bm!532776 (= call!532783 (validRegex!7949 (ite c!1141798 (reg!16542 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))) (ite c!1141797 (regTwo!32939 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))) (regTwo!32938 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292)))))))))

(declare-fun b!6291544 () Bool)

(declare-fun e!3825604 () Bool)

(assert (=> b!6291544 (= e!3825604 e!3825602)))

(assert (=> b!6291544 (= c!1141797 ((_ is Union!16213) (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))

(declare-fun bm!532777 () Bool)

(declare-fun call!532782 () Bool)

(assert (=> bm!532777 (= call!532782 call!532783)))

(declare-fun b!6291545 () Bool)

(declare-fun e!3825608 () Bool)

(assert (=> b!6291545 (= e!3825604 e!3825608)))

(declare-fun res!2594637 () Bool)

(assert (=> b!6291545 (= res!2594637 (not (nullable!6206 (reg!16542 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))))

(assert (=> b!6291545 (=> (not res!2594637) (not e!3825608))))

(declare-fun b!6291546 () Bool)

(assert (=> b!6291546 (= e!3825605 e!3825604)))

(assert (=> b!6291546 (= c!1141798 ((_ is Star!16213) (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))

(declare-fun b!6291547 () Bool)

(declare-fun res!2594635 () Bool)

(declare-fun e!3825603 () Bool)

(assert (=> b!6291547 (=> (not res!2594635) (not e!3825603))))

(declare-fun call!532781 () Bool)

(assert (=> b!6291547 (= res!2594635 call!532781)))

(assert (=> b!6291547 (= e!3825602 e!3825603)))

(declare-fun bm!532778 () Bool)

(assert (=> bm!532778 (= call!532781 (validRegex!7949 (ite c!1141797 (regOne!32939 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))) (regOne!32938 (ite c!1141633 (regOne!32939 r!7292) (regOne!32938 r!7292))))))))

(declare-fun b!6291548 () Bool)

(assert (=> b!6291548 (= e!3825608 call!532783)))

(declare-fun b!6291549 () Bool)

(declare-fun e!3825607 () Bool)

(assert (=> b!6291549 (= e!3825606 e!3825607)))

(declare-fun res!2594633 () Bool)

(assert (=> b!6291549 (=> (not res!2594633) (not e!3825607))))

(assert (=> b!6291549 (= res!2594633 call!532781)))

(declare-fun b!6291550 () Bool)

(assert (=> b!6291550 (= e!3825607 call!532782)))

(declare-fun b!6291551 () Bool)

(assert (=> b!6291551 (= e!3825603 call!532782)))

(assert (= (and d!1974366 (not res!2594634)) b!6291546))

(assert (= (and b!6291546 c!1141798) b!6291545))

(assert (= (and b!6291546 (not c!1141798)) b!6291544))

(assert (= (and b!6291545 res!2594637) b!6291548))

(assert (= (and b!6291544 c!1141797) b!6291547))

(assert (= (and b!6291544 (not c!1141797)) b!6291543))

(assert (= (and b!6291547 res!2594635) b!6291551))

(assert (= (and b!6291543 (not res!2594636)) b!6291549))

(assert (= (and b!6291549 res!2594633) b!6291550))

(assert (= (or b!6291551 b!6291550) bm!532777))

(assert (= (or b!6291547 b!6291549) bm!532778))

(assert (= (or b!6291548 bm!532777) bm!532776))

(declare-fun m!7112120 () Bool)

(assert (=> bm!532776 m!7112120))

(declare-fun m!7112122 () Bool)

(assert (=> b!6291545 m!7112122))

(declare-fun m!7112124 () Bool)

(assert (=> bm!532778 m!7112124))

(assert (=> bm!532661 d!1974366))

(assert (=> b!6290742 d!1974146))

(assert (=> b!6290858 d!1974146))

(declare-fun bs!1572572 () Bool)

(declare-fun d!1974368 () Bool)

(assert (= bs!1572572 (and d!1974368 b!6291134)))

(declare-fun lambda!345638 () Int)

(assert (=> bs!1572572 (not (= lambda!345638 lambda!345604))))

(declare-fun bs!1572573 () Bool)

(assert (= bs!1572573 (and d!1974368 d!1973998)))

(assert (=> bs!1572573 (= lambda!345638 lambda!345571)))

(declare-fun bs!1572574 () Bool)

(assert (= bs!1572574 (and d!1974368 d!1974034)))

(assert (=> bs!1572574 (= lambda!345638 lambda!345577)))

(declare-fun bs!1572575 () Bool)

(assert (= bs!1572575 (and d!1974368 d!1974314)))

(assert (=> bs!1572575 (= lambda!345638 lambda!345623)))

(declare-fun bs!1572576 () Bool)

(assert (= bs!1572576 (and d!1974368 d!1973900)))

(assert (=> bs!1572576 (= lambda!345638 lambda!345542)))

(declare-fun bs!1572577 () Bool)

(assert (= bs!1572577 (and d!1974368 d!1974050)))

(assert (=> bs!1572577 (= lambda!345638 lambda!345596)))

(declare-fun bs!1572578 () Bool)

(assert (= bs!1572578 (and d!1974368 d!1974004)))

(assert (=> bs!1572578 (= lambda!345638 lambda!345572)))

(declare-fun bs!1572579 () Bool)

(assert (= bs!1572579 (and d!1974368 b!6291136)))

(assert (=> bs!1572579 (not (= lambda!345638 lambda!345605))))

(declare-fun bs!1572580 () Bool)

(assert (= bs!1572580 (and d!1974368 d!1973910)))

(assert (=> bs!1572580 (= lambda!345638 lambda!345546)))

(declare-fun bs!1572581 () Bool)

(assert (= bs!1572581 (and d!1974368 d!1974352)))

(assert (=> bs!1572581 (= lambda!345638 lambda!345634)))

(declare-fun bs!1572582 () Bool)

(assert (= bs!1572582 (and d!1974368 d!1974090)))

(assert (=> bs!1572582 (= lambda!345638 lambda!345599)))

(declare-fun bs!1572583 () Bool)

(assert (= bs!1572583 (and d!1974368 d!1974056)))

(assert (=> bs!1572583 (= lambda!345638 lambda!345597)))

(declare-fun b!6291552 () Bool)

(declare-fun e!3825613 () Bool)

(declare-fun lt!2357348 () Regex!16213)

(assert (=> b!6291552 (= e!3825613 (isConcat!1142 lt!2357348))))

(declare-fun b!6291553 () Bool)

(assert (=> b!6291553 (= e!3825613 (= lt!2357348 (head!12926 (t!378501 lt!2357082))))))

(declare-fun e!3825611 () Bool)

(assert (=> d!1974368 e!3825611))

(declare-fun res!2594639 () Bool)

(assert (=> d!1974368 (=> (not res!2594639) (not e!3825611))))

(assert (=> d!1974368 (= res!2594639 (validRegex!7949 lt!2357348))))

(declare-fun e!3825612 () Regex!16213)

(assert (=> d!1974368 (= lt!2357348 e!3825612)))

(declare-fun c!1141802 () Bool)

(declare-fun e!3825610 () Bool)

(assert (=> d!1974368 (= c!1141802 e!3825610)))

(declare-fun res!2594638 () Bool)

(assert (=> d!1974368 (=> (not res!2594638) (not e!3825610))))

(assert (=> d!1974368 (= res!2594638 ((_ is Cons!64815) (t!378501 lt!2357082)))))

(assert (=> d!1974368 (forall!15362 (t!378501 lt!2357082) lambda!345638)))

(assert (=> d!1974368 (= (generalisedConcat!1810 (t!378501 lt!2357082)) lt!2357348)))

(declare-fun b!6291554 () Bool)

(declare-fun e!3825609 () Bool)

(assert (=> b!6291554 (= e!3825609 e!3825613)))

(declare-fun c!1141799 () Bool)

(assert (=> b!6291554 (= c!1141799 (isEmpty!36870 (tail!12011 (t!378501 lt!2357082))))))

(declare-fun b!6291555 () Bool)

(assert (=> b!6291555 (= e!3825610 (isEmpty!36870 (t!378501 (t!378501 lt!2357082))))))

(declare-fun b!6291556 () Bool)

(declare-fun e!3825614 () Regex!16213)

(assert (=> b!6291556 (= e!3825612 e!3825614)))

(declare-fun c!1141801 () Bool)

(assert (=> b!6291556 (= c!1141801 ((_ is Cons!64815) (t!378501 lt!2357082)))))

(declare-fun b!6291557 () Bool)

(assert (=> b!6291557 (= e!3825614 EmptyExpr!16213)))

(declare-fun b!6291558 () Bool)

(assert (=> b!6291558 (= e!3825614 (Concat!25058 (h!71263 (t!378501 lt!2357082)) (generalisedConcat!1810 (t!378501 (t!378501 lt!2357082)))))))

(declare-fun b!6291559 () Bool)

(assert (=> b!6291559 (= e!3825609 (isEmptyExpr!1619 lt!2357348))))

(declare-fun b!6291560 () Bool)

(assert (=> b!6291560 (= e!3825612 (h!71263 (t!378501 lt!2357082)))))

(declare-fun b!6291561 () Bool)

(assert (=> b!6291561 (= e!3825611 e!3825609)))

(declare-fun c!1141800 () Bool)

(assert (=> b!6291561 (= c!1141800 (isEmpty!36870 (t!378501 lt!2357082)))))

(assert (= (and d!1974368 res!2594638) b!6291555))

(assert (= (and d!1974368 c!1141802) b!6291560))

(assert (= (and d!1974368 (not c!1141802)) b!6291556))

(assert (= (and b!6291556 c!1141801) b!6291558))

(assert (= (and b!6291556 (not c!1141801)) b!6291557))

(assert (= (and d!1974368 res!2594639) b!6291561))

(assert (= (and b!6291561 c!1141800) b!6291559))

(assert (= (and b!6291561 (not c!1141800)) b!6291554))

(assert (= (and b!6291554 c!1141799) b!6291553))

(assert (= (and b!6291554 (not c!1141799)) b!6291552))

(declare-fun m!7112126 () Bool)

(assert (=> b!6291558 m!7112126))

(declare-fun m!7112128 () Bool)

(assert (=> b!6291553 m!7112128))

(declare-fun m!7112130 () Bool)

(assert (=> b!6291559 m!7112130))

(assert (=> b!6291561 m!7111348))

(declare-fun m!7112132 () Bool)

(assert (=> b!6291554 m!7112132))

(assert (=> b!6291554 m!7112132))

(declare-fun m!7112134 () Bool)

(assert (=> b!6291554 m!7112134))

(declare-fun m!7112136 () Bool)

(assert (=> b!6291552 m!7112136))

(declare-fun m!7112138 () Bool)

(assert (=> b!6291555 m!7112138))

(declare-fun m!7112140 () Bool)

(assert (=> d!1974368 m!7112140))

(declare-fun m!7112142 () Bool)

(assert (=> d!1974368 m!7112142))

(assert (=> b!6290762 d!1974368))

(declare-fun d!1974370 () Bool)

(declare-fun res!2594641 () Bool)

(declare-fun e!3825618 () Bool)

(assert (=> d!1974370 (=> res!2594641 e!3825618)))

(assert (=> d!1974370 (= res!2594641 ((_ is ElementMatch!16213) lt!2357281))))

(assert (=> d!1974370 (= (validRegex!7949 lt!2357281) e!3825618)))

(declare-fun b!6291562 () Bool)

(declare-fun res!2594643 () Bool)

(declare-fun e!3825619 () Bool)

(assert (=> b!6291562 (=> res!2594643 e!3825619)))

(assert (=> b!6291562 (= res!2594643 (not ((_ is Concat!25058) lt!2357281)))))

(declare-fun e!3825615 () Bool)

(assert (=> b!6291562 (= e!3825615 e!3825619)))

(declare-fun c!1141803 () Bool)

(declare-fun c!1141804 () Bool)

(declare-fun call!532786 () Bool)

(declare-fun bm!532779 () Bool)

(assert (=> bm!532779 (= call!532786 (validRegex!7949 (ite c!1141804 (reg!16542 lt!2357281) (ite c!1141803 (regTwo!32939 lt!2357281) (regTwo!32938 lt!2357281)))))))

(declare-fun b!6291563 () Bool)

(declare-fun e!3825617 () Bool)

(assert (=> b!6291563 (= e!3825617 e!3825615)))

(assert (=> b!6291563 (= c!1141803 ((_ is Union!16213) lt!2357281))))

(declare-fun bm!532780 () Bool)

(declare-fun call!532785 () Bool)

(assert (=> bm!532780 (= call!532785 call!532786)))

(declare-fun b!6291564 () Bool)

(declare-fun e!3825621 () Bool)

(assert (=> b!6291564 (= e!3825617 e!3825621)))

(declare-fun res!2594644 () Bool)

(assert (=> b!6291564 (= res!2594644 (not (nullable!6206 (reg!16542 lt!2357281))))))

(assert (=> b!6291564 (=> (not res!2594644) (not e!3825621))))

(declare-fun b!6291565 () Bool)

(assert (=> b!6291565 (= e!3825618 e!3825617)))

(assert (=> b!6291565 (= c!1141804 ((_ is Star!16213) lt!2357281))))

(declare-fun b!6291566 () Bool)

(declare-fun res!2594642 () Bool)

(declare-fun e!3825616 () Bool)

(assert (=> b!6291566 (=> (not res!2594642) (not e!3825616))))

(declare-fun call!532784 () Bool)

(assert (=> b!6291566 (= res!2594642 call!532784)))

(assert (=> b!6291566 (= e!3825615 e!3825616)))

(declare-fun bm!532781 () Bool)

(assert (=> bm!532781 (= call!532784 (validRegex!7949 (ite c!1141803 (regOne!32939 lt!2357281) (regOne!32938 lt!2357281))))))

(declare-fun b!6291567 () Bool)

(assert (=> b!6291567 (= e!3825621 call!532786)))

(declare-fun b!6291568 () Bool)

(declare-fun e!3825620 () Bool)

(assert (=> b!6291568 (= e!3825619 e!3825620)))

(declare-fun res!2594640 () Bool)

(assert (=> b!6291568 (=> (not res!2594640) (not e!3825620))))

(assert (=> b!6291568 (= res!2594640 call!532784)))

(declare-fun b!6291569 () Bool)

(assert (=> b!6291569 (= e!3825620 call!532785)))

(declare-fun b!6291570 () Bool)

(assert (=> b!6291570 (= e!3825616 call!532785)))

(assert (= (and d!1974370 (not res!2594641)) b!6291565))

(assert (= (and b!6291565 c!1141804) b!6291564))

(assert (= (and b!6291565 (not c!1141804)) b!6291563))

(assert (= (and b!6291564 res!2594644) b!6291567))

(assert (= (and b!6291563 c!1141803) b!6291566))

(assert (= (and b!6291563 (not c!1141803)) b!6291562))

(assert (= (and b!6291566 res!2594642) b!6291570))

(assert (= (and b!6291562 (not res!2594643)) b!6291568))

(assert (= (and b!6291568 res!2594640) b!6291569))

(assert (= (or b!6291570 b!6291569) bm!532780))

(assert (= (or b!6291566 b!6291568) bm!532781))

(assert (= (or b!6291567 bm!532780) bm!532779))

(declare-fun m!7112144 () Bool)

(assert (=> bm!532779 m!7112144))

(declare-fun m!7112146 () Bool)

(assert (=> b!6291564 m!7112146))

(declare-fun m!7112148 () Bool)

(assert (=> bm!532781 m!7112148))

(assert (=> d!1974054 d!1974370))

(assert (=> d!1974054 d!1973900))

(assert (=> d!1974054 d!1973910))

(declare-fun bs!1572584 () Bool)

(declare-fun d!1974372 () Bool)

(assert (= bs!1572584 (and d!1974372 d!1974166)))

(declare-fun lambda!345639 () Int)

(assert (=> bs!1572584 (= lambda!345639 lambda!345614)))

(declare-fun bs!1572585 () Bool)

(assert (= bs!1572585 (and d!1974372 d!1974360)))

(assert (=> bs!1572585 (= lambda!345639 lambda!345637)))

(declare-fun bs!1572586 () Bool)

(assert (= bs!1572586 (and d!1974372 d!1974158)))

(assert (=> bs!1572586 (not (= lambda!345639 lambda!345608))))

(declare-fun bs!1572587 () Bool)

(assert (= bs!1572587 (and d!1974372 b!6290783)))

(assert (=> bs!1572587 (not (= lambda!345639 lambda!345590))))

(declare-fun bs!1572588 () Bool)

(assert (= bs!1572588 (and d!1974372 d!1974354)))

(assert (=> bs!1572588 (= lambda!345639 lambda!345635)))

(declare-fun bs!1572589 () Bool)

(assert (= bs!1572589 (and d!1974372 b!6291144)))

(assert (=> bs!1572589 (not (= lambda!345639 lambda!345611))))

(declare-fun bs!1572590 () Bool)

(assert (= bs!1572590 (and d!1974372 b!6291142)))

(assert (=> bs!1572590 (not (= lambda!345639 lambda!345610))))

(declare-fun bs!1572591 () Bool)

(assert (= bs!1572591 (and d!1974372 b!6290786)))

(assert (=> bs!1572591 (not (= lambda!345639 lambda!345592))))

(declare-fun bs!1572592 () Bool)

(assert (= bs!1572592 (and d!1974372 d!1974208)))

(assert (=> bs!1572592 (= lambda!345639 lambda!345619)))

(declare-fun bs!1572593 () Bool)

(assert (= bs!1572593 (and d!1974372 b!6290788)))

(assert (=> bs!1572593 (not (= lambda!345639 lambda!345593))))

(declare-fun bs!1572594 () Bool)

(assert (= bs!1572594 (and d!1974372 b!6290781)))

(assert (=> bs!1572594 (not (= lambda!345639 lambda!345589))))

(assert (=> d!1974372 (= (nullableZipper!1983 lt!2357075) (exists!2528 lt!2357075 lambda!345639))))

(declare-fun bs!1572595 () Bool)

(assert (= bs!1572595 d!1974372))

(declare-fun m!7112150 () Bool)

(assert (=> bs!1572595 m!7112150))

(assert (=> b!6290958 d!1974372))

(declare-fun d!1974374 () Bool)

(assert (=> d!1974374 (= (nullable!6206 (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))) (nullableFct!2157 (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun bs!1572596 () Bool)

(assert (= bs!1572596 d!1974374))

(declare-fun m!7112152 () Bool)

(assert (=> bs!1572596 m!7112152))

(assert (=> b!6290844 d!1974374))

(declare-fun d!1974376 () Bool)

(assert (=> d!1974376 (= (head!12926 lt!2357060) (h!71263 lt!2357060))))

(assert (=> b!6290707 d!1974376))

(declare-fun d!1974378 () Bool)

(assert (=> d!1974378 (= (flatMap!1718 lt!2357069 lambda!345557) (choose!46746 lt!2357069 lambda!345557))))

(declare-fun bs!1572597 () Bool)

(assert (= bs!1572597 d!1974378))

(declare-fun m!7112154 () Bool)

(assert (=> bs!1572597 m!7112154))

(assert (=> d!1973976 d!1974378))

(assert (=> b!6290543 d!1974146))

(assert (=> b!6290723 d!1973994))

(declare-fun bs!1572598 () Bool)

(declare-fun d!1974380 () Bool)

(assert (= bs!1572598 (and d!1974380 d!1974368)))

(declare-fun lambda!345640 () Int)

(assert (=> bs!1572598 (= lambda!345640 lambda!345638)))

(declare-fun bs!1572599 () Bool)

(assert (= bs!1572599 (and d!1974380 b!6291134)))

(assert (=> bs!1572599 (not (= lambda!345640 lambda!345604))))

(declare-fun bs!1572600 () Bool)

(assert (= bs!1572600 (and d!1974380 d!1973998)))

(assert (=> bs!1572600 (= lambda!345640 lambda!345571)))

(declare-fun bs!1572601 () Bool)

(assert (= bs!1572601 (and d!1974380 d!1974034)))

(assert (=> bs!1572601 (= lambda!345640 lambda!345577)))

(declare-fun bs!1572602 () Bool)

(assert (= bs!1572602 (and d!1974380 d!1974314)))

(assert (=> bs!1572602 (= lambda!345640 lambda!345623)))

(declare-fun bs!1572603 () Bool)

(assert (= bs!1572603 (and d!1974380 d!1973900)))

(assert (=> bs!1572603 (= lambda!345640 lambda!345542)))

(declare-fun bs!1572604 () Bool)

(assert (= bs!1572604 (and d!1974380 d!1974050)))

(assert (=> bs!1572604 (= lambda!345640 lambda!345596)))

(declare-fun bs!1572605 () Bool)

(assert (= bs!1572605 (and d!1974380 d!1974004)))

(assert (=> bs!1572605 (= lambda!345640 lambda!345572)))

(declare-fun bs!1572606 () Bool)

(assert (= bs!1572606 (and d!1974380 b!6291136)))

(assert (=> bs!1572606 (not (= lambda!345640 lambda!345605))))

(declare-fun bs!1572607 () Bool)

(assert (= bs!1572607 (and d!1974380 d!1973910)))

(assert (=> bs!1572607 (= lambda!345640 lambda!345546)))

(declare-fun bs!1572608 () Bool)

(assert (= bs!1572608 (and d!1974380 d!1974352)))

(assert (=> bs!1572608 (= lambda!345640 lambda!345634)))

(declare-fun bs!1572609 () Bool)

(assert (= bs!1572609 (and d!1974380 d!1974090)))

(assert (=> bs!1572609 (= lambda!345640 lambda!345599)))

(declare-fun bs!1572610 () Bool)

(assert (= bs!1572610 (and d!1974380 d!1974056)))

(assert (=> bs!1572610 (= lambda!345640 lambda!345597)))

(assert (=> d!1974380 (= (inv!83779 (h!71264 (t!378502 zl!343))) (forall!15362 (exprs!6097 (h!71264 (t!378502 zl!343))) lambda!345640))))

(declare-fun bs!1572611 () Bool)

(assert (= bs!1572611 d!1974380))

(declare-fun m!7112156 () Bool)

(assert (=> bs!1572611 m!7112156))

(assert (=> b!6291014 d!1974380))

(declare-fun d!1974382 () Bool)

(assert (=> d!1974382 (= (isEmpty!36870 (unfocusZipperList!1634 zl!343)) ((_ is Nil!64815) (unfocusZipperList!1634 zl!343)))))

(assert (=> b!6290320 d!1974382))

(declare-fun b!6291581 () Bool)

(declare-fun e!3825633 () Bool)

(assert (=> b!6291581 (= e!3825633 (nullable!6206 (derivativeStep!4922 lt!2357061 (head!12927 s!2326))))))

(declare-fun b!6291582 () Bool)

(declare-fun res!2594649 () Bool)

(declare-fun e!3825630 () Bool)

(assert (=> b!6291582 (=> res!2594649 e!3825630)))

(declare-fun e!3825629 () Bool)

(assert (=> b!6291582 (= res!2594649 e!3825629)))

(declare-fun res!2594652 () Bool)

(assert (=> b!6291582 (=> (not res!2594652) (not e!3825629))))

(declare-fun lt!2357350 () Bool)

(assert (=> b!6291582 (= res!2594652 lt!2357350)))

(declare-fun b!6291583 () Bool)

(assert (=> b!6291583 (= e!3825629 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 lt!2357061 (head!12927 s!2326)))))))

(declare-fun b!6291584 () Bool)

(declare-fun e!3825631 () Bool)

(assert (=> b!6291584 (= e!3825631 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 lt!2357061 (head!12927 s!2326))))))))

(declare-fun d!1974384 () Bool)

(declare-fun e!3825632 () Bool)

(assert (=> d!1974384 e!3825632))

(declare-fun c!1141810 () Bool)

(assert (=> d!1974384 (= c!1141810 ((_ is EmptyExpr!16213) (derivativeStep!4922 lt!2357061 (head!12927 s!2326))))))

(assert (=> d!1974384 (= lt!2357350 e!3825633)))

(declare-fun c!1141811 () Bool)

(assert (=> d!1974384 (= c!1141811 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974384 (validRegex!7949 (derivativeStep!4922 lt!2357061 (head!12927 s!2326)))))

(assert (=> d!1974384 (= (matchR!8396 (derivativeStep!4922 lt!2357061 (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357350)))

(declare-fun b!6291585 () Bool)

(declare-fun e!3825628 () Bool)

(assert (=> b!6291585 (= e!3825628 (not lt!2357350))))

(declare-fun b!6291586 () Bool)

(declare-fun e!3825627 () Bool)

(assert (=> b!6291586 (= e!3825630 e!3825627)))

(declare-fun res!2594651 () Bool)

(assert (=> b!6291586 (=> (not res!2594651) (not e!3825627))))

(assert (=> b!6291586 (= res!2594651 (not lt!2357350))))

(declare-fun bm!532786 () Bool)

(declare-fun call!532791 () Bool)

(assert (=> bm!532786 (= call!532791 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291587 () Bool)

(assert (=> b!6291587 (= e!3825632 (= lt!2357350 call!532791))))

(declare-fun b!6291588 () Bool)

(assert (=> b!6291588 (= e!3825632 e!3825628)))

(declare-fun c!1141812 () Bool)

(assert (=> b!6291588 (= c!1141812 ((_ is EmptyLang!16213) (derivativeStep!4922 lt!2357061 (head!12927 s!2326))))))

(declare-fun b!6291589 () Bool)

(assert (=> b!6291589 (= e!3825627 e!3825631)))

(declare-fun res!2594650 () Bool)

(assert (=> b!6291589 (=> res!2594650 e!3825631)))

(assert (=> b!6291589 (= res!2594650 call!532791)))

(declare-fun b!6291590 () Bool)

(declare-fun res!2594646 () Bool)

(assert (=> b!6291590 (=> (not res!2594646) (not e!3825629))))

(assert (=> b!6291590 (= res!2594646 (not call!532791))))

(declare-fun b!6291591 () Bool)

(declare-fun res!2594645 () Bool)

(assert (=> b!6291591 (=> res!2594645 e!3825630)))

(assert (=> b!6291591 (= res!2594645 (not ((_ is ElementMatch!16213) (derivativeStep!4922 lt!2357061 (head!12927 s!2326)))))))

(assert (=> b!6291591 (= e!3825628 e!3825630)))

(declare-fun b!6291592 () Bool)

(assert (=> b!6291592 (= e!3825633 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 lt!2357061 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291593 () Bool)

(declare-fun res!2594647 () Bool)

(assert (=> b!6291593 (=> (not res!2594647) (not e!3825629))))

(assert (=> b!6291593 (= res!2594647 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6291594 () Bool)

(declare-fun res!2594648 () Bool)

(assert (=> b!6291594 (=> res!2594648 e!3825631)))

(assert (=> b!6291594 (= res!2594648 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974384 c!1141811) b!6291581))

(assert (= (and d!1974384 (not c!1141811)) b!6291592))

(assert (= (and d!1974384 c!1141810) b!6291587))

(assert (= (and d!1974384 (not c!1141810)) b!6291588))

(assert (= (and b!6291588 c!1141812) b!6291585))

(assert (= (and b!6291588 (not c!1141812)) b!6291591))

(assert (= (and b!6291591 (not res!2594645)) b!6291582))

(assert (= (and b!6291582 res!2594652) b!6291590))

(assert (= (and b!6291590 res!2594646) b!6291593))

(assert (= (and b!6291593 res!2594647) b!6291583))

(assert (= (and b!6291582 (not res!2594649)) b!6291586))

(assert (= (and b!6291586 res!2594651) b!6291589))

(assert (= (and b!6291589 (not res!2594650)) b!6291594))

(assert (= (and b!6291594 (not res!2594648)) b!6291584))

(assert (= (or b!6291587 b!6291589 b!6291590) bm!532786))

(assert (=> bm!532786 m!7111086))

(assert (=> bm!532786 m!7111090))

(assert (=> b!6291592 m!7111086))

(assert (=> b!6291592 m!7111620))

(assert (=> b!6291592 m!7111320))

(assert (=> b!6291592 m!7111620))

(declare-fun m!7112162 () Bool)

(assert (=> b!6291592 m!7112162))

(assert (=> b!6291592 m!7111086))

(assert (=> b!6291592 m!7111624))

(assert (=> b!6291592 m!7112162))

(assert (=> b!6291592 m!7111624))

(declare-fun m!7112168 () Bool)

(assert (=> b!6291592 m!7112168))

(assert (=> b!6291584 m!7111086))

(assert (=> b!6291584 m!7111620))

(assert (=> b!6291594 m!7111086))

(assert (=> b!6291594 m!7111624))

(assert (=> b!6291594 m!7111624))

(assert (=> b!6291594 m!7111628))

(assert (=> b!6291581 m!7111320))

(declare-fun m!7112170 () Bool)

(assert (=> b!6291581 m!7112170))

(assert (=> b!6291583 m!7111086))

(assert (=> b!6291583 m!7111620))

(assert (=> b!6291593 m!7111086))

(assert (=> b!6291593 m!7111624))

(assert (=> b!6291593 m!7111624))

(assert (=> b!6291593 m!7111628))

(assert (=> d!1974384 m!7111086))

(assert (=> d!1974384 m!7111090))

(assert (=> d!1974384 m!7111320))

(declare-fun m!7112172 () Bool)

(assert (=> d!1974384 m!7112172))

(assert (=> b!6290751 d!1974384))

(declare-fun b!6291595 () Bool)

(declare-fun e!3825635 () Regex!16213)

(declare-fun e!3825638 () Regex!16213)

(assert (=> b!6291595 (= e!3825635 e!3825638)))

(declare-fun c!1141817 () Bool)

(assert (=> b!6291595 (= c!1141817 ((_ is Star!16213) lt!2357061))))

(declare-fun b!6291596 () Bool)

(declare-fun e!3825636 () Regex!16213)

(declare-fun call!532795 () Regex!16213)

(assert (=> b!6291596 (= e!3825636 (Union!16213 (Concat!25058 call!532795 (regTwo!32938 lt!2357061)) EmptyLang!16213))))

(declare-fun b!6291597 () Bool)

(declare-fun call!532793 () Regex!16213)

(assert (=> b!6291597 (= e!3825638 (Concat!25058 call!532793 lt!2357061))))

(declare-fun b!6291598 () Bool)

(declare-fun e!3825634 () Regex!16213)

(assert (=> b!6291598 (= e!3825634 EmptyLang!16213)))

(declare-fun c!1141814 () Bool)

(declare-fun bm!532787 () Bool)

(declare-fun call!532794 () Regex!16213)

(assert (=> bm!532787 (= call!532794 (derivativeStep!4922 (ite c!1141814 (regTwo!32939 lt!2357061) (regOne!32938 lt!2357061)) (head!12927 s!2326)))))

(declare-fun b!6291599 () Bool)

(declare-fun call!532792 () Regex!16213)

(assert (=> b!6291599 (= e!3825635 (Union!16213 call!532792 call!532794))))

(declare-fun bm!532788 () Bool)

(assert (=> bm!532788 (= call!532793 call!532792)))

(declare-fun b!6291600 () Bool)

(declare-fun e!3825637 () Regex!16213)

(assert (=> b!6291600 (= e!3825637 (ite (= (head!12927 s!2326) (c!1141284 lt!2357061)) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6291601 () Bool)

(assert (=> b!6291601 (= e!3825634 e!3825637)))

(declare-fun c!1141813 () Bool)

(assert (=> b!6291601 (= c!1141813 ((_ is ElementMatch!16213) lt!2357061))))

(declare-fun bm!532789 () Bool)

(declare-fun c!1141815 () Bool)

(assert (=> bm!532789 (= call!532792 (derivativeStep!4922 (ite c!1141814 (regOne!32939 lt!2357061) (ite c!1141817 (reg!16542 lt!2357061) (ite c!1141815 (regTwo!32938 lt!2357061) (regOne!32938 lt!2357061)))) (head!12927 s!2326)))))

(declare-fun b!6291602 () Bool)

(assert (=> b!6291602 (= c!1141814 ((_ is Union!16213) lt!2357061))))

(assert (=> b!6291602 (= e!3825637 e!3825635)))

(declare-fun bm!532790 () Bool)

(assert (=> bm!532790 (= call!532795 call!532793)))

(declare-fun b!6291603 () Bool)

(assert (=> b!6291603 (= c!1141815 (nullable!6206 (regOne!32938 lt!2357061)))))

(assert (=> b!6291603 (= e!3825638 e!3825636)))

(declare-fun d!1974388 () Bool)

(declare-fun lt!2357351 () Regex!16213)

(assert (=> d!1974388 (validRegex!7949 lt!2357351)))

(assert (=> d!1974388 (= lt!2357351 e!3825634)))

(declare-fun c!1141816 () Bool)

(assert (=> d!1974388 (= c!1141816 (or ((_ is EmptyExpr!16213) lt!2357061) ((_ is EmptyLang!16213) lt!2357061)))))

(assert (=> d!1974388 (validRegex!7949 lt!2357061)))

(assert (=> d!1974388 (= (derivativeStep!4922 lt!2357061 (head!12927 s!2326)) lt!2357351)))

(declare-fun b!6291604 () Bool)

(assert (=> b!6291604 (= e!3825636 (Union!16213 (Concat!25058 call!532794 (regTwo!32938 lt!2357061)) call!532795))))

(assert (= (and d!1974388 c!1141816) b!6291598))

(assert (= (and d!1974388 (not c!1141816)) b!6291601))

(assert (= (and b!6291601 c!1141813) b!6291600))

(assert (= (and b!6291601 (not c!1141813)) b!6291602))

(assert (= (and b!6291602 c!1141814) b!6291599))

(assert (= (and b!6291602 (not c!1141814)) b!6291595))

(assert (= (and b!6291595 c!1141817) b!6291597))

(assert (= (and b!6291595 (not c!1141817)) b!6291603))

(assert (= (and b!6291603 c!1141815) b!6291604))

(assert (= (and b!6291603 (not c!1141815)) b!6291596))

(assert (= (or b!6291604 b!6291596) bm!532790))

(assert (= (or b!6291597 bm!532790) bm!532788))

(assert (= (or b!6291599 b!6291604) bm!532787))

(assert (= (or b!6291599 bm!532788) bm!532789))

(assert (=> bm!532787 m!7111082))

(declare-fun m!7112174 () Bool)

(assert (=> bm!532787 m!7112174))

(assert (=> bm!532789 m!7111082))

(declare-fun m!7112176 () Bool)

(assert (=> bm!532789 m!7112176))

(declare-fun m!7112178 () Bool)

(assert (=> b!6291603 m!7112178))

(declare-fun m!7112180 () Bool)

(assert (=> d!1974388 m!7112180))

(assert (=> d!1974388 m!7111316))

(assert (=> b!6290751 d!1974388))

(assert (=> b!6290751 d!1974146))

(assert (=> b!6290751 d!1974130))

(declare-fun b!6291605 () Bool)

(declare-fun e!3825641 () Bool)

(assert (=> b!6291605 (= e!3825641 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))))))

(declare-fun b!6291606 () Bool)

(declare-fun e!3825639 () (InoxSet Context!11194))

(assert (=> b!6291606 (= e!3825639 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291607 () Bool)

(declare-fun call!532796 () (InoxSet Context!11194))

(assert (=> b!6291607 (= e!3825639 call!532796)))

(declare-fun e!3825640 () (InoxSet Context!11194))

(declare-fun b!6291608 () Bool)

(assert (=> b!6291608 (= e!3825640 ((_ map or) call!532796 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))) (h!71262 s!2326))))))

(declare-fun d!1974392 () Bool)

(declare-fun c!1141818 () Bool)

(assert (=> d!1974392 (= c!1141818 e!3825641)))

(declare-fun res!2594653 () Bool)

(assert (=> d!1974392 (=> (not res!2594653) (not e!3825641))))

(assert (=> d!1974392 (= res!2594653 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))))

(assert (=> d!1974392 (= (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (h!71262 s!2326)) e!3825640)))

(declare-fun bm!532791 () Bool)

(assert (=> bm!532791 (= call!532796 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))))))) (h!71262 s!2326)))))

(declare-fun b!6291609 () Bool)

(assert (=> b!6291609 (= e!3825640 e!3825639)))

(declare-fun c!1141819 () Bool)

(assert (=> b!6291609 (= c!1141819 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))))

(assert (= (and d!1974392 res!2594653) b!6291605))

(assert (= (and d!1974392 c!1141818) b!6291608))

(assert (= (and d!1974392 (not c!1141818)) b!6291609))

(assert (= (and b!6291609 c!1141819) b!6291607))

(assert (= (and b!6291609 (not c!1141819)) b!6291606))

(assert (= (or b!6291608 b!6291607) bm!532791))

(declare-fun m!7112182 () Bool)

(assert (=> b!6291605 m!7112182))

(declare-fun m!7112184 () Bool)

(assert (=> b!6291608 m!7112184))

(declare-fun m!7112186 () Bool)

(assert (=> bm!532791 m!7112186))

(assert (=> b!6290883 d!1974392))

(declare-fun d!1974396 () Bool)

(assert (=> d!1974396 (= (Exists!3283 lambda!345560) (choose!46739 lambda!345560))))

(declare-fun bs!1572612 () Bool)

(assert (= bs!1572612 d!1974396))

(declare-fun m!7112188 () Bool)

(assert (=> bs!1572612 m!7112188))

(assert (=> d!1973988 d!1974396))

(assert (=> d!1973988 d!1973982))

(declare-fun d!1974398 () Bool)

(declare-fun res!2594656 () Bool)

(declare-fun e!3825647 () Bool)

(assert (=> d!1974398 (=> res!2594656 e!3825647)))

(assert (=> d!1974398 (= res!2594656 ((_ is ElementMatch!16213) (regOne!32938 r!7292)))))

(assert (=> d!1974398 (= (validRegex!7949 (regOne!32938 r!7292)) e!3825647)))

(declare-fun b!6291613 () Bool)

(declare-fun res!2594658 () Bool)

(declare-fun e!3825648 () Bool)

(assert (=> b!6291613 (=> res!2594658 e!3825648)))

(assert (=> b!6291613 (= res!2594658 (not ((_ is Concat!25058) (regOne!32938 r!7292))))))

(declare-fun e!3825644 () Bool)

(assert (=> b!6291613 (= e!3825644 e!3825648)))

(declare-fun c!1141821 () Bool)

(declare-fun c!1141822 () Bool)

(declare-fun call!532799 () Bool)

(declare-fun bm!532792 () Bool)

(assert (=> bm!532792 (= call!532799 (validRegex!7949 (ite c!1141822 (reg!16542 (regOne!32938 r!7292)) (ite c!1141821 (regTwo!32939 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6291614 () Bool)

(declare-fun e!3825646 () Bool)

(assert (=> b!6291614 (= e!3825646 e!3825644)))

(assert (=> b!6291614 (= c!1141821 ((_ is Union!16213) (regOne!32938 r!7292)))))

(declare-fun bm!532793 () Bool)

(declare-fun call!532798 () Bool)

(assert (=> bm!532793 (= call!532798 call!532799)))

(declare-fun b!6291615 () Bool)

(declare-fun e!3825650 () Bool)

(assert (=> b!6291615 (= e!3825646 e!3825650)))

(declare-fun res!2594659 () Bool)

(assert (=> b!6291615 (= res!2594659 (not (nullable!6206 (reg!16542 (regOne!32938 r!7292)))))))

(assert (=> b!6291615 (=> (not res!2594659) (not e!3825650))))

(declare-fun b!6291616 () Bool)

(assert (=> b!6291616 (= e!3825647 e!3825646)))

(assert (=> b!6291616 (= c!1141822 ((_ is Star!16213) (regOne!32938 r!7292)))))

(declare-fun b!6291617 () Bool)

(declare-fun res!2594657 () Bool)

(declare-fun e!3825645 () Bool)

(assert (=> b!6291617 (=> (not res!2594657) (not e!3825645))))

(declare-fun call!532797 () Bool)

(assert (=> b!6291617 (= res!2594657 call!532797)))

(assert (=> b!6291617 (= e!3825644 e!3825645)))

(declare-fun bm!532794 () Bool)

(assert (=> bm!532794 (= call!532797 (validRegex!7949 (ite c!1141821 (regOne!32939 (regOne!32938 r!7292)) (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6291618 () Bool)

(assert (=> b!6291618 (= e!3825650 call!532799)))

(declare-fun b!6291619 () Bool)

(declare-fun e!3825649 () Bool)

(assert (=> b!6291619 (= e!3825648 e!3825649)))

(declare-fun res!2594655 () Bool)

(assert (=> b!6291619 (=> (not res!2594655) (not e!3825649))))

(assert (=> b!6291619 (= res!2594655 call!532797)))

(declare-fun b!6291620 () Bool)

(assert (=> b!6291620 (= e!3825649 call!532798)))

(declare-fun b!6291621 () Bool)

(assert (=> b!6291621 (= e!3825645 call!532798)))

(assert (= (and d!1974398 (not res!2594656)) b!6291616))

(assert (= (and b!6291616 c!1141822) b!6291615))

(assert (= (and b!6291616 (not c!1141822)) b!6291614))

(assert (= (and b!6291615 res!2594659) b!6291618))

(assert (= (and b!6291614 c!1141821) b!6291617))

(assert (= (and b!6291614 (not c!1141821)) b!6291613))

(assert (= (and b!6291617 res!2594657) b!6291621))

(assert (= (and b!6291613 (not res!2594658)) b!6291619))

(assert (= (and b!6291619 res!2594655) b!6291620))

(assert (= (or b!6291621 b!6291620) bm!532793))

(assert (= (or b!6291617 b!6291619) bm!532794))

(assert (= (or b!6291618 bm!532793) bm!532792))

(declare-fun m!7112190 () Bool)

(assert (=> bm!532792 m!7112190))

(declare-fun m!7112192 () Bool)

(assert (=> b!6291615 m!7112192))

(declare-fun m!7112194 () Bool)

(assert (=> bm!532794 m!7112194))

(assert (=> d!1973988 d!1974398))

(assert (=> d!1973988 d!1973992))

(declare-fun bs!1572617 () Bool)

(declare-fun d!1974400 () Bool)

(assert (= bs!1572617 (and d!1974400 b!6289815)))

(declare-fun lambda!345643 () Int)

(assert (=> bs!1572617 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345643 lambda!345482))))

(declare-fun bs!1572618 () Bool)

(assert (= bs!1572618 (and d!1974400 d!1974040)))

(assert (=> bs!1572618 (not (= lambda!345643 lambda!345579))))

(declare-fun bs!1572619 () Bool)

(assert (= bs!1572619 (and d!1974400 d!1974006)))

(assert (=> bs!1572619 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345643 lambda!345573))))

(declare-fun bs!1572620 () Bool)

(assert (= bs!1572620 (and d!1974400 d!1974334)))

(assert (=> bs!1572620 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345643 lambda!345632))))

(declare-fun bs!1572622 () Bool)

(assert (= bs!1572622 (and d!1974400 d!1974320)))

(assert (=> bs!1572622 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345643 lambda!345628))))

(declare-fun bs!1572624 () Bool)

(assert (= bs!1572624 (and d!1974400 d!1974042)))

(assert (=> bs!1572624 (not (= lambda!345643 lambda!345581))))

(assert (=> bs!1572618 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345643 lambda!345578))))

(declare-fun bs!1572626 () Bool)

(assert (= bs!1572626 (and d!1974400 b!6290728)))

(assert (=> bs!1572626 (not (= lambda!345643 lambda!345576))))

(declare-fun bs!1572628 () Bool)

(assert (= bs!1572628 (and d!1974400 b!6291172)))

(assert (=> bs!1572628 (not (= lambda!345643 lambda!345615))))

(declare-fun bs!1572630 () Bool)

(assert (= bs!1572630 (and d!1974400 b!6291163)))

(assert (=> bs!1572630 (not (= lambda!345643 lambda!345616))))

(assert (=> bs!1572622 (not (= lambda!345643 lambda!345629))))

(declare-fun bs!1572631 () Bool)

(assert (= bs!1572631 (and d!1974400 d!1973990)))

(assert (=> bs!1572631 (= lambda!345643 lambda!345565)))

(assert (=> bs!1572617 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345643 lambda!345484))))

(declare-fun bs!1572632 () Bool)

(assert (= bs!1572632 (and d!1974400 b!6289816)))

(assert (=> bs!1572632 (not (= lambda!345643 lambda!345480))))

(assert (=> bs!1572617 (not (= lambda!345643 lambda!345483))))

(declare-fun bs!1572633 () Bool)

(assert (= bs!1572633 (and d!1974400 d!1973988)))

(assert (=> bs!1572633 (= lambda!345643 lambda!345560)))

(declare-fun bs!1572634 () Bool)

(assert (= bs!1572634 (and d!1974400 b!6290675)))

(assert (=> bs!1572634 (not (= lambda!345643 lambda!345567))))

(assert (=> bs!1572631 (not (= lambda!345643 lambda!345566))))

(declare-fun bs!1572635 () Bool)

(assert (= bs!1572635 (and d!1974400 b!6290457)))

(assert (=> bs!1572635 (not (= lambda!345643 lambda!345553))))

(assert (=> bs!1572617 (not (= lambda!345643 lambda!345485))))

(declare-fun bs!1572636 () Bool)

(assert (= bs!1572636 (and d!1974400 b!6290737)))

(assert (=> bs!1572636 (not (= lambda!345643 lambda!345575))))

(declare-fun bs!1572637 () Bool)

(assert (= bs!1572637 (and d!1974400 d!1974010)))

(assert (=> bs!1572637 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345643 lambda!345574))))

(assert (=> bs!1572624 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345643 lambda!345580))))

(assert (=> bs!1572632 (= lambda!345643 lambda!345479)))

(declare-fun bs!1572638 () Bool)

(assert (= bs!1572638 (and d!1974400 b!6290448)))

(assert (=> bs!1572638 (not (= lambda!345643 lambda!345554))))

(declare-fun bs!1572639 () Bool)

(assert (= bs!1572639 (and d!1974400 b!6290666)))

(assert (=> bs!1572639 (not (= lambda!345643 lambda!345568))))

(declare-fun bs!1572640 () Bool)

(assert (= bs!1572640 (and d!1974400 d!1974356)))

(assert (=> bs!1572640 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345643 lambda!345636))))

(assert (=> d!1974400 true))

(assert (=> d!1974400 true))

(assert (=> d!1974400 true))

(assert (=> d!1974400 (= (isDefined!12807 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326)) (Exists!3283 lambda!345643))))

(assert (=> d!1974400 true))

(declare-fun _$89!2486 () Unit!158183)

(assert (=> d!1974400 (= (choose!46740 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326) _$89!2486)))

(declare-fun bs!1572641 () Bool)

(assert (= bs!1572641 d!1974400))

(assert (=> bs!1572641 m!7110348))

(assert (=> bs!1572641 m!7110348))

(assert (=> bs!1572641 m!7110350))

(declare-fun m!7112208 () Bool)

(assert (=> bs!1572641 m!7112208))

(assert (=> d!1973988 d!1974400))

(assert (=> b!6290867 d!1974128))

(assert (=> b!6290867 d!1974130))

(declare-fun d!1974404 () Bool)

(declare-fun c!1141823 () Bool)

(assert (=> d!1974404 (= c!1141823 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825651 () Bool)

(assert (=> d!1974404 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357085 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825651)))

(declare-fun b!6291622 () Bool)

(assert (=> b!6291622 (= e!3825651 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357085 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291623 () Bool)

(assert (=> b!6291623 (= e!3825651 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357085 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974404 c!1141823) b!6291622))

(assert (= (and d!1974404 (not c!1141823)) b!6291623))

(assert (=> d!1974404 m!7111112))

(assert (=> d!1974404 m!7111724))

(assert (=> b!6291622 m!7111110))

(declare-fun m!7112210 () Bool)

(assert (=> b!6291622 m!7112210))

(assert (=> b!6291623 m!7111112))

(assert (=> b!6291623 m!7111728))

(assert (=> b!6291623 m!7111110))

(assert (=> b!6291623 m!7111728))

(declare-fun m!7112212 () Bool)

(assert (=> b!6291623 m!7112212))

(assert (=> b!6291623 m!7111112))

(assert (=> b!6291623 m!7111732))

(assert (=> b!6291623 m!7112212))

(assert (=> b!6291623 m!7111732))

(declare-fun m!7112214 () Bool)

(assert (=> b!6291623 m!7112214))

(assert (=> b!6290565 d!1974404))

(declare-fun bs!1572642 () Bool)

(declare-fun d!1974406 () Bool)

(assert (= bs!1572642 (and d!1974406 d!1974252)))

(declare-fun lambda!345645 () Int)

(assert (=> bs!1572642 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345645 lambda!345622))))

(declare-fun bs!1572643 () Bool)

(assert (= bs!1572643 (and d!1974406 d!1974064)))

(assert (=> bs!1572643 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345645 lambda!345598))))

(declare-fun bs!1572644 () Bool)

(assert (= bs!1572644 (and d!1974406 d!1974186)))

(assert (=> bs!1572644 (= lambda!345645 lambda!345618)))

(declare-fun bs!1572645 () Bool)

(assert (= bs!1572645 (and d!1974406 d!1974348)))

(assert (=> bs!1572645 (= lambda!345645 lambda!345633)))

(declare-fun bs!1572646 () Bool)

(assert (= bs!1572646 (and d!1974406 d!1974178)))

(assert (=> bs!1572646 (= lambda!345645 lambda!345617)))

(declare-fun bs!1572647 () Bool)

(assert (= bs!1572647 (and d!1974406 d!1973976)))

(assert (=> bs!1572647 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345645 lambda!345557))))

(declare-fun bs!1572648 () Bool)

(assert (= bs!1572648 (and d!1974406 d!1974220)))

(assert (=> bs!1572648 (= lambda!345645 lambda!345620)))

(declare-fun bs!1572649 () Bool)

(assert (= bs!1572649 (and d!1974406 d!1974232)))

(assert (=> bs!1572649 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345645 lambda!345621))))

(declare-fun bs!1572650 () Bool)

(assert (= bs!1572650 (and d!1974406 b!6289808)))

(assert (=> bs!1572650 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345645 lambda!345481))))

(assert (=> d!1974406 true))

(assert (=> d!1974406 (= (derivationStepZipper!2179 lt!2357085 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357085 lambda!345645))))

(declare-fun bs!1572651 () Bool)

(assert (= bs!1572651 d!1974406))

(declare-fun m!7112216 () Bool)

(assert (=> bs!1572651 m!7112216))

(assert (=> b!6290565 d!1974406))

(assert (=> b!6290565 d!1974180))

(assert (=> b!6290565 d!1974182))

(declare-fun d!1974408 () Bool)

(assert (=> d!1974408 (= (isEmpty!36874 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326)) (not ((_ is Some!16103) (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 Nil!64814 s!2326 s!2326))))))

(assert (=> d!1974014 d!1974408))

(declare-fun d!1974410 () Bool)

(assert (=> d!1974410 (= (Exists!3283 lambda!345578) (choose!46739 lambda!345578))))

(declare-fun bs!1572652 () Bool)

(assert (= bs!1572652 d!1974410))

(declare-fun m!7112218 () Bool)

(assert (=> bs!1572652 m!7112218))

(assert (=> d!1974040 d!1974410))

(declare-fun d!1974412 () Bool)

(assert (=> d!1974412 (= (Exists!3283 lambda!345579) (choose!46739 lambda!345579))))

(declare-fun bs!1572653 () Bool)

(assert (= bs!1572653 d!1974412))

(declare-fun m!7112220 () Bool)

(assert (=> bs!1572653 m!7112220))

(assert (=> d!1974040 d!1974412))

(declare-fun bs!1572654 () Bool)

(declare-fun d!1974414 () Bool)

(assert (= bs!1572654 (and d!1974414 b!6289815)))

(declare-fun lambda!345646 () Int)

(assert (=> bs!1572654 (= lambda!345646 lambda!345482)))

(declare-fun bs!1572655 () Bool)

(assert (= bs!1572655 (and d!1974414 d!1974040)))

(assert (=> bs!1572655 (not (= lambda!345646 lambda!345579))))

(declare-fun bs!1572656 () Bool)

(assert (= bs!1572656 (and d!1974414 d!1974006)))

(assert (=> bs!1572656 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345646 lambda!345573))))

(declare-fun bs!1572657 () Bool)

(assert (= bs!1572657 (and d!1974414 d!1974334)))

(assert (=> bs!1572657 (= lambda!345646 lambda!345632)))

(declare-fun bs!1572658 () Bool)

(assert (= bs!1572658 (and d!1974414 d!1974320)))

(assert (=> bs!1572658 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345646 lambda!345628))))

(declare-fun bs!1572659 () Bool)

(assert (= bs!1572659 (and d!1974414 d!1974042)))

(assert (=> bs!1572659 (not (= lambda!345646 lambda!345581))))

(assert (=> bs!1572655 (= lambda!345646 lambda!345578)))

(declare-fun bs!1572660 () Bool)

(assert (= bs!1572660 (and d!1974414 b!6290728)))

(assert (=> bs!1572660 (not (= lambda!345646 lambda!345576))))

(declare-fun bs!1572661 () Bool)

(assert (= bs!1572661 (and d!1974414 b!6291172)))

(assert (=> bs!1572661 (not (= lambda!345646 lambda!345615))))

(declare-fun bs!1572662 () Bool)

(assert (= bs!1572662 (and d!1974414 b!6291163)))

(assert (=> bs!1572662 (not (= lambda!345646 lambda!345616))))

(assert (=> bs!1572658 (not (= lambda!345646 lambda!345629))))

(declare-fun bs!1572663 () Bool)

(assert (= bs!1572663 (and d!1974414 d!1973990)))

(assert (=> bs!1572663 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345646 lambda!345565))))

(assert (=> bs!1572654 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345646 lambda!345484))))

(declare-fun bs!1572664 () Bool)

(assert (= bs!1572664 (and d!1974414 b!6289816)))

(assert (=> bs!1572664 (not (= lambda!345646 lambda!345480))))

(assert (=> bs!1572654 (not (= lambda!345646 lambda!345483))))

(declare-fun bs!1572665 () Bool)

(assert (= bs!1572665 (and d!1974414 d!1973988)))

(assert (=> bs!1572665 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345646 lambda!345560))))

(declare-fun bs!1572666 () Bool)

(assert (= bs!1572666 (and d!1974414 b!6290675)))

(assert (=> bs!1572666 (not (= lambda!345646 lambda!345567))))

(assert (=> bs!1572663 (not (= lambda!345646 lambda!345566))))

(declare-fun bs!1572667 () Bool)

(assert (= bs!1572667 (and d!1974414 b!6290457)))

(assert (=> bs!1572667 (not (= lambda!345646 lambda!345553))))

(assert (=> bs!1572654 (not (= lambda!345646 lambda!345485))))

(declare-fun bs!1572668 () Bool)

(assert (= bs!1572668 (and d!1974414 d!1974400)))

(assert (=> bs!1572668 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345646 lambda!345643))))

(declare-fun bs!1572669 () Bool)

(assert (= bs!1572669 (and d!1974414 b!6290737)))

(assert (=> bs!1572669 (not (= lambda!345646 lambda!345575))))

(declare-fun bs!1572670 () Bool)

(assert (= bs!1572670 (and d!1974414 d!1974010)))

(assert (=> bs!1572670 (= lambda!345646 lambda!345574)))

(assert (=> bs!1572659 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345646 lambda!345580))))

(assert (=> bs!1572664 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345646 lambda!345479))))

(declare-fun bs!1572671 () Bool)

(assert (= bs!1572671 (and d!1974414 b!6290448)))

(assert (=> bs!1572671 (not (= lambda!345646 lambda!345554))))

(declare-fun bs!1572672 () Bool)

(assert (= bs!1572672 (and d!1974414 b!6290666)))

(assert (=> bs!1572672 (not (= lambda!345646 lambda!345568))))

(declare-fun bs!1572673 () Bool)

(assert (= bs!1572673 (and d!1974414 d!1974356)))

(assert (=> bs!1572673 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345646 lambda!345636))))

(assert (=> d!1974414 true))

(assert (=> d!1974414 true))

(assert (=> d!1974414 true))

(declare-fun lambda!345647 () Int)

(assert (=> bs!1572654 (not (= lambda!345647 lambda!345482))))

(assert (=> bs!1572656 (not (= lambda!345647 lambda!345573))))

(assert (=> bs!1572657 (not (= lambda!345647 lambda!345632))))

(assert (=> bs!1572658 (not (= lambda!345647 lambda!345628))))

(assert (=> bs!1572659 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345647 lambda!345581))))

(assert (=> bs!1572655 (not (= lambda!345647 lambda!345578))))

(assert (=> bs!1572660 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357070)) (= lt!2357070 (regTwo!32938 lt!2357070))) (= lambda!345647 lambda!345576))))

(assert (=> bs!1572661 (not (= lambda!345647 lambda!345615))))

(assert (=> bs!1572662 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 (regOne!32939 lt!2357061))) (= lt!2357070 (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345647 lambda!345616))))

(assert (=> bs!1572658 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345647 lambda!345629))))

(assert (=> bs!1572663 (not (= lambda!345647 lambda!345565))))

(assert (=> bs!1572654 (not (= lambda!345647 lambda!345484))))

(assert (=> bs!1572664 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345647 lambda!345480))))

(assert (=> bs!1572654 (= lambda!345647 lambda!345483)))

(assert (=> bs!1572665 (not (= lambda!345647 lambda!345560))))

(assert (=> bs!1572666 (not (= lambda!345647 lambda!345567))))

(assert (=> bs!1572663 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345647 lambda!345566))))

(assert (=> bs!1572667 (not (= lambda!345647 lambda!345553))))

(assert (=> bs!1572654 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= lt!2357070 lt!2357053)) (= lambda!345647 lambda!345485))))

(assert (=> bs!1572668 (not (= lambda!345647 lambda!345643))))

(assert (=> bs!1572669 (not (= lambda!345647 lambda!345575))))

(assert (=> bs!1572655 (= lambda!345647 lambda!345579)))

(declare-fun bs!1572674 () Bool)

(assert (= bs!1572674 d!1974414))

(assert (=> bs!1572674 (not (= lambda!345647 lambda!345646))))

(assert (=> bs!1572670 (not (= lambda!345647 lambda!345574))))

(assert (=> bs!1572659 (not (= lambda!345647 lambda!345580))))

(assert (=> bs!1572664 (not (= lambda!345647 lambda!345479))))

(assert (=> bs!1572671 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 r!7292)) (= lt!2357070 (regTwo!32938 r!7292))) (= lambda!345647 lambda!345554))))

(assert (=> bs!1572672 (= (and (= (regOne!32938 (regOne!32938 r!7292)) (regOne!32938 lt!2357061)) (= lt!2357070 (regTwo!32938 lt!2357061))) (= lambda!345647 lambda!345568))))

(assert (=> bs!1572673 (not (= lambda!345647 lambda!345636))))

(assert (=> d!1974414 true))

(assert (=> d!1974414 true))

(assert (=> d!1974414 true))

(assert (=> d!1974414 (= (Exists!3283 lambda!345646) (Exists!3283 lambda!345647))))

(assert (=> d!1974414 true))

(declare-fun _$90!2109 () Unit!158183)

(assert (=> d!1974414 (= (choose!46741 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 s!2326) _$90!2109)))

(declare-fun m!7112222 () Bool)

(assert (=> bs!1572674 m!7112222))

(declare-fun m!7112224 () Bool)

(assert (=> bs!1572674 m!7112224))

(assert (=> d!1974040 d!1974414))

(assert (=> d!1974040 d!1974242))

(declare-fun bs!1572675 () Bool)

(declare-fun b!6291634 () Bool)

(assert (= bs!1572675 (and b!6291634 b!6289815)))

(declare-fun lambda!345648 () Int)

(assert (=> bs!1572675 (not (= lambda!345648 lambda!345482))))

(declare-fun bs!1572676 () Bool)

(assert (= bs!1572676 (and b!6291634 d!1974006)))

(assert (=> bs!1572676 (not (= lambda!345648 lambda!345573))))

(declare-fun bs!1572677 () Bool)

(assert (= bs!1572677 (and b!6291634 d!1974334)))

(assert (=> bs!1572677 (not (= lambda!345648 lambda!345632))))

(declare-fun bs!1572678 () Bool)

(assert (= bs!1572678 (and b!6291634 d!1974320)))

(assert (=> bs!1572678 (not (= lambda!345648 lambda!345628))))

(declare-fun bs!1572679 () Bool)

(assert (= bs!1572679 (and b!6291634 d!1974042)))

(assert (=> bs!1572679 (not (= lambda!345648 lambda!345581))))

(declare-fun bs!1572680 () Bool)

(assert (= bs!1572680 (and b!6291634 d!1974040)))

(assert (=> bs!1572680 (not (= lambda!345648 lambda!345578))))

(declare-fun bs!1572681 () Bool)

(assert (= bs!1572681 (and b!6291634 b!6290728)))

(assert (=> bs!1572681 (not (= lambda!345648 lambda!345576))))

(declare-fun bs!1572682 () Bool)

(assert (= bs!1572682 (and b!6291634 b!6291172)))

(assert (=> bs!1572682 (= (and (= (reg!16542 (regTwo!32939 lt!2357070)) (reg!16542 (regOne!32939 lt!2357061))) (= (regTwo!32939 lt!2357070) (regOne!32939 lt!2357061))) (= lambda!345648 lambda!345615))))

(declare-fun bs!1572683 () Bool)

(assert (= bs!1572683 (and b!6291634 b!6291163)))

(assert (=> bs!1572683 (not (= lambda!345648 lambda!345616))))

(assert (=> bs!1572678 (not (= lambda!345648 lambda!345629))))

(declare-fun bs!1572684 () Bool)

(assert (= bs!1572684 (and b!6291634 d!1973990)))

(assert (=> bs!1572684 (not (= lambda!345648 lambda!345565))))

(assert (=> bs!1572675 (not (= lambda!345648 lambda!345484))))

(declare-fun bs!1572685 () Bool)

(assert (= bs!1572685 (and b!6291634 b!6289816)))

(assert (=> bs!1572685 (not (= lambda!345648 lambda!345480))))

(assert (=> bs!1572675 (not (= lambda!345648 lambda!345483))))

(declare-fun bs!1572686 () Bool)

(assert (= bs!1572686 (and b!6291634 d!1973988)))

(assert (=> bs!1572686 (not (= lambda!345648 lambda!345560))))

(declare-fun bs!1572687 () Bool)

(assert (= bs!1572687 (and b!6291634 b!6290675)))

(assert (=> bs!1572687 (= (and (= (reg!16542 (regTwo!32939 lt!2357070)) (reg!16542 lt!2357061)) (= (regTwo!32939 lt!2357070) lt!2357061)) (= lambda!345648 lambda!345567))))

(assert (=> bs!1572684 (not (= lambda!345648 lambda!345566))))

(declare-fun bs!1572688 () Bool)

(assert (= bs!1572688 (and b!6291634 b!6290457)))

(assert (=> bs!1572688 (= (and (= (reg!16542 (regTwo!32939 lt!2357070)) (reg!16542 r!7292)) (= (regTwo!32939 lt!2357070) r!7292)) (= lambda!345648 lambda!345553))))

(declare-fun bs!1572689 () Bool)

(assert (= bs!1572689 (and b!6291634 d!1974400)))

(assert (=> bs!1572689 (not (= lambda!345648 lambda!345643))))

(declare-fun bs!1572690 () Bool)

(assert (= bs!1572690 (and b!6291634 b!6290737)))

(assert (=> bs!1572690 (= (and (= (reg!16542 (regTwo!32939 lt!2357070)) (reg!16542 lt!2357070)) (= (regTwo!32939 lt!2357070) lt!2357070)) (= lambda!345648 lambda!345575))))

(assert (=> bs!1572680 (not (= lambda!345648 lambda!345579))))

(declare-fun bs!1572691 () Bool)

(assert (= bs!1572691 (and b!6291634 d!1974414)))

(assert (=> bs!1572691 (not (= lambda!345648 lambda!345646))))

(declare-fun bs!1572692 () Bool)

(assert (= bs!1572692 (and b!6291634 d!1974010)))

(assert (=> bs!1572692 (not (= lambda!345648 lambda!345574))))

(assert (=> bs!1572679 (not (= lambda!345648 lambda!345580))))

(assert (=> bs!1572685 (not (= lambda!345648 lambda!345479))))

(declare-fun bs!1572693 () Bool)

(assert (= bs!1572693 (and b!6291634 b!6290448)))

(assert (=> bs!1572693 (not (= lambda!345648 lambda!345554))))

(declare-fun bs!1572694 () Bool)

(assert (= bs!1572694 (and b!6291634 b!6290666)))

(assert (=> bs!1572694 (not (= lambda!345648 lambda!345568))))

(declare-fun bs!1572695 () Bool)

(assert (= bs!1572695 (and b!6291634 d!1974356)))

(assert (=> bs!1572695 (not (= lambda!345648 lambda!345636))))

(assert (=> bs!1572691 (not (= lambda!345648 lambda!345647))))

(assert (=> bs!1572675 (not (= lambda!345648 lambda!345485))))

(assert (=> b!6291634 true))

(assert (=> b!6291634 true))

(declare-fun bs!1572696 () Bool)

(declare-fun b!6291625 () Bool)

(assert (= bs!1572696 (and b!6291625 b!6289815)))

(declare-fun lambda!345649 () Int)

(assert (=> bs!1572696 (not (= lambda!345649 lambda!345482))))

(declare-fun bs!1572697 () Bool)

(assert (= bs!1572697 (and b!6291625 d!1974006)))

(assert (=> bs!1572697 (not (= lambda!345649 lambda!345573))))

(declare-fun bs!1572698 () Bool)

(assert (= bs!1572698 (and b!6291625 d!1974334)))

(assert (=> bs!1572698 (not (= lambda!345649 lambda!345632))))

(declare-fun bs!1572699 () Bool)

(assert (= bs!1572699 (and b!6291625 d!1974320)))

(assert (=> bs!1572699 (not (= lambda!345649 lambda!345628))))

(declare-fun bs!1572700 () Bool)

(assert (= bs!1572700 (and b!6291625 d!1974042)))

(assert (=> bs!1572700 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357053)) (= lambda!345649 lambda!345581))))

(declare-fun bs!1572701 () Bool)

(assert (= bs!1572701 (and b!6291625 d!1974040)))

(assert (=> bs!1572701 (not (= lambda!345649 lambda!345578))))

(declare-fun bs!1572702 () Bool)

(assert (= bs!1572702 (and b!6291625 b!6290728)))

(assert (=> bs!1572702 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 lt!2357070))) (= lambda!345649 lambda!345576))))

(declare-fun bs!1572703 () Bool)

(assert (= bs!1572703 (and b!6291625 b!6291172)))

(assert (=> bs!1572703 (not (= lambda!345649 lambda!345615))))

(declare-fun bs!1572704 () Bool)

(assert (= bs!1572704 (and b!6291625 b!6291163)))

(assert (=> bs!1572704 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345649 lambda!345616))))

(assert (=> bs!1572699 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357053)) (= lambda!345649 lambda!345629))))

(declare-fun bs!1572705 () Bool)

(assert (= bs!1572705 (and b!6291625 d!1973990)))

(assert (=> bs!1572705 (not (= lambda!345649 lambda!345565))))

(assert (=> bs!1572696 (not (= lambda!345649 lambda!345484))))

(declare-fun bs!1572706 () Bool)

(assert (= bs!1572706 (and b!6291625 b!6289816)))

(assert (=> bs!1572706 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345649 lambda!345480))))

(assert (=> bs!1572696 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357070)) (= lambda!345649 lambda!345483))))

(declare-fun bs!1572707 () Bool)

(assert (= bs!1572707 (and b!6291625 d!1973988)))

(assert (=> bs!1572707 (not (= lambda!345649 lambda!345560))))

(declare-fun bs!1572708 () Bool)

(assert (= bs!1572708 (and b!6291625 b!6290675)))

(assert (=> bs!1572708 (not (= lambda!345649 lambda!345567))))

(assert (=> bs!1572705 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345649 lambda!345566))))

(declare-fun bs!1572709 () Bool)

(assert (= bs!1572709 (and b!6291625 d!1974400)))

(assert (=> bs!1572709 (not (= lambda!345649 lambda!345643))))

(declare-fun bs!1572710 () Bool)

(assert (= bs!1572710 (and b!6291625 b!6290737)))

(assert (=> bs!1572710 (not (= lambda!345649 lambda!345575))))

(assert (=> bs!1572701 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357070)) (= lambda!345649 lambda!345579))))

(declare-fun bs!1572711 () Bool)

(assert (= bs!1572711 (and b!6291625 d!1974414)))

(assert (=> bs!1572711 (not (= lambda!345649 lambda!345646))))

(declare-fun bs!1572712 () Bool)

(assert (= bs!1572712 (and b!6291625 d!1974010)))

(assert (=> bs!1572712 (not (= lambda!345649 lambda!345574))))

(assert (=> bs!1572700 (not (= lambda!345649 lambda!345580))))

(assert (=> bs!1572706 (not (= lambda!345649 lambda!345479))))

(declare-fun bs!1572713 () Bool)

(assert (= bs!1572713 (and b!6291625 b!6290448)))

(assert (=> bs!1572713 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345649 lambda!345554))))

(declare-fun bs!1572714 () Bool)

(assert (= bs!1572714 (and b!6291625 b!6290666)))

(assert (=> bs!1572714 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 lt!2357061))) (= lambda!345649 lambda!345568))))

(declare-fun bs!1572715 () Bool)

(assert (= bs!1572715 (and b!6291625 d!1974356)))

(assert (=> bs!1572715 (not (= lambda!345649 lambda!345636))))

(declare-fun bs!1572716 () Bool)

(assert (= bs!1572716 (and b!6291625 b!6290457)))

(assert (=> bs!1572716 (not (= lambda!345649 lambda!345553))))

(declare-fun bs!1572717 () Bool)

(assert (= bs!1572717 (and b!6291625 b!6291634)))

(assert (=> bs!1572717 (not (= lambda!345649 lambda!345648))))

(assert (=> bs!1572711 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357070)) (= lambda!345649 lambda!345647))))

(assert (=> bs!1572696 (= (and (= (regOne!32938 (regTwo!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357070)) lt!2357053)) (= lambda!345649 lambda!345485))))

(assert (=> b!6291625 true))

(assert (=> b!6291625 true))

(declare-fun b!6291624 () Bool)

(declare-fun c!1141825 () Bool)

(assert (=> b!6291624 (= c!1141825 ((_ is Union!16213) (regTwo!32939 lt!2357070)))))

(declare-fun e!3825656 () Bool)

(declare-fun e!3825655 () Bool)

(assert (=> b!6291624 (= e!3825656 e!3825655)))

(declare-fun e!3825653 () Bool)

(declare-fun call!532801 () Bool)

(assert (=> b!6291625 (= e!3825653 call!532801)))

(declare-fun b!6291626 () Bool)

(declare-fun e!3825652 () Bool)

(declare-fun e!3825658 () Bool)

(assert (=> b!6291626 (= e!3825652 e!3825658)))

(declare-fun res!2594660 () Bool)

(assert (=> b!6291626 (= res!2594660 (not ((_ is EmptyLang!16213) (regTwo!32939 lt!2357070))))))

(assert (=> b!6291626 (=> (not res!2594660) (not e!3825658))))

(declare-fun b!6291627 () Bool)

(declare-fun e!3825657 () Bool)

(assert (=> b!6291627 (= e!3825655 e!3825657)))

(declare-fun res!2594661 () Bool)

(assert (=> b!6291627 (= res!2594661 (matchRSpec!3314 (regOne!32939 (regTwo!32939 lt!2357070)) s!2326))))

(assert (=> b!6291627 (=> res!2594661 e!3825657)))

(declare-fun b!6291628 () Bool)

(declare-fun res!2594662 () Bool)

(declare-fun e!3825654 () Bool)

(assert (=> b!6291628 (=> res!2594662 e!3825654)))

(declare-fun call!532800 () Bool)

(assert (=> b!6291628 (= res!2594662 call!532800)))

(assert (=> b!6291628 (= e!3825653 e!3825654)))

(declare-fun b!6291629 () Bool)

(assert (=> b!6291629 (= e!3825656 (= s!2326 (Cons!64814 (c!1141284 (regTwo!32939 lt!2357070)) Nil!64814)))))

(declare-fun b!6291630 () Bool)

(assert (=> b!6291630 (= e!3825655 e!3825653)))

(declare-fun c!1141824 () Bool)

(assert (=> b!6291630 (= c!1141824 ((_ is Star!16213) (regTwo!32939 lt!2357070)))))

(declare-fun b!6291631 () Bool)

(declare-fun c!1141827 () Bool)

(assert (=> b!6291631 (= c!1141827 ((_ is ElementMatch!16213) (regTwo!32939 lt!2357070)))))

(assert (=> b!6291631 (= e!3825658 e!3825656)))

(declare-fun d!1974416 () Bool)

(declare-fun c!1141826 () Bool)

(assert (=> d!1974416 (= c!1141826 ((_ is EmptyExpr!16213) (regTwo!32939 lt!2357070)))))

(assert (=> d!1974416 (= (matchRSpec!3314 (regTwo!32939 lt!2357070) s!2326) e!3825652)))

(declare-fun b!6291632 () Bool)

(assert (=> b!6291632 (= e!3825657 (matchRSpec!3314 (regTwo!32939 (regTwo!32939 lt!2357070)) s!2326))))

(declare-fun b!6291633 () Bool)

(assert (=> b!6291633 (= e!3825652 call!532800)))

(assert (=> b!6291634 (= e!3825654 call!532801)))

(declare-fun bm!532795 () Bool)

(assert (=> bm!532795 (= call!532800 (isEmpty!36872 s!2326))))

(declare-fun bm!532796 () Bool)

(assert (=> bm!532796 (= call!532801 (Exists!3283 (ite c!1141824 lambda!345648 lambda!345649)))))

(assert (= (and d!1974416 c!1141826) b!6291633))

(assert (= (and d!1974416 (not c!1141826)) b!6291626))

(assert (= (and b!6291626 res!2594660) b!6291631))

(assert (= (and b!6291631 c!1141827) b!6291629))

(assert (= (and b!6291631 (not c!1141827)) b!6291624))

(assert (= (and b!6291624 c!1141825) b!6291627))

(assert (= (and b!6291624 (not c!1141825)) b!6291630))

(assert (= (and b!6291627 (not res!2594661)) b!6291632))

(assert (= (and b!6291630 c!1141824) b!6291628))

(assert (= (and b!6291630 (not c!1141824)) b!6291625))

(assert (= (and b!6291628 (not res!2594662)) b!6291634))

(assert (= (or b!6291634 b!6291625) bm!532796))

(assert (= (or b!6291633 b!6291628) bm!532795))

(declare-fun m!7112226 () Bool)

(assert (=> b!6291627 m!7112226))

(declare-fun m!7112228 () Bool)

(assert (=> b!6291632 m!7112228))

(assert (=> bm!532795 m!7111076))

(declare-fun m!7112230 () Bool)

(assert (=> bm!532796 m!7112230))

(assert (=> b!6290735 d!1974416))

(declare-fun bs!1572718 () Bool)

(declare-fun b!6291651 () Bool)

(assert (= bs!1572718 (and b!6291651 b!6289815)))

(declare-fun lambda!345654 () Int)

(assert (=> bs!1572718 (not (= lambda!345654 lambda!345482))))

(declare-fun bs!1572719 () Bool)

(assert (= bs!1572719 (and b!6291651 d!1974006)))

(assert (=> bs!1572719 (not (= lambda!345654 lambda!345573))))

(declare-fun bs!1572720 () Bool)

(assert (= bs!1572720 (and b!6291651 d!1974334)))

(assert (=> bs!1572720 (not (= lambda!345654 lambda!345632))))

(declare-fun bs!1572721 () Bool)

(assert (= bs!1572721 (and b!6291651 b!6291625)))

(assert (=> bs!1572721 (not (= lambda!345654 lambda!345649))))

(declare-fun bs!1572722 () Bool)

(assert (= bs!1572722 (and b!6291651 d!1974320)))

(assert (=> bs!1572722 (not (= lambda!345654 lambda!345628))))

(declare-fun bs!1572723 () Bool)

(assert (= bs!1572723 (and b!6291651 d!1974042)))

(assert (=> bs!1572723 (not (= lambda!345654 lambda!345581))))

(declare-fun bs!1572724 () Bool)

(assert (= bs!1572724 (and b!6291651 d!1974040)))

(assert (=> bs!1572724 (not (= lambda!345654 lambda!345578))))

(declare-fun bs!1572725 () Bool)

(assert (= bs!1572725 (and b!6291651 b!6290728)))

(assert (=> bs!1572725 (not (= lambda!345654 lambda!345576))))

(declare-fun bs!1572726 () Bool)

(assert (= bs!1572726 (and b!6291651 b!6291172)))

(assert (=> bs!1572726 (= (and (= (reg!16542 (regOne!32939 r!7292)) (reg!16542 (regOne!32939 lt!2357061))) (= (regOne!32939 r!7292) (regOne!32939 lt!2357061))) (= lambda!345654 lambda!345615))))

(declare-fun bs!1572727 () Bool)

(assert (= bs!1572727 (and b!6291651 b!6291163)))

(assert (=> bs!1572727 (not (= lambda!345654 lambda!345616))))

(assert (=> bs!1572722 (not (= lambda!345654 lambda!345629))))

(declare-fun bs!1572729 () Bool)

(assert (= bs!1572729 (and b!6291651 d!1973990)))

(assert (=> bs!1572729 (not (= lambda!345654 lambda!345565))))

(assert (=> bs!1572718 (not (= lambda!345654 lambda!345484))))

(declare-fun bs!1572731 () Bool)

(assert (= bs!1572731 (and b!6291651 b!6289816)))

(assert (=> bs!1572731 (not (= lambda!345654 lambda!345480))))

(assert (=> bs!1572718 (not (= lambda!345654 lambda!345483))))

(declare-fun bs!1572734 () Bool)

(assert (= bs!1572734 (and b!6291651 d!1973988)))

(assert (=> bs!1572734 (not (= lambda!345654 lambda!345560))))

(declare-fun bs!1572736 () Bool)

(assert (= bs!1572736 (and b!6291651 b!6290675)))

(assert (=> bs!1572736 (= (and (= (reg!16542 (regOne!32939 r!7292)) (reg!16542 lt!2357061)) (= (regOne!32939 r!7292) lt!2357061)) (= lambda!345654 lambda!345567))))

(assert (=> bs!1572729 (not (= lambda!345654 lambda!345566))))

(declare-fun bs!1572739 () Bool)

(assert (= bs!1572739 (and b!6291651 d!1974400)))

(assert (=> bs!1572739 (not (= lambda!345654 lambda!345643))))

(declare-fun bs!1572741 () Bool)

(assert (= bs!1572741 (and b!6291651 b!6290737)))

(assert (=> bs!1572741 (= (and (= (reg!16542 (regOne!32939 r!7292)) (reg!16542 lt!2357070)) (= (regOne!32939 r!7292) lt!2357070)) (= lambda!345654 lambda!345575))))

(assert (=> bs!1572724 (not (= lambda!345654 lambda!345579))))

(declare-fun bs!1572742 () Bool)

(assert (= bs!1572742 (and b!6291651 d!1974414)))

(assert (=> bs!1572742 (not (= lambda!345654 lambda!345646))))

(declare-fun bs!1572743 () Bool)

(assert (= bs!1572743 (and b!6291651 d!1974010)))

(assert (=> bs!1572743 (not (= lambda!345654 lambda!345574))))

(assert (=> bs!1572723 (not (= lambda!345654 lambda!345580))))

(assert (=> bs!1572731 (not (= lambda!345654 lambda!345479))))

(declare-fun bs!1572746 () Bool)

(assert (= bs!1572746 (and b!6291651 b!6290448)))

(assert (=> bs!1572746 (not (= lambda!345654 lambda!345554))))

(declare-fun bs!1572748 () Bool)

(assert (= bs!1572748 (and b!6291651 b!6290666)))

(assert (=> bs!1572748 (not (= lambda!345654 lambda!345568))))

(declare-fun bs!1572750 () Bool)

(assert (= bs!1572750 (and b!6291651 d!1974356)))

(assert (=> bs!1572750 (not (= lambda!345654 lambda!345636))))

(declare-fun bs!1572752 () Bool)

(assert (= bs!1572752 (and b!6291651 b!6290457)))

(assert (=> bs!1572752 (= (and (= (reg!16542 (regOne!32939 r!7292)) (reg!16542 r!7292)) (= (regOne!32939 r!7292) r!7292)) (= lambda!345654 lambda!345553))))

(declare-fun bs!1572754 () Bool)

(assert (= bs!1572754 (and b!6291651 b!6291634)))

(assert (=> bs!1572754 (= (and (= (reg!16542 (regOne!32939 r!7292)) (reg!16542 (regTwo!32939 lt!2357070))) (= (regOne!32939 r!7292) (regTwo!32939 lt!2357070))) (= lambda!345654 lambda!345648))))

(assert (=> bs!1572742 (not (= lambda!345654 lambda!345647))))

(assert (=> bs!1572718 (not (= lambda!345654 lambda!345485))))

(assert (=> b!6291651 true))

(assert (=> b!6291651 true))

(declare-fun bs!1572758 () Bool)

(declare-fun b!6291642 () Bool)

(assert (= bs!1572758 (and b!6291642 b!6289815)))

(declare-fun lambda!345657 () Int)

(assert (=> bs!1572758 (not (= lambda!345657 lambda!345482))))

(declare-fun bs!1572759 () Bool)

(assert (= bs!1572759 (and b!6291642 d!1974006)))

(assert (=> bs!1572759 (not (= lambda!345657 lambda!345573))))

(declare-fun bs!1572760 () Bool)

(assert (= bs!1572760 (and b!6291642 d!1974334)))

(assert (=> bs!1572760 (not (= lambda!345657 lambda!345632))))

(declare-fun bs!1572761 () Bool)

(assert (= bs!1572761 (and b!6291642 b!6291625)))

(assert (=> bs!1572761 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 (regTwo!32939 lt!2357070))) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 (regTwo!32939 lt!2357070)))) (= lambda!345657 lambda!345649))))

(declare-fun bs!1572762 () Bool)

(assert (= bs!1572762 (and b!6291642 d!1974320)))

(assert (=> bs!1572762 (not (= lambda!345657 lambda!345628))))

(declare-fun bs!1572763 () Bool)

(assert (= bs!1572763 (and b!6291642 d!1974042)))

(assert (=> bs!1572763 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357053)) (= lambda!345657 lambda!345581))))

(declare-fun bs!1572764 () Bool)

(assert (= bs!1572764 (and b!6291642 d!1974040)))

(assert (=> bs!1572764 (not (= lambda!345657 lambda!345578))))

(declare-fun bs!1572765 () Bool)

(assert (= bs!1572765 (and b!6291642 b!6290728)))

(assert (=> bs!1572765 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 lt!2357070))) (= lambda!345657 lambda!345576))))

(declare-fun bs!1572766 () Bool)

(assert (= bs!1572766 (and b!6291642 b!6291172)))

(assert (=> bs!1572766 (not (= lambda!345657 lambda!345615))))

(declare-fun bs!1572767 () Bool)

(assert (= bs!1572767 (and b!6291642 b!6291163)))

(assert (=> bs!1572767 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345657 lambda!345616))))

(assert (=> bs!1572762 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357053)) (= lambda!345657 lambda!345629))))

(declare-fun bs!1572768 () Bool)

(assert (= bs!1572768 (and b!6291642 d!1973990)))

(assert (=> bs!1572768 (not (= lambda!345657 lambda!345565))))

(declare-fun bs!1572769 () Bool)

(assert (= bs!1572769 (and b!6291642 b!6289816)))

(assert (=> bs!1572769 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345657 lambda!345480))))

(assert (=> bs!1572758 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357070)) (= lambda!345657 lambda!345483))))

(declare-fun bs!1572770 () Bool)

(assert (= bs!1572770 (and b!6291642 d!1973988)))

(assert (=> bs!1572770 (not (= lambda!345657 lambda!345560))))

(declare-fun bs!1572771 () Bool)

(assert (= bs!1572771 (and b!6291642 b!6290675)))

(assert (=> bs!1572771 (not (= lambda!345657 lambda!345567))))

(assert (=> bs!1572768 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345657 lambda!345566))))

(declare-fun bs!1572772 () Bool)

(assert (= bs!1572772 (and b!6291642 d!1974400)))

(assert (=> bs!1572772 (not (= lambda!345657 lambda!345643))))

(declare-fun bs!1572773 () Bool)

(assert (= bs!1572773 (and b!6291642 b!6290737)))

(assert (=> bs!1572773 (not (= lambda!345657 lambda!345575))))

(assert (=> bs!1572764 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357070)) (= lambda!345657 lambda!345579))))

(declare-fun bs!1572774 () Bool)

(assert (= bs!1572774 (and b!6291642 d!1974414)))

(assert (=> bs!1572774 (not (= lambda!345657 lambda!345646))))

(declare-fun bs!1572775 () Bool)

(assert (= bs!1572775 (and b!6291642 d!1974010)))

(assert (=> bs!1572775 (not (= lambda!345657 lambda!345574))))

(assert (=> bs!1572763 (not (= lambda!345657 lambda!345580))))

(assert (=> bs!1572769 (not (= lambda!345657 lambda!345479))))

(declare-fun bs!1572776 () Bool)

(assert (= bs!1572776 (and b!6291642 b!6290448)))

(assert (=> bs!1572776 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345657 lambda!345554))))

(declare-fun bs!1572777 () Bool)

(assert (= bs!1572777 (and b!6291642 b!6290666)))

(assert (=> bs!1572777 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regOne!32939 r!7292)) (regTwo!32938 lt!2357061))) (= lambda!345657 lambda!345568))))

(declare-fun bs!1572778 () Bool)

(assert (= bs!1572778 (and b!6291642 d!1974356)))

(assert (=> bs!1572778 (not (= lambda!345657 lambda!345636))))

(assert (=> bs!1572758 (not (= lambda!345657 lambda!345484))))

(declare-fun bs!1572779 () Bool)

(assert (= bs!1572779 (and b!6291642 b!6291651)))

(assert (=> bs!1572779 (not (= lambda!345657 lambda!345654))))

(declare-fun bs!1572780 () Bool)

(assert (= bs!1572780 (and b!6291642 b!6290457)))

(assert (=> bs!1572780 (not (= lambda!345657 lambda!345553))))

(declare-fun bs!1572781 () Bool)

(assert (= bs!1572781 (and b!6291642 b!6291634)))

(assert (=> bs!1572781 (not (= lambda!345657 lambda!345648))))

(assert (=> bs!1572774 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357070)) (= lambda!345657 lambda!345647))))

(assert (=> bs!1572758 (= (and (= (regOne!32938 (regOne!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 r!7292)) lt!2357053)) (= lambda!345657 lambda!345485))))

(assert (=> b!6291642 true))

(assert (=> b!6291642 true))

(declare-fun b!6291641 () Bool)

(declare-fun c!1141832 () Bool)

(assert (=> b!6291641 (= c!1141832 ((_ is Union!16213) (regOne!32939 r!7292)))))

(declare-fun e!3825667 () Bool)

(declare-fun e!3825666 () Bool)

(assert (=> b!6291641 (= e!3825667 e!3825666)))

(declare-fun e!3825664 () Bool)

(declare-fun call!532803 () Bool)

(assert (=> b!6291642 (= e!3825664 call!532803)))

(declare-fun b!6291643 () Bool)

(declare-fun e!3825663 () Bool)

(declare-fun e!3825669 () Bool)

(assert (=> b!6291643 (= e!3825663 e!3825669)))

(declare-fun res!2594665 () Bool)

(assert (=> b!6291643 (= res!2594665 (not ((_ is EmptyLang!16213) (regOne!32939 r!7292))))))

(assert (=> b!6291643 (=> (not res!2594665) (not e!3825669))))

(declare-fun b!6291644 () Bool)

(declare-fun e!3825668 () Bool)

(assert (=> b!6291644 (= e!3825666 e!3825668)))

(declare-fun res!2594666 () Bool)

(assert (=> b!6291644 (= res!2594666 (matchRSpec!3314 (regOne!32939 (regOne!32939 r!7292)) s!2326))))

(assert (=> b!6291644 (=> res!2594666 e!3825668)))

(declare-fun b!6291645 () Bool)

(declare-fun res!2594667 () Bool)

(declare-fun e!3825665 () Bool)

(assert (=> b!6291645 (=> res!2594667 e!3825665)))

(declare-fun call!532802 () Bool)

(assert (=> b!6291645 (= res!2594667 call!532802)))

(assert (=> b!6291645 (= e!3825664 e!3825665)))

(declare-fun b!6291646 () Bool)

(assert (=> b!6291646 (= e!3825667 (= s!2326 (Cons!64814 (c!1141284 (regOne!32939 r!7292)) Nil!64814)))))

(declare-fun b!6291647 () Bool)

(assert (=> b!6291647 (= e!3825666 e!3825664)))

(declare-fun c!1141831 () Bool)

(assert (=> b!6291647 (= c!1141831 ((_ is Star!16213) (regOne!32939 r!7292)))))

(declare-fun b!6291648 () Bool)

(declare-fun c!1141834 () Bool)

(assert (=> b!6291648 (= c!1141834 ((_ is ElementMatch!16213) (regOne!32939 r!7292)))))

(assert (=> b!6291648 (= e!3825669 e!3825667)))

(declare-fun d!1974418 () Bool)

(declare-fun c!1141833 () Bool)

(assert (=> d!1974418 (= c!1141833 ((_ is EmptyExpr!16213) (regOne!32939 r!7292)))))

(assert (=> d!1974418 (= (matchRSpec!3314 (regOne!32939 r!7292) s!2326) e!3825663)))

(declare-fun b!6291649 () Bool)

(assert (=> b!6291649 (= e!3825668 (matchRSpec!3314 (regTwo!32939 (regOne!32939 r!7292)) s!2326))))

(declare-fun b!6291650 () Bool)

(assert (=> b!6291650 (= e!3825663 call!532802)))

(assert (=> b!6291651 (= e!3825665 call!532803)))

(declare-fun bm!532797 () Bool)

(assert (=> bm!532797 (= call!532802 (isEmpty!36872 s!2326))))

(declare-fun bm!532798 () Bool)

(assert (=> bm!532798 (= call!532803 (Exists!3283 (ite c!1141831 lambda!345654 lambda!345657)))))

(assert (= (and d!1974418 c!1141833) b!6291650))

(assert (= (and d!1974418 (not c!1141833)) b!6291643))

(assert (= (and b!6291643 res!2594665) b!6291648))

(assert (= (and b!6291648 c!1141834) b!6291646))

(assert (= (and b!6291648 (not c!1141834)) b!6291641))

(assert (= (and b!6291641 c!1141832) b!6291644))

(assert (= (and b!6291641 (not c!1141832)) b!6291647))

(assert (= (and b!6291644 (not res!2594666)) b!6291649))

(assert (= (and b!6291647 c!1141831) b!6291645))

(assert (= (and b!6291647 (not c!1141831)) b!6291642))

(assert (= (and b!6291645 (not res!2594667)) b!6291651))

(assert (= (or b!6291651 b!6291642) bm!532798))

(assert (= (or b!6291650 b!6291645) bm!532797))

(declare-fun m!7112244 () Bool)

(assert (=> b!6291644 m!7112244))

(declare-fun m!7112246 () Bool)

(assert (=> b!6291649 m!7112246))

(assert (=> bm!532797 m!7111076))

(declare-fun m!7112248 () Bool)

(assert (=> bm!532798 m!7112248))

(assert (=> b!6290450 d!1974418))

(declare-fun d!1974424 () Bool)

(declare-fun c!1141836 () Bool)

(assert (=> d!1974424 (= c!1141836 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825676 () Bool)

(assert (=> d!1974424 (= (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825676)))

(declare-fun b!6291662 () Bool)

(assert (=> b!6291662 (= e!3825676 (nullableZipper!1983 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291663 () Bool)

(assert (=> b!6291663 (= e!3825676 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974424 c!1141836) b!6291662))

(assert (= (and d!1974424 (not c!1141836)) b!6291663))

(assert (=> d!1974424 m!7111112))

(assert (=> d!1974424 m!7111724))

(assert (=> b!6291662 m!7111150))

(declare-fun m!7112250 () Bool)

(assert (=> b!6291662 m!7112250))

(assert (=> b!6291663 m!7111112))

(assert (=> b!6291663 m!7111728))

(assert (=> b!6291663 m!7111150))

(assert (=> b!6291663 m!7111728))

(declare-fun m!7112252 () Bool)

(assert (=> b!6291663 m!7112252))

(assert (=> b!6291663 m!7111112))

(assert (=> b!6291663 m!7111732))

(assert (=> b!6291663 m!7112252))

(assert (=> b!6291663 m!7111732))

(declare-fun m!7112254 () Bool)

(assert (=> b!6291663 m!7112254))

(assert (=> b!6290605 d!1974424))

(declare-fun bs!1572782 () Bool)

(declare-fun d!1974426 () Bool)

(assert (= bs!1572782 (and d!1974426 d!1974252)))

(declare-fun lambda!345658 () Int)

(assert (=> bs!1572782 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345658 lambda!345622))))

(declare-fun bs!1572783 () Bool)

(assert (= bs!1572783 (and d!1974426 d!1974406)))

(assert (=> bs!1572783 (= lambda!345658 lambda!345645)))

(declare-fun bs!1572784 () Bool)

(assert (= bs!1572784 (and d!1974426 d!1974064)))

(assert (=> bs!1572784 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345658 lambda!345598))))

(declare-fun bs!1572785 () Bool)

(assert (= bs!1572785 (and d!1974426 d!1974186)))

(assert (=> bs!1572785 (= lambda!345658 lambda!345618)))

(declare-fun bs!1572786 () Bool)

(assert (= bs!1572786 (and d!1974426 d!1974348)))

(assert (=> bs!1572786 (= lambda!345658 lambda!345633)))

(declare-fun bs!1572787 () Bool)

(assert (= bs!1572787 (and d!1974426 d!1974178)))

(assert (=> bs!1572787 (= lambda!345658 lambda!345617)))

(declare-fun bs!1572788 () Bool)

(assert (= bs!1572788 (and d!1974426 d!1973976)))

(assert (=> bs!1572788 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345658 lambda!345557))))

(declare-fun bs!1572789 () Bool)

(assert (= bs!1572789 (and d!1974426 d!1974220)))

(assert (=> bs!1572789 (= lambda!345658 lambda!345620)))

(declare-fun bs!1572790 () Bool)

(assert (= bs!1572790 (and d!1974426 d!1974232)))

(assert (=> bs!1572790 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345658 lambda!345621))))

(declare-fun bs!1572791 () Bool)

(assert (= bs!1572791 (and d!1974426 b!6289808)))

(assert (=> bs!1572791 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345658 lambda!345481))))

(assert (=> d!1974426 true))

(assert (=> d!1974426 (= (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) (head!12927 (t!378500 s!2326))) (flatMap!1718 (derivationStepZipper!2179 lt!2357069 (h!71262 s!2326)) lambda!345658))))

(declare-fun bs!1572792 () Bool)

(assert (= bs!1572792 d!1974426))

(assert (=> bs!1572792 m!7110480))

(declare-fun m!7112256 () Bool)

(assert (=> bs!1572792 m!7112256))

(assert (=> b!6290605 d!1974426))

(assert (=> b!6290605 d!1974180))

(assert (=> b!6290605 d!1974182))

(assert (=> d!1974032 d!1974138))

(declare-fun bs!1572793 () Bool)

(declare-fun d!1974428 () Bool)

(assert (= bs!1572793 (and d!1974428 d!1974166)))

(declare-fun lambda!345659 () Int)

(assert (=> bs!1572793 (= lambda!345659 lambda!345614)))

(declare-fun bs!1572794 () Bool)

(assert (= bs!1572794 (and d!1974428 d!1974360)))

(assert (=> bs!1572794 (= lambda!345659 lambda!345637)))

(declare-fun bs!1572795 () Bool)

(assert (= bs!1572795 (and d!1974428 d!1974158)))

(assert (=> bs!1572795 (not (= lambda!345659 lambda!345608))))

(declare-fun bs!1572796 () Bool)

(assert (= bs!1572796 (and d!1974428 d!1974372)))

(assert (=> bs!1572796 (= lambda!345659 lambda!345639)))

(declare-fun bs!1572797 () Bool)

(assert (= bs!1572797 (and d!1974428 b!6290783)))

(assert (=> bs!1572797 (not (= lambda!345659 lambda!345590))))

(declare-fun bs!1572798 () Bool)

(assert (= bs!1572798 (and d!1974428 d!1974354)))

(assert (=> bs!1572798 (= lambda!345659 lambda!345635)))

(declare-fun bs!1572799 () Bool)

(assert (= bs!1572799 (and d!1974428 b!6291144)))

(assert (=> bs!1572799 (not (= lambda!345659 lambda!345611))))

(declare-fun bs!1572800 () Bool)

(assert (= bs!1572800 (and d!1974428 b!6291142)))

(assert (=> bs!1572800 (not (= lambda!345659 lambda!345610))))

(declare-fun bs!1572801 () Bool)

(assert (= bs!1572801 (and d!1974428 b!6290786)))

(assert (=> bs!1572801 (not (= lambda!345659 lambda!345592))))

(declare-fun bs!1572802 () Bool)

(assert (= bs!1572802 (and d!1974428 d!1974208)))

(assert (=> bs!1572802 (= lambda!345659 lambda!345619)))

(declare-fun bs!1572803 () Bool)

(assert (= bs!1572803 (and d!1974428 b!6290788)))

(assert (=> bs!1572803 (not (= lambda!345659 lambda!345593))))

(declare-fun bs!1572804 () Bool)

(assert (= bs!1572804 (and d!1974428 b!6290781)))

(assert (=> bs!1572804 (not (= lambda!345659 lambda!345589))))

(assert (=> d!1974428 (= (nullableZipper!1983 lt!2357087) (exists!2528 lt!2357087 lambda!345659))))

(declare-fun bs!1572805 () Bool)

(assert (= bs!1572805 d!1974428))

(declare-fun m!7112262 () Bool)

(assert (=> bs!1572805 m!7112262))

(assert (=> b!6290954 d!1974428))

(declare-fun b!6291666 () Bool)

(declare-fun e!3825681 () Bool)

(assert (=> b!6291666 (= e!3825681 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094)))))))))

(declare-fun b!6291667 () Bool)

(declare-fun e!3825679 () (InoxSet Context!11194))

(assert (=> b!6291667 (= e!3825679 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291668 () Bool)

(declare-fun call!532804 () (InoxSet Context!11194))

(assert (=> b!6291668 (= e!3825679 call!532804)))

(declare-fun b!6291669 () Bool)

(declare-fun e!3825680 () (InoxSet Context!11194))

(assert (=> b!6291669 (= e!3825680 ((_ map or) call!532804 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094)))))) (h!71262 s!2326))))))

(declare-fun d!1974432 () Bool)

(declare-fun c!1141837 () Bool)

(assert (=> d!1974432 (= c!1141837 e!3825681)))

(declare-fun res!2594675 () Bool)

(assert (=> d!1974432 (=> (not res!2594675) (not e!3825681))))

(assert (=> d!1974432 (= res!2594675 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094))))))))

(assert (=> d!1974432 (= (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357094))) (h!71262 s!2326)) e!3825680)))

(declare-fun bm!532799 () Bool)

(assert (=> bm!532799 (= call!532804 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094)))))) (h!71262 s!2326)))))

(declare-fun b!6291670 () Bool)

(assert (=> b!6291670 (= e!3825680 e!3825679)))

(declare-fun c!1141838 () Bool)

(assert (=> b!6291670 (= c!1141838 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357094))))))))

(assert (= (and d!1974432 res!2594675) b!6291666))

(assert (= (and d!1974432 c!1141837) b!6291669))

(assert (= (and d!1974432 (not c!1141837)) b!6291670))

(assert (= (and b!6291670 c!1141838) b!6291668))

(assert (= (and b!6291670 (not c!1141838)) b!6291667))

(assert (= (or b!6291669 b!6291668) bm!532799))

(declare-fun m!7112264 () Bool)

(assert (=> b!6291666 m!7112264))

(declare-fun m!7112266 () Bool)

(assert (=> b!6291669 m!7112266))

(declare-fun m!7112268 () Bool)

(assert (=> bm!532799 m!7112268))

(assert (=> b!6290809 d!1974432))

(assert (=> d!1973980 d!1974120))

(declare-fun d!1974434 () Bool)

(declare-fun res!2594677 () Bool)

(declare-fun e!3825685 () Bool)

(assert (=> d!1974434 (=> res!2594677 e!3825685)))

(assert (=> d!1974434 (= res!2594677 ((_ is ElementMatch!16213) lt!2357190))))

(assert (=> d!1974434 (= (validRegex!7949 lt!2357190) e!3825685)))

(declare-fun b!6291671 () Bool)

(declare-fun res!2594679 () Bool)

(declare-fun e!3825686 () Bool)

(assert (=> b!6291671 (=> res!2594679 e!3825686)))

(assert (=> b!6291671 (= res!2594679 (not ((_ is Concat!25058) lt!2357190)))))

(declare-fun e!3825682 () Bool)

(assert (=> b!6291671 (= e!3825682 e!3825686)))

(declare-fun bm!532800 () Bool)

(declare-fun call!532807 () Bool)

(declare-fun c!1141840 () Bool)

(declare-fun c!1141839 () Bool)

(assert (=> bm!532800 (= call!532807 (validRegex!7949 (ite c!1141840 (reg!16542 lt!2357190) (ite c!1141839 (regTwo!32939 lt!2357190) (regTwo!32938 lt!2357190)))))))

(declare-fun b!6291672 () Bool)

(declare-fun e!3825684 () Bool)

(assert (=> b!6291672 (= e!3825684 e!3825682)))

(assert (=> b!6291672 (= c!1141839 ((_ is Union!16213) lt!2357190))))

(declare-fun bm!532801 () Bool)

(declare-fun call!532806 () Bool)

(assert (=> bm!532801 (= call!532806 call!532807)))

(declare-fun b!6291673 () Bool)

(declare-fun e!3825688 () Bool)

(assert (=> b!6291673 (= e!3825684 e!3825688)))

(declare-fun res!2594680 () Bool)

(assert (=> b!6291673 (= res!2594680 (not (nullable!6206 (reg!16542 lt!2357190))))))

(assert (=> b!6291673 (=> (not res!2594680) (not e!3825688))))

(declare-fun b!6291674 () Bool)

(assert (=> b!6291674 (= e!3825685 e!3825684)))

(assert (=> b!6291674 (= c!1141840 ((_ is Star!16213) lt!2357190))))

(declare-fun b!6291675 () Bool)

(declare-fun res!2594678 () Bool)

(declare-fun e!3825683 () Bool)

(assert (=> b!6291675 (=> (not res!2594678) (not e!3825683))))

(declare-fun call!532805 () Bool)

(assert (=> b!6291675 (= res!2594678 call!532805)))

(assert (=> b!6291675 (= e!3825682 e!3825683)))

(declare-fun bm!532802 () Bool)

(assert (=> bm!532802 (= call!532805 (validRegex!7949 (ite c!1141839 (regOne!32939 lt!2357190) (regOne!32938 lt!2357190))))))

(declare-fun b!6291676 () Bool)

(assert (=> b!6291676 (= e!3825688 call!532807)))

(declare-fun b!6291677 () Bool)

(declare-fun e!3825687 () Bool)

(assert (=> b!6291677 (= e!3825686 e!3825687)))

(declare-fun res!2594676 () Bool)

(assert (=> b!6291677 (=> (not res!2594676) (not e!3825687))))

(assert (=> b!6291677 (= res!2594676 call!532805)))

(declare-fun b!6291678 () Bool)

(assert (=> b!6291678 (= e!3825687 call!532806)))

(declare-fun b!6291679 () Bool)

(assert (=> b!6291679 (= e!3825683 call!532806)))

(assert (= (and d!1974434 (not res!2594677)) b!6291674))

(assert (= (and b!6291674 c!1141840) b!6291673))

(assert (= (and b!6291674 (not c!1141840)) b!6291672))

(assert (= (and b!6291673 res!2594680) b!6291676))

(assert (= (and b!6291672 c!1141839) b!6291675))

(assert (= (and b!6291672 (not c!1141839)) b!6291671))

(assert (= (and b!6291675 res!2594678) b!6291679))

(assert (= (and b!6291671 (not res!2594679)) b!6291677))

(assert (= (and b!6291677 res!2594676) b!6291678))

(assert (= (or b!6291679 b!6291678) bm!532801))

(assert (= (or b!6291675 b!6291677) bm!532802))

(assert (= (or b!6291676 bm!532801) bm!532800))

(declare-fun m!7112270 () Bool)

(assert (=> bm!532800 m!7112270))

(declare-fun m!7112272 () Bool)

(assert (=> b!6291673 m!7112272))

(declare-fun m!7112274 () Bool)

(assert (=> bm!532802 m!7112274))

(assert (=> d!1973900 d!1974434))

(declare-fun d!1974436 () Bool)

(declare-fun res!2594681 () Bool)

(declare-fun e!3825689 () Bool)

(assert (=> d!1974436 (=> res!2594681 e!3825689)))

(assert (=> d!1974436 (= res!2594681 ((_ is Nil!64815) (unfocusZipperList!1634 zl!343)))))

(assert (=> d!1974436 (= (forall!15362 (unfocusZipperList!1634 zl!343) lambda!345542) e!3825689)))

(declare-fun b!6291680 () Bool)

(declare-fun e!3825690 () Bool)

(assert (=> b!6291680 (= e!3825689 e!3825690)))

(declare-fun res!2594682 () Bool)

(assert (=> b!6291680 (=> (not res!2594682) (not e!3825690))))

(assert (=> b!6291680 (= res!2594682 (dynLambda!25651 lambda!345542 (h!71263 (unfocusZipperList!1634 zl!343))))))

(declare-fun b!6291681 () Bool)

(assert (=> b!6291681 (= e!3825690 (forall!15362 (t!378501 (unfocusZipperList!1634 zl!343)) lambda!345542))))

(assert (= (and d!1974436 (not res!2594681)) b!6291680))

(assert (= (and b!6291680 res!2594682) b!6291681))

(declare-fun b_lambda!239377 () Bool)

(assert (=> (not b_lambda!239377) (not b!6291680)))

(declare-fun m!7112276 () Bool)

(assert (=> b!6291680 m!7112276))

(declare-fun m!7112278 () Bool)

(assert (=> b!6291681 m!7112278))

(assert (=> d!1973900 d!1974436))

(assert (=> d!1974108 d!1974112))

(declare-fun d!1974438 () Bool)

(assert (=> d!1974438 (= (flatMap!1718 lt!2357069 lambda!345481) (dynLambda!25647 lambda!345481 lt!2357094))))

(assert (=> d!1974438 true))

(declare-fun _$13!3405 () Unit!158183)

(assert (=> d!1974438 (= (choose!46745 lt!2357069 lt!2357094 lambda!345481) _$13!3405)))

(declare-fun b_lambda!239379 () Bool)

(assert (=> (not b_lambda!239379) (not d!1974438)))

(declare-fun bs!1572806 () Bool)

(assert (= bs!1572806 d!1974438))

(assert (=> bs!1572806 m!7110434))

(assert (=> bs!1572806 m!7111564))

(assert (=> d!1974108 d!1974438))

(declare-fun b!6291683 () Bool)

(declare-fun e!3825697 () Bool)

(assert (=> b!6291683 (= e!3825697 (nullable!6206 (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291684 () Bool)

(declare-fun res!2594687 () Bool)

(declare-fun e!3825694 () Bool)

(assert (=> b!6291684 (=> res!2594687 e!3825694)))

(declare-fun e!3825693 () Bool)

(assert (=> b!6291684 (= res!2594687 e!3825693)))

(declare-fun res!2594690 () Bool)

(assert (=> b!6291684 (=> (not res!2594690) (not e!3825693))))

(declare-fun lt!2357370 () Bool)

(assert (=> b!6291684 (= res!2594690 lt!2357370)))

(declare-fun b!6291685 () Bool)

(assert (=> b!6291685 (= e!3825693 (= (head!12927 (_1!36495 (get!22408 lt!2357258))) (c!1141284 (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6291686 () Bool)

(declare-fun e!3825695 () Bool)

(assert (=> b!6291686 (= e!3825695 (not (= (head!12927 (_1!36495 (get!22408 lt!2357258))) (c!1141284 (regTwo!32938 (regOne!32938 r!7292))))))))

(declare-fun d!1974440 () Bool)

(declare-fun e!3825696 () Bool)

(assert (=> d!1974440 e!3825696))

(declare-fun c!1141843 () Bool)

(assert (=> d!1974440 (= c!1141843 ((_ is EmptyExpr!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974440 (= lt!2357370 e!3825697)))

(declare-fun c!1141844 () Bool)

(assert (=> d!1974440 (= c!1141844 (isEmpty!36872 (_1!36495 (get!22408 lt!2357258))))))

(assert (=> d!1974440 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974440 (= (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357258))) lt!2357370)))

(declare-fun b!6291687 () Bool)

(declare-fun e!3825692 () Bool)

(assert (=> b!6291687 (= e!3825692 (not lt!2357370))))

(declare-fun b!6291688 () Bool)

(declare-fun e!3825691 () Bool)

(assert (=> b!6291688 (= e!3825694 e!3825691)))

(declare-fun res!2594689 () Bool)

(assert (=> b!6291688 (=> (not res!2594689) (not e!3825691))))

(assert (=> b!6291688 (= res!2594689 (not lt!2357370))))

(declare-fun bm!532803 () Bool)

(declare-fun call!532808 () Bool)

(assert (=> bm!532803 (= call!532808 (isEmpty!36872 (_1!36495 (get!22408 lt!2357258))))))

(declare-fun b!6291689 () Bool)

(assert (=> b!6291689 (= e!3825696 (= lt!2357370 call!532808))))

(declare-fun b!6291690 () Bool)

(assert (=> b!6291690 (= e!3825696 e!3825692)))

(declare-fun c!1141845 () Bool)

(assert (=> b!6291690 (= c!1141845 ((_ is EmptyLang!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291691 () Bool)

(assert (=> b!6291691 (= e!3825691 e!3825695)))

(declare-fun res!2594688 () Bool)

(assert (=> b!6291691 (=> res!2594688 e!3825695)))

(assert (=> b!6291691 (= res!2594688 call!532808)))

(declare-fun b!6291692 () Bool)

(declare-fun res!2594684 () Bool)

(assert (=> b!6291692 (=> (not res!2594684) (not e!3825693))))

(assert (=> b!6291692 (= res!2594684 (not call!532808))))

(declare-fun b!6291693 () Bool)

(declare-fun res!2594683 () Bool)

(assert (=> b!6291693 (=> res!2594683 e!3825694)))

(assert (=> b!6291693 (= res!2594683 (not ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32938 r!7292)))))))

(assert (=> b!6291693 (= e!3825692 e!3825694)))

(declare-fun b!6291694 () Bool)

(assert (=> b!6291694 (= e!3825697 (matchR!8396 (derivativeStep!4922 (regTwo!32938 (regOne!32938 r!7292)) (head!12927 (_1!36495 (get!22408 lt!2357258)))) (tail!12012 (_1!36495 (get!22408 lt!2357258)))))))

(declare-fun b!6291695 () Bool)

(declare-fun res!2594685 () Bool)

(assert (=> b!6291695 (=> (not res!2594685) (not e!3825693))))

(assert (=> b!6291695 (= res!2594685 (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357258)))))))

(declare-fun b!6291696 () Bool)

(declare-fun res!2594686 () Bool)

(assert (=> b!6291696 (=> res!2594686 e!3825695)))

(assert (=> b!6291696 (= res!2594686 (not (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357258))))))))

(assert (= (and d!1974440 c!1141844) b!6291683))

(assert (= (and d!1974440 (not c!1141844)) b!6291694))

(assert (= (and d!1974440 c!1141843) b!6291689))

(assert (= (and d!1974440 (not c!1141843)) b!6291690))

(assert (= (and b!6291690 c!1141845) b!6291687))

(assert (= (and b!6291690 (not c!1141845)) b!6291693))

(assert (= (and b!6291693 (not res!2594683)) b!6291684))

(assert (= (and b!6291684 res!2594690) b!6291692))

(assert (= (and b!6291692 res!2594684) b!6291695))

(assert (= (and b!6291695 res!2594685) b!6291685))

(assert (= (and b!6291684 (not res!2594687)) b!6291688))

(assert (= (and b!6291688 res!2594689) b!6291691))

(assert (= (and b!6291691 (not res!2594688)) b!6291696))

(assert (= (and b!6291696 (not res!2594686)) b!6291686))

(assert (= (or b!6291689 b!6291691 b!6291692) bm!532803))

(declare-fun m!7112280 () Bool)

(assert (=> bm!532803 m!7112280))

(declare-fun m!7112282 () Bool)

(assert (=> b!6291694 m!7112282))

(assert (=> b!6291694 m!7112282))

(declare-fun m!7112284 () Bool)

(assert (=> b!6291694 m!7112284))

(declare-fun m!7112286 () Bool)

(assert (=> b!6291694 m!7112286))

(assert (=> b!6291694 m!7112284))

(assert (=> b!6291694 m!7112286))

(declare-fun m!7112288 () Bool)

(assert (=> b!6291694 m!7112288))

(assert (=> b!6291686 m!7112282))

(assert (=> b!6291696 m!7112286))

(assert (=> b!6291696 m!7112286))

(declare-fun m!7112290 () Bool)

(assert (=> b!6291696 m!7112290))

(declare-fun m!7112292 () Bool)

(assert (=> b!6291683 m!7112292))

(assert (=> b!6291685 m!7112282))

(assert (=> b!6291695 m!7112286))

(assert (=> b!6291695 m!7112286))

(assert (=> b!6291695 m!7112290))

(assert (=> d!1974440 m!7112280))

(assert (=> d!1974440 m!7111266))

(assert (=> b!6290771 d!1974440))

(assert (=> b!6290771 d!1974272))

(assert (=> b!6290901 d!1973998))

(assert (=> b!6290592 d!1974146))

(assert (=> b!6290743 d!1974146))

(declare-fun d!1974442 () Bool)

(assert (=> d!1974442 (= (isEmpty!36870 (tail!12011 lt!2357060)) ((_ is Nil!64815) (tail!12011 lt!2357060)))))

(assert (=> b!6290708 d!1974442))

(declare-fun d!1974444 () Bool)

(assert (=> d!1974444 (= (tail!12011 lt!2357060) (t!378501 lt!2357060))))

(assert (=> b!6290708 d!1974444))

(assert (=> d!1973952 d!1973944))

(assert (=> d!1973952 d!1973922))

(declare-fun d!1974446 () Bool)

(assert (=> d!1974446 (= (matchR!8396 r!7292 s!2326) (matchRSpec!3314 r!7292 s!2326))))

(assert (=> d!1974446 true))

(declare-fun _$88!4936 () Unit!158183)

(assert (=> d!1974446 (= (choose!46733 r!7292 s!2326) _$88!4936)))

(declare-fun bs!1572807 () Bool)

(assert (= bs!1572807 d!1974446))

(assert (=> bs!1572807 m!7110502))

(assert (=> bs!1572807 m!7110500))

(assert (=> d!1973952 d!1974446))

(assert (=> d!1973952 d!1974096))

(declare-fun d!1974448 () Bool)

(declare-fun res!2594692 () Bool)

(declare-fun e!3825701 () Bool)

(assert (=> d!1974448 (=> res!2594692 e!3825701)))

(assert (=> d!1974448 (= res!2594692 ((_ is ElementMatch!16213) lt!2357243))))

(assert (=> d!1974448 (= (validRegex!7949 lt!2357243) e!3825701)))

(declare-fun b!6291699 () Bool)

(declare-fun res!2594694 () Bool)

(declare-fun e!3825702 () Bool)

(assert (=> b!6291699 (=> res!2594694 e!3825702)))

(assert (=> b!6291699 (= res!2594694 (not ((_ is Concat!25058) lt!2357243)))))

(declare-fun e!3825698 () Bool)

(assert (=> b!6291699 (= e!3825698 e!3825702)))

(declare-fun bm!532804 () Bool)

(declare-fun call!532811 () Bool)

(declare-fun c!1141846 () Bool)

(declare-fun c!1141847 () Bool)

(assert (=> bm!532804 (= call!532811 (validRegex!7949 (ite c!1141847 (reg!16542 lt!2357243) (ite c!1141846 (regTwo!32939 lt!2357243) (regTwo!32938 lt!2357243)))))))

(declare-fun b!6291700 () Bool)

(declare-fun e!3825700 () Bool)

(assert (=> b!6291700 (= e!3825700 e!3825698)))

(assert (=> b!6291700 (= c!1141846 ((_ is Union!16213) lt!2357243))))

(declare-fun bm!532805 () Bool)

(declare-fun call!532810 () Bool)

(assert (=> bm!532805 (= call!532810 call!532811)))

(declare-fun b!6291701 () Bool)

(declare-fun e!3825704 () Bool)

(assert (=> b!6291701 (= e!3825700 e!3825704)))

(declare-fun res!2594695 () Bool)

(assert (=> b!6291701 (= res!2594695 (not (nullable!6206 (reg!16542 lt!2357243))))))

(assert (=> b!6291701 (=> (not res!2594695) (not e!3825704))))

(declare-fun b!6291702 () Bool)

(assert (=> b!6291702 (= e!3825701 e!3825700)))

(assert (=> b!6291702 (= c!1141847 ((_ is Star!16213) lt!2357243))))

(declare-fun b!6291703 () Bool)

(declare-fun res!2594693 () Bool)

(declare-fun e!3825699 () Bool)

(assert (=> b!6291703 (=> (not res!2594693) (not e!3825699))))

(declare-fun call!532809 () Bool)

(assert (=> b!6291703 (= res!2594693 call!532809)))

(assert (=> b!6291703 (= e!3825698 e!3825699)))

(declare-fun bm!532806 () Bool)

(assert (=> bm!532806 (= call!532809 (validRegex!7949 (ite c!1141846 (regOne!32939 lt!2357243) (regOne!32938 lt!2357243))))))

(declare-fun b!6291704 () Bool)

(assert (=> b!6291704 (= e!3825704 call!532811)))

(declare-fun b!6291705 () Bool)

(declare-fun e!3825703 () Bool)

(assert (=> b!6291705 (= e!3825702 e!3825703)))

(declare-fun res!2594691 () Bool)

(assert (=> b!6291705 (=> (not res!2594691) (not e!3825703))))

(assert (=> b!6291705 (= res!2594691 call!532809)))

(declare-fun b!6291706 () Bool)

(assert (=> b!6291706 (= e!3825703 call!532810)))

(declare-fun b!6291707 () Bool)

(assert (=> b!6291707 (= e!3825699 call!532810)))

(assert (= (and d!1974448 (not res!2594692)) b!6291702))

(assert (= (and b!6291702 c!1141847) b!6291701))

(assert (= (and b!6291702 (not c!1141847)) b!6291700))

(assert (= (and b!6291701 res!2594695) b!6291704))

(assert (= (and b!6291700 c!1141846) b!6291703))

(assert (= (and b!6291700 (not c!1141846)) b!6291699))

(assert (= (and b!6291703 res!2594693) b!6291707))

(assert (= (and b!6291699 (not res!2594694)) b!6291705))

(assert (= (and b!6291705 res!2594691) b!6291706))

(assert (= (or b!6291707 b!6291706) bm!532805))

(assert (= (or b!6291703 b!6291705) bm!532806))

(assert (= (or b!6291704 bm!532805) bm!532804))

(declare-fun m!7112294 () Bool)

(assert (=> bm!532804 m!7112294))

(declare-fun m!7112296 () Bool)

(assert (=> b!6291701 m!7112296))

(declare-fun m!7112298 () Bool)

(assert (=> bm!532806 m!7112298))

(assert (=> d!1973998 d!1974448))

(declare-fun d!1974450 () Bool)

(declare-fun res!2594696 () Bool)

(declare-fun e!3825705 () Bool)

(assert (=> d!1974450 (=> res!2594696 e!3825705)))

(assert (=> d!1974450 (= res!2594696 ((_ is Nil!64815) (t!378501 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> d!1974450 (= (forall!15362 (t!378501 (exprs!6097 (h!71264 zl!343))) lambda!345571) e!3825705)))

(declare-fun b!6291708 () Bool)

(declare-fun e!3825706 () Bool)

(assert (=> b!6291708 (= e!3825705 e!3825706)))

(declare-fun res!2594697 () Bool)

(assert (=> b!6291708 (=> (not res!2594697) (not e!3825706))))

(assert (=> b!6291708 (= res!2594697 (dynLambda!25651 lambda!345571 (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6291709 () Bool)

(assert (=> b!6291709 (= e!3825706 (forall!15362 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))) lambda!345571))))

(assert (= (and d!1974450 (not res!2594696)) b!6291708))

(assert (= (and b!6291708 res!2594697) b!6291709))

(declare-fun b_lambda!239381 () Bool)

(assert (=> (not b_lambda!239381) (not b!6291708)))

(declare-fun m!7112300 () Bool)

(assert (=> b!6291708 m!7112300))

(declare-fun m!7112302 () Bool)

(assert (=> b!6291709 m!7112302))

(assert (=> d!1973998 d!1974450))

(assert (=> d!1974074 d!1974138))

(declare-fun d!1974452 () Bool)

(declare-fun res!2594699 () Bool)

(declare-fun e!3825710 () Bool)

(assert (=> d!1974452 (=> res!2594699 e!3825710)))

(assert (=> d!1974452 (= res!2594699 ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(assert (=> d!1974452 (= (validRegex!7949 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) e!3825710)))

(declare-fun b!6291710 () Bool)

(declare-fun res!2594701 () Bool)

(declare-fun e!3825711 () Bool)

(assert (=> b!6291710 (=> res!2594701 e!3825711)))

(assert (=> b!6291710 (= res!2594701 (not ((_ is Concat!25058) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))

(declare-fun e!3825707 () Bool)

(assert (=> b!6291710 (= e!3825707 e!3825711)))

(declare-fun c!1141848 () Bool)

(declare-fun bm!532807 () Bool)

(declare-fun c!1141849 () Bool)

(declare-fun call!532814 () Bool)

(assert (=> bm!532807 (= call!532814 (validRegex!7949 (ite c!1141849 (reg!16542 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (ite c!1141848 (regTwo!32939 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (regTwo!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292)))))))))

(declare-fun b!6291711 () Bool)

(declare-fun e!3825709 () Bool)

(assert (=> b!6291711 (= e!3825709 e!3825707)))

(assert (=> b!6291711 (= c!1141848 ((_ is Union!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun bm!532808 () Bool)

(declare-fun call!532813 () Bool)

(assert (=> bm!532808 (= call!532813 call!532814)))

(declare-fun b!6291712 () Bool)

(declare-fun e!3825713 () Bool)

(assert (=> b!6291712 (= e!3825709 e!3825713)))

(declare-fun res!2594702 () Bool)

(assert (=> b!6291712 (= res!2594702 (not (nullable!6206 (reg!16542 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))))

(assert (=> b!6291712 (=> (not res!2594702) (not e!3825713))))

(declare-fun b!6291713 () Bool)

(assert (=> b!6291713 (= e!3825710 e!3825709)))

(assert (=> b!6291713 (= c!1141849 ((_ is Star!16213) (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun b!6291714 () Bool)

(declare-fun res!2594700 () Bool)

(declare-fun e!3825708 () Bool)

(assert (=> b!6291714 (=> (not res!2594700) (not e!3825708))))

(declare-fun call!532812 () Bool)

(assert (=> b!6291714 (= res!2594700 call!532812)))

(assert (=> b!6291714 (= e!3825707 e!3825708)))

(declare-fun bm!532809 () Bool)

(assert (=> bm!532809 (= call!532812 (validRegex!7949 (ite c!1141848 (regOne!32939 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (regOne!32938 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))))

(declare-fun b!6291715 () Bool)

(assert (=> b!6291715 (= e!3825713 call!532814)))

(declare-fun b!6291716 () Bool)

(declare-fun e!3825712 () Bool)

(assert (=> b!6291716 (= e!3825711 e!3825712)))

(declare-fun res!2594698 () Bool)

(assert (=> b!6291716 (=> (not res!2594698) (not e!3825712))))

(assert (=> b!6291716 (= res!2594698 call!532812)))

(declare-fun b!6291717 () Bool)

(assert (=> b!6291717 (= e!3825712 call!532813)))

(declare-fun b!6291718 () Bool)

(assert (=> b!6291718 (= e!3825708 call!532813)))

(assert (= (and d!1974452 (not res!2594699)) b!6291713))

(assert (= (and b!6291713 c!1141849) b!6291712))

(assert (= (and b!6291713 (not c!1141849)) b!6291711))

(assert (= (and b!6291712 res!2594702) b!6291715))

(assert (= (and b!6291711 c!1141848) b!6291714))

(assert (= (and b!6291711 (not c!1141848)) b!6291710))

(assert (= (and b!6291714 res!2594700) b!6291718))

(assert (= (and b!6291710 (not res!2594701)) b!6291716))

(assert (= (and b!6291716 res!2594698) b!6291717))

(assert (= (or b!6291718 b!6291717) bm!532808))

(assert (= (or b!6291714 b!6291716) bm!532809))

(assert (= (or b!6291715 bm!532808) bm!532807))

(declare-fun m!7112308 () Bool)

(assert (=> bm!532807 m!7112308))

(declare-fun m!7112310 () Bool)

(assert (=> b!6291712 m!7112310))

(declare-fun m!7112312 () Bool)

(assert (=> bm!532809 m!7112312))

(assert (=> d!1974074 d!1974452))

(declare-fun bs!1572815 () Bool)

(declare-fun d!1974456 () Bool)

(assert (= bs!1572815 (and d!1974456 d!1974428)))

(declare-fun lambda!345663 () Int)

(assert (=> bs!1572815 (= lambda!345663 lambda!345659)))

(declare-fun bs!1572816 () Bool)

(assert (= bs!1572816 (and d!1974456 d!1974166)))

(assert (=> bs!1572816 (= lambda!345663 lambda!345614)))

(declare-fun bs!1572817 () Bool)

(assert (= bs!1572817 (and d!1974456 d!1974360)))

(assert (=> bs!1572817 (= lambda!345663 lambda!345637)))

(declare-fun bs!1572818 () Bool)

(assert (= bs!1572818 (and d!1974456 d!1974158)))

(assert (=> bs!1572818 (not (= lambda!345663 lambda!345608))))

(declare-fun bs!1572819 () Bool)

(assert (= bs!1572819 (and d!1974456 d!1974372)))

(assert (=> bs!1572819 (= lambda!345663 lambda!345639)))

(declare-fun bs!1572820 () Bool)

(assert (= bs!1572820 (and d!1974456 b!6290783)))

(assert (=> bs!1572820 (not (= lambda!345663 lambda!345590))))

(declare-fun bs!1572821 () Bool)

(assert (= bs!1572821 (and d!1974456 d!1974354)))

(assert (=> bs!1572821 (= lambda!345663 lambda!345635)))

(declare-fun bs!1572822 () Bool)

(assert (= bs!1572822 (and d!1974456 b!6291144)))

(assert (=> bs!1572822 (not (= lambda!345663 lambda!345611))))

(declare-fun bs!1572823 () Bool)

(assert (= bs!1572823 (and d!1974456 b!6291142)))

(assert (=> bs!1572823 (not (= lambda!345663 lambda!345610))))

(declare-fun bs!1572824 () Bool)

(assert (= bs!1572824 (and d!1974456 b!6290786)))

(assert (=> bs!1572824 (not (= lambda!345663 lambda!345592))))

(declare-fun bs!1572825 () Bool)

(assert (= bs!1572825 (and d!1974456 d!1974208)))

(assert (=> bs!1572825 (= lambda!345663 lambda!345619)))

(declare-fun bs!1572826 () Bool)

(assert (= bs!1572826 (and d!1974456 b!6290788)))

(assert (=> bs!1572826 (not (= lambda!345663 lambda!345593))))

(declare-fun bs!1572827 () Bool)

(assert (= bs!1572827 (and d!1974456 b!6290781)))

(assert (=> bs!1572827 (not (= lambda!345663 lambda!345589))))

(assert (=> d!1974456 (= (nullableZipper!1983 lt!2357069) (exists!2528 lt!2357069 lambda!345663))))

(declare-fun bs!1572828 () Bool)

(assert (= bs!1572828 d!1974456))

(declare-fun m!7112314 () Bool)

(assert (=> bs!1572828 m!7112314))

(assert (=> b!6290725 d!1974456))

(declare-fun bs!1572829 () Bool)

(declare-fun d!1974458 () Bool)

(assert (= bs!1572829 (and d!1974458 d!1974428)))

(declare-fun lambda!345664 () Int)

(assert (=> bs!1572829 (= lambda!345664 lambda!345659)))

(declare-fun bs!1572830 () Bool)

(assert (= bs!1572830 (and d!1974458 d!1974166)))

(assert (=> bs!1572830 (= lambda!345664 lambda!345614)))

(declare-fun bs!1572831 () Bool)

(assert (= bs!1572831 (and d!1974458 d!1974360)))

(assert (=> bs!1572831 (= lambda!345664 lambda!345637)))

(declare-fun bs!1572832 () Bool)

(assert (= bs!1572832 (and d!1974458 d!1974158)))

(assert (=> bs!1572832 (not (= lambda!345664 lambda!345608))))

(declare-fun bs!1572833 () Bool)

(assert (= bs!1572833 (and d!1974458 d!1974372)))

(assert (=> bs!1572833 (= lambda!345664 lambda!345639)))

(declare-fun bs!1572834 () Bool)

(assert (= bs!1572834 (and d!1974458 b!6290783)))

(assert (=> bs!1572834 (not (= lambda!345664 lambda!345590))))

(declare-fun bs!1572835 () Bool)

(assert (= bs!1572835 (and d!1974458 d!1974456)))

(assert (=> bs!1572835 (= lambda!345664 lambda!345663)))

(declare-fun bs!1572836 () Bool)

(assert (= bs!1572836 (and d!1974458 d!1974354)))

(assert (=> bs!1572836 (= lambda!345664 lambda!345635)))

(declare-fun bs!1572837 () Bool)

(assert (= bs!1572837 (and d!1974458 b!6291144)))

(assert (=> bs!1572837 (not (= lambda!345664 lambda!345611))))

(declare-fun bs!1572838 () Bool)

(assert (= bs!1572838 (and d!1974458 b!6291142)))

(assert (=> bs!1572838 (not (= lambda!345664 lambda!345610))))

(declare-fun bs!1572839 () Bool)

(assert (= bs!1572839 (and d!1974458 b!6290786)))

(assert (=> bs!1572839 (not (= lambda!345664 lambda!345592))))

(declare-fun bs!1572840 () Bool)

(assert (= bs!1572840 (and d!1974458 d!1974208)))

(assert (=> bs!1572840 (= lambda!345664 lambda!345619)))

(declare-fun bs!1572841 () Bool)

(assert (= bs!1572841 (and d!1974458 b!6290788)))

(assert (=> bs!1572841 (not (= lambda!345664 lambda!345593))))

(declare-fun bs!1572842 () Bool)

(assert (= bs!1572842 (and d!1974458 b!6290781)))

(assert (=> bs!1572842 (not (= lambda!345664 lambda!345589))))

(assert (=> d!1974458 (= (nullableZipper!1983 lt!2357086) (exists!2528 lt!2357086 lambda!345664))))

(declare-fun bs!1572843 () Bool)

(assert (= bs!1572843 d!1974458))

(declare-fun m!7112316 () Bool)

(assert (=> bs!1572843 m!7112316))

(assert (=> b!6290608 d!1974458))

(assert (=> b!6290269 d!1973968))

(declare-fun d!1974460 () Bool)

(declare-fun lt!2357372 () Int)

(assert (=> d!1974460 (>= lt!2357372 0)))

(declare-fun e!3825714 () Int)

(assert (=> d!1974460 (= lt!2357372 e!3825714)))

(declare-fun c!1141852 () Bool)

(assert (=> d!1974460 (= c!1141852 ((_ is Cons!64816) (t!378502 zl!343)))))

(assert (=> d!1974460 (= (zipperDepthTotal!366 (t!378502 zl!343)) lt!2357372)))

(declare-fun b!6291719 () Bool)

(assert (=> b!6291719 (= e!3825714 (+ (contextDepthTotal!336 (h!71264 (t!378502 zl!343))) (zipperDepthTotal!366 (t!378502 (t!378502 zl!343)))))))

(declare-fun b!6291720 () Bool)

(assert (=> b!6291720 (= e!3825714 0)))

(assert (= (and d!1974460 c!1141852) b!6291719))

(assert (= (and d!1974460 (not c!1141852)) b!6291720))

(declare-fun m!7112318 () Bool)

(assert (=> b!6291719 m!7112318))

(declare-fun m!7112320 () Bool)

(assert (=> b!6291719 m!7112320))

(assert (=> b!6290269 d!1974460))

(assert (=> bm!532601 d!1974138))

(declare-fun d!1974462 () Bool)

(declare-fun c!1141853 () Bool)

(assert (=> d!1974462 (= c!1141853 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825715 () Bool)

(assert (=> d!1974462 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357075 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825715)))

(declare-fun b!6291721 () Bool)

(assert (=> b!6291721 (= e!3825715 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357075 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291722 () Bool)

(assert (=> b!6291722 (= e!3825715 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357075 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974462 c!1141853) b!6291721))

(assert (= (and d!1974462 (not c!1141853)) b!6291722))

(assert (=> d!1974462 m!7111112))

(assert (=> d!1974462 m!7111724))

(assert (=> b!6291721 m!7111560))

(declare-fun m!7112322 () Bool)

(assert (=> b!6291721 m!7112322))

(assert (=> b!6291722 m!7111112))

(assert (=> b!6291722 m!7111728))

(assert (=> b!6291722 m!7111560))

(assert (=> b!6291722 m!7111728))

(declare-fun m!7112324 () Bool)

(assert (=> b!6291722 m!7112324))

(assert (=> b!6291722 m!7111112))

(assert (=> b!6291722 m!7111732))

(assert (=> b!6291722 m!7112324))

(assert (=> b!6291722 m!7111732))

(declare-fun m!7112326 () Bool)

(assert (=> b!6291722 m!7112326))

(assert (=> b!6290959 d!1974462))

(declare-fun bs!1572845 () Bool)

(declare-fun d!1974464 () Bool)

(assert (= bs!1572845 (and d!1974464 d!1974426)))

(declare-fun lambda!345667 () Int)

(assert (=> bs!1572845 (= lambda!345667 lambda!345658)))

(declare-fun bs!1572846 () Bool)

(assert (= bs!1572846 (and d!1974464 d!1974252)))

(assert (=> bs!1572846 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345667 lambda!345622))))

(declare-fun bs!1572848 () Bool)

(assert (= bs!1572848 (and d!1974464 d!1974406)))

(assert (=> bs!1572848 (= lambda!345667 lambda!345645)))

(declare-fun bs!1572849 () Bool)

(assert (= bs!1572849 (and d!1974464 d!1974064)))

(assert (=> bs!1572849 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345667 lambda!345598))))

(declare-fun bs!1572851 () Bool)

(assert (= bs!1572851 (and d!1974464 d!1974186)))

(assert (=> bs!1572851 (= lambda!345667 lambda!345618)))

(declare-fun bs!1572852 () Bool)

(assert (= bs!1572852 (and d!1974464 d!1974348)))

(assert (=> bs!1572852 (= lambda!345667 lambda!345633)))

(declare-fun bs!1572854 () Bool)

(assert (= bs!1572854 (and d!1974464 d!1974178)))

(assert (=> bs!1572854 (= lambda!345667 lambda!345617)))

(declare-fun bs!1572855 () Bool)

(assert (= bs!1572855 (and d!1974464 d!1973976)))

(assert (=> bs!1572855 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345667 lambda!345557))))

(declare-fun bs!1572857 () Bool)

(assert (= bs!1572857 (and d!1974464 d!1974220)))

(assert (=> bs!1572857 (= lambda!345667 lambda!345620)))

(declare-fun bs!1572858 () Bool)

(assert (= bs!1572858 (and d!1974464 d!1974232)))

(assert (=> bs!1572858 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345667 lambda!345621))))

(declare-fun bs!1572860 () Bool)

(assert (= bs!1572860 (and d!1974464 b!6289808)))

(assert (=> bs!1572860 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345667 lambda!345481))))

(assert (=> d!1974464 true))

(assert (=> d!1974464 (= (derivationStepZipper!2179 lt!2357075 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357075 lambda!345667))))

(declare-fun bs!1572862 () Bool)

(assert (= bs!1572862 d!1974464))

(declare-fun m!7112328 () Bool)

(assert (=> bs!1572862 m!7112328))

(assert (=> b!6290959 d!1974464))

(assert (=> b!6290959 d!1974180))

(assert (=> b!6290959 d!1974182))

(declare-fun d!1974466 () Bool)

(assert (=> d!1974466 (= (isEmptyExpr!1619 lt!2357257) ((_ is EmptyExpr!16213) lt!2357257))))

(assert (=> b!6290763 d!1974466))

(assert (=> b!6290571 d!1974146))

(assert (=> bm!532652 d!1974138))

(assert (=> d!1973956 d!1973960))

(assert (=> d!1973956 d!1973958))

(declare-fun e!3825716 () Bool)

(declare-fun d!1974468 () Bool)

(assert (=> d!1974468 (= (matchZipper!2225 ((_ map or) lt!2357085 lt!2357093) (t!378500 s!2326)) e!3825716)))

(declare-fun res!2594703 () Bool)

(assert (=> d!1974468 (=> res!2594703 e!3825716)))

(assert (=> d!1974468 (= res!2594703 (matchZipper!2225 lt!2357085 (t!378500 s!2326)))))

(assert (=> d!1974468 true))

(declare-fun _$48!2048 () Unit!158183)

(assert (=> d!1974468 (= (choose!46735 lt!2357085 lt!2357093 (t!378500 s!2326)) _$48!2048)))

(declare-fun b!6291723 () Bool)

(assert (=> b!6291723 (= e!3825716 (matchZipper!2225 lt!2357093 (t!378500 s!2326)))))

(assert (= (and d!1974468 (not res!2594703)) b!6291723))

(assert (=> d!1974468 m!7110458))

(assert (=> d!1974468 m!7110446))

(assert (=> b!6291723 m!7110464))

(assert (=> d!1973956 d!1974468))

(assert (=> d!1974016 d!1974138))

(declare-fun d!1974472 () Bool)

(assert (=> d!1974472 true))

(declare-fun setRes!42822 () Bool)

(assert (=> d!1974472 setRes!42822))

(declare-fun condSetEmpty!42822 () Bool)

(declare-fun res!2594704 () (InoxSet Context!11194))

(assert (=> d!1974472 (= condSetEmpty!42822 (= res!2594704 ((as const (Array Context!11194 Bool)) false)))))

(assert (=> d!1974472 (= (choose!46746 lt!2357071 lambda!345481) res!2594704)))

(declare-fun setIsEmpty!42822 () Bool)

(assert (=> setIsEmpty!42822 setRes!42822))

(declare-fun e!3825717 () Bool)

(declare-fun tp!1751806 () Bool)

(declare-fun setElem!42822 () Context!11194)

(declare-fun setNonEmpty!42822 () Bool)

(assert (=> setNonEmpty!42822 (= setRes!42822 (and tp!1751806 (inv!83779 setElem!42822) e!3825717))))

(declare-fun setRest!42822 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42822 (= res!2594704 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42822 true) setRest!42822))))

(declare-fun b!6291724 () Bool)

(declare-fun tp!1751805 () Bool)

(assert (=> b!6291724 (= e!3825717 tp!1751805)))

(assert (= (and d!1974472 condSetEmpty!42822) setIsEmpty!42822))

(assert (= (and d!1974472 (not condSetEmpty!42822)) setNonEmpty!42822))

(assert (= setNonEmpty!42822 b!6291724))

(declare-fun m!7112332 () Bool)

(assert (=> setNonEmpty!42822 m!7112332))

(assert (=> d!1974060 d!1974472))

(assert (=> d!1973978 d!1974120))

(declare-fun d!1974474 () Bool)

(declare-fun res!2594706 () Bool)

(declare-fun e!3825721 () Bool)

(assert (=> d!1974474 (=> res!2594706 e!3825721)))

(assert (=> d!1974474 (= res!2594706 ((_ is ElementMatch!16213) lt!2357053))))

(assert (=> d!1974474 (= (validRegex!7949 lt!2357053) e!3825721)))

(declare-fun b!6291725 () Bool)

(declare-fun res!2594708 () Bool)

(declare-fun e!3825722 () Bool)

(assert (=> b!6291725 (=> res!2594708 e!3825722)))

(assert (=> b!6291725 (= res!2594708 (not ((_ is Concat!25058) lt!2357053)))))

(declare-fun e!3825718 () Bool)

(assert (=> b!6291725 (= e!3825718 e!3825722)))

(declare-fun call!532817 () Bool)

(declare-fun c!1141854 () Bool)

(declare-fun c!1141855 () Bool)

(declare-fun bm!532810 () Bool)

(assert (=> bm!532810 (= call!532817 (validRegex!7949 (ite c!1141855 (reg!16542 lt!2357053) (ite c!1141854 (regTwo!32939 lt!2357053) (regTwo!32938 lt!2357053)))))))

(declare-fun b!6291726 () Bool)

(declare-fun e!3825720 () Bool)

(assert (=> b!6291726 (= e!3825720 e!3825718)))

(assert (=> b!6291726 (= c!1141854 ((_ is Union!16213) lt!2357053))))

(declare-fun bm!532811 () Bool)

(declare-fun call!532816 () Bool)

(assert (=> bm!532811 (= call!532816 call!532817)))

(declare-fun b!6291727 () Bool)

(declare-fun e!3825724 () Bool)

(assert (=> b!6291727 (= e!3825720 e!3825724)))

(declare-fun res!2594709 () Bool)

(assert (=> b!6291727 (= res!2594709 (not (nullable!6206 (reg!16542 lt!2357053))))))

(assert (=> b!6291727 (=> (not res!2594709) (not e!3825724))))

(declare-fun b!6291728 () Bool)

(assert (=> b!6291728 (= e!3825721 e!3825720)))

(assert (=> b!6291728 (= c!1141855 ((_ is Star!16213) lt!2357053))))

(declare-fun b!6291729 () Bool)

(declare-fun res!2594707 () Bool)

(declare-fun e!3825719 () Bool)

(assert (=> b!6291729 (=> (not res!2594707) (not e!3825719))))

(declare-fun call!532815 () Bool)

(assert (=> b!6291729 (= res!2594707 call!532815)))

(assert (=> b!6291729 (= e!3825718 e!3825719)))

(declare-fun bm!532812 () Bool)

(assert (=> bm!532812 (= call!532815 (validRegex!7949 (ite c!1141854 (regOne!32939 lt!2357053) (regOne!32938 lt!2357053))))))

(declare-fun b!6291730 () Bool)

(assert (=> b!6291730 (= e!3825724 call!532817)))

(declare-fun b!6291731 () Bool)

(declare-fun e!3825723 () Bool)

(assert (=> b!6291731 (= e!3825722 e!3825723)))

(declare-fun res!2594705 () Bool)

(assert (=> b!6291731 (=> (not res!2594705) (not e!3825723))))

(assert (=> b!6291731 (= res!2594705 call!532815)))

(declare-fun b!6291732 () Bool)

(assert (=> b!6291732 (= e!3825723 call!532816)))

(declare-fun b!6291733 () Bool)

(assert (=> b!6291733 (= e!3825719 call!532816)))

(assert (= (and d!1974474 (not res!2594706)) b!6291728))

(assert (= (and b!6291728 c!1141855) b!6291727))

(assert (= (and b!6291728 (not c!1141855)) b!6291726))

(assert (= (and b!6291727 res!2594709) b!6291730))

(assert (= (and b!6291726 c!1141854) b!6291729))

(assert (= (and b!6291726 (not c!1141854)) b!6291725))

(assert (= (and b!6291729 res!2594707) b!6291733))

(assert (= (and b!6291725 (not res!2594708)) b!6291731))

(assert (= (and b!6291731 res!2594705) b!6291732))

(assert (= (or b!6291733 b!6291732) bm!532811))

(assert (= (or b!6291729 b!6291731) bm!532812))

(assert (= (or b!6291730 bm!532811) bm!532810))

(declare-fun m!7112334 () Bool)

(assert (=> bm!532810 m!7112334))

(declare-fun m!7112336 () Bool)

(assert (=> b!6291727 m!7112336))

(declare-fun m!7112338 () Bool)

(assert (=> bm!532812 m!7112338))

(assert (=> b!6290924 d!1974474))

(declare-fun b!6291734 () Bool)

(declare-fun e!3825727 () Bool)

(assert (=> b!6291734 (= e!3825727 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))))))))

(declare-fun b!6291735 () Bool)

(declare-fun e!3825725 () (InoxSet Context!11194))

(assert (=> b!6291735 (= e!3825725 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291736 () Bool)

(declare-fun call!532818 () (InoxSet Context!11194))

(assert (=> b!6291736 (= e!3825725 call!532818)))

(declare-fun e!3825726 () (InoxSet Context!11194))

(declare-fun b!6291737 () Bool)

(assert (=> b!6291737 (= e!3825726 ((_ map or) call!532818 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))))) (h!71262 s!2326))))))

(declare-fun d!1974480 () Bool)

(declare-fun c!1141856 () Bool)

(assert (=> d!1974480 (= c!1141856 e!3825727)))

(declare-fun res!2594710 () Bool)

(assert (=> d!1974480 (=> (not res!2594710) (not e!3825727))))

(assert (=> d!1974480 (= res!2594710 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> d!1974480 (= (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326)) e!3825726)))

(declare-fun bm!532813 () Bool)

(assert (=> bm!532813 (= call!532818 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))))) (h!71262 s!2326)))))

(declare-fun b!6291738 () Bool)

(assert (=> b!6291738 (= e!3825726 e!3825725)))

(declare-fun c!1141857 () Bool)

(assert (=> b!6291738 (= c!1141857 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(assert (= (and d!1974480 res!2594710) b!6291734))

(assert (= (and d!1974480 c!1141856) b!6291737))

(assert (= (and d!1974480 (not c!1141856)) b!6291738))

(assert (= (and b!6291738 c!1141857) b!6291736))

(assert (= (and b!6291738 (not c!1141857)) b!6291735))

(assert (= (or b!6291737 b!6291736) bm!532813))

(declare-fun m!7112340 () Bool)

(assert (=> b!6291734 m!7112340))

(declare-fun m!7112342 () Bool)

(assert (=> b!6291737 m!7112342))

(declare-fun m!7112344 () Bool)

(assert (=> bm!532813 m!7112344))

(assert (=> b!6290893 d!1974480))

(declare-fun d!1974484 () Bool)

(assert (=> d!1974484 (= (nullable!6206 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))) (nullableFct!2157 (Concat!25058 lt!2357063 (regTwo!32938 r!7292))))))

(declare-fun bs!1572864 () Bool)

(assert (= bs!1572864 d!1974484))

(declare-fun m!7112346 () Bool)

(assert (=> bs!1572864 m!7112346))

(assert (=> b!6290568 d!1974484))

(declare-fun bs!1572865 () Bool)

(declare-fun d!1974486 () Bool)

(assert (= bs!1572865 (and d!1974486 d!1974428)))

(declare-fun lambda!345669 () Int)

(assert (=> bs!1572865 (= lambda!345669 lambda!345659)))

(declare-fun bs!1572866 () Bool)

(assert (= bs!1572866 (and d!1974486 d!1974166)))

(assert (=> bs!1572866 (= lambda!345669 lambda!345614)))

(declare-fun bs!1572867 () Bool)

(assert (= bs!1572867 (and d!1974486 d!1974360)))

(assert (=> bs!1572867 (= lambda!345669 lambda!345637)))

(declare-fun bs!1572868 () Bool)

(assert (= bs!1572868 (and d!1974486 d!1974158)))

(assert (=> bs!1572868 (not (= lambda!345669 lambda!345608))))

(declare-fun bs!1572869 () Bool)

(assert (= bs!1572869 (and d!1974486 b!6290783)))

(assert (=> bs!1572869 (not (= lambda!345669 lambda!345590))))

(declare-fun bs!1572870 () Bool)

(assert (= bs!1572870 (and d!1974486 d!1974456)))

(assert (=> bs!1572870 (= lambda!345669 lambda!345663)))

(declare-fun bs!1572871 () Bool)

(assert (= bs!1572871 (and d!1974486 d!1974354)))

(assert (=> bs!1572871 (= lambda!345669 lambda!345635)))

(declare-fun bs!1572872 () Bool)

(assert (= bs!1572872 (and d!1974486 b!6291144)))

(assert (=> bs!1572872 (not (= lambda!345669 lambda!345611))))

(declare-fun bs!1572873 () Bool)

(assert (= bs!1572873 (and d!1974486 b!6291142)))

(assert (=> bs!1572873 (not (= lambda!345669 lambda!345610))))

(declare-fun bs!1572874 () Bool)

(assert (= bs!1572874 (and d!1974486 d!1974372)))

(assert (=> bs!1572874 (= lambda!345669 lambda!345639)))

(declare-fun bs!1572875 () Bool)

(assert (= bs!1572875 (and d!1974486 d!1974458)))

(assert (=> bs!1572875 (= lambda!345669 lambda!345664)))

(declare-fun bs!1572876 () Bool)

(assert (= bs!1572876 (and d!1974486 b!6290786)))

(assert (=> bs!1572876 (not (= lambda!345669 lambda!345592))))

(declare-fun bs!1572877 () Bool)

(assert (= bs!1572877 (and d!1974486 d!1974208)))

(assert (=> bs!1572877 (= lambda!345669 lambda!345619)))

(declare-fun bs!1572878 () Bool)

(assert (= bs!1572878 (and d!1974486 b!6290788)))

(assert (=> bs!1572878 (not (= lambda!345669 lambda!345593))))

(declare-fun bs!1572879 () Bool)

(assert (= bs!1572879 (and d!1974486 b!6290781)))

(assert (=> bs!1572879 (not (= lambda!345669 lambda!345589))))

(assert (=> d!1974486 (= (nullableZipper!1983 lt!2357055) (exists!2528 lt!2357055 lambda!345669))))

(declare-fun bs!1572880 () Bool)

(assert (= bs!1572880 d!1974486))

(declare-fun m!7112348 () Bool)

(assert (=> bs!1572880 m!7112348))

(assert (=> b!6290952 d!1974486))

(assert (=> bm!532608 d!1974138))

(declare-fun call!532822 () (InoxSet Context!11194))

(declare-fun bm!532815 () Bool)

(declare-fun c!1141861 () Bool)

(declare-fun call!532820 () List!64939)

(assert (=> bm!532815 (= call!532822 (derivationStepZipperDown!1461 (ite c!1141861 (regOne!32939 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (regOne!32938 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))))) (ite c!1141861 (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640)) (Context!11195 call!532820)) (h!71262 s!2326)))))

(declare-fun b!6291753 () Bool)

(declare-fun e!3825738 () Bool)

(assert (=> b!6291753 (= e!3825738 (nullable!6206 (regOne!32938 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))))))))

(declare-fun bm!532816 () Bool)

(declare-fun call!532824 () (InoxSet Context!11194))

(declare-fun call!532821 () (InoxSet Context!11194))

(assert (=> bm!532816 (= call!532824 call!532821)))

(declare-fun d!1974490 () Bool)

(declare-fun c!1141865 () Bool)

(assert (=> d!1974490 (= c!1141865 (and ((_ is ElementMatch!16213) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (= (c!1141284 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (h!71262 s!2326))))))

(declare-fun e!3825735 () (InoxSet Context!11194))

(assert (=> d!1974490 (= (derivationStepZipperDown!1461 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))) (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640)) (h!71262 s!2326)) e!3825735)))

(declare-fun b!6291754 () Bool)

(assert (=> b!6291754 (= e!3825735 (store ((as const (Array Context!11194 Bool)) false) (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640)) true))))

(declare-fun c!1141863 () Bool)

(declare-fun c!1141864 () Bool)

(declare-fun call!532825 () List!64939)

(declare-fun bm!532817 () Bool)

(assert (=> bm!532817 (= call!532821 (derivationStepZipperDown!1461 (ite c!1141861 (regTwo!32939 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (ite c!1141863 (regTwo!32938 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (ite c!1141864 (regOne!32938 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (reg!16542 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))))))) (ite (or c!1141861 c!1141863) (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640)) (Context!11195 call!532825)) (h!71262 s!2326)))))

(declare-fun b!6291755 () Bool)

(declare-fun e!3825737 () (InoxSet Context!11194))

(declare-fun call!532823 () (InoxSet Context!11194))

(assert (=> b!6291755 (= e!3825737 call!532823)))

(declare-fun b!6291756 () Bool)

(declare-fun e!3825740 () (InoxSet Context!11194))

(declare-fun e!3825739 () (InoxSet Context!11194))

(assert (=> b!6291756 (= e!3825740 e!3825739)))

(assert (=> b!6291756 (= c!1141864 ((_ is Concat!25058) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))))))

(declare-fun b!6291757 () Bool)

(assert (=> b!6291757 (= e!3825737 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291758 () Bool)

(declare-fun e!3825736 () (InoxSet Context!11194))

(assert (=> b!6291758 (= e!3825736 ((_ map or) call!532822 call!532821))))

(declare-fun b!6291759 () Bool)

(assert (=> b!6291759 (= e!3825739 call!532823)))

(declare-fun b!6291760 () Bool)

(assert (=> b!6291760 (= c!1141863 e!3825738)))

(declare-fun res!2594719 () Bool)

(assert (=> b!6291760 (=> (not res!2594719) (not e!3825738))))

(assert (=> b!6291760 (= res!2594719 ((_ is Concat!25058) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))))))

(assert (=> b!6291760 (= e!3825736 e!3825740)))

(declare-fun bm!532818 () Bool)

(assert (=> bm!532818 (= call!532820 ($colon$colon!2078 (exprs!6097 (ite (or c!1141598 c!1141600) lt!2357077 (Context!11195 call!532640))) (ite (or c!1141863 c!1141864) (regTwo!32938 (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292)))))))))))

(declare-fun b!6291761 () Bool)

(assert (=> b!6291761 (= e!3825740 ((_ map or) call!532822 call!532824))))

(declare-fun c!1141862 () Bool)

(declare-fun b!6291762 () Bool)

(assert (=> b!6291762 (= c!1141862 ((_ is Star!16213) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))))))

(assert (=> b!6291762 (= e!3825739 e!3825737)))

(declare-fun bm!532819 () Bool)

(assert (=> bm!532819 (= call!532825 call!532820)))

(declare-fun bm!532820 () Bool)

(assert (=> bm!532820 (= call!532823 call!532824)))

(declare-fun b!6291763 () Bool)

(assert (=> b!6291763 (= e!3825735 e!3825736)))

(assert (=> b!6291763 (= c!1141861 ((_ is Union!16213) (ite c!1141598 (regTwo!32939 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141600 (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (ite c!1141601 (regOne!32938 (regTwo!32938 (regOne!32938 r!7292))) (reg!16542 (regTwo!32938 (regOne!32938 r!7292))))))))))

(assert (= (and d!1974490 c!1141865) b!6291754))

(assert (= (and d!1974490 (not c!1141865)) b!6291763))

(assert (= (and b!6291763 c!1141861) b!6291758))

(assert (= (and b!6291763 (not c!1141861)) b!6291760))

(assert (= (and b!6291760 res!2594719) b!6291753))

(assert (= (and b!6291760 c!1141863) b!6291761))

(assert (= (and b!6291760 (not c!1141863)) b!6291756))

(assert (= (and b!6291756 c!1141864) b!6291759))

(assert (= (and b!6291756 (not c!1141864)) b!6291762))

(assert (= (and b!6291762 c!1141862) b!6291755))

(assert (= (and b!6291762 (not c!1141862)) b!6291757))

(assert (= (or b!6291759 b!6291755) bm!532819))

(assert (= (or b!6291759 b!6291755) bm!532820))

(assert (= (or b!6291761 bm!532819) bm!532818))

(assert (= (or b!6291761 bm!532820) bm!532816))

(assert (= (or b!6291758 bm!532816) bm!532817))

(assert (= (or b!6291758 b!6291761) bm!532815))

(declare-fun m!7112356 () Bool)

(assert (=> b!6291753 m!7112356))

(declare-fun m!7112358 () Bool)

(assert (=> b!6291754 m!7112358))

(declare-fun m!7112360 () Bool)

(assert (=> bm!532815 m!7112360))

(declare-fun m!7112364 () Bool)

(assert (=> bm!532818 m!7112364))

(declare-fun m!7112366 () Bool)

(assert (=> bm!532817 m!7112366))

(assert (=> bm!532632 d!1974490))

(declare-fun d!1974492 () Bool)

(assert (=> d!1974492 (= (nullable!6206 r!7292) (nullableFct!2157 r!7292))))

(declare-fun bs!1572881 () Bool)

(assert (= bs!1572881 d!1974492))

(declare-fun m!7112368 () Bool)

(assert (=> bs!1572881 m!7112368))

(assert (=> b!6290540 d!1974492))

(declare-fun d!1974496 () Bool)

(declare-fun res!2594720 () Bool)

(declare-fun e!3825744 () Bool)

(assert (=> d!1974496 (=> res!2594720 e!3825744)))

(assert (=> d!1974496 (= res!2594720 ((_ is Nil!64815) lt!2357198))))

(assert (=> d!1974496 (= (forall!15362 lt!2357198 lambda!345546) e!3825744)))

(declare-fun b!6291764 () Bool)

(declare-fun e!3825745 () Bool)

(assert (=> b!6291764 (= e!3825744 e!3825745)))

(declare-fun res!2594721 () Bool)

(assert (=> b!6291764 (=> (not res!2594721) (not e!3825745))))

(assert (=> b!6291764 (= res!2594721 (dynLambda!25651 lambda!345546 (h!71263 lt!2357198)))))

(declare-fun b!6291765 () Bool)

(assert (=> b!6291765 (= e!3825745 (forall!15362 (t!378501 lt!2357198) lambda!345546))))

(assert (= (and d!1974496 (not res!2594720)) b!6291764))

(assert (= (and b!6291764 res!2594721) b!6291765))

(declare-fun b_lambda!239383 () Bool)

(assert (=> (not b_lambda!239383) (not b!6291764)))

(declare-fun m!7112370 () Bool)

(assert (=> b!6291764 m!7112370))

(declare-fun m!7112372 () Bool)

(assert (=> b!6291765 m!7112372))

(assert (=> d!1973910 d!1974496))

(declare-fun bs!1572882 () Bool)

(declare-fun b!6291786 () Bool)

(assert (= bs!1572882 (and b!6291786 b!6289815)))

(declare-fun lambda!345670 () Int)

(assert (=> bs!1572882 (not (= lambda!345670 lambda!345482))))

(declare-fun bs!1572883 () Bool)

(assert (= bs!1572883 (and b!6291786 d!1974006)))

(assert (=> bs!1572883 (not (= lambda!345670 lambda!345573))))

(declare-fun bs!1572884 () Bool)

(assert (= bs!1572884 (and b!6291786 d!1974334)))

(assert (=> bs!1572884 (not (= lambda!345670 lambda!345632))))

(declare-fun bs!1572885 () Bool)

(assert (= bs!1572885 (and b!6291786 b!6291625)))

(assert (=> bs!1572885 (not (= lambda!345670 lambda!345649))))

(declare-fun bs!1572886 () Bool)

(assert (= bs!1572886 (and b!6291786 d!1974320)))

(assert (=> bs!1572886 (not (= lambda!345670 lambda!345628))))

(declare-fun bs!1572887 () Bool)

(assert (= bs!1572887 (and b!6291786 d!1974042)))

(assert (=> bs!1572887 (not (= lambda!345670 lambda!345581))))

(declare-fun bs!1572888 () Bool)

(assert (= bs!1572888 (and b!6291786 d!1974040)))

(assert (=> bs!1572888 (not (= lambda!345670 lambda!345578))))

(declare-fun bs!1572889 () Bool)

(assert (= bs!1572889 (and b!6291786 b!6290728)))

(assert (=> bs!1572889 (not (= lambda!345670 lambda!345576))))

(declare-fun bs!1572890 () Bool)

(assert (= bs!1572890 (and b!6291786 b!6291172)))

(assert (=> bs!1572890 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 (regOne!32939 lt!2357061))) (= (regTwo!32939 r!7292) (regOne!32939 lt!2357061))) (= lambda!345670 lambda!345615))))

(declare-fun bs!1572892 () Bool)

(assert (= bs!1572892 (and b!6291786 b!6291163)))

(assert (=> bs!1572892 (not (= lambda!345670 lambda!345616))))

(assert (=> bs!1572886 (not (= lambda!345670 lambda!345629))))

(declare-fun bs!1572894 () Bool)

(assert (= bs!1572894 (and b!6291786 d!1973990)))

(assert (=> bs!1572894 (not (= lambda!345670 lambda!345565))))

(declare-fun bs!1572896 () Bool)

(assert (= bs!1572896 (and b!6291786 b!6289816)))

(assert (=> bs!1572896 (not (= lambda!345670 lambda!345480))))

(assert (=> bs!1572882 (not (= lambda!345670 lambda!345483))))

(declare-fun bs!1572897 () Bool)

(assert (= bs!1572897 (and b!6291786 d!1973988)))

(assert (=> bs!1572897 (not (= lambda!345670 lambda!345560))))

(declare-fun bs!1572898 () Bool)

(assert (= bs!1572898 (and b!6291786 b!6290675)))

(assert (=> bs!1572898 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 lt!2357061)) (= (regTwo!32939 r!7292) lt!2357061)) (= lambda!345670 lambda!345567))))

(assert (=> bs!1572894 (not (= lambda!345670 lambda!345566))))

(declare-fun bs!1572899 () Bool)

(assert (= bs!1572899 (and b!6291786 d!1974400)))

(assert (=> bs!1572899 (not (= lambda!345670 lambda!345643))))

(declare-fun bs!1572900 () Bool)

(assert (= bs!1572900 (and b!6291786 b!6290737)))

(assert (=> bs!1572900 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 lt!2357070)) (= (regTwo!32939 r!7292) lt!2357070)) (= lambda!345670 lambda!345575))))

(assert (=> bs!1572888 (not (= lambda!345670 lambda!345579))))

(declare-fun bs!1572901 () Bool)

(assert (= bs!1572901 (and b!6291786 d!1974414)))

(assert (=> bs!1572901 (not (= lambda!345670 lambda!345646))))

(declare-fun bs!1572902 () Bool)

(assert (= bs!1572902 (and b!6291786 d!1974010)))

(assert (=> bs!1572902 (not (= lambda!345670 lambda!345574))))

(declare-fun bs!1572903 () Bool)

(assert (= bs!1572903 (and b!6291786 b!6291642)))

(assert (=> bs!1572903 (not (= lambda!345670 lambda!345657))))

(assert (=> bs!1572887 (not (= lambda!345670 lambda!345580))))

(assert (=> bs!1572896 (not (= lambda!345670 lambda!345479))))

(declare-fun bs!1572904 () Bool)

(assert (= bs!1572904 (and b!6291786 b!6290448)))

(assert (=> bs!1572904 (not (= lambda!345670 lambda!345554))))

(declare-fun bs!1572905 () Bool)

(assert (= bs!1572905 (and b!6291786 b!6290666)))

(assert (=> bs!1572905 (not (= lambda!345670 lambda!345568))))

(declare-fun bs!1572906 () Bool)

(assert (= bs!1572906 (and b!6291786 d!1974356)))

(assert (=> bs!1572906 (not (= lambda!345670 lambda!345636))))

(assert (=> bs!1572882 (not (= lambda!345670 lambda!345484))))

(declare-fun bs!1572908 () Bool)

(assert (= bs!1572908 (and b!6291786 b!6291651)))

(assert (=> bs!1572908 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 (regOne!32939 r!7292))) (= (regTwo!32939 r!7292) (regOne!32939 r!7292))) (= lambda!345670 lambda!345654))))

(declare-fun bs!1572909 () Bool)

(assert (= bs!1572909 (and b!6291786 b!6290457)))

(assert (=> bs!1572909 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 r!7292)) (= (regTwo!32939 r!7292) r!7292)) (= lambda!345670 lambda!345553))))

(declare-fun bs!1572910 () Bool)

(assert (= bs!1572910 (and b!6291786 b!6291634)))

(assert (=> bs!1572910 (= (and (= (reg!16542 (regTwo!32939 r!7292)) (reg!16542 (regTwo!32939 lt!2357070))) (= (regTwo!32939 r!7292) (regTwo!32939 lt!2357070))) (= lambda!345670 lambda!345648))))

(assert (=> bs!1572901 (not (= lambda!345670 lambda!345647))))

(assert (=> bs!1572882 (not (= lambda!345670 lambda!345485))))

(assert (=> b!6291786 true))

(assert (=> b!6291786 true))

(declare-fun bs!1572915 () Bool)

(declare-fun b!6291777 () Bool)

(assert (= bs!1572915 (and b!6291777 b!6289815)))

(declare-fun lambda!345672 () Int)

(assert (=> bs!1572915 (not (= lambda!345672 lambda!345482))))

(declare-fun bs!1572917 () Bool)

(assert (= bs!1572917 (and b!6291777 d!1974006)))

(assert (=> bs!1572917 (not (= lambda!345672 lambda!345573))))

(declare-fun bs!1572918 () Bool)

(assert (= bs!1572918 (and b!6291777 d!1974334)))

(assert (=> bs!1572918 (not (= lambda!345672 lambda!345632))))

(declare-fun bs!1572920 () Bool)

(assert (= bs!1572920 (and b!6291777 b!6291625)))

(assert (=> bs!1572920 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regTwo!32939 lt!2357070))) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regTwo!32939 lt!2357070)))) (= lambda!345672 lambda!345649))))

(declare-fun bs!1572921 () Bool)

(assert (= bs!1572921 (and b!6291777 d!1974320)))

(assert (=> bs!1572921 (not (= lambda!345672 lambda!345628))))

(declare-fun bs!1572923 () Bool)

(assert (= bs!1572923 (and b!6291777 d!1974042)))

(assert (=> bs!1572923 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357053)) (= lambda!345672 lambda!345581))))

(declare-fun bs!1572924 () Bool)

(assert (= bs!1572924 (and b!6291777 d!1974040)))

(assert (=> bs!1572924 (not (= lambda!345672 lambda!345578))))

(declare-fun bs!1572925 () Bool)

(assert (= bs!1572925 (and b!6291777 b!6290728)))

(assert (=> bs!1572925 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 lt!2357070))) (= lambda!345672 lambda!345576))))

(declare-fun bs!1572926 () Bool)

(assert (= bs!1572926 (and b!6291777 b!6291163)))

(assert (=> bs!1572926 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345672 lambda!345616))))

(assert (=> bs!1572921 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357053)) (= lambda!345672 lambda!345629))))

(declare-fun bs!1572927 () Bool)

(assert (= bs!1572927 (and b!6291777 d!1973990)))

(assert (=> bs!1572927 (not (= lambda!345672 lambda!345565))))

(declare-fun bs!1572929 () Bool)

(assert (= bs!1572929 (and b!6291777 b!6289816)))

(assert (=> bs!1572929 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345672 lambda!345480))))

(assert (=> bs!1572915 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357070)) (= lambda!345672 lambda!345483))))

(declare-fun bs!1572931 () Bool)

(assert (= bs!1572931 (and b!6291777 d!1973988)))

(assert (=> bs!1572931 (not (= lambda!345672 lambda!345560))))

(declare-fun bs!1572932 () Bool)

(assert (= bs!1572932 (and b!6291777 b!6290675)))

(assert (=> bs!1572932 (not (= lambda!345672 lambda!345567))))

(assert (=> bs!1572927 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345672 lambda!345566))))

(declare-fun bs!1572934 () Bool)

(assert (= bs!1572934 (and b!6291777 d!1974400)))

(assert (=> bs!1572934 (not (= lambda!345672 lambda!345643))))

(declare-fun bs!1572935 () Bool)

(assert (= bs!1572935 (and b!6291777 b!6290737)))

(assert (=> bs!1572935 (not (= lambda!345672 lambda!345575))))

(assert (=> bs!1572924 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357070)) (= lambda!345672 lambda!345579))))

(declare-fun bs!1572936 () Bool)

(assert (= bs!1572936 (and b!6291777 d!1974414)))

(assert (=> bs!1572936 (not (= lambda!345672 lambda!345646))))

(declare-fun bs!1572938 () Bool)

(assert (= bs!1572938 (and b!6291777 b!6291172)))

(assert (=> bs!1572938 (not (= lambda!345672 lambda!345615))))

(declare-fun bs!1572939 () Bool)

(assert (= bs!1572939 (and b!6291777 b!6291786)))

(assert (=> bs!1572939 (not (= lambda!345672 lambda!345670))))

(declare-fun bs!1572941 () Bool)

(assert (= bs!1572941 (and b!6291777 d!1974010)))

(assert (=> bs!1572941 (not (= lambda!345672 lambda!345574))))

(declare-fun bs!1572942 () Bool)

(assert (= bs!1572942 (and b!6291777 b!6291642)))

(assert (=> bs!1572942 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regOne!32939 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regOne!32939 r!7292)))) (= lambda!345672 lambda!345657))))

(assert (=> bs!1572923 (not (= lambda!345672 lambda!345580))))

(assert (=> bs!1572929 (not (= lambda!345672 lambda!345479))))

(declare-fun bs!1572944 () Bool)

(assert (= bs!1572944 (and b!6291777 b!6290448)))

(assert (=> bs!1572944 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 r!7292))) (= lambda!345672 lambda!345554))))

(declare-fun bs!1572945 () Bool)

(assert (= bs!1572945 (and b!6291777 b!6290666)))

(assert (=> bs!1572945 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regTwo!32939 r!7292)) (regTwo!32938 lt!2357061))) (= lambda!345672 lambda!345568))))

(declare-fun bs!1572946 () Bool)

(assert (= bs!1572946 (and b!6291777 d!1974356)))

(assert (=> bs!1572946 (not (= lambda!345672 lambda!345636))))

(assert (=> bs!1572915 (not (= lambda!345672 lambda!345484))))

(declare-fun bs!1572947 () Bool)

(assert (= bs!1572947 (and b!6291777 b!6291651)))

(assert (=> bs!1572947 (not (= lambda!345672 lambda!345654))))

(declare-fun bs!1572948 () Bool)

(assert (= bs!1572948 (and b!6291777 b!6290457)))

(assert (=> bs!1572948 (not (= lambda!345672 lambda!345553))))

(declare-fun bs!1572949 () Bool)

(assert (= bs!1572949 (and b!6291777 b!6291634)))

(assert (=> bs!1572949 (not (= lambda!345672 lambda!345648))))

(assert (=> bs!1572936 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357070)) (= lambda!345672 lambda!345647))))

(assert (=> bs!1572915 (= (and (= (regOne!32938 (regTwo!32939 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 r!7292)) lt!2357053)) (= lambda!345672 lambda!345485))))

(assert (=> b!6291777 true))

(assert (=> b!6291777 true))

(declare-fun b!6291776 () Bool)

(declare-fun c!1141872 () Bool)

(assert (=> b!6291776 (= c!1141872 ((_ is Union!16213) (regTwo!32939 r!7292)))))

(declare-fun e!3825752 () Bool)

(declare-fun e!3825751 () Bool)

(assert (=> b!6291776 (= e!3825752 e!3825751)))

(declare-fun e!3825749 () Bool)

(declare-fun call!532831 () Bool)

(assert (=> b!6291777 (= e!3825749 call!532831)))

(declare-fun b!6291778 () Bool)

(declare-fun e!3825748 () Bool)

(declare-fun e!3825754 () Bool)

(assert (=> b!6291778 (= e!3825748 e!3825754)))

(declare-fun res!2594722 () Bool)

(assert (=> b!6291778 (= res!2594722 (not ((_ is EmptyLang!16213) (regTwo!32939 r!7292))))))

(assert (=> b!6291778 (=> (not res!2594722) (not e!3825754))))

(declare-fun b!6291779 () Bool)

(declare-fun e!3825753 () Bool)

(assert (=> b!6291779 (= e!3825751 e!3825753)))

(declare-fun res!2594723 () Bool)

(assert (=> b!6291779 (= res!2594723 (matchRSpec!3314 (regOne!32939 (regTwo!32939 r!7292)) s!2326))))

(assert (=> b!6291779 (=> res!2594723 e!3825753)))

(declare-fun b!6291780 () Bool)

(declare-fun res!2594724 () Bool)

(declare-fun e!3825750 () Bool)

(assert (=> b!6291780 (=> res!2594724 e!3825750)))

(declare-fun call!532830 () Bool)

(assert (=> b!6291780 (= res!2594724 call!532830)))

(assert (=> b!6291780 (= e!3825749 e!3825750)))

(declare-fun b!6291781 () Bool)

(assert (=> b!6291781 (= e!3825752 (= s!2326 (Cons!64814 (c!1141284 (regTwo!32939 r!7292)) Nil!64814)))))

(declare-fun b!6291782 () Bool)

(assert (=> b!6291782 (= e!3825751 e!3825749)))

(declare-fun c!1141871 () Bool)

(assert (=> b!6291782 (= c!1141871 ((_ is Star!16213) (regTwo!32939 r!7292)))))

(declare-fun b!6291783 () Bool)

(declare-fun c!1141874 () Bool)

(assert (=> b!6291783 (= c!1141874 ((_ is ElementMatch!16213) (regTwo!32939 r!7292)))))

(assert (=> b!6291783 (= e!3825754 e!3825752)))

(declare-fun d!1974498 () Bool)

(declare-fun c!1141873 () Bool)

(assert (=> d!1974498 (= c!1141873 ((_ is EmptyExpr!16213) (regTwo!32939 r!7292)))))

(assert (=> d!1974498 (= (matchRSpec!3314 (regTwo!32939 r!7292) s!2326) e!3825748)))

(declare-fun b!6291784 () Bool)

(assert (=> b!6291784 (= e!3825753 (matchRSpec!3314 (regTwo!32939 (regTwo!32939 r!7292)) s!2326))))

(declare-fun b!6291785 () Bool)

(assert (=> b!6291785 (= e!3825748 call!532830)))

(assert (=> b!6291786 (= e!3825750 call!532831)))

(declare-fun bm!532825 () Bool)

(assert (=> bm!532825 (= call!532830 (isEmpty!36872 s!2326))))

(declare-fun bm!532826 () Bool)

(assert (=> bm!532826 (= call!532831 (Exists!3283 (ite c!1141871 lambda!345670 lambda!345672)))))

(assert (= (and d!1974498 c!1141873) b!6291785))

(assert (= (and d!1974498 (not c!1141873)) b!6291778))

(assert (= (and b!6291778 res!2594722) b!6291783))

(assert (= (and b!6291783 c!1141874) b!6291781))

(assert (= (and b!6291783 (not c!1141874)) b!6291776))

(assert (= (and b!6291776 c!1141872) b!6291779))

(assert (= (and b!6291776 (not c!1141872)) b!6291782))

(assert (= (and b!6291779 (not res!2594723)) b!6291784))

(assert (= (and b!6291782 c!1141871) b!6291780))

(assert (= (and b!6291782 (not c!1141871)) b!6291777))

(assert (= (and b!6291780 (not res!2594724)) b!6291786))

(assert (= (or b!6291786 b!6291777) bm!532826))

(assert (= (or b!6291785 b!6291780) bm!532825))

(declare-fun m!7112388 () Bool)

(assert (=> b!6291779 m!7112388))

(declare-fun m!7112390 () Bool)

(assert (=> b!6291784 m!7112390))

(assert (=> bm!532825 m!7111076))

(declare-fun m!7112392 () Bool)

(assert (=> bm!532826 m!7112392))

(assert (=> b!6290455 d!1974498))

(assert (=> b!6290559 d!1974052))

(declare-fun d!1974510 () Bool)

(assert (=> d!1974510 (= (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))) (nullableFct!2157 (h!71263 (exprs!6097 (Context!11195 (Cons!64815 (h!71263 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343)))))))))))

(declare-fun bs!1572951 () Bool)

(assert (= bs!1572951 d!1974510))

(declare-fun m!7112394 () Bool)

(assert (=> bs!1572951 m!7112394))

(assert (=> b!6290880 d!1974510))

(declare-fun d!1974512 () Bool)

(assert (=> d!1974512 (= (isEmpty!36870 (t!378501 (unfocusZipperList!1634 zl!343))) ((_ is Nil!64815) (t!378501 (unfocusZipperList!1634 zl!343))))))

(assert (=> b!6290317 d!1974512))

(declare-fun b!6291798 () Bool)

(declare-fun e!3825768 () Bool)

(assert (=> b!6291798 (= e!3825768 (nullable!6206 lt!2357070))))

(declare-fun b!6291799 () Bool)

(declare-fun res!2594732 () Bool)

(declare-fun e!3825765 () Bool)

(assert (=> b!6291799 (=> res!2594732 e!3825765)))

(declare-fun e!3825764 () Bool)

(assert (=> b!6291799 (= res!2594732 e!3825764)))

(declare-fun res!2594735 () Bool)

(assert (=> b!6291799 (=> (not res!2594735) (not e!3825764))))

(declare-fun lt!2357375 () Bool)

(assert (=> b!6291799 (= res!2594735 lt!2357375)))

(declare-fun b!6291800 () Bool)

(assert (=> b!6291800 (= e!3825764 (= (head!12927 (_2!36495 (get!22408 lt!2357248))) (c!1141284 lt!2357070)))))

(declare-fun b!6291801 () Bool)

(declare-fun e!3825766 () Bool)

(assert (=> b!6291801 (= e!3825766 (not (= (head!12927 (_2!36495 (get!22408 lt!2357248))) (c!1141284 lt!2357070))))))

(declare-fun d!1974514 () Bool)

(declare-fun e!3825767 () Bool)

(assert (=> d!1974514 e!3825767))

(declare-fun c!1141879 () Bool)

(assert (=> d!1974514 (= c!1141879 ((_ is EmptyExpr!16213) lt!2357070))))

(assert (=> d!1974514 (= lt!2357375 e!3825768)))

(declare-fun c!1141880 () Bool)

(assert (=> d!1974514 (= c!1141880 (isEmpty!36872 (_2!36495 (get!22408 lt!2357248))))))

(assert (=> d!1974514 (validRegex!7949 lt!2357070)))

(assert (=> d!1974514 (= (matchR!8396 lt!2357070 (_2!36495 (get!22408 lt!2357248))) lt!2357375)))

(declare-fun b!6291802 () Bool)

(declare-fun e!3825763 () Bool)

(assert (=> b!6291802 (= e!3825763 (not lt!2357375))))

(declare-fun b!6291803 () Bool)

(declare-fun e!3825762 () Bool)

(assert (=> b!6291803 (= e!3825765 e!3825762)))

(declare-fun res!2594734 () Bool)

(assert (=> b!6291803 (=> (not res!2594734) (not e!3825762))))

(assert (=> b!6291803 (= res!2594734 (not lt!2357375))))

(declare-fun bm!532829 () Bool)

(declare-fun call!532834 () Bool)

(assert (=> bm!532829 (= call!532834 (isEmpty!36872 (_2!36495 (get!22408 lt!2357248))))))

(declare-fun b!6291804 () Bool)

(assert (=> b!6291804 (= e!3825767 (= lt!2357375 call!532834))))

(declare-fun b!6291805 () Bool)

(assert (=> b!6291805 (= e!3825767 e!3825763)))

(declare-fun c!1141881 () Bool)

(assert (=> b!6291805 (= c!1141881 ((_ is EmptyLang!16213) lt!2357070))))

(declare-fun b!6291806 () Bool)

(assert (=> b!6291806 (= e!3825762 e!3825766)))

(declare-fun res!2594733 () Bool)

(assert (=> b!6291806 (=> res!2594733 e!3825766)))

(assert (=> b!6291806 (= res!2594733 call!532834)))

(declare-fun b!6291807 () Bool)

(declare-fun res!2594729 () Bool)

(assert (=> b!6291807 (=> (not res!2594729) (not e!3825764))))

(assert (=> b!6291807 (= res!2594729 (not call!532834))))

(declare-fun b!6291808 () Bool)

(declare-fun res!2594728 () Bool)

(assert (=> b!6291808 (=> res!2594728 e!3825765)))

(assert (=> b!6291808 (= res!2594728 (not ((_ is ElementMatch!16213) lt!2357070)))))

(assert (=> b!6291808 (= e!3825763 e!3825765)))

(declare-fun b!6291809 () Bool)

(assert (=> b!6291809 (= e!3825768 (matchR!8396 (derivativeStep!4922 lt!2357070 (head!12927 (_2!36495 (get!22408 lt!2357248)))) (tail!12012 (_2!36495 (get!22408 lt!2357248)))))))

(declare-fun b!6291810 () Bool)

(declare-fun res!2594730 () Bool)

(assert (=> b!6291810 (=> (not res!2594730) (not e!3825764))))

(assert (=> b!6291810 (= res!2594730 (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357248)))))))

(declare-fun b!6291811 () Bool)

(declare-fun res!2594731 () Bool)

(assert (=> b!6291811 (=> res!2594731 e!3825766)))

(assert (=> b!6291811 (= res!2594731 (not (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357248))))))))

(assert (= (and d!1974514 c!1141880) b!6291798))

(assert (= (and d!1974514 (not c!1141880)) b!6291809))

(assert (= (and d!1974514 c!1141879) b!6291804))

(assert (= (and d!1974514 (not c!1141879)) b!6291805))

(assert (= (and b!6291805 c!1141881) b!6291802))

(assert (= (and b!6291805 (not c!1141881)) b!6291808))

(assert (= (and b!6291808 (not res!2594728)) b!6291799))

(assert (= (and b!6291799 res!2594735) b!6291807))

(assert (= (and b!6291807 res!2594729) b!6291810))

(assert (= (and b!6291810 res!2594730) b!6291800))

(assert (= (and b!6291799 (not res!2594732)) b!6291803))

(assert (= (and b!6291803 res!2594734) b!6291806))

(assert (= (and b!6291806 (not res!2594733)) b!6291811))

(assert (= (and b!6291811 (not res!2594731)) b!6291801))

(assert (= (or b!6291804 b!6291806 b!6291807) bm!532829))

(declare-fun m!7112396 () Bool)

(assert (=> bm!532829 m!7112396))

(declare-fun m!7112398 () Bool)

(assert (=> b!6291809 m!7112398))

(assert (=> b!6291809 m!7112398))

(declare-fun m!7112400 () Bool)

(assert (=> b!6291809 m!7112400))

(declare-fun m!7112402 () Bool)

(assert (=> b!6291809 m!7112402))

(assert (=> b!6291809 m!7112400))

(assert (=> b!6291809 m!7112402))

(declare-fun m!7112404 () Bool)

(assert (=> b!6291809 m!7112404))

(assert (=> b!6291801 m!7112398))

(assert (=> b!6291811 m!7112402))

(assert (=> b!6291811 m!7112402))

(declare-fun m!7112406 () Bool)

(assert (=> b!6291811 m!7112406))

(assert (=> b!6291798 m!7111212))

(assert (=> b!6291800 m!7112398))

(assert (=> b!6291810 m!7112402))

(assert (=> b!6291810 m!7112402))

(assert (=> b!6291810 m!7112406))

(assert (=> d!1974514 m!7112396))

(assert (=> d!1974514 m!7111214))

(assert (=> b!6290720 d!1974514))

(assert (=> b!6290720 d!1974124))

(declare-fun d!1974516 () Bool)

(declare-fun c!1141884 () Bool)

(assert (=> d!1974516 (= c!1141884 ((_ is Nil!64816) lt!2357215))))

(declare-fun e!3825771 () (InoxSet Context!11194))

(assert (=> d!1974516 (= (content!12190 lt!2357215) e!3825771)))

(declare-fun b!6291816 () Bool)

(assert (=> b!6291816 (= e!3825771 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291817 () Bool)

(assert (=> b!6291817 (= e!3825771 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) (h!71264 lt!2357215) true) (content!12190 (t!378502 lt!2357215))))))

(assert (= (and d!1974516 c!1141884) b!6291816))

(assert (= (and d!1974516 (not c!1141884)) b!6291817))

(declare-fun m!7112408 () Bool)

(assert (=> b!6291817 m!7112408))

(declare-fun m!7112410 () Bool)

(assert (=> b!6291817 m!7112410))

(assert (=> b!6290556 d!1974516))

(declare-fun d!1974518 () Bool)

(assert (=> d!1974518 (= (isEmptyExpr!1619 lt!2357244) ((_ is EmptyExpr!16213) lt!2357244))))

(assert (=> b!6290713 d!1974518))

(assert (=> d!1973974 d!1974120))

(assert (=> b!6290918 d!1974128))

(assert (=> b!6290918 d!1974130))

(declare-fun b!6291818 () Bool)

(declare-fun e!3825774 () Bool)

(assert (=> b!6291818 (= e!3825774 (nullable!6206 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))))))))

(declare-fun b!6291819 () Bool)

(declare-fun e!3825772 () (InoxSet Context!11194))

(assert (=> b!6291819 (= e!3825772 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291820 () Bool)

(declare-fun call!532835 () (InoxSet Context!11194))

(assert (=> b!6291820 (= e!3825772 call!532835)))

(declare-fun e!3825773 () (InoxSet Context!11194))

(declare-fun b!6291821 () Bool)

(assert (=> b!6291821 (= e!3825773 ((_ map or) call!532835 (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))))) (h!71262 s!2326))))))

(declare-fun d!1974520 () Bool)

(declare-fun c!1141885 () Bool)

(assert (=> d!1974520 (= c!1141885 e!3825774)))

(declare-fun res!2594736 () Bool)

(assert (=> d!1974520 (=> (not res!2594736) (not e!3825774))))

(assert (=> d!1974520 (= res!2594736 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083))))))))

(assert (=> d!1974520 (= (derivationStepZipperUp!1387 (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (h!71262 s!2326)) e!3825773)))

(declare-fun bm!532830 () Bool)

(assert (=> bm!532830 (= call!532835 (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083))))) (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))))) (h!71262 s!2326)))))

(declare-fun b!6291822 () Bool)

(assert (=> b!6291822 (= e!3825773 e!3825772)))

(declare-fun c!1141886 () Bool)

(assert (=> b!6291822 (= c!1141886 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083))))))))

(assert (= (and d!1974520 res!2594736) b!6291818))

(assert (= (and d!1974520 c!1141885) b!6291821))

(assert (= (and d!1974520 (not c!1141885)) b!6291822))

(assert (= (and b!6291822 c!1141886) b!6291820))

(assert (= (and b!6291822 (not c!1141886)) b!6291819))

(assert (= (or b!6291821 b!6291820) bm!532830))

(declare-fun m!7112422 () Bool)

(assert (=> b!6291818 m!7112422))

(declare-fun m!7112424 () Bool)

(assert (=> b!6291821 m!7112424))

(declare-fun m!7112426 () Bool)

(assert (=> bm!532830 m!7112426))

(assert (=> b!6290804 d!1974520))

(declare-fun d!1974526 () Bool)

(declare-fun res!2594738 () Bool)

(declare-fun e!3825780 () Bool)

(assert (=> d!1974526 (=> res!2594738 e!3825780)))

(assert (=> d!1974526 (= res!2594738 ((_ is ElementMatch!16213) lt!2357287))))

(assert (=> d!1974526 (= (validRegex!7949 lt!2357287) e!3825780)))

(declare-fun b!6291827 () Bool)

(declare-fun res!2594740 () Bool)

(declare-fun e!3825781 () Bool)

(assert (=> b!6291827 (=> res!2594740 e!3825781)))

(assert (=> b!6291827 (= res!2594740 (not ((_ is Concat!25058) lt!2357287)))))

(declare-fun e!3825777 () Bool)

(assert (=> b!6291827 (= e!3825777 e!3825781)))

(declare-fun c!1141890 () Bool)

(declare-fun c!1141889 () Bool)

(declare-fun call!532838 () Bool)

(declare-fun bm!532831 () Bool)

(assert (=> bm!532831 (= call!532838 (validRegex!7949 (ite c!1141890 (reg!16542 lt!2357287) (ite c!1141889 (regTwo!32939 lt!2357287) (regTwo!32938 lt!2357287)))))))

(declare-fun b!6291828 () Bool)

(declare-fun e!3825779 () Bool)

(assert (=> b!6291828 (= e!3825779 e!3825777)))

(assert (=> b!6291828 (= c!1141889 ((_ is Union!16213) lt!2357287))))

(declare-fun bm!532832 () Bool)

(declare-fun call!532837 () Bool)

(assert (=> bm!532832 (= call!532837 call!532838)))

(declare-fun b!6291829 () Bool)

(declare-fun e!3825783 () Bool)

(assert (=> b!6291829 (= e!3825779 e!3825783)))

(declare-fun res!2594741 () Bool)

(assert (=> b!6291829 (= res!2594741 (not (nullable!6206 (reg!16542 lt!2357287))))))

(assert (=> b!6291829 (=> (not res!2594741) (not e!3825783))))

(declare-fun b!6291830 () Bool)

(assert (=> b!6291830 (= e!3825780 e!3825779)))

(assert (=> b!6291830 (= c!1141890 ((_ is Star!16213) lt!2357287))))

(declare-fun b!6291831 () Bool)

(declare-fun res!2594739 () Bool)

(declare-fun e!3825778 () Bool)

(assert (=> b!6291831 (=> (not res!2594739) (not e!3825778))))

(declare-fun call!532836 () Bool)

(assert (=> b!6291831 (= res!2594739 call!532836)))

(assert (=> b!6291831 (= e!3825777 e!3825778)))

(declare-fun bm!532833 () Bool)

(assert (=> bm!532833 (= call!532836 (validRegex!7949 (ite c!1141889 (regOne!32939 lt!2357287) (regOne!32938 lt!2357287))))))

(declare-fun b!6291832 () Bool)

(assert (=> b!6291832 (= e!3825783 call!532838)))

(declare-fun b!6291833 () Bool)

(declare-fun e!3825782 () Bool)

(assert (=> b!6291833 (= e!3825781 e!3825782)))

(declare-fun res!2594737 () Bool)

(assert (=> b!6291833 (=> (not res!2594737) (not e!3825782))))

(assert (=> b!6291833 (= res!2594737 call!532836)))

(declare-fun b!6291834 () Bool)

(assert (=> b!6291834 (= e!3825782 call!532837)))

(declare-fun b!6291835 () Bool)

(assert (=> b!6291835 (= e!3825778 call!532837)))

(assert (= (and d!1974526 (not res!2594738)) b!6291830))

(assert (= (and b!6291830 c!1141890) b!6291829))

(assert (= (and b!6291830 (not c!1141890)) b!6291828))

(assert (= (and b!6291829 res!2594741) b!6291832))

(assert (= (and b!6291828 c!1141889) b!6291831))

(assert (= (and b!6291828 (not c!1141889)) b!6291827))

(assert (= (and b!6291831 res!2594739) b!6291835))

(assert (= (and b!6291827 (not res!2594740)) b!6291833))

(assert (= (and b!6291833 res!2594737) b!6291834))

(assert (= (or b!6291835 b!6291834) bm!532832))

(assert (= (or b!6291831 b!6291833) bm!532833))

(assert (= (or b!6291832 bm!532832) bm!532831))

(declare-fun m!7112432 () Bool)

(assert (=> bm!532831 m!7112432))

(declare-fun m!7112434 () Bool)

(assert (=> b!6291829 m!7112434))

(declare-fun m!7112436 () Bool)

(assert (=> bm!532833 m!7112436))

(assert (=> d!1974090 d!1974526))

(declare-fun d!1974534 () Bool)

(declare-fun res!2594742 () Bool)

(declare-fun e!3825784 () Bool)

(assert (=> d!1974534 (=> res!2594742 e!3825784)))

(assert (=> d!1974534 (= res!2594742 ((_ is Nil!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1974534 (= (forall!15362 (exprs!6097 (h!71264 zl!343)) lambda!345599) e!3825784)))

(declare-fun b!6291836 () Bool)

(declare-fun e!3825785 () Bool)

(assert (=> b!6291836 (= e!3825784 e!3825785)))

(declare-fun res!2594743 () Bool)

(assert (=> b!6291836 (=> (not res!2594743) (not e!3825785))))

(assert (=> b!6291836 (= res!2594743 (dynLambda!25651 lambda!345599 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6291837 () Bool)

(assert (=> b!6291837 (= e!3825785 (forall!15362 (t!378501 (exprs!6097 (h!71264 zl!343))) lambda!345599))))

(assert (= (and d!1974534 (not res!2594742)) b!6291836))

(assert (= (and b!6291836 res!2594743) b!6291837))

(declare-fun b_lambda!239385 () Bool)

(assert (=> (not b_lambda!239385) (not b!6291836)))

(declare-fun m!7112438 () Bool)

(assert (=> b!6291836 m!7112438))

(declare-fun m!7112440 () Bool)

(assert (=> b!6291837 m!7112440))

(assert (=> d!1974090 d!1974534))

(assert (=> b!6290664 d!1974128))

(assert (=> b!6290664 d!1974130))

(assert (=> b!6290956 d!1973980))

(declare-fun d!1974536 () Bool)

(declare-fun c!1141891 () Bool)

(assert (=> d!1974536 (= c!1141891 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825786 () Bool)

(assert (=> d!1974536 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357052 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825786)))

(declare-fun b!6291838 () Bool)

(assert (=> b!6291838 (= e!3825786 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357052 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6291839 () Bool)

(assert (=> b!6291839 (= e!3825786 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357052 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974536 c!1141891) b!6291838))

(assert (= (and d!1974536 (not c!1141891)) b!6291839))

(assert (=> d!1974536 m!7111112))

(assert (=> d!1974536 m!7111724))

(assert (=> b!6291838 m!7111570))

(declare-fun m!7112442 () Bool)

(assert (=> b!6291838 m!7112442))

(assert (=> b!6291839 m!7111112))

(assert (=> b!6291839 m!7111728))

(assert (=> b!6291839 m!7111570))

(assert (=> b!6291839 m!7111728))

(declare-fun m!7112444 () Bool)

(assert (=> b!6291839 m!7112444))

(assert (=> b!6291839 m!7111112))

(assert (=> b!6291839 m!7111732))

(assert (=> b!6291839 m!7112444))

(assert (=> b!6291839 m!7111732))

(declare-fun m!7112446 () Bool)

(assert (=> b!6291839 m!7112446))

(assert (=> b!6290961 d!1974536))

(declare-fun bs!1572966 () Bool)

(declare-fun d!1974538 () Bool)

(assert (= bs!1572966 (and d!1974538 d!1974426)))

(declare-fun lambda!345674 () Int)

(assert (=> bs!1572966 (= lambda!345674 lambda!345658)))

(declare-fun bs!1572967 () Bool)

(assert (= bs!1572967 (and d!1974538 d!1974464)))

(assert (=> bs!1572967 (= lambda!345674 lambda!345667)))

(declare-fun bs!1572968 () Bool)

(assert (= bs!1572968 (and d!1974538 d!1974252)))

(assert (=> bs!1572968 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345674 lambda!345622))))

(declare-fun bs!1572969 () Bool)

(assert (= bs!1572969 (and d!1974538 d!1974406)))

(assert (=> bs!1572969 (= lambda!345674 lambda!345645)))

(declare-fun bs!1572970 () Bool)

(assert (= bs!1572970 (and d!1974538 d!1974064)))

(assert (=> bs!1572970 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345674 lambda!345598))))

(declare-fun bs!1572971 () Bool)

(assert (= bs!1572971 (and d!1974538 d!1974186)))

(assert (=> bs!1572971 (= lambda!345674 lambda!345618)))

(declare-fun bs!1572972 () Bool)

(assert (= bs!1572972 (and d!1974538 d!1974348)))

(assert (=> bs!1572972 (= lambda!345674 lambda!345633)))

(declare-fun bs!1572973 () Bool)

(assert (= bs!1572973 (and d!1974538 d!1974178)))

(assert (=> bs!1572973 (= lambda!345674 lambda!345617)))

(declare-fun bs!1572974 () Bool)

(assert (= bs!1572974 (and d!1974538 d!1973976)))

(assert (=> bs!1572974 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345674 lambda!345557))))

(declare-fun bs!1572975 () Bool)

(assert (= bs!1572975 (and d!1974538 d!1974220)))

(assert (=> bs!1572975 (= lambda!345674 lambda!345620)))

(declare-fun bs!1572976 () Bool)

(assert (= bs!1572976 (and d!1974538 d!1974232)))

(assert (=> bs!1572976 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345674 lambda!345621))))

(declare-fun bs!1572977 () Bool)

(assert (= bs!1572977 (and d!1974538 b!6289808)))

(assert (=> bs!1572977 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345674 lambda!345481))))

(assert (=> d!1974538 true))

(assert (=> d!1974538 (= (derivationStepZipper!2179 lt!2357052 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357052 lambda!345674))))

(declare-fun bs!1572978 () Bool)

(assert (= bs!1572978 d!1974538))

(declare-fun m!7112448 () Bool)

(assert (=> bs!1572978 m!7112448))

(assert (=> b!6290961 d!1974538))

(assert (=> b!6290961 d!1974180))

(assert (=> b!6290961 d!1974182))

(assert (=> b!6290898 d!1973970))

(declare-fun call!532839 () List!64939)

(declare-fun call!532841 () (InoxSet Context!11194))

(declare-fun bm!532834 () Bool)

(declare-fun c!1141892 () Bool)

(assert (=> bm!532834 (= call!532841 (derivationStepZipperDown!1461 (ite c!1141892 (regOne!32939 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (regOne!32938 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))) (ite c!1141892 (ite c!1141611 lt!2357077 (Context!11195 call!532648)) (Context!11195 call!532839)) (h!71262 s!2326)))))

(declare-fun b!6291840 () Bool)

(declare-fun e!3825790 () Bool)

(assert (=> b!6291840 (= e!3825790 (nullable!6206 (regOne!32938 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))

(declare-fun bm!532835 () Bool)

(declare-fun call!532843 () (InoxSet Context!11194))

(declare-fun call!532840 () (InoxSet Context!11194))

(assert (=> bm!532835 (= call!532843 call!532840)))

(declare-fun d!1974540 () Bool)

(declare-fun c!1141896 () Bool)

(assert (=> d!1974540 (= c!1141896 (and ((_ is ElementMatch!16213) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (= (c!1141284 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (h!71262 s!2326))))))

(declare-fun e!3825787 () (InoxSet Context!11194))

(assert (=> d!1974540 (= (derivationStepZipperDown!1461 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))) (ite c!1141611 lt!2357077 (Context!11195 call!532648)) (h!71262 s!2326)) e!3825787)))

(declare-fun b!6291841 () Bool)

(assert (=> b!6291841 (= e!3825787 (store ((as const (Array Context!11194 Bool)) false) (ite c!1141611 lt!2357077 (Context!11195 call!532648)) true))))

(declare-fun c!1141895 () Bool)

(declare-fun call!532844 () List!64939)

(declare-fun bm!532836 () Bool)

(declare-fun c!1141894 () Bool)

(assert (=> bm!532836 (= call!532840 (derivationStepZipperDown!1461 (ite c!1141892 (regTwo!32939 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (ite c!1141894 (regTwo!32938 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (ite c!1141895 (regOne!32938 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (reg!16542 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))) (ite (or c!1141892 c!1141894) (ite c!1141611 lt!2357077 (Context!11195 call!532648)) (Context!11195 call!532844)) (h!71262 s!2326)))))

(declare-fun b!6291842 () Bool)

(declare-fun e!3825789 () (InoxSet Context!11194))

(declare-fun call!532842 () (InoxSet Context!11194))

(assert (=> b!6291842 (= e!3825789 call!532842)))

(declare-fun b!6291843 () Bool)

(declare-fun e!3825792 () (InoxSet Context!11194))

(declare-fun e!3825791 () (InoxSet Context!11194))

(assert (=> b!6291843 (= e!3825792 e!3825791)))

(assert (=> b!6291843 (= c!1141895 ((_ is Concat!25058) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6291844 () Bool)

(assert (=> b!6291844 (= e!3825789 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291845 () Bool)

(declare-fun e!3825788 () (InoxSet Context!11194))

(assert (=> b!6291845 (= e!3825788 ((_ map or) call!532841 call!532840))))

(declare-fun b!6291846 () Bool)

(assert (=> b!6291846 (= e!3825791 call!532842)))

(declare-fun b!6291847 () Bool)

(assert (=> b!6291847 (= c!1141894 e!3825790)))

(declare-fun res!2594744 () Bool)

(assert (=> b!6291847 (=> (not res!2594744) (not e!3825790))))

(assert (=> b!6291847 (= res!2594744 ((_ is Concat!25058) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> b!6291847 (= e!3825788 e!3825792)))

(declare-fun bm!532837 () Bool)

(assert (=> bm!532837 (= call!532839 ($colon$colon!2078 (exprs!6097 (ite c!1141611 lt!2357077 (Context!11195 call!532648))) (ite (or c!1141894 c!1141895) (regTwo!32938 (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))

(declare-fun b!6291848 () Bool)

(assert (=> b!6291848 (= e!3825792 ((_ map or) call!532841 call!532843))))

(declare-fun b!6291849 () Bool)

(declare-fun c!1141893 () Bool)

(assert (=> b!6291849 (= c!1141893 ((_ is Star!16213) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> b!6291849 (= e!3825791 e!3825789)))

(declare-fun bm!532838 () Bool)

(assert (=> bm!532838 (= call!532844 call!532839)))

(declare-fun bm!532839 () Bool)

(assert (=> bm!532839 (= call!532842 call!532843)))

(declare-fun b!6291850 () Bool)

(assert (=> b!6291850 (= e!3825787 e!3825788)))

(assert (=> b!6291850 (= c!1141892 ((_ is Union!16213) (ite c!1141611 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(assert (= (and d!1974540 c!1141896) b!6291841))

(assert (= (and d!1974540 (not c!1141896)) b!6291850))

(assert (= (and b!6291850 c!1141892) b!6291845))

(assert (= (and b!6291850 (not c!1141892)) b!6291847))

(assert (= (and b!6291847 res!2594744) b!6291840))

(assert (= (and b!6291847 c!1141894) b!6291848))

(assert (= (and b!6291847 (not c!1141894)) b!6291843))

(assert (= (and b!6291843 c!1141895) b!6291846))

(assert (= (and b!6291843 (not c!1141895)) b!6291849))

(assert (= (and b!6291849 c!1141893) b!6291842))

(assert (= (and b!6291849 (not c!1141893)) b!6291844))

(assert (= (or b!6291846 b!6291842) bm!532838))

(assert (= (or b!6291846 b!6291842) bm!532839))

(assert (= (or b!6291848 bm!532838) bm!532837))

(assert (= (or b!6291848 bm!532839) bm!532835))

(assert (= (or b!6291845 bm!532835) bm!532836))

(assert (= (or b!6291845 b!6291848) bm!532834))

(declare-fun m!7112450 () Bool)

(assert (=> b!6291840 m!7112450))

(declare-fun m!7112452 () Bool)

(assert (=> b!6291841 m!7112452))

(declare-fun m!7112454 () Bool)

(assert (=> bm!532834 m!7112454))

(declare-fun m!7112456 () Bool)

(assert (=> bm!532837 m!7112456))

(declare-fun m!7112458 () Bool)

(assert (=> bm!532836 m!7112458))

(assert (=> bm!532643 d!1974540))

(declare-fun d!1974544 () Bool)

(assert (=> d!1974544 (= (nullable!6206 lt!2357061) (nullableFct!2157 lt!2357061))))

(declare-fun bs!1572980 () Bool)

(assert (= bs!1572980 d!1974544))

(declare-fun m!7112460 () Bool)

(assert (=> bs!1572980 m!7112460))

(assert (=> b!6290740 d!1974544))

(assert (=> d!1974058 d!1974060))

(declare-fun d!1974546 () Bool)

(assert (=> d!1974546 (= (flatMap!1718 lt!2357071 lambda!345481) (dynLambda!25647 lambda!345481 lt!2357083))))

(assert (=> d!1974546 true))

(declare-fun _$13!3406 () Unit!158183)

(assert (=> d!1974546 (= (choose!46745 lt!2357071 lt!2357083 lambda!345481) _$13!3406)))

(declare-fun b_lambda!239387 () Bool)

(assert (=> (not b_lambda!239387) (not d!1974546)))

(declare-fun bs!1572981 () Bool)

(assert (= bs!1572981 d!1974546))

(assert (=> bs!1572981 m!7110490))

(assert (=> bs!1572981 m!7111422))

(assert (=> d!1974058 d!1974546))

(declare-fun c!1141899 () Bool)

(declare-fun call!532850 () (InoxSet Context!11194))

(declare-fun call!532848 () List!64939)

(declare-fun bm!532843 () Bool)

(assert (=> bm!532843 (= call!532850 (derivationStepZipperDown!1461 (ite c!1141899 (regOne!32939 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (regOne!32938 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))) (ite c!1141899 (ite c!1141603 lt!2357094 (Context!11195 call!532641)) (Context!11195 call!532848)) (h!71262 s!2326)))))

(declare-fun b!6291862 () Bool)

(declare-fun e!3825804 () Bool)

(assert (=> b!6291862 (= e!3825804 (nullable!6206 (regOne!32938 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))))))

(declare-fun bm!532844 () Bool)

(declare-fun call!532852 () (InoxSet Context!11194))

(declare-fun call!532849 () (InoxSet Context!11194))

(assert (=> bm!532844 (= call!532852 call!532849)))

(declare-fun d!1974550 () Bool)

(declare-fun c!1141904 () Bool)

(assert (=> d!1974550 (= c!1141904 (and ((_ is ElementMatch!16213) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (= (c!1141284 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (h!71262 s!2326))))))

(declare-fun e!3825800 () (InoxSet Context!11194))

(assert (=> d!1974550 (= (derivationStepZipperDown!1461 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))) (ite c!1141603 lt!2357094 (Context!11195 call!532641)) (h!71262 s!2326)) e!3825800)))

(declare-fun b!6291863 () Bool)

(assert (=> b!6291863 (= e!3825800 (store ((as const (Array Context!11194 Bool)) false) (ite c!1141603 lt!2357094 (Context!11195 call!532641)) true))))

(declare-fun c!1141903 () Bool)

(declare-fun bm!532845 () Bool)

(declare-fun c!1141901 () Bool)

(declare-fun call!532853 () List!64939)

(assert (=> bm!532845 (= call!532849 (derivationStepZipperDown!1461 (ite c!1141899 (regTwo!32939 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (ite c!1141901 (regTwo!32938 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (ite c!1141903 (regOne!32938 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (reg!16542 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))))) (ite (or c!1141899 c!1141901) (ite c!1141603 lt!2357094 (Context!11195 call!532641)) (Context!11195 call!532853)) (h!71262 s!2326)))))

(declare-fun b!6291864 () Bool)

(declare-fun e!3825803 () (InoxSet Context!11194))

(declare-fun call!532851 () (InoxSet Context!11194))

(assert (=> b!6291864 (= e!3825803 call!532851)))

(declare-fun b!6291865 () Bool)

(declare-fun e!3825806 () (InoxSet Context!11194))

(declare-fun e!3825805 () (InoxSet Context!11194))

(assert (=> b!6291865 (= e!3825806 e!3825805)))

(assert (=> b!6291865 (= c!1141903 ((_ is Concat!25058) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6291866 () Bool)

(assert (=> b!6291866 (= e!3825803 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6291867 () Bool)

(declare-fun e!3825801 () (InoxSet Context!11194))

(assert (=> b!6291867 (= e!3825801 ((_ map or) call!532850 call!532849))))

(declare-fun b!6291868 () Bool)

(assert (=> b!6291868 (= e!3825805 call!532851)))

(declare-fun b!6291869 () Bool)

(assert (=> b!6291869 (= c!1141901 e!3825804)))

(declare-fun res!2594750 () Bool)

(assert (=> b!6291869 (=> (not res!2594750) (not e!3825804))))

(assert (=> b!6291869 (= res!2594750 ((_ is Concat!25058) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291869 (= e!3825801 e!3825806)))

(declare-fun bm!532846 () Bool)

(assert (=> bm!532846 (= call!532848 ($colon$colon!2078 (exprs!6097 (ite c!1141603 lt!2357094 (Context!11195 call!532641))) (ite (or c!1141901 c!1141903) (regTwo!32938 (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292)))))))))

(declare-fun b!6291870 () Bool)

(assert (=> b!6291870 (= e!3825806 ((_ map or) call!532850 call!532852))))

(declare-fun b!6291871 () Bool)

(declare-fun c!1141900 () Bool)

(assert (=> b!6291871 (= c!1141900 ((_ is Star!16213) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(assert (=> b!6291871 (= e!3825805 e!3825803)))

(declare-fun bm!532847 () Bool)

(assert (=> bm!532847 (= call!532853 call!532848)))

(declare-fun bm!532848 () Bool)

(assert (=> bm!532848 (= call!532851 call!532852)))

(declare-fun b!6291872 () Bool)

(assert (=> b!6291872 (= e!3825800 e!3825801)))

(assert (=> b!6291872 (= c!1141899 ((_ is Union!16213) (ite c!1141603 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(assert (= (and d!1974550 c!1141904) b!6291863))

(assert (= (and d!1974550 (not c!1141904)) b!6291872))

(assert (= (and b!6291872 c!1141899) b!6291867))

(assert (= (and b!6291872 (not c!1141899)) b!6291869))

(assert (= (and b!6291869 res!2594750) b!6291862))

(assert (= (and b!6291869 c!1141901) b!6291870))

(assert (= (and b!6291869 (not c!1141901)) b!6291865))

(assert (= (and b!6291865 c!1141903) b!6291868))

(assert (= (and b!6291865 (not c!1141903)) b!6291871))

(assert (= (and b!6291871 c!1141900) b!6291864))

(assert (= (and b!6291871 (not c!1141900)) b!6291866))

(assert (= (or b!6291868 b!6291864) bm!532847))

(assert (= (or b!6291868 b!6291864) bm!532848))

(assert (= (or b!6291870 bm!532847) bm!532846))

(assert (= (or b!6291870 bm!532848) bm!532844))

(assert (= (or b!6291867 bm!532844) bm!532845))

(assert (= (or b!6291867 b!6291870) bm!532843))

(declare-fun m!7112476 () Bool)

(assert (=> b!6291862 m!7112476))

(declare-fun m!7112478 () Bool)

(assert (=> b!6291863 m!7112478))

(declare-fun m!7112480 () Bool)

(assert (=> bm!532843 m!7112480))

(declare-fun m!7112482 () Bool)

(assert (=> bm!532846 m!7112482))

(declare-fun m!7112484 () Bool)

(assert (=> bm!532845 m!7112484))

(assert (=> bm!532636 d!1974550))

(declare-fun bs!1572983 () Bool)

(declare-fun b!6291883 () Bool)

(assert (= bs!1572983 (and b!6291883 b!6289815)))

(declare-fun lambda!345675 () Int)

(assert (=> bs!1572983 (not (= lambda!345675 lambda!345482))))

(declare-fun bs!1572984 () Bool)

(assert (= bs!1572984 (and b!6291883 d!1974006)))

(assert (=> bs!1572984 (not (= lambda!345675 lambda!345573))))

(declare-fun bs!1572985 () Bool)

(assert (= bs!1572985 (and b!6291883 d!1974334)))

(assert (=> bs!1572985 (not (= lambda!345675 lambda!345632))))

(declare-fun bs!1572986 () Bool)

(assert (= bs!1572986 (and b!6291883 b!6291625)))

(assert (=> bs!1572986 (not (= lambda!345675 lambda!345649))))

(declare-fun bs!1572987 () Bool)

(assert (= bs!1572987 (and b!6291883 d!1974320)))

(assert (=> bs!1572987 (not (= lambda!345675 lambda!345628))))

(declare-fun bs!1572988 () Bool)

(assert (= bs!1572988 (and b!6291883 d!1974042)))

(assert (=> bs!1572988 (not (= lambda!345675 lambda!345581))))

(declare-fun bs!1572989 () Bool)

(assert (= bs!1572989 (and b!6291883 d!1974040)))

(assert (=> bs!1572989 (not (= lambda!345675 lambda!345578))))

(declare-fun bs!1572990 () Bool)

(assert (= bs!1572990 (and b!6291883 b!6290728)))

(assert (=> bs!1572990 (not (= lambda!345675 lambda!345576))))

(declare-fun bs!1572991 () Bool)

(assert (= bs!1572991 (and b!6291883 b!6291163)))

(assert (=> bs!1572991 (not (= lambda!345675 lambda!345616))))

(assert (=> bs!1572987 (not (= lambda!345675 lambda!345629))))

(declare-fun bs!1572992 () Bool)

(assert (= bs!1572992 (and b!6291883 d!1973990)))

(assert (=> bs!1572992 (not (= lambda!345675 lambda!345565))))

(declare-fun bs!1572993 () Bool)

(assert (= bs!1572993 (and b!6291883 b!6291777)))

(assert (=> bs!1572993 (not (= lambda!345675 lambda!345672))))

(declare-fun bs!1572994 () Bool)

(assert (= bs!1572994 (and b!6291883 b!6289816)))

(assert (=> bs!1572994 (not (= lambda!345675 lambda!345480))))

(assert (=> bs!1572983 (not (= lambda!345675 lambda!345483))))

(declare-fun bs!1572995 () Bool)

(assert (= bs!1572995 (and b!6291883 d!1973988)))

(assert (=> bs!1572995 (not (= lambda!345675 lambda!345560))))

(declare-fun bs!1572996 () Bool)

(assert (= bs!1572996 (and b!6291883 b!6290675)))

(assert (=> bs!1572996 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 lt!2357061)) (= (regTwo!32939 lt!2357061) lt!2357061)) (= lambda!345675 lambda!345567))))

(assert (=> bs!1572992 (not (= lambda!345675 lambda!345566))))

(declare-fun bs!1572997 () Bool)

(assert (= bs!1572997 (and b!6291883 d!1974400)))

(assert (=> bs!1572997 (not (= lambda!345675 lambda!345643))))

(declare-fun bs!1572998 () Bool)

(assert (= bs!1572998 (and b!6291883 b!6290737)))

(assert (=> bs!1572998 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 lt!2357070)) (= (regTwo!32939 lt!2357061) lt!2357070)) (= lambda!345675 lambda!345575))))

(assert (=> bs!1572989 (not (= lambda!345675 lambda!345579))))

(declare-fun bs!1572999 () Bool)

(assert (= bs!1572999 (and b!6291883 d!1974414)))

(assert (=> bs!1572999 (not (= lambda!345675 lambda!345646))))

(declare-fun bs!1573000 () Bool)

(assert (= bs!1573000 (and b!6291883 b!6291172)))

(assert (=> bs!1573000 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 (regOne!32939 lt!2357061))) (= (regTwo!32939 lt!2357061) (regOne!32939 lt!2357061))) (= lambda!345675 lambda!345615))))

(declare-fun bs!1573001 () Bool)

(assert (= bs!1573001 (and b!6291883 b!6291786)))

(assert (=> bs!1573001 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 (regTwo!32939 r!7292))) (= (regTwo!32939 lt!2357061) (regTwo!32939 r!7292))) (= lambda!345675 lambda!345670))))

(declare-fun bs!1573002 () Bool)

(assert (= bs!1573002 (and b!6291883 d!1974010)))

(assert (=> bs!1573002 (not (= lambda!345675 lambda!345574))))

(declare-fun bs!1573003 () Bool)

(assert (= bs!1573003 (and b!6291883 b!6291642)))

(assert (=> bs!1573003 (not (= lambda!345675 lambda!345657))))

(assert (=> bs!1572988 (not (= lambda!345675 lambda!345580))))

(assert (=> bs!1572994 (not (= lambda!345675 lambda!345479))))

(declare-fun bs!1573004 () Bool)

(assert (= bs!1573004 (and b!6291883 b!6290448)))

(assert (=> bs!1573004 (not (= lambda!345675 lambda!345554))))

(declare-fun bs!1573005 () Bool)

(assert (= bs!1573005 (and b!6291883 b!6290666)))

(assert (=> bs!1573005 (not (= lambda!345675 lambda!345568))))

(declare-fun bs!1573006 () Bool)

(assert (= bs!1573006 (and b!6291883 d!1974356)))

(assert (=> bs!1573006 (not (= lambda!345675 lambda!345636))))

(assert (=> bs!1572983 (not (= lambda!345675 lambda!345484))))

(declare-fun bs!1573007 () Bool)

(assert (= bs!1573007 (and b!6291883 b!6291651)))

(assert (=> bs!1573007 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 (regOne!32939 r!7292))) (= (regTwo!32939 lt!2357061) (regOne!32939 r!7292))) (= lambda!345675 lambda!345654))))

(declare-fun bs!1573008 () Bool)

(assert (= bs!1573008 (and b!6291883 b!6290457)))

(assert (=> bs!1573008 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 r!7292)) (= (regTwo!32939 lt!2357061) r!7292)) (= lambda!345675 lambda!345553))))

(declare-fun bs!1573009 () Bool)

(assert (= bs!1573009 (and b!6291883 b!6291634)))

(assert (=> bs!1573009 (= (and (= (reg!16542 (regTwo!32939 lt!2357061)) (reg!16542 (regTwo!32939 lt!2357070))) (= (regTwo!32939 lt!2357061) (regTwo!32939 lt!2357070))) (= lambda!345675 lambda!345648))))

(assert (=> bs!1572999 (not (= lambda!345675 lambda!345647))))

(assert (=> bs!1572983 (not (= lambda!345675 lambda!345485))))

(assert (=> b!6291883 true))

(assert (=> b!6291883 true))

(declare-fun bs!1573010 () Bool)

(declare-fun b!6291874 () Bool)

(assert (= bs!1573010 (and b!6291874 b!6289815)))

(declare-fun lambda!345676 () Int)

(assert (=> bs!1573010 (not (= lambda!345676 lambda!345482))))

(declare-fun bs!1573011 () Bool)

(assert (= bs!1573011 (and b!6291874 d!1974006)))

(assert (=> bs!1573011 (not (= lambda!345676 lambda!345573))))

(declare-fun bs!1573012 () Bool)

(assert (= bs!1573012 (and b!6291874 d!1974334)))

(assert (=> bs!1573012 (not (= lambda!345676 lambda!345632))))

(declare-fun bs!1573013 () Bool)

(assert (= bs!1573013 (and b!6291874 b!6291625)))

(assert (=> bs!1573013 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regTwo!32939 lt!2357070))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regTwo!32939 lt!2357070)))) (= lambda!345676 lambda!345649))))

(declare-fun bs!1573014 () Bool)

(assert (= bs!1573014 (and b!6291874 d!1974320)))

(assert (=> bs!1573014 (not (= lambda!345676 lambda!345628))))

(declare-fun bs!1573015 () Bool)

(assert (= bs!1573015 (and b!6291874 d!1974042)))

(assert (=> bs!1573015 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357053)) (= lambda!345676 lambda!345581))))

(declare-fun bs!1573016 () Bool)

(assert (= bs!1573016 (and b!6291874 d!1974040)))

(assert (=> bs!1573016 (not (= lambda!345676 lambda!345578))))

(declare-fun bs!1573017 () Bool)

(assert (= bs!1573017 (and b!6291874 b!6290728)))

(assert (=> bs!1573017 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 lt!2357070))) (= lambda!345676 lambda!345576))))

(declare-fun bs!1573018 () Bool)

(assert (= bs!1573018 (and b!6291874 b!6291163)))

(assert (=> bs!1573018 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345676 lambda!345616))))

(assert (=> bs!1573014 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357053)) (= lambda!345676 lambda!345629))))

(declare-fun bs!1573019 () Bool)

(assert (= bs!1573019 (and b!6291874 d!1973990)))

(assert (=> bs!1573019 (not (= lambda!345676 lambda!345565))))

(declare-fun bs!1573020 () Bool)

(assert (= bs!1573020 (and b!6291874 b!6291777)))

(assert (=> bs!1573020 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regTwo!32939 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regTwo!32939 r!7292)))) (= lambda!345676 lambda!345672))))

(declare-fun bs!1573021 () Bool)

(assert (= bs!1573021 (and b!6291874 b!6289816)))

(assert (=> bs!1573021 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345676 lambda!345480))))

(assert (=> bs!1573010 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357070)) (= lambda!345676 lambda!345483))))

(declare-fun bs!1573022 () Bool)

(assert (= bs!1573022 (and b!6291874 d!1973988)))

(assert (=> bs!1573022 (not (= lambda!345676 lambda!345560))))

(declare-fun bs!1573023 () Bool)

(assert (= bs!1573023 (and b!6291874 b!6290675)))

(assert (=> bs!1573023 (not (= lambda!345676 lambda!345567))))

(assert (=> bs!1573019 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345676 lambda!345566))))

(declare-fun bs!1573024 () Bool)

(assert (= bs!1573024 (and b!6291874 b!6290737)))

(assert (=> bs!1573024 (not (= lambda!345676 lambda!345575))))

(assert (=> bs!1573016 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357070)) (= lambda!345676 lambda!345579))))

(declare-fun bs!1573025 () Bool)

(assert (= bs!1573025 (and b!6291874 d!1974414)))

(assert (=> bs!1573025 (not (= lambda!345676 lambda!345646))))

(declare-fun bs!1573026 () Bool)

(assert (= bs!1573026 (and b!6291874 b!6291172)))

(assert (=> bs!1573026 (not (= lambda!345676 lambda!345615))))

(declare-fun bs!1573027 () Bool)

(assert (= bs!1573027 (and b!6291874 b!6291786)))

(assert (=> bs!1573027 (not (= lambda!345676 lambda!345670))))

(declare-fun bs!1573028 () Bool)

(assert (= bs!1573028 (and b!6291874 d!1974010)))

(assert (=> bs!1573028 (not (= lambda!345676 lambda!345574))))

(declare-fun bs!1573029 () Bool)

(assert (= bs!1573029 (and b!6291874 b!6291642)))

(assert (=> bs!1573029 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regOne!32939 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regOne!32939 r!7292)))) (= lambda!345676 lambda!345657))))

(assert (=> bs!1573015 (not (= lambda!345676 lambda!345580))))

(assert (=> bs!1573021 (not (= lambda!345676 lambda!345479))))

(declare-fun bs!1573030 () Bool)

(assert (= bs!1573030 (and b!6291874 b!6290448)))

(assert (=> bs!1573030 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 r!7292)) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 r!7292))) (= lambda!345676 lambda!345554))))

(declare-fun bs!1573031 () Bool)

(assert (= bs!1573031 (and b!6291874 b!6290666)))

(assert (=> bs!1573031 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 lt!2357061))) (= lambda!345676 lambda!345568))))

(declare-fun bs!1573032 () Bool)

(assert (= bs!1573032 (and b!6291874 d!1974356)))

(assert (=> bs!1573032 (not (= lambda!345676 lambda!345636))))

(assert (=> bs!1573010 (not (= lambda!345676 lambda!345484))))

(declare-fun bs!1573033 () Bool)

(assert (= bs!1573033 (and b!6291874 b!6291651)))

(assert (=> bs!1573033 (not (= lambda!345676 lambda!345654))))

(declare-fun bs!1573035 () Bool)

(assert (= bs!1573035 (and b!6291874 b!6290457)))

(assert (=> bs!1573035 (not (= lambda!345676 lambda!345553))))

(declare-fun bs!1573037 () Bool)

(assert (= bs!1573037 (and b!6291874 b!6291634)))

(assert (=> bs!1573037 (not (= lambda!345676 lambda!345648))))

(assert (=> bs!1573025 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357070)) (= lambda!345676 lambda!345647))))

(assert (=> bs!1573010 (= (and (= (regOne!32938 (regTwo!32939 lt!2357061)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regTwo!32939 lt!2357061)) lt!2357053)) (= lambda!345676 lambda!345485))))

(declare-fun bs!1573040 () Bool)

(assert (= bs!1573040 (and b!6291874 d!1974400)))

(assert (=> bs!1573040 (not (= lambda!345676 lambda!345643))))

(declare-fun bs!1573041 () Bool)

(assert (= bs!1573041 (and b!6291874 b!6291883)))

(assert (=> bs!1573041 (not (= lambda!345676 lambda!345675))))

(assert (=> b!6291874 true))

(assert (=> b!6291874 true))

(declare-fun b!6291873 () Bool)

(declare-fun c!1141906 () Bool)

(assert (=> b!6291873 (= c!1141906 ((_ is Union!16213) (regTwo!32939 lt!2357061)))))

(declare-fun e!3825811 () Bool)

(declare-fun e!3825810 () Bool)

(assert (=> b!6291873 (= e!3825811 e!3825810)))

(declare-fun e!3825808 () Bool)

(declare-fun call!532855 () Bool)

(assert (=> b!6291874 (= e!3825808 call!532855)))

(declare-fun b!6291875 () Bool)

(declare-fun e!3825807 () Bool)

(declare-fun e!3825813 () Bool)

(assert (=> b!6291875 (= e!3825807 e!3825813)))

(declare-fun res!2594751 () Bool)

(assert (=> b!6291875 (= res!2594751 (not ((_ is EmptyLang!16213) (regTwo!32939 lt!2357061))))))

(assert (=> b!6291875 (=> (not res!2594751) (not e!3825813))))

(declare-fun b!6291876 () Bool)

(declare-fun e!3825812 () Bool)

(assert (=> b!6291876 (= e!3825810 e!3825812)))

(declare-fun res!2594752 () Bool)

(assert (=> b!6291876 (= res!2594752 (matchRSpec!3314 (regOne!32939 (regTwo!32939 lt!2357061)) s!2326))))

(assert (=> b!6291876 (=> res!2594752 e!3825812)))

(declare-fun b!6291877 () Bool)

(declare-fun res!2594753 () Bool)

(declare-fun e!3825809 () Bool)

(assert (=> b!6291877 (=> res!2594753 e!3825809)))

(declare-fun call!532854 () Bool)

(assert (=> b!6291877 (= res!2594753 call!532854)))

(assert (=> b!6291877 (= e!3825808 e!3825809)))

(declare-fun b!6291878 () Bool)

(assert (=> b!6291878 (= e!3825811 (= s!2326 (Cons!64814 (c!1141284 (regTwo!32939 lt!2357061)) Nil!64814)))))

(declare-fun b!6291879 () Bool)

(assert (=> b!6291879 (= e!3825810 e!3825808)))

(declare-fun c!1141905 () Bool)

(assert (=> b!6291879 (= c!1141905 ((_ is Star!16213) (regTwo!32939 lt!2357061)))))

(declare-fun b!6291880 () Bool)

(declare-fun c!1141908 () Bool)

(assert (=> b!6291880 (= c!1141908 ((_ is ElementMatch!16213) (regTwo!32939 lt!2357061)))))

(assert (=> b!6291880 (= e!3825813 e!3825811)))

(declare-fun d!1974556 () Bool)

(declare-fun c!1141907 () Bool)

(assert (=> d!1974556 (= c!1141907 ((_ is EmptyExpr!16213) (regTwo!32939 lt!2357061)))))

(assert (=> d!1974556 (= (matchRSpec!3314 (regTwo!32939 lt!2357061) s!2326) e!3825807)))

(declare-fun b!6291881 () Bool)

(assert (=> b!6291881 (= e!3825812 (matchRSpec!3314 (regTwo!32939 (regTwo!32939 lt!2357061)) s!2326))))

(declare-fun b!6291882 () Bool)

(assert (=> b!6291882 (= e!3825807 call!532854)))

(assert (=> b!6291883 (= e!3825809 call!532855)))

(declare-fun bm!532849 () Bool)

(assert (=> bm!532849 (= call!532854 (isEmpty!36872 s!2326))))

(declare-fun bm!532850 () Bool)

(assert (=> bm!532850 (= call!532855 (Exists!3283 (ite c!1141905 lambda!345675 lambda!345676)))))

(assert (= (and d!1974556 c!1141907) b!6291882))

(assert (= (and d!1974556 (not c!1141907)) b!6291875))

(assert (= (and b!6291875 res!2594751) b!6291880))

(assert (= (and b!6291880 c!1141908) b!6291878))

(assert (= (and b!6291880 (not c!1141908)) b!6291873))

(assert (= (and b!6291873 c!1141906) b!6291876))

(assert (= (and b!6291873 (not c!1141906)) b!6291879))

(assert (= (and b!6291876 (not res!2594752)) b!6291881))

(assert (= (and b!6291879 c!1141905) b!6291877))

(assert (= (and b!6291879 (not c!1141905)) b!6291874))

(assert (= (and b!6291877 (not res!2594753)) b!6291883))

(assert (= (or b!6291883 b!6291874) bm!532850))

(assert (= (or b!6291882 b!6291877) bm!532849))

(declare-fun m!7112528 () Bool)

(assert (=> b!6291876 m!7112528))

(declare-fun m!7112530 () Bool)

(assert (=> b!6291881 m!7112530))

(assert (=> bm!532849 m!7111076))

(declare-fun m!7112532 () Bool)

(assert (=> bm!532850 m!7112532))

(assert (=> b!6290673 d!1974556))

(declare-fun d!1974580 () Bool)

(declare-fun res!2594772 () Bool)

(declare-fun e!3825840 () Bool)

(assert (=> d!1974580 (=> res!2594772 e!3825840)))

(assert (=> d!1974580 (= res!2594772 ((_ is Nil!64816) lt!2357215))))

(assert (=> d!1974580 (= (noDuplicate!2047 lt!2357215) e!3825840)))

(declare-fun b!6291926 () Bool)

(declare-fun e!3825841 () Bool)

(assert (=> b!6291926 (= e!3825840 e!3825841)))

(declare-fun res!2594773 () Bool)

(assert (=> b!6291926 (=> (not res!2594773) (not e!3825841))))

(declare-fun contains!20127 (List!64940 Context!11194) Bool)

(assert (=> b!6291926 (= res!2594773 (not (contains!20127 (t!378502 lt!2357215) (h!71264 lt!2357215))))))

(declare-fun b!6291927 () Bool)

(assert (=> b!6291927 (= e!3825841 (noDuplicate!2047 (t!378502 lt!2357215)))))

(assert (= (and d!1974580 (not res!2594772)) b!6291926))

(assert (= (and b!6291926 res!2594773) b!6291927))

(declare-fun m!7112550 () Bool)

(assert (=> b!6291926 m!7112550))

(declare-fun m!7112552 () Bool)

(assert (=> b!6291927 m!7112552))

(assert (=> d!1973954 d!1974580))

(declare-fun d!1974586 () Bool)

(declare-fun e!3825850 () Bool)

(assert (=> d!1974586 e!3825850))

(declare-fun res!2594779 () Bool)

(assert (=> d!1974586 (=> (not res!2594779) (not e!3825850))))

(declare-fun res!2594778 () List!64940)

(assert (=> d!1974586 (= res!2594779 (noDuplicate!2047 res!2594778))))

(declare-fun e!3825849 () Bool)

(assert (=> d!1974586 e!3825849))

(assert (=> d!1974586 (= (choose!46734 z!1189) res!2594778)))

(declare-fun b!6291937 () Bool)

(declare-fun e!3825851 () Bool)

(declare-fun tp!1751812 () Bool)

(assert (=> b!6291937 (= e!3825851 tp!1751812)))

(declare-fun b!6291936 () Bool)

(declare-fun tp!1751811 () Bool)

(assert (=> b!6291936 (= e!3825849 (and (inv!83779 (h!71264 res!2594778)) e!3825851 tp!1751811))))

(declare-fun b!6291938 () Bool)

(assert (=> b!6291938 (= e!3825850 (= (content!12190 res!2594778) z!1189))))

(assert (= b!6291936 b!6291937))

(assert (= (and d!1974586 ((_ is Cons!64816) res!2594778)) b!6291936))

(assert (= (and d!1974586 res!2594779) b!6291938))

(declare-fun m!7112562 () Bool)

(assert (=> d!1974586 m!7112562))

(declare-fun m!7112564 () Bool)

(assert (=> b!6291936 m!7112564))

(declare-fun m!7112566 () Bool)

(assert (=> b!6291938 m!7112566))

(assert (=> d!1973954 d!1974586))

(declare-fun b!6291943 () Bool)

(declare-fun e!3825862 () Bool)

(assert (=> b!6291943 (= e!3825862 (nullable!6206 (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291944 () Bool)

(declare-fun res!2594788 () Bool)

(declare-fun e!3825859 () Bool)

(assert (=> b!6291944 (=> res!2594788 e!3825859)))

(declare-fun e!3825858 () Bool)

(assert (=> b!6291944 (= res!2594788 e!3825858)))

(declare-fun res!2594791 () Bool)

(assert (=> b!6291944 (=> (not res!2594791) (not e!3825858))))

(declare-fun lt!2357382 () Bool)

(assert (=> b!6291944 (= res!2594791 lt!2357382)))

(declare-fun b!6291945 () Bool)

(assert (=> b!6291945 (= e!3825858 (= (head!12927 (_1!36495 (get!22408 lt!2357248))) (c!1141284 (regOne!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6291946 () Bool)

(declare-fun e!3825860 () Bool)

(assert (=> b!6291946 (= e!3825860 (not (= (head!12927 (_1!36495 (get!22408 lt!2357248))) (c!1141284 (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun d!1974592 () Bool)

(declare-fun e!3825861 () Bool)

(assert (=> d!1974592 e!3825861))

(declare-fun c!1141922 () Bool)

(assert (=> d!1974592 (= c!1141922 ((_ is EmptyExpr!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974592 (= lt!2357382 e!3825862)))

(declare-fun c!1141923 () Bool)

(assert (=> d!1974592 (= c!1141923 (isEmpty!36872 (_1!36495 (get!22408 lt!2357248))))))

(assert (=> d!1974592 (validRegex!7949 (regOne!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974592 (= (matchR!8396 (regOne!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357248))) lt!2357382)))

(declare-fun b!6291947 () Bool)

(declare-fun e!3825857 () Bool)

(assert (=> b!6291947 (= e!3825857 (not lt!2357382))))

(declare-fun b!6291948 () Bool)

(declare-fun e!3825856 () Bool)

(assert (=> b!6291948 (= e!3825859 e!3825856)))

(declare-fun res!2594790 () Bool)

(assert (=> b!6291948 (=> (not res!2594790) (not e!3825856))))

(assert (=> b!6291948 (= res!2594790 (not lt!2357382))))

(declare-fun bm!532858 () Bool)

(declare-fun call!532863 () Bool)

(assert (=> bm!532858 (= call!532863 (isEmpty!36872 (_1!36495 (get!22408 lt!2357248))))))

(declare-fun b!6291949 () Bool)

(assert (=> b!6291949 (= e!3825861 (= lt!2357382 call!532863))))

(declare-fun b!6291950 () Bool)

(assert (=> b!6291950 (= e!3825861 e!3825857)))

(declare-fun c!1141924 () Bool)

(assert (=> b!6291950 (= c!1141924 ((_ is EmptyLang!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6291951 () Bool)

(assert (=> b!6291951 (= e!3825856 e!3825860)))

(declare-fun res!2594789 () Bool)

(assert (=> b!6291951 (=> res!2594789 e!3825860)))

(assert (=> b!6291951 (= res!2594789 call!532863)))

(declare-fun b!6291952 () Bool)

(declare-fun res!2594785 () Bool)

(assert (=> b!6291952 (=> (not res!2594785) (not e!3825858))))

(assert (=> b!6291952 (= res!2594785 (not call!532863))))

(declare-fun b!6291953 () Bool)

(declare-fun res!2594784 () Bool)

(assert (=> b!6291953 (=> res!2594784 e!3825859)))

(assert (=> b!6291953 (= res!2594784 (not ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292)))))))

(assert (=> b!6291953 (= e!3825857 e!3825859)))

(declare-fun b!6291954 () Bool)

(assert (=> b!6291954 (= e!3825862 (matchR!8396 (derivativeStep!4922 (regOne!32938 (regOne!32938 r!7292)) (head!12927 (_1!36495 (get!22408 lt!2357248)))) (tail!12012 (_1!36495 (get!22408 lt!2357248)))))))

(declare-fun b!6291955 () Bool)

(declare-fun res!2594786 () Bool)

(assert (=> b!6291955 (=> (not res!2594786) (not e!3825858))))

(assert (=> b!6291955 (= res!2594786 (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357248)))))))

(declare-fun b!6291956 () Bool)

(declare-fun res!2594787 () Bool)

(assert (=> b!6291956 (=> res!2594787 e!3825860)))

(assert (=> b!6291956 (= res!2594787 (not (isEmpty!36872 (tail!12012 (_1!36495 (get!22408 lt!2357248))))))))

(assert (= (and d!1974592 c!1141923) b!6291943))

(assert (= (and d!1974592 (not c!1141923)) b!6291954))

(assert (= (and d!1974592 c!1141922) b!6291949))

(assert (= (and d!1974592 (not c!1141922)) b!6291950))

(assert (= (and b!6291950 c!1141924) b!6291947))

(assert (= (and b!6291950 (not c!1141924)) b!6291953))

(assert (= (and b!6291953 (not res!2594784)) b!6291944))

(assert (= (and b!6291944 res!2594791) b!6291952))

(assert (= (and b!6291952 res!2594785) b!6291955))

(assert (= (and b!6291955 res!2594786) b!6291945))

(assert (= (and b!6291944 (not res!2594788)) b!6291948))

(assert (= (and b!6291948 res!2594790) b!6291951))

(assert (= (and b!6291951 (not res!2594789)) b!6291956))

(assert (= (and b!6291956 (not res!2594787)) b!6291946))

(assert (= (or b!6291949 b!6291951 b!6291952) bm!532858))

(declare-fun m!7112572 () Bool)

(assert (=> bm!532858 m!7112572))

(declare-fun m!7112574 () Bool)

(assert (=> b!6291954 m!7112574))

(assert (=> b!6291954 m!7112574))

(declare-fun m!7112576 () Bool)

(assert (=> b!6291954 m!7112576))

(declare-fun m!7112578 () Bool)

(assert (=> b!6291954 m!7112578))

(assert (=> b!6291954 m!7112576))

(assert (=> b!6291954 m!7112578))

(declare-fun m!7112580 () Bool)

(assert (=> b!6291954 m!7112580))

(assert (=> b!6291946 m!7112574))

(assert (=> b!6291956 m!7112578))

(assert (=> b!6291956 m!7112578))

(declare-fun m!7112582 () Bool)

(assert (=> b!6291956 m!7112582))

(assert (=> b!6291943 m!7110442))

(assert (=> b!6291945 m!7112574))

(assert (=> b!6291955 m!7112578))

(assert (=> b!6291955 m!7112578))

(assert (=> b!6291955 m!7112582))

(assert (=> d!1974592 m!7112572))

(assert (=> d!1974592 m!7111274))

(assert (=> b!6290721 d!1974592))

(assert (=> b!6290721 d!1974124))

(declare-fun b!6291961 () Bool)

(declare-fun e!3825873 () Bool)

(assert (=> b!6291961 (= e!3825873 (nullable!6206 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053)))))

(declare-fun b!6291962 () Bool)

(declare-fun res!2594800 () Bool)

(declare-fun e!3825870 () Bool)

(assert (=> b!6291962 (=> res!2594800 e!3825870)))

(declare-fun e!3825869 () Bool)

(assert (=> b!6291962 (= res!2594800 e!3825869)))

(declare-fun res!2594803 () Bool)

(assert (=> b!6291962 (=> (not res!2594803) (not e!3825869))))

(declare-fun lt!2357383 () Bool)

(assert (=> b!6291962 (= res!2594803 lt!2357383)))

(declare-fun b!6291963 () Bool)

(assert (=> b!6291963 (= e!3825869 (= (head!12927 s!2326) (c!1141284 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053))))))

(declare-fun e!3825871 () Bool)

(declare-fun b!6291964 () Bool)

(assert (=> b!6291964 (= e!3825871 (not (= (head!12927 s!2326) (c!1141284 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053)))))))

(declare-fun d!1974596 () Bool)

(declare-fun e!3825872 () Bool)

(assert (=> d!1974596 e!3825872))

(declare-fun c!1141925 () Bool)

(assert (=> d!1974596 (= c!1141925 ((_ is EmptyExpr!16213) (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053)))))

(assert (=> d!1974596 (= lt!2357383 e!3825873)))

(declare-fun c!1141926 () Bool)

(assert (=> d!1974596 (= c!1141926 (isEmpty!36872 s!2326))))

(assert (=> d!1974596 (validRegex!7949 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053))))

(assert (=> d!1974596 (= (matchR!8396 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053) s!2326) lt!2357383)))

(declare-fun b!6291965 () Bool)

(declare-fun e!3825868 () Bool)

(assert (=> b!6291965 (= e!3825868 (not lt!2357383))))

(declare-fun b!6291966 () Bool)

(declare-fun e!3825867 () Bool)

(assert (=> b!6291966 (= e!3825870 e!3825867)))

(declare-fun res!2594802 () Bool)

(assert (=> b!6291966 (=> (not res!2594802) (not e!3825867))))

(assert (=> b!6291966 (= res!2594802 (not lt!2357383))))

(declare-fun bm!532859 () Bool)

(declare-fun call!532864 () Bool)

(assert (=> bm!532859 (= call!532864 (isEmpty!36872 s!2326))))

(declare-fun b!6291967 () Bool)

(assert (=> b!6291967 (= e!3825872 (= lt!2357383 call!532864))))

(declare-fun b!6291968 () Bool)

(assert (=> b!6291968 (= e!3825872 e!3825868)))

(declare-fun c!1141927 () Bool)

(assert (=> b!6291968 (= c!1141927 ((_ is EmptyLang!16213) (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053)))))

(declare-fun b!6291969 () Bool)

(assert (=> b!6291969 (= e!3825867 e!3825871)))

(declare-fun res!2594801 () Bool)

(assert (=> b!6291969 (=> res!2594801 e!3825871)))

(assert (=> b!6291969 (= res!2594801 call!532864)))

(declare-fun b!6291970 () Bool)

(declare-fun res!2594797 () Bool)

(assert (=> b!6291970 (=> (not res!2594797) (not e!3825869))))

(assert (=> b!6291970 (= res!2594797 (not call!532864))))

(declare-fun b!6291971 () Bool)

(declare-fun res!2594796 () Bool)

(assert (=> b!6291971 (=> res!2594796 e!3825870)))

(assert (=> b!6291971 (= res!2594796 (not ((_ is ElementMatch!16213) (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053))))))

(assert (=> b!6291971 (= e!3825868 e!3825870)))

(declare-fun b!6291974 () Bool)

(assert (=> b!6291974 (= e!3825873 (matchR!8396 (derivativeStep!4922 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053) (head!12927 s!2326)) (tail!12012 s!2326)))))

(declare-fun b!6291975 () Bool)

(declare-fun res!2594798 () Bool)

(assert (=> b!6291975 (=> (not res!2594798) (not e!3825869))))

(assert (=> b!6291975 (= res!2594798 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6291976 () Bool)

(declare-fun res!2594799 () Bool)

(assert (=> b!6291976 (=> res!2594799 e!3825871)))

(assert (=> b!6291976 (= res!2594799 (not (isEmpty!36872 (tail!12012 s!2326))))))

(assert (= (and d!1974596 c!1141926) b!6291961))

(assert (= (and d!1974596 (not c!1141926)) b!6291974))

(assert (= (and d!1974596 c!1141925) b!6291967))

(assert (= (and d!1974596 (not c!1141925)) b!6291968))

(assert (= (and b!6291968 c!1141927) b!6291965))

(assert (= (and b!6291968 (not c!1141927)) b!6291971))

(assert (= (and b!6291971 (not res!2594796)) b!6291962))

(assert (= (and b!6291962 res!2594803) b!6291970))

(assert (= (and b!6291970 res!2594797) b!6291975))

(assert (= (and b!6291975 res!2594798) b!6291963))

(assert (= (and b!6291962 (not res!2594800)) b!6291966))

(assert (= (and b!6291966 res!2594802) b!6291969))

(assert (= (and b!6291969 (not res!2594801)) b!6291976))

(assert (= (and b!6291976 (not res!2594799)) b!6291964))

(assert (= (or b!6291967 b!6291969 b!6291970) bm!532859))

(assert (=> bm!532859 m!7111076))

(assert (=> b!6291974 m!7111082))

(assert (=> b!6291974 m!7111082))

(declare-fun m!7112584 () Bool)

(assert (=> b!6291974 m!7112584))

(assert (=> b!6291974 m!7111086))

(assert (=> b!6291974 m!7112584))

(assert (=> b!6291974 m!7111086))

(declare-fun m!7112586 () Bool)

(assert (=> b!6291974 m!7112586))

(assert (=> b!6291964 m!7111082))

(assert (=> b!6291976 m!7111086))

(assert (=> b!6291976 m!7111086))

(assert (=> b!6291976 m!7111090))

(declare-fun m!7112588 () Bool)

(assert (=> b!6291961 m!7112588))

(assert (=> b!6291963 m!7111082))

(assert (=> b!6291975 m!7111086))

(assert (=> b!6291975 m!7111086))

(assert (=> b!6291975 m!7111090))

(assert (=> d!1974596 m!7111076))

(declare-fun m!7112590 () Bool)

(assert (=> d!1974596 m!7112590))

(assert (=> d!1974094 d!1974596))

(assert (=> d!1974094 d!1974092))

(declare-fun d!1974598 () Bool)

(assert (=> d!1974598 (= (matchR!8396 (Concat!25058 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292))) lt!2357053) s!2326) (matchR!8396 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) s!2326))))

(assert (=> d!1974598 true))

(declare-fun _$123!140 () Unit!158183)

(assert (=> d!1974598 (= (choose!46747 (regOne!32938 (regOne!32938 r!7292)) (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 s!2326) _$123!140)))

(declare-fun bs!1573047 () Bool)

(assert (= bs!1573047 d!1974598))

(assert (=> bs!1573047 m!7111526))

(assert (=> bs!1573047 m!7110438))

(assert (=> d!1974094 d!1974598))

(assert (=> d!1974094 d!1974242))

(declare-fun b!6291991 () Bool)

(declare-fun e!3825894 () Bool)

(assert (=> b!6291991 (= e!3825894 (nullable!6206 (regTwo!32938 r!7292)))))

(declare-fun b!6291992 () Bool)

(declare-fun res!2594820 () Bool)

(declare-fun e!3825891 () Bool)

(assert (=> b!6291992 (=> res!2594820 e!3825891)))

(declare-fun e!3825890 () Bool)

(assert (=> b!6291992 (= res!2594820 e!3825890)))

(declare-fun res!2594823 () Bool)

(assert (=> b!6291992 (=> (not res!2594823) (not e!3825890))))

(declare-fun lt!2357384 () Bool)

(assert (=> b!6291992 (= res!2594823 lt!2357384)))

(declare-fun b!6291993 () Bool)

(assert (=> b!6291993 (= e!3825890 (= (head!12927 (_2!36495 (get!22408 lt!2357231))) (c!1141284 (regTwo!32938 r!7292))))))

(declare-fun b!6291994 () Bool)

(declare-fun e!3825892 () Bool)

(assert (=> b!6291994 (= e!3825892 (not (= (head!12927 (_2!36495 (get!22408 lt!2357231))) (c!1141284 (regTwo!32938 r!7292)))))))

(declare-fun d!1974610 () Bool)

(declare-fun e!3825893 () Bool)

(assert (=> d!1974610 e!3825893))

(declare-fun c!1141930 () Bool)

(assert (=> d!1974610 (= c!1141930 ((_ is EmptyExpr!16213) (regTwo!32938 r!7292)))))

(assert (=> d!1974610 (= lt!2357384 e!3825894)))

(declare-fun c!1141931 () Bool)

(assert (=> d!1974610 (= c!1141931 (isEmpty!36872 (_2!36495 (get!22408 lt!2357231))))))

(assert (=> d!1974610 (validRegex!7949 (regTwo!32938 r!7292))))

(assert (=> d!1974610 (= (matchR!8396 (regTwo!32938 r!7292) (_2!36495 (get!22408 lt!2357231))) lt!2357384)))

(declare-fun b!6291995 () Bool)

(declare-fun e!3825889 () Bool)

(assert (=> b!6291995 (= e!3825889 (not lt!2357384))))

(declare-fun b!6291996 () Bool)

(declare-fun e!3825888 () Bool)

(assert (=> b!6291996 (= e!3825891 e!3825888)))

(declare-fun res!2594822 () Bool)

(assert (=> b!6291996 (=> (not res!2594822) (not e!3825888))))

(assert (=> b!6291996 (= res!2594822 (not lt!2357384))))

(declare-fun bm!532863 () Bool)

(declare-fun call!532868 () Bool)

(assert (=> bm!532863 (= call!532868 (isEmpty!36872 (_2!36495 (get!22408 lt!2357231))))))

(declare-fun b!6291997 () Bool)

(assert (=> b!6291997 (= e!3825893 (= lt!2357384 call!532868))))

(declare-fun b!6291998 () Bool)

(assert (=> b!6291998 (= e!3825893 e!3825889)))

(declare-fun c!1141932 () Bool)

(assert (=> b!6291998 (= c!1141932 ((_ is EmptyLang!16213) (regTwo!32938 r!7292)))))

(declare-fun b!6291999 () Bool)

(assert (=> b!6291999 (= e!3825888 e!3825892)))

(declare-fun res!2594821 () Bool)

(assert (=> b!6291999 (=> res!2594821 e!3825892)))

(assert (=> b!6291999 (= res!2594821 call!532868)))

(declare-fun b!6292000 () Bool)

(declare-fun res!2594817 () Bool)

(assert (=> b!6292000 (=> (not res!2594817) (not e!3825890))))

(assert (=> b!6292000 (= res!2594817 (not call!532868))))

(declare-fun b!6292001 () Bool)

(declare-fun res!2594816 () Bool)

(assert (=> b!6292001 (=> res!2594816 e!3825891)))

(assert (=> b!6292001 (= res!2594816 (not ((_ is ElementMatch!16213) (regTwo!32938 r!7292))))))

(assert (=> b!6292001 (= e!3825889 e!3825891)))

(declare-fun b!6292002 () Bool)

(assert (=> b!6292002 (= e!3825894 (matchR!8396 (derivativeStep!4922 (regTwo!32938 r!7292) (head!12927 (_2!36495 (get!22408 lt!2357231)))) (tail!12012 (_2!36495 (get!22408 lt!2357231)))))))

(declare-fun b!6292003 () Bool)

(declare-fun res!2594818 () Bool)

(assert (=> b!6292003 (=> (not res!2594818) (not e!3825890))))

(assert (=> b!6292003 (= res!2594818 (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357231)))))))

(declare-fun b!6292004 () Bool)

(declare-fun res!2594819 () Bool)

(assert (=> b!6292004 (=> res!2594819 e!3825892)))

(assert (=> b!6292004 (= res!2594819 (not (isEmpty!36872 (tail!12012 (_2!36495 (get!22408 lt!2357231))))))))

(assert (= (and d!1974610 c!1141931) b!6291991))

(assert (= (and d!1974610 (not c!1141931)) b!6292002))

(assert (= (and d!1974610 c!1141930) b!6291997))

(assert (= (and d!1974610 (not c!1141930)) b!6291998))

(assert (= (and b!6291998 c!1141932) b!6291995))

(assert (= (and b!6291998 (not c!1141932)) b!6292001))

(assert (= (and b!6292001 (not res!2594816)) b!6291992))

(assert (= (and b!6291992 res!2594823) b!6292000))

(assert (= (and b!6292000 res!2594817) b!6292003))

(assert (= (and b!6292003 res!2594818) b!6291993))

(assert (= (and b!6291992 (not res!2594820)) b!6291996))

(assert (= (and b!6291996 res!2594822) b!6291999))

(assert (= (and b!6291999 (not res!2594821)) b!6292004))

(assert (= (and b!6292004 (not res!2594819)) b!6291994))

(assert (= (or b!6291997 b!6291999 b!6292000) bm!532863))

(declare-fun m!7112610 () Bool)

(assert (=> bm!532863 m!7112610))

(declare-fun m!7112612 () Bool)

(assert (=> b!6292002 m!7112612))

(assert (=> b!6292002 m!7112612))

(declare-fun m!7112614 () Bool)

(assert (=> b!6292002 m!7112614))

(declare-fun m!7112616 () Bool)

(assert (=> b!6292002 m!7112616))

(assert (=> b!6292002 m!7112614))

(assert (=> b!6292002 m!7112616))

(declare-fun m!7112618 () Bool)

(assert (=> b!6292002 m!7112618))

(assert (=> b!6291994 m!7112612))

(assert (=> b!6292004 m!7112616))

(assert (=> b!6292004 m!7112616))

(declare-fun m!7112620 () Bool)

(assert (=> b!6292004 m!7112620))

(assert (=> b!6291991 m!7111598))

(assert (=> b!6291993 m!7112612))

(assert (=> b!6292003 m!7112616))

(assert (=> b!6292003 m!7112616))

(assert (=> b!6292003 m!7112620))

(assert (=> d!1974610 m!7112610))

(assert (=> d!1974610 m!7111600))

(assert (=> b!6290634 d!1974610))

(assert (=> b!6290634 d!1974238))

(declare-fun d!1974618 () Bool)

(assert (=> d!1974618 (= (isUnion!1056 lt!2357190) ((_ is Union!16213) lt!2357190))))

(assert (=> b!6290318 d!1974618))

(declare-fun d!1974620 () Bool)

(assert (=> d!1974620 (= (nullable!6206 (h!71263 (exprs!6097 lt!2357077))) (nullableFct!2157 (h!71263 (exprs!6097 lt!2357077))))))

(declare-fun bs!1573059 () Bool)

(assert (= bs!1573059 d!1974620))

(declare-fun m!7112622 () Bool)

(assert (=> bs!1573059 m!7112622))

(assert (=> b!6290885 d!1974620))

(declare-fun b!6292029 () Bool)

(declare-fun e!3825909 () Int)

(assert (=> b!6292029 (= e!3825909 1)))

(declare-fun bm!532870 () Bool)

(declare-fun call!532876 () Int)

(declare-fun call!532875 () Int)

(assert (=> bm!532870 (= call!532876 call!532875)))

(declare-fun b!6292030 () Bool)

(declare-fun c!1141942 () Bool)

(assert (=> b!6292030 (= c!1141942 ((_ is Union!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun e!3825910 () Int)

(declare-fun e!3825908 () Int)

(assert (=> b!6292030 (= e!3825910 e!3825908)))

(declare-fun b!6292031 () Bool)

(assert (=> b!6292031 (= e!3825909 e!3825910)))

(declare-fun c!1141941 () Bool)

(assert (=> b!6292031 (= c!1141941 ((_ is Star!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6292032 () Bool)

(assert (=> b!6292032 (= e!3825910 (+ 1 call!532875))))

(declare-fun b!6292033 () Bool)

(declare-fun e!3825907 () Int)

(declare-fun call!532877 () Int)

(assert (=> b!6292033 (= e!3825907 (+ 1 call!532876 call!532877))))

(declare-fun b!6292034 () Bool)

(assert (=> b!6292034 (= e!3825908 (+ 1 call!532876 call!532877))))

(declare-fun bm!532872 () Bool)

(assert (=> bm!532872 (= call!532875 (regexDepthTotal!187 (ite c!1141941 (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141942 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))))

(declare-fun bm!532871 () Bool)

(assert (=> bm!532871 (= call!532877 (regexDepthTotal!187 (ite c!1141942 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun d!1974622 () Bool)

(declare-fun lt!2357387 () Int)

(assert (=> d!1974622 (> lt!2357387 0)))

(assert (=> d!1974622 (= lt!2357387 e!3825909)))

(declare-fun c!1141944 () Bool)

(assert (=> d!1974622 (= c!1141944 ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> d!1974622 (= (regexDepthTotal!187 (h!71263 (exprs!6097 (h!71264 zl!343)))) lt!2357387)))

(declare-fun b!6292035 () Bool)

(assert (=> b!6292035 (= e!3825908 e!3825907)))

(declare-fun c!1141943 () Bool)

(assert (=> b!6292035 (= c!1141943 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6292036 () Bool)

(assert (=> b!6292036 (= e!3825907 1)))

(assert (= (and d!1974622 c!1141944) b!6292029))

(assert (= (and d!1974622 (not c!1141944)) b!6292031))

(assert (= (and b!6292031 c!1141941) b!6292032))

(assert (= (and b!6292031 (not c!1141941)) b!6292030))

(assert (= (and b!6292030 c!1141942) b!6292034))

(assert (= (and b!6292030 (not c!1141942)) b!6292035))

(assert (= (and b!6292035 c!1141943) b!6292033))

(assert (= (and b!6292035 (not c!1141943)) b!6292036))

(assert (= (or b!6292034 b!6292033) bm!532871))

(assert (= (or b!6292034 b!6292033) bm!532870))

(assert (= (or b!6292032 bm!532870) bm!532872))

(declare-fun m!7112624 () Bool)

(assert (=> bm!532872 m!7112624))

(declare-fun m!7112626 () Bool)

(assert (=> bm!532871 m!7112626))

(assert (=> b!6290588 d!1974622))

(declare-fun d!1974624 () Bool)

(declare-fun lt!2357388 () Int)

(assert (=> d!1974624 (>= lt!2357388 0)))

(declare-fun e!3825911 () Int)

(assert (=> d!1974624 (= lt!2357388 e!3825911)))

(declare-fun c!1141945 () Bool)

(assert (=> d!1974624 (= c!1141945 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> d!1974624 (= (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))) lt!2357388)))

(declare-fun b!6292037 () Bool)

(assert (=> b!6292037 (= e!3825911 (+ (regexDepthTotal!187 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))))) (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))))))))))

(declare-fun b!6292038 () Bool)

(assert (=> b!6292038 (= e!3825911 1)))

(assert (= (and d!1974624 c!1141945) b!6292037))

(assert (= (and d!1974624 (not c!1141945)) b!6292038))

(declare-fun m!7112628 () Bool)

(assert (=> b!6292037 m!7112628))

(declare-fun m!7112630 () Bool)

(assert (=> b!6292037 m!7112630))

(assert (=> b!6290588 d!1974624))

(assert (=> b!6290957 d!1973978))

(assert (=> bs!1572338 d!1974066))

(declare-fun d!1974626 () Bool)

(assert (=> d!1974626 (= (flatMap!1718 lt!2357071 lambda!345598) (choose!46746 lt!2357071 lambda!345598))))

(declare-fun bs!1573062 () Bool)

(assert (= bs!1573062 d!1974626))

(declare-fun m!7112632 () Bool)

(assert (=> bs!1573062 m!7112632))

(assert (=> d!1974064 d!1974626))

(declare-fun bs!1573067 () Bool)

(declare-fun d!1974628 () Bool)

(assert (= bs!1573067 (and d!1974628 d!1974368)))

(declare-fun lambda!345685 () Int)

(assert (=> bs!1573067 (= lambda!345685 lambda!345638)))

(declare-fun bs!1573069 () Bool)

(assert (= bs!1573069 (and d!1974628 b!6291134)))

(assert (=> bs!1573069 (not (= lambda!345685 lambda!345604))))

(declare-fun bs!1573071 () Bool)

(assert (= bs!1573071 (and d!1974628 d!1973998)))

(assert (=> bs!1573071 (= lambda!345685 lambda!345571)))

(declare-fun bs!1573072 () Bool)

(assert (= bs!1573072 (and d!1974628 d!1974034)))

(assert (=> bs!1573072 (= lambda!345685 lambda!345577)))

(declare-fun bs!1573074 () Bool)

(assert (= bs!1573074 (and d!1974628 d!1974314)))

(assert (=> bs!1573074 (= lambda!345685 lambda!345623)))

(declare-fun bs!1573075 () Bool)

(assert (= bs!1573075 (and d!1974628 d!1973900)))

(assert (=> bs!1573075 (= lambda!345685 lambda!345542)))

(declare-fun bs!1573076 () Bool)

(assert (= bs!1573076 (and d!1974628 d!1974050)))

(assert (=> bs!1573076 (= lambda!345685 lambda!345596)))

(declare-fun bs!1573077 () Bool)

(assert (= bs!1573077 (and d!1974628 d!1974380)))

(assert (=> bs!1573077 (= lambda!345685 lambda!345640)))

(declare-fun bs!1573078 () Bool)

(assert (= bs!1573078 (and d!1974628 d!1974004)))

(assert (=> bs!1573078 (= lambda!345685 lambda!345572)))

(declare-fun bs!1573080 () Bool)

(assert (= bs!1573080 (and d!1974628 b!6291136)))

(assert (=> bs!1573080 (not (= lambda!345685 lambda!345605))))

(declare-fun bs!1573082 () Bool)

(assert (= bs!1573082 (and d!1974628 d!1973910)))

(assert (=> bs!1573082 (= lambda!345685 lambda!345546)))

(declare-fun bs!1573083 () Bool)

(assert (= bs!1573083 (and d!1974628 d!1974352)))

(assert (=> bs!1573083 (= lambda!345685 lambda!345634)))

(declare-fun bs!1573085 () Bool)

(assert (= bs!1573085 (and d!1974628 d!1974090)))

(assert (=> bs!1573085 (= lambda!345685 lambda!345599)))

(declare-fun bs!1573086 () Bool)

(assert (= bs!1573086 (and d!1974628 d!1974056)))

(assert (=> bs!1573086 (= lambda!345685 lambda!345597)))

(declare-fun b!6292039 () Bool)

(declare-fun e!3825916 () Bool)

(declare-fun lt!2357389 () Regex!16213)

(assert (=> b!6292039 (= e!3825916 (isConcat!1142 lt!2357389))))

(declare-fun b!6292040 () Bool)

(assert (=> b!6292040 (= e!3825916 (= lt!2357389 (head!12926 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun e!3825914 () Bool)

(assert (=> d!1974628 e!3825914))

(declare-fun res!2594833 () Bool)

(assert (=> d!1974628 (=> (not res!2594833) (not e!3825914))))

(assert (=> d!1974628 (= res!2594833 (validRegex!7949 lt!2357389))))

(declare-fun e!3825915 () Regex!16213)

(assert (=> d!1974628 (= lt!2357389 e!3825915)))

(declare-fun c!1141949 () Bool)

(declare-fun e!3825913 () Bool)

(assert (=> d!1974628 (= c!1141949 e!3825913)))

(declare-fun res!2594832 () Bool)

(assert (=> d!1974628 (=> (not res!2594832) (not e!3825913))))

(assert (=> d!1974628 (= res!2594832 ((_ is Cons!64815) (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(assert (=> d!1974628 (forall!15362 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))) lambda!345685)))

(assert (=> d!1974628 (= (generalisedConcat!1810 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))) lt!2357389)))

(declare-fun b!6292041 () Bool)

(declare-fun e!3825912 () Bool)

(assert (=> b!6292041 (= e!3825912 e!3825916)))

(declare-fun c!1141946 () Bool)

(assert (=> b!6292041 (= c!1141946 (isEmpty!36870 (tail!12011 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6292042 () Bool)

(assert (=> b!6292042 (= e!3825913 (isEmpty!36870 (t!378501 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun b!6292043 () Bool)

(declare-fun e!3825917 () Regex!16213)

(assert (=> b!6292043 (= e!3825915 e!3825917)))

(declare-fun c!1141948 () Bool)

(assert (=> b!6292043 (= c!1141948 ((_ is Cons!64815) (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6292044 () Bool)

(assert (=> b!6292044 (= e!3825917 EmptyExpr!16213)))

(declare-fun b!6292045 () Bool)

(assert (=> b!6292045 (= e!3825917 (Concat!25058 (h!71263 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))) (generalisedConcat!1810 (t!378501 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))))

(declare-fun b!6292046 () Bool)

(assert (=> b!6292046 (= e!3825912 (isEmptyExpr!1619 lt!2357389))))

(declare-fun b!6292047 () Bool)

(assert (=> b!6292047 (= e!3825915 (h!71263 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6292048 () Bool)

(assert (=> b!6292048 (= e!3825914 e!3825912)))

(declare-fun c!1141947 () Bool)

(assert (=> b!6292048 (= c!1141947 (isEmpty!36870 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(assert (= (and d!1974628 res!2594832) b!6292042))

(assert (= (and d!1974628 c!1141949) b!6292047))

(assert (= (and d!1974628 (not c!1141949)) b!6292043))

(assert (= (and b!6292043 c!1141948) b!6292045))

(assert (= (and b!6292043 (not c!1141948)) b!6292044))

(assert (= (and d!1974628 res!2594833) b!6292048))

(assert (= (and b!6292048 c!1141947) b!6292046))

(assert (= (and b!6292048 (not c!1141947)) b!6292041))

(assert (= (and b!6292041 c!1141946) b!6292040))

(assert (= (and b!6292041 (not c!1141946)) b!6292039))

(declare-fun m!7112634 () Bool)

(assert (=> b!6292045 m!7112634))

(declare-fun m!7112636 () Bool)

(assert (=> b!6292040 m!7112636))

(declare-fun m!7112638 () Bool)

(assert (=> b!6292046 m!7112638))

(assert (=> b!6292048 m!7111234))

(declare-fun m!7112640 () Bool)

(assert (=> b!6292041 m!7112640))

(assert (=> b!6292041 m!7112640))

(declare-fun m!7112642 () Bool)

(assert (=> b!6292041 m!7112642))

(declare-fun m!7112644 () Bool)

(assert (=> b!6292039 m!7112644))

(declare-fun m!7112646 () Bool)

(assert (=> b!6292042 m!7112646))

(declare-fun m!7112648 () Bool)

(assert (=> d!1974628 m!7112648))

(declare-fun m!7112650 () Bool)

(assert (=> d!1974628 m!7112650))

(assert (=> b!6290702 d!1974628))

(assert (=> d!1974022 d!1974138))

(assert (=> d!1973944 d!1974138))

(assert (=> d!1973944 d!1974096))

(declare-fun bs!1573091 () Bool)

(declare-fun d!1974630 () Bool)

(assert (= bs!1573091 (and d!1974630 d!1974428)))

(declare-fun lambda!345686 () Int)

(assert (=> bs!1573091 (= lambda!345686 lambda!345659)))

(declare-fun bs!1573092 () Bool)

(assert (= bs!1573092 (and d!1974630 d!1974166)))

(assert (=> bs!1573092 (= lambda!345686 lambda!345614)))

(declare-fun bs!1573093 () Bool)

(assert (= bs!1573093 (and d!1974630 d!1974360)))

(assert (=> bs!1573093 (= lambda!345686 lambda!345637)))

(declare-fun bs!1573094 () Bool)

(assert (= bs!1573094 (and d!1974630 d!1974158)))

(assert (=> bs!1573094 (not (= lambda!345686 lambda!345608))))

(declare-fun bs!1573095 () Bool)

(assert (= bs!1573095 (and d!1974630 b!6290783)))

(assert (=> bs!1573095 (not (= lambda!345686 lambda!345590))))

(declare-fun bs!1573096 () Bool)

(assert (= bs!1573096 (and d!1974630 d!1974456)))

(assert (=> bs!1573096 (= lambda!345686 lambda!345663)))

(declare-fun bs!1573097 () Bool)

(assert (= bs!1573097 (and d!1974630 d!1974354)))

(assert (=> bs!1573097 (= lambda!345686 lambda!345635)))

(declare-fun bs!1573098 () Bool)

(assert (= bs!1573098 (and d!1974630 d!1974486)))

(assert (=> bs!1573098 (= lambda!345686 lambda!345669)))

(declare-fun bs!1573099 () Bool)

(assert (= bs!1573099 (and d!1974630 b!6291144)))

(assert (=> bs!1573099 (not (= lambda!345686 lambda!345611))))

(declare-fun bs!1573100 () Bool)

(assert (= bs!1573100 (and d!1974630 b!6291142)))

(assert (=> bs!1573100 (not (= lambda!345686 lambda!345610))))

(declare-fun bs!1573101 () Bool)

(assert (= bs!1573101 (and d!1974630 d!1974372)))

(assert (=> bs!1573101 (= lambda!345686 lambda!345639)))

(declare-fun bs!1573102 () Bool)

(assert (= bs!1573102 (and d!1974630 d!1974458)))

(assert (=> bs!1573102 (= lambda!345686 lambda!345664)))

(declare-fun bs!1573103 () Bool)

(assert (= bs!1573103 (and d!1974630 b!6290786)))

(assert (=> bs!1573103 (not (= lambda!345686 lambda!345592))))

(declare-fun bs!1573104 () Bool)

(assert (= bs!1573104 (and d!1974630 d!1974208)))

(assert (=> bs!1573104 (= lambda!345686 lambda!345619)))

(declare-fun bs!1573105 () Bool)

(assert (= bs!1573105 (and d!1974630 b!6290788)))

(assert (=> bs!1573105 (not (= lambda!345686 lambda!345593))))

(declare-fun bs!1573106 () Bool)

(assert (= bs!1573106 (and d!1974630 b!6290781)))

(assert (=> bs!1573106 (not (= lambda!345686 lambda!345589))))

(assert (=> d!1974630 (= (nullableZipper!1983 lt!2357093) (exists!2528 lt!2357093 lambda!345686))))

(declare-fun bs!1573107 () Bool)

(assert (= bs!1573107 d!1974630))

(declare-fun m!7112652 () Bool)

(assert (=> bs!1573107 m!7112652))

(assert (=> b!6290789 d!1974630))

(assert (=> d!1974100 d!1974120))

(declare-fun d!1974632 () Bool)

(assert (=> d!1974632 (= (nullable!6206 (h!71263 (exprs!6097 lt!2357094))) (nullableFct!2157 (h!71263 (exprs!6097 lt!2357094))))))

(declare-fun bs!1573108 () Bool)

(assert (= bs!1573108 d!1974632))

(declare-fun m!7112654 () Bool)

(assert (=> bs!1573108 m!7112654))

(assert (=> b!6290806 d!1974632))

(assert (=> d!1974078 d!1974084))

(declare-fun d!1974634 () Bool)

(assert (=> d!1974634 (= (flatMap!1718 z!1189 lambda!345481) (dynLambda!25647 lambda!345481 (h!71264 zl!343)))))

(assert (=> d!1974634 true))

(declare-fun _$13!3407 () Unit!158183)

(assert (=> d!1974634 (= (choose!46745 z!1189 (h!71264 zl!343) lambda!345481) _$13!3407)))

(declare-fun b_lambda!239389 () Bool)

(assert (=> (not b_lambda!239389) (not d!1974634)))

(declare-fun bs!1573109 () Bool)

(assert (= bs!1573109 d!1974634))

(assert (=> bs!1573109 m!7110468))

(assert (=> bs!1573109 m!7111476))

(assert (=> d!1974078 d!1974634))

(declare-fun d!1974636 () Bool)

(assert (=> d!1974636 (= (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))) (nullableFct!2157 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun bs!1573110 () Bool)

(assert (= bs!1573110 d!1974636))

(declare-fun m!7112656 () Bool)

(assert (=> bs!1573110 m!7112656))

(assert (=> b!6290869 d!1974636))

(declare-fun call!532880 () (InoxSet Context!11194))

(declare-fun call!532878 () List!64939)

(declare-fun bm!532873 () Bool)

(declare-fun c!1141950 () Bool)

(assert (=> bm!532873 (= call!532880 (derivationStepZipperDown!1461 (ite c!1141950 (regOne!32939 (h!71263 (exprs!6097 lt!2357083))) (regOne!32938 (h!71263 (exprs!6097 lt!2357083)))) (ite c!1141950 (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (Context!11195 call!532878)) (h!71262 s!2326)))))

(declare-fun b!6292049 () Bool)

(declare-fun e!3825921 () Bool)

(assert (=> b!6292049 (= e!3825921 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 lt!2357083)))))))

(declare-fun bm!532874 () Bool)

(declare-fun call!532882 () (InoxSet Context!11194))

(declare-fun call!532879 () (InoxSet Context!11194))

(assert (=> bm!532874 (= call!532882 call!532879)))

(declare-fun d!1974638 () Bool)

(declare-fun c!1141954 () Bool)

(assert (=> d!1974638 (= c!1141954 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 lt!2357083))) (= (c!1141284 (h!71263 (exprs!6097 lt!2357083))) (h!71262 s!2326))))))

(declare-fun e!3825918 () (InoxSet Context!11194))

(assert (=> d!1974638 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 lt!2357083)) (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (h!71262 s!2326)) e!3825918)))

(declare-fun b!6292050 () Bool)

(assert (=> b!6292050 (= e!3825918 (store ((as const (Array Context!11194 Bool)) false) (Context!11195 (t!378501 (exprs!6097 lt!2357083))) true))))

(declare-fun c!1141952 () Bool)

(declare-fun bm!532875 () Bool)

(declare-fun call!532883 () List!64939)

(declare-fun c!1141953 () Bool)

(assert (=> bm!532875 (= call!532879 (derivationStepZipperDown!1461 (ite c!1141950 (regTwo!32939 (h!71263 (exprs!6097 lt!2357083))) (ite c!1141952 (regTwo!32938 (h!71263 (exprs!6097 lt!2357083))) (ite c!1141953 (regOne!32938 (h!71263 (exprs!6097 lt!2357083))) (reg!16542 (h!71263 (exprs!6097 lt!2357083)))))) (ite (or c!1141950 c!1141952) (Context!11195 (t!378501 (exprs!6097 lt!2357083))) (Context!11195 call!532883)) (h!71262 s!2326)))))

(declare-fun b!6292051 () Bool)

(declare-fun e!3825920 () (InoxSet Context!11194))

(declare-fun call!532881 () (InoxSet Context!11194))

(assert (=> b!6292051 (= e!3825920 call!532881)))

(declare-fun b!6292052 () Bool)

(declare-fun e!3825923 () (InoxSet Context!11194))

(declare-fun e!3825922 () (InoxSet Context!11194))

(assert (=> b!6292052 (= e!3825923 e!3825922)))

(assert (=> b!6292052 (= c!1141953 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun b!6292053 () Bool)

(assert (=> b!6292053 (= e!3825920 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6292054 () Bool)

(declare-fun e!3825919 () (InoxSet Context!11194))

(assert (=> b!6292054 (= e!3825919 ((_ map or) call!532880 call!532879))))

(declare-fun b!6292055 () Bool)

(assert (=> b!6292055 (= e!3825922 call!532881)))

(declare-fun b!6292056 () Bool)

(assert (=> b!6292056 (= c!1141952 e!3825921)))

(declare-fun res!2594834 () Bool)

(assert (=> b!6292056 (=> (not res!2594834) (not e!3825921))))

(assert (=> b!6292056 (= res!2594834 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357083))))))

(assert (=> b!6292056 (= e!3825919 e!3825923)))

(declare-fun bm!532876 () Bool)

(assert (=> bm!532876 (= call!532878 ($colon$colon!2078 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))) (ite (or c!1141952 c!1141953) (regTwo!32938 (h!71263 (exprs!6097 lt!2357083))) (h!71263 (exprs!6097 lt!2357083)))))))

(declare-fun b!6292057 () Bool)

(assert (=> b!6292057 (= e!3825923 ((_ map or) call!532880 call!532882))))

(declare-fun b!6292058 () Bool)

(declare-fun c!1141951 () Bool)

(assert (=> b!6292058 (= c!1141951 ((_ is Star!16213) (h!71263 (exprs!6097 lt!2357083))))))

(assert (=> b!6292058 (= e!3825922 e!3825920)))

(declare-fun bm!532877 () Bool)

(assert (=> bm!532877 (= call!532883 call!532878)))

(declare-fun bm!532878 () Bool)

(assert (=> bm!532878 (= call!532881 call!532882)))

(declare-fun b!6292059 () Bool)

(assert (=> b!6292059 (= e!3825918 e!3825919)))

(assert (=> b!6292059 (= c!1141950 ((_ is Union!16213) (h!71263 (exprs!6097 lt!2357083))))))

(assert (= (and d!1974638 c!1141954) b!6292050))

(assert (= (and d!1974638 (not c!1141954)) b!6292059))

(assert (= (and b!6292059 c!1141950) b!6292054))

(assert (= (and b!6292059 (not c!1141950)) b!6292056))

(assert (= (and b!6292056 res!2594834) b!6292049))

(assert (= (and b!6292056 c!1141952) b!6292057))

(assert (= (and b!6292056 (not c!1141952)) b!6292052))

(assert (= (and b!6292052 c!1141953) b!6292055))

(assert (= (and b!6292052 (not c!1141953)) b!6292058))

(assert (= (and b!6292058 c!1141951) b!6292051))

(assert (= (and b!6292058 (not c!1141951)) b!6292053))

(assert (= (or b!6292055 b!6292051) bm!532877))

(assert (= (or b!6292055 b!6292051) bm!532878))

(assert (= (or b!6292057 bm!532877) bm!532876))

(assert (= (or b!6292057 bm!532878) bm!532874))

(assert (= (or b!6292054 bm!532874) bm!532875))

(assert (= (or b!6292054 b!6292057) bm!532873))

(declare-fun m!7112658 () Bool)

(assert (=> b!6292049 m!7112658))

(declare-fun m!7112660 () Bool)

(assert (=> b!6292050 m!7112660))

(declare-fun m!7112662 () Bool)

(assert (=> bm!532873 m!7112662))

(declare-fun m!7112664 () Bool)

(assert (=> bm!532876 m!7112664))

(declare-fun m!7112670 () Bool)

(assert (=> bm!532875 m!7112670))

(assert (=> bm!532616 d!1974638))

(assert (=> d!1973960 d!1974120))

(declare-fun d!1974642 () Bool)

(assert (=> d!1974642 (= (nullable!6206 (Concat!25058 lt!2357063 lt!2357053)) (nullableFct!2157 (Concat!25058 lt!2357063 lt!2357053)))))

(declare-fun bs!1573112 () Bool)

(assert (= bs!1573112 d!1974642))

(declare-fun m!7112672 () Bool)

(assert (=> bs!1573112 m!7112672))

(assert (=> b!6290590 d!1974642))

(assert (=> b!6290857 d!1974146))

(declare-fun d!1974644 () Bool)

(assert (=> d!1974644 (= (isConcat!1142 lt!2357244) ((_ is Concat!25058) lt!2357244))))

(assert (=> b!6290706 d!1974644))

(declare-fun d!1974646 () Bool)

(declare-fun c!1141957 () Bool)

(assert (=> d!1974646 (= c!1141957 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3825931 () Bool)

(assert (=> d!1974646 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357055 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3825931)))

(declare-fun b!6292069 () Bool)

(assert (=> b!6292069 (= e!3825931 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357055 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6292070 () Bool)

(assert (=> b!6292070 (= e!3825931 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357055 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974646 c!1141957) b!6292069))

(assert (= (and d!1974646 (not c!1141957)) b!6292070))

(assert (=> d!1974646 m!7111112))

(assert (=> d!1974646 m!7111724))

(assert (=> b!6292069 m!7111540))

(declare-fun m!7112674 () Bool)

(assert (=> b!6292069 m!7112674))

(assert (=> b!6292070 m!7111112))

(assert (=> b!6292070 m!7111728))

(assert (=> b!6292070 m!7111540))

(assert (=> b!6292070 m!7111728))

(declare-fun m!7112680 () Bool)

(assert (=> b!6292070 m!7112680))

(assert (=> b!6292070 m!7111112))

(assert (=> b!6292070 m!7111732))

(assert (=> b!6292070 m!7112680))

(assert (=> b!6292070 m!7111732))

(declare-fun m!7112684 () Bool)

(assert (=> b!6292070 m!7112684))

(assert (=> b!6290953 d!1974646))

(declare-fun bs!1573113 () Bool)

(declare-fun d!1974652 () Bool)

(assert (= bs!1573113 (and d!1974652 d!1974426)))

(declare-fun lambda!345688 () Int)

(assert (=> bs!1573113 (= lambda!345688 lambda!345658)))

(declare-fun bs!1573114 () Bool)

(assert (= bs!1573114 (and d!1974652 d!1974464)))

(assert (=> bs!1573114 (= lambda!345688 lambda!345667)))

(declare-fun bs!1573115 () Bool)

(assert (= bs!1573115 (and d!1974652 d!1974252)))

(assert (=> bs!1573115 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345688 lambda!345622))))

(declare-fun bs!1573116 () Bool)

(assert (= bs!1573116 (and d!1974652 d!1974406)))

(assert (=> bs!1573116 (= lambda!345688 lambda!345645)))

(declare-fun bs!1573117 () Bool)

(assert (= bs!1573117 (and d!1974652 d!1974064)))

(assert (=> bs!1573117 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345688 lambda!345598))))

(declare-fun bs!1573118 () Bool)

(assert (= bs!1573118 (and d!1974652 d!1974186)))

(assert (=> bs!1573118 (= lambda!345688 lambda!345618)))

(declare-fun bs!1573119 () Bool)

(assert (= bs!1573119 (and d!1974652 d!1974538)))

(assert (=> bs!1573119 (= lambda!345688 lambda!345674)))

(declare-fun bs!1573121 () Bool)

(assert (= bs!1573121 (and d!1974652 d!1974348)))

(assert (=> bs!1573121 (= lambda!345688 lambda!345633)))

(declare-fun bs!1573122 () Bool)

(assert (= bs!1573122 (and d!1974652 d!1974178)))

(assert (=> bs!1573122 (= lambda!345688 lambda!345617)))

(declare-fun bs!1573124 () Bool)

(assert (= bs!1573124 (and d!1974652 d!1973976)))

(assert (=> bs!1573124 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345688 lambda!345557))))

(declare-fun bs!1573126 () Bool)

(assert (= bs!1573126 (and d!1974652 d!1974220)))

(assert (=> bs!1573126 (= lambda!345688 lambda!345620)))

(declare-fun bs!1573128 () Bool)

(assert (= bs!1573128 (and d!1974652 d!1974232)))

(assert (=> bs!1573128 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345688 lambda!345621))))

(declare-fun bs!1573130 () Bool)

(assert (= bs!1573130 (and d!1974652 b!6289808)))

(assert (=> bs!1573130 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345688 lambda!345481))))

(assert (=> d!1974652 true))

(assert (=> d!1974652 (= (derivationStepZipper!2179 lt!2357055 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357055 lambda!345688))))

(declare-fun bs!1573132 () Bool)

(assert (= bs!1573132 d!1974652))

(declare-fun m!7112694 () Bool)

(assert (=> bs!1573132 m!7112694))

(assert (=> b!6290953 d!1974652))

(assert (=> b!6290953 d!1974180))

(assert (=> b!6290953 d!1974182))

(declare-fun call!532887 () List!64939)

(declare-fun bm!532882 () Bool)

(declare-fun call!532889 () (InoxSet Context!11194))

(declare-fun c!1141959 () Bool)

(assert (=> bm!532882 (= call!532889 (derivationStepZipperDown!1461 (ite c!1141959 (regOne!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))) (ite c!1141959 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (Context!11195 call!532887)) (h!71262 s!2326)))))

(declare-fun b!6292073 () Bool)

(declare-fun e!3825936 () Bool)

(assert (=> b!6292073 (= e!3825936 (nullable!6206 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun bm!532883 () Bool)

(declare-fun call!532891 () (InoxSet Context!11194))

(declare-fun call!532888 () (InoxSet Context!11194))

(assert (=> bm!532883 (= call!532891 call!532888)))

(declare-fun d!1974658 () Bool)

(declare-fun c!1141963 () Bool)

(assert (=> d!1974658 (= c!1141963 (and ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))) (= (c!1141284 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326))))))

(declare-fun e!3825933 () (InoxSet Context!11194))

(assert (=> d!1974658 (= (derivationStepZipperDown!1461 (h!71263 (exprs!6097 (h!71264 zl!343))) (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (h!71262 s!2326)) e!3825933)))

(declare-fun b!6292074 () Bool)

(assert (=> b!6292074 (= e!3825933 (store ((as const (Array Context!11194 Bool)) false) (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) true))))

(declare-fun c!1141962 () Bool)

(declare-fun bm!532884 () Bool)

(declare-fun c!1141961 () Bool)

(declare-fun call!532892 () List!64939)

(assert (=> bm!532884 (= call!532888 (derivationStepZipperDown!1461 (ite c!1141959 (regTwo!32939 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141961 (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (ite c!1141962 (regOne!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (reg!16542 (h!71263 (exprs!6097 (h!71264 zl!343))))))) (ite (or c!1141959 c!1141961) (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))) (Context!11195 call!532892)) (h!71262 s!2326)))))

(declare-fun b!6292075 () Bool)

(declare-fun e!3825935 () (InoxSet Context!11194))

(declare-fun call!532890 () (InoxSet Context!11194))

(assert (=> b!6292075 (= e!3825935 call!532890)))

(declare-fun b!6292076 () Bool)

(declare-fun e!3825938 () (InoxSet Context!11194))

(declare-fun e!3825937 () (InoxSet Context!11194))

(assert (=> b!6292076 (= e!3825938 e!3825937)))

(assert (=> b!6292076 (= c!1141962 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun b!6292077 () Bool)

(assert (=> b!6292077 (= e!3825935 ((as const (Array Context!11194 Bool)) false))))

(declare-fun b!6292078 () Bool)

(declare-fun e!3825934 () (InoxSet Context!11194))

(assert (=> b!6292078 (= e!3825934 ((_ map or) call!532889 call!532888))))

(declare-fun b!6292079 () Bool)

(assert (=> b!6292079 (= e!3825937 call!532890)))

(declare-fun b!6292080 () Bool)

(assert (=> b!6292080 (= c!1141961 e!3825936)))

(declare-fun res!2594840 () Bool)

(assert (=> b!6292080 (=> (not res!2594840) (not e!3825936))))

(assert (=> b!6292080 (= res!2594840 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6292080 (= e!3825934 e!3825938)))

(declare-fun bm!532885 () Bool)

(assert (=> bm!532885 (= call!532887 ($colon$colon!2078 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343))))) (ite (or c!1141961 c!1141962) (regTwo!32938 (h!71263 (exprs!6097 (h!71264 zl!343)))) (h!71263 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun b!6292081 () Bool)

(assert (=> b!6292081 (= e!3825938 ((_ map or) call!532889 call!532891))))

(declare-fun b!6292082 () Bool)

(declare-fun c!1141960 () Bool)

(assert (=> b!6292082 (= c!1141960 ((_ is Star!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6292082 (= e!3825937 e!3825935)))

(declare-fun bm!532886 () Bool)

(assert (=> bm!532886 (= call!532892 call!532887)))

(declare-fun bm!532887 () Bool)

(assert (=> bm!532887 (= call!532890 call!532891)))

(declare-fun b!6292083 () Bool)

(assert (=> b!6292083 (= e!3825933 e!3825934)))

(assert (=> b!6292083 (= c!1141959 ((_ is Union!16213) (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (= (and d!1974658 c!1141963) b!6292074))

(assert (= (and d!1974658 (not c!1141963)) b!6292083))

(assert (= (and b!6292083 c!1141959) b!6292078))

(assert (= (and b!6292083 (not c!1141959)) b!6292080))

(assert (= (and b!6292080 res!2594840) b!6292073))

(assert (= (and b!6292080 c!1141961) b!6292081))

(assert (= (and b!6292080 (not c!1141961)) b!6292076))

(assert (= (and b!6292076 c!1141962) b!6292079))

(assert (= (and b!6292076 (not c!1141962)) b!6292082))

(assert (= (and b!6292082 c!1141960) b!6292075))

(assert (= (and b!6292082 (not c!1141960)) b!6292077))

(assert (= (or b!6292079 b!6292075) bm!532886))

(assert (= (or b!6292079 b!6292075) bm!532887))

(assert (= (or b!6292081 bm!532886) bm!532885))

(assert (= (or b!6292081 bm!532887) bm!532883))

(assert (= (or b!6292078 bm!532883) bm!532884))

(assert (= (or b!6292078 b!6292081) bm!532882))

(assert (=> b!6292073 m!7111468))

(declare-fun m!7112698 () Bool)

(assert (=> b!6292074 m!7112698))

(declare-fun m!7112706 () Bool)

(assert (=> bm!532882 m!7112706))

(declare-fun m!7112708 () Bool)

(assert (=> bm!532885 m!7112708))

(declare-fun m!7112710 () Bool)

(assert (=> bm!532884 m!7112710))

(assert (=> bm!532651 d!1974658))

(declare-fun d!1974670 () Bool)

(declare-fun res!2594847 () Bool)

(declare-fun e!3825946 () Bool)

(assert (=> d!1974670 (=> res!2594847 e!3825946)))

(assert (=> d!1974670 (= res!2594847 ((_ is Nil!64816) lt!2357078))))

(assert (=> d!1974670 (= (forall!15363 lt!2357078 lambda!345590) e!3825946)))

(declare-fun b!6292093 () Bool)

(declare-fun e!3825947 () Bool)

(assert (=> b!6292093 (= e!3825946 e!3825947)))

(declare-fun res!2594848 () Bool)

(assert (=> b!6292093 (=> (not res!2594848) (not e!3825947))))

(assert (=> b!6292093 (= res!2594848 (dynLambda!25650 lambda!345590 (h!71264 lt!2357078)))))

(declare-fun b!6292094 () Bool)

(assert (=> b!6292094 (= e!3825947 (forall!15363 (t!378502 lt!2357078) lambda!345590))))

(assert (= (and d!1974670 (not res!2594847)) b!6292093))

(assert (= (and b!6292093 res!2594848) b!6292094))

(declare-fun b_lambda!239391 () Bool)

(assert (=> (not b_lambda!239391) (not b!6292093)))

(declare-fun m!7112712 () Bool)

(assert (=> b!6292093 m!7112712))

(declare-fun m!7112714 () Bool)

(assert (=> b!6292094 m!7112714))

(assert (=> b!6290783 d!1974670))

(assert (=> b!6290603 d!1974128))

(assert (=> b!6290603 d!1974130))

(assert (=> bm!532611 d!1974138))

(declare-fun d!1974672 () Bool)

(assert (=> d!1974672 (= (isEmpty!36870 (tail!12011 lt!2357082)) ((_ is Nil!64815) (tail!12011 lt!2357082)))))

(assert (=> b!6290758 d!1974672))

(declare-fun d!1974674 () Bool)

(assert (=> d!1974674 (= (tail!12011 lt!2357082) (t!378501 lt!2357082))))

(assert (=> b!6290758 d!1974674))

(assert (=> d!1974092 d!1974138))

(declare-fun d!1974676 () Bool)

(declare-fun res!2594850 () Bool)

(declare-fun e!3825951 () Bool)

(assert (=> d!1974676 (=> res!2594850 e!3825951)))

(assert (=> d!1974676 (= res!2594850 ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(assert (=> d!1974676 (= (validRegex!7949 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) e!3825951)))

(declare-fun b!6292095 () Bool)

(declare-fun res!2594852 () Bool)

(declare-fun e!3825952 () Bool)

(assert (=> b!6292095 (=> res!2594852 e!3825952)))

(assert (=> b!6292095 (= res!2594852 (not ((_ is Concat!25058) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))

(declare-fun e!3825948 () Bool)

(assert (=> b!6292095 (= e!3825948 e!3825952)))

(declare-fun c!1141967 () Bool)

(declare-fun c!1141966 () Bool)

(declare-fun call!532898 () Bool)

(declare-fun bm!532891 () Bool)

(assert (=> bm!532891 (= call!532898 (validRegex!7949 (ite c!1141967 (reg!16542 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (ite c!1141966 (regTwo!32939 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (regTwo!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))))

(declare-fun b!6292096 () Bool)

(declare-fun e!3825950 () Bool)

(assert (=> b!6292096 (= e!3825950 e!3825948)))

(assert (=> b!6292096 (= c!1141966 ((_ is Union!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun bm!532892 () Bool)

(declare-fun call!532897 () Bool)

(assert (=> bm!532892 (= call!532897 call!532898)))

(declare-fun b!6292097 () Bool)

(declare-fun e!3825954 () Bool)

(assert (=> b!6292097 (= e!3825950 e!3825954)))

(declare-fun res!2594853 () Bool)

(assert (=> b!6292097 (= res!2594853 (not (nullable!6206 (reg!16542 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))))

(assert (=> b!6292097 (=> (not res!2594853) (not e!3825954))))

(declare-fun b!6292098 () Bool)

(assert (=> b!6292098 (= e!3825951 e!3825950)))

(assert (=> b!6292098 (= c!1141967 ((_ is Star!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun b!6292099 () Bool)

(declare-fun res!2594851 () Bool)

(declare-fun e!3825949 () Bool)

(assert (=> b!6292099 (=> (not res!2594851) (not e!3825949))))

(declare-fun call!532896 () Bool)

(assert (=> b!6292099 (= res!2594851 call!532896)))

(assert (=> b!6292099 (= e!3825948 e!3825949)))

(declare-fun bm!532893 () Bool)

(assert (=> bm!532893 (= call!532896 (validRegex!7949 (ite c!1141966 (regOne!32939 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (regOne!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))))

(declare-fun b!6292100 () Bool)

(assert (=> b!6292100 (= e!3825954 call!532898)))

(declare-fun b!6292101 () Bool)

(declare-fun e!3825953 () Bool)

(assert (=> b!6292101 (= e!3825952 e!3825953)))

(declare-fun res!2594849 () Bool)

(assert (=> b!6292101 (=> (not res!2594849) (not e!3825953))))

(assert (=> b!6292101 (= res!2594849 call!532896)))

(declare-fun b!6292102 () Bool)

(assert (=> b!6292102 (= e!3825953 call!532897)))

(declare-fun b!6292103 () Bool)

(assert (=> b!6292103 (= e!3825949 call!532897)))

(assert (= (and d!1974676 (not res!2594850)) b!6292098))

(assert (= (and b!6292098 c!1141967) b!6292097))

(assert (= (and b!6292098 (not c!1141967)) b!6292096))

(assert (= (and b!6292097 res!2594853) b!6292100))

(assert (= (and b!6292096 c!1141966) b!6292099))

(assert (= (and b!6292096 (not c!1141966)) b!6292095))

(assert (= (and b!6292099 res!2594851) b!6292103))

(assert (= (and b!6292095 (not res!2594852)) b!6292101))

(assert (= (and b!6292101 res!2594849) b!6292102))

(assert (= (or b!6292103 b!6292102) bm!532892))

(assert (= (or b!6292099 b!6292101) bm!532893))

(assert (= (or b!6292100 bm!532892) bm!532891))

(declare-fun m!7112716 () Bool)

(assert (=> bm!532891 m!7112716))

(declare-fun m!7112718 () Bool)

(assert (=> b!6292097 m!7112718))

(declare-fun m!7112720 () Bool)

(assert (=> bm!532893 m!7112720))

(assert (=> d!1974092 d!1974676))

(declare-fun bs!1573135 () Bool)

(declare-fun d!1974678 () Bool)

(assert (= bs!1573135 (and d!1974678 d!1974428)))

(declare-fun lambda!345690 () Int)

(assert (=> bs!1573135 (= lambda!345690 lambda!345659)))

(declare-fun bs!1573136 () Bool)

(assert (= bs!1573136 (and d!1974678 d!1974166)))

(assert (=> bs!1573136 (= lambda!345690 lambda!345614)))

(declare-fun bs!1573137 () Bool)

(assert (= bs!1573137 (and d!1974678 d!1974360)))

(assert (=> bs!1573137 (= lambda!345690 lambda!345637)))

(declare-fun bs!1573138 () Bool)

(assert (= bs!1573138 (and d!1974678 d!1974158)))

(assert (=> bs!1573138 (not (= lambda!345690 lambda!345608))))

(declare-fun bs!1573139 () Bool)

(assert (= bs!1573139 (and d!1974678 b!6290783)))

(assert (=> bs!1573139 (not (= lambda!345690 lambda!345590))))

(declare-fun bs!1573140 () Bool)

(assert (= bs!1573140 (and d!1974678 d!1974456)))

(assert (=> bs!1573140 (= lambda!345690 lambda!345663)))

(declare-fun bs!1573141 () Bool)

(assert (= bs!1573141 (and d!1974678 d!1974354)))

(assert (=> bs!1573141 (= lambda!345690 lambda!345635)))

(declare-fun bs!1573142 () Bool)

(assert (= bs!1573142 (and d!1974678 d!1974486)))

(assert (=> bs!1573142 (= lambda!345690 lambda!345669)))

(declare-fun bs!1573143 () Bool)

(assert (= bs!1573143 (and d!1974678 b!6291144)))

(assert (=> bs!1573143 (not (= lambda!345690 lambda!345611))))

(declare-fun bs!1573144 () Bool)

(assert (= bs!1573144 (and d!1974678 b!6291142)))

(assert (=> bs!1573144 (not (= lambda!345690 lambda!345610))))

(declare-fun bs!1573145 () Bool)

(assert (= bs!1573145 (and d!1974678 d!1974372)))

(assert (=> bs!1573145 (= lambda!345690 lambda!345639)))

(declare-fun bs!1573146 () Bool)

(assert (= bs!1573146 (and d!1974678 d!1974630)))

(assert (=> bs!1573146 (= lambda!345690 lambda!345686)))

(declare-fun bs!1573147 () Bool)

(assert (= bs!1573147 (and d!1974678 d!1974458)))

(assert (=> bs!1573147 (= lambda!345690 lambda!345664)))

(declare-fun bs!1573148 () Bool)

(assert (= bs!1573148 (and d!1974678 b!6290786)))

(assert (=> bs!1573148 (not (= lambda!345690 lambda!345592))))

(declare-fun bs!1573149 () Bool)

(assert (= bs!1573149 (and d!1974678 d!1974208)))

(assert (=> bs!1573149 (= lambda!345690 lambda!345619)))

(declare-fun bs!1573150 () Bool)

(assert (= bs!1573150 (and d!1974678 b!6290788)))

(assert (=> bs!1573150 (not (= lambda!345690 lambda!345593))))

(declare-fun bs!1573151 () Bool)

(assert (= bs!1573151 (and d!1974678 b!6290781)))

(assert (=> bs!1573151 (not (= lambda!345690 lambda!345589))))

(assert (=> d!1974678 (= (nullableZipper!1983 lt!2357084) (exists!2528 lt!2357084 lambda!345690))))

(declare-fun bs!1573152 () Bool)

(assert (= bs!1573152 d!1974678))

(declare-fun m!7112722 () Bool)

(assert (=> bs!1573152 m!7112722))

(assert (=> b!6290610 d!1974678))

(assert (=> d!1973994 d!1974138))

(assert (=> d!1973994 d!1974190))

(declare-fun bs!1573153 () Bool)

(declare-fun d!1974680 () Bool)

(assert (= bs!1573153 (and d!1974680 d!1974428)))

(declare-fun lambda!345691 () Int)

(assert (=> bs!1573153 (= lambda!345691 lambda!345659)))

(declare-fun bs!1573154 () Bool)

(assert (= bs!1573154 (and d!1974680 d!1974166)))

(assert (=> bs!1573154 (= lambda!345691 lambda!345614)))

(declare-fun bs!1573155 () Bool)

(assert (= bs!1573155 (and d!1974680 d!1974360)))

(assert (=> bs!1573155 (= lambda!345691 lambda!345637)))

(declare-fun bs!1573156 () Bool)

(assert (= bs!1573156 (and d!1974680 d!1974158)))

(assert (=> bs!1573156 (not (= lambda!345691 lambda!345608))))

(declare-fun bs!1573157 () Bool)

(assert (= bs!1573157 (and d!1974680 b!6290783)))

(assert (=> bs!1573157 (not (= lambda!345691 lambda!345590))))

(declare-fun bs!1573158 () Bool)

(assert (= bs!1573158 (and d!1974680 d!1974456)))

(assert (=> bs!1573158 (= lambda!345691 lambda!345663)))

(declare-fun bs!1573159 () Bool)

(assert (= bs!1573159 (and d!1974680 d!1974354)))

(assert (=> bs!1573159 (= lambda!345691 lambda!345635)))

(declare-fun bs!1573160 () Bool)

(assert (= bs!1573160 (and d!1974680 d!1974678)))

(assert (=> bs!1573160 (= lambda!345691 lambda!345690)))

(declare-fun bs!1573161 () Bool)

(assert (= bs!1573161 (and d!1974680 d!1974486)))

(assert (=> bs!1573161 (= lambda!345691 lambda!345669)))

(declare-fun bs!1573162 () Bool)

(assert (= bs!1573162 (and d!1974680 b!6291144)))

(assert (=> bs!1573162 (not (= lambda!345691 lambda!345611))))

(declare-fun bs!1573163 () Bool)

(assert (= bs!1573163 (and d!1974680 b!6291142)))

(assert (=> bs!1573163 (not (= lambda!345691 lambda!345610))))

(declare-fun bs!1573164 () Bool)

(assert (= bs!1573164 (and d!1974680 d!1974372)))

(assert (=> bs!1573164 (= lambda!345691 lambda!345639)))

(declare-fun bs!1573165 () Bool)

(assert (= bs!1573165 (and d!1974680 d!1974630)))

(assert (=> bs!1573165 (= lambda!345691 lambda!345686)))

(declare-fun bs!1573166 () Bool)

(assert (= bs!1573166 (and d!1974680 d!1974458)))

(assert (=> bs!1573166 (= lambda!345691 lambda!345664)))

(declare-fun bs!1573167 () Bool)

(assert (= bs!1573167 (and d!1974680 b!6290786)))

(assert (=> bs!1573167 (not (= lambda!345691 lambda!345592))))

(declare-fun bs!1573168 () Bool)

(assert (= bs!1573168 (and d!1974680 d!1974208)))

(assert (=> bs!1573168 (= lambda!345691 lambda!345619)))

(declare-fun bs!1573169 () Bool)

(assert (= bs!1573169 (and d!1974680 b!6290788)))

(assert (=> bs!1573169 (not (= lambda!345691 lambda!345593))))

(declare-fun bs!1573170 () Bool)

(assert (= bs!1573170 (and d!1974680 b!6290781)))

(assert (=> bs!1573170 (not (= lambda!345691 lambda!345589))))

(assert (=> d!1974680 (= (nullableZipper!1983 lt!2357071) (exists!2528 lt!2357071 lambda!345691))))

(declare-fun bs!1573171 () Bool)

(assert (= bs!1573171 d!1974680))

(declare-fun m!7112724 () Bool)

(assert (=> bs!1573171 m!7112724))

(assert (=> b!6290754 d!1974680))

(declare-fun d!1974682 () Bool)

(assert (=> d!1974682 (= (Exists!3283 lambda!345565) (choose!46739 lambda!345565))))

(declare-fun bs!1573172 () Bool)

(assert (= bs!1573172 d!1974682))

(declare-fun m!7112726 () Bool)

(assert (=> bs!1573172 m!7112726))

(assert (=> d!1973990 d!1974682))

(declare-fun d!1974684 () Bool)

(assert (=> d!1974684 (= (Exists!3283 lambda!345566) (choose!46739 lambda!345566))))

(declare-fun bs!1573173 () Bool)

(assert (= bs!1573173 d!1974684))

(declare-fun m!7112728 () Bool)

(assert (=> bs!1573173 m!7112728))

(assert (=> d!1973990 d!1974684))

(declare-fun bs!1573176 () Bool)

(declare-fun d!1974686 () Bool)

(assert (= bs!1573176 (and d!1974686 b!6289815)))

(declare-fun lambda!345692 () Int)

(assert (=> bs!1573176 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345692 lambda!345482))))

(declare-fun bs!1573177 () Bool)

(assert (= bs!1573177 (and d!1974686 d!1974006)))

(assert (=> bs!1573177 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345692 lambda!345573))))

(declare-fun bs!1573178 () Bool)

(assert (= bs!1573178 (and d!1974686 d!1974334)))

(assert (=> bs!1573178 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345692 lambda!345632))))

(declare-fun bs!1573179 () Bool)

(assert (= bs!1573179 (and d!1974686 b!6291625)))

(assert (=> bs!1573179 (not (= lambda!345692 lambda!345649))))

(declare-fun bs!1573181 () Bool)

(assert (= bs!1573181 (and d!1974686 d!1974320)))

(assert (=> bs!1573181 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345692 lambda!345628))))

(declare-fun bs!1573182 () Bool)

(assert (= bs!1573182 (and d!1974686 d!1974042)))

(assert (=> bs!1573182 (not (= lambda!345692 lambda!345581))))

(declare-fun bs!1573184 () Bool)

(assert (= bs!1573184 (and d!1974686 d!1974040)))

(assert (=> bs!1573184 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345692 lambda!345578))))

(declare-fun bs!1573186 () Bool)

(assert (= bs!1573186 (and d!1974686 b!6290728)))

(assert (=> bs!1573186 (not (= lambda!345692 lambda!345576))))

(declare-fun bs!1573188 () Bool)

(assert (= bs!1573188 (and d!1974686 b!6291163)))

(assert (=> bs!1573188 (not (= lambda!345692 lambda!345616))))

(assert (=> bs!1573181 (not (= lambda!345692 lambda!345629))))

(declare-fun bs!1573191 () Bool)

(assert (= bs!1573191 (and d!1974686 d!1973990)))

(assert (=> bs!1573191 (= lambda!345692 lambda!345565)))

(declare-fun bs!1573193 () Bool)

(assert (= bs!1573193 (and d!1974686 b!6291777)))

(assert (=> bs!1573193 (not (= lambda!345692 lambda!345672))))

(declare-fun bs!1573195 () Bool)

(assert (= bs!1573195 (and d!1974686 b!6289816)))

(assert (=> bs!1573195 (not (= lambda!345692 lambda!345480))))

(assert (=> bs!1573176 (not (= lambda!345692 lambda!345483))))

(declare-fun bs!1573198 () Bool)

(assert (= bs!1573198 (and d!1974686 d!1973988)))

(assert (=> bs!1573198 (= lambda!345692 lambda!345560)))

(declare-fun bs!1573199 () Bool)

(assert (= bs!1573199 (and d!1974686 b!6290675)))

(assert (=> bs!1573199 (not (= lambda!345692 lambda!345567))))

(assert (=> bs!1573191 (not (= lambda!345692 lambda!345566))))

(declare-fun bs!1573201 () Bool)

(assert (= bs!1573201 (and d!1974686 b!6290737)))

(assert (=> bs!1573201 (not (= lambda!345692 lambda!345575))))

(assert (=> bs!1573184 (not (= lambda!345692 lambda!345579))))

(declare-fun bs!1573204 () Bool)

(assert (= bs!1573204 (and d!1974686 d!1974414)))

(assert (=> bs!1573204 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345692 lambda!345646))))

(declare-fun bs!1573205 () Bool)

(assert (= bs!1573205 (and d!1974686 b!6291172)))

(assert (=> bs!1573205 (not (= lambda!345692 lambda!345615))))

(declare-fun bs!1573206 () Bool)

(assert (= bs!1573206 (and d!1974686 b!6291786)))

(assert (=> bs!1573206 (not (= lambda!345692 lambda!345670))))

(declare-fun bs!1573207 () Bool)

(assert (= bs!1573207 (and d!1974686 d!1974010)))

(assert (=> bs!1573207 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345692 lambda!345574))))

(declare-fun bs!1573209 () Bool)

(assert (= bs!1573209 (and d!1974686 b!6291642)))

(assert (=> bs!1573209 (not (= lambda!345692 lambda!345657))))

(assert (=> bs!1573182 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345692 lambda!345580))))

(assert (=> bs!1573195 (= lambda!345692 lambda!345479)))

(declare-fun bs!1573212 () Bool)

(assert (= bs!1573212 (and d!1974686 b!6290448)))

(assert (=> bs!1573212 (not (= lambda!345692 lambda!345554))))

(declare-fun bs!1573214 () Bool)

(assert (= bs!1573214 (and d!1974686 b!6290666)))

(assert (=> bs!1573214 (not (= lambda!345692 lambda!345568))))

(declare-fun bs!1573215 () Bool)

(assert (= bs!1573215 (and d!1974686 d!1974356)))

(assert (=> bs!1573215 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345692 lambda!345636))))

(assert (=> bs!1573176 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345692 lambda!345484))))

(declare-fun bs!1573216 () Bool)

(assert (= bs!1573216 (and d!1974686 b!6291651)))

(assert (=> bs!1573216 (not (= lambda!345692 lambda!345654))))

(declare-fun bs!1573217 () Bool)

(assert (= bs!1573217 (and d!1974686 b!6290457)))

(assert (=> bs!1573217 (not (= lambda!345692 lambda!345553))))

(declare-fun bs!1573218 () Bool)

(assert (= bs!1573218 (and d!1974686 b!6291634)))

(assert (=> bs!1573218 (not (= lambda!345692 lambda!345648))))

(declare-fun bs!1573219 () Bool)

(assert (= bs!1573219 (and d!1974686 b!6291874)))

(assert (=> bs!1573219 (not (= lambda!345692 lambda!345676))))

(assert (=> bs!1573204 (not (= lambda!345692 lambda!345647))))

(assert (=> bs!1573176 (not (= lambda!345692 lambda!345485))))

(declare-fun bs!1573220 () Bool)

(assert (= bs!1573220 (and d!1974686 d!1974400)))

(assert (=> bs!1573220 (= lambda!345692 lambda!345643)))

(declare-fun bs!1573221 () Bool)

(assert (= bs!1573221 (and d!1974686 b!6291883)))

(assert (=> bs!1573221 (not (= lambda!345692 lambda!345675))))

(assert (=> d!1974686 true))

(assert (=> d!1974686 true))

(assert (=> d!1974686 true))

(declare-fun lambda!345695 () Int)

(assert (=> bs!1573176 (not (= lambda!345695 lambda!345482))))

(assert (=> bs!1573177 (not (= lambda!345695 lambda!345573))))

(assert (=> bs!1573178 (not (= lambda!345695 lambda!345632))))

(assert (=> bs!1573179 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regTwo!32939 lt!2357070))) (= (regTwo!32938 r!7292) (regTwo!32938 (regTwo!32939 lt!2357070)))) (= lambda!345695 lambda!345649))))

(assert (=> bs!1573181 (not (= lambda!345695 lambda!345628))))

(assert (=> bs!1573182 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345695 lambda!345581))))

(assert (=> bs!1573184 (not (= lambda!345695 lambda!345578))))

(assert (=> bs!1573186 (= (and (= (regOne!32938 r!7292) (regOne!32938 lt!2357070)) (= (regTwo!32938 r!7292) (regTwo!32938 lt!2357070))) (= lambda!345695 lambda!345576))))

(assert (=> bs!1573188 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 r!7292) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345695 lambda!345616))))

(assert (=> bs!1573181 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345695 lambda!345629))))

(assert (=> bs!1573193 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regTwo!32939 r!7292))) (= (regTwo!32938 r!7292) (regTwo!32938 (regTwo!32939 r!7292)))) (= lambda!345695 lambda!345672))))

(assert (=> bs!1573195 (= lambda!345695 lambda!345480)))

(assert (=> bs!1573176 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345695 lambda!345483))))

(assert (=> bs!1573198 (not (= lambda!345695 lambda!345560))))

(assert (=> bs!1573199 (not (= lambda!345695 lambda!345567))))

(assert (=> bs!1573191 (= lambda!345695 lambda!345566)))

(assert (=> bs!1573201 (not (= lambda!345695 lambda!345575))))

(assert (=> bs!1573184 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345695 lambda!345579))))

(assert (=> bs!1573204 (not (= lambda!345695 lambda!345646))))

(assert (=> bs!1573205 (not (= lambda!345695 lambda!345615))))

(assert (=> bs!1573206 (not (= lambda!345695 lambda!345670))))

(assert (=> bs!1573207 (not (= lambda!345695 lambda!345574))))

(assert (=> bs!1573209 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32939 r!7292))) (= (regTwo!32938 r!7292) (regTwo!32938 (regOne!32939 r!7292)))) (= lambda!345695 lambda!345657))))

(assert (=> bs!1573182 (not (= lambda!345695 lambda!345580))))

(declare-fun bs!1573223 () Bool)

(assert (= bs!1573223 d!1974686))

(assert (=> bs!1573223 (not (= lambda!345695 lambda!345692))))

(assert (=> bs!1573191 (not (= lambda!345695 lambda!345565))))

(assert (=> bs!1573195 (not (= lambda!345695 lambda!345479))))

(assert (=> bs!1573212 (= lambda!345695 lambda!345554)))

(assert (=> bs!1573214 (= (and (= (regOne!32938 r!7292) (regOne!32938 lt!2357061)) (= (regTwo!32938 r!7292) (regTwo!32938 lt!2357061))) (= lambda!345695 lambda!345568))))

(assert (=> bs!1573215 (not (= lambda!345695 lambda!345636))))

(assert (=> bs!1573176 (not (= lambda!345695 lambda!345484))))

(assert (=> bs!1573216 (not (= lambda!345695 lambda!345654))))

(assert (=> bs!1573217 (not (= lambda!345695 lambda!345553))))

(assert (=> bs!1573218 (not (= lambda!345695 lambda!345648))))

(assert (=> bs!1573219 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regTwo!32939 lt!2357061))) (= (regTwo!32938 r!7292) (regTwo!32938 (regTwo!32939 lt!2357061)))) (= lambda!345695 lambda!345676))))

(assert (=> bs!1573204 (= (and (= (regOne!32938 r!7292) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357070)) (= lambda!345695 lambda!345647))))

(assert (=> bs!1573176 (= (and (= (regOne!32938 r!7292) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 r!7292) lt!2357053)) (= lambda!345695 lambda!345485))))

(assert (=> bs!1573220 (not (= lambda!345695 lambda!345643))))

(assert (=> bs!1573221 (not (= lambda!345695 lambda!345675))))

(assert (=> d!1974686 true))

(assert (=> d!1974686 true))

(assert (=> d!1974686 true))

(assert (=> d!1974686 (= (Exists!3283 lambda!345692) (Exists!3283 lambda!345695))))

(assert (=> d!1974686 true))

(declare-fun _$90!2113 () Unit!158183)

(assert (=> d!1974686 (= (choose!46741 (regOne!32938 r!7292) (regTwo!32938 r!7292) s!2326) _$90!2113)))

(declare-fun m!7112762 () Bool)

(assert (=> bs!1573223 m!7112762))

(declare-fun m!7112764 () Bool)

(assert (=> bs!1573223 m!7112764))

(assert (=> d!1973990 d!1974686))

(assert (=> d!1973990 d!1974398))

(assert (=> bs!1572337 d!1974088))

(assert (=> b!6290631 d!1974262))

(assert (=> b!6290631 d!1974264))

(assert (=> b!6290631 d!1974266))

(declare-fun b!6292139 () Bool)

(declare-fun lt!2357393 () Unit!158183)

(declare-fun lt!2357392 () Unit!158183)

(assert (=> b!6292139 (= lt!2357393 lt!2357392)))

(assert (=> b!6292139 (= (++!14286 (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326))) s!2326)))

(assert (=> b!6292139 (= lt!2357392 (lemmaMoveElementToOtherListKeepsConcatEq!2381 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (h!71262 (t!378500 s!2326)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun e!3825985 () Option!16104)

(assert (=> b!6292139 (= e!3825985 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun b!6292140 () Bool)

(declare-fun e!3825982 () Option!16104)

(assert (=> b!6292140 (= e!3825982 e!3825985)))

(declare-fun c!1141974 () Bool)

(assert (=> b!6292140 (= c!1141974 ((_ is Nil!64814) (t!378500 s!2326)))))

(declare-fun b!6292141 () Bool)

(assert (=> b!6292141 (= e!3825985 None!16103)))

(declare-fun b!6292142 () Bool)

(declare-fun res!2594878 () Bool)

(declare-fun e!3825986 () Bool)

(assert (=> b!6292142 (=> (not res!2594878) (not e!3825986))))

(declare-fun lt!2357391 () Option!16104)

(assert (=> b!6292142 (= res!2594878 (matchR!8396 (regTwo!32938 r!7292) (_2!36495 (get!22408 lt!2357391))))))

(declare-fun b!6292143 () Bool)

(declare-fun res!2594877 () Bool)

(assert (=> b!6292143 (=> (not res!2594877) (not e!3825986))))

(assert (=> b!6292143 (= res!2594877 (matchR!8396 (regOne!32938 r!7292) (_1!36495 (get!22408 lt!2357391))))))

(declare-fun b!6292144 () Bool)

(assert (=> b!6292144 (= e!3825982 (Some!16103 (tuple2!66385 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326))))))

(declare-fun b!6292145 () Bool)

(declare-fun e!3825983 () Bool)

(assert (=> b!6292145 (= e!3825983 (matchR!8396 (regTwo!32938 r!7292) (t!378500 s!2326)))))

(declare-fun b!6292146 () Bool)

(assert (=> b!6292146 (= e!3825986 (= (++!14286 (_1!36495 (get!22408 lt!2357391)) (_2!36495 (get!22408 lt!2357391))) s!2326))))

(declare-fun d!1974704 () Bool)

(declare-fun e!3825984 () Bool)

(assert (=> d!1974704 e!3825984))

(declare-fun res!2594880 () Bool)

(assert (=> d!1974704 (=> res!2594880 e!3825984)))

(assert (=> d!1974704 (= res!2594880 e!3825986)))

(declare-fun res!2594876 () Bool)

(assert (=> d!1974704 (=> (not res!2594876) (not e!3825986))))

(assert (=> d!1974704 (= res!2594876 (isDefined!12807 lt!2357391))))

(assert (=> d!1974704 (= lt!2357391 e!3825982)))

(declare-fun c!1141975 () Bool)

(assert (=> d!1974704 (= c!1141975 e!3825983)))

(declare-fun res!2594879 () Bool)

(assert (=> d!1974704 (=> (not res!2594879) (not e!3825983))))

(assert (=> d!1974704 (= res!2594879 (matchR!8396 (regOne!32938 r!7292) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))))))

(assert (=> d!1974704 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1974704 (= (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326) lt!2357391)))

(declare-fun b!6292138 () Bool)

(assert (=> b!6292138 (= e!3825984 (not (isDefined!12807 lt!2357391)))))

(assert (= (and d!1974704 res!2594879) b!6292145))

(assert (= (and d!1974704 c!1141975) b!6292144))

(assert (= (and d!1974704 (not c!1141975)) b!6292140))

(assert (= (and b!6292140 c!1141974) b!6292141))

(assert (= (and b!6292140 (not c!1141974)) b!6292139))

(assert (= (and d!1974704 res!2594876) b!6292143))

(assert (= (and b!6292143 res!2594877) b!6292142))

(assert (= (and b!6292142 res!2594878) b!6292146))

(assert (= (and d!1974704 (not res!2594880)) b!6292138))

(declare-fun m!7112766 () Bool)

(assert (=> b!6292138 m!7112766))

(assert (=> d!1974704 m!7112766))

(assert (=> d!1974704 m!7111182))

(declare-fun m!7112768 () Bool)

(assert (=> d!1974704 m!7112768))

(assert (=> d!1974704 m!7111172))

(declare-fun m!7112770 () Bool)

(assert (=> b!6292143 m!7112770))

(declare-fun m!7112772 () Bool)

(assert (=> b!6292143 m!7112772))

(assert (=> b!6292146 m!7112770))

(declare-fun m!7112774 () Bool)

(assert (=> b!6292146 m!7112774))

(declare-fun m!7112776 () Bool)

(assert (=> b!6292145 m!7112776))

(assert (=> b!6292139 m!7111182))

(assert (=> b!6292139 m!7111930))

(assert (=> b!6292139 m!7111930))

(assert (=> b!6292139 m!7111932))

(assert (=> b!6292139 m!7111182))

(assert (=> b!6292139 m!7111934))

(assert (=> b!6292139 m!7111930))

(declare-fun m!7112778 () Bool)

(assert (=> b!6292139 m!7112778))

(assert (=> b!6292142 m!7112770))

(declare-fun m!7112780 () Bool)

(assert (=> b!6292142 m!7112780))

(assert (=> b!6290631 d!1974704))

(assert (=> bm!532607 d!1974138))

(declare-fun d!1974706 () Bool)

(assert (=> d!1974706 true))

(assert (=> d!1974706 true))

(declare-fun res!2594881 () Bool)

(assert (=> d!1974706 (= (choose!46739 lambda!345479) res!2594881)))

(assert (=> d!1973986 d!1974706))

(declare-fun d!1974708 () Bool)

(assert (=> d!1974708 (= (isEmpty!36870 (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))) ((_ is Nil!64815) (t!378501 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(assert (=> b!6290699 d!1974708))

(declare-fun d!1974710 () Bool)

(assert (=> d!1974710 (= (isEmpty!36870 (exprs!6097 (h!71264 zl!343))) ((_ is Nil!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> b!6290904 d!1974710))

(assert (=> b!6290553 d!1974128))

(assert (=> b!6290553 d!1974130))

(assert (=> bm!532613 d!1974138))

(declare-fun d!1974712 () Bool)

(declare-fun res!2594882 () Bool)

(declare-fun e!3825995 () Bool)

(assert (=> d!1974712 (=> res!2594882 e!3825995)))

(assert (=> d!1974712 (= res!2594882 ((_ is Nil!64816) (t!378502 zl!343)))))

(assert (=> d!1974712 (= (forall!15363 (t!378502 zl!343) lambda!345592) e!3825995)))

(declare-fun b!6292163 () Bool)

(declare-fun e!3825996 () Bool)

(assert (=> b!6292163 (= e!3825995 e!3825996)))

(declare-fun res!2594883 () Bool)

(assert (=> b!6292163 (=> (not res!2594883) (not e!3825996))))

(assert (=> b!6292163 (= res!2594883 (dynLambda!25650 lambda!345592 (h!71264 (t!378502 zl!343))))))

(declare-fun b!6292164 () Bool)

(assert (=> b!6292164 (= e!3825996 (forall!15363 (t!378502 (t!378502 zl!343)) lambda!345592))))

(assert (= (and d!1974712 (not res!2594882)) b!6292163))

(assert (= (and b!6292163 res!2594883) b!6292164))

(declare-fun b_lambda!239393 () Bool)

(assert (=> (not b_lambda!239393) (not b!6292163)))

(declare-fun m!7112782 () Bool)

(assert (=> b!6292163 m!7112782))

(declare-fun m!7112784 () Bool)

(assert (=> b!6292164 m!7112784))

(assert (=> b!6290786 d!1974712))

(declare-fun bs!1573224 () Bool)

(declare-fun b!6292165 () Bool)

(assert (= bs!1573224 (and b!6292165 d!1974368)))

(declare-fun lambda!345696 () Int)

(assert (=> bs!1573224 (not (= lambda!345696 lambda!345638))))

(declare-fun bs!1573225 () Bool)

(assert (= bs!1573225 (and b!6292165 b!6291134)))

(declare-fun lt!2357398 () Int)

(assert (=> bs!1573225 (= (= lt!2357398 lt!2357313) (= lambda!345696 lambda!345604))))

(declare-fun bs!1573226 () Bool)

(assert (= bs!1573226 (and b!6292165 d!1973998)))

(assert (=> bs!1573226 (not (= lambda!345696 lambda!345571))))

(declare-fun bs!1573227 () Bool)

(assert (= bs!1573227 (and b!6292165 d!1974034)))

(assert (=> bs!1573227 (not (= lambda!345696 lambda!345577))))

(declare-fun bs!1573228 () Bool)

(assert (= bs!1573228 (and b!6292165 d!1974314)))

(assert (=> bs!1573228 (not (= lambda!345696 lambda!345623))))

(declare-fun bs!1573229 () Bool)

(assert (= bs!1573229 (and b!6292165 d!1974628)))

(assert (=> bs!1573229 (not (= lambda!345696 lambda!345685))))

(declare-fun bs!1573230 () Bool)

(assert (= bs!1573230 (and b!6292165 d!1973900)))

(assert (=> bs!1573230 (not (= lambda!345696 lambda!345542))))

(declare-fun bs!1573231 () Bool)

(assert (= bs!1573231 (and b!6292165 d!1974050)))

(assert (=> bs!1573231 (not (= lambda!345696 lambda!345596))))

(declare-fun bs!1573232 () Bool)

(assert (= bs!1573232 (and b!6292165 d!1974380)))

(assert (=> bs!1573232 (not (= lambda!345696 lambda!345640))))

(declare-fun bs!1573233 () Bool)

(assert (= bs!1573233 (and b!6292165 d!1974004)))

(assert (=> bs!1573233 (not (= lambda!345696 lambda!345572))))

(declare-fun bs!1573234 () Bool)

(assert (= bs!1573234 (and b!6292165 b!6291136)))

(assert (=> bs!1573234 (= (= lt!2357398 lt!2357312) (= lambda!345696 lambda!345605))))

(declare-fun bs!1573235 () Bool)

(assert (= bs!1573235 (and b!6292165 d!1973910)))

(assert (=> bs!1573235 (not (= lambda!345696 lambda!345546))))

(declare-fun bs!1573236 () Bool)

(assert (= bs!1573236 (and b!6292165 d!1974352)))

(assert (=> bs!1573236 (not (= lambda!345696 lambda!345634))))

(declare-fun bs!1573237 () Bool)

(assert (= bs!1573237 (and b!6292165 d!1974090)))

(assert (=> bs!1573237 (not (= lambda!345696 lambda!345599))))

(declare-fun bs!1573238 () Bool)

(assert (= bs!1573238 (and b!6292165 d!1974056)))

(assert (=> bs!1573238 (not (= lambda!345696 lambda!345597))))

(assert (=> b!6292165 true))

(declare-fun bs!1573239 () Bool)

(declare-fun b!6292167 () Bool)

(assert (= bs!1573239 (and b!6292167 d!1974368)))

(declare-fun lambda!345697 () Int)

(assert (=> bs!1573239 (not (= lambda!345697 lambda!345638))))

(declare-fun bs!1573240 () Bool)

(assert (= bs!1573240 (and b!6292167 b!6291134)))

(declare-fun lt!2357397 () Int)

(assert (=> bs!1573240 (= (= lt!2357397 lt!2357313) (= lambda!345697 lambda!345604))))

(declare-fun bs!1573241 () Bool)

(assert (= bs!1573241 (and b!6292167 d!1973998)))

(assert (=> bs!1573241 (not (= lambda!345697 lambda!345571))))

(declare-fun bs!1573242 () Bool)

(assert (= bs!1573242 (and b!6292167 d!1974034)))

(assert (=> bs!1573242 (not (= lambda!345697 lambda!345577))))

(declare-fun bs!1573243 () Bool)

(assert (= bs!1573243 (and b!6292167 d!1974314)))

(assert (=> bs!1573243 (not (= lambda!345697 lambda!345623))))

(declare-fun bs!1573244 () Bool)

(assert (= bs!1573244 (and b!6292167 b!6292165)))

(assert (=> bs!1573244 (= (= lt!2357397 lt!2357398) (= lambda!345697 lambda!345696))))

(declare-fun bs!1573245 () Bool)

(assert (= bs!1573245 (and b!6292167 d!1974628)))

(assert (=> bs!1573245 (not (= lambda!345697 lambda!345685))))

(declare-fun bs!1573246 () Bool)

(assert (= bs!1573246 (and b!6292167 d!1973900)))

(assert (=> bs!1573246 (not (= lambda!345697 lambda!345542))))

(declare-fun bs!1573247 () Bool)

(assert (= bs!1573247 (and b!6292167 d!1974050)))

(assert (=> bs!1573247 (not (= lambda!345697 lambda!345596))))

(declare-fun bs!1573248 () Bool)

(assert (= bs!1573248 (and b!6292167 d!1974380)))

(assert (=> bs!1573248 (not (= lambda!345697 lambda!345640))))

(declare-fun bs!1573249 () Bool)

(assert (= bs!1573249 (and b!6292167 d!1974004)))

(assert (=> bs!1573249 (not (= lambda!345697 lambda!345572))))

(declare-fun bs!1573250 () Bool)

(assert (= bs!1573250 (and b!6292167 b!6291136)))

(assert (=> bs!1573250 (= (= lt!2357397 lt!2357312) (= lambda!345697 lambda!345605))))

(declare-fun bs!1573251 () Bool)

(assert (= bs!1573251 (and b!6292167 d!1973910)))

(assert (=> bs!1573251 (not (= lambda!345697 lambda!345546))))

(declare-fun bs!1573252 () Bool)

(assert (= bs!1573252 (and b!6292167 d!1974352)))

(assert (=> bs!1573252 (not (= lambda!345697 lambda!345634))))

(declare-fun bs!1573253 () Bool)

(assert (= bs!1573253 (and b!6292167 d!1974090)))

(assert (=> bs!1573253 (not (= lambda!345697 lambda!345599))))

(declare-fun bs!1573254 () Bool)

(assert (= bs!1573254 (and b!6292167 d!1974056)))

(assert (=> bs!1573254 (not (= lambda!345697 lambda!345597))))

(assert (=> b!6292167 true))

(declare-fun d!1974714 () Bool)

(declare-fun e!3825998 () Bool)

(assert (=> d!1974714 e!3825998))

(declare-fun res!2594884 () Bool)

(assert (=> d!1974714 (=> (not res!2594884) (not e!3825998))))

(assert (=> d!1974714 (= res!2594884 (>= lt!2357397 0))))

(declare-fun e!3825997 () Int)

(assert (=> d!1974714 (= lt!2357397 e!3825997)))

(declare-fun c!1141984 () Bool)

(assert (=> d!1974714 (= c!1141984 ((_ is Cons!64815) (exprs!6097 (h!71264 zl!343))))))

(assert (=> d!1974714 (= (contextDepth!229 (h!71264 zl!343)) lt!2357397)))

(assert (=> b!6292165 (= e!3825997 lt!2357398)))

(assert (=> b!6292165 (= lt!2357398 (maxBigInt!0 (regexDepth!315 (h!71263 (exprs!6097 (h!71264 zl!343)))) (contextDepth!229 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(declare-fun lt!2357396 () Unit!158183)

(assert (=> b!6292165 (= lt!2357396 (lemmaForallRegexDepthBiggerThanTransitive!105 (t!378501 (exprs!6097 (h!71264 zl!343))) lt!2357398 (contextDepth!229 (Context!11195 (t!378501 (exprs!6097 (h!71264 zl!343)))))))))

(assert (=> b!6292165 (forall!15362 (t!378501 (exprs!6097 (h!71264 zl!343))) lambda!345696)))

(declare-fun lt!2357399 () Unit!158183)

(assert (=> b!6292165 (= lt!2357399 lt!2357396)))

(declare-fun b!6292166 () Bool)

(assert (=> b!6292166 (= e!3825997 0)))

(assert (=> b!6292167 (= e!3825998 (forall!15362 (exprs!6097 (h!71264 zl!343)) lambda!345697))))

(assert (= (and d!1974714 c!1141984) b!6292165))

(assert (= (and d!1974714 (not c!1141984)) b!6292166))

(assert (= (and d!1974714 res!2594884) b!6292167))

(declare-fun m!7112794 () Bool)

(assert (=> b!6292165 m!7112794))

(declare-fun m!7112796 () Bool)

(assert (=> b!6292165 m!7112796))

(declare-fun m!7112798 () Bool)

(assert (=> b!6292165 m!7112798))

(assert (=> b!6292165 m!7112796))

(declare-fun m!7112800 () Bool)

(assert (=> b!6292165 m!7112800))

(assert (=> b!6292165 m!7112798))

(assert (=> b!6292165 m!7112796))

(declare-fun m!7112802 () Bool)

(assert (=> b!6292165 m!7112802))

(declare-fun m!7112804 () Bool)

(assert (=> b!6292167 m!7112804))

(assert (=> b!6290786 d!1974714))

(declare-fun bs!1573265 () Bool)

(declare-fun b!6292178 () Bool)

(assert (= bs!1573265 (and b!6292178 b!6290781)))

(declare-fun lambda!345699 () Int)

(assert (=> bs!1573265 (= lambda!345699 lambda!345588)))

(declare-fun bs!1573266 () Bool)

(assert (= bs!1573266 (and b!6292178 b!6290786)))

(assert (=> bs!1573266 (= lambda!345699 lambda!345591)))

(declare-fun bs!1573267 () Bool)

(assert (= bs!1573267 (and b!6292178 b!6291142)))

(assert (=> bs!1573267 (= lambda!345699 lambda!345609)))

(declare-fun bs!1573268 () Bool)

(assert (= bs!1573268 (and b!6292178 d!1974428)))

(declare-fun lambda!345700 () Int)

(assert (=> bs!1573268 (not (= lambda!345700 lambda!345659))))

(declare-fun bs!1573269 () Bool)

(assert (= bs!1573269 (and b!6292178 d!1974166)))

(assert (=> bs!1573269 (not (= lambda!345700 lambda!345614))))

(declare-fun bs!1573270 () Bool)

(assert (= bs!1573270 (and b!6292178 d!1974360)))

(assert (=> bs!1573270 (not (= lambda!345700 lambda!345637))))

(declare-fun bs!1573271 () Bool)

(assert (= bs!1573271 (and b!6292178 d!1974158)))

(assert (=> bs!1573271 (not (= lambda!345700 lambda!345608))))

(declare-fun bs!1573272 () Bool)

(assert (= bs!1573272 (and b!6292178 b!6290783)))

(declare-fun lt!2357405 () Int)

(assert (=> bs!1573272 (= (= lt!2357405 lt!2357271) (= lambda!345700 lambda!345590))))

(declare-fun bs!1573273 () Bool)

(assert (= bs!1573273 (and b!6292178 d!1974354)))

(assert (=> bs!1573273 (not (= lambda!345700 lambda!345635))))

(declare-fun bs!1573274 () Bool)

(assert (= bs!1573274 (and b!6292178 d!1974678)))

(assert (=> bs!1573274 (not (= lambda!345700 lambda!345690))))

(declare-fun bs!1573275 () Bool)

(assert (= bs!1573275 (and b!6292178 d!1974486)))

(assert (=> bs!1573275 (not (= lambda!345700 lambda!345669))))

(declare-fun bs!1573276 () Bool)

(assert (= bs!1573276 (and b!6292178 b!6291144)))

(assert (=> bs!1573276 (= (= lt!2357405 lt!2357318) (= lambda!345700 lambda!345611))))

(assert (=> bs!1573267 (= (= lt!2357405 lt!2357321) (= lambda!345700 lambda!345610))))

(declare-fun bs!1573277 () Bool)

(assert (= bs!1573277 (and b!6292178 d!1974372)))

(assert (=> bs!1573277 (not (= lambda!345700 lambda!345639))))

(declare-fun bs!1573278 () Bool)

(assert (= bs!1573278 (and b!6292178 d!1974630)))

(assert (=> bs!1573278 (not (= lambda!345700 lambda!345686))))

(declare-fun bs!1573279 () Bool)

(assert (= bs!1573279 (and b!6292178 d!1974458)))

(assert (=> bs!1573279 (not (= lambda!345700 lambda!345664))))

(declare-fun bs!1573280 () Bool)

(assert (= bs!1573280 (and b!6292178 d!1974456)))

(assert (=> bs!1573280 (not (= lambda!345700 lambda!345663))))

(declare-fun bs!1573281 () Bool)

(assert (= bs!1573281 (and b!6292178 d!1974680)))

(assert (=> bs!1573281 (not (= lambda!345700 lambda!345691))))

(assert (=> bs!1573266 (= (= lt!2357405 lt!2357278) (= lambda!345700 lambda!345592))))

(declare-fun bs!1573282 () Bool)

(assert (= bs!1573282 (and b!6292178 d!1974208)))

(assert (=> bs!1573282 (not (= lambda!345700 lambda!345619))))

(declare-fun bs!1573283 () Bool)

(assert (= bs!1573283 (and b!6292178 b!6290788)))

(assert (=> bs!1573283 (= (= lt!2357405 lt!2357275) (= lambda!345700 lambda!345593))))

(assert (=> bs!1573265 (= (= lt!2357405 lt!2357274) (= lambda!345700 lambda!345589))))

(assert (=> b!6292178 true))

(declare-fun bs!1573285 () Bool)

(declare-fun b!6292180 () Bool)

(assert (= bs!1573285 (and b!6292180 d!1974428)))

(declare-fun lambda!345701 () Int)

(assert (=> bs!1573285 (not (= lambda!345701 lambda!345659))))

(declare-fun bs!1573286 () Bool)

(assert (= bs!1573286 (and b!6292180 d!1974166)))

(assert (=> bs!1573286 (not (= lambda!345701 lambda!345614))))

(declare-fun bs!1573287 () Bool)

(assert (= bs!1573287 (and b!6292180 d!1974360)))

(assert (=> bs!1573287 (not (= lambda!345701 lambda!345637))))

(declare-fun bs!1573288 () Bool)

(assert (= bs!1573288 (and b!6292180 d!1974158)))

(assert (=> bs!1573288 (not (= lambda!345701 lambda!345608))))

(declare-fun bs!1573289 () Bool)

(assert (= bs!1573289 (and b!6292180 b!6290783)))

(declare-fun lt!2357402 () Int)

(assert (=> bs!1573289 (= (= lt!2357402 lt!2357271) (= lambda!345701 lambda!345590))))

(declare-fun bs!1573290 () Bool)

(assert (= bs!1573290 (and b!6292180 d!1974354)))

(assert (=> bs!1573290 (not (= lambda!345701 lambda!345635))))

(declare-fun bs!1573291 () Bool)

(assert (= bs!1573291 (and b!6292180 d!1974678)))

(assert (=> bs!1573291 (not (= lambda!345701 lambda!345690))))

(declare-fun bs!1573292 () Bool)

(assert (= bs!1573292 (and b!6292180 d!1974486)))

(assert (=> bs!1573292 (not (= lambda!345701 lambda!345669))))

(declare-fun bs!1573293 () Bool)

(assert (= bs!1573293 (and b!6292180 b!6291144)))

(assert (=> bs!1573293 (= (= lt!2357402 lt!2357318) (= lambda!345701 lambda!345611))))

(declare-fun bs!1573294 () Bool)

(assert (= bs!1573294 (and b!6292180 b!6291142)))

(assert (=> bs!1573294 (= (= lt!2357402 lt!2357321) (= lambda!345701 lambda!345610))))

(declare-fun bs!1573295 () Bool)

(assert (= bs!1573295 (and b!6292180 b!6292178)))

(assert (=> bs!1573295 (= (= lt!2357402 lt!2357405) (= lambda!345701 lambda!345700))))

(declare-fun bs!1573296 () Bool)

(assert (= bs!1573296 (and b!6292180 d!1974372)))

(assert (=> bs!1573296 (not (= lambda!345701 lambda!345639))))

(declare-fun bs!1573297 () Bool)

(assert (= bs!1573297 (and b!6292180 d!1974630)))

(assert (=> bs!1573297 (not (= lambda!345701 lambda!345686))))

(declare-fun bs!1573298 () Bool)

(assert (= bs!1573298 (and b!6292180 d!1974458)))

(assert (=> bs!1573298 (not (= lambda!345701 lambda!345664))))

(declare-fun bs!1573299 () Bool)

(assert (= bs!1573299 (and b!6292180 d!1974456)))

(assert (=> bs!1573299 (not (= lambda!345701 lambda!345663))))

(declare-fun bs!1573300 () Bool)

(assert (= bs!1573300 (and b!6292180 d!1974680)))

(assert (=> bs!1573300 (not (= lambda!345701 lambda!345691))))

(declare-fun bs!1573301 () Bool)

(assert (= bs!1573301 (and b!6292180 b!6290786)))

(assert (=> bs!1573301 (= (= lt!2357402 lt!2357278) (= lambda!345701 lambda!345592))))

(declare-fun bs!1573302 () Bool)

(assert (= bs!1573302 (and b!6292180 d!1974208)))

(assert (=> bs!1573302 (not (= lambda!345701 lambda!345619))))

(declare-fun bs!1573303 () Bool)

(assert (= bs!1573303 (and b!6292180 b!6290788)))

(assert (=> bs!1573303 (= (= lt!2357402 lt!2357275) (= lambda!345701 lambda!345593))))

(declare-fun bs!1573304 () Bool)

(assert (= bs!1573304 (and b!6292180 b!6290781)))

(assert (=> bs!1573304 (= (= lt!2357402 lt!2357274) (= lambda!345701 lambda!345589))))

(assert (=> b!6292180 true))

(declare-fun d!1974720 () Bool)

(declare-fun e!3826004 () Bool)

(assert (=> d!1974720 e!3826004))

(declare-fun res!2594885 () Bool)

(assert (=> d!1974720 (=> (not res!2594885) (not e!3826004))))

(assert (=> d!1974720 (= res!2594885 (>= lt!2357402 0))))

(declare-fun e!3826005 () Int)

(assert (=> d!1974720 (= lt!2357402 e!3826005)))

(declare-fun c!1141990 () Bool)

(assert (=> d!1974720 (= c!1141990 ((_ is Cons!64816) (t!378502 zl!343)))))

(assert (=> d!1974720 (= (zipperDepth!338 (t!378502 zl!343)) lt!2357402)))

(assert (=> b!6292178 (= e!3826005 lt!2357405)))

(assert (=> b!6292178 (= lt!2357405 (maxBigInt!0 (contextDepth!229 (h!71264 (t!378502 zl!343))) (zipperDepth!338 (t!378502 (t!378502 zl!343)))))))

(declare-fun lt!2357404 () Unit!158183)

(assert (=> b!6292178 (= lt!2357404 (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 (t!378502 zl!343)) lt!2357405 (zipperDepth!338 (t!378502 (t!378502 zl!343))) lambda!345699))))

(assert (=> b!6292178 (forall!15363 (t!378502 (t!378502 zl!343)) lambda!345700)))

(declare-fun lt!2357403 () Unit!158183)

(assert (=> b!6292178 (= lt!2357403 lt!2357404)))

(declare-fun b!6292179 () Bool)

(assert (=> b!6292179 (= e!3826005 0)))

(assert (=> b!6292180 (= e!3826004 (forall!15363 (t!378502 zl!343) lambda!345701))))

(assert (= (and d!1974720 c!1141990) b!6292178))

(assert (= (and d!1974720 (not c!1141990)) b!6292179))

(assert (= (and d!1974720 res!2594885) b!6292180))

(declare-fun m!7112826 () Bool)

(assert (=> b!6292178 m!7112826))

(declare-fun m!7112828 () Bool)

(assert (=> b!6292178 m!7112828))

(declare-fun m!7112830 () Bool)

(assert (=> b!6292178 m!7112830))

(assert (=> b!6292178 m!7112828))

(assert (=> b!6292178 m!7112826))

(assert (=> b!6292178 m!7112828))

(declare-fun m!7112832 () Bool)

(assert (=> b!6292178 m!7112832))

(declare-fun m!7112834 () Bool)

(assert (=> b!6292178 m!7112834))

(declare-fun m!7112836 () Bool)

(assert (=> b!6292180 m!7112836))

(assert (=> b!6290786 d!1974720))

(declare-fun d!1974732 () Bool)

(assert (=> d!1974732 (= (maxBigInt!0 (contextDepth!229 (h!71264 zl!343)) (zipperDepth!338 (t!378502 zl!343))) (ite (>= (contextDepth!229 (h!71264 zl!343)) (zipperDepth!338 (t!378502 zl!343))) (contextDepth!229 (h!71264 zl!343)) (zipperDepth!338 (t!378502 zl!343))))))

(assert (=> b!6290786 d!1974732))

(declare-fun bs!1573305 () Bool)

(declare-fun d!1974734 () Bool)

(assert (= bs!1573305 (and d!1974734 d!1974428)))

(declare-fun lambda!345702 () Int)

(assert (=> bs!1573305 (not (= lambda!345702 lambda!345659))))

(declare-fun bs!1573306 () Bool)

(assert (= bs!1573306 (and d!1974734 d!1974166)))

(assert (=> bs!1573306 (not (= lambda!345702 lambda!345614))))

(declare-fun bs!1573307 () Bool)

(assert (= bs!1573307 (and d!1974734 d!1974360)))

(assert (=> bs!1573307 (not (= lambda!345702 lambda!345637))))

(declare-fun bs!1573308 () Bool)

(assert (= bs!1573308 (and d!1974734 d!1974158)))

(assert (=> bs!1573308 (= (and (= lt!2357278 lt!2357274) (= lambda!345591 lambda!345588)) (= lambda!345702 lambda!345608))))

(declare-fun bs!1573309 () Bool)

(assert (= bs!1573309 (and d!1974734 b!6290783)))

(assert (=> bs!1573309 (not (= lambda!345702 lambda!345590))))

(declare-fun bs!1573310 () Bool)

(assert (= bs!1573310 (and d!1974734 d!1974354)))

(assert (=> bs!1573310 (not (= lambda!345702 lambda!345635))))

(declare-fun bs!1573311 () Bool)

(assert (= bs!1573311 (and d!1974734 d!1974678)))

(assert (=> bs!1573311 (not (= lambda!345702 lambda!345690))))

(declare-fun bs!1573312 () Bool)

(assert (= bs!1573312 (and d!1974734 d!1974486)))

(assert (=> bs!1573312 (not (= lambda!345702 lambda!345669))))

(declare-fun bs!1573313 () Bool)

(assert (= bs!1573313 (and d!1974734 b!6292180)))

(assert (=> bs!1573313 (not (= lambda!345702 lambda!345701))))

(declare-fun bs!1573314 () Bool)

(assert (= bs!1573314 (and d!1974734 b!6291144)))

(assert (=> bs!1573314 (not (= lambda!345702 lambda!345611))))

(declare-fun bs!1573315 () Bool)

(assert (= bs!1573315 (and d!1974734 b!6291142)))

(assert (=> bs!1573315 (not (= lambda!345702 lambda!345610))))

(declare-fun bs!1573316 () Bool)

(assert (= bs!1573316 (and d!1974734 b!6292178)))

(assert (=> bs!1573316 (not (= lambda!345702 lambda!345700))))

(declare-fun bs!1573317 () Bool)

(assert (= bs!1573317 (and d!1974734 d!1974372)))

(assert (=> bs!1573317 (not (= lambda!345702 lambda!345639))))

(declare-fun bs!1573318 () Bool)

(assert (= bs!1573318 (and d!1974734 d!1974630)))

(assert (=> bs!1573318 (not (= lambda!345702 lambda!345686))))

(declare-fun bs!1573320 () Bool)

(assert (= bs!1573320 (and d!1974734 d!1974458)))

(assert (=> bs!1573320 (not (= lambda!345702 lambda!345664))))

(declare-fun bs!1573321 () Bool)

(assert (= bs!1573321 (and d!1974734 d!1974456)))

(assert (=> bs!1573321 (not (= lambda!345702 lambda!345663))))

(declare-fun bs!1573322 () Bool)

(assert (= bs!1573322 (and d!1974734 d!1974680)))

(assert (=> bs!1573322 (not (= lambda!345702 lambda!345691))))

(declare-fun bs!1573323 () Bool)

(assert (= bs!1573323 (and d!1974734 b!6290786)))

(assert (=> bs!1573323 (not (= lambda!345702 lambda!345592))))

(declare-fun bs!1573324 () Bool)

(assert (= bs!1573324 (and d!1974734 d!1974208)))

(assert (=> bs!1573324 (not (= lambda!345702 lambda!345619))))

(declare-fun bs!1573325 () Bool)

(assert (= bs!1573325 (and d!1974734 b!6290788)))

(assert (=> bs!1573325 (not (= lambda!345702 lambda!345593))))

(declare-fun bs!1573326 () Bool)

(assert (= bs!1573326 (and d!1974734 b!6290781)))

(assert (=> bs!1573326 (not (= lambda!345702 lambda!345589))))

(assert (=> d!1974734 true))

(assert (=> d!1974734 true))

(assert (=> d!1974734 (< (dynLambda!25648 order!27477 lambda!345591) (dynLambda!25649 order!27479 lambda!345702))))

(assert (=> d!1974734 (forall!15363 (t!378502 zl!343) lambda!345702)))

(declare-fun lt!2357407 () Unit!158183)

(assert (=> d!1974734 (= lt!2357407 (choose!46748 (t!378502 zl!343) lt!2357278 (zipperDepth!338 (t!378502 zl!343)) lambda!345591))))

(assert (=> d!1974734 (>= lt!2357278 (zipperDepth!338 (t!378502 zl!343)))))

(assert (=> d!1974734 (= (lemmaForallContextDepthBiggerThanTransitive!213 (t!378502 zl!343) lt!2357278 (zipperDepth!338 (t!378502 zl!343)) lambda!345591) lt!2357407)))

(declare-fun bs!1573327 () Bool)

(assert (= bs!1573327 d!1974734))

(declare-fun m!7112842 () Bool)

(assert (=> bs!1573327 m!7112842))

(assert (=> bs!1573327 m!7111400))

(declare-fun m!7112846 () Bool)

(assert (=> bs!1573327 m!7112846))

(assert (=> b!6290786 d!1974734))

(declare-fun d!1974740 () Bool)

(declare-fun c!1142000 () Bool)

(assert (=> d!1974740 (= c!1142000 (isEmpty!36872 (t!378500 s!2326)))))

(declare-fun e!3826020 () Bool)

(assert (=> d!1974740 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357086) (t!378500 s!2326)) e!3826020)))

(declare-fun b!6292208 () Bool)

(assert (=> b!6292208 (= e!3826020 (nullableZipper!1983 ((_ map or) lt!2357087 lt!2357086)))))

(declare-fun b!6292209 () Bool)

(assert (=> b!6292209 (= e!3826020 (matchZipper!2225 (derivationStepZipper!2179 ((_ map or) lt!2357087 lt!2357086) (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))))))

(assert (= (and d!1974740 c!1142000) b!6292208))

(assert (= (and d!1974740 (not c!1142000)) b!6292209))

(assert (=> d!1974740 m!7111104))

(declare-fun m!7112848 () Bool)

(assert (=> b!6292208 m!7112848))

(assert (=> b!6292209 m!7111108))

(assert (=> b!6292209 m!7111108))

(declare-fun m!7112850 () Bool)

(assert (=> b!6292209 m!7112850))

(assert (=> b!6292209 m!7111112))

(assert (=> b!6292209 m!7112850))

(assert (=> b!6292209 m!7111112))

(declare-fun m!7112852 () Bool)

(assert (=> b!6292209 m!7112852))

(assert (=> d!1974104 d!1974740))

(assert (=> d!1974104 d!1974100))

(declare-fun d!1974742 () Bool)

(declare-fun e!3826021 () Bool)

(assert (=> d!1974742 (= (matchZipper!2225 ((_ map or) lt!2357087 lt!2357086) (t!378500 s!2326)) e!3826021)))

(declare-fun res!2594895 () Bool)

(assert (=> d!1974742 (=> res!2594895 e!3826021)))

(assert (=> d!1974742 (= res!2594895 (matchZipper!2225 lt!2357087 (t!378500 s!2326)))))

(assert (=> d!1974742 true))

(declare-fun _$48!2053 () Unit!158183)

(assert (=> d!1974742 (= (choose!46735 lt!2357087 lt!2357086 (t!378500 s!2326)) _$48!2053)))

(declare-fun b!6292210 () Bool)

(assert (=> b!6292210 (= e!3826021 (matchZipper!2225 lt!2357086 (t!378500 s!2326)))))

(assert (= (and d!1974742 (not res!2594895)) b!6292210))

(assert (=> d!1974742 m!7111554))

(assert (=> d!1974742 m!7110450))

(assert (=> b!6292210 m!7110346))

(assert (=> d!1974104 d!1974742))

(assert (=> d!1974030 d!1973994))

(assert (=> d!1974030 d!1974016))

(declare-fun d!1974746 () Bool)

(assert (=> d!1974746 (= (matchR!8396 lt!2357070 s!2326) (matchZipper!2225 lt!2357069 s!2326))))

(assert (=> d!1974746 true))

(declare-fun _$44!1624 () Unit!158183)

(assert (=> d!1974746 (= (choose!46743 lt!2357069 (Cons!64816 lt!2357094 Nil!64816) lt!2357070 s!2326) _$44!1624)))

(declare-fun bs!1573335 () Bool)

(assert (= bs!1573335 d!1974746))

(assert (=> bs!1573335 m!7110402))

(assert (=> bs!1573335 m!7110404))

(assert (=> d!1974030 d!1974746))

(assert (=> d!1974030 d!1974190))

(declare-fun b!6292220 () Bool)

(declare-fun e!3826035 () Bool)

(assert (=> b!6292220 (= e!3826035 (nullable!6206 (derivativeStep!4922 lt!2357070 (head!12927 s!2326))))))

(declare-fun b!6292221 () Bool)

(declare-fun res!2594905 () Bool)

(declare-fun e!3826032 () Bool)

(assert (=> b!6292221 (=> res!2594905 e!3826032)))

(declare-fun e!3826031 () Bool)

(assert (=> b!6292221 (= res!2594905 e!3826031)))

(declare-fun res!2594908 () Bool)

(assert (=> b!6292221 (=> (not res!2594908) (not e!3826031))))

(declare-fun lt!2357408 () Bool)

(assert (=> b!6292221 (= res!2594908 lt!2357408)))

(declare-fun b!6292222 () Bool)

(assert (=> b!6292222 (= e!3826031 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 lt!2357070 (head!12927 s!2326)))))))

(declare-fun b!6292223 () Bool)

(declare-fun e!3826033 () Bool)

(assert (=> b!6292223 (= e!3826033 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 lt!2357070 (head!12927 s!2326))))))))

(declare-fun d!1974748 () Bool)

(declare-fun e!3826034 () Bool)

(assert (=> d!1974748 e!3826034))

(declare-fun c!1142003 () Bool)

(assert (=> d!1974748 (= c!1142003 ((_ is EmptyExpr!16213) (derivativeStep!4922 lt!2357070 (head!12927 s!2326))))))

(assert (=> d!1974748 (= lt!2357408 e!3826035)))

(declare-fun c!1142004 () Bool)

(assert (=> d!1974748 (= c!1142004 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974748 (validRegex!7949 (derivativeStep!4922 lt!2357070 (head!12927 s!2326)))))

(assert (=> d!1974748 (= (matchR!8396 (derivativeStep!4922 lt!2357070 (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357408)))

(declare-fun b!6292224 () Bool)

(declare-fun e!3826030 () Bool)

(assert (=> b!6292224 (= e!3826030 (not lt!2357408))))

(declare-fun b!6292225 () Bool)

(declare-fun e!3826029 () Bool)

(assert (=> b!6292225 (= e!3826032 e!3826029)))

(declare-fun res!2594907 () Bool)

(assert (=> b!6292225 (=> (not res!2594907) (not e!3826029))))

(assert (=> b!6292225 (= res!2594907 (not lt!2357408))))

(declare-fun bm!532922 () Bool)

(declare-fun call!532927 () Bool)

(assert (=> bm!532922 (= call!532927 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6292226 () Bool)

(assert (=> b!6292226 (= e!3826034 (= lt!2357408 call!532927))))

(declare-fun b!6292227 () Bool)

(assert (=> b!6292227 (= e!3826034 e!3826030)))

(declare-fun c!1142005 () Bool)

(assert (=> b!6292227 (= c!1142005 ((_ is EmptyLang!16213) (derivativeStep!4922 lt!2357070 (head!12927 s!2326))))))

(declare-fun b!6292228 () Bool)

(assert (=> b!6292228 (= e!3826029 e!3826033)))

(declare-fun res!2594906 () Bool)

(assert (=> b!6292228 (=> res!2594906 e!3826033)))

(assert (=> b!6292228 (= res!2594906 call!532927)))

(declare-fun b!6292229 () Bool)

(declare-fun res!2594902 () Bool)

(assert (=> b!6292229 (=> (not res!2594902) (not e!3826031))))

(assert (=> b!6292229 (= res!2594902 (not call!532927))))

(declare-fun b!6292230 () Bool)

(declare-fun res!2594901 () Bool)

(assert (=> b!6292230 (=> res!2594901 e!3826032)))

(assert (=> b!6292230 (= res!2594901 (not ((_ is ElementMatch!16213) (derivativeStep!4922 lt!2357070 (head!12927 s!2326)))))))

(assert (=> b!6292230 (= e!3826030 e!3826032)))

(declare-fun b!6292231 () Bool)

(assert (=> b!6292231 (= e!3826035 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 lt!2357070 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6292232 () Bool)

(declare-fun res!2594903 () Bool)

(assert (=> b!6292232 (=> (not res!2594903) (not e!3826031))))

(assert (=> b!6292232 (= res!2594903 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6292233 () Bool)

(declare-fun res!2594904 () Bool)

(assert (=> b!6292233 (=> res!2594904 e!3826033)))

(assert (=> b!6292233 (= res!2594904 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974748 c!1142004) b!6292220))

(assert (= (and d!1974748 (not c!1142004)) b!6292231))

(assert (= (and d!1974748 c!1142003) b!6292226))

(assert (= (and d!1974748 (not c!1142003)) b!6292227))

(assert (= (and b!6292227 c!1142005) b!6292224))

(assert (= (and b!6292227 (not c!1142005)) b!6292230))

(assert (= (and b!6292230 (not res!2594901)) b!6292221))

(assert (= (and b!6292221 res!2594908) b!6292229))

(assert (= (and b!6292229 res!2594902) b!6292232))

(assert (= (and b!6292232 res!2594903) b!6292222))

(assert (= (and b!6292221 (not res!2594905)) b!6292225))

(assert (= (and b!6292225 res!2594907) b!6292228))

(assert (= (and b!6292228 (not res!2594906)) b!6292233))

(assert (= (and b!6292233 (not res!2594904)) b!6292223))

(assert (= (or b!6292226 b!6292228 b!6292229) bm!532922))

(assert (=> bm!532922 m!7111086))

(assert (=> bm!532922 m!7111090))

(assert (=> b!6292231 m!7111086))

(assert (=> b!6292231 m!7111620))

(assert (=> b!6292231 m!7111208))

(assert (=> b!6292231 m!7111620))

(declare-fun m!7112864 () Bool)

(assert (=> b!6292231 m!7112864))

(assert (=> b!6292231 m!7111086))

(assert (=> b!6292231 m!7111624))

(assert (=> b!6292231 m!7112864))

(assert (=> b!6292231 m!7111624))

(declare-fun m!7112866 () Bool)

(assert (=> b!6292231 m!7112866))

(assert (=> b!6292223 m!7111086))

(assert (=> b!6292223 m!7111620))

(assert (=> b!6292233 m!7111086))

(assert (=> b!6292233 m!7111624))

(assert (=> b!6292233 m!7111624))

(assert (=> b!6292233 m!7111628))

(assert (=> b!6292220 m!7111208))

(declare-fun m!7112868 () Bool)

(assert (=> b!6292220 m!7112868))

(assert (=> b!6292222 m!7111086))

(assert (=> b!6292222 m!7111620))

(assert (=> b!6292232 m!7111086))

(assert (=> b!6292232 m!7111624))

(assert (=> b!6292232 m!7111624))

(assert (=> b!6292232 m!7111628))

(assert (=> d!1974748 m!7111086))

(assert (=> d!1974748 m!7111090))

(assert (=> d!1974748 m!7111208))

(declare-fun m!7112870 () Bool)

(assert (=> d!1974748 m!7112870))

(assert (=> b!6290662 d!1974748))

(declare-fun b!6292238 () Bool)

(declare-fun e!3826039 () Regex!16213)

(declare-fun e!3826042 () Regex!16213)

(assert (=> b!6292238 (= e!3826039 e!3826042)))

(declare-fun c!1142012 () Bool)

(assert (=> b!6292238 (= c!1142012 ((_ is Star!16213) lt!2357070))))

(declare-fun b!6292239 () Bool)

(declare-fun e!3826040 () Regex!16213)

(declare-fun call!532931 () Regex!16213)

(assert (=> b!6292239 (= e!3826040 (Union!16213 (Concat!25058 call!532931 (regTwo!32938 lt!2357070)) EmptyLang!16213))))

(declare-fun b!6292240 () Bool)

(declare-fun call!532929 () Regex!16213)

(assert (=> b!6292240 (= e!3826042 (Concat!25058 call!532929 lt!2357070))))

(declare-fun b!6292241 () Bool)

(declare-fun e!3826038 () Regex!16213)

(assert (=> b!6292241 (= e!3826038 EmptyLang!16213)))

(declare-fun bm!532923 () Bool)

(declare-fun c!1142009 () Bool)

(declare-fun call!532930 () Regex!16213)

(assert (=> bm!532923 (= call!532930 (derivativeStep!4922 (ite c!1142009 (regTwo!32939 lt!2357070) (regOne!32938 lt!2357070)) (head!12927 s!2326)))))

(declare-fun b!6292242 () Bool)

(declare-fun call!532928 () Regex!16213)

(assert (=> b!6292242 (= e!3826039 (Union!16213 call!532928 call!532930))))

(declare-fun bm!532924 () Bool)

(assert (=> bm!532924 (= call!532929 call!532928)))

(declare-fun b!6292243 () Bool)

(declare-fun e!3826041 () Regex!16213)

(assert (=> b!6292243 (= e!3826041 (ite (= (head!12927 s!2326) (c!1141284 lt!2357070)) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6292244 () Bool)

(assert (=> b!6292244 (= e!3826038 e!3826041)))

(declare-fun c!1142008 () Bool)

(assert (=> b!6292244 (= c!1142008 ((_ is ElementMatch!16213) lt!2357070))))

(declare-fun c!1142010 () Bool)

(declare-fun bm!532925 () Bool)

(assert (=> bm!532925 (= call!532928 (derivativeStep!4922 (ite c!1142009 (regOne!32939 lt!2357070) (ite c!1142012 (reg!16542 lt!2357070) (ite c!1142010 (regTwo!32938 lt!2357070) (regOne!32938 lt!2357070)))) (head!12927 s!2326)))))

(declare-fun b!6292245 () Bool)

(assert (=> b!6292245 (= c!1142009 ((_ is Union!16213) lt!2357070))))

(assert (=> b!6292245 (= e!3826041 e!3826039)))

(declare-fun bm!532926 () Bool)

(assert (=> bm!532926 (= call!532931 call!532929)))

(declare-fun b!6292246 () Bool)

(assert (=> b!6292246 (= c!1142010 (nullable!6206 (regOne!32938 lt!2357070)))))

(assert (=> b!6292246 (= e!3826042 e!3826040)))

(declare-fun d!1974756 () Bool)

(declare-fun lt!2357409 () Regex!16213)

(assert (=> d!1974756 (validRegex!7949 lt!2357409)))

(assert (=> d!1974756 (= lt!2357409 e!3826038)))

(declare-fun c!1142011 () Bool)

(assert (=> d!1974756 (= c!1142011 (or ((_ is EmptyExpr!16213) lt!2357070) ((_ is EmptyLang!16213) lt!2357070)))))

(assert (=> d!1974756 (validRegex!7949 lt!2357070)))

(assert (=> d!1974756 (= (derivativeStep!4922 lt!2357070 (head!12927 s!2326)) lt!2357409)))

(declare-fun b!6292247 () Bool)

(assert (=> b!6292247 (= e!3826040 (Union!16213 (Concat!25058 call!532930 (regTwo!32938 lt!2357070)) call!532931))))

(assert (= (and d!1974756 c!1142011) b!6292241))

(assert (= (and d!1974756 (not c!1142011)) b!6292244))

(assert (= (and b!6292244 c!1142008) b!6292243))

(assert (= (and b!6292244 (not c!1142008)) b!6292245))

(assert (= (and b!6292245 c!1142009) b!6292242))

(assert (= (and b!6292245 (not c!1142009)) b!6292238))

(assert (= (and b!6292238 c!1142012) b!6292240))

(assert (= (and b!6292238 (not c!1142012)) b!6292246))

(assert (= (and b!6292246 c!1142010) b!6292247))

(assert (= (and b!6292246 (not c!1142010)) b!6292239))

(assert (= (or b!6292247 b!6292239) bm!532926))

(assert (= (or b!6292240 bm!532926) bm!532924))

(assert (= (or b!6292242 b!6292247) bm!532923))

(assert (= (or b!6292242 bm!532924) bm!532925))

(assert (=> bm!532923 m!7111082))

(declare-fun m!7112872 () Bool)

(assert (=> bm!532923 m!7112872))

(assert (=> bm!532925 m!7111082))

(declare-fun m!7112878 () Bool)

(assert (=> bm!532925 m!7112878))

(declare-fun m!7112880 () Bool)

(assert (=> b!6292246 m!7112880))

(declare-fun m!7112882 () Bool)

(assert (=> d!1974756 m!7112882))

(assert (=> d!1974756 m!7111214))

(assert (=> b!6290662 d!1974756))

(assert (=> b!6290662 d!1974146))

(assert (=> b!6290662 d!1974130))

(declare-fun d!1974760 () Bool)

(assert (=> d!1974760 (= (isDefined!12807 lt!2357258) (not (isEmpty!36874 lt!2357258)))))

(declare-fun bs!1573338 () Bool)

(assert (= bs!1573338 d!1974760))

(declare-fun m!7112886 () Bool)

(assert (=> bs!1573338 m!7112886))

(assert (=> b!6290766 d!1974760))

(declare-fun e!3826053 () Bool)

(declare-fun b!6292255 () Bool)

(assert (=> b!6292255 (= e!3826053 (nullable!6206 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326))))))

(declare-fun b!6292256 () Bool)

(declare-fun res!2594914 () Bool)

(declare-fun e!3826050 () Bool)

(assert (=> b!6292256 (=> res!2594914 e!3826050)))

(declare-fun e!3826049 () Bool)

(assert (=> b!6292256 (= res!2594914 e!3826049)))

(declare-fun res!2594917 () Bool)

(assert (=> b!6292256 (=> (not res!2594917) (not e!3826049))))

(declare-fun lt!2357410 () Bool)

(assert (=> b!6292256 (= res!2594917 lt!2357410)))

(declare-fun b!6292257 () Bool)

(assert (=> b!6292257 (= e!3826049 (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)))))))

(declare-fun e!3826051 () Bool)

(declare-fun b!6292258 () Bool)

(assert (=> b!6292258 (= e!3826051 (not (= (head!12927 (tail!12012 s!2326)) (c!1141284 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326))))))))

(declare-fun d!1974764 () Bool)

(declare-fun e!3826052 () Bool)

(assert (=> d!1974764 e!3826052))

(declare-fun c!1142016 () Bool)

(assert (=> d!1974764 (= c!1142016 ((_ is EmptyExpr!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326))))))

(assert (=> d!1974764 (= lt!2357410 e!3826053)))

(declare-fun c!1142017 () Bool)

(assert (=> d!1974764 (= c!1142017 (isEmpty!36872 (tail!12012 s!2326)))))

(assert (=> d!1974764 (validRegex!7949 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)))))

(assert (=> d!1974764 (= (matchR!8396 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)) (tail!12012 s!2326)) lt!2357410)))

(declare-fun b!6292259 () Bool)

(declare-fun e!3826048 () Bool)

(assert (=> b!6292259 (= e!3826048 (not lt!2357410))))

(declare-fun b!6292260 () Bool)

(declare-fun e!3826047 () Bool)

(assert (=> b!6292260 (= e!3826050 e!3826047)))

(declare-fun res!2594916 () Bool)

(assert (=> b!6292260 (=> (not res!2594916) (not e!3826047))))

(assert (=> b!6292260 (= res!2594916 (not lt!2357410))))

(declare-fun bm!532928 () Bool)

(declare-fun call!532933 () Bool)

(assert (=> bm!532928 (= call!532933 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun b!6292261 () Bool)

(assert (=> b!6292261 (= e!3826052 (= lt!2357410 call!532933))))

(declare-fun b!6292262 () Bool)

(assert (=> b!6292262 (= e!3826052 e!3826048)))

(declare-fun c!1142018 () Bool)

(assert (=> b!6292262 (= c!1142018 ((_ is EmptyLang!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326))))))

(declare-fun b!6292263 () Bool)

(assert (=> b!6292263 (= e!3826047 e!3826051)))

(declare-fun res!2594915 () Bool)

(assert (=> b!6292263 (=> res!2594915 e!3826051)))

(assert (=> b!6292263 (= res!2594915 call!532933)))

(declare-fun b!6292264 () Bool)

(declare-fun res!2594911 () Bool)

(assert (=> b!6292264 (=> (not res!2594911) (not e!3826049))))

(assert (=> b!6292264 (= res!2594911 (not call!532933))))

(declare-fun b!6292265 () Bool)

(declare-fun res!2594910 () Bool)

(assert (=> b!6292265 (=> res!2594910 e!3826050)))

(assert (=> b!6292265 (= res!2594910 (not ((_ is ElementMatch!16213) (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)))))))

(assert (=> b!6292265 (= e!3826048 e!3826050)))

(declare-fun b!6292266 () Bool)

(assert (=> b!6292266 (= e!3826053 (matchR!8396 (derivativeStep!4922 (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6292267 () Bool)

(declare-fun res!2594912 () Bool)

(assert (=> b!6292267 (=> (not res!2594912) (not e!3826049))))

(assert (=> b!6292267 (= res!2594912 (isEmpty!36872 (tail!12012 (tail!12012 s!2326))))))

(declare-fun b!6292268 () Bool)

(declare-fun res!2594913 () Bool)

(assert (=> b!6292268 (=> res!2594913 e!3826051)))

(assert (=> b!6292268 (= res!2594913 (not (isEmpty!36872 (tail!12012 (tail!12012 s!2326)))))))

(assert (= (and d!1974764 c!1142017) b!6292255))

(assert (= (and d!1974764 (not c!1142017)) b!6292266))

(assert (= (and d!1974764 c!1142016) b!6292261))

(assert (= (and d!1974764 (not c!1142016)) b!6292262))

(assert (= (and b!6292262 c!1142018) b!6292259))

(assert (= (and b!6292262 (not c!1142018)) b!6292265))

(assert (= (and b!6292265 (not res!2594910)) b!6292256))

(assert (= (and b!6292256 res!2594917) b!6292264))

(assert (= (and b!6292264 res!2594911) b!6292267))

(assert (= (and b!6292267 res!2594912) b!6292257))

(assert (= (and b!6292256 (not res!2594914)) b!6292260))

(assert (= (and b!6292260 res!2594916) b!6292263))

(assert (= (and b!6292263 (not res!2594915)) b!6292268))

(assert (= (and b!6292268 (not res!2594913)) b!6292258))

(assert (= (or b!6292261 b!6292263 b!6292264) bm!532928))

(assert (=> bm!532928 m!7111086))

(assert (=> bm!532928 m!7111090))

(assert (=> b!6292266 m!7111086))

(assert (=> b!6292266 m!7111620))

(assert (=> b!6292266 m!7111518))

(assert (=> b!6292266 m!7111620))

(declare-fun m!7112894 () Bool)

(assert (=> b!6292266 m!7112894))

(assert (=> b!6292266 m!7111086))

(assert (=> b!6292266 m!7111624))

(assert (=> b!6292266 m!7112894))

(assert (=> b!6292266 m!7111624))

(declare-fun m!7112896 () Bool)

(assert (=> b!6292266 m!7112896))

(assert (=> b!6292258 m!7111086))

(assert (=> b!6292258 m!7111620))

(assert (=> b!6292268 m!7111086))

(assert (=> b!6292268 m!7111624))

(assert (=> b!6292268 m!7111624))

(assert (=> b!6292268 m!7111628))

(assert (=> b!6292255 m!7111518))

(declare-fun m!7112898 () Bool)

(assert (=> b!6292255 m!7112898))

(assert (=> b!6292257 m!7111086))

(assert (=> b!6292257 m!7111620))

(assert (=> b!6292267 m!7111086))

(assert (=> b!6292267 m!7111624))

(assert (=> b!6292267 m!7111624))

(assert (=> b!6292267 m!7111628))

(assert (=> d!1974764 m!7111086))

(assert (=> d!1974764 m!7111090))

(assert (=> d!1974764 m!7111518))

(declare-fun m!7112900 () Bool)

(assert (=> d!1974764 m!7112900))

(assert (=> b!6290916 d!1974764))

(declare-fun b!6292278 () Bool)

(declare-fun e!3826062 () Regex!16213)

(declare-fun e!3826065 () Regex!16213)

(assert (=> b!6292278 (= e!3826062 e!3826065)))

(declare-fun c!1142025 () Bool)

(assert (=> b!6292278 (= c!1142025 ((_ is Star!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun call!532940 () Regex!16213)

(declare-fun e!3826063 () Regex!16213)

(declare-fun b!6292279 () Bool)

(assert (=> b!6292279 (= e!3826063 (Union!16213 (Concat!25058 call!532940 (regTwo!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))) EmptyLang!16213))))

(declare-fun b!6292280 () Bool)

(declare-fun call!532938 () Regex!16213)

(assert (=> b!6292280 (= e!3826065 (Concat!25058 call!532938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun b!6292281 () Bool)

(declare-fun e!3826061 () Regex!16213)

(assert (=> b!6292281 (= e!3826061 EmptyLang!16213)))

(declare-fun call!532939 () Regex!16213)

(declare-fun bm!532932 () Bool)

(declare-fun c!1142022 () Bool)

(assert (=> bm!532932 (= call!532939 (derivativeStep!4922 (ite c!1142022 (regTwo!32939 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (regOne!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))) (head!12927 s!2326)))))

(declare-fun b!6292282 () Bool)

(declare-fun call!532937 () Regex!16213)

(assert (=> b!6292282 (= e!3826062 (Union!16213 call!532937 call!532939))))

(declare-fun bm!532933 () Bool)

(assert (=> bm!532933 (= call!532938 call!532937)))

(declare-fun e!3826064 () Regex!16213)

(declare-fun b!6292283 () Bool)

(assert (=> b!6292283 (= e!3826064 (ite (= (head!12927 s!2326) (c!1141284 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))) EmptyExpr!16213 EmptyLang!16213))))

(declare-fun b!6292284 () Bool)

(assert (=> b!6292284 (= e!3826061 e!3826064)))

(declare-fun c!1142021 () Bool)

(assert (=> b!6292284 (= c!1142021 ((_ is ElementMatch!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(declare-fun bm!532934 () Bool)

(declare-fun c!1142023 () Bool)

(assert (=> bm!532934 (= call!532937 (derivativeStep!4922 (ite c!1142022 (regOne!32939 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (ite c!1142025 (reg!16542 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (ite c!1142023 (regTwo!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) (regOne!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))) (head!12927 s!2326)))))

(declare-fun b!6292285 () Bool)

(assert (=> b!6292285 (= c!1142022 ((_ is Union!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))))))

(assert (=> b!6292285 (= e!3826064 e!3826062)))

(declare-fun bm!532935 () Bool)

(assert (=> bm!532935 (= call!532940 call!532938)))

(declare-fun b!6292286 () Bool)

(assert (=> b!6292286 (= c!1142023 (nullable!6206 (regOne!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))

(assert (=> b!6292286 (= e!3826065 e!3826063)))

(declare-fun d!1974768 () Bool)

(declare-fun lt!2357411 () Regex!16213)

(assert (=> d!1974768 (validRegex!7949 lt!2357411)))

(assert (=> d!1974768 (= lt!2357411 e!3826061)))

(declare-fun c!1142024 () Bool)

(assert (=> d!1974768 (= c!1142024 (or ((_ is EmptyExpr!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053))) ((_ is EmptyLang!16213) (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))))

(assert (=> d!1974768 (validRegex!7949 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))))

(assert (=> d!1974768 (= (derivativeStep!4922 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)) (head!12927 s!2326)) lt!2357411)))

(declare-fun b!6292287 () Bool)

(assert (=> b!6292287 (= e!3826063 (Union!16213 (Concat!25058 call!532939 (regTwo!32938 (Concat!25058 (regOne!32938 (regOne!32938 r!7292)) (Concat!25058 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053)))) call!532940))))

(assert (= (and d!1974768 c!1142024) b!6292281))

(assert (= (and d!1974768 (not c!1142024)) b!6292284))

(assert (= (and b!6292284 c!1142021) b!6292283))

(assert (= (and b!6292284 (not c!1142021)) b!6292285))

(assert (= (and b!6292285 c!1142022) b!6292282))

(assert (= (and b!6292285 (not c!1142022)) b!6292278))

(assert (= (and b!6292278 c!1142025) b!6292280))

(assert (= (and b!6292278 (not c!1142025)) b!6292286))

(assert (= (and b!6292286 c!1142023) b!6292287))

(assert (= (and b!6292286 (not c!1142023)) b!6292279))

(assert (= (or b!6292287 b!6292279) bm!532935))

(assert (= (or b!6292280 bm!532935) bm!532933))

(assert (= (or b!6292282 b!6292287) bm!532932))

(assert (= (or b!6292282 bm!532933) bm!532934))

(assert (=> bm!532932 m!7111082))

(declare-fun m!7112908 () Bool)

(assert (=> bm!532932 m!7112908))

(assert (=> bm!532934 m!7111082))

(declare-fun m!7112910 () Bool)

(assert (=> bm!532934 m!7112910))

(declare-fun m!7112912 () Bool)

(assert (=> b!6292286 m!7112912))

(declare-fun m!7112914 () Bool)

(assert (=> d!1974768 m!7112914))

(assert (=> d!1974768 m!7111524))

(assert (=> b!6290916 d!1974768))

(assert (=> b!6290916 d!1974146))

(assert (=> b!6290916 d!1974130))

(assert (=> bm!532606 d!1974138))

(declare-fun d!1974772 () Bool)

(assert (=> d!1974772 (= (head!12926 (exprs!6097 (h!71264 zl!343))) (h!71263 (exprs!6097 (h!71264 zl!343))))))

(assert (=> b!6290896 d!1974772))

(assert (=> bm!532605 d!1974138))

(assert (=> b!6290358 d!1974090))

(declare-fun bs!1573339 () Bool)

(declare-fun d!1974774 () Bool)

(assert (= bs!1573339 (and d!1974774 d!1974368)))

(declare-fun lambda!345704 () Int)

(assert (=> bs!1573339 (= lambda!345704 lambda!345638)))

(declare-fun bs!1573340 () Bool)

(assert (= bs!1573340 (and d!1974774 b!6291134)))

(assert (=> bs!1573340 (not (= lambda!345704 lambda!345604))))

(declare-fun bs!1573341 () Bool)

(assert (= bs!1573341 (and d!1974774 d!1973998)))

(assert (=> bs!1573341 (= lambda!345704 lambda!345571)))

(declare-fun bs!1573342 () Bool)

(assert (= bs!1573342 (and d!1974774 d!1974034)))

(assert (=> bs!1573342 (= lambda!345704 lambda!345577)))

(declare-fun bs!1573343 () Bool)

(assert (= bs!1573343 (and d!1974774 d!1974314)))

(assert (=> bs!1573343 (= lambda!345704 lambda!345623)))

(declare-fun bs!1573344 () Bool)

(assert (= bs!1573344 (and d!1974774 b!6292165)))

(assert (=> bs!1573344 (not (= lambda!345704 lambda!345696))))

(declare-fun bs!1573345 () Bool)

(assert (= bs!1573345 (and d!1974774 d!1974628)))

(assert (=> bs!1573345 (= lambda!345704 lambda!345685)))

(declare-fun bs!1573346 () Bool)

(assert (= bs!1573346 (and d!1974774 d!1973900)))

(assert (=> bs!1573346 (= lambda!345704 lambda!345542)))

(declare-fun bs!1573347 () Bool)

(assert (= bs!1573347 (and d!1974774 d!1974050)))

(assert (=> bs!1573347 (= lambda!345704 lambda!345596)))

(declare-fun bs!1573349 () Bool)

(assert (= bs!1573349 (and d!1974774 d!1974380)))

(assert (=> bs!1573349 (= lambda!345704 lambda!345640)))

(declare-fun bs!1573350 () Bool)

(assert (= bs!1573350 (and d!1974774 d!1974004)))

(assert (=> bs!1573350 (= lambda!345704 lambda!345572)))

(declare-fun bs!1573351 () Bool)

(assert (= bs!1573351 (and d!1974774 b!6292167)))

(assert (=> bs!1573351 (not (= lambda!345704 lambda!345697))))

(declare-fun bs!1573352 () Bool)

(assert (= bs!1573352 (and d!1974774 b!6291136)))

(assert (=> bs!1573352 (not (= lambda!345704 lambda!345605))))

(declare-fun bs!1573353 () Bool)

(assert (= bs!1573353 (and d!1974774 d!1973910)))

(assert (=> bs!1573353 (= lambda!345704 lambda!345546)))

(declare-fun bs!1573354 () Bool)

(assert (= bs!1573354 (and d!1974774 d!1974352)))

(assert (=> bs!1573354 (= lambda!345704 lambda!345634)))

(declare-fun bs!1573355 () Bool)

(assert (= bs!1573355 (and d!1974774 d!1974090)))

(assert (=> bs!1573355 (= lambda!345704 lambda!345599)))

(declare-fun bs!1573356 () Bool)

(assert (= bs!1573356 (and d!1974774 d!1974056)))

(assert (=> bs!1573356 (= lambda!345704 lambda!345597)))

(declare-fun lt!2357412 () List!64939)

(assert (=> d!1974774 (forall!15362 lt!2357412 lambda!345704)))

(declare-fun e!3826066 () List!64939)

(assert (=> d!1974774 (= lt!2357412 e!3826066)))

(declare-fun c!1142026 () Bool)

(assert (=> d!1974774 (= c!1142026 ((_ is Cons!64816) (t!378502 zl!343)))))

(assert (=> d!1974774 (= (unfocusZipperList!1634 (t!378502 zl!343)) lt!2357412)))

(declare-fun b!6292288 () Bool)

(assert (=> b!6292288 (= e!3826066 (Cons!64815 (generalisedConcat!1810 (exprs!6097 (h!71264 (t!378502 zl!343)))) (unfocusZipperList!1634 (t!378502 (t!378502 zl!343)))))))

(declare-fun b!6292289 () Bool)

(assert (=> b!6292289 (= e!3826066 Nil!64815)))

(assert (= (and d!1974774 c!1142026) b!6292288))

(assert (= (and d!1974774 (not c!1142026)) b!6292289))

(declare-fun m!7112916 () Bool)

(assert (=> d!1974774 m!7112916))

(declare-fun m!7112918 () Bool)

(assert (=> b!6292288 m!7112918))

(declare-fun m!7112920 () Bool)

(assert (=> b!6292288 m!7112920))

(assert (=> b!6290358 d!1974774))

(assert (=> d!1974106 d!1974120))

(declare-fun d!1974778 () Bool)

(assert (=> d!1974778 (= (isEmpty!36870 (t!378501 lt!2357082)) ((_ is Nil!64815) (t!378501 lt!2357082)))))

(assert (=> b!6290759 d!1974778))

(declare-fun d!1974780 () Bool)

(assert (=> d!1974780 (= (Exists!3283 (ite c!1141554 lambda!345575 lambda!345576)) (choose!46739 (ite c!1141554 lambda!345575 lambda!345576)))))

(declare-fun bs!1573358 () Bool)

(assert (= bs!1573358 d!1974780))

(declare-fun m!7112922 () Bool)

(assert (=> bs!1573358 m!7112922))

(assert (=> bm!532612 d!1974780))

(assert (=> b!6290923 d!1974326))

(declare-fun d!1974782 () Bool)

(declare-fun c!1142031 () Bool)

(assert (=> d!1974782 (= c!1142031 (isEmpty!36872 (tail!12012 (t!378500 s!2326))))))

(declare-fun e!3826074 () Bool)

(assert (=> d!1974782 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357084 (head!12927 (t!378500 s!2326))) (tail!12012 (t!378500 s!2326))) e!3826074)))

(declare-fun b!6292301 () Bool)

(assert (=> b!6292301 (= e!3826074 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357084 (head!12927 (t!378500 s!2326)))))))

(declare-fun b!6292302 () Bool)

(assert (=> b!6292302 (= e!3826074 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357084 (head!12927 (t!378500 s!2326))) (head!12927 (tail!12012 (t!378500 s!2326)))) (tail!12012 (tail!12012 (t!378500 s!2326)))))))

(assert (= (and d!1974782 c!1142031) b!6292301))

(assert (= (and d!1974782 (not c!1142031)) b!6292302))

(assert (=> d!1974782 m!7111112))

(assert (=> d!1974782 m!7111724))

(assert (=> b!6292301 m!7111164))

(declare-fun m!7112924 () Bool)

(assert (=> b!6292301 m!7112924))

(assert (=> b!6292302 m!7111112))

(assert (=> b!6292302 m!7111728))

(assert (=> b!6292302 m!7111164))

(assert (=> b!6292302 m!7111728))

(declare-fun m!7112926 () Bool)

(assert (=> b!6292302 m!7112926))

(assert (=> b!6292302 m!7111112))

(assert (=> b!6292302 m!7111732))

(assert (=> b!6292302 m!7112926))

(assert (=> b!6292302 m!7111732))

(declare-fun m!7112928 () Bool)

(assert (=> b!6292302 m!7112928))

(assert (=> b!6290611 d!1974782))

(declare-fun bs!1573366 () Bool)

(declare-fun d!1974784 () Bool)

(assert (= bs!1573366 (and d!1974784 d!1974426)))

(declare-fun lambda!345706 () Int)

(assert (=> bs!1573366 (= lambda!345706 lambda!345658)))

(declare-fun bs!1573368 () Bool)

(assert (= bs!1573368 (and d!1974784 d!1974464)))

(assert (=> bs!1573368 (= lambda!345706 lambda!345667)))

(declare-fun bs!1573370 () Bool)

(assert (= bs!1573370 (and d!1974784 d!1974652)))

(assert (=> bs!1573370 (= lambda!345706 lambda!345688)))

(declare-fun bs!1573371 () Bool)

(assert (= bs!1573371 (and d!1974784 d!1974252)))

(assert (=> bs!1573371 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345706 lambda!345622))))

(declare-fun bs!1573372 () Bool)

(assert (= bs!1573372 (and d!1974784 d!1974406)))

(assert (=> bs!1573372 (= lambda!345706 lambda!345645)))

(declare-fun bs!1573373 () Bool)

(assert (= bs!1573373 (and d!1974784 d!1974064)))

(assert (=> bs!1573373 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345706 lambda!345598))))

(declare-fun bs!1573374 () Bool)

(assert (= bs!1573374 (and d!1974784 d!1974186)))

(assert (=> bs!1573374 (= lambda!345706 lambda!345618)))

(declare-fun bs!1573376 () Bool)

(assert (= bs!1573376 (and d!1974784 d!1974538)))

(assert (=> bs!1573376 (= lambda!345706 lambda!345674)))

(declare-fun bs!1573377 () Bool)

(assert (= bs!1573377 (and d!1974784 d!1974348)))

(assert (=> bs!1573377 (= lambda!345706 lambda!345633)))

(declare-fun bs!1573379 () Bool)

(assert (= bs!1573379 (and d!1974784 d!1974178)))

(assert (=> bs!1573379 (= lambda!345706 lambda!345617)))

(declare-fun bs!1573381 () Bool)

(assert (= bs!1573381 (and d!1974784 d!1973976)))

(assert (=> bs!1573381 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345706 lambda!345557))))

(declare-fun bs!1573382 () Bool)

(assert (= bs!1573382 (and d!1974784 d!1974220)))

(assert (=> bs!1573382 (= lambda!345706 lambda!345620)))

(declare-fun bs!1573383 () Bool)

(assert (= bs!1573383 (and d!1974784 d!1974232)))

(assert (=> bs!1573383 (= (= (head!12927 (t!378500 s!2326)) (head!12927 s!2326)) (= lambda!345706 lambda!345621))))

(declare-fun bs!1573384 () Bool)

(assert (= bs!1573384 (and d!1974784 b!6289808)))

(assert (=> bs!1573384 (= (= (head!12927 (t!378500 s!2326)) (h!71262 s!2326)) (= lambda!345706 lambda!345481))))

(assert (=> d!1974784 true))

(assert (=> d!1974784 (= (derivationStepZipper!2179 lt!2357084 (head!12927 (t!378500 s!2326))) (flatMap!1718 lt!2357084 lambda!345706))))

(declare-fun bs!1573386 () Bool)

(assert (= bs!1573386 d!1974784))

(declare-fun m!7112930 () Bool)

(assert (=> bs!1573386 m!7112930))

(assert (=> b!6290611 d!1974784))

(assert (=> b!6290611 d!1974180))

(assert (=> b!6290611 d!1974182))

(declare-fun d!1974786 () Bool)

(declare-fun c!1142032 () Bool)

(assert (=> d!1974786 (= c!1142032 (isEmpty!36872 (tail!12012 s!2326)))))

(declare-fun e!3826075 () Bool)

(assert (=> d!1974786 (= (matchZipper!2225 (derivationStepZipper!2179 lt!2357071 (head!12927 s!2326)) (tail!12012 s!2326)) e!3826075)))

(declare-fun b!6292303 () Bool)

(assert (=> b!6292303 (= e!3826075 (nullableZipper!1983 (derivationStepZipper!2179 lt!2357071 (head!12927 s!2326))))))

(declare-fun b!6292304 () Bool)

(assert (=> b!6292304 (= e!3826075 (matchZipper!2225 (derivationStepZipper!2179 (derivationStepZipper!2179 lt!2357071 (head!12927 s!2326)) (head!12927 (tail!12012 s!2326))) (tail!12012 (tail!12012 s!2326))))))

(assert (= (and d!1974786 c!1142032) b!6292303))

(assert (= (and d!1974786 (not c!1142032)) b!6292304))

(assert (=> d!1974786 m!7111086))

(assert (=> d!1974786 m!7111090))

(assert (=> b!6292303 m!7111330))

(declare-fun m!7112932 () Bool)

(assert (=> b!6292303 m!7112932))

(assert (=> b!6292304 m!7111086))

(assert (=> b!6292304 m!7111620))

(assert (=> b!6292304 m!7111330))

(assert (=> b!6292304 m!7111620))

(declare-fun m!7112934 () Bool)

(assert (=> b!6292304 m!7112934))

(assert (=> b!6292304 m!7111086))

(assert (=> b!6292304 m!7111624))

(assert (=> b!6292304 m!7112934))

(assert (=> b!6292304 m!7111624))

(declare-fun m!7112936 () Bool)

(assert (=> b!6292304 m!7112936))

(assert (=> b!6290755 d!1974786))

(declare-fun bs!1573391 () Bool)

(declare-fun d!1974788 () Bool)

(assert (= bs!1573391 (and d!1974788 d!1974426)))

(declare-fun lambda!345707 () Int)

(assert (=> bs!1573391 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345658))))

(declare-fun bs!1573392 () Bool)

(assert (= bs!1573392 (and d!1974788 d!1974464)))

(assert (=> bs!1573392 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345667))))

(declare-fun bs!1573393 () Bool)

(assert (= bs!1573393 (and d!1974788 d!1974252)))

(assert (=> bs!1573393 (= lambda!345707 lambda!345622)))

(declare-fun bs!1573394 () Bool)

(assert (= bs!1573394 (and d!1974788 d!1974406)))

(assert (=> bs!1573394 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345645))))

(declare-fun bs!1573395 () Bool)

(assert (= bs!1573395 (and d!1974788 d!1974064)))

(assert (=> bs!1573395 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345707 lambda!345598))))

(declare-fun bs!1573396 () Bool)

(assert (= bs!1573396 (and d!1974788 d!1974186)))

(assert (=> bs!1573396 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345618))))

(declare-fun bs!1573397 () Bool)

(assert (= bs!1573397 (and d!1974788 d!1974538)))

(assert (=> bs!1573397 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345674))))

(declare-fun bs!1573398 () Bool)

(assert (= bs!1573398 (and d!1974788 d!1974348)))

(assert (=> bs!1573398 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345633))))

(declare-fun bs!1573399 () Bool)

(assert (= bs!1573399 (and d!1974788 d!1974178)))

(assert (=> bs!1573399 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345617))))

(declare-fun bs!1573400 () Bool)

(assert (= bs!1573400 (and d!1974788 d!1973976)))

(assert (=> bs!1573400 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345707 lambda!345557))))

(declare-fun bs!1573401 () Bool)

(assert (= bs!1573401 (and d!1974788 d!1974220)))

(assert (=> bs!1573401 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345620))))

(declare-fun bs!1573402 () Bool)

(assert (= bs!1573402 (and d!1974788 d!1974784)))

(assert (=> bs!1573402 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345706))))

(declare-fun bs!1573403 () Bool)

(assert (= bs!1573403 (and d!1974788 d!1974652)))

(assert (=> bs!1573403 (= (= (head!12927 s!2326) (head!12927 (t!378500 s!2326))) (= lambda!345707 lambda!345688))))

(declare-fun bs!1573405 () Bool)

(assert (= bs!1573405 (and d!1974788 d!1974232)))

(assert (=> bs!1573405 (= lambda!345707 lambda!345621)))

(declare-fun bs!1573406 () Bool)

(assert (= bs!1573406 (and d!1974788 b!6289808)))

(assert (=> bs!1573406 (= (= (head!12927 s!2326) (h!71262 s!2326)) (= lambda!345707 lambda!345481))))

(assert (=> d!1974788 true))

(assert (=> d!1974788 (= (derivationStepZipper!2179 lt!2357071 (head!12927 s!2326)) (flatMap!1718 lt!2357071 lambda!345707))))

(declare-fun bs!1573409 () Bool)

(assert (= bs!1573409 d!1974788))

(declare-fun m!7112938 () Bool)

(assert (=> bs!1573409 m!7112938))

(assert (=> b!6290755 d!1974788))

(assert (=> b!6290755 d!1974146))

(assert (=> b!6290755 d!1974130))

(declare-fun d!1974790 () Bool)

(declare-fun res!2594926 () Bool)

(declare-fun e!3826076 () Bool)

(assert (=> d!1974790 (=> res!2594926 e!3826076)))

(assert (=> d!1974790 (= res!2594926 ((_ is Nil!64816) zl!343))))

(assert (=> d!1974790 (= (forall!15363 zl!343 lambda!345593) e!3826076)))

(declare-fun b!6292305 () Bool)

(declare-fun e!3826077 () Bool)

(assert (=> b!6292305 (= e!3826076 e!3826077)))

(declare-fun res!2594927 () Bool)

(assert (=> b!6292305 (=> (not res!2594927) (not e!3826077))))

(assert (=> b!6292305 (= res!2594927 (dynLambda!25650 lambda!345593 (h!71264 zl!343)))))

(declare-fun b!6292306 () Bool)

(assert (=> b!6292306 (= e!3826077 (forall!15363 (t!378502 zl!343) lambda!345593))))

(assert (= (and d!1974790 (not res!2594926)) b!6292305))

(assert (= (and b!6292305 res!2594927) b!6292306))

(declare-fun b_lambda!239395 () Bool)

(assert (=> (not b_lambda!239395) (not b!6292305)))

(declare-fun m!7112940 () Bool)

(assert (=> b!6292305 m!7112940))

(declare-fun m!7112942 () Bool)

(assert (=> b!6292306 m!7112942))

(assert (=> b!6290788 d!1974790))

(declare-fun d!1974792 () Bool)

(assert (=> d!1974792 true))

(declare-fun setRes!42823 () Bool)

(assert (=> d!1974792 setRes!42823))

(declare-fun condSetEmpty!42823 () Bool)

(declare-fun res!2594928 () (InoxSet Context!11194))

(assert (=> d!1974792 (= condSetEmpty!42823 (= res!2594928 ((as const (Array Context!11194 Bool)) false)))))

(assert (=> d!1974792 (= (choose!46746 lt!2357069 lambda!345481) res!2594928)))

(declare-fun setIsEmpty!42823 () Bool)

(assert (=> setIsEmpty!42823 setRes!42823))

(declare-fun tp!1751820 () Bool)

(declare-fun e!3826078 () Bool)

(declare-fun setElem!42823 () Context!11194)

(declare-fun setNonEmpty!42823 () Bool)

(assert (=> setNonEmpty!42823 (= setRes!42823 (and tp!1751820 (inv!83779 setElem!42823) e!3826078))))

(declare-fun setRest!42823 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42823 (= res!2594928 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42823 true) setRest!42823))))

(declare-fun b!6292307 () Bool)

(declare-fun tp!1751819 () Bool)

(assert (=> b!6292307 (= e!3826078 tp!1751819)))

(assert (= (and d!1974792 condSetEmpty!42823) setIsEmpty!42823))

(assert (= (and d!1974792 (not condSetEmpty!42823)) setNonEmpty!42823))

(assert (= setNonEmpty!42823 b!6292307))

(declare-fun m!7112944 () Bool)

(assert (=> setNonEmpty!42823 m!7112944))

(assert (=> d!1974112 d!1974792))

(declare-fun d!1974794 () Bool)

(assert (=> d!1974794 true))

(assert (=> d!1974794 true))

(declare-fun res!2594929 () Bool)

(assert (=> d!1974794 (= (choose!46739 lambda!345482) res!2594929)))

(assert (=> d!1974038 d!1974794))

(declare-fun bs!1573422 () Bool)

(declare-fun b!6292318 () Bool)

(assert (= bs!1573422 (and b!6292318 b!6289815)))

(declare-fun lambda!345709 () Int)

(assert (=> bs!1573422 (not (= lambda!345709 lambda!345482))))

(declare-fun bs!1573424 () Bool)

(assert (= bs!1573424 (and b!6292318 d!1974006)))

(assert (=> bs!1573424 (not (= lambda!345709 lambda!345573))))

(declare-fun bs!1573426 () Bool)

(assert (= bs!1573426 (and b!6292318 d!1974334)))

(assert (=> bs!1573426 (not (= lambda!345709 lambda!345632))))

(declare-fun bs!1573428 () Bool)

(assert (= bs!1573428 (and b!6292318 b!6291625)))

(assert (=> bs!1573428 (not (= lambda!345709 lambda!345649))))

(declare-fun bs!1573429 () Bool)

(assert (= bs!1573429 (and b!6292318 d!1974320)))

(assert (=> bs!1573429 (not (= lambda!345709 lambda!345628))))

(declare-fun bs!1573431 () Bool)

(assert (= bs!1573431 (and b!6292318 d!1974042)))

(assert (=> bs!1573431 (not (= lambda!345709 lambda!345581))))

(declare-fun bs!1573432 () Bool)

(assert (= bs!1573432 (and b!6292318 d!1974040)))

(assert (=> bs!1573432 (not (= lambda!345709 lambda!345578))))

(declare-fun bs!1573433 () Bool)

(assert (= bs!1573433 (and b!6292318 b!6290728)))

(assert (=> bs!1573433 (not (= lambda!345709 lambda!345576))))

(declare-fun bs!1573434 () Bool)

(assert (= bs!1573434 (and b!6292318 b!6291163)))

(assert (=> bs!1573434 (not (= lambda!345709 lambda!345616))))

(assert (=> bs!1573429 (not (= lambda!345709 lambda!345629))))

(declare-fun bs!1573435 () Bool)

(assert (= bs!1573435 (and b!6292318 b!6291777)))

(assert (=> bs!1573435 (not (= lambda!345709 lambda!345672))))

(declare-fun bs!1573436 () Bool)

(assert (= bs!1573436 (and b!6292318 b!6289816)))

(assert (=> bs!1573436 (not (= lambda!345709 lambda!345480))))

(assert (=> bs!1573422 (not (= lambda!345709 lambda!345483))))

(declare-fun bs!1573437 () Bool)

(assert (= bs!1573437 (and b!6292318 d!1973988)))

(assert (=> bs!1573437 (not (= lambda!345709 lambda!345560))))

(declare-fun bs!1573438 () Bool)

(assert (= bs!1573438 (and b!6292318 b!6290675)))

(assert (=> bs!1573438 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 lt!2357061)) (= (regOne!32939 lt!2357070) lt!2357061)) (= lambda!345709 lambda!345567))))

(declare-fun bs!1573439 () Bool)

(assert (= bs!1573439 (and b!6292318 d!1973990)))

(assert (=> bs!1573439 (not (= lambda!345709 lambda!345566))))

(declare-fun bs!1573440 () Bool)

(assert (= bs!1573440 (and b!6292318 b!6290737)))

(assert (=> bs!1573440 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 lt!2357070)) (= (regOne!32939 lt!2357070) lt!2357070)) (= lambda!345709 lambda!345575))))

(declare-fun bs!1573441 () Bool)

(assert (= bs!1573441 (and b!6292318 d!1974686)))

(assert (=> bs!1573441 (not (= lambda!345709 lambda!345695))))

(assert (=> bs!1573432 (not (= lambda!345709 lambda!345579))))

(declare-fun bs!1573443 () Bool)

(assert (= bs!1573443 (and b!6292318 d!1974414)))

(assert (=> bs!1573443 (not (= lambda!345709 lambda!345646))))

(declare-fun bs!1573444 () Bool)

(assert (= bs!1573444 (and b!6292318 b!6291172)))

(assert (=> bs!1573444 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 (regOne!32939 lt!2357061))) (= (regOne!32939 lt!2357070) (regOne!32939 lt!2357061))) (= lambda!345709 lambda!345615))))

(declare-fun bs!1573445 () Bool)

(assert (= bs!1573445 (and b!6292318 b!6291786)))

(assert (=> bs!1573445 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 (regTwo!32939 r!7292))) (= (regOne!32939 lt!2357070) (regTwo!32939 r!7292))) (= lambda!345709 lambda!345670))))

(declare-fun bs!1573446 () Bool)

(assert (= bs!1573446 (and b!6292318 d!1974010)))

(assert (=> bs!1573446 (not (= lambda!345709 lambda!345574))))

(declare-fun bs!1573447 () Bool)

(assert (= bs!1573447 (and b!6292318 b!6291642)))

(assert (=> bs!1573447 (not (= lambda!345709 lambda!345657))))

(assert (=> bs!1573431 (not (= lambda!345709 lambda!345580))))

(assert (=> bs!1573441 (not (= lambda!345709 lambda!345692))))

(assert (=> bs!1573439 (not (= lambda!345709 lambda!345565))))

(assert (=> bs!1573436 (not (= lambda!345709 lambda!345479))))

(declare-fun bs!1573448 () Bool)

(assert (= bs!1573448 (and b!6292318 b!6290448)))

(assert (=> bs!1573448 (not (= lambda!345709 lambda!345554))))

(declare-fun bs!1573449 () Bool)

(assert (= bs!1573449 (and b!6292318 b!6290666)))

(assert (=> bs!1573449 (not (= lambda!345709 lambda!345568))))

(declare-fun bs!1573450 () Bool)

(assert (= bs!1573450 (and b!6292318 d!1974356)))

(assert (=> bs!1573450 (not (= lambda!345709 lambda!345636))))

(assert (=> bs!1573422 (not (= lambda!345709 lambda!345484))))

(declare-fun bs!1573451 () Bool)

(assert (= bs!1573451 (and b!6292318 b!6291651)))

(assert (=> bs!1573451 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 (regOne!32939 r!7292))) (= (regOne!32939 lt!2357070) (regOne!32939 r!7292))) (= lambda!345709 lambda!345654))))

(declare-fun bs!1573452 () Bool)

(assert (= bs!1573452 (and b!6292318 b!6290457)))

(assert (=> bs!1573452 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 r!7292)) (= (regOne!32939 lt!2357070) r!7292)) (= lambda!345709 lambda!345553))))

(declare-fun bs!1573453 () Bool)

(assert (= bs!1573453 (and b!6292318 b!6291634)))

(assert (=> bs!1573453 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 (regTwo!32939 lt!2357070))) (= (regOne!32939 lt!2357070) (regTwo!32939 lt!2357070))) (= lambda!345709 lambda!345648))))

(declare-fun bs!1573454 () Bool)

(assert (= bs!1573454 (and b!6292318 b!6291874)))

(assert (=> bs!1573454 (not (= lambda!345709 lambda!345676))))

(assert (=> bs!1573443 (not (= lambda!345709 lambda!345647))))

(assert (=> bs!1573422 (not (= lambda!345709 lambda!345485))))

(declare-fun bs!1573455 () Bool)

(assert (= bs!1573455 (and b!6292318 d!1974400)))

(assert (=> bs!1573455 (not (= lambda!345709 lambda!345643))))

(declare-fun bs!1573456 () Bool)

(assert (= bs!1573456 (and b!6292318 b!6291883)))

(assert (=> bs!1573456 (= (and (= (reg!16542 (regOne!32939 lt!2357070)) (reg!16542 (regTwo!32939 lt!2357061))) (= (regOne!32939 lt!2357070) (regTwo!32939 lt!2357061))) (= lambda!345709 lambda!345675))))

(assert (=> b!6292318 true))

(assert (=> b!6292318 true))

(declare-fun bs!1573457 () Bool)

(declare-fun b!6292309 () Bool)

(assert (= bs!1573457 (and b!6292309 b!6289815)))

(declare-fun lambda!345710 () Int)

(assert (=> bs!1573457 (not (= lambda!345710 lambda!345482))))

(declare-fun bs!1573458 () Bool)

(assert (= bs!1573458 (and b!6292309 d!1974006)))

(assert (=> bs!1573458 (not (= lambda!345710 lambda!345573))))

(declare-fun bs!1573459 () Bool)

(assert (= bs!1573459 (and b!6292309 d!1974334)))

(assert (=> bs!1573459 (not (= lambda!345710 lambda!345632))))

(declare-fun bs!1573460 () Bool)

(assert (= bs!1573460 (and b!6292309 b!6291625)))

(assert (=> bs!1573460 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regTwo!32939 lt!2357070))) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regTwo!32939 lt!2357070)))) (= lambda!345710 lambda!345649))))

(declare-fun bs!1573461 () Bool)

(assert (= bs!1573461 (and b!6292309 d!1974320)))

(assert (=> bs!1573461 (not (= lambda!345710 lambda!345628))))

(declare-fun bs!1573462 () Bool)

(assert (= bs!1573462 (and b!6292309 d!1974042)))

(assert (=> bs!1573462 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357053)) (= lambda!345710 lambda!345581))))

(declare-fun bs!1573463 () Bool)

(assert (= bs!1573463 (and b!6292309 d!1974040)))

(assert (=> bs!1573463 (not (= lambda!345710 lambda!345578))))

(declare-fun bs!1573464 () Bool)

(assert (= bs!1573464 (and b!6292309 b!6290728)))

(assert (=> bs!1573464 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 lt!2357070)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 lt!2357070))) (= lambda!345710 lambda!345576))))

(declare-fun bs!1573465 () Bool)

(assert (= bs!1573465 (and b!6292309 b!6291163)))

(assert (=> bs!1573465 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regOne!32939 lt!2357061))) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regOne!32939 lt!2357061)))) (= lambda!345710 lambda!345616))))

(assert (=> bs!1573461 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357053)) (= lambda!345710 lambda!345629))))

(declare-fun bs!1573466 () Bool)

(assert (= bs!1573466 (and b!6292309 b!6289816)))

(assert (=> bs!1573466 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345710 lambda!345480))))

(assert (=> bs!1573457 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357070)) (= lambda!345710 lambda!345483))))

(declare-fun bs!1573467 () Bool)

(assert (= bs!1573467 (and b!6292309 d!1973988)))

(assert (=> bs!1573467 (not (= lambda!345710 lambda!345560))))

(declare-fun bs!1573469 () Bool)

(assert (= bs!1573469 (and b!6292309 b!6290675)))

(assert (=> bs!1573469 (not (= lambda!345710 lambda!345567))))

(declare-fun bs!1573470 () Bool)

(assert (= bs!1573470 (and b!6292309 d!1973990)))

(assert (=> bs!1573470 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345710 lambda!345566))))

(declare-fun bs!1573471 () Bool)

(assert (= bs!1573471 (and b!6292309 b!6290737)))

(assert (=> bs!1573471 (not (= lambda!345710 lambda!345575))))

(declare-fun bs!1573472 () Bool)

(assert (= bs!1573472 (and b!6292309 d!1974686)))

(assert (=> bs!1573472 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345710 lambda!345695))))

(assert (=> bs!1573463 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357070)) (= lambda!345710 lambda!345579))))

(declare-fun bs!1573473 () Bool)

(assert (= bs!1573473 (and b!6292309 d!1974414)))

(assert (=> bs!1573473 (not (= lambda!345710 lambda!345646))))

(declare-fun bs!1573474 () Bool)

(assert (= bs!1573474 (and b!6292309 b!6291172)))

(assert (=> bs!1573474 (not (= lambda!345710 lambda!345615))))

(declare-fun bs!1573475 () Bool)

(assert (= bs!1573475 (and b!6292309 b!6291786)))

(assert (=> bs!1573475 (not (= lambda!345710 lambda!345670))))

(declare-fun bs!1573476 () Bool)

(assert (= bs!1573476 (and b!6292309 d!1974010)))

(assert (=> bs!1573476 (not (= lambda!345710 lambda!345574))))

(declare-fun bs!1573477 () Bool)

(assert (= bs!1573477 (and b!6292309 b!6291642)))

(assert (=> bs!1573477 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regOne!32939 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regOne!32939 r!7292)))) (= lambda!345710 lambda!345657))))

(assert (=> bs!1573462 (not (= lambda!345710 lambda!345580))))

(assert (=> bs!1573472 (not (= lambda!345710 lambda!345692))))

(assert (=> bs!1573470 (not (= lambda!345710 lambda!345565))))

(declare-fun bs!1573478 () Bool)

(assert (= bs!1573478 (and b!6292309 b!6292318)))

(assert (=> bs!1573478 (not (= lambda!345710 lambda!345709))))

(declare-fun bs!1573479 () Bool)

(assert (= bs!1573479 (and b!6292309 b!6291777)))

(assert (=> bs!1573479 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regTwo!32939 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regTwo!32939 r!7292)))) (= lambda!345710 lambda!345672))))

(assert (=> bs!1573466 (not (= lambda!345710 lambda!345479))))

(declare-fun bs!1573480 () Bool)

(assert (= bs!1573480 (and b!6292309 b!6290448)))

(assert (=> bs!1573480 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 r!7292)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 r!7292))) (= lambda!345710 lambda!345554))))

(declare-fun bs!1573481 () Bool)

(assert (= bs!1573481 (and b!6292309 b!6290666)))

(assert (=> bs!1573481 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 lt!2357061)) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 lt!2357061))) (= lambda!345710 lambda!345568))))

(declare-fun bs!1573482 () Bool)

(assert (= bs!1573482 (and b!6292309 d!1974356)))

(assert (=> bs!1573482 (not (= lambda!345710 lambda!345636))))

(assert (=> bs!1573457 (not (= lambda!345710 lambda!345484))))

(declare-fun bs!1573483 () Bool)

(assert (= bs!1573483 (and b!6292309 b!6291651)))

(assert (=> bs!1573483 (not (= lambda!345710 lambda!345654))))

(declare-fun bs!1573484 () Bool)

(assert (= bs!1573484 (and b!6292309 b!6290457)))

(assert (=> bs!1573484 (not (= lambda!345710 lambda!345553))))

(declare-fun bs!1573485 () Bool)

(assert (= bs!1573485 (and b!6292309 b!6291634)))

(assert (=> bs!1573485 (not (= lambda!345710 lambda!345648))))

(declare-fun bs!1573486 () Bool)

(assert (= bs!1573486 (and b!6292309 b!6291874)))

(assert (=> bs!1573486 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regTwo!32939 lt!2357061))) (= (regTwo!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regTwo!32939 lt!2357061)))) (= lambda!345710 lambda!345676))))

(assert (=> bs!1573473 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regOne!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357070)) (= lambda!345710 lambda!345647))))

(assert (=> bs!1573457 (= (and (= (regOne!32938 (regOne!32939 lt!2357070)) (regTwo!32938 (regOne!32938 r!7292))) (= (regTwo!32938 (regOne!32939 lt!2357070)) lt!2357053)) (= lambda!345710 lambda!345485))))

(declare-fun bs!1573487 () Bool)

(assert (= bs!1573487 (and b!6292309 d!1974400)))

(assert (=> bs!1573487 (not (= lambda!345710 lambda!345643))))

(declare-fun bs!1573488 () Bool)

(assert (= bs!1573488 (and b!6292309 b!6291883)))

(assert (=> bs!1573488 (not (= lambda!345710 lambda!345675))))

(assert (=> b!6292309 true))

(assert (=> b!6292309 true))

(declare-fun b!6292308 () Bool)

(declare-fun c!1142034 () Bool)

(assert (=> b!6292308 (= c!1142034 ((_ is Union!16213) (regOne!32939 lt!2357070)))))

(declare-fun e!3826083 () Bool)

(declare-fun e!3826082 () Bool)

(assert (=> b!6292308 (= e!3826083 e!3826082)))

(declare-fun e!3826080 () Bool)

(declare-fun call!532944 () Bool)

(assert (=> b!6292309 (= e!3826080 call!532944)))

(declare-fun b!6292310 () Bool)

(declare-fun e!3826079 () Bool)

(declare-fun e!3826085 () Bool)

(assert (=> b!6292310 (= e!3826079 e!3826085)))

(declare-fun res!2594930 () Bool)

(assert (=> b!6292310 (= res!2594930 (not ((_ is EmptyLang!16213) (regOne!32939 lt!2357070))))))

(assert (=> b!6292310 (=> (not res!2594930) (not e!3826085))))

(declare-fun b!6292311 () Bool)

(declare-fun e!3826084 () Bool)

(assert (=> b!6292311 (= e!3826082 e!3826084)))

(declare-fun res!2594931 () Bool)

(assert (=> b!6292311 (= res!2594931 (matchRSpec!3314 (regOne!32939 (regOne!32939 lt!2357070)) s!2326))))

(assert (=> b!6292311 (=> res!2594931 e!3826084)))

(declare-fun b!6292312 () Bool)

(declare-fun res!2594932 () Bool)

(declare-fun e!3826081 () Bool)

(assert (=> b!6292312 (=> res!2594932 e!3826081)))

(declare-fun call!532943 () Bool)

(assert (=> b!6292312 (= res!2594932 call!532943)))

(assert (=> b!6292312 (= e!3826080 e!3826081)))

(declare-fun b!6292313 () Bool)

(assert (=> b!6292313 (= e!3826083 (= s!2326 (Cons!64814 (c!1141284 (regOne!32939 lt!2357070)) Nil!64814)))))

(declare-fun b!6292314 () Bool)

(assert (=> b!6292314 (= e!3826082 e!3826080)))

(declare-fun c!1142033 () Bool)

(assert (=> b!6292314 (= c!1142033 ((_ is Star!16213) (regOne!32939 lt!2357070)))))

(declare-fun b!6292315 () Bool)

(declare-fun c!1142036 () Bool)

(assert (=> b!6292315 (= c!1142036 ((_ is ElementMatch!16213) (regOne!32939 lt!2357070)))))

(assert (=> b!6292315 (= e!3826085 e!3826083)))

(declare-fun d!1974796 () Bool)

(declare-fun c!1142035 () Bool)

(assert (=> d!1974796 (= c!1142035 ((_ is EmptyExpr!16213) (regOne!32939 lt!2357070)))))

(assert (=> d!1974796 (= (matchRSpec!3314 (regOne!32939 lt!2357070) s!2326) e!3826079)))

(declare-fun b!6292316 () Bool)

(assert (=> b!6292316 (= e!3826084 (matchRSpec!3314 (regTwo!32939 (regOne!32939 lt!2357070)) s!2326))))

(declare-fun b!6292317 () Bool)

(assert (=> b!6292317 (= e!3826079 call!532943)))

(assert (=> b!6292318 (= e!3826081 call!532944)))

(declare-fun bm!532938 () Bool)

(assert (=> bm!532938 (= call!532943 (isEmpty!36872 s!2326))))

(declare-fun bm!532939 () Bool)

(assert (=> bm!532939 (= call!532944 (Exists!3283 (ite c!1142033 lambda!345709 lambda!345710)))))

(assert (= (and d!1974796 c!1142035) b!6292317))

(assert (= (and d!1974796 (not c!1142035)) b!6292310))

(assert (= (and b!6292310 res!2594930) b!6292315))

(assert (= (and b!6292315 c!1142036) b!6292313))

(assert (= (and b!6292315 (not c!1142036)) b!6292308))

(assert (= (and b!6292308 c!1142034) b!6292311))

(assert (= (and b!6292308 (not c!1142034)) b!6292314))

(assert (= (and b!6292311 (not res!2594931)) b!6292316))

(assert (= (and b!6292314 c!1142033) b!6292312))

(assert (= (and b!6292314 (not c!1142033)) b!6292309))

(assert (= (and b!6292312 (not res!2594932)) b!6292318))

(assert (= (or b!6292318 b!6292309) bm!532939))

(assert (= (or b!6292317 b!6292312) bm!532938))

(declare-fun m!7113014 () Bool)

(assert (=> b!6292311 m!7113014))

(declare-fun m!7113016 () Bool)

(assert (=> b!6292316 m!7113016))

(assert (=> bm!532938 m!7111076))

(declare-fun m!7113020 () Bool)

(assert (=> bm!532939 m!7113020))

(assert (=> b!6290730 d!1974796))

(assert (=> d!1974052 d!1974120))

(assert (=> d!1974036 d!1974760))

(declare-fun b!6292338 () Bool)

(declare-fun e!3826102 () Bool)

(assert (=> b!6292338 (= e!3826102 (nullable!6206 (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6292339 () Bool)

(declare-fun res!2594947 () Bool)

(declare-fun e!3826099 () Bool)

(assert (=> b!6292339 (=> res!2594947 e!3826099)))

(declare-fun e!3826098 () Bool)

(assert (=> b!6292339 (= res!2594947 e!3826098)))

(declare-fun res!2594950 () Bool)

(assert (=> b!6292339 (=> (not res!2594950) (not e!3826098))))

(declare-fun lt!2357421 () Bool)

(assert (=> b!6292339 (= res!2594950 lt!2357421)))

(declare-fun b!6292340 () Bool)

(assert (=> b!6292340 (= e!3826098 (= (head!12927 Nil!64814) (c!1141284 (regTwo!32938 (regOne!32938 r!7292)))))))

(declare-fun b!6292341 () Bool)

(declare-fun e!3826100 () Bool)

(assert (=> b!6292341 (= e!3826100 (not (= (head!12927 Nil!64814) (c!1141284 (regTwo!32938 (regOne!32938 r!7292))))))))

(declare-fun d!1974818 () Bool)

(declare-fun e!3826101 () Bool)

(assert (=> d!1974818 e!3826101))

(declare-fun c!1142042 () Bool)

(assert (=> d!1974818 (= c!1142042 ((_ is EmptyExpr!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974818 (= lt!2357421 e!3826102)))

(declare-fun c!1142043 () Bool)

(assert (=> d!1974818 (= c!1142043 (isEmpty!36872 Nil!64814))))

(assert (=> d!1974818 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974818 (= (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) Nil!64814) lt!2357421)))

(declare-fun b!6292342 () Bool)

(declare-fun e!3826097 () Bool)

(assert (=> b!6292342 (= e!3826097 (not lt!2357421))))

(declare-fun b!6292343 () Bool)

(declare-fun e!3826096 () Bool)

(assert (=> b!6292343 (= e!3826099 e!3826096)))

(declare-fun res!2594949 () Bool)

(assert (=> b!6292343 (=> (not res!2594949) (not e!3826096))))

(assert (=> b!6292343 (= res!2594949 (not lt!2357421))))

(declare-fun bm!532940 () Bool)

(declare-fun call!532945 () Bool)

(assert (=> bm!532940 (= call!532945 (isEmpty!36872 Nil!64814))))

(declare-fun b!6292344 () Bool)

(assert (=> b!6292344 (= e!3826101 (= lt!2357421 call!532945))))

(declare-fun b!6292345 () Bool)

(assert (=> b!6292345 (= e!3826101 e!3826097)))

(declare-fun c!1142044 () Bool)

(assert (=> b!6292345 (= c!1142044 ((_ is EmptyLang!16213) (regTwo!32938 (regOne!32938 r!7292))))))

(declare-fun b!6292346 () Bool)

(assert (=> b!6292346 (= e!3826096 e!3826100)))

(declare-fun res!2594948 () Bool)

(assert (=> b!6292346 (=> res!2594948 e!3826100)))

(assert (=> b!6292346 (= res!2594948 call!532945)))

(declare-fun b!6292347 () Bool)

(declare-fun res!2594944 () Bool)

(assert (=> b!6292347 (=> (not res!2594944) (not e!3826098))))

(assert (=> b!6292347 (= res!2594944 (not call!532945))))

(declare-fun b!6292348 () Bool)

(declare-fun res!2594943 () Bool)

(assert (=> b!6292348 (=> res!2594943 e!3826099)))

(assert (=> b!6292348 (= res!2594943 (not ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32938 r!7292)))))))

(assert (=> b!6292348 (= e!3826097 e!3826099)))

(declare-fun b!6292349 () Bool)

(assert (=> b!6292349 (= e!3826102 (matchR!8396 (derivativeStep!4922 (regTwo!32938 (regOne!32938 r!7292)) (head!12927 Nil!64814)) (tail!12012 Nil!64814)))))

(declare-fun b!6292350 () Bool)

(declare-fun res!2594945 () Bool)

(assert (=> b!6292350 (=> (not res!2594945) (not e!3826098))))

(assert (=> b!6292350 (= res!2594945 (isEmpty!36872 (tail!12012 Nil!64814)))))

(declare-fun b!6292351 () Bool)

(declare-fun res!2594946 () Bool)

(assert (=> b!6292351 (=> res!2594946 e!3826100)))

(assert (=> b!6292351 (= res!2594946 (not (isEmpty!36872 (tail!12012 Nil!64814))))))

(assert (= (and d!1974818 c!1142043) b!6292338))

(assert (= (and d!1974818 (not c!1142043)) b!6292349))

(assert (= (and d!1974818 c!1142042) b!6292344))

(assert (= (and d!1974818 (not c!1142042)) b!6292345))

(assert (= (and b!6292345 c!1142044) b!6292342))

(assert (= (and b!6292345 (not c!1142044)) b!6292348))

(assert (= (and b!6292348 (not res!2594943)) b!6292339))

(assert (= (and b!6292339 res!2594950) b!6292347))

(assert (= (and b!6292347 res!2594944) b!6292350))

(assert (= (and b!6292350 res!2594945) b!6292340))

(assert (= (and b!6292339 (not res!2594947)) b!6292343))

(assert (= (and b!6292343 res!2594949) b!6292346))

(assert (= (and b!6292346 (not res!2594948)) b!6292351))

(assert (= (and b!6292351 (not res!2594946)) b!6292341))

(assert (= (or b!6292344 b!6292346 b!6292347) bm!532940))

(assert (=> bm!532940 m!7111854))

(assert (=> b!6292349 m!7111856))

(assert (=> b!6292349 m!7111856))

(declare-fun m!7113022 () Bool)

(assert (=> b!6292349 m!7113022))

(assert (=> b!6292349 m!7111860))

(assert (=> b!6292349 m!7113022))

(assert (=> b!6292349 m!7111860))

(declare-fun m!7113024 () Bool)

(assert (=> b!6292349 m!7113024))

(assert (=> b!6292341 m!7111856))

(assert (=> b!6292351 m!7111860))

(assert (=> b!6292351 m!7111860))

(assert (=> b!6292351 m!7111864))

(assert (=> b!6292338 m!7112292))

(assert (=> b!6292340 m!7111856))

(assert (=> b!6292350 m!7111860))

(assert (=> b!6292350 m!7111860))

(assert (=> b!6292350 m!7111864))

(assert (=> d!1974818 m!7111854))

(assert (=> d!1974818 m!7111266))

(assert (=> d!1974036 d!1974818))

(assert (=> d!1974036 d!1974326))

(declare-fun d!1974824 () Bool)

(assert (=> d!1974824 (= ($colon$colon!2078 (exprs!6097 lt!2357077) (ite (or c!1141600 c!1141601) (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (regTwo!32938 (regOne!32938 r!7292)))) (Cons!64815 (ite (or c!1141600 c!1141601) (regTwo!32938 (regTwo!32938 (regOne!32938 r!7292))) (regTwo!32938 (regOne!32938 r!7292))) (exprs!6097 lt!2357077)))))

(assert (=> bm!532633 d!1974824))

(assert (=> b!6290663 d!1974128))

(assert (=> b!6290663 d!1974130))

(assert (=> b!6290767 d!1974262))

(assert (=> b!6290767 d!1974264))

(assert (=> b!6290767 d!1974266))

(declare-fun b!6292353 () Bool)

(declare-fun lt!2357424 () Unit!158183)

(declare-fun lt!2357423 () Unit!158183)

(assert (=> b!6292353 (= lt!2357424 lt!2357423)))

(assert (=> b!6292353 (= (++!14286 (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326))) s!2326)))

(assert (=> b!6292353 (= lt!2357423 (lemmaMoveElementToOtherListKeepsConcatEq!2381 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (h!71262 (t!378500 s!2326)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun e!3826106 () Option!16104)

(assert (=> b!6292353 (= e!3826106 (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 (++!14286 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (Cons!64814 (h!71262 (t!378500 s!2326)) Nil!64814)) (t!378500 (t!378500 s!2326)) s!2326))))

(declare-fun b!6292354 () Bool)

(declare-fun e!3826103 () Option!16104)

(assert (=> b!6292354 (= e!3826103 e!3826106)))

(declare-fun c!1142045 () Bool)

(assert (=> b!6292354 (= c!1142045 ((_ is Nil!64814) (t!378500 s!2326)))))

(declare-fun b!6292355 () Bool)

(assert (=> b!6292355 (= e!3826106 None!16103)))

(declare-fun b!6292356 () Bool)

(declare-fun res!2594953 () Bool)

(declare-fun e!3826107 () Bool)

(assert (=> b!6292356 (=> (not res!2594953) (not e!3826107))))

(declare-fun lt!2357422 () Option!16104)

(assert (=> b!6292356 (= res!2594953 (matchR!8396 lt!2357053 (_2!36495 (get!22408 lt!2357422))))))

(declare-fun b!6292357 () Bool)

(declare-fun res!2594952 () Bool)

(assert (=> b!6292357 (=> (not res!2594952) (not e!3826107))))

(assert (=> b!6292357 (= res!2594952 (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) (_1!36495 (get!22408 lt!2357422))))))

(declare-fun b!6292358 () Bool)

(assert (=> b!6292358 (= e!3826103 (Some!16103 (tuple2!66385 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326))))))

(declare-fun b!6292359 () Bool)

(declare-fun e!3826104 () Bool)

(assert (=> b!6292359 (= e!3826104 (matchR!8396 lt!2357053 (t!378500 s!2326)))))

(declare-fun b!6292360 () Bool)

(assert (=> b!6292360 (= e!3826107 (= (++!14286 (_1!36495 (get!22408 lt!2357422)) (_2!36495 (get!22408 lt!2357422))) s!2326))))

(declare-fun d!1974826 () Bool)

(declare-fun e!3826105 () Bool)

(assert (=> d!1974826 e!3826105))

(declare-fun res!2594955 () Bool)

(assert (=> d!1974826 (=> res!2594955 e!3826105)))

(assert (=> d!1974826 (= res!2594955 e!3826107)))

(declare-fun res!2594951 () Bool)

(assert (=> d!1974826 (=> (not res!2594951) (not e!3826107))))

(assert (=> d!1974826 (= res!2594951 (isDefined!12807 lt!2357422))))

(assert (=> d!1974826 (= lt!2357422 e!3826103)))

(declare-fun c!1142046 () Bool)

(assert (=> d!1974826 (= c!1142046 e!3826104)))

(declare-fun res!2594954 () Bool)

(assert (=> d!1974826 (=> (not res!2594954) (not e!3826104))))

(assert (=> d!1974826 (= res!2594954 (matchR!8396 (regTwo!32938 (regOne!32938 r!7292)) (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814))))))

(assert (=> d!1974826 (validRegex!7949 (regTwo!32938 (regOne!32938 r!7292)))))

(assert (=> d!1974826 (= (findConcatSeparation!2518 (regTwo!32938 (regOne!32938 r!7292)) lt!2357053 (++!14286 Nil!64814 (Cons!64814 (h!71262 s!2326) Nil!64814)) (t!378500 s!2326) s!2326) lt!2357422)))

(declare-fun b!6292352 () Bool)

(assert (=> b!6292352 (= e!3826105 (not (isDefined!12807 lt!2357422)))))

(assert (= (and d!1974826 res!2594954) b!6292359))

(assert (= (and d!1974826 c!1142046) b!6292358))

(assert (= (and d!1974826 (not c!1142046)) b!6292354))

(assert (= (and b!6292354 c!1142045) b!6292355))

(assert (= (and b!6292354 (not c!1142045)) b!6292353))

(assert (= (and d!1974826 res!2594951) b!6292357))

(assert (= (and b!6292357 res!2594952) b!6292356))

(assert (= (and b!6292356 res!2594953) b!6292360))

(assert (= (and d!1974826 (not res!2594955)) b!6292352))

(declare-fun m!7113026 () Bool)

(assert (=> b!6292352 m!7113026))

(assert (=> d!1974826 m!7113026))

(assert (=> d!1974826 m!7111182))

(declare-fun m!7113028 () Bool)

(assert (=> d!1974826 m!7113028))

(assert (=> d!1974826 m!7111266))

(declare-fun m!7113030 () Bool)

(assert (=> b!6292357 m!7113030))

(declare-fun m!7113032 () Bool)

(assert (=> b!6292357 m!7113032))

(assert (=> b!6292360 m!7113030))

(declare-fun m!7113034 () Bool)

(assert (=> b!6292360 m!7113034))

(declare-fun m!7113036 () Bool)

(assert (=> b!6292359 m!7113036))

(assert (=> b!6292353 m!7111182))

(assert (=> b!6292353 m!7111930))

(assert (=> b!6292353 m!7111930))

(assert (=> b!6292353 m!7111932))

(assert (=> b!6292353 m!7111182))

(assert (=> b!6292353 m!7111934))

(assert (=> b!6292353 m!7111930))

(declare-fun m!7113038 () Bool)

(assert (=> b!6292353 m!7113038))

(assert (=> b!6292356 m!7113030))

(declare-fun m!7113040 () Bool)

(assert (=> b!6292356 m!7113040))

(assert (=> b!6290767 d!1974826))

(declare-fun bs!1573497 () Bool)

(declare-fun d!1974828 () Bool)

(assert (= bs!1573497 (and d!1974828 d!1974368)))

(declare-fun lambda!345712 () Int)

(assert (=> bs!1573497 (= lambda!345712 lambda!345638)))

(declare-fun bs!1573498 () Bool)

(assert (= bs!1573498 (and d!1974828 b!6291134)))

(assert (=> bs!1573498 (not (= lambda!345712 lambda!345604))))

(declare-fun bs!1573499 () Bool)

(assert (= bs!1573499 (and d!1974828 d!1973998)))

(assert (=> bs!1573499 (= lambda!345712 lambda!345571)))

(declare-fun bs!1573500 () Bool)

(assert (= bs!1573500 (and d!1974828 d!1974034)))

(assert (=> bs!1573500 (= lambda!345712 lambda!345577)))

(declare-fun bs!1573501 () Bool)

(assert (= bs!1573501 (and d!1974828 d!1974314)))

(assert (=> bs!1573501 (= lambda!345712 lambda!345623)))

(declare-fun bs!1573502 () Bool)

(assert (= bs!1573502 (and d!1974828 d!1974774)))

(assert (=> bs!1573502 (= lambda!345712 lambda!345704)))

(declare-fun bs!1573503 () Bool)

(assert (= bs!1573503 (and d!1974828 b!6292165)))

(assert (=> bs!1573503 (not (= lambda!345712 lambda!345696))))

(declare-fun bs!1573504 () Bool)

(assert (= bs!1573504 (and d!1974828 d!1974628)))

(assert (=> bs!1573504 (= lambda!345712 lambda!345685)))

(declare-fun bs!1573505 () Bool)

(assert (= bs!1573505 (and d!1974828 d!1973900)))

(assert (=> bs!1573505 (= lambda!345712 lambda!345542)))

(declare-fun bs!1573506 () Bool)

(assert (= bs!1573506 (and d!1974828 d!1974050)))

(assert (=> bs!1573506 (= lambda!345712 lambda!345596)))

(declare-fun bs!1573507 () Bool)

(assert (= bs!1573507 (and d!1974828 d!1974380)))

(assert (=> bs!1573507 (= lambda!345712 lambda!345640)))

(declare-fun bs!1573508 () Bool)

(assert (= bs!1573508 (and d!1974828 d!1974004)))

(assert (=> bs!1573508 (= lambda!345712 lambda!345572)))

(declare-fun bs!1573509 () Bool)

(assert (= bs!1573509 (and d!1974828 b!6292167)))

(assert (=> bs!1573509 (not (= lambda!345712 lambda!345697))))

(declare-fun bs!1573510 () Bool)

(assert (= bs!1573510 (and d!1974828 b!6291136)))

(assert (=> bs!1573510 (not (= lambda!345712 lambda!345605))))

(declare-fun bs!1573511 () Bool)

(assert (= bs!1573511 (and d!1974828 d!1973910)))

(assert (=> bs!1573511 (= lambda!345712 lambda!345546)))

(declare-fun bs!1573512 () Bool)

(assert (= bs!1573512 (and d!1974828 d!1974352)))

(assert (=> bs!1573512 (= lambda!345712 lambda!345634)))

(declare-fun bs!1573513 () Bool)

(assert (= bs!1573513 (and d!1974828 d!1974090)))

(assert (=> bs!1573513 (= lambda!345712 lambda!345599)))

(declare-fun bs!1573514 () Bool)

(assert (= bs!1573514 (and d!1974828 d!1974056)))

(assert (=> bs!1573514 (= lambda!345712 lambda!345597)))

(declare-fun b!6292361 () Bool)

(declare-fun e!3826112 () Bool)

(declare-fun lt!2357425 () Regex!16213)

(assert (=> b!6292361 (= e!3826112 (isConcat!1142 lt!2357425))))

(declare-fun b!6292362 () Bool)

(assert (=> b!6292362 (= e!3826112 (= lt!2357425 (head!12926 (t!378501 lt!2357060))))))

(declare-fun e!3826110 () Bool)

(assert (=> d!1974828 e!3826110))

(declare-fun res!2594957 () Bool)

(assert (=> d!1974828 (=> (not res!2594957) (not e!3826110))))

(assert (=> d!1974828 (= res!2594957 (validRegex!7949 lt!2357425))))

(declare-fun e!3826111 () Regex!16213)

(assert (=> d!1974828 (= lt!2357425 e!3826111)))

(declare-fun c!1142050 () Bool)

(declare-fun e!3826109 () Bool)

(assert (=> d!1974828 (= c!1142050 e!3826109)))

(declare-fun res!2594956 () Bool)

(assert (=> d!1974828 (=> (not res!2594956) (not e!3826109))))

(assert (=> d!1974828 (= res!2594956 ((_ is Cons!64815) (t!378501 lt!2357060)))))

(assert (=> d!1974828 (forall!15362 (t!378501 lt!2357060) lambda!345712)))

(assert (=> d!1974828 (= (generalisedConcat!1810 (t!378501 lt!2357060)) lt!2357425)))

(declare-fun b!6292363 () Bool)

(declare-fun e!3826108 () Bool)

(assert (=> b!6292363 (= e!3826108 e!3826112)))

(declare-fun c!1142047 () Bool)

(assert (=> b!6292363 (= c!1142047 (isEmpty!36870 (tail!12011 (t!378501 lt!2357060))))))

(declare-fun b!6292364 () Bool)

(assert (=> b!6292364 (= e!3826109 (isEmpty!36870 (t!378501 (t!378501 lt!2357060))))))

(declare-fun b!6292365 () Bool)

(declare-fun e!3826113 () Regex!16213)

(assert (=> b!6292365 (= e!3826111 e!3826113)))

(declare-fun c!1142049 () Bool)

(assert (=> b!6292365 (= c!1142049 ((_ is Cons!64815) (t!378501 lt!2357060)))))

(declare-fun b!6292366 () Bool)

(assert (=> b!6292366 (= e!3826113 EmptyExpr!16213)))

(declare-fun b!6292367 () Bool)

(assert (=> b!6292367 (= e!3826113 (Concat!25058 (h!71263 (t!378501 lt!2357060)) (generalisedConcat!1810 (t!378501 (t!378501 lt!2357060)))))))

(declare-fun b!6292368 () Bool)

(assert (=> b!6292368 (= e!3826108 (isEmptyExpr!1619 lt!2357425))))

(declare-fun b!6292369 () Bool)

(assert (=> b!6292369 (= e!3826111 (h!71263 (t!378501 lt!2357060)))))

(declare-fun b!6292370 () Bool)

(assert (=> b!6292370 (= e!3826110 e!3826108)))

(declare-fun c!1142048 () Bool)

(assert (=> b!6292370 (= c!1142048 (isEmpty!36870 (t!378501 lt!2357060)))))

(assert (= (and d!1974828 res!2594956) b!6292364))

(assert (= (and d!1974828 c!1142050) b!6292369))

(assert (= (and d!1974828 (not c!1142050)) b!6292365))

(assert (= (and b!6292365 c!1142049) b!6292367))

(assert (= (and b!6292365 (not c!1142049)) b!6292366))

(assert (= (and d!1974828 res!2594957) b!6292370))

(assert (= (and b!6292370 c!1142048) b!6292368))

(assert (= (and b!6292370 (not c!1142048)) b!6292363))

(assert (= (and b!6292363 c!1142047) b!6292362))

(assert (= (and b!6292363 (not c!1142047)) b!6292361))

(declare-fun m!7113042 () Bool)

(assert (=> b!6292367 m!7113042))

(declare-fun m!7113044 () Bool)

(assert (=> b!6292362 m!7113044))

(declare-fun m!7113046 () Bool)

(assert (=> b!6292368 m!7113046))

(assert (=> b!6292370 m!7111258))

(declare-fun m!7113048 () Bool)

(assert (=> b!6292363 m!7113048))

(assert (=> b!6292363 m!7113048))

(declare-fun m!7113050 () Bool)

(assert (=> b!6292363 m!7113050))

(declare-fun m!7113052 () Bool)

(assert (=> b!6292361 m!7113052))

(declare-fun m!7113054 () Bool)

(assert (=> b!6292364 m!7113054))

(declare-fun m!7113056 () Bool)

(assert (=> d!1974828 m!7113056))

(declare-fun m!7113058 () Bool)

(assert (=> d!1974828 m!7113058))

(assert (=> b!6290712 d!1974828))

(declare-fun d!1974830 () Bool)

(assert (=> d!1974830 (= (isEmpty!36874 (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326)) (not ((_ is Some!16103) (findConcatSeparation!2518 (regOne!32938 r!7292) (regTwo!32938 r!7292) Nil!64814 s!2326 s!2326))))))

(assert (=> d!1973992 d!1974830))

(declare-fun b!6292375 () Bool)

(declare-fun e!3826118 () Int)

(assert (=> b!6292375 (= e!3826118 1)))

(declare-fun bm!532941 () Bool)

(declare-fun call!532947 () Int)

(declare-fun call!532946 () Int)

(assert (=> bm!532941 (= call!532947 call!532946)))

(declare-fun b!6292376 () Bool)

(declare-fun c!1142052 () Bool)

(assert (=> b!6292376 (= c!1142052 ((_ is Union!16213) (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun e!3826119 () Int)

(declare-fun e!3826117 () Int)

(assert (=> b!6292376 (= e!3826119 e!3826117)))

(declare-fun b!6292377 () Bool)

(assert (=> b!6292377 (= e!3826118 e!3826119)))

(declare-fun c!1142051 () Bool)

(assert (=> b!6292377 (= c!1142051 ((_ is Star!16213) (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun b!6292378 () Bool)

(assert (=> b!6292378 (= e!3826119 (+ 1 call!532946))))

(declare-fun b!6292379 () Bool)

(declare-fun e!3826116 () Int)

(declare-fun call!532948 () Int)

(assert (=> b!6292379 (= e!3826116 (+ 1 call!532947 call!532948))))

(declare-fun b!6292380 () Bool)

(assert (=> b!6292380 (= e!3826117 (+ 1 call!532947 call!532948))))

(declare-fun bm!532943 () Bool)

(assert (=> bm!532943 (= call!532946 (regexDepthTotal!187 (ite c!1142051 (reg!16542 (h!71263 (exprs!6097 lt!2357083))) (ite c!1142052 (regOne!32939 (h!71263 (exprs!6097 lt!2357083))) (regOne!32938 (h!71263 (exprs!6097 lt!2357083)))))))))

(declare-fun bm!532942 () Bool)

(assert (=> bm!532942 (= call!532948 (regexDepthTotal!187 (ite c!1142052 (regTwo!32939 (h!71263 (exprs!6097 lt!2357083))) (regTwo!32938 (h!71263 (exprs!6097 lt!2357083))))))))

(declare-fun d!1974832 () Bool)

(declare-fun lt!2357426 () Int)

(assert (=> d!1974832 (> lt!2357426 0)))

(assert (=> d!1974832 (= lt!2357426 e!3826118)))

(declare-fun c!1142054 () Bool)

(assert (=> d!1974832 (= c!1142054 ((_ is ElementMatch!16213) (h!71263 (exprs!6097 lt!2357083))))))

(assert (=> d!1974832 (= (regexDepthTotal!187 (h!71263 (exprs!6097 lt!2357083))) lt!2357426)))

(declare-fun b!6292381 () Bool)

(assert (=> b!6292381 (= e!3826117 e!3826116)))

(declare-fun c!1142053 () Bool)

(assert (=> b!6292381 (= c!1142053 ((_ is Concat!25058) (h!71263 (exprs!6097 lt!2357083))))))

(declare-fun b!6292382 () Bool)

(assert (=> b!6292382 (= e!3826116 1)))

(assert (= (and d!1974832 c!1142054) b!6292375))

(assert (= (and d!1974832 (not c!1142054)) b!6292377))

(assert (= (and b!6292377 c!1142051) b!6292378))

(assert (= (and b!6292377 (not c!1142051)) b!6292376))

(assert (= (and b!6292376 c!1142052) b!6292380))

(assert (= (and b!6292376 (not c!1142052)) b!6292381))

(assert (= (and b!6292381 c!1142053) b!6292379))

(assert (= (and b!6292381 (not c!1142053)) b!6292382))

(assert (= (or b!6292380 b!6292379) bm!532942))

(assert (= (or b!6292380 b!6292379) bm!532941))

(assert (= (or b!6292378 bm!532941) bm!532943))

(declare-fun m!7113060 () Bool)

(assert (=> bm!532943 m!7113060))

(declare-fun m!7113062 () Bool)

(assert (=> bm!532942 m!7113062))

(assert (=> b!6290586 d!1974832))

(declare-fun d!1974834 () Bool)

(declare-fun lt!2357427 () Int)

(assert (=> d!1974834 (>= lt!2357427 0)))

(declare-fun e!3826120 () Int)

(assert (=> d!1974834 (= lt!2357427 e!3826120)))

(declare-fun c!1142055 () Bool)

(assert (=> d!1974834 (= c!1142055 ((_ is Cons!64815) (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083))))))))

(assert (=> d!1974834 (= (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))) lt!2357427)))

(declare-fun b!6292383 () Bool)

(assert (=> b!6292383 (= e!3826120 (+ (regexDepthTotal!187 (h!71263 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))))) (contextDepthTotal!336 (Context!11195 (t!378501 (exprs!6097 (Context!11195 (t!378501 (exprs!6097 lt!2357083)))))))))))

(declare-fun b!6292384 () Bool)

(assert (=> b!6292384 (= e!3826120 1)))

(assert (= (and d!1974834 c!1142055) b!6292383))

(assert (= (and d!1974834 (not c!1142055)) b!6292384))

(declare-fun m!7113064 () Bool)

(assert (=> b!6292383 m!7113064))

(declare-fun m!7113066 () Bool)

(assert (=> b!6292383 m!7113066))

(assert (=> b!6290586 d!1974834))

(declare-fun d!1974836 () Bool)

(assert (=> d!1974836 (= (isEmpty!36874 (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326)) (not ((_ is Some!16103) (findConcatSeparation!2518 (regOne!32938 (regOne!32938 r!7292)) lt!2357070 Nil!64814 s!2326 s!2326))))))

(assert (=> d!1974002 d!1974836))

(declare-fun d!1974838 () Bool)

(assert (=> d!1974838 (= (nullable!6206 (reg!16542 r!7292)) (nullableFct!2157 (reg!16542 r!7292)))))

(declare-fun bs!1573517 () Bool)

(assert (= bs!1573517 d!1974838))

(declare-fun m!7113068 () Bool)

(assert (=> bs!1573517 m!7113068))

(assert (=> b!6290945 d!1974838))

(declare-fun d!1974840 () Bool)

(assert (=> d!1974840 (= (nullable!6206 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))) (nullableFct!2157 (Concat!25058 (regOne!32938 r!7292) (regTwo!32938 r!7292))))))

(declare-fun bs!1573519 () Bool)

(assert (= bs!1573519 d!1974840))

(declare-fun m!7113070 () Bool)

(assert (=> bs!1573519 m!7113070))

(assert (=> b!6290855 d!1974840))

(assert (=> b!6290917 d!1974128))

(assert (=> b!6290917 d!1974130))

(declare-fun d!1974842 () Bool)

(assert (=> d!1974842 true))

(assert (=> d!1974842 true))

(declare-fun res!2594962 () Bool)

(assert (=> d!1974842 (= (choose!46739 lambda!345480) res!2594962)))

(assert (=> d!1973984 d!1974842))

(assert (=> d!1973982 d!1974274))

(declare-fun b!6292385 () Bool)

(declare-fun e!3826127 () Bool)

(assert (=> b!6292385 (= e!3826127 (nullable!6206 (regOne!32938 r!7292)))))

(declare-fun b!6292386 () Bool)

(declare-fun res!2594967 () Bool)

(declare-fun e!3826124 () Bool)

(assert (=> b!6292386 (=> res!2594967 e!3826124)))

(declare-fun e!3826123 () Bool)

(assert (=> b!6292386 (= res!2594967 e!3826123)))

(declare-fun res!2594970 () Bool)

(assert (=> b!6292386 (=> (not res!2594970) (not e!3826123))))

(declare-fun lt!2357428 () Bool)

(assert (=> b!6292386 (= res!2594970 lt!2357428)))

(declare-fun b!6292387 () Bool)

(assert (=> b!6292387 (= e!3826123 (= (head!12927 Nil!64814) (c!1141284 (regOne!32938 r!7292))))))

(declare-fun b!6292388 () Bool)

(declare-fun e!3826125 () Bool)

(assert (=> b!6292388 (= e!3826125 (not (= (head!12927 Nil!64814) (c!1141284 (regOne!32938 r!7292)))))))

(declare-fun d!1974844 () Bool)

(declare-fun e!3826126 () Bool)

(assert (=> d!1974844 e!3826126))

(declare-fun c!1142056 () Bool)

(assert (=> d!1974844 (= c!1142056 ((_ is EmptyExpr!16213) (regOne!32938 r!7292)))))

(assert (=> d!1974844 (= lt!2357428 e!3826127)))

(declare-fun c!1142057 () Bool)

(assert (=> d!1974844 (= c!1142057 (isEmpty!36872 Nil!64814))))

(assert (=> d!1974844 (validRegex!7949 (regOne!32938 r!7292))))

(assert (=> d!1974844 (= (matchR!8396 (regOne!32938 r!7292) Nil!64814) lt!2357428)))

(declare-fun b!6292389 () Bool)

(declare-fun e!3826122 () Bool)

(assert (=> b!6292389 (= e!3826122 (not lt!2357428))))

(declare-fun b!6292390 () Bool)

(declare-fun e!3826121 () Bool)

(assert (=> b!6292390 (= e!3826124 e!3826121)))

(declare-fun res!2594969 () Bool)

(assert (=> b!6292390 (=> (not res!2594969) (not e!3826121))))

(assert (=> b!6292390 (= res!2594969 (not lt!2357428))))

(declare-fun bm!532944 () Bool)

(declare-fun call!532949 () Bool)

(assert (=> bm!532944 (= call!532949 (isEmpty!36872 Nil!64814))))

(declare-fun b!6292391 () Bool)

(assert (=> b!6292391 (= e!3826126 (= lt!2357428 call!532949))))

(declare-fun b!6292392 () Bool)

(assert (=> b!6292392 (= e!3826126 e!3826122)))

(declare-fun c!1142058 () Bool)

(assert (=> b!6292392 (= c!1142058 ((_ is EmptyLang!16213) (regOne!32938 r!7292)))))

(declare-fun b!6292393 () Bool)

(assert (=> b!6292393 (= e!3826121 e!3826125)))

(declare-fun res!2594968 () Bool)

(assert (=> b!6292393 (=> res!2594968 e!3826125)))

(assert (=> b!6292393 (= res!2594968 call!532949)))

(declare-fun b!6292394 () Bool)

(declare-fun res!2594964 () Bool)

(assert (=> b!6292394 (=> (not res!2594964) (not e!3826123))))

(assert (=> b!6292394 (= res!2594964 (not call!532949))))

(declare-fun b!6292395 () Bool)

(declare-fun res!2594963 () Bool)

(assert (=> b!6292395 (=> res!2594963 e!3826124)))

(assert (=> b!6292395 (= res!2594963 (not ((_ is ElementMatch!16213) (regOne!32938 r!7292))))))

(assert (=> b!6292395 (= e!3826122 e!3826124)))

(declare-fun b!6292396 () Bool)

(assert (=> b!6292396 (= e!3826127 (matchR!8396 (derivativeStep!4922 (regOne!32938 r!7292) (head!12927 Nil!64814)) (tail!12012 Nil!64814)))))

(declare-fun b!6292397 () Bool)

(declare-fun res!2594965 () Bool)

(assert (=> b!6292397 (=> (not res!2594965) (not e!3826123))))

(assert (=> b!6292397 (= res!2594965 (isEmpty!36872 (tail!12012 Nil!64814)))))

(declare-fun b!6292398 () Bool)

(declare-fun res!2594966 () Bool)

(assert (=> b!6292398 (=> res!2594966 e!3826125)))

(assert (=> b!6292398 (= res!2594966 (not (isEmpty!36872 (tail!12012 Nil!64814))))))

(assert (= (and d!1974844 c!1142057) b!6292385))

(assert (= (and d!1974844 (not c!1142057)) b!6292396))

(assert (= (and d!1974844 c!1142056) b!6292391))

(assert (= (and d!1974844 (not c!1142056)) b!6292392))

(assert (= (and b!6292392 c!1142058) b!6292389))

(assert (= (and b!6292392 (not c!1142058)) b!6292395))

(assert (= (and b!6292395 (not res!2594963)) b!6292386))

(assert (= (and b!6292386 res!2594970) b!6292394))

(assert (= (and b!6292394 res!2594964) b!6292397))

(assert (= (and b!6292397 res!2594965) b!6292387))

(assert (= (and b!6292386 (not res!2594967)) b!6292390))

(assert (= (and b!6292390 res!2594969) b!6292393))

(assert (= (and b!6292393 (not res!2594968)) b!6292398))

(assert (= (and b!6292398 (not res!2594966)) b!6292388))

(assert (= (or b!6292391 b!6292393 b!6292394) bm!532944))

(assert (=> bm!532944 m!7111854))

(assert (=> b!6292396 m!7111856))

(assert (=> b!6292396 m!7111856))

(declare-fun m!7113072 () Bool)

(assert (=> b!6292396 m!7113072))

(assert (=> b!6292396 m!7111860))

(assert (=> b!6292396 m!7113072))

(assert (=> b!6292396 m!7111860))

(declare-fun m!7113074 () Bool)

(assert (=> b!6292396 m!7113074))

(assert (=> b!6292388 m!7111856))

(assert (=> b!6292398 m!7111860))

(assert (=> b!6292398 m!7111860))

(assert (=> b!6292398 m!7111864))

(assert (=> b!6292385 m!7111802))

(assert (=> b!6292387 m!7111856))

(assert (=> b!6292397 m!7111860))

(assert (=> b!6292397 m!7111860))

(assert (=> b!6292397 m!7111864))

(assert (=> d!1974844 m!7111854))

(assert (=> d!1974844 m!7111172))

(assert (=> d!1973982 d!1974844))

(assert (=> d!1973982 d!1974398))

(declare-fun d!1974846 () Bool)

(declare-fun res!2594972 () Bool)

(declare-fun e!3826131 () Bool)

(assert (=> d!1974846 (=> res!2594972 e!3826131)))

(assert (=> d!1974846 (= res!2594972 ((_ is ElementMatch!16213) lt!2357257))))

(assert (=> d!1974846 (= (validRegex!7949 lt!2357257) e!3826131)))

(declare-fun b!6292399 () Bool)

(declare-fun res!2594974 () Bool)

(declare-fun e!3826132 () Bool)

(assert (=> b!6292399 (=> res!2594974 e!3826132)))

(assert (=> b!6292399 (= res!2594974 (not ((_ is Concat!25058) lt!2357257)))))

(declare-fun e!3826128 () Bool)

(assert (=> b!6292399 (= e!3826128 e!3826132)))

(declare-fun call!532952 () Bool)

(declare-fun c!1142059 () Bool)

(declare-fun bm!532945 () Bool)

(declare-fun c!1142060 () Bool)

(assert (=> bm!532945 (= call!532952 (validRegex!7949 (ite c!1142060 (reg!16542 lt!2357257) (ite c!1142059 (regTwo!32939 lt!2357257) (regTwo!32938 lt!2357257)))))))

(declare-fun b!6292400 () Bool)

(declare-fun e!3826130 () Bool)

(assert (=> b!6292400 (= e!3826130 e!3826128)))

(assert (=> b!6292400 (= c!1142059 ((_ is Union!16213) lt!2357257))))

(declare-fun bm!532946 () Bool)

(declare-fun call!532951 () Bool)

(assert (=> bm!532946 (= call!532951 call!532952)))

(declare-fun b!6292401 () Bool)

(declare-fun e!3826134 () Bool)

(assert (=> b!6292401 (= e!3826130 e!3826134)))

(declare-fun res!2594975 () Bool)

(assert (=> b!6292401 (= res!2594975 (not (nullable!6206 (reg!16542 lt!2357257))))))

(assert (=> b!6292401 (=> (not res!2594975) (not e!3826134))))

(declare-fun b!6292402 () Bool)

(assert (=> b!6292402 (= e!3826131 e!3826130)))

(assert (=> b!6292402 (= c!1142060 ((_ is Star!16213) lt!2357257))))

(declare-fun b!6292403 () Bool)

(declare-fun res!2594973 () Bool)

(declare-fun e!3826129 () Bool)

(assert (=> b!6292403 (=> (not res!2594973) (not e!3826129))))

(declare-fun call!532950 () Bool)

(assert (=> b!6292403 (= res!2594973 call!532950)))

(assert (=> b!6292403 (= e!3826128 e!3826129)))

(declare-fun bm!532947 () Bool)

(assert (=> bm!532947 (= call!532950 (validRegex!7949 (ite c!1142059 (regOne!32939 lt!2357257) (regOne!32938 lt!2357257))))))

(declare-fun b!6292404 () Bool)

(assert (=> b!6292404 (= e!3826134 call!532952)))

(declare-fun b!6292405 () Bool)

(declare-fun e!3826133 () Bool)

(assert (=> b!6292405 (= e!3826132 e!3826133)))

(declare-fun res!2594971 () Bool)

(assert (=> b!6292405 (=> (not res!2594971) (not e!3826133))))

(assert (=> b!6292405 (= res!2594971 call!532950)))

(declare-fun b!6292406 () Bool)

(assert (=> b!6292406 (= e!3826133 call!532951)))

(declare-fun b!6292407 () Bool)

(assert (=> b!6292407 (= e!3826129 call!532951)))

(assert (= (and d!1974846 (not res!2594972)) b!6292402))

(assert (= (and b!6292402 c!1142060) b!6292401))

(assert (= (and b!6292402 (not c!1142060)) b!6292400))

(assert (= (and b!6292401 res!2594975) b!6292404))

(assert (= (and b!6292400 c!1142059) b!6292403))

(assert (= (and b!6292400 (not c!1142059)) b!6292399))

(assert (= (and b!6292403 res!2594973) b!6292407))

(assert (= (and b!6292399 (not res!2594974)) b!6292405))

(assert (= (and b!6292405 res!2594971) b!6292406))

(assert (= (or b!6292407 b!6292406) bm!532946))

(assert (= (or b!6292403 b!6292405) bm!532947))

(assert (= (or b!6292404 bm!532946) bm!532945))

(declare-fun m!7113076 () Bool)

(assert (=> bm!532945 m!7113076))

(declare-fun m!7113078 () Bool)

(assert (=> b!6292401 m!7113078))

(declare-fun m!7113080 () Bool)

(assert (=> bm!532947 m!7113080))

(assert (=> d!1974034 d!1974846))

(declare-fun d!1974848 () Bool)

(declare-fun res!2594976 () Bool)

(declare-fun e!3826135 () Bool)

(assert (=> d!1974848 (=> res!2594976 e!3826135)))

(assert (=> d!1974848 (= res!2594976 ((_ is Nil!64815) lt!2357082))))

(assert (=> d!1974848 (= (forall!15362 lt!2357082 lambda!345577) e!3826135)))

(declare-fun b!6292408 () Bool)

(declare-fun e!3826136 () Bool)

(assert (=> b!6292408 (= e!3826135 e!3826136)))

(declare-fun res!2594977 () Bool)

(assert (=> b!6292408 (=> (not res!2594977) (not e!3826136))))

(assert (=> b!6292408 (= res!2594977 (dynLambda!25651 lambda!345577 (h!71263 lt!2357082)))))

(declare-fun b!6292409 () Bool)

(assert (=> b!6292409 (= e!3826136 (forall!15362 (t!378501 lt!2357082) lambda!345577))))

(assert (= (and d!1974848 (not res!2594976)) b!6292408))

(assert (= (and b!6292408 res!2594977) b!6292409))

(declare-fun b_lambda!239397 () Bool)

(assert (=> (not b_lambda!239397) (not b!6292408)))

(declare-fun m!7113082 () Bool)

(assert (=> b!6292408 m!7113082))

(declare-fun m!7113084 () Bool)

(assert (=> b!6292409 m!7113084))

(assert (=> d!1974034 d!1974848))

(declare-fun d!1974850 () Bool)

(assert (=> d!1974850 (= (isEmpty!36870 (tail!12011 (exprs!6097 (h!71264 zl!343)))) ((_ is Nil!64815) (tail!12011 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> b!6290897 d!1974850))

(declare-fun d!1974852 () Bool)

(assert (=> d!1974852 (= (tail!12011 (exprs!6097 (h!71264 zl!343))) (t!378501 (exprs!6097 (h!71264 zl!343))))))

(assert (=> b!6290897 d!1974852))

(declare-fun d!1974854 () Bool)

(declare-fun res!2594980 () Bool)

(declare-fun e!3826138 () Bool)

(assert (=> d!1974854 (=> res!2594980 e!3826138)))

(assert (=> d!1974854 (= res!2594980 ((_ is EmptyExpr!16213) (regOne!32938 (regOne!32938 r!7292))))))

(assert (=> d!1974854 (= (nullableFct!2157 (regOne!32938 (regOne!32938 r!7292))) e!3826138)))

(declare-fun bm!532948 () Bool)

(declare-fun call!532954 () Bool)

(declare-fun c!1142061 () Bool)

(assert (=> bm!532948 (= call!532954 (nullable!6206 (ite c!1142061 (regOne!32939 (regOne!32938 (regOne!32938 r!7292))) (regOne!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6292410 () Bool)

(declare-fun e!3826140 () Bool)

(declare-fun e!3826137 () Bool)

(assert (=> b!6292410 (= e!3826140 e!3826137)))

(assert (=> b!6292410 (= c!1142061 ((_ is Union!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6292411 () Bool)

(declare-fun e!3826139 () Bool)

(declare-fun call!532953 () Bool)

(assert (=> b!6292411 (= e!3826139 call!532953)))

(declare-fun b!6292412 () Bool)

(declare-fun e!3826142 () Bool)

(assert (=> b!6292412 (= e!3826137 e!3826142)))

(declare-fun res!2594981 () Bool)

(assert (=> b!6292412 (= res!2594981 call!532954)))

(assert (=> b!6292412 (=> res!2594981 e!3826142)))

(declare-fun b!6292413 () Bool)

(assert (=> b!6292413 (= e!3826137 e!3826139)))

(declare-fun res!2594979 () Bool)

(assert (=> b!6292413 (= res!2594979 call!532954)))

(assert (=> b!6292413 (=> (not res!2594979) (not e!3826139))))

(declare-fun b!6292414 () Bool)

(declare-fun e!3826141 () Bool)

(assert (=> b!6292414 (= e!3826138 e!3826141)))

(declare-fun res!2594982 () Bool)

(assert (=> b!6292414 (=> (not res!2594982) (not e!3826141))))

(assert (=> b!6292414 (= res!2594982 (and (not ((_ is EmptyLang!16213) (regOne!32938 (regOne!32938 r!7292)))) (not ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292))))))))

(declare-fun b!6292415 () Bool)

(assert (=> b!6292415 (= e!3826141 e!3826140)))

(declare-fun res!2594978 () Bool)

(assert (=> b!6292415 (=> res!2594978 e!3826140)))

(assert (=> b!6292415 (= res!2594978 ((_ is Star!16213) (regOne!32938 (regOne!32938 r!7292))))))

(declare-fun b!6292416 () Bool)

(assert (=> b!6292416 (= e!3826142 call!532953)))

(declare-fun bm!532949 () Bool)

(assert (=> bm!532949 (= call!532953 (nullable!6206 (ite c!1142061 (regTwo!32939 (regOne!32938 (regOne!32938 r!7292))) (regTwo!32938 (regOne!32938 (regOne!32938 r!7292))))))))

(assert (= (and d!1974854 (not res!2594980)) b!6292414))

(assert (= (and b!6292414 res!2594982) b!6292415))

(assert (= (and b!6292415 (not res!2594978)) b!6292410))

(assert (= (and b!6292410 c!1142061) b!6292412))

(assert (= (and b!6292410 (not c!1142061)) b!6292413))

(assert (= (and b!6292412 (not res!2594981)) b!6292416))

(assert (= (and b!6292413 res!2594979) b!6292411))

(assert (= (or b!6292416 b!6292411) bm!532949))

(assert (= (or b!6292412 b!6292413) bm!532948))

(declare-fun m!7113088 () Bool)

(assert (=> bm!532948 m!7113088))

(declare-fun m!7113090 () Bool)

(assert (=> bm!532949 m!7113090))

(assert (=> d!1973964 d!1974854))

(declare-fun bs!1573539 () Bool)

(declare-fun d!1974858 () Bool)

(assert (= bs!1573539 (and d!1974858 d!1974428)))

(declare-fun lambda!345716 () Int)

(assert (=> bs!1573539 (= lambda!345716 lambda!345659)))

(declare-fun bs!1573540 () Bool)

(assert (= bs!1573540 (and d!1974858 d!1974734)))

(assert (=> bs!1573540 (not (= lambda!345716 lambda!345702))))

(declare-fun bs!1573541 () Bool)

(assert (= bs!1573541 (and d!1974858 d!1974166)))

(assert (=> bs!1573541 (= lambda!345716 lambda!345614)))

(declare-fun bs!1573542 () Bool)

(assert (= bs!1573542 (and d!1974858 d!1974360)))

(assert (=> bs!1573542 (= lambda!345716 lambda!345637)))

(declare-fun bs!1573543 () Bool)

(assert (= bs!1573543 (and d!1974858 d!1974158)))

(assert (=> bs!1573543 (not (= lambda!345716 lambda!345608))))

(declare-fun bs!1573544 () Bool)

(assert (= bs!1573544 (and d!1974858 b!6290783)))

(assert (=> bs!1573544 (not (= lambda!345716 lambda!345590))))

(declare-fun bs!1573545 () Bool)

(assert (= bs!1573545 (and d!1974858 d!1974354)))

(assert (=> bs!1573545 (= lambda!345716 lambda!345635)))

(declare-fun bs!1573546 () Bool)

(assert (= bs!1573546 (and d!1974858 d!1974678)))

(assert (=> bs!1573546 (= lambda!345716 lambda!345690)))

(declare-fun bs!1573547 () Bool)

(assert (= bs!1573547 (and d!1974858 d!1974486)))

(assert (=> bs!1573547 (= lambda!345716 lambda!345669)))

(declare-fun bs!1573548 () Bool)

(assert (= bs!1573548 (and d!1974858 b!6292180)))

(assert (=> bs!1573548 (not (= lambda!345716 lambda!345701))))

(declare-fun bs!1573549 () Bool)

(assert (= bs!1573549 (and d!1974858 b!6291144)))

(assert (=> bs!1573549 (not (= lambda!345716 lambda!345611))))

(declare-fun bs!1573550 () Bool)

(assert (= bs!1573550 (and d!1974858 b!6291142)))

(assert (=> bs!1573550 (not (= lambda!345716 lambda!345610))))

(declare-fun bs!1573551 () Bool)

(assert (= bs!1573551 (and d!1974858 b!6292178)))

(assert (=> bs!1573551 (not (= lambda!345716 lambda!345700))))

(declare-fun bs!1573552 () Bool)

(assert (= bs!1573552 (and d!1974858 d!1974372)))

(assert (=> bs!1573552 (= lambda!345716 lambda!345639)))

(declare-fun bs!1573553 () Bool)

(assert (= bs!1573553 (and d!1974858 d!1974630)))

(assert (=> bs!1573553 (= lambda!345716 lambda!345686)))

(declare-fun bs!1573554 () Bool)

(assert (= bs!1573554 (and d!1974858 d!1974458)))

(assert (=> bs!1573554 (= lambda!345716 lambda!345664)))

(declare-fun bs!1573555 () Bool)

(assert (= bs!1573555 (and d!1974858 d!1974456)))

(assert (=> bs!1573555 (= lambda!345716 lambda!345663)))

(declare-fun bs!1573556 () Bool)

(assert (= bs!1573556 (and d!1974858 d!1974680)))

(assert (=> bs!1573556 (= lambda!345716 lambda!345691)))

(declare-fun bs!1573557 () Bool)

(assert (= bs!1573557 (and d!1974858 b!6290786)))

(assert (=> bs!1573557 (not (= lambda!345716 lambda!345592))))

(declare-fun bs!1573558 () Bool)

(assert (= bs!1573558 (and d!1974858 d!1974208)))

(assert (=> bs!1573558 (= lambda!345716 lambda!345619)))

(declare-fun bs!1573560 () Bool)

(assert (= bs!1573560 (and d!1974858 b!6290788)))

(assert (=> bs!1573560 (not (= lambda!345716 lambda!345593))))

(declare-fun bs!1573562 () Bool)

(assert (= bs!1573562 (and d!1974858 b!6290781)))

(assert (=> bs!1573562 (not (= lambda!345716 lambda!345589))))

(assert (=> d!1974858 (= (nullableZipper!1983 lt!2357052) (exists!2528 lt!2357052 lambda!345716))))

(declare-fun bs!1573565 () Bool)

(assert (= bs!1573565 d!1974858))

(declare-fun m!7113100 () Bool)

(assert (=> bs!1573565 m!7113100))

(assert (=> b!6290960 d!1974858))

(declare-fun b!6292433 () Bool)

(declare-fun e!3826156 () Bool)

(declare-fun tp!1751821 () Bool)

(assert (=> b!6292433 (= e!3826156 (and tp_is_empty!41679 tp!1751821))))

(assert (=> b!6290985 (= tp!1751764 e!3826156)))

(assert (= (and b!6290985 ((_ is Cons!64814) (t!378500 (t!378500 s!2326)))) b!6292433))

(declare-fun b!6292434 () Bool)

(declare-fun e!3826157 () Bool)

(declare-fun tp!1751822 () Bool)

(declare-fun tp!1751823 () Bool)

(assert (=> b!6292434 (= e!3826157 (and tp!1751822 tp!1751823))))

(assert (=> b!6291015 (= tp!1751797 e!3826157)))

(assert (= (and b!6291015 ((_ is Cons!64815) (exprs!6097 (h!71264 (t!378502 zl!343))))) b!6292434))

(declare-fun b!6292436 () Bool)

(declare-fun e!3826159 () Bool)

(declare-fun tp!1751827 () Bool)

(declare-fun tp!1751824 () Bool)

(assert (=> b!6292436 (= e!3826159 (and tp!1751827 tp!1751824))))

(assert (=> b!6291000 (= tp!1751785 e!3826159)))

(declare-fun b!6292438 () Bool)

(declare-fun tp!1751825 () Bool)

(declare-fun tp!1751826 () Bool)

(assert (=> b!6292438 (= e!3826159 (and tp!1751825 tp!1751826))))

(declare-fun b!6292435 () Bool)

(assert (=> b!6292435 (= e!3826159 tp_is_empty!41679)))

(declare-fun b!6292437 () Bool)

(declare-fun tp!1751828 () Bool)

(assert (=> b!6292437 (= e!3826159 tp!1751828)))

(assert (= (and b!6291000 ((_ is ElementMatch!16213) (regOne!32938 (regTwo!32939 r!7292)))) b!6292435))

(assert (= (and b!6291000 ((_ is Concat!25058) (regOne!32938 (regTwo!32939 r!7292)))) b!6292436))

(assert (= (and b!6291000 ((_ is Star!16213) (regOne!32938 (regTwo!32939 r!7292)))) b!6292437))

(assert (= (and b!6291000 ((_ is Union!16213) (regOne!32938 (regTwo!32939 r!7292)))) b!6292438))

(declare-fun b!6292449 () Bool)

(declare-fun e!3826166 () Bool)

(declare-fun tp!1751832 () Bool)

(declare-fun tp!1751829 () Bool)

(assert (=> b!6292449 (= e!3826166 (and tp!1751832 tp!1751829))))

(assert (=> b!6291000 (= tp!1751782 e!3826166)))

(declare-fun b!6292451 () Bool)

(declare-fun tp!1751830 () Bool)

(declare-fun tp!1751831 () Bool)

(assert (=> b!6292451 (= e!3826166 (and tp!1751830 tp!1751831))))

(declare-fun b!6292448 () Bool)

(assert (=> b!6292448 (= e!3826166 tp_is_empty!41679)))

(declare-fun b!6292450 () Bool)

(declare-fun tp!1751833 () Bool)

(assert (=> b!6292450 (= e!3826166 tp!1751833)))

(assert (= (and b!6291000 ((_ is ElementMatch!16213) (regTwo!32938 (regTwo!32939 r!7292)))) b!6292448))

(assert (= (and b!6291000 ((_ is Concat!25058) (regTwo!32938 (regTwo!32939 r!7292)))) b!6292449))

(assert (= (and b!6291000 ((_ is Star!16213) (regTwo!32938 (regTwo!32939 r!7292)))) b!6292450))

(assert (= (and b!6291000 ((_ is Union!16213) (regTwo!32938 (regTwo!32939 r!7292)))) b!6292451))

(declare-fun b!6292453 () Bool)

(declare-fun e!3826168 () Bool)

(declare-fun tp!1751834 () Bool)

(assert (=> b!6292453 (= e!3826168 tp!1751834)))

(declare-fun tp!1751835 () Bool)

(declare-fun e!3826167 () Bool)

(declare-fun b!6292452 () Bool)

(assert (=> b!6292452 (= e!3826167 (and (inv!83779 (h!71264 (t!378502 (t!378502 zl!343)))) e!3826168 tp!1751835))))

(assert (=> b!6291014 (= tp!1751798 e!3826167)))

(assert (= b!6292452 b!6292453))

(assert (= (and b!6291014 ((_ is Cons!64816) (t!378502 (t!378502 zl!343)))) b!6292452))

(declare-fun m!7113112 () Bool)

(assert (=> b!6292452 m!7113112))

(declare-fun b!6292454 () Bool)

(declare-fun e!3826169 () Bool)

(declare-fun tp!1751836 () Bool)

(declare-fun tp!1751837 () Bool)

(assert (=> b!6292454 (= e!3826169 (and tp!1751836 tp!1751837))))

(assert (=> b!6291007 (= tp!1751792 e!3826169)))

(assert (= (and b!6291007 ((_ is Cons!64815) (exprs!6097 setElem!42818))) b!6292454))

(declare-fun b!6292456 () Bool)

(declare-fun e!3826170 () Bool)

(declare-fun tp!1751841 () Bool)

(declare-fun tp!1751838 () Bool)

(assert (=> b!6292456 (= e!3826170 (and tp!1751841 tp!1751838))))

(assert (=> b!6290990 (= tp!1751768 e!3826170)))

(declare-fun b!6292458 () Bool)

(declare-fun tp!1751839 () Bool)

(declare-fun tp!1751840 () Bool)

(assert (=> b!6292458 (= e!3826170 (and tp!1751839 tp!1751840))))

(declare-fun b!6292455 () Bool)

(assert (=> b!6292455 (= e!3826170 tp_is_empty!41679)))

(declare-fun b!6292457 () Bool)

(declare-fun tp!1751842 () Bool)

(assert (=> b!6292457 (= e!3826170 tp!1751842)))

(assert (= (and b!6290990 ((_ is ElementMatch!16213) (regOne!32939 (regOne!32938 r!7292)))) b!6292455))

(assert (= (and b!6290990 ((_ is Concat!25058) (regOne!32939 (regOne!32938 r!7292)))) b!6292456))

(assert (= (and b!6290990 ((_ is Star!16213) (regOne!32939 (regOne!32938 r!7292)))) b!6292457))

(assert (= (and b!6290990 ((_ is Union!16213) (regOne!32939 (regOne!32938 r!7292)))) b!6292458))

(declare-fun b!6292460 () Bool)

(declare-fun e!3826171 () Bool)

(declare-fun tp!1751846 () Bool)

(declare-fun tp!1751843 () Bool)

(assert (=> b!6292460 (= e!3826171 (and tp!1751846 tp!1751843))))

(assert (=> b!6290990 (= tp!1751769 e!3826171)))

(declare-fun b!6292462 () Bool)

(declare-fun tp!1751844 () Bool)

(declare-fun tp!1751845 () Bool)

(assert (=> b!6292462 (= e!3826171 (and tp!1751844 tp!1751845))))

(declare-fun b!6292459 () Bool)

(assert (=> b!6292459 (= e!3826171 tp_is_empty!41679)))

(declare-fun b!6292461 () Bool)

(declare-fun tp!1751847 () Bool)

(assert (=> b!6292461 (= e!3826171 tp!1751847)))

(assert (= (and b!6290990 ((_ is ElementMatch!16213) (regTwo!32939 (regOne!32938 r!7292)))) b!6292459))

(assert (= (and b!6290990 ((_ is Concat!25058) (regTwo!32939 (regOne!32938 r!7292)))) b!6292460))

(assert (= (and b!6290990 ((_ is Star!16213) (regTwo!32939 (regOne!32938 r!7292)))) b!6292461))

(assert (= (and b!6290990 ((_ is Union!16213) (regTwo!32939 (regOne!32938 r!7292)))) b!6292462))

(declare-fun condSetEmpty!42824 () Bool)

(assert (=> setNonEmpty!42818 (= condSetEmpty!42824 (= setRest!42818 ((as const (Array Context!11194 Bool)) false)))))

(declare-fun setRes!42824 () Bool)

(assert (=> setNonEmpty!42818 (= tp!1751791 setRes!42824)))

(declare-fun setIsEmpty!42824 () Bool)

(assert (=> setIsEmpty!42824 setRes!42824))

(declare-fun setNonEmpty!42824 () Bool)

(declare-fun tp!1751848 () Bool)

(declare-fun e!3826172 () Bool)

(declare-fun setElem!42824 () Context!11194)

(assert (=> setNonEmpty!42824 (= setRes!42824 (and tp!1751848 (inv!83779 setElem!42824) e!3826172))))

(declare-fun setRest!42824 () (InoxSet Context!11194))

(assert (=> setNonEmpty!42824 (= setRest!42818 ((_ map or) (store ((as const (Array Context!11194 Bool)) false) setElem!42824 true) setRest!42824))))

(declare-fun b!6292463 () Bool)

(declare-fun tp!1751849 () Bool)

(assert (=> b!6292463 (= e!3826172 tp!1751849)))

(assert (= (and setNonEmpty!42818 condSetEmpty!42824) setIsEmpty!42824))

(assert (= (and setNonEmpty!42818 (not condSetEmpty!42824)) setNonEmpty!42824))

(assert (= setNonEmpty!42824 b!6292463))

(declare-fun m!7113116 () Bool)

(assert (=> setNonEmpty!42824 m!7113116))

(declare-fun b!6292476 () Bool)

(declare-fun e!3826179 () Bool)

(declare-fun tp!1751853 () Bool)

(declare-fun tp!1751850 () Bool)

(assert (=> b!6292476 (= e!3826179 (and tp!1751853 tp!1751850))))

(assert (=> b!6290988 (= tp!1751770 e!3826179)))

(declare-fun b!6292478 () Bool)

(declare-fun tp!1751851 () Bool)

(declare-fun tp!1751852 () Bool)

(assert (=> b!6292478 (= e!3826179 (and tp!1751851 tp!1751852))))

(declare-fun b!6292475 () Bool)

(assert (=> b!6292475 (= e!3826179 tp_is_empty!41679)))

(declare-fun b!6292477 () Bool)

(declare-fun tp!1751854 () Bool)

(assert (=> b!6292477 (= e!3826179 tp!1751854)))

(assert (= (and b!6290988 ((_ is ElementMatch!16213) (regOne!32938 (regOne!32938 r!7292)))) b!6292475))

(assert (= (and b!6290988 ((_ is Concat!25058) (regOne!32938 (regOne!32938 r!7292)))) b!6292476))

(assert (= (and b!6290988 ((_ is Star!16213) (regOne!32938 (regOne!32938 r!7292)))) b!6292477))

(assert (= (and b!6290988 ((_ is Union!16213) (regOne!32938 (regOne!32938 r!7292)))) b!6292478))

(declare-fun b!6292480 () Bool)

(declare-fun e!3826180 () Bool)

(declare-fun tp!1751858 () Bool)

(declare-fun tp!1751855 () Bool)

(assert (=> b!6292480 (= e!3826180 (and tp!1751858 tp!1751855))))

(assert (=> b!6290988 (= tp!1751767 e!3826180)))

(declare-fun b!6292482 () Bool)

(declare-fun tp!1751856 () Bool)

(declare-fun tp!1751857 () Bool)

(assert (=> b!6292482 (= e!3826180 (and tp!1751856 tp!1751857))))

(declare-fun b!6292479 () Bool)

(assert (=> b!6292479 (= e!3826180 tp_is_empty!41679)))

(declare-fun b!6292481 () Bool)

(declare-fun tp!1751859 () Bool)

(assert (=> b!6292481 (= e!3826180 tp!1751859)))

(assert (= (and b!6290988 ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32938 r!7292)))) b!6292479))

(assert (= (and b!6290988 ((_ is Concat!25058) (regTwo!32938 (regOne!32938 r!7292)))) b!6292480))

(assert (= (and b!6290988 ((_ is Star!16213) (regTwo!32938 (regOne!32938 r!7292)))) b!6292481))

(assert (= (and b!6290988 ((_ is Union!16213) (regTwo!32938 (regOne!32938 r!7292)))) b!6292482))

(declare-fun b!6292484 () Bool)

(declare-fun e!3826181 () Bool)

(declare-fun tp!1751863 () Bool)

(declare-fun tp!1751860 () Bool)

(assert (=> b!6292484 (= e!3826181 (and tp!1751863 tp!1751860))))

(assert (=> b!6290996 (= tp!1751780 e!3826181)))

(declare-fun b!6292486 () Bool)

(declare-fun tp!1751861 () Bool)

(declare-fun tp!1751862 () Bool)

(assert (=> b!6292486 (= e!3826181 (and tp!1751861 tp!1751862))))

(declare-fun b!6292483 () Bool)

(assert (=> b!6292483 (= e!3826181 tp_is_empty!41679)))

(declare-fun b!6292485 () Bool)

(declare-fun tp!1751864 () Bool)

(assert (=> b!6292485 (= e!3826181 tp!1751864)))

(assert (= (and b!6290996 ((_ is ElementMatch!16213) (regOne!32938 (regOne!32939 r!7292)))) b!6292483))

(assert (= (and b!6290996 ((_ is Concat!25058) (regOne!32938 (regOne!32939 r!7292)))) b!6292484))

(assert (= (and b!6290996 ((_ is Star!16213) (regOne!32938 (regOne!32939 r!7292)))) b!6292485))

(assert (= (and b!6290996 ((_ is Union!16213) (regOne!32938 (regOne!32939 r!7292)))) b!6292486))

(declare-fun b!6292488 () Bool)

(declare-fun e!3826182 () Bool)

(declare-fun tp!1751868 () Bool)

(declare-fun tp!1751865 () Bool)

(assert (=> b!6292488 (= e!3826182 (and tp!1751868 tp!1751865))))

(assert (=> b!6290996 (= tp!1751777 e!3826182)))

(declare-fun b!6292490 () Bool)

(declare-fun tp!1751866 () Bool)

(declare-fun tp!1751867 () Bool)

(assert (=> b!6292490 (= e!3826182 (and tp!1751866 tp!1751867))))

(declare-fun b!6292487 () Bool)

(assert (=> b!6292487 (= e!3826182 tp_is_empty!41679)))

(declare-fun b!6292489 () Bool)

(declare-fun tp!1751869 () Bool)

(assert (=> b!6292489 (= e!3826182 tp!1751869)))

(assert (= (and b!6290996 ((_ is ElementMatch!16213) (regTwo!32938 (regOne!32939 r!7292)))) b!6292487))

(assert (= (and b!6290996 ((_ is Concat!25058) (regTwo!32938 (regOne!32939 r!7292)))) b!6292488))

(assert (= (and b!6290996 ((_ is Star!16213) (regTwo!32938 (regOne!32939 r!7292)))) b!6292489))

(assert (= (and b!6290996 ((_ is Union!16213) (regTwo!32938 (regOne!32939 r!7292)))) b!6292490))

(declare-fun b!6292492 () Bool)

(declare-fun e!3826183 () Bool)

(declare-fun tp!1751873 () Bool)

(declare-fun tp!1751870 () Bool)

(assert (=> b!6292492 (= e!3826183 (and tp!1751873 tp!1751870))))

(assert (=> b!6290998 (= tp!1751778 e!3826183)))

(declare-fun b!6292494 () Bool)

(declare-fun tp!1751871 () Bool)

(declare-fun tp!1751872 () Bool)

(assert (=> b!6292494 (= e!3826183 (and tp!1751871 tp!1751872))))

(declare-fun b!6292491 () Bool)

(assert (=> b!6292491 (= e!3826183 tp_is_empty!41679)))

(declare-fun b!6292493 () Bool)

(declare-fun tp!1751874 () Bool)

(assert (=> b!6292493 (= e!3826183 tp!1751874)))

(assert (= (and b!6290998 ((_ is ElementMatch!16213) (regOne!32939 (regOne!32939 r!7292)))) b!6292491))

(assert (= (and b!6290998 ((_ is Concat!25058) (regOne!32939 (regOne!32939 r!7292)))) b!6292492))

(assert (= (and b!6290998 ((_ is Star!16213) (regOne!32939 (regOne!32939 r!7292)))) b!6292493))

(assert (= (and b!6290998 ((_ is Union!16213) (regOne!32939 (regOne!32939 r!7292)))) b!6292494))

(declare-fun b!6292496 () Bool)

(declare-fun e!3826184 () Bool)

(declare-fun tp!1751878 () Bool)

(declare-fun tp!1751875 () Bool)

(assert (=> b!6292496 (= e!3826184 (and tp!1751878 tp!1751875))))

(assert (=> b!6290998 (= tp!1751779 e!3826184)))

(declare-fun b!6292498 () Bool)

(declare-fun tp!1751876 () Bool)

(declare-fun tp!1751877 () Bool)

(assert (=> b!6292498 (= e!3826184 (and tp!1751876 tp!1751877))))

(declare-fun b!6292495 () Bool)

(assert (=> b!6292495 (= e!3826184 tp_is_empty!41679)))

(declare-fun b!6292497 () Bool)

(declare-fun tp!1751879 () Bool)

(assert (=> b!6292497 (= e!3826184 tp!1751879)))

(assert (= (and b!6290998 ((_ is ElementMatch!16213) (regTwo!32939 (regOne!32939 r!7292)))) b!6292495))

(assert (= (and b!6290998 ((_ is Concat!25058) (regTwo!32939 (regOne!32939 r!7292)))) b!6292496))

(assert (= (and b!6290998 ((_ is Star!16213) (regTwo!32939 (regOne!32939 r!7292)))) b!6292497))

(assert (= (and b!6290998 ((_ is Union!16213) (regTwo!32939 (regOne!32939 r!7292)))) b!6292498))

(declare-fun b!6292500 () Bool)

(declare-fun e!3826185 () Bool)

(declare-fun tp!1751883 () Bool)

(declare-fun tp!1751880 () Bool)

(assert (=> b!6292500 (= e!3826185 (and tp!1751883 tp!1751880))))

(assert (=> b!6290997 (= tp!1751781 e!3826185)))

(declare-fun b!6292502 () Bool)

(declare-fun tp!1751881 () Bool)

(declare-fun tp!1751882 () Bool)

(assert (=> b!6292502 (= e!3826185 (and tp!1751881 tp!1751882))))

(declare-fun b!6292499 () Bool)

(assert (=> b!6292499 (= e!3826185 tp_is_empty!41679)))

(declare-fun b!6292501 () Bool)

(declare-fun tp!1751884 () Bool)

(assert (=> b!6292501 (= e!3826185 tp!1751884)))

(assert (= (and b!6290997 ((_ is ElementMatch!16213) (reg!16542 (regOne!32939 r!7292)))) b!6292499))

(assert (= (and b!6290997 ((_ is Concat!25058) (reg!16542 (regOne!32939 r!7292)))) b!6292500))

(assert (= (and b!6290997 ((_ is Star!16213) (reg!16542 (regOne!32939 r!7292)))) b!6292501))

(assert (= (and b!6290997 ((_ is Union!16213) (reg!16542 (regOne!32939 r!7292)))) b!6292502))

(declare-fun b!6292504 () Bool)

(declare-fun e!3826186 () Bool)

(declare-fun tp!1751888 () Bool)

(declare-fun tp!1751885 () Bool)

(assert (=> b!6292504 (= e!3826186 (and tp!1751888 tp!1751885))))

(assert (=> b!6290989 (= tp!1751771 e!3826186)))

(declare-fun b!6292506 () Bool)

(declare-fun tp!1751886 () Bool)

(declare-fun tp!1751887 () Bool)

(assert (=> b!6292506 (= e!3826186 (and tp!1751886 tp!1751887))))

(declare-fun b!6292503 () Bool)

(assert (=> b!6292503 (= e!3826186 tp_is_empty!41679)))

(declare-fun b!6292505 () Bool)

(declare-fun tp!1751889 () Bool)

(assert (=> b!6292505 (= e!3826186 tp!1751889)))

(assert (= (and b!6290989 ((_ is ElementMatch!16213) (reg!16542 (regOne!32938 r!7292)))) b!6292503))

(assert (= (and b!6290989 ((_ is Concat!25058) (reg!16542 (regOne!32938 r!7292)))) b!6292504))

(assert (= (and b!6290989 ((_ is Star!16213) (reg!16542 (regOne!32938 r!7292)))) b!6292505))

(assert (= (and b!6290989 ((_ is Union!16213) (reg!16542 (regOne!32938 r!7292)))) b!6292506))

(declare-fun b!6292508 () Bool)

(declare-fun e!3826187 () Bool)

(declare-fun tp!1751893 () Bool)

(declare-fun tp!1751890 () Bool)

(assert (=> b!6292508 (= e!3826187 (and tp!1751893 tp!1751890))))

(assert (=> b!6290974 (= tp!1751755 e!3826187)))

(declare-fun b!6292510 () Bool)

(declare-fun tp!1751891 () Bool)

(declare-fun tp!1751892 () Bool)

(assert (=> b!6292510 (= e!3826187 (and tp!1751891 tp!1751892))))

(declare-fun b!6292507 () Bool)

(assert (=> b!6292507 (= e!3826187 tp_is_empty!41679)))

(declare-fun b!6292509 () Bool)

(declare-fun tp!1751894 () Bool)

(assert (=> b!6292509 (= e!3826187 tp!1751894)))

(assert (= (and b!6290974 ((_ is ElementMatch!16213) (reg!16542 (reg!16542 r!7292)))) b!6292507))

(assert (= (and b!6290974 ((_ is Concat!25058) (reg!16542 (reg!16542 r!7292)))) b!6292508))

(assert (= (and b!6290974 ((_ is Star!16213) (reg!16542 (reg!16542 r!7292)))) b!6292509))

(assert (= (and b!6290974 ((_ is Union!16213) (reg!16542 (reg!16542 r!7292)))) b!6292510))

(declare-fun b!6292521 () Bool)

(declare-fun e!3826195 () Bool)

(declare-fun tp!1751898 () Bool)

(declare-fun tp!1751895 () Bool)

(assert (=> b!6292521 (= e!3826195 (and tp!1751898 tp!1751895))))

(assert (=> b!6290975 (= tp!1751752 e!3826195)))

(declare-fun b!6292523 () Bool)

(declare-fun tp!1751896 () Bool)

(declare-fun tp!1751897 () Bool)

(assert (=> b!6292523 (= e!3826195 (and tp!1751896 tp!1751897))))

(declare-fun b!6292520 () Bool)

(assert (=> b!6292520 (= e!3826195 tp_is_empty!41679)))

(declare-fun b!6292522 () Bool)

(declare-fun tp!1751899 () Bool)

(assert (=> b!6292522 (= e!3826195 tp!1751899)))

(assert (= (and b!6290975 ((_ is ElementMatch!16213) (regOne!32939 (reg!16542 r!7292)))) b!6292520))

(assert (= (and b!6290975 ((_ is Concat!25058) (regOne!32939 (reg!16542 r!7292)))) b!6292521))

(assert (= (and b!6290975 ((_ is Star!16213) (regOne!32939 (reg!16542 r!7292)))) b!6292522))

(assert (= (and b!6290975 ((_ is Union!16213) (regOne!32939 (reg!16542 r!7292)))) b!6292523))

(declare-fun b!6292525 () Bool)

(declare-fun e!3826196 () Bool)

(declare-fun tp!1751903 () Bool)

(declare-fun tp!1751900 () Bool)

(assert (=> b!6292525 (= e!3826196 (and tp!1751903 tp!1751900))))

(assert (=> b!6290975 (= tp!1751753 e!3826196)))

(declare-fun b!6292527 () Bool)

(declare-fun tp!1751901 () Bool)

(declare-fun tp!1751902 () Bool)

(assert (=> b!6292527 (= e!3826196 (and tp!1751901 tp!1751902))))

(declare-fun b!6292524 () Bool)

(assert (=> b!6292524 (= e!3826196 tp_is_empty!41679)))

(declare-fun b!6292526 () Bool)

(declare-fun tp!1751904 () Bool)

(assert (=> b!6292526 (= e!3826196 tp!1751904)))

(assert (= (and b!6290975 ((_ is ElementMatch!16213) (regTwo!32939 (reg!16542 r!7292)))) b!6292524))

(assert (= (and b!6290975 ((_ is Concat!25058) (regTwo!32939 (reg!16542 r!7292)))) b!6292525))

(assert (= (and b!6290975 ((_ is Star!16213) (regTwo!32939 (reg!16542 r!7292)))) b!6292526))

(assert (= (and b!6290975 ((_ is Union!16213) (regTwo!32939 (reg!16542 r!7292)))) b!6292527))

(declare-fun b!6292529 () Bool)

(declare-fun e!3826197 () Bool)

(declare-fun tp!1751908 () Bool)

(declare-fun tp!1751905 () Bool)

(assert (=> b!6292529 (= e!3826197 (and tp!1751908 tp!1751905))))

(assert (=> b!6290986 (= tp!1751765 e!3826197)))

(declare-fun b!6292531 () Bool)

(declare-fun tp!1751906 () Bool)

(declare-fun tp!1751907 () Bool)

(assert (=> b!6292531 (= e!3826197 (and tp!1751906 tp!1751907))))

(declare-fun b!6292528 () Bool)

(assert (=> b!6292528 (= e!3826197 tp_is_empty!41679)))

(declare-fun b!6292530 () Bool)

(declare-fun tp!1751909 () Bool)

(assert (=> b!6292530 (= e!3826197 tp!1751909)))

(assert (= (and b!6290986 ((_ is ElementMatch!16213) (h!71263 (exprs!6097 (h!71264 zl!343))))) b!6292528))

(assert (= (and b!6290986 ((_ is Concat!25058) (h!71263 (exprs!6097 (h!71264 zl!343))))) b!6292529))

(assert (= (and b!6290986 ((_ is Star!16213) (h!71263 (exprs!6097 (h!71264 zl!343))))) b!6292530))

(assert (= (and b!6290986 ((_ is Union!16213) (h!71263 (exprs!6097 (h!71264 zl!343))))) b!6292531))

(declare-fun b!6292532 () Bool)

(declare-fun e!3826198 () Bool)

(declare-fun tp!1751910 () Bool)

(declare-fun tp!1751911 () Bool)

(assert (=> b!6292532 (= e!3826198 (and tp!1751910 tp!1751911))))

(assert (=> b!6290986 (= tp!1751766 e!3826198)))

(assert (= (and b!6290986 ((_ is Cons!64815) (t!378501 (exprs!6097 (h!71264 zl!343))))) b!6292532))

(declare-fun b!6292536 () Bool)

(declare-fun e!3826201 () Bool)

(declare-fun tp!1751915 () Bool)

(declare-fun tp!1751912 () Bool)

(assert (=> b!6292536 (= e!3826201 (and tp!1751915 tp!1751912))))

(assert (=> b!6290980 (= tp!1751760 e!3826201)))

(declare-fun b!6292538 () Bool)

(declare-fun tp!1751913 () Bool)

(declare-fun tp!1751914 () Bool)

(assert (=> b!6292538 (= e!3826201 (and tp!1751913 tp!1751914))))

(declare-fun b!6292535 () Bool)

(assert (=> b!6292535 (= e!3826201 tp_is_empty!41679)))

(declare-fun b!6292537 () Bool)

(declare-fun tp!1751916 () Bool)

(assert (=> b!6292537 (= e!3826201 tp!1751916)))

(assert (= (and b!6290980 ((_ is ElementMatch!16213) (h!71263 (exprs!6097 setElem!42812)))) b!6292535))

(assert (= (and b!6290980 ((_ is Concat!25058) (h!71263 (exprs!6097 setElem!42812)))) b!6292536))

(assert (= (and b!6290980 ((_ is Star!16213) (h!71263 (exprs!6097 setElem!42812)))) b!6292537))

(assert (= (and b!6290980 ((_ is Union!16213) (h!71263 (exprs!6097 setElem!42812)))) b!6292538))

(declare-fun b!6292539 () Bool)

(declare-fun e!3826202 () Bool)

(declare-fun tp!1751917 () Bool)

(declare-fun tp!1751918 () Bool)

(assert (=> b!6292539 (= e!3826202 (and tp!1751917 tp!1751918))))

(assert (=> b!6290980 (= tp!1751761 e!3826202)))

(assert (= (and b!6290980 ((_ is Cons!64815) (t!378501 (exprs!6097 setElem!42812)))) b!6292539))

(declare-fun b!6292541 () Bool)

(declare-fun e!3826203 () Bool)

(declare-fun tp!1751922 () Bool)

(declare-fun tp!1751919 () Bool)

(assert (=> b!6292541 (= e!3826203 (and tp!1751922 tp!1751919))))

(assert (=> b!6290973 (= tp!1751754 e!3826203)))

(declare-fun b!6292543 () Bool)

(declare-fun tp!1751920 () Bool)

(declare-fun tp!1751921 () Bool)

(assert (=> b!6292543 (= e!3826203 (and tp!1751920 tp!1751921))))

(declare-fun b!6292540 () Bool)

(assert (=> b!6292540 (= e!3826203 tp_is_empty!41679)))

(declare-fun b!6292542 () Bool)

(declare-fun tp!1751923 () Bool)

(assert (=> b!6292542 (= e!3826203 tp!1751923)))

(assert (= (and b!6290973 ((_ is ElementMatch!16213) (regOne!32938 (reg!16542 r!7292)))) b!6292540))

(assert (= (and b!6290973 ((_ is Concat!25058) (regOne!32938 (reg!16542 r!7292)))) b!6292541))

(assert (= (and b!6290973 ((_ is Star!16213) (regOne!32938 (reg!16542 r!7292)))) b!6292542))

(assert (= (and b!6290973 ((_ is Union!16213) (regOne!32938 (reg!16542 r!7292)))) b!6292543))

(declare-fun b!6292545 () Bool)

(declare-fun e!3826204 () Bool)

(declare-fun tp!1751927 () Bool)

(declare-fun tp!1751924 () Bool)

(assert (=> b!6292545 (= e!3826204 (and tp!1751927 tp!1751924))))

(assert (=> b!6290973 (= tp!1751751 e!3826204)))

(declare-fun b!6292547 () Bool)

(declare-fun tp!1751925 () Bool)

(declare-fun tp!1751926 () Bool)

(assert (=> b!6292547 (= e!3826204 (and tp!1751925 tp!1751926))))

(declare-fun b!6292544 () Bool)

(assert (=> b!6292544 (= e!3826204 tp_is_empty!41679)))

(declare-fun b!6292546 () Bool)

(declare-fun tp!1751928 () Bool)

(assert (=> b!6292546 (= e!3826204 tp!1751928)))

(assert (= (and b!6290973 ((_ is ElementMatch!16213) (regTwo!32938 (reg!16542 r!7292)))) b!6292544))

(assert (= (and b!6290973 ((_ is Concat!25058) (regTwo!32938 (reg!16542 r!7292)))) b!6292545))

(assert (= (and b!6290973 ((_ is Star!16213) (regTwo!32938 (reg!16542 r!7292)))) b!6292546))

(assert (= (and b!6290973 ((_ is Union!16213) (regTwo!32938 (reg!16542 r!7292)))) b!6292547))

(declare-fun b!6292549 () Bool)

(declare-fun e!3826205 () Bool)

(declare-fun tp!1751932 () Bool)

(declare-fun tp!1751929 () Bool)

(assert (=> b!6292549 (= e!3826205 (and tp!1751932 tp!1751929))))

(assert (=> b!6291001 (= tp!1751786 e!3826205)))

(declare-fun b!6292551 () Bool)

(declare-fun tp!1751930 () Bool)

(declare-fun tp!1751931 () Bool)

(assert (=> b!6292551 (= e!3826205 (and tp!1751930 tp!1751931))))

(declare-fun b!6292548 () Bool)

(assert (=> b!6292548 (= e!3826205 tp_is_empty!41679)))

(declare-fun b!6292550 () Bool)

(declare-fun tp!1751933 () Bool)

(assert (=> b!6292550 (= e!3826205 tp!1751933)))

(assert (= (and b!6291001 ((_ is ElementMatch!16213) (reg!16542 (regTwo!32939 r!7292)))) b!6292548))

(assert (= (and b!6291001 ((_ is Concat!25058) (reg!16542 (regTwo!32939 r!7292)))) b!6292549))

(assert (= (and b!6291001 ((_ is Star!16213) (reg!16542 (regTwo!32939 r!7292)))) b!6292550))

(assert (= (and b!6291001 ((_ is Union!16213) (reg!16542 (regTwo!32939 r!7292)))) b!6292551))

(declare-fun b!6292553 () Bool)

(declare-fun e!3826206 () Bool)

(declare-fun tp!1751937 () Bool)

(declare-fun tp!1751934 () Bool)

(assert (=> b!6292553 (= e!3826206 (and tp!1751937 tp!1751934))))

(assert (=> b!6290993 (= tp!1751776 e!3826206)))

(declare-fun b!6292555 () Bool)

(declare-fun tp!1751935 () Bool)

(declare-fun tp!1751936 () Bool)

(assert (=> b!6292555 (= e!3826206 (and tp!1751935 tp!1751936))))

(declare-fun b!6292552 () Bool)

(assert (=> b!6292552 (= e!3826206 tp_is_empty!41679)))

(declare-fun b!6292554 () Bool)

(declare-fun tp!1751938 () Bool)

(assert (=> b!6292554 (= e!3826206 tp!1751938)))

(assert (= (and b!6290993 ((_ is ElementMatch!16213) (reg!16542 (regTwo!32938 r!7292)))) b!6292552))

(assert (= (and b!6290993 ((_ is Concat!25058) (reg!16542 (regTwo!32938 r!7292)))) b!6292553))

(assert (= (and b!6290993 ((_ is Star!16213) (reg!16542 (regTwo!32938 r!7292)))) b!6292554))

(assert (= (and b!6290993 ((_ is Union!16213) (reg!16542 (regTwo!32938 r!7292)))) b!6292555))

(declare-fun b!6292568 () Bool)

(declare-fun e!3826213 () Bool)

(declare-fun tp!1751942 () Bool)

(declare-fun tp!1751939 () Bool)

(assert (=> b!6292568 (= e!3826213 (and tp!1751942 tp!1751939))))

(assert (=> b!6290992 (= tp!1751775 e!3826213)))

(declare-fun b!6292570 () Bool)

(declare-fun tp!1751940 () Bool)

(declare-fun tp!1751941 () Bool)

(assert (=> b!6292570 (= e!3826213 (and tp!1751940 tp!1751941))))

(declare-fun b!6292567 () Bool)

(assert (=> b!6292567 (= e!3826213 tp_is_empty!41679)))

(declare-fun b!6292569 () Bool)

(declare-fun tp!1751943 () Bool)

(assert (=> b!6292569 (= e!3826213 tp!1751943)))

(assert (= (and b!6290992 ((_ is ElementMatch!16213) (regOne!32938 (regTwo!32938 r!7292)))) b!6292567))

(assert (= (and b!6290992 ((_ is Concat!25058) (regOne!32938 (regTwo!32938 r!7292)))) b!6292568))

(assert (= (and b!6290992 ((_ is Star!16213) (regOne!32938 (regTwo!32938 r!7292)))) b!6292569))

(assert (= (and b!6290992 ((_ is Union!16213) (regOne!32938 (regTwo!32938 r!7292)))) b!6292570))

(declare-fun b!6292572 () Bool)

(declare-fun e!3826214 () Bool)

(declare-fun tp!1751947 () Bool)

(declare-fun tp!1751944 () Bool)

(assert (=> b!6292572 (= e!3826214 (and tp!1751947 tp!1751944))))

(assert (=> b!6290992 (= tp!1751772 e!3826214)))

(declare-fun b!6292574 () Bool)

(declare-fun tp!1751945 () Bool)

(declare-fun tp!1751946 () Bool)

(assert (=> b!6292574 (= e!3826214 (and tp!1751945 tp!1751946))))

(declare-fun b!6292571 () Bool)

(assert (=> b!6292571 (= e!3826214 tp_is_empty!41679)))

(declare-fun b!6292573 () Bool)

(declare-fun tp!1751948 () Bool)

(assert (=> b!6292573 (= e!3826214 tp!1751948)))

(assert (= (and b!6290992 ((_ is ElementMatch!16213) (regTwo!32938 (regTwo!32938 r!7292)))) b!6292571))

(assert (= (and b!6290992 ((_ is Concat!25058) (regTwo!32938 (regTwo!32938 r!7292)))) b!6292572))

(assert (= (and b!6290992 ((_ is Star!16213) (regTwo!32938 (regTwo!32938 r!7292)))) b!6292573))

(assert (= (and b!6290992 ((_ is Union!16213) (regTwo!32938 (regTwo!32938 r!7292)))) b!6292574))

(declare-fun b!6292576 () Bool)

(declare-fun e!3826215 () Bool)

(declare-fun tp!1751952 () Bool)

(declare-fun tp!1751949 () Bool)

(assert (=> b!6292576 (= e!3826215 (and tp!1751952 tp!1751949))))

(assert (=> b!6290994 (= tp!1751773 e!3826215)))

(declare-fun b!6292578 () Bool)

(declare-fun tp!1751950 () Bool)

(declare-fun tp!1751951 () Bool)

(assert (=> b!6292578 (= e!3826215 (and tp!1751950 tp!1751951))))

(declare-fun b!6292575 () Bool)

(assert (=> b!6292575 (= e!3826215 tp_is_empty!41679)))

(declare-fun b!6292577 () Bool)

(declare-fun tp!1751953 () Bool)

(assert (=> b!6292577 (= e!3826215 tp!1751953)))

(assert (= (and b!6290994 ((_ is ElementMatch!16213) (regOne!32939 (regTwo!32938 r!7292)))) b!6292575))

(assert (= (and b!6290994 ((_ is Concat!25058) (regOne!32939 (regTwo!32938 r!7292)))) b!6292576))

(assert (= (and b!6290994 ((_ is Star!16213) (regOne!32939 (regTwo!32938 r!7292)))) b!6292577))

(assert (= (and b!6290994 ((_ is Union!16213) (regOne!32939 (regTwo!32938 r!7292)))) b!6292578))

(declare-fun b!6292580 () Bool)

(declare-fun e!3826216 () Bool)

(declare-fun tp!1751957 () Bool)

(declare-fun tp!1751954 () Bool)

(assert (=> b!6292580 (= e!3826216 (and tp!1751957 tp!1751954))))

(assert (=> b!6290994 (= tp!1751774 e!3826216)))

(declare-fun b!6292582 () Bool)

(declare-fun tp!1751955 () Bool)

(declare-fun tp!1751956 () Bool)

(assert (=> b!6292582 (= e!3826216 (and tp!1751955 tp!1751956))))

(declare-fun b!6292579 () Bool)

(assert (=> b!6292579 (= e!3826216 tp_is_empty!41679)))

(declare-fun b!6292581 () Bool)

(declare-fun tp!1751958 () Bool)

(assert (=> b!6292581 (= e!3826216 tp!1751958)))

(assert (= (and b!6290994 ((_ is ElementMatch!16213) (regTwo!32939 (regTwo!32938 r!7292)))) b!6292579))

(assert (= (and b!6290994 ((_ is Concat!25058) (regTwo!32939 (regTwo!32938 r!7292)))) b!6292580))

(assert (= (and b!6290994 ((_ is Star!16213) (regTwo!32939 (regTwo!32938 r!7292)))) b!6292581))

(assert (= (and b!6290994 ((_ is Union!16213) (regTwo!32939 (regTwo!32938 r!7292)))) b!6292582))

(declare-fun b!6292584 () Bool)

(declare-fun e!3826217 () Bool)

(declare-fun tp!1751962 () Bool)

(declare-fun tp!1751959 () Bool)

(assert (=> b!6292584 (= e!3826217 (and tp!1751962 tp!1751959))))

(assert (=> b!6291002 (= tp!1751783 e!3826217)))

(declare-fun b!6292586 () Bool)

(declare-fun tp!1751960 () Bool)

(declare-fun tp!1751961 () Bool)

(assert (=> b!6292586 (= e!3826217 (and tp!1751960 tp!1751961))))

(declare-fun b!6292583 () Bool)

(assert (=> b!6292583 (= e!3826217 tp_is_empty!41679)))

(declare-fun b!6292585 () Bool)

(declare-fun tp!1751963 () Bool)

(assert (=> b!6292585 (= e!3826217 tp!1751963)))

(assert (= (and b!6291002 ((_ is ElementMatch!16213) (regOne!32939 (regTwo!32939 r!7292)))) b!6292583))

(assert (= (and b!6291002 ((_ is Concat!25058) (regOne!32939 (regTwo!32939 r!7292)))) b!6292584))

(assert (= (and b!6291002 ((_ is Star!16213) (regOne!32939 (regTwo!32939 r!7292)))) b!6292585))

(assert (= (and b!6291002 ((_ is Union!16213) (regOne!32939 (regTwo!32939 r!7292)))) b!6292586))

(declare-fun b!6292588 () Bool)

(declare-fun e!3826218 () Bool)

(declare-fun tp!1751967 () Bool)

(declare-fun tp!1751964 () Bool)

(assert (=> b!6292588 (= e!3826218 (and tp!1751967 tp!1751964))))

(assert (=> b!6291002 (= tp!1751784 e!3826218)))

(declare-fun b!6292590 () Bool)

(declare-fun tp!1751965 () Bool)

(declare-fun tp!1751966 () Bool)

(assert (=> b!6292590 (= e!3826218 (and tp!1751965 tp!1751966))))

(declare-fun b!6292587 () Bool)

(assert (=> b!6292587 (= e!3826218 tp_is_empty!41679)))

(declare-fun b!6292589 () Bool)

(declare-fun tp!1751968 () Bool)

(assert (=> b!6292589 (= e!3826218 tp!1751968)))

(assert (= (and b!6291002 ((_ is ElementMatch!16213) (regTwo!32939 (regTwo!32939 r!7292)))) b!6292587))

(assert (= (and b!6291002 ((_ is Concat!25058) (regTwo!32939 (regTwo!32939 r!7292)))) b!6292588))

(assert (= (and b!6291002 ((_ is Star!16213) (regTwo!32939 (regTwo!32939 r!7292)))) b!6292589))

(assert (= (and b!6291002 ((_ is Union!16213) (regTwo!32939 (regTwo!32939 r!7292)))) b!6292590))

(declare-fun b_lambda!239401 () Bool)

(assert (= b_lambda!239369 (or d!1974004 b_lambda!239401)))

(declare-fun bs!1573575 () Bool)

(declare-fun d!1974894 () Bool)

(assert (= bs!1573575 (and d!1974894 d!1974004)))

(assert (=> bs!1573575 (= (dynLambda!25651 lambda!345572 (h!71263 lt!2357060)) (validRegex!7949 (h!71263 lt!2357060)))))

(declare-fun m!7113152 () Bool)

(assert (=> bs!1573575 m!7113152))

(assert (=> b!6291250 d!1974894))

(declare-fun b_lambda!239403 () Bool)

(assert (= b_lambda!239383 (or d!1973910 b_lambda!239403)))

(declare-fun bs!1573576 () Bool)

(declare-fun d!1974896 () Bool)

(assert (= bs!1573576 (and d!1974896 d!1973910)))

(assert (=> bs!1573576 (= (dynLambda!25651 lambda!345546 (h!71263 lt!2357198)) (validRegex!7949 (h!71263 lt!2357198)))))

(declare-fun m!7113154 () Bool)

(assert (=> bs!1573576 m!7113154))

(assert (=> b!6291764 d!1974896))

(declare-fun b_lambda!239405 () Bool)

(assert (= b_lambda!239387 (or b!6289808 b_lambda!239405)))

(assert (=> d!1974546 d!1974118))

(declare-fun b_lambda!239407 () Bool)

(assert (= b_lambda!239377 (or d!1973900 b_lambda!239407)))

(declare-fun bs!1573577 () Bool)

(declare-fun d!1974898 () Bool)

(assert (= bs!1573577 (and d!1974898 d!1973900)))

(assert (=> bs!1573577 (= (dynLambda!25651 lambda!345542 (h!71263 (unfocusZipperList!1634 zl!343))) (validRegex!7949 (h!71263 (unfocusZipperList!1634 zl!343))))))

(declare-fun m!7113156 () Bool)

(assert (=> bs!1573577 m!7113156))

(assert (=> b!6291680 d!1974898))

(declare-fun b_lambda!239409 () Bool)

(assert (= b_lambda!239389 (or b!6289808 b_lambda!239409)))

(assert (=> d!1974634 d!1974114))

(declare-fun b_lambda!239411 () Bool)

(assert (= b_lambda!239367 (or d!1974056 b_lambda!239411)))

(declare-fun bs!1573578 () Bool)

(declare-fun d!1974900 () Bool)

(assert (= bs!1573578 (and d!1974900 d!1974056)))

(assert (=> bs!1573578 (= (dynLambda!25651 lambda!345597 (h!71263 (exprs!6097 (h!71264 zl!343)))) (validRegex!7949 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(declare-fun m!7113158 () Bool)

(assert (=> bs!1573578 m!7113158))

(assert (=> b!6291177 d!1974900))

(declare-fun b_lambda!239413 () Bool)

(assert (= b_lambda!239395 (or b!6290788 b_lambda!239413)))

(declare-fun bs!1573579 () Bool)

(declare-fun d!1974902 () Bool)

(assert (= bs!1573579 (and d!1974902 b!6290788)))

(assert (=> bs!1573579 (= (dynLambda!25650 lambda!345593 (h!71264 zl!343)) (>= lt!2357275 (contextDepth!229 (h!71264 zl!343))))))

(assert (=> bs!1573579 m!7111398))

(assert (=> b!6292305 d!1974902))

(declare-fun b_lambda!239415 () Bool)

(assert (= b_lambda!239379 (or b!6289808 b_lambda!239415)))

(assert (=> d!1974438 d!1974116))

(declare-fun b_lambda!239417 () Bool)

(assert (= b_lambda!239371 (or d!1974050 b_lambda!239417)))

(declare-fun bs!1573580 () Bool)

(declare-fun d!1974904 () Bool)

(assert (= bs!1573580 (and d!1974904 d!1974050)))

(assert (=> bs!1573580 (= (dynLambda!25651 lambda!345596 (h!71263 (exprs!6097 setElem!42812))) (validRegex!7949 (h!71263 (exprs!6097 setElem!42812))))))

(declare-fun m!7113160 () Bool)

(assert (=> bs!1573580 m!7113160))

(assert (=> b!6291346 d!1974904))

(declare-fun b_lambda!239419 () Bool)

(assert (= b_lambda!239381 (or d!1973998 b_lambda!239419)))

(declare-fun bs!1573581 () Bool)

(declare-fun d!1974906 () Bool)

(assert (= bs!1573581 (and d!1974906 d!1973998)))

(assert (=> bs!1573581 (= (dynLambda!25651 lambda!345571 (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343))))) (validRegex!7949 (h!71263 (t!378501 (exprs!6097 (h!71264 zl!343))))))))

(declare-fun m!7113162 () Bool)

(assert (=> bs!1573581 m!7113162))

(assert (=> b!6291708 d!1974906))

(declare-fun b_lambda!239421 () Bool)

(assert (= b_lambda!239393 (or b!6290786 b_lambda!239421)))

(declare-fun bs!1573582 () Bool)

(declare-fun d!1974908 () Bool)

(assert (= bs!1573582 (and d!1974908 b!6290786)))

(assert (=> bs!1573582 (= (dynLambda!25650 lambda!345592 (h!71264 (t!378502 zl!343))) (>= lt!2357278 (contextDepth!229 (h!71264 (t!378502 zl!343)))))))

(assert (=> bs!1573582 m!7112826))

(assert (=> b!6292163 d!1974908))

(declare-fun b_lambda!239423 () Bool)

(assert (= b_lambda!239391 (or b!6290783 b_lambda!239423)))

(declare-fun bs!1573583 () Bool)

(declare-fun d!1974910 () Bool)

(assert (= bs!1573583 (and d!1974910 b!6290783)))

(assert (=> bs!1573583 (= (dynLambda!25650 lambda!345590 (h!71264 lt!2357078)) (>= lt!2357271 (contextDepth!229 (h!71264 lt!2357078))))))

(assert (=> bs!1573583 m!7111386))

(assert (=> b!6292093 d!1974910))

(declare-fun b_lambda!239425 () Bool)

(assert (= b_lambda!239385 (or d!1974090 b_lambda!239425)))

(declare-fun bs!1573584 () Bool)

(declare-fun d!1974912 () Bool)

(assert (= bs!1573584 (and d!1974912 d!1974090)))

(assert (=> bs!1573584 (= (dynLambda!25651 lambda!345599 (h!71263 (exprs!6097 (h!71264 zl!343)))) (validRegex!7949 (h!71263 (exprs!6097 (h!71264 zl!343)))))))

(assert (=> bs!1573584 m!7113158))

(assert (=> b!6291836 d!1974912))

(declare-fun b_lambda!239427 () Bool)

(assert (= b_lambda!239397 (or d!1974034 b_lambda!239427)))

(declare-fun bs!1573585 () Bool)

(declare-fun d!1974914 () Bool)

(assert (= bs!1573585 (and d!1974914 d!1974034)))

(assert (=> bs!1573585 (= (dynLambda!25651 lambda!345577 (h!71263 lt!2357082)) (validRegex!7949 (h!71263 lt!2357082)))))

(declare-fun m!7113164 () Bool)

(assert (=> bs!1573585 m!7113164))

(assert (=> b!6292408 d!1974914))

(declare-fun b_lambda!239429 () Bool)

(assert (= b_lambda!239365 (or b!6290781 b_lambda!239429)))

(declare-fun bs!1573586 () Bool)

(declare-fun d!1974916 () Bool)

(assert (= bs!1573586 (and d!1974916 b!6290781)))

(assert (=> bs!1573586 (= (dynLambda!25650 lambda!345589 (h!71264 (t!378502 lt!2357078))) (>= lt!2357274 (contextDepth!229 (h!71264 (t!378502 lt!2357078)))))))

(assert (=> bs!1573586 m!7111678))

(assert (=> b!6291149 d!1974916))

(check-sat (not b!6291964) (not b!6292165) (not bm!532922) (not b!6291592) (not bm!532802) (not b!6292480) (not d!1974250) (not bm!532711) (not b!6291412) (not bm!532755) (not d!1974240) (not b!6291765) (not bm!532703) (not b!6292286) (not d!1974828) (not b!6291662) (not b_lambda!239403) (not b!6292069) (not bm!532944) (not b!6291435) (not d!1974678) (not b!6291105) (not b!6291450) (not b!6292505) (not b!6291182) (not bm!532765) (not d!1974384) (not b_lambda!239419) (not b!6291445) (not b!6291449) (not b!6291663) (not d!1974352) (not bm!532662) (not bm!532744) (not b!6291264) (not b!6292397) (not b!6292097) (not bm!532763) (not b!6292145) (not bm!532695) (not bm!532688) (not b!6291195) (not d!1974740) (not b!6291448) (not d!1974682) (not d!1974410) (not b!6291243) (not b!6292569) (not bm!532943) (not bm!532750) (not b!6291352) (not bs!1573580) (not d!1974544) (not bm!532940) (not bm!532698) (not d!1974218) (not b!6291532) (not b!6291349) (not d!1974132) (not d!1974362) (not bm!532884) (not bm!532718) (not b!6292582) (not bm!532717) (not b!6291219) (not b!6291368) (not b!6291230) (not b!6292574) (not bs!1573581) (not b!6292220) (not d!1974610) (not d!1974396) (not b!6291798) (not b!6291041) (not b!6291862) (not d!1974356) (not b!6292045) (not b!6292437) (not b!6291881) (not b!6292341) (not b!6291420) (not b!6291558) (not bs!1573586) (not b!6291274) (not b!6291734) (not b!6291377) (not bm!532938) (not d!1974266) (not d!1974780) (not d!1974826) (not d!1974312) (not b!6291365) (not b!6292266) (not d!1974252) (not b!6292586) (not b!6291359) (not b!6292350) (not bm!532694) (not bm!532699) (not b!6291753) (not b!6292288) (not b!6291945) (not b!6292143) (not b!6292039) (not d!1974642) (not b!6291323) (not bm!532700) (not b_lambda!239361) (not d!1974646) (not b!6292338) (not d!1974230) (not bm!532947) (not b!6291993) (not bm!532812) (not b!6291251) (not b!6291784) (not bm!532682) (not bm!532686) (not b!6291454) (not d!1974462) (not b!6292494) (not bm!532789) (not b!6291531) (not b!6292301) (not b!6291937) (not bm!532809) (not b!6291709) (not d!1974598) (not b!6291695) (not b!6292146) (not b!6291371) (not b!6291397) (not b!6292549) (not b!6291508) (not bm!532934) (not b!6291686) (not d!1974546) (not bm!532666) (not b!6292478) (not b!6292509) (not b!6291541) (not b!6292073) (not b!6291209) (not b!6292233) (not b!6292383) (not b!6292316) (not d!1974346) (not b!6291263) (not b!6292554) (not d!1974348) (not b!6292042) (not bm!532738) (not b!6292573) (not bm!532932) (not d!1974308) (not b!6291179) (not b!6291876) (not bm!532712) (not b!6291042) (not b!6292484) (not d!1974838) (not b!6291724) (not d!1974446) (not d!1974414) (not bm!532701) (not b!6291047) (not b_lambda!239411) (not b!6291265) (not bm!532799) (not bm!532945) (not b!6292490) (not b!6291050) (not bm!532742) (not b!6291277) (not b!6292048) (not d!1974636) (not d!1974170) (not bm!532667) (not b!6292500) (not b!6291456) (not bm!532692) (not bm!532846) (not b!6292353) (not bm!532817) (not b!6291347) (not bm!532797) (not b_lambda!239413) (not bm!532833) (not b!6291455) (not b!6291615) (not b!6291326) (not b!6292041) (not bm!532925) (not b!6292502) (not bm!532875) (not setNonEmpty!42822) (not b!6291840) (not b!6291696) (not bm!532745) (not d!1974686) (not b!6291142) (not d!1974316) (not b_lambda!239407) (not b!6292368) (not b!6292492) (not b!6292510) (not bm!532781) (not d!1974510) (not b!6291507) (not b!6292142) (not b!6291072) (not d!1974210) (not b!6292543) (not d!1974680) (not b!6291974) (not bm!532876) (not b!6291040) (not bm!532756) (not b!6292387) (not b!6292553) (not b!6292178) (not b!6292398) (not b!6291025) (not d!1974166) (not d!1974144) (not bm!532804) (not bm!532725) (not bm!532779) (not b!6291926) (not b!6291422) (not b!6291039) (not b!6291956) (not b!6292449) (not b!6292530) (not b!6291280) (not b!6291363) (not bm!532778) (not d!1974264) (not b!6291334) (not d!1974142) (not b!6291165) (not b!6292570) (not setNonEmpty!42824) (not d!1974774) (not bm!532928) (not b!6291829) (not d!1974412) (not bm!532810) (not b!6291529) (not b!6292486) (not bm!532794) (not d!1974178) (not b!6291961) (not b!6292361) (not bm!532826) (not bm!532719) (not b!6291552) (not bm!532689) (not bm!532803) (not b!6291701) (not b!6291644) (not b!6292396) (not b!6292094) (not bm!532942) (not d!1974300) (not b!6292547) (not d!1974196) (not b!6292589) (not d!1974634) (not b!6292003) (not b_lambda!239401) (not b!6291061) (not b!6292306) (not b!6291318) (not d!1974748) (not b!6291193) (not d!1974344) (not bm!532705) (not b!6291046) (not b!6292180) (not d!1974514) (not b!6291276) (not bm!532829) (not bm!532858) (not b!6291975) (not b!6292363) (not bm!532893) (not bm!532723) (not d!1974320) (not b!6291208) (not d!1974768) (not d!1974278) (not b!6291976) (not b!6291181) (not b!6292526) (not b!6292527) (not b!6292434) (not b_lambda!239429) (not b!6291818) (not d!1974428) (not d!1974270) (not d!1974380) (not b!6292568) (not d!1974438) (not bs!1573575) (not b!6292351) (not bs!1573582) (not b!6292367) (not b!6291191) (not bm!532872) (not d!1974334) (not b!6291289) (not b!6291218) (not b!6292037) (not b!6292456) (not b!6292537) (not b!6292577) (not bm!532818) (not b!6292046) (not bm!532796) (not b_lambda!239423) (not b!6291421) (not b!6291623) (not b!6292542) (not b!6292523) (not bs!1573585) (not b!6291605) (not d!1974424) (not b!6292070) (not d!1974592) (not b!6291339) (not b!6291583) (not d!1974212) (not b!6292488) (not b!6292572) (not b!6291355) (not b!6291425) (not b!6291026) (not b!6292364) (not d!1974332) (not bm!532721) (not bm!532806) (not b!6291134) (not bm!532664) (not bm!532885) (not bm!532949) (not b!6291608) (not b!6291064) (not bm!532786) (not b!6292532) (not b!6291192) (not d!1974350) (not b!6292164) (not d!1974188) (not d!1974236) (not b!6291673) (not b!6291839) (not d!1974484) (not b!6292522) (not b!6291194) (not b!6292268) (not d!1974818) (not bm!532871) (not b!6292477) (not b!6292209) (not b!6291955) (not b!6291423) (not b!6291206) (not bm!532680) (not b!6291737) (not d!1974122) (not b!6292433) (not b!6291938) (not b!6292002) (not b!6292210) (not b!6291779) (not b!6291144) (not d!1974198) (not d!1974746) (not d!1974486) (not b!6292223) (not d!1974220) (not b!6291564) (not b!6291554) (not d!1974176) (not bm!532751) (not bm!532734) (not b!6291043) (not d!1974400) (not d!1974844) (not d!1974786) (not b!6292451) (not b!6292438) (not d!1974628) (not bm!532754) (not d!1974492) (not d!1974262) (not b!6291336) (not bm!532836) (not b!6291681) (not b!6292208) (not b!6291228) (not setNonEmpty!42823) (not b!6291593) (not setNonEmpty!42821) (not d!1974184) (not d!1974784) (not b!6292504) (not b!6291217) (not d!1974684) (not b!6291480) (not d!1974596) (not b!6292588) (not d!1974134) (not b!6291073) (not b!6291028) (not bm!532831) (not d!1974268) (not bs!1573578) (not b!6291150) (not b!6291545) (not b!6292460) (not bm!532849) (not b!6292436) (not b!6291254) (not d!1974310) (not b!6292302) (not d!1974360) (not bm!532813) (not b!6291321) (not bs!1573576) (not b!6291722) (not b!6292257) (not bm!532859) (not d!1974626) (not b!6291151) (not b!6292352) (not d!1974374) (not d!1974652) (not b!6292529) (not d!1974158) (not b!6292498) (not b!6292360) (not d!1974358) (not b!6291581) (not b!6292489) (not b!6291398) (not b!6291821) (not d!1974760) (not bm!532726) (not b!6292551) (not b!6292476) (not b!6291627) (not d!1974314) (not d!1974318) (not b!6292531) (not b!6291603) (not b!6291817) (not b!6291103) (not b!6291411) (not bm!532873) (not d!1974782) (not b!6292167) (not d!1974244) (not d!1974406) (not b!6291178) (not d!1974378) (not bm!532863) (not bm!532891) (not b!6292461) (not d!1974426) (not bm!532830) (not b!6292454) (not b!6291801) (not b!6292349) (not b!6292267) (not b!6291170) (not b!6291196) (not b!6291584) (not bm!532736) (not b!6291669) (not bm!532791) (not d!1974458) (not bm!532923) (not bs!1573577) (not b!6292550) (not b!6292508) (not b!6292222) (not d!1974274) (not b!6292541) (not b!6292362) (not d!1974234) (not b!6292581) (not b!6292409) (not d!1974536) (not b!6291409) (not bm!532845) (not b!6291252) (not b!6292585) (not b!6291362) (not b!6292385) (not bm!532798) (not b!6292258) (not b!6292525) (not b!6292255) (not b!6291426) (not d!1974704) (not b!6292555) (not d!1974368) (not d!1974174) (not b!6292311) (not b!6292453) (not b_lambda!239417) (not b!6291434) (not b!6291694) (not b!6292138) (not b!6291356) (not b!6292340) (not d!1974840) (not b!6291943) (not d!1974742) (not d!1974468) (not b!6291800) (not b!6291559) (not d!1974858) (not bm!532741) (not d!1974764) (not b!6291809) (not b!6291927) (not b!6292388) (not b!6292580) (not b!6291946) (not b!6291810) (not b!6291190) (not b!6291369) (not d!1974586) (not bm!532739) (not d!1974734) (not bm!532728) (not b!6292536) (not bm!532678) (not b!6291373) (not b_lambda!239405) (not b!6292232) (not b_lambda!239425) (not b!6292497) (not b!6291366) tp_is_empty!41679 (not d!1974620) (not b!6292004) (not d!1974208) (not b!6292546) (not b!6291199) (not b!6292578) (not b!6291031) (not bm!532704) (not b!6291255) (not b!6291136) (not d!1974232) (not b!6291666) (not b!6291991) (not b!6291719) (not d!1974388) (not b!6292506) (not d!1974464) (not b!6292359) (not bm!532843) (not bm!532837) (not b_lambda!239427) (not b!6291325) (not b!6292458) (not b!6292501) (not d!1974354) (not b!6292584) (not b!6292452) (not b!6292401) (not b!6292538) (not d!1974538) (not b!6292450) (not b!6292304) (not bm!532775) (not b_lambda!239415) (not b!6292539) (not b!6292049) (not b!6292457) (not b!6291555) (not b!6291632) (not b!6291436) (not b!6291317) (not b!6291074) (not b!6291723) (not b!6291963) (not d!1974756) (not b!6291335) (not b!6292303) (not b_lambda!239409) (not bs!1573579) (not bm!532807) (not bs!1573584) (not bm!532676) (not b!6292357) (not b!6291063) (not bm!532663) (not b!6291553) (not bm!532850) (not b!6292482) (not b!6292307) (not b!6291542) (not b!6291811) (not b!6291358) (not b!6291837) (not bm!532800) (not b!6292462) (not bm!532748) (not b!6292040) (not bm!532882) (not b!6291712) (not b!6291721) (not b_lambda!239359) (not b!6291994) (not b_lambda!239421) (not d!1974456) (not b!6291351) (not b!6292356) (not bm!532707) (not b!6292231) (not b!6291622) (not b!6292576) (not d!1974186) (not b!6291384) (not b!6291030) (not b!6292485) (not b_lambda!239363) (not b!6291649) (not bm!532735) (not b!6291116) (not b!6291054) (not b!6291954) (not b!6291838) (not b!6292521) (not d!1974126) (not bs!1573583) (not b!6292139) (not d!1974440) (not bm!532758) (not b!6292463) (not b!6292481) (not bm!532834) (not d!1974630) (not bm!532776) (not b!6291320) (not b!6291685) (not d!1974788) (not b!6292493) (not b!6292496) (not bm!532795) (not b!6291453) (not bm!532683) (not d!1974632) (not b!6291594) (not b!6292545) (not b!6291561) (not b!6292246) (not bm!532733) (not b!6291540) (not bm!532815) (not d!1974372) (not b!6291683) (not bm!532825) (not b!6291727) (not bm!532709) (not b!6291348) (not bm!532948) (not b!6291936) (not bm!532939) (not d!1974290) (not b!6292370) (not d!1974404) (not bm!532792) (not d!1974302) (not bm!532787) (not b!6292590) (not bm!532715))
(check-sat)
