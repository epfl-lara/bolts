; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!658280 () Bool)

(assert start!658280)

(declare-fun b!6801023 () Bool)

(assert (=> b!6801023 true))

(assert (=> b!6801023 true))

(declare-fun lambda!383591 () Int)

(declare-fun lambda!383590 () Int)

(assert (=> b!6801023 (not (= lambda!383591 lambda!383590))))

(assert (=> b!6801023 true))

(assert (=> b!6801023 true))

(declare-fun lambda!383592 () Int)

(assert (=> b!6801023 (not (= lambda!383592 lambda!383590))))

(assert (=> b!6801023 (not (= lambda!383592 lambda!383591))))

(assert (=> b!6801023 true))

(assert (=> b!6801023 true))

(declare-fun b!6801053 () Bool)

(assert (=> b!6801053 true))

(declare-fun b!6801021 () Bool)

(assert (=> b!6801021 true))

(declare-fun e!4104390 () Bool)

(declare-fun e!4104403 () Bool)

(assert (=> b!6801021 (= e!4104390 e!4104403)))

(declare-fun res!2779242 () Bool)

(assert (=> b!6801021 (=> res!2779242 e!4104403)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!33512 0))(
  ( (C!33513 (val!26458 Int)) )
))
(declare-datatypes ((Regex!16621 0))(
  ( (ElementMatch!16621 (c!1264611 C!33512)) (Concat!25466 (regOne!33754 Regex!16621) (regTwo!33754 Regex!16621)) (EmptyExpr!16621) (Star!16621 (reg!16950 Regex!16621)) (EmptyLang!16621) (Union!16621 (regOne!33755 Regex!16621) (regTwo!33755 Regex!16621)) )
))
(declare-datatypes ((List!66162 0))(
  ( (Nil!66038) (Cons!66038 (h!72486 Regex!16621) (t!379893 List!66162)) )
))
(declare-datatypes ((Context!12010 0))(
  ( (Context!12011 (exprs!6505 List!66162)) )
))
(declare-fun lt!2448056 () (InoxSet Context!12010))

(declare-fun lt!2448058 () (InoxSet Context!12010))

(declare-fun lt!2448042 () Context!12010)

(declare-fun appendTo!226 ((InoxSet Context!12010) Context!12010) (InoxSet Context!12010))

(assert (=> b!6801021 (= res!2779242 (not (= (appendTo!226 lt!2448056 lt!2448042) lt!2448058)))))

(declare-fun r!7292 () Regex!16621)

(declare-fun lambda!383594 () Int)

(declare-fun lt!2448028 () List!66162)

(declare-fun map!15092 ((InoxSet Context!12010) Int) (InoxSet Context!12010))

(declare-fun ++!14788 (List!66162 List!66162) List!66162)

(assert (=> b!6801021 (= (map!15092 lt!2448056 lambda!383594) (store ((as const (Array Context!12010 Bool)) false) (Context!12011 (++!14788 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028)) true))))

(declare-datatypes ((Unit!159933 0))(
  ( (Unit!159934) )
))
(declare-fun lt!2448037 () Unit!159933)

(declare-fun lambda!383595 () Int)

(declare-fun lemmaConcatPreservesForall!450 (List!66162 List!66162 Int) Unit!159933)

(assert (=> b!6801021 (= lt!2448037 (lemmaConcatPreservesForall!450 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028 lambda!383595))))

(declare-fun lt!2448030 () Context!12010)

(declare-fun lt!2448050 () Unit!159933)

(declare-fun lemmaMapOnSingletonSet!256 ((InoxSet Context!12010) Context!12010 Int) Unit!159933)

(assert (=> b!6801021 (= lt!2448050 (lemmaMapOnSingletonSet!256 lt!2448056 lt!2448030 lambda!383594))))

(declare-fun b!6801022 () Bool)

(declare-fun res!2779251 () Bool)

(declare-fun e!4104404 () Bool)

(assert (=> b!6801022 (=> res!2779251 e!4104404)))

(declare-datatypes ((List!66163 0))(
  ( (Nil!66039) (Cons!66039 (h!72487 Context!12010) (t!379894 List!66163)) )
))
(declare-fun zl!343 () List!66163)

(declare-fun generalisedUnion!2465 (List!66162) Regex!16621)

(declare-fun unfocusZipperList!2042 (List!66163) List!66162)

(assert (=> b!6801022 (= res!2779251 (not (= r!7292 (generalisedUnion!2465 (unfocusZipperList!2042 zl!343)))))))

(declare-fun e!4104387 () Bool)

(assert (=> b!6801023 (= e!4104404 e!4104387)))

(declare-fun res!2779264 () Bool)

(assert (=> b!6801023 (=> res!2779264 e!4104387)))

(declare-fun lt!2448053 () Bool)

(declare-fun e!4104389 () Bool)

(assert (=> b!6801023 (= res!2779264 (not (= lt!2448053 e!4104389)))))

(declare-fun res!2779263 () Bool)

(assert (=> b!6801023 (=> res!2779263 e!4104389)))

(declare-datatypes ((List!66164 0))(
  ( (Nil!66040) (Cons!66040 (h!72488 C!33512) (t!379895 List!66164)) )
))
(declare-fun s!2326 () List!66164)

(declare-fun isEmpty!38417 (List!66164) Bool)

(assert (=> b!6801023 (= res!2779263 (isEmpty!38417 s!2326))))

(declare-fun Exists!3689 (Int) Bool)

(assert (=> b!6801023 (= (Exists!3689 lambda!383590) (Exists!3689 lambda!383592))))

(declare-fun lt!2448040 () Unit!159933)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2216 (Regex!16621 Regex!16621 List!66164) Unit!159933)

(assert (=> b!6801023 (= lt!2448040 (lemmaExistCutMatchRandMatchRSpecEquivalent!2216 (reg!16950 r!7292) r!7292 s!2326))))

(assert (=> b!6801023 (= (Exists!3689 lambda!383590) (Exists!3689 lambda!383591))))

(declare-fun lt!2448045 () Unit!159933)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!780 (Regex!16621 List!66164) Unit!159933)

(assert (=> b!6801023 (= lt!2448045 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!780 (reg!16950 r!7292) s!2326))))

(declare-fun lt!2448036 () Bool)

(assert (=> b!6801023 (= lt!2448036 (Exists!3689 lambda!383590))))

(declare-datatypes ((tuple2!67192 0))(
  ( (tuple2!67193 (_1!36899 List!66164) (_2!36899 List!66164)) )
))
(declare-datatypes ((Option!16508 0))(
  ( (None!16507) (Some!16507 (v!52713 tuple2!67192)) )
))
(declare-fun isDefined!13211 (Option!16508) Bool)

(declare-fun findConcatSeparation!2922 (Regex!16621 Regex!16621 List!66164 List!66164 List!66164) Option!16508)

(assert (=> b!6801023 (= lt!2448036 (isDefined!13211 (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 Nil!66040 s!2326 s!2326)))))

(declare-fun lt!2448041 () Unit!159933)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2686 (Regex!16621 Regex!16621 List!66164) Unit!159933)

(assert (=> b!6801023 (= lt!2448041 (lemmaFindConcatSeparationEquivalentToExists!2686 (reg!16950 r!7292) r!7292 s!2326))))

(declare-fun b!6801024 () Bool)

(declare-fun e!4104388 () Bool)

(declare-fun tp!1862111 () Bool)

(declare-fun tp!1862108 () Bool)

(assert (=> b!6801024 (= e!4104388 (and tp!1862111 tp!1862108))))

(declare-fun b!6801025 () Bool)

(declare-fun tp_is_empty!42495 () Bool)

(assert (=> b!6801025 (= e!4104388 tp_is_empty!42495)))

(declare-fun b!6801026 () Bool)

(declare-fun res!2779268 () Bool)

(declare-fun e!4104402 () Bool)

(assert (=> b!6801026 (=> res!2779268 e!4104402)))

(declare-fun matchZipper!2607 ((InoxSet Context!12010) List!66164) Bool)

(declare-fun derivationStepZipper!2565 ((InoxSet Context!12010) C!33512) (InoxSet Context!12010))

(assert (=> b!6801026 (= res!2779268 (not (= (matchZipper!2607 lt!2448058 s!2326) (matchZipper!2607 (derivationStepZipper!2565 lt!2448058 (h!72488 s!2326)) (t!379895 s!2326)))))))

(declare-fun b!6801027 () Bool)

(declare-fun e!4104399 () Bool)

(assert (=> b!6801027 (= e!4104399 e!4104402)))

(declare-fun res!2779260 () Bool)

(assert (=> b!6801027 (=> res!2779260 e!4104402)))

(declare-fun lt!2448049 () (InoxSet Context!12010))

(declare-fun derivationStepZipperDown!1849 (Regex!16621 Context!12010 C!33512) (InoxSet Context!12010))

(assert (=> b!6801027 (= res!2779260 (not (= lt!2448049 (derivationStepZipperDown!1849 (reg!16950 r!7292) lt!2448042 (h!72488 s!2326)))))))

(assert (=> b!6801027 (= lt!2448042 (Context!12011 lt!2448028))))

(declare-fun lambda!383593 () Int)

(declare-fun lt!2448035 () Context!12010)

(declare-fun flatMap!2102 ((InoxSet Context!12010) Int) (InoxSet Context!12010))

(declare-fun derivationStepZipperUp!1775 (Context!12010 C!33512) (InoxSet Context!12010))

(assert (=> b!6801027 (= (flatMap!2102 lt!2448058 lambda!383593) (derivationStepZipperUp!1775 lt!2448035 (h!72488 s!2326)))))

(declare-fun lt!2448033 () Unit!159933)

(declare-fun lemmaFlatMapOnSingletonSet!1628 ((InoxSet Context!12010) Context!12010 Int) Unit!159933)

(assert (=> b!6801027 (= lt!2448033 (lemmaFlatMapOnSingletonSet!1628 lt!2448058 lt!2448035 lambda!383593))))

(declare-fun lt!2448047 () (InoxSet Context!12010))

(assert (=> b!6801027 (= lt!2448047 (derivationStepZipperUp!1775 lt!2448035 (h!72488 s!2326)))))

(assert (=> b!6801027 (= lt!2448058 (store ((as const (Array Context!12010 Bool)) false) lt!2448035 true))))

(assert (=> b!6801027 (= lt!2448035 (Context!12011 (Cons!66038 (reg!16950 r!7292) lt!2448028)))))

(assert (=> b!6801027 (= lt!2448028 (Cons!66038 r!7292 Nil!66038))))

(declare-fun b!6801028 () Bool)

(declare-fun res!2779253 () Bool)

(assert (=> b!6801028 (=> res!2779253 e!4104390)))

(declare-fun z!1189 () (InoxSet Context!12010))

(assert (=> b!6801028 (= res!2779253 (not (matchZipper!2607 z!1189 s!2326)))))

(declare-fun b!6801029 () Bool)

(assert (=> b!6801029 (= e!4104389 lt!2448036)))

(declare-fun setIsEmpty!46621 () Bool)

(declare-fun setRes!46621 () Bool)

(assert (=> setIsEmpty!46621 setRes!46621))

(declare-fun b!6801031 () Bool)

(declare-fun e!4104401 () Bool)

(assert (=> b!6801031 (= e!4104387 e!4104401)))

(declare-fun res!2779248 () Bool)

(assert (=> b!6801031 (=> res!2779248 e!4104401)))

(declare-fun lt!2448054 () (InoxSet Context!12010))

(declare-fun lt!2448044 () (InoxSet Context!12010))

(assert (=> b!6801031 (= res!2779248 (not (= lt!2448054 lt!2448044)))))

(assert (=> b!6801031 (= lt!2448044 (derivationStepZipperDown!1849 r!7292 (Context!12011 Nil!66038) (h!72488 s!2326)))))

(assert (=> b!6801031 (= lt!2448054 (derivationStepZipperUp!1775 (Context!12011 (Cons!66038 r!7292 Nil!66038)) (h!72488 s!2326)))))

(assert (=> b!6801031 (= lt!2448049 (derivationStepZipper!2565 z!1189 (h!72488 s!2326)))))

(declare-fun b!6801032 () Bool)

(declare-fun e!4104396 () Bool)

(declare-fun inv!84799 (Context!12010) Bool)

(assert (=> b!6801032 (= e!4104396 (inv!84799 lt!2448030))))

(declare-fun b!6801033 () Bool)

(declare-fun e!4104395 () Bool)

(declare-fun e!4104400 () Bool)

(assert (=> b!6801033 (= e!4104395 e!4104400)))

(declare-fun res!2779254 () Bool)

(assert (=> b!6801033 (=> res!2779254 e!4104400)))

(declare-fun lt!2448055 () (InoxSet Context!12010))

(assert (=> b!6801033 (= res!2779254 (not (= lt!2448049 (derivationStepZipper!2565 lt!2448055 (h!72488 s!2326)))))))

(assert (=> b!6801033 (= (flatMap!2102 lt!2448055 lambda!383593) (derivationStepZipperUp!1775 lt!2448042 (h!72488 s!2326)))))

(declare-fun lt!2448039 () Unit!159933)

(assert (=> b!6801033 (= lt!2448039 (lemmaFlatMapOnSingletonSet!1628 lt!2448055 lt!2448042 lambda!383593))))

(assert (=> b!6801033 (= (flatMap!2102 lt!2448056 lambda!383593) (derivationStepZipperUp!1775 lt!2448030 (h!72488 s!2326)))))

(declare-fun lt!2448029 () Unit!159933)

(assert (=> b!6801033 (= lt!2448029 (lemmaFlatMapOnSingletonSet!1628 lt!2448056 lt!2448030 lambda!383593))))

(declare-fun lt!2448043 () (InoxSet Context!12010))

(assert (=> b!6801033 (= lt!2448043 (derivationStepZipperUp!1775 lt!2448042 (h!72488 s!2326)))))

(declare-fun lt!2448032 () (InoxSet Context!12010))

(assert (=> b!6801033 (= lt!2448032 (derivationStepZipperUp!1775 lt!2448030 (h!72488 s!2326)))))

(assert (=> b!6801033 (= lt!2448055 (store ((as const (Array Context!12010 Bool)) false) lt!2448042 true))))

(assert (=> b!6801033 (= lt!2448056 (store ((as const (Array Context!12010 Bool)) false) lt!2448030 true))))

(assert (=> b!6801033 (= lt!2448030 (Context!12011 (Cons!66038 (reg!16950 r!7292) Nil!66038)))))

(declare-fun b!6801034 () Bool)

(declare-fun e!4104391 () Bool)

(declare-fun tp!1862115 () Bool)

(assert (=> b!6801034 (= e!4104391 tp!1862115)))

(declare-fun b!6801035 () Bool)

(declare-fun tp!1862112 () Bool)

(assert (=> b!6801035 (= e!4104388 tp!1862112)))

(declare-fun b!6801036 () Bool)

(declare-fun res!2779244 () Bool)

(declare-fun e!4104397 () Bool)

(assert (=> b!6801036 (=> (not res!2779244) (not e!4104397))))

(declare-fun toList!10405 ((InoxSet Context!12010)) List!66163)

(assert (=> b!6801036 (= res!2779244 (= (toList!10405 z!1189) zl!343))))

(declare-fun b!6801037 () Bool)

(declare-fun e!4104393 () Bool)

(assert (=> b!6801037 (= e!4104393 (not e!4104404))))

(declare-fun res!2779259 () Bool)

(assert (=> b!6801037 (=> res!2779259 e!4104404)))

(get-info :version)

(assert (=> b!6801037 (= res!2779259 (not ((_ is Cons!66039) zl!343)))))

(declare-fun matchRSpec!3722 (Regex!16621 List!66164) Bool)

(assert (=> b!6801037 (= lt!2448053 (matchRSpec!3722 r!7292 s!2326))))

(declare-fun matchR!8804 (Regex!16621 List!66164) Bool)

(assert (=> b!6801037 (= lt!2448053 (matchR!8804 r!7292 s!2326))))

(declare-fun lt!2448031 () Unit!159933)

(declare-fun mainMatchTheorem!3722 (Regex!16621 List!66164) Unit!159933)

(assert (=> b!6801037 (= lt!2448031 (mainMatchTheorem!3722 r!7292 s!2326))))

(declare-fun b!6801038 () Bool)

(declare-fun res!2779257 () Bool)

(assert (=> b!6801038 (=> res!2779257 e!4104404)))

(declare-fun generalisedConcat!2218 (List!66162) Regex!16621)

(assert (=> b!6801038 (= res!2779257 (not (= r!7292 (generalisedConcat!2218 (exprs!6505 (h!72487 zl!343))))))))

(declare-fun b!6801039 () Bool)

(declare-fun res!2779261 () Bool)

(assert (=> b!6801039 (=> res!2779261 e!4104400)))

(declare-fun unfocusZipper!2363 (List!66163) Regex!16621)

(assert (=> b!6801039 (= res!2779261 (not (= (unfocusZipper!2363 (Cons!66039 lt!2448042 Nil!66039)) r!7292)))))

(declare-fun b!6801040 () Bool)

(declare-fun res!2779262 () Bool)

(assert (=> b!6801040 (=> res!2779262 e!4104396)))

(declare-fun lt!2448046 () tuple2!67192)

(assert (=> b!6801040 (= res!2779262 (not (matchZipper!2607 lt!2448056 (_1!36899 lt!2448046))))))

(declare-fun b!6801041 () Bool)

(assert (=> b!6801041 (= e!4104403 e!4104396)))

(declare-fun res!2779249 () Bool)

(assert (=> b!6801041 (=> res!2779249 e!4104396)))

(declare-fun ++!14789 (List!66164 List!66164) List!66164)

(assert (=> b!6801041 (= res!2779249 (not (= s!2326 (++!14789 (_1!36899 lt!2448046) (_2!36899 lt!2448046)))))))

(declare-fun lt!2448052 () Option!16508)

(declare-fun get!23001 (Option!16508) tuple2!67192)

(assert (=> b!6801041 (= lt!2448046 (get!23001 lt!2448052))))

(assert (=> b!6801041 (isDefined!13211 lt!2448052)))

(declare-fun findConcatSeparationZippers!230 ((InoxSet Context!12010) (InoxSet Context!12010) List!66164 List!66164 List!66164) Option!16508)

(assert (=> b!6801041 (= lt!2448052 (findConcatSeparationZippers!230 lt!2448056 lt!2448055 Nil!66040 s!2326 s!2326))))

(declare-fun lt!2448057 () Unit!159933)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!230 ((InoxSet Context!12010) Context!12010 List!66164) Unit!159933)

(assert (=> b!6801041 (= lt!2448057 (lemmaConcatZipperMatchesStringThenFindConcatDefined!230 lt!2448056 lt!2448042 s!2326))))

(declare-fun b!6801042 () Bool)

(declare-fun res!2779247 () Bool)

(assert (=> b!6801042 (=> res!2779247 e!4104402)))

(declare-fun lt!2448051 () Regex!16621)

