; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!596634 () Bool)

(assert start!596634)

(declare-fun b!5823165 () Bool)

(declare-fun res!2455270 () Bool)

(declare-fun e!3573551 () Bool)

(assert (=> b!5823165 (=> res!2455270 e!3573551)))

(declare-datatypes ((C!32014 0))(
  ( (C!32015 (val!25709 Int)) )
))
(declare-datatypes ((Regex!15872 0))(
  ( (ElementMatch!15872 (c!1031914 C!32014)) (Concat!24717 (regOne!32256 Regex!15872) (regTwo!32256 Regex!15872)) (EmptyExpr!15872) (Star!15872 (reg!16201 Regex!15872)) (EmptyLang!15872) (Union!15872 (regOne!32257 Regex!15872) (regTwo!32257 Regex!15872)) )
))
(declare-datatypes ((List!63915 0))(
  ( (Nil!63791) (Cons!63791 (h!70239 Regex!15872) (t!377270 List!63915)) )
))
(declare-datatypes ((Context!10512 0))(
  ( (Context!10513 (exprs!5756 List!63915)) )
))
(declare-datatypes ((List!63916 0))(
  ( (Nil!63792) (Cons!63792 (h!70240 Context!10512) (t!377271 List!63916)) )
))
(declare-fun lt!2302443 () List!63916)

(declare-fun unfocusZipper!1614 (List!63916) Regex!15872)

(assert (=> b!5823165 (= res!2455270 (not (= (unfocusZipper!1614 lt!2302443) EmptyExpr!15872)))))

(declare-fun setElem!39349 () Context!10512)

(declare-fun setNonEmpty!39349 () Bool)

(declare-fun e!3573554 () Bool)

(declare-fun setRes!39349 () Bool)

(declare-fun tp!1607385 () Bool)

(declare-fun inv!82928 (Context!10512) Bool)

(assert (=> setNonEmpty!39349 (= setRes!39349 (and tp!1607385 (inv!82928 setElem!39349) e!3573554))))

(declare-fun z!1189 () (Set Context!10512))

(declare-fun setRest!39349 () (Set Context!10512))

(assert (=> setNonEmpty!39349 (= z!1189 (set.union (set.insert setElem!39349 (as set.empty (Set Context!10512))) setRest!39349))))

(declare-fun b!5823166 () Bool)

(declare-fun e!3573549 () Bool)

(declare-fun tp!1607390 () Bool)

(assert (=> b!5823166 (= e!3573549 tp!1607390)))

(declare-fun b!5823167 () Bool)

(declare-fun res!2455269 () Bool)

(assert (=> b!5823167 (=> res!2455269 e!3573551)))

(declare-fun zl!343 () List!63916)

(assert (=> b!5823167 (= res!2455269 (not (is-Cons!63791 (exprs!5756 (h!70240 zl!343)))))))

(declare-fun b!5823168 () Bool)

(declare-fun lt!2302444 () Bool)

(declare-fun lt!2302447 () Bool)

(assert (=> b!5823168 (= e!3573551 (= lt!2302444 lt!2302447))))

(declare-datatypes ((List!63917 0))(
  ( (Nil!63793) (Cons!63793 (h!70241 C!32014) (t!377272 List!63917)) )
))
(declare-fun s!2326 () List!63917)

(declare-fun isEmpty!35660 (List!63917) Bool)

(assert (=> b!5823168 (= lt!2302447 (isEmpty!35660 s!2326))))

(declare-fun matchZipper!1972 ((Set Context!10512) List!63917) Bool)

(assert (=> b!5823168 (= lt!2302447 (matchZipper!1972 z!1189 s!2326))))

(declare-datatypes ((Unit!157015 0))(
  ( (Unit!157016) )
))
(declare-fun lt!2302446 () Unit!157015)

(declare-fun lemmaZipperOfEmptyExprMatchesOnlyEmptyString!3 ((Set Context!10512) List!63917) Unit!157015)

(assert (=> b!5823168 (= lt!2302446 (lemmaZipperOfEmptyExprMatchesOnlyEmptyString!3 z!1189 s!2326))))

(declare-fun b!5823169 () Bool)

(declare-fun e!3573548 () Bool)

(declare-fun tp_is_empty!40997 () Bool)

(declare-fun tp!1607394 () Bool)

(assert (=> b!5823169 (= e!3573548 (and tp_is_empty!40997 tp!1607394))))

(declare-fun b!5823170 () Bool)

(declare-fun e!3573555 () Bool)

(assert (=> b!5823170 (= e!3573555 tp_is_empty!40997)))

(declare-fun tp!1607389 () Bool)

(declare-fun b!5823171 () Bool)

(declare-fun e!3573550 () Bool)

(assert (=> b!5823171 (= e!3573550 (and (inv!82928 (h!70240 zl!343)) e!3573549 tp!1607389))))

(declare-fun setIsEmpty!39349 () Bool)

(assert (=> setIsEmpty!39349 setRes!39349))

(declare-fun b!5823172 () Bool)

(declare-fun tp!1607393 () Bool)

(declare-fun tp!1607391 () Bool)

(assert (=> b!5823172 (= e!3573555 (and tp!1607393 tp!1607391))))

(declare-fun b!5823173 () Bool)

(declare-fun res!2455265 () Bool)

(assert (=> b!5823173 (=> res!2455265 e!3573551)))

(declare-fun isEmpty!35661 (List!63916) Bool)

(assert (=> b!5823173 (= res!2455265 (not (isEmpty!35661 (t!377271 zl!343))))))

(declare-fun b!5823174 () Bool)

(declare-fun res!2455264 () Bool)

(declare-fun e!3573552 () Bool)

(assert (=> b!5823174 (=> (not res!2455264) (not e!3573552))))

(declare-fun r!7292 () Regex!15872)

(assert (=> b!5823174 (= res!2455264 (= r!7292 (unfocusZipper!1614 zl!343)))))

(declare-fun res!2455268 () Bool)

(declare-fun e!3573553 () Bool)

(assert (=> start!596634 (=> (not res!2455268) (not e!3573553))))

(declare-fun validRegex!7608 (Regex!15872) Bool)

(assert (=> start!596634 (= res!2455268 (validRegex!7608 r!7292))))

(assert (=> start!596634 e!3573553))

(assert (=> start!596634 e!3573555))

(assert (=> start!596634 e!3573548))

(declare-fun condSetEmpty!39349 () Bool)

(assert (=> start!596634 (= condSetEmpty!39349 (= z!1189 (as set.empty (Set Context!10512))))))

(assert (=> start!596634 setRes!39349))

(assert (=> start!596634 e!3573550))

(declare-fun b!5823175 () Bool)

(declare-fun res!2455263 () Bool)

(assert (=> b!5823175 (=> res!2455263 e!3573551)))

(declare-fun generalisedConcat!1469 (List!63915) Regex!15872)

(assert (=> b!5823175 (= res!2455263 (not (= r!7292 (generalisedConcat!1469 (exprs!5756 (h!70240 zl!343))))))))

(declare-fun b!5823176 () Bool)

(declare-fun tp!1607386 () Bool)

(assert (=> b!5823176 (= e!3573555 tp!1607386)))

(declare-fun b!5823177 () Bool)

(declare-fun res!2455272 () Bool)

(assert (=> b!5823177 (=> res!2455272 e!3573551)))

(declare-fun generalisedUnion!1716 (List!63915) Regex!15872)

(declare-fun unfocusZipperList!1293 (List!63916) List!63915)

(assert (=> b!5823177 (= res!2455272 (not (= r!7292 (generalisedUnion!1716 (unfocusZipperList!1293 zl!343)))))))

(declare-fun b!5823178 () Bool)

(assert (=> b!5823178 (= e!3573553 e!3573552)))

(declare-fun res!2455266 () Bool)

(assert (=> b!5823178 (=> (not res!2455266) (not e!3573552))))

(assert (=> b!5823178 (= res!2455266 (= lt!2302443 zl!343))))

(declare-fun toList!9656 ((Set Context!10512)) List!63916)

(assert (=> b!5823178 (= lt!2302443 (toList!9656 z!1189))))

(declare-fun b!5823179 () Bool)

