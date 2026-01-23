; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!559790 () Bool)

(assert start!559790)

(declare-fun b!5308427 () Bool)

(assert (=> b!5308427 true))

(assert (=> b!5308427 true))

(declare-fun lambda!270222 () Int)

(declare-fun lambda!270221 () Int)

(assert (=> b!5308427 (not (= lambda!270222 lambda!270221))))

(assert (=> b!5308427 true))

(assert (=> b!5308427 true))

(declare-fun b!5308433 () Bool)

(assert (=> b!5308433 true))

(declare-fun bs!1230904 () Bool)

(declare-fun b!5308419 () Bool)

(assert (= bs!1230904 (and b!5308419 b!5308427)))

(declare-datatypes ((C!30188 0))(
  ( (C!30189 (val!24796 Int)) )
))
(declare-datatypes ((Regex!14959 0))(
  ( (ElementMatch!14959 (c!921907 C!30188)) (Concat!23804 (regOne!30430 Regex!14959) (regTwo!30430 Regex!14959)) (EmptyExpr!14959) (Star!14959 (reg!15288 Regex!14959)) (EmptyLang!14959) (Union!14959 (regOne!30431 Regex!14959) (regTwo!30431 Regex!14959)) )
))
(declare-fun r!7292 () Regex!14959)

(declare-fun lt!2169026 () Regex!14959)

(declare-fun lambda!270224 () Int)

(assert (=> bs!1230904 (= (and (= (regOne!30430 (regOne!30430 r!7292)) (regOne!30430 r!7292)) (= lt!2169026 (regTwo!30430 r!7292))) (= lambda!270224 lambda!270221))))

(assert (=> bs!1230904 (not (= lambda!270224 lambda!270222))))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(declare-fun lambda!270225 () Int)

(assert (=> bs!1230904 (not (= lambda!270225 lambda!270221))))

(assert (=> bs!1230904 (= (and (= (regOne!30430 (regOne!30430 r!7292)) (regOne!30430 r!7292)) (= lt!2169026 (regTwo!30430 r!7292))) (= lambda!270225 lambda!270222))))

(assert (=> b!5308419 (not (= lambda!270225 lambda!270224))))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(declare-fun lt!2169036 () Regex!14959)

(declare-fun lambda!270226 () Int)

(assert (=> bs!1230904 (= (and (= (regTwo!30430 (regOne!30430 r!7292)) (regOne!30430 r!7292)) (= lt!2169036 (regTwo!30430 r!7292))) (= lambda!270226 lambda!270221))))

(assert (=> bs!1230904 (not (= lambda!270226 lambda!270222))))

(assert (=> b!5308419 (= (and (= (regTwo!30430 (regOne!30430 r!7292)) (regOne!30430 (regOne!30430 r!7292))) (= lt!2169036 lt!2169026)) (= lambda!270226 lambda!270224))))

(assert (=> b!5308419 (not (= lambda!270226 lambda!270225))))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(declare-fun lambda!270227 () Int)

(assert (=> b!5308419 (not (= lambda!270227 lambda!270224))))

(assert (=> bs!1230904 (= (and (= (regTwo!30430 (regOne!30430 r!7292)) (regOne!30430 r!7292)) (= lt!2169036 (regTwo!30430 r!7292))) (= lambda!270227 lambda!270222))))

(assert (=> b!5308419 (not (= lambda!270227 lambda!270226))))

(assert (=> b!5308419 (= (and (= (regTwo!30430 (regOne!30430 r!7292)) (regOne!30430 (regOne!30430 r!7292))) (= lt!2169036 lt!2169026)) (= lambda!270227 lambda!270225))))

(assert (=> bs!1230904 (not (= lambda!270227 lambda!270221))))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(assert (=> b!5308419 true))

(declare-fun b!5308406 () Bool)

(declare-fun e!3298851 () Bool)

(declare-fun tp_is_empty!39171 () Bool)

(declare-fun tp!1479274 () Bool)

(assert (=> b!5308406 (= e!3298851 (and tp_is_empty!39171 tp!1479274))))

(declare-fun b!5308407 () Bool)

(declare-fun res!2251894 () Bool)

(declare-fun e!3298844 () Bool)

(assert (=> b!5308407 (=> res!2251894 e!3298844)))

(declare-datatypes ((List!61176 0))(
  ( (Nil!61052) (Cons!61052 (h!67500 Regex!14959) (t!374381 List!61176)) )
))
(declare-datatypes ((Context!8686 0))(
  ( (Context!8687 (exprs!4843 List!61176)) )
))
(declare-datatypes ((List!61177 0))(
  ( (Nil!61053) (Cons!61053 (h!67501 Context!8686) (t!374382 List!61177)) )
))
(declare-fun lt!2169039 () List!61177)

(declare-fun zl!343 () List!61177)

(declare-fun zipperDepth!76 (List!61177) Int)

(assert (=> b!5308407 (= res!2251894 (> (zipperDepth!76 lt!2169039) (zipperDepth!76 zl!343)))))

(declare-fun b!5308408 () Bool)

(declare-fun res!2251882 () Bool)

(declare-fun e!3298842 () Bool)

(assert (=> b!5308408 (=> res!2251882 e!3298842)))

(declare-fun generalisedConcat!628 (List!61176) Regex!14959)

(assert (=> b!5308408 (= res!2251882 (not (= r!7292 (generalisedConcat!628 (exprs!4843 (h!67501 zl!343))))))))

(declare-fun b!5308409 () Bool)

(declare-fun e!3298855 () Bool)

(declare-fun tp!1479277 () Bool)

(assert (=> b!5308409 (= e!3298855 tp!1479277)))

(declare-fun b!5308411 () Bool)

(declare-fun e!3298858 () Bool)

(declare-fun e!3298843 () Bool)

(assert (=> b!5308411 (= e!3298858 e!3298843)))

(declare-fun res!2251888 () Bool)

