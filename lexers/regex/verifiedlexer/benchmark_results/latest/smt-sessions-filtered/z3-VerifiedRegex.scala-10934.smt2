; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!565998 () Bool)

(assert start!565998)

(declare-fun b!5383298 () Bool)

(assert (=> b!5383298 true))

(assert (=> b!5383298 true))

(declare-fun lambda!278841 () Int)

(declare-fun lambda!278840 () Int)

(assert (=> b!5383298 (not (= lambda!278841 lambda!278840))))

(assert (=> b!5383298 true))

(assert (=> b!5383298 true))

(declare-fun b!5383318 () Bool)

(assert (=> b!5383318 true))

(declare-fun bs!1246120 () Bool)

(declare-fun b!5383320 () Bool)

(assert (= bs!1246120 (and b!5383320 b!5383298)))

(declare-datatypes ((C!30500 0))(
  ( (C!30501 (val!24952 Int)) )
))
(declare-datatypes ((Regex!15115 0))(
  ( (ElementMatch!15115 (c!938155 C!30500)) (Concat!23960 (regOne!30742 Regex!15115) (regTwo!30742 Regex!15115)) (EmptyExpr!15115) (Star!15115 (reg!15444 Regex!15115)) (EmptyLang!15115) (Union!15115 (regOne!30743 Regex!15115) (regTwo!30743 Regex!15115)) )
))
(declare-fun lt!2192297 () Regex!15115)

(declare-fun lambda!278843 () Int)

(declare-fun r!7292 () Regex!15115)

(assert (=> bs!1246120 (= (= lt!2192297 (regOne!30742 r!7292)) (= lambda!278843 lambda!278840))))

(assert (=> bs!1246120 (not (= lambda!278843 lambda!278841))))

(assert (=> b!5383320 true))

(assert (=> b!5383320 true))

(assert (=> b!5383320 true))

(declare-fun lambda!278844 () Int)

(assert (=> bs!1246120 (not (= lambda!278844 lambda!278840))))

(assert (=> bs!1246120 (= (= lt!2192297 (regOne!30742 r!7292)) (= lambda!278844 lambda!278841))))

(assert (=> b!5383320 (not (= lambda!278844 lambda!278843))))

(assert (=> b!5383320 true))

(assert (=> b!5383320 true))

(assert (=> b!5383320 true))

(declare-fun bs!1246121 () Bool)

(declare-fun b!5383323 () Bool)

(assert (= bs!1246121 (and b!5383323 b!5383298)))

(declare-datatypes ((List!61644 0))(
  ( (Nil!61520) (Cons!61520 (h!67968 C!30500) (t!374867 List!61644)) )
))
(declare-fun s!2326 () List!61644)

(declare-fun lambda!278845 () Int)

(declare-datatypes ((tuple2!64628 0))(
  ( (tuple2!64629 (_1!35617 List!61644) (_2!35617 List!61644)) )
))
(declare-fun lt!2192309 () tuple2!64628)

(assert (=> bs!1246121 (= (and (= (_1!35617 lt!2192309) s!2326) (= (reg!15444 (regOne!30742 r!7292)) (regOne!30742 r!7292)) (= lt!2192297 (regTwo!30742 r!7292))) (= lambda!278845 lambda!278840))))

(assert (=> bs!1246121 (not (= lambda!278845 lambda!278841))))

(declare-fun bs!1246122 () Bool)

(assert (= bs!1246122 (and b!5383323 b!5383320)))

(assert (=> bs!1246122 (= (and (= (_1!35617 lt!2192309) s!2326) (= (reg!15444 (regOne!30742 r!7292)) lt!2192297) (= lt!2192297 (regTwo!30742 r!7292))) (= lambda!278845 lambda!278843))))

(assert (=> bs!1246122 (not (= lambda!278845 lambda!278844))))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(declare-fun lambda!278846 () Int)

(assert (=> bs!1246122 (not (= lambda!278846 lambda!278843))))

(assert (=> bs!1246121 (not (= lambda!278846 lambda!278841))))

(assert (=> bs!1246121 (not (= lambda!278846 lambda!278840))))

(assert (=> bs!1246122 (not (= lambda!278846 lambda!278844))))

(assert (=> b!5383323 (not (= lambda!278846 lambda!278845))))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(declare-fun lambda!278847 () Int)

(assert (=> bs!1246122 (not (= lambda!278847 lambda!278843))))

(assert (=> bs!1246121 (= (and (= (_1!35617 lt!2192309) s!2326) (= (reg!15444 (regOne!30742 r!7292)) (regOne!30742 r!7292)) (= lt!2192297 (regTwo!30742 r!7292))) (= lambda!278847 lambda!278841))))

(assert (=> bs!1246121 (not (= lambda!278847 lambda!278840))))

(assert (=> b!5383323 (not (= lambda!278847 lambda!278846))))

(assert (=> bs!1246122 (= (and (= (_1!35617 lt!2192309) s!2326) (= (reg!15444 (regOne!30742 r!7292)) lt!2192297) (= lt!2192297 (regTwo!30742 r!7292))) (= lambda!278847 lambda!278844))))

(assert (=> b!5383323 (not (= lambda!278847 lambda!278845))))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(assert (=> b!5383323 true))

(declare-fun b!5383287 () Bool)

(declare-fun res!2286198 () Bool)

(declare-fun e!3339243 () Bool)

(assert (=> b!5383287 (=> res!2286198 e!3339243)))

(declare-datatypes ((List!61645 0))(
  ( (Nil!61521) (Cons!61521 (h!67969 Regex!15115) (t!374868 List!61645)) )
))
(declare-datatypes ((Context!8998 0))(
  ( (Context!8999 (exprs!4999 List!61645)) )
))
(declare-datatypes ((List!61646 0))(
  ( (Nil!61522) (Cons!61522 (h!67970 Context!8998) (t!374869 List!61646)) )
))
(declare-fun zl!343 () List!61646)

(declare-fun generalisedConcat!784 (List!61645) Regex!15115)

(assert (=> b!5383287 (= res!2286198 (not (= r!7292 (generalisedConcat!784 (exprs!4999 (h!67970 zl!343))))))))

(declare-fun b!5383288 () Bool)

(declare-fun e!3339231 () Bool)

(declare-fun e!3339233 () Bool)

(assert (=> b!5383288 (= e!3339231 e!3339233)))

(declare-fun res!2286195 () Bool)

