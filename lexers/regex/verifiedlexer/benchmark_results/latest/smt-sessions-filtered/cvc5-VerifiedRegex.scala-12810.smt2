; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707868 () Bool)

(assert start!707868)

(declare-fun b!7262417 () Bool)

(assert (=> b!7262417 true))

(declare-fun bs!1909511 () Bool)

(declare-fun b!7262423 () Bool)

(assert (= bs!1909511 (and b!7262423 b!7262417)))

(declare-fun lambda!446767 () Int)

(declare-fun lambda!446766 () Int)

(assert (=> bs!1909511 (= lambda!446767 lambda!446766)))

(assert (=> b!7262423 true))

(declare-fun bs!1909512 () Bool)

(declare-fun b!7262420 () Bool)

(assert (= bs!1909512 (and b!7262420 b!7262417)))

(declare-fun lambda!446768 () Int)

(assert (=> bs!1909512 (= lambda!446768 lambda!446766)))

(declare-fun bs!1909513 () Bool)

(assert (= bs!1909513 (and b!7262420 b!7262423)))

(assert (=> bs!1909513 (= lambda!446768 lambda!446767)))

(assert (=> b!7262420 true))

(declare-datatypes ((C!37730 0))(
  ( (C!37731 (val!28813 Int)) )
))
(declare-datatypes ((Regex!18728 0))(
  ( (ElementMatch!18728 (c!1351076 C!37730)) (Concat!27573 (regOne!37968 Regex!18728) (regTwo!37968 Regex!18728)) (EmptyExpr!18728) (Star!18728 (reg!19057 Regex!18728)) (EmptyLang!18728) (Union!18728 (regOne!37969 Regex!18728) (regTwo!37969 Regex!18728)) )
))
(declare-datatypes ((List!70763 0))(
  ( (Nil!70639) (Cons!70639 (h!77087 Regex!18728) (t!384829 List!70763)) )
))
(declare-datatypes ((Context!15336 0))(
  ( (Context!15337 (exprs!8168 List!70763)) )
))
(declare-datatypes ((List!70764 0))(
  ( (Nil!70640) (Cons!70640 (h!77088 Context!15336) (t!384830 List!70764)) )
))
(declare-fun zl!1658 () List!70764)

(declare-fun e!4355031 () Bool)

(declare-fun b!7262414 () Bool)

(declare-fun tp!2039579 () Bool)

(declare-fun e!4355029 () Bool)

(declare-fun inv!89831 (Context!15336) Bool)

(assert (=> b!7262414 (= e!4355029 (and (inv!89831 (h!77088 zl!1658)) e!4355031 tp!2039579))))

(declare-fun b!7262415 () Bool)

(declare-fun tp!2039581 () Bool)

(assert (=> b!7262415 (= e!4355031 tp!2039581)))

(declare-fun b!7262416 () Bool)

(declare-fun e!4355028 () Bool)

(declare-fun e!4355026 () Bool)

(assert (=> b!7262416 (= e!4355028 (not e!4355026))))

(declare-fun res!2944507 () Bool)

(assert (=> b!7262416 (=> res!2944507 e!4355026)))

(declare-fun lt!2591280 () Bool)

(assert (=> b!7262416 (= res!2944507 (not lt!2591280))))

(declare-fun lt!2591274 () Bool)

(assert (=> b!7262416 (= lt!2591274 lt!2591280)))

(declare-fun e!4355032 () Bool)

(assert (=> b!7262416 (= lt!2591280 e!4355032)))

(declare-fun res!2944508 () Bool)

(assert (=> b!7262416 (=> res!2944508 e!4355032)))

(declare-fun lt!2591277 () Bool)

(assert (=> b!7262416 (= res!2944508 lt!2591277)))

(declare-datatypes ((List!70765 0))(
  ( (Nil!70641) (Cons!70641 (h!77089 C!37730) (t!384831 List!70765)) )
))
(declare-fun s!7887 () List!70765)

(declare-fun lt!2591278 () (Set Context!15336))

(declare-fun lt!2591276 () (Set Context!15336))

(declare-fun matchZipper!3632 ((Set Context!15336) List!70765) Bool)

(assert (=> b!7262416 (= lt!2591274 (matchZipper!3632 (set.union lt!2591276 lt!2591278) s!7887))))

(assert (=> b!7262416 (= lt!2591277 (matchZipper!3632 lt!2591276 s!7887))))

(declare-datatypes ((Unit!164078 0))(
  ( (Unit!164079) )
))
(declare-fun lt!2591275 () Unit!164078)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1769 ((Set Context!15336) (Set Context!15336) List!70765) Unit!164078)

(assert (=> b!7262416 (= lt!2591275 (lemmaZipperConcatMatchesSameAsBothZippers!1769 lt!2591276 lt!2591278 s!7887))))

(declare-fun content!14722 (List!70764) (Set Context!15336))

(assert (=> b!7262416 (= lt!2591278 (content!14722 (t!384830 zl!1658)))))

(assert (=> b!7262416 (= lt!2591276 (set.insert (h!77088 zl!1658) (as set.empty (Set Context!15336))))))

(declare-fun e!4355033 () Unit!164078)

(declare-fun Unit!164080 () Unit!164078)

(assert (=> b!7262417 (= e!4355033 Unit!164080)))

(declare-fun lt!2591281 () Unit!164078)

(declare-fun lt!2591282 () (Set Context!15336))

(declare-fun lemmaContainsThenExists!236 ((Set Context!15336) Context!15336 Int) Unit!164078)

(assert (=> b!7262417 (= lt!2591281 (lemmaContainsThenExists!236 lt!2591282 (h!77088 zl!1658) lambda!446766))))

(declare-fun res!2944510 () Bool)

(declare-fun exists!4478 ((Set Context!15336) Int) Bool)

(assert (=> b!7262417 (= res!2944510 (exists!4478 lt!2591282 lambda!446766))))

(declare-fun e!4355030 () Bool)

(assert (=> b!7262417 (=> (not res!2944510) (not e!4355030))))

(assert (=> b!7262417 e!4355030))

(declare-fun b!7262418 () Bool)

(declare-fun e!4355027 () Bool)

(declare-fun tp_is_empty!46921 () Bool)

(declare-fun tp!2039580 () Bool)

(assert (=> b!7262418 (= e!4355027 (and tp_is_empty!46921 tp!2039580))))

(declare-fun b!7262419 () Bool)

(assert (=> b!7262419 (= e!4355030 (exists!4478 lt!2591282 lambda!446766))))

(declare-fun exists!4479 (List!70764 Int) Bool)

(assert (=> b!7262420 (= e!4355026 (exists!4479 zl!1658 lambda!446768))))

(declare-fun lt!2591283 () Unit!164078)

(assert (=> b!7262420 (= lt!2591283 e!4355033)))

(declare-fun c!1351075 () Bool)

(assert (=> b!7262420 (= c!1351075 lt!2591277)))

(declare-fun b!7262421 () Bool)

(assert (=> b!7262421 (= e!4355032 (matchZipper!3632 lt!2591278 s!7887))))

(declare-fun Unit!164081 () Unit!164078)

(assert (=> b!7262423 (= e!4355033 Unit!164081)))

(declare-fun lt!2591279 () Unit!164078)

(declare-fun lemmaZipperMatchesExistsMatchingContext!791 (List!70764 List!70765) Unit!164078)

(assert (=> b!7262423 (= lt!2591279 (lemmaZipperMatchesExistsMatchingContext!791 (t!384830 zl!1658) s!7887))))

(assert (=> b!7262423 (exists!4479 (t!384830 zl!1658) lambda!446767)))

(declare-fun b!7262422 () Bool)

(declare-fun res!2944509 () Bool)

(assert (=> b!7262422 (=> (not res!2944509) (not e!4355028))))

(assert (=> b!7262422 (= res!2944509 (is-Cons!70640 zl!1658))))

(declare-fun res!2944506 () Bool)

(assert (=> start!707868 (=> (not res!2944506) (not e!4355028))))

(assert (=> start!707868 (= res!2944506 (matchZipper!3632 lt!2591282 s!7887))))

(assert (=> start!707868 (= lt!2591282 (content!14722 zl!1658))))

(assert (=> start!707868 e!4355028))

(assert (=> start!707868 e!4355029))

(assert (=> start!707868 e!4355027))

(assert (= (and start!707868 res!2944506) b!7262422))

(assert (= (and b!7262422 res!2944509) b!7262416))

(assert (= (and b!7262416 (not res!2944508)) b!7262421))

(assert (= (and b!7262416 (not res!2944507)) b!7262420))

(assert (= (and b!7262420 c!1351075) b!7262417))

(assert (= (and b!7262420 (not c!1351075)) b!7262423))

(assert (= (and b!7262417 res!2944510) b!7262419))

(assert (= b!7262414 b!7262415))

(assert (= (and start!707868 (is-Cons!70640 zl!1658)) b!7262414))

(assert (= (and start!707868 (is-Cons!70641 s!7887)) b!7262418))

(declare-fun m!7946926 () Bool)

(assert (=> b!7262417 m!7946926))

(declare-fun m!7946928 () Bool)

(assert (=> b!7262417 m!7946928))

(declare-fun m!7946930 () Bool)

(assert (=> b!7262420 m!7946930))

(declare-fun m!7946932 () Bool)

(assert (=> start!707868 m!7946932))

(declare-fun m!7946934 () Bool)

(assert (=> start!707868 m!7946934))

(declare-fun m!7946936 () Bool)

(assert (=> b!7262414 m!7946936))

(declare-fun m!7946938 () Bool)

(assert (=> b!7262423 m!7946938))

(declare-fun m!7946940 () Bool)

(assert (=> b!7262423 m!7946940))

(declare-fun m!7946942 () Bool)

(assert (=> b!7262416 m!7946942))

(declare-fun m!7946944 () Bool)

(assert (=> b!7262416 m!7946944))

(declare-fun m!7946946 () Bool)

(assert (=> b!7262416 m!7946946))

(declare-fun m!7946948 () Bool)

(assert (=> b!7262416 m!7946948))

(declare-fun m!7946950 () Bool)

(assert (=> b!7262416 m!7946950))

(declare-fun m!7946952 () Bool)

(assert (=> b!7262421 m!7946952))

(assert (=> b!7262419 m!7946928))

(push 1)

(assert (not b!7262421))

(assert (not b!7262419))

