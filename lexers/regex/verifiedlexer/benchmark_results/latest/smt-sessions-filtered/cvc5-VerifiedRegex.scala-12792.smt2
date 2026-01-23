; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707582 () Bool)

(assert start!707582)

(assert (=> start!707582 true))

(declare-fun b!7260795 () Bool)

(declare-fun e!4353916 () Bool)

(declare-datatypes ((C!37658 0))(
  ( (C!37659 (val!28777 Int)) )
))
(declare-datatypes ((Regex!18692 0))(
  ( (ElementMatch!18692 (c!1350790 C!37658)) (Concat!27537 (regOne!37896 Regex!18692) (regTwo!37896 Regex!18692)) (EmptyExpr!18692) (Star!18692 (reg!19021 Regex!18692)) (EmptyLang!18692) (Union!18692 (regOne!37897 Regex!18692) (regTwo!37897 Regex!18692)) )
))
(declare-datatypes ((List!70655 0))(
  ( (Nil!70531) (Cons!70531 (h!76979 Regex!18692) (t!384721 List!70655)) )
))
(declare-datatypes ((Context!15264 0))(
  ( (Context!15265 (exprs!8132 List!70655)) )
))
(declare-datatypes ((List!70656 0))(
  ( (Nil!70532) (Cons!70532 (h!76980 Context!15264) (t!384722 List!70656)) )
))
(declare-fun zl!1664 () List!70656)

(declare-fun size!41770 (List!70656) Int)

(assert (=> b!7260795 (= e!4353916 (< (size!41770 zl!1664) 0))))

(declare-fun b!7260797 () Bool)

(declare-fun e!4353917 () Bool)

(declare-fun tp!2038869 () Bool)

(assert (=> b!7260797 (= e!4353917 tp!2038869)))

(declare-fun e!4353915 () Bool)

(declare-fun tp!2038868 () Bool)

(declare-fun b!7260796 () Bool)

(declare-fun inv!89741 (Context!15264) Bool)

(assert (=> b!7260796 (= e!4353915 (and (inv!89741 (h!76980 zl!1664)) e!4353917 tp!2038868))))

(declare-fun b!7260798 () Bool)

(declare-fun e!4353918 () Bool)

(declare-fun tp_is_empty!46849 () Bool)

(declare-fun tp!2038867 () Bool)

(assert (=> b!7260798 (= e!4353918 (and tp_is_empty!46849 tp!2038867))))

(declare-fun res!2944071 () Bool)

(assert (=> start!707582 (=> (not res!2944071) (not e!4353916))))

(declare-fun lambda!446558 () Int)

(declare-fun exists!4456 (List!70656 Int) Bool)

(assert (=> start!707582 (= res!2944071 (exists!4456 zl!1664 lambda!446558))))

(assert (=> start!707582 e!4353916))

(assert (=> start!707582 e!4353915))

(assert (=> start!707582 e!4353918))

(assert (= (and start!707582 res!2944071) b!7260795))

(assert (= b!7260796 b!7260797))

(assert (= (and start!707582 (is-Cons!70532 zl!1664)) b!7260796))

(declare-datatypes ((List!70657 0))(
  ( (Nil!70533) (Cons!70533 (h!76981 C!37658) (t!384723 List!70657)) )
))
(declare-fun s!7912 () List!70657)

(assert (= (and start!707582 (is-Cons!70533 s!7912)) b!7260798))

(declare-fun m!7945572 () Bool)

(assert (=> b!7260795 m!7945572))

(declare-fun m!7945574 () Bool)

(assert (=> b!7260796 m!7945574))

(declare-fun m!7945576 () Bool)

(assert (=> start!707582 m!7945576))

(push 1)

(assert (not b!7260796))

(assert tp_is_empty!46849)

(assert (not b!7260798))

(assert (not b!7260795))

(assert (not start!707582))

(assert (not b!7260797))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2258927 () Bool)

(declare-fun lt!2590745 () Int)

(assert (=> d!2258927 (>= lt!2590745 0)))

(declare-fun e!4353933 () Int)

(assert (=> d!2258927 (= lt!2590745 e!4353933)))

(declare-fun c!1350796 () Bool)

(assert (=> d!2258927 (= c!1350796 (is-Nil!70532 zl!1664))))