(declare-fun res!2455267 () Bool)

(assert (=> b!5823179 (=> res!2455267 e!3573551)))

(assert (=> b!5823179 (= res!2455267 (not (is-EmptyExpr!15872 r!7292)))))

(declare-fun b!5823180 () Bool)

(declare-fun tp!1607392 () Bool)

(declare-fun tp!1607388 () Bool)

(assert (=> b!5823180 (= e!3573555 (and tp!1607392 tp!1607388))))

(declare-fun b!5823181 () Bool)

(declare-fun tp!1607387 () Bool)

(assert (=> b!5823181 (= e!3573554 tp!1607387)))

(declare-fun b!5823182 () Bool)

(assert (=> b!5823182 (= e!3573552 (not e!3573551))))

(declare-fun res!2455271 () Bool)

(assert (=> b!5823182 (=> res!2455271 e!3573551)))

(assert (=> b!5823182 (= res!2455271 (not (is-Cons!63792 zl!343)))))

(declare-fun matchRSpec!2973 (Regex!15872 List!63917) Bool)

(assert (=> b!5823182 (= lt!2302444 (matchRSpec!2973 r!7292 s!2326))))

(declare-fun matchR!8055 (Regex!15872 List!63917) Bool)

(assert (=> b!5823182 (= lt!2302444 (matchR!8055 r!7292 s!2326))))

(declare-fun lt!2302445 () Unit!157015)

(declare-fun mainMatchTheorem!2973 (Regex!15872 List!63917) Unit!157015)

(assert (=> b!5823182 (= lt!2302445 (mainMatchTheorem!2973 r!7292 s!2326))))

(assert (= (and start!596634 res!2455268) b!5823178))

(assert (= (and b!5823178 res!2455266) b!5823174))

(assert (= (and b!5823174 res!2455264) b!5823182))

(assert (= (and b!5823182 (not res!2455271)) b!5823173))

(assert (= (and b!5823173 (not res!2455265)) b!5823175))

(assert (= (and b!5823175 (not res!2455263)) b!5823167))

(assert (= (and b!5823167 (not res!2455269)) b!5823177))

(assert (= (and b!5823177 (not res!2455272)) b!5823179))

(assert (= (and b!5823179 (not res!2455267)) b!5823165))

(assert (= (and b!5823165 (not res!2455270)) b!5823168))

(assert (= (and start!596634 (is-ElementMatch!15872 r!7292)) b!5823170))

(assert (= (and start!596634 (is-Concat!24717 r!7292)) b!5823180))

(assert (= (and start!596634 (is-Star!15872 r!7292)) b!5823176))

(assert (= (and start!596634 (is-Union!15872 r!7292)) b!5823172))

(assert (= (and start!596634 (is-Cons!63793 s!2326)) b!5823169))

(assert (= (and start!596634 condSetEmpty!39349) setIsEmpty!39349))

(assert (= (and start!596634 (not condSetEmpty!39349)) setNonEmpty!39349))

(assert (= setNonEmpty!39349 b!5823181))

(assert (= b!5823171 b!5823166))

(assert (= (and start!596634 (is-Cons!63792 zl!343)) b!5823171))

(declare-fun m!6757164 () Bool)

(assert (=> start!596634 m!6757164))

(declare-fun m!6757166 () Bool)

(assert (=> b!5823175 m!6757166))

(declare-fun m!6757168 () Bool)

(assert (=> b!5823182 m!6757168))

(declare-fun m!6757170 () Bool)

(assert (=> b!5823182 m!6757170))

(declare-fun m!6757172 () Bool)

(assert (=> b!5823182 m!6757172))

(declare-fun m!6757174 () Bool)

(assert (=> b!5823171 m!6757174))

(declare-fun m!6757176 () Bool)

(assert (=> b!5823165 m!6757176))

(declare-fun m!6757178 () Bool)

(assert (=> b!5823168 m!6757178))

(declare-fun m!6757180 () Bool)

(assert (=> b!5823168 m!6757180))

(declare-fun m!6757182 () Bool)

(assert (=> b!5823168 m!6757182))

(declare-fun m!6757184 () Bool)

(assert (=> b!5823178 m!6757184))

(declare-fun m!6757186 () Bool)

(assert (=> b!5823177 m!6757186))

(assert (=> b!5823177 m!6757186))

(declare-fun m!6757188 () Bool)

(assert (=> b!5823177 m!6757188))

(declare-fun m!6757190 () Bool)

(assert (=> setNonEmpty!39349 m!6757190))

(declare-fun m!6757192 () Bool)

(assert (=> b!5823173 m!6757192))

(declare-fun m!6757194 () Bool)

(assert (=> b!5823174 m!6757194))

(push 1)

(assert (not b!5823171))

(assert (not b!5823169))

(assert (not b!5823182))

(assert (not b!5823177))

(assert (not b!5823174))

(assert tp_is_empty!40997)

(assert (not b!5823172))

(assert (not b!5823178))

(assert (not b!5823175))

(assert (not b!5823181))

(assert (not b!5823180))

(assert (not b!5823168))

(assert (not setNonEmpty!39349))

(assert (not b!5823166))

(assert (not b!5823173))

(assert (not start!596634))

(assert (not b!5823176))

(assert (not b!5823165))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1832246 () Bool)

(declare-fun lambda!318679 () Int)

(declare-fun forall!14963 (List!63915 Int) Bool)

(assert (=> d!1832246 (= (inv!82928 (h!70240 zl!343)) (forall!14963 (exprs!5756 (h!70240 zl!343)) lambda!318679))))

(declare-fun bs!1373714 () Bool)

(assert (= bs!1373714 d!1832246))

(declare-fun m!6757234 () Bool)

(assert (=> bs!1373714 m!6757234))

(assert (=> b!5823171 d!1832246))

(declare-fun bs!1373715 () Bool)

(declare-fun d!1832250 () Bool)

(assert (= bs!1373715 (and d!1832250 d!1832246)))

(declare-fun lambda!318682 () Int)

(assert (=> bs!1373715 (= lambda!318682 lambda!318679)))

(declare-fun b!5823306 () Bool)

(declare-fun e!3573632 () Bool)

(declare-fun lt!2302465 () Regex!15872)

(declare-fun isConcat!834 (Regex!15872) Bool)

(assert (=> b!5823306 (= e!3573632 (isConcat!834 lt!2302465))))

(declare-fun b!5823307 () Bool)

(declare-fun e!3573630 () Regex!15872)

(assert (=> b!5823307 (= e!3573630 (Concat!24717 (h!70239 (exprs!5756 (h!70240 zl!343))) (generalisedConcat!1469 (t!377270 (exprs!5756 (h!70240 zl!343))))))))

(declare-fun b!5823308 () Bool)

(declare-fun e!3573629 () Bool)

(declare-fun isEmpty!35664 (List!63915) Bool)

(assert (=> b!5823308 (= e!3573629 (isEmpty!35664 (t!377270 (exprs!5756 (h!70240 zl!343)))))))

(declare-fun e!3573627 () Bool)

(assert (=> d!1832250 e!3573627))

(declare-fun res!2455329 () Bool)

(assert (=> d!1832250 (=> (not res!2455329) (not e!3573627))))

(assert (=> d!1832250 (= res!2455329 (validRegex!7608 lt!2302465))))

(declare-fun e!3573631 () Regex!15872)

(assert (=> d!1832250 (= lt!2302465 e!3573631)))

(declare-fun c!1031940 () Bool)

(assert (=> d!1832250 (= c!1031940 e!3573629)))

(declare-fun res!2455328 () Bool)

(assert (=> d!1832250 (=> (not res!2455328) (not e!3573629))))

(assert (=> d!1832250 (= res!2455328 (is-Cons!63791 (exprs!5756 (h!70240 zl!343))))))

(assert (=> d!1832250 (forall!14963 (exprs!5756 (h!70240 zl!343)) lambda!318682)))

(assert (=> d!1832250 (= (generalisedConcat!1469 (exprs!5756 (h!70240 zl!343))) lt!2302465)))

(declare-fun b!5823309 () Bool)

(assert (=> b!5823309 (= e!3573631 e!3573630)))

(declare-fun c!1031941 () Bool)

