; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709476 () Bool)

(assert start!709476)

(declare-fun b!7270391 () Bool)

(assert (=> b!7270391 true))

(declare-fun res!2947340 () Bool)

(declare-fun e!4359802 () Bool)

(assert (=> start!709476 (=> (not res!2947340) (not e!4359802))))

(declare-datatypes ((C!37866 0))(
  ( (C!37867 (val!28881 Int)) )
))
(declare-datatypes ((Regex!18796 0))(
  ( (ElementMatch!18796 (c!1353326 C!37866)) (Concat!27641 (regOne!38104 Regex!18796) (regTwo!38104 Regex!18796)) (EmptyExpr!18796) (Star!18796 (reg!19125 Regex!18796)) (EmptyLang!18796) (Union!18796 (regOne!38105 Regex!18796) (regTwo!38105 Regex!18796)) )
))
(declare-datatypes ((List!70907 0))(
  ( (Nil!70783) (Cons!70783 (h!77231 Regex!18796) (t!384977 List!70907)) )
))
(declare-datatypes ((Context!15472 0))(
  ( (Context!15473 (exprs!8236 List!70907)) )
))
(declare-fun ct2!346 () Context!15472)

(declare-datatypes ((List!70908 0))(
  ( (Nil!70784) (Cons!70784 (h!77232 C!37866) (t!384978 List!70908)) )
))
(declare-fun s!7854 () List!70908)

(declare-fun matchZipper!3700 ((Set Context!15472) List!70908) Bool)

(assert (=> start!709476 (= res!2947340 (matchZipper!3700 (set.insert ct2!346 (as set.empty (Set Context!15472))) s!7854))))

(assert (=> start!709476 e!4359802))

(declare-fun e!4359803 () Bool)

(declare-fun inv!90001 (Context!15472) Bool)

(assert (=> start!709476 (and (inv!90001 ct2!346) e!4359803)))

(declare-fun e!4359797 () Bool)

(assert (=> start!709476 e!4359797))

(declare-fun ct1!250 () Context!15472)

(declare-fun e!4359796 () Bool)

(assert (=> start!709476 (and (inv!90001 ct1!250) e!4359796)))

(declare-fun b!7270390 () Bool)

(declare-fun res!2947333 () Bool)

(assert (=> b!7270390 (=> (not res!2947333) (not e!4359802))))

(declare-fun nullableContext!286 (Context!15472) Bool)

(assert (=> b!7270390 (= res!2947333 (nullableContext!286 ct1!250))))

(declare-fun e!4359798 () Bool)

(assert (=> b!7270391 (= e!4359802 (not e!4359798))))

(declare-fun res!2947332 () Bool)

(assert (=> b!7270391 (=> res!2947332 e!4359798)))

(declare-fun lt!2594652 () (Set Context!15472))

(declare-fun lt!2594646 () (Set Context!15472))

(declare-fun derivationStepZipper!3536 ((Set Context!15472) C!37866) (Set Context!15472))

(assert (=> b!7270391 (= res!2947332 (not (= lt!2594652 (derivationStepZipper!3536 lt!2594646 (h!77232 s!7854)))))))

(declare-datatypes ((Unit!164210 0))(
  ( (Unit!164211) )
))
(declare-fun lt!2594649 () Unit!164210)

(declare-fun lambda!448528 () Int)

(declare-fun lemmaConcatPreservesForall!1553 (List!70907 List!70907 Int) Unit!164210)

