; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!550112 () Bool)

(assert start!550112)

(declare-fun b!5200220 () Bool)

(assert (=> b!5200220 true))

(assert (=> b!5200220 true))

(declare-fun lambda!260497 () Int)

(declare-fun lambda!260496 () Int)

(assert (=> b!5200220 (not (= lambda!260497 lambda!260496))))

(assert (=> b!5200220 true))

(assert (=> b!5200220 true))

(declare-fun b!5200205 () Bool)

(declare-fun e!3238231 () Bool)

(declare-fun tp!1458634 () Bool)

(assert (=> b!5200205 (= e!3238231 tp!1458634)))

(declare-fun b!5200206 () Bool)

(declare-fun e!3238233 () Bool)

(declare-fun tp_is_empty!38813 () Bool)

(assert (=> b!5200206 (= e!3238233 tp_is_empty!38813)))

(declare-fun b!5200207 () Bool)

(declare-fun res!2209297 () Bool)

(declare-fun e!3238234 () Bool)

(assert (=> b!5200207 (=> res!2209297 e!3238234)))

(declare-datatypes ((C!29830 0))(
  ( (C!29831 (val!24617 Int)) )
))
(declare-datatypes ((Regex!14780 0))(
  ( (ElementMatch!14780 (c!896259 C!29830)) (Concat!23625 (regOne!30072 Regex!14780) (regTwo!30072 Regex!14780)) (EmptyExpr!14780) (Star!14780 (reg!15109 Regex!14780)) (EmptyLang!14780) (Union!14780 (regOne!30073 Regex!14780) (regTwo!30073 Regex!14780)) )
))
(declare-datatypes ((List!60639 0))(
  ( (Nil!60515) (Cons!60515 (h!66963 Regex!14780) (t!373792 List!60639)) )
))
(declare-datatypes ((Context!8328 0))(
  ( (Context!8329 (exprs!4664 List!60639)) )
))
(declare-datatypes ((List!60640 0))(
  ( (Nil!60516) (Cons!60516 (h!66964 Context!8328) (t!373793 List!60640)) )
))
(declare-fun zl!343 () List!60640)

(declare-fun isEmpty!32424 (List!60640) Bool)

(assert (=> b!5200207 (= res!2209297 (not (isEmpty!32424 (t!373793 zl!343))))))

(declare-fun b!5200208 () Bool)

(declare-fun res!2209303 () Bool)

(assert (=> b!5200208 (=> res!2209303 e!3238234)))

(declare-fun r!7292 () Regex!14780)

(assert (=> b!5200208 (= res!2209303 (or (is-EmptyExpr!14780 r!7292) (is-EmptyLang!14780 r!7292) (is-ElementMatch!14780 r!7292) (is-Union!14780 r!7292) (not (is-Concat!23625 r!7292))))))

(declare-fun e!3238229 () Bool)

(declare-fun tp!1458632 () Bool)

(declare-fun b!5200209 () Bool)

(declare-fun inv!80198 (Context!8328) Bool)

(assert (=> b!5200209 (= e!3238229 (and (inv!80198 (h!66964 zl!343)) e!3238231 tp!1458632))))

(declare-fun b!5200210 () Bool)

(declare-fun tp!1458636 () Bool)

(assert (=> b!5200210 (= e!3238233 tp!1458636)))

(declare-fun b!5200211 () Bool)

(declare-fun res!2209307 () Bool)

(declare-fun e!3238235 () Bool)

(assert (=> b!5200211 (=> (not res!2209307) (not e!3238235))))

(declare-fun unfocusZipper!522 (List!60640) Regex!14780)

(assert (=> b!5200211 (= res!2209307 (= r!7292 (unfocusZipper!522 zl!343)))))

(declare-fun b!5200212 () Bool)

(declare-fun tp!1458630 () Bool)

(declare-fun tp!1458631 () Bool)

(assert (=> b!5200212 (= e!3238233 (and tp!1458630 tp!1458631))))

(declare-fun b!5200213 () Bool)

(declare-fun res!2209306 () Bool)

(declare-fun e!3238230 () Bool)

(assert (=> b!5200213 (=> res!2209306 e!3238230)))

(declare-fun isEmpty!32425 (List!60639) Bool)

