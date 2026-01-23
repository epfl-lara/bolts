; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!640654 () Bool)

(assert start!640654)

(declare-fun b!6534303 () Bool)

(assert (=> b!6534303 true))

(assert (=> b!6534303 true))

(declare-fun lambda!362524 () Int)

(declare-fun lambda!362523 () Int)

(assert (=> b!6534303 (not (= lambda!362524 lambda!362523))))

(assert (=> b!6534303 true))

(assert (=> b!6534303 true))

(declare-fun b!6534314 () Bool)

(assert (=> b!6534314 true))

(declare-fun b!6534315 () Bool)

(assert (=> b!6534315 true))

(declare-fun setIsEmpty!44574 () Bool)

(declare-fun setRes!44574 () Bool)

(assert (=> setIsEmpty!44574 setRes!44574))

(declare-fun b!6534298 () Bool)

(declare-fun e!3957069 () Bool)

(declare-fun e!3957063 () Bool)

(assert (=> b!6534298 (= e!3957069 e!3957063)))

(declare-fun res!2681004 () Bool)

(assert (=> b!6534298 (=> res!2681004 e!3957063)))

(declare-fun lt!2397873 () Bool)

(assert (=> b!6534298 (= res!2681004 lt!2397873)))

(declare-datatypes ((C!33084 0))(
  ( (C!33085 (val!26244 Int)) )
))
(declare-datatypes ((Regex!16407 0))(
  ( (ElementMatch!16407 (c!1199422 C!33084)) (Concat!25252 (regOne!33326 Regex!16407) (regTwo!33326 Regex!16407)) (EmptyExpr!16407) (Star!16407 (reg!16736 Regex!16407)) (EmptyLang!16407) (Union!16407 (regOne!33327 Regex!16407) (regTwo!33327 Regex!16407)) )
))
(declare-fun lt!2397851 () Regex!16407)

(declare-datatypes ((List!65520 0))(
  ( (Nil!65396) (Cons!65396 (h!71844 C!33084) (t!379160 List!65520)) )
))
(declare-fun s!2326 () List!65520)

(declare-fun matchR!8590 (Regex!16407 List!65520) Bool)

(declare-fun matchRSpec!3508 (Regex!16407 List!65520) Bool)

(assert (=> b!6534298 (= (matchR!8590 lt!2397851 s!2326) (matchRSpec!3508 lt!2397851 s!2326))))

(declare-datatypes ((Unit!158963 0))(
  ( (Unit!158964) )
))
(declare-fun lt!2397837 () Unit!158963)

(declare-fun mainMatchTheorem!3508 (Regex!16407 List!65520) Unit!158963)

(assert (=> b!6534298 (= lt!2397837 (mainMatchTheorem!3508 lt!2397851 s!2326))))

(declare-fun b!6534299 () Bool)

(declare-fun res!2680992 () Bool)

(declare-fun e!3957048 () Bool)

(assert (=> b!6534299 (=> res!2680992 e!3957048)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!65521 0))(
  ( (Nil!65397) (Cons!65397 (h!71845 Regex!16407) (t!379161 List!65521)) )
))
(declare-datatypes ((Context!11582 0))(
  ( (Context!11583 (exprs!6291 List!65521)) )
))
(declare-fun lt!2397875 () (InoxSet Context!11582))

(declare-datatypes ((tuple2!66772 0))(
  ( (tuple2!66773 (_1!36689 List!65520) (_2!36689 List!65520)) )
))
(declare-fun lt!2397836 () tuple2!66772)

(declare-fun matchZipper!2419 ((InoxSet Context!11582) List!65520) Bool)

(assert (=> b!6534299 (= res!2680992 (not (matchZipper!2419 lt!2397875 (_2!36689 lt!2397836))))))

(declare-fun b!6534300 () Bool)

(declare-fun e!3957057 () Bool)

(declare-fun e!3957047 () Bool)

(assert (=> b!6534300 (= e!3957057 e!3957047)))

(declare-fun res!2680984 () Bool)

(assert (=> b!6534300 (=> res!2680984 e!3957047)))

(declare-fun r!7292 () Regex!16407)

(declare-fun lt!2397850 () Regex!16407)

(assert (=> b!6534300 (= res!2680984 (not (= r!7292 lt!2397850)))))

(declare-fun lt!2397849 () Regex!16407)

(assert (=> b!6534300 (= lt!2397850 (Concat!25252 lt!2397849 (regTwo!33326 r!7292)))))

(declare-fun b!6534301 () Bool)

(declare-fun e!3957071 () Bool)

(declare-fun tp!1808226 () Bool)

(declare-fun tp!1808225 () Bool)

(assert (=> b!6534301 (= e!3957071 (and tp!1808226 tp!1808225))))

(declare-fun b!6534302 () Bool)

(declare-fun res!2681002 () Bool)

(declare-fun e!3957058 () Bool)

(assert (=> b!6534302 (=> res!2681002 e!3957058)))

(declare-datatypes ((List!65522 0))(
  ( (Nil!65398) (Cons!65398 (h!71846 Context!11582) (t!379162 List!65522)) )
))
(declare-fun zl!343 () List!65522)

(declare-fun isEmpty!37613 (List!65522) Bool)

(assert (=> b!6534302 (= res!2681002 (not (isEmpty!37613 (t!379162 zl!343))))))

(declare-fun b!6534304 () Bool)

(declare-fun res!2681013 () Bool)

(assert (=> b!6534304 (=> res!2681013 e!3957058)))

(get-info :version)

(assert (=> b!6534304 (= res!2681013 (not ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6534305 () Bool)

(declare-fun tp_is_empty!42067 () Bool)

(assert (=> b!6534305 (= e!3957071 tp_is_empty!42067)))

(declare-fun b!6534306 () Bool)

(declare-fun e!3957072 () Bool)

(assert (=> b!6534306 (= e!3957048 e!3957072)))

(declare-fun res!2681005 () Bool)

(assert (=> b!6534306 (=> res!2681005 e!3957072)))

(declare-fun validRegex!8143 (Regex!16407) Bool)

(assert (=> b!6534306 (= res!2681005 (not (validRegex!8143 lt!2397850)))))

(assert (=> b!6534306 (matchR!8590 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836))))

(declare-fun lt!2397844 () (InoxSet Context!11582))

(declare-fun lt!2397866 () Unit!158963)

(declare-fun lt!2397839 () List!65522)

(declare-fun theoremZipperRegexEquiv!843 ((InoxSet Context!11582) List!65522 Regex!16407 List!65520) Unit!158963)

(assert (=> b!6534306 (= lt!2397866 (theoremZipperRegexEquiv!843 lt!2397844 lt!2397839 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836)))))

(declare-fun lt!2397846 () List!65521)

(declare-fun lt!2397832 () List!65521)

(declare-fun lt!2397869 () List!65520)

(declare-fun ++!14516 (List!65521 List!65521) List!65521)

(assert (=> b!6534306 (matchZipper!2419 (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 lt!2397846 lt!2397832)) true) lt!2397869)))

(declare-fun lt!2397865 () Unit!158963)

(declare-fun lambda!362527 () Int)

(declare-fun lemmaConcatPreservesForall!380 (List!65521 List!65521 Int) Unit!158963)

(assert (=> b!6534306 (= lt!2397865 (lemmaConcatPreservesForall!380 lt!2397846 lt!2397832 lambda!362527))))

(declare-fun lt!2397867 () Context!11582)

(declare-fun lt!2397838 () Context!11582)

(declare-fun lt!2397863 () Unit!158963)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!188 (Context!11582 Context!11582 List!65520 List!65520) Unit!158963)

(assert (=> b!6534306 (= lt!2397863 (lemmaConcatenateContextMatchesConcatOfStrings!188 lt!2397867 lt!2397838 (_1!36689 lt!2397836) (_2!36689 lt!2397836)))))

(declare-fun b!6534307 () Bool)

(declare-fun e!3957059 () Bool)

(assert (=> b!6534307 (= e!3957063 e!3957059)))

(declare-fun res!2680991 () Bool)

(assert (=> b!6534307 (=> res!2680991 e!3957059)))

(declare-fun e!3957070 () Bool)

(assert (=> b!6534307 (= res!2680991 e!3957070)))

(declare-fun res!2681015 () Bool)

(assert (=> b!6534307 (=> (not res!2681015) (not e!3957070))))

(declare-fun lt!2397843 () Bool)

(assert (=> b!6534307 (= res!2681015 (not lt!2397843))))

(declare-fun lt!2397857 () (InoxSet Context!11582))

(assert (=> b!6534307 (= lt!2397843 (matchZipper!2419 lt!2397857 (t!379160 s!2326)))))

(declare-fun b!6534308 () Bool)

(declare-fun e!3957067 () Unit!158963)

(declare-fun Unit!158965 () Unit!158963)

(assert (=> b!6534308 (= e!3957067 Unit!158965)))

(declare-fun b!6534309 () Bool)

(declare-fun res!2681008 () Bool)

(declare-fun e!3957060 () Bool)

(assert (=> b!6534309 (=> res!2681008 e!3957060)))

(declare-fun e!3957054 () Bool)

(assert (=> b!6534309 (= res!2681008 e!3957054)))

(declare-fun res!2680994 () Bool)

(assert (=> b!6534309 (=> (not res!2680994) (not e!3957054))))

(assert (=> b!6534309 (= res!2680994 ((_ is Concat!25252) (regOne!33326 r!7292)))))

(declare-fun b!6534310 () Bool)

(declare-fun res!2680995 () Bool)

(assert (=> b!6534310 (=> res!2680995 e!3957058)))

(assert (=> b!6534310 (= res!2680995 (or ((_ is EmptyExpr!16407) r!7292) ((_ is EmptyLang!16407) r!7292) ((_ is ElementMatch!16407) r!7292) ((_ is Union!16407) r!7292) (not ((_ is Concat!25252) r!7292))))))

(declare-fun b!6534311 () Bool)

(declare-fun res!2681009 () Bool)

(declare-fun e!3957065 () Bool)

(assert (=> b!6534311 (=> (not res!2681009) (not e!3957065))))

(declare-fun z!1189 () (InoxSet Context!11582))

(declare-fun toList!10191 ((InoxSet Context!11582)) List!65522)

(assert (=> b!6534311 (= res!2681009 (= (toList!10191 z!1189) zl!343))))

(declare-fun b!6534312 () Bool)

(declare-fun e!3957061 () Bool)

(assert (=> b!6534312 (= e!3957065 e!3957061)))

(declare-fun res!2680985 () Bool)

(assert (=> b!6534312 (=> (not res!2680985) (not e!3957061))))

(declare-fun lt!2397841 () Regex!16407)

(assert (=> b!6534312 (= res!2680985 (= r!7292 lt!2397841))))

(declare-fun unfocusZipper!2149 (List!65522) Regex!16407)

(assert (=> b!6534312 (= lt!2397841 (unfocusZipper!2149 zl!343))))

(declare-fun b!6534313 () Bool)

(declare-fun e!3957052 () Bool)

(declare-fun e!3957056 () Bool)

(assert (=> b!6534313 (= e!3957052 e!3957056)))

(declare-fun res!2681014 () Bool)

(assert (=> b!6534313 (=> res!2681014 e!3957056)))

(assert (=> b!6534313 (= res!2681014 (not (= (unfocusZipper!2149 lt!2397839) (reg!16736 (regOne!33326 r!7292)))))))

(assert (=> b!6534313 (= lt!2397839 (Cons!65398 lt!2397867 Nil!65398))))

(declare-fun lambda!362525 () Int)

(declare-fun flatMap!1912 ((InoxSet Context!11582) Int) (InoxSet Context!11582))

(declare-fun derivationStepZipperUp!1581 (Context!11582 C!33084) (InoxSet Context!11582))

(assert (=> b!6534313 (= (flatMap!1912 lt!2397875 lambda!362525) (derivationStepZipperUp!1581 lt!2397838 (h!71844 s!2326)))))

(declare-fun lt!2397862 () Unit!158963)

(declare-fun lemmaFlatMapOnSingletonSet!1438 ((InoxSet Context!11582) Context!11582 Int) Unit!158963)

(assert (=> b!6534313 (= lt!2397862 (lemmaFlatMapOnSingletonSet!1438 lt!2397875 lt!2397838 lambda!362525))))

(assert (=> b!6534313 (= (flatMap!1912 lt!2397844 lambda!362525) (derivationStepZipperUp!1581 lt!2397867 (h!71844 s!2326)))))

(declare-fun lt!2397877 () Unit!158963)

(assert (=> b!6534313 (= lt!2397877 (lemmaFlatMapOnSingletonSet!1438 lt!2397844 lt!2397867 lambda!362525))))

(declare-fun lt!2397868 () (InoxSet Context!11582))

(assert (=> b!6534313 (= lt!2397868 (derivationStepZipperUp!1581 lt!2397838 (h!71844 s!2326)))))

(declare-fun lt!2397878 () (InoxSet Context!11582))

(assert (=> b!6534313 (= lt!2397878 (derivationStepZipperUp!1581 lt!2397867 (h!71844 s!2326)))))

(assert (=> b!6534313 (= lt!2397875 (store ((as const (Array Context!11582 Bool)) false) lt!2397838 true))))

(assert (=> b!6534313 (= lt!2397844 (store ((as const (Array Context!11582 Bool)) false) lt!2397867 true))))

(assert (=> b!6534313 (= lt!2397867 (Context!11583 lt!2397846))))

(assert (=> b!6534313 (= lt!2397846 (Cons!65397 (reg!16736 (regOne!33326 r!7292)) Nil!65397))))

(declare-fun e!3957049 () Bool)

(assert (=> b!6534314 (= e!3957049 e!3957060)))

(declare-fun res!2681012 () Bool)

(assert (=> b!6534314 (=> res!2681012 e!3957060)))

(assert (=> b!6534314 (= res!2681012 (or (and ((_ is ElementMatch!16407) (regOne!33326 r!7292)) (= (c!1199422 (regOne!33326 r!7292)) (h!71844 s!2326))) ((_ is Union!16407) (regOne!33326 r!7292))))))

(declare-fun lt!2397852 () Unit!158963)

(assert (=> b!6534314 (= lt!2397852 e!3957067)))

(declare-fun c!1199421 () Bool)

(declare-fun lt!2397876 () Bool)

(assert (=> b!6534314 (= c!1199421 lt!2397876)))

(declare-fun nullable!6400 (Regex!16407) Bool)

(assert (=> b!6534314 (= lt!2397876 (nullable!6400 (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(assert (=> b!6534314 (= (flatMap!1912 z!1189 lambda!362525) (derivationStepZipperUp!1581 (h!71846 zl!343) (h!71844 s!2326)))))

(declare-fun lt!2397856 () Unit!158963)

(assert (=> b!6534314 (= lt!2397856 (lemmaFlatMapOnSingletonSet!1438 z!1189 (h!71846 zl!343) lambda!362525))))

(declare-fun lt!2397861 () (InoxSet Context!11582))

(declare-fun lt!2397872 () Context!11582)

(assert (=> b!6534314 (= lt!2397861 (derivationStepZipperUp!1581 lt!2397872 (h!71844 s!2326)))))

(declare-fun derivationStepZipperDown!1655 (Regex!16407 Context!11582 C!33084) (InoxSet Context!11582))

(assert (=> b!6534314 (= lt!2397857 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 (h!71846 zl!343))) lt!2397872 (h!71844 s!2326)))))

(assert (=> b!6534314 (= lt!2397872 (Context!11583 (t!379161 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun lt!2397860 () (InoxSet Context!11582))

(assert (=> b!6534314 (= lt!2397860 (derivationStepZipperUp!1581 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343))))) (h!71844 s!2326)))))

(declare-fun e!3957050 () Bool)

(assert (=> b!6534315 (= e!3957059 e!3957050)))

(declare-fun res!2681003 () Bool)

(assert (=> b!6534315 (=> res!2681003 e!3957050)))

(declare-fun lt!2397833 () (InoxSet Context!11582))

(declare-fun appendTo!168 ((InoxSet Context!11582) Context!11582) (InoxSet Context!11582))

(assert (=> b!6534315 (= res!2681003 (not (= (appendTo!168 lt!2397844 lt!2397838) lt!2397833)))))

(declare-fun lambda!362526 () Int)

(declare-fun map!14919 ((InoxSet Context!11582) Int) (InoxSet Context!11582))

(assert (=> b!6534315 (= (map!14919 lt!2397844 lambda!362526) (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 lt!2397846 lt!2397832)) true))))

(declare-fun lt!2397834 () Unit!158963)

(assert (=> b!6534315 (= lt!2397834 (lemmaConcatPreservesForall!380 lt!2397846 lt!2397832 lambda!362527))))

(declare-fun lt!2397847 () Unit!158963)

(declare-fun lemmaMapOnSingletonSet!190 ((InoxSet Context!11582) Context!11582 Int) Unit!158963)

(assert (=> b!6534315 (= lt!2397847 (lemmaMapOnSingletonSet!190 lt!2397844 lt!2397867 lambda!362526))))

(declare-fun b!6534316 () Bool)

(assert (=> b!6534316 (= e!3957056 e!3957069)))

(declare-fun res!2680999 () Bool)

(assert (=> b!6534316 (=> res!2680999 e!3957069)))

(declare-fun lt!2397855 () List!65522)

(assert (=> b!6534316 (= res!2680999 (not (= (unfocusZipper!2149 lt!2397855) lt!2397850)))))

(assert (=> b!6534316 (= lt!2397855 (Cons!65398 lt!2397838 Nil!65398))))

(declare-fun b!6534317 () Bool)

(declare-fun res!2681001 () Bool)

(assert (=> b!6534317 (=> res!2681001 e!3957058)))

(declare-fun generalisedConcat!2004 (List!65521) Regex!16407)

(assert (=> b!6534317 (= res!2681001 (not (= r!7292 (generalisedConcat!2004 (exprs!6291 (h!71846 zl!343))))))))

(declare-fun b!6534318 () Bool)

(declare-fun res!2680998 () Bool)

(assert (=> b!6534318 (=> res!2680998 e!3957060)))

(assert (=> b!6534318 (= res!2680998 (or ((_ is Concat!25252) (regOne!33326 r!7292)) (not ((_ is Star!16407) (regOne!33326 r!7292)))))))

(declare-fun b!6534319 () Bool)

(declare-fun e!3957066 () Bool)

(declare-fun e!3957053 () Bool)

(assert (=> b!6534319 (= e!3957066 e!3957053)))

(declare-fun res!2681010 () Bool)

(assert (=> b!6534319 (=> res!2681010 e!3957053)))

(declare-fun lt!2397835 () (InoxSet Context!11582))

(declare-fun lt!2397848 () (InoxSet Context!11582))

(assert (=> b!6534319 (= res!2681010 (not (= lt!2397835 lt!2397848)))))

(declare-fun lt!2397864 () Context!11582)

(assert (=> b!6534319 (= (flatMap!1912 lt!2397833 lambda!362525) (derivationStepZipperUp!1581 lt!2397864 (h!71844 s!2326)))))

(declare-fun lt!2397854 () Unit!158963)

(assert (=> b!6534319 (= lt!2397854 (lemmaFlatMapOnSingletonSet!1438 lt!2397833 lt!2397864 lambda!362525))))

(declare-fun lt!2397874 () (InoxSet Context!11582))

(assert (=> b!6534319 (= lt!2397874 (derivationStepZipperUp!1581 lt!2397864 (h!71844 s!2326)))))

(declare-fun derivationStepZipper!2373 ((InoxSet Context!11582) C!33084) (InoxSet Context!11582))

(assert (=> b!6534319 (= lt!2397835 (derivationStepZipper!2373 lt!2397833 (h!71844 s!2326)))))

(assert (=> b!6534319 (= lt!2397833 (store ((as const (Array Context!11582 Bool)) false) lt!2397864 true))))

(assert (=> b!6534319 (= lt!2397864 (Context!11583 (Cons!65397 (reg!16736 (regOne!33326 r!7292)) lt!2397832)))))

(declare-fun b!6534320 () Bool)

(assert (=> b!6534320 (= e!3957054 (nullable!6400 (regOne!33326 (regOne!33326 r!7292))))))

(declare-fun b!6534321 () Bool)

(declare-fun res!2680996 () Bool)

(assert (=> b!6534321 (=> res!2680996 e!3957057)))

(assert (=> b!6534321 (= res!2680996 (not (= lt!2397841 r!7292)))))

(declare-fun b!6534322 () Bool)

(declare-fun e!3957055 () Bool)

(declare-fun tp!1808222 () Bool)

(assert (=> b!6534322 (= e!3957055 tp!1808222)))

(declare-fun b!6534323 () Bool)

(declare-fun e!3957068 () Bool)

(declare-fun tp!1808223 () Bool)

(assert (=> b!6534323 (= e!3957068 tp!1808223)))

(declare-fun b!6534324 () Bool)

(declare-fun Unit!158966 () Unit!158963)

(assert (=> b!6534324 (= e!3957067 Unit!158966)))

(declare-fun lt!2397871 () Unit!158963)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1238 ((InoxSet Context!11582) (InoxSet Context!11582) List!65520) Unit!158963)

(assert (=> b!6534324 (= lt!2397871 (lemmaZipperConcatMatchesSameAsBothZippers!1238 lt!2397857 lt!2397861 (t!379160 s!2326)))))

(declare-fun res!2681007 () Bool)

(assert (=> b!6534324 (= res!2681007 (matchZipper!2419 lt!2397857 (t!379160 s!2326)))))

(declare-fun e!3957064 () Bool)

(assert (=> b!6534324 (=> res!2681007 e!3957064)))

(assert (=> b!6534324 (= (matchZipper!2419 ((_ map or) lt!2397857 lt!2397861) (t!379160 s!2326)) e!3957064)))

(declare-fun b!6534325 () Bool)

(assert (=> b!6534325 (= e!3957061 (not e!3957058))))

(declare-fun res!2680988 () Bool)

(assert (=> b!6534325 (=> res!2680988 e!3957058)))

(assert (=> b!6534325 (= res!2680988 (not ((_ is Cons!65398) zl!343)))))

(assert (=> b!6534325 (= lt!2397873 (matchRSpec!3508 r!7292 s!2326))))

(assert (=> b!6534325 (= lt!2397873 (matchR!8590 r!7292 s!2326))))

(declare-fun lt!2397859 () Unit!158963)

(assert (=> b!6534325 (= lt!2397859 (mainMatchTheorem!3508 r!7292 s!2326))))

(declare-fun b!6534326 () Bool)

(assert (=> b!6534326 (= e!3957047 e!3957052)))

(declare-fun res!2681000 () Bool)

(assert (=> b!6534326 (=> res!2681000 e!3957052)))

(assert (=> b!6534326 (= res!2681000 (not (= (unfocusZipper!2149 (Cons!65398 lt!2397864 Nil!65398)) lt!2397851)))))

(assert (=> b!6534326 (= lt!2397851 (Concat!25252 (reg!16736 (regOne!33326 r!7292)) lt!2397850))))

(declare-fun b!6534327 () Bool)

(declare-fun res!2680997 () Bool)

(assert (=> b!6534327 (=> res!2680997 e!3957048)))

(assert (=> b!6534327 (= res!2680997 (not (matchZipper!2419 lt!2397844 (_1!36689 lt!2397836))))))

(declare-fun b!6534328 () Bool)

(declare-fun res!2680989 () Bool)

(assert (=> b!6534328 (=> res!2680989 e!3957058)))

(declare-fun generalisedUnion!2251 (List!65521) Regex!16407)

(declare-fun unfocusZipperList!1828 (List!65522) List!65521)

(assert (=> b!6534328 (= res!2680989 (not (= r!7292 (generalisedUnion!2251 (unfocusZipperList!1828 zl!343)))))))

(declare-fun b!6534329 () Bool)

(assert (=> b!6534329 (= e!3957053 e!3957057)))

(declare-fun res!2681011 () Bool)

(assert (=> b!6534329 (=> res!2681011 e!3957057)))

(declare-fun lt!2397840 () Bool)

(assert (=> b!6534329 (= res!2681011 (not (= lt!2397840 (matchZipper!2419 lt!2397835 (t!379160 s!2326)))))))

(assert (=> b!6534329 (= lt!2397840 (matchZipper!2419 lt!2397833 s!2326))))

(declare-fun b!6534330 () Bool)

(declare-fun e!3957051 () Bool)

(declare-fun tp!1808227 () Bool)

(assert (=> b!6534330 (= e!3957051 (and tp_is_empty!42067 tp!1808227))))

(declare-fun b!6534331 () Bool)

(declare-fun tp!1808218 () Bool)

(assert (=> b!6534331 (= e!3957071 tp!1808218)))

(declare-fun res!2680990 () Bool)

(assert (=> start!640654 (=> (not res!2680990) (not e!3957065))))

(assert (=> start!640654 (= res!2680990 (validRegex!8143 r!7292))))

(assert (=> start!640654 e!3957065))

(assert (=> start!640654 e!3957071))

(declare-fun condSetEmpty!44574 () Bool)

(assert (=> start!640654 (= condSetEmpty!44574 (= z!1189 ((as const (Array Context!11582 Bool)) false)))))

(assert (=> start!640654 setRes!44574))

(declare-fun e!3957062 () Bool)

(assert (=> start!640654 e!3957062))

(assert (=> start!640654 e!3957051))

(assert (=> b!6534303 (= e!3957058 e!3957049)))

(declare-fun res!2681018 () Bool)

(assert (=> b!6534303 (=> res!2681018 e!3957049)))

(declare-fun lt!2397845 () Bool)

(assert (=> b!6534303 (= res!2681018 (or (not (= lt!2397873 lt!2397845)) ((_ is Nil!65396) s!2326)))))

(declare-fun Exists!3477 (Int) Bool)

(assert (=> b!6534303 (= (Exists!3477 lambda!362523) (Exists!3477 lambda!362524))))

(declare-fun lt!2397842 () Unit!158963)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2014 (Regex!16407 Regex!16407 List!65520) Unit!158963)

(assert (=> b!6534303 (= lt!2397842 (lemmaExistCutMatchRandMatchRSpecEquivalent!2014 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326))))

(assert (=> b!6534303 (= lt!2397845 (Exists!3477 lambda!362523))))

(declare-datatypes ((Option!16298 0))(
  ( (None!16297) (Some!16297 (v!52480 tuple2!66772)) )
))
(declare-fun isDefined!13001 (Option!16298) Bool)

(declare-fun findConcatSeparation!2712 (Regex!16407 Regex!16407 List!65520 List!65520 List!65520) Option!16298)

(assert (=> b!6534303 (= lt!2397845 (isDefined!13001 (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) Nil!65396 s!2326 s!2326)))))

(declare-fun lt!2397853 () Unit!158963)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2476 (Regex!16407 Regex!16407 List!65520) Unit!158963)

(assert (=> b!6534303 (= lt!2397853 (lemmaFindConcatSeparationEquivalentToExists!2476 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326))))

(declare-fun b!6534332 () Bool)