(assert (=> b!5308411 (=> res!2251888 e!3298843)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2169054 () (InoxSet Context!8686))

(declare-fun lt!2169024 () (InoxSet Context!8686))

(assert (=> b!5308411 (= res!2251888 (not (= lt!2169054 lt!2169024)))))

(declare-fun lt!2169032 () (InoxSet Context!8686))

(declare-fun lt!2169010 () (InoxSet Context!8686))

(assert (=> b!5308411 (= lt!2169024 ((_ map or) lt!2169032 lt!2169010))))

(declare-fun lt!2169022 () Context!8686)

(declare-datatypes ((List!61178 0))(
  ( (Nil!61054) (Cons!61054 (h!67502 C!30188) (t!374383 List!61178)) )
))
(declare-fun s!2326 () List!61178)

(declare-fun derivationStepZipperUp!331 (Context!8686 C!30188) (InoxSet Context!8686))

(assert (=> b!5308411 (= lt!2169010 (derivationStepZipperUp!331 lt!2169022 (h!67502 s!2326)))))

(declare-fun lambda!270223 () Int)

(declare-fun lt!2169021 () Context!8686)

(declare-fun lt!2169030 () (InoxSet Context!8686))

(declare-fun flatMap!686 ((InoxSet Context!8686) Int) (InoxSet Context!8686))

(assert (=> b!5308411 (= (flatMap!686 lt!2169030 lambda!270223) (derivationStepZipperUp!331 lt!2169021 (h!67502 s!2326)))))

(declare-datatypes ((Unit!153354 0))(
  ( (Unit!153355) )
))
(declare-fun lt!2169020 () Unit!153354)

(declare-fun lemmaFlatMapOnSingletonSet!218 ((InoxSet Context!8686) Context!8686 Int) Unit!153354)

(assert (=> b!5308411 (= lt!2169020 (lemmaFlatMapOnSingletonSet!218 lt!2169030 lt!2169021 lambda!270223))))

(declare-fun lt!2169011 () (InoxSet Context!8686))

(assert (=> b!5308411 (= lt!2169011 (derivationStepZipperUp!331 lt!2169021 (h!67502 s!2326)))))

(declare-fun derivationStepZipper!1202 ((InoxSet Context!8686) C!30188) (InoxSet Context!8686))

(assert (=> b!5308411 (= lt!2169054 (derivationStepZipper!1202 lt!2169030 (h!67502 s!2326)))))

(declare-fun lt!2169027 () (InoxSet Context!8686))

(assert (=> b!5308411 (= lt!2169027 (store ((as const (Array Context!8686 Bool)) false) lt!2169022 true))))

(assert (=> b!5308411 (= lt!2169030 (store ((as const (Array Context!8686 Bool)) false) lt!2169021 true))))

(declare-fun lt!2169035 () List!61176)

(assert (=> b!5308411 (= lt!2169021 (Context!8687 lt!2169035))))

(declare-fun lt!2169015 () List!61176)

(assert (=> b!5308411 (= lt!2169035 (Cons!61052 (regOne!30430 (regOne!30430 r!7292)) lt!2169015))))

(declare-fun b!5308412 () Bool)

(declare-fun e!3298854 () Unit!153354)

(declare-fun Unit!153356 () Unit!153354)

(assert (=> b!5308412 (= e!3298854 Unit!153356)))

(declare-fun lt!2169053 () (InoxSet Context!8686))

(declare-fun lt!2169049 () Unit!153354)

(declare-fun lt!2169017 () (InoxSet Context!8686))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!196 ((InoxSet Context!8686) (InoxSet Context!8686) List!61178) Unit!153354)

(assert (=> b!5308412 (= lt!2169049 (lemmaZipperConcatMatchesSameAsBothZippers!196 lt!2169053 lt!2169017 (t!374383 s!2326)))))

(declare-fun res!2251884 () Bool)

(declare-fun matchZipper!1203 ((InoxSet Context!8686) List!61178) Bool)

(assert (=> b!5308412 (= res!2251884 (matchZipper!1203 lt!2169053 (t!374383 s!2326)))))

(declare-fun e!3298853 () Bool)

(assert (=> b!5308412 (=> res!2251884 e!3298853)))

(assert (=> b!5308412 (= (matchZipper!1203 ((_ map or) lt!2169053 lt!2169017) (t!374383 s!2326)) e!3298853)))

(declare-fun b!5308413 () Bool)

(declare-fun e!3298852 () Bool)

(assert (=> b!5308413 (= e!3298852 (not e!3298842))))

(declare-fun res!2251898 () Bool)

(assert (=> b!5308413 (=> res!2251898 e!3298842)))

(get-info :version)

(assert (=> b!5308413 (= res!2251898 (not ((_ is Cons!61053) zl!343)))))

(declare-fun lt!2169037 () Bool)

(declare-fun matchRSpec!2062 (Regex!14959 List!61178) Bool)

(assert (=> b!5308413 (= lt!2169037 (matchRSpec!2062 r!7292 s!2326))))

(declare-fun matchR!7144 (Regex!14959 List!61178) Bool)

(assert (=> b!5308413 (= lt!2169037 (matchR!7144 r!7292 s!2326))))

(declare-fun lt!2169047 () Unit!153354)

(declare-fun mainMatchTheorem!2062 (Regex!14959 List!61178) Unit!153354)

(assert (=> b!5308413 (= lt!2169047 (mainMatchTheorem!2062 r!7292 s!2326))))

(declare-fun b!5308414 () Bool)

(declare-fun res!2251903 () Bool)

(assert (=> b!5308414 (=> (not res!2251903) (not e!3298852))))

(declare-fun z!1189 () (InoxSet Context!8686))

(declare-fun toList!8743 ((InoxSet Context!8686)) List!61177)

(assert (=> b!5308414 (= res!2251903 (= (toList!8743 z!1189) zl!343))))

(declare-fun setIsEmpty!34127 () Bool)

(declare-fun setRes!34127 () Bool)

