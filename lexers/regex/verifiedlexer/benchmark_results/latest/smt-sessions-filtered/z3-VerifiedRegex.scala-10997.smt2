; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!570266 () Bool)

(assert start!570266)

(declare-fun b!5436487 () Bool)

(assert (=> b!5436487 true))

(assert (=> b!5436487 true))

(declare-fun lambda!285740 () Int)

(declare-fun lambda!285739 () Int)

(assert (=> b!5436487 (not (= lambda!285740 lambda!285739))))

(assert (=> b!5436487 true))

(assert (=> b!5436487 true))

(declare-fun b!5436519 () Bool)

(assert (=> b!5436519 true))

(declare-fun b!5436524 () Bool)

(assert (=> b!5436524 true))

(declare-fun bs!1254894 () Bool)

(assert (= bs!1254894 (and b!5436524 b!5436487)))

(declare-datatypes ((C!30752 0))(
  ( (C!30753 (val!25078 Int)) )
))
(declare-datatypes ((Regex!15241 0))(
  ( (ElementMatch!15241 (c!948673 C!30752)) (Concat!24086 (regOne!30994 Regex!15241) (regTwo!30994 Regex!15241)) (EmptyExpr!15241) (Star!15241 (reg!15570 Regex!15241)) (EmptyLang!15241) (Union!15241 (regOne!30995 Regex!15241) (regTwo!30995 Regex!15241)) )
))
(declare-fun r!7292 () Regex!15241)

(declare-fun lt!2217207 () Regex!15241)

(declare-fun lambda!285744 () Int)

(assert (=> bs!1254894 (= (= lt!2217207 (regOne!30994 r!7292)) (= lambda!285744 lambda!285739))))

(assert (=> bs!1254894 (not (= lambda!285744 lambda!285740))))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(declare-fun lambda!285745 () Int)

(assert (=> bs!1254894 (not (= lambda!285745 lambda!285739))))

(assert (=> bs!1254894 (= (= lt!2217207 (regOne!30994 r!7292)) (= lambda!285745 lambda!285740))))

(assert (=> b!5436524 (not (= lambda!285745 lambda!285744))))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(declare-datatypes ((List!62022 0))(
  ( (Nil!61898) (Cons!61898 (h!68346 C!30752) (t!375247 List!62022)) )
))
(declare-fun s!2326 () List!62022)

(declare-fun lambda!285746 () Int)

(declare-fun lt!2217162 () Regex!15241)

(declare-datatypes ((tuple2!64880 0))(
  ( (tuple2!64881 (_1!35743 List!62022) (_2!35743 List!62022)) )
))
(declare-fun lt!2217223 () tuple2!64880)

(assert (=> bs!1254894 (= (and (= (_1!35743 lt!2217223) s!2326) (= (reg!15570 (regOne!30994 r!7292)) (regOne!30994 r!7292)) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285746 lambda!285739))))

(assert (=> bs!1254894 (not (= lambda!285746 lambda!285740))))

(assert (=> b!5436524 (= (and (= (_1!35743 lt!2217223) s!2326) (= (reg!15570 (regOne!30994 r!7292)) lt!2217207) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285746 lambda!285744))))

(assert (=> b!5436524 (not (= lambda!285746 lambda!285745))))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(declare-fun lambda!285747 () Int)

(assert (=> bs!1254894 (not (= lambda!285747 lambda!285739))))

(assert (=> bs!1254894 (= (and (= (_1!35743 lt!2217223) s!2326) (= (reg!15570 (regOne!30994 r!7292)) (regOne!30994 r!7292)) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285747 lambda!285740))))

(assert (=> b!5436524 (not (= lambda!285747 lambda!285744))))

(assert (=> b!5436524 (not (= lambda!285747 lambda!285746))))

(assert (=> b!5436524 (= (and (= (_1!35743 lt!2217223) s!2326) (= (reg!15570 (regOne!30994 r!7292)) lt!2217207) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285747 lambda!285745))))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(declare-fun lambda!285748 () Int)

(assert (=> b!5436524 (not (= lambda!285748 lambda!285747))))

(assert (=> bs!1254894 (not (= lambda!285748 lambda!285739))))

(assert (=> bs!1254894 (not (= lambda!285748 lambda!285740))))

(assert (=> b!5436524 (not (= lambda!285748 lambda!285744))))

(assert (=> b!5436524 (not (= lambda!285748 lambda!285746))))

(assert (=> b!5436524 (not (= lambda!285748 lambda!285745))))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(assert (=> b!5436524 true))

(declare-fun bs!1254895 () Bool)

(declare-fun b!5436504 () Bool)

(assert (= bs!1254895 (and b!5436504 b!5436524)))

(declare-fun lambda!285749 () Int)

(assert (=> bs!1254895 (not (= lambda!285749 lambda!285747))))

(declare-fun bs!1254896 () Bool)

(assert (= bs!1254896 (and b!5436504 b!5436487)))

(assert (=> bs!1254896 (= (and (= Nil!61898 s!2326) (= (reg!15570 (regOne!30994 r!7292)) (regOne!30994 r!7292)) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285749 lambda!285739))))

(assert (=> bs!1254896 (not (= lambda!285749 lambda!285740))))

(assert (=> bs!1254895 (not (= lambda!285749 lambda!285748))))

(assert (=> bs!1254895 (= (and (= Nil!61898 s!2326) (= (reg!15570 (regOne!30994 r!7292)) lt!2217207) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285749 lambda!285744))))

(assert (=> bs!1254895 (= (= Nil!61898 (_1!35743 lt!2217223)) (= lambda!285749 lambda!285746))))

(assert (=> bs!1254895 (not (= lambda!285749 lambda!285745))))

(assert (=> b!5436504 true))

(assert (=> b!5436504 true))

(declare-fun lambda!285750 () Int)

(assert (=> bs!1254895 (= (= Nil!61898 (_1!35743 lt!2217223)) (= lambda!285750 lambda!285747))))

(assert (=> bs!1254896 (not (= lambda!285750 lambda!285739))))

(assert (=> b!5436504 (not (= lambda!285750 lambda!285749))))

(assert (=> bs!1254896 (= (and (= Nil!61898 s!2326) (= (reg!15570 (regOne!30994 r!7292)) (regOne!30994 r!7292)) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285750 lambda!285740))))

(assert (=> bs!1254895 (not (= lambda!285750 lambda!285748))))

(assert (=> bs!1254895 (not (= lambda!285750 lambda!285744))))

(assert (=> bs!1254895 (not (= lambda!285750 lambda!285746))))

(assert (=> bs!1254895 (= (and (= Nil!61898 s!2326) (= (reg!15570 (regOne!30994 r!7292)) lt!2217207) (= lt!2217162 (regTwo!30994 r!7292))) (= lambda!285750 lambda!285745))))

(assert (=> b!5436504 true))

(assert (=> b!5436504 true))

(declare-fun lambda!285751 () Int)

(assert (=> bs!1254895 (not (= lambda!285751 lambda!285747))))

(assert (=> b!5436504 (not (= lambda!285751 lambda!285750))))

(assert (=> bs!1254896 (not (= lambda!285751 lambda!285739))))

(assert (=> b!5436504 (not (= lambda!285751 lambda!285749))))

(assert (=> bs!1254896 (not (= lambda!285751 lambda!285740))))

(assert (=> bs!1254895 (= (= Nil!61898 (_1!35743 lt!2217223)) (= lambda!285751 lambda!285748))))

(assert (=> bs!1254895 (not (= lambda!285751 lambda!285744))))

(assert (=> bs!1254895 (not (= lambda!285751 lambda!285746))))

(assert (=> bs!1254895 (not (= lambda!285751 lambda!285745))))

(assert (=> b!5436504 true))

(assert (=> b!5436504 true))

(declare-datatypes ((Option!15352 0))(
  ( (None!15351) (Some!15351 (v!51380 tuple2!64880)) )
))
(declare-fun call!389459 () Option!15352)

(declare-fun c!948670 () Bool)

(declare-fun bm!389441 () Bool)

(declare-fun findConcatSeparation!1766 (Regex!15241 Regex!15241 List!62022 List!62022 List!62022) Option!15352)