(assert (=> b!6801042 (= res!2779247 (or (not (= lt!2448051 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6801043 () Bool)

(assert (=> b!6801043 (= e!4104400 e!4104390)))

(declare-fun res!2779243 () Bool)

(assert (=> b!6801043 (=> res!2779243 e!4104390)))

(declare-fun lt!2448038 () Bool)

(assert (=> b!6801043 (= res!2779243 lt!2448038)))

(declare-fun lt!2448048 () Regex!16621)

(assert (=> b!6801043 (= lt!2448038 (matchRSpec!3722 lt!2448048 s!2326))))

(assert (=> b!6801043 (= lt!2448038 (matchR!8804 lt!2448048 s!2326))))

(declare-fun lt!2448027 () Unit!159933)

(assert (=> b!6801043 (= lt!2448027 (mainMatchTheorem!3722 lt!2448048 s!2326))))

(declare-fun b!6801044 () Bool)

(declare-fun res!2779246 () Bool)

(assert (=> b!6801044 (=> res!2779246 e!4104404)))

(assert (=> b!6801044 (= res!2779246 (not ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343)))))))

(declare-fun b!6801045 () Bool)

(declare-fun e!4104398 () Bool)

(declare-fun tp!1862113 () Bool)

(assert (=> b!6801045 (= e!4104398 (and tp_is_empty!42495 tp!1862113))))

(declare-fun b!6801046 () Bool)

(assert (=> b!6801046 (= e!4104402 e!4104395)))

(declare-fun res!2779267 () Bool)

(assert (=> b!6801046 (=> res!2779267 e!4104395)))

(assert (=> b!6801046 (= res!2779267 (not (= (unfocusZipper!2363 (Cons!66039 lt!2448035 Nil!66039)) lt!2448048)))))

(assert (=> b!6801046 (= lt!2448048 (Concat!25466 (reg!16950 r!7292) r!7292))))

(declare-fun b!6801047 () Bool)

(assert (=> b!6801047 (= e!4104397 e!4104393)))

(declare-fun res!2779258 () Bool)

(assert (=> b!6801047 (=> (not res!2779258) (not e!4104393))))

(assert (=> b!6801047 (= res!2779258 (= r!7292 lt!2448051))))

(assert (=> b!6801047 (= lt!2448051 (unfocusZipper!2363 zl!343))))

(declare-fun e!4104392 () Bool)

(declare-fun tp!1862106 () Bool)

(declare-fun b!6801048 () Bool)

(assert (=> b!6801048 (= e!4104392 (and (inv!84799 (h!72487 zl!343)) e!4104391 tp!1862106))))

(declare-fun b!6801049 () Bool)

(declare-fun res!2779255 () Bool)

(assert (=> b!6801049 (=> res!2779255 e!4104400)))

(assert (=> b!6801049 (= res!2779255 (not (= (unfocusZipper!2363 (Cons!66039 lt!2448030 Nil!66039)) (reg!16950 r!7292))))))

(declare-fun b!6801050 () Bool)

(declare-fun res!2779250 () Bool)

(assert (=> b!6801050 (=> res!2779250 e!4104387)))

(assert (=> b!6801050 (= res!2779250 ((_ is Nil!66040) s!2326))))

(declare-fun b!6801051 () Bool)

(declare-fun res!2779256 () Bool)

(assert (=> b!6801051 (=> res!2779256 e!4104404)))

(assert (=> b!6801051 (= res!2779256 (or ((_ is EmptyExpr!16621) r!7292) ((_ is EmptyLang!16621) r!7292) ((_ is ElementMatch!16621) r!7292) ((_ is Union!16621) r!7292) ((_ is Concat!25466) r!7292)))))

(declare-fun b!6801052 () Bool)

(declare-fun res!2779245 () Bool)

(assert (=> b!6801052 (=> res!2779245 e!4104404)))

(declare-fun isEmpty!38418 (List!66163) Bool)

(assert (=> b!6801052 (= res!2779245 (not (isEmpty!38418 (t!379894 zl!343))))))

(assert (=> b!6801053 (= e!4104401 e!4104399)))

(declare-fun res!2779252 () Bool)

(assert (=> b!6801053 (=> res!2779252 e!4104399)))

(assert (=> b!6801053 (= res!2779252 (not (= lt!2448049 lt!2448044)))))

(assert (=> b!6801053 (= (flatMap!2102 z!1189 lambda!383593) (derivationStepZipperUp!1775 (h!72487 zl!343) (h!72488 s!2326)))))

(declare-fun lt!2448034 () Unit!159933)

(assert (=> b!6801053 (= lt!2448034 (lemmaFlatMapOnSingletonSet!1628 z!1189 (h!72487 zl!343) lambda!383593))))

(declare-fun setElem!46621 () Context!12010)

(declare-fun e!4104394 () Bool)

(declare-fun setNonEmpty!46621 () Bool)

(declare-fun tp!1862107 () Bool)

(assert (=> setNonEmpty!46621 (= setRes!46621 (and tp!1862107 (inv!84799 setElem!46621) e!4104394))))

(declare-fun setRest!46621 () (InoxSet Context!12010))

(assert (=> setNonEmpty!46621 (= z!1189 ((_ map or) (store ((as const (Array Context!12010 Bool)) false) setElem!46621 true) setRest!46621))))

(declare-fun b!6801030 () Bool)

(declare-fun tp!1862109 () Bool)

(assert (=> b!6801030 (= e!4104394 tp!1862109)))

(declare-fun res!2779266 () Bool)

(assert (=> start!658280 (=> (not res!2779266) (not e!4104397))))

(declare-fun validRegex!8357 (Regex!16621) Bool)

(assert (=> start!658280 (= res!2779266 (validRegex!8357 r!7292))))

(assert (=> start!658280 e!4104397))

(assert (=> start!658280 e!4104388))

(declare-fun condSetEmpty!46621 () Bool)

(assert (=> start!658280 (= condSetEmpty!46621 (= z!1189 ((as const (Array Context!12010 Bool)) false)))))

(assert (=> start!658280 setRes!46621))

(assert (=> start!658280 e!4104392))

(assert (=> start!658280 e!4104398))

(declare-fun b!6801054 () Bool)

(declare-fun tp!1862114 () Bool)

(declare-fun tp!1862110 () Bool)

(assert (=> b!6801054 (= e!4104388 (and tp!1862114 tp!1862110))))

(declare-fun b!6801055 () Bool)

(declare-fun res!2779265 () Bool)

(assert (=> b!6801055 (=> res!2779265 e!4104396)))

(assert (=> b!6801055 (= res!2779265 (not (matchZipper!2607 lt!2448055 (_2!36899 lt!2448046))))))

(assert (= (and start!658280 res!2779266) b!6801036))

(assert (= (and b!6801036 res!2779244) b!6801047))

(assert (= (and b!6801047 res!2779258) b!6801037))

(assert (= (and b!6801037 (not res!2779259)) b!6801052))

(assert (= (and b!6801052 (not res!2779245)) b!6801038))

(assert (= (and b!6801038 (not res!2779257)) b!6801044))

(assert (= (and b!6801044 (not res!2779246)) b!6801022))

(assert (= (and b!6801022 (not res!2779251)) b!6801051))

(assert (= (and b!6801051 (not res!2779256)) b!6801023))

(assert (= (and b!6801023 (not res!2779263)) b!6801029))

(assert (= (and b!6801023 (not res!2779264)) b!6801050))

(assert (= (and b!6801050 (not res!2779250)) b!6801031))

(assert (= (and b!6801031 (not res!2779248)) b!6801053))

(assert (= (and b!6801053 (not res!2779252)) b!6801027))

(assert (= (and b!6801027 (not res!2779260)) b!6801026))

(assert (= (and b!6801026 (not res!2779268)) b!6801042))

(assert (= (and b!6801042 (not res!2779247)) b!6801046))

(assert (= (and b!6801046 (not res!2779267)) b!6801033))

(assert (= (and b!6801033 (not res!2779254)) b!6801049))

(assert (= (and b!6801049 (not res!2779255)) b!6801039))

(assert (= (and b!6801039 (not res!2779261)) b!6801043))

(assert (= (and b!6801043 (not res!2779243)) b!6801028))

(assert (= (and b!6801028 (not res!2779253)) b!6801021))

(assert (= (and b!6801021 (not res!2779242)) b!6801041))

(assert (= (and b!6801041 (not res!2779249)) b!6801040))

(assert (= (and b!6801040 (not res!2779262)) b!6801055))

(assert (= (and b!6801055 (not res!2779265)) b!6801032))

(assert (= (and start!658280 ((_ is ElementMatch!16621) r!7292)) b!6801025))

(assert (= (and start!658280 ((_ is Concat!25466) r!7292)) b!6801054))

(assert (= (and start!658280 ((_ is Star!16621) r!7292)) b!6801035))

(assert (= (and start!658280 ((_ is Union!16621) r!7292)) b!6801024))

(assert (= (and start!658280 condSetEmpty!46621) setIsEmpty!46621))

(assert (= (and start!658280 (not condSetEmpty!46621)) setNonEmpty!46621))

(assert (= setNonEmpty!46621 b!6801030))

(assert (= b!6801048 b!6801034))

(assert (= (and start!658280 ((_ is Cons!66039) zl!343)) b!6801048))

(assert (= (and start!658280 ((_ is Cons!66040) s!2326)) b!6801045))

(declare-fun m!7547414 () Bool)

(assert (=> b!6801023 m!7547414))

(declare-fun m!7547416 () Bool)

(assert (=> b!6801023 m!7547416))

(declare-fun m!7547418 () Bool)

(assert (=> b!6801023 m!7547418))

(assert (=> b!6801023 m!7547414))

(declare-fun m!7547420 () Bool)

(assert (=> b!6801023 m!7547420))

(declare-fun m!7547422 () Bool)

(assert (=> b!6801023 m!7547422))

(declare-fun m!7547424 () Bool)

(assert (=> b!6801023 m!7547424))

(declare-fun m!7547426 () Bool)

(assert (=> b!6801023 m!7547426))

(assert (=> b!6801023 m!7547414))

(assert (=> b!6801023 m!7547426))

(declare-fun m!7547428 () Bool)

(assert (=> b!6801023 m!7547428))

(declare-fun m!7547430 () Bool)

(assert (=> b!6801023 m!7547430))

(declare-fun m!7547432 () Bool)

(assert (=> b!6801043 m!7547432))

(declare-fun m!7547434 () Bool)

(assert (=> b!6801043 m!7547434))

(declare-fun m!7547436 () Bool)

(assert (=> b!6801043 m!7547436))

(declare-fun m!7547438 () Bool)

(assert (=> b!6801046 m!7547438))

(declare-fun m!7547440 () Bool)

(assert (=> b!6801027 m!7547440))

(declare-fun m!7547442 () Bool)

(assert (=> b!6801027 m!7547442))

(declare-fun m!7547444 () Bool)

(assert (=> b!6801027 m!7547444))

(declare-fun m!7547446 () Bool)

(assert (=> b!6801027 m!7547446))

(declare-fun m!7547448 () Bool)

(assert (=> b!6801027 m!7547448))

(declare-fun m!7547450 () Bool)

(assert (=> b!6801033 m!7547450))

(declare-fun m!7547452 () Bool)

(assert (=> b!6801033 m!7547452))

(declare-fun m!7547454 () Bool)

(assert (=> b!6801033 m!7547454))

(declare-fun m!7547456 () Bool)

(assert (=> b!6801033 m!7547456))

(declare-fun m!7547458 () Bool)

(assert (=> b!6801033 m!7547458))

(declare-fun m!7547460 () Bool)

(assert (=> b!6801033 m!7547460))

(declare-fun m!7547462 () Bool)

(assert (=> b!6801033 m!7547462))

(declare-fun m!7547464 () Bool)

(assert (=> b!6801033 m!7547464))

(declare-fun m!7547466 () Bool)

(assert (=> b!6801033 m!7547466))

(declare-fun m!7547468 () Bool)

(assert (=> b!6801052 m!7547468))

(declare-fun m!7547470 () Bool)

(assert (=> b!6801032 m!7547470))

(declare-fun m!7547472 () Bool)

(assert (=> b!6801036 m!7547472))

(declare-fun m!7547474 () Bool)

(assert (=> b!6801022 m!7547474))

(assert (=> b!6801022 m!7547474))

(declare-fun m!7547476 () Bool)

(assert (=> b!6801022 m!7547476))

(declare-fun m!7547478 () Bool)

(assert (=> b!6801047 m!7547478))

(declare-fun m!7547480 () Bool)

(assert (=> setNonEmpty!46621 m!7547480))

(declare-fun m!7547482 () Bool)

(assert (=> b!6801049 m!7547482))

(declare-fun m!7547484 () Bool)

(assert (=> b!6801031 m!7547484))

(declare-fun m!7547486 () Bool)

(assert (=> b!6801031 m!7547486))

(declare-fun m!7547488 () Bool)

(assert (=> b!6801031 m!7547488))

(declare-fun m!7547490 () Bool)

(assert (=> b!6801041 m!7547490))

(declare-fun m!7547492 () Bool)

(assert (=> b!6801041 m!7547492))

(declare-fun m!7547494 () Bool)

(assert (=> b!6801041 m!7547494))

(declare-fun m!7547496 () Bool)

(assert (=> b!6801041 m!7547496))

(declare-fun m!7547498 () Bool)

(assert (=> b!6801041 m!7547498))

(declare-fun m!7547500 () Bool)

(assert (=> b!6801055 m!7547500))

(declare-fun m!7547502 () Bool)

(assert (=> b!6801039 m!7547502))

(declare-fun m!7547504 () Bool)

(assert (=> start!658280 m!7547504))

(declare-fun m!7547506 () Bool)

(assert (=> b!6801048 m!7547506))

(declare-fun m!7547508 () Bool)

(assert (=> b!6801037 m!7547508))

(declare-fun m!7547510 () Bool)

(assert (=> b!6801037 m!7547510))

(declare-fun m!7547512 () Bool)

(assert (=> b!6801037 m!7547512))

(declare-fun m!7547514 () Bool)

(assert (=> b!6801053 m!7547514))

(declare-fun m!7547516 () Bool)

(assert (=> b!6801053 m!7547516))

(declare-fun m!7547518 () Bool)

(assert (=> b!6801053 m!7547518))

(declare-fun m!7547520 () Bool)

(assert (=> b!6801038 m!7547520))

(declare-fun m!7547522 () Bool)

(assert (=> b!6801026 m!7547522))

(declare-fun m!7547524 () Bool)

(assert (=> b!6801026 m!7547524))

(assert (=> b!6801026 m!7547524))

(declare-fun m!7547526 () Bool)

(assert (=> b!6801026 m!7547526))

(declare-fun m!7547528 () Bool)

(assert (=> b!6801028 m!7547528))

(declare-fun m!7547530 () Bool)

(assert (=> b!6801021 m!7547530))

(declare-fun m!7547532 () Bool)

(assert (=> b!6801021 m!7547532))

(declare-fun m!7547534 () Bool)

(assert (=> b!6801021 m!7547534))

(declare-fun m!7547536 () Bool)

(assert (=> b!6801021 m!7547536))

(declare-fun m!7547538 () Bool)

(assert (=> b!6801021 m!7547538))

(declare-fun m!7547540 () Bool)

(assert (=> b!6801021 m!7547540))

(declare-fun m!7547542 () Bool)

(assert (=> b!6801040 m!7547542))

(check-sat (not b!6801022) (not setNonEmpty!46621) (not b!6801040) (not b!6801053) (not b!6801031) (not b!6801021) (not b!6801039) (not b!6801054) (not b!6801046) (not b!6801035) (not b!6801038) (not b!6801033) (not b!6801048) (not b!6801052) (not b!6801030) (not b!6801041) tp_is_empty!42495 (not b!6801024) (not b!6801037) (not b!6801034) (not b!6801032) (not b!6801023) (not b!6801055) (not b!6801045) (not b!6801049) (not start!658280) (not b!6801027) (not b!6801043) (not b!6801047) (not b!6801028) (not b!6801036) (not b!6801026))
(check-sat)
(get-model)

(declare-fun d!2137156 () Bool)

(declare-fun c!1264614 () Bool)

(assert (=> d!2137156 (= c!1264614 (isEmpty!38417 s!2326))))

(declare-fun e!4104407 () Bool)

(assert (=> d!2137156 (= (matchZipper!2607 lt!2448058 s!2326) e!4104407)))

(declare-fun b!6801068 () Bool)

(declare-fun nullableZipper!2328 ((InoxSet Context!12010)) Bool)

(assert (=> b!6801068 (= e!4104407 (nullableZipper!2328 lt!2448058))))

(declare-fun b!6801069 () Bool)

(declare-fun head!13652 (List!66164) C!33512)

(declare-fun tail!12737 (List!66164) List!66164)

(assert (=> b!6801069 (= e!4104407 (matchZipper!2607 (derivationStepZipper!2565 lt!2448058 (head!13652 s!2326)) (tail!12737 s!2326)))))

(assert (= (and d!2137156 c!1264614) b!6801068))

(assert (= (and d!2137156 (not c!1264614)) b!6801069))

(assert (=> d!2137156 m!7547418))

(declare-fun m!7547544 () Bool)

(assert (=> b!6801068 m!7547544))

(declare-fun m!7547546 () Bool)

(assert (=> b!6801069 m!7547546))

(assert (=> b!6801069 m!7547546))

(declare-fun m!7547548 () Bool)

(assert (=> b!6801069 m!7547548))

(declare-fun m!7547550 () Bool)

(assert (=> b!6801069 m!7547550))

(assert (=> b!6801069 m!7547548))

(assert (=> b!6801069 m!7547550))

(declare-fun m!7547552 () Bool)

(assert (=> b!6801069 m!7547552))

(assert (=> b!6801026 d!2137156))

(declare-fun d!2137158 () Bool)

(declare-fun c!1264615 () Bool)

(assert (=> d!2137158 (= c!1264615 (isEmpty!38417 (t!379895 s!2326)))))

(declare-fun e!4104408 () Bool)

(assert (=> d!2137158 (= (matchZipper!2607 (derivationStepZipper!2565 lt!2448058 (h!72488 s!2326)) (t!379895 s!2326)) e!4104408)))

(declare-fun b!6801070 () Bool)

(assert (=> b!6801070 (= e!4104408 (nullableZipper!2328 (derivationStepZipper!2565 lt!2448058 (h!72488 s!2326))))))

(declare-fun b!6801071 () Bool)

(assert (=> b!6801071 (= e!4104408 (matchZipper!2607 (derivationStepZipper!2565 (derivationStepZipper!2565 lt!2448058 (h!72488 s!2326)) (head!13652 (t!379895 s!2326))) (tail!12737 (t!379895 s!2326))))))

(assert (= (and d!2137158 c!1264615) b!6801070))

(assert (= (and d!2137158 (not c!1264615)) b!6801071))

(declare-fun m!7547554 () Bool)

(assert (=> d!2137158 m!7547554))

(assert (=> b!6801070 m!7547524))

(declare-fun m!7547556 () Bool)

(assert (=> b!6801070 m!7547556))

(declare-fun m!7547558 () Bool)

(assert (=> b!6801071 m!7547558))

(assert (=> b!6801071 m!7547524))

(assert (=> b!6801071 m!7547558))

(declare-fun m!7547560 () Bool)

(assert (=> b!6801071 m!7547560))

(declare-fun m!7547562 () Bool)

(assert (=> b!6801071 m!7547562))

(assert (=> b!6801071 m!7547560))

(assert (=> b!6801071 m!7547562))

(declare-fun m!7547564 () Bool)

(assert (=> b!6801071 m!7547564))

(assert (=> b!6801026 d!2137158))

(declare-fun bs!1812904 () Bool)

(declare-fun d!2137160 () Bool)

(assert (= bs!1812904 (and d!2137160 b!6801053)))

(declare-fun lambda!383598 () Int)

(assert (=> bs!1812904 (= lambda!383598 lambda!383593)))

(assert (=> d!2137160 true))

(assert (=> d!2137160 (= (derivationStepZipper!2565 lt!2448058 (h!72488 s!2326)) (flatMap!2102 lt!2448058 lambda!383598))))

(declare-fun bs!1812905 () Bool)

(assert (= bs!1812905 d!2137160))

(declare-fun m!7547566 () Bool)

(assert (=> bs!1812905 m!7547566))

(assert (=> b!6801026 d!2137160))

(declare-fun d!2137164 () Bool)

(declare-fun lt!2448061 () Regex!16621)

(assert (=> d!2137164 (validRegex!8357 lt!2448061)))

(assert (=> d!2137164 (= lt!2448061 (generalisedUnion!2465 (unfocusZipperList!2042 (Cons!66039 lt!2448035 Nil!66039))))))

(assert (=> d!2137164 (= (unfocusZipper!2363 (Cons!66039 lt!2448035 Nil!66039)) lt!2448061)))

(declare-fun bs!1812906 () Bool)

(assert (= bs!1812906 d!2137164))

(declare-fun m!7547568 () Bool)

(assert (=> bs!1812906 m!7547568))

(declare-fun m!7547570 () Bool)

(assert (=> bs!1812906 m!7547570))

(assert (=> bs!1812906 m!7547570))

(declare-fun m!7547572 () Bool)

(assert (=> bs!1812906 m!7547572))

(assert (=> b!6801046 d!2137164))

(declare-fun d!2137166 () Bool)

(declare-fun lt!2448062 () Regex!16621)

(assert (=> d!2137166 (validRegex!8357 lt!2448062)))

(assert (=> d!2137166 (= lt!2448062 (generalisedUnion!2465 (unfocusZipperList!2042 zl!343)))))

(assert (=> d!2137166 (= (unfocusZipper!2363 zl!343) lt!2448062)))

(declare-fun bs!1812907 () Bool)

(assert (= bs!1812907 d!2137166))

(declare-fun m!7547574 () Bool)

(assert (=> bs!1812907 m!7547574))

(assert (=> bs!1812907 m!7547474))

(assert (=> bs!1812907 m!7547474))

(assert (=> bs!1812907 m!7547476))

(assert (=> b!6801047 d!2137166))

(declare-fun b!6801188 () Bool)

(declare-fun c!1264664 () Bool)

(declare-fun e!4104471 () Bool)

(assert (=> b!6801188 (= c!1264664 e!4104471)))

(declare-fun res!2779295 () Bool)

(assert (=> b!6801188 (=> (not res!2779295) (not e!4104471))))

(assert (=> b!6801188 (= res!2779295 ((_ is Concat!25466) (reg!16950 r!7292)))))

(declare-fun e!4104473 () (InoxSet Context!12010))

(declare-fun e!4104472 () (InoxSet Context!12010))

(assert (=> b!6801188 (= e!4104473 e!4104472)))

(declare-fun d!2137168 () Bool)

(declare-fun c!1264665 () Bool)

(assert (=> d!2137168 (= c!1264665 (and ((_ is ElementMatch!16621) (reg!16950 r!7292)) (= (c!1264611 (reg!16950 r!7292)) (h!72488 s!2326))))))

(declare-fun e!4104476 () (InoxSet Context!12010))

(assert (=> d!2137168 (= (derivationStepZipperDown!1849 (reg!16950 r!7292) lt!2448042 (h!72488 s!2326)) e!4104476)))

(declare-fun bm!618004 () Bool)

(declare-fun call!618012 () (InoxSet Context!12010))

(declare-fun call!618009 () (InoxSet Context!12010))

(assert (=> bm!618004 (= call!618012 call!618009)))

(declare-fun b!6801189 () Bool)

(declare-fun c!1264666 () Bool)

(assert (=> b!6801189 (= c!1264666 ((_ is Star!16621) (reg!16950 r!7292)))))

(declare-fun e!4104474 () (InoxSet Context!12010))

(declare-fun e!4104475 () (InoxSet Context!12010))

(assert (=> b!6801189 (= e!4104474 e!4104475)))

(declare-fun b!6801190 () Bool)

(declare-fun call!618011 () (InoxSet Context!12010))

(assert (=> b!6801190 (= e!4104472 ((_ map or) call!618011 call!618009))))

(declare-fun b!6801191 () Bool)

(assert (=> b!6801191 (= e!4104475 ((as const (Array Context!12010 Bool)) false))))

(declare-fun c!1264668 () Bool)

(declare-fun call!618010 () List!66162)

(declare-fun bm!618005 () Bool)

(assert (=> bm!618005 (= call!618011 (derivationStepZipperDown!1849 (ite c!1264668 (regOne!33755 (reg!16950 r!7292)) (regOne!33754 (reg!16950 r!7292))) (ite c!1264668 lt!2448042 (Context!12011 call!618010)) (h!72488 s!2326)))))

(declare-fun b!6801192 () Bool)

(declare-fun call!618014 () (InoxSet Context!12010))

(assert (=> b!6801192 (= e!4104473 ((_ map or) call!618011 call!618014))))

(declare-fun b!6801193 () Bool)

(assert (=> b!6801193 (= e!4104476 e!4104473)))

(assert (=> b!6801193 (= c!1264668 ((_ is Union!16621) (reg!16950 r!7292)))))

(declare-fun bm!618006 () Bool)

(assert (=> bm!618006 (= call!618009 call!618014)))

(declare-fun b!6801194 () Bool)

(assert (=> b!6801194 (= e!4104475 call!618012)))

(declare-fun b!6801195 () Bool)

(assert (=> b!6801195 (= e!4104472 e!4104474)))

(declare-fun c!1264667 () Bool)

(assert (=> b!6801195 (= c!1264667 ((_ is Concat!25466) (reg!16950 r!7292)))))

(declare-fun b!6801196 () Bool)

(assert (=> b!6801196 (= e!4104476 (store ((as const (Array Context!12010 Bool)) false) lt!2448042 true))))

(declare-fun bm!618007 () Bool)

(declare-fun call!618013 () List!66162)

(assert (=> bm!618007 (= call!618013 call!618010)))

(declare-fun bm!618008 () Bool)

(assert (=> bm!618008 (= call!618014 (derivationStepZipperDown!1849 (ite c!1264668 (regTwo!33755 (reg!16950 r!7292)) (ite c!1264664 (regTwo!33754 (reg!16950 r!7292)) (ite c!1264667 (regOne!33754 (reg!16950 r!7292)) (reg!16950 (reg!16950 r!7292))))) (ite (or c!1264668 c!1264664) lt!2448042 (Context!12011 call!618013)) (h!72488 s!2326)))))

(declare-fun b!6801197 () Bool)

(declare-fun nullable!6600 (Regex!16621) Bool)

(assert (=> b!6801197 (= e!4104471 (nullable!6600 (regOne!33754 (reg!16950 r!7292))))))

(declare-fun bm!618009 () Bool)

(declare-fun $colon$colon!2430 (List!66162 Regex!16621) List!66162)

(assert (=> bm!618009 (= call!618010 ($colon$colon!2430 (exprs!6505 lt!2448042) (ite (or c!1264664 c!1264667) (regTwo!33754 (reg!16950 r!7292)) (reg!16950 r!7292))))))

(declare-fun b!6801198 () Bool)

(assert (=> b!6801198 (= e!4104474 call!618012)))

(assert (= (and d!2137168 c!1264665) b!6801196))

(assert (= (and d!2137168 (not c!1264665)) b!6801193))

(assert (= (and b!6801193 c!1264668) b!6801192))

(assert (= (and b!6801193 (not c!1264668)) b!6801188))

(assert (= (and b!6801188 res!2779295) b!6801197))

(assert (= (and b!6801188 c!1264664) b!6801190))

(assert (= (and b!6801188 (not c!1264664)) b!6801195))

(assert (= (and b!6801195 c!1264667) b!6801198))

(assert (= (and b!6801195 (not c!1264667)) b!6801189))

(assert (= (and b!6801189 c!1264666) b!6801194))

(assert (= (and b!6801189 (not c!1264666)) b!6801191))

(assert (= (or b!6801198 b!6801194) bm!618007))

(assert (= (or b!6801198 b!6801194) bm!618004))

(assert (= (or b!6801190 bm!618007) bm!618009))

(assert (= (or b!6801190 bm!618004) bm!618006))

(assert (= (or b!6801192 bm!618006) bm!618008))

(assert (= (or b!6801192 b!6801190) bm!618005))

(assert (=> b!6801196 m!7547460))

(declare-fun m!7547634 () Bool)

(assert (=> b!6801197 m!7547634))

(declare-fun m!7547636 () Bool)

(assert (=> bm!618008 m!7547636))

(declare-fun m!7547638 () Bool)

(assert (=> bm!618005 m!7547638))

(declare-fun m!7547640 () Bool)

(assert (=> bm!618009 m!7547640))

(assert (=> b!6801027 d!2137168))

(declare-fun d!2137184 () Bool)

(declare-fun choose!50686 ((InoxSet Context!12010) Int) (InoxSet Context!12010))

(assert (=> d!2137184 (= (flatMap!2102 lt!2448058 lambda!383593) (choose!50686 lt!2448058 lambda!383593))))

(declare-fun bs!1812912 () Bool)

(assert (= bs!1812912 d!2137184))

(declare-fun m!7547642 () Bool)

(assert (=> bs!1812912 m!7547642))

(assert (=> b!6801027 d!2137184))

(declare-fun e!4104505 () (InoxSet Context!12010))

(declare-fun call!618023 () (InoxSet Context!12010))

(declare-fun b!6801248 () Bool)

(assert (=> b!6801248 (= e!4104505 ((_ map or) call!618023 (derivationStepZipperUp!1775 (Context!12011 (t!379893 (exprs!6505 lt!2448035))) (h!72488 s!2326))))))

(declare-fun b!6801249 () Bool)

(declare-fun e!4104504 () (InoxSet Context!12010))

(assert (=> b!6801249 (= e!4104504 call!618023)))

(declare-fun bm!618018 () Bool)

(assert (=> bm!618018 (= call!618023 (derivationStepZipperDown!1849 (h!72486 (exprs!6505 lt!2448035)) (Context!12011 (t!379893 (exprs!6505 lt!2448035))) (h!72488 s!2326)))))

(declare-fun b!6801250 () Bool)

(assert (=> b!6801250 (= e!4104505 e!4104504)))

(declare-fun c!1264683 () Bool)

(assert (=> b!6801250 (= c!1264683 ((_ is Cons!66038) (exprs!6505 lt!2448035)))))

(declare-fun d!2137186 () Bool)

(declare-fun c!1264684 () Bool)

(declare-fun e!4104506 () Bool)

(assert (=> d!2137186 (= c!1264684 e!4104506)))

(declare-fun res!2779317 () Bool)

(assert (=> d!2137186 (=> (not res!2779317) (not e!4104506))))

(assert (=> d!2137186 (= res!2779317 ((_ is Cons!66038) (exprs!6505 lt!2448035)))))

(assert (=> d!2137186 (= (derivationStepZipperUp!1775 lt!2448035 (h!72488 s!2326)) e!4104505)))

(declare-fun b!6801251 () Bool)

(assert (=> b!6801251 (= e!4104506 (nullable!6600 (h!72486 (exprs!6505 lt!2448035))))))

(declare-fun b!6801252 () Bool)

(assert (=> b!6801252 (= e!4104504 ((as const (Array Context!12010 Bool)) false))))

(assert (= (and d!2137186 res!2779317) b!6801251))

(assert (= (and d!2137186 c!1264684) b!6801248))

(assert (= (and d!2137186 (not c!1264684)) b!6801250))

(assert (= (and b!6801250 c!1264683) b!6801249))

(assert (= (and b!6801250 (not c!1264683)) b!6801252))

(assert (= (or b!6801248 b!6801249) bm!618018))

(declare-fun m!7547650 () Bool)

(assert (=> b!6801248 m!7547650))

(declare-fun m!7547652 () Bool)

(assert (=> bm!618018 m!7547652))

(declare-fun m!7547654 () Bool)

(assert (=> b!6801251 m!7547654))

(assert (=> b!6801027 d!2137186))

(declare-fun d!2137190 () Bool)

(declare-fun dynLambda!26372 (Int Context!12010) (InoxSet Context!12010))

(assert (=> d!2137190 (= (flatMap!2102 lt!2448058 lambda!383593) (dynLambda!26372 lambda!383593 lt!2448035))))

(declare-fun lt!2448074 () Unit!159933)

(declare-fun choose!50688 ((InoxSet Context!12010) Context!12010 Int) Unit!159933)

(assert (=> d!2137190 (= lt!2448074 (choose!50688 lt!2448058 lt!2448035 lambda!383593))))

(assert (=> d!2137190 (= lt!2448058 (store ((as const (Array Context!12010 Bool)) false) lt!2448035 true))))

(assert (=> d!2137190 (= (lemmaFlatMapOnSingletonSet!1628 lt!2448058 lt!2448035 lambda!383593) lt!2448074)))

(declare-fun b_lambda!256363 () Bool)

(assert (=> (not b_lambda!256363) (not d!2137190)))

(declare-fun bs!1812922 () Bool)

(assert (= bs!1812922 d!2137190))

(assert (=> bs!1812922 m!7547446))

(declare-fun m!7547668 () Bool)

(assert (=> bs!1812922 m!7547668))

(declare-fun m!7547670 () Bool)

(assert (=> bs!1812922 m!7547670))

(assert (=> bs!1812922 m!7547440))

(assert (=> b!6801027 d!2137190))

(declare-fun d!2137196 () Bool)

(declare-fun c!1264692 () Bool)

(assert (=> d!2137196 (= c!1264692 (isEmpty!38417 s!2326))))

(declare-fun e!4104521 () Bool)

(assert (=> d!2137196 (= (matchZipper!2607 z!1189 s!2326) e!4104521)))

(declare-fun b!6801278 () Bool)

(assert (=> b!6801278 (= e!4104521 (nullableZipper!2328 z!1189))))

(declare-fun b!6801279 () Bool)

(assert (=> b!6801279 (= e!4104521 (matchZipper!2607 (derivationStepZipper!2565 z!1189 (head!13652 s!2326)) (tail!12737 s!2326)))))

(assert (= (and d!2137196 c!1264692) b!6801278))

(assert (= (and d!2137196 (not c!1264692)) b!6801279))

(assert (=> d!2137196 m!7547418))

(declare-fun m!7547678 () Bool)

(assert (=> b!6801278 m!7547678))

(assert (=> b!6801279 m!7547546))

(assert (=> b!6801279 m!7547546))

(declare-fun m!7547680 () Bool)

(assert (=> b!6801279 m!7547680))

(assert (=> b!6801279 m!7547550))

(assert (=> b!6801279 m!7547680))

(assert (=> b!6801279 m!7547550))

(declare-fun m!7547682 () Bool)

(assert (=> b!6801279 m!7547682))

(assert (=> b!6801028 d!2137196))

(declare-fun bs!1812926 () Bool)

(declare-fun d!2137200 () Bool)

(assert (= bs!1812926 (and d!2137200 b!6801021)))

(declare-fun lambda!383612 () Int)

(assert (=> bs!1812926 (= lambda!383612 lambda!383595)))

(declare-fun forall!15812 (List!66162 Int) Bool)

(assert (=> d!2137200 (= (inv!84799 (h!72487 zl!343)) (forall!15812 (exprs!6505 (h!72487 zl!343)) lambda!383612))))

(declare-fun bs!1812927 () Bool)

(assert (= bs!1812927 d!2137200))

(declare-fun m!7547700 () Bool)

(assert (=> bs!1812927 m!7547700))

(assert (=> b!6801048 d!2137200))

(declare-fun d!2137210 () Bool)

(declare-fun isEmpty!38420 (Option!16508) Bool)

(assert (=> d!2137210 (= (isDefined!13211 (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 Nil!66040 s!2326 s!2326)) (not (isEmpty!38420 (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 Nil!66040 s!2326 s!2326))))))

(declare-fun bs!1812929 () Bool)

(assert (= bs!1812929 d!2137210))

(assert (=> bs!1812929 m!7547426))

(declare-fun m!7547708 () Bool)

(assert (=> bs!1812929 m!7547708))

(assert (=> b!6801023 d!2137210))

(declare-fun bs!1812932 () Bool)

(declare-fun d!2137214 () Bool)

(assert (= bs!1812932 (and d!2137214 b!6801023)))

(declare-fun lambda!383617 () Int)

(assert (=> bs!1812932 (= lambda!383617 lambda!383590)))

(assert (=> bs!1812932 (not (= lambda!383617 lambda!383591))))

(assert (=> bs!1812932 (not (= lambda!383617 lambda!383592))))

(assert (=> d!2137214 true))

(assert (=> d!2137214 true))

(assert (=> d!2137214 true))

(declare-fun lambda!383618 () Int)

(assert (=> bs!1812932 (not (= lambda!383618 lambda!383590))))

(assert (=> bs!1812932 (not (= lambda!383618 lambda!383591))))

(assert (=> bs!1812932 (= lambda!383618 lambda!383592)))

(declare-fun bs!1812933 () Bool)

(assert (= bs!1812933 d!2137214))

(assert (=> bs!1812933 (not (= lambda!383618 lambda!383617))))

(assert (=> d!2137214 true))

(assert (=> d!2137214 true))

(assert (=> d!2137214 true))

(assert (=> d!2137214 (= (Exists!3689 lambda!383617) (Exists!3689 lambda!383618))))

(declare-fun lt!2448094 () Unit!159933)

(declare-fun choose!50690 (Regex!16621 Regex!16621 List!66164) Unit!159933)

(assert (=> d!2137214 (= lt!2448094 (choose!50690 (reg!16950 r!7292) r!7292 s!2326))))

(assert (=> d!2137214 (validRegex!8357 (reg!16950 r!7292))))

(assert (=> d!2137214 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2216 (reg!16950 r!7292) r!7292 s!2326) lt!2448094)))

