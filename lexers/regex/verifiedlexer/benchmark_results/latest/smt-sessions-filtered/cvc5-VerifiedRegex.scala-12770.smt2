; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!705814 () Bool)

(assert start!705814)

(declare-fun b!7251514 () Bool)

(assert (=> b!7251514 true))

(declare-fun b!7251507 () Bool)

(assert (=> b!7251507 true))

(declare-fun e!4348062 () Bool)

(declare-fun e!4348063 () Bool)

(assert (=> b!7251507 (= e!4348062 e!4348063)))

(declare-fun res!2941004 () Bool)

(assert (=> b!7251507 (=> res!2941004 e!4348063)))

(declare-datatypes ((C!37570 0))(
  ( (C!37571 (val!28733 Int)) )
))
(declare-datatypes ((Regex!18648 0))(
  ( (ElementMatch!18648 (c!1347686 C!37570)) (Concat!27493 (regOne!37808 Regex!18648) (regTwo!37808 Regex!18648)) (EmptyExpr!18648) (Star!18648 (reg!18977 Regex!18648)) (EmptyLang!18648) (Union!18648 (regOne!37809 Regex!18648) (regTwo!37809 Regex!18648)) )
))
(declare-datatypes ((List!70524 0))(
  ( (Nil!70400) (Cons!70400 (h!76848 Regex!18648) (t!384580 List!70524)) )
))
(declare-datatypes ((Context!15176 0))(
  ( (Context!15177 (exprs!8088 List!70524)) )
))
(declare-fun ct1!232 () Context!15176)

(declare-fun nullable!7908 (Regex!18648) Bool)

(assert (=> b!7251507 (= res!2941004 (not (nullable!7908 (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun lt!2585264 () Context!15176)

(declare-fun lambda!444337 () Int)

(declare-fun lt!2585277 () (Set Context!15176))

(declare-datatypes ((List!70525 0))(
  ( (Nil!70401) (Cons!70401 (h!76849 C!37570) (t!384581 List!70525)) )
))
(declare-fun s1!1971 () List!70525)

(declare-fun flatMap!2813 ((Set Context!15176) Int) (Set Context!15176))

(declare-fun derivationStepZipperUp!2472 (Context!15176 C!37570) (Set Context!15176))

(assert (=> b!7251507 (= (flatMap!2813 lt!2585277 lambda!444337) (derivationStepZipperUp!2472 lt!2585264 (h!76849 s1!1971)))))

(declare-datatypes ((Unit!163882 0))(
  ( (Unit!163883) )
))
(declare-fun lt!2585265 () Unit!163882)

(declare-fun lemmaFlatMapOnSingletonSet!2217 ((Set Context!15176) Context!15176 Int) Unit!163882)

(assert (=> b!7251507 (= lt!2585265 (lemmaFlatMapOnSingletonSet!2217 lt!2585277 lt!2585264 lambda!444337))))

(declare-fun lt!2585282 () Unit!163882)

(declare-fun lambda!444335 () Int)

(declare-fun ct2!328 () Context!15176)

(declare-fun lemmaConcatPreservesForall!1455 (List!70524 List!70524 Int) Unit!163882)

(assert (=> b!7251507 (= lt!2585282 (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun lt!2585273 () (Set Context!15176))

(assert (=> b!7251507 (= (flatMap!2813 lt!2585273 lambda!444337) (derivationStepZipperUp!2472 ct1!232 (h!76849 s1!1971)))))

(declare-fun lt!2585276 () Unit!163882)

(assert (=> b!7251507 (= lt!2585276 (lemmaFlatMapOnSingletonSet!2217 lt!2585273 ct1!232 lambda!444337))))

(declare-fun lt!2585279 () (Set Context!15176))

(declare-fun lt!2585280 () Context!15176)

(declare-fun derivationStepZipperDown!2642 (Regex!18648 Context!15176 C!37570) (Set Context!15176))

(assert (=> b!7251507 (= lt!2585279 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) lt!2585280 (h!76849 s1!1971)))))

(declare-fun lt!2585263 () List!70524)

(declare-fun tail!14324 (List!70524) List!70524)

(assert (=> b!7251507 (= lt!2585280 (Context!15177 (tail!14324 lt!2585263)))))

(declare-fun b!7251508 () Bool)

(declare-fun res!2941007 () Bool)

(declare-fun e!4348054 () Bool)

(assert (=> b!7251508 (=> (not res!2941007) (not e!4348054))))

(declare-fun s2!1849 () List!70525)

(declare-fun matchZipper!3558 ((Set Context!15176) List!70525) Bool)

(assert (=> b!7251508 (= res!2941007 (matchZipper!3558 (set.insert ct2!328 (as set.empty (Set Context!15176))) s2!1849))))

(declare-fun b!7251510 () Bool)

(declare-fun inv!89631 (Context!15176) Bool)

(assert (=> b!7251510 (= e!4348063 (inv!89631 lt!2585280))))

(declare-fun lt!2585285 () Unit!163882)

(assert (=> b!7251510 (= lt!2585285 (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun b!7251511 () Bool)

(declare-fun e!4348061 () Bool)

(assert (=> b!7251511 (= e!4348061 e!4348062)))

(declare-fun res!2941009 () Bool)

(assert (=> b!7251511 (=> res!2941009 e!4348062)))

(declare-fun isEmpty!40542 (List!70524) Bool)

(assert (=> b!7251511 (= res!2941009 (isEmpty!40542 lt!2585263))))

(declare-fun lt!2585283 () Unit!163882)

(assert (=> b!7251511 (= lt!2585283 (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun lt!2585267 () (Set Context!15176))

(assert (=> b!7251511 (= lt!2585267 (derivationStepZipperUp!2472 lt!2585264 (h!76849 s1!1971)))))

(declare-fun lt!2585262 () Unit!163882)

(assert (=> b!7251511 (= lt!2585262 (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun lt!2585270 () Context!15176)

(declare-fun lt!2585271 () (Set Context!15176))

(assert (=> b!7251511 (= lt!2585271 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) lt!2585270 (h!76849 s1!1971)))))

(assert (=> b!7251511 (= lt!2585270 (Context!15177 (tail!14324 (exprs!8088 ct1!232))))))

(declare-fun b!7251512 () Bool)

(declare-fun res!2941005 () Bool)

(assert (=> b!7251512 (=> res!2941005 e!4348063)))

(declare-fun lt!2585278 () (Set Context!15176))

(declare-fun lt!2585281 () (Set Context!15176))

(assert (=> b!7251512 (= res!2941005 (not (= lt!2585278 lt!2585281)))))

(declare-fun b!7251513 () Bool)

(declare-fun res!2941006 () Bool)

(assert (=> b!7251513 (=> res!2941006 e!4348063)))

(assert (=> b!7251513 (= res!2941006 (not (= lt!2585281 (set.union lt!2585271 (derivationStepZipperUp!2472 lt!2585270 (h!76849 s1!1971))))))))

(declare-fun e!4348058 () Bool)

(declare-fun e!4348055 () Bool)

(assert (=> b!7251514 (= e!4348058 (not e!4348055))))

(declare-fun res!2941001 () Bool)

(assert (=> b!7251514 (=> res!2941001 e!4348055)))

(declare-fun lambda!444336 () Int)

(declare-fun exists!4374 ((Set Context!15176) Int) Bool)

(assert (=> b!7251514 (= res!2941001 (not (exists!4374 lt!2585278 lambda!444336)))))

(declare-datatypes ((List!70526 0))(
  ( (Nil!70402) (Cons!70402 (h!76850 Context!15176) (t!384582 List!70526)) )
))
(declare-fun lt!2585268 () List!70526)

(declare-fun exists!4375 (List!70526 Int) Bool)

(assert (=> b!7251514 (exists!4375 lt!2585268 lambda!444336)))

(declare-fun lt!2585272 () Unit!163882)

(declare-fun lemmaZipperMatchesExistsMatchingContext!751 (List!70526 List!70525) Unit!163882)

(assert (=> b!7251514 (= lt!2585272 (lemmaZipperMatchesExistsMatchingContext!751 lt!2585268 (t!384581 s1!1971)))))

(declare-fun toList!11477 ((Set Context!15176)) List!70526)

(assert (=> b!7251514 (= lt!2585268 (toList!11477 lt!2585278))))

(declare-fun b!7251515 () Bool)

(declare-fun e!4348056 () Bool)

(assert (=> b!7251515 (= e!4348054 e!4348056)))

(declare-fun res!2941003 () Bool)

(assert (=> b!7251515 (=> (not res!2941003) (not e!4348056))))

(assert (=> b!7251515 (= res!2941003 (and (not (is-Nil!70400 (exprs!8088 ct1!232))) (is-Cons!70401 s1!1971)))))

(assert (=> b!7251515 (= lt!2585277 (set.insert lt!2585264 (as set.empty (Set Context!15176))))))

(assert (=> b!7251515 (= lt!2585264 (Context!15177 lt!2585263))))

(declare-fun ++!16558 (List!70524 List!70524) List!70524)

(assert (=> b!7251515 (= lt!2585263 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)))))

(declare-fun lt!2585275 () Unit!163882)

(assert (=> b!7251515 (= lt!2585275 (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun b!7251516 () Bool)

(assert (=> b!7251516 (= e!4348056 e!4348058)))

(declare-fun res!2941010 () Bool)

(assert (=> b!7251516 (=> (not res!2941010) (not e!4348058))))

(assert (=> b!7251516 (= res!2941010 (matchZipper!3558 lt!2585278 (t!384581 s1!1971)))))

(declare-fun derivationStepZipper!3426 ((Set Context!15176) C!37570) (Set Context!15176))

(assert (=> b!7251516 (= lt!2585278 (derivationStepZipper!3426 lt!2585273 (h!76849 s1!1971)))))

(declare-fun b!7251517 () Bool)

(declare-fun e!4348059 () Bool)

(declare-fun tp_is_empty!46761 () Bool)

(declare-fun tp!2037557 () Bool)

(assert (=> b!7251517 (= e!4348059 (and tp_is_empty!46761 tp!2037557))))

(declare-fun b!7251518 () Bool)

(assert (=> b!7251518 (= e!4348055 e!4348061)))

(declare-fun res!2941002 () Bool)

(assert (=> b!7251518 (=> res!2941002 e!4348061)))

(assert (=> b!7251518 (= res!2941002 (isEmpty!40542 (exprs!8088 ct1!232)))))

(assert (=> b!7251518 (= lt!2585281 (derivationStepZipperUp!2472 ct1!232 (h!76849 s1!1971)))))

(declare-fun lt!2585266 () Unit!163882)

(declare-fun lt!2585269 () Context!15176)

(assert (=> b!7251518 (= lt!2585266 (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun ++!16559 (List!70525 List!70525) List!70525)

(assert (=> b!7251518 (matchZipper!3558 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (++!16559 (t!384581 s1!1971) s2!1849))))

(declare-fun lt!2585274 () Unit!163882)

(assert (=> b!7251518 (= lt!2585274 (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444335))))

(declare-fun lt!2585284 () Unit!163882)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!393 (Context!15176 Context!15176 List!70525 List!70525) Unit!163882)

(assert (=> b!7251518 (= lt!2585284 (lemmaConcatenateContextMatchesConcatOfStrings!393 lt!2585269 ct2!328 (t!384581 s1!1971) s2!1849))))

(declare-fun getWitness!2208 ((Set Context!15176) Int) Context!15176)

(assert (=> b!7251518 (= lt!2585269 (getWitness!2208 lt!2585278 lambda!444336))))

(declare-fun b!7251509 () Bool)

(declare-fun e!4348053 () Bool)

(declare-fun tp!2037556 () Bool)

(assert (=> b!7251509 (= e!4348053 tp!2037556)))

(declare-fun res!2941008 () Bool)

(assert (=> start!705814 (=> (not res!2941008) (not e!4348054))))

(assert (=> start!705814 (= res!2941008 (matchZipper!3558 lt!2585273 s1!1971))))

(assert (=> start!705814 (= lt!2585273 (set.insert ct1!232 (as set.empty (Set Context!15176))))))

(assert (=> start!705814 e!4348054))

(assert (=> start!705814 (and (inv!89631 ct1!232) e!4348053)))

(declare-fun e!4348060 () Bool)

(assert (=> start!705814 e!4348060))

(assert (=> start!705814 e!4348059))

(declare-fun e!4348057 () Bool)

(assert (=> start!705814 (and (inv!89631 ct2!328) e!4348057)))

(declare-fun b!7251519 () Bool)

(declare-fun tp!2037555 () Bool)

(assert (=> b!7251519 (= e!4348060 (and tp_is_empty!46761 tp!2037555))))

(declare-fun b!7251520 () Bool)

(declare-fun tp!2037558 () Bool)

(assert (=> b!7251520 (= e!4348057 tp!2037558)))

(assert (= (and start!705814 res!2941008) b!7251508))

(assert (= (and b!7251508 res!2941007) b!7251515))

(assert (= (and b!7251515 res!2941003) b!7251516))

(assert (= (and b!7251516 res!2941010) b!7251514))

(assert (= (and b!7251514 (not res!2941001)) b!7251518))

(assert (= (and b!7251518 (not res!2941002)) b!7251511))

(assert (= (and b!7251511 (not res!2941009)) b!7251507))

(assert (= (and b!7251507 (not res!2941004)) b!7251513))

(assert (= (and b!7251513 (not res!2941006)) b!7251512))

(assert (= (and b!7251512 (not res!2941005)) b!7251510))

(assert (= start!705814 b!7251509))

(assert (= (and start!705814 (is-Cons!70401 s1!1971)) b!7251519))

(assert (= (and start!705814 (is-Cons!70401 s2!1849)) b!7251517))

(assert (= start!705814 b!7251520))

(declare-fun m!7930726 () Bool)

(assert (=> b!7251510 m!7930726))

(declare-fun m!7930728 () Bool)

(assert (=> b!7251510 m!7930728))

(declare-fun m!7930730 () Bool)

(assert (=> b!7251513 m!7930730))

(declare-fun m!7930732 () Bool)

(assert (=> b!7251516 m!7930732))

(declare-fun m!7930734 () Bool)

(assert (=> b!7251516 m!7930734))

(declare-fun m!7930736 () Bool)

(assert (=> b!7251508 m!7930736))

(assert (=> b!7251508 m!7930736))

(declare-fun m!7930738 () Bool)

(assert (=> b!7251508 m!7930738))

(declare-fun m!7930740 () Bool)

(assert (=> b!7251507 m!7930740))

(declare-fun m!7930742 () Bool)

(assert (=> b!7251507 m!7930742))

(declare-fun m!7930744 () Bool)

(assert (=> b!7251507 m!7930744))

(assert (=> b!7251507 m!7930728))

(declare-fun m!7930746 () Bool)

(assert (=> b!7251507 m!7930746))

(declare-fun m!7930748 () Bool)

(assert (=> b!7251507 m!7930748))

(declare-fun m!7930750 () Bool)

(assert (=> b!7251507 m!7930750))

(declare-fun m!7930752 () Bool)

(assert (=> b!7251507 m!7930752))

(declare-fun m!7930754 () Bool)

(assert (=> b!7251507 m!7930754))

(declare-fun m!7930756 () Bool)

(assert (=> b!7251507 m!7930756))

(declare-fun m!7930758 () Bool)

(assert (=> b!7251518 m!7930758))

(declare-fun m!7930760 () Bool)

(assert (=> b!7251518 m!7930760))

(declare-fun m!7930762 () Bool)

(assert (=> b!7251518 m!7930762))

(declare-fun m!7930764 () Bool)

(assert (=> b!7251518 m!7930764))

(declare-fun m!7930766 () Bool)

(assert (=> b!7251518 m!7930766))

(declare-fun m!7930768 () Bool)

(assert (=> b!7251518 m!7930768))

(declare-fun m!7930770 () Bool)

(assert (=> b!7251518 m!7930770))

(assert (=> b!7251518 m!7930762))

(assert (=> b!7251518 m!7930750))

(assert (=> b!7251518 m!7930764))

(assert (=> b!7251518 m!7930770))

(declare-fun m!7930772 () Bool)

(assert (=> b!7251518 m!7930772))

(declare-fun m!7930774 () Bool)

(assert (=> b!7251515 m!7930774))

(declare-fun m!7930776 () Bool)

(assert (=> b!7251515 m!7930776))

(assert (=> b!7251515 m!7930728))

(declare-fun m!7930778 () Bool)

(assert (=> b!7251514 m!7930778))

(declare-fun m!7930780 () Bool)

(assert (=> b!7251514 m!7930780))

(declare-fun m!7930782 () Bool)

(assert (=> b!7251514 m!7930782))

(declare-fun m!7930784 () Bool)

(assert (=> b!7251514 m!7930784))

(declare-fun m!7930786 () Bool)

(assert (=> start!705814 m!7930786))

(declare-fun m!7930788 () Bool)

(assert (=> start!705814 m!7930788))

(declare-fun m!7930790 () Bool)

(assert (=> start!705814 m!7930790))

(declare-fun m!7930792 () Bool)

(assert (=> start!705814 m!7930792))

(assert (=> b!7251511 m!7930728))

(assert (=> b!7251511 m!7930748))

(assert (=> b!7251511 m!7930728))

(declare-fun m!7930794 () Bool)

(assert (=> b!7251511 m!7930794))

(declare-fun m!7930796 () Bool)

(assert (=> b!7251511 m!7930796))

(declare-fun m!7930798 () Bool)

(assert (=> b!7251511 m!7930798))

(push 1)

(assert (not b!7251518))

(assert (not b!7251519))

(assert (not b!7251507))

(assert (not b!7251520))

(assert (not b!7251515))

(assert (not b!7251508))

(assert (not b!7251514))

(assert (not b!7251513))

(assert (not start!705814))

(assert tp_is_empty!46761)

(assert (not b!7251517))

(assert (not b!7251511))

(assert (not b!7251509))

(assert (not b!7251516))

(assert (not b!7251510))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2254135 () Bool)

(declare-fun lt!2585360 () Bool)

(assert (=> d!2254135 (= lt!2585360 (exists!4375 (toList!11477 lt!2585278) lambda!444336))))

(declare-fun choose!56024 ((Set Context!15176) Int) Bool)

(assert (=> d!2254135 (= lt!2585360 (choose!56024 lt!2585278 lambda!444336))))

(assert (=> d!2254135 (= (exists!4374 lt!2585278 lambda!444336) lt!2585360)))

(declare-fun bs!1906382 () Bool)

(assert (= bs!1906382 d!2254135))

(assert (=> bs!1906382 m!7930784))

(assert (=> bs!1906382 m!7930784))

(declare-fun m!7930874 () Bool)

(assert (=> bs!1906382 m!7930874))

(declare-fun m!7930876 () Bool)

(assert (=> bs!1906382 m!7930876))

(assert (=> b!7251514 d!2254135))

(declare-fun bs!1906383 () Bool)

(declare-fun d!2254137 () Bool)

(assert (= bs!1906383 (and d!2254137 b!7251514)))

(declare-fun lambda!444367 () Int)

(assert (=> bs!1906383 (not (= lambda!444367 lambda!444336))))

(assert (=> d!2254137 true))

(declare-fun order!28983 () Int)

(declare-fun dynLambda!28745 (Int Int) Int)

(assert (=> d!2254137 (< (dynLambda!28745 order!28983 lambda!444336) (dynLambda!28745 order!28983 lambda!444367))))

(declare-fun forall!17495 (List!70526 Int) Bool)

(assert (=> d!2254137 (= (exists!4375 lt!2585268 lambda!444336) (not (forall!17495 lt!2585268 lambda!444367)))))

(declare-fun bs!1906384 () Bool)

(assert (= bs!1906384 d!2254137))

(declare-fun m!7930878 () Bool)

(assert (=> bs!1906384 m!7930878))

(assert (=> b!7251514 d!2254137))

(declare-fun bs!1906385 () Bool)

(declare-fun d!2254139 () Bool)

(assert (= bs!1906385 (and d!2254139 b!7251514)))

(declare-fun lambda!444370 () Int)

(assert (=> bs!1906385 (= lambda!444370 lambda!444336)))

(declare-fun bs!1906386 () Bool)

(assert (= bs!1906386 (and d!2254139 d!2254137)))

(assert (=> bs!1906386 (not (= lambda!444370 lambda!444367))))

(assert (=> d!2254139 true))

(assert (=> d!2254139 (exists!4375 lt!2585268 lambda!444370)))

(declare-fun lt!2585363 () Unit!163882)

(declare-fun choose!56025 (List!70526 List!70525) Unit!163882)

(assert (=> d!2254139 (= lt!2585363 (choose!56025 lt!2585268 (t!384581 s1!1971)))))

(declare-fun content!14613 (List!70526) (Set Context!15176))

(assert (=> d!2254139 (matchZipper!3558 (content!14613 lt!2585268) (t!384581 s1!1971))))

(assert (=> d!2254139 (= (lemmaZipperMatchesExistsMatchingContext!751 lt!2585268 (t!384581 s1!1971)) lt!2585363)))

(declare-fun bs!1906387 () Bool)

(assert (= bs!1906387 d!2254139))

(declare-fun m!7930880 () Bool)

(assert (=> bs!1906387 m!7930880))

(declare-fun m!7930882 () Bool)

(assert (=> bs!1906387 m!7930882))

(declare-fun m!7930884 () Bool)

(assert (=> bs!1906387 m!7930884))

(assert (=> bs!1906387 m!7930884))

(declare-fun m!7930886 () Bool)

(assert (=> bs!1906387 m!7930886))

(assert (=> b!7251514 d!2254139))

(declare-fun d!2254141 () Bool)

(declare-fun e!4348099 () Bool)

(assert (=> d!2254141 e!4348099))

(declare-fun res!2941043 () Bool)

(assert (=> d!2254141 (=> (not res!2941043) (not e!4348099))))

(declare-fun lt!2585366 () List!70526)

(declare-fun noDuplicate!2991 (List!70526) Bool)

(assert (=> d!2254141 (= res!2941043 (noDuplicate!2991 lt!2585366))))

(declare-fun choose!56026 ((Set Context!15176)) List!70526)

(assert (=> d!2254141 (= lt!2585366 (choose!56026 lt!2585278))))

(assert (=> d!2254141 (= (toList!11477 lt!2585278) lt!2585366)))

(declare-fun b!7251575 () Bool)

(assert (=> b!7251575 (= e!4348099 (= (content!14613 lt!2585366) lt!2585278))))

(assert (= (and d!2254141 res!2941043) b!7251575))

(declare-fun m!7930888 () Bool)

(assert (=> d!2254141 m!7930888))

(declare-fun m!7930890 () Bool)

(assert (=> d!2254141 m!7930890))

(declare-fun m!7930892 () Bool)

(assert (=> b!7251575 m!7930892))

(assert (=> b!7251514 d!2254141))

(declare-fun d!2254143 () Bool)

(declare-fun c!1347702 () Bool)

(declare-fun isEmpty!40544 (List!70525) Bool)

(assert (=> d!2254143 (= c!1347702 (isEmpty!40544 s2!1849))))

(declare-fun e!4348102 () Bool)

(assert (=> d!2254143 (= (matchZipper!3558 (set.insert ct2!328 (as set.empty (Set Context!15176))) s2!1849) e!4348102)))

(declare-fun b!7251580 () Bool)

(declare-fun nullableZipper!2914 ((Set Context!15176)) Bool)

(assert (=> b!7251580 (= e!4348102 (nullableZipper!2914 (set.insert ct2!328 (as set.empty (Set Context!15176)))))))

(declare-fun b!7251581 () Bool)

(declare-fun head!14905 (List!70525) C!37570)

(declare-fun tail!14326 (List!70525) List!70525)

(assert (=> b!7251581 (= e!4348102 (matchZipper!3558 (derivationStepZipper!3426 (set.insert ct2!328 (as set.empty (Set Context!15176))) (head!14905 s2!1849)) (tail!14326 s2!1849)))))

(assert (= (and d!2254143 c!1347702) b!7251580))

(assert (= (and d!2254143 (not c!1347702)) b!7251581))

(declare-fun m!7930894 () Bool)

(assert (=> d!2254143 m!7930894))

(assert (=> b!7251580 m!7930736))

(declare-fun m!7930896 () Bool)

(assert (=> b!7251580 m!7930896))

(declare-fun m!7930898 () Bool)

(assert (=> b!7251581 m!7930898))

(assert (=> b!7251581 m!7930736))

(assert (=> b!7251581 m!7930898))

(declare-fun m!7930900 () Bool)

(assert (=> b!7251581 m!7930900))

(declare-fun m!7930902 () Bool)

(assert (=> b!7251581 m!7930902))

(assert (=> b!7251581 m!7930900))

(assert (=> b!7251581 m!7930902))

(declare-fun m!7930904 () Bool)

(assert (=> b!7251581 m!7930904))

(assert (=> b!7251508 d!2254143))

(declare-fun d!2254145 () Bool)

(assert (=> d!2254145 (= (isEmpty!40542 (exprs!8088 ct1!232)) (is-Nil!70400 (exprs!8088 ct1!232)))))

(assert (=> b!7251518 d!2254145))

(declare-fun d!2254147 () Bool)

(declare-fun e!4348105 () Bool)

(assert (=> d!2254147 e!4348105))

(declare-fun res!2941046 () Bool)

(assert (=> d!2254147 (=> (not res!2941046) (not e!4348105))))

(declare-fun lt!2585369 () Context!15176)

(declare-fun dynLambda!28746 (Int Context!15176) Bool)

(assert (=> d!2254147 (= res!2941046 (dynLambda!28746 lambda!444336 lt!2585369))))

(declare-fun getWitness!2210 (List!70526 Int) Context!15176)

(assert (=> d!2254147 (= lt!2585369 (getWitness!2210 (toList!11477 lt!2585278) lambda!444336))))

(assert (=> d!2254147 (exists!4374 lt!2585278 lambda!444336)))

(assert (=> d!2254147 (= (getWitness!2208 lt!2585278 lambda!444336) lt!2585369)))

(declare-fun b!7251584 () Bool)

(assert (=> b!7251584 (= e!4348105 (set.member lt!2585369 lt!2585278))))

(assert (= (and d!2254147 res!2941046) b!7251584))

(declare-fun b_lambda!278499 () Bool)

(assert (=> (not b_lambda!278499) (not d!2254147)))

(declare-fun m!7930906 () Bool)

(assert (=> d!2254147 m!7930906))

(assert (=> d!2254147 m!7930784))

(assert (=> d!2254147 m!7930784))

(declare-fun m!7930908 () Bool)

(assert (=> d!2254147 m!7930908))

(assert (=> d!2254147 m!7930778))

(declare-fun m!7930910 () Bool)

(assert (=> b!7251584 m!7930910))

(assert (=> b!7251518 d!2254147))

(declare-fun b!7251593 () Bool)

(declare-fun e!4348111 () List!70525)

(assert (=> b!7251593 (= e!4348111 s2!1849)))

(declare-fun b!7251595 () Bool)

(declare-fun res!2941051 () Bool)

(declare-fun e!4348110 () Bool)

(assert (=> b!7251595 (=> (not res!2941051) (not e!4348110))))

(declare-fun lt!2585372 () List!70525)

(declare-fun size!41718 (List!70525) Int)

(assert (=> b!7251595 (= res!2941051 (= (size!41718 lt!2585372) (+ (size!41718 (t!384581 s1!1971)) (size!41718 s2!1849))))))

(declare-fun b!7251596 () Bool)

(assert (=> b!7251596 (= e!4348110 (or (not (= s2!1849 Nil!70401)) (= lt!2585372 (t!384581 s1!1971))))))

(declare-fun d!2254149 () Bool)

(assert (=> d!2254149 e!4348110))

(declare-fun res!2941052 () Bool)

(assert (=> d!2254149 (=> (not res!2941052) (not e!4348110))))

(declare-fun content!14614 (List!70525) (Set C!37570))

(assert (=> d!2254149 (= res!2941052 (= (content!14614 lt!2585372) (set.union (content!14614 (t!384581 s1!1971)) (content!14614 s2!1849))))))

(assert (=> d!2254149 (= lt!2585372 e!4348111)))

(declare-fun c!1347705 () Bool)

(assert (=> d!2254149 (= c!1347705 (is-Nil!70401 (t!384581 s1!1971)))))

(assert (=> d!2254149 (= (++!16559 (t!384581 s1!1971) s2!1849) lt!2585372)))

(declare-fun b!7251594 () Bool)

(assert (=> b!7251594 (= e!4348111 (Cons!70401 (h!76849 (t!384581 s1!1971)) (++!16559 (t!384581 (t!384581 s1!1971)) s2!1849)))))

(assert (= (and d!2254149 c!1347705) b!7251593))

(assert (= (and d!2254149 (not c!1347705)) b!7251594))

(assert (= (and d!2254149 res!2941052) b!7251595))

(assert (= (and b!7251595 res!2941051) b!7251596))

(declare-fun m!7930912 () Bool)

(assert (=> b!7251595 m!7930912))

(declare-fun m!7930914 () Bool)

(assert (=> b!7251595 m!7930914))

(declare-fun m!7930916 () Bool)

(assert (=> b!7251595 m!7930916))

(declare-fun m!7930918 () Bool)

(assert (=> d!2254149 m!7930918))

(declare-fun m!7930920 () Bool)

(assert (=> d!2254149 m!7930920))

(declare-fun m!7930922 () Bool)

(assert (=> d!2254149 m!7930922))

(declare-fun m!7930924 () Bool)

(assert (=> b!7251594 m!7930924))

(assert (=> b!7251518 d!2254149))

(declare-fun e!4348118 () (Set Context!15176))

(declare-fun b!7251608 () Bool)

(declare-fun call!660495 () (Set Context!15176))

(assert (=> b!7251608 (= e!4348118 (set.union call!660495 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 ct1!232))) (h!76849 s1!1971))))))

(declare-fun b!7251609 () Bool)

(declare-fun e!4348119 () Bool)

(assert (=> b!7251609 (= e!4348119 (nullable!7908 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660490 () Bool)

(assert (=> bm!660490 (= call!660495 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) (Context!15177 (t!384580 (exprs!8088 ct1!232))) (h!76849 s1!1971)))))

(declare-fun b!7251607 () Bool)

(declare-fun e!4348120 () (Set Context!15176))

(assert (=> b!7251607 (= e!4348120 call!660495)))

(declare-fun d!2254151 () Bool)

(declare-fun c!1347710 () Bool)

(assert (=> d!2254151 (= c!1347710 e!4348119)))

(declare-fun res!2941055 () Bool)

(assert (=> d!2254151 (=> (not res!2941055) (not e!4348119))))

(assert (=> d!2254151 (= res!2941055 (is-Cons!70400 (exprs!8088 ct1!232)))))

(assert (=> d!2254151 (= (derivationStepZipperUp!2472 ct1!232 (h!76849 s1!1971)) e!4348118)))

(declare-fun b!7251610 () Bool)

(assert (=> b!7251610 (= e!4348120 (as set.empty (Set Context!15176)))))

(declare-fun b!7251611 () Bool)

(assert (=> b!7251611 (= e!4348118 e!4348120)))

(declare-fun c!1347711 () Bool)

(assert (=> b!7251611 (= c!1347711 (is-Cons!70400 (exprs!8088 ct1!232)))))

(assert (= (and d!2254151 res!2941055) b!7251609))

(assert (= (and d!2254151 c!1347710) b!7251608))

(assert (= (and d!2254151 (not c!1347710)) b!7251611))

(assert (= (and b!7251611 c!1347711) b!7251607))

(assert (= (and b!7251611 (not c!1347711)) b!7251610))

(assert (= (or b!7251608 b!7251607) bm!660490))

(declare-fun m!7930926 () Bool)

(assert (=> b!7251608 m!7930926))

(assert (=> b!7251609 m!7930746))

(declare-fun m!7930928 () Bool)

(assert (=> bm!660490 m!7930928))

(assert (=> b!7251518 d!2254151))

(declare-fun bs!1906388 () Bool)

(declare-fun d!2254153 () Bool)

(assert (= bs!1906388 (and d!2254153 b!7251515)))

(declare-fun lambda!444373 () Int)

(assert (=> bs!1906388 (= lambda!444373 lambda!444335)))

(assert (=> d!2254153 (matchZipper!3558 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (++!16559 (t!384581 s1!1971) s2!1849))))

(declare-fun lt!2585378 () Unit!163882)

(assert (=> d!2254153 (= lt!2585378 (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444373))))

(declare-fun lt!2585377 () Unit!163882)

(declare-fun choose!56027 (Context!15176 Context!15176 List!70525 List!70525) Unit!163882)

(assert (=> d!2254153 (= lt!2585377 (choose!56027 lt!2585269 ct2!328 (t!384581 s1!1971) s2!1849))))

(assert (=> d!2254153 (matchZipper!3558 (set.insert lt!2585269 (as set.empty (Set Context!15176))) (t!384581 s1!1971))))

(assert (=> d!2254153 (= (lemmaConcatenateContextMatchesConcatOfStrings!393 lt!2585269 ct2!328 (t!384581 s1!1971) s2!1849) lt!2585377)))

(declare-fun bs!1906389 () Bool)

(assert (= bs!1906389 d!2254153))

(assert (=> bs!1906389 m!7930762))

(declare-fun m!7930930 () Bool)

(assert (=> bs!1906389 m!7930930))

(declare-fun m!7930932 () Bool)

(assert (=> bs!1906389 m!7930932))

(declare-fun m!7930934 () Bool)

(assert (=> bs!1906389 m!7930934))

(assert (=> bs!1906389 m!7930764))

(assert (=> bs!1906389 m!7930760))

(declare-fun m!7930936 () Bool)

(assert (=> bs!1906389 m!7930936))

(assert (=> bs!1906389 m!7930932))

(assert (=> bs!1906389 m!7930762))

(assert (=> bs!1906389 m!7930764))

(assert (=> bs!1906389 m!7930766))

(assert (=> b!7251518 d!2254153))

(declare-fun d!2254155 () Bool)

(declare-fun c!1347712 () Bool)

(assert (=> d!2254155 (= c!1347712 (isEmpty!40544 (++!16559 (t!384581 s1!1971) s2!1849)))))

(declare-fun e!4348121 () Bool)

(assert (=> d!2254155 (= (matchZipper!3558 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (++!16559 (t!384581 s1!1971) s2!1849)) e!4348121)))

(declare-fun b!7251612 () Bool)

(assert (=> b!7251612 (= e!4348121 (nullableZipper!2914 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176)))))))

(declare-fun b!7251613 () Bool)

(assert (=> b!7251613 (= e!4348121 (matchZipper!3558 (derivationStepZipper!3426 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849))))))

(assert (= (and d!2254155 c!1347712) b!7251612))

(assert (= (and d!2254155 (not c!1347712)) b!7251613))

(assert (=> d!2254155 m!7930764))

(declare-fun m!7930938 () Bool)

(assert (=> d!2254155 m!7930938))

(assert (=> b!7251612 m!7930762))

(declare-fun m!7930940 () Bool)

(assert (=> b!7251612 m!7930940))

(assert (=> b!7251613 m!7930764))

(declare-fun m!7930942 () Bool)

(assert (=> b!7251613 m!7930942))

(assert (=> b!7251613 m!7930762))

(assert (=> b!7251613 m!7930942))

(declare-fun m!7930944 () Bool)

(assert (=> b!7251613 m!7930944))

(assert (=> b!7251613 m!7930764))

(declare-fun m!7930946 () Bool)

(assert (=> b!7251613 m!7930946))

(assert (=> b!7251613 m!7930944))

(assert (=> b!7251613 m!7930946))

(declare-fun m!7930948 () Bool)

(assert (=> b!7251613 m!7930948))

(assert (=> b!7251518 d!2254155))

(declare-fun d!2254157 () Bool)

(declare-fun forall!17496 (List!70524 Int) Bool)

(assert (=> d!2254157 (forall!17496 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)) lambda!444335)))

(declare-fun lt!2585381 () Unit!163882)

(declare-fun choose!56028 (List!70524 List!70524 Int) Unit!163882)

(assert (=> d!2254157 (= lt!2585381 (choose!56028 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444335))))

(assert (=> d!2254157 (forall!17496 (exprs!8088 lt!2585269) lambda!444335)))

(assert (=> d!2254157 (= (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444335) lt!2585381)))

(declare-fun bs!1906390 () Bool)

(assert (= bs!1906390 d!2254157))

(assert (=> bs!1906390 m!7930760))

(assert (=> bs!1906390 m!7930760))

(declare-fun m!7930950 () Bool)

(assert (=> bs!1906390 m!7930950))

(declare-fun m!7930952 () Bool)

(assert (=> bs!1906390 m!7930952))

(declare-fun m!7930954 () Bool)

(assert (=> bs!1906390 m!7930954))

(assert (=> b!7251518 d!2254157))

(declare-fun d!2254161 () Bool)

(declare-fun e!4348126 () Bool)

(assert (=> d!2254161 e!4348126))

(declare-fun res!2941060 () Bool)

(assert (=> d!2254161 (=> (not res!2941060) (not e!4348126))))

(declare-fun lt!2585384 () List!70524)

(declare-fun content!14615 (List!70524) (Set Regex!18648))

(assert (=> d!2254161 (= res!2941060 (= (content!14615 lt!2585384) (set.union (content!14615 (exprs!8088 lt!2585269)) (content!14615 (exprs!8088 ct2!328)))))))

(declare-fun e!4348127 () List!70524)

(assert (=> d!2254161 (= lt!2585384 e!4348127)))

(declare-fun c!1347715 () Bool)

(assert (=> d!2254161 (= c!1347715 (is-Nil!70400 (exprs!8088 lt!2585269)))))

(assert (=> d!2254161 (= (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)) lt!2585384)))

(declare-fun b!7251623 () Bool)

(assert (=> b!7251623 (= e!4348127 (Cons!70400 (h!76848 (exprs!8088 lt!2585269)) (++!16558 (t!384580 (exprs!8088 lt!2585269)) (exprs!8088 ct2!328))))))

(declare-fun b!7251624 () Bool)

(declare-fun res!2941061 () Bool)

(assert (=> b!7251624 (=> (not res!2941061) (not e!4348126))))

(declare-fun size!41719 (List!70524) Int)

(assert (=> b!7251624 (= res!2941061 (= (size!41719 lt!2585384) (+ (size!41719 (exprs!8088 lt!2585269)) (size!41719 (exprs!8088 ct2!328)))))))

(declare-fun b!7251622 () Bool)

(assert (=> b!7251622 (= e!4348127 (exprs!8088 ct2!328))))

(declare-fun b!7251625 () Bool)

(assert (=> b!7251625 (= e!4348126 (or (not (= (exprs!8088 ct2!328) Nil!70400)) (= lt!2585384 (exprs!8088 lt!2585269))))))

(assert (= (and d!2254161 c!1347715) b!7251622))

(assert (= (and d!2254161 (not c!1347715)) b!7251623))

(assert (= (and d!2254161 res!2941060) b!7251624))

(assert (= (and b!7251624 res!2941061) b!7251625))

(declare-fun m!7930956 () Bool)

(assert (=> d!2254161 m!7930956))

(declare-fun m!7930958 () Bool)

(assert (=> d!2254161 m!7930958))

(declare-fun m!7930960 () Bool)

(assert (=> d!2254161 m!7930960))

(declare-fun m!7930962 () Bool)

(assert (=> b!7251623 m!7930962))

(declare-fun m!7930964 () Bool)

(assert (=> b!7251624 m!7930964))

(declare-fun m!7930966 () Bool)

(assert (=> b!7251624 m!7930966))

(declare-fun m!7930968 () Bool)

(assert (=> b!7251624 m!7930968))

(assert (=> b!7251518 d!2254161))

(declare-fun call!660496 () (Set Context!15176))

(declare-fun b!7251627 () Bool)

(declare-fun e!4348128 () (Set Context!15176))

(assert (=> b!7251627 (= e!4348128 (set.union call!660496 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (h!76849 s1!1971))))))

(declare-fun b!7251628 () Bool)

(declare-fun e!4348129 () Bool)

(assert (=> b!7251628 (= e!4348129 (nullable!7908 (h!76848 (exprs!8088 lt!2585270))))))

(declare-fun bm!660491 () Bool)

(assert (=> bm!660491 (= call!660496 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 lt!2585270)) (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (h!76849 s1!1971)))))

(declare-fun b!7251626 () Bool)

(declare-fun e!4348130 () (Set Context!15176))

(assert (=> b!7251626 (= e!4348130 call!660496)))

(declare-fun d!2254163 () Bool)

(declare-fun c!1347716 () Bool)

(assert (=> d!2254163 (= c!1347716 e!4348129)))

(declare-fun res!2941062 () Bool)

(assert (=> d!2254163 (=> (not res!2941062) (not e!4348129))))

(assert (=> d!2254163 (= res!2941062 (is-Cons!70400 (exprs!8088 lt!2585270)))))

(assert (=> d!2254163 (= (derivationStepZipperUp!2472 lt!2585270 (h!76849 s1!1971)) e!4348128)))

(declare-fun b!7251629 () Bool)

(assert (=> b!7251629 (= e!4348130 (as set.empty (Set Context!15176)))))

(declare-fun b!7251630 () Bool)

(assert (=> b!7251630 (= e!4348128 e!4348130)))

(declare-fun c!1347717 () Bool)

(assert (=> b!7251630 (= c!1347717 (is-Cons!70400 (exprs!8088 lt!2585270)))))

(assert (= (and d!2254163 res!2941062) b!7251628))

(assert (= (and d!2254163 c!1347716) b!7251627))

(assert (= (and d!2254163 (not c!1347716)) b!7251630))

(assert (= (and b!7251630 c!1347717) b!7251626))

(assert (= (and b!7251630 (not c!1347717)) b!7251629))

(assert (= (or b!7251627 b!7251626) bm!660491))

(declare-fun m!7930970 () Bool)

(assert (=> b!7251627 m!7930970))

(declare-fun m!7930972 () Bool)

(assert (=> b!7251628 m!7930972))

(declare-fun m!7930974 () Bool)

(assert (=> bm!660491 m!7930974))

(assert (=> b!7251513 d!2254163))

(declare-fun d!2254165 () Bool)

(declare-fun dynLambda!28747 (Int Context!15176) (Set Context!15176))

(assert (=> d!2254165 (= (flatMap!2813 lt!2585277 lambda!444337) (dynLambda!28747 lambda!444337 lt!2585264))))

(declare-fun lt!2585387 () Unit!163882)

(declare-fun choose!56029 ((Set Context!15176) Context!15176 Int) Unit!163882)

(assert (=> d!2254165 (= lt!2585387 (choose!56029 lt!2585277 lt!2585264 lambda!444337))))

(assert (=> d!2254165 (= lt!2585277 (set.insert lt!2585264 (as set.empty (Set Context!15176))))))

(assert (=> d!2254165 (= (lemmaFlatMapOnSingletonSet!2217 lt!2585277 lt!2585264 lambda!444337) lt!2585387)))

(declare-fun b_lambda!278501 () Bool)

(assert (=> (not b_lambda!278501) (not d!2254165)))

(declare-fun bs!1906391 () Bool)

(assert (= bs!1906391 d!2254165))

(assert (=> bs!1906391 m!7930744))

(declare-fun m!7930976 () Bool)

(assert (=> bs!1906391 m!7930976))

(declare-fun m!7930978 () Bool)

(assert (=> bs!1906391 m!7930978))

(assert (=> bs!1906391 m!7930774))

(assert (=> b!7251507 d!2254165))

(declare-fun d!2254167 () Bool)

(declare-fun choose!56030 ((Set Context!15176) Int) (Set Context!15176))

(assert (=> d!2254167 (= (flatMap!2813 lt!2585277 lambda!444337) (choose!56030 lt!2585277 lambda!444337))))

(declare-fun bs!1906392 () Bool)

(assert (= bs!1906392 d!2254167))

(declare-fun m!7930980 () Bool)

(assert (=> bs!1906392 m!7930980))

(assert (=> b!7251507 d!2254167))

(declare-fun d!2254169 () Bool)

(assert (=> d!2254169 (= (flatMap!2813 lt!2585273 lambda!444337) (dynLambda!28747 lambda!444337 ct1!232))))

(declare-fun lt!2585388 () Unit!163882)

(assert (=> d!2254169 (= lt!2585388 (choose!56029 lt!2585273 ct1!232 lambda!444337))))

(assert (=> d!2254169 (= lt!2585273 (set.insert ct1!232 (as set.empty (Set Context!15176))))))

(assert (=> d!2254169 (= (lemmaFlatMapOnSingletonSet!2217 lt!2585273 ct1!232 lambda!444337) lt!2585388)))

(declare-fun b_lambda!278503 () Bool)

(assert (=> (not b_lambda!278503) (not d!2254169)))

(declare-fun bs!1906393 () Bool)

(assert (= bs!1906393 d!2254169))

(assert (=> bs!1906393 m!7930752))

(declare-fun m!7930982 () Bool)

(assert (=> bs!1906393 m!7930982))

(declare-fun m!7930984 () Bool)

(assert (=> bs!1906393 m!7930984))

(assert (=> bs!1906393 m!7930788))

(assert (=> b!7251507 d!2254169))

(declare-fun b!7251668 () Bool)

(declare-fun e!4348154 () (Set Context!15176))

(declare-fun call!660515 () (Set Context!15176))

(declare-fun call!660516 () (Set Context!15176))

(assert (=> b!7251668 (= e!4348154 (set.union call!660515 call!660516))))

(declare-fun bm!660507 () Bool)

(declare-fun call!660512 () List!70524)

(declare-fun call!660517 () List!70524)

(assert (=> bm!660507 (= call!660512 call!660517)))

(declare-fun call!660514 () (Set Context!15176))

(declare-fun c!1347734 () Bool)

(declare-fun c!1347736 () Bool)

(declare-fun bm!660508 () Bool)

(declare-fun c!1347738 () Bool)

(assert (=> bm!660508 (= call!660514 (derivationStepZipperDown!2642 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))) (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512)) (h!76849 s1!1971)))))

