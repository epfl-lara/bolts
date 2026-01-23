; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!549636 () Bool)

(assert start!549636)

(declare-fun b!5193715 () Bool)

(assert (=> b!5193715 true))

(assert (=> b!5193715 true))

(declare-fun lambda!259763 () Int)

(declare-fun lambda!259762 () Int)

(assert (=> b!5193715 (not (= lambda!259763 lambda!259762))))

(assert (=> b!5193715 true))

(assert (=> b!5193715 true))

(declare-fun b!5193710 () Bool)

(declare-fun e!3234869 () Bool)

(declare-datatypes ((C!29758 0))(
  ( (C!29759 (val!24581 Int)) )
))
(declare-datatypes ((Regex!14744 0))(
  ( (ElementMatch!14744 (c!895247 C!29758)) (Concat!23589 (regOne!30000 Regex!14744) (regTwo!30000 Regex!14744)) (EmptyExpr!14744) (Star!14744 (reg!15073 Regex!14744)) (EmptyLang!14744) (Union!14744 (regOne!30001 Regex!14744) (regTwo!30001 Regex!14744)) )
))
(declare-fun r!7292 () Regex!14744)

(declare-fun validRegex!6480 (Regex!14744) Bool)

(assert (=> b!5193710 (= e!3234869 (validRegex!6480 (regTwo!30000 r!7292)))))

(declare-fun b!5193711 () Bool)

(declare-fun res!2206051 () Bool)

(declare-fun e!3234873 () Bool)

(assert (=> b!5193711 (=> res!2206051 e!3234873)))

(declare-datatypes ((List!60531 0))(
  ( (Nil!60407) (Cons!60407 (h!66855 Regex!14744) (t!373684 List!60531)) )
))
(declare-datatypes ((Context!8256 0))(
  ( (Context!8257 (exprs!4628 List!60531)) )
))
(declare-datatypes ((List!60532 0))(
  ( (Nil!60408) (Cons!60408 (h!66856 Context!8256) (t!373685 List!60532)) )
))
(declare-fun zl!343 () List!60532)

(declare-fun generalisedUnion!673 (List!60531) Regex!14744)

(declare-fun unfocusZipperList!186 (List!60532) List!60531)

(assert (=> b!5193711 (= res!2206051 (not (= r!7292 (generalisedUnion!673 (unfocusZipperList!186 zl!343)))))))

(declare-fun b!5193713 () Bool)

(declare-fun res!2206057 () Bool)

(assert (=> b!5193713 (=> res!2206057 e!3234873)))

(declare-fun generalisedConcat!413 (List!60531) Regex!14744)

(assert (=> b!5193713 (= res!2206057 (not (= r!7292 (generalisedConcat!413 (exprs!4628 (h!66856 zl!343))))))))

(declare-fun setNonEmpty!32833 () Bool)

(declare-fun setElem!32833 () Context!8256)

(declare-fun tp!1456979 () Bool)

(declare-fun setRes!32833 () Bool)

(declare-fun e!3234871 () Bool)

(declare-fun inv!80108 (Context!8256) Bool)

(assert (=> setNonEmpty!32833 (= setRes!32833 (and tp!1456979 (inv!80108 setElem!32833) e!3234871))))

(declare-fun z!1189 () (Set Context!8256))

(declare-fun setRest!32833 () (Set Context!8256))

(assert (=> setNonEmpty!32833 (= z!1189 (set.union (set.insert setElem!32833 (as set.empty (Set Context!8256))) setRest!32833))))

(declare-fun b!5193714 () Bool)

(declare-fun e!3234870 () Bool)

(declare-fun tp!1456974 () Bool)

(declare-fun tp!1456971 () Bool)

(assert (=> b!5193714 (= e!3234870 (and tp!1456974 tp!1456971))))

(assert (=> b!5193715 (= e!3234873 e!3234869)))

(declare-fun res!2206058 () Bool)

(assert (=> b!5193715 (=> res!2206058 e!3234869)))

(assert (=> b!5193715 (= res!2206058 (not (validRegex!6480 (regOne!30000 r!7292))))))

(declare-fun Exists!1925 (Int) Bool)

(assert (=> b!5193715 (= (Exists!1925 lambda!259762) (Exists!1925 lambda!259763))))

(declare-datatypes ((Unit!152322 0))(
  ( (Unit!152323) )
))
(declare-fun lt!2138446 () Unit!152322)

(declare-datatypes ((List!60533 0))(
  ( (Nil!60409) (Cons!60409 (h!66857 C!29758) (t!373686 List!60533)) )
))
(declare-fun s!2326 () List!60533)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!579 (Regex!14744 Regex!14744 List!60533) Unit!152322)

(assert (=> b!5193715 (= lt!2138446 (lemmaExistCutMatchRandMatchRSpecEquivalent!579 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326))))

(declare-datatypes ((tuple2!63886 0))(
  ( (tuple2!63887 (_1!35246 List!60533) (_2!35246 List!60533)) )
))
(declare-datatypes ((Option!14855 0))(
  ( (None!14854) (Some!14854 (v!50883 tuple2!63886)) )
))
(declare-fun isDefined!11558 (Option!14855) Bool)

(declare-fun findConcatSeparation!1269 (Regex!14744 Regex!14744 List!60533 List!60533 List!60533) Option!14855)

(assert (=> b!5193715 (= (isDefined!11558 (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) Nil!60409 s!2326 s!2326)) (Exists!1925 lambda!259762))))

(declare-fun lt!2138444 () Unit!152322)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1033 (Regex!14744 Regex!14744 List!60533) Unit!152322)

(assert (=> b!5193715 (= lt!2138444 (lemmaFindConcatSeparationEquivalentToExists!1033 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326))))

(declare-fun b!5193716 () Bool)

(declare-fun tp!1456978 () Bool)

(assert (=> b!5193716 (= e!3234871 tp!1456978)))

(declare-fun e!3234868 () Bool)

(declare-fun tp!1456975 () Bool)

(declare-fun b!5193717 () Bool)

(declare-fun e!3234875 () Bool)

(assert (=> b!5193717 (= e!3234875 (and (inv!80108 (h!66856 zl!343)) e!3234868 tp!1456975))))

(declare-fun b!5193718 () Bool)

(declare-fun tp!1456977 () Bool)

(assert (=> b!5193718 (= e!3234870 tp!1456977)))

(declare-fun b!5193712 () Bool)

(declare-fun res!2206054 () Bool)

(assert (=> b!5193712 (=> res!2206054 e!3234873)))

(assert (=> b!5193712 (= res!2206054 (not (is-Cons!60407 (exprs!4628 (h!66856 zl!343)))))))

(declare-fun res!2206055 () Bool)

(declare-fun e!3234872 () Bool)

(assert (=> start!549636 (=> (not res!2206055) (not e!3234872))))

(assert (=> start!549636 (= res!2206055 (validRegex!6480 r!7292))))

(assert (=> start!549636 e!3234872))

(assert (=> start!549636 e!3234870))

(declare-fun condSetEmpty!32833 () Bool)

(assert (=> start!549636 (= condSetEmpty!32833 (= z!1189 (as set.empty (Set Context!8256))))))

(assert (=> start!549636 setRes!32833))

(assert (=> start!549636 e!3234875))

(declare-fun e!3234874 () Bool)

(assert (=> start!549636 e!3234874))

(declare-fun b!5193719 () Bool)

(declare-fun tp_is_empty!38741 () Bool)

(declare-fun tp!1456976 () Bool)

(assert (=> b!5193719 (= e!3234874 (and tp_is_empty!38741 tp!1456976))))

(declare-fun b!5193720 () Bool)

(assert (=> b!5193720 (= e!3234870 tp_is_empty!38741)))

(declare-fun b!5193721 () Bool)

(declare-fun res!2206059 () Bool)

(assert (=> b!5193721 (=> (not res!2206059) (not e!3234872))))

(declare-fun toList!8528 ((Set Context!8256)) List!60532)

(assert (=> b!5193721 (= res!2206059 (= (toList!8528 z!1189) zl!343))))

(declare-fun b!5193722 () Bool)

(declare-fun res!2206056 () Bool)

(assert (=> b!5193722 (=> res!2206056 e!3234873)))

(assert (=> b!5193722 (= res!2206056 (or (is-EmptyExpr!14744 r!7292) (is-EmptyLang!14744 r!7292) (is-ElementMatch!14744 r!7292) (is-Union!14744 r!7292) (not (is-Concat!23589 r!7292))))))

(declare-fun b!5193723 () Bool)

(declare-fun res!2206053 () Bool)

(assert (=> b!5193723 (=> (not res!2206053) (not e!3234872))))

(declare-fun unfocusZipper!486 (List!60532) Regex!14744)

(assert (=> b!5193723 (= res!2206053 (= r!7292 (unfocusZipper!486 zl!343)))))

(declare-fun b!5193724 () Bool)

(declare-fun tp!1456970 () Bool)

(assert (=> b!5193724 (= e!3234868 tp!1456970)))

(declare-fun b!5193725 () Bool)

(declare-fun res!2206052 () Bool)

(assert (=> b!5193725 (=> res!2206052 e!3234873)))

(declare-fun isEmpty!32339 (List!60532) Bool)

(assert (=> b!5193725 (= res!2206052 (not (isEmpty!32339 (t!373685 zl!343))))))

(declare-fun setIsEmpty!32833 () Bool)

(assert (=> setIsEmpty!32833 setRes!32833))

(declare-fun b!5193726 () Bool)

(assert (=> b!5193726 (= e!3234872 (not e!3234873))))

(declare-fun res!2206060 () Bool)

(assert (=> b!5193726 (=> res!2206060 e!3234873)))

(assert (=> b!5193726 (= res!2206060 (not (is-Cons!60408 zl!343)))))

(declare-fun matchR!6929 (Regex!14744 List!60533) Bool)

(declare-fun matchRSpec!1847 (Regex!14744 List!60533) Bool)

(assert (=> b!5193726 (= (matchR!6929 r!7292 s!2326) (matchRSpec!1847 r!7292 s!2326))))

(declare-fun lt!2138445 () Unit!152322)

(declare-fun mainMatchTheorem!1847 (Regex!14744 List!60533) Unit!152322)

(assert (=> b!5193726 (= lt!2138445 (mainMatchTheorem!1847 r!7292 s!2326))))

(declare-fun b!5193727 () Bool)

(declare-fun tp!1456972 () Bool)

(declare-fun tp!1456973 () Bool)

(assert (=> b!5193727 (= e!3234870 (and tp!1456972 tp!1456973))))

(assert (= (and start!549636 res!2206055) b!5193721))