(declare-fun m!7547734 () Bool)

(assert (=> bs!1812933 m!7547734))

(declare-fun m!7547736 () Bool)

(assert (=> bs!1812933 m!7547736))

(declare-fun m!7547738 () Bool)

(assert (=> bs!1812933 m!7547738))

(declare-fun m!7547740 () Bool)

(assert (=> bs!1812933 m!7547740))

(assert (=> b!6801023 d!2137214))

(declare-fun d!2137224 () Bool)

(declare-fun choose!50691 (Int) Bool)

(assert (=> d!2137224 (= (Exists!3689 lambda!383592) (choose!50691 lambda!383592))))

(declare-fun bs!1812934 () Bool)

(assert (= bs!1812934 d!2137224))

(declare-fun m!7547742 () Bool)

(assert (=> bs!1812934 m!7547742))

(assert (=> b!6801023 d!2137224))

(declare-fun d!2137226 () Bool)

(assert (=> d!2137226 (= (isEmpty!38417 s!2326) ((_ is Nil!66040) s!2326))))

(assert (=> b!6801023 d!2137226))

(declare-fun d!2137230 () Bool)

(assert (=> d!2137230 (= (Exists!3689 lambda!383591) (choose!50691 lambda!383591))))

(declare-fun bs!1812936 () Bool)

(assert (= bs!1812936 d!2137230))

(declare-fun m!7547774 () Bool)

(assert (=> bs!1812936 m!7547774))

(assert (=> b!6801023 d!2137230))

(declare-fun d!2137234 () Bool)

(assert (=> d!2137234 (= (Exists!3689 lambda!383590) (choose!50691 lambda!383590))))

(declare-fun bs!1812937 () Bool)

(assert (= bs!1812937 d!2137234))

(declare-fun m!7547776 () Bool)

(assert (=> bs!1812937 m!7547776))

(assert (=> b!6801023 d!2137234))

(declare-fun bs!1812950 () Bool)

(declare-fun d!2137236 () Bool)

(assert (= bs!1812950 (and d!2137236 b!6801023)))

(declare-fun lambda!383632 () Int)

(assert (=> bs!1812950 (= (= (Star!16621 (reg!16950 r!7292)) r!7292) (= lambda!383632 lambda!383590))))

(assert (=> bs!1812950 (not (= lambda!383632 lambda!383591))))

(declare-fun bs!1812951 () Bool)

(assert (= bs!1812951 (and d!2137236 d!2137214)))

(assert (=> bs!1812951 (= (= (Star!16621 (reg!16950 r!7292)) r!7292) (= lambda!383632 lambda!383617))))

(assert (=> bs!1812950 (not (= lambda!383632 lambda!383592))))

(assert (=> bs!1812951 (not (= lambda!383632 lambda!383618))))

(assert (=> d!2137236 true))

(assert (=> d!2137236 true))

(declare-fun lambda!383633 () Int)

(assert (=> bs!1812950 (not (= lambda!383633 lambda!383590))))

(assert (=> bs!1812950 (= (= (Star!16621 (reg!16950 r!7292)) r!7292) (= lambda!383633 lambda!383591))))

(assert (=> bs!1812951 (not (= lambda!383633 lambda!383617))))

(assert (=> bs!1812950 (not (= lambda!383633 lambda!383592))))

(declare-fun bs!1812952 () Bool)

(assert (= bs!1812952 d!2137236))

(assert (=> bs!1812952 (not (= lambda!383633 lambda!383632))))

(assert (=> bs!1812951 (not (= lambda!383633 lambda!383618))))

(assert (=> d!2137236 true))

(assert (=> d!2137236 true))

(assert (=> d!2137236 (= (Exists!3689 lambda!383632) (Exists!3689 lambda!383633))))

(declare-fun lt!2448104 () Unit!159933)

(declare-fun choose!50692 (Regex!16621 List!66164) Unit!159933)

(assert (=> d!2137236 (= lt!2448104 (choose!50692 (reg!16950 r!7292) s!2326))))

(assert (=> d!2137236 (validRegex!8357 (reg!16950 r!7292))))

(assert (=> d!2137236 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!780 (reg!16950 r!7292) s!2326) lt!2448104)))

(declare-fun m!7547796 () Bool)

(assert (=> bs!1812952 m!7547796))

(declare-fun m!7547798 () Bool)

(assert (=> bs!1812952 m!7547798))

(declare-fun m!7547800 () Bool)

(assert (=> bs!1812952 m!7547800))

(assert (=> bs!1812952 m!7547740))

(assert (=> b!6801023 d!2137236))

(declare-fun b!6801419 () Bool)

(declare-fun e!4104598 () Bool)

(declare-fun lt!2448124 () Option!16508)

(assert (=> b!6801419 (= e!4104598 (= (++!14789 (_1!36899 (get!23001 lt!2448124)) (_2!36899 (get!23001 lt!2448124))) s!2326))))

(declare-fun d!2137252 () Bool)

(declare-fun e!4104595 () Bool)

(assert (=> d!2137252 e!4104595))

(declare-fun res!2779424 () Bool)

(assert (=> d!2137252 (=> res!2779424 e!4104595)))

(assert (=> d!2137252 (= res!2779424 e!4104598)))

(declare-fun res!2779423 () Bool)

(assert (=> d!2137252 (=> (not res!2779423) (not e!4104598))))

(assert (=> d!2137252 (= res!2779423 (isDefined!13211 lt!2448124))))

(declare-fun e!4104597 () Option!16508)

(assert (=> d!2137252 (= lt!2448124 e!4104597)))

(declare-fun c!1264718 () Bool)

(declare-fun e!4104594 () Bool)

(assert (=> d!2137252 (= c!1264718 e!4104594)))

(declare-fun res!2779421 () Bool)

(assert (=> d!2137252 (=> (not res!2779421) (not e!4104594))))

(assert (=> d!2137252 (= res!2779421 (matchR!8804 (reg!16950 r!7292) Nil!66040))))

(assert (=> d!2137252 (validRegex!8357 (reg!16950 r!7292))))

(assert (=> d!2137252 (= (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 Nil!66040 s!2326 s!2326) lt!2448124)))

(declare-fun b!6801420 () Bool)

(declare-fun res!2779420 () Bool)

(assert (=> b!6801420 (=> (not res!2779420) (not e!4104598))))

(assert (=> b!6801420 (= res!2779420 (matchR!8804 r!7292 (_2!36899 (get!23001 lt!2448124))))))

(declare-fun b!6801421 () Bool)

(declare-fun e!4104596 () Option!16508)

(assert (=> b!6801421 (= e!4104597 e!4104596)))

(declare-fun c!1264717 () Bool)

(assert (=> b!6801421 (= c!1264717 ((_ is Nil!66040) s!2326))))

(declare-fun b!6801422 () Bool)

(declare-fun lt!2448123 () Unit!159933)

(declare-fun lt!2448125 () Unit!159933)

(assert (=> b!6801422 (= lt!2448123 lt!2448125)))

