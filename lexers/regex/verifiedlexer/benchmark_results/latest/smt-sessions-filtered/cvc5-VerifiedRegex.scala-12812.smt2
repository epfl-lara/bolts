; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707956 () Bool)

(assert start!707956)

(declare-fun b!7262728 () Bool)

(declare-fun e!4355243 () Bool)

(declare-datatypes ((C!37738 0))(
  ( (C!37739 (val!28817 Int)) )
))
(declare-datatypes ((Regex!18732 0))(
  ( (ElementMatch!18732 (c!1351168 C!37738)) (Concat!27577 (regOne!37976 Regex!18732) (regTwo!37976 Regex!18732)) (EmptyExpr!18732) (Star!18732 (reg!19061 Regex!18732)) (EmptyLang!18732) (Union!18732 (regOne!37977 Regex!18732) (regTwo!37977 Regex!18732)) )
))
(declare-datatypes ((List!70775 0))(
  ( (Nil!70651) (Cons!70651 (h!77099 Regex!18732) (t!384841 List!70775)) )
))
(declare-datatypes ((Context!15344 0))(
  ( (Context!15345 (exprs!8172 List!70775)) )
))
(declare-datatypes ((List!70776 0))(
  ( (Nil!70652) (Cons!70652 (h!77100 Context!15344) (t!384842 List!70776)) )
))
(declare-fun zl!1658 () List!70776)

(declare-fun lt!2591406 () (Set Context!15344))

(assert (=> b!7262728 (= e!4355243 (and (not (is-Cons!70652 zl!1658)) (not (= lt!2591406 (as set.empty (Set Context!15344))))))))

(declare-fun b!7262731 () Bool)

(declare-fun e!4355242 () Bool)

(declare-fun tp_is_empty!46929 () Bool)

(declare-fun tp!2039690 () Bool)

(assert (=> b!7262731 (= e!4355242 (and tp_is_empty!46929 tp!2039690))))

(declare-fun e!4355245 () Bool)

(declare-fun b!7262729 () Bool)

(declare-fun tp!2039691 () Bool)

(declare-fun e!4355244 () Bool)

(declare-fun inv!89841 (Context!15344) Bool)

(assert (=> b!7262729 (= e!4355244 (and (inv!89841 (h!77100 zl!1658)) e!4355245 tp!2039691))))

(declare-fun res!2944616 () Bool)

(assert (=> start!707956 (=> (not res!2944616) (not e!4355243))))

(declare-datatypes ((List!70777 0))(
  ( (Nil!70653) (Cons!70653 (h!77101 C!37738) (t!384843 List!70777)) )
))
(declare-fun s!7887 () List!70777)

(declare-fun matchZipper!3636 ((Set Context!15344) List!70777) Bool)

(assert (=> start!707956 (= res!2944616 (matchZipper!3636 lt!2591406 s!7887))))

(declare-fun content!14726 (List!70776) (Set Context!15344))

(assert (=> start!707956 (= lt!2591406 (content!14726 zl!1658))))

(assert (=> start!707956 e!4355243))

(assert (=> start!707956 e!4355244))

(assert (=> start!707956 e!4355242))

(declare-fun b!7262730 () Bool)

(declare-fun tp!2039689 () Bool)

(assert (=> b!7262730 (= e!4355245 tp!2039689)))

(assert (= (and start!707956 res!2944616) b!7262728))

(assert (= b!7262729 b!7262730))

(assert (= (and start!707956 (is-Cons!70652 zl!1658)) b!7262729))

(assert (= (and start!707956 (is-Cons!70653 s!7887)) b!7262731))

(declare-fun m!7947342 () Bool)

(assert (=> b!7262729 m!7947342))

(declare-fun m!7947344 () Bool)

(assert (=> start!707956 m!7947344))

(declare-fun m!7947346 () Bool)

(assert (=> start!707956 m!7947346))

(push 1)

(assert (not b!7262730))

(assert (not b!7262731))

(assert tp_is_empty!46929)

(assert (not b!7262729))