(assert (not b!7262414))

(assert (not b!7262423))

(assert (not b!7262420))

(assert (not b!7262418))

(assert (not b!7262416))

(assert (not start!707868))

(assert (not b!7262417))

(assert (not b!7262415))

(assert tp_is_empty!46921)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259331 () Bool)

(declare-fun c!1351092 () Bool)

(declare-fun isEmpty!40621 (List!70765) Bool)

(assert (=> d!2259331 (= c!1351092 (isEmpty!40621 s!7887))))

(declare-fun e!4355060 () Bool)

(assert (=> d!2259331 (= (matchZipper!3632 lt!2591282 s!7887) e!4355060)))

(declare-fun b!7262462 () Bool)

(declare-fun nullableZipper!2955 ((Set Context!15336)) Bool)

(assert (=> b!7262462 (= e!4355060 (nullableZipper!2955 lt!2591282))))

(declare-fun b!7262463 () Bool)

(declare-fun derivationStepZipper!3481 ((Set Context!15336) C!37730) (Set Context!15336))

(declare-fun head!14954 (List!70765) C!37730)

(declare-fun tail!14413 (List!70765) List!70765)

(assert (=> b!7262463 (= e!4355060 (matchZipper!3632 (derivationStepZipper!3481 lt!2591282 (head!14954 s!7887)) (tail!14413 s!7887)))))

(assert (= (and d!2259331 c!1351092) b!7262462))

(assert (= (and d!2259331 (not c!1351092)) b!7262463))

(declare-fun m!7946982 () Bool)

(assert (=> d!2259331 m!7946982))

(declare-fun m!7946984 () Bool)

(assert (=> b!7262462 m!7946984))

(declare-fun m!7946986 () Bool)

(assert (=> b!7262463 m!7946986))

(assert (=> b!7262463 m!7946986))

(declare-fun m!7946988 () Bool)

(assert (=> b!7262463 m!7946988))

(declare-fun m!7946990 () Bool)

(assert (=> b!7262463 m!7946990))

(assert (=> b!7262463 m!7946988))

(assert (=> b!7262463 m!7946990))

(declare-fun m!7946992 () Bool)

(assert (=> b!7262463 m!7946992))

(assert (=> start!707868 d!2259331))

(declare-fun d!2259333 () Bool)

(declare-fun c!1351095 () Bool)

(assert (=> d!2259333 (= c!1351095 (is-Nil!70640 zl!1658))))

(declare-fun e!4355063 () (Set Context!15336))

(assert (=> d!2259333 (= (content!14722 zl!1658) e!4355063)))

(declare-fun b!7262468 () Bool)

(assert (=> b!7262468 (= e!4355063 (as set.empty (Set Context!15336)))))

(declare-fun b!7262469 () Bool)

(assert (=> b!7262469 (= e!4355063 (set.union (set.insert (h!77088 zl!1658) (as set.empty (Set Context!15336))) (content!14722 (t!384830 zl!1658))))))

(assert (= (and d!2259333 c!1351095) b!7262468))

(assert (= (and d!2259333 (not c!1351095)) b!7262469))

(assert (=> b!7262469 m!7946942))

(assert (=> b!7262469 m!7946944))

(assert (=> start!707868 d!2259333))

(declare-fun bs!1909517 () Bool)

(declare-fun d!2259335 () Bool)

(assert (= bs!1909517 (and d!2259335 b!7262417)))

(declare-fun lambda!446782 () Int)

(assert (=> bs!1909517 (not (= lambda!446782 lambda!446766))))

(declare-fun bs!1909518 () Bool)

(assert (= bs!1909518 (and d!2259335 b!7262423)))

(assert (=> bs!1909518 (not (= lambda!446782 lambda!446767))))

(declare-fun bs!1909519 () Bool)

(assert (= bs!1909519 (and d!2259335 b!7262420)))

(assert (=> bs!1909519 (not (= lambda!446782 lambda!446768))))

(assert (=> d!2259335 true))

(declare-fun order!29061 () Int)

(declare-fun dynLambda!28839 (Int Int) Int)

(assert (=> d!2259335 (< (dynLambda!28839 order!29061 lambda!446768) (dynLambda!28839 order!29061 lambda!446782))))

(declare-fun forall!17569 (List!70764 Int) Bool)

(assert (=> d!2259335 (= (exists!4479 zl!1658 lambda!446768) (not (forall!17569 zl!1658 lambda!446782)))))

(declare-fun bs!1909520 () Bool)

(assert (= bs!1909520 d!2259335))

(declare-fun m!7946994 () Bool)

(assert (=> bs!1909520 m!7946994))

(assert (=> b!7262420 d!2259335))

(declare-fun d!2259337 () Bool)

(declare-fun lt!2591316 () Bool)

(declare-fun toList!11518 ((Set Context!15336)) List!70764)

(assert (=> d!2259337 (= lt!2591316 (exists!4479 (toList!11518 lt!2591282) lambda!446766))))

(declare-fun choose!56243 ((Set Context!15336) Int) Bool)

(assert (=> d!2259337 (= lt!2591316 (choose!56243 lt!2591282 lambda!446766))))

(assert (=> d!2259337 (= (exists!4478 lt!2591282 lambda!446766) lt!2591316)))

(declare-fun bs!1909521 () Bool)

(assert (= bs!1909521 d!2259337))

(declare-fun m!7946996 () Bool)

(assert (=> bs!1909521 m!7946996))

(assert (=> bs!1909521 m!7946996))

(declare-fun m!7946998 () Bool)

(assert (=> bs!1909521 m!7946998))

(declare-fun m!7947000 () Bool)

(assert (=> bs!1909521 m!7947000))

(assert (=> b!7262419 d!2259337))

(declare-fun d!2259339 () Bool)

(declare-fun lambda!446785 () Int)

(declare-fun forall!17570 (List!70763 Int) Bool)

(assert (=> d!2259339 (= (inv!89831 (h!77088 zl!1658)) (forall!17570 (exprs!8168 (h!77088 zl!1658)) lambda!446785))))

(declare-fun bs!1909522 () Bool)

(assert (= bs!1909522 d!2259339))

(declare-fun m!7947002 () Bool)

(assert (=> bs!1909522 m!7947002))

(assert (=> b!7262414 d!2259339))

(declare-fun d!2259341 () Bool)

(declare-fun c!1351096 () Bool)

(assert (=> d!2259341 (= c!1351096 (isEmpty!40621 s!7887))))

(declare-fun e!4355064 () Bool)

(assert (=> d!2259341 (= (matchZipper!3632 lt!2591278 s!7887) e!4355064)))

(declare-fun b!7262472 () Bool)

(assert (=> b!7262472 (= e!4355064 (nullableZipper!2955 lt!2591278))))

(declare-fun b!7262473 () Bool)

(assert (=> b!7262473 (= e!4355064 (matchZipper!3632 (derivationStepZipper!3481 lt!2591278 (head!14954 s!7887)) (tail!14413 s!7887)))))

(assert (= (and d!2259341 c!1351096) b!7262472))

(assert (= (and d!2259341 (not c!1351096)) b!7262473))

(assert (=> d!2259341 m!7946982))

(declare-fun m!7947004 () Bool)

(assert (=> b!7262472 m!7947004))

(assert (=> b!7262473 m!7946986))

(assert (=> b!7262473 m!7946986))

(declare-fun m!7947006 () Bool)

(assert (=> b!7262473 m!7947006))

(assert (=> b!7262473 m!7946990))

(assert (=> b!7262473 m!7947006))

(assert (=> b!7262473 m!7946990))

(declare-fun m!7947008 () Bool)

(assert (=> b!7262473 m!7947008))

(assert (=> b!7262421 d!2259341))

(declare-fun d!2259343 () Bool)

(declare-fun c!1351097 () Bool)

(assert (=> d!2259343 (= c!1351097 (isEmpty!40621 s!7887))))

(declare-fun e!4355065 () Bool)

(assert (=> d!2259343 (= (matchZipper!3632 (set.union lt!2591276 lt!2591278) s!7887) e!4355065)))

(declare-fun b!7262474 () Bool)

(assert (=> b!7262474 (= e!4355065 (nullableZipper!2955 (set.union lt!2591276 lt!2591278)))))

(declare-fun b!7262475 () Bool)

(assert (=> b!7262475 (= e!4355065 (matchZipper!3632 (derivationStepZipper!3481 (set.union lt!2591276 lt!2591278) (head!14954 s!7887)) (tail!14413 s!7887)))))

(assert (= (and d!2259343 c!1351097) b!7262474))

(assert (= (and d!2259343 (not c!1351097)) b!7262475))

(assert (=> d!2259343 m!7946982))

(declare-fun m!7947010 () Bool)

(assert (=> b!7262474 m!7947010))

(assert (=> b!7262475 m!7946986))

(assert (=> b!7262475 m!7946986))

(declare-fun m!7947012 () Bool)

(assert (=> b!7262475 m!7947012))

(assert (=> b!7262475 m!7946990))

(assert (=> b!7262475 m!7947012))

(assert (=> b!7262475 m!7946990))

(declare-fun m!7947014 () Bool)

(assert (=> b!7262475 m!7947014))

(assert (=> b!7262416 d!2259343))

(declare-fun d!2259345 () Bool)

(declare-fun c!1351098 () Bool)

(assert (=> d!2259345 (= c!1351098 (isEmpty!40621 s!7887))))

(declare-fun e!4355066 () Bool)

(assert (=> d!2259345 (= (matchZipper!3632 lt!2591276 s!7887) e!4355066)))

(declare-fun b!7262476 () Bool)

(assert (=> b!7262476 (= e!4355066 (nullableZipper!2955 lt!2591276))))

(declare-fun b!7262477 () Bool)

(assert (=> b!7262477 (= e!4355066 (matchZipper!3632 (derivationStepZipper!3481 lt!2591276 (head!14954 s!7887)) (tail!14413 s!7887)))))

(assert (= (and d!2259345 c!1351098) b!7262476))

(assert (= (and d!2259345 (not c!1351098)) b!7262477))

(assert (=> d!2259345 m!7946982))

(declare-fun m!7947016 () Bool)

(assert (=> b!7262476 m!7947016))

(assert (=> b!7262477 m!7946986))

(assert (=> b!7262477 m!7946986))

(declare-fun m!7947018 () Bool)

(assert (=> b!7262477 m!7947018))