(declare-fun res!2681006 () Bool)

(assert (=> b!6534332 (=> res!2681006 e!3957063)))

(assert (=> b!6534332 (= res!2681006 (not lt!2397876))))

(declare-fun b!6534333 () Bool)

(declare-fun res!2681016 () Bool)

(assert (=> b!6534333 (=> res!2681016 e!3957049)))

(declare-fun isEmpty!37614 (List!65521) Bool)

(assert (=> b!6534333 (= res!2681016 (isEmpty!37614 (t!379161 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6534334 () Bool)

(declare-fun res!2680986 () Bool)

(assert (=> b!6534334 (=> res!2680986 e!3957059)))

(assert (=> b!6534334 (= res!2680986 (or (not lt!2397843) (not lt!2397840)))))

(declare-fun b!6534335 () Bool)

(assert (=> b!6534335 (= e!3957072 (= (toList!10191 lt!2397875) lt!2397855))))

(declare-fun b!6534336 () Bool)

(declare-fun res!2681017 () Bool)

(assert (=> b!6534336 (=> res!2681017 e!3957063)))

(assert (=> b!6534336 (= res!2681017 (not (matchZipper!2419 z!1189 s!2326)))))

(declare-fun b!6534337 () Bool)

(assert (=> b!6534337 (= e!3957050 e!3957048)))

(declare-fun res!2680993 () Bool)

(assert (=> b!6534337 (=> res!2680993 e!3957048)))

(assert (=> b!6534337 (= res!2680993 (not (= s!2326 lt!2397869)))))

(declare-fun ++!14517 (List!65520 List!65520) List!65520)

(assert (=> b!6534337 (= lt!2397869 (++!14517 (_1!36689 lt!2397836) (_2!36689 lt!2397836)))))

(declare-fun lt!2397858 () Option!16298)

(declare-fun get!22692 (Option!16298) tuple2!66772)

(assert (=> b!6534337 (= lt!2397836 (get!22692 lt!2397858))))

(assert (=> b!6534337 (isDefined!13001 lt!2397858)))

(declare-fun findConcatSeparationZippers!172 ((InoxSet Context!11582) (InoxSet Context!11582) List!65520 List!65520 List!65520) Option!16298)

(assert (=> b!6534337 (= lt!2397858 (findConcatSeparationZippers!172 lt!2397844 lt!2397875 Nil!65396 s!2326 s!2326))))

(declare-fun lt!2397870 () Unit!158963)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!172 ((InoxSet Context!11582) Context!11582 List!65520) Unit!158963)

(assert (=> b!6534337 (= lt!2397870 (lemmaConcatZipperMatchesStringThenFindConcatDefined!172 lt!2397844 lt!2397838 s!2326))))

(declare-fun b!6534338 () Bool)

(assert (=> b!6534338 (= e!3957070 (not (matchZipper!2419 lt!2397861 (t!379160 s!2326))))))

(declare-fun b!6534339 () Bool)

(declare-fun tp!1808220 () Bool)

(declare-fun tp!1808224 () Bool)

(assert (=> b!6534339 (= e!3957071 (and tp!1808220 tp!1808224))))

(declare-fun tp!1808221 () Bool)

(declare-fun b!6534340 () Bool)

(declare-fun inv!84264 (Context!11582) Bool)

(assert (=> b!6534340 (= e!3957062 (and (inv!84264 (h!71846 zl!343)) e!3957055 tp!1808221))))

(declare-fun setElem!44574 () Context!11582)

(declare-fun tp!1808219 () Bool)

(declare-fun setNonEmpty!44574 () Bool)

(assert (=> setNonEmpty!44574 (= setRes!44574 (and tp!1808219 (inv!84264 setElem!44574) e!3957068))))

(declare-fun setRest!44574 () (InoxSet Context!11582))

(assert (=> setNonEmpty!44574 (= z!1189 ((_ map or) (store ((as const (Array Context!11582 Bool)) false) setElem!44574 true) setRest!44574))))

(declare-fun b!6534341 () Bool)

(assert (=> b!6534341 (= e!3957060 e!3957066)))

(declare-fun res!2680987 () Bool)

(assert (=> b!6534341 (=> res!2680987 e!3957066)))

(assert (=> b!6534341 (= res!2680987 (not (= lt!2397857 lt!2397848)))))

(assert (=> b!6534341 (= lt!2397848 (derivationStepZipperDown!1655 (reg!16736 (regOne!33326 r!7292)) lt!2397838 (h!71844 s!2326)))))

(assert (=> b!6534341 (= lt!2397838 (Context!11583 lt!2397832))))

(assert (=> b!6534341 (= lt!2397832 (Cons!65397 lt!2397849 (t!379161 (exprs!6291 (h!71846 zl!343)))))))

(assert (=> b!6534341 (= lt!2397849 (Star!16407 (reg!16736 (regOne!33326 r!7292))))))

(declare-fun b!6534342 () Bool)

(assert (=> b!6534342 (= e!3957064 (matchZipper!2419 lt!2397861 (t!379160 s!2326)))))

(assert (= (and start!640654 res!2680990) b!6534311))

(assert (= (and b!6534311 res!2681009) b!6534312))

(assert (= (and b!6534312 res!2680985) b!6534325))

(assert (= (and b!6534325 (not res!2680988)) b!6534302))

(assert (= (and b!6534302 (not res!2681002)) b!6534317))

(assert (= (and b!6534317 (not res!2681001)) b!6534304))

(assert (= (and b!6534304 (not res!2681013)) b!6534328))

(assert (= (and b!6534328 (not res!2680989)) b!6534310))

(assert (= (and b!6534310 (not res!2680995)) b!6534303))

(assert (= (and b!6534303 (not res!2681018)) b!6534333))

(assert (= (and b!6534333 (not res!2681016)) b!6534314))

(assert (= (and b!6534314 c!1199421) b!6534324))

(assert (= (and b!6534314 (not c!1199421)) b!6534308))

(assert (= (and b!6534324 (not res!2681007)) b!6534342))

(assert (= (and b!6534314 (not res!2681012)) b!6534309))

(assert (= (and b!6534309 res!2680994) b!6534320))

(assert (= (and b!6534309 (not res!2681008)) b!6534318))

(assert (= (and b!6534318 (not res!2680998)) b!6534341))

(assert (= (and b!6534341 (not res!2680987)) b!6534319))

(assert (= (and b!6534319 (not res!2681010)) b!6534329))

(assert (= (and b!6534329 (not res!2681011)) b!6534321))

(assert (= (and b!6534321 (not res!2680996)) b!6534300))

(assert (= (and b!6534300 (not res!2680984)) b!6534326))

(assert (= (and b!6534326 (not res!2681000)) b!6534313))

(assert (= (and b!6534313 (not res!2681014)) b!6534316))

(assert (= (and b!6534316 (not res!2680999)) b!6534298))

(assert (= (and b!6534298 (not res!2681004)) b!6534336))

(assert (= (and b!6534336 (not res!2681017)) b!6534332))

(assert (= (and b!6534332 (not res!2681006)) b!6534307))

(assert (= (and b!6534307 res!2681015) b!6534338))

(assert (= (and b!6534307 (not res!2680991)) b!6534334))

(assert (= (and b!6534334 (not res!2680986)) b!6534315))

(assert (= (and b!6534315 (not res!2681003)) b!6534337))

(assert (= (and b!6534337 (not res!2680993)) b!6534327))

(assert (= (and b!6534327 (not res!2680997)) b!6534299))

(assert (= (and b!6534299 (not res!2680992)) b!6534306))

(assert (= (and b!6534306 (not res!2681005)) b!6534335))

(assert (= (and start!640654 ((_ is ElementMatch!16407) r!7292)) b!6534305))

(assert (= (and start!640654 ((_ is Concat!25252) r!7292)) b!6534301))

(assert (= (and start!640654 ((_ is Star!16407) r!7292)) b!6534331))

(assert (= (and start!640654 ((_ is Union!16407) r!7292)) b!6534339))

(assert (= (and start!640654 condSetEmpty!44574) setIsEmpty!44574))

(assert (= (and start!640654 (not condSetEmpty!44574)) setNonEmpty!44574))

(assert (= setNonEmpty!44574 b!6534323))

(assert (= b!6534340 b!6534322))

(assert (= (and start!640654 ((_ is Cons!65398) zl!343)) b!6534340))

(assert (= (and start!640654 ((_ is Cons!65396) s!2326)) b!6534330))

(declare-fun m!7317714 () Bool)

(assert (=> setNonEmpty!44574 m!7317714))

(declare-fun m!7317716 () Bool)

(assert (=> b!6534320 m!7317716))

(declare-fun m!7317718 () Bool)

(assert (=> b!6534315 m!7317718))

(declare-fun m!7317720 () Bool)

(assert (=> b!6534315 m!7317720))

(declare-fun m!7317722 () Bool)

(assert (=> b!6534315 m!7317722))

(declare-fun m!7317724 () Bool)

(assert (=> b!6534315 m!7317724))

(declare-fun m!7317726 () Bool)

(assert (=> b!6534315 m!7317726))

(declare-fun m!7317728 () Bool)

(assert (=> b!6534315 m!7317728))

(declare-fun m!7317730 () Bool)

(assert (=> b!6534302 m!7317730))

(declare-fun m!7317732 () Bool)

(assert (=> b!6534324 m!7317732))

(declare-fun m!7317734 () Bool)

(assert (=> b!6534324 m!7317734))

(declare-fun m!7317736 () Bool)

(assert (=> b!6534324 m!7317736))

(declare-fun m!7317738 () Bool)

(assert (=> b!6534317 m!7317738))

(declare-fun m!7317740 () Bool)

(assert (=> b!6534325 m!7317740))

(declare-fun m!7317742 () Bool)

(assert (=> b!6534325 m!7317742))

(declare-fun m!7317744 () Bool)

(assert (=> b!6534325 m!7317744))

(declare-fun m!7317746 () Bool)

(assert (=> b!6534303 m!7317746))

(assert (=> b!6534303 m!7317746))

(declare-fun m!7317748 () Bool)

(assert (=> b!6534303 m!7317748))

(declare-fun m!7317750 () Bool)

(assert (=> b!6534303 m!7317750))

(declare-fun m!7317752 () Bool)

(assert (=> b!6534303 m!7317752))

(declare-fun m!7317754 () Bool)

(assert (=> b!6534303 m!7317754))

(assert (=> b!6534303 m!7317748))

(declare-fun m!7317756 () Bool)

(assert (=> b!6534303 m!7317756))

(declare-fun m!7317758 () Bool)

(assert (=> b!6534313 m!7317758))

(declare-fun m!7317760 () Bool)

(assert (=> b!6534313 m!7317760))

(declare-fun m!7317762 () Bool)

(assert (=> b!6534313 m!7317762))

(declare-fun m!7317764 () Bool)

(assert (=> b!6534313 m!7317764))

(declare-fun m!7317766 () Bool)

(assert (=> b!6534313 m!7317766))

(declare-fun m!7317768 () Bool)

(assert (=> b!6534313 m!7317768))

(declare-fun m!7317770 () Bool)

(assert (=> b!6534313 m!7317770))

(declare-fun m!7317772 () Bool)

(assert (=> b!6534313 m!7317772))

(declare-fun m!7317774 () Bool)

(assert (=> b!6534313 m!7317774))

(declare-fun m!7317776 () Bool)

(assert (=> b!6534311 m!7317776))

(assert (=> b!6534307 m!7317734))

(declare-fun m!7317778 () Bool)

(assert (=> b!6534298 m!7317778))

(declare-fun m!7317780 () Bool)

(assert (=> b!6534298 m!7317780))

(declare-fun m!7317782 () Bool)

(assert (=> b!6534298 m!7317782))

(declare-fun m!7317784 () Bool)

(assert (=> b!6534338 m!7317784))

(declare-fun m!7317786 () Bool)

(assert (=> b!6534335 m!7317786))

(declare-fun m!7317788 () Bool)

(assert (=> b!6534333 m!7317788))

(declare-fun m!7317790 () Bool)

(assert (=> b!6534327 m!7317790))

(declare-fun m!7317792 () Bool)

(assert (=> b!6534312 m!7317792))

(declare-fun m!7317794 () Bool)

(assert (=> b!6534329 m!7317794))

(declare-fun m!7317796 () Bool)

(assert (=> b!6534329 m!7317796))

(declare-fun m!7317798 () Bool)

(assert (=> b!6534337 m!7317798))

(declare-fun m!7317800 () Bool)

(assert (=> b!6534337 m!7317800))

(declare-fun m!7317802 () Bool)

(assert (=> b!6534337 m!7317802))

(declare-fun m!7317804 () Bool)

(assert (=> b!6534337 m!7317804))

(declare-fun m!7317806 () Bool)

(assert (=> b!6534337 m!7317806))

(declare-fun m!7317808 () Bool)

(assert (=> b!6534341 m!7317808))

(declare-fun m!7317810 () Bool)

(assert (=> b!6534299 m!7317810))

(declare-fun m!7317812 () Bool)

(assert (=> b!6534314 m!7317812))

(declare-fun m!7317814 () Bool)

(assert (=> b!6534314 m!7317814))

(declare-fun m!7317816 () Bool)

(assert (=> b!6534314 m!7317816))

(declare-fun m!7317818 () Bool)

(assert (=> b!6534314 m!7317818))

(declare-fun m!7317820 () Bool)

(assert (=> b!6534314 m!7317820))

(declare-fun m!7317822 () Bool)

(assert (=> b!6534314 m!7317822))

(declare-fun m!7317824 () Bool)

(assert (=> b!6534314 m!7317824))

(declare-fun m!7317826 () Bool)

(assert (=> b!6534340 m!7317826))

(assert (=> b!6534342 m!7317784))

(declare-fun m!7317828 () Bool)

(assert (=> b!6534306 m!7317828))

(assert (=> b!6534306 m!7317720))

(declare-fun m!7317830 () Bool)

(assert (=> b!6534306 m!7317830))

(declare-fun m!7317832 () Bool)

(assert (=> b!6534306 m!7317832))

(declare-fun m!7317834 () Bool)

(assert (=> b!6534306 m!7317834))

(assert (=> b!6534306 m!7317724))

(assert (=> b!6534306 m!7317726))

(assert (=> b!6534306 m!7317720))

(declare-fun m!7317836 () Bool)

(assert (=> b!6534306 m!7317836))

(declare-fun m!7317838 () Bool)

(assert (=> b!6534319 m!7317838))

(declare-fun m!7317840 () Bool)

(assert (=> b!6534319 m!7317840))

(declare-fun m!7317842 () Bool)

(assert (=> b!6534319 m!7317842))

(declare-fun m!7317844 () Bool)

(assert (=> b!6534319 m!7317844))

(declare-fun m!7317846 () Bool)

(assert (=> b!6534319 m!7317846))

(declare-fun m!7317848 () Bool)

(assert (=> b!6534316 m!7317848))

(declare-fun m!7317850 () Bool)

(assert (=> b!6534326 m!7317850))

(declare-fun m!7317852 () Bool)

(assert (=> start!640654 m!7317852))

(declare-fun m!7317854 () Bool)

(assert (=> b!6534336 m!7317854))

(declare-fun m!7317856 () Bool)

(assert (=> b!6534328 m!7317856))

(assert (=> b!6534328 m!7317856))

(declare-fun m!7317858 () Bool)

(assert (=> b!6534328 m!7317858))

(check-sat (not b!6534328) (not b!6534337) (not b!6534331) (not b!6534330) (not b!6534338) (not b!6534336) (not b!6534303) (not setNonEmpty!44574) (not b!6534329) (not b!6534342) (not b!6534311) (not b!6534306) (not b!6534313) (not b!6534319) (not b!6534325) (not b!6534333) tp_is_empty!42067 (not b!6534316) (not b!6534320) (not b!6534324) (not b!6534302) (not b!6534301) (not b!6534327) (not b!6534341) (not b!6534317) (not b!6534298) (not b!6534339) (not b!6534323) (not b!6534312) (not b!6534299) (not b!6534322) (not b!6534314) (not b!6534315) (not b!6534307) (not b!6534326) (not b!6534340) (not b!6534335) (not start!640654))
(check-sat)
(get-model)

(declare-fun d!2050897 () Bool)

(declare-fun nullableFct!2329 (Regex!16407) Bool)

(assert (=> d!2050897 (= (nullable!6400 (regOne!33326 (regOne!33326 r!7292))) (nullableFct!2329 (regOne!33326 (regOne!33326 r!7292))))))

(declare-fun bs!1666921 () Bool)

(assert (= bs!1666921 d!2050897))

(declare-fun m!7318052 () Bool)

(assert (=> bs!1666921 m!7318052))

(assert (=> b!6534320 d!2050897))

(declare-fun bs!1666922 () Bool)

(declare-fun d!2050899 () Bool)

(assert (= bs!1666922 (and d!2050899 b!6534315)))

(declare-fun lambda!362551 () Int)

(assert (=> bs!1666922 (= lambda!362551 lambda!362527)))

(declare-fun forall!15583 (List!65521 Int) Bool)

(assert (=> d!2050899 (= (inv!84264 setElem!44574) (forall!15583 (exprs!6291 setElem!44574) lambda!362551))))

(declare-fun bs!1666923 () Bool)

(assert (= bs!1666923 d!2050899))

(declare-fun m!7318054 () Bool)

(assert (=> bs!1666923 m!7318054))

(assert (=> setNonEmpty!44574 d!2050899))

(declare-fun b!6534616 () Bool)

(declare-fun e!3957224 () Bool)

(assert (=> b!6534616 (= e!3957224 (nullable!6400 (regOne!33326 (reg!16736 (regOne!33326 r!7292)))))))

(declare-fun b!6534617 () Bool)

(declare-fun e!3957222 () (InoxSet Context!11582))

(declare-fun call!567825 () (InoxSet Context!11582))

(assert (=> b!6534617 (= e!3957222 call!567825)))

(declare-fun b!6534618 () Bool)

(declare-fun e!3957226 () (InoxSet Context!11582))

(declare-fun e!3957225 () (InoxSet Context!11582))

(assert (=> b!6534618 (= e!3957226 e!3957225)))

(declare-fun c!1199505 () Bool)

(assert (=> b!6534618 (= c!1199505 ((_ is Union!16407) (reg!16736 (regOne!33326 r!7292))))))

(declare-fun b!6534619 () Bool)

(assert (=> b!6534619 (= e!3957222 ((as const (Array Context!11582 Bool)) false))))

(declare-fun d!2050901 () Bool)

(declare-fun c!1199507 () Bool)

(assert (=> d!2050901 (= c!1199507 (and ((_ is ElementMatch!16407) (reg!16736 (regOne!33326 r!7292))) (= (c!1199422 (reg!16736 (regOne!33326 r!7292))) (h!71844 s!2326))))))

(assert (=> d!2050901 (= (derivationStepZipperDown!1655 (reg!16736 (regOne!33326 r!7292)) lt!2397838 (h!71844 s!2326)) e!3957226)))

(declare-fun bm!567819 () Bool)

(declare-fun call!567829 () (InoxSet Context!11582))

(assert (=> bm!567819 (= call!567825 call!567829)))

(declare-fun bm!567820 () Bool)

(declare-fun call!567824 () List!65521)

(declare-fun c!1199503 () Bool)

(declare-fun c!1199504 () Bool)

(declare-fun $colon$colon!2252 (List!65521 Regex!16407) List!65521)

(assert (=> bm!567820 (= call!567824 ($colon$colon!2252 (exprs!6291 lt!2397838) (ite (or c!1199504 c!1199503) (regTwo!33326 (reg!16736 (regOne!33326 r!7292))) (reg!16736 (regOne!33326 r!7292)))))))

(declare-fun b!6534620 () Bool)

(assert (=> b!6534620 (= e!3957226 (store ((as const (Array Context!11582 Bool)) false) lt!2397838 true))))

(declare-fun call!567827 () (InoxSet Context!11582))

(declare-fun bm!567821 () Bool)

(assert (=> bm!567821 (= call!567827 (derivationStepZipperDown!1655 (ite c!1199505 (regOne!33327 (reg!16736 (regOne!33326 r!7292))) (regOne!33326 (reg!16736 (regOne!33326 r!7292)))) (ite c!1199505 lt!2397838 (Context!11583 call!567824)) (h!71844 s!2326)))))

(declare-fun call!567826 () (InoxSet Context!11582))

(declare-fun call!567828 () List!65521)

(declare-fun bm!567822 () Bool)

(assert (=> bm!567822 (= call!567826 (derivationStepZipperDown!1655 (ite c!1199505 (regTwo!33327 (reg!16736 (regOne!33326 r!7292))) (ite c!1199504 (regTwo!33326 (reg!16736 (regOne!33326 r!7292))) (ite c!1199503 (regOne!33326 (reg!16736 (regOne!33326 r!7292))) (reg!16736 (reg!16736 (regOne!33326 r!7292)))))) (ite (or c!1199505 c!1199504) lt!2397838 (Context!11583 call!567828)) (h!71844 s!2326)))))

(declare-fun b!6534621 () Bool)

(declare-fun c!1199506 () Bool)

(assert (=> b!6534621 (= c!1199506 ((_ is Star!16407) (reg!16736 (regOne!33326 r!7292))))))

(declare-fun e!3957223 () (InoxSet Context!11582))

(assert (=> b!6534621 (= e!3957223 e!3957222)))

(declare-fun b!6534622 () Bool)

(assert (=> b!6534622 (= c!1199504 e!3957224)))

(declare-fun res!2681128 () Bool)

(assert (=> b!6534622 (=> (not res!2681128) (not e!3957224))))

(assert (=> b!6534622 (= res!2681128 ((_ is Concat!25252) (reg!16736 (regOne!33326 r!7292))))))

(declare-fun e!3957221 () (InoxSet Context!11582))

(assert (=> b!6534622 (= e!3957225 e!3957221)))

(declare-fun bm!567823 () Bool)

(assert (=> bm!567823 (= call!567829 call!567826)))

(declare-fun b!6534623 () Bool)

(assert (=> b!6534623 (= e!3957223 call!567825)))

(declare-fun b!6534624 () Bool)

(assert (=> b!6534624 (= e!3957225 ((_ map or) call!567827 call!567826))))

(declare-fun bm!567824 () Bool)

(assert (=> bm!567824 (= call!567828 call!567824)))

(declare-fun b!6534625 () Bool)

(assert (=> b!6534625 (= e!3957221 ((_ map or) call!567827 call!567829))))

(declare-fun b!6534626 () Bool)

(assert (=> b!6534626 (= e!3957221 e!3957223)))

(assert (=> b!6534626 (= c!1199503 ((_ is Concat!25252) (reg!16736 (regOne!33326 r!7292))))))

(assert (= (and d!2050901 c!1199507) b!6534620))

(assert (= (and d!2050901 (not c!1199507)) b!6534618))

(assert (= (and b!6534618 c!1199505) b!6534624))

(assert (= (and b!6534618 (not c!1199505)) b!6534622))

(assert (= (and b!6534622 res!2681128) b!6534616))

(assert (= (and b!6534622 c!1199504) b!6534625))

(assert (= (and b!6534622 (not c!1199504)) b!6534626))

(assert (= (and b!6534626 c!1199503) b!6534623))

(assert (= (and b!6534626 (not c!1199503)) b!6534621))

(assert (= (and b!6534621 c!1199506) b!6534617))

(assert (= (and b!6534621 (not c!1199506)) b!6534619))

(assert (= (or b!6534623 b!6534617) bm!567824))

(assert (= (or b!6534623 b!6534617) bm!567819))

(assert (= (or b!6534625 bm!567824) bm!567820))

(assert (= (or b!6534625 bm!567819) bm!567823))

(assert (= (or b!6534624 bm!567823) bm!567822))

(assert (= (or b!6534624 b!6534625) bm!567821))

(declare-fun m!7318064 () Bool)

(assert (=> bm!567821 m!7318064))

(declare-fun m!7318066 () Bool)

(assert (=> b!6534616 m!7318066))

(declare-fun m!7318068 () Bool)

(assert (=> bm!567822 m!7318068))

(assert (=> b!6534620 m!7317774))

(declare-fun m!7318070 () Bool)

(assert (=> bm!567820 m!7318070))

(assert (=> b!6534341 d!2050901))

(declare-fun d!2050905 () Bool)

(declare-fun c!1199514 () Bool)

(declare-fun isEmpty!37616 (List!65520) Bool)

(assert (=> d!2050905 (= c!1199514 (isEmpty!37616 (_2!36689 lt!2397836)))))

(declare-fun e!3957239 () Bool)

(assert (=> d!2050905 (= (matchZipper!2419 lt!2397875 (_2!36689 lt!2397836)) e!3957239)))

(declare-fun b!6534649 () Bool)

(declare-fun nullableZipper!2156 ((InoxSet Context!11582)) Bool)

(assert (=> b!6534649 (= e!3957239 (nullableZipper!2156 lt!2397875))))

(declare-fun b!6534650 () Bool)

(declare-fun head!13272 (List!65520) C!33084)

(declare-fun tail!12357 (List!65520) List!65520)

(assert (=> b!6534650 (= e!3957239 (matchZipper!2419 (derivationStepZipper!2373 lt!2397875 (head!13272 (_2!36689 lt!2397836))) (tail!12357 (_2!36689 lt!2397836))))))

(assert (= (and d!2050905 c!1199514) b!6534649))

(assert (= (and d!2050905 (not c!1199514)) b!6534650))

(declare-fun m!7318072 () Bool)

(assert (=> d!2050905 m!7318072))

(declare-fun m!7318074 () Bool)

(assert (=> b!6534649 m!7318074))

(declare-fun m!7318076 () Bool)

(assert (=> b!6534650 m!7318076))

(assert (=> b!6534650 m!7318076))

(declare-fun m!7318078 () Bool)

(assert (=> b!6534650 m!7318078))

(declare-fun m!7318080 () Bool)

(assert (=> b!6534650 m!7318080))

(assert (=> b!6534650 m!7318078))

(assert (=> b!6534650 m!7318080))

(declare-fun m!7318082 () Bool)

(assert (=> b!6534650 m!7318082))

(assert (=> b!6534299 d!2050905))

(declare-fun d!2050907 () Bool)

(declare-fun c!1199515 () Bool)

(assert (=> d!2050907 (= c!1199515 (isEmpty!37616 (t!379160 s!2326)))))

(declare-fun e!3957240 () Bool)

(assert (=> d!2050907 (= (matchZipper!2419 lt!2397861 (t!379160 s!2326)) e!3957240)))

(declare-fun b!6534651 () Bool)

(assert (=> b!6534651 (= e!3957240 (nullableZipper!2156 lt!2397861))))

(declare-fun b!6534652 () Bool)

(assert (=> b!6534652 (= e!3957240 (matchZipper!2419 (derivationStepZipper!2373 lt!2397861 (head!13272 (t!379160 s!2326))) (tail!12357 (t!379160 s!2326))))))

(assert (= (and d!2050907 c!1199515) b!6534651))

(assert (= (and d!2050907 (not c!1199515)) b!6534652))

(declare-fun m!7318084 () Bool)

(assert (=> d!2050907 m!7318084))

(declare-fun m!7318086 () Bool)

(assert (=> b!6534651 m!7318086))

(declare-fun m!7318088 () Bool)

(assert (=> b!6534652 m!7318088))

(assert (=> b!6534652 m!7318088))

(declare-fun m!7318090 () Bool)

(assert (=> b!6534652 m!7318090))

(declare-fun m!7318092 () Bool)

(assert (=> b!6534652 m!7318092))

(assert (=> b!6534652 m!7318090))

(assert (=> b!6534652 m!7318092))

(declare-fun m!7318094 () Bool)

(assert (=> b!6534652 m!7318094))

(assert (=> b!6534342 d!2050907))

(declare-fun bs!1666926 () Bool)

(declare-fun d!2050909 () Bool)

(assert (= bs!1666926 (and d!2050909 b!6534315)))

(declare-fun lambda!362554 () Int)

(assert (=> bs!1666926 (= lambda!362554 lambda!362527)))

(declare-fun bs!1666927 () Bool)

(assert (= bs!1666927 (and d!2050909 d!2050899)))

(assert (=> bs!1666927 (= lambda!362554 lambda!362551)))

(declare-fun b!6534694 () Bool)

(declare-fun e!3957265 () Bool)

(declare-fun lt!2397939 () Regex!16407)

(declare-fun isEmptyExpr!1789 (Regex!16407) Bool)

(assert (=> b!6534694 (= e!3957265 (isEmptyExpr!1789 lt!2397939))))

(declare-fun b!6534695 () Bool)

(declare-fun e!3957267 () Regex!16407)

(declare-fun e!3957266 () Regex!16407)

(assert (=> b!6534695 (= e!3957267 e!3957266)))

(declare-fun c!1199532 () Bool)

(assert (=> b!6534695 (= c!1199532 ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343))))))

