; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566466 () Bool)

(assert start!566466)

(declare-fun b!5390233 () Bool)

(assert (=> b!5390233 true))

(assert (=> b!5390233 true))

(declare-fun lambda!279880 () Int)

(declare-fun lambda!279879 () Int)

(assert (=> b!5390233 (not (= lambda!279880 lambda!279879))))

(assert (=> b!5390233 true))

(assert (=> b!5390233 true))

(declare-fun b!5390234 () Bool)

(assert (=> b!5390234 true))

(declare-fun bs!1247308 () Bool)

(declare-fun b!5390221 () Bool)

(assert (= bs!1247308 (and b!5390221 b!5390233)))

(declare-datatypes ((C!30536 0))(
  ( (C!30537 (val!24970 Int)) )
))
(declare-datatypes ((Regex!15133 0))(
  ( (ElementMatch!15133 (c!939319 C!30536)) (Concat!23978 (regOne!30778 Regex!15133) (regTwo!30778 Regex!15133)) (EmptyExpr!15133) (Star!15133 (reg!15462 Regex!15133)) (EmptyLang!15133) (Union!15133 (regOne!30779 Regex!15133) (regTwo!30779 Regex!15133)) )
))
(declare-fun r!7292 () Regex!15133)

(declare-fun lt!2196027 () Regex!15133)

(declare-fun lambda!279882 () Int)

(assert (=> bs!1247308 (= (= lt!2196027 (regOne!30778 r!7292)) (= lambda!279882 lambda!279879))))

(assert (=> bs!1247308 (not (= lambda!279882 lambda!279880))))

(assert (=> b!5390221 true))

(assert (=> b!5390221 true))

(assert (=> b!5390221 true))

(declare-fun lambda!279883 () Int)

(assert (=> bs!1247308 (not (= lambda!279883 lambda!279879))))

(assert (=> bs!1247308 (= (= lt!2196027 (regOne!30778 r!7292)) (= lambda!279883 lambda!279880))))

(assert (=> b!5390221 (not (= lambda!279883 lambda!279882))))

(assert (=> b!5390221 true))

(assert (=> b!5390221 true))

(assert (=> b!5390221 true))

(declare-fun bs!1247309 () Bool)

(declare-fun b!5390248 () Bool)

(assert (= bs!1247309 (and b!5390248 b!5390233)))

(declare-datatypes ((List!61698 0))(
  ( (Nil!61574) (Cons!61574 (h!68022 C!30536) (t!374921 List!61698)) )
))
(declare-fun s!2326 () List!61698)

(declare-fun lambda!279884 () Int)

(declare-datatypes ((tuple2!64664 0))(
  ( (tuple2!64665 (_1!35635 List!61698) (_2!35635 List!61698)) )
))
(declare-fun lt!2196044 () tuple2!64664)

(assert (=> bs!1247309 (= (and (= (_1!35635 lt!2196044) s!2326) (= (reg!15462 (regOne!30778 r!7292)) (regOne!30778 r!7292)) (= lt!2196027 (regTwo!30778 r!7292))) (= lambda!279884 lambda!279879))))

(assert (=> bs!1247309 (not (= lambda!279884 lambda!279880))))

(declare-fun bs!1247310 () Bool)

(assert (= bs!1247310 (and b!5390248 b!5390221)))

(assert (=> bs!1247310 (= (and (= (_1!35635 lt!2196044) s!2326) (= (reg!15462 (regOne!30778 r!7292)) lt!2196027) (= lt!2196027 (regTwo!30778 r!7292))) (= lambda!279884 lambda!279882))))

(assert (=> bs!1247310 (not (= lambda!279884 lambda!279883))))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(declare-fun lambda!279885 () Int)

(assert (=> bs!1247309 (not (= lambda!279885 lambda!279879))))

(assert (=> bs!1247310 (not (= lambda!279885 lambda!279882))))

(assert (=> bs!1247310 (not (= lambda!279885 lambda!279883))))

(assert (=> bs!1247309 (not (= lambda!279885 lambda!279880))))

(assert (=> b!5390248 (not (= lambda!279885 lambda!279884))))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(declare-fun lambda!279886 () Int)

(assert (=> bs!1247309 (not (= lambda!279886 lambda!279879))))

(assert (=> b!5390248 (not (= lambda!279886 lambda!279885))))

(assert (=> bs!1247310 (not (= lambda!279886 lambda!279882))))

(assert (=> bs!1247310 (= (and (= (_1!35635 lt!2196044) s!2326) (= (reg!15462 (regOne!30778 r!7292)) lt!2196027) (= lt!2196027 (regTwo!30778 r!7292))) (= lambda!279886 lambda!279883))))

(assert (=> bs!1247309 (= (and (= (_1!35635 lt!2196044) s!2326) (= (reg!15462 (regOne!30778 r!7292)) (regOne!30778 r!7292)) (= lt!2196027 (regTwo!30778 r!7292))) (= lambda!279886 lambda!279880))))

(assert (=> b!5390248 (not (= lambda!279886 lambda!279884))))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(assert (=> b!5390248 true))

(declare-fun setRes!35009 () Bool)

(declare-datatypes ((List!61699 0))(
  ( (Nil!61575) (Cons!61575 (h!68023 Regex!15133) (t!374922 List!61699)) )
))
(declare-datatypes ((Context!9034 0))(
  ( (Context!9035 (exprs!5017 List!61699)) )
))
(declare-fun setElem!35009 () Context!9034)

(declare-fun e!3342918 () Bool)

(declare-fun setNonEmpty!35009 () Bool)

(declare-fun tp!1492637 () Bool)

(declare-fun inv!81079 (Context!9034) Bool)

(assert (=> setNonEmpty!35009 (= setRes!35009 (and tp!1492637 (inv!81079 setElem!35009) e!3342918))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9034))

(declare-fun setRest!35009 () (InoxSet Context!9034))

(assert (=> setNonEmpty!35009 (= z!1189 ((_ map or) (store ((as const (Array Context!9034 Bool)) false) setElem!35009 true) setRest!35009))))

(declare-fun b!5390211 () Bool)

(declare-fun e!3342912 () Bool)

(declare-fun nullable!5302 (Regex!15133) Bool)

(assert (=> b!5390211 (= e!3342912 (nullable!5302 (regOne!30778 (regOne!30778 r!7292))))))

(declare-fun b!5390212 () Bool)

(declare-fun res!2290282 () Bool)

(declare-fun e!3342902 () Bool)

(assert (=> b!5390212 (=> res!2290282 e!3342902)))

(declare-fun lt!2196016 () Regex!15133)

(assert (=> b!5390212 (= res!2290282 (not (= lt!2196016 r!7292)))))

(declare-fun b!5390213 () Bool)

(declare-fun res!2290275 () Bool)

(declare-fun e!3342901 () Bool)