(assert (=> b!5823309 (= c!1031941 (is-Cons!63791 (exprs!5756 (h!70240 zl!343))))))

(declare-fun b!5823310 () Bool)

(assert (=> b!5823310 (= e!3573631 (h!70239 (exprs!5756 (h!70240 zl!343))))))

(declare-fun b!5823311 () Bool)

(declare-fun head!12307 (List!63915) Regex!15872)

(assert (=> b!5823311 (= e!3573632 (= lt!2302465 (head!12307 (exprs!5756 (h!70240 zl!343)))))))

(declare-fun b!5823312 () Bool)

(declare-fun e!3573628 () Bool)

(assert (=> b!5823312 (= e!3573627 e!3573628)))

(declare-fun c!1031938 () Bool)

(assert (=> b!5823312 (= c!1031938 (isEmpty!35664 (exprs!5756 (h!70240 zl!343))))))

(declare-fun b!5823313 () Bool)

(declare-fun isEmptyExpr!1311 (Regex!15872) Bool)

(assert (=> b!5823313 (= e!3573628 (isEmptyExpr!1311 lt!2302465))))

(declare-fun b!5823314 () Bool)

(assert (=> b!5823314 (= e!3573630 EmptyExpr!15872)))

(declare-fun b!5823315 () Bool)

(assert (=> b!5823315 (= e!3573628 e!3573632)))

(declare-fun c!1031939 () Bool)

(declare-fun tail!11392 (List!63915) List!63915)

(assert (=> b!5823315 (= c!1031939 (isEmpty!35664 (tail!11392 (exprs!5756 (h!70240 zl!343)))))))

(assert (= (and d!1832250 res!2455328) b!5823308))

(assert (= (and d!1832250 c!1031940) b!5823310))

(assert (= (and d!1832250 (not c!1031940)) b!5823309))

(assert (= (and b!5823309 c!1031941) b!5823307))

(assert (= (and b!5823309 (not c!1031941)) b!5823314))

(assert (= (and d!1832250 res!2455329) b!5823312))

(assert (= (and b!5823312 c!1031938) b!5823313))

(assert (= (and b!5823312 (not c!1031938)) b!5823315))

(assert (= (and b!5823315 c!1031939) b!5823311))

(assert (= (and b!5823315 (not c!1031939)) b!5823306))

(declare-fun m!6757236 () Bool)

(assert (=> b!5823315 m!6757236))

(assert (=> b!5823315 m!6757236))

(declare-fun m!6757238 () Bool)

(assert (=> b!5823315 m!6757238))

(declare-fun m!6757240 () Bool)

(assert (=> b!5823313 m!6757240))

(declare-fun m!6757242 () Bool)

(assert (=> b!5823307 m!6757242))

(declare-fun m!6757244 () Bool)

(assert (=> b!5823312 m!6757244))

(declare-fun m!6757246 () Bool)

(assert (=> b!5823306 m!6757246))

(declare-fun m!6757248 () Bool)

(assert (=> b!5823311 m!6757248))

(declare-fun m!6757250 () Bool)

(assert (=> b!5823308 m!6757250))

(declare-fun m!6757252 () Bool)

(assert (=> d!1832250 m!6757252))

(declare-fun m!6757254 () Bool)

(assert (=> d!1832250 m!6757254))

(assert (=> b!5823175 d!1832250))

(declare-fun b!5823354 () Bool)

(assert (=> b!5823354 true))

(assert (=> b!5823354 true))

(declare-fun bs!1373716 () Bool)

(declare-fun b!5823358 () Bool)

(assert (= bs!1373716 (and b!5823358 b!5823354)))

(declare-fun lambda!318688 () Int)

(declare-fun lambda!318687 () Int)

(assert (=> bs!1373716 (not (= lambda!318688 lambda!318687))))

(assert (=> b!5823358 true))

(assert (=> b!5823358 true))

(declare-fun c!1031953 () Bool)

(declare-fun call!454766 () Bool)

(declare-fun bm!454761 () Bool)

(declare-fun Exists!2950 (Int) Bool)

(assert (=> bm!454761 (= call!454766 (Exists!2950 (ite c!1031953 lambda!318687 lambda!318688)))))

(declare-fun bm!454762 () Bool)

(declare-fun call!454767 () Bool)

(assert (=> bm!454762 (= call!454767 (isEmpty!35660 s!2326))))

(declare-fun b!5823348 () Bool)

(declare-fun e!3573651 () Bool)

(declare-fun e!3573655 () Bool)

(assert (=> b!5823348 (= e!3573651 e!3573655)))

(declare-fun res!2455346 () Bool)

(assert (=> b!5823348 (= res!2455346 (matchRSpec!2973 (regOne!32257 r!7292) s!2326))))

(assert (=> b!5823348 (=> res!2455346 e!3573655)))

(declare-fun b!5823349 () Bool)

(assert (=> b!5823349 (= e!3573655 (matchRSpec!2973 (regTwo!32257 r!7292) s!2326))))

(declare-fun b!5823350 () Bool)

(declare-fun e!3573654 () Bool)

(declare-fun e!3573652 () Bool)

(assert (=> b!5823350 (= e!3573654 e!3573652)))

(declare-fun res!2455347 () Bool)

(assert (=> b!5823350 (= res!2455347 (not (is-EmptyLang!15872 r!7292)))))

(assert (=> b!5823350 (=> (not res!2455347) (not e!3573652))))

(declare-fun b!5823351 () Bool)

(declare-fun c!1031950 () Bool)

(assert (=> b!5823351 (= c!1031950 (is-Union!15872 r!7292))))

(declare-fun e!3573657 () Bool)

(assert (=> b!5823351 (= e!3573657 e!3573651)))

(declare-fun b!5823352 () Bool)

(declare-fun e!3573653 () Bool)

(assert (=> b!5823352 (= e!3573651 e!3573653)))

(assert (=> b!5823352 (= c!1031953 (is-Star!15872 r!7292))))

(declare-fun b!5823353 () Bool)

(assert (=> b!5823353 (= e!3573654 call!454767)))

(declare-fun e!3573656 () Bool)

(assert (=> b!5823354 (= e!3573656 call!454766)))

(declare-fun d!1832252 () Bool)

(declare-fun c!1031952 () Bool)

(assert (=> d!1832252 (= c!1031952 (is-EmptyExpr!15872 r!7292))))

(assert (=> d!1832252 (= (matchRSpec!2973 r!7292 s!2326) e!3573654)))

(declare-fun b!5823355 () Bool)

(declare-fun c!1031951 () Bool)

(assert (=> b!5823355 (= c!1031951 (is-ElementMatch!15872 r!7292))))

(assert (=> b!5823355 (= e!3573652 e!3573657)))

(declare-fun b!5823356 () Bool)

(assert (=> b!5823356 (= e!3573657 (= s!2326 (Cons!63793 (c!1031914 r!7292) Nil!63793)))))

(declare-fun b!5823357 () Bool)

(declare-fun res!2455348 () Bool)

(assert (=> b!5823357 (=> res!2455348 e!3573656)))

(assert (=> b!5823357 (= res!2455348 call!454767)))

(assert (=> b!5823357 (= e!3573653 e!3573656)))

(assert (=> b!5823358 (= e!3573653 call!454766)))

(assert (= (and d!1832252 c!1031952) b!5823353))

(assert (= (and d!1832252 (not c!1031952)) b!5823350))

(assert (= (and b!5823350 res!2455347) b!5823355))

(assert (= (and b!5823355 c!1031951) b!5823356))

(assert (= (and b!5823355 (not c!1031951)) b!5823351))

(assert (= (and b!5823351 c!1031950) b!5823348))

(assert (= (and b!5823351 (not c!1031950)) b!5823352))

(assert (= (and b!5823348 (not res!2455346)) b!5823349))

(assert (= (and b!5823352 c!1031953) b!5823357))

(assert (= (and b!5823352 (not c!1031953)) b!5823358))

(assert (= (and b!5823357 (not res!2455348)) b!5823354))

(assert (= (or b!5823354 b!5823358) bm!454761))

(assert (= (or b!5823353 b!5823357) bm!454762))