(declare-fun b!7251669 () Bool)

(declare-fun e!4348155 () (Set Context!15176))

(assert (=> b!7251669 (= e!4348155 (set.union call!660514 call!660515))))

(declare-fun bm!660509 () Bool)

(declare-fun $colon$colon!2918 (List!70524 Regex!18648) List!70524)

(assert (=> bm!660509 (= call!660517 ($colon$colon!2918 (exprs!8088 lt!2585280) (ite (or c!1347738 c!1347736) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun b!7251671 () Bool)

(declare-fun e!4348153 () (Set Context!15176))

(assert (=> b!7251671 (= e!4348154 e!4348153)))

(assert (=> b!7251671 (= c!1347736 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660510 () Bool)

(assert (=> bm!660510 (= call!660515 (derivationStepZipperDown!2642 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (ite c!1347734 lt!2585280 (Context!15177 call!660517)) (h!76849 s1!1971)))))

(declare-fun b!7251672 () Bool)

(declare-fun c!1347737 () Bool)

(assert (=> b!7251672 (= c!1347737 (is-Star!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun e!4348152 () (Set Context!15176))

(assert (=> b!7251672 (= e!4348153 e!4348152)))

(declare-fun b!7251673 () Bool)

(declare-fun e!4348156 () Bool)

(assert (=> b!7251673 (= c!1347738 e!4348156)))

(declare-fun res!2941068 () Bool)

(assert (=> b!7251673 (=> (not res!2941068) (not e!4348156))))

(assert (=> b!7251673 (= res!2941068 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(assert (=> b!7251673 (= e!4348155 e!4348154)))

(declare-fun b!7251674 () Bool)

(declare-fun call!660513 () (Set Context!15176))

(assert (=> b!7251674 (= e!4348153 call!660513)))

(declare-fun b!7251675 () Bool)

(declare-fun e!4348157 () (Set Context!15176))

(assert (=> b!7251675 (= e!4348157 (set.insert lt!2585280 (as set.empty (Set Context!15176))))))

(declare-fun b!7251676 () Bool)

(assert (=> b!7251676 (= e!4348156 (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun bm!660511 () Bool)

(assert (=> bm!660511 (= call!660516 call!660514)))

(declare-fun b!7251677 () Bool)

(assert (=> b!7251677 (= e!4348152 (as set.empty (Set Context!15176)))))

(declare-fun b!7251678 () Bool)

(assert (=> b!7251678 (= e!4348157 e!4348155)))

(assert (=> b!7251678 (= c!1347734 (is-Union!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660512 () Bool)

(assert (=> bm!660512 (= call!660513 call!660516)))

(declare-fun b!7251670 () Bool)

(assert (=> b!7251670 (= e!4348152 call!660513)))

(declare-fun d!2254171 () Bool)

(declare-fun c!1347735 () Bool)

(assert (=> d!2254171 (= c!1347735 (and (is-ElementMatch!18648 (h!76848 (exprs!8088 ct1!232))) (= (c!1347686 (h!76848 (exprs!8088 ct1!232))) (h!76849 s1!1971))))))

(assert (=> d!2254171 (= (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) lt!2585280 (h!76849 s1!1971)) e!4348157)))

(assert (= (and d!2254171 c!1347735) b!7251675))

(assert (= (and d!2254171 (not c!1347735)) b!7251678))

(assert (= (and b!7251678 c!1347734) b!7251669))

(assert (= (and b!7251678 (not c!1347734)) b!7251673))

(assert (= (and b!7251673 res!2941068) b!7251676))

(assert (= (and b!7251673 c!1347738) b!7251668))

(assert (= (and b!7251673 (not c!1347738)) b!7251671))

(assert (= (and b!7251671 c!1347736) b!7251674))

(assert (= (and b!7251671 (not c!1347736)) b!7251672))

(assert (= (and b!7251672 c!1347737) b!7251670))

(assert (= (and b!7251672 (not c!1347737)) b!7251677))

(assert (= (or b!7251674 b!7251670) bm!660507))

(assert (= (or b!7251674 b!7251670) bm!660512))

(assert (= (or b!7251668 bm!660507) bm!660509))

(assert (= (or b!7251668 bm!660512) bm!660511))

(assert (= (or b!7251669 b!7251668) bm!660510))

(assert (= (or b!7251669 bm!660511) bm!660508))

(declare-fun m!7930998 () Bool)

(assert (=> bm!660508 m!7930998))

(declare-fun m!7931000 () Bool)

(assert (=> b!7251676 m!7931000))

(declare-fun m!7931002 () Bool)

(assert (=> b!7251675 m!7931002))

(declare-fun m!7931004 () Bool)

(assert (=> bm!660510 m!7931004))

(declare-fun m!7931006 () Bool)

(assert (=> bm!660509 m!7931006))

(assert (=> b!7251507 d!2254171))

(declare-fun d!2254177 () Bool)

(assert (=> d!2254177 (= (tail!14324 lt!2585263) (t!384580 lt!2585263))))

(assert (=> b!7251507 d!2254177))

(declare-fun b!7251680 () Bool)

(declare-fun call!660518 () (Set Context!15176))

(declare-fun e!4348158 () (Set Context!15176))

(assert (=> b!7251680 (= e!4348158 (set.union call!660518 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (h!76849 s1!1971))))))

(declare-fun b!7251681 () Bool)

(declare-fun e!4348159 () Bool)

(assert (=> b!7251681 (= e!4348159 (nullable!7908 (h!76848 (exprs!8088 lt!2585264))))))

(declare-fun bm!660513 () Bool)

(assert (=> bm!660513 (= call!660518 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 lt!2585264)) (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (h!76849 s1!1971)))))

(declare-fun b!7251679 () Bool)

(declare-fun e!4348160 () (Set Context!15176))

(assert (=> b!7251679 (= e!4348160 call!660518)))

(declare-fun d!2254179 () Bool)

(declare-fun c!1347739 () Bool)

(assert (=> d!2254179 (= c!1347739 e!4348159)))

(declare-fun res!2941069 () Bool)

(assert (=> d!2254179 (=> (not res!2941069) (not e!4348159))))

(assert (=> d!2254179 (= res!2941069 (is-Cons!70400 (exprs!8088 lt!2585264)))))

(assert (=> d!2254179 (= (derivationStepZipperUp!2472 lt!2585264 (h!76849 s1!1971)) e!4348158)))

(declare-fun b!7251682 () Bool)

(assert (=> b!7251682 (= e!4348160 (as set.empty (Set Context!15176)))))

(declare-fun b!7251683 () Bool)

(assert (=> b!7251683 (= e!4348158 e!4348160)))

(declare-fun c!1347740 () Bool)

(assert (=> b!7251683 (= c!1347740 (is-Cons!70400 (exprs!8088 lt!2585264)))))

(assert (= (and d!2254179 res!2941069) b!7251681))

(assert (= (and d!2254179 c!1347739) b!7251680))

(assert (= (and d!2254179 (not c!1347739)) b!7251683))

(assert (= (and b!7251683 c!1347740) b!7251679))

(assert (= (and b!7251683 (not c!1347740)) b!7251682))

(assert (= (or b!7251680 b!7251679) bm!660513))

(declare-fun m!7931008 () Bool)

(assert (=> b!7251680 m!7931008))

(declare-fun m!7931010 () Bool)

(assert (=> b!7251681 m!7931010))

(declare-fun m!7931012 () Bool)

(assert (=> bm!660513 m!7931012))

(assert (=> b!7251507 d!2254179))

(declare-fun d!2254181 () Bool)

(assert (=> d!2254181 (= (flatMap!2813 lt!2585273 lambda!444337) (choose!56030 lt!2585273 lambda!444337))))

(declare-fun bs!1906395 () Bool)

(assert (= bs!1906395 d!2254181))

(declare-fun m!7931014 () Bool)

(assert (=> bs!1906395 m!7931014))

(assert (=> b!7251507 d!2254181))

(assert (=> b!7251507 d!2254151))

(declare-fun d!2254183 () Bool)

(declare-fun nullableFct!3103 (Regex!18648) Bool)

(assert (=> d!2254183 (= (nullable!7908 (h!76848 (exprs!8088 ct1!232))) (nullableFct!3103 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bs!1906396 () Bool)

(assert (= bs!1906396 d!2254183))

(declare-fun m!7931016 () Bool)

(assert (=> bs!1906396 m!7931016))

(assert (=> b!7251507 d!2254183))

(declare-fun d!2254185 () Bool)

(assert (=> d!2254185 (forall!17496 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)) lambda!444335)))

(declare-fun lt!2585392 () Unit!163882)

(assert (=> d!2254185 (= lt!2585392 (choose!56028 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335))))

(assert (=> d!2254185 (forall!17496 (exprs!8088 ct1!232) lambda!444335)))

(assert (=> d!2254185 (= (lemmaConcatPreservesForall!1455 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335) lt!2585392)))

(declare-fun bs!1906397 () Bool)

(assert (= bs!1906397 d!2254185))

(assert (=> bs!1906397 m!7930776))

(assert (=> bs!1906397 m!7930776))

(declare-fun m!7931018 () Bool)

(assert (=> bs!1906397 m!7931018))

(declare-fun m!7931020 () Bool)

(assert (=> bs!1906397 m!7931020))

(declare-fun m!7931022 () Bool)

(assert (=> bs!1906397 m!7931022))

(assert (=> b!7251507 d!2254185))

(declare-fun d!2254187 () Bool)

(declare-fun c!1347741 () Bool)

(assert (=> d!2254187 (= c!1347741 (isEmpty!40544 s1!1971))))

(declare-fun e!4348161 () Bool)

(assert (=> d!2254187 (= (matchZipper!3558 lt!2585273 s1!1971) e!4348161)))

(declare-fun b!7251684 () Bool)

(assert (=> b!7251684 (= e!4348161 (nullableZipper!2914 lt!2585273))))

(declare-fun b!7251685 () Bool)

(assert (=> b!7251685 (= e!4348161 (matchZipper!3558 (derivationStepZipper!3426 lt!2585273 (head!14905 s1!1971)) (tail!14326 s1!1971)))))

(assert (= (and d!2254187 c!1347741) b!7251684))

(assert (= (and d!2254187 (not c!1347741)) b!7251685))

(declare-fun m!7931024 () Bool)

(assert (=> d!2254187 m!7931024))

(declare-fun m!7931026 () Bool)

(assert (=> b!7251684 m!7931026))

(declare-fun m!7931028 () Bool)

(assert (=> b!7251685 m!7931028))

(assert (=> b!7251685 m!7931028))

(declare-fun m!7931030 () Bool)

(assert (=> b!7251685 m!7931030))

(declare-fun m!7931032 () Bool)

(assert (=> b!7251685 m!7931032))

(assert (=> b!7251685 m!7931030))

(assert (=> b!7251685 m!7931032))

(declare-fun m!7931034 () Bool)

(assert (=> b!7251685 m!7931034))

(assert (=> start!705814 d!2254187))

(declare-fun bs!1906398 () Bool)

(declare-fun d!2254189 () Bool)

(assert (= bs!1906398 (and d!2254189 b!7251515)))

(declare-fun lambda!444376 () Int)

(assert (=> bs!1906398 (= lambda!444376 lambda!444335)))

(declare-fun bs!1906399 () Bool)

(assert (= bs!1906399 (and d!2254189 d!2254153)))

(assert (=> bs!1906399 (= lambda!444376 lambda!444373)))

(assert (=> d!2254189 (= (inv!89631 ct1!232) (forall!17496 (exprs!8088 ct1!232) lambda!444376))))

(declare-fun bs!1906400 () Bool)

(assert (= bs!1906400 d!2254189))

(declare-fun m!7931036 () Bool)

(assert (=> bs!1906400 m!7931036))

(assert (=> start!705814 d!2254189))

(declare-fun bs!1906401 () Bool)

(declare-fun d!2254191 () Bool)

(assert (= bs!1906401 (and d!2254191 b!7251515)))

(declare-fun lambda!444377 () Int)

(assert (=> bs!1906401 (= lambda!444377 lambda!444335)))

(declare-fun bs!1906402 () Bool)

(assert (= bs!1906402 (and d!2254191 d!2254153)))

(assert (=> bs!1906402 (= lambda!444377 lambda!444373)))

(declare-fun bs!1906403 () Bool)

(assert (= bs!1906403 (and d!2254191 d!2254189)))

(assert (=> bs!1906403 (= lambda!444377 lambda!444376)))

(assert (=> d!2254191 (= (inv!89631 ct2!328) (forall!17496 (exprs!8088 ct2!328) lambda!444377))))

(declare-fun bs!1906404 () Bool)

(assert (= bs!1906404 d!2254191))

(declare-fun m!7931038 () Bool)

(assert (=> bs!1906404 m!7931038))

(assert (=> start!705814 d!2254191))

(declare-fun d!2254193 () Bool)

(declare-fun c!1347742 () Bool)

(assert (=> d!2254193 (= c!1347742 (isEmpty!40544 (t!384581 s1!1971)))))

(declare-fun e!4348162 () Bool)

(assert (=> d!2254193 (= (matchZipper!3558 lt!2585278 (t!384581 s1!1971)) e!4348162)))

(declare-fun b!7251686 () Bool)

(assert (=> b!7251686 (= e!4348162 (nullableZipper!2914 lt!2585278))))

(declare-fun b!7251687 () Bool)

(assert (=> b!7251687 (= e!4348162 (matchZipper!3558 (derivationStepZipper!3426 lt!2585278 (head!14905 (t!384581 s1!1971))) (tail!14326 (t!384581 s1!1971))))))

(assert (= (and d!2254193 c!1347742) b!7251686))

(assert (= (and d!2254193 (not c!1347742)) b!7251687))

(declare-fun m!7931040 () Bool)

(assert (=> d!2254193 m!7931040))

(declare-fun m!7931042 () Bool)

(assert (=> b!7251686 m!7931042))

(declare-fun m!7931044 () Bool)

(assert (=> b!7251687 m!7931044))

(assert (=> b!7251687 m!7931044))

(declare-fun m!7931046 () Bool)

(assert (=> b!7251687 m!7931046))

(declare-fun m!7931048 () Bool)

(assert (=> b!7251687 m!7931048))

(assert (=> b!7251687 m!7931046))

(assert (=> b!7251687 m!7931048))

(declare-fun m!7931050 () Bool)

(assert (=> b!7251687 m!7931050))

(assert (=> b!7251516 d!2254193))

(declare-fun bs!1906405 () Bool)

(declare-fun d!2254195 () Bool)

(assert (= bs!1906405 (and d!2254195 b!7251507)))

(declare-fun lambda!444380 () Int)

(assert (=> bs!1906405 (= lambda!444380 lambda!444337)))

(assert (=> d!2254195 true))

(assert (=> d!2254195 (= (derivationStepZipper!3426 lt!2585273 (h!76849 s1!1971)) (flatMap!2813 lt!2585273 lambda!444380))))

(declare-fun bs!1906406 () Bool)

(assert (= bs!1906406 d!2254195))

(declare-fun m!7931052 () Bool)

(assert (=> bs!1906406 m!7931052))

(assert (=> b!7251516 d!2254195))

(declare-fun d!2254197 () Bool)

(assert (=> d!2254197 (= (tail!14324 (exprs!8088 ct1!232)) (t!384580 (exprs!8088 ct1!232)))))

(assert (=> b!7251511 d!2254197))

(assert (=> b!7251511 d!2254179))

(assert (=> b!7251511 d!2254185))

(declare-fun b!7251690 () Bool)

(declare-fun e!4348165 () (Set Context!15176))

(declare-fun call!660522 () (Set Context!15176))

(declare-fun call!660523 () (Set Context!15176))

(assert (=> b!7251690 (= e!4348165 (set.union call!660522 call!660523))))

(declare-fun bm!660514 () Bool)

(declare-fun call!660519 () List!70524)

(declare-fun call!660524 () List!70524)

(assert (=> bm!660514 (= call!660519 call!660524)))

(declare-fun c!1347745 () Bool)

(declare-fun c!1347749 () Bool)

(declare-fun call!660521 () (Set Context!15176))

(declare-fun c!1347747 () Bool)

(declare-fun bm!660515 () Bool)

(assert (=> bm!660515 (= call!660521 (derivationStepZipperDown!2642 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))) (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519)) (h!76849 s1!1971)))))

(declare-fun b!7251691 () Bool)

(declare-fun e!4348166 () (Set Context!15176))

(assert (=> b!7251691 (= e!4348166 (set.union call!660521 call!660522))))

(declare-fun bm!660516 () Bool)

(assert (=> bm!660516 (= call!660524 ($colon$colon!2918 (exprs!8088 lt!2585270) (ite (or c!1347749 c!1347747) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun b!7251693 () Bool)

(declare-fun e!4348164 () (Set Context!15176))

(assert (=> b!7251693 (= e!4348165 e!4348164)))

(assert (=> b!7251693 (= c!1347747 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660517 () Bool)

(assert (=> bm!660517 (= call!660522 (derivationStepZipperDown!2642 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (ite c!1347745 lt!2585270 (Context!15177 call!660524)) (h!76849 s1!1971)))))

(declare-fun b!7251694 () Bool)

(declare-fun c!1347748 () Bool)

(assert (=> b!7251694 (= c!1347748 (is-Star!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun e!4348163 () (Set Context!15176))

(assert (=> b!7251694 (= e!4348164 e!4348163)))

(declare-fun b!7251695 () Bool)

(declare-fun e!4348167 () Bool)

(assert (=> b!7251695 (= c!1347749 e!4348167)))

(declare-fun res!2941070 () Bool)

(assert (=> b!7251695 (=> (not res!2941070) (not e!4348167))))

(assert (=> b!7251695 (= res!2941070 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(assert (=> b!7251695 (= e!4348166 e!4348165)))

(declare-fun b!7251696 () Bool)

(declare-fun call!660520 () (Set Context!15176))

(assert (=> b!7251696 (= e!4348164 call!660520)))

(declare-fun b!7251697 () Bool)

(declare-fun e!4348168 () (Set Context!15176))

(assert (=> b!7251697 (= e!4348168 (set.insert lt!2585270 (as set.empty (Set Context!15176))))))

(declare-fun b!7251698 () Bool)

(assert (=> b!7251698 (= e!4348167 (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun bm!660518 () Bool)

(assert (=> bm!660518 (= call!660523 call!660521)))

(declare-fun b!7251699 () Bool)

(assert (=> b!7251699 (= e!4348163 (as set.empty (Set Context!15176)))))

(declare-fun b!7251700 () Bool)

(assert (=> b!7251700 (= e!4348168 e!4348166)))

(assert (=> b!7251700 (= c!1347745 (is-Union!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660519 () Bool)

(assert (=> bm!660519 (= call!660520 call!660523)))

(declare-fun b!7251692 () Bool)

(assert (=> b!7251692 (= e!4348163 call!660520)))

(declare-fun d!2254199 () Bool)

(declare-fun c!1347746 () Bool)

(assert (=> d!2254199 (= c!1347746 (and (is-ElementMatch!18648 (h!76848 (exprs!8088 ct1!232))) (= (c!1347686 (h!76848 (exprs!8088 ct1!232))) (h!76849 s1!1971))))))

(assert (=> d!2254199 (= (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) lt!2585270 (h!76849 s1!1971)) e!4348168)))

(assert (= (and d!2254199 c!1347746) b!7251697))

(assert (= (and d!2254199 (not c!1347746)) b!7251700))

(assert (= (and b!7251700 c!1347745) b!7251691))

(assert (= (and b!7251700 (not c!1347745)) b!7251695))

(assert (= (and b!7251695 res!2941070) b!7251698))

(assert (= (and b!7251695 c!1347749) b!7251690))

(assert (= (and b!7251695 (not c!1347749)) b!7251693))

(assert (= (and b!7251693 c!1347747) b!7251696))

(assert (= (and b!7251693 (not c!1347747)) b!7251694))

(assert (= (and b!7251694 c!1347748) b!7251692))

(assert (= (and b!7251694 (not c!1347748)) b!7251699))

(assert (= (or b!7251696 b!7251692) bm!660514))

(assert (= (or b!7251696 b!7251692) bm!660519))

(assert (= (or b!7251690 bm!660514) bm!660516))

(assert (= (or b!7251690 bm!660519) bm!660518))

(assert (= (or b!7251691 b!7251690) bm!660517))

(assert (= (or b!7251691 bm!660518) bm!660515))

(declare-fun m!7931054 () Bool)

(assert (=> bm!660515 m!7931054))

(assert (=> b!7251698 m!7931000))

(declare-fun m!7931056 () Bool)

(assert (=> b!7251697 m!7931056))

(declare-fun m!7931058 () Bool)

(assert (=> bm!660517 m!7931058))

(declare-fun m!7931060 () Bool)

(assert (=> bm!660516 m!7931060))

(assert (=> b!7251511 d!2254199))

(declare-fun d!2254201 () Bool)

(assert (=> d!2254201 (= (isEmpty!40542 lt!2585263) (is-Nil!70400 lt!2585263))))

(assert (=> b!7251511 d!2254201))

(declare-fun bs!1906407 () Bool)

(declare-fun d!2254203 () Bool)

(assert (= bs!1906407 (and d!2254203 b!7251515)))

(declare-fun lambda!444381 () Int)

(assert (=> bs!1906407 (= lambda!444381 lambda!444335)))

(declare-fun bs!1906408 () Bool)

(assert (= bs!1906408 (and d!2254203 d!2254153)))

(assert (=> bs!1906408 (= lambda!444381 lambda!444373)))

(declare-fun bs!1906409 () Bool)

(assert (= bs!1906409 (and d!2254203 d!2254189)))

(assert (=> bs!1906409 (= lambda!444381 lambda!444376)))

(declare-fun bs!1906410 () Bool)

(assert (= bs!1906410 (and d!2254203 d!2254191)))

(assert (=> bs!1906410 (= lambda!444381 lambda!444377)))

(assert (=> d!2254203 (= (inv!89631 lt!2585280) (forall!17496 (exprs!8088 lt!2585280) lambda!444381))))

(declare-fun bs!1906411 () Bool)

(assert (= bs!1906411 d!2254203))

(declare-fun m!7931062 () Bool)

(assert (=> bs!1906411 m!7931062))

(assert (=> b!7251510 d!2254203))

(assert (=> b!7251510 d!2254185))

(declare-fun d!2254205 () Bool)

(declare-fun e!4348169 () Bool)

(assert (=> d!2254205 e!4348169))

(declare-fun res!2941071 () Bool)

(assert (=> d!2254205 (=> (not res!2941071) (not e!4348169))))

(declare-fun lt!2585393 () List!70524)

(assert (=> d!2254205 (= res!2941071 (= (content!14615 lt!2585393) (set.union (content!14615 (exprs!8088 ct1!232)) (content!14615 (exprs!8088 ct2!328)))))))

(declare-fun e!4348170 () List!70524)

(assert (=> d!2254205 (= lt!2585393 e!4348170)))

(declare-fun c!1347750 () Bool)

(assert (=> d!2254205 (= c!1347750 (is-Nil!70400 (exprs!8088 ct1!232)))))

(assert (=> d!2254205 (= (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)) lt!2585393)))

(declare-fun b!7251702 () Bool)

(assert (=> b!7251702 (= e!4348170 (Cons!70400 (h!76848 (exprs!8088 ct1!232)) (++!16558 (t!384580 (exprs!8088 ct1!232)) (exprs!8088 ct2!328))))))

(declare-fun b!7251703 () Bool)

(declare-fun res!2941072 () Bool)

(assert (=> b!7251703 (=> (not res!2941072) (not e!4348169))))

(assert (=> b!7251703 (= res!2941072 (= (size!41719 lt!2585393) (+ (size!41719 (exprs!8088 ct1!232)) (size!41719 (exprs!8088 ct2!328)))))))

(declare-fun b!7251701 () Bool)

(assert (=> b!7251701 (= e!4348170 (exprs!8088 ct2!328))))

(declare-fun b!7251704 () Bool)

(assert (=> b!7251704 (= e!4348169 (or (not (= (exprs!8088 ct2!328) Nil!70400)) (= lt!2585393 (exprs!8088 ct1!232))))))

(assert (= (and d!2254205 c!1347750) b!7251701))

(assert (= (and d!2254205 (not c!1347750)) b!7251702))

(assert (= (and d!2254205 res!2941071) b!7251703))

(assert (= (and b!7251703 res!2941072) b!7251704))

(declare-fun m!7931064 () Bool)

(assert (=> d!2254205 m!7931064))

(declare-fun m!7931066 () Bool)

(assert (=> d!2254205 m!7931066))

(assert (=> d!2254205 m!7930960))

(declare-fun m!7931068 () Bool)

(assert (=> b!7251702 m!7931068))

(declare-fun m!7931070 () Bool)

(assert (=> b!7251703 m!7931070))

(declare-fun m!7931072 () Bool)

(assert (=> b!7251703 m!7931072))

(assert (=> b!7251703 m!7930968))

(assert (=> b!7251515 d!2254205))

(assert (=> b!7251515 d!2254185))

(declare-fun b!7251723 () Bool)

(declare-fun e!4348181 () Bool)

(declare-fun tp!2037575 () Bool)

(declare-fun tp!2037576 () Bool)

(assert (=> b!7251723 (= e!4348181 (and tp!2037575 tp!2037576))))

(assert (=> b!7251509 (= tp!2037556 e!4348181)))

(assert (= (and b!7251509 (is-Cons!70400 (exprs!8088 ct1!232))) b!7251723))

(declare-fun b!7251736 () Bool)

(declare-fun e!4348188 () Bool)

(declare-fun tp!2037579 () Bool)

(assert (=> b!7251736 (= e!4348188 (and tp_is_empty!46761 tp!2037579))))

(assert (=> b!7251519 (= tp!2037555 e!4348188)))

(assert (= (and b!7251519 (is-Cons!70401 (t!384581 s1!1971))) b!7251736))

(declare-fun b!7251737 () Bool)

(declare-fun e!4348189 () Bool)

(declare-fun tp!2037580 () Bool)

(assert (=> b!7251737 (= e!4348189 (and tp_is_empty!46761 tp!2037580))))

(assert (=> b!7251517 (= tp!2037557 e!4348189)))

(assert (= (and b!7251517 (is-Cons!70401 (t!384581 s2!1849))) b!7251737))

(declare-fun b!7251738 () Bool)

(declare-fun e!4348190 () Bool)

(declare-fun tp!2037581 () Bool)

(declare-fun tp!2037582 () Bool)

(assert (=> b!7251738 (= e!4348190 (and tp!2037581 tp!2037582))))

(assert (=> b!7251520 (= tp!2037558 e!4348190)))

(assert (= (and b!7251520 (is-Cons!70400 (exprs!8088 ct2!328))) b!7251738))

(declare-fun b_lambda!278505 () Bool)

(assert (= b_lambda!278501 (or b!7251507 b_lambda!278505)))

(declare-fun bs!1906412 () Bool)

(declare-fun d!2254207 () Bool)

(assert (= bs!1906412 (and d!2254207 b!7251507)))

(assert (=> bs!1906412 (= (dynLambda!28747 lambda!444337 lt!2585264) (derivationStepZipperUp!2472 lt!2585264 (h!76849 s1!1971)))))

(assert (=> bs!1906412 m!7930748))

(assert (=> d!2254165 d!2254207))

(declare-fun b_lambda!278507 () Bool)

(assert (= b_lambda!278503 (or b!7251507 b_lambda!278507)))

(declare-fun bs!1906413 () Bool)

(declare-fun d!2254209 () Bool)

(assert (= bs!1906413 (and d!2254209 b!7251507)))

(assert (=> bs!1906413 (= (dynLambda!28747 lambda!444337 ct1!232) (derivationStepZipperUp!2472 ct1!232 (h!76849 s1!1971)))))

(assert (=> bs!1906413 m!7930750))

(assert (=> d!2254169 d!2254209))

(declare-fun b_lambda!278509 () Bool)

(assert (= b_lambda!278499 (or b!7251514 b_lambda!278509)))

(declare-fun bs!1906414 () Bool)

(declare-fun d!2254211 () Bool)

(assert (= bs!1906414 (and d!2254211 b!7251514)))

(assert (=> bs!1906414 (= (dynLambda!28746 lambda!444336 lt!2585369) (matchZipper!3558 (set.insert lt!2585369 (as set.empty (Set Context!15176))) (t!384581 s1!1971)))))

(declare-fun m!7931074 () Bool)

(assert (=> bs!1906414 m!7931074))

(assert (=> bs!1906414 m!7931074))

(declare-fun m!7931076 () Bool)

(assert (=> bs!1906414 m!7931076))

(assert (=> d!2254147 d!2254211))

(push 1)

(assert (not bm!660515))

(assert (not b!7251680))

(assert (not b!7251685))

(assert (not b!7251627))

(assert (not b!7251613))

(assert (not bs!1906413))

(assert (not b!7251686))

(assert (not d!2254181))

(assert (not b!7251736))

(assert (not b_lambda!278507))

(assert (not bm!660510))

(assert (not b!7251702))

(assert (not bm!660513))

(assert (not b!7251624))

(assert (not d!2254193))

(assert (not d!2254149))

(assert (not b!7251738))

(assert (not b!7251703))

(assert (not bm!660517))

(assert (not d!2254165))

(assert (not bm!660509))

(assert (not b!7251581))

(assert (not d!2254187))

(assert (not d!2254205))

(assert (not bs!1906414))

(assert (not b!7251594))

(assert (not d!2254155))

(assert (not d!2254161))

(assert (not d!2254141))

(assert (not d!2254183))

(assert (not b!7251681))

(assert (not d!2254135))

(assert (not d!2254157))

(assert (not bm!660508))

(assert (not d!2254185))

(assert (not b!7251609))

(assert (not d!2254143))

(assert (not b!7251612))

(assert (not b!7251684))

(assert (not b!7251608))

(assert (not bm!660490))

(assert (not b!7251723))

(assert (not d!2254137))

(assert (not d!2254167))

(assert (not d!2254139))

(assert (not d!2254195))

(assert (not d!2254153))

(assert (not b!7251580))

(assert (not d!2254169))

(assert (not b!7251687))

(assert (not b!7251698))

(assert (not b!7251737))

(assert (not b_lambda!278505))

(assert (not b_lambda!278509))

(assert (not b!7251575))

(assert (not b!7251628))

(assert (not bm!660516))

(assert (not b!7251676))

(assert (not b!7251623))

(assert (not d!2254191))

(assert (not b!7251595))

(assert (not d!2254189))

(assert tp_is_empty!46761)

(assert (not bm!660491))

(assert (not bs!1906412))

(assert (not d!2254203))

(assert (not d!2254147))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2254279 () Bool)

(declare-fun e!4348243 () Bool)

(assert (=> d!2254279 e!4348243))

(declare-fun res!2941099 () Bool)

(assert (=> d!2254279 (=> (not res!2941099) (not e!4348243))))

(declare-fun lt!2585424 () List!70524)

(assert (=> d!2254279 (= res!2941099 (= (content!14615 lt!2585424) (set.union (content!14615 (t!384580 (exprs!8088 lt!2585269))) (content!14615 (exprs!8088 ct2!328)))))))

(declare-fun e!4348244 () List!70524)

(assert (=> d!2254279 (= lt!2585424 e!4348244)))

(declare-fun c!1347792 () Bool)

(assert (=> d!2254279 (= c!1347792 (is-Nil!70400 (t!384580 (exprs!8088 lt!2585269))))))

(assert (=> d!2254279 (= (++!16558 (t!384580 (exprs!8088 lt!2585269)) (exprs!8088 ct2!328)) lt!2585424)))

(declare-fun b!7251834 () Bool)

(assert (=> b!7251834 (= e!4348244 (Cons!70400 (h!76848 (t!384580 (exprs!8088 lt!2585269))) (++!16558 (t!384580 (t!384580 (exprs!8088 lt!2585269))) (exprs!8088 ct2!328))))))

(declare-fun b!7251835 () Bool)

(declare-fun res!2941100 () Bool)

(assert (=> b!7251835 (=> (not res!2941100) (not e!4348243))))

(assert (=> b!7251835 (= res!2941100 (= (size!41719 lt!2585424) (+ (size!41719 (t!384580 (exprs!8088 lt!2585269))) (size!41719 (exprs!8088 ct2!328)))))))

(declare-fun b!7251833 () Bool)

(assert (=> b!7251833 (= e!4348244 (exprs!8088 ct2!328))))

(declare-fun b!7251836 () Bool)

(assert (=> b!7251836 (= e!4348243 (or (not (= (exprs!8088 ct2!328) Nil!70400)) (= lt!2585424 (t!384580 (exprs!8088 lt!2585269)))))))

(assert (= (and d!2254279 c!1347792) b!7251833))

(assert (= (and d!2254279 (not c!1347792)) b!7251834))

(assert (= (and d!2254279 res!2941099) b!7251835))

(assert (= (and b!7251835 res!2941100) b!7251836))

(declare-fun m!7931258 () Bool)

(assert (=> d!2254279 m!7931258))

(declare-fun m!7931260 () Bool)

(assert (=> d!2254279 m!7931260))

(assert (=> d!2254279 m!7930960))

(declare-fun m!7931262 () Bool)

(assert (=> b!7251834 m!7931262))

(declare-fun m!7931264 () Bool)

(assert (=> b!7251835 m!7931264))

(declare-fun m!7931266 () Bool)

(assert (=> b!7251835 m!7931266))

(assert (=> b!7251835 m!7930968))

(assert (=> b!7251623 d!2254279))

(declare-fun d!2254281 () Bool)

(assert (=> d!2254281 true))

(declare-fun setRes!53575 () Bool)

(assert (=> d!2254281 setRes!53575))

(declare-fun condSetEmpty!53575 () Bool)

(declare-fun res!2941103 () (Set Context!15176))

(assert (=> d!2254281 (= condSetEmpty!53575 (= res!2941103 (as set.empty (Set Context!15176))))))

(assert (=> d!2254281 (= (choose!56030 lt!2585277 lambda!444337) res!2941103)))

(declare-fun setIsEmpty!53575 () Bool)

(assert (=> setIsEmpty!53575 setRes!53575))

(declare-fun setNonEmpty!53575 () Bool)

(declare-fun setElem!53575 () Context!15176)

(declare-fun tp!2037599 () Bool)

(declare-fun e!4348247 () Bool)

(assert (=> setNonEmpty!53575 (= setRes!53575 (and tp!2037599 (inv!89631 setElem!53575) e!4348247))))

(declare-fun setRest!53575 () (Set Context!15176))

(assert (=> setNonEmpty!53575 (= res!2941103 (set.union (set.insert setElem!53575 (as set.empty (Set Context!15176))) setRest!53575))))

(declare-fun b!7251839 () Bool)

(declare-fun tp!2037600 () Bool)

(assert (=> b!7251839 (= e!4348247 tp!2037600)))

(assert (= (and d!2254281 condSetEmpty!53575) setIsEmpty!53575))

(assert (= (and d!2254281 (not condSetEmpty!53575)) setNonEmpty!53575))

(assert (= setNonEmpty!53575 b!7251839))

(declare-fun m!7931268 () Bool)

(assert (=> setNonEmpty!53575 m!7931268))

(assert (=> d!2254167 d!2254281))

(declare-fun d!2254283 () Bool)

(declare-fun e!4348248 () Bool)

(assert (=> d!2254283 e!4348248))

(declare-fun res!2941104 () Bool)

(assert (=> d!2254283 (=> (not res!2941104) (not e!4348248))))

(declare-fun lt!2585425 () List!70524)

(assert (=> d!2254283 (= res!2941104 (= (content!14615 lt!2585425) (set.union (content!14615 (t!384580 (exprs!8088 ct1!232))) (content!14615 (exprs!8088 ct2!328)))))))

(declare-fun e!4348249 () List!70524)

(assert (=> d!2254283 (= lt!2585425 e!4348249)))

(declare-fun c!1347793 () Bool)

(assert (=> d!2254283 (= c!1347793 (is-Nil!70400 (t!384580 (exprs!8088 ct1!232))))))

(assert (=> d!2254283 (= (++!16558 (t!384580 (exprs!8088 ct1!232)) (exprs!8088 ct2!328)) lt!2585425)))

(declare-fun b!7251841 () Bool)

(assert (=> b!7251841 (= e!4348249 (Cons!70400 (h!76848 (t!384580 (exprs!8088 ct1!232))) (++!16558 (t!384580 (t!384580 (exprs!8088 ct1!232))) (exprs!8088 ct2!328))))))

(declare-fun b!7251842 () Bool)

(declare-fun res!2941105 () Bool)

(assert (=> b!7251842 (=> (not res!2941105) (not e!4348248))))

(assert (=> b!7251842 (= res!2941105 (= (size!41719 lt!2585425) (+ (size!41719 (t!384580 (exprs!8088 ct1!232))) (size!41719 (exprs!8088 ct2!328)))))))

(declare-fun b!7251840 () Bool)

(assert (=> b!7251840 (= e!4348249 (exprs!8088 ct2!328))))

(declare-fun b!7251843 () Bool)

(assert (=> b!7251843 (= e!4348248 (or (not (= (exprs!8088 ct2!328) Nil!70400)) (= lt!2585425 (t!384580 (exprs!8088 ct1!232)))))))

(assert (= (and d!2254283 c!1347793) b!7251840))

(assert (= (and d!2254283 (not c!1347793)) b!7251841))

(assert (= (and d!2254283 res!2941104) b!7251842))

(assert (= (and b!7251842 res!2941105) b!7251843))

(declare-fun m!7931270 () Bool)

(assert (=> d!2254283 m!7931270))

(declare-fun m!7931272 () Bool)

(assert (=> d!2254283 m!7931272))

(assert (=> d!2254283 m!7930960))

(declare-fun m!7931274 () Bool)

(assert (=> b!7251841 m!7931274))

(declare-fun m!7931276 () Bool)

(assert (=> b!7251842 m!7931276))

(declare-fun m!7931278 () Bool)

(assert (=> b!7251842 m!7931278))

(assert (=> b!7251842 m!7930968))

(assert (=> b!7251702 d!2254283))

(assert (=> bs!1906412 d!2254179))

(declare-fun b!7251858 () Bool)

(declare-fun e!4348263 () Bool)

(declare-fun e!4348267 () Bool)

(assert (=> b!7251858 (= e!4348263 e!4348267)))

(declare-fun c!1347796 () Bool)

(assert (=> b!7251858 (= c!1347796 (is-Union!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun b!7251859 () Bool)

(declare-fun e!4348262 () Bool)

(declare-fun call!660556 () Bool)

(assert (=> b!7251859 (= e!4348262 call!660556)))

(declare-fun b!7251860 () Bool)

(declare-fun e!4348265 () Bool)

(assert (=> b!7251860 (= e!4348265 call!660556)))

(declare-fun bm!660550 () Bool)

(declare-fun call!660555 () Bool)

(assert (=> bm!660550 (= call!660555 (nullable!7908 (ite c!1347796 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun d!2254285 () Bool)

(declare-fun res!2941119 () Bool)

(declare-fun e!4348266 () Bool)

(assert (=> d!2254285 (=> res!2941119 e!4348266)))

(assert (=> d!2254285 (= res!2941119 (is-EmptyExpr!18648 (h!76848 (exprs!8088 ct1!232))))))

(assert (=> d!2254285 (= (nullableFct!3103 (h!76848 (exprs!8088 ct1!232))) e!4348266)))

(declare-fun b!7251861 () Bool)

(assert (=> b!7251861 (= e!4348267 e!4348262)))

(declare-fun res!2941118 () Bool)

(assert (=> b!7251861 (= res!2941118 call!660555)))

(assert (=> b!7251861 (=> (not res!2941118) (not e!4348262))))

(declare-fun b!7251862 () Bool)

(declare-fun e!4348264 () Bool)

(assert (=> b!7251862 (= e!4348264 e!4348263)))

(declare-fun res!2941117 () Bool)

(assert (=> b!7251862 (=> res!2941117 e!4348263)))

(assert (=> b!7251862 (= res!2941117 (is-Star!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun b!7251863 () Bool)

(assert (=> b!7251863 (= e!4348266 e!4348264)))

(declare-fun res!2941120 () Bool)

(assert (=> b!7251863 (=> (not res!2941120) (not e!4348264))))

(assert (=> b!7251863 (= res!2941120 (and (not (is-EmptyLang!18648 (h!76848 (exprs!8088 ct1!232)))) (not (is-ElementMatch!18648 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun b!7251864 () Bool)

(assert (=> b!7251864 (= e!4348267 e!4348265)))

(declare-fun res!2941116 () Bool)

(assert (=> b!7251864 (= res!2941116 call!660555)))

(assert (=> b!7251864 (=> res!2941116 e!4348265)))

(declare-fun bm!660551 () Bool)

(assert (=> bm!660551 (= call!660556 (nullable!7908 (ite c!1347796 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))))))))

(assert (= (and d!2254285 (not res!2941119)) b!7251863))

(assert (= (and b!7251863 res!2941120) b!7251862))

(assert (= (and b!7251862 (not res!2941117)) b!7251858))

(assert (= (and b!7251858 c!1347796) b!7251864))

(assert (= (and b!7251858 (not c!1347796)) b!7251861))

(assert (= (and b!7251864 (not res!2941116)) b!7251860))

(assert (= (and b!7251861 res!2941118) b!7251859))

(assert (= (or b!7251860 b!7251859) bm!660551))

(assert (= (or b!7251864 b!7251861) bm!660550))

(declare-fun m!7931280 () Bool)

(assert (=> bm!660550 m!7931280))

(declare-fun m!7931282 () Bool)

(assert (=> bm!660551 m!7931282))

(assert (=> d!2254183 d!2254285))

(declare-fun b!7251865 () Bool)

(declare-fun e!4348270 () (Set Context!15176))

(declare-fun call!660560 () (Set Context!15176))

(declare-fun call!660561 () (Set Context!15176))

(assert (=> b!7251865 (= e!4348270 (set.union call!660560 call!660561))))

(declare-fun bm!660552 () Bool)

(declare-fun call!660557 () List!70524)

(declare-fun call!660562 () List!70524)

(assert (=> bm!660552 (= call!660557 call!660562)))

(declare-fun c!1347801 () Bool)

(declare-fun c!1347797 () Bool)

(declare-fun c!1347799 () Bool)

(declare-fun call!660559 () (Set Context!15176))

(declare-fun bm!660553 () Bool)

(assert (=> bm!660553 (= call!660559 (derivationStepZipperDown!2642 (ite c!1347797 (regOne!37809 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347801 (regTwo!37808 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347799 (regOne!37808 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (reg!18977 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))) (ite (or c!1347797 c!1347801) (ite c!1347745 lt!2585270 (Context!15177 call!660524)) (Context!15177 call!660557)) (h!76849 s1!1971)))))

(declare-fun b!7251866 () Bool)

(declare-fun e!4348271 () (Set Context!15176))

(assert (=> b!7251866 (= e!4348271 (set.union call!660559 call!660560))))

(declare-fun bm!660554 () Bool)

(assert (=> bm!660554 (= call!660562 ($colon$colon!2918 (exprs!8088 (ite c!1347745 lt!2585270 (Context!15177 call!660524))) (ite (or c!1347801 c!1347799) (regTwo!37808 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))))

(declare-fun b!7251868 () Bool)

(declare-fun e!4348269 () (Set Context!15176))

(assert (=> b!7251868 (= e!4348270 e!4348269)))

(assert (=> b!7251868 (= c!1347799 (is-Concat!27493 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun bm!660555 () Bool)

(assert (=> bm!660555 (= call!660560 (derivationStepZipperDown!2642 (ite c!1347797 (regTwo!37809 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (regOne!37808 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))) (ite c!1347797 (ite c!1347745 lt!2585270 (Context!15177 call!660524)) (Context!15177 call!660562)) (h!76849 s1!1971)))))

(declare-fun b!7251869 () Bool)

(declare-fun c!1347800 () Bool)

(assert (=> b!7251869 (= c!1347800 (is-Star!18648 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun e!4348268 () (Set Context!15176))

(assert (=> b!7251869 (= e!4348269 e!4348268)))

(declare-fun b!7251870 () Bool)

(declare-fun e!4348272 () Bool)

(assert (=> b!7251870 (= c!1347801 e!4348272)))

(declare-fun res!2941121 () Bool)

(assert (=> b!7251870 (=> (not res!2941121) (not e!4348272))))

(assert (=> b!7251870 (= res!2941121 (is-Concat!27493 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(assert (=> b!7251870 (= e!4348271 e!4348270)))

(declare-fun b!7251871 () Bool)

(declare-fun call!660558 () (Set Context!15176))

(assert (=> b!7251871 (= e!4348269 call!660558)))

(declare-fun b!7251872 () Bool)

(declare-fun e!4348273 () (Set Context!15176))

(assert (=> b!7251872 (= e!4348273 (set.insert (ite c!1347745 lt!2585270 (Context!15177 call!660524)) (as set.empty (Set Context!15176))))))

(declare-fun b!7251873 () Bool)

(assert (=> b!7251873 (= e!4348272 (nullable!7908 (regOne!37808 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))))

(declare-fun bm!660556 () Bool)

(assert (=> bm!660556 (= call!660561 call!660559)))

(declare-fun b!7251874 () Bool)

(assert (=> b!7251874 (= e!4348268 (as set.empty (Set Context!15176)))))

(declare-fun b!7251875 () Bool)

(assert (=> b!7251875 (= e!4348273 e!4348271)))

(assert (=> b!7251875 (= c!1347797 (is-Union!18648 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun bm!660557 () Bool)

(assert (=> bm!660557 (= call!660558 call!660561)))

(declare-fun b!7251867 () Bool)

(assert (=> b!7251867 (= e!4348268 call!660558)))

(declare-fun d!2254287 () Bool)

(declare-fun c!1347798 () Bool)

(assert (=> d!2254287 (= c!1347798 (and (is-ElementMatch!18648 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (= (c!1347686 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (h!76849 s1!1971))))))

(assert (=> d!2254287 (= (derivationStepZipperDown!2642 (ite c!1347745 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (ite c!1347745 lt!2585270 (Context!15177 call!660524)) (h!76849 s1!1971)) e!4348273)))

(assert (= (and d!2254287 c!1347798) b!7251872))

(assert (= (and d!2254287 (not c!1347798)) b!7251875))

(assert (= (and b!7251875 c!1347797) b!7251866))

(assert (= (and b!7251875 (not c!1347797)) b!7251870))

(assert (= (and b!7251870 res!2941121) b!7251873))

(assert (= (and b!7251870 c!1347801) b!7251865))

(assert (= (and b!7251870 (not c!1347801)) b!7251868))

(assert (= (and b!7251868 c!1347799) b!7251871))

(assert (= (and b!7251868 (not c!1347799)) b!7251869))

(assert (= (and b!7251869 c!1347800) b!7251867))

(assert (= (and b!7251869 (not c!1347800)) b!7251874))

(assert (= (or b!7251871 b!7251867) bm!660552))

(assert (= (or b!7251871 b!7251867) bm!660557))

(assert (= (or b!7251865 bm!660552) bm!660554))

(assert (= (or b!7251865 bm!660557) bm!660556))

(assert (= (or b!7251866 b!7251865) bm!660555))

(assert (= (or b!7251866 bm!660556) bm!660553))

(declare-fun m!7931284 () Bool)

(assert (=> bm!660553 m!7931284))

(declare-fun m!7931286 () Bool)

(assert (=> b!7251873 m!7931286))

(declare-fun m!7931288 () Bool)

(assert (=> b!7251872 m!7931288))

(declare-fun m!7931290 () Bool)

(assert (=> bm!660555 m!7931290))

(declare-fun m!7931292 () Bool)

(assert (=> bm!660554 m!7931292))

(assert (=> bm!660517 d!2254287))

(declare-fun bs!1906446 () Bool)

(declare-fun d!2254289 () Bool)

(assert (= bs!1906446 (and d!2254289 b!7251514)))

(declare-fun lambda!444401 () Int)

(assert (=> bs!1906446 (not (= lambda!444401 lambda!444336))))

(declare-fun bs!1906447 () Bool)

(assert (= bs!1906447 (and d!2254289 d!2254137)))

(assert (=> bs!1906447 (not (= lambda!444401 lambda!444367))))

(declare-fun bs!1906448 () Bool)

(assert (= bs!1906448 (and d!2254289 d!2254139)))

(assert (=> bs!1906448 (not (= lambda!444401 lambda!444370))))

(assert (=> d!2254289 (= (nullableZipper!2914 lt!2585273) (exists!4374 lt!2585273 lambda!444401))))

(declare-fun bs!1906449 () Bool)

(assert (= bs!1906449 d!2254289))

(declare-fun m!7931294 () Bool)

(assert (=> bs!1906449 m!7931294))

(assert (=> b!7251684 d!2254289))

(declare-fun d!2254291 () Bool)

(declare-fun res!2941126 () Bool)

(declare-fun e!4348278 () Bool)

(assert (=> d!2254291 (=> res!2941126 e!4348278)))

(assert (=> d!2254291 (= res!2941126 (is-Nil!70400 (exprs!8088 lt!2585280)))))

(assert (=> d!2254291 (= (forall!17496 (exprs!8088 lt!2585280) lambda!444381) e!4348278)))

(declare-fun b!7251880 () Bool)

(declare-fun e!4348279 () Bool)

(assert (=> b!7251880 (= e!4348278 e!4348279)))

(declare-fun res!2941127 () Bool)

(assert (=> b!7251880 (=> (not res!2941127) (not e!4348279))))

(declare-fun dynLambda!28751 (Int Regex!18648) Bool)

(assert (=> b!7251880 (= res!2941127 (dynLambda!28751 lambda!444381 (h!76848 (exprs!8088 lt!2585280))))))

(declare-fun b!7251881 () Bool)

(assert (=> b!7251881 (= e!4348279 (forall!17496 (t!384580 (exprs!8088 lt!2585280)) lambda!444381))))

(assert (= (and d!2254291 (not res!2941126)) b!7251880))

(assert (= (and b!7251880 res!2941127) b!7251881))

(declare-fun b_lambda!278523 () Bool)

(assert (=> (not b_lambda!278523) (not b!7251880)))

(declare-fun m!7931296 () Bool)

(assert (=> b!7251880 m!7931296))

(declare-fun m!7931298 () Bool)

(assert (=> b!7251881 m!7931298))

(assert (=> d!2254203 d!2254291))

(declare-fun d!2254293 () Bool)

(assert (=> d!2254293 (= ($colon$colon!2918 (exprs!8088 lt!2585280) (ite (or c!1347738 c!1347736) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232)))) (Cons!70400 (ite (or c!1347738 c!1347736) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232))) (exprs!8088 lt!2585280)))))

(assert (=> bm!660509 d!2254293))

(declare-fun bs!1906450 () Bool)

(declare-fun d!2254295 () Bool)

(assert (= bs!1906450 (and d!2254295 b!7251514)))

(declare-fun lambda!444402 () Int)

(assert (=> bs!1906450 (not (= lambda!444402 lambda!444336))))

(declare-fun bs!1906451 () Bool)

(assert (= bs!1906451 (and d!2254295 d!2254137)))

(assert (=> bs!1906451 (not (= lambda!444402 lambda!444367))))

(declare-fun bs!1906452 () Bool)

(assert (= bs!1906452 (and d!2254295 d!2254139)))

(assert (=> bs!1906452 (not (= lambda!444402 lambda!444370))))

(declare-fun bs!1906453 () Bool)

(assert (= bs!1906453 (and d!2254295 d!2254289)))

(assert (=> bs!1906453 (= lambda!444402 lambda!444401)))

(assert (=> d!2254295 (= (nullableZipper!2914 lt!2585278) (exists!4374 lt!2585278 lambda!444402))))

(declare-fun bs!1906454 () Bool)

(assert (= bs!1906454 d!2254295))

(declare-fun m!7931300 () Bool)

(assert (=> bs!1906454 m!7931300))

(assert (=> b!7251686 d!2254295))

(declare-fun d!2254297 () Bool)

(declare-fun res!2941128 () Bool)

(declare-fun e!4348280 () Bool)

(assert (=> d!2254297 (=> res!2941128 e!4348280)))

(assert (=> d!2254297 (= res!2941128 (is-Nil!70400 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328))))))

(assert (=> d!2254297 (= (forall!17496 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)) lambda!444335) e!4348280)))

(declare-fun b!7251882 () Bool)

(declare-fun e!4348281 () Bool)

(assert (=> b!7251882 (= e!4348280 e!4348281)))

(declare-fun res!2941129 () Bool)

(assert (=> b!7251882 (=> (not res!2941129) (not e!4348281))))

(assert (=> b!7251882 (= res!2941129 (dynLambda!28751 lambda!444335 (h!76848 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)))))))

(declare-fun b!7251883 () Bool)

(assert (=> b!7251883 (= e!4348281 (forall!17496 (t!384580 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328))) lambda!444335))))

(assert (= (and d!2254297 (not res!2941128)) b!7251882))

(assert (= (and b!7251882 res!2941129) b!7251883))

(declare-fun b_lambda!278525 () Bool)

(assert (=> (not b_lambda!278525) (not b!7251882)))

(declare-fun m!7931302 () Bool)

(assert (=> b!7251882 m!7931302))

(declare-fun m!7931304 () Bool)

(assert (=> b!7251883 m!7931304))

(assert (=> d!2254185 d!2254297))

(assert (=> d!2254185 d!2254205))

(declare-fun d!2254299 () Bool)

(assert (=> d!2254299 (forall!17496 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)) lambda!444335)))

(assert (=> d!2254299 true))

(declare-fun _$78!768 () Unit!163882)

(assert (=> d!2254299 (= (choose!56028 (exprs!8088 ct1!232) (exprs!8088 ct2!328) lambda!444335) _$78!768)))

(declare-fun bs!1906455 () Bool)

(assert (= bs!1906455 d!2254299))

(assert (=> bs!1906455 m!7930776))

(assert (=> bs!1906455 m!7930776))

(assert (=> bs!1906455 m!7931018))

(assert (=> d!2254185 d!2254299))

(declare-fun d!2254301 () Bool)

(declare-fun res!2941130 () Bool)

(declare-fun e!4348282 () Bool)

(assert (=> d!2254301 (=> res!2941130 e!4348282)))

(assert (=> d!2254301 (= res!2941130 (is-Nil!70400 (exprs!8088 ct1!232)))))

(assert (=> d!2254301 (= (forall!17496 (exprs!8088 ct1!232) lambda!444335) e!4348282)))

(declare-fun b!7251884 () Bool)

(declare-fun e!4348283 () Bool)

(assert (=> b!7251884 (= e!4348282 e!4348283)))

(declare-fun res!2941131 () Bool)

(assert (=> b!7251884 (=> (not res!2941131) (not e!4348283))))

(assert (=> b!7251884 (= res!2941131 (dynLambda!28751 lambda!444335 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun b!7251885 () Bool)

(assert (=> b!7251885 (= e!4348283 (forall!17496 (t!384580 (exprs!8088 ct1!232)) lambda!444335))))

(assert (= (and d!2254301 (not res!2941130)) b!7251884))

(assert (= (and b!7251884 res!2941131) b!7251885))

(declare-fun b_lambda!278527 () Bool)

(assert (=> (not b_lambda!278527) (not b!7251884)))

(declare-fun m!7931306 () Bool)

(assert (=> b!7251884 m!7931306))

(declare-fun m!7931308 () Bool)

(assert (=> b!7251885 m!7931308))

(assert (=> d!2254185 d!2254301))

(declare-fun d!2254303 () Bool)

(declare-fun c!1347804 () Bool)

(assert (=> d!2254303 (= c!1347804 (isEmpty!40544 (t!384581 s1!1971)))))

(declare-fun e!4348284 () Bool)

(assert (=> d!2254303 (= (matchZipper!3558 (set.insert lt!2585369 (as set.empty (Set Context!15176))) (t!384581 s1!1971)) e!4348284)))

(declare-fun b!7251886 () Bool)

(assert (=> b!7251886 (= e!4348284 (nullableZipper!2914 (set.insert lt!2585369 (as set.empty (Set Context!15176)))))))

(declare-fun b!7251887 () Bool)

(assert (=> b!7251887 (= e!4348284 (matchZipper!3558 (derivationStepZipper!3426 (set.insert lt!2585369 (as set.empty (Set Context!15176))) (head!14905 (t!384581 s1!1971))) (tail!14326 (t!384581 s1!1971))))))

(assert (= (and d!2254303 c!1347804) b!7251886))

(assert (= (and d!2254303 (not c!1347804)) b!7251887))

(assert (=> d!2254303 m!7931040))

(assert (=> b!7251886 m!7931074))

(declare-fun m!7931310 () Bool)

(assert (=> b!7251886 m!7931310))

(assert (=> b!7251887 m!7931044))

(assert (=> b!7251887 m!7931074))

(assert (=> b!7251887 m!7931044))

(declare-fun m!7931312 () Bool)

(assert (=> b!7251887 m!7931312))

(assert (=> b!7251887 m!7931048))

(assert (=> b!7251887 m!7931312))

(assert (=> b!7251887 m!7931048))

(declare-fun m!7931314 () Bool)

(assert (=> b!7251887 m!7931314))

(assert (=> bs!1906414 d!2254303))

(declare-fun e!4348285 () (Set Context!15176))

(declare-fun call!660563 () (Set Context!15176))

(declare-fun b!7251889 () Bool)

(assert (=> b!7251889 (= e!4348285 (set.union call!660563 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270)))))) (h!76849 s1!1971))))))

(declare-fun b!7251890 () Bool)

(declare-fun e!4348286 () Bool)

(assert (=> b!7251890 (= e!4348286 (nullable!7908 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270)))))))))

(declare-fun bm!660558 () Bool)

(assert (=> bm!660558 (= call!660563 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270))))) (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270)))))) (h!76849 s1!1971)))))

(declare-fun b!7251888 () Bool)

(declare-fun e!4348287 () (Set Context!15176))

(assert (=> b!7251888 (= e!4348287 call!660563)))

(declare-fun d!2254305 () Bool)

(declare-fun c!1347805 () Bool)

(assert (=> d!2254305 (= c!1347805 e!4348286)))

(declare-fun res!2941132 () Bool)

(assert (=> d!2254305 (=> (not res!2941132) (not e!4348286))))

(assert (=> d!2254305 (= res!2941132 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270))))))))

(assert (=> d!2254305 (= (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (h!76849 s1!1971)) e!4348285)))

(declare-fun b!7251891 () Bool)

(assert (=> b!7251891 (= e!4348287 (as set.empty (Set Context!15176)))))

(declare-fun b!7251892 () Bool)

(assert (=> b!7251892 (= e!4348285 e!4348287)))

(declare-fun c!1347806 () Bool)

(assert (=> b!7251892 (= c!1347806 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270))))))))

(assert (= (and d!2254305 res!2941132) b!7251890))

(assert (= (and d!2254305 c!1347805) b!7251889))

(assert (= (and d!2254305 (not c!1347805)) b!7251892))

(assert (= (and b!7251892 c!1347806) b!7251888))

(assert (= (and b!7251892 (not c!1347806)) b!7251891))

(assert (= (or b!7251889 b!7251888) bm!660558))

(declare-fun m!7931316 () Bool)

(assert (=> b!7251889 m!7931316))

(declare-fun m!7931318 () Bool)

(assert (=> b!7251890 m!7931318))

(declare-fun m!7931320 () Bool)

(assert (=> bm!660558 m!7931320))

(assert (=> b!7251627 d!2254305))

(declare-fun b!7251893 () Bool)

(declare-fun e!4348290 () (Set Context!15176))

(declare-fun call!660567 () (Set Context!15176))

(declare-fun call!660568 () (Set Context!15176))

(assert (=> b!7251893 (= e!4348290 (set.union call!660567 call!660568))))

(declare-fun bm!660559 () Bool)

(declare-fun call!660564 () List!70524)

(declare-fun call!660569 () List!70524)

(assert (=> bm!660559 (= call!660564 call!660569)))

(declare-fun bm!660560 () Bool)

(declare-fun c!1347811 () Bool)

(declare-fun call!660566 () (Set Context!15176))

(declare-fun c!1347809 () Bool)

(declare-fun c!1347807 () Bool)

(assert (=> bm!660560 (= call!660566 (derivationStepZipperDown!2642 (ite c!1347807 (regOne!37809 (h!76848 (exprs!8088 lt!2585264))) (ite c!1347811 (regTwo!37808 (h!76848 (exprs!8088 lt!2585264))) (ite c!1347809 (regOne!37808 (h!76848 (exprs!8088 lt!2585264))) (reg!18977 (h!76848 (exprs!8088 lt!2585264)))))) (ite (or c!1347807 c!1347811) (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (Context!15177 call!660564)) (h!76849 s1!1971)))))

(declare-fun b!7251894 () Bool)

(declare-fun e!4348291 () (Set Context!15176))

(assert (=> b!7251894 (= e!4348291 (set.union call!660566 call!660567))))

(declare-fun bm!660561 () Bool)

(assert (=> bm!660561 (= call!660569 ($colon$colon!2918 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264)))) (ite (or c!1347811 c!1347809) (regTwo!37808 (h!76848 (exprs!8088 lt!2585264))) (h!76848 (exprs!8088 lt!2585264)))))))

(declare-fun b!7251896 () Bool)

(declare-fun e!4348289 () (Set Context!15176))

(assert (=> b!7251896 (= e!4348290 e!4348289)))

(assert (=> b!7251896 (= c!1347809 (is-Concat!27493 (h!76848 (exprs!8088 lt!2585264))))))

(declare-fun bm!660562 () Bool)

(assert (=> bm!660562 (= call!660567 (derivationStepZipperDown!2642 (ite c!1347807 (regTwo!37809 (h!76848 (exprs!8088 lt!2585264))) (regOne!37808 (h!76848 (exprs!8088 lt!2585264)))) (ite c!1347807 (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (Context!15177 call!660569)) (h!76849 s1!1971)))))

(declare-fun b!7251897 () Bool)

(declare-fun c!1347810 () Bool)

(assert (=> b!7251897 (= c!1347810 (is-Star!18648 (h!76848 (exprs!8088 lt!2585264))))))

(declare-fun e!4348288 () (Set Context!15176))

(assert (=> b!7251897 (= e!4348289 e!4348288)))

(declare-fun b!7251898 () Bool)

(declare-fun e!4348292 () Bool)

(assert (=> b!7251898 (= c!1347811 e!4348292)))

(declare-fun res!2941133 () Bool)

(assert (=> b!7251898 (=> (not res!2941133) (not e!4348292))))

(assert (=> b!7251898 (= res!2941133 (is-Concat!27493 (h!76848 (exprs!8088 lt!2585264))))))

(assert (=> b!7251898 (= e!4348291 e!4348290)))

(declare-fun b!7251899 () Bool)

(declare-fun call!660565 () (Set Context!15176))

(assert (=> b!7251899 (= e!4348289 call!660565)))

(declare-fun b!7251900 () Bool)

(declare-fun e!4348293 () (Set Context!15176))

(assert (=> b!7251900 (= e!4348293 (set.insert (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (as set.empty (Set Context!15176))))))

(declare-fun b!7251901 () Bool)

(assert (=> b!7251901 (= e!4348292 (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 lt!2585264)))))))

(declare-fun bm!660563 () Bool)

(assert (=> bm!660563 (= call!660568 call!660566)))

(declare-fun b!7251902 () Bool)

(assert (=> b!7251902 (= e!4348288 (as set.empty (Set Context!15176)))))

(declare-fun b!7251903 () Bool)

(assert (=> b!7251903 (= e!4348293 e!4348291)))

(assert (=> b!7251903 (= c!1347807 (is-Union!18648 (h!76848 (exprs!8088 lt!2585264))))))

(declare-fun bm!660564 () Bool)

(assert (=> bm!660564 (= call!660565 call!660568)))

(declare-fun b!7251895 () Bool)

(assert (=> b!7251895 (= e!4348288 call!660565)))

(declare-fun d!2254307 () Bool)

(declare-fun c!1347808 () Bool)

(assert (=> d!2254307 (= c!1347808 (and (is-ElementMatch!18648 (h!76848 (exprs!8088 lt!2585264))) (= (c!1347686 (h!76848 (exprs!8088 lt!2585264))) (h!76849 s1!1971))))))

(assert (=> d!2254307 (= (derivationStepZipperDown!2642 (h!76848 (exprs!8088 lt!2585264)) (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (h!76849 s1!1971)) e!4348293)))

(assert (= (and d!2254307 c!1347808) b!7251900))

(assert (= (and d!2254307 (not c!1347808)) b!7251903))

(assert (= (and b!7251903 c!1347807) b!7251894))

(assert (= (and b!7251903 (not c!1347807)) b!7251898))

(assert (= (and b!7251898 res!2941133) b!7251901))

(assert (= (and b!7251898 c!1347811) b!7251893))

(assert (= (and b!7251898 (not c!1347811)) b!7251896))

(assert (= (and b!7251896 c!1347809) b!7251899))

(assert (= (and b!7251896 (not c!1347809)) b!7251897))

(assert (= (and b!7251897 c!1347810) b!7251895))

(assert (= (and b!7251897 (not c!1347810)) b!7251902))

(assert (= (or b!7251899 b!7251895) bm!660559))

(assert (= (or b!7251899 b!7251895) bm!660564))

(assert (= (or b!7251893 bm!660559) bm!660561))

(assert (= (or b!7251893 bm!660564) bm!660563))

(assert (= (or b!7251894 b!7251893) bm!660562))

(assert (= (or b!7251894 bm!660563) bm!660560))

(declare-fun m!7931322 () Bool)

(assert (=> bm!660560 m!7931322))

(declare-fun m!7931324 () Bool)

(assert (=> b!7251901 m!7931324))

(declare-fun m!7931326 () Bool)

(assert (=> b!7251900 m!7931326))

(declare-fun m!7931328 () Bool)

(assert (=> bm!660562 m!7931328))

(declare-fun m!7931330 () Bool)

(assert (=> bm!660561 m!7931330))

(assert (=> bm!660513 d!2254307))

(declare-fun d!2254309 () Bool)

(assert (=> d!2254309 (= (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (nullableFct!3103 (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun bs!1906456 () Bool)

(assert (= bs!1906456 d!2254309))

(declare-fun m!7931332 () Bool)

(assert (=> bs!1906456 m!7931332))

(assert (=> b!7251676 d!2254309))

(declare-fun b!7251905 () Bool)

(declare-fun e!4348294 () (Set Context!15176))

(declare-fun call!660570 () (Set Context!15176))

(assert (=> b!7251905 (= e!4348294 (set.union call!660570 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264)))))) (h!76849 s1!1971))))))

(declare-fun b!7251906 () Bool)

(declare-fun e!4348295 () Bool)

(assert (=> b!7251906 (= e!4348295 (nullable!7908 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264)))))))))

(declare-fun bm!660565 () Bool)

(assert (=> bm!660565 (= call!660570 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264))))) (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264)))))) (h!76849 s1!1971)))))

