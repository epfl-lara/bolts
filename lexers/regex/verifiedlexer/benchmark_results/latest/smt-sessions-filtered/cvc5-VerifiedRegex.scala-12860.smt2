; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710224 () Bool)

(assert start!710224)

(declare-fun b!7274168 () Bool)

(declare-fun lambda!449489 () Int)

(declare-fun lambda!449488 () Int)

(assert (=> b!7274168 (not (= lambda!449489 lambda!449488))))

(declare-fun b!7274164 () Bool)

(declare-fun res!2948704 () Bool)

(declare-fun e!4362078 () Bool)

(assert (=> b!7274164 (=> (not res!2948704) (not e!4362078))))

(declare-datatypes ((C!37930 0))(
  ( (C!37931 (val!28913 Int)) )
))
(declare-datatypes ((List!70971 0))(
  ( (Nil!70847) (Cons!70847 (h!77295 C!37930) (t!385043 List!70971)) )
))
(declare-fun s!7854 () List!70971)

(assert (=> b!7274164 (= res!2948704 (not (is-Cons!70847 s!7854)))))

(declare-fun b!7274165 () Bool)

(declare-fun res!2948700 () Bool)

(assert (=> b!7274165 (=> (not res!2948700) (not e!4362078))))

(declare-datatypes ((Regex!18828 0))(
  ( (ElementMatch!18828 (c!1354368 C!37930)) (Concat!27673 (regOne!38168 Regex!18828) (regTwo!38168 Regex!18828)) (EmptyExpr!18828) (Star!18828 (reg!19157 Regex!18828)) (EmptyLang!18828) (Union!18828 (regOne!38169 Regex!18828) (regTwo!38169 Regex!18828)) )
))
(declare-datatypes ((List!70972 0))(
  ( (Nil!70848) (Cons!70848 (h!77296 Regex!18828) (t!385044 List!70972)) )
))
(declare-datatypes ((Context!15536 0))(
  ( (Context!15537 (exprs!8268 List!70972)) )
))
(declare-fun ct1!250 () Context!15536)

(declare-fun nullableContext!318 (Context!15536) Bool)

(assert (=> b!7274165 (= res!2948700 (nullableContext!318 ct1!250))))

(declare-fun b!7274166 () Bool)

(declare-fun e!4362079 () Bool)

(declare-fun e!4362077 () Bool)

(assert (=> b!7274166 (= e!4362079 e!4362077)))

(declare-fun res!2948702 () Bool)

(assert (=> b!7274166 (=> (not res!2948702) (not e!4362077))))

(declare-fun forall!17655 (List!70972 Int) Bool)

(assert (=> b!7274166 (= res!2948702 (forall!17655 (exprs!8268 ct1!250) lambda!449489))))

(declare-fun b!7274167 () Bool)

(declare-fun e!4362075 () Bool)

(declare-fun tp!2041731 () Bool)

(assert (=> b!7274167 (= e!4362075 tp!2041731)))

(assert (=> b!7274168 (= e!4362078 e!4362079)))

(declare-fun res!2948703 () Bool)

(assert (=> b!7274168 (=> (not res!2948703) (not e!4362079))))

(declare-fun ct2!346 () Context!15536)

(declare-fun matchZipper!3732 ((Set Context!15536) List!70971) Bool)

(declare-fun ++!16724 (List!70972 List!70972) List!70972)

(assert (=> b!7274168 (= res!2948703 (matchZipper!3732 (set.insert (Context!15537 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346))) (as set.empty (Set Context!15536))) s!7854))))

(declare-datatypes ((Unit!164266 0))(
  ( (Unit!164267) )
))
(declare-fun lt!2596395 () Unit!164266)

(declare-fun lemmaConcatPreservesForall!1581 (List!70972 List!70972 Int) Unit!164266)

(assert (=> b!7274168 (= lt!2596395 (lemmaConcatPreservesForall!1581 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449489))))

(declare-fun lt!2596394 () Unit!164266)

