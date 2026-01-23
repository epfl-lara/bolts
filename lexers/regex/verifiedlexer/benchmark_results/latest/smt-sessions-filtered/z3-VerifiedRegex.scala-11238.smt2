; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589348 () Bool)

(assert start!589348)

(declare-fun b!5726186 () Bool)

(assert (=> b!5726186 true))

(assert (=> b!5726186 true))

(declare-fun lambda!309578 () Int)

(declare-fun lambda!309577 () Int)

(assert (=> b!5726186 (not (= lambda!309578 lambda!309577))))

(assert (=> b!5726186 true))

(assert (=> b!5726186 true))

(declare-fun b!5726180 () Bool)

(assert (=> b!5726180 true))

(declare-fun b!5726170 () Bool)

(assert (=> b!5726170 true))

(declare-fun b!5726166 () Bool)

(declare-fun e!3520914 () Bool)

(declare-fun e!3520919 () Bool)

(assert (=> b!5726166 (= e!3520914 e!3520919)))

(declare-fun res!2417365 () Bool)

(assert (=> b!5726166 (=> res!2417365 e!3520919)))

(declare-datatypes ((C!31716 0))(
  ( (C!31717 (val!25560 Int)) )
))
(declare-datatypes ((Regex!15723 0))(
  ( (ElementMatch!15723 (c!1010203 C!31716)) (Concat!24568 (regOne!31958 Regex!15723) (regTwo!31958 Regex!15723)) (EmptyExpr!15723) (Star!15723 (reg!16052 Regex!15723)) (EmptyLang!15723) (Union!15723 (regOne!31959 Regex!15723) (regTwo!31959 Regex!15723)) )
))
(declare-datatypes ((List!63468 0))(
  ( (Nil!63344) (Cons!63344 (h!69792 Regex!15723) (t!376796 List!63468)) )
))
(declare-datatypes ((Context!10214 0))(
  ( (Context!10215 (exprs!5607 List!63468)) )
))
(declare-fun lt!2279087 () Context!10214)

(declare-fun lt!2279103 () Regex!15723)

(declare-datatypes ((List!63469 0))(
  ( (Nil!63345) (Cons!63345 (h!69793 Context!10214) (t!376797 List!63469)) )
))
(declare-fun unfocusZipper!1465 (List!63469) Regex!15723)

(assert (=> b!5726166 (= res!2417365 (not (= (unfocusZipper!1465 (Cons!63345 lt!2279087 Nil!63345)) lt!2279103)))))

(declare-fun r!7292 () Regex!15723)

(declare-fun lt!2279094 () Regex!15723)

(assert (=> b!5726166 (= lt!2279103 (Concat!24568 (reg!16052 (regOne!31958 r!7292)) lt!2279094))))

(declare-fun b!5726167 () Bool)

(declare-fun e!3520926 () Bool)

(declare-fun tp!1585515 () Bool)

(assert (=> b!5726167 (= e!3520926 tp!1585515)))

(declare-fun b!5726168 () Bool)

(declare-fun res!2417348 () Bool)

(declare-fun e!3520916 () Bool)

(assert (=> b!5726168 (=> res!2417348 e!3520916)))

(declare-fun lt!2279118 () Bool)

(declare-fun lt!2279107 () Bool)

(assert (=> b!5726168 (= res!2417348 (or (not lt!2279118) (not lt!2279107)))))

(declare-fun b!5726169 () Bool)

(declare-fun e!3520925 () Bool)

(assert (=> b!5726169 (= e!3520925 e!3520914)))

(declare-fun res!2417353 () Bool)

(assert (=> b!5726169 (=> res!2417353 e!3520914)))

(assert (=> b!5726169 (= res!2417353 (not (= r!7292 lt!2279094)))))

(declare-fun lt!2279105 () Regex!15723)

(assert (=> b!5726169 (= lt!2279094 (Concat!24568 lt!2279105 (regTwo!31958 r!7292)))))

(declare-fun setIsEmpty!38395 () Bool)

(declare-fun setRes!38395 () Bool)

(assert (=> setIsEmpty!38395 setRes!38395))

(assert (=> b!5726170 (= e!3520916 true)))

(declare-fun lt!2279109 () List!63468)

(declare-fun lambda!309580 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2279096 () (InoxSet Context!10214))

(declare-fun map!14505 ((InoxSet Context!10214) Int) (InoxSet Context!10214))

(declare-fun ++!13919 (List!63468 List!63468) List!63468)

(assert (=> b!5726170 (= (map!14505 lt!2279096 lambda!309580) (store ((as const (Array Context!10214 Bool)) false) (Context!10215 (++!13919 (Cons!63344 (reg!16052 (regOne!31958 r!7292)) Nil!63344) lt!2279109)) true))))

(declare-datatypes ((Unit!156424 0))(
  ( (Unit!156425) )
))
(declare-fun lt!2279098 () Unit!156424)

