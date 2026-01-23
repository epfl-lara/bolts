; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704570 () Bool)

(assert start!704570)

(declare-fun b!7245838 () Bool)

(declare-fun e!4344431 () Bool)

(declare-fun tp!2036221 () Bool)

(assert (=> b!7245838 (= e!4344431 tp!2036221)))

(declare-fun b!7245839 () Bool)

(declare-fun e!4344429 () Bool)

(declare-datatypes ((C!37466 0))(
  ( (C!37467 (val!28681 Int)) )
))
(declare-datatypes ((Regex!18596 0))(
  ( (ElementMatch!18596 (c!1346092 C!37466)) (Concat!27441 (regOne!37704 Regex!18596) (regTwo!37704 Regex!18596)) (EmptyExpr!18596) (Star!18596 (reg!18925 Regex!18596)) (EmptyLang!18596) (Union!18596 (regOne!37705 Regex!18596) (regTwo!37705 Regex!18596)) )
))
(declare-datatypes ((List!70385 0))(
  ( (Nil!70261) (Cons!70261 (h!76709 Regex!18596) (t!384437 List!70385)) )
))
(declare-datatypes ((Context!15072 0))(
  ( (Context!15073 (exprs!8036 List!70385)) )
))
(declare-fun lt!2582689 () (Set Context!15072))

(declare-fun nullableZipper!2879 ((Set Context!15072)) Bool)

(assert (=> b!7245839 (= e!4344429 (not (nullableZipper!2879 lt!2582689)))))

(declare-fun b!7245840 () Bool)

(declare-fun e!4344434 () Bool)

(declare-fun tp_is_empty!46657 () Bool)

(declare-fun tp!2036222 () Bool)

(assert (=> b!7245840 (= e!4344434 (and tp_is_empty!46657 tp!2036222))))

(declare-fun b!7245841 () Bool)

(declare-fun e!4344432 () Bool)

(assert (=> b!7245841 (= e!4344432 e!4344429)))

(declare-fun res!2939134 () Bool)

(assert (=> b!7245841 (=> (not res!2939134) (not e!4344429))))

(declare-fun ct1!232 () Context!15072)

(declare-datatypes ((List!70386 0))(
  ( (Nil!70262) (Cons!70262 (h!76710 C!37466) (t!384438 List!70386)) )
))
(declare-fun s1!1971 () List!70386)

(assert (=> b!7245841 (= res!2939134 (and (not (is-Nil!70261 (exprs!8036 ct1!232))) (not (is-Cons!70262 s1!1971))))))

(declare-fun lt!2582690 () List!70385)

(declare-fun ct2!328 () Context!15072)

(declare-fun ++!16476 (List!70385 List!70385) List!70385)

(assert (=> b!7245841 (= lt!2582690 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)))))

(declare-datatypes ((Unit!163779 0))(
  ( (Unit!163780) )
))
(declare-fun lt!2582688 () Unit!163779)

(declare-fun lambda!443092 () Int)

(declare-fun lemmaConcatPreservesForall!1405 (List!70385 List!70385 Int) Unit!163779)

(assert (=> b!7245841 (= lt!2582688 (lemmaConcatPreservesForall!1405 (exprs!8036 ct1!232) (exprs!8036 ct2!328) lambda!443092))))

(declare-fun b!7245842 () Bool)

(declare-fun e!4344430 () Bool)

(declare-fun tp!2036223 () Bool)

(assert (=> b!7245842 (= e!4344430 tp!2036223)))

(declare-fun b!7245843 () Bool)

(declare-fun e!4344433 () Bool)

(declare-fun tp!2036224 () Bool)

(assert (=> b!7245843 (= e!4344433 (and tp_is_empty!46657 tp!2036224))))

(declare-fun res!2939133 () Bool)

(assert (=> start!704570 (=> (not res!2939133) (not e!4344432))))

(declare-fun matchZipper!3506 ((Set Context!15072) List!70386) Bool)

(assert (=> start!704570 (= res!2939133 (matchZipper!3506 lt!2582689 s1!1971))))

(assert (=> start!704570 (= lt!2582689 (set.insert ct1!232 (as set.empty (Set Context!15072))))))

(assert (=> start!704570 e!4344432))

(declare-fun inv!89501 (Context!15072) Bool)

(assert (=> start!704570 (and (inv!89501 ct1!232) e!4344431)))

(assert (=> start!704570 e!4344433))

(assert (=> start!704570 e!4344434))

(assert (=> start!704570 (and (inv!89501 ct2!328) e!4344430)))

(declare-fun b!7245844 () Bool)

(declare-fun res!2939132 () Bool)

(assert (=> b!7245844 (=> (not res!2939132) (not e!4344432))))

(declare-fun s2!1849 () List!70386)

(assert (=> b!7245844 (= res!2939132 (matchZipper!3506 (set.insert ct2!328 (as set.empty (Set Context!15072))) s2!1849))))

(assert (= (and start!704570 res!2939133) b!7245844))

(assert (= (and b!7245844 res!2939132) b!7245841))

(assert (= (and b!7245841 res!2939134) b!7245839))

(assert (= start!704570 b!7245838))

(assert (= (and start!704570 (is-Cons!70262 s1!1971)) b!7245843))

(assert (= (and start!704570 (is-Cons!70262 s2!1849)) b!7245840))

(assert (= start!704570 b!7245842))

(declare-fun m!7922494 () Bool)

(assert (=> b!7245839 m!7922494))

(declare-fun m!7922496 () Bool)

(assert (=> b!7245841 m!7922496))

(declare-fun m!7922498 () Bool)

(assert (=> b!7245841 m!7922498))

(declare-fun m!7922500 () Bool)

(assert (=> start!704570 m!7922500))

(declare-fun m!7922502 () Bool)

(assert (=> start!704570 m!7922502))

(declare-fun m!7922504 () Bool)

(assert (=> start!704570 m!7922504))

(declare-fun m!7922506 () Bool)

(assert (=> start!704570 m!7922506))

(declare-fun m!7922508 () Bool)

(assert (=> b!7245844 m!7922508))

(assert (=> b!7245844 m!7922508))

(declare-fun m!7922510 () Bool)

(assert (=> b!7245844 m!7922510))

(push 1)

(assert (not b!7245840))

(assert (not b!7245838))

(assert (not start!704570))

(assert tp_is_empty!46657)

(assert (not b!7245844))

(assert (not b!7245839))

(assert (not b!7245841))

(assert (not b!7245842))