(assert (=> b!7274168 (= lt!2596394 (lemmaConcatPreservesForall!1581 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449488))))

(declare-fun res!2948705 () Bool)

(assert (=> start!710224 (=> (not res!2948705) (not e!4362078))))

(assert (=> start!710224 (= res!2948705 (matchZipper!3732 (set.insert ct2!346 (as set.empty (Set Context!15536))) s!7854))))

(assert (=> start!710224 e!4362078))

(declare-fun e!4362074 () Bool)

(declare-fun inv!90081 (Context!15536) Bool)

(assert (=> start!710224 (and (inv!90081 ct2!346) e!4362074)))

(declare-fun e!4362076 () Bool)

(assert (=> start!710224 e!4362076))

(assert (=> start!710224 (and (inv!90081 ct1!250) e!4362075)))

(declare-fun b!7274169 () Bool)

(declare-fun tp!2041733 () Bool)

(assert (=> b!7274169 (= e!4362074 tp!2041733)))

(declare-fun b!7274170 () Bool)

(assert (=> b!7274170 (= e!4362077 (not (forall!17655 (exprs!8268 ct2!346) lambda!449489)))))

(declare-fun b!7274171 () Bool)

(declare-fun res!2948701 () Bool)

(assert (=> b!7274171 (=> (not res!2948701) (not e!4362078))))

(assert (=> b!7274171 (= res!2948701 (nullableContext!318 ct2!346))))

(declare-fun b!7274172 () Bool)

(declare-fun tp_is_empty!47121 () Bool)

(declare-fun tp!2041732 () Bool)

(assert (=> b!7274172 (= e!4362076 (and tp_is_empty!47121 tp!2041732))))

(assert (= (and start!710224 res!2948705) b!7274165))

(assert (= (and b!7274165 res!2948700) b!7274164))

(assert (= (and b!7274164 res!2948704) b!7274171))

(assert (= (and b!7274171 res!2948701) b!7274168))

(assert (= (and b!7274168 res!2948703) b!7274166))

(assert (= (and b!7274166 res!2948702) b!7274170))

(assert (= start!710224 b!7274169))

(assert (= (and start!710224 (is-Cons!70847 s!7854)) b!7274172))

(assert (= start!710224 b!7274167))

(declare-fun m!7960806 () Bool)

(assert (=> start!710224 m!7960806))

(assert (=> start!710224 m!7960806))

(declare-fun m!7960808 () Bool)

(assert (=> start!710224 m!7960808))

(declare-fun m!7960810 () Bool)

(assert (=> start!710224 m!7960810))

(declare-fun m!7960812 () Bool)

(assert (=> start!710224 m!7960812))

(declare-fun m!7960814 () Bool)

(assert (=> b!7274170 m!7960814))

(declare-fun m!7960816 () Bool)

(assert (=> b!7274166 m!7960816))

(declare-fun m!7960818 () Bool)

(assert (=> b!7274168 m!7960818))

(declare-fun m!7960820 () Bool)

(assert (=> b!7274168 m!7960820))

(declare-fun m!7960822 () Bool)

(assert (=> b!7274168 m!7960822))

(declare-fun m!7960824 () Bool)

(assert (=> b!7274168 m!7960824))

(assert (=> b!7274168 m!7960820))

(declare-fun m!7960826 () Bool)

(assert (=> b!7274168 m!7960826))

(declare-fun m!7960828 () Bool)

(assert (=> b!7274171 m!7960828))

(declare-fun m!7960830 () Bool)

(assert (=> b!7274165 m!7960830))

(push 1)

(assert (not start!710224))

(assert (not b!7274166))

(assert (not b!7274165))

(assert (not b!7274171))

(assert (not b!7274169))

(assert (not b!7274168))

(assert tp_is_empty!47121)

(assert (not b!7274167))

(assert (not b!7274172))

(assert (not b!7274170))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2264037 () Bool)

(declare-fun c!1354373 () Bool)

(declare-fun isEmpty!40748 (List!70971) Bool)

(assert (=> d!2264037 (= c!1354373 (isEmpty!40748 s!7854))))