(assert (=> b!5383288 (=> res!2286195 e!3339233)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2192298 () (InoxSet Context!8998))

(declare-fun lt!2192304 () (InoxSet Context!8998))

(assert (=> b!5383288 (= res!2286195 (not (= lt!2192298 lt!2192304)))))

(declare-fun lt!2192266 () (InoxSet Context!8998))

(declare-fun lambda!278842 () Int)

(declare-fun lt!2192275 () Context!8998)

(declare-fun flatMap!842 ((InoxSet Context!8998) Int) (InoxSet Context!8998))

(declare-fun derivationStepZipperUp!487 (Context!8998 C!30500) (InoxSet Context!8998))

(assert (=> b!5383288 (= (flatMap!842 lt!2192266 lambda!278842) (derivationStepZipperUp!487 lt!2192275 (h!67968 s!2326)))))

(declare-datatypes ((Unit!153978 0))(
  ( (Unit!153979) )
))
(declare-fun lt!2192263 () Unit!153978)

(declare-fun lemmaFlatMapOnSingletonSet!374 ((InoxSet Context!8998) Context!8998 Int) Unit!153978)

(assert (=> b!5383288 (= lt!2192263 (lemmaFlatMapOnSingletonSet!374 lt!2192266 lt!2192275 lambda!278842))))

(declare-fun lt!2192308 () (InoxSet Context!8998))

(assert (=> b!5383288 (= lt!2192308 (derivationStepZipperUp!487 lt!2192275 (h!67968 s!2326)))))

(declare-fun derivationStepZipper!1354 ((InoxSet Context!8998) C!30500) (InoxSet Context!8998))

(assert (=> b!5383288 (= lt!2192298 (derivationStepZipper!1354 lt!2192266 (h!67968 s!2326)))))

(assert (=> b!5383288 (= lt!2192266 (store ((as const (Array Context!8998 Bool)) false) lt!2192275 true))))

(declare-fun lt!2192274 () List!61645)

(assert (=> b!5383288 (= lt!2192275 (Context!8999 (Cons!61521 (reg!15444 (regOne!30742 r!7292)) lt!2192274)))))

(declare-fun b!5383289 () Bool)

(declare-fun e!3339235 () Bool)

(assert (=> b!5383289 (= e!3339235 true)))

(declare-fun lt!2192279 () List!61646)

(declare-fun lt!2192282 () (InoxSet Context!8998))

(declare-fun toList!8899 ((InoxSet Context!8998)) List!61646)

(assert (=> b!5383289 (= lt!2192279 (toList!8899 lt!2192282))))

(declare-fun b!5383290 () Bool)

(declare-fun e!3339244 () Bool)

(declare-fun tp_is_empty!39483 () Bool)

(declare-fun tp!1491746 () Bool)

(assert (=> b!5383290 (= e!3339244 (and tp_is_empty!39483 tp!1491746))))

(declare-fun b!5383291 () Bool)

(declare-fun e!3339247 () Bool)

(declare-fun tp!1491745 () Bool)

(assert (=> b!5383291 (= e!3339247 tp!1491745)))

(declare-fun b!5383292 () Bool)

(declare-fun res!2286191 () Bool)

(assert (=> b!5383292 (=> res!2286191 e!3339243)))

(declare-fun generalisedUnion!1044 (List!61645) Regex!15115)

(declare-fun unfocusZipperList!557 (List!61646) List!61645)

(assert (=> b!5383292 (= res!2286191 (not (= r!7292 (generalisedUnion!1044 (unfocusZipperList!557 zl!343)))))))

(declare-fun b!5383293 () Bool)

(declare-fun e!3339228 () Unit!153978)

(declare-fun Unit!153980 () Unit!153978)

(assert (=> b!5383293 (= e!3339228 Unit!153980)))

(declare-fun lt!2192287 () (InoxSet Context!8998))

(declare-fun lt!2192260 () Unit!153978)

(declare-fun lt!2192270 () (InoxSet Context!8998))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!352 ((InoxSet Context!8998) (InoxSet Context!8998) List!61644) Unit!153978)

(assert (=> b!5383293 (= lt!2192260 (lemmaZipperConcatMatchesSameAsBothZippers!352 lt!2192287 lt!2192270 (t!374867 s!2326)))))

(declare-fun res!2286202 () Bool)

(declare-fun matchZipper!1359 ((InoxSet Context!8998) List!61644) Bool)

(assert (=> b!5383293 (= res!2286202 (matchZipper!1359 lt!2192287 (t!374867 s!2326)))))

(declare-fun e!3339249 () Bool)

(assert (=> b!5383293 (=> res!2286202 e!3339249)))

(assert (=> b!5383293 (= (matchZipper!1359 ((_ map or) lt!2192287 lt!2192270) (t!374867 s!2326)) e!3339249)))

(declare-fun b!5383294 () Bool)

(declare-fun res!2286201 () Bool)

(declare-fun e!3339242 () Bool)

(assert (=> b!5383294 (=> res!2286201 e!3339242)))

(declare-fun lt!2192306 () tuple2!64628)

(declare-fun matchR!7300 (Regex!15115 List!61644) Bool)

(assert (=> b!5383294 (= res!2286201 (not (matchR!7300 (reg!15444 (regOne!30742 r!7292)) (_1!35617 lt!2192306))))))

(declare-fun b!5383295 () Bool)

(declare-fun e!3339245 () Bool)

(assert (=> b!5383295 (= e!3339245 (not e!3339243))))

(declare-fun res!2286197 () Bool)

(assert (=> b!5383295 (=> res!2286197 e!3339243)))

(get-info :version)

(assert (=> b!5383295 (= res!2286197 (not ((_ is Cons!61522) zl!343)))))

(declare-fun lt!2192268 () Bool)

(declare-fun lt!2192303 () Bool)

(assert (=> b!5383295 (= lt!2192268 lt!2192303)))

(declare-fun matchRSpec!2218 (Regex!15115 List!61644) Bool)

(assert (=> b!5383295 (= lt!2192303 (matchRSpec!2218 r!7292 s!2326))))

(assert (=> b!5383295 (= lt!2192268 (matchR!7300 r!7292 s!2326))))

(declare-fun lt!2192284 () Unit!153978)

(declare-fun mainMatchTheorem!2218 (Regex!15115 List!61644) Unit!153978)

(assert (=> b!5383295 (= lt!2192284 (mainMatchTheorem!2218 r!7292 s!2326))))

(declare-fun b!5383296 () Bool)