(assert (not b!7245843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2251661 () Bool)

(declare-fun lambda!443098 () Int)

(declare-fun exists!4311 ((Set Context!15072) Int) Bool)

(assert (=> d!2251661 (= (nullableZipper!2879 lt!2582689) (exists!4311 lt!2582689 lambda!443098))))

(declare-fun bs!1905184 () Bool)

(assert (= bs!1905184 d!2251661))

(declare-fun m!7922530 () Bool)

(assert (=> bs!1905184 m!7922530))

(assert (=> b!7245839 d!2251661))

(declare-fun d!2251663 () Bool)

(declare-fun c!1346098 () Bool)

(declare-fun isEmpty!40476 (List!70386) Bool)

(assert (=> d!2251663 (= c!1346098 (isEmpty!40476 s1!1971))))

(declare-fun e!4344455 () Bool)

(assert (=> d!2251663 (= (matchZipper!3506 lt!2582689 s1!1971) e!4344455)))

(declare-fun b!7245870 () Bool)

(assert (=> b!7245870 (= e!4344455 (nullableZipper!2879 lt!2582689))))

(declare-fun b!7245871 () Bool)

(declare-fun derivationStepZipper!3384 ((Set Context!15072) C!37466) (Set Context!15072))

(declare-fun head!14867 (List!70386) C!37466)

(declare-fun tail!14269 (List!70386) List!70386)

(assert (=> b!7245871 (= e!4344455 (matchZipper!3506 (derivationStepZipper!3384 lt!2582689 (head!14867 s1!1971)) (tail!14269 s1!1971)))))

(assert (= (and d!2251663 c!1346098) b!7245870))

(assert (= (and d!2251663 (not c!1346098)) b!7245871))

(declare-fun m!7922532 () Bool)

(assert (=> d!2251663 m!7922532))

(assert (=> b!7245870 m!7922494))

(declare-fun m!7922534 () Bool)

(assert (=> b!7245871 m!7922534))

(assert (=> b!7245871 m!7922534))

(declare-fun m!7922536 () Bool)

(assert (=> b!7245871 m!7922536))

(declare-fun m!7922538 () Bool)

(assert (=> b!7245871 m!7922538))

(assert (=> b!7245871 m!7922536))

(assert (=> b!7245871 m!7922538))

(declare-fun m!7922540 () Bool)

(assert (=> b!7245871 m!7922540))

(assert (=> start!704570 d!2251663))

(declare-fun bs!1905185 () Bool)

(declare-fun d!2251665 () Bool)

(assert (= bs!1905185 (and d!2251665 b!7245841)))

(declare-fun lambda!443101 () Int)

(assert (=> bs!1905185 (= lambda!443101 lambda!443092)))

(declare-fun forall!17439 (List!70385 Int) Bool)

(assert (=> d!2251665 (= (inv!89501 ct1!232) (forall!17439 (exprs!8036 ct1!232) lambda!443101))))

(declare-fun bs!1905186 () Bool)

(assert (= bs!1905186 d!2251665))

(declare-fun m!7922542 () Bool)

(assert (=> bs!1905186 m!7922542))

(assert (=> start!704570 d!2251665))

(declare-fun bs!1905187 () Bool)

(declare-fun d!2251667 () Bool)

(assert (= bs!1905187 (and d!2251667 b!7245841)))

(declare-fun lambda!443102 () Int)

(assert (=> bs!1905187 (= lambda!443102 lambda!443092)))

(declare-fun bs!1905188 () Bool)

(assert (= bs!1905188 (and d!2251667 d!2251665)))

(assert (=> bs!1905188 (= lambda!443102 lambda!443101)))

(assert (=> d!2251667 (= (inv!89501 ct2!328) (forall!17439 (exprs!8036 ct2!328) lambda!443102))))

(declare-fun bs!1905189 () Bool)

(assert (= bs!1905189 d!2251667))

(declare-fun m!7922544 () Bool)

(assert (=> bs!1905189 m!7922544))

(assert (=> start!704570 d!2251667))

(declare-fun d!2251669 () Bool)

(declare-fun c!1346099 () Bool)

(assert (=> d!2251669 (= c!1346099 (isEmpty!40476 s2!1849))))

(declare-fun e!4344456 () Bool)

(assert (=> d!2251669 (= (matchZipper!3506 (set.insert ct2!328 (as set.empty (Set Context!15072))) s2!1849) e!4344456)))

(declare-fun b!7245872 () Bool)

(assert (=> b!7245872 (= e!4344456 (nullableZipper!2879 (set.insert ct2!328 (as set.empty (Set Context!15072)))))))

(declare-fun b!7245873 () Bool)

(assert (=> b!7245873 (= e!4344456 (matchZipper!3506 (derivationStepZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!15072))) (head!14867 s2!1849)) (tail!14269 s2!1849)))))

(assert (= (and d!2251669 c!1346099) b!7245872))

(assert (= (and d!2251669 (not c!1346099)) b!7245873))

(declare-fun m!7922546 () Bool)

(assert (=> d!2251669 m!7922546))

(assert (=> b!7245872 m!7922508))

(declare-fun m!7922548 () Bool)

(assert (=> b!7245872 m!7922548))

(declare-fun m!7922550 () Bool)

(assert (=> b!7245873 m!7922550))

(assert (=> b!7245873 m!7922508))

(assert (=> b!7245873 m!7922550))

(declare-fun m!7922552 () Bool)

(assert (=> b!7245873 m!7922552))

(declare-fun m!7922554 () Bool)

(assert (=> b!7245873 m!7922554))

(assert (=> b!7245873 m!7922552))

(assert (=> b!7245873 m!7922554))

(declare-fun m!7922556 () Bool)

(assert (=> b!7245873 m!7922556))

(assert (=> b!7245844 d!2251669))

(declare-fun d!2251673 () Bool)

(declare-fun e!4344461 () Bool)

(assert (=> d!2251673 e!4344461))

(declare-fun res!2939149 () Bool)

(assert (=> d!2251673 (=> (not res!2939149) (not e!4344461))))

(declare-fun lt!2582702 () List!70385)

(declare-fun content!14543 (List!70385) (Set Regex!18596))

(assert (=> d!2251673 (= res!2939149 (= (content!14543 lt!2582702) (set.union (content!14543 (exprs!8036 ct1!232)) (content!14543 (exprs!8036 ct2!328)))))))

(declare-fun e!4344462 () List!70385)

(assert (=> d!2251673 (= lt!2582702 e!4344462)))

(declare-fun c!1346103 () Bool)

(assert (=> d!2251673 (= c!1346103 (is-Nil!70261 (exprs!8036 ct1!232)))))

(assert (=> d!2251673 (= (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)) lt!2582702)))

(declare-fun b!7245886 () Bool)