(declare-fun e!4362106 () Bool)

(assert (=> d!2264037 (= (matchZipper!3732 (set.insert (Context!15537 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346))) (as set.empty (Set Context!15536))) s!7854) e!4362106)))

(declare-fun b!7274210 () Bool)

(declare-fun nullableZipper!3030 ((Set Context!15536)) Bool)

(assert (=> b!7274210 (= e!4362106 (nullableZipper!3030 (set.insert (Context!15537 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346))) (as set.empty (Set Context!15536)))))))

(declare-fun b!7274211 () Bool)

(declare-fun derivationStepZipper!3566 ((Set Context!15536) C!37930) (Set Context!15536))

(declare-fun head!15028 (List!70971) C!37930)

(declare-fun tail!14535 (List!70971) List!70971)

(assert (=> b!7274211 (= e!4362106 (matchZipper!3732 (derivationStepZipper!3566 (set.insert (Context!15537 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346))) (as set.empty (Set Context!15536))) (head!15028 s!7854)) (tail!14535 s!7854)))))

(assert (= (and d!2264037 c!1354373) b!7274210))

(assert (= (and d!2264037 (not c!1354373)) b!7274211))

(declare-fun m!7960860 () Bool)

(assert (=> d!2264037 m!7960860))

(assert (=> b!7274210 m!7960820))

(declare-fun m!7960862 () Bool)

(assert (=> b!7274210 m!7960862))

(declare-fun m!7960864 () Bool)

(assert (=> b!7274211 m!7960864))

(assert (=> b!7274211 m!7960820))

(assert (=> b!7274211 m!7960864))

(declare-fun m!7960866 () Bool)

(assert (=> b!7274211 m!7960866))

(declare-fun m!7960868 () Bool)

(assert (=> b!7274211 m!7960868))

(assert (=> b!7274211 m!7960866))

(assert (=> b!7274211 m!7960868))

(declare-fun m!7960870 () Bool)

(assert (=> b!7274211 m!7960870))

(assert (=> b!7274168 d!2264037))

(declare-fun b!7274224 () Bool)

(declare-fun res!2948736 () Bool)

(declare-fun e!4362114 () Bool)

(assert (=> b!7274224 (=> (not res!2948736) (not e!4362114))))

(declare-fun lt!2596404 () List!70972)

(declare-fun size!41836 (List!70972) Int)

(assert (=> b!7274224 (= res!2948736 (= (size!41836 lt!2596404) (+ (size!41836 (exprs!8268 ct1!250)) (size!41836 (exprs!8268 ct2!346)))))))

(declare-fun b!7274225 () Bool)

(assert (=> b!7274225 (= e!4362114 (or (not (= (exprs!8268 ct2!346) Nil!70848)) (= lt!2596404 (exprs!8268 ct1!250))))))

(declare-fun b!7274223 () Bool)

(declare-fun e!4362113 () List!70972)

(assert (=> b!7274223 (= e!4362113 (Cons!70848 (h!77296 (exprs!8268 ct1!250)) (++!16724 (t!385044 (exprs!8268 ct1!250)) (exprs!8268 ct2!346))))))

(declare-fun b!7274222 () Bool)

(assert (=> b!7274222 (= e!4362113 (exprs!8268 ct2!346))))

(declare-fun d!2264039 () Bool)

(assert (=> d!2264039 e!4362114))

(declare-fun res!2948737 () Bool)

(assert (=> d!2264039 (=> (not res!2948737) (not e!4362114))))

(declare-fun content!14789 (List!70972) (Set Regex!18828))

(assert (=> d!2264039 (= res!2948737 (= (content!14789 lt!2596404) (set.union (content!14789 (exprs!8268 ct1!250)) (content!14789 (exprs!8268 ct2!346)))))))

(assert (=> d!2264039 (= lt!2596404 e!4362113)))

(declare-fun c!1354376 () Bool)

(assert (=> d!2264039 (= c!1354376 (is-Nil!70848 (exprs!8268 ct1!250)))))

