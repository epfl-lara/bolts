; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!579136 () Bool)

(assert start!579136)

(declare-fun b!5574925 () Bool)

(assert (=> b!5574925 true))

(assert (=> b!5574925 true))

(declare-fun lambda!298800 () Int)

(declare-fun lambda!298799 () Int)

(assert (=> b!5574925 (not (= lambda!298800 lambda!298799))))

(assert (=> b!5574925 true))

(assert (=> b!5574925 true))

(declare-fun b!5574942 () Bool)

(assert (=> b!5574942 true))

(declare-fun b!5574917 () Bool)

(declare-fun res!2366249 () Bool)

(declare-fun e!3440299 () Bool)

(assert (=> b!5574917 (=> res!2366249 e!3440299)))

(declare-datatypes ((C!31378 0))(
  ( (C!31379 (val!25391 Int)) )
))
(declare-datatypes ((Regex!15554 0))(
  ( (ElementMatch!15554 (c!975839 C!31378)) (Concat!24399 (regOne!31620 Regex!15554) (regTwo!31620 Regex!15554)) (EmptyExpr!15554) (Star!15554 (reg!15883 Regex!15554)) (EmptyLang!15554) (Union!15554 (regOne!31621 Regex!15554) (regTwo!31621 Regex!15554)) )
))
(declare-datatypes ((List!62961 0))(
  ( (Nil!62837) (Cons!62837 (h!69285 Regex!15554) (t!376230 List!62961)) )
))
(declare-datatypes ((Context!9876 0))(
  ( (Context!9877 (exprs!5438 List!62961)) )
))
(declare-datatypes ((List!62962 0))(
  ( (Nil!62838) (Cons!62838 (h!69286 Context!9876) (t!376231 List!62962)) )
))
(declare-fun zl!343 () List!62962)

(declare-fun isEmpty!34642 (List!62961) Bool)

(assert (=> b!5574917 (= res!2366249 (isEmpty!34642 (t!376230 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5574918 () Bool)

(declare-fun e!3440302 () Bool)

(declare-fun tp!1542949 () Bool)

(assert (=> b!5574918 (= e!3440302 tp!1542949)))

(declare-fun res!2366253 () Bool)

(declare-fun e!3440286 () Bool)

(assert (=> start!579136 (=> (not res!2366253) (not e!3440286))))

(declare-fun r!7292 () Regex!15554)

(declare-fun validRegex!7290 (Regex!15554) Bool)

(assert (=> start!579136 (= res!2366253 (validRegex!7290 r!7292))))

(assert (=> start!579136 e!3440286))

(declare-fun e!3440292 () Bool)

(assert (=> start!579136 e!3440292))

(declare-fun condSetEmpty!37076 () Bool)

(declare-fun z!1189 () (Set Context!9876))

(assert (=> start!579136 (= condSetEmpty!37076 (= z!1189 (as set.empty (Set Context!9876))))))

(declare-fun setRes!37076 () Bool)

(assert (=> start!579136 setRes!37076))

(declare-fun e!3440293 () Bool)

(assert (=> start!579136 e!3440293))

(declare-fun e!3440295 () Bool)

(assert (=> start!579136 e!3440295))

(declare-fun b!5574919 () Bool)

(declare-datatypes ((Unit!155588 0))(
  ( (Unit!155589) )
))
(declare-fun e!3440296 () Unit!155588)

(declare-fun Unit!155590 () Unit!155588)

(assert (=> b!5574919 (= e!3440296 Unit!155590)))

(declare-datatypes ((List!62963 0))(
  ( (Nil!62839) (Cons!62839 (h!69287 C!31378) (t!376232 List!62963)) )
))
(declare-fun s!2326 () List!62963)

(declare-fun lt!2252408 () Unit!155588)

(declare-fun lt!2252398 () (Set Context!9876))

(declare-fun lt!2252404 () (Set Context!9876))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!579 ((Set Context!9876) (Set Context!9876) List!62963) Unit!155588)

(assert (=> b!5574919 (= lt!2252408 (lemmaZipperConcatMatchesSameAsBothZippers!579 lt!2252404 lt!2252398 (t!376232 s!2326)))))

(declare-fun res!2366248 () Bool)

(declare-fun matchZipper!1692 ((Set Context!9876) List!62963) Bool)

(assert (=> b!5574919 (= res!2366248 (matchZipper!1692 lt!2252404 (t!376232 s!2326)))))

(declare-fun e!3440298 () Bool)

(assert (=> b!5574919 (=> res!2366248 e!3440298)))

(assert (=> b!5574919 (= (matchZipper!1692 (set.union lt!2252404 lt!2252398) (t!376232 s!2326)) e!3440298)))

(declare-fun lt!2252403 () (Set Context!9876))

(declare-fun lt!2252399 () (Set Context!9876))

(declare-fun b!5574920 () Bool)

(declare-fun e!3440300 () Bool)

(declare-fun derivationStepZipper!1653 ((Set Context!9876) C!31378) (Set Context!9876))

(assert (=> b!5574920 (= e!3440300 (= (derivationStepZipper!1653 lt!2252399 (h!69287 s!2326)) lt!2252403))))

(declare-fun b!5574921 () Bool)

(declare-fun e!3440290 () Bool)

(declare-fun lt!2252391 () (Set Context!9876))

(assert (=> b!5574921 (= e!3440290 (matchZipper!1692 lt!2252391 (t!376232 s!2326)))))

(declare-fun b!5574922 () Bool)

(declare-fun e!3440291 () Bool)

(assert (=> b!5574922 (= e!3440291 (not (matchZipper!1692 lt!2252391 (t!376232 s!2326))))))

(declare-fun b!5574923 () Bool)

(declare-fun res!2366250 () Bool)

(declare-fun e!3440287 () Bool)

(assert (=> b!5574923 (=> res!2366250 e!3440287)))

(declare-fun isEmpty!34643 (List!62962) Bool)

(assert (=> b!5574923 (= res!2366250 (not (isEmpty!34643 (t!376231 zl!343))))))

(declare-fun b!5574924 () Bool)

(assert (=> b!5574924 (= e!3440298 (matchZipper!1692 lt!2252398 (t!376232 s!2326)))))

(declare-fun setElem!37076 () Context!9876)

(declare-fun setNonEmpty!37076 () Bool)

(declare-fun tp!1542946 () Bool)

(declare-fun inv!82133 (Context!9876) Bool)

(assert (=> setNonEmpty!37076 (= setRes!37076 (and tp!1542946 (inv!82133 setElem!37076) e!3440302))))

(declare-fun setRest!37076 () (Set Context!9876))

(assert (=> setNonEmpty!37076 (= z!1189 (set.union (set.insert setElem!37076 (as set.empty (Set Context!9876))) setRest!37076))))

(assert (=> b!5574925 (= e!3440287 e!3440299)))

(declare-fun res!2366257 () Bool)

(assert (=> b!5574925 (=> res!2366257 e!3440299)))

(declare-fun lt!2252409 () Bool)

(declare-fun lt!2252412 () Bool)

(assert (=> b!5574925 (= res!2366257 (or (not (= lt!2252409 lt!2252412)) (is-Nil!62839 s!2326)))))

(declare-fun Exists!2654 (Int) Bool)

(assert (=> b!5574925 (= (Exists!2654 lambda!298799) (Exists!2654 lambda!298800))))

(declare-fun lt!2252394 () Unit!155588)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1283 (Regex!15554 Regex!15554 List!62963) Unit!155588)

(assert (=> b!5574925 (= lt!2252394 (lemmaExistCutMatchRandMatchRSpecEquivalent!1283 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326))))

(assert (=> b!5574925 (= lt!2252412 (Exists!2654 lambda!298799))))

(declare-datatypes ((tuple2!65302 0))(
  ( (tuple2!65303 (_1!35954 List!62963) (_2!35954 List!62963)) )
))
(declare-datatypes ((Option!15563 0))(
  ( (None!15562) (Some!15562 (v!51603 tuple2!65302)) )
))
(declare-fun isDefined!12266 (Option!15563) Bool)

(declare-fun findConcatSeparation!1977 (Regex!15554 Regex!15554 List!62963 List!62963 List!62963) Option!15563)

(assert (=> b!5574925 (= lt!2252412 (isDefined!12266 (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) Nil!62839 s!2326 s!2326)))))

(declare-fun lt!2252393 () Unit!155588)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1741 (Regex!15554 Regex!15554 List!62963) Unit!155588)

(assert (=> b!5574925 (= lt!2252393 (lemmaFindConcatSeparationEquivalentToExists!1741 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326))))

(declare-fun b!5574926 () Bool)

(declare-fun res!2366256 () Bool)

(assert (=> b!5574926 (=> res!2366256 e!3440287)))

(declare-fun generalisedConcat!1169 (List!62961) Regex!15554)

(assert (=> b!5574926 (= res!2366256 (not (= r!7292 (generalisedConcat!1169 (exprs!5438 (h!69286 zl!343))))))))

(declare-fun b!5574927 () Bool)

(declare-fun res!2366251 () Bool)

(assert (=> b!5574927 (=> (not res!2366251) (not e!3440286))))

(declare-fun unfocusZipper!1296 (List!62962) Regex!15554)

(assert (=> b!5574927 (= res!2366251 (= r!7292 (unfocusZipper!1296 zl!343)))))

(declare-fun b!5574928 () Bool)

(declare-fun tp!1542948 () Bool)

(assert (=> b!5574928 (= e!3440292 tp!1542948)))

(declare-fun b!5574929 () Bool)

(declare-fun tp_is_empty!40361 () Bool)

(assert (=> b!5574929 (= e!3440292 tp_is_empty!40361)))

(declare-fun b!5574930 () Bool)

(declare-fun res!2366246 () Bool)

(assert (=> b!5574930 (=> (not res!2366246) (not e!3440286))))

(declare-fun toList!9338 ((Set Context!9876)) List!62962)

(assert (=> b!5574930 (= res!2366246 (= (toList!9338 z!1189) zl!343))))

(declare-fun b!5574931 () Bool)

(declare-fun tp!1542945 () Bool)

(declare-fun tp!1542944 () Bool)

(assert (=> b!5574931 (= e!3440292 (and tp!1542945 tp!1542944))))

(declare-fun b!5574932 () Bool)

(declare-fun res!2366258 () Bool)

(assert (=> b!5574932 (=> res!2366258 e!3440287)))

(declare-fun generalisedUnion!1417 (List!62961) Regex!15554)

(declare-fun unfocusZipperList!982 (List!62962) List!62961)

(assert (=> b!5574932 (= res!2366258 (not (= r!7292 (generalisedUnion!1417 (unfocusZipperList!982 zl!343)))))))

(declare-fun b!5574933 () Bool)

(declare-fun e!3440294 () Bool)

(assert (=> b!5574933 (= e!3440294 e!3440300)))

(declare-fun res!2366262 () Bool)

(assert (=> b!5574933 (=> res!2366262 e!3440300)))

(declare-fun lt!2252395 () (Set Context!9876))

(assert (=> b!5574933 (= res!2366262 (not (= lt!2252395 lt!2252403)))))

(declare-fun lt!2252402 () (Set Context!9876))

(assert (=> b!5574933 (= lt!2252403 (set.union lt!2252402 lt!2252398))))

(declare-fun b!5574934 () Bool)

(declare-fun res!2366247 () Bool)

(assert (=> b!5574934 (=> res!2366247 e!3440287)))