(assert (=> b!6801422 (= (++!14789 (++!14789 Nil!66040 (Cons!66040 (h!72488 s!2326) Nil!66040)) (t!379895 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2742 (List!66164 C!33512 List!66164 List!66164) Unit!159933)

(assert (=> b!6801422 (= lt!2448125 (lemmaMoveElementToOtherListKeepsConcatEq!2742 Nil!66040 (h!72488 s!2326) (t!379895 s!2326) s!2326))))

(assert (=> b!6801422 (= e!4104596 (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 (++!14789 Nil!66040 (Cons!66040 (h!72488 s!2326) Nil!66040)) (t!379895 s!2326) s!2326))))

(declare-fun b!6801423 () Bool)

(declare-fun res!2779422 () Bool)

(assert (=> b!6801423 (=> (not res!2779422) (not e!4104598))))

(assert (=> b!6801423 (= res!2779422 (matchR!8804 (reg!16950 r!7292) (_1!36899 (get!23001 lt!2448124))))))

(declare-fun b!6801424 () Bool)

(assert (=> b!6801424 (= e!4104595 (not (isDefined!13211 lt!2448124)))))

(declare-fun b!6801425 () Bool)

(assert (=> b!6801425 (= e!4104596 None!16507)))

(declare-fun b!6801426 () Bool)

(assert (=> b!6801426 (= e!4104594 (matchR!8804 r!7292 s!2326))))

(declare-fun b!6801427 () Bool)

(assert (=> b!6801427 (= e!4104597 (Some!16507 (tuple2!67193 Nil!66040 s!2326)))))

(assert (= (and d!2137252 res!2779421) b!6801426))

(assert (= (and d!2137252 c!1264718) b!6801427))

(assert (= (and d!2137252 (not c!1264718)) b!6801421))

(assert (= (and b!6801421 c!1264717) b!6801425))

(assert (= (and b!6801421 (not c!1264717)) b!6801422))

(assert (= (and d!2137252 res!2779423) b!6801423))

(assert (= (and b!6801423 res!2779422) b!6801420))

(assert (= (and b!6801420 res!2779420) b!6801419))

(assert (= (and d!2137252 (not res!2779424)) b!6801424))

(declare-fun m!7547822 () Bool)

(assert (=> d!2137252 m!7547822))

(declare-fun m!7547824 () Bool)

(assert (=> d!2137252 m!7547824))

(assert (=> d!2137252 m!7547740))

(declare-fun m!7547826 () Bool)

(assert (=> b!6801422 m!7547826))

(assert (=> b!6801422 m!7547826))

(declare-fun m!7547828 () Bool)

(assert (=> b!6801422 m!7547828))

(declare-fun m!7547830 () Bool)

(assert (=> b!6801422 m!7547830))

(assert (=> b!6801422 m!7547826))

(declare-fun m!7547832 () Bool)

(assert (=> b!6801422 m!7547832))

(assert (=> b!6801424 m!7547822))

(declare-fun m!7547834 () Bool)

(assert (=> b!6801420 m!7547834))

(declare-fun m!7547836 () Bool)

(assert (=> b!6801420 m!7547836))

(assert (=> b!6801419 m!7547834))

(declare-fun m!7547838 () Bool)

(assert (=> b!6801419 m!7547838))

(assert (=> b!6801426 m!7547510))

(assert (=> b!6801423 m!7547834))

(declare-fun m!7547840 () Bool)

(assert (=> b!6801423 m!7547840))

(assert (=> b!6801023 d!2137252))

(declare-fun bs!1812968 () Bool)

(declare-fun d!2137258 () Bool)

(assert (= bs!1812968 (and d!2137258 b!6801023)))

(declare-fun lambda!383645 () Int)

(assert (=> bs!1812968 (= lambda!383645 lambda!383590)))

(assert (=> bs!1812968 (not (= lambda!383645 lambda!383591))))

(declare-fun bs!1812969 () Bool)

(assert (= bs!1812969 (and d!2137258 d!2137236)))

(assert (=> bs!1812969 (not (= lambda!383645 lambda!383633))))

(declare-fun bs!1812970 () Bool)

(assert (= bs!1812970 (and d!2137258 d!2137214)))

(assert (=> bs!1812970 (= lambda!383645 lambda!383617)))

(assert (=> bs!1812968 (not (= lambda!383645 lambda!383592))))

(assert (=> bs!1812969 (= (= r!7292 (Star!16621 (reg!16950 r!7292))) (= lambda!383645 lambda!383632))))

(assert (=> bs!1812970 (not (= lambda!383645 lambda!383618))))

(assert (=> d!2137258 true))

(assert (=> d!2137258 true))

(assert (=> d!2137258 true))

(assert (=> d!2137258 (= (isDefined!13211 (findConcatSeparation!2922 (reg!16950 r!7292) r!7292 Nil!66040 s!2326 s!2326)) (Exists!3689 lambda!383645))))

(declare-fun lt!2448131 () Unit!159933)

(declare-fun choose!50695 (Regex!16621 Regex!16621 List!66164) Unit!159933)

(assert (=> d!2137258 (= lt!2448131 (choose!50695 (reg!16950 r!7292) r!7292 s!2326))))

(assert (=> d!2137258 (validRegex!8357 (reg!16950 r!7292))))

(assert (=> d!2137258 (= (lemmaFindConcatSeparationEquivalentToExists!2686 (reg!16950 r!7292) r!7292 s!2326) lt!2448131)))

(declare-fun bs!1812971 () Bool)

(assert (= bs!1812971 d!2137258))

(declare-fun m!7547846 () Bool)

(assert (=> bs!1812971 m!7547846))

(assert (=> bs!1812971 m!7547426))

(assert (=> bs!1812971 m!7547740))

(declare-fun m!7547848 () Bool)

(assert (=> bs!1812971 m!7547848))

(assert (=> bs!1812971 m!7547426))

(assert (=> bs!1812971 m!7547428))

(assert (=> b!6801023 d!2137258))

(declare-fun b!6801467 () Bool)

(declare-fun e!4104620 () Bool)

(declare-fun lt!2448136 () List!66164)

(assert (=> b!6801467 (= e!4104620 (or (not (= (_2!36899 lt!2448046) Nil!66040)) (= lt!2448136 (_1!36899 lt!2448046))))))

(declare-fun b!6801466 () Bool)

(declare-fun res!2779442 () Bool)

(assert (=> b!6801466 (=> (not res!2779442) (not e!4104620))))

(declare-fun size!40665 (List!66164) Int)

(assert (=> b!6801466 (= res!2779442 (= (size!40665 lt!2448136) (+ (size!40665 (_1!36899 lt!2448046)) (size!40665 (_2!36899 lt!2448046)))))))

(declare-fun b!6801464 () Bool)

(declare-fun e!4104619 () List!66164)

(assert (=> b!6801464 (= e!4104619 (_2!36899 lt!2448046))))

(declare-fun d!2137262 () Bool)

(assert (=> d!2137262 e!4104620))

(declare-fun res!2779441 () Bool)

(assert (=> d!2137262 (=> (not res!2779441) (not e!4104620))))

(declare-fun content!12897 (List!66164) (InoxSet C!33512))

(assert (=> d!2137262 (= res!2779441 (= (content!12897 lt!2448136) ((_ map or) (content!12897 (_1!36899 lt!2448046)) (content!12897 (_2!36899 lt!2448046)))))))

(assert (=> d!2137262 (= lt!2448136 e!4104619)))

(declare-fun c!1264729 () Bool)

(assert (=> d!2137262 (= c!1264729 ((_ is Nil!66040) (_1!36899 lt!2448046)))))

(assert (=> d!2137262 (= (++!14789 (_1!36899 lt!2448046) (_2!36899 lt!2448046)) lt!2448136)))

(declare-fun b!6801465 () Bool)

(assert (=> b!6801465 (= e!4104619 (Cons!66040 (h!72488 (_1!36899 lt!2448046)) (++!14789 (t!379895 (_1!36899 lt!2448046)) (_2!36899 lt!2448046))))))

(assert (= (and d!2137262 c!1264729) b!6801464))

(assert (= (and d!2137262 (not c!1264729)) b!6801465))

(assert (= (and d!2137262 res!2779441) b!6801466))

(assert (= (and b!6801466 res!2779442) b!6801467))

(declare-fun m!7547850 () Bool)

(assert (=> b!6801466 m!7547850))

(declare-fun m!7547852 () Bool)

(assert (=> b!6801466 m!7547852))

(declare-fun m!7547854 () Bool)

(assert (=> b!6801466 m!7547854))

(declare-fun m!7547856 () Bool)

(assert (=> d!2137262 m!7547856))

(declare-fun m!7547858 () Bool)

(assert (=> d!2137262 m!7547858))

(declare-fun m!7547860 () Bool)

(assert (=> d!2137262 m!7547860))

(declare-fun m!7547862 () Bool)

(assert (=> b!6801465 m!7547862))

(assert (=> b!6801041 d!2137262))

(declare-fun d!2137264 () Bool)

(assert (=> d!2137264 (= (get!23001 lt!2448052) (v!52713 lt!2448052))))

(assert (=> b!6801041 d!2137264))

(declare-fun d!2137266 () Bool)

(assert (=> d!2137266 (= (isDefined!13211 lt!2448052) (not (isEmpty!38420 lt!2448052)))))

(declare-fun bs!1812972 () Bool)

(assert (= bs!1812972 d!2137266))

(declare-fun m!7547864 () Bool)

(assert (=> bs!1812972 m!7547864))

(assert (=> b!6801041 d!2137266))

(declare-fun d!2137268 () Bool)

(assert (=> d!2137268 (isDefined!13211 (findConcatSeparationZippers!230 lt!2448056 (store ((as const (Array Context!12010 Bool)) false) lt!2448042 true) Nil!66040 s!2326 s!2326))))

(declare-fun lt!2448140 () Unit!159933)

(declare-fun choose!50697 ((InoxSet Context!12010) Context!12010 List!66164) Unit!159933)

(assert (=> d!2137268 (= lt!2448140 (choose!50697 lt!2448056 lt!2448042 s!2326))))

(assert (=> d!2137268 (matchZipper!2607 (appendTo!226 lt!2448056 lt!2448042) s!2326)))

(assert (=> d!2137268 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!230 lt!2448056 lt!2448042 s!2326) lt!2448140)))

(declare-fun bs!1812982 () Bool)

(assert (= bs!1812982 d!2137268))

(declare-fun m!7547908 () Bool)

(assert (=> bs!1812982 m!7547908))

(declare-fun m!7547910 () Bool)

(assert (=> bs!1812982 m!7547910))

(assert (=> bs!1812982 m!7547536))

(assert (=> bs!1812982 m!7547460))

(assert (=> bs!1812982 m!7547460))

(assert (=> bs!1812982 m!7547908))

(assert (=> bs!1812982 m!7547536))

(declare-fun m!7547912 () Bool)

(assert (=> bs!1812982 m!7547912))

(declare-fun m!7547914 () Bool)

(assert (=> bs!1812982 m!7547914))

(assert (=> b!6801041 d!2137268))

(declare-fun b!6801514 () Bool)

(declare-fun res!2779464 () Bool)

(declare-fun e!4104646 () Bool)

(assert (=> b!6801514 (=> (not res!2779464) (not e!4104646))))

(declare-fun lt!2448159 () Option!16508)

(assert (=> b!6801514 (= res!2779464 (matchZipper!2607 lt!2448055 (_2!36899 (get!23001 lt!2448159))))))

(declare-fun d!2137282 () Bool)

(declare-fun e!4104649 () Bool)

(assert (=> d!2137282 e!4104649))

(declare-fun res!2779461 () Bool)

(assert (=> d!2137282 (=> res!2779461 e!4104649)))

(assert (=> d!2137282 (= res!2779461 e!4104646)))

(declare-fun res!2779463 () Bool)

(assert (=> d!2137282 (=> (not res!2779463) (not e!4104646))))

(assert (=> d!2137282 (= res!2779463 (isDefined!13211 lt!2448159))))

(declare-fun e!4104647 () Option!16508)

(assert (=> d!2137282 (= lt!2448159 e!4104647)))

(declare-fun c!1264745 () Bool)

(declare-fun e!4104645 () Bool)

(assert (=> d!2137282 (= c!1264745 e!4104645)))

(declare-fun res!2779465 () Bool)

(assert (=> d!2137282 (=> (not res!2779465) (not e!4104645))))

(assert (=> d!2137282 (= res!2779465 (matchZipper!2607 lt!2448056 Nil!66040))))

(assert (=> d!2137282 (= (++!14789 Nil!66040 s!2326) s!2326)))

(assert (=> d!2137282 (= (findConcatSeparationZippers!230 lt!2448056 lt!2448055 Nil!66040 s!2326 s!2326) lt!2448159)))

(declare-fun b!6801515 () Bool)

(declare-fun lt!2448160 () Unit!159933)

(declare-fun lt!2448158 () Unit!159933)

(assert (=> b!6801515 (= lt!2448160 lt!2448158)))

(assert (=> b!6801515 (= (++!14789 (++!14789 Nil!66040 (Cons!66040 (h!72488 s!2326) Nil!66040)) (t!379895 s!2326)) s!2326)))

(assert (=> b!6801515 (= lt!2448158 (lemmaMoveElementToOtherListKeepsConcatEq!2742 Nil!66040 (h!72488 s!2326) (t!379895 s!2326) s!2326))))

(declare-fun e!4104648 () Option!16508)

(assert (=> b!6801515 (= e!4104648 (findConcatSeparationZippers!230 lt!2448056 lt!2448055 (++!14789 Nil!66040 (Cons!66040 (h!72488 s!2326) Nil!66040)) (t!379895 s!2326) s!2326))))

(declare-fun b!6801516 () Bool)

(assert (=> b!6801516 (= e!4104645 (matchZipper!2607 lt!2448055 s!2326))))

(declare-fun b!6801517 () Bool)

(assert (=> b!6801517 (= e!4104646 (= (++!14789 (_1!36899 (get!23001 lt!2448159)) (_2!36899 (get!23001 lt!2448159))) s!2326))))

(declare-fun b!6801518 () Bool)

(assert (=> b!6801518 (= e!4104648 None!16507)))

(declare-fun b!6801519 () Bool)

(assert (=> b!6801519 (= e!4104647 e!4104648)))

(declare-fun c!1264744 () Bool)

(assert (=> b!6801519 (= c!1264744 ((_ is Nil!66040) s!2326))))

(declare-fun b!6801520 () Bool)

(declare-fun res!2779462 () Bool)

(assert (=> b!6801520 (=> (not res!2779462) (not e!4104646))))

(assert (=> b!6801520 (= res!2779462 (matchZipper!2607 lt!2448056 (_1!36899 (get!23001 lt!2448159))))))

(declare-fun b!6801521 () Bool)

(assert (=> b!6801521 (= e!4104649 (not (isDefined!13211 lt!2448159)))))

(declare-fun b!6801522 () Bool)

(assert (=> b!6801522 (= e!4104647 (Some!16507 (tuple2!67193 Nil!66040 s!2326)))))

(assert (= (and d!2137282 res!2779465) b!6801516))

(assert (= (and d!2137282 c!1264745) b!6801522))

(assert (= (and d!2137282 (not c!1264745)) b!6801519))

(assert (= (and b!6801519 c!1264744) b!6801518))

(assert (= (and b!6801519 (not c!1264744)) b!6801515))

(assert (= (and d!2137282 res!2779463) b!6801520))

(assert (= (and b!6801520 res!2779462) b!6801514))

(assert (= (and b!6801514 res!2779464) b!6801517))

(assert (= (and d!2137282 (not res!2779461)) b!6801521))

(declare-fun m!7547946 () Bool)

(assert (=> b!6801516 m!7547946))

(declare-fun m!7547948 () Bool)

(assert (=> d!2137282 m!7547948))

(declare-fun m!7547950 () Bool)

(assert (=> d!2137282 m!7547950))

(declare-fun m!7547952 () Bool)

(assert (=> d!2137282 m!7547952))

(declare-fun m!7547954 () Bool)

(assert (=> b!6801517 m!7547954))

(declare-fun m!7547956 () Bool)

(assert (=> b!6801517 m!7547956))

(assert (=> b!6801514 m!7547954))

(declare-fun m!7547958 () Bool)

(assert (=> b!6801514 m!7547958))

(assert (=> b!6801521 m!7547948))

(assert (=> b!6801520 m!7547954))

(declare-fun m!7547960 () Bool)

(assert (=> b!6801520 m!7547960))

(assert (=> b!6801515 m!7547826))

(assert (=> b!6801515 m!7547826))

(assert (=> b!6801515 m!7547828))

(assert (=> b!6801515 m!7547830))

(assert (=> b!6801515 m!7547826))

(declare-fun m!7547962 () Bool)

(assert (=> b!6801515 m!7547962))

(assert (=> b!6801041 d!2137282))

(declare-fun d!2137294 () Bool)

(declare-fun choose!50698 ((InoxSet Context!12010) Int) (InoxSet Context!12010))

(assert (=> d!2137294 (= (map!15092 lt!2448056 lambda!383594) (choose!50698 lt!2448056 lambda!383594))))

(declare-fun bs!1812988 () Bool)

(assert (= bs!1812988 d!2137294))

(declare-fun m!7547964 () Bool)

(assert (=> bs!1812988 m!7547964))

(assert (=> b!6801021 d!2137294))

(declare-fun b!6801559 () Bool)

(declare-fun e!4104675 () List!66162)

(assert (=> b!6801559 (= e!4104675 (Cons!66038 (h!72486 (Cons!66038 (reg!16950 r!7292) Nil!66038)) (++!14788 (t!379893 (Cons!66038 (reg!16950 r!7292) Nil!66038)) lt!2448028)))))

(declare-fun d!2137296 () Bool)

(declare-fun e!4104676 () Bool)

(assert (=> d!2137296 e!4104676))

(declare-fun res!2779486 () Bool)

(assert (=> d!2137296 (=> (not res!2779486) (not e!4104676))))

(declare-fun lt!2448163 () List!66162)

(declare-fun content!12898 (List!66162) (InoxSet Regex!16621))

(assert (=> d!2137296 (= res!2779486 (= (content!12898 lt!2448163) ((_ map or) (content!12898 (Cons!66038 (reg!16950 r!7292) Nil!66038)) (content!12898 lt!2448028))))))

(assert (=> d!2137296 (= lt!2448163 e!4104675)))

(declare-fun c!1264754 () Bool)

(assert (=> d!2137296 (= c!1264754 ((_ is Nil!66038) (Cons!66038 (reg!16950 r!7292) Nil!66038)))))

(assert (=> d!2137296 (= (++!14788 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028) lt!2448163)))

(declare-fun b!6801558 () Bool)

(assert (=> b!6801558 (= e!4104675 lt!2448028)))

(declare-fun b!6801560 () Bool)

(declare-fun res!2779485 () Bool)

(assert (=> b!6801560 (=> (not res!2779485) (not e!4104676))))

(declare-fun size!40666 (List!66162) Int)

(assert (=> b!6801560 (= res!2779485 (= (size!40666 lt!2448163) (+ (size!40666 (Cons!66038 (reg!16950 r!7292) Nil!66038)) (size!40666 lt!2448028))))))

(declare-fun b!6801561 () Bool)

(assert (=> b!6801561 (= e!4104676 (or (not (= lt!2448028 Nil!66038)) (= lt!2448163 (Cons!66038 (reg!16950 r!7292) Nil!66038))))))

(assert (= (and d!2137296 c!1264754) b!6801558))

(assert (= (and d!2137296 (not c!1264754)) b!6801559))

(assert (= (and d!2137296 res!2779486) b!6801560))

(assert (= (and b!6801560 res!2779485) b!6801561))

(declare-fun m!7547974 () Bool)

(assert (=> b!6801559 m!7547974))

(declare-fun m!7547976 () Bool)

(assert (=> d!2137296 m!7547976))

(declare-fun m!7547978 () Bool)

(assert (=> d!2137296 m!7547978))

(declare-fun m!7547980 () Bool)

(assert (=> d!2137296 m!7547980))

(declare-fun m!7547982 () Bool)

(assert (=> b!6801560 m!7547982))

(declare-fun m!7547984 () Bool)

(assert (=> b!6801560 m!7547984))

(declare-fun m!7547986 () Bool)

(assert (=> b!6801560 m!7547986))

(assert (=> b!6801021 d!2137296))

(declare-fun d!2137302 () Bool)

(assert (=> d!2137302 (forall!15812 (++!14788 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028) lambda!383595)))

(declare-fun lt!2448166 () Unit!159933)

(declare-fun choose!50700 (List!66162 List!66162 Int) Unit!159933)

(assert (=> d!2137302 (= lt!2448166 (choose!50700 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028 lambda!383595))))

(assert (=> d!2137302 (forall!15812 (Cons!66038 (reg!16950 r!7292) Nil!66038) lambda!383595)))

(assert (=> d!2137302 (= (lemmaConcatPreservesForall!450 (Cons!66038 (reg!16950 r!7292) Nil!66038) lt!2448028 lambda!383595) lt!2448166)))

(declare-fun bs!1812994 () Bool)

(assert (= bs!1812994 d!2137302))

(assert (=> bs!1812994 m!7547540))

(assert (=> bs!1812994 m!7547540))

(declare-fun m!7547988 () Bool)

(assert (=> bs!1812994 m!7547988))

(declare-fun m!7547990 () Bool)

(assert (=> bs!1812994 m!7547990))

(declare-fun m!7547992 () Bool)

(assert (=> bs!1812994 m!7547992))

(assert (=> b!6801021 d!2137302))

(declare-fun d!2137304 () Bool)

(declare-fun dynLambda!26373 (Int Context!12010) Context!12010)

(assert (=> d!2137304 (= (map!15092 lt!2448056 lambda!383594) (store ((as const (Array Context!12010 Bool)) false) (dynLambda!26373 lambda!383594 lt!2448030) true))))

(declare-fun lt!2448171 () Unit!159933)

(declare-fun choose!50701 ((InoxSet Context!12010) Context!12010 Int) Unit!159933)

(assert (=> d!2137304 (= lt!2448171 (choose!50701 lt!2448056 lt!2448030 lambda!383594))))

(assert (=> d!2137304 (= lt!2448056 (store ((as const (Array Context!12010 Bool)) false) lt!2448030 true))))

(assert (=> d!2137304 (= (lemmaMapOnSingletonSet!256 lt!2448056 lt!2448030 lambda!383594) lt!2448171)))

(declare-fun b_lambda!256369 () Bool)

(assert (=> (not b_lambda!256369) (not d!2137304)))

(declare-fun bs!1812995 () Bool)

(assert (= bs!1812995 d!2137304))

(declare-fun m!7547994 () Bool)

(assert (=> bs!1812995 m!7547994))

(assert (=> bs!1812995 m!7547994))

(declare-fun m!7547996 () Bool)

(assert (=> bs!1812995 m!7547996))

(assert (=> bs!1812995 m!7547464))

(assert (=> bs!1812995 m!7547530))

(declare-fun m!7547998 () Bool)

(assert (=> bs!1812995 m!7547998))

(assert (=> b!6801021 d!2137304))

(declare-fun bs!1813001 () Bool)

(declare-fun d!2137306 () Bool)

(assert (= bs!1813001 (and d!2137306 b!6801021)))

(declare-fun lambda!383664 () Int)

(assert (=> bs!1813001 (= (= (exprs!6505 lt!2448042) lt!2448028) (= lambda!383664 lambda!383594))))

(assert (=> d!2137306 true))

(assert (=> d!2137306 (= (appendTo!226 lt!2448056 lt!2448042) (map!15092 lt!2448056 lambda!383664))))

(declare-fun bs!1813002 () Bool)

(assert (= bs!1813002 d!2137306))

(declare-fun m!7548020 () Bool)

(assert (=> bs!1813002 m!7548020))

(assert (=> b!6801021 d!2137306))

(declare-fun bs!1813019 () Bool)

(declare-fun d!2137310 () Bool)

(assert (= bs!1813019 (and d!2137310 b!6801021)))

(declare-fun lambda!383671 () Int)

(assert (=> bs!1813019 (= lambda!383671 lambda!383595)))

(declare-fun bs!1813020 () Bool)

(assert (= bs!1813020 (and d!2137310 d!2137200)))

(assert (=> bs!1813020 (= lambda!383671 lambda!383612)))

(declare-fun b!6801644 () Bool)

(declare-fun e!4104726 () Bool)

(declare-fun lt!2448187 () Regex!16621)

(declare-fun isEmptyLang!1986 (Regex!16621) Bool)

(assert (=> b!6801644 (= e!4104726 (isEmptyLang!1986 lt!2448187))))

(declare-fun b!6801645 () Bool)

(declare-fun e!4104728 () Bool)

(declare-fun isUnion!1416 (Regex!16621) Bool)

(assert (=> b!6801645 (= e!4104728 (isUnion!1416 lt!2448187))))

(declare-fun b!6801646 () Bool)

(declare-fun e!4104729 () Regex!16621)

(assert (=> b!6801646 (= e!4104729 (h!72486 (unfocusZipperList!2042 zl!343)))))

(declare-fun b!6801647 () Bool)

(declare-fun e!4104727 () Regex!16621)

(assert (=> b!6801647 (= e!4104729 e!4104727)))

(declare-fun c!1264789 () Bool)

(assert (=> b!6801647 (= c!1264789 ((_ is Cons!66038) (unfocusZipperList!2042 zl!343)))))

(declare-fun b!6801648 () Bool)

(assert (=> b!6801648 (= e!4104726 e!4104728)))

(declare-fun c!1264790 () Bool)

(declare-fun isEmpty!38422 (List!66162) Bool)

(declare-fun tail!12739 (List!66162) List!66162)

(assert (=> b!6801648 (= c!1264790 (isEmpty!38422 (tail!12739 (unfocusZipperList!2042 zl!343))))))

(declare-fun b!6801649 () Bool)

(declare-fun head!13654 (List!66162) Regex!16621)

(assert (=> b!6801649 (= e!4104728 (= lt!2448187 (head!13654 (unfocusZipperList!2042 zl!343))))))

(declare-fun e!4104730 () Bool)

(assert (=> d!2137310 e!4104730))

(declare-fun res!2779503 () Bool)

(assert (=> d!2137310 (=> (not res!2779503) (not e!4104730))))

(assert (=> d!2137310 (= res!2779503 (validRegex!8357 lt!2448187))))

(assert (=> d!2137310 (= lt!2448187 e!4104729)))

(declare-fun c!1264791 () Bool)

(declare-fun e!4104725 () Bool)

(assert (=> d!2137310 (= c!1264791 e!4104725)))

(declare-fun res!2779504 () Bool)

(assert (=> d!2137310 (=> (not res!2779504) (not e!4104725))))

(assert (=> d!2137310 (= res!2779504 ((_ is Cons!66038) (unfocusZipperList!2042 zl!343)))))

(assert (=> d!2137310 (forall!15812 (unfocusZipperList!2042 zl!343) lambda!383671)))

(assert (=> d!2137310 (= (generalisedUnion!2465 (unfocusZipperList!2042 zl!343)) lt!2448187)))

(declare-fun b!6801650 () Bool)

(assert (=> b!6801650 (= e!4104725 (isEmpty!38422 (t!379893 (unfocusZipperList!2042 zl!343))))))

(declare-fun b!6801651 () Bool)

(assert (=> b!6801651 (= e!4104727 EmptyLang!16621)))

(declare-fun b!6801652 () Bool)

(assert (=> b!6801652 (= e!4104727 (Union!16621 (h!72486 (unfocusZipperList!2042 zl!343)) (generalisedUnion!2465 (t!379893 (unfocusZipperList!2042 zl!343)))))))

(declare-fun b!6801653 () Bool)

(assert (=> b!6801653 (= e!4104730 e!4104726)))

(declare-fun c!1264788 () Bool)

(assert (=> b!6801653 (= c!1264788 (isEmpty!38422 (unfocusZipperList!2042 zl!343)))))

(assert (= (and d!2137310 res!2779504) b!6801650))

(assert (= (and d!2137310 c!1264791) b!6801646))

(assert (= (and d!2137310 (not c!1264791)) b!6801647))

(assert (= (and b!6801647 c!1264789) b!6801652))

(assert (= (and b!6801647 (not c!1264789)) b!6801651))

(assert (= (and d!2137310 res!2779503) b!6801653))

(assert (= (and b!6801653 c!1264788) b!6801644))

(assert (= (and b!6801653 (not c!1264788)) b!6801648))

(assert (= (and b!6801648 c!1264790) b!6801649))

(assert (= (and b!6801648 (not c!1264790)) b!6801645))

(declare-fun m!7548072 () Bool)

(assert (=> b!6801645 m!7548072))

(declare-fun m!7548076 () Bool)

(assert (=> b!6801644 m!7548076))

(declare-fun m!7548078 () Bool)

(assert (=> b!6801650 m!7548078))

(assert (=> b!6801653 m!7547474))

(declare-fun m!7548080 () Bool)

(assert (=> b!6801653 m!7548080))

(assert (=> b!6801649 m!7547474))

(declare-fun m!7548082 () Bool)

(assert (=> b!6801649 m!7548082))

(declare-fun m!7548084 () Bool)

(assert (=> d!2137310 m!7548084))

(assert (=> d!2137310 m!7547474))

(declare-fun m!7548086 () Bool)

(assert (=> d!2137310 m!7548086))

(assert (=> b!6801648 m!7547474))

(declare-fun m!7548090 () Bool)

(assert (=> b!6801648 m!7548090))

(assert (=> b!6801648 m!7548090))

(declare-fun m!7548092 () Bool)

(assert (=> b!6801648 m!7548092))

(declare-fun m!7548094 () Bool)

(assert (=> b!6801652 m!7548094))

(assert (=> b!6801022 d!2137310))

(declare-fun bs!1813023 () Bool)

(declare-fun d!2137338 () Bool)

(assert (= bs!1813023 (and d!2137338 b!6801021)))

(declare-fun lambda!383674 () Int)

(assert (=> bs!1813023 (= lambda!383674 lambda!383595)))

(declare-fun bs!1813024 () Bool)

(assert (= bs!1813024 (and d!2137338 d!2137200)))

(assert (=> bs!1813024 (= lambda!383674 lambda!383612)))

(declare-fun bs!1813025 () Bool)

(assert (= bs!1813025 (and d!2137338 d!2137310)))

(assert (=> bs!1813025 (= lambda!383674 lambda!383671)))

(declare-fun lt!2448191 () List!66162)

(assert (=> d!2137338 (forall!15812 lt!2448191 lambda!383674)))

(declare-fun e!4104748 () List!66162)

(assert (=> d!2137338 (= lt!2448191 e!4104748)))

(declare-fun c!1264796 () Bool)

(assert (=> d!2137338 (= c!1264796 ((_ is Cons!66039) zl!343))))

(assert (=> d!2137338 (= (unfocusZipperList!2042 zl!343) lt!2448191)))

(declare-fun b!6801699 () Bool)

(assert (=> b!6801699 (= e!4104748 (Cons!66038 (generalisedConcat!2218 (exprs!6505 (h!72487 zl!343))) (unfocusZipperList!2042 (t!379894 zl!343))))))

(declare-fun b!6801700 () Bool)

(assert (=> b!6801700 (= e!4104748 Nil!66038)))

(assert (= (and d!2137338 c!1264796) b!6801699))

(assert (= (and d!2137338 (not c!1264796)) b!6801700))

(declare-fun m!7548106 () Bool)

(assert (=> d!2137338 m!7548106))

(assert (=> b!6801699 m!7547520))

(declare-fun m!7548108 () Bool)

(assert (=> b!6801699 m!7548108))

(assert (=> b!6801022 d!2137338))

(declare-fun bs!1813031 () Bool)

(declare-fun b!6801761 () Bool)

(assert (= bs!1813031 (and b!6801761 d!2137258)))

(declare-fun lambda!383679 () Int)

(assert (=> bs!1813031 (not (= lambda!383679 lambda!383645))))

(declare-fun bs!1813032 () Bool)

(assert (= bs!1813032 (and b!6801761 b!6801023)))

(assert (=> bs!1813032 (not (= lambda!383679 lambda!383590))))

(assert (=> bs!1813032 (= (and (= (reg!16950 lt!2448048) (reg!16950 r!7292)) (= lt!2448048 r!7292)) (= lambda!383679 lambda!383591))))

(declare-fun bs!1813033 () Bool)

(assert (= bs!1813033 (and b!6801761 d!2137236)))

(assert (=> bs!1813033 (= (and (= (reg!16950 lt!2448048) (reg!16950 r!7292)) (= lt!2448048 (Star!16621 (reg!16950 r!7292)))) (= lambda!383679 lambda!383633))))

(declare-fun bs!1813034 () Bool)

(assert (= bs!1813034 (and b!6801761 d!2137214)))

(assert (=> bs!1813034 (not (= lambda!383679 lambda!383617))))

(assert (=> bs!1813032 (not (= lambda!383679 lambda!383592))))

(assert (=> bs!1813033 (not (= lambda!383679 lambda!383632))))

(assert (=> bs!1813034 (not (= lambda!383679 lambda!383618))))

(assert (=> b!6801761 true))

(assert (=> b!6801761 true))

(declare-fun bs!1813035 () Bool)

(declare-fun b!6801758 () Bool)

(assert (= bs!1813035 (and b!6801758 d!2137258)))

(declare-fun lambda!383680 () Int)

(assert (=> bs!1813035 (not (= lambda!383680 lambda!383645))))

(declare-fun bs!1813036 () Bool)

(assert (= bs!1813036 (and b!6801758 b!6801023)))

(assert (=> bs!1813036 (not (= lambda!383680 lambda!383591))))

(declare-fun bs!1813037 () Bool)

(assert (= bs!1813037 (and b!6801758 d!2137236)))

(assert (=> bs!1813037 (not (= lambda!383680 lambda!383633))))

(declare-fun bs!1813038 () Bool)

(assert (= bs!1813038 (and b!6801758 d!2137214)))

(assert (=> bs!1813038 (not (= lambda!383680 lambda!383617))))

(assert (=> bs!1813036 (= (and (= (regOne!33754 lt!2448048) (reg!16950 r!7292)) (= (regTwo!33754 lt!2448048) r!7292)) (= lambda!383680 lambda!383592))))

(assert (=> bs!1813036 (not (= lambda!383680 lambda!383590))))

(declare-fun bs!1813039 () Bool)

(assert (= bs!1813039 (and b!6801758 b!6801761)))

(assert (=> bs!1813039 (not (= lambda!383680 lambda!383679))))

(assert (=> bs!1813037 (not (= lambda!383680 lambda!383632))))

(assert (=> bs!1813038 (= (and (= (regOne!33754 lt!2448048) (reg!16950 r!7292)) (= (regTwo!33754 lt!2448048) r!7292)) (= lambda!383680 lambda!383618))))

(assert (=> b!6801758 true))

(assert (=> b!6801758 true))

(declare-fun b!6801751 () Bool)

(declare-fun c!1264807 () Bool)

(assert (=> b!6801751 (= c!1264807 ((_ is Union!16621) lt!2448048))))

(declare-fun e!4104780 () Bool)

(declare-fun e!4104783 () Bool)

(assert (=> b!6801751 (= e!4104780 e!4104783)))

(declare-fun b!6801752 () Bool)

(declare-fun res!2779524 () Bool)

(declare-fun e!4104778 () Bool)

(assert (=> b!6801752 (=> res!2779524 e!4104778)))

(declare-fun call!618052 () Bool)

(assert (=> b!6801752 (= res!2779524 call!618052)))

(declare-fun e!4104782 () Bool)

(assert (=> b!6801752 (= e!4104782 e!4104778)))

(declare-fun d!2137342 () Bool)

(declare-fun c!1264806 () Bool)

(assert (=> d!2137342 (= c!1264806 ((_ is EmptyExpr!16621) lt!2448048))))

(declare-fun e!4104781 () Bool)

(assert (=> d!2137342 (= (matchRSpec!3722 lt!2448048 s!2326) e!4104781)))

(declare-fun c!1264805 () Bool)

(declare-fun bm!618046 () Bool)

(declare-fun call!618051 () Bool)

(assert (=> bm!618046 (= call!618051 (Exists!3689 (ite c!1264805 lambda!383679 lambda!383680)))))

(declare-fun b!6801753 () Bool)

(declare-fun c!1264808 () Bool)

(assert (=> b!6801753 (= c!1264808 ((_ is ElementMatch!16621) lt!2448048))))

(declare-fun e!4104784 () Bool)

(assert (=> b!6801753 (= e!4104784 e!4104780)))

(declare-fun b!6801754 () Bool)

(assert (=> b!6801754 (= e!4104780 (= s!2326 (Cons!66040 (c!1264611 lt!2448048) Nil!66040)))))

(declare-fun b!6801755 () Bool)

(assert (=> b!6801755 (= e!4104781 e!4104784)))

(declare-fun res!2779522 () Bool)

(assert (=> b!6801755 (= res!2779522 (not ((_ is EmptyLang!16621) lt!2448048)))))

(assert (=> b!6801755 (=> (not res!2779522) (not e!4104784))))

(declare-fun b!6801756 () Bool)

(assert (=> b!6801756 (= e!4104783 e!4104782)))

(assert (=> b!6801756 (= c!1264805 ((_ is Star!16621) lt!2448048))))

(declare-fun b!6801757 () Bool)

(declare-fun e!4104779 () Bool)

(assert (=> b!6801757 (= e!4104783 e!4104779)))

(declare-fun res!2779523 () Bool)

(assert (=> b!6801757 (= res!2779523 (matchRSpec!3722 (regOne!33755 lt!2448048) s!2326))))

(assert (=> b!6801757 (=> res!2779523 e!4104779)))

(declare-fun bm!618047 () Bool)

(assert (=> bm!618047 (= call!618052 (isEmpty!38417 s!2326))))

(assert (=> b!6801758 (= e!4104782 call!618051)))

(declare-fun b!6801759 () Bool)

(assert (=> b!6801759 (= e!4104781 call!618052)))

(declare-fun b!6801760 () Bool)

(assert (=> b!6801760 (= e!4104779 (matchRSpec!3722 (regTwo!33755 lt!2448048) s!2326))))

(assert (=> b!6801761 (= e!4104778 call!618051)))

(assert (= (and d!2137342 c!1264806) b!6801759))

(assert (= (and d!2137342 (not c!1264806)) b!6801755))

(assert (= (and b!6801755 res!2779522) b!6801753))

(assert (= (and b!6801753 c!1264808) b!6801754))

(assert (= (and b!6801753 (not c!1264808)) b!6801751))

(assert (= (and b!6801751 c!1264807) b!6801757))

(assert (= (and b!6801751 (not c!1264807)) b!6801756))

(assert (= (and b!6801757 (not res!2779523)) b!6801760))

(assert (= (and b!6801756 c!1264805) b!6801752))

(assert (= (and b!6801756 (not c!1264805)) b!6801758))

(assert (= (and b!6801752 (not res!2779524)) b!6801761))

(assert (= (or b!6801761 b!6801758) bm!618046))

(assert (= (or b!6801759 b!6801752) bm!618047))

(declare-fun m!7548118 () Bool)

(assert (=> bm!618046 m!7548118))

(declare-fun m!7548120 () Bool)

(assert (=> b!6801757 m!7548120))

(assert (=> bm!618047 m!7547418))

(declare-fun m!7548122 () Bool)

(assert (=> b!6801760 m!7548122))

(assert (=> b!6801043 d!2137342))

(declare-fun b!6801790 () Bool)

(declare-fun res!2779546 () Bool)

(declare-fun e!4104803 () Bool)

(assert (=> b!6801790 (=> res!2779546 e!4104803)))

(assert (=> b!6801790 (= res!2779546 (not ((_ is ElementMatch!16621) lt!2448048)))))

(declare-fun e!4104804 () Bool)

(assert (=> b!6801790 (= e!4104804 e!4104803)))

(declare-fun b!6801791 () Bool)

(declare-fun e!4104801 () Bool)

(declare-fun e!4104799 () Bool)

(assert (=> b!6801791 (= e!4104801 e!4104799)))

(declare-fun res!2779544 () Bool)

(assert (=> b!6801791 (=> res!2779544 e!4104799)))

(declare-fun call!618055 () Bool)

(assert (=> b!6801791 (= res!2779544 call!618055)))

(declare-fun d!2137354 () Bool)

(declare-fun e!4104800 () Bool)

(assert (=> d!2137354 e!4104800))

(declare-fun c!1264815 () Bool)

(assert (=> d!2137354 (= c!1264815 ((_ is EmptyExpr!16621) lt!2448048))))

(declare-fun lt!2448195 () Bool)

(declare-fun e!4104802 () Bool)

(assert (=> d!2137354 (= lt!2448195 e!4104802)))

(declare-fun c!1264816 () Bool)

(assert (=> d!2137354 (= c!1264816 (isEmpty!38417 s!2326))))

(assert (=> d!2137354 (validRegex!8357 lt!2448048)))

(assert (=> d!2137354 (= (matchR!8804 lt!2448048 s!2326) lt!2448195)))

(declare-fun b!6801792 () Bool)

(declare-fun res!2779548 () Bool)

(assert (=> b!6801792 (=> res!2779548 e!4104799)))

(assert (=> b!6801792 (= res!2779548 (not (isEmpty!38417 (tail!12737 s!2326))))))

(declare-fun b!6801793 () Bool)

(assert (=> b!6801793 (= e!4104799 (not (= (head!13652 s!2326) (c!1264611 lt!2448048))))))

(declare-fun bm!618050 () Bool)

(assert (=> bm!618050 (= call!618055 (isEmpty!38417 s!2326))))

(declare-fun b!6801794 () Bool)

(assert (=> b!6801794 (= e!4104800 e!4104804)))

(declare-fun c!1264817 () Bool)

(assert (=> b!6801794 (= c!1264817 ((_ is EmptyLang!16621) lt!2448048))))

(declare-fun b!6801795 () Bool)

(declare-fun derivativeStep!5285 (Regex!16621 C!33512) Regex!16621)

(assert (=> b!6801795 (= e!4104802 (matchR!8804 (derivativeStep!5285 lt!2448048 (head!13652 s!2326)) (tail!12737 s!2326)))))

(declare-fun b!6801796 () Bool)

(assert (=> b!6801796 (= e!4104800 (= lt!2448195 call!618055))))

(declare-fun b!6801797 () Bool)

(assert (=> b!6801797 (= e!4104802 (nullable!6600 lt!2448048))))

(declare-fun b!6801798 () Bool)

(declare-fun e!4104805 () Bool)

(assert (=> b!6801798 (= e!4104805 (= (head!13652 s!2326) (c!1264611 lt!2448048)))))

(declare-fun b!6801799 () Bool)

(assert (=> b!6801799 (= e!4104804 (not lt!2448195))))

(declare-fun b!6801800 () Bool)

(declare-fun res!2779543 () Bool)

(assert (=> b!6801800 (=> (not res!2779543) (not e!4104805))))

(assert (=> b!6801800 (= res!2779543 (isEmpty!38417 (tail!12737 s!2326)))))

(declare-fun b!6801801 () Bool)

(assert (=> b!6801801 (= e!4104803 e!4104801)))

(declare-fun res!2779547 () Bool)

(assert (=> b!6801801 (=> (not res!2779547) (not e!4104801))))

(assert (=> b!6801801 (= res!2779547 (not lt!2448195))))

(declare-fun b!6801802 () Bool)

(declare-fun res!2779542 () Bool)

(assert (=> b!6801802 (=> res!2779542 e!4104803)))

(assert (=> b!6801802 (= res!2779542 e!4104805)))

(declare-fun res!2779541 () Bool)

(assert (=> b!6801802 (=> (not res!2779541) (not e!4104805))))

(assert (=> b!6801802 (= res!2779541 lt!2448195)))

(declare-fun b!6801803 () Bool)

(declare-fun res!2779545 () Bool)

(assert (=> b!6801803 (=> (not res!2779545) (not e!4104805))))

(assert (=> b!6801803 (= res!2779545 (not call!618055))))

(assert (= (and d!2137354 c!1264816) b!6801797))

(assert (= (and d!2137354 (not c!1264816)) b!6801795))

(assert (= (and d!2137354 c!1264815) b!6801796))

(assert (= (and d!2137354 (not c!1264815)) b!6801794))

(assert (= (and b!6801794 c!1264817) b!6801799))

(assert (= (and b!6801794 (not c!1264817)) b!6801790))

(assert (= (and b!6801790 (not res!2779546)) b!6801802))

(assert (= (and b!6801802 res!2779541) b!6801803))

(assert (= (and b!6801803 res!2779545) b!6801800))

(assert (= (and b!6801800 res!2779543) b!6801798))

(assert (= (and b!6801802 (not res!2779542)) b!6801801))

(assert (= (and b!6801801 res!2779547) b!6801791))

(assert (= (and b!6801791 (not res!2779544)) b!6801792))

(assert (= (and b!6801792 (not res!2779548)) b!6801793))

(assert (= (or b!6801796 b!6801791 b!6801803) bm!618050))

(assert (=> b!6801792 m!7547550))

(assert (=> b!6801792 m!7547550))

(declare-fun m!7548124 () Bool)

(assert (=> b!6801792 m!7548124))

(assert (=> b!6801800 m!7547550))

(assert (=> b!6801800 m!7547550))

(assert (=> b!6801800 m!7548124))

(assert (=> b!6801798 m!7547546))

(assert (=> b!6801795 m!7547546))

(assert (=> b!6801795 m!7547546))

(declare-fun m!7548126 () Bool)

(assert (=> b!6801795 m!7548126))

(assert (=> b!6801795 m!7547550))

(assert (=> b!6801795 m!7548126))

(assert (=> b!6801795 m!7547550))

(declare-fun m!7548128 () Bool)

(assert (=> b!6801795 m!7548128))

(assert (=> d!2137354 m!7547418))

(declare-fun m!7548130 () Bool)

(assert (=> d!2137354 m!7548130))

(assert (=> bm!618050 m!7547418))

(assert (=> b!6801793 m!7547546))

(declare-fun m!7548132 () Bool)

(assert (=> b!6801797 m!7548132))

(assert (=> b!6801043 d!2137354))

(declare-fun d!2137356 () Bool)

(assert (=> d!2137356 (= (matchR!8804 lt!2448048 s!2326) (matchRSpec!3722 lt!2448048 s!2326))))

(declare-fun lt!2448198 () Unit!159933)

(declare-fun choose!50705 (Regex!16621 List!66164) Unit!159933)

(assert (=> d!2137356 (= lt!2448198 (choose!50705 lt!2448048 s!2326))))

(assert (=> d!2137356 (validRegex!8357 lt!2448048)))

(assert (=> d!2137356 (= (mainMatchTheorem!3722 lt!2448048 s!2326) lt!2448198)))

(declare-fun bs!1813040 () Bool)

(assert (= bs!1813040 d!2137356))

(assert (=> bs!1813040 m!7547434))

(assert (=> bs!1813040 m!7547432))

(declare-fun m!7548134 () Bool)

(assert (=> bs!1813040 m!7548134))

(assert (=> bs!1813040 m!7548130))

(assert (=> b!6801043 d!2137356))

(declare-fun bs!1813041 () Bool)

(declare-fun d!2137358 () Bool)

(assert (= bs!1813041 (and d!2137358 b!6801021)))

(declare-fun lambda!383683 () Int)

(assert (=> bs!1813041 (= lambda!383683 lambda!383595)))

(declare-fun bs!1813042 () Bool)

(assert (= bs!1813042 (and d!2137358 d!2137200)))

(assert (=> bs!1813042 (= lambda!383683 lambda!383612)))

(declare-fun bs!1813043 () Bool)

(assert (= bs!1813043 (and d!2137358 d!2137310)))

(assert (=> bs!1813043 (= lambda!383683 lambda!383671)))

(declare-fun bs!1813044 () Bool)

(assert (= bs!1813044 (and d!2137358 d!2137338)))

(assert (=> bs!1813044 (= lambda!383683 lambda!383674)))

(declare-fun b!6801824 () Bool)

(declare-fun e!4104823 () Bool)

(assert (=> b!6801824 (= e!4104823 (isEmpty!38422 (t!379893 (exprs!6505 (h!72487 zl!343)))))))

(declare-fun b!6801825 () Bool)

(declare-fun e!4104818 () Regex!16621)

(declare-fun e!4104821 () Regex!16621)

(assert (=> b!6801825 (= e!4104818 e!4104821)))

(declare-fun c!1264827 () Bool)

(assert (=> b!6801825 (= c!1264827 ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343))))))