(declare-fun lambda!309581 () Int)

(declare-fun lemmaConcatPreservesForall!292 (List!63468 List!63468 Int) Unit!156424)

(assert (=> b!5726170 (= lt!2279098 (lemmaConcatPreservesForall!292 (Cons!63344 (reg!16052 (regOne!31958 r!7292)) Nil!63344) lt!2279109 lambda!309581))))

(declare-fun lt!2279104 () Context!10214)

(declare-fun lt!2279116 () Unit!156424)

(declare-fun lemmaMapOnSingletonSet!118 ((InoxSet Context!10214) Context!10214 Int) Unit!156424)

(assert (=> b!5726170 (= lt!2279116 (lemmaMapOnSingletonSet!118 lt!2279096 lt!2279104 lambda!309580))))

(declare-fun b!5726171 () Bool)

(declare-fun res!2417343 () Bool)

(declare-fun e!3520924 () Bool)

(assert (=> b!5726171 (=> res!2417343 e!3520924)))

(declare-fun zl!343 () List!63469)

(declare-fun isEmpty!35221 (List!63469) Bool)

(assert (=> b!5726171 (= res!2417343 (not (isEmpty!35221 (t!376797 zl!343))))))

(declare-fun res!2417367 () Bool)

(declare-fun e!3520918 () Bool)

(assert (=> start!589348 (=> (not res!2417367) (not e!3520918))))

(declare-fun validRegex!7459 (Regex!15723) Bool)

(assert (=> start!589348 (= res!2417367 (validRegex!7459 r!7292))))

(assert (=> start!589348 e!3520918))

(assert (=> start!589348 e!3520926))

(declare-fun condSetEmpty!38395 () Bool)

(declare-fun z!1189 () (InoxSet Context!10214))

(assert (=> start!589348 (= condSetEmpty!38395 (= z!1189 ((as const (Array Context!10214 Bool)) false)))))

(assert (=> start!589348 setRes!38395))

(declare-fun e!3520923 () Bool)

(assert (=> start!589348 e!3520923))

(declare-fun e!3520920 () Bool)

(assert (=> start!589348 e!3520920))

(declare-fun b!5726172 () Bool)

(declare-fun tp_is_empty!40699 () Bool)

(assert (=> b!5726172 (= e!3520926 tp_is_empty!40699)))

(declare-fun b!5726173 () Bool)

(declare-fun tp!1585510 () Bool)

(declare-fun tp!1585512 () Bool)

(assert (=> b!5726173 (= e!3520926 (and tp!1585510 tp!1585512))))

(declare-fun b!5726174 () Bool)

(declare-fun e!3520921 () Bool)

(assert (=> b!5726174 (= e!3520921 e!3520916)))

(declare-fun res!2417363 () Bool)

(assert (=> b!5726174 (=> res!2417363 e!3520916)))

(declare-fun e!3520905 () Bool)

(assert (=> b!5726174 (= res!2417363 e!3520905)))

(declare-fun res!2417364 () Bool)

(assert (=> b!5726174 (=> (not res!2417364) (not e!3520905))))

(assert (=> b!5726174 (= res!2417364 (not lt!2279118))))

(declare-fun lt!2279086 () (InoxSet Context!10214))

(declare-datatypes ((List!63470 0))(
  ( (Nil!63346) (Cons!63346 (h!69794 C!31716) (t!376798 List!63470)) )
))
(declare-fun s!2326 () List!63470)

(declare-fun matchZipper!1861 ((InoxSet Context!10214) List!63470) Bool)

(assert (=> b!5726174 (= lt!2279118 (matchZipper!1861 lt!2279086 (t!376798 s!2326)))))

(declare-fun b!5726175 () Bool)

(declare-fun res!2417355 () Bool)

(assert (=> b!5726175 (=> (not res!2417355) (not e!3520918))))

(declare-fun toList!9507 ((InoxSet Context!10214)) List!63469)

(assert (=> b!5726175 (= res!2417355 (= (toList!9507 z!1189) zl!343))))

(declare-fun b!5726176 () Bool)

(declare-fun e!3520908 () Bool)

(declare-fun lt!2279101 () (InoxSet Context!10214))

(assert (=> b!5726176 (= e!3520908 (matchZipper!1861 lt!2279101 (t!376798 s!2326)))))

(declare-fun b!5726177 () Bool)

(declare-fun e!3520922 () Bool)

(assert (=> b!5726177 (= e!3520922 e!3520921)))

(declare-fun res!2417342 () Bool)

(assert (=> b!5726177 (=> res!2417342 e!3520921)))

(declare-fun lt!2279099 () Bool)

(assert (=> b!5726177 (= res!2417342 lt!2279099)))

(declare-fun matchR!7908 (Regex!15723 List!63470) Bool)