(assert (=> b!5390213 (=> (not res!2290275) (not e!3342901))))

(declare-datatypes ((List!61700 0))(
  ( (Nil!61576) (Cons!61576 (h!68024 Context!9034) (t!374923 List!61700)) )
))
(declare-fun zl!343 () List!61700)

(declare-fun toList!8917 ((InoxSet Context!9034)) List!61700)

(assert (=> b!5390213 (= res!2290275 (= (toList!8917 z!1189) zl!343))))

(declare-fun b!5390214 () Bool)

(declare-fun e!3342916 () Bool)

(assert (=> b!5390214 (= e!3342916 true)))

(declare-fun lt!2196026 () Bool)

(declare-fun lt!2196033 () (InoxSet Context!9034))

(declare-fun lt!2196031 () List!61698)

(declare-fun matchZipper!1377 ((InoxSet Context!9034) List!61698) Bool)

(assert (=> b!5390214 (= lt!2196026 (matchZipper!1377 lt!2196033 lt!2196031))))

(declare-fun lt!2196005 () List!61699)

(declare-datatypes ((Unit!154050 0))(
  ( (Unit!154051) )
))
(declare-fun lt!2195990 () Unit!154050)

(declare-fun lambda!279887 () Int)

(declare-fun lt!2196025 () List!61699)

(declare-fun lemmaConcatPreservesForall!164 (List!61699 List!61699 Int) Unit!154050)

(assert (=> b!5390214 (= lt!2195990 (lemmaConcatPreservesForall!164 lt!2196005 lt!2196025 lambda!279887))))

(declare-fun e!3342903 () Bool)

(assert (=> b!5390214 e!3342903))

(declare-fun res!2290287 () Bool)

(assert (=> b!5390214 (=> (not res!2290287) (not e!3342903))))

(declare-fun lt!2196015 () Regex!15133)

(declare-fun matchR!7318 (Regex!15133 List!61698) Bool)

(assert (=> b!5390214 (= res!2290287 (matchR!7318 lt!2196015 lt!2196031))))

(declare-fun lt!2196003 () List!61698)

(declare-fun lt!2195996 () tuple2!64664)

(declare-fun lt!2196030 () Unit!154050)

(declare-fun lt!2196042 () Regex!15133)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!180 (Regex!15133 Regex!15133 List!61698 List!61698) Unit!154050)

(assert (=> b!5390214 (= lt!2196030 (lemmaTwoRegexMatchThenConcatMatchesConcatString!180 (reg!15462 (regOne!30778 r!7292)) lt!2196042 (_1!35635 lt!2195996) lt!2196003))))

(declare-fun ++!13451 (List!61699 List!61699) List!61699)

(assert (=> b!5390214 (matchZipper!1377 (store ((as const (Array Context!9034 Bool)) false) (Context!9035 (++!13451 lt!2196005 lt!2196025)) true) lt!2196031)))

(declare-fun lt!2196000 () Unit!154050)

(assert (=> b!5390214 (= lt!2196000 (lemmaConcatPreservesForall!164 lt!2196005 lt!2196025 lambda!279887))))

(declare-fun lt!2196036 () Context!9034)

(declare-fun lt!2195991 () Unit!154050)

(declare-fun lt!2196010 () Context!9034)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!20 (Context!9034 Context!9034 List!61698 List!61698) Unit!154050)

(assert (=> b!5390214 (= lt!2195991 (lemmaConcatenateContextMatchesConcatOfStrings!20 lt!2196010 lt!2196036 (_1!35635 lt!2195996) lt!2196003))))

(declare-fun lt!2196008 () (InoxSet Context!9034))

(assert (=> b!5390214 (matchZipper!1377 lt!2196008 lt!2196003)))

(declare-fun lt!2196017 () List!61700)

(declare-fun lt!2196024 () Unit!154050)

(declare-fun theoremZipperRegexEquiv!463 ((InoxSet Context!9034) List!61700 Regex!15133 List!61698) Unit!154050)

(assert (=> b!5390214 (= lt!2196024 (theoremZipperRegexEquiv!463 lt!2196008 lt!2196017 lt!2196042 lt!2196003))))

(declare-fun lt!2196041 () (InoxSet Context!9034))

(assert (=> b!5390214 (matchZipper!1377 lt!2196041 (_1!35635 lt!2195996))))

(declare-fun lt!2196029 () List!61700)

(declare-fun lt!2195998 () Unit!154050)

(assert (=> b!5390214 (= lt!2195998 (theoremZipperRegexEquiv!463 lt!2196041 lt!2196029 (reg!15462 (regOne!30778 r!7292)) (_1!35635 lt!2195996)))))

(assert (=> b!5390214 (matchR!7318 lt!2196042 lt!2196003)))

(declare-fun lt!2196048 () Unit!154050)

(assert (=> b!5390214 (= lt!2196048 (lemmaTwoRegexMatchThenConcatMatchesConcatString!180 lt!2196027 (regTwo!30778 r!7292) (_2!35635 lt!2195996) (_2!35635 lt!2196044)))))

(declare-fun lt!2196013 () List!61698)

(assert (=> b!5390214 (matchR!7318 lt!2196027 lt!2196013)))

(declare-fun lt!2195995 () Unit!154050)

(declare-fun lemmaStarApp!54 (Regex!15133 List!61698 List!61698) Unit!154050)

(assert (=> b!5390214 (= lt!2195995 (lemmaStarApp!54 (reg!15462 (regOne!30778 r!7292)) (_1!35635 lt!2195996) (_2!35635 lt!2195996)))))

(declare-fun b!5390215 () Bool)

(declare-fun e!3342905 () Bool)

(declare-fun tp!1492629 () Bool)

(declare-fun tp!1492632 () Bool)

(assert (=> b!5390215 (= e!3342905 (and tp!1492629 tp!1492632))))

(declare-fun b!5390216 () Bool)

(declare-fun e!3342900 () Bool)

(declare-fun e!3342913 () Bool)

(assert (=> b!5390216 (= e!3342900 e!3342913)))

(declare-fun res!2290288 () Bool)

(assert (=> b!5390216 (=> res!2290288 e!3342913)))

(declare-fun lt!2196004 () (InoxSet Context!9034))

(declare-fun lt!2196021 () (InoxSet Context!9034))

(assert (=> b!5390216 (= res!2290288 (not (= lt!2196004 lt!2196021)))))

(declare-fun derivationStepZipperDown!581 (Regex!15133 Context!9034 C!30536) (InoxSet Context!9034))

(assert (=> b!5390216 (= lt!2196021 (derivationStepZipperDown!581 (reg!15462 (regOne!30778 r!7292)) lt!2196036 (h!68022 s!2326)))))

(assert (=> b!5390216 (= lt!2196036 (Context!9035 lt!2196025))))