(declare-fun m!6757256 () Bool)

(assert (=> bm!454761 m!6757256))

(assert (=> bm!454762 m!6757178))

(declare-fun m!6757258 () Bool)

(assert (=> b!5823348 m!6757258))

(declare-fun m!6757260 () Bool)

(assert (=> b!5823349 m!6757260))

(assert (=> b!5823182 d!1832252))

(declare-fun b!5823391 () Bool)

(declare-fun res!2455371 () Bool)

(declare-fun e!3573675 () Bool)

(assert (=> b!5823391 (=> res!2455371 e!3573675)))

(declare-fun tail!11393 (List!63917) List!63917)

(assert (=> b!5823391 (= res!2455371 (not (isEmpty!35660 (tail!11393 s!2326))))))

(declare-fun b!5823392 () Bool)

(declare-fun res!2455367 () Bool)

(declare-fun e!3573673 () Bool)

(assert (=> b!5823392 (=> (not res!2455367) (not e!3573673))))

(declare-fun call!454770 () Bool)

(assert (=> b!5823392 (= res!2455367 (not call!454770))))

(declare-fun b!5823393 () Bool)

(declare-fun e!3573677 () Bool)

(declare-fun e!3573674 () Bool)

(assert (=> b!5823393 (= e!3573677 e!3573674)))

(declare-fun c!1031960 () Bool)

(assert (=> b!5823393 (= c!1031960 (is-EmptyLang!15872 r!7292))))

(declare-fun b!5823394 () Bool)

(declare-fun e!3573672 () Bool)

(declare-fun nullable!5875 (Regex!15872) Bool)

(assert (=> b!5823394 (= e!3573672 (nullable!5875 r!7292))))

(declare-fun b!5823395 () Bool)

(declare-fun res!2455370 () Bool)

(assert (=> b!5823395 (=> (not res!2455370) (not e!3573673))))

(assert (=> b!5823395 (= res!2455370 (isEmpty!35660 (tail!11393 s!2326)))))

(declare-fun bm!454765 () Bool)

(assert (=> bm!454765 (= call!454770 (isEmpty!35660 s!2326))))

(declare-fun b!5823396 () Bool)

(declare-fun head!12308 (List!63917) C!32014)

(assert (=> b!5823396 (= e!3573673 (= (head!12308 s!2326) (c!1031914 r!7292)))))

(declare-fun b!5823397 () Bool)

(declare-fun e!3573678 () Bool)

(declare-fun e!3573676 () Bool)

(assert (=> b!5823397 (= e!3573678 e!3573676)))

(declare-fun res!2455366 () Bool)

(assert (=> b!5823397 (=> (not res!2455366) (not e!3573676))))

(declare-fun lt!2302468 () Bool)

(assert (=> b!5823397 (= res!2455366 (not lt!2302468))))

(declare-fun b!5823398 () Bool)

(declare-fun res!2455365 () Bool)

(assert (=> b!5823398 (=> res!2455365 e!3573678)))

(assert (=> b!5823398 (= res!2455365 (not (is-ElementMatch!15872 r!7292)))))

(assert (=> b!5823398 (= e!3573674 e!3573678)))

(declare-fun d!1832254 () Bool)

(assert (=> d!1832254 e!3573677))

(declare-fun c!1031961 () Bool)

(assert (=> d!1832254 (= c!1031961 (is-EmptyExpr!15872 r!7292))))

(assert (=> d!1832254 (= lt!2302468 e!3573672)))

(declare-fun c!1031962 () Bool)

(assert (=> d!1832254 (= c!1031962 (isEmpty!35660 s!2326))))

(assert (=> d!1832254 (validRegex!7608 r!7292)))

(assert (=> d!1832254 (= (matchR!8055 r!7292 s!2326) lt!2302468)))

(declare-fun b!5823399 () Bool)

(declare-fun derivativeStep!4615 (Regex!15872 C!32014) Regex!15872)

(assert (=> b!5823399 (= e!3573672 (matchR!8055 (derivativeStep!4615 r!7292 (head!12308 s!2326)) (tail!11393 s!2326)))))

(declare-fun b!5823400 () Bool)

(assert (=> b!5823400 (= e!3573674 (not lt!2302468))))

(declare-fun b!5823401 () Bool)

(declare-fun res!2455368 () Bool)

(assert (=> b!5823401 (=> res!2455368 e!3573678)))

(assert (=> b!5823401 (= res!2455368 e!3573673)))

(declare-fun res!2455369 () Bool)

(assert (=> b!5823401 (=> (not res!2455369) (not e!3573673))))

(assert (=> b!5823401 (= res!2455369 lt!2302468)))

(declare-fun b!5823402 () Bool)

(assert (=> b!5823402 (= e!3573677 (= lt!2302468 call!454770))))

(declare-fun b!5823403 () Bool)

(assert (=> b!5823403 (= e!3573675 (not (= (head!12308 s!2326) (c!1031914 r!7292))))))

(declare-fun b!5823404 () Bool)

(assert (=> b!5823404 (= e!3573676 e!3573675)))

(declare-fun res!2455372 () Bool)

(assert (=> b!5823404 (=> res!2455372 e!3573675)))

(assert (=> b!5823404 (= res!2455372 call!454770)))

(assert (= (and d!1832254 c!1031962) b!5823394))

(assert (= (and d!1832254 (not c!1031962)) b!5823399))

(assert (= (and d!1832254 c!1031961) b!5823402))

(assert (= (and d!1832254 (not c!1031961)) b!5823393))

(assert (= (and b!5823393 c!1031960) b!5823400))

(assert (= (and b!5823393 (not c!1031960)) b!5823398))

(assert (= (and b!5823398 (not res!2455365)) b!5823401))

(assert (= (and b!5823401 res!2455369) b!5823392))

(assert (= (and b!5823392 res!2455367) b!5823395))

(assert (= (and b!5823395 res!2455370) b!5823396))

(assert (= (and b!5823401 (not res!2455368)) b!5823397))

(assert (= (and b!5823397 res!2455366) b!5823404))

(assert (= (and b!5823404 (not res!2455372)) b!5823391))

(assert (= (and b!5823391 (not res!2455371)) b!5823403))

(assert (= (or b!5823402 b!5823392 b!5823404) bm!454765))

(assert (=> d!1832254 m!6757178))

(assert (=> d!1832254 m!6757164))

(assert (=> bm!454765 m!6757178))

(declare-fun m!6757262 () Bool)

(assert (=> b!5823399 m!6757262))

(assert (=> b!5823399 m!6757262))

(declare-fun m!6757264 () Bool)

(assert (=> b!5823399 m!6757264))

(declare-fun m!6757266 () Bool)

(assert (=> b!5823399 m!6757266))

(assert (=> b!5823399 m!6757264))

(assert (=> b!5823399 m!6757266))

(declare-fun m!6757268 () Bool)

(assert (=> b!5823399 m!6757268))

(assert (=> b!5823391 m!6757266))

(assert (=> b!5823391 m!6757266))

(declare-fun m!6757270 () Bool)

(assert (=> b!5823391 m!6757270))

(declare-fun m!6757272 () Bool)

(assert (=> b!5823394 m!6757272))

(assert (=> b!5823403 m!6757262))

(assert (=> b!5823396 m!6757262))

(assert (=> b!5823395 m!6757266))

(assert (=> b!5823395 m!6757266))

(assert (=> b!5823395 m!6757270))

(assert (=> b!5823182 d!1832254))

(declare-fun d!1832256 () Bool)

(assert (=> d!1832256 (= (matchR!8055 r!7292 s!2326) (matchRSpec!2973 r!7292 s!2326))))

(declare-fun lt!2302471 () Unit!157015)

(declare-fun choose!44257 (Regex!15872 List!63917) Unit!157015)

(assert (=> d!1832256 (= lt!2302471 (choose!44257 r!7292 s!2326))))

(assert (=> d!1832256 (validRegex!7608 r!7292)))

(assert (=> d!1832256 (= (mainMatchTheorem!2973 r!7292 s!2326) lt!2302471)))

(declare-fun bs!1373717 () Bool)

(assert (= bs!1373717 d!1832256))

(assert (=> bs!1373717 m!6757170))