(declare-fun matchRSpec!2826 (Regex!15723 List!63470) Bool)

(assert (=> b!5726177 (= (matchR!7908 lt!2279103 s!2326) (matchRSpec!2826 lt!2279103 s!2326))))

(declare-fun lt!2279100 () Unit!156424)

(declare-fun mainMatchTheorem!2826 (Regex!15723 List!63470) Unit!156424)

(assert (=> b!5726177 (= lt!2279100 (mainMatchTheorem!2826 lt!2279103 s!2326))))

(declare-fun b!5726178 () Bool)

(declare-fun res!2417369 () Bool)

(assert (=> b!5726178 (=> res!2417369 e!3520925)))

(declare-fun lt!2279111 () Regex!15723)

(assert (=> b!5726178 (= res!2417369 (not (= lt!2279111 r!7292)))))

(declare-fun b!5726179 () Bool)

(declare-fun tp!1585513 () Bool)

(declare-fun tp!1585517 () Bool)

(assert (=> b!5726179 (= e!3520926 (and tp!1585513 tp!1585517))))

(declare-fun e!3520913 () Bool)

(declare-fun e!3520911 () Bool)

(assert (=> b!5726180 (= e!3520913 e!3520911)))

(declare-fun res!2417350 () Bool)

(assert (=> b!5726180 (=> res!2417350 e!3520911)))

(get-info :version)

(assert (=> b!5726180 (= res!2417350 (or (and ((_ is ElementMatch!15723) (regOne!31958 r!7292)) (= (c!1010203 (regOne!31958 r!7292)) (h!69794 s!2326))) ((_ is Union!15723) (regOne!31958 r!7292))))))

(declare-fun lt!2279119 () Unit!156424)

(declare-fun e!3520917 () Unit!156424)

(assert (=> b!5726180 (= lt!2279119 e!3520917)))

(declare-fun c!1010202 () Bool)

(declare-fun lt!2279090 () Bool)

(assert (=> b!5726180 (= c!1010202 lt!2279090)))

(declare-fun nullable!5755 (Regex!15723) Bool)

(assert (=> b!5726180 (= lt!2279090 (nullable!5755 (h!69792 (exprs!5607 (h!69793 zl!343)))))))

(declare-fun lambda!309579 () Int)

(declare-fun flatMap!1336 ((InoxSet Context!10214) Int) (InoxSet Context!10214))

(declare-fun derivationStepZipperUp!991 (Context!10214 C!31716) (InoxSet Context!10214))

(assert (=> b!5726180 (= (flatMap!1336 z!1189 lambda!309579) (derivationStepZipperUp!991 (h!69793 zl!343) (h!69794 s!2326)))))

(declare-fun lt!2279091 () Unit!156424)

(declare-fun lemmaFlatMapOnSingletonSet!868 ((InoxSet Context!10214) Context!10214 Int) Unit!156424)

(assert (=> b!5726180 (= lt!2279091 (lemmaFlatMapOnSingletonSet!868 z!1189 (h!69793 zl!343) lambda!309579))))

(declare-fun lt!2279102 () Context!10214)

(assert (=> b!5726180 (= lt!2279101 (derivationStepZipperUp!991 lt!2279102 (h!69794 s!2326)))))

(declare-fun derivationStepZipperDown!1065 (Regex!15723 Context!10214 C!31716) (InoxSet Context!10214))

(assert (=> b!5726180 (= lt!2279086 (derivationStepZipperDown!1065 (h!69792 (exprs!5607 (h!69793 zl!343))) lt!2279102 (h!69794 s!2326)))))

(assert (=> b!5726180 (= lt!2279102 (Context!10215 (t!376796 (exprs!5607 (h!69793 zl!343)))))))

(declare-fun lt!2279108 () (InoxSet Context!10214))

(assert (=> b!5726180 (= lt!2279108 (derivationStepZipperUp!991 (Context!10215 (Cons!63344 (h!69792 (exprs!5607 (h!69793 zl!343))) (t!376796 (exprs!5607 (h!69793 zl!343))))) (h!69794 s!2326)))))

(declare-fun b!5726181 () Bool)

(assert (=> b!5726181 (= e!3520919 e!3520922)))

(declare-fun res!2417357 () Bool)

(assert (=> b!5726181 (=> res!2417357 e!3520922)))

(assert (=> b!5726181 (= res!2417357 (not (= (unfocusZipper!1465 (Cons!63345 lt!2279104 Nil!63345)) (reg!16052 (regOne!31958 r!7292)))))))

(declare-fun lt!2279095 () Context!10214)

(declare-fun lt!2279112 () (InoxSet Context!10214))

(assert (=> b!5726181 (= (flatMap!1336 lt!2279112 lambda!309579) (derivationStepZipperUp!991 lt!2279095 (h!69794 s!2326)))))

(declare-fun lt!2279089 () Unit!156424)