(assert (=> setIsEmpty!34127 setRes!34127))

(declare-fun b!5308415 () Bool)

(declare-fun res!2251887 () Bool)

(assert (=> b!5308415 (=> res!2251887 e!3298842)))

(assert (=> b!5308415 (= res!2251887 (or ((_ is EmptyExpr!14959) r!7292) ((_ is EmptyLang!14959) r!7292) ((_ is ElementMatch!14959) r!7292) ((_ is Union!14959) r!7292) (not ((_ is Concat!23804) r!7292))))))

(declare-fun b!5308416 () Bool)

(declare-fun e!3298847 () Bool)

(assert (=> b!5308416 (= e!3298847 tp_is_empty!39171)))

(declare-fun b!5308417 () Bool)

(declare-fun res!2251875 () Bool)

(declare-fun e!3298848 () Bool)

(assert (=> b!5308417 (=> res!2251875 e!3298848)))

(declare-fun isEmpty!33015 (List!61176) Bool)

(assert (=> b!5308417 (= res!2251875 (isEmpty!33015 (t!374381 (exprs!4843 (h!67501 zl!343)))))))

(declare-fun b!5308418 () Bool)

(declare-fun e!3298838 () Bool)

(declare-fun lt!2169048 () (InoxSet Context!8686))

(assert (=> b!5308418 (= e!3298838 (matchZipper!1203 lt!2169048 (t!374383 s!2326)))))

(declare-fun e!3298850 () Bool)

(assert (=> b!5308419 (= e!3298844 e!3298850)))

(declare-fun res!2251895 () Bool)

(assert (=> b!5308419 (=> res!2251895 e!3298850)))

(declare-fun lt!2169057 () Bool)

(declare-fun lt!2169056 () Bool)

(declare-fun lt!2169028 () Bool)

(declare-fun lt!2169012 () Bool)

(declare-fun lt!2169050 () Bool)

(assert (=> b!5308419 (= res!2251895 (or (not (= lt!2169050 (or lt!2169012 lt!2169028))) (not (= lt!2169050 (or lt!2169056 lt!2169057)))))))

(assert (=> b!5308419 (= lt!2169050 (matchZipper!1203 z!1189 s!2326))))

(declare-fun Exists!2140 (Int) Bool)

(assert (=> b!5308419 (= (Exists!2140 lambda!270226) (Exists!2140 lambda!270227))))

(declare-fun lt!2169033 () Unit!153354)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!794 (Regex!14959 Regex!14959 List!61178) Unit!153354)

(assert (=> b!5308419 (= lt!2169033 (lemmaExistCutMatchRandMatchRSpecEquivalent!794 (regTwo!30430 (regOne!30430 r!7292)) lt!2169036 s!2326))))

(declare-datatypes ((tuple2!64316 0))(
  ( (tuple2!64317 (_1!35461 List!61178) (_2!35461 List!61178)) )
))
(declare-datatypes ((Option!15070 0))(
  ( (None!15069) (Some!15069 (v!51098 tuple2!64316)) )
))
(declare-fun isDefined!11773 (Option!15070) Bool)

(declare-fun findConcatSeparation!1484 (Regex!14959 Regex!14959 List!61178 List!61178 List!61178) Option!15070)

(assert (=> b!5308419 (= (isDefined!11773 (findConcatSeparation!1484 (regTwo!30430 (regOne!30430 r!7292)) lt!2169036 Nil!61054 s!2326 s!2326)) (Exists!2140 lambda!270226))))

(declare-fun lt!2169044 () Unit!153354)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1248 (Regex!14959 Regex!14959 List!61178) Unit!153354)

(assert (=> b!5308419 (= lt!2169044 (lemmaFindConcatSeparationEquivalentToExists!1248 (regTwo!30430 (regOne!30430 r!7292)) lt!2169036 s!2326))))

(assert (=> b!5308419 (= lt!2169036 (generalisedConcat!628 (t!374381 (exprs!4843 (h!67501 zl!343)))))))

(assert (=> b!5308419 (= lt!2169057 (matchRSpec!2062 lt!2169026 s!2326))))

(declare-fun lt!2169042 () Unit!153354)

(assert (=> b!5308419 (= lt!2169042 (mainMatchTheorem!2062 lt!2169026 s!2326))))

(assert (=> b!5308419 (= (Exists!2140 lambda!270224) (Exists!2140 lambda!270225))))

(declare-fun lt!2169045 () Unit!153354)

(assert (=> b!5308419 (= lt!2169045 (lemmaExistCutMatchRandMatchRSpecEquivalent!794 (regOne!30430 (regOne!30430 r!7292)) lt!2169026 s!2326))))

(assert (=> b!5308419 (= (isDefined!11773 (findConcatSeparation!1484 (regOne!30430 (regOne!30430 r!7292)) lt!2169026 Nil!61054 s!2326 s!2326)) (Exists!2140 lambda!270224))))

(declare-fun lt!2169014 () Unit!153354)

(assert (=> b!5308419 (= lt!2169014 (lemmaFindConcatSeparationEquivalentToExists!1248 (regOne!30430 (regOne!30430 r!7292)) lt!2169026 s!2326))))

(declare-fun lt!2169052 () Regex!14959)

(assert (=> b!5308419 (= lt!2169056 (matchRSpec!2062 lt!2169052 s!2326))))

(declare-fun lt!2169040 () Unit!153354)

(assert (=> b!5308419 (= lt!2169040 (mainMatchTheorem!2062 lt!2169052 s!2326))))

(assert (=> b!5308419 (= lt!2169057 lt!2169028)))

(assert (=> b!5308419 (= lt!2169028 (matchZipper!1203 lt!2169027 s!2326))))

(assert (=> b!5308419 (= lt!2169057 (matchR!7144 lt!2169026 s!2326))))

(declare-fun lt!2169058 () Unit!153354)

(declare-fun theoremZipperRegexEquiv!369 ((InoxSet Context!8686) List!61177 Regex!14959 List!61178) Unit!153354)

