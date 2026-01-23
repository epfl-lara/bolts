; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!553574 () Bool)

(assert start!553574)

(declare-fun b!5236052 () Bool)

(assert (=> b!5236052 true))

(assert (=> b!5236052 true))

(declare-fun lambda!263193 () Int)

(declare-fun lambda!263192 () Int)

(assert (=> b!5236052 (not (= lambda!263193 lambda!263192))))

(assert (=> b!5236052 true))

(assert (=> b!5236052 true))

(declare-fun b!5236043 () Bool)

(assert (=> b!5236043 true))

(declare-fun b!5236028 () Bool)

(declare-fun e!3258222 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29936 0))(
  ( (C!29937 (val!24670 Int)) )
))
(declare-datatypes ((Regex!14833 0))(
  ( (ElementMatch!14833 (c!904611 C!29936)) (Concat!23678 (regOne!30178 Regex!14833) (regTwo!30178 Regex!14833)) (EmptyExpr!14833) (Star!14833 (reg!15162 Regex!14833)) (EmptyLang!14833) (Union!14833 (regOne!30179 Regex!14833) (regTwo!30179 Regex!14833)) )
))
(declare-datatypes ((List!60798 0))(
  ( (Nil!60674) (Cons!60674 (h!67122 Regex!14833) (t!373979 List!60798)) )
))
(declare-datatypes ((Context!8434 0))(
  ( (Context!8435 (exprs!4717 List!60798)) )
))
(declare-fun lt!2146871 () (InoxSet Context!8434))

(declare-datatypes ((List!60799 0))(
  ( (Nil!60675) (Cons!60675 (h!67123 C!29936) (t!373980 List!60799)) )
))
(declare-fun s!2326 () List!60799)

(declare-fun matchZipper!1077 ((InoxSet Context!8434) List!60799) Bool)

