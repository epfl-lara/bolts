; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590104 () Bool)

(assert start!590104)

(declare-fun b!5734197 () Bool)

(assert (=> b!5734197 true))

(assert (=> b!5734197 true))

(declare-fun lambda!310581 () Int)

(declare-fun lambda!310580 () Int)

(assert (=> b!5734197 (not (= lambda!310581 lambda!310580))))

(assert (=> b!5734197 true))

(assert (=> b!5734197 true))

(declare-fun b!5734211 () Bool)

(assert (=> b!5734211 true))

(declare-fun b!5734240 () Bool)

(assert (=> b!5734240 true))

(declare-fun bs!1340270 () Bool)

(declare-fun b!5734236 () Bool)

(assert (= bs!1340270 (and b!5734236 b!5734197)))

(declare-fun lambda!310585 () Int)

(declare-datatypes ((C!31752 0))(
  ( (C!31753 (val!25578 Int)) )
))
(declare-datatypes ((Regex!15741 0))(
  ( (ElementMatch!15741 (c!1011861 C!31752)) (Concat!24586 (regOne!31994 Regex!15741) (regTwo!31994 Regex!15741)) (EmptyExpr!15741) (Star!15741 (reg!16070 Regex!15741)) (EmptyLang!15741) (Union!15741 (regOne!31995 Regex!15741) (regTwo!31995 Regex!15741)) )
))
(declare-fun r!7292 () Regex!15741)

(declare-fun lt!2282787 () Regex!15741)

(assert (=> bs!1340270 (= (= lt!2282787 (regOne!31994 r!7292)) (= lambda!310585 lambda!310580))))

(assert (=> bs!1340270 (not (= lambda!310585 lambda!310581))))

(assert (=> b!5734236 true))

(assert (=> b!5734236 true))

(assert (=> b!5734236 true))

(declare-fun lambda!310586 () Int)

(assert (=> bs!1340270 (not (= lambda!310586 lambda!310580))))

(assert (=> bs!1340270 (= (= lt!2282787 (regOne!31994 r!7292)) (= lambda!310586 lambda!310581))))

(assert (=> b!5734236 (not (= lambda!310586 lambda!310585))))

(assert (=> b!5734236 true))

(assert (=> b!5734236 true))

(assert (=> b!5734236 true))

(declare-fun bs!1340271 () Bool)

(declare-fun b!5734230 () Bool)

(assert (= bs!1340271 (and b!5734230 b!5734197)))

(declare-fun lt!2282770 () Regex!15741)

(declare-fun lambda!310587 () Int)

(declare-datatypes ((List!63522 0))(
  ( (Nil!63398) (Cons!63398 (h!69846 C!31752) (t!376850 List!63522)) )
))
(declare-fun s!2326 () List!63522)

(declare-datatypes ((tuple2!65676 0))(
  ( (tuple2!65677 (_1!36141 List!63522) (_2!36141 List!63522)) )
))
(declare-fun lt!2282777 () tuple2!65676)

(assert (=> bs!1340271 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310587 lambda!310580))))

(assert (=> bs!1340271 (not (= lambda!310587 lambda!310581))))

(declare-fun bs!1340272 () Bool)

(assert (= bs!1340272 (and b!5734230 b!5734236)))

(assert (=> bs!1340272 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310587 lambda!310585))))

(assert (=> bs!1340272 (not (= lambda!310587 lambda!310586))))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(declare-fun lambda!310588 () Int)

(assert (=> bs!1340272 (not (= lambda!310588 lambda!310585))))

(assert (=> b!5734230 (not (= lambda!310588 lambda!310587))))

(assert (=> bs!1340272 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310588 lambda!310586))))

(assert (=> bs!1340271 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310588 lambda!310581))))

(assert (=> bs!1340271 (not (= lambda!310588 lambda!310580))))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(declare-fun lambda!310589 () Int)

(assert (=> bs!1340272 (not (= lambda!310589 lambda!310585))))

(assert (=> b!5734230 (not (= lambda!310589 lambda!310587))))

(assert (=> bs!1340272 (not (= lambda!310589 lambda!310586))))

(assert (=> b!5734230 (not (= lambda!310589 lambda!310588))))

(assert (=> bs!1340271 (not (= lambda!310589 lambda!310581))))

(assert (=> bs!1340271 (not (= lambda!310589 lambda!310580))))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(assert (=> b!5734230 true))

(declare-fun b!5734195 () Bool)

(declare-fun res!2421418 () Bool)

(declare-fun e!3525280 () Bool)

(assert (=> b!5734195 (=> res!2421418 e!3525280)))

(declare-fun lt!2282758 () Bool)

(assert (=> b!5734195 (= res!2421418 (not lt!2282758))))

(declare-fun b!5734196 () Bool)

(declare-fun e!3525304 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63523 0))(
  ( (Nil!63399) (Cons!63399 (h!69847 Regex!15741) (t!376851 List!63523)) )
))
(declare-datatypes ((Context!10250 0))(
  ( (Context!10251 (exprs!5625 List!63523)) )
))
(declare-fun lt!2282782 () (InoxSet Context!10250))

(declare-fun matchZipper!1879 ((InoxSet Context!10250) List!63522) Bool)

(assert (=> b!5734196 (= e!3525304 (matchZipper!1879 lt!2282782 (t!376850 s!2326)))))

(declare-fun e!3525305 () Bool)

(declare-fun e!3525292 () Bool)

(assert (=> b!5734197 (= e!3525305 e!3525292)))

(declare-fun res!2421423 () Bool)

(assert (=> b!5734197 (=> res!2421423 e!3525292)))

(declare-fun lt!2282752 () Bool)

(declare-fun lt!2282801 () Bool)

(get-info :version)

(assert (=> b!5734197 (= res!2421423 (or (not (= lt!2282752 lt!2282801)) ((_ is Nil!63398) s!2326)))))

(declare-fun Exists!2841 (Int) Bool)

(assert (=> b!5734197 (= (Exists!2841 lambda!310580) (Exists!2841 lambda!310581))))

(declare-datatypes ((Unit!156496 0))(
  ( (Unit!156497) )
))
(declare-fun lt!2282796 () Unit!156496)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1470 (Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734197 (= lt!2282796 (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326))))

(assert (=> b!5734197 (= lt!2282801 (Exists!2841 lambda!310580))))

(declare-datatypes ((Option!15750 0))(
  ( (None!15749) (Some!15749 (v!51804 tuple2!65676)) )
))
(declare-fun isDefined!12453 (Option!15750) Bool)

(declare-fun findConcatSeparation!2164 (Regex!15741 Regex!15741 List!63522 List!63522 List!63522) Option!15750)

(assert (=> b!5734197 (= lt!2282801 (isDefined!12453 (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326)))))

(declare-fun lt!2282791 () Unit!156496)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1928 (Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734197 (= lt!2282791 (lemmaFindConcatSeparationEquivalentToExists!1928 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326))))

(declare-fun b!5734198 () Bool)

(declare-fun e!3525289 () Bool)

(declare-fun e!3525286 () Bool)

(assert (=> b!5734198 (= e!3525289 e!3525286)))

(declare-fun res!2421419 () Bool)

(assert (=> b!5734198 (=> res!2421419 e!3525286)))

(declare-fun lt!2282763 () (InoxSet Context!10250))

(declare-fun lt!2282794 () Bool)

(assert (=> b!5734198 (= res!2421419 (not (= lt!2282794 (matchZipper!1879 lt!2282763 (t!376850 s!2326)))))))

(declare-fun lt!2282783 () (InoxSet Context!10250))

(assert (=> b!5734198 (= lt!2282794 (matchZipper!1879 lt!2282783 s!2326))))

(declare-fun b!5734199 () Bool)

(declare-fun e!3525295 () Bool)

(declare-fun nullable!5773 (Regex!15741) Bool)

(assert (=> b!5734199 (= e!3525295 (nullable!5773 (regOne!31994 (regOne!31994 r!7292))))))

(declare-fun b!5734200 () Bool)

(declare-fun e!3525290 () Bool)

(declare-fun e!3525281 () Bool)

(assert (=> b!5734200 (= e!3525290 e!3525281)))

(declare-fun res!2421410 () Bool)

(assert (=> b!5734200 (=> res!2421410 e!3525281)))

(declare-fun lt!2282788 () List!63522)

(assert (=> b!5734200 (= res!2421410 (not (= s!2326 lt!2282788)))))

(declare-fun lt!2282753 () tuple2!65676)

(declare-fun ++!13954 (List!63522 List!63522) List!63522)

(assert (=> b!5734200 (= lt!2282788 (++!13954 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(declare-fun lt!2282802 () Option!15750)

(declare-fun get!21867 (Option!15750) tuple2!65676)

(assert (=> b!5734200 (= lt!2282753 (get!21867 lt!2282802))))

(assert (=> b!5734200 (isDefined!12453 lt!2282802)))

(declare-fun lt!2282747 () (InoxSet Context!10250))

(declare-fun lt!2282757 () (InoxSet Context!10250))

(declare-fun findConcatSeparationZippers!128 ((InoxSet Context!10250) (InoxSet Context!10250) List!63522 List!63522 List!63522) Option!15750)

(assert (=> b!5734200 (= lt!2282802 (findConcatSeparationZippers!128 lt!2282757 lt!2282747 Nil!63398 s!2326 s!2326))))

(declare-fun lt!2282749 () Context!10250)

(declare-fun lt!2282767 () Unit!156496)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!128 ((InoxSet Context!10250) Context!10250 List!63522) Unit!156496)

(assert (=> b!5734200 (= lt!2282767 (lemmaConcatZipperMatchesStringThenFindConcatDefined!128 lt!2282757 lt!2282749 s!2326))))

(declare-fun b!5734202 () Bool)

(declare-fun e!3525297 () Bool)

(declare-fun tp_is_empty!40735 () Bool)

(assert (=> b!5734202 (= e!3525297 tp_is_empty!40735)))

(declare-fun b!5734203 () Bool)

(declare-fun e!3525300 () Bool)

(assert (=> b!5734203 (= e!3525300 e!3525280)))

(declare-fun res!2421400 () Bool)

(assert (=> b!5734203 (=> res!2421400 e!3525280)))

(assert (=> b!5734203 (= res!2421400 lt!2282752)))

(declare-fun lt!2282784 () Bool)

(declare-fun lt!2282750 () Regex!15741)

(declare-fun matchRSpec!2844 (Regex!15741 List!63522) Bool)

(assert (=> b!5734203 (= lt!2282784 (matchRSpec!2844 lt!2282750 s!2326))))

(declare-fun matchR!7926 (Regex!15741 List!63522) Bool)

(assert (=> b!5734203 (= lt!2282784 (matchR!7926 lt!2282750 s!2326))))

(declare-fun lt!2282793 () Unit!156496)

(declare-fun mainMatchTheorem!2844 (Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734203 (= lt!2282793 (mainMatchTheorem!2844 lt!2282750 s!2326))))

(declare-fun b!5734204 () Bool)

(declare-fun e!3525294 () Bool)

(declare-fun lt!2282781 () tuple2!65676)

(assert (=> b!5734204 (= e!3525294 (matchR!7926 lt!2282770 (_2!36141 lt!2282781)))))

(declare-fun setIsEmpty!38479 () Bool)

(declare-fun setRes!38479 () Bool)

(assert (=> setIsEmpty!38479 setRes!38479))

(declare-fun b!5734205 () Bool)

(declare-fun e!3525291 () Bool)

(declare-datatypes ((List!63524 0))(
  ( (Nil!63400) (Cons!63400 (h!69848 Context!10250) (t!376852 List!63524)) )
))
(declare-fun zl!343 () List!63524)

(declare-fun e!3525284 () Bool)

(declare-fun tp!1586637 () Bool)

(declare-fun inv!82599 (Context!10250) Bool)

(assert (=> b!5734205 (= e!3525291 (and (inv!82599 (h!69848 zl!343)) e!3525284 tp!1586637))))

(declare-fun b!5734206 () Bool)

(declare-fun e!3525287 () Bool)

(assert (=> b!5734206 (= e!3525287 (not (matchZipper!1879 lt!2282782 (t!376850 s!2326))))))

(declare-fun b!5734207 () Bool)

(declare-fun e!3525306 () Bool)

(declare-fun e!3525302 () Bool)

(assert (=> b!5734207 (= e!3525306 e!3525302)))

(declare-fun res!2421422 () Bool)

(assert (=> b!5734207 (=> (not res!2421422) (not e!3525302))))

(declare-fun lt!2282790 () Regex!15741)

(assert (=> b!5734207 (= res!2421422 (= r!7292 lt!2282790))))

(declare-fun unfocusZipper!1483 (List!63524) Regex!15741)

(assert (=> b!5734207 (= lt!2282790 (unfocusZipper!1483 zl!343))))

(declare-fun b!5734208 () Bool)

(declare-fun tp!1586633 () Bool)

(declare-fun tp!1586635 () Bool)

(assert (=> b!5734208 (= e!3525297 (and tp!1586633 tp!1586635))))

(declare-fun b!5734209 () Bool)

(declare-fun res!2421401 () Bool)

(assert (=> b!5734209 (=> res!2421401 e!3525286)))

(assert (=> b!5734209 (= res!2421401 (not (= lt!2282790 r!7292)))))

(declare-fun b!5734210 () Bool)

(declare-fun e!3525299 () Bool)

(assert (=> b!5734210 (= e!3525286 e!3525299)))

(declare-fun res!2421402 () Bool)

(assert (=> b!5734210 (=> res!2421402 e!3525299)))

(declare-fun lt!2282789 () Regex!15741)

(assert (=> b!5734210 (= res!2421402 (not (= r!7292 lt!2282789)))))

(assert (=> b!5734210 (= lt!2282789 (Concat!24586 lt!2282770 (regTwo!31994 r!7292)))))

(declare-fun e!3525285 () Bool)

(assert (=> b!5734211 (= e!3525292 e!3525285)))

(declare-fun res!2421427 () Bool)

(assert (=> b!5734211 (=> res!2421427 e!3525285)))

(assert (=> b!5734211 (= res!2421427 (or (and ((_ is ElementMatch!15741) (regOne!31994 r!7292)) (= (c!1011861 (regOne!31994 r!7292)) (h!69846 s!2326))) ((_ is Union!15741) (regOne!31994 r!7292))))))

(declare-fun lt!2282751 () Unit!156496)

(declare-fun e!3525293 () Unit!156496)

(assert (=> b!5734211 (= lt!2282751 e!3525293)))

(declare-fun c!1011860 () Bool)

(assert (=> b!5734211 (= c!1011860 lt!2282758)))

(assert (=> b!5734211 (= lt!2282758 (nullable!5773 (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun lambda!310582 () Int)

(declare-fun z!1189 () (InoxSet Context!10250))

(declare-fun flatMap!1354 ((InoxSet Context!10250) Int) (InoxSet Context!10250))

(declare-fun derivationStepZipperUp!1009 (Context!10250 C!31752) (InoxSet Context!10250))

(assert (=> b!5734211 (= (flatMap!1354 z!1189 lambda!310582) (derivationStepZipperUp!1009 (h!69848 zl!343) (h!69846 s!2326)))))

(declare-fun lt!2282769 () Unit!156496)

(declare-fun lemmaFlatMapOnSingletonSet!886 ((InoxSet Context!10250) Context!10250 Int) Unit!156496)

(assert (=> b!5734211 (= lt!2282769 (lemmaFlatMapOnSingletonSet!886 z!1189 (h!69848 zl!343) lambda!310582))))

(declare-fun lt!2282779 () Context!10250)

(assert (=> b!5734211 (= lt!2282782 (derivationStepZipperUp!1009 lt!2282779 (h!69846 s!2326)))))

(declare-fun lt!2282772 () (InoxSet Context!10250))

(declare-fun derivationStepZipperDown!1083 (Regex!15741 Context!10250 C!31752) (InoxSet Context!10250))

(assert (=> b!5734211 (= lt!2282772 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 (h!69848 zl!343))) lt!2282779 (h!69846 s!2326)))))

(assert (=> b!5734211 (= lt!2282779 (Context!10251 (t!376851 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun lt!2282755 () (InoxSet Context!10250))

(assert (=> b!5734211 (= lt!2282755 (derivationStepZipperUp!1009 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343))))) (h!69846 s!2326)))))

(declare-fun b!5734212 () Bool)

(declare-fun res!2421411 () Bool)

(assert (=> b!5734212 (=> res!2421411 e!3525280)))

(assert (=> b!5734212 (= res!2421411 (not (matchZipper!1879 z!1189 s!2326)))))

(declare-fun b!5734213 () Bool)

(declare-fun res!2421414 () Bool)

(assert (=> b!5734213 (=> res!2421414 e!3525281)))

(assert (=> b!5734213 (= res!2421414 (not (matchZipper!1879 lt!2282757 (_1!36141 lt!2282753))))))

(declare-fun b!5734214 () Bool)

(declare-fun tp!1586631 () Bool)

(declare-fun tp!1586630 () Bool)

(assert (=> b!5734214 (= e!3525297 (and tp!1586631 tp!1586630))))

(declare-fun b!5734215 () Bool)

(declare-fun res!2421424 () Bool)

(assert (=> b!5734215 (=> res!2421424 e!3525285)))

(assert (=> b!5734215 (= res!2421424 (or ((_ is Concat!24586) (regOne!31994 r!7292)) (not ((_ is Star!15741) (regOne!31994 r!7292)))))))

(declare-fun b!5734216 () Bool)

(declare-fun tp!1586634 () Bool)

(assert (=> b!5734216 (= e!3525284 tp!1586634)))

(declare-fun b!5734217 () Bool)

(declare-fun e!3525279 () Bool)

(assert (=> b!5734217 (= e!3525279 e!3525300)))

(declare-fun res!2421397 () Bool)

(assert (=> b!5734217 (=> res!2421397 e!3525300)))

(declare-fun lt!2282800 () List!63524)

(assert (=> b!5734217 (= res!2421397 (not (= (unfocusZipper!1483 lt!2282800) lt!2282789)))))

(assert (=> b!5734217 (= lt!2282800 (Cons!63400 lt!2282749 Nil!63400))))

(declare-fun b!5734218 () Bool)

(declare-fun e!3525296 () Bool)

(assert (=> b!5734218 (= e!3525296 lt!2282784)))

(declare-fun b!5734219 () Bool)

(declare-fun e!3525298 () Bool)

(assert (=> b!5734219 (= e!3525299 e!3525298)))

(declare-fun res!2421396 () Bool)

(assert (=> b!5734219 (=> res!2421396 e!3525298)))

(declare-fun lt!2282746 () Context!10250)

(assert (=> b!5734219 (= res!2421396 (not (= (unfocusZipper!1483 (Cons!63400 lt!2282746 Nil!63400)) lt!2282750)))))

(assert (=> b!5734219 (= lt!2282750 (Concat!24586 (reg!16070 (regOne!31994 r!7292)) lt!2282789))))

(declare-fun b!5734220 () Bool)

(declare-fun res!2421405 () Bool)

(assert (=> b!5734220 (=> (not res!2421405) (not e!3525306))))

(declare-fun toList!9525 ((InoxSet Context!10250)) List!63524)

(assert (=> b!5734220 (= res!2421405 (= (toList!9525 z!1189) zl!343))))

(declare-fun b!5734221 () Bool)

(declare-fun tp!1586629 () Bool)

(assert (=> b!5734221 (= e!3525297 tp!1586629)))

(declare-fun b!5734222 () Bool)

(declare-fun e!3525288 () Bool)

(declare-fun tp!1586632 () Bool)

(assert (=> b!5734222 (= e!3525288 (and tp_is_empty!40735 tp!1586632))))

(declare-fun b!5734201 () Bool)

(declare-fun res!2421412 () Bool)

(assert (=> b!5734201 (=> res!2421412 e!3525305)))

(declare-fun generalisedConcat!1356 (List!63523) Regex!15741)

(assert (=> b!5734201 (= res!2421412 (not (= r!7292 (generalisedConcat!1356 (exprs!5625 (h!69848 zl!343))))))))

(declare-fun res!2421409 () Bool)

(assert (=> start!590104 (=> (not res!2421409) (not e!3525306))))

(declare-fun validRegex!7477 (Regex!15741) Bool)

(assert (=> start!590104 (= res!2421409 (validRegex!7477 r!7292))))

(assert (=> start!590104 e!3525306))

(assert (=> start!590104 e!3525297))

(declare-fun condSetEmpty!38479 () Bool)

(assert (=> start!590104 (= condSetEmpty!38479 (= z!1189 ((as const (Array Context!10250 Bool)) false)))))

(assert (=> start!590104 setRes!38479))

(assert (=> start!590104 e!3525291))

(assert (=> start!590104 e!3525288))

(declare-fun b!5734223 () Bool)

(declare-fun e!3525301 () Bool)

(declare-fun tp!1586636 () Bool)

(assert (=> b!5734223 (= e!3525301 tp!1586636)))

(declare-fun b!5734224 () Bool)

(declare-fun res!2421430 () Bool)

(assert (=> b!5734224 (=> res!2421430 e!3525305)))

(assert (=> b!5734224 (= res!2421430 (or ((_ is EmptyExpr!15741) r!7292) ((_ is EmptyLang!15741) r!7292) ((_ is ElementMatch!15741) r!7292) ((_ is Union!15741) r!7292) (not ((_ is Concat!24586) r!7292))))))

(declare-fun b!5734225 () Bool)

(declare-fun res!2421404 () Bool)

(declare-fun e!3525283 () Bool)

(assert (=> b!5734225 (=> res!2421404 e!3525283)))

(declare-fun lt!2282785 () Bool)

(assert (=> b!5734225 (= res!2421404 (or (not lt!2282785) (not lt!2282794)))))

(declare-fun b!5734226 () Bool)

(assert (=> b!5734226 (= e!3525302 (not e!3525305))))

(declare-fun res!2421416 () Bool)

(assert (=> b!5734226 (=> res!2421416 e!3525305)))

(assert (=> b!5734226 (= res!2421416 (not ((_ is Cons!63400) zl!343)))))

(assert (=> b!5734226 (= lt!2282752 (matchRSpec!2844 r!7292 s!2326))))

(assert (=> b!5734226 (= lt!2282752 (matchR!7926 r!7292 s!2326))))

(declare-fun lt!2282771 () Unit!156496)

(assert (=> b!5734226 (= lt!2282771 (mainMatchTheorem!2844 r!7292 s!2326))))

(declare-fun b!5734227 () Bool)

(declare-fun res!2421399 () Bool)

(assert (=> b!5734227 (=> res!2421399 e!3525305)))

(declare-fun generalisedUnion!1604 (List!63523) Regex!15741)

(declare-fun unfocusZipperList!1169 (List!63524) List!63523)

(assert (=> b!5734227 (= res!2421399 (not (= r!7292 (generalisedUnion!1604 (unfocusZipperList!1169 zl!343)))))))

(declare-fun b!5734228 () Bool)

(assert (=> b!5734228 (= e!3525280 e!3525283)))

(declare-fun res!2421415 () Bool)

(assert (=> b!5734228 (=> res!2421415 e!3525283)))

(assert (=> b!5734228 (= res!2421415 e!3525287)))

(declare-fun res!2421395 () Bool)

(assert (=> b!5734228 (=> (not res!2421395) (not e!3525287))))

(assert (=> b!5734228 (= res!2421395 (not lt!2282785))))

(assert (=> b!5734228 (= lt!2282785 (matchZipper!1879 lt!2282772 (t!376850 s!2326)))))

(declare-fun b!5734229 () Bool)

(declare-fun Unit!156498 () Unit!156496)

(assert (=> b!5734229 (= e!3525293 Unit!156498)))

(declare-fun e!3525282 () Bool)

(assert (=> b!5734230 (= e!3525282 e!3525294)))

(declare-fun res!2421413 () Bool)

(assert (=> b!5734230 (=> res!2421413 e!3525294)))

(assert (=> b!5734230 (= res!2421413 (not (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282781))))))

(assert (=> b!5734230 (= (++!13954 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781)) (_2!36141 lt!2282777)) (++!13954 (_1!36141 lt!2282781) (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777))))))

(declare-fun lt!2282765 () Unit!156496)

(declare-fun lemmaConcatAssociativity!2884 (List!63522 List!63522 List!63522) Unit!156496)

(assert (=> b!5734230 (= lt!2282765 (lemmaConcatAssociativity!2884 (_1!36141 lt!2282781) (_2!36141 lt!2282781) (_2!36141 lt!2282777)))))

(declare-fun lt!2282766 () Option!15750)

(assert (=> b!5734230 (= lt!2282781 (get!21867 lt!2282766))))

(assert (=> b!5734230 (= (Exists!2841 lambda!310587) (Exists!2841 lambda!310589))))

(declare-fun lt!2282760 () Unit!156496)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!554 (Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734230 (= lt!2282760 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!554 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282777)))))

(assert (=> b!5734230 (= (Exists!2841 lambda!310587) (Exists!2841 lambda!310588))))

(declare-fun lt!2282764 () Unit!156496)

(assert (=> b!5734230 (= lt!2282764 (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)))))

(assert (=> b!5734230 (= (isDefined!12453 lt!2282766) (Exists!2841 lambda!310587))))

(assert (=> b!5734230 (= lt!2282766 (findConcatSeparation!2164 (reg!16070 (regOne!31994 r!7292)) lt!2282770 Nil!63398 (_1!36141 lt!2282777) (_1!36141 lt!2282777)))))

(declare-fun lt!2282741 () Unit!156496)

(assert (=> b!5734230 (= lt!2282741 (lemmaFindConcatSeparationEquivalentToExists!1928 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)))))

(assert (=> b!5734230 (matchRSpec!2844 lt!2282787 (_1!36141 lt!2282777))))

(declare-fun lt!2282756 () Unit!156496)

(assert (=> b!5734230 (= lt!2282756 (mainMatchTheorem!2844 lt!2282787 (_1!36141 lt!2282777)))))

(declare-fun b!5734231 () Bool)

(declare-fun res!2421426 () Bool)

(assert (=> b!5734231 (=> res!2421426 e!3525292)))

(declare-fun isEmpty!35277 (List!63523) Bool)

(assert (=> b!5734231 (= res!2421426 (isEmpty!35277 (t!376851 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun b!5734232 () Bool)

(declare-fun res!2421398 () Bool)

(assert (=> b!5734232 (=> res!2421398 e!3525305)))

(declare-fun isEmpty!35278 (List!63524) Bool)

(assert (=> b!5734232 (= res!2421398 (not (isEmpty!35278 (t!376852 zl!343))))))

(declare-fun b!5734233 () Bool)

(declare-fun res!2421421 () Bool)

(assert (=> b!5734233 (=> res!2421421 e!3525285)))

(assert (=> b!5734233 (= res!2421421 e!3525295)))

(declare-fun res!2421428 () Bool)

(assert (=> b!5734233 (=> (not res!2421428) (not e!3525295))))

(assert (=> b!5734233 (= res!2421428 ((_ is Concat!24586) (regOne!31994 r!7292)))))

(declare-fun b!5734234 () Bool)

(assert (=> b!5734234 (= e!3525298 e!3525279)))

(declare-fun res!2421406 () Bool)

(assert (=> b!5734234 (=> res!2421406 e!3525279)))

(declare-fun lt!2282743 () List!63524)

(assert (=> b!5734234 (= res!2421406 (not (= (unfocusZipper!1483 lt!2282743) (reg!16070 (regOne!31994 r!7292)))))))

(declare-fun lt!2282776 () Context!10250)

(assert (=> b!5734234 (= lt!2282743 (Cons!63400 lt!2282776 Nil!63400))))

(assert (=> b!5734234 (= (flatMap!1354 lt!2282747 lambda!310582) (derivationStepZipperUp!1009 lt!2282749 (h!69846 s!2326)))))

(declare-fun lt!2282748 () Unit!156496)

(assert (=> b!5734234 (= lt!2282748 (lemmaFlatMapOnSingletonSet!886 lt!2282747 lt!2282749 lambda!310582))))

(assert (=> b!5734234 (= (flatMap!1354 lt!2282757 lambda!310582) (derivationStepZipperUp!1009 lt!2282776 (h!69846 s!2326)))))

(declare-fun lt!2282774 () Unit!156496)

(assert (=> b!5734234 (= lt!2282774 (lemmaFlatMapOnSingletonSet!886 lt!2282757 lt!2282776 lambda!310582))))

(declare-fun lt!2282762 () (InoxSet Context!10250))

(assert (=> b!5734234 (= lt!2282762 (derivationStepZipperUp!1009 lt!2282749 (h!69846 s!2326)))))

(declare-fun lt!2282799 () (InoxSet Context!10250))

(assert (=> b!5734234 (= lt!2282799 (derivationStepZipperUp!1009 lt!2282776 (h!69846 s!2326)))))

(assert (=> b!5734234 (= lt!2282747 (store ((as const (Array Context!10250 Bool)) false) lt!2282749 true))))

(assert (=> b!5734234 (= lt!2282757 (store ((as const (Array Context!10250 Bool)) false) lt!2282776 true))))

(declare-fun lt!2282792 () List!63523)

(assert (=> b!5734234 (= lt!2282776 (Context!10251 lt!2282792))))

(assert (=> b!5734234 (= lt!2282792 (Cons!63399 (reg!16070 (regOne!31994 r!7292)) Nil!63399))))

(declare-fun b!5734235 () Bool)

(declare-fun res!2421408 () Bool)

(assert (=> b!5734235 (=> res!2421408 e!3525305)))

(assert (=> b!5734235 (= res!2421408 (not ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343)))))))

(assert (=> b!5734236 (= e!3525281 e!3525282)))

(declare-fun res!2421417 () Bool)

(assert (=> b!5734236 (=> res!2421417 e!3525282)))

(assert (=> b!5734236 (= res!2421417 (not (matchR!7926 lt!2282787 (_1!36141 lt!2282777))))))

(declare-fun lt!2282742 () Option!15750)

(assert (=> b!5734236 (= lt!2282777 (get!21867 lt!2282742))))

(assert (=> b!5734236 (= (Exists!2841 lambda!310585) (Exists!2841 lambda!310586))))

(declare-fun lt!2282778 () Unit!156496)

(assert (=> b!5734236 (= lt!2282778 (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 lt!2282787 (regTwo!31994 r!7292) s!2326))))

(assert (=> b!5734236 (= (isDefined!12453 lt!2282742) (Exists!2841 lambda!310585))))

(assert (=> b!5734236 (= lt!2282742 (findConcatSeparation!2164 lt!2282787 (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326))))

(declare-fun lt!2282803 () Unit!156496)

(assert (=> b!5734236 (= lt!2282803 (lemmaFindConcatSeparationEquivalentToExists!1928 lt!2282787 (regTwo!31994 r!7292) s!2326))))

(declare-fun lt!2282759 () Regex!15741)

(assert (=> b!5734236 (matchRSpec!2844 lt!2282759 s!2326)))

(declare-fun lt!2282798 () Unit!156496)

(assert (=> b!5734236 (= lt!2282798 (mainMatchTheorem!2844 lt!2282759 s!2326))))

(assert (=> b!5734236 (matchR!7926 lt!2282759 s!2326)))

(assert (=> b!5734236 (= lt!2282759 (Concat!24586 lt!2282787 (regTwo!31994 r!7292)))))

(assert (=> b!5734236 (= lt!2282787 (Concat!24586 (reg!16070 (regOne!31994 r!7292)) lt!2282770))))

(declare-fun lt!2282745 () Unit!156496)

(declare-fun lemmaConcatAssociative!94 (Regex!15741 Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734236 (= lt!2282745 (lemmaConcatAssociative!94 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (regTwo!31994 r!7292) s!2326))))

(assert (=> b!5734236 e!3525296))

(declare-fun res!2421420 () Bool)

(assert (=> b!5734236 (=> (not res!2421420) (not e!3525296))))

(assert (=> b!5734236 (= res!2421420 (matchR!7926 lt!2282750 lt!2282788))))

(declare-fun lt!2282754 () Unit!156496)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!278 (Regex!15741 Regex!15741 List!63522 List!63522) Unit!156496)

(assert (=> b!5734236 (= lt!2282754 (lemmaTwoRegexMatchThenConcatMatchesConcatString!278 (reg!16070 (regOne!31994 r!7292)) lt!2282789 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(assert (=> b!5734236 (matchR!7926 lt!2282789 (_2!36141 lt!2282753))))

(declare-fun lt!2282761 () Unit!156496)

(declare-fun theoremZipperRegexEquiv!661 ((InoxSet Context!10250) List!63524 Regex!15741 List!63522) Unit!156496)

(assert (=> b!5734236 (= lt!2282761 (theoremZipperRegexEquiv!661 lt!2282747 lt!2282800 lt!2282789 (_2!36141 lt!2282753)))))

(assert (=> b!5734236 (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753))))

(declare-fun lt!2282780 () Unit!156496)

(assert (=> b!5734236 (= lt!2282780 (theoremZipperRegexEquiv!661 lt!2282757 lt!2282743 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753)))))

(declare-fun lt!2282773 () List!63523)

(declare-fun ++!13955 (List!63523 List!63523) List!63523)

(assert (=> b!5734236 (matchZipper!1879 (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 lt!2282792 lt!2282773)) true) lt!2282788)))

(declare-fun lt!2282804 () Unit!156496)

(declare-fun lambda!310584 () Int)

(declare-fun lemmaConcatPreservesForall!310 (List!63523 List!63523 Int) Unit!156496)

(assert (=> b!5734236 (= lt!2282804 (lemmaConcatPreservesForall!310 lt!2282792 lt!2282773 lambda!310584))))

(declare-fun lt!2282797 () Unit!156496)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!140 (Context!10250 Context!10250 List!63522 List!63522) Unit!156496)

(assert (=> b!5734236 (= lt!2282797 (lemmaConcatenateContextMatchesConcatOfStrings!140 lt!2282776 lt!2282749 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(declare-fun b!5734237 () Bool)

(declare-fun e!3525303 () Bool)

(assert (=> b!5734237 (= e!3525303 e!3525289)))

(declare-fun res!2421429 () Bool)

(assert (=> b!5734237 (=> res!2421429 e!3525289)))

(declare-fun lt!2282740 () (InoxSet Context!10250))

(assert (=> b!5734237 (= res!2421429 (not (= lt!2282763 lt!2282740)))))

(assert (=> b!5734237 (= (flatMap!1354 lt!2282783 lambda!310582) (derivationStepZipperUp!1009 lt!2282746 (h!69846 s!2326)))))

(declare-fun lt!2282768 () Unit!156496)

(assert (=> b!5734237 (= lt!2282768 (lemmaFlatMapOnSingletonSet!886 lt!2282783 lt!2282746 lambda!310582))))

(declare-fun lt!2282775 () (InoxSet Context!10250))

(assert (=> b!5734237 (= lt!2282775 (derivationStepZipperUp!1009 lt!2282746 (h!69846 s!2326)))))

(declare-fun derivationStepZipper!1824 ((InoxSet Context!10250) C!31752) (InoxSet Context!10250))

(assert (=> b!5734237 (= lt!2282763 (derivationStepZipper!1824 lt!2282783 (h!69846 s!2326)))))

(assert (=> b!5734237 (= lt!2282783 (store ((as const (Array Context!10250 Bool)) false) lt!2282746 true))))

(assert (=> b!5734237 (= lt!2282746 (Context!10251 (Cons!63399 (reg!16070 (regOne!31994 r!7292)) lt!2282773)))))

(declare-fun setNonEmpty!38479 () Bool)

(declare-fun setElem!38479 () Context!10250)

(declare-fun tp!1586638 () Bool)

(assert (=> setNonEmpty!38479 (= setRes!38479 (and tp!1586638 (inv!82599 setElem!38479) e!3525301))))

(declare-fun setRest!38479 () (InoxSet Context!10250))

(assert (=> setNonEmpty!38479 (= z!1189 ((_ map or) (store ((as const (Array Context!10250 Bool)) false) setElem!38479 true) setRest!38479))))

(declare-fun b!5734238 () Bool)

(declare-fun res!2421407 () Bool)

(assert (=> b!5734238 (=> res!2421407 e!3525281)))

(assert (=> b!5734238 (= res!2421407 (not (matchZipper!1879 lt!2282747 (_2!36141 lt!2282753))))))

(declare-fun b!5734239 () Bool)

(assert (=> b!5734239 (= e!3525285 e!3525303)))

(declare-fun res!2421425 () Bool)

(assert (=> b!5734239 (=> res!2421425 e!3525303)))

(assert (=> b!5734239 (= res!2421425 (not (= lt!2282772 lt!2282740)))))

(assert (=> b!5734239 (= lt!2282740 (derivationStepZipperDown!1083 (reg!16070 (regOne!31994 r!7292)) lt!2282749 (h!69846 s!2326)))))

(assert (=> b!5734239 (= lt!2282749 (Context!10251 lt!2282773))))

(assert (=> b!5734239 (= lt!2282773 (Cons!63399 lt!2282770 (t!376851 (exprs!5625 (h!69848 zl!343)))))))

(assert (=> b!5734239 (= lt!2282770 (Star!15741 (reg!16070 (regOne!31994 r!7292))))))

(assert (=> b!5734240 (= e!3525283 e!3525290)))

(declare-fun res!2421431 () Bool)

(assert (=> b!5734240 (=> res!2421431 e!3525290)))

(declare-fun appendTo!120 ((InoxSet Context!10250) Context!10250) (InoxSet Context!10250))

(assert (=> b!5734240 (= res!2421431 (not (= (appendTo!120 lt!2282757 lt!2282749) lt!2282783)))))

(declare-fun lambda!310583 () Int)

(declare-fun map!14532 ((InoxSet Context!10250) Int) (InoxSet Context!10250))

(assert (=> b!5734240 (= (map!14532 lt!2282757 lambda!310583) (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 lt!2282792 lt!2282773)) true))))

(declare-fun lt!2282786 () Unit!156496)

(assert (=> b!5734240 (= lt!2282786 (lemmaConcatPreservesForall!310 lt!2282792 lt!2282773 lambda!310584))))

(declare-fun lt!2282795 () Unit!156496)

(declare-fun lemmaMapOnSingletonSet!136 ((InoxSet Context!10250) Context!10250 Int) Unit!156496)

(assert (=> b!5734240 (= lt!2282795 (lemmaMapOnSingletonSet!136 lt!2282757 lt!2282776 lambda!310583))))

(declare-fun b!5734241 () Bool)

(declare-fun Unit!156499 () Unit!156496)

(assert (=> b!5734241 (= e!3525293 Unit!156499)))

(declare-fun lt!2282744 () Unit!156496)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!766 ((InoxSet Context!10250) (InoxSet Context!10250) List!63522) Unit!156496)

(assert (=> b!5734241 (= lt!2282744 (lemmaZipperConcatMatchesSameAsBothZippers!766 lt!2282772 lt!2282782 (t!376850 s!2326)))))

(declare-fun res!2421403 () Bool)

(assert (=> b!5734241 (= res!2421403 (matchZipper!1879 lt!2282772 (t!376850 s!2326)))))

(assert (=> b!5734241 (=> res!2421403 e!3525304)))

(assert (=> b!5734241 (= (matchZipper!1879 ((_ map or) lt!2282772 lt!2282782) (t!376850 s!2326)) e!3525304)))

(assert (= (and start!590104 res!2421409) b!5734220))

(assert (= (and b!5734220 res!2421405) b!5734207))

(assert (= (and b!5734207 res!2421422) b!5734226))

(assert (= (and b!5734226 (not res!2421416)) b!5734232))

(assert (= (and b!5734232 (not res!2421398)) b!5734201))

(assert (= (and b!5734201 (not res!2421412)) b!5734235))

(assert (= (and b!5734235 (not res!2421408)) b!5734227))

(assert (= (and b!5734227 (not res!2421399)) b!5734224))

(assert (= (and b!5734224 (not res!2421430)) b!5734197))

(assert (= (and b!5734197 (not res!2421423)) b!5734231))

(assert (= (and b!5734231 (not res!2421426)) b!5734211))

(assert (= (and b!5734211 c!1011860) b!5734241))

(assert (= (and b!5734211 (not c!1011860)) b!5734229))

(assert (= (and b!5734241 (not res!2421403)) b!5734196))

(assert (= (and b!5734211 (not res!2421427)) b!5734233))

(assert (= (and b!5734233 res!2421428) b!5734199))

(assert (= (and b!5734233 (not res!2421421)) b!5734215))

(assert (= (and b!5734215 (not res!2421424)) b!5734239))

(assert (= (and b!5734239 (not res!2421425)) b!5734237))

(assert (= (and b!5734237 (not res!2421429)) b!5734198))

(assert (= (and b!5734198 (not res!2421419)) b!5734209))

(assert (= (and b!5734209 (not res!2421401)) b!5734210))

(assert (= (and b!5734210 (not res!2421402)) b!5734219))

(assert (= (and b!5734219 (not res!2421396)) b!5734234))

(assert (= (and b!5734234 (not res!2421406)) b!5734217))

(assert (= (and b!5734217 (not res!2421397)) b!5734203))

(assert (= (and b!5734203 (not res!2421400)) b!5734212))

(assert (= (and b!5734212 (not res!2421411)) b!5734195))

(assert (= (and b!5734195 (not res!2421418)) b!5734228))

(assert (= (and b!5734228 res!2421395) b!5734206))

(assert (= (and b!5734228 (not res!2421415)) b!5734225))

(assert (= (and b!5734225 (not res!2421404)) b!5734240))

(assert (= (and b!5734240 (not res!2421431)) b!5734200))

(assert (= (and b!5734200 (not res!2421410)) b!5734213))

(assert (= (and b!5734213 (not res!2421414)) b!5734238))

(assert (= (and b!5734238 (not res!2421407)) b!5734236))

(assert (= (and b!5734236 res!2421420) b!5734218))

(assert (= (and b!5734236 (not res!2421417)) b!5734230))

(assert (= (and b!5734230 (not res!2421413)) b!5734204))

(assert (= (and start!590104 ((_ is ElementMatch!15741) r!7292)) b!5734202))

(assert (= (and start!590104 ((_ is Concat!24586) r!7292)) b!5734214))

(assert (= (and start!590104 ((_ is Star!15741) r!7292)) b!5734221))

(assert (= (and start!590104 ((_ is Union!15741) r!7292)) b!5734208))

(assert (= (and start!590104 condSetEmpty!38479) setIsEmpty!38479))

(assert (= (and start!590104 (not condSetEmpty!38479)) setNonEmpty!38479))

(assert (= setNonEmpty!38479 b!5734223))

(assert (= b!5734205 b!5734216))

(assert (= (and start!590104 ((_ is Cons!63400) zl!343)) b!5734205))

(assert (= (and start!590104 ((_ is Cons!63398) s!2326)) b!5734222))

(declare-fun m!6686080 () Bool)

(assert (=> b!5734213 m!6686080))

(declare-fun m!6686082 () Bool)

(assert (=> b!5734234 m!6686082))

(declare-fun m!6686084 () Bool)

(assert (=> b!5734234 m!6686084))

(declare-fun m!6686086 () Bool)

(assert (=> b!5734234 m!6686086))

(declare-fun m!6686088 () Bool)

(assert (=> b!5734234 m!6686088))

(declare-fun m!6686090 () Bool)

(assert (=> b!5734234 m!6686090))

(declare-fun m!6686092 () Bool)

(assert (=> b!5734234 m!6686092))

(declare-fun m!6686094 () Bool)

(assert (=> b!5734234 m!6686094))

(declare-fun m!6686096 () Bool)

(assert (=> b!5734234 m!6686096))

(declare-fun m!6686098 () Bool)

(assert (=> b!5734234 m!6686098))

(declare-fun m!6686100 () Bool)

(assert (=> b!5734201 m!6686100))

(declare-fun m!6686102 () Bool)

(assert (=> b!5734212 m!6686102))

(declare-fun m!6686104 () Bool)

(assert (=> b!5734198 m!6686104))

(declare-fun m!6686106 () Bool)

(assert (=> b!5734198 m!6686106))

(declare-fun m!6686108 () Bool)

(assert (=> b!5734211 m!6686108))

(declare-fun m!6686110 () Bool)

(assert (=> b!5734211 m!6686110))

(declare-fun m!6686112 () Bool)

(assert (=> b!5734211 m!6686112))

(declare-fun m!6686114 () Bool)

(assert (=> b!5734211 m!6686114))

(declare-fun m!6686116 () Bool)

(assert (=> b!5734211 m!6686116))

(declare-fun m!6686118 () Bool)

(assert (=> b!5734211 m!6686118))

(declare-fun m!6686120 () Bool)

(assert (=> b!5734211 m!6686120))

(declare-fun m!6686122 () Bool)

(assert (=> b!5734230 m!6686122))

(declare-fun m!6686124 () Bool)

(assert (=> b!5734230 m!6686124))

(declare-fun m!6686126 () Bool)

(assert (=> b!5734230 m!6686126))

(declare-fun m!6686128 () Bool)

(assert (=> b!5734230 m!6686128))

(declare-fun m!6686130 () Bool)

(assert (=> b!5734230 m!6686130))

(declare-fun m!6686132 () Bool)

(assert (=> b!5734230 m!6686132))

(declare-fun m!6686134 () Bool)

(assert (=> b!5734230 m!6686134))

(assert (=> b!5734230 m!6686124))

(declare-fun m!6686136 () Bool)

(assert (=> b!5734230 m!6686136))

(declare-fun m!6686138 () Bool)

(assert (=> b!5734230 m!6686138))

(declare-fun m!6686140 () Bool)

(assert (=> b!5734230 m!6686140))

(declare-fun m!6686142 () Bool)

(assert (=> b!5734230 m!6686142))

(declare-fun m!6686144 () Bool)

(assert (=> b!5734230 m!6686144))

(declare-fun m!6686146 () Bool)

(assert (=> b!5734230 m!6686146))

(declare-fun m!6686148 () Bool)

(assert (=> b!5734230 m!6686148))

(assert (=> b!5734230 m!6686142))

(declare-fun m!6686150 () Bool)

(assert (=> b!5734230 m!6686150))

(assert (=> b!5734230 m!6686146))

(declare-fun m!6686152 () Bool)

(assert (=> b!5734230 m!6686152))

(declare-fun m!6686154 () Bool)

(assert (=> b!5734230 m!6686154))

(assert (=> b!5734230 m!6686146))

(declare-fun m!6686156 () Bool)

(assert (=> b!5734197 m!6686156))

(declare-fun m!6686158 () Bool)

(assert (=> b!5734197 m!6686158))

(declare-fun m!6686160 () Bool)

(assert (=> b!5734197 m!6686160))

(assert (=> b!5734197 m!6686160))

(declare-fun m!6686162 () Bool)

(assert (=> b!5734197 m!6686162))

(declare-fun m!6686164 () Bool)

(assert (=> b!5734197 m!6686164))

(assert (=> b!5734197 m!6686156))

(declare-fun m!6686166 () Bool)

(assert (=> b!5734197 m!6686166))

(declare-fun m!6686168 () Bool)

(assert (=> b!5734232 m!6686168))

(declare-fun m!6686170 () Bool)

(assert (=> b!5734236 m!6686170))

(declare-fun m!6686172 () Bool)

(assert (=> b!5734236 m!6686172))

(declare-fun m!6686174 () Bool)

(assert (=> b!5734236 m!6686174))

(declare-fun m!6686176 () Bool)

(assert (=> b!5734236 m!6686176))

(declare-fun m!6686178 () Bool)

(assert (=> b!5734236 m!6686178))

(declare-fun m!6686180 () Bool)

(assert (=> b!5734236 m!6686180))

(declare-fun m!6686182 () Bool)

(assert (=> b!5734236 m!6686182))

(declare-fun m!6686184 () Bool)

(assert (=> b!5734236 m!6686184))

(declare-fun m!6686186 () Bool)

(assert (=> b!5734236 m!6686186))

(declare-fun m!6686188 () Bool)

(assert (=> b!5734236 m!6686188))

(assert (=> b!5734236 m!6686170))

(declare-fun m!6686190 () Bool)

(assert (=> b!5734236 m!6686190))

(declare-fun m!6686192 () Bool)

(assert (=> b!5734236 m!6686192))

(declare-fun m!6686194 () Bool)

(assert (=> b!5734236 m!6686194))

(declare-fun m!6686196 () Bool)

(assert (=> b!5734236 m!6686196))

(declare-fun m!6686198 () Bool)

(assert (=> b!5734236 m!6686198))

(declare-fun m!6686200 () Bool)

(assert (=> b!5734236 m!6686200))

(declare-fun m!6686202 () Bool)

(assert (=> b!5734236 m!6686202))

(declare-fun m!6686204 () Bool)

(assert (=> b!5734236 m!6686204))

(declare-fun m!6686206 () Bool)

(assert (=> b!5734236 m!6686206))

(declare-fun m!6686208 () Bool)

(assert (=> b!5734236 m!6686208))

(assert (=> b!5734236 m!6686188))

(declare-fun m!6686210 () Bool)

(assert (=> b!5734236 m!6686210))

(declare-fun m!6686212 () Bool)

(assert (=> b!5734236 m!6686212))

(declare-fun m!6686214 () Bool)

(assert (=> b!5734236 m!6686214))

(declare-fun m!6686216 () Bool)

(assert (=> b!5734199 m!6686216))

(declare-fun m!6686218 () Bool)

(assert (=> b!5734205 m!6686218))

(declare-fun m!6686220 () Bool)

(assert (=> b!5734238 m!6686220))

(declare-fun m!6686222 () Bool)

(assert (=> b!5734196 m!6686222))

(declare-fun m!6686224 () Bool)

(assert (=> b!5734219 m!6686224))

(declare-fun m!6686226 () Bool)

(assert (=> start!590104 m!6686226))

(declare-fun m!6686228 () Bool)

(assert (=> b!5734220 m!6686228))

(declare-fun m!6686230 () Bool)

(assert (=> b!5734228 m!6686230))

(declare-fun m!6686232 () Bool)

(assert (=> b!5734200 m!6686232))

(declare-fun m!6686234 () Bool)

(assert (=> b!5734200 m!6686234))

(declare-fun m!6686236 () Bool)

(assert (=> b!5734200 m!6686236))

(declare-fun m!6686238 () Bool)

(assert (=> b!5734200 m!6686238))

(declare-fun m!6686240 () Bool)

(assert (=> b!5734200 m!6686240))

(declare-fun m!6686242 () Bool)

(assert (=> setNonEmpty!38479 m!6686242))

(declare-fun m!6686244 () Bool)

(assert (=> b!5734239 m!6686244))

(declare-fun m!6686246 () Bool)

(assert (=> b!5734203 m!6686246))

(declare-fun m!6686248 () Bool)

(assert (=> b!5734203 m!6686248))

(declare-fun m!6686250 () Bool)

(assert (=> b!5734203 m!6686250))

(assert (=> b!5734206 m!6686222))

(assert (=> b!5734240 m!6686200))

(declare-fun m!6686252 () Bool)

(assert (=> b!5734240 m!6686252))

(declare-fun m!6686254 () Bool)

(assert (=> b!5734240 m!6686254))

(assert (=> b!5734240 m!6686170))

(declare-fun m!6686256 () Bool)

(assert (=> b!5734240 m!6686256))

(assert (=> b!5734240 m!6686198))

(declare-fun m!6686258 () Bool)

(assert (=> b!5734227 m!6686258))

(assert (=> b!5734227 m!6686258))

(declare-fun m!6686260 () Bool)

(assert (=> b!5734227 m!6686260))

(declare-fun m!6686262 () Bool)

(assert (=> b!5734231 m!6686262))

(declare-fun m!6686264 () Bool)

(assert (=> b!5734226 m!6686264))

(declare-fun m!6686266 () Bool)

(assert (=> b!5734226 m!6686266))

(declare-fun m!6686268 () Bool)

(assert (=> b!5734226 m!6686268))

(declare-fun m!6686270 () Bool)

(assert (=> b!5734241 m!6686270))

(assert (=> b!5734241 m!6686230))

(declare-fun m!6686272 () Bool)

(assert (=> b!5734241 m!6686272))

(declare-fun m!6686274 () Bool)

(assert (=> b!5734204 m!6686274))

(declare-fun m!6686276 () Bool)

(assert (=> b!5734237 m!6686276))

(declare-fun m!6686278 () Bool)

(assert (=> b!5734237 m!6686278))

(declare-fun m!6686280 () Bool)

(assert (=> b!5734237 m!6686280))

(declare-fun m!6686282 () Bool)

(assert (=> b!5734237 m!6686282))

(declare-fun m!6686284 () Bool)

(assert (=> b!5734237 m!6686284))

(declare-fun m!6686286 () Bool)

(assert (=> b!5734207 m!6686286))

(declare-fun m!6686288 () Bool)

(assert (=> b!5734217 m!6686288))

(check-sat tp_is_empty!40735 (not b!5734240) (not b!5734222) (not b!5734196) (not setNonEmpty!38479) (not b!5734208) (not b!5734213) (not b!5734200) (not b!5734199) (not b!5734236) (not b!5734211) (not b!5734217) (not b!5734226) (not b!5734220) (not b!5734237) (not b!5734212) (not b!5734231) (not b!5734203) (not b!5734197) (not b!5734198) (not b!5734206) (not b!5734221) (not b!5734214) (not b!5734207) (not b!5734241) (not b!5734201) (not start!590104) (not b!5734239) (not b!5734228) (not b!5734216) (not b!5734234) (not b!5734223) (not b!5734204) (not b!5734238) (not b!5734205) (not b!5734219) (not b!5734230) (not b!5734227) (not b!5734232))
(check-sat)
(get-model)

(declare-fun d!1808038 () Bool)

(declare-fun c!1011949 () Bool)

(declare-fun isEmpty!35280 (List!63522) Bool)

(assert (=> d!1808038 (= c!1011949 (isEmpty!35280 (t!376850 s!2326)))))

(declare-fun e!3525444 () Bool)

(assert (=> d!1808038 (= (matchZipper!1879 lt!2282782 (t!376850 s!2326)) e!3525444)))

(declare-fun b!5734498 () Bool)

(declare-fun nullableZipper!1681 ((InoxSet Context!10250)) Bool)

(assert (=> b!5734498 (= e!3525444 (nullableZipper!1681 lt!2282782))))

(declare-fun b!5734499 () Bool)

(declare-fun head!12142 (List!63522) C!31752)

(declare-fun tail!11237 (List!63522) List!63522)

(assert (=> b!5734499 (= e!3525444 (matchZipper!1879 (derivationStepZipper!1824 lt!2282782 (head!12142 (t!376850 s!2326))) (tail!11237 (t!376850 s!2326))))))

(assert (= (and d!1808038 c!1011949) b!5734498))

(assert (= (and d!1808038 (not c!1011949)) b!5734499))

(declare-fun m!6686476 () Bool)

(assert (=> d!1808038 m!6686476))

(declare-fun m!6686478 () Bool)

(assert (=> b!5734498 m!6686478))

(declare-fun m!6686480 () Bool)

(assert (=> b!5734499 m!6686480))

(assert (=> b!5734499 m!6686480))

(declare-fun m!6686482 () Bool)

(assert (=> b!5734499 m!6686482))

(declare-fun m!6686484 () Bool)

(assert (=> b!5734499 m!6686484))

(assert (=> b!5734499 m!6686482))

(assert (=> b!5734499 m!6686484))

(declare-fun m!6686486 () Bool)

(assert (=> b!5734499 m!6686486))

(assert (=> b!5734196 d!1808038))

(declare-fun d!1808044 () Bool)

(declare-fun choose!43435 ((InoxSet Context!10250) Int) (InoxSet Context!10250))

(assert (=> d!1808044 (= (flatMap!1354 lt!2282783 lambda!310582) (choose!43435 lt!2282783 lambda!310582))))

(declare-fun bs!1340306 () Bool)

(assert (= bs!1340306 d!1808044))

(declare-fun m!6686488 () Bool)

(assert (=> bs!1340306 m!6686488))

(assert (=> b!5734237 d!1808044))

(declare-fun b!5734525 () Bool)

(declare-fun e!3525463 () Bool)

(assert (=> b!5734525 (= e!3525463 (nullable!5773 (h!69847 (exprs!5625 lt!2282746))))))

(declare-fun b!5734526 () Bool)

(declare-fun e!3525462 () (InoxSet Context!10250))

(declare-fun e!3525461 () (InoxSet Context!10250))

(assert (=> b!5734526 (= e!3525462 e!3525461)))

(declare-fun c!1011959 () Bool)

(assert (=> b!5734526 (= c!1011959 ((_ is Cons!63399) (exprs!5625 lt!2282746)))))

(declare-fun bm!438398 () Bool)

(declare-fun call!438403 () (InoxSet Context!10250))

(assert (=> bm!438398 (= call!438403 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 lt!2282746)) (Context!10251 (t!376851 (exprs!5625 lt!2282746))) (h!69846 s!2326)))))

(declare-fun b!5734528 () Bool)

(assert (=> b!5734528 (= e!3525462 ((_ map or) call!438403 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 lt!2282746))) (h!69846 s!2326))))))

(declare-fun b!5734529 () Bool)

(assert (=> b!5734529 (= e!3525461 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5734527 () Bool)

(assert (=> b!5734527 (= e!3525461 call!438403)))

(declare-fun d!1808046 () Bool)

(declare-fun c!1011960 () Bool)

(assert (=> d!1808046 (= c!1011960 e!3525463)))

(declare-fun res!2421515 () Bool)

(assert (=> d!1808046 (=> (not res!2421515) (not e!3525463))))

(assert (=> d!1808046 (= res!2421515 ((_ is Cons!63399) (exprs!5625 lt!2282746)))))

(assert (=> d!1808046 (= (derivationStepZipperUp!1009 lt!2282746 (h!69846 s!2326)) e!3525462)))

(assert (= (and d!1808046 res!2421515) b!5734525))

(assert (= (and d!1808046 c!1011960) b!5734528))

(assert (= (and d!1808046 (not c!1011960)) b!5734526))

(assert (= (and b!5734526 c!1011959) b!5734527))

(assert (= (and b!5734526 (not c!1011959)) b!5734529))

(assert (= (or b!5734528 b!5734527) bm!438398))

(declare-fun m!6686522 () Bool)

(assert (=> b!5734525 m!6686522))

(declare-fun m!6686524 () Bool)

(assert (=> bm!438398 m!6686524))

(declare-fun m!6686526 () Bool)

(assert (=> b!5734528 m!6686526))

(assert (=> b!5734237 d!1808046))

(declare-fun d!1808060 () Bool)

(declare-fun dynLambda!24810 (Int Context!10250) (InoxSet Context!10250))

(assert (=> d!1808060 (= (flatMap!1354 lt!2282783 lambda!310582) (dynLambda!24810 lambda!310582 lt!2282746))))

(declare-fun lt!2282842 () Unit!156496)

(declare-fun choose!43436 ((InoxSet Context!10250) Context!10250 Int) Unit!156496)

(assert (=> d!1808060 (= lt!2282842 (choose!43436 lt!2282783 lt!2282746 lambda!310582))))

(assert (=> d!1808060 (= lt!2282783 (store ((as const (Array Context!10250 Bool)) false) lt!2282746 true))))

(assert (=> d!1808060 (= (lemmaFlatMapOnSingletonSet!886 lt!2282783 lt!2282746 lambda!310582) lt!2282842)))

(declare-fun b_lambda!216615 () Bool)

(assert (=> (not b_lambda!216615) (not d!1808060)))

(declare-fun bs!1340313 () Bool)

(assert (= bs!1340313 d!1808060))

(assert (=> bs!1340313 m!6686278))

(declare-fun m!6686534 () Bool)

(assert (=> bs!1340313 m!6686534))

(declare-fun m!6686536 () Bool)

(assert (=> bs!1340313 m!6686536))

(assert (=> bs!1340313 m!6686282))

(assert (=> b!5734237 d!1808060))

(declare-fun bs!1340314 () Bool)

(declare-fun d!1808064 () Bool)

(assert (= bs!1340314 (and d!1808064 b!5734211)))

(declare-fun lambda!310614 () Int)

(assert (=> bs!1340314 (= lambda!310614 lambda!310582)))

(assert (=> d!1808064 true))

(assert (=> d!1808064 (= (derivationStepZipper!1824 lt!2282783 (h!69846 s!2326)) (flatMap!1354 lt!2282783 lambda!310614))))

(declare-fun bs!1340315 () Bool)

(assert (= bs!1340315 d!1808064))

(declare-fun m!6686538 () Bool)

(assert (=> bs!1340315 m!6686538))

(assert (=> b!5734237 d!1808064))

(declare-fun d!1808066 () Bool)

(declare-fun isEmpty!35281 (Option!15750) Bool)

(assert (=> d!1808066 (= (isDefined!12453 lt!2282742) (not (isEmpty!35281 lt!2282742)))))

(declare-fun bs!1340316 () Bool)

(assert (= bs!1340316 d!1808066))

(declare-fun m!6686540 () Bool)

(assert (=> bs!1340316 m!6686540))

(assert (=> b!5734236 d!1808066))

(declare-fun d!1808068 () Bool)

(declare-fun forall!14866 (List!63523 Int) Bool)

(assert (=> d!1808068 (forall!14866 (++!13955 lt!2282792 lt!2282773) lambda!310584)))

(declare-fun lt!2282851 () Unit!156496)

(declare-fun choose!43437 (List!63523 List!63523 Int) Unit!156496)

(assert (=> d!1808068 (= lt!2282851 (choose!43437 lt!2282792 lt!2282773 lambda!310584))))

(assert (=> d!1808068 (forall!14866 lt!2282792 lambda!310584)))

(assert (=> d!1808068 (= (lemmaConcatPreservesForall!310 lt!2282792 lt!2282773 lambda!310584) lt!2282851)))

(declare-fun bs!1340317 () Bool)

(assert (= bs!1340317 d!1808068))

(assert (=> bs!1340317 m!6686200))

(assert (=> bs!1340317 m!6686200))

(declare-fun m!6686542 () Bool)

(assert (=> bs!1340317 m!6686542))

(declare-fun m!6686544 () Bool)

(assert (=> bs!1340317 m!6686544))

(declare-fun m!6686546 () Bool)

(assert (=> bs!1340317 m!6686546))

(assert (=> b!5734236 d!1808068))

(declare-fun b!5734633 () Bool)

(declare-fun e!3525521 () Bool)

(declare-fun lt!2282868 () Option!15750)

(assert (=> b!5734633 (= e!3525521 (not (isDefined!12453 lt!2282868)))))

(declare-fun b!5734634 () Bool)

(declare-fun res!2421573 () Bool)

(declare-fun e!3525520 () Bool)

(assert (=> b!5734634 (=> (not res!2421573) (not e!3525520))))

(assert (=> b!5734634 (= res!2421573 (matchR!7926 lt!2282787 (_1!36141 (get!21867 lt!2282868))))))

(declare-fun b!5734635 () Bool)

(declare-fun e!3525523 () Bool)

(assert (=> b!5734635 (= e!3525523 (matchR!7926 (regTwo!31994 r!7292) s!2326))))

(declare-fun b!5734636 () Bool)

(assert (=> b!5734636 (= e!3525520 (= (++!13954 (_1!36141 (get!21867 lt!2282868)) (_2!36141 (get!21867 lt!2282868))) s!2326))))

(declare-fun d!1808070 () Bool)

(assert (=> d!1808070 e!3525521))

(declare-fun res!2421576 () Bool)

(assert (=> d!1808070 (=> res!2421576 e!3525521)))

(assert (=> d!1808070 (= res!2421576 e!3525520)))

(declare-fun res!2421575 () Bool)

(assert (=> d!1808070 (=> (not res!2421575) (not e!3525520))))

(assert (=> d!1808070 (= res!2421575 (isDefined!12453 lt!2282868))))

(declare-fun e!3525522 () Option!15750)

(assert (=> d!1808070 (= lt!2282868 e!3525522)))

(declare-fun c!1011986 () Bool)

(assert (=> d!1808070 (= c!1011986 e!3525523)))

(declare-fun res!2421574 () Bool)

(assert (=> d!1808070 (=> (not res!2421574) (not e!3525523))))

(assert (=> d!1808070 (= res!2421574 (matchR!7926 lt!2282787 Nil!63398))))

(assert (=> d!1808070 (validRegex!7477 lt!2282787)))

(assert (=> d!1808070 (= (findConcatSeparation!2164 lt!2282787 (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326) lt!2282868)))

(declare-fun b!5734637 () Bool)

(declare-fun lt!2282869 () Unit!156496)

(declare-fun lt!2282870 () Unit!156496)

(assert (=> b!5734637 (= lt!2282869 lt!2282870)))

(assert (=> b!5734637 (= (++!13954 (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2083 (List!63522 C!31752 List!63522 List!63522) Unit!156496)

(assert (=> b!5734637 (= lt!2282870 (lemmaMoveElementToOtherListKeepsConcatEq!2083 Nil!63398 (h!69846 s!2326) (t!376850 s!2326) s!2326))))

(declare-fun e!3525519 () Option!15750)

(assert (=> b!5734637 (= e!3525519 (findConcatSeparation!2164 lt!2282787 (regTwo!31994 r!7292) (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326) s!2326))))

(declare-fun b!5734638 () Bool)

(declare-fun res!2421577 () Bool)

(assert (=> b!5734638 (=> (not res!2421577) (not e!3525520))))

(assert (=> b!5734638 (= res!2421577 (matchR!7926 (regTwo!31994 r!7292) (_2!36141 (get!21867 lt!2282868))))))

(declare-fun b!5734639 () Bool)

(assert (=> b!5734639 (= e!3525522 (Some!15749 (tuple2!65677 Nil!63398 s!2326)))))

(declare-fun b!5734640 () Bool)

(assert (=> b!5734640 (= e!3525519 None!15749)))

(declare-fun b!5734641 () Bool)

(assert (=> b!5734641 (= e!3525522 e!3525519)))

(declare-fun c!1011985 () Bool)

(assert (=> b!5734641 (= c!1011985 ((_ is Nil!63398) s!2326))))

(assert (= (and d!1808070 res!2421574) b!5734635))

(assert (= (and d!1808070 c!1011986) b!5734639))

(assert (= (and d!1808070 (not c!1011986)) b!5734641))

(assert (= (and b!5734641 c!1011985) b!5734640))

(assert (= (and b!5734641 (not c!1011985)) b!5734637))

(assert (= (and d!1808070 res!2421575) b!5734634))

(assert (= (and b!5734634 res!2421573) b!5734638))

(assert (= (and b!5734638 res!2421577) b!5734636))

(assert (= (and d!1808070 (not res!2421576)) b!5734633))

(declare-fun m!6686626 () Bool)

(assert (=> b!5734637 m!6686626))

(assert (=> b!5734637 m!6686626))

(declare-fun m!6686628 () Bool)

(assert (=> b!5734637 m!6686628))

(declare-fun m!6686630 () Bool)

(assert (=> b!5734637 m!6686630))

(assert (=> b!5734637 m!6686626))

(declare-fun m!6686632 () Bool)

(assert (=> b!5734637 m!6686632))

(declare-fun m!6686634 () Bool)

(assert (=> b!5734638 m!6686634))

(declare-fun m!6686636 () Bool)

(assert (=> b!5734638 m!6686636))

(declare-fun m!6686638 () Bool)

(assert (=> b!5734635 m!6686638))

(declare-fun m!6686640 () Bool)

(assert (=> b!5734633 m!6686640))

(assert (=> b!5734636 m!6686634))

(declare-fun m!6686642 () Bool)

(assert (=> b!5734636 m!6686642))

(assert (=> d!1808070 m!6686640))

(declare-fun m!6686644 () Bool)

(assert (=> d!1808070 m!6686644))

(declare-fun m!6686646 () Bool)

(assert (=> d!1808070 m!6686646))

(assert (=> b!5734634 m!6686634))

(declare-fun m!6686648 () Bool)

(assert (=> b!5734634 m!6686648))

(assert (=> b!5734236 d!1808070))

(declare-fun bs!1340348 () Bool)

(declare-fun d!1808088 () Bool)

(assert (= bs!1340348 (and d!1808088 b!5734236)))

(declare-fun lambda!310628 () Int)

(assert (=> bs!1340348 (= lambda!310628 lambda!310585)))

(declare-fun bs!1340349 () Bool)

(assert (= bs!1340349 (and d!1808088 b!5734230)))

(assert (=> bs!1340349 (not (= lambda!310628 lambda!310589))))

(assert (=> bs!1340349 (= (and (= s!2326 (_1!36141 lt!2282777)) (= lt!2282787 (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310628 lambda!310587))))

(assert (=> bs!1340348 (not (= lambda!310628 lambda!310586))))

(assert (=> bs!1340349 (not (= lambda!310628 lambda!310588))))

(declare-fun bs!1340352 () Bool)

(assert (= bs!1340352 (and d!1808088 b!5734197)))

(assert (=> bs!1340352 (not (= lambda!310628 lambda!310581))))

(assert (=> bs!1340352 (= (= lt!2282787 (regOne!31994 r!7292)) (= lambda!310628 lambda!310580))))

(assert (=> d!1808088 true))

(assert (=> d!1808088 true))

(assert (=> d!1808088 true))

(assert (=> d!1808088 (= (isDefined!12453 (findConcatSeparation!2164 lt!2282787 (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326)) (Exists!2841 lambda!310628))))

(declare-fun lt!2282883 () Unit!156496)

(declare-fun choose!43441 (Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808088 (= lt!2282883 (choose!43441 lt!2282787 (regTwo!31994 r!7292) s!2326))))

(assert (=> d!1808088 (validRegex!7477 lt!2282787)))

(assert (=> d!1808088 (= (lemmaFindConcatSeparationEquivalentToExists!1928 lt!2282787 (regTwo!31994 r!7292) s!2326) lt!2282883)))

(declare-fun bs!1340353 () Bool)

(assert (= bs!1340353 d!1808088))

(assert (=> bs!1340353 m!6686190))

(declare-fun m!6686694 () Bool)

(assert (=> bs!1340353 m!6686694))

(declare-fun m!6686696 () Bool)

(assert (=> bs!1340353 m!6686696))

(assert (=> bs!1340353 m!6686190))

(declare-fun m!6686698 () Bool)

(assert (=> bs!1340353 m!6686698))

(assert (=> bs!1340353 m!6686646))

(assert (=> b!5734236 d!1808088))

(declare-fun d!1808106 () Bool)

(assert (=> d!1808106 (= (matchR!7926 lt!2282759 s!2326) (matchRSpec!2844 lt!2282759 s!2326))))

(declare-fun lt!2282894 () Unit!156496)

(declare-fun choose!43442 (Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808106 (= lt!2282894 (choose!43442 lt!2282759 s!2326))))

(assert (=> d!1808106 (validRegex!7477 lt!2282759)))

(assert (=> d!1808106 (= (mainMatchTheorem!2844 lt!2282759 s!2326) lt!2282894)))

(declare-fun bs!1340354 () Bool)

(assert (= bs!1340354 d!1808106))

(assert (=> bs!1340354 m!6686194))

(assert (=> bs!1340354 m!6686184))

(declare-fun m!6686722 () Bool)

(assert (=> bs!1340354 m!6686722))

(declare-fun m!6686724 () Bool)

(assert (=> bs!1340354 m!6686724))

(assert (=> b!5734236 d!1808106))

(declare-fun b!5734752 () Bool)

(declare-fun e!3525587 () Bool)

(declare-fun e!3525582 () Bool)

(assert (=> b!5734752 (= e!3525587 e!3525582)))

(declare-fun res!2421641 () Bool)

(assert (=> b!5734752 (=> (not res!2421641) (not e!3525582))))

(declare-fun lt!2282903 () Bool)

(assert (=> b!5734752 (= res!2421641 (not lt!2282903))))

(declare-fun b!5734753 () Bool)

(declare-fun e!3525585 () Bool)

(assert (=> b!5734753 (= e!3525585 (not (= (head!12142 (_1!36141 lt!2282753)) (c!1011861 (reg!16070 (regOne!31994 r!7292))))))))

(declare-fun b!5734754 () Bool)

(declare-fun e!3525581 () Bool)

(assert (=> b!5734754 (= e!3525581 (not lt!2282903))))

(declare-fun b!5734755 () Bool)

(declare-fun res!2421642 () Bool)

(assert (=> b!5734755 (=> res!2421642 e!3525587)))

(assert (=> b!5734755 (= res!2421642 (not ((_ is ElementMatch!15741) (reg!16070 (regOne!31994 r!7292)))))))

(assert (=> b!5734755 (= e!3525581 e!3525587)))

(declare-fun b!5734757 () Bool)

(declare-fun e!3525584 () Bool)

(assert (=> b!5734757 (= e!3525584 e!3525581)))

(declare-fun c!1012014 () Bool)

(assert (=> b!5734757 (= c!1012014 ((_ is EmptyLang!15741) (reg!16070 (regOne!31994 r!7292))))))

(declare-fun b!5734758 () Bool)

(declare-fun e!3525586 () Bool)

(declare-fun derivativeStep!4534 (Regex!15741 C!31752) Regex!15741)

(assert (=> b!5734758 (= e!3525586 (matchR!7926 (derivativeStep!4534 (reg!16070 (regOne!31994 r!7292)) (head!12142 (_1!36141 lt!2282753))) (tail!11237 (_1!36141 lt!2282753))))))

(declare-fun b!5734759 () Bool)

(declare-fun res!2421645 () Bool)

(declare-fun e!3525583 () Bool)

(assert (=> b!5734759 (=> (not res!2421645) (not e!3525583))))

(declare-fun call!438419 () Bool)

(assert (=> b!5734759 (= res!2421645 (not call!438419))))

(declare-fun b!5734760 () Bool)

(assert (=> b!5734760 (= e!3525586 (nullable!5773 (reg!16070 (regOne!31994 r!7292))))))

(declare-fun b!5734761 () Bool)

(assert (=> b!5734761 (= e!3525584 (= lt!2282903 call!438419))))

(declare-fun b!5734762 () Bool)

(declare-fun res!2421643 () Bool)

(assert (=> b!5734762 (=> res!2421643 e!3525585)))

(assert (=> b!5734762 (= res!2421643 (not (isEmpty!35280 (tail!11237 (_1!36141 lt!2282753)))))))

(declare-fun b!5734763 () Bool)

(declare-fun res!2421644 () Bool)

(assert (=> b!5734763 (=> (not res!2421644) (not e!3525583))))

(assert (=> b!5734763 (= res!2421644 (isEmpty!35280 (tail!11237 (_1!36141 lt!2282753))))))

(declare-fun b!5734764 () Bool)

(declare-fun res!2421640 () Bool)

(assert (=> b!5734764 (=> res!2421640 e!3525587)))

(assert (=> b!5734764 (= res!2421640 e!3525583)))

(declare-fun res!2421639 () Bool)

(assert (=> b!5734764 (=> (not res!2421639) (not e!3525583))))

(assert (=> b!5734764 (= res!2421639 lt!2282903)))

(declare-fun d!1808112 () Bool)

(assert (=> d!1808112 e!3525584))

(declare-fun c!1012012 () Bool)

(assert (=> d!1808112 (= c!1012012 ((_ is EmptyExpr!15741) (reg!16070 (regOne!31994 r!7292))))))

(assert (=> d!1808112 (= lt!2282903 e!3525586)))

(declare-fun c!1012013 () Bool)

(assert (=> d!1808112 (= c!1012013 (isEmpty!35280 (_1!36141 lt!2282753)))))

(assert (=> d!1808112 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808112 (= (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753)) lt!2282903)))

(declare-fun b!5734756 () Bool)

(assert (=> b!5734756 (= e!3525582 e!3525585)))

(declare-fun res!2421638 () Bool)

(assert (=> b!5734756 (=> res!2421638 e!3525585)))

(assert (=> b!5734756 (= res!2421638 call!438419)))

(declare-fun bm!438414 () Bool)

(assert (=> bm!438414 (= call!438419 (isEmpty!35280 (_1!36141 lt!2282753)))))

(declare-fun b!5734765 () Bool)

(assert (=> b!5734765 (= e!3525583 (= (head!12142 (_1!36141 lt!2282753)) (c!1011861 (reg!16070 (regOne!31994 r!7292)))))))

(assert (= (and d!1808112 c!1012013) b!5734760))

(assert (= (and d!1808112 (not c!1012013)) b!5734758))

(assert (= (and d!1808112 c!1012012) b!5734761))

(assert (= (and d!1808112 (not c!1012012)) b!5734757))

(assert (= (and b!5734757 c!1012014) b!5734754))

(assert (= (and b!5734757 (not c!1012014)) b!5734755))

(assert (= (and b!5734755 (not res!2421642)) b!5734764))

(assert (= (and b!5734764 res!2421639) b!5734759))

(assert (= (and b!5734759 res!2421645) b!5734763))

(assert (= (and b!5734763 res!2421644) b!5734765))

(assert (= (and b!5734764 (not res!2421640)) b!5734752))

(assert (= (and b!5734752 res!2421641) b!5734756))

(assert (= (and b!5734756 (not res!2421638)) b!5734762))

(assert (= (and b!5734762 (not res!2421643)) b!5734753))

(assert (= (or b!5734761 b!5734756 b!5734759) bm!438414))

(declare-fun m!6686766 () Bool)

(assert (=> b!5734765 m!6686766))

(declare-fun m!6686768 () Bool)

(assert (=> bm!438414 m!6686768))

(assert (=> b!5734753 m!6686766))

(declare-fun m!6686770 () Bool)

(assert (=> b!5734763 m!6686770))

(assert (=> b!5734763 m!6686770))

(declare-fun m!6686772 () Bool)

(assert (=> b!5734763 m!6686772))

(assert (=> b!5734758 m!6686766))

(assert (=> b!5734758 m!6686766))

(declare-fun m!6686774 () Bool)

(assert (=> b!5734758 m!6686774))

(assert (=> b!5734758 m!6686770))

(assert (=> b!5734758 m!6686774))

(assert (=> b!5734758 m!6686770))

(declare-fun m!6686776 () Bool)

(assert (=> b!5734758 m!6686776))

(assert (=> b!5734762 m!6686770))

(assert (=> b!5734762 m!6686770))

(assert (=> b!5734762 m!6686772))

(assert (=> d!1808112 m!6686768))

(declare-fun m!6686778 () Bool)

(assert (=> d!1808112 m!6686778))

(declare-fun m!6686780 () Bool)

(assert (=> b!5734760 m!6686780))

(assert (=> b!5734236 d!1808112))

(declare-fun d!1808128 () Bool)

(declare-fun choose!43443 (Int) Bool)

(assert (=> d!1808128 (= (Exists!2841 lambda!310586) (choose!43443 lambda!310586))))

(declare-fun bs!1340365 () Bool)

(assert (= bs!1340365 d!1808128))

(declare-fun m!6686782 () Bool)

(assert (=> bs!1340365 m!6686782))

(assert (=> b!5734236 d!1808128))

(declare-fun bs!1340371 () Bool)

(declare-fun d!1808130 () Bool)

(assert (= bs!1340371 (and d!1808130 b!5734240)))

(declare-fun lambda!310635 () Int)

(assert (=> bs!1340371 (= lambda!310635 lambda!310584)))

(assert (=> d!1808130 (matchZipper!1879 (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 (exprs!5625 lt!2282776) (exprs!5625 lt!2282749))) true) (++!13954 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(declare-fun lt!2282917 () Unit!156496)

(assert (=> d!1808130 (= lt!2282917 (lemmaConcatPreservesForall!310 (exprs!5625 lt!2282776) (exprs!5625 lt!2282749) lambda!310635))))

(declare-fun lt!2282916 () Unit!156496)

(declare-fun choose!43444 (Context!10250 Context!10250 List!63522 List!63522) Unit!156496)

(assert (=> d!1808130 (= lt!2282916 (choose!43444 lt!2282776 lt!2282749 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(assert (=> d!1808130 (matchZipper!1879 (store ((as const (Array Context!10250 Bool)) false) lt!2282776 true) (_1!36141 lt!2282753))))

(assert (=> d!1808130 (= (lemmaConcatenateContextMatchesConcatOfStrings!140 lt!2282776 lt!2282749 (_1!36141 lt!2282753) (_2!36141 lt!2282753)) lt!2282916)))

(declare-fun bs!1340373 () Bool)

(assert (= bs!1340373 d!1808130))

(declare-fun m!6686812 () Bool)

(assert (=> bs!1340373 m!6686812))

(declare-fun m!6686814 () Bool)

(assert (=> bs!1340373 m!6686814))

(declare-fun m!6686816 () Bool)

(assert (=> bs!1340373 m!6686816))

(declare-fun m!6686818 () Bool)

(assert (=> bs!1340373 m!6686818))

(assert (=> bs!1340373 m!6686816))

(assert (=> bs!1340373 m!6686234))

(declare-fun m!6686820 () Bool)

(assert (=> bs!1340373 m!6686820))

(assert (=> bs!1340373 m!6686234))

(assert (=> bs!1340373 m!6686092))

(assert (=> bs!1340373 m!6686092))

(declare-fun m!6686822 () Bool)

(assert (=> bs!1340373 m!6686822))

(assert (=> b!5734236 d!1808130))

(declare-fun bs!1340394 () Bool)

(declare-fun b!5734841 () Bool)

(assert (= bs!1340394 (and b!5734841 b!5734236)))

(declare-fun lambda!310644 () Int)

(assert (=> bs!1340394 (not (= lambda!310644 lambda!310585))))

(declare-fun bs!1340395 () Bool)

(assert (= bs!1340395 (and b!5734841 b!5734230)))

(assert (=> bs!1340395 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 lt!2282759) (reg!16070 (regOne!31994 r!7292))) (= lt!2282759 lt!2282770)) (= lambda!310644 lambda!310589))))

(assert (=> bs!1340395 (not (= lambda!310644 lambda!310587))))

(assert (=> bs!1340394 (not (= lambda!310644 lambda!310586))))

(assert (=> bs!1340395 (not (= lambda!310644 lambda!310588))))

(declare-fun bs!1340396 () Bool)

(assert (= bs!1340396 (and b!5734841 b!5734197)))

(assert (=> bs!1340396 (not (= lambda!310644 lambda!310581))))

(declare-fun bs!1340397 () Bool)

(assert (= bs!1340397 (and b!5734841 d!1808088)))

(assert (=> bs!1340397 (not (= lambda!310644 lambda!310628))))

(assert (=> bs!1340396 (not (= lambda!310644 lambda!310580))))

(assert (=> b!5734841 true))

(assert (=> b!5734841 true))

(declare-fun bs!1340398 () Bool)

(declare-fun b!5734838 () Bool)

(assert (= bs!1340398 (and b!5734838 b!5734236)))

(declare-fun lambda!310647 () Int)

(assert (=> bs!1340398 (not (= lambda!310647 lambda!310585))))

(declare-fun bs!1340399 () Bool)

(assert (= bs!1340399 (and b!5734838 b!5734230)))

(assert (=> bs!1340399 (not (= lambda!310647 lambda!310589))))

(assert (=> bs!1340399 (not (= lambda!310647 lambda!310587))))

(declare-fun bs!1340400 () Bool)

(assert (= bs!1340400 (and b!5734838 b!5734841)))

(assert (=> bs!1340400 (not (= lambda!310647 lambda!310644))))

(assert (=> bs!1340398 (= (and (= (regOne!31994 lt!2282759) lt!2282787) (= (regTwo!31994 lt!2282759) (regTwo!31994 r!7292))) (= lambda!310647 lambda!310586))))

(assert (=> bs!1340399 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 lt!2282759) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 lt!2282759) lt!2282770)) (= lambda!310647 lambda!310588))))

(declare-fun bs!1340401 () Bool)

(assert (= bs!1340401 (and b!5734838 b!5734197)))

(assert (=> bs!1340401 (= (and (= (regOne!31994 lt!2282759) (regOne!31994 r!7292)) (= (regTwo!31994 lt!2282759) (regTwo!31994 r!7292))) (= lambda!310647 lambda!310581))))

(declare-fun bs!1340402 () Bool)

(assert (= bs!1340402 (and b!5734838 d!1808088)))

(assert (=> bs!1340402 (not (= lambda!310647 lambda!310628))))

(assert (=> bs!1340401 (not (= lambda!310647 lambda!310580))))

(assert (=> b!5734838 true))

(assert (=> b!5734838 true))

(declare-fun b!5734832 () Bool)

(declare-fun c!1012031 () Bool)

(assert (=> b!5734832 (= c!1012031 ((_ is ElementMatch!15741) lt!2282759))))

(declare-fun e!3525629 () Bool)

(declare-fun e!3525626 () Bool)

(assert (=> b!5734832 (= e!3525629 e!3525626)))

(declare-fun b!5734833 () Bool)

(declare-fun e!3525623 () Bool)

(assert (=> b!5734833 (= e!3525623 (matchRSpec!2844 (regTwo!31995 lt!2282759) s!2326))))

(declare-fun b!5734834 () Bool)

(assert (=> b!5734834 (= e!3525626 (= s!2326 (Cons!63398 (c!1011861 lt!2282759) Nil!63398)))))

(declare-fun b!5734835 () Bool)

(declare-fun res!2421682 () Bool)

(declare-fun e!3525624 () Bool)

(assert (=> b!5734835 (=> res!2421682 e!3525624)))

(declare-fun call!438426 () Bool)

(assert (=> b!5734835 (= res!2421682 call!438426)))

(declare-fun e!3525625 () Bool)

(assert (=> b!5734835 (= e!3525625 e!3525624)))

(declare-fun bm!438420 () Bool)

(assert (=> bm!438420 (= call!438426 (isEmpty!35280 s!2326))))

(declare-fun d!1808140 () Bool)

(declare-fun c!1012032 () Bool)

(assert (=> d!1808140 (= c!1012032 ((_ is EmptyExpr!15741) lt!2282759))))

(declare-fun e!3525627 () Bool)

(assert (=> d!1808140 (= (matchRSpec!2844 lt!2282759 s!2326) e!3525627)))

(declare-fun b!5734836 () Bool)

(declare-fun e!3525628 () Bool)

(assert (=> b!5734836 (= e!3525628 e!3525625)))

(declare-fun c!1012033 () Bool)

(assert (=> b!5734836 (= c!1012033 ((_ is Star!15741) lt!2282759))))

(declare-fun call!438425 () Bool)

(declare-fun bm!438421 () Bool)

(assert (=> bm!438421 (= call!438425 (Exists!2841 (ite c!1012033 lambda!310644 lambda!310647)))))

(declare-fun b!5734837 () Bool)

(declare-fun c!1012030 () Bool)

(assert (=> b!5734837 (= c!1012030 ((_ is Union!15741) lt!2282759))))

(assert (=> b!5734837 (= e!3525626 e!3525628)))

(assert (=> b!5734838 (= e!3525625 call!438425)))

(declare-fun b!5734839 () Bool)

(assert (=> b!5734839 (= e!3525627 call!438426)))

(declare-fun b!5734840 () Bool)

(assert (=> b!5734840 (= e!3525627 e!3525629)))

(declare-fun res!2421684 () Bool)

(assert (=> b!5734840 (= res!2421684 (not ((_ is EmptyLang!15741) lt!2282759)))))

(assert (=> b!5734840 (=> (not res!2421684) (not e!3525629))))

(assert (=> b!5734841 (= e!3525624 call!438425)))

(declare-fun b!5734842 () Bool)

(assert (=> b!5734842 (= e!3525628 e!3525623)))

(declare-fun res!2421683 () Bool)

(assert (=> b!5734842 (= res!2421683 (matchRSpec!2844 (regOne!31995 lt!2282759) s!2326))))

(assert (=> b!5734842 (=> res!2421683 e!3525623)))

(assert (= (and d!1808140 c!1012032) b!5734839))

(assert (= (and d!1808140 (not c!1012032)) b!5734840))

(assert (= (and b!5734840 res!2421684) b!5734832))

(assert (= (and b!5734832 c!1012031) b!5734834))

(assert (= (and b!5734832 (not c!1012031)) b!5734837))

(assert (= (and b!5734837 c!1012030) b!5734842))

(assert (= (and b!5734837 (not c!1012030)) b!5734836))

(assert (= (and b!5734842 (not res!2421683)) b!5734833))

(assert (= (and b!5734836 c!1012033) b!5734835))

(assert (= (and b!5734836 (not c!1012033)) b!5734838))

(assert (= (and b!5734835 (not res!2421682)) b!5734841))

(assert (= (or b!5734841 b!5734838) bm!438421))

(assert (= (or b!5734839 b!5734835) bm!438420))

(declare-fun m!6686858 () Bool)

(assert (=> b!5734833 m!6686858))

(declare-fun m!6686860 () Bool)

(assert (=> bm!438420 m!6686860))

(declare-fun m!6686862 () Bool)

(assert (=> bm!438421 m!6686862))

(declare-fun m!6686864 () Bool)

(assert (=> b!5734842 m!6686864))

(assert (=> b!5734236 d!1808140))

(declare-fun d!1808156 () Bool)

(assert (=> d!1808156 (= (matchR!7926 (Concat!24586 (Concat!24586 (reg!16070 (regOne!31994 r!7292)) lt!2282770) (regTwo!31994 r!7292)) s!2326) (matchR!7926 (Concat!24586 (reg!16070 (regOne!31994 r!7292)) (Concat!24586 lt!2282770 (regTwo!31994 r!7292))) s!2326))))

(declare-fun lt!2282926 () Unit!156496)

(declare-fun choose!43446 (Regex!15741 Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808156 (= lt!2282926 (choose!43446 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (regTwo!31994 r!7292) s!2326))))

(declare-fun e!3525634 () Bool)

(assert (=> d!1808156 e!3525634))

(declare-fun res!2421695 () Bool)

(assert (=> d!1808156 (=> (not res!2421695) (not e!3525634))))

(assert (=> d!1808156 (= res!2421695 (validRegex!7477 (reg!16070 (regOne!31994 r!7292))))))

(assert (=> d!1808156 (= (lemmaConcatAssociative!94 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (regTwo!31994 r!7292) s!2326) lt!2282926)))

(declare-fun b!5734853 () Bool)

(declare-fun res!2421696 () Bool)

(assert (=> b!5734853 (=> (not res!2421696) (not e!3525634))))

(assert (=> b!5734853 (= res!2421696 (validRegex!7477 lt!2282770))))

(declare-fun b!5734854 () Bool)

(assert (=> b!5734854 (= e!3525634 (validRegex!7477 (regTwo!31994 r!7292)))))

(assert (= (and d!1808156 res!2421695) b!5734853))

(assert (= (and b!5734853 res!2421696) b!5734854))

(declare-fun m!6686866 () Bool)

(assert (=> d!1808156 m!6686866))

(declare-fun m!6686868 () Bool)

(assert (=> d!1808156 m!6686868))

(declare-fun m!6686870 () Bool)

(assert (=> d!1808156 m!6686870))

(assert (=> d!1808156 m!6686778))

(declare-fun m!6686872 () Bool)

(assert (=> b!5734853 m!6686872))

(declare-fun m!6686874 () Bool)

(assert (=> b!5734854 m!6686874))

(assert (=> b!5734236 d!1808156))

(declare-fun b!5734855 () Bool)

(declare-fun e!3525641 () Bool)

(declare-fun e!3525636 () Bool)

(assert (=> b!5734855 (= e!3525641 e!3525636)))

(declare-fun res!2421700 () Bool)

(assert (=> b!5734855 (=> (not res!2421700) (not e!3525636))))

(declare-fun lt!2282927 () Bool)

(assert (=> b!5734855 (= res!2421700 (not lt!2282927))))

(declare-fun b!5734856 () Bool)

(declare-fun e!3525639 () Bool)

(assert (=> b!5734856 (= e!3525639 (not (= (head!12142 (_1!36141 lt!2282777)) (c!1011861 lt!2282787))))))

(declare-fun b!5734857 () Bool)

(declare-fun e!3525635 () Bool)

(assert (=> b!5734857 (= e!3525635 (not lt!2282927))))

(declare-fun b!5734858 () Bool)

(declare-fun res!2421701 () Bool)

(assert (=> b!5734858 (=> res!2421701 e!3525641)))

(assert (=> b!5734858 (= res!2421701 (not ((_ is ElementMatch!15741) lt!2282787)))))

(assert (=> b!5734858 (= e!3525635 e!3525641)))

(declare-fun b!5734860 () Bool)

(declare-fun e!3525638 () Bool)

(assert (=> b!5734860 (= e!3525638 e!3525635)))

(declare-fun c!1012036 () Bool)

(assert (=> b!5734860 (= c!1012036 ((_ is EmptyLang!15741) lt!2282787))))

(declare-fun b!5734861 () Bool)

(declare-fun e!3525640 () Bool)

(assert (=> b!5734861 (= e!3525640 (matchR!7926 (derivativeStep!4534 lt!2282787 (head!12142 (_1!36141 lt!2282777))) (tail!11237 (_1!36141 lt!2282777))))))

(declare-fun b!5734862 () Bool)

(declare-fun res!2421704 () Bool)

(declare-fun e!3525637 () Bool)

(assert (=> b!5734862 (=> (not res!2421704) (not e!3525637))))

(declare-fun call!438427 () Bool)

(assert (=> b!5734862 (= res!2421704 (not call!438427))))

(declare-fun b!5734863 () Bool)

(assert (=> b!5734863 (= e!3525640 (nullable!5773 lt!2282787))))

(declare-fun b!5734864 () Bool)

(assert (=> b!5734864 (= e!3525638 (= lt!2282927 call!438427))))

(declare-fun b!5734865 () Bool)

(declare-fun res!2421702 () Bool)

(assert (=> b!5734865 (=> res!2421702 e!3525639)))

(assert (=> b!5734865 (= res!2421702 (not (isEmpty!35280 (tail!11237 (_1!36141 lt!2282777)))))))

(declare-fun b!5734866 () Bool)

(declare-fun res!2421703 () Bool)

(assert (=> b!5734866 (=> (not res!2421703) (not e!3525637))))

(assert (=> b!5734866 (= res!2421703 (isEmpty!35280 (tail!11237 (_1!36141 lt!2282777))))))

(declare-fun b!5734867 () Bool)

(declare-fun res!2421699 () Bool)

(assert (=> b!5734867 (=> res!2421699 e!3525641)))

(assert (=> b!5734867 (= res!2421699 e!3525637)))

(declare-fun res!2421698 () Bool)

(assert (=> b!5734867 (=> (not res!2421698) (not e!3525637))))

(assert (=> b!5734867 (= res!2421698 lt!2282927)))

(declare-fun d!1808158 () Bool)

(assert (=> d!1808158 e!3525638))

(declare-fun c!1012034 () Bool)

(assert (=> d!1808158 (= c!1012034 ((_ is EmptyExpr!15741) lt!2282787))))

(assert (=> d!1808158 (= lt!2282927 e!3525640)))

(declare-fun c!1012035 () Bool)

(assert (=> d!1808158 (= c!1012035 (isEmpty!35280 (_1!36141 lt!2282777)))))

(assert (=> d!1808158 (validRegex!7477 lt!2282787)))

(assert (=> d!1808158 (= (matchR!7926 lt!2282787 (_1!36141 lt!2282777)) lt!2282927)))

(declare-fun b!5734859 () Bool)

(assert (=> b!5734859 (= e!3525636 e!3525639)))

(declare-fun res!2421697 () Bool)

(assert (=> b!5734859 (=> res!2421697 e!3525639)))

(assert (=> b!5734859 (= res!2421697 call!438427)))

(declare-fun bm!438422 () Bool)

(assert (=> bm!438422 (= call!438427 (isEmpty!35280 (_1!36141 lt!2282777)))))

(declare-fun b!5734868 () Bool)

(assert (=> b!5734868 (= e!3525637 (= (head!12142 (_1!36141 lt!2282777)) (c!1011861 lt!2282787)))))

(assert (= (and d!1808158 c!1012035) b!5734863))

(assert (= (and d!1808158 (not c!1012035)) b!5734861))

(assert (= (and d!1808158 c!1012034) b!5734864))

(assert (= (and d!1808158 (not c!1012034)) b!5734860))

(assert (= (and b!5734860 c!1012036) b!5734857))

(assert (= (and b!5734860 (not c!1012036)) b!5734858))

(assert (= (and b!5734858 (not res!2421701)) b!5734867))

(assert (= (and b!5734867 res!2421698) b!5734862))

(assert (= (and b!5734862 res!2421704) b!5734866))

(assert (= (and b!5734866 res!2421703) b!5734868))

(assert (= (and b!5734867 (not res!2421699)) b!5734855))

(assert (= (and b!5734855 res!2421700) b!5734859))

(assert (= (and b!5734859 (not res!2421697)) b!5734865))

(assert (= (and b!5734865 (not res!2421702)) b!5734856))

(assert (= (or b!5734864 b!5734859 b!5734862) bm!438422))

(declare-fun m!6686888 () Bool)

(assert (=> b!5734868 m!6686888))

(declare-fun m!6686892 () Bool)

(assert (=> bm!438422 m!6686892))

(assert (=> b!5734856 m!6686888))

(declare-fun m!6686894 () Bool)

(assert (=> b!5734866 m!6686894))

(assert (=> b!5734866 m!6686894))

(declare-fun m!6686896 () Bool)

(assert (=> b!5734866 m!6686896))

(assert (=> b!5734861 m!6686888))

(assert (=> b!5734861 m!6686888))

(declare-fun m!6686898 () Bool)

(assert (=> b!5734861 m!6686898))

(assert (=> b!5734861 m!6686894))

(assert (=> b!5734861 m!6686898))

(assert (=> b!5734861 m!6686894))

(declare-fun m!6686900 () Bool)

(assert (=> b!5734861 m!6686900))

(assert (=> b!5734865 m!6686894))

(assert (=> b!5734865 m!6686894))

(assert (=> b!5734865 m!6686896))

(assert (=> d!1808158 m!6686892))

(assert (=> d!1808158 m!6686646))

(declare-fun m!6686902 () Bool)

(assert (=> b!5734863 m!6686902))

(assert (=> b!5734236 d!1808158))

(declare-fun bs!1340442 () Bool)

(declare-fun d!1808166 () Bool)

(assert (= bs!1340442 (and d!1808166 b!5734236)))

(declare-fun lambda!310656 () Int)

(assert (=> bs!1340442 (= lambda!310656 lambda!310585)))

(declare-fun bs!1340443 () Bool)

(assert (= bs!1340443 (and d!1808166 b!5734230)))

(assert (=> bs!1340443 (not (= lambda!310656 lambda!310589))))

(assert (=> bs!1340443 (= (and (= s!2326 (_1!36141 lt!2282777)) (= lt!2282787 (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310656 lambda!310587))))

(declare-fun bs!1340444 () Bool)

(assert (= bs!1340444 (and d!1808166 b!5734841)))

(assert (=> bs!1340444 (not (= lambda!310656 lambda!310644))))

(assert (=> bs!1340442 (not (= lambda!310656 lambda!310586))))

(declare-fun bs!1340445 () Bool)

(assert (= bs!1340445 (and d!1808166 b!5734838)))

(assert (=> bs!1340445 (not (= lambda!310656 lambda!310647))))

(assert (=> bs!1340443 (not (= lambda!310656 lambda!310588))))

(declare-fun bs!1340446 () Bool)

(assert (= bs!1340446 (and d!1808166 b!5734197)))

(assert (=> bs!1340446 (not (= lambda!310656 lambda!310581))))

(declare-fun bs!1340447 () Bool)

(assert (= bs!1340447 (and d!1808166 d!1808088)))

(assert (=> bs!1340447 (= lambda!310656 lambda!310628)))

(assert (=> bs!1340446 (= (= lt!2282787 (regOne!31994 r!7292)) (= lambda!310656 lambda!310580))))

(assert (=> d!1808166 true))

(assert (=> d!1808166 true))

(assert (=> d!1808166 true))

(declare-fun lambda!310657 () Int)

(assert (=> bs!1340442 (not (= lambda!310657 lambda!310585))))

(assert (=> bs!1340443 (not (= lambda!310657 lambda!310587))))

(assert (=> bs!1340444 (not (= lambda!310657 lambda!310644))))

(assert (=> bs!1340442 (= lambda!310657 lambda!310586)))

(assert (=> bs!1340445 (= (and (= lt!2282787 (regOne!31994 lt!2282759)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282759))) (= lambda!310657 lambda!310647))))

(assert (=> bs!1340443 (= (and (= s!2326 (_1!36141 lt!2282777)) (= lt!2282787 (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310657 lambda!310588))))

(assert (=> bs!1340446 (= (= lt!2282787 (regOne!31994 r!7292)) (= lambda!310657 lambda!310581))))

(assert (=> bs!1340447 (not (= lambda!310657 lambda!310628))))

(assert (=> bs!1340446 (not (= lambda!310657 lambda!310580))))

(declare-fun bs!1340455 () Bool)

(assert (= bs!1340455 d!1808166))

(assert (=> bs!1340455 (not (= lambda!310657 lambda!310656))))

(assert (=> bs!1340443 (not (= lambda!310657 lambda!310589))))

(assert (=> d!1808166 true))

(assert (=> d!1808166 true))

(assert (=> d!1808166 true))

(assert (=> d!1808166 (= (Exists!2841 lambda!310656) (Exists!2841 lambda!310657))))

(declare-fun lt!2282935 () Unit!156496)

(declare-fun choose!43448 (Regex!15741 Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808166 (= lt!2282935 (choose!43448 lt!2282787 (regTwo!31994 r!7292) s!2326))))

(assert (=> d!1808166 (validRegex!7477 lt!2282787)))

(assert (=> d!1808166 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 lt!2282787 (regTwo!31994 r!7292) s!2326) lt!2282935)))

(declare-fun m!6686970 () Bool)

(assert (=> bs!1340455 m!6686970))

(declare-fun m!6686972 () Bool)

(assert (=> bs!1340455 m!6686972))

(declare-fun m!6686974 () Bool)

(assert (=> bs!1340455 m!6686974))

(assert (=> bs!1340455 m!6686646))

(assert (=> b!5734236 d!1808166))

(declare-fun d!1808184 () Bool)

(assert (=> d!1808184 (= (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753)) (matchZipper!1879 lt!2282757 (_1!36141 lt!2282753)))))

(declare-fun lt!2282944 () Unit!156496)

(declare-fun choose!43449 ((InoxSet Context!10250) List!63524 Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808184 (= lt!2282944 (choose!43449 lt!2282757 lt!2282743 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753)))))

(assert (=> d!1808184 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808184 (= (theoremZipperRegexEquiv!661 lt!2282757 lt!2282743 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282753)) lt!2282944)))

(declare-fun bs!1340481 () Bool)

(assert (= bs!1340481 d!1808184))

(assert (=> bs!1340481 m!6686186))

(assert (=> bs!1340481 m!6686080))

(declare-fun m!6686980 () Bool)

(assert (=> bs!1340481 m!6686980))

(assert (=> bs!1340481 m!6686778))

(assert (=> b!5734236 d!1808184))

(declare-fun d!1808188 () Bool)

(assert (=> d!1808188 (matchR!7926 (Concat!24586 (reg!16070 (regOne!31994 r!7292)) lt!2282789) (++!13954 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(declare-fun lt!2282947 () Unit!156496)

(declare-fun choose!43450 (Regex!15741 Regex!15741 List!63522 List!63522) Unit!156496)

(assert (=> d!1808188 (= lt!2282947 (choose!43450 (reg!16070 (regOne!31994 r!7292)) lt!2282789 (_1!36141 lt!2282753) (_2!36141 lt!2282753)))))

(declare-fun e!3525670 () Bool)

(assert (=> d!1808188 e!3525670))

(declare-fun res!2421732 () Bool)

(assert (=> d!1808188 (=> (not res!2421732) (not e!3525670))))

(assert (=> d!1808188 (= res!2421732 (validRegex!7477 (reg!16070 (regOne!31994 r!7292))))))

(assert (=> d!1808188 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!278 (reg!16070 (regOne!31994 r!7292)) lt!2282789 (_1!36141 lt!2282753) (_2!36141 lt!2282753)) lt!2282947)))

(declare-fun b!5734918 () Bool)

(assert (=> b!5734918 (= e!3525670 (validRegex!7477 lt!2282789))))

(assert (= (and d!1808188 res!2421732) b!5734918))

(assert (=> d!1808188 m!6686234))

(assert (=> d!1808188 m!6686234))

(declare-fun m!6686990 () Bool)

(assert (=> d!1808188 m!6686990))

(declare-fun m!6686992 () Bool)

(assert (=> d!1808188 m!6686992))

(assert (=> d!1808188 m!6686778))

(declare-fun m!6686994 () Bool)

(assert (=> b!5734918 m!6686994))

(assert (=> b!5734236 d!1808188))

(declare-fun b!5734919 () Bool)

(declare-fun e!3525677 () Bool)

(declare-fun e!3525672 () Bool)

(assert (=> b!5734919 (= e!3525677 e!3525672)))

(declare-fun res!2421736 () Bool)

(assert (=> b!5734919 (=> (not res!2421736) (not e!3525672))))

(declare-fun lt!2282948 () Bool)

(assert (=> b!5734919 (= res!2421736 (not lt!2282948))))

(declare-fun b!5734920 () Bool)

(declare-fun e!3525675 () Bool)

(assert (=> b!5734920 (= e!3525675 (not (= (head!12142 s!2326) (c!1011861 lt!2282759))))))

(declare-fun b!5734921 () Bool)

(declare-fun e!3525671 () Bool)

(assert (=> b!5734921 (= e!3525671 (not lt!2282948))))

(declare-fun b!5734922 () Bool)

(declare-fun res!2421737 () Bool)

(assert (=> b!5734922 (=> res!2421737 e!3525677)))

(assert (=> b!5734922 (= res!2421737 (not ((_ is ElementMatch!15741) lt!2282759)))))

(assert (=> b!5734922 (= e!3525671 e!3525677)))

(declare-fun b!5734924 () Bool)

(declare-fun e!3525674 () Bool)

(assert (=> b!5734924 (= e!3525674 e!3525671)))

(declare-fun c!1012050 () Bool)

(assert (=> b!5734924 (= c!1012050 ((_ is EmptyLang!15741) lt!2282759))))

(declare-fun b!5734925 () Bool)

(declare-fun e!3525676 () Bool)

(assert (=> b!5734925 (= e!3525676 (matchR!7926 (derivativeStep!4534 lt!2282759 (head!12142 s!2326)) (tail!11237 s!2326)))))

(declare-fun b!5734926 () Bool)

(declare-fun res!2421740 () Bool)

(declare-fun e!3525673 () Bool)

(assert (=> b!5734926 (=> (not res!2421740) (not e!3525673))))

(declare-fun call!438430 () Bool)

(assert (=> b!5734926 (= res!2421740 (not call!438430))))

(declare-fun b!5734927 () Bool)

(assert (=> b!5734927 (= e!3525676 (nullable!5773 lt!2282759))))

(declare-fun b!5734928 () Bool)

(assert (=> b!5734928 (= e!3525674 (= lt!2282948 call!438430))))

(declare-fun b!5734929 () Bool)

(declare-fun res!2421738 () Bool)

(assert (=> b!5734929 (=> res!2421738 e!3525675)))

(assert (=> b!5734929 (= res!2421738 (not (isEmpty!35280 (tail!11237 s!2326))))))

(declare-fun b!5734930 () Bool)

(declare-fun res!2421739 () Bool)

(assert (=> b!5734930 (=> (not res!2421739) (not e!3525673))))

(assert (=> b!5734930 (= res!2421739 (isEmpty!35280 (tail!11237 s!2326)))))

(declare-fun b!5734931 () Bool)

(declare-fun res!2421735 () Bool)

(assert (=> b!5734931 (=> res!2421735 e!3525677)))

(assert (=> b!5734931 (= res!2421735 e!3525673)))

(declare-fun res!2421734 () Bool)

(assert (=> b!5734931 (=> (not res!2421734) (not e!3525673))))

(assert (=> b!5734931 (= res!2421734 lt!2282948)))

(declare-fun d!1808196 () Bool)

(assert (=> d!1808196 e!3525674))

(declare-fun c!1012048 () Bool)

(assert (=> d!1808196 (= c!1012048 ((_ is EmptyExpr!15741) lt!2282759))))

(assert (=> d!1808196 (= lt!2282948 e!3525676)))

(declare-fun c!1012049 () Bool)

(assert (=> d!1808196 (= c!1012049 (isEmpty!35280 s!2326))))

(assert (=> d!1808196 (validRegex!7477 lt!2282759)))

(assert (=> d!1808196 (= (matchR!7926 lt!2282759 s!2326) lt!2282948)))

(declare-fun b!5734923 () Bool)

(assert (=> b!5734923 (= e!3525672 e!3525675)))

(declare-fun res!2421733 () Bool)

(assert (=> b!5734923 (=> res!2421733 e!3525675)))

(assert (=> b!5734923 (= res!2421733 call!438430)))

(declare-fun bm!438425 () Bool)

(assert (=> bm!438425 (= call!438430 (isEmpty!35280 s!2326))))

(declare-fun b!5734932 () Bool)

(assert (=> b!5734932 (= e!3525673 (= (head!12142 s!2326) (c!1011861 lt!2282759)))))

(assert (= (and d!1808196 c!1012049) b!5734927))

(assert (= (and d!1808196 (not c!1012049)) b!5734925))

(assert (= (and d!1808196 c!1012048) b!5734928))

(assert (= (and d!1808196 (not c!1012048)) b!5734924))

(assert (= (and b!5734924 c!1012050) b!5734921))

(assert (= (and b!5734924 (not c!1012050)) b!5734922))

(assert (= (and b!5734922 (not res!2421737)) b!5734931))

(assert (= (and b!5734931 res!2421734) b!5734926))

(assert (= (and b!5734926 res!2421740) b!5734930))

(assert (= (and b!5734930 res!2421739) b!5734932))

(assert (= (and b!5734931 (not res!2421735)) b!5734919))

(assert (= (and b!5734919 res!2421736) b!5734923))

(assert (= (and b!5734923 (not res!2421733)) b!5734929))

(assert (= (and b!5734929 (not res!2421738)) b!5734920))

(assert (= (or b!5734928 b!5734923 b!5734926) bm!438425))

(declare-fun m!6686996 () Bool)

(assert (=> b!5734932 m!6686996))

(assert (=> bm!438425 m!6686860))

(assert (=> b!5734920 m!6686996))

(declare-fun m!6686998 () Bool)

(assert (=> b!5734930 m!6686998))

(assert (=> b!5734930 m!6686998))

(declare-fun m!6687000 () Bool)

(assert (=> b!5734930 m!6687000))

(assert (=> b!5734925 m!6686996))

(assert (=> b!5734925 m!6686996))

(declare-fun m!6687002 () Bool)

(assert (=> b!5734925 m!6687002))

(assert (=> b!5734925 m!6686998))

(assert (=> b!5734925 m!6687002))

(assert (=> b!5734925 m!6686998))

(declare-fun m!6687004 () Bool)

(assert (=> b!5734925 m!6687004))

(assert (=> b!5734929 m!6686998))

(assert (=> b!5734929 m!6686998))

(assert (=> b!5734929 m!6687000))

(assert (=> d!1808196 m!6686860))

(assert (=> d!1808196 m!6686724))

(declare-fun m!6687006 () Bool)

(assert (=> b!5734927 m!6687006))

(assert (=> b!5734236 d!1808196))

(declare-fun b!5734941 () Bool)

(declare-fun e!3525683 () List!63523)

(assert (=> b!5734941 (= e!3525683 lt!2282773)))

(declare-fun d!1808198 () Bool)

(declare-fun e!3525682 () Bool)

(assert (=> d!1808198 e!3525682))

(declare-fun res!2421745 () Bool)

(assert (=> d!1808198 (=> (not res!2421745) (not e!3525682))))

(declare-fun lt!2282951 () List!63523)

(declare-fun content!11548 (List!63523) (InoxSet Regex!15741))

(assert (=> d!1808198 (= res!2421745 (= (content!11548 lt!2282951) ((_ map or) (content!11548 lt!2282792) (content!11548 lt!2282773))))))

(assert (=> d!1808198 (= lt!2282951 e!3525683)))

(declare-fun c!1012053 () Bool)

(assert (=> d!1808198 (= c!1012053 ((_ is Nil!63399) lt!2282792))))

(assert (=> d!1808198 (= (++!13955 lt!2282792 lt!2282773) lt!2282951)))

(declare-fun b!5734943 () Bool)

(declare-fun res!2421746 () Bool)

(assert (=> b!5734943 (=> (not res!2421746) (not e!3525682))))

(declare-fun size!40055 (List!63523) Int)

(assert (=> b!5734943 (= res!2421746 (= (size!40055 lt!2282951) (+ (size!40055 lt!2282792) (size!40055 lt!2282773))))))

(declare-fun b!5734944 () Bool)

(assert (=> b!5734944 (= e!3525682 (or (not (= lt!2282773 Nil!63399)) (= lt!2282951 lt!2282792)))))

(declare-fun b!5734942 () Bool)

(assert (=> b!5734942 (= e!3525683 (Cons!63399 (h!69847 lt!2282792) (++!13955 (t!376851 lt!2282792) lt!2282773)))))

(assert (= (and d!1808198 c!1012053) b!5734941))

(assert (= (and d!1808198 (not c!1012053)) b!5734942))

(assert (= (and d!1808198 res!2421745) b!5734943))

(assert (= (and b!5734943 res!2421746) b!5734944))

(declare-fun m!6687008 () Bool)

(assert (=> d!1808198 m!6687008))

(declare-fun m!6687010 () Bool)

(assert (=> d!1808198 m!6687010))

(declare-fun m!6687012 () Bool)

(assert (=> d!1808198 m!6687012))

(declare-fun m!6687014 () Bool)

(assert (=> b!5734943 m!6687014))

(declare-fun m!6687016 () Bool)

(assert (=> b!5734943 m!6687016))

(declare-fun m!6687018 () Bool)

(assert (=> b!5734943 m!6687018))

(declare-fun m!6687020 () Bool)

(assert (=> b!5734942 m!6687020))

(assert (=> b!5734236 d!1808198))

(declare-fun b!5734945 () Bool)

(declare-fun e!3525690 () Bool)

(declare-fun e!3525685 () Bool)

(assert (=> b!5734945 (= e!3525690 e!3525685)))

(declare-fun res!2421750 () Bool)

(assert (=> b!5734945 (=> (not res!2421750) (not e!3525685))))

(declare-fun lt!2282952 () Bool)

(assert (=> b!5734945 (= res!2421750 (not lt!2282952))))

(declare-fun b!5734946 () Bool)

(declare-fun e!3525688 () Bool)

(assert (=> b!5734946 (= e!3525688 (not (= (head!12142 lt!2282788) (c!1011861 lt!2282750))))))

(declare-fun b!5734947 () Bool)

(declare-fun e!3525684 () Bool)

(assert (=> b!5734947 (= e!3525684 (not lt!2282952))))

(declare-fun b!5734948 () Bool)

(declare-fun res!2421751 () Bool)

(assert (=> b!5734948 (=> res!2421751 e!3525690)))

(assert (=> b!5734948 (= res!2421751 (not ((_ is ElementMatch!15741) lt!2282750)))))

(assert (=> b!5734948 (= e!3525684 e!3525690)))

(declare-fun b!5734950 () Bool)

(declare-fun e!3525687 () Bool)

(assert (=> b!5734950 (= e!3525687 e!3525684)))

(declare-fun c!1012056 () Bool)

(assert (=> b!5734950 (= c!1012056 ((_ is EmptyLang!15741) lt!2282750))))

(declare-fun b!5734951 () Bool)

(declare-fun e!3525689 () Bool)

(assert (=> b!5734951 (= e!3525689 (matchR!7926 (derivativeStep!4534 lt!2282750 (head!12142 lt!2282788)) (tail!11237 lt!2282788)))))

(declare-fun b!5734952 () Bool)

(declare-fun res!2421754 () Bool)

(declare-fun e!3525686 () Bool)

(assert (=> b!5734952 (=> (not res!2421754) (not e!3525686))))

(declare-fun call!438431 () Bool)

(assert (=> b!5734952 (= res!2421754 (not call!438431))))

(declare-fun b!5734953 () Bool)

(assert (=> b!5734953 (= e!3525689 (nullable!5773 lt!2282750))))

(declare-fun b!5734954 () Bool)

(assert (=> b!5734954 (= e!3525687 (= lt!2282952 call!438431))))

(declare-fun b!5734955 () Bool)

(declare-fun res!2421752 () Bool)

(assert (=> b!5734955 (=> res!2421752 e!3525688)))

(assert (=> b!5734955 (= res!2421752 (not (isEmpty!35280 (tail!11237 lt!2282788))))))

(declare-fun b!5734956 () Bool)

(declare-fun res!2421753 () Bool)

(assert (=> b!5734956 (=> (not res!2421753) (not e!3525686))))

(assert (=> b!5734956 (= res!2421753 (isEmpty!35280 (tail!11237 lt!2282788)))))

(declare-fun b!5734957 () Bool)

(declare-fun res!2421749 () Bool)

(assert (=> b!5734957 (=> res!2421749 e!3525690)))

(assert (=> b!5734957 (= res!2421749 e!3525686)))

(declare-fun res!2421748 () Bool)

(assert (=> b!5734957 (=> (not res!2421748) (not e!3525686))))

(assert (=> b!5734957 (= res!2421748 lt!2282952)))

(declare-fun d!1808200 () Bool)

(assert (=> d!1808200 e!3525687))

(declare-fun c!1012054 () Bool)

(assert (=> d!1808200 (= c!1012054 ((_ is EmptyExpr!15741) lt!2282750))))

(assert (=> d!1808200 (= lt!2282952 e!3525689)))

(declare-fun c!1012055 () Bool)

(assert (=> d!1808200 (= c!1012055 (isEmpty!35280 lt!2282788))))

(assert (=> d!1808200 (validRegex!7477 lt!2282750)))

(assert (=> d!1808200 (= (matchR!7926 lt!2282750 lt!2282788) lt!2282952)))

(declare-fun b!5734949 () Bool)

(assert (=> b!5734949 (= e!3525685 e!3525688)))

(declare-fun res!2421747 () Bool)

(assert (=> b!5734949 (=> res!2421747 e!3525688)))

(assert (=> b!5734949 (= res!2421747 call!438431)))

(declare-fun bm!438426 () Bool)

(assert (=> bm!438426 (= call!438431 (isEmpty!35280 lt!2282788))))

(declare-fun b!5734958 () Bool)

(assert (=> b!5734958 (= e!3525686 (= (head!12142 lt!2282788) (c!1011861 lt!2282750)))))

(assert (= (and d!1808200 c!1012055) b!5734953))

(assert (= (and d!1808200 (not c!1012055)) b!5734951))

(assert (= (and d!1808200 c!1012054) b!5734954))

(assert (= (and d!1808200 (not c!1012054)) b!5734950))

(assert (= (and b!5734950 c!1012056) b!5734947))

(assert (= (and b!5734950 (not c!1012056)) b!5734948))

(assert (= (and b!5734948 (not res!2421751)) b!5734957))

(assert (= (and b!5734957 res!2421748) b!5734952))

(assert (= (and b!5734952 res!2421754) b!5734956))

(assert (= (and b!5734956 res!2421753) b!5734958))

(assert (= (and b!5734957 (not res!2421749)) b!5734945))

(assert (= (and b!5734945 res!2421750) b!5734949))

(assert (= (and b!5734949 (not res!2421747)) b!5734955))

(assert (= (and b!5734955 (not res!2421752)) b!5734946))

(assert (= (or b!5734954 b!5734949 b!5734952) bm!438426))

(declare-fun m!6687022 () Bool)

(assert (=> b!5734958 m!6687022))

(declare-fun m!6687024 () Bool)

(assert (=> bm!438426 m!6687024))

(assert (=> b!5734946 m!6687022))

(declare-fun m!6687026 () Bool)

(assert (=> b!5734956 m!6687026))

(assert (=> b!5734956 m!6687026))

(declare-fun m!6687028 () Bool)

(assert (=> b!5734956 m!6687028))

(assert (=> b!5734951 m!6687022))

(assert (=> b!5734951 m!6687022))

(declare-fun m!6687030 () Bool)

(assert (=> b!5734951 m!6687030))

(assert (=> b!5734951 m!6687026))

(assert (=> b!5734951 m!6687030))

(assert (=> b!5734951 m!6687026))

(declare-fun m!6687032 () Bool)

(assert (=> b!5734951 m!6687032))

(assert (=> b!5734955 m!6687026))

(assert (=> b!5734955 m!6687026))

(assert (=> b!5734955 m!6687028))

(assert (=> d!1808200 m!6687024))

(declare-fun m!6687034 () Bool)

(assert (=> d!1808200 m!6687034))

(declare-fun m!6687036 () Bool)

(assert (=> b!5734953 m!6687036))

(assert (=> b!5734236 d!1808200))

(declare-fun b!5734959 () Bool)

(declare-fun e!3525697 () Bool)

(declare-fun e!3525692 () Bool)

(assert (=> b!5734959 (= e!3525697 e!3525692)))

(declare-fun res!2421758 () Bool)

(assert (=> b!5734959 (=> (not res!2421758) (not e!3525692))))

(declare-fun lt!2282953 () Bool)

(assert (=> b!5734959 (= res!2421758 (not lt!2282953))))

(declare-fun b!5734960 () Bool)

(declare-fun e!3525695 () Bool)

(assert (=> b!5734960 (= e!3525695 (not (= (head!12142 (_2!36141 lt!2282753)) (c!1011861 lt!2282789))))))

(declare-fun b!5734961 () Bool)

(declare-fun e!3525691 () Bool)

(assert (=> b!5734961 (= e!3525691 (not lt!2282953))))

(declare-fun b!5734962 () Bool)

(declare-fun res!2421759 () Bool)

(assert (=> b!5734962 (=> res!2421759 e!3525697)))

(assert (=> b!5734962 (= res!2421759 (not ((_ is ElementMatch!15741) lt!2282789)))))

(assert (=> b!5734962 (= e!3525691 e!3525697)))

(declare-fun b!5734964 () Bool)

(declare-fun e!3525694 () Bool)

(assert (=> b!5734964 (= e!3525694 e!3525691)))

(declare-fun c!1012059 () Bool)

(assert (=> b!5734964 (= c!1012059 ((_ is EmptyLang!15741) lt!2282789))))

(declare-fun b!5734965 () Bool)

(declare-fun e!3525696 () Bool)

(assert (=> b!5734965 (= e!3525696 (matchR!7926 (derivativeStep!4534 lt!2282789 (head!12142 (_2!36141 lt!2282753))) (tail!11237 (_2!36141 lt!2282753))))))

(declare-fun b!5734966 () Bool)

(declare-fun res!2421762 () Bool)

(declare-fun e!3525693 () Bool)

(assert (=> b!5734966 (=> (not res!2421762) (not e!3525693))))

(declare-fun call!438432 () Bool)

(assert (=> b!5734966 (= res!2421762 (not call!438432))))

(declare-fun b!5734967 () Bool)

(assert (=> b!5734967 (= e!3525696 (nullable!5773 lt!2282789))))

(declare-fun b!5734968 () Bool)

(assert (=> b!5734968 (= e!3525694 (= lt!2282953 call!438432))))

(declare-fun b!5734969 () Bool)

(declare-fun res!2421760 () Bool)

(assert (=> b!5734969 (=> res!2421760 e!3525695)))

(assert (=> b!5734969 (= res!2421760 (not (isEmpty!35280 (tail!11237 (_2!36141 lt!2282753)))))))

(declare-fun b!5734970 () Bool)

(declare-fun res!2421761 () Bool)

(assert (=> b!5734970 (=> (not res!2421761) (not e!3525693))))

(assert (=> b!5734970 (= res!2421761 (isEmpty!35280 (tail!11237 (_2!36141 lt!2282753))))))

(declare-fun b!5734971 () Bool)

(declare-fun res!2421757 () Bool)

(assert (=> b!5734971 (=> res!2421757 e!3525697)))

(assert (=> b!5734971 (= res!2421757 e!3525693)))

(declare-fun res!2421756 () Bool)

(assert (=> b!5734971 (=> (not res!2421756) (not e!3525693))))

(assert (=> b!5734971 (= res!2421756 lt!2282953)))

(declare-fun d!1808202 () Bool)

(assert (=> d!1808202 e!3525694))

(declare-fun c!1012057 () Bool)

(assert (=> d!1808202 (= c!1012057 ((_ is EmptyExpr!15741) lt!2282789))))

(assert (=> d!1808202 (= lt!2282953 e!3525696)))

(declare-fun c!1012058 () Bool)

(assert (=> d!1808202 (= c!1012058 (isEmpty!35280 (_2!36141 lt!2282753)))))

(assert (=> d!1808202 (validRegex!7477 lt!2282789)))

(assert (=> d!1808202 (= (matchR!7926 lt!2282789 (_2!36141 lt!2282753)) lt!2282953)))

(declare-fun b!5734963 () Bool)

(assert (=> b!5734963 (= e!3525692 e!3525695)))

(declare-fun res!2421755 () Bool)

(assert (=> b!5734963 (=> res!2421755 e!3525695)))

(assert (=> b!5734963 (= res!2421755 call!438432)))

(declare-fun bm!438427 () Bool)

(assert (=> bm!438427 (= call!438432 (isEmpty!35280 (_2!36141 lt!2282753)))))

(declare-fun b!5734972 () Bool)

(assert (=> b!5734972 (= e!3525693 (= (head!12142 (_2!36141 lt!2282753)) (c!1011861 lt!2282789)))))

(assert (= (and d!1808202 c!1012058) b!5734967))

(assert (= (and d!1808202 (not c!1012058)) b!5734965))

(assert (= (and d!1808202 c!1012057) b!5734968))

(assert (= (and d!1808202 (not c!1012057)) b!5734964))

(assert (= (and b!5734964 c!1012059) b!5734961))

(assert (= (and b!5734964 (not c!1012059)) b!5734962))

(assert (= (and b!5734962 (not res!2421759)) b!5734971))

(assert (= (and b!5734971 res!2421756) b!5734966))

(assert (= (and b!5734966 res!2421762) b!5734970))

(assert (= (and b!5734970 res!2421761) b!5734972))

(assert (= (and b!5734971 (not res!2421757)) b!5734959))

(assert (= (and b!5734959 res!2421758) b!5734963))

(assert (= (and b!5734963 (not res!2421755)) b!5734969))

(assert (= (and b!5734969 (not res!2421760)) b!5734960))

(assert (= (or b!5734968 b!5734963 b!5734966) bm!438427))

(declare-fun m!6687038 () Bool)

(assert (=> b!5734972 m!6687038))

(declare-fun m!6687040 () Bool)

(assert (=> bm!438427 m!6687040))

(assert (=> b!5734960 m!6687038))

(declare-fun m!6687042 () Bool)

(assert (=> b!5734970 m!6687042))

(assert (=> b!5734970 m!6687042))

(declare-fun m!6687044 () Bool)

(assert (=> b!5734970 m!6687044))

(assert (=> b!5734965 m!6687038))

(assert (=> b!5734965 m!6687038))

(declare-fun m!6687046 () Bool)

(assert (=> b!5734965 m!6687046))

(assert (=> b!5734965 m!6687042))

(assert (=> b!5734965 m!6687046))

(assert (=> b!5734965 m!6687042))

(declare-fun m!6687048 () Bool)

(assert (=> b!5734965 m!6687048))

(assert (=> b!5734969 m!6687042))

(assert (=> b!5734969 m!6687042))

(assert (=> b!5734969 m!6687044))

(assert (=> d!1808202 m!6687040))

(assert (=> d!1808202 m!6686994))

(declare-fun m!6687050 () Bool)

(assert (=> b!5734967 m!6687050))

(assert (=> b!5734236 d!1808202))

(declare-fun d!1808204 () Bool)

(assert (=> d!1808204 (= (matchR!7926 lt!2282789 (_2!36141 lt!2282753)) (matchZipper!1879 lt!2282747 (_2!36141 lt!2282753)))))

(declare-fun lt!2282954 () Unit!156496)

(assert (=> d!1808204 (= lt!2282954 (choose!43449 lt!2282747 lt!2282800 lt!2282789 (_2!36141 lt!2282753)))))

(assert (=> d!1808204 (validRegex!7477 lt!2282789)))

(assert (=> d!1808204 (= (theoremZipperRegexEquiv!661 lt!2282747 lt!2282800 lt!2282789 (_2!36141 lt!2282753)) lt!2282954)))

(declare-fun bs!1340484 () Bool)

(assert (= bs!1340484 d!1808204))

(assert (=> bs!1340484 m!6686202))

(assert (=> bs!1340484 m!6686220))

(declare-fun m!6687052 () Bool)

(assert (=> bs!1340484 m!6687052))

(assert (=> bs!1340484 m!6686994))

(assert (=> b!5734236 d!1808204))

(declare-fun d!1808206 () Bool)

(assert (=> d!1808206 (= (Exists!2841 lambda!310585) (choose!43443 lambda!310585))))

(declare-fun bs!1340485 () Bool)

(assert (= bs!1340485 d!1808206))

(declare-fun m!6687054 () Bool)

(assert (=> bs!1340485 m!6687054))

(assert (=> b!5734236 d!1808206))

(declare-fun d!1808208 () Bool)

(declare-fun c!1012060 () Bool)

(assert (=> d!1808208 (= c!1012060 (isEmpty!35280 lt!2282788))))

(declare-fun e!3525698 () Bool)

(assert (=> d!1808208 (= (matchZipper!1879 (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 lt!2282792 lt!2282773)) true) lt!2282788) e!3525698)))

(declare-fun b!5734973 () Bool)

(assert (=> b!5734973 (= e!3525698 (nullableZipper!1681 (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 lt!2282792 lt!2282773)) true)))))

(declare-fun b!5734974 () Bool)

(assert (=> b!5734974 (= e!3525698 (matchZipper!1879 (derivationStepZipper!1824 (store ((as const (Array Context!10250 Bool)) false) (Context!10251 (++!13955 lt!2282792 lt!2282773)) true) (head!12142 lt!2282788)) (tail!11237 lt!2282788)))))

(assert (= (and d!1808208 c!1012060) b!5734973))

(assert (= (and d!1808208 (not c!1012060)) b!5734974))

(assert (=> d!1808208 m!6687024))

(assert (=> b!5734973 m!6686170))

(declare-fun m!6687056 () Bool)

(assert (=> b!5734973 m!6687056))

(assert (=> b!5734974 m!6687022))

(assert (=> b!5734974 m!6686170))

(assert (=> b!5734974 m!6687022))

(declare-fun m!6687058 () Bool)

(assert (=> b!5734974 m!6687058))

(assert (=> b!5734974 m!6687026))

(assert (=> b!5734974 m!6687058))

(assert (=> b!5734974 m!6687026))

(declare-fun m!6687060 () Bool)

(assert (=> b!5734974 m!6687060))

(assert (=> b!5734236 d!1808208))

(declare-fun d!1808210 () Bool)

(assert (=> d!1808210 (= (get!21867 lt!2282742) (v!51804 lt!2282742))))

(assert (=> b!5734236 d!1808210))

(declare-fun d!1808212 () Bool)

(assert (=> d!1808212 (= (flatMap!1354 lt!2282757 lambda!310582) (dynLambda!24810 lambda!310582 lt!2282776))))

(declare-fun lt!2282955 () Unit!156496)

(assert (=> d!1808212 (= lt!2282955 (choose!43436 lt!2282757 lt!2282776 lambda!310582))))

(assert (=> d!1808212 (= lt!2282757 (store ((as const (Array Context!10250 Bool)) false) lt!2282776 true))))

(assert (=> d!1808212 (= (lemmaFlatMapOnSingletonSet!886 lt!2282757 lt!2282776 lambda!310582) lt!2282955)))

(declare-fun b_lambda!216617 () Bool)

(assert (=> (not b_lambda!216617) (not d!1808212)))

(declare-fun bs!1340486 () Bool)

(assert (= bs!1340486 d!1808212))

(assert (=> bs!1340486 m!6686098))

(declare-fun m!6687062 () Bool)

(assert (=> bs!1340486 m!6687062))

(declare-fun m!6687064 () Bool)

(assert (=> bs!1340486 m!6687064))

(assert (=> bs!1340486 m!6686092))

(assert (=> b!5734234 d!1808212))

(declare-fun d!1808214 () Bool)

(assert (=> d!1808214 (= (flatMap!1354 lt!2282747 lambda!310582) (choose!43435 lt!2282747 lambda!310582))))

(declare-fun bs!1340487 () Bool)

(assert (= bs!1340487 d!1808214))

(declare-fun m!6687066 () Bool)

(assert (=> bs!1340487 m!6687066))

(assert (=> b!5734234 d!1808214))

(declare-fun d!1808216 () Bool)

(assert (=> d!1808216 (= (flatMap!1354 lt!2282747 lambda!310582) (dynLambda!24810 lambda!310582 lt!2282749))))

(declare-fun lt!2282962 () Unit!156496)

(assert (=> d!1808216 (= lt!2282962 (choose!43436 lt!2282747 lt!2282749 lambda!310582))))

(assert (=> d!1808216 (= lt!2282747 (store ((as const (Array Context!10250 Bool)) false) lt!2282749 true))))

(assert (=> d!1808216 (= (lemmaFlatMapOnSingletonSet!886 lt!2282747 lt!2282749 lambda!310582) lt!2282962)))

(declare-fun b_lambda!216619 () Bool)

(assert (=> (not b_lambda!216619) (not d!1808216)))

(declare-fun bs!1340488 () Bool)

(assert (= bs!1340488 d!1808216))

(assert (=> bs!1340488 m!6686090))

(declare-fun m!6687068 () Bool)

(assert (=> bs!1340488 m!6687068))

(declare-fun m!6687070 () Bool)

(assert (=> bs!1340488 m!6687070))

(assert (=> bs!1340488 m!6686084))

(assert (=> b!5734234 d!1808216))

(declare-fun d!1808218 () Bool)

(declare-fun lt!2282965 () Regex!15741)

(assert (=> d!1808218 (validRegex!7477 lt!2282965)))

(assert (=> d!1808218 (= lt!2282965 (generalisedUnion!1604 (unfocusZipperList!1169 lt!2282743)))))

(assert (=> d!1808218 (= (unfocusZipper!1483 lt!2282743) lt!2282965)))

(declare-fun bs!1340489 () Bool)

(assert (= bs!1340489 d!1808218))

(declare-fun m!6687072 () Bool)

(assert (=> bs!1340489 m!6687072))

(declare-fun m!6687074 () Bool)

(assert (=> bs!1340489 m!6687074))

(assert (=> bs!1340489 m!6687074))

(declare-fun m!6687076 () Bool)

(assert (=> bs!1340489 m!6687076))

(assert (=> b!5734234 d!1808218))

(declare-fun b!5734993 () Bool)

(declare-fun e!3525711 () Bool)

(assert (=> b!5734993 (= e!3525711 (nullable!5773 (h!69847 (exprs!5625 lt!2282776))))))

(declare-fun b!5734994 () Bool)

(declare-fun e!3525710 () (InoxSet Context!10250))

(declare-fun e!3525709 () (InoxSet Context!10250))

(assert (=> b!5734994 (= e!3525710 e!3525709)))

(declare-fun c!1012065 () Bool)

(assert (=> b!5734994 (= c!1012065 ((_ is Cons!63399) (exprs!5625 lt!2282776)))))

(declare-fun bm!438428 () Bool)

(declare-fun call!438433 () (InoxSet Context!10250))

(assert (=> bm!438428 (= call!438433 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 lt!2282776)) (Context!10251 (t!376851 (exprs!5625 lt!2282776))) (h!69846 s!2326)))))

(declare-fun b!5734996 () Bool)

(assert (=> b!5734996 (= e!3525710 ((_ map or) call!438433 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 lt!2282776))) (h!69846 s!2326))))))

(declare-fun b!5734997 () Bool)

(assert (=> b!5734997 (= e!3525709 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5734995 () Bool)

(assert (=> b!5734995 (= e!3525709 call!438433)))

(declare-fun d!1808220 () Bool)

(declare-fun c!1012066 () Bool)

(assert (=> d!1808220 (= c!1012066 e!3525711)))

(declare-fun res!2421773 () Bool)

(assert (=> d!1808220 (=> (not res!2421773) (not e!3525711))))

(assert (=> d!1808220 (= res!2421773 ((_ is Cons!63399) (exprs!5625 lt!2282776)))))

(assert (=> d!1808220 (= (derivationStepZipperUp!1009 lt!2282776 (h!69846 s!2326)) e!3525710)))

(assert (= (and d!1808220 res!2421773) b!5734993))

(assert (= (and d!1808220 c!1012066) b!5734996))

(assert (= (and d!1808220 (not c!1012066)) b!5734994))

(assert (= (and b!5734994 c!1012065) b!5734995))

(assert (= (and b!5734994 (not c!1012065)) b!5734997))

(assert (= (or b!5734996 b!5734995) bm!438428))

(declare-fun m!6687078 () Bool)

(assert (=> b!5734993 m!6687078))

(declare-fun m!6687080 () Bool)

(assert (=> bm!438428 m!6687080))

(declare-fun m!6687082 () Bool)

(assert (=> b!5734996 m!6687082))

(assert (=> b!5734234 d!1808220))

(declare-fun d!1808222 () Bool)

(assert (=> d!1808222 (= (flatMap!1354 lt!2282757 lambda!310582) (choose!43435 lt!2282757 lambda!310582))))

(declare-fun bs!1340490 () Bool)

(assert (= bs!1340490 d!1808222))

(declare-fun m!6687084 () Bool)

(assert (=> bs!1340490 m!6687084))

(assert (=> b!5734234 d!1808222))

(declare-fun b!5734998 () Bool)

(declare-fun e!3525714 () Bool)

(assert (=> b!5734998 (= e!3525714 (nullable!5773 (h!69847 (exprs!5625 lt!2282749))))))

(declare-fun b!5734999 () Bool)

(declare-fun e!3525713 () (InoxSet Context!10250))

(declare-fun e!3525712 () (InoxSet Context!10250))

(assert (=> b!5734999 (= e!3525713 e!3525712)))

(declare-fun c!1012067 () Bool)

(assert (=> b!5734999 (= c!1012067 ((_ is Cons!63399) (exprs!5625 lt!2282749)))))

(declare-fun bm!438429 () Bool)

(declare-fun call!438434 () (InoxSet Context!10250))

(assert (=> bm!438429 (= call!438434 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 lt!2282749)) (Context!10251 (t!376851 (exprs!5625 lt!2282749))) (h!69846 s!2326)))))

(declare-fun b!5735001 () Bool)

(assert (=> b!5735001 (= e!3525713 ((_ map or) call!438434 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 lt!2282749))) (h!69846 s!2326))))))

(declare-fun b!5735002 () Bool)

(assert (=> b!5735002 (= e!3525712 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735000 () Bool)

(assert (=> b!5735000 (= e!3525712 call!438434)))

(declare-fun d!1808224 () Bool)

(declare-fun c!1012068 () Bool)

(assert (=> d!1808224 (= c!1012068 e!3525714)))

(declare-fun res!2421774 () Bool)

(assert (=> d!1808224 (=> (not res!2421774) (not e!3525714))))

(assert (=> d!1808224 (= res!2421774 ((_ is Cons!63399) (exprs!5625 lt!2282749)))))

(assert (=> d!1808224 (= (derivationStepZipperUp!1009 lt!2282749 (h!69846 s!2326)) e!3525713)))

(assert (= (and d!1808224 res!2421774) b!5734998))

(assert (= (and d!1808224 c!1012068) b!5735001))

(assert (= (and d!1808224 (not c!1012068)) b!5734999))

(assert (= (and b!5734999 c!1012067) b!5735000))

(assert (= (and b!5734999 (not c!1012067)) b!5735002))

(assert (= (or b!5735001 b!5735000) bm!438429))

(declare-fun m!6687086 () Bool)

(assert (=> b!5734998 m!6687086))

(declare-fun m!6687088 () Bool)

(assert (=> bm!438429 m!6687088))

(declare-fun m!6687090 () Bool)

(assert (=> b!5735001 m!6687090))

(assert (=> b!5734234 d!1808224))

(declare-fun d!1808226 () Bool)

(declare-fun c!1012069 () Bool)

(assert (=> d!1808226 (= c!1012069 (isEmpty!35280 (_1!36141 lt!2282753)))))

(declare-fun e!3525715 () Bool)

(assert (=> d!1808226 (= (matchZipper!1879 lt!2282757 (_1!36141 lt!2282753)) e!3525715)))

(declare-fun b!5735003 () Bool)

(assert (=> b!5735003 (= e!3525715 (nullableZipper!1681 lt!2282757))))

(declare-fun b!5735004 () Bool)

(assert (=> b!5735004 (= e!3525715 (matchZipper!1879 (derivationStepZipper!1824 lt!2282757 (head!12142 (_1!36141 lt!2282753))) (tail!11237 (_1!36141 lt!2282753))))))

(assert (= (and d!1808226 c!1012069) b!5735003))

(assert (= (and d!1808226 (not c!1012069)) b!5735004))

(assert (=> d!1808226 m!6686768))

(declare-fun m!6687092 () Bool)

(assert (=> b!5735003 m!6687092))

(assert (=> b!5735004 m!6686766))

(assert (=> b!5735004 m!6686766))

(declare-fun m!6687094 () Bool)

(assert (=> b!5735004 m!6687094))

(assert (=> b!5735004 m!6686770))

(assert (=> b!5735004 m!6687094))

(assert (=> b!5735004 m!6686770))

(declare-fun m!6687096 () Bool)

(assert (=> b!5735004 m!6687096))

(assert (=> b!5734213 d!1808226))

(declare-fun d!1808228 () Bool)

(declare-fun c!1012070 () Bool)

(assert (=> d!1808228 (= c!1012070 (isEmpty!35280 s!2326))))

(declare-fun e!3525716 () Bool)

(assert (=> d!1808228 (= (matchZipper!1879 z!1189 s!2326) e!3525716)))

(declare-fun b!5735005 () Bool)

(assert (=> b!5735005 (= e!3525716 (nullableZipper!1681 z!1189))))

(declare-fun b!5735006 () Bool)

(assert (=> b!5735006 (= e!3525716 (matchZipper!1879 (derivationStepZipper!1824 z!1189 (head!12142 s!2326)) (tail!11237 s!2326)))))

(assert (= (and d!1808228 c!1012070) b!5735005))

(assert (= (and d!1808228 (not c!1012070)) b!5735006))

(assert (=> d!1808228 m!6686860))

(declare-fun m!6687098 () Bool)

(assert (=> b!5735005 m!6687098))

(assert (=> b!5735006 m!6686996))

(assert (=> b!5735006 m!6686996))

(declare-fun m!6687100 () Bool)

(assert (=> b!5735006 m!6687100))

(assert (=> b!5735006 m!6686998))

(assert (=> b!5735006 m!6687100))

(assert (=> b!5735006 m!6686998))

(declare-fun m!6687102 () Bool)

(assert (=> b!5735006 m!6687102))

(assert (=> b!5734212 d!1808228))

(declare-fun d!1808230 () Bool)

(assert (=> d!1808230 (= (isEmpty!35278 (t!376852 zl!343)) ((_ is Nil!63400) (t!376852 zl!343)))))

(assert (=> b!5734232 d!1808230))

(declare-fun b!5735016 () Bool)

(declare-fun e!3525724 () Bool)

(assert (=> b!5735016 (= e!3525724 (nullable!5773 (h!69847 (exprs!5625 lt!2282779))))))

(declare-fun b!5735017 () Bool)

(declare-fun e!3525723 () (InoxSet Context!10250))

(declare-fun e!3525722 () (InoxSet Context!10250))

(assert (=> b!5735017 (= e!3525723 e!3525722)))

(declare-fun c!1012073 () Bool)

(assert (=> b!5735017 (= c!1012073 ((_ is Cons!63399) (exprs!5625 lt!2282779)))))

(declare-fun bm!438430 () Bool)

(declare-fun call!438435 () (InoxSet Context!10250))

(assert (=> bm!438430 (= call!438435 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 lt!2282779)) (Context!10251 (t!376851 (exprs!5625 lt!2282779))) (h!69846 s!2326)))))

(declare-fun b!5735019 () Bool)

(assert (=> b!5735019 (= e!3525723 ((_ map or) call!438435 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 lt!2282779))) (h!69846 s!2326))))))

(declare-fun b!5735020 () Bool)

(assert (=> b!5735020 (= e!3525722 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735018 () Bool)

(assert (=> b!5735018 (= e!3525722 call!438435)))

(declare-fun d!1808232 () Bool)

(declare-fun c!1012074 () Bool)

(assert (=> d!1808232 (= c!1012074 e!3525724)))

(declare-fun res!2421780 () Bool)

(assert (=> d!1808232 (=> (not res!2421780) (not e!3525724))))

(assert (=> d!1808232 (= res!2421780 ((_ is Cons!63399) (exprs!5625 lt!2282779)))))

(assert (=> d!1808232 (= (derivationStepZipperUp!1009 lt!2282779 (h!69846 s!2326)) e!3525723)))

(assert (= (and d!1808232 res!2421780) b!5735016))

(assert (= (and d!1808232 c!1012074) b!5735019))

(assert (= (and d!1808232 (not c!1012074)) b!5735017))

(assert (= (and b!5735017 c!1012073) b!5735018))

(assert (= (and b!5735017 (not c!1012073)) b!5735020))

(assert (= (or b!5735019 b!5735018) bm!438430))

(declare-fun m!6687104 () Bool)

(assert (=> b!5735016 m!6687104))

(declare-fun m!6687106 () Bool)

(assert (=> bm!438430 m!6687106))

(declare-fun m!6687108 () Bool)

(assert (=> b!5735019 m!6687108))

(assert (=> b!5734211 d!1808232))

(declare-fun d!1808234 () Bool)

(assert (=> d!1808234 (= (flatMap!1354 z!1189 lambda!310582) (choose!43435 z!1189 lambda!310582))))

(declare-fun bs!1340491 () Bool)

(assert (= bs!1340491 d!1808234))

(declare-fun m!6687110 () Bool)

(assert (=> bs!1340491 m!6687110))

(assert (=> b!5734211 d!1808234))

(declare-fun d!1808236 () Bool)

(declare-fun nullableFct!1827 (Regex!15741) Bool)

(assert (=> d!1808236 (= (nullable!5773 (h!69847 (exprs!5625 (h!69848 zl!343)))) (nullableFct!1827 (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun bs!1340492 () Bool)

(assert (= bs!1340492 d!1808236))

(declare-fun m!6687120 () Bool)

(assert (=> bs!1340492 m!6687120))

(assert (=> b!5734211 d!1808236))

(declare-fun b!5735021 () Bool)

(declare-fun e!3525727 () Bool)

(assert (=> b!5735021 (= e!3525727 (nullable!5773 (h!69847 (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343)))))))))))

(declare-fun b!5735022 () Bool)

(declare-fun e!3525726 () (InoxSet Context!10250))

(declare-fun e!3525725 () (InoxSet Context!10250))

(assert (=> b!5735022 (= e!3525726 e!3525725)))

(declare-fun c!1012075 () Bool)

(assert (=> b!5735022 (= c!1012075 ((_ is Cons!63399) (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343))))))))))

(declare-fun bm!438431 () Bool)

(declare-fun call!438436 () (InoxSet Context!10250))

(assert (=> bm!438431 (= call!438436 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343))))))) (Context!10251 (t!376851 (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343)))))))) (h!69846 s!2326)))))

(declare-fun b!5735024 () Bool)

(assert (=> b!5735024 (= e!3525726 ((_ map or) call!438436 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343)))))))) (h!69846 s!2326))))))

(declare-fun b!5735025 () Bool)

(assert (=> b!5735025 (= e!3525725 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735023 () Bool)

(assert (=> b!5735023 (= e!3525725 call!438436)))

(declare-fun d!1808238 () Bool)

(declare-fun c!1012076 () Bool)

(assert (=> d!1808238 (= c!1012076 e!3525727)))

(declare-fun res!2421781 () Bool)

(assert (=> d!1808238 (=> (not res!2421781) (not e!3525727))))

(assert (=> d!1808238 (= res!2421781 ((_ is Cons!63399) (exprs!5625 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343))))))))))

(assert (=> d!1808238 (= (derivationStepZipperUp!1009 (Context!10251 (Cons!63399 (h!69847 (exprs!5625 (h!69848 zl!343))) (t!376851 (exprs!5625 (h!69848 zl!343))))) (h!69846 s!2326)) e!3525726)))

(assert (= (and d!1808238 res!2421781) b!5735021))

(assert (= (and d!1808238 c!1012076) b!5735024))

(assert (= (and d!1808238 (not c!1012076)) b!5735022))

(assert (= (and b!5735022 c!1012075) b!5735023))

(assert (= (and b!5735022 (not c!1012075)) b!5735025))

(assert (= (or b!5735024 b!5735023) bm!438431))

(declare-fun m!6687132 () Bool)

(assert (=> b!5735021 m!6687132))

(declare-fun m!6687134 () Bool)

(assert (=> bm!438431 m!6687134))

(declare-fun m!6687136 () Bool)

(assert (=> b!5735024 m!6687136))

(assert (=> b!5734211 d!1808238))

(declare-fun d!1808242 () Bool)

(assert (=> d!1808242 (= (flatMap!1354 z!1189 lambda!310582) (dynLambda!24810 lambda!310582 (h!69848 zl!343)))))

(declare-fun lt!2282970 () Unit!156496)

(assert (=> d!1808242 (= lt!2282970 (choose!43436 z!1189 (h!69848 zl!343) lambda!310582))))

(assert (=> d!1808242 (= z!1189 (store ((as const (Array Context!10250 Bool)) false) (h!69848 zl!343) true))))

(assert (=> d!1808242 (= (lemmaFlatMapOnSingletonSet!886 z!1189 (h!69848 zl!343) lambda!310582) lt!2282970)))

(declare-fun b_lambda!216621 () Bool)

(assert (=> (not b_lambda!216621) (not d!1808242)))

(declare-fun bs!1340493 () Bool)

(assert (= bs!1340493 d!1808242))

(assert (=> bs!1340493 m!6686116))

(declare-fun m!6687152 () Bool)

(assert (=> bs!1340493 m!6687152))

(declare-fun m!6687154 () Bool)

(assert (=> bs!1340493 m!6687154))

(declare-fun m!6687156 () Bool)

(assert (=> bs!1340493 m!6687156))

(assert (=> b!5734211 d!1808242))

(declare-fun b!5735030 () Bool)

(declare-fun e!3525732 () Bool)

(assert (=> b!5735030 (= e!3525732 (nullable!5773 (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun b!5735031 () Bool)

(declare-fun e!3525731 () (InoxSet Context!10250))

(declare-fun e!3525730 () (InoxSet Context!10250))

(assert (=> b!5735031 (= e!3525731 e!3525730)))

(declare-fun c!1012078 () Bool)

(assert (=> b!5735031 (= c!1012078 ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343))))))

(declare-fun bm!438432 () Bool)

(declare-fun call!438437 () (InoxSet Context!10250))

(assert (=> bm!438432 (= call!438437 (derivationStepZipperDown!1083 (h!69847 (exprs!5625 (h!69848 zl!343))) (Context!10251 (t!376851 (exprs!5625 (h!69848 zl!343)))) (h!69846 s!2326)))))

(declare-fun b!5735033 () Bool)

(assert (=> b!5735033 (= e!3525731 ((_ map or) call!438437 (derivationStepZipperUp!1009 (Context!10251 (t!376851 (exprs!5625 (h!69848 zl!343)))) (h!69846 s!2326))))))

(declare-fun b!5735034 () Bool)

(assert (=> b!5735034 (= e!3525730 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735032 () Bool)

(assert (=> b!5735032 (= e!3525730 call!438437)))

(declare-fun d!1808246 () Bool)

(declare-fun c!1012079 () Bool)

(assert (=> d!1808246 (= c!1012079 e!3525732)))

(declare-fun res!2421784 () Bool)

(assert (=> d!1808246 (=> (not res!2421784) (not e!3525732))))

(assert (=> d!1808246 (= res!2421784 ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343))))))

(assert (=> d!1808246 (= (derivationStepZipperUp!1009 (h!69848 zl!343) (h!69846 s!2326)) e!3525731)))

(assert (= (and d!1808246 res!2421784) b!5735030))

(assert (= (and d!1808246 c!1012079) b!5735033))

(assert (= (and d!1808246 (not c!1012079)) b!5735031))

(assert (= (and b!5735031 c!1012078) b!5735032))

(assert (= (and b!5735031 (not c!1012078)) b!5735034))

(assert (= (or b!5735033 b!5735032) bm!438432))

(assert (=> b!5735030 m!6686114))

(declare-fun m!6687158 () Bool)

(assert (=> bm!438432 m!6687158))

(declare-fun m!6687160 () Bool)

(assert (=> b!5735033 m!6687160))

(assert (=> b!5734211 d!1808246))

(declare-fun bm!438447 () Bool)

(declare-fun call!438455 () (InoxSet Context!10250))

(declare-fun call!438452 () (InoxSet Context!10250))

(assert (=> bm!438447 (= call!438455 call!438452)))

(declare-fun b!5735068 () Bool)

(declare-fun c!1012094 () Bool)

(declare-fun e!3525757 () Bool)

(assert (=> b!5735068 (= c!1012094 e!3525757)))

(declare-fun res!2421790 () Bool)

(assert (=> b!5735068 (=> (not res!2421790) (not e!3525757))))

(assert (=> b!5735068 (= res!2421790 ((_ is Concat!24586) (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun e!3525755 () (InoxSet Context!10250))

(declare-fun e!3525753 () (InoxSet Context!10250))

(assert (=> b!5735068 (= e!3525755 e!3525753)))

(declare-fun bm!438448 () Bool)

(declare-fun call!438453 () (InoxSet Context!10250))

(assert (=> bm!438448 (= call!438452 call!438453)))

(declare-fun b!5735069 () Bool)

(declare-fun e!3525756 () (InoxSet Context!10250))

(assert (=> b!5735069 (= e!3525753 e!3525756)))

(declare-fun c!1012095 () Bool)

(assert (=> b!5735069 (= c!1012095 ((_ is Concat!24586) (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun b!5735070 () Bool)

(declare-fun call!438456 () (InoxSet Context!10250))

(assert (=> b!5735070 (= e!3525755 ((_ map or) call!438456 call!438453))))

(declare-fun d!1808248 () Bool)

(declare-fun c!1012098 () Bool)

(assert (=> d!1808248 (= c!1012098 (and ((_ is ElementMatch!15741) (h!69847 (exprs!5625 (h!69848 zl!343)))) (= (c!1011861 (h!69847 (exprs!5625 (h!69848 zl!343)))) (h!69846 s!2326))))))

(declare-fun e!3525754 () (InoxSet Context!10250))

(assert (=> d!1808248 (= (derivationStepZipperDown!1083 (h!69847 (exprs!5625 (h!69848 zl!343))) lt!2282779 (h!69846 s!2326)) e!3525754)))

(declare-fun c!1012096 () Bool)

(declare-fun bm!438449 () Bool)

(declare-fun call!438457 () List!63523)

(assert (=> bm!438449 (= call!438456 (derivationStepZipperDown!1083 (ite c!1012096 (regOne!31995 (h!69847 (exprs!5625 (h!69848 zl!343)))) (regOne!31994 (h!69847 (exprs!5625 (h!69848 zl!343))))) (ite c!1012096 lt!2282779 (Context!10251 call!438457)) (h!69846 s!2326)))))

(declare-fun b!5735071 () Bool)

(assert (=> b!5735071 (= e!3525756 call!438455)))

(declare-fun b!5735072 () Bool)

(declare-fun e!3525752 () (InoxSet Context!10250))

(assert (=> b!5735072 (= e!3525752 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735073 () Bool)

(assert (=> b!5735073 (= e!3525753 ((_ map or) call!438456 call!438452))))

(declare-fun bm!438450 () Bool)

(declare-fun call!438454 () List!63523)

(assert (=> bm!438450 (= call!438453 (derivationStepZipperDown!1083 (ite c!1012096 (regTwo!31995 (h!69847 (exprs!5625 (h!69848 zl!343)))) (ite c!1012094 (regTwo!31994 (h!69847 (exprs!5625 (h!69848 zl!343)))) (ite c!1012095 (regOne!31994 (h!69847 (exprs!5625 (h!69848 zl!343)))) (reg!16070 (h!69847 (exprs!5625 (h!69848 zl!343))))))) (ite (or c!1012096 c!1012094) lt!2282779 (Context!10251 call!438454)) (h!69846 s!2326)))))

(declare-fun bm!438451 () Bool)

(declare-fun $colon$colon!1748 (List!63523 Regex!15741) List!63523)

(assert (=> bm!438451 (= call!438457 ($colon$colon!1748 (exprs!5625 lt!2282779) (ite (or c!1012094 c!1012095) (regTwo!31994 (h!69847 (exprs!5625 (h!69848 zl!343)))) (h!69847 (exprs!5625 (h!69848 zl!343))))))))

(declare-fun bm!438452 () Bool)

(assert (=> bm!438452 (= call!438454 call!438457)))

(declare-fun b!5735074 () Bool)

(declare-fun c!1012097 () Bool)

(assert (=> b!5735074 (= c!1012097 ((_ is Star!15741) (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(assert (=> b!5735074 (= e!3525756 e!3525752)))

(declare-fun b!5735075 () Bool)

(assert (=> b!5735075 (= e!3525752 call!438455)))

(declare-fun b!5735076 () Bool)

(assert (=> b!5735076 (= e!3525754 (store ((as const (Array Context!10250 Bool)) false) lt!2282779 true))))

(declare-fun b!5735077 () Bool)

(assert (=> b!5735077 (= e!3525757 (nullable!5773 (regOne!31994 (h!69847 (exprs!5625 (h!69848 zl!343))))))))

(declare-fun b!5735078 () Bool)

(assert (=> b!5735078 (= e!3525754 e!3525755)))

(assert (=> b!5735078 (= c!1012096 ((_ is Union!15741) (h!69847 (exprs!5625 (h!69848 zl!343)))))))

(assert (= (and d!1808248 c!1012098) b!5735076))

(assert (= (and d!1808248 (not c!1012098)) b!5735078))

(assert (= (and b!5735078 c!1012096) b!5735070))

(assert (= (and b!5735078 (not c!1012096)) b!5735068))

(assert (= (and b!5735068 res!2421790) b!5735077))

(assert (= (and b!5735068 c!1012094) b!5735073))

(assert (= (and b!5735068 (not c!1012094)) b!5735069))

(assert (= (and b!5735069 c!1012095) b!5735071))

(assert (= (and b!5735069 (not c!1012095)) b!5735074))

(assert (= (and b!5735074 c!1012097) b!5735075))

(assert (= (and b!5735074 (not c!1012097)) b!5735072))

(assert (= (or b!5735071 b!5735075) bm!438452))

(assert (= (or b!5735071 b!5735075) bm!438447))

(assert (= (or b!5735073 bm!438452) bm!438451))

(assert (= (or b!5735073 bm!438447) bm!438448))

(assert (= (or b!5735070 bm!438448) bm!438450))

(assert (= (or b!5735070 b!5735073) bm!438449))

(declare-fun m!6687178 () Bool)

(assert (=> bm!438449 m!6687178))

(declare-fun m!6687180 () Bool)

(assert (=> b!5735076 m!6687180))

(declare-fun m!6687182 () Bool)

(assert (=> bm!438450 m!6687182))

(declare-fun m!6687184 () Bool)

(assert (=> b!5735077 m!6687184))

(declare-fun m!6687186 () Bool)

(assert (=> bm!438451 m!6687186))

(assert (=> b!5734211 d!1808248))

(declare-fun d!1808256 () Bool)

(assert (=> d!1808256 (= (isEmpty!35277 (t!376851 (exprs!5625 (h!69848 zl!343)))) ((_ is Nil!63399) (t!376851 (exprs!5625 (h!69848 zl!343)))))))

(assert (=> b!5734231 d!1808256))

(declare-fun d!1808258 () Bool)

(assert (=> d!1808258 (= (Exists!2841 lambda!310587) (choose!43443 lambda!310587))))

(declare-fun bs!1340526 () Bool)

(assert (= bs!1340526 d!1808258))

(declare-fun m!6687188 () Bool)

(assert (=> bs!1340526 m!6687188))

(assert (=> b!5734230 d!1808258))

(declare-fun d!1808260 () Bool)

(assert (=> d!1808260 (= (Exists!2841 lambda!310589) (choose!43443 lambda!310589))))

(declare-fun bs!1340527 () Bool)

(assert (= bs!1340527 d!1808260))

(declare-fun m!6687190 () Bool)

(assert (=> bs!1340527 m!6687190))

(assert (=> b!5734230 d!1808260))

(declare-fun b!5735104 () Bool)

(declare-fun e!3525769 () Bool)

(declare-fun lt!2282979 () List!63522)

(assert (=> b!5735104 (= e!3525769 (or (not (= (_2!36141 lt!2282781) Nil!63398)) (= lt!2282979 (_1!36141 lt!2282781))))))

(declare-fun b!5735101 () Bool)

(declare-fun e!3525770 () List!63522)

(assert (=> b!5735101 (= e!3525770 (_2!36141 lt!2282781))))

(declare-fun d!1808262 () Bool)

(assert (=> d!1808262 e!3525769))

(declare-fun res!2421803 () Bool)

(assert (=> d!1808262 (=> (not res!2421803) (not e!3525769))))

(declare-fun content!11551 (List!63522) (InoxSet C!31752))

(assert (=> d!1808262 (= res!2421803 (= (content!11551 lt!2282979) ((_ map or) (content!11551 (_1!36141 lt!2282781)) (content!11551 (_2!36141 lt!2282781)))))))

(assert (=> d!1808262 (= lt!2282979 e!3525770)))

(declare-fun c!1012104 () Bool)

(assert (=> d!1808262 (= c!1012104 ((_ is Nil!63398) (_1!36141 lt!2282781)))))

(assert (=> d!1808262 (= (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781)) lt!2282979)))

(declare-fun b!5735103 () Bool)

(declare-fun res!2421804 () Bool)

(assert (=> b!5735103 (=> (not res!2421804) (not e!3525769))))

(declare-fun size!40057 (List!63522) Int)

(assert (=> b!5735103 (= res!2421804 (= (size!40057 lt!2282979) (+ (size!40057 (_1!36141 lt!2282781)) (size!40057 (_2!36141 lt!2282781)))))))

(declare-fun b!5735102 () Bool)

(assert (=> b!5735102 (= e!3525770 (Cons!63398 (h!69846 (_1!36141 lt!2282781)) (++!13954 (t!376850 (_1!36141 lt!2282781)) (_2!36141 lt!2282781))))))

(assert (= (and d!1808262 c!1012104) b!5735101))

(assert (= (and d!1808262 (not c!1012104)) b!5735102))

(assert (= (and d!1808262 res!2421803) b!5735103))

(assert (= (and b!5735103 res!2421804) b!5735104))

(declare-fun m!6687206 () Bool)

(assert (=> d!1808262 m!6687206))

(declare-fun m!6687208 () Bool)

(assert (=> d!1808262 m!6687208))

(declare-fun m!6687210 () Bool)

(assert (=> d!1808262 m!6687210))

(declare-fun m!6687212 () Bool)

(assert (=> b!5735103 m!6687212))

(declare-fun m!6687214 () Bool)

(assert (=> b!5735103 m!6687214))

(declare-fun m!6687216 () Bool)

(assert (=> b!5735103 m!6687216))

(declare-fun m!6687218 () Bool)

(assert (=> b!5735102 m!6687218))

(assert (=> b!5734230 d!1808262))

(declare-fun b!5735111 () Bool)

(declare-fun e!3525781 () Bool)

(declare-fun e!3525776 () Bool)

(assert (=> b!5735111 (= e!3525781 e!3525776)))

(declare-fun res!2421810 () Bool)

(assert (=> b!5735111 (=> (not res!2421810) (not e!3525776))))

(declare-fun lt!2282980 () Bool)

(assert (=> b!5735111 (= res!2421810 (not lt!2282980))))

(declare-fun b!5735112 () Bool)

(declare-fun e!3525779 () Bool)

(assert (=> b!5735112 (= e!3525779 (not (= (head!12142 (_1!36141 lt!2282781)) (c!1011861 (reg!16070 (regOne!31994 r!7292))))))))

(declare-fun b!5735113 () Bool)

(declare-fun e!3525775 () Bool)

(assert (=> b!5735113 (= e!3525775 (not lt!2282980))))

(declare-fun b!5735114 () Bool)

(declare-fun res!2421811 () Bool)

(assert (=> b!5735114 (=> res!2421811 e!3525781)))

(assert (=> b!5735114 (= res!2421811 (not ((_ is ElementMatch!15741) (reg!16070 (regOne!31994 r!7292)))))))

(assert (=> b!5735114 (= e!3525775 e!3525781)))

(declare-fun b!5735116 () Bool)

(declare-fun e!3525778 () Bool)

(assert (=> b!5735116 (= e!3525778 e!3525775)))

(declare-fun c!1012109 () Bool)

(assert (=> b!5735116 (= c!1012109 ((_ is EmptyLang!15741) (reg!16070 (regOne!31994 r!7292))))))

(declare-fun b!5735117 () Bool)

(declare-fun e!3525780 () Bool)

(assert (=> b!5735117 (= e!3525780 (matchR!7926 (derivativeStep!4534 (reg!16070 (regOne!31994 r!7292)) (head!12142 (_1!36141 lt!2282781))) (tail!11237 (_1!36141 lt!2282781))))))

(declare-fun b!5735118 () Bool)

(declare-fun res!2421814 () Bool)

(declare-fun e!3525777 () Bool)

(assert (=> b!5735118 (=> (not res!2421814) (not e!3525777))))

(declare-fun call!438459 () Bool)

(assert (=> b!5735118 (= res!2421814 (not call!438459))))

(declare-fun b!5735119 () Bool)

(assert (=> b!5735119 (= e!3525780 (nullable!5773 (reg!16070 (regOne!31994 r!7292))))))

(declare-fun b!5735120 () Bool)

(assert (=> b!5735120 (= e!3525778 (= lt!2282980 call!438459))))

(declare-fun b!5735121 () Bool)

(declare-fun res!2421812 () Bool)

(assert (=> b!5735121 (=> res!2421812 e!3525779)))

(assert (=> b!5735121 (= res!2421812 (not (isEmpty!35280 (tail!11237 (_1!36141 lt!2282781)))))))

(declare-fun b!5735122 () Bool)

(declare-fun res!2421813 () Bool)

(assert (=> b!5735122 (=> (not res!2421813) (not e!3525777))))

(assert (=> b!5735122 (= res!2421813 (isEmpty!35280 (tail!11237 (_1!36141 lt!2282781))))))

(declare-fun b!5735123 () Bool)

(declare-fun res!2421809 () Bool)

(assert (=> b!5735123 (=> res!2421809 e!3525781)))

(assert (=> b!5735123 (= res!2421809 e!3525777)))

(declare-fun res!2421808 () Bool)

(assert (=> b!5735123 (=> (not res!2421808) (not e!3525777))))

(assert (=> b!5735123 (= res!2421808 lt!2282980)))

(declare-fun d!1808270 () Bool)

(assert (=> d!1808270 e!3525778))

(declare-fun c!1012107 () Bool)

(assert (=> d!1808270 (= c!1012107 ((_ is EmptyExpr!15741) (reg!16070 (regOne!31994 r!7292))))))

(assert (=> d!1808270 (= lt!2282980 e!3525780)))

(declare-fun c!1012108 () Bool)

(assert (=> d!1808270 (= c!1012108 (isEmpty!35280 (_1!36141 lt!2282781)))))

(assert (=> d!1808270 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808270 (= (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282781)) lt!2282980)))

(declare-fun b!5735115 () Bool)

(assert (=> b!5735115 (= e!3525776 e!3525779)))

(declare-fun res!2421807 () Bool)

(assert (=> b!5735115 (=> res!2421807 e!3525779)))

(assert (=> b!5735115 (= res!2421807 call!438459)))

(declare-fun bm!438454 () Bool)

(assert (=> bm!438454 (= call!438459 (isEmpty!35280 (_1!36141 lt!2282781)))))

(declare-fun b!5735124 () Bool)

(assert (=> b!5735124 (= e!3525777 (= (head!12142 (_1!36141 lt!2282781)) (c!1011861 (reg!16070 (regOne!31994 r!7292)))))))

(assert (= (and d!1808270 c!1012108) b!5735119))

(assert (= (and d!1808270 (not c!1012108)) b!5735117))

(assert (= (and d!1808270 c!1012107) b!5735120))

(assert (= (and d!1808270 (not c!1012107)) b!5735116))

(assert (= (and b!5735116 c!1012109) b!5735113))

(assert (= (and b!5735116 (not c!1012109)) b!5735114))

(assert (= (and b!5735114 (not res!2421811)) b!5735123))

(assert (= (and b!5735123 res!2421808) b!5735118))

(assert (= (and b!5735118 res!2421814) b!5735122))

(assert (= (and b!5735122 res!2421813) b!5735124))

(assert (= (and b!5735123 (not res!2421809)) b!5735111))

(assert (= (and b!5735111 res!2421810) b!5735115))

(assert (= (and b!5735115 (not res!2421807)) b!5735121))

(assert (= (and b!5735121 (not res!2421812)) b!5735112))

(assert (= (or b!5735120 b!5735115 b!5735118) bm!438454))

(declare-fun m!6687220 () Bool)

(assert (=> b!5735124 m!6687220))

(declare-fun m!6687222 () Bool)

(assert (=> bm!438454 m!6687222))

(assert (=> b!5735112 m!6687220))

(declare-fun m!6687224 () Bool)

(assert (=> b!5735122 m!6687224))

(assert (=> b!5735122 m!6687224))

(declare-fun m!6687226 () Bool)

(assert (=> b!5735122 m!6687226))

(assert (=> b!5735117 m!6687220))

(assert (=> b!5735117 m!6687220))

(declare-fun m!6687228 () Bool)

(assert (=> b!5735117 m!6687228))

(assert (=> b!5735117 m!6687224))

(assert (=> b!5735117 m!6687228))

(assert (=> b!5735117 m!6687224))

(declare-fun m!6687230 () Bool)

(assert (=> b!5735117 m!6687230))

(assert (=> b!5735121 m!6687224))

(assert (=> b!5735121 m!6687224))

(assert (=> b!5735121 m!6687226))

(assert (=> d!1808270 m!6687222))

(assert (=> d!1808270 m!6686778))

(assert (=> b!5735119 m!6686780))

(assert (=> b!5734230 d!1808270))

(declare-fun bs!1340533 () Bool)

(declare-fun d!1808272 () Bool)

(assert (= bs!1340533 (and d!1808272 b!5734236)))

(declare-fun lambda!310663 () Int)

(assert (=> bs!1340533 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310663 lambda!310585))))

(declare-fun bs!1340534 () Bool)

(assert (= bs!1340534 (and d!1808272 b!5734230)))

(assert (=> bs!1340534 (= lambda!310663 lambda!310587)))

(declare-fun bs!1340535 () Bool)

(assert (= bs!1340535 (and d!1808272 b!5734841)))

(assert (=> bs!1340535 (not (= lambda!310663 lambda!310644))))

(assert (=> bs!1340533 (not (= lambda!310663 lambda!310586))))

(declare-fun bs!1340536 () Bool)

(assert (= bs!1340536 (and d!1808272 b!5734838)))

(assert (=> bs!1340536 (not (= lambda!310663 lambda!310647))))

(assert (=> bs!1340534 (not (= lambda!310663 lambda!310588))))

(declare-fun bs!1340537 () Bool)

(assert (= bs!1340537 (and d!1808272 b!5734197)))

(assert (=> bs!1340537 (not (= lambda!310663 lambda!310581))))

(declare-fun bs!1340538 () Bool)

(assert (= bs!1340538 (and d!1808272 d!1808088)))

(assert (=> bs!1340538 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310663 lambda!310628))))

(assert (=> bs!1340537 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310663 lambda!310580))))

(declare-fun bs!1340539 () Bool)

(assert (= bs!1340539 (and d!1808272 d!1808166)))

(assert (=> bs!1340539 (not (= lambda!310663 lambda!310657))))

(assert (=> bs!1340539 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310663 lambda!310656))))

(assert (=> bs!1340534 (not (= lambda!310663 lambda!310589))))

(assert (=> d!1808272 true))

(assert (=> d!1808272 true))

(assert (=> d!1808272 true))

(declare-fun lambda!310664 () Int)

(assert (=> bs!1340533 (not (= lambda!310664 lambda!310585))))

(assert (=> bs!1340535 (not (= lambda!310664 lambda!310644))))

(assert (=> bs!1340533 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310664 lambda!310586))))

(assert (=> bs!1340536 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 lt!2282759)) (= lt!2282770 (regTwo!31994 lt!2282759))) (= lambda!310664 lambda!310647))))

(assert (=> bs!1340534 (= lambda!310664 lambda!310588)))

(assert (=> bs!1340537 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310664 lambda!310581))))

(assert (=> bs!1340538 (not (= lambda!310664 lambda!310628))))

(assert (=> bs!1340537 (not (= lambda!310664 lambda!310580))))

(assert (=> bs!1340539 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310664 lambda!310657))))

(assert (=> bs!1340539 (not (= lambda!310664 lambda!310656))))

(assert (=> bs!1340534 (not (= lambda!310664 lambda!310589))))

(assert (=> bs!1340534 (not (= lambda!310664 lambda!310587))))

(declare-fun bs!1340540 () Bool)

(assert (= bs!1340540 d!1808272))

(assert (=> bs!1340540 (not (= lambda!310664 lambda!310663))))

(assert (=> d!1808272 true))

(assert (=> d!1808272 true))

(assert (=> d!1808272 true))

(assert (=> d!1808272 (= (Exists!2841 lambda!310663) (Exists!2841 lambda!310664))))

(declare-fun lt!2282981 () Unit!156496)

(assert (=> d!1808272 (= lt!2282981 (choose!43448 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)))))

(assert (=> d!1808272 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808272 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)) lt!2282981)))

(declare-fun m!6687238 () Bool)

(assert (=> bs!1340540 m!6687238))

(declare-fun m!6687240 () Bool)

(assert (=> bs!1340540 m!6687240))

(declare-fun m!6687242 () Bool)

(assert (=> bs!1340540 m!6687242))

(assert (=> bs!1340540 m!6686778))

(assert (=> b!5734230 d!1808272))

(declare-fun d!1808278 () Bool)

(assert (=> d!1808278 (= (++!13954 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781)) (_2!36141 lt!2282777)) (++!13954 (_1!36141 lt!2282781) (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777))))))

(declare-fun lt!2282986 () Unit!156496)

(declare-fun choose!43457 (List!63522 List!63522 List!63522) Unit!156496)

(assert (=> d!1808278 (= lt!2282986 (choose!43457 (_1!36141 lt!2282781) (_2!36141 lt!2282781) (_2!36141 lt!2282777)))))

(assert (=> d!1808278 (= (lemmaConcatAssociativity!2884 (_1!36141 lt!2282781) (_2!36141 lt!2282781) (_2!36141 lt!2282777)) lt!2282986)))

(declare-fun bs!1340541 () Bool)

(assert (= bs!1340541 d!1808278))

(declare-fun m!6687244 () Bool)

(assert (=> bs!1340541 m!6687244))

(assert (=> bs!1340541 m!6686124))

(assert (=> bs!1340541 m!6686136))

(assert (=> bs!1340541 m!6686142))

(assert (=> bs!1340541 m!6686142))

(assert (=> bs!1340541 m!6686150))

(assert (=> bs!1340541 m!6686124))

(assert (=> b!5734230 d!1808278))

(declare-fun b!5735149 () Bool)

(declare-fun lt!2282988 () List!63522)

(declare-fun e!3525799 () Bool)

(assert (=> b!5735149 (= e!3525799 (or (not (= (_2!36141 lt!2282777) Nil!63398)) (= lt!2282988 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781)))))))

(declare-fun b!5735146 () Bool)

(declare-fun e!3525800 () List!63522)

(assert (=> b!5735146 (= e!3525800 (_2!36141 lt!2282777))))

(declare-fun d!1808280 () Bool)

(assert (=> d!1808280 e!3525799))

(declare-fun res!2421828 () Bool)

(assert (=> d!1808280 (=> (not res!2421828) (not e!3525799))))

(assert (=> d!1808280 (= res!2421828 (= (content!11551 lt!2282988) ((_ map or) (content!11551 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781))) (content!11551 (_2!36141 lt!2282777)))))))

(assert (=> d!1808280 (= lt!2282988 e!3525800)))

(declare-fun c!1012114 () Bool)

(assert (=> d!1808280 (= c!1012114 ((_ is Nil!63398) (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781))))))

(assert (=> d!1808280 (= (++!13954 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781)) (_2!36141 lt!2282777)) lt!2282988)))

(declare-fun b!5735148 () Bool)

(declare-fun res!2421829 () Bool)

(assert (=> b!5735148 (=> (not res!2421829) (not e!3525799))))

(assert (=> b!5735148 (= res!2421829 (= (size!40057 lt!2282988) (+ (size!40057 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781))) (size!40057 (_2!36141 lt!2282777)))))))

(declare-fun b!5735147 () Bool)

(assert (=> b!5735147 (= e!3525800 (Cons!63398 (h!69846 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781))) (++!13954 (t!376850 (++!13954 (_1!36141 lt!2282781) (_2!36141 lt!2282781))) (_2!36141 lt!2282777))))))

(assert (= (and d!1808280 c!1012114) b!5735146))

(assert (= (and d!1808280 (not c!1012114)) b!5735147))

(assert (= (and d!1808280 res!2421828) b!5735148))

(assert (= (and b!5735148 res!2421829) b!5735149))

(declare-fun m!6687252 () Bool)

(assert (=> d!1808280 m!6687252))

(assert (=> d!1808280 m!6686124))

(declare-fun m!6687254 () Bool)

(assert (=> d!1808280 m!6687254))

(declare-fun m!6687256 () Bool)

(assert (=> d!1808280 m!6687256))

(declare-fun m!6687258 () Bool)

(assert (=> b!5735148 m!6687258))

(assert (=> b!5735148 m!6686124))

(declare-fun m!6687260 () Bool)

(assert (=> b!5735148 m!6687260))

(declare-fun m!6687262 () Bool)

(assert (=> b!5735148 m!6687262))

(declare-fun m!6687264 () Bool)

(assert (=> b!5735147 m!6687264))

(assert (=> b!5734230 d!1808280))

(declare-fun bs!1340543 () Bool)

(declare-fun d!1808284 () Bool)

(assert (= bs!1340543 (and d!1808284 b!5734236)))

(declare-fun lambda!310665 () Int)

(assert (=> bs!1340543 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310665 lambda!310585))))

(declare-fun bs!1340544 () Bool)

(assert (= bs!1340544 (and d!1808284 b!5734841)))

(assert (=> bs!1340544 (not (= lambda!310665 lambda!310644))))

(assert (=> bs!1340543 (not (= lambda!310665 lambda!310586))))

(declare-fun bs!1340545 () Bool)

(assert (= bs!1340545 (and d!1808284 d!1808272)))

(assert (=> bs!1340545 (not (= lambda!310665 lambda!310664))))

(declare-fun bs!1340546 () Bool)

(assert (= bs!1340546 (and d!1808284 b!5734838)))

(assert (=> bs!1340546 (not (= lambda!310665 lambda!310647))))

(declare-fun bs!1340547 () Bool)

(assert (= bs!1340547 (and d!1808284 b!5734230)))

(assert (=> bs!1340547 (not (= lambda!310665 lambda!310588))))

(declare-fun bs!1340548 () Bool)

(assert (= bs!1340548 (and d!1808284 b!5734197)))

(assert (=> bs!1340548 (not (= lambda!310665 lambda!310581))))

(declare-fun bs!1340549 () Bool)

(assert (= bs!1340549 (and d!1808284 d!1808088)))

(assert (=> bs!1340549 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310665 lambda!310628))))

(assert (=> bs!1340548 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310665 lambda!310580))))

(declare-fun bs!1340550 () Bool)

(assert (= bs!1340550 (and d!1808284 d!1808166)))

(assert (=> bs!1340550 (not (= lambda!310665 lambda!310657))))

(assert (=> bs!1340550 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= lt!2282770 (regTwo!31994 r!7292))) (= lambda!310665 lambda!310656))))

(assert (=> bs!1340547 (not (= lambda!310665 lambda!310589))))

(assert (=> bs!1340547 (= lambda!310665 lambda!310587)))

(assert (=> bs!1340545 (= lambda!310665 lambda!310663)))

(assert (=> d!1808284 true))

(assert (=> d!1808284 true))

(assert (=> d!1808284 true))

(assert (=> d!1808284 (= (isDefined!12453 (findConcatSeparation!2164 (reg!16070 (regOne!31994 r!7292)) lt!2282770 Nil!63398 (_1!36141 lt!2282777) (_1!36141 lt!2282777))) (Exists!2841 lambda!310665))))

(declare-fun lt!2282989 () Unit!156496)

(assert (=> d!1808284 (= lt!2282989 (choose!43441 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)))))

(assert (=> d!1808284 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808284 (= (lemmaFindConcatSeparationEquivalentToExists!1928 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (_1!36141 lt!2282777)) lt!2282989)))

(declare-fun bs!1340551 () Bool)

(assert (= bs!1340551 d!1808284))

(assert (=> bs!1340551 m!6686140))

(declare-fun m!6687266 () Bool)

(assert (=> bs!1340551 m!6687266))

(declare-fun m!6687268 () Bool)

(assert (=> bs!1340551 m!6687268))

(assert (=> bs!1340551 m!6686140))

(declare-fun m!6687270 () Bool)

(assert (=> bs!1340551 m!6687270))

(assert (=> bs!1340551 m!6686778))

(assert (=> b!5734230 d!1808284))

(declare-fun bs!1340560 () Bool)

(declare-fun d!1808286 () Bool)

(assert (= bs!1340560 (and d!1808286 b!5734236)))

(declare-fun lambda!310675 () Int)

(assert (=> bs!1340560 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) (regTwo!31994 r!7292))) (= lambda!310675 lambda!310585))))

(declare-fun bs!1340561 () Bool)

(assert (= bs!1340561 (and d!1808286 d!1808284)))

(assert (=> bs!1340561 (= (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) lt!2282770) (= lambda!310675 lambda!310665))))

(declare-fun bs!1340562 () Bool)

(assert (= bs!1340562 (and d!1808286 b!5734841)))

(assert (=> bs!1340562 (not (= lambda!310675 lambda!310644))))

(assert (=> bs!1340560 (not (= lambda!310675 lambda!310586))))

(declare-fun bs!1340563 () Bool)

(assert (= bs!1340563 (and d!1808286 d!1808272)))

(assert (=> bs!1340563 (not (= lambda!310675 lambda!310664))))

(declare-fun bs!1340564 () Bool)

(assert (= bs!1340564 (and d!1808286 b!5734838)))

(assert (=> bs!1340564 (not (= lambda!310675 lambda!310647))))

(declare-fun bs!1340565 () Bool)

(assert (= bs!1340565 (and d!1808286 b!5734230)))

(assert (=> bs!1340565 (not (= lambda!310675 lambda!310588))))

(declare-fun bs!1340566 () Bool)

(assert (= bs!1340566 (and d!1808286 b!5734197)))

(assert (=> bs!1340566 (not (= lambda!310675 lambda!310581))))

(declare-fun bs!1340567 () Bool)

(assert (= bs!1340567 (and d!1808286 d!1808088)))

(assert (=> bs!1340567 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) (regTwo!31994 r!7292))) (= lambda!310675 lambda!310628))))

(assert (=> bs!1340566 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (regOne!31994 r!7292)) (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) (regTwo!31994 r!7292))) (= lambda!310675 lambda!310580))))

(declare-fun bs!1340568 () Bool)

(assert (= bs!1340568 (and d!1808286 d!1808166)))

(assert (=> bs!1340568 (not (= lambda!310675 lambda!310657))))

(assert (=> bs!1340568 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) lt!2282787) (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) (regTwo!31994 r!7292))) (= lambda!310675 lambda!310656))))

(assert (=> bs!1340565 (not (= lambda!310675 lambda!310589))))

(assert (=> bs!1340565 (= (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) lt!2282770) (= lambda!310675 lambda!310587))))

(assert (=> bs!1340563 (= (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) lt!2282770) (= lambda!310675 lambda!310663))))

(assert (=> d!1808286 true))

(assert (=> d!1808286 true))

(declare-fun lambda!310676 () Int)

(assert (=> bs!1340560 (not (= lambda!310676 lambda!310585))))

(declare-fun bs!1340569 () Bool)

(assert (= bs!1340569 d!1808286))

(assert (=> bs!1340569 (not (= lambda!310676 lambda!310675))))

(assert (=> bs!1340561 (not (= lambda!310676 lambda!310665))))

(assert (=> bs!1340562 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 (regOne!31994 r!7292)) (reg!16070 lt!2282759)) (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) lt!2282759)) (= lambda!310676 lambda!310644))))

(assert (=> bs!1340560 (not (= lambda!310676 lambda!310586))))

(assert (=> bs!1340563 (not (= lambda!310676 lambda!310664))))

(assert (=> bs!1340564 (not (= lambda!310676 lambda!310647))))

(assert (=> bs!1340565 (not (= lambda!310676 lambda!310588))))

(assert (=> bs!1340566 (not (= lambda!310676 lambda!310581))))

(assert (=> bs!1340567 (not (= lambda!310676 lambda!310628))))

(assert (=> bs!1340566 (not (= lambda!310676 lambda!310580))))

(assert (=> bs!1340568 (not (= lambda!310676 lambda!310657))))

(assert (=> bs!1340568 (not (= lambda!310676 lambda!310656))))

(assert (=> bs!1340565 (= (= (Star!15741 (reg!16070 (regOne!31994 r!7292))) lt!2282770) (= lambda!310676 lambda!310589))))

(assert (=> bs!1340565 (not (= lambda!310676 lambda!310587))))

(assert (=> bs!1340563 (not (= lambda!310676 lambda!310663))))

(assert (=> d!1808286 true))

(assert (=> d!1808286 true))

(assert (=> d!1808286 (= (Exists!2841 lambda!310675) (Exists!2841 lambda!310676))))

(declare-fun lt!2282995 () Unit!156496)

(declare-fun choose!43459 (Regex!15741 List!63522) Unit!156496)

(assert (=> d!1808286 (= lt!2282995 (choose!43459 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282777)))))

(assert (=> d!1808286 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808286 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!554 (reg!16070 (regOne!31994 r!7292)) (_1!36141 lt!2282777)) lt!2282995)))

(declare-fun m!6687284 () Bool)

(assert (=> bs!1340569 m!6687284))

(declare-fun m!6687286 () Bool)

(assert (=> bs!1340569 m!6687286))

(declare-fun m!6687288 () Bool)

(assert (=> bs!1340569 m!6687288))

(assert (=> bs!1340569 m!6686778))

(assert (=> b!5734230 d!1808286))

(declare-fun d!1808302 () Bool)

(assert (=> d!1808302 (= (get!21867 lt!2282766) (v!51804 lt!2282766))))

(assert (=> b!5734230 d!1808302))

(declare-fun bs!1340570 () Bool)

(declare-fun b!5735225 () Bool)

(assert (= bs!1340570 (and b!5735225 b!5734236)))

(declare-fun lambda!310677 () Int)

(assert (=> bs!1340570 (not (= lambda!310677 lambda!310585))))

(declare-fun bs!1340571 () Bool)

(assert (= bs!1340571 (and b!5735225 d!1808286)))

(assert (=> bs!1340571 (not (= lambda!310677 lambda!310675))))

(declare-fun bs!1340572 () Bool)

(assert (= bs!1340572 (and b!5735225 d!1808284)))

(assert (=> bs!1340572 (not (= lambda!310677 lambda!310665))))

(declare-fun bs!1340573 () Bool)

(assert (= bs!1340573 (and b!5735225 b!5734841)))

(assert (=> bs!1340573 (= (and (= (_1!36141 lt!2282777) s!2326) (= (reg!16070 lt!2282787) (reg!16070 lt!2282759)) (= lt!2282787 lt!2282759)) (= lambda!310677 lambda!310644))))

(declare-fun bs!1340574 () Bool)

(assert (= bs!1340574 (and b!5735225 d!1808272)))

(assert (=> bs!1340574 (not (= lambda!310677 lambda!310664))))

(declare-fun bs!1340575 () Bool)

(assert (= bs!1340575 (and b!5735225 b!5734838)))

(assert (=> bs!1340575 (not (= lambda!310677 lambda!310647))))

(declare-fun bs!1340576 () Bool)

(assert (= bs!1340576 (and b!5735225 b!5734230)))

(assert (=> bs!1340576 (not (= lambda!310677 lambda!310588))))

(declare-fun bs!1340577 () Bool)

(assert (= bs!1340577 (and b!5735225 b!5734197)))

(assert (=> bs!1340577 (not (= lambda!310677 lambda!310581))))

(declare-fun bs!1340578 () Bool)

(assert (= bs!1340578 (and b!5735225 d!1808088)))

(assert (=> bs!1340578 (not (= lambda!310677 lambda!310628))))

(assert (=> bs!1340577 (not (= lambda!310677 lambda!310580))))

(declare-fun bs!1340579 () Bool)

(assert (= bs!1340579 (and b!5735225 d!1808166)))

(assert (=> bs!1340579 (not (= lambda!310677 lambda!310657))))

(assert (=> bs!1340579 (not (= lambda!310677 lambda!310656))))

(assert (=> bs!1340576 (= (and (= (reg!16070 lt!2282787) (reg!16070 (regOne!31994 r!7292))) (= lt!2282787 lt!2282770)) (= lambda!310677 lambda!310589))))

(assert (=> bs!1340576 (not (= lambda!310677 lambda!310587))))

(assert (=> bs!1340574 (not (= lambda!310677 lambda!310663))))

(assert (=> bs!1340571 (= (and (= (reg!16070 lt!2282787) (reg!16070 (regOne!31994 r!7292))) (= lt!2282787 (Star!15741 (reg!16070 (regOne!31994 r!7292))))) (= lambda!310677 lambda!310676))))

(assert (=> bs!1340570 (not (= lambda!310677 lambda!310586))))

(assert (=> b!5735225 true))

(assert (=> b!5735225 true))

(declare-fun bs!1340580 () Bool)

(declare-fun b!5735222 () Bool)

(assert (= bs!1340580 (and b!5735222 b!5734236)))

(declare-fun lambda!310678 () Int)

(assert (=> bs!1340580 (not (= lambda!310678 lambda!310585))))

(declare-fun bs!1340581 () Bool)

(assert (= bs!1340581 (and b!5735222 d!1808286)))

(assert (=> bs!1340581 (not (= lambda!310678 lambda!310675))))

(declare-fun bs!1340582 () Bool)

(assert (= bs!1340582 (and b!5735222 d!1808284)))

(assert (=> bs!1340582 (not (= lambda!310678 lambda!310665))))

(declare-fun bs!1340583 () Bool)

(assert (= bs!1340583 (and b!5735222 b!5734841)))

(assert (=> bs!1340583 (not (= lambda!310678 lambda!310644))))

(declare-fun bs!1340584 () Bool)

(assert (= bs!1340584 (and b!5735222 d!1808272)))

(assert (=> bs!1340584 (= (and (= (regOne!31994 lt!2282787) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 lt!2282787) lt!2282770)) (= lambda!310678 lambda!310664))))

(declare-fun bs!1340585 () Bool)

(assert (= bs!1340585 (and b!5735222 b!5734838)))

(assert (=> bs!1340585 (= (and (= (_1!36141 lt!2282777) s!2326) (= (regOne!31994 lt!2282787) (regOne!31994 lt!2282759)) (= (regTwo!31994 lt!2282787) (regTwo!31994 lt!2282759))) (= lambda!310678 lambda!310647))))

(declare-fun bs!1340586 () Bool)

(assert (= bs!1340586 (and b!5735222 b!5734230)))

(assert (=> bs!1340586 (= (and (= (regOne!31994 lt!2282787) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 lt!2282787) lt!2282770)) (= lambda!310678 lambda!310588))))

(declare-fun bs!1340587 () Bool)

(assert (= bs!1340587 (and b!5735222 b!5734197)))

(assert (=> bs!1340587 (= (and (= (_1!36141 lt!2282777) s!2326) (= (regOne!31994 lt!2282787) (regOne!31994 r!7292)) (= (regTwo!31994 lt!2282787) (regTwo!31994 r!7292))) (= lambda!310678 lambda!310581))))

(declare-fun bs!1340588 () Bool)

(assert (= bs!1340588 (and b!5735222 d!1808088)))

(assert (=> bs!1340588 (not (= lambda!310678 lambda!310628))))

(assert (=> bs!1340587 (not (= lambda!310678 lambda!310580))))

(declare-fun bs!1340589 () Bool)

(assert (= bs!1340589 (and b!5735222 d!1808166)))

(assert (=> bs!1340589 (= (and (= (_1!36141 lt!2282777) s!2326) (= (regOne!31994 lt!2282787) lt!2282787) (= (regTwo!31994 lt!2282787) (regTwo!31994 r!7292))) (= lambda!310678 lambda!310657))))

(assert (=> bs!1340589 (not (= lambda!310678 lambda!310656))))

(assert (=> bs!1340586 (not (= lambda!310678 lambda!310589))))

(assert (=> bs!1340586 (not (= lambda!310678 lambda!310587))))

(assert (=> bs!1340584 (not (= lambda!310678 lambda!310663))))

(declare-fun bs!1340590 () Bool)

(assert (= bs!1340590 (and b!5735222 b!5735225)))

(assert (=> bs!1340590 (not (= lambda!310678 lambda!310677))))

(assert (=> bs!1340581 (not (= lambda!310678 lambda!310676))))

(assert (=> bs!1340580 (= (and (= (_1!36141 lt!2282777) s!2326) (= (regOne!31994 lt!2282787) lt!2282787) (= (regTwo!31994 lt!2282787) (regTwo!31994 r!7292))) (= lambda!310678 lambda!310586))))

(assert (=> b!5735222 true))

(assert (=> b!5735222 true))

(declare-fun b!5735216 () Bool)

(declare-fun c!1012117 () Bool)

(assert (=> b!5735216 (= c!1012117 ((_ is ElementMatch!15741) lt!2282787))))

(declare-fun e!3525834 () Bool)

(declare-fun e!3525831 () Bool)

(assert (=> b!5735216 (= e!3525834 e!3525831)))

(declare-fun b!5735217 () Bool)

(declare-fun e!3525828 () Bool)

(assert (=> b!5735217 (= e!3525828 (matchRSpec!2844 (regTwo!31995 lt!2282787) (_1!36141 lt!2282777)))))

(declare-fun b!5735218 () Bool)

(assert (=> b!5735218 (= e!3525831 (= (_1!36141 lt!2282777) (Cons!63398 (c!1011861 lt!2282787) Nil!63398)))))

(declare-fun b!5735219 () Bool)

(declare-fun res!2421840 () Bool)

(declare-fun e!3525829 () Bool)

(assert (=> b!5735219 (=> res!2421840 e!3525829)))

(declare-fun call!438470 () Bool)

(assert (=> b!5735219 (= res!2421840 call!438470)))

(declare-fun e!3525830 () Bool)

(assert (=> b!5735219 (= e!3525830 e!3525829)))

(declare-fun bm!438464 () Bool)

(assert (=> bm!438464 (= call!438470 (isEmpty!35280 (_1!36141 lt!2282777)))))

(declare-fun d!1808304 () Bool)

(declare-fun c!1012118 () Bool)

(assert (=> d!1808304 (= c!1012118 ((_ is EmptyExpr!15741) lt!2282787))))

(declare-fun e!3525832 () Bool)

(assert (=> d!1808304 (= (matchRSpec!2844 lt!2282787 (_1!36141 lt!2282777)) e!3525832)))

(declare-fun b!5735220 () Bool)

(declare-fun e!3525833 () Bool)

(assert (=> b!5735220 (= e!3525833 e!3525830)))

(declare-fun c!1012119 () Bool)

(assert (=> b!5735220 (= c!1012119 ((_ is Star!15741) lt!2282787))))

(declare-fun call!438469 () Bool)

(declare-fun bm!438465 () Bool)

(assert (=> bm!438465 (= call!438469 (Exists!2841 (ite c!1012119 lambda!310677 lambda!310678)))))

(declare-fun b!5735221 () Bool)

(declare-fun c!1012116 () Bool)

(assert (=> b!5735221 (= c!1012116 ((_ is Union!15741) lt!2282787))))

(assert (=> b!5735221 (= e!3525831 e!3525833)))

(assert (=> b!5735222 (= e!3525830 call!438469)))

(declare-fun b!5735223 () Bool)

(assert (=> b!5735223 (= e!3525832 call!438470)))

(declare-fun b!5735224 () Bool)

(assert (=> b!5735224 (= e!3525832 e!3525834)))

(declare-fun res!2421842 () Bool)

(assert (=> b!5735224 (= res!2421842 (not ((_ is EmptyLang!15741) lt!2282787)))))

(assert (=> b!5735224 (=> (not res!2421842) (not e!3525834))))

(assert (=> b!5735225 (= e!3525829 call!438469)))

(declare-fun b!5735226 () Bool)

(assert (=> b!5735226 (= e!3525833 e!3525828)))

(declare-fun res!2421841 () Bool)

(assert (=> b!5735226 (= res!2421841 (matchRSpec!2844 (regOne!31995 lt!2282787) (_1!36141 lt!2282777)))))

(assert (=> b!5735226 (=> res!2421841 e!3525828)))

(assert (= (and d!1808304 c!1012118) b!5735223))

(assert (= (and d!1808304 (not c!1012118)) b!5735224))

(assert (= (and b!5735224 res!2421842) b!5735216))

(assert (= (and b!5735216 c!1012117) b!5735218))

(assert (= (and b!5735216 (not c!1012117)) b!5735221))

(assert (= (and b!5735221 c!1012116) b!5735226))

(assert (= (and b!5735221 (not c!1012116)) b!5735220))

(assert (= (and b!5735226 (not res!2421841)) b!5735217))

(assert (= (and b!5735220 c!1012119) b!5735219))

(assert (= (and b!5735220 (not c!1012119)) b!5735222))

(assert (= (and b!5735219 (not res!2421840)) b!5735225))

(assert (= (or b!5735225 b!5735222) bm!438465))

(assert (= (or b!5735223 b!5735219) bm!438464))

(declare-fun m!6687290 () Bool)

(assert (=> b!5735217 m!6687290))

(assert (=> bm!438464 m!6686892))

(declare-fun m!6687292 () Bool)

(assert (=> bm!438465 m!6687292))

(declare-fun m!6687294 () Bool)

(assert (=> b!5735226 m!6687294))

(assert (=> b!5734230 d!1808304))

(declare-fun b!5735230 () Bool)

(declare-fun lt!2282996 () List!63522)

(declare-fun e!3525835 () Bool)

(assert (=> b!5735230 (= e!3525835 (or (not (= (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777)) Nil!63398)) (= lt!2282996 (_1!36141 lt!2282781))))))

(declare-fun b!5735227 () Bool)

(declare-fun e!3525836 () List!63522)

(assert (=> b!5735227 (= e!3525836 (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777)))))

(declare-fun d!1808306 () Bool)

(assert (=> d!1808306 e!3525835))

(declare-fun res!2421843 () Bool)

(assert (=> d!1808306 (=> (not res!2421843) (not e!3525835))))

(assert (=> d!1808306 (= res!2421843 (= (content!11551 lt!2282996) ((_ map or) (content!11551 (_1!36141 lt!2282781)) (content!11551 (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777))))))))

(assert (=> d!1808306 (= lt!2282996 e!3525836)))

(declare-fun c!1012120 () Bool)

(assert (=> d!1808306 (= c!1012120 ((_ is Nil!63398) (_1!36141 lt!2282781)))))

(assert (=> d!1808306 (= (++!13954 (_1!36141 lt!2282781) (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777))) lt!2282996)))

(declare-fun b!5735229 () Bool)

(declare-fun res!2421844 () Bool)

(assert (=> b!5735229 (=> (not res!2421844) (not e!3525835))))

(assert (=> b!5735229 (= res!2421844 (= (size!40057 lt!2282996) (+ (size!40057 (_1!36141 lt!2282781)) (size!40057 (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777))))))))

(declare-fun b!5735228 () Bool)

(assert (=> b!5735228 (= e!3525836 (Cons!63398 (h!69846 (_1!36141 lt!2282781)) (++!13954 (t!376850 (_1!36141 lt!2282781)) (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777)))))))

(assert (= (and d!1808306 c!1012120) b!5735227))

(assert (= (and d!1808306 (not c!1012120)) b!5735228))

(assert (= (and d!1808306 res!2421843) b!5735229))

(assert (= (and b!5735229 res!2421844) b!5735230))

(declare-fun m!6687296 () Bool)

(assert (=> d!1808306 m!6687296))

(assert (=> d!1808306 m!6687208))

(assert (=> d!1808306 m!6686142))

(declare-fun m!6687298 () Bool)

(assert (=> d!1808306 m!6687298))

(declare-fun m!6687300 () Bool)

(assert (=> b!5735229 m!6687300))

(assert (=> b!5735229 m!6687214))

(assert (=> b!5735229 m!6686142))

(declare-fun m!6687302 () Bool)

(assert (=> b!5735229 m!6687302))

(assert (=> b!5735228 m!6686142))

(declare-fun m!6687304 () Bool)

(assert (=> b!5735228 m!6687304))

(assert (=> b!5734230 d!1808306))

(declare-fun b!5735231 () Bool)

(declare-fun e!3525839 () Bool)

(declare-fun lt!2282997 () Option!15750)

(assert (=> b!5735231 (= e!3525839 (not (isDefined!12453 lt!2282997)))))

(declare-fun b!5735232 () Bool)

(declare-fun res!2421845 () Bool)

(declare-fun e!3525838 () Bool)

(assert (=> b!5735232 (=> (not res!2421845) (not e!3525838))))

(assert (=> b!5735232 (= res!2421845 (matchR!7926 (reg!16070 (regOne!31994 r!7292)) (_1!36141 (get!21867 lt!2282997))))))

(declare-fun b!5735233 () Bool)

(declare-fun e!3525841 () Bool)

(assert (=> b!5735233 (= e!3525841 (matchR!7926 lt!2282770 (_1!36141 lt!2282777)))))

(declare-fun b!5735234 () Bool)

(assert (=> b!5735234 (= e!3525838 (= (++!13954 (_1!36141 (get!21867 lt!2282997)) (_2!36141 (get!21867 lt!2282997))) (_1!36141 lt!2282777)))))

(declare-fun d!1808308 () Bool)

(assert (=> d!1808308 e!3525839))

(declare-fun res!2421848 () Bool)

(assert (=> d!1808308 (=> res!2421848 e!3525839)))

(assert (=> d!1808308 (= res!2421848 e!3525838)))

(declare-fun res!2421847 () Bool)

(assert (=> d!1808308 (=> (not res!2421847) (not e!3525838))))

(assert (=> d!1808308 (= res!2421847 (isDefined!12453 lt!2282997))))

(declare-fun e!3525840 () Option!15750)

(assert (=> d!1808308 (= lt!2282997 e!3525840)))

(declare-fun c!1012122 () Bool)

(assert (=> d!1808308 (= c!1012122 e!3525841)))

(declare-fun res!2421846 () Bool)

(assert (=> d!1808308 (=> (not res!2421846) (not e!3525841))))

(assert (=> d!1808308 (= res!2421846 (matchR!7926 (reg!16070 (regOne!31994 r!7292)) Nil!63398))))

(assert (=> d!1808308 (validRegex!7477 (reg!16070 (regOne!31994 r!7292)))))

(assert (=> d!1808308 (= (findConcatSeparation!2164 (reg!16070 (regOne!31994 r!7292)) lt!2282770 Nil!63398 (_1!36141 lt!2282777) (_1!36141 lt!2282777)) lt!2282997)))

(declare-fun b!5735235 () Bool)

(declare-fun lt!2282998 () Unit!156496)

(declare-fun lt!2282999 () Unit!156496)

(assert (=> b!5735235 (= lt!2282998 lt!2282999)))

(assert (=> b!5735235 (= (++!13954 (++!13954 Nil!63398 (Cons!63398 (h!69846 (_1!36141 lt!2282777)) Nil!63398)) (t!376850 (_1!36141 lt!2282777))) (_1!36141 lt!2282777))))

(assert (=> b!5735235 (= lt!2282999 (lemmaMoveElementToOtherListKeepsConcatEq!2083 Nil!63398 (h!69846 (_1!36141 lt!2282777)) (t!376850 (_1!36141 lt!2282777)) (_1!36141 lt!2282777)))))

(declare-fun e!3525837 () Option!15750)

(assert (=> b!5735235 (= e!3525837 (findConcatSeparation!2164 (reg!16070 (regOne!31994 r!7292)) lt!2282770 (++!13954 Nil!63398 (Cons!63398 (h!69846 (_1!36141 lt!2282777)) Nil!63398)) (t!376850 (_1!36141 lt!2282777)) (_1!36141 lt!2282777)))))

(declare-fun b!5735236 () Bool)

(declare-fun res!2421849 () Bool)

(assert (=> b!5735236 (=> (not res!2421849) (not e!3525838))))

(assert (=> b!5735236 (= res!2421849 (matchR!7926 lt!2282770 (_2!36141 (get!21867 lt!2282997))))))

(declare-fun b!5735237 () Bool)

(assert (=> b!5735237 (= e!3525840 (Some!15749 (tuple2!65677 Nil!63398 (_1!36141 lt!2282777))))))

(declare-fun b!5735238 () Bool)

(assert (=> b!5735238 (= e!3525837 None!15749)))

(declare-fun b!5735239 () Bool)

(assert (=> b!5735239 (= e!3525840 e!3525837)))

(declare-fun c!1012121 () Bool)

(assert (=> b!5735239 (= c!1012121 ((_ is Nil!63398) (_1!36141 lt!2282777)))))

(assert (= (and d!1808308 res!2421846) b!5735233))

(assert (= (and d!1808308 c!1012122) b!5735237))

(assert (= (and d!1808308 (not c!1012122)) b!5735239))

(assert (= (and b!5735239 c!1012121) b!5735238))

(assert (= (and b!5735239 (not c!1012121)) b!5735235))

(assert (= (and d!1808308 res!2421847) b!5735232))

(assert (= (and b!5735232 res!2421845) b!5735236))

(assert (= (and b!5735236 res!2421849) b!5735234))

(assert (= (and d!1808308 (not res!2421848)) b!5735231))

(declare-fun m!6687306 () Bool)

(assert (=> b!5735235 m!6687306))

(assert (=> b!5735235 m!6687306))

(declare-fun m!6687308 () Bool)

(assert (=> b!5735235 m!6687308))

(declare-fun m!6687310 () Bool)

(assert (=> b!5735235 m!6687310))

(assert (=> b!5735235 m!6687306))

(declare-fun m!6687312 () Bool)

(assert (=> b!5735235 m!6687312))

(declare-fun m!6687314 () Bool)

(assert (=> b!5735236 m!6687314))

(declare-fun m!6687316 () Bool)

(assert (=> b!5735236 m!6687316))

(declare-fun m!6687318 () Bool)

(assert (=> b!5735233 m!6687318))

(declare-fun m!6687320 () Bool)

(assert (=> b!5735231 m!6687320))

(assert (=> b!5735234 m!6687314))

(declare-fun m!6687322 () Bool)

(assert (=> b!5735234 m!6687322))

(assert (=> d!1808308 m!6687320))

(declare-fun m!6687324 () Bool)

(assert (=> d!1808308 m!6687324))

(assert (=> d!1808308 m!6686778))

(assert (=> b!5735232 m!6687314))

(declare-fun m!6687326 () Bool)

(assert (=> b!5735232 m!6687326))

(assert (=> b!5734230 d!1808308))

(declare-fun d!1808310 () Bool)

(assert (=> d!1808310 (= (Exists!2841 lambda!310588) (choose!43443 lambda!310588))))

(declare-fun bs!1340591 () Bool)

(assert (= bs!1340591 d!1808310))

(declare-fun m!6687328 () Bool)

(assert (=> bs!1340591 m!6687328))

(assert (=> b!5734230 d!1808310))

(declare-fun d!1808312 () Bool)

(assert (=> d!1808312 (= (isDefined!12453 lt!2282766) (not (isEmpty!35281 lt!2282766)))))

(declare-fun bs!1340592 () Bool)

(assert (= bs!1340592 d!1808312))

(declare-fun m!6687330 () Bool)

(assert (=> bs!1340592 m!6687330))

(assert (=> b!5734230 d!1808312))

(declare-fun d!1808314 () Bool)

(assert (=> d!1808314 (= (matchR!7926 lt!2282787 (_1!36141 lt!2282777)) (matchRSpec!2844 lt!2282787 (_1!36141 lt!2282777)))))

(declare-fun lt!2283000 () Unit!156496)

(assert (=> d!1808314 (= lt!2283000 (choose!43442 lt!2282787 (_1!36141 lt!2282777)))))

(assert (=> d!1808314 (validRegex!7477 lt!2282787)))

(assert (=> d!1808314 (= (mainMatchTheorem!2844 lt!2282787 (_1!36141 lt!2282777)) lt!2283000)))

(declare-fun bs!1340593 () Bool)

(assert (= bs!1340593 d!1808314))

(assert (=> bs!1340593 m!6686192))

(assert (=> bs!1340593 m!6686132))

(declare-fun m!6687332 () Bool)

(assert (=> bs!1340593 m!6687332))

(assert (=> bs!1340593 m!6686646))

(assert (=> b!5734230 d!1808314))

(declare-fun lt!2283001 () List!63522)

(declare-fun e!3525842 () Bool)

(declare-fun b!5735243 () Bool)

(assert (=> b!5735243 (= e!3525842 (or (not (= (_2!36141 lt!2282777) Nil!63398)) (= lt!2283001 (_2!36141 lt!2282781))))))

(declare-fun b!5735240 () Bool)

(declare-fun e!3525843 () List!63522)

(assert (=> b!5735240 (= e!3525843 (_2!36141 lt!2282777))))

(declare-fun d!1808316 () Bool)

(assert (=> d!1808316 e!3525842))

(declare-fun res!2421850 () Bool)

(assert (=> d!1808316 (=> (not res!2421850) (not e!3525842))))

(assert (=> d!1808316 (= res!2421850 (= (content!11551 lt!2283001) ((_ map or) (content!11551 (_2!36141 lt!2282781)) (content!11551 (_2!36141 lt!2282777)))))))

(assert (=> d!1808316 (= lt!2283001 e!3525843)))

(declare-fun c!1012123 () Bool)

(assert (=> d!1808316 (= c!1012123 ((_ is Nil!63398) (_2!36141 lt!2282781)))))

(assert (=> d!1808316 (= (++!13954 (_2!36141 lt!2282781) (_2!36141 lt!2282777)) lt!2283001)))

(declare-fun b!5735242 () Bool)

(declare-fun res!2421851 () Bool)

(assert (=> b!5735242 (=> (not res!2421851) (not e!3525842))))

(assert (=> b!5735242 (= res!2421851 (= (size!40057 lt!2283001) (+ (size!40057 (_2!36141 lt!2282781)) (size!40057 (_2!36141 lt!2282777)))))))

(declare-fun b!5735241 () Bool)

(assert (=> b!5735241 (= e!3525843 (Cons!63398 (h!69846 (_2!36141 lt!2282781)) (++!13954 (t!376850 (_2!36141 lt!2282781)) (_2!36141 lt!2282777))))))

(assert (= (and d!1808316 c!1012123) b!5735240))

(assert (= (and d!1808316 (not c!1012123)) b!5735241))

(assert (= (and d!1808316 res!2421850) b!5735242))

(assert (= (and b!5735242 res!2421851) b!5735243))

(declare-fun m!6687334 () Bool)

(assert (=> d!1808316 m!6687334))

(assert (=> d!1808316 m!6687210))

(assert (=> d!1808316 m!6687256))

(declare-fun m!6687336 () Bool)

(assert (=> b!5735242 m!6687336))

(assert (=> b!5735242 m!6687216))

(assert (=> b!5735242 m!6687262))

(declare-fun m!6687338 () Bool)

(assert (=> b!5735241 m!6687338))

(assert (=> b!5734230 d!1808316))

(declare-fun d!1808318 () Bool)

(declare-fun c!1012124 () Bool)

(assert (=> d!1808318 (= c!1012124 (isEmpty!35280 (t!376850 s!2326)))))

(declare-fun e!3525844 () Bool)

(assert (=> d!1808318 (= (matchZipper!1879 lt!2282772 (t!376850 s!2326)) e!3525844)))

(declare-fun b!5735244 () Bool)

(assert (=> b!5735244 (= e!3525844 (nullableZipper!1681 lt!2282772))))

(declare-fun b!5735245 () Bool)

(assert (=> b!5735245 (= e!3525844 (matchZipper!1879 (derivationStepZipper!1824 lt!2282772 (head!12142 (t!376850 s!2326))) (tail!11237 (t!376850 s!2326))))))

(assert (= (and d!1808318 c!1012124) b!5735244))

(assert (= (and d!1808318 (not c!1012124)) b!5735245))

(assert (=> d!1808318 m!6686476))

(declare-fun m!6687340 () Bool)

(assert (=> b!5735244 m!6687340))

(assert (=> b!5735245 m!6686480))

(assert (=> b!5735245 m!6686480))

(declare-fun m!6687342 () Bool)

(assert (=> b!5735245 m!6687342))

(assert (=> b!5735245 m!6686484))

(assert (=> b!5735245 m!6687342))

(assert (=> b!5735245 m!6686484))

(declare-fun m!6687344 () Bool)

(assert (=> b!5735245 m!6687344))

(assert (=> b!5734228 d!1808318))

(declare-fun d!1808320 () Bool)

(declare-fun lt!2283002 () Regex!15741)

(assert (=> d!1808320 (validRegex!7477 lt!2283002)))

(assert (=> d!1808320 (= lt!2283002 (generalisedUnion!1604 (unfocusZipperList!1169 zl!343)))))

(assert (=> d!1808320 (= (unfocusZipper!1483 zl!343) lt!2283002)))

(declare-fun bs!1340594 () Bool)

(assert (= bs!1340594 d!1808320))

(declare-fun m!6687346 () Bool)

(assert (=> bs!1340594 m!6687346))

(assert (=> bs!1340594 m!6686258))

(assert (=> bs!1340594 m!6686258))

(assert (=> bs!1340594 m!6686260))

(assert (=> b!5734207 d!1808320))

(assert (=> b!5734206 d!1808038))

(declare-fun bs!1340595 () Bool)

(declare-fun d!1808322 () Bool)

(assert (= bs!1340595 (and d!1808322 b!5734240)))

(declare-fun lambda!310681 () Int)

(assert (=> bs!1340595 (= lambda!310681 lambda!310584)))

(declare-fun bs!1340596 () Bool)

(assert (= bs!1340596 (and d!1808322 d!1808130)))

(assert (=> bs!1340596 (= lambda!310681 lambda!310635)))

(declare-fun e!3525859 () Bool)

(assert (=> d!1808322 e!3525859))

(declare-fun res!2421856 () Bool)

(assert (=> d!1808322 (=> (not res!2421856) (not e!3525859))))

(declare-fun lt!2283005 () Regex!15741)

(assert (=> d!1808322 (= res!2421856 (validRegex!7477 lt!2283005))))

(declare-fun e!3525861 () Regex!15741)

(assert (=> d!1808322 (= lt!2283005 e!3525861)))

(declare-fun c!1012134 () Bool)

(declare-fun e!3525860 () Bool)

(assert (=> d!1808322 (= c!1012134 e!3525860)))

(declare-fun res!2421857 () Bool)

(assert (=> d!1808322 (=> (not res!2421857) (not e!3525860))))

(assert (=> d!1808322 (= res!2421857 ((_ is Cons!63399) (unfocusZipperList!1169 zl!343)))))

(assert (=> d!1808322 (forall!14866 (unfocusZipperList!1169 zl!343) lambda!310681)))

(assert (=> d!1808322 (= (generalisedUnion!1604 (unfocusZipperList!1169 zl!343)) lt!2283005)))

(declare-fun b!5735266 () Bool)

(declare-fun e!3525858 () Bool)

(declare-fun isUnion!680 (Regex!15741) Bool)

(assert (=> b!5735266 (= e!3525858 (isUnion!680 lt!2283005))))

(declare-fun b!5735267 () Bool)

(declare-fun e!3525857 () Regex!15741)

(assert (=> b!5735267 (= e!3525857 (Union!15741 (h!69847 (unfocusZipperList!1169 zl!343)) (generalisedUnion!1604 (t!376851 (unfocusZipperList!1169 zl!343)))))))

(declare-fun b!5735268 () Bool)

(declare-fun e!3525862 () Bool)

(declare-fun isEmptyLang!1250 (Regex!15741) Bool)

(assert (=> b!5735268 (= e!3525862 (isEmptyLang!1250 lt!2283005))))

(declare-fun b!5735269 () Bool)

(assert (=> b!5735269 (= e!3525860 (isEmpty!35277 (t!376851 (unfocusZipperList!1169 zl!343))))))

(declare-fun b!5735270 () Bool)

(assert (=> b!5735270 (= e!3525861 e!3525857)))

(declare-fun c!1012136 () Bool)

(assert (=> b!5735270 (= c!1012136 ((_ is Cons!63399) (unfocusZipperList!1169 zl!343)))))

(declare-fun b!5735271 () Bool)

(assert (=> b!5735271 (= e!3525861 (h!69847 (unfocusZipperList!1169 zl!343)))))

(declare-fun b!5735272 () Bool)

(assert (=> b!5735272 (= e!3525862 e!3525858)))

(declare-fun c!1012133 () Bool)

(declare-fun tail!11238 (List!63523) List!63523)

(assert (=> b!5735272 (= c!1012133 (isEmpty!35277 (tail!11238 (unfocusZipperList!1169 zl!343))))))

(declare-fun b!5735273 () Bool)

(declare-fun head!12143 (List!63523) Regex!15741)

(assert (=> b!5735273 (= e!3525858 (= lt!2283005 (head!12143 (unfocusZipperList!1169 zl!343))))))

(declare-fun b!5735274 () Bool)

(assert (=> b!5735274 (= e!3525859 e!3525862)))

(declare-fun c!1012135 () Bool)

(assert (=> b!5735274 (= c!1012135 (isEmpty!35277 (unfocusZipperList!1169 zl!343)))))

(declare-fun b!5735275 () Bool)

(assert (=> b!5735275 (= e!3525857 EmptyLang!15741)))

(assert (= (and d!1808322 res!2421857) b!5735269))

(assert (= (and d!1808322 c!1012134) b!5735271))

(assert (= (and d!1808322 (not c!1012134)) b!5735270))

(assert (= (and b!5735270 c!1012136) b!5735267))

(assert (= (and b!5735270 (not c!1012136)) b!5735275))

(assert (= (and d!1808322 res!2421856) b!5735274))

(assert (= (and b!5735274 c!1012135) b!5735268))

(assert (= (and b!5735274 (not c!1012135)) b!5735272))

(assert (= (and b!5735272 c!1012133) b!5735273))

(assert (= (and b!5735272 (not c!1012133)) b!5735266))

(assert (=> b!5735274 m!6686258))

(declare-fun m!6687348 () Bool)

(assert (=> b!5735274 m!6687348))

(declare-fun m!6687350 () Bool)

(assert (=> b!5735268 m!6687350))

(assert (=> b!5735272 m!6686258))

(declare-fun m!6687352 () Bool)

(assert (=> b!5735272 m!6687352))

(assert (=> b!5735272 m!6687352))

(declare-fun m!6687354 () Bool)

(assert (=> b!5735272 m!6687354))

(assert (=> b!5735273 m!6686258))

(declare-fun m!6687356 () Bool)

(assert (=> b!5735273 m!6687356))

(declare-fun m!6687358 () Bool)

(assert (=> d!1808322 m!6687358))

(assert (=> d!1808322 m!6686258))

(declare-fun m!6687360 () Bool)

(assert (=> d!1808322 m!6687360))

(declare-fun m!6687362 () Bool)

(assert (=> b!5735269 m!6687362))

(declare-fun m!6687364 () Bool)

(assert (=> b!5735266 m!6687364))

(declare-fun m!6687366 () Bool)

(assert (=> b!5735267 m!6687366))

(assert (=> b!5734227 d!1808322))

(declare-fun bs!1340597 () Bool)

(declare-fun d!1808324 () Bool)

(assert (= bs!1340597 (and d!1808324 b!5734240)))

(declare-fun lambda!310684 () Int)

(assert (=> bs!1340597 (= lambda!310684 lambda!310584)))

(declare-fun bs!1340598 () Bool)

(assert (= bs!1340598 (and d!1808324 d!1808130)))

(assert (=> bs!1340598 (= lambda!310684 lambda!310635)))

(declare-fun bs!1340599 () Bool)

(assert (= bs!1340599 (and d!1808324 d!1808322)))

(assert (=> bs!1340599 (= lambda!310684 lambda!310681)))

(declare-fun lt!2283008 () List!63523)

(assert (=> d!1808324 (forall!14866 lt!2283008 lambda!310684)))

(declare-fun e!3525865 () List!63523)

(assert (=> d!1808324 (= lt!2283008 e!3525865)))

(declare-fun c!1012139 () Bool)

(assert (=> d!1808324 (= c!1012139 ((_ is Cons!63400) zl!343))))

(assert (=> d!1808324 (= (unfocusZipperList!1169 zl!343) lt!2283008)))

(declare-fun b!5735280 () Bool)

(assert (=> b!5735280 (= e!3525865 (Cons!63399 (generalisedConcat!1356 (exprs!5625 (h!69848 zl!343))) (unfocusZipperList!1169 (t!376852 zl!343))))))

(declare-fun b!5735281 () Bool)

(assert (=> b!5735281 (= e!3525865 Nil!63399)))

(assert (= (and d!1808324 c!1012139) b!5735280))

(assert (= (and d!1808324 (not c!1012139)) b!5735281))

(declare-fun m!6687368 () Bool)

(assert (=> d!1808324 m!6687368))

(assert (=> b!5735280 m!6686100))

(declare-fun m!6687370 () Bool)

(assert (=> b!5735280 m!6687370))

(assert (=> b!5734227 d!1808324))

(declare-fun bs!1340600 () Bool)

(declare-fun b!5735291 () Bool)

(assert (= bs!1340600 (and b!5735291 d!1808286)))

(declare-fun lambda!310685 () Int)

(assert (=> bs!1340600 (not (= lambda!310685 lambda!310675))))

(declare-fun bs!1340601 () Bool)

(assert (= bs!1340601 (and b!5735291 d!1808284)))

(assert (=> bs!1340601 (not (= lambda!310685 lambda!310665))))

(declare-fun bs!1340602 () Bool)

(assert (= bs!1340602 (and b!5735291 b!5734841)))

(assert (=> bs!1340602 (= (and (= (reg!16070 r!7292) (reg!16070 lt!2282759)) (= r!7292 lt!2282759)) (= lambda!310685 lambda!310644))))

(declare-fun bs!1340603 () Bool)

(assert (= bs!1340603 (and b!5735291 d!1808272)))

(assert (=> bs!1340603 (not (= lambda!310685 lambda!310664))))

(declare-fun bs!1340604 () Bool)

(assert (= bs!1340604 (and b!5735291 b!5734838)))

(assert (=> bs!1340604 (not (= lambda!310685 lambda!310647))))

(declare-fun bs!1340605 () Bool)

(assert (= bs!1340605 (and b!5735291 b!5734230)))

(assert (=> bs!1340605 (not (= lambda!310685 lambda!310588))))

(declare-fun bs!1340606 () Bool)

(assert (= bs!1340606 (and b!5735291 b!5734197)))

(assert (=> bs!1340606 (not (= lambda!310685 lambda!310581))))

(declare-fun bs!1340607 () Bool)

(assert (= bs!1340607 (and b!5735291 d!1808088)))

(assert (=> bs!1340607 (not (= lambda!310685 lambda!310628))))

(assert (=> bs!1340606 (not (= lambda!310685 lambda!310580))))

(declare-fun bs!1340608 () Bool)

(assert (= bs!1340608 (and b!5735291 d!1808166)))

(assert (=> bs!1340608 (not (= lambda!310685 lambda!310657))))

(declare-fun bs!1340609 () Bool)

(assert (= bs!1340609 (and b!5735291 b!5734236)))

(assert (=> bs!1340609 (not (= lambda!310685 lambda!310585))))

(declare-fun bs!1340610 () Bool)

(assert (= bs!1340610 (and b!5735291 b!5735222)))

(assert (=> bs!1340610 (not (= lambda!310685 lambda!310678))))

(assert (=> bs!1340608 (not (= lambda!310685 lambda!310656))))

(assert (=> bs!1340605 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 r!7292) (reg!16070 (regOne!31994 r!7292))) (= r!7292 lt!2282770)) (= lambda!310685 lambda!310589))))

(assert (=> bs!1340605 (not (= lambda!310685 lambda!310587))))

(assert (=> bs!1340603 (not (= lambda!310685 lambda!310663))))

(declare-fun bs!1340611 () Bool)

(assert (= bs!1340611 (and b!5735291 b!5735225)))

(assert (=> bs!1340611 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 r!7292) (reg!16070 lt!2282787)) (= r!7292 lt!2282787)) (= lambda!310685 lambda!310677))))

(assert (=> bs!1340600 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 r!7292) (reg!16070 (regOne!31994 r!7292))) (= r!7292 (Star!15741 (reg!16070 (regOne!31994 r!7292))))) (= lambda!310685 lambda!310676))))

(assert (=> bs!1340609 (not (= lambda!310685 lambda!310586))))

(assert (=> b!5735291 true))

(assert (=> b!5735291 true))

(declare-fun bs!1340612 () Bool)

(declare-fun b!5735288 () Bool)

(assert (= bs!1340612 (and b!5735288 d!1808286)))

(declare-fun lambda!310686 () Int)

(assert (=> bs!1340612 (not (= lambda!310686 lambda!310675))))

(declare-fun bs!1340613 () Bool)

(assert (= bs!1340613 (and b!5735288 d!1808284)))

(assert (=> bs!1340613 (not (= lambda!310686 lambda!310665))))

(declare-fun bs!1340614 () Bool)

(assert (= bs!1340614 (and b!5735288 b!5734841)))

(assert (=> bs!1340614 (not (= lambda!310686 lambda!310644))))

(declare-fun bs!1340615 () Bool)

(assert (= bs!1340615 (and b!5735288 d!1808272)))

(assert (=> bs!1340615 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310686 lambda!310664))))

(declare-fun bs!1340616 () Bool)

(assert (= bs!1340616 (and b!5735288 b!5734838)))

(assert (=> bs!1340616 (= (and (= (regOne!31994 r!7292) (regOne!31994 lt!2282759)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282759))) (= lambda!310686 lambda!310647))))

(declare-fun bs!1340617 () Bool)

(assert (= bs!1340617 (and b!5735288 b!5734230)))

(assert (=> bs!1340617 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310686 lambda!310588))))

(declare-fun bs!1340618 () Bool)

(assert (= bs!1340618 (and b!5735288 b!5734197)))

(assert (=> bs!1340618 (= lambda!310686 lambda!310581)))

(declare-fun bs!1340619 () Bool)

(assert (= bs!1340619 (and b!5735288 d!1808088)))

(assert (=> bs!1340619 (not (= lambda!310686 lambda!310628))))

(assert (=> bs!1340618 (not (= lambda!310686 lambda!310580))))

(declare-fun bs!1340620 () Bool)

(assert (= bs!1340620 (and b!5735288 d!1808166)))

(assert (=> bs!1340620 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310686 lambda!310657))))

(declare-fun bs!1340621 () Bool)

(assert (= bs!1340621 (and b!5735288 b!5734236)))

(assert (=> bs!1340621 (not (= lambda!310686 lambda!310585))))

(declare-fun bs!1340622 () Bool)

(assert (= bs!1340622 (and b!5735288 b!5735291)))

(assert (=> bs!1340622 (not (= lambda!310686 lambda!310685))))

(declare-fun bs!1340623 () Bool)

(assert (= bs!1340623 (and b!5735288 b!5735222)))

(assert (=> bs!1340623 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (regOne!31994 lt!2282787)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282787))) (= lambda!310686 lambda!310678))))

(assert (=> bs!1340620 (not (= lambda!310686 lambda!310656))))

(assert (=> bs!1340617 (not (= lambda!310686 lambda!310589))))

(assert (=> bs!1340617 (not (= lambda!310686 lambda!310587))))

(assert (=> bs!1340615 (not (= lambda!310686 lambda!310663))))

(declare-fun bs!1340624 () Bool)

(assert (= bs!1340624 (and b!5735288 b!5735225)))

(assert (=> bs!1340624 (not (= lambda!310686 lambda!310677))))

(assert (=> bs!1340612 (not (= lambda!310686 lambda!310676))))

(assert (=> bs!1340621 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310686 lambda!310586))))

(assert (=> b!5735288 true))

(assert (=> b!5735288 true))

(declare-fun b!5735282 () Bool)

(declare-fun c!1012141 () Bool)

(assert (=> b!5735282 (= c!1012141 ((_ is ElementMatch!15741) r!7292))))

(declare-fun e!3525872 () Bool)

(declare-fun e!3525869 () Bool)

(assert (=> b!5735282 (= e!3525872 e!3525869)))

(declare-fun b!5735283 () Bool)

(declare-fun e!3525866 () Bool)

(assert (=> b!5735283 (= e!3525866 (matchRSpec!2844 (regTwo!31995 r!7292) s!2326))))

(declare-fun b!5735284 () Bool)

(assert (=> b!5735284 (= e!3525869 (= s!2326 (Cons!63398 (c!1011861 r!7292) Nil!63398)))))

(declare-fun b!5735285 () Bool)

(declare-fun res!2421858 () Bool)

(declare-fun e!3525867 () Bool)

(assert (=> b!5735285 (=> res!2421858 e!3525867)))

(declare-fun call!438472 () Bool)

(assert (=> b!5735285 (= res!2421858 call!438472)))

(declare-fun e!3525868 () Bool)

(assert (=> b!5735285 (= e!3525868 e!3525867)))

(declare-fun bm!438466 () Bool)

(assert (=> bm!438466 (= call!438472 (isEmpty!35280 s!2326))))

(declare-fun d!1808326 () Bool)

(declare-fun c!1012142 () Bool)

(assert (=> d!1808326 (= c!1012142 ((_ is EmptyExpr!15741) r!7292))))

(declare-fun e!3525870 () Bool)

(assert (=> d!1808326 (= (matchRSpec!2844 r!7292 s!2326) e!3525870)))

(declare-fun b!5735286 () Bool)

(declare-fun e!3525871 () Bool)

(assert (=> b!5735286 (= e!3525871 e!3525868)))

(declare-fun c!1012143 () Bool)

(assert (=> b!5735286 (= c!1012143 ((_ is Star!15741) r!7292))))

(declare-fun bm!438467 () Bool)

(declare-fun call!438471 () Bool)

(assert (=> bm!438467 (= call!438471 (Exists!2841 (ite c!1012143 lambda!310685 lambda!310686)))))

(declare-fun b!5735287 () Bool)

(declare-fun c!1012140 () Bool)

(assert (=> b!5735287 (= c!1012140 ((_ is Union!15741) r!7292))))

(assert (=> b!5735287 (= e!3525869 e!3525871)))

(assert (=> b!5735288 (= e!3525868 call!438471)))

(declare-fun b!5735289 () Bool)

(assert (=> b!5735289 (= e!3525870 call!438472)))

(declare-fun b!5735290 () Bool)

(assert (=> b!5735290 (= e!3525870 e!3525872)))

(declare-fun res!2421860 () Bool)

(assert (=> b!5735290 (= res!2421860 (not ((_ is EmptyLang!15741) r!7292)))))

(assert (=> b!5735290 (=> (not res!2421860) (not e!3525872))))

(assert (=> b!5735291 (= e!3525867 call!438471)))

(declare-fun b!5735292 () Bool)

(assert (=> b!5735292 (= e!3525871 e!3525866)))

(declare-fun res!2421859 () Bool)

(assert (=> b!5735292 (= res!2421859 (matchRSpec!2844 (regOne!31995 r!7292) s!2326))))

(assert (=> b!5735292 (=> res!2421859 e!3525866)))

(assert (= (and d!1808326 c!1012142) b!5735289))

(assert (= (and d!1808326 (not c!1012142)) b!5735290))

(assert (= (and b!5735290 res!2421860) b!5735282))

(assert (= (and b!5735282 c!1012141) b!5735284))

(assert (= (and b!5735282 (not c!1012141)) b!5735287))

(assert (= (and b!5735287 c!1012140) b!5735292))

(assert (= (and b!5735287 (not c!1012140)) b!5735286))

(assert (= (and b!5735292 (not res!2421859)) b!5735283))

(assert (= (and b!5735286 c!1012143) b!5735285))

(assert (= (and b!5735286 (not c!1012143)) b!5735288))

(assert (= (and b!5735285 (not res!2421858)) b!5735291))

(assert (= (or b!5735291 b!5735288) bm!438467))

(assert (= (or b!5735289 b!5735285) bm!438466))

(declare-fun m!6687372 () Bool)

(assert (=> b!5735283 m!6687372))

(assert (=> bm!438466 m!6686860))

(declare-fun m!6687374 () Bool)

(assert (=> bm!438467 m!6687374))

(declare-fun m!6687376 () Bool)

(assert (=> b!5735292 m!6687376))

(assert (=> b!5734226 d!1808326))

(declare-fun b!5735293 () Bool)

(declare-fun e!3525879 () Bool)

(declare-fun e!3525874 () Bool)

(assert (=> b!5735293 (= e!3525879 e!3525874)))

(declare-fun res!2421864 () Bool)

(assert (=> b!5735293 (=> (not res!2421864) (not e!3525874))))

(declare-fun lt!2283009 () Bool)

(assert (=> b!5735293 (= res!2421864 (not lt!2283009))))

(declare-fun b!5735294 () Bool)

(declare-fun e!3525877 () Bool)

(assert (=> b!5735294 (= e!3525877 (not (= (head!12142 s!2326) (c!1011861 r!7292))))))

(declare-fun b!5735295 () Bool)

(declare-fun e!3525873 () Bool)

(assert (=> b!5735295 (= e!3525873 (not lt!2283009))))

(declare-fun b!5735296 () Bool)

(declare-fun res!2421865 () Bool)

(assert (=> b!5735296 (=> res!2421865 e!3525879)))

(assert (=> b!5735296 (= res!2421865 (not ((_ is ElementMatch!15741) r!7292)))))

(assert (=> b!5735296 (= e!3525873 e!3525879)))

(declare-fun b!5735298 () Bool)

(declare-fun e!3525876 () Bool)

(assert (=> b!5735298 (= e!3525876 e!3525873)))

(declare-fun c!1012146 () Bool)

(assert (=> b!5735298 (= c!1012146 ((_ is EmptyLang!15741) r!7292))))

(declare-fun b!5735299 () Bool)

(declare-fun e!3525878 () Bool)

(assert (=> b!5735299 (= e!3525878 (matchR!7926 (derivativeStep!4534 r!7292 (head!12142 s!2326)) (tail!11237 s!2326)))))

(declare-fun b!5735300 () Bool)

(declare-fun res!2421868 () Bool)

(declare-fun e!3525875 () Bool)

(assert (=> b!5735300 (=> (not res!2421868) (not e!3525875))))

(declare-fun call!438473 () Bool)

(assert (=> b!5735300 (= res!2421868 (not call!438473))))

(declare-fun b!5735301 () Bool)

(assert (=> b!5735301 (= e!3525878 (nullable!5773 r!7292))))

(declare-fun b!5735302 () Bool)

(assert (=> b!5735302 (= e!3525876 (= lt!2283009 call!438473))))

(declare-fun b!5735303 () Bool)

(declare-fun res!2421866 () Bool)

(assert (=> b!5735303 (=> res!2421866 e!3525877)))

(assert (=> b!5735303 (= res!2421866 (not (isEmpty!35280 (tail!11237 s!2326))))))

(declare-fun b!5735304 () Bool)

(declare-fun res!2421867 () Bool)

(assert (=> b!5735304 (=> (not res!2421867) (not e!3525875))))

(assert (=> b!5735304 (= res!2421867 (isEmpty!35280 (tail!11237 s!2326)))))

(declare-fun b!5735305 () Bool)

(declare-fun res!2421863 () Bool)

(assert (=> b!5735305 (=> res!2421863 e!3525879)))

(assert (=> b!5735305 (= res!2421863 e!3525875)))

(declare-fun res!2421862 () Bool)

(assert (=> b!5735305 (=> (not res!2421862) (not e!3525875))))

(assert (=> b!5735305 (= res!2421862 lt!2283009)))

(declare-fun d!1808328 () Bool)

(assert (=> d!1808328 e!3525876))

(declare-fun c!1012144 () Bool)

(assert (=> d!1808328 (= c!1012144 ((_ is EmptyExpr!15741) r!7292))))

(assert (=> d!1808328 (= lt!2283009 e!3525878)))

(declare-fun c!1012145 () Bool)

(assert (=> d!1808328 (= c!1012145 (isEmpty!35280 s!2326))))

(assert (=> d!1808328 (validRegex!7477 r!7292)))

(assert (=> d!1808328 (= (matchR!7926 r!7292 s!2326) lt!2283009)))

(declare-fun b!5735297 () Bool)

(assert (=> b!5735297 (= e!3525874 e!3525877)))

(declare-fun res!2421861 () Bool)

(assert (=> b!5735297 (=> res!2421861 e!3525877)))

(assert (=> b!5735297 (= res!2421861 call!438473)))

(declare-fun bm!438468 () Bool)

(assert (=> bm!438468 (= call!438473 (isEmpty!35280 s!2326))))

(declare-fun b!5735306 () Bool)

(assert (=> b!5735306 (= e!3525875 (= (head!12142 s!2326) (c!1011861 r!7292)))))

(assert (= (and d!1808328 c!1012145) b!5735301))

(assert (= (and d!1808328 (not c!1012145)) b!5735299))

(assert (= (and d!1808328 c!1012144) b!5735302))

(assert (= (and d!1808328 (not c!1012144)) b!5735298))

(assert (= (and b!5735298 c!1012146) b!5735295))

(assert (= (and b!5735298 (not c!1012146)) b!5735296))

(assert (= (and b!5735296 (not res!2421865)) b!5735305))

(assert (= (and b!5735305 res!2421862) b!5735300))

(assert (= (and b!5735300 res!2421868) b!5735304))

(assert (= (and b!5735304 res!2421867) b!5735306))

(assert (= (and b!5735305 (not res!2421863)) b!5735293))

(assert (= (and b!5735293 res!2421864) b!5735297))

(assert (= (and b!5735297 (not res!2421861)) b!5735303))

(assert (= (and b!5735303 (not res!2421866)) b!5735294))

(assert (= (or b!5735302 b!5735297 b!5735300) bm!438468))

(assert (=> b!5735306 m!6686996))

(assert (=> bm!438468 m!6686860))

(assert (=> b!5735294 m!6686996))

(assert (=> b!5735304 m!6686998))

(assert (=> b!5735304 m!6686998))

(assert (=> b!5735304 m!6687000))

(assert (=> b!5735299 m!6686996))

(assert (=> b!5735299 m!6686996))

(declare-fun m!6687378 () Bool)

(assert (=> b!5735299 m!6687378))

(assert (=> b!5735299 m!6686998))

(assert (=> b!5735299 m!6687378))

(assert (=> b!5735299 m!6686998))

(declare-fun m!6687380 () Bool)

(assert (=> b!5735299 m!6687380))

(assert (=> b!5735303 m!6686998))

(assert (=> b!5735303 m!6686998))

(assert (=> b!5735303 m!6687000))

(assert (=> d!1808328 m!6686860))

(assert (=> d!1808328 m!6686226))

(declare-fun m!6687382 () Bool)

(assert (=> b!5735301 m!6687382))

(assert (=> b!5734226 d!1808328))

(declare-fun d!1808330 () Bool)

(assert (=> d!1808330 (= (matchR!7926 r!7292 s!2326) (matchRSpec!2844 r!7292 s!2326))))

(declare-fun lt!2283010 () Unit!156496)

(assert (=> d!1808330 (= lt!2283010 (choose!43442 r!7292 s!2326))))

(assert (=> d!1808330 (validRegex!7477 r!7292)))

(assert (=> d!1808330 (= (mainMatchTheorem!2844 r!7292 s!2326) lt!2283010)))

(declare-fun bs!1340625 () Bool)

(assert (= bs!1340625 d!1808330))

(assert (=> bs!1340625 m!6686266))

(assert (=> bs!1340625 m!6686264))

(declare-fun m!6687384 () Bool)

(assert (=> bs!1340625 m!6687384))

(assert (=> bs!1340625 m!6686226))

(assert (=> b!5734226 d!1808330))

(declare-fun bs!1340626 () Bool)

(declare-fun d!1808332 () Bool)

(assert (= bs!1340626 (and d!1808332 b!5734240)))

(declare-fun lambda!310689 () Int)

(assert (=> bs!1340626 (= lambda!310689 lambda!310584)))

(declare-fun bs!1340627 () Bool)

(assert (= bs!1340627 (and d!1808332 d!1808130)))

(assert (=> bs!1340627 (= lambda!310689 lambda!310635)))

(declare-fun bs!1340628 () Bool)

(assert (= bs!1340628 (and d!1808332 d!1808322)))

(assert (=> bs!1340628 (= lambda!310689 lambda!310681)))

(declare-fun bs!1340629 () Bool)

(assert (= bs!1340629 (and d!1808332 d!1808324)))

(assert (=> bs!1340629 (= lambda!310689 lambda!310684)))

(assert (=> d!1808332 (= (inv!82599 (h!69848 zl!343)) (forall!14866 (exprs!5625 (h!69848 zl!343)) lambda!310689))))

(declare-fun bs!1340630 () Bool)

(assert (= bs!1340630 d!1808332))

(declare-fun m!6687386 () Bool)

(assert (=> bs!1340630 m!6687386))

(assert (=> b!5734205 d!1808332))

(declare-fun b!5735307 () Bool)

(declare-fun e!3525886 () Bool)

(declare-fun e!3525881 () Bool)

(assert (=> b!5735307 (= e!3525886 e!3525881)))

(declare-fun res!2421872 () Bool)

(assert (=> b!5735307 (=> (not res!2421872) (not e!3525881))))

(declare-fun lt!2283011 () Bool)

(assert (=> b!5735307 (= res!2421872 (not lt!2283011))))

(declare-fun b!5735308 () Bool)

(declare-fun e!3525884 () Bool)

(assert (=> b!5735308 (= e!3525884 (not (= (head!12142 (_2!36141 lt!2282781)) (c!1011861 lt!2282770))))))

(declare-fun b!5735309 () Bool)

(declare-fun e!3525880 () Bool)

(assert (=> b!5735309 (= e!3525880 (not lt!2283011))))

(declare-fun b!5735310 () Bool)

(declare-fun res!2421873 () Bool)

(assert (=> b!5735310 (=> res!2421873 e!3525886)))

(assert (=> b!5735310 (= res!2421873 (not ((_ is ElementMatch!15741) lt!2282770)))))

(assert (=> b!5735310 (= e!3525880 e!3525886)))

(declare-fun b!5735312 () Bool)

(declare-fun e!3525883 () Bool)

(assert (=> b!5735312 (= e!3525883 e!3525880)))

(declare-fun c!1012149 () Bool)

(assert (=> b!5735312 (= c!1012149 ((_ is EmptyLang!15741) lt!2282770))))

(declare-fun b!5735313 () Bool)

(declare-fun e!3525885 () Bool)

(assert (=> b!5735313 (= e!3525885 (matchR!7926 (derivativeStep!4534 lt!2282770 (head!12142 (_2!36141 lt!2282781))) (tail!11237 (_2!36141 lt!2282781))))))

(declare-fun b!5735314 () Bool)

(declare-fun res!2421876 () Bool)

(declare-fun e!3525882 () Bool)

(assert (=> b!5735314 (=> (not res!2421876) (not e!3525882))))

(declare-fun call!438474 () Bool)

(assert (=> b!5735314 (= res!2421876 (not call!438474))))

(declare-fun b!5735315 () Bool)

(assert (=> b!5735315 (= e!3525885 (nullable!5773 lt!2282770))))

(declare-fun b!5735316 () Bool)

(assert (=> b!5735316 (= e!3525883 (= lt!2283011 call!438474))))

(declare-fun b!5735317 () Bool)

(declare-fun res!2421874 () Bool)

(assert (=> b!5735317 (=> res!2421874 e!3525884)))

(assert (=> b!5735317 (= res!2421874 (not (isEmpty!35280 (tail!11237 (_2!36141 lt!2282781)))))))

(declare-fun b!5735318 () Bool)

(declare-fun res!2421875 () Bool)

(assert (=> b!5735318 (=> (not res!2421875) (not e!3525882))))

(assert (=> b!5735318 (= res!2421875 (isEmpty!35280 (tail!11237 (_2!36141 lt!2282781))))))

(declare-fun b!5735319 () Bool)

(declare-fun res!2421871 () Bool)

(assert (=> b!5735319 (=> res!2421871 e!3525886)))

(assert (=> b!5735319 (= res!2421871 e!3525882)))

(declare-fun res!2421870 () Bool)

(assert (=> b!5735319 (=> (not res!2421870) (not e!3525882))))

(assert (=> b!5735319 (= res!2421870 lt!2283011)))

(declare-fun d!1808334 () Bool)

(assert (=> d!1808334 e!3525883))

(declare-fun c!1012147 () Bool)

(assert (=> d!1808334 (= c!1012147 ((_ is EmptyExpr!15741) lt!2282770))))

(assert (=> d!1808334 (= lt!2283011 e!3525885)))

(declare-fun c!1012148 () Bool)

(assert (=> d!1808334 (= c!1012148 (isEmpty!35280 (_2!36141 lt!2282781)))))

(assert (=> d!1808334 (validRegex!7477 lt!2282770)))

(assert (=> d!1808334 (= (matchR!7926 lt!2282770 (_2!36141 lt!2282781)) lt!2283011)))

(declare-fun b!5735311 () Bool)

(assert (=> b!5735311 (= e!3525881 e!3525884)))

(declare-fun res!2421869 () Bool)

(assert (=> b!5735311 (=> res!2421869 e!3525884)))

(assert (=> b!5735311 (= res!2421869 call!438474)))

(declare-fun bm!438469 () Bool)

(assert (=> bm!438469 (= call!438474 (isEmpty!35280 (_2!36141 lt!2282781)))))

(declare-fun b!5735320 () Bool)

(assert (=> b!5735320 (= e!3525882 (= (head!12142 (_2!36141 lt!2282781)) (c!1011861 lt!2282770)))))

(assert (= (and d!1808334 c!1012148) b!5735315))

(assert (= (and d!1808334 (not c!1012148)) b!5735313))

(assert (= (and d!1808334 c!1012147) b!5735316))

(assert (= (and d!1808334 (not c!1012147)) b!5735312))

(assert (= (and b!5735312 c!1012149) b!5735309))

(assert (= (and b!5735312 (not c!1012149)) b!5735310))

(assert (= (and b!5735310 (not res!2421873)) b!5735319))

(assert (= (and b!5735319 res!2421870) b!5735314))

(assert (= (and b!5735314 res!2421876) b!5735318))

(assert (= (and b!5735318 res!2421875) b!5735320))

(assert (= (and b!5735319 (not res!2421871)) b!5735307))

(assert (= (and b!5735307 res!2421872) b!5735311))

(assert (= (and b!5735311 (not res!2421869)) b!5735317))

(assert (= (and b!5735317 (not res!2421874)) b!5735308))

(assert (= (or b!5735316 b!5735311 b!5735314) bm!438469))

(declare-fun m!6687388 () Bool)

(assert (=> b!5735320 m!6687388))

(declare-fun m!6687390 () Bool)

(assert (=> bm!438469 m!6687390))

(assert (=> b!5735308 m!6687388))

(declare-fun m!6687392 () Bool)

(assert (=> b!5735318 m!6687392))

(assert (=> b!5735318 m!6687392))

(declare-fun m!6687394 () Bool)

(assert (=> b!5735318 m!6687394))

(assert (=> b!5735313 m!6687388))

(assert (=> b!5735313 m!6687388))

(declare-fun m!6687396 () Bool)

(assert (=> b!5735313 m!6687396))

(assert (=> b!5735313 m!6687392))

(assert (=> b!5735313 m!6687396))

(assert (=> b!5735313 m!6687392))

(declare-fun m!6687398 () Bool)

(assert (=> b!5735313 m!6687398))

(assert (=> b!5735317 m!6687392))

(assert (=> b!5735317 m!6687392))

(assert (=> b!5735317 m!6687394))

(assert (=> d!1808334 m!6687390))

(assert (=> d!1808334 m!6686872))

(declare-fun m!6687400 () Bool)

(assert (=> b!5735315 m!6687400))

(assert (=> b!5734204 d!1808334))

(declare-fun bs!1340631 () Bool)

(declare-fun b!5735330 () Bool)

(assert (= bs!1340631 (and b!5735330 d!1808286)))

(declare-fun lambda!310690 () Int)

(assert (=> bs!1340631 (not (= lambda!310690 lambda!310675))))

(declare-fun bs!1340632 () Bool)

(assert (= bs!1340632 (and b!5735330 d!1808284)))

(assert (=> bs!1340632 (not (= lambda!310690 lambda!310665))))

(declare-fun bs!1340633 () Bool)

(assert (= bs!1340633 (and b!5735330 b!5734841)))

(assert (=> bs!1340633 (= (and (= (reg!16070 lt!2282750) (reg!16070 lt!2282759)) (= lt!2282750 lt!2282759)) (= lambda!310690 lambda!310644))))

(declare-fun bs!1340634 () Bool)

(assert (= bs!1340634 (and b!5735330 d!1808272)))

(assert (=> bs!1340634 (not (= lambda!310690 lambda!310664))))

(declare-fun bs!1340635 () Bool)

(assert (= bs!1340635 (and b!5735330 b!5734838)))

(assert (=> bs!1340635 (not (= lambda!310690 lambda!310647))))

(declare-fun bs!1340636 () Bool)

(assert (= bs!1340636 (and b!5735330 b!5734230)))

(assert (=> bs!1340636 (not (= lambda!310690 lambda!310588))))

(declare-fun bs!1340637 () Bool)

(assert (= bs!1340637 (and b!5735330 d!1808088)))

(assert (=> bs!1340637 (not (= lambda!310690 lambda!310628))))

(declare-fun bs!1340638 () Bool)

(assert (= bs!1340638 (and b!5735330 b!5734197)))

(assert (=> bs!1340638 (not (= lambda!310690 lambda!310580))))

(declare-fun bs!1340639 () Bool)

(assert (= bs!1340639 (and b!5735330 d!1808166)))

(assert (=> bs!1340639 (not (= lambda!310690 lambda!310657))))

(declare-fun bs!1340640 () Bool)

(assert (= bs!1340640 (and b!5735330 b!5734236)))

(assert (=> bs!1340640 (not (= lambda!310690 lambda!310585))))

(declare-fun bs!1340641 () Bool)

(assert (= bs!1340641 (and b!5735330 b!5735291)))

(assert (=> bs!1340641 (= (and (= (reg!16070 lt!2282750) (reg!16070 r!7292)) (= lt!2282750 r!7292)) (= lambda!310690 lambda!310685))))

(declare-fun bs!1340642 () Bool)

(assert (= bs!1340642 (and b!5735330 b!5735222)))

(assert (=> bs!1340642 (not (= lambda!310690 lambda!310678))))

(assert (=> bs!1340639 (not (= lambda!310690 lambda!310656))))

(assert (=> bs!1340636 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 lt!2282750) (reg!16070 (regOne!31994 r!7292))) (= lt!2282750 lt!2282770)) (= lambda!310690 lambda!310589))))

(assert (=> bs!1340636 (not (= lambda!310690 lambda!310587))))

(assert (=> bs!1340634 (not (= lambda!310690 lambda!310663))))

(declare-fun bs!1340643 () Bool)

(assert (= bs!1340643 (and b!5735330 b!5735225)))

(assert (=> bs!1340643 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 lt!2282750) (reg!16070 lt!2282787)) (= lt!2282750 lt!2282787)) (= lambda!310690 lambda!310677))))

(assert (=> bs!1340631 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (reg!16070 lt!2282750) (reg!16070 (regOne!31994 r!7292))) (= lt!2282750 (Star!15741 (reg!16070 (regOne!31994 r!7292))))) (= lambda!310690 lambda!310676))))

(assert (=> bs!1340640 (not (= lambda!310690 lambda!310586))))

(declare-fun bs!1340644 () Bool)

(assert (= bs!1340644 (and b!5735330 b!5735288)))

(assert (=> bs!1340644 (not (= lambda!310690 lambda!310686))))

(assert (=> bs!1340638 (not (= lambda!310690 lambda!310581))))

(assert (=> b!5735330 true))

(assert (=> b!5735330 true))

(declare-fun bs!1340645 () Bool)

(declare-fun b!5735327 () Bool)

(assert (= bs!1340645 (and b!5735327 d!1808286)))

(declare-fun lambda!310691 () Int)

(assert (=> bs!1340645 (not (= lambda!310691 lambda!310675))))

(declare-fun bs!1340646 () Bool)

(assert (= bs!1340646 (and b!5735327 d!1808284)))

(assert (=> bs!1340646 (not (= lambda!310691 lambda!310665))))

(declare-fun bs!1340647 () Bool)

(assert (= bs!1340647 (and b!5735327 b!5734841)))

(assert (=> bs!1340647 (not (= lambda!310691 lambda!310644))))

(declare-fun bs!1340648 () Bool)

(assert (= bs!1340648 (and b!5735327 d!1808272)))

(assert (=> bs!1340648 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 lt!2282750) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 lt!2282750) lt!2282770)) (= lambda!310691 lambda!310664))))

(declare-fun bs!1340649 () Bool)

(assert (= bs!1340649 (and b!5735327 b!5734838)))

(assert (=> bs!1340649 (= (and (= (regOne!31994 lt!2282750) (regOne!31994 lt!2282759)) (= (regTwo!31994 lt!2282750) (regTwo!31994 lt!2282759))) (= lambda!310691 lambda!310647))))

(declare-fun bs!1340650 () Bool)

(assert (= bs!1340650 (and b!5735327 b!5734230)))

(assert (=> bs!1340650 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 lt!2282750) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 lt!2282750) lt!2282770)) (= lambda!310691 lambda!310588))))

(declare-fun bs!1340651 () Bool)

(assert (= bs!1340651 (and b!5735327 d!1808088)))

(assert (=> bs!1340651 (not (= lambda!310691 lambda!310628))))

(declare-fun bs!1340652 () Bool)

(assert (= bs!1340652 (and b!5735327 b!5734197)))

(assert (=> bs!1340652 (not (= lambda!310691 lambda!310580))))

(declare-fun bs!1340653 () Bool)

(assert (= bs!1340653 (and b!5735327 d!1808166)))

(assert (=> bs!1340653 (= (and (= (regOne!31994 lt!2282750) lt!2282787) (= (regTwo!31994 lt!2282750) (regTwo!31994 r!7292))) (= lambda!310691 lambda!310657))))

(declare-fun bs!1340654 () Bool)

(assert (= bs!1340654 (and b!5735327 b!5734236)))

(assert (=> bs!1340654 (not (= lambda!310691 lambda!310585))))

(declare-fun bs!1340655 () Bool)

(assert (= bs!1340655 (and b!5735327 b!5735291)))

(assert (=> bs!1340655 (not (= lambda!310691 lambda!310685))))

(declare-fun bs!1340656 () Bool)

(assert (= bs!1340656 (and b!5735327 b!5735222)))

(assert (=> bs!1340656 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 lt!2282750) (regOne!31994 lt!2282787)) (= (regTwo!31994 lt!2282750) (regTwo!31994 lt!2282787))) (= lambda!310691 lambda!310678))))

(assert (=> bs!1340653 (not (= lambda!310691 lambda!310656))))

(assert (=> bs!1340650 (not (= lambda!310691 lambda!310589))))

(assert (=> bs!1340650 (not (= lambda!310691 lambda!310587))))

(assert (=> bs!1340648 (not (= lambda!310691 lambda!310663))))

(declare-fun bs!1340657 () Bool)

(assert (= bs!1340657 (and b!5735327 b!5735225)))

(assert (=> bs!1340657 (not (= lambda!310691 lambda!310677))))

(assert (=> bs!1340645 (not (= lambda!310691 lambda!310676))))

(assert (=> bs!1340654 (= (and (= (regOne!31994 lt!2282750) lt!2282787) (= (regTwo!31994 lt!2282750) (regTwo!31994 r!7292))) (= lambda!310691 lambda!310586))))

(declare-fun bs!1340658 () Bool)

(assert (= bs!1340658 (and b!5735327 b!5735288)))

(assert (=> bs!1340658 (= (and (= (regOne!31994 lt!2282750) (regOne!31994 r!7292)) (= (regTwo!31994 lt!2282750) (regTwo!31994 r!7292))) (= lambda!310691 lambda!310686))))

(declare-fun bs!1340659 () Bool)

(assert (= bs!1340659 (and b!5735327 b!5735330)))

(assert (=> bs!1340659 (not (= lambda!310691 lambda!310690))))

(assert (=> bs!1340652 (= (and (= (regOne!31994 lt!2282750) (regOne!31994 r!7292)) (= (regTwo!31994 lt!2282750) (regTwo!31994 r!7292))) (= lambda!310691 lambda!310581))))

(assert (=> b!5735327 true))

(assert (=> b!5735327 true))

(declare-fun b!5735321 () Bool)

(declare-fun c!1012151 () Bool)

(assert (=> b!5735321 (= c!1012151 ((_ is ElementMatch!15741) lt!2282750))))

(declare-fun e!3525893 () Bool)

(declare-fun e!3525890 () Bool)

(assert (=> b!5735321 (= e!3525893 e!3525890)))

(declare-fun b!5735322 () Bool)

(declare-fun e!3525887 () Bool)

(assert (=> b!5735322 (= e!3525887 (matchRSpec!2844 (regTwo!31995 lt!2282750) s!2326))))

(declare-fun b!5735323 () Bool)

(assert (=> b!5735323 (= e!3525890 (= s!2326 (Cons!63398 (c!1011861 lt!2282750) Nil!63398)))))

(declare-fun b!5735324 () Bool)

(declare-fun res!2421877 () Bool)

(declare-fun e!3525888 () Bool)

(assert (=> b!5735324 (=> res!2421877 e!3525888)))

(declare-fun call!438476 () Bool)

(assert (=> b!5735324 (= res!2421877 call!438476)))

(declare-fun e!3525889 () Bool)

(assert (=> b!5735324 (= e!3525889 e!3525888)))

(declare-fun bm!438470 () Bool)

(assert (=> bm!438470 (= call!438476 (isEmpty!35280 s!2326))))

(declare-fun d!1808336 () Bool)

(declare-fun c!1012152 () Bool)

(assert (=> d!1808336 (= c!1012152 ((_ is EmptyExpr!15741) lt!2282750))))

(declare-fun e!3525891 () Bool)

(assert (=> d!1808336 (= (matchRSpec!2844 lt!2282750 s!2326) e!3525891)))

(declare-fun b!5735325 () Bool)

(declare-fun e!3525892 () Bool)

(assert (=> b!5735325 (= e!3525892 e!3525889)))

(declare-fun c!1012153 () Bool)

(assert (=> b!5735325 (= c!1012153 ((_ is Star!15741) lt!2282750))))

(declare-fun bm!438471 () Bool)

(declare-fun call!438475 () Bool)

(assert (=> bm!438471 (= call!438475 (Exists!2841 (ite c!1012153 lambda!310690 lambda!310691)))))

(declare-fun b!5735326 () Bool)

(declare-fun c!1012150 () Bool)

(assert (=> b!5735326 (= c!1012150 ((_ is Union!15741) lt!2282750))))

(assert (=> b!5735326 (= e!3525890 e!3525892)))

(assert (=> b!5735327 (= e!3525889 call!438475)))

(declare-fun b!5735328 () Bool)

(assert (=> b!5735328 (= e!3525891 call!438476)))

(declare-fun b!5735329 () Bool)

(assert (=> b!5735329 (= e!3525891 e!3525893)))

(declare-fun res!2421879 () Bool)

(assert (=> b!5735329 (= res!2421879 (not ((_ is EmptyLang!15741) lt!2282750)))))

(assert (=> b!5735329 (=> (not res!2421879) (not e!3525893))))

(assert (=> b!5735330 (= e!3525888 call!438475)))

(declare-fun b!5735331 () Bool)

(assert (=> b!5735331 (= e!3525892 e!3525887)))

(declare-fun res!2421878 () Bool)

(assert (=> b!5735331 (= res!2421878 (matchRSpec!2844 (regOne!31995 lt!2282750) s!2326))))

(assert (=> b!5735331 (=> res!2421878 e!3525887)))

(assert (= (and d!1808336 c!1012152) b!5735328))

(assert (= (and d!1808336 (not c!1012152)) b!5735329))

(assert (= (and b!5735329 res!2421879) b!5735321))

(assert (= (and b!5735321 c!1012151) b!5735323))

(assert (= (and b!5735321 (not c!1012151)) b!5735326))

(assert (= (and b!5735326 c!1012150) b!5735331))

(assert (= (and b!5735326 (not c!1012150)) b!5735325))

(assert (= (and b!5735331 (not res!2421878)) b!5735322))

(assert (= (and b!5735325 c!1012153) b!5735324))

(assert (= (and b!5735325 (not c!1012153)) b!5735327))

(assert (= (and b!5735324 (not res!2421877)) b!5735330))

(assert (= (or b!5735330 b!5735327) bm!438471))

(assert (= (or b!5735328 b!5735324) bm!438470))

(declare-fun m!6687402 () Bool)

(assert (=> b!5735322 m!6687402))

(assert (=> bm!438470 m!6686860))

(declare-fun m!6687404 () Bool)

(assert (=> bm!438471 m!6687404))

(declare-fun m!6687406 () Bool)

(assert (=> b!5735331 m!6687406))

(assert (=> b!5734203 d!1808336))

(declare-fun b!5735332 () Bool)

(declare-fun e!3525900 () Bool)

(declare-fun e!3525895 () Bool)

(assert (=> b!5735332 (= e!3525900 e!3525895)))

(declare-fun res!2421883 () Bool)

(assert (=> b!5735332 (=> (not res!2421883) (not e!3525895))))

(declare-fun lt!2283012 () Bool)

(assert (=> b!5735332 (= res!2421883 (not lt!2283012))))

(declare-fun b!5735333 () Bool)

(declare-fun e!3525898 () Bool)

(assert (=> b!5735333 (= e!3525898 (not (= (head!12142 s!2326) (c!1011861 lt!2282750))))))

(declare-fun b!5735334 () Bool)

(declare-fun e!3525894 () Bool)

(assert (=> b!5735334 (= e!3525894 (not lt!2283012))))

(declare-fun b!5735335 () Bool)

(declare-fun res!2421884 () Bool)

(assert (=> b!5735335 (=> res!2421884 e!3525900)))

(assert (=> b!5735335 (= res!2421884 (not ((_ is ElementMatch!15741) lt!2282750)))))

(assert (=> b!5735335 (= e!3525894 e!3525900)))

(declare-fun b!5735337 () Bool)

(declare-fun e!3525897 () Bool)

(assert (=> b!5735337 (= e!3525897 e!3525894)))

(declare-fun c!1012156 () Bool)

(assert (=> b!5735337 (= c!1012156 ((_ is EmptyLang!15741) lt!2282750))))

(declare-fun b!5735338 () Bool)

(declare-fun e!3525899 () Bool)

(assert (=> b!5735338 (= e!3525899 (matchR!7926 (derivativeStep!4534 lt!2282750 (head!12142 s!2326)) (tail!11237 s!2326)))))

(declare-fun b!5735339 () Bool)

(declare-fun res!2421887 () Bool)

(declare-fun e!3525896 () Bool)

(assert (=> b!5735339 (=> (not res!2421887) (not e!3525896))))

(declare-fun call!438477 () Bool)

(assert (=> b!5735339 (= res!2421887 (not call!438477))))

(declare-fun b!5735340 () Bool)

(assert (=> b!5735340 (= e!3525899 (nullable!5773 lt!2282750))))

(declare-fun b!5735341 () Bool)

(assert (=> b!5735341 (= e!3525897 (= lt!2283012 call!438477))))

(declare-fun b!5735342 () Bool)

(declare-fun res!2421885 () Bool)

(assert (=> b!5735342 (=> res!2421885 e!3525898)))

(assert (=> b!5735342 (= res!2421885 (not (isEmpty!35280 (tail!11237 s!2326))))))

(declare-fun b!5735343 () Bool)

(declare-fun res!2421886 () Bool)

(assert (=> b!5735343 (=> (not res!2421886) (not e!3525896))))

(assert (=> b!5735343 (= res!2421886 (isEmpty!35280 (tail!11237 s!2326)))))

(declare-fun b!5735344 () Bool)

(declare-fun res!2421882 () Bool)

(assert (=> b!5735344 (=> res!2421882 e!3525900)))

(assert (=> b!5735344 (= res!2421882 e!3525896)))

(declare-fun res!2421881 () Bool)

(assert (=> b!5735344 (=> (not res!2421881) (not e!3525896))))

(assert (=> b!5735344 (= res!2421881 lt!2283012)))

(declare-fun d!1808338 () Bool)

(assert (=> d!1808338 e!3525897))

(declare-fun c!1012154 () Bool)

(assert (=> d!1808338 (= c!1012154 ((_ is EmptyExpr!15741) lt!2282750))))

(assert (=> d!1808338 (= lt!2283012 e!3525899)))

(declare-fun c!1012155 () Bool)

(assert (=> d!1808338 (= c!1012155 (isEmpty!35280 s!2326))))

(assert (=> d!1808338 (validRegex!7477 lt!2282750)))

(assert (=> d!1808338 (= (matchR!7926 lt!2282750 s!2326) lt!2283012)))

(declare-fun b!5735336 () Bool)

(assert (=> b!5735336 (= e!3525895 e!3525898)))

(declare-fun res!2421880 () Bool)

(assert (=> b!5735336 (=> res!2421880 e!3525898)))

(assert (=> b!5735336 (= res!2421880 call!438477)))

(declare-fun bm!438472 () Bool)

(assert (=> bm!438472 (= call!438477 (isEmpty!35280 s!2326))))

(declare-fun b!5735345 () Bool)

(assert (=> b!5735345 (= e!3525896 (= (head!12142 s!2326) (c!1011861 lt!2282750)))))

(assert (= (and d!1808338 c!1012155) b!5735340))

(assert (= (and d!1808338 (not c!1012155)) b!5735338))

(assert (= (and d!1808338 c!1012154) b!5735341))

(assert (= (and d!1808338 (not c!1012154)) b!5735337))

(assert (= (and b!5735337 c!1012156) b!5735334))

(assert (= (and b!5735337 (not c!1012156)) b!5735335))

(assert (= (and b!5735335 (not res!2421884)) b!5735344))

(assert (= (and b!5735344 res!2421881) b!5735339))

(assert (= (and b!5735339 res!2421887) b!5735343))

(assert (= (and b!5735343 res!2421886) b!5735345))

(assert (= (and b!5735344 (not res!2421882)) b!5735332))

(assert (= (and b!5735332 res!2421883) b!5735336))

(assert (= (and b!5735336 (not res!2421880)) b!5735342))

(assert (= (and b!5735342 (not res!2421885)) b!5735333))

(assert (= (or b!5735341 b!5735336 b!5735339) bm!438472))

(assert (=> b!5735345 m!6686996))

(assert (=> bm!438472 m!6686860))

(assert (=> b!5735333 m!6686996))

(assert (=> b!5735343 m!6686998))

(assert (=> b!5735343 m!6686998))

(assert (=> b!5735343 m!6687000))

(assert (=> b!5735338 m!6686996))

(assert (=> b!5735338 m!6686996))

(declare-fun m!6687408 () Bool)

(assert (=> b!5735338 m!6687408))

(assert (=> b!5735338 m!6686998))

(assert (=> b!5735338 m!6687408))

(assert (=> b!5735338 m!6686998))

(declare-fun m!6687410 () Bool)

(assert (=> b!5735338 m!6687410))

(assert (=> b!5735342 m!6686998))

(assert (=> b!5735342 m!6686998))

(assert (=> b!5735342 m!6687000))

(assert (=> d!1808338 m!6686860))

(assert (=> d!1808338 m!6687034))

(assert (=> b!5735340 m!6687036))

(assert (=> b!5734203 d!1808338))

(declare-fun d!1808340 () Bool)

(assert (=> d!1808340 (= (matchR!7926 lt!2282750 s!2326) (matchRSpec!2844 lt!2282750 s!2326))))

(declare-fun lt!2283013 () Unit!156496)

(assert (=> d!1808340 (= lt!2283013 (choose!43442 lt!2282750 s!2326))))

(assert (=> d!1808340 (validRegex!7477 lt!2282750)))

(assert (=> d!1808340 (= (mainMatchTheorem!2844 lt!2282750 s!2326) lt!2283013)))

(declare-fun bs!1340660 () Bool)

(assert (= bs!1340660 d!1808340))

(assert (=> bs!1340660 m!6686248))

(assert (=> bs!1340660 m!6686246))

(declare-fun m!6687412 () Bool)

(assert (=> bs!1340660 m!6687412))

(assert (=> bs!1340660 m!6687034))

(assert (=> b!5734203 d!1808340))

(declare-fun bs!1340661 () Bool)

(declare-fun d!1808342 () Bool)

(assert (= bs!1340661 (and d!1808342 d!1808324)))

(declare-fun lambda!310694 () Int)

(assert (=> bs!1340661 (= lambda!310694 lambda!310684)))

(declare-fun bs!1340662 () Bool)

(assert (= bs!1340662 (and d!1808342 d!1808322)))

(assert (=> bs!1340662 (= lambda!310694 lambda!310681)))

(declare-fun bs!1340663 () Bool)

(assert (= bs!1340663 (and d!1808342 b!5734240)))

(assert (=> bs!1340663 (= lambda!310694 lambda!310584)))

(declare-fun bs!1340664 () Bool)

(assert (= bs!1340664 (and d!1808342 d!1808332)))

(assert (=> bs!1340664 (= lambda!310694 lambda!310689)))

(declare-fun bs!1340665 () Bool)

(assert (= bs!1340665 (and d!1808342 d!1808130)))

(assert (=> bs!1340665 (= lambda!310694 lambda!310635)))

(declare-fun b!5735367 () Bool)

(declare-fun e!3525915 () Bool)

(declare-fun lt!2283016 () Regex!15741)

(declare-fun isEmptyExpr!1239 (Regex!15741) Bool)

(assert (=> b!5735367 (= e!3525915 (isEmptyExpr!1239 lt!2283016))))

(declare-fun b!5735368 () Bool)

(declare-fun e!3525918 () Regex!15741)

(declare-fun e!3525914 () Regex!15741)

(assert (=> b!5735368 (= e!3525918 e!3525914)))

(declare-fun c!1012166 () Bool)

(assert (=> b!5735368 (= c!1012166 ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343))))))

(declare-fun b!5735369 () Bool)

(declare-fun e!3525916 () Bool)

(declare-fun isConcat!762 (Regex!15741) Bool)

(assert (=> b!5735369 (= e!3525916 (isConcat!762 lt!2283016))))

(declare-fun b!5735370 () Bool)

(assert (=> b!5735370 (= e!3525918 (h!69847 (exprs!5625 (h!69848 zl!343))))))

(declare-fun b!5735371 () Bool)

(assert (=> b!5735371 (= e!3525914 EmptyExpr!15741)))

(declare-fun b!5735372 () Bool)

(assert (=> b!5735372 (= e!3525914 (Concat!24586 (h!69847 (exprs!5625 (h!69848 zl!343))) (generalisedConcat!1356 (t!376851 (exprs!5625 (h!69848 zl!343))))))))

(declare-fun b!5735373 () Bool)

(assert (=> b!5735373 (= e!3525916 (= lt!2283016 (head!12143 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun b!5735374 () Bool)

(declare-fun e!3525913 () Bool)

(assert (=> b!5735374 (= e!3525913 (isEmpty!35277 (t!376851 (exprs!5625 (h!69848 zl!343)))))))

(declare-fun b!5735375 () Bool)

(declare-fun e!3525917 () Bool)

(assert (=> b!5735375 (= e!3525917 e!3525915)))

(declare-fun c!1012165 () Bool)

(assert (=> b!5735375 (= c!1012165 (isEmpty!35277 (exprs!5625 (h!69848 zl!343))))))

(assert (=> d!1808342 e!3525917))

(declare-fun res!2421892 () Bool)

(assert (=> d!1808342 (=> (not res!2421892) (not e!3525917))))

(assert (=> d!1808342 (= res!2421892 (validRegex!7477 lt!2283016))))

(assert (=> d!1808342 (= lt!2283016 e!3525918)))

(declare-fun c!1012167 () Bool)

(assert (=> d!1808342 (= c!1012167 e!3525913)))

(declare-fun res!2421893 () Bool)

(assert (=> d!1808342 (=> (not res!2421893) (not e!3525913))))

(assert (=> d!1808342 (= res!2421893 ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343))))))

(assert (=> d!1808342 (forall!14866 (exprs!5625 (h!69848 zl!343)) lambda!310694)))

(assert (=> d!1808342 (= (generalisedConcat!1356 (exprs!5625 (h!69848 zl!343))) lt!2283016)))

(declare-fun b!5735366 () Bool)

(assert (=> b!5735366 (= e!3525915 e!3525916)))

(declare-fun c!1012168 () Bool)

(assert (=> b!5735366 (= c!1012168 (isEmpty!35277 (tail!11238 (exprs!5625 (h!69848 zl!343)))))))

(assert (= (and d!1808342 res!2421893) b!5735374))

(assert (= (and d!1808342 c!1012167) b!5735370))

(assert (= (and d!1808342 (not c!1012167)) b!5735368))

(assert (= (and b!5735368 c!1012166) b!5735372))

(assert (= (and b!5735368 (not c!1012166)) b!5735371))

(assert (= (and d!1808342 res!2421892) b!5735375))

(assert (= (and b!5735375 c!1012165) b!5735367))

(assert (= (and b!5735375 (not c!1012165)) b!5735366))

(assert (= (and b!5735366 c!1012168) b!5735373))

(assert (= (and b!5735366 (not c!1012168)) b!5735369))

(declare-fun m!6687414 () Bool)

(assert (=> b!5735375 m!6687414))

(declare-fun m!6687416 () Bool)

(assert (=> b!5735372 m!6687416))

(declare-fun m!6687418 () Bool)

(assert (=> b!5735367 m!6687418))

(declare-fun m!6687420 () Bool)

(assert (=> d!1808342 m!6687420))

(declare-fun m!6687422 () Bool)

(assert (=> d!1808342 m!6687422))

(assert (=> b!5735374 m!6686262))

(declare-fun m!6687424 () Bool)

(assert (=> b!5735366 m!6687424))

(assert (=> b!5735366 m!6687424))

(declare-fun m!6687426 () Bool)

(assert (=> b!5735366 m!6687426))

(declare-fun m!6687428 () Bool)

(assert (=> b!5735373 m!6687428))

(declare-fun m!6687430 () Bool)

(assert (=> b!5735369 m!6687430))

(assert (=> b!5734201 d!1808342))

(declare-fun d!1808344 () Bool)

(declare-fun e!3525921 () Bool)

(assert (=> d!1808344 (= (matchZipper!1879 ((_ map or) lt!2282772 lt!2282782) (t!376850 s!2326)) e!3525921)))

(declare-fun res!2421896 () Bool)

(assert (=> d!1808344 (=> res!2421896 e!3525921)))

(assert (=> d!1808344 (= res!2421896 (matchZipper!1879 lt!2282772 (t!376850 s!2326)))))

(declare-fun lt!2283019 () Unit!156496)

(declare-fun choose!43463 ((InoxSet Context!10250) (InoxSet Context!10250) List!63522) Unit!156496)

(assert (=> d!1808344 (= lt!2283019 (choose!43463 lt!2282772 lt!2282782 (t!376850 s!2326)))))

(assert (=> d!1808344 (= (lemmaZipperConcatMatchesSameAsBothZippers!766 lt!2282772 lt!2282782 (t!376850 s!2326)) lt!2283019)))

(declare-fun b!5735378 () Bool)

(assert (=> b!5735378 (= e!3525921 (matchZipper!1879 lt!2282782 (t!376850 s!2326)))))

(assert (= (and d!1808344 (not res!2421896)) b!5735378))

(assert (=> d!1808344 m!6686272))

(assert (=> d!1808344 m!6686230))

(declare-fun m!6687432 () Bool)

(assert (=> d!1808344 m!6687432))

(assert (=> b!5735378 m!6686222))

(assert (=> b!5734241 d!1808344))

(assert (=> b!5734241 d!1808318))

(declare-fun d!1808346 () Bool)

(declare-fun c!1012169 () Bool)

(assert (=> d!1808346 (= c!1012169 (isEmpty!35280 (t!376850 s!2326)))))

(declare-fun e!3525922 () Bool)

(assert (=> d!1808346 (= (matchZipper!1879 ((_ map or) lt!2282772 lt!2282782) (t!376850 s!2326)) e!3525922)))

(declare-fun b!5735379 () Bool)

(assert (=> b!5735379 (= e!3525922 (nullableZipper!1681 ((_ map or) lt!2282772 lt!2282782)))))

(declare-fun b!5735380 () Bool)

(assert (=> b!5735380 (= e!3525922 (matchZipper!1879 (derivationStepZipper!1824 ((_ map or) lt!2282772 lt!2282782) (head!12142 (t!376850 s!2326))) (tail!11237 (t!376850 s!2326))))))

(assert (= (and d!1808346 c!1012169) b!5735379))

(assert (= (and d!1808346 (not c!1012169)) b!5735380))

(assert (=> d!1808346 m!6686476))

(declare-fun m!6687434 () Bool)

(assert (=> b!5735379 m!6687434))

(assert (=> b!5735380 m!6686480))

(assert (=> b!5735380 m!6686480))

(declare-fun m!6687436 () Bool)

(assert (=> b!5735380 m!6687436))

(assert (=> b!5735380 m!6686484))

(assert (=> b!5735380 m!6687436))

(assert (=> b!5735380 m!6686484))

(declare-fun m!6687438 () Bool)

(assert (=> b!5735380 m!6687438))

(assert (=> b!5734241 d!1808346))

(declare-fun d!1808348 () Bool)

(declare-fun e!3525925 () Bool)

(assert (=> d!1808348 e!3525925))

(declare-fun res!2421899 () Bool)

(assert (=> d!1808348 (=> (not res!2421899) (not e!3525925))))

(declare-fun lt!2283022 () List!63524)

(declare-fun noDuplicate!1661 (List!63524) Bool)

(assert (=> d!1808348 (= res!2421899 (noDuplicate!1661 lt!2283022))))

(declare-fun choose!43464 ((InoxSet Context!10250)) List!63524)

(assert (=> d!1808348 (= lt!2283022 (choose!43464 z!1189))))

(assert (=> d!1808348 (= (toList!9525 z!1189) lt!2283022)))

(declare-fun b!5735383 () Bool)

(declare-fun content!11552 (List!63524) (InoxSet Context!10250))

(assert (=> b!5735383 (= e!3525925 (= (content!11552 lt!2283022) z!1189))))

(assert (= (and d!1808348 res!2421899) b!5735383))

(declare-fun m!6687440 () Bool)

(assert (=> d!1808348 m!6687440))

(declare-fun m!6687442 () Bool)

(assert (=> d!1808348 m!6687442))

(declare-fun m!6687444 () Bool)

(assert (=> b!5735383 m!6687444))

(assert (=> b!5734220 d!1808348))

(declare-fun d!1808350 () Bool)

(assert (=> d!1808350 (= (isDefined!12453 lt!2282802) (not (isEmpty!35281 lt!2282802)))))

(declare-fun bs!1340666 () Bool)

(assert (= bs!1340666 d!1808350))

(declare-fun m!6687446 () Bool)

(assert (=> bs!1340666 m!6687446))

(assert (=> b!5734200 d!1808350))

(declare-fun b!5735387 () Bool)

(declare-fun e!3525926 () Bool)

(declare-fun lt!2283023 () List!63522)

(assert (=> b!5735387 (= e!3525926 (or (not (= (_2!36141 lt!2282753) Nil!63398)) (= lt!2283023 (_1!36141 lt!2282753))))))

(declare-fun b!5735384 () Bool)

(declare-fun e!3525927 () List!63522)

(assert (=> b!5735384 (= e!3525927 (_2!36141 lt!2282753))))

(declare-fun d!1808352 () Bool)

(assert (=> d!1808352 e!3525926))

(declare-fun res!2421900 () Bool)

(assert (=> d!1808352 (=> (not res!2421900) (not e!3525926))))

(assert (=> d!1808352 (= res!2421900 (= (content!11551 lt!2283023) ((_ map or) (content!11551 (_1!36141 lt!2282753)) (content!11551 (_2!36141 lt!2282753)))))))

(assert (=> d!1808352 (= lt!2283023 e!3525927)))

(declare-fun c!1012170 () Bool)

(assert (=> d!1808352 (= c!1012170 ((_ is Nil!63398) (_1!36141 lt!2282753)))))

(assert (=> d!1808352 (= (++!13954 (_1!36141 lt!2282753) (_2!36141 lt!2282753)) lt!2283023)))

(declare-fun b!5735386 () Bool)

(declare-fun res!2421901 () Bool)

(assert (=> b!5735386 (=> (not res!2421901) (not e!3525926))))

(assert (=> b!5735386 (= res!2421901 (= (size!40057 lt!2283023) (+ (size!40057 (_1!36141 lt!2282753)) (size!40057 (_2!36141 lt!2282753)))))))

(declare-fun b!5735385 () Bool)

(assert (=> b!5735385 (= e!3525927 (Cons!63398 (h!69846 (_1!36141 lt!2282753)) (++!13954 (t!376850 (_1!36141 lt!2282753)) (_2!36141 lt!2282753))))))

(assert (= (and d!1808352 c!1012170) b!5735384))

(assert (= (and d!1808352 (not c!1012170)) b!5735385))

(assert (= (and d!1808352 res!2421900) b!5735386))

(assert (= (and b!5735386 res!2421901) b!5735387))

(declare-fun m!6687448 () Bool)

(assert (=> d!1808352 m!6687448))

(declare-fun m!6687450 () Bool)

(assert (=> d!1808352 m!6687450))

(declare-fun m!6687452 () Bool)

(assert (=> d!1808352 m!6687452))

(declare-fun m!6687454 () Bool)

(assert (=> b!5735386 m!6687454))

(declare-fun m!6687456 () Bool)

(assert (=> b!5735386 m!6687456))

(declare-fun m!6687458 () Bool)

(assert (=> b!5735386 m!6687458))

(declare-fun m!6687460 () Bool)

(assert (=> b!5735385 m!6687460))

(assert (=> b!5734200 d!1808352))

(declare-fun d!1808354 () Bool)

(declare-fun e!3525938 () Bool)

(assert (=> d!1808354 e!3525938))

(declare-fun res!2421916 () Bool)

(assert (=> d!1808354 (=> res!2421916 e!3525938)))

(declare-fun e!3525941 () Bool)

(assert (=> d!1808354 (= res!2421916 e!3525941)))

(declare-fun res!2421914 () Bool)

(assert (=> d!1808354 (=> (not res!2421914) (not e!3525941))))

(declare-fun lt!2283032 () Option!15750)

(assert (=> d!1808354 (= res!2421914 (isDefined!12453 lt!2283032))))

(declare-fun e!3525939 () Option!15750)

(assert (=> d!1808354 (= lt!2283032 e!3525939)))

(declare-fun c!1012175 () Bool)

(declare-fun e!3525942 () Bool)

(assert (=> d!1808354 (= c!1012175 e!3525942)))

(declare-fun res!2421912 () Bool)

(assert (=> d!1808354 (=> (not res!2421912) (not e!3525942))))

(assert (=> d!1808354 (= res!2421912 (matchZipper!1879 lt!2282757 Nil!63398))))

(assert (=> d!1808354 (= (++!13954 Nil!63398 s!2326) s!2326)))

(assert (=> d!1808354 (= (findConcatSeparationZippers!128 lt!2282757 lt!2282747 Nil!63398 s!2326 s!2326) lt!2283032)))

(declare-fun b!5735406 () Bool)

(assert (=> b!5735406 (= e!3525938 (not (isDefined!12453 lt!2283032)))))

(declare-fun b!5735407 () Bool)

(declare-fun lt!2283030 () Unit!156496)

(declare-fun lt!2283031 () Unit!156496)

(assert (=> b!5735407 (= lt!2283030 lt!2283031)))

(assert (=> b!5735407 (= (++!13954 (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326)) s!2326)))

(assert (=> b!5735407 (= lt!2283031 (lemmaMoveElementToOtherListKeepsConcatEq!2083 Nil!63398 (h!69846 s!2326) (t!376850 s!2326) s!2326))))

(declare-fun e!3525940 () Option!15750)

(assert (=> b!5735407 (= e!3525940 (findConcatSeparationZippers!128 lt!2282757 lt!2282747 (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326) s!2326))))

(declare-fun b!5735408 () Bool)

(assert (=> b!5735408 (= e!3525942 (matchZipper!1879 lt!2282747 s!2326))))

(declare-fun b!5735409 () Bool)

(declare-fun res!2421915 () Bool)

(assert (=> b!5735409 (=> (not res!2421915) (not e!3525941))))

(assert (=> b!5735409 (= res!2421915 (matchZipper!1879 lt!2282757 (_1!36141 (get!21867 lt!2283032))))))

(declare-fun b!5735410 () Bool)

(assert (=> b!5735410 (= e!3525941 (= (++!13954 (_1!36141 (get!21867 lt!2283032)) (_2!36141 (get!21867 lt!2283032))) s!2326))))

(declare-fun b!5735411 () Bool)

(assert (=> b!5735411 (= e!3525939 (Some!15749 (tuple2!65677 Nil!63398 s!2326)))))

(declare-fun b!5735412 () Bool)

(assert (=> b!5735412 (= e!3525939 e!3525940)))

(declare-fun c!1012176 () Bool)

(assert (=> b!5735412 (= c!1012176 ((_ is Nil!63398) s!2326))))

(declare-fun b!5735413 () Bool)

(declare-fun res!2421913 () Bool)

(assert (=> b!5735413 (=> (not res!2421913) (not e!3525941))))

(assert (=> b!5735413 (= res!2421913 (matchZipper!1879 lt!2282747 (_2!36141 (get!21867 lt!2283032))))))

(declare-fun b!5735414 () Bool)

(assert (=> b!5735414 (= e!3525940 None!15749)))

(assert (= (and d!1808354 res!2421912) b!5735408))

(assert (= (and d!1808354 c!1012175) b!5735411))

(assert (= (and d!1808354 (not c!1012175)) b!5735412))

(assert (= (and b!5735412 c!1012176) b!5735414))

(assert (= (and b!5735412 (not c!1012176)) b!5735407))

(assert (= (and d!1808354 res!2421914) b!5735409))

(assert (= (and b!5735409 res!2421915) b!5735413))

(assert (= (and b!5735413 res!2421913) b!5735410))

(assert (= (and d!1808354 (not res!2421916)) b!5735406))

(assert (=> b!5735407 m!6686626))

(assert (=> b!5735407 m!6686626))

(assert (=> b!5735407 m!6686628))

(assert (=> b!5735407 m!6686630))

(assert (=> b!5735407 m!6686626))

(declare-fun m!6687462 () Bool)

(assert (=> b!5735407 m!6687462))

(declare-fun m!6687464 () Bool)

(assert (=> b!5735413 m!6687464))

(declare-fun m!6687466 () Bool)

(assert (=> b!5735413 m!6687466))

(assert (=> b!5735409 m!6687464))

(declare-fun m!6687468 () Bool)

(assert (=> b!5735409 m!6687468))

(declare-fun m!6687470 () Bool)

(assert (=> b!5735408 m!6687470))

(declare-fun m!6687472 () Bool)

(assert (=> b!5735406 m!6687472))

(assert (=> b!5735410 m!6687464))

(declare-fun m!6687474 () Bool)

(assert (=> b!5735410 m!6687474))

(assert (=> d!1808354 m!6687472))

(declare-fun m!6687476 () Bool)

(assert (=> d!1808354 m!6687476))

(declare-fun m!6687478 () Bool)

(assert (=> d!1808354 m!6687478))

(assert (=> b!5734200 d!1808354))

(declare-fun d!1808356 () Bool)

(assert (=> d!1808356 (isDefined!12453 (findConcatSeparationZippers!128 lt!2282757 (store ((as const (Array Context!10250 Bool)) false) lt!2282749 true) Nil!63398 s!2326 s!2326))))

(declare-fun lt!2283035 () Unit!156496)

(declare-fun choose!43465 ((InoxSet Context!10250) Context!10250 List!63522) Unit!156496)

(assert (=> d!1808356 (= lt!2283035 (choose!43465 lt!2282757 lt!2282749 s!2326))))

(assert (=> d!1808356 (matchZipper!1879 (appendTo!120 lt!2282757 lt!2282749) s!2326)))

(assert (=> d!1808356 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!128 lt!2282757 lt!2282749 s!2326) lt!2283035)))

(declare-fun bs!1340667 () Bool)

(assert (= bs!1340667 d!1808356))

(assert (=> bs!1340667 m!6686254))

(assert (=> bs!1340667 m!6686254))

(declare-fun m!6687480 () Bool)

(assert (=> bs!1340667 m!6687480))

(declare-fun m!6687482 () Bool)

(assert (=> bs!1340667 m!6687482))

(declare-fun m!6687484 () Bool)

(assert (=> bs!1340667 m!6687484))

(assert (=> bs!1340667 m!6686084))

(assert (=> bs!1340667 m!6687482))

(assert (=> bs!1340667 m!6686084))

(declare-fun m!6687486 () Bool)

(assert (=> bs!1340667 m!6687486))

(assert (=> b!5734200 d!1808356))

(declare-fun d!1808358 () Bool)

(assert (=> d!1808358 (= (get!21867 lt!2282802) (v!51804 lt!2282802))))

(assert (=> b!5734200 d!1808358))

(declare-fun d!1808360 () Bool)

(assert (=> d!1808360 (= (nullable!5773 (regOne!31994 (regOne!31994 r!7292))) (nullableFct!1827 (regOne!31994 (regOne!31994 r!7292))))))

(declare-fun bs!1340668 () Bool)

(assert (= bs!1340668 d!1808360))

(declare-fun m!6687488 () Bool)

(assert (=> bs!1340668 m!6687488))

(assert (=> b!5734199 d!1808360))

(declare-fun bs!1340669 () Bool)

(declare-fun d!1808362 () Bool)

(assert (= bs!1340669 (and d!1808362 b!5734240)))

(declare-fun lambda!310699 () Int)

(assert (=> bs!1340669 (= (= (exprs!5625 lt!2282749) lt!2282773) (= lambda!310699 lambda!310583))))

(assert (=> d!1808362 true))

(assert (=> d!1808362 (= (appendTo!120 lt!2282757 lt!2282749) (map!14532 lt!2282757 lambda!310699))))

(declare-fun bs!1340670 () Bool)

(assert (= bs!1340670 d!1808362))

(declare-fun m!6687490 () Bool)

(assert (=> bs!1340670 m!6687490))

(assert (=> b!5734240 d!1808362))

(assert (=> b!5734240 d!1808198))

(declare-fun d!1808364 () Bool)

(declare-fun dynLambda!24812 (Int Context!10250) Context!10250)

(assert (=> d!1808364 (= (map!14532 lt!2282757 lambda!310583) (store ((as const (Array Context!10250 Bool)) false) (dynLambda!24812 lambda!310583 lt!2282776) true))))

(declare-fun lt!2283040 () Unit!156496)

(declare-fun choose!43466 ((InoxSet Context!10250) Context!10250 Int) Unit!156496)

(assert (=> d!1808364 (= lt!2283040 (choose!43466 lt!2282757 lt!2282776 lambda!310583))))

(assert (=> d!1808364 (= lt!2282757 (store ((as const (Array Context!10250 Bool)) false) lt!2282776 true))))

(assert (=> d!1808364 (= (lemmaMapOnSingletonSet!136 lt!2282757 lt!2282776 lambda!310583) lt!2283040)))

(declare-fun b_lambda!216635 () Bool)

(assert (=> (not b_lambda!216635) (not d!1808364)))

(declare-fun bs!1340671 () Bool)

(assert (= bs!1340671 d!1808364))

(assert (=> bs!1340671 m!6686092))

(declare-fun m!6687492 () Bool)

(assert (=> bs!1340671 m!6687492))

(declare-fun m!6687494 () Bool)

(assert (=> bs!1340671 m!6687494))

(assert (=> bs!1340671 m!6686256))

(declare-fun m!6687496 () Bool)

(assert (=> bs!1340671 m!6687496))

(assert (=> bs!1340671 m!6687492))

(assert (=> b!5734240 d!1808364))

(assert (=> b!5734240 d!1808068))

(declare-fun d!1808366 () Bool)

(declare-fun choose!43467 ((InoxSet Context!10250) Int) (InoxSet Context!10250))

(assert (=> d!1808366 (= (map!14532 lt!2282757 lambda!310583) (choose!43467 lt!2282757 lambda!310583))))

(declare-fun bs!1340672 () Bool)

(assert (= bs!1340672 d!1808366))

(declare-fun m!6687498 () Bool)

(assert (=> bs!1340672 m!6687498))

(assert (=> b!5734240 d!1808366))

(declare-fun bm!438473 () Bool)

(declare-fun call!438481 () (InoxSet Context!10250))

(declare-fun call!438478 () (InoxSet Context!10250))

(assert (=> bm!438473 (= call!438481 call!438478)))

(declare-fun b!5735417 () Bool)

(declare-fun c!1012178 () Bool)

(declare-fun e!3525948 () Bool)

(assert (=> b!5735417 (= c!1012178 e!3525948)))

(declare-fun res!2421917 () Bool)

(assert (=> b!5735417 (=> (not res!2421917) (not e!3525948))))

(assert (=> b!5735417 (= res!2421917 ((_ is Concat!24586) (reg!16070 (regOne!31994 r!7292))))))

(declare-fun e!3525946 () (InoxSet Context!10250))

(declare-fun e!3525944 () (InoxSet Context!10250))

(assert (=> b!5735417 (= e!3525946 e!3525944)))

(declare-fun bm!438474 () Bool)

(declare-fun call!438479 () (InoxSet Context!10250))

(assert (=> bm!438474 (= call!438478 call!438479)))

(declare-fun b!5735418 () Bool)

(declare-fun e!3525947 () (InoxSet Context!10250))

(assert (=> b!5735418 (= e!3525944 e!3525947)))

(declare-fun c!1012179 () Bool)

(assert (=> b!5735418 (= c!1012179 ((_ is Concat!24586) (reg!16070 (regOne!31994 r!7292))))))

(declare-fun b!5735419 () Bool)

(declare-fun call!438482 () (InoxSet Context!10250))

(assert (=> b!5735419 (= e!3525946 ((_ map or) call!438482 call!438479))))

(declare-fun d!1808368 () Bool)

(declare-fun c!1012182 () Bool)

(assert (=> d!1808368 (= c!1012182 (and ((_ is ElementMatch!15741) (reg!16070 (regOne!31994 r!7292))) (= (c!1011861 (reg!16070 (regOne!31994 r!7292))) (h!69846 s!2326))))))

(declare-fun e!3525945 () (InoxSet Context!10250))

(assert (=> d!1808368 (= (derivationStepZipperDown!1083 (reg!16070 (regOne!31994 r!7292)) lt!2282749 (h!69846 s!2326)) e!3525945)))

(declare-fun call!438483 () List!63523)

(declare-fun bm!438475 () Bool)

(declare-fun c!1012180 () Bool)

(assert (=> bm!438475 (= call!438482 (derivationStepZipperDown!1083 (ite c!1012180 (regOne!31995 (reg!16070 (regOne!31994 r!7292))) (regOne!31994 (reg!16070 (regOne!31994 r!7292)))) (ite c!1012180 lt!2282749 (Context!10251 call!438483)) (h!69846 s!2326)))))

(declare-fun b!5735420 () Bool)

(assert (=> b!5735420 (= e!3525947 call!438481)))

(declare-fun b!5735421 () Bool)

(declare-fun e!3525943 () (InoxSet Context!10250))

(assert (=> b!5735421 (= e!3525943 ((as const (Array Context!10250 Bool)) false))))

(declare-fun b!5735422 () Bool)

(assert (=> b!5735422 (= e!3525944 ((_ map or) call!438482 call!438478))))

(declare-fun call!438480 () List!63523)

(declare-fun bm!438476 () Bool)

(assert (=> bm!438476 (= call!438479 (derivationStepZipperDown!1083 (ite c!1012180 (regTwo!31995 (reg!16070 (regOne!31994 r!7292))) (ite c!1012178 (regTwo!31994 (reg!16070 (regOne!31994 r!7292))) (ite c!1012179 (regOne!31994 (reg!16070 (regOne!31994 r!7292))) (reg!16070 (reg!16070 (regOne!31994 r!7292)))))) (ite (or c!1012180 c!1012178) lt!2282749 (Context!10251 call!438480)) (h!69846 s!2326)))))

(declare-fun bm!438477 () Bool)

(assert (=> bm!438477 (= call!438483 ($colon$colon!1748 (exprs!5625 lt!2282749) (ite (or c!1012178 c!1012179) (regTwo!31994 (reg!16070 (regOne!31994 r!7292))) (reg!16070 (regOne!31994 r!7292)))))))

(declare-fun bm!438478 () Bool)

(assert (=> bm!438478 (= call!438480 call!438483)))

(declare-fun b!5735423 () Bool)

(declare-fun c!1012181 () Bool)

(assert (=> b!5735423 (= c!1012181 ((_ is Star!15741) (reg!16070 (regOne!31994 r!7292))))))

(assert (=> b!5735423 (= e!3525947 e!3525943)))

(declare-fun b!5735424 () Bool)

(assert (=> b!5735424 (= e!3525943 call!438481)))

(declare-fun b!5735425 () Bool)

(assert (=> b!5735425 (= e!3525945 (store ((as const (Array Context!10250 Bool)) false) lt!2282749 true))))

(declare-fun b!5735426 () Bool)

(assert (=> b!5735426 (= e!3525948 (nullable!5773 (regOne!31994 (reg!16070 (regOne!31994 r!7292)))))))

(declare-fun b!5735427 () Bool)

(assert (=> b!5735427 (= e!3525945 e!3525946)))

(assert (=> b!5735427 (= c!1012180 ((_ is Union!15741) (reg!16070 (regOne!31994 r!7292))))))

(assert (= (and d!1808368 c!1012182) b!5735425))

(assert (= (and d!1808368 (not c!1012182)) b!5735427))

(assert (= (and b!5735427 c!1012180) b!5735419))

(assert (= (and b!5735427 (not c!1012180)) b!5735417))

(assert (= (and b!5735417 res!2421917) b!5735426))

(assert (= (and b!5735417 c!1012178) b!5735422))

(assert (= (and b!5735417 (not c!1012178)) b!5735418))

(assert (= (and b!5735418 c!1012179) b!5735420))

(assert (= (and b!5735418 (not c!1012179)) b!5735423))

(assert (= (and b!5735423 c!1012181) b!5735424))

(assert (= (and b!5735423 (not c!1012181)) b!5735421))

(assert (= (or b!5735420 b!5735424) bm!438478))

(assert (= (or b!5735420 b!5735424) bm!438473))

(assert (= (or b!5735422 bm!438478) bm!438477))

(assert (= (or b!5735422 bm!438473) bm!438474))

(assert (= (or b!5735419 bm!438474) bm!438476))

(assert (= (or b!5735419 b!5735422) bm!438475))

(declare-fun m!6687500 () Bool)

(assert (=> bm!438475 m!6687500))

(assert (=> b!5735425 m!6686084))

(declare-fun m!6687502 () Bool)

(assert (=> bm!438476 m!6687502))

(declare-fun m!6687504 () Bool)

(assert (=> b!5735426 m!6687504))

(declare-fun m!6687506 () Bool)

(assert (=> bm!438477 m!6687506))

(assert (=> b!5734239 d!1808368))

(declare-fun bm!438485 () Bool)

(declare-fun call!438492 () Bool)

(declare-fun c!1012188 () Bool)

(assert (=> bm!438485 (= call!438492 (validRegex!7477 (ite c!1012188 (regTwo!31995 r!7292) (regTwo!31994 r!7292))))))

(declare-fun b!5735446 () Bool)

(declare-fun res!2421932 () Bool)

(declare-fun e!3525967 () Bool)

(assert (=> b!5735446 (=> (not res!2421932) (not e!3525967))))

(declare-fun call!438490 () Bool)

(assert (=> b!5735446 (= res!2421932 call!438490)))

(declare-fun e!3525965 () Bool)

(assert (=> b!5735446 (= e!3525965 e!3525967)))

(declare-fun b!5735447 () Bool)

(declare-fun e!3525966 () Bool)

(declare-fun e!3525963 () Bool)

(assert (=> b!5735447 (= e!3525966 e!3525963)))

(declare-fun res!2421930 () Bool)

(assert (=> b!5735447 (=> (not res!2421930) (not e!3525963))))

(assert (=> b!5735447 (= res!2421930 call!438490)))

(declare-fun b!5735448 () Bool)

(assert (=> b!5735448 (= e!3525967 call!438492)))

(declare-fun d!1808370 () Bool)

(declare-fun res!2421931 () Bool)

(declare-fun e!3525969 () Bool)

(assert (=> d!1808370 (=> res!2421931 e!3525969)))

(assert (=> d!1808370 (= res!2421931 ((_ is ElementMatch!15741) r!7292))))

(assert (=> d!1808370 (= (validRegex!7477 r!7292) e!3525969)))

(declare-fun bm!438486 () Bool)

(declare-fun call!438491 () Bool)

(declare-fun c!1012187 () Bool)

(assert (=> bm!438486 (= call!438491 (validRegex!7477 (ite c!1012187 (reg!16070 r!7292) (ite c!1012188 (regOne!31995 r!7292) (regOne!31994 r!7292)))))))

(declare-fun bm!438487 () Bool)

(assert (=> bm!438487 (= call!438490 call!438491)))

(declare-fun b!5735449 () Bool)

(declare-fun e!3525968 () Bool)

(assert (=> b!5735449 (= e!3525969 e!3525968)))

(assert (=> b!5735449 (= c!1012187 ((_ is Star!15741) r!7292))))

(declare-fun b!5735450 () Bool)

(assert (=> b!5735450 (= e!3525963 call!438492)))

(declare-fun b!5735451 () Bool)

(declare-fun res!2421928 () Bool)

(assert (=> b!5735451 (=> res!2421928 e!3525966)))

(assert (=> b!5735451 (= res!2421928 (not ((_ is Concat!24586) r!7292)))))

(assert (=> b!5735451 (= e!3525965 e!3525966)))

(declare-fun b!5735452 () Bool)

(declare-fun e!3525964 () Bool)

(assert (=> b!5735452 (= e!3525964 call!438491)))

(declare-fun b!5735453 () Bool)

(assert (=> b!5735453 (= e!3525968 e!3525965)))

(assert (=> b!5735453 (= c!1012188 ((_ is Union!15741) r!7292))))

(declare-fun b!5735454 () Bool)

(assert (=> b!5735454 (= e!3525968 e!3525964)))

(declare-fun res!2421929 () Bool)

(assert (=> b!5735454 (= res!2421929 (not (nullable!5773 (reg!16070 r!7292))))))

(assert (=> b!5735454 (=> (not res!2421929) (not e!3525964))))

(assert (= (and d!1808370 (not res!2421931)) b!5735449))

(assert (= (and b!5735449 c!1012187) b!5735454))

(assert (= (and b!5735449 (not c!1012187)) b!5735453))

(assert (= (and b!5735454 res!2421929) b!5735452))

(assert (= (and b!5735453 c!1012188) b!5735446))

(assert (= (and b!5735453 (not c!1012188)) b!5735451))

(assert (= (and b!5735446 res!2421932) b!5735448))

(assert (= (and b!5735451 (not res!2421928)) b!5735447))

(assert (= (and b!5735447 res!2421930) b!5735450))

(assert (= (or b!5735448 b!5735450) bm!438485))

(assert (= (or b!5735446 b!5735447) bm!438487))

(assert (= (or b!5735452 bm!438487) bm!438486))

(declare-fun m!6687508 () Bool)

(assert (=> bm!438485 m!6687508))

(declare-fun m!6687510 () Bool)

(assert (=> bm!438486 m!6687510))

(declare-fun m!6687512 () Bool)

(assert (=> b!5735454 m!6687512))

(assert (=> start!590104 d!1808370))

(declare-fun d!1808372 () Bool)

(declare-fun lt!2283041 () Regex!15741)

(assert (=> d!1808372 (validRegex!7477 lt!2283041)))

(assert (=> d!1808372 (= lt!2283041 (generalisedUnion!1604 (unfocusZipperList!1169 (Cons!63400 lt!2282746 Nil!63400))))))

(assert (=> d!1808372 (= (unfocusZipper!1483 (Cons!63400 lt!2282746 Nil!63400)) lt!2283041)))

(declare-fun bs!1340673 () Bool)

(assert (= bs!1340673 d!1808372))

(declare-fun m!6687514 () Bool)

(assert (=> bs!1340673 m!6687514))

(declare-fun m!6687516 () Bool)

(assert (=> bs!1340673 m!6687516))

(assert (=> bs!1340673 m!6687516))

(declare-fun m!6687518 () Bool)

(assert (=> bs!1340673 m!6687518))

(assert (=> b!5734219 d!1808372))

(declare-fun d!1808374 () Bool)

(declare-fun c!1012189 () Bool)

(assert (=> d!1808374 (= c!1012189 (isEmpty!35280 (t!376850 s!2326)))))

(declare-fun e!3525970 () Bool)

(assert (=> d!1808374 (= (matchZipper!1879 lt!2282763 (t!376850 s!2326)) e!3525970)))

(declare-fun b!5735455 () Bool)

(assert (=> b!5735455 (= e!3525970 (nullableZipper!1681 lt!2282763))))

(declare-fun b!5735456 () Bool)

(assert (=> b!5735456 (= e!3525970 (matchZipper!1879 (derivationStepZipper!1824 lt!2282763 (head!12142 (t!376850 s!2326))) (tail!11237 (t!376850 s!2326))))))

(assert (= (and d!1808374 c!1012189) b!5735455))

(assert (= (and d!1808374 (not c!1012189)) b!5735456))

(assert (=> d!1808374 m!6686476))

(declare-fun m!6687520 () Bool)

(assert (=> b!5735455 m!6687520))

(assert (=> b!5735456 m!6686480))

(assert (=> b!5735456 m!6686480))

(declare-fun m!6687522 () Bool)

(assert (=> b!5735456 m!6687522))

(assert (=> b!5735456 m!6686484))

(assert (=> b!5735456 m!6687522))

(assert (=> b!5735456 m!6686484))

(declare-fun m!6687524 () Bool)

(assert (=> b!5735456 m!6687524))

(assert (=> b!5734198 d!1808374))

(declare-fun d!1808376 () Bool)

(declare-fun c!1012190 () Bool)

(assert (=> d!1808376 (= c!1012190 (isEmpty!35280 s!2326))))

(declare-fun e!3525971 () Bool)

(assert (=> d!1808376 (= (matchZipper!1879 lt!2282783 s!2326) e!3525971)))

(declare-fun b!5735457 () Bool)

(assert (=> b!5735457 (= e!3525971 (nullableZipper!1681 lt!2282783))))

(declare-fun b!5735458 () Bool)

(assert (=> b!5735458 (= e!3525971 (matchZipper!1879 (derivationStepZipper!1824 lt!2282783 (head!12142 s!2326)) (tail!11237 s!2326)))))

(assert (= (and d!1808376 c!1012190) b!5735457))

(assert (= (and d!1808376 (not c!1012190)) b!5735458))

(assert (=> d!1808376 m!6686860))

(declare-fun m!6687526 () Bool)

(assert (=> b!5735457 m!6687526))

(assert (=> b!5735458 m!6686996))

(assert (=> b!5735458 m!6686996))

(declare-fun m!6687528 () Bool)

(assert (=> b!5735458 m!6687528))

(assert (=> b!5735458 m!6686998))

(assert (=> b!5735458 m!6687528))

(assert (=> b!5735458 m!6686998))

(declare-fun m!6687530 () Bool)

(assert (=> b!5735458 m!6687530))

(assert (=> b!5734198 d!1808376))

(declare-fun d!1808378 () Bool)

(assert (=> d!1808378 (= (Exists!2841 lambda!310580) (choose!43443 lambda!310580))))

(declare-fun bs!1340674 () Bool)

(assert (= bs!1340674 d!1808378))

(declare-fun m!6687532 () Bool)

(assert (=> bs!1340674 m!6687532))

(assert (=> b!5734197 d!1808378))

(declare-fun b!5735459 () Bool)

(declare-fun e!3525974 () Bool)

(declare-fun lt!2283042 () Option!15750)

(assert (=> b!5735459 (= e!3525974 (not (isDefined!12453 lt!2283042)))))

(declare-fun b!5735460 () Bool)

(declare-fun res!2421933 () Bool)

(declare-fun e!3525973 () Bool)

(assert (=> b!5735460 (=> (not res!2421933) (not e!3525973))))

(assert (=> b!5735460 (= res!2421933 (matchR!7926 (regOne!31994 r!7292) (_1!36141 (get!21867 lt!2283042))))))

(declare-fun b!5735461 () Bool)

(declare-fun e!3525976 () Bool)

(assert (=> b!5735461 (= e!3525976 (matchR!7926 (regTwo!31994 r!7292) s!2326))))

(declare-fun b!5735462 () Bool)

(assert (=> b!5735462 (= e!3525973 (= (++!13954 (_1!36141 (get!21867 lt!2283042)) (_2!36141 (get!21867 lt!2283042))) s!2326))))

(declare-fun d!1808380 () Bool)

(assert (=> d!1808380 e!3525974))

(declare-fun res!2421936 () Bool)

(assert (=> d!1808380 (=> res!2421936 e!3525974)))

(assert (=> d!1808380 (= res!2421936 e!3525973)))

(declare-fun res!2421935 () Bool)

(assert (=> d!1808380 (=> (not res!2421935) (not e!3525973))))

(assert (=> d!1808380 (= res!2421935 (isDefined!12453 lt!2283042))))

(declare-fun e!3525975 () Option!15750)

(assert (=> d!1808380 (= lt!2283042 e!3525975)))

(declare-fun c!1012192 () Bool)

(assert (=> d!1808380 (= c!1012192 e!3525976)))

(declare-fun res!2421934 () Bool)

(assert (=> d!1808380 (=> (not res!2421934) (not e!3525976))))

(assert (=> d!1808380 (= res!2421934 (matchR!7926 (regOne!31994 r!7292) Nil!63398))))

(assert (=> d!1808380 (validRegex!7477 (regOne!31994 r!7292))))

(assert (=> d!1808380 (= (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326) lt!2283042)))

(declare-fun b!5735463 () Bool)

(declare-fun lt!2283043 () Unit!156496)

(declare-fun lt!2283044 () Unit!156496)

(assert (=> b!5735463 (= lt!2283043 lt!2283044)))

(assert (=> b!5735463 (= (++!13954 (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326)) s!2326)))

(assert (=> b!5735463 (= lt!2283044 (lemmaMoveElementToOtherListKeepsConcatEq!2083 Nil!63398 (h!69846 s!2326) (t!376850 s!2326) s!2326))))

(declare-fun e!3525972 () Option!15750)

(assert (=> b!5735463 (= e!3525972 (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) (++!13954 Nil!63398 (Cons!63398 (h!69846 s!2326) Nil!63398)) (t!376850 s!2326) s!2326))))

(declare-fun b!5735464 () Bool)

(declare-fun res!2421937 () Bool)

(assert (=> b!5735464 (=> (not res!2421937) (not e!3525973))))

(assert (=> b!5735464 (= res!2421937 (matchR!7926 (regTwo!31994 r!7292) (_2!36141 (get!21867 lt!2283042))))))

(declare-fun b!5735465 () Bool)

(assert (=> b!5735465 (= e!3525975 (Some!15749 (tuple2!65677 Nil!63398 s!2326)))))

(declare-fun b!5735466 () Bool)

(assert (=> b!5735466 (= e!3525972 None!15749)))

(declare-fun b!5735467 () Bool)

(assert (=> b!5735467 (= e!3525975 e!3525972)))

(declare-fun c!1012191 () Bool)

(assert (=> b!5735467 (= c!1012191 ((_ is Nil!63398) s!2326))))

(assert (= (and d!1808380 res!2421934) b!5735461))

(assert (= (and d!1808380 c!1012192) b!5735465))

(assert (= (and d!1808380 (not c!1012192)) b!5735467))

(assert (= (and b!5735467 c!1012191) b!5735466))

(assert (= (and b!5735467 (not c!1012191)) b!5735463))

(assert (= (and d!1808380 res!2421935) b!5735460))

(assert (= (and b!5735460 res!2421933) b!5735464))

(assert (= (and b!5735464 res!2421937) b!5735462))

(assert (= (and d!1808380 (not res!2421936)) b!5735459))

(assert (=> b!5735463 m!6686626))

(assert (=> b!5735463 m!6686626))

(assert (=> b!5735463 m!6686628))

(assert (=> b!5735463 m!6686630))

(assert (=> b!5735463 m!6686626))

(declare-fun m!6687534 () Bool)

(assert (=> b!5735463 m!6687534))

(declare-fun m!6687536 () Bool)

(assert (=> b!5735464 m!6687536))

(declare-fun m!6687538 () Bool)

(assert (=> b!5735464 m!6687538))

(assert (=> b!5735461 m!6686638))

(declare-fun m!6687540 () Bool)

(assert (=> b!5735459 m!6687540))

(assert (=> b!5735462 m!6687536))

(declare-fun m!6687542 () Bool)

(assert (=> b!5735462 m!6687542))

(assert (=> d!1808380 m!6687540))

(declare-fun m!6687544 () Bool)

(assert (=> d!1808380 m!6687544))

(declare-fun m!6687546 () Bool)

(assert (=> d!1808380 m!6687546))

(assert (=> b!5735460 m!6687536))

(declare-fun m!6687548 () Bool)

(assert (=> b!5735460 m!6687548))

(assert (=> b!5734197 d!1808380))

(declare-fun d!1808382 () Bool)

(assert (=> d!1808382 (= (Exists!2841 lambda!310581) (choose!43443 lambda!310581))))

(declare-fun bs!1340675 () Bool)

(assert (= bs!1340675 d!1808382))

(declare-fun m!6687550 () Bool)

(assert (=> bs!1340675 m!6687550))

(assert (=> b!5734197 d!1808382))

(declare-fun bs!1340676 () Bool)

(declare-fun d!1808384 () Bool)

(assert (= bs!1340676 (and d!1808384 d!1808286)))

(declare-fun lambda!310700 () Int)

(assert (=> bs!1340676 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) (Star!15741 (reg!16070 (regOne!31994 r!7292))))) (= lambda!310700 lambda!310675))))

(declare-fun bs!1340677 () Bool)

(assert (= bs!1340677 (and d!1808384 d!1808284)))

(assert (=> bs!1340677 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310700 lambda!310665))))

(declare-fun bs!1340678 () Bool)

(assert (= bs!1340678 (and d!1808384 b!5734841)))

(assert (=> bs!1340678 (not (= lambda!310700 lambda!310644))))

(declare-fun bs!1340679 () Bool)

(assert (= bs!1340679 (and d!1808384 d!1808272)))

(assert (=> bs!1340679 (not (= lambda!310700 lambda!310664))))

(declare-fun bs!1340680 () Bool)

(assert (= bs!1340680 (and d!1808384 b!5734838)))

(assert (=> bs!1340680 (not (= lambda!310700 lambda!310647))))

(declare-fun bs!1340681 () Bool)

(assert (= bs!1340681 (and d!1808384 b!5734230)))

(assert (=> bs!1340681 (not (= lambda!310700 lambda!310588))))

(declare-fun bs!1340682 () Bool)

(assert (= bs!1340682 (and d!1808384 d!1808088)))

(assert (=> bs!1340682 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310700 lambda!310628))))

(declare-fun bs!1340683 () Bool)

(assert (= bs!1340683 (and d!1808384 b!5734197)))

(assert (=> bs!1340683 (= lambda!310700 lambda!310580)))

(declare-fun bs!1340684 () Bool)

(assert (= bs!1340684 (and d!1808384 d!1808166)))

(assert (=> bs!1340684 (not (= lambda!310700 lambda!310657))))

(declare-fun bs!1340685 () Bool)

(assert (= bs!1340685 (and d!1808384 b!5735327)))

(assert (=> bs!1340685 (not (= lambda!310700 lambda!310691))))

(declare-fun bs!1340686 () Bool)

(assert (= bs!1340686 (and d!1808384 b!5734236)))

(assert (=> bs!1340686 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310700 lambda!310585))))

(declare-fun bs!1340687 () Bool)

(assert (= bs!1340687 (and d!1808384 b!5735291)))

(assert (=> bs!1340687 (not (= lambda!310700 lambda!310685))))

(declare-fun bs!1340688 () Bool)

(assert (= bs!1340688 (and d!1808384 b!5735222)))

(assert (=> bs!1340688 (not (= lambda!310700 lambda!310678))))

(assert (=> bs!1340684 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310700 lambda!310656))))

(assert (=> bs!1340681 (not (= lambda!310700 lambda!310589))))

(assert (=> bs!1340681 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310700 lambda!310587))))

(assert (=> bs!1340679 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310700 lambda!310663))))

(declare-fun bs!1340689 () Bool)

(assert (= bs!1340689 (and d!1808384 b!5735225)))

(assert (=> bs!1340689 (not (= lambda!310700 lambda!310677))))

(assert (=> bs!1340676 (not (= lambda!310700 lambda!310676))))

(assert (=> bs!1340686 (not (= lambda!310700 lambda!310586))))

(declare-fun bs!1340690 () Bool)

(assert (= bs!1340690 (and d!1808384 b!5735288)))

(assert (=> bs!1340690 (not (= lambda!310700 lambda!310686))))

(declare-fun bs!1340691 () Bool)

(assert (= bs!1340691 (and d!1808384 b!5735330)))

(assert (=> bs!1340691 (not (= lambda!310700 lambda!310690))))

(assert (=> bs!1340683 (not (= lambda!310700 lambda!310581))))

(assert (=> d!1808384 true))

(assert (=> d!1808384 true))

(assert (=> d!1808384 true))

(assert (=> d!1808384 (= (isDefined!12453 (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326)) (Exists!2841 lambda!310700))))

(declare-fun lt!2283045 () Unit!156496)

(assert (=> d!1808384 (= lt!2283045 (choose!43441 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326))))

(assert (=> d!1808384 (validRegex!7477 (regOne!31994 r!7292))))

(assert (=> d!1808384 (= (lemmaFindConcatSeparationEquivalentToExists!1928 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326) lt!2283045)))

(declare-fun bs!1340692 () Bool)

(assert (= bs!1340692 d!1808384))

(assert (=> bs!1340692 m!6686156))

(assert (=> bs!1340692 m!6686158))

(declare-fun m!6687552 () Bool)

(assert (=> bs!1340692 m!6687552))

(assert (=> bs!1340692 m!6686156))

(declare-fun m!6687554 () Bool)

(assert (=> bs!1340692 m!6687554))

(assert (=> bs!1340692 m!6687546))

(assert (=> b!5734197 d!1808384))

(declare-fun bs!1340693 () Bool)

(declare-fun d!1808386 () Bool)

(assert (= bs!1340693 (and d!1808386 d!1808286)))

(declare-fun lambda!310701 () Int)

(assert (=> bs!1340693 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) (Star!15741 (reg!16070 (regOne!31994 r!7292))))) (= lambda!310701 lambda!310675))))

(declare-fun bs!1340694 () Bool)

(assert (= bs!1340694 (and d!1808386 d!1808284)))

(assert (=> bs!1340694 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310701 lambda!310665))))

(declare-fun bs!1340695 () Bool)

(assert (= bs!1340695 (and d!1808386 b!5734841)))

(assert (=> bs!1340695 (not (= lambda!310701 lambda!310644))))

(declare-fun bs!1340696 () Bool)

(assert (= bs!1340696 (and d!1808386 d!1808272)))

(assert (=> bs!1340696 (not (= lambda!310701 lambda!310664))))

(declare-fun bs!1340697 () Bool)

(assert (= bs!1340697 (and d!1808386 b!5734838)))

(assert (=> bs!1340697 (not (= lambda!310701 lambda!310647))))

(declare-fun bs!1340698 () Bool)

(assert (= bs!1340698 (and d!1808386 b!5734230)))

(assert (=> bs!1340698 (not (= lambda!310701 lambda!310588))))

(declare-fun bs!1340699 () Bool)

(assert (= bs!1340699 (and d!1808386 d!1808088)))

(assert (=> bs!1340699 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310701 lambda!310628))))

(declare-fun bs!1340700 () Bool)

(assert (= bs!1340700 (and d!1808386 d!1808166)))

(assert (=> bs!1340700 (not (= lambda!310701 lambda!310657))))

(declare-fun bs!1340701 () Bool)

(assert (= bs!1340701 (and d!1808386 b!5735327)))

(assert (=> bs!1340701 (not (= lambda!310701 lambda!310691))))

(declare-fun bs!1340702 () Bool)

(assert (= bs!1340702 (and d!1808386 b!5734236)))

(assert (=> bs!1340702 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310701 lambda!310585))))

(declare-fun bs!1340703 () Bool)

(assert (= bs!1340703 (and d!1808386 b!5735291)))

(assert (=> bs!1340703 (not (= lambda!310701 lambda!310685))))

(declare-fun bs!1340704 () Bool)

(assert (= bs!1340704 (and d!1808386 b!5735222)))

(assert (=> bs!1340704 (not (= lambda!310701 lambda!310678))))

(assert (=> bs!1340700 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310701 lambda!310656))))

(assert (=> bs!1340698 (not (= lambda!310701 lambda!310589))))

(assert (=> bs!1340698 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310701 lambda!310587))))

(assert (=> bs!1340696 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310701 lambda!310663))))

(declare-fun bs!1340705 () Bool)

(assert (= bs!1340705 (and d!1808386 b!5735225)))

(assert (=> bs!1340705 (not (= lambda!310701 lambda!310677))))

(assert (=> bs!1340693 (not (= lambda!310701 lambda!310676))))

(assert (=> bs!1340702 (not (= lambda!310701 lambda!310586))))

(declare-fun bs!1340706 () Bool)

(assert (= bs!1340706 (and d!1808386 b!5735288)))

(assert (=> bs!1340706 (not (= lambda!310701 lambda!310686))))

(declare-fun bs!1340707 () Bool)

(assert (= bs!1340707 (and d!1808386 b!5735330)))

(assert (=> bs!1340707 (not (= lambda!310701 lambda!310690))))

(declare-fun bs!1340708 () Bool)

(assert (= bs!1340708 (and d!1808386 b!5734197)))

(assert (=> bs!1340708 (not (= lambda!310701 lambda!310581))))

(declare-fun bs!1340709 () Bool)

(assert (= bs!1340709 (and d!1808386 d!1808384)))

(assert (=> bs!1340709 (= lambda!310701 lambda!310700)))

(assert (=> bs!1340708 (= lambda!310701 lambda!310580)))

(assert (=> d!1808386 true))

(assert (=> d!1808386 true))

(assert (=> d!1808386 true))

(declare-fun lambda!310702 () Int)

(assert (=> bs!1340693 (not (= lambda!310702 lambda!310675))))

(assert (=> bs!1340694 (not (= lambda!310702 lambda!310665))))

(assert (=> bs!1340695 (not (= lambda!310702 lambda!310644))))

(assert (=> bs!1340696 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310702 lambda!310664))))

(assert (=> bs!1340698 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (reg!16070 (regOne!31994 r!7292))) (= (regTwo!31994 r!7292) lt!2282770)) (= lambda!310702 lambda!310588))))

(assert (=> bs!1340699 (not (= lambda!310702 lambda!310628))))

(assert (=> bs!1340700 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310702 lambda!310657))))

(assert (=> bs!1340701 (= (and (= (regOne!31994 r!7292) (regOne!31994 lt!2282750)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282750))) (= lambda!310702 lambda!310691))))

(assert (=> bs!1340702 (not (= lambda!310702 lambda!310585))))

(assert (=> bs!1340703 (not (= lambda!310702 lambda!310685))))

(assert (=> bs!1340704 (= (and (= s!2326 (_1!36141 lt!2282777)) (= (regOne!31994 r!7292) (regOne!31994 lt!2282787)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282787))) (= lambda!310702 lambda!310678))))

(assert (=> bs!1340700 (not (= lambda!310702 lambda!310656))))

(assert (=> bs!1340698 (not (= lambda!310702 lambda!310589))))

(assert (=> bs!1340698 (not (= lambda!310702 lambda!310587))))

(assert (=> bs!1340696 (not (= lambda!310702 lambda!310663))))

(assert (=> bs!1340705 (not (= lambda!310702 lambda!310677))))

(assert (=> bs!1340693 (not (= lambda!310702 lambda!310676))))

(assert (=> bs!1340702 (= (= (regOne!31994 r!7292) lt!2282787) (= lambda!310702 lambda!310586))))

(declare-fun bs!1340710 () Bool)

(assert (= bs!1340710 d!1808386))

(assert (=> bs!1340710 (not (= lambda!310702 lambda!310701))))

(assert (=> bs!1340697 (= (and (= (regOne!31994 r!7292) (regOne!31994 lt!2282759)) (= (regTwo!31994 r!7292) (regTwo!31994 lt!2282759))) (= lambda!310702 lambda!310647))))

(assert (=> bs!1340706 (= lambda!310702 lambda!310686)))

(assert (=> bs!1340707 (not (= lambda!310702 lambda!310690))))

(assert (=> bs!1340708 (= lambda!310702 lambda!310581)))

(assert (=> bs!1340709 (not (= lambda!310702 lambda!310700))))

(assert (=> bs!1340708 (not (= lambda!310702 lambda!310580))))

(assert (=> d!1808386 true))

(assert (=> d!1808386 true))

(assert (=> d!1808386 true))

(assert (=> d!1808386 (= (Exists!2841 lambda!310701) (Exists!2841 lambda!310702))))

(declare-fun lt!2283046 () Unit!156496)

(assert (=> d!1808386 (= lt!2283046 (choose!43448 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326))))

(assert (=> d!1808386 (validRegex!7477 (regOne!31994 r!7292))))

(assert (=> d!1808386 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1470 (regOne!31994 r!7292) (regTwo!31994 r!7292) s!2326) lt!2283046)))

(declare-fun m!6687556 () Bool)

(assert (=> bs!1340710 m!6687556))

(declare-fun m!6687558 () Bool)

(assert (=> bs!1340710 m!6687558))

(declare-fun m!6687560 () Bool)

(assert (=> bs!1340710 m!6687560))

(assert (=> bs!1340710 m!6687546))

(assert (=> b!5734197 d!1808386))

(declare-fun d!1808388 () Bool)

(assert (=> d!1808388 (= (isDefined!12453 (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326)) (not (isEmpty!35281 (findConcatSeparation!2164 (regOne!31994 r!7292) (regTwo!31994 r!7292) Nil!63398 s!2326 s!2326))))))

(declare-fun bs!1340711 () Bool)

(assert (= bs!1340711 d!1808388))

(assert (=> bs!1340711 m!6686156))

(declare-fun m!6687562 () Bool)

(assert (=> bs!1340711 m!6687562))

(assert (=> b!5734197 d!1808388))

(declare-fun d!1808390 () Bool)

(declare-fun c!1012193 () Bool)

(assert (=> d!1808390 (= c!1012193 (isEmpty!35280 (_2!36141 lt!2282753)))))

(declare-fun e!3525977 () Bool)

(assert (=> d!1808390 (= (matchZipper!1879 lt!2282747 (_2!36141 lt!2282753)) e!3525977)))

(declare-fun b!5735468 () Bool)

(assert (=> b!5735468 (= e!3525977 (nullableZipper!1681 lt!2282747))))

(declare-fun b!5735469 () Bool)

(assert (=> b!5735469 (= e!3525977 (matchZipper!1879 (derivationStepZipper!1824 lt!2282747 (head!12142 (_2!36141 lt!2282753))) (tail!11237 (_2!36141 lt!2282753))))))

(assert (= (and d!1808390 c!1012193) b!5735468))

(assert (= (and d!1808390 (not c!1012193)) b!5735469))

(assert (=> d!1808390 m!6687040))

(declare-fun m!6687564 () Bool)

(assert (=> b!5735468 m!6687564))

(assert (=> b!5735469 m!6687038))

(assert (=> b!5735469 m!6687038))

(declare-fun m!6687566 () Bool)

(assert (=> b!5735469 m!6687566))

(assert (=> b!5735469 m!6687042))

(assert (=> b!5735469 m!6687566))

(assert (=> b!5735469 m!6687042))

(declare-fun m!6687568 () Bool)

(assert (=> b!5735469 m!6687568))

(assert (=> b!5734238 d!1808390))

(declare-fun bs!1340712 () Bool)

(declare-fun d!1808392 () Bool)

(assert (= bs!1340712 (and d!1808392 d!1808324)))

(declare-fun lambda!310703 () Int)

(assert (=> bs!1340712 (= lambda!310703 lambda!310684)))

(declare-fun bs!1340713 () Bool)

(assert (= bs!1340713 (and d!1808392 d!1808322)))

(assert (=> bs!1340713 (= lambda!310703 lambda!310681)))

(declare-fun bs!1340714 () Bool)

(assert (= bs!1340714 (and d!1808392 b!5734240)))

(assert (=> bs!1340714 (= lambda!310703 lambda!310584)))

(declare-fun bs!1340715 () Bool)

(assert (= bs!1340715 (and d!1808392 d!1808332)))

(assert (=> bs!1340715 (= lambda!310703 lambda!310689)))

(declare-fun bs!1340716 () Bool)

(assert (= bs!1340716 (and d!1808392 d!1808342)))

(assert (=> bs!1340716 (= lambda!310703 lambda!310694)))

(declare-fun bs!1340717 () Bool)

(assert (= bs!1340717 (and d!1808392 d!1808130)))

(assert (=> bs!1340717 (= lambda!310703 lambda!310635)))

(assert (=> d!1808392 (= (inv!82599 setElem!38479) (forall!14866 (exprs!5625 setElem!38479) lambda!310703))))

(declare-fun bs!1340718 () Bool)

(assert (= bs!1340718 d!1808392))

(declare-fun m!6687570 () Bool)

(assert (=> bs!1340718 m!6687570))

(assert (=> setNonEmpty!38479 d!1808392))

(declare-fun d!1808394 () Bool)

(declare-fun lt!2283047 () Regex!15741)

(assert (=> d!1808394 (validRegex!7477 lt!2283047)))

(assert (=> d!1808394 (= lt!2283047 (generalisedUnion!1604 (unfocusZipperList!1169 lt!2282800)))))

(assert (=> d!1808394 (= (unfocusZipper!1483 lt!2282800) lt!2283047)))

(declare-fun bs!1340719 () Bool)

(assert (= bs!1340719 d!1808394))

(declare-fun m!6687572 () Bool)

(assert (=> bs!1340719 m!6687572))

(declare-fun m!6687574 () Bool)

(assert (=> bs!1340719 m!6687574))

(assert (=> bs!1340719 m!6687574))

(declare-fun m!6687576 () Bool)

(assert (=> bs!1340719 m!6687576))

(assert (=> b!5734217 d!1808394))

(declare-fun b!5735474 () Bool)

(declare-fun e!3525980 () Bool)

(declare-fun tp!1586701 () Bool)

(declare-fun tp!1586702 () Bool)

(assert (=> b!5735474 (= e!3525980 (and tp!1586701 tp!1586702))))

(assert (=> b!5734216 (= tp!1586634 e!3525980)))

(assert (= (and b!5734216 ((_ is Cons!63399) (exprs!5625 (h!69848 zl!343)))) b!5735474))

(declare-fun b!5735487 () Bool)

(declare-fun e!3525983 () Bool)

(declare-fun tp!1586716 () Bool)

(assert (=> b!5735487 (= e!3525983 tp!1586716)))

(declare-fun b!5735485 () Bool)

(assert (=> b!5735485 (= e!3525983 tp_is_empty!40735)))

(declare-fun b!5735488 () Bool)

(declare-fun tp!1586715 () Bool)

(declare-fun tp!1586713 () Bool)

(assert (=> b!5735488 (= e!3525983 (and tp!1586715 tp!1586713))))

(assert (=> b!5734221 (= tp!1586629 e!3525983)))

(declare-fun b!5735486 () Bool)

(declare-fun tp!1586717 () Bool)

(declare-fun tp!1586714 () Bool)

(assert (=> b!5735486 (= e!3525983 (and tp!1586717 tp!1586714))))

(assert (= (and b!5734221 ((_ is ElementMatch!15741) (reg!16070 r!7292))) b!5735485))

(assert (= (and b!5734221 ((_ is Concat!24586) (reg!16070 r!7292))) b!5735486))

(assert (= (and b!5734221 ((_ is Star!15741) (reg!16070 r!7292))) b!5735487))

(assert (= (and b!5734221 ((_ is Union!15741) (reg!16070 r!7292))) b!5735488))

(declare-fun b!5735496 () Bool)

(declare-fun e!3525989 () Bool)

(declare-fun tp!1586722 () Bool)

(assert (=> b!5735496 (= e!3525989 tp!1586722)))

(declare-fun tp!1586723 () Bool)

(declare-fun e!3525988 () Bool)

(declare-fun b!5735495 () Bool)

(assert (=> b!5735495 (= e!3525988 (and (inv!82599 (h!69848 (t!376852 zl!343))) e!3525989 tp!1586723))))

(assert (=> b!5734205 (= tp!1586637 e!3525988)))

(assert (= b!5735495 b!5735496))

(assert (= (and b!5734205 ((_ is Cons!63400) (t!376852 zl!343))) b!5735495))

(declare-fun m!6687578 () Bool)

(assert (=> b!5735495 m!6687578))

(declare-fun b!5735499 () Bool)

(declare-fun e!3525990 () Bool)

(declare-fun tp!1586727 () Bool)

(assert (=> b!5735499 (= e!3525990 tp!1586727)))

(declare-fun b!5735497 () Bool)

(assert (=> b!5735497 (= e!3525990 tp_is_empty!40735)))

(declare-fun b!5735500 () Bool)

(declare-fun tp!1586726 () Bool)

(declare-fun tp!1586724 () Bool)

(assert (=> b!5735500 (= e!3525990 (and tp!1586726 tp!1586724))))

(assert (=> b!5734214 (= tp!1586631 e!3525990)))

(declare-fun b!5735498 () Bool)

(declare-fun tp!1586728 () Bool)

(declare-fun tp!1586725 () Bool)

(assert (=> b!5735498 (= e!3525990 (and tp!1586728 tp!1586725))))

(assert (= (and b!5734214 ((_ is ElementMatch!15741) (regOne!31994 r!7292))) b!5735497))

(assert (= (and b!5734214 ((_ is Concat!24586) (regOne!31994 r!7292))) b!5735498))

(assert (= (and b!5734214 ((_ is Star!15741) (regOne!31994 r!7292))) b!5735499))

(assert (= (and b!5734214 ((_ is Union!15741) (regOne!31994 r!7292))) b!5735500))

(declare-fun b!5735503 () Bool)

(declare-fun e!3525991 () Bool)

(declare-fun tp!1586732 () Bool)

(assert (=> b!5735503 (= e!3525991 tp!1586732)))

(declare-fun b!5735501 () Bool)

(assert (=> b!5735501 (= e!3525991 tp_is_empty!40735)))

(declare-fun b!5735504 () Bool)

(declare-fun tp!1586731 () Bool)

(declare-fun tp!1586729 () Bool)

(assert (=> b!5735504 (= e!3525991 (and tp!1586731 tp!1586729))))

(assert (=> b!5734214 (= tp!1586630 e!3525991)))

(declare-fun b!5735502 () Bool)

(declare-fun tp!1586733 () Bool)

(declare-fun tp!1586730 () Bool)

(assert (=> b!5735502 (= e!3525991 (and tp!1586733 tp!1586730))))

(assert (= (and b!5734214 ((_ is ElementMatch!15741) (regTwo!31994 r!7292))) b!5735501))

(assert (= (and b!5734214 ((_ is Concat!24586) (regTwo!31994 r!7292))) b!5735502))

(assert (= (and b!5734214 ((_ is Star!15741) (regTwo!31994 r!7292))) b!5735503))

(assert (= (and b!5734214 ((_ is Union!15741) (regTwo!31994 r!7292))) b!5735504))

(declare-fun b!5735507 () Bool)

(declare-fun e!3525992 () Bool)

(declare-fun tp!1586737 () Bool)

(assert (=> b!5735507 (= e!3525992 tp!1586737)))

(declare-fun b!5735505 () Bool)

(assert (=> b!5735505 (= e!3525992 tp_is_empty!40735)))

(declare-fun b!5735508 () Bool)

(declare-fun tp!1586736 () Bool)

(declare-fun tp!1586734 () Bool)

(assert (=> b!5735508 (= e!3525992 (and tp!1586736 tp!1586734))))

(assert (=> b!5734208 (= tp!1586633 e!3525992)))

(declare-fun b!5735506 () Bool)

(declare-fun tp!1586738 () Bool)

(declare-fun tp!1586735 () Bool)

(assert (=> b!5735506 (= e!3525992 (and tp!1586738 tp!1586735))))

(assert (= (and b!5734208 ((_ is ElementMatch!15741) (regOne!31995 r!7292))) b!5735505))

(assert (= (and b!5734208 ((_ is Concat!24586) (regOne!31995 r!7292))) b!5735506))

(assert (= (and b!5734208 ((_ is Star!15741) (regOne!31995 r!7292))) b!5735507))

(assert (= (and b!5734208 ((_ is Union!15741) (regOne!31995 r!7292))) b!5735508))

(declare-fun b!5735511 () Bool)

(declare-fun e!3525993 () Bool)

(declare-fun tp!1586742 () Bool)

(assert (=> b!5735511 (= e!3525993 tp!1586742)))

(declare-fun b!5735509 () Bool)

(assert (=> b!5735509 (= e!3525993 tp_is_empty!40735)))

(declare-fun b!5735512 () Bool)

(declare-fun tp!1586741 () Bool)

(declare-fun tp!1586739 () Bool)

(assert (=> b!5735512 (= e!3525993 (and tp!1586741 tp!1586739))))

(assert (=> b!5734208 (= tp!1586635 e!3525993)))

(declare-fun b!5735510 () Bool)

(declare-fun tp!1586743 () Bool)

(declare-fun tp!1586740 () Bool)

(assert (=> b!5735510 (= e!3525993 (and tp!1586743 tp!1586740))))

(assert (= (and b!5734208 ((_ is ElementMatch!15741) (regTwo!31995 r!7292))) b!5735509))

(assert (= (and b!5734208 ((_ is Concat!24586) (regTwo!31995 r!7292))) b!5735510))

(assert (= (and b!5734208 ((_ is Star!15741) (regTwo!31995 r!7292))) b!5735511))

(assert (= (and b!5734208 ((_ is Union!15741) (regTwo!31995 r!7292))) b!5735512))

(declare-fun b!5735513 () Bool)

(declare-fun e!3525994 () Bool)

(declare-fun tp!1586744 () Bool)

(declare-fun tp!1586745 () Bool)

(assert (=> b!5735513 (= e!3525994 (and tp!1586744 tp!1586745))))

(assert (=> b!5734223 (= tp!1586636 e!3525994)))

(assert (= (and b!5734223 ((_ is Cons!63399) (exprs!5625 setElem!38479))) b!5735513))

(declare-fun b!5735518 () Bool)

(declare-fun e!3525997 () Bool)

(declare-fun tp!1586748 () Bool)

(assert (=> b!5735518 (= e!3525997 (and tp_is_empty!40735 tp!1586748))))

(assert (=> b!5734222 (= tp!1586632 e!3525997)))

(assert (= (and b!5734222 ((_ is Cons!63398) (t!376850 s!2326))) b!5735518))

(declare-fun condSetEmpty!38485 () Bool)

(assert (=> setNonEmpty!38479 (= condSetEmpty!38485 (= setRest!38479 ((as const (Array Context!10250 Bool)) false)))))

(declare-fun setRes!38485 () Bool)

(assert (=> setNonEmpty!38479 (= tp!1586638 setRes!38485)))

(declare-fun setIsEmpty!38485 () Bool)

(assert (=> setIsEmpty!38485 setRes!38485))

(declare-fun setNonEmpty!38485 () Bool)

(declare-fun setElem!38485 () Context!10250)

(declare-fun e!3526000 () Bool)

(declare-fun tp!1586753 () Bool)

(assert (=> setNonEmpty!38485 (= setRes!38485 (and tp!1586753 (inv!82599 setElem!38485) e!3526000))))

(declare-fun setRest!38485 () (InoxSet Context!10250))

(assert (=> setNonEmpty!38485 (= setRest!38479 ((_ map or) (store ((as const (Array Context!10250 Bool)) false) setElem!38485 true) setRest!38485))))

(declare-fun b!5735523 () Bool)

(declare-fun tp!1586754 () Bool)

(assert (=> b!5735523 (= e!3526000 tp!1586754)))

(assert (= (and setNonEmpty!38479 condSetEmpty!38485) setIsEmpty!38485))

(assert (= (and setNonEmpty!38479 (not condSetEmpty!38485)) setNonEmpty!38485))

(assert (= setNonEmpty!38485 b!5735523))

(declare-fun m!6687580 () Bool)

(assert (=> setNonEmpty!38485 m!6687580))

(declare-fun b_lambda!216637 () Bool)

(assert (= b_lambda!216619 (or b!5734211 b_lambda!216637)))

(declare-fun bs!1340720 () Bool)

(declare-fun d!1808396 () Bool)

(assert (= bs!1340720 (and d!1808396 b!5734211)))

(assert (=> bs!1340720 (= (dynLambda!24810 lambda!310582 lt!2282749) (derivationStepZipperUp!1009 lt!2282749 (h!69846 s!2326)))))

(assert (=> bs!1340720 m!6686088))

(assert (=> d!1808216 d!1808396))

(declare-fun b_lambda!216639 () Bool)

(assert (= b_lambda!216615 (or b!5734211 b_lambda!216639)))

(declare-fun bs!1340721 () Bool)

(declare-fun d!1808398 () Bool)

(assert (= bs!1340721 (and d!1808398 b!5734211)))

(assert (=> bs!1340721 (= (dynLambda!24810 lambda!310582 lt!2282746) (derivationStepZipperUp!1009 lt!2282746 (h!69846 s!2326)))))

(assert (=> bs!1340721 m!6686276))

(assert (=> d!1808060 d!1808398))

(declare-fun b_lambda!216641 () Bool)

(assert (= b_lambda!216635 (or b!5734240 b_lambda!216641)))

(declare-fun bs!1340722 () Bool)

(declare-fun d!1808400 () Bool)

(assert (= bs!1340722 (and d!1808400 b!5734240)))

(declare-fun lt!2283048 () Unit!156496)

(assert (=> bs!1340722 (= lt!2283048 (lemmaConcatPreservesForall!310 (exprs!5625 lt!2282776) lt!2282773 lambda!310584))))

(assert (=> bs!1340722 (= (dynLambda!24812 lambda!310583 lt!2282776) (Context!10251 (++!13955 (exprs!5625 lt!2282776) lt!2282773)))))

(declare-fun m!6687582 () Bool)

(assert (=> bs!1340722 m!6687582))

(declare-fun m!6687584 () Bool)

(assert (=> bs!1340722 m!6687584))

(assert (=> d!1808364 d!1808400))

(declare-fun b_lambda!216643 () Bool)

(assert (= b_lambda!216617 (or b!5734211 b_lambda!216643)))

(declare-fun bs!1340723 () Bool)

(declare-fun d!1808402 () Bool)

(assert (= bs!1340723 (and d!1808402 b!5734211)))

(assert (=> bs!1340723 (= (dynLambda!24810 lambda!310582 lt!2282776) (derivationStepZipperUp!1009 lt!2282776 (h!69846 s!2326)))))

(assert (=> bs!1340723 m!6686082))

(assert (=> d!1808212 d!1808402))

(declare-fun b_lambda!216645 () Bool)

(assert (= b_lambda!216621 (or b!5734211 b_lambda!216645)))

(declare-fun bs!1340724 () Bool)

(declare-fun d!1808404 () Bool)

(assert (= bs!1340724 (and d!1808404 b!5734211)))

(assert (=> bs!1340724 (= (dynLambda!24810 lambda!310582 (h!69848 zl!343)) (derivationStepZipperUp!1009 (h!69848 zl!343) (h!69846 s!2326)))))

(assert (=> bs!1340724 m!6686110))

(assert (=> d!1808242 d!1808404))

(check-sat (not b!5735226) (not b!5734638) (not b!5735272) (not b!5735372) (not b!5735507) (not d!1808066) (not b!5735117) (not d!1808064) (not d!1808200) (not bm!438467) (not d!1808366) (not bm!438465) (not d!1808360) (not b!5735234) (not b!5735119) (not d!1808322) (not b!5735456) (not b!5735408) (not d!1808234) (not b!5735016) (not d!1808392) (not b!5734956) (not b!5734932) (not d!1808352) (not d!1808272) (not b!5735317) tp_is_empty!40735 (not b!5735508) (not b!5734634) (not b!5735342) (not bm!438477) (not b!5735229) (not b!5735273) (not b!5735380) (not b!5735469) (not b!5735513) (not b!5735304) (not b!5735383) (not bm!438485) (not b!5735512) (not d!1808044) (not bm!438466) (not b!5735523) (not d!1808382) (not b!5735462) (not d!1808312) (not b!5734637) (not d!1808350) (not d!1808378) (not b!5735102) (not d!1808318) (not bm!438486) (not b!5734499) (not b!5735496) (not b!5735499) (not b!5734930) (not b!5735511) (not b!5735241) (not bm!438450) (not b!5735464) (not b!5735487) (not b!5735343) (not b!5735315) (not b!5735306) (not b!5734970) (not b!5735367) (not d!1808316) (not b!5735001) (not d!1808130) (not b!5735454) (not d!1808376) (not bm!438449) (not b!5734525) (not bm!438471) (not d!1808202) (not bm!438451) (not d!1808112) (not b!5735299) (not bm!438427) (not bm!438430) (not b!5734920) (not b!5734965) (not b!5734972) (not bm!438414) (not b!5735003) (not b!5734763) (not d!1808060) (not b!5734927) (not b!5735373) (not b_lambda!216645) (not b!5734856) (not d!1808216) (not d!1808342) (not b!5734942) (not b!5735245) (not bm!438398) (not b!5735231) (not b!5735345) (not b!5735030) (not b!5735228) (not b!5735375) (not b!5735407) (not b!5734758) (not d!1808346) (not d!1808218) (not b!5734929) (not b!5735318) (not d!1808390) (not b!5735504) (not b!5735503) (not b!5735280) (not d!1808068) (not d!1808198) (not b!5735313) (not b!5735235) (not d!1808334) (not d!1808222) (not b!5735379) (not b!5735406) (not d!1808204) (not b!5734955) (not b!5735333) (not d!1808206) (not d!1808354) (not b!5735461) (not d!1808262) (not b!5734973) (not bm!438470) (not d!1808088) (not b!5734868) (not b!5735244) (not d!1808386) (not b!5735268) (not b!5735121) (not b!5734958) (not b!5735502) (not b!5735242) (not d!1808070) (not d!1808306) (not b!5734969) (not d!1808208) (not d!1808158) (not b!5734853) (not b!5734998) (not b!5735232) (not d!1808280) (not bm!438468) (not d!1808286) (not bm!438476) (not b!5735463) (not b!5734861) (not d!1808260) (not b!5735320) (not b!5734993) (not b!5735124) (not bm!438429) (not b!5735378) (not d!1808356) (not b!5735004) (not b!5734943) (not d!1808384) (not b!5734925) (not d!1808128) (not b!5735488) (not b!5734636) (not d!1808038) (not d!1808228) (not d!1808308) (not b!5735457) (not b!5735474) (not b!5735374) (not d!1808348) (not b!5735410) (not bm!438469) (not d!1808242) (not b!5735267) (not b!5734863) (not d!1808226) (not b!5734633) (not d!1808166) (not b!5735331) (not b!5734996) (not bm!438432) (not d!1808324) (not b!5735468) (not b!5734842) (not b!5734960) (not b!5735283) (not bm!438422) (not b!5735301) (not b!5735269) (not b!5735112) (not b!5735308) (not bm!438475) (not b!5734833) (not b!5734528) (not b!5735021) (not b!5734753) (not b!5735426) (not b!5735486) (not b!5734760) (not d!1808314) (not b_lambda!216641) (not d!1808212) (not b!5735005) (not b!5734953) (not b!5735498) (not b!5735033) (not b!5734918) (not d!1808278) (not bs!1340722) (not d!1808340) (not bs!1340720) (not bs!1340724) (not b_lambda!216639) (not b!5734762) (not d!1808362) (not b!5735266) (not b!5734967) (not d!1808380) (not b!5735147) (not b!5735518) (not d!1808258) (not b!5735294) (not setNonEmpty!38485) (not d!1808388) (not d!1808284) (not b!5735455) (not d!1808338) (not b!5735385) (not b!5735019) (not bs!1340723) (not b!5735459) (not b!5734865) (not b!5735506) (not b!5735500) (not d!1808344) (not b!5734765) (not d!1808328) (not d!1808188) (not b!5735217) (not b!5735077) (not b!5735340) (not bm!438454) (not bm!438431) (not bm!438472) (not d!1808214) (not d!1808236) (not b!5734866) (not bm!438464) (not d!1808332) (not b!5734854) (not b!5734946) (not b!5735274) (not b!5735409) (not b!5734974) (not d!1808196) (not d!1808156) (not b!5735386) (not d!1808270) (not b!5735338) (not b!5735303) (not bm!438420) (not bm!438426) (not d!1808106) (not b!5735322) (not b_lambda!216643) (not b!5735495) (not d!1808394) (not d!1808320) (not b!5734635) (not d!1808364) (not b!5735292) (not b!5735122) (not bm!438421) (not d!1808310) (not b_lambda!216637) (not b!5735148) (not b!5734498) (not d!1808372) (not bm!438428) (not b!5735369) (not b!5735510) (not b!5735233) (not b!5734951) (not bm!438425) (not b!5735024) (not b!5735366) (not b!5735413) (not bs!1340721) (not d!1808330) (not d!1808184) (not b!5735460) (not b!5735236) (not b!5735103) (not b!5735006) (not d!1808374) (not b!5735458))
(check-sat)