(declare-fun e!3957264 () Bool)

(assert (=> d!2050909 e!3957264))

(declare-fun res!2681154 () Bool)

(assert (=> d!2050909 (=> (not res!2681154) (not e!3957264))))

(assert (=> d!2050909 (= res!2681154 (validRegex!8143 lt!2397939))))

(assert (=> d!2050909 (= lt!2397939 e!3957267)))

(declare-fun c!1199530 () Bool)

(declare-fun e!3957269 () Bool)

(assert (=> d!2050909 (= c!1199530 e!3957269)))

(declare-fun res!2681155 () Bool)

(assert (=> d!2050909 (=> (not res!2681155) (not e!3957269))))

(assert (=> d!2050909 (= res!2681155 ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343))))))

(assert (=> d!2050909 (forall!15583 (exprs!6291 (h!71846 zl!343)) lambda!362554)))

(assert (=> d!2050909 (= (generalisedConcat!2004 (exprs!6291 (h!71846 zl!343))) lt!2397939)))

(declare-fun b!6534696 () Bool)

(assert (=> b!6534696 (= e!3957264 e!3957265)))

(declare-fun c!1199531 () Bool)

(assert (=> b!6534696 (= c!1199531 (isEmpty!37614 (exprs!6291 (h!71846 zl!343))))))

(declare-fun b!6534697 () Bool)

(declare-fun e!3957268 () Bool)

(assert (=> b!6534697 (= e!3957265 e!3957268)))

(declare-fun c!1199529 () Bool)

(declare-fun tail!12358 (List!65521) List!65521)