(assert (=> b!5200213 (= res!2209306 (isEmpty!32425 (t!373792 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun tp!1458635 () Bool)

(declare-fun e!3238228 () Bool)

(declare-fun setElem!32971 () Context!8328)

(declare-fun setRes!32971 () Bool)

(declare-fun setNonEmpty!32971 () Bool)

(assert (=> setNonEmpty!32971 (= setRes!32971 (and tp!1458635 (inv!80198 setElem!32971) e!3238228))))

(declare-fun z!1189 () (Set Context!8328))

(declare-fun setRest!32971 () (Set Context!8328))

(assert (=> setNonEmpty!32971 (= z!1189 (set.union (set.insert setElem!32971 (as set.empty (Set Context!8328))) setRest!32971))))

(declare-fun b!5200214 () Bool)

(declare-fun tp!1458633 () Bool)

(declare-fun tp!1458639 () Bool)

(assert (=> b!5200214 (= e!3238233 (and tp!1458633 tp!1458639))))

(declare-fun setIsEmpty!32971 () Bool)

(assert (=> setIsEmpty!32971 setRes!32971))

(declare-fun b!5200215 () Bool)

(declare-fun res!2209299 () Bool)

(assert (=> b!5200215 (=> res!2209299 e!3238234)))

(declare-fun generalisedUnion!709 (List!60639) Regex!14780)

(declare-fun unfocusZipperList!222 (List!60640) List!60639)

(assert (=> b!5200215 (= res!2209299 (not (= r!7292 (generalisedUnion!709 (unfocusZipperList!222 zl!343)))))))

(declare-fun b!5200216 () Bool)

(declare-fun validRegex!6516 (Regex!14780) Bool)

(assert (=> b!5200216 (= e!3238230 (validRegex!6516 (h!66963 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun lt!2140745 () (Set Context!8328))

(declare-datatypes ((List!60641 0))(
  ( (Nil!60517) (Cons!60517 (h!66965 C!29830) (t!373794 List!60641)) )
))
(declare-fun s!2326 () List!60641)

(declare-fun derivationStepZipperUp!152 (Context!8328 C!29830) (Set Context!8328))

(assert (=> b!5200216 (= lt!2140745 (derivationStepZipperUp!152 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343))))) (h!66965 s!2326)))))

(declare-fun res!2209304 () Bool)

(assert (=> start!550112 (=> (not res!2209304) (not e!3238235))))

(assert (=> start!550112 (= res!2209304 (validRegex!6516 r!7292))))

(assert (=> start!550112 e!3238235))

(assert (=> start!550112 e!3238233))

(declare-fun condSetEmpty!32971 () Bool)

(assert (=> start!550112 (= condSetEmpty!32971 (= z!1189 (as set.empty (Set Context!8328))))))

(assert (=> start!550112 setRes!32971))

(assert (=> start!550112 e!3238229))

(declare-fun e!3238232 () Bool)

(assert (=> start!550112 e!3238232))

(declare-fun b!5200204 () Bool)

(declare-fun res!2209301 () Bool)

(assert (=> b!5200204 (=> (not res!2209301) (not e!3238235))))

(declare-fun toList!8564 ((Set Context!8328)) List!60640)

(assert (=> b!5200204 (= res!2209301 (= (toList!8564 z!1189) zl!343))))

(declare-fun b!5200217 () Bool)

(declare-fun tp!1458637 () Bool)

(assert (=> b!5200217 (= e!3238228 tp!1458637)))

(declare-fun b!5200218 () Bool)

(declare-fun res!2209305 () Bool)

(assert (=> b!5200218 (=> res!2209305 e!3238234)))

(assert (=> b!5200218 (= res!2209305 (not (is-Cons!60515 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun b!5200219 () Bool)

(declare-fun res!2209302 () Bool)

(assert (=> b!5200219 (=> res!2209302 e!3238234)))

(declare-fun generalisedConcat!449 (List!60639) Regex!14780)

(assert (=> b!5200219 (= res!2209302 (not (= r!7292 (generalisedConcat!449 (exprs!4664 (h!66964 zl!343))))))))

(assert (=> b!5200220 (= e!3238234 e!3238230)))

(declare-fun res!2209298 () Bool)

(assert (=> b!5200220 (=> res!2209298 e!3238230)))

(declare-fun lt!2140743 () Bool)

(declare-fun lt!2140747 () Bool)

(assert (=> b!5200220 (= res!2209298 (or (not (= lt!2140747 lt!2140743)) (is-Nil!60517 s!2326)))))

(declare-fun Exists!1961 (Int) Bool)

(assert (=> b!5200220 (= (Exists!1961 lambda!260496) (Exists!1961 lambda!260497))))

(declare-datatypes ((Unit!152394 0))(
  ( (Unit!152395) )
))
(declare-fun lt!2140742 () Unit!152394)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!615 (Regex!14780 Regex!14780 List!60641) Unit!152394)

(assert (=> b!5200220 (= lt!2140742 (lemmaExistCutMatchRandMatchRSpecEquivalent!615 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326))))

(assert (=> b!5200220 (= lt!2140743 (Exists!1961 lambda!260496))))

(declare-datatypes ((tuple2!63958 0))(
  ( (tuple2!63959 (_1!35282 List!60641) (_2!35282 List!60641)) )
))
(declare-datatypes ((Option!14891 0))(
  ( (None!14890) (Some!14890 (v!50919 tuple2!63958)) )
))
(declare-fun isDefined!11594 (Option!14891) Bool)

(declare-fun findConcatSeparation!1305 (Regex!14780 Regex!14780 List!60641 List!60641 List!60641) Option!14891)

(assert (=> b!5200220 (= lt!2140743 (isDefined!11594 (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) Nil!60517 s!2326 s!2326)))))

(declare-fun lt!2140746 () Unit!152394)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1069 (Regex!14780 Regex!14780 List!60641) Unit!152394)

(assert (=> b!5200220 (= lt!2140746 (lemmaFindConcatSeparationEquivalentToExists!1069 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326))))

(declare-fun b!5200221 () Bool)

(declare-fun tp!1458638 () Bool)

(assert (=> b!5200221 (= e!3238232 (and tp_is_empty!38813 tp!1458638))))

(declare-fun b!5200222 () Bool)

(assert (=> b!5200222 (= e!3238235 (not e!3238234))))

(declare-fun res!2209300 () Bool)

(assert (=> b!5200222 (=> res!2209300 e!3238234)))

(assert (=> b!5200222 (= res!2209300 (not (is-Cons!60516 zl!343)))))

(declare-fun matchRSpec!1883 (Regex!14780 List!60641) Bool)

(assert (=> b!5200222 (= lt!2140747 (matchRSpec!1883 r!7292 s!2326))))

(declare-fun matchR!6965 (Regex!14780 List!60641) Bool)

(assert (=> b!5200222 (= lt!2140747 (matchR!6965 r!7292 s!2326))))

(declare-fun lt!2140744 () Unit!152394)

(declare-fun mainMatchTheorem!1883 (Regex!14780 List!60641) Unit!152394)

(assert (=> b!5200222 (= lt!2140744 (mainMatchTheorem!1883 r!7292 s!2326))))

(assert (= (and start!550112 res!2209304) b!5200204))

(assert (= (and b!5200204 res!2209301) b!5200211))

(assert (= (and b!5200211 res!2209307) b!5200222))

(assert (= (and b!5200222 (not res!2209300)) b!5200207))

(assert (= (and b!5200207 (not res!2209297)) b!5200219))

(assert (= (and b!5200219 (not res!2209302)) b!5200218))

(assert (= (and b!5200218 (not res!2209305)) b!5200215))

(assert (= (and b!5200215 (not res!2209299)) b!5200208))

(assert (= (and b!5200208 (not res!2209303)) b!5200220))

(assert (= (and b!5200220 (not res!2209298)) b!5200213))

(assert (= (and b!5200213 (not res!2209306)) b!5200216))

(assert (= (and start!550112 (is-ElementMatch!14780 r!7292)) b!5200206))

(assert (= (and start!550112 (is-Concat!23625 r!7292)) b!5200214))

(assert (= (and start!550112 (is-Star!14780 r!7292)) b!5200210))

(assert (= (and start!550112 (is-Union!14780 r!7292)) b!5200212))

(assert (= (and start!550112 condSetEmpty!32971) setIsEmpty!32971))

(assert (= (and start!550112 (not condSetEmpty!32971)) setNonEmpty!32971))

(assert (= setNonEmpty!32971 b!5200217))

(assert (= b!5200209 b!5200205))

(assert (= (and start!550112 (is-Cons!60516 zl!343)) b!5200209))

(assert (= (and start!550112 (is-Cons!60517 s!2326)) b!5200221))

(declare-fun m!6253106 () Bool)

(assert (=> b!5200219 m!6253106))

(declare-fun m!6253108 () Bool)

(assert (=> b!5200222 m!6253108))

(declare-fun m!6253110 () Bool)

(assert (=> b!5200222 m!6253110))

(declare-fun m!6253112 () Bool)

(assert (=> b!5200222 m!6253112))

(declare-fun m!6253114 () Bool)

(assert (=> start!550112 m!6253114))

(declare-fun m!6253116 () Bool)

(assert (=> b!5200215 m!6253116))

(assert (=> b!5200215 m!6253116))

(declare-fun m!6253118 () Bool)

(assert (=> b!5200215 m!6253118))

(declare-fun m!6253120 () Bool)

(assert (=> b!5200211 m!6253120))

(declare-fun m!6253122 () Bool)

(assert (=> setNonEmpty!32971 m!6253122))

(declare-fun m!6253124 () Bool)

(assert (=> b!5200216 m!6253124))

(declare-fun m!6253126 () Bool)

(assert (=> b!5200216 m!6253126))

(declare-fun m!6253128 () Bool)

(assert (=> b!5200209 m!6253128))

(declare-fun m!6253130 () Bool)

(assert (=> b!5200207 m!6253130))

(declare-fun m!6253132 () Bool)

(assert (=> b!5200213 m!6253132))

(declare-fun m!6253134 () Bool)

(assert (=> b!5200204 m!6253134))

(declare-fun m!6253136 () Bool)

(assert (=> b!5200220 m!6253136))

(declare-fun m!6253138 () Bool)

(assert (=> b!5200220 m!6253138))

(declare-fun m!6253140 () Bool)

(assert (=> b!5200220 m!6253140))

(assert (=> b!5200220 m!6253140))

(declare-fun m!6253142 () Bool)

(assert (=> b!5200220 m!6253142))

(declare-fun m!6253144 () Bool)

(assert (=> b!5200220 m!6253144))

(assert (=> b!5200220 m!6253136))

(declare-fun m!6253146 () Bool)

(assert (=> b!5200220 m!6253146))

(push 1)

(assert (not b!5200220))

(assert (not b!5200217))

(assert (not b!5200219))

(assert tp_is_empty!38813)

(assert (not setNonEmpty!32971))

(assert (not b!5200204))

(assert (not b!5200214))

(assert (not b!5200213))

(assert (not b!5200212))

(assert (not b!5200211))

(assert (not start!550112))

(assert (not b!5200205))

(assert (not b!5200207))

(assert (not b!5200222))

(assert (not b!5200210))

(assert (not b!5200215))

(assert (not b!5200221))

(assert (not b!5200216))

(assert (not b!5200209))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5200320 () Bool)

(declare-fun e!3238283 () Bool)

(assert (=> b!5200320 (= e!3238283 (isEmpty!32425 (t!373792 (unfocusZipperList!222 zl!343))))))

(declare-fun b!5200321 () Bool)

(declare-fun e!3238278 () Regex!14780)

(declare-fun e!3238281 () Regex!14780)

(assert (=> b!5200321 (= e!3238278 e!3238281)))

(declare-fun c!896271 () Bool)

(assert (=> b!5200321 (= c!896271 (is-Cons!60515 (unfocusZipperList!222 zl!343)))))

(declare-fun b!5200322 () Bool)

(assert (=> b!5200322 (= e!3238281 (Union!14780 (h!66963 (unfocusZipperList!222 zl!343)) (generalisedUnion!709 (t!373792 (unfocusZipperList!222 zl!343)))))))

(declare-fun b!5200323 () Bool)

(declare-fun e!3238279 () Bool)

(declare-fun lt!2140768 () Regex!14780)

(declare-fun head!11149 (List!60639) Regex!14780)

(assert (=> b!5200323 (= e!3238279 (= lt!2140768 (head!11149 (unfocusZipperList!222 zl!343))))))

(declare-fun b!5200324 () Bool)

(declare-fun e!3238280 () Bool)

(assert (=> b!5200324 (= e!3238280 e!3238279)))

(declare-fun c!896269 () Bool)

(declare-fun tail!10246 (List!60639) List!60639)

(assert (=> b!5200324 (= c!896269 (isEmpty!32425 (tail!10246 (unfocusZipperList!222 zl!343))))))

(declare-fun b!5200325 () Bool)

(declare-fun isEmptyLang!760 (Regex!14780) Bool)

(assert (=> b!5200325 (= e!3238280 (isEmptyLang!760 lt!2140768))))

(declare-fun b!5200326 () Bool)

(declare-fun isUnion!192 (Regex!14780) Bool)

(assert (=> b!5200326 (= e!3238279 (isUnion!192 lt!2140768))))

(declare-fun b!5200327 () Bool)

(assert (=> b!5200327 (= e!3238278 (h!66963 (unfocusZipperList!222 zl!343)))))

(declare-fun b!5200328 () Bool)

(assert (=> b!5200328 (= e!3238281 EmptyLang!14780)))

(declare-fun d!1677626 () Bool)

(declare-fun e!3238282 () Bool)

(assert (=> d!1677626 e!3238282))

(declare-fun res!2209358 () Bool)

(assert (=> d!1677626 (=> (not res!2209358) (not e!3238282))))

(assert (=> d!1677626 (= res!2209358 (validRegex!6516 lt!2140768))))

(assert (=> d!1677626 (= lt!2140768 e!3238278)))

(declare-fun c!896272 () Bool)

(assert (=> d!1677626 (= c!896272 e!3238283)))

(declare-fun res!2209357 () Bool)

(assert (=> d!1677626 (=> (not res!2209357) (not e!3238283))))

(assert (=> d!1677626 (= res!2209357 (is-Cons!60515 (unfocusZipperList!222 zl!343)))))

(declare-fun lambda!260508 () Int)

(declare-fun forall!14223 (List!60639 Int) Bool)

(assert (=> d!1677626 (forall!14223 (unfocusZipperList!222 zl!343) lambda!260508)))

(assert (=> d!1677626 (= (generalisedUnion!709 (unfocusZipperList!222 zl!343)) lt!2140768)))

(declare-fun b!5200329 () Bool)

(assert (=> b!5200329 (= e!3238282 e!3238280)))

(declare-fun c!896270 () Bool)

(assert (=> b!5200329 (= c!896270 (isEmpty!32425 (unfocusZipperList!222 zl!343)))))

(assert (= (and d!1677626 res!2209357) b!5200320))

(assert (= (and d!1677626 c!896272) b!5200327))

(assert (= (and d!1677626 (not c!896272)) b!5200321))

(assert (= (and b!5200321 c!896271) b!5200322))

(assert (= (and b!5200321 (not c!896271)) b!5200328))

(assert (= (and d!1677626 res!2209358) b!5200329))

(assert (= (and b!5200329 c!896270) b!5200325))

(assert (= (and b!5200329 (not c!896270)) b!5200324))

(assert (= (and b!5200324 c!896269) b!5200323))

(assert (= (and b!5200324 (not c!896269)) b!5200326))

(declare-fun m!6253190 () Bool)

(assert (=> b!5200322 m!6253190))

(declare-fun m!6253192 () Bool)

(assert (=> b!5200326 m!6253192))

(assert (=> b!5200323 m!6253116))

(declare-fun m!6253194 () Bool)

(assert (=> b!5200323 m!6253194))

(assert (=> b!5200324 m!6253116))

(declare-fun m!6253196 () Bool)

(assert (=> b!5200324 m!6253196))

(assert (=> b!5200324 m!6253196))

(declare-fun m!6253198 () Bool)

(assert (=> b!5200324 m!6253198))

(declare-fun m!6253200 () Bool)

(assert (=> b!5200325 m!6253200))

(declare-fun m!6253202 () Bool)

(assert (=> b!5200320 m!6253202))

(assert (=> b!5200329 m!6253116))

(declare-fun m!6253204 () Bool)

(assert (=> b!5200329 m!6253204))

(declare-fun m!6253206 () Bool)

(assert (=> d!1677626 m!6253206))

(assert (=> d!1677626 m!6253116))

(declare-fun m!6253208 () Bool)

(assert (=> d!1677626 m!6253208))

(assert (=> b!5200215 d!1677626))

(declare-fun bs!1209196 () Bool)

(declare-fun d!1677628 () Bool)

(assert (= bs!1209196 (and d!1677628 d!1677626)))

(declare-fun lambda!260511 () Int)

(assert (=> bs!1209196 (= lambda!260511 lambda!260508)))

(declare-fun lt!2140771 () List!60639)

(assert (=> d!1677628 (forall!14223 lt!2140771 lambda!260511)))

(declare-fun e!3238286 () List!60639)

(assert (=> d!1677628 (= lt!2140771 e!3238286)))

(declare-fun c!896275 () Bool)

(assert (=> d!1677628 (= c!896275 (is-Cons!60516 zl!343))))

(assert (=> d!1677628 (= (unfocusZipperList!222 zl!343) lt!2140771)))

(declare-fun b!5200334 () Bool)

(assert (=> b!5200334 (= e!3238286 (Cons!60515 (generalisedConcat!449 (exprs!4664 (h!66964 zl!343))) (unfocusZipperList!222 (t!373793 zl!343))))))

(declare-fun b!5200335 () Bool)

(assert (=> b!5200335 (= e!3238286 Nil!60515)))

(assert (= (and d!1677628 c!896275) b!5200334))

(assert (= (and d!1677628 (not c!896275)) b!5200335))

(declare-fun m!6253210 () Bool)

(assert (=> d!1677628 m!6253210))

(assert (=> b!5200334 m!6253106))

(declare-fun m!6253212 () Bool)

(assert (=> b!5200334 m!6253212))

(assert (=> b!5200215 d!1677628))

(declare-fun d!1677630 () Bool)

(assert (=> d!1677630 (= (isEmpty!32424 (t!373793 zl!343)) (is-Nil!60516 (t!373793 zl!343)))))

(assert (=> b!5200207 d!1677630))

(declare-fun b!5200354 () Bool)

(declare-fun res!2209372 () Bool)

(declare-fun e!3238301 () Bool)

(assert (=> b!5200354 (=> (not res!2209372) (not e!3238301))))

(declare-fun call!365545 () Bool)

(assert (=> b!5200354 (= res!2209372 call!365545)))

(declare-fun e!3238307 () Bool)

(assert (=> b!5200354 (= e!3238307 e!3238301)))

(declare-fun bm!365539 () Bool)

(declare-fun call!365544 () Bool)

(declare-fun c!896281 () Bool)

(assert (=> bm!365539 (= call!365544 (validRegex!6516 (ite c!896281 (regTwo!30073 (h!66963 (exprs!4664 (h!66964 zl!343)))) (regTwo!30072 (h!66963 (exprs!4664 (h!66964 zl!343)))))))))

(declare-fun b!5200355 () Bool)

(declare-fun e!3238302 () Bool)

(assert (=> b!5200355 (= e!3238302 call!365544)))

(declare-fun b!5200356 () Bool)

(declare-fun res!2209373 () Bool)

(declare-fun e!3238306 () Bool)

(assert (=> b!5200356 (=> res!2209373 e!3238306)))

(assert (=> b!5200356 (= res!2209373 (not (is-Concat!23625 (h!66963 (exprs!4664 (h!66964 zl!343))))))))

(assert (=> b!5200356 (= e!3238307 e!3238306)))

(declare-fun b!5200357 () Bool)

(declare-fun e!3238304 () Bool)

(declare-fun e!3238303 () Bool)

(assert (=> b!5200357 (= e!3238304 e!3238303)))

(declare-fun res!2209371 () Bool)

(declare-fun nullable!4951 (Regex!14780) Bool)

(assert (=> b!5200357 (= res!2209371 (not (nullable!4951 (reg!15109 (h!66963 (exprs!4664 (h!66964 zl!343)))))))))

(assert (=> b!5200357 (=> (not res!2209371) (not e!3238303))))

(declare-fun b!5200358 () Bool)

(declare-fun call!365546 () Bool)

(assert (=> b!5200358 (= e!3238303 call!365546)))

(declare-fun b!5200359 () Bool)

(declare-fun e!3238305 () Bool)

(assert (=> b!5200359 (= e!3238305 e!3238304)))

(declare-fun c!896280 () Bool)

(assert (=> b!5200359 (= c!896280 (is-Star!14780 (h!66963 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun b!5200360 () Bool)

(assert (=> b!5200360 (= e!3238306 e!3238302)))

(declare-fun res!2209370 () Bool)

(assert (=> b!5200360 (=> (not res!2209370) (not e!3238302))))

(assert (=> b!5200360 (= res!2209370 call!365545)))

(declare-fun b!5200361 () Bool)

(assert (=> b!5200361 (= e!3238301 call!365544)))

(declare-fun d!1677632 () Bool)

(declare-fun res!2209369 () Bool)

(assert (=> d!1677632 (=> res!2209369 e!3238305)))

(assert (=> d!1677632 (= res!2209369 (is-ElementMatch!14780 (h!66963 (exprs!4664 (h!66964 zl!343)))))))

(assert (=> d!1677632 (= (validRegex!6516 (h!66963 (exprs!4664 (h!66964 zl!343)))) e!3238305)))

(declare-fun bm!365540 () Bool)

(assert (=> bm!365540 (= call!365546 (validRegex!6516 (ite c!896280 (reg!15109 (h!66963 (exprs!4664 (h!66964 zl!343)))) (ite c!896281 (regOne!30073 (h!66963 (exprs!4664 (h!66964 zl!343)))) (regOne!30072 (h!66963 (exprs!4664 (h!66964 zl!343))))))))))

(declare-fun b!5200362 () Bool)

(assert (=> b!5200362 (= e!3238304 e!3238307)))

(assert (=> b!5200362 (= c!896281 (is-Union!14780 (h!66963 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun bm!365541 () Bool)

(assert (=> bm!365541 (= call!365545 call!365546)))

(assert (= (and d!1677632 (not res!2209369)) b!5200359))

(assert (= (and b!5200359 c!896280) b!5200357))

(assert (= (and b!5200359 (not c!896280)) b!5200362))

(assert (= (and b!5200357 res!2209371) b!5200358))

(assert (= (and b!5200362 c!896281) b!5200354))

(assert (= (and b!5200362 (not c!896281)) b!5200356))

(assert (= (and b!5200354 res!2209372) b!5200361))

(assert (= (and b!5200356 (not res!2209373)) b!5200360))

(assert (= (and b!5200360 res!2209370) b!5200355))

(assert (= (or b!5200361 b!5200355) bm!365539))

(assert (= (or b!5200354 b!5200360) bm!365541))

(assert (= (or b!5200358 bm!365541) bm!365540))

(declare-fun m!6253214 () Bool)

(assert (=> bm!365539 m!6253214))

(declare-fun m!6253216 () Bool)

(assert (=> b!5200357 m!6253216))

(declare-fun m!6253218 () Bool)

(assert (=> bm!365540 m!6253218))

(assert (=> b!5200216 d!1677632))

(declare-fun b!5200376 () Bool)

(declare-fun e!3238318 () (Set Context!8328))

(declare-fun e!3238317 () (Set Context!8328))

(assert (=> b!5200376 (= e!3238318 e!3238317)))

(declare-fun c!896286 () Bool)

(assert (=> b!5200376 (= c!896286 (is-Cons!60515 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343))))))))))

(declare-fun b!5200378 () Bool)

(declare-fun call!365549 () (Set Context!8328))

(assert (=> b!5200378 (= e!3238318 (set.union call!365549 (derivationStepZipperUp!152 (Context!8329 (t!373792 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343)))))))) (h!66965 s!2326))))))