(assert (= (and b!5193721 res!2206059) b!5193723))

(assert (= (and b!5193723 res!2206053) b!5193726))

(assert (= (and b!5193726 (not res!2206060)) b!5193725))

(assert (= (and b!5193725 (not res!2206052)) b!5193713))

(assert (= (and b!5193713 (not res!2206057)) b!5193712))

(assert (= (and b!5193712 (not res!2206054)) b!5193711))

(assert (= (and b!5193711 (not res!2206051)) b!5193722))

(assert (= (and b!5193722 (not res!2206056)) b!5193715))

(assert (= (and b!5193715 (not res!2206058)) b!5193710))

(assert (= (and start!549636 (is-ElementMatch!14744 r!7292)) b!5193720))

(assert (= (and start!549636 (is-Concat!23589 r!7292)) b!5193727))

(assert (= (and start!549636 (is-Star!14744 r!7292)) b!5193718))

(assert (= (and start!549636 (is-Union!14744 r!7292)) b!5193714))

(assert (= (and start!549636 condSetEmpty!32833) setIsEmpty!32833))

(assert (= (and start!549636 (not condSetEmpty!32833)) setNonEmpty!32833))

(assert (= setNonEmpty!32833 b!5193716))

(assert (= b!5193717 b!5193724))

(assert (= (and start!549636 (is-Cons!60408 zl!343)) b!5193717))

(assert (= (and start!549636 (is-Cons!60409 s!2326)) b!5193719))

(declare-fun m!6248878 () Bool)

(assert (=> b!5193713 m!6248878))

(declare-fun m!6248880 () Bool)

(assert (=> setNonEmpty!32833 m!6248880))

(declare-fun m!6248882 () Bool)

(assert (=> b!5193723 m!6248882))

(declare-fun m!6248884 () Bool)

(assert (=> b!5193711 m!6248884))

(assert (=> b!5193711 m!6248884))

(declare-fun m!6248886 () Bool)

(assert (=> b!5193711 m!6248886))

(declare-fun m!6248888 () Bool)

(assert (=> b!5193710 m!6248888))

(declare-fun m!6248890 () Bool)

(assert (=> start!549636 m!6248890))

(declare-fun m!6248892 () Bool)

(assert (=> b!5193715 m!6248892))

(declare-fun m!6248894 () Bool)

(assert (=> b!5193715 m!6248894))

(declare-fun m!6248896 () Bool)

(assert (=> b!5193715 m!6248896))

(declare-fun m!6248898 () Bool)

(assert (=> b!5193715 m!6248898))

(declare-fun m!6248900 () Bool)

(assert (=> b!5193715 m!6248900))

(declare-fun m!6248902 () Bool)

(assert (=> b!5193715 m!6248902))

(assert (=> b!5193715 m!6248896))

(declare-fun m!6248904 () Bool)

(assert (=> b!5193715 m!6248904))

(assert (=> b!5193715 m!6248902))

(declare-fun m!6248906 () Bool)

(assert (=> b!5193717 m!6248906))

(declare-fun m!6248908 () Bool)

(assert (=> b!5193726 m!6248908))

(declare-fun m!6248910 () Bool)

(assert (=> b!5193726 m!6248910))

(declare-fun m!6248912 () Bool)

(assert (=> b!5193726 m!6248912))

(declare-fun m!6248914 () Bool)

(assert (=> b!5193721 m!6248914))

(declare-fun m!6248916 () Bool)

(assert (=> b!5193725 m!6248916))

(push 1)

(assert (not b!5193711))

(assert (not b!5193715))

(assert (not b!5193714))

(assert tp_is_empty!38741)

(assert (not b!5193721))

(assert (not setNonEmpty!32833))

(assert (not b!5193717))

(assert (not b!5193726))

(assert (not b!5193719))

(assert (not start!549636))

(assert (not b!5193713))

(assert (not b!5193716))

(assert (not b!5193725))

(assert (not b!5193718))

(assert (not b!5193710))

(assert (not b!5193723))

(assert (not b!5193727))