(assert (=> b!5390216 (= lt!2196025 (Cons!61575 lt!2196027 (t!374922 (exprs!5017 (h!68024 zl!343)))))))

(assert (=> b!5390216 (= lt!2196027 (Star!15133 (reg!15462 (regOne!30778 r!7292))))))

(declare-fun b!5390217 () Bool)

(declare-fun e!3342917 () Unit!154050)

(declare-fun Unit!154052 () Unit!154050)

(assert (=> b!5390217 (= e!3342917 Unit!154052)))

(declare-fun b!5390219 () Bool)

(declare-fun res!2290259 () Bool)

(declare-fun e!3342895 () Bool)

(assert (=> b!5390219 (=> res!2290259 e!3342895)))

(declare-fun isEmpty!33574 (List!61700) Bool)

(assert (=> b!5390219 (= res!2290259 (not (isEmpty!33574 (t!374923 zl!343))))))

(declare-fun b!5390220 () Bool)

(declare-fun res!2290277 () Bool)

(assert (=> b!5390220 (=> res!2290277 e!3342895)))

(get-info :version)

(assert (=> b!5390220 (= res!2290277 (or ((_ is EmptyExpr!15133) r!7292) ((_ is EmptyLang!15133) r!7292) ((_ is ElementMatch!15133) r!7292) ((_ is Union!15133) r!7292) (not ((_ is Concat!23978) r!7292))))))

(declare-fun e!3342909 () Bool)

(declare-fun e!3342908 () Bool)

(assert (=> b!5390221 (= e!3342909 e!3342908)))

(declare-fun res!2290263 () Bool)

(assert (=> b!5390221 (=> res!2290263 e!3342908)))

(declare-fun ++!13452 (List!61698 List!61698) List!61698)

(assert (=> b!5390221 (= res!2290263 (not (= (++!13452 (_1!35635 lt!2196044) (_2!35635 lt!2196044)) s!2326)))))

(declare-datatypes ((Option!15244 0))(
  ( (None!15243) (Some!15243 (v!51272 tuple2!64664)) )
))
(declare-fun lt!2196006 () Option!15244)

(declare-fun get!21208 (Option!15244) tuple2!64664)

(assert (=> b!5390221 (= lt!2196044 (get!21208 lt!2196006))))

(declare-fun Exists!2314 (Int) Bool)

(assert (=> b!5390221 (= (Exists!2314 lambda!279882) (Exists!2314 lambda!279883))))

(declare-fun lt!2196043 () Unit!154050)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!968 (Regex!15133 Regex!15133 List!61698) Unit!154050)

(assert (=> b!5390221 (= lt!2196043 (lemmaExistCutMatchRandMatchRSpecEquivalent!968 lt!2196027 (regTwo!30778 r!7292) s!2326))))

(declare-fun isDefined!11947 (Option!15244) Bool)

(assert (=> b!5390221 (= (isDefined!11947 lt!2196006) (Exists!2314 lambda!279882))))

(declare-fun findConcatSeparation!1658 (Regex!15133 Regex!15133 List!61698 List!61698 List!61698) Option!15244)

(assert (=> b!5390221 (= lt!2196006 (findConcatSeparation!1658 lt!2196027 (regTwo!30778 r!7292) Nil!61574 s!2326 s!2326))))

(declare-fun lt!2195992 () Unit!154050)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1422 (Regex!15133 Regex!15133 List!61698) Unit!154050)

(assert (=> b!5390221 (= lt!2195992 (lemmaFindConcatSeparationEquivalentToExists!1422 lt!2196027 (regTwo!30778 r!7292) s!2326))))

(declare-fun b!5390222 () Bool)

(declare-fun res!2290292 () Bool)

(assert (=> b!5390222 (=> res!2290292 e!3342908)))

(assert (=> b!5390222 (= res!2290292 (not (matchR!7318 lt!2196027 (_1!35635 lt!2196044))))))

(declare-fun b!5390223 () Bool)

(declare-fun e!3342897 () Bool)

(declare-fun lt!2195997 () Bool)

(declare-fun lt!2195999 () Bool)

(assert (=> b!5390223 (= e!3342897 (or (not lt!2195997) lt!2195999))))

(declare-fun b!5390224 () Bool)

(declare-fun e!3342910 () Bool)

(declare-fun tp_is_empty!39519 () Bool)

(declare-fun tp!1492636 () Bool)

(assert (=> b!5390224 (= e!3342910 (and tp_is_empty!39519 tp!1492636))))

(declare-fun b!5390225 () Bool)

(declare-fun res!2290278 () Bool)

(assert (=> b!5390225 (=> res!2290278 e!3342902)))

(declare-fun lt!2196045 () (InoxSet Context!9034))

(assert (=> b!5390225 (= res!2290278 (not (= (matchZipper!1377 lt!2196033 s!2326) (matchZipper!1377 lt!2196045 (t!374921 s!2326)))))))

(declare-fun b!5390226 () Bool)

(declare-fun res!2290290 () Bool)

(assert (=> b!5390226 (=> res!2290290 e!3342916)))

(assert (=> b!5390226 (= res!2290290 (not (matchR!7318 (reg!15462 (regOne!30778 r!7292)) (_1!35635 lt!2195996))))))

(declare-fun b!5390227 () Bool)

(declare-fun res!2290272 () Bool)

(assert (=> b!5390227 (=> res!2290272 e!3342895)))

(assert (=> b!5390227 (= res!2290272 (not ((_ is Cons!61575) (exprs!5017 (h!68024 zl!343)))))))

(declare-fun res!2290264 () Bool)

(assert (=> start!566466 (=> (not res!2290264) (not e!3342901))))

(declare-fun validRegex!6869 (Regex!15133) Bool)

(assert (=> start!566466 (= res!2290264 (validRegex!6869 r!7292))))

(assert (=> start!566466 e!3342901))

(assert (=> start!566466 e!3342905))

(declare-fun condSetEmpty!35009 () Bool)

(assert (=> start!566466 (= condSetEmpty!35009 (= z!1189 ((as const (Array Context!9034 Bool)) false)))))

(assert (=> start!566466 setRes!35009))

(declare-fun e!3342896 () Bool)

(assert (=> start!566466 e!3342896))

(assert (=> start!566466 e!3342910))

(declare-fun b!5390218 () Bool)

(declare-fun res!2290270 () Bool)

(assert (=> b!5390218 (=> res!2290270 e!3342900)))

(assert (=> b!5390218 (= res!2290270 e!3342912)))

(declare-fun res!2290284 () Bool)

(assert (=> b!5390218 (=> (not res!2290284) (not e!3342912))))

(assert (=> b!5390218 (= res!2290284 ((_ is Concat!23978) (regOne!30778 r!7292)))))

(declare-fun b!5390228 () Bool)

(declare-fun e!3342899 () Bool)

(declare-fun e!3342894 () Bool)