(assert (=> bm!389441 (= call!389459 (findConcatSeparation!1766 (reg!15570 (regOne!30994 r!7292)) lt!2217162 Nil!61898 (ite c!948670 (_1!35743 lt!2217223) Nil!61898) (ite c!948670 (_1!35743 lt!2217223) Nil!61898)))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!62023 0))(
  ( (Nil!61899) (Cons!61899 (h!68347 Regex!15241) (t!375248 List!62023)) )
))
(declare-datatypes ((Context!9250 0))(
  ( (Context!9251 (exprs!5125 List!62023)) )
))
(declare-fun lt!2217228 () (InoxSet Context!9250))

(declare-fun lt!2217216 () tuple2!64880)

(declare-fun lt!2217211 () (InoxSet Context!9250))

(declare-fun bm!389442 () Bool)

(declare-fun call!389457 () Bool)

(declare-fun matchZipper!1485 ((InoxSet Context!9250) List!62022) Bool)

(assert (=> bm!389442 (= call!389457 (matchZipper!1485 (ite c!948670 lt!2217211 lt!2217228) (ite c!948670 (_2!35743 lt!2217216) s!2326)))))

(declare-fun b!5436484 () Bool)

(declare-fun e!3368206 () Bool)

(declare-fun tp!1499124 () Bool)

(declare-fun tp!1499128 () Bool)

(assert (=> b!5436484 (= e!3368206 (and tp!1499124 tp!1499128))))

(declare-fun bm!389443 () Bool)

(declare-fun call!389449 () Bool)

(declare-fun Exists!2422 (Int) Bool)

(assert (=> bm!389443 (= call!389449 (Exists!2422 (ite c!948670 lambda!285745 lambda!285751)))))

(declare-fun b!5436485 () Bool)

(declare-fun e!3368198 () Bool)

(declare-fun tp!1499125 () Bool)

(assert (=> b!5436485 (= e!3368198 tp!1499125)))

(declare-fun lt!2217232 () Option!15352)

(declare-fun call!389455 () Bool)

(declare-fun bm!389444 () Bool)

(declare-fun isDefined!12055 (Option!15352) Bool)

(assert (=> bm!389444 (= call!389455 (isDefined!12055 (ite c!948670 lt!2217232 call!389459)))))

(declare-fun b!5436486 () Bool)

(declare-fun res!2314236 () Bool)

(declare-fun e!3368193 () Bool)

(assert (=> b!5436486 (=> res!2314236 e!3368193)))

(declare-datatypes ((List!62024 0))(
  ( (Nil!61900) (Cons!61900 (h!68348 Context!9250) (t!375249 List!62024)) )
))
(declare-fun zl!343 () List!62024)

(declare-fun isEmpty!33892 (List!62024) Bool)

(assert (=> b!5436486 (= res!2314236 (not (isEmpty!33892 (t!375249 zl!343))))))

(declare-datatypes ((Unit!154489 0))(
  ( (Unit!154490) )
))
(declare-fun call!389463 () Unit!154489)

(declare-fun bm!389445 () Bool)

(declare-fun lt!2217167 () Regex!15241)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!238 (Regex!15241 Regex!15241 List!62022 List!62022) Unit!154489)

(assert (=> bm!389445 (= call!389463 (lemmaTwoRegexMatchThenConcatMatchesConcatString!238 (ite c!948670 (reg!15570 (regOne!30994 r!7292)) lt!2217162) (ite c!948670 lt!2217167 (regTwo!30994 r!7292)) (ite c!948670 (_1!35743 lt!2217216) Nil!61898) (ite c!948670 (_2!35743 lt!2217216) s!2326)))))

(declare-fun e!3368200 () Bool)

(assert (=> b!5436487 (= e!3368193 e!3368200)))

(declare-fun res!2314230 () Bool)

(assert (=> b!5436487 (=> res!2314230 e!3368200)))

(declare-fun lt!2217177 () Bool)

(declare-fun lt!2217166 () Bool)

(get-info :version)

(assert (=> b!5436487 (= res!2314230 (or (not (= lt!2217166 lt!2217177)) ((_ is Nil!61898) s!2326)))))

(assert (=> b!5436487 (= (Exists!2422 lambda!285739) (Exists!2422 lambda!285740))))

(declare-fun lt!2217161 () Unit!154489)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1076 (Regex!15241 Regex!15241 List!62022) Unit!154489)

(assert (=> b!5436487 (= lt!2217161 (lemmaExistCutMatchRandMatchRSpecEquivalent!1076 (regOne!30994 r!7292) (regTwo!30994 r!7292) s!2326))))

(assert (=> b!5436487 (= lt!2217177 (Exists!2422 lambda!285739))))

(assert (=> b!5436487 (= lt!2217177 (isDefined!12055 (findConcatSeparation!1766 (regOne!30994 r!7292) (regTwo!30994 r!7292) Nil!61898 s!2326 s!2326)))))

(declare-fun lt!2217181 () Unit!154489)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1530 (Regex!15241 Regex!15241 List!62022) Unit!154489)

(assert (=> b!5436487 (= lt!2217181 (lemmaFindConcatSeparationEquivalentToExists!1530 (regOne!30994 r!7292) (regTwo!30994 r!7292) s!2326))))

(declare-fun b!5436488 () Bool)

(declare-fun res!2314255 () Bool)

(assert (=> b!5436488 (=> res!2314255 e!3368200)))

(declare-fun isEmpty!33893 (List!62023) Bool)

(assert (=> b!5436488 (= res!2314255 (isEmpty!33893 (t!375248 (exprs!5125 (h!68348 zl!343)))))))

(declare-fun b!5436489 () Bool)

(declare-fun e!3368197 () Bool)

(declare-fun e!3368194 () Bool)

(assert (=> b!5436489 (= e!3368197 e!3368194)))

(declare-fun res!2314250 () Bool)

(assert (=> b!5436489 (=> res!2314250 e!3368194)))

(declare-fun lt!2217206 () List!62024)

(declare-fun unfocusZipper!983 (List!62024) Regex!15241)

(assert (=> b!5436489 (= res!2314250 (not (= (unfocusZipper!983 lt!2217206) (reg!15570 (regOne!30994 r!7292)))))))

(declare-fun lt!2217209 () Context!9250)

(assert (=> b!5436489 (= lt!2217206 (Cons!61900 lt!2217209 Nil!61900))))

(declare-fun lt!2217213 () Context!9250)

(declare-fun lambda!285741 () Int)

(declare-fun flatMap!968 ((InoxSet Context!9250) Int) (InoxSet Context!9250))

(declare-fun derivationStepZipperUp!613 (Context!9250 C!30752) (InoxSet Context!9250))

(assert (=> b!5436489 (= (flatMap!968 lt!2217211 lambda!285741) (derivationStepZipperUp!613 lt!2217213 (h!68346 s!2326)))))

(declare-fun lt!2217208 () Unit!154489)

(declare-fun lemmaFlatMapOnSingletonSet!500 ((InoxSet Context!9250) Context!9250 Int) Unit!154489)

(assert (=> b!5436489 (= lt!2217208 (lemmaFlatMapOnSingletonSet!500 lt!2217211 lt!2217213 lambda!285741))))

(declare-fun lt!2217188 () (InoxSet Context!9250))

(assert (=> b!5436489 (= (flatMap!968 lt!2217188 lambda!285741) (derivationStepZipperUp!613 lt!2217209 (h!68346 s!2326)))))

(declare-fun lt!2217214 () Unit!154489)

(assert (=> b!5436489 (= lt!2217214 (lemmaFlatMapOnSingletonSet!500 lt!2217188 lt!2217209 lambda!285741))))

(declare-fun lt!2217230 () (InoxSet Context!9250))

(assert (=> b!5436489 (= lt!2217230 (derivationStepZipperUp!613 lt!2217213 (h!68346 s!2326)))))

(declare-fun lt!2217229 () (InoxSet Context!9250))

(assert (=> b!5436489 (= lt!2217229 (derivationStepZipperUp!613 lt!2217209 (h!68346 s!2326)))))

(assert (=> b!5436489 (= lt!2217211 (store ((as const (Array Context!9250 Bool)) false) lt!2217213 true))))

(assert (=> b!5436489 (= lt!2217188 (store ((as const (Array Context!9250 Bool)) false) lt!2217209 true))))

(declare-fun lt!2217180 () List!62023)

(assert (=> b!5436489 (= lt!2217209 (Context!9251 lt!2217180))))

(assert (=> b!5436489 (= lt!2217180 (Cons!61899 (reg!15570 (regOne!30994 r!7292)) Nil!61899))))

(declare-fun res!2314252 () Bool)

(declare-fun e!3368192 () Bool)

(assert (=> start!570266 (=> (not res!2314252) (not e!3368192))))