(assert (=> d!2264039 (= (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346)) lt!2596404)))

(assert (= (and d!2264039 c!1354376) b!7274222))

(assert (= (and d!2264039 (not c!1354376)) b!7274223))

(assert (= (and d!2264039 res!2948737) b!7274224))

(assert (= (and b!7274224 res!2948736) b!7274225))

(declare-fun m!7960880 () Bool)

(assert (=> b!7274224 m!7960880))

(declare-fun m!7960882 () Bool)

(assert (=> b!7274224 m!7960882))

(declare-fun m!7960884 () Bool)

(assert (=> b!7274224 m!7960884))

(declare-fun m!7960886 () Bool)

(assert (=> b!7274223 m!7960886))

(declare-fun m!7960888 () Bool)

(assert (=> d!2264039 m!7960888))

(declare-fun m!7960890 () Bool)

(assert (=> d!2264039 m!7960890))

(declare-fun m!7960892 () Bool)

(assert (=> d!2264039 m!7960892))

(assert (=> b!7274168 d!2264039))

(declare-fun d!2264045 () Bool)

(assert (=> d!2264045 (forall!17655 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346)) lambda!449489)))

(declare-fun lt!2596407 () Unit!164266)

(declare-fun choose!56458 (List!70972 List!70972 Int) Unit!164266)

(assert (=> d!2264045 (= lt!2596407 (choose!56458 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449489))))

(assert (=> d!2264045 (forall!17655 (exprs!8268 ct1!250) lambda!449489)))

(assert (=> d!2264045 (= (lemmaConcatPreservesForall!1581 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449489) lt!2596407)))

(declare-fun bs!1911776 () Bool)

(assert (= bs!1911776 d!2264045))

(assert (=> bs!1911776 m!7960826))

(assert (=> bs!1911776 m!7960826))

(declare-fun m!7960894 () Bool)

(assert (=> bs!1911776 m!7960894))

(declare-fun m!7960896 () Bool)

(assert (=> bs!1911776 m!7960896))

(assert (=> bs!1911776 m!7960816))

(assert (=> b!7274168 d!2264045))

(declare-fun d!2264047 () Bool)

(assert (=> d!2264047 (forall!17655 (++!16724 (exprs!8268 ct1!250) (exprs!8268 ct2!346)) lambda!449488)))

(declare-fun lt!2596408 () Unit!164266)

(assert (=> d!2264047 (= lt!2596408 (choose!56458 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449488))))

(assert (=> d!2264047 (forall!17655 (exprs!8268 ct1!250) lambda!449488)))

(assert (=> d!2264047 (= (lemmaConcatPreservesForall!1581 (exprs!8268 ct1!250) (exprs!8268 ct2!346) lambda!449488) lt!2596408)))

(declare-fun bs!1911777 () Bool)

(assert (= bs!1911777 d!2264047))

(assert (=> bs!1911777 m!7960826))

(assert (=> bs!1911777 m!7960826))

(declare-fun m!7960898 () Bool)

(assert (=> bs!1911777 m!7960898))

(declare-fun m!7960900 () Bool)

(assert (=> bs!1911777 m!7960900))

(declare-fun m!7960902 () Bool)

(assert (=> bs!1911777 m!7960902))

(assert (=> b!7274168 d!2264047))

(declare-fun d!2264049 () Bool)

(declare-fun c!1354379 () Bool)

(assert (=> d!2264049 (= c!1354379 (isEmpty!40748 s!7854))))

(declare-fun e!4362117 () Bool)

(assert (=> d!2264049 (= (matchZipper!3732 (set.insert ct2!346 (as set.empty (Set Context!15536))) s!7854) e!4362117)))

(declare-fun b!7274230 () Bool)

(assert (=> b!7274230 (= e!4362117 (nullableZipper!3030 (set.insert ct2!346 (as set.empty (Set Context!15536)))))))

(declare-fun b!7274231 () Bool)

