; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704630 () Bool)

(assert start!704630)

(declare-fun b!7246074 () Bool)

(declare-fun e!4344573 () Bool)

(declare-fun tp!2036323 () Bool)

(assert (=> b!7246074 (= e!4344573 tp!2036323)))

(declare-fun res!2939193 () Bool)

(declare-fun e!4344572 () Bool)

(assert (=> start!704630 (=> (not res!2939193) (not e!4344572))))

(declare-datatypes ((C!37470 0))(
  ( (C!37471 (val!28683 Int)) )
))
(declare-datatypes ((Regex!18598 0))(
  ( (ElementMatch!18598 (c!1346144 C!37470)) (Concat!27443 (regOne!37708 Regex!18598) (regTwo!37708 Regex!18598)) (EmptyExpr!18598) (Star!18598 (reg!18927 Regex!18598)) (EmptyLang!18598) (Union!18598 (regOne!37709 Regex!18598) (regTwo!37709 Regex!18598)) )
))
(declare-datatypes ((List!70390 0))(
  ( (Nil!70266) (Cons!70266 (h!76714 Regex!18598) (t!384442 List!70390)) )
))
(declare-datatypes ((Context!15076 0))(
  ( (Context!15077 (exprs!8038 List!70390)) )
))
(declare-fun lt!2582738 () (Set Context!15076))

(declare-datatypes ((List!70391 0))(
  ( (Nil!70267) (Cons!70267 (h!76715 C!37470) (t!384443 List!70391)) )
))
(declare-fun s1!1971 () List!70391)

(declare-fun matchZipper!3508 ((Set Context!15076) List!70391) Bool)

(assert (=> start!704630 (= res!2939193 (matchZipper!3508 lt!2582738 s1!1971))))

(declare-fun ct1!232 () Context!15076)

(assert (=> start!704630 (= lt!2582738 (set.insert ct1!232 (as set.empty (Set Context!15076))))))

(assert (=> start!704630 e!4344572))

(declare-fun e!4344569 () Bool)

(declare-fun inv!89506 (Context!15076) Bool)

(assert (=> start!704630 (and (inv!89506 ct1!232) e!4344569)))

(declare-fun e!4344570 () Bool)

(assert (=> start!704630 e!4344570))

(declare-fun e!4344571 () Bool)

(assert (=> start!704630 e!4344571))

(declare-fun ct2!328 () Context!15076)

(assert (=> start!704630 (and (inv!89506 ct2!328) e!4344573)))

(declare-fun b!7246075 () Bool)

(declare-fun res!2939194 () Bool)

(declare-fun e!4344574 () Bool)

(assert (=> b!7246075 (=> (not res!2939194) (not e!4344574))))

(declare-fun nullableZipper!2881 ((Set Context!15076)) Bool)

(assert (=> b!7246075 (= res!2939194 (nullableZipper!2881 lt!2582738))))

(declare-fun b!7246076 () Bool)

(declare-fun tp!2036322 () Bool)

(assert (=> b!7246076 (= e!4344569 tp!2036322)))

(declare-fun b!7246077 () Bool)

(declare-fun tp_is_empty!46661 () Bool)

(declare-fun tp!2036324 () Bool)

(assert (=> b!7246077 (= e!4344570 (and tp_is_empty!46661 tp!2036324))))

(declare-fun lambda!443125 () Int)

(declare-fun b!7246078 () Bool)

(declare-fun getWitness!2152 ((Set Context!15076) Int) Context!15076)

(assert (=> b!7246078 (= e!4344574 (not (= ct1!232 (getWitness!2152 lt!2582738 lambda!443125))))))

(declare-fun b!7246079 () Bool)

(declare-fun tp!2036321 () Bool)

(assert (=> b!7246079 (= e!4344571 (and tp_is_empty!46661 tp!2036321))))

(declare-fun b!7246080 () Bool)

(declare-fun res!2939192 () Bool)

(assert (=> b!7246080 (=> (not res!2939192) (not e!4344572))))

(declare-fun s2!1849 () List!70391)

(assert (=> b!7246080 (= res!2939192 (matchZipper!3508 (set.insert ct2!328 (as set.empty (Set Context!15076))) s2!1849))))

(declare-fun b!7246081 () Bool)

(assert (=> b!7246081 (= e!4344572 e!4344574)))

(declare-fun res!2939195 () Bool)

(assert (=> b!7246081 (=> (not res!2939195) (not e!4344574))))

(assert (=> b!7246081 (= res!2939195 (and (not (is-Nil!70266 (exprs!8038 ct1!232))) (not (is-Cons!70267 s1!1971))))))