(assert (=> b!5308419 (= lt!2169058 (theoremZipperRegexEquiv!369 lt!2169027 (Cons!61053 lt!2169022 Nil!61053) lt!2169026 s!2326))))

(assert (=> b!5308419 (= lt!2169026 (generalisedConcat!628 lt!2169015))))

(assert (=> b!5308419 (= lt!2169056 lt!2169012)))

(assert (=> b!5308419 (= lt!2169012 (matchZipper!1203 lt!2169030 s!2326))))

(assert (=> b!5308419 (= lt!2169056 (matchR!7144 lt!2169052 s!2326))))

(declare-fun lt!2169043 () Unit!153354)

(assert (=> b!5308419 (= lt!2169043 (theoremZipperRegexEquiv!369 lt!2169030 lt!2169039 lt!2169052 s!2326))))

(assert (=> b!5308419 (= lt!2169052 (generalisedConcat!628 lt!2169035))))

(declare-fun e!3298839 () Bool)

(declare-fun e!3298857 () Bool)

(declare-fun tp!1479281 () Bool)

(declare-fun b!5308420 () Bool)

(declare-fun inv!80644 (Context!8686) Bool)

(assert (=> b!5308420 (= e!3298857 (and (inv!80644 (h!67501 zl!343)) e!3298839 tp!1479281))))

(declare-fun b!5308421 () Bool)

(declare-fun e!3298840 () Bool)

(declare-fun e!3298837 () Bool)

(assert (=> b!5308421 (= e!3298840 e!3298837)))

(declare-fun res!2251893 () Bool)

(assert (=> b!5308421 (=> res!2251893 e!3298837)))

(declare-fun lt!2169029 () Regex!14959)

(assert (=> b!5308421 (= res!2251893 (not (= (exprs!4843 (h!67501 zl!343)) (Cons!61052 lt!2169029 (t!374381 (exprs!4843 (h!67501 zl!343)))))))))

(assert (=> b!5308421 (= lt!2169029 (Concat!23804 (regOne!30430 (regOne!30430 r!7292)) (regTwo!30430 (regOne!30430 r!7292))))))

(declare-fun tp!1479272 () Bool)

(declare-fun setNonEmpty!34127 () Bool)

(declare-fun setElem!34127 () Context!8686)

(assert (=> setNonEmpty!34127 (= setRes!34127 (and tp!1479272 (inv!80644 setElem!34127) e!3298855))))

(declare-fun setRest!34127 () (InoxSet Context!8686))

(assert (=> setNonEmpty!34127 (= z!1189 ((_ map or) (store ((as const (Array Context!8686 Bool)) false) setElem!34127 true) setRest!34127))))

(declare-fun b!5308422 () Bool)

(declare-fun e!3298856 () Bool)

(assert (=> b!5308422 (= e!3298856 e!3298858)))

(declare-fun res!2251896 () Bool)

(assert (=> b!5308422 (=> res!2251896 e!3298858)))

(declare-fun e!3298841 () Bool)

(assert (=> b!5308422 (= res!2251896 e!3298841)))

(declare-fun res!2251880 () Bool)

(assert (=> b!5308422 (=> (not res!2251880) (not e!3298841))))

(declare-fun lt!2169046 () Bool)

(declare-fun lt!2169034 () Bool)

(assert (=> b!5308422 (= res!2251880 (not (= lt!2169046 lt!2169034)))))

(assert (=> b!5308422 (= lt!2169046 (matchZipper!1203 lt!2169053 (t!374383 s!2326)))))

(declare-fun lt!2169019 () (InoxSet Context!8686))

(assert (=> b!5308422 (= (matchZipper!1203 lt!2169019 (t!374383 s!2326)) e!3298838)))

(declare-fun res!2251902 () Bool)

(assert (=> b!5308422 (=> res!2251902 e!3298838)))

(assert (=> b!5308422 (= res!2251902 lt!2169034)))

(assert (=> b!5308422 (= lt!2169034 (matchZipper!1203 lt!2169032 (t!374383 s!2326)))))

(declare-fun lt!2169041 () Unit!153354)

(assert (=> b!5308422 (= lt!2169041 (lemmaZipperConcatMatchesSameAsBothZippers!196 lt!2169032 lt!2169048 (t!374383 s!2326)))))

(declare-fun b!5308423 () Bool)

(declare-fun e!3298846 () Bool)

(assert (=> b!5308423 (= e!3298846 (not (matchZipper!1203 (derivationStepZipper!1202 lt!2169027 (h!67502 s!2326)) (t!374383 s!2326))))))

(declare-fun b!5308424 () Bool)

(declare-fun tp!1479278 () Bool)

(assert (=> b!5308424 (= e!3298847 tp!1479278)))

(declare-fun b!5308425 () Bool)

(declare-fun res!2251874 () Bool)

(assert (=> b!5308425 (=> res!2251874 e!3298850)))

(assert (=> b!5308425 (= res!2251874 (not (= lt!2169037 (matchR!7144 (Concat!23804 lt!2169029 lt!2169036) s!2326))))))

(declare-fun b!5308426 () Bool)

(declare-fun e!3298849 () Bool)

(assert (=> b!5308426 (= e!3298849 e!3298856)))

(declare-fun res!2251879 () Bool)

(assert (=> b!5308426 (=> res!2251879 e!3298856)))

(assert (=> b!5308426 (= res!2251879 (not (= lt!2169053 lt!2169019)))))

(assert (=> b!5308426 (= lt!2169019 ((_ map or) lt!2169032 lt!2169048))))

(declare-fun lt!2169025 () Context!8686)

(declare-fun derivationStepZipperDown!407 (Regex!14959 Context!8686 C!30188) (InoxSet Context!8686))

(assert (=> b!5308426 (= lt!2169048 (derivationStepZipperDown!407 (regTwo!30430 (regOne!30430 r!7292)) lt!2169025 (h!67502 s!2326)))))

