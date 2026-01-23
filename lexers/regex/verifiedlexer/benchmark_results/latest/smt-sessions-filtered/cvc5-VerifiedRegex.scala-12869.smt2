; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710732 () Bool)

(assert start!710732)

(declare-fun b!7293510 () Bool)

(declare-fun res!2950260 () Bool)

(declare-fun e!4368513 () Bool)

(assert (=> b!7293510 (=> (not res!2950260) (not e!4368513))))

(declare-datatypes ((C!37966 0))(
  ( (C!37967 (val!28931 Int)) )
))
(declare-datatypes ((List!71009 0))(
  ( (Nil!70885) (Cons!70885 (h!77333 C!37966) (t!385083 List!71009)) )
))
(declare-fun s!7854 () List!71009)

(assert (=> b!7293510 (= res!2950260 (is-Cons!70885 s!7854))))

(declare-fun b!7293511 () Bool)

(declare-fun e!4368511 () Bool)

(declare-fun tp!2061874 () Bool)

(assert (=> b!7293511 (= e!4368511 tp!2061874)))

(declare-fun res!2950261 () Bool)

(assert (=> start!710732 (=> (not res!2950261) (not e!4368513))))

(declare-datatypes ((Regex!18846 0))(
  ( (ElementMatch!18846 (c!1355292 C!37966)) (Concat!27691 (regOne!38204 Regex!18846) (regTwo!38204 Regex!18846)) (EmptyExpr!18846) (Star!18846 (reg!19175 Regex!18846)) (EmptyLang!18846) (Union!18846 (regOne!38205 Regex!18846) (regTwo!38205 Regex!18846)) )
))
(declare-datatypes ((List!71010 0))(
  ( (Nil!70886) (Cons!70886 (h!77334 Regex!18846) (t!385084 List!71010)) )
))
(declare-datatypes ((Context!15572 0))(
  ( (Context!15573 (exprs!8286 List!71010)) )
))
(declare-fun ct2!346 () Context!15572)

(declare-fun matchZipper!3750 ((Set Context!15572) List!71009) Bool)

(assert (=> start!710732 (= res!2950261 (matchZipper!3750 (set.insert ct2!346 (as set.empty (Set Context!15572))) s!7854))))

(assert (=> start!710732 e!4368513))

(declare-fun inv!90126 (Context!15572) Bool)

(assert (=> start!710732 (and (inv!90126 ct2!346) e!4368511)))

(declare-fun e!4368512 () Bool)

(assert (=> start!710732 e!4368512))

(declare-fun ct1!250 () Context!15572)

(declare-fun e!4368510 () Bool)

(assert (=> start!710732 (and (inv!90126 ct1!250) e!4368510)))

(declare-fun b!7293512 () Bool)

(declare-fun res!2950262 () Bool)

(assert (=> b!7293512 (=> (not res!2950262) (not e!4368513))))

(declare-fun nullableContext!336 (Context!15572) Bool)

(assert (=> b!7293512 (= res!2950262 (nullableContext!336 ct1!250))))

(declare-fun b!7293513 () Bool)

(declare-fun tp_is_empty!47157 () Bool)

(declare-fun tp!2061875 () Bool)

(assert (=> b!7293513 (= e!4368512 (and tp_is_empty!47157 tp!2061875))))

(declare-fun b!7293514 () Bool)

(declare-fun tp!2061873 () Bool)

(assert (=> b!7293514 (= e!4368510 tp!2061873)))

(declare-fun b!7293515 () Bool)

(declare-fun ++!16736 (List!71010 List!71010) List!71010)

(assert (=> b!7293515 (= e!4368513 (not (inv!90126 (Context!15573 (++!16736 (exprs!8286 ct1!250) (exprs!8286 ct2!346))))))))

(declare-datatypes ((Unit!164290 0))(
  ( (Unit!164291) )
))
(declare-fun lt!2597064 () Unit!164290)

(declare-fun lambda!449910 () Int)

(declare-fun lemmaConcatPreservesForall!1593 (List!71010 List!71010 Int) Unit!164290)

(assert (=> b!7293515 (= lt!2597064 (lemmaConcatPreservesForall!1593 (exprs!8286 ct1!250) (exprs!8286 ct2!346) lambda!449910))))

(assert (= (and start!710732 res!2950261) b!7293512))

(assert (= (and b!7293512 res!2950262) b!7293510))

(assert (= (and b!7293510 res!2950260) b!7293515))

(assert (= start!710732 b!7293511))

(assert (= (and start!710732 (is-Cons!70885 s!7854)) b!7293513))

