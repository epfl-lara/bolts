; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704178 () Bool)

(assert start!704178)

(declare-fun b!7243723 () Bool)

(assert (=> b!7243723 true))

(declare-fun b!7243716 () Bool)

(assert (=> b!7243716 true))

(declare-fun e!4343062 () Bool)

(declare-fun e!4343067 () Bool)

(assert (=> b!7243716 (= e!4343062 e!4343067)))

(declare-fun res!2938368 () Bool)

(assert (=> b!7243716 (=> res!2938368 e!4343067)))

(declare-datatypes ((C!37438 0))(
  ( (C!37439 (val!28667 Int)) )
))
(declare-datatypes ((Regex!18582 0))(
  ( (ElementMatch!18582 (c!1345430 C!37438)) (Concat!27427 (regOne!37676 Regex!18582) (regTwo!37676 Regex!18582)) (EmptyExpr!18582) (Star!18582 (reg!18911 Regex!18582)) (EmptyLang!18582) (Union!18582 (regOne!37677 Regex!18582) (regTwo!37677 Regex!18582)) )
))
(declare-datatypes ((List!70343 0))(
  ( (Nil!70219) (Cons!70219 (h!76667 Regex!18582) (t!384394 List!70343)) )
))
(declare-datatypes ((Context!15044 0))(
  ( (Context!15045 (exprs!8022 List!70343)) )
))
(declare-fun ct1!232 () Context!15044)

(declare-fun nullable!7875 (Regex!18582) Bool)

(assert (=> b!7243716 (= res!2938368 (not (nullable!7875 (h!76667 (exprs!8022 ct1!232)))))))

(declare-fun lambda!442562 () Int)

(declare-fun lt!2581291 () Context!15044)

(declare-datatypes ((List!70344 0))(
  ( (Nil!70220) (Cons!70220 (h!76668 C!37438) (t!384395 List!70344)) )
))
(declare-fun s1!1971 () List!70344)

(declare-fun lt!2581297 () (Set Context!15044))

(declare-fun flatMap!2770 ((Set Context!15044) Int) (Set Context!15044))

(declare-fun derivationStepZipperUp!2436 (Context!15044 C!37438) (Set Context!15044))

(assert (=> b!7243716 (= (flatMap!2770 lt!2581297 lambda!442562) (derivationStepZipperUp!2436 lt!2581291 (h!76668 s1!1971)))))

(declare-datatypes ((Unit!163750 0))(
  ( (Unit!163751) )
))
(declare-fun lt!2581277 () Unit!163750)

(declare-fun lemmaFlatMapOnSingletonSet!2193 ((Set Context!15044) Context!15044 Int) Unit!163750)

(assert (=> b!7243716 (= lt!2581277 (lemmaFlatMapOnSingletonSet!2193 lt!2581297 lt!2581291 lambda!442562))))

(declare-fun lambda!442560 () Int)

(declare-fun ct2!328 () Context!15044)

(declare-fun lt!2581293 () Unit!163750)

(declare-fun lemmaConcatPreservesForall!1391 (List!70343 List!70343 Int) Unit!163750)

(assert (=> b!7243716 (= lt!2581293 (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun lt!2581281 () (Set Context!15044))

(assert (=> b!7243716 (= (flatMap!2770 lt!2581281 lambda!442562) (derivationStepZipperUp!2436 ct1!232 (h!76668 s1!1971)))))

(declare-fun lt!2581279 () Unit!163750)

(assert (=> b!7243716 (= lt!2581279 (lemmaFlatMapOnSingletonSet!2193 lt!2581281 ct1!232 lambda!442562))))

(declare-fun lt!2581295 () Context!15044)

(declare-fun lt!2581299 () (Set Context!15044))

(declare-fun derivationStepZipperDown!2606 (Regex!18582 Context!15044 C!37438) (Set Context!15044))

(assert (=> b!7243716 (= lt!2581299 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 ct1!232)) lt!2581295 (h!76668 s1!1971)))))

(declare-fun lt!2581280 () List!70343)

(declare-fun tail!14248 (List!70343) List!70343)

(assert (=> b!7243716 (= lt!2581295 (Context!15045 (tail!14248 lt!2581280)))))

(declare-fun b!7243717 () Bool)

(declare-fun e!4343061 () Bool)

(declare-fun e!4343069 () Bool)

(assert (=> b!7243717 (= e!4343061 e!4343069)))

(declare-fun res!2938365 () Bool)

(assert (=> b!7243717 (=> (not res!2938365) (not e!4343069))))

(declare-fun lt!2581286 () (Set Context!15044))

(declare-fun matchZipper!3492 ((Set Context!15044) List!70344) Bool)

(assert (=> b!7243717 (= res!2938365 (matchZipper!3492 lt!2581286 (t!384395 s1!1971)))))

(declare-fun derivationStepZipper!3370 ((Set Context!15044) C!37438) (Set Context!15044))

(assert (=> b!7243717 (= lt!2581286 (derivationStepZipper!3370 lt!2581281 (h!76668 s1!1971)))))

(declare-fun b!7243718 () Bool)

(declare-fun e!4343064 () Bool)

(assert (=> b!7243718 (= e!4343067 e!4343064)))

(declare-fun res!2938369 () Bool)

(assert (=> b!7243718 (=> res!2938369 e!4343064)))

(declare-fun lt!2581290 () (Set Context!15044))

(assert (=> b!7243718 (= res!2938369 (not (= lt!2581290 (set.union lt!2581299 (derivationStepZipperUp!2436 lt!2581295 (h!76668 s1!1971))))))))

(declare-fun lt!2581282 () Unit!163750)