(assert (=> b!5726181 (= lt!2279089 (lemmaFlatMapOnSingletonSet!868 lt!2279112 lt!2279095 lambda!309579))))

(assert (=> b!5726181 (= (flatMap!1336 lt!2279096 lambda!309579) (derivationStepZipperUp!991 lt!2279104 (h!69794 s!2326)))))

(declare-fun lt!2279113 () Unit!156424)

(assert (=> b!5726181 (= lt!2279113 (lemmaFlatMapOnSingletonSet!868 lt!2279096 lt!2279104 lambda!309579))))

(declare-fun lt!2279106 () (InoxSet Context!10214))

(assert (=> b!5726181 (= lt!2279106 (derivationStepZipperUp!991 lt!2279095 (h!69794 s!2326)))))

(declare-fun lt!2279088 () (InoxSet Context!10214))

(assert (=> b!5726181 (= lt!2279088 (derivationStepZipperUp!991 lt!2279104 (h!69794 s!2326)))))

(assert (=> b!5726181 (= lt!2279112 (store ((as const (Array Context!10214 Bool)) false) lt!2279095 true))))

(assert (=> b!5726181 (= lt!2279096 (store ((as const (Array Context!10214 Bool)) false) lt!2279104 true))))

(assert (=> b!5726181 (= lt!2279104 (Context!10215 (Cons!63344 (reg!16052 (regOne!31958 r!7292)) Nil!63344)))))

(declare-fun b!5726182 () Bool)

(declare-fun res!2417346 () Bool)

(assert (=> b!5726182 (=> res!2417346 e!3520921)))

(assert (=> b!5726182 (= res!2417346 (not lt!2279090))))

(declare-fun b!5726183 () Bool)

(declare-fun e!3520906 () Bool)

(assert (=> b!5726183 (= e!3520906 e!3520925)))

(declare-fun res!2417349 () Bool)

(assert (=> b!5726183 (=> res!2417349 e!3520925)))

(declare-fun lt!2279092 () (InoxSet Context!10214))

(assert (=> b!5726183 (= res!2417349 (not (= lt!2279107 (matchZipper!1861 lt!2279092 (t!376798 s!2326)))))))

(declare-fun lt!2279117 () (InoxSet Context!10214))

(assert (=> b!5726183 (= lt!2279107 (matchZipper!1861 lt!2279117 s!2326))))

(declare-fun b!5726184 () Bool)

(declare-fun res!2417370 () Bool)

(assert (=> b!5726184 (=> res!2417370 e!3520911)))

(declare-fun e!3520912 () Bool)

(assert (=> b!5726184 (= res!2417370 e!3520912)))

(declare-fun res!2417360 () Bool)

(assert (=> b!5726184 (=> (not res!2417360) (not e!3520912))))

(assert (=> b!5726184 (= res!2417360 ((_ is Concat!24568) (regOne!31958 r!7292)))))

(declare-fun b!5726185 () Bool)

(declare-fun e!3520910 () Bool)

(assert (=> b!5726185 (= e!3520911 e!3520910)))

(declare-fun res!2417344 () Bool)

(assert (=> b!5726185 (=> res!2417344 e!3520910)))

(declare-fun lt!2279085 () (InoxSet Context!10214))

(assert (=> b!5726185 (= res!2417344 (not (= lt!2279086 lt!2279085)))))

(assert (=> b!5726185 (= lt!2279085 (derivationStepZipperDown!1065 (reg!16052 (regOne!31958 r!7292)) lt!2279095 (h!69794 s!2326)))))

(assert (=> b!5726185 (= lt!2279095 (Context!10215 lt!2279109))))

(assert (=> b!5726185 (= lt!2279109 (Cons!63344 lt!2279105 (t!376796 (exprs!5607 (h!69793 zl!343)))))))

(assert (=> b!5726185 (= lt!2279105 (Star!15723 (reg!16052 (regOne!31958 r!7292))))))

(assert (=> b!5726186 (= e!3520924 e!3520913)))

(declare-fun res!2417351 () Bool)

(assert (=> b!5726186 (=> res!2417351 e!3520913)))

(declare-fun lt!2279084 () Bool)

(assert (=> b!5726186 (= res!2417351 (or (not (= lt!2279099 lt!2279084)) ((_ is Nil!63346) s!2326)))))

(declare-fun Exists!2823 (Int) Bool)

(assert (=> b!5726186 (= (Exists!2823 lambda!309577) (Exists!2823 lambda!309578))))

(declare-fun lt!2279110 () Unit!156424)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1452 (Regex!15723 Regex!15723 List!63470) Unit!156424)

(assert (=> b!5726186 (= lt!2279110 (lemmaExistCutMatchRandMatchRSpecEquivalent!1452 (regOne!31958 r!7292) (regTwo!31958 r!7292) s!2326))))