(assert (=> b!7270391 (= lt!2594649 (lemmaConcatPreservesForall!1553 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lambda!448529 () Int)

(declare-fun lt!2594636 () Context!15472)

(declare-fun flatMap!2909 ((Set Context!15472) Int) (Set Context!15472))

(declare-fun derivationStepZipperUp!2566 (Context!15472 C!37866) (Set Context!15472))

(assert (=> b!7270391 (= (flatMap!2909 lt!2594646 lambda!448529) (derivationStepZipperUp!2566 lt!2594636 (h!77232 s!7854)))))

(declare-fun lt!2594656 () Unit!164210)

(declare-fun lemmaFlatMapOnSingletonSet!2309 ((Set Context!15472) Context!15472 Int) Unit!164210)

(assert (=> b!7270391 (= lt!2594656 (lemmaFlatMapOnSingletonSet!2309 lt!2594646 lt!2594636 lambda!448529))))

(assert (=> b!7270391 (= lt!2594646 (set.insert lt!2594636 (as set.empty (Set Context!15472))))))

(declare-fun lt!2594661 () Unit!164210)

(assert (=> b!7270391 (= lt!2594661 (lemmaConcatPreservesForall!1553 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594645 () Unit!164210)

(assert (=> b!7270391 (= lt!2594645 (lemmaConcatPreservesForall!1553 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594639 () (Set Context!15472))

(assert (=> b!7270391 (= (flatMap!2909 lt!2594639 lambda!448529) (derivationStepZipperUp!2566 ct1!250 (h!77232 s!7854)))))

(declare-fun lt!2594651 () Unit!164210)

(assert (=> b!7270391 (= lt!2594651 (lemmaFlatMapOnSingletonSet!2309 lt!2594639 ct1!250 lambda!448529))))

(assert (=> b!7270391 (= lt!2594639 (set.insert ct1!250 (as set.empty (Set Context!15472))))))

(assert (=> b!7270391 (= lt!2594652 (derivationStepZipperUp!2566 lt!2594636 (h!77232 s!7854)))))

(declare-fun ++!16696 (List!70907 List!70907) List!70907)

(assert (=> b!7270391 (= lt!2594636 (Context!15473 (++!16696 (exprs!8236 ct1!250) (exprs!8236 ct2!346))))))

(declare-fun lt!2594662 () Unit!164210)

(assert (=> b!7270391 (= lt!2594662 (lemmaConcatPreservesForall!1553 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528))))

(declare-fun b!7270392 () Bool)

(declare-fun tp!2041044 () Bool)

(assert (=> b!7270392 (= e!4359803 tp!2041044)))

(declare-fun b!7270393 () Bool)

(declare-fun tp!2041045 () Bool)

(assert (=> b!7270393 (= e!4359796 tp!2041045)))

(declare-fun b!7270394 () Bool)

(declare-fun res!2947337 () Bool)

(assert (=> b!7270394 (=> res!2947337 e!4359798)))

(assert (=> b!7270394 (= res!2947337 (not (is-Cons!70783 (exprs!8236 ct1!250))))))

(declare-fun b!7270395 () Bool)

(declare-fun e!4359799 () Bool)

(assert (=> b!7270395 (= e!4359798 e!4359799)))

(declare-fun res!2947330 () Bool)

(assert (=> b!7270395 (=> res!2947330 e!4359799)))

(declare-fun nullable!7996 (Regex!18796) Bool)

(assert (=> b!7270395 (= res!2947330 (not (nullable!7996 (h!77231 (exprs!8236 ct1!250)))))))

(declare-fun lt!2594654 () (Set Context!15472))

(assert (=> b!7270395 (= lt!2594654 (derivationStepZipperUp!2566 ct1!250 (h!77232 s!7854)))))

(declare-fun lt!2594638 () Context!15472)

(declare-fun lt!2594660 () List!70907)

(assert (=> b!7270395 (= lt!2594638 (Context!15473 lt!2594660))))

(declare-fun tail!14495 (List!70907) List!70907)

(assert (=> b!7270395 (= lt!2594660 (tail!14495 (exprs!8236 ct1!250)))))

(declare-fun b!7270396 () Bool)

(declare-fun e!4359804 () Bool)

(declare-fun e!4359800 () Bool)

(assert (=> b!7270396 (= e!4359804 e!4359800)))

(declare-fun res!2947335 () Bool)

(assert (=> b!7270396 (=> res!2947335 e!4359800)))

(declare-fun lt!2594644 () (Set Context!15472))

(assert (=> b!7270396 (= res!2947335 (not (matchZipper!3700 lt!2594644 (t!384978 s!7854))))))

(declare-fun lt!2594658 () Unit!164210)

(assert (=> b!7270396 (= lt!2594658 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594641 () (Set Context!15472))

(declare-fun lt!2594657 () Context!15472)

(assert (=> b!7270396 (= (flatMap!2909 lt!2594641 lambda!448529) (derivationStepZipperUp!2566 lt!2594657 (h!77232 s!7854)))))

(declare-fun lt!2594643 () Unit!164210)

(assert (=> b!7270396 (= lt!2594643 (lemmaFlatMapOnSingletonSet!2309 lt!2594641 lt!2594657 lambda!448529))))

(declare-fun lt!2594650 () Unit!164210)

(assert (=> b!7270396 (= lt!2594650 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594640 () Unit!164210)

(assert (=> b!7270396 (= lt!2594640 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594659 () Unit!164210)

(assert (=> b!7270396 (= lt!2594659 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(assert (=> b!7270396 (matchZipper!3700 lt!2594641 s!7854)))

(assert (=> b!7270396 (= lt!2594641 (set.insert lt!2594657 (as set.empty (Set Context!15472))))))

(declare-fun lt!2594655 () Unit!164210)

(assert (=> b!7270396 (= lt!2594655 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594648 () Unit!164210)

(declare-fun lemmaPrependingNullableCtxStillMatches!33 (Context!15472 Context!15472 List!70908) Unit!164210)

(assert (=> b!7270396 (= lt!2594648 (lemmaPrependingNullableCtxStillMatches!33 lt!2594638 ct2!346 s!7854))))

(declare-fun b!7270397 () Bool)

(declare-fun tp_is_empty!47057 () Bool)

(declare-fun tp!2041043 () Bool)

(assert (=> b!7270397 (= e!4359797 (and tp_is_empty!47057 tp!2041043))))

(declare-fun b!7270398 () Bool)

(declare-fun e!4359801 () Bool)

(declare-fun forall!17625 (List!70907 Int) Bool)

(assert (=> b!7270398 (= e!4359801 (forall!17625 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun b!7270399 () Bool)

(declare-fun res!2947336 () Bool)

(assert (=> b!7270399 (=> res!2947336 e!4359799)))

(declare-fun derivationStepZipperDown!2730 (Regex!18796 Context!15472 C!37866) (Set Context!15472))

(assert (=> b!7270399 (= res!2947336 (not (= lt!2594654 (set.union (derivationStepZipperDown!2730 (h!77231 (exprs!8236 ct1!250)) lt!2594638 (h!77232 s!7854)) (derivationStepZipperUp!2566 lt!2594638 (h!77232 s!7854))))))))

(declare-fun b!7270400 () Bool)

(assert (=> b!7270400 (= e!4359800 e!4359801)))

(declare-fun res!2947331 () Bool)

(assert (=> b!7270400 (=> res!2947331 e!4359801)))

(assert (=> b!7270400 (= res!2947331 (not (forall!17625 lt!2594660 lambda!448528)))))

(declare-fun lt!2594647 () Unit!164210)

(assert (=> b!7270400 (= lt!2594647 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun b!7270401 () Bool)

(declare-fun res!2947339 () Bool)

(assert (=> b!7270401 (=> res!2947339 e!4359798)))

(declare-fun isEmpty!40708 (List!70907) Bool)

(assert (=> b!7270401 (= res!2947339 (isEmpty!40708 (exprs!8236 ct1!250)))))

(declare-fun b!7270402 () Bool)

(assert (=> b!7270402 (= e!4359799 e!4359804)))

(declare-fun res!2947334 () Bool)

(assert (=> b!7270402 (=> res!2947334 e!4359804)))

(declare-fun lt!2594653 () (Set Context!15472))

(assert (=> b!7270402 (= res!2947334 (not (= lt!2594652 (set.union lt!2594653 lt!2594644))))))

(assert (=> b!7270402 (= lt!2594644 (derivationStepZipperUp!2566 lt!2594657 (h!77232 s!7854)))))

(assert (=> b!7270402 (= lt!2594653 (derivationStepZipperDown!2730 (h!77231 (exprs!8236 ct1!250)) lt!2594657 (h!77232 s!7854)))))

(assert (=> b!7270402 (= lt!2594657 (Context!15473 (++!16696 lt!2594660 (exprs!8236 ct2!346))))))

(declare-fun lt!2594642 () Unit!164210)

(assert (=> b!7270402 (= lt!2594642 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun lt!2594637 () Unit!164210)

(assert (=> b!7270402 (= lt!2594637 (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(declare-fun b!7270403 () Bool)

(declare-fun res!2947338 () Bool)

(assert (=> b!7270403 (=> (not res!2947338) (not e!4359802))))

(assert (=> b!7270403 (= res!2947338 (is-Cons!70784 s!7854))))

(assert (= (and start!709476 res!2947340) b!7270390))

(assert (= (and b!7270390 res!2947333) b!7270403))

(assert (= (and b!7270403 res!2947338) b!7270391))

(assert (= (and b!7270391 (not res!2947332)) b!7270394))

(assert (= (and b!7270394 (not res!2947337)) b!7270401))

(assert (= (and b!7270401 (not res!2947339)) b!7270395))

(assert (= (and b!7270395 (not res!2947330)) b!7270399))

(assert (= (and b!7270399 (not res!2947336)) b!7270402))

(assert (= (and b!7270402 (not res!2947334)) b!7270396))

(assert (= (and b!7270396 (not res!2947335)) b!7270400))

(assert (= (and b!7270400 (not res!2947331)) b!7270398))

(assert (= start!709476 b!7270392))

(assert (= (and start!709476 (is-Cons!70784 s!7854)) b!7270397))

(assert (= start!709476 b!7270393))

(declare-fun m!7955978 () Bool)

(assert (=> b!7270400 m!7955978))

(declare-fun m!7955980 () Bool)

(assert (=> b!7270400 m!7955980))

(declare-fun m!7955982 () Bool)

(assert (=> b!7270399 m!7955982))

(declare-fun m!7955984 () Bool)

(assert (=> b!7270399 m!7955984))

(declare-fun m!7955986 () Bool)

(assert (=> b!7270395 m!7955986))

(declare-fun m!7955988 () Bool)

(assert (=> b!7270395 m!7955988))

(declare-fun m!7955990 () Bool)

(assert (=> b!7270395 m!7955990))

(declare-fun m!7955992 () Bool)

(assert (=> b!7270401 m!7955992))

(assert (=> b!7270396 m!7955980))

(assert (=> b!7270396 m!7955980))

(assert (=> b!7270396 m!7955980))

(assert (=> b!7270396 m!7955980))

(declare-fun m!7955994 () Bool)

(assert (=> b!7270396 m!7955994))

(declare-fun m!7955996 () Bool)

(assert (=> b!7270396 m!7955996))

(declare-fun m!7955998 () Bool)

(assert (=> b!7270396 m!7955998))

(declare-fun m!7956000 () Bool)

(assert (=> b!7270396 m!7956000))

(declare-fun m!7956002 () Bool)

(assert (=> b!7270396 m!7956002))

(assert (=> b!7270396 m!7955980))

(declare-fun m!7956004 () Bool)

(assert (=> b!7270396 m!7956004))

(declare-fun m!7956006 () Bool)

(assert (=> b!7270396 m!7956006))

(declare-fun m!7956008 () Bool)

(assert (=> start!709476 m!7956008))

(assert (=> start!709476 m!7956008))

(declare-fun m!7956010 () Bool)

(assert (=> start!709476 m!7956010))

(declare-fun m!7956012 () Bool)

(assert (=> start!709476 m!7956012))

(declare-fun m!7956014 () Bool)

(assert (=> start!709476 m!7956014))

(declare-fun m!7956016 () Bool)

(assert (=> b!7270391 m!7956016))

(declare-fun m!7956018 () Bool)

(assert (=> b!7270391 m!7956018))

(declare-fun m!7956020 () Bool)

(assert (=> b!7270391 m!7956020))

(declare-fun m!7956022 () Bool)

(assert (=> b!7270391 m!7956022))

(assert (=> b!7270391 m!7955988))

(declare-fun m!7956024 () Bool)

(assert (=> b!7270391 m!7956024))

(assert (=> b!7270391 m!7956020))

(declare-fun m!7956026 () Bool)

(assert (=> b!7270391 m!7956026))

(assert (=> b!7270391 m!7956020))

(declare-fun m!7956028 () Bool)

(assert (=> b!7270391 m!7956028))

(declare-fun m!7956030 () Bool)

(assert (=> b!7270391 m!7956030))

(declare-fun m!7956032 () Bool)

(assert (=> b!7270391 m!7956032))

(assert (=> b!7270391 m!7956020))

(declare-fun m!7956034 () Bool)

(assert (=> b!7270391 m!7956034))

(declare-fun m!7956036 () Bool)

(assert (=> b!7270402 m!7956036))

(assert (=> b!7270402 m!7955980))

(assert (=> b!7270402 m!7955980))

(declare-fun m!7956038 () Bool)

(assert (=> b!7270402 m!7956038))

(assert (=> b!7270402 m!7956006))

(declare-fun m!7956040 () Bool)

(assert (=> b!7270390 m!7956040))

(declare-fun m!7956042 () Bool)

(assert (=> b!7270398 m!7956042))

(push 1)

(assert (not b!7270397))

(assert (not b!7270398))

(assert tp_is_empty!47057)

(assert (not b!7270402))

(assert (not b!7270401))

(assert (not b!7270390))

(assert (not b!7270391))

(assert (not b!7270395))

(assert (not start!709476))

(assert (not b!7270396))

(assert (not b!7270399))

(assert (not b!7270393))

(assert (not b!7270400))

(assert (not b!7270392))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2262401 () Bool)

(assert (=> d!2262401 (= (isEmpty!40708 (exprs!8236 ct1!250)) (is-Nil!70783 (exprs!8236 ct1!250)))))

(assert (=> b!7270401 d!2262401))

(declare-fun d!2262403 () Bool)

(declare-fun c!1353336 () Bool)

(declare-fun isEmpty!40710 (List!70908) Bool)

(assert (=> d!2262403 (= c!1353336 (isEmpty!40710 s!7854))))

(declare-fun e!4359834 () Bool)

(assert (=> d!2262403 (= (matchZipper!3700 (set.insert ct2!346 (as set.empty (Set Context!15472))) s!7854) e!4359834)))

(declare-fun b!7270454 () Bool)

(declare-fun nullableZipper!3002 ((Set Context!15472)) Bool)

(assert (=> b!7270454 (= e!4359834 (nullableZipper!3002 (set.insert ct2!346 (as set.empty (Set Context!15472)))))))

(declare-fun b!7270455 () Bool)

(declare-fun head!15000 (List!70908) C!37866)

(declare-fun tail!14497 (List!70908) List!70908)

(assert (=> b!7270455 (= e!4359834 (matchZipper!3700 (derivationStepZipper!3536 (set.insert ct2!346 (as set.empty (Set Context!15472))) (head!15000 s!7854)) (tail!14497 s!7854)))))

(assert (= (and d!2262403 c!1353336) b!7270454))

(assert (= (and d!2262403 (not c!1353336)) b!7270455))

(declare-fun m!7956110 () Bool)

(assert (=> d!2262403 m!7956110))

(assert (=> b!7270454 m!7956008))

(declare-fun m!7956112 () Bool)

(assert (=> b!7270454 m!7956112))

(declare-fun m!7956114 () Bool)

(assert (=> b!7270455 m!7956114))

(assert (=> b!7270455 m!7956008))

(assert (=> b!7270455 m!7956114))

(declare-fun m!7956116 () Bool)

(assert (=> b!7270455 m!7956116))

(declare-fun m!7956118 () Bool)

(assert (=> b!7270455 m!7956118))

(assert (=> b!7270455 m!7956116))

(assert (=> b!7270455 m!7956118))

(declare-fun m!7956120 () Bool)

(assert (=> b!7270455 m!7956120))

(assert (=> start!709476 d!2262403))

(declare-fun bs!1910992 () Bool)

(declare-fun d!2262407 () Bool)

(assert (= bs!1910992 (and d!2262407 b!7270391)))

(declare-fun lambda!448566 () Int)

(assert (=> bs!1910992 (= lambda!448566 lambda!448528)))

(assert (=> d!2262407 (= (inv!90001 ct2!346) (forall!17625 (exprs!8236 ct2!346) lambda!448566))))

(declare-fun bs!1910993 () Bool)

(assert (= bs!1910993 d!2262407))

(declare-fun m!7956124 () Bool)

(assert (=> bs!1910993 m!7956124))

(assert (=> start!709476 d!2262407))

(declare-fun bs!1910994 () Bool)

(declare-fun d!2262411 () Bool)

(assert (= bs!1910994 (and d!2262411 b!7270391)))

(declare-fun lambda!448567 () Int)

(assert (=> bs!1910994 (= lambda!448567 lambda!448528)))

(declare-fun bs!1910995 () Bool)

(assert (= bs!1910995 (and d!2262411 d!2262407)))

(assert (=> bs!1910995 (= lambda!448567 lambda!448566)))

(assert (=> d!2262411 (= (inv!90001 ct1!250) (forall!17625 (exprs!8236 ct1!250) lambda!448567))))

(declare-fun bs!1910996 () Bool)

(assert (= bs!1910996 d!2262411))

(declare-fun m!7956126 () Bool)

(assert (=> bs!1910996 m!7956126))

(assert (=> start!709476 d!2262411))

(declare-fun bs!1910997 () Bool)

(declare-fun d!2262413 () Bool)

(assert (= bs!1910997 (and d!2262413 b!7270391)))

(declare-fun lambda!448570 () Int)

(assert (=> bs!1910997 (not (= lambda!448570 lambda!448528))))

(declare-fun bs!1910998 () Bool)

(assert (= bs!1910998 (and d!2262413 d!2262407)))

(assert (=> bs!1910998 (not (= lambda!448570 lambda!448566))))

(declare-fun bs!1910999 () Bool)

(assert (= bs!1910999 (and d!2262413 d!2262411)))

(assert (=> bs!1910999 (not (= lambda!448570 lambda!448567))))

(assert (=> d!2262413 (= (nullableContext!286 ct1!250) (forall!17625 (exprs!8236 ct1!250) lambda!448570))))

(declare-fun bs!1911000 () Bool)

(assert (= bs!1911000 d!2262413))

(declare-fun m!7956128 () Bool)

(assert (=> bs!1911000 m!7956128))

(assert (=> b!7270390 d!2262413))

(declare-fun d!2262415 () Bool)

(declare-fun nullableFct!3155 (Regex!18796) Bool)

(assert (=> d!2262415 (= (nullable!7996 (h!77231 (exprs!8236 ct1!250))) (nullableFct!3155 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun bs!1911001 () Bool)

(assert (= bs!1911001 d!2262415))

(declare-fun m!7956130 () Bool)

(assert (=> bs!1911001 m!7956130))

(assert (=> b!7270395 d!2262415))

(declare-fun d!2262417 () Bool)

(declare-fun c!1353346 () Bool)

(declare-fun e!4359848 () Bool)

(assert (=> d!2262417 (= c!1353346 e!4359848)))

(declare-fun res!2947378 () Bool)

(assert (=> d!2262417 (=> (not res!2947378) (not e!4359848))))

(assert (=> d!2262417 (= res!2947378 (is-Cons!70783 (exprs!8236 ct1!250)))))

(declare-fun e!4359847 () (Set Context!15472))

(assert (=> d!2262417 (= (derivationStepZipperUp!2566 ct1!250 (h!77232 s!7854)) e!4359847)))

(declare-fun call!663046 () (Set Context!15472))

(declare-fun b!7270476 () Bool)

(assert (=> b!7270476 (= e!4359847 (set.union call!663046 (derivationStepZipperUp!2566 (Context!15473 (t!384977 (exprs!8236 ct1!250))) (h!77232 s!7854))))))

(declare-fun b!7270477 () Bool)

(declare-fun e!4359849 () (Set Context!15472))

(assert (=> b!7270477 (= e!4359849 (as set.empty (Set Context!15472)))))

(declare-fun b!7270478 () Bool)

(assert (=> b!7270478 (= e!4359847 e!4359849)))

(declare-fun c!1353347 () Bool)

(assert (=> b!7270478 (= c!1353347 (is-Cons!70783 (exprs!8236 ct1!250)))))

(declare-fun b!7270479 () Bool)

(assert (=> b!7270479 (= e!4359848 (nullable!7996 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun b!7270480 () Bool)

(assert (=> b!7270480 (= e!4359849 call!663046)))

(declare-fun bm!663041 () Bool)

(assert (=> bm!663041 (= call!663046 (derivationStepZipperDown!2730 (h!77231 (exprs!8236 ct1!250)) (Context!15473 (t!384977 (exprs!8236 ct1!250))) (h!77232 s!7854)))))

(assert (= (and d!2262417 res!2947378) b!7270479))

(assert (= (and d!2262417 c!1353346) b!7270476))

(assert (= (and d!2262417 (not c!1353346)) b!7270478))

(assert (= (and b!7270478 c!1353347) b!7270480))

(assert (= (and b!7270478 (not c!1353347)) b!7270477))

(assert (= (or b!7270476 b!7270480) bm!663041))

(declare-fun m!7956132 () Bool)

(assert (=> b!7270476 m!7956132))

(assert (=> b!7270479 m!7955986))

(declare-fun m!7956134 () Bool)

(assert (=> bm!663041 m!7956134))

(assert (=> b!7270395 d!2262417))

(declare-fun d!2262419 () Bool)

(assert (=> d!2262419 (= (tail!14495 (exprs!8236 ct1!250)) (t!384977 (exprs!8236 ct1!250)))))

(assert (=> b!7270395 d!2262419))

(declare-fun d!2262421 () Bool)

(declare-fun res!2947383 () Bool)

(declare-fun e!4359854 () Bool)

(assert (=> d!2262421 (=> res!2947383 e!4359854)))

(assert (=> d!2262421 (= res!2947383 (is-Nil!70783 lt!2594660))))

(assert (=> d!2262421 (= (forall!17625 lt!2594660 lambda!448528) e!4359854)))

(declare-fun b!7270485 () Bool)

(declare-fun e!4359855 () Bool)

(assert (=> b!7270485 (= e!4359854 e!4359855)))

(declare-fun res!2947384 () Bool)

(assert (=> b!7270485 (=> (not res!2947384) (not e!4359855))))

(declare-fun dynLambda!28930 (Int Regex!18796) Bool)

(assert (=> b!7270485 (= res!2947384 (dynLambda!28930 lambda!448528 (h!77231 lt!2594660)))))

(declare-fun b!7270486 () Bool)

(assert (=> b!7270486 (= e!4359855 (forall!17625 (t!384977 lt!2594660) lambda!448528))))

(assert (= (and d!2262421 (not res!2947383)) b!7270485))

(assert (= (and b!7270485 res!2947384) b!7270486))

(declare-fun b_lambda!280221 () Bool)

(assert (=> (not b_lambda!280221) (not b!7270485)))

(declare-fun m!7956136 () Bool)

(assert (=> b!7270485 m!7956136))

(declare-fun m!7956138 () Bool)

(assert (=> b!7270486 m!7956138))

(assert (=> b!7270400 d!2262421))

(declare-fun d!2262423 () Bool)

(assert (=> d!2262423 (forall!17625 (++!16696 lt!2594660 (exprs!8236 ct2!346)) lambda!448528)))

(declare-fun lt!2594746 () Unit!164210)

(declare-fun choose!56398 (List!70907 List!70907 Int) Unit!164210)

(assert (=> d!2262423 (= lt!2594746 (choose!56398 lt!2594660 (exprs!8236 ct2!346) lambda!448528))))

(assert (=> d!2262423 (forall!17625 lt!2594660 lambda!448528)))

(assert (=> d!2262423 (= (lemmaConcatPreservesForall!1553 lt!2594660 (exprs!8236 ct2!346) lambda!448528) lt!2594746)))

(declare-fun bs!1911002 () Bool)

(assert (= bs!1911002 d!2262423))

(assert (=> bs!1911002 m!7956036))

(assert (=> bs!1911002 m!7956036))

(declare-fun m!7956144 () Bool)

(assert (=> bs!1911002 m!7956144))

(declare-fun m!7956146 () Bool)

(assert (=> bs!1911002 m!7956146))

(assert (=> bs!1911002 m!7955978))

(assert (=> b!7270400 d!2262423))

(declare-fun b!7270520 () Bool)

(declare-fun c!1353363 () Bool)

(assert (=> b!7270520 (= c!1353363 (is-Star!18796 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun e!4359875 () (Set Context!15472))

(declare-fun e!4359877 () (Set Context!15472))

(assert (=> b!7270520 (= e!4359875 e!4359877)))

(declare-fun b!7270521 () Bool)

(declare-fun e!4359878 () (Set Context!15472))

(declare-fun call!663064 () (Set Context!15472))

(declare-fun call!663061 () (Set Context!15472))

(assert (=> b!7270521 (= e!4359878 (set.union call!663064 call!663061))))

(declare-fun b!7270522 () Bool)

(declare-fun e!4359879 () (Set Context!15472))

(assert (=> b!7270522 (= e!4359879 (set.insert lt!2594638 (as set.empty (Set Context!15472))))))

(declare-fun b!7270523 () Bool)

(assert (=> b!7270523 (= e!4359877 (as set.empty (Set Context!15472)))))

(declare-fun c!1353365 () Bool)

(declare-fun bm!663056 () Bool)

(declare-fun call!663065 () List!70907)

(assert (=> bm!663056 (= call!663064 (derivationStepZipperDown!2730 (ite c!1353365 (regOne!38105 (h!77231 (exprs!8236 ct1!250))) (regOne!38104 (h!77231 (exprs!8236 ct1!250)))) (ite c!1353365 lt!2594638 (Context!15473 call!663065)) (h!77232 s!7854)))))

(declare-fun bm!663057 () Bool)

(declare-fun call!663060 () (Set Context!15472))

(declare-fun call!663062 () (Set Context!15472))

(assert (=> bm!663057 (= call!663060 call!663062)))

(declare-fun c!1353366 () Bool)

(declare-fun bm!663058 () Bool)

(declare-fun c!1353367 () Bool)

(declare-fun $colon$colon!2970 (List!70907 Regex!18796) List!70907)

(assert (=> bm!663058 (= call!663065 ($colon$colon!2970 (exprs!8236 lt!2594638) (ite (or c!1353367 c!1353366) (regTwo!38104 (h!77231 (exprs!8236 ct1!250))) (h!77231 (exprs!8236 ct1!250)))))))

(declare-fun bm!663055 () Bool)

(declare-fun call!663063 () List!70907)

(assert (=> bm!663055 (= call!663063 call!663065)))

(declare-fun d!2262427 () Bool)

(declare-fun c!1353364 () Bool)

(assert (=> d!2262427 (= c!1353364 (and (is-ElementMatch!18796 (h!77231 (exprs!8236 ct1!250))) (= (c!1353326 (h!77231 (exprs!8236 ct1!250))) (h!77232 s!7854))))))

(assert (=> d!2262427 (= (derivationStepZipperDown!2730 (h!77231 (exprs!8236 ct1!250)) lt!2594638 (h!77232 s!7854)) e!4359879)))

(declare-fun b!7270524 () Bool)

(assert (=> b!7270524 (= e!4359875 call!663060)))

(declare-fun b!7270525 () Bool)

(assert (=> b!7270525 (= e!4359879 e!4359878)))

(assert (=> b!7270525 (= c!1353365 (is-Union!18796 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun b!7270526 () Bool)

(declare-fun e!4359876 () (Set Context!15472))

(assert (=> b!7270526 (= e!4359876 (set.union call!663064 call!663062))))

(declare-fun b!7270527 () Bool)

(declare-fun e!4359874 () Bool)

(assert (=> b!7270527 (= c!1353367 e!4359874)))

(declare-fun res!2947388 () Bool)

(assert (=> b!7270527 (=> (not res!2947388) (not e!4359874))))

(assert (=> b!7270527 (= res!2947388 (is-Concat!27641 (h!77231 (exprs!8236 ct1!250))))))

(assert (=> b!7270527 (= e!4359878 e!4359876)))

(declare-fun b!7270528 () Bool)

(assert (=> b!7270528 (= e!4359876 e!4359875)))

(assert (=> b!7270528 (= c!1353366 (is-Concat!27641 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun b!7270529 () Bool)

(assert (=> b!7270529 (= e!4359874 (nullable!7996 (regOne!38104 (h!77231 (exprs!8236 ct1!250)))))))

(declare-fun bm!663059 () Bool)

(assert (=> bm!663059 (= call!663062 call!663061)))

(declare-fun bm!663060 () Bool)

(assert (=> bm!663060 (= call!663061 (derivationStepZipperDown!2730 (ite c!1353365 (regTwo!38105 (h!77231 (exprs!8236 ct1!250))) (ite c!1353367 (regTwo!38104 (h!77231 (exprs!8236 ct1!250))) (ite c!1353366 (regOne!38104 (h!77231 (exprs!8236 ct1!250))) (reg!19125 (h!77231 (exprs!8236 ct1!250)))))) (ite (or c!1353365 c!1353367) lt!2594638 (Context!15473 call!663063)) (h!77232 s!7854)))))

(declare-fun b!7270530 () Bool)

(assert (=> b!7270530 (= e!4359877 call!663060)))

(assert (= (and d!2262427 c!1353364) b!7270522))

(assert (= (and d!2262427 (not c!1353364)) b!7270525))

(assert (= (and b!7270525 c!1353365) b!7270521))

(assert (= (and b!7270525 (not c!1353365)) b!7270527))

(assert (= (and b!7270527 res!2947388) b!7270529))

(assert (= (and b!7270527 c!1353367) b!7270526))

(assert (= (and b!7270527 (not c!1353367)) b!7270528))

(assert (= (and b!7270528 c!1353366) b!7270524))

(assert (= (and b!7270528 (not c!1353366)) b!7270520))

(assert (= (and b!7270520 c!1353363) b!7270530))

(assert (= (and b!7270520 (not c!1353363)) b!7270523))

(assert (= (or b!7270524 b!7270530) bm!663055))

(assert (= (or b!7270524 b!7270530) bm!663057))

(assert (= (or b!7270526 bm!663055) bm!663058))

(assert (= (or b!7270526 bm!663057) bm!663059))

(assert (= (or b!7270521 b!7270526) bm!663056))

(assert (= (or b!7270521 bm!663059) bm!663060))

(declare-fun m!7956160 () Bool)

(assert (=> bm!663056 m!7956160))

(declare-fun m!7956162 () Bool)

(assert (=> bm!663060 m!7956162))

(declare-fun m!7956164 () Bool)

(assert (=> b!7270529 m!7956164))

(declare-fun m!7956166 () Bool)

(assert (=> b!7270522 m!7956166))

(declare-fun m!7956168 () Bool)

(assert (=> bm!663058 m!7956168))

(assert (=> b!7270399 d!2262427))

(declare-fun d!2262433 () Bool)

(declare-fun c!1353368 () Bool)

(declare-fun e!4359881 () Bool)

(assert (=> d!2262433 (= c!1353368 e!4359881)))

(declare-fun res!2947389 () Bool)

(assert (=> d!2262433 (=> (not res!2947389) (not e!4359881))))

(assert (=> d!2262433 (= res!2947389 (is-Cons!70783 (exprs!8236 lt!2594638)))))

(declare-fun e!4359880 () (Set Context!15472))

(assert (=> d!2262433 (= (derivationStepZipperUp!2566 lt!2594638 (h!77232 s!7854)) e!4359880)))

(declare-fun call!663066 () (Set Context!15472))

(declare-fun b!7270531 () Bool)

(assert (=> b!7270531 (= e!4359880 (set.union call!663066 (derivationStepZipperUp!2566 (Context!15473 (t!384977 (exprs!8236 lt!2594638))) (h!77232 s!7854))))))

(declare-fun b!7270532 () Bool)

(declare-fun e!4359882 () (Set Context!15472))

(assert (=> b!7270532 (= e!4359882 (as set.empty (Set Context!15472)))))

(declare-fun b!7270533 () Bool)

(assert (=> b!7270533 (= e!4359880 e!4359882)))

(declare-fun c!1353369 () Bool)

(assert (=> b!7270533 (= c!1353369 (is-Cons!70783 (exprs!8236 lt!2594638)))))

(declare-fun b!7270534 () Bool)

(assert (=> b!7270534 (= e!4359881 (nullable!7996 (h!77231 (exprs!8236 lt!2594638))))))

(declare-fun b!7270535 () Bool)

(assert (=> b!7270535 (= e!4359882 call!663066)))

(declare-fun bm!663061 () Bool)

(assert (=> bm!663061 (= call!663066 (derivationStepZipperDown!2730 (h!77231 (exprs!8236 lt!2594638)) (Context!15473 (t!384977 (exprs!8236 lt!2594638))) (h!77232 s!7854)))))

(assert (= (and d!2262433 res!2947389) b!7270534))

(assert (= (and d!2262433 c!1353368) b!7270531))

(assert (= (and d!2262433 (not c!1353368)) b!7270533))

(assert (= (and b!7270533 c!1353369) b!7270535))

(assert (= (and b!7270533 (not c!1353369)) b!7270532))

(assert (= (or b!7270531 b!7270535) bm!663061))

(declare-fun m!7956170 () Bool)

(assert (=> b!7270531 m!7956170))

(declare-fun m!7956172 () Bool)

(assert (=> b!7270534 m!7956172))

(declare-fun m!7956174 () Bool)

(assert (=> bm!663061 m!7956174))

(assert (=> b!7270399 d!2262433))

(declare-fun d!2262435 () Bool)

(declare-fun res!2947390 () Bool)

(declare-fun e!4359883 () Bool)

(assert (=> d!2262435 (=> res!2947390 e!4359883)))

(assert (=> d!2262435 (= res!2947390 (is-Nil!70783 (exprs!8236 ct2!346)))))

(assert (=> d!2262435 (= (forall!17625 (exprs!8236 ct2!346) lambda!448528) e!4359883)))

(declare-fun b!7270536 () Bool)

(declare-fun e!4359884 () Bool)

(assert (=> b!7270536 (= e!4359883 e!4359884)))

(declare-fun res!2947391 () Bool)

(assert (=> b!7270536 (=> (not res!2947391) (not e!4359884))))

(assert (=> b!7270536 (= res!2947391 (dynLambda!28930 lambda!448528 (h!77231 (exprs!8236 ct2!346))))))

(declare-fun b!7270537 () Bool)

(assert (=> b!7270537 (= e!4359884 (forall!17625 (t!384977 (exprs!8236 ct2!346)) lambda!448528))))

(assert (= (and d!2262435 (not res!2947390)) b!7270536))

(assert (= (and b!7270536 res!2947391) b!7270537))

(declare-fun b_lambda!280223 () Bool)

(assert (=> (not b_lambda!280223) (not b!7270536)))

(declare-fun m!7956176 () Bool)

(assert (=> b!7270536 m!7956176))

(declare-fun m!7956178 () Bool)

(assert (=> b!7270537 m!7956178))

(assert (=> b!7270398 d!2262435))

(declare-fun b!7270538 () Bool)

(declare-fun c!1353370 () Bool)

(assert (=> b!7270538 (= c!1353370 (is-Star!18796 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun e!4359886 () (Set Context!15472))

(declare-fun e!4359888 () (Set Context!15472))

(assert (=> b!7270538 (= e!4359886 e!4359888)))

(declare-fun b!7270539 () Bool)

(declare-fun e!4359889 () (Set Context!15472))

(declare-fun call!663071 () (Set Context!15472))

(declare-fun call!663068 () (Set Context!15472))

(assert (=> b!7270539 (= e!4359889 (set.union call!663071 call!663068))))

(declare-fun b!7270540 () Bool)

(declare-fun e!4359890 () (Set Context!15472))

(assert (=> b!7270540 (= e!4359890 (set.insert lt!2594657 (as set.empty (Set Context!15472))))))

(declare-fun b!7270541 () Bool)

(assert (=> b!7270541 (= e!4359888 (as set.empty (Set Context!15472)))))

(declare-fun bm!663063 () Bool)

(declare-fun c!1353372 () Bool)

(declare-fun call!663072 () List!70907)

(assert (=> bm!663063 (= call!663071 (derivationStepZipperDown!2730 (ite c!1353372 (regOne!38105 (h!77231 (exprs!8236 ct1!250))) (regOne!38104 (h!77231 (exprs!8236 ct1!250)))) (ite c!1353372 lt!2594657 (Context!15473 call!663072)) (h!77232 s!7854)))))

(declare-fun bm!663064 () Bool)

(declare-fun call!663067 () (Set Context!15472))

(declare-fun call!663069 () (Set Context!15472))

(assert (=> bm!663064 (= call!663067 call!663069)))

(declare-fun c!1353373 () Bool)

(declare-fun c!1353374 () Bool)

(declare-fun bm!663065 () Bool)

(assert (=> bm!663065 (= call!663072 ($colon$colon!2970 (exprs!8236 lt!2594657) (ite (or c!1353374 c!1353373) (regTwo!38104 (h!77231 (exprs!8236 ct1!250))) (h!77231 (exprs!8236 ct1!250)))))))

(declare-fun bm!663062 () Bool)

(declare-fun call!663070 () List!70907)

(assert (=> bm!663062 (= call!663070 call!663072)))

(declare-fun d!2262437 () Bool)

(declare-fun c!1353371 () Bool)

(assert (=> d!2262437 (= c!1353371 (and (is-ElementMatch!18796 (h!77231 (exprs!8236 ct1!250))) (= (c!1353326 (h!77231 (exprs!8236 ct1!250))) (h!77232 s!7854))))))

(assert (=> d!2262437 (= (derivationStepZipperDown!2730 (h!77231 (exprs!8236 ct1!250)) lt!2594657 (h!77232 s!7854)) e!4359890)))

(declare-fun b!7270542 () Bool)

(assert (=> b!7270542 (= e!4359886 call!663067)))

(declare-fun b!7270543 () Bool)

(assert (=> b!7270543 (= e!4359890 e!4359889)))

(assert (=> b!7270543 (= c!1353372 (is-Union!18796 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun b!7270544 () Bool)

(declare-fun e!4359887 () (Set Context!15472))

(assert (=> b!7270544 (= e!4359887 (set.union call!663071 call!663069))))

(declare-fun b!7270545 () Bool)

(declare-fun e!4359885 () Bool)

(assert (=> b!7270545 (= c!1353374 e!4359885)))

(declare-fun res!2947392 () Bool)

(assert (=> b!7270545 (=> (not res!2947392) (not e!4359885))))

(assert (=> b!7270545 (= res!2947392 (is-Concat!27641 (h!77231 (exprs!8236 ct1!250))))))

(assert (=> b!7270545 (= e!4359889 e!4359887)))

(declare-fun b!7270546 () Bool)

(assert (=> b!7270546 (= e!4359887 e!4359886)))

(assert (=> b!7270546 (= c!1353373 (is-Concat!27641 (h!77231 (exprs!8236 ct1!250))))))

(declare-fun b!7270547 () Bool)

(assert (=> b!7270547 (= e!4359885 (nullable!7996 (regOne!38104 (h!77231 (exprs!8236 ct1!250)))))))

(declare-fun bm!663066 () Bool)

(assert (=> bm!663066 (= call!663069 call!663068)))

(declare-fun bm!663067 () Bool)

(assert (=> bm!663067 (= call!663068 (derivationStepZipperDown!2730 (ite c!1353372 (regTwo!38105 (h!77231 (exprs!8236 ct1!250))) (ite c!1353374 (regTwo!38104 (h!77231 (exprs!8236 ct1!250))) (ite c!1353373 (regOne!38104 (h!77231 (exprs!8236 ct1!250))) (reg!19125 (h!77231 (exprs!8236 ct1!250)))))) (ite (or c!1353372 c!1353374) lt!2594657 (Context!15473 call!663070)) (h!77232 s!7854)))))

(declare-fun b!7270548 () Bool)

(assert (=> b!7270548 (= e!4359888 call!663067)))

(assert (= (and d!2262437 c!1353371) b!7270540))

(assert (= (and d!2262437 (not c!1353371)) b!7270543))

(assert (= (and b!7270543 c!1353372) b!7270539))

(assert (= (and b!7270543 (not c!1353372)) b!7270545))

(assert (= (and b!7270545 res!2947392) b!7270547))

(assert (= (and b!7270545 c!1353374) b!7270544))

(assert (= (and b!7270545 (not c!1353374)) b!7270546))

(assert (= (and b!7270546 c!1353373) b!7270542))

(assert (= (and b!7270546 (not c!1353373)) b!7270538))

(assert (= (and b!7270538 c!1353370) b!7270548))

(assert (= (and b!7270538 (not c!1353370)) b!7270541))

(assert (= (or b!7270542 b!7270548) bm!663062))

(assert (= (or b!7270542 b!7270548) bm!663064))

(assert (= (or b!7270544 bm!663062) bm!663065))

(assert (= (or b!7270544 bm!663064) bm!663066))

(assert (= (or b!7270539 b!7270544) bm!663063))

(assert (= (or b!7270539 bm!663066) bm!663067))

(declare-fun m!7956182 () Bool)

(assert (=> bm!663063 m!7956182))

(declare-fun m!7956184 () Bool)

(assert (=> bm!663067 m!7956184))

(assert (=> b!7270547 m!7956164))

(assert (=> b!7270540 m!7955994))

(declare-fun m!7956188 () Bool)

(assert (=> bm!663065 m!7956188))

(assert (=> b!7270402 d!2262437))

(declare-fun d!2262443 () Bool)

(declare-fun c!1353375 () Bool)

(declare-fun e!4359892 () Bool)

(assert (=> d!2262443 (= c!1353375 e!4359892)))

(declare-fun res!2947393 () Bool)

(assert (=> d!2262443 (=> (not res!2947393) (not e!4359892))))

(assert (=> d!2262443 (= res!2947393 (is-Cons!70783 (exprs!8236 lt!2594657)))))

(declare-fun e!4359891 () (Set Context!15472))

(assert (=> d!2262443 (= (derivationStepZipperUp!2566 lt!2594657 (h!77232 s!7854)) e!4359891)))

(declare-fun call!663073 () (Set Context!15472))

(declare-fun b!7270549 () Bool)

(assert (=> b!7270549 (= e!4359891 (set.union call!663073 (derivationStepZipperUp!2566 (Context!15473 (t!384977 (exprs!8236 lt!2594657))) (h!77232 s!7854))))))

(declare-fun b!7270550 () Bool)

(declare-fun e!4359893 () (Set Context!15472))

(assert (=> b!7270550 (= e!4359893 (as set.empty (Set Context!15472)))))

(declare-fun b!7270551 () Bool)

(assert (=> b!7270551 (= e!4359891 e!4359893)))

(declare-fun c!1353376 () Bool)

(assert (=> b!7270551 (= c!1353376 (is-Cons!70783 (exprs!8236 lt!2594657)))))

(declare-fun b!7270552 () Bool)

(assert (=> b!7270552 (= e!4359892 (nullable!7996 (h!77231 (exprs!8236 lt!2594657))))))

(declare-fun b!7270553 () Bool)

(assert (=> b!7270553 (= e!4359893 call!663073)))

(declare-fun bm!663068 () Bool)

(assert (=> bm!663068 (= call!663073 (derivationStepZipperDown!2730 (h!77231 (exprs!8236 lt!2594657)) (Context!15473 (t!384977 (exprs!8236 lt!2594657))) (h!77232 s!7854)))))

(assert (= (and d!2262443 res!2947393) b!7270552))

(assert (= (and d!2262443 c!1353375) b!7270549))

(assert (= (and d!2262443 (not c!1353375)) b!7270551))

(assert (= (and b!7270551 c!1353376) b!7270553))

(assert (= (and b!7270551 (not c!1353376)) b!7270550))

(assert (= (or b!7270549 b!7270553) bm!663068))

(declare-fun m!7956190 () Bool)

(assert (=> b!7270549 m!7956190))

(declare-fun m!7956192 () Bool)

(assert (=> b!7270552 m!7956192))

(declare-fun m!7956194 () Bool)

(assert (=> bm!663068 m!7956194))

(assert (=> b!7270402 d!2262443))

(assert (=> b!7270402 d!2262423))

(declare-fun b!7270562 () Bool)

(declare-fun e!4359898 () List!70907)

(assert (=> b!7270562 (= e!4359898 (exprs!8236 ct2!346))))

(declare-fun d!2262445 () Bool)

(declare-fun e!4359899 () Bool)

(assert (=> d!2262445 e!4359899))

(declare-fun res!2947398 () Bool)

(assert (=> d!2262445 (=> (not res!2947398) (not e!4359899))))

(declare-fun lt!2594749 () List!70907)

(declare-fun content!14774 (List!70907) (Set Regex!18796))

(assert (=> d!2262445 (= res!2947398 (= (content!14774 lt!2594749) (set.union (content!14774 lt!2594660) (content!14774 (exprs!8236 ct2!346)))))))

(assert (=> d!2262445 (= lt!2594749 e!4359898)))

(declare-fun c!1353379 () Bool)

(assert (=> d!2262445 (= c!1353379 (is-Nil!70783 lt!2594660))))

(assert (=> d!2262445 (= (++!16696 lt!2594660 (exprs!8236 ct2!346)) lt!2594749)))

(declare-fun b!7270564 () Bool)

(declare-fun res!2947399 () Bool)

(assert (=> b!7270564 (=> (not res!2947399) (not e!4359899))))

(declare-fun size!41822 (List!70907) Int)

(assert (=> b!7270564 (= res!2947399 (= (size!41822 lt!2594749) (+ (size!41822 lt!2594660) (size!41822 (exprs!8236 ct2!346)))))))

(declare-fun b!7270563 () Bool)

(assert (=> b!7270563 (= e!4359898 (Cons!70783 (h!77231 lt!2594660) (++!16696 (t!384977 lt!2594660) (exprs!8236 ct2!346))))))

(declare-fun b!7270565 () Bool)

(assert (=> b!7270565 (= e!4359899 (or (not (= (exprs!8236 ct2!346) Nil!70783)) (= lt!2594749 lt!2594660)))))

(assert (= (and d!2262445 c!1353379) b!7270562))

(assert (= (and d!2262445 (not c!1353379)) b!7270563))

(assert (= (and d!2262445 res!2947398) b!7270564))

(assert (= (and b!7270564 res!2947399) b!7270565))

(declare-fun m!7956196 () Bool)

(assert (=> d!2262445 m!7956196))

(declare-fun m!7956198 () Bool)

(assert (=> d!2262445 m!7956198))

(declare-fun m!7956200 () Bool)

(assert (=> d!2262445 m!7956200))

(declare-fun m!7956202 () Bool)

(assert (=> b!7270564 m!7956202))

(declare-fun m!7956204 () Bool)

(assert (=> b!7270564 m!7956204))

(declare-fun m!7956206 () Bool)

(assert (=> b!7270564 m!7956206))

(declare-fun m!7956208 () Bool)

(assert (=> b!7270563 m!7956208))

(assert (=> b!7270402 d!2262445))

(declare-fun d!2262447 () Bool)

(declare-fun c!1353380 () Bool)

(declare-fun e!4359901 () Bool)

(assert (=> d!2262447 (= c!1353380 e!4359901)))

(declare-fun res!2947400 () Bool)

(assert (=> d!2262447 (=> (not res!2947400) (not e!4359901))))

(assert (=> d!2262447 (= res!2947400 (is-Cons!70783 (exprs!8236 lt!2594636)))))

(declare-fun e!4359900 () (Set Context!15472))

(assert (=> d!2262447 (= (derivationStepZipperUp!2566 lt!2594636 (h!77232 s!7854)) e!4359900)))

(declare-fun b!7270566 () Bool)

(declare-fun call!663074 () (Set Context!15472))

(assert (=> b!7270566 (= e!4359900 (set.union call!663074 (derivationStepZipperUp!2566 (Context!15473 (t!384977 (exprs!8236 lt!2594636))) (h!77232 s!7854))))))

(declare-fun b!7270567 () Bool)

(declare-fun e!4359902 () (Set Context!15472))

(assert (=> b!7270567 (= e!4359902 (as set.empty (Set Context!15472)))))

(declare-fun b!7270568 () Bool)

(assert (=> b!7270568 (= e!4359900 e!4359902)))

(declare-fun c!1353381 () Bool)

(assert (=> b!7270568 (= c!1353381 (is-Cons!70783 (exprs!8236 lt!2594636)))))

(declare-fun b!7270569 () Bool)

(assert (=> b!7270569 (= e!4359901 (nullable!7996 (h!77231 (exprs!8236 lt!2594636))))))

(declare-fun b!7270570 () Bool)

(assert (=> b!7270570 (= e!4359902 call!663074)))

(declare-fun bm!663069 () Bool)

(assert (=> bm!663069 (= call!663074 (derivationStepZipperDown!2730 (h!77231 (exprs!8236 lt!2594636)) (Context!15473 (t!384977 (exprs!8236 lt!2594636))) (h!77232 s!7854)))))

(assert (= (and d!2262447 res!2947400) b!7270569))

(assert (= (and d!2262447 c!1353380) b!7270566))

(assert (= (and d!2262447 (not c!1353380)) b!7270568))

(assert (= (and b!7270568 c!1353381) b!7270570))

(assert (= (and b!7270568 (not c!1353381)) b!7270567))

(assert (= (or b!7270566 b!7270570) bm!663069))

(declare-fun m!7956210 () Bool)

(assert (=> b!7270566 m!7956210))

(declare-fun m!7956212 () Bool)

(assert (=> b!7270569 m!7956212))

(declare-fun m!7956214 () Bool)

(assert (=> bm!663069 m!7956214))

(assert (=> b!7270391 d!2262447))

(declare-fun d!2262449 () Bool)

(declare-fun dynLambda!28931 (Int Context!15472) (Set Context!15472))

(assert (=> d!2262449 (= (flatMap!2909 lt!2594646 lambda!448529) (dynLambda!28931 lambda!448529 lt!2594636))))

(declare-fun lt!2594752 () Unit!164210)

(declare-fun choose!56399 ((Set Context!15472) Context!15472 Int) Unit!164210)

(assert (=> d!2262449 (= lt!2594752 (choose!56399 lt!2594646 lt!2594636 lambda!448529))))

(assert (=> d!2262449 (= lt!2594646 (set.insert lt!2594636 (as set.empty (Set Context!15472))))))

(assert (=> d!2262449 (= (lemmaFlatMapOnSingletonSet!2309 lt!2594646 lt!2594636 lambda!448529) lt!2594752)))

(declare-fun b_lambda!280225 () Bool)

(assert (=> (not b_lambda!280225) (not d!2262449)))

(declare-fun bs!1911008 () Bool)

(assert (= bs!1911008 d!2262449))

(assert (=> bs!1911008 m!7956016))

(declare-fun m!7956216 () Bool)

(assert (=> bs!1911008 m!7956216))

(declare-fun m!7956218 () Bool)

(assert (=> bs!1911008 m!7956218))

(assert (=> bs!1911008 m!7956024))

(assert (=> b!7270391 d!2262449))

(assert (=> b!7270391 d!2262417))

(declare-fun d!2262451 () Bool)

(declare-fun choose!56400 ((Set Context!15472) Int) (Set Context!15472))

(assert (=> d!2262451 (= (flatMap!2909 lt!2594639 lambda!448529) (choose!56400 lt!2594639 lambda!448529))))

(declare-fun bs!1911009 () Bool)

(assert (= bs!1911009 d!2262451))

(declare-fun m!7956220 () Bool)

(assert (=> bs!1911009 m!7956220))

(assert (=> b!7270391 d!2262451))

(declare-fun b!7270579 () Bool)

(declare-fun e!4359907 () List!70907)

(assert (=> b!7270579 (= e!4359907 (exprs!8236 ct2!346))))

(declare-fun d!2262453 () Bool)

(declare-fun e!4359908 () Bool)

(assert (=> d!2262453 e!4359908))

(declare-fun res!2947401 () Bool)

(assert (=> d!2262453 (=> (not res!2947401) (not e!4359908))))

(declare-fun lt!2594753 () List!70907)

(assert (=> d!2262453 (= res!2947401 (= (content!14774 lt!2594753) (set.union (content!14774 (exprs!8236 ct1!250)) (content!14774 (exprs!8236 ct2!346)))))))

(assert (=> d!2262453 (= lt!2594753 e!4359907)))

(declare-fun c!1353386 () Bool)

(assert (=> d!2262453 (= c!1353386 (is-Nil!70783 (exprs!8236 ct1!250)))))

(assert (=> d!2262453 (= (++!16696 (exprs!8236 ct1!250) (exprs!8236 ct2!346)) lt!2594753)))

(declare-fun b!7270583 () Bool)

(declare-fun res!2947402 () Bool)

(assert (=> b!7270583 (=> (not res!2947402) (not e!4359908))))

(assert (=> b!7270583 (= res!2947402 (= (size!41822 lt!2594753) (+ (size!41822 (exprs!8236 ct1!250)) (size!41822 (exprs!8236 ct2!346)))))))

(declare-fun b!7270582 () Bool)

(assert (=> b!7270582 (= e!4359907 (Cons!70783 (h!77231 (exprs!8236 ct1!250)) (++!16696 (t!384977 (exprs!8236 ct1!250)) (exprs!8236 ct2!346))))))

(declare-fun b!7270584 () Bool)

(assert (=> b!7270584 (= e!4359908 (or (not (= (exprs!8236 ct2!346) Nil!70783)) (= lt!2594753 (exprs!8236 ct1!250))))))

(assert (= (and d!2262453 c!1353386) b!7270579))

(assert (= (and d!2262453 (not c!1353386)) b!7270582))

(assert (= (and d!2262453 res!2947401) b!7270583))

(assert (= (and b!7270583 res!2947402) b!7270584))

(declare-fun m!7956222 () Bool)

(assert (=> d!2262453 m!7956222))

(declare-fun m!7956224 () Bool)

(assert (=> d!2262453 m!7956224))

(assert (=> d!2262453 m!7956200))

(declare-fun m!7956226 () Bool)

(assert (=> b!7270583 m!7956226))

(declare-fun m!7956228 () Bool)

(assert (=> b!7270583 m!7956228))

(assert (=> b!7270583 m!7956206))

(declare-fun m!7956230 () Bool)

(assert (=> b!7270582 m!7956230))

(assert (=> b!7270391 d!2262453))

(declare-fun d!2262455 () Bool)

(assert (=> d!2262455 (forall!17625 (++!16696 (exprs!8236 ct1!250) (exprs!8236 ct2!346)) lambda!448528)))

(declare-fun lt!2594754 () Unit!164210)

(assert (=> d!2262455 (= lt!2594754 (choose!56398 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528))))

(assert (=> d!2262455 (forall!17625 (exprs!8236 ct1!250) lambda!448528)))

(assert (=> d!2262455 (= (lemmaConcatPreservesForall!1553 (exprs!8236 ct1!250) (exprs!8236 ct2!346) lambda!448528) lt!2594754)))

(declare-fun bs!1911010 () Bool)

(assert (= bs!1911010 d!2262455))

(assert (=> bs!1911010 m!7956034))

(assert (=> bs!1911010 m!7956034))

(declare-fun m!7956232 () Bool)

(assert (=> bs!1911010 m!7956232))

(declare-fun m!7956234 () Bool)

(assert (=> bs!1911010 m!7956234))

(declare-fun m!7956236 () Bool)

(assert (=> bs!1911010 m!7956236))

(assert (=> b!7270391 d!2262455))

(declare-fun d!2262457 () Bool)

(assert (=> d!2262457 (= (flatMap!2909 lt!2594646 lambda!448529) (choose!56400 lt!2594646 lambda!448529))))

(declare-fun bs!1911011 () Bool)

(assert (= bs!1911011 d!2262457))

(declare-fun m!7956238 () Bool)

(assert (=> bs!1911011 m!7956238))

(assert (=> b!7270391 d!2262457))

(declare-fun bs!1911012 () Bool)

(declare-fun d!2262459 () Bool)

(assert (= bs!1911012 (and d!2262459 b!7270391)))

(declare-fun lambda!448577 () Int)

(assert (=> bs!1911012 (= lambda!448577 lambda!448529)))

(assert (=> d!2262459 true))

(assert (=> d!2262459 (= (derivationStepZipper!3536 lt!2594646 (h!77232 s!7854)) (flatMap!2909 lt!2594646 lambda!448577))))

(declare-fun bs!1911013 () Bool)

(assert (= bs!1911013 d!2262459))

(declare-fun m!7956240 () Bool)

(assert (=> bs!1911013 m!7956240))

(assert (=> b!7270391 d!2262459))

(declare-fun d!2262461 () Bool)

(assert (=> d!2262461 (= (flatMap!2909 lt!2594639 lambda!448529) (dynLambda!28931 lambda!448529 ct1!250))))

(declare-fun lt!2594755 () Unit!164210)

(assert (=> d!2262461 (= lt!2594755 (choose!56399 lt!2594639 ct1!250 lambda!448529))))

(assert (=> d!2262461 (= lt!2594639 (set.insert ct1!250 (as set.empty (Set Context!15472))))))

(assert (=> d!2262461 (= (lemmaFlatMapOnSingletonSet!2309 lt!2594639 ct1!250 lambda!448529) lt!2594755)))

(declare-fun b_lambda!280227 () Bool)

(assert (=> (not b_lambda!280227) (not d!2262461)))

(declare-fun bs!1911014 () Bool)

(assert (= bs!1911014 d!2262461))

(assert (=> bs!1911014 m!7956030))

(declare-fun m!7956242 () Bool)

(assert (=> bs!1911014 m!7956242))

(declare-fun m!7956244 () Bool)

(assert (=> bs!1911014 m!7956244))

(assert (=> bs!1911014 m!7956026))

(assert (=> b!7270391 d!2262461))

(assert (=> b!7270396 d!2262423))

(declare-fun bs!1911015 () Bool)

(declare-fun d!2262463 () Bool)

(assert (= bs!1911015 (and d!2262463 b!7270391)))

(declare-fun lambda!448580 () Int)

(assert (=> bs!1911015 (= lambda!448580 lambda!448528)))

(declare-fun bs!1911016 () Bool)

(assert (= bs!1911016 (and d!2262463 d!2262407)))

(assert (=> bs!1911016 (= lambda!448580 lambda!448566)))

(declare-fun bs!1911017 () Bool)

(assert (= bs!1911017 (and d!2262463 d!2262411)))

(assert (=> bs!1911017 (= lambda!448580 lambda!448567)))

(declare-fun bs!1911018 () Bool)

(assert (= bs!1911018 (and d!2262463 d!2262413)))

(assert (=> bs!1911018 (not (= lambda!448580 lambda!448570))))

(assert (=> d!2262463 (matchZipper!3700 (set.insert (Context!15473 (++!16696 (exprs!8236 lt!2594638) (exprs!8236 ct2!346))) (as set.empty (Set Context!15472))) s!7854)))

(declare-fun lt!2594761 () Unit!164210)

(assert (=> d!2262463 (= lt!2594761 (lemmaConcatPreservesForall!1553 (exprs!8236 lt!2594638) (exprs!8236 ct2!346) lambda!448580))))

(declare-fun lt!2594760 () Unit!164210)

(declare-fun choose!56401 (Context!15472 Context!15472 List!70908) Unit!164210)

(assert (=> d!2262463 (= lt!2594760 (choose!56401 lt!2594638 ct2!346 s!7854))))

(assert (=> d!2262463 (matchZipper!3700 (set.insert ct2!346 (as set.empty (Set Context!15472))) s!7854)))

(assert (=> d!2262463 (= (lemmaPrependingNullableCtxStillMatches!33 lt!2594638 ct2!346 s!7854) lt!2594760)))

(declare-fun bs!1911019 () Bool)

(assert (= bs!1911019 d!2262463))

(declare-fun m!7956246 () Bool)

(assert (=> bs!1911019 m!7956246))

(declare-fun m!7956248 () Bool)

(assert (=> bs!1911019 m!7956248))

(declare-fun m!7956250 () Bool)

(assert (=> bs!1911019 m!7956250))

(declare-fun m!7956252 () Bool)

(assert (=> bs!1911019 m!7956252))

(assert (=> bs!1911019 m!7956008))

(assert (=> bs!1911019 m!7956010))

(assert (=> bs!1911019 m!7956008))

(declare-fun m!7956254 () Bool)

(assert (=> bs!1911019 m!7956254))

(assert (=> bs!1911019 m!7956250))

(assert (=> b!7270396 d!2262463))

(declare-fun d!2262465 () Bool)

(declare-fun c!1353395 () Bool)

(assert (=> d!2262465 (= c!1353395 (isEmpty!40710 (t!384978 s!7854)))))

(declare-fun e!4359917 () Bool)

(assert (=> d!2262465 (= (matchZipper!3700 lt!2594644 (t!384978 s!7854)) e!4359917)))

(declare-fun b!7270599 () Bool)

(assert (=> b!7270599 (= e!4359917 (nullableZipper!3002 lt!2594644))))

(declare-fun b!7270600 () Bool)

(assert (=> b!7270600 (= e!4359917 (matchZipper!3700 (derivationStepZipper!3536 lt!2594644 (head!15000 (t!384978 s!7854))) (tail!14497 (t!384978 s!7854))))))

(assert (= (and d!2262465 c!1353395) b!7270599))

(assert (= (and d!2262465 (not c!1353395)) b!7270600))

(declare-fun m!7956256 () Bool)

(assert (=> d!2262465 m!7956256))

(declare-fun m!7956258 () Bool)

(assert (=> b!7270599 m!7956258))

(declare-fun m!7956260 () Bool)

(assert (=> b!7270600 m!7956260))

(assert (=> b!7270600 m!7956260))

(declare-fun m!7956262 () Bool)

(assert (=> b!7270600 m!7956262))

(declare-fun m!7956264 () Bool)

(assert (=> b!7270600 m!7956264))

(assert (=> b!7270600 m!7956262))

(assert (=> b!7270600 m!7956264))

(declare-fun m!7956266 () Bool)

(assert (=> b!7270600 m!7956266))

(assert (=> b!7270396 d!2262465))

(declare-fun d!2262467 () Bool)

(declare-fun c!1353396 () Bool)

(assert (=> d!2262467 (= c!1353396 (isEmpty!40710 s!7854))))

(declare-fun e!4359918 () Bool)

(assert (=> d!2262467 (= (matchZipper!3700 lt!2594641 s!7854) e!4359918)))

(declare-fun b!7270601 () Bool)

(assert (=> b!7270601 (= e!4359918 (nullableZipper!3002 lt!2594641))))

(declare-fun b!7270602 () Bool)

(assert (=> b!7270602 (= e!4359918 (matchZipper!3700 (derivationStepZipper!3536 lt!2594641 (head!15000 s!7854)) (tail!14497 s!7854)))))

(assert (= (and d!2262467 c!1353396) b!7270601))

(assert (= (and d!2262467 (not c!1353396)) b!7270602))

(assert (=> d!2262467 m!7956110))

(declare-fun m!7956268 () Bool)

(assert (=> b!7270601 m!7956268))

(assert (=> b!7270602 m!7956114))

(assert (=> b!7270602 m!7956114))

(declare-fun m!7956270 () Bool)

(assert (=> b!7270602 m!7956270))

(assert (=> b!7270602 m!7956118))

(assert (=> b!7270602 m!7956270))

(assert (=> b!7270602 m!7956118))

(declare-fun m!7956272 () Bool)

(assert (=> b!7270602 m!7956272))

(assert (=> b!7270396 d!2262467))

(assert (=> b!7270396 d!2262443))

(declare-fun d!2262469 () Bool)

(assert (=> d!2262469 (= (flatMap!2909 lt!2594641 lambda!448529) (dynLambda!28931 lambda!448529 lt!2594657))))

(declare-fun lt!2594762 () Unit!164210)

(assert (=> d!2262469 (= lt!2594762 (choose!56399 lt!2594641 lt!2594657 lambda!448529))))

(assert (=> d!2262469 (= lt!2594641 (set.insert lt!2594657 (as set.empty (Set Context!15472))))))

(assert (=> d!2262469 (= (lemmaFlatMapOnSingletonSet!2309 lt!2594641 lt!2594657 lambda!448529) lt!2594762)))

(declare-fun b_lambda!280229 () Bool)

(assert (=> (not b_lambda!280229) (not d!2262469)))

(declare-fun bs!1911020 () Bool)

(assert (= bs!1911020 d!2262469))

(assert (=> bs!1911020 m!7955996))

(declare-fun m!7956274 () Bool)

(assert (=> bs!1911020 m!7956274))

(declare-fun m!7956276 () Bool)

(assert (=> bs!1911020 m!7956276))

(assert (=> bs!1911020 m!7955994))

(assert (=> b!7270396 d!2262469))

(declare-fun d!2262471 () Bool)

(assert (=> d!2262471 (= (flatMap!2909 lt!2594641 lambda!448529) (choose!56400 lt!2594641 lambda!448529))))

(declare-fun bs!1911021 () Bool)

(assert (= bs!1911021 d!2262471))

(declare-fun m!7956278 () Bool)

(assert (=> bs!1911021 m!7956278))

(assert (=> b!7270396 d!2262471))

(declare-fun b!7270607 () Bool)

(declare-fun e!4359921 () Bool)

(declare-fun tp!2041059 () Bool)

(declare-fun tp!2041060 () Bool)

(assert (=> b!7270607 (= e!4359921 (and tp!2041059 tp!2041060))))

(assert (=> b!7270393 (= tp!2041045 e!4359921)))

(assert (= (and b!7270393 (is-Cons!70783 (exprs!8236 ct1!250))) b!7270607))

(declare-fun b!7270608 () Bool)

(declare-fun e!4359922 () Bool)

(declare-fun tp!2041061 () Bool)

(declare-fun tp!2041062 () Bool)

(assert (=> b!7270608 (= e!4359922 (and tp!2041061 tp!2041062))))

(assert (=> b!7270392 (= tp!2041044 e!4359922)))

(assert (= (and b!7270392 (is-Cons!70783 (exprs!8236 ct2!346))) b!7270608))

(declare-fun b!7270613 () Bool)

(declare-fun e!4359925 () Bool)

(declare-fun tp!2041065 () Bool)

(assert (=> b!7270613 (= e!4359925 (and tp_is_empty!47057 tp!2041065))))

(assert (=> b!7270397 (= tp!2041043 e!4359925)))

(assert (= (and b!7270397 (is-Cons!70784 (t!384978 s!7854))) b!7270613))

(declare-fun b_lambda!280231 () Bool)

(assert (= b_lambda!280227 (or b!7270391 b_lambda!280231)))

(declare-fun bs!1911022 () Bool)

(declare-fun d!2262473 () Bool)

(assert (= bs!1911022 (and d!2262473 b!7270391)))

(assert (=> bs!1911022 (= (dynLambda!28931 lambda!448529 ct1!250) (derivationStepZipperUp!2566 ct1!250 (h!77232 s!7854)))))

(assert (=> bs!1911022 m!7955988))

(assert (=> d!2262461 d!2262473))

(declare-fun b_lambda!280233 () Bool)

(assert (= b_lambda!280221 (or b!7270391 b_lambda!280233)))

(declare-fun bs!1911023 () Bool)

(declare-fun d!2262475 () Bool)

(assert (= bs!1911023 (and d!2262475 b!7270391)))

(declare-fun validRegex!9584 (Regex!18796) Bool)

(assert (=> bs!1911023 (= (dynLambda!28930 lambda!448528 (h!77231 lt!2594660)) (validRegex!9584 (h!77231 lt!2594660)))))

(declare-fun m!7956280 () Bool)

(assert (=> bs!1911023 m!7956280))

(assert (=> b!7270485 d!2262475))

(declare-fun b_lambda!280235 () Bool)

(assert (= b_lambda!280229 (or b!7270391 b_lambda!280235)))

(declare-fun bs!1911024 () Bool)

(declare-fun d!2262477 () Bool)

(assert (= bs!1911024 (and d!2262477 b!7270391)))

(assert (=> bs!1911024 (= (dynLambda!28931 lambda!448529 lt!2594657) (derivationStepZipperUp!2566 lt!2594657 (h!77232 s!7854)))))

(assert (=> bs!1911024 m!7956006))

(assert (=> d!2262469 d!2262477))

(declare-fun b_lambda!280237 () Bool)

(assert (= b_lambda!280223 (or b!7270391 b_lambda!280237)))

(declare-fun bs!1911025 () Bool)

(declare-fun d!2262479 () Bool)

(assert (= bs!1911025 (and d!2262479 b!7270391)))

(assert (=> bs!1911025 (= (dynLambda!28930 lambda!448528 (h!77231 (exprs!8236 ct2!346))) (validRegex!9584 (h!77231 (exprs!8236 ct2!346))))))

(declare-fun m!7956282 () Bool)

(assert (=> bs!1911025 m!7956282))

(assert (=> b!7270536 d!2262479))

(declare-fun b_lambda!280239 () Bool)

(assert (= b_lambda!280225 (or b!7270391 b_lambda!280239)))

(declare-fun bs!1911026 () Bool)

(declare-fun d!2262481 () Bool)

(assert (= bs!1911026 (and d!2262481 b!7270391)))

(assert (=> bs!1911026 (= (dynLambda!28931 lambda!448529 lt!2594636) (derivationStepZipperUp!2566 lt!2594636 (h!77232 s!7854)))))

(assert (=> bs!1911026 m!7956028))

(assert (=> d!2262449 d!2262481))

(push 1)

(assert (not bm!663041))

(assert (not bm!663056))

(assert (not b!7270607))

(assert (not bs!1911025))

(assert (not b!7270537))

(assert (not d!2262465))

(assert (not d!2262457))

(assert (not bs!1911026))

(assert (not bm!663068))

(assert (not d!2262461))

(assert (not b!7270566))

(assert (not b!7270583))

(assert (not bs!1911022))

(assert (not b!7270476))

(assert (not b!7270479))

(assert (not b!7270569))

(assert (not d!2262471))

(assert (not d!2262463))

(assert (not b!7270531))

(assert tp_is_empty!47057)

(assert (not d!2262411))

(assert (not b!7270608))

(assert (not d!2262453))

(assert (not d!2262469))

(assert (not bs!1911024))

(assert (not bm!663060))

(assert (not d!2262415))

(assert (not d!2262455))

(assert (not bm!663067))

(assert (not b!7270455))

(assert (not b!7270486))

(assert (not b!7270547))

(assert (not bm!663069))

(assert (not b!7270613))

(assert (not b_lambda!280235))

(assert (not b!7270600))

(assert (not b!7270564))

(assert (not bs!1911023))

(assert (not bm!663063))

(assert (not b_lambda!280239))

(assert (not d!2262407))

(assert (not b!7270601))

(assert (not bm!663061))

(assert (not b!7270534))

(assert (not b!7270549))

(assert (not b!7270529))

(assert (not b!7270563))

(assert (not d!2262413))

(assert (not bm!663058))

(assert (not b!7270552))

(assert (not d!2262423))

(assert (not b_lambda!280231))

(assert (not b_lambda!280233))

(assert (not b!7270599))

(assert (not b!7270602))

(assert (not d!2262449))

(assert (not b!7270454))

(assert (not b!7270582))

(assert (not d!2262403))

(assert (not d!2262467))

(assert (not b_lambda!280237))

(assert (not d!2262445))

(assert (not d!2262459))

(assert (not d!2262451))

(assert (not bm!663065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

