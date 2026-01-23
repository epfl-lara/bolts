; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!559792 () Bool)

(assert start!559792)

(declare-fun b!5308581 () Bool)

(assert (=> b!5308581 true))

(assert (=> b!5308581 true))

(declare-fun lambda!270255 () Int)

(declare-fun lambda!270254 () Int)

(assert (=> b!5308581 (not (= lambda!270255 lambda!270254))))

(assert (=> b!5308581 true))

(assert (=> b!5308581 true))

(declare-fun b!5308604 () Bool)

(assert (=> b!5308604 true))

(declare-fun bs!1230907 () Bool)

(declare-fun b!5308594 () Bool)

(assert (= bs!1230907 (and b!5308594 b!5308581)))

(declare-datatypes ((C!30190 0))(
  ( (C!30191 (val!24797 Int)) )
))
(declare-datatypes ((Regex!14960 0))(
  ( (ElementMatch!14960 (c!921918 C!30190)) (Concat!23805 (regOne!30432 Regex!14960) (regTwo!30432 Regex!14960)) (EmptyExpr!14960) (Star!14960 (reg!15289 Regex!14960)) (EmptyLang!14960) (Union!14960 (regOne!30433 Regex!14960) (regTwo!30433 Regex!14960)) )
))
(declare-fun r!7292 () Regex!14960)

(declare-fun lambda!270257 () Int)

(declare-fun lt!2169205 () Regex!14960)

(assert (=> bs!1230907 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169205 (regTwo!30432 r!7292))) (= lambda!270257 lambda!270254))))

(assert (=> bs!1230907 (not (= lambda!270257 lambda!270255))))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(declare-fun lambda!270258 () Int)

(assert (=> bs!1230907 (not (= lambda!270258 lambda!270254))))

(assert (=> bs!1230907 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169205 (regTwo!30432 r!7292))) (= lambda!270258 lambda!270255))))

(assert (=> b!5308594 (not (= lambda!270258 lambda!270257))))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(declare-fun lt!2169173 () Regex!14960)

(declare-fun lambda!270259 () Int)

(assert (=> bs!1230907 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169173 (regTwo!30432 r!7292))) (= lambda!270259 lambda!270254))))

(assert (=> bs!1230907 (not (= lambda!270259 lambda!270255))))

(assert (=> b!5308594 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270259 lambda!270257))))

(assert (=> b!5308594 (not (= lambda!270259 lambda!270258))))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(declare-fun lambda!270260 () Int)

(assert (=> b!5308594 (not (= lambda!270260 lambda!270259))))

(assert (=> bs!1230907 (not (= lambda!270260 lambda!270254))))

(assert (=> bs!1230907 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169173 (regTwo!30432 r!7292))) (= lambda!270260 lambda!270255))))

(assert (=> b!5308594 (not (= lambda!270260 lambda!270257))))

(assert (=> b!5308594 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270260 lambda!270258))))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(assert (=> b!5308594 true))

(declare-fun b!5308568 () Bool)

(declare-fun res!2252015 () Bool)

(declare-fun e!3298925 () Bool)

(assert (=> b!5308568 (=> res!2252015 e!3298925)))

(declare-datatypes ((List!61179 0))(
  ( (Nil!61055) (Cons!61055 (h!67503 C!30190) (t!374384 List!61179)) )
))
(declare-fun s!2326 () List!61179)

(declare-fun lt!2169183 () Bool)

(declare-fun lt!2169204 () Regex!14960)

(declare-fun matchR!7145 (Regex!14960 List!61179) Bool)

(assert (=> b!5308568 (= res!2252015 (not (= lt!2169183 (matchR!7145 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)) s!2326))))))

(declare-fun b!5308569 () Bool)

(declare-datatypes ((Unit!153358 0))(
  ( (Unit!153359) )
))
(declare-fun e!3298927 () Unit!153358)

(declare-fun Unit!153360 () Unit!153358)

(assert (=> b!5308569 (= e!3298927 Unit!153360)))

(declare-fun lt!2169197 () Unit!153358)

(declare-datatypes ((List!61180 0))(
  ( (Nil!61056) (Cons!61056 (h!67504 Regex!14960) (t!374385 List!61180)) )
))
(declare-datatypes ((Context!8688 0))(
  ( (Context!8689 (exprs!4844 List!61180)) )
))
(declare-fun lt!2169163 () (Set Context!8688))

(declare-fun lt!2169211 () (Set Context!8688))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!197 ((Set Context!8688) (Set Context!8688) List!61179) Unit!153358)

(assert (=> b!5308569 (= lt!2169197 (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169163 lt!2169211 (t!374384 s!2326)))))

(declare-fun res!2252001 () Bool)

(declare-fun matchZipper!1204 ((Set Context!8688) List!61179) Bool)

(assert (=> b!5308569 (= res!2252001 (matchZipper!1204 lt!2169163 (t!374384 s!2326)))))

(declare-fun e!3298942 () Bool)

(assert (=> b!5308569 (=> res!2252001 e!3298942)))

(assert (=> b!5308569 (= (matchZipper!1204 (set.union lt!2169163 lt!2169211) (t!374384 s!2326)) e!3298942)))

(declare-fun b!5308570 () Bool)

(declare-fun e!3298936 () Bool)

(assert (=> b!5308570 (= e!3298925 e!3298936)))

(declare-fun res!2252002 () Bool)

(assert (=> b!5308570 (=> res!2252002 e!3298936)))

(declare-fun lt!2169187 () Bool)

(assert (=> b!5308570 (= res!2252002 (not (= lt!2169183 lt!2169187)))))

(assert (=> b!5308570 (= lt!2169187 (matchR!7145 (Concat!23805 lt!2169204 lt!2169173) s!2326))))

(declare-fun b!5308571 () Bool)

(declare-fun e!3298933 () Bool)

(declare-fun lt!2169180 () (Set Context!8688))

(assert (=> b!5308571 (= e!3298933 (matchZipper!1204 lt!2169180 (t!374384 s!2326)))))

(declare-fun b!5308572 () Bool)

(declare-fun e!3298930 () Bool)

(declare-fun e!3298934 () Bool)

(assert (=> b!5308572 (= e!3298930 e!3298934)))

(declare-fun res!2252013 () Bool)

(assert (=> b!5308572 (=> res!2252013 e!3298934)))

(declare-datatypes ((List!61181 0))(
  ( (Nil!61057) (Cons!61057 (h!67505 Context!8688) (t!374386 List!61181)) )
))
(declare-fun zl!343 () List!61181)

(assert (=> b!5308572 (= res!2252013 (not (= (exprs!4844 (h!67505 zl!343)) (Cons!61056 lt!2169204 (t!374385 (exprs!4844 (h!67505 zl!343)))))))))

(assert (=> b!5308572 (= lt!2169204 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))))))

(declare-fun b!5308573 () Bool)

(declare-fun res!2252003 () Bool)

(declare-fun e!3298945 () Bool)

(assert (=> b!5308573 (=> (not res!2252003) (not e!3298945))))

(declare-fun unfocusZipper!702 (List!61181) Regex!14960)

(assert (=> b!5308573 (= res!2252003 (= r!7292 (unfocusZipper!702 zl!343)))))

(declare-fun b!5308574 () Bool)

(declare-fun e!3298928 () Bool)

(declare-fun lt!2169206 () (Set Context!8688))

(declare-fun derivationStepZipper!1203 ((Set Context!8688) C!30190) (Set Context!8688))

(assert (=> b!5308574 (= e!3298928 (not (matchZipper!1204 (derivationStepZipper!1203 lt!2169206 (h!67503 s!2326)) (t!374384 s!2326))))))

(declare-fun b!5308575 () Bool)

(declare-fun res!2252008 () Bool)

(declare-fun e!3298937 () Bool)

(assert (=> b!5308575 (=> res!2252008 e!3298937)))

(declare-fun generalisedUnion!889 (List!61180) Regex!14960)

(declare-fun unfocusZipperList!402 (List!61181) List!61180)

(assert (=> b!5308575 (= res!2252008 (not (= r!7292 (generalisedUnion!889 (unfocusZipperList!402 zl!343)))))))

(declare-fun b!5308576 () Bool)

(declare-fun res!2252014 () Bool)

(assert (=> b!5308576 (=> res!2252014 e!3298937)))

(declare-fun generalisedConcat!629 (List!61180) Regex!14960)