(assert (=> b!5308426 (= lt!2169032 (derivationStepZipperDown!407 (regOne!30430 (regOne!30430 r!7292)) lt!2169022 (h!67502 s!2326)))))

(assert (=> b!5308426 (= lt!2169022 (Context!8687 lt!2169015))))

(assert (=> b!5308426 (= lt!2169015 (Cons!61052 (regTwo!30430 (regOne!30430 r!7292)) (t!374381 (exprs!4843 (h!67501 zl!343)))))))

(assert (=> b!5308427 (= e!3298842 e!3298848)))

(declare-fun res!2251877 () Bool)

(assert (=> b!5308427 (=> res!2251877 e!3298848)))

(declare-fun lt!2169023 () Bool)

(assert (=> b!5308427 (= res!2251877 (or (not (= lt!2169037 lt!2169023)) ((_ is Nil!61054) s!2326)))))

(assert (=> b!5308427 (= (Exists!2140 lambda!270221) (Exists!2140 lambda!270222))))

(declare-fun lt!2169055 () Unit!153354)

(assert (=> b!5308427 (= lt!2169055 (lemmaExistCutMatchRandMatchRSpecEquivalent!794 (regOne!30430 r!7292) (regTwo!30430 r!7292) s!2326))))

(assert (=> b!5308427 (= lt!2169023 (Exists!2140 lambda!270221))))

(assert (=> b!5308427 (= lt!2169023 (isDefined!11773 (findConcatSeparation!1484 (regOne!30430 r!7292) (regTwo!30430 r!7292) Nil!61054 s!2326 s!2326)))))

(declare-fun lt!2169051 () Unit!153354)

(assert (=> b!5308427 (= lt!2169051 (lemmaFindConcatSeparationEquivalentToExists!1248 (regOne!30430 r!7292) (regTwo!30430 r!7292) s!2326))))

(declare-fun b!5308428 () Bool)

(declare-fun res!2251892 () Bool)

(assert (=> b!5308428 (=> res!2251892 e!3298837)))

(declare-fun contextDepthTotal!100 (Context!8686) Int)

(assert (=> b!5308428 (= res!2251892 (>= (contextDepthTotal!100 lt!2169021) (contextDepthTotal!100 (h!67501 zl!343))))))

(declare-fun b!5308429 () Bool)

(declare-fun res!2251883 () Bool)

(assert (=> b!5308429 (=> res!2251883 e!3298850)))

(assert (=> b!5308429 (= res!2251883 (not (= lt!2169037 (matchR!7144 (Concat!23804 (regOne!30430 r!7292) (regTwo!30430 r!7292)) s!2326))))))

(declare-fun b!5308430 () Bool)

(declare-fun res!2251886 () Bool)

(assert (=> b!5308430 (=> (not res!2251886) (not e!3298852))))

(declare-fun unfocusZipper!701 (List!61177) Regex!14959)

(assert (=> b!5308430 (= res!2251886 (= r!7292 (unfocusZipper!701 zl!343)))))

(declare-fun b!5308431 () Bool)

(declare-fun res!2251901 () Bool)

(assert (=> b!5308431 (=> res!2251901 e!3298842)))

(assert (=> b!5308431 (= res!2251901 (not ((_ is Cons!61052) (exprs!4843 (h!67501 zl!343)))))))

(declare-fun b!5308432 () Bool)

(declare-fun e!3298845 () Bool)

(assert (=> b!5308432 (= e!3298845 (matchZipper!1203 lt!2169010 (t!374383 s!2326)))))

(assert (=> b!5308433 (= e!3298848 e!3298849)))

(declare-fun res!2251899 () Bool)

(assert (=> b!5308433 (=> res!2251899 e!3298849)))

(assert (=> b!5308433 (= res!2251899 (or (and ((_ is ElementMatch!14959) (regOne!30430 r!7292)) (= (c!921907 (regOne!30430 r!7292)) (h!67502 s!2326))) ((_ is Union!14959) (regOne!30430 r!7292)) (not ((_ is Concat!23804) (regOne!30430 r!7292)))))))

(declare-fun lt!2169016 () Unit!153354)

(assert (=> b!5308433 (= lt!2169016 e!3298854)))

(declare-fun c!921906 () Bool)

(declare-fun nullable!5128 (Regex!14959) Bool)

(assert (=> b!5308433 (= c!921906 (nullable!5128 (h!67500 (exprs!4843 (h!67501 zl!343)))))))

(assert (=> b!5308433 (= (flatMap!686 z!1189 lambda!270223) (derivationStepZipperUp!331 (h!67501 zl!343) (h!67502 s!2326)))))

(declare-fun lt!2169031 () Unit!153354)

(assert (=> b!5308433 (= lt!2169031 (lemmaFlatMapOnSingletonSet!218 z!1189 (h!67501 zl!343) lambda!270223))))

(assert (=> b!5308433 (= lt!2169017 (derivationStepZipperUp!331 lt!2169025 (h!67502 s!2326)))))

(assert (=> b!5308433 (= lt!2169053 (derivationStepZipperDown!407 (h!67500 (exprs!4843 (h!67501 zl!343))) lt!2169025 (h!67502 s!2326)))))

(assert (=> b!5308433 (= lt!2169025 (Context!8687 (t!374381 (exprs!4843 (h!67501 zl!343)))))))

(declare-fun lt!2169018 () (InoxSet Context!8686))

(assert (=> b!5308433 (= lt!2169018 (derivationStepZipperUp!331 (Context!8687 (Cons!61052 (h!67500 (exprs!4843 (h!67501 zl!343))) (t!374381 (exprs!4843 (h!67501 zl!343))))) (h!67502 s!2326)))))

(declare-fun b!5308434 () Bool)

(declare-fun res!2251897 () Bool)

(assert (=> b!5308434 (=> res!2251897 e!3298850)))