(assert (=> b!7262477 m!7946990))

(assert (=> b!7262477 m!7947018))

(assert (=> b!7262477 m!7946990))

(declare-fun m!7947020 () Bool)

(assert (=> b!7262477 m!7947020))

(assert (=> b!7262416 d!2259345))

(declare-fun e!4355069 () Bool)

(declare-fun d!2259349 () Bool)

(assert (=> d!2259349 (= (matchZipper!3632 (set.union lt!2591276 lt!2591278) s!7887) e!4355069)))

(declare-fun res!2944528 () Bool)

(assert (=> d!2259349 (=> res!2944528 e!4355069)))

(assert (=> d!2259349 (= res!2944528 (matchZipper!3632 lt!2591276 s!7887))))

(declare-fun lt!2591319 () Unit!164078)

(declare-fun choose!56244 ((Set Context!15336) (Set Context!15336) List!70765) Unit!164078)

(assert (=> d!2259349 (= lt!2591319 (choose!56244 lt!2591276 lt!2591278 s!7887))))

(assert (=> d!2259349 (= (lemmaZipperConcatMatchesSameAsBothZippers!1769 lt!2591276 lt!2591278 s!7887) lt!2591319)))

(declare-fun b!7262480 () Bool)

(assert (=> b!7262480 (= e!4355069 (matchZipper!3632 lt!2591278 s!7887))))

(assert (= (and d!2259349 (not res!2944528)) b!7262480))

(assert (=> d!2259349 m!7946948))

(assert (=> d!2259349 m!7946946))

(declare-fun m!7947022 () Bool)

(assert (=> d!2259349 m!7947022))

(assert (=> b!7262480 m!7946952))

(assert (=> b!7262416 d!2259349))

(declare-fun d!2259351 () Bool)

(declare-fun c!1351099 () Bool)

(assert (=> d!2259351 (= c!1351099 (is-Nil!70640 (t!384830 zl!1658)))))

(declare-fun e!4355070 () (Set Context!15336))

(assert (=> d!2259351 (= (content!14722 (t!384830 zl!1658)) e!4355070)))

(declare-fun b!7262481 () Bool)

(assert (=> b!7262481 (= e!4355070 (as set.empty (Set Context!15336)))))

(declare-fun b!7262482 () Bool)

(assert (=> b!7262482 (= e!4355070 (set.union (set.insert (h!77088 (t!384830 zl!1658)) (as set.empty (Set Context!15336))) (content!14722 (t!384830 (t!384830 zl!1658)))))))

(assert (= (and d!2259351 c!1351099) b!7262481))

(assert (= (and d!2259351 (not c!1351099)) b!7262482))

(declare-fun m!7947024 () Bool)

(assert (=> b!7262482 m!7947024))

(declare-fun m!7947026 () Bool)

(assert (=> b!7262482 m!7947026))

(assert (=> b!7262416 d!2259351))

(declare-fun d!2259353 () Bool)

(assert (=> d!2259353 (exists!4478 lt!2591282 lambda!446766)))

(declare-fun lt!2591322 () Unit!164078)

(declare-fun choose!56245 ((Set Context!15336) Context!15336 Int) Unit!164078)

(assert (=> d!2259353 (= lt!2591322 (choose!56245 lt!2591282 (h!77088 zl!1658) lambda!446766))))

(assert (=> d!2259353 (set.member (h!77088 zl!1658) lt!2591282)))

(assert (=> d!2259353 (= (lemmaContainsThenExists!236 lt!2591282 (h!77088 zl!1658) lambda!446766) lt!2591322)))

(declare-fun bs!1909523 () Bool)

(assert (= bs!1909523 d!2259353))

(assert (=> bs!1909523 m!7946928))

(declare-fun m!7947028 () Bool)

(assert (=> bs!1909523 m!7947028))

(declare-fun m!7947030 () Bool)

(assert (=> bs!1909523 m!7947030))

(assert (=> b!7262417 d!2259353))

(assert (=> b!7262417 d!2259337))

(declare-fun bs!1909525 () Bool)

(declare-fun d!2259355 () Bool)

(assert (= bs!1909525 (and d!2259355 b!7262417)))

(declare-fun lambda!446791 () Int)

(assert (=> bs!1909525 (= lambda!446791 lambda!446766)))

(declare-fun bs!1909526 () Bool)

(assert (= bs!1909526 (and d!2259355 b!7262423)))

(assert (=> bs!1909526 (= lambda!446791 lambda!446767)))

(declare-fun bs!1909527 () Bool)

(assert (= bs!1909527 (and d!2259355 b!7262420)))

(assert (=> bs!1909527 (= lambda!446791 lambda!446768)))

(declare-fun bs!1909528 () Bool)

(assert (= bs!1909528 (and d!2259355 d!2259335)))

(assert (=> bs!1909528 (not (= lambda!446791 lambda!446782))))

(assert (=> d!2259355 true))

(assert (=> d!2259355 (exists!4479 (t!384830 zl!1658) lambda!446791)))

(declare-fun lt!2591325 () Unit!164078)

(declare-fun choose!56246 (List!70764 List!70765) Unit!164078)

(assert (=> d!2259355 (= lt!2591325 (choose!56246 (t!384830 zl!1658) s!7887))))

(assert (=> d!2259355 (matchZipper!3632 (content!14722 (t!384830 zl!1658)) s!7887)))

(assert (=> d!2259355 (= (lemmaZipperMatchesExistsMatchingContext!791 (t!384830 zl!1658) s!7887) lt!2591325)))

(declare-fun bs!1909529 () Bool)

(assert (= bs!1909529 d!2259355))

(declare-fun m!7947034 () Bool)

(assert (=> bs!1909529 m!7947034))

(declare-fun m!7947036 () Bool)

(assert (=> bs!1909529 m!7947036))

(assert (=> bs!1909529 m!7946944))

(assert (=> bs!1909529 m!7946944))

(declare-fun m!7947038 () Bool)

(assert (=> bs!1909529 m!7947038))

(assert (=> b!7262423 d!2259355))

(declare-fun bs!1909530 () Bool)

(declare-fun d!2259359 () Bool)

(assert (= bs!1909530 (and d!2259359 d!2259335)))

(declare-fun lambda!446792 () Int)

(assert (=> bs!1909530 (= (= lambda!446767 lambda!446768) (= lambda!446792 lambda!446782))))

(declare-fun bs!1909531 () Bool)

(assert (= bs!1909531 (and d!2259359 b!7262423)))

(assert (=> bs!1909531 (not (= lambda!446792 lambda!446767))))

(declare-fun bs!1909532 () Bool)

(assert (= bs!1909532 (and d!2259359 b!7262417)))

(assert (=> bs!1909532 (not (= lambda!446792 lambda!446766))))

(declare-fun bs!1909533 () Bool)

(assert (= bs!1909533 (and d!2259359 d!2259355)))

(assert (=> bs!1909533 (not (= lambda!446792 lambda!446791))))

(declare-fun bs!1909534 () Bool)

(assert (= bs!1909534 (and d!2259359 b!7262420)))

(assert (=> bs!1909534 (not (= lambda!446792 lambda!446768))))

(assert (=> d!2259359 true))

(assert (=> d!2259359 (< (dynLambda!28839 order!29061 lambda!446767) (dynLambda!28839 order!29061 lambda!446792))))

(assert (=> d!2259359 (= (exists!4479 (t!384830 zl!1658) lambda!446767) (not (forall!17569 (t!384830 zl!1658) lambda!446792)))))

(declare-fun bs!1909535 () Bool)

(assert (= bs!1909535 d!2259359))

(declare-fun m!7947040 () Bool)

(assert (=> bs!1909535 m!7947040))

(assert (=> b!7262423 d!2259359))

(declare-fun b!7262490 () Bool)

(declare-fun e!4355077 () Bool)

(declare-fun tp!2039595 () Bool)

(assert (=> b!7262490 (= e!4355077 tp!2039595)))

(declare-fun tp!2039596 () Bool)

(declare-fun e!4355076 () Bool)

(declare-fun b!7262489 () Bool)

(assert (=> b!7262489 (= e!4355076 (and (inv!89831 (h!77088 (t!384830 zl!1658))) e!4355077 tp!2039596))))

(assert (=> b!7262414 (= tp!2039579 e!4355076)))

(assert (= b!7262489 b!7262490))

(assert (= (and b!7262414 (is-Cons!70640 (t!384830 zl!1658))) b!7262489))

(declare-fun m!7947042 () Bool)

(assert (=> b!7262489 m!7947042))

(declare-fun b!7262495 () Bool)

(declare-fun e!4355080 () Bool)

(declare-fun tp!2039601 () Bool)

(declare-fun tp!2039602 () Bool)

(assert (=> b!7262495 (= e!4355080 (and tp!2039601 tp!2039602))))

(assert (=> b!7262415 (= tp!2039581 e!4355080)))

(assert (= (and b!7262415 (is-Cons!70639 (exprs!8168 (h!77088 zl!1658)))) b!7262495))

(declare-fun b!7262500 () Bool)

(declare-fun e!4355083 () Bool)

(declare-fun tp!2039605 () Bool)

(assert (=> b!7262500 (= e!4355083 (and tp_is_empty!46921 tp!2039605))))

(assert (=> b!7262418 (= tp!2039580 e!4355083)))

(assert (= (and b!7262418 (is-Cons!70641 (t!384831 s!7887))) b!7262500))

(push 1)

(assert (not b!7262476))

(assert (not b!7262482))

(assert (not b!7262490))

(assert (not d!2259355))

(assert (not b!7262463))

(assert (not b!7262495))

(assert (not b!7262500))

(assert (not b!7262469))

(assert (not d!2259341))

(assert (not d!2259343))

(assert (not d!2259349))

(assert (not b!7262462))

(assert (not b!7262475))

(assert (not b!7262489))

(assert (not d!2259335))

(assert (not d!2259339))

(assert (not d!2259345))

(assert (not b!7262474))

(assert tp_is_empty!46921)

(assert (not b!7262477))

(assert (not b!7262473))

(assert (not d!2259353))

(assert (not d!2259337))

(assert (not d!2259331))

(assert (not d!2259359))

(assert (not b!7262472))

(assert (not b!7262480))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1909553 () Bool)

(declare-fun d!2259383 () Bool)

(assert (= bs!1909553 (and d!2259383 d!2259335)))

