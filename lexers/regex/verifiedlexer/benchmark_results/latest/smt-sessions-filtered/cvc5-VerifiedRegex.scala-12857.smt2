; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710148 () Bool)

(assert start!710148)

(declare-fun b!7273857 () Bool)

(declare-fun lambda!449399 () Int)

(declare-fun lambda!449398 () Int)

(assert (=> b!7273857 (not (= lambda!449399 lambda!449398))))

(declare-fun b!7273852 () Bool)

(declare-fun res!2948563 () Bool)

(declare-fun e!4361873 () Bool)

(assert (=> b!7273852 (=> (not res!2948563) (not e!4361873))))

(declare-datatypes ((C!37918 0))(
  ( (C!37919 (val!28907 Int)) )
))
(declare-datatypes ((Regex!18822 0))(
  ( (ElementMatch!18822 (c!1354330 C!37918)) (Concat!27667 (regOne!38156 Regex!18822) (regTwo!38156 Regex!18822)) (EmptyExpr!18822) (Star!18822 (reg!19151 Regex!18822)) (EmptyLang!18822) (Union!18822 (regOne!38157 Regex!18822) (regTwo!38157 Regex!18822)) )
))
(declare-datatypes ((List!70959 0))(
  ( (Nil!70835) (Cons!70835 (h!77283 Regex!18822) (t!385031 List!70959)) )
))
(declare-datatypes ((Context!15524 0))(
  ( (Context!15525 (exprs!8262 List!70959)) )
))
(declare-fun ct1!250 () Context!15524)

(declare-fun nullableContext!312 (Context!15524) Bool)

(assert (=> b!7273852 (= res!2948563 (nullableContext!312 ct1!250))))

(declare-fun b!7273853 () Bool)

(declare-fun e!4361875 () Bool)

(declare-fun tp!2041613 () Bool)

(assert (=> b!7273853 (= e!4361875 tp!2041613)))

(declare-fun b!7273855 () Bool)

(declare-fun res!2948562 () Bool)

(assert (=> b!7273855 (=> (not res!2948562) (not e!4361873))))

(declare-fun ct2!346 () Context!15524)

(assert (=> b!7273855 (= res!2948562 (nullableContext!312 ct2!346))))

(declare-fun b!7273856 () Bool)

(declare-fun e!4361874 () Bool)

(declare-fun tp_is_empty!47109 () Bool)

(declare-fun tp!2041612 () Bool)

(assert (=> b!7273856 (= e!4361874 (and tp_is_empty!47109 tp!2041612))))

(declare-fun forall!17649 (List!70959 Int) Bool)

(assert (=> b!7273857 (= e!4361873 (not (forall!17649 (exprs!8262 ct1!250) lambda!449399)))))

(declare-datatypes ((Unit!164254 0))(
  ( (Unit!164255) )
))
(declare-fun lt!2596342 () Unit!164254)

(declare-fun lemmaConcatPreservesForall!1575 (List!70959 List!70959 Int) Unit!164254)

(assert (=> b!7273857 (= lt!2596342 (lemmaConcatPreservesForall!1575 (exprs!8262 ct1!250) (exprs!8262 ct2!346) lambda!449398))))

(declare-fun b!7273858 () Bool)

(declare-fun res!2948561 () Bool)

(assert (=> b!7273858 (=> (not res!2948561) (not e!4361873))))

(declare-datatypes ((List!70960 0))(
  ( (Nil!70836) (Cons!70836 (h!77284 C!37918) (t!385032 List!70960)) )
))
(declare-fun s!7854 () List!70960)

(assert (=> b!7273858 (= res!2948561 (not (is-Cons!70836 s!7854)))))

(declare-fun res!2948560 () Bool)

(assert (=> start!710148 (=> (not res!2948560) (not e!4361873))))

(declare-fun matchZipper!3726 ((Set Context!15524) List!70960) Bool)

(assert (=> start!710148 (= res!2948560 (matchZipper!3726 (set.insert ct2!346 (as set.empty (Set Context!15524))) s!7854))))

(assert (=> start!710148 e!4361873))

(declare-fun e!4361872 () Bool)

(declare-fun inv!90066 (Context!15524) Bool)

(assert (=> start!710148 (and (inv!90066 ct2!346) e!4361872)))

(assert (=> start!710148 e!4361874))

(assert (=> start!710148 (and (inv!90066 ct1!250) e!4361875)))

(declare-fun b!7273854 () Bool)

(declare-fun tp!2041611 () Bool)

(assert (=> b!7273854 (= e!4361872 tp!2041611)))