(assert (=> b!5308434 (= res!2251897 (not (= lt!2169037 (matchR!7144 (Concat!23804 lt!2169029 (regTwo!30430 r!7292)) s!2326))))))

(declare-fun b!5308435 () Bool)

(assert (=> b!5308435 (= e!3298841 (not (matchZipper!1203 lt!2169048 (t!374383 s!2326))))))

(declare-fun b!5308436 () Bool)

(declare-fun res!2251890 () Bool)

(assert (=> b!5308436 (=> res!2251890 e!3298849)))

(assert (=> b!5308436 (= res!2251890 (not (nullable!5128 (regOne!30430 (regOne!30430 r!7292)))))))

(declare-fun b!5308410 () Bool)

(assert (=> b!5308410 (= e!3298843 e!3298840)))

(declare-fun res!2251876 () Bool)

(assert (=> b!5308410 (=> res!2251876 e!3298840)))

(assert (=> b!5308410 (= res!2251876 e!3298846)))

(declare-fun res!2251900 () Bool)

(assert (=> b!5308410 (=> (not res!2251900) (not e!3298846))))

(assert (=> b!5308410 (= res!2251900 (not (= lt!2169046 (matchZipper!1203 lt!2169054 (t!374383 s!2326)))))))

(assert (=> b!5308410 (= (matchZipper!1203 lt!2169024 (t!374383 s!2326)) e!3298845)))

(declare-fun res!2251885 () Bool)

(assert (=> b!5308410 (=> res!2251885 e!3298845)))

(assert (=> b!5308410 (= res!2251885 lt!2169034)))

(declare-fun lt!2169013 () Unit!153354)

(assert (=> b!5308410 (= lt!2169013 (lemmaZipperConcatMatchesSameAsBothZippers!196 lt!2169032 lt!2169010 (t!374383 s!2326)))))

(assert (=> b!5308410 (= (flatMap!686 lt!2169027 lambda!270223) (derivationStepZipperUp!331 lt!2169022 (h!67502 s!2326)))))

(declare-fun lt!2169038 () Unit!153354)

(assert (=> b!5308410 (= lt!2169038 (lemmaFlatMapOnSingletonSet!218 lt!2169027 lt!2169022 lambda!270223))))

(declare-fun res!2251881 () Bool)

(assert (=> start!559790 (=> (not res!2251881) (not e!3298852))))

(declare-fun validRegex!6695 (Regex!14959) Bool)

(assert (=> start!559790 (= res!2251881 (validRegex!6695 r!7292))))

(assert (=> start!559790 e!3298852))

(assert (=> start!559790 e!3298847))

(declare-fun condSetEmpty!34127 () Bool)

(assert (=> start!559790 (= condSetEmpty!34127 (= z!1189 ((as const (Array Context!8686 Bool)) false)))))

(assert (=> start!559790 setRes!34127))

(assert (=> start!559790 e!3298857))

(assert (=> start!559790 e!3298851))

(declare-fun b!5308437 () Bool)

(declare-fun tp!1479276 () Bool)

(declare-fun tp!1479279 () Bool)

(assert (=> b!5308437 (= e!3298847 (and tp!1479276 tp!1479279))))

(declare-fun b!5308438 () Bool)

(declare-fun res!2251891 () Bool)

(assert (=> b!5308438 (=> res!2251891 e!3298842)))

(declare-fun isEmpty!33016 (List!61177) Bool)

(assert (=> b!5308438 (= res!2251891 (not (isEmpty!33016 (t!374382 zl!343))))))

(declare-fun b!5308439 () Bool)

(declare-fun tp!1479275 () Bool)

(assert (=> b!5308439 (= e!3298839 tp!1479275)))

(declare-fun b!5308440 () Bool)

(assert (=> b!5308440 (= e!3298837 e!3298844)))

(declare-fun res!2251889 () Bool)

(assert (=> b!5308440 (=> res!2251889 e!3298844)))

(declare-fun zipperDepthTotal!120 (List!61177) Int)

(assert (=> b!5308440 (= res!2251889 (>= (zipperDepthTotal!120 lt!2169039) (zipperDepthTotal!120 zl!343)))))

(assert (=> b!5308440 (= lt!2169039 (Cons!61053 lt!2169021 Nil!61053))))

(declare-fun b!5308441 () Bool)

(assert (=> b!5308441 (= e!3298853 (matchZipper!1203 lt!2169017 (t!374383 s!2326)))))

(declare-fun b!5308442 () Bool)

(declare-fun Unit!153357 () Unit!153354)

(assert (=> b!5308442 (= e!3298854 Unit!153357)))

(declare-fun b!5308443 () Bool)

(declare-fun tp!1479273 () Bool)

(declare-fun tp!1479280 () Bool)

(assert (=> b!5308443 (= e!3298847 (and tp!1479273 tp!1479280))))

(declare-fun b!5308444 () Bool)

(declare-fun res!2251878 () Bool)

(assert (=> b!5308444 (=> res!2251878 e!3298842)))

(declare-fun generalisedUnion!888 (List!61176) Regex!14959)

(declare-fun unfocusZipperList!401 (List!61177) List!61176)

(assert (=> b!5308444 (= res!2251878 (not (= r!7292 (generalisedUnion!888 (unfocusZipperList!401 zl!343)))))))

(declare-fun b!5308445 () Bool)

(assert (=> b!5308445 (= e!3298850 true)))

(assert (= (and start!559790 res!2251881) b!5308414))

(assert (= (and b!5308414 res!2251903) b!5308430))

(assert (= (and b!5308430 res!2251886) b!5308413))

(assert (= (and b!5308413 (not res!2251898)) b!5308438))

(assert (= (and b!5308438 (not res!2251891)) b!5308408))

(assert (= (and b!5308408 (not res!2251882)) b!5308431))

(assert (= (and b!5308431 (not res!2251901)) b!5308444))

(assert (= (and b!5308444 (not res!2251878)) b!5308415))

(assert (= (and b!5308415 (not res!2251887)) b!5308427))