(declare-fun lambda!446802 () Int)

(assert (=> bs!1909553 (not (= lambda!446802 lambda!446782))))

(declare-fun bs!1909554 () Bool)

(assert (= bs!1909554 (and d!2259383 b!7262423)))

(assert (=> bs!1909554 (not (= lambda!446802 lambda!446767))))

(declare-fun bs!1909555 () Bool)

(assert (= bs!1909555 (and d!2259383 b!7262417)))

(assert (=> bs!1909555 (not (= lambda!446802 lambda!446766))))

(declare-fun bs!1909556 () Bool)

(assert (= bs!1909556 (and d!2259383 d!2259355)))

(assert (=> bs!1909556 (not (= lambda!446802 lambda!446791))))

(declare-fun bs!1909557 () Bool)

(assert (= bs!1909557 (and d!2259383 d!2259359)))

(assert (=> bs!1909557 (not (= lambda!446802 lambda!446792))))

(declare-fun bs!1909558 () Bool)

(assert (= bs!1909558 (and d!2259383 b!7262420)))

(assert (=> bs!1909558 (not (= lambda!446802 lambda!446768))))

(assert (=> d!2259383 (= (nullableZipper!2955 lt!2591282) (exists!4478 lt!2591282 lambda!446802))))

(declare-fun bs!1909559 () Bool)

(assert (= bs!1909559 d!2259383))

(declare-fun m!7947102 () Bool)

(assert (=> bs!1909559 m!7947102))

(assert (=> b!7262462 d!2259383))

(declare-fun d!2259385 () Bool)

(assert (=> d!2259385 (= (isEmpty!40621 s!7887) (is-Nil!70641 s!7887))))

(assert (=> d!2259345 d!2259385))

(declare-fun bs!1909560 () Bool)

(declare-fun d!2259387 () Bool)

(assert (= bs!1909560 (and d!2259387 b!7262423)))

(declare-fun lambda!446803 () Int)

(assert (=> bs!1909560 (not (= lambda!446803 lambda!446767))))

(declare-fun bs!1909561 () Bool)

(assert (= bs!1909561 (and d!2259387 b!7262417)))

(assert (=> bs!1909561 (not (= lambda!446803 lambda!446766))))

(declare-fun bs!1909562 () Bool)

(assert (= bs!1909562 (and d!2259387 d!2259355)))

(assert (=> bs!1909562 (not (= lambda!446803 lambda!446791))))

(declare-fun bs!1909563 () Bool)

(assert (= bs!1909563 (and d!2259387 d!2259359)))

(assert (=> bs!1909563 (not (= lambda!446803 lambda!446792))))

(declare-fun bs!1909564 () Bool)

(assert (= bs!1909564 (and d!2259387 b!7262420)))

(assert (=> bs!1909564 (not (= lambda!446803 lambda!446768))))

(declare-fun bs!1909565 () Bool)

(assert (= bs!1909565 (and d!2259387 d!2259383)))

(assert (=> bs!1909565 (= lambda!446803 lambda!446802)))

(declare-fun bs!1909566 () Bool)

(assert (= bs!1909566 (and d!2259387 d!2259335)))

(assert (=> bs!1909566 (not (= lambda!446803 lambda!446782))))

(assert (=> d!2259387 (= (nullableZipper!2955 lt!2591278) (exists!4478 lt!2591278 lambda!446803))))

(declare-fun bs!1909567 () Bool)

(assert (= bs!1909567 d!2259387))

(declare-fun m!7947104 () Bool)

(assert (=> bs!1909567 m!7947104))

(assert (=> b!7262472 d!2259387))

(assert (=> d!2259331 d!2259385))

(declare-fun d!2259389 () Bool)

(declare-fun c!1351116 () Bool)

(assert (=> d!2259389 (= c!1351116 (isEmpty!40621 (tail!14413 s!7887)))))

(declare-fun e!4355110 () Bool)

(assert (=> d!2259389 (= (matchZipper!3632 (derivationStepZipper!3481 lt!2591278 (head!14954 s!7887)) (tail!14413 s!7887)) e!4355110)))

(declare-fun b!7262544 () Bool)

(assert (=> b!7262544 (= e!4355110 (nullableZipper!2955 (derivationStepZipper!3481 lt!2591278 (head!14954 s!7887))))))

(declare-fun b!7262545 () Bool)

(assert (=> b!7262545 (= e!4355110 (matchZipper!3632 (derivationStepZipper!3481 (derivationStepZipper!3481 lt!2591278 (head!14954 s!7887)) (head!14954 (tail!14413 s!7887))) (tail!14413 (tail!14413 s!7887))))))

(assert (= (and d!2259389 c!1351116) b!7262544))

(assert (= (and d!2259389 (not c!1351116)) b!7262545))

(assert (=> d!2259389 m!7946990))

(declare-fun m!7947106 () Bool)

(assert (=> d!2259389 m!7947106))

(assert (=> b!7262544 m!7947006))

(declare-fun m!7947108 () Bool)

(assert (=> b!7262544 m!7947108))

(assert (=> b!7262545 m!7946990))

(declare-fun m!7947110 () Bool)

(assert (=> b!7262545 m!7947110))

(assert (=> b!7262545 m!7947006))

(assert (=> b!7262545 m!7947110))

(declare-fun m!7947112 () Bool)

(assert (=> b!7262545 m!7947112))

(assert (=> b!7262545 m!7946990))

(declare-fun m!7947114 () Bool)

(assert (=> b!7262545 m!7947114))

(assert (=> b!7262545 m!7947112))

(assert (=> b!7262545 m!7947114))

(declare-fun m!7947116 () Bool)

(assert (=> b!7262545 m!7947116))

(assert (=> b!7262473 d!2259389))

(declare-fun d!2259391 () Bool)

(assert (=> d!2259391 true))

(declare-fun lambda!446806 () Int)

(declare-fun flatMap!2853 ((Set Context!15336) Int) (Set Context!15336))

(assert (=> d!2259391 (= (derivationStepZipper!3481 lt!2591278 (head!14954 s!7887)) (flatMap!2853 lt!2591278 lambda!446806))))

(declare-fun bs!1909568 () Bool)

(assert (= bs!1909568 d!2259391))

(declare-fun m!7947118 () Bool)

(assert (=> bs!1909568 m!7947118))

(assert (=> b!7262473 d!2259391))

(declare-fun d!2259393 () Bool)

(assert (=> d!2259393 (= (head!14954 s!7887) (h!77089 s!7887))))

(assert (=> b!7262473 d!2259393))

(declare-fun d!2259395 () Bool)

(assert (=> d!2259395 (= (tail!14413 s!7887) (t!384831 s!7887))))

(assert (=> b!7262473 d!2259395))

(declare-fun d!2259397 () Bool)

(declare-fun res!2944536 () Bool)

(declare-fun e!4355115 () Bool)

(assert (=> d!2259397 (=> res!2944536 e!4355115)))

(assert (=> d!2259397 (= res!2944536 (is-Nil!70639 (exprs!8168 (h!77088 zl!1658))))))

(assert (=> d!2259397 (= (forall!17570 (exprs!8168 (h!77088 zl!1658)) lambda!446785) e!4355115)))

(declare-fun b!7262552 () Bool)

(declare-fun e!4355116 () Bool)

(assert (=> b!7262552 (= e!4355115 e!4355116)))

(declare-fun res!2944537 () Bool)

(assert (=> b!7262552 (=> (not res!2944537) (not e!4355116))))

(declare-fun dynLambda!28841 (Int Regex!18728) Bool)

(assert (=> b!7262552 (= res!2944537 (dynLambda!28841 lambda!446785 (h!77087 (exprs!8168 (h!77088 zl!1658)))))))

(declare-fun b!7262553 () Bool)

(assert (=> b!7262553 (= e!4355116 (forall!17570 (t!384829 (exprs!8168 (h!77088 zl!1658))) lambda!446785))))

(assert (= (and d!2259397 (not res!2944536)) b!7262552))

(assert (= (and b!7262552 res!2944537) b!7262553))

(declare-fun b_lambda!279345 () Bool)

(assert (=> (not b_lambda!279345) (not b!7262552)))

(declare-fun m!7947120 () Bool)

(assert (=> b!7262552 m!7947120))

(declare-fun m!7947122 () Bool)

(assert (=> b!7262553 m!7947122))

(assert (=> d!2259339 d!2259397))

(declare-fun bs!1909569 () Bool)

(declare-fun d!2259399 () Bool)

(assert (= bs!1909569 (and d!2259399 b!7262423)))

(declare-fun lambda!446807 () Int)

(assert (=> bs!1909569 (not (= lambda!446807 lambda!446767))))

(declare-fun bs!1909570 () Bool)

(assert (= bs!1909570 (and d!2259399 b!7262417)))

(assert (=> bs!1909570 (not (= lambda!446807 lambda!446766))))

(declare-fun bs!1909571 () Bool)

(assert (= bs!1909571 (and d!2259399 d!2259387)))

(assert (=> bs!1909571 (= lambda!446807 lambda!446803)))

(declare-fun bs!1909572 () Bool)

(assert (= bs!1909572 (and d!2259399 d!2259355)))

(assert (=> bs!1909572 (not (= lambda!446807 lambda!446791))))

(declare-fun bs!1909573 () Bool)

(assert (= bs!1909573 (and d!2259399 d!2259359)))

(assert (=> bs!1909573 (not (= lambda!446807 lambda!446792))))

(declare-fun bs!1909574 () Bool)

(assert (= bs!1909574 (and d!2259399 b!7262420)))

(assert (=> bs!1909574 (not (= lambda!446807 lambda!446768))))

(declare-fun bs!1909575 () Bool)

(assert (= bs!1909575 (and d!2259399 d!2259383)))

(assert (=> bs!1909575 (= lambda!446807 lambda!446802)))

(declare-fun bs!1909576 () Bool)

(assert (= bs!1909576 (and d!2259399 d!2259335)))

(assert (=> bs!1909576 (not (= lambda!446807 lambda!446782))))

(assert (=> d!2259399 (= (nullableZipper!2955 (set.union lt!2591276 lt!2591278)) (exists!4478 (set.union lt!2591276 lt!2591278) lambda!446807))))

(declare-fun bs!1909577 () Bool)

(assert (= bs!1909577 d!2259399))

(declare-fun m!7947124 () Bool)

(assert (=> bs!1909577 m!7947124))