(declare-fun b!7251904 () Bool)

(declare-fun e!4348296 () (Set Context!15176))

(assert (=> b!7251904 (= e!4348296 call!660570)))

(declare-fun d!2254311 () Bool)

(declare-fun c!1347812 () Bool)

(assert (=> d!2254311 (= c!1347812 e!4348295)))

(declare-fun res!2941134 () Bool)

(assert (=> d!2254311 (=> (not res!2941134) (not e!4348295))))

(assert (=> d!2254311 (= res!2941134 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264))))))))

(assert (=> d!2254311 (= (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 lt!2585264))) (h!76849 s1!1971)) e!4348294)))

(declare-fun b!7251907 () Bool)

(assert (=> b!7251907 (= e!4348296 (as set.empty (Set Context!15176)))))

(declare-fun b!7251908 () Bool)

(assert (=> b!7251908 (= e!4348294 e!4348296)))

(declare-fun c!1347813 () Bool)

(assert (=> b!7251908 (= c!1347813 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585264))))))))

(assert (= (and d!2254311 res!2941134) b!7251906))

(assert (= (and d!2254311 c!1347812) b!7251905))

(assert (= (and d!2254311 (not c!1347812)) b!7251908))

(assert (= (and b!7251908 c!1347813) b!7251904))

(assert (= (and b!7251908 (not c!1347813)) b!7251907))