(declare-fun res!2286206 () Bool)

(declare-fun e!3339250 () Bool)

(assert (=> b!5383296 (=> res!2286206 e!3339250)))

(declare-fun isEmpty!33514 (List!61644) Bool)

(assert (=> b!5383296 (= res!2286206 (isEmpty!33514 (_1!35617 lt!2192309)))))

(declare-fun b!5383297 () Bool)

(declare-fun res!2286224 () Bool)

(assert (=> b!5383297 (=> res!2286224 e!3339243)))

(declare-fun isEmpty!33515 (List!61646) Bool)

(assert (=> b!5383297 (= res!2286224 (not (isEmpty!33515 (t!374869 zl!343))))))

(declare-fun e!3339240 () Bool)

(assert (=> b!5383298 (= e!3339243 e!3339240)))

(declare-fun res!2286223 () Bool)

(assert (=> b!5383298 (=> res!2286223 e!3339240)))

(declare-fun lt!2192262 () Bool)

(assert (=> b!5383298 (= res!2286223 (or (not (= lt!2192268 lt!2192262)) ((_ is Nil!61520) s!2326)))))

(declare-fun Exists!2296 (Int) Bool)

(assert (=> b!5383298 (= (Exists!2296 lambda!278840) (Exists!2296 lambda!278841))))

(declare-fun lt!2192294 () Unit!153978)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!950 (Regex!15115 Regex!15115 List!61644) Unit!153978)

(assert (=> b!5383298 (= lt!2192294 (lemmaExistCutMatchRandMatchRSpecEquivalent!950 (regOne!30742 r!7292) (regTwo!30742 r!7292) s!2326))))

(assert (=> b!5383298 (= lt!2192262 (Exists!2296 lambda!278840))))

(declare-datatypes ((Option!15226 0))(
  ( (None!15225) (Some!15225 (v!51254 tuple2!64628)) )
))
(declare-fun isDefined!11929 (Option!15226) Bool)

(declare-fun findConcatSeparation!1640 (Regex!15115 Regex!15115 List!61644 List!61644 List!61644) Option!15226)

(assert (=> b!5383298 (= lt!2192262 (isDefined!11929 (findConcatSeparation!1640 (regOne!30742 r!7292) (regTwo!30742 r!7292) Nil!61520 s!2326 s!2326)))))

(declare-fun lt!2192300 () Unit!153978)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1404 (Regex!15115 Regex!15115 List!61644) Unit!153978)

(assert (=> b!5383298 (= lt!2192300 (lemmaFindConcatSeparationEquivalentToExists!1404 (regOne!30742 r!7292) (regTwo!30742 r!7292) s!2326))))

(declare-fun b!5383299 () Bool)

(declare-fun res!2286211 () Bool)

(declare-fun e!3339237 () Bool)

(assert (=> b!5383299 (=> res!2286211 e!3339237)))

(declare-fun lt!2192265 () Context!8998)

(declare-fun lt!2192296 () Regex!15115)

(declare-fun unfocusZipper!857 (List!61646) Regex!15115)

(assert (=> b!5383299 (= res!2286211 (not (= (unfocusZipper!857 (Cons!61522 lt!2192265 Nil!61522)) lt!2192296)))))

(declare-fun b!5383300 () Bool)

(declare-fun e!3339230 () Bool)

(declare-fun tp!1491740 () Bool)

(declare-fun tp!1491741 () Bool)

(assert (=> b!5383300 (= e!3339230 (and tp!1491740 tp!1491741))))

(declare-fun b!5383301 () Bool)

(declare-fun res!2286210 () Bool)

(declare-fun e!3339227 () Bool)

(assert (=> b!5383301 (=> res!2286210 e!3339227)))

(assert (=> b!5383301 (= res!2286210 (or ((_ is Concat!23960) (regOne!30742 r!7292)) (not ((_ is Star!15115) (regOne!30742 r!7292)))))))

(declare-fun b!5383302 () Bool)

(declare-fun res!2286207 () Bool)

(assert (=> b!5383302 (=> res!2286207 e!3339240)))

(declare-fun isEmpty!33516 (List!61645) Bool)

(assert (=> b!5383302 (= res!2286207 (isEmpty!33516 (t!374868 (exprs!4999 (h!67970 zl!343)))))))

(declare-fun b!5383303 () Bool)

(declare-fun res!2286217 () Bool)

(assert (=> b!5383303 (=> res!2286217 e!3339233)))

(assert (=> b!5383303 (= res!2286217 (not (= (matchZipper!1359 lt!2192266 s!2326) (matchZipper!1359 lt!2192298 (t!374867 s!2326)))))))

(declare-fun res!2286199 () Bool)

(declare-fun e!3339238 () Bool)

(assert (=> start!565998 (=> (not res!2286199) (not e!3339238))))

(declare-fun validRegex!6851 (Regex!15115) Bool)

(assert (=> start!565998 (= res!2286199 (validRegex!6851 r!7292))))

(assert (=> start!565998 e!3339238))

(assert (=> start!565998 e!3339230))

(declare-fun condSetEmpty!34937 () Bool)

(declare-fun z!1189 () (InoxSet Context!8998))

(assert (=> start!565998 (= condSetEmpty!34937 (= z!1189 ((as const (Array Context!8998 Bool)) false)))))

(declare-fun setRes!34937 () Bool)

(assert (=> start!565998 setRes!34937))

(declare-fun e!3339229 () Bool)

(assert (=> start!565998 e!3339229))

(assert (=> start!565998 e!3339244))

(declare-fun b!5383304 () Bool)

(declare-fun res!2286214 () Bool)

(assert (=> b!5383304 (=> res!2286214 e!3339243)))

(assert (=> b!5383304 (= res!2286214 (or ((_ is EmptyExpr!15115) r!7292) ((_ is EmptyLang!15115) r!7292) ((_ is ElementMatch!15115) r!7292) ((_ is Union!15115) r!7292) (not ((_ is Concat!23960) r!7292))))))

(declare-fun b!5383305 () Bool)

(assert (=> b!5383305 (= e!3339242 e!3339235)))

(declare-fun res!2286196 () Bool)

(assert (=> b!5383305 (=> res!2286196 e!3339235)))

(assert (=> b!5383305 (= res!2286196 (not (validRegex!6851 lt!2192296)))))

(declare-fun lt!2192264 () (InoxSet Context!8998))

(assert (=> b!5383305 (matchZipper!1359 lt!2192264 (_1!35617 lt!2192306))))