(assert (=> b!7262474 d!2259399))

(assert (=> b!7262469 d!2259351))

(declare-fun d!2259401 () Bool)

(declare-fun c!1351119 () Bool)

(assert (=> d!2259401 (= c!1351119 (isEmpty!40621 (tail!14413 s!7887)))))

(declare-fun e!4355117 () Bool)

(assert (=> d!2259401 (= (matchZipper!3632 (derivationStepZipper!3481 lt!2591282 (head!14954 s!7887)) (tail!14413 s!7887)) e!4355117)))

(declare-fun b!7262554 () Bool)

(assert (=> b!7262554 (= e!4355117 (nullableZipper!2955 (derivationStepZipper!3481 lt!2591282 (head!14954 s!7887))))))

(declare-fun b!7262555 () Bool)

(assert (=> b!7262555 (= e!4355117 (matchZipper!3632 (derivationStepZipper!3481 (derivationStepZipper!3481 lt!2591282 (head!14954 s!7887)) (head!14954 (tail!14413 s!7887))) (tail!14413 (tail!14413 s!7887))))))

(assert (= (and d!2259401 c!1351119) b!7262554))

(assert (= (and d!2259401 (not c!1351119)) b!7262555))

(assert (=> d!2259401 m!7946990))

(assert (=> d!2259401 m!7947106))

(assert (=> b!7262554 m!7946988))

(declare-fun m!7947126 () Bool)

(assert (=> b!7262554 m!7947126))

(assert (=> b!7262555 m!7946990))

(assert (=> b!7262555 m!7947110))

(assert (=> b!7262555 m!7946988))

(assert (=> b!7262555 m!7947110))

(declare-fun m!7947128 () Bool)

(assert (=> b!7262555 m!7947128))

(assert (=> b!7262555 m!7946990))

(assert (=> b!7262555 m!7947114))

(assert (=> b!7262555 m!7947128))

(assert (=> b!7262555 m!7947114))

(declare-fun m!7947130 () Bool)

(assert (=> b!7262555 m!7947130))

(assert (=> b!7262463 d!2259401))

(declare-fun bs!1909578 () Bool)

(declare-fun d!2259403 () Bool)

(assert (= bs!1909578 (and d!2259403 d!2259391)))

(declare-fun lambda!446808 () Int)

(assert (=> bs!1909578 (= lambda!446808 lambda!446806)))

(assert (=> d!2259403 true))

(assert (=> d!2259403 (= (derivationStepZipper!3481 lt!2591282 (head!14954 s!7887)) (flatMap!2853 lt!2591282 lambda!446808))))

(declare-fun bs!1909579 () Bool)

(assert (= bs!1909579 d!2259403))

(declare-fun m!7947132 () Bool)

(assert (=> bs!1909579 m!7947132))

(assert (=> b!7262463 d!2259403))

(assert (=> b!7262463 d!2259393))

(assert (=> b!7262463 d!2259395))

(declare-fun d!2259405 () Bool)

(declare-fun c!1351120 () Bool)

(assert (=> d!2259405 (= c!1351120 (isEmpty!40621 (tail!14413 s!7887)))))

(declare-fun e!4355118 () Bool)

(assert (=> d!2259405 (= (matchZipper!3632 (derivationStepZipper!3481 (set.union lt!2591276 lt!2591278) (head!14954 s!7887)) (tail!14413 s!7887)) e!4355118)))

(declare-fun b!7262556 () Bool)

(assert (=> b!7262556 (= e!4355118 (nullableZipper!2955 (derivationStepZipper!3481 (set.union lt!2591276 lt!2591278) (head!14954 s!7887))))))

(declare-fun b!7262557 () Bool)

(assert (=> b!7262557 (= e!4355118 (matchZipper!3632 (derivationStepZipper!3481 (derivationStepZipper!3481 (set.union lt!2591276 lt!2591278) (head!14954 s!7887)) (head!14954 (tail!14413 s!7887))) (tail!14413 (tail!14413 s!7887))))))

(assert (= (and d!2259405 c!1351120) b!7262556))

(assert (= (and d!2259405 (not c!1351120)) b!7262557))

(assert (=> d!2259405 m!7946990))

(assert (=> d!2259405 m!7947106))

(assert (=> b!7262556 m!7947012))

(declare-fun m!7947134 () Bool)

(assert (=> b!7262556 m!7947134))

(assert (=> b!7262557 m!7946990))

(assert (=> b!7262557 m!7947110))

(assert (=> b!7262557 m!7947012))

(assert (=> b!7262557 m!7947110))

(declare-fun m!7947136 () Bool)

(assert (=> b!7262557 m!7947136))

(assert (=> b!7262557 m!7946990))

(assert (=> b!7262557 m!7947114))

(assert (=> b!7262557 m!7947136))

(assert (=> b!7262557 m!7947114))

(declare-fun m!7947138 () Bool)

(assert (=> b!7262557 m!7947138))

(assert (=> b!7262475 d!2259405))

(declare-fun bs!1909580 () Bool)

(declare-fun d!2259407 () Bool)

(assert (= bs!1909580 (and d!2259407 d!2259391)))

(declare-fun lambda!446809 () Int)

(assert (=> bs!1909580 (= lambda!446809 lambda!446806)))

(declare-fun bs!1909581 () Bool)

(assert (= bs!1909581 (and d!2259407 d!2259403)))

(assert (=> bs!1909581 (= lambda!446809 lambda!446808)))

(assert (=> d!2259407 true))

(assert (=> d!2259407 (= (derivationStepZipper!3481 (set.union lt!2591276 lt!2591278) (head!14954 s!7887)) (flatMap!2853 (set.union lt!2591276 lt!2591278) lambda!446809))))

(declare-fun bs!1909582 () Bool)

(assert (= bs!1909582 d!2259407))

(declare-fun m!7947140 () Bool)

(assert (=> bs!1909582 m!7947140))

(assert (=> b!7262475 d!2259407))

(assert (=> b!7262475 d!2259393))

(assert (=> b!7262475 d!2259395))

(declare-fun bs!1909583 () Bool)

(declare-fun d!2259409 () Bool)

(assert (= bs!1909583 (and d!2259409 d!2259399)))

(declare-fun lambda!446810 () Int)

(assert (=> bs!1909583 (= lambda!446810 lambda!446807)))

(declare-fun bs!1909584 () Bool)

(assert (= bs!1909584 (and d!2259409 b!7262423)))

(assert (=> bs!1909584 (not (= lambda!446810 lambda!446767))))

(declare-fun bs!1909585 () Bool)

(assert (= bs!1909585 (and d!2259409 b!7262417)))

(assert (=> bs!1909585 (not (= lambda!446810 lambda!446766))))

(declare-fun bs!1909586 () Bool)

(assert (= bs!1909586 (and d!2259409 d!2259387)))

(assert (=> bs!1909586 (= lambda!446810 lambda!446803)))

(declare-fun bs!1909587 () Bool)

(assert (= bs!1909587 (and d!2259409 d!2259355)))

(assert (=> bs!1909587 (not (= lambda!446810 lambda!446791))))

(declare-fun bs!1909588 () Bool)

(assert (= bs!1909588 (and d!2259409 d!2259359)))

(assert (=> bs!1909588 (not (= lambda!446810 lambda!446792))))

(declare-fun bs!1909589 () Bool)

(assert (= bs!1909589 (and d!2259409 b!7262420)))

(assert (=> bs!1909589 (not (= lambda!446810 lambda!446768))))

(declare-fun bs!1909590 () Bool)

(assert (= bs!1909590 (and d!2259409 d!2259383)))

(assert (=> bs!1909590 (= lambda!446810 lambda!446802)))

(declare-fun bs!1909591 () Bool)

(assert (= bs!1909591 (and d!2259409 d!2259335)))

(assert (=> bs!1909591 (not (= lambda!446810 lambda!446782))))

(assert (=> d!2259409 (= (nullableZipper!2955 lt!2591276) (exists!4478 lt!2591276 lambda!446810))))

(declare-fun bs!1909592 () Bool)

(assert (= bs!1909592 d!2259409))

(declare-fun m!7947142 () Bool)

(assert (=> bs!1909592 m!7947142))

(assert (=> b!7262476 d!2259409))

(assert (=> d!2259353 d!2259337))

(declare-fun d!2259411 () Bool)

(assert (=> d!2259411 (exists!4478 lt!2591282 lambda!446766)))

(assert (=> d!2259411 true))

(declare-fun _$17!663 () Unit!164078)

(assert (=> d!2259411 (= (choose!56245 lt!2591282 (h!77088 zl!1658) lambda!446766) _$17!663)))

(declare-fun bs!1909593 () Bool)

(assert (= bs!1909593 d!2259411))

(assert (=> bs!1909593 m!7946928))

(assert (=> d!2259353 d!2259411))

(declare-fun d!2259413 () Bool)

(declare-fun c!1351121 () Bool)

(assert (=> d!2259413 (= c!1351121 (isEmpty!40621 (tail!14413 s!7887)))))

(declare-fun e!4355120 () Bool)

(assert (=> d!2259413 (= (matchZipper!3632 (derivationStepZipper!3481 lt!2591276 (head!14954 s!7887)) (tail!14413 s!7887)) e!4355120)))

(declare-fun b!7262558 () Bool)

(assert (=> b!7262558 (= e!4355120 (nullableZipper!2955 (derivationStepZipper!3481 lt!2591276 (head!14954 s!7887))))))

(declare-fun b!7262559 () Bool)

(assert (=> b!7262559 (= e!4355120 (matchZipper!3632 (derivationStepZipper!3481 (derivationStepZipper!3481 lt!2591276 (head!14954 s!7887)) (head!14954 (tail!14413 s!7887))) (tail!14413 (tail!14413 s!7887))))))

(assert (= (and d!2259413 c!1351121) b!7262558))

(assert (= (and d!2259413 (not c!1351121)) b!7262559))

(assert (=> d!2259413 m!7946990))

(assert (=> d!2259413 m!7947106))

(assert (=> b!7262558 m!7947018))

(declare-fun m!7947144 () Bool)

(assert (=> b!7262558 m!7947144))

(assert (=> b!7262559 m!7946990))

(assert (=> b!7262559 m!7947110))

(assert (=> b!7262559 m!7947018))

(assert (=> b!7262559 m!7947110))

(declare-fun m!7947146 () Bool)