(assert (= (or b!7251905 b!7251904) bm!660565))

(declare-fun m!7931334 () Bool)

(assert (=> b!7251905 m!7931334))

(declare-fun m!7931336 () Bool)

(assert (=> b!7251906 m!7931336))

(declare-fun m!7931338 () Bool)

(assert (=> bm!660565 m!7931338))

(assert (=> b!7251680 d!2254311))

(declare-fun d!2254313 () Bool)

(assert (=> d!2254313 (= (flatMap!2813 lt!2585273 lambda!444380) (choose!56030 lt!2585273 lambda!444380))))

(declare-fun bs!1906457 () Bool)

(assert (= bs!1906457 d!2254313))

(declare-fun m!7931340 () Bool)

(assert (=> bs!1906457 m!7931340))

(assert (=> d!2254195 d!2254313))

(declare-fun d!2254315 () Bool)

(declare-fun c!1347814 () Bool)

(assert (=> d!2254315 (= c!1347814 (isEmpty!40544 (tail!14326 s2!1849)))))

(declare-fun e!4348297 () Bool)

(assert (=> d!2254315 (= (matchZipper!3558 (derivationStepZipper!3426 (set.insert ct2!328 (as set.empty (Set Context!15176))) (head!14905 s2!1849)) (tail!14326 s2!1849)) e!4348297)))

(declare-fun b!7251909 () Bool)

(assert (=> b!7251909 (= e!4348297 (nullableZipper!2914 (derivationStepZipper!3426 (set.insert ct2!328 (as set.empty (Set Context!15176))) (head!14905 s2!1849))))))

(declare-fun b!7251910 () Bool)

(assert (=> b!7251910 (= e!4348297 (matchZipper!3558 (derivationStepZipper!3426 (derivationStepZipper!3426 (set.insert ct2!328 (as set.empty (Set Context!15176))) (head!14905 s2!1849)) (head!14905 (tail!14326 s2!1849))) (tail!14326 (tail!14326 s2!1849))))))

(assert (= (and d!2254315 c!1347814) b!7251909))

(assert (= (and d!2254315 (not c!1347814)) b!7251910))

(assert (=> d!2254315 m!7930902))

(declare-fun m!7931342 () Bool)

(assert (=> d!2254315 m!7931342))

(assert (=> b!7251909 m!7930900))

(declare-fun m!7931344 () Bool)

(assert (=> b!7251909 m!7931344))

(assert (=> b!7251910 m!7930902))

(declare-fun m!7931346 () Bool)

(assert (=> b!7251910 m!7931346))

(assert (=> b!7251910 m!7930900))

(assert (=> b!7251910 m!7931346))

(declare-fun m!7931348 () Bool)

(assert (=> b!7251910 m!7931348))

(assert (=> b!7251910 m!7930902))

(declare-fun m!7931350 () Bool)

(assert (=> b!7251910 m!7931350))

(assert (=> b!7251910 m!7931348))

(assert (=> b!7251910 m!7931350))

(declare-fun m!7931352 () Bool)

(assert (=> b!7251910 m!7931352))

(assert (=> b!7251581 d!2254315))

(declare-fun bs!1906458 () Bool)

(declare-fun d!2254317 () Bool)

(assert (= bs!1906458 (and d!2254317 b!7251507)))

(declare-fun lambda!444403 () Int)

(assert (=> bs!1906458 (= (= (head!14905 s2!1849) (h!76849 s1!1971)) (= lambda!444403 lambda!444337))))

(declare-fun bs!1906459 () Bool)

(assert (= bs!1906459 (and d!2254317 d!2254195)))

(assert (=> bs!1906459 (= (= (head!14905 s2!1849) (h!76849 s1!1971)) (= lambda!444403 lambda!444380))))

(assert (=> d!2254317 true))

(assert (=> d!2254317 (= (derivationStepZipper!3426 (set.insert ct2!328 (as set.empty (Set Context!15176))) (head!14905 s2!1849)) (flatMap!2813 (set.insert ct2!328 (as set.empty (Set Context!15176))) lambda!444403))))

(declare-fun bs!1906460 () Bool)

(assert (= bs!1906460 d!2254317))

(assert (=> bs!1906460 m!7930736))

(declare-fun m!7931354 () Bool)

(assert (=> bs!1906460 m!7931354))

(assert (=> b!7251581 d!2254317))

(declare-fun d!2254319 () Bool)

(assert (=> d!2254319 (= (head!14905 s2!1849) (h!76849 s2!1849))))

(assert (=> b!7251581 d!2254319))

(declare-fun d!2254321 () Bool)

(assert (=> d!2254321 (= (tail!14326 s2!1849) (t!384581 s2!1849))))

(assert (=> b!7251581 d!2254321))

(declare-fun b!7251923 () Bool)

(declare-fun lt!2585430 () Unit!163882)

(declare-fun Unit!163886 () Unit!163882)

(assert (=> b!7251923 (= lt!2585430 Unit!163886)))

(assert (=> b!7251923 false))

(declare-fun e!4348307 () Context!15176)

(declare-fun head!14907 (List!70526) Context!15176)

(assert (=> b!7251923 (= e!4348307 (head!14907 (toList!11477 lt!2585278)))))

(declare-fun b!7251924 () Bool)

(declare-fun e!4348306 () Context!15176)

(assert (=> b!7251924 (= e!4348306 e!4348307)))

(declare-fun c!1347819 () Bool)

(assert (=> b!7251924 (= c!1347819 (is-Cons!70402 (toList!11477 lt!2585278)))))

(declare-fun d!2254323 () Bool)

(declare-fun e!4348309 () Bool)

(assert (=> d!2254323 e!4348309))

(declare-fun res!2941139 () Bool)

(assert (=> d!2254323 (=> (not res!2941139) (not e!4348309))))

(declare-fun lt!2585431 () Context!15176)

(assert (=> d!2254323 (= res!2941139 (dynLambda!28746 lambda!444336 lt!2585431))))

(assert (=> d!2254323 (= lt!2585431 e!4348306)))

(declare-fun c!1347820 () Bool)

(declare-fun e!4348308 () Bool)

(assert (=> d!2254323 (= c!1347820 e!4348308)))

(declare-fun res!2941140 () Bool)

(assert (=> d!2254323 (=> (not res!2941140) (not e!4348308))))

(assert (=> d!2254323 (= res!2941140 (is-Cons!70402 (toList!11477 lt!2585278)))))

(assert (=> d!2254323 (exists!4375 (toList!11477 lt!2585278) lambda!444336)))

(assert (=> d!2254323 (= (getWitness!2210 (toList!11477 lt!2585278) lambda!444336) lt!2585431)))