(assert (=> b!5390228 (= e!3342899 e!3342894)))

(declare-fun res!2290291 () Bool)

(assert (=> b!5390228 (=> res!2290291 e!3342894)))

(declare-fun unfocusZipper!875 (List!61700) Regex!15133)

(assert (=> b!5390228 (= res!2290291 (not (= (unfocusZipper!875 lt!2196017) lt!2196042)))))

(assert (=> b!5390228 (= lt!2196017 (Cons!61576 lt!2196036 Nil!61576))))

(declare-fun b!5390229 () Bool)

(assert (=> b!5390229 (= e!3342894 e!3342909)))

(declare-fun res!2290260 () Bool)

(assert (=> b!5390229 (=> res!2290260 e!3342909)))

(assert (=> b!5390229 (= res!2290260 (not lt!2195997))))

(assert (=> b!5390229 e!3342897))

(declare-fun res!2290262 () Bool)

(assert (=> b!5390229 (=> (not res!2290262) (not e!3342897))))

(declare-fun lt!2196049 () Bool)

(declare-fun matchRSpec!2236 (Regex!15133 List!61698) Bool)

(assert (=> b!5390229 (= res!2290262 (= lt!2196049 (matchRSpec!2236 lt!2196015 s!2326)))))

(assert (=> b!5390229 (= lt!2196049 (matchR!7318 lt!2196015 s!2326))))

(declare-fun lt!2196023 () Unit!154050)

(declare-fun mainMatchTheorem!2236 (Regex!15133 List!61698) Unit!154050)

(assert (=> b!5390229 (= lt!2196023 (mainMatchTheorem!2236 lt!2196015 s!2326))))

(declare-fun b!5390230 () Bool)

(declare-fun res!2290271 () Bool)

(assert (=> b!5390230 (=> res!2290271 e!3342908)))

(declare-fun isEmpty!33575 (List!61698) Bool)

(assert (=> b!5390230 (= res!2290271 (isEmpty!33575 (_1!35635 lt!2196044)))))

(declare-fun b!5390231 () Bool)

(declare-fun res!2290280 () Bool)

(assert (=> b!5390231 (=> res!2290280 e!3342895)))

(declare-fun generalisedConcat!802 (List!61699) Regex!15133)

(assert (=> b!5390231 (= res!2290280 (not (= r!7292 (generalisedConcat!802 (exprs!5017 (h!68024 zl!343))))))))

(declare-fun b!5390232 () Bool)

(declare-fun res!2290269 () Bool)

(assert (=> b!5390232 (=> res!2290269 e!3342908)))

(assert (=> b!5390232 (= res!2290269 (not (matchR!7318 (regTwo!30778 r!7292) (_2!35635 lt!2196044))))))

(declare-fun e!3342907 () Bool)

(assert (=> b!5390233 (= e!3342895 e!3342907)))

(declare-fun res!2290268 () Bool)

(assert (=> b!5390233 (=> res!2290268 e!3342907)))

(declare-fun lt!2196001 () Bool)

(assert (=> b!5390233 (= res!2290268 (or (not (= lt!2195997 lt!2196001)) ((_ is Nil!61574) s!2326)))))

(assert (=> b!5390233 (= (Exists!2314 lambda!279879) (Exists!2314 lambda!279880))))

(declare-fun lt!2196022 () Unit!154050)

(assert (=> b!5390233 (= lt!2196022 (lemmaExistCutMatchRandMatchRSpecEquivalent!968 (regOne!30778 r!7292) (regTwo!30778 r!7292) s!2326))))

(assert (=> b!5390233 (= lt!2196001 (Exists!2314 lambda!279879))))

(assert (=> b!5390233 (= lt!2196001 (isDefined!11947 (findConcatSeparation!1658 (regOne!30778 r!7292) (regTwo!30778 r!7292) Nil!61574 s!2326 s!2326)))))

(declare-fun lt!2196011 () Unit!154050)

(assert (=> b!5390233 (= lt!2196011 (lemmaFindConcatSeparationEquivalentToExists!1422 (regOne!30778 r!7292) (regTwo!30778 r!7292) s!2326))))

(assert (=> b!5390234 (= e!3342907 e!3342900)))

(declare-fun res!2290283 () Bool)

(assert (=> b!5390234 (=> res!2290283 e!3342900)))

(assert (=> b!5390234 (= res!2290283 (or (and ((_ is ElementMatch!15133) (regOne!30778 r!7292)) (= (c!939319 (regOne!30778 r!7292)) (h!68022 s!2326))) ((_ is Union!15133) (regOne!30778 r!7292))))))

(declare-fun lt!2196014 () Unit!154050)

(assert (=> b!5390234 (= lt!2196014 e!3342917)))

(declare-fun c!939318 () Bool)

(assert (=> b!5390234 (= c!939318 (nullable!5302 (h!68023 (exprs!5017 (h!68024 zl!343)))))))

(declare-fun lambda!279881 () Int)

(declare-fun flatMap!860 ((InoxSet Context!9034) Int) (InoxSet Context!9034))

(declare-fun derivationStepZipperUp!505 (Context!9034 C!30536) (InoxSet Context!9034))

(assert (=> b!5390234 (= (flatMap!860 z!1189 lambda!279881) (derivationStepZipperUp!505 (h!68024 zl!343) (h!68022 s!2326)))))

(declare-fun lt!2196040 () Unit!154050)

(declare-fun lemmaFlatMapOnSingletonSet!392 ((InoxSet Context!9034) Context!9034 Int) Unit!154050)

(assert (=> b!5390234 (= lt!2196040 (lemmaFlatMapOnSingletonSet!392 z!1189 (h!68024 zl!343) lambda!279881))))

(declare-fun lt!2196038 () (InoxSet Context!9034))

(declare-fun lt!2196034 () Context!9034)

(assert (=> b!5390234 (= lt!2196038 (derivationStepZipperUp!505 lt!2196034 (h!68022 s!2326)))))

(assert (=> b!5390234 (= lt!2196004 (derivationStepZipperDown!581 (h!68023 (exprs!5017 (h!68024 zl!343))) lt!2196034 (h!68022 s!2326)))))

(assert (=> b!5390234 (= lt!2196034 (Context!9035 (t!374922 (exprs!5017 (h!68024 zl!343)))))))

(declare-fun lt!2196028 () (InoxSet Context!9034))

(assert (=> b!5390234 (= lt!2196028 (derivationStepZipperUp!505 (Context!9035 (Cons!61575 (h!68023 (exprs!5017 (h!68024 zl!343))) (t!374922 (exprs!5017 (h!68024 zl!343))))) (h!68022 s!2326)))))

(declare-fun b!5390235 () Bool)

(declare-fun res!2290273 () Bool)

(assert (=> b!5390235 (=> res!2290273 e!3342916)))