(assert (=> d!2258927 (= (size!41770 zl!1664) lt!2590745)))

(declare-fun b!7260819 () Bool)

(assert (=> b!7260819 (= e!4353933 0)))

(declare-fun b!7260820 () Bool)

(assert (=> b!7260820 (= e!4353933 (+ 1 (size!41770 (t!384722 zl!1664))))))

(assert (= (and d!2258927 c!1350796) b!7260819))

(assert (= (and d!2258927 (not c!1350796)) b!7260820))

(declare-fun m!7945584 () Bool)

(assert (=> b!7260820 m!7945584))

(assert (=> b!7260795 d!2258927))

(declare-fun bs!1909354 () Bool)

(declare-fun d!2258929 () Bool)

(assert (= bs!1909354 (and d!2258929 start!707582)))

(declare-fun lambda!446564 () Int)

(assert (=> bs!1909354 (not (= lambda!446564 lambda!446558))))

(assert (=> d!2258929 true))

(declare-fun order!29037 () Int)

(declare-fun dynLambda!28823 (Int Int) Int)

(assert (=> d!2258929 (< (dynLambda!28823 order!29037 lambda!446558) (dynLambda!28823 order!29037 lambda!446564))))

(declare-fun forall!17545 (List!70656 Int) Bool)

(assert (=> d!2258929 (= (exists!4456 zl!1664 lambda!446558) (not (forall!17545 zl!1664 lambda!446564)))))

(declare-fun bs!1909355 () Bool)

(assert (= bs!1909355 d!2258929))

(declare-fun m!7945586 () Bool)

(assert (=> bs!1909355 m!7945586))

(assert (=> start!707582 d!2258929))

(declare-fun d!2258931 () Bool)

(declare-fun lambda!446567 () Int)

(declare-fun forall!17546 (List!70655 Int) Bool)

(assert (=> d!2258931 (= (inv!89741 (h!76980 zl!1664)) (forall!17546 (exprs!8132 (h!76980 zl!1664)) lambda!446567))))

(declare-fun bs!1909356 () Bool)

(assert (= bs!1909356 d!2258931))

(declare-fun m!7945588 () Bool)

(assert (=> bs!1909356 m!7945588))

(assert (=> b!7260796 d!2258931))

(declare-fun b!7260827 () Bool)

(declare-fun e!4353936 () Bool)

(declare-fun tp!2038881 () Bool)

(assert (=> b!7260827 (= e!4353936 (and tp_is_empty!46849 tp!2038881))))

(assert (=> b!7260798 (= tp!2038867 e!4353936)))

(assert (= (and b!7260798 (is-Cons!70533 (t!384723 s!7912))) b!7260827))

(declare-fun b!7260835 () Bool)

(declare-fun e!4353942 () Bool)

(declare-fun tp!2038886 () Bool)

(assert (=> b!7260835 (= e!4353942 tp!2038886)))

(declare-fun b!7260834 () Bool)

(declare-fun tp!2038887 () Bool)

(declare-fun e!4353941 () Bool)

(assert (=> b!7260834 (= e!4353941 (and (inv!89741 (h!76980 (t!384722 zl!1664))) e!4353942 tp!2038887))))

(assert (=> b!7260796 (= tp!2038868 e!4353941)))

(assert (= b!7260834 b!7260835))

(assert (= (and b!7260796 (is-Cons!70532 (t!384722 zl!1664))) b!7260834))

(declare-fun m!7945590 () Bool)

(assert (=> b!7260834 m!7945590))

(declare-fun b!7260840 () Bool)

(declare-fun e!4353945 () Bool)

(declare-fun tp!2038892 () Bool)

(declare-fun tp!2038893 () Bool)

(assert (=> b!7260840 (= e!4353945 (and tp!2038892 tp!2038893))))

(assert (=> b!7260797 (= tp!2038869 e!4353945)))

(assert (= (and b!7260797 (is-Cons!70531 (exprs!8132 (h!76980 zl!1664)))) b!7260840))

(push 1)

(assert (not b!7260827))

(assert (not b!7260820))

(assert (not d!2258929))

(assert (not b!7260834))

(assert (not b!7260835))

(assert (not d!2258931))

(assert tp_is_empty!46849)

(assert (not b!7260840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