(assert (=> bs!1373717 m!6757168))

(declare-fun m!6757274 () Bool)

(assert (=> bs!1373717 m!6757274))

(assert (=> bs!1373717 m!6757164))

(assert (=> b!5823182 d!1832256))

(declare-fun bs!1373718 () Bool)

(declare-fun d!1832258 () Bool)

(assert (= bs!1373718 (and d!1832258 d!1832246)))

(declare-fun lambda!318691 () Int)

(assert (=> bs!1373718 (= lambda!318691 lambda!318679)))

(declare-fun bs!1373719 () Bool)

(assert (= bs!1373719 (and d!1832258 d!1832250)))

(assert (=> bs!1373719 (= lambda!318691 lambda!318682)))

(declare-fun b!5823425 () Bool)

(declare-fun e!3573692 () Bool)

(assert (=> b!5823425 (= e!3573692 (isEmpty!35664 (t!377270 (unfocusZipperList!1293 zl!343))))))

(declare-fun b!5823426 () Bool)

(declare-fun e!3573694 () Bool)

(declare-fun lt!2302474 () Regex!15872)

(declare-fun isUnion!750 (Regex!15872) Bool)

(assert (=> b!5823426 (= e!3573694 (isUnion!750 lt!2302474))))

(declare-fun b!5823427 () Bool)

(declare-fun e!3573693 () Bool)

(declare-fun isEmptyLang!1320 (Regex!15872) Bool)

(assert (=> b!5823427 (= e!3573693 (isEmptyLang!1320 lt!2302474))))

(declare-fun b!5823428 () Bool)

(declare-fun e!3573696 () Regex!15872)

(assert (=> b!5823428 (= e!3573696 (Union!15872 (h!70239 (unfocusZipperList!1293 zl!343)) (generalisedUnion!1716 (t!377270 (unfocusZipperList!1293 zl!343)))))))

(declare-fun b!5823429 () Bool)

(assert (=> b!5823429 (= e!3573693 e!3573694)))

(declare-fun c!1031971 () Bool)

(assert (=> b!5823429 (= c!1031971 (isEmpty!35664 (tail!11392 (unfocusZipperList!1293 zl!343))))))

(declare-fun b!5823430 () Bool)

(declare-fun e!3573691 () Bool)

(assert (=> b!5823430 (= e!3573691 e!3573693)))

(declare-fun c!1031974 () Bool)

(assert (=> b!5823430 (= c!1031974 (isEmpty!35664 (unfocusZipperList!1293 zl!343)))))

(declare-fun b!5823431 () Bool)

(assert (=> b!5823431 (= e!3573694 (= lt!2302474 (head!12307 (unfocusZipperList!1293 zl!343))))))

(declare-fun b!5823432 () Bool)

(declare-fun e!3573695 () Regex!15872)

(assert (=> b!5823432 (= e!3573695 (h!70239 (unfocusZipperList!1293 zl!343)))))

(declare-fun b!5823433 () Bool)

(assert (=> b!5823433 (= e!3573695 e!3573696)))

(declare-fun c!1031973 () Bool)

(assert (=> b!5823433 (= c!1031973 (is-Cons!63791 (unfocusZipperList!1293 zl!343)))))

(declare-fun b!5823434 () Bool)

(assert (=> b!5823434 (= e!3573696 EmptyLang!15872)))

(assert (=> d!1832258 e!3573691))

(declare-fun res!2455377 () Bool)

(assert (=> d!1832258 (=> (not res!2455377) (not e!3573691))))

(assert (=> d!1832258 (= res!2455377 (validRegex!7608 lt!2302474))))

(assert (=> d!1832258 (= lt!2302474 e!3573695)))

(declare-fun c!1031972 () Bool)

(assert (=> d!1832258 (= c!1031972 e!3573692)))

(declare-fun res!2455378 () Bool)

(assert (=> d!1832258 (=> (not res!2455378) (not e!3573692))))

(assert (=> d!1832258 (= res!2455378 (is-Cons!63791 (unfocusZipperList!1293 zl!343)))))

(assert (=> d!1832258 (forall!14963 (unfocusZipperList!1293 zl!343) lambda!318691)))

(assert (=> d!1832258 (= (generalisedUnion!1716 (unfocusZipperList!1293 zl!343)) lt!2302474)))

(assert (= (and d!1832258 res!2455378) b!5823425))

(assert (= (and d!1832258 c!1031972) b!5823432))

(assert (= (and d!1832258 (not c!1031972)) b!5823433))

(assert (= (and b!5823433 c!1031973) b!5823428))

(assert (= (and b!5823433 (not c!1031973)) b!5823434))

(assert (= (and d!1832258 res!2455377) b!5823430))

(assert (= (and b!5823430 c!1031974) b!5823427))

(assert (= (and b!5823430 (not c!1031974)) b!5823429))

(assert (= (and b!5823429 c!1031971) b!5823431))

(assert (= (and b!5823429 (not c!1031971)) b!5823426))

(declare-fun m!6757276 () Bool)

(assert (=> b!5823426 m!6757276))

(assert (=> b!5823430 m!6757186))

(declare-fun m!6757278 () Bool)

(assert (=> b!5823430 m!6757278))

(declare-fun m!6757280 () Bool)

(assert (=> d!1832258 m!6757280))

(assert (=> d!1832258 m!6757186))

(declare-fun m!6757282 () Bool)

(assert (=> d!1832258 m!6757282))

(declare-fun m!6757284 () Bool)

(assert (=> b!5823427 m!6757284))

(declare-fun m!6757286 () Bool)

(assert (=> b!5823425 m!6757286))

(declare-fun m!6757288 () Bool)

(assert (=> b!5823428 m!6757288))

(assert (=> b!5823429 m!6757186))

(declare-fun m!6757290 () Bool)

(assert (=> b!5823429 m!6757290))

(assert (=> b!5823429 m!6757290))

(declare-fun m!6757292 () Bool)

(assert (=> b!5823429 m!6757292))

(assert (=> b!5823431 m!6757186))

(declare-fun m!6757294 () Bool)

(assert (=> b!5823431 m!6757294))

(assert (=> b!5823177 d!1832258))

(declare-fun bs!1373720 () Bool)

(declare-fun d!1832260 () Bool)

(assert (= bs!1373720 (and d!1832260 d!1832246)))

(declare-fun lambda!318694 () Int)

(assert (=> bs!1373720 (= lambda!318694 lambda!318679)))

(declare-fun bs!1373721 () Bool)

(assert (= bs!1373721 (and d!1832260 d!1832250)))

(assert (=> bs!1373721 (= lambda!318694 lambda!318682)))

(declare-fun bs!1373722 () Bool)

(assert (= bs!1373722 (and d!1832260 d!1832258)))

(assert (=> bs!1373722 (= lambda!318694 lambda!318691)))

(declare-fun lt!2302477 () List!63915)

(assert (=> d!1832260 (forall!14963 lt!2302477 lambda!318694)))

(declare-fun e!3573699 () List!63915)

(assert (=> d!1832260 (= lt!2302477 e!3573699)))

(declare-fun c!1031977 () Bool)

(assert (=> d!1832260 (= c!1031977 (is-Cons!63792 zl!343))))

(assert (=> d!1832260 (= (unfocusZipperList!1293 zl!343) lt!2302477)))

(declare-fun b!5823439 () Bool)

(assert (=> b!5823439 (= e!3573699 (Cons!63791 (generalisedConcat!1469 (exprs!5756 (h!70240 zl!343))) (unfocusZipperList!1293 (t!377271 zl!343))))))

(declare-fun b!5823440 () Bool)

(assert (=> b!5823440 (= e!3573699 Nil!63791)))

(assert (= (and d!1832260 c!1031977) b!5823439))

(assert (= (and d!1832260 (not c!1031977)) b!5823440))

(declare-fun m!6757296 () Bool)

(assert (=> d!1832260 m!6757296))

(assert (=> b!5823439 m!6757166))

(declare-fun m!6757298 () Bool)

(assert (=> b!5823439 m!6757298))

(assert (=> b!5823177 d!1832260))

(declare-fun d!1832262 () Bool)

(declare-fun e!3573702 () Bool)