(assert (=> b!7243718 (= lt!2581282 (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun res!2938371 () Bool)

(declare-fun e!4343071 () Bool)

(assert (=> start!704178 (=> (not res!2938371) (not e!4343071))))

(assert (=> start!704178 (= res!2938371 (matchZipper!3492 lt!2581281 s1!1971))))

(assert (=> start!704178 (= lt!2581281 (set.insert ct1!232 (as set.empty (Set Context!15044))))))

(assert (=> start!704178 e!4343071))

(declare-fun e!4343066 () Bool)

(declare-fun inv!89466 (Context!15044) Bool)

(assert (=> start!704178 (and (inv!89466 ct1!232) e!4343066)))

(declare-fun e!4343063 () Bool)

(assert (=> start!704178 e!4343063))

(declare-fun e!4343060 () Bool)

(assert (=> start!704178 e!4343060))

(declare-fun e!4343068 () Bool)

(assert (=> start!704178 (and (inv!89466 ct2!328) e!4343068)))

(declare-fun b!7243719 () Bool)

(assert (=> b!7243719 (= e!4343064 (= (derivationStepZipper!3370 lt!2581297 (h!76668 s1!1971)) lt!2581290))))

(declare-fun b!7243720 () Bool)

(declare-fun e!4343070 () Bool)

(assert (=> b!7243720 (= e!4343070 e!4343062)))

(declare-fun res!2938370 () Bool)

(assert (=> b!7243720 (=> res!2938370 e!4343062)))

(declare-fun isEmpty!40455 (List!70343) Bool)

(assert (=> b!7243720 (= res!2938370 (isEmpty!40455 lt!2581280))))

(declare-fun lt!2581294 () Unit!163750)

(assert (=> b!7243720 (= lt!2581294 (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(assert (=> b!7243720 (= lt!2581290 (derivationStepZipperUp!2436 lt!2581291 (h!76668 s1!1971)))))

(declare-fun lt!2581300 () Unit!163750)

(assert (=> b!7243720 (= lt!2581300 (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun lt!2581288 () Context!15044)

(declare-fun lt!2581289 () (Set Context!15044))

(assert (=> b!7243720 (= lt!2581289 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 ct1!232)) lt!2581288 (h!76668 s1!1971)))))

(assert (=> b!7243720 (= lt!2581288 (Context!15045 (tail!14248 (exprs!8022 ct1!232))))))

(declare-fun b!7243721 () Bool)

(declare-fun res!2938366 () Bool)

(assert (=> b!7243721 (=> res!2938366 e!4343067)))

(declare-fun lt!2581283 () (Set Context!15044))

(assert (=> b!7243721 (= res!2938366 (not (= lt!2581283 (set.union lt!2581289 (derivationStepZipperUp!2436 lt!2581288 (h!76668 s1!1971))))))))

(declare-fun b!7243722 () Bool)

(declare-fun tp!2035885 () Bool)

(assert (=> b!7243722 (= e!4343068 tp!2035885)))

(declare-fun e!4343065 () Bool)

(assert (=> b!7243723 (= e!4343069 (not e!4343065))))

(declare-fun res!2938372 () Bool)

(assert (=> b!7243723 (=> res!2938372 e!4343065)))

(declare-fun lambda!442561 () Int)

(declare-fun exists!4283 ((Set Context!15044) Int) Bool)

(assert (=> b!7243723 (= res!2938372 (not (exists!4283 lt!2581286 lambda!442561)))))

(declare-datatypes ((List!70345 0))(
  ( (Nil!70221) (Cons!70221 (h!76669 Context!15044) (t!384396 List!70345)) )
))
(declare-fun lt!2581285 () List!70345)

(declare-fun exists!4284 (List!70345 Int) Bool)

(assert (=> b!7243723 (exists!4284 lt!2581285 lambda!442561)))

(declare-fun lt!2581298 () Unit!163750)

(declare-fun lemmaZipperMatchesExistsMatchingContext!709 (List!70345 List!70344) Unit!163750)

(assert (=> b!7243723 (= lt!2581298 (lemmaZipperMatchesExistsMatchingContext!709 lt!2581285 (t!384395 s1!1971)))))

(declare-fun toList!11428 ((Set Context!15044)) List!70345)

(assert (=> b!7243723 (= lt!2581285 (toList!11428 lt!2581286))))

(declare-fun b!7243724 () Bool)

(declare-fun tp!2035886 () Bool)

(assert (=> b!7243724 (= e!4343066 tp!2035886)))

(declare-fun b!7243725 () Bool)

(assert (=> b!7243725 (= e!4343071 e!4343061)))

(declare-fun res!2938373 () Bool)

(assert (=> b!7243725 (=> (not res!2938373) (not e!4343061))))

(assert (=> b!7243725 (= res!2938373 (and (not (is-Nil!70219 (exprs!8022 ct1!232))) (is-Cons!70220 s1!1971)))))

(assert (=> b!7243725 (= lt!2581297 (set.insert lt!2581291 (as set.empty (Set Context!15044))))))

(assert (=> b!7243725 (= lt!2581291 (Context!15045 lt!2581280))))

(declare-fun ++!16448 (List!70343 List!70343) List!70343)

(assert (=> b!7243725 (= lt!2581280 (++!16448 (exprs!8022 ct1!232) (exprs!8022 ct2!328)))))

(declare-fun lt!2581284 () Unit!163750)

(assert (=> b!7243725 (= lt!2581284 (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun b!7243726 () Bool)

(assert (=> b!7243726 (= e!4343065 e!4343070)))

(declare-fun res!2938374 () Bool)

(assert (=> b!7243726 (=> res!2938374 e!4343070)))

(assert (=> b!7243726 (= res!2938374 (isEmpty!40455 (exprs!8022 ct1!232)))))

(assert (=> b!7243726 (= lt!2581283 (derivationStepZipperUp!2436 ct1!232 (h!76668 s1!1971)))))

(declare-fun lt!2581296 () Context!15044)

(declare-fun lt!2581292 () Unit!163750)

(assert (=> b!7243726 (= lt!2581292 (lemmaConcatPreservesForall!1391 (exprs!8022 lt!2581296) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun s2!1849 () List!70344)

(declare-fun ++!16449 (List!70344 List!70344) List!70344)

(assert (=> b!7243726 (matchZipper!3492 (set.insert (Context!15045 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328))) (as set.empty (Set Context!15044))) (++!16449 (t!384395 s1!1971) s2!1849))))

(declare-fun lt!2581287 () Unit!163750)

(assert (=> b!7243726 (= lt!2581287 (lemmaConcatPreservesForall!1391 (exprs!8022 lt!2581296) (exprs!8022 ct2!328) lambda!442560))))

(declare-fun lt!2581278 () Unit!163750)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!355 (Context!15044 Context!15044 List!70344 List!70344) Unit!163750)

(assert (=> b!7243726 (= lt!2581278 (lemmaConcatenateContextMatchesConcatOfStrings!355 lt!2581296 ct2!328 (t!384395 s1!1971) s2!1849))))

(declare-fun getWitness!2132 ((Set Context!15044) Int) Context!15044)

(assert (=> b!7243726 (= lt!2581296 (getWitness!2132 lt!2581286 lambda!442561))))

(declare-fun b!7243727 () Bool)

(declare-fun tp_is_empty!46629 () Bool)

(declare-fun tp!2035888 () Bool)

(assert (=> b!7243727 (= e!4343063 (and tp_is_empty!46629 tp!2035888))))

(declare-fun b!7243728 () Bool)

(declare-fun res!2938375 () Bool)

(assert (=> b!7243728 (=> (not res!2938375) (not e!4343071))))

(assert (=> b!7243728 (= res!2938375 (matchZipper!3492 (set.insert ct2!328 (as set.empty (Set Context!15044))) s2!1849))))

(declare-fun b!7243729 () Bool)

(declare-fun tp!2035887 () Bool)

(assert (=> b!7243729 (= e!4343060 (and tp_is_empty!46629 tp!2035887))))

(declare-fun b!7243730 () Bool)

(declare-fun res!2938367 () Bool)

(assert (=> b!7243730 (=> res!2938367 e!4343067)))

(assert (=> b!7243730 (= res!2938367 (not (= lt!2581286 lt!2581283)))))

(assert (= (and start!704178 res!2938371) b!7243728))

(assert (= (and b!7243728 res!2938375) b!7243725))

(assert (= (and b!7243725 res!2938373) b!7243717))

(assert (= (and b!7243717 res!2938365) b!7243723))

(assert (= (and b!7243723 (not res!2938372)) b!7243726))

(assert (= (and b!7243726 (not res!2938374)) b!7243720))

(assert (= (and b!7243720 (not res!2938370)) b!7243716))

(assert (= (and b!7243716 (not res!2938368)) b!7243721))

(assert (= (and b!7243721 (not res!2938366)) b!7243730))

(assert (= (and b!7243730 (not res!2938367)) b!7243718))

(assert (= (and b!7243718 (not res!2938369)) b!7243719))

(assert (= start!704178 b!7243724))

(assert (= (and start!704178 (is-Cons!70220 s1!1971)) b!7243727))

(assert (= (and start!704178 (is-Cons!70220 s2!1849)) b!7243729))

(assert (= start!704178 b!7243722))

(declare-fun m!7919200 () Bool)

(assert (=> b!7243718 m!7919200))

(declare-fun m!7919202 () Bool)

(assert (=> b!7243718 m!7919202))

(declare-fun m!7919204 () Bool)

(assert (=> b!7243716 m!7919204))

(assert (=> b!7243716 m!7919202))

(declare-fun m!7919206 () Bool)

(assert (=> b!7243716 m!7919206))

(declare-fun m!7919208 () Bool)

(assert (=> b!7243716 m!7919208))

(declare-fun m!7919210 () Bool)

(assert (=> b!7243716 m!7919210))

(declare-fun m!7919212 () Bool)

(assert (=> b!7243716 m!7919212))

(declare-fun m!7919214 () Bool)

(assert (=> b!7243716 m!7919214))

(declare-fun m!7919216 () Bool)

(assert (=> b!7243716 m!7919216))

(declare-fun m!7919218 () Bool)

(assert (=> b!7243716 m!7919218))

(declare-fun m!7919220 () Bool)

(assert (=> b!7243716 m!7919220))

(declare-fun m!7919222 () Bool)

(assert (=> start!704178 m!7919222))

(declare-fun m!7919224 () Bool)

(assert (=> start!704178 m!7919224))

(declare-fun m!7919226 () Bool)

(assert (=> start!704178 m!7919226))

(declare-fun m!7919228 () Bool)

(assert (=> start!704178 m!7919228))

(declare-fun m!7919230 () Bool)

(assert (=> b!7243723 m!7919230))

(declare-fun m!7919232 () Bool)

(assert (=> b!7243723 m!7919232))

(declare-fun m!7919234 () Bool)

(assert (=> b!7243723 m!7919234))

(declare-fun m!7919236 () Bool)

(assert (=> b!7243723 m!7919236))

(assert (=> b!7243720 m!7919202))

(declare-fun m!7919238 () Bool)

(assert (=> b!7243720 m!7919238))

(declare-fun m!7919240 () Bool)

(assert (=> b!7243720 m!7919240))

(assert (=> b!7243720 m!7919218))

(assert (=> b!7243720 m!7919202))

(declare-fun m!7919242 () Bool)

(assert (=> b!7243720 m!7919242))

(declare-fun m!7919244 () Bool)

(assert (=> b!7243721 m!7919244))

(declare-fun m!7919246 () Bool)

(assert (=> b!7243719 m!7919246))

(declare-fun m!7919248 () Bool)

(assert (=> b!7243725 m!7919248))

(declare-fun m!7919250 () Bool)

(assert (=> b!7243725 m!7919250))

(assert (=> b!7243725 m!7919202))

(declare-fun m!7919252 () Bool)

(assert (=> b!7243726 m!7919252))

(declare-fun m!7919254 () Bool)

(assert (=> b!7243726 m!7919254))

(declare-fun m!7919256 () Bool)

(assert (=> b!7243726 m!7919256))

(assert (=> b!7243726 m!7919210))

(declare-fun m!7919258 () Bool)

(assert (=> b!7243726 m!7919258))

(assert (=> b!7243726 m!7919254))

(declare-fun m!7919260 () Bool)

(assert (=> b!7243726 m!7919260))

(declare-fun m!7919262 () Bool)

(assert (=> b!7243726 m!7919262))

(assert (=> b!7243726 m!7919258))

(declare-fun m!7919264 () Bool)

(assert (=> b!7243726 m!7919264))

(declare-fun m!7919266 () Bool)

(assert (=> b!7243726 m!7919266))

(assert (=> b!7243726 m!7919262))

(declare-fun m!7919268 () Bool)

(assert (=> b!7243728 m!7919268))

(assert (=> b!7243728 m!7919268))

(declare-fun m!7919270 () Bool)

(assert (=> b!7243728 m!7919270))

(declare-fun m!7919272 () Bool)

(assert (=> b!7243717 m!7919272))

(declare-fun m!7919274 () Bool)

(assert (=> b!7243717 m!7919274))

(push 1)

(assert (not b!7243720))

(assert (not b!7243717))

(assert (not b!7243726))

(assert (not b!7243722))

(assert (not b!7243729))

(assert (not b!7243723))

(assert tp_is_empty!46629)

(assert (not b!7243718))

(assert (not b!7243728))

(assert (not b!7243725))

(assert (not b!7243716))

(assert (not b!7243719))

(assert (not b!7243724))

(assert (not start!704178))

(assert (not b!7243721))

(assert (not b!7243727))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1904615 () Bool)

(declare-fun d!2250760 () Bool)

(assert (= bs!1904615 (and d!2250760 b!7243716)))

(declare-fun lambda!442592 () Int)

(assert (=> bs!1904615 (= lambda!442592 lambda!442562)))

(assert (=> d!2250760 true))

(assert (=> d!2250760 (= (derivationStepZipper!3370 lt!2581297 (h!76668 s1!1971)) (flatMap!2770 lt!2581297 lambda!442592))))

(declare-fun bs!1904616 () Bool)

(assert (= bs!1904616 d!2250760))

(declare-fun m!7919352 () Bool)

(assert (=> bs!1904616 m!7919352))

(assert (=> b!7243719 d!2250760))

(declare-fun d!2250762 () Bool)

(declare-fun c!1345446 () Bool)

(declare-fun isEmpty!40457 (List!70344) Bool)

(assert (=> d!2250762 (= c!1345446 (isEmpty!40457 (t!384395 s1!1971)))))

(declare-fun e!4343110 () Bool)

(assert (=> d!2250762 (= (matchZipper!3492 lt!2581286 (t!384395 s1!1971)) e!4343110)))

(declare-fun b!7243790 () Bool)

(declare-fun nullableZipper!2872 ((Set Context!15044)) Bool)

(assert (=> b!7243790 (= e!4343110 (nullableZipper!2872 lt!2581286))))

(declare-fun b!7243791 () Bool)

(declare-fun head!14859 (List!70344) C!37438)

(declare-fun tail!14250 (List!70344) List!70344)

(assert (=> b!7243791 (= e!4343110 (matchZipper!3492 (derivationStepZipper!3370 lt!2581286 (head!14859 (t!384395 s1!1971))) (tail!14250 (t!384395 s1!1971))))))

(assert (= (and d!2250762 c!1345446) b!7243790))

(assert (= (and d!2250762 (not c!1345446)) b!7243791))

(declare-fun m!7919354 () Bool)

(assert (=> d!2250762 m!7919354))

(declare-fun m!7919356 () Bool)

(assert (=> b!7243790 m!7919356))

(declare-fun m!7919358 () Bool)

(assert (=> b!7243791 m!7919358))

(assert (=> b!7243791 m!7919358))

(declare-fun m!7919360 () Bool)

(assert (=> b!7243791 m!7919360))

(declare-fun m!7919362 () Bool)

(assert (=> b!7243791 m!7919362))

(assert (=> b!7243791 m!7919360))

(assert (=> b!7243791 m!7919362))

(declare-fun m!7919364 () Bool)

(assert (=> b!7243791 m!7919364))

(assert (=> b!7243717 d!2250762))

(declare-fun bs!1904617 () Bool)

(declare-fun d!2250764 () Bool)

(assert (= bs!1904617 (and d!2250764 b!7243716)))

(declare-fun lambda!442593 () Int)

(assert (=> bs!1904617 (= lambda!442593 lambda!442562)))

(declare-fun bs!1904618 () Bool)

(assert (= bs!1904618 (and d!2250764 d!2250760)))

(assert (=> bs!1904618 (= lambda!442593 lambda!442592)))

(assert (=> d!2250764 true))

(assert (=> d!2250764 (= (derivationStepZipper!3370 lt!2581281 (h!76668 s1!1971)) (flatMap!2770 lt!2581281 lambda!442593))))

(declare-fun bs!1904619 () Bool)

(assert (= bs!1904619 d!2250764))

(declare-fun m!7919366 () Bool)

(assert (=> bs!1904619 m!7919366))

(assert (=> b!7243717 d!2250764))

(declare-fun d!2250766 () Bool)

(declare-fun c!1345447 () Bool)

(assert (=> d!2250766 (= c!1345447 (isEmpty!40457 s2!1849))))

(declare-fun e!4343111 () Bool)

(assert (=> d!2250766 (= (matchZipper!3492 (set.insert ct2!328 (as set.empty (Set Context!15044))) s2!1849) e!4343111)))

(declare-fun b!7243792 () Bool)

(assert (=> b!7243792 (= e!4343111 (nullableZipper!2872 (set.insert ct2!328 (as set.empty (Set Context!15044)))))))

(declare-fun b!7243793 () Bool)

(assert (=> b!7243793 (= e!4343111 (matchZipper!3492 (derivationStepZipper!3370 (set.insert ct2!328 (as set.empty (Set Context!15044))) (head!14859 s2!1849)) (tail!14250 s2!1849)))))

(assert (= (and d!2250766 c!1345447) b!7243792))

(assert (= (and d!2250766 (not c!1345447)) b!7243793))

(declare-fun m!7919368 () Bool)

(assert (=> d!2250766 m!7919368))

(assert (=> b!7243792 m!7919268))

(declare-fun m!7919370 () Bool)

(assert (=> b!7243792 m!7919370))

(declare-fun m!7919372 () Bool)

(assert (=> b!7243793 m!7919372))

(assert (=> b!7243793 m!7919268))

(assert (=> b!7243793 m!7919372))

(declare-fun m!7919374 () Bool)

(assert (=> b!7243793 m!7919374))

(declare-fun m!7919376 () Bool)

(assert (=> b!7243793 m!7919376))

(assert (=> b!7243793 m!7919374))

(assert (=> b!7243793 m!7919376))

(declare-fun m!7919378 () Bool)

(assert (=> b!7243793 m!7919378))

(assert (=> b!7243728 d!2250766))

(declare-fun d!2250768 () Bool)

(declare-fun lt!2581375 () Bool)

(assert (=> d!2250768 (= lt!2581375 (exists!4284 (toList!11428 lt!2581286) lambda!442561))))

(declare-fun choose!55853 ((Set Context!15044) Int) Bool)

(assert (=> d!2250768 (= lt!2581375 (choose!55853 lt!2581286 lambda!442561))))

(assert (=> d!2250768 (= (exists!4283 lt!2581286 lambda!442561) lt!2581375)))

(declare-fun bs!1904620 () Bool)

(assert (= bs!1904620 d!2250768))

(assert (=> bs!1904620 m!7919236))

(assert (=> bs!1904620 m!7919236))

(declare-fun m!7919380 () Bool)

(assert (=> bs!1904620 m!7919380))

(declare-fun m!7919382 () Bool)

(assert (=> bs!1904620 m!7919382))

(assert (=> b!7243723 d!2250768))

(declare-fun bs!1904621 () Bool)

(declare-fun d!2250770 () Bool)

(assert (= bs!1904621 (and d!2250770 b!7243723)))

(declare-fun lambda!442596 () Int)

(assert (=> bs!1904621 (not (= lambda!442596 lambda!442561))))

(assert (=> d!2250770 true))

(declare-fun order!28919 () Int)

(declare-fun dynLambda!28669 (Int Int) Int)

(assert (=> d!2250770 (< (dynLambda!28669 order!28919 lambda!442561) (dynLambda!28669 order!28919 lambda!442596))))

(declare-fun forall!17426 (List!70345 Int) Bool)

(assert (=> d!2250770 (= (exists!4284 lt!2581285 lambda!442561) (not (forall!17426 lt!2581285 lambda!442596)))))

(declare-fun bs!1904622 () Bool)

(assert (= bs!1904622 d!2250770))

(declare-fun m!7919384 () Bool)

(assert (=> bs!1904622 m!7919384))

(assert (=> b!7243723 d!2250770))

(declare-fun bs!1904623 () Bool)

(declare-fun d!2250772 () Bool)

(assert (= bs!1904623 (and d!2250772 b!7243723)))

(declare-fun lambda!442599 () Int)

(assert (=> bs!1904623 (= lambda!442599 lambda!442561)))

(declare-fun bs!1904624 () Bool)

(assert (= bs!1904624 (and d!2250772 d!2250770)))

(assert (=> bs!1904624 (not (= lambda!442599 lambda!442596))))

(assert (=> d!2250772 true))

(assert (=> d!2250772 (exists!4284 lt!2581285 lambda!442599)))

(declare-fun lt!2581378 () Unit!163750)

(declare-fun choose!55854 (List!70345 List!70344) Unit!163750)

(assert (=> d!2250772 (= lt!2581378 (choose!55854 lt!2581285 (t!384395 s1!1971)))))

(declare-fun content!14524 (List!70345) (Set Context!15044))

(assert (=> d!2250772 (matchZipper!3492 (content!14524 lt!2581285) (t!384395 s1!1971))))

(assert (=> d!2250772 (= (lemmaZipperMatchesExistsMatchingContext!709 lt!2581285 (t!384395 s1!1971)) lt!2581378)))

(declare-fun bs!1904625 () Bool)

(assert (= bs!1904625 d!2250772))

(declare-fun m!7919386 () Bool)

(assert (=> bs!1904625 m!7919386))

(declare-fun m!7919388 () Bool)

(assert (=> bs!1904625 m!7919388))

(declare-fun m!7919390 () Bool)

(assert (=> bs!1904625 m!7919390))

(assert (=> bs!1904625 m!7919390))

(declare-fun m!7919392 () Bool)

(assert (=> bs!1904625 m!7919392))

(assert (=> b!7243723 d!2250772))

(declare-fun d!2250774 () Bool)

(declare-fun e!4343114 () Bool)

(assert (=> d!2250774 e!4343114))

(declare-fun res!2938411 () Bool)

(assert (=> d!2250774 (=> (not res!2938411) (not e!4343114))))

(declare-fun lt!2581381 () List!70345)

(declare-fun noDuplicate!2964 (List!70345) Bool)

(assert (=> d!2250774 (= res!2938411 (noDuplicate!2964 lt!2581381))))

(declare-fun choose!55855 ((Set Context!15044)) List!70345)

(assert (=> d!2250774 (= lt!2581381 (choose!55855 lt!2581286))))

(assert (=> d!2250774 (= (toList!11428 lt!2581286) lt!2581381)))

(declare-fun b!7243798 () Bool)

(assert (=> b!7243798 (= e!4343114 (= (content!14524 lt!2581381) lt!2581286))))

(assert (= (and d!2250774 res!2938411) b!7243798))

(declare-fun m!7919394 () Bool)

(assert (=> d!2250774 m!7919394))

(declare-fun m!7919396 () Bool)

(assert (=> d!2250774 m!7919396))

(declare-fun m!7919398 () Bool)

(assert (=> b!7243798 m!7919398))

(assert (=> b!7243723 d!2250774))

(declare-fun d!2250776 () Bool)

(declare-fun c!1345450 () Bool)

(assert (=> d!2250776 (= c!1345450 (isEmpty!40457 s1!1971))))

(declare-fun e!4343115 () Bool)

(assert (=> d!2250776 (= (matchZipper!3492 lt!2581281 s1!1971) e!4343115)))

(declare-fun b!7243799 () Bool)

(assert (=> b!7243799 (= e!4343115 (nullableZipper!2872 lt!2581281))))

(declare-fun b!7243800 () Bool)

(assert (=> b!7243800 (= e!4343115 (matchZipper!3492 (derivationStepZipper!3370 lt!2581281 (head!14859 s1!1971)) (tail!14250 s1!1971)))))

(assert (= (and d!2250776 c!1345450) b!7243799))

(assert (= (and d!2250776 (not c!1345450)) b!7243800))

(declare-fun m!7919400 () Bool)

(assert (=> d!2250776 m!7919400))

(declare-fun m!7919402 () Bool)

(assert (=> b!7243799 m!7919402))

(declare-fun m!7919404 () Bool)

(assert (=> b!7243800 m!7919404))

(assert (=> b!7243800 m!7919404))

(declare-fun m!7919406 () Bool)

(assert (=> b!7243800 m!7919406))

(declare-fun m!7919408 () Bool)

(assert (=> b!7243800 m!7919408))

(assert (=> b!7243800 m!7919406))

(assert (=> b!7243800 m!7919408))

(declare-fun m!7919410 () Bool)

(assert (=> b!7243800 m!7919410))

(assert (=> start!704178 d!2250776))

(declare-fun bs!1904626 () Bool)

(declare-fun d!2250778 () Bool)

(assert (= bs!1904626 (and d!2250778 b!7243725)))

(declare-fun lambda!442602 () Int)

(assert (=> bs!1904626 (= lambda!442602 lambda!442560)))

(declare-fun forall!17427 (List!70343 Int) Bool)

(assert (=> d!2250778 (= (inv!89466 ct1!232) (forall!17427 (exprs!8022 ct1!232) lambda!442602))))

(declare-fun bs!1904627 () Bool)

(assert (= bs!1904627 d!2250778))

(declare-fun m!7919412 () Bool)

(assert (=> bs!1904627 m!7919412))

(assert (=> start!704178 d!2250778))

(declare-fun bs!1904628 () Bool)

(declare-fun d!2250780 () Bool)

(assert (= bs!1904628 (and d!2250780 b!7243725)))

(declare-fun lambda!442603 () Int)

(assert (=> bs!1904628 (= lambda!442603 lambda!442560)))

(declare-fun bs!1904629 () Bool)

(assert (= bs!1904629 (and d!2250780 d!2250778)))

(assert (=> bs!1904629 (= lambda!442603 lambda!442602)))

(assert (=> d!2250780 (= (inv!89466 ct2!328) (forall!17427 (exprs!8022 ct2!328) lambda!442603))))

(declare-fun bs!1904630 () Bool)

(assert (= bs!1904630 d!2250780))

(declare-fun m!7919414 () Bool)

(assert (=> bs!1904630 m!7919414))

(assert (=> start!704178 d!2250780))

(declare-fun d!2250782 () Bool)

(declare-fun c!1345455 () Bool)

(declare-fun e!4343122 () Bool)

(assert (=> d!2250782 (= c!1345455 e!4343122)))

(declare-fun res!2938414 () Bool)

(assert (=> d!2250782 (=> (not res!2938414) (not e!4343122))))

(assert (=> d!2250782 (= res!2938414 (is-Cons!70219 (exprs!8022 lt!2581295)))))

(declare-fun e!4343124 () (Set Context!15044))

(assert (=> d!2250782 (= (derivationStepZipperUp!2436 lt!2581295 (h!76668 s1!1971)) e!4343124)))

(declare-fun b!7243811 () Bool)

(declare-fun e!4343123 () (Set Context!15044))

(assert (=> b!7243811 (= e!4343124 e!4343123)))

(declare-fun c!1345456 () Bool)

(assert (=> b!7243811 (= c!1345456 (is-Cons!70219 (exprs!8022 lt!2581295)))))

(declare-fun b!7243812 () Bool)

(declare-fun call!659691 () (Set Context!15044))

(assert (=> b!7243812 (= e!4343123 call!659691)))

(declare-fun b!7243813 () Bool)

(assert (=> b!7243813 (= e!4343123 (as set.empty (Set Context!15044)))))

(declare-fun b!7243814 () Bool)

(assert (=> b!7243814 (= e!4343124 (set.union call!659691 (derivationStepZipperUp!2436 (Context!15045 (t!384394 (exprs!8022 lt!2581295))) (h!76668 s1!1971))))))

(declare-fun b!7243815 () Bool)

(assert (=> b!7243815 (= e!4343122 (nullable!7875 (h!76667 (exprs!8022 lt!2581295))))))

(declare-fun bm!659686 () Bool)

(assert (=> bm!659686 (= call!659691 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 lt!2581295)) (Context!15045 (t!384394 (exprs!8022 lt!2581295))) (h!76668 s1!1971)))))

(assert (= (and d!2250782 res!2938414) b!7243815))

(assert (= (and d!2250782 c!1345455) b!7243814))

(assert (= (and d!2250782 (not c!1345455)) b!7243811))

(assert (= (and b!7243811 c!1345456) b!7243812))

(assert (= (and b!7243811 (not c!1345456)) b!7243813))

(assert (= (or b!7243814 b!7243812) bm!659686))

(declare-fun m!7919416 () Bool)

(assert (=> b!7243814 m!7919416))

(declare-fun m!7919418 () Bool)

(assert (=> b!7243815 m!7919418))

(declare-fun m!7919420 () Bool)

(assert (=> bm!659686 m!7919420))

(assert (=> b!7243718 d!2250782))

(declare-fun d!2250784 () Bool)

(assert (=> d!2250784 (forall!17427 (++!16448 (exprs!8022 ct1!232) (exprs!8022 ct2!328)) lambda!442560)))

(declare-fun lt!2581384 () Unit!163750)

(declare-fun choose!55856 (List!70343 List!70343 Int) Unit!163750)

(assert (=> d!2250784 (= lt!2581384 (choose!55856 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560))))

(assert (=> d!2250784 (forall!17427 (exprs!8022 ct1!232) lambda!442560)))

(assert (=> d!2250784 (= (lemmaConcatPreservesForall!1391 (exprs!8022 ct1!232) (exprs!8022 ct2!328) lambda!442560) lt!2581384)))

(declare-fun bs!1904631 () Bool)

(assert (= bs!1904631 d!2250784))

(assert (=> bs!1904631 m!7919250))

(assert (=> bs!1904631 m!7919250))

(declare-fun m!7919422 () Bool)

(assert (=> bs!1904631 m!7919422))

(declare-fun m!7919424 () Bool)

(assert (=> bs!1904631 m!7919424))

(declare-fun m!7919426 () Bool)

(assert (=> bs!1904631 m!7919426))

(assert (=> b!7243718 d!2250784))

(declare-fun d!2250786 () Bool)

(declare-fun c!1345457 () Bool)

(declare-fun e!4343125 () Bool)

(assert (=> d!2250786 (= c!1345457 e!4343125)))

(declare-fun res!2938415 () Bool)

(assert (=> d!2250786 (=> (not res!2938415) (not e!4343125))))

(assert (=> d!2250786 (= res!2938415 (is-Cons!70219 (exprs!8022 lt!2581288)))))

(declare-fun e!4343127 () (Set Context!15044))

(assert (=> d!2250786 (= (derivationStepZipperUp!2436 lt!2581288 (h!76668 s1!1971)) e!4343127)))

(declare-fun b!7243816 () Bool)

(declare-fun e!4343126 () (Set Context!15044))

(assert (=> b!7243816 (= e!4343127 e!4343126)))

(declare-fun c!1345458 () Bool)

(assert (=> b!7243816 (= c!1345458 (is-Cons!70219 (exprs!8022 lt!2581288)))))

(declare-fun b!7243817 () Bool)

(declare-fun call!659692 () (Set Context!15044))

(assert (=> b!7243817 (= e!4343126 call!659692)))

(declare-fun b!7243818 () Bool)

(assert (=> b!7243818 (= e!4343126 (as set.empty (Set Context!15044)))))

(declare-fun b!7243819 () Bool)

(assert (=> b!7243819 (= e!4343127 (set.union call!659692 (derivationStepZipperUp!2436 (Context!15045 (t!384394 (exprs!8022 lt!2581288))) (h!76668 s1!1971))))))

(declare-fun b!7243820 () Bool)

(assert (=> b!7243820 (= e!4343125 (nullable!7875 (h!76667 (exprs!8022 lt!2581288))))))

(declare-fun bm!659687 () Bool)

(assert (=> bm!659687 (= call!659692 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 lt!2581288)) (Context!15045 (t!384394 (exprs!8022 lt!2581288))) (h!76668 s1!1971)))))

(assert (= (and d!2250786 res!2938415) b!7243820))

(assert (= (and d!2250786 c!1345457) b!7243819))

(assert (= (and d!2250786 (not c!1345457)) b!7243816))

(assert (= (and b!7243816 c!1345458) b!7243817))

(assert (= (and b!7243816 (not c!1345458)) b!7243818))

(assert (= (or b!7243819 b!7243817) bm!659687))

(declare-fun m!7919428 () Bool)

(assert (=> b!7243819 m!7919428))

(declare-fun m!7919430 () Bool)

(assert (=> b!7243820 m!7919430))

(declare-fun m!7919432 () Bool)

(assert (=> bm!659687 m!7919432))

(assert (=> b!7243721 d!2250786))

(declare-fun d!2250788 () Bool)

(declare-fun choose!55857 ((Set Context!15044) Int) (Set Context!15044))

(assert (=> d!2250788 (= (flatMap!2770 lt!2581281 lambda!442562) (choose!55857 lt!2581281 lambda!442562))))

(declare-fun bs!1904632 () Bool)

(assert (= bs!1904632 d!2250788))

(declare-fun m!7919434 () Bool)

(assert (=> bs!1904632 m!7919434))

(assert (=> b!7243716 d!2250788))

(declare-fun d!2250790 () Bool)

(declare-fun nullableFct!3090 (Regex!18582) Bool)

(assert (=> d!2250790 (= (nullable!7875 (h!76667 (exprs!8022 ct1!232))) (nullableFct!3090 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun bs!1904633 () Bool)

(assert (= bs!1904633 d!2250790))

(declare-fun m!7919436 () Bool)

(assert (=> bs!1904633 m!7919436))

(assert (=> b!7243716 d!2250790))

(declare-fun d!2250792 () Bool)

(declare-fun dynLambda!28670 (Int Context!15044) (Set Context!15044))

(assert (=> d!2250792 (= (flatMap!2770 lt!2581281 lambda!442562) (dynLambda!28670 lambda!442562 ct1!232))))

(declare-fun lt!2581387 () Unit!163750)

(declare-fun choose!55858 ((Set Context!15044) Context!15044 Int) Unit!163750)

(assert (=> d!2250792 (= lt!2581387 (choose!55858 lt!2581281 ct1!232 lambda!442562))))

(assert (=> d!2250792 (= lt!2581281 (set.insert ct1!232 (as set.empty (Set Context!15044))))))

(assert (=> d!2250792 (= (lemmaFlatMapOnSingletonSet!2193 lt!2581281 ct1!232 lambda!442562) lt!2581387)))

(declare-fun b_lambda!277959 () Bool)

(assert (=> (not b_lambda!277959) (not d!2250792)))

(declare-fun bs!1904634 () Bool)

(assert (= bs!1904634 d!2250792))

(assert (=> bs!1904634 m!7919212))

(declare-fun m!7919438 () Bool)

(assert (=> bs!1904634 m!7919438))

(declare-fun m!7919440 () Bool)

(assert (=> bs!1904634 m!7919440))

(assert (=> bs!1904634 m!7919224))

(assert (=> b!7243716 d!2250792))

(declare-fun d!2250794 () Bool)

(declare-fun c!1345459 () Bool)

(declare-fun e!4343128 () Bool)

(assert (=> d!2250794 (= c!1345459 e!4343128)))

(declare-fun res!2938416 () Bool)

(assert (=> d!2250794 (=> (not res!2938416) (not e!4343128))))

(assert (=> d!2250794 (= res!2938416 (is-Cons!70219 (exprs!8022 ct1!232)))))

(declare-fun e!4343130 () (Set Context!15044))

(assert (=> d!2250794 (= (derivationStepZipperUp!2436 ct1!232 (h!76668 s1!1971)) e!4343130)))

(declare-fun b!7243821 () Bool)

(declare-fun e!4343129 () (Set Context!15044))

(assert (=> b!7243821 (= e!4343130 e!4343129)))

(declare-fun c!1345460 () Bool)

(assert (=> b!7243821 (= c!1345460 (is-Cons!70219 (exprs!8022 ct1!232)))))

(declare-fun b!7243822 () Bool)

(declare-fun call!659693 () (Set Context!15044))

(assert (=> b!7243822 (= e!4343129 call!659693)))

(declare-fun b!7243823 () Bool)

(assert (=> b!7243823 (= e!4343129 (as set.empty (Set Context!15044)))))

(declare-fun b!7243824 () Bool)

(assert (=> b!7243824 (= e!4343130 (set.union call!659693 (derivationStepZipperUp!2436 (Context!15045 (t!384394 (exprs!8022 ct1!232))) (h!76668 s1!1971))))))

(declare-fun b!7243825 () Bool)

(assert (=> b!7243825 (= e!4343128 (nullable!7875 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun bm!659688 () Bool)

(assert (=> bm!659688 (= call!659693 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 ct1!232)) (Context!15045 (t!384394 (exprs!8022 ct1!232))) (h!76668 s1!1971)))))

(assert (= (and d!2250794 res!2938416) b!7243825))

(assert (= (and d!2250794 c!1345459) b!7243824))

(assert (= (and d!2250794 (not c!1345459)) b!7243821))

(assert (= (and b!7243821 c!1345460) b!7243822))

(assert (= (and b!7243821 (not c!1345460)) b!7243823))

(assert (= (or b!7243824 b!7243822) bm!659688))

(declare-fun m!7919442 () Bool)

(assert (=> b!7243824 m!7919442))

(assert (=> b!7243825 m!7919206))

(declare-fun m!7919444 () Bool)

(assert (=> bm!659688 m!7919444))

(assert (=> b!7243716 d!2250794))

(declare-fun call!659708 () (Set Context!15044))

(declare-fun call!659709 () List!70343)

(declare-fun c!1345475 () Bool)

(declare-fun c!1345474 () Bool)

(declare-fun c!1345472 () Bool)

(declare-fun bm!659701 () Bool)

(assert (=> bm!659701 (= call!659708 (derivationStepZipperDown!2606 (ite c!1345475 (regTwo!37677 (h!76667 (exprs!8022 ct1!232))) (ite c!1345474 (regTwo!37676 (h!76667 (exprs!8022 ct1!232))) (ite c!1345472 (regOne!37676 (h!76667 (exprs!8022 ct1!232))) (reg!18911 (h!76667 (exprs!8022 ct1!232)))))) (ite (or c!1345475 c!1345474) lt!2581295 (Context!15045 call!659709)) (h!76668 s1!1971)))))

(declare-fun b!7243848 () Bool)

(declare-fun e!4343148 () (Set Context!15044))

(declare-fun call!659710 () (Set Context!15044))

(assert (=> b!7243848 (= e!4343148 call!659710)))

(declare-fun b!7243849 () Bool)

(declare-fun c!1345473 () Bool)

(assert (=> b!7243849 (= c!1345473 (is-Star!18582 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun e!4343145 () (Set Context!15044))

(assert (=> b!7243849 (= e!4343145 e!4343148)))

(declare-fun b!7243850 () Bool)

(declare-fun e!4343147 () (Set Context!15044))

(assert (=> b!7243850 (= e!4343147 (set.insert lt!2581295 (as set.empty (Set Context!15044))))))

(declare-fun b!7243851 () Bool)

(declare-fun e!4343144 () (Set Context!15044))

(declare-fun call!659707 () (Set Context!15044))

(declare-fun call!659711 () (Set Context!15044))

(assert (=> b!7243851 (= e!4343144 (set.union call!659707 call!659711))))

(declare-fun d!2250796 () Bool)

(declare-fun c!1345471 () Bool)

(assert (=> d!2250796 (= c!1345471 (and (is-ElementMatch!18582 (h!76667 (exprs!8022 ct1!232))) (= (c!1345430 (h!76667 (exprs!8022 ct1!232))) (h!76668 s1!1971))))))

(assert (=> d!2250796 (= (derivationStepZipperDown!2606 (h!76667 (exprs!8022 ct1!232)) lt!2581295 (h!76668 s1!1971)) e!4343147)))

(declare-fun bm!659702 () Bool)

(assert (=> bm!659702 (= call!659711 call!659708)))

(declare-fun b!7243852 () Bool)

(assert (=> b!7243852 (= e!4343144 e!4343145)))

(assert (=> b!7243852 (= c!1345472 (is-Concat!27427 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun b!7243853 () Bool)

(declare-fun e!4343146 () (Set Context!15044))

(assert (=> b!7243853 (= e!4343147 e!4343146)))

(assert (=> b!7243853 (= c!1345475 (is-Union!18582 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun b!7243854 () Bool)

(assert (=> b!7243854 (= e!4343146 (set.union call!659707 call!659708))))

(declare-fun b!7243855 () Bool)

(declare-fun e!4343143 () Bool)

(assert (=> b!7243855 (= c!1345474 e!4343143)))

(declare-fun res!2938419 () Bool)

(assert (=> b!7243855 (=> (not res!2938419) (not e!4343143))))

(assert (=> b!7243855 (= res!2938419 (is-Concat!27427 (h!76667 (exprs!8022 ct1!232))))))

(assert (=> b!7243855 (= e!4343146 e!4343144)))

(declare-fun call!659706 () List!70343)

(declare-fun bm!659703 () Bool)

(declare-fun $colon$colon!2900 (List!70343 Regex!18582) List!70343)

(assert (=> bm!659703 (= call!659706 ($colon$colon!2900 (exprs!8022 lt!2581295) (ite (or c!1345474 c!1345472) (regTwo!37676 (h!76667 (exprs!8022 ct1!232))) (h!76667 (exprs!8022 ct1!232)))))))

(declare-fun bm!659704 () Bool)

(assert (=> bm!659704 (= call!659710 call!659711)))

(declare-fun bm!659705 () Bool)

(assert (=> bm!659705 (= call!659709 call!659706)))

(declare-fun b!7243856 () Bool)

(assert (=> b!7243856 (= e!4343145 call!659710)))

(declare-fun bm!659706 () Bool)

(assert (=> bm!659706 (= call!659707 (derivationStepZipperDown!2606 (ite c!1345475 (regOne!37677 (h!76667 (exprs!8022 ct1!232))) (regOne!37676 (h!76667 (exprs!8022 ct1!232)))) (ite c!1345475 lt!2581295 (Context!15045 call!659706)) (h!76668 s1!1971)))))

(declare-fun b!7243857 () Bool)

(assert (=> b!7243857 (= e!4343148 (as set.empty (Set Context!15044)))))

(declare-fun b!7243858 () Bool)

(assert (=> b!7243858 (= e!4343143 (nullable!7875 (regOne!37676 (h!76667 (exprs!8022 ct1!232)))))))

(assert (= (and d!2250796 c!1345471) b!7243850))

(assert (= (and d!2250796 (not c!1345471)) b!7243853))

(assert (= (and b!7243853 c!1345475) b!7243854))

(assert (= (and b!7243853 (not c!1345475)) b!7243855))

(assert (= (and b!7243855 res!2938419) b!7243858))

(assert (= (and b!7243855 c!1345474) b!7243851))

(assert (= (and b!7243855 (not c!1345474)) b!7243852))

(assert (= (and b!7243852 c!1345472) b!7243856))

(assert (= (and b!7243852 (not c!1345472)) b!7243849))

(assert (= (and b!7243849 c!1345473) b!7243848))

(assert (= (and b!7243849 (not c!1345473)) b!7243857))

(assert (= (or b!7243856 b!7243848) bm!659705))

(assert (= (or b!7243856 b!7243848) bm!659704))

(assert (= (or b!7243851 bm!659705) bm!659703))

(assert (= (or b!7243851 bm!659704) bm!659702))

(assert (= (or b!7243854 bm!659702) bm!659701))

(assert (= (or b!7243854 b!7243851) bm!659706))

(declare-fun m!7919446 () Bool)

(assert (=> bm!659701 m!7919446))

(declare-fun m!7919448 () Bool)

(assert (=> b!7243858 m!7919448))

(declare-fun m!7919450 () Bool)

(assert (=> bm!659703 m!7919450))

(declare-fun m!7919452 () Bool)

(assert (=> bm!659706 m!7919452))

(declare-fun m!7919454 () Bool)

(assert (=> b!7243850 m!7919454))

(assert (=> b!7243716 d!2250796))

(assert (=> b!7243716 d!2250784))

(declare-fun d!2250798 () Bool)

(assert (=> d!2250798 (= (flatMap!2770 lt!2581297 lambda!442562) (dynLambda!28670 lambda!442562 lt!2581291))))

(declare-fun lt!2581388 () Unit!163750)

(assert (=> d!2250798 (= lt!2581388 (choose!55858 lt!2581297 lt!2581291 lambda!442562))))

(assert (=> d!2250798 (= lt!2581297 (set.insert lt!2581291 (as set.empty (Set Context!15044))))))

(assert (=> d!2250798 (= (lemmaFlatMapOnSingletonSet!2193 lt!2581297 lt!2581291 lambda!442562) lt!2581388)))

(declare-fun b_lambda!277961 () Bool)

(assert (=> (not b_lambda!277961) (not d!2250798)))

(declare-fun bs!1904635 () Bool)

(assert (= bs!1904635 d!2250798))

(assert (=> bs!1904635 m!7919220))

(declare-fun m!7919456 () Bool)

(assert (=> bs!1904635 m!7919456))

(declare-fun m!7919458 () Bool)

(assert (=> bs!1904635 m!7919458))

(assert (=> bs!1904635 m!7919248))

(assert (=> b!7243716 d!2250798))

(declare-fun d!2250800 () Bool)

(declare-fun c!1345476 () Bool)

(declare-fun e!4343149 () Bool)

(assert (=> d!2250800 (= c!1345476 e!4343149)))

(declare-fun res!2938420 () Bool)

(assert (=> d!2250800 (=> (not res!2938420) (not e!4343149))))

(assert (=> d!2250800 (= res!2938420 (is-Cons!70219 (exprs!8022 lt!2581291)))))

(declare-fun e!4343151 () (Set Context!15044))

(assert (=> d!2250800 (= (derivationStepZipperUp!2436 lt!2581291 (h!76668 s1!1971)) e!4343151)))

(declare-fun b!7243859 () Bool)

(declare-fun e!4343150 () (Set Context!15044))

(assert (=> b!7243859 (= e!4343151 e!4343150)))

(declare-fun c!1345477 () Bool)

(assert (=> b!7243859 (= c!1345477 (is-Cons!70219 (exprs!8022 lt!2581291)))))

(declare-fun b!7243860 () Bool)

(declare-fun call!659712 () (Set Context!15044))

(assert (=> b!7243860 (= e!4343150 call!659712)))

(declare-fun b!7243861 () Bool)

(assert (=> b!7243861 (= e!4343150 (as set.empty (Set Context!15044)))))

(declare-fun b!7243862 () Bool)

(assert (=> b!7243862 (= e!4343151 (set.union call!659712 (derivationStepZipperUp!2436 (Context!15045 (t!384394 (exprs!8022 lt!2581291))) (h!76668 s1!1971))))))

(declare-fun b!7243863 () Bool)

(assert (=> b!7243863 (= e!4343149 (nullable!7875 (h!76667 (exprs!8022 lt!2581291))))))

(declare-fun bm!659707 () Bool)

(assert (=> bm!659707 (= call!659712 (derivationStepZipperDown!2606 (h!76667 (exprs!8022 lt!2581291)) (Context!15045 (t!384394 (exprs!8022 lt!2581291))) (h!76668 s1!1971)))))

(assert (= (and d!2250800 res!2938420) b!7243863))

(assert (= (and d!2250800 c!1345476) b!7243862))

(assert (= (and d!2250800 (not c!1345476)) b!7243859))

(assert (= (and b!7243859 c!1345477) b!7243860))

(assert (= (and b!7243859 (not c!1345477)) b!7243861))

(assert (= (or b!7243862 b!7243860) bm!659707))

(declare-fun m!7919460 () Bool)

(assert (=> b!7243862 m!7919460))

(declare-fun m!7919462 () Bool)

(assert (=> b!7243863 m!7919462))

(declare-fun m!7919464 () Bool)

(assert (=> bm!659707 m!7919464))

(assert (=> b!7243716 d!2250800))

(declare-fun d!2250802 () Bool)

(assert (=> d!2250802 (= (tail!14248 lt!2581280) (t!384394 lt!2581280))))

(assert (=> b!7243716 d!2250802))

(declare-fun d!2250804 () Bool)

(assert (=> d!2250804 (= (flatMap!2770 lt!2581297 lambda!442562) (choose!55857 lt!2581297 lambda!442562))))

(declare-fun bs!1904636 () Bool)

(assert (= bs!1904636 d!2250804))

(declare-fun m!7919466 () Bool)

(assert (=> bs!1904636 m!7919466))

(assert (=> b!7243716 d!2250804))

(declare-fun b!7243872 () Bool)

(declare-fun e!4343156 () List!70343)

(assert (=> b!7243872 (= e!4343156 (exprs!8022 ct2!328))))

(declare-fun b!7243875 () Bool)

(declare-fun lt!2581391 () List!70343)

(declare-fun e!4343157 () Bool)

(assert (=> b!7243875 (= e!4343157 (or (not (= (exprs!8022 ct2!328) Nil!70219)) (= lt!2581391 (exprs!8022 ct1!232))))))

(declare-fun b!7243874 () Bool)

(declare-fun res!2938426 () Bool)

(assert (=> b!7243874 (=> (not res!2938426) (not e!4343157))))

(declare-fun size!41653 (List!70343) Int)

(assert (=> b!7243874 (= res!2938426 (= (size!41653 lt!2581391) (+ (size!41653 (exprs!8022 ct1!232)) (size!41653 (exprs!8022 ct2!328)))))))

(declare-fun b!7243873 () Bool)

(assert (=> b!7243873 (= e!4343156 (Cons!70219 (h!76667 (exprs!8022 ct1!232)) (++!16448 (t!384394 (exprs!8022 ct1!232)) (exprs!8022 ct2!328))))))

(declare-fun d!2250806 () Bool)

(assert (=> d!2250806 e!4343157))

(declare-fun res!2938425 () Bool)

(assert (=> d!2250806 (=> (not res!2938425) (not e!4343157))))

(declare-fun content!14525 (List!70343) (Set Regex!18582))

(assert (=> d!2250806 (= res!2938425 (= (content!14525 lt!2581391) (set.union (content!14525 (exprs!8022 ct1!232)) (content!14525 (exprs!8022 ct2!328)))))))

(assert (=> d!2250806 (= lt!2581391 e!4343156)))

(declare-fun c!1345480 () Bool)

(assert (=> d!2250806 (= c!1345480 (is-Nil!70219 (exprs!8022 ct1!232)))))

(assert (=> d!2250806 (= (++!16448 (exprs!8022 ct1!232) (exprs!8022 ct2!328)) lt!2581391)))

(assert (= (and d!2250806 c!1345480) b!7243872))

(assert (= (and d!2250806 (not c!1345480)) b!7243873))

(assert (= (and d!2250806 res!2938425) b!7243874))

(assert (= (and b!7243874 res!2938426) b!7243875))

(declare-fun m!7919468 () Bool)

(assert (=> b!7243874 m!7919468))

(declare-fun m!7919470 () Bool)

(assert (=> b!7243874 m!7919470))

(declare-fun m!7919472 () Bool)

(assert (=> b!7243874 m!7919472))

(declare-fun m!7919474 () Bool)

(assert (=> b!7243873 m!7919474))

(declare-fun m!7919476 () Bool)

(assert (=> d!2250806 m!7919476))

(declare-fun m!7919478 () Bool)

(assert (=> d!2250806 m!7919478))

(declare-fun m!7919480 () Bool)

(assert (=> d!2250806 m!7919480))

(assert (=> b!7243725 d!2250806))

(assert (=> b!7243725 d!2250784))

(declare-fun d!2250808 () Bool)

(assert (=> d!2250808 (= (tail!14248 (exprs!8022 ct1!232)) (t!384394 (exprs!8022 ct1!232)))))

(assert (=> b!7243720 d!2250808))

(declare-fun d!2250810 () Bool)

(assert (=> d!2250810 (= (isEmpty!40455 lt!2581280) (is-Nil!70219 lt!2581280))))

(assert (=> b!7243720 d!2250810))

(declare-fun c!1345482 () Bool)

(declare-fun c!1345485 () Bool)

(declare-fun bm!659708 () Bool)

(declare-fun call!659716 () List!70343)

(declare-fun c!1345484 () Bool)

(declare-fun call!659715 () (Set Context!15044))

(assert (=> bm!659708 (= call!659715 (derivationStepZipperDown!2606 (ite c!1345485 (regTwo!37677 (h!76667 (exprs!8022 ct1!232))) (ite c!1345484 (regTwo!37676 (h!76667 (exprs!8022 ct1!232))) (ite c!1345482 (regOne!37676 (h!76667 (exprs!8022 ct1!232))) (reg!18911 (h!76667 (exprs!8022 ct1!232)))))) (ite (or c!1345485 c!1345484) lt!2581288 (Context!15045 call!659716)) (h!76668 s1!1971)))))

(declare-fun b!7243876 () Bool)

(declare-fun e!4343163 () (Set Context!15044))

(declare-fun call!659717 () (Set Context!15044))

(assert (=> b!7243876 (= e!4343163 call!659717)))

(declare-fun b!7243877 () Bool)

(declare-fun c!1345483 () Bool)

(assert (=> b!7243877 (= c!1345483 (is-Star!18582 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun e!4343160 () (Set Context!15044))

(assert (=> b!7243877 (= e!4343160 e!4343163)))

(declare-fun b!7243878 () Bool)

(declare-fun e!4343162 () (Set Context!15044))

(assert (=> b!7243878 (= e!4343162 (set.insert lt!2581288 (as set.empty (Set Context!15044))))))

(declare-fun b!7243879 () Bool)

(declare-fun e!4343159 () (Set Context!15044))

(declare-fun call!659714 () (Set Context!15044))

(declare-fun call!659718 () (Set Context!15044))

(assert (=> b!7243879 (= e!4343159 (set.union call!659714 call!659718))))

(declare-fun d!2250812 () Bool)

(declare-fun c!1345481 () Bool)

(assert (=> d!2250812 (= c!1345481 (and (is-ElementMatch!18582 (h!76667 (exprs!8022 ct1!232))) (= (c!1345430 (h!76667 (exprs!8022 ct1!232))) (h!76668 s1!1971))))))

(assert (=> d!2250812 (= (derivationStepZipperDown!2606 (h!76667 (exprs!8022 ct1!232)) lt!2581288 (h!76668 s1!1971)) e!4343162)))

(declare-fun bm!659709 () Bool)

(assert (=> bm!659709 (= call!659718 call!659715)))

(declare-fun b!7243880 () Bool)

(assert (=> b!7243880 (= e!4343159 e!4343160)))

(assert (=> b!7243880 (= c!1345482 (is-Concat!27427 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun b!7243881 () Bool)

(declare-fun e!4343161 () (Set Context!15044))

(assert (=> b!7243881 (= e!4343162 e!4343161)))

(assert (=> b!7243881 (= c!1345485 (is-Union!18582 (h!76667 (exprs!8022 ct1!232))))))

(declare-fun b!7243882 () Bool)

(assert (=> b!7243882 (= e!4343161 (set.union call!659714 call!659715))))

(declare-fun b!7243883 () Bool)

(declare-fun e!4343158 () Bool)

(assert (=> b!7243883 (= c!1345484 e!4343158)))

(declare-fun res!2938427 () Bool)

(assert (=> b!7243883 (=> (not res!2938427) (not e!4343158))))

(assert (=> b!7243883 (= res!2938427 (is-Concat!27427 (h!76667 (exprs!8022 ct1!232))))))

(assert (=> b!7243883 (= e!4343161 e!4343159)))

(declare-fun bm!659710 () Bool)

(declare-fun call!659713 () List!70343)

(assert (=> bm!659710 (= call!659713 ($colon$colon!2900 (exprs!8022 lt!2581288) (ite (or c!1345484 c!1345482) (regTwo!37676 (h!76667 (exprs!8022 ct1!232))) (h!76667 (exprs!8022 ct1!232)))))))

(declare-fun bm!659711 () Bool)

(assert (=> bm!659711 (= call!659717 call!659718)))

(declare-fun bm!659712 () Bool)

(assert (=> bm!659712 (= call!659716 call!659713)))

(declare-fun b!7243884 () Bool)

(assert (=> b!7243884 (= e!4343160 call!659717)))

(declare-fun bm!659713 () Bool)

(assert (=> bm!659713 (= call!659714 (derivationStepZipperDown!2606 (ite c!1345485 (regOne!37677 (h!76667 (exprs!8022 ct1!232))) (regOne!37676 (h!76667 (exprs!8022 ct1!232)))) (ite c!1345485 lt!2581288 (Context!15045 call!659713)) (h!76668 s1!1971)))))

(declare-fun b!7243885 () Bool)

(assert (=> b!7243885 (= e!4343163 (as set.empty (Set Context!15044)))))

(declare-fun b!7243886 () Bool)

(assert (=> b!7243886 (= e!4343158 (nullable!7875 (regOne!37676 (h!76667 (exprs!8022 ct1!232)))))))

(assert (= (and d!2250812 c!1345481) b!7243878))

(assert (= (and d!2250812 (not c!1345481)) b!7243881))

(assert (= (and b!7243881 c!1345485) b!7243882))

(assert (= (and b!7243881 (not c!1345485)) b!7243883))

(assert (= (and b!7243883 res!2938427) b!7243886))

(assert (= (and b!7243883 c!1345484) b!7243879))

(assert (= (and b!7243883 (not c!1345484)) b!7243880))

(assert (= (and b!7243880 c!1345482) b!7243884))

(assert (= (and b!7243880 (not c!1345482)) b!7243877))

(assert (= (and b!7243877 c!1345483) b!7243876))

(assert (= (and b!7243877 (not c!1345483)) b!7243885))

(assert (= (or b!7243884 b!7243876) bm!659712))

(assert (= (or b!7243884 b!7243876) bm!659711))

(assert (= (or b!7243879 bm!659712) bm!659710))

(assert (= (or b!7243879 bm!659711) bm!659709))

(assert (= (or b!7243882 bm!659709) bm!659708))

(assert (= (or b!7243882 b!7243879) bm!659713))

(declare-fun m!7919482 () Bool)

(assert (=> bm!659708 m!7919482))

(assert (=> b!7243886 m!7919448))

(declare-fun m!7919484 () Bool)

(assert (=> bm!659710 m!7919484))

(declare-fun m!7919486 () Bool)

(assert (=> bm!659713 m!7919486))

(declare-fun m!7919488 () Bool)

(assert (=> b!7243878 m!7919488))

(assert (=> b!7243720 d!2250812))

(assert (=> b!7243720 d!2250784))

(assert (=> b!7243720 d!2250800))

(declare-fun b!7243887 () Bool)

(declare-fun e!4343164 () List!70343)

(assert (=> b!7243887 (= e!4343164 (exprs!8022 ct2!328))))

(declare-fun b!7243890 () Bool)

(declare-fun lt!2581392 () List!70343)

(declare-fun e!4343165 () Bool)

(assert (=> b!7243890 (= e!4343165 (or (not (= (exprs!8022 ct2!328) Nil!70219)) (= lt!2581392 (exprs!8022 lt!2581296))))))

(declare-fun b!7243889 () Bool)

(declare-fun res!2938429 () Bool)

(assert (=> b!7243889 (=> (not res!2938429) (not e!4343165))))

(assert (=> b!7243889 (= res!2938429 (= (size!41653 lt!2581392) (+ (size!41653 (exprs!8022 lt!2581296)) (size!41653 (exprs!8022 ct2!328)))))))

(declare-fun b!7243888 () Bool)

(assert (=> b!7243888 (= e!4343164 (Cons!70219 (h!76667 (exprs!8022 lt!2581296)) (++!16448 (t!384394 (exprs!8022 lt!2581296)) (exprs!8022 ct2!328))))))

(declare-fun d!2250814 () Bool)

(assert (=> d!2250814 e!4343165))

(declare-fun res!2938428 () Bool)

(assert (=> d!2250814 (=> (not res!2938428) (not e!4343165))))

(assert (=> d!2250814 (= res!2938428 (= (content!14525 lt!2581392) (set.union (content!14525 (exprs!8022 lt!2581296)) (content!14525 (exprs!8022 ct2!328)))))))

(assert (=> d!2250814 (= lt!2581392 e!4343164)))

(declare-fun c!1345486 () Bool)

(assert (=> d!2250814 (= c!1345486 (is-Nil!70219 (exprs!8022 lt!2581296)))))

(assert (=> d!2250814 (= (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328)) lt!2581392)))

(assert (= (and d!2250814 c!1345486) b!7243887))

(assert (= (and d!2250814 (not c!1345486)) b!7243888))

(assert (= (and d!2250814 res!2938428) b!7243889))

(assert (= (and b!7243889 res!2938429) b!7243890))

(declare-fun m!7919490 () Bool)

(assert (=> b!7243889 m!7919490))

(declare-fun m!7919492 () Bool)

(assert (=> b!7243889 m!7919492))

(assert (=> b!7243889 m!7919472))

(declare-fun m!7919494 () Bool)

(assert (=> b!7243888 m!7919494))

(declare-fun m!7919496 () Bool)

(assert (=> d!2250814 m!7919496))

(declare-fun m!7919498 () Bool)

(assert (=> d!2250814 m!7919498))

(assert (=> d!2250814 m!7919480))

(assert (=> b!7243726 d!2250814))

(declare-fun d!2250816 () Bool)

(assert (=> d!2250816 (= (isEmpty!40455 (exprs!8022 ct1!232)) (is-Nil!70219 (exprs!8022 ct1!232)))))

(assert (=> b!7243726 d!2250816))

(declare-fun d!2250818 () Bool)

(assert (=> d!2250818 (forall!17427 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328)) lambda!442560)))

(declare-fun lt!2581393 () Unit!163750)

(assert (=> d!2250818 (= lt!2581393 (choose!55856 (exprs!8022 lt!2581296) (exprs!8022 ct2!328) lambda!442560))))

(assert (=> d!2250818 (forall!17427 (exprs!8022 lt!2581296) lambda!442560)))

(assert (=> d!2250818 (= (lemmaConcatPreservesForall!1391 (exprs!8022 lt!2581296) (exprs!8022 ct2!328) lambda!442560) lt!2581393)))

(declare-fun bs!1904637 () Bool)

(assert (= bs!1904637 d!2250818))

(assert (=> bs!1904637 m!7919260))

(assert (=> bs!1904637 m!7919260))

(declare-fun m!7919500 () Bool)

(assert (=> bs!1904637 m!7919500))

(declare-fun m!7919502 () Bool)

(assert (=> bs!1904637 m!7919502))

(declare-fun m!7919504 () Bool)

(assert (=> bs!1904637 m!7919504))

(assert (=> b!7243726 d!2250818))

(declare-fun d!2250820 () Bool)

(declare-fun e!4343168 () Bool)

(assert (=> d!2250820 e!4343168))

(declare-fun res!2938432 () Bool)

(assert (=> d!2250820 (=> (not res!2938432) (not e!4343168))))

(declare-fun lt!2581396 () Context!15044)

(declare-fun dynLambda!28671 (Int Context!15044) Bool)

(assert (=> d!2250820 (= res!2938432 (dynLambda!28671 lambda!442561 lt!2581396))))

(declare-fun getWitness!2134 (List!70345 Int) Context!15044)

(assert (=> d!2250820 (= lt!2581396 (getWitness!2134 (toList!11428 lt!2581286) lambda!442561))))

(assert (=> d!2250820 (exists!4283 lt!2581286 lambda!442561)))

(assert (=> d!2250820 (= (getWitness!2132 lt!2581286 lambda!442561) lt!2581396)))

(declare-fun b!7243893 () Bool)

(assert (=> b!7243893 (= e!4343168 (set.member lt!2581396 lt!2581286))))

(assert (= (and d!2250820 res!2938432) b!7243893))

(declare-fun b_lambda!277963 () Bool)

(assert (=> (not b_lambda!277963) (not d!2250820)))

(declare-fun m!7919506 () Bool)

(assert (=> d!2250820 m!7919506))

(assert (=> d!2250820 m!7919236))

(assert (=> d!2250820 m!7919236))

(declare-fun m!7919508 () Bool)

(assert (=> d!2250820 m!7919508))

(assert (=> d!2250820 m!7919230))

(declare-fun m!7919510 () Bool)

(assert (=> b!7243893 m!7919510))

(assert (=> b!7243726 d!2250820))

(declare-fun d!2250824 () Bool)

(declare-fun c!1345487 () Bool)

(assert (=> d!2250824 (= c!1345487 (isEmpty!40457 (++!16449 (t!384395 s1!1971) s2!1849)))))

(declare-fun e!4343169 () Bool)

(assert (=> d!2250824 (= (matchZipper!3492 (set.insert (Context!15045 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328))) (as set.empty (Set Context!15044))) (++!16449 (t!384395 s1!1971) s2!1849)) e!4343169)))

(declare-fun b!7243894 () Bool)

(assert (=> b!7243894 (= e!4343169 (nullableZipper!2872 (set.insert (Context!15045 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328))) (as set.empty (Set Context!15044)))))))

(declare-fun b!7243895 () Bool)

(assert (=> b!7243895 (= e!4343169 (matchZipper!3492 (derivationStepZipper!3370 (set.insert (Context!15045 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328))) (as set.empty (Set Context!15044))) (head!14859 (++!16449 (t!384395 s1!1971) s2!1849))) (tail!14250 (++!16449 (t!384395 s1!1971) s2!1849))))))

(assert (= (and d!2250824 c!1345487) b!7243894))

(assert (= (and d!2250824 (not c!1345487)) b!7243895))

(assert (=> d!2250824 m!7919258))

(declare-fun m!7919512 () Bool)

(assert (=> d!2250824 m!7919512))

(assert (=> b!7243894 m!7919262))

(declare-fun m!7919514 () Bool)

(assert (=> b!7243894 m!7919514))

(assert (=> b!7243895 m!7919258))

(declare-fun m!7919516 () Bool)

(assert (=> b!7243895 m!7919516))

(assert (=> b!7243895 m!7919262))

(assert (=> b!7243895 m!7919516))

(declare-fun m!7919518 () Bool)

(assert (=> b!7243895 m!7919518))

(assert (=> b!7243895 m!7919258))

(declare-fun m!7919520 () Bool)

(assert (=> b!7243895 m!7919520))

(assert (=> b!7243895 m!7919518))

(assert (=> b!7243895 m!7919520))

(declare-fun m!7919522 () Bool)

(assert (=> b!7243895 m!7919522))

(assert (=> b!7243726 d!2250824))

(declare-fun b!7243916 () Bool)

(declare-fun res!2938440 () Bool)

(declare-fun e!4343181 () Bool)

(assert (=> b!7243916 (=> (not res!2938440) (not e!4343181))))

(declare-fun lt!2581399 () List!70344)

(declare-fun size!41654 (List!70344) Int)

(assert (=> b!7243916 (= res!2938440 (= (size!41654 lt!2581399) (+ (size!41654 (t!384395 s1!1971)) (size!41654 s2!1849))))))

(declare-fun b!7243914 () Bool)

(declare-fun e!4343180 () List!70344)

(assert (=> b!7243914 (= e!4343180 s2!1849)))

(declare-fun b!7243915 () Bool)

(assert (=> b!7243915 (= e!4343180 (Cons!70220 (h!76668 (t!384395 s1!1971)) (++!16449 (t!384395 (t!384395 s1!1971)) s2!1849)))))

(declare-fun d!2250826 () Bool)

(assert (=> d!2250826 e!4343181))

(declare-fun res!2938439 () Bool)

(assert (=> d!2250826 (=> (not res!2938439) (not e!4343181))))

(declare-fun content!14526 (List!70344) (Set C!37438))

(assert (=> d!2250826 (= res!2938439 (= (content!14526 lt!2581399) (set.union (content!14526 (t!384395 s1!1971)) (content!14526 s2!1849))))))

(assert (=> d!2250826 (= lt!2581399 e!4343180)))

(declare-fun c!1345494 () Bool)

(assert (=> d!2250826 (= c!1345494 (is-Nil!70220 (t!384395 s1!1971)))))

(assert (=> d!2250826 (= (++!16449 (t!384395 s1!1971) s2!1849) lt!2581399)))

(declare-fun b!7243917 () Bool)

(assert (=> b!7243917 (= e!4343181 (or (not (= s2!1849 Nil!70220)) (= lt!2581399 (t!384395 s1!1971))))))

(assert (= (and d!2250826 c!1345494) b!7243914))

(assert (= (and d!2250826 (not c!1345494)) b!7243915))

(assert (= (and d!2250826 res!2938439) b!7243916))

(assert (= (and b!7243916 res!2938440) b!7243917))

(declare-fun m!7919524 () Bool)

(assert (=> b!7243916 m!7919524))

(declare-fun m!7919526 () Bool)

(assert (=> b!7243916 m!7919526))

(declare-fun m!7919528 () Bool)

(assert (=> b!7243916 m!7919528))

(declare-fun m!7919530 () Bool)

(assert (=> b!7243915 m!7919530))

(declare-fun m!7919532 () Bool)

(assert (=> d!2250826 m!7919532))

(declare-fun m!7919534 () Bool)

(assert (=> d!2250826 m!7919534))

(declare-fun m!7919536 () Bool)

(assert (=> d!2250826 m!7919536))

(assert (=> b!7243726 d!2250826))

(declare-fun bs!1904638 () Bool)

(declare-fun d!2250828 () Bool)

(assert (= bs!1904638 (and d!2250828 b!7243725)))

(declare-fun lambda!442606 () Int)

(assert (=> bs!1904638 (= lambda!442606 lambda!442560)))

(declare-fun bs!1904639 () Bool)

(assert (= bs!1904639 (and d!2250828 d!2250778)))

(assert (=> bs!1904639 (= lambda!442606 lambda!442602)))

(declare-fun bs!1904640 () Bool)

(assert (= bs!1904640 (and d!2250828 d!2250780)))

(assert (=> bs!1904640 (= lambda!442606 lambda!442603)))

(assert (=> d!2250828 (matchZipper!3492 (set.insert (Context!15045 (++!16448 (exprs!8022 lt!2581296) (exprs!8022 ct2!328))) (as set.empty (Set Context!15044))) (++!16449 (t!384395 s1!1971) s2!1849))))

(declare-fun lt!2581405 () Unit!163750)

(assert (=> d!2250828 (= lt!2581405 (lemmaConcatPreservesForall!1391 (exprs!8022 lt!2581296) (exprs!8022 ct2!328) lambda!442606))))

(declare-fun lt!2581404 () Unit!163750)

(declare-fun choose!55859 (Context!15044 Context!15044 List!70344 List!70344) Unit!163750)

(assert (=> d!2250828 (= lt!2581404 (choose!55859 lt!2581296 ct2!328 (t!384395 s1!1971) s2!1849))))

(assert (=> d!2250828 (matchZipper!3492 (set.insert lt!2581296 (as set.empty (Set Context!15044))) (t!384395 s1!1971))))

(assert (=> d!2250828 (= (lemmaConcatenateContextMatchesConcatOfStrings!355 lt!2581296 ct2!328 (t!384395 s1!1971) s2!1849) lt!2581404)))

(declare-fun bs!1904641 () Bool)

(assert (= bs!1904641 d!2250828))

(declare-fun m!7919544 () Bool)

(assert (=> bs!1904641 m!7919544))

(assert (=> bs!1904641 m!7919544))

(declare-fun m!7919546 () Bool)

(assert (=> bs!1904641 m!7919546))

(assert (=> bs!1904641 m!7919262))

(assert (=> bs!1904641 m!7919258))

(assert (=> bs!1904641 m!7919264))

(assert (=> bs!1904641 m!7919260))

(assert (=> bs!1904641 m!7919258))

(declare-fun m!7919548 () Bool)

(assert (=> bs!1904641 m!7919548))

(declare-fun m!7919550 () Bool)

(assert (=> bs!1904641 m!7919550))

(assert (=> bs!1904641 m!7919262))

(assert (=> b!7243726 d!2250828))

(assert (=> b!7243726 d!2250794))

(declare-fun b!7243927 () Bool)

(declare-fun e!4343187 () Bool)

(declare-fun tp!2035903 () Bool)

(assert (=> b!7243927 (= e!4343187 (and tp_is_empty!46629 tp!2035903))))

(assert (=> b!7243729 (= tp!2035887 e!4343187)))

(assert (= (and b!7243729 (is-Cons!70220 (t!384395 s2!1849))) b!7243927))

(declare-fun b!7243932 () Bool)

(declare-fun e!4343190 () Bool)

(declare-fun tp!2035908 () Bool)

(declare-fun tp!2035909 () Bool)

(assert (=> b!7243932 (= e!4343190 (and tp!2035908 tp!2035909))))

(assert (=> b!7243724 (= tp!2035886 e!4343190)))

(assert (= (and b!7243724 (is-Cons!70219 (exprs!8022 ct1!232))) b!7243932))

(declare-fun b!7243933 () Bool)

(declare-fun e!4343191 () Bool)

(declare-fun tp!2035910 () Bool)

(assert (=> b!7243933 (= e!4343191 (and tp_is_empty!46629 tp!2035910))))

(assert (=> b!7243727 (= tp!2035888 e!4343191)))

(assert (= (and b!7243727 (is-Cons!70220 (t!384395 s1!1971))) b!7243933))

(declare-fun b!7243934 () Bool)

(declare-fun e!4343192 () Bool)

(declare-fun tp!2035911 () Bool)

(declare-fun tp!2035912 () Bool)

(assert (=> b!7243934 (= e!4343192 (and tp!2035911 tp!2035912))))

(assert (=> b!7243722 (= tp!2035885 e!4343192)))

(assert (= (and b!7243722 (is-Cons!70219 (exprs!8022 ct2!328))) b!7243934))

(declare-fun b_lambda!277965 () Bool)

(assert (= b_lambda!277959 (or b!7243716 b_lambda!277965)))

(declare-fun bs!1904642 () Bool)

(declare-fun d!2250832 () Bool)

(assert (= bs!1904642 (and d!2250832 b!7243716)))

(assert (=> bs!1904642 (= (dynLambda!28670 lambda!442562 ct1!232) (derivationStepZipperUp!2436 ct1!232 (h!76668 s1!1971)))))

(assert (=> bs!1904642 m!7919210))

(assert (=> d!2250792 d!2250832))

(declare-fun b_lambda!277967 () Bool)

(assert (= b_lambda!277961 (or b!7243716 b_lambda!277967)))

(declare-fun bs!1904643 () Bool)

(declare-fun d!2250834 () Bool)

(assert (= bs!1904643 (and d!2250834 b!7243716)))

(assert (=> bs!1904643 (= (dynLambda!28670 lambda!442562 lt!2581291) (derivationStepZipperUp!2436 lt!2581291 (h!76668 s1!1971)))))

(assert (=> bs!1904643 m!7919218))

(assert (=> d!2250798 d!2250834))

(declare-fun b_lambda!277969 () Bool)

(assert (= b_lambda!277963 (or b!7243723 b_lambda!277969)))

(declare-fun bs!1904644 () Bool)

(declare-fun d!2250836 () Bool)

(assert (= bs!1904644 (and d!2250836 b!7243723)))

(assert (=> bs!1904644 (= (dynLambda!28671 lambda!442561 lt!2581396) (matchZipper!3492 (set.insert lt!2581396 (as set.empty (Set Context!15044))) (t!384395 s1!1971)))))

(declare-fun m!7919552 () Bool)

(assert (=> bs!1904644 m!7919552))

(assert (=> bs!1904644 m!7919552))

(declare-fun m!7919554 () Bool)

(assert (=> bs!1904644 m!7919554))

(assert (=> d!2250820 d!2250836))

(push 1)

(assert (not d!2250806))

(assert (not b!7243894))

(assert (not b!7243814))

(assert (not d!2250768))

(assert (not d!2250818))

(assert (not d!2250780))

(assert (not b!7243873))

(assert (not d!2250770))

(assert (not b!7243798))

(assert (not b!7243895))

(assert (not b!7243888))

(assert (not d!2250784))

(assert (not b_lambda!277965))

(assert (not d!2250762))

(assert (not b!7243819))

(assert (not b!7243791))

(assert (not bs!1904644))

(assert (not b!7243790))

(assert (not d!2250798))

(assert (not d!2250826))

(assert (not d!2250788))

(assert (not bm!659706))

(assert (not b!7243933))

(assert (not b!7243934))

(assert (not d!2250790))

(assert (not d!2250804))

(assert (not d!2250824))

(assert (not b!7243793))

(assert (not bs!1904643))

(assert (not b!7243815))

(assert (not b!7243792))

(assert (not b!7243916))

(assert (not d!2250760))

(assert (not d!2250776))

(assert (not b_lambda!277969))

(assert (not d!2250828))

(assert (not bm!659686))

(assert (not b!7243932))

(assert (not b_lambda!277967))

(assert (not bm!659710))

(assert (not bm!659713))

(assert (not d!2250778))

(assert (not b!7243863))

(assert tp_is_empty!46629)

(assert (not b!7243886))

(assert (not bs!1904642))

(assert (not d!2250792))

(assert (not d!2250814))

(assert (not bm!659688))

(assert (not d!2250766))

(assert (not b!7243874))

(assert (not bm!659707))

(assert (not bm!659701))

(assert (not b!7243889))

(assert (not d!2250764))

(assert (not b!7243862))

(assert (not d!2250820))

(assert (not d!2250774))

(assert (not b!7243799))

(assert (not b!7243915))

(assert (not bm!659687))

(assert (not b!7243825))

(assert (not d!2250772))

(assert (not b!7243800))

(assert (not b!7243820))

(assert (not bm!659703))

(assert (not b!7243824))

(assert (not b!7243858))

(assert (not bm!659708))

(assert (not b!7243927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