(declare-fun lt!2192302 () Unit!153978)

(declare-fun lt!2192310 () List!61646)

(declare-fun theoremZipperRegexEquiv!445 ((InoxSet Context!8998) List!61646 Regex!15115 List!61644) Unit!153978)

(assert (=> b!5383305 (= lt!2192302 (theoremZipperRegexEquiv!445 lt!2192264 lt!2192310 (reg!15444 (regOne!30742 r!7292)) (_1!35617 lt!2192306)))))

(declare-fun lt!2192289 () List!61644)

(assert (=> b!5383305 (matchR!7300 lt!2192296 lt!2192289)))

(declare-fun lt!2192278 () Unit!153978)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!162 (Regex!15115 Regex!15115 List!61644 List!61644) Unit!153978)

(assert (=> b!5383305 (= lt!2192278 (lemmaTwoRegexMatchThenConcatMatchesConcatString!162 lt!2192297 (regTwo!30742 r!7292) (_2!35617 lt!2192306) (_2!35617 lt!2192309)))))

(declare-fun lt!2192280 () List!61644)

(assert (=> b!5383305 (matchR!7300 lt!2192297 lt!2192280)))

(declare-fun lt!2192290 () Unit!153978)

(declare-fun lemmaStarApp!36 (Regex!15115 List!61644 List!61644) Unit!153978)

(assert (=> b!5383305 (= lt!2192290 (lemmaStarApp!36 (reg!15444 (regOne!30742 r!7292)) (_1!35617 lt!2192306) (_2!35617 lt!2192306)))))

(declare-fun b!5383306 () Bool)

(declare-fun e!3339239 () Bool)

(assert (=> b!5383306 (= e!3339239 e!3339242)))

(declare-fun res!2286219 () Bool)

(assert (=> b!5383306 (=> res!2286219 e!3339242)))

(declare-fun lt!2192276 () List!61644)

(assert (=> b!5383306 (= res!2286219 (not (= lt!2192276 s!2326)))))

(declare-fun ++!13418 (List!61644 List!61644) List!61644)

(assert (=> b!5383306 (= lt!2192276 (++!13418 (_1!35617 lt!2192306) lt!2192289))))

(assert (=> b!5383306 (= lt!2192276 (++!13418 lt!2192280 (_2!35617 lt!2192309)))))

(assert (=> b!5383306 (= lt!2192289 (++!13418 (_2!35617 lt!2192306) (_2!35617 lt!2192309)))))

(declare-fun lt!2192286 () Unit!153978)

(declare-fun lemmaConcatAssociativity!2812 (List!61644 List!61644 List!61644) Unit!153978)

(assert (=> b!5383306 (= lt!2192286 (lemmaConcatAssociativity!2812 (_1!35617 lt!2192306) (_2!35617 lt!2192306) (_2!35617 lt!2192309)))))

(declare-fun b!5383307 () Bool)

(assert (=> b!5383307 (= e!3339249 (matchZipper!1359 lt!2192270 (t!374867 s!2326)))))

(declare-fun b!5383308 () Bool)

(assert (=> b!5383308 (= e!3339238 e!3339245)))

(declare-fun res!2286225 () Bool)

(assert (=> b!5383308 (=> (not res!2286225) (not e!3339245))))

(declare-fun lt!2192283 () Regex!15115)

(assert (=> b!5383308 (= res!2286225 (= r!7292 lt!2192283))))

(assert (=> b!5383308 (= lt!2192283 (unfocusZipper!857 zl!343))))

(declare-fun b!5383309 () Bool)

(declare-fun res!2286218 () Bool)

(assert (=> b!5383309 (=> res!2286218 e!3339250)))

(assert (=> b!5383309 (= res!2286218 (not (matchR!7300 lt!2192297 (_1!35617 lt!2192309))))))

(declare-fun setIsEmpty!34937 () Bool)

(assert (=> setIsEmpty!34937 setRes!34937))

(declare-fun b!5383310 () Bool)

(declare-fun e!3339241 () Bool)

(assert (=> b!5383310 (= e!3339237 e!3339241)))

(declare-fun res!2286221 () Bool)

(assert (=> b!5383310 (=> res!2286221 e!3339241)))

(assert (=> b!5383310 (= res!2286221 (not lt!2192268))))

(declare-fun e!3339246 () Bool)

(assert (=> b!5383310 e!3339246))

(declare-fun res!2286220 () Bool)

(assert (=> b!5383310 (=> (not res!2286220) (not e!3339246))))

(declare-fun lt!2192277 () Regex!15115)

(assert (=> b!5383310 (= res!2286220 (= (matchR!7300 lt!2192277 s!2326) (matchRSpec!2218 lt!2192277 s!2326)))))

(declare-fun lt!2192293 () Unit!153978)

(assert (=> b!5383310 (= lt!2192293 (mainMatchTheorem!2218 lt!2192277 s!2326))))

(declare-fun tp!1491743 () Bool)

(declare-fun e!3339236 () Bool)

(declare-fun b!5383311 () Bool)

(declare-fun inv!81034 (Context!8998) Bool)

(assert (=> b!5383311 (= e!3339229 (and (inv!81034 (h!67970 zl!343)) e!3339236 tp!1491743))))

(declare-fun b!5383312 () Bool)

(declare-fun res!2286222 () Bool)

(assert (=> b!5383312 (=> res!2286222 e!3339250)))

(assert (=> b!5383312 (= res!2286222 (not (matchR!7300 (regTwo!30742 r!7292) (_2!35617 lt!2192309))))))

(declare-fun b!5383313 () Bool)

(assert (=> b!5383313 (= e!3339227 e!3339231)))

(declare-fun res!2286203 () Bool)

(assert (=> b!5383313 (=> res!2286203 e!3339231)))

(assert (=> b!5383313 (= res!2286203 (not (= lt!2192287 lt!2192304)))))

(declare-fun derivationStepZipperDown!563 (Regex!15115 Context!8998 C!30500) (InoxSet Context!8998))

(assert (=> b!5383313 (= lt!2192304 (derivationStepZipperDown!563 (reg!15444 (regOne!30742 r!7292)) lt!2192265 (h!67968 s!2326)))))

(assert (=> b!5383313 (= lt!2192265 (Context!8999 lt!2192274))))

(assert (=> b!5383313 (= lt!2192274 (Cons!61521 lt!2192297 (t!374868 (exprs!4999 (h!67970 zl!343)))))))