(assert (=> b!7245886 (= e!4344462 (Cons!70261 (h!76709 (exprs!8036 ct1!232)) (++!16476 (t!384437 (exprs!8036 ct1!232)) (exprs!8036 ct2!328))))))

(declare-fun b!7245885 () Bool)

(assert (=> b!7245885 (= e!4344462 (exprs!8036 ct2!328))))

(declare-fun b!7245889 () Bool)

(assert (=> b!7245889 (= e!4344461 (or (not (= (exprs!8036 ct2!328) Nil!70261)) (= lt!2582702 (exprs!8036 ct1!232))))))

(declare-fun b!7245888 () Bool)

(declare-fun res!2939148 () Bool)

(assert (=> b!7245888 (=> (not res!2939148) (not e!4344461))))

(declare-fun size!41666 (List!70385) Int)

(assert (=> b!7245888 (= res!2939148 (= (size!41666 lt!2582702) (+ (size!41666 (exprs!8036 ct1!232)) (size!41666 (exprs!8036 ct2!328)))))))

(assert (= (and d!2251673 c!1346103) b!7245885))

(assert (= (and d!2251673 (not c!1346103)) b!7245886))

(assert (= (and d!2251673 res!2939149) b!7245888))

(assert (= (and b!7245888 res!2939148) b!7245889))

(declare-fun m!7922558 () Bool)

(assert (=> d!2251673 m!7922558))

(declare-fun m!7922560 () Bool)

(assert (=> d!2251673 m!7922560))

(declare-fun m!7922562 () Bool)

(assert (=> d!2251673 m!7922562))

(declare-fun m!7922564 () Bool)

(assert (=> b!7245886 m!7922564))

(declare-fun m!7922566 () Bool)

(assert (=> b!7245888 m!7922566))

(declare-fun m!7922568 () Bool)

(assert (=> b!7245888 m!7922568))

(declare-fun m!7922570 () Bool)

(assert (=> b!7245888 m!7922570))

(assert (=> b!7245841 d!2251673))

(declare-fun d!2251675 () Bool)

(assert (=> d!2251675 (forall!17439 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)) lambda!443092)))

(declare-fun lt!2582705 () Unit!163779)

(declare-fun choose!55901 (List!70385 List!70385 Int) Unit!163779)

(assert (=> d!2251675 (= lt!2582705 (choose!55901 (exprs!8036 ct1!232) (exprs!8036 ct2!328) lambda!443092))))

(assert (=> d!2251675 (forall!17439 (exprs!8036 ct1!232) lambda!443092)))

(assert (=> d!2251675 (= (lemmaConcatPreservesForall!1405 (exprs!8036 ct1!232) (exprs!8036 ct2!328) lambda!443092) lt!2582705)))

(declare-fun bs!1905190 () Bool)

(assert (= bs!1905190 d!2251675))

(assert (=> bs!1905190 m!7922496))

(assert (=> bs!1905190 m!7922496))

(declare-fun m!7922584 () Bool)

(assert (=> bs!1905190 m!7922584))

(declare-fun m!7922586 () Bool)

(assert (=> bs!1905190 m!7922586))

(declare-fun m!7922588 () Bool)

(assert (=> bs!1905190 m!7922588))

(assert (=> b!7245841 d!2251675))

(declare-fun b!7245898 () Bool)

(declare-fun e!4344469 () Bool)

(declare-fun tp!2036239 () Bool)

(assert (=> b!7245898 (= e!4344469 (and tp_is_empty!46657 tp!2036239))))

(assert (=> b!7245840 (= tp!2036222 e!4344469)))

(assert (= (and b!7245840 (is-Cons!70262 (t!384438 s2!1849))) b!7245898))

(declare-fun b!7245903 () Bool)

(declare-fun e!4344472 () Bool)

(declare-fun tp!2036244 () Bool)

(declare-fun tp!2036245 () Bool)

(assert (=> b!7245903 (= e!4344472 (and tp!2036244 tp!2036245))))

(assert (=> b!7245838 (= tp!2036221 e!4344472)))

(assert (= (and b!7245838 (is-Cons!70261 (exprs!8036 ct1!232))) b!7245903))

(declare-fun b!7245904 () Bool)

(declare-fun e!4344473 () Bool)

(declare-fun tp!2036246 () Bool)

(assert (=> b!7245904 (= e!4344473 (and tp_is_empty!46657 tp!2036246))))

(assert (=> b!7245843 (= tp!2036224 e!4344473)))

(assert (= (and b!7245843 (is-Cons!70262 (t!384438 s1!1971))) b!7245904))

(declare-fun b!7245905 () Bool)

(declare-fun e!4344474 () Bool)

(declare-fun tp!2036247 () Bool)

(declare-fun tp!2036248 () Bool)

(assert (=> b!7245905 (= e!4344474 (and tp!2036247 tp!2036248))))

(assert (=> b!7245842 (= tp!2036223 e!4344474)))

(assert (= (and b!7245842 (is-Cons!70261 (exprs!8036 ct2!328))) b!7245905))

(push 1)

(assert (not d!2251665))

(assert (not d!2251663))

(assert (not d!2251675))

(assert (not b!7245898))

(assert (not b!7245888))

(assert (not d!2251667))

(assert (not b!7245904))

(assert (not d!2251661))

(assert (not b!7245903))

(assert (not b!7245886))

(assert (not b!7245870))

(assert tp_is_empty!46657)

(assert (not b!7245872))

(assert (not d!2251673))

(assert (not b!7245905))

(assert (not d!2251669))

(assert (not b!7245873))

(assert (not b!7245871))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2251689 () Bool)

(assert (=> d!2251689 (= (isEmpty!40476 s1!1971) (is-Nil!70262 s1!1971))))

(assert (=> d!2251663 d!2251689))

(declare-fun d!2251691 () Bool)

(declare-fun res!2939160 () Bool)

(declare-fun e!4344493 () Bool)

(assert (=> d!2251691 (=> res!2939160 e!4344493)))

(assert (=> d!2251691 (= res!2939160 (is-Nil!70261 (exprs!8036 ct1!232)))))

(assert (=> d!2251691 (= (forall!17439 (exprs!8036 ct1!232) lambda!443101) e!4344493)))

(declare-fun b!7245934 () Bool)

(declare-fun e!4344494 () Bool)

(assert (=> b!7245934 (= e!4344493 e!4344494)))

(declare-fun res!2939161 () Bool)

(assert (=> b!7245934 (=> (not res!2939161) (not e!4344494))))

(declare-fun dynLambda!28689 (Int Regex!18596) Bool)

(assert (=> b!7245934 (= res!2939161 (dynLambda!28689 lambda!443101 (h!76709 (exprs!8036 ct1!232))))))