(declare-fun b!5200379 () Bool)

(assert (=> b!5200379 (= e!3238317 (as set.empty (Set Context!8328)))))

(declare-fun bm!365544 () Bool)

(declare-fun derivationStepZipperDown!229 (Regex!14780 Context!8328 C!29830) (Set Context!8328))

(assert (=> bm!365544 (= call!365549 (derivationStepZipperDown!229 (h!66963 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343))))))) (Context!8329 (t!373792 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343)))))))) (h!66965 s!2326)))))

(declare-fun b!5200380 () Bool)

(declare-fun e!3238319 () Bool)

(assert (=> b!5200380 (= e!3238319 (nullable!4951 (h!66963 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343)))))))))))

(declare-fun d!1677636 () Bool)

(declare-fun c!896287 () Bool)

(assert (=> d!1677636 (= c!896287 e!3238319)))

(declare-fun res!2209379 () Bool)

(assert (=> d!1677636 (=> (not res!2209379) (not e!3238319))))

(assert (=> d!1677636 (= res!2209379 (is-Cons!60515 (exprs!4664 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343))))))))))

(assert (=> d!1677636 (= (derivationStepZipperUp!152 (Context!8329 (Cons!60515 (h!66963 (exprs!4664 (h!66964 zl!343))) (t!373792 (exprs!4664 (h!66964 zl!343))))) (h!66965 s!2326)) e!3238318)))

(declare-fun b!5200377 () Bool)

(assert (=> b!5200377 (= e!3238317 call!365549)))

(assert (= (and d!1677636 res!2209379) b!5200380))

(assert (= (and d!1677636 c!896287) b!5200378))

(assert (= (and d!1677636 (not c!896287)) b!5200376))

(assert (= (and b!5200376 c!896286) b!5200377))

(assert (= (and b!5200376 (not c!896286)) b!5200379))

(assert (= (or b!5200378 b!5200377) bm!365544))

(declare-fun m!6253226 () Bool)

(assert (=> b!5200378 m!6253226))

(declare-fun m!6253228 () Bool)

(assert (=> bm!365544 m!6253228))

(declare-fun m!6253230 () Bool)

(assert (=> b!5200380 m!6253230))

(assert (=> b!5200216 d!1677636))

(declare-fun bs!1209197 () Bool)

(declare-fun d!1677640 () Bool)

(assert (= bs!1209197 (and d!1677640 d!1677626)))

(declare-fun lambda!260514 () Int)

(assert (=> bs!1209197 (= lambda!260514 lambda!260508)))

(declare-fun bs!1209198 () Bool)

(assert (= bs!1209198 (and d!1677640 d!1677628)))

(assert (=> bs!1209198 (= lambda!260514 lambda!260511)))

(assert (=> d!1677640 (= (inv!80198 (h!66964 zl!343)) (forall!14223 (exprs!4664 (h!66964 zl!343)) lambda!260514))))

(declare-fun bs!1209199 () Bool)

(assert (= bs!1209199 d!1677640))

(declare-fun m!6253232 () Bool)

(assert (=> bs!1209199 m!6253232))