(assert (not b!5193724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!365139 () Bool)

(declare-fun call!365144 () Bool)

(declare-fun isEmpty!32341 (List!60533) Bool)

(assert (=> bm!365139 (= call!365144 (isEmpty!32341 s!2326))))

(declare-fun b!5193830 () Bool)

(declare-fun e!3234924 () Bool)

(declare-fun head!11129 (List!60533) C!29758)

(assert (=> b!5193830 (= e!3234924 (= (head!11129 s!2326) (c!895247 r!7292)))))

(declare-fun b!5193831 () Bool)

(declare-fun e!3234922 () Bool)

(declare-fun e!3234921 () Bool)

(assert (=> b!5193831 (= e!3234922 e!3234921)))

(declare-fun c!895257 () Bool)

(assert (=> b!5193831 (= c!895257 (is-EmptyLang!14744 r!7292))))

(declare-fun b!5193832 () Bool)

(declare-fun res!2206126 () Bool)

(declare-fun e!3234923 () Bool)

(assert (=> b!5193832 (=> res!2206126 e!3234923)))

(assert (=> b!5193832 (= res!2206126 e!3234924)))

(declare-fun res!2206124 () Bool)

(assert (=> b!5193832 (=> (not res!2206124) (not e!3234924))))

(declare-fun lt!2138458 () Bool)

(assert (=> b!5193832 (= res!2206124 lt!2138458)))

(declare-fun b!5193833 () Bool)

(declare-fun res!2206119 () Bool)

(declare-fun e!3234926 () Bool)

(assert (=> b!5193833 (=> res!2206119 e!3234926)))

(declare-fun tail!10226 (List!60533) List!60533)

(assert (=> b!5193833 (= res!2206119 (not (isEmpty!32341 (tail!10226 s!2326))))))

(declare-fun b!5193834 () Bool)

(declare-fun e!3234920 () Bool)

(assert (=> b!5193834 (= e!3234920 e!3234926)))

(declare-fun res!2206125 () Bool)

(assert (=> b!5193834 (=> res!2206125 e!3234926)))

(assert (=> b!5193834 (= res!2206125 call!365144)))

(declare-fun b!5193835 () Bool)

(declare-fun res!2206121 () Bool)

(assert (=> b!5193835 (=> res!2206121 e!3234923)))

(assert (=> b!5193835 (= res!2206121 (not (is-ElementMatch!14744 r!7292)))))

(assert (=> b!5193835 (= e!3234921 e!3234923)))

(declare-fun b!5193836 () Bool)

(assert (=> b!5193836 (= e!3234922 (= lt!2138458 call!365144))))

(declare-fun b!5193837 () Bool)

(declare-fun res!2206123 () Bool)

(assert (=> b!5193837 (=> (not res!2206123) (not e!3234924))))

(assert (=> b!5193837 (= res!2206123 (isEmpty!32341 (tail!10226 s!2326)))))

(declare-fun b!5193839 () Bool)

(declare-fun e!3234925 () Bool)

(declare-fun nullable!4925 (Regex!14744) Bool)

(assert (=> b!5193839 (= e!3234925 (nullable!4925 r!7292))))

(declare-fun b!5193840 () Bool)

(declare-fun derivativeStep!4027 (Regex!14744 C!29758) Regex!14744)

(assert (=> b!5193840 (= e!3234925 (matchR!6929 (derivativeStep!4027 r!7292 (head!11129 s!2326)) (tail!10226 s!2326)))))

(declare-fun b!5193841 () Bool)

(assert (=> b!5193841 (= e!3234923 e!3234920)))

(declare-fun res!2206120 () Bool)

(assert (=> b!5193841 (=> (not res!2206120) (not e!3234920))))

(assert (=> b!5193841 (= res!2206120 (not lt!2138458))))

(declare-fun b!5193842 () Bool)

(declare-fun res!2206122 () Bool)

(assert (=> b!5193842 (=> (not res!2206122) (not e!3234924))))

(assert (=> b!5193842 (= res!2206122 (not call!365144))))

(declare-fun b!5193843 () Bool)

(assert (=> b!5193843 (= e!3234921 (not lt!2138458))))

(declare-fun b!5193838 () Bool)

(assert (=> b!5193838 (= e!3234926 (not (= (head!11129 s!2326) (c!895247 r!7292))))))

(declare-fun d!1677004 () Bool)

(assert (=> d!1677004 e!3234922))

(declare-fun c!895256 () Bool)

(assert (=> d!1677004 (= c!895256 (is-EmptyExpr!14744 r!7292))))

(assert (=> d!1677004 (= lt!2138458 e!3234925)))

(declare-fun c!895255 () Bool)

(assert (=> d!1677004 (= c!895255 (isEmpty!32341 s!2326))))

(assert (=> d!1677004 (validRegex!6480 r!7292)))

(assert (=> d!1677004 (= (matchR!6929 r!7292 s!2326) lt!2138458)))

(assert (= (and d!1677004 c!895255) b!5193839))

(assert (= (and d!1677004 (not c!895255)) b!5193840))

(assert (= (and d!1677004 c!895256) b!5193836))

(assert (= (and d!1677004 (not c!895256)) b!5193831))

(assert (= (and b!5193831 c!895257) b!5193843))

(assert (= (and b!5193831 (not c!895257)) b!5193835))

(assert (= (and b!5193835 (not res!2206121)) b!5193832))

(assert (= (and b!5193832 res!2206124) b!5193842))

(assert (= (and b!5193842 res!2206122) b!5193837))

(assert (= (and b!5193837 res!2206123) b!5193830))

(assert (= (and b!5193832 (not res!2206126)) b!5193841))

(assert (= (and b!5193841 res!2206120) b!5193834))

(assert (= (and b!5193834 (not res!2206125)) b!5193833))

(assert (= (and b!5193833 (not res!2206119)) b!5193838))

(assert (= (or b!5193836 b!5193834 b!5193842) bm!365139))

(declare-fun m!6248958 () Bool)

(assert (=> bm!365139 m!6248958))

(assert (=> d!1677004 m!6248958))

(assert (=> d!1677004 m!6248890))

(declare-fun m!6248960 () Bool)

(assert (=> b!5193833 m!6248960))

(assert (=> b!5193833 m!6248960))

(declare-fun m!6248962 () Bool)

(assert (=> b!5193833 m!6248962))

(assert (=> b!5193837 m!6248960))

(assert (=> b!5193837 m!6248960))

(assert (=> b!5193837 m!6248962))

(declare-fun m!6248964 () Bool)

(assert (=> b!5193838 m!6248964))

(assert (=> b!5193830 m!6248964))

(assert (=> b!5193840 m!6248964))

(assert (=> b!5193840 m!6248964))

(declare-fun m!6248966 () Bool)

(assert (=> b!5193840 m!6248966))

(assert (=> b!5193840 m!6248960))

(assert (=> b!5193840 m!6248966))

(assert (=> b!5193840 m!6248960))

(declare-fun m!6248968 () Bool)

(assert (=> b!5193840 m!6248968))

(declare-fun m!6248970 () Bool)

(assert (=> b!5193839 m!6248970))

(assert (=> b!5193726 d!1677004))

(declare-fun bs!1208790 () Bool)

(declare-fun b!5193884 () Bool)

(assert (= bs!1208790 (and b!5193884 b!5193715)))

(declare-fun lambda!259776 () Int)

(assert (=> bs!1208790 (not (= lambda!259776 lambda!259762))))

(assert (=> bs!1208790 (not (= lambda!259776 lambda!259763))))

(assert (=> b!5193884 true))

(assert (=> b!5193884 true))

(declare-fun bs!1208791 () Bool)

(declare-fun b!5193880 () Bool)

(assert (= bs!1208791 (and b!5193880 b!5193715)))

(declare-fun lambda!259777 () Int)

(assert (=> bs!1208791 (not (= lambda!259777 lambda!259762))))

(assert (=> bs!1208791 (= lambda!259777 lambda!259763)))

(declare-fun bs!1208792 () Bool)

(assert (= bs!1208792 (and b!5193880 b!5193884)))

(assert (=> bs!1208792 (not (= lambda!259777 lambda!259776))))

(assert (=> b!5193880 true))

(assert (=> b!5193880 true))

(declare-fun b!5193876 () Bool)

(declare-fun res!2206145 () Bool)

(declare-fun e!3234949 () Bool)

(assert (=> b!5193876 (=> res!2206145 e!3234949)))

(declare-fun call!365150 () Bool)

(assert (=> b!5193876 (= res!2206145 call!365150)))

(declare-fun e!3234945 () Bool)

(assert (=> b!5193876 (= e!3234945 e!3234949)))

(declare-fun b!5193877 () Bool)

(declare-fun e!3234947 () Bool)

(assert (=> b!5193877 (= e!3234947 (= s!2326 (Cons!60409 (c!895247 r!7292) Nil!60409)))))

(declare-fun b!5193878 () Bool)

(declare-fun e!3234946 () Bool)

(declare-fun e!3234948 () Bool)

(assert (=> b!5193878 (= e!3234946 e!3234948)))

(declare-fun res!2206144 () Bool)

(assert (=> b!5193878 (= res!2206144 (not (is-EmptyLang!14744 r!7292)))))

(assert (=> b!5193878 (=> (not res!2206144) (not e!3234948))))

(declare-fun bm!365144 () Bool)

(assert (=> bm!365144 (= call!365150 (isEmpty!32341 s!2326))))

(declare-fun b!5193879 () Bool)

(declare-fun e!3234951 () Bool)

(assert (=> b!5193879 (= e!3234951 e!3234945)))

(declare-fun c!895267 () Bool)

(assert (=> b!5193879 (= c!895267 (is-Star!14744 r!7292))))

(declare-fun d!1677006 () Bool)

(declare-fun c!895266 () Bool)

(assert (=> d!1677006 (= c!895266 (is-EmptyExpr!14744 r!7292))))

(assert (=> d!1677006 (= (matchRSpec!1847 r!7292 s!2326) e!3234946)))

(declare-fun call!365149 () Bool)

(assert (=> b!5193880 (= e!3234945 call!365149)))

(declare-fun bm!365145 () Bool)

(assert (=> bm!365145 (= call!365149 (Exists!1925 (ite c!895267 lambda!259776 lambda!259777)))))

(declare-fun b!5193881 () Bool)

(declare-fun c!895269 () Bool)

(assert (=> b!5193881 (= c!895269 (is-ElementMatch!14744 r!7292))))

(assert (=> b!5193881 (= e!3234948 e!3234947)))

(declare-fun b!5193882 () Bool)

(declare-fun e!3234950 () Bool)

(assert (=> b!5193882 (= e!3234951 e!3234950)))

(declare-fun res!2206143 () Bool)

(assert (=> b!5193882 (= res!2206143 (matchRSpec!1847 (regOne!30001 r!7292) s!2326))))

(assert (=> b!5193882 (=> res!2206143 e!3234950)))

(declare-fun b!5193883 () Bool)

(assert (=> b!5193883 (= e!3234950 (matchRSpec!1847 (regTwo!30001 r!7292) s!2326))))

(assert (=> b!5193884 (= e!3234949 call!365149)))

(declare-fun b!5193885 () Bool)

(declare-fun c!895268 () Bool)

(assert (=> b!5193885 (= c!895268 (is-Union!14744 r!7292))))

(assert (=> b!5193885 (= e!3234947 e!3234951)))

(declare-fun b!5193886 () Bool)

(assert (=> b!5193886 (= e!3234946 call!365150)))

(assert (= (and d!1677006 c!895266) b!5193886))

(assert (= (and d!1677006 (not c!895266)) b!5193878))

(assert (= (and b!5193878 res!2206144) b!5193881))

(assert (= (and b!5193881 c!895269) b!5193877))

(assert (= (and b!5193881 (not c!895269)) b!5193885))

(assert (= (and b!5193885 c!895268) b!5193882))

(assert (= (and b!5193885 (not c!895268)) b!5193879))

(assert (= (and b!5193882 (not res!2206143)) b!5193883))

(assert (= (and b!5193879 c!895267) b!5193876))

(assert (= (and b!5193879 (not c!895267)) b!5193880))

(assert (= (and b!5193876 (not res!2206145)) b!5193884))

(assert (= (or b!5193884 b!5193880) bm!365145))

(assert (= (or b!5193886 b!5193876) bm!365144))

(assert (=> bm!365144 m!6248958))

(declare-fun m!6248972 () Bool)

(assert (=> bm!365145 m!6248972))

(declare-fun m!6248974 () Bool)

(assert (=> b!5193882 m!6248974))

(declare-fun m!6248976 () Bool)

(assert (=> b!5193883 m!6248976))

(assert (=> b!5193726 d!1677006))

(declare-fun d!1677008 () Bool)

(assert (=> d!1677008 (= (matchR!6929 r!7292 s!2326) (matchRSpec!1847 r!7292 s!2326))))

(declare-fun lt!2138461 () Unit!152322)

(declare-fun choose!38581 (Regex!14744 List!60533) Unit!152322)

(assert (=> d!1677008 (= lt!2138461 (choose!38581 r!7292 s!2326))))

(assert (=> d!1677008 (validRegex!6480 r!7292)))

(assert (=> d!1677008 (= (mainMatchTheorem!1847 r!7292 s!2326) lt!2138461)))

(declare-fun bs!1208793 () Bool)

(assert (= bs!1208793 d!1677008))

(assert (=> bs!1208793 m!6248908))

(assert (=> bs!1208793 m!6248910))

(declare-fun m!6248978 () Bool)

(assert (=> bs!1208793 m!6248978))

(assert (=> bs!1208793 m!6248890))

(assert (=> b!5193726 d!1677008))

(declare-fun d!1677010 () Bool)

(declare-fun e!3234954 () Bool)

(assert (=> d!1677010 e!3234954))

(declare-fun res!2206148 () Bool)

(assert (=> d!1677010 (=> (not res!2206148) (not e!3234954))))

(declare-fun lt!2138464 () List!60532)

(declare-fun noDuplicate!1161 (List!60532) Bool)

(assert (=> d!1677010 (= res!2206148 (noDuplicate!1161 lt!2138464))))

(declare-fun choose!38582 ((Set Context!8256)) List!60532)

(assert (=> d!1677010 (= lt!2138464 (choose!38582 z!1189))))

(assert (=> d!1677010 (= (toList!8528 z!1189) lt!2138464)))

(declare-fun b!5193889 () Bool)

(declare-fun content!10697 (List!60532) (Set Context!8256))

(assert (=> b!5193889 (= e!3234954 (= (content!10697 lt!2138464) z!1189))))

(assert (= (and d!1677010 res!2206148) b!5193889))

(declare-fun m!6248980 () Bool)

(assert (=> d!1677010 m!6248980))

(declare-fun m!6248982 () Bool)

(assert (=> d!1677010 m!6248982))

(declare-fun m!6248984 () Bool)

(assert (=> b!5193889 m!6248984))

(assert (=> b!5193721 d!1677010))

(declare-fun b!5193910 () Bool)

(declare-fun e!3234968 () Regex!14744)

(assert (=> b!5193910 (= e!3234968 (h!66855 (unfocusZipperList!186 zl!343)))))

(declare-fun b!5193911 () Bool)

(declare-fun e!3234971 () Regex!14744)

(assert (=> b!5193911 (= e!3234968 e!3234971)))

(declare-fun c!895281 () Bool)

(assert (=> b!5193911 (= c!895281 (is-Cons!60407 (unfocusZipperList!186 zl!343)))))

(declare-fun b!5193912 () Bool)

(declare-fun e!3234970 () Bool)

(declare-fun e!3234972 () Bool)

(assert (=> b!5193912 (= e!3234970 e!3234972)))

(declare-fun c!895279 () Bool)

(declare-fun isEmpty!32342 (List!60531) Bool)

(assert (=> b!5193912 (= c!895279 (isEmpty!32342 (unfocusZipperList!186 zl!343)))))

(declare-fun b!5193913 () Bool)

(assert (=> b!5193913 (= e!3234971 EmptyLang!14744)))

(declare-fun d!1677012 () Bool)

(assert (=> d!1677012 e!3234970))

(declare-fun res!2206154 () Bool)

(assert (=> d!1677012 (=> (not res!2206154) (not e!3234970))))

(declare-fun lt!2138467 () Regex!14744)

(assert (=> d!1677012 (= res!2206154 (validRegex!6480 lt!2138467))))

(assert (=> d!1677012 (= lt!2138467 e!3234968)))

(declare-fun c!895278 () Bool)

(declare-fun e!3234969 () Bool)

(assert (=> d!1677012 (= c!895278 e!3234969)))

(declare-fun res!2206153 () Bool)

(assert (=> d!1677012 (=> (not res!2206153) (not e!3234969))))

(assert (=> d!1677012 (= res!2206153 (is-Cons!60407 (unfocusZipperList!186 zl!343)))))

(declare-fun lambda!259780 () Int)

(declare-fun forall!14213 (List!60531 Int) Bool)

(assert (=> d!1677012 (forall!14213 (unfocusZipperList!186 zl!343) lambda!259780)))

(assert (=> d!1677012 (= (generalisedUnion!673 (unfocusZipperList!186 zl!343)) lt!2138467)))

(declare-fun b!5193914 () Bool)

(declare-fun e!3234967 () Bool)

(assert (=> b!5193914 (= e!3234972 e!3234967)))

(declare-fun c!895280 () Bool)

(declare-fun tail!10227 (List!60531) List!60531)

(assert (=> b!5193914 (= c!895280 (isEmpty!32342 (tail!10227 (unfocusZipperList!186 zl!343))))))

(declare-fun b!5193915 () Bool)

(declare-fun head!11130 (List!60531) Regex!14744)

(assert (=> b!5193915 (= e!3234967 (= lt!2138467 (head!11130 (unfocusZipperList!186 zl!343))))))

(declare-fun b!5193916 () Bool)

(assert (=> b!5193916 (= e!3234971 (Union!14744 (h!66855 (unfocusZipperList!186 zl!343)) (generalisedUnion!673 (t!373684 (unfocusZipperList!186 zl!343)))))))

(declare-fun b!5193917 () Bool)

(declare-fun isEmptyLang!751 (Regex!14744) Bool)

(assert (=> b!5193917 (= e!3234972 (isEmptyLang!751 lt!2138467))))

(declare-fun b!5193918 () Bool)

(assert (=> b!5193918 (= e!3234969 (isEmpty!32342 (t!373684 (unfocusZipperList!186 zl!343))))))

(declare-fun b!5193919 () Bool)

(declare-fun isUnion!183 (Regex!14744) Bool)

(assert (=> b!5193919 (= e!3234967 (isUnion!183 lt!2138467))))

(assert (= (and d!1677012 res!2206153) b!5193918))

(assert (= (and d!1677012 c!895278) b!5193910))

(assert (= (and d!1677012 (not c!895278)) b!5193911))

(assert (= (and b!5193911 c!895281) b!5193916))

(assert (= (and b!5193911 (not c!895281)) b!5193913))

(assert (= (and d!1677012 res!2206154) b!5193912))

(assert (= (and b!5193912 c!895279) b!5193917))

(assert (= (and b!5193912 (not c!895279)) b!5193914))

(assert (= (and b!5193914 c!895280) b!5193915))

(assert (= (and b!5193914 (not c!895280)) b!5193919))

(assert (=> b!5193915 m!6248884))

(declare-fun m!6248986 () Bool)

(assert (=> b!5193915 m!6248986))

(assert (=> b!5193912 m!6248884))

(declare-fun m!6248988 () Bool)

(assert (=> b!5193912 m!6248988))

(declare-fun m!6248990 () Bool)

(assert (=> b!5193917 m!6248990))

(declare-fun m!6248992 () Bool)

(assert (=> b!5193919 m!6248992))

(declare-fun m!6248994 () Bool)

(assert (=> d!1677012 m!6248994))

(assert (=> d!1677012 m!6248884))

(declare-fun m!6248996 () Bool)

(assert (=> d!1677012 m!6248996))

(declare-fun m!6248998 () Bool)

(assert (=> b!5193918 m!6248998))

(assert (=> b!5193914 m!6248884))

(declare-fun m!6249000 () Bool)

(assert (=> b!5193914 m!6249000))

(assert (=> b!5193914 m!6249000))

(declare-fun m!6249002 () Bool)

(assert (=> b!5193914 m!6249002))

(declare-fun m!6249004 () Bool)

(assert (=> b!5193916 m!6249004))

(assert (=> b!5193711 d!1677012))

(declare-fun bs!1208794 () Bool)

(declare-fun d!1677014 () Bool)

(assert (= bs!1208794 (and d!1677014 d!1677012)))

(declare-fun lambda!259783 () Int)

(assert (=> bs!1208794 (= lambda!259783 lambda!259780)))

(declare-fun lt!2138470 () List!60531)

(assert (=> d!1677014 (forall!14213 lt!2138470 lambda!259783)))

(declare-fun e!3234975 () List!60531)

(assert (=> d!1677014 (= lt!2138470 e!3234975)))

(declare-fun c!895284 () Bool)

(assert (=> d!1677014 (= c!895284 (is-Cons!60408 zl!343))))

(assert (=> d!1677014 (= (unfocusZipperList!186 zl!343) lt!2138470)))

(declare-fun b!5193924 () Bool)

(assert (=> b!5193924 (= e!3234975 (Cons!60407 (generalisedConcat!413 (exprs!4628 (h!66856 zl!343))) (unfocusZipperList!186 (t!373685 zl!343))))))

(declare-fun b!5193925 () Bool)

(assert (=> b!5193925 (= e!3234975 Nil!60407)))

(assert (= (and d!1677014 c!895284) b!5193924))

(assert (= (and d!1677014 (not c!895284)) b!5193925))

(declare-fun m!6249006 () Bool)

(assert (=> d!1677014 m!6249006))

(assert (=> b!5193924 m!6248878))

(declare-fun m!6249008 () Bool)

(assert (=> b!5193924 m!6249008))

(assert (=> b!5193711 d!1677014))

(declare-fun b!5193944 () Bool)

(declare-fun e!3234989 () Bool)

(declare-fun lt!2138480 () Option!14855)

(assert (=> b!5193944 (= e!3234989 (not (isDefined!11558 lt!2138480)))))

(declare-fun b!5193946 () Bool)

(declare-fun e!3234986 () Option!14855)

(assert (=> b!5193946 (= e!3234986 (Some!14854 (tuple2!63887 Nil!60409 s!2326)))))

(declare-fun b!5193947 () Bool)

(declare-fun lt!2138482 () Unit!152322)

(declare-fun lt!2138481 () Unit!152322)

(assert (=> b!5193947 (= lt!2138482 lt!2138481)))

(declare-fun ++!13184 (List!60533 List!60533) List!60533)

(assert (=> b!5193947 (= (++!13184 (++!13184 Nil!60409 (Cons!60409 (h!66857 s!2326) Nil!60409)) (t!373686 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1599 (List!60533 C!29758 List!60533 List!60533) Unit!152322)

(assert (=> b!5193947 (= lt!2138481 (lemmaMoveElementToOtherListKeepsConcatEq!1599 Nil!60409 (h!66857 s!2326) (t!373686 s!2326) s!2326))))

(declare-fun e!3234987 () Option!14855)

(assert (=> b!5193947 (= e!3234987 (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) (++!13184 Nil!60409 (Cons!60409 (h!66857 s!2326) Nil!60409)) (t!373686 s!2326) s!2326))))

(declare-fun b!5193948 () Bool)

(declare-fun res!2206168 () Bool)

(declare-fun e!3234988 () Bool)

(assert (=> b!5193948 (=> (not res!2206168) (not e!3234988))))

(declare-fun get!20762 (Option!14855) tuple2!63886)

(assert (=> b!5193948 (= res!2206168 (matchR!6929 (regOne!30000 r!7292) (_1!35246 (get!20762 lt!2138480))))))

(declare-fun b!5193949 () Bool)

(declare-fun res!2206166 () Bool)

(assert (=> b!5193949 (=> (not res!2206166) (not e!3234988))))

(assert (=> b!5193949 (= res!2206166 (matchR!6929 (regTwo!30000 r!7292) (_2!35246 (get!20762 lt!2138480))))))

(declare-fun b!5193950 () Bool)

(assert (=> b!5193950 (= e!3234986 e!3234987)))

(declare-fun c!895290 () Bool)

(assert (=> b!5193950 (= c!895290 (is-Nil!60409 s!2326))))

(declare-fun b!5193945 () Bool)

(assert (=> b!5193945 (= e!3234987 None!14854)))

(declare-fun d!1677016 () Bool)

(assert (=> d!1677016 e!3234989))

(declare-fun res!2206167 () Bool)

(assert (=> d!1677016 (=> res!2206167 e!3234989)))

(assert (=> d!1677016 (= res!2206167 e!3234988)))

(declare-fun res!2206169 () Bool)

(assert (=> d!1677016 (=> (not res!2206169) (not e!3234988))))

(assert (=> d!1677016 (= res!2206169 (isDefined!11558 lt!2138480))))

(assert (=> d!1677016 (= lt!2138480 e!3234986)))

(declare-fun c!895289 () Bool)

(declare-fun e!3234990 () Bool)

(assert (=> d!1677016 (= c!895289 e!3234990)))

(declare-fun res!2206165 () Bool)

(assert (=> d!1677016 (=> (not res!2206165) (not e!3234990))))

(assert (=> d!1677016 (= res!2206165 (matchR!6929 (regOne!30000 r!7292) Nil!60409))))

(assert (=> d!1677016 (validRegex!6480 (regOne!30000 r!7292))))

(assert (=> d!1677016 (= (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) Nil!60409 s!2326 s!2326) lt!2138480)))

(declare-fun b!5193951 () Bool)

(assert (=> b!5193951 (= e!3234988 (= (++!13184 (_1!35246 (get!20762 lt!2138480)) (_2!35246 (get!20762 lt!2138480))) s!2326))))

(declare-fun b!5193952 () Bool)

(assert (=> b!5193952 (= e!3234990 (matchR!6929 (regTwo!30000 r!7292) s!2326))))

(assert (= (and d!1677016 res!2206165) b!5193952))

(assert (= (and d!1677016 c!895289) b!5193946))

(assert (= (and d!1677016 (not c!895289)) b!5193950))

(assert (= (and b!5193950 c!895290) b!5193945))

(assert (= (and b!5193950 (not c!895290)) b!5193947))

(assert (= (and d!1677016 res!2206169) b!5193948))

(assert (= (and b!5193948 res!2206168) b!5193949))

(assert (= (and b!5193949 res!2206166) b!5193951))

(assert (= (and d!1677016 (not res!2206167)) b!5193944))

(declare-fun m!6249012 () Bool)

(assert (=> b!5193951 m!6249012))

(declare-fun m!6249014 () Bool)

(assert (=> b!5193951 m!6249014))

(declare-fun m!6249016 () Bool)

(assert (=> b!5193952 m!6249016))

(declare-fun m!6249018 () Bool)

(assert (=> b!5193947 m!6249018))

(assert (=> b!5193947 m!6249018))

(declare-fun m!6249020 () Bool)

(assert (=> b!5193947 m!6249020))

(declare-fun m!6249022 () Bool)

(assert (=> b!5193947 m!6249022))

(assert (=> b!5193947 m!6249018))

(declare-fun m!6249024 () Bool)

(assert (=> b!5193947 m!6249024))

(assert (=> b!5193948 m!6249012))

(declare-fun m!6249026 () Bool)

(assert (=> b!5193948 m!6249026))

(declare-fun m!6249028 () Bool)

(assert (=> d!1677016 m!6249028))

(declare-fun m!6249030 () Bool)

(assert (=> d!1677016 m!6249030))

(assert (=> d!1677016 m!6248892))

(assert (=> b!5193949 m!6249012))

(declare-fun m!6249032 () Bool)

(assert (=> b!5193949 m!6249032))

(assert (=> b!5193944 m!6249028))

(assert (=> b!5193715 d!1677016))

(declare-fun d!1677024 () Bool)

(declare-fun choose!38583 (Int) Bool)

(assert (=> d!1677024 (= (Exists!1925 lambda!259763) (choose!38583 lambda!259763))))

(declare-fun bs!1208796 () Bool)

(assert (= bs!1208796 d!1677024))

(declare-fun m!6249034 () Bool)

(assert (=> bs!1208796 m!6249034))

(assert (=> b!5193715 d!1677024))

(declare-fun b!5193974 () Bool)

(declare-fun res!2206186 () Bool)

(declare-fun e!3235014 () Bool)

(assert (=> b!5193974 (=> (not res!2206186) (not e!3235014))))

(declare-fun call!365158 () Bool)

(assert (=> b!5193974 (= res!2206186 call!365158)))

(declare-fun e!3235013 () Bool)

(assert (=> b!5193974 (= e!3235013 e!3235014)))

(declare-fun bm!365152 () Bool)

(declare-fun call!365157 () Bool)

(declare-fun call!365159 () Bool)

(assert (=> bm!365152 (= call!365157 call!365159)))

(declare-fun b!5193975 () Bool)

(declare-fun e!3235011 () Bool)

(assert (=> b!5193975 (= e!3235011 call!365159)))

(declare-fun b!5193976 () Bool)

(declare-fun res!2206184 () Bool)

(declare-fun e!3235010 () Bool)

(assert (=> b!5193976 (=> res!2206184 e!3235010)))

(assert (=> b!5193976 (= res!2206184 (not (is-Concat!23589 (regOne!30000 r!7292))))))

(assert (=> b!5193976 (= e!3235013 e!3235010)))

(declare-fun b!5193977 () Bool)

(assert (=> b!5193977 (= e!3235014 call!365157)))

(declare-fun b!5193978 () Bool)

(declare-fun e!3235008 () Bool)

(declare-fun e!3235009 () Bool)

(assert (=> b!5193978 (= e!3235008 e!3235009)))

(declare-fun c!895296 () Bool)

(assert (=> b!5193978 (= c!895296 (is-Star!14744 (regOne!30000 r!7292)))))

(declare-fun b!5193979 () Bool)

(declare-fun e!3235012 () Bool)

(assert (=> b!5193979 (= e!3235012 call!365157)))

(declare-fun c!895295 () Bool)

(declare-fun bm!365153 () Bool)

(assert (=> bm!365153 (= call!365159 (validRegex!6480 (ite c!895296 (reg!15073 (regOne!30000 r!7292)) (ite c!895295 (regTwo!30001 (regOne!30000 r!7292)) (regTwo!30000 (regOne!30000 r!7292))))))))

(declare-fun b!5193980 () Bool)

(assert (=> b!5193980 (= e!3235009 e!3235013)))

(assert (=> b!5193980 (= c!895295 (is-Union!14744 (regOne!30000 r!7292)))))

(declare-fun b!5193981 () Bool)

(assert (=> b!5193981 (= e!3235009 e!3235011)))

(declare-fun res!2206187 () Bool)

(assert (=> b!5193981 (= res!2206187 (not (nullable!4925 (reg!15073 (regOne!30000 r!7292)))))))

(assert (=> b!5193981 (=> (not res!2206187) (not e!3235011))))

(declare-fun d!1677026 () Bool)

(declare-fun res!2206185 () Bool)

(assert (=> d!1677026 (=> res!2206185 e!3235008)))

(assert (=> d!1677026 (= res!2206185 (is-ElementMatch!14744 (regOne!30000 r!7292)))))

(assert (=> d!1677026 (= (validRegex!6480 (regOne!30000 r!7292)) e!3235008)))

(declare-fun bm!365154 () Bool)

(assert (=> bm!365154 (= call!365158 (validRegex!6480 (ite c!895295 (regOne!30001 (regOne!30000 r!7292)) (regOne!30000 (regOne!30000 r!7292)))))))

(declare-fun b!5193982 () Bool)

(assert (=> b!5193982 (= e!3235010 e!3235012)))

(declare-fun res!2206183 () Bool)

(assert (=> b!5193982 (=> (not res!2206183) (not e!3235012))))

(assert (=> b!5193982 (= res!2206183 call!365158)))

(assert (= (and d!1677026 (not res!2206185)) b!5193978))

(assert (= (and b!5193978 c!895296) b!5193981))

(assert (= (and b!5193978 (not c!895296)) b!5193980))

(assert (= (and b!5193981 res!2206187) b!5193975))

(assert (= (and b!5193980 c!895295) b!5193974))

(assert (= (and b!5193980 (not c!895295)) b!5193976))

(assert (= (and b!5193974 res!2206186) b!5193977))

(assert (= (and b!5193976 (not res!2206184)) b!5193982))

(assert (= (and b!5193982 res!2206183) b!5193979))

(assert (= (or b!5193977 b!5193979) bm!365152))

(assert (= (or b!5193974 b!5193982) bm!365154))

(assert (= (or b!5193975 bm!365152) bm!365153))

(declare-fun m!6249042 () Bool)

(assert (=> bm!365153 m!6249042))

(declare-fun m!6249044 () Bool)

(assert (=> b!5193981 m!6249044))

(declare-fun m!6249046 () Bool)

(assert (=> bm!365154 m!6249046))

(assert (=> b!5193715 d!1677026))

(declare-fun d!1677030 () Bool)

(assert (=> d!1677030 (= (Exists!1925 lambda!259762) (choose!38583 lambda!259762))))

(declare-fun bs!1208797 () Bool)

(assert (= bs!1208797 d!1677030))

(declare-fun m!6249048 () Bool)

(assert (=> bs!1208797 m!6249048))

(assert (=> b!5193715 d!1677030))

(declare-fun bs!1208798 () Bool)

(declare-fun d!1677032 () Bool)

(assert (= bs!1208798 (and d!1677032 b!5193715)))

(declare-fun lambda!259786 () Int)

(assert (=> bs!1208798 (= lambda!259786 lambda!259762)))

(assert (=> bs!1208798 (not (= lambda!259786 lambda!259763))))

(declare-fun bs!1208799 () Bool)

(assert (= bs!1208799 (and d!1677032 b!5193884)))

(assert (=> bs!1208799 (not (= lambda!259786 lambda!259776))))

(declare-fun bs!1208800 () Bool)

(assert (= bs!1208800 (and d!1677032 b!5193880)))

(assert (=> bs!1208800 (not (= lambda!259786 lambda!259777))))

(assert (=> d!1677032 true))

(assert (=> d!1677032 true))

(assert (=> d!1677032 true))

(assert (=> d!1677032 (= (isDefined!11558 (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) Nil!60409 s!2326 s!2326)) (Exists!1925 lambda!259786))))

(declare-fun lt!2138488 () Unit!152322)

(declare-fun choose!38584 (Regex!14744 Regex!14744 List!60533) Unit!152322)

(assert (=> d!1677032 (= lt!2138488 (choose!38584 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326))))

(assert (=> d!1677032 (validRegex!6480 (regOne!30000 r!7292))))

(assert (=> d!1677032 (= (lemmaFindConcatSeparationEquivalentToExists!1033 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326) lt!2138488)))

(declare-fun bs!1208801 () Bool)

(assert (= bs!1208801 d!1677032))

(declare-fun m!6249050 () Bool)

(assert (=> bs!1208801 m!6249050))

(assert (=> bs!1208801 m!6248892))

(assert (=> bs!1208801 m!6248896))

(declare-fun m!6249052 () Bool)

(assert (=> bs!1208801 m!6249052))

(assert (=> bs!1208801 m!6248896))

(assert (=> bs!1208801 m!6248898))

(assert (=> b!5193715 d!1677032))

(declare-fun bs!1208802 () Bool)

(declare-fun d!1677034 () Bool)

(assert (= bs!1208802 (and d!1677034 b!5193715)))

(declare-fun lambda!259793 () Int)

(assert (=> bs!1208802 (not (= lambda!259793 lambda!259763))))

(declare-fun bs!1208803 () Bool)

(assert (= bs!1208803 (and d!1677034 b!5193880)))

(assert (=> bs!1208803 (not (= lambda!259793 lambda!259777))))

(declare-fun bs!1208804 () Bool)

(assert (= bs!1208804 (and d!1677034 d!1677032)))

(assert (=> bs!1208804 (= lambda!259793 lambda!259786)))

(assert (=> bs!1208802 (= lambda!259793 lambda!259762)))

(declare-fun bs!1208805 () Bool)

(assert (= bs!1208805 (and d!1677034 b!5193884)))

(assert (=> bs!1208805 (not (= lambda!259793 lambda!259776))))

(assert (=> d!1677034 true))

(assert (=> d!1677034 true))

(assert (=> d!1677034 true))

(declare-fun bs!1208806 () Bool)

(assert (= bs!1208806 d!1677034))

(declare-fun lambda!259795 () Int)

(assert (=> bs!1208806 (not (= lambda!259795 lambda!259793))))

(assert (=> bs!1208802 (= lambda!259795 lambda!259763)))

(assert (=> bs!1208803 (= lambda!259795 lambda!259777)))

(assert (=> bs!1208804 (not (= lambda!259795 lambda!259786))))

(assert (=> bs!1208802 (not (= lambda!259795 lambda!259762))))

(assert (=> bs!1208805 (not (= lambda!259795 lambda!259776))))

(assert (=> d!1677034 true))

(assert (=> d!1677034 true))

(assert (=> d!1677034 true))

(assert (=> d!1677034 (= (Exists!1925 lambda!259793) (Exists!1925 lambda!259795))))

(declare-fun lt!2138493 () Unit!152322)

(declare-fun choose!38585 (Regex!14744 Regex!14744 List!60533) Unit!152322)

(assert (=> d!1677034 (= lt!2138493 (choose!38585 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326))))

(assert (=> d!1677034 (validRegex!6480 (regOne!30000 r!7292))))

(assert (=> d!1677034 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!579 (regOne!30000 r!7292) (regTwo!30000 r!7292) s!2326) lt!2138493)))