(assert (=> b!5308576 (= res!2252014 (not (= r!7292 (generalisedConcat!629 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun b!5308577 () Bool)

(declare-fun Unit!153361 () Unit!153358)

(assert (=> b!5308577 (= e!3298927 Unit!153361)))

(declare-fun b!5308578 () Bool)

(declare-fun e!3298931 () Bool)

(declare-fun tp!1479311 () Bool)

(assert (=> b!5308578 (= e!3298931 tp!1479311)))

(declare-fun b!5308579 () Bool)

(declare-fun e!3298943 () Bool)

(declare-fun e!3298940 () Bool)

(assert (=> b!5308579 (= e!3298943 e!3298940)))

(declare-fun res!2252004 () Bool)

(assert (=> b!5308579 (=> res!2252004 e!3298940)))

(declare-fun lt!2169189 () (Set Context!8688))

(declare-fun lt!2169198 () (Set Context!8688))

(assert (=> b!5308579 (= res!2252004 (not (= lt!2169189 lt!2169198)))))

(declare-fun lt!2169176 () (Set Context!8688))

(assert (=> b!5308579 (= lt!2169198 (set.union lt!2169176 lt!2169180))))

(declare-fun lt!2169167 () Context!8688)

(declare-fun derivationStepZipperUp!332 (Context!8688 C!30190) (Set Context!8688))

(assert (=> b!5308579 (= lt!2169180 (derivationStepZipperUp!332 lt!2169167 (h!67503 s!2326)))))

(declare-fun lambda!270256 () Int)

(declare-fun lt!2169199 () (Set Context!8688))

(declare-fun lt!2169202 () Context!8688)

(declare-fun flatMap!687 ((Set Context!8688) Int) (Set Context!8688))

(assert (=> b!5308579 (= (flatMap!687 lt!2169199 lambda!270256) (derivationStepZipperUp!332 lt!2169202 (h!67503 s!2326)))))

(declare-fun lt!2169174 () Unit!153358)

(declare-fun lemmaFlatMapOnSingletonSet!219 ((Set Context!8688) Context!8688 Int) Unit!153358)

(assert (=> b!5308579 (= lt!2169174 (lemmaFlatMapOnSingletonSet!219 lt!2169199 lt!2169202 lambda!270256))))

(declare-fun lt!2169166 () (Set Context!8688))

(assert (=> b!5308579 (= lt!2169166 (derivationStepZipperUp!332 lt!2169202 (h!67503 s!2326)))))

(assert (=> b!5308579 (= lt!2169189 (derivationStepZipper!1203 lt!2169199 (h!67503 s!2326)))))

(assert (=> b!5308579 (= lt!2169206 (set.insert lt!2169167 (as set.empty (Set Context!8688))))))

(assert (=> b!5308579 (= lt!2169199 (set.insert lt!2169202 (as set.empty (Set Context!8688))))))

(declare-fun lt!2169190 () List!61180)

(assert (=> b!5308579 (= lt!2169202 (Context!8689 lt!2169190))))

(declare-fun lt!2169179 () List!61180)

(assert (=> b!5308579 (= lt!2169190 (Cons!61056 (regOne!30432 (regOne!30432 r!7292)) lt!2169179))))

(declare-fun b!5308580 () Bool)

(declare-fun e!3298939 () Bool)

(assert (=> b!5308580 (= e!3298939 e!3298943)))

(declare-fun res!2252028 () Bool)

(assert (=> b!5308580 (=> res!2252028 e!3298943)))

(declare-fun e!3298935 () Bool)

(assert (=> b!5308580 (= res!2252028 e!3298935)))

(declare-fun res!2252018 () Bool)

(assert (=> b!5308580 (=> (not res!2252018) (not e!3298935))))

(declare-fun lt!2169194 () Bool)

(declare-fun lt!2169177 () Bool)

(assert (=> b!5308580 (= res!2252018 (not (= lt!2169194 lt!2169177)))))

(assert (=> b!5308580 (= lt!2169194 (matchZipper!1204 lt!2169163 (t!374384 s!2326)))))

(declare-fun lt!2169195 () (Set Context!8688))

(declare-fun e!3298924 () Bool)

(assert (=> b!5308580 (= (matchZipper!1204 lt!2169195 (t!374384 s!2326)) e!3298924)))

(declare-fun res!2252006 () Bool)

(assert (=> b!5308580 (=> res!2252006 e!3298924)))

(assert (=> b!5308580 (= res!2252006 lt!2169177)))

(assert (=> b!5308580 (= lt!2169177 (matchZipper!1204 lt!2169176 (t!374384 s!2326)))))

(declare-fun lt!2169171 () Unit!153358)

(declare-fun lt!2169182 () (Set Context!8688))

(assert (=> b!5308580 (= lt!2169171 (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169176 lt!2169182 (t!374384 s!2326)))))

(declare-fun setIsEmpty!34130 () Bool)

(declare-fun setRes!34130 () Bool)

(assert (=> setIsEmpty!34130 setRes!34130))

(declare-fun e!3298944 () Bool)

(assert (=> b!5308581 (= e!3298937 e!3298944)))

(declare-fun res!2252007 () Bool)

(assert (=> b!5308581 (=> res!2252007 e!3298944)))

(declare-fun lt!2169191 () Bool)

(assert (=> b!5308581 (= res!2252007 (or (not (= lt!2169183 lt!2169191)) (is-Nil!61055 s!2326)))))

(declare-fun Exists!2141 (Int) Bool)

(assert (=> b!5308581 (= (Exists!2141 lambda!270254) (Exists!2141 lambda!270255))))

(declare-fun lt!2169188 () Unit!153358)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!795 (Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> b!5308581 (= lt!2169188 (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326))))

(assert (=> b!5308581 (= lt!2169191 (Exists!2141 lambda!270254))))

(declare-datatypes ((tuple2!64318 0))(
  ( (tuple2!64319 (_1!35462 List!61179) (_2!35462 List!61179)) )
))
(declare-datatypes ((Option!15071 0))(
  ( (None!15070) (Some!15070 (v!51099 tuple2!64318)) )
))
(declare-fun isDefined!11774 (Option!15071) Bool)

(declare-fun findConcatSeparation!1485 (Regex!14960 Regex!14960 List!61179 List!61179 List!61179) Option!15071)

(assert (=> b!5308581 (= lt!2169191 (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) Nil!61055 s!2326 s!2326)))))

(declare-fun lt!2169161 () Unit!153358)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1249 (Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> b!5308581 (= lt!2169161 (lemmaFindConcatSeparationEquivalentToExists!1249 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326))))

(declare-fun b!5308582 () Bool)

(declare-fun res!2252010 () Bool)

(assert (=> b!5308582 (=> res!2252010 e!3298934)))

(declare-fun contextDepthTotal!101 (Context!8688) Int)

(assert (=> b!5308582 (= res!2252010 (>= (contextDepthTotal!101 lt!2169202) (contextDepthTotal!101 (h!67505 zl!343))))))

(declare-fun e!3298929 () Bool)

(declare-fun b!5308583 () Bool)

(declare-fun tp!1479302 () Bool)

(declare-fun e!3298941 () Bool)

(declare-fun inv!80648 (Context!8688) Bool)

(assert (=> b!5308583 (= e!3298929 (and (inv!80648 (h!67505 zl!343)) e!3298941 tp!1479302))))

(declare-fun b!5308584 () Bool)

(declare-fun e!3298932 () Bool)

(declare-fun tp!1479308 () Bool)

(assert (=> b!5308584 (= e!3298932 tp!1479308)))

(declare-fun b!5308585 () Bool)

(assert (=> b!5308585 (= e!3298935 (not (matchZipper!1204 lt!2169182 (t!374384 s!2326))))))

(declare-fun res!2252021 () Bool)

(assert (=> start!559792 (=> (not res!2252021) (not e!3298945))))

(declare-fun validRegex!6696 (Regex!14960) Bool)

(assert (=> start!559792 (= res!2252021 (validRegex!6696 r!7292))))

(assert (=> start!559792 e!3298945))

(assert (=> start!559792 e!3298931))

(declare-fun condSetEmpty!34130 () Bool)

(declare-fun z!1189 () (Set Context!8688))

(assert (=> start!559792 (= condSetEmpty!34130 (= z!1189 (as set.empty (Set Context!8688))))))

(assert (=> start!559792 setRes!34130))

(assert (=> start!559792 e!3298929))

(declare-fun e!3298926 () Bool)

(assert (=> start!559792 e!3298926))

(declare-fun setElem!34130 () Context!8688)

(declare-fun tp!1479307 () Bool)

(declare-fun setNonEmpty!34130 () Bool)

(assert (=> setNonEmpty!34130 (= setRes!34130 (and tp!1479307 (inv!80648 setElem!34130) e!3298932))))

(declare-fun setRest!34130 () (Set Context!8688))

(assert (=> setNonEmpty!34130 (= z!1189 (set.union (set.insert setElem!34130 (as set.empty (Set Context!8688))) setRest!34130))))

(declare-fun b!5308586 () Bool)

(assert (=> b!5308586 (= e!3298940 e!3298930)))

(declare-fun res!2252029 () Bool)

(assert (=> b!5308586 (=> res!2252029 e!3298930)))

(assert (=> b!5308586 (= res!2252029 e!3298928)))

(declare-fun res!2252023 () Bool)

(assert (=> b!5308586 (=> (not res!2252023) (not e!3298928))))

(assert (=> b!5308586 (= res!2252023 (not (= lt!2169194 (matchZipper!1204 lt!2169189 (t!374384 s!2326)))))))

(assert (=> b!5308586 (= (matchZipper!1204 lt!2169198 (t!374384 s!2326)) e!3298933)))

(declare-fun res!2252017 () Bool)

(assert (=> b!5308586 (=> res!2252017 e!3298933)))

(assert (=> b!5308586 (= res!2252017 lt!2169177)))

(declare-fun lt!2169210 () Unit!153358)

(assert (=> b!5308586 (= lt!2169210 (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169176 lt!2169180 (t!374384 s!2326)))))

(assert (=> b!5308586 (= (flatMap!687 lt!2169206 lambda!270256) (derivationStepZipperUp!332 lt!2169167 (h!67503 s!2326)))))

(declare-fun lt!2169196 () Unit!153358)

(assert (=> b!5308586 (= lt!2169196 (lemmaFlatMapOnSingletonSet!219 lt!2169206 lt!2169167 lambda!270256))))

(declare-fun b!5308587 () Bool)

(assert (=> b!5308587 (= e!3298942 (matchZipper!1204 lt!2169211 (t!374384 s!2326)))))

(declare-fun b!5308588 () Bool)

(declare-fun tp!1479305 () Bool)

(declare-fun tp!1479309 () Bool)

(assert (=> b!5308588 (= e!3298931 (and tp!1479305 tp!1479309))))

(declare-fun b!5308589 () Bool)

(assert (=> b!5308589 (= e!3298945 (not e!3298937))))

(declare-fun res!2252011 () Bool)

(assert (=> b!5308589 (=> res!2252011 e!3298937)))

(assert (=> b!5308589 (= res!2252011 (not (is-Cons!61057 zl!343)))))

(declare-fun matchRSpec!2063 (Regex!14960 List!61179) Bool)

(assert (=> b!5308589 (= lt!2169183 (matchRSpec!2063 r!7292 s!2326))))

(assert (=> b!5308589 (= lt!2169183 (matchR!7145 r!7292 s!2326))))

(declare-fun lt!2169208 () Unit!153358)

(declare-fun mainMatchTheorem!2063 (Regex!14960 List!61179) Unit!153358)

(assert (=> b!5308589 (= lt!2169208 (mainMatchTheorem!2063 r!7292 s!2326))))

(declare-fun b!5308590 () Bool)

(declare-fun res!2252022 () Bool)

(assert (=> b!5308590 (=> (not res!2252022) (not e!3298945))))

(declare-fun toList!8744 ((Set Context!8688)) List!61181)

(assert (=> b!5308590 (= res!2252022 (= (toList!8744 z!1189) zl!343))))

(declare-fun b!5308591 () Bool)

(declare-fun res!2252016 () Bool)

(declare-fun e!3298923 () Bool)

(assert (=> b!5308591 (=> res!2252016 e!3298923)))

(declare-fun lt!2169168 () List!61181)

(declare-fun zipperDepth!77 (List!61181) Int)

(assert (=> b!5308591 (= res!2252016 (> (zipperDepth!77 lt!2169168) (zipperDepth!77 zl!343)))))

(declare-fun b!5308592 () Bool)

(declare-fun res!2252026 () Bool)

(declare-fun e!3298938 () Bool)

(assert (=> b!5308592 (=> res!2252026 e!3298938)))

(declare-fun nullable!5129 (Regex!14960) Bool)

(assert (=> b!5308592 (= res!2252026 (not (nullable!5129 (regOne!30432 (regOne!30432 r!7292)))))))

(declare-fun b!5308593 () Bool)

(assert (=> b!5308593 (= e!3298924 (matchZipper!1204 lt!2169182 (t!374384 s!2326)))))

(assert (=> b!5308594 (= e!3298923 e!3298925)))

(declare-fun res!2252024 () Bool)

(assert (=> b!5308594 (=> res!2252024 e!3298925)))

(declare-fun lt!2169175 () Bool)

(declare-fun lt!2169164 () Bool)

(declare-fun lt!2169162 () Bool)

(declare-fun lt!2169192 () Bool)

(declare-fun lt!2169165 () Bool)

(assert (=> b!5308594 (= res!2252024 (or (not (= lt!2169192 (or lt!2169165 lt!2169164))) (not (= lt!2169192 (or lt!2169175 lt!2169162)))))))

(assert (=> b!5308594 (= lt!2169192 (matchZipper!1204 z!1189 s!2326))))

(assert (=> b!5308594 (= (Exists!2141 lambda!270259) (Exists!2141 lambda!270260))))

(declare-fun lt!2169172 () Unit!153358)

(assert (=> b!5308594 (= lt!2169172 (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(assert (=> b!5308594 (= (isDefined!11774 (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 Nil!61055 s!2326 s!2326)) (Exists!2141 lambda!270259))))

(declare-fun lt!2169184 () Unit!153358)

(assert (=> b!5308594 (= lt!2169184 (lemmaFindConcatSeparationEquivalentToExists!1249 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(assert (=> b!5308594 (= lt!2169173 (generalisedConcat!629 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> b!5308594 (= lt!2169162 (matchRSpec!2063 lt!2169205 s!2326))))

(declare-fun lt!2169209 () Unit!153358)

(assert (=> b!5308594 (= lt!2169209 (mainMatchTheorem!2063 lt!2169205 s!2326))))

(assert (=> b!5308594 (= (Exists!2141 lambda!270257) (Exists!2141 lambda!270258))))

(declare-fun lt!2169203 () Unit!153358)

(assert (=> b!5308594 (= lt!2169203 (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326))))

(assert (=> b!5308594 (= (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 Nil!61055 s!2326 s!2326)) (Exists!2141 lambda!270257))))

(declare-fun lt!2169169 () Unit!153358)

(assert (=> b!5308594 (= lt!2169169 (lemmaFindConcatSeparationEquivalentToExists!1249 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326))))

(declare-fun lt!2169201 () Regex!14960)

(assert (=> b!5308594 (= lt!2169175 (matchRSpec!2063 lt!2169201 s!2326))))

(declare-fun lt!2169193 () Unit!153358)

(assert (=> b!5308594 (= lt!2169193 (mainMatchTheorem!2063 lt!2169201 s!2326))))

(assert (=> b!5308594 (= lt!2169162 lt!2169164)))

(assert (=> b!5308594 (= lt!2169164 (matchZipper!1204 lt!2169206 s!2326))))

(assert (=> b!5308594 (= lt!2169162 (matchR!7145 lt!2169205 s!2326))))

(declare-fun lt!2169181 () Unit!153358)

(declare-fun theoremZipperRegexEquiv!370 ((Set Context!8688) List!61181 Regex!14960 List!61179) Unit!153358)

(assert (=> b!5308594 (= lt!2169181 (theoremZipperRegexEquiv!370 lt!2169206 (Cons!61057 lt!2169167 Nil!61057) lt!2169205 s!2326))))

(assert (=> b!5308594 (= lt!2169205 (generalisedConcat!629 lt!2169179))))

(assert (=> b!5308594 (= lt!2169175 lt!2169165)))

(assert (=> b!5308594 (= lt!2169165 (matchZipper!1204 lt!2169199 s!2326))))

(assert (=> b!5308594 (= lt!2169175 (matchR!7145 lt!2169201 s!2326))))

(declare-fun lt!2169200 () Unit!153358)

(assert (=> b!5308594 (= lt!2169200 (theoremZipperRegexEquiv!370 lt!2169199 lt!2169168 lt!2169201 s!2326))))

(assert (=> b!5308594 (= lt!2169201 (generalisedConcat!629 lt!2169190))))

(declare-fun b!5308595 () Bool)

(declare-fun tp!1479304 () Bool)

(assert (=> b!5308595 (= e!3298941 tp!1479304)))

(declare-fun b!5308596 () Bool)

(declare-fun res!2252005 () Bool)

(assert (=> b!5308596 (=> res!2252005 e!3298925)))

(assert (=> b!5308596 (= res!2252005 (not (= lt!2169183 (matchR!7145 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)) s!2326))))))

(declare-fun b!5308597 () Bool)

(declare-fun res!2252012 () Bool)

(assert (=> b!5308597 (=> res!2252012 e!3298937)))

(assert (=> b!5308597 (= res!2252012 (not (is-Cons!61056 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308598 () Bool)

(assert (=> b!5308598 (= e!3298934 e!3298923)))

(declare-fun res!2252020 () Bool)

(assert (=> b!5308598 (=> res!2252020 e!3298923)))

(declare-fun zipperDepthTotal!121 (List!61181) Int)

(assert (=> b!5308598 (= res!2252020 (>= (zipperDepthTotal!121 lt!2169168) (zipperDepthTotal!121 zl!343)))))

(assert (=> b!5308598 (= lt!2169168 (Cons!61057 lt!2169202 Nil!61057))))

(declare-fun b!5308599 () Bool)

(declare-fun res!2252019 () Bool)

(assert (=> b!5308599 (=> res!2252019 e!3298944)))

(declare-fun isEmpty!33017 (List!61180) Bool)

(assert (=> b!5308599 (= res!2252019 (isEmpty!33017 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308600 () Bool)

(declare-fun tp_is_empty!39173 () Bool)

(declare-fun tp!1479303 () Bool)

(assert (=> b!5308600 (= e!3298926 (and tp_is_empty!39173 tp!1479303))))

(declare-fun b!5308601 () Bool)

(declare-fun lambda!270261 () Int)

(declare-fun forall!14376 (List!61180 Int) Bool)

(assert (=> b!5308601 (= e!3298936 (forall!14376 (t!374385 (exprs!4844 (h!67505 zl!343))) lambda!270261))))

(assert (=> b!5308601 (= lt!2169187 (matchR!7145 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)) s!2326))))

(declare-fun lt!2169178 () Unit!153358)

(declare-fun lemmaConcatAssociative!1 (Regex!14960 Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> b!5308601 (= lt!2169178 (lemmaConcatAssociative!1 (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(declare-fun b!5308602 () Bool)

(assert (=> b!5308602 (= e!3298938 e!3298939)))

(declare-fun res!2252009 () Bool)

(assert (=> b!5308602 (=> res!2252009 e!3298939)))

(assert (=> b!5308602 (= res!2252009 (not (= lt!2169163 lt!2169195)))))

(assert (=> b!5308602 (= lt!2169195 (set.union lt!2169176 lt!2169182))))

(declare-fun lt!2169170 () Context!8688)

(declare-fun derivationStepZipperDown!408 (Regex!14960 Context!8688 C!30190) (Set Context!8688))

(assert (=> b!5308602 (= lt!2169182 (derivationStepZipperDown!408 (regTwo!30432 (regOne!30432 r!7292)) lt!2169170 (h!67503 s!2326)))))

(assert (=> b!5308602 (= lt!2169176 (derivationStepZipperDown!408 (regOne!30432 (regOne!30432 r!7292)) lt!2169167 (h!67503 s!2326)))))

(assert (=> b!5308602 (= lt!2169167 (Context!8689 lt!2169179))))

(assert (=> b!5308602 (= lt!2169179 (Cons!61056 (regTwo!30432 (regOne!30432 r!7292)) (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308603 () Bool)

(declare-fun res!2252027 () Bool)

(assert (=> b!5308603 (=> res!2252027 e!3298937)))

(assert (=> b!5308603 (= res!2252027 (or (is-EmptyExpr!14960 r!7292) (is-EmptyLang!14960 r!7292) (is-ElementMatch!14960 r!7292) (is-Union!14960 r!7292) (not (is-Concat!23805 r!7292))))))

(assert (=> b!5308604 (= e!3298944 e!3298938)))

(declare-fun res!2252000 () Bool)

(assert (=> b!5308604 (=> res!2252000 e!3298938)))

(assert (=> b!5308604 (= res!2252000 (or (and (is-ElementMatch!14960 (regOne!30432 r!7292)) (= (c!921918 (regOne!30432 r!7292)) (h!67503 s!2326))) (is-Union!14960 (regOne!30432 r!7292)) (not (is-Concat!23805 (regOne!30432 r!7292)))))))

(declare-fun lt!2169185 () Unit!153358)

(assert (=> b!5308604 (= lt!2169185 e!3298927)))

(declare-fun c!921917 () Bool)

(assert (=> b!5308604 (= c!921917 (nullable!5129 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> b!5308604 (= (flatMap!687 z!1189 lambda!270256) (derivationStepZipperUp!332 (h!67505 zl!343) (h!67503 s!2326)))))

(declare-fun lt!2169186 () Unit!153358)

(assert (=> b!5308604 (= lt!2169186 (lemmaFlatMapOnSingletonSet!219 z!1189 (h!67505 zl!343) lambda!270256))))

(assert (=> b!5308604 (= lt!2169211 (derivationStepZipperUp!332 lt!2169170 (h!67503 s!2326)))))

(assert (=> b!5308604 (= lt!2169163 (derivationStepZipperDown!408 (h!67504 (exprs!4844 (h!67505 zl!343))) lt!2169170 (h!67503 s!2326)))))

(assert (=> b!5308604 (= lt!2169170 (Context!8689 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun lt!2169207 () (Set Context!8688))

(assert (=> b!5308604 (= lt!2169207 (derivationStepZipperUp!332 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343))))) (h!67503 s!2326)))))

(declare-fun b!5308605 () Bool)

(assert (=> b!5308605 (= e!3298931 tp_is_empty!39173)))

(declare-fun b!5308606 () Bool)

(declare-fun res!2252025 () Bool)

(assert (=> b!5308606 (=> res!2252025 e!3298937)))

(declare-fun isEmpty!33018 (List!61181) Bool)

(assert (=> b!5308606 (= res!2252025 (not (isEmpty!33018 (t!374386 zl!343))))))

(declare-fun b!5308607 () Bool)

(declare-fun tp!1479310 () Bool)

(declare-fun tp!1479306 () Bool)

(assert (=> b!5308607 (= e!3298931 (and tp!1479310 tp!1479306))))

(assert (= (and start!559792 res!2252021) b!5308590))

(assert (= (and b!5308590 res!2252022) b!5308573))

(assert (= (and b!5308573 res!2252003) b!5308589))

(assert (= (and b!5308589 (not res!2252011)) b!5308606))

(assert (= (and b!5308606 (not res!2252025)) b!5308576))

(assert (= (and b!5308576 (not res!2252014)) b!5308597))

(assert (= (and b!5308597 (not res!2252012)) b!5308575))

(assert (= (and b!5308575 (not res!2252008)) b!5308603))

(assert (= (and b!5308603 (not res!2252027)) b!5308581))

(assert (= (and b!5308581 (not res!2252007)) b!5308599))

(assert (= (and b!5308599 (not res!2252019)) b!5308604))

(assert (= (and b!5308604 c!921917) b!5308569))

(assert (= (and b!5308604 (not c!921917)) b!5308577))

(assert (= (and b!5308569 (not res!2252001)) b!5308587))

(assert (= (and b!5308604 (not res!2252000)) b!5308592))

(assert (= (and b!5308592 (not res!2252026)) b!5308602))

(assert (= (and b!5308602 (not res!2252009)) b!5308580))

(assert (= (and b!5308580 (not res!2252006)) b!5308593))

(assert (= (and b!5308580 res!2252018) b!5308585))

(assert (= (and b!5308580 (not res!2252028)) b!5308579))

(assert (= (and b!5308579 (not res!2252004)) b!5308586))

(assert (= (and b!5308586 (not res!2252017)) b!5308571))

(assert (= (and b!5308586 res!2252023) b!5308574))

(assert (= (and b!5308586 (not res!2252029)) b!5308572))

(assert (= (and b!5308572 (not res!2252013)) b!5308582))

(assert (= (and b!5308582 (not res!2252010)) b!5308598))

(assert (= (and b!5308598 (not res!2252020)) b!5308591))

(assert (= (and b!5308591 (not res!2252016)) b!5308594))

(assert (= (and b!5308594 (not res!2252024)) b!5308596))

(assert (= (and b!5308596 (not res!2252005)) b!5308568))

(assert (= (and b!5308568 (not res!2252015)) b!5308570))

(assert (= (and b!5308570 (not res!2252002)) b!5308601))

(assert (= (and start!559792 (is-ElementMatch!14960 r!7292)) b!5308605))

(assert (= (and start!559792 (is-Concat!23805 r!7292)) b!5308607))

(assert (= (and start!559792 (is-Star!14960 r!7292)) b!5308578))

(assert (= (and start!559792 (is-Union!14960 r!7292)) b!5308588))

(assert (= (and start!559792 condSetEmpty!34130) setIsEmpty!34130))

(assert (= (and start!559792 (not condSetEmpty!34130)) setNonEmpty!34130))

(assert (= setNonEmpty!34130 b!5308584))

(assert (= b!5308583 b!5308595))

(assert (= (and start!559792 (is-Cons!61057 zl!343)) b!5308583))

(assert (= (and start!559792 (is-Cons!61055 s!2326)) b!5308600))

(declare-fun m!6345708 () Bool)

(assert (=> b!5308580 m!6345708))

(declare-fun m!6345710 () Bool)

(assert (=> b!5308580 m!6345710))

(declare-fun m!6345712 () Bool)

(assert (=> b!5308580 m!6345712))

(declare-fun m!6345714 () Bool)

(assert (=> b!5308580 m!6345714))

(declare-fun m!6345716 () Bool)

(assert (=> b!5308587 m!6345716))

(declare-fun m!6345718 () Bool)

(assert (=> b!5308576 m!6345718))

(declare-fun m!6345720 () Bool)

(assert (=> b!5308591 m!6345720))

(declare-fun m!6345722 () Bool)

(assert (=> b!5308591 m!6345722))

(declare-fun m!6345724 () Bool)

(assert (=> b!5308596 m!6345724))

(declare-fun m!6345726 () Bool)

(assert (=> b!5308581 m!6345726))

(declare-fun m!6345728 () Bool)

(assert (=> b!5308581 m!6345728))

(declare-fun m!6345730 () Bool)

(assert (=> b!5308581 m!6345730))

(assert (=> b!5308581 m!6345726))

(declare-fun m!6345732 () Bool)

(assert (=> b!5308581 m!6345732))

(declare-fun m!6345734 () Bool)

(assert (=> b!5308581 m!6345734))

(assert (=> b!5308581 m!6345728))

(declare-fun m!6345736 () Bool)

(assert (=> b!5308581 m!6345736))

(declare-fun m!6345738 () Bool)

(assert (=> b!5308574 m!6345738))

(assert (=> b!5308574 m!6345738))

(declare-fun m!6345740 () Bool)

(assert (=> b!5308574 m!6345740))

(declare-fun m!6345742 () Bool)

(assert (=> b!5308589 m!6345742))

(declare-fun m!6345744 () Bool)

(assert (=> b!5308589 m!6345744))

(declare-fun m!6345746 () Bool)

(assert (=> b!5308589 m!6345746))

(declare-fun m!6345748 () Bool)

(assert (=> b!5308579 m!6345748))

(declare-fun m!6345750 () Bool)

(assert (=> b!5308579 m!6345750))

(declare-fun m!6345752 () Bool)

(assert (=> b!5308579 m!6345752))

(declare-fun m!6345754 () Bool)

(assert (=> b!5308579 m!6345754))

(declare-fun m!6345756 () Bool)

(assert (=> b!5308579 m!6345756))

(declare-fun m!6345758 () Bool)

(assert (=> b!5308579 m!6345758))

(declare-fun m!6345760 () Bool)

(assert (=> b!5308579 m!6345760))

(declare-fun m!6345762 () Bool)

(assert (=> b!5308602 m!6345762))

(declare-fun m!6345764 () Bool)

(assert (=> b!5308602 m!6345764))

(declare-fun m!6345766 () Bool)

(assert (=> b!5308599 m!6345766))

(declare-fun m!6345768 () Bool)

(assert (=> b!5308585 m!6345768))

(declare-fun m!6345770 () Bool)

(assert (=> b!5308573 m!6345770))

(declare-fun m!6345772 () Bool)

(assert (=> b!5308606 m!6345772))

(declare-fun m!6345774 () Bool)

(assert (=> b!5308570 m!6345774))

(declare-fun m!6345776 () Bool)

(assert (=> b!5308592 m!6345776))

(declare-fun m!6345778 () Bool)

(assert (=> b!5308598 m!6345778))

(declare-fun m!6345780 () Bool)

(assert (=> b!5308598 m!6345780))

(declare-fun m!6345782 () Bool)

(assert (=> b!5308569 m!6345782))

(assert (=> b!5308569 m!6345708))

(declare-fun m!6345784 () Bool)

(assert (=> b!5308569 m!6345784))

(declare-fun m!6345786 () Bool)

(assert (=> b!5308604 m!6345786))

(declare-fun m!6345788 () Bool)

(assert (=> b!5308604 m!6345788))

(declare-fun m!6345790 () Bool)

(assert (=> b!5308604 m!6345790))

(declare-fun m!6345792 () Bool)

(assert (=> b!5308604 m!6345792))

(declare-fun m!6345794 () Bool)

(assert (=> b!5308604 m!6345794))

(declare-fun m!6345796 () Bool)

(assert (=> b!5308604 m!6345796))

(declare-fun m!6345798 () Bool)

(assert (=> b!5308604 m!6345798))

(declare-fun m!6345800 () Bool)

(assert (=> b!5308590 m!6345800))

(assert (=> b!5308586 m!6345748))

(declare-fun m!6345802 () Bool)

(assert (=> b!5308586 m!6345802))

(declare-fun m!6345804 () Bool)

(assert (=> b!5308586 m!6345804))

(declare-fun m!6345806 () Bool)

(assert (=> b!5308586 m!6345806))

(declare-fun m!6345808 () Bool)

(assert (=> b!5308586 m!6345808))

(declare-fun m!6345810 () Bool)

(assert (=> b!5308586 m!6345810))

(declare-fun m!6345812 () Bool)

(assert (=> b!5308582 m!6345812))

(declare-fun m!6345814 () Bool)

(assert (=> b!5308582 m!6345814))

(declare-fun m!6345816 () Bool)

(assert (=> b!5308601 m!6345816))

(declare-fun m!6345818 () Bool)

(assert (=> b!5308601 m!6345818))

(declare-fun m!6345820 () Bool)

(assert (=> b!5308601 m!6345820))

(declare-fun m!6345822 () Bool)

(assert (=> b!5308594 m!6345822))

(declare-fun m!6345824 () Bool)

(assert (=> b!5308594 m!6345824))

(declare-fun m!6345826 () Bool)

(assert (=> b!5308594 m!6345826))

(declare-fun m!6345828 () Bool)

(assert (=> b!5308594 m!6345828))

(declare-fun m!6345830 () Bool)

(assert (=> b!5308594 m!6345830))

(declare-fun m!6345832 () Bool)

(assert (=> b!5308594 m!6345832))

(declare-fun m!6345834 () Bool)

(assert (=> b!5308594 m!6345834))

(declare-fun m!6345836 () Bool)

(assert (=> b!5308594 m!6345836))

(declare-fun m!6345838 () Bool)

(assert (=> b!5308594 m!6345838))

(declare-fun m!6345840 () Bool)

(assert (=> b!5308594 m!6345840))

(declare-fun m!6345842 () Bool)

(assert (=> b!5308594 m!6345842))

(declare-fun m!6345844 () Bool)

(assert (=> b!5308594 m!6345844))

(declare-fun m!6345846 () Bool)

(assert (=> b!5308594 m!6345846))

(declare-fun m!6345848 () Bool)

(assert (=> b!5308594 m!6345848))

(assert (=> b!5308594 m!6345826))

(declare-fun m!6345850 () Bool)

(assert (=> b!5308594 m!6345850))

(declare-fun m!6345852 () Bool)

(assert (=> b!5308594 m!6345852))

(assert (=> b!5308594 m!6345852))

(declare-fun m!6345854 () Bool)

(assert (=> b!5308594 m!6345854))

(declare-fun m!6345856 () Bool)

(assert (=> b!5308594 m!6345856))

(declare-fun m!6345858 () Bool)

(assert (=> b!5308594 m!6345858))

(assert (=> b!5308594 m!6345836))

(declare-fun m!6345860 () Bool)

(assert (=> b!5308594 m!6345860))

(declare-fun m!6345862 () Bool)

(assert (=> b!5308594 m!6345862))

(declare-fun m!6345864 () Bool)

(assert (=> b!5308594 m!6345864))

(declare-fun m!6345866 () Bool)

(assert (=> b!5308594 m!6345866))

(declare-fun m!6345868 () Bool)

(assert (=> b!5308594 m!6345868))

(declare-fun m!6345870 () Bool)

(assert (=> b!5308594 m!6345870))

(declare-fun m!6345872 () Bool)

(assert (=> b!5308594 m!6345872))

(assert (=> b!5308594 m!6345832))

(declare-fun m!6345874 () Bool)

(assert (=> start!559792 m!6345874))

(declare-fun m!6345876 () Bool)

(assert (=> b!5308575 m!6345876))

(assert (=> b!5308575 m!6345876))

(declare-fun m!6345878 () Bool)

(assert (=> b!5308575 m!6345878))

(assert (=> b!5308593 m!6345768))

(declare-fun m!6345880 () Bool)

(assert (=> setNonEmpty!34130 m!6345880))

(declare-fun m!6345882 () Bool)

(assert (=> b!5308568 m!6345882))

(declare-fun m!6345884 () Bool)

(assert (=> b!5308571 m!6345884))

(declare-fun m!6345886 () Bool)

(assert (=> b!5308583 m!6345886))

(push 1)

(assert (not b!5308607))

(assert (not b!5308578))

(assert (not b!5308590))

(assert (not b!5308585))

(assert (not b!5308594))

(assert (not setNonEmpty!34130))

(assert (not b!5308606))

(assert (not b!5308584))

(assert (not b!5308604))

(assert (not b!5308591))

(assert (not b!5308593))

(assert (not b!5308592))

(assert (not b!5308579))

(assert (not start!559792))

(assert (not b!5308600))

(assert (not b!5308601))

(assert (not b!5308582))

(assert (not b!5308598))

(assert (not b!5308574))

(assert (not b!5308595))

(assert (not b!5308599))

(assert (not b!5308588))

(assert (not b!5308569))

(assert (not b!5308575))

(assert (not b!5308589))

(assert (not b!5308570))

(assert (not b!5308596))

(assert (not b!5308587))

(assert (not b!5308576))

(assert tp_is_empty!39173)

(assert (not b!5308583))

(assert (not b!5308586))

(assert (not b!5308602))

(assert (not b!5308581))

(assert (not b!5308573))

(assert (not b!5308568))

(assert (not b!5308580))

(assert (not b!5308571))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1706040 () Bool)

(declare-fun c!921932 () Bool)

(declare-fun isEmpty!33021 (List!61179) Bool)

(assert (=> d!1706040 (= c!921932 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299035 () Bool)

(assert (=> d!1706040 (= (matchZipper!1204 lt!2169182 (t!374384 s!2326)) e!3299035)))

(declare-fun b!5308780 () Bool)

(declare-fun nullableZipper!1331 ((Set Context!8688)) Bool)

(assert (=> b!5308780 (= e!3299035 (nullableZipper!1331 lt!2169182))))

(declare-fun b!5308781 () Bool)

(declare-fun head!11380 (List!61179) C!30190)

(declare-fun tail!10477 (List!61179) List!61179)

(assert (=> b!5308781 (= e!3299035 (matchZipper!1204 (derivationStepZipper!1203 lt!2169182 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706040 c!921932) b!5308780))

(assert (= (and d!1706040 (not c!921932)) b!5308781))

(declare-fun m!6346068 () Bool)

(assert (=> d!1706040 m!6346068))

(declare-fun m!6346070 () Bool)

(assert (=> b!5308780 m!6346070))

(declare-fun m!6346072 () Bool)

(assert (=> b!5308781 m!6346072))

(assert (=> b!5308781 m!6346072))

(declare-fun m!6346074 () Bool)

(assert (=> b!5308781 m!6346074))

(declare-fun m!6346076 () Bool)

(assert (=> b!5308781 m!6346076))

(assert (=> b!5308781 m!6346074))

(assert (=> b!5308781 m!6346076))

(declare-fun m!6346078 () Bool)

(assert (=> b!5308781 m!6346078))

(assert (=> b!5308593 d!1706040))

(declare-fun d!1706042 () Bool)

(declare-fun c!921933 () Bool)

(assert (=> d!1706042 (= c!921933 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299036 () Bool)

(assert (=> d!1706042 (= (matchZipper!1204 (derivationStepZipper!1203 lt!2169206 (h!67503 s!2326)) (t!374384 s!2326)) e!3299036)))

(declare-fun b!5308782 () Bool)

(assert (=> b!5308782 (= e!3299036 (nullableZipper!1331 (derivationStepZipper!1203 lt!2169206 (h!67503 s!2326))))))

(declare-fun b!5308783 () Bool)

(assert (=> b!5308783 (= e!3299036 (matchZipper!1204 (derivationStepZipper!1203 (derivationStepZipper!1203 lt!2169206 (h!67503 s!2326)) (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706042 c!921933) b!5308782))

(assert (= (and d!1706042 (not c!921933)) b!5308783))

(assert (=> d!1706042 m!6346068))

(assert (=> b!5308782 m!6345738))

(declare-fun m!6346080 () Bool)

(assert (=> b!5308782 m!6346080))

(assert (=> b!5308783 m!6346072))

(assert (=> b!5308783 m!6345738))

(assert (=> b!5308783 m!6346072))

(declare-fun m!6346082 () Bool)

(assert (=> b!5308783 m!6346082))

(assert (=> b!5308783 m!6346076))

(assert (=> b!5308783 m!6346082))

(assert (=> b!5308783 m!6346076))

(declare-fun m!6346084 () Bool)

(assert (=> b!5308783 m!6346084))

(assert (=> b!5308574 d!1706042))

(declare-fun bs!1230909 () Bool)

(declare-fun d!1706044 () Bool)

(assert (= bs!1230909 (and d!1706044 b!5308604)))

(declare-fun lambda!270298 () Int)

(assert (=> bs!1230909 (= lambda!270298 lambda!270256)))

(assert (=> d!1706044 true))

(assert (=> d!1706044 (= (derivationStepZipper!1203 lt!2169206 (h!67503 s!2326)) (flatMap!687 lt!2169206 lambda!270298))))

(declare-fun bs!1230910 () Bool)

(assert (= bs!1230910 d!1706044))

(declare-fun m!6346086 () Bool)

(assert (=> bs!1230910 m!6346086))

(assert (=> b!5308574 d!1706044))

(declare-fun d!1706046 () Bool)

(declare-fun lt!2169367 () Regex!14960)

(assert (=> d!1706046 (validRegex!6696 lt!2169367)))

(assert (=> d!1706046 (= lt!2169367 (generalisedUnion!889 (unfocusZipperList!402 zl!343)))))

(assert (=> d!1706046 (= (unfocusZipper!702 zl!343) lt!2169367)))

(declare-fun bs!1230911 () Bool)

(assert (= bs!1230911 d!1706046))

(declare-fun m!6346088 () Bool)

(assert (=> bs!1230911 m!6346088))

(assert (=> bs!1230911 m!6345876))

(assert (=> bs!1230911 m!6345876))

(assert (=> bs!1230911 m!6345878))

(assert (=> b!5308573 d!1706046))

(declare-fun d!1706048 () Bool)

(declare-fun nullableFct!1483 (Regex!14960) Bool)

(assert (=> d!1706048 (= (nullable!5129 (regOne!30432 (regOne!30432 r!7292))) (nullableFct!1483 (regOne!30432 (regOne!30432 r!7292))))))

(declare-fun bs!1230912 () Bool)

(assert (= bs!1230912 d!1706048))

(declare-fun m!6346090 () Bool)

(assert (=> bs!1230912 m!6346090))

(assert (=> b!5308592 d!1706048))

(declare-fun bs!1230913 () Bool)

(declare-fun d!1706050 () Bool)

(assert (= bs!1230913 (and d!1706050 b!5308601)))

(declare-fun lambda!270301 () Int)

(assert (=> bs!1230913 (= lambda!270301 lambda!270261)))

(declare-fun b!5308806 () Bool)

(declare-fun e!3299050 () Bool)

(assert (=> b!5308806 (= e!3299050 (isEmpty!33017 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun e!3299051 () Bool)

(assert (=> d!1706050 e!3299051))

(declare-fun res!2252161 () Bool)

(assert (=> d!1706050 (=> (not res!2252161) (not e!3299051))))

(declare-fun lt!2169370 () Regex!14960)

(assert (=> d!1706050 (= res!2252161 (validRegex!6696 lt!2169370))))

(declare-fun e!3299052 () Regex!14960)

(assert (=> d!1706050 (= lt!2169370 e!3299052)))

(declare-fun c!921946 () Bool)

(assert (=> d!1706050 (= c!921946 e!3299050)))

(declare-fun res!2252160 () Bool)

(assert (=> d!1706050 (=> (not res!2252160) (not e!3299050))))

(assert (=> d!1706050 (= res!2252160 (is-Cons!61056 (exprs!4844 (h!67505 zl!343))))))

(assert (=> d!1706050 (forall!14376 (exprs!4844 (h!67505 zl!343)) lambda!270301)))

(assert (=> d!1706050 (= (generalisedConcat!629 (exprs!4844 (h!67505 zl!343))) lt!2169370)))

(declare-fun b!5308807 () Bool)

(declare-fun e!3299049 () Bool)

(declare-fun head!11381 (List!61180) Regex!14960)

(assert (=> b!5308807 (= e!3299049 (= lt!2169370 (head!11381 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308808 () Bool)

(declare-fun e!3299054 () Bool)

(assert (=> b!5308808 (= e!3299054 e!3299049)))

(declare-fun c!921945 () Bool)

(declare-fun tail!10478 (List!61180) List!61180)

(assert (=> b!5308808 (= c!921945 (isEmpty!33017 (tail!10478 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308809 () Bool)

(declare-fun isConcat!389 (Regex!14960) Bool)

(assert (=> b!5308809 (= e!3299049 (isConcat!389 lt!2169370))))

(declare-fun b!5308810 () Bool)

(declare-fun isEmptyExpr!866 (Regex!14960) Bool)

(assert (=> b!5308810 (= e!3299054 (isEmptyExpr!866 lt!2169370))))

(declare-fun b!5308811 () Bool)

(declare-fun e!3299053 () Regex!14960)

(assert (=> b!5308811 (= e!3299053 EmptyExpr!14960)))

(declare-fun b!5308812 () Bool)

(assert (=> b!5308812 (= e!3299052 (h!67504 (exprs!4844 (h!67505 zl!343))))))

(declare-fun b!5308813 () Bool)

(assert (=> b!5308813 (= e!3299051 e!3299054)))

(declare-fun c!921944 () Bool)

(assert (=> b!5308813 (= c!921944 (isEmpty!33017 (exprs!4844 (h!67505 zl!343))))))

(declare-fun b!5308814 () Bool)

(assert (=> b!5308814 (= e!3299052 e!3299053)))

(declare-fun c!921947 () Bool)

(assert (=> b!5308814 (= c!921947 (is-Cons!61056 (exprs!4844 (h!67505 zl!343))))))

(declare-fun b!5308815 () Bool)

(assert (=> b!5308815 (= e!3299053 (Concat!23805 (h!67504 (exprs!4844 (h!67505 zl!343))) (generalisedConcat!629 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(assert (= (and d!1706050 res!2252160) b!5308806))

(assert (= (and d!1706050 c!921946) b!5308812))

(assert (= (and d!1706050 (not c!921946)) b!5308814))

(assert (= (and b!5308814 c!921947) b!5308815))

(assert (= (and b!5308814 (not c!921947)) b!5308811))

(assert (= (and d!1706050 res!2252161) b!5308813))

(assert (= (and b!5308813 c!921944) b!5308810))

(assert (= (and b!5308813 (not c!921944)) b!5308808))

(assert (= (and b!5308808 c!921945) b!5308807))

(assert (= (and b!5308808 (not c!921945)) b!5308809))

(declare-fun m!6346092 () Bool)

(assert (=> b!5308807 m!6346092))

(assert (=> b!5308806 m!6345766))

(assert (=> b!5308815 m!6345862))

(declare-fun m!6346094 () Bool)

(assert (=> b!5308810 m!6346094))

(declare-fun m!6346096 () Bool)

(assert (=> b!5308813 m!6346096))

(declare-fun m!6346098 () Bool)

(assert (=> b!5308808 m!6346098))

(assert (=> b!5308808 m!6346098))

(declare-fun m!6346100 () Bool)

(assert (=> b!5308808 m!6346100))

(declare-fun m!6346102 () Bool)

(assert (=> b!5308809 m!6346102))

(declare-fun m!6346104 () Bool)

(assert (=> d!1706050 m!6346104))

(declare-fun m!6346106 () Bool)

(assert (=> d!1706050 m!6346106))

(assert (=> b!5308576 d!1706050))

(declare-fun b!5308844 () Bool)

(declare-fun e!3299071 () Bool)

(declare-fun lt!2169373 () Bool)

(assert (=> b!5308844 (= e!3299071 (not lt!2169373))))

(declare-fun b!5308845 () Bool)

(declare-fun e!3299073 () Bool)

(assert (=> b!5308845 (= e!3299073 (not (= (head!11380 s!2326) (c!921918 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292))))))))

(declare-fun b!5308846 () Bool)

(declare-fun res!2252183 () Bool)

(assert (=> b!5308846 (=> res!2252183 e!3299073)))

(assert (=> b!5308846 (= res!2252183 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5308847 () Bool)

(declare-fun e!3299075 () Bool)

(declare-fun derivativeStep!4152 (Regex!14960 C!30190) Regex!14960)

(assert (=> b!5308847 (= e!3299075 (matchR!7145 (derivativeStep!4152 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)) (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706052 () Bool)

(declare-fun e!3299070 () Bool)

(assert (=> d!1706052 e!3299070))

(declare-fun c!921954 () Bool)

(assert (=> d!1706052 (= c!921954 (is-EmptyExpr!14960 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292))))))

(assert (=> d!1706052 (= lt!2169373 e!3299075)))

(declare-fun c!921956 () Bool)

(assert (=> d!1706052 (= c!921956 (isEmpty!33021 s!2326))))

(assert (=> d!1706052 (validRegex!6696 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)))))

(assert (=> d!1706052 (= (matchR!7145 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)) s!2326) lt!2169373)))

(declare-fun b!5308848 () Bool)

(declare-fun e!3299072 () Bool)

(assert (=> b!5308848 (= e!3299072 (= (head!11380 s!2326) (c!921918 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)))))))

(declare-fun bm!378464 () Bool)

(declare-fun call!378469 () Bool)

(assert (=> bm!378464 (= call!378469 (isEmpty!33021 s!2326))))

(declare-fun b!5308849 () Bool)

(declare-fun e!3299069 () Bool)

(assert (=> b!5308849 (= e!3299069 e!3299073)))

(declare-fun res!2252181 () Bool)

(assert (=> b!5308849 (=> res!2252181 e!3299073)))

(assert (=> b!5308849 (= res!2252181 call!378469)))

(declare-fun b!5308850 () Bool)

(assert (=> b!5308850 (= e!3299070 e!3299071)))

(declare-fun c!921955 () Bool)

(assert (=> b!5308850 (= c!921955 (is-EmptyLang!14960 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292))))))

(declare-fun b!5308851 () Bool)

(assert (=> b!5308851 (= e!3299070 (= lt!2169373 call!378469))))

(declare-fun b!5308852 () Bool)

(declare-fun e!3299074 () Bool)

(assert (=> b!5308852 (= e!3299074 e!3299069)))

(declare-fun res!2252182 () Bool)

(assert (=> b!5308852 (=> (not res!2252182) (not e!3299069))))

(assert (=> b!5308852 (= res!2252182 (not lt!2169373))))

(declare-fun b!5308853 () Bool)

(assert (=> b!5308853 (= e!3299075 (nullable!5129 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292))))))

(declare-fun b!5308854 () Bool)

(declare-fun res!2252180 () Bool)

(assert (=> b!5308854 (=> (not res!2252180) (not e!3299072))))

(assert (=> b!5308854 (= res!2252180 (not call!378469))))

(declare-fun b!5308855 () Bool)

(declare-fun res!2252179 () Bool)

(assert (=> b!5308855 (=> res!2252179 e!3299074)))

(assert (=> b!5308855 (= res!2252179 e!3299072)))

(declare-fun res!2252185 () Bool)

(assert (=> b!5308855 (=> (not res!2252185) (not e!3299072))))

(assert (=> b!5308855 (= res!2252185 lt!2169373)))

(declare-fun b!5308856 () Bool)

(declare-fun res!2252184 () Bool)

(assert (=> b!5308856 (=> res!2252184 e!3299074)))

(assert (=> b!5308856 (= res!2252184 (not (is-ElementMatch!14960 (Concat!23805 (regOne!30432 r!7292) (regTwo!30432 r!7292)))))))

(assert (=> b!5308856 (= e!3299071 e!3299074)))

(declare-fun b!5308857 () Bool)

(declare-fun res!2252178 () Bool)

(assert (=> b!5308857 (=> (not res!2252178) (not e!3299072))))

(assert (=> b!5308857 (= res!2252178 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706052 c!921956) b!5308853))

(assert (= (and d!1706052 (not c!921956)) b!5308847))

(assert (= (and d!1706052 c!921954) b!5308851))

(assert (= (and d!1706052 (not c!921954)) b!5308850))

(assert (= (and b!5308850 c!921955) b!5308844))

(assert (= (and b!5308850 (not c!921955)) b!5308856))

(assert (= (and b!5308856 (not res!2252184)) b!5308855))

(assert (= (and b!5308855 res!2252185) b!5308854))

(assert (= (and b!5308854 res!2252180) b!5308857))

(assert (= (and b!5308857 res!2252178) b!5308848))

(assert (= (and b!5308855 (not res!2252179)) b!5308852))

(assert (= (and b!5308852 res!2252182) b!5308849))

(assert (= (and b!5308849 (not res!2252181)) b!5308846))

(assert (= (and b!5308846 (not res!2252183)) b!5308845))

(assert (= (or b!5308851 b!5308854 b!5308849) bm!378464))

(declare-fun m!6346108 () Bool)

(assert (=> b!5308848 m!6346108))

(declare-fun m!6346110 () Bool)

(assert (=> bm!378464 m!6346110))

(declare-fun m!6346112 () Bool)

(assert (=> b!5308846 m!6346112))

(assert (=> b!5308846 m!6346112))

(declare-fun m!6346114 () Bool)

(assert (=> b!5308846 m!6346114))

(assert (=> b!5308845 m!6346108))

(assert (=> d!1706052 m!6346110))

(declare-fun m!6346116 () Bool)

(assert (=> d!1706052 m!6346116))

(declare-fun m!6346118 () Bool)

(assert (=> b!5308853 m!6346118))

(assert (=> b!5308847 m!6346108))

(assert (=> b!5308847 m!6346108))

(declare-fun m!6346120 () Bool)

(assert (=> b!5308847 m!6346120))

(assert (=> b!5308847 m!6346112))

(assert (=> b!5308847 m!6346120))

(assert (=> b!5308847 m!6346112))

(declare-fun m!6346122 () Bool)

(assert (=> b!5308847 m!6346122))

(assert (=> b!5308857 m!6346112))

(assert (=> b!5308857 m!6346112))

(assert (=> b!5308857 m!6346114))

(assert (=> b!5308596 d!1706052))

(declare-fun bs!1230914 () Bool)

(declare-fun d!1706054 () Bool)

(assert (= bs!1230914 (and d!1706054 b!5308601)))

(declare-fun lambda!270304 () Int)

(assert (=> bs!1230914 (= lambda!270304 lambda!270261)))

(declare-fun bs!1230915 () Bool)

(assert (= bs!1230915 (and d!1706054 d!1706050)))

(assert (=> bs!1230915 (= lambda!270304 lambda!270301)))

(declare-fun b!5308878 () Bool)

(declare-fun e!3299091 () Regex!14960)

(assert (=> b!5308878 (= e!3299091 EmptyLang!14960)))

(declare-fun b!5308879 () Bool)

(declare-fun e!3299088 () Regex!14960)

(assert (=> b!5308879 (= e!3299088 e!3299091)))

(declare-fun c!921965 () Bool)

(assert (=> b!5308879 (= c!921965 (is-Cons!61056 (unfocusZipperList!402 zl!343)))))

(declare-fun e!3299093 () Bool)

(assert (=> d!1706054 e!3299093))

(declare-fun res!2252191 () Bool)

(assert (=> d!1706054 (=> (not res!2252191) (not e!3299093))))

(declare-fun lt!2169376 () Regex!14960)

(assert (=> d!1706054 (= res!2252191 (validRegex!6696 lt!2169376))))

(assert (=> d!1706054 (= lt!2169376 e!3299088)))

(declare-fun c!921968 () Bool)

(declare-fun e!3299089 () Bool)

(assert (=> d!1706054 (= c!921968 e!3299089)))

(declare-fun res!2252190 () Bool)

(assert (=> d!1706054 (=> (not res!2252190) (not e!3299089))))

(assert (=> d!1706054 (= res!2252190 (is-Cons!61056 (unfocusZipperList!402 zl!343)))))

(assert (=> d!1706054 (forall!14376 (unfocusZipperList!402 zl!343) lambda!270304)))

(assert (=> d!1706054 (= (generalisedUnion!889 (unfocusZipperList!402 zl!343)) lt!2169376)))

(declare-fun b!5308880 () Bool)

(assert (=> b!5308880 (= e!3299091 (Union!14960 (h!67504 (unfocusZipperList!402 zl!343)) (generalisedUnion!889 (t!374385 (unfocusZipperList!402 zl!343)))))))

(declare-fun b!5308881 () Bool)

(assert (=> b!5308881 (= e!3299089 (isEmpty!33017 (t!374385 (unfocusZipperList!402 zl!343))))))

(declare-fun b!5308882 () Bool)

(declare-fun e!3299092 () Bool)

(assert (=> b!5308882 (= e!3299093 e!3299092)))

(declare-fun c!921967 () Bool)

(assert (=> b!5308882 (= c!921967 (isEmpty!33017 (unfocusZipperList!402 zl!343)))))

(declare-fun b!5308883 () Bool)

(declare-fun e!3299090 () Bool)

(assert (=> b!5308883 (= e!3299092 e!3299090)))

(declare-fun c!921966 () Bool)

(assert (=> b!5308883 (= c!921966 (isEmpty!33017 (tail!10478 (unfocusZipperList!402 zl!343))))))

(declare-fun b!5308884 () Bool)

(declare-fun isUnion!306 (Regex!14960) Bool)

(assert (=> b!5308884 (= e!3299090 (isUnion!306 lt!2169376))))

(declare-fun b!5308885 () Bool)

(assert (=> b!5308885 (= e!3299090 (= lt!2169376 (head!11381 (unfocusZipperList!402 zl!343))))))

(declare-fun b!5308886 () Bool)

(assert (=> b!5308886 (= e!3299088 (h!67504 (unfocusZipperList!402 zl!343)))))

(declare-fun b!5308887 () Bool)

(declare-fun isEmptyLang!874 (Regex!14960) Bool)

(assert (=> b!5308887 (= e!3299092 (isEmptyLang!874 lt!2169376))))

(assert (= (and d!1706054 res!2252190) b!5308881))

(assert (= (and d!1706054 c!921968) b!5308886))

(assert (= (and d!1706054 (not c!921968)) b!5308879))

(assert (= (and b!5308879 c!921965) b!5308880))

(assert (= (and b!5308879 (not c!921965)) b!5308878))

(assert (= (and d!1706054 res!2252191) b!5308882))

(assert (= (and b!5308882 c!921967) b!5308887))

(assert (= (and b!5308882 (not c!921967)) b!5308883))

(assert (= (and b!5308883 c!921966) b!5308885))

(assert (= (and b!5308883 (not c!921966)) b!5308884))

(declare-fun m!6346124 () Bool)

(assert (=> b!5308884 m!6346124))

(assert (=> b!5308882 m!6345876))

(declare-fun m!6346126 () Bool)

(assert (=> b!5308882 m!6346126))

(declare-fun m!6346128 () Bool)

(assert (=> d!1706054 m!6346128))

(assert (=> d!1706054 m!6345876))

(declare-fun m!6346130 () Bool)

(assert (=> d!1706054 m!6346130))

(assert (=> b!5308885 m!6345876))

(declare-fun m!6346132 () Bool)

(assert (=> b!5308885 m!6346132))

(declare-fun m!6346134 () Bool)

(assert (=> b!5308887 m!6346134))

(assert (=> b!5308883 m!6345876))

(declare-fun m!6346136 () Bool)

(assert (=> b!5308883 m!6346136))

(assert (=> b!5308883 m!6346136))

(declare-fun m!6346138 () Bool)

(assert (=> b!5308883 m!6346138))

(declare-fun m!6346140 () Bool)

(assert (=> b!5308880 m!6346140))

(declare-fun m!6346142 () Bool)

(assert (=> b!5308881 m!6346142))

(assert (=> b!5308575 d!1706054))

(declare-fun bs!1230916 () Bool)

(declare-fun d!1706056 () Bool)

(assert (= bs!1230916 (and d!1706056 b!5308601)))

(declare-fun lambda!270307 () Int)

(assert (=> bs!1230916 (= lambda!270307 lambda!270261)))

(declare-fun bs!1230917 () Bool)

(assert (= bs!1230917 (and d!1706056 d!1706050)))

(assert (=> bs!1230917 (= lambda!270307 lambda!270301)))

(declare-fun bs!1230918 () Bool)

(assert (= bs!1230918 (and d!1706056 d!1706054)))

(assert (=> bs!1230918 (= lambda!270307 lambda!270304)))

(declare-fun lt!2169379 () List!61180)

(assert (=> d!1706056 (forall!14376 lt!2169379 lambda!270307)))

(declare-fun e!3299096 () List!61180)

(assert (=> d!1706056 (= lt!2169379 e!3299096)))

(declare-fun c!921971 () Bool)

(assert (=> d!1706056 (= c!921971 (is-Cons!61057 zl!343))))

(assert (=> d!1706056 (= (unfocusZipperList!402 zl!343) lt!2169379)))

(declare-fun b!5308892 () Bool)

(assert (=> b!5308892 (= e!3299096 (Cons!61056 (generalisedConcat!629 (exprs!4844 (h!67505 zl!343))) (unfocusZipperList!402 (t!374386 zl!343))))))

(declare-fun b!5308893 () Bool)

(assert (=> b!5308893 (= e!3299096 Nil!61056)))

(assert (= (and d!1706056 c!921971) b!5308892))

(assert (= (and d!1706056 (not c!921971)) b!5308893))

(declare-fun m!6346144 () Bool)

(assert (=> d!1706056 m!6346144))

(assert (=> b!5308892 m!6345718))

(declare-fun m!6346146 () Bool)

(assert (=> b!5308892 m!6346146))

(assert (=> b!5308575 d!1706056))

(declare-fun d!1706058 () Bool)

(declare-fun choose!39698 (Int) Bool)

(assert (=> d!1706058 (= (Exists!2141 lambda!270258) (choose!39698 lambda!270258))))

(declare-fun bs!1230919 () Bool)

(assert (= bs!1230919 d!1706058))

(declare-fun m!6346148 () Bool)

(assert (=> bs!1230919 m!6346148))

(assert (=> b!5308594 d!1706058))

(declare-fun bs!1230920 () Bool)

(declare-fun d!1706060 () Bool)

(assert (= bs!1230920 (and d!1706060 b!5308601)))

(declare-fun lambda!270308 () Int)

(assert (=> bs!1230920 (= lambda!270308 lambda!270261)))

(declare-fun bs!1230921 () Bool)

(assert (= bs!1230921 (and d!1706060 d!1706050)))

(assert (=> bs!1230921 (= lambda!270308 lambda!270301)))

(declare-fun bs!1230922 () Bool)

(assert (= bs!1230922 (and d!1706060 d!1706054)))

(assert (=> bs!1230922 (= lambda!270308 lambda!270304)))

(declare-fun bs!1230923 () Bool)

(assert (= bs!1230923 (and d!1706060 d!1706056)))

(assert (=> bs!1230923 (= lambda!270308 lambda!270307)))

(declare-fun b!5308894 () Bool)

(declare-fun e!3299098 () Bool)

(assert (=> b!5308894 (= e!3299098 (isEmpty!33017 (t!374385 lt!2169190)))))

(declare-fun e!3299099 () Bool)

(assert (=> d!1706060 e!3299099))

(declare-fun res!2252193 () Bool)

(assert (=> d!1706060 (=> (not res!2252193) (not e!3299099))))

(declare-fun lt!2169380 () Regex!14960)

(assert (=> d!1706060 (= res!2252193 (validRegex!6696 lt!2169380))))

(declare-fun e!3299100 () Regex!14960)

(assert (=> d!1706060 (= lt!2169380 e!3299100)))

(declare-fun c!921974 () Bool)

(assert (=> d!1706060 (= c!921974 e!3299098)))

(declare-fun res!2252192 () Bool)

(assert (=> d!1706060 (=> (not res!2252192) (not e!3299098))))

(assert (=> d!1706060 (= res!2252192 (is-Cons!61056 lt!2169190))))

(assert (=> d!1706060 (forall!14376 lt!2169190 lambda!270308)))

(assert (=> d!1706060 (= (generalisedConcat!629 lt!2169190) lt!2169380)))

(declare-fun b!5308895 () Bool)

(declare-fun e!3299097 () Bool)

(assert (=> b!5308895 (= e!3299097 (= lt!2169380 (head!11381 lt!2169190)))))

(declare-fun b!5308896 () Bool)

(declare-fun e!3299102 () Bool)

(assert (=> b!5308896 (= e!3299102 e!3299097)))

(declare-fun c!921973 () Bool)

(assert (=> b!5308896 (= c!921973 (isEmpty!33017 (tail!10478 lt!2169190)))))

(declare-fun b!5308897 () Bool)

(assert (=> b!5308897 (= e!3299097 (isConcat!389 lt!2169380))))

(declare-fun b!5308898 () Bool)

(assert (=> b!5308898 (= e!3299102 (isEmptyExpr!866 lt!2169380))))

(declare-fun b!5308899 () Bool)

(declare-fun e!3299101 () Regex!14960)

(assert (=> b!5308899 (= e!3299101 EmptyExpr!14960)))

(declare-fun b!5308900 () Bool)

(assert (=> b!5308900 (= e!3299100 (h!67504 lt!2169190))))

(declare-fun b!5308901 () Bool)

(assert (=> b!5308901 (= e!3299099 e!3299102)))

(declare-fun c!921972 () Bool)

(assert (=> b!5308901 (= c!921972 (isEmpty!33017 lt!2169190))))

(declare-fun b!5308902 () Bool)

(assert (=> b!5308902 (= e!3299100 e!3299101)))

(declare-fun c!921975 () Bool)

(assert (=> b!5308902 (= c!921975 (is-Cons!61056 lt!2169190))))

(declare-fun b!5308903 () Bool)

(assert (=> b!5308903 (= e!3299101 (Concat!23805 (h!67504 lt!2169190) (generalisedConcat!629 (t!374385 lt!2169190))))))

(assert (= (and d!1706060 res!2252192) b!5308894))

(assert (= (and d!1706060 c!921974) b!5308900))

(assert (= (and d!1706060 (not c!921974)) b!5308902))

(assert (= (and b!5308902 c!921975) b!5308903))

(assert (= (and b!5308902 (not c!921975)) b!5308899))

(assert (= (and d!1706060 res!2252193) b!5308901))

(assert (= (and b!5308901 c!921972) b!5308898))

(assert (= (and b!5308901 (not c!921972)) b!5308896))

(assert (= (and b!5308896 c!921973) b!5308895))

(assert (= (and b!5308896 (not c!921973)) b!5308897))

(declare-fun m!6346150 () Bool)

(assert (=> b!5308895 m!6346150))

(declare-fun m!6346152 () Bool)

(assert (=> b!5308894 m!6346152))

(declare-fun m!6346154 () Bool)

(assert (=> b!5308903 m!6346154))

(declare-fun m!6346156 () Bool)

(assert (=> b!5308898 m!6346156))

(declare-fun m!6346158 () Bool)

(assert (=> b!5308901 m!6346158))

(declare-fun m!6346160 () Bool)

(assert (=> b!5308896 m!6346160))

(assert (=> b!5308896 m!6346160))

(declare-fun m!6346162 () Bool)

(assert (=> b!5308896 m!6346162))

(declare-fun m!6346164 () Bool)

(assert (=> b!5308897 m!6346164))

(declare-fun m!6346166 () Bool)

(assert (=> d!1706060 m!6346166))

(declare-fun m!6346168 () Bool)

(assert (=> d!1706060 m!6346168))

(assert (=> b!5308594 d!1706060))

(declare-fun bs!1230924 () Bool)

(declare-fun b!5308942 () Bool)

(assert (= bs!1230924 (and b!5308942 b!5308594)))

(declare-fun lambda!270313 () Int)

(assert (=> bs!1230924 (not (= lambda!270313 lambda!270260))))

(assert (=> bs!1230924 (not (= lambda!270313 lambda!270259))))

(declare-fun bs!1230925 () Bool)

(assert (= bs!1230925 (and b!5308942 b!5308581)))

(assert (=> bs!1230925 (not (= lambda!270313 lambda!270254))))

(assert (=> bs!1230925 (not (= lambda!270313 lambda!270255))))

(assert (=> bs!1230924 (not (= lambda!270313 lambda!270257))))

(assert (=> bs!1230924 (not (= lambda!270313 lambda!270258))))

(assert (=> b!5308942 true))

(assert (=> b!5308942 true))

(declare-fun bs!1230926 () Bool)

(declare-fun b!5308936 () Bool)

(assert (= bs!1230926 (and b!5308936 b!5308594)))

(declare-fun lambda!270314 () Int)

(assert (=> bs!1230926 (= (and (= (regOne!30432 lt!2169201) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 lt!2169201) lt!2169173)) (= lambda!270314 lambda!270260))))

(assert (=> bs!1230926 (not (= lambda!270314 lambda!270259))))

(declare-fun bs!1230927 () Bool)

(assert (= bs!1230927 (and b!5308936 b!5308581)))

(assert (=> bs!1230927 (not (= lambda!270314 lambda!270254))))

(assert (=> bs!1230927 (= (and (= (regOne!30432 lt!2169201) (regOne!30432 r!7292)) (= (regTwo!30432 lt!2169201) (regTwo!30432 r!7292))) (= lambda!270314 lambda!270255))))

(assert (=> bs!1230926 (= (and (= (regOne!30432 lt!2169201) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 lt!2169201) lt!2169205)) (= lambda!270314 lambda!270258))))

(assert (=> bs!1230926 (not (= lambda!270314 lambda!270257))))

(declare-fun bs!1230928 () Bool)

(assert (= bs!1230928 (and b!5308936 b!5308942)))

(assert (=> bs!1230928 (not (= lambda!270314 lambda!270313))))

(assert (=> b!5308936 true))

(assert (=> b!5308936 true))

(declare-fun e!3299127 () Bool)

(declare-fun call!378475 () Bool)

(assert (=> b!5308936 (= e!3299127 call!378475)))

(declare-fun b!5308938 () Bool)

(declare-fun c!921987 () Bool)

(assert (=> b!5308938 (= c!921987 (is-Union!14960 lt!2169201))))

(declare-fun e!3299126 () Bool)

(declare-fun e!3299123 () Bool)

(assert (=> b!5308938 (= e!3299126 e!3299123)))

(declare-fun b!5308939 () Bool)

(declare-fun e!3299124 () Bool)

(assert (=> b!5308939 (= e!3299124 (matchRSpec!2063 (regTwo!30433 lt!2169201) s!2326))))

(declare-fun b!5308940 () Bool)

(assert (=> b!5308940 (= e!3299126 (= s!2326 (Cons!61055 (c!921918 lt!2169201) Nil!61055)))))

(declare-fun b!5308941 () Bool)

(declare-fun c!921984 () Bool)

(assert (=> b!5308941 (= c!921984 (is-ElementMatch!14960 lt!2169201))))

(declare-fun e!3299121 () Bool)

(assert (=> b!5308941 (= e!3299121 e!3299126)))

(declare-fun e!3299125 () Bool)

(assert (=> b!5308942 (= e!3299125 call!378475)))

(declare-fun b!5308943 () Bool)

(assert (=> b!5308943 (= e!3299123 e!3299127)))

(declare-fun c!921985 () Bool)

(assert (=> b!5308943 (= c!921985 (is-Star!14960 lt!2169201))))

(declare-fun b!5308937 () Bool)

(declare-fun e!3299122 () Bool)

(assert (=> b!5308937 (= e!3299122 e!3299121)))

(declare-fun res!2252211 () Bool)

(assert (=> b!5308937 (= res!2252211 (not (is-EmptyLang!14960 lt!2169201)))))

(assert (=> b!5308937 (=> (not res!2252211) (not e!3299121))))

(declare-fun d!1706062 () Bool)

(declare-fun c!921986 () Bool)

(assert (=> d!1706062 (= c!921986 (is-EmptyExpr!14960 lt!2169201))))

(assert (=> d!1706062 (= (matchRSpec!2063 lt!2169201 s!2326) e!3299122)))

(declare-fun bm!378469 () Bool)

(declare-fun call!378474 () Bool)

(assert (=> bm!378469 (= call!378474 (isEmpty!33021 s!2326))))

(declare-fun b!5308944 () Bool)

(assert (=> b!5308944 (= e!3299122 call!378474)))

(declare-fun b!5308945 () Bool)

(declare-fun res!2252212 () Bool)

(assert (=> b!5308945 (=> res!2252212 e!3299125)))

(assert (=> b!5308945 (= res!2252212 call!378474)))

(assert (=> b!5308945 (= e!3299127 e!3299125)))

(declare-fun bm!378470 () Bool)

(assert (=> bm!378470 (= call!378475 (Exists!2141 (ite c!921985 lambda!270313 lambda!270314)))))

(declare-fun b!5308946 () Bool)

(assert (=> b!5308946 (= e!3299123 e!3299124)))

(declare-fun res!2252210 () Bool)

(assert (=> b!5308946 (= res!2252210 (matchRSpec!2063 (regOne!30433 lt!2169201) s!2326))))

(assert (=> b!5308946 (=> res!2252210 e!3299124)))

(assert (= (and d!1706062 c!921986) b!5308944))

(assert (= (and d!1706062 (not c!921986)) b!5308937))

(assert (= (and b!5308937 res!2252211) b!5308941))

(assert (= (and b!5308941 c!921984) b!5308940))

(assert (= (and b!5308941 (not c!921984)) b!5308938))

(assert (= (and b!5308938 c!921987) b!5308946))

(assert (= (and b!5308938 (not c!921987)) b!5308943))

(assert (= (and b!5308946 (not res!2252210)) b!5308939))

(assert (= (and b!5308943 c!921985) b!5308945))

(assert (= (and b!5308943 (not c!921985)) b!5308936))

(assert (= (and b!5308945 (not res!2252212)) b!5308942))

(assert (= (or b!5308942 b!5308936) bm!378470))

(assert (= (or b!5308944 b!5308945) bm!378469))

(declare-fun m!6346170 () Bool)

(assert (=> b!5308939 m!6346170))

(assert (=> bm!378469 m!6346110))

(declare-fun m!6346172 () Bool)

(assert (=> bm!378470 m!6346172))

(declare-fun m!6346174 () Bool)

(assert (=> b!5308946 m!6346174))

(assert (=> b!5308594 d!1706062))

(declare-fun d!1706064 () Bool)

(assert (=> d!1706064 (= (Exists!2141 lambda!270257) (choose!39698 lambda!270257))))

(declare-fun bs!1230929 () Bool)

(assert (= bs!1230929 d!1706064))

(declare-fun m!6346176 () Bool)

(assert (=> bs!1230929 m!6346176))

(assert (=> b!5308594 d!1706064))

(declare-fun d!1706066 () Bool)

(declare-fun c!921988 () Bool)

(assert (=> d!1706066 (= c!921988 (isEmpty!33021 s!2326))))

(declare-fun e!3299128 () Bool)

(assert (=> d!1706066 (= (matchZipper!1204 lt!2169199 s!2326) e!3299128)))

(declare-fun b!5308947 () Bool)

(assert (=> b!5308947 (= e!3299128 (nullableZipper!1331 lt!2169199))))

(declare-fun b!5308948 () Bool)

(assert (=> b!5308948 (= e!3299128 (matchZipper!1204 (derivationStepZipper!1203 lt!2169199 (head!11380 s!2326)) (tail!10477 s!2326)))))

(assert (= (and d!1706066 c!921988) b!5308947))

(assert (= (and d!1706066 (not c!921988)) b!5308948))

(assert (=> d!1706066 m!6346110))

(declare-fun m!6346178 () Bool)

(assert (=> b!5308947 m!6346178))

(assert (=> b!5308948 m!6346108))

(assert (=> b!5308948 m!6346108))

(declare-fun m!6346180 () Bool)

(assert (=> b!5308948 m!6346180))

(assert (=> b!5308948 m!6346112))

(assert (=> b!5308948 m!6346180))

(assert (=> b!5308948 m!6346112))

(declare-fun m!6346182 () Bool)

(assert (=> b!5308948 m!6346182))

(assert (=> b!5308594 d!1706066))

(declare-fun d!1706068 () Bool)

(assert (=> d!1706068 (= (matchR!7145 lt!2169205 s!2326) (matchRSpec!2063 lt!2169205 s!2326))))

(declare-fun lt!2169383 () Unit!153358)

(declare-fun choose!39699 (Regex!14960 List!61179) Unit!153358)

(assert (=> d!1706068 (= lt!2169383 (choose!39699 lt!2169205 s!2326))))

(assert (=> d!1706068 (validRegex!6696 lt!2169205)))

(assert (=> d!1706068 (= (mainMatchTheorem!2063 lt!2169205 s!2326) lt!2169383)))

(declare-fun bs!1230930 () Bool)

(assert (= bs!1230930 d!1706068))

(assert (=> bs!1230930 m!6345850))

(assert (=> bs!1230930 m!6345870))

(declare-fun m!6346184 () Bool)

(assert (=> bs!1230930 m!6346184))

(declare-fun m!6346186 () Bool)

(assert (=> bs!1230930 m!6346186))

(assert (=> b!5308594 d!1706068))

(declare-fun d!1706070 () Bool)

(assert (=> d!1706070 (= (Exists!2141 lambda!270260) (choose!39698 lambda!270260))))

(declare-fun bs!1230931 () Bool)

(assert (= bs!1230931 d!1706070))

(declare-fun m!6346188 () Bool)

(assert (=> bs!1230931 m!6346188))

(assert (=> b!5308594 d!1706070))

(declare-fun bs!1230932 () Bool)

(declare-fun d!1706072 () Bool)

(assert (= bs!1230932 (and d!1706072 b!5308594)))

(declare-fun lambda!270317 () Int)

(assert (=> bs!1230932 (not (= lambda!270317 lambda!270260))))

(declare-fun bs!1230933 () Bool)

(assert (= bs!1230933 (and d!1706072 b!5308581)))

(assert (=> bs!1230933 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169173 (regTwo!30432 r!7292))) (= lambda!270317 lambda!270254))))

(assert (=> bs!1230933 (not (= lambda!270317 lambda!270255))))

(assert (=> bs!1230932 (not (= lambda!270317 lambda!270258))))

(declare-fun bs!1230934 () Bool)

(assert (= bs!1230934 (and d!1706072 b!5308936)))

(assert (=> bs!1230934 (not (= lambda!270317 lambda!270314))))

(assert (=> bs!1230932 (= lambda!270317 lambda!270259)))

(assert (=> bs!1230932 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270317 lambda!270257))))

(declare-fun bs!1230935 () Bool)

(assert (= bs!1230935 (and d!1706072 b!5308942)))

(assert (=> bs!1230935 (not (= lambda!270317 lambda!270313))))

(assert (=> d!1706072 true))

(assert (=> d!1706072 true))

(assert (=> d!1706072 true))

(assert (=> d!1706072 (= (isDefined!11774 (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 Nil!61055 s!2326 s!2326)) (Exists!2141 lambda!270317))))

(declare-fun lt!2169386 () Unit!153358)

(declare-fun choose!39700 (Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> d!1706072 (= lt!2169386 (choose!39700 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(assert (=> d!1706072 (validRegex!6696 (regTwo!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706072 (= (lemmaFindConcatSeparationEquivalentToExists!1249 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326) lt!2169386)))

(declare-fun bs!1230936 () Bool)

(assert (= bs!1230936 d!1706072))

(declare-fun m!6346190 () Bool)

(assert (=> bs!1230936 m!6346190))

(assert (=> bs!1230936 m!6345852))

(declare-fun m!6346192 () Bool)

(assert (=> bs!1230936 m!6346192))

(declare-fun m!6346194 () Bool)

(assert (=> bs!1230936 m!6346194))

(assert (=> bs!1230936 m!6345852))

(assert (=> bs!1230936 m!6345854))

(assert (=> b!5308594 d!1706072))

(declare-fun d!1706074 () Bool)

(declare-fun isEmpty!33022 (Option!15071) Bool)

(assert (=> d!1706074 (= (isDefined!11774 (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 Nil!61055 s!2326 s!2326)) (not (isEmpty!33022 (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 Nil!61055 s!2326 s!2326))))))

(declare-fun bs!1230937 () Bool)

(assert (= bs!1230937 d!1706074))

(assert (=> bs!1230937 m!6345852))

(declare-fun m!6346196 () Bool)

(assert (=> bs!1230937 m!6346196))

(assert (=> b!5308594 d!1706074))

(declare-fun b!5308953 () Bool)

(declare-fun e!3299133 () Bool)

(declare-fun lt!2169387 () Bool)

(assert (=> b!5308953 (= e!3299133 (not lt!2169387))))

(declare-fun b!5308954 () Bool)

(declare-fun e!3299135 () Bool)

(assert (=> b!5308954 (= e!3299135 (not (= (head!11380 s!2326) (c!921918 lt!2169201))))))

(declare-fun b!5308955 () Bool)

(declare-fun res!2252222 () Bool)

(assert (=> b!5308955 (=> res!2252222 e!3299135)))

(assert (=> b!5308955 (= res!2252222 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5308956 () Bool)

(declare-fun e!3299137 () Bool)

(assert (=> b!5308956 (= e!3299137 (matchR!7145 (derivativeStep!4152 lt!2169201 (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706076 () Bool)

(declare-fun e!3299132 () Bool)

(assert (=> d!1706076 e!3299132))

(declare-fun c!921989 () Bool)

(assert (=> d!1706076 (= c!921989 (is-EmptyExpr!14960 lt!2169201))))

(assert (=> d!1706076 (= lt!2169387 e!3299137)))

(declare-fun c!921991 () Bool)

(assert (=> d!1706076 (= c!921991 (isEmpty!33021 s!2326))))

(assert (=> d!1706076 (validRegex!6696 lt!2169201)))

(assert (=> d!1706076 (= (matchR!7145 lt!2169201 s!2326) lt!2169387)))

(declare-fun b!5308957 () Bool)

(declare-fun e!3299134 () Bool)

(assert (=> b!5308957 (= e!3299134 (= (head!11380 s!2326) (c!921918 lt!2169201)))))

(declare-fun bm!378471 () Bool)

(declare-fun call!378476 () Bool)

(assert (=> bm!378471 (= call!378476 (isEmpty!33021 s!2326))))

(declare-fun b!5308958 () Bool)

(declare-fun e!3299131 () Bool)

(assert (=> b!5308958 (= e!3299131 e!3299135)))

(declare-fun res!2252220 () Bool)

(assert (=> b!5308958 (=> res!2252220 e!3299135)))

(assert (=> b!5308958 (= res!2252220 call!378476)))

(declare-fun b!5308959 () Bool)

(assert (=> b!5308959 (= e!3299132 e!3299133)))

(declare-fun c!921990 () Bool)

(assert (=> b!5308959 (= c!921990 (is-EmptyLang!14960 lt!2169201))))

(declare-fun b!5308960 () Bool)

(assert (=> b!5308960 (= e!3299132 (= lt!2169387 call!378476))))

(declare-fun b!5308961 () Bool)

(declare-fun e!3299136 () Bool)

(assert (=> b!5308961 (= e!3299136 e!3299131)))

(declare-fun res!2252221 () Bool)

(assert (=> b!5308961 (=> (not res!2252221) (not e!3299131))))

(assert (=> b!5308961 (= res!2252221 (not lt!2169387))))

(declare-fun b!5308962 () Bool)

(assert (=> b!5308962 (= e!3299137 (nullable!5129 lt!2169201))))

(declare-fun b!5308963 () Bool)

(declare-fun res!2252219 () Bool)

(assert (=> b!5308963 (=> (not res!2252219) (not e!3299134))))

(assert (=> b!5308963 (= res!2252219 (not call!378476))))

(declare-fun b!5308964 () Bool)

(declare-fun res!2252218 () Bool)

(assert (=> b!5308964 (=> res!2252218 e!3299136)))

(assert (=> b!5308964 (= res!2252218 e!3299134)))

(declare-fun res!2252224 () Bool)

(assert (=> b!5308964 (=> (not res!2252224) (not e!3299134))))

(assert (=> b!5308964 (= res!2252224 lt!2169387)))

(declare-fun b!5308965 () Bool)

(declare-fun res!2252223 () Bool)

(assert (=> b!5308965 (=> res!2252223 e!3299136)))

(assert (=> b!5308965 (= res!2252223 (not (is-ElementMatch!14960 lt!2169201)))))

(assert (=> b!5308965 (= e!3299133 e!3299136)))

(declare-fun b!5308966 () Bool)

(declare-fun res!2252217 () Bool)

(assert (=> b!5308966 (=> (not res!2252217) (not e!3299134))))

(assert (=> b!5308966 (= res!2252217 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706076 c!921991) b!5308962))

(assert (= (and d!1706076 (not c!921991)) b!5308956))

(assert (= (and d!1706076 c!921989) b!5308960))

(assert (= (and d!1706076 (not c!921989)) b!5308959))

(assert (= (and b!5308959 c!921990) b!5308953))

(assert (= (and b!5308959 (not c!921990)) b!5308965))

(assert (= (and b!5308965 (not res!2252223)) b!5308964))

(assert (= (and b!5308964 res!2252224) b!5308963))

(assert (= (and b!5308963 res!2252219) b!5308966))

(assert (= (and b!5308966 res!2252217) b!5308957))

(assert (= (and b!5308964 (not res!2252218)) b!5308961))

(assert (= (and b!5308961 res!2252221) b!5308958))

(assert (= (and b!5308958 (not res!2252220)) b!5308955))

(assert (= (and b!5308955 (not res!2252222)) b!5308954))

(assert (= (or b!5308960 b!5308963 b!5308958) bm!378471))

(assert (=> b!5308957 m!6346108))

(assert (=> bm!378471 m!6346110))

(assert (=> b!5308955 m!6346112))

(assert (=> b!5308955 m!6346112))

(assert (=> b!5308955 m!6346114))

(assert (=> b!5308954 m!6346108))

(assert (=> d!1706076 m!6346110))

(declare-fun m!6346198 () Bool)

(assert (=> d!1706076 m!6346198))

(declare-fun m!6346200 () Bool)

(assert (=> b!5308962 m!6346200))

(assert (=> b!5308956 m!6346108))

(assert (=> b!5308956 m!6346108))

(declare-fun m!6346202 () Bool)

(assert (=> b!5308956 m!6346202))

(assert (=> b!5308956 m!6346112))

(assert (=> b!5308956 m!6346202))

(assert (=> b!5308956 m!6346112))

(declare-fun m!6346204 () Bool)

(assert (=> b!5308956 m!6346204))

(assert (=> b!5308966 m!6346112))

(assert (=> b!5308966 m!6346112))

(assert (=> b!5308966 m!6346114))

(assert (=> b!5308594 d!1706076))

(declare-fun b!5308967 () Bool)

(declare-fun e!3299140 () Bool)

(declare-fun lt!2169388 () Bool)

(assert (=> b!5308967 (= e!3299140 (not lt!2169388))))

(declare-fun b!5308968 () Bool)

(declare-fun e!3299142 () Bool)

(assert (=> b!5308968 (= e!3299142 (not (= (head!11380 s!2326) (c!921918 lt!2169205))))))

(declare-fun b!5308969 () Bool)

(declare-fun res!2252230 () Bool)

(assert (=> b!5308969 (=> res!2252230 e!3299142)))

(assert (=> b!5308969 (= res!2252230 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5308970 () Bool)

(declare-fun e!3299144 () Bool)

(assert (=> b!5308970 (= e!3299144 (matchR!7145 (derivativeStep!4152 lt!2169205 (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706078 () Bool)

(declare-fun e!3299139 () Bool)

(assert (=> d!1706078 e!3299139))

(declare-fun c!921992 () Bool)

(assert (=> d!1706078 (= c!921992 (is-EmptyExpr!14960 lt!2169205))))

(assert (=> d!1706078 (= lt!2169388 e!3299144)))

(declare-fun c!921994 () Bool)

(assert (=> d!1706078 (= c!921994 (isEmpty!33021 s!2326))))

(assert (=> d!1706078 (validRegex!6696 lt!2169205)))

(assert (=> d!1706078 (= (matchR!7145 lt!2169205 s!2326) lt!2169388)))

(declare-fun b!5308971 () Bool)

(declare-fun e!3299141 () Bool)

(assert (=> b!5308971 (= e!3299141 (= (head!11380 s!2326) (c!921918 lt!2169205)))))

(declare-fun bm!378472 () Bool)

(declare-fun call!378477 () Bool)

(assert (=> bm!378472 (= call!378477 (isEmpty!33021 s!2326))))

(declare-fun b!5308972 () Bool)

(declare-fun e!3299138 () Bool)

(assert (=> b!5308972 (= e!3299138 e!3299142)))

(declare-fun res!2252228 () Bool)

(assert (=> b!5308972 (=> res!2252228 e!3299142)))

(assert (=> b!5308972 (= res!2252228 call!378477)))

(declare-fun b!5308973 () Bool)

(assert (=> b!5308973 (= e!3299139 e!3299140)))

(declare-fun c!921993 () Bool)

(assert (=> b!5308973 (= c!921993 (is-EmptyLang!14960 lt!2169205))))

(declare-fun b!5308974 () Bool)

(assert (=> b!5308974 (= e!3299139 (= lt!2169388 call!378477))))

(declare-fun b!5308975 () Bool)

(declare-fun e!3299143 () Bool)

(assert (=> b!5308975 (= e!3299143 e!3299138)))

(declare-fun res!2252229 () Bool)

(assert (=> b!5308975 (=> (not res!2252229) (not e!3299138))))

(assert (=> b!5308975 (= res!2252229 (not lt!2169388))))

(declare-fun b!5308976 () Bool)

(assert (=> b!5308976 (= e!3299144 (nullable!5129 lt!2169205))))

(declare-fun b!5308977 () Bool)

(declare-fun res!2252227 () Bool)

(assert (=> b!5308977 (=> (not res!2252227) (not e!3299141))))

(assert (=> b!5308977 (= res!2252227 (not call!378477))))

(declare-fun b!5308978 () Bool)

(declare-fun res!2252226 () Bool)

(assert (=> b!5308978 (=> res!2252226 e!3299143)))

(assert (=> b!5308978 (= res!2252226 e!3299141)))

(declare-fun res!2252232 () Bool)

(assert (=> b!5308978 (=> (not res!2252232) (not e!3299141))))

(assert (=> b!5308978 (= res!2252232 lt!2169388)))

(declare-fun b!5308979 () Bool)

(declare-fun res!2252231 () Bool)

(assert (=> b!5308979 (=> res!2252231 e!3299143)))

(assert (=> b!5308979 (= res!2252231 (not (is-ElementMatch!14960 lt!2169205)))))

(assert (=> b!5308979 (= e!3299140 e!3299143)))

(declare-fun b!5308980 () Bool)

(declare-fun res!2252225 () Bool)

(assert (=> b!5308980 (=> (not res!2252225) (not e!3299141))))

(assert (=> b!5308980 (= res!2252225 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706078 c!921994) b!5308976))

(assert (= (and d!1706078 (not c!921994)) b!5308970))

(assert (= (and d!1706078 c!921992) b!5308974))

(assert (= (and d!1706078 (not c!921992)) b!5308973))

(assert (= (and b!5308973 c!921993) b!5308967))

(assert (= (and b!5308973 (not c!921993)) b!5308979))

(assert (= (and b!5308979 (not res!2252231)) b!5308978))

(assert (= (and b!5308978 res!2252232) b!5308977))

(assert (= (and b!5308977 res!2252227) b!5308980))

(assert (= (and b!5308980 res!2252225) b!5308971))

(assert (= (and b!5308978 (not res!2252226)) b!5308975))

(assert (= (and b!5308975 res!2252229) b!5308972))

(assert (= (and b!5308972 (not res!2252228)) b!5308969))

(assert (= (and b!5308969 (not res!2252230)) b!5308968))

(assert (= (or b!5308974 b!5308977 b!5308972) bm!378472))

(assert (=> b!5308971 m!6346108))

(assert (=> bm!378472 m!6346110))

(assert (=> b!5308969 m!6346112))

(assert (=> b!5308969 m!6346112))

(assert (=> b!5308969 m!6346114))

(assert (=> b!5308968 m!6346108))

(assert (=> d!1706078 m!6346110))

(assert (=> d!1706078 m!6346186))

(declare-fun m!6346206 () Bool)

(assert (=> b!5308976 m!6346206))

(assert (=> b!5308970 m!6346108))

(assert (=> b!5308970 m!6346108))

(declare-fun m!6346208 () Bool)

(assert (=> b!5308970 m!6346208))

(assert (=> b!5308970 m!6346112))

(assert (=> b!5308970 m!6346208))

(assert (=> b!5308970 m!6346112))

(declare-fun m!6346210 () Bool)

(assert (=> b!5308970 m!6346210))

(assert (=> b!5308980 m!6346112))

(assert (=> b!5308980 m!6346112))

(assert (=> b!5308980 m!6346114))

(assert (=> b!5308594 d!1706078))

(declare-fun bs!1230938 () Bool)

(declare-fun d!1706080 () Bool)

(assert (= bs!1230938 (and d!1706080 b!5308601)))

(declare-fun lambda!270318 () Int)

(assert (=> bs!1230938 (= lambda!270318 lambda!270261)))

(declare-fun bs!1230939 () Bool)

(assert (= bs!1230939 (and d!1706080 d!1706054)))

(assert (=> bs!1230939 (= lambda!270318 lambda!270304)))

(declare-fun bs!1230940 () Bool)

(assert (= bs!1230940 (and d!1706080 d!1706050)))

(assert (=> bs!1230940 (= lambda!270318 lambda!270301)))

(declare-fun bs!1230941 () Bool)

(assert (= bs!1230941 (and d!1706080 d!1706056)))

(assert (=> bs!1230941 (= lambda!270318 lambda!270307)))

(declare-fun bs!1230942 () Bool)

(assert (= bs!1230942 (and d!1706080 d!1706060)))

(assert (=> bs!1230942 (= lambda!270318 lambda!270308)))

(declare-fun b!5308981 () Bool)

(declare-fun e!3299146 () Bool)

(assert (=> b!5308981 (= e!3299146 (isEmpty!33017 (t!374385 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun e!3299147 () Bool)

(assert (=> d!1706080 e!3299147))

(declare-fun res!2252234 () Bool)

(assert (=> d!1706080 (=> (not res!2252234) (not e!3299147))))

(declare-fun lt!2169389 () Regex!14960)

(assert (=> d!1706080 (= res!2252234 (validRegex!6696 lt!2169389))))

(declare-fun e!3299148 () Regex!14960)

(assert (=> d!1706080 (= lt!2169389 e!3299148)))

(declare-fun c!921997 () Bool)

(assert (=> d!1706080 (= c!921997 e!3299146)))

(declare-fun res!2252233 () Bool)

(assert (=> d!1706080 (=> (not res!2252233) (not e!3299146))))

(assert (=> d!1706080 (= res!2252233 (is-Cons!61056 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> d!1706080 (forall!14376 (t!374385 (exprs!4844 (h!67505 zl!343))) lambda!270318)))

(assert (=> d!1706080 (= (generalisedConcat!629 (t!374385 (exprs!4844 (h!67505 zl!343)))) lt!2169389)))

(declare-fun b!5308982 () Bool)

(declare-fun e!3299145 () Bool)

(assert (=> b!5308982 (= e!3299145 (= lt!2169389 (head!11381 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun b!5308983 () Bool)

(declare-fun e!3299150 () Bool)

(assert (=> b!5308983 (= e!3299150 e!3299145)))

(declare-fun c!921996 () Bool)

(assert (=> b!5308983 (= c!921996 (isEmpty!33017 (tail!10478 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun b!5308984 () Bool)

(assert (=> b!5308984 (= e!3299145 (isConcat!389 lt!2169389))))

(declare-fun b!5308985 () Bool)

(assert (=> b!5308985 (= e!3299150 (isEmptyExpr!866 lt!2169389))))

(declare-fun b!5308986 () Bool)

(declare-fun e!3299149 () Regex!14960)

(assert (=> b!5308986 (= e!3299149 EmptyExpr!14960)))

(declare-fun b!5308987 () Bool)

(assert (=> b!5308987 (= e!3299148 (h!67504 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308988 () Bool)

(assert (=> b!5308988 (= e!3299147 e!3299150)))

(declare-fun c!921995 () Bool)

(assert (=> b!5308988 (= c!921995 (isEmpty!33017 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308989 () Bool)

(assert (=> b!5308989 (= e!3299148 e!3299149)))

(declare-fun c!921998 () Bool)

(assert (=> b!5308989 (= c!921998 (is-Cons!61056 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5308990 () Bool)

(assert (=> b!5308990 (= e!3299149 (Concat!23805 (h!67504 (t!374385 (exprs!4844 (h!67505 zl!343)))) (generalisedConcat!629 (t!374385 (t!374385 (exprs!4844 (h!67505 zl!343)))))))))

(assert (= (and d!1706080 res!2252233) b!5308981))

(assert (= (and d!1706080 c!921997) b!5308987))

(assert (= (and d!1706080 (not c!921997)) b!5308989))

(assert (= (and b!5308989 c!921998) b!5308990))

(assert (= (and b!5308989 (not c!921998)) b!5308986))

(assert (= (and d!1706080 res!2252234) b!5308988))

(assert (= (and b!5308988 c!921995) b!5308985))

(assert (= (and b!5308988 (not c!921995)) b!5308983))

(assert (= (and b!5308983 c!921996) b!5308982))

(assert (= (and b!5308983 (not c!921996)) b!5308984))

(declare-fun m!6346212 () Bool)

(assert (=> b!5308982 m!6346212))

(declare-fun m!6346214 () Bool)

(assert (=> b!5308981 m!6346214))

(declare-fun m!6346216 () Bool)

(assert (=> b!5308990 m!6346216))

(declare-fun m!6346218 () Bool)

(assert (=> b!5308985 m!6346218))

(assert (=> b!5308988 m!6345766))

(declare-fun m!6346220 () Bool)

(assert (=> b!5308983 m!6346220))

(assert (=> b!5308983 m!6346220))

(declare-fun m!6346222 () Bool)

(assert (=> b!5308983 m!6346222))

(declare-fun m!6346224 () Bool)

(assert (=> b!5308984 m!6346224))

(declare-fun m!6346226 () Bool)

(assert (=> d!1706080 m!6346226))

(declare-fun m!6346228 () Bool)

(assert (=> d!1706080 m!6346228))

(assert (=> b!5308594 d!1706080))

(declare-fun bs!1230943 () Bool)

(declare-fun d!1706082 () Bool)

(assert (= bs!1230943 (and d!1706082 b!5308594)))

(declare-fun lambda!270319 () Int)

(assert (=> bs!1230943 (not (= lambda!270319 lambda!270260))))

(declare-fun bs!1230944 () Bool)

(assert (= bs!1230944 (and d!1706082 d!1706072)))

(assert (=> bs!1230944 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270319 lambda!270317))))

(declare-fun bs!1230945 () Bool)

(assert (= bs!1230945 (and d!1706082 b!5308581)))

(assert (=> bs!1230945 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169205 (regTwo!30432 r!7292))) (= lambda!270319 lambda!270254))))

(assert (=> bs!1230945 (not (= lambda!270319 lambda!270255))))

(assert (=> bs!1230943 (not (= lambda!270319 lambda!270258))))

(declare-fun bs!1230946 () Bool)

(assert (= bs!1230946 (and d!1706082 b!5308936)))

(assert (=> bs!1230946 (not (= lambda!270319 lambda!270314))))

(assert (=> bs!1230943 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270319 lambda!270259))))

(assert (=> bs!1230943 (= lambda!270319 lambda!270257)))

(declare-fun bs!1230947 () Bool)

(assert (= bs!1230947 (and d!1706082 b!5308942)))

(assert (=> bs!1230947 (not (= lambda!270319 lambda!270313))))

(assert (=> d!1706082 true))

(assert (=> d!1706082 true))

(assert (=> d!1706082 true))

(assert (=> d!1706082 (= (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 Nil!61055 s!2326 s!2326)) (Exists!2141 lambda!270319))))

(declare-fun lt!2169390 () Unit!153358)

(assert (=> d!1706082 (= lt!2169390 (choose!39700 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326))))

(assert (=> d!1706082 (validRegex!6696 (regOne!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706082 (= (lemmaFindConcatSeparationEquivalentToExists!1249 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326) lt!2169390)))

(declare-fun bs!1230948 () Bool)

(assert (= bs!1230948 d!1706082))

(declare-fun m!6346230 () Bool)

(assert (=> bs!1230948 m!6346230))

(assert (=> bs!1230948 m!6345826))

(declare-fun m!6346232 () Bool)

(assert (=> bs!1230948 m!6346232))

(declare-fun m!6346234 () Bool)

(assert (=> bs!1230948 m!6346234))

(assert (=> bs!1230948 m!6345826))

(assert (=> bs!1230948 m!6345828))

(assert (=> b!5308594 d!1706082))

(declare-fun b!5309009 () Bool)

(declare-fun res!2252245 () Bool)

(declare-fun e!3299165 () Bool)

(assert (=> b!5309009 (=> (not res!2252245) (not e!3299165))))

(declare-fun lt!2169398 () Option!15071)

(declare-fun get!20997 (Option!15071) tuple2!64318)

(assert (=> b!5309009 (= res!2252245 (matchR!7145 lt!2169173 (_2!35462 (get!20997 lt!2169398))))))

(declare-fun b!5309010 () Bool)

(declare-fun e!3299161 () Bool)

(assert (=> b!5309010 (= e!3299161 (matchR!7145 lt!2169173 s!2326))))

(declare-fun b!5309011 () Bool)

(declare-fun e!3299162 () Bool)

(assert (=> b!5309011 (= e!3299162 (not (isDefined!11774 lt!2169398)))))

(declare-fun b!5309012 () Bool)

(declare-fun lt!2169397 () Unit!153358)

(declare-fun lt!2169399 () Unit!153358)

(assert (=> b!5309012 (= lt!2169397 lt!2169399)))

(declare-fun ++!13311 (List!61179 List!61179) List!61179)

(assert (=> b!5309012 (= (++!13311 (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1726 (List!61179 C!30190 List!61179 List!61179) Unit!153358)

(assert (=> b!5309012 (= lt!2169399 (lemmaMoveElementToOtherListKeepsConcatEq!1726 Nil!61055 (h!67503 s!2326) (t!374384 s!2326) s!2326))))

(declare-fun e!3299163 () Option!15071)

(assert (=> b!5309012 (= e!3299163 (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326) s!2326))))

(declare-fun b!5309013 () Bool)

(assert (=> b!5309013 (= e!3299165 (= (++!13311 (_1!35462 (get!20997 lt!2169398)) (_2!35462 (get!20997 lt!2169398))) s!2326))))

(declare-fun b!5309014 () Bool)

(declare-fun res!2252248 () Bool)

(assert (=> b!5309014 (=> (not res!2252248) (not e!3299165))))

(assert (=> b!5309014 (= res!2252248 (matchR!7145 (regTwo!30432 (regOne!30432 r!7292)) (_1!35462 (get!20997 lt!2169398))))))

(declare-fun d!1706084 () Bool)

(assert (=> d!1706084 e!3299162))

(declare-fun res!2252247 () Bool)

(assert (=> d!1706084 (=> res!2252247 e!3299162)))

(assert (=> d!1706084 (= res!2252247 e!3299165)))

(declare-fun res!2252246 () Bool)

(assert (=> d!1706084 (=> (not res!2252246) (not e!3299165))))

(assert (=> d!1706084 (= res!2252246 (isDefined!11774 lt!2169398))))

(declare-fun e!3299164 () Option!15071)

(assert (=> d!1706084 (= lt!2169398 e!3299164)))

(declare-fun c!922003 () Bool)

(assert (=> d!1706084 (= c!922003 e!3299161)))

(declare-fun res!2252249 () Bool)

(assert (=> d!1706084 (=> (not res!2252249) (not e!3299161))))

(assert (=> d!1706084 (= res!2252249 (matchR!7145 (regTwo!30432 (regOne!30432 r!7292)) Nil!61055))))

(assert (=> d!1706084 (validRegex!6696 (regTwo!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706084 (= (findConcatSeparation!1485 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 Nil!61055 s!2326 s!2326) lt!2169398)))

(declare-fun b!5309015 () Bool)

(assert (=> b!5309015 (= e!3299164 (Some!15070 (tuple2!64319 Nil!61055 s!2326)))))

(declare-fun b!5309016 () Bool)

(assert (=> b!5309016 (= e!3299164 e!3299163)))

(declare-fun c!922004 () Bool)

(assert (=> b!5309016 (= c!922004 (is-Nil!61055 s!2326))))

(declare-fun b!5309017 () Bool)

(assert (=> b!5309017 (= e!3299163 None!15070)))

(assert (= (and d!1706084 res!2252249) b!5309010))

(assert (= (and d!1706084 c!922003) b!5309015))

(assert (= (and d!1706084 (not c!922003)) b!5309016))

(assert (= (and b!5309016 c!922004) b!5309017))

(assert (= (and b!5309016 (not c!922004)) b!5309012))

(assert (= (and d!1706084 res!2252246) b!5309014))

(assert (= (and b!5309014 res!2252248) b!5309009))

(assert (= (and b!5309009 res!2252245) b!5309013))

(assert (= (and d!1706084 (not res!2252247)) b!5309011))

(declare-fun m!6346236 () Bool)

(assert (=> d!1706084 m!6346236))

(declare-fun m!6346238 () Bool)

(assert (=> d!1706084 m!6346238))

(assert (=> d!1706084 m!6346190))

(declare-fun m!6346240 () Bool)

(assert (=> b!5309013 m!6346240))

(declare-fun m!6346242 () Bool)

(assert (=> b!5309013 m!6346242))

(declare-fun m!6346244 () Bool)

(assert (=> b!5309012 m!6346244))

(assert (=> b!5309012 m!6346244))

(declare-fun m!6346246 () Bool)

(assert (=> b!5309012 m!6346246))

(declare-fun m!6346248 () Bool)

(assert (=> b!5309012 m!6346248))

(assert (=> b!5309012 m!6346244))

(declare-fun m!6346250 () Bool)

(assert (=> b!5309012 m!6346250))

(declare-fun m!6346252 () Bool)

(assert (=> b!5309010 m!6346252))

(assert (=> b!5309011 m!6346236))

(assert (=> b!5309014 m!6346240))

(declare-fun m!6346254 () Bool)

(assert (=> b!5309014 m!6346254))

(assert (=> b!5309009 m!6346240))

(declare-fun m!6346256 () Bool)

(assert (=> b!5309009 m!6346256))

(assert (=> b!5308594 d!1706084))

(declare-fun bs!1230949 () Bool)

(declare-fun b!5309024 () Bool)

(assert (= bs!1230949 (and b!5309024 b!5308594)))

(declare-fun lambda!270320 () Int)

(assert (=> bs!1230949 (not (= lambda!270320 lambda!270260))))

(declare-fun bs!1230950 () Bool)

(assert (= bs!1230950 (and b!5309024 d!1706072)))

(assert (=> bs!1230950 (not (= lambda!270320 lambda!270317))))

(declare-fun bs!1230951 () Bool)

(assert (= bs!1230951 (and b!5309024 b!5308581)))

(assert (=> bs!1230951 (not (= lambda!270320 lambda!270254))))

(declare-fun bs!1230952 () Bool)

(assert (= bs!1230952 (and b!5309024 d!1706082)))

(assert (=> bs!1230952 (not (= lambda!270320 lambda!270319))))

(assert (=> bs!1230951 (not (= lambda!270320 lambda!270255))))

(assert (=> bs!1230949 (not (= lambda!270320 lambda!270258))))

(declare-fun bs!1230953 () Bool)

(assert (= bs!1230953 (and b!5309024 b!5308936)))

(assert (=> bs!1230953 (not (= lambda!270320 lambda!270314))))

(assert (=> bs!1230949 (not (= lambda!270320 lambda!270259))))

(assert (=> bs!1230949 (not (= lambda!270320 lambda!270257))))

(declare-fun bs!1230954 () Bool)

(assert (= bs!1230954 (and b!5309024 b!5308942)))

(assert (=> bs!1230954 (= (and (= (reg!15289 lt!2169205) (reg!15289 lt!2169201)) (= lt!2169205 lt!2169201)) (= lambda!270320 lambda!270313))))

(assert (=> b!5309024 true))

(assert (=> b!5309024 true))

(declare-fun bs!1230955 () Bool)

(declare-fun b!5309018 () Bool)

(assert (= bs!1230955 (and b!5309018 b!5308594)))

(declare-fun lambda!270321 () Int)

(assert (=> bs!1230955 (= (and (= (regOne!30432 lt!2169205) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 lt!2169205) lt!2169173)) (= lambda!270321 lambda!270260))))

(declare-fun bs!1230956 () Bool)

(assert (= bs!1230956 (and b!5309018 d!1706072)))

(assert (=> bs!1230956 (not (= lambda!270321 lambda!270317))))

(declare-fun bs!1230957 () Bool)

(assert (= bs!1230957 (and b!5309018 b!5308581)))

(assert (=> bs!1230957 (not (= lambda!270321 lambda!270254))))

(declare-fun bs!1230958 () Bool)

(assert (= bs!1230958 (and b!5309018 d!1706082)))

(assert (=> bs!1230958 (not (= lambda!270321 lambda!270319))))

(assert (=> bs!1230957 (= (and (= (regOne!30432 lt!2169205) (regOne!30432 r!7292)) (= (regTwo!30432 lt!2169205) (regTwo!30432 r!7292))) (= lambda!270321 lambda!270255))))

(assert (=> bs!1230955 (= (and (= (regOne!30432 lt!2169205) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 lt!2169205) lt!2169205)) (= lambda!270321 lambda!270258))))

(declare-fun bs!1230959 () Bool)

(assert (= bs!1230959 (and b!5309018 b!5309024)))

(assert (=> bs!1230959 (not (= lambda!270321 lambda!270320))))

(declare-fun bs!1230960 () Bool)

(assert (= bs!1230960 (and b!5309018 b!5308936)))

(assert (=> bs!1230960 (= (and (= (regOne!30432 lt!2169205) (regOne!30432 lt!2169201)) (= (regTwo!30432 lt!2169205) (regTwo!30432 lt!2169201))) (= lambda!270321 lambda!270314))))

(assert (=> bs!1230955 (not (= lambda!270321 lambda!270259))))

(assert (=> bs!1230955 (not (= lambda!270321 lambda!270257))))

(declare-fun bs!1230961 () Bool)

(assert (= bs!1230961 (and b!5309018 b!5308942)))

(assert (=> bs!1230961 (not (= lambda!270321 lambda!270313))))

(assert (=> b!5309018 true))

(assert (=> b!5309018 true))

(declare-fun e!3299172 () Bool)

(declare-fun call!378479 () Bool)

(assert (=> b!5309018 (= e!3299172 call!378479)))

(declare-fun b!5309020 () Bool)

(declare-fun c!922008 () Bool)

(assert (=> b!5309020 (= c!922008 (is-Union!14960 lt!2169205))))

(declare-fun e!3299171 () Bool)

(declare-fun e!3299168 () Bool)

(assert (=> b!5309020 (= e!3299171 e!3299168)))

(declare-fun b!5309021 () Bool)

(declare-fun e!3299169 () Bool)

(assert (=> b!5309021 (= e!3299169 (matchRSpec!2063 (regTwo!30433 lt!2169205) s!2326))))

(declare-fun b!5309022 () Bool)

(assert (=> b!5309022 (= e!3299171 (= s!2326 (Cons!61055 (c!921918 lt!2169205) Nil!61055)))))

(declare-fun b!5309023 () Bool)

(declare-fun c!922005 () Bool)

(assert (=> b!5309023 (= c!922005 (is-ElementMatch!14960 lt!2169205))))

(declare-fun e!3299166 () Bool)

(assert (=> b!5309023 (= e!3299166 e!3299171)))

(declare-fun e!3299170 () Bool)

(assert (=> b!5309024 (= e!3299170 call!378479)))

(declare-fun b!5309025 () Bool)

(assert (=> b!5309025 (= e!3299168 e!3299172)))

(declare-fun c!922006 () Bool)

(assert (=> b!5309025 (= c!922006 (is-Star!14960 lt!2169205))))

(declare-fun b!5309019 () Bool)

(declare-fun e!3299167 () Bool)

(assert (=> b!5309019 (= e!3299167 e!3299166)))

(declare-fun res!2252251 () Bool)

(assert (=> b!5309019 (= res!2252251 (not (is-EmptyLang!14960 lt!2169205)))))

(assert (=> b!5309019 (=> (not res!2252251) (not e!3299166))))

(declare-fun d!1706086 () Bool)

(declare-fun c!922007 () Bool)

(assert (=> d!1706086 (= c!922007 (is-EmptyExpr!14960 lt!2169205))))

(assert (=> d!1706086 (= (matchRSpec!2063 lt!2169205 s!2326) e!3299167)))

(declare-fun bm!378473 () Bool)

(declare-fun call!378478 () Bool)

(assert (=> bm!378473 (= call!378478 (isEmpty!33021 s!2326))))

(declare-fun b!5309026 () Bool)

(assert (=> b!5309026 (= e!3299167 call!378478)))

(declare-fun b!5309027 () Bool)

(declare-fun res!2252252 () Bool)

(assert (=> b!5309027 (=> res!2252252 e!3299170)))

(assert (=> b!5309027 (= res!2252252 call!378478)))

(assert (=> b!5309027 (= e!3299172 e!3299170)))

(declare-fun bm!378474 () Bool)

(assert (=> bm!378474 (= call!378479 (Exists!2141 (ite c!922006 lambda!270320 lambda!270321)))))

(declare-fun b!5309028 () Bool)

(assert (=> b!5309028 (= e!3299168 e!3299169)))

(declare-fun res!2252250 () Bool)

(assert (=> b!5309028 (= res!2252250 (matchRSpec!2063 (regOne!30433 lt!2169205) s!2326))))

(assert (=> b!5309028 (=> res!2252250 e!3299169)))

(assert (= (and d!1706086 c!922007) b!5309026))

(assert (= (and d!1706086 (not c!922007)) b!5309019))

(assert (= (and b!5309019 res!2252251) b!5309023))

(assert (= (and b!5309023 c!922005) b!5309022))

(assert (= (and b!5309023 (not c!922005)) b!5309020))

(assert (= (and b!5309020 c!922008) b!5309028))

(assert (= (and b!5309020 (not c!922008)) b!5309025))

(assert (= (and b!5309028 (not res!2252250)) b!5309021))

(assert (= (and b!5309025 c!922006) b!5309027))

(assert (= (and b!5309025 (not c!922006)) b!5309018))

(assert (= (and b!5309027 (not res!2252252)) b!5309024))

(assert (= (or b!5309024 b!5309018) bm!378474))

(assert (= (or b!5309026 b!5309027) bm!378473))

(declare-fun m!6346258 () Bool)

(assert (=> b!5309021 m!6346258))

(assert (=> bm!378473 m!6346110))

(declare-fun m!6346260 () Bool)

(assert (=> bm!378474 m!6346260))

(declare-fun m!6346262 () Bool)

(assert (=> b!5309028 m!6346262))

(assert (=> b!5308594 d!1706086))

(declare-fun d!1706088 () Bool)

(declare-fun c!922009 () Bool)

(assert (=> d!1706088 (= c!922009 (isEmpty!33021 s!2326))))

(declare-fun e!3299173 () Bool)

(assert (=> d!1706088 (= (matchZipper!1204 z!1189 s!2326) e!3299173)))

(declare-fun b!5309029 () Bool)

(assert (=> b!5309029 (= e!3299173 (nullableZipper!1331 z!1189))))

(declare-fun b!5309030 () Bool)

(assert (=> b!5309030 (= e!3299173 (matchZipper!1204 (derivationStepZipper!1203 z!1189 (head!11380 s!2326)) (tail!10477 s!2326)))))

(assert (= (and d!1706088 c!922009) b!5309029))

(assert (= (and d!1706088 (not c!922009)) b!5309030))

(assert (=> d!1706088 m!6346110))

(declare-fun m!6346264 () Bool)

(assert (=> b!5309029 m!6346264))

(assert (=> b!5309030 m!6346108))

(assert (=> b!5309030 m!6346108))

(declare-fun m!6346266 () Bool)

(assert (=> b!5309030 m!6346266))

(assert (=> b!5309030 m!6346112))

(assert (=> b!5309030 m!6346266))

(assert (=> b!5309030 m!6346112))

(declare-fun m!6346268 () Bool)

(assert (=> b!5309030 m!6346268))

(assert (=> b!5308594 d!1706088))

(declare-fun d!1706090 () Bool)

(assert (=> d!1706090 (= (matchR!7145 lt!2169201 s!2326) (matchRSpec!2063 lt!2169201 s!2326))))

(declare-fun lt!2169400 () Unit!153358)

(assert (=> d!1706090 (= lt!2169400 (choose!39699 lt!2169201 s!2326))))

(assert (=> d!1706090 (validRegex!6696 lt!2169201)))

(assert (=> d!1706090 (= (mainMatchTheorem!2063 lt!2169201 s!2326) lt!2169400)))

(declare-fun bs!1230962 () Bool)

(assert (= bs!1230962 d!1706090))

(assert (=> bs!1230962 m!6345860))

(assert (=> bs!1230962 m!6345830))

(declare-fun m!6346270 () Bool)

(assert (=> bs!1230962 m!6346270))

(assert (=> bs!1230962 m!6346198))

(assert (=> b!5308594 d!1706090))

(declare-fun d!1706092 () Bool)

(assert (=> d!1706092 (= (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 Nil!61055 s!2326 s!2326)) (not (isEmpty!33022 (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 Nil!61055 s!2326 s!2326))))))

(declare-fun bs!1230963 () Bool)

(assert (= bs!1230963 d!1706092))

(assert (=> bs!1230963 m!6345826))

(declare-fun m!6346272 () Bool)

(assert (=> bs!1230963 m!6346272))

(assert (=> b!5308594 d!1706092))

(declare-fun d!1706094 () Bool)

(assert (=> d!1706094 (= (matchR!7145 lt!2169201 s!2326) (matchZipper!1204 lt!2169199 s!2326))))

(declare-fun lt!2169403 () Unit!153358)

(declare-fun choose!39701 ((Set Context!8688) List!61181 Regex!14960 List!61179) Unit!153358)

(assert (=> d!1706094 (= lt!2169403 (choose!39701 lt!2169199 lt!2169168 lt!2169201 s!2326))))

(assert (=> d!1706094 (validRegex!6696 lt!2169201)))

(assert (=> d!1706094 (= (theoremZipperRegexEquiv!370 lt!2169199 lt!2169168 lt!2169201 s!2326) lt!2169403)))

(declare-fun bs!1230964 () Bool)

(assert (= bs!1230964 d!1706094))

(assert (=> bs!1230964 m!6345860))

(assert (=> bs!1230964 m!6345866))

(declare-fun m!6346274 () Bool)

(assert (=> bs!1230964 m!6346274))

(assert (=> bs!1230964 m!6346198))

(assert (=> b!5308594 d!1706094))

(declare-fun b!5309031 () Bool)

(declare-fun res!2252253 () Bool)

(declare-fun e!3299178 () Bool)

(assert (=> b!5309031 (=> (not res!2252253) (not e!3299178))))

(declare-fun lt!2169405 () Option!15071)

(assert (=> b!5309031 (= res!2252253 (matchR!7145 lt!2169205 (_2!35462 (get!20997 lt!2169405))))))

(declare-fun b!5309032 () Bool)

(declare-fun e!3299174 () Bool)

(assert (=> b!5309032 (= e!3299174 (matchR!7145 lt!2169205 s!2326))))

(declare-fun b!5309033 () Bool)

(declare-fun e!3299175 () Bool)

(assert (=> b!5309033 (= e!3299175 (not (isDefined!11774 lt!2169405)))))

(declare-fun b!5309034 () Bool)

(declare-fun lt!2169404 () Unit!153358)

(declare-fun lt!2169406 () Unit!153358)

(assert (=> b!5309034 (= lt!2169404 lt!2169406)))

(assert (=> b!5309034 (= (++!13311 (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326)) s!2326)))

(assert (=> b!5309034 (= lt!2169406 (lemmaMoveElementToOtherListKeepsConcatEq!1726 Nil!61055 (h!67503 s!2326) (t!374384 s!2326) s!2326))))

(declare-fun e!3299176 () Option!15071)

(assert (=> b!5309034 (= e!3299176 (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326) s!2326))))

(declare-fun b!5309035 () Bool)

(assert (=> b!5309035 (= e!3299178 (= (++!13311 (_1!35462 (get!20997 lt!2169405)) (_2!35462 (get!20997 lt!2169405))) s!2326))))

(declare-fun b!5309036 () Bool)

(declare-fun res!2252256 () Bool)

(assert (=> b!5309036 (=> (not res!2252256) (not e!3299178))))

(assert (=> b!5309036 (= res!2252256 (matchR!7145 (regOne!30432 (regOne!30432 r!7292)) (_1!35462 (get!20997 lt!2169405))))))

(declare-fun d!1706096 () Bool)

(assert (=> d!1706096 e!3299175))

(declare-fun res!2252255 () Bool)

(assert (=> d!1706096 (=> res!2252255 e!3299175)))

(assert (=> d!1706096 (= res!2252255 e!3299178)))

(declare-fun res!2252254 () Bool)

(assert (=> d!1706096 (=> (not res!2252254) (not e!3299178))))

(assert (=> d!1706096 (= res!2252254 (isDefined!11774 lt!2169405))))

(declare-fun e!3299177 () Option!15071)

(assert (=> d!1706096 (= lt!2169405 e!3299177)))

(declare-fun c!922010 () Bool)

(assert (=> d!1706096 (= c!922010 e!3299174)))

(declare-fun res!2252257 () Bool)

(assert (=> d!1706096 (=> (not res!2252257) (not e!3299174))))

(assert (=> d!1706096 (= res!2252257 (matchR!7145 (regOne!30432 (regOne!30432 r!7292)) Nil!61055))))

(assert (=> d!1706096 (validRegex!6696 (regOne!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706096 (= (findConcatSeparation!1485 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 Nil!61055 s!2326 s!2326) lt!2169405)))

(declare-fun b!5309037 () Bool)

(assert (=> b!5309037 (= e!3299177 (Some!15070 (tuple2!64319 Nil!61055 s!2326)))))

(declare-fun b!5309038 () Bool)

(assert (=> b!5309038 (= e!3299177 e!3299176)))

(declare-fun c!922011 () Bool)

(assert (=> b!5309038 (= c!922011 (is-Nil!61055 s!2326))))

(declare-fun b!5309039 () Bool)

(assert (=> b!5309039 (= e!3299176 None!15070)))

(assert (= (and d!1706096 res!2252257) b!5309032))

(assert (= (and d!1706096 c!922010) b!5309037))

(assert (= (and d!1706096 (not c!922010)) b!5309038))

(assert (= (and b!5309038 c!922011) b!5309039))

(assert (= (and b!5309038 (not c!922011)) b!5309034))

(assert (= (and d!1706096 res!2252254) b!5309036))

(assert (= (and b!5309036 res!2252256) b!5309031))

(assert (= (and b!5309031 res!2252253) b!5309035))

(assert (= (and d!1706096 (not res!2252255)) b!5309033))

(declare-fun m!6346276 () Bool)

(assert (=> d!1706096 m!6346276))

(declare-fun m!6346278 () Bool)

(assert (=> d!1706096 m!6346278))

(assert (=> d!1706096 m!6346230))

(declare-fun m!6346280 () Bool)

(assert (=> b!5309035 m!6346280))

(declare-fun m!6346282 () Bool)

(assert (=> b!5309035 m!6346282))

(assert (=> b!5309034 m!6346244))

(assert (=> b!5309034 m!6346244))

(assert (=> b!5309034 m!6346246))

(assert (=> b!5309034 m!6346248))

(assert (=> b!5309034 m!6346244))

(declare-fun m!6346284 () Bool)

(assert (=> b!5309034 m!6346284))

(assert (=> b!5309032 m!6345850))

(assert (=> b!5309033 m!6346276))

(assert (=> b!5309036 m!6346280))

(declare-fun m!6346286 () Bool)

(assert (=> b!5309036 m!6346286))

(assert (=> b!5309031 m!6346280))

(declare-fun m!6346288 () Bool)

(assert (=> b!5309031 m!6346288))

(assert (=> b!5308594 d!1706096))

(declare-fun d!1706098 () Bool)

(declare-fun c!922012 () Bool)

(assert (=> d!1706098 (= c!922012 (isEmpty!33021 s!2326))))

(declare-fun e!3299179 () Bool)

(assert (=> d!1706098 (= (matchZipper!1204 lt!2169206 s!2326) e!3299179)))

(declare-fun b!5309040 () Bool)

(assert (=> b!5309040 (= e!3299179 (nullableZipper!1331 lt!2169206))))

(declare-fun b!5309041 () Bool)

(assert (=> b!5309041 (= e!3299179 (matchZipper!1204 (derivationStepZipper!1203 lt!2169206 (head!11380 s!2326)) (tail!10477 s!2326)))))

(assert (= (and d!1706098 c!922012) b!5309040))

(assert (= (and d!1706098 (not c!922012)) b!5309041))

(assert (=> d!1706098 m!6346110))

(declare-fun m!6346290 () Bool)

(assert (=> b!5309040 m!6346290))

(assert (=> b!5309041 m!6346108))

(assert (=> b!5309041 m!6346108))

(declare-fun m!6346292 () Bool)

(assert (=> b!5309041 m!6346292))

(assert (=> b!5309041 m!6346112))

(assert (=> b!5309041 m!6346292))

(assert (=> b!5309041 m!6346112))

(declare-fun m!6346294 () Bool)

(assert (=> b!5309041 m!6346294))

(assert (=> b!5308594 d!1706098))

(declare-fun bs!1230965 () Bool)

(declare-fun d!1706100 () Bool)

(assert (= bs!1230965 (and d!1706100 b!5308601)))

(declare-fun lambda!270322 () Int)

(assert (=> bs!1230965 (= lambda!270322 lambda!270261)))

(declare-fun bs!1230966 () Bool)

(assert (= bs!1230966 (and d!1706100 d!1706054)))

(assert (=> bs!1230966 (= lambda!270322 lambda!270304)))

(declare-fun bs!1230967 () Bool)

(assert (= bs!1230967 (and d!1706100 d!1706080)))

(assert (=> bs!1230967 (= lambda!270322 lambda!270318)))

(declare-fun bs!1230968 () Bool)

(assert (= bs!1230968 (and d!1706100 d!1706050)))

(assert (=> bs!1230968 (= lambda!270322 lambda!270301)))

(declare-fun bs!1230969 () Bool)

(assert (= bs!1230969 (and d!1706100 d!1706056)))

(assert (=> bs!1230969 (= lambda!270322 lambda!270307)))

(declare-fun bs!1230970 () Bool)

(assert (= bs!1230970 (and d!1706100 d!1706060)))

(assert (=> bs!1230970 (= lambda!270322 lambda!270308)))

(declare-fun b!5309042 () Bool)

(declare-fun e!3299181 () Bool)

(assert (=> b!5309042 (= e!3299181 (isEmpty!33017 (t!374385 lt!2169179)))))

(declare-fun e!3299182 () Bool)

(assert (=> d!1706100 e!3299182))

(declare-fun res!2252259 () Bool)

(assert (=> d!1706100 (=> (not res!2252259) (not e!3299182))))

(declare-fun lt!2169407 () Regex!14960)

(assert (=> d!1706100 (= res!2252259 (validRegex!6696 lt!2169407))))

(declare-fun e!3299183 () Regex!14960)

(assert (=> d!1706100 (= lt!2169407 e!3299183)))

(declare-fun c!922015 () Bool)

(assert (=> d!1706100 (= c!922015 e!3299181)))

(declare-fun res!2252258 () Bool)

(assert (=> d!1706100 (=> (not res!2252258) (not e!3299181))))

(assert (=> d!1706100 (= res!2252258 (is-Cons!61056 lt!2169179))))

(assert (=> d!1706100 (forall!14376 lt!2169179 lambda!270322)))

(assert (=> d!1706100 (= (generalisedConcat!629 lt!2169179) lt!2169407)))

(declare-fun b!5309043 () Bool)

(declare-fun e!3299180 () Bool)

(assert (=> b!5309043 (= e!3299180 (= lt!2169407 (head!11381 lt!2169179)))))

(declare-fun b!5309044 () Bool)

(declare-fun e!3299185 () Bool)

(assert (=> b!5309044 (= e!3299185 e!3299180)))

(declare-fun c!922014 () Bool)

(assert (=> b!5309044 (= c!922014 (isEmpty!33017 (tail!10478 lt!2169179)))))

(declare-fun b!5309045 () Bool)

(assert (=> b!5309045 (= e!3299180 (isConcat!389 lt!2169407))))

(declare-fun b!5309046 () Bool)

(assert (=> b!5309046 (= e!3299185 (isEmptyExpr!866 lt!2169407))))

(declare-fun b!5309047 () Bool)

(declare-fun e!3299184 () Regex!14960)

(assert (=> b!5309047 (= e!3299184 EmptyExpr!14960)))

(declare-fun b!5309048 () Bool)

(assert (=> b!5309048 (= e!3299183 (h!67504 lt!2169179))))

(declare-fun b!5309049 () Bool)

(assert (=> b!5309049 (= e!3299182 e!3299185)))

(declare-fun c!922013 () Bool)

(assert (=> b!5309049 (= c!922013 (isEmpty!33017 lt!2169179))))

(declare-fun b!5309050 () Bool)

(assert (=> b!5309050 (= e!3299183 e!3299184)))

(declare-fun c!922016 () Bool)

(assert (=> b!5309050 (= c!922016 (is-Cons!61056 lt!2169179))))

(declare-fun b!5309051 () Bool)

(assert (=> b!5309051 (= e!3299184 (Concat!23805 (h!67504 lt!2169179) (generalisedConcat!629 (t!374385 lt!2169179))))))

(assert (= (and d!1706100 res!2252258) b!5309042))

(assert (= (and d!1706100 c!922015) b!5309048))

(assert (= (and d!1706100 (not c!922015)) b!5309050))

(assert (= (and b!5309050 c!922016) b!5309051))

(assert (= (and b!5309050 (not c!922016)) b!5309047))

(assert (= (and d!1706100 res!2252259) b!5309049))

(assert (= (and b!5309049 c!922013) b!5309046))

(assert (= (and b!5309049 (not c!922013)) b!5309044))

(assert (= (and b!5309044 c!922014) b!5309043))

(assert (= (and b!5309044 (not c!922014)) b!5309045))

(declare-fun m!6346296 () Bool)

(assert (=> b!5309043 m!6346296))

(declare-fun m!6346298 () Bool)

(assert (=> b!5309042 m!6346298))

(declare-fun m!6346300 () Bool)

(assert (=> b!5309051 m!6346300))

(declare-fun m!6346302 () Bool)

(assert (=> b!5309046 m!6346302))

(declare-fun m!6346304 () Bool)

(assert (=> b!5309049 m!6346304))

(declare-fun m!6346306 () Bool)

(assert (=> b!5309044 m!6346306))

(assert (=> b!5309044 m!6346306))

(declare-fun m!6346308 () Bool)

(assert (=> b!5309044 m!6346308))

(declare-fun m!6346310 () Bool)

(assert (=> b!5309045 m!6346310))

(declare-fun m!6346312 () Bool)

(assert (=> d!1706100 m!6346312))

(declare-fun m!6346314 () Bool)

(assert (=> d!1706100 m!6346314))

(assert (=> b!5308594 d!1706100))

(declare-fun d!1706102 () Bool)

(assert (=> d!1706102 (= (matchR!7145 lt!2169205 s!2326) (matchZipper!1204 lt!2169206 s!2326))))

(declare-fun lt!2169408 () Unit!153358)

(assert (=> d!1706102 (= lt!2169408 (choose!39701 lt!2169206 (Cons!61057 lt!2169167 Nil!61057) lt!2169205 s!2326))))

(assert (=> d!1706102 (validRegex!6696 lt!2169205)))

(assert (=> d!1706102 (= (theoremZipperRegexEquiv!370 lt!2169206 (Cons!61057 lt!2169167 Nil!61057) lt!2169205 s!2326) lt!2169408)))

(declare-fun bs!1230971 () Bool)

(assert (= bs!1230971 d!1706102))

(assert (=> bs!1230971 m!6345850))

(assert (=> bs!1230971 m!6345868))

(declare-fun m!6346316 () Bool)

(assert (=> bs!1230971 m!6346316))

(assert (=> bs!1230971 m!6346186))

(assert (=> b!5308594 d!1706102))

(declare-fun d!1706104 () Bool)

(assert (=> d!1706104 (= (Exists!2141 lambda!270259) (choose!39698 lambda!270259))))

(declare-fun bs!1230972 () Bool)

(assert (= bs!1230972 d!1706104))

(declare-fun m!6346318 () Bool)

(assert (=> bs!1230972 m!6346318))

(assert (=> b!5308594 d!1706104))

(declare-fun bs!1230973 () Bool)

(declare-fun d!1706106 () Bool)

(assert (= bs!1230973 (and d!1706106 d!1706072)))

(declare-fun lambda!270327 () Int)

(assert (=> bs!1230973 (= lambda!270327 lambda!270317)))

(declare-fun bs!1230974 () Bool)

(assert (= bs!1230974 (and d!1706106 b!5308581)))

(assert (=> bs!1230974 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169173 (regTwo!30432 r!7292))) (= lambda!270327 lambda!270254))))

(declare-fun bs!1230975 () Bool)

(assert (= bs!1230975 (and d!1706106 d!1706082)))

(assert (=> bs!1230975 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270327 lambda!270319))))

(assert (=> bs!1230974 (not (= lambda!270327 lambda!270255))))

(declare-fun bs!1230976 () Bool)

(assert (= bs!1230976 (and d!1706106 b!5308594)))

(assert (=> bs!1230976 (not (= lambda!270327 lambda!270258))))

(declare-fun bs!1230977 () Bool)

(assert (= bs!1230977 (and d!1706106 b!5309024)))

(assert (=> bs!1230977 (not (= lambda!270327 lambda!270320))))

(declare-fun bs!1230978 () Bool)

(assert (= bs!1230978 (and d!1706106 b!5309018)))

(assert (=> bs!1230978 (not (= lambda!270327 lambda!270321))))

(assert (=> bs!1230976 (not (= lambda!270327 lambda!270260))))

(declare-fun bs!1230979 () Bool)

(assert (= bs!1230979 (and d!1706106 b!5308936)))

(assert (=> bs!1230979 (not (= lambda!270327 lambda!270314))))

(assert (=> bs!1230976 (= lambda!270327 lambda!270259)))

(assert (=> bs!1230976 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270327 lambda!270257))))

(declare-fun bs!1230980 () Bool)

(assert (= bs!1230980 (and d!1706106 b!5308942)))

(assert (=> bs!1230980 (not (= lambda!270327 lambda!270313))))

(assert (=> d!1706106 true))

(assert (=> d!1706106 true))

(assert (=> d!1706106 true))

(declare-fun lambda!270328 () Int)

(assert (=> bs!1230973 (not (= lambda!270328 lambda!270317))))

(assert (=> bs!1230974 (not (= lambda!270328 lambda!270254))))

(assert (=> bs!1230975 (not (= lambda!270328 lambda!270319))))

(assert (=> bs!1230974 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169173 (regTwo!30432 r!7292))) (= lambda!270328 lambda!270255))))

(assert (=> bs!1230977 (not (= lambda!270328 lambda!270320))))

(assert (=> bs!1230978 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 lt!2169205)) (= lt!2169173 (regTwo!30432 lt!2169205))) (= lambda!270328 lambda!270321))))

(assert (=> bs!1230976 (= lambda!270328 lambda!270260)))

(assert (=> bs!1230979 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 lt!2169201)) (= lt!2169173 (regTwo!30432 lt!2169201))) (= lambda!270328 lambda!270314))))

(assert (=> bs!1230976 (not (= lambda!270328 lambda!270259))))

(assert (=> bs!1230976 (not (= lambda!270328 lambda!270257))))

(assert (=> bs!1230980 (not (= lambda!270328 lambda!270313))))

(assert (=> bs!1230976 (= (and (= (regTwo!30432 (regOne!30432 r!7292)) (regOne!30432 (regOne!30432 r!7292))) (= lt!2169173 lt!2169205)) (= lambda!270328 lambda!270258))))

(declare-fun bs!1230981 () Bool)

(assert (= bs!1230981 d!1706106))

(assert (=> bs!1230981 (not (= lambda!270328 lambda!270327))))

(assert (=> d!1706106 true))

(assert (=> d!1706106 true))

(assert (=> d!1706106 true))

(assert (=> d!1706106 (= (Exists!2141 lambda!270327) (Exists!2141 lambda!270328))))

(declare-fun lt!2169411 () Unit!153358)

(declare-fun choose!39702 (Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> d!1706106 (= lt!2169411 (choose!39702 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(assert (=> d!1706106 (validRegex!6696 (regTwo!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706106 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326) lt!2169411)))

(declare-fun m!6346320 () Bool)

(assert (=> bs!1230981 m!6346320))

(declare-fun m!6346322 () Bool)

(assert (=> bs!1230981 m!6346322))

(declare-fun m!6346324 () Bool)

(assert (=> bs!1230981 m!6346324))

(assert (=> bs!1230981 m!6346190))

(assert (=> b!5308594 d!1706106))

(declare-fun bs!1230982 () Bool)

(declare-fun d!1706108 () Bool)

(assert (= bs!1230982 (and d!1706108 d!1706106)))

(declare-fun lambda!270329 () Int)

(assert (=> bs!1230982 (not (= lambda!270329 lambda!270328))))

(declare-fun bs!1230983 () Bool)

(assert (= bs!1230983 (and d!1706108 d!1706072)))

(assert (=> bs!1230983 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270329 lambda!270317))))

(declare-fun bs!1230984 () Bool)

(assert (= bs!1230984 (and d!1706108 b!5308581)))

(assert (=> bs!1230984 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169205 (regTwo!30432 r!7292))) (= lambda!270329 lambda!270254))))

(declare-fun bs!1230985 () Bool)

(assert (= bs!1230985 (and d!1706108 d!1706082)))

(assert (=> bs!1230985 (= lambda!270329 lambda!270319)))

(assert (=> bs!1230984 (not (= lambda!270329 lambda!270255))))

(declare-fun bs!1230986 () Bool)

(assert (= bs!1230986 (and d!1706108 b!5309024)))

(assert (=> bs!1230986 (not (= lambda!270329 lambda!270320))))

(declare-fun bs!1230987 () Bool)

(assert (= bs!1230987 (and d!1706108 b!5309018)))

(assert (=> bs!1230987 (not (= lambda!270329 lambda!270321))))

(declare-fun bs!1230988 () Bool)

(assert (= bs!1230988 (and d!1706108 b!5308594)))

(assert (=> bs!1230988 (not (= lambda!270329 lambda!270260))))

(declare-fun bs!1230989 () Bool)

(assert (= bs!1230989 (and d!1706108 b!5308936)))

(assert (=> bs!1230989 (not (= lambda!270329 lambda!270314))))

(assert (=> bs!1230988 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270329 lambda!270259))))

(assert (=> bs!1230988 (= lambda!270329 lambda!270257)))

(declare-fun bs!1230990 () Bool)

(assert (= bs!1230990 (and d!1706108 b!5308942)))

(assert (=> bs!1230990 (not (= lambda!270329 lambda!270313))))

(assert (=> bs!1230988 (not (= lambda!270329 lambda!270258))))

(assert (=> bs!1230982 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270329 lambda!270327))))

(assert (=> d!1706108 true))

(assert (=> d!1706108 true))

(assert (=> d!1706108 true))

(declare-fun lambda!270330 () Int)

(assert (=> bs!1230982 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270330 lambda!270328))))

(assert (=> bs!1230984 (not (= lambda!270330 lambda!270254))))

(assert (=> bs!1230985 (not (= lambda!270330 lambda!270319))))

(assert (=> bs!1230984 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 r!7292)) (= lt!2169205 (regTwo!30432 r!7292))) (= lambda!270330 lambda!270255))))

(assert (=> bs!1230986 (not (= lambda!270330 lambda!270320))))

(assert (=> bs!1230987 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 lt!2169205)) (= lt!2169205 (regTwo!30432 lt!2169205))) (= lambda!270330 lambda!270321))))

(assert (=> bs!1230988 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) (= lt!2169205 lt!2169173)) (= lambda!270330 lambda!270260))))

(declare-fun bs!1230991 () Bool)

(assert (= bs!1230991 d!1706108))

(assert (=> bs!1230991 (not (= lambda!270330 lambda!270329))))

(assert (=> bs!1230983 (not (= lambda!270330 lambda!270317))))

(assert (=> bs!1230989 (= (and (= (regOne!30432 (regOne!30432 r!7292)) (regOne!30432 lt!2169201)) (= lt!2169205 (regTwo!30432 lt!2169201))) (= lambda!270330 lambda!270314))))

(assert (=> bs!1230988 (not (= lambda!270330 lambda!270259))))

(assert (=> bs!1230988 (not (= lambda!270330 lambda!270257))))

(assert (=> bs!1230990 (not (= lambda!270330 lambda!270313))))

(assert (=> bs!1230988 (= lambda!270330 lambda!270258)))

(assert (=> bs!1230982 (not (= lambda!270330 lambda!270327))))

(assert (=> d!1706108 true))

(assert (=> d!1706108 true))

(assert (=> d!1706108 true))

(assert (=> d!1706108 (= (Exists!2141 lambda!270329) (Exists!2141 lambda!270330))))

(declare-fun lt!2169412 () Unit!153358)

(assert (=> d!1706108 (= lt!2169412 (choose!39702 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326))))

(assert (=> d!1706108 (validRegex!6696 (regOne!30432 (regOne!30432 r!7292)))))

(assert (=> d!1706108 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regOne!30432 (regOne!30432 r!7292)) lt!2169205 s!2326) lt!2169412)))

(declare-fun m!6346326 () Bool)

(assert (=> bs!1230991 m!6346326))

(declare-fun m!6346328 () Bool)

(assert (=> bs!1230991 m!6346328))

(declare-fun m!6346330 () Bool)

(assert (=> bs!1230991 m!6346330))

(assert (=> bs!1230991 m!6346230))

(assert (=> b!5308594 d!1706108))

(declare-fun b!5309060 () Bool)

(declare-fun e!3299192 () Bool)

(declare-fun lt!2169413 () Bool)

(assert (=> b!5309060 (= e!3299192 (not lt!2169413))))

(declare-fun b!5309061 () Bool)

(declare-fun e!3299194 () Bool)

(assert (=> b!5309061 (= e!3299194 (not (= (head!11380 s!2326) (c!921918 (Concat!23805 lt!2169204 (regTwo!30432 r!7292))))))))

(declare-fun b!5309062 () Bool)

(declare-fun res!2252273 () Bool)

(assert (=> b!5309062 (=> res!2252273 e!3299194)))

(assert (=> b!5309062 (= res!2252273 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5309063 () Bool)

(declare-fun e!3299196 () Bool)

(assert (=> b!5309063 (= e!3299196 (matchR!7145 (derivativeStep!4152 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)) (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706110 () Bool)

(declare-fun e!3299191 () Bool)

(assert (=> d!1706110 e!3299191))

(declare-fun c!922017 () Bool)

(assert (=> d!1706110 (= c!922017 (is-EmptyExpr!14960 (Concat!23805 lt!2169204 (regTwo!30432 r!7292))))))

(assert (=> d!1706110 (= lt!2169413 e!3299196)))

(declare-fun c!922019 () Bool)

(assert (=> d!1706110 (= c!922019 (isEmpty!33021 s!2326))))

(assert (=> d!1706110 (validRegex!6696 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)))))

(assert (=> d!1706110 (= (matchR!7145 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)) s!2326) lt!2169413)))

(declare-fun b!5309064 () Bool)

(declare-fun e!3299193 () Bool)

(assert (=> b!5309064 (= e!3299193 (= (head!11380 s!2326) (c!921918 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)))))))

(declare-fun bm!378475 () Bool)

(declare-fun call!378480 () Bool)

(assert (=> bm!378475 (= call!378480 (isEmpty!33021 s!2326))))

(declare-fun b!5309065 () Bool)

(declare-fun e!3299190 () Bool)

(assert (=> b!5309065 (= e!3299190 e!3299194)))

(declare-fun res!2252271 () Bool)

(assert (=> b!5309065 (=> res!2252271 e!3299194)))

(assert (=> b!5309065 (= res!2252271 call!378480)))

(declare-fun b!5309066 () Bool)

(assert (=> b!5309066 (= e!3299191 e!3299192)))

(declare-fun c!922018 () Bool)

(assert (=> b!5309066 (= c!922018 (is-EmptyLang!14960 (Concat!23805 lt!2169204 (regTwo!30432 r!7292))))))

(declare-fun b!5309067 () Bool)

(assert (=> b!5309067 (= e!3299191 (= lt!2169413 call!378480))))

(declare-fun b!5309068 () Bool)

(declare-fun e!3299195 () Bool)

(assert (=> b!5309068 (= e!3299195 e!3299190)))

(declare-fun res!2252272 () Bool)

(assert (=> b!5309068 (=> (not res!2252272) (not e!3299190))))

(assert (=> b!5309068 (= res!2252272 (not lt!2169413))))

(declare-fun b!5309069 () Bool)

(assert (=> b!5309069 (= e!3299196 (nullable!5129 (Concat!23805 lt!2169204 (regTwo!30432 r!7292))))))

(declare-fun b!5309070 () Bool)

(declare-fun res!2252270 () Bool)

(assert (=> b!5309070 (=> (not res!2252270) (not e!3299193))))

(assert (=> b!5309070 (= res!2252270 (not call!378480))))

(declare-fun b!5309071 () Bool)

(declare-fun res!2252269 () Bool)

(assert (=> b!5309071 (=> res!2252269 e!3299195)))

(assert (=> b!5309071 (= res!2252269 e!3299193)))

(declare-fun res!2252275 () Bool)

(assert (=> b!5309071 (=> (not res!2252275) (not e!3299193))))

(assert (=> b!5309071 (= res!2252275 lt!2169413)))

(declare-fun b!5309072 () Bool)

(declare-fun res!2252274 () Bool)

(assert (=> b!5309072 (=> res!2252274 e!3299195)))

(assert (=> b!5309072 (= res!2252274 (not (is-ElementMatch!14960 (Concat!23805 lt!2169204 (regTwo!30432 r!7292)))))))

(assert (=> b!5309072 (= e!3299192 e!3299195)))

(declare-fun b!5309073 () Bool)

(declare-fun res!2252268 () Bool)

(assert (=> b!5309073 (=> (not res!2252268) (not e!3299193))))

(assert (=> b!5309073 (= res!2252268 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706110 c!922019) b!5309069))

(assert (= (and d!1706110 (not c!922019)) b!5309063))

(assert (= (and d!1706110 c!922017) b!5309067))

(assert (= (and d!1706110 (not c!922017)) b!5309066))

(assert (= (and b!5309066 c!922018) b!5309060))

(assert (= (and b!5309066 (not c!922018)) b!5309072))

(assert (= (and b!5309072 (not res!2252274)) b!5309071))

(assert (= (and b!5309071 res!2252275) b!5309070))

(assert (= (and b!5309070 res!2252270) b!5309073))

(assert (= (and b!5309073 res!2252268) b!5309064))

(assert (= (and b!5309071 (not res!2252269)) b!5309068))

(assert (= (and b!5309068 res!2252272) b!5309065))

(assert (= (and b!5309065 (not res!2252271)) b!5309062))

(assert (= (and b!5309062 (not res!2252273)) b!5309061))

(assert (= (or b!5309067 b!5309070 b!5309065) bm!378475))

(assert (=> b!5309064 m!6346108))

(assert (=> bm!378475 m!6346110))

(assert (=> b!5309062 m!6346112))

(assert (=> b!5309062 m!6346112))

(assert (=> b!5309062 m!6346114))

(assert (=> b!5309061 m!6346108))

(assert (=> d!1706110 m!6346110))

(declare-fun m!6346332 () Bool)

(assert (=> d!1706110 m!6346332))

(declare-fun m!6346334 () Bool)

(assert (=> b!5309069 m!6346334))

(assert (=> b!5309063 m!6346108))

(assert (=> b!5309063 m!6346108))

(declare-fun m!6346336 () Bool)

(assert (=> b!5309063 m!6346336))

(assert (=> b!5309063 m!6346112))

(assert (=> b!5309063 m!6346336))

(assert (=> b!5309063 m!6346112))

(declare-fun m!6346338 () Bool)

(assert (=> b!5309063 m!6346338))

(assert (=> b!5309073 m!6346112))

(assert (=> b!5309073 m!6346112))

(assert (=> b!5309073 m!6346114))

(assert (=> b!5308568 d!1706110))

(declare-fun e!3299199 () Bool)

(declare-fun d!1706112 () Bool)

(assert (=> d!1706112 (= (matchZipper!1204 (set.union lt!2169163 lt!2169211) (t!374384 s!2326)) e!3299199)))

(declare-fun res!2252278 () Bool)

(assert (=> d!1706112 (=> res!2252278 e!3299199)))

(assert (=> d!1706112 (= res!2252278 (matchZipper!1204 lt!2169163 (t!374384 s!2326)))))

(declare-fun lt!2169416 () Unit!153358)

(declare-fun choose!39703 ((Set Context!8688) (Set Context!8688) List!61179) Unit!153358)

(assert (=> d!1706112 (= lt!2169416 (choose!39703 lt!2169163 lt!2169211 (t!374384 s!2326)))))

(assert (=> d!1706112 (= (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169163 lt!2169211 (t!374384 s!2326)) lt!2169416)))

(declare-fun b!5309076 () Bool)

(assert (=> b!5309076 (= e!3299199 (matchZipper!1204 lt!2169211 (t!374384 s!2326)))))

(assert (= (and d!1706112 (not res!2252278)) b!5309076))

(assert (=> d!1706112 m!6345784))

(assert (=> d!1706112 m!6345708))

(declare-fun m!6346340 () Bool)

(assert (=> d!1706112 m!6346340))

(assert (=> b!5309076 m!6345716))

(assert (=> b!5308569 d!1706112))

(declare-fun d!1706114 () Bool)

(declare-fun c!922020 () Bool)

(assert (=> d!1706114 (= c!922020 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299200 () Bool)

(assert (=> d!1706114 (= (matchZipper!1204 lt!2169163 (t!374384 s!2326)) e!3299200)))

(declare-fun b!5309077 () Bool)

(assert (=> b!5309077 (= e!3299200 (nullableZipper!1331 lt!2169163))))

(declare-fun b!5309078 () Bool)

(assert (=> b!5309078 (= e!3299200 (matchZipper!1204 (derivationStepZipper!1203 lt!2169163 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706114 c!922020) b!5309077))

(assert (= (and d!1706114 (not c!922020)) b!5309078))

(assert (=> d!1706114 m!6346068))

(declare-fun m!6346342 () Bool)

(assert (=> b!5309077 m!6346342))

(assert (=> b!5309078 m!6346072))

(assert (=> b!5309078 m!6346072))

(declare-fun m!6346344 () Bool)

(assert (=> b!5309078 m!6346344))

(assert (=> b!5309078 m!6346076))

(assert (=> b!5309078 m!6346344))

(assert (=> b!5309078 m!6346076))

(declare-fun m!6346346 () Bool)

(assert (=> b!5309078 m!6346346))

(assert (=> b!5308569 d!1706114))

(declare-fun d!1706116 () Bool)

(declare-fun c!922021 () Bool)

(assert (=> d!1706116 (= c!922021 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299201 () Bool)

(assert (=> d!1706116 (= (matchZipper!1204 (set.union lt!2169163 lt!2169211) (t!374384 s!2326)) e!3299201)))

(declare-fun b!5309079 () Bool)

(assert (=> b!5309079 (= e!3299201 (nullableZipper!1331 (set.union lt!2169163 lt!2169211)))))

(declare-fun b!5309080 () Bool)

(assert (=> b!5309080 (= e!3299201 (matchZipper!1204 (derivationStepZipper!1203 (set.union lt!2169163 lt!2169211) (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706116 c!922021) b!5309079))

(assert (= (and d!1706116 (not c!922021)) b!5309080))

(assert (=> d!1706116 m!6346068))

(declare-fun m!6346348 () Bool)

(assert (=> b!5309079 m!6346348))

(assert (=> b!5309080 m!6346072))

(assert (=> b!5309080 m!6346072))

(declare-fun m!6346350 () Bool)

(assert (=> b!5309080 m!6346350))

(assert (=> b!5309080 m!6346076))

(assert (=> b!5309080 m!6346350))

(assert (=> b!5309080 m!6346076))

(declare-fun m!6346352 () Bool)

(assert (=> b!5309080 m!6346352))

(assert (=> b!5308569 d!1706116))

(declare-fun b!5309091 () Bool)

(declare-fun e!3299209 () (Set Context!8688))

(declare-fun call!378483 () (Set Context!8688))

(assert (=> b!5309091 (= e!3299209 call!378483)))

(declare-fun b!5309092 () Bool)

(declare-fun e!3299208 () (Set Context!8688))

(assert (=> b!5309092 (= e!3299208 (set.union call!378483 (derivationStepZipperUp!332 (Context!8689 (t!374385 (exprs!4844 lt!2169167))) (h!67503 s!2326))))))

(declare-fun d!1706118 () Bool)

(declare-fun c!922026 () Bool)

(declare-fun e!3299210 () Bool)

(assert (=> d!1706118 (= c!922026 e!3299210)))

(declare-fun res!2252281 () Bool)

(assert (=> d!1706118 (=> (not res!2252281) (not e!3299210))))

(assert (=> d!1706118 (= res!2252281 (is-Cons!61056 (exprs!4844 lt!2169167)))))

(assert (=> d!1706118 (= (derivationStepZipperUp!332 lt!2169167 (h!67503 s!2326)) e!3299208)))

(declare-fun b!5309093 () Bool)

(assert (=> b!5309093 (= e!3299209 (as set.empty (Set Context!8688)))))

(declare-fun bm!378478 () Bool)

(assert (=> bm!378478 (= call!378483 (derivationStepZipperDown!408 (h!67504 (exprs!4844 lt!2169167)) (Context!8689 (t!374385 (exprs!4844 lt!2169167))) (h!67503 s!2326)))))

(declare-fun b!5309094 () Bool)

(assert (=> b!5309094 (= e!3299208 e!3299209)))

(declare-fun c!922027 () Bool)

(assert (=> b!5309094 (= c!922027 (is-Cons!61056 (exprs!4844 lt!2169167)))))

(declare-fun b!5309095 () Bool)

(assert (=> b!5309095 (= e!3299210 (nullable!5129 (h!67504 (exprs!4844 lt!2169167))))))

(assert (= (and d!1706118 res!2252281) b!5309095))

(assert (= (and d!1706118 c!922026) b!5309092))

(assert (= (and d!1706118 (not c!922026)) b!5309094))

(assert (= (and b!5309094 c!922027) b!5309091))

(assert (= (and b!5309094 (not c!922027)) b!5309093))

(assert (= (or b!5309092 b!5309091) bm!378478))

(declare-fun m!6346354 () Bool)

(assert (=> b!5309092 m!6346354))

(declare-fun m!6346356 () Bool)

(assert (=> bm!378478 m!6346356))

(declare-fun m!6346358 () Bool)

(assert (=> b!5309095 m!6346358))

(assert (=> b!5308586 d!1706118))

(declare-fun e!3299211 () Bool)

(declare-fun d!1706120 () Bool)

(assert (=> d!1706120 (= (matchZipper!1204 (set.union lt!2169176 lt!2169180) (t!374384 s!2326)) e!3299211)))

(declare-fun res!2252282 () Bool)

(assert (=> d!1706120 (=> res!2252282 e!3299211)))

(assert (=> d!1706120 (= res!2252282 (matchZipper!1204 lt!2169176 (t!374384 s!2326)))))

(declare-fun lt!2169417 () Unit!153358)

(assert (=> d!1706120 (= lt!2169417 (choose!39703 lt!2169176 lt!2169180 (t!374384 s!2326)))))

(assert (=> d!1706120 (= (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169176 lt!2169180 (t!374384 s!2326)) lt!2169417)))

(declare-fun b!5309096 () Bool)

(assert (=> b!5309096 (= e!3299211 (matchZipper!1204 lt!2169180 (t!374384 s!2326)))))

(assert (= (and d!1706120 (not res!2252282)) b!5309096))

(declare-fun m!6346360 () Bool)

(assert (=> d!1706120 m!6346360))

(assert (=> d!1706120 m!6345712))

(declare-fun m!6346362 () Bool)

(assert (=> d!1706120 m!6346362))

(assert (=> b!5309096 m!6345884))

(assert (=> b!5308586 d!1706120))

(declare-fun d!1706122 () Bool)

(declare-fun dynLambda!24132 (Int Context!8688) (Set Context!8688))

(assert (=> d!1706122 (= (flatMap!687 lt!2169206 lambda!270256) (dynLambda!24132 lambda!270256 lt!2169167))))

(declare-fun lt!2169420 () Unit!153358)

(declare-fun choose!39704 ((Set Context!8688) Context!8688 Int) Unit!153358)

(assert (=> d!1706122 (= lt!2169420 (choose!39704 lt!2169206 lt!2169167 lambda!270256))))

(assert (=> d!1706122 (= lt!2169206 (set.insert lt!2169167 (as set.empty (Set Context!8688))))))

(assert (=> d!1706122 (= (lemmaFlatMapOnSingletonSet!219 lt!2169206 lt!2169167 lambda!270256) lt!2169420)))

(declare-fun b_lambda!204373 () Bool)

(assert (=> (not b_lambda!204373) (not d!1706122)))

(declare-fun bs!1230992 () Bool)

(assert (= bs!1230992 d!1706122))

(assert (=> bs!1230992 m!6345806))

(declare-fun m!6346364 () Bool)

(assert (=> bs!1230992 m!6346364))

(declare-fun m!6346366 () Bool)

(assert (=> bs!1230992 m!6346366))

(assert (=> bs!1230992 m!6345750))

(assert (=> b!5308586 d!1706122))

(declare-fun d!1706124 () Bool)

(declare-fun c!922028 () Bool)

(assert (=> d!1706124 (= c!922028 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299212 () Bool)

(assert (=> d!1706124 (= (matchZipper!1204 lt!2169198 (t!374384 s!2326)) e!3299212)))

(declare-fun b!5309097 () Bool)

(assert (=> b!5309097 (= e!3299212 (nullableZipper!1331 lt!2169198))))

(declare-fun b!5309098 () Bool)

(assert (=> b!5309098 (= e!3299212 (matchZipper!1204 (derivationStepZipper!1203 lt!2169198 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706124 c!922028) b!5309097))

(assert (= (and d!1706124 (not c!922028)) b!5309098))

(assert (=> d!1706124 m!6346068))

(declare-fun m!6346368 () Bool)

(assert (=> b!5309097 m!6346368))

(assert (=> b!5309098 m!6346072))

(assert (=> b!5309098 m!6346072))

(declare-fun m!6346370 () Bool)

(assert (=> b!5309098 m!6346370))

(assert (=> b!5309098 m!6346076))

(assert (=> b!5309098 m!6346370))

(assert (=> b!5309098 m!6346076))

(declare-fun m!6346372 () Bool)

(assert (=> b!5309098 m!6346372))

(assert (=> b!5308586 d!1706124))

(declare-fun d!1706126 () Bool)

(declare-fun c!922029 () Bool)

(assert (=> d!1706126 (= c!922029 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299213 () Bool)

(assert (=> d!1706126 (= (matchZipper!1204 lt!2169189 (t!374384 s!2326)) e!3299213)))

(declare-fun b!5309099 () Bool)

(assert (=> b!5309099 (= e!3299213 (nullableZipper!1331 lt!2169189))))

(declare-fun b!5309100 () Bool)

(assert (=> b!5309100 (= e!3299213 (matchZipper!1204 (derivationStepZipper!1203 lt!2169189 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706126 c!922029) b!5309099))

(assert (= (and d!1706126 (not c!922029)) b!5309100))

(assert (=> d!1706126 m!6346068))

(declare-fun m!6346374 () Bool)

(assert (=> b!5309099 m!6346374))

(assert (=> b!5309100 m!6346072))

(assert (=> b!5309100 m!6346072))

(declare-fun m!6346376 () Bool)

(assert (=> b!5309100 m!6346376))

(assert (=> b!5309100 m!6346076))

(assert (=> b!5309100 m!6346376))

(assert (=> b!5309100 m!6346076))

(declare-fun m!6346378 () Bool)

(assert (=> b!5309100 m!6346378))

(assert (=> b!5308586 d!1706126))

(declare-fun d!1706128 () Bool)

(declare-fun choose!39705 ((Set Context!8688) Int) (Set Context!8688))

(assert (=> d!1706128 (= (flatMap!687 lt!2169206 lambda!270256) (choose!39705 lt!2169206 lambda!270256))))

(declare-fun bs!1230993 () Bool)

(assert (= bs!1230993 d!1706128))

(declare-fun m!6346380 () Bool)

(assert (=> bs!1230993 m!6346380))

(assert (=> b!5308586 d!1706128))

(declare-fun d!1706130 () Bool)

(declare-fun c!922030 () Bool)

(assert (=> d!1706130 (= c!922030 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299214 () Bool)

(assert (=> d!1706130 (= (matchZipper!1204 lt!2169211 (t!374384 s!2326)) e!3299214)))

(declare-fun b!5309101 () Bool)

(assert (=> b!5309101 (= e!3299214 (nullableZipper!1331 lt!2169211))))

(declare-fun b!5309102 () Bool)

(assert (=> b!5309102 (= e!3299214 (matchZipper!1204 (derivationStepZipper!1203 lt!2169211 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706130 c!922030) b!5309101))

(assert (= (and d!1706130 (not c!922030)) b!5309102))

(assert (=> d!1706130 m!6346068))

(declare-fun m!6346382 () Bool)

(assert (=> b!5309101 m!6346382))

(assert (=> b!5309102 m!6346072))

(assert (=> b!5309102 m!6346072))

(declare-fun m!6346384 () Bool)

(assert (=> b!5309102 m!6346384))

(assert (=> b!5309102 m!6346076))

(assert (=> b!5309102 m!6346384))

(assert (=> b!5309102 m!6346076))

(declare-fun m!6346386 () Bool)

(assert (=> b!5309102 m!6346386))

(assert (=> b!5308587 d!1706130))

(declare-fun d!1706132 () Bool)

(declare-fun c!922031 () Bool)

(assert (=> d!1706132 (= c!922031 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299215 () Bool)

(assert (=> d!1706132 (= (matchZipper!1204 lt!2169180 (t!374384 s!2326)) e!3299215)))

(declare-fun b!5309103 () Bool)

(assert (=> b!5309103 (= e!3299215 (nullableZipper!1331 lt!2169180))))

(declare-fun b!5309104 () Bool)

(assert (=> b!5309104 (= e!3299215 (matchZipper!1204 (derivationStepZipper!1203 lt!2169180 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706132 c!922031) b!5309103))

(assert (= (and d!1706132 (not c!922031)) b!5309104))

(assert (=> d!1706132 m!6346068))

(declare-fun m!6346388 () Bool)

(assert (=> b!5309103 m!6346388))

(assert (=> b!5309104 m!6346072))

(assert (=> b!5309104 m!6346072))

(declare-fun m!6346390 () Bool)

(assert (=> b!5309104 m!6346390))

(assert (=> b!5309104 m!6346076))

(assert (=> b!5309104 m!6346390))

(assert (=> b!5309104 m!6346076))

(declare-fun m!6346392 () Bool)

(assert (=> b!5309104 m!6346392))

(assert (=> b!5308571 d!1706132))

(declare-fun d!1706134 () Bool)

(declare-fun e!3299218 () Bool)

(assert (=> d!1706134 e!3299218))

(declare-fun res!2252285 () Bool)

(assert (=> d!1706134 (=> (not res!2252285) (not e!3299218))))

(declare-fun lt!2169423 () List!61181)

(declare-fun noDuplicate!1286 (List!61181) Bool)

(assert (=> d!1706134 (= res!2252285 (noDuplicate!1286 lt!2169423))))

(declare-fun choose!39706 ((Set Context!8688)) List!61181)

(assert (=> d!1706134 (= lt!2169423 (choose!39706 z!1189))))

(assert (=> d!1706134 (= (toList!8744 z!1189) lt!2169423)))

(declare-fun b!5309107 () Bool)

(declare-fun content!10876 (List!61181) (Set Context!8688))

(assert (=> b!5309107 (= e!3299218 (= (content!10876 lt!2169423) z!1189))))

(assert (= (and d!1706134 res!2252285) b!5309107))

(declare-fun m!6346394 () Bool)

(assert (=> d!1706134 m!6346394))

(declare-fun m!6346396 () Bool)

(assert (=> d!1706134 m!6346396))

(declare-fun m!6346398 () Bool)

(assert (=> b!5309107 m!6346398))

(assert (=> b!5308590 d!1706134))

(declare-fun b!5309114 () Bool)

(assert (=> b!5309114 true))

(declare-fun bs!1230994 () Bool)

(declare-fun b!5309116 () Bool)

(assert (= bs!1230994 (and b!5309116 b!5309114)))

(declare-fun lt!2169435 () Int)

(declare-fun lambda!270339 () Int)

(declare-fun lt!2169434 () Int)

(declare-fun lambda!270338 () Int)

(assert (=> bs!1230994 (= (= lt!2169435 lt!2169434) (= lambda!270339 lambda!270338))))

(assert (=> b!5309116 true))

(declare-fun d!1706136 () Bool)

(declare-fun e!3299224 () Bool)

(assert (=> d!1706136 e!3299224))

(declare-fun res!2252288 () Bool)

(assert (=> d!1706136 (=> (not res!2252288) (not e!3299224))))

(assert (=> d!1706136 (= res!2252288 (>= lt!2169435 0))))

(declare-fun e!3299223 () Int)

(assert (=> d!1706136 (= lt!2169435 e!3299223)))

(declare-fun c!922040 () Bool)

(assert (=> d!1706136 (= c!922040 (is-Cons!61057 lt!2169168))))

(assert (=> d!1706136 (= (zipperDepth!77 lt!2169168) lt!2169435)))

(assert (=> b!5309114 (= e!3299223 lt!2169434)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun contextDepth!43 (Context!8688) Int)

(assert (=> b!5309114 (= lt!2169434 (maxBigInt!0 (contextDepth!43 (h!67505 lt!2169168)) (zipperDepth!77 (t!374386 lt!2169168))))))

(declare-fun lt!2169432 () Unit!153358)

(declare-fun lambda!270337 () Int)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!37 (List!61181 Int Int Int) Unit!153358)

(assert (=> b!5309114 (= lt!2169432 (lemmaForallContextDepthBiggerThanTransitive!37 (t!374386 lt!2169168) lt!2169434 (zipperDepth!77 (t!374386 lt!2169168)) lambda!270337))))

(declare-fun forall!14378 (List!61181 Int) Bool)

(assert (=> b!5309114 (forall!14378 (t!374386 lt!2169168) lambda!270338)))

(declare-fun lt!2169433 () Unit!153358)

(assert (=> b!5309114 (= lt!2169433 lt!2169432)))

(declare-fun b!5309115 () Bool)

(assert (=> b!5309115 (= e!3299223 0)))

(assert (=> b!5309116 (= e!3299224 (forall!14378 lt!2169168 lambda!270339))))

(assert (= (and d!1706136 c!922040) b!5309114))

(assert (= (and d!1706136 (not c!922040)) b!5309115))

(assert (= (and d!1706136 res!2252288) b!5309116))

(declare-fun m!6346400 () Bool)

(assert (=> b!5309114 m!6346400))

(assert (=> b!5309114 m!6346400))

(declare-fun m!6346402 () Bool)

(assert (=> b!5309114 m!6346402))

(declare-fun m!6346404 () Bool)

(assert (=> b!5309114 m!6346404))

(declare-fun m!6346406 () Bool)

(assert (=> b!5309114 m!6346406))

(assert (=> b!5309114 m!6346406))

(assert (=> b!5309114 m!6346400))

(declare-fun m!6346408 () Bool)

(assert (=> b!5309114 m!6346408))

(declare-fun m!6346410 () Bool)

(assert (=> b!5309116 m!6346410))

(assert (=> b!5308591 d!1706136))

(declare-fun bs!1230995 () Bool)

(declare-fun b!5309119 () Bool)

(assert (= bs!1230995 (and b!5309119 b!5309114)))

(declare-fun lambda!270340 () Int)

(assert (=> bs!1230995 (= lambda!270340 lambda!270337)))

(declare-fun lambda!270341 () Int)

(declare-fun lt!2169438 () Int)

(assert (=> bs!1230995 (= (= lt!2169438 lt!2169434) (= lambda!270341 lambda!270338))))

(declare-fun bs!1230996 () Bool)

(assert (= bs!1230996 (and b!5309119 b!5309116)))

(assert (=> bs!1230996 (= (= lt!2169438 lt!2169435) (= lambda!270341 lambda!270339))))

(assert (=> b!5309119 true))

(declare-fun bs!1230997 () Bool)

(declare-fun b!5309121 () Bool)

(assert (= bs!1230997 (and b!5309121 b!5309114)))

(declare-fun lambda!270342 () Int)

(declare-fun lt!2169439 () Int)

(assert (=> bs!1230997 (= (= lt!2169439 lt!2169434) (= lambda!270342 lambda!270338))))

(declare-fun bs!1230998 () Bool)

(assert (= bs!1230998 (and b!5309121 b!5309116)))

(assert (=> bs!1230998 (= (= lt!2169439 lt!2169435) (= lambda!270342 lambda!270339))))

(declare-fun bs!1230999 () Bool)

(assert (= bs!1230999 (and b!5309121 b!5309119)))

(assert (=> bs!1230999 (= (= lt!2169439 lt!2169438) (= lambda!270342 lambda!270341))))

(assert (=> b!5309121 true))

(declare-fun d!1706138 () Bool)

(declare-fun e!3299226 () Bool)

(assert (=> d!1706138 e!3299226))

(declare-fun res!2252289 () Bool)

(assert (=> d!1706138 (=> (not res!2252289) (not e!3299226))))

(assert (=> d!1706138 (= res!2252289 (>= lt!2169439 0))))

(declare-fun e!3299225 () Int)

(assert (=> d!1706138 (= lt!2169439 e!3299225)))

(declare-fun c!922041 () Bool)

(assert (=> d!1706138 (= c!922041 (is-Cons!61057 zl!343))))

(assert (=> d!1706138 (= (zipperDepth!77 zl!343) lt!2169439)))

(assert (=> b!5309119 (= e!3299225 lt!2169438)))

(assert (=> b!5309119 (= lt!2169438 (maxBigInt!0 (contextDepth!43 (h!67505 zl!343)) (zipperDepth!77 (t!374386 zl!343))))))

(declare-fun lt!2169436 () Unit!153358)

(assert (=> b!5309119 (= lt!2169436 (lemmaForallContextDepthBiggerThanTransitive!37 (t!374386 zl!343) lt!2169438 (zipperDepth!77 (t!374386 zl!343)) lambda!270340))))

(assert (=> b!5309119 (forall!14378 (t!374386 zl!343) lambda!270341)))

(declare-fun lt!2169437 () Unit!153358)

(assert (=> b!5309119 (= lt!2169437 lt!2169436)))

(declare-fun b!5309120 () Bool)

(assert (=> b!5309120 (= e!3299225 0)))

(assert (=> b!5309121 (= e!3299226 (forall!14378 zl!343 lambda!270342))))

(assert (= (and d!1706138 c!922041) b!5309119))

(assert (= (and d!1706138 (not c!922041)) b!5309120))

(assert (= (and d!1706138 res!2252289) b!5309121))

(declare-fun m!6346412 () Bool)

(assert (=> b!5309119 m!6346412))

(assert (=> b!5309119 m!6346412))

(declare-fun m!6346414 () Bool)

(assert (=> b!5309119 m!6346414))

(declare-fun m!6346416 () Bool)

(assert (=> b!5309119 m!6346416))

(declare-fun m!6346418 () Bool)

(assert (=> b!5309119 m!6346418))

(assert (=> b!5309119 m!6346418))

(assert (=> b!5309119 m!6346412))

(declare-fun m!6346420 () Bool)

(assert (=> b!5309119 m!6346420))

(declare-fun m!6346422 () Bool)

(assert (=> b!5309121 m!6346422))

(assert (=> b!5308591 d!1706138))

(declare-fun bs!1231000 () Bool)

(declare-fun b!5309128 () Bool)

(assert (= bs!1231000 (and b!5309128 d!1706106)))

(declare-fun lambda!270343 () Int)

(assert (=> bs!1231000 (not (= lambda!270343 lambda!270328))))

(declare-fun bs!1231001 () Bool)

(assert (= bs!1231001 (and b!5309128 d!1706108)))

(assert (=> bs!1231001 (not (= lambda!270343 lambda!270330))))

(declare-fun bs!1231002 () Bool)

(assert (= bs!1231002 (and b!5309128 b!5308581)))

(assert (=> bs!1231002 (not (= lambda!270343 lambda!270254))))

(declare-fun bs!1231003 () Bool)

(assert (= bs!1231003 (and b!5309128 d!1706082)))

(assert (=> bs!1231003 (not (= lambda!270343 lambda!270319))))

(assert (=> bs!1231002 (not (= lambda!270343 lambda!270255))))

(declare-fun bs!1231004 () Bool)

(assert (= bs!1231004 (and b!5309128 b!5309024)))

(assert (=> bs!1231004 (= (and (= (reg!15289 r!7292) (reg!15289 lt!2169205)) (= r!7292 lt!2169205)) (= lambda!270343 lambda!270320))))

(declare-fun bs!1231005 () Bool)

(assert (= bs!1231005 (and b!5309128 b!5309018)))

(assert (=> bs!1231005 (not (= lambda!270343 lambda!270321))))

(declare-fun bs!1231006 () Bool)

(assert (= bs!1231006 (and b!5309128 b!5308594)))

(assert (=> bs!1231006 (not (= lambda!270343 lambda!270260))))

(assert (=> bs!1231001 (not (= lambda!270343 lambda!270329))))

(declare-fun bs!1231007 () Bool)

(assert (= bs!1231007 (and b!5309128 d!1706072)))

(assert (=> bs!1231007 (not (= lambda!270343 lambda!270317))))

(declare-fun bs!1231008 () Bool)

(assert (= bs!1231008 (and b!5309128 b!5308936)))

(assert (=> bs!1231008 (not (= lambda!270343 lambda!270314))))

(assert (=> bs!1231006 (not (= lambda!270343 lambda!270259))))

(assert (=> bs!1231006 (not (= lambda!270343 lambda!270257))))

(declare-fun bs!1231009 () Bool)

(assert (= bs!1231009 (and b!5309128 b!5308942)))

(assert (=> bs!1231009 (= (and (= (reg!15289 r!7292) (reg!15289 lt!2169201)) (= r!7292 lt!2169201)) (= lambda!270343 lambda!270313))))

(assert (=> bs!1231006 (not (= lambda!270343 lambda!270258))))

(assert (=> bs!1231000 (not (= lambda!270343 lambda!270327))))

(assert (=> b!5309128 true))

(assert (=> b!5309128 true))

(declare-fun bs!1231010 () Bool)

(declare-fun b!5309122 () Bool)

(assert (= bs!1231010 (and b!5309122 d!1706106)))

(declare-fun lambda!270344 () Int)

(assert (=> bs!1231010 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270344 lambda!270328))))

(declare-fun bs!1231011 () Bool)

(assert (= bs!1231011 (and b!5309122 d!1706108)))

(assert (=> bs!1231011 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270344 lambda!270330))))

(declare-fun bs!1231012 () Bool)

(assert (= bs!1231012 (and b!5309122 b!5308581)))

(assert (=> bs!1231012 (not (= lambda!270344 lambda!270254))))

(declare-fun bs!1231013 () Bool)

(assert (= bs!1231013 (and b!5309122 d!1706082)))

(assert (=> bs!1231013 (not (= lambda!270344 lambda!270319))))

(assert (=> bs!1231012 (= lambda!270344 lambda!270255)))

(declare-fun bs!1231014 () Bool)

(assert (= bs!1231014 (and b!5309122 b!5309018)))

(assert (=> bs!1231014 (= (and (= (regOne!30432 r!7292) (regOne!30432 lt!2169205)) (= (regTwo!30432 r!7292) (regTwo!30432 lt!2169205))) (= lambda!270344 lambda!270321))))

(declare-fun bs!1231015 () Bool)

(assert (= bs!1231015 (and b!5309122 b!5308594)))

(assert (=> bs!1231015 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270344 lambda!270260))))

(assert (=> bs!1231011 (not (= lambda!270344 lambda!270329))))

(declare-fun bs!1231016 () Bool)

(assert (= bs!1231016 (and b!5309122 d!1706072)))

(assert (=> bs!1231016 (not (= lambda!270344 lambda!270317))))

(declare-fun bs!1231017 () Bool)

(assert (= bs!1231017 (and b!5309122 b!5308936)))

(assert (=> bs!1231017 (= (and (= (regOne!30432 r!7292) (regOne!30432 lt!2169201)) (= (regTwo!30432 r!7292) (regTwo!30432 lt!2169201))) (= lambda!270344 lambda!270314))))

(assert (=> bs!1231015 (not (= lambda!270344 lambda!270259))))

(assert (=> bs!1231015 (not (= lambda!270344 lambda!270257))))

(declare-fun bs!1231018 () Bool)

(assert (= bs!1231018 (and b!5309122 b!5308942)))

(assert (=> bs!1231018 (not (= lambda!270344 lambda!270313))))

(assert (=> bs!1231015 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270344 lambda!270258))))

(assert (=> bs!1231010 (not (= lambda!270344 lambda!270327))))

(declare-fun bs!1231019 () Bool)

(assert (= bs!1231019 (and b!5309122 b!5309024)))

(assert (=> bs!1231019 (not (= lambda!270344 lambda!270320))))

(declare-fun bs!1231020 () Bool)

(assert (= bs!1231020 (and b!5309122 b!5309128)))

(assert (=> bs!1231020 (not (= lambda!270344 lambda!270343))))

(assert (=> b!5309122 true))

(assert (=> b!5309122 true))

(declare-fun e!3299233 () Bool)

(declare-fun call!378485 () Bool)

(assert (=> b!5309122 (= e!3299233 call!378485)))

(declare-fun b!5309124 () Bool)

(declare-fun c!922045 () Bool)

(assert (=> b!5309124 (= c!922045 (is-Union!14960 r!7292))))

(declare-fun e!3299232 () Bool)

(declare-fun e!3299229 () Bool)

(assert (=> b!5309124 (= e!3299232 e!3299229)))

(declare-fun b!5309125 () Bool)

(declare-fun e!3299230 () Bool)

(assert (=> b!5309125 (= e!3299230 (matchRSpec!2063 (regTwo!30433 r!7292) s!2326))))

(declare-fun b!5309126 () Bool)

(assert (=> b!5309126 (= e!3299232 (= s!2326 (Cons!61055 (c!921918 r!7292) Nil!61055)))))

(declare-fun b!5309127 () Bool)

(declare-fun c!922042 () Bool)

(assert (=> b!5309127 (= c!922042 (is-ElementMatch!14960 r!7292))))

(declare-fun e!3299227 () Bool)

(assert (=> b!5309127 (= e!3299227 e!3299232)))

(declare-fun e!3299231 () Bool)

(assert (=> b!5309128 (= e!3299231 call!378485)))

(declare-fun b!5309129 () Bool)

(assert (=> b!5309129 (= e!3299229 e!3299233)))

(declare-fun c!922043 () Bool)

(assert (=> b!5309129 (= c!922043 (is-Star!14960 r!7292))))

(declare-fun b!5309123 () Bool)

(declare-fun e!3299228 () Bool)

(assert (=> b!5309123 (= e!3299228 e!3299227)))

(declare-fun res!2252291 () Bool)

(assert (=> b!5309123 (= res!2252291 (not (is-EmptyLang!14960 r!7292)))))

(assert (=> b!5309123 (=> (not res!2252291) (not e!3299227))))

(declare-fun d!1706140 () Bool)

(declare-fun c!922044 () Bool)

(assert (=> d!1706140 (= c!922044 (is-EmptyExpr!14960 r!7292))))

(assert (=> d!1706140 (= (matchRSpec!2063 r!7292 s!2326) e!3299228)))

(declare-fun bm!378479 () Bool)

(declare-fun call!378484 () Bool)

(assert (=> bm!378479 (= call!378484 (isEmpty!33021 s!2326))))

(declare-fun b!5309130 () Bool)

(assert (=> b!5309130 (= e!3299228 call!378484)))

(declare-fun b!5309131 () Bool)

(declare-fun res!2252292 () Bool)

(assert (=> b!5309131 (=> res!2252292 e!3299231)))

(assert (=> b!5309131 (= res!2252292 call!378484)))

(assert (=> b!5309131 (= e!3299233 e!3299231)))

(declare-fun bm!378480 () Bool)

(assert (=> bm!378480 (= call!378485 (Exists!2141 (ite c!922043 lambda!270343 lambda!270344)))))

(declare-fun b!5309132 () Bool)

(assert (=> b!5309132 (= e!3299229 e!3299230)))

(declare-fun res!2252290 () Bool)

(assert (=> b!5309132 (= res!2252290 (matchRSpec!2063 (regOne!30433 r!7292) s!2326))))

(assert (=> b!5309132 (=> res!2252290 e!3299230)))

(assert (= (and d!1706140 c!922044) b!5309130))

(assert (= (and d!1706140 (not c!922044)) b!5309123))

(assert (= (and b!5309123 res!2252291) b!5309127))

(assert (= (and b!5309127 c!922042) b!5309126))

(assert (= (and b!5309127 (not c!922042)) b!5309124))

(assert (= (and b!5309124 c!922045) b!5309132))

(assert (= (and b!5309124 (not c!922045)) b!5309129))

(assert (= (and b!5309132 (not res!2252290)) b!5309125))

(assert (= (and b!5309129 c!922043) b!5309131))

(assert (= (and b!5309129 (not c!922043)) b!5309122))

(assert (= (and b!5309131 (not res!2252292)) b!5309128))

(assert (= (or b!5309128 b!5309122) bm!378480))

(assert (= (or b!5309130 b!5309131) bm!378479))

(declare-fun m!6346424 () Bool)

(assert (=> b!5309125 m!6346424))

(assert (=> bm!378479 m!6346110))

(declare-fun m!6346426 () Bool)

(assert (=> bm!378480 m!6346426))

(declare-fun m!6346428 () Bool)

(assert (=> b!5309132 m!6346428))

(assert (=> b!5308589 d!1706140))

(declare-fun b!5309133 () Bool)

(declare-fun e!3299236 () Bool)

(declare-fun lt!2169440 () Bool)

(assert (=> b!5309133 (= e!3299236 (not lt!2169440))))

(declare-fun b!5309134 () Bool)

(declare-fun e!3299238 () Bool)

(assert (=> b!5309134 (= e!3299238 (not (= (head!11380 s!2326) (c!921918 r!7292))))))

(declare-fun b!5309135 () Bool)

(declare-fun res!2252298 () Bool)

(assert (=> b!5309135 (=> res!2252298 e!3299238)))

(assert (=> b!5309135 (= res!2252298 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5309136 () Bool)

(declare-fun e!3299240 () Bool)

(assert (=> b!5309136 (= e!3299240 (matchR!7145 (derivativeStep!4152 r!7292 (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706142 () Bool)

(declare-fun e!3299235 () Bool)

(assert (=> d!1706142 e!3299235))

(declare-fun c!922046 () Bool)

(assert (=> d!1706142 (= c!922046 (is-EmptyExpr!14960 r!7292))))

(assert (=> d!1706142 (= lt!2169440 e!3299240)))

(declare-fun c!922048 () Bool)

(assert (=> d!1706142 (= c!922048 (isEmpty!33021 s!2326))))

(assert (=> d!1706142 (validRegex!6696 r!7292)))

(assert (=> d!1706142 (= (matchR!7145 r!7292 s!2326) lt!2169440)))

(declare-fun b!5309137 () Bool)

(declare-fun e!3299237 () Bool)

(assert (=> b!5309137 (= e!3299237 (= (head!11380 s!2326) (c!921918 r!7292)))))

(declare-fun bm!378481 () Bool)

(declare-fun call!378486 () Bool)

(assert (=> bm!378481 (= call!378486 (isEmpty!33021 s!2326))))

(declare-fun b!5309138 () Bool)

(declare-fun e!3299234 () Bool)

(assert (=> b!5309138 (= e!3299234 e!3299238)))

(declare-fun res!2252296 () Bool)

(assert (=> b!5309138 (=> res!2252296 e!3299238)))

(assert (=> b!5309138 (= res!2252296 call!378486)))

(declare-fun b!5309139 () Bool)

(assert (=> b!5309139 (= e!3299235 e!3299236)))

(declare-fun c!922047 () Bool)

(assert (=> b!5309139 (= c!922047 (is-EmptyLang!14960 r!7292))))

(declare-fun b!5309140 () Bool)

(assert (=> b!5309140 (= e!3299235 (= lt!2169440 call!378486))))

(declare-fun b!5309141 () Bool)

(declare-fun e!3299239 () Bool)

(assert (=> b!5309141 (= e!3299239 e!3299234)))

(declare-fun res!2252297 () Bool)

(assert (=> b!5309141 (=> (not res!2252297) (not e!3299234))))

(assert (=> b!5309141 (= res!2252297 (not lt!2169440))))

(declare-fun b!5309142 () Bool)

(assert (=> b!5309142 (= e!3299240 (nullable!5129 r!7292))))

(declare-fun b!5309143 () Bool)

(declare-fun res!2252295 () Bool)

(assert (=> b!5309143 (=> (not res!2252295) (not e!3299237))))

(assert (=> b!5309143 (= res!2252295 (not call!378486))))

(declare-fun b!5309144 () Bool)

(declare-fun res!2252294 () Bool)

(assert (=> b!5309144 (=> res!2252294 e!3299239)))

(assert (=> b!5309144 (= res!2252294 e!3299237)))

(declare-fun res!2252300 () Bool)

(assert (=> b!5309144 (=> (not res!2252300) (not e!3299237))))

(assert (=> b!5309144 (= res!2252300 lt!2169440)))

(declare-fun b!5309145 () Bool)

(declare-fun res!2252299 () Bool)

(assert (=> b!5309145 (=> res!2252299 e!3299239)))

(assert (=> b!5309145 (= res!2252299 (not (is-ElementMatch!14960 r!7292)))))

(assert (=> b!5309145 (= e!3299236 e!3299239)))

(declare-fun b!5309146 () Bool)

(declare-fun res!2252293 () Bool)

(assert (=> b!5309146 (=> (not res!2252293) (not e!3299237))))

(assert (=> b!5309146 (= res!2252293 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706142 c!922048) b!5309142))

(assert (= (and d!1706142 (not c!922048)) b!5309136))

(assert (= (and d!1706142 c!922046) b!5309140))

(assert (= (and d!1706142 (not c!922046)) b!5309139))

(assert (= (and b!5309139 c!922047) b!5309133))

(assert (= (and b!5309139 (not c!922047)) b!5309145))

(assert (= (and b!5309145 (not res!2252299)) b!5309144))

(assert (= (and b!5309144 res!2252300) b!5309143))

(assert (= (and b!5309143 res!2252295) b!5309146))

(assert (= (and b!5309146 res!2252293) b!5309137))

(assert (= (and b!5309144 (not res!2252294)) b!5309141))

(assert (= (and b!5309141 res!2252297) b!5309138))

(assert (= (and b!5309138 (not res!2252296)) b!5309135))

(assert (= (and b!5309135 (not res!2252298)) b!5309134))

(assert (= (or b!5309140 b!5309143 b!5309138) bm!378481))

(assert (=> b!5309137 m!6346108))

(assert (=> bm!378481 m!6346110))

(assert (=> b!5309135 m!6346112))

(assert (=> b!5309135 m!6346112))

(assert (=> b!5309135 m!6346114))

(assert (=> b!5309134 m!6346108))

(assert (=> d!1706142 m!6346110))

(assert (=> d!1706142 m!6345874))

(declare-fun m!6346430 () Bool)

(assert (=> b!5309142 m!6346430))

(assert (=> b!5309136 m!6346108))

(assert (=> b!5309136 m!6346108))

(declare-fun m!6346432 () Bool)

(assert (=> b!5309136 m!6346432))

(assert (=> b!5309136 m!6346112))

(assert (=> b!5309136 m!6346432))

(assert (=> b!5309136 m!6346112))

(declare-fun m!6346434 () Bool)

(assert (=> b!5309136 m!6346434))

(assert (=> b!5309146 m!6346112))

(assert (=> b!5309146 m!6346112))

(assert (=> b!5309146 m!6346114))

(assert (=> b!5308589 d!1706142))

(declare-fun d!1706144 () Bool)

(assert (=> d!1706144 (= (matchR!7145 r!7292 s!2326) (matchRSpec!2063 r!7292 s!2326))))

(declare-fun lt!2169441 () Unit!153358)

(assert (=> d!1706144 (= lt!2169441 (choose!39699 r!7292 s!2326))))

(assert (=> d!1706144 (validRegex!6696 r!7292)))

(assert (=> d!1706144 (= (mainMatchTheorem!2063 r!7292 s!2326) lt!2169441)))

(declare-fun bs!1231021 () Bool)

(assert (= bs!1231021 d!1706144))

(assert (=> bs!1231021 m!6345744))

(assert (=> bs!1231021 m!6345742))

(declare-fun m!6346436 () Bool)

(assert (=> bs!1231021 m!6346436))

(assert (=> bs!1231021 m!6345874))

(assert (=> b!5308589 d!1706144))

(declare-fun b!5309147 () Bool)

(declare-fun e!3299243 () Bool)

(declare-fun lt!2169442 () Bool)

(assert (=> b!5309147 (= e!3299243 (not lt!2169442))))

(declare-fun e!3299245 () Bool)

(declare-fun b!5309148 () Bool)

(assert (=> b!5309148 (= e!3299245 (not (= (head!11380 s!2326) (c!921918 (Concat!23805 lt!2169204 lt!2169173)))))))

(declare-fun b!5309149 () Bool)

(declare-fun res!2252306 () Bool)

(assert (=> b!5309149 (=> res!2252306 e!3299245)))

(assert (=> b!5309149 (= res!2252306 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5309150 () Bool)

(declare-fun e!3299247 () Bool)

(assert (=> b!5309150 (= e!3299247 (matchR!7145 (derivativeStep!4152 (Concat!23805 lt!2169204 lt!2169173) (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706146 () Bool)

(declare-fun e!3299242 () Bool)

(assert (=> d!1706146 e!3299242))

(declare-fun c!922049 () Bool)

(assert (=> d!1706146 (= c!922049 (is-EmptyExpr!14960 (Concat!23805 lt!2169204 lt!2169173)))))

(assert (=> d!1706146 (= lt!2169442 e!3299247)))

(declare-fun c!922051 () Bool)

(assert (=> d!1706146 (= c!922051 (isEmpty!33021 s!2326))))

(assert (=> d!1706146 (validRegex!6696 (Concat!23805 lt!2169204 lt!2169173))))

(assert (=> d!1706146 (= (matchR!7145 (Concat!23805 lt!2169204 lt!2169173) s!2326) lt!2169442)))

(declare-fun e!3299244 () Bool)

(declare-fun b!5309151 () Bool)

(assert (=> b!5309151 (= e!3299244 (= (head!11380 s!2326) (c!921918 (Concat!23805 lt!2169204 lt!2169173))))))

(declare-fun bm!378482 () Bool)

(declare-fun call!378487 () Bool)

(assert (=> bm!378482 (= call!378487 (isEmpty!33021 s!2326))))

(declare-fun b!5309152 () Bool)

(declare-fun e!3299241 () Bool)

(assert (=> b!5309152 (= e!3299241 e!3299245)))

(declare-fun res!2252304 () Bool)

(assert (=> b!5309152 (=> res!2252304 e!3299245)))

(assert (=> b!5309152 (= res!2252304 call!378487)))

(declare-fun b!5309153 () Bool)

(assert (=> b!5309153 (= e!3299242 e!3299243)))

(declare-fun c!922050 () Bool)

(assert (=> b!5309153 (= c!922050 (is-EmptyLang!14960 (Concat!23805 lt!2169204 lt!2169173)))))

(declare-fun b!5309154 () Bool)

(assert (=> b!5309154 (= e!3299242 (= lt!2169442 call!378487))))

(declare-fun b!5309155 () Bool)

(declare-fun e!3299246 () Bool)

(assert (=> b!5309155 (= e!3299246 e!3299241)))

(declare-fun res!2252305 () Bool)

(assert (=> b!5309155 (=> (not res!2252305) (not e!3299241))))

(assert (=> b!5309155 (= res!2252305 (not lt!2169442))))

(declare-fun b!5309156 () Bool)

(assert (=> b!5309156 (= e!3299247 (nullable!5129 (Concat!23805 lt!2169204 lt!2169173)))))

(declare-fun b!5309157 () Bool)

(declare-fun res!2252303 () Bool)

(assert (=> b!5309157 (=> (not res!2252303) (not e!3299244))))

(assert (=> b!5309157 (= res!2252303 (not call!378487))))

(declare-fun b!5309158 () Bool)

(declare-fun res!2252302 () Bool)

(assert (=> b!5309158 (=> res!2252302 e!3299246)))

(assert (=> b!5309158 (= res!2252302 e!3299244)))

(declare-fun res!2252308 () Bool)

(assert (=> b!5309158 (=> (not res!2252308) (not e!3299244))))

(assert (=> b!5309158 (= res!2252308 lt!2169442)))

(declare-fun b!5309159 () Bool)

(declare-fun res!2252307 () Bool)

(assert (=> b!5309159 (=> res!2252307 e!3299246)))

(assert (=> b!5309159 (= res!2252307 (not (is-ElementMatch!14960 (Concat!23805 lt!2169204 lt!2169173))))))

(assert (=> b!5309159 (= e!3299243 e!3299246)))

(declare-fun b!5309160 () Bool)

(declare-fun res!2252301 () Bool)

(assert (=> b!5309160 (=> (not res!2252301) (not e!3299244))))

(assert (=> b!5309160 (= res!2252301 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706146 c!922051) b!5309156))

(assert (= (and d!1706146 (not c!922051)) b!5309150))

(assert (= (and d!1706146 c!922049) b!5309154))

(assert (= (and d!1706146 (not c!922049)) b!5309153))

(assert (= (and b!5309153 c!922050) b!5309147))

(assert (= (and b!5309153 (not c!922050)) b!5309159))

(assert (= (and b!5309159 (not res!2252307)) b!5309158))

(assert (= (and b!5309158 res!2252308) b!5309157))

(assert (= (and b!5309157 res!2252303) b!5309160))

(assert (= (and b!5309160 res!2252301) b!5309151))

(assert (= (and b!5309158 (not res!2252302)) b!5309155))

(assert (= (and b!5309155 res!2252305) b!5309152))

(assert (= (and b!5309152 (not res!2252304)) b!5309149))

(assert (= (and b!5309149 (not res!2252306)) b!5309148))

(assert (= (or b!5309154 b!5309157 b!5309152) bm!378482))

(assert (=> b!5309151 m!6346108))

(assert (=> bm!378482 m!6346110))

(assert (=> b!5309149 m!6346112))

(assert (=> b!5309149 m!6346112))

(assert (=> b!5309149 m!6346114))

(assert (=> b!5309148 m!6346108))

(assert (=> d!1706146 m!6346110))

(declare-fun m!6346438 () Bool)

(assert (=> d!1706146 m!6346438))

(declare-fun m!6346440 () Bool)

(assert (=> b!5309156 m!6346440))

(assert (=> b!5309150 m!6346108))

(assert (=> b!5309150 m!6346108))

(declare-fun m!6346442 () Bool)

(assert (=> b!5309150 m!6346442))

(assert (=> b!5309150 m!6346112))

(assert (=> b!5309150 m!6346442))

(assert (=> b!5309150 m!6346112))

(declare-fun m!6346444 () Bool)

(assert (=> b!5309150 m!6346444))

(assert (=> b!5309160 m!6346112))

(assert (=> b!5309160 m!6346112))

(assert (=> b!5309160 m!6346114))

(assert (=> b!5308570 d!1706146))

(declare-fun bs!1231022 () Bool)

(declare-fun d!1706148 () Bool)

(assert (= bs!1231022 (and d!1706148 d!1706054)))

(declare-fun lambda!270347 () Int)

(assert (=> bs!1231022 (= lambda!270347 lambda!270304)))

(declare-fun bs!1231023 () Bool)

(assert (= bs!1231023 (and d!1706148 d!1706080)))

(assert (=> bs!1231023 (= lambda!270347 lambda!270318)))

(declare-fun bs!1231024 () Bool)

(assert (= bs!1231024 (and d!1706148 d!1706050)))

(assert (=> bs!1231024 (= lambda!270347 lambda!270301)))

(declare-fun bs!1231025 () Bool)

(assert (= bs!1231025 (and d!1706148 d!1706056)))

(assert (=> bs!1231025 (= lambda!270347 lambda!270307)))

(declare-fun bs!1231026 () Bool)

(assert (= bs!1231026 (and d!1706148 d!1706060)))

(assert (=> bs!1231026 (= lambda!270347 lambda!270308)))

(declare-fun bs!1231027 () Bool)

(assert (= bs!1231027 (and d!1706148 b!5308601)))

(assert (=> bs!1231027 (= lambda!270347 lambda!270261)))

(declare-fun bs!1231028 () Bool)

(assert (= bs!1231028 (and d!1706148 d!1706100)))

(assert (=> bs!1231028 (= lambda!270347 lambda!270322)))

(assert (=> d!1706148 (= (inv!80648 (h!67505 zl!343)) (forall!14376 (exprs!4844 (h!67505 zl!343)) lambda!270347))))

(declare-fun bs!1231029 () Bool)

(assert (= bs!1231029 d!1706148))

(declare-fun m!6346446 () Bool)

(assert (=> bs!1231029 m!6346446))

(assert (=> b!5308583 d!1706148))

(declare-fun b!5309183 () Bool)

(declare-fun e!3299261 () (Set Context!8688))

(declare-fun call!378504 () (Set Context!8688))

(assert (=> b!5309183 (= e!3299261 call!378504)))

(declare-fun b!5309184 () Bool)

(assert (=> b!5309184 (= e!3299261 (as set.empty (Set Context!8688)))))

(declare-fun bm!378495 () Bool)

(declare-fun call!378503 () List!61180)

(declare-fun c!922064 () Bool)

(declare-fun c!922065 () Bool)

(declare-fun $colon$colon!1381 (List!61180 Regex!14960) List!61180)

(assert (=> bm!378495 (= call!378503 ($colon$colon!1381 (exprs!4844 lt!2169170) (ite (or c!922064 c!922065) (regTwo!30432 (h!67504 (exprs!4844 (h!67505 zl!343)))) (h!67504 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun b!5309185 () Bool)

(declare-fun e!3299262 () (Set Context!8688))

(assert (=> b!5309185 (= e!3299262 call!378504)))

(declare-fun b!5309186 () Bool)

(declare-fun e!3299263 () (Set Context!8688))

(declare-fun call!378501 () (Set Context!8688))

(declare-fun call!378505 () (Set Context!8688))

(assert (=> b!5309186 (= e!3299263 (set.union call!378501 call!378505))))

(declare-fun bm!378496 () Bool)

(declare-fun call!378500 () List!61180)

(assert (=> bm!378496 (= call!378500 call!378503)))

(declare-fun b!5309187 () Bool)

(declare-fun e!3299265 () (Set Context!8688))

(assert (=> b!5309187 (= e!3299265 e!3299263)))

(declare-fun c!922066 () Bool)

(assert (=> b!5309187 (= c!922066 (is-Union!14960 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun b!5309189 () Bool)

(declare-fun e!3299264 () Bool)

(assert (=> b!5309189 (= c!922064 e!3299264)))

(declare-fun res!2252311 () Bool)

(assert (=> b!5309189 (=> (not res!2252311) (not e!3299264))))

(assert (=> b!5309189 (= res!2252311 (is-Concat!23805 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun e!3299260 () (Set Context!8688))

(assert (=> b!5309189 (= e!3299263 e!3299260)))

(declare-fun bm!378497 () Bool)

(assert (=> bm!378497 (= call!378505 (derivationStepZipperDown!408 (ite c!922066 (regTwo!30433 (h!67504 (exprs!4844 (h!67505 zl!343)))) (ite c!922064 (regTwo!30432 (h!67504 (exprs!4844 (h!67505 zl!343)))) (ite c!922065 (regOne!30432 (h!67504 (exprs!4844 (h!67505 zl!343)))) (reg!15289 (h!67504 (exprs!4844 (h!67505 zl!343))))))) (ite (or c!922066 c!922064) lt!2169170 (Context!8689 call!378500)) (h!67503 s!2326)))))

(declare-fun b!5309190 () Bool)

(assert (=> b!5309190 (= e!3299265 (set.insert lt!2169170 (as set.empty (Set Context!8688))))))

(declare-fun b!5309191 () Bool)

(declare-fun call!378502 () (Set Context!8688))

(assert (=> b!5309191 (= e!3299260 (set.union call!378501 call!378502))))

(declare-fun b!5309192 () Bool)

(assert (=> b!5309192 (= e!3299264 (nullable!5129 (regOne!30432 (h!67504 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun bm!378498 () Bool)

(assert (=> bm!378498 (= call!378504 call!378502)))

(declare-fun bm!378499 () Bool)

(assert (=> bm!378499 (= call!378502 call!378505)))

(declare-fun bm!378500 () Bool)

(assert (=> bm!378500 (= call!378501 (derivationStepZipperDown!408 (ite c!922066 (regOne!30433 (h!67504 (exprs!4844 (h!67505 zl!343)))) (regOne!30432 (h!67504 (exprs!4844 (h!67505 zl!343))))) (ite c!922066 lt!2169170 (Context!8689 call!378503)) (h!67503 s!2326)))))

(declare-fun b!5309193 () Bool)

(declare-fun c!922063 () Bool)

(assert (=> b!5309193 (= c!922063 (is-Star!14960 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> b!5309193 (= e!3299262 e!3299261)))

(declare-fun d!1706150 () Bool)

(declare-fun c!922062 () Bool)

(assert (=> d!1706150 (= c!922062 (and (is-ElementMatch!14960 (h!67504 (exprs!4844 (h!67505 zl!343)))) (= (c!921918 (h!67504 (exprs!4844 (h!67505 zl!343)))) (h!67503 s!2326))))))

(assert (=> d!1706150 (= (derivationStepZipperDown!408 (h!67504 (exprs!4844 (h!67505 zl!343))) lt!2169170 (h!67503 s!2326)) e!3299265)))

(declare-fun b!5309188 () Bool)

(assert (=> b!5309188 (= e!3299260 e!3299262)))

(assert (=> b!5309188 (= c!922065 (is-Concat!23805 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(assert (= (and d!1706150 c!922062) b!5309190))

(assert (= (and d!1706150 (not c!922062)) b!5309187))

(assert (= (and b!5309187 c!922066) b!5309186))

(assert (= (and b!5309187 (not c!922066)) b!5309189))

(assert (= (and b!5309189 res!2252311) b!5309192))

(assert (= (and b!5309189 c!922064) b!5309191))

(assert (= (and b!5309189 (not c!922064)) b!5309188))

(assert (= (and b!5309188 c!922065) b!5309185))

(assert (= (and b!5309188 (not c!922065)) b!5309193))

(assert (= (and b!5309193 c!922063) b!5309183))

(assert (= (and b!5309193 (not c!922063)) b!5309184))

(assert (= (or b!5309185 b!5309183) bm!378496))

(assert (= (or b!5309185 b!5309183) bm!378498))

(assert (= (or b!5309191 bm!378496) bm!378495))

(assert (= (or b!5309191 bm!378498) bm!378499))

(assert (= (or b!5309186 bm!378499) bm!378497))

(assert (= (or b!5309186 b!5309191) bm!378500))

(declare-fun m!6346448 () Bool)

(assert (=> b!5309190 m!6346448))

(declare-fun m!6346450 () Bool)

(assert (=> bm!378500 m!6346450))

(declare-fun m!6346452 () Bool)

(assert (=> bm!378495 m!6346452))

(declare-fun m!6346454 () Bool)

(assert (=> bm!378497 m!6346454))

(declare-fun m!6346456 () Bool)

(assert (=> b!5309192 m!6346456))

(assert (=> b!5308604 d!1706150))

(declare-fun d!1706152 () Bool)

(assert (=> d!1706152 (= (flatMap!687 z!1189 lambda!270256) (choose!39705 z!1189 lambda!270256))))

(declare-fun bs!1231030 () Bool)

(assert (= bs!1231030 d!1706152))

(declare-fun m!6346458 () Bool)

(assert (=> bs!1231030 m!6346458))

(assert (=> b!5308604 d!1706152))

(declare-fun d!1706154 () Bool)

(assert (=> d!1706154 (= (nullable!5129 (h!67504 (exprs!4844 (h!67505 zl!343)))) (nullableFct!1483 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(declare-fun bs!1231031 () Bool)

(assert (= bs!1231031 d!1706154))

(declare-fun m!6346460 () Bool)

(assert (=> bs!1231031 m!6346460))

(assert (=> b!5308604 d!1706154))

(declare-fun b!5309194 () Bool)

(declare-fun e!3299267 () (Set Context!8688))

(declare-fun call!378506 () (Set Context!8688))

(assert (=> b!5309194 (= e!3299267 call!378506)))

(declare-fun b!5309195 () Bool)

(declare-fun e!3299266 () (Set Context!8688))

(assert (=> b!5309195 (= e!3299266 (set.union call!378506 (derivationStepZipperUp!332 (Context!8689 (t!374385 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343)))))))) (h!67503 s!2326))))))

(declare-fun d!1706156 () Bool)

(declare-fun c!922067 () Bool)

(declare-fun e!3299268 () Bool)

(assert (=> d!1706156 (= c!922067 e!3299268)))

(declare-fun res!2252312 () Bool)

(assert (=> d!1706156 (=> (not res!2252312) (not e!3299268))))

(assert (=> d!1706156 (= res!2252312 (is-Cons!61056 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343))))))))))

(assert (=> d!1706156 (= (derivationStepZipperUp!332 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343))))) (h!67503 s!2326)) e!3299266)))

(declare-fun b!5309196 () Bool)

(assert (=> b!5309196 (= e!3299267 (as set.empty (Set Context!8688)))))

(declare-fun bm!378501 () Bool)

(assert (=> bm!378501 (= call!378506 (derivationStepZipperDown!408 (h!67504 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343))))))) (Context!8689 (t!374385 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343)))))))) (h!67503 s!2326)))))

(declare-fun b!5309197 () Bool)

(assert (=> b!5309197 (= e!3299266 e!3299267)))

(declare-fun c!922068 () Bool)

(assert (=> b!5309197 (= c!922068 (is-Cons!61056 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343))))))))))

(declare-fun b!5309198 () Bool)

(assert (=> b!5309198 (= e!3299268 (nullable!5129 (h!67504 (exprs!4844 (Context!8689 (Cons!61056 (h!67504 (exprs!4844 (h!67505 zl!343))) (t!374385 (exprs!4844 (h!67505 zl!343)))))))))))

(assert (= (and d!1706156 res!2252312) b!5309198))

(assert (= (and d!1706156 c!922067) b!5309195))

(assert (= (and d!1706156 (not c!922067)) b!5309197))

(assert (= (and b!5309197 c!922068) b!5309194))

(assert (= (and b!5309197 (not c!922068)) b!5309196))

(assert (= (or b!5309195 b!5309194) bm!378501))

(declare-fun m!6346462 () Bool)

(assert (=> b!5309195 m!6346462))

(declare-fun m!6346464 () Bool)

(assert (=> bm!378501 m!6346464))

(declare-fun m!6346466 () Bool)

(assert (=> b!5309198 m!6346466))

(assert (=> b!5308604 d!1706156))

(declare-fun d!1706158 () Bool)

(assert (=> d!1706158 (= (flatMap!687 z!1189 lambda!270256) (dynLambda!24132 lambda!270256 (h!67505 zl!343)))))

(declare-fun lt!2169443 () Unit!153358)

(assert (=> d!1706158 (= lt!2169443 (choose!39704 z!1189 (h!67505 zl!343) lambda!270256))))

(assert (=> d!1706158 (= z!1189 (set.insert (h!67505 zl!343) (as set.empty (Set Context!8688))))))

(assert (=> d!1706158 (= (lemmaFlatMapOnSingletonSet!219 z!1189 (h!67505 zl!343) lambda!270256) lt!2169443)))

(declare-fun b_lambda!204375 () Bool)

(assert (=> (not b_lambda!204375) (not d!1706158)))

(declare-fun bs!1231032 () Bool)

(assert (= bs!1231032 d!1706158))

(assert (=> bs!1231032 m!6345794))

(declare-fun m!6346468 () Bool)

(assert (=> bs!1231032 m!6346468))

(declare-fun m!6346470 () Bool)

(assert (=> bs!1231032 m!6346470))

(declare-fun m!6346472 () Bool)

(assert (=> bs!1231032 m!6346472))

(assert (=> b!5308604 d!1706158))

(declare-fun b!5309199 () Bool)

(declare-fun e!3299270 () (Set Context!8688))

(declare-fun call!378507 () (Set Context!8688))

(assert (=> b!5309199 (= e!3299270 call!378507)))

(declare-fun b!5309200 () Bool)

(declare-fun e!3299269 () (Set Context!8688))

(assert (=> b!5309200 (= e!3299269 (set.union call!378507 (derivationStepZipperUp!332 (Context!8689 (t!374385 (exprs!4844 (h!67505 zl!343)))) (h!67503 s!2326))))))

(declare-fun d!1706160 () Bool)

(declare-fun c!922069 () Bool)

(declare-fun e!3299271 () Bool)

(assert (=> d!1706160 (= c!922069 e!3299271)))

(declare-fun res!2252313 () Bool)

(assert (=> d!1706160 (=> (not res!2252313) (not e!3299271))))

(assert (=> d!1706160 (= res!2252313 (is-Cons!61056 (exprs!4844 (h!67505 zl!343))))))

(assert (=> d!1706160 (= (derivationStepZipperUp!332 (h!67505 zl!343) (h!67503 s!2326)) e!3299269)))

(declare-fun b!5309201 () Bool)

(assert (=> b!5309201 (= e!3299270 (as set.empty (Set Context!8688)))))

(declare-fun bm!378502 () Bool)

(assert (=> bm!378502 (= call!378507 (derivationStepZipperDown!408 (h!67504 (exprs!4844 (h!67505 zl!343))) (Context!8689 (t!374385 (exprs!4844 (h!67505 zl!343)))) (h!67503 s!2326)))))

(declare-fun b!5309202 () Bool)

(assert (=> b!5309202 (= e!3299269 e!3299270)))

(declare-fun c!922070 () Bool)

(assert (=> b!5309202 (= c!922070 (is-Cons!61056 (exprs!4844 (h!67505 zl!343))))))

(declare-fun b!5309203 () Bool)

(assert (=> b!5309203 (= e!3299271 (nullable!5129 (h!67504 (exprs!4844 (h!67505 zl!343)))))))

(assert (= (and d!1706160 res!2252313) b!5309203))

(assert (= (and d!1706160 c!922069) b!5309200))

(assert (= (and d!1706160 (not c!922069)) b!5309202))

(assert (= (and b!5309202 c!922070) b!5309199))

(assert (= (and b!5309202 (not c!922070)) b!5309201))

(assert (= (or b!5309200 b!5309199) bm!378502))

(declare-fun m!6346474 () Bool)

(assert (=> b!5309200 m!6346474))

(declare-fun m!6346476 () Bool)

(assert (=> bm!378502 m!6346476))

(assert (=> b!5309203 m!6345796))

(assert (=> b!5308604 d!1706160))

(declare-fun b!5309204 () Bool)

(declare-fun e!3299273 () (Set Context!8688))

(declare-fun call!378508 () (Set Context!8688))

(assert (=> b!5309204 (= e!3299273 call!378508)))

(declare-fun e!3299272 () (Set Context!8688))

(declare-fun b!5309205 () Bool)

(assert (=> b!5309205 (= e!3299272 (set.union call!378508 (derivationStepZipperUp!332 (Context!8689 (t!374385 (exprs!4844 lt!2169170))) (h!67503 s!2326))))))

(declare-fun d!1706162 () Bool)

(declare-fun c!922071 () Bool)

(declare-fun e!3299274 () Bool)

(assert (=> d!1706162 (= c!922071 e!3299274)))

(declare-fun res!2252314 () Bool)

(assert (=> d!1706162 (=> (not res!2252314) (not e!3299274))))

(assert (=> d!1706162 (= res!2252314 (is-Cons!61056 (exprs!4844 lt!2169170)))))

(assert (=> d!1706162 (= (derivationStepZipperUp!332 lt!2169170 (h!67503 s!2326)) e!3299272)))

(declare-fun b!5309206 () Bool)

(assert (=> b!5309206 (= e!3299273 (as set.empty (Set Context!8688)))))

(declare-fun bm!378503 () Bool)

(assert (=> bm!378503 (= call!378508 (derivationStepZipperDown!408 (h!67504 (exprs!4844 lt!2169170)) (Context!8689 (t!374385 (exprs!4844 lt!2169170))) (h!67503 s!2326)))))

(declare-fun b!5309207 () Bool)

(assert (=> b!5309207 (= e!3299272 e!3299273)))

(declare-fun c!922072 () Bool)

(assert (=> b!5309207 (= c!922072 (is-Cons!61056 (exprs!4844 lt!2169170)))))

(declare-fun b!5309208 () Bool)

(assert (=> b!5309208 (= e!3299274 (nullable!5129 (h!67504 (exprs!4844 lt!2169170))))))

(assert (= (and d!1706162 res!2252314) b!5309208))

(assert (= (and d!1706162 c!922071) b!5309205))

(assert (= (and d!1706162 (not c!922071)) b!5309207))

(assert (= (and b!5309207 c!922072) b!5309204))

(assert (= (and b!5309207 (not c!922072)) b!5309206))

(assert (= (or b!5309205 b!5309204) bm!378503))

(declare-fun m!6346478 () Bool)

(assert (=> b!5309205 m!6346478))

(declare-fun m!6346480 () Bool)

(assert (=> bm!378503 m!6346480))

(declare-fun m!6346482 () Bool)

(assert (=> b!5309208 m!6346482))

(assert (=> b!5308604 d!1706162))

(declare-fun d!1706164 () Bool)

(declare-fun lt!2169446 () Int)

(assert (=> d!1706164 (>= lt!2169446 0)))

(declare-fun e!3299277 () Int)

(assert (=> d!1706164 (= lt!2169446 e!3299277)))

(declare-fun c!922076 () Bool)

(assert (=> d!1706164 (= c!922076 (is-Cons!61056 (exprs!4844 lt!2169202)))))

(assert (=> d!1706164 (= (contextDepthTotal!101 lt!2169202) lt!2169446)))

(declare-fun b!5309213 () Bool)

(declare-fun regexDepthTotal!42 (Regex!14960) Int)

(assert (=> b!5309213 (= e!3299277 (+ (regexDepthTotal!42 (h!67504 (exprs!4844 lt!2169202))) (contextDepthTotal!101 (Context!8689 (t!374385 (exprs!4844 lt!2169202))))))))

(declare-fun b!5309214 () Bool)

(assert (=> b!5309214 (= e!3299277 1)))

(assert (= (and d!1706164 c!922076) b!5309213))

(assert (= (and d!1706164 (not c!922076)) b!5309214))

(declare-fun m!6346484 () Bool)

(assert (=> b!5309213 m!6346484))

(declare-fun m!6346486 () Bool)

(assert (=> b!5309213 m!6346486))

(assert (=> b!5308582 d!1706164))

(declare-fun d!1706166 () Bool)

(declare-fun lt!2169447 () Int)

(assert (=> d!1706166 (>= lt!2169447 0)))

(declare-fun e!3299278 () Int)

(assert (=> d!1706166 (= lt!2169447 e!3299278)))

(declare-fun c!922077 () Bool)

(assert (=> d!1706166 (= c!922077 (is-Cons!61056 (exprs!4844 (h!67505 zl!343))))))

(assert (=> d!1706166 (= (contextDepthTotal!101 (h!67505 zl!343)) lt!2169447)))

(declare-fun b!5309215 () Bool)

(assert (=> b!5309215 (= e!3299278 (+ (regexDepthTotal!42 (h!67504 (exprs!4844 (h!67505 zl!343)))) (contextDepthTotal!101 (Context!8689 (t!374385 (exprs!4844 (h!67505 zl!343)))))))))

(declare-fun b!5309216 () Bool)

(assert (=> b!5309216 (= e!3299278 1)))

(assert (= (and d!1706166 c!922077) b!5309215))

(assert (= (and d!1706166 (not c!922077)) b!5309216))

(declare-fun m!6346488 () Bool)

(assert (=> b!5309215 m!6346488))

(declare-fun m!6346490 () Bool)

(assert (=> b!5309215 m!6346490))

(assert (=> b!5308582 d!1706166))

(declare-fun b!5309217 () Bool)

(declare-fun e!3299280 () (Set Context!8688))

(declare-fun call!378513 () (Set Context!8688))

(assert (=> b!5309217 (= e!3299280 call!378513)))

(declare-fun b!5309218 () Bool)

(assert (=> b!5309218 (= e!3299280 (as set.empty (Set Context!8688)))))

(declare-fun c!922081 () Bool)

(declare-fun call!378512 () List!61180)

(declare-fun bm!378504 () Bool)

(declare-fun c!922080 () Bool)

(assert (=> bm!378504 (= call!378512 ($colon$colon!1381 (exprs!4844 lt!2169170) (ite (or c!922080 c!922081) (regTwo!30432 (regTwo!30432 (regOne!30432 r!7292))) (regTwo!30432 (regOne!30432 r!7292)))))))

(declare-fun b!5309219 () Bool)

(declare-fun e!3299281 () (Set Context!8688))

(assert (=> b!5309219 (= e!3299281 call!378513)))

(declare-fun b!5309220 () Bool)

(declare-fun e!3299282 () (Set Context!8688))

(declare-fun call!378510 () (Set Context!8688))

(declare-fun call!378514 () (Set Context!8688))

(assert (=> b!5309220 (= e!3299282 (set.union call!378510 call!378514))))

(declare-fun bm!378505 () Bool)

(declare-fun call!378509 () List!61180)

(assert (=> bm!378505 (= call!378509 call!378512)))

(declare-fun b!5309221 () Bool)

(declare-fun e!3299284 () (Set Context!8688))

(assert (=> b!5309221 (= e!3299284 e!3299282)))

(declare-fun c!922082 () Bool)

(assert (=> b!5309221 (= c!922082 (is-Union!14960 (regTwo!30432 (regOne!30432 r!7292))))))

(declare-fun b!5309223 () Bool)

(declare-fun e!3299283 () Bool)

(assert (=> b!5309223 (= c!922080 e!3299283)))

(declare-fun res!2252315 () Bool)

(assert (=> b!5309223 (=> (not res!2252315) (not e!3299283))))

(assert (=> b!5309223 (= res!2252315 (is-Concat!23805 (regTwo!30432 (regOne!30432 r!7292))))))

(declare-fun e!3299279 () (Set Context!8688))

(assert (=> b!5309223 (= e!3299282 e!3299279)))

(declare-fun bm!378506 () Bool)

(assert (=> bm!378506 (= call!378514 (derivationStepZipperDown!408 (ite c!922082 (regTwo!30433 (regTwo!30432 (regOne!30432 r!7292))) (ite c!922080 (regTwo!30432 (regTwo!30432 (regOne!30432 r!7292))) (ite c!922081 (regOne!30432 (regTwo!30432 (regOne!30432 r!7292))) (reg!15289 (regTwo!30432 (regOne!30432 r!7292)))))) (ite (or c!922082 c!922080) lt!2169170 (Context!8689 call!378509)) (h!67503 s!2326)))))

(declare-fun b!5309224 () Bool)

(assert (=> b!5309224 (= e!3299284 (set.insert lt!2169170 (as set.empty (Set Context!8688))))))

(declare-fun b!5309225 () Bool)

(declare-fun call!378511 () (Set Context!8688))

(assert (=> b!5309225 (= e!3299279 (set.union call!378510 call!378511))))

(declare-fun b!5309226 () Bool)

(assert (=> b!5309226 (= e!3299283 (nullable!5129 (regOne!30432 (regTwo!30432 (regOne!30432 r!7292)))))))

(declare-fun bm!378507 () Bool)

(assert (=> bm!378507 (= call!378513 call!378511)))

(declare-fun bm!378508 () Bool)

(assert (=> bm!378508 (= call!378511 call!378514)))

(declare-fun bm!378509 () Bool)

(assert (=> bm!378509 (= call!378510 (derivationStepZipperDown!408 (ite c!922082 (regOne!30433 (regTwo!30432 (regOne!30432 r!7292))) (regOne!30432 (regTwo!30432 (regOne!30432 r!7292)))) (ite c!922082 lt!2169170 (Context!8689 call!378512)) (h!67503 s!2326)))))

(declare-fun b!5309227 () Bool)

(declare-fun c!922079 () Bool)

(assert (=> b!5309227 (= c!922079 (is-Star!14960 (regTwo!30432 (regOne!30432 r!7292))))))

(assert (=> b!5309227 (= e!3299281 e!3299280)))

(declare-fun d!1706168 () Bool)

(declare-fun c!922078 () Bool)

(assert (=> d!1706168 (= c!922078 (and (is-ElementMatch!14960 (regTwo!30432 (regOne!30432 r!7292))) (= (c!921918 (regTwo!30432 (regOne!30432 r!7292))) (h!67503 s!2326))))))

(assert (=> d!1706168 (= (derivationStepZipperDown!408 (regTwo!30432 (regOne!30432 r!7292)) lt!2169170 (h!67503 s!2326)) e!3299284)))

(declare-fun b!5309222 () Bool)

(assert (=> b!5309222 (= e!3299279 e!3299281)))

(assert (=> b!5309222 (= c!922081 (is-Concat!23805 (regTwo!30432 (regOne!30432 r!7292))))))

(assert (= (and d!1706168 c!922078) b!5309224))

(assert (= (and d!1706168 (not c!922078)) b!5309221))

(assert (= (and b!5309221 c!922082) b!5309220))

(assert (= (and b!5309221 (not c!922082)) b!5309223))

(assert (= (and b!5309223 res!2252315) b!5309226))

(assert (= (and b!5309223 c!922080) b!5309225))

(assert (= (and b!5309223 (not c!922080)) b!5309222))

(assert (= (and b!5309222 c!922081) b!5309219))

(assert (= (and b!5309222 (not c!922081)) b!5309227))

(assert (= (and b!5309227 c!922079) b!5309217))

(assert (= (and b!5309227 (not c!922079)) b!5309218))

(assert (= (or b!5309219 b!5309217) bm!378505))

(assert (= (or b!5309219 b!5309217) bm!378507))

(assert (= (or b!5309225 bm!378505) bm!378504))

(assert (= (or b!5309225 bm!378507) bm!378508))

(assert (= (or b!5309220 bm!378508) bm!378506))

(assert (= (or b!5309220 b!5309225) bm!378509))

(assert (=> b!5309224 m!6346448))

(declare-fun m!6346492 () Bool)

(assert (=> bm!378509 m!6346492))

(declare-fun m!6346494 () Bool)

(assert (=> bm!378504 m!6346494))

(declare-fun m!6346496 () Bool)

(assert (=> bm!378506 m!6346496))

(declare-fun m!6346498 () Bool)

(assert (=> b!5309226 m!6346498))

(assert (=> b!5308602 d!1706168))

(declare-fun b!5309228 () Bool)

(declare-fun e!3299286 () (Set Context!8688))

(declare-fun call!378519 () (Set Context!8688))

(assert (=> b!5309228 (= e!3299286 call!378519)))

(declare-fun b!5309229 () Bool)

(assert (=> b!5309229 (= e!3299286 (as set.empty (Set Context!8688)))))

(declare-fun c!922086 () Bool)

(declare-fun call!378518 () List!61180)

(declare-fun c!922085 () Bool)

(declare-fun bm!378510 () Bool)

(assert (=> bm!378510 (= call!378518 ($colon$colon!1381 (exprs!4844 lt!2169167) (ite (or c!922085 c!922086) (regTwo!30432 (regOne!30432 (regOne!30432 r!7292))) (regOne!30432 (regOne!30432 r!7292)))))))

(declare-fun b!5309230 () Bool)

(declare-fun e!3299287 () (Set Context!8688))

(assert (=> b!5309230 (= e!3299287 call!378519)))

(declare-fun b!5309231 () Bool)

(declare-fun e!3299288 () (Set Context!8688))

(declare-fun call!378516 () (Set Context!8688))

(declare-fun call!378520 () (Set Context!8688))

(assert (=> b!5309231 (= e!3299288 (set.union call!378516 call!378520))))

(declare-fun bm!378511 () Bool)

(declare-fun call!378515 () List!61180)

(assert (=> bm!378511 (= call!378515 call!378518)))

(declare-fun b!5309232 () Bool)

(declare-fun e!3299290 () (Set Context!8688))

(assert (=> b!5309232 (= e!3299290 e!3299288)))

(declare-fun c!922087 () Bool)

(assert (=> b!5309232 (= c!922087 (is-Union!14960 (regOne!30432 (regOne!30432 r!7292))))))

(declare-fun b!5309234 () Bool)

(declare-fun e!3299289 () Bool)

(assert (=> b!5309234 (= c!922085 e!3299289)))

(declare-fun res!2252316 () Bool)

(assert (=> b!5309234 (=> (not res!2252316) (not e!3299289))))

(assert (=> b!5309234 (= res!2252316 (is-Concat!23805 (regOne!30432 (regOne!30432 r!7292))))))

(declare-fun e!3299285 () (Set Context!8688))

(assert (=> b!5309234 (= e!3299288 e!3299285)))

(declare-fun bm!378512 () Bool)

(assert (=> bm!378512 (= call!378520 (derivationStepZipperDown!408 (ite c!922087 (regTwo!30433 (regOne!30432 (regOne!30432 r!7292))) (ite c!922085 (regTwo!30432 (regOne!30432 (regOne!30432 r!7292))) (ite c!922086 (regOne!30432 (regOne!30432 (regOne!30432 r!7292))) (reg!15289 (regOne!30432 (regOne!30432 r!7292)))))) (ite (or c!922087 c!922085) lt!2169167 (Context!8689 call!378515)) (h!67503 s!2326)))))

(declare-fun b!5309235 () Bool)

(assert (=> b!5309235 (= e!3299290 (set.insert lt!2169167 (as set.empty (Set Context!8688))))))

(declare-fun b!5309236 () Bool)

(declare-fun call!378517 () (Set Context!8688))

(assert (=> b!5309236 (= e!3299285 (set.union call!378516 call!378517))))

(declare-fun b!5309237 () Bool)

(assert (=> b!5309237 (= e!3299289 (nullable!5129 (regOne!30432 (regOne!30432 (regOne!30432 r!7292)))))))

(declare-fun bm!378513 () Bool)

(assert (=> bm!378513 (= call!378519 call!378517)))

(declare-fun bm!378514 () Bool)

(assert (=> bm!378514 (= call!378517 call!378520)))

(declare-fun bm!378515 () Bool)

(assert (=> bm!378515 (= call!378516 (derivationStepZipperDown!408 (ite c!922087 (regOne!30433 (regOne!30432 (regOne!30432 r!7292))) (regOne!30432 (regOne!30432 (regOne!30432 r!7292)))) (ite c!922087 lt!2169167 (Context!8689 call!378518)) (h!67503 s!2326)))))

(declare-fun b!5309238 () Bool)

(declare-fun c!922084 () Bool)

(assert (=> b!5309238 (= c!922084 (is-Star!14960 (regOne!30432 (regOne!30432 r!7292))))))

(assert (=> b!5309238 (= e!3299287 e!3299286)))

(declare-fun d!1706170 () Bool)

(declare-fun c!922083 () Bool)

(assert (=> d!1706170 (= c!922083 (and (is-ElementMatch!14960 (regOne!30432 (regOne!30432 r!7292))) (= (c!921918 (regOne!30432 (regOne!30432 r!7292))) (h!67503 s!2326))))))

(assert (=> d!1706170 (= (derivationStepZipperDown!408 (regOne!30432 (regOne!30432 r!7292)) lt!2169167 (h!67503 s!2326)) e!3299290)))

(declare-fun b!5309233 () Bool)

(assert (=> b!5309233 (= e!3299285 e!3299287)))

(assert (=> b!5309233 (= c!922086 (is-Concat!23805 (regOne!30432 (regOne!30432 r!7292))))))

(assert (= (and d!1706170 c!922083) b!5309235))

(assert (= (and d!1706170 (not c!922083)) b!5309232))

(assert (= (and b!5309232 c!922087) b!5309231))

(assert (= (and b!5309232 (not c!922087)) b!5309234))

(assert (= (and b!5309234 res!2252316) b!5309237))

(assert (= (and b!5309234 c!922085) b!5309236))

(assert (= (and b!5309234 (not c!922085)) b!5309233))

(assert (= (and b!5309233 c!922086) b!5309230))

(assert (= (and b!5309233 (not c!922086)) b!5309238))

(assert (= (and b!5309238 c!922084) b!5309228))

(assert (= (and b!5309238 (not c!922084)) b!5309229))

(assert (= (or b!5309230 b!5309228) bm!378511))

(assert (= (or b!5309230 b!5309228) bm!378513))

(assert (= (or b!5309236 bm!378511) bm!378510))

(assert (= (or b!5309236 bm!378513) bm!378514))

(assert (= (or b!5309231 bm!378514) bm!378512))

(assert (= (or b!5309231 b!5309236) bm!378515))

(assert (=> b!5309235 m!6345750))

(declare-fun m!6346500 () Bool)

(assert (=> bm!378515 m!6346500))

(declare-fun m!6346502 () Bool)

(assert (=> bm!378510 m!6346502))

(declare-fun m!6346504 () Bool)

(assert (=> bm!378512 m!6346504))

(declare-fun m!6346506 () Bool)

(assert (=> b!5309237 m!6346506))

(assert (=> b!5308602 d!1706170))

(declare-fun bs!1231033 () Bool)

(declare-fun d!1706172 () Bool)

(assert (= bs!1231033 (and d!1706172 d!1706054)))

(declare-fun lambda!270348 () Int)

(assert (=> bs!1231033 (= lambda!270348 lambda!270304)))

(declare-fun bs!1231034 () Bool)

(assert (= bs!1231034 (and d!1706172 d!1706080)))

(assert (=> bs!1231034 (= lambda!270348 lambda!270318)))

(declare-fun bs!1231035 () Bool)

(assert (= bs!1231035 (and d!1706172 d!1706148)))

(assert (=> bs!1231035 (= lambda!270348 lambda!270347)))

(declare-fun bs!1231036 () Bool)

(assert (= bs!1231036 (and d!1706172 d!1706050)))

(assert (=> bs!1231036 (= lambda!270348 lambda!270301)))

(declare-fun bs!1231037 () Bool)

(assert (= bs!1231037 (and d!1706172 d!1706056)))

(assert (=> bs!1231037 (= lambda!270348 lambda!270307)))

(declare-fun bs!1231038 () Bool)

(assert (= bs!1231038 (and d!1706172 d!1706060)))

(assert (=> bs!1231038 (= lambda!270348 lambda!270308)))

(declare-fun bs!1231039 () Bool)

(assert (= bs!1231039 (and d!1706172 b!5308601)))

(assert (=> bs!1231039 (= lambda!270348 lambda!270261)))

(declare-fun bs!1231040 () Bool)

(assert (= bs!1231040 (and d!1706172 d!1706100)))

(assert (=> bs!1231040 (= lambda!270348 lambda!270322)))

(assert (=> d!1706172 (= (inv!80648 setElem!34130) (forall!14376 (exprs!4844 setElem!34130) lambda!270348))))

(declare-fun bs!1231041 () Bool)

(assert (= bs!1231041 d!1706172))

(declare-fun m!6346508 () Bool)

(assert (=> bs!1231041 m!6346508))

(assert (=> setNonEmpty!34130 d!1706172))

(declare-fun d!1706174 () Bool)

(assert (=> d!1706174 (= (isEmpty!33018 (t!374386 zl!343)) (is-Nil!61057 (t!374386 zl!343)))))

(assert (=> b!5308606 d!1706174))

(assert (=> b!5308585 d!1706040))

(declare-fun b!5309239 () Bool)

(declare-fun e!3299292 () (Set Context!8688))

(declare-fun call!378521 () (Set Context!8688))

(assert (=> b!5309239 (= e!3299292 call!378521)))

(declare-fun e!3299291 () (Set Context!8688))

(declare-fun b!5309240 () Bool)

(assert (=> b!5309240 (= e!3299291 (set.union call!378521 (derivationStepZipperUp!332 (Context!8689 (t!374385 (exprs!4844 lt!2169202))) (h!67503 s!2326))))))

(declare-fun d!1706176 () Bool)

(declare-fun c!922088 () Bool)

(declare-fun e!3299293 () Bool)

(assert (=> d!1706176 (= c!922088 e!3299293)))

(declare-fun res!2252317 () Bool)

(assert (=> d!1706176 (=> (not res!2252317) (not e!3299293))))

(assert (=> d!1706176 (= res!2252317 (is-Cons!61056 (exprs!4844 lt!2169202)))))

(assert (=> d!1706176 (= (derivationStepZipperUp!332 lt!2169202 (h!67503 s!2326)) e!3299291)))

(declare-fun b!5309241 () Bool)

(assert (=> b!5309241 (= e!3299292 (as set.empty (Set Context!8688)))))

(declare-fun bm!378516 () Bool)

(assert (=> bm!378516 (= call!378521 (derivationStepZipperDown!408 (h!67504 (exprs!4844 lt!2169202)) (Context!8689 (t!374385 (exprs!4844 lt!2169202))) (h!67503 s!2326)))))

(declare-fun b!5309242 () Bool)

(assert (=> b!5309242 (= e!3299291 e!3299292)))

(declare-fun c!922089 () Bool)

(assert (=> b!5309242 (= c!922089 (is-Cons!61056 (exprs!4844 lt!2169202)))))

(declare-fun b!5309243 () Bool)

(assert (=> b!5309243 (= e!3299293 (nullable!5129 (h!67504 (exprs!4844 lt!2169202))))))

(assert (= (and d!1706176 res!2252317) b!5309243))

(assert (= (and d!1706176 c!922088) b!5309240))

(assert (= (and d!1706176 (not c!922088)) b!5309242))

(assert (= (and b!5309242 c!922089) b!5309239))

(assert (= (and b!5309242 (not c!922089)) b!5309241))

(assert (= (or b!5309240 b!5309239) bm!378516))

(declare-fun m!6346510 () Bool)

(assert (=> b!5309240 m!6346510))

(declare-fun m!6346512 () Bool)

(assert (=> bm!378516 m!6346512))

(declare-fun m!6346514 () Bool)

(assert (=> b!5309243 m!6346514))

(assert (=> b!5308579 d!1706176))

(declare-fun d!1706178 () Bool)

(assert (=> d!1706178 (= (flatMap!687 lt!2169199 lambda!270256) (dynLambda!24132 lambda!270256 lt!2169202))))

(declare-fun lt!2169448 () Unit!153358)

(assert (=> d!1706178 (= lt!2169448 (choose!39704 lt!2169199 lt!2169202 lambda!270256))))

(assert (=> d!1706178 (= lt!2169199 (set.insert lt!2169202 (as set.empty (Set Context!8688))))))

(assert (=> d!1706178 (= (lemmaFlatMapOnSingletonSet!219 lt!2169199 lt!2169202 lambda!270256) lt!2169448)))

(declare-fun b_lambda!204377 () Bool)

(assert (=> (not b_lambda!204377) (not d!1706178)))

(declare-fun bs!1231042 () Bool)

(assert (= bs!1231042 d!1706178))

(assert (=> bs!1231042 m!6345756))

(declare-fun m!6346516 () Bool)

(assert (=> bs!1231042 m!6346516))

(declare-fun m!6346518 () Bool)

(assert (=> bs!1231042 m!6346518))

(assert (=> bs!1231042 m!6345760))

(assert (=> b!5308579 d!1706178))

(assert (=> b!5308579 d!1706118))

(declare-fun bs!1231043 () Bool)

(declare-fun d!1706180 () Bool)

(assert (= bs!1231043 (and d!1706180 b!5308604)))

(declare-fun lambda!270349 () Int)

(assert (=> bs!1231043 (= lambda!270349 lambda!270256)))

(declare-fun bs!1231044 () Bool)

(assert (= bs!1231044 (and d!1706180 d!1706044)))

(assert (=> bs!1231044 (= lambda!270349 lambda!270298)))

(assert (=> d!1706180 true))

(assert (=> d!1706180 (= (derivationStepZipper!1203 lt!2169199 (h!67503 s!2326)) (flatMap!687 lt!2169199 lambda!270349))))

(declare-fun bs!1231045 () Bool)

(assert (= bs!1231045 d!1706180))

(declare-fun m!6346520 () Bool)

(assert (=> bs!1231045 m!6346520))

(assert (=> b!5308579 d!1706180))

(declare-fun d!1706182 () Bool)

(assert (=> d!1706182 (= (flatMap!687 lt!2169199 lambda!270256) (choose!39705 lt!2169199 lambda!270256))))

(declare-fun bs!1231046 () Bool)

(assert (= bs!1231046 d!1706182))

(declare-fun m!6346522 () Bool)

(assert (=> bs!1231046 m!6346522))

(assert (=> b!5308579 d!1706182))

(declare-fun d!1706184 () Bool)

(declare-fun lt!2169451 () Int)

(assert (=> d!1706184 (>= lt!2169451 0)))

(declare-fun e!3299296 () Int)

(assert (=> d!1706184 (= lt!2169451 e!3299296)))

(declare-fun c!922092 () Bool)

(assert (=> d!1706184 (= c!922092 (is-Cons!61057 lt!2169168))))

(assert (=> d!1706184 (= (zipperDepthTotal!121 lt!2169168) lt!2169451)))

(declare-fun b!5309248 () Bool)

(assert (=> b!5309248 (= e!3299296 (+ (contextDepthTotal!101 (h!67505 lt!2169168)) (zipperDepthTotal!121 (t!374386 lt!2169168))))))

(declare-fun b!5309249 () Bool)

(assert (=> b!5309249 (= e!3299296 0)))

(assert (= (and d!1706184 c!922092) b!5309248))

(assert (= (and d!1706184 (not c!922092)) b!5309249))

(declare-fun m!6346524 () Bool)

(assert (=> b!5309248 m!6346524))

(declare-fun m!6346526 () Bool)

(assert (=> b!5309248 m!6346526))

(assert (=> b!5308598 d!1706184))

(declare-fun d!1706186 () Bool)

(declare-fun lt!2169452 () Int)

(assert (=> d!1706186 (>= lt!2169452 0)))

(declare-fun e!3299297 () Int)

(assert (=> d!1706186 (= lt!2169452 e!3299297)))

(declare-fun c!922093 () Bool)

(assert (=> d!1706186 (= c!922093 (is-Cons!61057 zl!343))))

(assert (=> d!1706186 (= (zipperDepthTotal!121 zl!343) lt!2169452)))

(declare-fun b!5309250 () Bool)

(assert (=> b!5309250 (= e!3299297 (+ (contextDepthTotal!101 (h!67505 zl!343)) (zipperDepthTotal!121 (t!374386 zl!343))))))

(declare-fun b!5309251 () Bool)

(assert (=> b!5309251 (= e!3299297 0)))

(assert (= (and d!1706186 c!922093) b!5309250))

(assert (= (and d!1706186 (not c!922093)) b!5309251))

(assert (=> b!5309250 m!6345814))

(declare-fun m!6346528 () Bool)

(assert (=> b!5309250 m!6346528))

(assert (=> b!5308598 d!1706186))

(declare-fun d!1706188 () Bool)

(assert (=> d!1706188 (= (isEmpty!33017 (t!374385 (exprs!4844 (h!67505 zl!343)))) (is-Nil!61056 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> b!5308599 d!1706188))

(declare-fun bm!378523 () Bool)

(declare-fun call!378530 () Bool)

(declare-fun c!922098 () Bool)

(assert (=> bm!378523 (= call!378530 (validRegex!6696 (ite c!922098 (regTwo!30433 r!7292) (regTwo!30432 r!7292))))))

(declare-fun b!5309270 () Bool)

(declare-fun e!3299315 () Bool)

(declare-fun e!3299312 () Bool)

(assert (=> b!5309270 (= e!3299315 e!3299312)))

(declare-fun c!922099 () Bool)

(assert (=> b!5309270 (= c!922099 (is-Star!14960 r!7292))))

(declare-fun d!1706190 () Bool)

(declare-fun res!2252329 () Bool)

(assert (=> d!1706190 (=> res!2252329 e!3299315)))

(assert (=> d!1706190 (= res!2252329 (is-ElementMatch!14960 r!7292))))

(assert (=> d!1706190 (= (validRegex!6696 r!7292) e!3299315)))

(declare-fun b!5309271 () Bool)

(declare-fun e!3299316 () Bool)

(assert (=> b!5309271 (= e!3299316 call!378530)))

(declare-fun b!5309272 () Bool)

(declare-fun e!3299318 () Bool)

(assert (=> b!5309272 (= e!3299318 e!3299316)))

(declare-fun res!2252328 () Bool)

(assert (=> b!5309272 (=> (not res!2252328) (not e!3299316))))

(declare-fun call!378528 () Bool)

(assert (=> b!5309272 (= res!2252328 call!378528)))

(declare-fun bm!378524 () Bool)

(declare-fun call!378529 () Bool)

(assert (=> bm!378524 (= call!378528 call!378529)))

(declare-fun b!5309273 () Bool)

(declare-fun e!3299313 () Bool)

(assert (=> b!5309273 (= e!3299313 call!378529)))

(declare-fun b!5309274 () Bool)

(assert (=> b!5309274 (= e!3299312 e!3299313)))

(declare-fun res!2252330 () Bool)

(assert (=> b!5309274 (= res!2252330 (not (nullable!5129 (reg!15289 r!7292))))))

(assert (=> b!5309274 (=> (not res!2252330) (not e!3299313))))

(declare-fun b!5309275 () Bool)

(declare-fun e!3299317 () Bool)

(assert (=> b!5309275 (= e!3299312 e!3299317)))

(assert (=> b!5309275 (= c!922098 (is-Union!14960 r!7292))))

(declare-fun bm!378525 () Bool)

(assert (=> bm!378525 (= call!378529 (validRegex!6696 (ite c!922099 (reg!15289 r!7292) (ite c!922098 (regOne!30433 r!7292) (regOne!30432 r!7292)))))))

(declare-fun b!5309276 () Bool)

(declare-fun e!3299314 () Bool)

(assert (=> b!5309276 (= e!3299314 call!378530)))

(declare-fun b!5309277 () Bool)

(declare-fun res!2252331 () Bool)

(assert (=> b!5309277 (=> (not res!2252331) (not e!3299314))))

(assert (=> b!5309277 (= res!2252331 call!378528)))

(assert (=> b!5309277 (= e!3299317 e!3299314)))

(declare-fun b!5309278 () Bool)

(declare-fun res!2252332 () Bool)

(assert (=> b!5309278 (=> res!2252332 e!3299318)))

(assert (=> b!5309278 (= res!2252332 (not (is-Concat!23805 r!7292)))))

(assert (=> b!5309278 (= e!3299317 e!3299318)))

(assert (= (and d!1706190 (not res!2252329)) b!5309270))

(assert (= (and b!5309270 c!922099) b!5309274))

(assert (= (and b!5309270 (not c!922099)) b!5309275))

(assert (= (and b!5309274 res!2252330) b!5309273))

(assert (= (and b!5309275 c!922098) b!5309277))

(assert (= (and b!5309275 (not c!922098)) b!5309278))

(assert (= (and b!5309277 res!2252331) b!5309276))

(assert (= (and b!5309278 (not res!2252332)) b!5309272))

(assert (= (and b!5309272 res!2252328) b!5309271))

(assert (= (or b!5309276 b!5309271) bm!378523))

(assert (= (or b!5309277 b!5309272) bm!378524))

(assert (= (or b!5309273 bm!378524) bm!378525))

(declare-fun m!6346530 () Bool)

(assert (=> bm!378523 m!6346530))

(declare-fun m!6346532 () Bool)

(assert (=> b!5309274 m!6346532))

(declare-fun m!6346534 () Bool)

(assert (=> bm!378525 m!6346534))

(assert (=> start!559792 d!1706190))

(declare-fun d!1706192 () Bool)

(declare-fun res!2252337 () Bool)

(declare-fun e!3299323 () Bool)

(assert (=> d!1706192 (=> res!2252337 e!3299323)))

(assert (=> d!1706192 (= res!2252337 (is-Nil!61056 (t!374385 (exprs!4844 (h!67505 zl!343)))))))

(assert (=> d!1706192 (= (forall!14376 (t!374385 (exprs!4844 (h!67505 zl!343))) lambda!270261) e!3299323)))

(declare-fun b!5309283 () Bool)

(declare-fun e!3299324 () Bool)

(assert (=> b!5309283 (= e!3299323 e!3299324)))

(declare-fun res!2252338 () Bool)

(assert (=> b!5309283 (=> (not res!2252338) (not e!3299324))))

(declare-fun dynLambda!24133 (Int Regex!14960) Bool)

(assert (=> b!5309283 (= res!2252338 (dynLambda!24133 lambda!270261 (h!67504 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun b!5309284 () Bool)

(assert (=> b!5309284 (= e!3299324 (forall!14376 (t!374385 (t!374385 (exprs!4844 (h!67505 zl!343)))) lambda!270261))))

(assert (= (and d!1706192 (not res!2252337)) b!5309283))

(assert (= (and b!5309283 res!2252338) b!5309284))

(declare-fun b_lambda!204379 () Bool)

(assert (=> (not b_lambda!204379) (not b!5309283)))

(declare-fun m!6346536 () Bool)

(assert (=> b!5309283 m!6346536))

(declare-fun m!6346538 () Bool)

(assert (=> b!5309284 m!6346538))

(assert (=> b!5308601 d!1706192))

(declare-fun b!5309285 () Bool)

(declare-fun e!3299327 () Bool)

(declare-fun lt!2169453 () Bool)

(assert (=> b!5309285 (= e!3299327 (not lt!2169453))))

(declare-fun b!5309286 () Bool)

(declare-fun e!3299329 () Bool)

(assert (=> b!5309286 (= e!3299329 (not (= (head!11380 s!2326) (c!921918 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173))))))))

(declare-fun b!5309287 () Bool)

(declare-fun res!2252344 () Bool)

(assert (=> b!5309287 (=> res!2252344 e!3299329)))

(assert (=> b!5309287 (= res!2252344 (not (isEmpty!33021 (tail!10477 s!2326))))))

(declare-fun b!5309288 () Bool)

(declare-fun e!3299331 () Bool)

(assert (=> b!5309288 (= e!3299331 (matchR!7145 (derivativeStep!4152 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)) (head!11380 s!2326)) (tail!10477 s!2326)))))

(declare-fun d!1706194 () Bool)

(declare-fun e!3299326 () Bool)

(assert (=> d!1706194 e!3299326))

(declare-fun c!922100 () Bool)

(assert (=> d!1706194 (= c!922100 (is-EmptyExpr!14960 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173))))))

(assert (=> d!1706194 (= lt!2169453 e!3299331)))

(declare-fun c!922102 () Bool)

(assert (=> d!1706194 (= c!922102 (isEmpty!33021 s!2326))))

(assert (=> d!1706194 (validRegex!6696 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)))))

(assert (=> d!1706194 (= (matchR!7145 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)) s!2326) lt!2169453)))

(declare-fun b!5309289 () Bool)

(declare-fun e!3299328 () Bool)

(assert (=> b!5309289 (= e!3299328 (= (head!11380 s!2326) (c!921918 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)))))))

(declare-fun bm!378526 () Bool)

(declare-fun call!378531 () Bool)

(assert (=> bm!378526 (= call!378531 (isEmpty!33021 s!2326))))

(declare-fun b!5309290 () Bool)

(declare-fun e!3299325 () Bool)

(assert (=> b!5309290 (= e!3299325 e!3299329)))

(declare-fun res!2252342 () Bool)

(assert (=> b!5309290 (=> res!2252342 e!3299329)))

(assert (=> b!5309290 (= res!2252342 call!378531)))

(declare-fun b!5309291 () Bool)

(assert (=> b!5309291 (= e!3299326 e!3299327)))

(declare-fun c!922101 () Bool)

(assert (=> b!5309291 (= c!922101 (is-EmptyLang!14960 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173))))))

(declare-fun b!5309292 () Bool)

(assert (=> b!5309292 (= e!3299326 (= lt!2169453 call!378531))))

(declare-fun b!5309293 () Bool)

(declare-fun e!3299330 () Bool)

(assert (=> b!5309293 (= e!3299330 e!3299325)))

(declare-fun res!2252343 () Bool)

(assert (=> b!5309293 (=> (not res!2252343) (not e!3299325))))

(assert (=> b!5309293 (= res!2252343 (not lt!2169453))))

(declare-fun b!5309294 () Bool)

(assert (=> b!5309294 (= e!3299331 (nullable!5129 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173))))))

(declare-fun b!5309295 () Bool)

(declare-fun res!2252341 () Bool)

(assert (=> b!5309295 (=> (not res!2252341) (not e!3299328))))

(assert (=> b!5309295 (= res!2252341 (not call!378531))))

(declare-fun b!5309296 () Bool)

(declare-fun res!2252340 () Bool)

(assert (=> b!5309296 (=> res!2252340 e!3299330)))

(assert (=> b!5309296 (= res!2252340 e!3299328)))

(declare-fun res!2252346 () Bool)

(assert (=> b!5309296 (=> (not res!2252346) (not e!3299328))))

(assert (=> b!5309296 (= res!2252346 lt!2169453)))

(declare-fun b!5309297 () Bool)

(declare-fun res!2252345 () Bool)

(assert (=> b!5309297 (=> res!2252345 e!3299330)))

(assert (=> b!5309297 (= res!2252345 (not (is-ElementMatch!14960 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)))))))

(assert (=> b!5309297 (= e!3299327 e!3299330)))

(declare-fun b!5309298 () Bool)

(declare-fun res!2252339 () Bool)

(assert (=> b!5309298 (=> (not res!2252339) (not e!3299328))))

(assert (=> b!5309298 (= res!2252339 (isEmpty!33021 (tail!10477 s!2326)))))

(assert (= (and d!1706194 c!922102) b!5309294))

(assert (= (and d!1706194 (not c!922102)) b!5309288))

(assert (= (and d!1706194 c!922100) b!5309292))

(assert (= (and d!1706194 (not c!922100)) b!5309291))

(assert (= (and b!5309291 c!922101) b!5309285))

(assert (= (and b!5309291 (not c!922101)) b!5309297))

(assert (= (and b!5309297 (not res!2252345)) b!5309296))

(assert (= (and b!5309296 res!2252346) b!5309295))

(assert (= (and b!5309295 res!2252341) b!5309298))

(assert (= (and b!5309298 res!2252339) b!5309289))

(assert (= (and b!5309296 (not res!2252340)) b!5309293))

(assert (= (and b!5309293 res!2252343) b!5309290))

(assert (= (and b!5309290 (not res!2252342)) b!5309287))

(assert (= (and b!5309287 (not res!2252344)) b!5309286))

(assert (= (or b!5309292 b!5309295 b!5309290) bm!378526))

(assert (=> b!5309289 m!6346108))

(assert (=> bm!378526 m!6346110))

(assert (=> b!5309287 m!6346112))

(assert (=> b!5309287 m!6346112))

(assert (=> b!5309287 m!6346114))

(assert (=> b!5309286 m!6346108))

(assert (=> d!1706194 m!6346110))

(declare-fun m!6346540 () Bool)

(assert (=> d!1706194 m!6346540))

(declare-fun m!6346542 () Bool)

(assert (=> b!5309294 m!6346542))

(assert (=> b!5309288 m!6346108))

(assert (=> b!5309288 m!6346108))

(declare-fun m!6346544 () Bool)

(assert (=> b!5309288 m!6346544))

(assert (=> b!5309288 m!6346112))

(assert (=> b!5309288 m!6346544))

(assert (=> b!5309288 m!6346112))

(declare-fun m!6346546 () Bool)

(assert (=> b!5309288 m!6346546))

(assert (=> b!5309298 m!6346112))

(assert (=> b!5309298 m!6346112))

(assert (=> b!5309298 m!6346114))

(assert (=> b!5308601 d!1706194))

(declare-fun d!1706196 () Bool)

(assert (=> d!1706196 (= (matchR!7145 (Concat!23805 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292))) lt!2169173) s!2326) (matchR!7145 (Concat!23805 (regOne!30432 (regOne!30432 r!7292)) (Concat!23805 (regTwo!30432 (regOne!30432 r!7292)) lt!2169173)) s!2326))))

(declare-fun lt!2169456 () Unit!153358)

(declare-fun choose!39712 (Regex!14960 Regex!14960 Regex!14960 List!61179) Unit!153358)

(assert (=> d!1706196 (= lt!2169456 (choose!39712 (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326))))

(declare-fun e!3299334 () Bool)

(assert (=> d!1706196 e!3299334))

(declare-fun res!2252351 () Bool)

(assert (=> d!1706196 (=> (not res!2252351) (not e!3299334))))

(assert (=> d!1706196 (= res!2252351 (validRegex!6696 (regOne!30432 (regOne!30432 r!7292))))))

(assert (=> d!1706196 (= (lemmaConcatAssociative!1 (regOne!30432 (regOne!30432 r!7292)) (regTwo!30432 (regOne!30432 r!7292)) lt!2169173 s!2326) lt!2169456)))

(declare-fun b!5309303 () Bool)

(declare-fun res!2252352 () Bool)

(assert (=> b!5309303 (=> (not res!2252352) (not e!3299334))))

(assert (=> b!5309303 (= res!2252352 (validRegex!6696 (regTwo!30432 (regOne!30432 r!7292))))))

(declare-fun b!5309304 () Bool)

(assert (=> b!5309304 (= e!3299334 (validRegex!6696 lt!2169173))))

(assert (= (and d!1706196 res!2252351) b!5309303))

(assert (= (and b!5309303 res!2252352) b!5309304))

(declare-fun m!6346548 () Bool)

(assert (=> d!1706196 m!6346548))

(assert (=> d!1706196 m!6345818))

(declare-fun m!6346550 () Bool)

(assert (=> d!1706196 m!6346550))

(assert (=> d!1706196 m!6346230))

(assert (=> b!5309303 m!6346190))

(declare-fun m!6346552 () Bool)

(assert (=> b!5309304 m!6346552))

(assert (=> b!5308601 d!1706196))

(declare-fun b!5309305 () Bool)

(declare-fun res!2252353 () Bool)

(declare-fun e!3299339 () Bool)

(assert (=> b!5309305 (=> (not res!2252353) (not e!3299339))))

(declare-fun lt!2169458 () Option!15071)

(assert (=> b!5309305 (= res!2252353 (matchR!7145 (regTwo!30432 r!7292) (_2!35462 (get!20997 lt!2169458))))))

(declare-fun b!5309306 () Bool)

(declare-fun e!3299335 () Bool)

(assert (=> b!5309306 (= e!3299335 (matchR!7145 (regTwo!30432 r!7292) s!2326))))

(declare-fun b!5309307 () Bool)

(declare-fun e!3299336 () Bool)

(assert (=> b!5309307 (= e!3299336 (not (isDefined!11774 lt!2169458)))))

(declare-fun b!5309308 () Bool)

(declare-fun lt!2169457 () Unit!153358)

(declare-fun lt!2169459 () Unit!153358)

(assert (=> b!5309308 (= lt!2169457 lt!2169459)))

(assert (=> b!5309308 (= (++!13311 (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326)) s!2326)))

(assert (=> b!5309308 (= lt!2169459 (lemmaMoveElementToOtherListKeepsConcatEq!1726 Nil!61055 (h!67503 s!2326) (t!374384 s!2326) s!2326))))

(declare-fun e!3299337 () Option!15071)

(assert (=> b!5309308 (= e!3299337 (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) (++!13311 Nil!61055 (Cons!61055 (h!67503 s!2326) Nil!61055)) (t!374384 s!2326) s!2326))))

(declare-fun b!5309309 () Bool)

(assert (=> b!5309309 (= e!3299339 (= (++!13311 (_1!35462 (get!20997 lt!2169458)) (_2!35462 (get!20997 lt!2169458))) s!2326))))

(declare-fun b!5309310 () Bool)

(declare-fun res!2252356 () Bool)

(assert (=> b!5309310 (=> (not res!2252356) (not e!3299339))))

(assert (=> b!5309310 (= res!2252356 (matchR!7145 (regOne!30432 r!7292) (_1!35462 (get!20997 lt!2169458))))))

(declare-fun d!1706198 () Bool)

(assert (=> d!1706198 e!3299336))

(declare-fun res!2252355 () Bool)

(assert (=> d!1706198 (=> res!2252355 e!3299336)))

(assert (=> d!1706198 (= res!2252355 e!3299339)))

(declare-fun res!2252354 () Bool)

(assert (=> d!1706198 (=> (not res!2252354) (not e!3299339))))

(assert (=> d!1706198 (= res!2252354 (isDefined!11774 lt!2169458))))

(declare-fun e!3299338 () Option!15071)

(assert (=> d!1706198 (= lt!2169458 e!3299338)))

(declare-fun c!922103 () Bool)

(assert (=> d!1706198 (= c!922103 e!3299335)))

(declare-fun res!2252357 () Bool)

(assert (=> d!1706198 (=> (not res!2252357) (not e!3299335))))

(assert (=> d!1706198 (= res!2252357 (matchR!7145 (regOne!30432 r!7292) Nil!61055))))

(assert (=> d!1706198 (validRegex!6696 (regOne!30432 r!7292))))

(assert (=> d!1706198 (= (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) Nil!61055 s!2326 s!2326) lt!2169458)))

(declare-fun b!5309311 () Bool)

(assert (=> b!5309311 (= e!3299338 (Some!15070 (tuple2!64319 Nil!61055 s!2326)))))

(declare-fun b!5309312 () Bool)

(assert (=> b!5309312 (= e!3299338 e!3299337)))

(declare-fun c!922104 () Bool)

(assert (=> b!5309312 (= c!922104 (is-Nil!61055 s!2326))))

(declare-fun b!5309313 () Bool)

(assert (=> b!5309313 (= e!3299337 None!15070)))

(assert (= (and d!1706198 res!2252357) b!5309306))

(assert (= (and d!1706198 c!922103) b!5309311))

(assert (= (and d!1706198 (not c!922103)) b!5309312))

(assert (= (and b!5309312 c!922104) b!5309313))

(assert (= (and b!5309312 (not c!922104)) b!5309308))

(assert (= (and d!1706198 res!2252354) b!5309310))

(assert (= (and b!5309310 res!2252356) b!5309305))

(assert (= (and b!5309305 res!2252353) b!5309309))

(assert (= (and d!1706198 (not res!2252355)) b!5309307))

(declare-fun m!6346554 () Bool)

(assert (=> d!1706198 m!6346554))

(declare-fun m!6346556 () Bool)

(assert (=> d!1706198 m!6346556))

(declare-fun m!6346558 () Bool)

(assert (=> d!1706198 m!6346558))

(declare-fun m!6346560 () Bool)

(assert (=> b!5309309 m!6346560))

(declare-fun m!6346562 () Bool)

(assert (=> b!5309309 m!6346562))

(assert (=> b!5309308 m!6346244))

(assert (=> b!5309308 m!6346244))

(assert (=> b!5309308 m!6346246))

(assert (=> b!5309308 m!6346248))

(assert (=> b!5309308 m!6346244))

(declare-fun m!6346564 () Bool)

(assert (=> b!5309308 m!6346564))

(declare-fun m!6346566 () Bool)

(assert (=> b!5309306 m!6346566))

(assert (=> b!5309307 m!6346554))

(assert (=> b!5309310 m!6346560))

(declare-fun m!6346568 () Bool)

(assert (=> b!5309310 m!6346568))

(assert (=> b!5309305 m!6346560))

(declare-fun m!6346570 () Bool)

(assert (=> b!5309305 m!6346570))

(assert (=> b!5308581 d!1706198))

(declare-fun d!1706200 () Bool)

(assert (=> d!1706200 (= (Exists!2141 lambda!270254) (choose!39698 lambda!270254))))

(declare-fun bs!1231047 () Bool)

(assert (= bs!1231047 d!1706200))

(declare-fun m!6346572 () Bool)

(assert (=> bs!1231047 m!6346572))

(assert (=> b!5308581 d!1706200))

(declare-fun d!1706202 () Bool)

(assert (=> d!1706202 (= (Exists!2141 lambda!270255) (choose!39698 lambda!270255))))

(declare-fun bs!1231048 () Bool)

(assert (= bs!1231048 d!1706202))

(declare-fun m!6346574 () Bool)

(assert (=> bs!1231048 m!6346574))

(assert (=> b!5308581 d!1706202))

(declare-fun bs!1231049 () Bool)

(declare-fun d!1706204 () Bool)

(assert (= bs!1231049 (and d!1706204 d!1706106)))

(declare-fun lambda!270350 () Int)

(assert (=> bs!1231049 (not (= lambda!270350 lambda!270328))))

(declare-fun bs!1231050 () Bool)

(assert (= bs!1231050 (and d!1706204 d!1706108)))

(assert (=> bs!1231050 (not (= lambda!270350 lambda!270330))))

(declare-fun bs!1231051 () Bool)

(assert (= bs!1231051 (and d!1706204 b!5308581)))

(assert (=> bs!1231051 (= lambda!270350 lambda!270254)))

(declare-fun bs!1231052 () Bool)

(assert (= bs!1231052 (and d!1706204 d!1706082)))

(assert (=> bs!1231052 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270350 lambda!270319))))

(assert (=> bs!1231051 (not (= lambda!270350 lambda!270255))))

(declare-fun bs!1231053 () Bool)

(assert (= bs!1231053 (and d!1706204 b!5309018)))

(assert (=> bs!1231053 (not (= lambda!270350 lambda!270321))))

(declare-fun bs!1231054 () Bool)

(assert (= bs!1231054 (and d!1706204 b!5308594)))

(assert (=> bs!1231054 (not (= lambda!270350 lambda!270260))))

(assert (=> bs!1231050 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270350 lambda!270329))))

(declare-fun bs!1231055 () Bool)

(assert (= bs!1231055 (and d!1706204 d!1706072)))

(assert (=> bs!1231055 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270350 lambda!270317))))

(declare-fun bs!1231056 () Bool)

(assert (= bs!1231056 (and d!1706204 b!5308936)))

(assert (=> bs!1231056 (not (= lambda!270350 lambda!270314))))

(assert (=> bs!1231054 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270350 lambda!270259))))

(assert (=> bs!1231054 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270350 lambda!270257))))

(declare-fun bs!1231057 () Bool)

(assert (= bs!1231057 (and d!1706204 b!5309122)))

(assert (=> bs!1231057 (not (= lambda!270350 lambda!270344))))

(declare-fun bs!1231058 () Bool)

(assert (= bs!1231058 (and d!1706204 b!5308942)))

(assert (=> bs!1231058 (not (= lambda!270350 lambda!270313))))

(assert (=> bs!1231054 (not (= lambda!270350 lambda!270258))))

(assert (=> bs!1231049 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270350 lambda!270327))))

(declare-fun bs!1231059 () Bool)

(assert (= bs!1231059 (and d!1706204 b!5309024)))

(assert (=> bs!1231059 (not (= lambda!270350 lambda!270320))))

(declare-fun bs!1231060 () Bool)

(assert (= bs!1231060 (and d!1706204 b!5309128)))

(assert (=> bs!1231060 (not (= lambda!270350 lambda!270343))))

(assert (=> d!1706204 true))

(assert (=> d!1706204 true))

(assert (=> d!1706204 true))

(assert (=> d!1706204 (= (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) Nil!61055 s!2326 s!2326)) (Exists!2141 lambda!270350))))

(declare-fun lt!2169460 () Unit!153358)

(assert (=> d!1706204 (= lt!2169460 (choose!39700 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326))))

(assert (=> d!1706204 (validRegex!6696 (regOne!30432 r!7292))))

(assert (=> d!1706204 (= (lemmaFindConcatSeparationEquivalentToExists!1249 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326) lt!2169460)))

(declare-fun bs!1231061 () Bool)

(assert (= bs!1231061 d!1706204))

(assert (=> bs!1231061 m!6346558))

(assert (=> bs!1231061 m!6345728))

(declare-fun m!6346576 () Bool)

(assert (=> bs!1231061 m!6346576))

(declare-fun m!6346578 () Bool)

(assert (=> bs!1231061 m!6346578))

(assert (=> bs!1231061 m!6345728))

(assert (=> bs!1231061 m!6345730))

(assert (=> b!5308581 d!1706204))

(declare-fun bs!1231062 () Bool)

(declare-fun d!1706206 () Bool)

(assert (= bs!1231062 (and d!1706206 d!1706106)))

(declare-fun lambda!270351 () Int)

(assert (=> bs!1231062 (not (= lambda!270351 lambda!270328))))

(declare-fun bs!1231063 () Bool)

(assert (= bs!1231063 (and d!1706206 d!1706108)))

(assert (=> bs!1231063 (not (= lambda!270351 lambda!270330))))

(declare-fun bs!1231064 () Bool)

(assert (= bs!1231064 (and d!1706206 d!1706082)))

(assert (=> bs!1231064 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270351 lambda!270319))))

(declare-fun bs!1231065 () Bool)

(assert (= bs!1231065 (and d!1706206 b!5308581)))

(assert (=> bs!1231065 (not (= lambda!270351 lambda!270255))))

(declare-fun bs!1231066 () Bool)

(assert (= bs!1231066 (and d!1706206 b!5309018)))

(assert (=> bs!1231066 (not (= lambda!270351 lambda!270321))))

(declare-fun bs!1231067 () Bool)

(assert (= bs!1231067 (and d!1706206 b!5308594)))

(assert (=> bs!1231067 (not (= lambda!270351 lambda!270260))))

(assert (=> bs!1231063 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270351 lambda!270329))))

(declare-fun bs!1231068 () Bool)

(assert (= bs!1231068 (and d!1706206 d!1706072)))

(assert (=> bs!1231068 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270351 lambda!270317))))

(declare-fun bs!1231069 () Bool)

(assert (= bs!1231069 (and d!1706206 b!5308936)))

(assert (=> bs!1231069 (not (= lambda!270351 lambda!270314))))

(assert (=> bs!1231067 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270351 lambda!270259))))

(declare-fun bs!1231070 () Bool)

(assert (= bs!1231070 (and d!1706206 d!1706204)))

(assert (=> bs!1231070 (= lambda!270351 lambda!270350)))

(assert (=> bs!1231065 (= lambda!270351 lambda!270254)))

(assert (=> bs!1231067 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270351 lambda!270257))))

(declare-fun bs!1231071 () Bool)

(assert (= bs!1231071 (and d!1706206 b!5309122)))

(assert (=> bs!1231071 (not (= lambda!270351 lambda!270344))))

(declare-fun bs!1231072 () Bool)

(assert (= bs!1231072 (and d!1706206 b!5308942)))

(assert (=> bs!1231072 (not (= lambda!270351 lambda!270313))))

(assert (=> bs!1231067 (not (= lambda!270351 lambda!270258))))

(assert (=> bs!1231062 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270351 lambda!270327))))

(declare-fun bs!1231073 () Bool)

(assert (= bs!1231073 (and d!1706206 b!5309024)))

(assert (=> bs!1231073 (not (= lambda!270351 lambda!270320))))

(declare-fun bs!1231074 () Bool)

(assert (= bs!1231074 (and d!1706206 b!5309128)))

(assert (=> bs!1231074 (not (= lambda!270351 lambda!270343))))

(assert (=> d!1706206 true))

(assert (=> d!1706206 true))

(assert (=> d!1706206 true))

(declare-fun lambda!270352 () Int)

(assert (=> bs!1231062 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270352 lambda!270328))))

(assert (=> bs!1231063 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270352 lambda!270330))))

(assert (=> bs!1231064 (not (= lambda!270352 lambda!270319))))

(assert (=> bs!1231066 (= (and (= (regOne!30432 r!7292) (regOne!30432 lt!2169205)) (= (regTwo!30432 r!7292) (regTwo!30432 lt!2169205))) (= lambda!270352 lambda!270321))))

(assert (=> bs!1231067 (= (and (= (regOne!30432 r!7292) (regTwo!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169173)) (= lambda!270352 lambda!270260))))

(assert (=> bs!1231063 (not (= lambda!270352 lambda!270329))))

(assert (=> bs!1231068 (not (= lambda!270352 lambda!270317))))

(assert (=> bs!1231069 (= (and (= (regOne!30432 r!7292) (regOne!30432 lt!2169201)) (= (regTwo!30432 r!7292) (regTwo!30432 lt!2169201))) (= lambda!270352 lambda!270314))))

(assert (=> bs!1231067 (not (= lambda!270352 lambda!270259))))

(assert (=> bs!1231070 (not (= lambda!270352 lambda!270350))))

(assert (=> bs!1231065 (not (= lambda!270352 lambda!270254))))

(assert (=> bs!1231065 (= lambda!270352 lambda!270255)))

(declare-fun bs!1231075 () Bool)

(assert (= bs!1231075 d!1706206))

(assert (=> bs!1231075 (not (= lambda!270352 lambda!270351))))

(assert (=> bs!1231067 (not (= lambda!270352 lambda!270257))))

(assert (=> bs!1231071 (= lambda!270352 lambda!270344)))

(assert (=> bs!1231072 (not (= lambda!270352 lambda!270313))))

(assert (=> bs!1231067 (= (and (= (regOne!30432 r!7292) (regOne!30432 (regOne!30432 r!7292))) (= (regTwo!30432 r!7292) lt!2169205)) (= lambda!270352 lambda!270258))))

(assert (=> bs!1231062 (not (= lambda!270352 lambda!270327))))

(assert (=> bs!1231073 (not (= lambda!270352 lambda!270320))))

(assert (=> bs!1231074 (not (= lambda!270352 lambda!270343))))

(assert (=> d!1706206 true))

(assert (=> d!1706206 true))

(assert (=> d!1706206 true))

(assert (=> d!1706206 (= (Exists!2141 lambda!270351) (Exists!2141 lambda!270352))))

(declare-fun lt!2169461 () Unit!153358)

(assert (=> d!1706206 (= lt!2169461 (choose!39702 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326))))

(assert (=> d!1706206 (validRegex!6696 (regOne!30432 r!7292))))

(assert (=> d!1706206 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!795 (regOne!30432 r!7292) (regTwo!30432 r!7292) s!2326) lt!2169461)))

(declare-fun m!6346580 () Bool)

(assert (=> bs!1231075 m!6346580))

(declare-fun m!6346582 () Bool)

(assert (=> bs!1231075 m!6346582))

(declare-fun m!6346584 () Bool)

(assert (=> bs!1231075 m!6346584))

(assert (=> bs!1231075 m!6346558))

(assert (=> b!5308581 d!1706206))

(declare-fun d!1706210 () Bool)

(assert (=> d!1706210 (= (isDefined!11774 (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) Nil!61055 s!2326 s!2326)) (not (isEmpty!33022 (findConcatSeparation!1485 (regOne!30432 r!7292) (regTwo!30432 r!7292) Nil!61055 s!2326 s!2326))))))

(declare-fun bs!1231076 () Bool)

(assert (= bs!1231076 d!1706210))

(assert (=> bs!1231076 m!6345728))

(declare-fun m!6346586 () Bool)

(assert (=> bs!1231076 m!6346586))

(assert (=> b!5308581 d!1706210))

(assert (=> b!5308580 d!1706114))

(declare-fun d!1706212 () Bool)

(declare-fun c!922105 () Bool)

(assert (=> d!1706212 (= c!922105 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299340 () Bool)

(assert (=> d!1706212 (= (matchZipper!1204 lt!2169195 (t!374384 s!2326)) e!3299340)))

(declare-fun b!5309314 () Bool)

(assert (=> b!5309314 (= e!3299340 (nullableZipper!1331 lt!2169195))))

(declare-fun b!5309315 () Bool)

(assert (=> b!5309315 (= e!3299340 (matchZipper!1204 (derivationStepZipper!1203 lt!2169195 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706212 c!922105) b!5309314))

(assert (= (and d!1706212 (not c!922105)) b!5309315))

(assert (=> d!1706212 m!6346068))

(declare-fun m!6346588 () Bool)

(assert (=> b!5309314 m!6346588))

(assert (=> b!5309315 m!6346072))

(assert (=> b!5309315 m!6346072))

(declare-fun m!6346590 () Bool)

(assert (=> b!5309315 m!6346590))

(assert (=> b!5309315 m!6346076))

(assert (=> b!5309315 m!6346590))

(assert (=> b!5309315 m!6346076))

(declare-fun m!6346592 () Bool)

(assert (=> b!5309315 m!6346592))

(assert (=> b!5308580 d!1706212))

(declare-fun d!1706214 () Bool)

(declare-fun c!922106 () Bool)

(assert (=> d!1706214 (= c!922106 (isEmpty!33021 (t!374384 s!2326)))))

(declare-fun e!3299341 () Bool)

(assert (=> d!1706214 (= (matchZipper!1204 lt!2169176 (t!374384 s!2326)) e!3299341)))

(declare-fun b!5309316 () Bool)

(assert (=> b!5309316 (= e!3299341 (nullableZipper!1331 lt!2169176))))

(declare-fun b!5309317 () Bool)

(assert (=> b!5309317 (= e!3299341 (matchZipper!1204 (derivationStepZipper!1203 lt!2169176 (head!11380 (t!374384 s!2326))) (tail!10477 (t!374384 s!2326))))))

(assert (= (and d!1706214 c!922106) b!5309316))

(assert (= (and d!1706214 (not c!922106)) b!5309317))

(assert (=> d!1706214 m!6346068))

(declare-fun m!6346594 () Bool)

(assert (=> b!5309316 m!6346594))

(assert (=> b!5309317 m!6346072))

(assert (=> b!5309317 m!6346072))

(declare-fun m!6346596 () Bool)

(assert (=> b!5309317 m!6346596))

(assert (=> b!5309317 m!6346076))

(assert (=> b!5309317 m!6346596))

(assert (=> b!5309317 m!6346076))

(declare-fun m!6346598 () Bool)

(assert (=> b!5309317 m!6346598))

(assert (=> b!5308580 d!1706214))

(declare-fun d!1706216 () Bool)

(declare-fun e!3299342 () Bool)

(assert (=> d!1706216 (= (matchZipper!1204 (set.union lt!2169176 lt!2169182) (t!374384 s!2326)) e!3299342)))

(declare-fun res!2252358 () Bool)

(assert (=> d!1706216 (=> res!2252358 e!3299342)))

(assert (=> d!1706216 (= res!2252358 (matchZipper!1204 lt!2169176 (t!374384 s!2326)))))

(declare-fun lt!2169462 () Unit!153358)

(assert (=> d!1706216 (= lt!2169462 (choose!39703 lt!2169176 lt!2169182 (t!374384 s!2326)))))

(assert (=> d!1706216 (= (lemmaZipperConcatMatchesSameAsBothZippers!197 lt!2169176 lt!2169182 (t!374384 s!2326)) lt!2169462)))

(declare-fun b!5309318 () Bool)

(assert (=> b!5309318 (= e!3299342 (matchZipper!1204 lt!2169182 (t!374384 s!2326)))))

(assert (= (and d!1706216 (not res!2252358)) b!5309318))

(declare-fun m!6346600 () Bool)

(assert (=> d!1706216 m!6346600))

(assert (=> d!1706216 m!6345712))

(declare-fun m!6346602 () Bool)

(assert (=> d!1706216 m!6346602))

(assert (=> b!5309318 m!6345768))

(assert (=> b!5308580 d!1706216))

(declare-fun b!5309346 () Bool)

(declare-fun e!3299360 () Bool)

(declare-fun tp!1479346 () Bool)

(assert (=> b!5309346 (= e!3299360 tp!1479346)))

(declare-fun tp!1479347 () Bool)

(declare-fun b!5309345 () Bool)

(declare-fun e!3299359 () Bool)

(assert (=> b!5309345 (= e!3299359 (and (inv!80648 (h!67505 (t!374386 zl!343))) e!3299360 tp!1479347))))

(assert (=> b!5308583 (= tp!1479302 e!3299359)))

(assert (= b!5309345 b!5309346))

(assert (= (and b!5308583 (is-Cons!61057 (t!374386 zl!343))) b!5309345))

(declare-fun m!6346604 () Bool)

(assert (=> b!5309345 m!6346604))

(declare-fun b!5309353 () Bool)

(declare-fun e!3299365 () Bool)

(declare-fun tp!1479352 () Bool)

(declare-fun tp!1479353 () Bool)

(assert (=> b!5309353 (= e!3299365 (and tp!1479352 tp!1479353))))

(assert (=> b!5308584 (= tp!1479308 e!3299365)))

(assert (= (and b!5308584 (is-Cons!61056 (exprs!4844 setElem!34130))) b!5309353))

(declare-fun b!5309372 () Bool)

(declare-fun e!3299370 () Bool)

(declare-fun tp!1479368 () Bool)

(assert (=> b!5309372 (= e!3299370 tp!1479368)))

(assert (=> b!5308588 (= tp!1479305 e!3299370)))

(declare-fun b!5309373 () Bool)

(declare-fun tp!1479367 () Bool)

(declare-fun tp!1479364 () Bool)

(assert (=> b!5309373 (= e!3299370 (and tp!1479367 tp!1479364))))

(declare-fun b!5309370 () Bool)

(assert (=> b!5309370 (= e!3299370 tp_is_empty!39173)))

(declare-fun b!5309371 () Bool)

(declare-fun tp!1479365 () Bool)

(declare-fun tp!1479366 () Bool)

(assert (=> b!5309371 (= e!3299370 (and tp!1479365 tp!1479366))))

(assert (= (and b!5308588 (is-ElementMatch!14960 (regOne!30433 r!7292))) b!5309370))

(assert (= (and b!5308588 (is-Concat!23805 (regOne!30433 r!7292))) b!5309371))

(assert (= (and b!5308588 (is-Star!14960 (regOne!30433 r!7292))) b!5309372))

(assert (= (and b!5308588 (is-Union!14960 (regOne!30433 r!7292))) b!5309373))

(declare-fun b!5309376 () Bool)

(declare-fun e!3299371 () Bool)

(declare-fun tp!1479373 () Bool)

(assert (=> b!5309376 (= e!3299371 tp!1479373)))

(assert (=> b!5308588 (= tp!1479309 e!3299371)))

(declare-fun b!5309377 () Bool)

(declare-fun tp!1479372 () Bool)

(declare-fun tp!1479369 () Bool)

(assert (=> b!5309377 (= e!3299371 (and tp!1479372 tp!1479369))))

(declare-fun b!5309374 () Bool)

(assert (=> b!5309374 (= e!3299371 tp_is_empty!39173)))

(declare-fun b!5309375 () Bool)

(declare-fun tp!1479370 () Bool)

(declare-fun tp!1479371 () Bool)

(assert (=> b!5309375 (= e!3299371 (and tp!1479370 tp!1479371))))

(assert (= (and b!5308588 (is-ElementMatch!14960 (regTwo!30433 r!7292))) b!5309374))

(assert (= (and b!5308588 (is-Concat!23805 (regTwo!30433 r!7292))) b!5309375))

(assert (= (and b!5308588 (is-Star!14960 (regTwo!30433 r!7292))) b!5309376))

(assert (= (and b!5308588 (is-Union!14960 (regTwo!30433 r!7292))) b!5309377))

(declare-fun b!5309380 () Bool)

(declare-fun e!3299372 () Bool)

(declare-fun tp!1479378 () Bool)

(assert (=> b!5309380 (= e!3299372 tp!1479378)))

(assert (=> b!5308578 (= tp!1479311 e!3299372)))

(declare-fun b!5309381 () Bool)

(declare-fun tp!1479377 () Bool)

(declare-fun tp!1479374 () Bool)

(assert (=> b!5309381 (= e!3299372 (and tp!1479377 tp!1479374))))

(declare-fun b!5309378 () Bool)

(assert (=> b!5309378 (= e!3299372 tp_is_empty!39173)))

(declare-fun b!5309379 () Bool)

(declare-fun tp!1479375 () Bool)

(declare-fun tp!1479376 () Bool)

(assert (=> b!5309379 (= e!3299372 (and tp!1479375 tp!1479376))))

(assert (= (and b!5308578 (is-ElementMatch!14960 (reg!15289 r!7292))) b!5309378))

(assert (= (and b!5308578 (is-Concat!23805 (reg!15289 r!7292))) b!5309379))

(assert (= (and b!5308578 (is-Star!14960 (reg!15289 r!7292))) b!5309380))

(assert (= (and b!5308578 (is-Union!14960 (reg!15289 r!7292))) b!5309381))

(declare-fun condSetEmpty!34136 () Bool)

(assert (=> setNonEmpty!34130 (= condSetEmpty!34136 (= setRest!34130 (as set.empty (Set Context!8688))))))

(declare-fun setRes!34136 () Bool)

(assert (=> setNonEmpty!34130 (= tp!1479307 setRes!34136)))

(declare-fun setIsEmpty!34136 () Bool)

(assert (=> setIsEmpty!34136 setRes!34136))

(declare-fun tp!1479383 () Bool)

(declare-fun e!3299375 () Bool)

(declare-fun setElem!34136 () Context!8688)

(declare-fun setNonEmpty!34136 () Bool)

(assert (=> setNonEmpty!34136 (= setRes!34136 (and tp!1479383 (inv!80648 setElem!34136) e!3299375))))

(declare-fun setRest!34136 () (Set Context!8688))

(assert (=> setNonEmpty!34136 (= setRest!34130 (set.union (set.insert setElem!34136 (as set.empty (Set Context!8688))) setRest!34136))))

(declare-fun b!5309386 () Bool)

(declare-fun tp!1479384 () Bool)

(assert (=> b!5309386 (= e!3299375 tp!1479384)))

(assert (= (and setNonEmpty!34130 condSetEmpty!34136) setIsEmpty!34136))

(assert (= (and setNonEmpty!34130 (not condSetEmpty!34136)) setNonEmpty!34136))

(assert (= setNonEmpty!34136 b!5309386))

(declare-fun m!6346606 () Bool)

(assert (=> setNonEmpty!34136 m!6346606))

(declare-fun b!5309389 () Bool)

(declare-fun e!3299376 () Bool)

(declare-fun tp!1479389 () Bool)

(assert (=> b!5309389 (= e!3299376 tp!1479389)))

(assert (=> b!5308607 (= tp!1479310 e!3299376)))

(declare-fun b!5309390 () Bool)

(declare-fun tp!1479388 () Bool)

(declare-fun tp!1479385 () Bool)

(assert (=> b!5309390 (= e!3299376 (and tp!1479388 tp!1479385))))

(declare-fun b!5309387 () Bool)

(assert (=> b!5309387 (= e!3299376 tp_is_empty!39173)))

(declare-fun b!5309388 () Bool)

(declare-fun tp!1479386 () Bool)

(declare-fun tp!1479387 () Bool)

(assert (=> b!5309388 (= e!3299376 (and tp!1479386 tp!1479387))))

(assert (= (and b!5308607 (is-ElementMatch!14960 (regOne!30432 r!7292))) b!5309387))

(assert (= (and b!5308607 (is-Concat!23805 (regOne!30432 r!7292))) b!5309388))

(assert (= (and b!5308607 (is-Star!14960 (regOne!30432 r!7292))) b!5309389))

(assert (= (and b!5308607 (is-Union!14960 (regOne!30432 r!7292))) b!5309390))

(declare-fun b!5309393 () Bool)

(declare-fun e!3299377 () Bool)

(declare-fun tp!1479394 () Bool)

(assert (=> b!5309393 (= e!3299377 tp!1479394)))

(assert (=> b!5308607 (= tp!1479306 e!3299377)))

(declare-fun b!5309394 () Bool)

(declare-fun tp!1479393 () Bool)

(declare-fun tp!1479390 () Bool)

(assert (=> b!5309394 (= e!3299377 (and tp!1479393 tp!1479390))))

(declare-fun b!5309391 () Bool)

(assert (=> b!5309391 (= e!3299377 tp_is_empty!39173)))

(declare-fun b!5309392 () Bool)

(declare-fun tp!1479391 () Bool)

(declare-fun tp!1479392 () Bool)

(assert (=> b!5309392 (= e!3299377 (and tp!1479391 tp!1479392))))

(assert (= (and b!5308607 (is-ElementMatch!14960 (regTwo!30432 r!7292))) b!5309391))

(assert (= (and b!5308607 (is-Concat!23805 (regTwo!30432 r!7292))) b!5309392))

(assert (= (and b!5308607 (is-Star!14960 (regTwo!30432 r!7292))) b!5309393))

(assert (= (and b!5308607 (is-Union!14960 (regTwo!30432 r!7292))) b!5309394))

(declare-fun b!5309395 () Bool)

(declare-fun e!3299378 () Bool)

(declare-fun tp!1479395 () Bool)

(declare-fun tp!1479396 () Bool)

(assert (=> b!5309395 (= e!3299378 (and tp!1479395 tp!1479396))))

(assert (=> b!5308595 (= tp!1479304 e!3299378)))

(assert (= (and b!5308595 (is-Cons!61056 (exprs!4844 (h!67505 zl!343)))) b!5309395))

(declare-fun b!5309404 () Bool)

(declare-fun e!3299383 () Bool)

(declare-fun tp!1479399 () Bool)

(assert (=> b!5309404 (= e!3299383 (and tp_is_empty!39173 tp!1479399))))

(assert (=> b!5308600 (= tp!1479303 e!3299383)))

(assert (= (and b!5308600 (is-Cons!61055 (t!374384 s!2326))) b!5309404))

(declare-fun b_lambda!204381 () Bool)

(assert (= b_lambda!204379 (or b!5308601 b_lambda!204381)))

(declare-fun bs!1231077 () Bool)

(declare-fun d!1706218 () Bool)

(assert (= bs!1231077 (and d!1706218 b!5308601)))

(assert (=> bs!1231077 (= (dynLambda!24133 lambda!270261 (h!67504 (t!374385 (exprs!4844 (h!67505 zl!343))))) (validRegex!6696 (h!67504 (t!374385 (exprs!4844 (h!67505 zl!343))))))))

(declare-fun m!6346608 () Bool)

(assert (=> bs!1231077 m!6346608))

(assert (=> b!5309283 d!1706218))

(declare-fun b_lambda!204383 () Bool)

(assert (= b_lambda!204377 (or b!5308604 b_lambda!204383)))

(declare-fun bs!1231078 () Bool)

(declare-fun d!1706220 () Bool)

(assert (= bs!1231078 (and d!1706220 b!5308604)))

(assert (=> bs!1231078 (= (dynLambda!24132 lambda!270256 lt!2169202) (derivationStepZipperUp!332 lt!2169202 (h!67503 s!2326)))))

(assert (=> bs!1231078 m!6345758))

(assert (=> d!1706178 d!1706220))

(declare-fun b_lambda!204385 () Bool)

(assert (= b_lambda!204375 (or b!5308604 b_lambda!204385)))

(declare-fun bs!1231079 () Bool)

(declare-fun d!1706222 () Bool)

(assert (= bs!1231079 (and d!1706222 b!5308604)))

(assert (=> bs!1231079 (= (dynLambda!24132 lambda!270256 (h!67505 zl!343)) (derivationStepZipperUp!332 (h!67505 zl!343) (h!67503 s!2326)))))

(assert (=> bs!1231079 m!6345788))

(assert (=> d!1706158 d!1706222))

(declare-fun b_lambda!204387 () Bool)

(assert (= b_lambda!204373 (or b!5308604 b_lambda!204387)))

(declare-fun bs!1231080 () Bool)

(declare-fun d!1706224 () Bool)

(assert (= bs!1231080 (and d!1706224 b!5308604)))

(assert (=> bs!1231080 (= (dynLambda!24132 lambda!270256 lt!2169167) (derivationStepZipperUp!332 lt!2169167 (h!67503 s!2326)))))

(assert (=> bs!1231080 m!6345748))

(assert (=> d!1706122 d!1706224))

(push 1)

(assert (not d!1706194))

(assert (not b!5309011))

(assert (not b!5308806))

(assert (not d!1706216))

(assert (not b!5308962))

(assert (not d!1706108))

(assert (not d!1706068))

(assert (not d!1706142))

(assert (not b!5309061))

(assert (not d!1706096))

(assert (not bm!378475))

(assert (not d!1706128))

(assert (not b!5309379))

(assert (not b!5309079))

(assert (not b!5309010))

(assert (not bm!378506))

(assert (not b!5309103))

(assert (not d!1706126))

(assert (not d!1706180))

(assert (not b!5309306))

(assert (not bm!378472))

(assert (not b!5309394))

(assert (not d!1706202))

(assert (not b!5309078))

(assert (not b!5309375))

(assert (not b!5309029))

(assert (not b!5309314))

(assert (not b!5309386))

(assert (not b!5309284))

(assert (not bm!378515))

(assert (not b!5309135))

(assert (not b!5309098))

(assert (not b!5308810))

(assert (not b!5309373))

(assert (not d!1706040))

(assert (not b!5309308))

(assert (not b!5309032))

(assert (not b!5309286))

(assert (not d!1706204))

(assert (not b!5309345))

(assert (not b!5309119))

(assert (not b!5309203))

(assert (not b!5309030))

(assert (not d!1706178))

(assert (not b!5309033))

(assert (not b!5308939))

(assert (not b!5308848))

(assert (not b!5308813))

(assert (not b!5309213))

(assert (not b!5309013))

(assert (not bm!378523))

(assert (not bm!378481))

(assert (not b!5308809))

(assert (not d!1706088))

(assert (not d!1706054))

(assert (not b!5309062))

(assert (not d!1706070))

(assert (not d!1706146))

(assert (not b!5309136))

(assert (not b!5308968))

(assert (not bm!378474))

(assert (not d!1706154))

(assert (not b!5309318))

(assert (not b!5309046))

(assert (not b!5308896))

(assert (not b_lambda!204387))

(assert (not b!5309390))

(assert (not b!5309294))

(assert (not bm!378482))

(assert (not b_lambda!204385))

(assert (not d!1706066))

(assert (not b!5309142))

(assert (not b!5308887))

(assert (not b!5308984))

(assert (not b!5309287))

(assert (not bm!378473))

(assert (not b!5308808))

(assert (not b!5309346))

(assert (not b!5309250))

(assert (not d!1706100))

(assert (not b!5309243))

(assert (not b!5308883))

(assert (not b!5309237))

(assert (not bm!378478))

(assert (not b!5309392))

(assert (not b!5309077))

(assert (not b!5309021))

(assert (not b!5309063))

(assert (not b!5309096))

(assert (not d!1706076))

(assert (not b!5308892))

(assert (not d!1706200))

(assert (not d!1706122))

(assert (not b!5309114))

(assert (not b!5308885))

(assert (not b!5308857))

(assert (not d!1706124))

(assert (not d!1706064))

(assert (not b!5308783))

(assert (not b!5309009))

(assert (not b!5309377))

(assert (not d!1706044))

(assert (not b!5309404))

(assert (not b!5308898))

(assert (not bm!378501))

(assert (not b!5309380))

(assert (not d!1706214))

(assert (not b!5309289))

(assert (not b!5309192))

(assert (not d!1706082))

(assert (not b!5309304))

(assert (not b!5309248))

(assert (not bs!1231077))

(assert (not b!5308807))

(assert (not bm!378503))

(assert (not b!5309051))

(assert (not d!1706116))

(assert (not d!1706058))

(assert (not d!1706050))

(assert (not d!1706110))

(assert (not b!5308971))

(assert (not b!5309095))

(assert (not b!5308957))

(assert (not b!5309036))

(assert (not b!5308948))

(assert (not d!1706198))

(assert (not d!1706120))

(assert (not d!1706144))

(assert (not bm!378525))

(assert (not b!5309014))

(assert (not b!5308884))

(assert (not b!5309034))

(assert (not b!5308983))

(assert (not b!5309134))

(assert (not d!1706094))

(assert (not b!5309069))

(assert (not bm!378470))

(assert (not b!5309316))

(assert (not b!5309149))

(assert (not b!5308980))

(assert (not b!5309049))

(assert (not b!5309100))

(assert (not b!5308847))

(assert (not b!5308956))

(assert (not b!5309012))

(assert (not bs!1231080))

(assert (not b!5308901))

(assert (not b!5309076))

(assert (not setNonEmpty!34136))

(assert (not d!1706098))

(assert (not d!1706090))

(assert (not b!5309099))

(assert (not d!1706130))

(assert (not b!5308969))

(assert (not bm!378512))

(assert (not b!5309137))

(assert (not b!5308970))

(assert (not b!5309125))

(assert (not b!5309195))

(assert (not b!5309288))

(assert (not d!1706210))

(assert (not bm!378526))

(assert (not b!5309198))

(assert (not d!1706046))

(assert (not d!1706112))

(assert (not b!5309317))

(assert (not b!5309200))

(assert (not d!1706172))

(assert (not bs!1231078))

(assert (not b!5308982))

(assert (not d!1706084))

(assert (not b_lambda!204381))

(assert (not b!5309298))

(assert (not b!5309101))

(assert (not b!5309064))

(assert (not b!5308894))

(assert (not d!1706072))

(assert (not b!5309104))

(assert (not b!5309150))

(assert (not b!5309274))

(assert (not b!5309028))

(assert (not bm!378510))

(assert (not b!5308947))

(assert (not b!5308780))

(assert (not b!5309303))

(assert (not b!5309240))

(assert (not d!1706102))

(assert (not b!5308988))

(assert (not b!5309040))

(assert (not b!5309041))

(assert (not b!5309389))

(assert (not b!5308966))

(assert (not b!5309042))

(assert (not b!5309371))

(assert (not b!5309307))

(assert (not b!5309315))

(assert (not d!1706074))

(assert (not b!5309226))

(assert (not b!5309116))

(assert (not d!1706134))

(assert (not bm!378500))

(assert (not b!5308853))

(assert (not b!5308846))

(assert (not b!5308782))

(assert (not d!1706052))

(assert (not d!1706106))

(assert (not d!1706132))

(assert (not d!1706152))

(assert (not b!5309035))

(assert (not d!1706092))

(assert (not b!5309121))

(assert (not bm!378464))

(assert (not d!1706078))

(assert (not b!5308895))

(assert (not b!5309097))

(assert (not b!5308897))

(assert (not b!5308845))

(assert (not bm!378479))

(assert (not b!5309044))

(assert (not d!1706048))

(assert (not b!5309043))

(assert (not b!5308880))

(assert (not bm!378509))

(assert (not b!5309372))

(assert (not b!5309310))

(assert (not b!5308954))

(assert (not d!1706206))

(assert (not d!1706114))

(assert (not d!1706212))

(assert (not d!1706056))

(assert (not b!5308990))

(assert (not b!5309156))

(assert (not bm!378502))

(assert (not b!5309376))

(assert (not d!1706158))

(assert (not bs!1231079))

(assert (not b_lambda!204383))

(assert (not b!5309107))

(assert (not d!1706104))

(assert (not b!5309353))

(assert (not b!5309205))

(assert (not b!5308815))

(assert (not bm!378471))

(assert (not d!1706182))

(assert (not b!5308976))

(assert tp_is_empty!39173)

(assert (not b!5309160))

(assert (not b!5309146))

(assert (not b!5309073))

(assert (not d!1706042))

(assert (not b!5309305))

(assert (not b!5308946))

(assert (not b!5308882))

(assert (not bm!378469))

(assert (not b!5308955))

(assert (not b!5309045))

(assert (not b!5309031))

(assert (not bm!378480))

(assert (not b!5308981))

(assert (not b!5309395))

(assert (not b!5308903))

(assert (not bm!378495))

(assert (not bm!378516))

(assert (not b!5309309))

(assert (not b!5309148))

(assert (not b!5309132))

(assert (not b!5309102))

(assert (not b!5309092))

(assert (not b!5308881))

(assert (not b!5309215))

(assert (not b!5309080))

(assert (not d!1706060))

(assert (not d!1706080))

(assert (not b!5309208))

(assert (not b!5309388))

(assert (not b!5309381))

(assert (not d!1706148))

(assert (not d!1706196))

(assert (not b!5308781))

(assert (not bm!378504))

(assert (not b!5308985))

(assert (not bm!378497))

(assert (not b!5309393))

(assert (not b!5309151))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