(assert (=> b!5383313 (= lt!2192297 (Star!15115 (reg!15444 (regOne!30742 r!7292))))))

(declare-fun b!5383314 () Bool)

(declare-fun e!3339248 () Bool)

(declare-fun e!3339232 () Bool)

(assert (=> b!5383314 (= e!3339248 e!3339232)))

(declare-fun res!2286193 () Bool)

(assert (=> b!5383314 (=> res!2286193 e!3339232)))

(assert (=> b!5383314 (= res!2286193 (not (= (unfocusZipper!857 (Cons!61522 lt!2192275 Nil!61522)) lt!2192277)))))

(assert (=> b!5383314 (= lt!2192277 (Concat!23960 (reg!15444 (regOne!30742 r!7292)) lt!2192296))))

(declare-fun b!5383315 () Bool)

(assert (=> b!5383315 (= e!3339230 tp_is_empty!39483)))

(declare-fun b!5383316 () Bool)

(declare-fun e!3339234 () Bool)

(declare-fun nullable!5284 (Regex!15115) Bool)

(assert (=> b!5383316 (= e!3339234 (nullable!5284 (regOne!30742 (regOne!30742 r!7292))))))

(declare-fun b!5383317 () Bool)

(declare-fun tp!1491749 () Bool)

(assert (=> b!5383317 (= e!3339230 tp!1491749)))

(assert (=> b!5383318 (= e!3339240 e!3339227)))

(declare-fun res!2286209 () Bool)

(assert (=> b!5383318 (=> res!2286209 e!3339227)))

(assert (=> b!5383318 (= res!2286209 (or (and ((_ is ElementMatch!15115) (regOne!30742 r!7292)) (= (c!938155 (regOne!30742 r!7292)) (h!67968 s!2326))) ((_ is Union!15115) (regOne!30742 r!7292))))))

(declare-fun lt!2192267 () Unit!153978)

(assert (=> b!5383318 (= lt!2192267 e!3339228)))

(declare-fun c!938154 () Bool)

(assert (=> b!5383318 (= c!938154 (nullable!5284 (h!67969 (exprs!4999 (h!67970 zl!343)))))))

(assert (=> b!5383318 (= (flatMap!842 z!1189 lambda!278842) (derivationStepZipperUp!487 (h!67970 zl!343) (h!67968 s!2326)))))

(declare-fun lt!2192269 () Unit!153978)

(assert (=> b!5383318 (= lt!2192269 (lemmaFlatMapOnSingletonSet!374 z!1189 (h!67970 zl!343) lambda!278842))))

(declare-fun lt!2192259 () Context!8998)

(assert (=> b!5383318 (= lt!2192270 (derivationStepZipperUp!487 lt!2192259 (h!67968 s!2326)))))

(assert (=> b!5383318 (= lt!2192287 (derivationStepZipperDown!563 (h!67969 (exprs!4999 (h!67970 zl!343))) lt!2192259 (h!67968 s!2326)))))

(assert (=> b!5383318 (= lt!2192259 (Context!8999 (t!374868 (exprs!4999 (h!67970 zl!343)))))))

(declare-fun lt!2192261 () (InoxSet Context!8998))

(assert (=> b!5383318 (= lt!2192261 (derivationStepZipperUp!487 (Context!8999 (Cons!61521 (h!67969 (exprs!4999 (h!67970 zl!343))) (t!374868 (exprs!4999 (h!67970 zl!343))))) (h!67968 s!2326)))))

(declare-fun b!5383319 () Bool)

(declare-fun Unit!153981 () Unit!153978)

(assert (=> b!5383319 (= e!3339228 Unit!153981)))

(assert (=> b!5383320 (= e!3339241 e!3339250)))

(declare-fun res!2286208 () Bool)

(assert (=> b!5383320 (=> res!2286208 e!3339250)))

(assert (=> b!5383320 (= res!2286208 (not (= (++!13418 (_1!35617 lt!2192309) (_2!35617 lt!2192309)) s!2326)))))

(declare-fun lt!2192295 () Option!15226)

(declare-fun get!21181 (Option!15226) tuple2!64628)

(assert (=> b!5383320 (= lt!2192309 (get!21181 lt!2192295))))

(assert (=> b!5383320 (= (Exists!2296 lambda!278843) (Exists!2296 lambda!278844))))

(declare-fun lt!2192307 () Unit!153978)

(assert (=> b!5383320 (= lt!2192307 (lemmaExistCutMatchRandMatchRSpecEquivalent!950 lt!2192297 (regTwo!30742 r!7292) s!2326))))

(assert (=> b!5383320 (= (isDefined!11929 lt!2192295) (Exists!2296 lambda!278843))))

(assert (=> b!5383320 (= lt!2192295 (findConcatSeparation!1640 lt!2192297 (regTwo!30742 r!7292) Nil!61520 s!2326 s!2326))))

(declare-fun lt!2192291 () Unit!153978)

(assert (=> b!5383320 (= lt!2192291 (lemmaFindConcatSeparationEquivalentToExists!1404 lt!2192297 (regTwo!30742 r!7292) s!2326))))

(declare-fun b!5383321 () Bool)

(declare-fun res!2286216 () Bool)

(assert (=> b!5383321 (=> res!2286216 e!3339242)))

(assert (=> b!5383321 (= res!2286216 (not (matchR!7300 lt!2192297 (_2!35617 lt!2192306))))))

(declare-fun tp!1491742 () Bool)

(declare-fun setNonEmpty!34937 () Bool)

(declare-fun setElem!34937 () Context!8998)

(assert (=> setNonEmpty!34937 (= setRes!34937 (and tp!1491742 (inv!81034 setElem!34937) e!3339247))))

(declare-fun setRest!34937 () (InoxSet Context!8998))

(assert (=> setNonEmpty!34937 (= z!1189 ((_ map or) (store ((as const (Array Context!8998 Bool)) false) setElem!34937 true) setRest!34937))))

(declare-fun b!5383322 () Bool)

(declare-fun res!2286215 () Bool)

(assert (=> b!5383322 (=> res!2286215 e!3339233)))

(assert (=> b!5383322 (= res!2286215 (not (= lt!2192283 r!7292)))))

(assert (=> b!5383323 (= e!3339250 e!3339239)))

(declare-fun res!2286192 () Bool)

(assert (=> b!5383323 (=> res!2286192 e!3339239)))