(declare-fun m!6249060 () Bool)

(assert (=> bs!1208806 m!6249060))

(declare-fun m!6249064 () Bool)

(assert (=> bs!1208806 m!6249064))

(declare-fun m!6249066 () Bool)

(assert (=> bs!1208806 m!6249066))

(assert (=> bs!1208806 m!6248892))

(assert (=> b!5193715 d!1677034))

(declare-fun d!1677036 () Bool)

(declare-fun isEmpty!32343 (Option!14855) Bool)

(assert (=> d!1677036 (= (isDefined!11558 (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) Nil!60409 s!2326 s!2326)) (not (isEmpty!32343 (findConcatSeparation!1269 (regOne!30000 r!7292) (regTwo!30000 r!7292) Nil!60409 s!2326 s!2326))))))

(declare-fun bs!1208807 () Bool)

(assert (= bs!1208807 d!1677036))

(assert (=> bs!1208807 m!6248896))

(declare-fun m!6249080 () Bool)

(assert (=> bs!1208807 m!6249080))

(assert (=> b!5193715 d!1677036))

(declare-fun d!1677040 () Bool)

(assert (=> d!1677040 (= (isEmpty!32339 (t!373685 zl!343)) (is-Nil!60408 (t!373685 zl!343)))))

(assert (=> b!5193725 d!1677040))