(assert (=> b!5236028 (= e!3258222 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(declare-fun b!5236029 () Bool)

(declare-fun e!3258226 () Bool)

(declare-fun tp!1466838 () Bool)

(assert (=> b!5236029 (= e!3258226 tp!1466838)))

(declare-fun b!5236030 () Bool)

(declare-fun e!3258211 () Bool)

(assert (=> b!5236030 (= e!3258211 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(declare-fun b!5236032 () Bool)

(declare-fun e!3258213 () Bool)

(declare-fun e!3258230 () Bool)

(assert (=> b!5236032 (= e!3258213 e!3258230)))

(declare-fun res!2222504 () Bool)

(assert (=> b!5236032 (=> res!2222504 e!3258230)))

(declare-fun lt!2146864 () (InoxSet Context!8434))

(declare-fun lt!2146880 () (InoxSet Context!8434))

(assert (=> b!5236032 (= res!2222504 (not (= lt!2146864 lt!2146880)))))

(declare-fun lt!2146875 () (InoxSet Context!8434))

(declare-fun lt!2146865 () (InoxSet Context!8434))

(assert (=> b!5236032 (= lt!2146880 ((_ map or) lt!2146875 lt!2146865))))

(declare-fun r!7292 () Regex!14833)

(declare-fun lt!2146867 () Context!8434)

(declare-fun derivationStepZipperDown!281 (Regex!14833 Context!8434 C!29936) (InoxSet Context!8434))

(assert (=> b!5236032 (= lt!2146865 (derivationStepZipperDown!281 (regTwo!30179 (regOne!30178 r!7292)) lt!2146867 (h!67123 s!2326)))))

(assert (=> b!5236032 (= lt!2146875 (derivationStepZipperDown!281 (regOne!30179 (regOne!30178 r!7292)) lt!2146867 (h!67123 s!2326)))))

(declare-fun b!5236033 () Bool)

(declare-fun e!3258215 () Bool)

(declare-fun e!3258223 () Bool)

(assert (=> b!5236033 (= e!3258215 e!3258223)))

(declare-fun res!2222511 () Bool)

(assert (=> b!5236033 (=> res!2222511 e!3258223)))

(declare-fun e!3258224 () Bool)

(declare-fun z!1189 () (InoxSet Context!8434))

(assert (=> b!5236033 (= res!2222511 (not (= (matchZipper!1077 z!1189 s!2326) e!3258224)))))

(declare-fun res!2222503 () Bool)

(assert (=> b!5236033 (=> res!2222503 e!3258224)))

(declare-fun lt!2146847 () Bool)

(assert (=> b!5236033 (= res!2222503 lt!2146847)))

(declare-fun lt!2146846 () (InoxSet Context!8434))

(assert (=> b!5236033 (= lt!2146847 (matchZipper!1077 lt!2146846 s!2326))))

(declare-datatypes ((Unit!152678 0))(
  ( (Unit!152679) )
))
(declare-fun lt!2146869 () Unit!152678)

(declare-fun e!3258228 () Unit!152678)

(assert (=> b!5236033 (= lt!2146869 e!3258228)))

(declare-fun c!904609 () Bool)

(declare-fun nullable!5002 (Regex!14833) Bool)

(assert (=> b!5236033 (= c!904609 (nullable!5002 (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun lt!2146845 () Context!8434)

(declare-fun lambda!263194 () Int)

(declare-fun lt!2146857 () (InoxSet Context!8434))

(declare-fun flatMap!560 ((InoxSet Context!8434) Int) (InoxSet Context!8434))

(declare-fun derivationStepZipperUp!205 (Context!8434 C!29936) (InoxSet Context!8434))

(assert (=> b!5236033 (= (flatMap!560 lt!2146857 lambda!263194) (derivationStepZipperUp!205 lt!2146845 (h!67123 s!2326)))))

(declare-fun lt!2146863 () Unit!152678)

(declare-fun lemmaFlatMapOnSingletonSet!92 ((InoxSet Context!8434) Context!8434 Int) Unit!152678)

(assert (=> b!5236033 (= lt!2146863 (lemmaFlatMapOnSingletonSet!92 lt!2146857 lt!2146845 lambda!263194))))

(declare-fun lt!2146877 () (InoxSet Context!8434))

(assert (=> b!5236033 (= lt!2146877 (derivationStepZipperUp!205 lt!2146845 (h!67123 s!2326)))))

(declare-fun lt!2146861 () Unit!152678)

(declare-fun e!3258216 () Unit!152678)

(assert (=> b!5236033 (= lt!2146861 e!3258216)))

(declare-fun c!904610 () Bool)

(assert (=> b!5236033 (= c!904610 (nullable!5002 (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun lt!2146859 () Context!8434)

(assert (=> b!5236033 (= (flatMap!560 lt!2146846 lambda!263194) (derivationStepZipperUp!205 lt!2146859 (h!67123 s!2326)))))

(declare-fun lt!2146883 () Unit!152678)

(assert (=> b!5236033 (= lt!2146883 (lemmaFlatMapOnSingletonSet!92 lt!2146846 lt!2146859 lambda!263194))))

(declare-fun lt!2146849 () (InoxSet Context!8434))

(assert (=> b!5236033 (= lt!2146849 (derivationStepZipperUp!205 lt!2146859 (h!67123 s!2326)))))

(assert (=> b!5236033 (= lt!2146857 (store ((as const (Array Context!8434 Bool)) false) lt!2146845 true))))

(declare-fun lt!2146844 () List!60798)

(assert (=> b!5236033 (= lt!2146845 (Context!8435 lt!2146844))))

(declare-datatypes ((List!60800 0))(
  ( (Nil!60676) (Cons!60676 (h!67124 Context!8434) (t!373981 List!60800)) )
))
(declare-fun zl!343 () List!60800)

(assert (=> b!5236033 (= lt!2146844 (Cons!60674 (regTwo!30179 (regOne!30178 r!7292)) (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(assert (=> b!5236033 (= lt!2146846 (store ((as const (Array Context!8434 Bool)) false) lt!2146859 true))))

(declare-fun lt!2146856 () List!60798)

(assert (=> b!5236033 (= lt!2146859 (Context!8435 lt!2146856))))

(assert (=> b!5236033 (= lt!2146856 (Cons!60674 (regOne!30179 (regOne!30178 r!7292)) (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236034 () Bool)

(declare-fun e!3258218 () Bool)

(assert (=> b!5236034 (= e!3258218 (not (matchZipper!1077 lt!2146865 (t!373980 s!2326))))))

(declare-fun b!5236035 () Bool)

(declare-fun e!3258220 () Bool)

(declare-fun lambda!263195 () Int)

(declare-fun forall!14259 (List!60798 Int) Bool)

(assert (=> b!5236035 (= e!3258220 (forall!14259 lt!2146844 lambda!263195))))

(declare-fun lt!2146886 () Bool)

(declare-fun lt!2146850 () Regex!14833)

(declare-fun matchRSpec!1936 (Regex!14833 List!60799) Bool)

(assert (=> b!5236035 (= lt!2146886 (matchRSpec!1936 lt!2146850 s!2326))))

(declare-fun lt!2146853 () Unit!152678)

(declare-fun mainMatchTheorem!1936 (Regex!14833 List!60799) Unit!152678)

(assert (=> b!5236035 (= lt!2146853 (mainMatchTheorem!1936 lt!2146850 s!2326))))

(declare-fun lt!2146852 () Regex!14833)

(declare-fun matchR!7018 (Regex!14833 List!60799) Bool)

(assert (=> b!5236035 (= (matchR!7018 lt!2146852 s!2326) (matchZipper!1077 lt!2146857 s!2326))))

(declare-fun lt!2146882 () List!60800)

(declare-fun lt!2146876 () Unit!152678)

(declare-fun theoremZipperRegexEquiv!267 ((InoxSet Context!8434) List!60800 Regex!14833 List!60799) Unit!152678)

(assert (=> b!5236035 (= lt!2146876 (theoremZipperRegexEquiv!267 lt!2146857 lt!2146882 lt!2146852 s!2326))))

(declare-fun generalisedConcat!502 (List!60798) Regex!14833)

(assert (=> b!5236035 (= lt!2146852 (generalisedConcat!502 lt!2146844))))

(assert (=> b!5236035 (= lt!2146886 lt!2146847)))

(assert (=> b!5236035 (= lt!2146886 (matchR!7018 lt!2146850 s!2326))))

(declare-fun lt!2146881 () List!60800)

(declare-fun lt!2146855 () Unit!152678)

(assert (=> b!5236035 (= lt!2146855 (theoremZipperRegexEquiv!267 lt!2146846 lt!2146881 lt!2146850 s!2326))))

(assert (=> b!5236035 (= lt!2146850 (generalisedConcat!502 lt!2146856))))

(declare-fun b!5236036 () Bool)

(declare-fun res!2222510 () Bool)

(declare-fun e!3258221 () Bool)

(assert (=> b!5236036 (=> res!2222510 e!3258221)))

(declare-fun isEmpty!32599 (List!60798) Bool)

(assert (=> b!5236036 (= res!2222510 (isEmpty!32599 (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236037 () Bool)

(declare-fun Unit!152680 () Unit!152678)

(assert (=> b!5236037 (= e!3258228 Unit!152680)))

(declare-fun lt!2146884 () Unit!152678)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!70 ((InoxSet Context!8434) (InoxSet Context!8434) List!60799) Unit!152678)

(assert (=> b!5236037 (= lt!2146884 (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146865 lt!2146871 (t!373980 s!2326)))))

(declare-fun res!2222500 () Bool)

(assert (=> b!5236037 (= res!2222500 (matchZipper!1077 lt!2146865 (t!373980 s!2326)))))

(declare-fun e!3258234 () Bool)

(assert (=> b!5236037 (=> res!2222500 e!3258234)))

(assert (=> b!5236037 (= (matchZipper!1077 ((_ map or) lt!2146865 lt!2146871) (t!373980 s!2326)) e!3258234)))

(declare-fun b!5236038 () Bool)

(declare-fun e!3258212 () Bool)

(assert (=> b!5236038 (= e!3258212 (matchZipper!1077 lt!2146865 (t!373980 s!2326)))))

(declare-fun b!5236039 () Bool)

(declare-fun e!3258232 () Bool)

(assert (=> b!5236039 (= e!3258223 e!3258232)))

(declare-fun res!2222507 () Bool)

(assert (=> b!5236039 (=> res!2222507 e!3258232)))

(declare-fun lt!2146868 () Int)

(declare-fun lt!2146866 () Int)

(assert (=> b!5236039 (= res!2222507 (>= lt!2146868 lt!2146866))))

(declare-fun zipperDepthTotal!14 (List!60800) Int)

(assert (=> b!5236039 (= lt!2146866 (zipperDepthTotal!14 zl!343))))

(assert (=> b!5236039 (= lt!2146868 (zipperDepthTotal!14 lt!2146881))))

(assert (=> b!5236039 (= lt!2146881 (Cons!60676 lt!2146859 Nil!60676))))

(declare-fun b!5236040 () Bool)

(assert (=> b!5236040 (= e!3258232 e!3258220)))

(declare-fun res!2222517 () Bool)

(assert (=> b!5236040 (=> res!2222517 e!3258220)))

(assert (=> b!5236040 (= res!2222517 (>= (zipperDepthTotal!14 lt!2146882) lt!2146866))))

(assert (=> b!5236040 (= lt!2146882 (Cons!60676 lt!2146845 Nil!60676))))

(declare-fun b!5236041 () Bool)

(declare-fun res!2222498 () Bool)

(declare-fun e!3258214 () Bool)

(assert (=> b!5236041 (=> (not res!2222498) (not e!3258214))))

(declare-fun toList!8617 ((InoxSet Context!8434)) List!60800)

(assert (=> b!5236041 (= res!2222498 (= (toList!8617 z!1189) zl!343))))

(declare-fun b!5236042 () Bool)

(declare-fun e!3258233 () Bool)

(declare-fun tp_is_empty!38919 () Bool)

(declare-fun tp!1466844 () Bool)

(assert (=> b!5236042 (= e!3258233 (and tp_is_empty!38919 tp!1466844))))

(declare-fun e!3258225 () Bool)

(declare-fun tp!1466840 () Bool)

(declare-fun setNonEmpty!33377 () Bool)

(declare-fun setElem!33377 () Context!8434)

(declare-fun setRes!33377 () Bool)

(declare-fun inv!80329 (Context!8434) Bool)

(assert (=> setNonEmpty!33377 (= setRes!33377 (and tp!1466840 (inv!80329 setElem!33377) e!3258225))))

(declare-fun setRest!33377 () (InoxSet Context!8434))

(assert (=> setNonEmpty!33377 (= z!1189 ((_ map or) (store ((as const (Array Context!8434 Bool)) false) setElem!33377 true) setRest!33377))))

(assert (=> b!5236043 (= e!3258221 e!3258213)))

(declare-fun res!2222496 () Bool)

(assert (=> b!5236043 (=> res!2222496 e!3258213)))

(get-info :version)

(assert (=> b!5236043 (= res!2222496 (or (and ((_ is ElementMatch!14833) (regOne!30178 r!7292)) (= (c!904611 (regOne!30178 r!7292)) (h!67123 s!2326))) (not ((_ is Union!14833) (regOne!30178 r!7292)))))))

(declare-fun lt!2146848 () Unit!152678)

(declare-fun e!3258231 () Unit!152678)

(assert (=> b!5236043 (= lt!2146848 e!3258231)))

(declare-fun c!904608 () Bool)

(assert (=> b!5236043 (= c!904608 (nullable!5002 (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(assert (=> b!5236043 (= (flatMap!560 z!1189 lambda!263194) (derivationStepZipperUp!205 (h!67124 zl!343) (h!67123 s!2326)))))

(declare-fun lt!2146854 () Unit!152678)

(assert (=> b!5236043 (= lt!2146854 (lemmaFlatMapOnSingletonSet!92 z!1189 (h!67124 zl!343) lambda!263194))))

(assert (=> b!5236043 (= lt!2146871 (derivationStepZipperUp!205 lt!2146867 (h!67123 s!2326)))))

(assert (=> b!5236043 (= lt!2146864 (derivationStepZipperDown!281 (h!67122 (exprs!4717 (h!67124 zl!343))) lt!2146867 (h!67123 s!2326)))))

(assert (=> b!5236043 (= lt!2146867 (Context!8435 (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun lt!2146878 () (InoxSet Context!8434))

(assert (=> b!5236043 (= lt!2146878 (derivationStepZipperUp!205 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343))))) (h!67123 s!2326)))))

(declare-fun b!5236044 () Bool)

(declare-fun e!3258229 () Bool)

(assert (=> b!5236044 (= e!3258214 e!3258229)))

(declare-fun res!2222501 () Bool)

(assert (=> b!5236044 (=> (not res!2222501) (not e!3258229))))

(declare-fun lt!2146873 () Regex!14833)

(assert (=> b!5236044 (= res!2222501 (= r!7292 lt!2146873))))

(declare-fun unfocusZipper!575 (List!60800) Regex!14833)

(assert (=> b!5236044 (= lt!2146873 (unfocusZipper!575 zl!343))))

(declare-fun b!5236045 () Bool)

(declare-fun res!2222497 () Bool)

(declare-fun e!3258227 () Bool)

(assert (=> b!5236045 (=> res!2222497 e!3258227)))

(assert (=> b!5236045 (= res!2222497 (not (= r!7292 (generalisedConcat!502 (exprs!4717 (h!67124 zl!343))))))))

(declare-fun tp!1466839 () Bool)

(declare-fun e!3258217 () Bool)

(declare-fun b!5236046 () Bool)

(assert (=> b!5236046 (= e!3258217 (and (inv!80329 (h!67124 zl!343)) e!3258226 tp!1466839))))

(declare-fun b!5236047 () Bool)

(assert (=> b!5236047 (= e!3258229 (not e!3258227))))

(declare-fun res!2222515 () Bool)

(assert (=> b!5236047 (=> res!2222515 e!3258227)))

(assert (=> b!5236047 (= res!2222515 (not ((_ is Cons!60676) zl!343)))))

(declare-fun lt!2146885 () Bool)

(assert (=> b!5236047 (= lt!2146885 (matchRSpec!1936 r!7292 s!2326))))

(assert (=> b!5236047 (= lt!2146885 (matchR!7018 r!7292 s!2326))))

(declare-fun lt!2146851 () Unit!152678)

(assert (=> b!5236047 (= lt!2146851 (mainMatchTheorem!1936 r!7292 s!2326))))

(declare-fun b!5236048 () Bool)

(declare-fun e!3258219 () Bool)

(declare-fun tp!1466841 () Bool)

(assert (=> b!5236048 (= e!3258219 tp!1466841)))

(declare-fun b!5236049 () Bool)

(assert (=> b!5236049 (= e!3258234 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(declare-fun b!5236050 () Bool)

(declare-fun res!2222506 () Bool)

(assert (=> b!5236050 (=> res!2222506 e!3258227)))

(declare-fun generalisedUnion!762 (List!60798) Regex!14833)

(declare-fun unfocusZipperList!275 (List!60800) List!60798)

(assert (=> b!5236050 (= res!2222506 (not (= r!7292 (generalisedUnion!762 (unfocusZipperList!275 zl!343)))))))

(declare-fun b!5236051 () Bool)

(assert (=> b!5236051 (= e!3258230 e!3258215)))

(declare-fun res!2222513 () Bool)

(assert (=> b!5236051 (=> res!2222513 e!3258215)))

(assert (=> b!5236051 (= res!2222513 e!3258218)))

(declare-fun res!2222518 () Bool)

(assert (=> b!5236051 (=> (not res!2222518) (not e!3258218))))

(declare-fun lt!2146870 () Bool)

(assert (=> b!5236051 (= res!2222518 (not (= (matchZipper!1077 lt!2146864 (t!373980 s!2326)) lt!2146870)))))

(assert (=> b!5236051 (= (matchZipper!1077 lt!2146880 (t!373980 s!2326)) e!3258212)))

(declare-fun res!2222502 () Bool)

(assert (=> b!5236051 (=> res!2222502 e!3258212)))

(assert (=> b!5236051 (= res!2222502 lt!2146870)))

(assert (=> b!5236051 (= lt!2146870 (matchZipper!1077 lt!2146875 (t!373980 s!2326)))))

(declare-fun lt!2146874 () Unit!152678)

(assert (=> b!5236051 (= lt!2146874 (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146875 lt!2146865 (t!373980 s!2326)))))

(declare-fun res!2222514 () Bool)

(assert (=> start!553574 (=> (not res!2222514) (not e!3258214))))

(declare-fun validRegex!6569 (Regex!14833) Bool)

(assert (=> start!553574 (= res!2222514 (validRegex!6569 r!7292))))

(assert (=> start!553574 e!3258214))

(assert (=> start!553574 e!3258219))

(declare-fun condSetEmpty!33377 () Bool)

(assert (=> start!553574 (= condSetEmpty!33377 (= z!1189 ((as const (Array Context!8434 Bool)) false)))))

(assert (=> start!553574 setRes!33377))

(assert (=> start!553574 e!3258217))

(assert (=> start!553574 e!3258233))

(declare-fun b!5236031 () Bool)

(declare-fun res!2222508 () Bool)

(assert (=> b!5236031 (=> res!2222508 e!3258223)))

(assert (=> b!5236031 (= res!2222508 (or (not (= lt!2146873 r!7292)) (not (= (exprs!4717 (h!67124 zl!343)) (Cons!60674 (regOne!30178 r!7292) (t!373979 (exprs!4717 (h!67124 zl!343))))))))))

(assert (=> b!5236052 (= e!3258227 e!3258221)))

(declare-fun res!2222516 () Bool)

(assert (=> b!5236052 (=> res!2222516 e!3258221)))

(declare-fun lt!2146872 () Bool)

(assert (=> b!5236052 (= res!2222516 (or (not (= lt!2146885 lt!2146872)) ((_ is Nil!60675) s!2326)))))

(declare-fun Exists!2014 (Int) Bool)

(assert (=> b!5236052 (= (Exists!2014 lambda!263192) (Exists!2014 lambda!263193))))

(declare-fun lt!2146860 () Unit!152678)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!668 (Regex!14833 Regex!14833 List!60799) Unit!152678)

(assert (=> b!5236052 (= lt!2146860 (lemmaExistCutMatchRandMatchRSpecEquivalent!668 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326))))

(assert (=> b!5236052 (= lt!2146872 (Exists!2014 lambda!263192))))

(declare-datatypes ((tuple2!64064 0))(
  ( (tuple2!64065 (_1!35335 List!60799) (_2!35335 List!60799)) )
))
(declare-datatypes ((Option!14944 0))(
  ( (None!14943) (Some!14943 (v!50972 tuple2!64064)) )
))
(declare-fun isDefined!11647 (Option!14944) Bool)

(declare-fun findConcatSeparation!1358 (Regex!14833 Regex!14833 List!60799 List!60799 List!60799) Option!14944)

(assert (=> b!5236052 (= lt!2146872 (isDefined!11647 (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) Nil!60675 s!2326 s!2326)))))

(declare-fun lt!2146862 () Unit!152678)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1122 (Regex!14833 Regex!14833 List!60799) Unit!152678)

(assert (=> b!5236052 (= lt!2146862 (lemmaFindConcatSeparationEquivalentToExists!1122 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326))))

(declare-fun b!5236053 () Bool)

(declare-fun Unit!152681 () Unit!152678)

(assert (=> b!5236053 (= e!3258216 Unit!152681)))

(declare-fun b!5236054 () Bool)

(declare-fun Unit!152682 () Unit!152678)

(assert (=> b!5236054 (= e!3258231 Unit!152682)))

(declare-fun lt!2146858 () Unit!152678)

(assert (=> b!5236054 (= lt!2146858 (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146864 lt!2146871 (t!373980 s!2326)))))

(declare-fun res!2222499 () Bool)

(assert (=> b!5236054 (= res!2222499 (matchZipper!1077 lt!2146864 (t!373980 s!2326)))))

(assert (=> b!5236054 (=> res!2222499 e!3258211)))

(assert (=> b!5236054 (= (matchZipper!1077 ((_ map or) lt!2146864 lt!2146871) (t!373980 s!2326)) e!3258211)))

(declare-fun b!5236055 () Bool)

(assert (=> b!5236055 (= e!3258219 tp_is_empty!38919)))

(declare-fun b!5236056 () Bool)

(assert (=> b!5236056 (= e!3258224 (matchZipper!1077 lt!2146857 s!2326))))

(declare-fun b!5236057 () Bool)

(declare-fun tp!1466845 () Bool)

(assert (=> b!5236057 (= e!3258225 tp!1466845)))

(declare-fun setIsEmpty!33377 () Bool)

(assert (=> setIsEmpty!33377 setRes!33377))

(declare-fun b!5236058 () Bool)

(declare-fun res!2222509 () Bool)

(assert (=> b!5236058 (=> res!2222509 e!3258227)))

(declare-fun isEmpty!32600 (List!60800) Bool)

(assert (=> b!5236058 (= res!2222509 (not (isEmpty!32600 (t!373981 zl!343))))))

(declare-fun b!5236059 () Bool)

(declare-fun tp!1466836 () Bool)

(declare-fun tp!1466842 () Bool)

(assert (=> b!5236059 (= e!3258219 (and tp!1466836 tp!1466842))))

(declare-fun b!5236060 () Bool)

(declare-fun res!2222505 () Bool)

(assert (=> b!5236060 (=> res!2222505 e!3258227)))

(assert (=> b!5236060 (= res!2222505 (not ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236061 () Bool)

(declare-fun Unit!152683 () Unit!152678)

(assert (=> b!5236061 (= e!3258216 Unit!152683)))

(declare-fun lt!2146879 () Unit!152678)

(assert (=> b!5236061 (= lt!2146879 (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146875 lt!2146871 (t!373980 s!2326)))))

(declare-fun res!2222512 () Bool)

(assert (=> b!5236061 (= res!2222512 lt!2146870)))

(assert (=> b!5236061 (=> res!2222512 e!3258222)))

(assert (=> b!5236061 (= (matchZipper!1077 ((_ map or) lt!2146875 lt!2146871) (t!373980 s!2326)) e!3258222)))

(declare-fun b!5236062 () Bool)

(declare-fun tp!1466837 () Bool)

(declare-fun tp!1466843 () Bool)

(assert (=> b!5236062 (= e!3258219 (and tp!1466837 tp!1466843))))

(declare-fun b!5236063 () Bool)

(declare-fun Unit!152684 () Unit!152678)

(assert (=> b!5236063 (= e!3258231 Unit!152684)))

(declare-fun b!5236064 () Bool)

(declare-fun Unit!152685 () Unit!152678)

(assert (=> b!5236064 (= e!3258228 Unit!152685)))

(declare-fun b!5236065 () Bool)

(declare-fun res!2222519 () Bool)

(assert (=> b!5236065 (=> res!2222519 e!3258227)))

(assert (=> b!5236065 (= res!2222519 (or ((_ is EmptyExpr!14833) r!7292) ((_ is EmptyLang!14833) r!7292) ((_ is ElementMatch!14833) r!7292) ((_ is Union!14833) r!7292) (not ((_ is Concat!23678) r!7292))))))

(assert (= (and start!553574 res!2222514) b!5236041))

(assert (= (and b!5236041 res!2222498) b!5236044))

(assert (= (and b!5236044 res!2222501) b!5236047))

(assert (= (and b!5236047 (not res!2222515)) b!5236058))

(assert (= (and b!5236058 (not res!2222509)) b!5236045))

(assert (= (and b!5236045 (not res!2222497)) b!5236060))

(assert (= (and b!5236060 (not res!2222505)) b!5236050))

(assert (= (and b!5236050 (not res!2222506)) b!5236065))

(assert (= (and b!5236065 (not res!2222519)) b!5236052))

(assert (= (and b!5236052 (not res!2222516)) b!5236036))

(assert (= (and b!5236036 (not res!2222510)) b!5236043))

(assert (= (and b!5236043 c!904608) b!5236054))

(assert (= (and b!5236043 (not c!904608)) b!5236063))

(assert (= (and b!5236054 (not res!2222499)) b!5236030))

(assert (= (and b!5236043 (not res!2222496)) b!5236032))

(assert (= (and b!5236032 (not res!2222504)) b!5236051))

(assert (= (and b!5236051 (not res!2222502)) b!5236038))

(assert (= (and b!5236051 res!2222518) b!5236034))

(assert (= (and b!5236051 (not res!2222513)) b!5236033))

(assert (= (and b!5236033 c!904610) b!5236061))

(assert (= (and b!5236033 (not c!904610)) b!5236053))

(assert (= (and b!5236061 (not res!2222512)) b!5236028))

(assert (= (and b!5236033 c!904609) b!5236037))

(assert (= (and b!5236033 (not c!904609)) b!5236064))

(assert (= (and b!5236037 (not res!2222500)) b!5236049))

(assert (= (and b!5236033 (not res!2222503)) b!5236056))

(assert (= (and b!5236033 (not res!2222511)) b!5236031))

(assert (= (and b!5236031 (not res!2222508)) b!5236039))

(assert (= (and b!5236039 (not res!2222507)) b!5236040))

(assert (= (and b!5236040 (not res!2222517)) b!5236035))

(assert (= (and start!553574 ((_ is ElementMatch!14833) r!7292)) b!5236055))

(assert (= (and start!553574 ((_ is Concat!23678) r!7292)) b!5236059))

(assert (= (and start!553574 ((_ is Star!14833) r!7292)) b!5236048))

(assert (= (and start!553574 ((_ is Union!14833) r!7292)) b!5236062))

(assert (= (and start!553574 condSetEmpty!33377) setIsEmpty!33377))

(assert (= (and start!553574 (not condSetEmpty!33377)) setNonEmpty!33377))

(assert (= setNonEmpty!33377 b!5236057))

(assert (= b!5236046 b!5236029))

(assert (= (and start!553574 ((_ is Cons!60676) zl!343)) b!5236046))

(assert (= (and start!553574 ((_ is Cons!60675) s!2326)) b!5236042))

(declare-fun m!6281282 () Bool)

(assert (=> setNonEmpty!33377 m!6281282))

(declare-fun m!6281284 () Bool)

(assert (=> b!5236056 m!6281284))

(declare-fun m!6281286 () Bool)

(assert (=> b!5236043 m!6281286))

(declare-fun m!6281288 () Bool)

(assert (=> b!5236043 m!6281288))

(declare-fun m!6281290 () Bool)

(assert (=> b!5236043 m!6281290))

(declare-fun m!6281292 () Bool)

(assert (=> b!5236043 m!6281292))

(declare-fun m!6281294 () Bool)

(assert (=> b!5236043 m!6281294))

(declare-fun m!6281296 () Bool)

(assert (=> b!5236043 m!6281296))

(declare-fun m!6281298 () Bool)

(assert (=> b!5236043 m!6281298))

(declare-fun m!6281300 () Bool)

(assert (=> b!5236054 m!6281300))

(declare-fun m!6281302 () Bool)

(assert (=> b!5236054 m!6281302))

(declare-fun m!6281304 () Bool)

(assert (=> b!5236054 m!6281304))

(declare-fun m!6281306 () Bool)

(assert (=> b!5236040 m!6281306))

(declare-fun m!6281308 () Bool)

(assert (=> b!5236028 m!6281308))

(declare-fun m!6281310 () Bool)

(assert (=> start!553574 m!6281310))

(declare-fun m!6281312 () Bool)

(assert (=> b!5236038 m!6281312))

(declare-fun m!6281314 () Bool)

(assert (=> b!5236039 m!6281314))

(declare-fun m!6281316 () Bool)

(assert (=> b!5236039 m!6281316))

(declare-fun m!6281318 () Bool)

(assert (=> b!5236046 m!6281318))

(assert (=> b!5236051 m!6281302))

(declare-fun m!6281320 () Bool)

(assert (=> b!5236051 m!6281320))

(declare-fun m!6281322 () Bool)

(assert (=> b!5236051 m!6281322))

(declare-fun m!6281324 () Bool)

(assert (=> b!5236051 m!6281324))

(declare-fun m!6281326 () Bool)

(assert (=> b!5236047 m!6281326))

(declare-fun m!6281328 () Bool)

(assert (=> b!5236047 m!6281328))

(declare-fun m!6281330 () Bool)

(assert (=> b!5236047 m!6281330))

(declare-fun m!6281332 () Bool)

(assert (=> b!5236035 m!6281332))

(declare-fun m!6281334 () Bool)

(assert (=> b!5236035 m!6281334))

(declare-fun m!6281336 () Bool)

(assert (=> b!5236035 m!6281336))

(declare-fun m!6281338 () Bool)

(assert (=> b!5236035 m!6281338))

(declare-fun m!6281340 () Bool)

(assert (=> b!5236035 m!6281340))

(declare-fun m!6281342 () Bool)

(assert (=> b!5236035 m!6281342))

(declare-fun m!6281344 () Bool)

(assert (=> b!5236035 m!6281344))

(declare-fun m!6281346 () Bool)

(assert (=> b!5236035 m!6281346))

(declare-fun m!6281348 () Bool)

(assert (=> b!5236035 m!6281348))

(assert (=> b!5236035 m!6281284))

(declare-fun m!6281350 () Bool)

(assert (=> b!5236061 m!6281350))

(declare-fun m!6281352 () Bool)

(assert (=> b!5236061 m!6281352))

(assert (=> b!5236049 m!6281308))

(assert (=> b!5236034 m!6281312))

(declare-fun m!6281354 () Bool)

(assert (=> b!5236052 m!6281354))

(declare-fun m!6281356 () Bool)

(assert (=> b!5236052 m!6281356))

(declare-fun m!6281358 () Bool)

(assert (=> b!5236052 m!6281358))

(declare-fun m!6281360 () Bool)

(assert (=> b!5236052 m!6281360))

(assert (=> b!5236052 m!6281354))

(declare-fun m!6281362 () Bool)

(assert (=> b!5236052 m!6281362))

(declare-fun m!6281364 () Bool)

(assert (=> b!5236052 m!6281364))

(assert (=> b!5236052 m!6281364))

(declare-fun m!6281366 () Bool)

(assert (=> b!5236037 m!6281366))

(assert (=> b!5236037 m!6281312))

(declare-fun m!6281368 () Bool)

(assert (=> b!5236037 m!6281368))

(declare-fun m!6281370 () Bool)

(assert (=> b!5236036 m!6281370))

(declare-fun m!6281372 () Bool)

(assert (=> b!5236041 m!6281372))

(declare-fun m!6281374 () Bool)

(assert (=> b!5236032 m!6281374))

(declare-fun m!6281376 () Bool)

(assert (=> b!5236032 m!6281376))

(assert (=> b!5236030 m!6281308))

(declare-fun m!6281378 () Bool)

(assert (=> b!5236033 m!6281378))

(declare-fun m!6281380 () Bool)

(assert (=> b!5236033 m!6281380))

(declare-fun m!6281382 () Bool)

(assert (=> b!5236033 m!6281382))

(declare-fun m!6281384 () Bool)

(assert (=> b!5236033 m!6281384))

(declare-fun m!6281386 () Bool)

(assert (=> b!5236033 m!6281386))

(declare-fun m!6281388 () Bool)

(assert (=> b!5236033 m!6281388))

(declare-fun m!6281390 () Bool)

(assert (=> b!5236033 m!6281390))

(declare-fun m!6281392 () Bool)

(assert (=> b!5236033 m!6281392))

(declare-fun m!6281394 () Bool)

(assert (=> b!5236033 m!6281394))

(declare-fun m!6281396 () Bool)

(assert (=> b!5236033 m!6281396))

(declare-fun m!6281398 () Bool)

(assert (=> b!5236033 m!6281398))

(declare-fun m!6281400 () Bool)

(assert (=> b!5236033 m!6281400))

(declare-fun m!6281402 () Bool)

(assert (=> b!5236050 m!6281402))

(assert (=> b!5236050 m!6281402))

(declare-fun m!6281404 () Bool)

(assert (=> b!5236050 m!6281404))

(declare-fun m!6281406 () Bool)

(assert (=> b!5236044 m!6281406))

(declare-fun m!6281408 () Bool)

(assert (=> b!5236058 m!6281408))

(declare-fun m!6281410 () Bool)

(assert (=> b!5236045 m!6281410))

(check-sat (not b!5236052) (not b!5236059) (not b!5236028) (not b!5236058) (not b!5236036) (not b!5236044) (not b!5236038) (not b!5236035) (not b!5236057) (not b!5236039) (not b!5236030) (not b!5236041) (not b!5236029) (not b!5236040) (not start!553574) (not b!5236054) tp_is_empty!38919 (not setNonEmpty!33377) (not b!5236033) (not b!5236061) (not b!5236045) (not b!5236062) (not b!5236032) (not b!5236046) (not b!5236037) (not b!5236034) (not b!5236056) (not b!5236050) (not b!5236051) (not b!5236042) (not b!5236048) (not b!5236049) (not b!5236043) (not b!5236047))
(check-sat)
(get-model)

(declare-fun d!1687772 () Bool)

(declare-fun c!904626 () Bool)

(declare-fun isEmpty!32603 (List!60799) Bool)

(assert (=> d!1687772 (= c!904626 (isEmpty!32603 s!2326))))

(declare-fun e!3258268 () Bool)

(assert (=> d!1687772 (= (matchZipper!1077 lt!2146857 s!2326) e!3258268)))

(declare-fun b!5236131 () Bool)

(declare-fun nullableZipper!1250 ((InoxSet Context!8434)) Bool)

(assert (=> b!5236131 (= e!3258268 (nullableZipper!1250 lt!2146857))))

(declare-fun b!5236132 () Bool)

(declare-fun derivationStepZipper!1094 ((InoxSet Context!8434) C!29936) (InoxSet Context!8434))

(declare-fun head!11218 (List!60799) C!29936)

(declare-fun tail!10315 (List!60799) List!60799)

(assert (=> b!5236132 (= e!3258268 (matchZipper!1077 (derivationStepZipper!1094 lt!2146857 (head!11218 s!2326)) (tail!10315 s!2326)))))

(assert (= (and d!1687772 c!904626) b!5236131))

(assert (= (and d!1687772 (not c!904626)) b!5236132))

(declare-fun m!6281480 () Bool)

(assert (=> d!1687772 m!6281480))

(declare-fun m!6281482 () Bool)

(assert (=> b!5236131 m!6281482))

(declare-fun m!6281484 () Bool)

(assert (=> b!5236132 m!6281484))

(assert (=> b!5236132 m!6281484))

(declare-fun m!6281486 () Bool)

(assert (=> b!5236132 m!6281486))

(declare-fun m!6281488 () Bool)

(assert (=> b!5236132 m!6281488))

(assert (=> b!5236132 m!6281486))

(assert (=> b!5236132 m!6281488))

(declare-fun m!6281490 () Bool)

(assert (=> b!5236132 m!6281490))

(assert (=> b!5236056 d!1687772))

(declare-fun d!1687778 () Bool)

(assert (=> d!1687778 (= (isEmpty!32599 (t!373979 (exprs!4717 (h!67124 zl!343)))) ((_ is Nil!60674) (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(assert (=> b!5236036 d!1687778))

(declare-fun bs!1215327 () Bool)

(declare-fun d!1687782 () Bool)

(assert (= bs!1215327 (and d!1687782 b!5236035)))

(declare-fun lambda!263210 () Int)

(assert (=> bs!1215327 (= lambda!263210 lambda!263195)))

(declare-fun b!5236223 () Bool)

(declare-fun e!3258329 () Bool)

(assert (=> b!5236223 (= e!3258329 (isEmpty!32599 (t!373979 lt!2146844)))))

(declare-fun b!5236224 () Bool)

(declare-fun e!3258327 () Regex!14833)

(assert (=> b!5236224 (= e!3258327 (Concat!23678 (h!67122 lt!2146844) (generalisedConcat!502 (t!373979 lt!2146844))))))

(declare-fun b!5236225 () Bool)

(declare-fun e!3258325 () Bool)

(declare-fun e!3258328 () Bool)

(assert (=> b!5236225 (= e!3258325 e!3258328)))

(declare-fun c!904661 () Bool)

(declare-fun tail!10316 (List!60798) List!60798)

(assert (=> b!5236225 (= c!904661 (isEmpty!32599 (tail!10316 lt!2146844)))))

(declare-fun b!5236226 () Bool)

(declare-fun e!3258330 () Bool)

(assert (=> b!5236226 (= e!3258330 e!3258325)))

(declare-fun c!904662 () Bool)

(assert (=> b!5236226 (= c!904662 (isEmpty!32599 lt!2146844))))

(declare-fun b!5236227 () Bool)

(declare-fun e!3258326 () Regex!14833)

(assert (=> b!5236227 (= e!3258326 e!3258327)))

(declare-fun c!904664 () Bool)

(assert (=> b!5236227 (= c!904664 ((_ is Cons!60674) lt!2146844))))

(assert (=> d!1687782 e!3258330))

(declare-fun res!2222573 () Bool)

(assert (=> d!1687782 (=> (not res!2222573) (not e!3258330))))

(declare-fun lt!2146912 () Regex!14833)

(assert (=> d!1687782 (= res!2222573 (validRegex!6569 lt!2146912))))

(assert (=> d!1687782 (= lt!2146912 e!3258326)))

(declare-fun c!904663 () Bool)

(assert (=> d!1687782 (= c!904663 e!3258329)))

(declare-fun res!2222574 () Bool)

(assert (=> d!1687782 (=> (not res!2222574) (not e!3258329))))

(assert (=> d!1687782 (= res!2222574 ((_ is Cons!60674) lt!2146844))))

(assert (=> d!1687782 (forall!14259 lt!2146844 lambda!263210)))

(assert (=> d!1687782 (= (generalisedConcat!502 lt!2146844) lt!2146912)))

(declare-fun b!5236228 () Bool)

(declare-fun head!11219 (List!60798) Regex!14833)

(assert (=> b!5236228 (= e!3258328 (= lt!2146912 (head!11219 lt!2146844)))))

(declare-fun b!5236229 () Bool)

(assert (=> b!5236229 (= e!3258326 (h!67122 lt!2146844))))

(declare-fun b!5236230 () Bool)

(declare-fun isConcat!308 (Regex!14833) Bool)

(assert (=> b!5236230 (= e!3258328 (isConcat!308 lt!2146912))))

(declare-fun b!5236231 () Bool)

(assert (=> b!5236231 (= e!3258327 EmptyExpr!14833)))

(declare-fun b!5236232 () Bool)

(declare-fun isEmptyExpr!785 (Regex!14833) Bool)

(assert (=> b!5236232 (= e!3258325 (isEmptyExpr!785 lt!2146912))))

(assert (= (and d!1687782 res!2222574) b!5236223))

(assert (= (and d!1687782 c!904663) b!5236229))

(assert (= (and d!1687782 (not c!904663)) b!5236227))

(assert (= (and b!5236227 c!904664) b!5236224))

(assert (= (and b!5236227 (not c!904664)) b!5236231))

(assert (= (and d!1687782 res!2222573) b!5236226))

(assert (= (and b!5236226 c!904662) b!5236232))

(assert (= (and b!5236226 (not c!904662)) b!5236225))

(assert (= (and b!5236225 c!904661) b!5236228))

(assert (= (and b!5236225 (not c!904661)) b!5236230))

(declare-fun m!6281540 () Bool)

(assert (=> b!5236226 m!6281540))

(declare-fun m!6281544 () Bool)

(assert (=> b!5236225 m!6281544))

(assert (=> b!5236225 m!6281544))

(declare-fun m!6281546 () Bool)

(assert (=> b!5236225 m!6281546))

(declare-fun m!6281548 () Bool)

(assert (=> b!5236230 m!6281548))

(declare-fun m!6281550 () Bool)

(assert (=> b!5236223 m!6281550))

(declare-fun m!6281552 () Bool)

(assert (=> b!5236232 m!6281552))

(declare-fun m!6281554 () Bool)

(assert (=> d!1687782 m!6281554))

(declare-fun m!6281556 () Bool)

(assert (=> d!1687782 m!6281556))

(declare-fun m!6281558 () Bool)

(assert (=> b!5236224 m!6281558))

(declare-fun m!6281560 () Bool)

(assert (=> b!5236228 m!6281560))

(assert (=> b!5236035 d!1687782))

(declare-fun bs!1215336 () Bool)

(declare-fun b!5236375 () Bool)

(assert (= bs!1215336 (and b!5236375 b!5236052)))

(declare-fun lambda!263221 () Int)

(assert (=> bs!1215336 (not (= lambda!263221 lambda!263192))))

(assert (=> bs!1215336 (not (= lambda!263221 lambda!263193))))

(assert (=> b!5236375 true))

(assert (=> b!5236375 true))

(declare-fun bs!1215337 () Bool)

(declare-fun b!5236371 () Bool)

(assert (= bs!1215337 (and b!5236371 b!5236052)))

(declare-fun lambda!263222 () Int)

(assert (=> bs!1215337 (not (= lambda!263222 lambda!263192))))

(assert (=> bs!1215337 (= (and (= (regOne!30178 lt!2146850) (regOne!30178 r!7292)) (= (regTwo!30178 lt!2146850) (regTwo!30178 r!7292))) (= lambda!263222 lambda!263193))))

(declare-fun bs!1215338 () Bool)

(assert (= bs!1215338 (and b!5236371 b!5236375)))

(assert (=> bs!1215338 (not (= lambda!263222 lambda!263221))))

(assert (=> b!5236371 true))

(assert (=> b!5236371 true))

(declare-fun b!5236366 () Bool)

(declare-fun res!2222638 () Bool)

(declare-fun e!3258407 () Bool)

(assert (=> b!5236366 (=> res!2222638 e!3258407)))

(declare-fun call!370559 () Bool)

(assert (=> b!5236366 (= res!2222638 call!370559)))

(declare-fun e!3258405 () Bool)

(assert (=> b!5236366 (= e!3258405 e!3258407)))

(declare-fun call!370560 () Bool)

(declare-fun c!904702 () Bool)

(declare-fun bm!370554 () Bool)

(assert (=> bm!370554 (= call!370560 (Exists!2014 (ite c!904702 lambda!263221 lambda!263222)))))

(declare-fun d!1687800 () Bool)

(declare-fun c!904701 () Bool)

(assert (=> d!1687800 (= c!904701 ((_ is EmptyExpr!14833) lt!2146850))))

(declare-fun e!3258406 () Bool)

(assert (=> d!1687800 (= (matchRSpec!1936 lt!2146850 s!2326) e!3258406)))

(declare-fun b!5236367 () Bool)

(assert (=> b!5236367 (= e!3258406 call!370559)))

(declare-fun b!5236368 () Bool)

(declare-fun e!3258409 () Bool)

(assert (=> b!5236368 (= e!3258409 (matchRSpec!1936 (regTwo!30179 lt!2146850) s!2326))))

(declare-fun b!5236369 () Bool)

(declare-fun e!3258410 () Bool)

(assert (=> b!5236369 (= e!3258410 e!3258409)))

(declare-fun res!2222636 () Bool)

(assert (=> b!5236369 (= res!2222636 (matchRSpec!1936 (regOne!30179 lt!2146850) s!2326))))

(assert (=> b!5236369 (=> res!2222636 e!3258409)))

(declare-fun b!5236370 () Bool)

(declare-fun e!3258404 () Bool)

(assert (=> b!5236370 (= e!3258404 (= s!2326 (Cons!60675 (c!904611 lt!2146850) Nil!60675)))))

(assert (=> b!5236371 (= e!3258405 call!370560)))

(declare-fun bm!370555 () Bool)

(assert (=> bm!370555 (= call!370559 (isEmpty!32603 s!2326))))

(declare-fun b!5236372 () Bool)

(declare-fun c!904704 () Bool)

(assert (=> b!5236372 (= c!904704 ((_ is Union!14833) lt!2146850))))

(assert (=> b!5236372 (= e!3258404 e!3258410)))

(declare-fun b!5236373 () Bool)

(declare-fun c!904703 () Bool)

(assert (=> b!5236373 (= c!904703 ((_ is ElementMatch!14833) lt!2146850))))

(declare-fun e!3258408 () Bool)

(assert (=> b!5236373 (= e!3258408 e!3258404)))

(declare-fun b!5236374 () Bool)

(assert (=> b!5236374 (= e!3258410 e!3258405)))

(assert (=> b!5236374 (= c!904702 ((_ is Star!14833) lt!2146850))))

(assert (=> b!5236375 (= e!3258407 call!370560)))

(declare-fun b!5236376 () Bool)

(assert (=> b!5236376 (= e!3258406 e!3258408)))

(declare-fun res!2222637 () Bool)

(assert (=> b!5236376 (= res!2222637 (not ((_ is EmptyLang!14833) lt!2146850)))))

(assert (=> b!5236376 (=> (not res!2222637) (not e!3258408))))

(assert (= (and d!1687800 c!904701) b!5236367))

(assert (= (and d!1687800 (not c!904701)) b!5236376))

(assert (= (and b!5236376 res!2222637) b!5236373))

(assert (= (and b!5236373 c!904703) b!5236370))

(assert (= (and b!5236373 (not c!904703)) b!5236372))

(assert (= (and b!5236372 c!904704) b!5236369))

(assert (= (and b!5236372 (not c!904704)) b!5236374))

(assert (= (and b!5236369 (not res!2222636)) b!5236368))

(assert (= (and b!5236374 c!904702) b!5236366))

(assert (= (and b!5236374 (not c!904702)) b!5236371))

(assert (= (and b!5236366 (not res!2222638)) b!5236375))

(assert (= (or b!5236375 b!5236371) bm!370554))

(assert (= (or b!5236367 b!5236366) bm!370555))

(declare-fun m!6281592 () Bool)

(assert (=> bm!370554 m!6281592))

(declare-fun m!6281594 () Bool)

(assert (=> b!5236368 m!6281594))

(declare-fun m!6281596 () Bool)

(assert (=> b!5236369 m!6281596))

(assert (=> bm!370555 m!6281480))

(assert (=> b!5236035 d!1687800))

(declare-fun d!1687812 () Bool)

(assert (=> d!1687812 (= (matchR!7018 lt!2146852 s!2326) (matchZipper!1077 lt!2146857 s!2326))))

(declare-fun lt!2146929 () Unit!152678)

(declare-fun choose!38950 ((InoxSet Context!8434) List!60800 Regex!14833 List!60799) Unit!152678)

(assert (=> d!1687812 (= lt!2146929 (choose!38950 lt!2146857 lt!2146882 lt!2146852 s!2326))))

(assert (=> d!1687812 (validRegex!6569 lt!2146852)))

(assert (=> d!1687812 (= (theoremZipperRegexEquiv!267 lt!2146857 lt!2146882 lt!2146852 s!2326) lt!2146929)))

(declare-fun bs!1215344 () Bool)

(assert (= bs!1215344 d!1687812))

(assert (=> bs!1215344 m!6281334))

(assert (=> bs!1215344 m!6281284))

(declare-fun m!6281618 () Bool)

(assert (=> bs!1215344 m!6281618))

(declare-fun m!6281620 () Bool)

(assert (=> bs!1215344 m!6281620))

(assert (=> b!5236035 d!1687812))

(declare-fun b!5236489 () Bool)

(declare-fun e!3258478 () Bool)

(declare-fun derivativeStep!4072 (Regex!14833 C!29936) Regex!14833)

(assert (=> b!5236489 (= e!3258478 (matchR!7018 (derivativeStep!4072 lt!2146852 (head!11218 s!2326)) (tail!10315 s!2326)))))

(declare-fun b!5236490 () Bool)

(declare-fun e!3258479 () Bool)

(assert (=> b!5236490 (= e!3258479 (not (= (head!11218 s!2326) (c!904611 lt!2146852))))))

(declare-fun b!5236491 () Bool)

(declare-fun e!3258477 () Bool)

(assert (=> b!5236491 (= e!3258477 (= (head!11218 s!2326) (c!904611 lt!2146852)))))

(declare-fun b!5236492 () Bool)

(declare-fun res!2222679 () Bool)

(assert (=> b!5236492 (=> res!2222679 e!3258479)))

(assert (=> b!5236492 (= res!2222679 (not (isEmpty!32603 (tail!10315 s!2326))))))

(declare-fun b!5236493 () Bool)

(declare-fun res!2222684 () Bool)

(declare-fun e!3258476 () Bool)

(assert (=> b!5236493 (=> res!2222684 e!3258476)))

(assert (=> b!5236493 (= res!2222684 e!3258477)))

(declare-fun res!2222682 () Bool)

(assert (=> b!5236493 (=> (not res!2222682) (not e!3258477))))

(declare-fun lt!2146941 () Bool)

(assert (=> b!5236493 (= res!2222682 lt!2146941)))

(declare-fun b!5236494 () Bool)

(declare-fun e!3258474 () Bool)

(declare-fun call!370568 () Bool)

(assert (=> b!5236494 (= e!3258474 (= lt!2146941 call!370568))))

(declare-fun b!5236495 () Bool)

(declare-fun e!3258480 () Bool)

(assert (=> b!5236495 (= e!3258480 e!3258479)))

(declare-fun res!2222681 () Bool)

(assert (=> b!5236495 (=> res!2222681 e!3258479)))

(assert (=> b!5236495 (= res!2222681 call!370568)))

(declare-fun b!5236496 () Bool)

(declare-fun e!3258475 () Bool)

(assert (=> b!5236496 (= e!3258475 (not lt!2146941))))

(declare-fun b!5236497 () Bool)

(assert (=> b!5236497 (= e!3258478 (nullable!5002 lt!2146852))))

(declare-fun bm!370563 () Bool)

(assert (=> bm!370563 (= call!370568 (isEmpty!32603 s!2326))))

(declare-fun b!5236498 () Bool)

(declare-fun res!2222677 () Bool)

(assert (=> b!5236498 (=> res!2222677 e!3258476)))

(assert (=> b!5236498 (= res!2222677 (not ((_ is ElementMatch!14833) lt!2146852)))))

(assert (=> b!5236498 (= e!3258475 e!3258476)))

(declare-fun b!5236499 () Bool)

(declare-fun res!2222683 () Bool)

(assert (=> b!5236499 (=> (not res!2222683) (not e!3258477))))

(assert (=> b!5236499 (= res!2222683 (not call!370568))))

(declare-fun d!1687816 () Bool)

(assert (=> d!1687816 e!3258474))

(declare-fun c!904743 () Bool)

(assert (=> d!1687816 (= c!904743 ((_ is EmptyExpr!14833) lt!2146852))))

(assert (=> d!1687816 (= lt!2146941 e!3258478)))

(declare-fun c!904744 () Bool)

(assert (=> d!1687816 (= c!904744 (isEmpty!32603 s!2326))))

(assert (=> d!1687816 (validRegex!6569 lt!2146852)))

(assert (=> d!1687816 (= (matchR!7018 lt!2146852 s!2326) lt!2146941)))

(declare-fun b!5236500 () Bool)

(assert (=> b!5236500 (= e!3258474 e!3258475)))

(declare-fun c!904742 () Bool)

(assert (=> b!5236500 (= c!904742 ((_ is EmptyLang!14833) lt!2146852))))

(declare-fun b!5236501 () Bool)

(assert (=> b!5236501 (= e!3258476 e!3258480)))

(declare-fun res!2222678 () Bool)

(assert (=> b!5236501 (=> (not res!2222678) (not e!3258480))))

(assert (=> b!5236501 (= res!2222678 (not lt!2146941))))

(declare-fun b!5236502 () Bool)

(declare-fun res!2222680 () Bool)

(assert (=> b!5236502 (=> (not res!2222680) (not e!3258477))))

(assert (=> b!5236502 (= res!2222680 (isEmpty!32603 (tail!10315 s!2326)))))

(assert (= (and d!1687816 c!904744) b!5236497))

(assert (= (and d!1687816 (not c!904744)) b!5236489))

(assert (= (and d!1687816 c!904743) b!5236494))

(assert (= (and d!1687816 (not c!904743)) b!5236500))

(assert (= (and b!5236500 c!904742) b!5236496))

(assert (= (and b!5236500 (not c!904742)) b!5236498))

(assert (= (and b!5236498 (not res!2222677)) b!5236493))

(assert (= (and b!5236493 res!2222682) b!5236499))

(assert (= (and b!5236499 res!2222683) b!5236502))

(assert (= (and b!5236502 res!2222680) b!5236491))

(assert (= (and b!5236493 (not res!2222684)) b!5236501))

(assert (= (and b!5236501 res!2222678) b!5236495))

(assert (= (and b!5236495 (not res!2222681)) b!5236492))

(assert (= (and b!5236492 (not res!2222679)) b!5236490))

(assert (= (or b!5236494 b!5236495 b!5236499) bm!370563))

(assert (=> b!5236489 m!6281484))

(assert (=> b!5236489 m!6281484))

(declare-fun m!6281702 () Bool)

(assert (=> b!5236489 m!6281702))

(assert (=> b!5236489 m!6281488))

(assert (=> b!5236489 m!6281702))

(assert (=> b!5236489 m!6281488))

(declare-fun m!6281704 () Bool)

(assert (=> b!5236489 m!6281704))

(declare-fun m!6281706 () Bool)

(assert (=> b!5236497 m!6281706))

(assert (=> b!5236491 m!6281484))

(assert (=> b!5236492 m!6281488))

(assert (=> b!5236492 m!6281488))

(declare-fun m!6281708 () Bool)

(assert (=> b!5236492 m!6281708))

(assert (=> bm!370563 m!6281480))

(assert (=> b!5236502 m!6281488))

(assert (=> b!5236502 m!6281488))

(assert (=> b!5236502 m!6281708))

(assert (=> b!5236490 m!6281484))

(assert (=> d!1687816 m!6281480))

(assert (=> d!1687816 m!6281620))

(assert (=> b!5236035 d!1687816))

(assert (=> b!5236035 d!1687772))

(declare-fun d!1687852 () Bool)

(assert (=> d!1687852 (= (matchR!7018 lt!2146850 s!2326) (matchRSpec!1936 lt!2146850 s!2326))))

(declare-fun lt!2146949 () Unit!152678)

(declare-fun choose!38952 (Regex!14833 List!60799) Unit!152678)

(assert (=> d!1687852 (= lt!2146949 (choose!38952 lt!2146850 s!2326))))

(assert (=> d!1687852 (validRegex!6569 lt!2146850)))

(assert (=> d!1687852 (= (mainMatchTheorem!1936 lt!2146850 s!2326) lt!2146949)))

(declare-fun bs!1215353 () Bool)

(assert (= bs!1215353 d!1687852))

(assert (=> bs!1215353 m!6281336))

(assert (=> bs!1215353 m!6281342))

(declare-fun m!6281722 () Bool)

(assert (=> bs!1215353 m!6281722))

(declare-fun m!6281724 () Bool)

(assert (=> bs!1215353 m!6281724))

(assert (=> b!5236035 d!1687852))

(declare-fun d!1687860 () Bool)

(declare-fun res!2222701 () Bool)

(declare-fun e!3258504 () Bool)

(assert (=> d!1687860 (=> res!2222701 e!3258504)))

(assert (=> d!1687860 (= res!2222701 ((_ is Nil!60674) lt!2146844))))

(assert (=> d!1687860 (= (forall!14259 lt!2146844 lambda!263195) e!3258504)))

(declare-fun b!5236541 () Bool)

(declare-fun e!3258505 () Bool)

(assert (=> b!5236541 (= e!3258504 e!3258505)))

(declare-fun res!2222702 () Bool)

(assert (=> b!5236541 (=> (not res!2222702) (not e!3258505))))

(declare-fun dynLambda!23973 (Int Regex!14833) Bool)

(assert (=> b!5236541 (= res!2222702 (dynLambda!23973 lambda!263195 (h!67122 lt!2146844)))))

(declare-fun b!5236542 () Bool)

(assert (=> b!5236542 (= e!3258505 (forall!14259 (t!373979 lt!2146844) lambda!263195))))

(assert (= (and d!1687860 (not res!2222701)) b!5236541))

(assert (= (and b!5236541 res!2222702) b!5236542))

(declare-fun b_lambda!202425 () Bool)

(assert (=> (not b_lambda!202425) (not b!5236541)))

(declare-fun m!6281726 () Bool)

(assert (=> b!5236541 m!6281726))

(declare-fun m!6281728 () Bool)

(assert (=> b!5236542 m!6281728))

(assert (=> b!5236035 d!1687860))

(declare-fun bs!1215354 () Bool)

(declare-fun d!1687862 () Bool)

(assert (= bs!1215354 (and d!1687862 b!5236035)))

(declare-fun lambda!263231 () Int)

(assert (=> bs!1215354 (= lambda!263231 lambda!263195)))

(declare-fun bs!1215355 () Bool)

(assert (= bs!1215355 (and d!1687862 d!1687782)))

(assert (=> bs!1215355 (= lambda!263231 lambda!263210)))

(declare-fun b!5236543 () Bool)

(declare-fun e!3258510 () Bool)

(assert (=> b!5236543 (= e!3258510 (isEmpty!32599 (t!373979 lt!2146856)))))

(declare-fun b!5236544 () Bool)

(declare-fun e!3258508 () Regex!14833)

(assert (=> b!5236544 (= e!3258508 (Concat!23678 (h!67122 lt!2146856) (generalisedConcat!502 (t!373979 lt!2146856))))))

(declare-fun b!5236545 () Bool)

(declare-fun e!3258506 () Bool)

(declare-fun e!3258509 () Bool)

(assert (=> b!5236545 (= e!3258506 e!3258509)))

(declare-fun c!904756 () Bool)

(assert (=> b!5236545 (= c!904756 (isEmpty!32599 (tail!10316 lt!2146856)))))

(declare-fun b!5236546 () Bool)

(declare-fun e!3258511 () Bool)

(assert (=> b!5236546 (= e!3258511 e!3258506)))

(declare-fun c!904757 () Bool)

(assert (=> b!5236546 (= c!904757 (isEmpty!32599 lt!2146856))))

(declare-fun b!5236547 () Bool)

(declare-fun e!3258507 () Regex!14833)

(assert (=> b!5236547 (= e!3258507 e!3258508)))

(declare-fun c!904759 () Bool)

(assert (=> b!5236547 (= c!904759 ((_ is Cons!60674) lt!2146856))))

(assert (=> d!1687862 e!3258511))

(declare-fun res!2222703 () Bool)

(assert (=> d!1687862 (=> (not res!2222703) (not e!3258511))))

(declare-fun lt!2146952 () Regex!14833)

(assert (=> d!1687862 (= res!2222703 (validRegex!6569 lt!2146952))))

(assert (=> d!1687862 (= lt!2146952 e!3258507)))

(declare-fun c!904758 () Bool)

(assert (=> d!1687862 (= c!904758 e!3258510)))

(declare-fun res!2222704 () Bool)

(assert (=> d!1687862 (=> (not res!2222704) (not e!3258510))))

(assert (=> d!1687862 (= res!2222704 ((_ is Cons!60674) lt!2146856))))

(assert (=> d!1687862 (forall!14259 lt!2146856 lambda!263231)))

(assert (=> d!1687862 (= (generalisedConcat!502 lt!2146856) lt!2146952)))

(declare-fun b!5236548 () Bool)

(assert (=> b!5236548 (= e!3258509 (= lt!2146952 (head!11219 lt!2146856)))))

(declare-fun b!5236549 () Bool)

(assert (=> b!5236549 (= e!3258507 (h!67122 lt!2146856))))

(declare-fun b!5236550 () Bool)

(assert (=> b!5236550 (= e!3258509 (isConcat!308 lt!2146952))))

(declare-fun b!5236551 () Bool)

(assert (=> b!5236551 (= e!3258508 EmptyExpr!14833)))

(declare-fun b!5236552 () Bool)

(assert (=> b!5236552 (= e!3258506 (isEmptyExpr!785 lt!2146952))))

(assert (= (and d!1687862 res!2222704) b!5236543))

(assert (= (and d!1687862 c!904758) b!5236549))

(assert (= (and d!1687862 (not c!904758)) b!5236547))

(assert (= (and b!5236547 c!904759) b!5236544))

(assert (= (and b!5236547 (not c!904759)) b!5236551))

(assert (= (and d!1687862 res!2222703) b!5236546))

(assert (= (and b!5236546 c!904757) b!5236552))

(assert (= (and b!5236546 (not c!904757)) b!5236545))

(assert (= (and b!5236545 c!904756) b!5236548))

(assert (= (and b!5236545 (not c!904756)) b!5236550))

(declare-fun m!6281730 () Bool)

(assert (=> b!5236546 m!6281730))

(declare-fun m!6281732 () Bool)

(assert (=> b!5236545 m!6281732))

(assert (=> b!5236545 m!6281732))

(declare-fun m!6281734 () Bool)

(assert (=> b!5236545 m!6281734))

(declare-fun m!6281736 () Bool)

(assert (=> b!5236550 m!6281736))

(declare-fun m!6281738 () Bool)

(assert (=> b!5236543 m!6281738))

(declare-fun m!6281740 () Bool)

(assert (=> b!5236552 m!6281740))

(declare-fun m!6281742 () Bool)

(assert (=> d!1687862 m!6281742))

(declare-fun m!6281744 () Bool)

(assert (=> d!1687862 m!6281744))

(declare-fun m!6281746 () Bool)

(assert (=> b!5236544 m!6281746))

(declare-fun m!6281748 () Bool)

(assert (=> b!5236548 m!6281748))

(assert (=> b!5236035 d!1687862))

(declare-fun d!1687864 () Bool)

(assert (=> d!1687864 (= (matchR!7018 lt!2146850 s!2326) (matchZipper!1077 lt!2146846 s!2326))))

(declare-fun lt!2146954 () Unit!152678)

(assert (=> d!1687864 (= lt!2146954 (choose!38950 lt!2146846 lt!2146881 lt!2146850 s!2326))))

(assert (=> d!1687864 (validRegex!6569 lt!2146850)))

(assert (=> d!1687864 (= (theoremZipperRegexEquiv!267 lt!2146846 lt!2146881 lt!2146850 s!2326) lt!2146954)))

(declare-fun bs!1215360 () Bool)

(assert (= bs!1215360 d!1687864))

(assert (=> bs!1215360 m!6281336))

(assert (=> bs!1215360 m!6281382))

(declare-fun m!6281762 () Bool)

(assert (=> bs!1215360 m!6281762))

(assert (=> bs!1215360 m!6281724))

(assert (=> b!5236035 d!1687864))

(declare-fun b!5236563 () Bool)

(declare-fun e!3258522 () Bool)

(assert (=> b!5236563 (= e!3258522 (matchR!7018 (derivativeStep!4072 lt!2146850 (head!11218 s!2326)) (tail!10315 s!2326)))))

(declare-fun b!5236564 () Bool)

(declare-fun e!3258523 () Bool)

(assert (=> b!5236564 (= e!3258523 (not (= (head!11218 s!2326) (c!904611 lt!2146850))))))

(declare-fun b!5236565 () Bool)

(declare-fun e!3258521 () Bool)

(assert (=> b!5236565 (= e!3258521 (= (head!11218 s!2326) (c!904611 lt!2146850)))))

(declare-fun b!5236566 () Bool)

(declare-fun res!2222709 () Bool)

(assert (=> b!5236566 (=> res!2222709 e!3258523)))

(assert (=> b!5236566 (= res!2222709 (not (isEmpty!32603 (tail!10315 s!2326))))))

(declare-fun b!5236567 () Bool)

(declare-fun res!2222714 () Bool)

(declare-fun e!3258520 () Bool)

(assert (=> b!5236567 (=> res!2222714 e!3258520)))

(assert (=> b!5236567 (= res!2222714 e!3258521)))

(declare-fun res!2222712 () Bool)

(assert (=> b!5236567 (=> (not res!2222712) (not e!3258521))))

(declare-fun lt!2146955 () Bool)

(assert (=> b!5236567 (= res!2222712 lt!2146955)))

(declare-fun b!5236568 () Bool)

(declare-fun e!3258518 () Bool)

(declare-fun call!370570 () Bool)

(assert (=> b!5236568 (= e!3258518 (= lt!2146955 call!370570))))

(declare-fun b!5236569 () Bool)

(declare-fun e!3258524 () Bool)

(assert (=> b!5236569 (= e!3258524 e!3258523)))

(declare-fun res!2222711 () Bool)

(assert (=> b!5236569 (=> res!2222711 e!3258523)))

(assert (=> b!5236569 (= res!2222711 call!370570)))

(declare-fun b!5236570 () Bool)

(declare-fun e!3258519 () Bool)

(assert (=> b!5236570 (= e!3258519 (not lt!2146955))))

(declare-fun b!5236571 () Bool)

(assert (=> b!5236571 (= e!3258522 (nullable!5002 lt!2146850))))

(declare-fun bm!370565 () Bool)

(assert (=> bm!370565 (= call!370570 (isEmpty!32603 s!2326))))

(declare-fun b!5236572 () Bool)

(declare-fun res!2222707 () Bool)

(assert (=> b!5236572 (=> res!2222707 e!3258520)))

(assert (=> b!5236572 (= res!2222707 (not ((_ is ElementMatch!14833) lt!2146850)))))

(assert (=> b!5236572 (= e!3258519 e!3258520)))

(declare-fun b!5236573 () Bool)

(declare-fun res!2222713 () Bool)

(assert (=> b!5236573 (=> (not res!2222713) (not e!3258521))))

(assert (=> b!5236573 (= res!2222713 (not call!370570))))

(declare-fun d!1687866 () Bool)

(assert (=> d!1687866 e!3258518))

(declare-fun c!904765 () Bool)

(assert (=> d!1687866 (= c!904765 ((_ is EmptyExpr!14833) lt!2146850))))

(assert (=> d!1687866 (= lt!2146955 e!3258522)))

(declare-fun c!904766 () Bool)

(assert (=> d!1687866 (= c!904766 (isEmpty!32603 s!2326))))

(assert (=> d!1687866 (validRegex!6569 lt!2146850)))

(assert (=> d!1687866 (= (matchR!7018 lt!2146850 s!2326) lt!2146955)))

(declare-fun b!5236574 () Bool)

(assert (=> b!5236574 (= e!3258518 e!3258519)))

(declare-fun c!904764 () Bool)

(assert (=> b!5236574 (= c!904764 ((_ is EmptyLang!14833) lt!2146850))))

(declare-fun b!5236575 () Bool)

(assert (=> b!5236575 (= e!3258520 e!3258524)))

(declare-fun res!2222708 () Bool)

(assert (=> b!5236575 (=> (not res!2222708) (not e!3258524))))

(assert (=> b!5236575 (= res!2222708 (not lt!2146955))))

(declare-fun b!5236576 () Bool)

(declare-fun res!2222710 () Bool)

(assert (=> b!5236576 (=> (not res!2222710) (not e!3258521))))

(assert (=> b!5236576 (= res!2222710 (isEmpty!32603 (tail!10315 s!2326)))))

(assert (= (and d!1687866 c!904766) b!5236571))

(assert (= (and d!1687866 (not c!904766)) b!5236563))

(assert (= (and d!1687866 c!904765) b!5236568))

(assert (= (and d!1687866 (not c!904765)) b!5236574))

(assert (= (and b!5236574 c!904764) b!5236570))

(assert (= (and b!5236574 (not c!904764)) b!5236572))

(assert (= (and b!5236572 (not res!2222707)) b!5236567))

(assert (= (and b!5236567 res!2222712) b!5236573))

(assert (= (and b!5236573 res!2222713) b!5236576))

(assert (= (and b!5236576 res!2222710) b!5236565))

(assert (= (and b!5236567 (not res!2222714)) b!5236575))

(assert (= (and b!5236575 res!2222708) b!5236569))

(assert (= (and b!5236569 (not res!2222711)) b!5236566))

(assert (= (and b!5236566 (not res!2222709)) b!5236564))

(assert (= (or b!5236568 b!5236569 b!5236573) bm!370565))

(assert (=> b!5236563 m!6281484))

(assert (=> b!5236563 m!6281484))

(declare-fun m!6281772 () Bool)

(assert (=> b!5236563 m!6281772))

(assert (=> b!5236563 m!6281488))

(assert (=> b!5236563 m!6281772))

(assert (=> b!5236563 m!6281488))

(declare-fun m!6281774 () Bool)

(assert (=> b!5236563 m!6281774))

(declare-fun m!6281776 () Bool)

(assert (=> b!5236571 m!6281776))

(assert (=> b!5236565 m!6281484))

(assert (=> b!5236566 m!6281488))

(assert (=> b!5236566 m!6281488))

(assert (=> b!5236566 m!6281708))

(assert (=> bm!370565 m!6281480))

(assert (=> b!5236576 m!6281488))

(assert (=> b!5236576 m!6281488))

(assert (=> b!5236576 m!6281708))

(assert (=> b!5236564 m!6281484))

(assert (=> d!1687866 m!6281480))

(assert (=> d!1687866 m!6281724))

(assert (=> b!5236035 d!1687866))

(declare-fun d!1687870 () Bool)

(declare-fun e!3258540 () Bool)

(assert (=> d!1687870 (= (matchZipper!1077 ((_ map or) lt!2146864 lt!2146871) (t!373980 s!2326)) e!3258540)))

(declare-fun res!2222726 () Bool)

(assert (=> d!1687870 (=> res!2222726 e!3258540)))

(assert (=> d!1687870 (= res!2222726 (matchZipper!1077 lt!2146864 (t!373980 s!2326)))))

(declare-fun lt!2146958 () Unit!152678)

(declare-fun choose!38955 ((InoxSet Context!8434) (InoxSet Context!8434) List!60799) Unit!152678)

(assert (=> d!1687870 (= lt!2146958 (choose!38955 lt!2146864 lt!2146871 (t!373980 s!2326)))))

(assert (=> d!1687870 (= (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146864 lt!2146871 (t!373980 s!2326)) lt!2146958)))

(declare-fun b!5236596 () Bool)

(assert (=> b!5236596 (= e!3258540 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(assert (= (and d!1687870 (not res!2222726)) b!5236596))

(assert (=> d!1687870 m!6281304))

(assert (=> d!1687870 m!6281302))

(declare-fun m!6281782 () Bool)

(assert (=> d!1687870 m!6281782))

(assert (=> b!5236596 m!6281308))

(assert (=> b!5236054 d!1687870))

(declare-fun d!1687874 () Bool)

(declare-fun c!904771 () Bool)

(assert (=> d!1687874 (= c!904771 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258541 () Bool)

(assert (=> d!1687874 (= (matchZipper!1077 lt!2146864 (t!373980 s!2326)) e!3258541)))

(declare-fun b!5236597 () Bool)

(assert (=> b!5236597 (= e!3258541 (nullableZipper!1250 lt!2146864))))

(declare-fun b!5236598 () Bool)

(assert (=> b!5236598 (= e!3258541 (matchZipper!1077 (derivationStepZipper!1094 lt!2146864 (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687874 c!904771) b!5236597))

(assert (= (and d!1687874 (not c!904771)) b!5236598))

(declare-fun m!6281784 () Bool)

(assert (=> d!1687874 m!6281784))

(declare-fun m!6281786 () Bool)

(assert (=> b!5236597 m!6281786))

(declare-fun m!6281788 () Bool)

(assert (=> b!5236598 m!6281788))

(assert (=> b!5236598 m!6281788))

(declare-fun m!6281790 () Bool)

(assert (=> b!5236598 m!6281790))

(declare-fun m!6281792 () Bool)

(assert (=> b!5236598 m!6281792))

(assert (=> b!5236598 m!6281790))

(assert (=> b!5236598 m!6281792))

(declare-fun m!6281794 () Bool)

(assert (=> b!5236598 m!6281794))

(assert (=> b!5236054 d!1687874))

(declare-fun d!1687876 () Bool)

(declare-fun c!904772 () Bool)

(assert (=> d!1687876 (= c!904772 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258542 () Bool)

(assert (=> d!1687876 (= (matchZipper!1077 ((_ map or) lt!2146864 lt!2146871) (t!373980 s!2326)) e!3258542)))

(declare-fun b!5236599 () Bool)

(assert (=> b!5236599 (= e!3258542 (nullableZipper!1250 ((_ map or) lt!2146864 lt!2146871)))))

(declare-fun b!5236600 () Bool)

(assert (=> b!5236600 (= e!3258542 (matchZipper!1077 (derivationStepZipper!1094 ((_ map or) lt!2146864 lt!2146871) (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687876 c!904772) b!5236599))

(assert (= (and d!1687876 (not c!904772)) b!5236600))

(assert (=> d!1687876 m!6281784))

(declare-fun m!6281798 () Bool)

(assert (=> b!5236599 m!6281798))

(assert (=> b!5236600 m!6281788))

(assert (=> b!5236600 m!6281788))

(declare-fun m!6281804 () Bool)

(assert (=> b!5236600 m!6281804))

(assert (=> b!5236600 m!6281792))

(assert (=> b!5236600 m!6281804))

(assert (=> b!5236600 m!6281792))

(declare-fun m!6281806 () Bool)

(assert (=> b!5236600 m!6281806))

(assert (=> b!5236054 d!1687876))

(declare-fun d!1687880 () Bool)

(declare-fun c!904777 () Bool)

(assert (=> d!1687880 (= c!904777 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258549 () Bool)

(assert (=> d!1687880 (= (matchZipper!1077 lt!2146865 (t!373980 s!2326)) e!3258549)))

(declare-fun b!5236611 () Bool)

(assert (=> b!5236611 (= e!3258549 (nullableZipper!1250 lt!2146865))))

(declare-fun b!5236612 () Bool)

(assert (=> b!5236612 (= e!3258549 (matchZipper!1077 (derivationStepZipper!1094 lt!2146865 (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687880 c!904777) b!5236611))

(assert (= (and d!1687880 (not c!904777)) b!5236612))

(assert (=> d!1687880 m!6281784))

(declare-fun m!6281808 () Bool)

(assert (=> b!5236611 m!6281808))

(assert (=> b!5236612 m!6281788))

(assert (=> b!5236612 m!6281788))

(declare-fun m!6281810 () Bool)

(assert (=> b!5236612 m!6281810))

(assert (=> b!5236612 m!6281792))

(assert (=> b!5236612 m!6281810))

(assert (=> b!5236612 m!6281792))

(declare-fun m!6281812 () Bool)

(assert (=> b!5236612 m!6281812))

(assert (=> b!5236034 d!1687880))

(declare-fun d!1687882 () Bool)

(declare-fun choose!38957 ((InoxSet Context!8434) Int) (InoxSet Context!8434))

(assert (=> d!1687882 (= (flatMap!560 lt!2146846 lambda!263194) (choose!38957 lt!2146846 lambda!263194))))

(declare-fun bs!1215377 () Bool)

(assert (= bs!1215377 d!1687882))

(declare-fun m!6281814 () Bool)

(assert (=> bs!1215377 m!6281814))

(assert (=> b!5236033 d!1687882))

(declare-fun d!1687884 () Bool)

(declare-fun nullableFct!1402 (Regex!14833) Bool)

(assert (=> d!1687884 (= (nullable!5002 (regTwo!30179 (regOne!30178 r!7292))) (nullableFct!1402 (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun bs!1215379 () Bool)

(assert (= bs!1215379 d!1687884))

(declare-fun m!6281836 () Bool)

(assert (=> bs!1215379 m!6281836))

(assert (=> b!5236033 d!1687884))

(declare-fun b!5236649 () Bool)

(declare-fun e!3258572 () (InoxSet Context!8434))

(assert (=> b!5236649 (= e!3258572 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236650 () Bool)

(declare-fun e!3258571 () Bool)

(assert (=> b!5236650 (= e!3258571 (nullable!5002 (h!67122 (exprs!4717 lt!2146859))))))

(declare-fun bm!370579 () Bool)

(declare-fun call!370584 () (InoxSet Context!8434))

(assert (=> bm!370579 (= call!370584 (derivationStepZipperDown!281 (h!67122 (exprs!4717 lt!2146859)) (Context!8435 (t!373979 (exprs!4717 lt!2146859))) (h!67123 s!2326)))))

(declare-fun e!3258573 () (InoxSet Context!8434))

(declare-fun b!5236651 () Bool)

(assert (=> b!5236651 (= e!3258573 ((_ map or) call!370584 (derivationStepZipperUp!205 (Context!8435 (t!373979 (exprs!4717 lt!2146859))) (h!67123 s!2326))))))

(declare-fun d!1687888 () Bool)

(declare-fun c!904794 () Bool)

(assert (=> d!1687888 (= c!904794 e!3258571)))

(declare-fun res!2222735 () Bool)

(assert (=> d!1687888 (=> (not res!2222735) (not e!3258571))))

(assert (=> d!1687888 (= res!2222735 ((_ is Cons!60674) (exprs!4717 lt!2146859)))))

(assert (=> d!1687888 (= (derivationStepZipperUp!205 lt!2146859 (h!67123 s!2326)) e!3258573)))

(declare-fun b!5236652 () Bool)

(assert (=> b!5236652 (= e!3258572 call!370584)))

(declare-fun b!5236653 () Bool)

(assert (=> b!5236653 (= e!3258573 e!3258572)))

(declare-fun c!904793 () Bool)

(assert (=> b!5236653 (= c!904793 ((_ is Cons!60674) (exprs!4717 lt!2146859)))))

(assert (= (and d!1687888 res!2222735) b!5236650))

(assert (= (and d!1687888 c!904794) b!5236651))

(assert (= (and d!1687888 (not c!904794)) b!5236653))

(assert (= (and b!5236653 c!904793) b!5236652))

(assert (= (and b!5236653 (not c!904793)) b!5236649))

(assert (= (or b!5236651 b!5236652) bm!370579))

(declare-fun m!6281876 () Bool)

(assert (=> b!5236650 m!6281876))

(declare-fun m!6281878 () Bool)

(assert (=> bm!370579 m!6281878))

(declare-fun m!6281880 () Bool)

(assert (=> b!5236651 m!6281880))

(assert (=> b!5236033 d!1687888))

(declare-fun d!1687908 () Bool)

(declare-fun c!904795 () Bool)

(assert (=> d!1687908 (= c!904795 (isEmpty!32603 s!2326))))

(declare-fun e!3258574 () Bool)

(assert (=> d!1687908 (= (matchZipper!1077 lt!2146846 s!2326) e!3258574)))

(declare-fun b!5236654 () Bool)

(assert (=> b!5236654 (= e!3258574 (nullableZipper!1250 lt!2146846))))

(declare-fun b!5236655 () Bool)

(assert (=> b!5236655 (= e!3258574 (matchZipper!1077 (derivationStepZipper!1094 lt!2146846 (head!11218 s!2326)) (tail!10315 s!2326)))))

(assert (= (and d!1687908 c!904795) b!5236654))

(assert (= (and d!1687908 (not c!904795)) b!5236655))

(assert (=> d!1687908 m!6281480))

(declare-fun m!6281882 () Bool)

(assert (=> b!5236654 m!6281882))

(assert (=> b!5236655 m!6281484))

(assert (=> b!5236655 m!6281484))

(declare-fun m!6281884 () Bool)

(assert (=> b!5236655 m!6281884))

(assert (=> b!5236655 m!6281488))

(assert (=> b!5236655 m!6281884))

(assert (=> b!5236655 m!6281488))

(declare-fun m!6281886 () Bool)

(assert (=> b!5236655 m!6281886))

(assert (=> b!5236033 d!1687908))

(declare-fun b!5236656 () Bool)

(declare-fun e!3258576 () (InoxSet Context!8434))

(assert (=> b!5236656 (= e!3258576 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236657 () Bool)

(declare-fun e!3258575 () Bool)

(assert (=> b!5236657 (= e!3258575 (nullable!5002 (h!67122 (exprs!4717 lt!2146845))))))

(declare-fun bm!370580 () Bool)

(declare-fun call!370585 () (InoxSet Context!8434))

(assert (=> bm!370580 (= call!370585 (derivationStepZipperDown!281 (h!67122 (exprs!4717 lt!2146845)) (Context!8435 (t!373979 (exprs!4717 lt!2146845))) (h!67123 s!2326)))))

(declare-fun b!5236658 () Bool)

(declare-fun e!3258577 () (InoxSet Context!8434))

(assert (=> b!5236658 (= e!3258577 ((_ map or) call!370585 (derivationStepZipperUp!205 (Context!8435 (t!373979 (exprs!4717 lt!2146845))) (h!67123 s!2326))))))

(declare-fun d!1687910 () Bool)

(declare-fun c!904797 () Bool)

(assert (=> d!1687910 (= c!904797 e!3258575)))

(declare-fun res!2222736 () Bool)

(assert (=> d!1687910 (=> (not res!2222736) (not e!3258575))))

(assert (=> d!1687910 (= res!2222736 ((_ is Cons!60674) (exprs!4717 lt!2146845)))))

(assert (=> d!1687910 (= (derivationStepZipperUp!205 lt!2146845 (h!67123 s!2326)) e!3258577)))

(declare-fun b!5236659 () Bool)

(assert (=> b!5236659 (= e!3258576 call!370585)))

(declare-fun b!5236660 () Bool)

(assert (=> b!5236660 (= e!3258577 e!3258576)))

(declare-fun c!904796 () Bool)

(assert (=> b!5236660 (= c!904796 ((_ is Cons!60674) (exprs!4717 lt!2146845)))))

(assert (= (and d!1687910 res!2222736) b!5236657))

(assert (= (and d!1687910 c!904797) b!5236658))

(assert (= (and d!1687910 (not c!904797)) b!5236660))

(assert (= (and b!5236660 c!904796) b!5236659))

(assert (= (and b!5236660 (not c!904796)) b!5236656))

(assert (= (or b!5236658 b!5236659) bm!370580))

(declare-fun m!6281888 () Bool)

(assert (=> b!5236657 m!6281888))

(declare-fun m!6281890 () Bool)

(assert (=> bm!370580 m!6281890))

(declare-fun m!6281892 () Bool)

(assert (=> b!5236658 m!6281892))

(assert (=> b!5236033 d!1687910))

(declare-fun d!1687912 () Bool)

(declare-fun dynLambda!23975 (Int Context!8434) (InoxSet Context!8434))

(assert (=> d!1687912 (= (flatMap!560 lt!2146857 lambda!263194) (dynLambda!23975 lambda!263194 lt!2146845))))

(declare-fun lt!2146968 () Unit!152678)

(declare-fun choose!38958 ((InoxSet Context!8434) Context!8434 Int) Unit!152678)

(assert (=> d!1687912 (= lt!2146968 (choose!38958 lt!2146857 lt!2146845 lambda!263194))))

(assert (=> d!1687912 (= lt!2146857 (store ((as const (Array Context!8434 Bool)) false) lt!2146845 true))))

(assert (=> d!1687912 (= (lemmaFlatMapOnSingletonSet!92 lt!2146857 lt!2146845 lambda!263194) lt!2146968)))

(declare-fun b_lambda!202431 () Bool)

(assert (=> (not b_lambda!202431) (not d!1687912)))

(declare-fun bs!1215398 () Bool)

(assert (= bs!1215398 d!1687912))

(assert (=> bs!1215398 m!6281400))

(declare-fun m!6281914 () Bool)

(assert (=> bs!1215398 m!6281914))

(declare-fun m!6281916 () Bool)

(assert (=> bs!1215398 m!6281916))

(assert (=> bs!1215398 m!6281394))

(assert (=> b!5236033 d!1687912))

(declare-fun d!1687916 () Bool)

(assert (=> d!1687916 (= (flatMap!560 lt!2146846 lambda!263194) (dynLambda!23975 lambda!263194 lt!2146859))))

(declare-fun lt!2146969 () Unit!152678)

(assert (=> d!1687916 (= lt!2146969 (choose!38958 lt!2146846 lt!2146859 lambda!263194))))

(assert (=> d!1687916 (= lt!2146846 (store ((as const (Array Context!8434 Bool)) false) lt!2146859 true))))

(assert (=> d!1687916 (= (lemmaFlatMapOnSingletonSet!92 lt!2146846 lt!2146859 lambda!263194) lt!2146969)))

(declare-fun b_lambda!202433 () Bool)

(assert (=> (not b_lambda!202433) (not d!1687916)))

(declare-fun bs!1215399 () Bool)

(assert (= bs!1215399 d!1687916))

(assert (=> bs!1215399 m!6281388))

(declare-fun m!6281918 () Bool)

(assert (=> bs!1215399 m!6281918))

(declare-fun m!6281920 () Bool)

(assert (=> bs!1215399 m!6281920))

(assert (=> bs!1215399 m!6281378))

(assert (=> b!5236033 d!1687916))

(declare-fun d!1687918 () Bool)

(assert (=> d!1687918 (= (nullable!5002 (regOne!30179 (regOne!30178 r!7292))) (nullableFct!1402 (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun bs!1215400 () Bool)

(assert (= bs!1215400 d!1687918))

(declare-fun m!6281922 () Bool)

(assert (=> bs!1215400 m!6281922))

(assert (=> b!5236033 d!1687918))

(declare-fun d!1687920 () Bool)

(declare-fun c!904802 () Bool)

(assert (=> d!1687920 (= c!904802 (isEmpty!32603 s!2326))))

(declare-fun e!3258586 () Bool)

(assert (=> d!1687920 (= (matchZipper!1077 z!1189 s!2326) e!3258586)))

(declare-fun b!5236681 () Bool)

(assert (=> b!5236681 (= e!3258586 (nullableZipper!1250 z!1189))))

(declare-fun b!5236682 () Bool)

(assert (=> b!5236682 (= e!3258586 (matchZipper!1077 (derivationStepZipper!1094 z!1189 (head!11218 s!2326)) (tail!10315 s!2326)))))

(assert (= (and d!1687920 c!904802) b!5236681))

(assert (= (and d!1687920 (not c!904802)) b!5236682))

(assert (=> d!1687920 m!6281480))

(declare-fun m!6281924 () Bool)

(assert (=> b!5236681 m!6281924))

(assert (=> b!5236682 m!6281484))

(assert (=> b!5236682 m!6281484))

(declare-fun m!6281926 () Bool)

(assert (=> b!5236682 m!6281926))

(assert (=> b!5236682 m!6281488))

(assert (=> b!5236682 m!6281926))

(assert (=> b!5236682 m!6281488))

(declare-fun m!6281928 () Bool)

(assert (=> b!5236682 m!6281928))

(assert (=> b!5236033 d!1687920))

(declare-fun d!1687922 () Bool)

(assert (=> d!1687922 (= (flatMap!560 lt!2146857 lambda!263194) (choose!38957 lt!2146857 lambda!263194))))

(declare-fun bs!1215401 () Bool)

(assert (= bs!1215401 d!1687922))

(declare-fun m!6281930 () Bool)

(assert (=> bs!1215401 m!6281930))

(assert (=> b!5236033 d!1687922))

(declare-fun b!5236745 () Bool)

(declare-fun e!3258622 () Bool)

(assert (=> b!5236745 (= e!3258622 (matchR!7018 (regTwo!30178 r!7292) s!2326))))

(declare-fun b!5236746 () Bool)

(declare-fun res!2222750 () Bool)

(declare-fun e!3258620 () Bool)

(assert (=> b!5236746 (=> (not res!2222750) (not e!3258620))))

(declare-fun lt!2146976 () Option!14944)

(declare-fun get!20852 (Option!14944) tuple2!64064)

(assert (=> b!5236746 (= res!2222750 (matchR!7018 (regOne!30178 r!7292) (_1!35335 (get!20852 lt!2146976))))))

(declare-fun b!5236747 () Bool)

(declare-fun lt!2146977 () Unit!152678)

(declare-fun lt!2146978 () Unit!152678)

(assert (=> b!5236747 (= lt!2146977 lt!2146978)))

(declare-fun ++!13230 (List!60799 List!60799) List!60799)

(assert (=> b!5236747 (= (++!13230 (++!13230 Nil!60675 (Cons!60675 (h!67123 s!2326) Nil!60675)) (t!373980 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1645 (List!60799 C!29936 List!60799 List!60799) Unit!152678)

(assert (=> b!5236747 (= lt!2146978 (lemmaMoveElementToOtherListKeepsConcatEq!1645 Nil!60675 (h!67123 s!2326) (t!373980 s!2326) s!2326))))

(declare-fun e!3258618 () Option!14944)

(assert (=> b!5236747 (= e!3258618 (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) (++!13230 Nil!60675 (Cons!60675 (h!67123 s!2326) Nil!60675)) (t!373980 s!2326) s!2326))))

(declare-fun b!5236748 () Bool)

(declare-fun res!2222749 () Bool)

(assert (=> b!5236748 (=> (not res!2222749) (not e!3258620))))

(assert (=> b!5236748 (= res!2222749 (matchR!7018 (regTwo!30178 r!7292) (_2!35335 (get!20852 lt!2146976))))))

(declare-fun b!5236749 () Bool)

(assert (=> b!5236749 (= e!3258620 (= (++!13230 (_1!35335 (get!20852 lt!2146976)) (_2!35335 (get!20852 lt!2146976))) s!2326))))

(declare-fun b!5236750 () Bool)

(declare-fun e!3258619 () Bool)

(assert (=> b!5236750 (= e!3258619 (not (isDefined!11647 lt!2146976)))))

(declare-fun b!5236751 () Bool)

(declare-fun e!3258621 () Option!14944)

(assert (=> b!5236751 (= e!3258621 (Some!14943 (tuple2!64065 Nil!60675 s!2326)))))

(declare-fun b!5236752 () Bool)

(assert (=> b!5236752 (= e!3258618 None!14943)))

(declare-fun b!5236753 () Bool)

(assert (=> b!5236753 (= e!3258621 e!3258618)))

(declare-fun c!904807 () Bool)

(assert (=> b!5236753 (= c!904807 ((_ is Nil!60675) s!2326))))

(declare-fun d!1687924 () Bool)

(assert (=> d!1687924 e!3258619))

(declare-fun res!2222751 () Bool)

(assert (=> d!1687924 (=> res!2222751 e!3258619)))

(assert (=> d!1687924 (= res!2222751 e!3258620)))

(declare-fun res!2222753 () Bool)

(assert (=> d!1687924 (=> (not res!2222753) (not e!3258620))))

(assert (=> d!1687924 (= res!2222753 (isDefined!11647 lt!2146976))))

(assert (=> d!1687924 (= lt!2146976 e!3258621)))

(declare-fun c!904808 () Bool)

(assert (=> d!1687924 (= c!904808 e!3258622)))

(declare-fun res!2222752 () Bool)

(assert (=> d!1687924 (=> (not res!2222752) (not e!3258622))))

(assert (=> d!1687924 (= res!2222752 (matchR!7018 (regOne!30178 r!7292) Nil!60675))))

(assert (=> d!1687924 (validRegex!6569 (regOne!30178 r!7292))))

(assert (=> d!1687924 (= (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) Nil!60675 s!2326 s!2326) lt!2146976)))

(assert (= (and d!1687924 res!2222752) b!5236745))

(assert (= (and d!1687924 c!904808) b!5236751))

(assert (= (and d!1687924 (not c!904808)) b!5236753))

(assert (= (and b!5236753 c!904807) b!5236752))

(assert (= (and b!5236753 (not c!904807)) b!5236747))

(assert (= (and d!1687924 res!2222753) b!5236746))

(assert (= (and b!5236746 res!2222750) b!5236748))

(assert (= (and b!5236748 res!2222749) b!5236749))

(assert (= (and d!1687924 (not res!2222751)) b!5236750))

(declare-fun m!6281938 () Bool)

(assert (=> b!5236750 m!6281938))

(declare-fun m!6281940 () Bool)

(assert (=> b!5236747 m!6281940))

(assert (=> b!5236747 m!6281940))

(declare-fun m!6281942 () Bool)

(assert (=> b!5236747 m!6281942))

(declare-fun m!6281944 () Bool)

(assert (=> b!5236747 m!6281944))

(assert (=> b!5236747 m!6281940))

(declare-fun m!6281946 () Bool)

(assert (=> b!5236747 m!6281946))

(declare-fun m!6281948 () Bool)

(assert (=> b!5236749 m!6281948))

(declare-fun m!6281950 () Bool)

(assert (=> b!5236749 m!6281950))

(declare-fun m!6281952 () Bool)

(assert (=> b!5236745 m!6281952))

(assert (=> d!1687924 m!6281938))

(declare-fun m!6281954 () Bool)

(assert (=> d!1687924 m!6281954))

(declare-fun m!6281956 () Bool)

(assert (=> d!1687924 m!6281956))

(assert (=> b!5236746 m!6281948))

(declare-fun m!6281958 () Bool)

(assert (=> b!5236746 m!6281958))

(assert (=> b!5236748 m!6281948))

(declare-fun m!6281960 () Bool)

(assert (=> b!5236748 m!6281960))

(assert (=> b!5236052 d!1687924))

(declare-fun d!1687934 () Bool)

(declare-fun choose!38960 (Int) Bool)

(assert (=> d!1687934 (= (Exists!2014 lambda!263193) (choose!38960 lambda!263193))))

(declare-fun bs!1215406 () Bool)

(assert (= bs!1215406 d!1687934))

(declare-fun m!6281962 () Bool)

(assert (=> bs!1215406 m!6281962))

(assert (=> b!5236052 d!1687934))

(declare-fun d!1687936 () Bool)

(assert (=> d!1687936 (= (Exists!2014 lambda!263192) (choose!38960 lambda!263192))))

(declare-fun bs!1215407 () Bool)

(assert (= bs!1215407 d!1687936))

(declare-fun m!6281964 () Bool)

(assert (=> bs!1215407 m!6281964))

(assert (=> b!5236052 d!1687936))

(declare-fun bs!1215408 () Bool)

(declare-fun d!1687938 () Bool)

(assert (= bs!1215408 (and d!1687938 b!5236052)))

(declare-fun lambda!263240 () Int)

(assert (=> bs!1215408 (= lambda!263240 lambda!263192)))

(assert (=> bs!1215408 (not (= lambda!263240 lambda!263193))))

(declare-fun bs!1215409 () Bool)

(assert (= bs!1215409 (and d!1687938 b!5236375)))

(assert (=> bs!1215409 (not (= lambda!263240 lambda!263221))))

(declare-fun bs!1215410 () Bool)

(assert (= bs!1215410 (and d!1687938 b!5236371)))

(assert (=> bs!1215410 (not (= lambda!263240 lambda!263222))))

(assert (=> d!1687938 true))

(assert (=> d!1687938 true))

(assert (=> d!1687938 true))

(assert (=> d!1687938 (= (isDefined!11647 (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) Nil!60675 s!2326 s!2326)) (Exists!2014 lambda!263240))))

(declare-fun lt!2146981 () Unit!152678)

(declare-fun choose!38961 (Regex!14833 Regex!14833 List!60799) Unit!152678)

(assert (=> d!1687938 (= lt!2146981 (choose!38961 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326))))

(assert (=> d!1687938 (validRegex!6569 (regOne!30178 r!7292))))

(assert (=> d!1687938 (= (lemmaFindConcatSeparationEquivalentToExists!1122 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326) lt!2146981)))

(declare-fun bs!1215411 () Bool)

(assert (= bs!1215411 d!1687938))

(declare-fun m!6281966 () Bool)

(assert (=> bs!1215411 m!6281966))

(declare-fun m!6281968 () Bool)

(assert (=> bs!1215411 m!6281968))

(assert (=> bs!1215411 m!6281956))

(assert (=> bs!1215411 m!6281354))

(assert (=> bs!1215411 m!6281356))

(assert (=> bs!1215411 m!6281354))

(assert (=> b!5236052 d!1687938))

(declare-fun bs!1215412 () Bool)

(declare-fun d!1687940 () Bool)

(assert (= bs!1215412 (and d!1687940 b!5236371)))

(declare-fun lambda!263245 () Int)

(assert (=> bs!1215412 (not (= lambda!263245 lambda!263222))))

(declare-fun bs!1215413 () Bool)

(assert (= bs!1215413 (and d!1687940 b!5236052)))

(assert (=> bs!1215413 (= lambda!263245 lambda!263192)))

(declare-fun bs!1215414 () Bool)

(assert (= bs!1215414 (and d!1687940 d!1687938)))

(assert (=> bs!1215414 (= lambda!263245 lambda!263240)))

(declare-fun bs!1215415 () Bool)

(assert (= bs!1215415 (and d!1687940 b!5236375)))

(assert (=> bs!1215415 (not (= lambda!263245 lambda!263221))))

(assert (=> bs!1215413 (not (= lambda!263245 lambda!263193))))

(assert (=> d!1687940 true))

(assert (=> d!1687940 true))

(assert (=> d!1687940 true))

(declare-fun lambda!263246 () Int)

(assert (=> bs!1215412 (= (and (= (regOne!30178 r!7292) (regOne!30178 lt!2146850)) (= (regTwo!30178 r!7292) (regTwo!30178 lt!2146850))) (= lambda!263246 lambda!263222))))

(assert (=> bs!1215413 (not (= lambda!263246 lambda!263192))))

(assert (=> bs!1215414 (not (= lambda!263246 lambda!263240))))

(assert (=> bs!1215415 (not (= lambda!263246 lambda!263221))))

(assert (=> bs!1215413 (= lambda!263246 lambda!263193)))

(declare-fun bs!1215416 () Bool)

(assert (= bs!1215416 d!1687940))

(assert (=> bs!1215416 (not (= lambda!263246 lambda!263245))))

(assert (=> d!1687940 true))

(assert (=> d!1687940 true))

(assert (=> d!1687940 true))

(assert (=> d!1687940 (= (Exists!2014 lambda!263245) (Exists!2014 lambda!263246))))

(declare-fun lt!2146984 () Unit!152678)

(declare-fun choose!38962 (Regex!14833 Regex!14833 List!60799) Unit!152678)

(assert (=> d!1687940 (= lt!2146984 (choose!38962 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326))))

(assert (=> d!1687940 (validRegex!6569 (regOne!30178 r!7292))))

(assert (=> d!1687940 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!668 (regOne!30178 r!7292) (regTwo!30178 r!7292) s!2326) lt!2146984)))

(declare-fun m!6281970 () Bool)

(assert (=> bs!1215416 m!6281970))

(declare-fun m!6281972 () Bool)

(assert (=> bs!1215416 m!6281972))

(declare-fun m!6281974 () Bool)

(assert (=> bs!1215416 m!6281974))

(assert (=> bs!1215416 m!6281956))

(assert (=> b!5236052 d!1687940))

(declare-fun d!1687942 () Bool)

(declare-fun isEmpty!32604 (Option!14944) Bool)

(assert (=> d!1687942 (= (isDefined!11647 (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) Nil!60675 s!2326 s!2326)) (not (isEmpty!32604 (findConcatSeparation!1358 (regOne!30178 r!7292) (regTwo!30178 r!7292) Nil!60675 s!2326 s!2326))))))

(declare-fun bs!1215417 () Bool)

(assert (= bs!1215417 d!1687942))

(assert (=> bs!1215417 m!6281354))

(declare-fun m!6281976 () Bool)

(assert (=> bs!1215417 m!6281976))

(assert (=> b!5236052 d!1687942))

(declare-fun c!904819 () Bool)

(declare-fun call!370598 () (InoxSet Context!8434))

(declare-fun c!904820 () Bool)

(declare-fun c!904823 () Bool)

(declare-fun call!370599 () List!60798)

(declare-fun bm!370593 () Bool)

(assert (=> bm!370593 (= call!370598 (derivationStepZipperDown!281 (ite c!904823 (regOne!30179 (regTwo!30179 (regOne!30178 r!7292))) (ite c!904820 (regTwo!30178 (regTwo!30179 (regOne!30178 r!7292))) (ite c!904819 (regOne!30178 (regTwo!30179 (regOne!30178 r!7292))) (reg!15162 (regTwo!30179 (regOne!30178 r!7292)))))) (ite (or c!904823 c!904820) lt!2146867 (Context!8435 call!370599)) (h!67123 s!2326)))))

(declare-fun b!5236788 () Bool)

(declare-fun e!3258644 () Bool)

(assert (=> b!5236788 (= c!904820 e!3258644)))

(declare-fun res!2222768 () Bool)

(assert (=> b!5236788 (=> (not res!2222768) (not e!3258644))))

(assert (=> b!5236788 (= res!2222768 ((_ is Concat!23678) (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun e!3258641 () (InoxSet Context!8434))

(declare-fun e!3258645 () (InoxSet Context!8434))

(assert (=> b!5236788 (= e!3258641 e!3258645)))

(declare-fun b!5236789 () Bool)

(declare-fun c!904821 () Bool)

(assert (=> b!5236789 (= c!904821 ((_ is Star!14833) (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun e!3258642 () (InoxSet Context!8434))

(declare-fun e!3258643 () (InoxSet Context!8434))

(assert (=> b!5236789 (= e!3258642 e!3258643)))

(declare-fun b!5236790 () Bool)

(declare-fun call!370601 () (InoxSet Context!8434))

(assert (=> b!5236790 (= e!3258642 call!370601)))

(declare-fun b!5236791 () Bool)

(assert (=> b!5236791 (= e!3258644 (nullable!5002 (regOne!30178 (regTwo!30179 (regOne!30178 r!7292)))))))

(declare-fun b!5236792 () Bool)

(assert (=> b!5236792 (= e!3258643 call!370601)))

(declare-fun bm!370594 () Bool)

(declare-fun call!370600 () List!60798)

(declare-fun $colon$colon!1300 (List!60798 Regex!14833) List!60798)

(assert (=> bm!370594 (= call!370600 ($colon$colon!1300 (exprs!4717 lt!2146867) (ite (or c!904820 c!904819) (regTwo!30178 (regTwo!30179 (regOne!30178 r!7292))) (regTwo!30179 (regOne!30178 r!7292)))))))

(declare-fun b!5236793 () Bool)

(declare-fun call!370603 () (InoxSet Context!8434))

(declare-fun call!370602 () (InoxSet Context!8434))

(assert (=> b!5236793 (= e!3258645 ((_ map or) call!370603 call!370602))))

(declare-fun b!5236794 () Bool)

(declare-fun e!3258646 () (InoxSet Context!8434))

(assert (=> b!5236794 (= e!3258646 (store ((as const (Array Context!8434 Bool)) false) lt!2146867 true))))

(declare-fun bm!370596 () Bool)

(assert (=> bm!370596 (= call!370601 call!370602)))

(declare-fun bm!370597 () Bool)

(assert (=> bm!370597 (= call!370599 call!370600)))

(declare-fun bm!370598 () Bool)

(assert (=> bm!370598 (= call!370602 call!370598)))

(declare-fun b!5236795 () Bool)

(assert (=> b!5236795 (= e!3258645 e!3258642)))

(assert (=> b!5236795 (= c!904819 ((_ is Concat!23678) (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun b!5236796 () Bool)

(assert (=> b!5236796 (= e!3258646 e!3258641)))

(assert (=> b!5236796 (= c!904823 ((_ is Union!14833) (regTwo!30179 (regOne!30178 r!7292))))))

(declare-fun b!5236797 () Bool)

(assert (=> b!5236797 (= e!3258643 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236798 () Bool)

(assert (=> b!5236798 (= e!3258641 ((_ map or) call!370598 call!370603))))

(declare-fun bm!370595 () Bool)

(assert (=> bm!370595 (= call!370603 (derivationStepZipperDown!281 (ite c!904823 (regTwo!30179 (regTwo!30179 (regOne!30178 r!7292))) (regOne!30178 (regTwo!30179 (regOne!30178 r!7292)))) (ite c!904823 lt!2146867 (Context!8435 call!370600)) (h!67123 s!2326)))))

(declare-fun d!1687944 () Bool)

(declare-fun c!904822 () Bool)

(assert (=> d!1687944 (= c!904822 (and ((_ is ElementMatch!14833) (regTwo!30179 (regOne!30178 r!7292))) (= (c!904611 (regTwo!30179 (regOne!30178 r!7292))) (h!67123 s!2326))))))

(assert (=> d!1687944 (= (derivationStepZipperDown!281 (regTwo!30179 (regOne!30178 r!7292)) lt!2146867 (h!67123 s!2326)) e!3258646)))

(assert (= (and d!1687944 c!904822) b!5236794))

(assert (= (and d!1687944 (not c!904822)) b!5236796))

(assert (= (and b!5236796 c!904823) b!5236798))

(assert (= (and b!5236796 (not c!904823)) b!5236788))

(assert (= (and b!5236788 res!2222768) b!5236791))

(assert (= (and b!5236788 c!904820) b!5236793))

(assert (= (and b!5236788 (not c!904820)) b!5236795))

(assert (= (and b!5236795 c!904819) b!5236790))

(assert (= (and b!5236795 (not c!904819)) b!5236789))

(assert (= (and b!5236789 c!904821) b!5236792))

(assert (= (and b!5236789 (not c!904821)) b!5236797))

(assert (= (or b!5236790 b!5236792) bm!370597))

(assert (= (or b!5236790 b!5236792) bm!370596))

(assert (= (or b!5236793 bm!370597) bm!370594))

(assert (= (or b!5236793 bm!370596) bm!370598))

(assert (= (or b!5236798 b!5236793) bm!370595))

(assert (= (or b!5236798 bm!370598) bm!370593))

(declare-fun m!6281978 () Bool)

(assert (=> bm!370593 m!6281978))

(declare-fun m!6281980 () Bool)

(assert (=> b!5236794 m!6281980))

(declare-fun m!6281982 () Bool)

(assert (=> bm!370595 m!6281982))

(declare-fun m!6281984 () Bool)

(assert (=> bm!370594 m!6281984))

(declare-fun m!6281986 () Bool)

(assert (=> b!5236791 m!6281986))

(assert (=> b!5236032 d!1687944))

(declare-fun call!370604 () (InoxSet Context!8434))

(declare-fun c!904828 () Bool)

(declare-fun call!370605 () List!60798)

(declare-fun c!904825 () Bool)

(declare-fun c!904824 () Bool)

(declare-fun bm!370599 () Bool)

(assert (=> bm!370599 (= call!370604 (derivationStepZipperDown!281 (ite c!904828 (regOne!30179 (regOne!30179 (regOne!30178 r!7292))) (ite c!904825 (regTwo!30178 (regOne!30179 (regOne!30178 r!7292))) (ite c!904824 (regOne!30178 (regOne!30179 (regOne!30178 r!7292))) (reg!15162 (regOne!30179 (regOne!30178 r!7292)))))) (ite (or c!904828 c!904825) lt!2146867 (Context!8435 call!370605)) (h!67123 s!2326)))))

(declare-fun b!5236799 () Bool)

(declare-fun e!3258650 () Bool)

(assert (=> b!5236799 (= c!904825 e!3258650)))

(declare-fun res!2222769 () Bool)

(assert (=> b!5236799 (=> (not res!2222769) (not e!3258650))))

(assert (=> b!5236799 (= res!2222769 ((_ is Concat!23678) (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun e!3258647 () (InoxSet Context!8434))

(declare-fun e!3258651 () (InoxSet Context!8434))

(assert (=> b!5236799 (= e!3258647 e!3258651)))

(declare-fun b!5236800 () Bool)

(declare-fun c!904826 () Bool)

(assert (=> b!5236800 (= c!904826 ((_ is Star!14833) (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun e!3258648 () (InoxSet Context!8434))

(declare-fun e!3258649 () (InoxSet Context!8434))

(assert (=> b!5236800 (= e!3258648 e!3258649)))

(declare-fun b!5236801 () Bool)

(declare-fun call!370607 () (InoxSet Context!8434))

(assert (=> b!5236801 (= e!3258648 call!370607)))

(declare-fun b!5236802 () Bool)

(assert (=> b!5236802 (= e!3258650 (nullable!5002 (regOne!30178 (regOne!30179 (regOne!30178 r!7292)))))))

(declare-fun b!5236803 () Bool)

(assert (=> b!5236803 (= e!3258649 call!370607)))

(declare-fun call!370606 () List!60798)

(declare-fun bm!370600 () Bool)

(assert (=> bm!370600 (= call!370606 ($colon$colon!1300 (exprs!4717 lt!2146867) (ite (or c!904825 c!904824) (regTwo!30178 (regOne!30179 (regOne!30178 r!7292))) (regOne!30179 (regOne!30178 r!7292)))))))

(declare-fun b!5236804 () Bool)

(declare-fun call!370609 () (InoxSet Context!8434))

(declare-fun call!370608 () (InoxSet Context!8434))

(assert (=> b!5236804 (= e!3258651 ((_ map or) call!370609 call!370608))))

(declare-fun b!5236805 () Bool)

(declare-fun e!3258652 () (InoxSet Context!8434))

(assert (=> b!5236805 (= e!3258652 (store ((as const (Array Context!8434 Bool)) false) lt!2146867 true))))

(declare-fun bm!370602 () Bool)

(assert (=> bm!370602 (= call!370607 call!370608)))

(declare-fun bm!370603 () Bool)

(assert (=> bm!370603 (= call!370605 call!370606)))

(declare-fun bm!370604 () Bool)

(assert (=> bm!370604 (= call!370608 call!370604)))

(declare-fun b!5236806 () Bool)

(assert (=> b!5236806 (= e!3258651 e!3258648)))

(assert (=> b!5236806 (= c!904824 ((_ is Concat!23678) (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun b!5236807 () Bool)

(assert (=> b!5236807 (= e!3258652 e!3258647)))

(assert (=> b!5236807 (= c!904828 ((_ is Union!14833) (regOne!30179 (regOne!30178 r!7292))))))

(declare-fun b!5236808 () Bool)

(assert (=> b!5236808 (= e!3258649 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236809 () Bool)

(assert (=> b!5236809 (= e!3258647 ((_ map or) call!370604 call!370609))))

(declare-fun bm!370601 () Bool)

(assert (=> bm!370601 (= call!370609 (derivationStepZipperDown!281 (ite c!904828 (regTwo!30179 (regOne!30179 (regOne!30178 r!7292))) (regOne!30178 (regOne!30179 (regOne!30178 r!7292)))) (ite c!904828 lt!2146867 (Context!8435 call!370606)) (h!67123 s!2326)))))

(declare-fun d!1687946 () Bool)

(declare-fun c!904827 () Bool)

(assert (=> d!1687946 (= c!904827 (and ((_ is ElementMatch!14833) (regOne!30179 (regOne!30178 r!7292))) (= (c!904611 (regOne!30179 (regOne!30178 r!7292))) (h!67123 s!2326))))))

(assert (=> d!1687946 (= (derivationStepZipperDown!281 (regOne!30179 (regOne!30178 r!7292)) lt!2146867 (h!67123 s!2326)) e!3258652)))

(assert (= (and d!1687946 c!904827) b!5236805))

(assert (= (and d!1687946 (not c!904827)) b!5236807))

(assert (= (and b!5236807 c!904828) b!5236809))

(assert (= (and b!5236807 (not c!904828)) b!5236799))

(assert (= (and b!5236799 res!2222769) b!5236802))

(assert (= (and b!5236799 c!904825) b!5236804))

(assert (= (and b!5236799 (not c!904825)) b!5236806))

(assert (= (and b!5236806 c!904824) b!5236801))

(assert (= (and b!5236806 (not c!904824)) b!5236800))

(assert (= (and b!5236800 c!904826) b!5236803))

(assert (= (and b!5236800 (not c!904826)) b!5236808))

(assert (= (or b!5236801 b!5236803) bm!370603))

(assert (= (or b!5236801 b!5236803) bm!370602))

(assert (= (or b!5236804 bm!370603) bm!370600))

(assert (= (or b!5236804 bm!370602) bm!370604))

(assert (= (or b!5236809 b!5236804) bm!370601))

(assert (= (or b!5236809 bm!370604) bm!370599))

(declare-fun m!6281988 () Bool)

(assert (=> bm!370599 m!6281988))

(assert (=> b!5236805 m!6281980))

(declare-fun m!6281990 () Bool)

(assert (=> bm!370601 m!6281990))

(declare-fun m!6281992 () Bool)

(assert (=> bm!370600 m!6281992))

(declare-fun m!6281994 () Bool)

(assert (=> b!5236802 m!6281994))

(assert (=> b!5236032 d!1687946))

(declare-fun d!1687948 () Bool)

(declare-fun e!3258655 () Bool)

(assert (=> d!1687948 e!3258655))

(declare-fun res!2222772 () Bool)

(assert (=> d!1687948 (=> (not res!2222772) (not e!3258655))))

(declare-fun lt!2146987 () List!60800)

(declare-fun noDuplicate!1206 (List!60800) Bool)

(assert (=> d!1687948 (= res!2222772 (noDuplicate!1206 lt!2146987))))

(declare-fun choose!38963 ((InoxSet Context!8434)) List!60800)

(assert (=> d!1687948 (= lt!2146987 (choose!38963 z!1189))))

(assert (=> d!1687948 (= (toList!8617 z!1189) lt!2146987)))

(declare-fun b!5236812 () Bool)

(declare-fun content!10771 (List!60800) (InoxSet Context!8434))

(assert (=> b!5236812 (= e!3258655 (= (content!10771 lt!2146987) z!1189))))

(assert (= (and d!1687948 res!2222772) b!5236812))

(declare-fun m!6281996 () Bool)

(assert (=> d!1687948 m!6281996))

(declare-fun m!6281998 () Bool)

(assert (=> d!1687948 m!6281998))

(declare-fun m!6282000 () Bool)

(assert (=> b!5236812 m!6282000))

(assert (=> b!5236041 d!1687948))

(declare-fun d!1687950 () Bool)

(declare-fun lt!2146990 () Int)

(assert (=> d!1687950 (>= lt!2146990 0)))

(declare-fun e!3258658 () Int)

(assert (=> d!1687950 (= lt!2146990 e!3258658)))

(declare-fun c!904831 () Bool)

(assert (=> d!1687950 (= c!904831 ((_ is Cons!60676) lt!2146882))))

(assert (=> d!1687950 (= (zipperDepthTotal!14 lt!2146882) lt!2146990)))

(declare-fun b!5236817 () Bool)

(declare-fun contextDepthTotal!8 (Context!8434) Int)

(assert (=> b!5236817 (= e!3258658 (+ (contextDepthTotal!8 (h!67124 lt!2146882)) (zipperDepthTotal!14 (t!373981 lt!2146882))))))

(declare-fun b!5236818 () Bool)

(assert (=> b!5236818 (= e!3258658 0)))

(assert (= (and d!1687950 c!904831) b!5236817))

(assert (= (and d!1687950 (not c!904831)) b!5236818))

(declare-fun m!6282002 () Bool)

(assert (=> b!5236817 m!6282002))

(declare-fun m!6282004 () Bool)

(assert (=> b!5236817 m!6282004))

(assert (=> b!5236040 d!1687950))

(declare-fun d!1687952 () Bool)

(declare-fun lt!2146991 () Int)

(assert (=> d!1687952 (>= lt!2146991 0)))

(declare-fun e!3258659 () Int)

(assert (=> d!1687952 (= lt!2146991 e!3258659)))

(declare-fun c!904832 () Bool)

(assert (=> d!1687952 (= c!904832 ((_ is Cons!60676) zl!343))))

(assert (=> d!1687952 (= (zipperDepthTotal!14 zl!343) lt!2146991)))

(declare-fun b!5236819 () Bool)

(assert (=> b!5236819 (= e!3258659 (+ (contextDepthTotal!8 (h!67124 zl!343)) (zipperDepthTotal!14 (t!373981 zl!343))))))

(declare-fun b!5236820 () Bool)

(assert (=> b!5236820 (= e!3258659 0)))

(assert (= (and d!1687952 c!904832) b!5236819))

(assert (= (and d!1687952 (not c!904832)) b!5236820))

(declare-fun m!6282006 () Bool)

(assert (=> b!5236819 m!6282006))

(declare-fun m!6282008 () Bool)

(assert (=> b!5236819 m!6282008))

(assert (=> b!5236039 d!1687952))

(declare-fun d!1687954 () Bool)

(declare-fun lt!2146992 () Int)

(assert (=> d!1687954 (>= lt!2146992 0)))

(declare-fun e!3258660 () Int)

(assert (=> d!1687954 (= lt!2146992 e!3258660)))

(declare-fun c!904833 () Bool)

(assert (=> d!1687954 (= c!904833 ((_ is Cons!60676) lt!2146881))))

(assert (=> d!1687954 (= (zipperDepthTotal!14 lt!2146881) lt!2146992)))

(declare-fun b!5236821 () Bool)

(assert (=> b!5236821 (= e!3258660 (+ (contextDepthTotal!8 (h!67124 lt!2146881)) (zipperDepthTotal!14 (t!373981 lt!2146881))))))

(declare-fun b!5236822 () Bool)

(assert (=> b!5236822 (= e!3258660 0)))

(assert (= (and d!1687954 c!904833) b!5236821))

(assert (= (and d!1687954 (not c!904833)) b!5236822))

(declare-fun m!6282010 () Bool)

(assert (=> b!5236821 m!6282010))

(declare-fun m!6282012 () Bool)

(assert (=> b!5236821 m!6282012))

(assert (=> b!5236039 d!1687954))

(declare-fun d!1687956 () Bool)

(assert (=> d!1687956 (= (isEmpty!32600 (t!373981 zl!343)) ((_ is Nil!60676) (t!373981 zl!343)))))

(assert (=> b!5236058 d!1687956))

(assert (=> b!5236038 d!1687880))

(declare-fun e!3258661 () Bool)

(declare-fun d!1687958 () Bool)

(assert (=> d!1687958 (= (matchZipper!1077 ((_ map or) lt!2146865 lt!2146871) (t!373980 s!2326)) e!3258661)))

(declare-fun res!2222773 () Bool)

(assert (=> d!1687958 (=> res!2222773 e!3258661)))

(assert (=> d!1687958 (= res!2222773 (matchZipper!1077 lt!2146865 (t!373980 s!2326)))))

(declare-fun lt!2146993 () Unit!152678)

(assert (=> d!1687958 (= lt!2146993 (choose!38955 lt!2146865 lt!2146871 (t!373980 s!2326)))))

(assert (=> d!1687958 (= (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146865 lt!2146871 (t!373980 s!2326)) lt!2146993)))

(declare-fun b!5236823 () Bool)

(assert (=> b!5236823 (= e!3258661 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(assert (= (and d!1687958 (not res!2222773)) b!5236823))

(assert (=> d!1687958 m!6281368))

(assert (=> d!1687958 m!6281312))

(declare-fun m!6282014 () Bool)

(assert (=> d!1687958 m!6282014))

(assert (=> b!5236823 m!6281308))

(assert (=> b!5236037 d!1687958))

(assert (=> b!5236037 d!1687880))

(declare-fun d!1687960 () Bool)

(declare-fun c!904834 () Bool)

(assert (=> d!1687960 (= c!904834 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258662 () Bool)

(assert (=> d!1687960 (= (matchZipper!1077 ((_ map or) lt!2146865 lt!2146871) (t!373980 s!2326)) e!3258662)))

(declare-fun b!5236824 () Bool)

(assert (=> b!5236824 (= e!3258662 (nullableZipper!1250 ((_ map or) lt!2146865 lt!2146871)))))

(declare-fun b!5236825 () Bool)

(assert (=> b!5236825 (= e!3258662 (matchZipper!1077 (derivationStepZipper!1094 ((_ map or) lt!2146865 lt!2146871) (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687960 c!904834) b!5236824))

(assert (= (and d!1687960 (not c!904834)) b!5236825))

(assert (=> d!1687960 m!6281784))

(declare-fun m!6282016 () Bool)

(assert (=> b!5236824 m!6282016))

(assert (=> b!5236825 m!6281788))

(assert (=> b!5236825 m!6281788))

(declare-fun m!6282018 () Bool)

(assert (=> b!5236825 m!6282018))

(assert (=> b!5236825 m!6281792))

(assert (=> b!5236825 m!6282018))

(assert (=> b!5236825 m!6281792))

(declare-fun m!6282020 () Bool)

(assert (=> b!5236825 m!6282020))

(assert (=> b!5236037 d!1687960))

(declare-fun bs!1215418 () Bool)

(declare-fun d!1687962 () Bool)

(assert (= bs!1215418 (and d!1687962 b!5236035)))

(declare-fun lambda!263247 () Int)

(assert (=> bs!1215418 (= lambda!263247 lambda!263195)))

(declare-fun bs!1215419 () Bool)

(assert (= bs!1215419 (and d!1687962 d!1687782)))

(assert (=> bs!1215419 (= lambda!263247 lambda!263210)))

(declare-fun bs!1215420 () Bool)

(assert (= bs!1215420 (and d!1687962 d!1687862)))

(assert (=> bs!1215420 (= lambda!263247 lambda!263231)))

(declare-fun b!5236826 () Bool)

(declare-fun e!3258667 () Bool)

(assert (=> b!5236826 (= e!3258667 (isEmpty!32599 (t!373979 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236827 () Bool)

(declare-fun e!3258665 () Regex!14833)

(assert (=> b!5236827 (= e!3258665 (Concat!23678 (h!67122 (exprs!4717 (h!67124 zl!343))) (generalisedConcat!502 (t!373979 (exprs!4717 (h!67124 zl!343))))))))

(declare-fun b!5236828 () Bool)

(declare-fun e!3258663 () Bool)

(declare-fun e!3258666 () Bool)

(assert (=> b!5236828 (= e!3258663 e!3258666)))

(declare-fun c!904835 () Bool)

(assert (=> b!5236828 (= c!904835 (isEmpty!32599 (tail!10316 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236829 () Bool)

(declare-fun e!3258668 () Bool)

(assert (=> b!5236829 (= e!3258668 e!3258663)))

(declare-fun c!904836 () Bool)

(assert (=> b!5236829 (= c!904836 (isEmpty!32599 (exprs!4717 (h!67124 zl!343))))))

(declare-fun b!5236830 () Bool)

(declare-fun e!3258664 () Regex!14833)

(assert (=> b!5236830 (= e!3258664 e!3258665)))

(declare-fun c!904838 () Bool)

(assert (=> b!5236830 (= c!904838 ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343))))))

(assert (=> d!1687962 e!3258668))

(declare-fun res!2222774 () Bool)

(assert (=> d!1687962 (=> (not res!2222774) (not e!3258668))))

(declare-fun lt!2146994 () Regex!14833)

(assert (=> d!1687962 (= res!2222774 (validRegex!6569 lt!2146994))))

(assert (=> d!1687962 (= lt!2146994 e!3258664)))

(declare-fun c!904837 () Bool)

(assert (=> d!1687962 (= c!904837 e!3258667)))

(declare-fun res!2222775 () Bool)

(assert (=> d!1687962 (=> (not res!2222775) (not e!3258667))))

(assert (=> d!1687962 (= res!2222775 ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343))))))

(assert (=> d!1687962 (forall!14259 (exprs!4717 (h!67124 zl!343)) lambda!263247)))

(assert (=> d!1687962 (= (generalisedConcat!502 (exprs!4717 (h!67124 zl!343))) lt!2146994)))

(declare-fun b!5236831 () Bool)

(assert (=> b!5236831 (= e!3258666 (= lt!2146994 (head!11219 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236832 () Bool)

(assert (=> b!5236832 (= e!3258664 (h!67122 (exprs!4717 (h!67124 zl!343))))))

(declare-fun b!5236833 () Bool)

(assert (=> b!5236833 (= e!3258666 (isConcat!308 lt!2146994))))

(declare-fun b!5236834 () Bool)

(assert (=> b!5236834 (= e!3258665 EmptyExpr!14833)))

(declare-fun b!5236835 () Bool)

(assert (=> b!5236835 (= e!3258663 (isEmptyExpr!785 lt!2146994))))

(assert (= (and d!1687962 res!2222775) b!5236826))

(assert (= (and d!1687962 c!904837) b!5236832))

(assert (= (and d!1687962 (not c!904837)) b!5236830))

(assert (= (and b!5236830 c!904838) b!5236827))

(assert (= (and b!5236830 (not c!904838)) b!5236834))

(assert (= (and d!1687962 res!2222774) b!5236829))

(assert (= (and b!5236829 c!904836) b!5236835))

(assert (= (and b!5236829 (not c!904836)) b!5236828))

(assert (= (and b!5236828 c!904835) b!5236831))

(assert (= (and b!5236828 (not c!904835)) b!5236833))

(declare-fun m!6282022 () Bool)

(assert (=> b!5236829 m!6282022))

(declare-fun m!6282024 () Bool)

(assert (=> b!5236828 m!6282024))

(assert (=> b!5236828 m!6282024))

(declare-fun m!6282026 () Bool)

(assert (=> b!5236828 m!6282026))

(declare-fun m!6282028 () Bool)

(assert (=> b!5236833 m!6282028))

(assert (=> b!5236826 m!6281370))

(declare-fun m!6282030 () Bool)

(assert (=> b!5236835 m!6282030))

(declare-fun m!6282032 () Bool)

(assert (=> d!1687962 m!6282032))

(declare-fun m!6282034 () Bool)

(assert (=> d!1687962 m!6282034))

(declare-fun m!6282036 () Bool)

(assert (=> b!5236827 m!6282036))

(declare-fun m!6282038 () Bool)

(assert (=> b!5236831 m!6282038))

(assert (=> b!5236045 d!1687962))

(declare-fun d!1687964 () Bool)

(declare-fun lt!2146997 () Regex!14833)

(assert (=> d!1687964 (validRegex!6569 lt!2146997)))

(assert (=> d!1687964 (= lt!2146997 (generalisedUnion!762 (unfocusZipperList!275 zl!343)))))

(assert (=> d!1687964 (= (unfocusZipper!575 zl!343) lt!2146997)))

(declare-fun bs!1215421 () Bool)

(assert (= bs!1215421 d!1687964))

(declare-fun m!6282040 () Bool)

(assert (=> bs!1215421 m!6282040))

(assert (=> bs!1215421 m!6281402))

(assert (=> bs!1215421 m!6281402))

(assert (=> bs!1215421 m!6281404))

(assert (=> b!5236044 d!1687964))

(declare-fun c!904840 () Bool)

(declare-fun bm!370605 () Bool)

(declare-fun call!370610 () (InoxSet Context!8434))

(declare-fun c!904843 () Bool)

(declare-fun c!904839 () Bool)

(declare-fun call!370611 () List!60798)

(assert (=> bm!370605 (= call!370610 (derivationStepZipperDown!281 (ite c!904843 (regOne!30179 (h!67122 (exprs!4717 (h!67124 zl!343)))) (ite c!904840 (regTwo!30178 (h!67122 (exprs!4717 (h!67124 zl!343)))) (ite c!904839 (regOne!30178 (h!67122 (exprs!4717 (h!67124 zl!343)))) (reg!15162 (h!67122 (exprs!4717 (h!67124 zl!343))))))) (ite (or c!904843 c!904840) lt!2146867 (Context!8435 call!370611)) (h!67123 s!2326)))))

(declare-fun b!5236836 () Bool)

(declare-fun e!3258672 () Bool)

(assert (=> b!5236836 (= c!904840 e!3258672)))

(declare-fun res!2222776 () Bool)

(assert (=> b!5236836 (=> (not res!2222776) (not e!3258672))))

(assert (=> b!5236836 (= res!2222776 ((_ is Concat!23678) (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun e!3258669 () (InoxSet Context!8434))

(declare-fun e!3258673 () (InoxSet Context!8434))

(assert (=> b!5236836 (= e!3258669 e!3258673)))

(declare-fun b!5236837 () Bool)

(declare-fun c!904841 () Bool)

(assert (=> b!5236837 (= c!904841 ((_ is Star!14833) (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun e!3258670 () (InoxSet Context!8434))

(declare-fun e!3258671 () (InoxSet Context!8434))

(assert (=> b!5236837 (= e!3258670 e!3258671)))

(declare-fun b!5236838 () Bool)

(declare-fun call!370613 () (InoxSet Context!8434))

(assert (=> b!5236838 (= e!3258670 call!370613)))

(declare-fun b!5236839 () Bool)

(assert (=> b!5236839 (= e!3258672 (nullable!5002 (regOne!30178 (h!67122 (exprs!4717 (h!67124 zl!343))))))))

(declare-fun b!5236840 () Bool)

(assert (=> b!5236840 (= e!3258671 call!370613)))

(declare-fun bm!370606 () Bool)

(declare-fun call!370612 () List!60798)

(assert (=> bm!370606 (= call!370612 ($colon$colon!1300 (exprs!4717 lt!2146867) (ite (or c!904840 c!904839) (regTwo!30178 (h!67122 (exprs!4717 (h!67124 zl!343)))) (h!67122 (exprs!4717 (h!67124 zl!343))))))))

(declare-fun b!5236841 () Bool)

(declare-fun call!370615 () (InoxSet Context!8434))

(declare-fun call!370614 () (InoxSet Context!8434))

(assert (=> b!5236841 (= e!3258673 ((_ map or) call!370615 call!370614))))

(declare-fun b!5236842 () Bool)

(declare-fun e!3258674 () (InoxSet Context!8434))

(assert (=> b!5236842 (= e!3258674 (store ((as const (Array Context!8434 Bool)) false) lt!2146867 true))))

(declare-fun bm!370608 () Bool)

(assert (=> bm!370608 (= call!370613 call!370614)))

(declare-fun bm!370609 () Bool)

(assert (=> bm!370609 (= call!370611 call!370612)))

(declare-fun bm!370610 () Bool)

(assert (=> bm!370610 (= call!370614 call!370610)))

(declare-fun b!5236843 () Bool)

(assert (=> b!5236843 (= e!3258673 e!3258670)))

(assert (=> b!5236843 (= c!904839 ((_ is Concat!23678) (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236844 () Bool)

(assert (=> b!5236844 (= e!3258674 e!3258669)))

(assert (=> b!5236844 (= c!904843 ((_ is Union!14833) (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun b!5236845 () Bool)

(assert (=> b!5236845 (= e!3258671 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236846 () Bool)

(assert (=> b!5236846 (= e!3258669 ((_ map or) call!370610 call!370615))))

(declare-fun bm!370607 () Bool)

(assert (=> bm!370607 (= call!370615 (derivationStepZipperDown!281 (ite c!904843 (regTwo!30179 (h!67122 (exprs!4717 (h!67124 zl!343)))) (regOne!30178 (h!67122 (exprs!4717 (h!67124 zl!343))))) (ite c!904843 lt!2146867 (Context!8435 call!370612)) (h!67123 s!2326)))))

(declare-fun d!1687966 () Bool)

(declare-fun c!904842 () Bool)

(assert (=> d!1687966 (= c!904842 (and ((_ is ElementMatch!14833) (h!67122 (exprs!4717 (h!67124 zl!343)))) (= (c!904611 (h!67122 (exprs!4717 (h!67124 zl!343)))) (h!67123 s!2326))))))

(assert (=> d!1687966 (= (derivationStepZipperDown!281 (h!67122 (exprs!4717 (h!67124 zl!343))) lt!2146867 (h!67123 s!2326)) e!3258674)))

(assert (= (and d!1687966 c!904842) b!5236842))

(assert (= (and d!1687966 (not c!904842)) b!5236844))

(assert (= (and b!5236844 c!904843) b!5236846))

(assert (= (and b!5236844 (not c!904843)) b!5236836))

(assert (= (and b!5236836 res!2222776) b!5236839))

(assert (= (and b!5236836 c!904840) b!5236841))

(assert (= (and b!5236836 (not c!904840)) b!5236843))

(assert (= (and b!5236843 c!904839) b!5236838))

(assert (= (and b!5236843 (not c!904839)) b!5236837))

(assert (= (and b!5236837 c!904841) b!5236840))

(assert (= (and b!5236837 (not c!904841)) b!5236845))

(assert (= (or b!5236838 b!5236840) bm!370609))

(assert (= (or b!5236838 b!5236840) bm!370608))

(assert (= (or b!5236841 bm!370609) bm!370606))

(assert (= (or b!5236841 bm!370608) bm!370610))

(assert (= (or b!5236846 b!5236841) bm!370607))

(assert (= (or b!5236846 bm!370610) bm!370605))

(declare-fun m!6282042 () Bool)

(assert (=> bm!370605 m!6282042))

(assert (=> b!5236842 m!6281980))

(declare-fun m!6282044 () Bool)

(assert (=> bm!370607 m!6282044))

(declare-fun m!6282046 () Bool)

(assert (=> bm!370606 m!6282046))

(declare-fun m!6282048 () Bool)

(assert (=> b!5236839 m!6282048))

(assert (=> b!5236043 d!1687966))

(declare-fun d!1687968 () Bool)

(assert (=> d!1687968 (= (flatMap!560 z!1189 lambda!263194) (dynLambda!23975 lambda!263194 (h!67124 zl!343)))))

(declare-fun lt!2146998 () Unit!152678)

(assert (=> d!1687968 (= lt!2146998 (choose!38958 z!1189 (h!67124 zl!343) lambda!263194))))

(assert (=> d!1687968 (= z!1189 (store ((as const (Array Context!8434 Bool)) false) (h!67124 zl!343) true))))

(assert (=> d!1687968 (= (lemmaFlatMapOnSingletonSet!92 z!1189 (h!67124 zl!343) lambda!263194) lt!2146998)))

(declare-fun b_lambda!202443 () Bool)

(assert (=> (not b_lambda!202443) (not d!1687968)))

(declare-fun bs!1215422 () Bool)

(assert (= bs!1215422 d!1687968))

(assert (=> bs!1215422 m!6281290))

(declare-fun m!6282050 () Bool)

(assert (=> bs!1215422 m!6282050))

(declare-fun m!6282052 () Bool)

(assert (=> bs!1215422 m!6282052))

(declare-fun m!6282054 () Bool)

(assert (=> bs!1215422 m!6282054))

(assert (=> b!5236043 d!1687968))

(declare-fun b!5236847 () Bool)

(declare-fun e!3258676 () (InoxSet Context!8434))

(assert (=> b!5236847 (= e!3258676 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236848 () Bool)

(declare-fun e!3258675 () Bool)

(assert (=> b!5236848 (= e!3258675 (nullable!5002 (h!67122 (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343)))))))))))

(declare-fun bm!370611 () Bool)

(declare-fun call!370616 () (InoxSet Context!8434))

(assert (=> bm!370611 (= call!370616 (derivationStepZipperDown!281 (h!67122 (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343))))))) (Context!8435 (t!373979 (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343)))))))) (h!67123 s!2326)))))

(declare-fun e!3258677 () (InoxSet Context!8434))

(declare-fun b!5236849 () Bool)

(assert (=> b!5236849 (= e!3258677 ((_ map or) call!370616 (derivationStepZipperUp!205 (Context!8435 (t!373979 (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343)))))))) (h!67123 s!2326))))))

(declare-fun d!1687970 () Bool)

(declare-fun c!904845 () Bool)

(assert (=> d!1687970 (= c!904845 e!3258675)))

(declare-fun res!2222777 () Bool)

(assert (=> d!1687970 (=> (not res!2222777) (not e!3258675))))

(assert (=> d!1687970 (= res!2222777 ((_ is Cons!60674) (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343))))))))))

(assert (=> d!1687970 (= (derivationStepZipperUp!205 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343))))) (h!67123 s!2326)) e!3258677)))

(declare-fun b!5236850 () Bool)

(assert (=> b!5236850 (= e!3258676 call!370616)))

(declare-fun b!5236851 () Bool)

(assert (=> b!5236851 (= e!3258677 e!3258676)))

(declare-fun c!904844 () Bool)

(assert (=> b!5236851 (= c!904844 ((_ is Cons!60674) (exprs!4717 (Context!8435 (Cons!60674 (h!67122 (exprs!4717 (h!67124 zl!343))) (t!373979 (exprs!4717 (h!67124 zl!343))))))))))

(assert (= (and d!1687970 res!2222777) b!5236848))

(assert (= (and d!1687970 c!904845) b!5236849))

(assert (= (and d!1687970 (not c!904845)) b!5236851))

(assert (= (and b!5236851 c!904844) b!5236850))

(assert (= (and b!5236851 (not c!904844)) b!5236847))

(assert (= (or b!5236849 b!5236850) bm!370611))

(declare-fun m!6282056 () Bool)

(assert (=> b!5236848 m!6282056))

(declare-fun m!6282058 () Bool)

(assert (=> bm!370611 m!6282058))

(declare-fun m!6282060 () Bool)

(assert (=> b!5236849 m!6282060))

(assert (=> b!5236043 d!1687970))

(declare-fun b!5236852 () Bool)

(declare-fun e!3258679 () (InoxSet Context!8434))

(assert (=> b!5236852 (= e!3258679 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236853 () Bool)

(declare-fun e!3258678 () Bool)

(assert (=> b!5236853 (= e!3258678 (nullable!5002 (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun bm!370612 () Bool)

(declare-fun call!370617 () (InoxSet Context!8434))

(assert (=> bm!370612 (= call!370617 (derivationStepZipperDown!281 (h!67122 (exprs!4717 (h!67124 zl!343))) (Context!8435 (t!373979 (exprs!4717 (h!67124 zl!343)))) (h!67123 s!2326)))))

(declare-fun b!5236854 () Bool)

(declare-fun e!3258680 () (InoxSet Context!8434))

(assert (=> b!5236854 (= e!3258680 ((_ map or) call!370617 (derivationStepZipperUp!205 (Context!8435 (t!373979 (exprs!4717 (h!67124 zl!343)))) (h!67123 s!2326))))))

(declare-fun d!1687972 () Bool)

(declare-fun c!904847 () Bool)

(assert (=> d!1687972 (= c!904847 e!3258678)))

(declare-fun res!2222778 () Bool)

(assert (=> d!1687972 (=> (not res!2222778) (not e!3258678))))

(assert (=> d!1687972 (= res!2222778 ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343))))))

(assert (=> d!1687972 (= (derivationStepZipperUp!205 (h!67124 zl!343) (h!67123 s!2326)) e!3258680)))

(declare-fun b!5236855 () Bool)

(assert (=> b!5236855 (= e!3258679 call!370617)))

(declare-fun b!5236856 () Bool)

(assert (=> b!5236856 (= e!3258680 e!3258679)))

(declare-fun c!904846 () Bool)

(assert (=> b!5236856 (= c!904846 ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343))))))

(assert (= (and d!1687972 res!2222778) b!5236853))

(assert (= (and d!1687972 c!904847) b!5236854))

(assert (= (and d!1687972 (not c!904847)) b!5236856))

(assert (= (and b!5236856 c!904846) b!5236855))

(assert (= (and b!5236856 (not c!904846)) b!5236852))

(assert (= (or b!5236854 b!5236855) bm!370612))

(assert (=> b!5236853 m!6281296))

(declare-fun m!6282062 () Bool)

(assert (=> bm!370612 m!6282062))

(declare-fun m!6282064 () Bool)

(assert (=> b!5236854 m!6282064))

(assert (=> b!5236043 d!1687972))

(declare-fun b!5236857 () Bool)

(declare-fun e!3258682 () (InoxSet Context!8434))

(assert (=> b!5236857 (= e!3258682 ((as const (Array Context!8434 Bool)) false))))

(declare-fun b!5236858 () Bool)

(declare-fun e!3258681 () Bool)

(assert (=> b!5236858 (= e!3258681 (nullable!5002 (h!67122 (exprs!4717 lt!2146867))))))

(declare-fun bm!370613 () Bool)

(declare-fun call!370618 () (InoxSet Context!8434))

(assert (=> bm!370613 (= call!370618 (derivationStepZipperDown!281 (h!67122 (exprs!4717 lt!2146867)) (Context!8435 (t!373979 (exprs!4717 lt!2146867))) (h!67123 s!2326)))))

(declare-fun b!5236859 () Bool)

(declare-fun e!3258683 () (InoxSet Context!8434))

(assert (=> b!5236859 (= e!3258683 ((_ map or) call!370618 (derivationStepZipperUp!205 (Context!8435 (t!373979 (exprs!4717 lt!2146867))) (h!67123 s!2326))))))

(declare-fun d!1687974 () Bool)

(declare-fun c!904849 () Bool)

(assert (=> d!1687974 (= c!904849 e!3258681)))

(declare-fun res!2222779 () Bool)

(assert (=> d!1687974 (=> (not res!2222779) (not e!3258681))))

(assert (=> d!1687974 (= res!2222779 ((_ is Cons!60674) (exprs!4717 lt!2146867)))))

(assert (=> d!1687974 (= (derivationStepZipperUp!205 lt!2146867 (h!67123 s!2326)) e!3258683)))

(declare-fun b!5236860 () Bool)

(assert (=> b!5236860 (= e!3258682 call!370618)))

(declare-fun b!5236861 () Bool)

(assert (=> b!5236861 (= e!3258683 e!3258682)))

(declare-fun c!904848 () Bool)

(assert (=> b!5236861 (= c!904848 ((_ is Cons!60674) (exprs!4717 lt!2146867)))))

(assert (= (and d!1687974 res!2222779) b!5236858))

(assert (= (and d!1687974 c!904849) b!5236859))

(assert (= (and d!1687974 (not c!904849)) b!5236861))

(assert (= (and b!5236861 c!904848) b!5236860))

(assert (= (and b!5236861 (not c!904848)) b!5236857))

(assert (= (or b!5236859 b!5236860) bm!370613))

(declare-fun m!6282066 () Bool)

(assert (=> b!5236858 m!6282066))

(declare-fun m!6282068 () Bool)

(assert (=> bm!370613 m!6282068))

(declare-fun m!6282070 () Bool)

(assert (=> b!5236859 m!6282070))

(assert (=> b!5236043 d!1687974))

(declare-fun d!1687976 () Bool)

(assert (=> d!1687976 (= (nullable!5002 (h!67122 (exprs!4717 (h!67124 zl!343)))) (nullableFct!1402 (h!67122 (exprs!4717 (h!67124 zl!343)))))))

(declare-fun bs!1215423 () Bool)

(assert (= bs!1215423 d!1687976))

(declare-fun m!6282072 () Bool)

(assert (=> bs!1215423 m!6282072))

(assert (=> b!5236043 d!1687976))

(declare-fun d!1687978 () Bool)

(assert (=> d!1687978 (= (flatMap!560 z!1189 lambda!263194) (choose!38957 z!1189 lambda!263194))))

(declare-fun bs!1215424 () Bool)

(assert (= bs!1215424 d!1687978))

(declare-fun m!6282074 () Bool)

(assert (=> bs!1215424 m!6282074))

(assert (=> b!5236043 d!1687978))

(declare-fun bs!1215425 () Bool)

(declare-fun d!1687980 () Bool)

(assert (= bs!1215425 (and d!1687980 b!5236035)))

(declare-fun lambda!263250 () Int)

(assert (=> bs!1215425 (= lambda!263250 lambda!263195)))

(declare-fun bs!1215426 () Bool)

(assert (= bs!1215426 (and d!1687980 d!1687782)))

(assert (=> bs!1215426 (= lambda!263250 lambda!263210)))

(declare-fun bs!1215427 () Bool)

(assert (= bs!1215427 (and d!1687980 d!1687862)))

(assert (=> bs!1215427 (= lambda!263250 lambda!263231)))

(declare-fun bs!1215428 () Bool)

(assert (= bs!1215428 (and d!1687980 d!1687962)))

(assert (=> bs!1215428 (= lambda!263250 lambda!263247)))

(assert (=> d!1687980 (= (inv!80329 setElem!33377) (forall!14259 (exprs!4717 setElem!33377) lambda!263250))))

(declare-fun bs!1215429 () Bool)

(assert (= bs!1215429 d!1687980))

(declare-fun m!6282076 () Bool)

(assert (=> bs!1215429 m!6282076))

(assert (=> setNonEmpty!33377 d!1687980))

(declare-fun d!1687982 () Bool)

(declare-fun e!3258684 () Bool)

(assert (=> d!1687982 (= (matchZipper!1077 ((_ map or) lt!2146875 lt!2146871) (t!373980 s!2326)) e!3258684)))

(declare-fun res!2222780 () Bool)

(assert (=> d!1687982 (=> res!2222780 e!3258684)))

(assert (=> d!1687982 (= res!2222780 (matchZipper!1077 lt!2146875 (t!373980 s!2326)))))

(declare-fun lt!2146999 () Unit!152678)

(assert (=> d!1687982 (= lt!2146999 (choose!38955 lt!2146875 lt!2146871 (t!373980 s!2326)))))

(assert (=> d!1687982 (= (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146875 lt!2146871 (t!373980 s!2326)) lt!2146999)))

(declare-fun b!5236862 () Bool)

(assert (=> b!5236862 (= e!3258684 (matchZipper!1077 lt!2146871 (t!373980 s!2326)))))

(assert (= (and d!1687982 (not res!2222780)) b!5236862))

(assert (=> d!1687982 m!6281352))

(assert (=> d!1687982 m!6281322))

(declare-fun m!6282078 () Bool)

(assert (=> d!1687982 m!6282078))

(assert (=> b!5236862 m!6281308))

(assert (=> b!5236061 d!1687982))

(declare-fun d!1687984 () Bool)

(declare-fun c!904850 () Bool)

(assert (=> d!1687984 (= c!904850 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258685 () Bool)

(assert (=> d!1687984 (= (matchZipper!1077 ((_ map or) lt!2146875 lt!2146871) (t!373980 s!2326)) e!3258685)))

(declare-fun b!5236863 () Bool)

(assert (=> b!5236863 (= e!3258685 (nullableZipper!1250 ((_ map or) lt!2146875 lt!2146871)))))

(declare-fun b!5236864 () Bool)

(assert (=> b!5236864 (= e!3258685 (matchZipper!1077 (derivationStepZipper!1094 ((_ map or) lt!2146875 lt!2146871) (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687984 c!904850) b!5236863))

(assert (= (and d!1687984 (not c!904850)) b!5236864))

(assert (=> d!1687984 m!6281784))

(declare-fun m!6282080 () Bool)

(assert (=> b!5236863 m!6282080))

(assert (=> b!5236864 m!6281788))

(assert (=> b!5236864 m!6281788))

(declare-fun m!6282082 () Bool)

(assert (=> b!5236864 m!6282082))

(assert (=> b!5236864 m!6281792))

(assert (=> b!5236864 m!6282082))

(assert (=> b!5236864 m!6281792))

(declare-fun m!6282084 () Bool)

(assert (=> b!5236864 m!6282084))

(assert (=> b!5236061 d!1687984))

(assert (=> b!5236051 d!1687874))

(declare-fun d!1687986 () Bool)

(declare-fun c!904851 () Bool)

(assert (=> d!1687986 (= c!904851 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258686 () Bool)

(assert (=> d!1687986 (= (matchZipper!1077 lt!2146880 (t!373980 s!2326)) e!3258686)))

(declare-fun b!5236865 () Bool)

(assert (=> b!5236865 (= e!3258686 (nullableZipper!1250 lt!2146880))))

(declare-fun b!5236866 () Bool)

(assert (=> b!5236866 (= e!3258686 (matchZipper!1077 (derivationStepZipper!1094 lt!2146880 (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687986 c!904851) b!5236865))

(assert (= (and d!1687986 (not c!904851)) b!5236866))

(assert (=> d!1687986 m!6281784))

(declare-fun m!6282086 () Bool)

(assert (=> b!5236865 m!6282086))

(assert (=> b!5236866 m!6281788))

(assert (=> b!5236866 m!6281788))

(declare-fun m!6282088 () Bool)

(assert (=> b!5236866 m!6282088))

(assert (=> b!5236866 m!6281792))

(assert (=> b!5236866 m!6282088))

(assert (=> b!5236866 m!6281792))

(declare-fun m!6282090 () Bool)

(assert (=> b!5236866 m!6282090))

(assert (=> b!5236051 d!1687986))

(declare-fun d!1687988 () Bool)

(declare-fun c!904852 () Bool)

(assert (=> d!1687988 (= c!904852 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258687 () Bool)

(assert (=> d!1687988 (= (matchZipper!1077 lt!2146875 (t!373980 s!2326)) e!3258687)))

(declare-fun b!5236867 () Bool)

(assert (=> b!5236867 (= e!3258687 (nullableZipper!1250 lt!2146875))))

(declare-fun b!5236868 () Bool)

(assert (=> b!5236868 (= e!3258687 (matchZipper!1077 (derivationStepZipper!1094 lt!2146875 (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687988 c!904852) b!5236867))

(assert (= (and d!1687988 (not c!904852)) b!5236868))

(assert (=> d!1687988 m!6281784))

(declare-fun m!6282092 () Bool)

(assert (=> b!5236867 m!6282092))

(assert (=> b!5236868 m!6281788))

(assert (=> b!5236868 m!6281788))

(declare-fun m!6282094 () Bool)

(assert (=> b!5236868 m!6282094))

(assert (=> b!5236868 m!6281792))

(assert (=> b!5236868 m!6282094))

(assert (=> b!5236868 m!6281792))

(declare-fun m!6282096 () Bool)

(assert (=> b!5236868 m!6282096))

(assert (=> b!5236051 d!1687988))

(declare-fun e!3258688 () Bool)

(declare-fun d!1687990 () Bool)

(assert (=> d!1687990 (= (matchZipper!1077 ((_ map or) lt!2146875 lt!2146865) (t!373980 s!2326)) e!3258688)))

(declare-fun res!2222781 () Bool)

(assert (=> d!1687990 (=> res!2222781 e!3258688)))

(assert (=> d!1687990 (= res!2222781 (matchZipper!1077 lt!2146875 (t!373980 s!2326)))))

(declare-fun lt!2147000 () Unit!152678)

(assert (=> d!1687990 (= lt!2147000 (choose!38955 lt!2146875 lt!2146865 (t!373980 s!2326)))))

(assert (=> d!1687990 (= (lemmaZipperConcatMatchesSameAsBothZippers!70 lt!2146875 lt!2146865 (t!373980 s!2326)) lt!2147000)))

(declare-fun b!5236869 () Bool)

(assert (=> b!5236869 (= e!3258688 (matchZipper!1077 lt!2146865 (t!373980 s!2326)))))

(assert (= (and d!1687990 (not res!2222781)) b!5236869))

(declare-fun m!6282098 () Bool)

(assert (=> d!1687990 m!6282098))

(assert (=> d!1687990 m!6281322))

(declare-fun m!6282100 () Bool)

(assert (=> d!1687990 m!6282100))

(assert (=> b!5236869 m!6281312))

(assert (=> b!5236051 d!1687990))

(declare-fun bs!1215430 () Bool)

(declare-fun d!1687992 () Bool)

(assert (= bs!1215430 (and d!1687992 d!1687782)))

(declare-fun lambda!263253 () Int)

(assert (=> bs!1215430 (= lambda!263253 lambda!263210)))

(declare-fun bs!1215431 () Bool)

(assert (= bs!1215431 (and d!1687992 b!5236035)))

(assert (=> bs!1215431 (= lambda!263253 lambda!263195)))

(declare-fun bs!1215432 () Bool)

(assert (= bs!1215432 (and d!1687992 d!1687962)))

(assert (=> bs!1215432 (= lambda!263253 lambda!263247)))

(declare-fun bs!1215433 () Bool)

(assert (= bs!1215433 (and d!1687992 d!1687862)))

(assert (=> bs!1215433 (= lambda!263253 lambda!263231)))

(declare-fun bs!1215434 () Bool)

(assert (= bs!1215434 (and d!1687992 d!1687980)))

(assert (=> bs!1215434 (= lambda!263253 lambda!263250)))

(declare-fun b!5236890 () Bool)

(declare-fun e!3258701 () Bool)

(declare-fun e!3258703 () Bool)

(assert (=> b!5236890 (= e!3258701 e!3258703)))

(declare-fun c!904863 () Bool)

(assert (=> b!5236890 (= c!904863 (isEmpty!32599 (unfocusZipperList!275 zl!343)))))

(declare-fun b!5236891 () Bool)

(declare-fun e!3258704 () Bool)

(assert (=> b!5236891 (= e!3258704 (isEmpty!32599 (t!373979 (unfocusZipperList!275 zl!343))))))

(declare-fun b!5236892 () Bool)

(declare-fun e!3258702 () Regex!14833)

(declare-fun e!3258706 () Regex!14833)

(assert (=> b!5236892 (= e!3258702 e!3258706)))

(declare-fun c!904864 () Bool)

(assert (=> b!5236892 (= c!904864 ((_ is Cons!60674) (unfocusZipperList!275 zl!343)))))

(declare-fun b!5236893 () Bool)

(declare-fun lt!2147003 () Regex!14833)

(declare-fun isEmptyLang!795 (Regex!14833) Bool)

(assert (=> b!5236893 (= e!3258703 (isEmptyLang!795 lt!2147003))))

(assert (=> d!1687992 e!3258701))

(declare-fun res!2222787 () Bool)

(assert (=> d!1687992 (=> (not res!2222787) (not e!3258701))))

(assert (=> d!1687992 (= res!2222787 (validRegex!6569 lt!2147003))))

(assert (=> d!1687992 (= lt!2147003 e!3258702)))

(declare-fun c!904862 () Bool)

(assert (=> d!1687992 (= c!904862 e!3258704)))

(declare-fun res!2222786 () Bool)

(assert (=> d!1687992 (=> (not res!2222786) (not e!3258704))))

(assert (=> d!1687992 (= res!2222786 ((_ is Cons!60674) (unfocusZipperList!275 zl!343)))))

(assert (=> d!1687992 (forall!14259 (unfocusZipperList!275 zl!343) lambda!263253)))

(assert (=> d!1687992 (= (generalisedUnion!762 (unfocusZipperList!275 zl!343)) lt!2147003)))

(declare-fun b!5236894 () Bool)

(declare-fun e!3258705 () Bool)

(assert (=> b!5236894 (= e!3258705 (= lt!2147003 (head!11219 (unfocusZipperList!275 zl!343))))))

(declare-fun b!5236895 () Bool)

(assert (=> b!5236895 (= e!3258703 e!3258705)))

(declare-fun c!904861 () Bool)

(assert (=> b!5236895 (= c!904861 (isEmpty!32599 (tail!10316 (unfocusZipperList!275 zl!343))))))

(declare-fun b!5236896 () Bool)

(assert (=> b!5236896 (= e!3258702 (h!67122 (unfocusZipperList!275 zl!343)))))

(declare-fun b!5236897 () Bool)

(assert (=> b!5236897 (= e!3258706 (Union!14833 (h!67122 (unfocusZipperList!275 zl!343)) (generalisedUnion!762 (t!373979 (unfocusZipperList!275 zl!343)))))))

(declare-fun b!5236898 () Bool)

(assert (=> b!5236898 (= e!3258706 EmptyLang!14833)))

(declare-fun b!5236899 () Bool)

(declare-fun isUnion!227 (Regex!14833) Bool)

(assert (=> b!5236899 (= e!3258705 (isUnion!227 lt!2147003))))

(assert (= (and d!1687992 res!2222786) b!5236891))

(assert (= (and d!1687992 c!904862) b!5236896))

(assert (= (and d!1687992 (not c!904862)) b!5236892))

(assert (= (and b!5236892 c!904864) b!5236897))

(assert (= (and b!5236892 (not c!904864)) b!5236898))

(assert (= (and d!1687992 res!2222787) b!5236890))

(assert (= (and b!5236890 c!904863) b!5236893))

(assert (= (and b!5236890 (not c!904863)) b!5236895))

(assert (= (and b!5236895 c!904861) b!5236894))

(assert (= (and b!5236895 (not c!904861)) b!5236899))

(assert (=> b!5236890 m!6281402))

(declare-fun m!6282102 () Bool)

(assert (=> b!5236890 m!6282102))

(declare-fun m!6282104 () Bool)

(assert (=> b!5236897 m!6282104))

(assert (=> b!5236894 m!6281402))

(declare-fun m!6282106 () Bool)

(assert (=> b!5236894 m!6282106))

(declare-fun m!6282108 () Bool)

(assert (=> d!1687992 m!6282108))

(assert (=> d!1687992 m!6281402))

(declare-fun m!6282110 () Bool)

(assert (=> d!1687992 m!6282110))

(assert (=> b!5236895 m!6281402))

(declare-fun m!6282112 () Bool)

(assert (=> b!5236895 m!6282112))

(assert (=> b!5236895 m!6282112))

(declare-fun m!6282114 () Bool)

(assert (=> b!5236895 m!6282114))

(declare-fun m!6282116 () Bool)

(assert (=> b!5236891 m!6282116))

(declare-fun m!6282118 () Bool)

(assert (=> b!5236893 m!6282118))

(declare-fun m!6282120 () Bool)

(assert (=> b!5236899 m!6282120))

(assert (=> b!5236050 d!1687992))

(declare-fun bs!1215435 () Bool)

(declare-fun d!1687994 () Bool)

(assert (= bs!1215435 (and d!1687994 d!1687782)))

(declare-fun lambda!263256 () Int)

(assert (=> bs!1215435 (= lambda!263256 lambda!263210)))

(declare-fun bs!1215436 () Bool)

(assert (= bs!1215436 (and d!1687994 b!5236035)))

(assert (=> bs!1215436 (= lambda!263256 lambda!263195)))

(declare-fun bs!1215437 () Bool)

(assert (= bs!1215437 (and d!1687994 d!1687962)))

(assert (=> bs!1215437 (= lambda!263256 lambda!263247)))

(declare-fun bs!1215438 () Bool)

(assert (= bs!1215438 (and d!1687994 d!1687992)))

(assert (=> bs!1215438 (= lambda!263256 lambda!263253)))

(declare-fun bs!1215439 () Bool)

(assert (= bs!1215439 (and d!1687994 d!1687862)))

(assert (=> bs!1215439 (= lambda!263256 lambda!263231)))

(declare-fun bs!1215440 () Bool)

(assert (= bs!1215440 (and d!1687994 d!1687980)))

(assert (=> bs!1215440 (= lambda!263256 lambda!263250)))

(declare-fun lt!2147006 () List!60798)

(assert (=> d!1687994 (forall!14259 lt!2147006 lambda!263256)))

(declare-fun e!3258709 () List!60798)

(assert (=> d!1687994 (= lt!2147006 e!3258709)))

(declare-fun c!904867 () Bool)

(assert (=> d!1687994 (= c!904867 ((_ is Cons!60676) zl!343))))

(assert (=> d!1687994 (= (unfocusZipperList!275 zl!343) lt!2147006)))

(declare-fun b!5236904 () Bool)

(assert (=> b!5236904 (= e!3258709 (Cons!60674 (generalisedConcat!502 (exprs!4717 (h!67124 zl!343))) (unfocusZipperList!275 (t!373981 zl!343))))))

(declare-fun b!5236905 () Bool)

(assert (=> b!5236905 (= e!3258709 Nil!60674)))

(assert (= (and d!1687994 c!904867) b!5236904))

(assert (= (and d!1687994 (not c!904867)) b!5236905))

(declare-fun m!6282122 () Bool)

(assert (=> d!1687994 m!6282122))

(assert (=> b!5236904 m!6281410))

(declare-fun m!6282124 () Bool)

(assert (=> b!5236904 m!6282124))

(assert (=> b!5236050 d!1687994))

(declare-fun d!1687996 () Bool)

(declare-fun c!904868 () Bool)

(assert (=> d!1687996 (= c!904868 (isEmpty!32603 (t!373980 s!2326)))))

(declare-fun e!3258710 () Bool)

(assert (=> d!1687996 (= (matchZipper!1077 lt!2146871 (t!373980 s!2326)) e!3258710)))

(declare-fun b!5236906 () Bool)

(assert (=> b!5236906 (= e!3258710 (nullableZipper!1250 lt!2146871))))

(declare-fun b!5236907 () Bool)

(assert (=> b!5236907 (= e!3258710 (matchZipper!1077 (derivationStepZipper!1094 lt!2146871 (head!11218 (t!373980 s!2326))) (tail!10315 (t!373980 s!2326))))))

(assert (= (and d!1687996 c!904868) b!5236906))

(assert (= (and d!1687996 (not c!904868)) b!5236907))

(assert (=> d!1687996 m!6281784))

(declare-fun m!6282126 () Bool)

(assert (=> b!5236906 m!6282126))

(assert (=> b!5236907 m!6281788))

(assert (=> b!5236907 m!6281788))

(declare-fun m!6282128 () Bool)

(assert (=> b!5236907 m!6282128))

(assert (=> b!5236907 m!6281792))

(assert (=> b!5236907 m!6282128))

(assert (=> b!5236907 m!6281792))

(declare-fun m!6282130 () Bool)

(assert (=> b!5236907 m!6282130))

(assert (=> b!5236030 d!1687996))

(declare-fun bm!370620 () Bool)

(declare-fun call!370627 () Bool)

(declare-fun c!904873 () Bool)

(assert (=> bm!370620 (= call!370627 (validRegex!6569 (ite c!904873 (regOne!30179 r!7292) (regOne!30178 r!7292))))))

(declare-fun bm!370621 () Bool)

(declare-fun call!370626 () Bool)

(declare-fun call!370625 () Bool)

(assert (=> bm!370621 (= call!370626 call!370625)))

(declare-fun b!5236926 () Bool)

(declare-fun e!3258728 () Bool)

(declare-fun e!3258730 () Bool)

(assert (=> b!5236926 (= e!3258728 e!3258730)))

(assert (=> b!5236926 (= c!904873 ((_ is Union!14833) r!7292))))

(declare-fun b!5236927 () Bool)

(declare-fun e!3258726 () Bool)

(assert (=> b!5236927 (= e!3258726 call!370626)))

(declare-fun b!5236928 () Bool)

(declare-fun res!2222800 () Bool)

(declare-fun e!3258729 () Bool)

(assert (=> b!5236928 (=> res!2222800 e!3258729)))

(assert (=> b!5236928 (= res!2222800 (not ((_ is Concat!23678) r!7292)))))

(assert (=> b!5236928 (= e!3258730 e!3258729)))

(declare-fun b!5236929 () Bool)

(declare-fun e!3258731 () Bool)

(assert (=> b!5236929 (= e!3258731 call!370625)))

(declare-fun b!5236930 () Bool)

(declare-fun e!3258725 () Bool)

(assert (=> b!5236930 (= e!3258725 e!3258728)))

(declare-fun c!904874 () Bool)

(assert (=> b!5236930 (= c!904874 ((_ is Star!14833) r!7292))))

(declare-fun d!1687998 () Bool)

(declare-fun res!2222799 () Bool)

(assert (=> d!1687998 (=> res!2222799 e!3258725)))

(assert (=> d!1687998 (= res!2222799 ((_ is ElementMatch!14833) r!7292))))

(assert (=> d!1687998 (= (validRegex!6569 r!7292) e!3258725)))

(declare-fun b!5236931 () Bool)

(declare-fun e!3258727 () Bool)

(assert (=> b!5236931 (= e!3258727 call!370626)))

(declare-fun b!5236932 () Bool)

(assert (=> b!5236932 (= e!3258729 e!3258727)))

(declare-fun res!2222801 () Bool)

(assert (=> b!5236932 (=> (not res!2222801) (not e!3258727))))

(assert (=> b!5236932 (= res!2222801 call!370627)))

(declare-fun b!5236933 () Bool)

(assert (=> b!5236933 (= e!3258728 e!3258731)))

(declare-fun res!2222798 () Bool)

(assert (=> b!5236933 (= res!2222798 (not (nullable!5002 (reg!15162 r!7292))))))

(assert (=> b!5236933 (=> (not res!2222798) (not e!3258731))))

(declare-fun bm!370622 () Bool)

(assert (=> bm!370622 (= call!370625 (validRegex!6569 (ite c!904874 (reg!15162 r!7292) (ite c!904873 (regTwo!30179 r!7292) (regTwo!30178 r!7292)))))))

(declare-fun b!5236934 () Bool)

(declare-fun res!2222802 () Bool)

(assert (=> b!5236934 (=> (not res!2222802) (not e!3258726))))

(assert (=> b!5236934 (= res!2222802 call!370627)))

(assert (=> b!5236934 (= e!3258730 e!3258726)))

(assert (= (and d!1687998 (not res!2222799)) b!5236930))

(assert (= (and b!5236930 c!904874) b!5236933))

(assert (= (and b!5236930 (not c!904874)) b!5236926))

(assert (= (and b!5236933 res!2222798) b!5236929))

(assert (= (and b!5236926 c!904873) b!5236934))

(assert (= (and b!5236926 (not c!904873)) b!5236928))

(assert (= (and b!5236934 res!2222802) b!5236927))

(assert (= (and b!5236928 (not res!2222800)) b!5236932))

(assert (= (and b!5236932 res!2222801) b!5236931))

(assert (= (or b!5236927 b!5236931) bm!370621))

(assert (= (or b!5236934 b!5236932) bm!370620))

(assert (= (or b!5236929 bm!370621) bm!370622))

(declare-fun m!6282132 () Bool)

(assert (=> bm!370620 m!6282132))

(declare-fun m!6282134 () Bool)

(assert (=> b!5236933 m!6282134))

(declare-fun m!6282136 () Bool)

(assert (=> bm!370622 m!6282136))

(assert (=> start!553574 d!1687998))

(assert (=> b!5236049 d!1687996))

(assert (=> b!5236028 d!1687996))

(declare-fun bs!1215441 () Bool)

(declare-fun b!5236944 () Bool)

(assert (= bs!1215441 (and b!5236944 d!1687940)))

(declare-fun lambda!263257 () Int)

(assert (=> bs!1215441 (not (= lambda!263257 lambda!263246))))

(declare-fun bs!1215442 () Bool)

(assert (= bs!1215442 (and b!5236944 b!5236371)))

(assert (=> bs!1215442 (not (= lambda!263257 lambda!263222))))

(declare-fun bs!1215443 () Bool)

(assert (= bs!1215443 (and b!5236944 b!5236052)))

(assert (=> bs!1215443 (not (= lambda!263257 lambda!263192))))

(declare-fun bs!1215444 () Bool)

(assert (= bs!1215444 (and b!5236944 d!1687938)))

(assert (=> bs!1215444 (not (= lambda!263257 lambda!263240))))

(declare-fun bs!1215445 () Bool)

(assert (= bs!1215445 (and b!5236944 b!5236375)))

(assert (=> bs!1215445 (= (and (= (reg!15162 r!7292) (reg!15162 lt!2146850)) (= r!7292 lt!2146850)) (= lambda!263257 lambda!263221))))

(assert (=> bs!1215443 (not (= lambda!263257 lambda!263193))))

(assert (=> bs!1215441 (not (= lambda!263257 lambda!263245))))

(assert (=> b!5236944 true))

(assert (=> b!5236944 true))

(declare-fun bs!1215446 () Bool)

(declare-fun b!5236940 () Bool)

(assert (= bs!1215446 (and b!5236940 d!1687940)))

(declare-fun lambda!263258 () Int)

(assert (=> bs!1215446 (= lambda!263258 lambda!263246)))

(declare-fun bs!1215447 () Bool)

(assert (= bs!1215447 (and b!5236940 b!5236371)))

(assert (=> bs!1215447 (= (and (= (regOne!30178 r!7292) (regOne!30178 lt!2146850)) (= (regTwo!30178 r!7292) (regTwo!30178 lt!2146850))) (= lambda!263258 lambda!263222))))

(declare-fun bs!1215448 () Bool)

(assert (= bs!1215448 (and b!5236940 b!5236052)))

(assert (=> bs!1215448 (not (= lambda!263258 lambda!263192))))

(declare-fun bs!1215449 () Bool)

(assert (= bs!1215449 (and b!5236940 b!5236944)))

(assert (=> bs!1215449 (not (= lambda!263258 lambda!263257))))

(declare-fun bs!1215450 () Bool)

(assert (= bs!1215450 (and b!5236940 d!1687938)))

(assert (=> bs!1215450 (not (= lambda!263258 lambda!263240))))

(declare-fun bs!1215451 () Bool)

(assert (= bs!1215451 (and b!5236940 b!5236375)))

(assert (=> bs!1215451 (not (= lambda!263258 lambda!263221))))

(assert (=> bs!1215448 (= lambda!263258 lambda!263193)))

(assert (=> bs!1215446 (not (= lambda!263258 lambda!263245))))

(assert (=> b!5236940 true))

(assert (=> b!5236940 true))

(declare-fun b!5236935 () Bool)

(declare-fun res!2222805 () Bool)

(declare-fun e!3258735 () Bool)

(assert (=> b!5236935 (=> res!2222805 e!3258735)))

(declare-fun call!370628 () Bool)

(assert (=> b!5236935 (= res!2222805 call!370628)))

(declare-fun e!3258733 () Bool)

(assert (=> b!5236935 (= e!3258733 e!3258735)))

(declare-fun bm!370623 () Bool)

(declare-fun c!904876 () Bool)

(declare-fun call!370629 () Bool)

(assert (=> bm!370623 (= call!370629 (Exists!2014 (ite c!904876 lambda!263257 lambda!263258)))))

(declare-fun d!1688000 () Bool)

(declare-fun c!904875 () Bool)

(assert (=> d!1688000 (= c!904875 ((_ is EmptyExpr!14833) r!7292))))

(declare-fun e!3258734 () Bool)

(assert (=> d!1688000 (= (matchRSpec!1936 r!7292 s!2326) e!3258734)))

(declare-fun b!5236936 () Bool)

(assert (=> b!5236936 (= e!3258734 call!370628)))

(declare-fun b!5236937 () Bool)

(declare-fun e!3258737 () Bool)

(assert (=> b!5236937 (= e!3258737 (matchRSpec!1936 (regTwo!30179 r!7292) s!2326))))

(declare-fun b!5236938 () Bool)

(declare-fun e!3258738 () Bool)

(assert (=> b!5236938 (= e!3258738 e!3258737)))

(declare-fun res!2222803 () Bool)

(assert (=> b!5236938 (= res!2222803 (matchRSpec!1936 (regOne!30179 r!7292) s!2326))))

(assert (=> b!5236938 (=> res!2222803 e!3258737)))

(declare-fun b!5236939 () Bool)

(declare-fun e!3258732 () Bool)

(assert (=> b!5236939 (= e!3258732 (= s!2326 (Cons!60675 (c!904611 r!7292) Nil!60675)))))

(assert (=> b!5236940 (= e!3258733 call!370629)))

(declare-fun bm!370624 () Bool)

(assert (=> bm!370624 (= call!370628 (isEmpty!32603 s!2326))))

(declare-fun b!5236941 () Bool)

(declare-fun c!904878 () Bool)

(assert (=> b!5236941 (= c!904878 ((_ is Union!14833) r!7292))))

(assert (=> b!5236941 (= e!3258732 e!3258738)))

(declare-fun b!5236942 () Bool)

(declare-fun c!904877 () Bool)

(assert (=> b!5236942 (= c!904877 ((_ is ElementMatch!14833) r!7292))))

(declare-fun e!3258736 () Bool)

(assert (=> b!5236942 (= e!3258736 e!3258732)))

(declare-fun b!5236943 () Bool)

(assert (=> b!5236943 (= e!3258738 e!3258733)))

(assert (=> b!5236943 (= c!904876 ((_ is Star!14833) r!7292))))

(assert (=> b!5236944 (= e!3258735 call!370629)))

(declare-fun b!5236945 () Bool)

(assert (=> b!5236945 (= e!3258734 e!3258736)))

(declare-fun res!2222804 () Bool)

(assert (=> b!5236945 (= res!2222804 (not ((_ is EmptyLang!14833) r!7292)))))

(assert (=> b!5236945 (=> (not res!2222804) (not e!3258736))))

(assert (= (and d!1688000 c!904875) b!5236936))

(assert (= (and d!1688000 (not c!904875)) b!5236945))

(assert (= (and b!5236945 res!2222804) b!5236942))

(assert (= (and b!5236942 c!904877) b!5236939))

(assert (= (and b!5236942 (not c!904877)) b!5236941))

(assert (= (and b!5236941 c!904878) b!5236938))

(assert (= (and b!5236941 (not c!904878)) b!5236943))

(assert (= (and b!5236938 (not res!2222803)) b!5236937))

(assert (= (and b!5236943 c!904876) b!5236935))

(assert (= (and b!5236943 (not c!904876)) b!5236940))

(assert (= (and b!5236935 (not res!2222805)) b!5236944))

(assert (= (or b!5236944 b!5236940) bm!370623))

(assert (= (or b!5236936 b!5236935) bm!370624))

(declare-fun m!6282138 () Bool)

(assert (=> bm!370623 m!6282138))

(declare-fun m!6282140 () Bool)

(assert (=> b!5236937 m!6282140))

(declare-fun m!6282142 () Bool)

(assert (=> b!5236938 m!6282142))

(assert (=> bm!370624 m!6281480))

(assert (=> b!5236047 d!1688000))

(declare-fun b!5236946 () Bool)

(declare-fun e!3258743 () Bool)

(assert (=> b!5236946 (= e!3258743 (matchR!7018 (derivativeStep!4072 r!7292 (head!11218 s!2326)) (tail!10315 s!2326)))))

(declare-fun b!5236947 () Bool)

(declare-fun e!3258744 () Bool)

(assert (=> b!5236947 (= e!3258744 (not (= (head!11218 s!2326) (c!904611 r!7292))))))

(declare-fun b!5236948 () Bool)

(declare-fun e!3258742 () Bool)

(assert (=> b!5236948 (= e!3258742 (= (head!11218 s!2326) (c!904611 r!7292)))))

(declare-fun b!5236949 () Bool)

(declare-fun res!2222808 () Bool)

(assert (=> b!5236949 (=> res!2222808 e!3258744)))

(assert (=> b!5236949 (= res!2222808 (not (isEmpty!32603 (tail!10315 s!2326))))))

(declare-fun b!5236950 () Bool)

(declare-fun res!2222813 () Bool)

(declare-fun e!3258741 () Bool)

(assert (=> b!5236950 (=> res!2222813 e!3258741)))

(assert (=> b!5236950 (= res!2222813 e!3258742)))

(declare-fun res!2222811 () Bool)

(assert (=> b!5236950 (=> (not res!2222811) (not e!3258742))))

(declare-fun lt!2147007 () Bool)

(assert (=> b!5236950 (= res!2222811 lt!2147007)))

(declare-fun b!5236951 () Bool)

(declare-fun e!3258739 () Bool)

(declare-fun call!370630 () Bool)

(assert (=> b!5236951 (= e!3258739 (= lt!2147007 call!370630))))

(declare-fun b!5236952 () Bool)

(declare-fun e!3258745 () Bool)

(assert (=> b!5236952 (= e!3258745 e!3258744)))

(declare-fun res!2222810 () Bool)

(assert (=> b!5236952 (=> res!2222810 e!3258744)))

(assert (=> b!5236952 (= res!2222810 call!370630)))

(declare-fun b!5236953 () Bool)

(declare-fun e!3258740 () Bool)

(assert (=> b!5236953 (= e!3258740 (not lt!2147007))))

(declare-fun b!5236954 () Bool)

(assert (=> b!5236954 (= e!3258743 (nullable!5002 r!7292))))

(declare-fun bm!370625 () Bool)

(assert (=> bm!370625 (= call!370630 (isEmpty!32603 s!2326))))

(declare-fun b!5236955 () Bool)

(declare-fun res!2222806 () Bool)

(assert (=> b!5236955 (=> res!2222806 e!3258741)))

(assert (=> b!5236955 (= res!2222806 (not ((_ is ElementMatch!14833) r!7292)))))

(assert (=> b!5236955 (= e!3258740 e!3258741)))

(declare-fun b!5236956 () Bool)

(declare-fun res!2222812 () Bool)

(assert (=> b!5236956 (=> (not res!2222812) (not e!3258742))))

(assert (=> b!5236956 (= res!2222812 (not call!370630))))

(declare-fun d!1688002 () Bool)

(assert (=> d!1688002 e!3258739))

(declare-fun c!904880 () Bool)

(assert (=> d!1688002 (= c!904880 ((_ is EmptyExpr!14833) r!7292))))

(assert (=> d!1688002 (= lt!2147007 e!3258743)))

(declare-fun c!904881 () Bool)

(assert (=> d!1688002 (= c!904881 (isEmpty!32603 s!2326))))

(assert (=> d!1688002 (validRegex!6569 r!7292)))

(assert (=> d!1688002 (= (matchR!7018 r!7292 s!2326) lt!2147007)))

(declare-fun b!5236957 () Bool)

(assert (=> b!5236957 (= e!3258739 e!3258740)))

(declare-fun c!904879 () Bool)

(assert (=> b!5236957 (= c!904879 ((_ is EmptyLang!14833) r!7292))))

(declare-fun b!5236958 () Bool)

(assert (=> b!5236958 (= e!3258741 e!3258745)))

(declare-fun res!2222807 () Bool)

(assert (=> b!5236958 (=> (not res!2222807) (not e!3258745))))

(assert (=> b!5236958 (= res!2222807 (not lt!2147007))))

(declare-fun b!5236959 () Bool)

(declare-fun res!2222809 () Bool)

(assert (=> b!5236959 (=> (not res!2222809) (not e!3258742))))

(assert (=> b!5236959 (= res!2222809 (isEmpty!32603 (tail!10315 s!2326)))))

(assert (= (and d!1688002 c!904881) b!5236954))

(assert (= (and d!1688002 (not c!904881)) b!5236946))

(assert (= (and d!1688002 c!904880) b!5236951))

(assert (= (and d!1688002 (not c!904880)) b!5236957))

(assert (= (and b!5236957 c!904879) b!5236953))

(assert (= (and b!5236957 (not c!904879)) b!5236955))

(assert (= (and b!5236955 (not res!2222806)) b!5236950))

(assert (= (and b!5236950 res!2222811) b!5236956))

(assert (= (and b!5236956 res!2222812) b!5236959))

(assert (= (and b!5236959 res!2222809) b!5236948))

(assert (= (and b!5236950 (not res!2222813)) b!5236958))

(assert (= (and b!5236958 res!2222807) b!5236952))

(assert (= (and b!5236952 (not res!2222810)) b!5236949))

(assert (= (and b!5236949 (not res!2222808)) b!5236947))

(assert (= (or b!5236951 b!5236952 b!5236956) bm!370625))

(assert (=> b!5236946 m!6281484))

(assert (=> b!5236946 m!6281484))

(declare-fun m!6282144 () Bool)

(assert (=> b!5236946 m!6282144))

(assert (=> b!5236946 m!6281488))

(assert (=> b!5236946 m!6282144))

(assert (=> b!5236946 m!6281488))

(declare-fun m!6282146 () Bool)

(assert (=> b!5236946 m!6282146))

(declare-fun m!6282148 () Bool)

(assert (=> b!5236954 m!6282148))

(assert (=> b!5236948 m!6281484))

(assert (=> b!5236949 m!6281488))

(assert (=> b!5236949 m!6281488))

(assert (=> b!5236949 m!6281708))

(assert (=> bm!370625 m!6281480))

(assert (=> b!5236959 m!6281488))

(assert (=> b!5236959 m!6281488))

(assert (=> b!5236959 m!6281708))

(assert (=> b!5236947 m!6281484))

(assert (=> d!1688002 m!6281480))

(assert (=> d!1688002 m!6281310))

(assert (=> b!5236047 d!1688002))

(declare-fun d!1688004 () Bool)

(assert (=> d!1688004 (= (matchR!7018 r!7292 s!2326) (matchRSpec!1936 r!7292 s!2326))))

(declare-fun lt!2147008 () Unit!152678)

(assert (=> d!1688004 (= lt!2147008 (choose!38952 r!7292 s!2326))))

(assert (=> d!1688004 (validRegex!6569 r!7292)))

(assert (=> d!1688004 (= (mainMatchTheorem!1936 r!7292 s!2326) lt!2147008)))

(declare-fun bs!1215452 () Bool)

(assert (= bs!1215452 d!1688004))

(assert (=> bs!1215452 m!6281328))

(assert (=> bs!1215452 m!6281326))

(declare-fun m!6282150 () Bool)

(assert (=> bs!1215452 m!6282150))

(assert (=> bs!1215452 m!6281310))

(assert (=> b!5236047 d!1688004))

(declare-fun bs!1215453 () Bool)

(declare-fun d!1688006 () Bool)

(assert (= bs!1215453 (and d!1688006 d!1687782)))

(declare-fun lambda!263259 () Int)

(assert (=> bs!1215453 (= lambda!263259 lambda!263210)))

(declare-fun bs!1215454 () Bool)

(assert (= bs!1215454 (and d!1688006 b!5236035)))

(assert (=> bs!1215454 (= lambda!263259 lambda!263195)))

(declare-fun bs!1215455 () Bool)

(assert (= bs!1215455 (and d!1688006 d!1687962)))

(assert (=> bs!1215455 (= lambda!263259 lambda!263247)))

(declare-fun bs!1215456 () Bool)

(assert (= bs!1215456 (and d!1688006 d!1687992)))

(assert (=> bs!1215456 (= lambda!263259 lambda!263253)))

(declare-fun bs!1215457 () Bool)

(assert (= bs!1215457 (and d!1688006 d!1687862)))

(assert (=> bs!1215457 (= lambda!263259 lambda!263231)))

(declare-fun bs!1215458 () Bool)

(assert (= bs!1215458 (and d!1688006 d!1687994)))

(assert (=> bs!1215458 (= lambda!263259 lambda!263256)))

(declare-fun bs!1215459 () Bool)

(assert (= bs!1215459 (and d!1688006 d!1687980)))

(assert (=> bs!1215459 (= lambda!263259 lambda!263250)))

(assert (=> d!1688006 (= (inv!80329 (h!67124 zl!343)) (forall!14259 (exprs!4717 (h!67124 zl!343)) lambda!263259))))

(declare-fun bs!1215460 () Bool)

(assert (= bs!1215460 d!1688006))

(declare-fun m!6282152 () Bool)

(assert (=> bs!1215460 m!6282152))

(assert (=> b!5236046 d!1688006))

(declare-fun b!5236964 () Bool)

(declare-fun e!3258748 () Bool)

(declare-fun tp!1466908 () Bool)

(declare-fun tp!1466909 () Bool)

(assert (=> b!5236964 (= e!3258748 (and tp!1466908 tp!1466909))))

(assert (=> b!5236029 (= tp!1466838 e!3258748)))

(assert (= (and b!5236029 ((_ is Cons!60674) (exprs!4717 (h!67124 zl!343)))) b!5236964))

(declare-fun b!5236976 () Bool)

(declare-fun e!3258751 () Bool)

(declare-fun tp!1466921 () Bool)

(declare-fun tp!1466924 () Bool)

(assert (=> b!5236976 (= e!3258751 (and tp!1466921 tp!1466924))))

(declare-fun b!5236977 () Bool)

(declare-fun tp!1466923 () Bool)

(assert (=> b!5236977 (= e!3258751 tp!1466923)))

(declare-fun b!5236978 () Bool)

(declare-fun tp!1466920 () Bool)

(declare-fun tp!1466922 () Bool)

(assert (=> b!5236978 (= e!3258751 (and tp!1466920 tp!1466922))))

(declare-fun b!5236975 () Bool)

(assert (=> b!5236975 (= e!3258751 tp_is_empty!38919)))

(assert (=> b!5236059 (= tp!1466836 e!3258751)))

(assert (= (and b!5236059 ((_ is ElementMatch!14833) (regOne!30178 r!7292))) b!5236975))

(assert (= (and b!5236059 ((_ is Concat!23678) (regOne!30178 r!7292))) b!5236976))

(assert (= (and b!5236059 ((_ is Star!14833) (regOne!30178 r!7292))) b!5236977))

(assert (= (and b!5236059 ((_ is Union!14833) (regOne!30178 r!7292))) b!5236978))

(declare-fun b!5236980 () Bool)

(declare-fun e!3258752 () Bool)

(declare-fun tp!1466926 () Bool)

(declare-fun tp!1466929 () Bool)

(assert (=> b!5236980 (= e!3258752 (and tp!1466926 tp!1466929))))

(declare-fun b!5236981 () Bool)

(declare-fun tp!1466928 () Bool)

(assert (=> b!5236981 (= e!3258752 tp!1466928)))

(declare-fun b!5236982 () Bool)

(declare-fun tp!1466925 () Bool)

(declare-fun tp!1466927 () Bool)

(assert (=> b!5236982 (= e!3258752 (and tp!1466925 tp!1466927))))

(declare-fun b!5236979 () Bool)

(assert (=> b!5236979 (= e!3258752 tp_is_empty!38919)))

(assert (=> b!5236059 (= tp!1466842 e!3258752)))

(assert (= (and b!5236059 ((_ is ElementMatch!14833) (regTwo!30178 r!7292))) b!5236979))

(assert (= (and b!5236059 ((_ is Concat!23678) (regTwo!30178 r!7292))) b!5236980))

(assert (= (and b!5236059 ((_ is Star!14833) (regTwo!30178 r!7292))) b!5236981))

(assert (= (and b!5236059 ((_ is Union!14833) (regTwo!30178 r!7292))) b!5236982))

(declare-fun b!5236984 () Bool)

(declare-fun e!3258753 () Bool)

(declare-fun tp!1466931 () Bool)

(declare-fun tp!1466934 () Bool)

(assert (=> b!5236984 (= e!3258753 (and tp!1466931 tp!1466934))))

(declare-fun b!5236985 () Bool)

(declare-fun tp!1466933 () Bool)

(assert (=> b!5236985 (= e!3258753 tp!1466933)))

(declare-fun b!5236986 () Bool)

(declare-fun tp!1466930 () Bool)

(declare-fun tp!1466932 () Bool)

(assert (=> b!5236986 (= e!3258753 (and tp!1466930 tp!1466932))))

(declare-fun b!5236983 () Bool)

(assert (=> b!5236983 (= e!3258753 tp_is_empty!38919)))

(assert (=> b!5236048 (= tp!1466841 e!3258753)))

(assert (= (and b!5236048 ((_ is ElementMatch!14833) (reg!15162 r!7292))) b!5236983))

(assert (= (and b!5236048 ((_ is Concat!23678) (reg!15162 r!7292))) b!5236984))

(assert (= (and b!5236048 ((_ is Star!14833) (reg!15162 r!7292))) b!5236985))

(assert (= (and b!5236048 ((_ is Union!14833) (reg!15162 r!7292))) b!5236986))

(declare-fun condSetEmpty!33383 () Bool)

(assert (=> setNonEmpty!33377 (= condSetEmpty!33383 (= setRest!33377 ((as const (Array Context!8434 Bool)) false)))))

(declare-fun setRes!33383 () Bool)

(assert (=> setNonEmpty!33377 (= tp!1466840 setRes!33383)))

(declare-fun setIsEmpty!33383 () Bool)

(assert (=> setIsEmpty!33383 setRes!33383))

(declare-fun setNonEmpty!33383 () Bool)

(declare-fun setElem!33383 () Context!8434)

(declare-fun e!3258756 () Bool)

(declare-fun tp!1466939 () Bool)

(assert (=> setNonEmpty!33383 (= setRes!33383 (and tp!1466939 (inv!80329 setElem!33383) e!3258756))))

(declare-fun setRest!33383 () (InoxSet Context!8434))

(assert (=> setNonEmpty!33383 (= setRest!33377 ((_ map or) (store ((as const (Array Context!8434 Bool)) false) setElem!33383 true) setRest!33383))))

(declare-fun b!5236991 () Bool)

(declare-fun tp!1466940 () Bool)

(assert (=> b!5236991 (= e!3258756 tp!1466940)))

(assert (= (and setNonEmpty!33377 condSetEmpty!33383) setIsEmpty!33383))

(assert (= (and setNonEmpty!33377 (not condSetEmpty!33383)) setNonEmpty!33383))

(assert (= setNonEmpty!33383 b!5236991))

(declare-fun m!6282154 () Bool)

(assert (=> setNonEmpty!33383 m!6282154))

(declare-fun b!5236993 () Bool)

(declare-fun e!3258757 () Bool)

(declare-fun tp!1466942 () Bool)

(declare-fun tp!1466945 () Bool)

(assert (=> b!5236993 (= e!3258757 (and tp!1466942 tp!1466945))))

(declare-fun b!5236994 () Bool)

(declare-fun tp!1466944 () Bool)

(assert (=> b!5236994 (= e!3258757 tp!1466944)))

(declare-fun b!5236995 () Bool)

(declare-fun tp!1466941 () Bool)

(declare-fun tp!1466943 () Bool)

(assert (=> b!5236995 (= e!3258757 (and tp!1466941 tp!1466943))))

(declare-fun b!5236992 () Bool)

(assert (=> b!5236992 (= e!3258757 tp_is_empty!38919)))

(assert (=> b!5236062 (= tp!1466837 e!3258757)))

(assert (= (and b!5236062 ((_ is ElementMatch!14833) (regOne!30179 r!7292))) b!5236992))

(assert (= (and b!5236062 ((_ is Concat!23678) (regOne!30179 r!7292))) b!5236993))

(assert (= (and b!5236062 ((_ is Star!14833) (regOne!30179 r!7292))) b!5236994))

(assert (= (and b!5236062 ((_ is Union!14833) (regOne!30179 r!7292))) b!5236995))

(declare-fun b!5236997 () Bool)

(declare-fun e!3258758 () Bool)

(declare-fun tp!1466947 () Bool)

(declare-fun tp!1466950 () Bool)

(assert (=> b!5236997 (= e!3258758 (and tp!1466947 tp!1466950))))

(declare-fun b!5236998 () Bool)

(declare-fun tp!1466949 () Bool)

(assert (=> b!5236998 (= e!3258758 tp!1466949)))

(declare-fun b!5236999 () Bool)

(declare-fun tp!1466946 () Bool)

(declare-fun tp!1466948 () Bool)

(assert (=> b!5236999 (= e!3258758 (and tp!1466946 tp!1466948))))

(declare-fun b!5236996 () Bool)

(assert (=> b!5236996 (= e!3258758 tp_is_empty!38919)))

(assert (=> b!5236062 (= tp!1466843 e!3258758)))

(assert (= (and b!5236062 ((_ is ElementMatch!14833) (regTwo!30179 r!7292))) b!5236996))

(assert (= (and b!5236062 ((_ is Concat!23678) (regTwo!30179 r!7292))) b!5236997))

(assert (= (and b!5236062 ((_ is Star!14833) (regTwo!30179 r!7292))) b!5236998))

(assert (= (and b!5236062 ((_ is Union!14833) (regTwo!30179 r!7292))) b!5236999))

(declare-fun b!5237007 () Bool)

(declare-fun e!3258764 () Bool)

(declare-fun tp!1466955 () Bool)

(assert (=> b!5237007 (= e!3258764 tp!1466955)))

(declare-fun b!5237006 () Bool)

(declare-fun tp!1466956 () Bool)

(declare-fun e!3258763 () Bool)

(assert (=> b!5237006 (= e!3258763 (and (inv!80329 (h!67124 (t!373981 zl!343))) e!3258764 tp!1466956))))

(assert (=> b!5236046 (= tp!1466839 e!3258763)))

(assert (= b!5237006 b!5237007))

(assert (= (and b!5236046 ((_ is Cons!60676) (t!373981 zl!343))) b!5237006))

(declare-fun m!6282156 () Bool)

(assert (=> b!5237006 m!6282156))

(declare-fun b!5237012 () Bool)

(declare-fun e!3258767 () Bool)

(declare-fun tp!1466959 () Bool)

(assert (=> b!5237012 (= e!3258767 (and tp_is_empty!38919 tp!1466959))))

(assert (=> b!5236042 (= tp!1466844 e!3258767)))

(assert (= (and b!5236042 ((_ is Cons!60675) (t!373980 s!2326))) b!5237012))

(declare-fun b!5237013 () Bool)

(declare-fun e!3258768 () Bool)

(declare-fun tp!1466960 () Bool)

(declare-fun tp!1466961 () Bool)

(assert (=> b!5237013 (= e!3258768 (and tp!1466960 tp!1466961))))

(assert (=> b!5236057 (= tp!1466845 e!3258768)))

(assert (= (and b!5236057 ((_ is Cons!60674) (exprs!4717 setElem!33377))) b!5237013))

(declare-fun b_lambda!202445 () Bool)

(assert (= b_lambda!202431 (or b!5236043 b_lambda!202445)))

(declare-fun bs!1215461 () Bool)

(declare-fun d!1688008 () Bool)

(assert (= bs!1215461 (and d!1688008 b!5236043)))

(assert (=> bs!1215461 (= (dynLambda!23975 lambda!263194 lt!2146845) (derivationStepZipperUp!205 lt!2146845 (h!67123 s!2326)))))

(assert (=> bs!1215461 m!6281380))

(assert (=> d!1687912 d!1688008))

(declare-fun b_lambda!202447 () Bool)

(assert (= b_lambda!202433 (or b!5236043 b_lambda!202447)))

(declare-fun bs!1215462 () Bool)

(declare-fun d!1688010 () Bool)

(assert (= bs!1215462 (and d!1688010 b!5236043)))

(assert (=> bs!1215462 (= (dynLambda!23975 lambda!263194 lt!2146859) (derivationStepZipperUp!205 lt!2146859 (h!67123 s!2326)))))

(assert (=> bs!1215462 m!6281398))

(assert (=> d!1687916 d!1688010))

(declare-fun b_lambda!202449 () Bool)

(assert (= b_lambda!202443 (or b!5236043 b_lambda!202449)))

(declare-fun bs!1215463 () Bool)

(declare-fun d!1688012 () Bool)

(assert (= bs!1215463 (and d!1688012 b!5236043)))

(assert (=> bs!1215463 (= (dynLambda!23975 lambda!263194 (h!67124 zl!343)) (derivationStepZipperUp!205 (h!67124 zl!343) (h!67123 s!2326)))))

(assert (=> bs!1215463 m!6281288))

(assert (=> d!1687968 d!1688012))

(declare-fun b_lambda!202451 () Bool)

(assert (= b_lambda!202425 (or b!5236035 b_lambda!202451)))

(declare-fun bs!1215464 () Bool)

(declare-fun d!1688014 () Bool)

(assert (= bs!1215464 (and d!1688014 b!5236035)))

(assert (=> bs!1215464 (= (dynLambda!23973 lambda!263195 (h!67122 lt!2146844)) (validRegex!6569 (h!67122 lt!2146844)))))

(declare-fun m!6282158 () Bool)

(assert (=> bs!1215464 m!6282158))

(assert (=> b!5236541 d!1688014))

(check-sat (not bm!370611) (not b!5236982) (not b!5236954) (not b!5236976) (not d!1687876) (not b!5236978) (not d!1687816) (not b!5236984) (not bm!370612) (not b!5236598) (not b!5236612) (not b!5236225) (not d!1687864) (not b!5236682) (not b!5236224) (not d!1687782) (not b!5236937) (not b!5236980) (not b!5236600) (not b!5236866) (not b!5236576) (not b!5236981) (not b!5236895) (not b!5236938) (not b!5236904) (not b!5236933) (not b!5236599) (not b!5236545) (not b!5236907) (not d!1688004) (not b!5237012) (not d!1687964) (not d!1687968) (not b!5236368) (not d!1687938) (not d!1688006) (not b!5236749) (not bm!370623) (not b!5236849) (not b!5236791) (not b_lambda!202447) (not b!5236543) (not d!1687996) (not b_lambda!202449) (not b!5236489) (not b!5236848) (not bm!370579) (not b!5236552) (not d!1687812) tp_is_empty!38919 (not bm!370620) (not b!5236868) (not b!5236750) (not b!5236906) (not b!5236490) (not b!5236864) (not b!5236745) (not d!1687870) (not b!5236658) (not b!5237006) (not b!5236959) (not b!5236835) (not d!1687940) (not b!5237007) (not b!5236997) (not b!5236497) (not d!1687922) (not bm!370622) (not b!5236748) (not b!5236681) (not b!5236542) (not b!5236991) (not d!1687852) (not d!1687976) (not b!5236812) (not d!1687980) (not b!5236654) (not d!1687912) (not b!5236867) (not b!5236491) (not b!5236651) (not b!5236869) (not b!5236564) (not b!5236947) (not b!5236839) (not b!5236831) (not bm!370593) (not d!1687984) (not d!1687990) (not d!1687908) (not b!5236492) (not bm!370605) (not b!5236859) (not d!1687948) (not b!5236823) (not d!1687880) (not b!5236650) (not d!1687882) (not b!5236611) (not b!5236986) (not b!5236655) (not bs!1215461) (not d!1687884) (not b!5236899) (not d!1687924) (not b!5236825) (not b!5236230) (not bs!1215463) (not b!5236863) (not d!1687866) (not b!5236949) (not b!5236132) (not b!5236893) (not b!5236546) (not b!5236977) (not b!5236999) (not b!5236746) (not b!5236826) (not bm!370624) (not b!5236131) (not b!5237013) (not bm!370599) (not d!1687916) (not bm!370613) (not b!5236657) (not d!1688002) (not b!5236948) (not d!1687988) (not bs!1215464) (not d!1687960) (not b!5236854) (not b!5236819) (not b!5236566) (not b!5236802) (not b!5236985) (not bm!370607) (not b!5236544) (not b!5236998) (not d!1687994) (not bm!370580) (not b!5236550) (not bm!370565) (not b_lambda!202445) (not b!5236548) (not d!1687958) (not b!5236827) (not b!5236833) (not bm!370563) (not bm!370555) (not setNonEmpty!33383) (not bs!1215462) (not b!5236565) (not b!5236890) (not b!5236571) (not b!5236747) (not b!5236828) (not b!5236829) (not d!1687918) (not d!1687942) (not b!5236995) (not d!1687962) (not b!5236502) (not d!1687920) (not b!5236228) (not d!1687978) (not b!5236964) (not bm!370600) (not b!5236821) (not bm!370625) (not d!1687982) (not bm!370554) (not d!1687992) (not b!5236817) (not b!5236946) (not b!5236853) (not bm!370595) (not b!5236858) (not bm!370594) (not b!5236862) (not b!5236369) (not d!1687936) (not b!5236897) (not b!5236563) (not bm!370606) (not d!1687772) (not b!5236865) (not b!5236596) (not d!1687986) (not b!5236597) (not b!5236993) (not d!1687862) (not b!5236894) (not b!5236824) (not b!5236994) (not b!5236223) (not b!5236891) (not d!1687934) (not bm!370601) (not b!5236226) (not b_lambda!202451) (not d!1687874) (not b!5236232))
(check-sat)