(assert (=> b!6534697 (= c!1199529 (isEmpty!37614 (tail!12358 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6534698 () Bool)

(assert (=> b!6534698 (= e!3957266 (Concat!25252 (h!71845 (exprs!6291 (h!71846 zl!343))) (generalisedConcat!2004 (t!379161 (exprs!6291 (h!71846 zl!343))))))))

(declare-fun b!6534699 () Bool)

(assert (=> b!6534699 (= e!3957267 (h!71845 (exprs!6291 (h!71846 zl!343))))))

(declare-fun b!6534700 () Bool)

(declare-fun head!13273 (List!65521) Regex!16407)

(assert (=> b!6534700 (= e!3957268 (= lt!2397939 (head!13273 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6534701 () Bool)

(assert (=> b!6534701 (= e!3957269 (isEmpty!37614 (t!379161 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6534702 () Bool)

(assert (=> b!6534702 (= e!3957266 EmptyExpr!16407)))

(declare-fun b!6534703 () Bool)

(declare-fun isConcat!1312 (Regex!16407) Bool)

(assert (=> b!6534703 (= e!3957268 (isConcat!1312 lt!2397939))))

(assert (= (and d!2050909 res!2681155) b!6534701))

(assert (= (and d!2050909 c!1199530) b!6534699))

(assert (= (and d!2050909 (not c!1199530)) b!6534695))

(assert (= (and b!6534695 c!1199532) b!6534698))

(assert (= (and b!6534695 (not c!1199532)) b!6534702))

(assert (= (and d!2050909 res!2681154) b!6534696))

(assert (= (and b!6534696 c!1199531) b!6534694))

(assert (= (and b!6534696 (not c!1199531)) b!6534697))

(assert (= (and b!6534697 c!1199529) b!6534700))

(assert (= (and b!6534697 (not c!1199529)) b!6534703))

(declare-fun m!7318130 () Bool)

(assert (=> b!6534694 m!7318130))

(declare-fun m!7318132 () Bool)

(assert (=> b!6534703 m!7318132))

(declare-fun m!7318134 () Bool)

(assert (=> b!6534697 m!7318134))

(assert (=> b!6534697 m!7318134))

(declare-fun m!7318136 () Bool)

(assert (=> b!6534697 m!7318136))

(assert (=> b!6534701 m!7317788))

(declare-fun m!7318138 () Bool)

(assert (=> b!6534698 m!7318138))

(declare-fun m!7318140 () Bool)

(assert (=> d!2050909 m!7318140))

(declare-fun m!7318142 () Bool)

(assert (=> d!2050909 m!7318142))

(declare-fun m!7318144 () Bool)

(assert (=> b!6534700 m!7318144))

(declare-fun m!7318146 () Bool)

(assert (=> b!6534696 m!7318146))

(assert (=> b!6534317 d!2050909))

(declare-fun bs!1666928 () Bool)

(declare-fun d!2050919 () Bool)

(assert (= bs!1666928 (and d!2050919 b!6534315)))

(declare-fun lambda!362555 () Int)

(assert (=> bs!1666928 (= lambda!362555 lambda!362527)))

(declare-fun bs!1666929 () Bool)

(assert (= bs!1666929 (and d!2050919 d!2050899)))

(assert (=> bs!1666929 (= lambda!362555 lambda!362551)))

(declare-fun bs!1666930 () Bool)

(assert (= bs!1666930 (and d!2050919 d!2050909)))

(assert (=> bs!1666930 (= lambda!362555 lambda!362554)))

(assert (=> d!2050919 (= (inv!84264 (h!71846 zl!343)) (forall!15583 (exprs!6291 (h!71846 zl!343)) lambda!362555))))

(declare-fun bs!1666931 () Bool)

(assert (= bs!1666931 d!2050919))

(declare-fun m!7318148 () Bool)

(assert (=> bs!1666931 m!7318148))

(assert (=> b!6534340 d!2050919))

(declare-fun b!6534725 () Bool)

(declare-fun res!2681173 () Bool)

(declare-fun e!3957288 () Bool)

(assert (=> b!6534725 (=> res!2681173 e!3957288)))

(assert (=> b!6534725 (= res!2681173 (not ((_ is Concat!25252) r!7292)))))

(declare-fun e!3957292 () Bool)

(assert (=> b!6534725 (= e!3957292 e!3957288)))

(declare-fun b!6534726 () Bool)

(declare-fun e!3957290 () Bool)

(declare-fun e!3957293 () Bool)

(assert (=> b!6534726 (= e!3957290 e!3957293)))

(declare-fun c!1199538 () Bool)

(assert (=> b!6534726 (= c!1199538 ((_ is Star!16407) r!7292))))

(declare-fun d!2050921 () Bool)

(declare-fun res!2681171 () Bool)

(assert (=> d!2050921 (=> res!2681171 e!3957290)))

(assert (=> d!2050921 (= res!2681171 ((_ is ElementMatch!16407) r!7292))))

(assert (=> d!2050921 (= (validRegex!8143 r!7292) e!3957290)))

(declare-fun bm!567831 () Bool)

(declare-fun call!567837 () Bool)

(declare-fun call!567838 () Bool)

(assert (=> bm!567831 (= call!567837 call!567838)))

(declare-fun b!6534727 () Bool)

(declare-fun e!3957289 () Bool)

(assert (=> b!6534727 (= e!3957293 e!3957289)))

(declare-fun res!2681169 () Bool)

(assert (=> b!6534727 (= res!2681169 (not (nullable!6400 (reg!16736 r!7292))))))

(assert (=> b!6534727 (=> (not res!2681169) (not e!3957289))))

(declare-fun b!6534728 () Bool)

(assert (=> b!6534728 (= e!3957293 e!3957292)))

(declare-fun c!1199537 () Bool)

(assert (=> b!6534728 (= c!1199537 ((_ is Union!16407) r!7292))))

(declare-fun bm!567832 () Bool)

(assert (=> bm!567832 (= call!567838 (validRegex!8143 (ite c!1199538 (reg!16736 r!7292) (ite c!1199537 (regOne!33327 r!7292) (regOne!33326 r!7292)))))))

(declare-fun b!6534729 () Bool)

(declare-fun res!2681170 () Bool)

(declare-fun e!3957287 () Bool)

(assert (=> b!6534729 (=> (not res!2681170) (not e!3957287))))

(assert (=> b!6534729 (= res!2681170 call!567837)))

(assert (=> b!6534729 (= e!3957292 e!3957287)))

(declare-fun b!6534730 () Bool)

(assert (=> b!6534730 (= e!3957289 call!567838)))

(declare-fun b!6534731 () Bool)

(declare-fun e!3957291 () Bool)

(assert (=> b!6534731 (= e!3957288 e!3957291)))

(declare-fun res!2681172 () Bool)

(assert (=> b!6534731 (=> (not res!2681172) (not e!3957291))))

(assert (=> b!6534731 (= res!2681172 call!567837)))

(declare-fun b!6534732 () Bool)

(declare-fun call!567836 () Bool)

(assert (=> b!6534732 (= e!3957291 call!567836)))

(declare-fun bm!567833 () Bool)

(assert (=> bm!567833 (= call!567836 (validRegex!8143 (ite c!1199537 (regTwo!33327 r!7292) (regTwo!33326 r!7292))))))

(declare-fun b!6534733 () Bool)

(assert (=> b!6534733 (= e!3957287 call!567836)))

(assert (= (and d!2050921 (not res!2681171)) b!6534726))

(assert (= (and b!6534726 c!1199538) b!6534727))

(assert (= (and b!6534726 (not c!1199538)) b!6534728))

(assert (= (and b!6534727 res!2681169) b!6534730))

(assert (= (and b!6534728 c!1199537) b!6534729))

(assert (= (and b!6534728 (not c!1199537)) b!6534725))

(assert (= (and b!6534729 res!2681170) b!6534733))

(assert (= (and b!6534725 (not res!2681173)) b!6534731))

(assert (= (and b!6534731 res!2681172) b!6534732))

(assert (= (or b!6534733 b!6534732) bm!567833))

(assert (= (or b!6534729 b!6534731) bm!567831))

(assert (= (or b!6534730 bm!567831) bm!567832))

(declare-fun m!7318158 () Bool)

(assert (=> b!6534727 m!7318158))

(declare-fun m!7318160 () Bool)

(assert (=> bm!567832 m!7318160))

(declare-fun m!7318162 () Bool)

(assert (=> bm!567833 m!7318162))

(assert (=> start!640654 d!2050921))

(declare-fun b!6534809 () Bool)

(declare-fun res!2681199 () Bool)

(declare-fun e!3957336 () Bool)

(assert (=> b!6534809 (=> (not res!2681199) (not e!3957336))))

(declare-fun call!567843 () Bool)

(assert (=> b!6534809 (= res!2681199 (not call!567843))))

(declare-fun b!6534810 () Bool)

(assert (=> b!6534810 (= e!3957336 (= (head!13272 s!2326) (c!1199422 lt!2397851)))))

(declare-fun b!6534811 () Bool)

(declare-fun e!3957338 () Bool)

(declare-fun lt!2397951 () Bool)

(assert (=> b!6534811 (= e!3957338 (= lt!2397951 call!567843))))

(declare-fun b!6534812 () Bool)

(declare-fun e!3957342 () Bool)

(assert (=> b!6534812 (= e!3957342 (not (= (head!13272 s!2326) (c!1199422 lt!2397851))))))

(declare-fun b!6534813 () Bool)

(declare-fun e!3957339 () Bool)

(declare-fun e!3957340 () Bool)

(assert (=> b!6534813 (= e!3957339 e!3957340)))

(declare-fun res!2681203 () Bool)

(assert (=> b!6534813 (=> (not res!2681203) (not e!3957340))))

(assert (=> b!6534813 (= res!2681203 (not lt!2397951))))

(declare-fun bm!567838 () Bool)

(assert (=> bm!567838 (= call!567843 (isEmpty!37616 s!2326))))

(declare-fun d!2050927 () Bool)

(assert (=> d!2050927 e!3957338))

(declare-fun c!1199566 () Bool)

(assert (=> d!2050927 (= c!1199566 ((_ is EmptyExpr!16407) lt!2397851))))

(declare-fun e!3957341 () Bool)

(assert (=> d!2050927 (= lt!2397951 e!3957341)))

(declare-fun c!1199564 () Bool)

(assert (=> d!2050927 (= c!1199564 (isEmpty!37616 s!2326))))

(assert (=> d!2050927 (validRegex!8143 lt!2397851)))

(assert (=> d!2050927 (= (matchR!8590 lt!2397851 s!2326) lt!2397951)))

(declare-fun b!6534814 () Bool)

(declare-fun res!2681206 () Bool)

(assert (=> b!6534814 (=> res!2681206 e!3957339)))

(assert (=> b!6534814 (= res!2681206 (not ((_ is ElementMatch!16407) lt!2397851)))))

(declare-fun e!3957337 () Bool)

(assert (=> b!6534814 (= e!3957337 e!3957339)))

(declare-fun b!6534815 () Bool)

(declare-fun res!2681202 () Bool)

(assert (=> b!6534815 (=> (not res!2681202) (not e!3957336))))

(assert (=> b!6534815 (= res!2681202 (isEmpty!37616 (tail!12357 s!2326)))))

(declare-fun b!6534816 () Bool)

(assert (=> b!6534816 (= e!3957337 (not lt!2397951))))

(declare-fun b!6534817 () Bool)

(declare-fun res!2681200 () Bool)

(assert (=> b!6534817 (=> res!2681200 e!3957339)))

(assert (=> b!6534817 (= res!2681200 e!3957336)))

(declare-fun res!2681201 () Bool)

(assert (=> b!6534817 (=> (not res!2681201) (not e!3957336))))

(assert (=> b!6534817 (= res!2681201 lt!2397951)))

(declare-fun b!6534818 () Bool)

(assert (=> b!6534818 (= e!3957338 e!3957337)))

(declare-fun c!1199565 () Bool)

(assert (=> b!6534818 (= c!1199565 ((_ is EmptyLang!16407) lt!2397851))))

(declare-fun b!6534819 () Bool)

(declare-fun res!2681204 () Bool)

(assert (=> b!6534819 (=> res!2681204 e!3957342)))

(assert (=> b!6534819 (= res!2681204 (not (isEmpty!37616 (tail!12357 s!2326))))))

(declare-fun b!6534820 () Bool)

(assert (=> b!6534820 (= e!3957340 e!3957342)))

(declare-fun res!2681205 () Bool)

(assert (=> b!6534820 (=> res!2681205 e!3957342)))

(assert (=> b!6534820 (= res!2681205 call!567843)))

(declare-fun b!6534821 () Bool)

(assert (=> b!6534821 (= e!3957341 (nullable!6400 lt!2397851))))

(declare-fun b!6534822 () Bool)

(declare-fun derivativeStep!5095 (Regex!16407 C!33084) Regex!16407)

(assert (=> b!6534822 (= e!3957341 (matchR!8590 (derivativeStep!5095 lt!2397851 (head!13272 s!2326)) (tail!12357 s!2326)))))

(assert (= (and d!2050927 c!1199564) b!6534821))

(assert (= (and d!2050927 (not c!1199564)) b!6534822))

(assert (= (and d!2050927 c!1199566) b!6534811))

(assert (= (and d!2050927 (not c!1199566)) b!6534818))

(assert (= (and b!6534818 c!1199565) b!6534816))

(assert (= (and b!6534818 (not c!1199565)) b!6534814))

(assert (= (and b!6534814 (not res!2681206)) b!6534817))

(assert (= (and b!6534817 res!2681201) b!6534809))

(assert (= (and b!6534809 res!2681199) b!6534815))

(assert (= (and b!6534815 res!2681202) b!6534810))

(assert (= (and b!6534817 (not res!2681200)) b!6534813))

(assert (= (and b!6534813 res!2681203) b!6534820))

(assert (= (and b!6534820 (not res!2681205)) b!6534819))

(assert (= (and b!6534819 (not res!2681204)) b!6534812))

(assert (= (or b!6534811 b!6534809 b!6534820) bm!567838))

(declare-fun m!7318188 () Bool)

(assert (=> b!6534819 m!7318188))

(assert (=> b!6534819 m!7318188))

(declare-fun m!7318190 () Bool)

(assert (=> b!6534819 m!7318190))

(declare-fun m!7318192 () Bool)

(assert (=> b!6534821 m!7318192))

(declare-fun m!7318194 () Bool)

(assert (=> b!6534810 m!7318194))

(declare-fun m!7318196 () Bool)

(assert (=> d!2050927 m!7318196))

(declare-fun m!7318198 () Bool)

(assert (=> d!2050927 m!7318198))

(assert (=> b!6534815 m!7318188))

(assert (=> b!6534815 m!7318188))

(assert (=> b!6534815 m!7318190))

(assert (=> b!6534822 m!7318194))

(assert (=> b!6534822 m!7318194))

(declare-fun m!7318200 () Bool)

(assert (=> b!6534822 m!7318200))

(assert (=> b!6534822 m!7318188))

(assert (=> b!6534822 m!7318200))

(assert (=> b!6534822 m!7318188))

(declare-fun m!7318202 () Bool)

(assert (=> b!6534822 m!7318202))

(assert (=> b!6534812 m!7318194))

(assert (=> bm!567838 m!7318196))

(assert (=> b!6534298 d!2050927))

(declare-fun bs!1666963 () Bool)

(declare-fun b!6534909 () Bool)

(assert (= bs!1666963 (and b!6534909 b!6534303)))

(declare-fun lambda!362574 () Int)

(assert (=> bs!1666963 (not (= lambda!362574 lambda!362523))))

(assert (=> bs!1666963 (not (= lambda!362574 lambda!362524))))

(assert (=> b!6534909 true))

(assert (=> b!6534909 true))

(declare-fun bs!1666965 () Bool)

(declare-fun b!6534903 () Bool)

(assert (= bs!1666965 (and b!6534903 b!6534303)))

(declare-fun lambda!362575 () Int)

(assert (=> bs!1666965 (not (= lambda!362575 lambda!362523))))

(assert (=> bs!1666965 (= (and (= (regOne!33326 lt!2397851) (regOne!33326 r!7292)) (= (regTwo!33326 lt!2397851) (regTwo!33326 r!7292))) (= lambda!362575 lambda!362524))))

(declare-fun bs!1666967 () Bool)

(assert (= bs!1666967 (and b!6534903 b!6534909)))

(assert (=> bs!1666967 (not (= lambda!362575 lambda!362574))))

(assert (=> b!6534903 true))

(assert (=> b!6534903 true))

(declare-fun b!6534899 () Bool)

(declare-fun c!1199590 () Bool)

(assert (=> b!6534899 (= c!1199590 ((_ is Union!16407) lt!2397851))))

(declare-fun e!3957389 () Bool)

(declare-fun e!3957391 () Bool)

(assert (=> b!6534899 (= e!3957389 e!3957391)))

(declare-fun b!6534900 () Bool)

(declare-fun e!3957388 () Bool)

(declare-fun e!3957390 () Bool)

(assert (=> b!6534900 (= e!3957388 e!3957390)))

(declare-fun res!2681237 () Bool)

(assert (=> b!6534900 (= res!2681237 (not ((_ is EmptyLang!16407) lt!2397851)))))

(assert (=> b!6534900 (=> (not res!2681237) (not e!3957390))))

(declare-fun b!6534901 () Bool)

(declare-fun c!1199591 () Bool)

(assert (=> b!6534901 (= c!1199591 ((_ is ElementMatch!16407) lt!2397851))))

(assert (=> b!6534901 (= e!3957390 e!3957389)))

(declare-fun c!1199593 () Bool)

(declare-fun bm!567844 () Bool)

(declare-fun call!567849 () Bool)

(assert (=> bm!567844 (= call!567849 (Exists!3477 (ite c!1199593 lambda!362574 lambda!362575)))))

(declare-fun b!6534902 () Bool)

(declare-fun e!3957386 () Bool)

(assert (=> b!6534902 (= e!3957386 (matchRSpec!3508 (regTwo!33327 lt!2397851) s!2326))))

(declare-fun b!6534904 () Bool)

(declare-fun res!2681238 () Bool)

(declare-fun e!3957387 () Bool)

(assert (=> b!6534904 (=> res!2681238 e!3957387)))

(declare-fun call!567850 () Bool)

(assert (=> b!6534904 (= res!2681238 call!567850)))

(declare-fun e!3957392 () Bool)

(assert (=> b!6534904 (= e!3957392 e!3957387)))

(declare-fun b!6534905 () Bool)

(assert (=> b!6534905 (= e!3957391 e!3957392)))

(assert (=> b!6534905 (= c!1199593 ((_ is Star!16407) lt!2397851))))

(declare-fun bm!567845 () Bool)

(assert (=> bm!567845 (= call!567850 (isEmpty!37616 s!2326))))

(assert (=> b!6534903 (= e!3957392 call!567849)))

(declare-fun d!2050933 () Bool)

(declare-fun c!1199592 () Bool)

(assert (=> d!2050933 (= c!1199592 ((_ is EmptyExpr!16407) lt!2397851))))

(assert (=> d!2050933 (= (matchRSpec!3508 lt!2397851 s!2326) e!3957388)))

(declare-fun b!6534906 () Bool)

(assert (=> b!6534906 (= e!3957391 e!3957386)))

(declare-fun res!2681239 () Bool)

(assert (=> b!6534906 (= res!2681239 (matchRSpec!3508 (regOne!33327 lt!2397851) s!2326))))

(assert (=> b!6534906 (=> res!2681239 e!3957386)))

(declare-fun b!6534907 () Bool)

(assert (=> b!6534907 (= e!3957389 (= s!2326 (Cons!65396 (c!1199422 lt!2397851) Nil!65396)))))

(declare-fun b!6534908 () Bool)

(assert (=> b!6534908 (= e!3957388 call!567850)))

(assert (=> b!6534909 (= e!3957387 call!567849)))

(assert (= (and d!2050933 c!1199592) b!6534908))

(assert (= (and d!2050933 (not c!1199592)) b!6534900))

(assert (= (and b!6534900 res!2681237) b!6534901))

(assert (= (and b!6534901 c!1199591) b!6534907))

(assert (= (and b!6534901 (not c!1199591)) b!6534899))

(assert (= (and b!6534899 c!1199590) b!6534906))

(assert (= (and b!6534899 (not c!1199590)) b!6534905))

(assert (= (and b!6534906 (not res!2681239)) b!6534902))

(assert (= (and b!6534905 c!1199593) b!6534904))

(assert (= (and b!6534905 (not c!1199593)) b!6534903))

(assert (= (and b!6534904 (not res!2681238)) b!6534909))

(assert (= (or b!6534909 b!6534903) bm!567844))

(assert (= (or b!6534908 b!6534904) bm!567845))

(declare-fun m!7318274 () Bool)

(assert (=> bm!567844 m!7318274))

(declare-fun m!7318276 () Bool)

(assert (=> b!6534902 m!7318276))

(assert (=> bm!567845 m!7318196))

(declare-fun m!7318278 () Bool)

(assert (=> b!6534906 m!7318278))

(assert (=> b!6534298 d!2050933))

(declare-fun d!2050963 () Bool)

(assert (=> d!2050963 (= (matchR!8590 lt!2397851 s!2326) (matchRSpec!3508 lt!2397851 s!2326))))

(declare-fun lt!2397965 () Unit!158963)

(declare-fun choose!48530 (Regex!16407 List!65520) Unit!158963)

(assert (=> d!2050963 (= lt!2397965 (choose!48530 lt!2397851 s!2326))))

(assert (=> d!2050963 (validRegex!8143 lt!2397851)))

(assert (=> d!2050963 (= (mainMatchTheorem!3508 lt!2397851 s!2326) lt!2397965)))

(declare-fun bs!1666969 () Bool)

(assert (= bs!1666969 d!2050963))

(assert (=> bs!1666969 m!7317778))

(assert (=> bs!1666969 m!7317780))

(declare-fun m!7318280 () Bool)

(assert (=> bs!1666969 m!7318280))

(assert (=> bs!1666969 m!7318198))

(assert (=> b!6534298 d!2050963))

(declare-fun d!2050965 () Bool)

(declare-fun choose!48531 ((InoxSet Context!11582) Int) (InoxSet Context!11582))

(assert (=> d!2050965 (= (flatMap!1912 lt!2397833 lambda!362525) (choose!48531 lt!2397833 lambda!362525))))

(declare-fun bs!1666970 () Bool)

(assert (= bs!1666970 d!2050965))

(declare-fun m!7318282 () Bool)

(assert (=> bs!1666970 m!7318282))

(assert (=> b!6534319 d!2050965))

(declare-fun b!6534935 () Bool)

(declare-fun e!3957410 () (InoxSet Context!11582))

(declare-fun e!3957411 () (InoxSet Context!11582))

(assert (=> b!6534935 (= e!3957410 e!3957411)))

(declare-fun c!1199603 () Bool)

(assert (=> b!6534935 (= c!1199603 ((_ is Cons!65397) (exprs!6291 lt!2397864)))))

(declare-fun b!6534936 () Bool)

(declare-fun e!3957409 () Bool)

(assert (=> b!6534936 (= e!3957409 (nullable!6400 (h!71845 (exprs!6291 lt!2397864))))))

(declare-fun b!6534937 () Bool)

(declare-fun call!567855 () (InoxSet Context!11582))

(assert (=> b!6534937 (= e!3957411 call!567855)))

(declare-fun d!2050967 () Bool)

(declare-fun c!1199604 () Bool)

(assert (=> d!2050967 (= c!1199604 e!3957409)))

(declare-fun res!2681247 () Bool)

(assert (=> d!2050967 (=> (not res!2681247) (not e!3957409))))

(assert (=> d!2050967 (= res!2681247 ((_ is Cons!65397) (exprs!6291 lt!2397864)))))

(assert (=> d!2050967 (= (derivationStepZipperUp!1581 lt!2397864 (h!71844 s!2326)) e!3957410)))

(declare-fun bm!567850 () Bool)

(assert (=> bm!567850 (= call!567855 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 lt!2397864)) (Context!11583 (t!379161 (exprs!6291 lt!2397864))) (h!71844 s!2326)))))

(declare-fun b!6534938 () Bool)

(assert (=> b!6534938 (= e!3957411 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6534939 () Bool)

(assert (=> b!6534939 (= e!3957410 ((_ map or) call!567855 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 lt!2397864))) (h!71844 s!2326))))))

(assert (= (and d!2050967 res!2681247) b!6534936))

(assert (= (and d!2050967 c!1199604) b!6534939))

(assert (= (and d!2050967 (not c!1199604)) b!6534935))

(assert (= (and b!6534935 c!1199603) b!6534937))

(assert (= (and b!6534935 (not c!1199603)) b!6534938))

(assert (= (or b!6534939 b!6534937) bm!567850))

(declare-fun m!7318300 () Bool)

(assert (=> b!6534936 m!7318300))

(declare-fun m!7318302 () Bool)

(assert (=> bm!567850 m!7318302))

(declare-fun m!7318304 () Bool)

(assert (=> b!6534939 m!7318304))

(assert (=> b!6534319 d!2050967))

(declare-fun d!2050977 () Bool)

(declare-fun dynLambda!25991 (Int Context!11582) (InoxSet Context!11582))

(assert (=> d!2050977 (= (flatMap!1912 lt!2397833 lambda!362525) (dynLambda!25991 lambda!362525 lt!2397864))))

(declare-fun lt!2397974 () Unit!158963)

(declare-fun choose!48532 ((InoxSet Context!11582) Context!11582 Int) Unit!158963)

(assert (=> d!2050977 (= lt!2397974 (choose!48532 lt!2397833 lt!2397864 lambda!362525))))

(assert (=> d!2050977 (= lt!2397833 (store ((as const (Array Context!11582 Bool)) false) lt!2397864 true))))

(assert (=> d!2050977 (= (lemmaFlatMapOnSingletonSet!1438 lt!2397833 lt!2397864 lambda!362525) lt!2397974)))

(declare-fun b_lambda!247377 () Bool)

(assert (=> (not b_lambda!247377) (not d!2050977)))

(declare-fun bs!1666973 () Bool)

(assert (= bs!1666973 d!2050977))

(assert (=> bs!1666973 m!7317846))

(declare-fun m!7318306 () Bool)

(assert (=> bs!1666973 m!7318306))

(declare-fun m!7318308 () Bool)

(assert (=> bs!1666973 m!7318308))

(assert (=> bs!1666973 m!7317844))

(assert (=> b!6534319 d!2050977))

(declare-fun bs!1666981 () Bool)

(declare-fun d!2050979 () Bool)

(assert (= bs!1666981 (and d!2050979 b!6534314)))

(declare-fun lambda!362584 () Int)

(assert (=> bs!1666981 (= lambda!362584 lambda!362525)))

(assert (=> d!2050979 true))

(assert (=> d!2050979 (= (derivationStepZipper!2373 lt!2397833 (h!71844 s!2326)) (flatMap!1912 lt!2397833 lambda!362584))))

(declare-fun bs!1666983 () Bool)

(assert (= bs!1666983 d!2050979))

(declare-fun m!7318312 () Bool)

(assert (=> bs!1666983 m!7318312))

(assert (=> b!6534319 d!2050979))

(declare-fun d!2050983 () Bool)

(declare-fun c!1199608 () Bool)

(assert (=> d!2050983 (= c!1199608 (isEmpty!37616 s!2326))))

(declare-fun e!3957412 () Bool)

(assert (=> d!2050983 (= (matchZipper!2419 z!1189 s!2326) e!3957412)))

(declare-fun b!6534944 () Bool)

(assert (=> b!6534944 (= e!3957412 (nullableZipper!2156 z!1189))))

(declare-fun b!6534945 () Bool)

(assert (=> b!6534945 (= e!3957412 (matchZipper!2419 (derivationStepZipper!2373 z!1189 (head!13272 s!2326)) (tail!12357 s!2326)))))

(assert (= (and d!2050983 c!1199608) b!6534944))

(assert (= (and d!2050983 (not c!1199608)) b!6534945))

(assert (=> d!2050983 m!7318196))

(declare-fun m!7318316 () Bool)

(assert (=> b!6534944 m!7318316))

(assert (=> b!6534945 m!7318194))

(assert (=> b!6534945 m!7318194))

(declare-fun m!7318320 () Bool)

(assert (=> b!6534945 m!7318320))

(assert (=> b!6534945 m!7318188))

(assert (=> b!6534945 m!7318320))

(assert (=> b!6534945 m!7318188))

(declare-fun m!7318324 () Bool)

(assert (=> b!6534945 m!7318324))

(assert (=> b!6534336 d!2050983))

(declare-fun d!2050987 () Bool)

(assert (=> d!2050987 (forall!15583 (++!14516 lt!2397846 lt!2397832) lambda!362527)))

(declare-fun lt!2397978 () Unit!158963)

(declare-fun choose!48533 (List!65521 List!65521 Int) Unit!158963)

(assert (=> d!2050987 (= lt!2397978 (choose!48533 lt!2397846 lt!2397832 lambda!362527))))

(assert (=> d!2050987 (forall!15583 lt!2397846 lambda!362527)))

(assert (=> d!2050987 (= (lemmaConcatPreservesForall!380 lt!2397846 lt!2397832 lambda!362527) lt!2397978)))

(declare-fun bs!1666985 () Bool)

(assert (= bs!1666985 d!2050987))

(assert (=> bs!1666985 m!7317724))

(assert (=> bs!1666985 m!7317724))

(declare-fun m!7318350 () Bool)

(assert (=> bs!1666985 m!7318350))

(declare-fun m!7318352 () Bool)

(assert (=> bs!1666985 m!7318352))

(declare-fun m!7318354 () Bool)

(assert (=> bs!1666985 m!7318354))

(assert (=> b!6534315 d!2050987))

(declare-fun d!2050997 () Bool)

(declare-fun dynLambda!25992 (Int Context!11582) Context!11582)

(assert (=> d!2050997 (= (map!14919 lt!2397844 lambda!362526) (store ((as const (Array Context!11582 Bool)) false) (dynLambda!25992 lambda!362526 lt!2397867) true))))

(declare-fun lt!2397982 () Unit!158963)

(declare-fun choose!48534 ((InoxSet Context!11582) Context!11582 Int) Unit!158963)

(assert (=> d!2050997 (= lt!2397982 (choose!48534 lt!2397844 lt!2397867 lambda!362526))))

(assert (=> d!2050997 (= lt!2397844 (store ((as const (Array Context!11582 Bool)) false) lt!2397867 true))))

(assert (=> d!2050997 (= (lemmaMapOnSingletonSet!190 lt!2397844 lt!2397867 lambda!362526) lt!2397982)))

(declare-fun b_lambda!247381 () Bool)

(assert (=> (not b_lambda!247381) (not d!2050997)))

(declare-fun bs!1666990 () Bool)

(assert (= bs!1666990 d!2050997))

(declare-fun m!7318388 () Bool)

(assert (=> bs!1666990 m!7318388))

(declare-fun m!7318390 () Bool)

(assert (=> bs!1666990 m!7318390))

(assert (=> bs!1666990 m!7318388))

(declare-fun m!7318392 () Bool)

(assert (=> bs!1666990 m!7318392))

(assert (=> bs!1666990 m!7317718))

(assert (=> bs!1666990 m!7317758))

(assert (=> b!6534315 d!2050997))

(declare-fun d!2051013 () Bool)

(declare-fun choose!48535 ((InoxSet Context!11582) Int) (InoxSet Context!11582))

(assert (=> d!2051013 (= (map!14919 lt!2397844 lambda!362526) (choose!48535 lt!2397844 lambda!362526))))

(declare-fun bs!1666991 () Bool)

(assert (= bs!1666991 d!2051013))

(declare-fun m!7318406 () Bool)

(assert (=> bs!1666991 m!7318406))

(assert (=> b!6534315 d!2051013))

(declare-fun b!6535047 () Bool)

(declare-fun e!3957463 () List!65521)

(assert (=> b!6535047 (= e!3957463 (Cons!65397 (h!71845 lt!2397846) (++!14516 (t!379161 lt!2397846) lt!2397832)))))

(declare-fun b!6535048 () Bool)

(declare-fun res!2681263 () Bool)

(declare-fun e!3957464 () Bool)

(assert (=> b!6535048 (=> (not res!2681263) (not e!3957464))))

(declare-fun lt!2397986 () List!65521)

(declare-fun size!40472 (List!65521) Int)

(assert (=> b!6535048 (= res!2681263 (= (size!40472 lt!2397986) (+ (size!40472 lt!2397846) (size!40472 lt!2397832))))))

(declare-fun d!2051015 () Bool)

(assert (=> d!2051015 e!3957464))

(declare-fun res!2681262 () Bool)

(assert (=> d!2051015 (=> (not res!2681262) (not e!3957464))))

(declare-fun content!12516 (List!65521) (InoxSet Regex!16407))

(assert (=> d!2051015 (= res!2681262 (= (content!12516 lt!2397986) ((_ map or) (content!12516 lt!2397846) (content!12516 lt!2397832))))))

(assert (=> d!2051015 (= lt!2397986 e!3957463)))

(declare-fun c!1199626 () Bool)

(assert (=> d!2051015 (= c!1199626 ((_ is Nil!65397) lt!2397846))))

(assert (=> d!2051015 (= (++!14516 lt!2397846 lt!2397832) lt!2397986)))

(declare-fun b!6535046 () Bool)

(assert (=> b!6535046 (= e!3957463 lt!2397832)))

(declare-fun b!6535049 () Bool)

(assert (=> b!6535049 (= e!3957464 (or (not (= lt!2397832 Nil!65397)) (= lt!2397986 lt!2397846)))))

(assert (= (and d!2051015 c!1199626) b!6535046))

(assert (= (and d!2051015 (not c!1199626)) b!6535047))

(assert (= (and d!2051015 res!2681262) b!6535048))

(assert (= (and b!6535048 res!2681263) b!6535049))

(declare-fun m!7318410 () Bool)

(assert (=> b!6535047 m!7318410))

(declare-fun m!7318414 () Bool)

(assert (=> b!6535048 m!7318414))

(declare-fun m!7318416 () Bool)

(assert (=> b!6535048 m!7318416))

(declare-fun m!7318418 () Bool)

(assert (=> b!6535048 m!7318418))

(declare-fun m!7318420 () Bool)

(assert (=> d!2051015 m!7318420))

(declare-fun m!7318422 () Bool)

(assert (=> d!2051015 m!7318422))

(declare-fun m!7318424 () Bool)

(assert (=> d!2051015 m!7318424))

(assert (=> b!6534315 d!2051015))

(declare-fun bs!1666997 () Bool)

(declare-fun d!2051017 () Bool)

(assert (= bs!1666997 (and d!2051017 b!6534315)))

(declare-fun lambda!362589 () Int)

(assert (=> bs!1666997 (= (= (exprs!6291 lt!2397838) lt!2397832) (= lambda!362589 lambda!362526))))

(assert (=> d!2051017 true))

(assert (=> d!2051017 (= (appendTo!168 lt!2397844 lt!2397838) (map!14919 lt!2397844 lambda!362589))))

(declare-fun bs!1666998 () Bool)

(assert (= bs!1666998 d!2051017))

(declare-fun m!7318430 () Bool)

(assert (=> bs!1666998 m!7318430))

(assert (=> b!6534315 d!2051017))

(declare-fun d!2051029 () Bool)

(declare-fun lt!2397992 () Regex!16407)

(assert (=> d!2051029 (validRegex!8143 lt!2397992)))

(assert (=> d!2051029 (= lt!2397992 (generalisedUnion!2251 (unfocusZipperList!1828 lt!2397855)))))

(assert (=> d!2051029 (= (unfocusZipper!2149 lt!2397855) lt!2397992)))

(declare-fun bs!1666999 () Bool)

(assert (= bs!1666999 d!2051029))

(declare-fun m!7318432 () Bool)

(assert (=> bs!1666999 m!7318432))

(declare-fun m!7318434 () Bool)

(assert (=> bs!1666999 m!7318434))

(assert (=> bs!1666999 m!7318434))

(declare-fun m!7318436 () Bool)

(assert (=> bs!1666999 m!7318436))

(assert (=> b!6534316 d!2051029))

(declare-fun d!2051031 () Bool)

(assert (=> d!2051031 (isDefined!13001 (findConcatSeparationZippers!172 lt!2397844 (store ((as const (Array Context!11582 Bool)) false) lt!2397838 true) Nil!65396 s!2326 s!2326))))

(declare-fun lt!2397995 () Unit!158963)

(declare-fun choose!48536 ((InoxSet Context!11582) Context!11582 List!65520) Unit!158963)

(assert (=> d!2051031 (= lt!2397995 (choose!48536 lt!2397844 lt!2397838 s!2326))))

(assert (=> d!2051031 (matchZipper!2419 (appendTo!168 lt!2397844 lt!2397838) s!2326)))

(assert (=> d!2051031 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!172 lt!2397844 lt!2397838 s!2326) lt!2397995)))

(declare-fun bs!1667000 () Bool)

(assert (= bs!1667000 d!2051031))

(assert (=> bs!1667000 m!7317774))

(declare-fun m!7318438 () Bool)

(assert (=> bs!1667000 m!7318438))

(assert (=> bs!1667000 m!7317728))

(assert (=> bs!1667000 m!7317728))

(declare-fun m!7318440 () Bool)

(assert (=> bs!1667000 m!7318440))

(assert (=> bs!1667000 m!7317774))

(declare-fun m!7318442 () Bool)

(assert (=> bs!1667000 m!7318442))

(assert (=> bs!1667000 m!7318438))

(declare-fun m!7318444 () Bool)

(assert (=> bs!1667000 m!7318444))

(assert (=> b!6534337 d!2051031))

(declare-fun d!2051033 () Bool)

(declare-fun isEmpty!37618 (Option!16298) Bool)

(assert (=> d!2051033 (= (isDefined!13001 lt!2397858) (not (isEmpty!37618 lt!2397858)))))

(declare-fun bs!1667001 () Bool)

(assert (= bs!1667001 d!2051033))

(declare-fun m!7318446 () Bool)

(assert (=> bs!1667001 m!7318446))

(assert (=> b!6534337 d!2051033))

(declare-fun d!2051035 () Bool)

(assert (=> d!2051035 (= (get!22692 lt!2397858) (v!52480 lt!2397858))))

(assert (=> b!6534337 d!2051035))

(declare-fun b!6535072 () Bool)

(declare-fun e!3957478 () Bool)

(declare-fun lt!2398003 () Option!16298)

(assert (=> b!6535072 (= e!3957478 (= (++!14517 (_1!36689 (get!22692 lt!2398003)) (_2!36689 (get!22692 lt!2398003))) s!2326))))

(declare-fun b!6535073 () Bool)

(declare-fun lt!2398004 () Unit!158963)

(declare-fun lt!2398002 () Unit!158963)

(assert (=> b!6535073 (= lt!2398004 lt!2398002)))

(assert (=> b!6535073 (= (++!14517 (++!14517 Nil!65396 (Cons!65396 (h!71844 s!2326) Nil!65396)) (t!379160 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2554 (List!65520 C!33084 List!65520 List!65520) Unit!158963)

(assert (=> b!6535073 (= lt!2398002 (lemmaMoveElementToOtherListKeepsConcatEq!2554 Nil!65396 (h!71844 s!2326) (t!379160 s!2326) s!2326))))

(declare-fun e!3957481 () Option!16298)

(assert (=> b!6535073 (= e!3957481 (findConcatSeparationZippers!172 lt!2397844 lt!2397875 (++!14517 Nil!65396 (Cons!65396 (h!71844 s!2326) Nil!65396)) (t!379160 s!2326) s!2326))))

(declare-fun b!6535074 () Bool)

(declare-fun res!2681274 () Bool)

(assert (=> b!6535074 (=> (not res!2681274) (not e!3957478))))

(assert (=> b!6535074 (= res!2681274 (matchZipper!2419 lt!2397844 (_1!36689 (get!22692 lt!2398003))))))

(declare-fun b!6535075 () Bool)

(assert (=> b!6535075 (= e!3957481 None!16297)))

(declare-fun b!6535077 () Bool)

(declare-fun e!3957477 () Option!16298)

(assert (=> b!6535077 (= e!3957477 e!3957481)))

(declare-fun c!1199633 () Bool)

(assert (=> b!6535077 (= c!1199633 ((_ is Nil!65396) s!2326))))

(declare-fun b!6535078 () Bool)

(declare-fun e!3957480 () Bool)

(assert (=> b!6535078 (= e!3957480 (not (isDefined!13001 lt!2398003)))))

(declare-fun b!6535079 () Bool)

(assert (=> b!6535079 (= e!3957477 (Some!16297 (tuple2!66773 Nil!65396 s!2326)))))

(declare-fun b!6535080 () Bool)

(declare-fun e!3957479 () Bool)

(assert (=> b!6535080 (= e!3957479 (matchZipper!2419 lt!2397875 s!2326))))

(declare-fun b!6535076 () Bool)

(declare-fun res!2681278 () Bool)

(assert (=> b!6535076 (=> (not res!2681278) (not e!3957478))))

(assert (=> b!6535076 (= res!2681278 (matchZipper!2419 lt!2397875 (_2!36689 (get!22692 lt!2398003))))))

(declare-fun d!2051037 () Bool)

(assert (=> d!2051037 e!3957480))

(declare-fun res!2681275 () Bool)

(assert (=> d!2051037 (=> res!2681275 e!3957480)))

(assert (=> d!2051037 (= res!2681275 e!3957478)))

(declare-fun res!2681276 () Bool)

(assert (=> d!2051037 (=> (not res!2681276) (not e!3957478))))

(assert (=> d!2051037 (= res!2681276 (isDefined!13001 lt!2398003))))

(assert (=> d!2051037 (= lt!2398003 e!3957477)))

(declare-fun c!1199632 () Bool)

(assert (=> d!2051037 (= c!1199632 e!3957479)))

(declare-fun res!2681277 () Bool)

(assert (=> d!2051037 (=> (not res!2681277) (not e!3957479))))

(assert (=> d!2051037 (= res!2681277 (matchZipper!2419 lt!2397844 Nil!65396))))

(assert (=> d!2051037 (= (++!14517 Nil!65396 s!2326) s!2326)))

(assert (=> d!2051037 (= (findConcatSeparationZippers!172 lt!2397844 lt!2397875 Nil!65396 s!2326 s!2326) lt!2398003)))

(assert (= (and d!2051037 res!2681277) b!6535080))

(assert (= (and d!2051037 c!1199632) b!6535079))

(assert (= (and d!2051037 (not c!1199632)) b!6535077))

(assert (= (and b!6535077 c!1199633) b!6535075))

(assert (= (and b!6535077 (not c!1199633)) b!6535073))

(assert (= (and d!2051037 res!2681276) b!6535074))

(assert (= (and b!6535074 res!2681274) b!6535076))

(assert (= (and b!6535076 res!2681278) b!6535072))

(assert (= (and d!2051037 (not res!2681275)) b!6535078))

(declare-fun m!7318448 () Bool)

(assert (=> b!6535080 m!7318448))

(declare-fun m!7318450 () Bool)

(assert (=> b!6535072 m!7318450))

(declare-fun m!7318452 () Bool)

(assert (=> b!6535072 m!7318452))

(assert (=> b!6535076 m!7318450))

(declare-fun m!7318454 () Bool)

(assert (=> b!6535076 m!7318454))

(declare-fun m!7318456 () Bool)

(assert (=> d!2051037 m!7318456))

(declare-fun m!7318458 () Bool)

(assert (=> d!2051037 m!7318458))

(declare-fun m!7318460 () Bool)

(assert (=> d!2051037 m!7318460))

(declare-fun m!7318462 () Bool)

(assert (=> b!6535073 m!7318462))

(assert (=> b!6535073 m!7318462))

(declare-fun m!7318464 () Bool)

(assert (=> b!6535073 m!7318464))

(declare-fun m!7318466 () Bool)

(assert (=> b!6535073 m!7318466))

(assert (=> b!6535073 m!7318462))

(declare-fun m!7318468 () Bool)

(assert (=> b!6535073 m!7318468))

(assert (=> b!6535078 m!7318456))

(assert (=> b!6535074 m!7318450))

(declare-fun m!7318470 () Bool)

(assert (=> b!6535074 m!7318470))

(assert (=> b!6534337 d!2051037))

(declare-fun b!6535091 () Bool)

(declare-fun res!2681283 () Bool)

(declare-fun e!3957486 () Bool)

(assert (=> b!6535091 (=> (not res!2681283) (not e!3957486))))

(declare-fun lt!2398007 () List!65520)

(declare-fun size!40473 (List!65520) Int)

(assert (=> b!6535091 (= res!2681283 (= (size!40473 lt!2398007) (+ (size!40473 (_1!36689 lt!2397836)) (size!40473 (_2!36689 lt!2397836)))))))

(declare-fun b!6535089 () Bool)

(declare-fun e!3957487 () List!65520)

(assert (=> b!6535089 (= e!3957487 (_2!36689 lt!2397836))))

(declare-fun d!2051039 () Bool)

(assert (=> d!2051039 e!3957486))

(declare-fun res!2681284 () Bool)

(assert (=> d!2051039 (=> (not res!2681284) (not e!3957486))))

(declare-fun content!12517 (List!65520) (InoxSet C!33084))

(assert (=> d!2051039 (= res!2681284 (= (content!12517 lt!2398007) ((_ map or) (content!12517 (_1!36689 lt!2397836)) (content!12517 (_2!36689 lt!2397836)))))))

(assert (=> d!2051039 (= lt!2398007 e!3957487)))

(declare-fun c!1199636 () Bool)

(assert (=> d!2051039 (= c!1199636 ((_ is Nil!65396) (_1!36689 lt!2397836)))))

(assert (=> d!2051039 (= (++!14517 (_1!36689 lt!2397836) (_2!36689 lt!2397836)) lt!2398007)))

(declare-fun b!6535090 () Bool)

(assert (=> b!6535090 (= e!3957487 (Cons!65396 (h!71844 (_1!36689 lt!2397836)) (++!14517 (t!379160 (_1!36689 lt!2397836)) (_2!36689 lt!2397836))))))

(declare-fun b!6535092 () Bool)

(assert (=> b!6535092 (= e!3957486 (or (not (= (_2!36689 lt!2397836) Nil!65396)) (= lt!2398007 (_1!36689 lt!2397836))))))

(assert (= (and d!2051039 c!1199636) b!6535089))

(assert (= (and d!2051039 (not c!1199636)) b!6535090))

(assert (= (and d!2051039 res!2681284) b!6535091))

(assert (= (and b!6535091 res!2681283) b!6535092))

(declare-fun m!7318472 () Bool)

(assert (=> b!6535091 m!7318472))

(declare-fun m!7318474 () Bool)

(assert (=> b!6535091 m!7318474))

(declare-fun m!7318476 () Bool)

(assert (=> b!6535091 m!7318476))

(declare-fun m!7318478 () Bool)

(assert (=> d!2051039 m!7318478))

(declare-fun m!7318480 () Bool)

(assert (=> d!2051039 m!7318480))

(declare-fun m!7318482 () Bool)

(assert (=> d!2051039 m!7318482))

(declare-fun m!7318484 () Bool)

(assert (=> b!6535090 m!7318484))

(assert (=> b!6534337 d!2051039))

(assert (=> b!6534338 d!2050907))

(declare-fun d!2051041 () Bool)

(declare-fun lt!2398008 () Regex!16407)

(assert (=> d!2051041 (validRegex!8143 lt!2398008)))

(assert (=> d!2051041 (= lt!2398008 (generalisedUnion!2251 (unfocusZipperList!1828 zl!343)))))

(assert (=> d!2051041 (= (unfocusZipper!2149 zl!343) lt!2398008)))

(declare-fun bs!1667002 () Bool)

(assert (= bs!1667002 d!2051041))

(declare-fun m!7318486 () Bool)

(assert (=> bs!1667002 m!7318486))

(assert (=> bs!1667002 m!7317856))

(assert (=> bs!1667002 m!7317856))

(assert (=> bs!1667002 m!7317858))

(assert (=> b!6534312 d!2051041))

(declare-fun d!2051043 () Bool)

(assert (=> d!2051043 (= (isEmpty!37614 (t!379161 (exprs!6291 (h!71846 zl!343)))) ((_ is Nil!65397) (t!379161 (exprs!6291 (h!71846 zl!343)))))))

(assert (=> b!6534333 d!2051043))

(declare-fun d!2051045 () Bool)

(assert (=> d!2051045 (= (flatMap!1912 lt!2397844 lambda!362525) (dynLambda!25991 lambda!362525 lt!2397867))))

(declare-fun lt!2398009 () Unit!158963)

(assert (=> d!2051045 (= lt!2398009 (choose!48532 lt!2397844 lt!2397867 lambda!362525))))

(assert (=> d!2051045 (= lt!2397844 (store ((as const (Array Context!11582 Bool)) false) lt!2397867 true))))

(assert (=> d!2051045 (= (lemmaFlatMapOnSingletonSet!1438 lt!2397844 lt!2397867 lambda!362525) lt!2398009)))

(declare-fun b_lambda!247393 () Bool)

(assert (=> (not b_lambda!247393) (not d!2051045)))

(declare-fun bs!1667003 () Bool)

(assert (= bs!1667003 d!2051045))

(assert (=> bs!1667003 m!7317764))

(declare-fun m!7318488 () Bool)

(assert (=> bs!1667003 m!7318488))

(declare-fun m!7318490 () Bool)

(assert (=> bs!1667003 m!7318490))

(assert (=> bs!1667003 m!7317758))

(assert (=> b!6534313 d!2051045))

(declare-fun b!6535093 () Bool)

(declare-fun e!3957489 () (InoxSet Context!11582))

(declare-fun e!3957490 () (InoxSet Context!11582))

(assert (=> b!6535093 (= e!3957489 e!3957490)))

(declare-fun c!1199637 () Bool)

(assert (=> b!6535093 (= c!1199637 ((_ is Cons!65397) (exprs!6291 lt!2397867)))))

(declare-fun b!6535094 () Bool)

(declare-fun e!3957488 () Bool)

(assert (=> b!6535094 (= e!3957488 (nullable!6400 (h!71845 (exprs!6291 lt!2397867))))))

(declare-fun b!6535095 () Bool)

(declare-fun call!567868 () (InoxSet Context!11582))

(assert (=> b!6535095 (= e!3957490 call!567868)))

(declare-fun d!2051047 () Bool)

(declare-fun c!1199638 () Bool)

(assert (=> d!2051047 (= c!1199638 e!3957488)))

(declare-fun res!2681285 () Bool)

(assert (=> d!2051047 (=> (not res!2681285) (not e!3957488))))

(assert (=> d!2051047 (= res!2681285 ((_ is Cons!65397) (exprs!6291 lt!2397867)))))

(assert (=> d!2051047 (= (derivationStepZipperUp!1581 lt!2397867 (h!71844 s!2326)) e!3957489)))

(declare-fun bm!567863 () Bool)

(assert (=> bm!567863 (= call!567868 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 lt!2397867)) (Context!11583 (t!379161 (exprs!6291 lt!2397867))) (h!71844 s!2326)))))

(declare-fun b!6535096 () Bool)

(assert (=> b!6535096 (= e!3957490 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6535097 () Bool)

(assert (=> b!6535097 (= e!3957489 ((_ map or) call!567868 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 lt!2397867))) (h!71844 s!2326))))))

(assert (= (and d!2051047 res!2681285) b!6535094))

(assert (= (and d!2051047 c!1199638) b!6535097))

(assert (= (and d!2051047 (not c!1199638)) b!6535093))

(assert (= (and b!6535093 c!1199637) b!6535095))

(assert (= (and b!6535093 (not c!1199637)) b!6535096))

(assert (= (or b!6535097 b!6535095) bm!567863))

(declare-fun m!7318492 () Bool)

(assert (=> b!6535094 m!7318492))

(declare-fun m!7318494 () Bool)

(assert (=> bm!567863 m!7318494))

(declare-fun m!7318496 () Bool)

(assert (=> b!6535097 m!7318496))

(assert (=> b!6534313 d!2051047))

(declare-fun d!2051049 () Bool)

(assert (=> d!2051049 (= (flatMap!1912 lt!2397875 lambda!362525) (dynLambda!25991 lambda!362525 lt!2397838))))

(declare-fun lt!2398010 () Unit!158963)

(assert (=> d!2051049 (= lt!2398010 (choose!48532 lt!2397875 lt!2397838 lambda!362525))))

(assert (=> d!2051049 (= lt!2397875 (store ((as const (Array Context!11582 Bool)) false) lt!2397838 true))))

(assert (=> d!2051049 (= (lemmaFlatMapOnSingletonSet!1438 lt!2397875 lt!2397838 lambda!362525) lt!2398010)))

(declare-fun b_lambda!247395 () Bool)

(assert (=> (not b_lambda!247395) (not d!2051049)))

(declare-fun bs!1667004 () Bool)

(assert (= bs!1667004 d!2051049))

(assert (=> bs!1667004 m!7317766))

(declare-fun m!7318498 () Bool)

(assert (=> bs!1667004 m!7318498))

(declare-fun m!7318500 () Bool)

(assert (=> bs!1667004 m!7318500))

(assert (=> bs!1667004 m!7317774))

(assert (=> b!6534313 d!2051049))

(declare-fun b!6535098 () Bool)

(declare-fun e!3957492 () (InoxSet Context!11582))

(declare-fun e!3957493 () (InoxSet Context!11582))

(assert (=> b!6535098 (= e!3957492 e!3957493)))

(declare-fun c!1199639 () Bool)

(assert (=> b!6535098 (= c!1199639 ((_ is Cons!65397) (exprs!6291 lt!2397838)))))

(declare-fun b!6535099 () Bool)

(declare-fun e!3957491 () Bool)

(assert (=> b!6535099 (= e!3957491 (nullable!6400 (h!71845 (exprs!6291 lt!2397838))))))

(declare-fun b!6535100 () Bool)

(declare-fun call!567869 () (InoxSet Context!11582))

(assert (=> b!6535100 (= e!3957493 call!567869)))

(declare-fun d!2051051 () Bool)

(declare-fun c!1199640 () Bool)

(assert (=> d!2051051 (= c!1199640 e!3957491)))

(declare-fun res!2681286 () Bool)

(assert (=> d!2051051 (=> (not res!2681286) (not e!3957491))))

(assert (=> d!2051051 (= res!2681286 ((_ is Cons!65397) (exprs!6291 lt!2397838)))))

(assert (=> d!2051051 (= (derivationStepZipperUp!1581 lt!2397838 (h!71844 s!2326)) e!3957492)))

(declare-fun bm!567864 () Bool)

(assert (=> bm!567864 (= call!567869 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 lt!2397838)) (Context!11583 (t!379161 (exprs!6291 lt!2397838))) (h!71844 s!2326)))))

(declare-fun b!6535101 () Bool)

(assert (=> b!6535101 (= e!3957493 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6535102 () Bool)

(assert (=> b!6535102 (= e!3957492 ((_ map or) call!567869 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 lt!2397838))) (h!71844 s!2326))))))