(declare-fun validRegex!6977 (Regex!15241) Bool)

(assert (=> start!570266 (= res!2314252 (validRegex!6977 r!7292))))

(assert (=> start!570266 e!3368192))

(assert (=> start!570266 e!3368206))

(declare-fun condSetEmpty!35499 () Bool)

(declare-fun z!1189 () (InoxSet Context!9250))

(assert (=> start!570266 (= condSetEmpty!35499 (= z!1189 ((as const (Array Context!9250 Bool)) false)))))

(declare-fun setRes!35499 () Bool)

(assert (=> start!570266 setRes!35499))

(declare-fun e!3368190 () Bool)

(assert (=> start!570266 e!3368190))

(declare-fun e!3368212 () Bool)

(assert (=> start!570266 e!3368212))

(declare-fun call!389458 () Unit!154489)

(declare-fun bm!389446 () Bool)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!428 (Regex!15241 List!62022) Unit!154489)

(assert (=> bm!389446 (= call!389458 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!428 (reg!15570 (regOne!30994 r!7292)) (ite c!948670 (_1!35743 lt!2217223) Nil!61898)))))

(declare-fun tp!1499127 () Bool)

(declare-fun b!5436490 () Bool)

(declare-fun inv!81349 (Context!9250) Bool)

(assert (=> b!5436490 (= e!3368190 (and (inv!81349 (h!68348 zl!343)) e!3368198 tp!1499127))))

(declare-fun b!5436491 () Bool)

(declare-fun e!3368199 () Bool)

(declare-fun e!3368204 () Bool)

(assert (=> b!5436491 (= e!3368199 e!3368204)))

(declare-fun res!2314242 () Bool)

(assert (=> b!5436491 (=> res!2314242 e!3368204)))

(assert (=> b!5436491 (= res!2314242 lt!2217166)))

(declare-fun lt!2217196 () Bool)

(declare-fun lt!2217205 () Regex!15241)

(declare-fun matchRSpec!2344 (Regex!15241 List!62022) Bool)

(assert (=> b!5436491 (= lt!2217196 (matchRSpec!2344 lt!2217205 s!2326))))

(declare-fun matchR!7426 (Regex!15241 List!62022) Bool)

(assert (=> b!5436491 (= lt!2217196 (matchR!7426 lt!2217205 s!2326))))

(declare-fun lt!2217157 () Unit!154489)

(declare-fun mainMatchTheorem!2344 (Regex!15241 List!62022) Unit!154489)

(assert (=> b!5436491 (= lt!2217157 (mainMatchTheorem!2344 lt!2217205 s!2326))))

(declare-fun lt!2217176 () Regex!15241)

(declare-fun call!389464 () Bool)

(declare-fun bm!389447 () Bool)

(assert (=> bm!389447 (= call!389464 (matchR!7426 (ite c!948670 lt!2217176 lt!2217162) (ite c!948670 s!2326 Nil!61898)))))

(declare-fun lt!2217221 () List!62024)

(declare-fun call!389451 () Unit!154489)

(declare-fun bm!389448 () Bool)

(declare-fun lt!2217163 () Context!9250)

(declare-fun lt!2217160 () Regex!15241)

(declare-fun theoremZipperRegexEquiv!545 ((InoxSet Context!9250) List!62024 Regex!15241 List!62022) Unit!154489)

(assert (=> bm!389448 (= call!389451 (theoremZipperRegexEquiv!545 (ite c!948670 lt!2217211 lt!2217228) (ite c!948670 lt!2217221 (Cons!61900 lt!2217163 Nil!61900)) (ite c!948670 lt!2217167 lt!2217160) (ite c!948670 (_2!35743 lt!2217216) s!2326)))))

(declare-fun b!5436492 () Bool)

(declare-fun res!2314240 () Bool)

(declare-fun e!3368202 () Bool)

(assert (=> b!5436492 (=> res!2314240 e!3368202)))

(declare-fun e!3368211 () Bool)

(assert (=> b!5436492 (= res!2314240 e!3368211)))

(declare-fun res!2314257 () Bool)

(assert (=> b!5436492 (=> (not res!2314257) (not e!3368211))))

(assert (=> b!5436492 (= res!2314257 ((_ is Concat!24086) (regOne!30994 r!7292)))))

(declare-fun b!5436493 () Bool)

(declare-fun res!2314249 () Bool)

(assert (=> b!5436493 (=> res!2314249 e!3368202)))

(assert (=> b!5436493 (= res!2314249 (or ((_ is Concat!24086) (regOne!30994 r!7292)) (not ((_ is Star!15241) (regOne!30994 r!7292)))))))

(declare-fun b!5436494 () Bool)

(declare-fun res!2314244 () Bool)

(assert (=> b!5436494 (=> (not res!2314244) (not e!3368192))))

(declare-fun toList!9025 ((InoxSet Context!9250)) List!62024)

(assert (=> b!5436494 (= res!2314244 (= (toList!9025 z!1189) zl!343))))

(declare-fun b!5436495 () Bool)

(declare-fun tp!1499133 () Bool)

(assert (=> b!5436495 (= e!3368206 tp!1499133)))

(declare-fun b!5436496 () Bool)

(declare-fun res!2314253 () Bool)

(declare-fun e!3368189 () Bool)

(assert (=> b!5436496 (=> res!2314253 e!3368189)))

(declare-fun lt!2217179 () (InoxSet Context!9250))

(declare-fun lt!2217212 () (InoxSet Context!9250))

(assert (=> b!5436496 (= res!2314253 (not (= (matchZipper!1485 lt!2217179 s!2326) (matchZipper!1485 lt!2217212 (t!375247 s!2326)))))))

(declare-fun bm!389449 () Bool)

(declare-fun call!389448 () Unit!154489)

(assert (=> bm!389449 (= call!389448 (lemmaFindConcatSeparationEquivalentToExists!1530 (ite c!948670 lt!2217207 (reg!15570 (regOne!30994 r!7292))) (ite c!948670 (regTwo!30994 r!7292) lt!2217162) (ite c!948670 s!2326 Nil!61898)))))

(declare-fun b!5436497 () Bool)

(declare-fun e!3368203 () Bool)

(assert (=> b!5436497 (= e!3368203 false)))

(declare-fun b!5436498 () Bool)

(declare-fun res!2314239 () Bool)

(assert (=> b!5436498 (=> res!2314239 e!3368193)))

(declare-fun generalisedUnion!1170 (List!62023) Regex!15241)

(declare-fun unfocusZipperList!683 (List!62024) List!62023)

(assert (=> b!5436498 (= res!2314239 (not (= r!7292 (generalisedUnion!1170 (unfocusZipperList!683 zl!343)))))))

(declare-fun b!5436499 () Bool)

(declare-fun tp_is_empty!39735 () Bool)

(declare-fun tp!1499131 () Bool)

(assert (=> b!5436499 (= e!3368212 (and tp_is_empty!39735 tp!1499131))))

(declare-fun call!389462 () Bool)

(declare-fun bm!389450 () Bool)

(declare-fun lt!2217187 () List!62022)

(assert (=> bm!389450 (= call!389462 (matchR!7426 (ite c!948670 lt!2217162 lt!2217160) (ite c!948670 lt!2217187 s!2326)))))

(declare-fun b!5436500 () Bool)

(assert (=> b!5436500 (= e!3368204 true)))

(declare-fun lt!2217156 () Unit!154489)

(declare-fun e!3368201 () Unit!154489)

(assert (=> b!5436500 (= lt!2217156 e!3368201)))

(declare-fun c!948671 () Bool)

(assert (=> b!5436500 (= c!948671 (matchZipper!1485 z!1189 s!2326))))

(declare-fun b!5436501 () Bool)

(declare-fun e!3368207 () Unit!154489)

(declare-fun Unit!154491 () Unit!154489)

(assert (=> b!5436501 (= e!3368207 Unit!154491)))

(declare-fun lt!2217219 () Unit!154489)

(declare-fun lt!2217195 () (InoxSet Context!9250))

(declare-fun lt!2217191 () (InoxSet Context!9250))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!478 ((InoxSet Context!9250) (InoxSet Context!9250) List!62022) Unit!154489)

(assert (=> b!5436501 (= lt!2217219 (lemmaZipperConcatMatchesSameAsBothZippers!478 lt!2217195 lt!2217191 (t!375247 s!2326)))))

(declare-fun res!2314234 () Bool)