(assert (=> b!7274231 (= e!4362117 (matchZipper!3732 (derivationStepZipper!3566 (set.insert ct2!346 (as set.empty (Set Context!15536))) (head!15028 s!7854)) (tail!14535 s!7854)))))

(assert (= (and d!2264049 c!1354379) b!7274230))

(assert (= (and d!2264049 (not c!1354379)) b!7274231))

(assert (=> d!2264049 m!7960860))

(assert (=> b!7274230 m!7960806))

(declare-fun m!7960904 () Bool)

(assert (=> b!7274230 m!7960904))

(assert (=> b!7274231 m!7960864))

(assert (=> b!7274231 m!7960806))

(assert (=> b!7274231 m!7960864))

(declare-fun m!7960906 () Bool)

(assert (=> b!7274231 m!7960906))

(assert (=> b!7274231 m!7960868))

(assert (=> b!7274231 m!7960906))

(assert (=> b!7274231 m!7960868))

(declare-fun m!7960908 () Bool)

(assert (=> b!7274231 m!7960908))

(assert (=> start!710224 d!2264049))

(declare-fun bs!1911778 () Bool)

(declare-fun d!2264051 () Bool)

(assert (= bs!1911778 (and d!2264051 b!7274168)))

(declare-fun lambda!449503 () Int)

(assert (=> bs!1911778 (not (= lambda!449503 lambda!449488))))

(assert (=> bs!1911778 (= lambda!449503 lambda!449489)))

(assert (=> d!2264051 (= (inv!90081 ct2!346) (forall!17655 (exprs!8268 ct2!346) lambda!449503))))

(declare-fun bs!1911779 () Bool)

(assert (= bs!1911779 d!2264051))

(declare-fun m!7960910 () Bool)

(assert (=> bs!1911779 m!7960910))

(assert (=> start!710224 d!2264051))

(declare-fun bs!1911780 () Bool)

(declare-fun d!2264053 () Bool)

(assert (= bs!1911780 (and d!2264053 b!7274168)))

(declare-fun lambda!449504 () Int)

(assert (=> bs!1911780 (not (= lambda!449504 lambda!449488))))

(assert (=> bs!1911780 (= lambda!449504 lambda!449489)))

(declare-fun bs!1911781 () Bool)

(assert (= bs!1911781 (and d!2264053 d!2264051)))

(assert (=> bs!1911781 (= lambda!449504 lambda!449503)))

(assert (=> d!2264053 (= (inv!90081 ct1!250) (forall!17655 (exprs!8268 ct1!250) lambda!449504))))

(declare-fun bs!1911782 () Bool)

(assert (= bs!1911782 d!2264053))

(declare-fun m!7960912 () Bool)

(assert (=> bs!1911782 m!7960912))

(assert (=> start!710224 d!2264053))

(declare-fun bs!1911783 () Bool)

(declare-fun d!2264055 () Bool)

(assert (= bs!1911783 (and d!2264055 b!7274168)))

(declare-fun lambda!449507 () Int)

(assert (=> bs!1911783 (= lambda!449507 lambda!449488)))

(assert (=> bs!1911783 (not (= lambda!449507 lambda!449489))))

(declare-fun bs!1911784 () Bool)

(assert (= bs!1911784 (and d!2264055 d!2264051)))

(assert (=> bs!1911784 (not (= lambda!449507 lambda!449503))))

(declare-fun bs!1911785 () Bool)

(assert (= bs!1911785 (and d!2264055 d!2264053)))

(assert (=> bs!1911785 (not (= lambda!449507 lambda!449504))))

(assert (=> d!2264055 (= (nullableContext!318 ct2!346) (forall!17655 (exprs!8268 ct2!346) lambda!449507))))

(declare-fun bs!1911786 () Bool)

(assert (= bs!1911786 d!2264055))

(declare-fun m!7960926 () Bool)

(assert (=> bs!1911786 m!7960926))

(assert (=> b!7274171 d!2264055))

(declare-fun d!2264059 () Bool)

(declare-fun res!2948742 () Bool)

(declare-fun e!4362123 () Bool)