(declare-fun lt!2582737 () List!70390)

(declare-fun ++!16478 (List!70390 List!70390) List!70390)

(assert (=> b!7246081 (= lt!2582737 (++!16478 (exprs!8038 ct1!232) (exprs!8038 ct2!328)))))

(declare-datatypes ((Unit!163783 0))(
  ( (Unit!163784) )
))
(declare-fun lt!2582736 () Unit!163783)

(declare-fun lambda!443124 () Int)

(declare-fun lemmaConcatPreservesForall!1407 (List!70390 List!70390 Int) Unit!163783)

(assert (=> b!7246081 (= lt!2582736 (lemmaConcatPreservesForall!1407 (exprs!8038 ct1!232) (exprs!8038 ct2!328) lambda!443124))))

(assert (= (and start!704630 res!2939193) b!7246080))

(assert (= (and b!7246080 res!2939192) b!7246081))

(assert (= (and b!7246081 res!2939195) b!7246075))

(assert (= (and b!7246075 res!2939194) b!7246078))

(assert (= start!704630 b!7246076))

(assert (= (and start!704630 (is-Cons!70267 s1!1971)) b!7246077))

(assert (= (and start!704630 (is-Cons!70267 s2!1849)) b!7246079))

(assert (= start!704630 b!7246074))

(declare-fun m!7922790 () Bool)

(assert (=> b!7246078 m!7922790))

(declare-fun m!7922792 () Bool)

(assert (=> b!7246081 m!7922792))

(declare-fun m!7922794 () Bool)

(assert (=> b!7246081 m!7922794))

(declare-fun m!7922796 () Bool)

(assert (=> b!7246080 m!7922796))

(assert (=> b!7246080 m!7922796))

(declare-fun m!7922798 () Bool)

(assert (=> b!7246080 m!7922798))

(declare-fun m!7922800 () Bool)

(assert (=> start!704630 m!7922800))

(declare-fun m!7922802 () Bool)

(assert (=> start!704630 m!7922802))

(declare-fun m!7922804 () Bool)

(assert (=> start!704630 m!7922804))

(declare-fun m!7922806 () Bool)

(assert (=> start!704630 m!7922806))

(declare-fun m!7922808 () Bool)

(assert (=> b!7246075 m!7922808))

(push 1)

(assert (not b!7246079))

(assert (not b!7246074))

(assert (not b!7246078))

(assert (not b!7246077))

(assert (not b!7246075))

(assert (not start!704630))

(assert (not b!7246080))

(assert (not b!7246081))

(assert (not b!7246076))

(assert tp_is_empty!46661)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2251802 () Bool)

(declare-fun e!4344595 () Bool)

(assert (=> d!2251802 e!4344595))

(declare-fun res!2939210 () Bool)

(assert (=> d!2251802 (=> (not res!2939210) (not e!4344595))))

(declare-fun lt!2582750 () Context!15076)

(declare-fun dynLambda!28691 (Int Context!15076) Bool)

(assert (=> d!2251802 (= res!2939210 (dynLambda!28691 lambda!443125 lt!2582750))))

(declare-datatypes ((List!70394 0))(
  ( (Nil!70270) (Cons!70270 (h!76718 Context!15076) (t!384446 List!70394)) )
))
(declare-fun getWitness!2154 (List!70394 Int) Context!15076)

(declare-fun toList!11443 ((Set Context!15076)) List!70394)

(assert (=> d!2251802 (= lt!2582750 (getWitness!2154 (toList!11443 lt!2582738) lambda!443125))))

(declare-fun exists!4314 ((Set Context!15076) Int) Bool)

(assert (=> d!2251802 (exists!4314 lt!2582738 lambda!443125)))

(assert (=> d!2251802 (= (getWitness!2152 lt!2582738 lambda!443125) lt!2582750)))

(declare-fun b!7246108 () Bool)

(assert (=> b!7246108 (= e!4344595 (set.member lt!2582750 lt!2582738))))

(assert (= (and d!2251802 res!2939210) b!7246108))

(declare-fun b_lambda!278125 () Bool)

(assert (=> (not b_lambda!278125) (not d!2251802)))

(declare-fun m!7922830 () Bool)

(assert (=> d!2251802 m!7922830))

(declare-fun m!7922832 () Bool)

(assert (=> d!2251802 m!7922832))

(assert (=> d!2251802 m!7922832))

(declare-fun m!7922834 () Bool)

(assert (=> d!2251802 m!7922834))

(declare-fun m!7922836 () Bool)