(assert (=> b!5436501 (= res!2314234 (matchZipper!1485 lt!2217195 (t!375247 s!2326)))))

(declare-fun e!3368208 () Bool)

(assert (=> b!5436501 (=> res!2314234 e!3368208)))

(assert (=> b!5436501 (= (matchZipper!1485 ((_ map or) lt!2217195 lt!2217191) (t!375247 s!2326)) e!3368208)))

(declare-fun call!389460 () List!62022)

(declare-fun call!389447 () Bool)

(declare-fun bm!389451 () Bool)

(assert (=> bm!389451 (= call!389447 (matchR!7426 (ite c!948670 (reg!15570 (regOne!30994 r!7292)) lt!2217167) (ite c!948670 (_1!35743 lt!2217216) call!389460)))))

(declare-fun b!5436502 () Bool)

(assert (=> b!5436502 (= e!3368194 e!3368199)))

(declare-fun res!2314254 () Bool)

(assert (=> b!5436502 (=> res!2314254 e!3368199)))

(assert (=> b!5436502 (= res!2314254 (not (= (unfocusZipper!983 lt!2217221) lt!2217167)))))

(assert (=> b!5436502 (= lt!2217221 (Cons!61900 lt!2217213 Nil!61900))))

(declare-fun b!5436503 () Bool)

(declare-fun res!2314231 () Bool)

(assert (=> b!5436503 (=> res!2314231 e!3368189)))

(declare-fun lt!2217175 () Regex!15241)

(assert (=> b!5436503 (= res!2314231 (not (= lt!2217175 r!7292)))))

(declare-fun bm!389452 () Bool)

(declare-fun call!389450 () Bool)

(assert (=> bm!389452 (= call!389450 (Exists!2422 (ite c!948670 lambda!285744 lambda!285749)))))

(declare-fun e!3368196 () Bool)

(assert (=> b!5436504 e!3368196))

(declare-fun res!2314243 () Bool)

(assert (=> b!5436504 (=> (not res!2314243) (not e!3368196))))

(assert (=> b!5436504 (= res!2314243 call!389447)))

(declare-fun lt!2217192 () Unit!154489)

(assert (=> b!5436504 (= lt!2217192 call!389463)))

(assert (=> b!5436504 (= call!389450 call!389449)))

(declare-fun lt!2217190 () Unit!154489)

(assert (=> b!5436504 (= lt!2217190 call!389458)))

(declare-fun call!389452 () Bool)

(declare-fun call!389461 () Bool)

(assert (=> b!5436504 (= call!389452 call!389461)))

(declare-fun lt!2217165 () Unit!154489)

(declare-fun call!389454 () Unit!154489)

(assert (=> b!5436504 (= lt!2217165 call!389454)))

(declare-fun call!389446 () Bool)

(assert (=> b!5436504 (= call!389455 call!389446)))

(declare-fun lt!2217189 () Unit!154489)

(assert (=> b!5436504 (= lt!2217189 call!389448)))

(declare-fun call!389453 () Bool)

(assert (=> b!5436504 (= call!389464 call!389453)))

(declare-fun lt!2217178 () Unit!154489)

(declare-fun call!389456 () Unit!154489)

(assert (=> b!5436504 (= lt!2217178 call!389456)))

(assert (=> b!5436504 (= call!389462 call!389457)))

(declare-fun lt!2217158 () Unit!154489)

(assert (=> b!5436504 (= lt!2217158 call!389451)))

(declare-fun generalisedConcat!910 (List!62023) Regex!15241)

(assert (=> b!5436504 (= lt!2217160 (generalisedConcat!910 (t!375248 (exprs!5125 (h!68348 zl!343)))))))

(assert (=> b!5436504 (= (flatMap!968 lt!2217228 lambda!285741) (derivationStepZipperUp!613 lt!2217163 (h!68346 s!2326)))))

(declare-fun lt!2217210 () Unit!154489)

(assert (=> b!5436504 (= lt!2217210 (lemmaFlatMapOnSingletonSet!500 lt!2217228 lt!2217163 lambda!285741))))

(assert (=> b!5436504 (= lt!2217228 (store ((as const (Array Context!9250 Bool)) false) lt!2217163 true))))

(declare-fun e!3368205 () Unit!154489)

(declare-fun Unit!154492 () Unit!154489)

(assert (=> b!5436504 (= e!3368205 Unit!154492)))

(declare-fun b!5436505 () Bool)

(assert (=> b!5436505 (= e!3368201 e!3368205)))

(assert (=> b!5436505 (= c!948670 (matchZipper!1485 lt!2217195 (t!375247 s!2326)))))

(declare-fun b!5436506 () Bool)

(assert (=> b!5436506 (= e!3368196 false)))

(declare-fun bm!389453 () Bool)

(declare-fun ++!13613 (List!62022 List!62022) List!62022)

(assert (=> bm!389453 (= call!389460 (++!13613 (ite c!948670 (_1!35743 lt!2217216) Nil!61898) (ite c!948670 (_2!35743 lt!2217216) s!2326)))))

(declare-fun b!5436507 () Bool)

(declare-fun e!3368188 () Bool)

(assert (=> b!5436507 (= e!3368188 e!3368189)))

(declare-fun res!2314256 () Bool)

(assert (=> b!5436507 (=> res!2314256 e!3368189)))

(declare-fun lt!2217225 () (InoxSet Context!9250))

(assert (=> b!5436507 (= res!2314256 (not (= lt!2217212 lt!2217225)))))

(declare-fun lt!2217217 () Context!9250)

(assert (=> b!5436507 (= (flatMap!968 lt!2217179 lambda!285741) (derivationStepZipperUp!613 lt!2217217 (h!68346 s!2326)))))

(declare-fun lt!2217222 () Unit!154489)

(assert (=> b!5436507 (= lt!2217222 (lemmaFlatMapOnSingletonSet!500 lt!2217179 lt!2217217 lambda!285741))))

(declare-fun lt!2217159 () (InoxSet Context!9250))

(assert (=> b!5436507 (= lt!2217159 (derivationStepZipperUp!613 lt!2217217 (h!68346 s!2326)))))

(declare-fun derivationStepZipper!1480 ((InoxSet Context!9250) C!30752) (InoxSet Context!9250))

(assert (=> b!5436507 (= lt!2217212 (derivationStepZipper!1480 lt!2217179 (h!68346 s!2326)))))

(assert (=> b!5436507 (= lt!2217179 (store ((as const (Array Context!9250 Bool)) false) lt!2217217 true))))

(declare-fun lt!2217194 () List!62023)

(assert (=> b!5436507 (= lt!2217217 (Context!9251 (Cons!61899 (reg!15570 (regOne!30994 r!7292)) lt!2217194)))))

(declare-fun bm!389454 () Bool)

(assert (=> bm!389454 (= call!389452 (Exists!2422 (ite c!948670 lambda!285746 lambda!285749)))))

(declare-fun b!5436508 () Bool)

(declare-fun res!2314248 () Bool)

(assert (=> b!5436508 (=> res!2314248 e!3368193)))

(assert (=> b!5436508 (= res!2314248 (not (= r!7292 (generalisedConcat!910 (exprs!5125 (h!68348 zl!343))))))))

(declare-fun b!5436509 () Bool)

(declare-fun e!3368195 () Bool)

(declare-fun tp!1499130 () Bool)

(assert (=> b!5436509 (= e!3368195 tp!1499130)))

(declare-fun bm!389455 () Bool)

(assert (=> bm!389455 (= call!389461 (Exists!2422 (ite c!948670 lambda!285747 lambda!285750)))))

(declare-fun b!5436510 () Bool)

(declare-fun e!3368209 () Bool)

(assert (=> b!5436510 (= e!3368189 e!3368209)))

(declare-fun res!2314247 () Bool)

(assert (=> b!5436510 (=> res!2314247 e!3368209)))

(assert (=> b!5436510 (= res!2314247 (not (= r!7292 lt!2217167)))))

(assert (=> b!5436510 (= lt!2217167 (Concat!24086 lt!2217162 (regTwo!30994 r!7292)))))

(declare-fun b!5436511 () Bool)

(declare-fun tp!1499126 () Bool)

(declare-fun tp!1499132 () Bool)

(assert (=> b!5436511 (= e!3368206 (and tp!1499126 tp!1499132))))

(declare-fun b!5436512 () Bool)

(declare-fun Unit!154493 () Unit!154489)

(assert (=> b!5436512 (= e!3368207 Unit!154493)))

(declare-fun b!5436513 () Bool)