(declare-fun b!7251925 () Bool)

(declare-fun contains!20743 (List!70526 Context!15176) Bool)

(assert (=> b!7251925 (= e!4348309 (contains!20743 (toList!11477 lt!2585278) lt!2585431))))

(declare-fun b!7251926 () Bool)

(assert (=> b!7251926 (= e!4348307 (getWitness!2210 (t!384582 (toList!11477 lt!2585278)) lambda!444336))))

(declare-fun b!7251927 () Bool)

(assert (=> b!7251927 (= e!4348306 (h!76850 (toList!11477 lt!2585278)))))

(declare-fun b!7251928 () Bool)

(assert (=> b!7251928 (= e!4348308 (dynLambda!28746 lambda!444336 (h!76850 (toList!11477 lt!2585278))))))

(assert (= (and d!2254323 res!2941140) b!7251928))

(assert (= (and d!2254323 c!1347820) b!7251927))

(assert (= (and d!2254323 (not c!1347820)) b!7251924))

(assert (= (and b!7251924 c!1347819) b!7251926))

(assert (= (and b!7251924 (not c!1347819)) b!7251923))

(assert (= (and d!2254323 res!2941139) b!7251925))

(declare-fun b_lambda!278529 () Bool)

(assert (=> (not b_lambda!278529) (not d!2254323)))

(declare-fun b_lambda!278531 () Bool)

(assert (=> (not b_lambda!278531) (not b!7251928)))

(declare-fun m!7931356 () Bool)

(assert (=> b!7251928 m!7931356))

(assert (=> b!7251925 m!7930784))

(declare-fun m!7931358 () Bool)

(assert (=> b!7251925 m!7931358))

(declare-fun m!7931360 () Bool)

(assert (=> b!7251926 m!7931360))

(assert (=> b!7251923 m!7930784))

(declare-fun m!7931362 () Bool)

(assert (=> b!7251923 m!7931362))

(declare-fun m!7931364 () Bool)

(assert (=> d!2254323 m!7931364))

(assert (=> d!2254323 m!7930784))

(assert (=> d!2254323 m!7930874))

(assert (=> d!2254147 d!2254323))

(assert (=> d!2254147 d!2254141))

(assert (=> d!2254147 d!2254135))

(assert (=> b!7251609 d!2254183))

(assert (=> d!2254169 d!2254181))

(declare-fun d!2254325 () Bool)

(assert (=> d!2254325 (= (flatMap!2813 lt!2585273 lambda!444337) (dynLambda!28747 lambda!444337 ct1!232))))

(assert (=> d!2254325 true))

(declare-fun _$13!4576 () Unit!163882)

(assert (=> d!2254325 (= (choose!56029 lt!2585273 ct1!232 lambda!444337) _$13!4576)))

(declare-fun b_lambda!278533 () Bool)

(assert (=> (not b_lambda!278533) (not d!2254325)))

(declare-fun bs!1906461 () Bool)

(assert (= bs!1906461 d!2254325))

(assert (=> bs!1906461 m!7930752))

(assert (=> bs!1906461 m!7930982))

(assert (=> d!2254169 d!2254325))

(declare-fun d!2254327 () Bool)

(declare-fun lt!2585434 () Int)

(assert (=> d!2254327 (>= lt!2585434 0)))

(declare-fun e!4348312 () Int)

(assert (=> d!2254327 (= lt!2585434 e!4348312)))

(declare-fun c!1347823 () Bool)

(assert (=> d!2254327 (= c!1347823 (is-Nil!70401 lt!2585372))))

(assert (=> d!2254327 (= (size!41718 lt!2585372) lt!2585434)))

(declare-fun b!7251933 () Bool)

(assert (=> b!7251933 (= e!4348312 0)))

(declare-fun b!7251934 () Bool)

(assert (=> b!7251934 (= e!4348312 (+ 1 (size!41718 (t!384581 lt!2585372))))))

(assert (= (and d!2254327 c!1347823) b!7251933))

(assert (= (and d!2254327 (not c!1347823)) b!7251934))

(declare-fun m!7931366 () Bool)

(assert (=> b!7251934 m!7931366))

(assert (=> b!7251595 d!2254327))

(declare-fun d!2254329 () Bool)

(declare-fun lt!2585435 () Int)

(assert (=> d!2254329 (>= lt!2585435 0)))

(declare-fun e!4348313 () Int)

(assert (=> d!2254329 (= lt!2585435 e!4348313)))

(declare-fun c!1347824 () Bool)

(assert (=> d!2254329 (= c!1347824 (is-Nil!70401 (t!384581 s1!1971)))))

(assert (=> d!2254329 (= (size!41718 (t!384581 s1!1971)) lt!2585435)))

(declare-fun b!7251935 () Bool)

(assert (=> b!7251935 (= e!4348313 0)))

(declare-fun b!7251936 () Bool)

(assert (=> b!7251936 (= e!4348313 (+ 1 (size!41718 (t!384581 (t!384581 s1!1971)))))))

(assert (= (and d!2254329 c!1347824) b!7251935))

(assert (= (and d!2254329 (not c!1347824)) b!7251936))

(declare-fun m!7931368 () Bool)

(assert (=> b!7251936 m!7931368))

(assert (=> b!7251595 d!2254329))

(declare-fun d!2254331 () Bool)

(declare-fun lt!2585436 () Int)

(assert (=> d!2254331 (>= lt!2585436 0)))

(declare-fun e!4348314 () Int)

(assert (=> d!2254331 (= lt!2585436 e!4348314)))

(declare-fun c!1347825 () Bool)

(assert (=> d!2254331 (= c!1347825 (is-Nil!70401 s2!1849))))

(assert (=> d!2254331 (= (size!41718 s2!1849) lt!2585436)))

(declare-fun b!7251937 () Bool)

(assert (=> b!7251937 (= e!4348314 0)))

(declare-fun b!7251938 () Bool)

(assert (=> b!7251938 (= e!4348314 (+ 1 (size!41718 (t!384581 s2!1849))))))

(assert (= (and d!2254331 c!1347825) b!7251937))

(assert (= (and d!2254331 (not c!1347825)) b!7251938))

(declare-fun m!7931370 () Bool)

(assert (=> b!7251938 m!7931370))

(assert (=> b!7251595 d!2254331))

(declare-fun d!2254333 () Bool)

(assert (=> d!2254333 (= (nullable!7908 (h!76848 (exprs!8088 lt!2585270))) (nullableFct!3103 (h!76848 (exprs!8088 lt!2585270))))))

(declare-fun bs!1906462 () Bool)

(assert (= bs!1906462 d!2254333))

(declare-fun m!7931372 () Bool)

(assert (=> bs!1906462 m!7931372))

(assert (=> b!7251628 d!2254333))

(declare-fun b!7251939 () Bool)

(declare-fun e!4348317 () (Set Context!15176))

(declare-fun call!660574 () (Set Context!15176))

(declare-fun call!660575 () (Set Context!15176))

(assert (=> b!7251939 (= e!4348317 (set.union call!660574 call!660575))))

(declare-fun bm!660566 () Bool)

(declare-fun call!660571 () List!70524)

(declare-fun call!660576 () List!70524)

(assert (=> bm!660566 (= call!660571 call!660576)))

(declare-fun bm!660567 () Bool)

(declare-fun c!1347830 () Bool)

(declare-fun c!1347826 () Bool)

(declare-fun c!1347828 () Bool)

(declare-fun call!660573 () (Set Context!15176))