(assert (=> b!5383323 (= res!2286192 (not (= (_1!35617 lt!2192309) lt!2192280)))))

(assert (=> b!5383323 (= lt!2192280 (++!13418 (_1!35617 lt!2192306) (_2!35617 lt!2192306)))))

(declare-fun lt!2192299 () Option!15226)

(assert (=> b!5383323 (= lt!2192306 (get!21181 lt!2192299))))

(assert (=> b!5383323 (= (Exists!2296 lambda!278845) (Exists!2296 lambda!278847))))

(declare-fun lt!2192272 () Unit!153978)

(assert (=> b!5383323 (= lt!2192272 (lemmaExistCutMatchRandMatchRSpecEquivalent!950 (reg!15444 (regOne!30742 r!7292)) lt!2192297 (_1!35617 lt!2192309)))))

(assert (=> b!5383323 (= (Exists!2296 lambda!278845) (Exists!2296 lambda!278846))))

(declare-fun lt!2192273 () Unit!153978)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!380 (Regex!15115 List!61644) Unit!153978)

(assert (=> b!5383323 (= lt!2192273 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!380 (reg!15444 (regOne!30742 r!7292)) (_1!35617 lt!2192309)))))

(assert (=> b!5383323 (= (isDefined!11929 lt!2192299) (Exists!2296 lambda!278845))))

(assert (=> b!5383323 (= lt!2192299 (findConcatSeparation!1640 (reg!15444 (regOne!30742 r!7292)) lt!2192297 Nil!61520 (_1!35617 lt!2192309) (_1!35617 lt!2192309)))))

(declare-fun lt!2192271 () Unit!153978)

(assert (=> b!5383323 (= lt!2192271 (lemmaFindConcatSeparationEquivalentToExists!1404 (reg!15444 (regOne!30742 r!7292)) lt!2192297 (_1!35617 lt!2192309)))))

(assert (=> b!5383323 (matchRSpec!2218 lt!2192297 (_1!35617 lt!2192309))))

(declare-fun lt!2192292 () Unit!153978)

(assert (=> b!5383323 (= lt!2192292 (mainMatchTheorem!2218 lt!2192297 (_1!35617 lt!2192309)))))

(declare-fun b!5383324 () Bool)

(declare-fun tp!1491747 () Bool)

(assert (=> b!5383324 (= e!3339236 tp!1491747)))

(declare-fun b!5383325 () Bool)

(declare-fun res!2286194 () Bool)

(assert (=> b!5383325 (=> (not res!2286194) (not e!3339238))))

(assert (=> b!5383325 (= res!2286194 (= (toList!8899 z!1189) zl!343))))

(declare-fun b!5383326 () Bool)

(assert (=> b!5383326 (= e!3339233 e!3339248)))

(declare-fun res!2286205 () Bool)

(assert (=> b!5383326 (=> res!2286205 e!3339248)))

(assert (=> b!5383326 (= res!2286205 (not (= r!7292 lt!2192296)))))

(assert (=> b!5383326 (= lt!2192296 (Concat!23960 lt!2192297 (regTwo!30742 r!7292)))))

(declare-fun b!5383327 () Bool)

(declare-fun res!2286212 () Bool)

(assert (=> b!5383327 (=> res!2286212 e!3339227)))

(assert (=> b!5383327 (= res!2286212 e!3339234)))

(declare-fun res!2286200 () Bool)

(assert (=> b!5383327 (=> (not res!2286200) (not e!3339234))))

(assert (=> b!5383327 (= res!2286200 ((_ is Concat!23960) (regOne!30742 r!7292)))))

(declare-fun b!5383328 () Bool)

(declare-fun res!2286213 () Bool)

(assert (=> b!5383328 (=> res!2286213 e!3339243)))

(assert (=> b!5383328 (= res!2286213 (not ((_ is Cons!61521) (exprs!4999 (h!67970 zl!343)))))))

(declare-fun b!5383329 () Bool)

(assert (=> b!5383329 (= e!3339246 (or (not lt!2192268) lt!2192303))))

(declare-fun b!5383330 () Bool)

(declare-fun tp!1491748 () Bool)

(declare-fun tp!1491744 () Bool)

(assert (=> b!5383330 (= e!3339230 (and tp!1491748 tp!1491744))))

(declare-fun b!5383331 () Bool)

(assert (=> b!5383331 (= e!3339232 e!3339237)))

(declare-fun res!2286204 () Bool)

(assert (=> b!5383331 (=> res!2286204 e!3339237)))

(assert (=> b!5383331 (= res!2286204 (not (= (unfocusZipper!857 lt!2192310) (reg!15444 (regOne!30742 r!7292)))))))

(declare-fun lt!2192281 () Context!8998)

(assert (=> b!5383331 (= lt!2192310 (Cons!61522 lt!2192281 Nil!61522))))

(assert (=> b!5383331 (= (flatMap!842 lt!2192282 lambda!278842) (derivationStepZipperUp!487 lt!2192265 (h!67968 s!2326)))))

(declare-fun lt!2192288 () Unit!153978)

(assert (=> b!5383331 (= lt!2192288 (lemmaFlatMapOnSingletonSet!374 lt!2192282 lt!2192265 lambda!278842))))

(assert (=> b!5383331 (= (flatMap!842 lt!2192264 lambda!278842) (derivationStepZipperUp!487 lt!2192281 (h!67968 s!2326)))))

(declare-fun lt!2192301 () Unit!153978)

(assert (=> b!5383331 (= lt!2192301 (lemmaFlatMapOnSingletonSet!374 lt!2192264 lt!2192281 lambda!278842))))

(declare-fun lt!2192305 () (InoxSet Context!8998))

(assert (=> b!5383331 (= lt!2192305 (derivationStepZipperUp!487 lt!2192265 (h!67968 s!2326)))))

(declare-fun lt!2192285 () (InoxSet Context!8998))

(assert (=> b!5383331 (= lt!2192285 (derivationStepZipperUp!487 lt!2192281 (h!67968 s!2326)))))

(assert (=> b!5383331 (= lt!2192282 (store ((as const (Array Context!8998 Bool)) false) lt!2192265 true))))

(assert (=> b!5383331 (= lt!2192264 (store ((as const (Array Context!8998 Bool)) false) lt!2192281 true))))

(assert (=> b!5383331 (= lt!2192281 (Context!8999 (Cons!61521 (reg!15444 (regOne!30742 r!7292)) Nil!61521)))))

(assert (= (and start!565998 res!2286199) b!5383325))