(assert (=> b!7262559 m!7947146))

(assert (=> b!7262559 m!7946990))

(assert (=> b!7262559 m!7947114))

(assert (=> b!7262559 m!7947146))

(assert (=> b!7262559 m!7947114))

(declare-fun m!7947148 () Bool)

(assert (=> b!7262559 m!7947148))

(assert (=> b!7262477 d!2259413))

(declare-fun bs!1909594 () Bool)

(declare-fun d!2259415 () Bool)

(assert (= bs!1909594 (and d!2259415 d!2259391)))

(declare-fun lambda!446811 () Int)

(assert (=> bs!1909594 (= lambda!446811 lambda!446806)))

(declare-fun bs!1909595 () Bool)

(assert (= bs!1909595 (and d!2259415 d!2259403)))

(assert (=> bs!1909595 (= lambda!446811 lambda!446808)))

(declare-fun bs!1909596 () Bool)

(assert (= bs!1909596 (and d!2259415 d!2259407)))

(assert (=> bs!1909596 (= lambda!446811 lambda!446809)))

(assert (=> d!2259415 true))

(assert (=> d!2259415 (= (derivationStepZipper!3481 lt!2591276 (head!14954 s!7887)) (flatMap!2853 lt!2591276 lambda!446811))))

(declare-fun bs!1909597 () Bool)

(assert (= bs!1909597 d!2259415))

(declare-fun m!7947150 () Bool)

(assert (=> bs!1909597 m!7947150))

(assert (=> b!7262477 d!2259415))

(assert (=> b!7262477 d!2259393))

(assert (=> b!7262477 d!2259395))

(assert (=> d!2259349 d!2259343))

(assert (=> d!2259349 d!2259345))

(declare-fun d!2259417 () Bool)

(declare-fun e!4355123 () Bool)

(assert (=> d!2259417 (= (matchZipper!3632 (set.union lt!2591276 lt!2591278) s!7887) e!4355123)))

(declare-fun res!2944540 () Bool)

(assert (=> d!2259417 (=> res!2944540 e!4355123)))

(assert (=> d!2259417 (= res!2944540 (matchZipper!3632 lt!2591276 s!7887))))

(assert (=> d!2259417 true))

(declare-fun _$48!2564 () Unit!164078)

(assert (=> d!2259417 (= (choose!56244 lt!2591276 lt!2591278 s!7887) _$48!2564)))

(declare-fun b!7262562 () Bool)

(assert (=> b!7262562 (= e!4355123 (matchZipper!3632 lt!2591278 s!7887))))

(assert (= (and d!2259417 (not res!2944540)) b!7262562))

(assert (=> d!2259417 m!7946948))

(assert (=> d!2259417 m!7946946))

(assert (=> b!7262562 m!7946952))

(assert (=> d!2259349 d!2259417))

(declare-fun d!2259419 () Bool)

(declare-fun res!2944545 () Bool)

(declare-fun e!4355128 () Bool)

(assert (=> d!2259419 (=> res!2944545 e!4355128)))

(assert (=> d!2259419 (= res!2944545 (is-Nil!70640 zl!1658))))

(assert (=> d!2259419 (= (forall!17569 zl!1658 lambda!446782) e!4355128)))

(declare-fun b!7262567 () Bool)

(declare-fun e!4355129 () Bool)

(assert (=> b!7262567 (= e!4355128 e!4355129)))

(declare-fun res!2944546 () Bool)

(assert (=> b!7262567 (=> (not res!2944546) (not e!4355129))))

(declare-fun dynLambda!28842 (Int Context!15336) Bool)

(assert (=> b!7262567 (= res!2944546 (dynLambda!28842 lambda!446782 (h!77088 zl!1658)))))

(declare-fun b!7262568 () Bool)

(assert (=> b!7262568 (= e!4355129 (forall!17569 (t!384830 zl!1658) lambda!446782))))

(assert (= (and d!2259419 (not res!2944545)) b!7262567))

(assert (= (and b!7262567 res!2944546) b!7262568))

(declare-fun b_lambda!279347 () Bool)

(assert (=> (not b_lambda!279347) (not b!7262567)))

(declare-fun m!7947152 () Bool)

(assert (=> b!7262567 m!7947152))

(declare-fun m!7947154 () Bool)

(assert (=> b!7262568 m!7947154))

(assert (=> d!2259335 d!2259419))

(declare-fun bs!1909598 () Bool)

(declare-fun d!2259421 () Bool)

(assert (= bs!1909598 (and d!2259421 d!2259399)))

(declare-fun lambda!446812 () Int)

(assert (=> bs!1909598 (not (= lambda!446812 lambda!446807))))

(declare-fun bs!1909599 () Bool)

(assert (= bs!1909599 (and d!2259421 b!7262423)))

(assert (=> bs!1909599 (not (= lambda!446812 lambda!446767))))

(declare-fun bs!1909600 () Bool)

(assert (= bs!1909600 (and d!2259421 b!7262417)))

(assert (=> bs!1909600 (not (= lambda!446812 lambda!446766))))

(declare-fun bs!1909601 () Bool)

(assert (= bs!1909601 (and d!2259421 d!2259409)))

(assert (=> bs!1909601 (not (= lambda!446812 lambda!446810))))

(declare-fun bs!1909602 () Bool)

(assert (= bs!1909602 (and d!2259421 d!2259387)))

(assert (=> bs!1909602 (not (= lambda!446812 lambda!446803))))

(declare-fun bs!1909603 () Bool)

(assert (= bs!1909603 (and d!2259421 d!2259355)))

(assert (=> bs!1909603 (not (= lambda!446812 lambda!446791))))

(declare-fun bs!1909604 () Bool)

(assert (= bs!1909604 (and d!2259421 d!2259359)))

(assert (=> bs!1909604 (= (= lambda!446791 lambda!446767) (= lambda!446812 lambda!446792))))

(declare-fun bs!1909605 () Bool)

(assert (= bs!1909605 (and d!2259421 b!7262420)))

(assert (=> bs!1909605 (not (= lambda!446812 lambda!446768))))

(declare-fun bs!1909606 () Bool)

(assert (= bs!1909606 (and d!2259421 d!2259383)))

(assert (=> bs!1909606 (not (= lambda!446812 lambda!446802))))

(declare-fun bs!1909607 () Bool)

(assert (= bs!1909607 (and d!2259421 d!2259335)))

(assert (=> bs!1909607 (= (= lambda!446791 lambda!446768) (= lambda!446812 lambda!446782))))

(assert (=> d!2259421 true))

(assert (=> d!2259421 (< (dynLambda!28839 order!29061 lambda!446791) (dynLambda!28839 order!29061 lambda!446812))))

(assert (=> d!2259421 (= (exists!4479 (t!384830 zl!1658) lambda!446791) (not (forall!17569 (t!384830 zl!1658) lambda!446812)))))

(declare-fun bs!1909608 () Bool)

(assert (= bs!1909608 d!2259421))

(declare-fun m!7947156 () Bool)

(assert (=> bs!1909608 m!7947156))

(assert (=> d!2259355 d!2259421))

(declare-fun bs!1909609 () Bool)

(declare-fun d!2259423 () Bool)

(assert (= bs!1909609 (and d!2259423 d!2259399)))

(declare-fun lambda!446815 () Int)

(assert (=> bs!1909609 (not (= lambda!446815 lambda!446807))))

(declare-fun bs!1909610 () Bool)

(assert (= bs!1909610 (and d!2259423 b!7262423)))

(assert (=> bs!1909610 (= lambda!446815 lambda!446767)))

(declare-fun bs!1909611 () Bool)

(assert (= bs!1909611 (and d!2259423 b!7262417)))

(assert (=> bs!1909611 (= lambda!446815 lambda!446766)))

(declare-fun bs!1909612 () Bool)

(assert (= bs!1909612 (and d!2259423 d!2259409)))

(assert (=> bs!1909612 (not (= lambda!446815 lambda!446810))))

(declare-fun bs!1909613 () Bool)

(assert (= bs!1909613 (and d!2259423 d!2259387)))

(assert (=> bs!1909613 (not (= lambda!446815 lambda!446803))))

(declare-fun bs!1909614 () Bool)

(assert (= bs!1909614 (and d!2259423 d!2259359)))

(assert (=> bs!1909614 (not (= lambda!446815 lambda!446792))))

(declare-fun bs!1909615 () Bool)

(assert (= bs!1909615 (and d!2259423 b!7262420)))

(assert (=> bs!1909615 (= lambda!446815 lambda!446768)))

(declare-fun bs!1909616 () Bool)

(assert (= bs!1909616 (and d!2259423 d!2259383)))

(assert (=> bs!1909616 (not (= lambda!446815 lambda!446802))))

(declare-fun bs!1909617 () Bool)

(assert (= bs!1909617 (and d!2259423 d!2259335)))

(assert (=> bs!1909617 (not (= lambda!446815 lambda!446782))))

(declare-fun bs!1909618 () Bool)

(assert (= bs!1909618 (and d!2259423 d!2259421)))

(assert (=> bs!1909618 (not (= lambda!446815 lambda!446812))))

(declare-fun bs!1909619 () Bool)

(assert (= bs!1909619 (and d!2259423 d!2259355)))

(assert (=> bs!1909619 (= lambda!446815 lambda!446791)))

(assert (=> d!2259423 true))

(assert (=> d!2259423 (exists!4479 (t!384830 zl!1658) lambda!446815)))

(assert (=> d!2259423 true))

(declare-fun _$60!1258 () Unit!164078)

(assert (=> d!2259423 (= (choose!56246 (t!384830 zl!1658) s!7887) _$60!1258)))

(declare-fun bs!1909620 () Bool)

(assert (= bs!1909620 d!2259423))

(declare-fun m!7947158 () Bool)

(assert (=> bs!1909620 m!7947158))

(assert (=> d!2259355 d!2259423))

(declare-fun d!2259425 () Bool)

(declare-fun c!1351124 () Bool)

(assert (=> d!2259425 (= c!1351124 (isEmpty!40621 s!7887))))

(declare-fun e!4355130 () Bool)

(assert (=> d!2259425 (= (matchZipper!3632 (content!14722 (t!384830 zl!1658)) s!7887) e!4355130)))

(declare-fun b!7262569 () Bool)

(assert (=> b!7262569 (= e!4355130 (nullableZipper!2955 (content!14722 (t!384830 zl!1658))))))