(assert (=> b!5200209 d!1677640))

(declare-fun bs!1209200 () Bool)

(declare-fun d!1677642 () Bool)

(assert (= bs!1209200 (and d!1677642 d!1677626)))

(declare-fun lambda!260517 () Int)

(assert (=> bs!1209200 (= lambda!260517 lambda!260508)))

(declare-fun bs!1209201 () Bool)

(assert (= bs!1209201 (and d!1677642 d!1677628)))

(assert (=> bs!1209201 (= lambda!260517 lambda!260511)))

(declare-fun bs!1209202 () Bool)

(assert (= bs!1209202 (and d!1677642 d!1677640)))

(assert (=> bs!1209202 (= lambda!260517 lambda!260514)))

(declare-fun b!5200401 () Bool)

(declare-fun e!3238337 () Bool)

(declare-fun e!3238332 () Bool)

(assert (=> b!5200401 (= e!3238337 e!3238332)))

(declare-fun c!896296 () Bool)

(assert (=> b!5200401 (= c!896296 (isEmpty!32425 (exprs!4664 (h!66964 zl!343))))))

(declare-fun b!5200402 () Bool)

(declare-fun lt!2140777 () Regex!14780)

(declare-fun isEmptyExpr!751 (Regex!14780) Bool)

(assert (=> b!5200402 (= e!3238332 (isEmptyExpr!751 lt!2140777))))

(declare-fun b!5200403 () Bool)

(declare-fun e!3238336 () Bool)

