; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!677432 () Bool)

(assert start!677432)

(declare-fun b!7022098 () Bool)

(assert (=> b!7022098 true))

(declare-fun bs!1867822 () Bool)

(declare-fun b!7022095 () Bool)

(assert (= bs!1867822 (and b!7022095 b!7022098)))

(declare-fun lambda!411751 () Int)

(declare-fun lambda!411750 () Int)

(assert (=> bs!1867822 (not (= lambda!411751 lambda!411750))))

(declare-fun b!7022090 () Bool)

(declare-fun e!4221166 () Bool)

(declare-fun tp_is_empty!44033 () Bool)

(declare-fun tp!1934481 () Bool)

(assert (=> b!7022090 (= e!4221166 (and tp_is_empty!44033 tp!1934481))))

(declare-fun b!7022091 () Bool)

(declare-fun e!4221161 () Bool)

(declare-fun tp!1934479 () Bool)

(assert (=> b!7022091 (= e!4221161 tp!1934479)))

(declare-fun b!7022092 () Bool)

(declare-fun e!4221162 () Bool)

(declare-fun e!4221164 () Bool)

(assert (=> b!7022092 (= e!4221162 e!4221164)))

(declare-fun res!2866382 () Bool)

(assert (=> b!7022092 (=> (not res!2866382) (not e!4221164))))

(declare-datatypes ((C!35078 0))(
  ( (C!35079 (val!27241 Int)) )
))
(declare-datatypes ((Regex!17404 0))(
  ( (ElementMatch!17404 (c!1305071 C!35078)) (Concat!26249 (regOne!35320 Regex!17404) (regTwo!35320 Regex!17404)) (EmptyExpr!17404) (Star!17404 (reg!17733 Regex!17404)) (EmptyLang!17404) (Union!17404 (regOne!35321 Regex!17404) (regTwo!35321 Regex!17404)) )
))
(declare-datatypes ((List!67753 0))(
  ( (Nil!67629) (Cons!67629 (h!74077 Regex!17404) (t!381508 List!67753)) )
))
(declare-datatypes ((Context!12800 0))(
  ( (Context!12801 (exprs!6900 List!67753)) )
))
(declare-fun lt!2512340 () Context!12800)

(declare-fun nullableContext!64 (Context!12800) Bool)

(assert (=> b!7022092 (= res!2866382 (nullableContext!64 lt!2512340))))

(declare-fun lt!2512338 () (Set Context!12800))

(declare-fun lambda!411748 () Int)

(declare-fun getWitness!1380 ((Set Context!12800) Int) Context!12800)

(assert (=> b!7022092 (= lt!2512340 (getWitness!1380 lt!2512338 lambda!411748))))

(declare-fun b!7022093 () Bool)

(declare-fun res!2866387 () Bool)

(assert (=> b!7022093 (=> (not res!2866387) (not e!4221162))))

(declare-fun nullableZipper!2533 ((Set Context!12800)) Bool)

(assert (=> b!7022093 (= res!2866387 (nullableZipper!2533 lt!2512338))))

(declare-fun b!7022094 () Bool)

(declare-fun res!2866384 () Bool)

(assert (=> b!7022094 (=> (not res!2866384) (not e!4221162))))

(declare-fun exists!3298 ((Set Context!12800) Int) Bool)

(assert (=> b!7022094 (= res!2866384 (exists!3298 lt!2512338 lambda!411748))))

(declare-fun e!4221163 () Bool)

(declare-fun lt!2512339 () List!67753)

(declare-fun forall!16310 (List!67753 Int) Bool)

(assert (=> b!7022095 (= e!4221163 (not (forall!16310 lt!2512339 lambda!411751)))))

(declare-fun ct2!306 () Context!12800)

(declare-fun subseq!680 (List!67753 List!67753) Bool)

(assert (=> b!7022095 (subseq!680 (exprs!6900 ct2!306) lt!2512339)))

(declare-datatypes ((Unit!161474 0))(
  ( (Unit!161475) )
))
(declare-fun lt!2512342 () Unit!161474)

(declare-fun lt!2512343 () Context!12800)

(declare-fun lemmaConcatThenSecondSubseqOfTot!1 (List!67753 List!67753) Unit!161474)