(assert (=> d!1832262 e!3573702))

(declare-fun res!2455381 () Bool)

(assert (=> d!1832262 (=> (not res!2455381) (not e!3573702))))

(declare-fun lt!2302480 () List!63916)

(declare-fun noDuplicate!1742 (List!63916) Bool)

(assert (=> d!1832262 (= res!2455381 (noDuplicate!1742 lt!2302480))))

(declare-fun choose!44258 ((Set Context!10512)) List!63916)

(assert (=> d!1832262 (= lt!2302480 (choose!44258 z!1189))))

(assert (=> d!1832262 (= (toList!9656 z!1189) lt!2302480)))

(declare-fun b!5823443 () Bool)

(declare-fun content!11708 (List!63916) (Set Context!10512))

(assert (=> b!5823443 (= e!3573702 (= (content!11708 lt!2302480) z!1189))))

(assert (= (and d!1832262 res!2455381) b!5823443))

(declare-fun m!6757300 () Bool)

(assert (=> d!1832262 m!6757300))

(declare-fun m!6757302 () Bool)

(assert (=> d!1832262 m!6757302))

(declare-fun m!6757304 () Bool)

(assert (=> b!5823443 m!6757304))

(assert (=> b!5823178 d!1832262))

(declare-fun d!1832264 () Bool)

(assert (=> d!1832264 (= (isEmpty!35660 s!2326) (is-Nil!63793 s!2326))))

(assert (=> b!5823168 d!1832264))

(declare-fun d!1832266 () Bool)

(declare-fun c!1031980 () Bool)

(assert (=> d!1832266 (= c!1031980 (isEmpty!35660 s!2326))))

(declare-fun e!3573705 () Bool)

(assert (=> d!1832266 (= (matchZipper!1972 z!1189 s!2326) e!3573705)))

(declare-fun b!5823448 () Bool)

(declare-fun nullableZipper!1745 ((Set Context!10512)) Bool)

(assert (=> b!5823448 (= e!3573705 (nullableZipper!1745 z!1189))))

(declare-fun b!5823449 () Bool)

(declare-fun derivationStepZipper!1907 ((Set Context!10512) C!32014) (Set Context!10512))

(assert (=> b!5823449 (= e!3573705 (matchZipper!1972 (derivationStepZipper!1907 z!1189 (head!12308 s!2326)) (tail!11393 s!2326)))))

(assert (= (and d!1832266 c!1031980) b!5823448))

(assert (= (and d!1832266 (not c!1031980)) b!5823449))

(assert (=> d!1832266 m!6757178))

(declare-fun m!6757306 () Bool)

(assert (=> b!5823448 m!6757306))

(assert (=> b!5823449 m!6757262))

(assert (=> b!5823449 m!6757262))

(declare-fun m!6757308 () Bool)

(assert (=> b!5823449 m!6757308))

(assert (=> b!5823449 m!6757266))

(assert (=> b!5823449 m!6757308))

(assert (=> b!5823449 m!6757266))

(declare-fun m!6757310 () Bool)

(assert (=> b!5823449 m!6757310))

(assert (=> b!5823168 d!1832266))

(declare-fun d!1832268 () Bool)

(assert (=> d!1832268 (= (matchZipper!1972 z!1189 s!2326) (isEmpty!35660 s!2326))))

(declare-fun lt!2302483 () Unit!157015)

(declare-fun choose!44259 ((Set Context!10512) List!63917) Unit!157015)

(assert (=> d!1832268 (= lt!2302483 (choose!44259 z!1189 s!2326))))

(assert (=> d!1832268 (= (unfocusZipper!1614 (toList!9656 z!1189)) EmptyExpr!15872)))

(assert (=> d!1832268 (= (lemmaZipperOfEmptyExprMatchesOnlyEmptyString!3 z!1189 s!2326) lt!2302483)))

(declare-fun bs!1373723 () Bool)

(assert (= bs!1373723 d!1832268))

(assert (=> bs!1373723 m!6757180))

(assert (=> bs!1373723 m!6757178))

(declare-fun m!6757312 () Bool)

(assert (=> bs!1373723 m!6757312))

(assert (=> bs!1373723 m!6757184))

(assert (=> bs!1373723 m!6757184))

(declare-fun m!6757314 () Bool)

(assert (=> bs!1373723 m!6757314))

(assert (=> b!5823168 d!1832268))

(declare-fun d!1832270 () Bool)

(assert (=> d!1832270 (= (isEmpty!35661 (t!377271 zl!343)) (is-Nil!63792 (t!377271 zl!343)))))

(assert (=> b!5823173 d!1832270))

(declare-fun d!1832272 () Bool)

(declare-fun lt!2302486 () Regex!15872)

(assert (=> d!1832272 (validRegex!7608 lt!2302486)))

(assert (=> d!1832272 (= lt!2302486 (generalisedUnion!1716 (unfocusZipperList!1293 zl!343)))))

(assert (=> d!1832272 (= (unfocusZipper!1614 zl!343) lt!2302486)))

(declare-fun bs!1373724 () Bool)

(assert (= bs!1373724 d!1832272))

(declare-fun m!6757316 () Bool)

(assert (=> bs!1373724 m!6757316))

(assert (=> bs!1373724 m!6757186))

(assert (=> bs!1373724 m!6757186))

(assert (=> bs!1373724 m!6757188))

(assert (=> b!5823174 d!1832272))

(declare-fun d!1832274 () Bool)

(declare-fun lt!2302487 () Regex!15872)

(assert (=> d!1832274 (validRegex!7608 lt!2302487)))

(assert (=> d!1832274 (= lt!2302487 (generalisedUnion!1716 (unfocusZipperList!1293 lt!2302443)))))

(assert (=> d!1832274 (= (unfocusZipper!1614 lt!2302443) lt!2302487)))

(declare-fun bs!1373725 () Bool)

(assert (= bs!1373725 d!1832274))

(declare-fun m!6757318 () Bool)

(assert (=> bs!1373725 m!6757318))

(declare-fun m!6757320 () Bool)

(assert (=> bs!1373725 m!6757320))

(assert (=> bs!1373725 m!6757320))

(declare-fun m!6757322 () Bool)

(assert (=> bs!1373725 m!6757322))

(assert (=> b!5823165 d!1832274))

(declare-fun bs!1373726 () Bool)

(declare-fun d!1832276 () Bool)

(assert (= bs!1373726 (and d!1832276 d!1832246)))

(declare-fun lambda!318695 () Int)

(assert (=> bs!1373726 (= lambda!318695 lambda!318679)))

(declare-fun bs!1373727 () Bool)

(assert (= bs!1373727 (and d!1832276 d!1832250)))

(assert (=> bs!1373727 (= lambda!318695 lambda!318682)))

(declare-fun bs!1373728 () Bool)

(assert (= bs!1373728 (and d!1832276 d!1832258)))

(assert (=> bs!1373728 (= lambda!318695 lambda!318691)))

(declare-fun bs!1373729 () Bool)

(assert (= bs!1373729 (and d!1832276 d!1832260)))

(assert (=> bs!1373729 (= lambda!318695 lambda!318694)))

(assert (=> d!1832276 (= (inv!82928 setElem!39349) (forall!14963 (exprs!5756 setElem!39349) lambda!318695))))

(declare-fun bs!1373730 () Bool)

(assert (= bs!1373730 d!1832276))

(declare-fun m!6757324 () Bool)

(assert (=> bs!1373730 m!6757324))

(assert (=> setNonEmpty!39349 d!1832276))

(declare-fun bm!454772 () Bool)

(declare-fun call!454778 () Bool)

(declare-fun call!454779 () Bool)

(assert (=> bm!454772 (= call!454778 call!454779)))

(declare-fun b!5823469 () Bool)

(declare-fun e!3573724 () Bool)

(declare-fun e!3573725 () Bool)

(assert (=> b!5823469 (= e!3573724 e!3573725)))

(declare-fun c!1031986 () Bool)

(assert (=> b!5823469 (= c!1031986 (is-Star!15872 r!7292))))

(declare-fun b!5823470 () Bool)

(declare-fun e!3573720 () Bool)

(assert (=> b!5823470 (= e!3573720 call!454779)))