(assert (= start!710732 b!7293514))

(declare-fun m!7964894 () Bool)

(assert (=> start!710732 m!7964894))

(assert (=> start!710732 m!7964894))

(declare-fun m!7964896 () Bool)

(assert (=> start!710732 m!7964896))

(declare-fun m!7964898 () Bool)

(assert (=> start!710732 m!7964898))

(declare-fun m!7964900 () Bool)

(assert (=> start!710732 m!7964900))

(declare-fun m!7964902 () Bool)

(assert (=> b!7293512 m!7964902))

(declare-fun m!7964904 () Bool)

(assert (=> b!7293515 m!7964904))

(declare-fun m!7964906 () Bool)

(assert (=> b!7293515 m!7964906))

(declare-fun m!7964908 () Bool)

(assert (=> b!7293515 m!7964908))

(push 1)

(assert tp_is_empty!47157)

(assert (not b!7293514))

(assert (not b!7293515))

(assert (not start!710732))

(assert (not b!7293512))

(assert (not b!7293511))

(assert (not b!7293513))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1912508 () Bool)

(declare-fun d!2265898 () Bool)

(assert (= bs!1912508 (and d!2265898 b!7293515)))

(declare-fun lambda!449916 () Int)

(assert (=> bs!1912508 (= lambda!449916 lambda!449910)))

(declare-fun forall!17673 (List!71010 Int) Bool)

(assert (=> d!2265898 (= (inv!90126 (Context!15573 (++!16736 (exprs!8286 ct1!250) (exprs!8286 ct2!346)))) (forall!17673 (exprs!8286 (Context!15573 (++!16736 (exprs!8286 ct1!250) (exprs!8286 ct2!346)))) lambda!449916))))

(declare-fun bs!1912509 () Bool)

(assert (= bs!1912509 d!2265898))

(declare-fun m!7964926 () Bool)

(assert (=> bs!1912509 m!7964926))

(assert (=> b!7293515 d!2265898))

(declare-fun d!2265900 () Bool)

(declare-fun e!4368530 () Bool)

(assert (=> d!2265900 e!4368530))

(declare-fun res!2950277 () Bool)

(assert (=> d!2265900 (=> (not res!2950277) (not e!4368530))))

(declare-fun lt!2597070 () List!71010)

(declare-fun content!14803 (List!71010) (Set Regex!18846))

(assert (=> d!2265900 (= res!2950277 (= (content!14803 lt!2597070) (set.union (content!14803 (exprs!8286 ct1!250)) (content!14803 (exprs!8286 ct2!346)))))))

(declare-fun e!4368531 () List!71010)

(assert (=> d!2265900 (= lt!2597070 e!4368531)))

(declare-fun c!1355296 () Bool)

(assert (=> d!2265900 (= c!1355296 (is-Nil!70886 (exprs!8286 ct1!250)))))

(assert (=> d!2265900 (= (++!16736 (exprs!8286 ct1!250) (exprs!8286 ct2!346)) lt!2597070)))

(declare-fun b!7293543 () Bool)

(assert (=> b!7293543 (= e!4368531 (Cons!70886 (h!77334 (exprs!8286 ct1!250)) (++!16736 (t!385084 (exprs!8286 ct1!250)) (exprs!8286 ct2!346))))))

(declare-fun b!7293545 () Bool)

(assert (=> b!7293545 (= e!4368530 (or (not (= (exprs!8286 ct2!346) Nil!70886)) (= lt!2597070 (exprs!8286 ct1!250))))))

(declare-fun b!7293544 () Bool)

(declare-fun res!2950276 () Bool)

(assert (=> b!7293544 (=> (not res!2950276) (not e!4368530))))

(declare-fun size!41849 (List!71010) Int)

(assert (=> b!7293544 (= res!2950276 (= (size!41849 lt!2597070) (+ (size!41849 (exprs!8286 ct1!250)) (size!41849 (exprs!8286 ct2!346)))))))

(declare-fun b!7293542 () Bool)

(assert (=> b!7293542 (= e!4368531 (exprs!8286 ct2!346))))

(assert (= (and d!2265900 c!1355296) b!7293542))

(assert (= (and d!2265900 (not c!1355296)) b!7293543))

(assert (= (and d!2265900 res!2950277) b!7293544))

(assert (= (and b!7293544 res!2950276) b!7293545))

(declare-fun m!7964928 () Bool)

(assert (=> d!2265900 m!7964928))

(declare-fun m!7964930 () Bool)

(assert (=> d!2265900 m!7964930))