(declare-fun b!6801826 () Bool)

(assert (=> b!6801826 (= e!4104821 EmptyExpr!16621)))

(declare-fun b!6801827 () Bool)

(assert (=> b!6801827 (= e!4104821 (Concat!25466 (h!72486 (exprs!6505 (h!72487 zl!343))) (generalisedConcat!2218 (t!379893 (exprs!6505 (h!72487 zl!343))))))))

(declare-fun b!6801828 () Bool)

(declare-fun e!4104819 () Bool)

(declare-fun e!4104820 () Bool)

(assert (=> b!6801828 (= e!4104819 e!4104820)))

(declare-fun c!1264828 () Bool)

(assert (=> b!6801828 (= c!1264828 (isEmpty!38422 (tail!12739 (exprs!6505 (h!72487 zl!343)))))))

(declare-fun b!6801829 () Bool)

(declare-fun lt!2448201 () Regex!16621)

(assert (=> b!6801829 (= e!4104820 (= lt!2448201 (head!13654 (exprs!6505 (h!72487 zl!343)))))))

(declare-fun b!6801830 () Bool)

(assert (=> b!6801830 (= e!4104818 (h!72486 (exprs!6505 (h!72487 zl!343))))))

(declare-fun b!6801831 () Bool)

(declare-fun isConcat!1502 (Regex!16621) Bool)

(assert (=> b!6801831 (= e!4104820 (isConcat!1502 lt!2448201))))

(declare-fun b!6801832 () Bool)

(declare-fun e!4104822 () Bool)

(assert (=> b!6801832 (= e!4104822 e!4104819)))

(declare-fun c!1264826 () Bool)

(assert (=> b!6801832 (= c!1264826 (isEmpty!38422 (exprs!6505 (h!72487 zl!343))))))

(declare-fun b!6801833 () Bool)

(declare-fun isEmptyExpr!1979 (Regex!16621) Bool)

(assert (=> b!6801833 (= e!4104819 (isEmptyExpr!1979 lt!2448201))))

(assert (=> d!2137358 e!4104822))

(declare-fun res!2779554 () Bool)

(assert (=> d!2137358 (=> (not res!2779554) (not e!4104822))))

(assert (=> d!2137358 (= res!2779554 (validRegex!8357 lt!2448201))))

(assert (=> d!2137358 (= lt!2448201 e!4104818)))

(declare-fun c!1264829 () Bool)

(assert (=> d!2137358 (= c!1264829 e!4104823)))

(declare-fun res!2779553 () Bool)

(assert (=> d!2137358 (=> (not res!2779553) (not e!4104823))))

(assert (=> d!2137358 (= res!2779553 ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343))))))

(assert (=> d!2137358 (forall!15812 (exprs!6505 (h!72487 zl!343)) lambda!383683)))

(assert (=> d!2137358 (= (generalisedConcat!2218 (exprs!6505 (h!72487 zl!343))) lt!2448201)))

(assert (= (and d!2137358 res!2779553) b!6801824))

(assert (= (and d!2137358 c!1264829) b!6801830))

(assert (= (and d!2137358 (not c!1264829)) b!6801825))

(assert (= (and b!6801825 c!1264827) b!6801827))

(assert (= (and b!6801825 (not c!1264827)) b!6801826))

(assert (= (and d!2137358 res!2779554) b!6801832))

(assert (= (and b!6801832 c!1264826) b!6801833))

(assert (= (and b!6801832 (not c!1264826)) b!6801828))

(assert (= (and b!6801828 c!1264828) b!6801829))

(assert (= (and b!6801828 (not c!1264828)) b!6801831))

(declare-fun m!7548136 () Bool)

(assert (=> b!6801827 m!7548136))

(declare-fun m!7548138 () Bool)

(assert (=> b!6801824 m!7548138))

(declare-fun m!7548140 () Bool)

(assert (=> b!6801828 m!7548140))

(assert (=> b!6801828 m!7548140))

(declare-fun m!7548142 () Bool)

(assert (=> b!6801828 m!7548142))

(declare-fun m!7548144 () Bool)

(assert (=> d!2137358 m!7548144))

(declare-fun m!7548146 () Bool)

(assert (=> d!2137358 m!7548146))

(declare-fun m!7548148 () Bool)

(assert (=> b!6801832 m!7548148))

(declare-fun m!7548150 () Bool)

(assert (=> b!6801833 m!7548150))

(declare-fun m!7548152 () Bool)

(assert (=> b!6801829 m!7548152))

(declare-fun m!7548154 () Bool)

(assert (=> b!6801831 m!7548154))

(assert (=> b!6801038 d!2137358))

(declare-fun b!6801852 () Bool)

(declare-fun e!4104839 () Bool)

(declare-fun e!4104840 () Bool)

(assert (=> b!6801852 (= e!4104839 e!4104840)))

(declare-fun c!1264835 () Bool)

(assert (=> b!6801852 (= c!1264835 ((_ is Star!16621) r!7292))))

(declare-fun b!6801853 () Bool)

(declare-fun e!4104841 () Bool)

(declare-fun call!618062 () Bool)

(assert (=> b!6801853 (= e!4104841 call!618062)))

(declare-fun b!6801854 () Bool)

(declare-fun e!4104843 () Bool)

(assert (=> b!6801854 (= e!4104840 e!4104843)))

(declare-fun res!2779566 () Bool)

(assert (=> b!6801854 (= res!2779566 (not (nullable!6600 (reg!16950 r!7292))))))