(assert (=> d!2251802 m!7922836))

(declare-fun m!7922838 () Bool)

(assert (=> b!7246108 m!7922838))

(assert (=> b!7246078 d!2251802))

(declare-fun d!2251806 () Bool)

(declare-fun c!1346152 () Bool)

(declare-fun isEmpty!40478 (List!70391) Bool)

(assert (=> d!2251806 (= c!1346152 (isEmpty!40478 s2!1849))))

(declare-fun e!4344600 () Bool)

(assert (=> d!2251806 (= (matchZipper!3508 (set.insert ct2!328 (as set.empty (Set Context!15076))) s2!1849) e!4344600)))

(declare-fun b!7246117 () Bool)

(assert (=> b!7246117 (= e!4344600 (nullableZipper!2881 (set.insert ct2!328 (as set.empty (Set Context!15076)))))))

(declare-fun b!7246118 () Bool)

(declare-fun derivationStepZipper!3386 ((Set Context!15076) C!37470) (Set Context!15076))

(declare-fun head!14869 (List!70391) C!37470)

(declare-fun tail!14271 (List!70391) List!70391)

(assert (=> b!7246118 (= e!4344600 (matchZipper!3508 (derivationStepZipper!3386 (set.insert ct2!328 (as set.empty (Set Context!15076))) (head!14869 s2!1849)) (tail!14271 s2!1849)))))

(assert (= (and d!2251806 c!1346152) b!7246117))

(assert (= (and d!2251806 (not c!1346152)) b!7246118))

(declare-fun m!7922840 () Bool)

(assert (=> d!2251806 m!7922840))

(assert (=> b!7246117 m!7922796))

(declare-fun m!7922842 () Bool)

(assert (=> b!7246117 m!7922842))

(declare-fun m!7922844 () Bool)

(assert (=> b!7246118 m!7922844))

(assert (=> b!7246118 m!7922796))

(assert (=> b!7246118 m!7922844))

(declare-fun m!7922846 () Bool)

(assert (=> b!7246118 m!7922846))

(declare-fun m!7922848 () Bool)

(assert (=> b!7246118 m!7922848))

(assert (=> b!7246118 m!7922846))

(assert (=> b!7246118 m!7922848))

(declare-fun m!7922850 () Bool)

(assert (=> b!7246118 m!7922850))

(assert (=> b!7246080 d!2251806))

(declare-fun bs!1905222 () Bool)

(declare-fun d!2251808 () Bool)

(assert (= bs!1905222 (and d!2251808 b!7246078)))

(declare-fun lambda!443134 () Int)

(assert (=> bs!1905222 (= lambda!443134 lambda!443125)))

(assert (=> d!2251808 (= (nullableZipper!2881 lt!2582738) (exists!4314 lt!2582738 lambda!443134))))

(declare-fun bs!1905223 () Bool)

(assert (= bs!1905223 d!2251808))

(declare-fun m!7922852 () Bool)

(assert (=> bs!1905223 m!7922852))

(assert (=> b!7246075 d!2251808))

(declare-fun b!7246132 () Bool)

(declare-fun e!4344606 () Bool)

(declare-fun lt!2582753 () List!70390)

(assert (=> b!7246132 (= e!4344606 (or (not (= (exprs!8038 ct2!328) Nil!70266)) (= lt!2582753 (exprs!8038 ct1!232))))))

(declare-fun b!7246131 () Bool)

(declare-fun res!2939215 () Bool)

(assert (=> b!7246131 (=> (not res!2939215) (not e!4344606))))

(declare-fun size!41668 (List!70390) Int)

(assert (=> b!7246131 (= res!2939215 (= (size!41668 lt!2582753) (+ (size!41668 (exprs!8038 ct1!232)) (size!41668 (exprs!8038 ct2!328)))))))

(declare-fun b!7246129 () Bool)

(declare-fun e!4344607 () List!70390)

(assert (=> b!7246129 (= e!4344607 (exprs!8038 ct2!328))))

(declare-fun b!7246130 () Bool)

(assert (=> b!7246130 (= e!4344607 (Cons!70266 (h!76714 (exprs!8038 ct1!232)) (++!16478 (t!384442 (exprs!8038 ct1!232)) (exprs!8038 ct2!328))))))

(declare-fun d!2251810 () Bool)

(assert (=> d!2251810 e!4344606))

(declare-fun res!2939216 () Bool)

(assert (=> d!2251810 (=> (not res!2939216) (not e!4344606))))

(declare-fun content!14545 (List!70390) (Set Regex!18598))