(declare-fun m!7964932 () Bool)

(assert (=> d!2265900 m!7964932))

(declare-fun m!7964934 () Bool)

(assert (=> b!7293543 m!7964934))

(declare-fun m!7964936 () Bool)

(assert (=> b!7293544 m!7964936))

(declare-fun m!7964938 () Bool)

(assert (=> b!7293544 m!7964938))

(declare-fun m!7964940 () Bool)

(assert (=> b!7293544 m!7964940))

(assert (=> b!7293515 d!2265900))

(declare-fun d!2265902 () Bool)

(assert (=> d!2265902 (forall!17673 (++!16736 (exprs!8286 ct1!250) (exprs!8286 ct2!346)) lambda!449910)))

(declare-fun lt!2597073 () Unit!164290)

(declare-fun choose!56498 (List!71010 List!71010 Int) Unit!164290)

(assert (=> d!2265902 (= lt!2597073 (choose!56498 (exprs!8286 ct1!250) (exprs!8286 ct2!346) lambda!449910))))

(assert (=> d!2265902 (forall!17673 (exprs!8286 ct1!250) lambda!449910)))

(assert (=> d!2265902 (= (lemmaConcatPreservesForall!1593 (exprs!8286 ct1!250) (exprs!8286 ct2!346) lambda!449910) lt!2597073)))

(declare-fun bs!1912510 () Bool)

(assert (= bs!1912510 d!2265902))

(assert (=> bs!1912510 m!7964904))

(assert (=> bs!1912510 m!7964904))

(declare-fun m!7964942 () Bool)

(assert (=> bs!1912510 m!7964942))

(declare-fun m!7964944 () Bool)

(assert (=> bs!1912510 m!7964944))

(declare-fun m!7964946 () Bool)

(assert (=> bs!1912510 m!7964946))

(assert (=> b!7293515 d!2265902))

(declare-fun d!2265904 () Bool)

(declare-fun c!1355299 () Bool)

(declare-fun isEmpty!40772 (List!71009) Bool)

(assert (=> d!2265904 (= c!1355299 (isEmpty!40772 s!7854))))

(declare-fun e!4368534 () Bool)

(assert (=> d!2265904 (= (matchZipper!3750 (set.insert ct2!346 (as set.empty (Set Context!15572))) s!7854) e!4368534)))

(declare-fun b!7293550 () Bool)

(declare-fun nullableZipper!3046 ((Set Context!15572)) Bool)

(assert (=> b!7293550 (= e!4368534 (nullableZipper!3046 (set.insert ct2!346 (as set.empty (Set Context!15572)))))))

(declare-fun b!7293551 () Bool)

(declare-fun derivationStepZipper!3582 ((Set Context!15572) C!37966) (Set Context!15572))

(declare-fun head!15044 (List!71009) C!37966)

(declare-fun tail!14557 (List!71009) List!71009)

(assert (=> b!7293551 (= e!4368534 (matchZipper!3750 (derivationStepZipper!3582 (set.insert ct2!346 (as set.empty (Set Context!15572))) (head!15044 s!7854)) (tail!14557 s!7854)))))

(assert (= (and d!2265904 c!1355299) b!7293550))

(assert (= (and d!2265904 (not c!1355299)) b!7293551))

(declare-fun m!7964948 () Bool)

(assert (=> d!2265904 m!7964948))

(assert (=> b!7293550 m!7964894))

(declare-fun m!7964950 () Bool)

(assert (=> b!7293550 m!7964950))

(declare-fun m!7964952 () Bool)

(assert (=> b!7293551 m!7964952))

(assert (=> b!7293551 m!7964894))

(assert (=> b!7293551 m!7964952))

(declare-fun m!7964954 () Bool)

(assert (=> b!7293551 m!7964954))

(declare-fun m!7964956 () Bool)

(assert (=> b!7293551 m!7964956))

(assert (=> b!7293551 m!7964954))

(assert (=> b!7293551 m!7964956))

(declare-fun m!7964958 () Bool)

(assert (=> b!7293551 m!7964958))

(assert (=> start!710732 d!2265904))

(declare-fun bs!1912511 () Bool)

(declare-fun d!2265908 () Bool)

(assert (= bs!1912511 (and d!2265908 b!7293515)))

(declare-fun lambda!449917 () Int)

(assert (=> bs!1912511 (= lambda!449917 lambda!449910)))

(declare-fun bs!1912512 () Bool)

(assert (= bs!1912512 (and d!2265908 d!2265898)))

(assert (=> bs!1912512 (= lambda!449917 lambda!449916)))