(assert (not start!707956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259513 () Bool)

(declare-fun lambda!446864 () Int)

(declare-fun forall!17573 (List!70775 Int) Bool)

(assert (=> d!2259513 (= (inv!89841 (h!77100 zl!1658)) (forall!17573 (exprs!8172 (h!77100 zl!1658)) lambda!446864))))

(declare-fun bs!1909739 () Bool)

(assert (= bs!1909739 d!2259513))

(declare-fun m!7947354 () Bool)

(assert (=> bs!1909739 m!7947354))

(assert (=> b!7262729 d!2259513))

(declare-fun d!2259517 () Bool)

(declare-fun c!1351172 () Bool)

(declare-fun isEmpty!40623 (List!70777) Bool)

(assert (=> d!2259517 (= c!1351172 (isEmpty!40623 s!7887))))

(declare-fun e!4355260 () Bool)

(assert (=> d!2259517 (= (matchZipper!3636 lt!2591406 s!7887) e!4355260)))

(declare-fun b!7262748 () Bool)

(declare-fun nullableZipper!2957 ((Set Context!15344)) Bool)

(assert (=> b!7262748 (= e!4355260 (nullableZipper!2957 lt!2591406))))

(declare-fun b!7262749 () Bool)

(declare-fun derivationStepZipper!3483 ((Set Context!15344) C!37738) (Set Context!15344))

(declare-fun head!14956 (List!70777) C!37738)

(declare-fun tail!14415 (List!70777) List!70777)

(assert (=> b!7262749 (= e!4355260 (matchZipper!3636 (derivationStepZipper!3483 lt!2591406 (head!14956 s!7887)) (tail!14415 s!7887)))))

(assert (= (and d!2259517 c!1351172) b!7262748))

(assert (= (and d!2259517 (not c!1351172)) b!7262749))

(declare-fun m!7947356 () Bool)

(assert (=> d!2259517 m!7947356))

(declare-fun m!7947358 () Bool)

(assert (=> b!7262748 m!7947358))

(declare-fun m!7947360 () Bool)

(assert (=> b!7262749 m!7947360))

(assert (=> b!7262749 m!7947360))

(declare-fun m!7947362 () Bool)

(assert (=> b!7262749 m!7947362))

(declare-fun m!7947364 () Bool)

(assert (=> b!7262749 m!7947364))

(assert (=> b!7262749 m!7947362))

(assert (=> b!7262749 m!7947364))

(declare-fun m!7947366 () Bool)

(assert (=> b!7262749 m!7947366))

(assert (=> start!707956 d!2259517))

(declare-fun d!2259519 () Bool)

(declare-fun c!1351175 () Bool)

(assert (=> d!2259519 (= c!1351175 (is-Nil!70652 zl!1658))))

(declare-fun e!4355263 () (Set Context!15344))

(assert (=> d!2259519 (= (content!14726 zl!1658) e!4355263)))

(declare-fun b!7262754 () Bool)

(assert (=> b!7262754 (= e!4355263 (as set.empty (Set Context!15344)))))

(declare-fun b!7262755 () Bool)

(assert (=> b!7262755 (= e!4355263 (set.union (set.insert (h!77100 zl!1658) (as set.empty (Set Context!15344))) (content!14726 (t!384842 zl!1658))))))

(assert (= (and d!2259519 c!1351175) b!7262754))

(assert (= (and d!2259519 (not c!1351175)) b!7262755))

(declare-fun m!7947368 () Bool)

(assert (=> b!7262755 m!7947368))

(declare-fun m!7947370 () Bool)

(assert (=> b!7262755 m!7947370))

(assert (=> start!707956 d!2259519))

(declare-fun b!7262763 () Bool)

(declare-fun e!4355269 () Bool)

(declare-fun tp!2039705 () Bool)

(assert (=> b!7262763 (= e!4355269 tp!2039705)))

(declare-fun e!4355268 () Bool)

(declare-fun b!7262762 () Bool)

(declare-fun tp!2039706 () Bool)

(assert (=> b!7262762 (= e!4355268 (and (inv!89841 (h!77100 (t!384842 zl!1658))) e!4355269 tp!2039706))))

(assert (=> b!7262729 (= tp!2039691 e!4355268)))

(assert (= b!7262762 b!7262763))

(assert (= (and b!7262729 (is-Cons!70652 (t!384842 zl!1658))) b!7262762))

(declare-fun m!7947372 () Bool)

(assert (=> b!7262762 m!7947372))

(declare-fun b!7262768 () Bool)

(declare-fun e!4355272 () Bool)

(declare-fun tp!2039711 () Bool)

(declare-fun tp!2039712 () Bool)

(assert (=> b!7262768 (= e!4355272 (and tp!2039711 tp!2039712))))

(assert (=> b!7262730 (= tp!2039689 e!4355272)))

(assert (= (and b!7262730 (is-Cons!70651 (exprs!8172 (h!77100 zl!1658)))) b!7262768))

(declare-fun b!7262773 () Bool)

(declare-fun e!4355275 () Bool)

(declare-fun tp!2039715 () Bool)

(assert (=> b!7262773 (= e!4355275 (and tp_is_empty!46929 tp!2039715))))

(assert (=> b!7262731 (= tp!2039690 e!4355275)))

(assert (= (and b!7262731 (is-Cons!70653 (t!384843 s!7887))) b!7262773))

(push 1)

(assert (not b!7262749))

(assert (not b!7262768))

(assert (not b!7262763))

(assert (not d!2259513))

(assert (not d!2259517))

(assert (not b!7262762))

(assert (not b!7262773))

(assert (not b!7262755))

(assert tp_is_empty!46929)

(assert (not b!7262748))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