(assert (=> b!5726186 (= lt!2279084 (Exists!2823 lambda!309577))))

(declare-datatypes ((tuple2!65640 0))(
  ( (tuple2!65641 (_1!36123 List!63470) (_2!36123 List!63470)) )
))
(declare-datatypes ((Option!15732 0))(
  ( (None!15731) (Some!15731 (v!51786 tuple2!65640)) )
))
(declare-fun isDefined!12435 (Option!15732) Bool)

(declare-fun findConcatSeparation!2146 (Regex!15723 Regex!15723 List!63470 List!63470 List!63470) Option!15732)

(assert (=> b!5726186 (= lt!2279084 (isDefined!12435 (findConcatSeparation!2146 (regOne!31958 r!7292) (regTwo!31958 r!7292) Nil!63346 s!2326 s!2326)))))

(declare-fun lt!2279114 () Unit!156424)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1910 (Regex!15723 Regex!15723 List!63470) Unit!156424)

(assert (=> b!5726186 (= lt!2279114 (lemmaFindConcatSeparationEquivalentToExists!1910 (regOne!31958 r!7292) (regTwo!31958 r!7292) s!2326))))

(declare-fun b!5726187 () Bool)

(declare-fun e!3520915 () Bool)

(assert (=> b!5726187 (= e!3520915 (not e!3520924))))

(declare-fun res!2417362 () Bool)

(assert (=> b!5726187 (=> res!2417362 e!3520924)))

(assert (=> b!5726187 (= res!2417362 (not ((_ is Cons!63345) zl!343)))))

(assert (=> b!5726187 (= lt!2279099 (matchRSpec!2826 r!7292 s!2326))))

(assert (=> b!5726187 (= lt!2279099 (matchR!7908 r!7292 s!2326))))

(declare-fun lt!2279093 () Unit!156424)

(assert (=> b!5726187 (= lt!2279093 (mainMatchTheorem!2826 r!7292 s!2326))))

(declare-fun b!5726188 () Bool)

(declare-fun e!3520907 () Bool)

(declare-fun tp!1585509 () Bool)

(assert (=> b!5726188 (= e!3520907 tp!1585509)))

(declare-fun b!5726189 () Bool)

(declare-fun e!3520909 () Bool)

(declare-fun tp!1585518 () Bool)

(assert (=> b!5726189 (= e!3520909 tp!1585518)))

(declare-fun b!5726190 () Bool)

(assert (=> b!5726190 (= e!3520912 (nullable!5755 (regOne!31958 (regOne!31958 r!7292))))))

(declare-fun b!5726191 () Bool)

(declare-fun res!2417352 () Bool)

(assert (=> b!5726191 (=> res!2417352 e!3520913)))

(declare-fun isEmpty!35222 (List!63468) Bool)

(assert (=> b!5726191 (= res!2417352 (isEmpty!35222 (t!376796 (exprs!5607 (h!69793 zl!343)))))))

(declare-fun b!5726192 () Bool)

(declare-fun res!2417347 () Bool)

(assert (=> b!5726192 (=> res!2417347 e!3520924)))

(assert (=> b!5726192 (= res!2417347 (not ((_ is Cons!63344) (exprs!5607 (h!69793 zl!343)))))))

(declare-fun setElem!38395 () Context!10214)

(declare-fun tp!1585511 () Bool)

(declare-fun setNonEmpty!38395 () Bool)

(declare-fun inv!82554 (Context!10214) Bool)

(assert (=> setNonEmpty!38395 (= setRes!38395 (and tp!1585511 (inv!82554 setElem!38395) e!3520907))))

(declare-fun setRest!38395 () (InoxSet Context!10214))

(assert (=> setNonEmpty!38395 (= z!1189 ((_ map or) (store ((as const (Array Context!10214 Bool)) false) setElem!38395 true) setRest!38395))))

(declare-fun b!5726193 () Bool)

(declare-fun res!2417345 () Bool)

(assert (=> b!5726193 (=> res!2417345 e!3520922)))

(assert (=> b!5726193 (= res!2417345 (not (= (unfocusZipper!1465 (Cons!63345 lt!2279095 Nil!63345)) lt!2279094)))))

(declare-fun b!5726194 () Bool)

(declare-fun res!2417371 () Bool)

(assert (=> b!5726194 (=> res!2417371 e!3520924)))

(declare-fun generalisedUnion!1586 (List!63468) Regex!15723)

(declare-fun unfocusZipperList!1151 (List!63469) List!63468)

(assert (=> b!5726194 (= res!2417371 (not (= r!7292 (generalisedUnion!1586 (unfocusZipperList!1151 zl!343)))))))

(declare-fun b!5726195 () Bool)

(declare-fun res!2417361 () Bool)

(assert (=> b!5726195 (=> res!2417361 e!3520924)))