(assert (=> b!5390235 (= res!2290273 (not (matchR!7318 lt!2196027 (_2!35635 lt!2195996))))))

(declare-fun b!5390236 () Bool)

(assert (=> b!5390236 (= e!3342905 tp_is_empty!39519)))

(declare-fun b!5390237 () Bool)

(declare-fun e!3342914 () Bool)

(assert (=> b!5390237 (= e!3342914 e!3342916)))

(declare-fun res!2290267 () Bool)

(assert (=> b!5390237 (=> res!2290267 e!3342916)))

(declare-fun lt!2195993 () List!61698)

(assert (=> b!5390237 (= res!2290267 (not (= lt!2195993 s!2326)))))

(assert (=> b!5390237 (= lt!2195993 lt!2196031)))

(assert (=> b!5390237 (= lt!2196031 (++!13452 (_1!35635 lt!2195996) lt!2196003))))

(assert (=> b!5390237 (= lt!2195993 (++!13452 lt!2196013 (_2!35635 lt!2196044)))))

(assert (=> b!5390237 (= lt!2196003 (++!13452 (_2!35635 lt!2195996) (_2!35635 lt!2196044)))))

(declare-fun lt!2196032 () Unit!154050)

(declare-fun lemmaConcatAssociativity!2830 (List!61698 List!61698 List!61698) Unit!154050)

(assert (=> b!5390237 (= lt!2196032 (lemmaConcatAssociativity!2830 (_1!35635 lt!2195996) (_2!35635 lt!2195996) (_2!35635 lt!2196044)))))

(declare-fun b!5390238 () Bool)

(declare-fun e!3342911 () Bool)

(assert (=> b!5390238 (= e!3342911 (not e!3342895))))

(declare-fun res!2290265 () Bool)

(assert (=> b!5390238 (=> res!2290265 e!3342895)))

(assert (=> b!5390238 (= res!2290265 (not ((_ is Cons!61576) zl!343)))))

(assert (=> b!5390238 (= lt!2195997 lt!2195999)))

(assert (=> b!5390238 (= lt!2195999 (matchRSpec!2236 r!7292 s!2326))))

(assert (=> b!5390238 (= lt!2195997 (matchR!7318 r!7292 s!2326))))

(declare-fun lt!2196035 () Unit!154050)

(assert (=> b!5390238 (= lt!2196035 (mainMatchTheorem!2236 r!7292 s!2326))))

(declare-fun b!5390239 () Bool)

(declare-fun tp!1492631 () Bool)

(assert (=> b!5390239 (= e!3342918 tp!1492631)))

(declare-fun b!5390240 () Bool)

(declare-fun res!2290261 () Bool)

(assert (=> b!5390240 (=> res!2290261 e!3342900)))

(assert (=> b!5390240 (= res!2290261 (or ((_ is Concat!23978) (regOne!30778 r!7292)) (not ((_ is Star!15133) (regOne!30778 r!7292)))))))

(declare-fun b!5390241 () Bool)

(declare-fun e!3342906 () Bool)

(assert (=> b!5390241 (= e!3342902 e!3342906)))

(declare-fun res!2290293 () Bool)

(assert (=> b!5390241 (=> res!2290293 e!3342906)))

(assert (=> b!5390241 (= res!2290293 (not (= r!7292 lt!2196042)))))

(assert (=> b!5390241 (= lt!2196042 (Concat!23978 lt!2196027 (regTwo!30778 r!7292)))))

(declare-fun b!5390242 () Bool)

(assert (=> b!5390242 (= e!3342903 lt!2196049)))

(declare-fun b!5390243 () Bool)

(declare-fun tp!1492633 () Bool)

(declare-fun tp!1492630 () Bool)

(assert (=> b!5390243 (= e!3342905 (and tp!1492633 tp!1492630))))

(declare-fun b!5390244 () Bool)

(declare-fun res!2290289 () Bool)

(assert (=> b!5390244 (=> res!2290289 e!3342907)))

(declare-fun isEmpty!33576 (List!61699) Bool)

(assert (=> b!5390244 (= res!2290289 (isEmpty!33576 (t!374922 (exprs!5017 (h!68024 zl!343)))))))

(declare-fun b!5390245 () Bool)

(declare-fun e!3342915 () Bool)

(assert (=> b!5390245 (= e!3342906 e!3342915)))

(declare-fun res!2290281 () Bool)

(assert (=> b!5390245 (=> res!2290281 e!3342915)))

(declare-fun lt!2196046 () Context!9034)

(assert (=> b!5390245 (= res!2290281 (not (= (unfocusZipper!875 (Cons!61576 lt!2196046 Nil!61576)) lt!2196015)))))

(assert (=> b!5390245 (= lt!2196015 (Concat!23978 (reg!15462 (regOne!30778 r!7292)) lt!2196042))))

(declare-fun tp!1492628 () Bool)

(declare-fun e!3342898 () Bool)

(declare-fun b!5390246 () Bool)

(assert (=> b!5390246 (= e!3342896 (and (inv!81079 (h!68024 zl!343)) e!3342898 tp!1492628))))

(declare-fun b!5390247 () Bool)

(declare-fun tp!1492635 () Bool)

(assert (=> b!5390247 (= e!3342905 tp!1492635)))

(assert (=> b!5390248 (= e!3342908 e!3342914)))

(declare-fun res!2290286 () Bool)

(assert (=> b!5390248 (=> res!2290286 e!3342914)))

(assert (=> b!5390248 (= res!2290286 (not (= (_1!35635 lt!2196044) lt!2196013)))))

(assert (=> b!5390248 (= lt!2196013 (++!13452 (_1!35635 lt!2195996) (_2!35635 lt!2195996)))))

(declare-fun lt!2196047 () Option!15244)

(assert (=> b!5390248 (= lt!2195996 (get!21208 lt!2196047))))

(assert (=> b!5390248 (= (Exists!2314 lambda!279884) (Exists!2314 lambda!279886))))

(declare-fun lt!2196009 () Unit!154050)

(assert (=> b!5390248 (= lt!2196009 (lemmaExistCutMatchRandMatchRSpecEquivalent!968 (reg!15462 (regOne!30778 r!7292)) lt!2196027 (_1!35635 lt!2196044)))))

(assert (=> b!5390248 (= (Exists!2314 lambda!279884) (Exists!2314 lambda!279885))))

(declare-fun lt!2196007 () Unit!154050)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!398 (Regex!15133 List!61698) Unit!154050)

(assert (=> b!5390248 (= lt!2196007 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!398 (reg!15462 (regOne!30778 r!7292)) (_1!35635 lt!2196044)))))

(assert (=> b!5390248 (= (isDefined!11947 lt!2196047) (Exists!2314 lambda!279884))))

(assert (=> b!5390248 (= lt!2196047 (findConcatSeparation!1658 (reg!15462 (regOne!30778 r!7292)) lt!2196027 Nil!61574 (_1!35635 lt!2196044) (_1!35635 lt!2196044)))))