(assert (=> b!5436513 (= e!3368206 tp_is_empty!39735)))

(declare-fun setIsEmpty!35499 () Bool)

(assert (=> setIsEmpty!35499 setRes!35499))

(declare-fun b!5436514 () Bool)

(declare-fun Unit!154494 () Unit!154489)

(assert (=> b!5436514 (= e!3368201 Unit!154494)))

(declare-fun bm!389456 () Bool)

(assert (=> bm!389456 (= call!389454 (lemmaExistCutMatchRandMatchRSpecEquivalent!1076 (ite c!948670 lt!2217207 (reg!15570 (regOne!30994 r!7292))) (ite c!948670 (regTwo!30994 r!7292) lt!2217162) (ite c!948670 s!2326 Nil!61898)))))

(declare-fun b!5436515 () Bool)

(declare-fun res!2314235 () Bool)

(assert (=> b!5436515 (=> res!2314235 e!3368193)))

(assert (=> b!5436515 (= res!2314235 (or ((_ is EmptyExpr!15241) r!7292) ((_ is EmptyLang!15241) r!7292) ((_ is ElementMatch!15241) r!7292) ((_ is Union!15241) r!7292) (not ((_ is Concat!24086) r!7292))))))

(declare-fun bm!389457 () Bool)

(assert (=> bm!389457 (= call!389453 (matchRSpec!2344 (ite c!948670 lt!2217207 lt!2217162) (ite c!948670 (_1!35743 lt!2217223) Nil!61898)))))

(declare-fun b!5436516 () Bool)

(assert (=> b!5436516 (= e!3368202 e!3368188)))

(declare-fun res!2314245 () Bool)

(assert (=> b!5436516 (=> res!2314245 e!3368188)))

(assert (=> b!5436516 (= res!2314245 (not (= lt!2217195 lt!2217225)))))

(declare-fun derivationStepZipperDown!689 (Regex!15241 Context!9250 C!30752) (InoxSet Context!9250))

(assert (=> b!5436516 (= lt!2217225 (derivationStepZipperDown!689 (reg!15570 (regOne!30994 r!7292)) lt!2217213 (h!68346 s!2326)))))

(assert (=> b!5436516 (= lt!2217213 (Context!9251 lt!2217194))))

(assert (=> b!5436516 (= lt!2217194 (Cons!61899 lt!2217162 (t!375248 (exprs!5125 (h!68348 zl!343)))))))

(assert (=> b!5436516 (= lt!2217162 (Star!15241 (reg!15570 (regOne!30994 r!7292))))))

(declare-fun b!5436517 () Bool)

(assert (=> b!5436517 (= e!3368208 (matchZipper!1485 lt!2217191 (t!375247 s!2326)))))

(declare-fun b!5436518 () Bool)

(assert (=> b!5436518 (= e!3368209 e!3368197)))

(declare-fun res!2314232 () Bool)

(assert (=> b!5436518 (=> res!2314232 e!3368197)))

(assert (=> b!5436518 (= res!2314232 (not (= (unfocusZipper!983 (Cons!61900 lt!2217217 Nil!61900)) lt!2217205)))))

(assert (=> b!5436518 (= lt!2217205 (Concat!24086 (reg!15570 (regOne!30994 r!7292)) lt!2217167))))

(assert (=> b!5436519 (= e!3368200 e!3368202)))

(declare-fun res!2314241 () Bool)

(assert (=> b!5436519 (=> res!2314241 e!3368202)))

(assert (=> b!5436519 (= res!2314241 (or (and ((_ is ElementMatch!15241) (regOne!30994 r!7292)) (= (c!948673 (regOne!30994 r!7292)) (h!68346 s!2326))) ((_ is Union!15241) (regOne!30994 r!7292))))))

(declare-fun lt!2217172 () Unit!154489)

(assert (=> b!5436519 (= lt!2217172 e!3368207)))

(declare-fun c!948672 () Bool)

(declare-fun nullable!5410 (Regex!15241) Bool)

(assert (=> b!5436519 (= c!948672 (nullable!5410 (h!68347 (exprs!5125 (h!68348 zl!343)))))))

(assert (=> b!5436519 (= (flatMap!968 z!1189 lambda!285741) (derivationStepZipperUp!613 (h!68348 zl!343) (h!68346 s!2326)))))

(declare-fun lt!2217224 () Unit!154489)

(assert (=> b!5436519 (= lt!2217224 (lemmaFlatMapOnSingletonSet!500 z!1189 (h!68348 zl!343) lambda!285741))))

(assert (=> b!5436519 (= lt!2217191 (derivationStepZipperUp!613 lt!2217163 (h!68346 s!2326)))))

(assert (=> b!5436519 (= lt!2217195 (derivationStepZipperDown!689 (h!68347 (exprs!5125 (h!68348 zl!343))) lt!2217163 (h!68346 s!2326)))))

(assert (=> b!5436519 (= lt!2217163 (Context!9251 (t!375248 (exprs!5125 (h!68348 zl!343)))))))

(declare-fun lt!2217169 () (InoxSet Context!9250))

(assert (=> b!5436519 (= lt!2217169 (derivationStepZipperUp!613 (Context!9251 (Cons!61899 (h!68347 (exprs!5125 (h!68348 zl!343))) (t!375248 (exprs!5125 (h!68348 zl!343))))) (h!68346 s!2326)))))

(declare-fun bm!389458 () Bool)

(assert (=> bm!389458 (= call!389456 (mainMatchTheorem!2344 (ite c!948670 lt!2217207 lt!2217162) (ite c!948670 (_1!35743 lt!2217223) Nil!61898)))))

(declare-fun b!5436520 () Bool)

(declare-fun e!3368191 () Bool)

(assert (=> b!5436520 (= e!3368191 lt!2217196)))

(declare-fun setElem!35499 () Context!9250)

(declare-fun setNonEmpty!35499 () Bool)

(declare-fun tp!1499129 () Bool)

(assert (=> setNonEmpty!35499 (= setRes!35499 (and tp!1499129 (inv!81349 setElem!35499) e!3368195))))

(declare-fun setRest!35499 () (InoxSet Context!9250))

(assert (=> setNonEmpty!35499 (= z!1189 ((_ map or) (store ((as const (Array Context!9250 Bool)) false) setElem!35499 true) setRest!35499))))

(declare-fun b!5436521 () Bool)

(declare-fun res!2314238 () Bool)

(assert (=> b!5436521 (=> res!2314238 e!3368193)))

(assert (=> b!5436521 (= res!2314238 (not ((_ is Cons!61899) (exprs!5125 (h!68348 zl!343)))))))

(declare-fun b!5436522 () Bool)

(assert (=> b!5436522 (= e!3368211 (nullable!5410 (regOne!30994 (regOne!30994 r!7292))))))

(declare-fun b!5436523 () Bool)

(declare-fun e!3368210 () Bool)

(assert (=> b!5436523 (= e!3368192 e!3368210)))

(declare-fun res!2314233 () Bool)

(assert (=> b!5436523 (=> (not res!2314233) (not e!3368210))))

(assert (=> b!5436523 (= res!2314233 (= r!7292 lt!2217175))))

(assert (=> b!5436523 (= lt!2217175 (unfocusZipper!983 zl!343))))

(assert (=> b!5436524 e!3368203))

(declare-fun res!2314237 () Bool)

(assert (=> b!5436524 (=> (not res!2314237) (not e!3368203))))

(declare-fun lt!2217203 () List!62022)

(assert (=> b!5436524 (= res!2314237 (matchR!7426 lt!2217167 lt!2217203))))

(declare-fun lt!2217200 () Unit!154489)

(assert (=> b!5436524 (= lt!2217200 (lemmaTwoRegexMatchThenConcatMatchesConcatString!238 lt!2217162 (regTwo!30994 r!7292) lt!2217187 (_2!35743 lt!2217223)))))

(assert (=> b!5436524 call!389462))

(declare-fun lt!2217218 () Unit!154489)

(declare-fun lt!2217184 () tuple2!64880)

(declare-fun lemmaStarApp!66 (Regex!15241 List!62022 List!62022) Unit!154489)

(assert (=> b!5436524 (= lt!2217218 (lemmaStarApp!66 (reg!15570 (regOne!30994 r!7292)) (_1!35743 lt!2217184) (_2!35743 lt!2217184)))))

(declare-fun lt!2217185 () List!62022)

(assert (=> b!5436524 (= lt!2217203 (++!13613 (_1!35743 lt!2217184) lt!2217185))))