(assert (=> bm!660567 (= call!660573 (derivationStepZipperDown!2642 (ite c!1347826 (regOne!37809 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347830 (regTwo!37808 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347828 (regOne!37808 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (reg!18977 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))) (ite (or c!1347826 c!1347830) (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512)) (Context!15177 call!660571)) (h!76849 s1!1971)))))

(declare-fun b!7251940 () Bool)

(declare-fun e!4348318 () (Set Context!15176))

(assert (=> b!7251940 (= e!4348318 (set.union call!660573 call!660574))))

(declare-fun bm!660568 () Bool)

(assert (=> bm!660568 (= call!660576 ($colon$colon!2918 (exprs!8088 (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512))) (ite (or c!1347830 c!1347828) (regTwo!37808 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))))

(declare-fun b!7251942 () Bool)

(declare-fun e!4348316 () (Set Context!15176))

(assert (=> b!7251942 (= e!4348317 e!4348316)))

(assert (=> b!7251942 (= c!1347828 (is-Concat!27493 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun bm!660569 () Bool)

(assert (=> bm!660569 (= call!660574 (derivationStepZipperDown!2642 (ite c!1347826 (regTwo!37809 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (regOne!37808 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))) (ite c!1347826 (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512)) (Context!15177 call!660576)) (h!76849 s1!1971)))))

(declare-fun b!7251943 () Bool)

(declare-fun c!1347829 () Bool)

(assert (=> b!7251943 (= c!1347829 (is-Star!18648 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun e!4348315 () (Set Context!15176))

(assert (=> b!7251943 (= e!4348316 e!4348315)))

(declare-fun b!7251944 () Bool)

(declare-fun e!4348319 () Bool)

(assert (=> b!7251944 (= c!1347830 e!4348319)))

(declare-fun res!2941141 () Bool)

(assert (=> b!7251944 (=> (not res!2941141) (not e!4348319))))

(assert (=> b!7251944 (= res!2941141 (is-Concat!27493 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(assert (=> b!7251944 (= e!4348318 e!4348317)))

(declare-fun b!7251945 () Bool)

(declare-fun call!660572 () (Set Context!15176))

(assert (=> b!7251945 (= e!4348316 call!660572)))

(declare-fun b!7251946 () Bool)

(declare-fun e!4348320 () (Set Context!15176))

(assert (=> b!7251946 (= e!4348320 (set.insert (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512)) (as set.empty (Set Context!15176))))))

(declare-fun b!7251947 () Bool)

(assert (=> b!7251947 (= e!4348319 (nullable!7908 (regOne!37808 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))))

(declare-fun bm!660570 () Bool)

(assert (=> bm!660570 (= call!660575 call!660573)))

(declare-fun b!7251948 () Bool)

(assert (=> b!7251948 (= e!4348315 (as set.empty (Set Context!15176)))))

(declare-fun b!7251949 () Bool)

(assert (=> b!7251949 (= e!4348320 e!4348318)))

(assert (=> b!7251949 (= c!1347826 (is-Union!18648 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun bm!660571 () Bool)

(assert (=> bm!660571 (= call!660572 call!660575)))

(declare-fun b!7251941 () Bool)

(assert (=> b!7251941 (= e!4348315 call!660572)))

(declare-fun d!2254335 () Bool)

(declare-fun c!1347827 () Bool)

(assert (=> d!2254335 (= c!1347827 (and (is-ElementMatch!18648 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (= (c!1347686 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (h!76849 s1!1971))))))

(assert (=> d!2254335 (= (derivationStepZipperDown!2642 (ite c!1347734 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347738 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347736 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))) (ite (or c!1347734 c!1347738) lt!2585280 (Context!15177 call!660512)) (h!76849 s1!1971)) e!4348320)))

(assert (= (and d!2254335 c!1347827) b!7251946))

(assert (= (and d!2254335 (not c!1347827)) b!7251949))

(assert (= (and b!7251949 c!1347826) b!7251940))

(assert (= (and b!7251949 (not c!1347826)) b!7251944))

(assert (= (and b!7251944 res!2941141) b!7251947))

(assert (= (and b!7251944 c!1347830) b!7251939))

(assert (= (and b!7251944 (not c!1347830)) b!7251942))

(assert (= (and b!7251942 c!1347828) b!7251945))

(assert (= (and b!7251942 (not c!1347828)) b!7251943))

(assert (= (and b!7251943 c!1347829) b!7251941))

(assert (= (and b!7251943 (not c!1347829)) b!7251948))

(assert (= (or b!7251945 b!7251941) bm!660566))

(assert (= (or b!7251945 b!7251941) bm!660571))

(assert (= (or b!7251939 bm!660566) bm!660568))

(assert (= (or b!7251939 bm!660571) bm!660570))

(assert (= (or b!7251940 b!7251939) bm!660569))

(assert (= (or b!7251940 bm!660570) bm!660567))

(declare-fun m!7931374 () Bool)

(assert (=> bm!660567 m!7931374))

(declare-fun m!7931376 () Bool)

(assert (=> b!7251947 m!7931376))

(declare-fun m!7931378 () Bool)

(assert (=> b!7251946 m!7931378))

(declare-fun m!7931380 () Bool)

(assert (=> bm!660569 m!7931380))

(declare-fun m!7931382 () Bool)

(assert (=> bm!660568 m!7931382))

(assert (=> bm!660508 d!2254335))

(declare-fun d!2254337 () Bool)

(declare-fun c!1347831 () Bool)

(assert (=> d!2254337 (= c!1347831 (isEmpty!40544 (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849))))))

(declare-fun e!4348321 () Bool)

(assert (=> d!2254337 (= (matchZipper!3558 (derivationStepZipper!3426 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849))) e!4348321)))

(declare-fun b!7251950 () Bool)

(assert (=> b!7251950 (= e!4348321 (nullableZipper!2914 (derivationStepZipper!3426 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849)))))))

(declare-fun b!7251951 () Bool)

(assert (=> b!7251951 (= e!4348321 (matchZipper!3558 (derivationStepZipper!3426 (derivationStepZipper!3426 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (head!14905 (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849)))) (tail!14326 (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849)))))))

(assert (= (and d!2254337 c!1347831) b!7251950))

(assert (= (and d!2254337 (not c!1347831)) b!7251951))

(assert (=> d!2254337 m!7930946))

(declare-fun m!7931384 () Bool)

(assert (=> d!2254337 m!7931384))

(assert (=> b!7251950 m!7930944))

(declare-fun m!7931386 () Bool)

(assert (=> b!7251950 m!7931386))

(assert (=> b!7251951 m!7930946))

(declare-fun m!7931388 () Bool)

(assert (=> b!7251951 m!7931388))

(assert (=> b!7251951 m!7930944))

(assert (=> b!7251951 m!7931388))

(declare-fun m!7931390 () Bool)

(assert (=> b!7251951 m!7931390))

(assert (=> b!7251951 m!7930946))

(declare-fun m!7931392 () Bool)

(assert (=> b!7251951 m!7931392))

(assert (=> b!7251951 m!7931390))

(assert (=> b!7251951 m!7931392))

(declare-fun m!7931394 () Bool)

(assert (=> b!7251951 m!7931394))

(assert (=> b!7251613 d!2254337))

(declare-fun bs!1906463 () Bool)

(declare-fun d!2254339 () Bool)

(assert (= bs!1906463 (and d!2254339 b!7251507)))

(declare-fun lambda!444404 () Int)

(assert (=> bs!1906463 (= (= (head!14905 (++!16559 (t!384581 s1!1971) s2!1849)) (h!76849 s1!1971)) (= lambda!444404 lambda!444337))))

(declare-fun bs!1906464 () Bool)

(assert (= bs!1906464 (and d!2254339 d!2254195)))

(assert (=> bs!1906464 (= (= (head!14905 (++!16559 (t!384581 s1!1971) s2!1849)) (h!76849 s1!1971)) (= lambda!444404 lambda!444380))))

(declare-fun bs!1906465 () Bool)

(assert (= bs!1906465 (and d!2254339 d!2254317)))

(assert (=> bs!1906465 (= (= (head!14905 (++!16559 (t!384581 s1!1971) s2!1849)) (head!14905 s2!1849)) (= lambda!444404 lambda!444403))))

(assert (=> d!2254339 true))

(assert (=> d!2254339 (= (derivationStepZipper!3426 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (flatMap!2813 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) lambda!444404))))

(declare-fun bs!1906466 () Bool)

(assert (= bs!1906466 d!2254339))

(assert (=> bs!1906466 m!7930762))

(declare-fun m!7931396 () Bool)

(assert (=> bs!1906466 m!7931396))

(assert (=> b!7251613 d!2254339))

(declare-fun d!2254341 () Bool)

(assert (=> d!2254341 (= (head!14905 (++!16559 (t!384581 s1!1971) s2!1849)) (h!76849 (++!16559 (t!384581 s1!1971) s2!1849)))))

(assert (=> b!7251613 d!2254341))

(declare-fun d!2254343 () Bool)

(assert (=> d!2254343 (= (tail!14326 (++!16559 (t!384581 s1!1971) s2!1849)) (t!384581 (++!16559 (t!384581 s1!1971) s2!1849)))))

(assert (=> b!7251613 d!2254343))

(declare-fun d!2254345 () Bool)

(declare-fun res!2941142 () Bool)

(declare-fun e!4348322 () Bool)

(assert (=> d!2254345 (=> res!2941142 e!4348322)))

(assert (=> d!2254345 (= res!2941142 (is-Nil!70400 (exprs!8088 ct1!232)))))

(assert (=> d!2254345 (= (forall!17496 (exprs!8088 ct1!232) lambda!444376) e!4348322)))

(declare-fun b!7251952 () Bool)

(declare-fun e!4348323 () Bool)

(assert (=> b!7251952 (= e!4348322 e!4348323)))

(declare-fun res!2941143 () Bool)

(assert (=> b!7251952 (=> (not res!2941143) (not e!4348323))))

(assert (=> b!7251952 (= res!2941143 (dynLambda!28751 lambda!444376 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun b!7251953 () Bool)

(assert (=> b!7251953 (= e!4348323 (forall!17496 (t!384580 (exprs!8088 ct1!232)) lambda!444376))))

(assert (= (and d!2254345 (not res!2941142)) b!7251952))

(assert (= (and b!7251952 res!2941143) b!7251953))

(declare-fun b_lambda!278535 () Bool)

(assert (=> (not b_lambda!278535) (not b!7251952)))

(declare-fun m!7931398 () Bool)

(assert (=> b!7251952 m!7931398))

(declare-fun m!7931400 () Bool)

(assert (=> b!7251953 m!7931400))

(assert (=> d!2254189 d!2254345))

(declare-fun d!2254347 () Bool)

(declare-fun c!1347834 () Bool)

(assert (=> d!2254347 (= c!1347834 (is-Nil!70400 lt!2585393))))

(declare-fun e!4348326 () (Set Regex!18648))

(assert (=> d!2254347 (= (content!14615 lt!2585393) e!4348326)))

(declare-fun b!7251958 () Bool)

(assert (=> b!7251958 (= e!4348326 (as set.empty (Set Regex!18648)))))

(declare-fun b!7251959 () Bool)

(assert (=> b!7251959 (= e!4348326 (set.union (set.insert (h!76848 lt!2585393) (as set.empty (Set Regex!18648))) (content!14615 (t!384580 lt!2585393))))))

(assert (= (and d!2254347 c!1347834) b!7251958))

(assert (= (and d!2254347 (not c!1347834)) b!7251959))

(declare-fun m!7931402 () Bool)

(assert (=> b!7251959 m!7931402))

(declare-fun m!7931404 () Bool)

(assert (=> b!7251959 m!7931404))

(assert (=> d!2254205 d!2254347))

(declare-fun d!2254349 () Bool)

(declare-fun c!1347835 () Bool)

(assert (=> d!2254349 (= c!1347835 (is-Nil!70400 (exprs!8088 ct1!232)))))

(declare-fun e!4348327 () (Set Regex!18648))

(assert (=> d!2254349 (= (content!14615 (exprs!8088 ct1!232)) e!4348327)))

(declare-fun b!7251960 () Bool)

(assert (=> b!7251960 (= e!4348327 (as set.empty (Set Regex!18648)))))

(declare-fun b!7251961 () Bool)

(assert (=> b!7251961 (= e!4348327 (set.union (set.insert (h!76848 (exprs!8088 ct1!232)) (as set.empty (Set Regex!18648))) (content!14615 (t!384580 (exprs!8088 ct1!232)))))))

(assert (= (and d!2254349 c!1347835) b!7251960))

(assert (= (and d!2254349 (not c!1347835)) b!7251961))

(declare-fun m!7931406 () Bool)

(assert (=> b!7251961 m!7931406))

(assert (=> b!7251961 m!7931272))

(assert (=> d!2254205 d!2254349))

(declare-fun d!2254351 () Bool)

(declare-fun c!1347836 () Bool)

(assert (=> d!2254351 (= c!1347836 (is-Nil!70400 (exprs!8088 ct2!328)))))

(declare-fun e!4348328 () (Set Regex!18648))

(assert (=> d!2254351 (= (content!14615 (exprs!8088 ct2!328)) e!4348328)))

(declare-fun b!7251962 () Bool)

(assert (=> b!7251962 (= e!4348328 (as set.empty (Set Regex!18648)))))

(declare-fun b!7251963 () Bool)

(assert (=> b!7251963 (= e!4348328 (set.union (set.insert (h!76848 (exprs!8088 ct2!328)) (as set.empty (Set Regex!18648))) (content!14615 (t!384580 (exprs!8088 ct2!328)))))))

(assert (= (and d!2254351 c!1347836) b!7251962))

(assert (= (and d!2254351 (not c!1347836)) b!7251963))

(declare-fun m!7931408 () Bool)

(assert (=> b!7251963 m!7931408))

(declare-fun m!7931410 () Bool)

(assert (=> b!7251963 m!7931410))

(assert (=> d!2254205 d!2254351))

(declare-fun d!2254353 () Bool)

(assert (=> d!2254353 (= (isEmpty!40544 (++!16559 (t!384581 s1!1971) s2!1849)) (is-Nil!70401 (++!16559 (t!384581 s1!1971) s2!1849)))))

(assert (=> d!2254155 d!2254353))

(declare-fun d!2254355 () Bool)

(declare-fun lt!2585439 () Int)

(assert (=> d!2254355 (>= lt!2585439 0)))

(declare-fun e!4348331 () Int)

(assert (=> d!2254355 (= lt!2585439 e!4348331)))

(declare-fun c!1347839 () Bool)

(assert (=> d!2254355 (= c!1347839 (is-Nil!70400 lt!2585393))))

(assert (=> d!2254355 (= (size!41719 lt!2585393) lt!2585439)))

(declare-fun b!7251968 () Bool)

(assert (=> b!7251968 (= e!4348331 0)))

(declare-fun b!7251969 () Bool)

(assert (=> b!7251969 (= e!4348331 (+ 1 (size!41719 (t!384580 lt!2585393))))))

(assert (= (and d!2254355 c!1347839) b!7251968))

(assert (= (and d!2254355 (not c!1347839)) b!7251969))

(declare-fun m!7931412 () Bool)

(assert (=> b!7251969 m!7931412))

(assert (=> b!7251703 d!2254355))

(declare-fun d!2254357 () Bool)

(declare-fun lt!2585440 () Int)

(assert (=> d!2254357 (>= lt!2585440 0)))

(declare-fun e!4348332 () Int)

(assert (=> d!2254357 (= lt!2585440 e!4348332)))

(declare-fun c!1347840 () Bool)

(assert (=> d!2254357 (= c!1347840 (is-Nil!70400 (exprs!8088 ct1!232)))))

(assert (=> d!2254357 (= (size!41719 (exprs!8088 ct1!232)) lt!2585440)))

(declare-fun b!7251970 () Bool)

(assert (=> b!7251970 (= e!4348332 0)))

(declare-fun b!7251971 () Bool)

(assert (=> b!7251971 (= e!4348332 (+ 1 (size!41719 (t!384580 (exprs!8088 ct1!232)))))))

(assert (= (and d!2254357 c!1347840) b!7251970))

(assert (= (and d!2254357 (not c!1347840)) b!7251971))

(assert (=> b!7251971 m!7931278))

(assert (=> b!7251703 d!2254357))

(declare-fun d!2254359 () Bool)

(declare-fun lt!2585441 () Int)

(assert (=> d!2254359 (>= lt!2585441 0)))

(declare-fun e!4348333 () Int)

(assert (=> d!2254359 (= lt!2585441 e!4348333)))

(declare-fun c!1347841 () Bool)

(assert (=> d!2254359 (= c!1347841 (is-Nil!70400 (exprs!8088 ct2!328)))))

(assert (=> d!2254359 (= (size!41719 (exprs!8088 ct2!328)) lt!2585441)))

(declare-fun b!7251972 () Bool)

(assert (=> b!7251972 (= e!4348333 0)))

(declare-fun b!7251973 () Bool)

(assert (=> b!7251973 (= e!4348333 (+ 1 (size!41719 (t!384580 (exprs!8088 ct2!328)))))))

(assert (= (and d!2254359 c!1347841) b!7251972))

(assert (= (and d!2254359 (not c!1347841)) b!7251973))

(declare-fun m!7931414 () Bool)

(assert (=> b!7251973 m!7931414))

(assert (=> b!7251703 d!2254359))

(declare-fun b!7251974 () Bool)

(declare-fun e!4348336 () (Set Context!15176))

(declare-fun call!660580 () (Set Context!15176))

(declare-fun call!660581 () (Set Context!15176))

(assert (=> b!7251974 (= e!4348336 (set.union call!660580 call!660581))))

(declare-fun bm!660572 () Bool)

(declare-fun call!660577 () List!70524)

(declare-fun call!660582 () List!70524)

(assert (=> bm!660572 (= call!660577 call!660582)))

(declare-fun c!1347842 () Bool)

(declare-fun call!660579 () (Set Context!15176))

(declare-fun c!1347846 () Bool)

(declare-fun c!1347844 () Bool)

(declare-fun bm!660573 () Bool)

(assert (=> bm!660573 (= call!660579 (derivationStepZipperDown!2642 (ite c!1347842 (regOne!37809 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347846 (regTwo!37808 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347844 (regOne!37808 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (reg!18977 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))) (ite (or c!1347842 c!1347846) (ite c!1347734 lt!2585280 (Context!15177 call!660517)) (Context!15177 call!660577)) (h!76849 s1!1971)))))

(declare-fun b!7251975 () Bool)

(declare-fun e!4348337 () (Set Context!15176))

(assert (=> b!7251975 (= e!4348337 (set.union call!660579 call!660580))))

(declare-fun bm!660574 () Bool)

(assert (=> bm!660574 (= call!660582 ($colon$colon!2918 (exprs!8088 (ite c!1347734 lt!2585280 (Context!15177 call!660517))) (ite (or c!1347846 c!1347844) (regTwo!37808 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))))

(declare-fun b!7251977 () Bool)

(declare-fun e!4348335 () (Set Context!15176))

(assert (=> b!7251977 (= e!4348336 e!4348335)))

(assert (=> b!7251977 (= c!1347844 (is-Concat!27493 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun bm!660575 () Bool)

(assert (=> bm!660575 (= call!660580 (derivationStepZipperDown!2642 (ite c!1347842 (regTwo!37809 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (regOne!37808 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))) (ite c!1347842 (ite c!1347734 lt!2585280 (Context!15177 call!660517)) (Context!15177 call!660582)) (h!76849 s1!1971)))))

(declare-fun b!7251978 () Bool)

(declare-fun c!1347845 () Bool)

(assert (=> b!7251978 (= c!1347845 (is-Star!18648 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun e!4348334 () (Set Context!15176))

(assert (=> b!7251978 (= e!4348335 e!4348334)))

(declare-fun b!7251979 () Bool)

(declare-fun e!4348338 () Bool)

(assert (=> b!7251979 (= c!1347846 e!4348338)))

(declare-fun res!2941144 () Bool)

(assert (=> b!7251979 (=> (not res!2941144) (not e!4348338))))

(assert (=> b!7251979 (= res!2941144 (is-Concat!27493 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(assert (=> b!7251979 (= e!4348337 e!4348336)))

(declare-fun b!7251980 () Bool)

(declare-fun call!660578 () (Set Context!15176))

(assert (=> b!7251980 (= e!4348335 call!660578)))

(declare-fun e!4348339 () (Set Context!15176))

(declare-fun b!7251981 () Bool)

(assert (=> b!7251981 (= e!4348339 (set.insert (ite c!1347734 lt!2585280 (Context!15177 call!660517)) (as set.empty (Set Context!15176))))))

(declare-fun b!7251982 () Bool)

(assert (=> b!7251982 (= e!4348338 (nullable!7908 (regOne!37808 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))))

(declare-fun bm!660576 () Bool)

(assert (=> bm!660576 (= call!660581 call!660579)))

(declare-fun b!7251983 () Bool)

(assert (=> b!7251983 (= e!4348334 (as set.empty (Set Context!15176)))))

(declare-fun b!7251984 () Bool)

(assert (=> b!7251984 (= e!4348339 e!4348337)))

(assert (=> b!7251984 (= c!1347842 (is-Union!18648 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))))))

(declare-fun bm!660577 () Bool)

(assert (=> bm!660577 (= call!660578 call!660581)))

(declare-fun b!7251976 () Bool)

(assert (=> b!7251976 (= e!4348334 call!660578)))

(declare-fun d!2254361 () Bool)

(declare-fun c!1347843 () Bool)

(assert (=> d!2254361 (= c!1347843 (and (is-ElementMatch!18648 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (= (c!1347686 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232))))) (h!76849 s1!1971))))))

(assert (=> d!2254361 (= (derivationStepZipperDown!2642 (ite c!1347734 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (ite c!1347734 lt!2585280 (Context!15177 call!660517)) (h!76849 s1!1971)) e!4348339)))

(assert (= (and d!2254361 c!1347843) b!7251981))

(assert (= (and d!2254361 (not c!1347843)) b!7251984))

(assert (= (and b!7251984 c!1347842) b!7251975))

(assert (= (and b!7251984 (not c!1347842)) b!7251979))

(assert (= (and b!7251979 res!2941144) b!7251982))

(assert (= (and b!7251979 c!1347846) b!7251974))

(assert (= (and b!7251979 (not c!1347846)) b!7251977))

(assert (= (and b!7251977 c!1347844) b!7251980))

(assert (= (and b!7251977 (not c!1347844)) b!7251978))

(assert (= (and b!7251978 c!1347845) b!7251976))

(assert (= (and b!7251978 (not c!1347845)) b!7251983))

(assert (= (or b!7251980 b!7251976) bm!660572))

(assert (= (or b!7251980 b!7251976) bm!660577))

(assert (= (or b!7251974 bm!660572) bm!660574))

(assert (= (or b!7251974 bm!660577) bm!660576))

(assert (= (or b!7251975 b!7251974) bm!660575))

(assert (= (or b!7251975 bm!660576) bm!660573))

(declare-fun m!7931416 () Bool)

(assert (=> bm!660573 m!7931416))

(declare-fun m!7931418 () Bool)

(assert (=> b!7251982 m!7931418))

(declare-fun m!7931420 () Bool)

(assert (=> b!7251981 m!7931420))

(declare-fun m!7931422 () Bool)

(assert (=> bm!660575 m!7931422))

(declare-fun m!7931424 () Bool)

(assert (=> bm!660574 m!7931424))

(assert (=> bm!660510 d!2254361))

(declare-fun d!2254363 () Bool)

(declare-fun c!1347847 () Bool)

(assert (=> d!2254363 (= c!1347847 (isEmpty!40544 (tail!14326 (t!384581 s1!1971))))))

(declare-fun e!4348340 () Bool)

(assert (=> d!2254363 (= (matchZipper!3558 (derivationStepZipper!3426 lt!2585278 (head!14905 (t!384581 s1!1971))) (tail!14326 (t!384581 s1!1971))) e!4348340)))

(declare-fun b!7251985 () Bool)

(assert (=> b!7251985 (= e!4348340 (nullableZipper!2914 (derivationStepZipper!3426 lt!2585278 (head!14905 (t!384581 s1!1971)))))))

(declare-fun b!7251986 () Bool)

(assert (=> b!7251986 (= e!4348340 (matchZipper!3558 (derivationStepZipper!3426 (derivationStepZipper!3426 lt!2585278 (head!14905 (t!384581 s1!1971))) (head!14905 (tail!14326 (t!384581 s1!1971)))) (tail!14326 (tail!14326 (t!384581 s1!1971)))))))

(assert (= (and d!2254363 c!1347847) b!7251985))

(assert (= (and d!2254363 (not c!1347847)) b!7251986))

(assert (=> d!2254363 m!7931048))

(declare-fun m!7931426 () Bool)

(assert (=> d!2254363 m!7931426))

(assert (=> b!7251985 m!7931046))

(declare-fun m!7931428 () Bool)

(assert (=> b!7251985 m!7931428))

(assert (=> b!7251986 m!7931048))

(declare-fun m!7931430 () Bool)

(assert (=> b!7251986 m!7931430))

(assert (=> b!7251986 m!7931046))

(assert (=> b!7251986 m!7931430))

(declare-fun m!7931432 () Bool)

(assert (=> b!7251986 m!7931432))

(assert (=> b!7251986 m!7931048))

(declare-fun m!7931434 () Bool)

(assert (=> b!7251986 m!7931434))

(assert (=> b!7251986 m!7931432))

(assert (=> b!7251986 m!7931434))

(declare-fun m!7931436 () Bool)

(assert (=> b!7251986 m!7931436))

(assert (=> b!7251687 d!2254363))

(declare-fun bs!1906467 () Bool)

(declare-fun d!2254365 () Bool)

(assert (= bs!1906467 (and d!2254365 b!7251507)))

(declare-fun lambda!444405 () Int)

(assert (=> bs!1906467 (= (= (head!14905 (t!384581 s1!1971)) (h!76849 s1!1971)) (= lambda!444405 lambda!444337))))

(declare-fun bs!1906468 () Bool)

(assert (= bs!1906468 (and d!2254365 d!2254195)))

(assert (=> bs!1906468 (= (= (head!14905 (t!384581 s1!1971)) (h!76849 s1!1971)) (= lambda!444405 lambda!444380))))

(declare-fun bs!1906469 () Bool)

(assert (= bs!1906469 (and d!2254365 d!2254317)))

(assert (=> bs!1906469 (= (= (head!14905 (t!384581 s1!1971)) (head!14905 s2!1849)) (= lambda!444405 lambda!444403))))

(declare-fun bs!1906470 () Bool)

(assert (= bs!1906470 (and d!2254365 d!2254339)))

(assert (=> bs!1906470 (= (= (head!14905 (t!384581 s1!1971)) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (= lambda!444405 lambda!444404))))

(assert (=> d!2254365 true))

(assert (=> d!2254365 (= (derivationStepZipper!3426 lt!2585278 (head!14905 (t!384581 s1!1971))) (flatMap!2813 lt!2585278 lambda!444405))))

(declare-fun bs!1906471 () Bool)

(assert (= bs!1906471 d!2254365))

(declare-fun m!7931438 () Bool)

(assert (=> bs!1906471 m!7931438))

(assert (=> b!7251687 d!2254365))

(declare-fun d!2254367 () Bool)

(assert (=> d!2254367 (= (head!14905 (t!384581 s1!1971)) (h!76849 (t!384581 s1!1971)))))

(assert (=> b!7251687 d!2254367))

(declare-fun d!2254369 () Bool)

(assert (=> d!2254369 (= (tail!14326 (t!384581 s1!1971)) (t!384581 (t!384581 s1!1971)))))

(assert (=> b!7251687 d!2254369))

(declare-fun d!2254371 () Bool)

(declare-fun c!1347848 () Bool)

(assert (=> d!2254371 (= c!1347848 (isEmpty!40544 (tail!14326 s1!1971)))))

(declare-fun e!4348341 () Bool)

(assert (=> d!2254371 (= (matchZipper!3558 (derivationStepZipper!3426 lt!2585273 (head!14905 s1!1971)) (tail!14326 s1!1971)) e!4348341)))

(declare-fun b!7251987 () Bool)

(assert (=> b!7251987 (= e!4348341 (nullableZipper!2914 (derivationStepZipper!3426 lt!2585273 (head!14905 s1!1971))))))

(declare-fun b!7251988 () Bool)

(assert (=> b!7251988 (= e!4348341 (matchZipper!3558 (derivationStepZipper!3426 (derivationStepZipper!3426 lt!2585273 (head!14905 s1!1971)) (head!14905 (tail!14326 s1!1971))) (tail!14326 (tail!14326 s1!1971))))))

(assert (= (and d!2254371 c!1347848) b!7251987))

(assert (= (and d!2254371 (not c!1347848)) b!7251988))

(assert (=> d!2254371 m!7931032))

(declare-fun m!7931440 () Bool)

(assert (=> d!2254371 m!7931440))

(assert (=> b!7251987 m!7931030))

(declare-fun m!7931442 () Bool)

(assert (=> b!7251987 m!7931442))

(assert (=> b!7251988 m!7931032))

(declare-fun m!7931444 () Bool)

(assert (=> b!7251988 m!7931444))

(assert (=> b!7251988 m!7931030))

(assert (=> b!7251988 m!7931444))

(declare-fun m!7931446 () Bool)

(assert (=> b!7251988 m!7931446))

(assert (=> b!7251988 m!7931032))

(declare-fun m!7931448 () Bool)

(assert (=> b!7251988 m!7931448))

(assert (=> b!7251988 m!7931446))

(assert (=> b!7251988 m!7931448))

(declare-fun m!7931450 () Bool)

(assert (=> b!7251988 m!7931450))

(assert (=> b!7251685 d!2254371))

(declare-fun bs!1906472 () Bool)

(declare-fun d!2254373 () Bool)

(assert (= bs!1906472 (and d!2254373 b!7251507)))

(declare-fun lambda!444406 () Int)

(assert (=> bs!1906472 (= (= (head!14905 s1!1971) (h!76849 s1!1971)) (= lambda!444406 lambda!444337))))

(declare-fun bs!1906473 () Bool)

(assert (= bs!1906473 (and d!2254373 d!2254195)))

(assert (=> bs!1906473 (= (= (head!14905 s1!1971) (h!76849 s1!1971)) (= lambda!444406 lambda!444380))))

(declare-fun bs!1906474 () Bool)

(assert (= bs!1906474 (and d!2254373 d!2254365)))

(assert (=> bs!1906474 (= (= (head!14905 s1!1971) (head!14905 (t!384581 s1!1971))) (= lambda!444406 lambda!444405))))

(declare-fun bs!1906475 () Bool)

(assert (= bs!1906475 (and d!2254373 d!2254317)))

(assert (=> bs!1906475 (= (= (head!14905 s1!1971) (head!14905 s2!1849)) (= lambda!444406 lambda!444403))))

(declare-fun bs!1906476 () Bool)

(assert (= bs!1906476 (and d!2254373 d!2254339)))

(assert (=> bs!1906476 (= (= (head!14905 s1!1971) (head!14905 (++!16559 (t!384581 s1!1971) s2!1849))) (= lambda!444406 lambda!444404))))

(assert (=> d!2254373 true))

(assert (=> d!2254373 (= (derivationStepZipper!3426 lt!2585273 (head!14905 s1!1971)) (flatMap!2813 lt!2585273 lambda!444406))))

(declare-fun bs!1906477 () Bool)

(assert (= bs!1906477 d!2254373))

(declare-fun m!7931452 () Bool)

(assert (=> bs!1906477 m!7931452))

(assert (=> b!7251685 d!2254373))

(declare-fun d!2254375 () Bool)

(assert (=> d!2254375 (= (head!14905 s1!1971) (h!76849 s1!1971))))

(assert (=> b!7251685 d!2254375))

(declare-fun d!2254377 () Bool)

(assert (=> d!2254377 (= (tail!14326 s1!1971) (t!384581 s1!1971))))

(assert (=> b!7251685 d!2254377))

(assert (=> d!2254153 d!2254161))

(declare-fun d!2254379 () Bool)

(assert (=> d!2254379 (forall!17496 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)) lambda!444373)))

(declare-fun lt!2585442 () Unit!163882)

(assert (=> d!2254379 (= lt!2585442 (choose!56028 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444373))))

(assert (=> d!2254379 (forall!17496 (exprs!8088 lt!2585269) lambda!444373)))

(assert (=> d!2254379 (= (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444373) lt!2585442)))

(declare-fun bs!1906478 () Bool)

(assert (= bs!1906478 d!2254379))

(assert (=> bs!1906478 m!7930760))

(assert (=> bs!1906478 m!7930760))

(declare-fun m!7931454 () Bool)

(assert (=> bs!1906478 m!7931454))

(declare-fun m!7931456 () Bool)

(assert (=> bs!1906478 m!7931456))

(declare-fun m!7931458 () Bool)

(assert (=> bs!1906478 m!7931458))

(assert (=> d!2254153 d!2254379))

(assert (=> d!2254153 d!2254149))

(declare-fun bs!1906479 () Bool)

(declare-fun d!2254381 () Bool)

(assert (= bs!1906479 (and d!2254381 d!2254191)))

(declare-fun lambda!444409 () Int)

(assert (=> bs!1906479 (= lambda!444409 lambda!444377)))

(declare-fun bs!1906480 () Bool)

(assert (= bs!1906480 (and d!2254381 b!7251515)))

(assert (=> bs!1906480 (= lambda!444409 lambda!444335)))

(declare-fun bs!1906481 () Bool)

(assert (= bs!1906481 (and d!2254381 d!2254153)))

(assert (=> bs!1906481 (= lambda!444409 lambda!444373)))

(declare-fun bs!1906482 () Bool)

(assert (= bs!1906482 (and d!2254381 d!2254203)))

(assert (=> bs!1906482 (= lambda!444409 lambda!444381)))

(declare-fun bs!1906483 () Bool)

(assert (= bs!1906483 (and d!2254381 d!2254189)))

(assert (=> bs!1906483 (= lambda!444409 lambda!444376)))

(assert (=> d!2254381 (matchZipper!3558 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) (++!16559 (t!384581 s1!1971) s2!1849))))

(declare-fun lt!2585445 () Unit!163882)

(assert (=> d!2254381 (= lt!2585445 (lemmaConcatPreservesForall!1455 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444409))))

(assert (=> d!2254381 true))

(declare-fun _$56!512 () Unit!163882)

(assert (=> d!2254381 (= (choose!56027 lt!2585269 ct2!328 (t!384581 s1!1971) s2!1849) _$56!512)))

(declare-fun bs!1906484 () Bool)

(assert (= bs!1906484 d!2254381))

(assert (=> bs!1906484 m!7930762))

(assert (=> bs!1906484 m!7930760))

(assert (=> bs!1906484 m!7930764))

(declare-fun m!7931460 () Bool)

(assert (=> bs!1906484 m!7931460))

(assert (=> bs!1906484 m!7930762))

(assert (=> bs!1906484 m!7930764))

(assert (=> bs!1906484 m!7930766))

(assert (=> d!2254153 d!2254381))

(declare-fun d!2254383 () Bool)

(declare-fun c!1347849 () Bool)

(assert (=> d!2254383 (= c!1347849 (isEmpty!40544 (t!384581 s1!1971)))))

(declare-fun e!4348342 () Bool)

(assert (=> d!2254383 (= (matchZipper!3558 (set.insert lt!2585269 (as set.empty (Set Context!15176))) (t!384581 s1!1971)) e!4348342)))

(declare-fun b!7251989 () Bool)

(assert (=> b!7251989 (= e!4348342 (nullableZipper!2914 (set.insert lt!2585269 (as set.empty (Set Context!15176)))))))

(declare-fun b!7251990 () Bool)

(assert (=> b!7251990 (= e!4348342 (matchZipper!3558 (derivationStepZipper!3426 (set.insert lt!2585269 (as set.empty (Set Context!15176))) (head!14905 (t!384581 s1!1971))) (tail!14326 (t!384581 s1!1971))))))

(assert (= (and d!2254383 c!1347849) b!7251989))

(assert (= (and d!2254383 (not c!1347849)) b!7251990))

(assert (=> d!2254383 m!7931040))

(assert (=> b!7251989 m!7930932))

(declare-fun m!7931462 () Bool)

(assert (=> b!7251989 m!7931462))

(assert (=> b!7251990 m!7931044))

(assert (=> b!7251990 m!7930932))

(assert (=> b!7251990 m!7931044))

(declare-fun m!7931464 () Bool)

(assert (=> b!7251990 m!7931464))

(assert (=> b!7251990 m!7931048))

(assert (=> b!7251990 m!7931464))

(assert (=> b!7251990 m!7931048))

(declare-fun m!7931466 () Bool)

(assert (=> b!7251990 m!7931466))

(assert (=> d!2254153 d!2254383))

(assert (=> d!2254153 d!2254155))

(assert (=> d!2254165 d!2254167))

(declare-fun d!2254385 () Bool)

(assert (=> d!2254385 (= (flatMap!2813 lt!2585277 lambda!444337) (dynLambda!28747 lambda!444337 lt!2585264))))

(assert (=> d!2254385 true))

(declare-fun _$13!4577 () Unit!163882)

(assert (=> d!2254385 (= (choose!56029 lt!2585277 lt!2585264 lambda!444337) _$13!4577)))

(declare-fun b_lambda!278537 () Bool)

(assert (=> (not b_lambda!278537) (not d!2254385)))

(declare-fun bs!1906485 () Bool)

(assert (= bs!1906485 d!2254385))

(assert (=> bs!1906485 m!7930744))

(assert (=> bs!1906485 m!7930976))

(assert (=> d!2254165 d!2254385))

(declare-fun d!2254387 () Bool)

(declare-fun res!2941145 () Bool)

(declare-fun e!4348343 () Bool)

(assert (=> d!2254387 (=> res!2941145 e!4348343)))

(assert (=> d!2254387 (= res!2941145 (is-Nil!70400 (exprs!8088 ct2!328)))))

(assert (=> d!2254387 (= (forall!17496 (exprs!8088 ct2!328) lambda!444377) e!4348343)))

(declare-fun b!7251991 () Bool)

(declare-fun e!4348344 () Bool)

(assert (=> b!7251991 (= e!4348343 e!4348344)))

(declare-fun res!2941146 () Bool)

(assert (=> b!7251991 (=> (not res!2941146) (not e!4348344))))

(assert (=> b!7251991 (= res!2941146 (dynLambda!28751 lambda!444377 (h!76848 (exprs!8088 ct2!328))))))

(declare-fun b!7251992 () Bool)

(assert (=> b!7251992 (= e!4348344 (forall!17496 (t!384580 (exprs!8088 ct2!328)) lambda!444377))))

(assert (= (and d!2254387 (not res!2941145)) b!7251991))

(assert (= (and b!7251991 res!2941146) b!7251992))

(declare-fun b_lambda!278539 () Bool)

(assert (=> (not b_lambda!278539) (not b!7251991)))

(declare-fun m!7931468 () Bool)

(assert (=> b!7251991 m!7931468))

(declare-fun m!7931470 () Bool)

(assert (=> b!7251992 m!7931470))

(assert (=> d!2254191 d!2254387))

(declare-fun d!2254389 () Bool)

(declare-fun res!2941151 () Bool)

(declare-fun e!4348349 () Bool)

(assert (=> d!2254389 (=> res!2941151 e!4348349)))

(assert (=> d!2254389 (= res!2941151 (is-Nil!70402 lt!2585268))))

(assert (=> d!2254389 (= (forall!17495 lt!2585268 lambda!444367) e!4348349)))

(declare-fun b!7251997 () Bool)

(declare-fun e!4348350 () Bool)

(assert (=> b!7251997 (= e!4348349 e!4348350)))

(declare-fun res!2941152 () Bool)

(assert (=> b!7251997 (=> (not res!2941152) (not e!4348350))))

(assert (=> b!7251997 (= res!2941152 (dynLambda!28746 lambda!444367 (h!76850 lt!2585268)))))

(declare-fun b!7251998 () Bool)

(assert (=> b!7251998 (= e!4348350 (forall!17495 (t!384582 lt!2585268) lambda!444367))))

(assert (= (and d!2254389 (not res!2941151)) b!7251997))

(assert (= (and b!7251997 res!2941152) b!7251998))

(declare-fun b_lambda!278541 () Bool)

(assert (=> (not b_lambda!278541) (not b!7251997)))

(declare-fun m!7931472 () Bool)

(assert (=> b!7251997 m!7931472))

(declare-fun m!7931474 () Bool)

(assert (=> b!7251998 m!7931474))

(assert (=> d!2254137 d!2254389))

(declare-fun d!2254391 () Bool)

(assert (=> d!2254391 (= (nullable!7908 (h!76848 (exprs!8088 lt!2585264))) (nullableFct!3103 (h!76848 (exprs!8088 lt!2585264))))))

(declare-fun bs!1906486 () Bool)

(assert (= bs!1906486 d!2254391))

(declare-fun m!7931476 () Bool)

(assert (=> bs!1906486 m!7931476))

(assert (=> b!7251681 d!2254391))

(assert (=> b!7251698 d!2254309))

(declare-fun d!2254393 () Bool)

(declare-fun lt!2585446 () Int)

(assert (=> d!2254393 (>= lt!2585446 0)))

(declare-fun e!4348351 () Int)

(assert (=> d!2254393 (= lt!2585446 e!4348351)))

(declare-fun c!1347850 () Bool)

(assert (=> d!2254393 (= c!1347850 (is-Nil!70400 lt!2585384))))

(assert (=> d!2254393 (= (size!41719 lt!2585384) lt!2585446)))

(declare-fun b!7251999 () Bool)

(assert (=> b!7251999 (= e!4348351 0)))

(declare-fun b!7252000 () Bool)

(assert (=> b!7252000 (= e!4348351 (+ 1 (size!41719 (t!384580 lt!2585384))))))

(assert (= (and d!2254393 c!1347850) b!7251999))

(assert (= (and d!2254393 (not c!1347850)) b!7252000))

(declare-fun m!7931478 () Bool)

(assert (=> b!7252000 m!7931478))

(assert (=> b!7251624 d!2254393))

(declare-fun d!2254395 () Bool)

(declare-fun lt!2585447 () Int)

(assert (=> d!2254395 (>= lt!2585447 0)))

(declare-fun e!4348352 () Int)

(assert (=> d!2254395 (= lt!2585447 e!4348352)))

(declare-fun c!1347851 () Bool)

(assert (=> d!2254395 (= c!1347851 (is-Nil!70400 (exprs!8088 lt!2585269)))))

(assert (=> d!2254395 (= (size!41719 (exprs!8088 lt!2585269)) lt!2585447)))

(declare-fun b!7252001 () Bool)

(assert (=> b!7252001 (= e!4348352 0)))

(declare-fun b!7252002 () Bool)

(assert (=> b!7252002 (= e!4348352 (+ 1 (size!41719 (t!384580 (exprs!8088 lt!2585269)))))))

(assert (= (and d!2254395 c!1347851) b!7252001))

(assert (= (and d!2254395 (not c!1347851)) b!7252002))

(assert (=> b!7252002 m!7931266))

(assert (=> b!7251624 d!2254395))

(assert (=> b!7251624 d!2254359))

(assert (=> bs!1906413 d!2254151))

(declare-fun d!2254397 () Bool)

(declare-fun c!1347852 () Bool)

(assert (=> d!2254397 (= c!1347852 (is-Nil!70400 lt!2585384))))

(declare-fun e!4348353 () (Set Regex!18648))

(assert (=> d!2254397 (= (content!14615 lt!2585384) e!4348353)))

(declare-fun b!7252003 () Bool)

(assert (=> b!7252003 (= e!4348353 (as set.empty (Set Regex!18648)))))

(declare-fun b!7252004 () Bool)

(assert (=> b!7252004 (= e!4348353 (set.union (set.insert (h!76848 lt!2585384) (as set.empty (Set Regex!18648))) (content!14615 (t!384580 lt!2585384))))))

(assert (= (and d!2254397 c!1347852) b!7252003))

(assert (= (and d!2254397 (not c!1347852)) b!7252004))

(declare-fun m!7931480 () Bool)

(assert (=> b!7252004 m!7931480))

(declare-fun m!7931482 () Bool)

(assert (=> b!7252004 m!7931482))

(assert (=> d!2254161 d!2254397))

(declare-fun d!2254399 () Bool)

(declare-fun c!1347853 () Bool)

(assert (=> d!2254399 (= c!1347853 (is-Nil!70400 (exprs!8088 lt!2585269)))))

(declare-fun e!4348354 () (Set Regex!18648))

(assert (=> d!2254399 (= (content!14615 (exprs!8088 lt!2585269)) e!4348354)))

(declare-fun b!7252005 () Bool)

(assert (=> b!7252005 (= e!4348354 (as set.empty (Set Regex!18648)))))

(declare-fun b!7252006 () Bool)

(assert (=> b!7252006 (= e!4348354 (set.union (set.insert (h!76848 (exprs!8088 lt!2585269)) (as set.empty (Set Regex!18648))) (content!14615 (t!384580 (exprs!8088 lt!2585269)))))))

(assert (= (and d!2254399 c!1347853) b!7252005))

(assert (= (and d!2254399 (not c!1347853)) b!7252006))

(declare-fun m!7931484 () Bool)

(assert (=> b!7252006 m!7931484))

(assert (=> b!7252006 m!7931260))

(assert (=> d!2254161 d!2254399))

(assert (=> d!2254161 d!2254351))

(declare-fun bs!1906487 () Bool)

(declare-fun d!2254401 () Bool)

(assert (= bs!1906487 (and d!2254401 d!2254137)))

(declare-fun lambda!444410 () Int)

(assert (=> bs!1906487 (not (= lambda!444410 lambda!444367))))

(declare-fun bs!1906488 () Bool)

(assert (= bs!1906488 (and d!2254401 d!2254295)))

(assert (=> bs!1906488 (= lambda!444410 lambda!444402)))

(declare-fun bs!1906489 () Bool)

(assert (= bs!1906489 (and d!2254401 d!2254289)))

(assert (=> bs!1906489 (= lambda!444410 lambda!444401)))

(declare-fun bs!1906490 () Bool)

(assert (= bs!1906490 (and d!2254401 d!2254139)))

(assert (=> bs!1906490 (not (= lambda!444410 lambda!444370))))

(declare-fun bs!1906491 () Bool)

(assert (= bs!1906491 (and d!2254401 b!7251514)))

(assert (=> bs!1906491 (not (= lambda!444410 lambda!444336))))

(assert (=> d!2254401 (= (nullableZipper!2914 (set.insert ct2!328 (as set.empty (Set Context!15176)))) (exists!4374 (set.insert ct2!328 (as set.empty (Set Context!15176))) lambda!444410))))

(declare-fun bs!1906492 () Bool)

(assert (= bs!1906492 d!2254401))

(assert (=> bs!1906492 m!7930736))

(declare-fun m!7931486 () Bool)

(assert (=> bs!1906492 m!7931486))

(assert (=> b!7251580 d!2254401))

(declare-fun d!2254403 () Bool)

(declare-fun res!2941153 () Bool)

(declare-fun e!4348355 () Bool)

(assert (=> d!2254403 (=> res!2941153 e!4348355)))

(assert (=> d!2254403 (= res!2941153 (is-Nil!70400 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))))))

(assert (=> d!2254403 (= (forall!17496 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)) lambda!444335) e!4348355)))

(declare-fun b!7252007 () Bool)

(declare-fun e!4348356 () Bool)

(assert (=> b!7252007 (= e!4348355 e!4348356)))

(declare-fun res!2941154 () Bool)

(assert (=> b!7252007 (=> (not res!2941154) (not e!4348356))))

(assert (=> b!7252007 (= res!2941154 (dynLambda!28751 lambda!444335 (h!76848 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)))))))

(declare-fun b!7252008 () Bool)

(assert (=> b!7252008 (= e!4348356 (forall!17496 (t!384580 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) lambda!444335))))

(assert (= (and d!2254403 (not res!2941153)) b!7252007))

(assert (= (and b!7252007 res!2941154) b!7252008))

(declare-fun b_lambda!278543 () Bool)

(assert (=> (not b_lambda!278543) (not b!7252007)))

(declare-fun m!7931488 () Bool)

(assert (=> b!7252007 m!7931488))

(declare-fun m!7931490 () Bool)

(assert (=> b!7252008 m!7931490))

(assert (=> d!2254157 d!2254403))

(assert (=> d!2254157 d!2254161))

(declare-fun d!2254405 () Bool)

(assert (=> d!2254405 (forall!17496 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)) lambda!444335)))

(assert (=> d!2254405 true))

(declare-fun _$78!769 () Unit!163882)

(assert (=> d!2254405 (= (choose!56028 (exprs!8088 lt!2585269) (exprs!8088 ct2!328) lambda!444335) _$78!769)))

(declare-fun bs!1906493 () Bool)

(assert (= bs!1906493 d!2254405))

(assert (=> bs!1906493 m!7930760))

(assert (=> bs!1906493 m!7930760))

(assert (=> bs!1906493 m!7930950))

(assert (=> d!2254157 d!2254405))

(declare-fun d!2254407 () Bool)

(declare-fun res!2941155 () Bool)

(declare-fun e!4348357 () Bool)

(assert (=> d!2254407 (=> res!2941155 e!4348357)))

(assert (=> d!2254407 (= res!2941155 (is-Nil!70400 (exprs!8088 lt!2585269)))))

(assert (=> d!2254407 (= (forall!17496 (exprs!8088 lt!2585269) lambda!444335) e!4348357)))

(declare-fun b!7252009 () Bool)

(declare-fun e!4348358 () Bool)

(assert (=> b!7252009 (= e!4348357 e!4348358)))

(declare-fun res!2941156 () Bool)

(assert (=> b!7252009 (=> (not res!2941156) (not e!4348358))))

(assert (=> b!7252009 (= res!2941156 (dynLambda!28751 lambda!444335 (h!76848 (exprs!8088 lt!2585269))))))

(declare-fun b!7252010 () Bool)

(assert (=> b!7252010 (= e!4348358 (forall!17496 (t!384580 (exprs!8088 lt!2585269)) lambda!444335))))

(assert (= (and d!2254407 (not res!2941155)) b!7252009))

(assert (= (and b!7252009 res!2941156) b!7252010))

(declare-fun b_lambda!278545 () Bool)

(assert (=> (not b_lambda!278545) (not b!7252009)))

(declare-fun m!7931492 () Bool)

(assert (=> b!7252009 m!7931492))

(declare-fun m!7931494 () Bool)

(assert (=> b!7252010 m!7931494))

(assert (=> d!2254157 d!2254407))

(declare-fun bs!1906494 () Bool)

(declare-fun d!2254409 () Bool)

(assert (= bs!1906494 (and d!2254409 d!2254137)))

(declare-fun lambda!444411 () Int)

(assert (=> bs!1906494 (= (= lambda!444370 lambda!444336) (= lambda!444411 lambda!444367))))

(declare-fun bs!1906495 () Bool)

(assert (= bs!1906495 (and d!2254409 d!2254295)))

(assert (=> bs!1906495 (not (= lambda!444411 lambda!444402))))

(declare-fun bs!1906496 () Bool)

(assert (= bs!1906496 (and d!2254409 d!2254289)))

(assert (=> bs!1906496 (not (= lambda!444411 lambda!444401))))

(declare-fun bs!1906497 () Bool)

(assert (= bs!1906497 (and d!2254409 d!2254401)))

(assert (=> bs!1906497 (not (= lambda!444411 lambda!444410))))

(declare-fun bs!1906498 () Bool)

(assert (= bs!1906498 (and d!2254409 d!2254139)))

(assert (=> bs!1906498 (not (= lambda!444411 lambda!444370))))

(declare-fun bs!1906499 () Bool)

(assert (= bs!1906499 (and d!2254409 b!7251514)))

(assert (=> bs!1906499 (not (= lambda!444411 lambda!444336))))

(assert (=> d!2254409 true))

(assert (=> d!2254409 (< (dynLambda!28745 order!28983 lambda!444370) (dynLambda!28745 order!28983 lambda!444411))))

(assert (=> d!2254409 (= (exists!4375 lt!2585268 lambda!444370) (not (forall!17495 lt!2585268 lambda!444411)))))

(declare-fun bs!1906500 () Bool)

(assert (= bs!1906500 d!2254409))

(declare-fun m!7931496 () Bool)

(assert (=> bs!1906500 m!7931496))

(assert (=> d!2254139 d!2254409))

(declare-fun bs!1906501 () Bool)

(declare-fun d!2254411 () Bool)

(assert (= bs!1906501 (and d!2254411 d!2254137)))

(declare-fun lambda!444414 () Int)

(assert (=> bs!1906501 (not (= lambda!444414 lambda!444367))))

(declare-fun bs!1906502 () Bool)

(assert (= bs!1906502 (and d!2254411 d!2254295)))

(assert (=> bs!1906502 (not (= lambda!444414 lambda!444402))))

(declare-fun bs!1906503 () Bool)

(assert (= bs!1906503 (and d!2254411 d!2254289)))

(assert (=> bs!1906503 (not (= lambda!444414 lambda!444401))))

(declare-fun bs!1906504 () Bool)

(assert (= bs!1906504 (and d!2254411 d!2254401)))

(assert (=> bs!1906504 (not (= lambda!444414 lambda!444410))))

(declare-fun bs!1906505 () Bool)

(assert (= bs!1906505 (and d!2254411 d!2254139)))

(assert (=> bs!1906505 (= lambda!444414 lambda!444370)))

(declare-fun bs!1906506 () Bool)

(assert (= bs!1906506 (and d!2254411 b!7251514)))

(assert (=> bs!1906506 (= lambda!444414 lambda!444336)))

(declare-fun bs!1906507 () Bool)

(assert (= bs!1906507 (and d!2254411 d!2254409)))

(assert (=> bs!1906507 (not (= lambda!444414 lambda!444411))))

(assert (=> d!2254411 true))

(assert (=> d!2254411 (exists!4375 lt!2585268 lambda!444414)))

(assert (=> d!2254411 true))

(declare-fun _$60!1228 () Unit!163882)

(assert (=> d!2254411 (= (choose!56025 lt!2585268 (t!384581 s1!1971)) _$60!1228)))

(declare-fun bs!1906508 () Bool)

(assert (= bs!1906508 d!2254411))

(declare-fun m!7931498 () Bool)

(assert (=> bs!1906508 m!7931498))

(assert (=> d!2254139 d!2254411))

(declare-fun d!2254413 () Bool)

(declare-fun c!1347856 () Bool)

(assert (=> d!2254413 (= c!1347856 (isEmpty!40544 (t!384581 s1!1971)))))

(declare-fun e!4348359 () Bool)

(assert (=> d!2254413 (= (matchZipper!3558 (content!14613 lt!2585268) (t!384581 s1!1971)) e!4348359)))

(declare-fun b!7252011 () Bool)

(assert (=> b!7252011 (= e!4348359 (nullableZipper!2914 (content!14613 lt!2585268)))))

(declare-fun b!7252012 () Bool)

(assert (=> b!7252012 (= e!4348359 (matchZipper!3558 (derivationStepZipper!3426 (content!14613 lt!2585268) (head!14905 (t!384581 s1!1971))) (tail!14326 (t!384581 s1!1971))))))

(assert (= (and d!2254413 c!1347856) b!7252011))

(assert (= (and d!2254413 (not c!1347856)) b!7252012))

(assert (=> d!2254413 m!7931040))

(assert (=> b!7252011 m!7930884))

(declare-fun m!7931500 () Bool)

(assert (=> b!7252011 m!7931500))

(assert (=> b!7252012 m!7931044))

(assert (=> b!7252012 m!7930884))

(assert (=> b!7252012 m!7931044))

(declare-fun m!7931502 () Bool)

(assert (=> b!7252012 m!7931502))

(assert (=> b!7252012 m!7931048))

(assert (=> b!7252012 m!7931502))

(assert (=> b!7252012 m!7931048))

(declare-fun m!7931504 () Bool)

(assert (=> b!7252012 m!7931504))

(assert (=> d!2254139 d!2254413))

(declare-fun d!2254415 () Bool)

(declare-fun c!1347859 () Bool)

(assert (=> d!2254415 (= c!1347859 (is-Nil!70402 lt!2585268))))

(declare-fun e!4348362 () (Set Context!15176))

(assert (=> d!2254415 (= (content!14613 lt!2585268) e!4348362)))

(declare-fun b!7252017 () Bool)

(assert (=> b!7252017 (= e!4348362 (as set.empty (Set Context!15176)))))

(declare-fun b!7252018 () Bool)

(assert (=> b!7252018 (= e!4348362 (set.union (set.insert (h!76850 lt!2585268) (as set.empty (Set Context!15176))) (content!14613 (t!384582 lt!2585268))))))

(assert (= (and d!2254415 c!1347859) b!7252017))

(assert (= (and d!2254415 (not c!1347859)) b!7252018))

(declare-fun m!7931506 () Bool)

(assert (=> b!7252018 m!7931506))

(declare-fun m!7931508 () Bool)

(assert (=> b!7252018 m!7931508))

(assert (=> d!2254139 d!2254415))

(declare-fun b!7252019 () Bool)

(declare-fun e!4348365 () (Set Context!15176))

(declare-fun call!660586 () (Set Context!15176))

(declare-fun call!660587 () (Set Context!15176))

(assert (=> b!7252019 (= e!4348365 (set.union call!660586 call!660587))))

(declare-fun bm!660578 () Bool)

(declare-fun call!660583 () List!70524)

(declare-fun call!660588 () List!70524)

(assert (=> bm!660578 (= call!660583 call!660588)))

(declare-fun bm!660579 () Bool)

(declare-fun c!1347860 () Bool)

(declare-fun c!1347862 () Bool)

(declare-fun c!1347864 () Bool)

(declare-fun call!660585 () (Set Context!15176))

(assert (=> bm!660579 (= call!660585 (derivationStepZipperDown!2642 (ite c!1347860 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347864 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347862 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))) (ite (or c!1347860 c!1347864) (Context!15177 (t!384580 (exprs!8088 ct1!232))) (Context!15177 call!660583)) (h!76849 s1!1971)))))

(declare-fun b!7252020 () Bool)

(declare-fun e!4348366 () (Set Context!15176))

(assert (=> b!7252020 (= e!4348366 (set.union call!660585 call!660586))))

(declare-fun bm!660580 () Bool)

(assert (=> bm!660580 (= call!660588 ($colon$colon!2918 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232)))) (ite (or c!1347864 c!1347862) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun b!7252022 () Bool)

(declare-fun e!4348364 () (Set Context!15176))

(assert (=> b!7252022 (= e!4348365 e!4348364)))

(assert (=> b!7252022 (= c!1347862 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660581 () Bool)

(assert (=> bm!660581 (= call!660586 (derivationStepZipperDown!2642 (ite c!1347860 (regTwo!37809 (h!76848 (exprs!8088 ct1!232))) (regOne!37808 (h!76848 (exprs!8088 ct1!232)))) (ite c!1347860 (Context!15177 (t!384580 (exprs!8088 ct1!232))) (Context!15177 call!660588)) (h!76849 s1!1971)))))

(declare-fun b!7252023 () Bool)

(declare-fun c!1347863 () Bool)

(assert (=> b!7252023 (= c!1347863 (is-Star!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun e!4348363 () (Set Context!15176))

(assert (=> b!7252023 (= e!4348364 e!4348363)))

(declare-fun b!7252024 () Bool)

(declare-fun e!4348367 () Bool)

(assert (=> b!7252024 (= c!1347864 e!4348367)))

(declare-fun res!2941157 () Bool)

(assert (=> b!7252024 (=> (not res!2941157) (not e!4348367))))

(assert (=> b!7252024 (= res!2941157 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232))))))

(assert (=> b!7252024 (= e!4348366 e!4348365)))

(declare-fun b!7252025 () Bool)

(declare-fun call!660584 () (Set Context!15176))

(assert (=> b!7252025 (= e!4348364 call!660584)))

(declare-fun b!7252026 () Bool)

(declare-fun e!4348368 () (Set Context!15176))

(assert (=> b!7252026 (= e!4348368 (set.insert (Context!15177 (t!384580 (exprs!8088 ct1!232))) (as set.empty (Set Context!15176))))))

(declare-fun b!7252027 () Bool)

(assert (=> b!7252027 (= e!4348367 (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 ct1!232)))))))

(declare-fun bm!660582 () Bool)

(assert (=> bm!660582 (= call!660587 call!660585)))

(declare-fun b!7252028 () Bool)

(assert (=> b!7252028 (= e!4348363 (as set.empty (Set Context!15176)))))

(declare-fun b!7252029 () Bool)

(assert (=> b!7252029 (= e!4348368 e!4348366)))

(assert (=> b!7252029 (= c!1347860 (is-Union!18648 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun bm!660583 () Bool)

(assert (=> bm!660583 (= call!660584 call!660587)))

(declare-fun b!7252021 () Bool)

(assert (=> b!7252021 (= e!4348363 call!660584)))

(declare-fun d!2254417 () Bool)

(declare-fun c!1347861 () Bool)

(assert (=> d!2254417 (= c!1347861 (and (is-ElementMatch!18648 (h!76848 (exprs!8088 ct1!232))) (= (c!1347686 (h!76848 (exprs!8088 ct1!232))) (h!76849 s1!1971))))))

(assert (=> d!2254417 (= (derivationStepZipperDown!2642 (h!76848 (exprs!8088 ct1!232)) (Context!15177 (t!384580 (exprs!8088 ct1!232))) (h!76849 s1!1971)) e!4348368)))

(assert (= (and d!2254417 c!1347861) b!7252026))

(assert (= (and d!2254417 (not c!1347861)) b!7252029))

(assert (= (and b!7252029 c!1347860) b!7252020))

(assert (= (and b!7252029 (not c!1347860)) b!7252024))

(assert (= (and b!7252024 res!2941157) b!7252027))

(assert (= (and b!7252024 c!1347864) b!7252019))

(assert (= (and b!7252024 (not c!1347864)) b!7252022))

(assert (= (and b!7252022 c!1347862) b!7252025))

(assert (= (and b!7252022 (not c!1347862)) b!7252023))

(assert (= (and b!7252023 c!1347863) b!7252021))

(assert (= (and b!7252023 (not c!1347863)) b!7252028))

(assert (= (or b!7252025 b!7252021) bm!660578))

(assert (= (or b!7252025 b!7252021) bm!660583))

(assert (= (or b!7252019 bm!660578) bm!660580))

(assert (= (or b!7252019 bm!660583) bm!660582))

(assert (= (or b!7252020 b!7252019) bm!660581))

(assert (= (or b!7252020 bm!660582) bm!660579))

(declare-fun m!7931510 () Bool)

(assert (=> bm!660579 m!7931510))

(assert (=> b!7252027 m!7931000))

(declare-fun m!7931512 () Bool)

(assert (=> b!7252026 m!7931512))

(declare-fun m!7931514 () Bool)

(assert (=> bm!660581 m!7931514))

(declare-fun m!7931516 () Bool)

(assert (=> bm!660580 m!7931516))

(assert (=> bm!660490 d!2254417))

(declare-fun b!7252031 () Bool)

(declare-fun call!660589 () (Set Context!15176))

(declare-fun e!4348369 () (Set Context!15176))

(assert (=> b!7252031 (= e!4348369 (set.union call!660589 (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232)))))) (h!76849 s1!1971))))))

(declare-fun b!7252032 () Bool)

(declare-fun e!4348370 () Bool)

(assert (=> b!7252032 (= e!4348370 (nullable!7908 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232)))))))))

(declare-fun bm!660584 () Bool)

(assert (=> bm!660584 (= call!660589 (derivationStepZipperDown!2642 (h!76848 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232))))) (Context!15177 (t!384580 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232)))))) (h!76849 s1!1971)))))