(assert (=> b!7022095 (= lt!2512342 (lemmaConcatThenSecondSubseqOfTot!1 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(assert (=> b!7022095 (subseq!680 (exprs!6900 lt!2512343) lt!2512339)))

(declare-fun lt!2512344 () Unit!161474)

(declare-fun lemmaConcatThenFirstSubseqOfTot!1 (List!67753 List!67753) Unit!161474)

(assert (=> b!7022095 (= lt!2512344 (lemmaConcatThenFirstSubseqOfTot!1 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(declare-fun b!7022096 () Bool)

(declare-fun res!2866383 () Bool)

(assert (=> b!7022096 (=> (not res!2866383) (not e!4221162))))

(declare-datatypes ((List!67754 0))(
  ( (Nil!67630) (Cons!67630 (h!74078 C!35078) (t!381509 List!67754)) )
))
(declare-fun s!7408 () List!67754)

(assert (=> b!7022096 (= res!2866383 (not (is-Cons!67630 s!7408)))))

(declare-fun res!2866386 () Bool)

(assert (=> start!677432 (=> (not res!2866386) (not e!4221162))))

(declare-fun matchZipper!2944 ((Set Context!12800) List!67754) Bool)

(assert (=> start!677432 (= res!2866386 (matchZipper!2944 lt!2512338 s!7408))))

(declare-fun z1!570 () (Set Context!12800))

(declare-fun appendTo!525 ((Set Context!12800) Context!12800) (Set Context!12800))

(assert (=> start!677432 (= lt!2512338 (appendTo!525 z1!570 ct2!306))))

(assert (=> start!677432 e!4221162))

(declare-fun condSetEmpty!48779 () Bool)

(assert (=> start!677432 (= condSetEmpty!48779 (= z1!570 (as set.empty (Set Context!12800))))))

(declare-fun setRes!48779 () Bool)

(assert (=> start!677432 setRes!48779))

(declare-fun e!4221165 () Bool)

(declare-fun inv!86370 (Context!12800) Bool)

(assert (=> start!677432 (and (inv!86370 ct2!306) e!4221165)))

(assert (=> start!677432 e!4221166))

(declare-fun setElem!48779 () Context!12800)

(declare-fun tp!1934480 () Bool)

(declare-fun setNonEmpty!48779 () Bool)

(assert (=> setNonEmpty!48779 (= setRes!48779 (and tp!1934480 (inv!86370 setElem!48779) e!4221161))))

(declare-fun setRest!48779 () (Set Context!12800))

(assert (=> setNonEmpty!48779 (= z1!570 (set.union (set.insert setElem!48779 (as set.empty (Set Context!12800))) setRest!48779))))

(declare-fun setIsEmpty!48779 () Bool)

(assert (=> setIsEmpty!48779 setRes!48779))

(declare-fun b!7022097 () Bool)

(declare-fun tp!1934478 () Bool)

(assert (=> b!7022097 (= e!4221165 tp!1934478)))

(assert (=> b!7022098 (= e!4221164 e!4221163)))

(declare-fun res!2866385 () Bool)

(assert (=> b!7022098 (=> (not res!2866385) (not e!4221163))))

(assert (=> b!7022098 (= res!2866385 (= (Context!12801 lt!2512339) lt!2512340))))

(declare-fun ++!15439 (List!67753 List!67753) List!67753)

(assert (=> b!7022098 (= lt!2512339 (++!15439 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(declare-fun lt!2512341 () Unit!161474)

(declare-fun lemmaConcatPreservesForall!731 (List!67753 List!67753 Int) Unit!161474)

(assert (=> b!7022098 (= lt!2512341 (lemmaConcatPreservesForall!731 (exprs!6900 lt!2512343) (exprs!6900 ct2!306) lambda!411750))))

(declare-fun lambda!411749 () Int)

(declare-fun mapPost2!251 ((Set Context!12800) Int Context!12800) Context!12800)

(assert (=> b!7022098 (= lt!2512343 (mapPost2!251 z1!570 lambda!411749 lt!2512340))))

(assert (= (and start!677432 res!2866386) b!7022096))

(assert (= (and b!7022096 res!2866383) b!7022093))

(assert (= (and b!7022093 res!2866387) b!7022094))

(assert (= (and b!7022094 res!2866384) b!7022092))

(assert (= (and b!7022092 res!2866382) b!7022098))

(assert (= (and b!7022098 res!2866385) b!7022095))

(assert (= (and start!677432 condSetEmpty!48779) setIsEmpty!48779))

(assert (= (and start!677432 (not condSetEmpty!48779)) setNonEmpty!48779))

(assert (= setNonEmpty!48779 b!7022091))

(assert (= start!677432 b!7022097))

(assert (= (and start!677432 (is-Cons!67630 s!7408)) b!7022090))

(declare-fun m!7724066 () Bool)

(assert (=> start!677432 m!7724066))

(declare-fun m!7724068 () Bool)

(assert (=> start!677432 m!7724068))

(declare-fun m!7724070 () Bool)

(assert (=> start!677432 m!7724070))

(declare-fun m!7724072 () Bool)

(assert (=> b!7022095 m!7724072))

(declare-fun m!7724074 () Bool)

(assert (=> b!7022095 m!7724074))

(declare-fun m!7724076 () Bool)

(assert (=> b!7022095 m!7724076))

(declare-fun m!7724078 () Bool)

(assert (=> b!7022095 m!7724078))

(declare-fun m!7724080 () Bool)

(assert (=> b!7022095 m!7724080))

(declare-fun m!7724082 () Bool)

(assert (=> b!7022098 m!7724082))

(declare-fun m!7724084 () Bool)

(assert (=> b!7022098 m!7724084))

(declare-fun m!7724086 () Bool)

(assert (=> b!7022098 m!7724086))

(declare-fun m!7724088 () Bool)

(assert (=> b!7022094 m!7724088))

(declare-fun m!7724090 () Bool)

(assert (=> b!7022093 m!7724090))

(declare-fun m!7724092 () Bool)

(assert (=> setNonEmpty!48779 m!7724092))

(declare-fun m!7724094 () Bool)

(assert (=> b!7022092 m!7724094))

(declare-fun m!7724096 () Bool)

(assert (=> b!7022092 m!7724096))

(push 1)

(assert (not start!677432))

(assert (not b!7022098))

(assert tp_is_empty!44033)

(assert (not b!7022094))

(assert (not b!7022092))

(assert (not b!7022097))

(assert (not b!7022091))

(assert (not b!7022093))

(assert (not setNonEmpty!48779))

(assert (not b!7022090))

(assert (not b!7022095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2188936 () Bool)

(declare-fun c!1305081 () Bool)

(declare-fun isEmpty!39465 (List!67754) Bool)

(assert (=> d!2188936 (= c!1305081 (isEmpty!39465 s!7408))))

(declare-fun e!4221187 () Bool)

(assert (=> d!2188936 (= (matchZipper!2944 lt!2512338 s!7408) e!4221187)))

(declare-fun b!7022134 () Bool)

(assert (=> b!7022134 (= e!4221187 (nullableZipper!2533 lt!2512338))))

(declare-fun b!7022135 () Bool)

(declare-fun derivationStepZipper!2877 ((Set Context!12800) C!35078) (Set Context!12800))

(declare-fun head!14220 (List!67754) C!35078)

(declare-fun tail!13487 (List!67754) List!67754)

(assert (=> b!7022135 (= e!4221187 (matchZipper!2944 (derivationStepZipper!2877 lt!2512338 (head!14220 s!7408)) (tail!13487 s!7408)))))

(assert (= (and d!2188936 c!1305081) b!7022134))

(assert (= (and d!2188936 (not c!1305081)) b!7022135))

(declare-fun m!7724130 () Bool)

(assert (=> d!2188936 m!7724130))

(assert (=> b!7022134 m!7724090))

(declare-fun m!7724132 () Bool)

(assert (=> b!7022135 m!7724132))

(assert (=> b!7022135 m!7724132))

(declare-fun m!7724134 () Bool)

(assert (=> b!7022135 m!7724134))

(declare-fun m!7724136 () Bool)

(assert (=> b!7022135 m!7724136))

(assert (=> b!7022135 m!7724134))

(assert (=> b!7022135 m!7724136))

(declare-fun m!7724138 () Bool)

(assert (=> b!7022135 m!7724138))

(assert (=> start!677432 d!2188936))

(declare-fun bs!1867824 () Bool)

(declare-fun d!2188938 () Bool)

(assert (= bs!1867824 (and d!2188938 b!7022098)))

(declare-fun lambda!411772 () Int)

(assert (=> bs!1867824 (= lambda!411772 lambda!411749)))

(assert (=> d!2188938 true))

(declare-fun map!15694 ((Set Context!12800) Int) (Set Context!12800))

(assert (=> d!2188938 (= (appendTo!525 z1!570 ct2!306) (map!15694 z1!570 lambda!411772))))

(declare-fun bs!1867825 () Bool)

(assert (= bs!1867825 d!2188938))

(declare-fun m!7724140 () Bool)

(assert (=> bs!1867825 m!7724140))

(assert (=> start!677432 d!2188938))

(declare-fun bs!1867826 () Bool)

(declare-fun d!2188940 () Bool)

(assert (= bs!1867826 (and d!2188940 b!7022098)))

(declare-fun lambda!411775 () Int)

(assert (=> bs!1867826 (= lambda!411775 lambda!411750)))

(declare-fun bs!1867827 () Bool)

(assert (= bs!1867827 (and d!2188940 b!7022095)))

(assert (=> bs!1867827 (not (= lambda!411775 lambda!411751))))

(assert (=> d!2188940 (= (inv!86370 ct2!306) (forall!16310 (exprs!6900 ct2!306) lambda!411775))))

(declare-fun bs!1867828 () Bool)

(assert (= bs!1867828 d!2188940))

(declare-fun m!7724142 () Bool)

(assert (=> bs!1867828 m!7724142))

(assert (=> start!677432 d!2188940))

(declare-fun bs!1867829 () Bool)

(declare-fun d!2188944 () Bool)

(assert (= bs!1867829 (and d!2188944 b!7022098)))

(declare-fun lambda!411776 () Int)

(assert (=> bs!1867829 (= lambda!411776 lambda!411750)))

(declare-fun bs!1867830 () Bool)

(assert (= bs!1867830 (and d!2188944 b!7022095)))

(assert (=> bs!1867830 (not (= lambda!411776 lambda!411751))))

(declare-fun bs!1867831 () Bool)

(assert (= bs!1867831 (and d!2188944 d!2188940)))

(assert (=> bs!1867831 (= lambda!411776 lambda!411775)))

(assert (=> d!2188944 (= (inv!86370 setElem!48779) (forall!16310 (exprs!6900 setElem!48779) lambda!411776))))

(declare-fun bs!1867832 () Bool)

(assert (= bs!1867832 d!2188944))

(declare-fun m!7724144 () Bool)

(assert (=> bs!1867832 m!7724144))

(assert (=> setNonEmpty!48779 d!2188944))

(declare-fun b!7022146 () Bool)

(declare-fun res!2866413 () Bool)

(declare-fun e!4221193 () Bool)

(assert (=> b!7022146 (=> (not res!2866413) (not e!4221193))))

(declare-fun lt!2512375 () List!67753)

(declare-fun size!41026 (List!67753) Int)

(assert (=> b!7022146 (= res!2866413 (= (size!41026 lt!2512375) (+ (size!41026 (exprs!6900 lt!2512343)) (size!41026 (exprs!6900 ct2!306)))))))

(declare-fun b!7022147 () Bool)

(assert (=> b!7022147 (= e!4221193 (or (not (= (exprs!6900 ct2!306) Nil!67629)) (= lt!2512375 (exprs!6900 lt!2512343))))))

(declare-fun b!7022145 () Bool)

(declare-fun e!4221192 () List!67753)

(assert (=> b!7022145 (= e!4221192 (Cons!67629 (h!74077 (exprs!6900 lt!2512343)) (++!15439 (t!381508 (exprs!6900 lt!2512343)) (exprs!6900 ct2!306))))))

(declare-fun d!2188946 () Bool)

(assert (=> d!2188946 e!4221193))

(declare-fun res!2866412 () Bool)

(assert (=> d!2188946 (=> (not res!2866412) (not e!4221193))))

(declare-fun content!13466 (List!67753) (Set Regex!17404))

(assert (=> d!2188946 (= res!2866412 (= (content!13466 lt!2512375) (set.union (content!13466 (exprs!6900 lt!2512343)) (content!13466 (exprs!6900 ct2!306)))))))

(assert (=> d!2188946 (= lt!2512375 e!4221192)))

(declare-fun c!1305085 () Bool)

(assert (=> d!2188946 (= c!1305085 (is-Nil!67629 (exprs!6900 lt!2512343)))))

(assert (=> d!2188946 (= (++!15439 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)) lt!2512375)))

(declare-fun b!7022144 () Bool)

(assert (=> b!7022144 (= e!4221192 (exprs!6900 ct2!306))))

(assert (= (and d!2188946 c!1305085) b!7022144))

(assert (= (and d!2188946 (not c!1305085)) b!7022145))

(assert (= (and d!2188946 res!2866412) b!7022146))

(assert (= (and b!7022146 res!2866413) b!7022147))

(declare-fun m!7724152 () Bool)

(assert (=> b!7022146 m!7724152))

(declare-fun m!7724154 () Bool)

(assert (=> b!7022146 m!7724154))

(declare-fun m!7724156 () Bool)

(assert (=> b!7022146 m!7724156))

(declare-fun m!7724158 () Bool)

(assert (=> b!7022145 m!7724158))

(declare-fun m!7724160 () Bool)

(assert (=> d!2188946 m!7724160))

(declare-fun m!7724162 () Bool)

(assert (=> d!2188946 m!7724162))

(declare-fun m!7724164 () Bool)

(assert (=> d!2188946 m!7724164))

(assert (=> b!7022098 d!2188946))

(declare-fun d!2188950 () Bool)

(assert (=> d!2188950 (forall!16310 (++!15439 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)) lambda!411750)))

(declare-fun lt!2512378 () Unit!161474)

(declare-fun choose!52990 (List!67753 List!67753 Int) Unit!161474)

(assert (=> d!2188950 (= lt!2512378 (choose!52990 (exprs!6900 lt!2512343) (exprs!6900 ct2!306) lambda!411750))))

(assert (=> d!2188950 (forall!16310 (exprs!6900 lt!2512343) lambda!411750)))

(assert (=> d!2188950 (= (lemmaConcatPreservesForall!731 (exprs!6900 lt!2512343) (exprs!6900 ct2!306) lambda!411750) lt!2512378)))

(declare-fun bs!1867834 () Bool)

(assert (= bs!1867834 d!2188950))

(assert (=> bs!1867834 m!7724082))

(assert (=> bs!1867834 m!7724082))

(declare-fun m!7724166 () Bool)

(assert (=> bs!1867834 m!7724166))

(declare-fun m!7724168 () Bool)

(assert (=> bs!1867834 m!7724168))

(declare-fun m!7724170 () Bool)

(assert (=> bs!1867834 m!7724170))

(assert (=> b!7022098 d!2188950))

(declare-fun d!2188952 () Bool)

(declare-fun e!4221196 () Bool)

(assert (=> d!2188952 e!4221196))

(declare-fun res!2866416 () Bool)

(assert (=> d!2188952 (=> (not res!2866416) (not e!4221196))))

(declare-fun lt!2512381 () Context!12800)

(declare-fun dynLambda!27251 (Int Context!12800) Context!12800)

(assert (=> d!2188952 (= res!2866416 (= lt!2512340 (dynLambda!27251 lambda!411749 lt!2512381)))))

(declare-fun choose!52991 ((Set Context!12800) Int Context!12800) Context!12800)

(assert (=> d!2188952 (= lt!2512381 (choose!52991 z1!570 lambda!411749 lt!2512340))))

(assert (=> d!2188952 (set.member lt!2512340 (map!15694 z1!570 lambda!411749))))

(assert (=> d!2188952 (= (mapPost2!251 z1!570 lambda!411749 lt!2512340) lt!2512381)))

(declare-fun b!7022151 () Bool)

(assert (=> b!7022151 (= e!4221196 (set.member lt!2512381 z1!570))))

(assert (= (and d!2188952 res!2866416) b!7022151))

(declare-fun b_lambda!265243 () Bool)

(assert (=> (not b_lambda!265243) (not d!2188952)))

(declare-fun m!7724174 () Bool)

(assert (=> d!2188952 m!7724174))

(declare-fun m!7724176 () Bool)

(assert (=> d!2188952 m!7724176))

(declare-fun m!7724178 () Bool)

(assert (=> d!2188952 m!7724178))

(declare-fun m!7724180 () Bool)

(assert (=> d!2188952 m!7724180))

(declare-fun m!7724182 () Bool)

(assert (=> b!7022151 m!7724182))

(assert (=> b!7022098 d!2188952))

(declare-fun d!2188956 () Bool)

(declare-fun res!2866421 () Bool)

(declare-fun e!4221201 () Bool)

(assert (=> d!2188956 (=> res!2866421 e!4221201)))

(assert (=> d!2188956 (= res!2866421 (is-Nil!67629 lt!2512339))))

(assert (=> d!2188956 (= (forall!16310 lt!2512339 lambda!411751) e!4221201)))

(declare-fun b!7022156 () Bool)

(declare-fun e!4221202 () Bool)

(assert (=> b!7022156 (= e!4221201 e!4221202)))

(declare-fun res!2866422 () Bool)

(assert (=> b!7022156 (=> (not res!2866422) (not e!4221202))))

(declare-fun dynLambda!27252 (Int Regex!17404) Bool)

(assert (=> b!7022156 (= res!2866422 (dynLambda!27252 lambda!411751 (h!74077 lt!2512339)))))

(declare-fun b!7022157 () Bool)

(assert (=> b!7022157 (= e!4221202 (forall!16310 (t!381508 lt!2512339) lambda!411751))))

(assert (= (and d!2188956 (not res!2866421)) b!7022156))

(assert (= (and b!7022156 res!2866422) b!7022157))

(declare-fun b_lambda!265245 () Bool)

(assert (=> (not b_lambda!265245) (not b!7022156)))

(declare-fun m!7724184 () Bool)

(assert (=> b!7022156 m!7724184))

(declare-fun m!7724186 () Bool)

(assert (=> b!7022157 m!7724186))

(assert (=> b!7022095 d!2188956))

(declare-fun b!7022167 () Bool)

(declare-fun e!4221211 () Bool)

(declare-fun e!4221213 () Bool)

(assert (=> b!7022167 (= e!4221211 e!4221213)))

(declare-fun res!2866432 () Bool)

(assert (=> b!7022167 (=> res!2866432 e!4221213)))

(declare-fun e!4221212 () Bool)

(assert (=> b!7022167 (= res!2866432 e!4221212)))

(declare-fun res!2866433 () Bool)

(assert (=> b!7022167 (=> (not res!2866433) (not e!4221212))))

(assert (=> b!7022167 (= res!2866433 (= (h!74077 (exprs!6900 ct2!306)) (h!74077 lt!2512339)))))

(declare-fun b!7022169 () Bool)

(assert (=> b!7022169 (= e!4221213 (subseq!680 (exprs!6900 ct2!306) (t!381508 lt!2512339)))))

(declare-fun d!2188958 () Bool)

(declare-fun res!2866431 () Bool)

(declare-fun e!4221214 () Bool)

(assert (=> d!2188958 (=> res!2866431 e!4221214)))

(assert (=> d!2188958 (= res!2866431 (is-Nil!67629 (exprs!6900 ct2!306)))))

(assert (=> d!2188958 (= (subseq!680 (exprs!6900 ct2!306) lt!2512339) e!4221214)))

(declare-fun b!7022168 () Bool)

(assert (=> b!7022168 (= e!4221212 (subseq!680 (t!381508 (exprs!6900 ct2!306)) (t!381508 lt!2512339)))))

(declare-fun b!7022166 () Bool)

(assert (=> b!7022166 (= e!4221214 e!4221211)))

(declare-fun res!2866434 () Bool)

(assert (=> b!7022166 (=> (not res!2866434) (not e!4221211))))

(assert (=> b!7022166 (= res!2866434 (is-Cons!67629 lt!2512339))))

(assert (= (and d!2188958 (not res!2866431)) b!7022166))

(assert (= (and b!7022166 res!2866434) b!7022167))

(assert (= (and b!7022167 res!2866433) b!7022168))

(assert (= (and b!7022167 (not res!2866432)) b!7022169))

(declare-fun m!7724190 () Bool)

(assert (=> b!7022169 m!7724190))

(declare-fun m!7724192 () Bool)

(assert (=> b!7022168 m!7724192))

(assert (=> b!7022095 d!2188958))

(declare-fun d!2188962 () Bool)

(assert (=> d!2188962 (subseq!680 (exprs!6900 ct2!306) (++!15439 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(declare-fun lt!2512384 () Unit!161474)

(declare-fun choose!52992 (List!67753 List!67753) Unit!161474)

(assert (=> d!2188962 (= lt!2512384 (choose!52992 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(assert (=> d!2188962 (= (lemmaConcatThenSecondSubseqOfTot!1 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)) lt!2512384)))

(declare-fun bs!1867840 () Bool)

(assert (= bs!1867840 d!2188962))

(assert (=> bs!1867840 m!7724082))

(assert (=> bs!1867840 m!7724082))

(declare-fun m!7724194 () Bool)

(assert (=> bs!1867840 m!7724194))

(declare-fun m!7724196 () Bool)

(assert (=> bs!1867840 m!7724196))

(assert (=> b!7022095 d!2188962))

(declare-fun b!7022171 () Bool)

(declare-fun e!4221215 () Bool)

(declare-fun e!4221217 () Bool)

(assert (=> b!7022171 (= e!4221215 e!4221217)))

(declare-fun res!2866436 () Bool)

(assert (=> b!7022171 (=> res!2866436 e!4221217)))

(declare-fun e!4221216 () Bool)

(assert (=> b!7022171 (= res!2866436 e!4221216)))

(declare-fun res!2866437 () Bool)

(assert (=> b!7022171 (=> (not res!2866437) (not e!4221216))))

(assert (=> b!7022171 (= res!2866437 (= (h!74077 (exprs!6900 lt!2512343)) (h!74077 lt!2512339)))))

(declare-fun b!7022173 () Bool)

(assert (=> b!7022173 (= e!4221217 (subseq!680 (exprs!6900 lt!2512343) (t!381508 lt!2512339)))))

(declare-fun d!2188964 () Bool)

(declare-fun res!2866435 () Bool)

(declare-fun e!4221218 () Bool)

(assert (=> d!2188964 (=> res!2866435 e!4221218)))

(assert (=> d!2188964 (= res!2866435 (is-Nil!67629 (exprs!6900 lt!2512343)))))

(assert (=> d!2188964 (= (subseq!680 (exprs!6900 lt!2512343) lt!2512339) e!4221218)))

(declare-fun b!7022172 () Bool)

(assert (=> b!7022172 (= e!4221216 (subseq!680 (t!381508 (exprs!6900 lt!2512343)) (t!381508 lt!2512339)))))

(declare-fun b!7022170 () Bool)

(assert (=> b!7022170 (= e!4221218 e!4221215)))

(declare-fun res!2866438 () Bool)

(assert (=> b!7022170 (=> (not res!2866438) (not e!4221215))))

(assert (=> b!7022170 (= res!2866438 (is-Cons!67629 lt!2512339))))

(assert (= (and d!2188964 (not res!2866435)) b!7022170))

(assert (= (and b!7022170 res!2866438) b!7022171))

(assert (= (and b!7022171 res!2866437) b!7022172))

(assert (= (and b!7022171 (not res!2866436)) b!7022173))

(declare-fun m!7724198 () Bool)

(assert (=> b!7022173 m!7724198))

(declare-fun m!7724200 () Bool)

(assert (=> b!7022172 m!7724200))

(assert (=> b!7022095 d!2188964))

(declare-fun d!2188966 () Bool)

(assert (=> d!2188966 (subseq!680 (exprs!6900 lt!2512343) (++!15439 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(declare-fun lt!2512387 () Unit!161474)

(declare-fun choose!52993 (List!67753 List!67753) Unit!161474)

(assert (=> d!2188966 (= lt!2512387 (choose!52993 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)))))

(assert (=> d!2188966 (= (lemmaConcatThenFirstSubseqOfTot!1 (exprs!6900 lt!2512343) (exprs!6900 ct2!306)) lt!2512387)))

(declare-fun bs!1867841 () Bool)

(assert (= bs!1867841 d!2188966))

(assert (=> bs!1867841 m!7724082))

(assert (=> bs!1867841 m!7724082))

(declare-fun m!7724202 () Bool)

(assert (=> bs!1867841 m!7724202))

(declare-fun m!7724204 () Bool)

(assert (=> bs!1867841 m!7724204))

(assert (=> b!7022095 d!2188966))

(declare-fun d!2188968 () Bool)

(declare-fun lt!2512390 () Bool)

(declare-datatypes ((List!67757 0))(
  ( (Nil!67633) (Cons!67633 (h!74081 Context!12800) (t!381512 List!67757)) )
))
(declare-fun exists!3300 (List!67757 Int) Bool)

(declare-fun toList!10760 ((Set Context!12800)) List!67757)

(assert (=> d!2188968 (= lt!2512390 (exists!3300 (toList!10760 lt!2512338) lambda!411748))))

(declare-fun choose!52994 ((Set Context!12800) Int) Bool)

(assert (=> d!2188968 (= lt!2512390 (choose!52994 lt!2512338 lambda!411748))))

(assert (=> d!2188968 (= (exists!3298 lt!2512338 lambda!411748) lt!2512390)))

(declare-fun bs!1867842 () Bool)

(assert (= bs!1867842 d!2188968))

(declare-fun m!7724206 () Bool)

(assert (=> bs!1867842 m!7724206))

(assert (=> bs!1867842 m!7724206))

(declare-fun m!7724208 () Bool)

(assert (=> bs!1867842 m!7724208))

(declare-fun m!7724210 () Bool)

(assert (=> bs!1867842 m!7724210))

(assert (=> b!7022094 d!2188968))

(declare-fun bs!1867843 () Bool)

(declare-fun d!2188970 () Bool)

(assert (= bs!1867843 (and d!2188970 b!7022094)))

(declare-fun lambda!411785 () Int)

(assert (=> bs!1867843 (= lambda!411785 lambda!411748)))

(assert (=> d!2188970 (= (nullableZipper!2533 lt!2512338) (exists!3298 lt!2512338 lambda!411785))))

(declare-fun bs!1867844 () Bool)

(assert (= bs!1867844 d!2188970))

(declare-fun m!7724222 () Bool)

(assert (=> bs!1867844 m!7724222))

(assert (=> b!7022093 d!2188970))

(declare-fun bs!1867845 () Bool)

(declare-fun d!2188974 () Bool)

(assert (= bs!1867845 (and d!2188974 b!7022098)))

(declare-fun lambda!411788 () Int)

(assert (=> bs!1867845 (not (= lambda!411788 lambda!411750))))

(declare-fun bs!1867846 () Bool)

(assert (= bs!1867846 (and d!2188974 b!7022095)))

(assert (=> bs!1867846 (= lambda!411788 lambda!411751)))

(declare-fun bs!1867847 () Bool)

(assert (= bs!1867847 (and d!2188974 d!2188940)))

(assert (=> bs!1867847 (not (= lambda!411788 lambda!411775))))

(declare-fun bs!1867848 () Bool)

(assert (= bs!1867848 (and d!2188974 d!2188944)))

(assert (=> bs!1867848 (not (= lambda!411788 lambda!411776))))

(assert (=> d!2188974 (= (nullableContext!64 lt!2512340) (forall!16310 (exprs!6900 lt!2512340) lambda!411788))))

(declare-fun bs!1867849 () Bool)

(assert (= bs!1867849 d!2188974))

(declare-fun m!7724224 () Bool)

(assert (=> bs!1867849 m!7724224))

(assert (=> b!7022092 d!2188974))

(declare-fun d!2188976 () Bool)

(declare-fun e!4221224 () Bool)

(assert (=> d!2188976 e!4221224))

(declare-fun res!2866441 () Bool)

(assert (=> d!2188976 (=> (not res!2866441) (not e!4221224))))

(declare-fun lt!2512393 () Context!12800)

(declare-fun dynLambda!27253 (Int Context!12800) Bool)

(assert (=> d!2188976 (= res!2866441 (dynLambda!27253 lambda!411748 lt!2512393))))

(declare-fun getWitness!1382 (List!67757 Int) Context!12800)

(assert (=> d!2188976 (= lt!2512393 (getWitness!1382 (toList!10760 lt!2512338) lambda!411748))))

(assert (=> d!2188976 (exists!3298 lt!2512338 lambda!411748)))

(assert (=> d!2188976 (= (getWitness!1380 lt!2512338 lambda!411748) lt!2512393)))

(declare-fun b!7022182 () Bool)

(assert (=> b!7022182 (= e!4221224 (set.member lt!2512393 lt!2512338))))

(assert (= (and d!2188976 res!2866441) b!7022182))

(declare-fun b_lambda!265247 () Bool)

(assert (=> (not b_lambda!265247) (not d!2188976)))

(declare-fun m!7724226 () Bool)

(assert (=> d!2188976 m!7724226))

(assert (=> d!2188976 m!7724206))

(assert (=> d!2188976 m!7724206))

(declare-fun m!7724228 () Bool)

(assert (=> d!2188976 m!7724228))

(assert (=> d!2188976 m!7724088))

(declare-fun m!7724230 () Bool)

(assert (=> b!7022182 m!7724230))

(assert (=> b!7022092 d!2188976))

(declare-fun condSetEmpty!48785 () Bool)

(assert (=> setNonEmpty!48779 (= condSetEmpty!48785 (= setRest!48779 (as set.empty (Set Context!12800))))))

(declare-fun setRes!48785 () Bool)

(assert (=> setNonEmpty!48779 (= tp!1934480 setRes!48785)))

(declare-fun setIsEmpty!48785 () Bool)

(assert (=> setIsEmpty!48785 setRes!48785))

(declare-fun setElem!48785 () Context!12800)

(declare-fun setNonEmpty!48785 () Bool)

(declare-fun tp!1934498 () Bool)

(declare-fun e!4221227 () Bool)

(assert (=> setNonEmpty!48785 (= setRes!48785 (and tp!1934498 (inv!86370 setElem!48785) e!4221227))))

(declare-fun setRest!48785 () (Set Context!12800))

(assert (=> setNonEmpty!48785 (= setRest!48779 (set.union (set.insert setElem!48785 (as set.empty (Set Context!12800))) setRest!48785))))

(declare-fun b!7022187 () Bool)

(declare-fun tp!1934499 () Bool)

(assert (=> b!7022187 (= e!4221227 tp!1934499)))

(assert (= (and setNonEmpty!48779 condSetEmpty!48785) setIsEmpty!48785))

(assert (= (and setNonEmpty!48779 (not condSetEmpty!48785)) setNonEmpty!48785))

(assert (= setNonEmpty!48785 b!7022187))

(declare-fun m!7724232 () Bool)

(assert (=> setNonEmpty!48785 m!7724232))

(declare-fun b!7022192 () Bool)

(declare-fun e!4221230 () Bool)

(declare-fun tp!1934504 () Bool)

(declare-fun tp!1934505 () Bool)

(assert (=> b!7022192 (= e!4221230 (and tp!1934504 tp!1934505))))

(assert (=> b!7022091 (= tp!1934479 e!4221230)))

(assert (= (and b!7022091 (is-Cons!67629 (exprs!6900 setElem!48779))) b!7022192))

(declare-fun b!7022197 () Bool)

(declare-fun e!4221233 () Bool)

(declare-fun tp!1934508 () Bool)

(assert (=> b!7022197 (= e!4221233 (and tp_is_empty!44033 tp!1934508))))

(assert (=> b!7022090 (= tp!1934481 e!4221233)))

(assert (= (and b!7022090 (is-Cons!67630 (t!381509 s!7408))) b!7022197))

(declare-fun b!7022198 () Bool)

(declare-fun e!4221234 () Bool)

(declare-fun tp!1934509 () Bool)

(declare-fun tp!1934510 () Bool)

(assert (=> b!7022198 (= e!4221234 (and tp!1934509 tp!1934510))))

(assert (=> b!7022097 (= tp!1934478 e!4221234)))

(assert (= (and b!7022097 (is-Cons!67629 (exprs!6900 ct2!306))) b!7022198))

(declare-fun b_lambda!265249 () Bool)

(assert (= b_lambda!265247 (or b!7022094 b_lambda!265249)))

(declare-fun bs!1867850 () Bool)

(declare-fun d!2188978 () Bool)

(assert (= bs!1867850 (and d!2188978 b!7022094)))

(assert (=> bs!1867850 (= (dynLambda!27253 lambda!411748 lt!2512393) (nullableContext!64 lt!2512393))))

(declare-fun m!7724234 () Bool)

(assert (=> bs!1867850 m!7724234))

(assert (=> d!2188976 d!2188978))

(declare-fun b_lambda!265251 () Bool)

(assert (= b_lambda!265243 (or b!7022098 b_lambda!265251)))

(declare-fun bs!1867851 () Bool)

(declare-fun d!2188980 () Bool)

(assert (= bs!1867851 (and d!2188980 b!7022098)))

(declare-fun lt!2512396 () Unit!161474)

(assert (=> bs!1867851 (= lt!2512396 (lemmaConcatPreservesForall!731 (exprs!6900 lt!2512381) (exprs!6900 ct2!306) lambda!411750))))

(assert (=> bs!1867851 (= (dynLambda!27251 lambda!411749 lt!2512381) (Context!12801 (++!15439 (exprs!6900 lt!2512381) (exprs!6900 ct2!306))))))

(declare-fun m!7724236 () Bool)

(assert (=> bs!1867851 m!7724236))

(declare-fun m!7724238 () Bool)

(assert (=> bs!1867851 m!7724238))

(assert (=> d!2188952 d!2188980))

(declare-fun b_lambda!265253 () Bool)

(assert (= b_lambda!265245 (or b!7022095 b_lambda!265253)))

(declare-fun bs!1867852 () Bool)

(declare-fun d!2188982 () Bool)

(assert (= bs!1867852 (and d!2188982 b!7022095)))

(declare-fun nullable!7140 (Regex!17404) Bool)

(assert (=> bs!1867852 (= (dynLambda!27252 lambda!411751 (h!74077 lt!2512339)) (nullable!7140 (h!74077 lt!2512339)))))

(declare-fun m!7724240 () Bool)

(assert (=> bs!1867852 m!7724240))

(assert (=> b!7022156 d!2188982))

(push 1)

(assert (not b!7022146))

(assert (not b!7022192))

(assert (not b!7022173))

(assert (not b!7022157))

(assert (not b!7022169))

(assert (not bs!1867851))

(assert (not d!2188938))

(assert (not b!7022187))

(assert (not d!2188946))

(assert (not b!7022135))

(assert (not b_lambda!265253))

(assert (not d!2188944))

(assert tp_is_empty!44033)

(assert (not b_lambda!265249))

(assert (not d!2188962))

(assert (not d!2188974))

(assert (not d!2188968))

(assert (not bs!1867852))

(assert (not b!7022168))

(assert (not d!2188952))

(assert (not setNonEmpty!48785))

(assert (not b!7022197))

(assert (not d!2188970))

(assert (not d!2188966))

(assert (not d!2188940))

(assert (not d!2188976))

(assert (not b_lambda!265251))

(assert (not b!7022172))

(assert (not b!7022145))

(assert (not b!7022198))

(assert (not bs!1867850))

(assert (not b!7022134))

(assert (not d!2188950))

(assert (not d!2188936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