(declare-fun b!7245935 () Bool)

(assert (=> b!7245935 (= e!4344494 (forall!17439 (t!384437 (exprs!8036 ct1!232)) lambda!443101))))

(assert (= (and d!2251691 (not res!2939160)) b!7245934))

(assert (= (and b!7245934 res!2939161) b!7245935))

(declare-fun b_lambda!278093 () Bool)

(assert (=> (not b_lambda!278093) (not b!7245934)))

(declare-fun m!7922626 () Bool)

(assert (=> b!7245934 m!7922626))

(declare-fun m!7922628 () Bool)

(assert (=> b!7245935 m!7922628))

(assert (=> d!2251665 d!2251691))

(declare-fun d!2251693 () Bool)

(declare-fun c!1346112 () Bool)

(assert (=> d!2251693 (= c!1346112 (isEmpty!40476 (tail!14269 s1!1971)))))

(declare-fun e!4344495 () Bool)

(assert (=> d!2251693 (= (matchZipper!3506 (derivationStepZipper!3384 lt!2582689 (head!14867 s1!1971)) (tail!14269 s1!1971)) e!4344495)))

(declare-fun b!7245936 () Bool)

(assert (=> b!7245936 (= e!4344495 (nullableZipper!2879 (derivationStepZipper!3384 lt!2582689 (head!14867 s1!1971))))))

(declare-fun b!7245937 () Bool)

(assert (=> b!7245937 (= e!4344495 (matchZipper!3506 (derivationStepZipper!3384 (derivationStepZipper!3384 lt!2582689 (head!14867 s1!1971)) (head!14867 (tail!14269 s1!1971))) (tail!14269 (tail!14269 s1!1971))))))

(assert (= (and d!2251693 c!1346112) b!7245936))

(assert (= (and d!2251693 (not c!1346112)) b!7245937))

(assert (=> d!2251693 m!7922538))

(declare-fun m!7922630 () Bool)

(assert (=> d!2251693 m!7922630))

(assert (=> b!7245936 m!7922536))

(declare-fun m!7922632 () Bool)

(assert (=> b!7245936 m!7922632))

(assert (=> b!7245937 m!7922538))

(declare-fun m!7922634 () Bool)

(assert (=> b!7245937 m!7922634))

(assert (=> b!7245937 m!7922536))

(assert (=> b!7245937 m!7922634))

(declare-fun m!7922636 () Bool)

(assert (=> b!7245937 m!7922636))

(assert (=> b!7245937 m!7922538))

(declare-fun m!7922638 () Bool)

(assert (=> b!7245937 m!7922638))

(assert (=> b!7245937 m!7922636))

(assert (=> b!7245937 m!7922638))

(declare-fun m!7922640 () Bool)

(assert (=> b!7245937 m!7922640))

(assert (=> b!7245871 d!2251693))

(declare-fun d!2251695 () Bool)

(assert (=> d!2251695 true))

(declare-fun lambda!443112 () Int)

(declare-fun flatMap!2784 ((Set Context!15072) Int) (Set Context!15072))

(assert (=> d!2251695 (= (derivationStepZipper!3384 lt!2582689 (head!14867 s1!1971)) (flatMap!2784 lt!2582689 lambda!443112))))

(declare-fun bs!1905198 () Bool)

(assert (= bs!1905198 d!2251695))

(declare-fun m!7922642 () Bool)

(assert (=> bs!1905198 m!7922642))

(assert (=> b!7245871 d!2251695))

(declare-fun d!2251697 () Bool)

(assert (=> d!2251697 (= (head!14867 s1!1971) (h!76710 s1!1971))))

(assert (=> b!7245871 d!2251697))

(declare-fun d!2251699 () Bool)

(assert (=> d!2251699 (= (tail!14269 s1!1971) (t!384438 s1!1971))))

(assert (=> b!7245871 d!2251699))

(declare-fun d!2251701 () Bool)

(declare-fun c!1346117 () Bool)

(assert (=> d!2251701 (= c!1346117 (is-Nil!70261 lt!2582702))))

(declare-fun e!4344498 () (Set Regex!18596))

(assert (=> d!2251701 (= (content!14543 lt!2582702) e!4344498)))

(declare-fun b!7245944 () Bool)

(assert (=> b!7245944 (= e!4344498 (as set.empty (Set Regex!18596)))))

(declare-fun b!7245945 () Bool)

(assert (=> b!7245945 (= e!4344498 (set.union (set.insert (h!76709 lt!2582702) (as set.empty (Set Regex!18596))) (content!14543 (t!384437 lt!2582702))))))

(assert (= (and d!2251701 c!1346117) b!7245944))

(assert (= (and d!2251701 (not c!1346117)) b!7245945))

(declare-fun m!7922644 () Bool)

(assert (=> b!7245945 m!7922644))

(declare-fun m!7922646 () Bool)

(assert (=> b!7245945 m!7922646))

(assert (=> d!2251673 d!2251701))

(declare-fun d!2251703 () Bool)

(declare-fun c!1346118 () Bool)

(assert (=> d!2251703 (= c!1346118 (is-Nil!70261 (exprs!8036 ct1!232)))))

(declare-fun e!4344499 () (Set Regex!18596))

(assert (=> d!2251703 (= (content!14543 (exprs!8036 ct1!232)) e!4344499)))

(declare-fun b!7245946 () Bool)

(assert (=> b!7245946 (= e!4344499 (as set.empty (Set Regex!18596)))))

(declare-fun b!7245947 () Bool)

(assert (=> b!7245947 (= e!4344499 (set.union (set.insert (h!76709 (exprs!8036 ct1!232)) (as set.empty (Set Regex!18596))) (content!14543 (t!384437 (exprs!8036 ct1!232)))))))

(assert (= (and d!2251703 c!1346118) b!7245946))

(assert (= (and d!2251703 (not c!1346118)) b!7245947))

(declare-fun m!7922648 () Bool)

(assert (=> b!7245947 m!7922648))

(declare-fun m!7922650 () Bool)

(assert (=> b!7245947 m!7922650))

(assert (=> d!2251673 d!2251703))

(declare-fun d!2251705 () Bool)

(declare-fun c!1346119 () Bool)

(assert (=> d!2251705 (= c!1346119 (is-Nil!70261 (exprs!8036 ct2!328)))))

(declare-fun e!4344500 () (Set Regex!18596))

(assert (=> d!2251705 (= (content!14543 (exprs!8036 ct2!328)) e!4344500)))

(declare-fun b!7245948 () Bool)

(assert (=> b!7245948 (= e!4344500 (as set.empty (Set Regex!18596)))))