(assert (= (and start!710148 res!2948560) b!7273852))

(assert (= (and b!7273852 res!2948563) b!7273858))

(assert (= (and b!7273858 res!2948561) b!7273855))

(assert (= (and b!7273855 res!2948562) b!7273857))

(assert (= start!710148 b!7273854))

(assert (= (and start!710148 (is-Cons!70836 s!7854)) b!7273856))

(assert (= start!710148 b!7273853))

(declare-fun m!7960430 () Bool)

(assert (=> b!7273852 m!7960430))

(declare-fun m!7960432 () Bool)

(assert (=> b!7273855 m!7960432))

(declare-fun m!7960434 () Bool)

(assert (=> b!7273857 m!7960434))

(declare-fun m!7960436 () Bool)

(assert (=> b!7273857 m!7960436))

(declare-fun m!7960438 () Bool)

(assert (=> start!710148 m!7960438))

(assert (=> start!710148 m!7960438))

(declare-fun m!7960440 () Bool)

(assert (=> start!710148 m!7960440))

(declare-fun m!7960442 () Bool)

(assert (=> start!710148 m!7960442))

(declare-fun m!7960444 () Bool)

(assert (=> start!710148 m!7960444))

(push 1)

(assert (not b!7273853))

(assert (not b!7273854))

(assert (not b!7273852))

(assert (not b!7273856))

(assert tp_is_empty!47109)

(assert (not b!7273857))

(assert (not start!710148))

(assert (not b!7273855))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1911668 () Bool)

(declare-fun d!2263914 () Bool)

(assert (= bs!1911668 (and d!2263914 b!7273857)))

(declare-fun lambda!449408 () Int)

(assert (=> bs!1911668 (= lambda!449408 lambda!449398)))

(assert (=> bs!1911668 (not (= lambda!449408 lambda!449399))))

(assert (=> d!2263914 (= (nullableContext!312 ct2!346) (forall!17649 (exprs!8262 ct2!346) lambda!449408))))

(declare-fun bs!1911669 () Bool)

(assert (= bs!1911669 d!2263914))

(declare-fun m!7960462 () Bool)

(assert (=> bs!1911669 m!7960462))

(assert (=> b!7273855 d!2263914))

(declare-fun d!2263918 () Bool)

(declare-fun c!1354335 () Bool)

(declare-fun isEmpty!40742 (List!70960) Bool)

(assert (=> d!2263918 (= c!1354335 (isEmpty!40742 s!7854))))

(declare-fun e!4361894 () Bool)

(assert (=> d!2263918 (= (matchZipper!3726 (set.insert ct2!346 (as set.empty (Set Context!15524))) s!7854) e!4361894)))

(declare-fun b!7273888 () Bool)

(declare-fun nullableZipper!3024 ((Set Context!15524)) Bool)

(assert (=> b!7273888 (= e!4361894 (nullableZipper!3024 (set.insert ct2!346 (as set.empty (Set Context!15524)))))))

(declare-fun b!7273889 () Bool)

(declare-fun derivationStepZipper!3560 ((Set Context!15524) C!37918) (Set Context!15524))

(declare-fun head!15022 (List!70960) C!37918)

(declare-fun tail!14529 (List!70960) List!70960)

(assert (=> b!7273889 (= e!4361894 (matchZipper!3726 (derivationStepZipper!3560 (set.insert ct2!346 (as set.empty (Set Context!15524))) (head!15022 s!7854)) (tail!14529 s!7854)))))

(assert (= (and d!2263918 c!1354335) b!7273888))

(assert (= (and d!2263918 (not c!1354335)) b!7273889))

(declare-fun m!7960464 () Bool)

(assert (=> d!2263918 m!7960464))

(assert (=> b!7273888 m!7960438))

(declare-fun m!7960466 () Bool)

(assert (=> b!7273888 m!7960466))

(declare-fun m!7960468 () Bool)

(assert (=> b!7273889 m!7960468))

(assert (=> b!7273889 m!7960438))

(assert (=> b!7273889 m!7960468))

(declare-fun m!7960470 () Bool)

(assert (=> b!7273889 m!7960470))

(declare-fun m!7960472 () Bool)

(assert (=> b!7273889 m!7960472))

(assert (=> b!7273889 m!7960470))

(assert (=> b!7273889 m!7960472))

(declare-fun m!7960474 () Bool)

(assert (=> b!7273889 m!7960474))

(assert (=> start!710148 d!2263918))

(declare-fun bs!1911670 () Bool)