(assert (= (and b!5383325 res!2286194) b!5383308))

(assert (= (and b!5383308 res!2286225) b!5383295))

(assert (= (and b!5383295 (not res!2286197)) b!5383297))

(assert (= (and b!5383297 (not res!2286224)) b!5383287))

(assert (= (and b!5383287 (not res!2286198)) b!5383328))

(assert (= (and b!5383328 (not res!2286213)) b!5383292))

(assert (= (and b!5383292 (not res!2286191)) b!5383304))

(assert (= (and b!5383304 (not res!2286214)) b!5383298))

(assert (= (and b!5383298 (not res!2286223)) b!5383302))

(assert (= (and b!5383302 (not res!2286207)) b!5383318))

(assert (= (and b!5383318 c!938154) b!5383293))

(assert (= (and b!5383318 (not c!938154)) b!5383319))

(assert (= (and b!5383293 (not res!2286202)) b!5383307))

(assert (= (and b!5383318 (not res!2286209)) b!5383327))

(assert (= (and b!5383327 res!2286200) b!5383316))

(assert (= (and b!5383327 (not res!2286212)) b!5383301))

(assert (= (and b!5383301 (not res!2286210)) b!5383313))

(assert (= (and b!5383313 (not res!2286203)) b!5383288))

(assert (= (and b!5383288 (not res!2286195)) b!5383303))

(assert (= (and b!5383303 (not res!2286217)) b!5383322))

(assert (= (and b!5383322 (not res!2286215)) b!5383326))

(assert (= (and b!5383326 (not res!2286205)) b!5383314))

(assert (= (and b!5383314 (not res!2286193)) b!5383331))

(assert (= (and b!5383331 (not res!2286204)) b!5383299))

(assert (= (and b!5383299 (not res!2286211)) b!5383310))

(assert (= (and b!5383310 res!2286220) b!5383329))

(assert (= (and b!5383310 (not res!2286221)) b!5383320))

(assert (= (and b!5383320 (not res!2286208)) b!5383309))

(assert (= (and b!5383309 (not res!2286218)) b!5383312))

(assert (= (and b!5383312 (not res!2286222)) b!5383296))

(assert (= (and b!5383296 (not res!2286206)) b!5383323))

(assert (= (and b!5383323 (not res!2286192)) b!5383306))

(assert (= (and b!5383306 (not res!2286219)) b!5383294))

(assert (= (and b!5383294 (not res!2286201)) b!5383321))

(assert (= (and b!5383321 (not res!2286216)) b!5383305))

(assert (= (and b!5383305 (not res!2286196)) b!5383289))

(assert (= (and start!565998 ((_ is ElementMatch!15115) r!7292)) b!5383315))

(assert (= (and start!565998 ((_ is Concat!23960) r!7292)) b!5383330))

(assert (= (and start!565998 ((_ is Star!15115) r!7292)) b!5383317))

(assert (= (and start!565998 ((_ is Union!15115) r!7292)) b!5383300))

(assert (= (and start!565998 condSetEmpty!34937) setIsEmpty!34937))

(assert (= (and start!565998 (not condSetEmpty!34937)) setNonEmpty!34937))

(assert (= setNonEmpty!34937 b!5383291))

(assert (= b!5383311 b!5383324))

(assert (= (and start!565998 ((_ is Cons!61522) zl!343)) b!5383311))

(assert (= (and start!565998 ((_ is Cons!61520) s!2326)) b!5383290))

(declare-fun m!6409020 () Bool)

(assert (=> start!565998 m!6409020))

(declare-fun m!6409022 () Bool)

(assert (=> b!5383296 m!6409022))

(declare-fun m!6409024 () Bool)

(assert (=> setNonEmpty!34937 m!6409024))

(declare-fun m!6409026 () Bool)

(assert (=> b!5383311 m!6409026))

(declare-fun m!6409028 () Bool)

(assert (=> b!5383312 m!6409028))

(declare-fun m!6409030 () Bool)

(assert (=> b!5383320 m!6409030))

(declare-fun m!6409032 () Bool)

(assert (=> b!5383320 m!6409032))

(declare-fun m!6409034 () Bool)

(assert (=> b!5383320 m!6409034))

(declare-fun m!6409036 () Bool)

(assert (=> b!5383320 m!6409036))

(declare-fun m!6409038 () Bool)

(assert (=> b!5383320 m!6409038))

(assert (=> b!5383320 m!6409030))

(declare-fun m!6409040 () Bool)

(assert (=> b!5383320 m!6409040))

(declare-fun m!6409042 () Bool)

(assert (=> b!5383320 m!6409042))

(declare-fun m!6409044 () Bool)

(assert (=> b!5383320 m!6409044))

(declare-fun m!6409046 () Bool)

(assert (=> b!5383323 m!6409046))

(declare-fun m!6409048 () Bool)

(assert (=> b!5383323 m!6409048))

(declare-fun m!6409050 () Bool)

(assert (=> b!5383323 m!6409050))

(declare-fun m!6409052 () Bool)

(assert (=> b!5383323 m!6409052))

(declare-fun m!6409054 () Bool)

(assert (=> b!5383323 m!6409054))

(assert (=> b!5383323 m!6409046))

(declare-fun m!6409056 () Bool)

(assert (=> b!5383323 m!6409056))

(declare-fun m!6409058 () Bool)

(assert (=> b!5383323 m!6409058))

(declare-fun m!6409060 () Bool)

(assert (=> b!5383323 m!6409060))

(declare-fun m!6409062 () Bool)

(assert (=> b!5383323 m!6409062))

(assert (=> b!5383323 m!6409046))

(declare-fun m!6409064 () Bool)

(assert (=> b!5383323 m!6409064))

(declare-fun m!6409066 () Bool)

(assert (=> b!5383323 m!6409066))

(declare-fun m!6409068 () Bool)

(assert (=> b!5383323 m!6409068))

(declare-fun m!6409070 () Bool)

(assert (=> b!5383299 m!6409070))

(declare-fun m!6409072 () Bool)

(assert (=> b!5383306 m!6409072))

(declare-fun m!6409074 () Bool)

(assert (=> b!5383306 m!6409074))

(declare-fun m!6409076 () Bool)

(assert (=> b!5383306 m!6409076))

(declare-fun m!6409078 () Bool)

(assert (=> b!5383306 m!6409078))

(declare-fun m!6409080 () Bool)

(assert (=> b!5383305 m!6409080))