(declare-fun b!7245949 () Bool)

(assert (=> b!7245949 (= e!4344500 (set.union (set.insert (h!76709 (exprs!8036 ct2!328)) (as set.empty (Set Regex!18596))) (content!14543 (t!384437 (exprs!8036 ct2!328)))))))

(assert (= (and d!2251705 c!1346119) b!7245948))

(assert (= (and d!2251705 (not c!1346119)) b!7245949))

(declare-fun m!7922652 () Bool)

(assert (=> b!7245949 m!7922652))

(declare-fun m!7922654 () Bool)

(assert (=> b!7245949 m!7922654))

(assert (=> d!2251673 d!2251705))

(declare-fun d!2251707 () Bool)

(declare-fun res!2939162 () Bool)

(declare-fun e!4344501 () Bool)

(assert (=> d!2251707 (=> res!2939162 e!4344501)))

(assert (=> d!2251707 (= res!2939162 (is-Nil!70261 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328))))))

(assert (=> d!2251707 (= (forall!17439 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)) lambda!443092) e!4344501)))

(declare-fun b!7245950 () Bool)

(declare-fun e!4344502 () Bool)

(assert (=> b!7245950 (= e!4344501 e!4344502)))

(declare-fun res!2939163 () Bool)

(assert (=> b!7245950 (=> (not res!2939163) (not e!4344502))))

(assert (=> b!7245950 (= res!2939163 (dynLambda!28689 lambda!443092 (h!76709 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)))))))

(declare-fun b!7245951 () Bool)

(assert (=> b!7245951 (= e!4344502 (forall!17439 (t!384437 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328))) lambda!443092))))

(assert (= (and d!2251707 (not res!2939162)) b!7245950))

(assert (= (and b!7245950 res!2939163) b!7245951))

(declare-fun b_lambda!278095 () Bool)

(assert (=> (not b_lambda!278095) (not b!7245950)))

(declare-fun m!7922656 () Bool)

(assert (=> b!7245950 m!7922656))

(declare-fun m!7922658 () Bool)

(assert (=> b!7245951 m!7922658))

(assert (=> d!2251675 d!2251707))

(assert (=> d!2251675 d!2251673))

(declare-fun d!2251709 () Bool)

(assert (=> d!2251709 (forall!17439 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)) lambda!443092)))

(assert (=> d!2251709 true))

(declare-fun _$78!742 () Unit!163779)

(assert (=> d!2251709 (= (choose!55901 (exprs!8036 ct1!232) (exprs!8036 ct2!328) lambda!443092) _$78!742)))

(declare-fun bs!1905199 () Bool)

(assert (= bs!1905199 d!2251709))

(assert (=> bs!1905199 m!7922496))

(assert (=> bs!1905199 m!7922496))

(assert (=> bs!1905199 m!7922584))

(assert (=> d!2251675 d!2251709))

(declare-fun d!2251711 () Bool)

(declare-fun res!2939164 () Bool)

(declare-fun e!4344503 () Bool)

(assert (=> d!2251711 (=> res!2939164 e!4344503)))

(assert (=> d!2251711 (= res!2939164 (is-Nil!70261 (exprs!8036 ct1!232)))))

(assert (=> d!2251711 (= (forall!17439 (exprs!8036 ct1!232) lambda!443092) e!4344503)))

(declare-fun b!7245952 () Bool)

(declare-fun e!4344504 () Bool)

(assert (=> b!7245952 (= e!4344503 e!4344504)))

(declare-fun res!2939165 () Bool)

(assert (=> b!7245952 (=> (not res!2939165) (not e!4344504))))

(assert (=> b!7245952 (= res!2939165 (dynLambda!28689 lambda!443092 (h!76709 (exprs!8036 ct1!232))))))

(declare-fun b!7245953 () Bool)

(assert (=> b!7245953 (= e!4344504 (forall!17439 (t!384437 (exprs!8036 ct1!232)) lambda!443092))))

(assert (= (and d!2251711 (not res!2939164)) b!7245952))

(assert (= (and b!7245952 res!2939165) b!7245953))

(declare-fun b_lambda!278097 () Bool)

(assert (=> (not b_lambda!278097) (not b!7245952)))

(declare-fun m!7922660 () Bool)

(assert (=> b!7245952 m!7922660))

(declare-fun m!7922662 () Bool)

(assert (=> b!7245953 m!7922662))

(assert (=> d!2251675 d!2251711))

(declare-fun d!2251713 () Bool)

(declare-fun e!4344505 () Bool)

(assert (=> d!2251713 e!4344505))

(declare-fun res!2939167 () Bool)

(assert (=> d!2251713 (=> (not res!2939167) (not e!4344505))))

(declare-fun lt!2582712 () List!70385)

(assert (=> d!2251713 (= res!2939167 (= (content!14543 lt!2582712) (set.union (content!14543 (t!384437 (exprs!8036 ct1!232))) (content!14543 (exprs!8036 ct2!328)))))))

(declare-fun e!4344506 () List!70385)

(assert (=> d!2251713 (= lt!2582712 e!4344506)))

(declare-fun c!1346120 () Bool)

(assert (=> d!2251713 (= c!1346120 (is-Nil!70261 (t!384437 (exprs!8036 ct1!232))))))

(assert (=> d!2251713 (= (++!16476 (t!384437 (exprs!8036 ct1!232)) (exprs!8036 ct2!328)) lt!2582712)))

(declare-fun b!7245955 () Bool)

(assert (=> b!7245955 (= e!4344506 (Cons!70261 (h!76709 (t!384437 (exprs!8036 ct1!232))) (++!16476 (t!384437 (t!384437 (exprs!8036 ct1!232))) (exprs!8036 ct2!328))))))

(declare-fun b!7245954 () Bool)

(assert (=> b!7245954 (= e!4344506 (exprs!8036 ct2!328))))

(declare-fun b!7245957 () Bool)

(assert (=> b!7245957 (= e!4344505 (or (not (= (exprs!8036 ct2!328) Nil!70261)) (= lt!2582712 (t!384437 (exprs!8036 ct1!232)))))))

(declare-fun b!7245956 () Bool)

(declare-fun res!2939166 () Bool)

(assert (=> b!7245956 (=> (not res!2939166) (not e!4344505))))

(assert (=> b!7245956 (= res!2939166 (= (size!41666 lt!2582712) (+ (size!41666 (t!384437 (exprs!8036 ct1!232))) (size!41666 (exprs!8036 ct2!328)))))))

(assert (= (and d!2251713 c!1346120) b!7245954))

(assert (= (and d!2251713 (not c!1346120)) b!7245955))