(declare-fun lt!2196039 () Unit!154050)

(assert (=> b!5390248 (= lt!2196039 (lemmaFindConcatSeparationEquivalentToExists!1422 (reg!15462 (regOne!30778 r!7292)) lt!2196027 (_1!35635 lt!2196044)))))

(assert (=> b!5390248 (matchRSpec!2236 lt!2196027 (_1!35635 lt!2196044))))

(declare-fun lt!2196050 () Unit!154050)

(assert (=> b!5390248 (= lt!2196050 (mainMatchTheorem!2236 lt!2196027 (_1!35635 lt!2196044)))))

(declare-fun b!5390249 () Bool)

(declare-fun Unit!154053 () Unit!154050)

(assert (=> b!5390249 (= e!3342917 Unit!154053)))

(declare-fun lt!2196018 () Unit!154050)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!370 ((InoxSet Context!9034) (InoxSet Context!9034) List!61698) Unit!154050)

(assert (=> b!5390249 (= lt!2196018 (lemmaZipperConcatMatchesSameAsBothZippers!370 lt!2196004 lt!2196038 (t!374921 s!2326)))))

(declare-fun res!2290285 () Bool)

(assert (=> b!5390249 (= res!2290285 (matchZipper!1377 lt!2196004 (t!374921 s!2326)))))

(declare-fun e!3342904 () Bool)

(assert (=> b!5390249 (=> res!2290285 e!3342904)))

(assert (=> b!5390249 (= (matchZipper!1377 ((_ map or) lt!2196004 lt!2196038) (t!374921 s!2326)) e!3342904)))

(declare-fun b!5390250 () Bool)

(declare-fun res!2290276 () Bool)

(assert (=> b!5390250 (=> res!2290276 e!3342895)))

(declare-fun generalisedUnion!1062 (List!61699) Regex!15133)

(declare-fun unfocusZipperList!575 (List!61700) List!61699)

(assert (=> b!5390250 (= res!2290276 (not (= r!7292 (generalisedUnion!1062 (unfocusZipperList!575 zl!343)))))))

(declare-fun b!5390251 () Bool)

(assert (=> b!5390251 (= e!3342901 e!3342911)))

(declare-fun res!2290274 () Bool)

(assert (=> b!5390251 (=> (not res!2290274) (not e!3342911))))

(assert (=> b!5390251 (= res!2290274 (= r!7292 lt!2196016))))

(assert (=> b!5390251 (= lt!2196016 (unfocusZipper!875 zl!343))))

(declare-fun b!5390252 () Bool)

(declare-fun tp!1492634 () Bool)

(assert (=> b!5390252 (= e!3342898 tp!1492634)))

(declare-fun b!5390253 () Bool)

(assert (=> b!5390253 (= e!3342904 (matchZipper!1377 lt!2196038 (t!374921 s!2326)))))

(declare-fun b!5390254 () Bool)

(assert (=> b!5390254 (= e!3342915 e!3342899)))

(declare-fun res!2290279 () Bool)

(assert (=> b!5390254 (=> res!2290279 e!3342899)))

(assert (=> b!5390254 (= res!2290279 (not (= (unfocusZipper!875 lt!2196029) (reg!15462 (regOne!30778 r!7292)))))))

(assert (=> b!5390254 (= lt!2196029 (Cons!61576 lt!2196010 Nil!61576))))

(assert (=> b!5390254 (= (flatMap!860 lt!2196008 lambda!279881) (derivationStepZipperUp!505 lt!2196036 (h!68022 s!2326)))))

(declare-fun lt!2196037 () Unit!154050)

(assert (=> b!5390254 (= lt!2196037 (lemmaFlatMapOnSingletonSet!392 lt!2196008 lt!2196036 lambda!279881))))

(assert (=> b!5390254 (= (flatMap!860 lt!2196041 lambda!279881) (derivationStepZipperUp!505 lt!2196010 (h!68022 s!2326)))))

(declare-fun lt!2196012 () Unit!154050)

(assert (=> b!5390254 (= lt!2196012 (lemmaFlatMapOnSingletonSet!392 lt!2196041 lt!2196010 lambda!279881))))

(declare-fun lt!2196020 () (InoxSet Context!9034))

(assert (=> b!5390254 (= lt!2196020 (derivationStepZipperUp!505 lt!2196036 (h!68022 s!2326)))))

(declare-fun lt!2196019 () (InoxSet Context!9034))

(assert (=> b!5390254 (= lt!2196019 (derivationStepZipperUp!505 lt!2196010 (h!68022 s!2326)))))

(assert (=> b!5390254 (= lt!2196008 (store ((as const (Array Context!9034 Bool)) false) lt!2196036 true))))

(assert (=> b!5390254 (= lt!2196041 (store ((as const (Array Context!9034 Bool)) false) lt!2196010 true))))

(assert (=> b!5390254 (= lt!2196010 (Context!9035 lt!2196005))))

(assert (=> b!5390254 (= lt!2196005 (Cons!61575 (reg!15462 (regOne!30778 r!7292)) Nil!61575))))

(declare-fun setIsEmpty!35009 () Bool)

(assert (=> setIsEmpty!35009 setRes!35009))

(declare-fun b!5390255 () Bool)

(assert (=> b!5390255 (= e!3342913 e!3342902)))

(declare-fun res!2290266 () Bool)

(assert (=> b!5390255 (=> res!2290266 e!3342902)))

(assert (=> b!5390255 (= res!2290266 (not (= lt!2196045 lt!2196021)))))

(assert (=> b!5390255 (= (flatMap!860 lt!2196033 lambda!279881) (derivationStepZipperUp!505 lt!2196046 (h!68022 s!2326)))))

(declare-fun lt!2195994 () Unit!154050)

(assert (=> b!5390255 (= lt!2195994 (lemmaFlatMapOnSingletonSet!392 lt!2196033 lt!2196046 lambda!279881))))

(declare-fun lt!2196002 () (InoxSet Context!9034))

(assert (=> b!5390255 (= lt!2196002 (derivationStepZipperUp!505 lt!2196046 (h!68022 s!2326)))))

(declare-fun derivationStepZipper!1372 ((InoxSet Context!9034) C!30536) (InoxSet Context!9034))

(assert (=> b!5390255 (= lt!2196045 (derivationStepZipper!1372 lt!2196033 (h!68022 s!2326)))))

(assert (=> b!5390255 (= lt!2196033 (store ((as const (Array Context!9034 Bool)) false) lt!2196046 true))))

(assert (=> b!5390255 (= lt!2196046 (Context!9035 (Cons!61575 (reg!15462 (regOne!30778 r!7292)) lt!2196025)))))

(assert (= (and start!566466 res!2290264) b!5390213))