(declare-fun b!5823471 () Bool)

(declare-fun res!2455392 () Bool)

(declare-fun e!3573726 () Bool)

(assert (=> b!5823471 (=> res!2455392 e!3573726)))

(assert (=> b!5823471 (= res!2455392 (not (is-Concat!24717 r!7292)))))

(declare-fun e!3573722 () Bool)

(assert (=> b!5823471 (= e!3573722 e!3573726)))

(declare-fun b!5823472 () Bool)

(declare-fun res!2455396 () Bool)

(declare-fun e!3573723 () Bool)

(assert (=> b!5823472 (=> (not res!2455396) (not e!3573723))))

(declare-fun call!454777 () Bool)

(assert (=> b!5823472 (= res!2455396 call!454777)))

(assert (=> b!5823472 (= e!3573722 e!3573723)))

(declare-fun c!1031985 () Bool)

(declare-fun bm!454773 () Bool)

(assert (=> bm!454773 (= call!454779 (validRegex!7608 (ite c!1031986 (reg!16201 r!7292) (ite c!1031985 (regTwo!32257 r!7292) (regTwo!32256 r!7292)))))))

(declare-fun b!5823473 () Bool)

(assert (=> b!5823473 (= e!3573723 call!454778)))

(declare-fun b!5823474 () Bool)

(declare-fun e!3573721 () Bool)

(assert (=> b!5823474 (= e!3573726 e!3573721)))

(declare-fun res!2455393 () Bool)

(assert (=> b!5823474 (=> (not res!2455393) (not e!3573721))))

(assert (=> b!5823474 (= res!2455393 call!454777)))

(declare-fun bm!454774 () Bool)

(assert (=> bm!454774 (= call!454777 (validRegex!7608 (ite c!1031985 (regOne!32257 r!7292) (regOne!32256 r!7292))))))

(declare-fun d!1832278 () Bool)

(declare-fun res!2455394 () Bool)

(assert (=> d!1832278 (=> res!2455394 e!3573724)))

(assert (=> d!1832278 (= res!2455394 (is-ElementMatch!15872 r!7292))))

(assert (=> d!1832278 (= (validRegex!7608 r!7292) e!3573724)))

(declare-fun b!5823468 () Bool)

(assert (=> b!5823468 (= e!3573725 e!3573722)))

(assert (=> b!5823468 (= c!1031985 (is-Union!15872 r!7292))))

(declare-fun b!5823475 () Bool)

(assert (=> b!5823475 (= e!3573721 call!454778)))

(declare-fun b!5823476 () Bool)

(assert (=> b!5823476 (= e!3573725 e!3573720)))

(declare-fun res!2455395 () Bool)

(assert (=> b!5823476 (= res!2455395 (not (nullable!5875 (reg!16201 r!7292))))))

(assert (=> b!5823476 (=> (not res!2455395) (not e!3573720))))

(assert (= (and d!1832278 (not res!2455394)) b!5823469))

(assert (= (and b!5823469 c!1031986) b!5823476))

(assert (= (and b!5823469 (not c!1031986)) b!5823468))

(assert (= (and b!5823476 res!2455395) b!5823470))

(assert (= (and b!5823468 c!1031985) b!5823472))

(assert (= (and b!5823468 (not c!1031985)) b!5823471))

(assert (= (and b!5823472 res!2455396) b!5823473))

(assert (= (and b!5823471 (not res!2455392)) b!5823474))

(assert (= (and b!5823474 res!2455393) b!5823475))

(assert (= (or b!5823473 b!5823475) bm!454772))

(assert (= (or b!5823472 b!5823474) bm!454774))

(assert (= (or b!5823470 bm!454772) bm!454773))

(declare-fun m!6757326 () Bool)

(assert (=> bm!454773 m!6757326))

(declare-fun m!6757328 () Bool)

(assert (=> bm!454774 m!6757328))

(declare-fun m!6757330 () Bool)

(assert (=> b!5823476 m!6757330))

(assert (=> start!596634 d!1832278))

(declare-fun b!5823484 () Bool)

(declare-fun e!3573732 () Bool)

(declare-fun tp!1607429 () Bool)

(assert (=> b!5823484 (= e!3573732 tp!1607429)))

(declare-fun b!5823483 () Bool)

(declare-fun tp!1607430 () Bool)

(declare-fun e!3573731 () Bool)

(assert (=> b!5823483 (= e!3573731 (and (inv!82928 (h!70240 (t!377271 zl!343))) e!3573732 tp!1607430))))

(assert (=> b!5823171 (= tp!1607389 e!3573731)))

(assert (= b!5823483 b!5823484))

(assert (= (and b!5823171 (is-Cons!63792 (t!377271 zl!343))) b!5823483))

(declare-fun m!6757332 () Bool)

(assert (=> b!5823483 m!6757332))

(declare-fun b!5823496 () Bool)

(declare-fun e!3573735 () Bool)

(declare-fun tp!1607445 () Bool)

(declare-fun tp!1607444 () Bool)

(assert (=> b!5823496 (= e!3573735 (and tp!1607445 tp!1607444))))

(assert (=> b!5823176 (= tp!1607386 e!3573735)))

(declare-fun b!5823495 () Bool)

(assert (=> b!5823495 (= e!3573735 tp_is_empty!40997)))

(declare-fun b!5823497 () Bool)

(declare-fun tp!1607443 () Bool)

(assert (=> b!5823497 (= e!3573735 tp!1607443)))

(declare-fun b!5823498 () Bool)

(declare-fun tp!1607441 () Bool)

(declare-fun tp!1607442 () Bool)

(assert (=> b!5823498 (= e!3573735 (and tp!1607441 tp!1607442))))

(assert (= (and b!5823176 (is-ElementMatch!15872 (reg!16201 r!7292))) b!5823495))

(assert (= (and b!5823176 (is-Concat!24717 (reg!16201 r!7292))) b!5823496))

(assert (= (and b!5823176 (is-Star!15872 (reg!16201 r!7292))) b!5823497))

(assert (= (and b!5823176 (is-Union!15872 (reg!16201 r!7292))) b!5823498))

(declare-fun b!5823503 () Bool)

(declare-fun e!3573738 () Bool)

(declare-fun tp!1607450 () Bool)

(declare-fun tp!1607451 () Bool)

(assert (=> b!5823503 (= e!3573738 (and tp!1607450 tp!1607451))))

(assert (=> b!5823166 (= tp!1607390 e!3573738)))

(assert (= (and b!5823166 (is-Cons!63791 (exprs!5756 (h!70240 zl!343)))) b!5823503))

(declare-fun b!5823504 () Bool)

(declare-fun e!3573739 () Bool)

(declare-fun tp!1607452 () Bool)

(declare-fun tp!1607453 () Bool)

(assert (=> b!5823504 (= e!3573739 (and tp!1607452 tp!1607453))))

(assert (=> b!5823181 (= tp!1607387 e!3573739)))

(assert (= (and b!5823181 (is-Cons!63791 (exprs!5756 setElem!39349))) b!5823504))

(declare-fun b!5823506 () Bool)

(declare-fun e!3573740 () Bool)

(declare-fun tp!1607458 () Bool)

(declare-fun tp!1607457 () Bool)

(assert (=> b!5823506 (= e!3573740 (and tp!1607458 tp!1607457))))

(assert (=> b!5823172 (= tp!1607393 e!3573740)))

(declare-fun b!5823505 () Bool)

(assert (=> b!5823505 (= e!3573740 tp_is_empty!40997)))

(declare-fun b!5823507 () Bool)

(declare-fun tp!1607456 () Bool)

(assert (=> b!5823507 (= e!3573740 tp!1607456)))

(declare-fun b!5823508 () Bool)

(declare-fun tp!1607454 () Bool)

(declare-fun tp!1607455 () Bool)

(assert (=> b!5823508 (= e!3573740 (and tp!1607454 tp!1607455))))

(assert (= (and b!5823172 (is-ElementMatch!15872 (regOne!32257 r!7292))) b!5823505))

(assert (= (and b!5823172 (is-Concat!24717 (regOne!32257 r!7292))) b!5823506))