(declare-fun b!5194025 () Bool)

(declare-fun res!2206209 () Bool)

(declare-fun e!3235045 () Bool)

(assert (=> b!5194025 (=> (not res!2206209) (not e!3235045))))

(declare-fun call!365161 () Bool)

(assert (=> b!5194025 (= res!2206209 call!365161)))

(declare-fun e!3235044 () Bool)

(assert (=> b!5194025 (= e!3235044 e!3235045)))

(declare-fun bm!365155 () Bool)

(declare-fun call!365160 () Bool)

(declare-fun call!365162 () Bool)

(assert (=> bm!365155 (= call!365160 call!365162)))

(declare-fun b!5194026 () Bool)

(declare-fun e!3235042 () Bool)

(assert (=> b!5194026 (= e!3235042 call!365162)))

(declare-fun b!5194027 () Bool)

(declare-fun res!2206207 () Bool)

(declare-fun e!3235041 () Bool)

(assert (=> b!5194027 (=> res!2206207 e!3235041)))

(assert (=> b!5194027 (= res!2206207 (not (is-Concat!23589 (regTwo!30000 r!7292))))))

(assert (=> b!5194027 (= e!3235044 e!3235041)))

(declare-fun b!5194028 () Bool)

(assert (=> b!5194028 (= e!3235045 call!365160)))