(assert (= (and b!5390213 res!2290275) b!5390251))

(assert (= (and b!5390251 res!2290274) b!5390238))

(assert (= (and b!5390238 (not res!2290265)) b!5390219))

(assert (= (and b!5390219 (not res!2290259)) b!5390231))

(assert (= (and b!5390231 (not res!2290280)) b!5390227))

(assert (= (and b!5390227 (not res!2290272)) b!5390250))

(assert (= (and b!5390250 (not res!2290276)) b!5390220))

(assert (= (and b!5390220 (not res!2290277)) b!5390233))

(assert (= (and b!5390233 (not res!2290268)) b!5390244))

(assert (= (and b!5390244 (not res!2290289)) b!5390234))

(assert (= (and b!5390234 c!939318) b!5390249))

(assert (= (and b!5390234 (not c!939318)) b!5390217))

(assert (= (and b!5390249 (not res!2290285)) b!5390253))

(assert (= (and b!5390234 (not res!2290283)) b!5390218))

(assert (= (and b!5390218 res!2290284) b!5390211))

(assert (= (and b!5390218 (not res!2290270)) b!5390240))

(assert (= (and b!5390240 (not res!2290261)) b!5390216))

(assert (= (and b!5390216 (not res!2290288)) b!5390255))

(assert (= (and b!5390255 (not res!2290266)) b!5390225))

(assert (= (and b!5390225 (not res!2290278)) b!5390212))

(assert (= (and b!5390212 (not res!2290282)) b!5390241))

(assert (= (and b!5390241 (not res!2290293)) b!5390245))

(assert (= (and b!5390245 (not res!2290281)) b!5390254))

(assert (= (and b!5390254 (not res!2290279)) b!5390228))

(assert (= (and b!5390228 (not res!2290291)) b!5390229))

(assert (= (and b!5390229 res!2290262) b!5390223))

(assert (= (and b!5390229 (not res!2290260)) b!5390221))

(assert (= (and b!5390221 (not res!2290263)) b!5390222))

(assert (= (and b!5390222 (not res!2290292)) b!5390232))

(assert (= (and b!5390232 (not res!2290269)) b!5390230))

(assert (= (and b!5390230 (not res!2290271)) b!5390248))

(assert (= (and b!5390248 (not res!2290286)) b!5390237))

(assert (= (and b!5390237 (not res!2290267)) b!5390226))

(assert (= (and b!5390226 (not res!2290290)) b!5390235))

(assert (= (and b!5390235 (not res!2290273)) b!5390214))

(assert (= (and b!5390214 res!2290287) b!5390242))

(assert (= (and start!566466 ((_ is ElementMatch!15133) r!7292)) b!5390236))

(assert (= (and start!566466 ((_ is Concat!23978) r!7292)) b!5390243))

(assert (= (and start!566466 ((_ is Star!15133) r!7292)) b!5390247))

(assert (= (and start!566466 ((_ is Union!15133) r!7292)) b!5390215))

(assert (= (and start!566466 condSetEmpty!35009) setIsEmpty!35009))

(assert (= (and start!566466 (not condSetEmpty!35009)) setNonEmpty!35009))

(assert (= setNonEmpty!35009 b!5390239))

(assert (= b!5390246 b!5390252))

(assert (= (and start!566466 ((_ is Cons!61576) zl!343)) b!5390246))

(assert (= (and start!566466 ((_ is Cons!61574) s!2326)) b!5390224))

(declare-fun m!6416032 () Bool)

(assert (=> b!5390226 m!6416032))

(declare-fun m!6416034 () Bool)

(assert (=> b!5390216 m!6416034))

(declare-fun m!6416036 () Bool)

(assert (=> b!5390244 m!6416036))

(declare-fun m!6416038 () Bool)

(assert (=> b!5390219 m!6416038))

(declare-fun m!6416040 () Bool)

(assert (=> b!5390250 m!6416040))

(assert (=> b!5390250 m!6416040))

(declare-fun m!6416042 () Bool)

(assert (=> b!5390250 m!6416042))

(declare-fun m!6416044 () Bool)

(assert (=> b!5390221 m!6416044))

(declare-fun m!6416046 () Bool)

(assert (=> b!5390221 m!6416046))

(declare-fun m!6416048 () Bool)

(assert (=> b!5390221 m!6416048))

(declare-fun m!6416050 () Bool)

(assert (=> b!5390221 m!6416050))

(declare-fun m!6416052 () Bool)

(assert (=> b!5390221 m!6416052))

(declare-fun m!6416054 () Bool)

(assert (=> b!5390221 m!6416054))

(declare-fun m!6416056 () Bool)

(assert (=> b!5390221 m!6416056))

(declare-fun m!6416058 () Bool)

(assert (=> b!5390221 m!6416058))

(assert (=> b!5390221 m!6416058))

(declare-fun m!6416060 () Bool)

(assert (=> b!5390245 m!6416060))

(declare-fun m!6416062 () Bool)

(assert (=> b!5390248 m!6416062))

(assert (=> b!5390248 m!6416062))

(declare-fun m!6416064 () Bool)

(assert (=> b!5390248 m!6416064))

(declare-fun m!6416066 () Bool)

(assert (=> b!5390248 m!6416066))

(declare-fun m!6416068 () Bool)

(assert (=> b!5390248 m!6416068))

(declare-fun m!6416070 () Bool)

(assert (=> b!5390248 m!6416070))

(declare-fun m!6416072 () Bool)

(assert (=> b!5390248 m!6416072))

(declare-fun m!6416074 () Bool)

(assert (=> b!5390248 m!6416074))

(declare-fun m!6416076 () Bool)

(assert (=> b!5390248 m!6416076))

(declare-fun m!6416078 () Bool)

(assert (=> b!5390248 m!6416078))

(declare-fun m!6416080 () Bool)

(assert (=> b!5390248 m!6416080))

(assert (=> b!5390248 m!6416062))

(declare-fun m!6416082 () Bool)

(assert (=> b!5390248 m!6416082))

(declare-fun m!6416084 () Bool)

(assert (=> b!5390248 m!6416084))

(declare-fun m!6416086 () Bool)

(assert (=> start!566466 m!6416086))

(declare-fun m!6416088 () Bool)

(assert (=> b!5390225 m!6416088))

(declare-fun m!6416090 () Bool)

(assert (=> b!5390225 m!6416090))

(declare-fun m!6416092 () Bool)

(assert (=> b!5390230 m!6416092))

(declare-fun m!6416094 () Bool)

(assert (=> setNonEmpty!35009 m!6416094))

(declare-fun m!6416096 () Bool)

(assert (=> b!5390211 m!6416096))

(declare-fun m!6416098 () Bool)

(assert (=> b!5390234 m!6416098))

(declare-fun m!6416100 () Bool)

(assert (=> b!5390234 m!6416100))