(assert (=> b!5726195 (= res!2417361 (or ((_ is EmptyExpr!15723) r!7292) ((_ is EmptyLang!15723) r!7292) ((_ is ElementMatch!15723) r!7292) ((_ is Union!15723) r!7292) (not ((_ is Concat!24568) r!7292))))))

(declare-fun b!5726196 () Bool)

(declare-fun tp!1585514 () Bool)

(assert (=> b!5726196 (= e!3520923 (and (inv!82554 (h!69793 zl!343)) e!3520909 tp!1585514))))

(declare-fun b!5726197 () Bool)

(declare-fun Unit!156426 () Unit!156424)

(assert (=> b!5726197 (= e!3520917 Unit!156426)))

(declare-fun b!5726198 () Bool)

(declare-fun res!2417354 () Bool)

(assert (=> b!5726198 (=> res!2417354 e!3520921)))

(assert (=> b!5726198 (= res!2417354 (not (matchZipper!1861 z!1189 s!2326)))))

(declare-fun b!5726199 () Bool)

(assert (=> b!5726199 (= e!3520918 e!3520915)))

(declare-fun res!2417356 () Bool)

(assert (=> b!5726199 (=> (not res!2417356) (not e!3520915))))

(assert (=> b!5726199 (= res!2417356 (= r!7292 lt!2279111))))

(assert (=> b!5726199 (= lt!2279111 (unfocusZipper!1465 zl!343))))

(declare-fun b!5726200 () Bool)

(declare-fun tp!1585516 () Bool)

(assert (=> b!5726200 (= e!3520920 (and tp_is_empty!40699 tp!1585516))))

(declare-fun b!5726201 () Bool)

(declare-fun res!2417359 () Bool)

(assert (=> b!5726201 (=> res!2417359 e!3520924)))

(declare-fun generalisedConcat!1338 (List!63468) Regex!15723)

(assert (=> b!5726201 (= res!2417359 (not (= r!7292 (generalisedConcat!1338 (exprs!5607 (h!69793 zl!343))))))))

(declare-fun b!5726202 () Bool)

(declare-fun res!2417368 () Bool)

(assert (=> b!5726202 (=> res!2417368 e!3520911)))

(assert (=> b!5726202 (= res!2417368 (or ((_ is Concat!24568) (regOne!31958 r!7292)) (not ((_ is Star!15723) (regOne!31958 r!7292)))))))

(declare-fun b!5726203 () Bool)

(assert (=> b!5726203 (= e!3520905 (not (matchZipper!1861 lt!2279101 (t!376798 s!2326))))))

(declare-fun b!5726204 () Bool)

(assert (=> b!5726204 (= e!3520910 e!3520906)))

(declare-fun res!2417358 () Bool)

(assert (=> b!5726204 (=> res!2417358 e!3520906)))

(assert (=> b!5726204 (= res!2417358 (not (= lt!2279092 lt!2279085)))))

(assert (=> b!5726204 (= (flatMap!1336 lt!2279117 lambda!309579) (derivationStepZipperUp!991 lt!2279087 (h!69794 s!2326)))))

(declare-fun lt!2279097 () Unit!156424)

(assert (=> b!5726204 (= lt!2279097 (lemmaFlatMapOnSingletonSet!868 lt!2279117 lt!2279087 lambda!309579))))

(declare-fun lt!2279120 () (InoxSet Context!10214))

(assert (=> b!5726204 (= lt!2279120 (derivationStepZipperUp!991 lt!2279087 (h!69794 s!2326)))))

(declare-fun derivationStepZipper!1806 ((InoxSet Context!10214) C!31716) (InoxSet Context!10214))

(assert (=> b!5726204 (= lt!2279092 (derivationStepZipper!1806 lt!2279117 (h!69794 s!2326)))))

(assert (=> b!5726204 (= lt!2279117 (store ((as const (Array Context!10214 Bool)) false) lt!2279087 true))))

(assert (=> b!5726204 (= lt!2279087 (Context!10215 (Cons!63344 (reg!16052 (regOne!31958 r!7292)) lt!2279109)))))

(declare-fun b!5726205 () Bool)

(declare-fun Unit!156427 () Unit!156424)

(assert (=> b!5726205 (= e!3520917 Unit!156427)))

(declare-fun lt!2279115 () Unit!156424)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!748 ((InoxSet Context!10214) (InoxSet Context!10214) List!63470) Unit!156424)

(assert (=> b!5726205 (= lt!2279115 (lemmaZipperConcatMatchesSameAsBothZippers!748 lt!2279086 lt!2279101 (t!376798 s!2326)))))

(declare-fun res!2417366 () Bool)

(assert (=> b!5726205 (= res!2417366 (matchZipper!1861 lt!2279086 (t!376798 s!2326)))))

(assert (=> b!5726205 (=> res!2417366 e!3520908)))