(declare-fun b!5194029 () Bool)

(declare-fun e!3235039 () Bool)

(declare-fun e!3235040 () Bool)

(assert (=> b!5194029 (= e!3235039 e!3235040)))

(declare-fun c!895310 () Bool)

(assert (=> b!5194029 (= c!895310 (is-Star!14744 (regTwo!30000 r!7292)))))

(declare-fun b!5194030 () Bool)

(declare-fun e!3235043 () Bool)

(assert (=> b!5194030 (= e!3235043 call!365160)))

(declare-fun bm!365156 () Bool)

(declare-fun c!895309 () Bool)

(assert (=> bm!365156 (= call!365162 (validRegex!6480 (ite c!895310 (reg!15073 (regTwo!30000 r!7292)) (ite c!895309 (regTwo!30001 (regTwo!30000 r!7292)) (regTwo!30000 (regTwo!30000 r!7292))))))))

(declare-fun b!5194031 () Bool)

(assert (=> b!5194031 (= e!3235040 e!3235044)))

(assert (=> b!5194031 (= c!895309 (is-Union!14744 (regTwo!30000 r!7292)))))

(declare-fun b!5194032 () Bool)

(assert (=> b!5194032 (= e!3235040 e!3235042)))

(declare-fun res!2206210 () Bool)

(assert (=> b!5194032 (= res!2206210 (not (nullable!4925 (reg!15073 (regTwo!30000 r!7292)))))))

(assert (=> b!5194032 (=> (not res!2206210) (not e!3235042))))

(declare-fun d!1677042 () Bool)

(declare-fun res!2206208 () Bool)

(assert (=> d!1677042 (=> res!2206208 e!3235039)))

(assert (=> d!1677042 (= res!2206208 (is-ElementMatch!14744 (regTwo!30000 r!7292)))))

(assert (=> d!1677042 (= (validRegex!6480 (regTwo!30000 r!7292)) e!3235039)))

(declare-fun bm!365157 () Bool)

(assert (=> bm!365157 (= call!365161 (validRegex!6480 (ite c!895309 (regOne!30001 (regTwo!30000 r!7292)) (regOne!30000 (regTwo!30000 r!7292)))))))

(declare-fun b!5194033 () Bool)

(assert (=> b!5194033 (= e!3235041 e!3235043)))

(declare-fun res!2206206 () Bool)

(assert (=> b!5194033 (=> (not res!2206206) (not e!3235043))))

(assert (=> b!5194033 (= res!2206206 call!365161)))

(assert (= (and d!1677042 (not res!2206208)) b!5194029))

(assert (= (and b!5194029 c!895310) b!5194032))

(assert (= (and b!5194029 (not c!895310)) b!5194031))

(assert (= (and b!5194032 res!2206210) b!5194026))

(assert (= (and b!5194031 c!895309) b!5194025))

(assert (= (and b!5194031 (not c!895309)) b!5194027))

(assert (= (and b!5194025 res!2206209) b!5194028))

(assert (= (and b!5194027 (not res!2206207)) b!5194033))

(assert (= (and b!5194033 res!2206206) b!5194030))

(assert (= (or b!5194028 b!5194030) bm!365155))

(assert (= (or b!5194025 b!5194033) bm!365157))

(assert (= (or b!5194026 bm!365155) bm!365156))

(declare-fun m!6249082 () Bool)

(assert (=> bm!365156 m!6249082))

(declare-fun m!6249084 () Bool)

(assert (=> b!5194032 m!6249084))

(declare-fun m!6249086 () Bool)

(assert (=> bm!365157 m!6249086))

(assert (=> b!5193710 d!1677042))

(declare-fun b!5194034 () Bool)

(declare-fun res!2206214 () Bool)

(declare-fun e!3235052 () Bool)

(assert (=> b!5194034 (=> (not res!2206214) (not e!3235052))))

(declare-fun call!365164 () Bool)

(assert (=> b!5194034 (= res!2206214 call!365164)))

(declare-fun e!3235051 () Bool)

(assert (=> b!5194034 (= e!3235051 e!3235052)))

(declare-fun bm!365158 () Bool)

(declare-fun call!365163 () Bool)

(declare-fun call!365165 () Bool)

(assert (=> bm!365158 (= call!365163 call!365165)))

(declare-fun b!5194035 () Bool)

(declare-fun e!3235049 () Bool)

(assert (=> b!5194035 (= e!3235049 call!365165)))

(declare-fun b!5194036 () Bool)

(declare-fun res!2206212 () Bool)

(declare-fun e!3235048 () Bool)

(assert (=> b!5194036 (=> res!2206212 e!3235048)))

(assert (=> b!5194036 (= res!2206212 (not (is-Concat!23589 r!7292)))))

(assert (=> b!5194036 (= e!3235051 e!3235048)))

(declare-fun b!5194037 () Bool)

(assert (=> b!5194037 (= e!3235052 call!365163)))

(declare-fun b!5194038 () Bool)

(declare-fun e!3235046 () Bool)

(declare-fun e!3235047 () Bool)

(assert (=> b!5194038 (= e!3235046 e!3235047)))

(declare-fun c!895312 () Bool)

(assert (=> b!5194038 (= c!895312 (is-Star!14744 r!7292))))

(declare-fun b!5194039 () Bool)

(declare-fun e!3235050 () Bool)

(assert (=> b!5194039 (= e!3235050 call!365163)))

(declare-fun bm!365159 () Bool)

(declare-fun c!895311 () Bool)

(assert (=> bm!365159 (= call!365165 (validRegex!6480 (ite c!895312 (reg!15073 r!7292) (ite c!895311 (regTwo!30001 r!7292) (regTwo!30000 r!7292)))))))

(declare-fun b!5194040 () Bool)

(assert (=> b!5194040 (= e!3235047 e!3235051)))

(assert (=> b!5194040 (= c!895311 (is-Union!14744 r!7292))))

(declare-fun b!5194041 () Bool)

(assert (=> b!5194041 (= e!3235047 e!3235049)))

(declare-fun res!2206215 () Bool)

(assert (=> b!5194041 (= res!2206215 (not (nullable!4925 (reg!15073 r!7292))))))

(assert (=> b!5194041 (=> (not res!2206215) (not e!3235049))))

(declare-fun d!1677044 () Bool)

(declare-fun res!2206213 () Bool)

(assert (=> d!1677044 (=> res!2206213 e!3235046)))

(assert (=> d!1677044 (= res!2206213 (is-ElementMatch!14744 r!7292))))

(assert (=> d!1677044 (= (validRegex!6480 r!7292) e!3235046)))

(declare-fun bm!365160 () Bool)

(assert (=> bm!365160 (= call!365164 (validRegex!6480 (ite c!895311 (regOne!30001 r!7292) (regOne!30000 r!7292))))))

(declare-fun b!5194042 () Bool)

(assert (=> b!5194042 (= e!3235048 e!3235050)))

(declare-fun res!2206211 () Bool)

(assert (=> b!5194042 (=> (not res!2206211) (not e!3235050))))

(assert (=> b!5194042 (= res!2206211 call!365164)))

(assert (= (and d!1677044 (not res!2206213)) b!5194038))

(assert (= (and b!5194038 c!895312) b!5194041))

(assert (= (and b!5194038 (not c!895312)) b!5194040))

(assert (= (and b!5194041 res!2206215) b!5194035))

(assert (= (and b!5194040 c!895311) b!5194034))

(assert (= (and b!5194040 (not c!895311)) b!5194036))

(assert (= (and b!5194034 res!2206214) b!5194037))

(assert (= (and b!5194036 (not res!2206212)) b!5194042))

(assert (= (and b!5194042 res!2206211) b!5194039))

(assert (= (or b!5194037 b!5194039) bm!365158))

(assert (= (or b!5194034 b!5194042) bm!365160))

(assert (= (or b!5194035 bm!365158) bm!365159))

(declare-fun m!6249088 () Bool)

(assert (=> bm!365159 m!6249088))

(declare-fun m!6249090 () Bool)

(assert (=> b!5194041 m!6249090))

(declare-fun m!6249092 () Bool)

(assert (=> bm!365160 m!6249092))

(assert (=> start!549636 d!1677044))

(declare-fun bs!1208808 () Bool)

(declare-fun d!1677046 () Bool)

(assert (= bs!1208808 (and d!1677046 d!1677012)))