(assert (=> b!5436524 (= lt!2217203 (++!13613 lt!2217187 (_2!35743 lt!2217223)))))

(assert (=> b!5436524 (= lt!2217185 (++!13613 (_2!35743 lt!2217184) (_2!35743 lt!2217223)))))

(assert (=> b!5436524 (= lt!2217187 (++!13613 (_1!35743 lt!2217184) (_2!35743 lt!2217184)))))

(declare-fun lt!2217231 () Unit!154489)

(declare-fun lemmaConcatAssociativity!2848 (List!62022 List!62022 List!62022) Unit!154489)

(assert (=> b!5436524 (= lt!2217231 (lemmaConcatAssociativity!2848 (_1!35743 lt!2217184) (_2!35743 lt!2217184) (_2!35743 lt!2217223)))))

(declare-fun get!21348 (Option!15352) tuple2!64880)

(assert (=> b!5436524 (= lt!2217184 (get!21348 lt!2217232))))

(assert (=> b!5436524 (= call!389446 (Exists!2422 lambda!285748))))

(declare-fun lt!2217174 () Unit!154489)

(assert (=> b!5436524 (= lt!2217174 call!389458)))

(assert (=> b!5436524 (= call!389452 call!389461)))

(declare-fun lt!2217204 () Unit!154489)

(assert (=> b!5436524 (= lt!2217204 (lemmaExistCutMatchRandMatchRSpecEquivalent!1076 (reg!15570 (regOne!30994 r!7292)) lt!2217162 (_1!35743 lt!2217223)))))

(assert (=> b!5436524 (= call!389455 (Exists!2422 lambda!285746))))

(assert (=> b!5436524 (= lt!2217232 call!389459)))

(declare-fun lt!2217202 () Unit!154489)

(assert (=> b!5436524 (= lt!2217202 (lemmaFindConcatSeparationEquivalentToExists!1530 (reg!15570 (regOne!30994 r!7292)) lt!2217162 (_1!35743 lt!2217223)))))

(assert (=> b!5436524 (= (matchR!7426 lt!2217207 (_1!35743 lt!2217223)) call!389453)))

(declare-fun lt!2217193 () Unit!154489)

(assert (=> b!5436524 (= lt!2217193 call!389456)))

(declare-fun lt!2217220 () Option!15352)

(assert (=> b!5436524 (= lt!2217223 (get!21348 lt!2217220))))

(assert (=> b!5436524 (= (Exists!2422 lambda!285744) call!389449)))

(declare-fun lt!2217182 () Unit!154489)

(assert (=> b!5436524 (= lt!2217182 call!389454)))

(assert (=> b!5436524 (= (isDefined!12055 lt!2217220) call!389450)))

(assert (=> b!5436524 (= lt!2217220 (findConcatSeparation!1766 lt!2217207 (regTwo!30994 r!7292) Nil!61898 s!2326 s!2326))))

(declare-fun lt!2217168 () Unit!154489)

(assert (=> b!5436524 (= lt!2217168 call!389448)))

(assert (=> b!5436524 (matchRSpec!2344 lt!2217176 s!2326)))

(declare-fun lt!2217198 () Unit!154489)

(assert (=> b!5436524 (= lt!2217198 (mainMatchTheorem!2344 lt!2217176 s!2326))))

(assert (=> b!5436524 call!389464))

(assert (=> b!5436524 (= lt!2217176 (Concat!24086 lt!2217207 (regTwo!30994 r!7292)))))

(assert (=> b!5436524 (= lt!2217207 (Concat!24086 (reg!15570 (regOne!30994 r!7292)) lt!2217162))))

(declare-fun lt!2217227 () Unit!154489)

(declare-fun lemmaConcatAssociative!66 (Regex!15241 Regex!15241 Regex!15241 List!62022) Unit!154489)

(assert (=> b!5436524 (= lt!2217227 (lemmaConcatAssociative!66 (reg!15570 (regOne!30994 r!7292)) lt!2217162 (regTwo!30994 r!7292) s!2326))))

(assert (=> b!5436524 e!3368191))

(declare-fun res!2314251 () Bool)

(assert (=> b!5436524 (=> (not res!2314251) (not e!3368191))))

(declare-fun lt!2217183 () List!62022)

(assert (=> b!5436524 (= res!2314251 (matchR!7426 lt!2217205 lt!2217183))))

(declare-fun lt!2217155 () Unit!154489)

(assert (=> b!5436524 (= lt!2217155 call!389463)))

(assert (=> b!5436524 (= (matchR!7426 lt!2217167 (_2!35743 lt!2217216)) call!389457)))

(declare-fun lt!2217226 () Unit!154489)

(assert (=> b!5436524 (= lt!2217226 call!389451)))

(assert (=> b!5436524 (= call!389447 (matchZipper!1485 lt!2217188 (_1!35743 lt!2217216)))))

(declare-fun lt!2217197 () Unit!154489)

(assert (=> b!5436524 (= lt!2217197 (theoremZipperRegexEquiv!545 lt!2217188 lt!2217206 (reg!15570 (regOne!30994 r!7292)) (_1!35743 lt!2217216)))))

(declare-fun lt!2217173 () List!62023)

(assert (=> b!5436524 (matchZipper!1485 (store ((as const (Array Context!9250 Bool)) false) (Context!9251 lt!2217173) true) lt!2217183)))

(assert (=> b!5436524 (= lt!2217183 call!389460)))

(declare-fun ++!13614 (List!62023 List!62023) List!62023)

(assert (=> b!5436524 (= lt!2217173 (++!13614 lt!2217180 lt!2217194))))

(declare-fun lambda!285743 () Int)

(declare-fun lt!2217170 () Unit!154489)

(declare-fun lemmaConcatPreservesForall!238 (List!62023 List!62023 Int) Unit!154489)

(assert (=> b!5436524 (= lt!2217170 (lemmaConcatPreservesForall!238 lt!2217180 lt!2217194 lambda!285743))))

(declare-fun lt!2217164 () Unit!154489)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!86 (Context!9250 Context!9250 List!62022 List!62022) Unit!154489)

(assert (=> b!5436524 (= lt!2217164 (lemmaConcatenateContextMatchesConcatOfStrings!86 lt!2217209 lt!2217213 (_1!35743 lt!2217216) (_2!35743 lt!2217216)))))

(declare-fun lt!2217186 () Option!15352)

(assert (=> b!5436524 (= lt!2217216 (get!21348 lt!2217186))))

(assert (=> b!5436524 (isDefined!12055 lt!2217186)))

(declare-fun findConcatSeparationZippers!70 ((InoxSet Context!9250) (InoxSet Context!9250) List!62022 List!62022 List!62022) Option!15352)

(assert (=> b!5436524 (= lt!2217186 (findConcatSeparationZippers!70 lt!2217188 lt!2217211 Nil!61898 s!2326 s!2326))))

(declare-fun lt!2217171 () Unit!154489)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!70 ((InoxSet Context!9250) Context!9250 List!62022) Unit!154489)

(assert (=> b!5436524 (= lt!2217171 (lemmaConcatZipperMatchesStringThenFindConcatDefined!70 lt!2217188 lt!2217213 s!2326))))

(declare-fun lambda!285742 () Int)

(declare-fun map!14218 ((InoxSet Context!9250) Int) (InoxSet Context!9250))

(assert (=> b!5436524 (= (map!14218 lt!2217188 lambda!285742) (store ((as const (Array Context!9250 Bool)) false) (Context!9251 (++!13614 lt!2217180 lt!2217194)) true))))

(declare-fun lt!2217215 () Unit!154489)

(assert (=> b!5436524 (= lt!2217215 (lemmaConcatPreservesForall!238 lt!2217180 lt!2217194 lambda!285743))))

(declare-fun lt!2217199 () Unit!154489)

(declare-fun lemmaMapOnSingletonSet!72 ((InoxSet Context!9250) Context!9250 Int) Unit!154489)

(assert (=> b!5436524 (= lt!2217199 (lemmaMapOnSingletonSet!72 lt!2217188 lt!2217209 lambda!285742))))

(declare-fun Unit!154495 () Unit!154489)

(assert (=> b!5436524 (= e!3368205 Unit!154495)))

(declare-fun b!5436525 () Bool)

(assert (=> b!5436525 (= e!3368210 (not e!3368193))))

(declare-fun res!2314246 () Bool)

(assert (=> b!5436525 (=> res!2314246 e!3368193)))