(assert (=> b!5726205 (= (matchZipper!1861 ((_ map or) lt!2279086 lt!2279101) (t!376798 s!2326)) e!3520908)))

(assert (= (and start!589348 res!2417367) b!5726175))

(assert (= (and b!5726175 res!2417355) b!5726199))

(assert (= (and b!5726199 res!2417356) b!5726187))

(assert (= (and b!5726187 (not res!2417362)) b!5726171))

(assert (= (and b!5726171 (not res!2417343)) b!5726201))

(assert (= (and b!5726201 (not res!2417359)) b!5726192))

(assert (= (and b!5726192 (not res!2417347)) b!5726194))

(assert (= (and b!5726194 (not res!2417371)) b!5726195))

(assert (= (and b!5726195 (not res!2417361)) b!5726186))

(assert (= (and b!5726186 (not res!2417351)) b!5726191))

(assert (= (and b!5726191 (not res!2417352)) b!5726180))

(assert (= (and b!5726180 c!1010202) b!5726205))

(assert (= (and b!5726180 (not c!1010202)) b!5726197))

(assert (= (and b!5726205 (not res!2417366)) b!5726176))

(assert (= (and b!5726180 (not res!2417350)) b!5726184))

(assert (= (and b!5726184 res!2417360) b!5726190))

(assert (= (and b!5726184 (not res!2417370)) b!5726202))

(assert (= (and b!5726202 (not res!2417368)) b!5726185))

(assert (= (and b!5726185 (not res!2417344)) b!5726204))

(assert (= (and b!5726204 (not res!2417358)) b!5726183))

(assert (= (and b!5726183 (not res!2417349)) b!5726178))

(assert (= (and b!5726178 (not res!2417369)) b!5726169))

(assert (= (and b!5726169 (not res!2417353)) b!5726166))

(assert (= (and b!5726166 (not res!2417365)) b!5726181))

(assert (= (and b!5726181 (not res!2417357)) b!5726193))

(assert (= (and b!5726193 (not res!2417345)) b!5726177))

(assert (= (and b!5726177 (not res!2417342)) b!5726198))

(assert (= (and b!5726198 (not res!2417354)) b!5726182))

(assert (= (and b!5726182 (not res!2417346)) b!5726174))

(assert (= (and b!5726174 res!2417364) b!5726203))

(assert (= (and b!5726174 (not res!2417363)) b!5726168))

(assert (= (and b!5726168 (not res!2417348)) b!5726170))

(assert (= (and start!589348 ((_ is ElementMatch!15723) r!7292)) b!5726172))

(assert (= (and start!589348 ((_ is Concat!24568) r!7292)) b!5726173))

(assert (= (and start!589348 ((_ is Star!15723) r!7292)) b!5726167))

(assert (= (and start!589348 ((_ is Union!15723) r!7292)) b!5726179))

(assert (= (and start!589348 condSetEmpty!38395) setIsEmpty!38395))

(assert (= (and start!589348 (not condSetEmpty!38395)) setNonEmpty!38395))

(assert (= setNonEmpty!38395 b!5726188))

(assert (= b!5726196 b!5726189))

(assert (= (and start!589348 ((_ is Cons!63345) zl!343)) b!5726196))

(assert (= (and start!589348 ((_ is Cons!63346) s!2326)) b!5726200))

(declare-fun m!6678732 () Bool)

(assert (=> b!5726185 m!6678732))

(declare-fun m!6678734 () Bool)

(assert (=> b!5726204 m!6678734))

(declare-fun m!6678736 () Bool)

(assert (=> b!5726204 m!6678736))

(declare-fun m!6678738 () Bool)

(assert (=> b!5726204 m!6678738))

(declare-fun m!6678740 () Bool)

(assert (=> b!5726204 m!6678740))

(declare-fun m!6678742 () Bool)

(assert (=> b!5726204 m!6678742))

(declare-fun m!6678744 () Bool)

(assert (=> start!589348 m!6678744))

(declare-fun m!6678746 () Bool)

(assert (=> b!5726186 m!6678746))

(declare-fun m!6678748 () Bool)

(assert (=> b!5726186 m!6678748))

(assert (=> b!5726186 m!6678746))

(declare-fun m!6678750 () Bool)

(assert (=> b!5726186 m!6678750))

(declare-fun m!6678752 () Bool)

(assert (=> b!5726186 m!6678752))

(declare-fun m!6678754 () Bool)

(assert (=> b!5726186 m!6678754))

(assert (=> b!5726186 m!6678752))

(declare-fun m!6678756 () Bool)

(assert (=> b!5726186 m!6678756))

(declare-fun m!6678758 () Bool)

(assert (=> b!5726193 m!6678758))

(declare-fun m!6678760 () Bool)

(assert (=> b!5726194 m!6678760))

(assert (=> b!5726194 m!6678760))

(declare-fun m!6678762 () Bool)

(assert (=> b!5726194 m!6678762))