(assert (= (and d!2051051 res!2681286) b!6535099))

(assert (= (and d!2051051 c!1199640) b!6535102))

(assert (= (and d!2051051 (not c!1199640)) b!6535098))

(assert (= (and b!6535098 c!1199639) b!6535100))

(assert (= (and b!6535098 (not c!1199639)) b!6535101))

(assert (= (or b!6535102 b!6535100) bm!567864))

(declare-fun m!7318502 () Bool)

(assert (=> b!6535099 m!7318502))

(declare-fun m!7318504 () Bool)

(assert (=> bm!567864 m!7318504))

(declare-fun m!7318506 () Bool)

(assert (=> b!6535102 m!7318506))

(assert (=> b!6534313 d!2051051))

(declare-fun d!2051053 () Bool)

(assert (=> d!2051053 (= (flatMap!1912 lt!2397844 lambda!362525) (choose!48531 lt!2397844 lambda!362525))))

(declare-fun bs!1667005 () Bool)

(assert (= bs!1667005 d!2051053))

(declare-fun m!7318508 () Bool)

(assert (=> bs!1667005 m!7318508))

(assert (=> b!6534313 d!2051053))

(declare-fun d!2051055 () Bool)

(declare-fun lt!2398011 () Regex!16407)

(assert (=> d!2051055 (validRegex!8143 lt!2398011)))

(assert (=> d!2051055 (= lt!2398011 (generalisedUnion!2251 (unfocusZipperList!1828 lt!2397839)))))

(assert (=> d!2051055 (= (unfocusZipper!2149 lt!2397839) lt!2398011)))

(declare-fun bs!1667006 () Bool)

(assert (= bs!1667006 d!2051055))

(declare-fun m!7318510 () Bool)

(assert (=> bs!1667006 m!7318510))

(declare-fun m!7318512 () Bool)

(assert (=> bs!1667006 m!7318512))

(assert (=> bs!1667006 m!7318512))

(declare-fun m!7318514 () Bool)

(assert (=> bs!1667006 m!7318514))

(assert (=> b!6534313 d!2051055))

(declare-fun d!2051057 () Bool)

(assert (=> d!2051057 (= (flatMap!1912 lt!2397875 lambda!362525) (choose!48531 lt!2397875 lambda!362525))))

(declare-fun bs!1667007 () Bool)

(assert (= bs!1667007 d!2051057))

(declare-fun m!7318516 () Bool)

(assert (=> bs!1667007 m!7318516))

(assert (=> b!6534313 d!2051057))

(declare-fun d!2051059 () Bool)

(assert (=> d!2051059 (= (flatMap!1912 z!1189 lambda!362525) (dynLambda!25991 lambda!362525 (h!71846 zl!343)))))

(declare-fun lt!2398012 () Unit!158963)

(assert (=> d!2051059 (= lt!2398012 (choose!48532 z!1189 (h!71846 zl!343) lambda!362525))))

(assert (=> d!2051059 (= z!1189 (store ((as const (Array Context!11582 Bool)) false) (h!71846 zl!343) true))))

(assert (=> d!2051059 (= (lemmaFlatMapOnSingletonSet!1438 z!1189 (h!71846 zl!343) lambda!362525) lt!2398012)))

(declare-fun b_lambda!247397 () Bool)

(assert (=> (not b_lambda!247397) (not d!2051059)))

(declare-fun bs!1667008 () Bool)

(assert (= bs!1667008 d!2051059))

(assert (=> bs!1667008 m!7317822))

(declare-fun m!7318518 () Bool)

(assert (=> bs!1667008 m!7318518))

(declare-fun m!7318520 () Bool)

(assert (=> bs!1667008 m!7318520))

(declare-fun m!7318522 () Bool)

(assert (=> bs!1667008 m!7318522))

(assert (=> b!6534314 d!2051059))

(declare-fun d!2051061 () Bool)

(assert (=> d!2051061 (= (nullable!6400 (h!71845 (exprs!6291 (h!71846 zl!343)))) (nullableFct!2329 (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun bs!1667009 () Bool)

(assert (= bs!1667009 d!2051061))

(declare-fun m!7318524 () Bool)

(assert (=> bs!1667009 m!7318524))

(assert (=> b!6534314 d!2051061))

(declare-fun b!6535103 () Bool)

(declare-fun e!3957495 () (InoxSet Context!11582))

(declare-fun e!3957496 () (InoxSet Context!11582))

(assert (=> b!6535103 (= e!3957495 e!3957496)))

(declare-fun c!1199641 () Bool)

(assert (=> b!6535103 (= c!1199641 ((_ is Cons!65397) (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343))))))))))

(declare-fun b!6535104 () Bool)

(declare-fun e!3957494 () Bool)

(assert (=> b!6535104 (= e!3957494 (nullable!6400 (h!71845 (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343)))))))))))

(declare-fun b!6535105 () Bool)

(declare-fun call!567870 () (InoxSet Context!11582))

(assert (=> b!6535105 (= e!3957496 call!567870)))

(declare-fun d!2051063 () Bool)

(declare-fun c!1199642 () Bool)

(assert (=> d!2051063 (= c!1199642 e!3957494)))

(declare-fun res!2681287 () Bool)

(assert (=> d!2051063 (=> (not res!2681287) (not e!3957494))))

(assert (=> d!2051063 (= res!2681287 ((_ is Cons!65397) (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343))))))))))

(assert (=> d!2051063 (= (derivationStepZipperUp!1581 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343))))) (h!71844 s!2326)) e!3957495)))

(declare-fun bm!567865 () Bool)

(assert (=> bm!567865 (= call!567870 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343))))))) (Context!11583 (t!379161 (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343)))))))) (h!71844 s!2326)))))

(declare-fun b!6535106 () Bool)

(assert (=> b!6535106 (= e!3957496 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6535107 () Bool)

(assert (=> b!6535107 (= e!3957495 ((_ map or) call!567870 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 (Context!11583 (Cons!65397 (h!71845 (exprs!6291 (h!71846 zl!343))) (t!379161 (exprs!6291 (h!71846 zl!343)))))))) (h!71844 s!2326))))))

(assert (= (and d!2051063 res!2681287) b!6535104))

(assert (= (and d!2051063 c!1199642) b!6535107))

(assert (= (and d!2051063 (not c!1199642)) b!6535103))

(assert (= (and b!6535103 c!1199641) b!6535105))

(assert (= (and b!6535103 (not c!1199641)) b!6535106))

(assert (= (or b!6535107 b!6535105) bm!567865))

(declare-fun m!7318526 () Bool)

(assert (=> b!6535104 m!7318526))

(declare-fun m!7318528 () Bool)

(assert (=> bm!567865 m!7318528))

(declare-fun m!7318530 () Bool)

(assert (=> b!6535107 m!7318530))

(assert (=> b!6534314 d!2051063))

(declare-fun b!6535108 () Bool)

(declare-fun e!3957498 () (InoxSet Context!11582))

(declare-fun e!3957499 () (InoxSet Context!11582))

(assert (=> b!6535108 (= e!3957498 e!3957499)))

(declare-fun c!1199643 () Bool)

(assert (=> b!6535108 (= c!1199643 ((_ is Cons!65397) (exprs!6291 lt!2397872)))))

(declare-fun b!6535109 () Bool)

(declare-fun e!3957497 () Bool)

(assert (=> b!6535109 (= e!3957497 (nullable!6400 (h!71845 (exprs!6291 lt!2397872))))))

(declare-fun b!6535110 () Bool)

(declare-fun call!567871 () (InoxSet Context!11582))

(assert (=> b!6535110 (= e!3957499 call!567871)))

(declare-fun d!2051065 () Bool)

(declare-fun c!1199644 () Bool)

(assert (=> d!2051065 (= c!1199644 e!3957497)))

(declare-fun res!2681288 () Bool)

(assert (=> d!2051065 (=> (not res!2681288) (not e!3957497))))

(assert (=> d!2051065 (= res!2681288 ((_ is Cons!65397) (exprs!6291 lt!2397872)))))

(assert (=> d!2051065 (= (derivationStepZipperUp!1581 lt!2397872 (h!71844 s!2326)) e!3957498)))

(declare-fun bm!567866 () Bool)

(assert (=> bm!567866 (= call!567871 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 lt!2397872)) (Context!11583 (t!379161 (exprs!6291 lt!2397872))) (h!71844 s!2326)))))

(declare-fun b!6535111 () Bool)

(assert (=> b!6535111 (= e!3957499 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6535112 () Bool)

(assert (=> b!6535112 (= e!3957498 ((_ map or) call!567871 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 lt!2397872))) (h!71844 s!2326))))))

(assert (= (and d!2051065 res!2681288) b!6535109))

(assert (= (and d!2051065 c!1199644) b!6535112))

(assert (= (and d!2051065 (not c!1199644)) b!6535108))

(assert (= (and b!6535108 c!1199643) b!6535110))

(assert (= (and b!6535108 (not c!1199643)) b!6535111))

(assert (= (or b!6535112 b!6535110) bm!567866))

(declare-fun m!7318532 () Bool)

(assert (=> b!6535109 m!7318532))

(declare-fun m!7318534 () Bool)

(assert (=> bm!567866 m!7318534))

(declare-fun m!7318536 () Bool)

(assert (=> b!6535112 m!7318536))

(assert (=> b!6534314 d!2051065))

(declare-fun b!6535113 () Bool)

(declare-fun e!3957501 () (InoxSet Context!11582))

(declare-fun e!3957502 () (InoxSet Context!11582))

(assert (=> b!6535113 (= e!3957501 e!3957502)))

(declare-fun c!1199645 () Bool)

(assert (=> b!6535113 (= c!1199645 ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343))))))

(declare-fun b!6535114 () Bool)

(declare-fun e!3957500 () Bool)