(assert (=> d!2264059 (=> res!2948742 e!4362123)))

(assert (=> d!2264059 (= res!2948742 (is-Nil!70848 (exprs!8268 ct1!250)))))

(assert (=> d!2264059 (= (forall!17655 (exprs!8268 ct1!250) lambda!449489) e!4362123)))

(declare-fun b!7274238 () Bool)

(declare-fun e!4362124 () Bool)

(assert (=> b!7274238 (= e!4362123 e!4362124)))

(declare-fun res!2948743 () Bool)

(assert (=> b!7274238 (=> (not res!2948743) (not e!4362124))))

(declare-fun dynLambda!28968 (Int Regex!18828) Bool)

(assert (=> b!7274238 (= res!2948743 (dynLambda!28968 lambda!449489 (h!77296 (exprs!8268 ct1!250))))))

(declare-fun b!7274239 () Bool)

(assert (=> b!7274239 (= e!4362124 (forall!17655 (t!385044 (exprs!8268 ct1!250)) lambda!449489))))

(assert (= (and d!2264059 (not res!2948742)) b!7274238))

(assert (= (and b!7274238 res!2948743) b!7274239))

(declare-fun b_lambda!280681 () Bool)

(assert (=> (not b_lambda!280681) (not b!7274238)))

(declare-fun m!7960928 () Bool)

(assert (=> b!7274238 m!7960928))

(declare-fun m!7960930 () Bool)

(assert (=> b!7274239 m!7960930))

(assert (=> b!7274166 d!2264059))

(declare-fun bs!1911787 () Bool)

(declare-fun d!2264061 () Bool)

(assert (= bs!1911787 (and d!2264061 d!2264053)))

(declare-fun lambda!449508 () Int)

(assert (=> bs!1911787 (not (= lambda!449508 lambda!449504))))

(declare-fun bs!1911788 () Bool)

(assert (= bs!1911788 (and d!2264061 b!7274168)))

(assert (=> bs!1911788 (= lambda!449508 lambda!449488)))

(declare-fun bs!1911789 () Bool)

(assert (= bs!1911789 (and d!2264061 d!2264055)))

(assert (=> bs!1911789 (= lambda!449508 lambda!449507)))

(declare-fun bs!1911790 () Bool)

(assert (= bs!1911790 (and d!2264061 d!2264051)))

(assert (=> bs!1911790 (not (= lambda!449508 lambda!449503))))

(assert (=> bs!1911788 (not (= lambda!449508 lambda!449489))))

(assert (=> d!2264061 (= (nullableContext!318 ct1!250) (forall!17655 (exprs!8268 ct1!250) lambda!449508))))

(declare-fun bs!1911791 () Bool)

(assert (= bs!1911791 d!2264061))

(declare-fun m!7960932 () Bool)

(assert (=> bs!1911791 m!7960932))

(assert (=> b!7274165 d!2264061))

(declare-fun d!2264063 () Bool)

(declare-fun res!2948744 () Bool)

(declare-fun e!4362125 () Bool)

(assert (=> d!2264063 (=> res!2948744 e!4362125)))

(assert (=> d!2264063 (= res!2948744 (is-Nil!70848 (exprs!8268 ct2!346)))))

(assert (=> d!2264063 (= (forall!17655 (exprs!8268 ct2!346) lambda!449489) e!4362125)))

(declare-fun b!7274240 () Bool)

(declare-fun e!4362126 () Bool)

(assert (=> b!7274240 (= e!4362125 e!4362126)))

(declare-fun res!2948745 () Bool)

(assert (=> b!7274240 (=> (not res!2948745) (not e!4362126))))

(assert (=> b!7274240 (= res!2948745 (dynLambda!28968 lambda!449489 (h!77296 (exprs!8268 ct2!346))))))

(declare-fun b!7274241 () Bool)

(assert (=> b!7274241 (= e!4362126 (forall!17655 (t!385044 (exprs!8268 ct2!346)) lambda!449489))))