(declare-fun m!6678764 () Bool)

(assert (=> b!5726187 m!6678764))

(declare-fun m!6678766 () Bool)

(assert (=> b!5726187 m!6678766))

(declare-fun m!6678768 () Bool)

(assert (=> b!5726187 m!6678768))

(declare-fun m!6678770 () Bool)

(assert (=> b!5726166 m!6678770))

(declare-fun m!6678772 () Bool)

(assert (=> b!5726180 m!6678772))

(declare-fun m!6678774 () Bool)

(assert (=> b!5726180 m!6678774))

(declare-fun m!6678776 () Bool)

(assert (=> b!5726180 m!6678776))

(declare-fun m!6678778 () Bool)

(assert (=> b!5726180 m!6678778))

(declare-fun m!6678780 () Bool)

(assert (=> b!5726180 m!6678780))

(declare-fun m!6678782 () Bool)

(assert (=> b!5726180 m!6678782))

(declare-fun m!6678784 () Bool)

(assert (=> b!5726180 m!6678784))

(declare-fun m!6678786 () Bool)

(assert (=> b!5726203 m!6678786))

(declare-fun m!6678788 () Bool)

(assert (=> b!5726199 m!6678788))

(declare-fun m!6678790 () Bool)

(assert (=> b!5726174 m!6678790))

(declare-fun m!6678792 () Bool)

(assert (=> b!5726177 m!6678792))

(declare-fun m!6678794 () Bool)

(assert (=> b!5726177 m!6678794))

(declare-fun m!6678796 () Bool)

(assert (=> b!5726177 m!6678796))

(declare-fun m!6678798 () Bool)

(assert (=> b!5726196 m!6678798))

(declare-fun m!6678800 () Bool)

(assert (=> b!5726201 m!6678800))

(declare-fun m!6678802 () Bool)

(assert (=> b!5726190 m!6678802))

(declare-fun m!6678804 () Bool)

(assert (=> b!5726183 m!6678804))

(declare-fun m!6678806 () Bool)

(assert (=> b!5726183 m!6678806))

(assert (=> b!5726176 m!6678786))

(declare-fun m!6678808 () Bool)

(assert (=> b!5726205 m!6678808))

(assert (=> b!5726205 m!6678790))

(declare-fun m!6678810 () Bool)

(assert (=> b!5726205 m!6678810))

(declare-fun m!6678812 () Bool)

(assert (=> b!5726198 m!6678812))

(declare-fun m!6678814 () Bool)

(assert (=> setNonEmpty!38395 m!6678814))

(declare-fun m!6678816 () Bool)

(assert (=> b!5726191 m!6678816))

(declare-fun m!6678818 () Bool)

(assert (=> b!5726171 m!6678818))

(declare-fun m!6678820 () Bool)

(assert (=> b!5726181 m!6678820))

(declare-fun m!6678822 () Bool)

(assert (=> b!5726181 m!6678822))

(declare-fun m!6678824 () Bool)

(assert (=> b!5726181 m!6678824))

(declare-fun m!6678826 () Bool)

(assert (=> b!5726181 m!6678826))

(declare-fun m!6678828 () Bool)

(assert (=> b!5726181 m!6678828))

(declare-fun m!6678830 () Bool)

(assert (=> b!5726181 m!6678830))

(declare-fun m!6678832 () Bool)

(assert (=> b!5726181 m!6678832))

(declare-fun m!6678834 () Bool)

(assert (=> b!5726181 m!6678834))

(declare-fun m!6678836 () Bool)

(assert (=> b!5726181 m!6678836))

(declare-fun m!6678838 () Bool)

(assert (=> b!5726175 m!6678838))

(declare-fun m!6678840 () Bool)

(assert (=> b!5726170 m!6678840))

(declare-fun m!6678842 () Bool)

(assert (=> b!5726170 m!6678842))

(declare-fun m!6678844 () Bool)

(assert (=> b!5726170 m!6678844))

(declare-fun m!6678846 () Bool)

(assert (=> b!5726170 m!6678846))

(declare-fun m!6678848 () Bool)

(assert (=> b!5726170 m!6678848))

(check-sat tp_is_empty!40699 (not b!5726180) (not b!5726187) (not b!5726200) (not b!5726171) (not b!5726201) (not b!5726176) (not b!5726196) (not b!5726174) (not b!5726186) (not b!5726177) (not b!5726173) (not setNonEmpty!38395) (not b!5726194) (not b!5726191) (not b!5726179) (not b!5726175) (not b!5726183) (not b!5726188) (not b!5726203) (not b!5726193) (not b!5726198) (not b!5726170) (not b!5726204) (not b!5726166) (not b!5726189) (not b!5726199) (not b!5726205) (not b!5726185) (not b!5726181) (not start!589348) (not b!5726167) (not b!5726190))
(check-sat)