(assert (=> b!6801854 (=> (not res!2779566) (not e!4104843))))

(declare-fun d!2137360 () Bool)

(declare-fun res!2779565 () Bool)

(assert (=> d!2137360 (=> res!2779565 e!4104839)))

(assert (=> d!2137360 (= res!2779565 ((_ is ElementMatch!16621) r!7292))))

(assert (=> d!2137360 (= (validRegex!8357 r!7292) e!4104839)))

(declare-fun b!6801855 () Bool)

(declare-fun res!2779569 () Bool)

(declare-fun e!4104844 () Bool)

(assert (=> b!6801855 (=> res!2779569 e!4104844)))

(assert (=> b!6801855 (= res!2779569 (not ((_ is Concat!25466) r!7292)))))

(declare-fun e!4104838 () Bool)

(assert (=> b!6801855 (= e!4104838 e!4104844)))

(declare-fun bm!618057 () Bool)

(declare-fun call!618063 () Bool)

(declare-fun c!1264834 () Bool)

(assert (=> bm!618057 (= call!618063 (validRegex!8357 (ite c!1264834 (regOne!33755 r!7292) (regOne!33754 r!7292))))))

(declare-fun bm!618058 () Bool)

(declare-fun call!618064 () Bool)

(assert (=> bm!618058 (= call!618062 call!618064)))

(declare-fun b!6801856 () Bool)

(declare-fun e!4104842 () Bool)

(assert (=> b!6801856 (= e!4104842 call!618062)))

(declare-fun b!6801857 () Bool)

(declare-fun res!2779568 () Bool)

(assert (=> b!6801857 (=> (not res!2779568) (not e!4104842))))

(assert (=> b!6801857 (= res!2779568 call!618063)))

(assert (=> b!6801857 (= e!4104838 e!4104842)))

(declare-fun b!6801858 () Bool)

(assert (=> b!6801858 (= e!4104843 call!618064)))

(declare-fun b!6801859 () Bool)

(assert (=> b!6801859 (= e!4104844 e!4104841)))

(declare-fun res!2779567 () Bool)

(assert (=> b!6801859 (=> (not res!2779567) (not e!4104841))))

(assert (=> b!6801859 (= res!2779567 call!618063)))

(declare-fun b!6801860 () Bool)

(assert (=> b!6801860 (= e!4104840 e!4104838)))

(assert (=> b!6801860 (= c!1264834 ((_ is Union!16621) r!7292))))

(declare-fun bm!618059 () Bool)

(assert (=> bm!618059 (= call!618064 (validRegex!8357 (ite c!1264835 (reg!16950 r!7292) (ite c!1264834 (regTwo!33755 r!7292) (regTwo!33754 r!7292)))))))

(assert (= (and d!2137360 (not res!2779565)) b!6801852))

(assert (= (and b!6801852 c!1264835) b!6801854))

(assert (= (and b!6801852 (not c!1264835)) b!6801860))

(assert (= (and b!6801854 res!2779566) b!6801858))

(assert (= (and b!6801860 c!1264834) b!6801857))

(assert (= (and b!6801860 (not c!1264834)) b!6801855))

(assert (= (and b!6801857 res!2779568) b!6801856))

(assert (= (and b!6801855 (not res!2779569)) b!6801859))

(assert (= (and b!6801859 res!2779567) b!6801853))

(assert (= (or b!6801856 b!6801853) bm!618058))

(assert (= (or b!6801857 b!6801859) bm!618057))

(assert (= (or b!6801858 bm!618058) bm!618059))

(declare-fun m!7548156 () Bool)

(assert (=> b!6801854 m!7548156))

(declare-fun m!7548158 () Bool)

(assert (=> bm!618057 m!7548158))

(declare-fun m!7548160 () Bool)

(assert (=> bm!618059 m!7548160))

(assert (=> start!658280 d!2137360))

(declare-fun d!2137362 () Bool)

(declare-fun lt!2448202 () Regex!16621)

(assert (=> d!2137362 (validRegex!8357 lt!2448202)))

(assert (=> d!2137362 (= lt!2448202 (generalisedUnion!2465 (unfocusZipperList!2042 (Cons!66039 lt!2448042 Nil!66039))))))

(assert (=> d!2137362 (= (unfocusZipper!2363 (Cons!66039 lt!2448042 Nil!66039)) lt!2448202)))

(declare-fun bs!1813045 () Bool)

(assert (= bs!1813045 d!2137362))

(declare-fun m!7548162 () Bool)

(assert (=> bs!1813045 m!7548162))

(declare-fun m!7548164 () Bool)

(assert (=> bs!1813045 m!7548164))

(assert (=> bs!1813045 m!7548164))

(declare-fun m!7548166 () Bool)

(assert (=> bs!1813045 m!7548166))

(assert (=> b!6801039 d!2137362))

(declare-fun d!2137364 () Bool)

(declare-fun c!1264836 () Bool)

(assert (=> d!2137364 (= c!1264836 (isEmpty!38417 (_1!36899 lt!2448046)))))

(declare-fun e!4104845 () Bool)

(assert (=> d!2137364 (= (matchZipper!2607 lt!2448056 (_1!36899 lt!2448046)) e!4104845)))

(declare-fun b!6801861 () Bool)

(assert (=> b!6801861 (= e!4104845 (nullableZipper!2328 lt!2448056))))

(declare-fun b!6801862 () Bool)

(assert (=> b!6801862 (= e!4104845 (matchZipper!2607 (derivationStepZipper!2565 lt!2448056 (head!13652 (_1!36899 lt!2448046))) (tail!12737 (_1!36899 lt!2448046))))))

(assert (= (and d!2137364 c!1264836) b!6801861))

(assert (= (and d!2137364 (not c!1264836)) b!6801862))

(declare-fun m!7548168 () Bool)

(assert (=> d!2137364 m!7548168))

(declare-fun m!7548170 () Bool)

(assert (=> b!6801861 m!7548170))

(declare-fun m!7548172 () Bool)

(assert (=> b!6801862 m!7548172))

(assert (=> b!6801862 m!7548172))

(declare-fun m!7548174 () Bool)

(assert (=> b!6801862 m!7548174))

(declare-fun m!7548176 () Bool)

(assert (=> b!6801862 m!7548176))

(assert (=> b!6801862 m!7548174))

(assert (=> b!6801862 m!7548176))

(declare-fun m!7548178 () Bool)

(assert (=> b!6801862 m!7548178))

(assert (=> b!6801040 d!2137364))

(declare-fun d!2137366 () Bool)

(declare-fun e!4104848 () Bool)

(assert (=> d!2137366 e!4104848))

(declare-fun res!2779572 () Bool)

(assert (=> d!2137366 (=> (not res!2779572) (not e!4104848))))

(declare-fun lt!2448205 () List!66163)

(declare-fun noDuplicate!2405 (List!66163) Bool)

(assert (=> d!2137366 (= res!2779572 (noDuplicate!2405 lt!2448205))))

(declare-fun choose!50706 ((InoxSet Context!12010)) List!66163)

(assert (=> d!2137366 (= lt!2448205 (choose!50706 z!1189))))

(assert (=> d!2137366 (= (toList!10405 z!1189) lt!2448205)))

(declare-fun b!6801865 () Bool)

(declare-fun content!12900 (List!66163) (InoxSet Context!12010))

(assert (=> b!6801865 (= e!4104848 (= (content!12900 lt!2448205) z!1189))))

(assert (= (and d!2137366 res!2779572) b!6801865))

(declare-fun m!7548180 () Bool)

(assert (=> d!2137366 m!7548180))

(declare-fun m!7548182 () Bool)

(assert (=> d!2137366 m!7548182))

(declare-fun m!7548184 () Bool)

(assert (=> b!6801865 m!7548184))

(assert (=> b!6801036 d!2137366))

(declare-fun bs!1813046 () Bool)

(declare-fun b!6801876 () Bool)

(assert (= bs!1813046 (and b!6801876 d!2137258)))

(declare-fun lambda!383684 () Int)

(assert (=> bs!1813046 (not (= lambda!383684 lambda!383645))))

(declare-fun bs!1813047 () Bool)

(assert (= bs!1813047 (and b!6801876 b!6801023)))

(assert (=> bs!1813047 (= lambda!383684 lambda!383591)))

(declare-fun bs!1813048 () Bool)

(assert (= bs!1813048 (and b!6801876 d!2137236)))

(assert (=> bs!1813048 (= (= r!7292 (Star!16621 (reg!16950 r!7292))) (= lambda!383684 lambda!383633))))

(declare-fun bs!1813049 () Bool)

(assert (= bs!1813049 (and b!6801876 b!6801758)))

(assert (=> bs!1813049 (not (= lambda!383684 lambda!383680))))

(declare-fun bs!1813050 () Bool)

(assert (= bs!1813050 (and b!6801876 d!2137214)))

(assert (=> bs!1813050 (not (= lambda!383684 lambda!383617))))

(assert (=> bs!1813047 (not (= lambda!383684 lambda!383592))))

(assert (=> bs!1813047 (not (= lambda!383684 lambda!383590))))

(declare-fun bs!1813051 () Bool)

(assert (= bs!1813051 (and b!6801876 b!6801761)))

(assert (=> bs!1813051 (= (and (= (reg!16950 r!7292) (reg!16950 lt!2448048)) (= r!7292 lt!2448048)) (= lambda!383684 lambda!383679))))

(assert (=> bs!1813048 (not (= lambda!383684 lambda!383632))))

(assert (=> bs!1813050 (not (= lambda!383684 lambda!383618))))

(assert (=> b!6801876 true))

(assert (=> b!6801876 true))

(declare-fun bs!1813052 () Bool)

(declare-fun b!6801873 () Bool)

(assert (= bs!1813052 (and b!6801873 d!2137258)))

(declare-fun lambda!383685 () Int)

(assert (=> bs!1813052 (not (= lambda!383685 lambda!383645))))

(declare-fun bs!1813053 () Bool)

(assert (= bs!1813053 (and b!6801873 b!6801023)))

(assert (=> bs!1813053 (not (= lambda!383685 lambda!383591))))

(declare-fun bs!1813054 () Bool)

(assert (= bs!1813054 (and b!6801873 d!2137236)))

(assert (=> bs!1813054 (not (= lambda!383685 lambda!383633))))

(declare-fun bs!1813055 () Bool)

(assert (= bs!1813055 (and b!6801873 b!6801758)))

(assert (=> bs!1813055 (= (and (= (regOne!33754 r!7292) (regOne!33754 lt!2448048)) (= (regTwo!33754 r!7292) (regTwo!33754 lt!2448048))) (= lambda!383685 lambda!383680))))

(declare-fun bs!1813056 () Bool)

(assert (= bs!1813056 (and b!6801873 d!2137214)))

(assert (=> bs!1813056 (not (= lambda!383685 lambda!383617))))

(assert (=> bs!1813053 (= (and (= (regOne!33754 r!7292) (reg!16950 r!7292)) (= (regTwo!33754 r!7292) r!7292)) (= lambda!383685 lambda!383592))))

(assert (=> bs!1813053 (not (= lambda!383685 lambda!383590))))

(declare-fun bs!1813057 () Bool)

(assert (= bs!1813057 (and b!6801873 b!6801876)))

(assert (=> bs!1813057 (not (= lambda!383685 lambda!383684))))

(declare-fun bs!1813058 () Bool)

(assert (= bs!1813058 (and b!6801873 b!6801761)))

(assert (=> bs!1813058 (not (= lambda!383685 lambda!383679))))

(assert (=> bs!1813054 (not (= lambda!383685 lambda!383632))))

(assert (=> bs!1813056 (= (and (= (regOne!33754 r!7292) (reg!16950 r!7292)) (= (regTwo!33754 r!7292) r!7292)) (= lambda!383685 lambda!383618))))

(assert (=> b!6801873 true))

(assert (=> b!6801873 true))

(declare-fun b!6801866 () Bool)

(declare-fun c!1264839 () Bool)

(assert (=> b!6801866 (= c!1264839 ((_ is Union!16621) r!7292))))

(declare-fun e!4104851 () Bool)

(declare-fun e!4104854 () Bool)

(assert (=> b!6801866 (= e!4104851 e!4104854)))

(declare-fun b!6801867 () Bool)

(declare-fun res!2779575 () Bool)

(declare-fun e!4104849 () Bool)

(assert (=> b!6801867 (=> res!2779575 e!4104849)))

(declare-fun call!618066 () Bool)

(assert (=> b!6801867 (= res!2779575 call!618066)))

(declare-fun e!4104853 () Bool)

(assert (=> b!6801867 (= e!4104853 e!4104849)))

(declare-fun d!2137368 () Bool)

(declare-fun c!1264838 () Bool)

(assert (=> d!2137368 (= c!1264838 ((_ is EmptyExpr!16621) r!7292))))

(declare-fun e!4104852 () Bool)

(assert (=> d!2137368 (= (matchRSpec!3722 r!7292 s!2326) e!4104852)))

(declare-fun bm!618060 () Bool)

(declare-fun call!618065 () Bool)

(declare-fun c!1264837 () Bool)

(assert (=> bm!618060 (= call!618065 (Exists!3689 (ite c!1264837 lambda!383684 lambda!383685)))))

(declare-fun b!6801868 () Bool)

(declare-fun c!1264840 () Bool)

(assert (=> b!6801868 (= c!1264840 ((_ is ElementMatch!16621) r!7292))))

(declare-fun e!4104855 () Bool)

(assert (=> b!6801868 (= e!4104855 e!4104851)))

(declare-fun b!6801869 () Bool)

(assert (=> b!6801869 (= e!4104851 (= s!2326 (Cons!66040 (c!1264611 r!7292) Nil!66040)))))

(declare-fun b!6801870 () Bool)

(assert (=> b!6801870 (= e!4104852 e!4104855)))

(declare-fun res!2779573 () Bool)

(assert (=> b!6801870 (= res!2779573 (not ((_ is EmptyLang!16621) r!7292)))))

(assert (=> b!6801870 (=> (not res!2779573) (not e!4104855))))

(declare-fun b!6801871 () Bool)

(assert (=> b!6801871 (= e!4104854 e!4104853)))

(assert (=> b!6801871 (= c!1264837 ((_ is Star!16621) r!7292))))

(declare-fun b!6801872 () Bool)

(declare-fun e!4104850 () Bool)

(assert (=> b!6801872 (= e!4104854 e!4104850)))

(declare-fun res!2779574 () Bool)

(assert (=> b!6801872 (= res!2779574 (matchRSpec!3722 (regOne!33755 r!7292) s!2326))))

(assert (=> b!6801872 (=> res!2779574 e!4104850)))

(declare-fun bm!618061 () Bool)

(assert (=> bm!618061 (= call!618066 (isEmpty!38417 s!2326))))

(assert (=> b!6801873 (= e!4104853 call!618065)))

(declare-fun b!6801874 () Bool)

(assert (=> b!6801874 (= e!4104852 call!618066)))

(declare-fun b!6801875 () Bool)

(assert (=> b!6801875 (= e!4104850 (matchRSpec!3722 (regTwo!33755 r!7292) s!2326))))

(assert (=> b!6801876 (= e!4104849 call!618065)))

(assert (= (and d!2137368 c!1264838) b!6801874))

(assert (= (and d!2137368 (not c!1264838)) b!6801870))

(assert (= (and b!6801870 res!2779573) b!6801868))

(assert (= (and b!6801868 c!1264840) b!6801869))

(assert (= (and b!6801868 (not c!1264840)) b!6801866))

(assert (= (and b!6801866 c!1264839) b!6801872))

(assert (= (and b!6801866 (not c!1264839)) b!6801871))

(assert (= (and b!6801872 (not res!2779574)) b!6801875))

(assert (= (and b!6801871 c!1264837) b!6801867))

(assert (= (and b!6801871 (not c!1264837)) b!6801873))

(assert (= (and b!6801867 (not res!2779575)) b!6801876))

(assert (= (or b!6801876 b!6801873) bm!618060))

(assert (= (or b!6801874 b!6801867) bm!618061))

(declare-fun m!7548186 () Bool)

(assert (=> bm!618060 m!7548186))

(declare-fun m!7548188 () Bool)

(assert (=> b!6801872 m!7548188))

(assert (=> bm!618061 m!7547418))

(declare-fun m!7548190 () Bool)

(assert (=> b!6801875 m!7548190))

(assert (=> b!6801037 d!2137368))

(declare-fun b!6801877 () Bool)

(declare-fun res!2779581 () Bool)

(declare-fun e!4104860 () Bool)

(assert (=> b!6801877 (=> res!2779581 e!4104860)))

(assert (=> b!6801877 (= res!2779581 (not ((_ is ElementMatch!16621) r!7292)))))

(declare-fun e!4104861 () Bool)

(assert (=> b!6801877 (= e!4104861 e!4104860)))

(declare-fun b!6801878 () Bool)

(declare-fun e!4104858 () Bool)

(declare-fun e!4104856 () Bool)

(assert (=> b!6801878 (= e!4104858 e!4104856)))

(declare-fun res!2779579 () Bool)

(assert (=> b!6801878 (=> res!2779579 e!4104856)))

(declare-fun call!618067 () Bool)

(assert (=> b!6801878 (= res!2779579 call!618067)))

(declare-fun d!2137370 () Bool)

(declare-fun e!4104857 () Bool)

(assert (=> d!2137370 e!4104857))

(declare-fun c!1264841 () Bool)

(assert (=> d!2137370 (= c!1264841 ((_ is EmptyExpr!16621) r!7292))))

(declare-fun lt!2448206 () Bool)

(declare-fun e!4104859 () Bool)

(assert (=> d!2137370 (= lt!2448206 e!4104859)))

(declare-fun c!1264842 () Bool)

(assert (=> d!2137370 (= c!1264842 (isEmpty!38417 s!2326))))

(assert (=> d!2137370 (validRegex!8357 r!7292)))

(assert (=> d!2137370 (= (matchR!8804 r!7292 s!2326) lt!2448206)))

(declare-fun b!6801879 () Bool)

(declare-fun res!2779583 () Bool)

(assert (=> b!6801879 (=> res!2779583 e!4104856)))

(assert (=> b!6801879 (= res!2779583 (not (isEmpty!38417 (tail!12737 s!2326))))))

(declare-fun b!6801880 () Bool)

(assert (=> b!6801880 (= e!4104856 (not (= (head!13652 s!2326) (c!1264611 r!7292))))))

(declare-fun bm!618062 () Bool)

(assert (=> bm!618062 (= call!618067 (isEmpty!38417 s!2326))))

(declare-fun b!6801881 () Bool)

(assert (=> b!6801881 (= e!4104857 e!4104861)))

(declare-fun c!1264843 () Bool)

(assert (=> b!6801881 (= c!1264843 ((_ is EmptyLang!16621) r!7292))))

(declare-fun b!6801882 () Bool)

(assert (=> b!6801882 (= e!4104859 (matchR!8804 (derivativeStep!5285 r!7292 (head!13652 s!2326)) (tail!12737 s!2326)))))

(declare-fun b!6801883 () Bool)

(assert (=> b!6801883 (= e!4104857 (= lt!2448206 call!618067))))

(declare-fun b!6801884 () Bool)

(assert (=> b!6801884 (= e!4104859 (nullable!6600 r!7292))))

(declare-fun b!6801885 () Bool)

(declare-fun e!4104862 () Bool)

(assert (=> b!6801885 (= e!4104862 (= (head!13652 s!2326) (c!1264611 r!7292)))))

(declare-fun b!6801886 () Bool)

(assert (=> b!6801886 (= e!4104861 (not lt!2448206))))

(declare-fun b!6801887 () Bool)

(declare-fun res!2779578 () Bool)

(assert (=> b!6801887 (=> (not res!2779578) (not e!4104862))))

(assert (=> b!6801887 (= res!2779578 (isEmpty!38417 (tail!12737 s!2326)))))

(declare-fun b!6801888 () Bool)

(assert (=> b!6801888 (= e!4104860 e!4104858)))

(declare-fun res!2779582 () Bool)

(assert (=> b!6801888 (=> (not res!2779582) (not e!4104858))))

(assert (=> b!6801888 (= res!2779582 (not lt!2448206))))

(declare-fun b!6801889 () Bool)

(declare-fun res!2779577 () Bool)

(assert (=> b!6801889 (=> res!2779577 e!4104860)))

(assert (=> b!6801889 (= res!2779577 e!4104862)))

(declare-fun res!2779576 () Bool)

(assert (=> b!6801889 (=> (not res!2779576) (not e!4104862))))

(assert (=> b!6801889 (= res!2779576 lt!2448206)))

(declare-fun b!6801890 () Bool)

(declare-fun res!2779580 () Bool)

(assert (=> b!6801890 (=> (not res!2779580) (not e!4104862))))

(assert (=> b!6801890 (= res!2779580 (not call!618067))))

(assert (= (and d!2137370 c!1264842) b!6801884))

(assert (= (and d!2137370 (not c!1264842)) b!6801882))

(assert (= (and d!2137370 c!1264841) b!6801883))

(assert (= (and d!2137370 (not c!1264841)) b!6801881))

(assert (= (and b!6801881 c!1264843) b!6801886))

(assert (= (and b!6801881 (not c!1264843)) b!6801877))

(assert (= (and b!6801877 (not res!2779581)) b!6801889))

(assert (= (and b!6801889 res!2779576) b!6801890))

(assert (= (and b!6801890 res!2779580) b!6801887))

(assert (= (and b!6801887 res!2779578) b!6801885))

(assert (= (and b!6801889 (not res!2779577)) b!6801888))

(assert (= (and b!6801888 res!2779582) b!6801878))

(assert (= (and b!6801878 (not res!2779579)) b!6801879))

(assert (= (and b!6801879 (not res!2779583)) b!6801880))

(assert (= (or b!6801883 b!6801878 b!6801890) bm!618062))

(assert (=> b!6801879 m!7547550))

(assert (=> b!6801879 m!7547550))

(assert (=> b!6801879 m!7548124))

(assert (=> b!6801887 m!7547550))

(assert (=> b!6801887 m!7547550))

(assert (=> b!6801887 m!7548124))

(assert (=> b!6801885 m!7547546))

(assert (=> b!6801882 m!7547546))

(assert (=> b!6801882 m!7547546))

(declare-fun m!7548192 () Bool)

(assert (=> b!6801882 m!7548192))

(assert (=> b!6801882 m!7547550))

(assert (=> b!6801882 m!7548192))

(assert (=> b!6801882 m!7547550))

(declare-fun m!7548194 () Bool)

(assert (=> b!6801882 m!7548194))

(assert (=> d!2137370 m!7547418))

(assert (=> d!2137370 m!7547504))

(assert (=> bm!618062 m!7547418))

(assert (=> b!6801880 m!7547546))

(declare-fun m!7548196 () Bool)

(assert (=> b!6801884 m!7548196))

(assert (=> b!6801037 d!2137370))

(declare-fun d!2137372 () Bool)

(assert (=> d!2137372 (= (matchR!8804 r!7292 s!2326) (matchRSpec!3722 r!7292 s!2326))))

(declare-fun lt!2448207 () Unit!159933)

(assert (=> d!2137372 (= lt!2448207 (choose!50705 r!7292 s!2326))))

(assert (=> d!2137372 (validRegex!8357 r!7292)))

(assert (=> d!2137372 (= (mainMatchTheorem!3722 r!7292 s!2326) lt!2448207)))

(declare-fun bs!1813059 () Bool)

(assert (= bs!1813059 d!2137372))

(assert (=> bs!1813059 m!7547510))

(assert (=> bs!1813059 m!7547508))