(assert (= (and b!5308427 (not res!2251877)) b!5308417))

(assert (= (and b!5308417 (not res!2251875)) b!5308433))

(assert (= (and b!5308433 c!921906) b!5308412))

(assert (= (and b!5308433 (not c!921906)) b!5308442))

(assert (= (and b!5308412 (not res!2251884)) b!5308441))

(assert (= (and b!5308433 (not res!2251899)) b!5308436))

(assert (= (and b!5308436 (not res!2251890)) b!5308426))

(assert (= (and b!5308426 (not res!2251879)) b!5308422))

(assert (= (and b!5308422 (not res!2251902)) b!5308418))

(assert (= (and b!5308422 res!2251880) b!5308435))

(assert (= (and b!5308422 (not res!2251896)) b!5308411))

(assert (= (and b!5308411 (not res!2251888)) b!5308410))

(assert (= (and b!5308410 (not res!2251885)) b!5308432))

(assert (= (and b!5308410 res!2251900) b!5308423))

(assert (= (and b!5308410 (not res!2251876)) b!5308421))

(assert (= (and b!5308421 (not res!2251893)) b!5308428))

(assert (= (and b!5308428 (not res!2251892)) b!5308440))

(assert (= (and b!5308440 (not res!2251889)) b!5308407))

(assert (= (and b!5308407 (not res!2251894)) b!5308419))

(assert (= (and b!5308419 (not res!2251895)) b!5308429))

(assert (= (and b!5308429 (not res!2251883)) b!5308434))

(assert (= (and b!5308434 (not res!2251897)) b!5308425))

(assert (= (and b!5308425 (not res!2251874)) b!5308445))

(assert (= (and start!559790 ((_ is ElementMatch!14959) r!7292)) b!5308416))

(assert (= (and start!559790 ((_ is Concat!23804) r!7292)) b!5308437))

(assert (= (and start!559790 ((_ is Star!14959) r!7292)) b!5308424))

(assert (= (and start!559790 ((_ is Union!14959) r!7292)) b!5308443))

(assert (= (and start!559790 condSetEmpty!34127) setIsEmpty!34127))

(assert (= (and start!559790 (not condSetEmpty!34127)) setNonEmpty!34127))

(assert (= setNonEmpty!34127 b!5308409))

(assert (= b!5308420 b!5308439))

(assert (= (and start!559790 ((_ is Cons!61053) zl!343)) b!5308420))

(assert (= (and start!559790 ((_ is Cons!61054) s!2326)) b!5308406))

(declare-fun m!6345534 () Bool)

(assert (=> b!5308429 m!6345534))

(declare-fun m!6345536 () Bool)

(assert (=> b!5308438 m!6345536))

(declare-fun m!6345538 () Bool)

(assert (=> b!5308441 m!6345538))

(declare-fun m!6345540 () Bool)

(assert (=> b!5308423 m!6345540))

(assert (=> b!5308423 m!6345540))

(declare-fun m!6345542 () Bool)

(assert (=> b!5308423 m!6345542))

(declare-fun m!6345544 () Bool)

(assert (=> b!5308425 m!6345544))

(declare-fun m!6345546 () Bool)

(assert (=> b!5308435 m!6345546))

(declare-fun m!6345548 () Bool)

(assert (=> setNonEmpty!34127 m!6345548))

(declare-fun m!6345550 () Bool)

(assert (=> b!5308444 m!6345550))

(assert (=> b!5308444 m!6345550))

(declare-fun m!6345552 () Bool)

(assert (=> b!5308444 m!6345552))

(declare-fun m!6345554 () Bool)

(assert (=> b!5308436 m!6345554))

(assert (=> b!5308418 m!6345546))

(declare-fun m!6345556 () Bool)

(assert (=> b!5308434 m!6345556))

(declare-fun m!6345558 () Bool)

(assert (=> b!5308419 m!6345558))

(declare-fun m!6345560 () Bool)

(assert (=> b!5308419 m!6345560))

(declare-fun m!6345562 () Bool)

(assert (=> b!5308419 m!6345562))

(declare-fun m!6345564 () Bool)

(assert (=> b!5308419 m!6345564))

(declare-fun m!6345566 () Bool)

(assert (=> b!5308419 m!6345566))

(assert (=> b!5308419 m!6345562))

(declare-fun m!6345568 () Bool)

(assert (=> b!5308419 m!6345568))

(declare-fun m!6345570 () Bool)

(assert (=> b!5308419 m!6345570))

(declare-fun m!6345572 () Bool)

(assert (=> b!5308419 m!6345572))

(declare-fun m!6345574 () Bool)

(assert (=> b!5308419 m!6345574))

(declare-fun m!6345576 () Bool)

(assert (=> b!5308419 m!6345576))

(declare-fun m!6345578 () Bool)

(assert (=> b!5308419 m!6345578))

(declare-fun m!6345580 () Bool)

(assert (=> b!5308419 m!6345580))

(declare-fun m!6345582 () Bool)

(assert (=> b!5308419 m!6345582))

(declare-fun m!6345584 () Bool)

(assert (=> b!5308419 m!6345584))

(declare-fun m!6345586 () Bool)

(assert (=> b!5308419 m!6345586))

(declare-fun m!6345588 () Bool)

(assert (=> b!5308419 m!6345588))

(declare-fun m!6345590 () Bool)

(assert (=> b!5308419 m!6345590))

(declare-fun m!6345592 () Bool)

(assert (=> b!5308419 m!6345592))

(assert (=> b!5308419 m!6345572))

(assert (=> b!5308419 m!6345592))

(declare-fun m!6345594 () Bool)

(assert (=> b!5308419 m!6345594))

(declare-fun m!6345596 () Bool)

(assert (=> b!5308419 m!6345596))

(declare-fun m!6345598 () Bool)

(assert (=> b!5308419 m!6345598))

(declare-fun m!6345600 () Bool)

(assert (=> b!5308419 m!6345600))