(declare-fun d!2263920 () Bool)

(assert (= bs!1911670 (and d!2263920 b!7273857)))

(declare-fun lambda!449411 () Int)

(assert (=> bs!1911670 (not (= lambda!449411 lambda!449398))))

(assert (=> bs!1911670 (= lambda!449411 lambda!449399)))

(declare-fun bs!1911671 () Bool)

(assert (= bs!1911671 (and d!2263920 d!2263914)))

(assert (=> bs!1911671 (not (= lambda!449411 lambda!449408))))

(assert (=> d!2263920 (= (inv!90066 ct2!346) (forall!17649 (exprs!8262 ct2!346) lambda!449411))))

(declare-fun bs!1911672 () Bool)

(assert (= bs!1911672 d!2263920))

(declare-fun m!7960480 () Bool)

(assert (=> bs!1911672 m!7960480))

(assert (=> start!710148 d!2263920))

(declare-fun bs!1911673 () Bool)

(declare-fun d!2263924 () Bool)

(assert (= bs!1911673 (and d!2263924 b!7273857)))

(declare-fun lambda!449412 () Int)

(assert (=> bs!1911673 (not (= lambda!449412 lambda!449398))))

(assert (=> bs!1911673 (= lambda!449412 lambda!449399)))

(declare-fun bs!1911674 () Bool)

(assert (= bs!1911674 (and d!2263924 d!2263914)))

(assert (=> bs!1911674 (not (= lambda!449412 lambda!449408))))

(declare-fun bs!1911675 () Bool)

(assert (= bs!1911675 (and d!2263924 d!2263920)))

(assert (=> bs!1911675 (= lambda!449412 lambda!449411)))

(assert (=> d!2263924 (= (inv!90066 ct1!250) (forall!17649 (exprs!8262 ct1!250) lambda!449412))))

(declare-fun bs!1911676 () Bool)

(assert (= bs!1911676 d!2263924))

(declare-fun m!7960482 () Bool)

(assert (=> bs!1911676 m!7960482))

(assert (=> start!710148 d!2263924))

(declare-fun d!2263926 () Bool)

(declare-fun res!2948586 () Bool)

(declare-fun e!4361901 () Bool)

(assert (=> d!2263926 (=> res!2948586 e!4361901)))

(assert (=> d!2263926 (= res!2948586 (is-Nil!70835 (exprs!8262 ct1!250)))))

(assert (=> d!2263926 (= (forall!17649 (exprs!8262 ct1!250) lambda!449399) e!4361901)))

(declare-fun b!7273896 () Bool)

(declare-fun e!4361902 () Bool)

(assert (=> b!7273896 (= e!4361901 e!4361902)))

(declare-fun res!2948587 () Bool)

(assert (=> b!7273896 (=> (not res!2948587) (not e!4361902))))

(declare-fun dynLambda!28963 (Int Regex!18822) Bool)

(assert (=> b!7273896 (= res!2948587 (dynLambda!28963 lambda!449399 (h!77283 (exprs!8262 ct1!250))))))

(declare-fun b!7273897 () Bool)

(assert (=> b!7273897 (= e!4361902 (forall!17649 (t!385031 (exprs!8262 ct1!250)) lambda!449399))))

(assert (= (and d!2263926 (not res!2948586)) b!7273896))

(assert (= (and b!7273896 res!2948587) b!7273897))

(declare-fun b_lambda!280647 () Bool)

(assert (=> (not b_lambda!280647) (not b!7273896)))

(declare-fun m!7960484 () Bool)

(assert (=> b!7273896 m!7960484))

(declare-fun m!7960486 () Bool)

(assert (=> b!7273897 m!7960486))

(assert (=> b!7273857 d!2263926))

(declare-fun d!2263928 () Bool)

(declare-fun ++!16718 (List!70959 List!70959) List!70959)

(assert (=> d!2263928 (forall!17649 (++!16718 (exprs!8262 ct1!250) (exprs!8262 ct2!346)) lambda!449398)))

(declare-fun lt!2596350 () Unit!164254)

(declare-fun choose!56453 (List!70959 List!70959 Int) Unit!164254)

(assert (=> d!2263928 (= lt!2596350 (choose!56453 (exprs!8262 ct1!250) (exprs!8262 ct2!346) lambda!449398))))

(assert (=> d!2263928 (forall!17649 (exprs!8262 ct1!250) lambda!449398)))

(assert (=> d!2263928 (= (lemmaConcatPreservesForall!1575 (exprs!8262 ct1!250) (exprs!8262 ct2!346) lambda!449398) lt!2596350)))