(assert (= (and d!2264063 (not res!2948744)) b!7274240))

(assert (= (and b!7274240 res!2948745) b!7274241))

(declare-fun b_lambda!280683 () Bool)

(assert (=> (not b_lambda!280683) (not b!7274240)))

(declare-fun m!7960934 () Bool)

(assert (=> b!7274240 m!7960934))

(declare-fun m!7960936 () Bool)

(assert (=> b!7274241 m!7960936))

(assert (=> b!7274170 d!2264063))

(declare-fun b!7274246 () Bool)

(declare-fun e!4362129 () Bool)

(declare-fun tp!2041747 () Bool)

(declare-fun tp!2041748 () Bool)

(assert (=> b!7274246 (= e!4362129 (and tp!2041747 tp!2041748))))

(assert (=> b!7274169 (= tp!2041733 e!4362129)))

(assert (= (and b!7274169 (is-Cons!70848 (exprs!8268 ct2!346))) b!7274246))

(declare-fun b!7274247 () Bool)

(declare-fun e!4362130 () Bool)

(declare-fun tp!2041749 () Bool)

(declare-fun tp!2041750 () Bool)

(assert (=> b!7274247 (= e!4362130 (and tp!2041749 tp!2041750))))

(assert (=> b!7274167 (= tp!2041731 e!4362130)))

(assert (= (and b!7274167 (is-Cons!70848 (exprs!8268 ct1!250))) b!7274247))

(declare-fun b!7274252 () Bool)

(declare-fun e!4362133 () Bool)

(declare-fun tp!2041753 () Bool)

(assert (=> b!7274252 (= e!4362133 (and tp_is_empty!47121 tp!2041753))))

(assert (=> b!7274172 (= tp!2041732 e!4362133)))

(assert (= (and b!7274172 (is-Cons!70847 (t!385043 s!7854))) b!7274252))

(declare-fun b_lambda!280685 () Bool)

(assert (= b_lambda!280681 (or b!7274168 b_lambda!280685)))

(declare-fun bs!1911792 () Bool)

(declare-fun d!2264065 () Bool)

(assert (= bs!1911792 (and d!2264065 b!7274168)))

(declare-fun validRegex!9598 (Regex!18828) Bool)

(assert (=> bs!1911792 (= (dynLambda!28968 lambda!449489 (h!77296 (exprs!8268 ct1!250))) (validRegex!9598 (h!77296 (exprs!8268 ct1!250))))))

(declare-fun m!7960938 () Bool)

(assert (=> bs!1911792 m!7960938))

(assert (=> b!7274238 d!2264065))

(declare-fun b_lambda!280687 () Bool)

(assert (= b_lambda!280683 (or b!7274168 b_lambda!280687)))

(declare-fun bs!1911793 () Bool)

(declare-fun d!2264067 () Bool)

(assert (= bs!1911793 (and d!2264067 b!7274168)))

(assert (=> bs!1911793 (= (dynLambda!28968 lambda!449489 (h!77296 (exprs!8268 ct2!346))) (validRegex!9598 (h!77296 (exprs!8268 ct2!346))))))

(declare-fun m!7960940 () Bool)

(assert (=> bs!1911793 m!7960940))

(assert (=> b!7274240 d!2264067))

(push 1)

(assert (not d!2264037))

(assert (not b_lambda!280685))

(assert (not b!7274239))

(assert (not b!7274231))

(assert (not d!2264055))

(assert (not b!7274223))

(assert (not b!7274224))

(assert (not d!2264045))

(assert (not bs!1911792))

(assert (not bs!1911793))

(assert (not d!2264039))

(assert (not d!2264053))

(assert (not d!2264049))

(assert (not d!2264047))

(assert (not b!7274210))

(assert (not d!2264051))

(assert (not b!7274241))

(assert tp_is_empty!47121)

(assert (not b!7274211))

(assert (not b!7274246))

(assert (not d!2264061))

(assert (not b!7274230))

(assert (not b_lambda!280687))

(assert (not b!7274252))

(assert (not b!7274247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