(assert (= (and d!2251713 res!2939167) b!7245956))

(assert (= (and b!7245956 res!2939166) b!7245957))

(declare-fun m!7922664 () Bool)

(assert (=> d!2251713 m!7922664))

(assert (=> d!2251713 m!7922650))

(assert (=> d!2251713 m!7922562))

(declare-fun m!7922666 () Bool)

(assert (=> b!7245955 m!7922666))

(declare-fun m!7922668 () Bool)

(assert (=> b!7245956 m!7922668))

(declare-fun m!7922670 () Bool)

(assert (=> b!7245956 m!7922670))

(assert (=> b!7245956 m!7922570))

(assert (=> b!7245886 d!2251713))

(declare-fun d!2251715 () Bool)

(declare-fun lt!2582715 () Int)

(assert (=> d!2251715 (>= lt!2582715 0)))

(declare-fun e!4344509 () Int)

(assert (=> d!2251715 (= lt!2582715 e!4344509)))

(declare-fun c!1346123 () Bool)

(assert (=> d!2251715 (= c!1346123 (is-Nil!70261 lt!2582702))))

(assert (=> d!2251715 (= (size!41666 lt!2582702) lt!2582715)))

(declare-fun b!7245962 () Bool)

(assert (=> b!7245962 (= e!4344509 0)))

(declare-fun b!7245963 () Bool)

(assert (=> b!7245963 (= e!4344509 (+ 1 (size!41666 (t!384437 lt!2582702))))))

(assert (= (and d!2251715 c!1346123) b!7245962))

(assert (= (and d!2251715 (not c!1346123)) b!7245963))

(declare-fun m!7922672 () Bool)

(assert (=> b!7245963 m!7922672))

(assert (=> b!7245888 d!2251715))

(declare-fun d!2251717 () Bool)

(declare-fun lt!2582716 () Int)

(assert (=> d!2251717 (>= lt!2582716 0)))

(declare-fun e!4344510 () Int)

(assert (=> d!2251717 (= lt!2582716 e!4344510)))

(declare-fun c!1346124 () Bool)

(assert (=> d!2251717 (= c!1346124 (is-Nil!70261 (exprs!8036 ct1!232)))))

(assert (=> d!2251717 (= (size!41666 (exprs!8036 ct1!232)) lt!2582716)))

(declare-fun b!7245964 () Bool)

(assert (=> b!7245964 (= e!4344510 0)))

(declare-fun b!7245965 () Bool)

(assert (=> b!7245965 (= e!4344510 (+ 1 (size!41666 (t!384437 (exprs!8036 ct1!232)))))))

(assert (= (and d!2251717 c!1346124) b!7245964))

(assert (= (and d!2251717 (not c!1346124)) b!7245965))

(assert (=> b!7245965 m!7922670))

(assert (=> b!7245888 d!2251717))

(declare-fun d!2251719 () Bool)

(declare-fun lt!2582717 () Int)

(assert (=> d!2251719 (>= lt!2582717 0)))

(declare-fun e!4344511 () Int)

(assert (=> d!2251719 (= lt!2582717 e!4344511)))

(declare-fun c!1346125 () Bool)

(assert (=> d!2251719 (= c!1346125 (is-Nil!70261 (exprs!8036 ct2!328)))))

(assert (=> d!2251719 (= (size!41666 (exprs!8036 ct2!328)) lt!2582717)))

(declare-fun b!7245966 () Bool)

(assert (=> b!7245966 (= e!4344511 0)))

(declare-fun b!7245967 () Bool)

(assert (=> b!7245967 (= e!4344511 (+ 1 (size!41666 (t!384437 (exprs!8036 ct2!328)))))))

(assert (= (and d!2251719 c!1346125) b!7245966))

(assert (= (and d!2251719 (not c!1346125)) b!7245967))

(declare-fun m!7922674 () Bool)

(assert (=> b!7245967 m!7922674))

(assert (=> b!7245888 d!2251719))

(declare-fun d!2251721 () Bool)

(assert (=> d!2251721 (= (isEmpty!40476 s2!1849) (is-Nil!70262 s2!1849))))

(assert (=> d!2251669 d!2251721))

(declare-fun d!2251723 () Bool)

(declare-fun lt!2582720 () Bool)

(declare-datatypes ((List!70389 0))(
  ( (Nil!70265) (Cons!70265 (h!76713 Context!15072) (t!384441 List!70389)) )
))
(declare-fun exists!4313 (List!70389 Int) Bool)

(declare-fun toList!11442 ((Set Context!15072)) List!70389)

(assert (=> d!2251723 (= lt!2582720 (exists!4313 (toList!11442 lt!2582689) lambda!443098))))

(declare-fun choose!55903 ((Set Context!15072) Int) Bool)

(assert (=> d!2251723 (= lt!2582720 (choose!55903 lt!2582689 lambda!443098))))

(assert (=> d!2251723 (= (exists!4311 lt!2582689 lambda!443098) lt!2582720)))

(declare-fun bs!1905200 () Bool)

(assert (= bs!1905200 d!2251723))

(declare-fun m!7922676 () Bool)

(assert (=> bs!1905200 m!7922676))

(assert (=> bs!1905200 m!7922676))

(declare-fun m!7922678 () Bool)

(assert (=> bs!1905200 m!7922678))

(declare-fun m!7922680 () Bool)

(assert (=> bs!1905200 m!7922680))

(assert (=> d!2251661 d!2251723))

(declare-fun bs!1905201 () Bool)

(declare-fun d!2251725 () Bool)

(assert (= bs!1905201 (and d!2251725 d!2251661)))

(declare-fun lambda!443113 () Int)

(assert (=> bs!1905201 (= lambda!443113 lambda!443098)))

(assert (=> d!2251725 (= (nullableZipper!2879 (set.insert ct2!328 (as set.empty (Set Context!15072)))) (exists!4311 (set.insert ct2!328 (as set.empty (Set Context!15072))) lambda!443113))))

(declare-fun bs!1905202 () Bool)

(assert (= bs!1905202 d!2251725))

(assert (=> bs!1905202 m!7922508))

(declare-fun m!7922682 () Bool)

(assert (=> bs!1905202 m!7922682))

(assert (=> b!7245872 d!2251725))

(declare-fun d!2251727 () Bool)

(declare-fun c!1346126 () Bool)

(assert (=> d!2251727 (= c!1346126 (isEmpty!40476 (tail!14269 s2!1849)))))

(declare-fun e!4344512 () Bool)

(assert (=> d!2251727 (= (matchZipper!3506 (derivationStepZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!15072))) (head!14867 s2!1849)) (tail!14269 s2!1849)) e!4344512)))