(assert (=> d!2251810 (= res!2939216 (= (content!14545 lt!2582753) (set.union (content!14545 (exprs!8038 ct1!232)) (content!14545 (exprs!8038 ct2!328)))))))

(assert (=> d!2251810 (= lt!2582753 e!4344607)))

(declare-fun c!1346160 () Bool)

(assert (=> d!2251810 (= c!1346160 (is-Nil!70266 (exprs!8038 ct1!232)))))

(assert (=> d!2251810 (= (++!16478 (exprs!8038 ct1!232) (exprs!8038 ct2!328)) lt!2582753)))

(assert (= (and d!2251810 c!1346160) b!7246129))

(assert (= (and d!2251810 (not c!1346160)) b!7246130))

(assert (= (and d!2251810 res!2939216) b!7246131))

(assert (= (and b!7246131 res!2939215) b!7246132))

(declare-fun m!7922866 () Bool)

(assert (=> b!7246131 m!7922866))

(declare-fun m!7922868 () Bool)

(assert (=> b!7246131 m!7922868))

(declare-fun m!7922870 () Bool)

(assert (=> b!7246131 m!7922870))

(declare-fun m!7922872 () Bool)

(assert (=> b!7246130 m!7922872))

(declare-fun m!7922874 () Bool)

(assert (=> d!2251810 m!7922874))

(declare-fun m!7922876 () Bool)

(assert (=> d!2251810 m!7922876))

(declare-fun m!7922878 () Bool)

(assert (=> d!2251810 m!7922878))

(assert (=> b!7246081 d!2251810))

(declare-fun d!2251814 () Bool)

(declare-fun forall!17441 (List!70390 Int) Bool)

(assert (=> d!2251814 (forall!17441 (++!16478 (exprs!8038 ct1!232) (exprs!8038 ct2!328)) lambda!443124)))

(declare-fun lt!2582756 () Unit!163783)

(declare-fun choose!55904 (List!70390 List!70390 Int) Unit!163783)

(assert (=> d!2251814 (= lt!2582756 (choose!55904 (exprs!8038 ct1!232) (exprs!8038 ct2!328) lambda!443124))))

(assert (=> d!2251814 (forall!17441 (exprs!8038 ct1!232) lambda!443124)))

(assert (=> d!2251814 (= (lemmaConcatPreservesForall!1407 (exprs!8038 ct1!232) (exprs!8038 ct2!328) lambda!443124) lt!2582756)))

(declare-fun bs!1905226 () Bool)

(assert (= bs!1905226 d!2251814))

(assert (=> bs!1905226 m!7922792))

(assert (=> bs!1905226 m!7922792))

(declare-fun m!7922892 () Bool)

(assert (=> bs!1905226 m!7922892))

(declare-fun m!7922894 () Bool)

(assert (=> bs!1905226 m!7922894))

(declare-fun m!7922896 () Bool)

(assert (=> bs!1905226 m!7922896))

(assert (=> b!7246081 d!2251814))

(declare-fun d!2251820 () Bool)

(declare-fun c!1346162 () Bool)

(assert (=> d!2251820 (= c!1346162 (isEmpty!40478 s1!1971))))

(declare-fun e!4344609 () Bool)

(assert (=> d!2251820 (= (matchZipper!3508 lt!2582738 s1!1971) e!4344609)))

(declare-fun b!7246135 () Bool)

(assert (=> b!7246135 (= e!4344609 (nullableZipper!2881 lt!2582738))))

(declare-fun b!7246136 () Bool)

(assert (=> b!7246136 (= e!4344609 (matchZipper!3508 (derivationStepZipper!3386 lt!2582738 (head!14869 s1!1971)) (tail!14271 s1!1971)))))

(assert (= (and d!2251820 c!1346162) b!7246135))

(assert (= (and d!2251820 (not c!1346162)) b!7246136))

(declare-fun m!7922898 () Bool)

(assert (=> d!2251820 m!7922898))

(assert (=> b!7246135 m!7922808))

(declare-fun m!7922900 () Bool)

(assert (=> b!7246136 m!7922900))

(assert (=> b!7246136 m!7922900))

(declare-fun m!7922902 () Bool)

(assert (=> b!7246136 m!7922902))

(declare-fun m!7922904 () Bool)

(assert (=> b!7246136 m!7922904))

(assert (=> b!7246136 m!7922902))

(assert (=> b!7246136 m!7922904))

(declare-fun m!7922906 () Bool)

(assert (=> b!7246136 m!7922906))

(assert (=> start!704630 d!2251820))

(declare-fun bs!1905227 () Bool)