(declare-fun lambda!259798 () Int)

(assert (=> bs!1208808 (= lambda!259798 lambda!259780)))

(declare-fun bs!1208809 () Bool)

(assert (= bs!1208809 (and d!1677046 d!1677014)))

(assert (=> bs!1208809 (= lambda!259798 lambda!259783)))

(assert (=> d!1677046 (= (inv!80108 setElem!32833) (forall!14213 (exprs!4628 setElem!32833) lambda!259798))))

(declare-fun bs!1208810 () Bool)

(assert (= bs!1208810 d!1677046))

(declare-fun m!6249094 () Bool)

(assert (=> bs!1208810 m!6249094))

(assert (=> setNonEmpty!32833 d!1677046))

(declare-fun d!1677048 () Bool)

(declare-fun lt!2138497 () Regex!14744)

(assert (=> d!1677048 (validRegex!6480 lt!2138497)))

(assert (=> d!1677048 (= lt!2138497 (generalisedUnion!673 (unfocusZipperList!186 zl!343)))))

(assert (=> d!1677048 (= (unfocusZipper!486 zl!343) lt!2138497)))

(declare-fun bs!1208811 () Bool)

(assert (= bs!1208811 d!1677048))

(declare-fun m!6249096 () Bool)

(assert (=> bs!1208811 m!6249096))

(assert (=> bs!1208811 m!6248884))

(assert (=> bs!1208811 m!6248884))

(assert (=> bs!1208811 m!6248886))

(assert (=> b!5193723 d!1677048))

(declare-fun bs!1208812 () Bool)

(declare-fun d!1677050 () Bool)

(assert (= bs!1208812 (and d!1677050 d!1677012)))

(declare-fun lambda!259801 () Int)

(assert (=> bs!1208812 (= lambda!259801 lambda!259780)))

(declare-fun bs!1208813 () Bool)

(assert (= bs!1208813 (and d!1677050 d!1677014)))

(assert (=> bs!1208813 (= lambda!259801 lambda!259783)))

(declare-fun bs!1208814 () Bool)

(assert (= bs!1208814 (and d!1677050 d!1677046)))

(assert (=> bs!1208814 (= lambda!259801 lambda!259798)))

(declare-fun e!3235084 () Bool)

(assert (=> d!1677050 e!3235084))

(declare-fun res!2206231 () Bool)

(assert (=> d!1677050 (=> (not res!2206231) (not e!3235084))))

(declare-fun lt!2138500 () Regex!14744)

(assert (=> d!1677050 (= res!2206231 (validRegex!6480 lt!2138500))))

(declare-fun e!3235083 () Regex!14744)

(assert (=> d!1677050 (= lt!2138500 e!3235083)))

(declare-fun c!895327 () Bool)

(declare-fun e!3235080 () Bool)

(assert (=> d!1677050 (= c!895327 e!3235080)))

(declare-fun res!2206230 () Bool)

(assert (=> d!1677050 (=> (not res!2206230) (not e!3235080))))

(assert (=> d!1677050 (= res!2206230 (is-Cons!60407 (exprs!4628 (h!66856 zl!343))))))

(assert (=> d!1677050 (forall!14213 (exprs!4628 (h!66856 zl!343)) lambda!259801)))

(assert (=> d!1677050 (= (generalisedConcat!413 (exprs!4628 (h!66856 zl!343))) lt!2138500)))

(declare-fun b!5194081 () Bool)

(declare-fun e!3235082 () Bool)

(assert (=> b!5194081 (= e!3235082 (= lt!2138500 (head!11130 (exprs!4628 (h!66856 zl!343)))))))

(declare-fun b!5194082 () Bool)

(declare-fun isConcat!264 (Regex!14744) Bool)

(assert (=> b!5194082 (= e!3235082 (isConcat!264 lt!2138500))))

(declare-fun b!5194083 () Bool)

(declare-fun e!3235081 () Regex!14744)

(assert (=> b!5194083 (= e!3235081 EmptyExpr!14744)))

(declare-fun b!5194084 () Bool)

(assert (=> b!5194084 (= e!3235083 e!3235081)))

(declare-fun c!895325 () Bool)

(assert (=> b!5194084 (= c!895325 (is-Cons!60407 (exprs!4628 (h!66856 zl!343))))))

(declare-fun b!5194085 () Bool)

(assert (=> b!5194085 (= e!3235080 (isEmpty!32342 (t!373684 (exprs!4628 (h!66856 zl!343)))))))

(declare-fun b!5194086 () Bool)

(declare-fun e!3235079 () Bool)

(assert (=> b!5194086 (= e!3235079 e!3235082)))

(declare-fun c!895326 () Bool)

(assert (=> b!5194086 (= c!895326 (isEmpty!32342 (tail!10227 (exprs!4628 (h!66856 zl!343)))))))

(declare-fun b!5194087 () Bool)

(assert (=> b!5194087 (= e!3235084 e!3235079)))

(declare-fun c!895328 () Bool)

(assert (=> b!5194087 (= c!895328 (isEmpty!32342 (exprs!4628 (h!66856 zl!343))))))

(declare-fun b!5194088 () Bool)

(assert (=> b!5194088 (= e!3235081 (Concat!23589 (h!66855 (exprs!4628 (h!66856 zl!343))) (generalisedConcat!413 (t!373684 (exprs!4628 (h!66856 zl!343))))))))

(declare-fun b!5194089 () Bool)

(declare-fun isEmptyExpr!741 (Regex!14744) Bool)

(assert (=> b!5194089 (= e!3235079 (isEmptyExpr!741 lt!2138500))))

(declare-fun b!5194090 () Bool)

(assert (=> b!5194090 (= e!3235083 (h!66855 (exprs!4628 (h!66856 zl!343))))))

(assert (= (and d!1677050 res!2206230) b!5194085))

(assert (= (and d!1677050 c!895327) b!5194090))

(assert (= (and d!1677050 (not c!895327)) b!5194084))

(assert (= (and b!5194084 c!895325) b!5194088))

(assert (= (and b!5194084 (not c!895325)) b!5194083))

(assert (= (and d!1677050 res!2206231) b!5194087))

(assert (= (and b!5194087 c!895328) b!5194089))

(assert (= (and b!5194087 (not c!895328)) b!5194086))

(assert (= (and b!5194086 c!895326) b!5194081))

(assert (= (and b!5194086 (not c!895326)) b!5194082))

(declare-fun m!6249098 () Bool)

(assert (=> b!5194082 m!6249098))

(declare-fun m!6249100 () Bool)

(assert (=> b!5194089 m!6249100))

(declare-fun m!6249102 () Bool)

(assert (=> d!1677050 m!6249102))

(declare-fun m!6249104 () Bool)

(assert (=> d!1677050 m!6249104))

(declare-fun m!6249106 () Bool)

(assert (=> b!5194085 m!6249106))

(declare-fun m!6249108 () Bool)

(assert (=> b!5194081 m!6249108))

(declare-fun m!6249110 () Bool)

(assert (=> b!5194086 m!6249110))

(assert (=> b!5194086 m!6249110))

(declare-fun m!6249112 () Bool)

(assert (=> b!5194086 m!6249112))

(declare-fun m!6249114 () Bool)

(assert (=> b!5194087 m!6249114))

(declare-fun m!6249116 () Bool)

(assert (=> b!5194088 m!6249116))

(assert (=> b!5193713 d!1677050))

(declare-fun bs!1208815 () Bool)

(declare-fun d!1677052 () Bool)

(assert (= bs!1208815 (and d!1677052 d!1677012)))

(declare-fun lambda!259802 () Int)

(assert (=> bs!1208815 (= lambda!259802 lambda!259780)))

(declare-fun bs!1208816 () Bool)

(assert (= bs!1208816 (and d!1677052 d!1677014)))

(assert (=> bs!1208816 (= lambda!259802 lambda!259783)))

(declare-fun bs!1208817 () Bool)

(assert (= bs!1208817 (and d!1677052 d!1677046)))

(assert (=> bs!1208817 (= lambda!259802 lambda!259798)))

(declare-fun bs!1208818 () Bool)

(assert (= bs!1208818 (and d!1677052 d!1677050)))

(assert (=> bs!1208818 (= lambda!259802 lambda!259801)))

(assert (=> d!1677052 (= (inv!80108 (h!66856 zl!343)) (forall!14213 (exprs!4628 (h!66856 zl!343)) lambda!259802))))

(declare-fun bs!1208819 () Bool)

(assert (= bs!1208819 d!1677052))

(declare-fun m!6249118 () Bool)

(assert (=> bs!1208819 m!6249118))

(assert (=> b!5193717 d!1677052))

(declare-fun b!5194104 () Bool)

(declare-fun e!3235094 () Bool)

(declare-fun tp!1457014 () Bool)

(declare-fun tp!1457015 () Bool)

(assert (=> b!5194104 (= e!3235094 (and tp!1457014 tp!1457015))))

(assert (=> b!5193716 (= tp!1456978 e!3235094)))

(assert (= (and b!5193716 (is-Cons!60407 (exprs!4628 setElem!32833))) b!5194104))

(declare-fun b!5194116 () Bool)

(declare-fun e!3235097 () Bool)

(declare-fun tp!1457030 () Bool)

(declare-fun tp!1457026 () Bool)

(assert (=> b!5194116 (= e!3235097 (and tp!1457030 tp!1457026))))

(declare-fun b!5194115 () Bool)

(assert (=> b!5194115 (= e!3235097 tp_is_empty!38741)))

(declare-fun b!5194118 () Bool)

(declare-fun tp!1457029 () Bool)

(declare-fun tp!1457027 () Bool)

(assert (=> b!5194118 (= e!3235097 (and tp!1457029 tp!1457027))))

(declare-fun b!5194117 () Bool)

(declare-fun tp!1457028 () Bool)

(assert (=> b!5194117 (= e!3235097 tp!1457028)))

(assert (=> b!5193714 (= tp!1456974 e!3235097)))

(assert (= (and b!5193714 (is-ElementMatch!14744 (regOne!30001 r!7292))) b!5194115))

(assert (= (and b!5193714 (is-Concat!23589 (regOne!30001 r!7292))) b!5194116))

(assert (= (and b!5193714 (is-Star!14744 (regOne!30001 r!7292))) b!5194117))

(assert (= (and b!5193714 (is-Union!14744 (regOne!30001 r!7292))) b!5194118))

(declare-fun b!5194120 () Bool)

(declare-fun e!3235098 () Bool)

(declare-fun tp!1457035 () Bool)

(declare-fun tp!1457031 () Bool)

(assert (=> b!5194120 (= e!3235098 (and tp!1457035 tp!1457031))))