(declare-fun bs!1911677 () Bool)

(assert (= bs!1911677 d!2263928))

(declare-fun m!7960488 () Bool)

(assert (=> bs!1911677 m!7960488))

(assert (=> bs!1911677 m!7960488))

(declare-fun m!7960490 () Bool)

(assert (=> bs!1911677 m!7960490))

(declare-fun m!7960492 () Bool)

(assert (=> bs!1911677 m!7960492))

(declare-fun m!7960494 () Bool)

(assert (=> bs!1911677 m!7960494))

(assert (=> b!7273857 d!2263928))

(declare-fun bs!1911678 () Bool)

(declare-fun d!2263930 () Bool)

(assert (= bs!1911678 (and d!2263930 d!2263914)))

(declare-fun lambda!449413 () Int)

(assert (=> bs!1911678 (= lambda!449413 lambda!449408)))

(declare-fun bs!1911679 () Bool)

(assert (= bs!1911679 (and d!2263930 d!2263920)))

(assert (=> bs!1911679 (not (= lambda!449413 lambda!449411))))

(declare-fun bs!1911681 () Bool)

(assert (= bs!1911681 (and d!2263930 b!7273857)))

(assert (=> bs!1911681 (not (= lambda!449413 lambda!449399))))

(assert (=> bs!1911681 (= lambda!449413 lambda!449398)))

(declare-fun bs!1911682 () Bool)

(assert (= bs!1911682 (and d!2263930 d!2263924)))

(assert (=> bs!1911682 (not (= lambda!449413 lambda!449412))))

(assert (=> d!2263930 (= (nullableContext!312 ct1!250) (forall!17649 (exprs!8262 ct1!250) lambda!449413))))

(declare-fun bs!1911683 () Bool)

(assert (= bs!1911683 d!2263930))

(declare-fun m!7960504 () Bool)

(assert (=> bs!1911683 m!7960504))

(assert (=> b!7273852 d!2263930))

(declare-fun b!7273902 () Bool)

(declare-fun e!4361905 () Bool)

(declare-fun tp!2041627 () Bool)

(declare-fun tp!2041628 () Bool)

(assert (=> b!7273902 (= e!4361905 (and tp!2041627 tp!2041628))))

(assert (=> b!7273853 (= tp!2041613 e!4361905)))

(assert (= (and b!7273853 (is-Cons!70835 (exprs!8262 ct1!250))) b!7273902))

(declare-fun b!7273903 () Bool)

(declare-fun e!4361906 () Bool)

(declare-fun tp!2041629 () Bool)

(declare-fun tp!2041630 () Bool)

(assert (=> b!7273903 (= e!4361906 (and tp!2041629 tp!2041630))))

(assert (=> b!7273854 (= tp!2041611 e!4361906)))

(assert (= (and b!7273854 (is-Cons!70835 (exprs!8262 ct2!346))) b!7273903))

(declare-fun b!7273908 () Bool)

(declare-fun e!4361909 () Bool)

(declare-fun tp!2041633 () Bool)

(assert (=> b!7273908 (= e!4361909 (and tp_is_empty!47109 tp!2041633))))

(assert (=> b!7273856 (= tp!2041612 e!4361909)))

(assert (= (and b!7273856 (is-Cons!70836 (t!385032 s!7854))) b!7273908))

(declare-fun b_lambda!280649 () Bool)

(assert (= b_lambda!280647 (or b!7273857 b_lambda!280649)))

(declare-fun bs!1911684 () Bool)

(declare-fun d!2263934 () Bool)

(assert (= bs!1911684 (and d!2263934 b!7273857)))

(declare-fun validRegex!9595 (Regex!18822) Bool)

(assert (=> bs!1911684 (= (dynLambda!28963 lambda!449399 (h!77283 (exprs!8262 ct1!250))) (validRegex!9595 (h!77283 (exprs!8262 ct1!250))))))

(declare-fun m!7960506 () Bool)

(assert (=> bs!1911684 m!7960506))

(assert (=> b!7273896 d!2263934))

(push 1)

(assert (not bs!1911684))

(assert (not b_lambda!280649))

(assert (not b!7273903))

(assert (not d!2263924))

(assert tp_is_empty!47109)

(assert (not d!2263914))

(assert (not b!7273889))

(assert (not b!7273908))

(assert (not d!2263928))

(assert (not d!2263920))

(assert (not b!7273902))

(assert (not b!7273897))

(assert (not b!7273888))

(assert (not d!2263930))

(assert (not d!2263918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