(declare-fun b!7262570 () Bool)

(assert (=> b!7262570 (= e!4355130 (matchZipper!3632 (derivationStepZipper!3481 (content!14722 (t!384830 zl!1658)) (head!14954 s!7887)) (tail!14413 s!7887)))))

(assert (= (and d!2259425 c!1351124) b!7262569))

(assert (= (and d!2259425 (not c!1351124)) b!7262570))

(assert (=> d!2259425 m!7946982))

(assert (=> b!7262569 m!7946944))

(declare-fun m!7947160 () Bool)

(assert (=> b!7262569 m!7947160))

(assert (=> b!7262570 m!7946986))

(assert (=> b!7262570 m!7946944))

(assert (=> b!7262570 m!7946986))

(declare-fun m!7947162 () Bool)

(assert (=> b!7262570 m!7947162))

(assert (=> b!7262570 m!7946990))

(assert (=> b!7262570 m!7947162))

(assert (=> b!7262570 m!7946990))

(declare-fun m!7947164 () Bool)

(assert (=> b!7262570 m!7947164))

(assert (=> d!2259355 d!2259425))

(assert (=> d!2259355 d!2259351))

(declare-fun bs!1909621 () Bool)

(declare-fun d!2259427 () Bool)

(assert (= bs!1909621 (and d!2259427 d!2259399)))

(declare-fun lambda!446816 () Int)

(assert (=> bs!1909621 (not (= lambda!446816 lambda!446807))))

(declare-fun bs!1909622 () Bool)

(assert (= bs!1909622 (and d!2259427 b!7262423)))

(assert (=> bs!1909622 (not (= lambda!446816 lambda!446767))))

(declare-fun bs!1909623 () Bool)

(assert (= bs!1909623 (and d!2259427 b!7262417)))

(assert (=> bs!1909623 (not (= lambda!446816 lambda!446766))))

(declare-fun bs!1909624 () Bool)

(assert (= bs!1909624 (and d!2259427 d!2259409)))

(assert (=> bs!1909624 (not (= lambda!446816 lambda!446810))))

(declare-fun bs!1909625 () Bool)

(assert (= bs!1909625 (and d!2259427 d!2259387)))

(assert (=> bs!1909625 (not (= lambda!446816 lambda!446803))))

(declare-fun bs!1909626 () Bool)

(assert (= bs!1909626 (and d!2259427 d!2259359)))

(assert (=> bs!1909626 (= (= lambda!446766 lambda!446767) (= lambda!446816 lambda!446792))))

(declare-fun bs!1909627 () Bool)

(assert (= bs!1909627 (and d!2259427 b!7262420)))

(assert (=> bs!1909627 (not (= lambda!446816 lambda!446768))))

(declare-fun bs!1909628 () Bool)

(assert (= bs!1909628 (and d!2259427 d!2259423)))

(assert (=> bs!1909628 (not (= lambda!446816 lambda!446815))))

(declare-fun bs!1909629 () Bool)

(assert (= bs!1909629 (and d!2259427 d!2259383)))

(assert (=> bs!1909629 (not (= lambda!446816 lambda!446802))))

(declare-fun bs!1909630 () Bool)

(assert (= bs!1909630 (and d!2259427 d!2259335)))

(assert (=> bs!1909630 (= (= lambda!446766 lambda!446768) (= lambda!446816 lambda!446782))))

(declare-fun bs!1909631 () Bool)

(assert (= bs!1909631 (and d!2259427 d!2259421)))

(assert (=> bs!1909631 (= (= lambda!446766 lambda!446791) (= lambda!446816 lambda!446812))))

(declare-fun bs!1909632 () Bool)

(assert (= bs!1909632 (and d!2259427 d!2259355)))

(assert (=> bs!1909632 (not (= lambda!446816 lambda!446791))))

(assert (=> d!2259427 true))

(assert (=> d!2259427 (< (dynLambda!28839 order!29061 lambda!446766) (dynLambda!28839 order!29061 lambda!446816))))

(assert (=> d!2259427 (= (exists!4479 (toList!11518 lt!2591282) lambda!446766) (not (forall!17569 (toList!11518 lt!2591282) lambda!446816)))))

(declare-fun bs!1909633 () Bool)

(assert (= bs!1909633 d!2259427))

(assert (=> bs!1909633 m!7946996))

(declare-fun m!7947166 () Bool)

(assert (=> bs!1909633 m!7947166))

(assert (=> d!2259337 d!2259427))

(declare-fun d!2259429 () Bool)

(declare-fun e!4355133 () Bool)

(assert (=> d!2259429 e!4355133))

(declare-fun res!2944549 () Bool)

(assert (=> d!2259429 (=> (not res!2944549) (not e!4355133))))

(declare-fun lt!2591340 () List!70764)

(declare-fun noDuplicate!3013 (List!70764) Bool)

(assert (=> d!2259429 (= res!2944549 (noDuplicate!3013 lt!2591340))))

(declare-fun choose!56251 ((Set Context!15336)) List!70764)

(assert (=> d!2259429 (= lt!2591340 (choose!56251 lt!2591282))))

(assert (=> d!2259429 (= (toList!11518 lt!2591282) lt!2591340)))

(declare-fun b!7262573 () Bool)

(assert (=> b!7262573 (= e!4355133 (= (content!14722 lt!2591340) lt!2591282))))

(assert (= (and d!2259429 res!2944549) b!7262573))

(declare-fun m!7947168 () Bool)

(assert (=> d!2259429 m!7947168))

(declare-fun m!7947170 () Bool)

(assert (=> d!2259429 m!7947170))

(declare-fun m!7947172 () Bool)

(assert (=> b!7262573 m!7947172))

(assert (=> d!2259337 d!2259429))

(declare-fun d!2259431 () Bool)

(declare-fun res!2944552 () Bool)

(assert (=> d!2259431 (= res!2944552 (exists!4479 (toList!11518 lt!2591282) lambda!446766))))

(assert (=> d!2259431 true))

(assert (=> d!2259431 (= (choose!56243 lt!2591282 lambda!446766) res!2944552)))

(declare-fun bs!1909634 () Bool)

(assert (= bs!1909634 d!2259431))

(assert (=> bs!1909634 m!7946996))

(assert (=> bs!1909634 m!7946996))

(assert (=> bs!1909634 m!7946998))

(assert (=> d!2259337 d!2259431))

(declare-fun d!2259433 () Bool)

(declare-fun c!1351125 () Bool)

(assert (=> d!2259433 (= c!1351125 (is-Nil!70640 (t!384830 (t!384830 zl!1658))))))

(declare-fun e!4355134 () (Set Context!15336))

(assert (=> d!2259433 (= (content!14722 (t!384830 (t!384830 zl!1658))) e!4355134)))

(declare-fun b!7262574 () Bool)

(assert (=> b!7262574 (= e!4355134 (as set.empty (Set Context!15336)))))

(declare-fun b!7262575 () Bool)

(assert (=> b!7262575 (= e!4355134 (set.union (set.insert (h!77088 (t!384830 (t!384830 zl!1658))) (as set.empty (Set Context!15336))) (content!14722 (t!384830 (t!384830 (t!384830 zl!1658))))))))

(assert (= (and d!2259433 c!1351125) b!7262574))

(assert (= (and d!2259433 (not c!1351125)) b!7262575))

(declare-fun m!7947174 () Bool)

(assert (=> b!7262575 m!7947174))

(declare-fun m!7947176 () Bool)

(assert (=> b!7262575 m!7947176))

(assert (=> b!7262482 d!2259433))

(assert (=> d!2259341 d!2259385))

(declare-fun d!2259435 () Bool)

(declare-fun res!2944553 () Bool)

(declare-fun e!4355135 () Bool)

(assert (=> d!2259435 (=> res!2944553 e!4355135)))

(assert (=> d!2259435 (= res!2944553 (is-Nil!70640 (t!384830 zl!1658)))))

(assert (=> d!2259435 (= (forall!17569 (t!384830 zl!1658) lambda!446792) e!4355135)))

(declare-fun b!7262576 () Bool)

(declare-fun e!4355136 () Bool)

(assert (=> b!7262576 (= e!4355135 e!4355136)))

(declare-fun res!2944554 () Bool)

(assert (=> b!7262576 (=> (not res!2944554) (not e!4355136))))

(assert (=> b!7262576 (= res!2944554 (dynLambda!28842 lambda!446792 (h!77088 (t!384830 zl!1658))))))

(declare-fun b!7262577 () Bool)

(assert (=> b!7262577 (= e!4355136 (forall!17569 (t!384830 (t!384830 zl!1658)) lambda!446792))))

(assert (= (and d!2259435 (not res!2944553)) b!7262576))

(assert (= (and b!7262576 res!2944554) b!7262577))

(declare-fun b_lambda!279349 () Bool)

(assert (=> (not b_lambda!279349) (not b!7262576)))

(declare-fun m!7947178 () Bool)

(assert (=> b!7262576 m!7947178))

(declare-fun m!7947180 () Bool)

(assert (=> b!7262577 m!7947180))

(assert (=> d!2259359 d!2259435))

(declare-fun bs!1909635 () Bool)

(declare-fun d!2259437 () Bool)

(assert (= bs!1909635 (and d!2259437 d!2259339)))

(declare-fun lambda!446817 () Int)

(assert (=> bs!1909635 (= lambda!446817 lambda!446785)))

(assert (=> d!2259437 (= (inv!89831 (h!77088 (t!384830 zl!1658))) (forall!17570 (exprs!8168 (h!77088 (t!384830 zl!1658))) lambda!446817))))

(declare-fun bs!1909636 () Bool)

(assert (= bs!1909636 d!2259437))

(declare-fun m!7947182 () Bool)

(assert (=> bs!1909636 m!7947182))

(assert (=> b!7262489 d!2259437))

(assert (=> d!2259343 d!2259385))

(assert (=> b!7262480 d!2259341))

(declare-fun b!7262578 () Bool)

(declare-fun e!4355137 () Bool)

(declare-fun tp!2039621 () Bool)

(assert (=> b!7262578 (= e!4355137 (and tp_is_empty!46921 tp!2039621))))

(assert (=> b!7262500 (= tp!2039605 e!4355137)))

(assert (= (and b!7262500 (is-Cons!70641 (t!384831 (t!384831 s!7887)))) b!7262578))