(declare-fun m!7548198 () Bool)

(assert (=> bs!1813059 m!7548198))

(assert (=> bs!1813059 m!7547504))

(assert (=> b!6801037 d!2137372))

(declare-fun d!2137374 () Bool)

(assert (=> d!2137374 (= (flatMap!2102 lt!2448056 lambda!383593) (dynLambda!26372 lambda!383593 lt!2448030))))

(declare-fun lt!2448208 () Unit!159933)

(assert (=> d!2137374 (= lt!2448208 (choose!50688 lt!2448056 lt!2448030 lambda!383593))))

(assert (=> d!2137374 (= lt!2448056 (store ((as const (Array Context!12010 Bool)) false) lt!2448030 true))))

(assert (=> d!2137374 (= (lemmaFlatMapOnSingletonSet!1628 lt!2448056 lt!2448030 lambda!383593) lt!2448208)))

(declare-fun b_lambda!256387 () Bool)

(assert (=> (not b_lambda!256387) (not d!2137374)))

(declare-fun bs!1813060 () Bool)

(assert (= bs!1813060 d!2137374))

(assert (=> bs!1813060 m!7547450))

(declare-fun m!7548200 () Bool)

(assert (=> bs!1813060 m!7548200))

(declare-fun m!7548202 () Bool)

(assert (=> bs!1813060 m!7548202))

(assert (=> bs!1813060 m!7547464))

(assert (=> b!6801033 d!2137374))

(declare-fun d!2137376 () Bool)

(assert (=> d!2137376 (= (flatMap!2102 lt!2448055 lambda!383593) (choose!50686 lt!2448055 lambda!383593))))

(declare-fun bs!1813061 () Bool)

(assert (= bs!1813061 d!2137376))

(declare-fun m!7548204 () Bool)

(assert (=> bs!1813061 m!7548204))

(assert (=> b!6801033 d!2137376))

(declare-fun d!2137378 () Bool)

(assert (=> d!2137378 (= (flatMap!2102 lt!2448056 lambda!383593) (choose!50686 lt!2448056 lambda!383593))))

(declare-fun bs!1813062 () Bool)

(assert (= bs!1813062 d!2137378))

(declare-fun m!7548206 () Bool)

(assert (=> bs!1813062 m!7548206))

(assert (=> b!6801033 d!2137378))

(declare-fun d!2137380 () Bool)

(assert (=> d!2137380 (= (flatMap!2102 lt!2448055 lambda!383593) (dynLambda!26372 lambda!383593 lt!2448042))))

(declare-fun lt!2448209 () Unit!159933)

(assert (=> d!2137380 (= lt!2448209 (choose!50688 lt!2448055 lt!2448042 lambda!383593))))

(assert (=> d!2137380 (= lt!2448055 (store ((as const (Array Context!12010 Bool)) false) lt!2448042 true))))

(assert (=> d!2137380 (= (lemmaFlatMapOnSingletonSet!1628 lt!2448055 lt!2448042 lambda!383593) lt!2448209)))

(declare-fun b_lambda!256389 () Bool)

(assert (=> (not b_lambda!256389) (not d!2137380)))

(declare-fun bs!1813063 () Bool)

(assert (= bs!1813063 d!2137380))

(assert (=> bs!1813063 m!7547466))

(declare-fun m!7548208 () Bool)

(assert (=> bs!1813063 m!7548208))

(declare-fun m!7548210 () Bool)

(assert (=> bs!1813063 m!7548210))

(assert (=> bs!1813063 m!7547460))

(assert (=> b!6801033 d!2137380))

(declare-fun bs!1813064 () Bool)

(declare-fun d!2137382 () Bool)

(assert (= bs!1813064 (and d!2137382 b!6801053)))

(declare-fun lambda!383686 () Int)

(assert (=> bs!1813064 (= lambda!383686 lambda!383593)))

(declare-fun bs!1813065 () Bool)

(assert (= bs!1813065 (and d!2137382 d!2137160)))

(assert (=> bs!1813065 (= lambda!383686 lambda!383598)))

(assert (=> d!2137382 true))

(assert (=> d!2137382 (= (derivationStepZipper!2565 lt!2448055 (h!72488 s!2326)) (flatMap!2102 lt!2448055 lambda!383686))))

(declare-fun bs!1813066 () Bool)

(assert (= bs!1813066 d!2137382))

(declare-fun m!7548212 () Bool)

(assert (=> bs!1813066 m!7548212))

(assert (=> b!6801033 d!2137382))

(declare-fun b!6801891 () Bool)

(declare-fun e!4104864 () (InoxSet Context!12010))

(declare-fun call!618068 () (InoxSet Context!12010))

(assert (=> b!6801891 (= e!4104864 ((_ map or) call!618068 (derivationStepZipperUp!1775 (Context!12011 (t!379893 (exprs!6505 lt!2448030))) (h!72488 s!2326))))))

(declare-fun b!6801892 () Bool)

(declare-fun e!4104863 () (InoxSet Context!12010))

(assert (=> b!6801892 (= e!4104863 call!618068)))

(declare-fun bm!618063 () Bool)

(assert (=> bm!618063 (= call!618068 (derivationStepZipperDown!1849 (h!72486 (exprs!6505 lt!2448030)) (Context!12011 (t!379893 (exprs!6505 lt!2448030))) (h!72488 s!2326)))))

(declare-fun b!6801893 () Bool)

(assert (=> b!6801893 (= e!4104864 e!4104863)))

(declare-fun c!1264844 () Bool)

(assert (=> b!6801893 (= c!1264844 ((_ is Cons!66038) (exprs!6505 lt!2448030)))))

(declare-fun d!2137384 () Bool)

(declare-fun c!1264845 () Bool)

(declare-fun e!4104865 () Bool)

(assert (=> d!2137384 (= c!1264845 e!4104865)))

(declare-fun res!2779584 () Bool)

(assert (=> d!2137384 (=> (not res!2779584) (not e!4104865))))

(assert (=> d!2137384 (= res!2779584 ((_ is Cons!66038) (exprs!6505 lt!2448030)))))

(assert (=> d!2137384 (= (derivationStepZipperUp!1775 lt!2448030 (h!72488 s!2326)) e!4104864)))

(declare-fun b!6801894 () Bool)

(assert (=> b!6801894 (= e!4104865 (nullable!6600 (h!72486 (exprs!6505 lt!2448030))))))

(declare-fun b!6801895 () Bool)

(assert (=> b!6801895 (= e!4104863 ((as const (Array Context!12010 Bool)) false))))

(assert (= (and d!2137384 res!2779584) b!6801894))

(assert (= (and d!2137384 c!1264845) b!6801891))

(assert (= (and d!2137384 (not c!1264845)) b!6801893))

(assert (= (and b!6801893 c!1264844) b!6801892))

(assert (= (and b!6801893 (not c!1264844)) b!6801895))

(assert (= (or b!6801891 b!6801892) bm!618063))

(declare-fun m!7548214 () Bool)

(assert (=> b!6801891 m!7548214))

(declare-fun m!7548216 () Bool)

(assert (=> bm!618063 m!7548216))

(declare-fun m!7548218 () Bool)

(assert (=> b!6801894 m!7548218))

(assert (=> b!6801033 d!2137384))

(declare-fun call!618069 () (InoxSet Context!12010))

(declare-fun b!6801896 () Bool)

(declare-fun e!4104867 () (InoxSet Context!12010))

(assert (=> b!6801896 (= e!4104867 ((_ map or) call!618069 (derivationStepZipperUp!1775 (Context!12011 (t!379893 (exprs!6505 lt!2448042))) (h!72488 s!2326))))))

(declare-fun b!6801897 () Bool)

(declare-fun e!4104866 () (InoxSet Context!12010))

(assert (=> b!6801897 (= e!4104866 call!618069)))

(declare-fun bm!618064 () Bool)

(assert (=> bm!618064 (= call!618069 (derivationStepZipperDown!1849 (h!72486 (exprs!6505 lt!2448042)) (Context!12011 (t!379893 (exprs!6505 lt!2448042))) (h!72488 s!2326)))))

(declare-fun b!6801898 () Bool)

(assert (=> b!6801898 (= e!4104867 e!4104866)))

(declare-fun c!1264846 () Bool)

(assert (=> b!6801898 (= c!1264846 ((_ is Cons!66038) (exprs!6505 lt!2448042)))))

(declare-fun d!2137386 () Bool)

(declare-fun c!1264847 () Bool)

(declare-fun e!4104868 () Bool)

(assert (=> d!2137386 (= c!1264847 e!4104868)))

(declare-fun res!2779585 () Bool)

(assert (=> d!2137386 (=> (not res!2779585) (not e!4104868))))

(assert (=> d!2137386 (= res!2779585 ((_ is Cons!66038) (exprs!6505 lt!2448042)))))

(assert (=> d!2137386 (= (derivationStepZipperUp!1775 lt!2448042 (h!72488 s!2326)) e!4104867)))

(declare-fun b!6801899 () Bool)

(assert (=> b!6801899 (= e!4104868 (nullable!6600 (h!72486 (exprs!6505 lt!2448042))))))

(declare-fun b!6801900 () Bool)

(assert (=> b!6801900 (= e!4104866 ((as const (Array Context!12010 Bool)) false))))

(assert (= (and d!2137386 res!2779585) b!6801899))

(assert (= (and d!2137386 c!1264847) b!6801896))

(assert (= (and d!2137386 (not c!1264847)) b!6801898))

(assert (= (and b!6801898 c!1264846) b!6801897))

(assert (= (and b!6801898 (not c!1264846)) b!6801900))

(assert (= (or b!6801896 b!6801897) bm!618064))

(declare-fun m!7548220 () Bool)

(assert (=> b!6801896 m!7548220))

(declare-fun m!7548222 () Bool)

(assert (=> bm!618064 m!7548222))

(declare-fun m!7548224 () Bool)

(assert (=> b!6801899 m!7548224))

(assert (=> b!6801033 d!2137386))

(declare-fun bs!1813067 () Bool)

(declare-fun d!2137388 () Bool)

(assert (= bs!1813067 (and d!2137388 b!6801021)))

(declare-fun lambda!383687 () Int)

(assert (=> bs!1813067 (= lambda!383687 lambda!383595)))

(declare-fun bs!1813068 () Bool)

(assert (= bs!1813068 (and d!2137388 d!2137200)))

(assert (=> bs!1813068 (= lambda!383687 lambda!383612)))

(declare-fun bs!1813069 () Bool)

(assert (= bs!1813069 (and d!2137388 d!2137358)))

(assert (=> bs!1813069 (= lambda!383687 lambda!383683)))

(declare-fun bs!1813070 () Bool)

(assert (= bs!1813070 (and d!2137388 d!2137338)))

(assert (=> bs!1813070 (= lambda!383687 lambda!383674)))

(declare-fun bs!1813071 () Bool)

(assert (= bs!1813071 (and d!2137388 d!2137310)))

(assert (=> bs!1813071 (= lambda!383687 lambda!383671)))

(assert (=> d!2137388 (= (inv!84799 setElem!46621) (forall!15812 (exprs!6505 setElem!46621) lambda!383687))))

(declare-fun bs!1813072 () Bool)

(assert (= bs!1813072 d!2137388))

(declare-fun m!7548226 () Bool)

(assert (=> bs!1813072 m!7548226))

(assert (=> setNonEmpty!46621 d!2137388))

(declare-fun d!2137390 () Bool)

(declare-fun c!1264848 () Bool)

(assert (=> d!2137390 (= c!1264848 (isEmpty!38417 (_2!36899 lt!2448046)))))

(declare-fun e!4104869 () Bool)

(assert (=> d!2137390 (= (matchZipper!2607 lt!2448055 (_2!36899 lt!2448046)) e!4104869)))

(declare-fun b!6801901 () Bool)

(assert (=> b!6801901 (= e!4104869 (nullableZipper!2328 lt!2448055))))

(declare-fun b!6801902 () Bool)

(assert (=> b!6801902 (= e!4104869 (matchZipper!2607 (derivationStepZipper!2565 lt!2448055 (head!13652 (_2!36899 lt!2448046))) (tail!12737 (_2!36899 lt!2448046))))))

(assert (= (and d!2137390 c!1264848) b!6801901))

(assert (= (and d!2137390 (not c!1264848)) b!6801902))

(declare-fun m!7548228 () Bool)

(assert (=> d!2137390 m!7548228))

(declare-fun m!7548230 () Bool)

(assert (=> b!6801901 m!7548230))

(declare-fun m!7548232 () Bool)

(assert (=> b!6801902 m!7548232))

(assert (=> b!6801902 m!7548232))

(declare-fun m!7548234 () Bool)

(assert (=> b!6801902 m!7548234))

(declare-fun m!7548236 () Bool)

(assert (=> b!6801902 m!7548236))

(assert (=> b!6801902 m!7548234))

(assert (=> b!6801902 m!7548236))

(declare-fun m!7548238 () Bool)

(assert (=> b!6801902 m!7548238))

(assert (=> b!6801055 d!2137390))

(declare-fun b!6801903 () Bool)

(declare-fun c!1264849 () Bool)

(declare-fun e!4104870 () Bool)

(assert (=> b!6801903 (= c!1264849 e!4104870)))

(declare-fun res!2779586 () Bool)

(assert (=> b!6801903 (=> (not res!2779586) (not e!4104870))))

(assert (=> b!6801903 (= res!2779586 ((_ is Concat!25466) r!7292))))

(declare-fun e!4104872 () (InoxSet Context!12010))

(declare-fun e!4104871 () (InoxSet Context!12010))

(assert (=> b!6801903 (= e!4104872 e!4104871)))

(declare-fun d!2137392 () Bool)

(declare-fun c!1264850 () Bool)

(assert (=> d!2137392 (= c!1264850 (and ((_ is ElementMatch!16621) r!7292) (= (c!1264611 r!7292) (h!72488 s!2326))))))

(declare-fun e!4104875 () (InoxSet Context!12010))

(assert (=> d!2137392 (= (derivationStepZipperDown!1849 r!7292 (Context!12011 Nil!66038) (h!72488 s!2326)) e!4104875)))

(declare-fun bm!618065 () Bool)

(declare-fun call!618073 () (InoxSet Context!12010))

(declare-fun call!618070 () (InoxSet Context!12010))

(assert (=> bm!618065 (= call!618073 call!618070)))

(declare-fun b!6801904 () Bool)

(declare-fun c!1264851 () Bool)

(assert (=> b!6801904 (= c!1264851 ((_ is Star!16621) r!7292))))

(declare-fun e!4104873 () (InoxSet Context!12010))

(declare-fun e!4104874 () (InoxSet Context!12010))

(assert (=> b!6801904 (= e!4104873 e!4104874)))

(declare-fun b!6801905 () Bool)

(declare-fun call!618072 () (InoxSet Context!12010))

(assert (=> b!6801905 (= e!4104871 ((_ map or) call!618072 call!618070))))

(declare-fun b!6801906 () Bool)

(assert (=> b!6801906 (= e!4104874 ((as const (Array Context!12010 Bool)) false))))

(declare-fun call!618071 () List!66162)

(declare-fun c!1264853 () Bool)

(declare-fun bm!618066 () Bool)

(assert (=> bm!618066 (= call!618072 (derivationStepZipperDown!1849 (ite c!1264853 (regOne!33755 r!7292) (regOne!33754 r!7292)) (ite c!1264853 (Context!12011 Nil!66038) (Context!12011 call!618071)) (h!72488 s!2326)))))

(declare-fun b!6801907 () Bool)

(declare-fun call!618075 () (InoxSet Context!12010))

(assert (=> b!6801907 (= e!4104872 ((_ map or) call!618072 call!618075))))

(declare-fun b!6801908 () Bool)

(assert (=> b!6801908 (= e!4104875 e!4104872)))

(assert (=> b!6801908 (= c!1264853 ((_ is Union!16621) r!7292))))

(declare-fun bm!618067 () Bool)

(assert (=> bm!618067 (= call!618070 call!618075)))

(declare-fun b!6801909 () Bool)

(assert (=> b!6801909 (= e!4104874 call!618073)))

(declare-fun b!6801910 () Bool)

(assert (=> b!6801910 (= e!4104871 e!4104873)))

(declare-fun c!1264852 () Bool)

(assert (=> b!6801910 (= c!1264852 ((_ is Concat!25466) r!7292))))

(declare-fun b!6801911 () Bool)

(assert (=> b!6801911 (= e!4104875 (store ((as const (Array Context!12010 Bool)) false) (Context!12011 Nil!66038) true))))

(declare-fun bm!618068 () Bool)

(declare-fun call!618074 () List!66162)

(assert (=> bm!618068 (= call!618074 call!618071)))

(declare-fun bm!618069 () Bool)

(assert (=> bm!618069 (= call!618075 (derivationStepZipperDown!1849 (ite c!1264853 (regTwo!33755 r!7292) (ite c!1264849 (regTwo!33754 r!7292) (ite c!1264852 (regOne!33754 r!7292) (reg!16950 r!7292)))) (ite (or c!1264853 c!1264849) (Context!12011 Nil!66038) (Context!12011 call!618074)) (h!72488 s!2326)))))

(declare-fun b!6801912 () Bool)

(assert (=> b!6801912 (= e!4104870 (nullable!6600 (regOne!33754 r!7292)))))

(declare-fun bm!618070 () Bool)

(assert (=> bm!618070 (= call!618071 ($colon$colon!2430 (exprs!6505 (Context!12011 Nil!66038)) (ite (or c!1264849 c!1264852) (regTwo!33754 r!7292) r!7292)))))

(declare-fun b!6801913 () Bool)

(assert (=> b!6801913 (= e!4104873 call!618073)))

(assert (= (and d!2137392 c!1264850) b!6801911))

(assert (= (and d!2137392 (not c!1264850)) b!6801908))

(assert (= (and b!6801908 c!1264853) b!6801907))

(assert (= (and b!6801908 (not c!1264853)) b!6801903))

(assert (= (and b!6801903 res!2779586) b!6801912))

(assert (= (and b!6801903 c!1264849) b!6801905))

(assert (= (and b!6801903 (not c!1264849)) b!6801910))

(assert (= (and b!6801910 c!1264852) b!6801913))

(assert (= (and b!6801910 (not c!1264852)) b!6801904))

(assert (= (and b!6801904 c!1264851) b!6801909))

(assert (= (and b!6801904 (not c!1264851)) b!6801906))

(assert (= (or b!6801913 b!6801909) bm!618068))

(assert (= (or b!6801913 b!6801909) bm!618065))

(assert (= (or b!6801905 bm!618068) bm!618070))

(assert (= (or b!6801905 bm!618065) bm!618067))

(assert (= (or b!6801907 bm!618067) bm!618069))

(assert (= (or b!6801907 b!6801905) bm!618066))

(declare-fun m!7548240 () Bool)

(assert (=> b!6801911 m!7548240))

(declare-fun m!7548242 () Bool)

(assert (=> b!6801912 m!7548242))

(declare-fun m!7548244 () Bool)

(assert (=> bm!618069 m!7548244))

(declare-fun m!7548246 () Bool)

(assert (=> bm!618066 m!7548246))

(declare-fun m!7548248 () Bool)

(assert (=> bm!618070 m!7548248))

(assert (=> b!6801031 d!2137392))

(declare-fun b!6801914 () Bool)

(declare-fun call!618076 () (InoxSet Context!12010))

(declare-fun e!4104877 () (InoxSet Context!12010))

(assert (=> b!6801914 (= e!4104877 ((_ map or) call!618076 (derivationStepZipperUp!1775 (Context!12011 (t!379893 (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038))))) (h!72488 s!2326))))))

(declare-fun b!6801915 () Bool)

(declare-fun e!4104876 () (InoxSet Context!12010))

(assert (=> b!6801915 (= e!4104876 call!618076)))

(declare-fun bm!618071 () Bool)

(assert (=> bm!618071 (= call!618076 (derivationStepZipperDown!1849 (h!72486 (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038)))) (Context!12011 (t!379893 (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038))))) (h!72488 s!2326)))))

(declare-fun b!6801916 () Bool)

(assert (=> b!6801916 (= e!4104877 e!4104876)))

(declare-fun c!1264854 () Bool)

(assert (=> b!6801916 (= c!1264854 ((_ is Cons!66038) (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038)))))))

(declare-fun d!2137394 () Bool)

(declare-fun c!1264855 () Bool)

(declare-fun e!4104878 () Bool)

(assert (=> d!2137394 (= c!1264855 e!4104878)))

(declare-fun res!2779587 () Bool)

(assert (=> d!2137394 (=> (not res!2779587) (not e!4104878))))

(assert (=> d!2137394 (= res!2779587 ((_ is Cons!66038) (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038)))))))

(assert (=> d!2137394 (= (derivationStepZipperUp!1775 (Context!12011 (Cons!66038 r!7292 Nil!66038)) (h!72488 s!2326)) e!4104877)))

(declare-fun b!6801917 () Bool)

(assert (=> b!6801917 (= e!4104878 (nullable!6600 (h!72486 (exprs!6505 (Context!12011 (Cons!66038 r!7292 Nil!66038))))))))

(declare-fun b!6801918 () Bool)

(assert (=> b!6801918 (= e!4104876 ((as const (Array Context!12010 Bool)) false))))

(assert (= (and d!2137394 res!2779587) b!6801917))

(assert (= (and d!2137394 c!1264855) b!6801914))

(assert (= (and d!2137394 (not c!1264855)) b!6801916))

(assert (= (and b!6801916 c!1264854) b!6801915))

(assert (= (and b!6801916 (not c!1264854)) b!6801918))

(assert (= (or b!6801914 b!6801915) bm!618071))

(declare-fun m!7548250 () Bool)

(assert (=> b!6801914 m!7548250))

(declare-fun m!7548252 () Bool)

(assert (=> bm!618071 m!7548252))

(declare-fun m!7548254 () Bool)

(assert (=> b!6801917 m!7548254))

(assert (=> b!6801031 d!2137394))

(declare-fun bs!1813073 () Bool)

(declare-fun d!2137396 () Bool)

(assert (= bs!1813073 (and d!2137396 b!6801053)))

(declare-fun lambda!383688 () Int)

(assert (=> bs!1813073 (= lambda!383688 lambda!383593)))

(declare-fun bs!1813074 () Bool)

(assert (= bs!1813074 (and d!2137396 d!2137160)))

(assert (=> bs!1813074 (= lambda!383688 lambda!383598)))

(declare-fun bs!1813075 () Bool)

(assert (= bs!1813075 (and d!2137396 d!2137382)))

(assert (=> bs!1813075 (= lambda!383688 lambda!383686)))

(assert (=> d!2137396 true))

(assert (=> d!2137396 (= (derivationStepZipper!2565 z!1189 (h!72488 s!2326)) (flatMap!2102 z!1189 lambda!383688))))

(declare-fun bs!1813076 () Bool)

(assert (= bs!1813076 d!2137396))

(declare-fun m!7548256 () Bool)

(assert (=> bs!1813076 m!7548256))

(assert (=> b!6801031 d!2137396))

(declare-fun d!2137398 () Bool)

(assert (=> d!2137398 (= (isEmpty!38418 (t!379894 zl!343)) ((_ is Nil!66039) (t!379894 zl!343)))))

(assert (=> b!6801052 d!2137398))

(declare-fun d!2137400 () Bool)

(assert (=> d!2137400 (= (flatMap!2102 z!1189 lambda!383593) (choose!50686 z!1189 lambda!383593))))

(declare-fun bs!1813077 () Bool)

(assert (= bs!1813077 d!2137400))

(declare-fun m!7548258 () Bool)