(assert (=> b!5436525 (= res!2314246 (not ((_ is Cons!61900) zl!343)))))

(assert (=> b!5436525 (= lt!2217166 (matchRSpec!2344 r!7292 s!2326))))

(assert (=> b!5436525 (= lt!2217166 (matchR!7426 r!7292 s!2326))))

(declare-fun lt!2217201 () Unit!154489)

(assert (=> b!5436525 (= lt!2217201 (mainMatchTheorem!2344 r!7292 s!2326))))

(declare-fun bm!389459 () Bool)

(assert (=> bm!389459 (= call!389446 (Exists!2422 (ite c!948670 lambda!285746 lambda!285749)))))

(assert (= (and start!570266 res!2314252) b!5436494))

(assert (= (and b!5436494 res!2314244) b!5436523))

(assert (= (and b!5436523 res!2314233) b!5436525))

(assert (= (and b!5436525 (not res!2314246)) b!5436486))

(assert (= (and b!5436486 (not res!2314236)) b!5436508))

(assert (= (and b!5436508 (not res!2314248)) b!5436521))

(assert (= (and b!5436521 (not res!2314238)) b!5436498))

(assert (= (and b!5436498 (not res!2314239)) b!5436515))

(assert (= (and b!5436515 (not res!2314235)) b!5436487))

(assert (= (and b!5436487 (not res!2314230)) b!5436488))

(assert (= (and b!5436488 (not res!2314255)) b!5436519))

(assert (= (and b!5436519 c!948672) b!5436501))

(assert (= (and b!5436519 (not c!948672)) b!5436512))

(assert (= (and b!5436501 (not res!2314234)) b!5436517))

(assert (= (and b!5436519 (not res!2314241)) b!5436492))

(assert (= (and b!5436492 res!2314257) b!5436522))

(assert (= (and b!5436492 (not res!2314240)) b!5436493))

(assert (= (and b!5436493 (not res!2314249)) b!5436516))

(assert (= (and b!5436516 (not res!2314245)) b!5436507))

(assert (= (and b!5436507 (not res!2314256)) b!5436496))

(assert (= (and b!5436496 (not res!2314253)) b!5436503))

(assert (= (and b!5436503 (not res!2314231)) b!5436510))

(assert (= (and b!5436510 (not res!2314247)) b!5436518))

(assert (= (and b!5436518 (not res!2314232)) b!5436489))

(assert (= (and b!5436489 (not res!2314250)) b!5436502))

(assert (= (and b!5436502 (not res!2314254)) b!5436491))

(assert (= (and b!5436491 (not res!2314242)) b!5436500))

(assert (= (and b!5436500 c!948671) b!5436505))

(assert (= (and b!5436500 (not c!948671)) b!5436514))

(assert (= (and b!5436505 c!948670) b!5436524))

(assert (= (and b!5436505 (not c!948670)) b!5436504))

(assert (= (and b!5436524 res!2314251) b!5436520))

(assert (= (and b!5436524 res!2314237) b!5436497))

(assert (= (and b!5436504 res!2314243) b!5436506))

(assert (= (or b!5436524 b!5436504) bm!389454))

(assert (= (or b!5436524 b!5436504) bm!389446))

(assert (= (or b!5436524 b!5436504) bm!389449))

(assert (= (or b!5436524 b!5436504) bm!389445))

(assert (= (or b!5436524 b!5436504) bm!389458))

(assert (= (or b!5436524 b!5436504) bm!389441))

(assert (= (or b!5436524 b!5436504) bm!389442))

(assert (= (or b!5436524 b!5436504) bm!389456))

(assert (= (or b!5436524 b!5436504) bm!389453))

(assert (= (or b!5436524 b!5436504) bm!389443))

(assert (= (or b!5436524 b!5436504) bm!389452))

(assert (= (or b!5436524 b!5436504) bm!389450))

(assert (= (or b!5436524 b!5436504) bm!389459))

(assert (= (or b!5436524 b!5436504) bm!389447))

(assert (= (or b!5436524 b!5436504) bm!389457))

(assert (= (or b!5436524 b!5436504) bm!389448))

(assert (= (or b!5436524 b!5436504) bm!389455))

(assert (= (or b!5436524 b!5436504) bm!389444))

(assert (= (or b!5436524 b!5436504) bm!389451))

(assert (= (and start!570266 ((_ is ElementMatch!15241) r!7292)) b!5436513))

(assert (= (and start!570266 ((_ is Concat!24086) r!7292)) b!5436511))

(assert (= (and start!570266 ((_ is Star!15241) r!7292)) b!5436495))

(assert (= (and start!570266 ((_ is Union!15241) r!7292)) b!5436484))

(assert (= (and start!570266 condSetEmpty!35499) setIsEmpty!35499))

(assert (= (and start!570266 (not condSetEmpty!35499)) setNonEmpty!35499))

(assert (= setNonEmpty!35499 b!5436509))

(assert (= b!5436490 b!5436485))

(assert (= (and start!570266 ((_ is Cons!61900) zl!343)) b!5436490))

(assert (= (and start!570266 ((_ is Cons!61898) s!2326)) b!5436499))

(declare-fun m!6458458 () Bool)

(assert (=> b!5436508 m!6458458))

(declare-fun m!6458460 () Bool)

(assert (=> bm!389450 m!6458460))

(declare-fun m!6458462 () Bool)

(assert (=> bm!389452 m!6458462))

(declare-fun m!6458464 () Bool)

(assert (=> bm!389456 m!6458464))

(declare-fun m!6458466 () Bool)

(assert (=> b!5436518 m!6458466))

(declare-fun m!6458468 () Bool)

(assert (=> bm!389459 m!6458468))

(declare-fun m!6458470 () Bool)

(assert (=> bm!389448 m!6458470))

(declare-fun m!6458472 () Bool)

(assert (=> b!5436517 m!6458472))

(declare-fun m!6458474 () Bool)

(assert (=> setNonEmpty!35499 m!6458474))

(declare-fun m!6458476 () Bool)

(assert (=> bm!389455 m!6458476))

(declare-fun m!6458478 () Bool)

(assert (=> b!5436496 m!6458478))

(declare-fun m!6458480 () Bool)

(assert (=> b!5436496 m!6458480))

(declare-fun m!6458482 () Bool)

(assert (=> b!5436507 m!6458482))

(declare-fun m!6458484 () Bool)

(assert (=> b!5436507 m!6458484))

(declare-fun m!6458486 () Bool)

(assert (=> b!5436507 m!6458486))

(declare-fun m!6458488 () Bool)

(assert (=> b!5436507 m!6458488))

(declare-fun m!6458490 () Bool)

(assert (=> b!5436507 m!6458490))

(declare-fun m!6458492 () Bool)

(assert (=> b!5436491 m!6458492))

(declare-fun m!6458494 () Bool)

(assert (=> b!5436491 m!6458494))

(declare-fun m!6458496 () Bool)

(assert (=> b!5436491 m!6458496))

(declare-fun m!6458498 () Bool)

(assert (=> bm!389443 m!6458498))

(declare-fun m!6458500 () Bool)

(assert (=> b!5436488 m!6458500))

(declare-fun m!6458502 () Bool)

(assert (=> b!5436494 m!6458502))

(declare-fun m!6458504 () Bool)

(assert (=> bm!389444 m!6458504))

(declare-fun m!6458506 () Bool)

(assert (=> b!5436519 m!6458506))

(declare-fun m!6458508 () Bool)

(assert (=> b!5436519 m!6458508))

(declare-fun m!6458510 () Bool)

(assert (=> b!5436519 m!6458510))

(declare-fun m!6458512 () Bool)

(assert (=> b!5436519 m!6458512))

(declare-fun m!6458514 () Bool)

(assert (=> b!5436519 m!6458514))

(declare-fun m!6458516 () Bool)

(assert (=> b!5436519 m!6458516))

(declare-fun m!6458518 () Bool)

(assert (=> b!5436519 m!6458518))

(declare-fun m!6458520 () Bool)

(assert (=> bm!389446 m!6458520))

(declare-fun m!6458522 () Bool)

(assert (=> b!5436505 m!6458522))

(declare-fun m!6458524 () Bool)

(assert (=> b!5436522 m!6458524))

(declare-fun m!6458526 () Bool)

(assert (=> b!5436490 m!6458526))

(declare-fun m!6458528 () Bool)

(assert (=> b!5436524 m!6458528))

(declare-fun m!6458530 () Bool)

(assert (=> b!5436524 m!6458530))