(declare-fun b!5194119 () Bool)

(assert (=> b!5194119 (= e!3235098 tp_is_empty!38741)))

(declare-fun b!5194122 () Bool)

(declare-fun tp!1457034 () Bool)

(declare-fun tp!1457032 () Bool)

(assert (=> b!5194122 (= e!3235098 (and tp!1457034 tp!1457032))))

(declare-fun b!5194121 () Bool)

(declare-fun tp!1457033 () Bool)

(assert (=> b!5194121 (= e!3235098 tp!1457033)))

(assert (=> b!5193714 (= tp!1456971 e!3235098)))

(assert (= (and b!5193714 (is-ElementMatch!14744 (regTwo!30001 r!7292))) b!5194119))

(assert (= (and b!5193714 (is-Concat!23589 (regTwo!30001 r!7292))) b!5194120))

(assert (= (and b!5193714 (is-Star!14744 (regTwo!30001 r!7292))) b!5194121))

(assert (= (and b!5193714 (is-Union!14744 (regTwo!30001 r!7292))) b!5194122))

(declare-fun b!5194127 () Bool)

(declare-fun e!3235101 () Bool)

(declare-fun tp!1457038 () Bool)

(assert (=> b!5194127 (= e!3235101 (and tp_is_empty!38741 tp!1457038))))

(assert (=> b!5193719 (= tp!1456976 e!3235101)))

(assert (= (and b!5193719 (is-Cons!60409 (t!373686 s!2326))) b!5194127))

(declare-fun b!5194128 () Bool)

(declare-fun e!3235102 () Bool)

(declare-fun tp!1457039 () Bool)

(declare-fun tp!1457040 () Bool)

(assert (=> b!5194128 (= e!3235102 (and tp!1457039 tp!1457040))))

(assert (=> b!5193724 (= tp!1456970 e!3235102)))

(assert (= (and b!5193724 (is-Cons!60407 (exprs!4628 (h!66856 zl!343)))) b!5194128))

(declare-fun condSetEmpty!32839 () Bool)

(assert (=> setNonEmpty!32833 (= condSetEmpty!32839 (= setRest!32833 (as set.empty (Set Context!8256))))))

(declare-fun setRes!32839 () Bool)

(assert (=> setNonEmpty!32833 (= tp!1456979 setRes!32839)))

(declare-fun setIsEmpty!32839 () Bool)

(assert (=> setIsEmpty!32839 setRes!32839))

(declare-fun tp!1457045 () Bool)

(declare-fun e!3235105 () Bool)

(declare-fun setElem!32839 () Context!8256)

(declare-fun setNonEmpty!32839 () Bool)

(assert (=> setNonEmpty!32839 (= setRes!32839 (and tp!1457045 (inv!80108 setElem!32839) e!3235105))))

(declare-fun setRest!32839 () (Set Context!8256))

(assert (=> setNonEmpty!32839 (= setRest!32833 (set.union (set.insert setElem!32839 (as set.empty (Set Context!8256))) setRest!32839))))

(declare-fun b!5194133 () Bool)

(declare-fun tp!1457046 () Bool)

(assert (=> b!5194133 (= e!3235105 tp!1457046)))

(assert (= (and setNonEmpty!32833 condSetEmpty!32839) setIsEmpty!32839))

(assert (= (and setNonEmpty!32833 (not condSetEmpty!32839)) setNonEmpty!32839))

(assert (= setNonEmpty!32839 b!5194133))

(declare-fun m!6249126 () Bool)

(assert (=> setNonEmpty!32839 m!6249126))

(declare-fun b!5194135 () Bool)

(declare-fun e!3235106 () Bool)

(declare-fun tp!1457051 () Bool)

(declare-fun tp!1457047 () Bool)

(assert (=> b!5194135 (= e!3235106 (and tp!1457051 tp!1457047))))

(declare-fun b!5194134 () Bool)

(assert (=> b!5194134 (= e!3235106 tp_is_empty!38741)))

(declare-fun b!5194137 () Bool)

(declare-fun tp!1457050 () Bool)

(declare-fun tp!1457048 () Bool)

(assert (=> b!5194137 (= e!3235106 (and tp!1457050 tp!1457048))))

(declare-fun b!5194136 () Bool)

(declare-fun tp!1457049 () Bool)

(assert (=> b!5194136 (= e!3235106 tp!1457049)))

(assert (=> b!5193718 (= tp!1456977 e!3235106)))

(assert (= (and b!5193718 (is-ElementMatch!14744 (reg!15073 r!7292))) b!5194134))

(assert (= (and b!5193718 (is-Concat!23589 (reg!15073 r!7292))) b!5194135))

(assert (= (and b!5193718 (is-Star!14744 (reg!15073 r!7292))) b!5194136))

(assert (= (and b!5193718 (is-Union!14744 (reg!15073 r!7292))) b!5194137))

(declare-fun b!5194139 () Bool)

(declare-fun e!3235107 () Bool)

(declare-fun tp!1457056 () Bool)

(declare-fun tp!1457052 () Bool)

(assert (=> b!5194139 (= e!3235107 (and tp!1457056 tp!1457052))))

(declare-fun b!5194138 () Bool)

(assert (=> b!5194138 (= e!3235107 tp_is_empty!38741)))

(declare-fun b!5194141 () Bool)

(declare-fun tp!1457055 () Bool)

(declare-fun tp!1457053 () Bool)

(assert (=> b!5194141 (= e!3235107 (and tp!1457055 tp!1457053))))

(declare-fun b!5194140 () Bool)

(declare-fun tp!1457054 () Bool)

(assert (=> b!5194140 (= e!3235107 tp!1457054)))

(assert (=> b!5193727 (= tp!1456972 e!3235107)))

(assert (= (and b!5193727 (is-ElementMatch!14744 (regOne!30000 r!7292))) b!5194138))

(assert (= (and b!5193727 (is-Concat!23589 (regOne!30000 r!7292))) b!5194139))

(assert (= (and b!5193727 (is-Star!14744 (regOne!30000 r!7292))) b!5194140))

(assert (= (and b!5193727 (is-Union!14744 (regOne!30000 r!7292))) b!5194141))

(declare-fun b!5194143 () Bool)

(declare-fun e!3235108 () Bool)

(declare-fun tp!1457061 () Bool)

(declare-fun tp!1457057 () Bool)

(assert (=> b!5194143 (= e!3235108 (and tp!1457061 tp!1457057))))

(declare-fun b!5194142 () Bool)

(assert (=> b!5194142 (= e!3235108 tp_is_empty!38741)))

(declare-fun b!5194145 () Bool)

(declare-fun tp!1457060 () Bool)

(declare-fun tp!1457058 () Bool)

(assert (=> b!5194145 (= e!3235108 (and tp!1457060 tp!1457058))))

(declare-fun b!5194144 () Bool)

(declare-fun tp!1457059 () Bool)

(assert (=> b!5194144 (= e!3235108 tp!1457059)))

(assert (=> b!5193727 (= tp!1456973 e!3235108)))

(assert (= (and b!5193727 (is-ElementMatch!14744 (regTwo!30000 r!7292))) b!5194142))

(assert (= (and b!5193727 (is-Concat!23589 (regTwo!30000 r!7292))) b!5194143))

(assert (= (and b!5193727 (is-Star!14744 (regTwo!30000 r!7292))) b!5194144))

(assert (= (and b!5193727 (is-Union!14744 (regTwo!30000 r!7292))) b!5194145))

(declare-fun b!5194153 () Bool)

(declare-fun e!3235114 () Bool)

(declare-fun tp!1457066 () Bool)

(assert (=> b!5194153 (= e!3235114 tp!1457066)))

(declare-fun b!5194152 () Bool)

(declare-fun tp!1457067 () Bool)

(declare-fun e!3235113 () Bool)

(assert (=> b!5194152 (= e!3235113 (and (inv!80108 (h!66856 (t!373685 zl!343))) e!3235114 tp!1457067))))

(assert (=> b!5193717 (= tp!1456975 e!3235113)))

(assert (= b!5194152 b!5194153))

(assert (= (and b!5193717 (is-Cons!60408 (t!373685 zl!343))) b!5194152))

(declare-fun m!6249128 () Bool)

(assert (=> b!5194152 m!6249128))

(push 1)

(assert (not b!5193914))

(assert (not bm!365159))

(assert (not b!5194128))

(assert (not b!5193947))

(assert (not b!5194088))

(assert (not b!5194117))

(assert (not setNonEmpty!32839))

(assert (not d!1677036))

(assert (not d!1677052))

(assert (not b!5193951))

(assert (not b!5194141))

(assert (not b!5193915))

(assert (not b!5194127))

(assert (not d!1677004))

(assert (not b!5194143))

(assert (not d!1677008))

(assert (not b!5194136))

(assert (not b!5193948))

(assert (not b!5193981))

(assert (not d!1677016))

(assert (not d!1677012))

(assert (not bm!365153))

(assert (not b!5193912))

(assert (not b!5193952))

(assert (not b!5194104))

(assert (not b!5194118))

(assert (not b!5194121))

(assert (not b!5193883))

(assert (not b!5193949))

(assert (not b!5193944))

(assert (not b!5193919))

(assert (not bm!365157))

(assert (not b!5194139))

(assert (not b!5193917))

(assert (not b!5193918))

(assert (not b!5193839))

(assert (not bm!365145))

(assert (not b!5194081))

(assert (not b!5194041))

(assert (not d!1677014))

(assert (not bm!365144))

(assert tp_is_empty!38741)

(assert (not b!5194153))

(assert (not d!1677050))

(assert (not b!5194135))

(assert (not bm!365139))

(assert (not b!5194085))

(assert (not b!5193882))

(assert (not b!5194145))

(assert (not b!5193889))

(assert (not b!5194140))

(assert (not b!5194116))

(assert (not b!5194086))

(assert (not bm!365154))

(assert (not d!1677010))

(assert (not d!1677046))

(assert (not b!5193837))

(assert (not b!5194089))

(assert (not b!5193830))

(assert (not b!5193840))

(assert (not b!5194137))

(assert (not d!1677048))

(assert (not d!1677032))

(assert (not d!1677024))

(assert (not b!5194087))

(assert (not b!5194144))

(assert (not b!5194122))

(assert (not d!1677030))

(assert (not b!5193838))

(assert (not b!5193833))

(assert (not b!5193916))

(assert (not b!5194032))

(assert (not bm!365156))

(assert (not b!5194082))

(assert (not b!5194120))

(assert (not bm!365160))

(assert (not b!5193924))

(assert (not b!5194133))

(assert (not d!1677034))

(assert (not b!5194152))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