(declare-fun b!7245968 () Bool)

(assert (=> b!7245968 (= e!4344512 (nullableZipper!2879 (derivationStepZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!15072))) (head!14867 s2!1849))))))

(declare-fun b!7245969 () Bool)

(assert (=> b!7245969 (= e!4344512 (matchZipper!3506 (derivationStepZipper!3384 (derivationStepZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!15072))) (head!14867 s2!1849)) (head!14867 (tail!14269 s2!1849))) (tail!14269 (tail!14269 s2!1849))))))

(assert (= (and d!2251727 c!1346126) b!7245968))

(assert (= (and d!2251727 (not c!1346126)) b!7245969))

(assert (=> d!2251727 m!7922554))

(declare-fun m!7922684 () Bool)

(assert (=> d!2251727 m!7922684))

(assert (=> b!7245968 m!7922552))

(declare-fun m!7922686 () Bool)

(assert (=> b!7245968 m!7922686))

(assert (=> b!7245969 m!7922554))

(declare-fun m!7922688 () Bool)

(assert (=> b!7245969 m!7922688))

(assert (=> b!7245969 m!7922552))

(assert (=> b!7245969 m!7922688))

(declare-fun m!7922690 () Bool)

(assert (=> b!7245969 m!7922690))

(assert (=> b!7245969 m!7922554))

(declare-fun m!7922692 () Bool)

(assert (=> b!7245969 m!7922692))

(assert (=> b!7245969 m!7922690))

(assert (=> b!7245969 m!7922692))

(declare-fun m!7922694 () Bool)

(assert (=> b!7245969 m!7922694))

(assert (=> b!7245873 d!2251727))

(declare-fun bs!1905203 () Bool)

(declare-fun d!2251729 () Bool)

(assert (= bs!1905203 (and d!2251729 d!2251695)))

(declare-fun lambda!443114 () Int)

(assert (=> bs!1905203 (= (= (head!14867 s2!1849) (head!14867 s1!1971)) (= lambda!443114 lambda!443112))))

(assert (=> d!2251729 true))

(assert (=> d!2251729 (= (derivationStepZipper!3384 (set.insert ct2!328 (as set.empty (Set Context!15072))) (head!14867 s2!1849)) (flatMap!2784 (set.insert ct2!328 (as set.empty (Set Context!15072))) lambda!443114))))

(declare-fun bs!1905204 () Bool)

(assert (= bs!1905204 d!2251729))

(assert (=> bs!1905204 m!7922508))

(declare-fun m!7922696 () Bool)

(assert (=> bs!1905204 m!7922696))

(assert (=> b!7245873 d!2251729))

(declare-fun d!2251731 () Bool)

(assert (=> d!2251731 (= (head!14867 s2!1849) (h!76710 s2!1849))))

(assert (=> b!7245873 d!2251731))

(declare-fun d!2251733 () Bool)

(assert (=> d!2251733 (= (tail!14269 s2!1849) (t!384438 s2!1849))))

(assert (=> b!7245873 d!2251733))

(assert (=> b!7245870 d!2251661))

(declare-fun d!2251735 () Bool)

(declare-fun res!2939168 () Bool)

(declare-fun e!4344513 () Bool)

(assert (=> d!2251735 (=> res!2939168 e!4344513)))

(assert (=> d!2251735 (= res!2939168 (is-Nil!70261 (exprs!8036 ct2!328)))))

(assert (=> d!2251735 (= (forall!17439 (exprs!8036 ct2!328) lambda!443102) e!4344513)))

(declare-fun b!7245970 () Bool)

(declare-fun e!4344514 () Bool)

(assert (=> b!7245970 (= e!4344513 e!4344514)))

(declare-fun res!2939169 () Bool)

(assert (=> b!7245970 (=> (not res!2939169) (not e!4344514))))

(assert (=> b!7245970 (= res!2939169 (dynLambda!28689 lambda!443102 (h!76709 (exprs!8036 ct2!328))))))

(declare-fun b!7245971 () Bool)

(assert (=> b!7245971 (= e!4344514 (forall!17439 (t!384437 (exprs!8036 ct2!328)) lambda!443102))))

(assert (= (and d!2251735 (not res!2939168)) b!7245970))

(assert (= (and b!7245970 res!2939169) b!7245971))

(declare-fun b_lambda!278099 () Bool)

(assert (=> (not b_lambda!278099) (not b!7245970)))

(declare-fun m!7922698 () Bool)

(assert (=> b!7245970 m!7922698))

(declare-fun m!7922700 () Bool)

(assert (=> b!7245971 m!7922700))

(assert (=> d!2251667 d!2251735))

(declare-fun b!7245982 () Bool)

(declare-fun e!4344517 () Bool)

(assert (=> b!7245982 (= e!4344517 tp_is_empty!46657)))

(declare-fun b!7245984 () Bool)

(declare-fun tp!2036273 () Bool)

(assert (=> b!7245984 (= e!4344517 tp!2036273)))

(assert (=> b!7245905 (= tp!2036247 e!4344517)))

(declare-fun b!7245985 () Bool)

(declare-fun tp!2036271 () Bool)

(declare-fun tp!2036272 () Bool)

(assert (=> b!7245985 (= e!4344517 (and tp!2036271 tp!2036272))))

(declare-fun b!7245983 () Bool)

(declare-fun tp!2036275 () Bool)

(declare-fun tp!2036274 () Bool)

(assert (=> b!7245983 (= e!4344517 (and tp!2036275 tp!2036274))))

(assert (= (and b!7245905 (is-ElementMatch!18596 (h!76709 (exprs!8036 ct2!328)))) b!7245982))

(assert (= (and b!7245905 (is-Concat!27441 (h!76709 (exprs!8036 ct2!328)))) b!7245983))

(assert (= (and b!7245905 (is-Star!18596 (h!76709 (exprs!8036 ct2!328)))) b!7245984))

(assert (= (and b!7245905 (is-Union!18596 (h!76709 (exprs!8036 ct2!328)))) b!7245985))

(declare-fun b!7245986 () Bool)

(declare-fun e!4344518 () Bool)

(declare-fun tp!2036276 () Bool)

(declare-fun tp!2036277 () Bool)

(assert (=> b!7245986 (= e!4344518 (and tp!2036276 tp!2036277))))

(assert (=> b!7245905 (= tp!2036248 e!4344518)))

(assert (= (and b!7245905 (is-Cons!70261 (t!384437 (exprs!8036 ct2!328)))) b!7245986))

(declare-fun b!7245987 () Bool)

(declare-fun e!4344519 () Bool)

(declare-fun tp!2036278 () Bool)