(assert (=> b!5574934 (= res!2366247 (not (is-Cons!62837 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5574935 () Bool)

(declare-fun e!3440288 () Bool)

(declare-fun tp!1542947 () Bool)

(assert (=> b!5574935 (= e!3440288 tp!1542947)))

(declare-fun b!5574936 () Bool)

(declare-fun e!3440289 () Bool)

(declare-fun e!3440297 () Bool)

(assert (=> b!5574936 (= e!3440289 e!3440297)))

(declare-fun res!2366252 () Bool)

(assert (=> b!5574936 (=> res!2366252 e!3440297)))

(declare-fun lt!2252397 () (Set Context!9876))

(assert (=> b!5574936 (= res!2366252 (not (= lt!2252404 lt!2252397)))))

(assert (=> b!5574936 (= lt!2252397 (set.union lt!2252402 lt!2252391))))

(declare-fun lt!2252400 () Context!9876)

(declare-fun derivationStepZipperDown!896 (Regex!15554 Context!9876 C!31378) (Set Context!9876))

(assert (=> b!5574936 (= lt!2252391 (derivationStepZipperDown!896 (regTwo!31621 (regOne!31620 r!7292)) lt!2252400 (h!69287 s!2326)))))

(assert (=> b!5574936 (= lt!2252402 (derivationStepZipperDown!896 (regOne!31621 (regOne!31620 r!7292)) lt!2252400 (h!69287 s!2326)))))

(declare-fun setIsEmpty!37076 () Bool)

(assert (=> setIsEmpty!37076 setRes!37076))

(declare-fun b!5574937 () Bool)

(assert (=> b!5574937 (= e!3440286 (not e!3440287))))

(declare-fun res!2366255 () Bool)

(assert (=> b!5574937 (=> res!2366255 e!3440287)))

(assert (=> b!5574937 (= res!2366255 (not (is-Cons!62838 zl!343)))))

(declare-fun matchRSpec!2657 (Regex!15554 List!62963) Bool)

(assert (=> b!5574937 (= lt!2252409 (matchRSpec!2657 r!7292 s!2326))))

(declare-fun matchR!7739 (Regex!15554 List!62963) Bool)

(assert (=> b!5574937 (= lt!2252409 (matchR!7739 r!7292 s!2326))))

(declare-fun lt!2252396 () Unit!155588)

(declare-fun mainMatchTheorem!2657 (Regex!15554 List!62963) Unit!155588)

(assert (=> b!5574937 (= lt!2252396 (mainMatchTheorem!2657 r!7292 s!2326))))

(declare-fun b!5574938 () Bool)

(declare-fun tp!1542950 () Bool)

(assert (=> b!5574938 (= e!3440295 (and tp_is_empty!40361 tp!1542950))))

(declare-fun b!5574939 () Bool)

(declare-fun e!3440301 () Bool)

(assert (=> b!5574939 (= e!3440297 e!3440301)))

(declare-fun res!2366259 () Bool)

(assert (=> b!5574939 (=> res!2366259 e!3440301)))

(assert (=> b!5574939 (= res!2366259 e!3440291)))

(declare-fun res!2366254 () Bool)

(assert (=> b!5574939 (=> (not res!2366254) (not e!3440291))))

(declare-fun lt!2252411 () Bool)

(assert (=> b!5574939 (= res!2366254 (not (= (matchZipper!1692 lt!2252404 (t!376232 s!2326)) lt!2252411)))))

(assert (=> b!5574939 (= (matchZipper!1692 lt!2252397 (t!376232 s!2326)) e!3440290)))

(declare-fun res!2366261 () Bool)

(assert (=> b!5574939 (=> res!2366261 e!3440290)))

(assert (=> b!5574939 (= res!2366261 lt!2252411)))

(assert (=> b!5574939 (= lt!2252411 (matchZipper!1692 lt!2252402 (t!376232 s!2326)))))

(declare-fun lt!2252406 () Unit!155588)

(assert (=> b!5574939 (= lt!2252406 (lemmaZipperConcatMatchesSameAsBothZippers!579 lt!2252402 lt!2252391 (t!376232 s!2326)))))

(declare-fun b!5574940 () Bool)

(declare-fun tp!1542951 () Bool)

(assert (=> b!5574940 (= e!3440293 (and (inv!82133 (h!69286 zl!343)) e!3440288 tp!1542951))))

(declare-fun b!5574941 () Bool)

(declare-fun Unit!155591 () Unit!155588)

(assert (=> b!5574941 (= e!3440296 Unit!155591)))

(assert (=> b!5574942 (= e!3440299 e!3440289)))

(declare-fun res!2366260 () Bool)

(assert (=> b!5574942 (=> res!2366260 e!3440289)))

(assert (=> b!5574942 (= res!2366260 (or (and (is-ElementMatch!15554 (regOne!31620 r!7292)) (= (c!975839 (regOne!31620 r!7292)) (h!69287 s!2326))) (not (is-Union!15554 (regOne!31620 r!7292)))))))

(declare-fun lt!2252410 () Unit!155588)

(assert (=> b!5574942 (= lt!2252410 e!3440296)))

(declare-fun c!975838 () Bool)

(declare-fun nullable!5586 (Regex!15554) Bool)

(assert (=> b!5574942 (= c!975838 (nullable!5586 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun lambda!298801 () Int)

(declare-fun flatMap!1167 ((Set Context!9876) Int) (Set Context!9876))

(declare-fun derivationStepZipperUp!822 (Context!9876 C!31378) (Set Context!9876))

(assert (=> b!5574942 (= (flatMap!1167 z!1189 lambda!298801) (derivationStepZipperUp!822 (h!69286 zl!343) (h!69287 s!2326)))))

(declare-fun lt!2252405 () Unit!155588)

(declare-fun lemmaFlatMapOnSingletonSet!699 ((Set Context!9876) Context!9876 Int) Unit!155588)

(assert (=> b!5574942 (= lt!2252405 (lemmaFlatMapOnSingletonSet!699 z!1189 (h!69286 zl!343) lambda!298801))))

(assert (=> b!5574942 (= lt!2252398 (derivationStepZipperUp!822 lt!2252400 (h!69287 s!2326)))))

(assert (=> b!5574942 (= lt!2252404 (derivationStepZipperDown!896 (h!69285 (exprs!5438 (h!69286 zl!343))) lt!2252400 (h!69287 s!2326)))))

(assert (=> b!5574942 (= lt!2252400 (Context!9877 (t!376230 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun lt!2252407 () (Set Context!9876))

(assert (=> b!5574942 (= lt!2252407 (derivationStepZipperUp!822 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343))))) (h!69287 s!2326)))))

(declare-fun b!5574943 () Bool)

(declare-fun tp!1542952 () Bool)

(declare-fun tp!1542953 () Bool)

(assert (=> b!5574943 (= e!3440292 (and tp!1542952 tp!1542953))))

(declare-fun b!5574944 () Bool)

(declare-fun res!2366245 () Bool)

(assert (=> b!5574944 (=> res!2366245 e!3440287)))

(assert (=> b!5574944 (= res!2366245 (or (is-EmptyExpr!15554 r!7292) (is-EmptyLang!15554 r!7292) (is-ElementMatch!15554 r!7292) (is-Union!15554 r!7292) (not (is-Concat!24399 r!7292))))))

(declare-fun b!5574945 () Bool)

(assert (=> b!5574945 (= e!3440301 e!3440294)))

(declare-fun res!2366263 () Bool)

(assert (=> b!5574945 (=> res!2366263 e!3440294)))

(assert (=> b!5574945 (= res!2366263 (not (nullable!5586 (regOne!31621 (regOne!31620 r!7292)))))))

(declare-fun lt!2252401 () Context!9876)

(assert (=> b!5574945 (= (flatMap!1167 lt!2252399 lambda!298801) (derivationStepZipperUp!822 lt!2252401 (h!69287 s!2326)))))

(declare-fun lt!2252392 () Unit!155588)

(assert (=> b!5574945 (= lt!2252392 (lemmaFlatMapOnSingletonSet!699 lt!2252399 lt!2252401 lambda!298801))))

(assert (=> b!5574945 (= lt!2252395 (derivationStepZipperUp!822 lt!2252401 (h!69287 s!2326)))))

(assert (=> b!5574945 (= lt!2252399 (set.insert lt!2252401 (as set.empty (Set Context!9876))))))

(assert (=> b!5574945 (= lt!2252401 (Context!9877 (Cons!62837 (regOne!31621 (regOne!31620 r!7292)) (t!376230 (exprs!5438 (h!69286 zl!343))))))))

(assert (= (and start!579136 res!2366253) b!5574930))

(assert (= (and b!5574930 res!2366246) b!5574927))

(assert (= (and b!5574927 res!2366251) b!5574937))

(assert (= (and b!5574937 (not res!2366255)) b!5574923))

(assert (= (and b!5574923 (not res!2366250)) b!5574926))

(assert (= (and b!5574926 (not res!2366256)) b!5574934))

(assert (= (and b!5574934 (not res!2366247)) b!5574932))

(assert (= (and b!5574932 (not res!2366258)) b!5574944))

(assert (= (and b!5574944 (not res!2366245)) b!5574925))

(assert (= (and b!5574925 (not res!2366257)) b!5574917))

(assert (= (and b!5574917 (not res!2366249)) b!5574942))

(assert (= (and b!5574942 c!975838) b!5574919))

(assert (= (and b!5574942 (not c!975838)) b!5574941))

(assert (= (and b!5574919 (not res!2366248)) b!5574924))

(assert (= (and b!5574942 (not res!2366260)) b!5574936))

(assert (= (and b!5574936 (not res!2366252)) b!5574939))

(assert (= (and b!5574939 (not res!2366261)) b!5574921))

(assert (= (and b!5574939 res!2366254) b!5574922))

(assert (= (and b!5574939 (not res!2366259)) b!5574945))

(assert (= (and b!5574945 (not res!2366263)) b!5574933))

(assert (= (and b!5574933 (not res!2366262)) b!5574920))

(assert (= (and start!579136 (is-ElementMatch!15554 r!7292)) b!5574929))

(assert (= (and start!579136 (is-Concat!24399 r!7292)) b!5574943))

(assert (= (and start!579136 (is-Star!15554 r!7292)) b!5574928))

(assert (= (and start!579136 (is-Union!15554 r!7292)) b!5574931))

(assert (= (and start!579136 condSetEmpty!37076) setIsEmpty!37076))

(assert (= (and start!579136 (not condSetEmpty!37076)) setNonEmpty!37076))

(assert (= setNonEmpty!37076 b!5574918))

(assert (= b!5574940 b!5574935))

(assert (= (and start!579136 (is-Cons!62838 zl!343)) b!5574940))

(assert (= (and start!579136 (is-Cons!62839 s!2326)) b!5574938))

(declare-fun m!6558334 () Bool)

(assert (=> b!5574919 m!6558334))

(declare-fun m!6558336 () Bool)

(assert (=> b!5574919 m!6558336))

(declare-fun m!6558338 () Bool)

(assert (=> b!5574919 m!6558338))

(declare-fun m!6558340 () Bool)

(assert (=> b!5574925 m!6558340))

(declare-fun m!6558342 () Bool)

(assert (=> b!5574925 m!6558342))

(declare-fun m!6558344 () Bool)

(assert (=> b!5574925 m!6558344))

(declare-fun m!6558346 () Bool)

(assert (=> b!5574925 m!6558346))

(assert (=> b!5574925 m!6558342))

(declare-fun m!6558348 () Bool)

(assert (=> b!5574925 m!6558348))

(assert (=> b!5574925 m!6558344))

(declare-fun m!6558350 () Bool)

(assert (=> b!5574925 m!6558350))

(declare-fun m!6558352 () Bool)

(assert (=> b!5574932 m!6558352))

(assert (=> b!5574932 m!6558352))

(declare-fun m!6558354 () Bool)

(assert (=> b!5574932 m!6558354))

(declare-fun m!6558356 () Bool)

(assert (=> b!5574942 m!6558356))

(declare-fun m!6558358 () Bool)

(assert (=> b!5574942 m!6558358))

(declare-fun m!6558360 () Bool)

(assert (=> b!5574942 m!6558360))

(declare-fun m!6558362 () Bool)

(assert (=> b!5574942 m!6558362))

(declare-fun m!6558364 () Bool)

(assert (=> b!5574942 m!6558364))

(declare-fun m!6558366 () Bool)

(assert (=> b!5574942 m!6558366))

(declare-fun m!6558368 () Bool)

(assert (=> b!5574942 m!6558368))

(declare-fun m!6558370 () Bool)

(assert (=> b!5574917 m!6558370))

(declare-fun m!6558372 () Bool)

(assert (=> b!5574926 m!6558372))

(declare-fun m!6558374 () Bool)

(assert (=> b!5574937 m!6558374))

(declare-fun m!6558376 () Bool)

(assert (=> b!5574937 m!6558376))

(declare-fun m!6558378 () Bool)

(assert (=> b!5574937 m!6558378))

(declare-fun m!6558380 () Bool)

(assert (=> b!5574927 m!6558380))

(declare-fun m!6558382 () Bool)

(assert (=> setNonEmpty!37076 m!6558382))

(assert (=> b!5574939 m!6558336))

(declare-fun m!6558384 () Bool)

(assert (=> b!5574939 m!6558384))

(declare-fun m!6558386 () Bool)

(assert (=> b!5574939 m!6558386))

(declare-fun m!6558388 () Bool)

(assert (=> b!5574939 m!6558388))

(declare-fun m!6558390 () Bool)

(assert (=> b!5574930 m!6558390))

(declare-fun m!6558392 () Bool)

(assert (=> start!579136 m!6558392))

(declare-fun m!6558394 () Bool)

(assert (=> b!5574940 m!6558394))

(declare-fun m!6558396 () Bool)

(assert (=> b!5574922 m!6558396))

(declare-fun m!6558398 () Bool)

(assert (=> b!5574936 m!6558398))

(declare-fun m!6558400 () Bool)

(assert (=> b!5574936 m!6558400))

(declare-fun m!6558402 () Bool)

(assert (=> b!5574920 m!6558402))

(declare-fun m!6558404 () Bool)

(assert (=> b!5574945 m!6558404))

(declare-fun m!6558406 () Bool)

(assert (=> b!5574945 m!6558406))

(declare-fun m!6558408 () Bool)

(assert (=> b!5574945 m!6558408))

(declare-fun m!6558410 () Bool)

(assert (=> b!5574945 m!6558410))

(declare-fun m!6558412 () Bool)

(assert (=> b!5574945 m!6558412))

(declare-fun m!6558414 () Bool)

(assert (=> b!5574924 m!6558414))

(declare-fun m!6558416 () Bool)

(assert (=> b!5574923 m!6558416))

(assert (=> b!5574921 m!6558396))

(push 1)

(assert (not b!5574945))

(assert (not b!5574937))

(assert (not b!5574943))

(assert (not b!5574918))

(assert (not b!5574940))

(assert (not b!5574925))

(assert (not b!5574917))

(assert (not setNonEmpty!37076))

(assert (not b!5574927))

(assert (not b!5574938))

(assert tp_is_empty!40361)

(assert (not b!5574930))

(assert (not b!5574935))

(assert (not b!5574931))

(assert (not b!5574936))

(assert (not b!5574921))

(assert (not b!5574923))

(assert (not b!5574932))

(assert (not b!5574920))

(assert (not b!5574926))

(assert (not b!5574939))

(assert (not b!5574922))

(assert (not start!579136))

(assert (not b!5574919))

(assert (not b!5574942))

(assert (not b!5574928))

(assert (not b!5574924))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5575079 () Bool)

(declare-fun e!3440376 () (Set Context!9876))

(declare-fun call!416621 () (Set Context!9876))

(assert (=> b!5575079 (= e!3440376 call!416621)))

(declare-fun b!5575080 () Bool)

(declare-fun e!3440372 () (Set Context!9876))

(assert (=> b!5575080 (= e!3440372 (set.insert lt!2252400 (as set.empty (Set Context!9876))))))

(declare-fun bm!416616 () Bool)

(declare-fun call!416626 () (Set Context!9876))

(assert (=> bm!416616 (= call!416621 call!416626)))

(declare-fun b!5575081 () Bool)

(declare-fun e!3440375 () (Set Context!9876))

(assert (=> b!5575081 (= e!3440375 (as set.empty (Set Context!9876)))))

(declare-fun call!416624 () (Set Context!9876))

(declare-fun bm!416617 () Bool)

(declare-fun c!975860 () Bool)

(declare-fun call!416622 () List!62961)

(declare-fun c!975861 () Bool)

(declare-fun c!975862 () Bool)

(assert (=> bm!416617 (= call!416624 (derivationStepZipperDown!896 (ite c!975861 (regTwo!31621 (regTwo!31621 (regOne!31620 r!7292))) (ite c!975860 (regTwo!31620 (regTwo!31621 (regOne!31620 r!7292))) (ite c!975862 (regOne!31620 (regTwo!31621 (regOne!31620 r!7292))) (reg!15883 (regTwo!31621 (regOne!31620 r!7292)))))) (ite (or c!975861 c!975860) lt!2252400 (Context!9877 call!416622)) (h!69287 s!2326)))))

(declare-fun d!1762747 () Bool)

(declare-fun c!975863 () Bool)

(assert (=> d!1762747 (= c!975863 (and (is-ElementMatch!15554 (regTwo!31621 (regOne!31620 r!7292))) (= (c!975839 (regTwo!31621 (regOne!31620 r!7292))) (h!69287 s!2326))))))

(assert (=> d!1762747 (= (derivationStepZipperDown!896 (regTwo!31621 (regOne!31620 r!7292)) lt!2252400 (h!69287 s!2326)) e!3440372)))

(declare-fun b!5575082 () Bool)

(declare-fun e!3440374 () (Set Context!9876))

(declare-fun call!416625 () (Set Context!9876))

(assert (=> b!5575082 (= e!3440374 (set.union call!416625 call!416624))))

(declare-fun b!5575083 () Bool)

(assert (=> b!5575083 (= e!3440375 call!416621)))

(declare-fun b!5575084 () Bool)

(declare-fun e!3440373 () Bool)

(assert (=> b!5575084 (= c!975860 e!3440373)))

(declare-fun res!2366335 () Bool)

(assert (=> b!5575084 (=> (not res!2366335) (not e!3440373))))

(assert (=> b!5575084 (= res!2366335 (is-Concat!24399 (regTwo!31621 (regOne!31620 r!7292))))))

(declare-fun e!3440377 () (Set Context!9876))

(assert (=> b!5575084 (= e!3440374 e!3440377)))

(declare-fun bm!416618 () Bool)

(declare-fun call!416623 () List!62961)

(assert (=> bm!416618 (= call!416622 call!416623)))

(declare-fun b!5575085 () Bool)

(assert (=> b!5575085 (= e!3440377 e!3440376)))

(assert (=> b!5575085 (= c!975862 (is-Concat!24399 (regTwo!31621 (regOne!31620 r!7292))))))

(declare-fun b!5575086 () Bool)

(assert (=> b!5575086 (= e!3440377 (set.union call!416625 call!416626))))

(declare-fun bm!416619 () Bool)

(assert (=> bm!416619 (= call!416626 call!416624)))

(declare-fun b!5575087 () Bool)

(assert (=> b!5575087 (= e!3440372 e!3440374)))

(assert (=> b!5575087 (= c!975861 (is-Union!15554 (regTwo!31621 (regOne!31620 r!7292))))))

(declare-fun bm!416620 () Bool)

(declare-fun $colon$colon!1621 (List!62961 Regex!15554) List!62961)

(assert (=> bm!416620 (= call!416623 ($colon$colon!1621 (exprs!5438 lt!2252400) (ite (or c!975860 c!975862) (regTwo!31620 (regTwo!31621 (regOne!31620 r!7292))) (regTwo!31621 (regOne!31620 r!7292)))))))

(declare-fun b!5575088 () Bool)

(declare-fun c!975859 () Bool)

(assert (=> b!5575088 (= c!975859 (is-Star!15554 (regTwo!31621 (regOne!31620 r!7292))))))

(assert (=> b!5575088 (= e!3440376 e!3440375)))

(declare-fun b!5575089 () Bool)

(assert (=> b!5575089 (= e!3440373 (nullable!5586 (regOne!31620 (regTwo!31621 (regOne!31620 r!7292)))))))

(declare-fun bm!416621 () Bool)

(assert (=> bm!416621 (= call!416625 (derivationStepZipperDown!896 (ite c!975861 (regOne!31621 (regTwo!31621 (regOne!31620 r!7292))) (regOne!31620 (regTwo!31621 (regOne!31620 r!7292)))) (ite c!975861 lt!2252400 (Context!9877 call!416623)) (h!69287 s!2326)))))

(assert (= (and d!1762747 c!975863) b!5575080))

(assert (= (and d!1762747 (not c!975863)) b!5575087))

(assert (= (and b!5575087 c!975861) b!5575082))

(assert (= (and b!5575087 (not c!975861)) b!5575084))

(assert (= (and b!5575084 res!2366335) b!5575089))

(assert (= (and b!5575084 c!975860) b!5575086))

(assert (= (and b!5575084 (not c!975860)) b!5575085))

(assert (= (and b!5575085 c!975862) b!5575079))

(assert (= (and b!5575085 (not c!975862)) b!5575088))

(assert (= (and b!5575088 c!975859) b!5575083))

(assert (= (and b!5575088 (not c!975859)) b!5575081))

(assert (= (or b!5575079 b!5575083) bm!416618))

(assert (= (or b!5575079 b!5575083) bm!416616))

(assert (= (or b!5575086 bm!416618) bm!416620))

(assert (= (or b!5575086 bm!416616) bm!416619))

(assert (= (or b!5575082 bm!416619) bm!416617))

(assert (= (or b!5575082 b!5575086) bm!416621))

(declare-fun m!6558502 () Bool)

(assert (=> bm!416621 m!6558502))

(declare-fun m!6558504 () Bool)

(assert (=> b!5575080 m!6558504))

(declare-fun m!6558506 () Bool)

(assert (=> b!5575089 m!6558506))

(declare-fun m!6558508 () Bool)

(assert (=> bm!416617 m!6558508))

(declare-fun m!6558510 () Bool)

(assert (=> bm!416620 m!6558510))

(assert (=> b!5574936 d!1762747))

(declare-fun b!5575090 () Bool)

(declare-fun e!3440382 () (Set Context!9876))

(declare-fun call!416627 () (Set Context!9876))

(assert (=> b!5575090 (= e!3440382 call!416627)))

(declare-fun b!5575091 () Bool)

(declare-fun e!3440378 () (Set Context!9876))

(assert (=> b!5575091 (= e!3440378 (set.insert lt!2252400 (as set.empty (Set Context!9876))))))

(declare-fun bm!416622 () Bool)

(declare-fun call!416632 () (Set Context!9876))

(assert (=> bm!416622 (= call!416627 call!416632)))

(declare-fun b!5575092 () Bool)

(declare-fun e!3440381 () (Set Context!9876))

(assert (=> b!5575092 (= e!3440381 (as set.empty (Set Context!9876)))))

(declare-fun call!416630 () (Set Context!9876))

(declare-fun c!975866 () Bool)

(declare-fun c!975865 () Bool)

(declare-fun call!416628 () List!62961)

(declare-fun bm!416623 () Bool)

(declare-fun c!975867 () Bool)

(assert (=> bm!416623 (= call!416630 (derivationStepZipperDown!896 (ite c!975866 (regTwo!31621 (regOne!31621 (regOne!31620 r!7292))) (ite c!975865 (regTwo!31620 (regOne!31621 (regOne!31620 r!7292))) (ite c!975867 (regOne!31620 (regOne!31621 (regOne!31620 r!7292))) (reg!15883 (regOne!31621 (regOne!31620 r!7292)))))) (ite (or c!975866 c!975865) lt!2252400 (Context!9877 call!416628)) (h!69287 s!2326)))))

(declare-fun d!1762749 () Bool)

(declare-fun c!975868 () Bool)

(assert (=> d!1762749 (= c!975868 (and (is-ElementMatch!15554 (regOne!31621 (regOne!31620 r!7292))) (= (c!975839 (regOne!31621 (regOne!31620 r!7292))) (h!69287 s!2326))))))

(assert (=> d!1762749 (= (derivationStepZipperDown!896 (regOne!31621 (regOne!31620 r!7292)) lt!2252400 (h!69287 s!2326)) e!3440378)))

(declare-fun b!5575093 () Bool)

(declare-fun e!3440380 () (Set Context!9876))

(declare-fun call!416631 () (Set Context!9876))

(assert (=> b!5575093 (= e!3440380 (set.union call!416631 call!416630))))

(declare-fun b!5575094 () Bool)

(assert (=> b!5575094 (= e!3440381 call!416627)))

(declare-fun b!5575095 () Bool)

(declare-fun e!3440379 () Bool)

(assert (=> b!5575095 (= c!975865 e!3440379)))

(declare-fun res!2366336 () Bool)

(assert (=> b!5575095 (=> (not res!2366336) (not e!3440379))))

(assert (=> b!5575095 (= res!2366336 (is-Concat!24399 (regOne!31621 (regOne!31620 r!7292))))))

(declare-fun e!3440383 () (Set Context!9876))

(assert (=> b!5575095 (= e!3440380 e!3440383)))

(declare-fun bm!416624 () Bool)

(declare-fun call!416629 () List!62961)

(assert (=> bm!416624 (= call!416628 call!416629)))

(declare-fun b!5575096 () Bool)

(assert (=> b!5575096 (= e!3440383 e!3440382)))

(assert (=> b!5575096 (= c!975867 (is-Concat!24399 (regOne!31621 (regOne!31620 r!7292))))))

(declare-fun b!5575097 () Bool)

(assert (=> b!5575097 (= e!3440383 (set.union call!416631 call!416632))))

(declare-fun bm!416625 () Bool)

(assert (=> bm!416625 (= call!416632 call!416630)))

(declare-fun b!5575098 () Bool)

(assert (=> b!5575098 (= e!3440378 e!3440380)))

(assert (=> b!5575098 (= c!975866 (is-Union!15554 (regOne!31621 (regOne!31620 r!7292))))))

(declare-fun bm!416626 () Bool)

(assert (=> bm!416626 (= call!416629 ($colon$colon!1621 (exprs!5438 lt!2252400) (ite (or c!975865 c!975867) (regTwo!31620 (regOne!31621 (regOne!31620 r!7292))) (regOne!31621 (regOne!31620 r!7292)))))))

(declare-fun b!5575099 () Bool)

(declare-fun c!975864 () Bool)

(assert (=> b!5575099 (= c!975864 (is-Star!15554 (regOne!31621 (regOne!31620 r!7292))))))

(assert (=> b!5575099 (= e!3440382 e!3440381)))

(declare-fun b!5575100 () Bool)

(assert (=> b!5575100 (= e!3440379 (nullable!5586 (regOne!31620 (regOne!31621 (regOne!31620 r!7292)))))))

(declare-fun bm!416627 () Bool)

(assert (=> bm!416627 (= call!416631 (derivationStepZipperDown!896 (ite c!975866 (regOne!31621 (regOne!31621 (regOne!31620 r!7292))) (regOne!31620 (regOne!31621 (regOne!31620 r!7292)))) (ite c!975866 lt!2252400 (Context!9877 call!416629)) (h!69287 s!2326)))))

(assert (= (and d!1762749 c!975868) b!5575091))

(assert (= (and d!1762749 (not c!975868)) b!5575098))

(assert (= (and b!5575098 c!975866) b!5575093))

(assert (= (and b!5575098 (not c!975866)) b!5575095))

(assert (= (and b!5575095 res!2366336) b!5575100))

(assert (= (and b!5575095 c!975865) b!5575097))

(assert (= (and b!5575095 (not c!975865)) b!5575096))

(assert (= (and b!5575096 c!975867) b!5575090))

(assert (= (and b!5575096 (not c!975867)) b!5575099))

(assert (= (and b!5575099 c!975864) b!5575094))

(assert (= (and b!5575099 (not c!975864)) b!5575092))

(assert (= (or b!5575090 b!5575094) bm!416624))

(assert (= (or b!5575090 b!5575094) bm!416622))

(assert (= (or b!5575097 bm!416624) bm!416626))

(assert (= (or b!5575097 bm!416622) bm!416625))

(assert (= (or b!5575093 bm!416625) bm!416623))

(assert (= (or b!5575093 b!5575097) bm!416627))

(declare-fun m!6558512 () Bool)

(assert (=> bm!416627 m!6558512))

(assert (=> b!5575091 m!6558504))

(declare-fun m!6558514 () Bool)

(assert (=> b!5575100 m!6558514))

(declare-fun m!6558516 () Bool)

(assert (=> bm!416623 m!6558516))

(declare-fun m!6558518 () Bool)

(assert (=> bm!416626 m!6558518))

(assert (=> b!5574936 d!1762749))

(declare-fun d!1762751 () Bool)

(declare-fun choose!42234 (Int) Bool)

(assert (=> d!1762751 (= (Exists!2654 lambda!298800) (choose!42234 lambda!298800))))

(declare-fun bs!1290184 () Bool)

(assert (= bs!1290184 d!1762751))

(declare-fun m!6558520 () Bool)

(assert (=> bs!1290184 m!6558520))

(assert (=> b!5574925 d!1762751))

(declare-fun b!5575119 () Bool)

(declare-fun lt!2252485 () Unit!155588)

(declare-fun lt!2252486 () Unit!155588)

(assert (=> b!5575119 (= lt!2252485 lt!2252486)))

(declare-fun ++!13789 (List!62963 List!62963) List!62963)

(assert (=> b!5575119 (= (++!13789 (++!13789 Nil!62839 (Cons!62839 (h!69287 s!2326) Nil!62839)) (t!376232 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1958 (List!62963 C!31378 List!62963 List!62963) Unit!155588)

(assert (=> b!5575119 (= lt!2252486 (lemmaMoveElementToOtherListKeepsConcatEq!1958 Nil!62839 (h!69287 s!2326) (t!376232 s!2326) s!2326))))

(declare-fun e!3440396 () Option!15563)

(assert (=> b!5575119 (= e!3440396 (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) (++!13789 Nil!62839 (Cons!62839 (h!69287 s!2326) Nil!62839)) (t!376232 s!2326) s!2326))))

(declare-fun b!5575120 () Bool)

(declare-fun res!2366347 () Bool)

(declare-fun e!3440394 () Bool)

(assert (=> b!5575120 (=> (not res!2366347) (not e!3440394))))

(declare-fun lt!2252487 () Option!15563)

(declare-fun get!21634 (Option!15563) tuple2!65302)

(assert (=> b!5575120 (= res!2366347 (matchR!7739 (regTwo!31620 r!7292) (_2!35954 (get!21634 lt!2252487))))))

(declare-fun b!5575121 () Bool)

(declare-fun e!3440398 () Option!15563)

(assert (=> b!5575121 (= e!3440398 e!3440396)))

(declare-fun c!975873 () Bool)

(assert (=> b!5575121 (= c!975873 (is-Nil!62839 s!2326))))

(declare-fun b!5575123 () Bool)

(declare-fun res!2366350 () Bool)

(assert (=> b!5575123 (=> (not res!2366350) (not e!3440394))))

(assert (=> b!5575123 (= res!2366350 (matchR!7739 (regOne!31620 r!7292) (_1!35954 (get!21634 lt!2252487))))))

(declare-fun b!5575124 () Bool)

(declare-fun e!3440395 () Bool)

(assert (=> b!5575124 (= e!3440395 (matchR!7739 (regTwo!31620 r!7292) s!2326))))

(declare-fun b!5575125 () Bool)

(declare-fun e!3440397 () Bool)

(assert (=> b!5575125 (= e!3440397 (not (isDefined!12266 lt!2252487)))))

(declare-fun b!5575126 () Bool)

(assert (=> b!5575126 (= e!3440396 None!15562)))

(declare-fun b!5575127 () Bool)

(assert (=> b!5575127 (= e!3440398 (Some!15562 (tuple2!65303 Nil!62839 s!2326)))))

(declare-fun b!5575122 () Bool)

(assert (=> b!5575122 (= e!3440394 (= (++!13789 (_1!35954 (get!21634 lt!2252487)) (_2!35954 (get!21634 lt!2252487))) s!2326))))

(declare-fun d!1762753 () Bool)

(assert (=> d!1762753 e!3440397))

(declare-fun res!2366351 () Bool)

(assert (=> d!1762753 (=> res!2366351 e!3440397)))

(assert (=> d!1762753 (= res!2366351 e!3440394)))

(declare-fun res!2366348 () Bool)

(assert (=> d!1762753 (=> (not res!2366348) (not e!3440394))))

(assert (=> d!1762753 (= res!2366348 (isDefined!12266 lt!2252487))))

(assert (=> d!1762753 (= lt!2252487 e!3440398)))

(declare-fun c!975874 () Bool)

(assert (=> d!1762753 (= c!975874 e!3440395)))

(declare-fun res!2366349 () Bool)

(assert (=> d!1762753 (=> (not res!2366349) (not e!3440395))))

(assert (=> d!1762753 (= res!2366349 (matchR!7739 (regOne!31620 r!7292) Nil!62839))))

(assert (=> d!1762753 (validRegex!7290 (regOne!31620 r!7292))))

(assert (=> d!1762753 (= (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) Nil!62839 s!2326 s!2326) lt!2252487)))

(assert (= (and d!1762753 res!2366349) b!5575124))

(assert (= (and d!1762753 c!975874) b!5575127))

(assert (= (and d!1762753 (not c!975874)) b!5575121))

(assert (= (and b!5575121 c!975873) b!5575126))

(assert (= (and b!5575121 (not c!975873)) b!5575119))

(assert (= (and d!1762753 res!2366348) b!5575123))

(assert (= (and b!5575123 res!2366350) b!5575120))

(assert (= (and b!5575120 res!2366347) b!5575122))

(assert (= (and d!1762753 (not res!2366351)) b!5575125))

(declare-fun m!6558522 () Bool)

(assert (=> b!5575124 m!6558522))

(declare-fun m!6558524 () Bool)

(assert (=> b!5575120 m!6558524))

(declare-fun m!6558526 () Bool)

(assert (=> b!5575120 m!6558526))

(assert (=> b!5575123 m!6558524))

(declare-fun m!6558528 () Bool)

(assert (=> b!5575123 m!6558528))

(assert (=> b!5575122 m!6558524))

(declare-fun m!6558530 () Bool)

(assert (=> b!5575122 m!6558530))

(declare-fun m!6558532 () Bool)

(assert (=> d!1762753 m!6558532))

(declare-fun m!6558534 () Bool)

(assert (=> d!1762753 m!6558534))

(declare-fun m!6558536 () Bool)

(assert (=> d!1762753 m!6558536))

(assert (=> b!5575125 m!6558532))

(declare-fun m!6558538 () Bool)

(assert (=> b!5575119 m!6558538))

(assert (=> b!5575119 m!6558538))

(declare-fun m!6558540 () Bool)

(assert (=> b!5575119 m!6558540))

(declare-fun m!6558542 () Bool)

(assert (=> b!5575119 m!6558542))

(assert (=> b!5575119 m!6558538))

(declare-fun m!6558544 () Bool)

(assert (=> b!5575119 m!6558544))

(assert (=> b!5574925 d!1762753))

(declare-fun d!1762755 () Bool)

(assert (=> d!1762755 (= (Exists!2654 lambda!298799) (choose!42234 lambda!298799))))

(declare-fun bs!1290185 () Bool)

(assert (= bs!1290185 d!1762755))

(declare-fun m!6558546 () Bool)

(assert (=> bs!1290185 m!6558546))

(assert (=> b!5574925 d!1762755))

(declare-fun bs!1290186 () Bool)

(declare-fun d!1762757 () Bool)

(assert (= bs!1290186 (and d!1762757 b!5574925)))

(declare-fun lambda!298817 () Int)

(assert (=> bs!1290186 (= lambda!298817 lambda!298799)))

(assert (=> bs!1290186 (not (= lambda!298817 lambda!298800))))

(assert (=> d!1762757 true))

(assert (=> d!1762757 true))

(assert (=> d!1762757 true))

(assert (=> d!1762757 (= (isDefined!12266 (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) Nil!62839 s!2326 s!2326)) (Exists!2654 lambda!298817))))

(declare-fun lt!2252490 () Unit!155588)

(declare-fun choose!42235 (Regex!15554 Regex!15554 List!62963) Unit!155588)

(assert (=> d!1762757 (= lt!2252490 (choose!42235 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326))))

(assert (=> d!1762757 (validRegex!7290 (regOne!31620 r!7292))))

(assert (=> d!1762757 (= (lemmaFindConcatSeparationEquivalentToExists!1741 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326) lt!2252490)))

(declare-fun bs!1290187 () Bool)

(assert (= bs!1290187 d!1762757))

(declare-fun m!6558548 () Bool)

(assert (=> bs!1290187 m!6558548))

(assert (=> bs!1290187 m!6558344))

(assert (=> bs!1290187 m!6558346))

(assert (=> bs!1290187 m!6558536))

(declare-fun m!6558550 () Bool)

(assert (=> bs!1290187 m!6558550))

(assert (=> bs!1290187 m!6558344))

(assert (=> b!5574925 d!1762757))

(declare-fun bs!1290188 () Bool)

(declare-fun d!1762759 () Bool)

(assert (= bs!1290188 (and d!1762759 b!5574925)))

(declare-fun lambda!298822 () Int)

(assert (=> bs!1290188 (= lambda!298822 lambda!298799)))

(assert (=> bs!1290188 (not (= lambda!298822 lambda!298800))))

(declare-fun bs!1290189 () Bool)

(assert (= bs!1290189 (and d!1762759 d!1762757)))

(assert (=> bs!1290189 (= lambda!298822 lambda!298817)))

(assert (=> d!1762759 true))

(assert (=> d!1762759 true))

(assert (=> d!1762759 true))

(declare-fun lambda!298823 () Int)

(assert (=> bs!1290188 (not (= lambda!298823 lambda!298799))))

(assert (=> bs!1290188 (= lambda!298823 lambda!298800)))

(assert (=> bs!1290189 (not (= lambda!298823 lambda!298817))))

(declare-fun bs!1290190 () Bool)

(assert (= bs!1290190 d!1762759))

(assert (=> bs!1290190 (not (= lambda!298823 lambda!298822))))

(assert (=> d!1762759 true))

(assert (=> d!1762759 true))

(assert (=> d!1762759 true))

(assert (=> d!1762759 (= (Exists!2654 lambda!298822) (Exists!2654 lambda!298823))))

(declare-fun lt!2252493 () Unit!155588)

(declare-fun choose!42236 (Regex!15554 Regex!15554 List!62963) Unit!155588)

(assert (=> d!1762759 (= lt!2252493 (choose!42236 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326))))

(assert (=> d!1762759 (validRegex!7290 (regOne!31620 r!7292))))

(assert (=> d!1762759 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1283 (regOne!31620 r!7292) (regTwo!31620 r!7292) s!2326) lt!2252493)))

(declare-fun m!6558552 () Bool)

(assert (=> bs!1290190 m!6558552))

(declare-fun m!6558554 () Bool)

(assert (=> bs!1290190 m!6558554))

(declare-fun m!6558556 () Bool)

(assert (=> bs!1290190 m!6558556))

(assert (=> bs!1290190 m!6558536))

(assert (=> b!5574925 d!1762759))

(declare-fun d!1762761 () Bool)

(declare-fun isEmpty!34646 (Option!15563) Bool)

(assert (=> d!1762761 (= (isDefined!12266 (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) Nil!62839 s!2326 s!2326)) (not (isEmpty!34646 (findConcatSeparation!1977 (regOne!31620 r!7292) (regTwo!31620 r!7292) Nil!62839 s!2326 s!2326))))))

(declare-fun bs!1290191 () Bool)

(assert (= bs!1290191 d!1762761))

(assert (=> bs!1290191 m!6558344))

(declare-fun m!6558558 () Bool)

(assert (=> bs!1290191 m!6558558))

(assert (=> b!5574925 d!1762761))

(declare-fun b!5575160 () Bool)

(declare-fun e!3440417 () Regex!15554)

(assert (=> b!5575160 (= e!3440417 EmptyExpr!15554)))

(declare-fun b!5575161 () Bool)

(declare-fun e!3440418 () Bool)

(declare-fun lt!2252496 () Regex!15554)

(declare-fun isConcat!637 (Regex!15554) Bool)

(assert (=> b!5575161 (= e!3440418 (isConcat!637 lt!2252496))))

(declare-fun b!5575162 () Bool)

(declare-fun e!3440422 () Bool)

(assert (=> b!5575162 (= e!3440422 e!3440418)))

(declare-fun c!975884 () Bool)

(declare-fun tail!10982 (List!62961) List!62961)

(assert (=> b!5575162 (= c!975884 (isEmpty!34642 (tail!10982 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5575163 () Bool)

(declare-fun head!11887 (List!62961) Regex!15554)

(assert (=> b!5575163 (= e!3440418 (= lt!2252496 (head!11887 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5575164 () Bool)

(declare-fun e!3440419 () Regex!15554)

(assert (=> b!5575164 (= e!3440419 (h!69285 (exprs!5438 (h!69286 zl!343))))))

(declare-fun b!5575166 () Bool)

(declare-fun isEmptyExpr!1114 (Regex!15554) Bool)

(assert (=> b!5575166 (= e!3440422 (isEmptyExpr!1114 lt!2252496))))

(declare-fun b!5575167 () Bool)

(declare-fun e!3440420 () Bool)

(assert (=> b!5575167 (= e!3440420 e!3440422)))

(declare-fun c!975883 () Bool)

(assert (=> b!5575167 (= c!975883 (isEmpty!34642 (exprs!5438 (h!69286 zl!343))))))

(declare-fun b!5575168 () Bool)

(assert (=> b!5575168 (= e!3440417 (Concat!24399 (h!69285 (exprs!5438 (h!69286 zl!343))) (generalisedConcat!1169 (t!376230 (exprs!5438 (h!69286 zl!343))))))))

(declare-fun b!5575169 () Bool)

(assert (=> b!5575169 (= e!3440419 e!3440417)))

(declare-fun c!975886 () Bool)

(assert (=> b!5575169 (= c!975886 (is-Cons!62837 (exprs!5438 (h!69286 zl!343))))))

(declare-fun d!1762763 () Bool)

(assert (=> d!1762763 e!3440420))

(declare-fun res!2366368 () Bool)

(assert (=> d!1762763 (=> (not res!2366368) (not e!3440420))))

(assert (=> d!1762763 (= res!2366368 (validRegex!7290 lt!2252496))))

(assert (=> d!1762763 (= lt!2252496 e!3440419)))

(declare-fun c!975885 () Bool)

(declare-fun e!3440421 () Bool)

(assert (=> d!1762763 (= c!975885 e!3440421)))

(declare-fun res!2366369 () Bool)

(assert (=> d!1762763 (=> (not res!2366369) (not e!3440421))))

(assert (=> d!1762763 (= res!2366369 (is-Cons!62837 (exprs!5438 (h!69286 zl!343))))))

(declare-fun lambda!298826 () Int)

(declare-fun forall!14725 (List!62961 Int) Bool)

(assert (=> d!1762763 (forall!14725 (exprs!5438 (h!69286 zl!343)) lambda!298826)))

(assert (=> d!1762763 (= (generalisedConcat!1169 (exprs!5438 (h!69286 zl!343))) lt!2252496)))

(declare-fun b!5575165 () Bool)

(assert (=> b!5575165 (= e!3440421 (isEmpty!34642 (t!376230 (exprs!5438 (h!69286 zl!343)))))))

(assert (= (and d!1762763 res!2366369) b!5575165))

(assert (= (and d!1762763 c!975885) b!5575164))

(assert (= (and d!1762763 (not c!975885)) b!5575169))

(assert (= (and b!5575169 c!975886) b!5575168))

(assert (= (and b!5575169 (not c!975886)) b!5575160))

(assert (= (and d!1762763 res!2366368) b!5575167))

(assert (= (and b!5575167 c!975883) b!5575166))

(assert (= (and b!5575167 (not c!975883)) b!5575162))

(assert (= (and b!5575162 c!975884) b!5575163))

(assert (= (and b!5575162 (not c!975884)) b!5575161))

(assert (=> b!5575165 m!6558370))

(declare-fun m!6558560 () Bool)

(assert (=> b!5575161 m!6558560))

(declare-fun m!6558562 () Bool)

(assert (=> b!5575162 m!6558562))

(assert (=> b!5575162 m!6558562))

(declare-fun m!6558564 () Bool)

(assert (=> b!5575162 m!6558564))

(declare-fun m!6558566 () Bool)

(assert (=> d!1762763 m!6558566))

(declare-fun m!6558568 () Bool)

(assert (=> d!1762763 m!6558568))

(declare-fun m!6558570 () Bool)

(assert (=> b!5575168 m!6558570))

(declare-fun m!6558572 () Bool)

(assert (=> b!5575167 m!6558572))

(declare-fun m!6558574 () Bool)

(assert (=> b!5575166 m!6558574))

(declare-fun m!6558576 () Bool)

(assert (=> b!5575163 m!6558576))

(assert (=> b!5574926 d!1762763))

(declare-fun bs!1290192 () Bool)

(declare-fun d!1762765 () Bool)

(assert (= bs!1290192 (and d!1762765 d!1762763)))

(declare-fun lambda!298829 () Int)

(assert (=> bs!1290192 (= lambda!298829 lambda!298826)))

(assert (=> d!1762765 (= (inv!82133 setElem!37076) (forall!14725 (exprs!5438 setElem!37076) lambda!298829))))

(declare-fun bs!1290193 () Bool)

(assert (= bs!1290193 d!1762765))

(declare-fun m!6558578 () Bool)

(assert (=> bs!1290193 m!6558578))

(assert (=> setNonEmpty!37076 d!1762765))

(declare-fun b!5575188 () Bool)

(declare-fun res!2366384 () Bool)

(declare-fun e!3440437 () Bool)

(assert (=> b!5575188 (=> (not res!2366384) (not e!3440437))))

(declare-fun call!416640 () Bool)

(assert (=> b!5575188 (= res!2366384 call!416640)))

(declare-fun e!3440443 () Bool)

(assert (=> b!5575188 (= e!3440443 e!3440437)))

(declare-fun bm!416634 () Bool)

(declare-fun call!416639 () Bool)

(declare-fun c!975892 () Bool)

(assert (=> bm!416634 (= call!416639 (validRegex!7290 (ite c!975892 (regTwo!31621 r!7292) (regTwo!31620 r!7292))))))

(declare-fun b!5575189 () Bool)

(declare-fun res!2366382 () Bool)

(declare-fun e!3440441 () Bool)

(assert (=> b!5575189 (=> res!2366382 e!3440441)))

(assert (=> b!5575189 (= res!2366382 (not (is-Concat!24399 r!7292)))))

(assert (=> b!5575189 (= e!3440443 e!3440441)))

(declare-fun call!416641 () Bool)

(declare-fun c!975891 () Bool)

(declare-fun bm!416635 () Bool)

(assert (=> bm!416635 (= call!416641 (validRegex!7290 (ite c!975891 (reg!15883 r!7292) (ite c!975892 (regOne!31621 r!7292) (regOne!31620 r!7292)))))))

(declare-fun d!1762767 () Bool)

(declare-fun res!2366383 () Bool)

(declare-fun e!3440439 () Bool)

(assert (=> d!1762767 (=> res!2366383 e!3440439)))

(assert (=> d!1762767 (= res!2366383 (is-ElementMatch!15554 r!7292))))

(assert (=> d!1762767 (= (validRegex!7290 r!7292) e!3440439)))

(declare-fun b!5575190 () Bool)

(declare-fun e!3440438 () Bool)

(assert (=> b!5575190 (= e!3440441 e!3440438)))

(declare-fun res!2366380 () Bool)

(assert (=> b!5575190 (=> (not res!2366380) (not e!3440438))))

(assert (=> b!5575190 (= res!2366380 call!416640)))

(declare-fun b!5575191 () Bool)

(assert (=> b!5575191 (= e!3440438 call!416639)))

(declare-fun b!5575192 () Bool)

(declare-fun e!3440440 () Bool)

(declare-fun e!3440442 () Bool)

(assert (=> b!5575192 (= e!3440440 e!3440442)))

(declare-fun res!2366381 () Bool)

(assert (=> b!5575192 (= res!2366381 (not (nullable!5586 (reg!15883 r!7292))))))

(assert (=> b!5575192 (=> (not res!2366381) (not e!3440442))))

(declare-fun b!5575193 () Bool)

(assert (=> b!5575193 (= e!3440437 call!416639)))

(declare-fun b!5575194 () Bool)

(assert (=> b!5575194 (= e!3440442 call!416641)))

(declare-fun b!5575195 () Bool)

(assert (=> b!5575195 (= e!3440439 e!3440440)))

(assert (=> b!5575195 (= c!975891 (is-Star!15554 r!7292))))

(declare-fun bm!416636 () Bool)

(assert (=> bm!416636 (= call!416640 call!416641)))

(declare-fun b!5575196 () Bool)

(assert (=> b!5575196 (= e!3440440 e!3440443)))

(assert (=> b!5575196 (= c!975892 (is-Union!15554 r!7292))))

(assert (= (and d!1762767 (not res!2366383)) b!5575195))

(assert (= (and b!5575195 c!975891) b!5575192))

(assert (= (and b!5575195 (not c!975891)) b!5575196))

(assert (= (and b!5575192 res!2366381) b!5575194))

(assert (= (and b!5575196 c!975892) b!5575188))

(assert (= (and b!5575196 (not c!975892)) b!5575189))

(assert (= (and b!5575188 res!2366384) b!5575193))

(assert (= (and b!5575189 (not res!2366382)) b!5575190))

(assert (= (and b!5575190 res!2366380) b!5575191))

(assert (= (or b!5575193 b!5575191) bm!416634))

(assert (= (or b!5575188 b!5575190) bm!416636))

(assert (= (or b!5575194 bm!416636) bm!416635))

(declare-fun m!6558580 () Bool)

(assert (=> bm!416634 m!6558580))

(declare-fun m!6558582 () Bool)

(assert (=> bm!416635 m!6558582))

(declare-fun m!6558584 () Bool)

(assert (=> b!5575192 m!6558584))

(assert (=> start!579136 d!1762767))

(declare-fun d!1762769 () Bool)

(declare-fun nullableFct!1700 (Regex!15554) Bool)

(assert (=> d!1762769 (= (nullable!5586 (regOne!31621 (regOne!31620 r!7292))) (nullableFct!1700 (regOne!31621 (regOne!31620 r!7292))))))

(declare-fun bs!1290194 () Bool)

(assert (= bs!1290194 d!1762769))

(declare-fun m!6558586 () Bool)

(assert (=> bs!1290194 m!6558586))

(assert (=> b!5574945 d!1762769))

(declare-fun d!1762771 () Bool)

(declare-fun choose!42237 ((Set Context!9876) Int) (Set Context!9876))

(assert (=> d!1762771 (= (flatMap!1167 lt!2252399 lambda!298801) (choose!42237 lt!2252399 lambda!298801))))

(declare-fun bs!1290195 () Bool)

(assert (= bs!1290195 d!1762771))

(declare-fun m!6558588 () Bool)

(assert (=> bs!1290195 m!6558588))

(assert (=> b!5574945 d!1762771))

(declare-fun b!5575207 () Bool)

(declare-fun e!3440450 () (Set Context!9876))

(declare-fun call!416644 () (Set Context!9876))

(assert (=> b!5575207 (= e!3440450 call!416644)))

(declare-fun bm!416639 () Bool)

(assert (=> bm!416639 (= call!416644 (derivationStepZipperDown!896 (h!69285 (exprs!5438 lt!2252401)) (Context!9877 (t!376230 (exprs!5438 lt!2252401))) (h!69287 s!2326)))))

(declare-fun b!5575208 () Bool)

(declare-fun e!3440452 () (Set Context!9876))

(assert (=> b!5575208 (= e!3440452 e!3440450)))

(declare-fun c!975898 () Bool)

(assert (=> b!5575208 (= c!975898 (is-Cons!62837 (exprs!5438 lt!2252401)))))

(declare-fun d!1762773 () Bool)

(declare-fun c!975897 () Bool)

(declare-fun e!3440451 () Bool)

(assert (=> d!1762773 (= c!975897 e!3440451)))

(declare-fun res!2366387 () Bool)

(assert (=> d!1762773 (=> (not res!2366387) (not e!3440451))))

(assert (=> d!1762773 (= res!2366387 (is-Cons!62837 (exprs!5438 lt!2252401)))))

(assert (=> d!1762773 (= (derivationStepZipperUp!822 lt!2252401 (h!69287 s!2326)) e!3440452)))

(declare-fun b!5575209 () Bool)

(assert (=> b!5575209 (= e!3440450 (as set.empty (Set Context!9876)))))

(declare-fun b!5575210 () Bool)

(assert (=> b!5575210 (= e!3440451 (nullable!5586 (h!69285 (exprs!5438 lt!2252401))))))

(declare-fun b!5575211 () Bool)

(assert (=> b!5575211 (= e!3440452 (set.union call!416644 (derivationStepZipperUp!822 (Context!9877 (t!376230 (exprs!5438 lt!2252401))) (h!69287 s!2326))))))

(assert (= (and d!1762773 res!2366387) b!5575210))

(assert (= (and d!1762773 c!975897) b!5575211))

(assert (= (and d!1762773 (not c!975897)) b!5575208))

(assert (= (and b!5575208 c!975898) b!5575207))

(assert (= (and b!5575208 (not c!975898)) b!5575209))

(assert (= (or b!5575211 b!5575207) bm!416639))

(declare-fun m!6558590 () Bool)

(assert (=> bm!416639 m!6558590))

(declare-fun m!6558592 () Bool)

(assert (=> b!5575210 m!6558592))

(declare-fun m!6558594 () Bool)

(assert (=> b!5575211 m!6558594))

(assert (=> b!5574945 d!1762773))

(declare-fun d!1762775 () Bool)

(declare-fun dynLambda!24576 (Int Context!9876) (Set Context!9876))

(assert (=> d!1762775 (= (flatMap!1167 lt!2252399 lambda!298801) (dynLambda!24576 lambda!298801 lt!2252401))))

(declare-fun lt!2252499 () Unit!155588)

(declare-fun choose!42238 ((Set Context!9876) Context!9876 Int) Unit!155588)

(assert (=> d!1762775 (= lt!2252499 (choose!42238 lt!2252399 lt!2252401 lambda!298801))))

(assert (=> d!1762775 (= lt!2252399 (set.insert lt!2252401 (as set.empty (Set Context!9876))))))

(assert (=> d!1762775 (= (lemmaFlatMapOnSingletonSet!699 lt!2252399 lt!2252401 lambda!298801) lt!2252499)))

(declare-fun b_lambda!211371 () Bool)

(assert (=> (not b_lambda!211371) (not d!1762775)))

(declare-fun bs!1290196 () Bool)

(assert (= bs!1290196 d!1762775))

(assert (=> bs!1290196 m!6558410))

(declare-fun m!6558596 () Bool)

(assert (=> bs!1290196 m!6558596))

(declare-fun m!6558598 () Bool)

(assert (=> bs!1290196 m!6558598))

(assert (=> bs!1290196 m!6558406))

(assert (=> b!5574945 d!1762775))

(declare-fun e!3440455 () Bool)

(declare-fun d!1762777 () Bool)

(assert (=> d!1762777 (= (matchZipper!1692 (set.union lt!2252404 lt!2252398) (t!376232 s!2326)) e!3440455)))

(declare-fun res!2366390 () Bool)

(assert (=> d!1762777 (=> res!2366390 e!3440455)))

(assert (=> d!1762777 (= res!2366390 (matchZipper!1692 lt!2252404 (t!376232 s!2326)))))

(declare-fun lt!2252502 () Unit!155588)

(declare-fun choose!42239 ((Set Context!9876) (Set Context!9876) List!62963) Unit!155588)

(assert (=> d!1762777 (= lt!2252502 (choose!42239 lt!2252404 lt!2252398 (t!376232 s!2326)))))

(assert (=> d!1762777 (= (lemmaZipperConcatMatchesSameAsBothZippers!579 lt!2252404 lt!2252398 (t!376232 s!2326)) lt!2252502)))

(declare-fun b!5575214 () Bool)

(assert (=> b!5575214 (= e!3440455 (matchZipper!1692 lt!2252398 (t!376232 s!2326)))))

(assert (= (and d!1762777 (not res!2366390)) b!5575214))

(assert (=> d!1762777 m!6558338))

(assert (=> d!1762777 m!6558336))

(declare-fun m!6558600 () Bool)

(assert (=> d!1762777 m!6558600))

(assert (=> b!5575214 m!6558414))

(assert (=> b!5574919 d!1762777))

(declare-fun d!1762779 () Bool)

(declare-fun c!975901 () Bool)

(declare-fun isEmpty!34647 (List!62963) Bool)

(assert (=> d!1762779 (= c!975901 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440458 () Bool)

(assert (=> d!1762779 (= (matchZipper!1692 lt!2252404 (t!376232 s!2326)) e!3440458)))

(declare-fun b!5575219 () Bool)

(declare-fun nullableZipper!1554 ((Set Context!9876)) Bool)

(assert (=> b!5575219 (= e!3440458 (nullableZipper!1554 lt!2252404))))

(declare-fun b!5575220 () Bool)

(declare-fun head!11888 (List!62963) C!31378)

(declare-fun tail!10983 (List!62963) List!62963)

(assert (=> b!5575220 (= e!3440458 (matchZipper!1692 (derivationStepZipper!1653 lt!2252404 (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762779 c!975901) b!5575219))

(assert (= (and d!1762779 (not c!975901)) b!5575220))

(declare-fun m!6558602 () Bool)

(assert (=> d!1762779 m!6558602))

(declare-fun m!6558604 () Bool)

(assert (=> b!5575219 m!6558604))

(declare-fun m!6558606 () Bool)

(assert (=> b!5575220 m!6558606))

(assert (=> b!5575220 m!6558606))

(declare-fun m!6558608 () Bool)

(assert (=> b!5575220 m!6558608))

(declare-fun m!6558610 () Bool)

(assert (=> b!5575220 m!6558610))

(assert (=> b!5575220 m!6558608))

(assert (=> b!5575220 m!6558610))

(declare-fun m!6558612 () Bool)

(assert (=> b!5575220 m!6558612))

(assert (=> b!5574919 d!1762779))

(declare-fun d!1762781 () Bool)

(declare-fun c!975902 () Bool)

(assert (=> d!1762781 (= c!975902 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440459 () Bool)

(assert (=> d!1762781 (= (matchZipper!1692 (set.union lt!2252404 lt!2252398) (t!376232 s!2326)) e!3440459)))

(declare-fun b!5575221 () Bool)

(assert (=> b!5575221 (= e!3440459 (nullableZipper!1554 (set.union lt!2252404 lt!2252398)))))

(declare-fun b!5575222 () Bool)

(assert (=> b!5575222 (= e!3440459 (matchZipper!1692 (derivationStepZipper!1653 (set.union lt!2252404 lt!2252398) (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762781 c!975902) b!5575221))

(assert (= (and d!1762781 (not c!975902)) b!5575222))

(assert (=> d!1762781 m!6558602))

(declare-fun m!6558614 () Bool)

(assert (=> b!5575221 m!6558614))

(assert (=> b!5575222 m!6558606))

(assert (=> b!5575222 m!6558606))

(declare-fun m!6558616 () Bool)

(assert (=> b!5575222 m!6558616))

(assert (=> b!5575222 m!6558610))

(assert (=> b!5575222 m!6558616))

(assert (=> b!5575222 m!6558610))

(declare-fun m!6558618 () Bool)

(assert (=> b!5575222 m!6558618))

(assert (=> b!5574919 d!1762781))

(declare-fun d!1762783 () Bool)

(assert (=> d!1762783 (= (isEmpty!34642 (t!376230 (exprs!5438 (h!69286 zl!343)))) (is-Nil!62837 (t!376230 (exprs!5438 (h!69286 zl!343)))))))

(assert (=> b!5574917 d!1762783))

(declare-fun bs!1290197 () Bool)

(declare-fun b!5575265 () Bool)

(assert (= bs!1290197 (and b!5575265 d!1762757)))

(declare-fun lambda!298834 () Int)

(assert (=> bs!1290197 (not (= lambda!298834 lambda!298817))))

(declare-fun bs!1290198 () Bool)

(assert (= bs!1290198 (and b!5575265 b!5574925)))

(assert (=> bs!1290198 (not (= lambda!298834 lambda!298799))))

(declare-fun bs!1290199 () Bool)

(assert (= bs!1290199 (and b!5575265 d!1762759)))

(assert (=> bs!1290199 (not (= lambda!298834 lambda!298823))))

(assert (=> bs!1290198 (not (= lambda!298834 lambda!298800))))

(assert (=> bs!1290199 (not (= lambda!298834 lambda!298822))))

(assert (=> b!5575265 true))

(assert (=> b!5575265 true))

(declare-fun bs!1290200 () Bool)

(declare-fun b!5575257 () Bool)

(assert (= bs!1290200 (and b!5575257 b!5575265)))

(declare-fun lambda!298835 () Int)

(assert (=> bs!1290200 (not (= lambda!298835 lambda!298834))))

(declare-fun bs!1290201 () Bool)

(assert (= bs!1290201 (and b!5575257 d!1762757)))

(assert (=> bs!1290201 (not (= lambda!298835 lambda!298817))))

(declare-fun bs!1290202 () Bool)

(assert (= bs!1290202 (and b!5575257 b!5574925)))

(assert (=> bs!1290202 (not (= lambda!298835 lambda!298799))))

(declare-fun bs!1290203 () Bool)

(assert (= bs!1290203 (and b!5575257 d!1762759)))

(assert (=> bs!1290203 (= lambda!298835 lambda!298823)))

(assert (=> bs!1290202 (= lambda!298835 lambda!298800)))

(assert (=> bs!1290203 (not (= lambda!298835 lambda!298822))))

(assert (=> b!5575257 true))

(assert (=> b!5575257 true))

(declare-fun b!5575255 () Bool)

(declare-fun e!3440482 () Bool)

(declare-fun e!3440480 () Bool)

(assert (=> b!5575255 (= e!3440482 e!3440480)))

(declare-fun res!2366409 () Bool)

(assert (=> b!5575255 (= res!2366409 (not (is-EmptyLang!15554 r!7292)))))

(assert (=> b!5575255 (=> (not res!2366409) (not e!3440480))))

(declare-fun b!5575256 () Bool)

(declare-fun e!3440478 () Bool)

(declare-fun e!3440479 () Bool)

(assert (=> b!5575256 (= e!3440478 e!3440479)))

(declare-fun res!2366407 () Bool)

(assert (=> b!5575256 (= res!2366407 (matchRSpec!2657 (regOne!31621 r!7292) s!2326))))

(assert (=> b!5575256 (=> res!2366407 e!3440479)))

(declare-fun e!3440483 () Bool)

(declare-fun call!416649 () Bool)

(assert (=> b!5575257 (= e!3440483 call!416649)))

(declare-fun b!5575258 () Bool)

(declare-fun res!2366408 () Bool)

(declare-fun e!3440481 () Bool)

(assert (=> b!5575258 (=> res!2366408 e!3440481)))

(declare-fun call!416650 () Bool)

(assert (=> b!5575258 (= res!2366408 call!416650)))

(assert (=> b!5575258 (= e!3440483 e!3440481)))

(declare-fun bm!416644 () Bool)

(assert (=> bm!416644 (= call!416650 (isEmpty!34647 s!2326))))

(declare-fun c!975911 () Bool)

(declare-fun bm!416645 () Bool)

(assert (=> bm!416645 (= call!416649 (Exists!2654 (ite c!975911 lambda!298834 lambda!298835)))))

(declare-fun b!5575259 () Bool)

(assert (=> b!5575259 (= e!3440478 e!3440483)))

(assert (=> b!5575259 (= c!975911 (is-Star!15554 r!7292))))

(declare-fun b!5575261 () Bool)

(declare-fun c!975913 () Bool)

(assert (=> b!5575261 (= c!975913 (is-Union!15554 r!7292))))

(declare-fun e!3440484 () Bool)

(assert (=> b!5575261 (= e!3440484 e!3440478)))

(declare-fun b!5575262 () Bool)

(assert (=> b!5575262 (= e!3440479 (matchRSpec!2657 (regTwo!31621 r!7292) s!2326))))

(declare-fun b!5575263 () Bool)

(declare-fun c!975912 () Bool)

(assert (=> b!5575263 (= c!975912 (is-ElementMatch!15554 r!7292))))

(assert (=> b!5575263 (= e!3440480 e!3440484)))

(declare-fun b!5575260 () Bool)

(assert (=> b!5575260 (= e!3440482 call!416650)))

(declare-fun d!1762785 () Bool)

(declare-fun c!975914 () Bool)

(assert (=> d!1762785 (= c!975914 (is-EmptyExpr!15554 r!7292))))

(assert (=> d!1762785 (= (matchRSpec!2657 r!7292 s!2326) e!3440482)))

(declare-fun b!5575264 () Bool)

(assert (=> b!5575264 (= e!3440484 (= s!2326 (Cons!62839 (c!975839 r!7292) Nil!62839)))))

(assert (=> b!5575265 (= e!3440481 call!416649)))

(assert (= (and d!1762785 c!975914) b!5575260))

(assert (= (and d!1762785 (not c!975914)) b!5575255))

(assert (= (and b!5575255 res!2366409) b!5575263))

(assert (= (and b!5575263 c!975912) b!5575264))

(assert (= (and b!5575263 (not c!975912)) b!5575261))

(assert (= (and b!5575261 c!975913) b!5575256))

(assert (= (and b!5575261 (not c!975913)) b!5575259))

(assert (= (and b!5575256 (not res!2366407)) b!5575262))

(assert (= (and b!5575259 c!975911) b!5575258))

(assert (= (and b!5575259 (not c!975911)) b!5575257))

(assert (= (and b!5575258 (not res!2366408)) b!5575265))

(assert (= (or b!5575265 b!5575257) bm!416645))

(assert (= (or b!5575260 b!5575258) bm!416644))

(declare-fun m!6558620 () Bool)

(assert (=> b!5575256 m!6558620))

(declare-fun m!6558622 () Bool)

(assert (=> bm!416644 m!6558622))

(declare-fun m!6558624 () Bool)

(assert (=> bm!416645 m!6558624))

(declare-fun m!6558626 () Bool)

(assert (=> b!5575262 m!6558626))

(assert (=> b!5574937 d!1762785))

(declare-fun b!5575294 () Bool)

(declare-fun res!2366426 () Bool)

(declare-fun e!3440504 () Bool)

(assert (=> b!5575294 (=> res!2366426 e!3440504)))

(declare-fun e!3440499 () Bool)

(assert (=> b!5575294 (= res!2366426 e!3440499)))

(declare-fun res!2366427 () Bool)

(assert (=> b!5575294 (=> (not res!2366427) (not e!3440499))))

(declare-fun lt!2252505 () Bool)

(assert (=> b!5575294 (= res!2366427 lt!2252505)))

(declare-fun b!5575295 () Bool)

(declare-fun e!3440503 () Bool)

(assert (=> b!5575295 (= e!3440503 (not (= (head!11888 s!2326) (c!975839 r!7292))))))

(declare-fun b!5575296 () Bool)

(declare-fun res!2366428 () Bool)

(assert (=> b!5575296 (=> (not res!2366428) (not e!3440499))))

(assert (=> b!5575296 (= res!2366428 (isEmpty!34647 (tail!10983 s!2326)))))

(declare-fun b!5575297 () Bool)

(declare-fun e!3440501 () Bool)

(declare-fun derivativeStep!4407 (Regex!15554 C!31378) Regex!15554)

(assert (=> b!5575297 (= e!3440501 (matchR!7739 (derivativeStep!4407 r!7292 (head!11888 s!2326)) (tail!10983 s!2326)))))

(declare-fun b!5575298 () Bool)

(declare-fun res!2366430 () Bool)

(assert (=> b!5575298 (=> (not res!2366430) (not e!3440499))))

(declare-fun call!416653 () Bool)

(assert (=> b!5575298 (= res!2366430 (not call!416653))))

(declare-fun d!1762787 () Bool)

(declare-fun e!3440505 () Bool)

(assert (=> d!1762787 e!3440505))

(declare-fun c!975923 () Bool)

(assert (=> d!1762787 (= c!975923 (is-EmptyExpr!15554 r!7292))))

(assert (=> d!1762787 (= lt!2252505 e!3440501)))

(declare-fun c!975922 () Bool)

(assert (=> d!1762787 (= c!975922 (isEmpty!34647 s!2326))))

(assert (=> d!1762787 (validRegex!7290 r!7292)))

(assert (=> d!1762787 (= (matchR!7739 r!7292 s!2326) lt!2252505)))

(declare-fun b!5575299 () Bool)

(assert (=> b!5575299 (= e!3440501 (nullable!5586 r!7292))))

(declare-fun b!5575300 () Bool)

(declare-fun res!2366432 () Bool)

(assert (=> b!5575300 (=> res!2366432 e!3440504)))

(assert (=> b!5575300 (= res!2366432 (not (is-ElementMatch!15554 r!7292)))))

(declare-fun e!3440500 () Bool)

(assert (=> b!5575300 (= e!3440500 e!3440504)))

(declare-fun b!5575301 () Bool)

(assert (=> b!5575301 (= e!3440505 (= lt!2252505 call!416653))))

(declare-fun b!5575302 () Bool)

(declare-fun e!3440502 () Bool)

(assert (=> b!5575302 (= e!3440502 e!3440503)))

(declare-fun res!2366433 () Bool)

(assert (=> b!5575302 (=> res!2366433 e!3440503)))

(assert (=> b!5575302 (= res!2366433 call!416653)))

(declare-fun bm!416648 () Bool)

(assert (=> bm!416648 (= call!416653 (isEmpty!34647 s!2326))))

(declare-fun b!5575303 () Bool)

(assert (=> b!5575303 (= e!3440505 e!3440500)))

(declare-fun c!975921 () Bool)

(assert (=> b!5575303 (= c!975921 (is-EmptyLang!15554 r!7292))))

(declare-fun b!5575304 () Bool)

(assert (=> b!5575304 (= e!3440499 (= (head!11888 s!2326) (c!975839 r!7292)))))

(declare-fun b!5575305 () Bool)

(declare-fun res!2366429 () Bool)

(assert (=> b!5575305 (=> res!2366429 e!3440503)))

(assert (=> b!5575305 (= res!2366429 (not (isEmpty!34647 (tail!10983 s!2326))))))

(declare-fun b!5575306 () Bool)

(assert (=> b!5575306 (= e!3440504 e!3440502)))

(declare-fun res!2366431 () Bool)

(assert (=> b!5575306 (=> (not res!2366431) (not e!3440502))))

(assert (=> b!5575306 (= res!2366431 (not lt!2252505))))

(declare-fun b!5575307 () Bool)

(assert (=> b!5575307 (= e!3440500 (not lt!2252505))))

(assert (= (and d!1762787 c!975922) b!5575299))

(assert (= (and d!1762787 (not c!975922)) b!5575297))

(assert (= (and d!1762787 c!975923) b!5575301))

(assert (= (and d!1762787 (not c!975923)) b!5575303))

(assert (= (and b!5575303 c!975921) b!5575307))

(assert (= (and b!5575303 (not c!975921)) b!5575300))

(assert (= (and b!5575300 (not res!2366432)) b!5575294))

(assert (= (and b!5575294 res!2366427) b!5575298))

(assert (= (and b!5575298 res!2366430) b!5575296))

(assert (= (and b!5575296 res!2366428) b!5575304))

(assert (= (and b!5575294 (not res!2366426)) b!5575306))

(assert (= (and b!5575306 res!2366431) b!5575302))

(assert (= (and b!5575302 (not res!2366433)) b!5575305))

(assert (= (and b!5575305 (not res!2366429)) b!5575295))

(assert (= (or b!5575301 b!5575298 b!5575302) bm!416648))

(assert (=> bm!416648 m!6558622))

(declare-fun m!6558628 () Bool)

(assert (=> b!5575305 m!6558628))

(assert (=> b!5575305 m!6558628))

(declare-fun m!6558630 () Bool)

(assert (=> b!5575305 m!6558630))

(declare-fun m!6558632 () Bool)

(assert (=> b!5575297 m!6558632))

(assert (=> b!5575297 m!6558632))

(declare-fun m!6558634 () Bool)

(assert (=> b!5575297 m!6558634))

(assert (=> b!5575297 m!6558628))

(assert (=> b!5575297 m!6558634))

(assert (=> b!5575297 m!6558628))

(declare-fun m!6558636 () Bool)

(assert (=> b!5575297 m!6558636))

(assert (=> b!5575295 m!6558632))

(declare-fun m!6558638 () Bool)

(assert (=> b!5575299 m!6558638))

(assert (=> b!5575304 m!6558632))

(assert (=> d!1762787 m!6558622))

(assert (=> d!1762787 m!6558392))

(assert (=> b!5575296 m!6558628))

(assert (=> b!5575296 m!6558628))

(assert (=> b!5575296 m!6558630))

(assert (=> b!5574937 d!1762787))

(declare-fun d!1762789 () Bool)

(assert (=> d!1762789 (= (matchR!7739 r!7292 s!2326) (matchRSpec!2657 r!7292 s!2326))))

(declare-fun lt!2252508 () Unit!155588)

(declare-fun choose!42240 (Regex!15554 List!62963) Unit!155588)

(assert (=> d!1762789 (= lt!2252508 (choose!42240 r!7292 s!2326))))

(assert (=> d!1762789 (validRegex!7290 r!7292)))

(assert (=> d!1762789 (= (mainMatchTheorem!2657 r!7292 s!2326) lt!2252508)))

(declare-fun bs!1290204 () Bool)

(assert (= bs!1290204 d!1762789))

(assert (=> bs!1290204 m!6558376))

(assert (=> bs!1290204 m!6558374))

(declare-fun m!6558640 () Bool)

(assert (=> bs!1290204 m!6558640))

(assert (=> bs!1290204 m!6558392))

(assert (=> b!5574937 d!1762789))

(declare-fun d!1762791 () Bool)

(declare-fun lt!2252511 () Regex!15554)

(assert (=> d!1762791 (validRegex!7290 lt!2252511)))

(assert (=> d!1762791 (= lt!2252511 (generalisedUnion!1417 (unfocusZipperList!982 zl!343)))))

(assert (=> d!1762791 (= (unfocusZipper!1296 zl!343) lt!2252511)))

(declare-fun bs!1290205 () Bool)

(assert (= bs!1290205 d!1762791))

(declare-fun m!6558642 () Bool)

(assert (=> bs!1290205 m!6558642))

(assert (=> bs!1290205 m!6558352))

(assert (=> bs!1290205 m!6558352))

(assert (=> bs!1290205 m!6558354))

(assert (=> b!5574927 d!1762791))

(declare-fun d!1762793 () Bool)

(declare-fun c!975924 () Bool)

(assert (=> d!1762793 (= c!975924 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440506 () Bool)

(assert (=> d!1762793 (= (matchZipper!1692 lt!2252391 (t!376232 s!2326)) e!3440506)))

(declare-fun b!5575308 () Bool)

(assert (=> b!5575308 (= e!3440506 (nullableZipper!1554 lt!2252391))))

(declare-fun b!5575309 () Bool)

(assert (=> b!5575309 (= e!3440506 (matchZipper!1692 (derivationStepZipper!1653 lt!2252391 (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762793 c!975924) b!5575308))

(assert (= (and d!1762793 (not c!975924)) b!5575309))

(assert (=> d!1762793 m!6558602))

(declare-fun m!6558644 () Bool)

(assert (=> b!5575308 m!6558644))

(assert (=> b!5575309 m!6558606))

(assert (=> b!5575309 m!6558606))

(declare-fun m!6558646 () Bool)

(assert (=> b!5575309 m!6558646))

(assert (=> b!5575309 m!6558610))

(assert (=> b!5575309 m!6558646))

(assert (=> b!5575309 m!6558610))

(declare-fun m!6558648 () Bool)

(assert (=> b!5575309 m!6558648))

(assert (=> b!5574921 d!1762793))

(declare-fun bs!1290206 () Bool)

(declare-fun d!1762795 () Bool)

(assert (= bs!1290206 (and d!1762795 d!1762763)))

(declare-fun lambda!298836 () Int)

(assert (=> bs!1290206 (= lambda!298836 lambda!298826)))

(declare-fun bs!1290207 () Bool)

(assert (= bs!1290207 (and d!1762795 d!1762765)))

(assert (=> bs!1290207 (= lambda!298836 lambda!298829)))

(assert (=> d!1762795 (= (inv!82133 (h!69286 zl!343)) (forall!14725 (exprs!5438 (h!69286 zl!343)) lambda!298836))))

(declare-fun bs!1290208 () Bool)

(assert (= bs!1290208 d!1762795))

(declare-fun m!6558650 () Bool)

(assert (=> bs!1290208 m!6558650))

(assert (=> b!5574940 d!1762795))

(assert (=> b!5574939 d!1762779))

(declare-fun d!1762797 () Bool)

(declare-fun c!975925 () Bool)

(assert (=> d!1762797 (= c!975925 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440507 () Bool)

(assert (=> d!1762797 (= (matchZipper!1692 lt!2252397 (t!376232 s!2326)) e!3440507)))

(declare-fun b!5575310 () Bool)

(assert (=> b!5575310 (= e!3440507 (nullableZipper!1554 lt!2252397))))

(declare-fun b!5575311 () Bool)

(assert (=> b!5575311 (= e!3440507 (matchZipper!1692 (derivationStepZipper!1653 lt!2252397 (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762797 c!975925) b!5575310))

(assert (= (and d!1762797 (not c!975925)) b!5575311))

(assert (=> d!1762797 m!6558602))

(declare-fun m!6558652 () Bool)

(assert (=> b!5575310 m!6558652))

(assert (=> b!5575311 m!6558606))

(assert (=> b!5575311 m!6558606))

(declare-fun m!6558654 () Bool)

(assert (=> b!5575311 m!6558654))

(assert (=> b!5575311 m!6558610))

(assert (=> b!5575311 m!6558654))

(assert (=> b!5575311 m!6558610))

(declare-fun m!6558656 () Bool)

(assert (=> b!5575311 m!6558656))

(assert (=> b!5574939 d!1762797))

(declare-fun d!1762799 () Bool)

(declare-fun c!975926 () Bool)

(assert (=> d!1762799 (= c!975926 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440508 () Bool)

(assert (=> d!1762799 (= (matchZipper!1692 lt!2252402 (t!376232 s!2326)) e!3440508)))

(declare-fun b!5575312 () Bool)

(assert (=> b!5575312 (= e!3440508 (nullableZipper!1554 lt!2252402))))

(declare-fun b!5575313 () Bool)

(assert (=> b!5575313 (= e!3440508 (matchZipper!1692 (derivationStepZipper!1653 lt!2252402 (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762799 c!975926) b!5575312))

(assert (= (and d!1762799 (not c!975926)) b!5575313))

(assert (=> d!1762799 m!6558602))

(declare-fun m!6558658 () Bool)

(assert (=> b!5575312 m!6558658))

(assert (=> b!5575313 m!6558606))

(assert (=> b!5575313 m!6558606))

(declare-fun m!6558660 () Bool)

(assert (=> b!5575313 m!6558660))

(assert (=> b!5575313 m!6558610))

(assert (=> b!5575313 m!6558660))

(assert (=> b!5575313 m!6558610))

(declare-fun m!6558662 () Bool)

(assert (=> b!5575313 m!6558662))

(assert (=> b!5574939 d!1762799))

(declare-fun d!1762801 () Bool)

(declare-fun e!3440509 () Bool)

(assert (=> d!1762801 (= (matchZipper!1692 (set.union lt!2252402 lt!2252391) (t!376232 s!2326)) e!3440509)))

(declare-fun res!2366434 () Bool)

(assert (=> d!1762801 (=> res!2366434 e!3440509)))

(assert (=> d!1762801 (= res!2366434 (matchZipper!1692 lt!2252402 (t!376232 s!2326)))))

(declare-fun lt!2252512 () Unit!155588)

(assert (=> d!1762801 (= lt!2252512 (choose!42239 lt!2252402 lt!2252391 (t!376232 s!2326)))))

(assert (=> d!1762801 (= (lemmaZipperConcatMatchesSameAsBothZippers!579 lt!2252402 lt!2252391 (t!376232 s!2326)) lt!2252512)))

(declare-fun b!5575314 () Bool)

(assert (=> b!5575314 (= e!3440509 (matchZipper!1692 lt!2252391 (t!376232 s!2326)))))

(assert (= (and d!1762801 (not res!2366434)) b!5575314))

(declare-fun m!6558664 () Bool)

(assert (=> d!1762801 m!6558664))

(assert (=> d!1762801 m!6558386))

(declare-fun m!6558666 () Bool)

(assert (=> d!1762801 m!6558666))

(assert (=> b!5575314 m!6558396))

(assert (=> b!5574939 d!1762801))

(declare-fun d!1762803 () Bool)

(declare-fun e!3440512 () Bool)

(assert (=> d!1762803 e!3440512))

(declare-fun res!2366437 () Bool)

(assert (=> d!1762803 (=> (not res!2366437) (not e!3440512))))

(declare-fun lt!2252515 () List!62962)

(declare-fun noDuplicate!1535 (List!62962) Bool)

(assert (=> d!1762803 (= res!2366437 (noDuplicate!1535 lt!2252515))))

(declare-fun choose!42241 ((Set Context!9876)) List!62962)

(assert (=> d!1762803 (= lt!2252515 (choose!42241 z!1189))))

(assert (=> d!1762803 (= (toList!9338 z!1189) lt!2252515)))

(declare-fun b!5575317 () Bool)

(declare-fun content!11323 (List!62962) (Set Context!9876))

(assert (=> b!5575317 (= e!3440512 (= (content!11323 lt!2252515) z!1189))))

(assert (= (and d!1762803 res!2366437) b!5575317))

(declare-fun m!6558668 () Bool)

(assert (=> d!1762803 m!6558668))

(declare-fun m!6558670 () Bool)

(assert (=> d!1762803 m!6558670))

(declare-fun m!6558672 () Bool)

(assert (=> b!5575317 m!6558672))

(assert (=> b!5574930 d!1762803))

(declare-fun bs!1290209 () Bool)

(declare-fun d!1762805 () Bool)

(assert (= bs!1290209 (and d!1762805 b!5574942)))

(declare-fun lambda!298839 () Int)

(assert (=> bs!1290209 (= lambda!298839 lambda!298801)))

(assert (=> d!1762805 true))

(assert (=> d!1762805 (= (derivationStepZipper!1653 lt!2252399 (h!69287 s!2326)) (flatMap!1167 lt!2252399 lambda!298839))))

(declare-fun bs!1290210 () Bool)

(assert (= bs!1290210 d!1762805))

(declare-fun m!6558674 () Bool)

(assert (=> bs!1290210 m!6558674))

(assert (=> b!5574920 d!1762805))

(declare-fun d!1762807 () Bool)

(declare-fun c!975929 () Bool)

(assert (=> d!1762807 (= c!975929 (isEmpty!34647 (t!376232 s!2326)))))

(declare-fun e!3440513 () Bool)

(assert (=> d!1762807 (= (matchZipper!1692 lt!2252398 (t!376232 s!2326)) e!3440513)))

(declare-fun b!5575320 () Bool)

(assert (=> b!5575320 (= e!3440513 (nullableZipper!1554 lt!2252398))))

(declare-fun b!5575321 () Bool)

(assert (=> b!5575321 (= e!3440513 (matchZipper!1692 (derivationStepZipper!1653 lt!2252398 (head!11888 (t!376232 s!2326))) (tail!10983 (t!376232 s!2326))))))

(assert (= (and d!1762807 c!975929) b!5575320))

(assert (= (and d!1762807 (not c!975929)) b!5575321))

(assert (=> d!1762807 m!6558602))

(declare-fun m!6558676 () Bool)

(assert (=> b!5575320 m!6558676))

(assert (=> b!5575321 m!6558606))

(assert (=> b!5575321 m!6558606))

(declare-fun m!6558678 () Bool)

(assert (=> b!5575321 m!6558678))

(assert (=> b!5575321 m!6558610))

(assert (=> b!5575321 m!6558678))

(assert (=> b!5575321 m!6558610))

(declare-fun m!6558680 () Bool)

(assert (=> b!5575321 m!6558680))

(assert (=> b!5574924 d!1762807))

(declare-fun bs!1290211 () Bool)

(declare-fun d!1762809 () Bool)

(assert (= bs!1290211 (and d!1762809 d!1762763)))

(declare-fun lambda!298842 () Int)

(assert (=> bs!1290211 (= lambda!298842 lambda!298826)))

(declare-fun bs!1290212 () Bool)

(assert (= bs!1290212 (and d!1762809 d!1762765)))

(assert (=> bs!1290212 (= lambda!298842 lambda!298829)))

(declare-fun bs!1290213 () Bool)

(assert (= bs!1290213 (and d!1762809 d!1762795)))

(assert (=> bs!1290213 (= lambda!298842 lambda!298836)))

(declare-fun b!5575342 () Bool)

(declare-fun e!3440527 () Bool)

(declare-fun e!3440530 () Bool)

(assert (=> b!5575342 (= e!3440527 e!3440530)))

(declare-fun c!975939 () Bool)

(assert (=> b!5575342 (= c!975939 (isEmpty!34642 (unfocusZipperList!982 zl!343)))))

(declare-fun b!5575343 () Bool)

(declare-fun e!3440526 () Regex!15554)

(assert (=> b!5575343 (= e!3440526 (h!69285 (unfocusZipperList!982 zl!343)))))

(declare-fun b!5575344 () Bool)

(declare-fun e!3440529 () Bool)

(declare-fun lt!2252518 () Regex!15554)

(declare-fun isUnion!555 (Regex!15554) Bool)

(assert (=> b!5575344 (= e!3440529 (isUnion!555 lt!2252518))))

(declare-fun b!5575345 () Bool)

(declare-fun isEmptyLang!1125 (Regex!15554) Bool)

(assert (=> b!5575345 (= e!3440530 (isEmptyLang!1125 lt!2252518))))

(declare-fun b!5575346 () Bool)

(declare-fun e!3440531 () Regex!15554)

(assert (=> b!5575346 (= e!3440531 (Union!15554 (h!69285 (unfocusZipperList!982 zl!343)) (generalisedUnion!1417 (t!376230 (unfocusZipperList!982 zl!343)))))))

(declare-fun b!5575347 () Bool)

(assert (=> b!5575347 (= e!3440529 (= lt!2252518 (head!11887 (unfocusZipperList!982 zl!343))))))

(declare-fun b!5575349 () Bool)

(declare-fun e!3440528 () Bool)

(assert (=> b!5575349 (= e!3440528 (isEmpty!34642 (t!376230 (unfocusZipperList!982 zl!343))))))

(declare-fun b!5575350 () Bool)

(assert (=> b!5575350 (= e!3440530 e!3440529)))

(declare-fun c!975941 () Bool)

(assert (=> b!5575350 (= c!975941 (isEmpty!34642 (tail!10982 (unfocusZipperList!982 zl!343))))))

(declare-fun b!5575351 () Bool)

(assert (=> b!5575351 (= e!3440531 EmptyLang!15554)))

(assert (=> d!1762809 e!3440527))

(declare-fun res!2366443 () Bool)

(assert (=> d!1762809 (=> (not res!2366443) (not e!3440527))))

(assert (=> d!1762809 (= res!2366443 (validRegex!7290 lt!2252518))))

(assert (=> d!1762809 (= lt!2252518 e!3440526)))

(declare-fun c!975940 () Bool)

(assert (=> d!1762809 (= c!975940 e!3440528)))

(declare-fun res!2366442 () Bool)

(assert (=> d!1762809 (=> (not res!2366442) (not e!3440528))))

(assert (=> d!1762809 (= res!2366442 (is-Cons!62837 (unfocusZipperList!982 zl!343)))))

(assert (=> d!1762809 (forall!14725 (unfocusZipperList!982 zl!343) lambda!298842)))

(assert (=> d!1762809 (= (generalisedUnion!1417 (unfocusZipperList!982 zl!343)) lt!2252518)))

(declare-fun b!5575348 () Bool)

(assert (=> b!5575348 (= e!3440526 e!3440531)))

(declare-fun c!975938 () Bool)

(assert (=> b!5575348 (= c!975938 (is-Cons!62837 (unfocusZipperList!982 zl!343)))))

(assert (= (and d!1762809 res!2366442) b!5575349))

(assert (= (and d!1762809 c!975940) b!5575343))

(assert (= (and d!1762809 (not c!975940)) b!5575348))

(assert (= (and b!5575348 c!975938) b!5575346))

(assert (= (and b!5575348 (not c!975938)) b!5575351))

(assert (= (and d!1762809 res!2366443) b!5575342))

(assert (= (and b!5575342 c!975939) b!5575345))

(assert (= (and b!5575342 (not c!975939)) b!5575350))

(assert (= (and b!5575350 c!975941) b!5575347))

(assert (= (and b!5575350 (not c!975941)) b!5575344))

(declare-fun m!6558682 () Bool)

(assert (=> b!5575349 m!6558682))

(declare-fun m!6558684 () Bool)

(assert (=> b!5575344 m!6558684))

(declare-fun m!6558686 () Bool)

(assert (=> d!1762809 m!6558686))

(assert (=> d!1762809 m!6558352))

(declare-fun m!6558688 () Bool)

(assert (=> d!1762809 m!6558688))

(assert (=> b!5575350 m!6558352))

(declare-fun m!6558690 () Bool)

(assert (=> b!5575350 m!6558690))

(assert (=> b!5575350 m!6558690))

(declare-fun m!6558692 () Bool)

(assert (=> b!5575350 m!6558692))

(assert (=> b!5575347 m!6558352))

(declare-fun m!6558694 () Bool)

(assert (=> b!5575347 m!6558694))

(declare-fun m!6558696 () Bool)

(assert (=> b!5575345 m!6558696))

(declare-fun m!6558698 () Bool)

(assert (=> b!5575346 m!6558698))

(assert (=> b!5575342 m!6558352))

(declare-fun m!6558700 () Bool)

(assert (=> b!5575342 m!6558700))

(assert (=> b!5574932 d!1762809))

(declare-fun bs!1290214 () Bool)

(declare-fun d!1762811 () Bool)

(assert (= bs!1290214 (and d!1762811 d!1762763)))

(declare-fun lambda!298845 () Int)

(assert (=> bs!1290214 (= lambda!298845 lambda!298826)))

(declare-fun bs!1290215 () Bool)

(assert (= bs!1290215 (and d!1762811 d!1762765)))

(assert (=> bs!1290215 (= lambda!298845 lambda!298829)))

(declare-fun bs!1290216 () Bool)

(assert (= bs!1290216 (and d!1762811 d!1762795)))

(assert (=> bs!1290216 (= lambda!298845 lambda!298836)))

(declare-fun bs!1290217 () Bool)

(assert (= bs!1290217 (and d!1762811 d!1762809)))

(assert (=> bs!1290217 (= lambda!298845 lambda!298842)))

(declare-fun lt!2252521 () List!62961)

(assert (=> d!1762811 (forall!14725 lt!2252521 lambda!298845)))

(declare-fun e!3440534 () List!62961)

(assert (=> d!1762811 (= lt!2252521 e!3440534)))

(declare-fun c!975944 () Bool)

(assert (=> d!1762811 (= c!975944 (is-Cons!62838 zl!343))))

(assert (=> d!1762811 (= (unfocusZipperList!982 zl!343) lt!2252521)))

(declare-fun b!5575356 () Bool)

(assert (=> b!5575356 (= e!3440534 (Cons!62837 (generalisedConcat!1169 (exprs!5438 (h!69286 zl!343))) (unfocusZipperList!982 (t!376231 zl!343))))))

(declare-fun b!5575357 () Bool)

(assert (=> b!5575357 (= e!3440534 Nil!62837)))

(assert (= (and d!1762811 c!975944) b!5575356))

(assert (= (and d!1762811 (not c!975944)) b!5575357))

(declare-fun m!6558702 () Bool)

(assert (=> d!1762811 m!6558702))

(assert (=> b!5575356 m!6558372))

(declare-fun m!6558704 () Bool)

(assert (=> b!5575356 m!6558704))

(assert (=> b!5574932 d!1762811))

(assert (=> b!5574922 d!1762793))

(declare-fun d!1762813 () Bool)

(assert (=> d!1762813 (= (isEmpty!34643 (t!376231 zl!343)) (is-Nil!62838 (t!376231 zl!343)))))

(assert (=> b!5574923 d!1762813))

(declare-fun d!1762815 () Bool)

(assert (=> d!1762815 (= (flatMap!1167 z!1189 lambda!298801) (dynLambda!24576 lambda!298801 (h!69286 zl!343)))))

(declare-fun lt!2252522 () Unit!155588)

(assert (=> d!1762815 (= lt!2252522 (choose!42238 z!1189 (h!69286 zl!343) lambda!298801))))

(assert (=> d!1762815 (= z!1189 (set.insert (h!69286 zl!343) (as set.empty (Set Context!9876))))))

(assert (=> d!1762815 (= (lemmaFlatMapOnSingletonSet!699 z!1189 (h!69286 zl!343) lambda!298801) lt!2252522)))

(declare-fun b_lambda!211373 () Bool)

(assert (=> (not b_lambda!211373) (not d!1762815)))

(declare-fun bs!1290218 () Bool)

(assert (= bs!1290218 d!1762815))

(assert (=> bs!1290218 m!6558368))

(declare-fun m!6558706 () Bool)

(assert (=> bs!1290218 m!6558706))

(declare-fun m!6558708 () Bool)

(assert (=> bs!1290218 m!6558708))

(declare-fun m!6558710 () Bool)

(assert (=> bs!1290218 m!6558710))

(assert (=> b!5574942 d!1762815))

(declare-fun d!1762817 () Bool)

(assert (=> d!1762817 (= (flatMap!1167 z!1189 lambda!298801) (choose!42237 z!1189 lambda!298801))))

(declare-fun bs!1290219 () Bool)

(assert (= bs!1290219 d!1762817))

(declare-fun m!6558712 () Bool)

(assert (=> bs!1290219 m!6558712))

(assert (=> b!5574942 d!1762817))

(declare-fun d!1762819 () Bool)

(assert (=> d!1762819 (= (nullable!5586 (h!69285 (exprs!5438 (h!69286 zl!343)))) (nullableFct!1700 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun bs!1290220 () Bool)

(assert (= bs!1290220 d!1762819))

(declare-fun m!6558714 () Bool)

(assert (=> bs!1290220 m!6558714))

(assert (=> b!5574942 d!1762819))

(declare-fun b!5575358 () Bool)

(declare-fun e!3440535 () (Set Context!9876))

(declare-fun call!416654 () (Set Context!9876))

(assert (=> b!5575358 (= e!3440535 call!416654)))

(declare-fun bm!416649 () Bool)

(assert (=> bm!416649 (= call!416654 (derivationStepZipperDown!896 (h!69285 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343))))))) (Context!9877 (t!376230 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343)))))))) (h!69287 s!2326)))))

(declare-fun b!5575359 () Bool)

(declare-fun e!3440537 () (Set Context!9876))

(assert (=> b!5575359 (= e!3440537 e!3440535)))

(declare-fun c!975946 () Bool)

(assert (=> b!5575359 (= c!975946 (is-Cons!62837 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343))))))))))

(declare-fun d!1762821 () Bool)

(declare-fun c!975945 () Bool)

(declare-fun e!3440536 () Bool)

(assert (=> d!1762821 (= c!975945 e!3440536)))

(declare-fun res!2366444 () Bool)

(assert (=> d!1762821 (=> (not res!2366444) (not e!3440536))))

(assert (=> d!1762821 (= res!2366444 (is-Cons!62837 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343))))))))))

(assert (=> d!1762821 (= (derivationStepZipperUp!822 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343))))) (h!69287 s!2326)) e!3440537)))

(declare-fun b!5575360 () Bool)

(assert (=> b!5575360 (= e!3440535 (as set.empty (Set Context!9876)))))

(declare-fun b!5575361 () Bool)

(assert (=> b!5575361 (= e!3440536 (nullable!5586 (h!69285 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343)))))))))))

(declare-fun b!5575362 () Bool)

(assert (=> b!5575362 (= e!3440537 (set.union call!416654 (derivationStepZipperUp!822 (Context!9877 (t!376230 (exprs!5438 (Context!9877 (Cons!62837 (h!69285 (exprs!5438 (h!69286 zl!343))) (t!376230 (exprs!5438 (h!69286 zl!343)))))))) (h!69287 s!2326))))))

(assert (= (and d!1762821 res!2366444) b!5575361))

(assert (= (and d!1762821 c!975945) b!5575362))

(assert (= (and d!1762821 (not c!975945)) b!5575359))

(assert (= (and b!5575359 c!975946) b!5575358))

(assert (= (and b!5575359 (not c!975946)) b!5575360))

(assert (= (or b!5575362 b!5575358) bm!416649))

(declare-fun m!6558716 () Bool)

(assert (=> bm!416649 m!6558716))

(declare-fun m!6558718 () Bool)

(assert (=> b!5575361 m!6558718))

(declare-fun m!6558720 () Bool)

(assert (=> b!5575362 m!6558720))

(assert (=> b!5574942 d!1762821))

(declare-fun b!5575363 () Bool)

(declare-fun e!3440538 () (Set Context!9876))

(declare-fun call!416655 () (Set Context!9876))

(assert (=> b!5575363 (= e!3440538 call!416655)))

(declare-fun bm!416650 () Bool)

(assert (=> bm!416650 (= call!416655 (derivationStepZipperDown!896 (h!69285 (exprs!5438 (h!69286 zl!343))) (Context!9877 (t!376230 (exprs!5438 (h!69286 zl!343)))) (h!69287 s!2326)))))

(declare-fun b!5575364 () Bool)

(declare-fun e!3440540 () (Set Context!9876))

(assert (=> b!5575364 (= e!3440540 e!3440538)))

(declare-fun c!975948 () Bool)

(assert (=> b!5575364 (= c!975948 (is-Cons!62837 (exprs!5438 (h!69286 zl!343))))))

(declare-fun d!1762823 () Bool)

(declare-fun c!975947 () Bool)

(declare-fun e!3440539 () Bool)

(assert (=> d!1762823 (= c!975947 e!3440539)))

(declare-fun res!2366445 () Bool)

(assert (=> d!1762823 (=> (not res!2366445) (not e!3440539))))

(assert (=> d!1762823 (= res!2366445 (is-Cons!62837 (exprs!5438 (h!69286 zl!343))))))

(assert (=> d!1762823 (= (derivationStepZipperUp!822 (h!69286 zl!343) (h!69287 s!2326)) e!3440540)))

(declare-fun b!5575365 () Bool)

(assert (=> b!5575365 (= e!3440538 (as set.empty (Set Context!9876)))))

(declare-fun b!5575366 () Bool)

(assert (=> b!5575366 (= e!3440539 (nullable!5586 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5575367 () Bool)

(assert (=> b!5575367 (= e!3440540 (set.union call!416655 (derivationStepZipperUp!822 (Context!9877 (t!376230 (exprs!5438 (h!69286 zl!343)))) (h!69287 s!2326))))))

(assert (= (and d!1762823 res!2366445) b!5575366))

(assert (= (and d!1762823 c!975947) b!5575367))

(assert (= (and d!1762823 (not c!975947)) b!5575364))

(assert (= (and b!5575364 c!975948) b!5575363))

(assert (= (and b!5575364 (not c!975948)) b!5575365))

(assert (= (or b!5575367 b!5575363) bm!416650))

(declare-fun m!6558722 () Bool)

(assert (=> bm!416650 m!6558722))

(assert (=> b!5575366 m!6558366))

(declare-fun m!6558724 () Bool)

(assert (=> b!5575367 m!6558724))

(assert (=> b!5574942 d!1762823))

(declare-fun b!5575368 () Bool)

(declare-fun e!3440545 () (Set Context!9876))

(declare-fun call!416656 () (Set Context!9876))

(assert (=> b!5575368 (= e!3440545 call!416656)))

(declare-fun b!5575369 () Bool)

(declare-fun e!3440541 () (Set Context!9876))

(assert (=> b!5575369 (= e!3440541 (set.insert lt!2252400 (as set.empty (Set Context!9876))))))

(declare-fun bm!416651 () Bool)

(declare-fun call!416661 () (Set Context!9876))

(assert (=> bm!416651 (= call!416656 call!416661)))

(declare-fun b!5575370 () Bool)

(declare-fun e!3440544 () (Set Context!9876))

(assert (=> b!5575370 (= e!3440544 (as set.empty (Set Context!9876)))))

(declare-fun c!975952 () Bool)

(declare-fun bm!416652 () Bool)

(declare-fun c!975951 () Bool)

(declare-fun c!975950 () Bool)

(declare-fun call!416659 () (Set Context!9876))

(declare-fun call!416657 () List!62961)

(assert (=> bm!416652 (= call!416659 (derivationStepZipperDown!896 (ite c!975951 (regTwo!31621 (h!69285 (exprs!5438 (h!69286 zl!343)))) (ite c!975950 (regTwo!31620 (h!69285 (exprs!5438 (h!69286 zl!343)))) (ite c!975952 (regOne!31620 (h!69285 (exprs!5438 (h!69286 zl!343)))) (reg!15883 (h!69285 (exprs!5438 (h!69286 zl!343))))))) (ite (or c!975951 c!975950) lt!2252400 (Context!9877 call!416657)) (h!69287 s!2326)))))

(declare-fun d!1762825 () Bool)

(declare-fun c!975953 () Bool)

(assert (=> d!1762825 (= c!975953 (and (is-ElementMatch!15554 (h!69285 (exprs!5438 (h!69286 zl!343)))) (= (c!975839 (h!69285 (exprs!5438 (h!69286 zl!343)))) (h!69287 s!2326))))))

(assert (=> d!1762825 (= (derivationStepZipperDown!896 (h!69285 (exprs!5438 (h!69286 zl!343))) lt!2252400 (h!69287 s!2326)) e!3440541)))

(declare-fun b!5575371 () Bool)

(declare-fun e!3440543 () (Set Context!9876))

(declare-fun call!416660 () (Set Context!9876))

(assert (=> b!5575371 (= e!3440543 (set.union call!416660 call!416659))))

(declare-fun b!5575372 () Bool)

(assert (=> b!5575372 (= e!3440544 call!416656)))

(declare-fun b!5575373 () Bool)

(declare-fun e!3440542 () Bool)

(assert (=> b!5575373 (= c!975950 e!3440542)))

(declare-fun res!2366446 () Bool)

(assert (=> b!5575373 (=> (not res!2366446) (not e!3440542))))

(assert (=> b!5575373 (= res!2366446 (is-Concat!24399 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun e!3440546 () (Set Context!9876))

(assert (=> b!5575373 (= e!3440543 e!3440546)))

(declare-fun bm!416653 () Bool)

(declare-fun call!416658 () List!62961)

(assert (=> bm!416653 (= call!416657 call!416658)))

(declare-fun b!5575374 () Bool)

(assert (=> b!5575374 (= e!3440546 e!3440545)))

(assert (=> b!5575374 (= c!975952 (is-Concat!24399 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun b!5575375 () Bool)

(assert (=> b!5575375 (= e!3440546 (set.union call!416660 call!416661))))

(declare-fun bm!416654 () Bool)

(assert (=> bm!416654 (= call!416661 call!416659)))

(declare-fun b!5575376 () Bool)

(assert (=> b!5575376 (= e!3440541 e!3440543)))

(assert (=> b!5575376 (= c!975951 (is-Union!15554 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(declare-fun bm!416655 () Bool)

(assert (=> bm!416655 (= call!416658 ($colon$colon!1621 (exprs!5438 lt!2252400) (ite (or c!975950 c!975952) (regTwo!31620 (h!69285 (exprs!5438 (h!69286 zl!343)))) (h!69285 (exprs!5438 (h!69286 zl!343))))))))

(declare-fun b!5575377 () Bool)

(declare-fun c!975949 () Bool)

(assert (=> b!5575377 (= c!975949 (is-Star!15554 (h!69285 (exprs!5438 (h!69286 zl!343)))))))

(assert (=> b!5575377 (= e!3440545 e!3440544)))

(declare-fun b!5575378 () Bool)

(assert (=> b!5575378 (= e!3440542 (nullable!5586 (regOne!31620 (h!69285 (exprs!5438 (h!69286 zl!343))))))))

(declare-fun bm!416656 () Bool)

(assert (=> bm!416656 (= call!416660 (derivationStepZipperDown!896 (ite c!975951 (regOne!31621 (h!69285 (exprs!5438 (h!69286 zl!343)))) (regOne!31620 (h!69285 (exprs!5438 (h!69286 zl!343))))) (ite c!975951 lt!2252400 (Context!9877 call!416658)) (h!69287 s!2326)))))

(assert (= (and d!1762825 c!975953) b!5575369))

(assert (= (and d!1762825 (not c!975953)) b!5575376))

(assert (= (and b!5575376 c!975951) b!5575371))

(assert (= (and b!5575376 (not c!975951)) b!5575373))

(assert (= (and b!5575373 res!2366446) b!5575378))

(assert (= (and b!5575373 c!975950) b!5575375))

(assert (= (and b!5575373 (not c!975950)) b!5575374))

(assert (= (and b!5575374 c!975952) b!5575368))

(assert (= (and b!5575374 (not c!975952)) b!5575377))

(assert (= (and b!5575377 c!975949) b!5575372))

(assert (= (and b!5575377 (not c!975949)) b!5575370))

(assert (= (or b!5575368 b!5575372) bm!416653))

(assert (= (or b!5575368 b!5575372) bm!416651))

(assert (= (or b!5575375 bm!416653) bm!416655))

(assert (= (or b!5575375 bm!416651) bm!416654))

(assert (= (or b!5575371 bm!416654) bm!416652))

(assert (= (or b!5575371 b!5575375) bm!416656))

(declare-fun m!6558726 () Bool)

(assert (=> bm!416656 m!6558726))

(assert (=> b!5575369 m!6558504))

(declare-fun m!6558728 () Bool)

(assert (=> b!5575378 m!6558728))

(declare-fun m!6558730 () Bool)

(assert (=> bm!416652 m!6558730))

(declare-fun m!6558732 () Bool)

(assert (=> bm!416655 m!6558732))

(assert (=> b!5574942 d!1762825))

(declare-fun b!5575379 () Bool)

(declare-fun e!3440547 () (Set Context!9876))

(declare-fun call!416662 () (Set Context!9876))

(assert (=> b!5575379 (= e!3440547 call!416662)))

(declare-fun bm!416657 () Bool)

(assert (=> bm!416657 (= call!416662 (derivationStepZipperDown!896 (h!69285 (exprs!5438 lt!2252400)) (Context!9877 (t!376230 (exprs!5438 lt!2252400))) (h!69287 s!2326)))))

(declare-fun b!5575380 () Bool)

(declare-fun e!3440549 () (Set Context!9876))

(assert (=> b!5575380 (= e!3440549 e!3440547)))

(declare-fun c!975955 () Bool)

(assert (=> b!5575380 (= c!975955 (is-Cons!62837 (exprs!5438 lt!2252400)))))

(declare-fun d!1762827 () Bool)

(declare-fun c!975954 () Bool)

(declare-fun e!3440548 () Bool)

(assert (=> d!1762827 (= c!975954 e!3440548)))

(declare-fun res!2366447 () Bool)

(assert (=> d!1762827 (=> (not res!2366447) (not e!3440548))))

(assert (=> d!1762827 (= res!2366447 (is-Cons!62837 (exprs!5438 lt!2252400)))))

(assert (=> d!1762827 (= (derivationStepZipperUp!822 lt!2252400 (h!69287 s!2326)) e!3440549)))

(declare-fun b!5575381 () Bool)

(assert (=> b!5575381 (= e!3440547 (as set.empty (Set Context!9876)))))

(declare-fun b!5575382 () Bool)

(assert (=> b!5575382 (= e!3440548 (nullable!5586 (h!69285 (exprs!5438 lt!2252400))))))

(declare-fun b!5575383 () Bool)

(assert (=> b!5575383 (= e!3440549 (set.union call!416662 (derivationStepZipperUp!822 (Context!9877 (t!376230 (exprs!5438 lt!2252400))) (h!69287 s!2326))))))

(assert (= (and d!1762827 res!2366447) b!5575382))

(assert (= (and d!1762827 c!975954) b!5575383))

(assert (= (and d!1762827 (not c!975954)) b!5575380))

(assert (= (and b!5575380 c!975955) b!5575379))

(assert (= (and b!5575380 (not c!975955)) b!5575381))

(assert (= (or b!5575383 b!5575379) bm!416657))

(declare-fun m!6558734 () Bool)

(assert (=> bm!416657 m!6558734))

(declare-fun m!6558736 () Bool)

(assert (=> b!5575382 m!6558736))

(declare-fun m!6558738 () Bool)

(assert (=> b!5575383 m!6558738))

(assert (=> b!5574942 d!1762827))

(declare-fun b!5575391 () Bool)

(declare-fun e!3440555 () Bool)

(declare-fun tp!1542988 () Bool)

(assert (=> b!5575391 (= e!3440555 tp!1542988)))

(declare-fun b!5575390 () Bool)

(declare-fun e!3440554 () Bool)

(declare-fun tp!1542989 () Bool)

(assert (=> b!5575390 (= e!3440554 (and (inv!82133 (h!69286 (t!376231 zl!343))) e!3440555 tp!1542989))))

(assert (=> b!5574940 (= tp!1542951 e!3440554)))

(assert (= b!5575390 b!5575391))

(assert (= (and b!5574940 (is-Cons!62838 (t!376231 zl!343))) b!5575390))

(declare-fun m!6558740 () Bool)

(assert (=> b!5575390 m!6558740))

(declare-fun b!5575402 () Bool)

(declare-fun e!3440558 () Bool)

(assert (=> b!5575402 (= e!3440558 tp_is_empty!40361)))

(declare-fun b!5575404 () Bool)

(declare-fun tp!1543001 () Bool)

(assert (=> b!5575404 (= e!3440558 tp!1543001)))

(declare-fun b!5575403 () Bool)

(declare-fun tp!1543003 () Bool)

(declare-fun tp!1543004 () Bool)

(assert (=> b!5575403 (= e!3440558 (and tp!1543003 tp!1543004))))

(assert (=> b!5574931 (= tp!1542945 e!3440558)))

(declare-fun b!5575405 () Bool)

(declare-fun tp!1543002 () Bool)

(declare-fun tp!1543000 () Bool)

(assert (=> b!5575405 (= e!3440558 (and tp!1543002 tp!1543000))))

(assert (= (and b!5574931 (is-ElementMatch!15554 (regOne!31621 r!7292))) b!5575402))

(assert (= (and b!5574931 (is-Concat!24399 (regOne!31621 r!7292))) b!5575403))

(assert (= (and b!5574931 (is-Star!15554 (regOne!31621 r!7292))) b!5575404))

(assert (= (and b!5574931 (is-Union!15554 (regOne!31621 r!7292))) b!5575405))

(declare-fun b!5575406 () Bool)

(declare-fun e!3440559 () Bool)

(assert (=> b!5575406 (= e!3440559 tp_is_empty!40361)))

(declare-fun b!5575408 () Bool)

(declare-fun tp!1543006 () Bool)

(assert (=> b!5575408 (= e!3440559 tp!1543006)))

(declare-fun b!5575407 () Bool)

(declare-fun tp!1543008 () Bool)

(declare-fun tp!1543009 () Bool)

(assert (=> b!5575407 (= e!3440559 (and tp!1543008 tp!1543009))))

(assert (=> b!5574931 (= tp!1542944 e!3440559)))

(declare-fun b!5575409 () Bool)

(declare-fun tp!1543007 () Bool)

(declare-fun tp!1543005 () Bool)

(assert (=> b!5575409 (= e!3440559 (and tp!1543007 tp!1543005))))

(assert (= (and b!5574931 (is-ElementMatch!15554 (regTwo!31621 r!7292))) b!5575406))

(assert (= (and b!5574931 (is-Concat!24399 (regTwo!31621 r!7292))) b!5575407))

(assert (= (and b!5574931 (is-Star!15554 (regTwo!31621 r!7292))) b!5575408))

(assert (= (and b!5574931 (is-Union!15554 (regTwo!31621 r!7292))) b!5575409))

(declare-fun condSetEmpty!37082 () Bool)

(assert (=> setNonEmpty!37076 (= condSetEmpty!37082 (= setRest!37076 (as set.empty (Set Context!9876))))))

(declare-fun setRes!37082 () Bool)

(assert (=> setNonEmpty!37076 (= tp!1542946 setRes!37082)))

(declare-fun setIsEmpty!37082 () Bool)

(assert (=> setIsEmpty!37082 setRes!37082))

(declare-fun e!3440562 () Bool)

(declare-fun setElem!37082 () Context!9876)

(declare-fun tp!1543015 () Bool)

(declare-fun setNonEmpty!37082 () Bool)

(assert (=> setNonEmpty!37082 (= setRes!37082 (and tp!1543015 (inv!82133 setElem!37082) e!3440562))))

(declare-fun setRest!37082 () (Set Context!9876))

(assert (=> setNonEmpty!37082 (= setRest!37076 (set.union (set.insert setElem!37082 (as set.empty (Set Context!9876))) setRest!37082))))

(declare-fun b!5575414 () Bool)

(declare-fun tp!1543014 () Bool)

(assert (=> b!5575414 (= e!3440562 tp!1543014)))

(assert (= (and setNonEmpty!37076 condSetEmpty!37082) setIsEmpty!37082))

(assert (= (and setNonEmpty!37076 (not condSetEmpty!37082)) setNonEmpty!37082))

(assert (= setNonEmpty!37082 b!5575414))

(declare-fun m!6558742 () Bool)

(assert (=> setNonEmpty!37082 m!6558742))

(declare-fun b!5575419 () Bool)

(declare-fun e!3440565 () Bool)

(declare-fun tp!1543020 () Bool)

(declare-fun tp!1543021 () Bool)

(assert (=> b!5575419 (= e!3440565 (and tp!1543020 tp!1543021))))

(assert (=> b!5574935 (= tp!1542947 e!3440565)))

(assert (= (and b!5574935 (is-Cons!62837 (exprs!5438 (h!69286 zl!343)))) b!5575419))

(declare-fun b!5575420 () Bool)

(declare-fun e!3440566 () Bool)

(assert (=> b!5575420 (= e!3440566 tp_is_empty!40361)))

(declare-fun b!5575422 () Bool)

(declare-fun tp!1543023 () Bool)

(assert (=> b!5575422 (= e!3440566 tp!1543023)))

(declare-fun b!5575421 () Bool)

(declare-fun tp!1543025 () Bool)

(declare-fun tp!1543026 () Bool)

(assert (=> b!5575421 (= e!3440566 (and tp!1543025 tp!1543026))))

(assert (=> b!5574928 (= tp!1542948 e!3440566)))

(declare-fun b!5575423 () Bool)

(declare-fun tp!1543024 () Bool)

(declare-fun tp!1543022 () Bool)

(assert (=> b!5575423 (= e!3440566 (and tp!1543024 tp!1543022))))

(assert (= (and b!5574928 (is-ElementMatch!15554 (reg!15883 r!7292))) b!5575420))

(assert (= (and b!5574928 (is-Concat!24399 (reg!15883 r!7292))) b!5575421))

(assert (= (and b!5574928 (is-Star!15554 (reg!15883 r!7292))) b!5575422))

(assert (= (and b!5574928 (is-Union!15554 (reg!15883 r!7292))) b!5575423))

(declare-fun b!5575424 () Bool)

(declare-fun e!3440567 () Bool)

(assert (=> b!5575424 (= e!3440567 tp_is_empty!40361)))

(declare-fun b!5575426 () Bool)

(declare-fun tp!1543028 () Bool)

(assert (=> b!5575426 (= e!3440567 tp!1543028)))

(declare-fun b!5575425 () Bool)

(declare-fun tp!1543030 () Bool)

(declare-fun tp!1543031 () Bool)

(assert (=> b!5575425 (= e!3440567 (and tp!1543030 tp!1543031))))

(assert (=> b!5574943 (= tp!1542952 e!3440567)))

(declare-fun b!5575427 () Bool)

(declare-fun tp!1543029 () Bool)

(declare-fun tp!1543027 () Bool)

(assert (=> b!5575427 (= e!3440567 (and tp!1543029 tp!1543027))))

(assert (= (and b!5574943 (is-ElementMatch!15554 (regOne!31620 r!7292))) b!5575424))

(assert (= (and b!5574943 (is-Concat!24399 (regOne!31620 r!7292))) b!5575425))

(assert (= (and b!5574943 (is-Star!15554 (regOne!31620 r!7292))) b!5575426))

(assert (= (and b!5574943 (is-Union!15554 (regOne!31620 r!7292))) b!5575427))

(declare-fun b!5575428 () Bool)

(declare-fun e!3440568 () Bool)

(assert (=> b!5575428 (= e!3440568 tp_is_empty!40361)))

(declare-fun b!5575430 () Bool)

(declare-fun tp!1543033 () Bool)

(assert (=> b!5575430 (= e!3440568 tp!1543033)))

(declare-fun b!5575429 () Bool)

(declare-fun tp!1543035 () Bool)

(declare-fun tp!1543036 () Bool)

(assert (=> b!5575429 (= e!3440568 (and tp!1543035 tp!1543036))))

(assert (=> b!5574943 (= tp!1542953 e!3440568)))

(declare-fun b!5575431 () Bool)

(declare-fun tp!1543034 () Bool)

(declare-fun tp!1543032 () Bool)

(assert (=> b!5575431 (= e!3440568 (and tp!1543034 tp!1543032))))

(assert (= (and b!5574943 (is-ElementMatch!15554 (regTwo!31620 r!7292))) b!5575428))

(assert (= (and b!5574943 (is-Concat!24399 (regTwo!31620 r!7292))) b!5575429))

(assert (= (and b!5574943 (is-Star!15554 (regTwo!31620 r!7292))) b!5575430))

(assert (= (and b!5574943 (is-Union!15554 (regTwo!31620 r!7292))) b!5575431))

(declare-fun b!5575432 () Bool)

(declare-fun e!3440569 () Bool)

(declare-fun tp!1543037 () Bool)

(declare-fun tp!1543038 () Bool)

(assert (=> b!5575432 (= e!3440569 (and tp!1543037 tp!1543038))))

(assert (=> b!5574918 (= tp!1542949 e!3440569)))

(assert (= (and b!5574918 (is-Cons!62837 (exprs!5438 setElem!37076))) b!5575432))

(declare-fun b!5575437 () Bool)

(declare-fun e!3440572 () Bool)

(declare-fun tp!1543041 () Bool)

(assert (=> b!5575437 (= e!3440572 (and tp_is_empty!40361 tp!1543041))))

(assert (=> b!5574938 (= tp!1542950 e!3440572)))

(assert (= (and b!5574938 (is-Cons!62839 (t!376232 s!2326))) b!5575437))

(declare-fun b_lambda!211375 () Bool)

(assert (= b_lambda!211373 (or b!5574942 b_lambda!211375)))

(declare-fun bs!1290221 () Bool)

(declare-fun d!1762829 () Bool)

(assert (= bs!1290221 (and d!1762829 b!5574942)))

(assert (=> bs!1290221 (= (dynLambda!24576 lambda!298801 (h!69286 zl!343)) (derivationStepZipperUp!822 (h!69286 zl!343) (h!69287 s!2326)))))

(assert (=> bs!1290221 m!6558362))

(assert (=> d!1762815 d!1762829))

(declare-fun b_lambda!211377 () Bool)

(assert (= b_lambda!211371 (or b!5574942 b_lambda!211377)))

(declare-fun bs!1290222 () Bool)

(declare-fun d!1762831 () Bool)

(assert (= bs!1290222 (and d!1762831 b!5574942)))

(assert (=> bs!1290222 (= (dynLambda!24576 lambda!298801 lt!2252401) (derivationStepZipperUp!822 lt!2252401 (h!69287 s!2326)))))

(assert (=> bs!1290222 m!6558412))

(assert (=> d!1762775 d!1762831))

(push 1)

(assert (not b!5575304))

(assert (not bs!1290221))

(assert (not b!5575120))

(assert (not b!5575221))

(assert (not b!5575432))

(assert (not d!1762795))

(assert (not b!5575404))

(assert (not b!5575211))

(assert (not b!5575344))

(assert (not b_lambda!211375))

(assert (not d!1762799))

(assert (not b!5575214))

(assert (not b!5575345))

(assert (not d!1762765))

(assert (not bm!416657))

(assert (not bm!416644))

(assert (not b!5575382))

(assert (not d!1762769))

(assert (not bm!416648))

(assert (not bm!416650))

(assert (not b!5575166))

(assert (not b!5575162))

(assert (not b!5575220))

(assert (not b!5575168))

(assert (not b!5575425))

(assert (not b!5575210))

(assert (not b!5575383))

(assert (not bm!416626))

(assert (not d!1762805))

(assert (not d!1762811))

(assert (not b!5575426))

(assert (not d!1762771))

(assert (not bm!416617))

(assert (not b!5575119))

(assert (not d!1762793))

(assert (not d!1762753))

(assert (not b!5575311))

(assert (not b!5575309))

(assert (not d!1762801))

(assert (not b!5575219))

(assert (not b!5575262))

(assert (not bm!416652))

(assert (not b!5575313))

(assert (not b!5575125))

(assert (not b!5575409))

(assert (not d!1762809))

(assert (not b!5575122))

(assert (not bm!416649))

(assert (not d!1762797))

(assert (not b!5575192))

(assert (not b!5575419))

(assert (not b!5575367))

(assert (not b!5575123))

(assert (not b!5575421))

(assert (not d!1762755))

(assert (not b!5575321))

(assert (not b!5575161))

(assert (not d!1762803))

(assert (not b!5575391))

(assert (not b!5575390))

(assert (not b!5575429))

(assert (not bm!416656))

(assert (not d!1762751))

(assert (not setNonEmpty!37082))

(assert (not b!5575167))

(assert (not b!5575320))

(assert (not b!5575312))

(assert (not bm!416645))

(assert (not d!1762759))

(assert (not b!5575346))

(assert (not b!5575308))

(assert (not b!5575350))

(assert (not b!5575314))

(assert (not b!5575427))

(assert (not b!5575408))

(assert (not b!5575403))

(assert (not b!5575310))

(assert (not b!5575362))

(assert (not d!1762815))

(assert (not d!1762787))

(assert (not bm!416634))

(assert (not d!1762819))

(assert (not b!5575297))

(assert (not d!1762777))

(assert (not b!5575414))

(assert (not bm!416620))

(assert (not d!1762807))

(assert (not b!5575430))

(assert (not b!5575296))

(assert (not b!5575347))

(assert (not b!5575222))

(assert (not b!5575295))

(assert (not b!5575317))

(assert (not d!1762791))

(assert (not d!1762817))

(assert (not bm!416639))

(assert (not b!5575349))

(assert (not d!1762775))

(assert (not d!1762789))

(assert (not d!1762779))

(assert (not b!5575124))

(assert (not b!5575356))

(assert (not bs!1290222))

(assert (not b!5575378))

(assert (not d!1762763))

(assert (not b!5575165))

(assert (not b!5575431))

(assert (not d!1762761))

(assert (not bm!416621))

(assert tp_is_empty!40361)

(assert (not b!5575423))

(assert (not b!5575342))

(assert (not b!5575100))

(assert (not bm!416655))

(assert (not d!1762781))

(assert (not b!5575407))

(assert (not b!5575437))

(assert (not b!5575305))

(assert (not b!5575163))

(assert (not b!5575422))

(assert (not b!5575256))

(assert (not b_lambda!211377))

(assert (not bm!416623))

(assert (not b!5575089))

(assert (not b!5575299))

(assert (not bm!416635))

(assert (not b!5575361))

(assert (not d!1762757))

(assert (not b!5575405))

(assert (not bm!416627))

(assert (not b!5575366))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