(declare-fun b!7262580 () Bool)

(declare-fun e!4355139 () Bool)

(declare-fun tp!2039622 () Bool)

(assert (=> b!7262580 (= e!4355139 tp!2039622)))

(declare-fun e!4355138 () Bool)

(declare-fun tp!2039623 () Bool)

(declare-fun b!7262579 () Bool)

(assert (=> b!7262579 (= e!4355138 (and (inv!89831 (h!77088 (t!384830 (t!384830 zl!1658)))) e!4355139 tp!2039623))))

(assert (=> b!7262489 (= tp!2039596 e!4355138)))

(assert (= b!7262579 b!7262580))

(assert (= (and b!7262489 (is-Cons!70640 (t!384830 (t!384830 zl!1658)))) b!7262579))

(declare-fun m!7947184 () Bool)

(assert (=> b!7262579 m!7947184))

(declare-fun e!4355142 () Bool)

(assert (=> b!7262495 (= tp!2039601 e!4355142)))

(declare-fun b!7262594 () Bool)

(declare-fun tp!2039637 () Bool)

(declare-fun tp!2039638 () Bool)

(assert (=> b!7262594 (= e!4355142 (and tp!2039637 tp!2039638))))

(declare-fun b!7262591 () Bool)

(assert (=> b!7262591 (= e!4355142 tp_is_empty!46921)))

(declare-fun b!7262592 () Bool)

(declare-fun tp!2039636 () Bool)

(declare-fun tp!2039634 () Bool)

(assert (=> b!7262592 (= e!4355142 (and tp!2039636 tp!2039634))))

(declare-fun b!7262593 () Bool)

(declare-fun tp!2039635 () Bool)

(assert (=> b!7262593 (= e!4355142 tp!2039635)))

(assert (= (and b!7262495 (is-ElementMatch!18728 (h!77087 (exprs!8168 (h!77088 zl!1658))))) b!7262591))

(assert (= (and b!7262495 (is-Concat!27573 (h!77087 (exprs!8168 (h!77088 zl!1658))))) b!7262592))

(assert (= (and b!7262495 (is-Star!18728 (h!77087 (exprs!8168 (h!77088 zl!1658))))) b!7262593))

(assert (= (and b!7262495 (is-Union!18728 (h!77087 (exprs!8168 (h!77088 zl!1658))))) b!7262594))

(declare-fun b!7262595 () Bool)

(declare-fun e!4355143 () Bool)

(declare-fun tp!2039639 () Bool)

(declare-fun tp!2039640 () Bool)

(assert (=> b!7262595 (= e!4355143 (and tp!2039639 tp!2039640))))

(assert (=> b!7262495 (= tp!2039602 e!4355143)))

(assert (= (and b!7262495 (is-Cons!70639 (t!384829 (exprs!8168 (h!77088 zl!1658))))) b!7262595))

(declare-fun b!7262596 () Bool)

(declare-fun e!4355144 () Bool)

(declare-fun tp!2039641 () Bool)

(declare-fun tp!2039642 () Bool)

(assert (=> b!7262596 (= e!4355144 (and tp!2039641 tp!2039642))))

(assert (=> b!7262490 (= tp!2039595 e!4355144)))

(assert (= (and b!7262490 (is-Cons!70639 (exprs!8168 (h!77088 (t!384830 zl!1658))))) b!7262596))

(declare-fun b_lambda!279351 () Bool)

(assert (= b_lambda!279345 (or d!2259339 b_lambda!279351)))

(declare-fun bs!1909637 () Bool)

(declare-fun d!2259439 () Bool)

(assert (= bs!1909637 (and d!2259439 d!2259339)))

(declare-fun validRegex!9553 (Regex!18728) Bool)

(assert (=> bs!1909637 (= (dynLambda!28841 lambda!446785 (h!77087 (exprs!8168 (h!77088 zl!1658)))) (validRegex!9553 (h!77087 (exprs!8168 (h!77088 zl!1658)))))))

(declare-fun m!7947186 () Bool)

(assert (=> bs!1909637 m!7947186))

(assert (=> b!7262552 d!2259439))

(declare-fun b_lambda!279353 () Bool)

(assert (= b_lambda!279349 (or d!2259359 b_lambda!279353)))

(declare-fun bs!1909638 () Bool)

(declare-fun d!2259441 () Bool)

(assert (= bs!1909638 (and d!2259441 d!2259359)))

(assert (=> bs!1909638 (= (dynLambda!28842 lambda!446792 (h!77088 (t!384830 zl!1658))) (not (dynLambda!28842 lambda!446767 (h!77088 (t!384830 zl!1658)))))))

(declare-fun b_lambda!279357 () Bool)

(assert (=> (not b_lambda!279357) (not bs!1909638)))

(declare-fun m!7947188 () Bool)

(assert (=> bs!1909638 m!7947188))

(assert (=> b!7262576 d!2259441))

(declare-fun b_lambda!279355 () Bool)

(assert (= b_lambda!279347 (or d!2259335 b_lambda!279355)))

(declare-fun bs!1909639 () Bool)

(declare-fun d!2259443 () Bool)

(assert (= bs!1909639 (and d!2259443 d!2259335)))

(assert (=> bs!1909639 (= (dynLambda!28842 lambda!446782 (h!77088 zl!1658)) (not (dynLambda!28842 lambda!446768 (h!77088 zl!1658))))))

(declare-fun b_lambda!279359 () Bool)

(assert (=> (not b_lambda!279359) (not bs!1909639)))

(declare-fun m!7947190 () Bool)

(assert (=> bs!1909639 m!7947190))

(assert (=> b!7262567 d!2259443))

(push 1)

(assert (not d!2259399))

(assert (not b!7262573))

(assert (not b!7262568))

(assert (not b!7262593))

(assert (not d!2259391))

(assert (not b!7262596))

(assert (not b!7262544))

(assert (not b!7262557))

(assert (not d!2259411))

(assert (not d!2259405))

(assert (not d!2259401))

(assert (not d!2259427))

(assert (not d!2259407))

(assert (not b!7262569))

(assert (not b!7262592))

(assert (not d!2259415))

(assert (not b!7262562))

(assert (not b_lambda!279353))

(assert (not b!7262570))

(assert (not b!7262553))

(assert (not d!2259403))

(assert (not d!2259413))

(assert (not b!7262554))

(assert (not b!7262559))

(assert (not d!2259431))

(assert (not d!2259437))

(assert (not b_lambda!279355))

(assert (not b!7262595))

(assert (not b_lambda!279357))

(assert (not d!2259429))

(assert (not d!2259387))

(assert (not b!7262594))

(assert (not d!2259383))

(assert (not d!2259421))

(assert (not b!7262579))

(assert (not d!2259409))

(assert (not b!7262558))

(assert (not b!7262545))

(assert (not d!2259389))

(assert (not d!2259417))

(assert (not b_lambda!279351))

(assert tp_is_empty!46921)

(assert (not b_lambda!279359))

(assert (not bs!1909637))

(assert (not b!7262578))

(assert (not b!7262580))

(assert (not d!2259425))

(assert (not b!7262555))

(assert (not d!2259423))

(assert (not b!7262575))

(assert (not b!7262556))

(assert (not b!7262577))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!279377 () Bool)

(assert (= b_lambda!279359 (or b!7262420 b_lambda!279377)))

(declare-fun bs!1909727 () Bool)

(declare-fun d!2259507 () Bool)

(assert (= bs!1909727 (and d!2259507 b!7262420)))

(assert (=> bs!1909727 (= (dynLambda!28842 lambda!446768 (h!77088 zl!1658)) (matchZipper!3632 (set.insert (h!77088 zl!1658) (as set.empty (Set Context!15336))) s!7887))))

(assert (=> bs!1909727 m!7946942))

(assert (=> bs!1909727 m!7946942))

(declare-fun m!7947282 () Bool)

(assert (=> bs!1909727 m!7947282))

(assert (=> bs!1909639 d!2259507))

(declare-fun b_lambda!279379 () Bool)

(assert (= b_lambda!279357 (or b!7262423 b_lambda!279379)))

(declare-fun bs!1909728 () Bool)

(declare-fun d!2259509 () Bool)

(assert (= bs!1909728 (and d!2259509 b!7262423)))

(assert (=> bs!1909728 (= (dynLambda!28842 lambda!446767 (h!77088 (t!384830 zl!1658))) (matchZipper!3632 (set.insert (h!77088 (t!384830 zl!1658)) (as set.empty (Set Context!15336))) s!7887))))

(assert (=> bs!1909728 m!7947024))

(assert (=> bs!1909728 m!7947024))

(declare-fun m!7947284 () Bool)

(assert (=> bs!1909728 m!7947284))

(assert (=> bs!1909638 d!2259509))

(push 1)

(assert (not d!2259399))

(assert (not b!7262573))

(assert (not b!7262568))

(assert (not b!7262593))

(assert (not d!2259391))

(assert (not b!7262596))

(assert (not b!7262544))

(assert (not b!7262557))

(assert (not d!2259411))

(assert (not d!2259401))

(assert (not d!2259427))

(assert (not d!2259407))

(assert (not b!7262569))

(assert (not b!7262592))

(assert (not d!2259415))

(assert (not b!7262562))

(assert (not b_lambda!279353))

(assert (not b!7262570))

(assert (not b!7262553))

(assert (not d!2259403))

(assert (not d!2259413))

(assert (not b!7262554))

(assert (not b!7262559))

(assert (not d!2259431))

(assert (not d!2259437))

(assert (not b_lambda!279355))

(assert (not b!7262595))

(assert (not b_lambda!279377))

(assert (not d!2259429))

(assert (not d!2259387))

(assert (not b!7262594))

(assert (not d!2259383))

(assert (not bs!1909727))

(assert (not d!2259421))

(assert (not b!7262579))

(assert (not d!2259409))

(assert (not b!7262558))

(assert (not b!7262545))

(assert (not d!2259389))

(assert (not d!2259417))

(assert (not b_lambda!279351))

(assert tp_is_empty!46921)

(assert (not bs!1909637))

(assert (not b!7262578))

(assert (not b!7262580))

(assert (not d!2259425))

(assert (not b!7262555))

(assert (not bs!1909728))

(assert (not d!2259423))

(assert (not b!7262575))

(assert (not b!7262556))

(assert (not b!7262577))

(assert (not b_lambda!279379))

(assert (not d!2259405))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