(assert (=> b!6535114 (= e!3957500 (nullable!6400 (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6535115 () Bool)

(declare-fun call!567872 () (InoxSet Context!11582))

(assert (=> b!6535115 (= e!3957502 call!567872)))

(declare-fun d!2051067 () Bool)

(declare-fun c!1199646 () Bool)

(assert (=> d!2051067 (= c!1199646 e!3957500)))

(declare-fun res!2681289 () Bool)

(assert (=> d!2051067 (=> (not res!2681289) (not e!3957500))))

(assert (=> d!2051067 (= res!2681289 ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343))))))

(assert (=> d!2051067 (= (derivationStepZipperUp!1581 (h!71846 zl!343) (h!71844 s!2326)) e!3957501)))

(declare-fun bm!567867 () Bool)

(assert (=> bm!567867 (= call!567872 (derivationStepZipperDown!1655 (h!71845 (exprs!6291 (h!71846 zl!343))) (Context!11583 (t!379161 (exprs!6291 (h!71846 zl!343)))) (h!71844 s!2326)))))

(declare-fun b!6535116 () Bool)

(assert (=> b!6535116 (= e!3957502 ((as const (Array Context!11582 Bool)) false))))

(declare-fun b!6535117 () Bool)

(assert (=> b!6535117 (= e!3957501 ((_ map or) call!567872 (derivationStepZipperUp!1581 (Context!11583 (t!379161 (exprs!6291 (h!71846 zl!343)))) (h!71844 s!2326))))))

(assert (= (and d!2051067 res!2681289) b!6535114))

(assert (= (and d!2051067 c!1199646) b!6535117))

(assert (= (and d!2051067 (not c!1199646)) b!6535113))

(assert (= (and b!6535113 c!1199645) b!6535115))

(assert (= (and b!6535113 (not c!1199645)) b!6535116))

(assert (= (or b!6535117 b!6535115) bm!567867))

(assert (=> b!6535114 m!7317820))

(declare-fun m!7318538 () Bool)

(assert (=> bm!567867 m!7318538))

(declare-fun m!7318540 () Bool)

(assert (=> b!6535117 m!7318540))

(assert (=> b!6534314 d!2051067))

(declare-fun d!2051069 () Bool)

(assert (=> d!2051069 (= (flatMap!1912 z!1189 lambda!362525) (choose!48531 z!1189 lambda!362525))))

(declare-fun bs!1667010 () Bool)

(assert (= bs!1667010 d!2051069))

(declare-fun m!7318542 () Bool)

(assert (=> bs!1667010 m!7318542))

(assert (=> b!6534314 d!2051069))

(declare-fun b!6535118 () Bool)

(declare-fun e!3957506 () Bool)

(assert (=> b!6535118 (= e!3957506 (nullable!6400 (regOne!33326 (h!71845 (exprs!6291 (h!71846 zl!343))))))))

(declare-fun b!6535119 () Bool)

(declare-fun e!3957504 () (InoxSet Context!11582))

(declare-fun call!567874 () (InoxSet Context!11582))

(assert (=> b!6535119 (= e!3957504 call!567874)))

(declare-fun b!6535120 () Bool)

(declare-fun e!3957508 () (InoxSet Context!11582))

(declare-fun e!3957507 () (InoxSet Context!11582))

(assert (=> b!6535120 (= e!3957508 e!3957507)))

(declare-fun c!1199649 () Bool)

(assert (=> b!6535120 (= c!1199649 ((_ is Union!16407) (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun b!6535121 () Bool)

(assert (=> b!6535121 (= e!3957504 ((as const (Array Context!11582 Bool)) false))))

(declare-fun d!2051071 () Bool)

(declare-fun c!1199651 () Bool)

(assert (=> d!2051071 (= c!1199651 (and ((_ is ElementMatch!16407) (h!71845 (exprs!6291 (h!71846 zl!343)))) (= (c!1199422 (h!71845 (exprs!6291 (h!71846 zl!343)))) (h!71844 s!2326))))))

(assert (=> d!2051071 (= (derivationStepZipperDown!1655 (h!71845 (exprs!6291 (h!71846 zl!343))) lt!2397872 (h!71844 s!2326)) e!3957508)))

(declare-fun bm!567868 () Bool)

(declare-fun call!567878 () (InoxSet Context!11582))

(assert (=> bm!567868 (= call!567874 call!567878)))

(declare-fun call!567873 () List!65521)

(declare-fun c!1199648 () Bool)

(declare-fun bm!567869 () Bool)

(declare-fun c!1199647 () Bool)

(assert (=> bm!567869 (= call!567873 ($colon$colon!2252 (exprs!6291 lt!2397872) (ite (or c!1199648 c!1199647) (regTwo!33326 (h!71845 (exprs!6291 (h!71846 zl!343)))) (h!71845 (exprs!6291 (h!71846 zl!343))))))))

(declare-fun b!6535122 () Bool)

(assert (=> b!6535122 (= e!3957508 (store ((as const (Array Context!11582 Bool)) false) lt!2397872 true))))

(declare-fun call!567876 () (InoxSet Context!11582))

(declare-fun bm!567870 () Bool)

(assert (=> bm!567870 (= call!567876 (derivationStepZipperDown!1655 (ite c!1199649 (regOne!33327 (h!71845 (exprs!6291 (h!71846 zl!343)))) (regOne!33326 (h!71845 (exprs!6291 (h!71846 zl!343))))) (ite c!1199649 lt!2397872 (Context!11583 call!567873)) (h!71844 s!2326)))))

(declare-fun call!567875 () (InoxSet Context!11582))

(declare-fun bm!567871 () Bool)

(declare-fun call!567877 () List!65521)

(assert (=> bm!567871 (= call!567875 (derivationStepZipperDown!1655 (ite c!1199649 (regTwo!33327 (h!71845 (exprs!6291 (h!71846 zl!343)))) (ite c!1199648 (regTwo!33326 (h!71845 (exprs!6291 (h!71846 zl!343)))) (ite c!1199647 (regOne!33326 (h!71845 (exprs!6291 (h!71846 zl!343)))) (reg!16736 (h!71845 (exprs!6291 (h!71846 zl!343))))))) (ite (or c!1199649 c!1199648) lt!2397872 (Context!11583 call!567877)) (h!71844 s!2326)))))

(declare-fun b!6535123 () Bool)

(declare-fun c!1199650 () Bool)

(assert (=> b!6535123 (= c!1199650 ((_ is Star!16407) (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun e!3957505 () (InoxSet Context!11582))

(assert (=> b!6535123 (= e!3957505 e!3957504)))

(declare-fun b!6535124 () Bool)

(assert (=> b!6535124 (= c!1199648 e!3957506)))

(declare-fun res!2681290 () Bool)

(assert (=> b!6535124 (=> (not res!2681290) (not e!3957506))))

(assert (=> b!6535124 (= res!2681290 ((_ is Concat!25252) (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(declare-fun e!3957503 () (InoxSet Context!11582))

(assert (=> b!6535124 (= e!3957507 e!3957503)))

(declare-fun bm!567872 () Bool)

(assert (=> bm!567872 (= call!567878 call!567875)))

(declare-fun b!6535125 () Bool)

(assert (=> b!6535125 (= e!3957505 call!567874)))

(declare-fun b!6535126 () Bool)

(assert (=> b!6535126 (= e!3957507 ((_ map or) call!567876 call!567875))))

(declare-fun bm!567873 () Bool)

(assert (=> bm!567873 (= call!567877 call!567873)))

(declare-fun b!6535127 () Bool)

(assert (=> b!6535127 (= e!3957503 ((_ map or) call!567876 call!567878))))

(declare-fun b!6535128 () Bool)

(assert (=> b!6535128 (= e!3957503 e!3957505)))

(assert (=> b!6535128 (= c!1199647 ((_ is Concat!25252) (h!71845 (exprs!6291 (h!71846 zl!343)))))))

(assert (= (and d!2051071 c!1199651) b!6535122))

(assert (= (and d!2051071 (not c!1199651)) b!6535120))

(assert (= (and b!6535120 c!1199649) b!6535126))

(assert (= (and b!6535120 (not c!1199649)) b!6535124))

(assert (= (and b!6535124 res!2681290) b!6535118))

(assert (= (and b!6535124 c!1199648) b!6535127))

(assert (= (and b!6535124 (not c!1199648)) b!6535128))

(assert (= (and b!6535128 c!1199647) b!6535125))

(assert (= (and b!6535128 (not c!1199647)) b!6535123))

(assert (= (and b!6535123 c!1199650) b!6535119))

(assert (= (and b!6535123 (not c!1199650)) b!6535121))

(assert (= (or b!6535125 b!6535119) bm!567873))

(assert (= (or b!6535125 b!6535119) bm!567868))

(assert (= (or b!6535127 bm!567873) bm!567869))

(assert (= (or b!6535127 bm!567868) bm!567872))

(assert (= (or b!6535126 bm!567872) bm!567871))

(assert (= (or b!6535126 b!6535127) bm!567870))

(declare-fun m!7318544 () Bool)

(assert (=> bm!567870 m!7318544))

(declare-fun m!7318546 () Bool)

(assert (=> b!6535118 m!7318546))

(declare-fun m!7318548 () Bool)

(assert (=> bm!567871 m!7318548))

(declare-fun m!7318550 () Bool)

(assert (=> b!6535122 m!7318550))

(declare-fun m!7318552 () Bool)

(assert (=> bm!567869 m!7318552))

(assert (=> b!6534314 d!2051071))

(declare-fun d!2051073 () Bool)

(declare-fun e!3957511 () Bool)

(assert (=> d!2051073 e!3957511))

(declare-fun res!2681293 () Bool)

(assert (=> d!2051073 (=> (not res!2681293) (not e!3957511))))

(declare-fun lt!2398015 () List!65522)

(declare-fun noDuplicate!2217 (List!65522) Bool)

(assert (=> d!2051073 (= res!2681293 (noDuplicate!2217 lt!2398015))))

(declare-fun choose!48540 ((InoxSet Context!11582)) List!65522)

(assert (=> d!2051073 (= lt!2398015 (choose!48540 lt!2397875))))

(assert (=> d!2051073 (= (toList!10191 lt!2397875) lt!2398015)))

(declare-fun b!6535131 () Bool)

(declare-fun content!12518 (List!65522) (InoxSet Context!11582))

(assert (=> b!6535131 (= e!3957511 (= (content!12518 lt!2398015) lt!2397875))))

(assert (= (and d!2051073 res!2681293) b!6535131))

(declare-fun m!7318554 () Bool)

(assert (=> d!2051073 m!7318554))

(declare-fun m!7318556 () Bool)

(assert (=> d!2051073 m!7318556))

(declare-fun m!7318558 () Bool)

(assert (=> b!6535131 m!7318558))

(assert (=> b!6534335 d!2051073))

(declare-fun d!2051075 () Bool)

(declare-fun e!3957512 () Bool)

(assert (=> d!2051075 e!3957512))

(declare-fun res!2681294 () Bool)

(assert (=> d!2051075 (=> (not res!2681294) (not e!3957512))))

(declare-fun lt!2398016 () List!65522)

(assert (=> d!2051075 (= res!2681294 (noDuplicate!2217 lt!2398016))))

(assert (=> d!2051075 (= lt!2398016 (choose!48540 z!1189))))

(assert (=> d!2051075 (= (toList!10191 z!1189) lt!2398016)))

(declare-fun b!6535132 () Bool)

(assert (=> b!6535132 (= e!3957512 (= (content!12518 lt!2398016) z!1189))))

(assert (= (and d!2051075 res!2681294) b!6535132))

(declare-fun m!7318560 () Bool)

(assert (=> d!2051075 m!7318560))

(declare-fun m!7318562 () Bool)

(assert (=> d!2051075 m!7318562))

(declare-fun m!7318564 () Bool)

(assert (=> b!6535132 m!7318564))

(assert (=> b!6534311 d!2051075))

(declare-fun bs!1667011 () Bool)

(declare-fun d!2051077 () Bool)

(assert (= bs!1667011 (and d!2051077 b!6534315)))

(declare-fun lambda!362592 () Int)

(assert (=> bs!1667011 (= lambda!362592 lambda!362527)))

(declare-fun bs!1667012 () Bool)

(assert (= bs!1667012 (and d!2051077 d!2050899)))

(assert (=> bs!1667012 (= lambda!362592 lambda!362551)))

(declare-fun bs!1667013 () Bool)

(assert (= bs!1667013 (and d!2051077 d!2050909)))

(assert (=> bs!1667013 (= lambda!362592 lambda!362554)))

(declare-fun bs!1667014 () Bool)

(assert (= bs!1667014 (and d!2051077 d!2050919)))

(assert (=> bs!1667014 (= lambda!362592 lambda!362555)))

(declare-fun b!6535153 () Bool)

(declare-fun e!3957525 () Bool)

(declare-fun lt!2398019 () Regex!16407)

(declare-fun isUnion!1228 (Regex!16407) Bool)

(assert (=> b!6535153 (= e!3957525 (isUnion!1228 lt!2398019))))

(declare-fun b!6535154 () Bool)

(declare-fun e!3957528 () Bool)

(assert (=> b!6535154 (= e!3957528 (isEmpty!37614 (t!379161 (unfocusZipperList!1828 zl!343))))))

(declare-fun b!6535155 () Bool)

(declare-fun e!3957529 () Bool)

(assert (=> b!6535155 (= e!3957529 e!3957525)))

(declare-fun c!1199661 () Bool)

(assert (=> b!6535155 (= c!1199661 (isEmpty!37614 (tail!12358 (unfocusZipperList!1828 zl!343))))))

(declare-fun e!3957530 () Bool)

(assert (=> d!2051077 e!3957530))

(declare-fun res!2681299 () Bool)

(assert (=> d!2051077 (=> (not res!2681299) (not e!3957530))))

(assert (=> d!2051077 (= res!2681299 (validRegex!8143 lt!2398019))))

(declare-fun e!3957526 () Regex!16407)

(assert (=> d!2051077 (= lt!2398019 e!3957526)))

(declare-fun c!1199663 () Bool)

(assert (=> d!2051077 (= c!1199663 e!3957528)))

(declare-fun res!2681300 () Bool)

(assert (=> d!2051077 (=> (not res!2681300) (not e!3957528))))

(assert (=> d!2051077 (= res!2681300 ((_ is Cons!65397) (unfocusZipperList!1828 zl!343)))))

(assert (=> d!2051077 (forall!15583 (unfocusZipperList!1828 zl!343) lambda!362592)))

(assert (=> d!2051077 (= (generalisedUnion!2251 (unfocusZipperList!1828 zl!343)) lt!2398019)))

(declare-fun b!6535156 () Bool)

(assert (=> b!6535156 (= e!3957530 e!3957529)))

(declare-fun c!1199662 () Bool)

(assert (=> b!6535156 (= c!1199662 (isEmpty!37614 (unfocusZipperList!1828 zl!343)))))

(declare-fun b!6535157 () Bool)

(declare-fun e!3957527 () Regex!16407)

(assert (=> b!6535157 (= e!3957526 e!3957527)))

(declare-fun c!1199660 () Bool)

(assert (=> b!6535157 (= c!1199660 ((_ is Cons!65397) (unfocusZipperList!1828 zl!343)))))

(declare-fun b!6535158 () Bool)

(assert (=> b!6535158 (= e!3957525 (= lt!2398019 (head!13273 (unfocusZipperList!1828 zl!343))))))

(declare-fun b!6535159 () Bool)

(assert (=> b!6535159 (= e!3957527 (Union!16407 (h!71845 (unfocusZipperList!1828 zl!343)) (generalisedUnion!2251 (t!379161 (unfocusZipperList!1828 zl!343)))))))

(declare-fun b!6535160 () Bool)

(declare-fun isEmptyLang!1798 (Regex!16407) Bool)

(assert (=> b!6535160 (= e!3957529 (isEmptyLang!1798 lt!2398019))))

(declare-fun b!6535161 () Bool)

(assert (=> b!6535161 (= e!3957526 (h!71845 (unfocusZipperList!1828 zl!343)))))

(declare-fun b!6535162 () Bool)

(assert (=> b!6535162 (= e!3957527 EmptyLang!16407)))

(assert (= (and d!2051077 res!2681300) b!6535154))

(assert (= (and d!2051077 c!1199663) b!6535161))

(assert (= (and d!2051077 (not c!1199663)) b!6535157))

(assert (= (and b!6535157 c!1199660) b!6535159))

(assert (= (and b!6535157 (not c!1199660)) b!6535162))

(assert (= (and d!2051077 res!2681299) b!6535156))

(assert (= (and b!6535156 c!1199662) b!6535160))

(assert (= (and b!6535156 (not c!1199662)) b!6535155))

(assert (= (and b!6535155 c!1199661) b!6535158))

(assert (= (and b!6535155 (not c!1199661)) b!6535153))

(declare-fun m!7318566 () Bool)

(assert (=> b!6535154 m!7318566))

(assert (=> b!6535158 m!7317856))

(declare-fun m!7318568 () Bool)

(assert (=> b!6535158 m!7318568))

(declare-fun m!7318570 () Bool)

(assert (=> d!2051077 m!7318570))

(assert (=> d!2051077 m!7317856))

(declare-fun m!7318572 () Bool)

(assert (=> d!2051077 m!7318572))

(declare-fun m!7318574 () Bool)

(assert (=> b!6535153 m!7318574))

(assert (=> b!6535155 m!7317856))

(declare-fun m!7318576 () Bool)

(assert (=> b!6535155 m!7318576))

(assert (=> b!6535155 m!7318576))

(declare-fun m!7318578 () Bool)

(assert (=> b!6535155 m!7318578))

(declare-fun m!7318580 () Bool)

(assert (=> b!6535160 m!7318580))

(assert (=> b!6535156 m!7317856))

(declare-fun m!7318582 () Bool)

(assert (=> b!6535156 m!7318582))

(declare-fun m!7318584 () Bool)

(assert (=> b!6535159 m!7318584))

(assert (=> b!6534328 d!2051077))

(declare-fun bs!1667015 () Bool)

(declare-fun d!2051079 () Bool)

(assert (= bs!1667015 (and d!2051079 d!2050919)))

(declare-fun lambda!362595 () Int)

(assert (=> bs!1667015 (= lambda!362595 lambda!362555)))

(declare-fun bs!1667016 () Bool)

(assert (= bs!1667016 (and d!2051079 d!2051077)))

(assert (=> bs!1667016 (= lambda!362595 lambda!362592)))

(declare-fun bs!1667017 () Bool)

(assert (= bs!1667017 (and d!2051079 b!6534315)))

(assert (=> bs!1667017 (= lambda!362595 lambda!362527)))

(declare-fun bs!1667018 () Bool)

(assert (= bs!1667018 (and d!2051079 d!2050909)))

(assert (=> bs!1667018 (= lambda!362595 lambda!362554)))

(declare-fun bs!1667019 () Bool)

(assert (= bs!1667019 (and d!2051079 d!2050899)))

(assert (=> bs!1667019 (= lambda!362595 lambda!362551)))

(declare-fun lt!2398022 () List!65521)

(assert (=> d!2051079 (forall!15583 lt!2398022 lambda!362595)))

(declare-fun e!3957533 () List!65521)

(assert (=> d!2051079 (= lt!2398022 e!3957533)))

(declare-fun c!1199666 () Bool)

(assert (=> d!2051079 (= c!1199666 ((_ is Cons!65398) zl!343))))

(assert (=> d!2051079 (= (unfocusZipperList!1828 zl!343) lt!2398022)))

(declare-fun b!6535167 () Bool)

(assert (=> b!6535167 (= e!3957533 (Cons!65397 (generalisedConcat!2004 (exprs!6291 (h!71846 zl!343))) (unfocusZipperList!1828 (t!379162 zl!343))))))

(declare-fun b!6535168 () Bool)

(assert (=> b!6535168 (= e!3957533 Nil!65397)))

(assert (= (and d!2051079 c!1199666) b!6535167))

(assert (= (and d!2051079 (not c!1199666)) b!6535168))

(declare-fun m!7318586 () Bool)

(assert (=> d!2051079 m!7318586))

(assert (=> b!6535167 m!7317738))

(declare-fun m!7318588 () Bool)

(assert (=> b!6535167 m!7318588))

(assert (=> b!6534328 d!2051079))

(declare-fun d!2051081 () Bool)

(declare-fun c!1199667 () Bool)

(assert (=> d!2051081 (= c!1199667 (isEmpty!37616 (t!379160 s!2326)))))

(declare-fun e!3957534 () Bool)

(assert (=> d!2051081 (= (matchZipper!2419 lt!2397857 (t!379160 s!2326)) e!3957534)))

(declare-fun b!6535169 () Bool)

(assert (=> b!6535169 (= e!3957534 (nullableZipper!2156 lt!2397857))))

(declare-fun b!6535170 () Bool)

(assert (=> b!6535170 (= e!3957534 (matchZipper!2419 (derivationStepZipper!2373 lt!2397857 (head!13272 (t!379160 s!2326))) (tail!12357 (t!379160 s!2326))))))

(assert (= (and d!2051081 c!1199667) b!6535169))

(assert (= (and d!2051081 (not c!1199667)) b!6535170))

(assert (=> d!2051081 m!7318084))

(declare-fun m!7318590 () Bool)

(assert (=> b!6535169 m!7318590))

(assert (=> b!6535170 m!7318088))

(assert (=> b!6535170 m!7318088))

(declare-fun m!7318592 () Bool)

(assert (=> b!6535170 m!7318592))

(assert (=> b!6535170 m!7318092))

(assert (=> b!6535170 m!7318592))

(assert (=> b!6535170 m!7318092))

(declare-fun m!7318594 () Bool)

(assert (=> b!6535170 m!7318594))

(assert (=> b!6534307 d!2051081))

(declare-fun d!2051083 () Bool)

(declare-fun c!1199668 () Bool)

(assert (=> d!2051083 (= c!1199668 (isEmpty!37616 (t!379160 s!2326)))))

(declare-fun e!3957535 () Bool)

(assert (=> d!2051083 (= (matchZipper!2419 lt!2397835 (t!379160 s!2326)) e!3957535)))

(declare-fun b!6535171 () Bool)

(assert (=> b!6535171 (= e!3957535 (nullableZipper!2156 lt!2397835))))

(declare-fun b!6535172 () Bool)

(assert (=> b!6535172 (= e!3957535 (matchZipper!2419 (derivationStepZipper!2373 lt!2397835 (head!13272 (t!379160 s!2326))) (tail!12357 (t!379160 s!2326))))))

(assert (= (and d!2051083 c!1199668) b!6535171))

(assert (= (and d!2051083 (not c!1199668)) b!6535172))

(assert (=> d!2051083 m!7318084))

(declare-fun m!7318596 () Bool)

(assert (=> b!6535171 m!7318596))

(assert (=> b!6535172 m!7318088))

(assert (=> b!6535172 m!7318088))

(declare-fun m!7318598 () Bool)

(assert (=> b!6535172 m!7318598))

(assert (=> b!6535172 m!7318092))

(assert (=> b!6535172 m!7318598))

(assert (=> b!6535172 m!7318092))

(declare-fun m!7318600 () Bool)

(assert (=> b!6535172 m!7318600))

(assert (=> b!6534329 d!2051083))

(declare-fun d!2051085 () Bool)

(declare-fun c!1199669 () Bool)

(assert (=> d!2051085 (= c!1199669 (isEmpty!37616 s!2326))))

(declare-fun e!3957536 () Bool)

(assert (=> d!2051085 (= (matchZipper!2419 lt!2397833 s!2326) e!3957536)))

(declare-fun b!6535173 () Bool)

(assert (=> b!6535173 (= e!3957536 (nullableZipper!2156 lt!2397833))))

(declare-fun b!6535174 () Bool)

(assert (=> b!6535174 (= e!3957536 (matchZipper!2419 (derivationStepZipper!2373 lt!2397833 (head!13272 s!2326)) (tail!12357 s!2326)))))

(assert (= (and d!2051085 c!1199669) b!6535173))

(assert (= (and d!2051085 (not c!1199669)) b!6535174))

(assert (=> d!2051085 m!7318196))

(declare-fun m!7318602 () Bool)

(assert (=> b!6535173 m!7318602))

(assert (=> b!6535174 m!7318194))

(assert (=> b!6535174 m!7318194))

(declare-fun m!7318604 () Bool)

(assert (=> b!6535174 m!7318604))

(assert (=> b!6535174 m!7318188))

(assert (=> b!6535174 m!7318604))

(assert (=> b!6535174 m!7318188))

(declare-fun m!7318606 () Bool)

(assert (=> b!6535174 m!7318606))

(assert (=> b!6534329 d!2051085))

(declare-fun bs!1667020 () Bool)

(declare-fun b!6535185 () Bool)

(assert (= bs!1667020 (and b!6535185 b!6534303)))

(declare-fun lambda!362596 () Int)

(assert (=> bs!1667020 (not (= lambda!362596 lambda!362523))))

(assert (=> bs!1667020 (not (= lambda!362596 lambda!362524))))

(declare-fun bs!1667021 () Bool)

(assert (= bs!1667021 (and b!6535185 b!6534909)))

(assert (=> bs!1667021 (= (and (= (reg!16736 r!7292) (reg!16736 lt!2397851)) (= r!7292 lt!2397851)) (= lambda!362596 lambda!362574))))

(declare-fun bs!1667022 () Bool)

(assert (= bs!1667022 (and b!6535185 b!6534903)))

(assert (=> bs!1667022 (not (= lambda!362596 lambda!362575))))

(assert (=> b!6535185 true))

(assert (=> b!6535185 true))

(declare-fun bs!1667023 () Bool)

(declare-fun b!6535179 () Bool)

(assert (= bs!1667023 (and b!6535179 b!6535185)))

(declare-fun lambda!362597 () Int)

(assert (=> bs!1667023 (not (= lambda!362597 lambda!362596))))

(declare-fun bs!1667024 () Bool)

(assert (= bs!1667024 (and b!6535179 b!6534303)))

(assert (=> bs!1667024 (= lambda!362597 lambda!362524)))

(declare-fun bs!1667025 () Bool)

(assert (= bs!1667025 (and b!6535179 b!6534909)))

(assert (=> bs!1667025 (not (= lambda!362597 lambda!362574))))

(declare-fun bs!1667026 () Bool)

(assert (= bs!1667026 (and b!6535179 b!6534903)))

(assert (=> bs!1667026 (= (and (= (regOne!33326 r!7292) (regOne!33326 lt!2397851)) (= (regTwo!33326 r!7292) (regTwo!33326 lt!2397851))) (= lambda!362597 lambda!362575))))

(assert (=> bs!1667024 (not (= lambda!362597 lambda!362523))))

(assert (=> b!6535179 true))

(assert (=> b!6535179 true))

(declare-fun b!6535175 () Bool)

(declare-fun c!1199670 () Bool)

(assert (=> b!6535175 (= c!1199670 ((_ is Union!16407) r!7292))))

(declare-fun e!3957540 () Bool)

(declare-fun e!3957542 () Bool)

(assert (=> b!6535175 (= e!3957540 e!3957542)))

(declare-fun b!6535176 () Bool)

(declare-fun e!3957539 () Bool)

(declare-fun e!3957541 () Bool)

(assert (=> b!6535176 (= e!3957539 e!3957541)))

(declare-fun res!2681301 () Bool)

(assert (=> b!6535176 (= res!2681301 (not ((_ is EmptyLang!16407) r!7292)))))

(assert (=> b!6535176 (=> (not res!2681301) (not e!3957541))))

(declare-fun b!6535177 () Bool)

(declare-fun c!1199671 () Bool)

(assert (=> b!6535177 (= c!1199671 ((_ is ElementMatch!16407) r!7292))))

(assert (=> b!6535177 (= e!3957541 e!3957540)))

(declare-fun c!1199673 () Bool)

(declare-fun bm!567874 () Bool)

(declare-fun call!567879 () Bool)

(assert (=> bm!567874 (= call!567879 (Exists!3477 (ite c!1199673 lambda!362596 lambda!362597)))))

(declare-fun b!6535178 () Bool)

(declare-fun e!3957537 () Bool)

(assert (=> b!6535178 (= e!3957537 (matchRSpec!3508 (regTwo!33327 r!7292) s!2326))))

(declare-fun b!6535180 () Bool)

(declare-fun res!2681302 () Bool)

(declare-fun e!3957538 () Bool)

(assert (=> b!6535180 (=> res!2681302 e!3957538)))

(declare-fun call!567880 () Bool)

(assert (=> b!6535180 (= res!2681302 call!567880)))

(declare-fun e!3957543 () Bool)

(assert (=> b!6535180 (= e!3957543 e!3957538)))

(declare-fun b!6535181 () Bool)

(assert (=> b!6535181 (= e!3957542 e!3957543)))

(assert (=> b!6535181 (= c!1199673 ((_ is Star!16407) r!7292))))

(declare-fun bm!567875 () Bool)

(assert (=> bm!567875 (= call!567880 (isEmpty!37616 s!2326))))

(assert (=> b!6535179 (= e!3957543 call!567879)))

(declare-fun d!2051087 () Bool)

(declare-fun c!1199672 () Bool)

(assert (=> d!2051087 (= c!1199672 ((_ is EmptyExpr!16407) r!7292))))

(assert (=> d!2051087 (= (matchRSpec!3508 r!7292 s!2326) e!3957539)))

(declare-fun b!6535182 () Bool)

(assert (=> b!6535182 (= e!3957542 e!3957537)))

(declare-fun res!2681303 () Bool)

(assert (=> b!6535182 (= res!2681303 (matchRSpec!3508 (regOne!33327 r!7292) s!2326))))

(assert (=> b!6535182 (=> res!2681303 e!3957537)))

(declare-fun b!6535183 () Bool)

(assert (=> b!6535183 (= e!3957540 (= s!2326 (Cons!65396 (c!1199422 r!7292) Nil!65396)))))

(declare-fun b!6535184 () Bool)

(assert (=> b!6535184 (= e!3957539 call!567880)))

(assert (=> b!6535185 (= e!3957538 call!567879)))

(assert (= (and d!2051087 c!1199672) b!6535184))

(assert (= (and d!2051087 (not c!1199672)) b!6535176))

(assert (= (and b!6535176 res!2681301) b!6535177))

(assert (= (and b!6535177 c!1199671) b!6535183))

(assert (= (and b!6535177 (not c!1199671)) b!6535175))

(assert (= (and b!6535175 c!1199670) b!6535182))

(assert (= (and b!6535175 (not c!1199670)) b!6535181))

(assert (= (and b!6535182 (not res!2681303)) b!6535178))

(assert (= (and b!6535181 c!1199673) b!6535180))

(assert (= (and b!6535181 (not c!1199673)) b!6535179))

(assert (= (and b!6535180 (not res!2681302)) b!6535185))

(assert (= (or b!6535185 b!6535179) bm!567874))

(assert (= (or b!6535184 b!6535180) bm!567875))

(declare-fun m!7318608 () Bool)

(assert (=> bm!567874 m!7318608))

(declare-fun m!7318610 () Bool)

(assert (=> b!6535178 m!7318610))

(assert (=> bm!567875 m!7318196))

(declare-fun m!7318612 () Bool)

(assert (=> b!6535182 m!7318612))

(assert (=> b!6534325 d!2051087))

(declare-fun b!6535186 () Bool)

(declare-fun res!2681304 () Bool)

(declare-fun e!3957544 () Bool)

(assert (=> b!6535186 (=> (not res!2681304) (not e!3957544))))

(declare-fun call!567881 () Bool)

(assert (=> b!6535186 (= res!2681304 (not call!567881))))

(declare-fun b!6535187 () Bool)

(assert (=> b!6535187 (= e!3957544 (= (head!13272 s!2326) (c!1199422 r!7292)))))

(declare-fun b!6535188 () Bool)

(declare-fun e!3957546 () Bool)

(declare-fun lt!2398023 () Bool)

(assert (=> b!6535188 (= e!3957546 (= lt!2398023 call!567881))))

(declare-fun b!6535189 () Bool)

(declare-fun e!3957550 () Bool)

(assert (=> b!6535189 (= e!3957550 (not (= (head!13272 s!2326) (c!1199422 r!7292))))))

(declare-fun b!6535190 () Bool)

(declare-fun e!3957547 () Bool)

(declare-fun e!3957548 () Bool)

(assert (=> b!6535190 (= e!3957547 e!3957548)))

(declare-fun res!2681308 () Bool)

(assert (=> b!6535190 (=> (not res!2681308) (not e!3957548))))

(assert (=> b!6535190 (= res!2681308 (not lt!2398023))))

(declare-fun bm!567876 () Bool)

(assert (=> bm!567876 (= call!567881 (isEmpty!37616 s!2326))))

(declare-fun d!2051089 () Bool)

(assert (=> d!2051089 e!3957546))

(declare-fun c!1199676 () Bool)

(assert (=> d!2051089 (= c!1199676 ((_ is EmptyExpr!16407) r!7292))))

(declare-fun e!3957549 () Bool)

(assert (=> d!2051089 (= lt!2398023 e!3957549)))

(declare-fun c!1199674 () Bool)

(assert (=> d!2051089 (= c!1199674 (isEmpty!37616 s!2326))))

(assert (=> d!2051089 (validRegex!8143 r!7292)))

(assert (=> d!2051089 (= (matchR!8590 r!7292 s!2326) lt!2398023)))

(declare-fun b!6535191 () Bool)

(declare-fun res!2681311 () Bool)

(assert (=> b!6535191 (=> res!2681311 e!3957547)))

(assert (=> b!6535191 (= res!2681311 (not ((_ is ElementMatch!16407) r!7292)))))

(declare-fun e!3957545 () Bool)

(assert (=> b!6535191 (= e!3957545 e!3957547)))

(declare-fun b!6535192 () Bool)

(declare-fun res!2681307 () Bool)

(assert (=> b!6535192 (=> (not res!2681307) (not e!3957544))))

(assert (=> b!6535192 (= res!2681307 (isEmpty!37616 (tail!12357 s!2326)))))

(declare-fun b!6535193 () Bool)

(assert (=> b!6535193 (= e!3957545 (not lt!2398023))))

(declare-fun b!6535194 () Bool)

(declare-fun res!2681305 () Bool)

(assert (=> b!6535194 (=> res!2681305 e!3957547)))

(assert (=> b!6535194 (= res!2681305 e!3957544)))

(declare-fun res!2681306 () Bool)

(assert (=> b!6535194 (=> (not res!2681306) (not e!3957544))))

(assert (=> b!6535194 (= res!2681306 lt!2398023)))

(declare-fun b!6535195 () Bool)

(assert (=> b!6535195 (= e!3957546 e!3957545)))

(declare-fun c!1199675 () Bool)

(assert (=> b!6535195 (= c!1199675 ((_ is EmptyLang!16407) r!7292))))

(declare-fun b!6535196 () Bool)

(declare-fun res!2681309 () Bool)

(assert (=> b!6535196 (=> res!2681309 e!3957550)))

(assert (=> b!6535196 (= res!2681309 (not (isEmpty!37616 (tail!12357 s!2326))))))

(declare-fun b!6535197 () Bool)

(assert (=> b!6535197 (= e!3957548 e!3957550)))

(declare-fun res!2681310 () Bool)

(assert (=> b!6535197 (=> res!2681310 e!3957550)))

(assert (=> b!6535197 (= res!2681310 call!567881)))

(declare-fun b!6535198 () Bool)

(assert (=> b!6535198 (= e!3957549 (nullable!6400 r!7292))))

(declare-fun b!6535199 () Bool)

(assert (=> b!6535199 (= e!3957549 (matchR!8590 (derivativeStep!5095 r!7292 (head!13272 s!2326)) (tail!12357 s!2326)))))

(assert (= (and d!2051089 c!1199674) b!6535198))

(assert (= (and d!2051089 (not c!1199674)) b!6535199))

(assert (= (and d!2051089 c!1199676) b!6535188))

(assert (= (and d!2051089 (not c!1199676)) b!6535195))

(assert (= (and b!6535195 c!1199675) b!6535193))

(assert (= (and b!6535195 (not c!1199675)) b!6535191))

(assert (= (and b!6535191 (not res!2681311)) b!6535194))

(assert (= (and b!6535194 res!2681306) b!6535186))

(assert (= (and b!6535186 res!2681304) b!6535192))

(assert (= (and b!6535192 res!2681307) b!6535187))

(assert (= (and b!6535194 (not res!2681305)) b!6535190))

(assert (= (and b!6535190 res!2681308) b!6535197))

(assert (= (and b!6535197 (not res!2681310)) b!6535196))

(assert (= (and b!6535196 (not res!2681309)) b!6535189))

(assert (= (or b!6535188 b!6535186 b!6535197) bm!567876))

(assert (=> b!6535196 m!7318188))

(assert (=> b!6535196 m!7318188))

(assert (=> b!6535196 m!7318190))

(declare-fun m!7318614 () Bool)

(assert (=> b!6535198 m!7318614))

(assert (=> b!6535187 m!7318194))

(assert (=> d!2051089 m!7318196))

(assert (=> d!2051089 m!7317852))

(assert (=> b!6535192 m!7318188))

(assert (=> b!6535192 m!7318188))

(assert (=> b!6535192 m!7318190))

(assert (=> b!6535199 m!7318194))

(assert (=> b!6535199 m!7318194))

(declare-fun m!7318616 () Bool)

(assert (=> b!6535199 m!7318616))

(assert (=> b!6535199 m!7318188))

(assert (=> b!6535199 m!7318616))

(assert (=> b!6535199 m!7318188))

(declare-fun m!7318618 () Bool)

(assert (=> b!6535199 m!7318618))

(assert (=> b!6535189 m!7318194))

(assert (=> bm!567876 m!7318196))

(assert (=> b!6534325 d!2051089))

(declare-fun d!2051091 () Bool)

(assert (=> d!2051091 (= (matchR!8590 r!7292 s!2326) (matchRSpec!3508 r!7292 s!2326))))

(declare-fun lt!2398024 () Unit!158963)

(assert (=> d!2051091 (= lt!2398024 (choose!48530 r!7292 s!2326))))

(assert (=> d!2051091 (validRegex!8143 r!7292)))

(assert (=> d!2051091 (= (mainMatchTheorem!3508 r!7292 s!2326) lt!2398024)))

(declare-fun bs!1667027 () Bool)

(assert (= bs!1667027 d!2051091))

(assert (=> bs!1667027 m!7317742))

(assert (=> bs!1667027 m!7317740))

(declare-fun m!7318620 () Bool)

(assert (=> bs!1667027 m!7318620))

(assert (=> bs!1667027 m!7317852))

(assert (=> b!6534325 d!2051091))

(declare-fun d!2051093 () Bool)

(declare-fun lt!2398025 () Regex!16407)

(assert (=> d!2051093 (validRegex!8143 lt!2398025)))

(assert (=> d!2051093 (= lt!2398025 (generalisedUnion!2251 (unfocusZipperList!1828 (Cons!65398 lt!2397864 Nil!65398))))))

(assert (=> d!2051093 (= (unfocusZipper!2149 (Cons!65398 lt!2397864 Nil!65398)) lt!2398025)))

(declare-fun bs!1667028 () Bool)

(assert (= bs!1667028 d!2051093))

(declare-fun m!7318622 () Bool)

(assert (=> bs!1667028 m!7318622))

(declare-fun m!7318624 () Bool)

(assert (=> bs!1667028 m!7318624))

(assert (=> bs!1667028 m!7318624))

(declare-fun m!7318626 () Bool)

(assert (=> bs!1667028 m!7318626))

(assert (=> b!6534326 d!2051093))

(assert (=> b!6534306 d!2050987))

(declare-fun d!2051095 () Bool)

(declare-fun c!1199677 () Bool)

(assert (=> d!2051095 (= c!1199677 (isEmpty!37616 lt!2397869))))

(declare-fun e!3957551 () Bool)

(assert (=> d!2051095 (= (matchZipper!2419 (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 lt!2397846 lt!2397832)) true) lt!2397869) e!3957551)))

(declare-fun b!6535200 () Bool)

(assert (=> b!6535200 (= e!3957551 (nullableZipper!2156 (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 lt!2397846 lt!2397832)) true)))))

(declare-fun b!6535201 () Bool)

(assert (=> b!6535201 (= e!3957551 (matchZipper!2419 (derivationStepZipper!2373 (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 lt!2397846 lt!2397832)) true) (head!13272 lt!2397869)) (tail!12357 lt!2397869)))))

(assert (= (and d!2051095 c!1199677) b!6535200))

(assert (= (and d!2051095 (not c!1199677)) b!6535201))

(declare-fun m!7318628 () Bool)

(assert (=> d!2051095 m!7318628))

(assert (=> b!6535200 m!7317720))

(declare-fun m!7318630 () Bool)

(assert (=> b!6535200 m!7318630))

(declare-fun m!7318632 () Bool)

(assert (=> b!6535201 m!7318632))

(assert (=> b!6535201 m!7317720))

(assert (=> b!6535201 m!7318632))

(declare-fun m!7318634 () Bool)

(assert (=> b!6535201 m!7318634))

(declare-fun m!7318636 () Bool)

(assert (=> b!6535201 m!7318636))

(assert (=> b!6535201 m!7318634))

(assert (=> b!6535201 m!7318636))

(declare-fun m!7318638 () Bool)

(assert (=> b!6535201 m!7318638))

(assert (=> b!6534306 d!2051095))

(declare-fun d!2051097 () Bool)

(assert (=> d!2051097 (= (matchR!8590 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836)) (matchZipper!2419 lt!2397844 (_1!36689 lt!2397836)))))

(declare-fun lt!2398028 () Unit!158963)

(declare-fun choose!48541 ((InoxSet Context!11582) List!65522 Regex!16407 List!65520) Unit!158963)

(assert (=> d!2051097 (= lt!2398028 (choose!48541 lt!2397844 lt!2397839 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836)))))

(assert (=> d!2051097 (validRegex!8143 (reg!16736 (regOne!33326 r!7292)))))

(assert (=> d!2051097 (= (theoremZipperRegexEquiv!843 lt!2397844 lt!2397839 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836)) lt!2398028)))

(declare-fun bs!1667029 () Bool)

(assert (= bs!1667029 d!2051097))

(assert (=> bs!1667029 m!7317832))

(assert (=> bs!1667029 m!7317790))

(declare-fun m!7318640 () Bool)

(assert (=> bs!1667029 m!7318640))

(declare-fun m!7318642 () Bool)

(assert (=> bs!1667029 m!7318642))

(assert (=> b!6534306 d!2051097))

(declare-fun b!6535202 () Bool)

(declare-fun res!2681316 () Bool)

(declare-fun e!3957553 () Bool)

(assert (=> b!6535202 (=> res!2681316 e!3957553)))

(assert (=> b!6535202 (= res!2681316 (not ((_ is Concat!25252) lt!2397850)))))

(declare-fun e!3957557 () Bool)

(assert (=> b!6535202 (= e!3957557 e!3957553)))

(declare-fun b!6535203 () Bool)

(declare-fun e!3957555 () Bool)

(declare-fun e!3957558 () Bool)

(assert (=> b!6535203 (= e!3957555 e!3957558)))

(declare-fun c!1199679 () Bool)

(assert (=> b!6535203 (= c!1199679 ((_ is Star!16407) lt!2397850))))

(declare-fun d!2051099 () Bool)

(declare-fun res!2681314 () Bool)

(assert (=> d!2051099 (=> res!2681314 e!3957555)))

(assert (=> d!2051099 (= res!2681314 ((_ is ElementMatch!16407) lt!2397850))))

(assert (=> d!2051099 (= (validRegex!8143 lt!2397850) e!3957555)))

(declare-fun bm!567877 () Bool)

(declare-fun call!567883 () Bool)

(declare-fun call!567884 () Bool)

(assert (=> bm!567877 (= call!567883 call!567884)))

(declare-fun b!6535204 () Bool)

(declare-fun e!3957554 () Bool)

(assert (=> b!6535204 (= e!3957558 e!3957554)))

(declare-fun res!2681312 () Bool)

(assert (=> b!6535204 (= res!2681312 (not (nullable!6400 (reg!16736 lt!2397850))))))

(assert (=> b!6535204 (=> (not res!2681312) (not e!3957554))))

(declare-fun b!6535205 () Bool)

(assert (=> b!6535205 (= e!3957558 e!3957557)))

(declare-fun c!1199678 () Bool)

(assert (=> b!6535205 (= c!1199678 ((_ is Union!16407) lt!2397850))))

(declare-fun bm!567878 () Bool)

(assert (=> bm!567878 (= call!567884 (validRegex!8143 (ite c!1199679 (reg!16736 lt!2397850) (ite c!1199678 (regOne!33327 lt!2397850) (regOne!33326 lt!2397850)))))))

(declare-fun b!6535206 () Bool)

(declare-fun res!2681313 () Bool)

(declare-fun e!3957552 () Bool)

(assert (=> b!6535206 (=> (not res!2681313) (not e!3957552))))

(assert (=> b!6535206 (= res!2681313 call!567883)))

(assert (=> b!6535206 (= e!3957557 e!3957552)))

(declare-fun b!6535207 () Bool)

(assert (=> b!6535207 (= e!3957554 call!567884)))

(declare-fun b!6535208 () Bool)

(declare-fun e!3957556 () Bool)

(assert (=> b!6535208 (= e!3957553 e!3957556)))

(declare-fun res!2681315 () Bool)

(assert (=> b!6535208 (=> (not res!2681315) (not e!3957556))))

(assert (=> b!6535208 (= res!2681315 call!567883)))

(declare-fun b!6535209 () Bool)

(declare-fun call!567882 () Bool)

(assert (=> b!6535209 (= e!3957556 call!567882)))

(declare-fun bm!567879 () Bool)

(assert (=> bm!567879 (= call!567882 (validRegex!8143 (ite c!1199678 (regTwo!33327 lt!2397850) (regTwo!33326 lt!2397850))))))

(declare-fun b!6535210 () Bool)

(assert (=> b!6535210 (= e!3957552 call!567882)))

(assert (= (and d!2051099 (not res!2681314)) b!6535203))

(assert (= (and b!6535203 c!1199679) b!6535204))

(assert (= (and b!6535203 (not c!1199679)) b!6535205))

(assert (= (and b!6535204 res!2681312) b!6535207))

(assert (= (and b!6535205 c!1199678) b!6535206))

(assert (= (and b!6535205 (not c!1199678)) b!6535202))

(assert (= (and b!6535206 res!2681313) b!6535210))

(assert (= (and b!6535202 (not res!2681316)) b!6535208))

(assert (= (and b!6535208 res!2681315) b!6535209))

(assert (= (or b!6535210 b!6535209) bm!567879))

(assert (= (or b!6535206 b!6535208) bm!567877))

(assert (= (or b!6535207 bm!567877) bm!567878))

(declare-fun m!7318644 () Bool)

(assert (=> b!6535204 m!7318644))

(declare-fun m!7318646 () Bool)

(assert (=> bm!567878 m!7318646))

(declare-fun m!7318648 () Bool)

(assert (=> bm!567879 m!7318648))

(assert (=> b!6534306 d!2051099))

(assert (=> b!6534306 d!2051015))

(declare-fun b!6535211 () Bool)

(declare-fun res!2681317 () Bool)

(declare-fun e!3957559 () Bool)

(assert (=> b!6535211 (=> (not res!2681317) (not e!3957559))))

(declare-fun call!567885 () Bool)

(assert (=> b!6535211 (= res!2681317 (not call!567885))))

(declare-fun b!6535212 () Bool)

(assert (=> b!6535212 (= e!3957559 (= (head!13272 (_1!36689 lt!2397836)) (c!1199422 (reg!16736 (regOne!33326 r!7292)))))))

(declare-fun b!6535213 () Bool)

(declare-fun e!3957561 () Bool)

(declare-fun lt!2398029 () Bool)

(assert (=> b!6535213 (= e!3957561 (= lt!2398029 call!567885))))

(declare-fun b!6535214 () Bool)

(declare-fun e!3957565 () Bool)

(assert (=> b!6535214 (= e!3957565 (not (= (head!13272 (_1!36689 lt!2397836)) (c!1199422 (reg!16736 (regOne!33326 r!7292))))))))

(declare-fun b!6535215 () Bool)

(declare-fun e!3957562 () Bool)

(declare-fun e!3957563 () Bool)

(assert (=> b!6535215 (= e!3957562 e!3957563)))

(declare-fun res!2681321 () Bool)

(assert (=> b!6535215 (=> (not res!2681321) (not e!3957563))))

(assert (=> b!6535215 (= res!2681321 (not lt!2398029))))

(declare-fun bm!567880 () Bool)

(assert (=> bm!567880 (= call!567885 (isEmpty!37616 (_1!36689 lt!2397836)))))

(declare-fun d!2051101 () Bool)

(assert (=> d!2051101 e!3957561))

(declare-fun c!1199682 () Bool)

(assert (=> d!2051101 (= c!1199682 ((_ is EmptyExpr!16407) (reg!16736 (regOne!33326 r!7292))))))

(declare-fun e!3957564 () Bool)

(assert (=> d!2051101 (= lt!2398029 e!3957564)))

(declare-fun c!1199680 () Bool)

(assert (=> d!2051101 (= c!1199680 (isEmpty!37616 (_1!36689 lt!2397836)))))

(assert (=> d!2051101 (validRegex!8143 (reg!16736 (regOne!33326 r!7292)))))

(assert (=> d!2051101 (= (matchR!8590 (reg!16736 (regOne!33326 r!7292)) (_1!36689 lt!2397836)) lt!2398029)))

(declare-fun b!6535216 () Bool)

(declare-fun res!2681324 () Bool)

(assert (=> b!6535216 (=> res!2681324 e!3957562)))

(assert (=> b!6535216 (= res!2681324 (not ((_ is ElementMatch!16407) (reg!16736 (regOne!33326 r!7292)))))))

(declare-fun e!3957560 () Bool)

(assert (=> b!6535216 (= e!3957560 e!3957562)))

(declare-fun b!6535217 () Bool)

(declare-fun res!2681320 () Bool)

(assert (=> b!6535217 (=> (not res!2681320) (not e!3957559))))

(assert (=> b!6535217 (= res!2681320 (isEmpty!37616 (tail!12357 (_1!36689 lt!2397836))))))

(declare-fun b!6535218 () Bool)

(assert (=> b!6535218 (= e!3957560 (not lt!2398029))))

(declare-fun b!6535219 () Bool)

(declare-fun res!2681318 () Bool)

(assert (=> b!6535219 (=> res!2681318 e!3957562)))

(assert (=> b!6535219 (= res!2681318 e!3957559)))

(declare-fun res!2681319 () Bool)

(assert (=> b!6535219 (=> (not res!2681319) (not e!3957559))))

(assert (=> b!6535219 (= res!2681319 lt!2398029)))

(declare-fun b!6535220 () Bool)

(assert (=> b!6535220 (= e!3957561 e!3957560)))

(declare-fun c!1199681 () Bool)

(assert (=> b!6535220 (= c!1199681 ((_ is EmptyLang!16407) (reg!16736 (regOne!33326 r!7292))))))

(declare-fun b!6535221 () Bool)

(declare-fun res!2681322 () Bool)

(assert (=> b!6535221 (=> res!2681322 e!3957565)))

(assert (=> b!6535221 (= res!2681322 (not (isEmpty!37616 (tail!12357 (_1!36689 lt!2397836)))))))

(declare-fun b!6535222 () Bool)

(assert (=> b!6535222 (= e!3957563 e!3957565)))

(declare-fun res!2681323 () Bool)

(assert (=> b!6535222 (=> res!2681323 e!3957565)))

(assert (=> b!6535222 (= res!2681323 call!567885)))

(declare-fun b!6535223 () Bool)

(assert (=> b!6535223 (= e!3957564 (nullable!6400 (reg!16736 (regOne!33326 r!7292))))))

(declare-fun b!6535224 () Bool)

(assert (=> b!6535224 (= e!3957564 (matchR!8590 (derivativeStep!5095 (reg!16736 (regOne!33326 r!7292)) (head!13272 (_1!36689 lt!2397836))) (tail!12357 (_1!36689 lt!2397836))))))

(assert (= (and d!2051101 c!1199680) b!6535223))

(assert (= (and d!2051101 (not c!1199680)) b!6535224))

(assert (= (and d!2051101 c!1199682) b!6535213))

(assert (= (and d!2051101 (not c!1199682)) b!6535220))

(assert (= (and b!6535220 c!1199681) b!6535218))

(assert (= (and b!6535220 (not c!1199681)) b!6535216))

(assert (= (and b!6535216 (not res!2681324)) b!6535219))

(assert (= (and b!6535219 res!2681319) b!6535211))

(assert (= (and b!6535211 res!2681317) b!6535217))

(assert (= (and b!6535217 res!2681320) b!6535212))

(assert (= (and b!6535219 (not res!2681318)) b!6535215))

(assert (= (and b!6535215 res!2681321) b!6535222))

(assert (= (and b!6535222 (not res!2681323)) b!6535221))

(assert (= (and b!6535221 (not res!2681322)) b!6535214))

(assert (= (or b!6535213 b!6535211 b!6535222) bm!567880))

(declare-fun m!7318650 () Bool)

(assert (=> b!6535221 m!7318650))

(assert (=> b!6535221 m!7318650))

(declare-fun m!7318652 () Bool)

(assert (=> b!6535221 m!7318652))

(declare-fun m!7318654 () Bool)

(assert (=> b!6535223 m!7318654))

(declare-fun m!7318656 () Bool)

(assert (=> b!6535212 m!7318656))

(declare-fun m!7318658 () Bool)

(assert (=> d!2051101 m!7318658))

(assert (=> d!2051101 m!7318642))

(assert (=> b!6535217 m!7318650))

(assert (=> b!6535217 m!7318650))

(assert (=> b!6535217 m!7318652))

(assert (=> b!6535224 m!7318656))

(assert (=> b!6535224 m!7318656))

(declare-fun m!7318660 () Bool)

(assert (=> b!6535224 m!7318660))

(assert (=> b!6535224 m!7318650))

(assert (=> b!6535224 m!7318660))

(assert (=> b!6535224 m!7318650))

(declare-fun m!7318662 () Bool)

(assert (=> b!6535224 m!7318662))

(assert (=> b!6535214 m!7318656))

(assert (=> bm!567880 m!7318658))

(assert (=> b!6534306 d!2051101))

(declare-fun bs!1667030 () Bool)

(declare-fun d!2051103 () Bool)

(assert (= bs!1667030 (and d!2051103 d!2050919)))

(declare-fun lambda!362600 () Int)

(assert (=> bs!1667030 (= lambda!362600 lambda!362555)))

(declare-fun bs!1667031 () Bool)

(assert (= bs!1667031 (and d!2051103 d!2051077)))

(assert (=> bs!1667031 (= lambda!362600 lambda!362592)))

(declare-fun bs!1667032 () Bool)

(assert (= bs!1667032 (and d!2051103 b!6534315)))

(assert (=> bs!1667032 (= lambda!362600 lambda!362527)))

(declare-fun bs!1667033 () Bool)

(assert (= bs!1667033 (and d!2051103 d!2050909)))

(assert (=> bs!1667033 (= lambda!362600 lambda!362554)))

(declare-fun bs!1667034 () Bool)

(assert (= bs!1667034 (and d!2051103 d!2051079)))

(assert (=> bs!1667034 (= lambda!362600 lambda!362595)))

(declare-fun bs!1667035 () Bool)

(assert (= bs!1667035 (and d!2051103 d!2050899)))

(assert (=> bs!1667035 (= lambda!362600 lambda!362551)))

(assert (=> d!2051103 (matchZipper!2419 (store ((as const (Array Context!11582 Bool)) false) (Context!11583 (++!14516 (exprs!6291 lt!2397867) (exprs!6291 lt!2397838))) true) (++!14517 (_1!36689 lt!2397836) (_2!36689 lt!2397836)))))

(declare-fun lt!2398035 () Unit!158963)

(assert (=> d!2051103 (= lt!2398035 (lemmaConcatPreservesForall!380 (exprs!6291 lt!2397867) (exprs!6291 lt!2397838) lambda!362600))))

(declare-fun lt!2398034 () Unit!158963)

(declare-fun choose!48542 (Context!11582 Context!11582 List!65520 List!65520) Unit!158963)

(assert (=> d!2051103 (= lt!2398034 (choose!48542 lt!2397867 lt!2397838 (_1!36689 lt!2397836) (_2!36689 lt!2397836)))))

(assert (=> d!2051103 (matchZipper!2419 (store ((as const (Array Context!11582 Bool)) false) lt!2397867 true) (_1!36689 lt!2397836))))

(assert (=> d!2051103 (= (lemmaConcatenateContextMatchesConcatOfStrings!188 lt!2397867 lt!2397838 (_1!36689 lt!2397836) (_2!36689 lt!2397836)) lt!2398034)))

(declare-fun bs!1667036 () Bool)

(assert (= bs!1667036 d!2051103))

(declare-fun m!7318664 () Bool)

(assert (=> bs!1667036 m!7318664))

(assert (=> bs!1667036 m!7317758))

(declare-fun m!7318666 () Bool)

(assert (=> bs!1667036 m!7318666))

(declare-fun m!7318668 () Bool)

(assert (=> bs!1667036 m!7318668))

(assert (=> bs!1667036 m!7318668))

(assert (=> bs!1667036 m!7317804))

(declare-fun m!7318670 () Bool)

(assert (=> bs!1667036 m!7318670))

(assert (=> bs!1667036 m!7317758))

(declare-fun m!7318672 () Bool)

(assert (=> bs!1667036 m!7318672))

(assert (=> bs!1667036 m!7317804))

(declare-fun m!7318674 () Bool)

(assert (=> bs!1667036 m!7318674))

(assert (=> b!6534306 d!2051103))

(declare-fun d!2051105 () Bool)

(declare-fun c!1199683 () Bool)

(assert (=> d!2051105 (= c!1199683 (isEmpty!37616 (_1!36689 lt!2397836)))))

(declare-fun e!3957566 () Bool)

(assert (=> d!2051105 (= (matchZipper!2419 lt!2397844 (_1!36689 lt!2397836)) e!3957566)))

(declare-fun b!6535225 () Bool)

(assert (=> b!6535225 (= e!3957566 (nullableZipper!2156 lt!2397844))))

(declare-fun b!6535226 () Bool)

(assert (=> b!6535226 (= e!3957566 (matchZipper!2419 (derivationStepZipper!2373 lt!2397844 (head!13272 (_1!36689 lt!2397836))) (tail!12357 (_1!36689 lt!2397836))))))

(assert (= (and d!2051105 c!1199683) b!6535225))

(assert (= (and d!2051105 (not c!1199683)) b!6535226))

(assert (=> d!2051105 m!7318658))

(declare-fun m!7318676 () Bool)

(assert (=> b!6535225 m!7318676))

(assert (=> b!6535226 m!7318656))

(assert (=> b!6535226 m!7318656))

(declare-fun m!7318678 () Bool)

(assert (=> b!6535226 m!7318678))

(assert (=> b!6535226 m!7318650))

(assert (=> b!6535226 m!7318678))

(assert (=> b!6535226 m!7318650))

(declare-fun m!7318680 () Bool)

(assert (=> b!6535226 m!7318680))

(assert (=> b!6534327 d!2051105))

(declare-fun d!2051107 () Bool)

(assert (=> d!2051107 (= (isEmpty!37613 (t!379162 zl!343)) ((_ is Nil!65398) (t!379162 zl!343)))))

(assert (=> b!6534302 d!2051107))

(declare-fun d!2051109 () Bool)

(declare-fun e!3957569 () Bool)

(assert (=> d!2051109 (= (matchZipper!2419 ((_ map or) lt!2397857 lt!2397861) (t!379160 s!2326)) e!3957569)))

(declare-fun res!2681327 () Bool)

(assert (=> d!2051109 (=> res!2681327 e!3957569)))

(assert (=> d!2051109 (= res!2681327 (matchZipper!2419 lt!2397857 (t!379160 s!2326)))))

(declare-fun lt!2398038 () Unit!158963)

(declare-fun choose!48543 ((InoxSet Context!11582) (InoxSet Context!11582) List!65520) Unit!158963)

(assert (=> d!2051109 (= lt!2398038 (choose!48543 lt!2397857 lt!2397861 (t!379160 s!2326)))))

(assert (=> d!2051109 (= (lemmaZipperConcatMatchesSameAsBothZippers!1238 lt!2397857 lt!2397861 (t!379160 s!2326)) lt!2398038)))

(declare-fun b!6535229 () Bool)

(assert (=> b!6535229 (= e!3957569 (matchZipper!2419 lt!2397861 (t!379160 s!2326)))))

(assert (= (and d!2051109 (not res!2681327)) b!6535229))

(assert (=> d!2051109 m!7317736))

(assert (=> d!2051109 m!7317734))

(declare-fun m!7318682 () Bool)

(assert (=> d!2051109 m!7318682))

(assert (=> b!6535229 m!7317784))

(assert (=> b!6534324 d!2051109))

(assert (=> b!6534324 d!2051081))

(declare-fun d!2051111 () Bool)

(declare-fun c!1199684 () Bool)

(assert (=> d!2051111 (= c!1199684 (isEmpty!37616 (t!379160 s!2326)))))

(declare-fun e!3957570 () Bool)

(assert (=> d!2051111 (= (matchZipper!2419 ((_ map or) lt!2397857 lt!2397861) (t!379160 s!2326)) e!3957570)))

(declare-fun b!6535230 () Bool)

(assert (=> b!6535230 (= e!3957570 (nullableZipper!2156 ((_ map or) lt!2397857 lt!2397861)))))

(declare-fun b!6535231 () Bool)

(assert (=> b!6535231 (= e!3957570 (matchZipper!2419 (derivationStepZipper!2373 ((_ map or) lt!2397857 lt!2397861) (head!13272 (t!379160 s!2326))) (tail!12357 (t!379160 s!2326))))))

(assert (= (and d!2051111 c!1199684) b!6535230))

(assert (= (and d!2051111 (not c!1199684)) b!6535231))

(assert (=> d!2051111 m!7318084))

(declare-fun m!7318684 () Bool)

(assert (=> b!6535230 m!7318684))

(assert (=> b!6535231 m!7318088))

(assert (=> b!6535231 m!7318088))

(declare-fun m!7318686 () Bool)

(assert (=> b!6535231 m!7318686))

(assert (=> b!6535231 m!7318092))

(assert (=> b!6535231 m!7318686))

(assert (=> b!6535231 m!7318092))

(declare-fun m!7318688 () Bool)

(assert (=> b!6535231 m!7318688))

(assert (=> b!6534324 d!2051111))

(declare-fun b!6535250 () Bool)

(declare-fun res!2681341 () Bool)

(declare-fun e!3957581 () Bool)

(assert (=> b!6535250 (=> (not res!2681341) (not e!3957581))))

(declare-fun lt!2398046 () Option!16298)

(assert (=> b!6535250 (= res!2681341 (matchR!8590 (regOne!33326 r!7292) (_1!36689 (get!22692 lt!2398046))))))

(declare-fun b!6535251 () Bool)

(declare-fun e!3957583 () Option!16298)

(assert (=> b!6535251 (= e!3957583 None!16297)))

(declare-fun b!6535253 () Bool)

(declare-fun e!3957585 () Option!16298)

(assert (=> b!6535253 (= e!3957585 (Some!16297 (tuple2!66773 Nil!65396 s!2326)))))

(declare-fun b!6535254 () Bool)

(declare-fun lt!2398045 () Unit!158963)

(declare-fun lt!2398047 () Unit!158963)

(assert (=> b!6535254 (= lt!2398045 lt!2398047)))

(assert (=> b!6535254 (= (++!14517 (++!14517 Nil!65396 (Cons!65396 (h!71844 s!2326) Nil!65396)) (t!379160 s!2326)) s!2326)))

(assert (=> b!6535254 (= lt!2398047 (lemmaMoveElementToOtherListKeepsConcatEq!2554 Nil!65396 (h!71844 s!2326) (t!379160 s!2326) s!2326))))

(assert (=> b!6535254 (= e!3957583 (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) (++!14517 Nil!65396 (Cons!65396 (h!71844 s!2326) Nil!65396)) (t!379160 s!2326) s!2326))))

(declare-fun b!6535255 () Bool)

(declare-fun e!3957584 () Bool)

(assert (=> b!6535255 (= e!3957584 (matchR!8590 (regTwo!33326 r!7292) s!2326))))

(declare-fun b!6535256 () Bool)

(assert (=> b!6535256 (= e!3957581 (= (++!14517 (_1!36689 (get!22692 lt!2398046)) (_2!36689 (get!22692 lt!2398046))) s!2326))))

(declare-fun b!6535257 () Bool)

(declare-fun res!2681338 () Bool)

(assert (=> b!6535257 (=> (not res!2681338) (not e!3957581))))

(assert (=> b!6535257 (= res!2681338 (matchR!8590 (regTwo!33326 r!7292) (_2!36689 (get!22692 lt!2398046))))))

(declare-fun b!6535258 () Bool)

(declare-fun e!3957582 () Bool)

(assert (=> b!6535258 (= e!3957582 (not (isDefined!13001 lt!2398046)))))

(declare-fun b!6535252 () Bool)

(assert (=> b!6535252 (= e!3957585 e!3957583)))

(declare-fun c!1199690 () Bool)

(assert (=> b!6535252 (= c!1199690 ((_ is Nil!65396) s!2326))))

(declare-fun d!2051113 () Bool)

(assert (=> d!2051113 e!3957582))

(declare-fun res!2681340 () Bool)

(assert (=> d!2051113 (=> res!2681340 e!3957582)))

(assert (=> d!2051113 (= res!2681340 e!3957581)))

(declare-fun res!2681339 () Bool)

(assert (=> d!2051113 (=> (not res!2681339) (not e!3957581))))

(assert (=> d!2051113 (= res!2681339 (isDefined!13001 lt!2398046))))

(assert (=> d!2051113 (= lt!2398046 e!3957585)))

(declare-fun c!1199689 () Bool)

(assert (=> d!2051113 (= c!1199689 e!3957584)))

(declare-fun res!2681342 () Bool)

(assert (=> d!2051113 (=> (not res!2681342) (not e!3957584))))

(assert (=> d!2051113 (= res!2681342 (matchR!8590 (regOne!33326 r!7292) Nil!65396))))

(assert (=> d!2051113 (validRegex!8143 (regOne!33326 r!7292))))

(assert (=> d!2051113 (= (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) Nil!65396 s!2326 s!2326) lt!2398046)))

(assert (= (and d!2051113 res!2681342) b!6535255))

(assert (= (and d!2051113 c!1199689) b!6535253))

(assert (= (and d!2051113 (not c!1199689)) b!6535252))

(assert (= (and b!6535252 c!1199690) b!6535251))

(assert (= (and b!6535252 (not c!1199690)) b!6535254))

(assert (= (and d!2051113 res!2681339) b!6535250))

(assert (= (and b!6535250 res!2681341) b!6535257))

(assert (= (and b!6535257 res!2681338) b!6535256))

(assert (= (and d!2051113 (not res!2681340)) b!6535258))

(declare-fun m!7318690 () Bool)

(assert (=> b!6535256 m!7318690))

(declare-fun m!7318692 () Bool)

(assert (=> b!6535256 m!7318692))

(declare-fun m!7318694 () Bool)

(assert (=> b!6535258 m!7318694))

(declare-fun m!7318696 () Bool)

(assert (=> b!6535255 m!7318696))

(assert (=> b!6535254 m!7318462))

(assert (=> b!6535254 m!7318462))

(assert (=> b!6535254 m!7318464))

(assert (=> b!6535254 m!7318466))

(assert (=> b!6535254 m!7318462))

(declare-fun m!7318698 () Bool)

(assert (=> b!6535254 m!7318698))

(assert (=> d!2051113 m!7318694))

(declare-fun m!7318700 () Bool)

(assert (=> d!2051113 m!7318700))

(declare-fun m!7318702 () Bool)

(assert (=> d!2051113 m!7318702))

(assert (=> b!6535250 m!7318690))

(declare-fun m!7318704 () Bool)

(assert (=> b!6535250 m!7318704))

(assert (=> b!6535257 m!7318690))

(declare-fun m!7318706 () Bool)

(assert (=> b!6535257 m!7318706))

(assert (=> b!6534303 d!2051113))

(declare-fun d!2051115 () Bool)

(declare-fun choose!48544 (Int) Bool)

(assert (=> d!2051115 (= (Exists!3477 lambda!362523) (choose!48544 lambda!362523))))

(declare-fun bs!1667037 () Bool)

(assert (= bs!1667037 d!2051115))

(declare-fun m!7318708 () Bool)

(assert (=> bs!1667037 m!7318708))

(assert (=> b!6534303 d!2051115))

(declare-fun d!2051117 () Bool)

(assert (=> d!2051117 (= (Exists!3477 lambda!362524) (choose!48544 lambda!362524))))

(declare-fun bs!1667038 () Bool)

(assert (= bs!1667038 d!2051117))

(declare-fun m!7318710 () Bool)

(assert (=> bs!1667038 m!7318710))

(assert (=> b!6534303 d!2051117))

(declare-fun bs!1667039 () Bool)

(declare-fun d!2051119 () Bool)

(assert (= bs!1667039 (and d!2051119 b!6535185)))

(declare-fun lambda!362603 () Int)

(assert (=> bs!1667039 (not (= lambda!362603 lambda!362596))))

(declare-fun bs!1667040 () Bool)

(assert (= bs!1667040 (and d!2051119 b!6534303)))

(assert (=> bs!1667040 (not (= lambda!362603 lambda!362524))))

(declare-fun bs!1667041 () Bool)

(assert (= bs!1667041 (and d!2051119 b!6535179)))

(assert (=> bs!1667041 (not (= lambda!362603 lambda!362597))))

(declare-fun bs!1667042 () Bool)

(assert (= bs!1667042 (and d!2051119 b!6534909)))

(assert (=> bs!1667042 (not (= lambda!362603 lambda!362574))))

(declare-fun bs!1667043 () Bool)

(assert (= bs!1667043 (and d!2051119 b!6534903)))

(assert (=> bs!1667043 (not (= lambda!362603 lambda!362575))))

(assert (=> bs!1667040 (= lambda!362603 lambda!362523)))

(assert (=> d!2051119 true))

(assert (=> d!2051119 true))

(assert (=> d!2051119 true))

(assert (=> d!2051119 (= (isDefined!13001 (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) Nil!65396 s!2326 s!2326)) (Exists!3477 lambda!362603))))

(declare-fun lt!2398050 () Unit!158963)

(declare-fun choose!48545 (Regex!16407 Regex!16407 List!65520) Unit!158963)

(assert (=> d!2051119 (= lt!2398050 (choose!48545 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326))))

(assert (=> d!2051119 (validRegex!8143 (regOne!33326 r!7292))))

(assert (=> d!2051119 (= (lemmaFindConcatSeparationEquivalentToExists!2476 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326) lt!2398050)))

(declare-fun bs!1667044 () Bool)

(assert (= bs!1667044 d!2051119))

(assert (=> bs!1667044 m!7317748))

(declare-fun m!7318712 () Bool)

(assert (=> bs!1667044 m!7318712))

(assert (=> bs!1667044 m!7318702))

(assert (=> bs!1667044 m!7317748))

(assert (=> bs!1667044 m!7317750))

(declare-fun m!7318714 () Bool)

(assert (=> bs!1667044 m!7318714))

(assert (=> b!6534303 d!2051119))

(declare-fun bs!1667045 () Bool)

(declare-fun d!2051121 () Bool)

(assert (= bs!1667045 (and d!2051121 b!6535185)))

(declare-fun lambda!362608 () Int)

(assert (=> bs!1667045 (not (= lambda!362608 lambda!362596))))

(declare-fun bs!1667046 () Bool)

(assert (= bs!1667046 (and d!2051121 b!6534303)))

(assert (=> bs!1667046 (not (= lambda!362608 lambda!362524))))

(declare-fun bs!1667047 () Bool)

(assert (= bs!1667047 (and d!2051121 b!6535179)))

(assert (=> bs!1667047 (not (= lambda!362608 lambda!362597))))

(declare-fun bs!1667048 () Bool)

(assert (= bs!1667048 (and d!2051121 d!2051119)))

(assert (=> bs!1667048 (= lambda!362608 lambda!362603)))

(declare-fun bs!1667049 () Bool)

(assert (= bs!1667049 (and d!2051121 b!6534909)))

(assert (=> bs!1667049 (not (= lambda!362608 lambda!362574))))

(declare-fun bs!1667050 () Bool)

(assert (= bs!1667050 (and d!2051121 b!6534903)))

(assert (=> bs!1667050 (not (= lambda!362608 lambda!362575))))

(assert (=> bs!1667046 (= lambda!362608 lambda!362523)))

(assert (=> d!2051121 true))

(assert (=> d!2051121 true))

(assert (=> d!2051121 true))

(declare-fun bs!1667051 () Bool)

(assert (= bs!1667051 d!2051121))

(declare-fun lambda!362609 () Int)

(assert (=> bs!1667051 (not (= lambda!362609 lambda!362608))))

(assert (=> bs!1667045 (not (= lambda!362609 lambda!362596))))

(assert (=> bs!1667046 (= lambda!362609 lambda!362524)))

(assert (=> bs!1667047 (= lambda!362609 lambda!362597)))

(assert (=> bs!1667048 (not (= lambda!362609 lambda!362603))))

(assert (=> bs!1667049 (not (= lambda!362609 lambda!362574))))

(assert (=> bs!1667050 (= (and (= (regOne!33326 r!7292) (regOne!33326 lt!2397851)) (= (regTwo!33326 r!7292) (regTwo!33326 lt!2397851))) (= lambda!362609 lambda!362575))))

(assert (=> bs!1667046 (not (= lambda!362609 lambda!362523))))

(assert (=> d!2051121 true))

(assert (=> d!2051121 true))

(assert (=> d!2051121 true))

(assert (=> d!2051121 (= (Exists!3477 lambda!362608) (Exists!3477 lambda!362609))))

(declare-fun lt!2398053 () Unit!158963)

(declare-fun choose!48546 (Regex!16407 Regex!16407 List!65520) Unit!158963)

(assert (=> d!2051121 (= lt!2398053 (choose!48546 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326))))

(assert (=> d!2051121 (validRegex!8143 (regOne!33326 r!7292))))

(assert (=> d!2051121 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2014 (regOne!33326 r!7292) (regTwo!33326 r!7292) s!2326) lt!2398053)))