(declare-fun d!2251822 () Bool)

(assert (= bs!1905227 (and d!2251822 b!7246081)))

(declare-fun lambda!443142 () Int)

(assert (=> bs!1905227 (= lambda!443142 lambda!443124)))

(assert (=> d!2251822 (= (inv!89506 ct1!232) (forall!17441 (exprs!8038 ct1!232) lambda!443142))))

(declare-fun bs!1905228 () Bool)

(assert (= bs!1905228 d!2251822))

(declare-fun m!7922908 () Bool)

(assert (=> bs!1905228 m!7922908))

(assert (=> start!704630 d!2251822))

(declare-fun bs!1905230 () Bool)

(declare-fun d!2251824 () Bool)

(assert (= bs!1905230 (and d!2251824 b!7246081)))

(declare-fun lambda!443144 () Int)

(assert (=> bs!1905230 (= lambda!443144 lambda!443124)))

(declare-fun bs!1905231 () Bool)

(assert (= bs!1905231 (and d!2251824 d!2251822)))

(assert (=> bs!1905231 (= lambda!443144 lambda!443142)))

(assert (=> d!2251824 (= (inv!89506 ct2!328) (forall!17441 (exprs!8038 ct2!328) lambda!443144))))

(declare-fun bs!1905232 () Bool)

(assert (= bs!1905232 d!2251824))

(declare-fun m!7922910 () Bool)

(assert (=> bs!1905232 m!7922910))

(assert (=> start!704630 d!2251824))

(declare-fun b!7246141 () Bool)

(declare-fun e!4344612 () Bool)

(declare-fun tp!2036341 () Bool)

(declare-fun tp!2036342 () Bool)

(assert (=> b!7246141 (= e!4344612 (and tp!2036341 tp!2036342))))

(assert (=> b!7246076 (= tp!2036322 e!4344612)))

(assert (= (and b!7246076 (is-Cons!70266 (exprs!8038 ct1!232))) b!7246141))

(declare-fun b!7246146 () Bool)

(declare-fun e!4344615 () Bool)

(declare-fun tp!2036345 () Bool)

(assert (=> b!7246146 (= e!4344615 (and tp_is_empty!46661 tp!2036345))))

(assert (=> b!7246077 (= tp!2036324 e!4344615)))

(assert (= (and b!7246077 (is-Cons!70267 (t!384443 s1!1971))) b!7246146))

(declare-fun b!7246147 () Bool)

(declare-fun e!4344616 () Bool)

(declare-fun tp!2036346 () Bool)

(assert (=> b!7246147 (= e!4344616 (and tp_is_empty!46661 tp!2036346))))

(assert (=> b!7246079 (= tp!2036321 e!4344616)))

(assert (= (and b!7246079 (is-Cons!70267 (t!384443 s2!1849))) b!7246147))

(declare-fun b!7246148 () Bool)

(declare-fun e!4344617 () Bool)

(declare-fun tp!2036347 () Bool)

(declare-fun tp!2036348 () Bool)

(assert (=> b!7246148 (= e!4344617 (and tp!2036347 tp!2036348))))

(assert (=> b!7246074 (= tp!2036323 e!4344617)))

(assert (= (and b!7246074 (is-Cons!70266 (exprs!8038 ct2!328))) b!7246148))

(declare-fun b_lambda!278127 () Bool)

(assert (= b_lambda!278125 (or b!7246078 b_lambda!278127)))

(declare-fun bs!1905237 () Bool)

(declare-fun d!2251830 () Bool)

(assert (= bs!1905237 (and d!2251830 b!7246078)))

(declare-fun nullableContext!219 (Context!15076) Bool)

(assert (=> bs!1905237 (= (dynLambda!28691 lambda!443125 lt!2582750) (nullableContext!219 lt!2582750))))

(declare-fun m!7922916 () Bool)

(assert (=> bs!1905237 m!7922916))

(assert (=> d!2251802 d!2251830))

(push 1)

(assert tp_is_empty!46661)

(assert (not d!2251824))

(assert (not d!2251802))

(assert (not b!7246148))

(assert (not b!7246147))

(assert (not b!7246117))

(assert (not d!2251820))

(assert (not d!2251806))

(assert (not b!7246131))

(assert (not b!7246136))

(assert (not b!7246135))

(assert (not d!2251808))

(assert (not d!2251822))

(assert (not b!7246130))

(assert (not d!2251814))

(assert (not bs!1905237))

(assert (not d!2251810))

(assert (not b_lambda!278127))

(assert (not b!7246118))

(assert (not b!7246146))

(assert (not b!7246141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