(assert (=> b!5200403 (= e!3238336 (= lt!2140777 (head!11149 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun b!5200404 () Bool)

(declare-fun e!3238334 () Regex!14780)

(declare-fun e!3238333 () Regex!14780)

(assert (=> b!5200404 (= e!3238334 e!3238333)))

(declare-fun c!896299 () Bool)

(assert (=> b!5200404 (= c!896299 (is-Cons!60515 (exprs!4664 (h!66964 zl!343))))))

(declare-fun b!5200405 () Bool)

(assert (=> b!5200405 (= e!3238333 EmptyExpr!14780)))

(declare-fun b!5200406 () Bool)

(declare-fun isConcat!274 (Regex!14780) Bool)

(assert (=> b!5200406 (= e!3238336 (isConcat!274 lt!2140777))))

(assert (=> d!1677642 e!3238337))

(declare-fun res!2209385 () Bool)

(assert (=> d!1677642 (=> (not res!2209385) (not e!3238337))))

(assert (=> d!1677642 (= res!2209385 (validRegex!6516 lt!2140777))))

(assert (=> d!1677642 (= lt!2140777 e!3238334)))

(declare-fun c!896298 () Bool)

(declare-fun e!3238335 () Bool)

(assert (=> d!1677642 (= c!896298 e!3238335)))

(declare-fun res!2209384 () Bool)

(assert (=> d!1677642 (=> (not res!2209384) (not e!3238335))))

(assert (=> d!1677642 (= res!2209384 (is-Cons!60515 (exprs!4664 (h!66964 zl!343))))))

(assert (=> d!1677642 (forall!14223 (exprs!4664 (h!66964 zl!343)) lambda!260517)))

(assert (=> d!1677642 (= (generalisedConcat!449 (exprs!4664 (h!66964 zl!343))) lt!2140777)))

(declare-fun b!5200407 () Bool)

(assert (=> b!5200407 (= e!3238335 (isEmpty!32425 (t!373792 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun b!5200408 () Bool)

(assert (=> b!5200408 (= e!3238332 e!3238336)))

(declare-fun c!896297 () Bool)

(assert (=> b!5200408 (= c!896297 (isEmpty!32425 (tail!10246 (exprs!4664 (h!66964 zl!343)))))))

(declare-fun b!5200409 () Bool)

(assert (=> b!5200409 (= e!3238333 (Concat!23625 (h!66963 (exprs!4664 (h!66964 zl!343))) (generalisedConcat!449 (t!373792 (exprs!4664 (h!66964 zl!343))))))))

(declare-fun b!5200410 () Bool)

(assert (=> b!5200410 (= e!3238334 (h!66963 (exprs!4664 (h!66964 zl!343))))))

(assert (= (and d!1677642 res!2209384) b!5200407))

(assert (= (and d!1677642 c!896298) b!5200410))

(assert (= (and d!1677642 (not c!896298)) b!5200404))

(assert (= (and b!5200404 c!896299) b!5200409))

(assert (= (and b!5200404 (not c!896299)) b!5200405))

(assert (= (and d!1677642 res!2209385) b!5200401))

(assert (= (and b!5200401 c!896296) b!5200402))

(assert (= (and b!5200401 (not c!896296)) b!5200408))

(assert (= (and b!5200408 c!896297) b!5200403))

(assert (= (and b!5200408 (not c!896297)) b!5200406))

(assert (=> b!5200407 m!6253132))

(declare-fun m!6253234 () Bool)

(assert (=> b!5200403 m!6253234))

(declare-fun m!6253236 () Bool)

(assert (=> b!5200406 m!6253236))

(declare-fun m!6253238 () Bool)

(assert (=> b!5200409 m!6253238))

(declare-fun m!6253240 () Bool)

(assert (=> b!5200402 m!6253240))

(declare-fun m!6253242 () Bool)

(assert (=> b!5200408 m!6253242))

(assert (=> b!5200408 m!6253242))

(declare-fun m!6253244 () Bool)

(assert (=> b!5200408 m!6253244))

(declare-fun m!6253246 () Bool)

(assert (=> b!5200401 m!6253246))

(declare-fun m!6253248 () Bool)

(assert (=> d!1677642 m!6253248))

(declare-fun m!6253250 () Bool)

(assert (=> d!1677642 m!6253250))

(assert (=> b!5200219 d!1677642))

(declare-fun d!1677644 () Bool)

(declare-fun lt!2140780 () Regex!14780)

(assert (=> d!1677644 (validRegex!6516 lt!2140780)))

(assert (=> d!1677644 (= lt!2140780 (generalisedUnion!709 (unfocusZipperList!222 zl!343)))))

(assert (=> d!1677644 (= (unfocusZipper!522 zl!343) lt!2140780)))

(declare-fun bs!1209203 () Bool)

(assert (= bs!1209203 d!1677644))

(declare-fun m!6253252 () Bool)

(assert (=> bs!1209203 m!6253252))

(assert (=> bs!1209203 m!6253116))

(assert (=> bs!1209203 m!6253116))

(assert (=> bs!1209203 m!6253118))

(assert (=> b!5200211 d!1677644))

(declare-fun b!5200411 () Bool)

(declare-fun res!2209389 () Bool)

(declare-fun e!3238338 () Bool)

(assert (=> b!5200411 (=> (not res!2209389) (not e!3238338))))

(declare-fun call!365551 () Bool)

(assert (=> b!5200411 (= res!2209389 call!365551)))

(declare-fun e!3238344 () Bool)

(assert (=> b!5200411 (= e!3238344 e!3238338)))

(declare-fun bm!365545 () Bool)

(declare-fun call!365550 () Bool)

(declare-fun c!896301 () Bool)

(assert (=> bm!365545 (= call!365550 (validRegex!6516 (ite c!896301 (regTwo!30073 r!7292) (regTwo!30072 r!7292))))))

(declare-fun b!5200412 () Bool)

(declare-fun e!3238339 () Bool)

(assert (=> b!5200412 (= e!3238339 call!365550)))

(declare-fun b!5200413 () Bool)

(declare-fun res!2209390 () Bool)

(declare-fun e!3238343 () Bool)

(assert (=> b!5200413 (=> res!2209390 e!3238343)))

(assert (=> b!5200413 (= res!2209390 (not (is-Concat!23625 r!7292)))))

(assert (=> b!5200413 (= e!3238344 e!3238343)))

(declare-fun b!5200414 () Bool)

(declare-fun e!3238341 () Bool)

(declare-fun e!3238340 () Bool)

(assert (=> b!5200414 (= e!3238341 e!3238340)))

(declare-fun res!2209388 () Bool)

(assert (=> b!5200414 (= res!2209388 (not (nullable!4951 (reg!15109 r!7292))))))

(assert (=> b!5200414 (=> (not res!2209388) (not e!3238340))))

(declare-fun b!5200415 () Bool)

(declare-fun call!365552 () Bool)

(assert (=> b!5200415 (= e!3238340 call!365552)))

(declare-fun b!5200416 () Bool)

(declare-fun e!3238342 () Bool)

(assert (=> b!5200416 (= e!3238342 e!3238341)))

(declare-fun c!896300 () Bool)

(assert (=> b!5200416 (= c!896300 (is-Star!14780 r!7292))))

(declare-fun b!5200417 () Bool)

(assert (=> b!5200417 (= e!3238343 e!3238339)))

(declare-fun res!2209387 () Bool)

(assert (=> b!5200417 (=> (not res!2209387) (not e!3238339))))

(assert (=> b!5200417 (= res!2209387 call!365551)))

(declare-fun b!5200418 () Bool)

(assert (=> b!5200418 (= e!3238338 call!365550)))

(declare-fun d!1677646 () Bool)

(declare-fun res!2209386 () Bool)

(assert (=> d!1677646 (=> res!2209386 e!3238342)))

(assert (=> d!1677646 (= res!2209386 (is-ElementMatch!14780 r!7292))))

(assert (=> d!1677646 (= (validRegex!6516 r!7292) e!3238342)))

(declare-fun bm!365546 () Bool)

(assert (=> bm!365546 (= call!365552 (validRegex!6516 (ite c!896300 (reg!15109 r!7292) (ite c!896301 (regOne!30073 r!7292) (regOne!30072 r!7292)))))))

(declare-fun b!5200419 () Bool)

(assert (=> b!5200419 (= e!3238341 e!3238344)))

(assert (=> b!5200419 (= c!896301 (is-Union!14780 r!7292))))

(declare-fun bm!365547 () Bool)

(assert (=> bm!365547 (= call!365551 call!365552)))

(assert (= (and d!1677646 (not res!2209386)) b!5200416))

(assert (= (and b!5200416 c!896300) b!5200414))

(assert (= (and b!5200416 (not c!896300)) b!5200419))

(assert (= (and b!5200414 res!2209388) b!5200415))

(assert (= (and b!5200419 c!896301) b!5200411))

(assert (= (and b!5200419 (not c!896301)) b!5200413))

(assert (= (and b!5200411 res!2209389) b!5200418))

(assert (= (and b!5200413 (not res!2209390)) b!5200417))

(assert (= (and b!5200417 res!2209387) b!5200412))

(assert (= (or b!5200418 b!5200412) bm!365545))

(assert (= (or b!5200411 b!5200417) bm!365547))

(assert (= (or b!5200415 bm!365547) bm!365546))

(declare-fun m!6253254 () Bool)

(assert (=> bm!365545 m!6253254))

(declare-fun m!6253256 () Bool)

(assert (=> b!5200414 m!6253256))

(declare-fun m!6253258 () Bool)

(assert (=> bm!365546 m!6253258))

(assert (=> start!550112 d!1677646))

(declare-fun d!1677648 () Bool)

(declare-fun choose!38642 (Int) Bool)

(assert (=> d!1677648 (= (Exists!1961 lambda!260496) (choose!38642 lambda!260496))))

(declare-fun bs!1209204 () Bool)

(assert (= bs!1209204 d!1677648))

(declare-fun m!6253260 () Bool)

(assert (=> bs!1209204 m!6253260))

(assert (=> b!5200220 d!1677648))

(declare-fun b!5200456 () Bool)

(declare-fun res!2209413 () Bool)

(declare-fun e!3238365 () Bool)

(assert (=> b!5200456 (=> (not res!2209413) (not e!3238365))))

(declare-fun lt!2140793 () Option!14891)

(declare-fun get!20790 (Option!14891) tuple2!63958)

(assert (=> b!5200456 (= res!2209413 (matchR!6965 (regTwo!30072 r!7292) (_2!35282 (get!20790 lt!2140793))))))

(declare-fun b!5200457 () Bool)

(declare-fun ++!13194 (List!60641 List!60641) List!60641)

(assert (=> b!5200457 (= e!3238365 (= (++!13194 (_1!35282 (get!20790 lt!2140793)) (_2!35282 (get!20790 lt!2140793))) s!2326))))

(declare-fun b!5200458 () Bool)

(declare-fun e!3238368 () Bool)

(assert (=> b!5200458 (= e!3238368 (not (isDefined!11594 lt!2140793)))))

(declare-fun d!1677650 () Bool)

(assert (=> d!1677650 e!3238368))

(declare-fun res!2209411 () Bool)

(assert (=> d!1677650 (=> res!2209411 e!3238368)))

(assert (=> d!1677650 (= res!2209411 e!3238365)))

(declare-fun res!2209412 () Bool)

(assert (=> d!1677650 (=> (not res!2209412) (not e!3238365))))

(assert (=> d!1677650 (= res!2209412 (isDefined!11594 lt!2140793))))

(declare-fun e!3238367 () Option!14891)

(assert (=> d!1677650 (= lt!2140793 e!3238367)))

(declare-fun c!896310 () Bool)

(declare-fun e!3238366 () Bool)

(assert (=> d!1677650 (= c!896310 e!3238366)))

(declare-fun res!2209415 () Bool)

(assert (=> d!1677650 (=> (not res!2209415) (not e!3238366))))

(assert (=> d!1677650 (= res!2209415 (matchR!6965 (regOne!30072 r!7292) Nil!60517))))

(assert (=> d!1677650 (validRegex!6516 (regOne!30072 r!7292))))

(assert (=> d!1677650 (= (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) Nil!60517 s!2326 s!2326) lt!2140793)))

(declare-fun b!5200459 () Bool)

(declare-fun e!3238369 () Option!14891)

(assert (=> b!5200459 (= e!3238367 e!3238369)))

(declare-fun c!896311 () Bool)

(assert (=> b!5200459 (= c!896311 (is-Nil!60517 s!2326))))

(declare-fun b!5200460 () Bool)

(assert (=> b!5200460 (= e!3238367 (Some!14890 (tuple2!63959 Nil!60517 s!2326)))))

(declare-fun b!5200461 () Bool)

(declare-fun res!2209414 () Bool)

(assert (=> b!5200461 (=> (not res!2209414) (not e!3238365))))

(assert (=> b!5200461 (= res!2209414 (matchR!6965 (regOne!30072 r!7292) (_1!35282 (get!20790 lt!2140793))))))

(declare-fun b!5200462 () Bool)

(assert (=> b!5200462 (= e!3238369 None!14890)))

(declare-fun b!5200463 () Bool)

(assert (=> b!5200463 (= e!3238366 (matchR!6965 (regTwo!30072 r!7292) s!2326))))

(declare-fun b!5200464 () Bool)

(declare-fun lt!2140795 () Unit!152394)

(declare-fun lt!2140794 () Unit!152394)

(assert (=> b!5200464 (= lt!2140795 lt!2140794)))

(assert (=> b!5200464 (= (++!13194 (++!13194 Nil!60517 (Cons!60517 (h!66965 s!2326) Nil!60517)) (t!373794 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1609 (List!60641 C!29830 List!60641 List!60641) Unit!152394)

(assert (=> b!5200464 (= lt!2140794 (lemmaMoveElementToOtherListKeepsConcatEq!1609 Nil!60517 (h!66965 s!2326) (t!373794 s!2326) s!2326))))

(assert (=> b!5200464 (= e!3238369 (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) (++!13194 Nil!60517 (Cons!60517 (h!66965 s!2326) Nil!60517)) (t!373794 s!2326) s!2326))))

(assert (= (and d!1677650 res!2209415) b!5200463))

(assert (= (and d!1677650 c!896310) b!5200460))

(assert (= (and d!1677650 (not c!896310)) b!5200459))

(assert (= (and b!5200459 c!896311) b!5200462))

(assert (= (and b!5200459 (not c!896311)) b!5200464))

(assert (= (and d!1677650 res!2209412) b!5200461))

(assert (= (and b!5200461 res!2209414) b!5200456))

(assert (= (and b!5200456 res!2209413) b!5200457))

(assert (= (and d!1677650 (not res!2209411)) b!5200458))

(declare-fun m!6253262 () Bool)

(assert (=> b!5200458 m!6253262))

(declare-fun m!6253264 () Bool)

(assert (=> b!5200461 m!6253264))

(declare-fun m!6253266 () Bool)

(assert (=> b!5200461 m!6253266))

(declare-fun m!6253268 () Bool)

(assert (=> b!5200464 m!6253268))

(assert (=> b!5200464 m!6253268))

(declare-fun m!6253270 () Bool)

(assert (=> b!5200464 m!6253270))

(declare-fun m!6253272 () Bool)

(assert (=> b!5200464 m!6253272))

(assert (=> b!5200464 m!6253268))

(declare-fun m!6253274 () Bool)

(assert (=> b!5200464 m!6253274))

(declare-fun m!6253276 () Bool)

(assert (=> b!5200463 m!6253276))

(assert (=> b!5200457 m!6253264))

(declare-fun m!6253278 () Bool)

(assert (=> b!5200457 m!6253278))

(assert (=> b!5200456 m!6253264))

(declare-fun m!6253280 () Bool)

(assert (=> b!5200456 m!6253280))

(assert (=> d!1677650 m!6253262))

(declare-fun m!6253282 () Bool)

(assert (=> d!1677650 m!6253282))

(declare-fun m!6253284 () Bool)

(assert (=> d!1677650 m!6253284))

(assert (=> b!5200220 d!1677650))

(declare-fun d!1677652 () Bool)

(assert (=> d!1677652 (= (Exists!1961 lambda!260497) (choose!38642 lambda!260497))))

(declare-fun bs!1209205 () Bool)

(assert (= bs!1209205 d!1677652))

(declare-fun m!6253286 () Bool)

(assert (=> bs!1209205 m!6253286))

(assert (=> b!5200220 d!1677652))

(declare-fun bs!1209208 () Bool)

(declare-fun d!1677654 () Bool)

(assert (= bs!1209208 (and d!1677654 b!5200220)))

(declare-fun lambda!260520 () Int)

(assert (=> bs!1209208 (= lambda!260520 lambda!260496)))

(assert (=> bs!1209208 (not (= lambda!260520 lambda!260497))))

(assert (=> d!1677654 true))

(assert (=> d!1677654 true))

(assert (=> d!1677654 true))

(assert (=> d!1677654 (= (isDefined!11594 (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) Nil!60517 s!2326 s!2326)) (Exists!1961 lambda!260520))))

(declare-fun lt!2140801 () Unit!152394)

(declare-fun choose!38643 (Regex!14780 Regex!14780 List!60641) Unit!152394)

(assert (=> d!1677654 (= lt!2140801 (choose!38643 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326))))

(assert (=> d!1677654 (validRegex!6516 (regOne!30072 r!7292))))

(assert (=> d!1677654 (= (lemmaFindConcatSeparationEquivalentToExists!1069 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326) lt!2140801)))

(declare-fun bs!1209209 () Bool)

(assert (= bs!1209209 d!1677654))

(declare-fun m!6253316 () Bool)

(assert (=> bs!1209209 m!6253316))

(assert (=> bs!1209209 m!6253136))

(assert (=> bs!1209209 m!6253284))

(declare-fun m!6253318 () Bool)

(assert (=> bs!1209209 m!6253318))

(assert (=> bs!1209209 m!6253136))

(assert (=> bs!1209209 m!6253138))

(assert (=> b!5200220 d!1677654))

(declare-fun bs!1209210 () Bool)

(declare-fun d!1677662 () Bool)

(assert (= bs!1209210 (and d!1677662 b!5200220)))

(declare-fun lambda!260525 () Int)

(assert (=> bs!1209210 (= lambda!260525 lambda!260496)))

(assert (=> bs!1209210 (not (= lambda!260525 lambda!260497))))

(declare-fun bs!1209211 () Bool)

(assert (= bs!1209211 (and d!1677662 d!1677654)))

(assert (=> bs!1209211 (= lambda!260525 lambda!260520)))

(assert (=> d!1677662 true))

(assert (=> d!1677662 true))

(assert (=> d!1677662 true))

(declare-fun lambda!260526 () Int)

(assert (=> bs!1209210 (not (= lambda!260526 lambda!260496))))

(assert (=> bs!1209210 (= lambda!260526 lambda!260497)))

(assert (=> bs!1209211 (not (= lambda!260526 lambda!260520))))

(declare-fun bs!1209212 () Bool)

(assert (= bs!1209212 d!1677662))

(assert (=> bs!1209212 (not (= lambda!260526 lambda!260525))))

(assert (=> d!1677662 true))

(assert (=> d!1677662 true))

(assert (=> d!1677662 true))

(assert (=> d!1677662 (= (Exists!1961 lambda!260525) (Exists!1961 lambda!260526))))

(declare-fun lt!2140804 () Unit!152394)

(declare-fun choose!38644 (Regex!14780 Regex!14780 List!60641) Unit!152394)

(assert (=> d!1677662 (= lt!2140804 (choose!38644 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326))))

(assert (=> d!1677662 (validRegex!6516 (regOne!30072 r!7292))))

(assert (=> d!1677662 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!615 (regOne!30072 r!7292) (regTwo!30072 r!7292) s!2326) lt!2140804)))

(declare-fun m!6253320 () Bool)

(assert (=> bs!1209212 m!6253320))

(declare-fun m!6253322 () Bool)

(assert (=> bs!1209212 m!6253322))

(declare-fun m!6253324 () Bool)

(assert (=> bs!1209212 m!6253324))

(assert (=> bs!1209212 m!6253284))

(assert (=> b!5200220 d!1677662))

(declare-fun d!1677664 () Bool)

(declare-fun isEmpty!32428 (Option!14891) Bool)

(assert (=> d!1677664 (= (isDefined!11594 (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) Nil!60517 s!2326 s!2326)) (not (isEmpty!32428 (findConcatSeparation!1305 (regOne!30072 r!7292) (regTwo!30072 r!7292) Nil!60517 s!2326 s!2326))))))

(declare-fun bs!1209213 () Bool)

(assert (= bs!1209213 d!1677664))

(assert (=> bs!1209213 m!6253136))

(declare-fun m!6253326 () Bool)

(assert (=> bs!1209213 m!6253326))

(assert (=> b!5200220 d!1677664))

(declare-fun d!1677666 () Bool)

(assert (=> d!1677666 (= (isEmpty!32425 (t!373792 (exprs!4664 (h!66964 zl!343)))) (is-Nil!60515 (t!373792 (exprs!4664 (h!66964 zl!343)))))))

(assert (=> b!5200213 d!1677666))

(declare-fun bs!1209216 () Bool)

(declare-fun b!5200525 () Bool)

(assert (= bs!1209216 (and b!5200525 d!1677662)))

(declare-fun lambda!260534 () Int)

(assert (=> bs!1209216 (not (= lambda!260534 lambda!260526))))

(assert (=> bs!1209216 (not (= lambda!260534 lambda!260525))))

(declare-fun bs!1209217 () Bool)

(assert (= bs!1209217 (and b!5200525 b!5200220)))

(assert (=> bs!1209217 (not (= lambda!260534 lambda!260496))))

(assert (=> bs!1209217 (not (= lambda!260534 lambda!260497))))

(declare-fun bs!1209218 () Bool)

(assert (= bs!1209218 (and b!5200525 d!1677654)))

(assert (=> bs!1209218 (not (= lambda!260534 lambda!260520))))

(assert (=> b!5200525 true))

(assert (=> b!5200525 true))

(declare-fun bs!1209219 () Bool)

(declare-fun b!5200529 () Bool)

(assert (= bs!1209219 (and b!5200529 d!1677662)))

(declare-fun lambda!260535 () Int)

(assert (=> bs!1209219 (= lambda!260535 lambda!260526)))

(declare-fun bs!1209220 () Bool)

(assert (= bs!1209220 (and b!5200529 b!5200525)))

(assert (=> bs!1209220 (not (= lambda!260535 lambda!260534))))

(assert (=> bs!1209219 (not (= lambda!260535 lambda!260525))))

(declare-fun bs!1209221 () Bool)

(assert (= bs!1209221 (and b!5200529 b!5200220)))

(assert (=> bs!1209221 (not (= lambda!260535 lambda!260496))))

(assert (=> bs!1209221 (= lambda!260535 lambda!260497)))

(declare-fun bs!1209222 () Bool)

(assert (= bs!1209222 (and b!5200529 d!1677654)))

(assert (=> bs!1209222 (not (= lambda!260535 lambda!260520))))

(assert (=> b!5200529 true))

(assert (=> b!5200529 true))

(declare-fun b!5200522 () Bool)

(declare-fun e!3238406 () Bool)

(declare-fun call!365558 () Bool)

(assert (=> b!5200522 (= e!3238406 call!365558)))

(declare-fun b!5200523 () Bool)

(declare-fun c!896322 () Bool)

(assert (=> b!5200523 (= c!896322 (is-ElementMatch!14780 r!7292))))

(declare-fun e!3238404 () Bool)

(declare-fun e!3238407 () Bool)

(assert (=> b!5200523 (= e!3238404 e!3238407)))

(declare-fun b!5200524 () Bool)

(assert (=> b!5200524 (= e!3238406 e!3238404)))

(declare-fun res!2209454 () Bool)

(assert (=> b!5200524 (= res!2209454 (not (is-EmptyLang!14780 r!7292)))))

(assert (=> b!5200524 (=> (not res!2209454) (not e!3238404))))

(declare-fun e!3238403 () Bool)

(declare-fun call!365557 () Bool)

(assert (=> b!5200525 (= e!3238403 call!365557)))

(declare-fun bm!365552 () Bool)

(declare-fun isEmpty!32429 (List!60641) Bool)

(assert (=> bm!365552 (= call!365558 (isEmpty!32429 s!2326))))

(declare-fun b!5200526 () Bool)

(assert (=> b!5200526 (= e!3238407 (= s!2326 (Cons!60517 (c!896259 r!7292) Nil!60517)))))

(declare-fun b!5200527 () Bool)

(declare-fun res!2209455 () Bool)

(assert (=> b!5200527 (=> res!2209455 e!3238403)))

(assert (=> b!5200527 (= res!2209455 call!365558)))

(declare-fun e!3238402 () Bool)

(assert (=> b!5200527 (= e!3238402 e!3238403)))

(declare-fun b!5200528 () Bool)

(declare-fun c!896324 () Bool)

(assert (=> b!5200528 (= c!896324 (is-Union!14780 r!7292))))

(declare-fun e!3238401 () Bool)

(assert (=> b!5200528 (= e!3238407 e!3238401)))

(declare-fun d!1677668 () Bool)

(declare-fun c!896325 () Bool)

(assert (=> d!1677668 (= c!896325 (is-EmptyExpr!14780 r!7292))))

(assert (=> d!1677668 (= (matchRSpec!1883 r!7292 s!2326) e!3238406)))

(assert (=> b!5200529 (= e!3238402 call!365557)))

(declare-fun b!5200530 () Bool)

(declare-fun e!3238405 () Bool)

(assert (=> b!5200530 (= e!3238401 e!3238405)))

(declare-fun res!2209453 () Bool)

(assert (=> b!5200530 (= res!2209453 (matchRSpec!1883 (regOne!30073 r!7292) s!2326))))

(assert (=> b!5200530 (=> res!2209453 e!3238405)))

(declare-fun bm!365553 () Bool)

(declare-fun c!896323 () Bool)

(assert (=> bm!365553 (= call!365557 (Exists!1961 (ite c!896323 lambda!260534 lambda!260535)))))

(declare-fun b!5200531 () Bool)

(assert (=> b!5200531 (= e!3238405 (matchRSpec!1883 (regTwo!30073 r!7292) s!2326))))

(declare-fun b!5200532 () Bool)

(assert (=> b!5200532 (= e!3238401 e!3238402)))

(assert (=> b!5200532 (= c!896323 (is-Star!14780 r!7292))))

(assert (= (and d!1677668 c!896325) b!5200522))

(assert (= (and d!1677668 (not c!896325)) b!5200524))

(assert (= (and b!5200524 res!2209454) b!5200523))

(assert (= (and b!5200523 c!896322) b!5200526))

(assert (= (and b!5200523 (not c!896322)) b!5200528))

(assert (= (and b!5200528 c!896324) b!5200530))

(assert (= (and b!5200528 (not c!896324)) b!5200532))

(assert (= (and b!5200530 (not res!2209453)) b!5200531))

(assert (= (and b!5200532 c!896323) b!5200527))

(assert (= (and b!5200532 (not c!896323)) b!5200529))

(assert (= (and b!5200527 (not res!2209455)) b!5200525))

(assert (= (or b!5200525 b!5200529) bm!365553))

(assert (= (or b!5200522 b!5200527) bm!365552))

(declare-fun m!6253332 () Bool)

(assert (=> bm!365552 m!6253332))

(declare-fun m!6253334 () Bool)

(assert (=> b!5200530 m!6253334))

(declare-fun m!6253336 () Bool)

(assert (=> bm!365553 m!6253336))

(declare-fun m!6253338 () Bool)

(assert (=> b!5200531 m!6253338))

(assert (=> b!5200222 d!1677668))

(declare-fun b!5200569 () Bool)

(declare-fun e!3238430 () Bool)

(declare-fun head!11150 (List!60641) C!29830)

(assert (=> b!5200569 (= e!3238430 (not (= (head!11150 s!2326) (c!896259 r!7292))))))

(declare-fun b!5200570 () Bool)

(declare-fun e!3238431 () Bool)

(declare-fun lt!2140812 () Bool)

(assert (=> b!5200570 (= e!3238431 (not lt!2140812))))

(declare-fun b!5200571 () Bool)

(declare-fun res!2209482 () Bool)

(declare-fun e!3238428 () Bool)

(assert (=> b!5200571 (=> res!2209482 e!3238428)))

(declare-fun e!3238432 () Bool)

(assert (=> b!5200571 (= res!2209482 e!3238432)))

(declare-fun res!2209484 () Bool)

(assert (=> b!5200571 (=> (not res!2209484) (not e!3238432))))

(assert (=> b!5200571 (= res!2209484 lt!2140812)))

(declare-fun b!5200572 () Bool)

(declare-fun e!3238426 () Bool)

(assert (=> b!5200572 (= e!3238426 e!3238431)))

(declare-fun c!896333 () Bool)

(assert (=> b!5200572 (= c!896333 (is-EmptyLang!14780 r!7292))))

(declare-fun b!5200573 () Bool)

(declare-fun e!3238427 () Bool)

(assert (=> b!5200573 (= e!3238428 e!3238427)))

(declare-fun res!2209480 () Bool)

(assert (=> b!5200573 (=> (not res!2209480) (not e!3238427))))

(assert (=> b!5200573 (= res!2209480 (not lt!2140812))))

(declare-fun b!5200574 () Bool)

(declare-fun res!2209481 () Bool)

(assert (=> b!5200574 (=> res!2209481 e!3238428)))

(assert (=> b!5200574 (= res!2209481 (not (is-ElementMatch!14780 r!7292)))))

(assert (=> b!5200574 (= e!3238431 e!3238428)))

(declare-fun b!5200575 () Bool)

(assert (=> b!5200575 (= e!3238432 (= (head!11150 s!2326) (c!896259 r!7292)))))

(declare-fun b!5200576 () Bool)

(declare-fun res!2209483 () Bool)

(assert (=> b!5200576 (=> (not res!2209483) (not e!3238432))))

(declare-fun call!365561 () Bool)

(assert (=> b!5200576 (= res!2209483 (not call!365561))))

(declare-fun b!5200577 () Bool)

(assert (=> b!5200577 (= e!3238426 (= lt!2140812 call!365561))))

(declare-fun b!5200579 () Bool)

(declare-fun e!3238429 () Bool)

(assert (=> b!5200579 (= e!3238429 (nullable!4951 r!7292))))

(declare-fun b!5200580 () Bool)

(declare-fun res!2209487 () Bool)

(assert (=> b!5200580 (=> res!2209487 e!3238430)))

(declare-fun tail!10247 (List!60641) List!60641)

(assert (=> b!5200580 (= res!2209487 (not (isEmpty!32429 (tail!10247 s!2326))))))

(declare-fun bm!365556 () Bool)

(assert (=> bm!365556 (= call!365561 (isEmpty!32429 s!2326))))

(declare-fun b!5200581 () Bool)

(assert (=> b!5200581 (= e!3238427 e!3238430)))

(declare-fun res!2209486 () Bool)

(assert (=> b!5200581 (=> res!2209486 e!3238430)))

(assert (=> b!5200581 (= res!2209486 call!365561)))

(declare-fun b!5200582 () Bool)

(declare-fun res!2209485 () Bool)

(assert (=> b!5200582 (=> (not res!2209485) (not e!3238432))))

(assert (=> b!5200582 (= res!2209485 (isEmpty!32429 (tail!10247 s!2326)))))

(declare-fun d!1677672 () Bool)

(assert (=> d!1677672 e!3238426))

(declare-fun c!896332 () Bool)

(assert (=> d!1677672 (= c!896332 (is-EmptyExpr!14780 r!7292))))

(assert (=> d!1677672 (= lt!2140812 e!3238429)))

(declare-fun c!896334 () Bool)

(assert (=> d!1677672 (= c!896334 (isEmpty!32429 s!2326))))

(assert (=> d!1677672 (validRegex!6516 r!7292)))

(assert (=> d!1677672 (= (matchR!6965 r!7292 s!2326) lt!2140812)))

(declare-fun b!5200578 () Bool)

(declare-fun derivativeStep!4037 (Regex!14780 C!29830) Regex!14780)

(assert (=> b!5200578 (= e!3238429 (matchR!6965 (derivativeStep!4037 r!7292 (head!11150 s!2326)) (tail!10247 s!2326)))))

(assert (= (and d!1677672 c!896334) b!5200579))

(assert (= (and d!1677672 (not c!896334)) b!5200578))

(assert (= (and d!1677672 c!896332) b!5200577))

(assert (= (and d!1677672 (not c!896332)) b!5200572))

(assert (= (and b!5200572 c!896333) b!5200570))

(assert (= (and b!5200572 (not c!896333)) b!5200574))

(assert (= (and b!5200574 (not res!2209481)) b!5200571))

(assert (= (and b!5200571 res!2209484) b!5200576))

(assert (= (and b!5200576 res!2209483) b!5200582))

(assert (= (and b!5200582 res!2209485) b!5200575))

(assert (= (and b!5200571 (not res!2209482)) b!5200573))

(assert (= (and b!5200573 res!2209480) b!5200581))

(assert (= (and b!5200581 (not res!2209486)) b!5200580))

(assert (= (and b!5200580 (not res!2209487)) b!5200569))

(assert (= (or b!5200577 b!5200576 b!5200581) bm!365556))

(declare-fun m!6253340 () Bool)

(assert (=> b!5200579 m!6253340))

(assert (=> d!1677672 m!6253332))

(assert (=> d!1677672 m!6253114))

(declare-fun m!6253342 () Bool)

(assert (=> b!5200569 m!6253342))

(assert (=> bm!365556 m!6253332))

(declare-fun m!6253344 () Bool)

(assert (=> b!5200582 m!6253344))

(assert (=> b!5200582 m!6253344))

(declare-fun m!6253346 () Bool)

(assert (=> b!5200582 m!6253346))

(assert (=> b!5200580 m!6253344))

(assert (=> b!5200580 m!6253344))

(assert (=> b!5200580 m!6253346))

(assert (=> b!5200575 m!6253342))

(assert (=> b!5200578 m!6253342))

(assert (=> b!5200578 m!6253342))

(declare-fun m!6253348 () Bool)

(assert (=> b!5200578 m!6253348))

(assert (=> b!5200578 m!6253344))

(assert (=> b!5200578 m!6253348))

(assert (=> b!5200578 m!6253344))

(declare-fun m!6253350 () Bool)

(assert (=> b!5200578 m!6253350))

(assert (=> b!5200222 d!1677672))

(declare-fun d!1677674 () Bool)

(assert (=> d!1677674 (= (matchR!6965 r!7292 s!2326) (matchRSpec!1883 r!7292 s!2326))))

(declare-fun lt!2140816 () Unit!152394)

(declare-fun choose!38645 (Regex!14780 List!60641) Unit!152394)

(assert (=> d!1677674 (= lt!2140816 (choose!38645 r!7292 s!2326))))

(assert (=> d!1677674 (validRegex!6516 r!7292)))

(assert (=> d!1677674 (= (mainMatchTheorem!1883 r!7292 s!2326) lt!2140816)))

(declare-fun bs!1209225 () Bool)

(assert (= bs!1209225 d!1677674))

(assert (=> bs!1209225 m!6253110))

(assert (=> bs!1209225 m!6253108))

(declare-fun m!6253352 () Bool)

(assert (=> bs!1209225 m!6253352))

(assert (=> bs!1209225 m!6253114))

(assert (=> b!5200222 d!1677674))

(declare-fun bs!1209227 () Bool)

(declare-fun d!1677676 () Bool)

(assert (= bs!1209227 (and d!1677676 d!1677626)))

(declare-fun lambda!260542 () Int)

(assert (=> bs!1209227 (= lambda!260542 lambda!260508)))

(declare-fun bs!1209228 () Bool)

(assert (= bs!1209228 (and d!1677676 d!1677628)))

(assert (=> bs!1209228 (= lambda!260542 lambda!260511)))

(declare-fun bs!1209229 () Bool)

(assert (= bs!1209229 (and d!1677676 d!1677640)))

(assert (=> bs!1209229 (= lambda!260542 lambda!260514)))

(declare-fun bs!1209230 () Bool)

(assert (= bs!1209230 (and d!1677676 d!1677642)))

(assert (=> bs!1209230 (= lambda!260542 lambda!260517)))

(assert (=> d!1677676 (= (inv!80198 setElem!32971) (forall!14223 (exprs!4664 setElem!32971) lambda!260542))))

(declare-fun bs!1209231 () Bool)

(assert (= bs!1209231 d!1677676))

(declare-fun m!6253354 () Bool)

(assert (=> bs!1209231 m!6253354))

(assert (=> setNonEmpty!32971 d!1677676))

(declare-fun d!1677678 () Bool)

(declare-fun e!3238435 () Bool)

(assert (=> d!1677678 e!3238435))

(declare-fun res!2209490 () Bool)

(assert (=> d!1677678 (=> (not res!2209490) (not e!3238435))))

(declare-fun lt!2140819 () List!60640)

(declare-fun noDuplicate!1170 (List!60640) Bool)

(assert (=> d!1677678 (= res!2209490 (noDuplicate!1170 lt!2140819))))

(declare-fun choose!38646 ((Set Context!8328)) List!60640)

(assert (=> d!1677678 (= lt!2140819 (choose!38646 z!1189))))

(assert (=> d!1677678 (= (toList!8564 z!1189) lt!2140819)))

(declare-fun b!5200585 () Bool)

(declare-fun content!10708 (List!60640) (Set Context!8328))

(assert (=> b!5200585 (= e!3238435 (= (content!10708 lt!2140819) z!1189))))

(assert (= (and d!1677678 res!2209490) b!5200585))

(declare-fun m!6253364 () Bool)

(assert (=> d!1677678 m!6253364))

(declare-fun m!6253366 () Bool)

(assert (=> d!1677678 m!6253366))

(declare-fun m!6253368 () Bool)

(assert (=> b!5200585 m!6253368))

(assert (=> b!5200204 d!1677678))

(declare-fun b!5200599 () Bool)

(declare-fun e!3238438 () Bool)

(declare-fun tp!1458682 () Bool)

(declare-fun tp!1458681 () Bool)

(assert (=> b!5200599 (= e!3238438 (and tp!1458682 tp!1458681))))

(assert (=> b!5200212 (= tp!1458630 e!3238438)))

(declare-fun b!5200598 () Bool)

(declare-fun tp!1458680 () Bool)

(assert (=> b!5200598 (= e!3238438 tp!1458680)))

(declare-fun b!5200597 () Bool)

(declare-fun tp!1458683 () Bool)

(declare-fun tp!1458684 () Bool)

(assert (=> b!5200597 (= e!3238438 (and tp!1458683 tp!1458684))))

(declare-fun b!5200596 () Bool)

(assert (=> b!5200596 (= e!3238438 tp_is_empty!38813)))

(assert (= (and b!5200212 (is-ElementMatch!14780 (regOne!30073 r!7292))) b!5200596))

(assert (= (and b!5200212 (is-Concat!23625 (regOne!30073 r!7292))) b!5200597))

(assert (= (and b!5200212 (is-Star!14780 (regOne!30073 r!7292))) b!5200598))

(assert (= (and b!5200212 (is-Union!14780 (regOne!30073 r!7292))) b!5200599))

(declare-fun b!5200603 () Bool)

(declare-fun e!3238439 () Bool)

(declare-fun tp!1458687 () Bool)

(declare-fun tp!1458686 () Bool)

(assert (=> b!5200603 (= e!3238439 (and tp!1458687 tp!1458686))))

(assert (=> b!5200212 (= tp!1458631 e!3238439)))

(declare-fun b!5200602 () Bool)

(declare-fun tp!1458685 () Bool)

(assert (=> b!5200602 (= e!3238439 tp!1458685)))

(declare-fun b!5200601 () Bool)

(declare-fun tp!1458688 () Bool)

(declare-fun tp!1458689 () Bool)

(assert (=> b!5200601 (= e!3238439 (and tp!1458688 tp!1458689))))

(declare-fun b!5200600 () Bool)

(assert (=> b!5200600 (= e!3238439 tp_is_empty!38813)))

(assert (= (and b!5200212 (is-ElementMatch!14780 (regTwo!30073 r!7292))) b!5200600))

(assert (= (and b!5200212 (is-Concat!23625 (regTwo!30073 r!7292))) b!5200601))

(assert (= (and b!5200212 (is-Star!14780 (regTwo!30073 r!7292))) b!5200602))

(assert (= (and b!5200212 (is-Union!14780 (regTwo!30073 r!7292))) b!5200603))

(declare-fun b!5200608 () Bool)

(declare-fun e!3238442 () Bool)

(declare-fun tp!1458692 () Bool)

(assert (=> b!5200608 (= e!3238442 (and tp_is_empty!38813 tp!1458692))))

(assert (=> b!5200221 (= tp!1458638 e!3238442)))

(assert (= (and b!5200221 (is-Cons!60517 (t!373794 s!2326))) b!5200608))

(declare-fun condSetEmpty!32977 () Bool)

(assert (=> setNonEmpty!32971 (= condSetEmpty!32977 (= setRest!32971 (as set.empty (Set Context!8328))))))

(declare-fun setRes!32977 () Bool)

(assert (=> setNonEmpty!32971 (= tp!1458635 setRes!32977)))

(declare-fun setIsEmpty!32977 () Bool)

(assert (=> setIsEmpty!32977 setRes!32977))

(declare-fun setElem!32977 () Context!8328)

(declare-fun tp!1458697 () Bool)

(declare-fun setNonEmpty!32977 () Bool)

(declare-fun e!3238445 () Bool)

(assert (=> setNonEmpty!32977 (= setRes!32977 (and tp!1458697 (inv!80198 setElem!32977) e!3238445))))

(declare-fun setRest!32977 () (Set Context!8328))

(assert (=> setNonEmpty!32977 (= setRest!32971 (set.union (set.insert setElem!32977 (as set.empty (Set Context!8328))) setRest!32977))))

(declare-fun b!5200613 () Bool)

(declare-fun tp!1458698 () Bool)

(assert (=> b!5200613 (= e!3238445 tp!1458698)))

(assert (= (and setNonEmpty!32971 condSetEmpty!32977) setIsEmpty!32977))

(assert (= (and setNonEmpty!32971 (not condSetEmpty!32977)) setNonEmpty!32977))

(assert (= setNonEmpty!32977 b!5200613))

(declare-fun m!6253370 () Bool)

(assert (=> setNonEmpty!32977 m!6253370))

(declare-fun b!5200618 () Bool)

(declare-fun e!3238448 () Bool)

(declare-fun tp!1458703 () Bool)

(declare-fun tp!1458704 () Bool)

(assert (=> b!5200618 (= e!3238448 (and tp!1458703 tp!1458704))))

(assert (=> b!5200217 (= tp!1458637 e!3238448)))

(assert (= (and b!5200217 (is-Cons!60515 (exprs!4664 setElem!32971))) b!5200618))

(declare-fun b!5200626 () Bool)

(declare-fun e!3238454 () Bool)

(declare-fun tp!1458709 () Bool)

(assert (=> b!5200626 (= e!3238454 tp!1458709)))

(declare-fun tp!1458710 () Bool)

(declare-fun b!5200625 () Bool)

(declare-fun e!3238453 () Bool)

(assert (=> b!5200625 (= e!3238453 (and (inv!80198 (h!66964 (t!373793 zl!343))) e!3238454 tp!1458710))))

(assert (=> b!5200209 (= tp!1458632 e!3238453)))

(assert (= b!5200625 b!5200626))

(assert (= (and b!5200209 (is-Cons!60516 (t!373793 zl!343))) b!5200625))

(declare-fun m!6253372 () Bool)

(assert (=> b!5200625 m!6253372))

(declare-fun b!5200630 () Bool)

(declare-fun e!3238455 () Bool)

(declare-fun tp!1458713 () Bool)

(declare-fun tp!1458712 () Bool)

(assert (=> b!5200630 (= e!3238455 (and tp!1458713 tp!1458712))))

(assert (=> b!5200210 (= tp!1458636 e!3238455)))

(declare-fun b!5200629 () Bool)

(declare-fun tp!1458711 () Bool)

(assert (=> b!5200629 (= e!3238455 tp!1458711)))

(declare-fun b!5200628 () Bool)

(declare-fun tp!1458714 () Bool)

(declare-fun tp!1458715 () Bool)

(assert (=> b!5200628 (= e!3238455 (and tp!1458714 tp!1458715))))

(declare-fun b!5200627 () Bool)

(assert (=> b!5200627 (= e!3238455 tp_is_empty!38813)))

(assert (= (and b!5200210 (is-ElementMatch!14780 (reg!15109 r!7292))) b!5200627))

(assert (= (and b!5200210 (is-Concat!23625 (reg!15109 r!7292))) b!5200628))

(assert (= (and b!5200210 (is-Star!14780 (reg!15109 r!7292))) b!5200629))

(assert (= (and b!5200210 (is-Union!14780 (reg!15109 r!7292))) b!5200630))

(declare-fun b!5200634 () Bool)

(declare-fun e!3238456 () Bool)

(declare-fun tp!1458718 () Bool)

(declare-fun tp!1458717 () Bool)

(assert (=> b!5200634 (= e!3238456 (and tp!1458718 tp!1458717))))

(assert (=> b!5200214 (= tp!1458633 e!3238456)))

(declare-fun b!5200633 () Bool)

(declare-fun tp!1458716 () Bool)

(assert (=> b!5200633 (= e!3238456 tp!1458716)))

(declare-fun b!5200632 () Bool)

(declare-fun tp!1458719 () Bool)

(declare-fun tp!1458720 () Bool)

(assert (=> b!5200632 (= e!3238456 (and tp!1458719 tp!1458720))))

(declare-fun b!5200631 () Bool)

(assert (=> b!5200631 (= e!3238456 tp_is_empty!38813)))

(assert (= (and b!5200214 (is-ElementMatch!14780 (regOne!30072 r!7292))) b!5200631))

(assert (= (and b!5200214 (is-Concat!23625 (regOne!30072 r!7292))) b!5200632))

(assert (= (and b!5200214 (is-Star!14780 (regOne!30072 r!7292))) b!5200633))

(assert (= (and b!5200214 (is-Union!14780 (regOne!30072 r!7292))) b!5200634))

(declare-fun b!5200638 () Bool)

(declare-fun e!3238457 () Bool)

(declare-fun tp!1458723 () Bool)

(declare-fun tp!1458722 () Bool)

(assert (=> b!5200638 (= e!3238457 (and tp!1458723 tp!1458722))))

(assert (=> b!5200214 (= tp!1458639 e!3238457)))

(declare-fun b!5200637 () Bool)

(declare-fun tp!1458721 () Bool)

(assert (=> b!5200637 (= e!3238457 tp!1458721)))

(declare-fun b!5200636 () Bool)

(declare-fun tp!1458724 () Bool)

(declare-fun tp!1458725 () Bool)

(assert (=> b!5200636 (= e!3238457 (and tp!1458724 tp!1458725))))

(declare-fun b!5200635 () Bool)

(assert (=> b!5200635 (= e!3238457 tp_is_empty!38813)))

(assert (= (and b!5200214 (is-ElementMatch!14780 (regTwo!30072 r!7292))) b!5200635))

(assert (= (and b!5200214 (is-Concat!23625 (regTwo!30072 r!7292))) b!5200636))

(assert (= (and b!5200214 (is-Star!14780 (regTwo!30072 r!7292))) b!5200637))

(assert (= (and b!5200214 (is-Union!14780 (regTwo!30072 r!7292))) b!5200638))

(declare-fun b!5200639 () Bool)

(declare-fun e!3238458 () Bool)

(declare-fun tp!1458726 () Bool)

(declare-fun tp!1458727 () Bool)

(assert (=> b!5200639 (= e!3238458 (and tp!1458726 tp!1458727))))

(assert (=> b!5200205 (= tp!1458634 e!3238458)))

(assert (= (and b!5200205 (is-Cons!60515 (exprs!4664 (h!66964 zl!343)))) b!5200639))

(push 1)

(assert (not b!5200378))

(assert (not bm!365544))

(assert (not bm!365546))

(assert (not d!1677640))

(assert (not d!1677628))

(assert (not b!5200380))

(assert (not b!5200613))

(assert (not bm!365539))

(assert (not b!5200626))

(assert (not b!5200629))

(assert (not bm!365540))

(assert (not b!5200638))

(assert (not bm!365552))

(assert (not b!5200580))

(assert (not b!5200636))

(assert (not b!5200578))

(assert (not b!5200599))

(assert tp_is_empty!38813)

(assert (not d!1677650))

(assert (not b!5200408))

(assert (not b!5200603))

(assert (not b!5200531))

(assert (not b!5200458))

(assert (not b!5200632))

(assert (not b!5200324))

(assert (not b!5200575))

(assert (not b!5200357))

(assert (not b!5200602))

(assert (not b!5200585))

(assert (not d!1677676))

(assert (not d!1677644))

(assert (not d!1677648))

(assert (not b!5200634))

(assert (not b!5200618))

(assert (not d!1677664))

(assert (not d!1677654))

(assert (not b!5200601))

(assert (not b!5200322))

(assert (not bm!365556))

(assert (not bm!365545))

(assert (not b!5200633))

(assert (not d!1677678))

(assert (not b!5200637))

(assert (not b!5200628))

(assert (not d!1677626))

(assert (not b!5200402))

(assert (not b!5200409))

(assert (not b!5200334))

(assert (not b!5200530))

(assert (not b!5200579))

(assert (not b!5200597))

(assert (not b!5200608))

(assert (not d!1677662))

(assert (not b!5200457))

(assert (not bm!365553))

(assert (not d!1677652))

(assert (not b!5200323))

(assert (not d!1677672))

(assert (not b!5200325))

(assert (not b!5200639))

(assert (not b!5200463))

(assert (not d!1677674))

(assert (not b!5200329))

(assert (not b!5200598))

(assert (not b!5200630))

(assert (not b!5200456))

(assert (not b!5200326))

(assert (not b!5200414))

(assert (not b!5200320))

(assert (not b!5200403))

(assert (not b!5200569))

(assert (not b!5200406))

(assert (not b!5200407))

(assert (not d!1677642))

(assert (not setNonEmpty!32977))

(assert (not b!5200464))

(assert (not b!5200582))

(assert (not b!5200461))

(assert (not b!5200625))

(assert (not b!5200401))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