(declare-fun m!6458532 () Bool)

(assert (=> b!5436524 m!6458532))

(declare-fun m!6458534 () Bool)

(assert (=> b!5436524 m!6458534))

(declare-fun m!6458536 () Bool)

(assert (=> b!5436524 m!6458536))

(declare-fun m!6458538 () Bool)

(assert (=> b!5436524 m!6458538))

(declare-fun m!6458540 () Bool)

(assert (=> b!5436524 m!6458540))

(declare-fun m!6458542 () Bool)

(assert (=> b!5436524 m!6458542))

(declare-fun m!6458544 () Bool)

(assert (=> b!5436524 m!6458544))

(declare-fun m!6458546 () Bool)

(assert (=> b!5436524 m!6458546))

(declare-fun m!6458548 () Bool)

(assert (=> b!5436524 m!6458548))

(declare-fun m!6458550 () Bool)

(assert (=> b!5436524 m!6458550))

(declare-fun m!6458552 () Bool)

(assert (=> b!5436524 m!6458552))

(declare-fun m!6458554 () Bool)

(assert (=> b!5436524 m!6458554))

(declare-fun m!6458556 () Bool)

(assert (=> b!5436524 m!6458556))

(declare-fun m!6458558 () Bool)

(assert (=> b!5436524 m!6458558))

(declare-fun m!6458560 () Bool)

(assert (=> b!5436524 m!6458560))

(declare-fun m!6458562 () Bool)

(assert (=> b!5436524 m!6458562))

(declare-fun m!6458564 () Bool)

(assert (=> b!5436524 m!6458564))

(declare-fun m!6458566 () Bool)

(assert (=> b!5436524 m!6458566))

(declare-fun m!6458568 () Bool)

(assert (=> b!5436524 m!6458568))

(declare-fun m!6458570 () Bool)

(assert (=> b!5436524 m!6458570))

(declare-fun m!6458572 () Bool)

(assert (=> b!5436524 m!6458572))

(declare-fun m!6458574 () Bool)

(assert (=> b!5436524 m!6458574))

(declare-fun m!6458576 () Bool)

(assert (=> b!5436524 m!6458576))

(declare-fun m!6458578 () Bool)

(assert (=> b!5436524 m!6458578))

(declare-fun m!6458580 () Bool)

(assert (=> b!5436524 m!6458580))

(declare-fun m!6458582 () Bool)

(assert (=> b!5436524 m!6458582))

(declare-fun m!6458584 () Bool)

(assert (=> b!5436524 m!6458584))

(declare-fun m!6458586 () Bool)

(assert (=> b!5436524 m!6458586))

(assert (=> b!5436524 m!6458562))

(declare-fun m!6458588 () Bool)

(assert (=> b!5436524 m!6458588))

(declare-fun m!6458590 () Bool)

(assert (=> b!5436524 m!6458590))

(declare-fun m!6458592 () Bool)

(assert (=> b!5436524 m!6458592))

(declare-fun m!6458594 () Bool)

(assert (=> b!5436524 m!6458594))

(declare-fun m!6458596 () Bool)

(assert (=> b!5436524 m!6458596))

(assert (=> b!5436524 m!6458528))

(declare-fun m!6458598 () Bool)

(assert (=> b!5436524 m!6458598))

(declare-fun m!6458600 () Bool)

(assert (=> b!5436524 m!6458600))

(declare-fun m!6458602 () Bool)

(assert (=> bm!389451 m!6458602))

(declare-fun m!6458604 () Bool)

(assert (=> start!570266 m!6458604))

(declare-fun m!6458606 () Bool)

(assert (=> bm!389449 m!6458606))

(declare-fun m!6458608 () Bool)

(assert (=> bm!389458 m!6458608))

(declare-fun m!6458610 () Bool)

(assert (=> b!5436516 m!6458610))

(declare-fun m!6458612 () Bool)

(assert (=> b!5436523 m!6458612))

(declare-fun m!6458614 () Bool)

(assert (=> b!5436525 m!6458614))

(declare-fun m!6458616 () Bool)

(assert (=> b!5436525 m!6458616))

(declare-fun m!6458618 () Bool)

(assert (=> b!5436525 m!6458618))

(declare-fun m!6458620 () Bool)

(assert (=> b!5436504 m!6458620))

(assert (=> b!5436504 m!6458508))

(declare-fun m!6458622 () Bool)

(assert (=> b!5436504 m!6458622))

(declare-fun m!6458624 () Bool)

(assert (=> b!5436504 m!6458624))

(declare-fun m!6458626 () Bool)

(assert (=> b!5436504 m!6458626))

(declare-fun m!6458628 () Bool)

(assert (=> bm!389442 m!6458628))

(declare-fun m!6458630 () Bool)

(assert (=> bm!389441 m!6458630))

(declare-fun m!6458632 () Bool)

(assert (=> b!5436502 m!6458632))

(declare-fun m!6458634 () Bool)

(assert (=> b!5436486 m!6458634))

(declare-fun m!6458636 () Bool)

(assert (=> bm!389447 m!6458636))

(declare-fun m!6458638 () Bool)

(assert (=> b!5436487 m!6458638))

(declare-fun m!6458640 () Bool)

(assert (=> b!5436487 m!6458640))

(declare-fun m!6458642 () Bool)

(assert (=> b!5436487 m!6458642))

(assert (=> b!5436487 m!6458638))

(declare-fun m!6458644 () Bool)

(assert (=> b!5436487 m!6458644))

(declare-fun m!6458646 () Bool)

(assert (=> b!5436487 m!6458646))

(assert (=> b!5436487 m!6458640))

(declare-fun m!6458648 () Bool)

(assert (=> b!5436487 m!6458648))

(declare-fun m!6458650 () Bool)

(assert (=> bm!389445 m!6458650))

(declare-fun m!6458652 () Bool)

(assert (=> bm!389453 m!6458652))

(declare-fun m!6458654 () Bool)

(assert (=> b!5436489 m!6458654))

(declare-fun m!6458656 () Bool)

(assert (=> b!5436489 m!6458656))

(declare-fun m!6458658 () Bool)

(assert (=> b!5436489 m!6458658))

(declare-fun m!6458660 () Bool)

(assert (=> b!5436489 m!6458660))

(declare-fun m!6458662 () Bool)

(assert (=> b!5436489 m!6458662))

(declare-fun m!6458664 () Bool)

(assert (=> b!5436489 m!6458664))

(declare-fun m!6458666 () Bool)

(assert (=> b!5436489 m!6458666))

(declare-fun m!6458668 () Bool)

(assert (=> b!5436489 m!6458668))

(declare-fun m!6458670 () Bool)

(assert (=> b!5436489 m!6458670))

(declare-fun m!6458672 () Bool)

(assert (=> b!5436500 m!6458672))

(declare-fun m!6458674 () Bool)

(assert (=> b!5436501 m!6458674))

(assert (=> b!5436501 m!6458522))

(declare-fun m!6458676 () Bool)

(assert (=> b!5436501 m!6458676))

(declare-fun m!6458678 () Bool)

(assert (=> bm!389457 m!6458678))

(declare-fun m!6458680 () Bool)

(assert (=> b!5436498 m!6458680))

(assert (=> b!5436498 m!6458680))

(declare-fun m!6458682 () Bool)

(assert (=> b!5436498 m!6458682))

(assert (=> bm!389454 m!6458468))

(check-sat (not b!5436501) (not b!5436509) (not b!5436488) (not b!5436519) (not bm!389446) (not bm!389441) (not setNonEmpty!35499) (not b!5436502) (not bm!389451) (not b!5436494) (not bm!389458) (not b!5436485) (not bm!389457) (not b!5436505) (not start!570266) (not b!5436523) (not bm!389452) (not b!5436495) (not bm!389448) (not b!5436522) (not bm!389453) (not bm!389443) (not bm!389459) (not b!5436498) (not bm!389442) (not b!5436489) (not b!5436490) (not b!5436496) (not b!5436491) (not bm!389447) (not b!5436524) (not b!5436508) (not bm!389455) tp_is_empty!39735 (not b!5436525) (not b!5436518) (not bm!389456) (not bm!389454) (not bm!389449) (not b!5436500) (not b!5436511) (not b!5436486) (not b!5436517) (not b!5436487) (not bm!389444) (not b!5436504) (not b!5436484) (not b!5436499) (not b!5436516) (not bm!389450) (not bm!389445) (not b!5436507))
(check-sat)