(assert (=> b!7245987 (= e!4344519 (and tp_is_empty!46657 tp!2036278))))

(assert (=> b!7245898 (= tp!2036239 e!4344519)))

(assert (= (and b!7245898 (is-Cons!70262 (t!384438 (t!384438 s2!1849)))) b!7245987))

(declare-fun b!7245988 () Bool)

(declare-fun e!4344520 () Bool)

(assert (=> b!7245988 (= e!4344520 tp_is_empty!46657)))

(declare-fun b!7245990 () Bool)

(declare-fun tp!2036281 () Bool)

(assert (=> b!7245990 (= e!4344520 tp!2036281)))

(assert (=> b!7245903 (= tp!2036244 e!4344520)))

(declare-fun b!7245991 () Bool)

(declare-fun tp!2036279 () Bool)

(declare-fun tp!2036280 () Bool)

(assert (=> b!7245991 (= e!4344520 (and tp!2036279 tp!2036280))))

(declare-fun b!7245989 () Bool)

(declare-fun tp!2036283 () Bool)

(declare-fun tp!2036282 () Bool)

(assert (=> b!7245989 (= e!4344520 (and tp!2036283 tp!2036282))))

(assert (= (and b!7245903 (is-ElementMatch!18596 (h!76709 (exprs!8036 ct1!232)))) b!7245988))

(assert (= (and b!7245903 (is-Concat!27441 (h!76709 (exprs!8036 ct1!232)))) b!7245989))

(assert (= (and b!7245903 (is-Star!18596 (h!76709 (exprs!8036 ct1!232)))) b!7245990))

(assert (= (and b!7245903 (is-Union!18596 (h!76709 (exprs!8036 ct1!232)))) b!7245991))

(declare-fun b!7245992 () Bool)

(declare-fun e!4344521 () Bool)

(declare-fun tp!2036284 () Bool)

(declare-fun tp!2036285 () Bool)

(assert (=> b!7245992 (= e!4344521 (and tp!2036284 tp!2036285))))

(assert (=> b!7245903 (= tp!2036245 e!4344521)))

(assert (= (and b!7245903 (is-Cons!70261 (t!384437 (exprs!8036 ct1!232)))) b!7245992))

(declare-fun b!7245993 () Bool)

(declare-fun e!4344522 () Bool)

(declare-fun tp!2036286 () Bool)

(assert (=> b!7245993 (= e!4344522 (and tp_is_empty!46657 tp!2036286))))

(assert (=> b!7245904 (= tp!2036246 e!4344522)))

(assert (= (and b!7245904 (is-Cons!70262 (t!384438 (t!384438 s1!1971)))) b!7245993))

(declare-fun b_lambda!278101 () Bool)

(assert (= b_lambda!278095 (or b!7245841 b_lambda!278101)))

(declare-fun bs!1905205 () Bool)

(declare-fun d!2251737 () Bool)

(assert (= bs!1905205 (and d!2251737 b!7245841)))

(declare-fun validRegex!9538 (Regex!18596) Bool)

(assert (=> bs!1905205 (= (dynLambda!28689 lambda!443092 (h!76709 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)))) (validRegex!9538 (h!76709 (++!16476 (exprs!8036 ct1!232) (exprs!8036 ct2!328)))))))

(declare-fun m!7922702 () Bool)

(assert (=> bs!1905205 m!7922702))

(assert (=> b!7245950 d!2251737))

(declare-fun b_lambda!278103 () Bool)

(assert (= b_lambda!278093 (or d!2251665 b_lambda!278103)))

(declare-fun bs!1905206 () Bool)

(declare-fun d!2251739 () Bool)

(assert (= bs!1905206 (and d!2251739 d!2251665)))

(assert (=> bs!1905206 (= (dynLambda!28689 lambda!443101 (h!76709 (exprs!8036 ct1!232))) (validRegex!9538 (h!76709 (exprs!8036 ct1!232))))))

(declare-fun m!7922704 () Bool)

(assert (=> bs!1905206 m!7922704))

(assert (=> b!7245934 d!2251739))

(declare-fun b_lambda!278105 () Bool)

(assert (= b_lambda!278097 (or b!7245841 b_lambda!278105)))

(declare-fun bs!1905207 () Bool)

(declare-fun d!2251741 () Bool)

(assert (= bs!1905207 (and d!2251741 b!7245841)))

(assert (=> bs!1905207 (= (dynLambda!28689 lambda!443092 (h!76709 (exprs!8036 ct1!232))) (validRegex!9538 (h!76709 (exprs!8036 ct1!232))))))

(assert (=> bs!1905207 m!7922704))

(assert (=> b!7245952 d!2251741))

(declare-fun b_lambda!278107 () Bool)

(assert (= b_lambda!278099 (or d!2251667 b_lambda!278107)))

(declare-fun bs!1905208 () Bool)

(declare-fun d!2251743 () Bool)

(assert (= bs!1905208 (and d!2251743 d!2251667)))

(assert (=> bs!1905208 (= (dynLambda!28689 lambda!443102 (h!76709 (exprs!8036 ct2!328))) (validRegex!9538 (h!76709 (exprs!8036 ct2!328))))))

(declare-fun m!7922706 () Bool)

(assert (=> bs!1905208 m!7922706))

(assert (=> b!7245970 d!2251743))

(push 1)

(assert (not b_lambda!278101))

(assert (not b!7245955))

(assert (not b!7245949))

(assert (not b!7245985))

(assert (not b!7245971))

(assert (not bs!1905208))

(assert (not b!7245992))

(assert (not d!2251693))

(assert (not b!7245983))

(assert (not d!2251695))

(assert (not b!7245990))

(assert (not b!7245968))

(assert (not b!7245969))

(assert (not b!7245947))

(assert (not b_lambda!278103))

(assert (not b!7245963))

(assert (not b!7245986))

(assert (not b!7245936))

(assert (not b!7245989))

(assert (not bs!1905205))

(assert (not b!7245991))

(assert (not d!2251713))

(assert (not b!7245987))

(assert (not b!7245967))

(assert (not bs!1905206))

(assert (not b!7245956))

(assert (not b!7245935))

(assert (not b_lambda!278105))

(assert (not d!2251709))

(assert tp_is_empty!46657)

(assert (not d!2251729))

(assert (not b!7245945))

(assert (not b!7245951))

(assert (not d!2251723))

(assert (not d!2251725))

(assert (not b!7245937))

(assert (not bs!1905207))

(assert (not b!7245984))

(assert (not b!7245953))

(assert (not b_lambda!278107))

(assert (not d!2251727))

(assert (not b!7245965))

(assert (not b!7245993))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