(declare-fun m!7318716 () Bool)

(assert (=> bs!1667051 m!7318716))

(declare-fun m!7318718 () Bool)

(assert (=> bs!1667051 m!7318718))

(declare-fun m!7318720 () Bool)

(assert (=> bs!1667051 m!7318720))

(assert (=> bs!1667051 m!7318702))

(assert (=> b!6534303 d!2051121))

(declare-fun d!2051123 () Bool)

(assert (=> d!2051123 (= (isDefined!13001 (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) Nil!65396 s!2326 s!2326)) (not (isEmpty!37618 (findConcatSeparation!2712 (regOne!33326 r!7292) (regTwo!33326 r!7292) Nil!65396 s!2326 s!2326))))))

(declare-fun bs!1667052 () Bool)

(assert (= bs!1667052 d!2051123))

(assert (=> bs!1667052 m!7317748))

(declare-fun m!7318722 () Bool)

(assert (=> bs!1667052 m!7318722))

(assert (=> b!6534303 d!2051123))

(declare-fun condSetEmpty!44580 () Bool)

(assert (=> setNonEmpty!44574 (= condSetEmpty!44580 (= setRest!44574 ((as const (Array Context!11582 Bool)) false)))))

(declare-fun setRes!44580 () Bool)

(assert (=> setNonEmpty!44574 (= tp!1808219 setRes!44580)))