(assert (=> bs!1813077 m!7548258))

(assert (=> b!6801053 d!2137400))

(declare-fun call!618077 () (InoxSet Context!12010))

(declare-fun b!6801919 () Bool)

(declare-fun e!4104880 () (InoxSet Context!12010))

(assert (=> b!6801919 (= e!4104880 ((_ map or) call!618077 (derivationStepZipperUp!1775 (Context!12011 (t!379893 (exprs!6505 (h!72487 zl!343)))) (h!72488 s!2326))))))

(declare-fun b!6801920 () Bool)

(declare-fun e!4104879 () (InoxSet Context!12010))

(assert (=> b!6801920 (= e!4104879 call!618077)))

(declare-fun bm!618072 () Bool)

(assert (=> bm!618072 (= call!618077 (derivationStepZipperDown!1849 (h!72486 (exprs!6505 (h!72487 zl!343))) (Context!12011 (t!379893 (exprs!6505 (h!72487 zl!343)))) (h!72488 s!2326)))))

(declare-fun b!6801921 () Bool)

(assert (=> b!6801921 (= e!4104880 e!4104879)))

(declare-fun c!1264856 () Bool)

(assert (=> b!6801921 (= c!1264856 ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343))))))

(declare-fun d!2137402 () Bool)

(declare-fun c!1264857 () Bool)

(declare-fun e!4104881 () Bool)

(assert (=> d!2137402 (= c!1264857 e!4104881)))

(declare-fun res!2779588 () Bool)

(assert (=> d!2137402 (=> (not res!2779588) (not e!4104881))))

(assert (=> d!2137402 (= res!2779588 ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343))))))

(assert (=> d!2137402 (= (derivationStepZipperUp!1775 (h!72487 zl!343) (h!72488 s!2326)) e!4104880)))

(declare-fun b!6801922 () Bool)

(assert (=> b!6801922 (= e!4104881 (nullable!6600 (h!72486 (exprs!6505 (h!72487 zl!343)))))))

(declare-fun b!6801923 () Bool)

(assert (=> b!6801923 (= e!4104879 ((as const (Array Context!12010 Bool)) false))))

(assert (= (and d!2137402 res!2779588) b!6801922))

(assert (= (and d!2137402 c!1264857) b!6801919))

(assert (= (and d!2137402 (not c!1264857)) b!6801921))

(assert (= (and b!6801921 c!1264856) b!6801920))

(assert (= (and b!6801921 (not c!1264856)) b!6801923))

(assert (= (or b!6801919 b!6801920) bm!618072))

(declare-fun m!7548260 () Bool)

(assert (=> b!6801919 m!7548260))

(declare-fun m!7548262 () Bool)

(assert (=> bm!618072 m!7548262))

(declare-fun m!7548264 () Bool)

(assert (=> b!6801922 m!7548264))

(assert (=> b!6801053 d!2137402))

(declare-fun d!2137404 () Bool)

(assert (=> d!2137404 (= (flatMap!2102 z!1189 lambda!383593) (dynLambda!26372 lambda!383593 (h!72487 zl!343)))))

(declare-fun lt!2448210 () Unit!159933)

(assert (=> d!2137404 (= lt!2448210 (choose!50688 z!1189 (h!72487 zl!343) lambda!383593))))

(assert (=> d!2137404 (= z!1189 (store ((as const (Array Context!12010 Bool)) false) (h!72487 zl!343) true))))

(assert (=> d!2137404 (= (lemmaFlatMapOnSingletonSet!1628 z!1189 (h!72487 zl!343) lambda!383593) lt!2448210)))

(declare-fun b_lambda!256391 () Bool)

(assert (=> (not b_lambda!256391) (not d!2137404)))

(declare-fun bs!1813078 () Bool)

(assert (= bs!1813078 d!2137404))

(assert (=> bs!1813078 m!7547514))

(declare-fun m!7548266 () Bool)

(assert (=> bs!1813078 m!7548266))

(declare-fun m!7548268 () Bool)

(assert (=> bs!1813078 m!7548268))

(declare-fun m!7548270 () Bool)

(assert (=> bs!1813078 m!7548270))

(assert (=> b!6801053 d!2137404))

(declare-fun bs!1813079 () Bool)

(declare-fun d!2137406 () Bool)

(assert (= bs!1813079 (and d!2137406 d!2137200)))

(declare-fun lambda!383689 () Int)

(assert (=> bs!1813079 (= lambda!383689 lambda!383612)))

(declare-fun bs!1813080 () Bool)

(assert (= bs!1813080 (and d!2137406 d!2137358)))

(assert (=> bs!1813080 (= lambda!383689 lambda!383683)))

(declare-fun bs!1813081 () Bool)

(assert (= bs!1813081 (and d!2137406 d!2137338)))

(assert (=> bs!1813081 (= lambda!383689 lambda!383674)))

(declare-fun bs!1813082 () Bool)

(assert (= bs!1813082 (and d!2137406 d!2137310)))

(assert (=> bs!1813082 (= lambda!383689 lambda!383671)))

(declare-fun bs!1813083 () Bool)

(assert (= bs!1813083 (and d!2137406 d!2137388)))

(assert (=> bs!1813083 (= lambda!383689 lambda!383687)))

(declare-fun bs!1813084 () Bool)

(assert (= bs!1813084 (and d!2137406 b!6801021)))

(assert (=> bs!1813084 (= lambda!383689 lambda!383595)))

(assert (=> d!2137406 (= (inv!84799 lt!2448030) (forall!15812 (exprs!6505 lt!2448030) lambda!383689))))

(declare-fun bs!1813085 () Bool)

(assert (= bs!1813085 d!2137406))

(declare-fun m!7548272 () Bool)

(assert (=> bs!1813085 m!7548272))

(assert (=> b!6801032 d!2137406))

(declare-fun d!2137408 () Bool)

(declare-fun lt!2448211 () Regex!16621)

(assert (=> d!2137408 (validRegex!8357 lt!2448211)))

(assert (=> d!2137408 (= lt!2448211 (generalisedUnion!2465 (unfocusZipperList!2042 (Cons!66039 lt!2448030 Nil!66039))))))

(assert (=> d!2137408 (= (unfocusZipper!2363 (Cons!66039 lt!2448030 Nil!66039)) lt!2448211)))

(declare-fun bs!1813086 () Bool)

(assert (= bs!1813086 d!2137408))

(declare-fun m!7548274 () Bool)

(assert (=> bs!1813086 m!7548274))

(declare-fun m!7548276 () Bool)

(assert (=> bs!1813086 m!7548276))

(assert (=> bs!1813086 m!7548276))

(declare-fun m!7548278 () Bool)

(assert (=> bs!1813086 m!7548278))

(assert (=> b!6801049 d!2137408))

(declare-fun b!6801931 () Bool)

(declare-fun e!4104887 () Bool)

(declare-fun tp!1862178 () Bool)

(assert (=> b!6801931 (= e!4104887 tp!1862178)))

(declare-fun e!4104886 () Bool)

(declare-fun b!6801930 () Bool)

(declare-fun tp!1862179 () Bool)

(assert (=> b!6801930 (= e!4104886 (and (inv!84799 (h!72487 (t!379894 zl!343))) e!4104887 tp!1862179))))

(assert (=> b!6801048 (= tp!1862106 e!4104886)))

(assert (= b!6801930 b!6801931))

(assert (= (and b!6801048 ((_ is Cons!66039) (t!379894 zl!343))) b!6801930))

(declare-fun m!7548280 () Bool)

(assert (=> b!6801930 m!7548280))

(declare-fun condSetEmpty!46627 () Bool)

(assert (=> setNonEmpty!46621 (= condSetEmpty!46627 (= setRest!46621 ((as const (Array Context!12010 Bool)) false)))))

(declare-fun setRes!46627 () Bool)

(assert (=> setNonEmpty!46621 (= tp!1862107 setRes!46627)))

(declare-fun setIsEmpty!46627 () Bool)

(assert (=> setIsEmpty!46627 setRes!46627))

(declare-fun e!4104890 () Bool)

(declare-fun setNonEmpty!46627 () Bool)

(declare-fun tp!1862184 () Bool)

(declare-fun setElem!46627 () Context!12010)

(assert (=> setNonEmpty!46627 (= setRes!46627 (and tp!1862184 (inv!84799 setElem!46627) e!4104890))))

(declare-fun setRest!46627 () (InoxSet Context!12010))

(assert (=> setNonEmpty!46627 (= setRest!46621 ((_ map or) (store ((as const (Array Context!12010 Bool)) false) setElem!46627 true) setRest!46627))))

(declare-fun b!6801936 () Bool)

(declare-fun tp!1862185 () Bool)

(assert (=> b!6801936 (= e!4104890 tp!1862185)))

(assert (= (and setNonEmpty!46621 condSetEmpty!46627) setIsEmpty!46627))

(assert (= (and setNonEmpty!46621 (not condSetEmpty!46627)) setNonEmpty!46627))

(assert (= setNonEmpty!46627 b!6801936))

(declare-fun m!7548282 () Bool)

(assert (=> setNonEmpty!46627 m!7548282))

(declare-fun b!6801948 () Bool)

(declare-fun e!4104893 () Bool)

(declare-fun tp!1862200 () Bool)

(declare-fun tp!1862197 () Bool)

(assert (=> b!6801948 (= e!4104893 (and tp!1862200 tp!1862197))))

(declare-fun b!6801947 () Bool)

(assert (=> b!6801947 (= e!4104893 tp_is_empty!42495)))

(declare-fun b!6801949 () Bool)

(declare-fun tp!1862198 () Bool)

(assert (=> b!6801949 (= e!4104893 tp!1862198)))

(declare-fun b!6801950 () Bool)

(declare-fun tp!1862196 () Bool)

(declare-fun tp!1862199 () Bool)

(assert (=> b!6801950 (= e!4104893 (and tp!1862196 tp!1862199))))

(assert (=> b!6801024 (= tp!1862111 e!4104893)))

(assert (= (and b!6801024 ((_ is ElementMatch!16621) (regOne!33755 r!7292))) b!6801947))

(assert (= (and b!6801024 ((_ is Concat!25466) (regOne!33755 r!7292))) b!6801948))

(assert (= (and b!6801024 ((_ is Star!16621) (regOne!33755 r!7292))) b!6801949))

(assert (= (and b!6801024 ((_ is Union!16621) (regOne!33755 r!7292))) b!6801950))

(declare-fun b!6801952 () Bool)

(declare-fun e!4104894 () Bool)

(declare-fun tp!1862205 () Bool)

(declare-fun tp!1862202 () Bool)

(assert (=> b!6801952 (= e!4104894 (and tp!1862205 tp!1862202))))

(declare-fun b!6801951 () Bool)

(assert (=> b!6801951 (= e!4104894 tp_is_empty!42495)))

(declare-fun b!6801953 () Bool)

(declare-fun tp!1862203 () Bool)

(assert (=> b!6801953 (= e!4104894 tp!1862203)))

(declare-fun b!6801954 () Bool)

(declare-fun tp!1862201 () Bool)

(declare-fun tp!1862204 () Bool)

(assert (=> b!6801954 (= e!4104894 (and tp!1862201 tp!1862204))))

(assert (=> b!6801024 (= tp!1862108 e!4104894)))

(assert (= (and b!6801024 ((_ is ElementMatch!16621) (regTwo!33755 r!7292))) b!6801951))

(assert (= (and b!6801024 ((_ is Concat!25466) (regTwo!33755 r!7292))) b!6801952))

(assert (= (and b!6801024 ((_ is Star!16621) (regTwo!33755 r!7292))) b!6801953))

(assert (= (and b!6801024 ((_ is Union!16621) (regTwo!33755 r!7292))) b!6801954))

(declare-fun b!6801956 () Bool)

(declare-fun e!4104895 () Bool)

(declare-fun tp!1862210 () Bool)

(declare-fun tp!1862207 () Bool)

(assert (=> b!6801956 (= e!4104895 (and tp!1862210 tp!1862207))))

(declare-fun b!6801955 () Bool)

(assert (=> b!6801955 (= e!4104895 tp_is_empty!42495)))

(declare-fun b!6801957 () Bool)

(declare-fun tp!1862208 () Bool)

(assert (=> b!6801957 (= e!4104895 tp!1862208)))

(declare-fun b!6801958 () Bool)

(declare-fun tp!1862206 () Bool)

(declare-fun tp!1862209 () Bool)

(assert (=> b!6801958 (= e!4104895 (and tp!1862206 tp!1862209))))

(assert (=> b!6801054 (= tp!1862114 e!4104895)))

(assert (= (and b!6801054 ((_ is ElementMatch!16621) (regOne!33754 r!7292))) b!6801955))

(assert (= (and b!6801054 ((_ is Concat!25466) (regOne!33754 r!7292))) b!6801956))

(assert (= (and b!6801054 ((_ is Star!16621) (regOne!33754 r!7292))) b!6801957))

(assert (= (and b!6801054 ((_ is Union!16621) (regOne!33754 r!7292))) b!6801958))

(declare-fun b!6801960 () Bool)

(declare-fun e!4104896 () Bool)

(declare-fun tp!1862215 () Bool)

(declare-fun tp!1862212 () Bool)

(assert (=> b!6801960 (= e!4104896 (and tp!1862215 tp!1862212))))

(declare-fun b!6801959 () Bool)

(assert (=> b!6801959 (= e!4104896 tp_is_empty!42495)))

(declare-fun b!6801961 () Bool)

(declare-fun tp!1862213 () Bool)

(assert (=> b!6801961 (= e!4104896 tp!1862213)))

(declare-fun b!6801962 () Bool)

(declare-fun tp!1862211 () Bool)

(declare-fun tp!1862214 () Bool)

(assert (=> b!6801962 (= e!4104896 (and tp!1862211 tp!1862214))))

(assert (=> b!6801054 (= tp!1862110 e!4104896)))

(assert (= (and b!6801054 ((_ is ElementMatch!16621) (regTwo!33754 r!7292))) b!6801959))

(assert (= (and b!6801054 ((_ is Concat!25466) (regTwo!33754 r!7292))) b!6801960))

(assert (= (and b!6801054 ((_ is Star!16621) (regTwo!33754 r!7292))) b!6801961))

(assert (= (and b!6801054 ((_ is Union!16621) (regTwo!33754 r!7292))) b!6801962))

(declare-fun b!6801967 () Bool)

(declare-fun e!4104899 () Bool)

(declare-fun tp!1862220 () Bool)

(declare-fun tp!1862221 () Bool)

(assert (=> b!6801967 (= e!4104899 (and tp!1862220 tp!1862221))))

(assert (=> b!6801030 (= tp!1862109 e!4104899)))

(assert (= (and b!6801030 ((_ is Cons!66038) (exprs!6505 setElem!46621))) b!6801967))

(declare-fun b!6801972 () Bool)

(declare-fun e!4104902 () Bool)

(declare-fun tp!1862224 () Bool)

(assert (=> b!6801972 (= e!4104902 (and tp_is_empty!42495 tp!1862224))))

(assert (=> b!6801045 (= tp!1862113 e!4104902)))

(assert (= (and b!6801045 ((_ is Cons!66040) (t!379895 s!2326))) b!6801972))

(declare-fun b!6801973 () Bool)

(declare-fun e!4104903 () Bool)

(declare-fun tp!1862225 () Bool)

(declare-fun tp!1862226 () Bool)

(assert (=> b!6801973 (= e!4104903 (and tp!1862225 tp!1862226))))

(assert (=> b!6801034 (= tp!1862115 e!4104903)))

(assert (= (and b!6801034 ((_ is Cons!66038) (exprs!6505 (h!72487 zl!343)))) b!6801973))

(declare-fun b!6801975 () Bool)

(declare-fun e!4104904 () Bool)

(declare-fun tp!1862231 () Bool)

(declare-fun tp!1862228 () Bool)

(assert (=> b!6801975 (= e!4104904 (and tp!1862231 tp!1862228))))

(declare-fun b!6801974 () Bool)

(assert (=> b!6801974 (= e!4104904 tp_is_empty!42495)))

(declare-fun b!6801976 () Bool)

(declare-fun tp!1862229 () Bool)

(assert (=> b!6801976 (= e!4104904 tp!1862229)))

(declare-fun b!6801977 () Bool)

(declare-fun tp!1862227 () Bool)

(declare-fun tp!1862230 () Bool)

(assert (=> b!6801977 (= e!4104904 (and tp!1862227 tp!1862230))))

(assert (=> b!6801035 (= tp!1862112 e!4104904)))

(assert (= (and b!6801035 ((_ is ElementMatch!16621) (reg!16950 r!7292))) b!6801974))

(assert (= (and b!6801035 ((_ is Concat!25466) (reg!16950 r!7292))) b!6801975))

(assert (= (and b!6801035 ((_ is Star!16621) (reg!16950 r!7292))) b!6801976))

(assert (= (and b!6801035 ((_ is Union!16621) (reg!16950 r!7292))) b!6801977))

(declare-fun b_lambda!256393 () Bool)

(assert (= b_lambda!256387 (or b!6801053 b_lambda!256393)))

(declare-fun bs!1813087 () Bool)

(declare-fun d!2137410 () Bool)

(assert (= bs!1813087 (and d!2137410 b!6801053)))

(assert (=> bs!1813087 (= (dynLambda!26372 lambda!383593 lt!2448030) (derivationStepZipperUp!1775 lt!2448030 (h!72488 s!2326)))))

(assert (=> bs!1813087 m!7547456))

(assert (=> d!2137374 d!2137410))

(declare-fun b_lambda!256395 () Bool)

(assert (= b_lambda!256389 (or b!6801053 b_lambda!256395)))

(declare-fun bs!1813088 () Bool)

(declare-fun d!2137412 () Bool)

(assert (= bs!1813088 (and d!2137412 b!6801053)))

(assert (=> bs!1813088 (= (dynLambda!26372 lambda!383593 lt!2448042) (derivationStepZipperUp!1775 lt!2448042 (h!72488 s!2326)))))

(assert (=> bs!1813088 m!7547458))

(assert (=> d!2137380 d!2137412))

(declare-fun b_lambda!256397 () Bool)

(assert (= b_lambda!256369 (or b!6801021 b_lambda!256397)))

(declare-fun bs!1813089 () Bool)

(declare-fun d!2137414 () Bool)

(assert (= bs!1813089 (and d!2137414 b!6801021)))

(declare-fun lt!2448212 () Unit!159933)

(assert (=> bs!1813089 (= lt!2448212 (lemmaConcatPreservesForall!450 (exprs!6505 lt!2448030) lt!2448028 lambda!383595))))

(assert (=> bs!1813089 (= (dynLambda!26373 lambda!383594 lt!2448030) (Context!12011 (++!14788 (exprs!6505 lt!2448030) lt!2448028)))))

(declare-fun m!7548284 () Bool)

(assert (=> bs!1813089 m!7548284))

(declare-fun m!7548286 () Bool)

(assert (=> bs!1813089 m!7548286))

(assert (=> d!2137304 d!2137414))

(declare-fun b_lambda!256399 () Bool)

(assert (= b_lambda!256363 (or b!6801053 b_lambda!256399)))

(declare-fun bs!1813090 () Bool)

(declare-fun d!2137416 () Bool)

(assert (= bs!1813090 (and d!2137416 b!6801053)))

(assert (=> bs!1813090 (= (dynLambda!26372 lambda!383593 lt!2448035) (derivationStepZipperUp!1775 lt!2448035 (h!72488 s!2326)))))

(assert (=> bs!1813090 m!7547442))

(assert (=> d!2137190 d!2137416))

(declare-fun b_lambda!256401 () Bool)

(assert (= b_lambda!256391 (or b!6801053 b_lambda!256401)))

(declare-fun bs!1813091 () Bool)

(declare-fun d!2137418 () Bool)

(assert (= bs!1813091 (and d!2137418 b!6801053)))

(assert (=> bs!1813091 (= (dynLambda!26372 lambda!383593 (h!72487 zl!343)) (derivationStepZipperUp!1775 (h!72487 zl!343) (h!72488 s!2326)))))

(assert (=> bs!1813091 m!7547516))

(assert (=> d!2137404 d!2137418))

(check-sat (not b!6801757) (not b!6801071) (not d!2137158) (not b!6801465) (not b!6801912) (not bm!618009) (not b!6801976) (not d!2137190) (not b!6801652) (not b!6801919) (not b!6801962) (not bm!618061) (not b!6801902) (not b_lambda!256399) (not b!6801958) (not bm!618062) (not bs!1813087) (not d!2137258) (not bm!618005) (not b!6801922) (not b!6801875) (not b!6801885) tp_is_empty!42495 (not b!6801949) (not b!6801068) (not bm!618066) (not b!6801824) (not b!6801420) (not b!6801424) (not d!2137252) (not b!6801797) (not d!2137294) (not d!2137296) (not b!6801514) (not b!6801891) (not bs!1813088) (not b!6801896) (not b!6801972) (not d!2137338) (not d!2137404) (not d!2137310) (not d!2137184) (not b!6801879) (not b!6801865) (not b!6801948) (not b!6801798) (not bm!618046) (not d!2137304) (not b!6801956) (not d!2137236) (not d!2137362) (not d!2137200) (not b!6801914) (not b!6801931) (not d!2137356) (not b!6801248) (not b!6801953) (not d!2137234) (not d!2137380) (not bm!618060) (not bs!1813089) (not b!6801832) (not b!6801833) (not b!6801917) (not b!6801069) (not b_lambda!256395) (not b!6801828) (not b!6801419) (not b!6801560) (not b!6801649) (not d!2137210) (not b!6801800) (not b!6801960) (not b!6801862) (not b!6801070) (not b!6801975) (not b_lambda!256393) (not bm!618047) (not b!6801699) (not b!6801884) (not d!2137364) (not b!6801516) (not d!2137166) (not d!2137376) (not d!2137282) (not bm!618057) (not b!6801515) (not b!6801279) (not b!6801650) (not b!6801521) (not d!2137224) (not b!6801426) (not d!2137354) (not b!6801645) (not d!2137372) (not b!6801872) (not d!2137366) (not bm!618059) (not d!2137374) (not d!2137160) (not b!6801517) (not d!2137378) (not bm!618050) (not b!6801952) (not d!2137302) (not b!6801894) (not b!6801961) (not b!6801831) (not b!6801423) (not b!6801466) (not b!6801520) (not b!6801795) (not b!6801792) (not b!6801880) (not d!2137396) (not b!6801861) (not b!6801251) (not b!6801653) (not bm!618008) (not bm!618071) (not b!6801854) (not d!2137268) (not b!6801278) (not d!2137400) (not d!2137406) (not d!2137196) (not b!6801882) (not d!2137262) (not b!6801793) (not d!2137214) (not bm!618063) (not b!6801760) (not bs!1813090) (not bm!618072) (not d!2137388) (not b!6801957) (not b!6801422) (not d!2137156) (not b!6801644) (not bm!618070) (not bm!618064) (not d!2137266) (not d!2137230) (not b_lambda!256397) (not b!6801829) (not b!6801977) (not bs!1813091) (not b!6801936) (not b!6801899) (not d!2137370) (not b!6801954) (not d!2137382) (not b!6801197) (not b!6801967) (not d!2137408) (not b!6801648) (not bm!618018) (not b!6801901) (not b!6801930) (not b_lambda!256401) (not b!6801559) (not bm!618069) (not b!6801827) (not d!2137164) (not d!2137306) (not d!2137358) (not b!6801950) (not d!2137390) (not setNonEmpty!46627) (not b!6801973) (not b!6801887))
(check-sat)