(assert (= (and b!5823172 (is-Star!15872 (regOne!32257 r!7292))) b!5823507))

(assert (= (and b!5823172 (is-Union!15872 (regOne!32257 r!7292))) b!5823508))

(declare-fun b!5823510 () Bool)

(declare-fun e!3573741 () Bool)

(declare-fun tp!1607463 () Bool)

(declare-fun tp!1607462 () Bool)

(assert (=> b!5823510 (= e!3573741 (and tp!1607463 tp!1607462))))

(assert (=> b!5823172 (= tp!1607391 e!3573741)))

(declare-fun b!5823509 () Bool)

(assert (=> b!5823509 (= e!3573741 tp_is_empty!40997)))

(declare-fun b!5823511 () Bool)

(declare-fun tp!1607461 () Bool)

(assert (=> b!5823511 (= e!3573741 tp!1607461)))

(declare-fun b!5823512 () Bool)

(declare-fun tp!1607459 () Bool)

(declare-fun tp!1607460 () Bool)

(assert (=> b!5823512 (= e!3573741 (and tp!1607459 tp!1607460))))

(assert (= (and b!5823172 (is-ElementMatch!15872 (regTwo!32257 r!7292))) b!5823509))

(assert (= (and b!5823172 (is-Concat!24717 (regTwo!32257 r!7292))) b!5823510))

(assert (= (and b!5823172 (is-Star!15872 (regTwo!32257 r!7292))) b!5823511))

(assert (= (and b!5823172 (is-Union!15872 (regTwo!32257 r!7292))) b!5823512))

(declare-fun b!5823517 () Bool)

(declare-fun e!3573744 () Bool)

(declare-fun tp!1607466 () Bool)

(assert (=> b!5823517 (= e!3573744 (and tp_is_empty!40997 tp!1607466))))

(assert (=> b!5823169 (= tp!1607394 e!3573744)))

(assert (= (and b!5823169 (is-Cons!63793 (t!377272 s!2326))) b!5823517))

(declare-fun condSetEmpty!39355 () Bool)

(assert (=> setNonEmpty!39349 (= condSetEmpty!39355 (= setRest!39349 (as set.empty (Set Context!10512))))))

(declare-fun setRes!39355 () Bool)

(assert (=> setNonEmpty!39349 (= tp!1607385 setRes!39355)))

(declare-fun setIsEmpty!39355 () Bool)

(assert (=> setIsEmpty!39355 setRes!39355))

(declare-fun e!3573747 () Bool)

(declare-fun tp!1607471 () Bool)

(declare-fun setElem!39355 () Context!10512)

(declare-fun setNonEmpty!39355 () Bool)

(assert (=> setNonEmpty!39355 (= setRes!39355 (and tp!1607471 (inv!82928 setElem!39355) e!3573747))))

(declare-fun setRest!39355 () (Set Context!10512))

(assert (=> setNonEmpty!39355 (= setRest!39349 (set.union (set.insert setElem!39355 (as set.empty (Set Context!10512))) setRest!39355))))

(declare-fun b!5823522 () Bool)

(declare-fun tp!1607472 () Bool)

(assert (=> b!5823522 (= e!3573747 tp!1607472)))

(assert (= (and setNonEmpty!39349 condSetEmpty!39355) setIsEmpty!39355))

(assert (= (and setNonEmpty!39349 (not condSetEmpty!39355)) setNonEmpty!39355))

(assert (= setNonEmpty!39355 b!5823522))

(declare-fun m!6757334 () Bool)

(assert (=> setNonEmpty!39355 m!6757334))

(declare-fun b!5823524 () Bool)

(declare-fun e!3573748 () Bool)

(declare-fun tp!1607477 () Bool)

(declare-fun tp!1607476 () Bool)

(assert (=> b!5823524 (= e!3573748 (and tp!1607477 tp!1607476))))

(assert (=> b!5823180 (= tp!1607392 e!3573748)))

(declare-fun b!5823523 () Bool)

(assert (=> b!5823523 (= e!3573748 tp_is_empty!40997)))

(declare-fun b!5823525 () Bool)

(declare-fun tp!1607475 () Bool)

(assert (=> b!5823525 (= e!3573748 tp!1607475)))

(declare-fun b!5823526 () Bool)

(declare-fun tp!1607473 () Bool)

(declare-fun tp!1607474 () Bool)

(assert (=> b!5823526 (= e!3573748 (and tp!1607473 tp!1607474))))

(assert (= (and b!5823180 (is-ElementMatch!15872 (regOne!32256 r!7292))) b!5823523))

(assert (= (and b!5823180 (is-Concat!24717 (regOne!32256 r!7292))) b!5823524))

(assert (= (and b!5823180 (is-Star!15872 (regOne!32256 r!7292))) b!5823525))

(assert (= (and b!5823180 (is-Union!15872 (regOne!32256 r!7292))) b!5823526))

(declare-fun b!5823528 () Bool)

(declare-fun e!3573749 () Bool)

(declare-fun tp!1607482 () Bool)

(declare-fun tp!1607481 () Bool)

(assert (=> b!5823528 (= e!3573749 (and tp!1607482 tp!1607481))))

(assert (=> b!5823180 (= tp!1607388 e!3573749)))

(declare-fun b!5823527 () Bool)

(assert (=> b!5823527 (= e!3573749 tp_is_empty!40997)))

(declare-fun b!5823529 () Bool)

(declare-fun tp!1607480 () Bool)

(assert (=> b!5823529 (= e!3573749 tp!1607480)))

(declare-fun b!5823530 () Bool)

(declare-fun tp!1607478 () Bool)

(declare-fun tp!1607479 () Bool)

(assert (=> b!5823530 (= e!3573749 (and tp!1607478 tp!1607479))))

(assert (= (and b!5823180 (is-ElementMatch!15872 (regTwo!32256 r!7292))) b!5823527))

(assert (= (and b!5823180 (is-Concat!24717 (regTwo!32256 r!7292))) b!5823528))

(assert (= (and b!5823180 (is-Star!15872 (regTwo!32256 r!7292))) b!5823529))

(assert (= (and b!5823180 (is-Union!15872 (regTwo!32256 r!7292))) b!5823530))

(push 1)

(assert (not b!5823431))

(assert (not b!5823484))

(assert (not b!5823425))

(assert tp_is_empty!40997)

(assert (not b!5823526))

(assert (not d!1832268))

(assert (not d!1832274))

(assert (not b!5823396))

(assert (not setNonEmpty!39355))

(assert (not b!5823439))

(assert (not bm!454761))

(assert (not d!1832254))

(assert (not d!1832260))

(assert (not b!5823476))

(assert (not b!5823517))

(assert (not d!1832266))

(assert (not b!5823506))

(assert (not b!5823522))

(assert (not bm!454765))

(assert (not d!1832246))

(assert (not b!5823503))

(assert (not b!5823394))

(assert (not b!5823448))

(assert (not b!5823483))

(assert (not b!5823530))

(assert (not b!5823507))

(assert (not d!1832250))

(assert (not b!5823426))

(assert (not b!5823348))

(assert (not b!5823430))

(assert (not b!5823428))

(assert (not b!5823315))

(assert (not b!5823496))

(assert (not b!5823427))

(assert (not b!5823528))

(assert (not b!5823307))

(assert (not b!5823403))

(assert (not b!5823508))

(assert (not d!1832258))

(assert (not b!5823395))

(assert (not b!5823429))

(assert (not b!5823529))

(assert (not b!5823391))

(assert (not b!5823511))

(assert (not d!1832272))

(assert (not b!5823524))

(assert (not b!5823449))

(assert (not d!1832256))

(assert (not d!1832262))

(assert (not b!5823525))

(assert (not b!5823443))

(assert (not b!5823504))

(assert (not b!5823512))

(assert (not b!5823399))

(assert (not bm!454773))

(assert (not b!5823311))

(assert (not b!5823497))

(assert (not b!5823349))

(assert (not d!1832276))

(assert (not bm!454774))

(assert (not b!5823308))

(assert (not b!5823498))

(assert (not bm!454762))

(assert (not b!5823313))

(assert (not b!5823306))

(assert (not b!5823510))

(assert (not b!5823312))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