(declare-fun setIsEmpty!44580 () Bool)

(assert (=> setIsEmpty!44580 setRes!44580))

(declare-fun tp!1808291 () Bool)

(declare-fun setNonEmpty!44580 () Bool)

(declare-fun e!3957594 () Bool)

(declare-fun setElem!44580 () Context!11582)

(assert (=> setNonEmpty!44580 (= setRes!44580 (and tp!1808291 (inv!84264 setElem!44580) e!3957594))))

(declare-fun setRest!44580 () (InoxSet Context!11582))

(assert (=> setNonEmpty!44580 (= setRest!44574 ((_ map or) (store ((as const (Array Context!11582 Bool)) false) setElem!44580 true) setRest!44580))))

(declare-fun b!6535275 () Bool)

(declare-fun tp!1808290 () Bool)

(assert (=> b!6535275 (= e!3957594 tp!1808290)))

(assert (= (and setNonEmpty!44574 condSetEmpty!44580) setIsEmpty!44580))

(assert (= (and setNonEmpty!44574 (not condSetEmpty!44580)) setNonEmpty!44580))

(assert (= setNonEmpty!44580 b!6535275))

(declare-fun m!7318724 () Bool)

(assert (=> setNonEmpty!44580 m!7318724))

(declare-fun b!6535288 () Bool)

(declare-fun e!3957597 () Bool)

(declare-fun tp!1808303 () Bool)

(assert (=> b!6535288 (= e!3957597 tp!1808303)))

(declare-fun b!6535287 () Bool)

(declare-fun tp!1808302 () Bool)

(declare-fun tp!1808304 () Bool)

(assert (=> b!6535287 (= e!3957597 (and tp!1808302 tp!1808304))))

(declare-fun b!6535286 () Bool)

(assert (=> b!6535286 (= e!3957597 tp_is_empty!42067)))

(declare-fun b!6535289 () Bool)

(declare-fun tp!1808305 () Bool)

(declare-fun tp!1808306 () Bool)

(assert (=> b!6535289 (= e!3957597 (and tp!1808305 tp!1808306))))

(assert (=> b!6534331 (= tp!1808218 e!3957597)))

(assert (= (and b!6534331 ((_ is ElementMatch!16407) (reg!16736 r!7292))) b!6535286))

(assert (= (and b!6534331 ((_ is Concat!25252) (reg!16736 r!7292))) b!6535287))

(assert (= (and b!6534331 ((_ is Star!16407) (reg!16736 r!7292))) b!6535288))

(assert (= (and b!6534331 ((_ is Union!16407) (reg!16736 r!7292))) b!6535289))

(declare-fun b!6535294 () Bool)

(declare-fun e!3957600 () Bool)

(declare-fun tp!1808311 () Bool)

(declare-fun tp!1808312 () Bool)

(assert (=> b!6535294 (= e!3957600 (and tp!1808311 tp!1808312))))

(assert (=> b!6534322 (= tp!1808222 e!3957600)))

(assert (= (and b!6534322 ((_ is Cons!65397) (exprs!6291 (h!71846 zl!343)))) b!6535294))

(declare-fun b!6535297 () Bool)

(declare-fun e!3957601 () Bool)

(declare-fun tp!1808314 () Bool)

(assert (=> b!6535297 (= e!3957601 tp!1808314)))

(declare-fun b!6535296 () Bool)

(declare-fun tp!1808313 () Bool)

(declare-fun tp!1808315 () Bool)

(assert (=> b!6535296 (= e!3957601 (and tp!1808313 tp!1808315))))

(declare-fun b!6535295 () Bool)

(assert (=> b!6535295 (= e!3957601 tp_is_empty!42067)))

(declare-fun b!6535298 () Bool)

(declare-fun tp!1808316 () Bool)

(declare-fun tp!1808317 () Bool)

(assert (=> b!6535298 (= e!3957601 (and tp!1808316 tp!1808317))))

(assert (=> b!6534301 (= tp!1808226 e!3957601)))

(assert (= (and b!6534301 ((_ is ElementMatch!16407) (regOne!33326 r!7292))) b!6535295))

(assert (= (and b!6534301 ((_ is Concat!25252) (regOne!33326 r!7292))) b!6535296))

(assert (= (and b!6534301 ((_ is Star!16407) (regOne!33326 r!7292))) b!6535297))

(assert (= (and b!6534301 ((_ is Union!16407) (regOne!33326 r!7292))) b!6535298))

(declare-fun b!6535301 () Bool)

(declare-fun e!3957602 () Bool)

(declare-fun tp!1808319 () Bool)

(assert (=> b!6535301 (= e!3957602 tp!1808319)))

(declare-fun b!6535300 () Bool)

(declare-fun tp!1808318 () Bool)

(declare-fun tp!1808320 () Bool)

(assert (=> b!6535300 (= e!3957602 (and tp!1808318 tp!1808320))))

(declare-fun b!6535299 () Bool)

(assert (=> b!6535299 (= e!3957602 tp_is_empty!42067)))

(declare-fun b!6535302 () Bool)

(declare-fun tp!1808321 () Bool)

(declare-fun tp!1808322 () Bool)

(assert (=> b!6535302 (= e!3957602 (and tp!1808321 tp!1808322))))

(assert (=> b!6534301 (= tp!1808225 e!3957602)))

(assert (= (and b!6534301 ((_ is ElementMatch!16407) (regTwo!33326 r!7292))) b!6535299))

(assert (= (and b!6534301 ((_ is Concat!25252) (regTwo!33326 r!7292))) b!6535300))

(assert (= (and b!6534301 ((_ is Star!16407) (regTwo!33326 r!7292))) b!6535301))

(assert (= (and b!6534301 ((_ is Union!16407) (regTwo!33326 r!7292))) b!6535302))

(declare-fun b!6535303 () Bool)

(declare-fun e!3957603 () Bool)

(declare-fun tp!1808323 () Bool)

(declare-fun tp!1808324 () Bool)

(assert (=> b!6535303 (= e!3957603 (and tp!1808323 tp!1808324))))

(assert (=> b!6534323 (= tp!1808223 e!3957603)))

(assert (= (and b!6534323 ((_ is Cons!65397) (exprs!6291 setElem!44574))) b!6535303))

(declare-fun b!6535306 () Bool)

(declare-fun e!3957604 () Bool)

(declare-fun tp!1808326 () Bool)

(assert (=> b!6535306 (= e!3957604 tp!1808326)))

(declare-fun b!6535305 () Bool)

(declare-fun tp!1808325 () Bool)

(declare-fun tp!1808327 () Bool)

(assert (=> b!6535305 (= e!3957604 (and tp!1808325 tp!1808327))))

(declare-fun b!6535304 () Bool)

(assert (=> b!6535304 (= e!3957604 tp_is_empty!42067)))

(declare-fun b!6535307 () Bool)

(declare-fun tp!1808328 () Bool)

(declare-fun tp!1808329 () Bool)

(assert (=> b!6535307 (= e!3957604 (and tp!1808328 tp!1808329))))

(assert (=> b!6534339 (= tp!1808220 e!3957604)))

(assert (= (and b!6534339 ((_ is ElementMatch!16407) (regOne!33327 r!7292))) b!6535304))

(assert (= (and b!6534339 ((_ is Concat!25252) (regOne!33327 r!7292))) b!6535305))

(assert (= (and b!6534339 ((_ is Star!16407) (regOne!33327 r!7292))) b!6535306))

(assert (= (and b!6534339 ((_ is Union!16407) (regOne!33327 r!7292))) b!6535307))

(declare-fun b!6535310 () Bool)

(declare-fun e!3957605 () Bool)

(declare-fun tp!1808331 () Bool)

(assert (=> b!6535310 (= e!3957605 tp!1808331)))

(declare-fun b!6535309 () Bool)

(declare-fun tp!1808330 () Bool)

(declare-fun tp!1808332 () Bool)

(assert (=> b!6535309 (= e!3957605 (and tp!1808330 tp!1808332))))

(declare-fun b!6535308 () Bool)

(assert (=> b!6535308 (= e!3957605 tp_is_empty!42067)))

(declare-fun b!6535311 () Bool)

(declare-fun tp!1808333 () Bool)

(declare-fun tp!1808334 () Bool)

(assert (=> b!6535311 (= e!3957605 (and tp!1808333 tp!1808334))))

(assert (=> b!6534339 (= tp!1808224 e!3957605)))

(assert (= (and b!6534339 ((_ is ElementMatch!16407) (regTwo!33327 r!7292))) b!6535308))

(assert (= (and b!6534339 ((_ is Concat!25252) (regTwo!33327 r!7292))) b!6535309))

(assert (= (and b!6534339 ((_ is Star!16407) (regTwo!33327 r!7292))) b!6535310))

(assert (= (and b!6534339 ((_ is Union!16407) (regTwo!33327 r!7292))) b!6535311))

(declare-fun b!6535319 () Bool)

(declare-fun e!3957611 () Bool)

(declare-fun tp!1808339 () Bool)

(assert (=> b!6535319 (= e!3957611 tp!1808339)))

(declare-fun b!6535318 () Bool)

(declare-fun tp!1808340 () Bool)

(declare-fun e!3957610 () Bool)

(assert (=> b!6535318 (= e!3957610 (and (inv!84264 (h!71846 (t!379162 zl!343))) e!3957611 tp!1808340))))

(assert (=> b!6534340 (= tp!1808221 e!3957610)))

(assert (= b!6535318 b!6535319))

(assert (= (and b!6534340 ((_ is Cons!65398) (t!379162 zl!343))) b!6535318))

(declare-fun m!7318726 () Bool)

(assert (=> b!6535318 m!7318726))

(declare-fun b!6535324 () Bool)

(declare-fun e!3957614 () Bool)

(declare-fun tp!1808343 () Bool)

(assert (=> b!6535324 (= e!3957614 (and tp_is_empty!42067 tp!1808343))))

(assert (=> b!6534330 (= tp!1808227 e!3957614)))

(assert (= (and b!6534330 ((_ is Cons!65396) (t!379160 s!2326))) b!6535324))

(declare-fun b_lambda!247399 () Bool)

(assert (= b_lambda!247397 (or b!6534314 b_lambda!247399)))

(declare-fun bs!1667053 () Bool)

(declare-fun d!2051125 () Bool)

(assert (= bs!1667053 (and d!2051125 b!6534314)))

(assert (=> bs!1667053 (= (dynLambda!25991 lambda!362525 (h!71846 zl!343)) (derivationStepZipperUp!1581 (h!71846 zl!343) (h!71844 s!2326)))))

(assert (=> bs!1667053 m!7317814))

(assert (=> d!2051059 d!2051125))

(declare-fun b_lambda!247401 () Bool)

(assert (= b_lambda!247381 (or b!6534315 b_lambda!247401)))

(declare-fun bs!1667054 () Bool)

(declare-fun d!2051127 () Bool)

(assert (= bs!1667054 (and d!2051127 b!6534315)))

(declare-fun lt!2398054 () Unit!158963)

(assert (=> bs!1667054 (= lt!2398054 (lemmaConcatPreservesForall!380 (exprs!6291 lt!2397867) lt!2397832 lambda!362527))))

(assert (=> bs!1667054 (= (dynLambda!25992 lambda!362526 lt!2397867) (Context!11583 (++!14516 (exprs!6291 lt!2397867) lt!2397832)))))

(declare-fun m!7318728 () Bool)

(assert (=> bs!1667054 m!7318728))

(declare-fun m!7318730 () Bool)

(assert (=> bs!1667054 m!7318730))

(assert (=> d!2050997 d!2051127))

(declare-fun b_lambda!247403 () Bool)

(assert (= b_lambda!247393 (or b!6534314 b_lambda!247403)))

(declare-fun bs!1667055 () Bool)

(declare-fun d!2051129 () Bool)

(assert (= bs!1667055 (and d!2051129 b!6534314)))

(assert (=> bs!1667055 (= (dynLambda!25991 lambda!362525 lt!2397867) (derivationStepZipperUp!1581 lt!2397867 (h!71844 s!2326)))))

(assert (=> bs!1667055 m!7317762))

(assert (=> d!2051045 d!2051129))

(declare-fun b_lambda!247405 () Bool)

(assert (= b_lambda!247377 (or b!6534314 b_lambda!247405)))

(declare-fun bs!1667056 () Bool)

(declare-fun d!2051131 () Bool)

(assert (= bs!1667056 (and d!2051131 b!6534314)))

(assert (=> bs!1667056 (= (dynLambda!25991 lambda!362525 lt!2397864) (derivationStepZipperUp!1581 lt!2397864 (h!71844 s!2326)))))

(assert (=> bs!1667056 m!7317842))

(assert (=> d!2050977 d!2051131))

(declare-fun b_lambda!247407 () Bool)

(assert (= b_lambda!247395 (or b!6534314 b_lambda!247407)))

(declare-fun bs!1667057 () Bool)

(declare-fun d!2051133 () Bool)

(assert (= bs!1667057 (and d!2051133 b!6534314)))

(assert (=> bs!1667057 (= (dynLambda!25991 lambda!362525 lt!2397838) (derivationStepZipperUp!1581 lt!2397838 (h!71844 s!2326)))))

(assert (=> bs!1667057 m!7317760))

(assert (=> d!2051049 d!2051133))

(check-sat (not d!2050987) (not d!2050927) (not b!6535174) (not bm!567845) (not b!6535229) (not b!6535324) (not bm!567832) (not b!6535117) (not b!6535275) (not d!2051053) (not b!6535311) (not b_lambda!247403) (not bm!567865) (not b!6534945) (not b!6535178) (not b!6535104) (not b!6534812) (not d!2051111) (not d!2051081) (not b!6535225) (not b!6535156) (not b!6534939) (not d!2051123) tp_is_empty!42067 (not d!2050977) (not b!6535221) (not b_lambda!247407) (not b!6534652) (not bm!567820) (not b!6535303) (not b!6535192) (not b!6535091) (not b!6535258) (not b!6535309) (not b!6534703) (not d!2051073) (not b!6535231) (not d!2050909) (not d!2051089) (not b!6535306) (not d!2051091) (not b!6535090) (not b!6535214) (not b!6535254) (not bm!567876) (not bm!567866) (not b!6535102) (not b!6535118) (not b!6535196) (not b!6534902) (not b!6535170) (not b!6535298) (not d!2051121) (not b_lambda!247399) (not b!6535288) (not b!6535154) (not d!2050907) (not b!6535287) (not d!2050963) (not bm!567867) (not bm!567844) (not b!6535201) (not b!6534700) (not b!6534616) (not b!6534906) (not bm!567838) (not bm!567863) (not b!6535171) (not b!6535256) (not d!2051041) (not d!2050919) (not b!6534651) (not b!6535080) (not d!2051113) (not bm!567878) (not b!6535047) (not bm!567879) (not d!2050997) (not d!2051075) (not d!2051103) (not b!6535094) (not b!6534697) (not bm!567870) (not b!6535073) (not d!2051059) (not bm!567871) (not d!2050979) (not b!6535172) (not d!2051101) (not b!6535155) (not d!2051115) (not b!6535159) (not b!6534815) (not d!2051069) (not d!2051049) (not d!2051079) (not d!2050899) (not b!6534701) (not b!6535302) (not b!6535310) (not bm!567822) (not b!6534819) (not bs!1667057) (not b!6535318) (not d!2051033) (not bm!567850) (not bm!567880) (not b!6535199) (not b_lambda!247405) (not b!6535182) (not d!2051095) (not b!6535204) (not b!6535230) (not b!6535158) (not b!6535107) (not b!6535173) (not b!6535076) (not d!2051109) (not bm!567875) (not d!2051017) (not b!6535072) (not b!6535169) (not d!2051083) (not b!6535048) (not bm!567869) (not d!2051093) (not bm!567821) (not b!6534696) (not b!6534650) (not bs!1667053) (not b!6535223) (not d!2050897) (not bm!567833) (not bs!1667054) (not d!2051105) (not d!2051097) (not bm!567874) (not d!2050983) (not b!6535305) (not b!6535074) (not b!6535224) (not b!6535217) (not b!6535078) (not b!6535198) (not d!2051015) (not b!6535099) (not b!6535112) (not bm!567864) (not b!6535114) (not b!6535212) (not b!6534810) (not d!2051029) (not b!6535167) (not b!6535200) (not b!6534936) (not d!2050965) (not b!6535296) (not b!6535109) (not b!6534821) (not b!6535160) (not bs!1667055) (not d!2051055) (not b!6535187) (not b!6535300) (not b!6535097) (not b_lambda!247401) (not b!6535189) (not b!6534694) (not d!2051057) (not b!6535297) (not d!2051013) (not b!6535319) (not b!6534727) (not d!2051031) (not d!2051039) (not bs!1667056) (not b!6535132) (not b!6535307) (not d!2050905) (not d!2051045) (not d!2051061) (not d!2051077) (not d!2051085) (not b!6535226) (not b!6535255) (not d!2051119) (not b!6534944) (not b!6535131) (not b!6535294) (not b!6535257) (not b!6535250) (not b!6534698) (not b!6535301) (not b!6534822) (not d!2051037) (not d!2051117) (not b!6535153) (not b!6535289) (not b!6534649) (not setNonEmpty!44580))
(check-sat)