(declare-fun b!7252030 () Bool)

(declare-fun e!4348371 () (Set Context!15176))

(assert (=> b!7252030 (= e!4348371 call!660589)))

(declare-fun d!2254419 () Bool)

(declare-fun c!1347865 () Bool)

(assert (=> d!2254419 (= c!1347865 e!4348370)))

(declare-fun res!2941158 () Bool)

(assert (=> d!2254419 (=> (not res!2941158) (not e!4348370))))

(assert (=> d!2254419 (= res!2941158 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232))))))))

(assert (=> d!2254419 (= (derivationStepZipperUp!2472 (Context!15177 (t!384580 (exprs!8088 ct1!232))) (h!76849 s1!1971)) e!4348369)))

(declare-fun b!7252033 () Bool)

(assert (=> b!7252033 (= e!4348371 (as set.empty (Set Context!15176)))))

(declare-fun b!7252034 () Bool)

(assert (=> b!7252034 (= e!4348369 e!4348371)))

(declare-fun c!1347866 () Bool)

(assert (=> b!7252034 (= c!1347866 (is-Cons!70400 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 ct1!232))))))))

(assert (= (and d!2254419 res!2941158) b!7252032))

(assert (= (and d!2254419 c!1347865) b!7252031))

(assert (= (and d!2254419 (not c!1347865)) b!7252034))

(assert (= (and b!7252034 c!1347866) b!7252030))

(assert (= (and b!7252034 (not c!1347866)) b!7252033))

(assert (= (or b!7252031 b!7252030) bm!660584))

(declare-fun m!7931518 () Bool)

(assert (=> b!7252031 m!7931518))

(declare-fun m!7931520 () Bool)

(assert (=> b!7252032 m!7931520))

(declare-fun m!7931522 () Bool)

(assert (=> bm!660584 m!7931522))

(assert (=> b!7251608 d!2254419))

(declare-fun b!7252035 () Bool)

(declare-fun e!4348374 () (Set Context!15176))

(declare-fun call!660593 () (Set Context!15176))

(declare-fun call!660594 () (Set Context!15176))

(assert (=> b!7252035 (= e!4348374 (set.union call!660593 call!660594))))

(declare-fun bm!660585 () Bool)

(declare-fun call!660590 () List!70524)

(declare-fun call!660595 () List!70524)

(assert (=> bm!660585 (= call!660590 call!660595)))

(declare-fun c!1347871 () Bool)

(declare-fun call!660592 () (Set Context!15176))

(declare-fun c!1347869 () Bool)

(declare-fun c!1347867 () Bool)

(declare-fun bm!660586 () Bool)

(assert (=> bm!660586 (= call!660592 (derivationStepZipperDown!2642 (ite c!1347867 (regOne!37809 (h!76848 (exprs!8088 lt!2585270))) (ite c!1347871 (regTwo!37808 (h!76848 (exprs!8088 lt!2585270))) (ite c!1347869 (regOne!37808 (h!76848 (exprs!8088 lt!2585270))) (reg!18977 (h!76848 (exprs!8088 lt!2585270)))))) (ite (or c!1347867 c!1347871) (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (Context!15177 call!660590)) (h!76849 s1!1971)))))

(declare-fun b!7252036 () Bool)

(declare-fun e!4348375 () (Set Context!15176))

(assert (=> b!7252036 (= e!4348375 (set.union call!660592 call!660593))))

(declare-fun bm!660587 () Bool)

(assert (=> bm!660587 (= call!660595 ($colon$colon!2918 (exprs!8088 (Context!15177 (t!384580 (exprs!8088 lt!2585270)))) (ite (or c!1347871 c!1347869) (regTwo!37808 (h!76848 (exprs!8088 lt!2585270))) (h!76848 (exprs!8088 lt!2585270)))))))

(declare-fun b!7252038 () Bool)

(declare-fun e!4348373 () (Set Context!15176))

(assert (=> b!7252038 (= e!4348374 e!4348373)))

(assert (=> b!7252038 (= c!1347869 (is-Concat!27493 (h!76848 (exprs!8088 lt!2585270))))))

(declare-fun bm!660588 () Bool)

(assert (=> bm!660588 (= call!660593 (derivationStepZipperDown!2642 (ite c!1347867 (regTwo!37809 (h!76848 (exprs!8088 lt!2585270))) (regOne!37808 (h!76848 (exprs!8088 lt!2585270)))) (ite c!1347867 (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (Context!15177 call!660595)) (h!76849 s1!1971)))))

(declare-fun b!7252039 () Bool)

(declare-fun c!1347870 () Bool)

(assert (=> b!7252039 (= c!1347870 (is-Star!18648 (h!76848 (exprs!8088 lt!2585270))))))

(declare-fun e!4348372 () (Set Context!15176))

(assert (=> b!7252039 (= e!4348373 e!4348372)))

(declare-fun b!7252040 () Bool)

(declare-fun e!4348376 () Bool)

(assert (=> b!7252040 (= c!1347871 e!4348376)))

(declare-fun res!2941159 () Bool)

(assert (=> b!7252040 (=> (not res!2941159) (not e!4348376))))

(assert (=> b!7252040 (= res!2941159 (is-Concat!27493 (h!76848 (exprs!8088 lt!2585270))))))

(assert (=> b!7252040 (= e!4348375 e!4348374)))

(declare-fun b!7252041 () Bool)

(declare-fun call!660591 () (Set Context!15176))

(assert (=> b!7252041 (= e!4348373 call!660591)))

(declare-fun b!7252042 () Bool)

(declare-fun e!4348377 () (Set Context!15176))

(assert (=> b!7252042 (= e!4348377 (set.insert (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (as set.empty (Set Context!15176))))))

(declare-fun b!7252043 () Bool)

(assert (=> b!7252043 (= e!4348376 (nullable!7908 (regOne!37808 (h!76848 (exprs!8088 lt!2585270)))))))

(declare-fun bm!660589 () Bool)

(assert (=> bm!660589 (= call!660594 call!660592)))

(declare-fun b!7252044 () Bool)

(assert (=> b!7252044 (= e!4348372 (as set.empty (Set Context!15176)))))

(declare-fun b!7252045 () Bool)

(assert (=> b!7252045 (= e!4348377 e!4348375)))

(assert (=> b!7252045 (= c!1347867 (is-Union!18648 (h!76848 (exprs!8088 lt!2585270))))))

(declare-fun bm!660590 () Bool)

(assert (=> bm!660590 (= call!660591 call!660594)))

(declare-fun b!7252037 () Bool)

(assert (=> b!7252037 (= e!4348372 call!660591)))

(declare-fun d!2254421 () Bool)

(declare-fun c!1347868 () Bool)

(assert (=> d!2254421 (= c!1347868 (and (is-ElementMatch!18648 (h!76848 (exprs!8088 lt!2585270))) (= (c!1347686 (h!76848 (exprs!8088 lt!2585270))) (h!76849 s1!1971))))))

(assert (=> d!2254421 (= (derivationStepZipperDown!2642 (h!76848 (exprs!8088 lt!2585270)) (Context!15177 (t!384580 (exprs!8088 lt!2585270))) (h!76849 s1!1971)) e!4348377)))

(assert (= (and d!2254421 c!1347868) b!7252042))

(assert (= (and d!2254421 (not c!1347868)) b!7252045))

(assert (= (and b!7252045 c!1347867) b!7252036))

(assert (= (and b!7252045 (not c!1347867)) b!7252040))

(assert (= (and b!7252040 res!2941159) b!7252043))

(assert (= (and b!7252040 c!1347871) b!7252035))

(assert (= (and b!7252040 (not c!1347871)) b!7252038))

(assert (= (and b!7252038 c!1347869) b!7252041))

(assert (= (and b!7252038 (not c!1347869)) b!7252039))

(assert (= (and b!7252039 c!1347870) b!7252037))

(assert (= (and b!7252039 (not c!1347870)) b!7252044))

(assert (= (or b!7252041 b!7252037) bm!660585))

(assert (= (or b!7252041 b!7252037) bm!660590))

(assert (= (or b!7252035 bm!660585) bm!660587))

(assert (= (or b!7252035 bm!660590) bm!660589))

(assert (= (or b!7252036 b!7252035) bm!660588))

(assert (= (or b!7252036 bm!660589) bm!660586))

(declare-fun m!7931524 () Bool)

(assert (=> bm!660586 m!7931524))

(declare-fun m!7931526 () Bool)

(assert (=> b!7252043 m!7931526))

(declare-fun m!7931528 () Bool)

(assert (=> b!7252042 m!7931528))

(declare-fun m!7931530 () Bool)

(assert (=> bm!660588 m!7931530))

(declare-fun m!7931532 () Bool)

(assert (=> bm!660587 m!7931532))

(assert (=> bm!660491 d!2254421))

(declare-fun d!2254423 () Bool)

(declare-fun c!1347872 () Bool)

(assert (=> d!2254423 (= c!1347872 (is-Nil!70402 lt!2585366))))

(declare-fun e!4348378 () (Set Context!15176))

(assert (=> d!2254423 (= (content!14613 lt!2585366) e!4348378)))

(declare-fun b!7252046 () Bool)

(assert (=> b!7252046 (= e!4348378 (as set.empty (Set Context!15176)))))

(declare-fun b!7252047 () Bool)

(assert (=> b!7252047 (= e!4348378 (set.union (set.insert (h!76850 lt!2585366) (as set.empty (Set Context!15176))) (content!14613 (t!384582 lt!2585366))))))

(assert (= (and d!2254423 c!1347872) b!7252046))

(assert (= (and d!2254423 (not c!1347872)) b!7252047))

(declare-fun m!7931534 () Bool)

(assert (=> b!7252047 m!7931534))

(declare-fun m!7931536 () Bool)

(assert (=> b!7252047 m!7931536))

(assert (=> b!7251575 d!2254423))

(declare-fun b!7252048 () Bool)

(declare-fun e!4348380 () List!70525)

(assert (=> b!7252048 (= e!4348380 s2!1849)))

(declare-fun b!7252050 () Bool)

(declare-fun res!2941160 () Bool)

(declare-fun e!4348379 () Bool)

(assert (=> b!7252050 (=> (not res!2941160) (not e!4348379))))

(declare-fun lt!2585448 () List!70525)

(assert (=> b!7252050 (= res!2941160 (= (size!41718 lt!2585448) (+ (size!41718 (t!384581 (t!384581 s1!1971))) (size!41718 s2!1849))))))

(declare-fun b!7252051 () Bool)

(assert (=> b!7252051 (= e!4348379 (or (not (= s2!1849 Nil!70401)) (= lt!2585448 (t!384581 (t!384581 s1!1971)))))))

(declare-fun d!2254425 () Bool)

(assert (=> d!2254425 e!4348379))

(declare-fun res!2941161 () Bool)

(assert (=> d!2254425 (=> (not res!2941161) (not e!4348379))))

(assert (=> d!2254425 (= res!2941161 (= (content!14614 lt!2585448) (set.union (content!14614 (t!384581 (t!384581 s1!1971))) (content!14614 s2!1849))))))

(assert (=> d!2254425 (= lt!2585448 e!4348380)))

(declare-fun c!1347873 () Bool)

(assert (=> d!2254425 (= c!1347873 (is-Nil!70401 (t!384581 (t!384581 s1!1971))))))

(assert (=> d!2254425 (= (++!16559 (t!384581 (t!384581 s1!1971)) s2!1849) lt!2585448)))

(declare-fun b!7252049 () Bool)

(assert (=> b!7252049 (= e!4348380 (Cons!70401 (h!76849 (t!384581 (t!384581 s1!1971))) (++!16559 (t!384581 (t!384581 (t!384581 s1!1971))) s2!1849)))))

(assert (= (and d!2254425 c!1347873) b!7252048))

(assert (= (and d!2254425 (not c!1347873)) b!7252049))

(assert (= (and d!2254425 res!2941161) b!7252050))

(assert (= (and b!7252050 res!2941160) b!7252051))

(declare-fun m!7931538 () Bool)

(assert (=> b!7252050 m!7931538))

(assert (=> b!7252050 m!7931368))

(assert (=> b!7252050 m!7930916))

(declare-fun m!7931540 () Bool)

(assert (=> d!2254425 m!7931540))

(declare-fun m!7931542 () Bool)

(assert (=> d!2254425 m!7931542))

(assert (=> d!2254425 m!7930922))

(declare-fun m!7931544 () Bool)

(assert (=> b!7252049 m!7931544))

(assert (=> b!7251594 d!2254425))

(declare-fun d!2254427 () Bool)

(assert (=> d!2254427 (= ($colon$colon!2918 (exprs!8088 lt!2585270) (ite (or c!1347749 c!1347747) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232)))) (Cons!70400 (ite (or c!1347749 c!1347747) (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (h!76848 (exprs!8088 ct1!232))) (exprs!8088 lt!2585270)))))

(assert (=> bm!660516 d!2254427))

(declare-fun d!2254429 () Bool)

(assert (=> d!2254429 (= (isEmpty!40544 s2!1849) (is-Nil!70401 s2!1849))))

(assert (=> d!2254143 d!2254429))

(declare-fun d!2254431 () Bool)

(assert (=> d!2254431 (= (isEmpty!40544 (t!384581 s1!1971)) (is-Nil!70401 (t!384581 s1!1971)))))

(assert (=> d!2254193 d!2254431))

(declare-fun d!2254433 () Bool)

(assert (=> d!2254433 (= (isEmpty!40544 s1!1971) (is-Nil!70401 s1!1971))))

(assert (=> d!2254187 d!2254433))

(declare-fun bs!1906509 () Bool)

(declare-fun d!2254435 () Bool)

(assert (= bs!1906509 (and d!2254435 d!2254137)))

(declare-fun lambda!444415 () Int)

(assert (=> bs!1906509 (not (= lambda!444415 lambda!444367))))

(declare-fun bs!1906510 () Bool)

(assert (= bs!1906510 (and d!2254435 d!2254295)))

(assert (=> bs!1906510 (= lambda!444415 lambda!444402)))

(declare-fun bs!1906511 () Bool)

(assert (= bs!1906511 (and d!2254435 d!2254289)))

(assert (=> bs!1906511 (= lambda!444415 lambda!444401)))

(declare-fun bs!1906512 () Bool)

(assert (= bs!1906512 (and d!2254435 d!2254401)))

(assert (=> bs!1906512 (= lambda!444415 lambda!444410)))

(declare-fun bs!1906513 () Bool)

(assert (= bs!1906513 (and d!2254435 b!7251514)))

(assert (=> bs!1906513 (not (= lambda!444415 lambda!444336))))

(declare-fun bs!1906514 () Bool)

(assert (= bs!1906514 (and d!2254435 d!2254409)))

(assert (=> bs!1906514 (not (= lambda!444415 lambda!444411))))

(declare-fun bs!1906515 () Bool)

(assert (= bs!1906515 (and d!2254435 d!2254411)))

(assert (=> bs!1906515 (not (= lambda!444415 lambda!444414))))

(declare-fun bs!1906516 () Bool)

(assert (= bs!1906516 (and d!2254435 d!2254139)))

(assert (=> bs!1906516 (not (= lambda!444415 lambda!444370))))

(assert (=> d!2254435 (= (nullableZipper!2914 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176)))) (exists!4374 (set.insert (Context!15177 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328))) (as set.empty (Set Context!15176))) lambda!444415))))

(declare-fun bs!1906517 () Bool)

(assert (= bs!1906517 d!2254435))

(assert (=> bs!1906517 m!7930762))

(declare-fun m!7931546 () Bool)

(assert (=> bs!1906517 m!7931546))

(assert (=> b!7251612 d!2254435))

(declare-fun d!2254437 () Bool)

(declare-fun res!2941166 () Bool)

(declare-fun e!4348385 () Bool)

(assert (=> d!2254437 (=> res!2941166 e!4348385)))

(assert (=> d!2254437 (= res!2941166 (is-Nil!70402 lt!2585366))))

(assert (=> d!2254437 (= (noDuplicate!2991 lt!2585366) e!4348385)))

(declare-fun b!7252056 () Bool)

(declare-fun e!4348386 () Bool)

(assert (=> b!7252056 (= e!4348385 e!4348386)))

(declare-fun res!2941167 () Bool)

(assert (=> b!7252056 (=> (not res!2941167) (not e!4348386))))

(assert (=> b!7252056 (= res!2941167 (not (contains!20743 (t!384582 lt!2585366) (h!76850 lt!2585366))))))

(declare-fun b!7252057 () Bool)

(assert (=> b!7252057 (= e!4348386 (noDuplicate!2991 (t!384582 lt!2585366)))))

(assert (= (and d!2254437 (not res!2941166)) b!7252056))

(assert (= (and b!7252056 res!2941167) b!7252057))

(declare-fun m!7931548 () Bool)

(assert (=> b!7252056 m!7931548))

(declare-fun m!7931550 () Bool)

(assert (=> b!7252057 m!7931550))

(assert (=> d!2254141 d!2254437))

(declare-fun d!2254439 () Bool)

(declare-fun e!4348393 () Bool)

(assert (=> d!2254439 e!4348393))

(declare-fun res!2941173 () Bool)

(assert (=> d!2254439 (=> (not res!2941173) (not e!4348393))))

(declare-fun res!2941172 () List!70526)

(assert (=> d!2254439 (= res!2941173 (noDuplicate!2991 res!2941172))))

(declare-fun e!4348395 () Bool)

(assert (=> d!2254439 e!4348395))

(assert (=> d!2254439 (= (choose!56026 lt!2585278) res!2941172)))

(declare-fun b!7252065 () Bool)

(declare-fun e!4348394 () Bool)

(declare-fun tp!2037606 () Bool)

(assert (=> b!7252065 (= e!4348394 tp!2037606)))

(declare-fun tp!2037605 () Bool)

(declare-fun b!7252064 () Bool)

(assert (=> b!7252064 (= e!4348395 (and (inv!89631 (h!76850 res!2941172)) e!4348394 tp!2037605))))

(declare-fun b!7252066 () Bool)

(assert (=> b!7252066 (= e!4348393 (= (content!14613 res!2941172) lt!2585278))))

(assert (= b!7252064 b!7252065))

(assert (= (and d!2254439 (is-Cons!70402 res!2941172)) b!7252064))

(assert (= (and d!2254439 res!2941173) b!7252066))

(declare-fun m!7931552 () Bool)

(assert (=> d!2254439 m!7931552))

(declare-fun m!7931554 () Bool)

(assert (=> b!7252064 m!7931554))

(declare-fun m!7931556 () Bool)

(assert (=> b!7252066 m!7931556))

(assert (=> d!2254141 d!2254439))

(declare-fun d!2254441 () Bool)

(assert (=> d!2254441 true))

(declare-fun setRes!53576 () Bool)

(assert (=> d!2254441 setRes!53576))

(declare-fun condSetEmpty!53576 () Bool)

(declare-fun res!2941174 () (Set Context!15176))

(assert (=> d!2254441 (= condSetEmpty!53576 (= res!2941174 (as set.empty (Set Context!15176))))))

(assert (=> d!2254441 (= (choose!56030 lt!2585273 lambda!444337) res!2941174)))

(declare-fun setIsEmpty!53576 () Bool)

(assert (=> setIsEmpty!53576 setRes!53576))

(declare-fun setElem!53576 () Context!15176)

(declare-fun setNonEmpty!53576 () Bool)

(declare-fun tp!2037607 () Bool)

(declare-fun e!4348396 () Bool)

(assert (=> setNonEmpty!53576 (= setRes!53576 (and tp!2037607 (inv!89631 setElem!53576) e!4348396))))