(assert (=> d!2265908 (= (inv!90126 ct2!346) (forall!17673 (exprs!8286 ct2!346) lambda!449917))))

(declare-fun bs!1912513 () Bool)

(assert (= bs!1912513 d!2265908))

(declare-fun m!7964960 () Bool)

(assert (=> bs!1912513 m!7964960))

(assert (=> start!710732 d!2265908))

(declare-fun bs!1912514 () Bool)

(declare-fun d!2265910 () Bool)

(assert (= bs!1912514 (and d!2265910 b!7293515)))

(declare-fun lambda!449919 () Int)

(assert (=> bs!1912514 (= lambda!449919 lambda!449910)))

(declare-fun bs!1912515 () Bool)

(assert (= bs!1912515 (and d!2265910 d!2265898)))

(assert (=> bs!1912515 (= lambda!449919 lambda!449916)))

(declare-fun bs!1912516 () Bool)

(assert (= bs!1912516 (and d!2265910 d!2265908)))

(assert (=> bs!1912516 (= lambda!449919 lambda!449917)))

(assert (=> d!2265910 (= (inv!90126 ct1!250) (forall!17673 (exprs!8286 ct1!250) lambda!449919))))

(declare-fun bs!1912517 () Bool)

(assert (= bs!1912517 d!2265910))

(declare-fun m!7964962 () Bool)

(assert (=> bs!1912517 m!7964962))

(assert (=> start!710732 d!2265910))

(declare-fun bs!1912518 () Bool)

(declare-fun d!2265912 () Bool)

(assert (= bs!1912518 (and d!2265912 b!7293515)))

(declare-fun lambda!449923 () Int)

(assert (=> bs!1912518 (not (= lambda!449923 lambda!449910))))

(declare-fun bs!1912519 () Bool)

(assert (= bs!1912519 (and d!2265912 d!2265898)))

(assert (=> bs!1912519 (not (= lambda!449923 lambda!449916))))

(declare-fun bs!1912520 () Bool)

(assert (= bs!1912520 (and d!2265912 d!2265908)))

(assert (=> bs!1912520 (not (= lambda!449923 lambda!449917))))

(declare-fun bs!1912521 () Bool)

(assert (= bs!1912521 (and d!2265912 d!2265910)))

(assert (=> bs!1912521 (not (= lambda!449923 lambda!449919))))

(assert (=> d!2265912 (= (nullableContext!336 ct1!250) (forall!17673 (exprs!8286 ct1!250) lambda!449923))))

(declare-fun bs!1912523 () Bool)

(assert (= bs!1912523 d!2265912))

(declare-fun m!7964964 () Bool)

(assert (=> bs!1912523 m!7964964))

(assert (=> b!7293512 d!2265912))

(declare-fun b!7293556 () Bool)

(declare-fun e!4368537 () Bool)

(declare-fun tp!2061889 () Bool)

(declare-fun tp!2061890 () Bool)

(assert (=> b!7293556 (= e!4368537 (and tp!2061889 tp!2061890))))

(assert (=> b!7293514 (= tp!2061873 e!4368537)))

(assert (= (and b!7293514 (is-Cons!70886 (exprs!8286 ct1!250))) b!7293556))

(declare-fun b!7293561 () Bool)

(declare-fun e!4368540 () Bool)

(declare-fun tp!2061893 () Bool)

(assert (=> b!7293561 (= e!4368540 (and tp_is_empty!47157 tp!2061893))))

(assert (=> b!7293513 (= tp!2061875 e!4368540)))

(assert (= (and b!7293513 (is-Cons!70885 (t!385083 s!7854))) b!7293561))

(declare-fun b!7293562 () Bool)

(declare-fun e!4368541 () Bool)

(declare-fun tp!2061894 () Bool)

(declare-fun tp!2061895 () Bool)

(assert (=> b!7293562 (= e!4368541 (and tp!2061894 tp!2061895))))

(assert (=> b!7293511 (= tp!2061874 e!4368541)))

(assert (= (and b!7293511 (is-Cons!70886 (exprs!8286 ct2!346))) b!7293562))

(push 1)

(assert (not d!2265908))

(assert (not b!7293551))

(assert (not b!7293561))

(assert (not b!7293562))

(assert tp_is_empty!47157)

(assert (not b!7293550))

(assert (not d!2265912))

(assert (not d!2265898))

(assert (not b!7293543))

(assert (not d!2265910))

(assert (not b!7293556))

(assert (not d!2265902))

(assert (not b!7293544))

(assert (not d!2265900))

(assert (not d!2265904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