(declare-fun m!6416102 () Bool)

(assert (=> b!5390234 m!6416102))

(declare-fun m!6416104 () Bool)

(assert (=> b!5390234 m!6416104))

(declare-fun m!6416106 () Bool)

(assert (=> b!5390234 m!6416106))

(declare-fun m!6416108 () Bool)

(assert (=> b!5390234 m!6416108))

(declare-fun m!6416110 () Bool)

(assert (=> b!5390234 m!6416110))

(declare-fun m!6416112 () Bool)

(assert (=> b!5390251 m!6416112))

(declare-fun m!6416114 () Bool)

(assert (=> b!5390214 m!6416114))

(declare-fun m!6416116 () Bool)

(assert (=> b!5390214 m!6416116))

(declare-fun m!6416118 () Bool)

(assert (=> b!5390214 m!6416118))

(declare-fun m!6416120 () Bool)

(assert (=> b!5390214 m!6416120))

(declare-fun m!6416122 () Bool)

(assert (=> b!5390214 m!6416122))

(declare-fun m!6416124 () Bool)

(assert (=> b!5390214 m!6416124))

(declare-fun m!6416126 () Bool)

(assert (=> b!5390214 m!6416126))

(declare-fun m!6416128 () Bool)

(assert (=> b!5390214 m!6416128))

(assert (=> b!5390214 m!6416124))

(declare-fun m!6416130 () Bool)

(assert (=> b!5390214 m!6416130))

(declare-fun m!6416132 () Bool)

(assert (=> b!5390214 m!6416132))

(assert (=> b!5390214 m!6416132))

(declare-fun m!6416134 () Bool)

(assert (=> b!5390214 m!6416134))

(declare-fun m!6416136 () Bool)

(assert (=> b!5390214 m!6416136))

(declare-fun m!6416138 () Bool)

(assert (=> b!5390214 m!6416138))

(declare-fun m!6416140 () Bool)

(assert (=> b!5390214 m!6416140))

(declare-fun m!6416142 () Bool)

(assert (=> b!5390214 m!6416142))

(declare-fun m!6416144 () Bool)

(assert (=> b!5390214 m!6416144))

(declare-fun m!6416146 () Bool)

(assert (=> b!5390213 m!6416146))

(declare-fun m!6416148 () Bool)

(assert (=> b!5390254 m!6416148))

(declare-fun m!6416150 () Bool)

(assert (=> b!5390254 m!6416150))

(declare-fun m!6416152 () Bool)

(assert (=> b!5390254 m!6416152))

(declare-fun m!6416154 () Bool)

(assert (=> b!5390254 m!6416154))

(declare-fun m!6416156 () Bool)

(assert (=> b!5390254 m!6416156))

(declare-fun m!6416158 () Bool)

(assert (=> b!5390254 m!6416158))

(declare-fun m!6416160 () Bool)

(assert (=> b!5390254 m!6416160))

(declare-fun m!6416162 () Bool)

(assert (=> b!5390254 m!6416162))

(declare-fun m!6416164 () Bool)

(assert (=> b!5390254 m!6416164))

(declare-fun m!6416166 () Bool)

(assert (=> b!5390235 m!6416166))

(declare-fun m!6416168 () Bool)

(assert (=> b!5390253 m!6416168))

(declare-fun m!6416170 () Bool)

(assert (=> b!5390222 m!6416170))

(declare-fun m!6416172 () Bool)

(assert (=> b!5390237 m!6416172))

(declare-fun m!6416174 () Bool)

(assert (=> b!5390237 m!6416174))

(declare-fun m!6416176 () Bool)

(assert (=> b!5390237 m!6416176))

(declare-fun m!6416178 () Bool)

(assert (=> b!5390237 m!6416178))

(declare-fun m!6416180 () Bool)

(assert (=> b!5390255 m!6416180))

(declare-fun m!6416182 () Bool)

(assert (=> b!5390255 m!6416182))

(declare-fun m!6416184 () Bool)

(assert (=> b!5390255 m!6416184))

(declare-fun m!6416186 () Bool)

(assert (=> b!5390255 m!6416186))

(declare-fun m!6416188 () Bool)

(assert (=> b!5390255 m!6416188))

(declare-fun m!6416190 () Bool)

(assert (=> b!5390231 m!6416190))

(declare-fun m!6416192 () Bool)

(assert (=> b!5390232 m!6416192))

(declare-fun m!6416194 () Bool)

(assert (=> b!5390228 m!6416194))

(declare-fun m!6416196 () Bool)

(assert (=> b!5390246 m!6416196))

(declare-fun m!6416198 () Bool)

(assert (=> b!5390229 m!6416198))

(declare-fun m!6416200 () Bool)

(assert (=> b!5390229 m!6416200))

(declare-fun m!6416202 () Bool)

(assert (=> b!5390229 m!6416202))

(declare-fun m!6416204 () Bool)

(assert (=> b!5390233 m!6416204))

(declare-fun m!6416206 () Bool)

(assert (=> b!5390233 m!6416206))

(declare-fun m!6416208 () Bool)

(assert (=> b!5390233 m!6416208))

(declare-fun m!6416210 () Bool)

(assert (=> b!5390233 m!6416210))

(declare-fun m!6416212 () Bool)

(assert (=> b!5390233 m!6416212))

(assert (=> b!5390233 m!6416208))

(assert (=> b!5390233 m!6416204))

(declare-fun m!6416214 () Bool)

(assert (=> b!5390233 m!6416214))

(declare-fun m!6416216 () Bool)

(assert (=> b!5390249 m!6416216))

(declare-fun m!6416218 () Bool)

(assert (=> b!5390249 m!6416218))

(declare-fun m!6416220 () Bool)

(assert (=> b!5390249 m!6416220))

(declare-fun m!6416222 () Bool)

(assert (=> b!5390238 m!6416222))

(declare-fun m!6416224 () Bool)

(assert (=> b!5390238 m!6416224))

(declare-fun m!6416226 () Bool)

(assert (=> b!5390238 m!6416226))

(check-sat (not b!5390215) (not b!5390228) (not b!5390248) (not b!5390213) (not b!5390232) (not b!5390255) (not b!5390243) (not b!5390214) (not b!5390253) (not b!5390251) (not b!5390225) (not b!5390249) (not b!5390234) (not b!5390224) tp_is_empty!39519 (not b!5390239) (not b!5390229) (not b!5390211) (not b!5390252) (not b!5390247) (not b!5390216) (not b!5390250) (not b!5390246) (not b!5390245) (not b!5390235) (not b!5390244) (not b!5390238) (not b!5390254) (not b!5390222) (not start!566466) (not b!5390226) (not b!5390231) (not b!5390221) (not b!5390233) (not setNonEmpty!35009) (not b!5390237) (not b!5390230) (not b!5390219))
(check-sat)