(declare-fun setRest!53576 () (Set Context!15176))

(assert (=> setNonEmpty!53576 (= res!2941174 (set.union (set.insert setElem!53576 (as set.empty (Set Context!15176))) setRest!53576))))

(declare-fun b!7252067 () Bool)

(declare-fun tp!2037608 () Bool)

(assert (=> b!7252067 (= e!4348396 tp!2037608)))

(assert (= (and d!2254441 condSetEmpty!53576) setIsEmpty!53576))

(assert (= (and d!2254441 (not condSetEmpty!53576)) setNonEmpty!53576))

(assert (= setNonEmpty!53576 b!7252067))

(declare-fun m!7931558 () Bool)

(assert (=> setNonEmpty!53576 m!7931558))

(assert (=> d!2254181 d!2254441))

(declare-fun b!7252068 () Bool)

(declare-fun e!4348399 () (Set Context!15176))

(declare-fun call!660599 () (Set Context!15176))

(declare-fun call!660600 () (Set Context!15176))

(assert (=> b!7252068 (= e!4348399 (set.union call!660599 call!660600))))

(declare-fun bm!660591 () Bool)

(declare-fun call!660596 () List!70524)

(declare-fun call!660601 () List!70524)

(assert (=> bm!660591 (= call!660596 call!660601)))

(declare-fun bm!660592 () Bool)

(declare-fun c!1347878 () Bool)

(declare-fun call!660598 () (Set Context!15176))

(declare-fun c!1347874 () Bool)

(declare-fun c!1347876 () Bool)

(assert (=> bm!660592 (= call!660598 (derivationStepZipperDown!2642 (ite c!1347874 (regOne!37809 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347878 (regTwo!37808 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347876 (regOne!37808 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (reg!18977 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))) (ite (or c!1347874 c!1347878) (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519)) (Context!15177 call!660596)) (h!76849 s1!1971)))))

(declare-fun b!7252069 () Bool)

(declare-fun e!4348400 () (Set Context!15176))

(assert (=> b!7252069 (= e!4348400 (set.union call!660598 call!660599))))

(declare-fun bm!660593 () Bool)

(assert (=> bm!660593 (= call!660601 ($colon$colon!2918 (exprs!8088 (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519))) (ite (or c!1347878 c!1347876) (regTwo!37808 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))))

(declare-fun b!7252071 () Bool)

(declare-fun e!4348398 () (Set Context!15176))

(assert (=> b!7252071 (= e!4348399 e!4348398)))

(assert (=> b!7252071 (= c!1347876 (is-Concat!27493 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun bm!660594 () Bool)

(assert (=> bm!660594 (= call!660599 (derivationStepZipperDown!2642 (ite c!1347874 (regTwo!37809 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (regOne!37808 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))) (ite c!1347874 (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519)) (Context!15177 call!660601)) (h!76849 s1!1971)))))

(declare-fun b!7252072 () Bool)

(declare-fun c!1347877 () Bool)

(assert (=> b!7252072 (= c!1347877 (is-Star!18648 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun e!4348397 () (Set Context!15176))

(assert (=> b!7252072 (= e!4348398 e!4348397)))

(declare-fun b!7252073 () Bool)

(declare-fun e!4348401 () Bool)

(assert (=> b!7252073 (= c!1347878 e!4348401)))

(declare-fun res!2941175 () Bool)

(assert (=> b!7252073 (=> (not res!2941175) (not e!4348401))))

(assert (=> b!7252073 (= res!2941175 (is-Concat!27493 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(assert (=> b!7252073 (= e!4348400 e!4348399)))

(declare-fun b!7252074 () Bool)

(declare-fun call!660597 () (Set Context!15176))

(assert (=> b!7252074 (= e!4348398 call!660597)))

(declare-fun e!4348402 () (Set Context!15176))

(declare-fun b!7252075 () Bool)

(assert (=> b!7252075 (= e!4348402 (set.insert (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519)) (as set.empty (Set Context!15176))))))

(declare-fun b!7252076 () Bool)

(assert (=> b!7252076 (= e!4348401 (nullable!7908 (regOne!37808 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))))))))

(declare-fun bm!660595 () Bool)

(assert (=> bm!660595 (= call!660600 call!660598)))

(declare-fun b!7252077 () Bool)

(assert (=> b!7252077 (= e!4348397 (as set.empty (Set Context!15176)))))

(declare-fun b!7252078 () Bool)

(assert (=> b!7252078 (= e!4348402 e!4348400)))

(assert (=> b!7252078 (= c!1347874 (is-Union!18648 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))))))

(declare-fun bm!660596 () Bool)

(assert (=> bm!660596 (= call!660597 call!660600)))

(declare-fun b!7252070 () Bool)

(assert (=> b!7252070 (= e!4348397 call!660597)))

(declare-fun d!2254443 () Bool)

(declare-fun c!1347875 () Bool)

(assert (=> d!2254443 (= c!1347875 (and (is-ElementMatch!18648 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (= (c!1347686 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232))))))) (h!76849 s1!1971))))))

(assert (=> d!2254443 (= (derivationStepZipperDown!2642 (ite c!1347745 (regOne!37809 (h!76848 (exprs!8088 ct1!232))) (ite c!1347749 (regTwo!37808 (h!76848 (exprs!8088 ct1!232))) (ite c!1347747 (regOne!37808 (h!76848 (exprs!8088 ct1!232))) (reg!18977 (h!76848 (exprs!8088 ct1!232)))))) (ite (or c!1347745 c!1347749) lt!2585270 (Context!15177 call!660519)) (h!76849 s1!1971)) e!4348402)))

(assert (= (and d!2254443 c!1347875) b!7252075))

(assert (= (and d!2254443 (not c!1347875)) b!7252078))

(assert (= (and b!7252078 c!1347874) b!7252069))

(assert (= (and b!7252078 (not c!1347874)) b!7252073))

(assert (= (and b!7252073 res!2941175) b!7252076))

(assert (= (and b!7252073 c!1347878) b!7252068))

(assert (= (and b!7252073 (not c!1347878)) b!7252071))

(assert (= (and b!7252071 c!1347876) b!7252074))

(assert (= (and b!7252071 (not c!1347876)) b!7252072))

(assert (= (and b!7252072 c!1347877) b!7252070))

(assert (= (and b!7252072 (not c!1347877)) b!7252077))

(assert (= (or b!7252074 b!7252070) bm!660591))

(assert (= (or b!7252074 b!7252070) bm!660596))

(assert (= (or b!7252068 bm!660591) bm!660593))

(assert (= (or b!7252068 bm!660596) bm!660595))

(assert (= (or b!7252069 b!7252068) bm!660594))

(assert (= (or b!7252069 bm!660595) bm!660592))

(declare-fun m!7931560 () Bool)

(assert (=> bm!660592 m!7931560))

(declare-fun m!7931562 () Bool)

(assert (=> b!7252076 m!7931562))

(declare-fun m!7931564 () Bool)

(assert (=> b!7252075 m!7931564))

(declare-fun m!7931566 () Bool)

(assert (=> bm!660594 m!7931566))

(declare-fun m!7931568 () Bool)

(assert (=> bm!660593 m!7931568))

(assert (=> bm!660515 d!2254443))

(declare-fun d!2254445 () Bool)

(declare-fun c!1347881 () Bool)

(assert (=> d!2254445 (= c!1347881 (is-Nil!70401 lt!2585372))))

(declare-fun e!4348405 () (Set C!37570))

(assert (=> d!2254445 (= (content!14614 lt!2585372) e!4348405)))

(declare-fun b!7252083 () Bool)

(assert (=> b!7252083 (= e!4348405 (as set.empty (Set C!37570)))))

(declare-fun b!7252084 () Bool)

(assert (=> b!7252084 (= e!4348405 (set.union (set.insert (h!76849 lt!2585372) (as set.empty (Set C!37570))) (content!14614 (t!384581 lt!2585372))))))

(assert (= (and d!2254445 c!1347881) b!7252083))

(assert (= (and d!2254445 (not c!1347881)) b!7252084))

(declare-fun m!7931570 () Bool)

(assert (=> b!7252084 m!7931570))

(declare-fun m!7931572 () Bool)

(assert (=> b!7252084 m!7931572))

(assert (=> d!2254149 d!2254445))

(declare-fun d!2254447 () Bool)

(declare-fun c!1347882 () Bool)

(assert (=> d!2254447 (= c!1347882 (is-Nil!70401 (t!384581 s1!1971)))))

(declare-fun e!4348406 () (Set C!37570))

(assert (=> d!2254447 (= (content!14614 (t!384581 s1!1971)) e!4348406)))

(declare-fun b!7252085 () Bool)

(assert (=> b!7252085 (= e!4348406 (as set.empty (Set C!37570)))))

(declare-fun b!7252086 () Bool)

(assert (=> b!7252086 (= e!4348406 (set.union (set.insert (h!76849 (t!384581 s1!1971)) (as set.empty (Set C!37570))) (content!14614 (t!384581 (t!384581 s1!1971)))))))

(assert (= (and d!2254447 c!1347882) b!7252085))

(assert (= (and d!2254447 (not c!1347882)) b!7252086))

(declare-fun m!7931574 () Bool)

(assert (=> b!7252086 m!7931574))

(assert (=> b!7252086 m!7931542))

(assert (=> d!2254149 d!2254447))

(declare-fun d!2254449 () Bool)

(declare-fun c!1347883 () Bool)

(assert (=> d!2254449 (= c!1347883 (is-Nil!70401 s2!1849))))

(declare-fun e!4348407 () (Set C!37570))

(assert (=> d!2254449 (= (content!14614 s2!1849) e!4348407)))

(declare-fun b!7252087 () Bool)

(assert (=> b!7252087 (= e!4348407 (as set.empty (Set C!37570)))))

(declare-fun b!7252088 () Bool)

(assert (=> b!7252088 (= e!4348407 (set.union (set.insert (h!76849 s2!1849) (as set.empty (Set C!37570))) (content!14614 (t!384581 s2!1849))))))

(assert (= (and d!2254449 c!1347883) b!7252087))

(assert (= (and d!2254449 (not c!1347883)) b!7252088))

(declare-fun m!7931576 () Bool)

(assert (=> b!7252088 m!7931576))

(declare-fun m!7931578 () Bool)

(assert (=> b!7252088 m!7931578))

(assert (=> d!2254149 d!2254449))

(declare-fun bs!1906518 () Bool)

(declare-fun d!2254451 () Bool)

(assert (= bs!1906518 (and d!2254451 d!2254137)))

(declare-fun lambda!444416 () Int)

(assert (=> bs!1906518 (= lambda!444416 lambda!444367)))

(declare-fun bs!1906519 () Bool)

(assert (= bs!1906519 (and d!2254451 d!2254295)))

(assert (=> bs!1906519 (not (= lambda!444416 lambda!444402))))

(declare-fun bs!1906520 () Bool)

(assert (= bs!1906520 (and d!2254451 d!2254289)))

(assert (=> bs!1906520 (not (= lambda!444416 lambda!444401))))

(declare-fun bs!1906521 () Bool)

(assert (= bs!1906521 (and d!2254451 d!2254435)))

(assert (=> bs!1906521 (not (= lambda!444416 lambda!444415))))

(declare-fun bs!1906522 () Bool)

(assert (= bs!1906522 (and d!2254451 d!2254401)))

(assert (=> bs!1906522 (not (= lambda!444416 lambda!444410))))

(declare-fun bs!1906523 () Bool)

(assert (= bs!1906523 (and d!2254451 b!7251514)))

(assert (=> bs!1906523 (not (= lambda!444416 lambda!444336))))

(declare-fun bs!1906524 () Bool)

(assert (= bs!1906524 (and d!2254451 d!2254409)))

(assert (=> bs!1906524 (= (= lambda!444336 lambda!444370) (= lambda!444416 lambda!444411))))

(declare-fun bs!1906525 () Bool)

(assert (= bs!1906525 (and d!2254451 d!2254411)))

(assert (=> bs!1906525 (not (= lambda!444416 lambda!444414))))

(declare-fun bs!1906526 () Bool)

(assert (= bs!1906526 (and d!2254451 d!2254139)))

(assert (=> bs!1906526 (not (= lambda!444416 lambda!444370))))

(assert (=> d!2254451 true))

(assert (=> d!2254451 (< (dynLambda!28745 order!28983 lambda!444336) (dynLambda!28745 order!28983 lambda!444416))))

(assert (=> d!2254451 (= (exists!4375 (toList!11477 lt!2585278) lambda!444336) (not (forall!17495 (toList!11477 lt!2585278) lambda!444416)))))

(declare-fun bs!1906527 () Bool)

(assert (= bs!1906527 d!2254451))

(assert (=> bs!1906527 m!7930784))

(declare-fun m!7931580 () Bool)

(assert (=> bs!1906527 m!7931580))

(assert (=> d!2254135 d!2254451))

(assert (=> d!2254135 d!2254141))

(declare-fun d!2254453 () Bool)

(declare-fun res!2941178 () Bool)

(assert (=> d!2254453 (= res!2941178 (exists!4375 (toList!11477 lt!2585278) lambda!444336))))

(assert (=> d!2254453 true))

(assert (=> d!2254453 (= (choose!56024 lt!2585278 lambda!444336) res!2941178)))

(declare-fun bs!1906528 () Bool)

(assert (= bs!1906528 d!2254453))

(assert (=> bs!1906528 m!7930784))

(assert (=> bs!1906528 m!7930784))

(assert (=> bs!1906528 m!7930874))

(assert (=> d!2254135 d!2254453))

(declare-fun b!7252101 () Bool)

(declare-fun e!4348410 () Bool)

(declare-fun tp!2037619 () Bool)

(assert (=> b!7252101 (= e!4348410 tp!2037619)))

(declare-fun b!7252099 () Bool)

(assert (=> b!7252099 (= e!4348410 tp_is_empty!46761)))

(declare-fun b!7252100 () Bool)

(declare-fun tp!2037620 () Bool)

(declare-fun tp!2037622 () Bool)

(assert (=> b!7252100 (= e!4348410 (and tp!2037620 tp!2037622))))

(assert (=> b!7251723 (= tp!2037575 e!4348410)))

(declare-fun b!7252102 () Bool)

(declare-fun tp!2037623 () Bool)

(declare-fun tp!2037621 () Bool)

(assert (=> b!7252102 (= e!4348410 (and tp!2037623 tp!2037621))))

(assert (= (and b!7251723 (is-ElementMatch!18648 (h!76848 (exprs!8088 ct1!232)))) b!7252099))

(assert (= (and b!7251723 (is-Concat!27493 (h!76848 (exprs!8088 ct1!232)))) b!7252100))

(assert (= (and b!7251723 (is-Star!18648 (h!76848 (exprs!8088 ct1!232)))) b!7252101))

(assert (= (and b!7251723 (is-Union!18648 (h!76848 (exprs!8088 ct1!232)))) b!7252102))

(declare-fun b!7252103 () Bool)

(declare-fun e!4348411 () Bool)

(declare-fun tp!2037624 () Bool)

(declare-fun tp!2037625 () Bool)

(assert (=> b!7252103 (= e!4348411 (and tp!2037624 tp!2037625))))

(assert (=> b!7251723 (= tp!2037576 e!4348411)))

(assert (= (and b!7251723 (is-Cons!70400 (t!384580 (exprs!8088 ct1!232)))) b!7252103))

(declare-fun b!7252106 () Bool)

(declare-fun e!4348412 () Bool)

(declare-fun tp!2037626 () Bool)

(assert (=> b!7252106 (= e!4348412 tp!2037626)))

(declare-fun b!7252104 () Bool)

(assert (=> b!7252104 (= e!4348412 tp_is_empty!46761)))

(declare-fun b!7252105 () Bool)

(declare-fun tp!2037627 () Bool)

(declare-fun tp!2037629 () Bool)

(assert (=> b!7252105 (= e!4348412 (and tp!2037627 tp!2037629))))

(assert (=> b!7251738 (= tp!2037581 e!4348412)))

(declare-fun b!7252107 () Bool)

(declare-fun tp!2037630 () Bool)

(declare-fun tp!2037628 () Bool)

(assert (=> b!7252107 (= e!4348412 (and tp!2037630 tp!2037628))))

(assert (= (and b!7251738 (is-ElementMatch!18648 (h!76848 (exprs!8088 ct2!328)))) b!7252104))

(assert (= (and b!7251738 (is-Concat!27493 (h!76848 (exprs!8088 ct2!328)))) b!7252105))

(assert (= (and b!7251738 (is-Star!18648 (h!76848 (exprs!8088 ct2!328)))) b!7252106))

(assert (= (and b!7251738 (is-Union!18648 (h!76848 (exprs!8088 ct2!328)))) b!7252107))

(declare-fun b!7252108 () Bool)

(declare-fun e!4348413 () Bool)

(declare-fun tp!2037631 () Bool)

(declare-fun tp!2037632 () Bool)

(assert (=> b!7252108 (= e!4348413 (and tp!2037631 tp!2037632))))

(assert (=> b!7251738 (= tp!2037582 e!4348413)))

(assert (= (and b!7251738 (is-Cons!70400 (t!384580 (exprs!8088 ct2!328)))) b!7252108))

(declare-fun b!7252109 () Bool)

(declare-fun e!4348414 () Bool)

(declare-fun tp!2037633 () Bool)

(assert (=> b!7252109 (= e!4348414 (and tp_is_empty!46761 tp!2037633))))

(assert (=> b!7251736 (= tp!2037579 e!4348414)))

(assert (= (and b!7251736 (is-Cons!70401 (t!384581 (t!384581 s1!1971)))) b!7252109))

(declare-fun b!7252110 () Bool)

(declare-fun e!4348415 () Bool)

(declare-fun tp!2037634 () Bool)

(assert (=> b!7252110 (= e!4348415 (and tp_is_empty!46761 tp!2037634))))

(assert (=> b!7251737 (= tp!2037580 e!4348415)))

(assert (= (and b!7251737 (is-Cons!70401 (t!384581 (t!384581 s2!1849)))) b!7252110))

(declare-fun b_lambda!278547 () Bool)

(assert (= b_lambda!278529 (or b!7251514 b_lambda!278547)))

(declare-fun bs!1906529 () Bool)

(declare-fun d!2254455 () Bool)

(assert (= bs!1906529 (and d!2254455 b!7251514)))

(assert (=> bs!1906529 (= (dynLambda!28746 lambda!444336 lt!2585431) (matchZipper!3558 (set.insert lt!2585431 (as set.empty (Set Context!15176))) (t!384581 s1!1971)))))

(declare-fun m!7931582 () Bool)

(assert (=> bs!1906529 m!7931582))

(assert (=> bs!1906529 m!7931582))

(declare-fun m!7931584 () Bool)

(assert (=> bs!1906529 m!7931584))

(assert (=> d!2254323 d!2254455))

(declare-fun b_lambda!278549 () Bool)

(assert (= b_lambda!278531 (or b!7251514 b_lambda!278549)))

(declare-fun bs!1906530 () Bool)

(declare-fun d!2254457 () Bool)

(assert (= bs!1906530 (and d!2254457 b!7251514)))

(assert (=> bs!1906530 (= (dynLambda!28746 lambda!444336 (h!76850 (toList!11477 lt!2585278))) (matchZipper!3558 (set.insert (h!76850 (toList!11477 lt!2585278)) (as set.empty (Set Context!15176))) (t!384581 s1!1971)))))

(declare-fun m!7931586 () Bool)

(assert (=> bs!1906530 m!7931586))

(assert (=> bs!1906530 m!7931586))

(declare-fun m!7931588 () Bool)

(assert (=> bs!1906530 m!7931588))

(assert (=> b!7251928 d!2254457))

(declare-fun b_lambda!278551 () Bool)

(assert (= b_lambda!278535 (or d!2254189 b_lambda!278551)))

(declare-fun bs!1906531 () Bool)

(declare-fun d!2254459 () Bool)

(assert (= bs!1906531 (and d!2254459 d!2254189)))

(declare-fun validRegex!9542 (Regex!18648) Bool)

(assert (=> bs!1906531 (= (dynLambda!28751 lambda!444376 (h!76848 (exprs!8088 ct1!232))) (validRegex!9542 (h!76848 (exprs!8088 ct1!232))))))

(declare-fun m!7931590 () Bool)

(assert (=> bs!1906531 m!7931590))

(assert (=> b!7251952 d!2254459))

(declare-fun b_lambda!278553 () Bool)

(assert (= b_lambda!278523 (or d!2254203 b_lambda!278553)))

(declare-fun bs!1906532 () Bool)

(declare-fun d!2254461 () Bool)

(assert (= bs!1906532 (and d!2254461 d!2254203)))

(assert (=> bs!1906532 (= (dynLambda!28751 lambda!444381 (h!76848 (exprs!8088 lt!2585280))) (validRegex!9542 (h!76848 (exprs!8088 lt!2585280))))))

(declare-fun m!7931592 () Bool)

(assert (=> bs!1906532 m!7931592))

(assert (=> b!7251880 d!2254461))

(declare-fun b_lambda!278555 () Bool)

(assert (= b_lambda!278541 (or d!2254137 b_lambda!278555)))

(declare-fun bs!1906533 () Bool)

(declare-fun d!2254463 () Bool)

(assert (= bs!1906533 (and d!2254463 d!2254137)))

(assert (=> bs!1906533 (= (dynLambda!28746 lambda!444367 (h!76850 lt!2585268)) (not (dynLambda!28746 lambda!444336 (h!76850 lt!2585268))))))

(declare-fun b_lambda!278571 () Bool)

(assert (=> (not b_lambda!278571) (not bs!1906533)))

(declare-fun m!7931594 () Bool)

(assert (=> bs!1906533 m!7931594))

(assert (=> b!7251997 d!2254463))

(declare-fun b_lambda!278557 () Bool)

(assert (= b_lambda!278537 (or b!7251507 b_lambda!278557)))

(assert (=> d!2254385 d!2254207))

(declare-fun b_lambda!278559 () Bool)

(assert (= b_lambda!278539 (or d!2254191 b_lambda!278559)))

(declare-fun bs!1906534 () Bool)

(declare-fun d!2254465 () Bool)

(assert (= bs!1906534 (and d!2254465 d!2254191)))

(assert (=> bs!1906534 (= (dynLambda!28751 lambda!444377 (h!76848 (exprs!8088 ct2!328))) (validRegex!9542 (h!76848 (exprs!8088 ct2!328))))))

(declare-fun m!7931596 () Bool)

(assert (=> bs!1906534 m!7931596))

(assert (=> b!7251991 d!2254465))

(declare-fun b_lambda!278561 () Bool)

(assert (= b_lambda!278527 (or b!7251515 b_lambda!278561)))

(declare-fun bs!1906535 () Bool)

(declare-fun d!2254467 () Bool)

(assert (= bs!1906535 (and d!2254467 b!7251515)))

(assert (=> bs!1906535 (= (dynLambda!28751 lambda!444335 (h!76848 (exprs!8088 ct1!232))) (validRegex!9542 (h!76848 (exprs!8088 ct1!232))))))

(assert (=> bs!1906535 m!7931590))

(assert (=> b!7251884 d!2254467))

(declare-fun b_lambda!278563 () Bool)

(assert (= b_lambda!278543 (or b!7251515 b_lambda!278563)))

(declare-fun bs!1906536 () Bool)

(declare-fun d!2254469 () Bool)

(assert (= bs!1906536 (and d!2254469 b!7251515)))

(assert (=> bs!1906536 (= (dynLambda!28751 lambda!444335 (h!76848 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)))) (validRegex!9542 (h!76848 (++!16558 (exprs!8088 lt!2585269) (exprs!8088 ct2!328)))))))

(declare-fun m!7931598 () Bool)

(assert (=> bs!1906536 m!7931598))

(assert (=> b!7252007 d!2254469))

(declare-fun b_lambda!278565 () Bool)

(assert (= b_lambda!278525 (or b!7251515 b_lambda!278565)))

(declare-fun bs!1906537 () Bool)

(declare-fun d!2254471 () Bool)

(assert (= bs!1906537 (and d!2254471 b!7251515)))

(assert (=> bs!1906537 (= (dynLambda!28751 lambda!444335 (h!76848 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)))) (validRegex!9542 (h!76848 (++!16558 (exprs!8088 ct1!232) (exprs!8088 ct2!328)))))))

(declare-fun m!7931600 () Bool)

(assert (=> bs!1906537 m!7931600))

(assert (=> b!7251882 d!2254471))

(declare-fun b_lambda!278567 () Bool)

(assert (= b_lambda!278533 (or b!7251507 b_lambda!278567)))

(assert (=> d!2254325 d!2254209))

(declare-fun b_lambda!278569 () Bool)

(assert (= b_lambda!278545 (or b!7251515 b_lambda!278569)))

(declare-fun bs!1906538 () Bool)

(declare-fun d!2254473 () Bool)

(assert (= bs!1906538 (and d!2254473 b!7251515)))

(assert (=> bs!1906538 (= (dynLambda!28751 lambda!444335 (h!76848 (exprs!8088 lt!2585269))) (validRegex!9542 (h!76848 (exprs!8088 lt!2585269))))))

(declare-fun m!7931602 () Bool)

(assert (=> bs!1906538 m!7931602))

(assert (=> b!7252009 d!2254473))

(push 1)

(assert (not bm!660561))

(assert (not bm!660573))

(assert (not b!7251886))

(assert (not b_lambda!278567))

(assert (not b!7252006))

(assert (not b_lambda!278507))

(assert (not b!7252018))

(assert (not bm!660584))

(assert (not d!2254323))

(assert (not b!7251969))

(assert (not b!7251885))

(assert (not d!2254289))

(assert (not b!7252002))

(assert (not bm!660553))

(assert (not d!2254309))

(assert (not bm!660588))

(assert (not b_lambda!278555))

(assert (not b!7252109))

(assert (not bm!660587))

(assert (not bm!660592))

(assert (not b!7252056))

(assert (not b!7251938))

(assert (not b!7251890))

(assert (not b!7251889))

(assert (not d!2254337))

(assert (not b_lambda!278559))

(assert (not d!2254439))

(assert (not b!7251971))

(assert (not b!7251989))

(assert (not setNonEmpty!53576))

(assert (not d!2254279))

(assert (not b!7252102))

(assert (not bm!660575))

(assert (not b!7251883))

(assert (not bm!660569))

(assert (not d!2254453))

(assert (not bm!660560))

(assert (not bm!660574))

(assert (not d!2254365))

(assert (not bm!660567))

(assert (not b!7251887))

(assert (not bm!660555))

(assert (not b!7252086))

(assert (not b!7251986))

(assert (not d!2254325))

(assert (not d!2254315))

(assert (not b!7252012))

(assert (not bm!660562))

(assert (not bs!1906535))

(assert (not b_lambda!278549))

(assert (not b!7251973))

(assert (not b!7251934))

(assert (not d!2254385))

(assert (not b!7251925))

(assert (not b!7252103))

(assert (not b!7251963))

(assert (not b!7251881))

(assert (not d!2254411))

(assert (not b_lambda!278569))

(assert (not b!7252047))

(assert (not d!2254303))

(assert (not b!7251951))

(assert (not b!7251992))

(assert (not bm!660551))

(assert (not d!2254381))

(assert (not b_lambda!278565))

(assert (not d!2254391))

(assert (not b!7251950))

(assert (not bs!1906530))

(assert (not b!7251834))

(assert (not d!2254451))

(assert (not b!7252000))

(assert (not b!7252043))

(assert (not b!7252011))

(assert (not b!7252076))

(assert (not b!7252004))

(assert (not b!7251936))

(assert (not bs!1906534))

(assert (not b!7252065))

(assert (not b!7251990))

(assert (not b!7252057))

(assert (not b!7252101))

(assert (not b!7251959))

(assert (not d!2254283))

(assert (not bs!1906529))

(assert (not d!2254409))

(assert (not d!2254425))

(assert (not d!2254435))

(assert (not b!7251835))

(assert (not b!7251985))

(assert (not b!7252064))

(assert (not b!7251998))

(assert (not setNonEmpty!53575))

(assert (not bm!660580))

(assert (not b!7252027))

(assert (not b!7252008))

(assert (not b!7251926))

(assert (not b_lambda!278571))

(assert (not b!7252088))

(assert (not b!7251841))

(assert (not d!2254363))

(assert (not b_lambda!278553))

(assert (not bm!660554))

(assert (not bm!660579))

(assert (not b_lambda!278551))

(assert (not d!2254333))

(assert (not bs!1906537))

(assert (not b!7252067))

(assert (not bm!660550))

(assert (not b!7251961))

(assert (not b!7251988))

(assert (not b!7252100))

(assert (not b!7252050))

(assert (not b!7251910))

(assert (not d!2254299))

(assert (not b!7252031))

(assert (not b!7252084))

(assert (not b!7252108))

(assert (not b_lambda!278561))

(assert (not bs!1906532))

(assert (not b!7252107))

(assert (not bm!660558))

(assert (not d!2254371))

(assert (not d!2254405))

(assert (not bm!660594))

(assert (not d!2254339))

(assert (not bm!660568))

(assert (not bs!1906531))

(assert (not bm!660581))

(assert (not d!2254401))

(assert (not b!7252106))

(assert (not b!7251953))

(assert (not b_lambda!278547))

(assert (not d!2254383))

(assert (not b!7251905))

(assert (not b!7251923))

(assert (not d!2254295))

(assert (not b!7251982))

(assert (not b!7251909))

(assert (not d!2254379))

(assert (not b!7252010))

(assert (not b!7252105))

(assert (not b!7251906))

(assert (not b_lambda!278505))

(assert (not b_lambda!278509))

(assert (not b!7251987))

(assert (not bm!660593))

(assert (not d!2254313))

(assert (not bs!1906538))

(assert (not b!7252066))

(assert (not b!7252032))

(assert (not bm!660586))

(assert (not b!7251839))

(assert (not d!2254317))

(assert (not b!7251842))

(assert (not b_lambda!278563))

(assert (not b!7251901))

(assert (not d!2254373))

(assert (not d!2254413))

(assert (not b!7251873))

(assert (not b_lambda!278557))

(assert (not b!7252049))

(assert (not bs!1906536))

(assert (not b!7252110))

(assert (not b!7251947))

(assert (not bm!660565))

(assert tp_is_empty!46761)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