(declare-fun m!6409082 () Bool)

(assert (=> b!5383305 m!6409082))

(declare-fun m!6409084 () Bool)

(assert (=> b!5383305 m!6409084))

(declare-fun m!6409086 () Bool)

(assert (=> b!5383305 m!6409086))

(declare-fun m!6409088 () Bool)

(assert (=> b!5383305 m!6409088))

(declare-fun m!6409090 () Bool)

(assert (=> b!5383305 m!6409090))

(declare-fun m!6409092 () Bool)

(assert (=> b!5383305 m!6409092))

(declare-fun m!6409094 () Bool)

(assert (=> b!5383293 m!6409094))

(declare-fun m!6409096 () Bool)

(assert (=> b!5383293 m!6409096))

(declare-fun m!6409098 () Bool)

(assert (=> b!5383293 m!6409098))

(declare-fun m!6409100 () Bool)

(assert (=> b!5383313 m!6409100))

(declare-fun m!6409102 () Bool)

(assert (=> b!5383321 m!6409102))

(declare-fun m!6409104 () Bool)

(assert (=> b!5383302 m!6409104))

(declare-fun m!6409106 () Bool)

(assert (=> b!5383294 m!6409106))

(declare-fun m!6409108 () Bool)

(assert (=> b!5383298 m!6409108))

(declare-fun m!6409110 () Bool)

(assert (=> b!5383298 m!6409110))

(declare-fun m!6409112 () Bool)

(assert (=> b!5383298 m!6409112))

(declare-fun m!6409114 () Bool)

(assert (=> b!5383298 m!6409114))

(declare-fun m!6409116 () Bool)

(assert (=> b!5383298 m!6409116))

(assert (=> b!5383298 m!6409114))

(assert (=> b!5383298 m!6409108))

(declare-fun m!6409118 () Bool)

(assert (=> b!5383298 m!6409118))

(declare-fun m!6409120 () Bool)

(assert (=> b!5383292 m!6409120))

(assert (=> b!5383292 m!6409120))

(declare-fun m!6409122 () Bool)

(assert (=> b!5383292 m!6409122))

(declare-fun m!6409124 () Bool)

(assert (=> b!5383316 m!6409124))

(declare-fun m!6409126 () Bool)

(assert (=> b!5383295 m!6409126))

(declare-fun m!6409128 () Bool)

(assert (=> b!5383295 m!6409128))

(declare-fun m!6409130 () Bool)

(assert (=> b!5383295 m!6409130))

(declare-fun m!6409132 () Bool)

(assert (=> b!5383288 m!6409132))

(declare-fun m!6409134 () Bool)

(assert (=> b!5383288 m!6409134))

(declare-fun m!6409136 () Bool)

(assert (=> b!5383288 m!6409136))

(declare-fun m!6409138 () Bool)

(assert (=> b!5383288 m!6409138))

(declare-fun m!6409140 () Bool)

(assert (=> b!5383288 m!6409140))

(declare-fun m!6409142 () Bool)

(assert (=> b!5383297 m!6409142))

(declare-fun m!6409144 () Bool)

(assert (=> b!5383303 m!6409144))

(declare-fun m!6409146 () Bool)

(assert (=> b!5383303 m!6409146))

(declare-fun m!6409148 () Bool)

(assert (=> b!5383331 m!6409148))

(declare-fun m!6409150 () Bool)

(assert (=> b!5383331 m!6409150))

(declare-fun m!6409152 () Bool)

(assert (=> b!5383331 m!6409152))

(declare-fun m!6409154 () Bool)

(assert (=> b!5383331 m!6409154))

(declare-fun m!6409156 () Bool)

(assert (=> b!5383331 m!6409156))

(declare-fun m!6409158 () Bool)

(assert (=> b!5383331 m!6409158))

(declare-fun m!6409160 () Bool)

(assert (=> b!5383331 m!6409160))

(declare-fun m!6409162 () Bool)

(assert (=> b!5383331 m!6409162))

(declare-fun m!6409164 () Bool)

(assert (=> b!5383331 m!6409164))

(declare-fun m!6409166 () Bool)

(assert (=> b!5383318 m!6409166))

(declare-fun m!6409168 () Bool)

(assert (=> b!5383318 m!6409168))

(declare-fun m!6409170 () Bool)

(assert (=> b!5383318 m!6409170))

(declare-fun m!6409172 () Bool)

(assert (=> b!5383318 m!6409172))

(declare-fun m!6409174 () Bool)

(assert (=> b!5383318 m!6409174))

(declare-fun m!6409176 () Bool)

(assert (=> b!5383318 m!6409176))

(declare-fun m!6409178 () Bool)

(assert (=> b!5383318 m!6409178))

(declare-fun m!6409180 () Bool)

(assert (=> b!5383314 m!6409180))

(declare-fun m!6409182 () Bool)

(assert (=> b!5383287 m!6409182))

(declare-fun m!6409184 () Bool)

(assert (=> b!5383308 m!6409184))

(declare-fun m!6409186 () Bool)

(assert (=> b!5383289 m!6409186))

(declare-fun m!6409188 () Bool)

(assert (=> b!5383310 m!6409188))

(declare-fun m!6409190 () Bool)

(assert (=> b!5383310 m!6409190))

(declare-fun m!6409192 () Bool)

(assert (=> b!5383310 m!6409192))

(declare-fun m!6409194 () Bool)

(assert (=> b!5383309 m!6409194))

(declare-fun m!6409196 () Bool)

(assert (=> b!5383307 m!6409196))

(declare-fun m!6409198 () Bool)

(assert (=> b!5383325 m!6409198))

(check-sat (not b!5383288) (not b!5383314) (not b!5383306) (not b!5383317) tp_is_empty!39483 (not b!5383299) (not b!5383308) (not b!5383294) (not b!5383310) (not b!5383316) (not b!5383289) (not b!5383313) (not b!5383320) (not setNonEmpty!34937) (not b!5383303) (not b!5383311) (not b!5383307) (not b!5383321) (not b!5383292) (not b!5383291) (not b!5383323) (not b!5383305) (not b!5383302) (not b!5383312) (not b!5383325) (not b!5383324) (not b!5383295) (not b!5383309) (not b!5383296) (not b!5383318) (not start!565998) (not b!5383300) (not b!5383293) (not b!5383290) (not b!5383287) (not b!5383331) (not b!5383297) (not b!5383330) (not b!5383298))
(check-sat)