(declare-fun m!6345602 () Bool)

(assert (=> b!5308419 m!6345602))

(declare-fun m!6345604 () Bool)

(assert (=> b!5308419 m!6345604))

(assert (=> b!5308419 m!6345598))

(declare-fun m!6345606 () Bool)

(assert (=> b!5308419 m!6345606))

(declare-fun m!6345608 () Bool)

(assert (=> b!5308419 m!6345608))

(declare-fun m!6345610 () Bool)

(assert (=> b!5308413 m!6345610))

(declare-fun m!6345612 () Bool)

(assert (=> b!5308413 m!6345612))

(declare-fun m!6345614 () Bool)

(assert (=> b!5308413 m!6345614))

(declare-fun m!6345616 () Bool)

(assert (=> b!5308433 m!6345616))

(declare-fun m!6345618 () Bool)

(assert (=> b!5308433 m!6345618))

(declare-fun m!6345620 () Bool)

(assert (=> b!5308433 m!6345620))

(declare-fun m!6345622 () Bool)

(assert (=> b!5308433 m!6345622))

(declare-fun m!6345624 () Bool)

(assert (=> b!5308433 m!6345624))

(declare-fun m!6345626 () Bool)

(assert (=> b!5308433 m!6345626))

(declare-fun m!6345628 () Bool)

(assert (=> b!5308433 m!6345628))

(declare-fun m!6345630 () Bool)

(assert (=> b!5308408 m!6345630))

(declare-fun m!6345632 () Bool)

(assert (=> b!5308428 m!6345632))

(declare-fun m!6345634 () Bool)

(assert (=> b!5308428 m!6345634))

(declare-fun m!6345636 () Bool)

(assert (=> b!5308422 m!6345636))

(declare-fun m!6345638 () Bool)

(assert (=> b!5308422 m!6345638))

(declare-fun m!6345640 () Bool)

(assert (=> b!5308422 m!6345640))

(declare-fun m!6345642 () Bool)

(assert (=> b!5308422 m!6345642))

(declare-fun m!6345644 () Bool)

(assert (=> b!5308410 m!6345644))

(declare-fun m!6345646 () Bool)

(assert (=> b!5308410 m!6345646))

(declare-fun m!6345648 () Bool)

(assert (=> b!5308410 m!6345648))

(declare-fun m!6345650 () Bool)

(assert (=> b!5308410 m!6345650))

(declare-fun m!6345652 () Bool)

(assert (=> b!5308410 m!6345652))

(declare-fun m!6345654 () Bool)

(assert (=> b!5308410 m!6345654))

(declare-fun m!6345656 () Bool)

(assert (=> b!5308426 m!6345656))

(declare-fun m!6345658 () Bool)

(assert (=> b!5308426 m!6345658))

(declare-fun m!6345660 () Bool)

(assert (=> b!5308430 m!6345660))

(declare-fun m!6345662 () Bool)

(assert (=> b!5308412 m!6345662))

(assert (=> b!5308412 m!6345636))

(declare-fun m!6345664 () Bool)

(assert (=> b!5308412 m!6345664))

(declare-fun m!6345666 () Bool)

(assert (=> b!5308414 m!6345666))

(declare-fun m!6345668 () Bool)

(assert (=> b!5308407 m!6345668))

(declare-fun m!6345670 () Bool)

(assert (=> b!5308407 m!6345670))

(declare-fun m!6345672 () Bool)

(assert (=> start!559790 m!6345672))

(declare-fun m!6345674 () Bool)

(assert (=> b!5308440 m!6345674))

(declare-fun m!6345676 () Bool)

(assert (=> b!5308440 m!6345676))

(declare-fun m!6345678 () Bool)

(assert (=> b!5308432 m!6345678))

(declare-fun m!6345680 () Bool)

(assert (=> b!5308420 m!6345680))

(declare-fun m!6345682 () Bool)

(assert (=> b!5308427 m!6345682))

(declare-fun m!6345684 () Bool)

(assert (=> b!5308427 m!6345684))

(declare-fun m!6345686 () Bool)

(assert (=> b!5308427 m!6345686))

(declare-fun m!6345688 () Bool)

(assert (=> b!5308427 m!6345688))

(assert (=> b!5308427 m!6345682))

(declare-fun m!6345690 () Bool)

(assert (=> b!5308427 m!6345690))

(assert (=> b!5308427 m!6345684))

(declare-fun m!6345692 () Bool)

(assert (=> b!5308427 m!6345692))

(declare-fun m!6345694 () Bool)

(assert (=> b!5308417 m!6345694))

(assert (=> b!5308411 m!6345646))

(declare-fun m!6345696 () Bool)

(assert (=> b!5308411 m!6345696))

(declare-fun m!6345698 () Bool)

(assert (=> b!5308411 m!6345698))

(declare-fun m!6345700 () Bool)

(assert (=> b!5308411 m!6345700))

(declare-fun m!6345702 () Bool)

(assert (=> b!5308411 m!6345702))

(declare-fun m!6345704 () Bool)

(assert (=> b!5308411 m!6345704))

(declare-fun m!6345706 () Bool)

(assert (=> b!5308411 m!6345706))

(check-sat (not b!5308412) tp_is_empty!39171 (not b!5308434) (not start!559790) (not b!5308433) (not b!5308444) (not b!5308443) (not b!5308417) (not b!5308428) (not b!5308407) (not b!5308439) (not b!5308413) (not b!5308423) (not b!5308411) (not b!5308414) (not b!5308408) (not b!5308429) (not b!5308419) (not b!5308430) (not b!5308437) (not b!5308436) (not setNonEmpty!34127) (not b!5308420) (not b!5308432) (not b!5308425) (not b!5308410) (not b!5308406) (not b!5308409) (not b!5308418) (not b!5308438) (not b!5308441) (not b!5308424) (not b!5308440) (not b!5308426) (not b!5308427) (not b!5308435) (not b!5308422))
(check-sat)
