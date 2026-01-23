; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711432 () Bool)

(assert start!711432)

(declare-fun b!7297085 () Bool)

(assert (=> b!7297085 true))

(declare-fun b!7297082 () Bool)

(declare-fun e!4370518 () Bool)

(declare-fun e!4370512 () Bool)

(assert (=> b!7297082 (= e!4370518 e!4370512)))

(declare-fun res!2951394 () Bool)

(assert (=> b!7297082 (=> res!2951394 e!4370512)))

(declare-datatypes ((C!38022 0))(
  ( (C!38023 (val!28959 Int)) )
))
(declare-datatypes ((Regex!18874 0))(
  ( (ElementMatch!18874 (c!1356381 C!38022)) (Concat!27719 (regOne!38260 Regex!18874) (regTwo!38260 Regex!18874)) (EmptyExpr!18874) (Star!18874 (reg!19203 Regex!18874)) (EmptyLang!18874) (Union!18874 (regOne!38261 Regex!18874) (regTwo!38261 Regex!18874)) )
))
(declare-datatypes ((List!71065 0))(
  ( (Nil!70941) (Cons!70941 (h!77389 Regex!18874) (t!385141 List!71065)) )
))
(declare-datatypes ((Context!15628 0))(
  ( (Context!15629 (exprs!8314 List!71065)) )
))
(declare-fun lt!2598788 () (Set Context!15628))

(declare-fun lt!2598781 () (Set Context!15628))

(assert (=> b!7297082 (= res!2951394 (not (= lt!2598788 lt!2598781)))))

(declare-fun lt!2598776 () (Set Context!15628))

(declare-fun lt!2598787 () (Set Context!15628))

(assert (=> b!7297082 (= lt!2598781 (set.union lt!2598776 lt!2598787))))

(declare-fun lt!2598779 () Context!15628)

(declare-datatypes ((List!71066 0))(
  ( (Nil!70942) (Cons!70942 (h!77390 C!38022) (t!385142 List!71066)) )
))
(declare-fun s!7854 () List!71066)

(declare-fun derivationStepZipperUp!2624 (Context!15628 C!38022) (Set Context!15628))

(assert (=> b!7297082 (= lt!2598787 (derivationStepZipperUp!2624 lt!2598779 (h!77390 s!7854)))))

(declare-fun ct1!250 () Context!15628)

(declare-fun derivationStepZipperDown!2780 (Regex!18874 Context!15628 C!38022) (Set Context!15628))

(assert (=> b!7297082 (= lt!2598776 (derivationStepZipperDown!2780 (h!77389 (exprs!8314 ct1!250)) lt!2598779 (h!77390 s!7854)))))

(declare-fun lt!2598772 () List!71065)

(declare-fun ct2!346 () Context!15628)

(declare-fun ++!16764 (List!71065 List!71065) List!71065)

(assert (=> b!7297082 (= lt!2598779 (Context!15629 (++!16764 lt!2598772 (exprs!8314 ct2!346))))))

(declare-datatypes ((Unit!164346 0))(
  ( (Unit!164347) )
))
(declare-fun lt!2598774 () Unit!164346)

(declare-fun lambda!450744 () Int)

(declare-fun lemmaConcatPreservesForall!1621 (List!71065 List!71065 Int) Unit!164346)

(assert (=> b!7297082 (= lt!2598774 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598778 () Unit!164346)

(assert (=> b!7297082 (= lt!2598778 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun res!2951386 () Bool)

(declare-fun e!4370511 () Bool)

(assert (=> start!711432 (=> (not res!2951386) (not e!4370511))))

(declare-fun matchZipper!3778 ((Set Context!15628) List!71066) Bool)

(assert (=> start!711432 (= res!2951386 (matchZipper!3778 (set.insert ct2!346 (as set.empty (Set Context!15628))) s!7854))))

(assert (=> start!711432 e!4370511))

(declare-fun e!4370515 () Bool)

(declare-fun inv!90196 (Context!15628) Bool)

(assert (=> start!711432 (and (inv!90196 ct2!346) e!4370515)))

(declare-fun e!4370514 () Bool)

(assert (=> start!711432 e!4370514))

(declare-fun e!4370516 () Bool)

(assert (=> start!711432 (and (inv!90196 ct1!250) e!4370516)))

(declare-fun b!7297083 () Bool)

(declare-fun res!2951387 () Bool)

(assert (=> b!7297083 (=> (not res!2951387) (not e!4370511))))

(declare-fun nullableContext!364 (Context!15628) Bool)

(assert (=> b!7297083 (= res!2951387 (nullableContext!364 ct1!250))))

(declare-fun b!7297084 () Bool)

(declare-fun res!2951393 () Bool)

(declare-fun e!4370513 () Bool)

(assert (=> b!7297084 (=> res!2951393 e!4370513)))

(assert (=> b!7297084 (= res!2951393 (not (is-Cons!70941 (exprs!8314 ct1!250))))))

(assert (=> b!7297085 (= e!4370511 (not e!4370513))))

(declare-fun res!2951391 () Bool)

(assert (=> b!7297085 (=> res!2951391 e!4370513)))

(declare-fun lt!2598768 () (Set Context!15628))

(declare-fun derivationStepZipper!3607 ((Set Context!15628) C!38022) (Set Context!15628))

(assert (=> b!7297085 (= res!2951391 (not (= lt!2598788 (derivationStepZipper!3607 lt!2598768 (h!77390 s!7854)))))))

(declare-fun lt!2598759 () Unit!164346)

(assert (=> b!7297085 (= lt!2598759 (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lambda!450745 () Int)

(declare-fun lt!2598761 () Context!15628)

(declare-fun flatMap!2969 ((Set Context!15628) Int) (Set Context!15628))

(assert (=> b!7297085 (= (flatMap!2969 lt!2598768 lambda!450745) (derivationStepZipperUp!2624 lt!2598761 (h!77390 s!7854)))))

(declare-fun lt!2598758 () Unit!164346)

(declare-fun lemmaFlatMapOnSingletonSet!2367 ((Set Context!15628) Context!15628 Int) Unit!164346)

(assert (=> b!7297085 (= lt!2598758 (lemmaFlatMapOnSingletonSet!2367 lt!2598768 lt!2598761 lambda!450745))))

(assert (=> b!7297085 (= lt!2598768 (set.insert lt!2598761 (as set.empty (Set Context!15628))))))

(declare-fun lt!2598763 () Unit!164346)

(assert (=> b!7297085 (= lt!2598763 (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598777 () Unit!164346)

(assert (=> b!7297085 (= lt!2598777 (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598789 () (Set Context!15628))

(assert (=> b!7297085 (= (flatMap!2969 lt!2598789 lambda!450745) (derivationStepZipperUp!2624 ct1!250 (h!77390 s!7854)))))

(declare-fun lt!2598770 () Unit!164346)

(assert (=> b!7297085 (= lt!2598770 (lemmaFlatMapOnSingletonSet!2367 lt!2598789 ct1!250 lambda!450745))))

(assert (=> b!7297085 (= lt!2598789 (set.insert ct1!250 (as set.empty (Set Context!15628))))))

(assert (=> b!7297085 (= lt!2598788 (derivationStepZipperUp!2624 lt!2598761 (h!77390 s!7854)))))

(assert (=> b!7297085 (= lt!2598761 (Context!15629 (++!16764 (exprs!8314 ct1!250) (exprs!8314 ct2!346))))))

(declare-fun lt!2598769 () Unit!164346)

(assert (=> b!7297085 (= lt!2598769 (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(declare-fun b!7297086 () Bool)

(declare-fun tp!2062521 () Bool)

(assert (=> b!7297086 (= e!4370516 tp!2062521)))

(declare-fun b!7297087 () Bool)

(declare-fun res!2951390 () Bool)

(assert (=> b!7297087 (=> (not res!2951390) (not e!4370511))))

(assert (=> b!7297087 (= res!2951390 (is-Cons!70942 s!7854))))

(declare-fun b!7297088 () Bool)

(declare-fun tp!2062523 () Bool)

(assert (=> b!7297088 (= e!4370515 tp!2062523)))

(declare-fun b!7297089 () Bool)

(assert (=> b!7297089 (= e!4370513 e!4370518)))

(declare-fun res!2951392 () Bool)

(assert (=> b!7297089 (=> res!2951392 e!4370518)))

(declare-fun nullable!8051 (Regex!18874) Bool)

(assert (=> b!7297089 (= res!2951392 (not (nullable!8051 (h!77389 (exprs!8314 ct1!250)))))))

(declare-fun lt!2598764 () (Set Context!15628))

(assert (=> b!7297089 (= lt!2598764 (derivationStepZipperUp!2624 ct1!250 (h!77390 s!7854)))))

(declare-fun lt!2598786 () Context!15628)

(assert (=> b!7297089 (= lt!2598786 (Context!15629 lt!2598772))))

(declare-fun tail!14595 (List!71065) List!71065)

(assert (=> b!7297089 (= lt!2598772 (tail!14595 (exprs!8314 ct1!250)))))

(declare-fun b!7297090 () Bool)

(declare-fun e!4370517 () Bool)

(assert (=> b!7297090 (= e!4370512 e!4370517)))

(declare-fun res!2951388 () Bool)

(assert (=> b!7297090 (=> res!2951388 e!4370517)))

(assert (=> b!7297090 (= res!2951388 (not (matchZipper!3778 lt!2598787 (t!385142 s!7854))))))

(declare-fun lt!2598767 () Unit!164346)

(assert (=> b!7297090 (= lt!2598767 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598782 () (Set Context!15628))

(assert (=> b!7297090 (= (flatMap!2969 lt!2598782 lambda!450745) (derivationStepZipperUp!2624 lt!2598779 (h!77390 s!7854)))))

(declare-fun lt!2598783 () Unit!164346)

(assert (=> b!7297090 (= lt!2598783 (lemmaFlatMapOnSingletonSet!2367 lt!2598782 lt!2598779 lambda!450745))))

(declare-fun lt!2598766 () Unit!164346)

(assert (=> b!7297090 (= lt!2598766 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598785 () Unit!164346)

(assert (=> b!7297090 (= lt!2598785 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598773 () Unit!164346)

(assert (=> b!7297090 (= lt!2598773 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(assert (=> b!7297090 (matchZipper!3778 lt!2598782 s!7854)))

(assert (=> b!7297090 (= lt!2598782 (set.insert lt!2598779 (as set.empty (Set Context!15628))))))

(declare-fun lt!2598765 () Unit!164346)

(assert (=> b!7297090 (= lt!2598765 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598784 () Unit!164346)

(declare-fun lemmaPrependingNullableCtxStillMatches!57 (Context!15628 Context!15628 List!71066) Unit!164346)

(assert (=> b!7297090 (= lt!2598784 (lemmaPrependingNullableCtxStillMatches!57 lt!2598786 ct2!346 s!7854))))

(declare-fun b!7297091 () Bool)

(assert (=> b!7297091 (= e!4370517 (inv!90196 lt!2598761))))

(declare-fun lt!2598760 () Unit!164346)

(assert (=> b!7297091 (= lt!2598760 (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(assert (=> b!7297091 (matchZipper!3778 lt!2598781 (t!385142 s!7854))))

(declare-fun lt!2598762 () Bool)

(assert (=> b!7297091 (= lt!2598762 (matchZipper!3778 lt!2598776 (t!385142 s!7854)))))

(declare-fun lt!2598771 () Unit!164346)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1781 ((Set Context!15628) (Set Context!15628) List!71066) Unit!164346)

(assert (=> b!7297091 (= lt!2598771 (lemmaZipperConcatMatchesSameAsBothZippers!1781 lt!2598776 lt!2598787 (t!385142 s!7854)))))

(declare-fun lt!2598780 () Unit!164346)

(assert (=> b!7297091 (= lt!2598780 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun lt!2598775 () Unit!164346)

(assert (=> b!7297091 (= lt!2598775 (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(declare-fun b!7297092 () Bool)

(declare-fun res!2951389 () Bool)

(assert (=> b!7297092 (=> res!2951389 e!4370513)))

(declare-fun isEmpty!40812 (List!71065) Bool)

(assert (=> b!7297092 (= res!2951389 (isEmpty!40812 (exprs!8314 ct1!250)))))

(declare-fun b!7297093 () Bool)

(declare-fun tp_is_empty!47213 () Bool)

(declare-fun tp!2062522 () Bool)

(assert (=> b!7297093 (= e!4370514 (and tp_is_empty!47213 tp!2062522))))

(declare-fun b!7297094 () Bool)

(declare-fun res!2951395 () Bool)

(assert (=> b!7297094 (=> res!2951395 e!4370518)))

(assert (=> b!7297094 (= res!2951395 (not (= lt!2598764 (set.union (derivationStepZipperDown!2780 (h!77389 (exprs!8314 ct1!250)) lt!2598786 (h!77390 s!7854)) (derivationStepZipperUp!2624 lt!2598786 (h!77390 s!7854))))))))

(assert (= (and start!711432 res!2951386) b!7297083))

(assert (= (and b!7297083 res!2951387) b!7297087))

(assert (= (and b!7297087 res!2951390) b!7297085))

(assert (= (and b!7297085 (not res!2951391)) b!7297084))

(assert (= (and b!7297084 (not res!2951393)) b!7297092))

(assert (= (and b!7297092 (not res!2951389)) b!7297089))

(assert (= (and b!7297089 (not res!2951392)) b!7297094))

(assert (= (and b!7297094 (not res!2951395)) b!7297082))

(assert (= (and b!7297082 (not res!2951394)) b!7297090))

(assert (= (and b!7297090 (not res!2951388)) b!7297091))

(assert (= start!711432 b!7297088))

(assert (= (and start!711432 (is-Cons!70942 s!7854)) b!7297093))

(assert (= start!711432 b!7297086))

(declare-fun m!7969106 () Bool)

(assert (=> b!7297089 m!7969106))

(declare-fun m!7969108 () Bool)

(assert (=> b!7297089 m!7969108))

(declare-fun m!7969110 () Bool)

(assert (=> b!7297089 m!7969110))

(declare-fun m!7969112 () Bool)

(assert (=> start!711432 m!7969112))

(assert (=> start!711432 m!7969112))

(declare-fun m!7969114 () Bool)

(assert (=> start!711432 m!7969114))

(declare-fun m!7969116 () Bool)

(assert (=> start!711432 m!7969116))

(declare-fun m!7969118 () Bool)

(assert (=> start!711432 m!7969118))

(declare-fun m!7969120 () Bool)

(assert (=> b!7297083 m!7969120))

(declare-fun m!7969122 () Bool)

(assert (=> b!7297092 m!7969122))

(declare-fun m!7969124 () Bool)

(assert (=> b!7297094 m!7969124))

(declare-fun m!7969126 () Bool)

(assert (=> b!7297094 m!7969126))

(declare-fun m!7969128 () Bool)

(assert (=> b!7297085 m!7969128))

(declare-fun m!7969130 () Bool)

(assert (=> b!7297085 m!7969130))

(declare-fun m!7969132 () Bool)

(assert (=> b!7297085 m!7969132))

(declare-fun m!7969134 () Bool)

(assert (=> b!7297085 m!7969134))

(assert (=> b!7297085 m!7969108))

(assert (=> b!7297085 m!7969134))

(declare-fun m!7969136 () Bool)

(assert (=> b!7297085 m!7969136))

(assert (=> b!7297085 m!7969134))

(declare-fun m!7969138 () Bool)

(assert (=> b!7297085 m!7969138))

(declare-fun m!7969140 () Bool)

(assert (=> b!7297085 m!7969140))

(declare-fun m!7969142 () Bool)

(assert (=> b!7297085 m!7969142))

(declare-fun m!7969144 () Bool)

(assert (=> b!7297085 m!7969144))

(assert (=> b!7297085 m!7969134))

(declare-fun m!7969146 () Bool)

(assert (=> b!7297085 m!7969146))

(declare-fun m!7969148 () Bool)

(assert (=> b!7297091 m!7969148))

(declare-fun m!7969150 () Bool)

(assert (=> b!7297091 m!7969150))

(declare-fun m!7969152 () Bool)

(assert (=> b!7297091 m!7969152))

(assert (=> b!7297091 m!7969134))

(assert (=> b!7297091 m!7969150))

(declare-fun m!7969154 () Bool)

(assert (=> b!7297091 m!7969154))

(declare-fun m!7969156 () Bool)

(assert (=> b!7297091 m!7969156))

(declare-fun m!7969158 () Bool)

(assert (=> b!7297082 m!7969158))

(declare-fun m!7969160 () Bool)

(assert (=> b!7297082 m!7969160))

(declare-fun m!7969162 () Bool)

(assert (=> b!7297082 m!7969162))

(assert (=> b!7297082 m!7969150))

(assert (=> b!7297082 m!7969150))

(assert (=> b!7297090 m!7969150))

(assert (=> b!7297090 m!7969158))

(assert (=> b!7297090 m!7969150))

(declare-fun m!7969164 () Bool)

(assert (=> b!7297090 m!7969164))

(declare-fun m!7969166 () Bool)

(assert (=> b!7297090 m!7969166))

(declare-fun m!7969168 () Bool)

(assert (=> b!7297090 m!7969168))

(declare-fun m!7969170 () Bool)

(assert (=> b!7297090 m!7969170))

(assert (=> b!7297090 m!7969150))

(assert (=> b!7297090 m!7969150))

(declare-fun m!7969172 () Bool)

(assert (=> b!7297090 m!7969172))

(assert (=> b!7297090 m!7969150))

(declare-fun m!7969174 () Bool)

(assert (=> b!7297090 m!7969174))

(push 1)

(assert (not b!7297093))

(assert tp_is_empty!47213)

(assert (not b!7297083))

(assert (not b!7297092))

(assert (not b!7297094))

(assert (not b!7297091))

(assert (not b!7297082))

(assert (not b!7297088))

(assert (not start!711432))

(assert (not b!7297089))

(assert (not b!7297085))

(assert (not b!7297086))

(assert (not b!7297090))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2267318 () Bool)

(declare-fun c!1356391 () Bool)

(declare-fun isEmpty!40814 (List!71066) Bool)

(assert (=> d!2267318 (= c!1356391 (isEmpty!40814 s!7854))))

(declare-fun e!4370545 () Bool)

(assert (=> d!2267318 (= (matchZipper!3778 (set.insert ct2!346 (as set.empty (Set Context!15628))) s!7854) e!4370545)))

(declare-fun b!7297142 () Bool)

(declare-fun nullableZipper!3064 ((Set Context!15628)) Bool)

(assert (=> b!7297142 (= e!4370545 (nullableZipper!3064 (set.insert ct2!346 (as set.empty (Set Context!15628)))))))

(declare-fun b!7297143 () Bool)

(declare-fun head!15062 (List!71066) C!38022)

(declare-fun tail!14597 (List!71066) List!71066)

(assert (=> b!7297143 (= e!4370545 (matchZipper!3778 (derivationStepZipper!3607 (set.insert ct2!346 (as set.empty (Set Context!15628))) (head!15062 s!7854)) (tail!14597 s!7854)))))

(assert (= (and d!2267318 c!1356391) b!7297142))

(assert (= (and d!2267318 (not c!1356391)) b!7297143))

(declare-fun m!7969246 () Bool)

(assert (=> d!2267318 m!7969246))

(assert (=> b!7297142 m!7969112))

(declare-fun m!7969248 () Bool)

(assert (=> b!7297142 m!7969248))

(declare-fun m!7969250 () Bool)

(assert (=> b!7297143 m!7969250))

(assert (=> b!7297143 m!7969112))

(assert (=> b!7297143 m!7969250))

(declare-fun m!7969252 () Bool)

(assert (=> b!7297143 m!7969252))

(declare-fun m!7969254 () Bool)

(assert (=> b!7297143 m!7969254))

(assert (=> b!7297143 m!7969252))

(assert (=> b!7297143 m!7969254))

(declare-fun m!7969256 () Bool)

(assert (=> b!7297143 m!7969256))

(assert (=> start!711432 d!2267318))

(declare-fun bs!1913189 () Bool)

(declare-fun d!2267320 () Bool)

(assert (= bs!1913189 (and d!2267320 b!7297085)))

(declare-fun lambda!450784 () Int)

(assert (=> bs!1913189 (= lambda!450784 lambda!450744)))

(declare-fun forall!17695 (List!71065 Int) Bool)

(assert (=> d!2267320 (= (inv!90196 ct2!346) (forall!17695 (exprs!8314 ct2!346) lambda!450784))))

(declare-fun bs!1913190 () Bool)

(assert (= bs!1913190 d!2267320))

(declare-fun m!7969258 () Bool)

(assert (=> bs!1913190 m!7969258))

(assert (=> start!711432 d!2267320))

(declare-fun bs!1913191 () Bool)

(declare-fun d!2267322 () Bool)

(assert (= bs!1913191 (and d!2267322 b!7297085)))

(declare-fun lambda!450785 () Int)

(assert (=> bs!1913191 (= lambda!450785 lambda!450744)))

(declare-fun bs!1913192 () Bool)

(assert (= bs!1913192 (and d!2267322 d!2267320)))

(assert (=> bs!1913192 (= lambda!450785 lambda!450784)))

(assert (=> d!2267322 (= (inv!90196 ct1!250) (forall!17695 (exprs!8314 ct1!250) lambda!450785))))

(declare-fun bs!1913193 () Bool)

(assert (= bs!1913193 d!2267322))

(declare-fun m!7969260 () Bool)

(assert (=> bs!1913193 m!7969260))

(assert (=> start!711432 d!2267322))

(declare-fun d!2267324 () Bool)

(assert (=> d!2267324 (= (isEmpty!40812 (exprs!8314 ct1!250)) (is-Nil!70941 (exprs!8314 ct1!250)))))

(assert (=> b!7297092 d!2267324))

(declare-fun d!2267326 () Bool)

(assert (=> d!2267326 (forall!17695 (++!16764 lt!2598772 (exprs!8314 ct2!346)) lambda!450744)))

(declare-fun lt!2598888 () Unit!164346)

(declare-fun choose!56554 (List!71065 List!71065 Int) Unit!164346)

(assert (=> d!2267326 (= lt!2598888 (choose!56554 lt!2598772 (exprs!8314 ct2!346) lambda!450744))))

(assert (=> d!2267326 (forall!17695 lt!2598772 lambda!450744)))

(assert (=> d!2267326 (= (lemmaConcatPreservesForall!1621 lt!2598772 (exprs!8314 ct2!346) lambda!450744) lt!2598888)))

(declare-fun bs!1913194 () Bool)

(assert (= bs!1913194 d!2267326))

(assert (=> bs!1913194 m!7969162))

(assert (=> bs!1913194 m!7969162))

(declare-fun m!7969262 () Bool)

(assert (=> bs!1913194 m!7969262))

(declare-fun m!7969264 () Bool)

(assert (=> bs!1913194 m!7969264))

(declare-fun m!7969266 () Bool)

(assert (=> bs!1913194 m!7969266))

(assert (=> b!7297082 d!2267326))

(declare-fun d!2267328 () Bool)

(declare-fun e!4370551 () Bool)

(assert (=> d!2267328 e!4370551))

(declare-fun res!2951431 () Bool)

(assert (=> d!2267328 (=> (not res!2951431) (not e!4370551))))

(declare-fun lt!2598891 () List!71065)

(declare-fun content!14822 (List!71065) (Set Regex!18874))

(assert (=> d!2267328 (= res!2951431 (= (content!14822 lt!2598891) (set.union (content!14822 lt!2598772) (content!14822 (exprs!8314 ct2!346)))))))

(declare-fun e!4370550 () List!71065)

(assert (=> d!2267328 (= lt!2598891 e!4370550)))

(declare-fun c!1356394 () Bool)

(assert (=> d!2267328 (= c!1356394 (is-Nil!70941 lt!2598772))))

(assert (=> d!2267328 (= (++!16764 lt!2598772 (exprs!8314 ct2!346)) lt!2598891)))

(declare-fun b!7297155 () Bool)

(assert (=> b!7297155 (= e!4370551 (or (not (= (exprs!8314 ct2!346) Nil!70941)) (= lt!2598891 lt!2598772)))))

(declare-fun b!7297154 () Bool)

(declare-fun res!2951430 () Bool)

(assert (=> b!7297154 (=> (not res!2951430) (not e!4370551))))

(declare-fun size!41868 (List!71065) Int)

(assert (=> b!7297154 (= res!2951430 (= (size!41868 lt!2598891) (+ (size!41868 lt!2598772) (size!41868 (exprs!8314 ct2!346)))))))

(declare-fun b!7297152 () Bool)

(assert (=> b!7297152 (= e!4370550 (exprs!8314 ct2!346))))

(declare-fun b!7297153 () Bool)

(assert (=> b!7297153 (= e!4370550 (Cons!70941 (h!77389 lt!2598772) (++!16764 (t!385141 lt!2598772) (exprs!8314 ct2!346))))))

(assert (= (and d!2267328 c!1356394) b!7297152))

(assert (= (and d!2267328 (not c!1356394)) b!7297153))

(assert (= (and d!2267328 res!2951431) b!7297154))

(assert (= (and b!7297154 res!2951430) b!7297155))

(declare-fun m!7969268 () Bool)

(assert (=> d!2267328 m!7969268))

(declare-fun m!7969270 () Bool)

(assert (=> d!2267328 m!7969270))

(declare-fun m!7969272 () Bool)

(assert (=> d!2267328 m!7969272))

(declare-fun m!7969274 () Bool)

(assert (=> b!7297154 m!7969274))

(declare-fun m!7969276 () Bool)

(assert (=> b!7297154 m!7969276))

(declare-fun m!7969278 () Bool)

(assert (=> b!7297154 m!7969278))

(declare-fun m!7969280 () Bool)

(assert (=> b!7297153 m!7969280))

(assert (=> b!7297082 d!2267328))

(declare-fun b!7297166 () Bool)

(declare-fun e!4370560 () Bool)

(assert (=> b!7297166 (= e!4370560 (nullable!8051 (h!77389 (exprs!8314 lt!2598779))))))

(declare-fun b!7297167 () Bool)

(declare-fun e!4370558 () (Set Context!15628))

(declare-fun call!664954 () (Set Context!15628))

(assert (=> b!7297167 (= e!4370558 call!664954)))

(declare-fun bm!664949 () Bool)

(assert (=> bm!664949 (= call!664954 (derivationStepZipperDown!2780 (h!77389 (exprs!8314 lt!2598779)) (Context!15629 (t!385141 (exprs!8314 lt!2598779))) (h!77390 s!7854)))))

(declare-fun b!7297168 () Bool)

(declare-fun e!4370559 () (Set Context!15628))

(assert (=> b!7297168 (= e!4370559 e!4370558)))

(declare-fun c!1356399 () Bool)

(assert (=> b!7297168 (= c!1356399 (is-Cons!70941 (exprs!8314 lt!2598779)))))

(declare-fun b!7297169 () Bool)

(assert (=> b!7297169 (= e!4370559 (set.union call!664954 (derivationStepZipperUp!2624 (Context!15629 (t!385141 (exprs!8314 lt!2598779))) (h!77390 s!7854))))))

(declare-fun d!2267330 () Bool)

(declare-fun c!1356400 () Bool)

(assert (=> d!2267330 (= c!1356400 e!4370560)))

(declare-fun res!2951434 () Bool)

(assert (=> d!2267330 (=> (not res!2951434) (not e!4370560))))

(assert (=> d!2267330 (= res!2951434 (is-Cons!70941 (exprs!8314 lt!2598779)))))

(assert (=> d!2267330 (= (derivationStepZipperUp!2624 lt!2598779 (h!77390 s!7854)) e!4370559)))

(declare-fun b!7297170 () Bool)

(assert (=> b!7297170 (= e!4370558 (as set.empty (Set Context!15628)))))

(assert (= (and d!2267330 res!2951434) b!7297166))

(assert (= (and d!2267330 c!1356400) b!7297169))

(assert (= (and d!2267330 (not c!1356400)) b!7297168))

(assert (= (and b!7297168 c!1356399) b!7297167))

(assert (= (and b!7297168 (not c!1356399)) b!7297170))

(assert (= (or b!7297169 b!7297167) bm!664949))

(declare-fun m!7969282 () Bool)

(assert (=> b!7297166 m!7969282))

(declare-fun m!7969284 () Bool)

(assert (=> bm!664949 m!7969284))

(declare-fun m!7969286 () Bool)

(assert (=> b!7297169 m!7969286))

(assert (=> b!7297082 d!2267330))

(declare-fun b!7297193 () Bool)

(declare-fun c!1356411 () Bool)

(assert (=> b!7297193 (= c!1356411 (is-Star!18874 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun e!4370574 () (Set Context!15628))

(declare-fun e!4370576 () (Set Context!15628))

(assert (=> b!7297193 (= e!4370574 e!4370576)))

(declare-fun b!7297194 () Bool)

(declare-fun c!1356413 () Bool)

(declare-fun e!4370578 () Bool)

(assert (=> b!7297194 (= c!1356413 e!4370578)))

(declare-fun res!2951437 () Bool)

(assert (=> b!7297194 (=> (not res!2951437) (not e!4370578))))

(assert (=> b!7297194 (= res!2951437 (is-Concat!27719 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun e!4370575 () (Set Context!15628))

(declare-fun e!4370577 () (Set Context!15628))

(assert (=> b!7297194 (= e!4370575 e!4370577)))

(declare-fun b!7297195 () Bool)

(assert (=> b!7297195 (= e!4370577 e!4370574)))

(declare-fun c!1356414 () Bool)

(assert (=> b!7297195 (= c!1356414 (is-Concat!27719 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun bm!664962 () Bool)

(declare-fun call!664969 () (Set Context!15628))

(declare-fun call!664972 () (Set Context!15628))

(assert (=> bm!664962 (= call!664969 call!664972)))

(declare-fun b!7297196 () Bool)

(declare-fun call!664967 () (Set Context!15628))

(assert (=> b!7297196 (= e!4370575 (set.union call!664967 call!664972))))

(declare-fun b!7297197 () Bool)

(assert (=> b!7297197 (= e!4370578 (nullable!8051 (regOne!38260 (h!77389 (exprs!8314 ct1!250)))))))

(declare-fun b!7297198 () Bool)

(declare-fun e!4370573 () (Set Context!15628))

(assert (=> b!7297198 (= e!4370573 e!4370575)))

(declare-fun c!1356415 () Bool)

(assert (=> b!7297198 (= c!1356415 (is-Union!18874 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun bm!664963 () Bool)

(declare-fun call!664971 () List!71065)

(declare-fun $colon$colon!3003 (List!71065 Regex!18874) List!71065)

(assert (=> bm!664963 (= call!664971 ($colon$colon!3003 (exprs!8314 lt!2598779) (ite (or c!1356413 c!1356414) (regTwo!38260 (h!77389 (exprs!8314 ct1!250))) (h!77389 (exprs!8314 ct1!250)))))))

(declare-fun b!7297200 () Bool)

(declare-fun call!664968 () (Set Context!15628))

(assert (=> b!7297200 (= e!4370574 call!664968)))

(declare-fun bm!664964 () Bool)

(declare-fun call!664970 () List!71065)

(assert (=> bm!664964 (= call!664972 (derivationStepZipperDown!2780 (ite c!1356415 (regTwo!38261 (h!77389 (exprs!8314 ct1!250))) (ite c!1356413 (regTwo!38260 (h!77389 (exprs!8314 ct1!250))) (ite c!1356414 (regOne!38260 (h!77389 (exprs!8314 ct1!250))) (reg!19203 (h!77389 (exprs!8314 ct1!250)))))) (ite (or c!1356415 c!1356413) lt!2598779 (Context!15629 call!664970)) (h!77390 s!7854)))))

(declare-fun bm!664965 () Bool)

(assert (=> bm!664965 (= call!664968 call!664969)))

(declare-fun bm!664966 () Bool)

(assert (=> bm!664966 (= call!664970 call!664971)))

(declare-fun d!2267332 () Bool)

(declare-fun c!1356412 () Bool)

(assert (=> d!2267332 (= c!1356412 (and (is-ElementMatch!18874 (h!77389 (exprs!8314 ct1!250))) (= (c!1356381 (h!77389 (exprs!8314 ct1!250))) (h!77390 s!7854))))))

(assert (=> d!2267332 (= (derivationStepZipperDown!2780 (h!77389 (exprs!8314 ct1!250)) lt!2598779 (h!77390 s!7854)) e!4370573)))

(declare-fun b!7297199 () Bool)

(assert (=> b!7297199 (= e!4370576 (as set.empty (Set Context!15628)))))

(declare-fun bm!664967 () Bool)

(assert (=> bm!664967 (= call!664967 (derivationStepZipperDown!2780 (ite c!1356415 (regOne!38261 (h!77389 (exprs!8314 ct1!250))) (regOne!38260 (h!77389 (exprs!8314 ct1!250)))) (ite c!1356415 lt!2598779 (Context!15629 call!664971)) (h!77390 s!7854)))))

(declare-fun b!7297201 () Bool)

(assert (=> b!7297201 (= e!4370577 (set.union call!664967 call!664969))))

(declare-fun b!7297202 () Bool)

(assert (=> b!7297202 (= e!4370576 call!664968)))

(declare-fun b!7297203 () Bool)

(assert (=> b!7297203 (= e!4370573 (set.insert lt!2598779 (as set.empty (Set Context!15628))))))

(assert (= (and d!2267332 c!1356412) b!7297203))

(assert (= (and d!2267332 (not c!1356412)) b!7297198))

(assert (= (and b!7297198 c!1356415) b!7297196))

(assert (= (and b!7297198 (not c!1356415)) b!7297194))

(assert (= (and b!7297194 res!2951437) b!7297197))

(assert (= (and b!7297194 c!1356413) b!7297201))

(assert (= (and b!7297194 (not c!1356413)) b!7297195))

(assert (= (and b!7297195 c!1356414) b!7297200))

(assert (= (and b!7297195 (not c!1356414)) b!7297193))

(assert (= (and b!7297193 c!1356411) b!7297202))

(assert (= (and b!7297193 (not c!1356411)) b!7297199))

(assert (= (or b!7297200 b!7297202) bm!664966))

(assert (= (or b!7297200 b!7297202) bm!664965))

(assert (= (or b!7297201 bm!664966) bm!664963))

(assert (= (or b!7297201 bm!664965) bm!664962))

(assert (= (or b!7297196 b!7297201) bm!664967))

(assert (= (or b!7297196 bm!664962) bm!664964))

(declare-fun m!7969288 () Bool)

(assert (=> b!7297197 m!7969288))

(declare-fun m!7969290 () Bool)

(assert (=> bm!664963 m!7969290))

(declare-fun m!7969292 () Bool)

(assert (=> bm!664964 m!7969292))

(declare-fun m!7969294 () Bool)

(assert (=> bm!664967 m!7969294))

(assert (=> b!7297203 m!7969170))

(assert (=> b!7297082 d!2267332))

(assert (=> b!7297091 d!2267326))

(declare-fun d!2267334 () Bool)

(declare-fun c!1356416 () Bool)

(assert (=> d!2267334 (= c!1356416 (isEmpty!40814 (t!385142 s!7854)))))

(declare-fun e!4370579 () Bool)

(assert (=> d!2267334 (= (matchZipper!3778 lt!2598781 (t!385142 s!7854)) e!4370579)))

(declare-fun b!7297204 () Bool)

(assert (=> b!7297204 (= e!4370579 (nullableZipper!3064 lt!2598781))))

(declare-fun b!7297205 () Bool)

(assert (=> b!7297205 (= e!4370579 (matchZipper!3778 (derivationStepZipper!3607 lt!2598781 (head!15062 (t!385142 s!7854))) (tail!14597 (t!385142 s!7854))))))

(assert (= (and d!2267334 c!1356416) b!7297204))

(assert (= (and d!2267334 (not c!1356416)) b!7297205))

(declare-fun m!7969296 () Bool)

(assert (=> d!2267334 m!7969296))

(declare-fun m!7969298 () Bool)

(assert (=> b!7297204 m!7969298))

(declare-fun m!7969300 () Bool)

(assert (=> b!7297205 m!7969300))

(assert (=> b!7297205 m!7969300))

(declare-fun m!7969302 () Bool)

(assert (=> b!7297205 m!7969302))

(declare-fun m!7969304 () Bool)

(assert (=> b!7297205 m!7969304))

(assert (=> b!7297205 m!7969302))

(assert (=> b!7297205 m!7969304))

(declare-fun m!7969306 () Bool)

(assert (=> b!7297205 m!7969306))

(assert (=> b!7297091 d!2267334))

(declare-fun d!2267336 () Bool)

(assert (=> d!2267336 (forall!17695 (++!16764 (exprs!8314 ct1!250) (exprs!8314 ct2!346)) lambda!450744)))

(declare-fun lt!2598892 () Unit!164346)

(assert (=> d!2267336 (= lt!2598892 (choose!56554 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744))))

(assert (=> d!2267336 (forall!17695 (exprs!8314 ct1!250) lambda!450744)))

(assert (=> d!2267336 (= (lemmaConcatPreservesForall!1621 (exprs!8314 ct1!250) (exprs!8314 ct2!346) lambda!450744) lt!2598892)))

(declare-fun bs!1913195 () Bool)

(assert (= bs!1913195 d!2267336))

(assert (=> bs!1913195 m!7969138))

(assert (=> bs!1913195 m!7969138))

(declare-fun m!7969308 () Bool)

(assert (=> bs!1913195 m!7969308))

(declare-fun m!7969310 () Bool)

(assert (=> bs!1913195 m!7969310))

(declare-fun m!7969312 () Bool)

(assert (=> bs!1913195 m!7969312))

(assert (=> b!7297091 d!2267336))

(declare-fun d!2267338 () Bool)

(declare-fun c!1356417 () Bool)

(assert (=> d!2267338 (= c!1356417 (isEmpty!40814 (t!385142 s!7854)))))

(declare-fun e!4370580 () Bool)

(assert (=> d!2267338 (= (matchZipper!3778 lt!2598776 (t!385142 s!7854)) e!4370580)))

(declare-fun b!7297206 () Bool)

(assert (=> b!7297206 (= e!4370580 (nullableZipper!3064 lt!2598776))))

(declare-fun b!7297207 () Bool)

(assert (=> b!7297207 (= e!4370580 (matchZipper!3778 (derivationStepZipper!3607 lt!2598776 (head!15062 (t!385142 s!7854))) (tail!14597 (t!385142 s!7854))))))

(assert (= (and d!2267338 c!1356417) b!7297206))

(assert (= (and d!2267338 (not c!1356417)) b!7297207))

(assert (=> d!2267338 m!7969296))

(declare-fun m!7969314 () Bool)

(assert (=> b!7297206 m!7969314))

(assert (=> b!7297207 m!7969300))

(assert (=> b!7297207 m!7969300))

(declare-fun m!7969316 () Bool)

(assert (=> b!7297207 m!7969316))

(assert (=> b!7297207 m!7969304))

(assert (=> b!7297207 m!7969316))

(assert (=> b!7297207 m!7969304))

(declare-fun m!7969318 () Bool)

(assert (=> b!7297207 m!7969318))

(assert (=> b!7297091 d!2267338))

(declare-fun e!4370583 () Bool)

(declare-fun d!2267340 () Bool)

(assert (=> d!2267340 (= (matchZipper!3778 (set.union lt!2598776 lt!2598787) (t!385142 s!7854)) e!4370583)))

(declare-fun res!2951440 () Bool)

(assert (=> d!2267340 (=> res!2951440 e!4370583)))

(assert (=> d!2267340 (= res!2951440 (matchZipper!3778 lt!2598776 (t!385142 s!7854)))))

(declare-fun lt!2598895 () Unit!164346)

(declare-fun choose!56555 ((Set Context!15628) (Set Context!15628) List!71066) Unit!164346)

(assert (=> d!2267340 (= lt!2598895 (choose!56555 lt!2598776 lt!2598787 (t!385142 s!7854)))))

(assert (=> d!2267340 (= (lemmaZipperConcatMatchesSameAsBothZippers!1781 lt!2598776 lt!2598787 (t!385142 s!7854)) lt!2598895)))

(declare-fun b!7297210 () Bool)

(assert (=> b!7297210 (= e!4370583 (matchZipper!3778 lt!2598787 (t!385142 s!7854)))))

(assert (= (and d!2267340 (not res!2951440)) b!7297210))

(declare-fun m!7969320 () Bool)

(assert (=> d!2267340 m!7969320))

(assert (=> d!2267340 m!7969154))

(declare-fun m!7969322 () Bool)

(assert (=> d!2267340 m!7969322))

(assert (=> b!7297210 m!7969164))

(assert (=> b!7297091 d!2267340))

(declare-fun bs!1913196 () Bool)

(declare-fun d!2267342 () Bool)

(assert (= bs!1913196 (and d!2267342 b!7297085)))

(declare-fun lambda!450786 () Int)

(assert (=> bs!1913196 (= lambda!450786 lambda!450744)))

(declare-fun bs!1913197 () Bool)

(assert (= bs!1913197 (and d!2267342 d!2267320)))

(assert (=> bs!1913197 (= lambda!450786 lambda!450784)))

(declare-fun bs!1913198 () Bool)

(assert (= bs!1913198 (and d!2267342 d!2267322)))

(assert (=> bs!1913198 (= lambda!450786 lambda!450785)))

(assert (=> d!2267342 (= (inv!90196 lt!2598761) (forall!17695 (exprs!8314 lt!2598761) lambda!450786))))

(declare-fun bs!1913199 () Bool)

(assert (= bs!1913199 d!2267342))

(declare-fun m!7969324 () Bool)

(assert (=> bs!1913199 m!7969324))

(assert (=> b!7297091 d!2267342))

(declare-fun d!2267344 () Bool)

(declare-fun choose!56556 ((Set Context!15628) Int) (Set Context!15628))

(assert (=> d!2267344 (= (flatMap!2969 lt!2598789 lambda!450745) (choose!56556 lt!2598789 lambda!450745))))

(declare-fun bs!1913200 () Bool)

(assert (= bs!1913200 d!2267344))

(declare-fun m!7969326 () Bool)

(assert (=> bs!1913200 m!7969326))

(assert (=> b!7297085 d!2267344))

(declare-fun bs!1913201 () Bool)

(declare-fun d!2267346 () Bool)

(assert (= bs!1913201 (and d!2267346 b!7297085)))

(declare-fun lambda!450789 () Int)

(assert (=> bs!1913201 (= lambda!450789 lambda!450745)))

(assert (=> d!2267346 true))

(assert (=> d!2267346 (= (derivationStepZipper!3607 lt!2598768 (h!77390 s!7854)) (flatMap!2969 lt!2598768 lambda!450789))))

(declare-fun bs!1913202 () Bool)

(assert (= bs!1913202 d!2267346))

(declare-fun m!7969328 () Bool)

(assert (=> bs!1913202 m!7969328))

(assert (=> b!7297085 d!2267346))

(declare-fun b!7297213 () Bool)

(declare-fun e!4370586 () Bool)

(assert (=> b!7297213 (= e!4370586 (nullable!8051 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun b!7297214 () Bool)

(declare-fun e!4370584 () (Set Context!15628))

(declare-fun call!664973 () (Set Context!15628))

(assert (=> b!7297214 (= e!4370584 call!664973)))

(declare-fun bm!664968 () Bool)

(assert (=> bm!664968 (= call!664973 (derivationStepZipperDown!2780 (h!77389 (exprs!8314 ct1!250)) (Context!15629 (t!385141 (exprs!8314 ct1!250))) (h!77390 s!7854)))))

(declare-fun b!7297215 () Bool)

(declare-fun e!4370585 () (Set Context!15628))

(assert (=> b!7297215 (= e!4370585 e!4370584)))

(declare-fun c!1356420 () Bool)

(assert (=> b!7297215 (= c!1356420 (is-Cons!70941 (exprs!8314 ct1!250)))))

(declare-fun b!7297216 () Bool)

(assert (=> b!7297216 (= e!4370585 (set.union call!664973 (derivationStepZipperUp!2624 (Context!15629 (t!385141 (exprs!8314 ct1!250))) (h!77390 s!7854))))))

(declare-fun d!2267348 () Bool)

(declare-fun c!1356421 () Bool)

(assert (=> d!2267348 (= c!1356421 e!4370586)))

(declare-fun res!2951441 () Bool)

(assert (=> d!2267348 (=> (not res!2951441) (not e!4370586))))

(assert (=> d!2267348 (= res!2951441 (is-Cons!70941 (exprs!8314 ct1!250)))))

(assert (=> d!2267348 (= (derivationStepZipperUp!2624 ct1!250 (h!77390 s!7854)) e!4370585)))

(declare-fun b!7297217 () Bool)

(assert (=> b!7297217 (= e!4370584 (as set.empty (Set Context!15628)))))

(assert (= (and d!2267348 res!2951441) b!7297213))

(assert (= (and d!2267348 c!1356421) b!7297216))

(assert (= (and d!2267348 (not c!1356421)) b!7297215))

(assert (= (and b!7297215 c!1356420) b!7297214))

(assert (= (and b!7297215 (not c!1356420)) b!7297217))

(assert (= (or b!7297216 b!7297214) bm!664968))

(assert (=> b!7297213 m!7969106))

(declare-fun m!7969330 () Bool)

(assert (=> bm!664968 m!7969330))

(declare-fun m!7969332 () Bool)

(assert (=> b!7297216 m!7969332))

(assert (=> b!7297085 d!2267348))

(assert (=> b!7297085 d!2267336))

(declare-fun d!2267350 () Bool)

(declare-fun e!4370588 () Bool)

(assert (=> d!2267350 e!4370588))

(declare-fun res!2951443 () Bool)

(assert (=> d!2267350 (=> (not res!2951443) (not e!4370588))))

(declare-fun lt!2598896 () List!71065)

(assert (=> d!2267350 (= res!2951443 (= (content!14822 lt!2598896) (set.union (content!14822 (exprs!8314 ct1!250)) (content!14822 (exprs!8314 ct2!346)))))))

(declare-fun e!4370587 () List!71065)

(assert (=> d!2267350 (= lt!2598896 e!4370587)))

(declare-fun c!1356422 () Bool)

(assert (=> d!2267350 (= c!1356422 (is-Nil!70941 (exprs!8314 ct1!250)))))

(assert (=> d!2267350 (= (++!16764 (exprs!8314 ct1!250) (exprs!8314 ct2!346)) lt!2598896)))

(declare-fun b!7297221 () Bool)

(assert (=> b!7297221 (= e!4370588 (or (not (= (exprs!8314 ct2!346) Nil!70941)) (= lt!2598896 (exprs!8314 ct1!250))))))

(declare-fun b!7297220 () Bool)

(declare-fun res!2951442 () Bool)

(assert (=> b!7297220 (=> (not res!2951442) (not e!4370588))))

(assert (=> b!7297220 (= res!2951442 (= (size!41868 lt!2598896) (+ (size!41868 (exprs!8314 ct1!250)) (size!41868 (exprs!8314 ct2!346)))))))

(declare-fun b!7297218 () Bool)

(assert (=> b!7297218 (= e!4370587 (exprs!8314 ct2!346))))

(declare-fun b!7297219 () Bool)

(assert (=> b!7297219 (= e!4370587 (Cons!70941 (h!77389 (exprs!8314 ct1!250)) (++!16764 (t!385141 (exprs!8314 ct1!250)) (exprs!8314 ct2!346))))))

(assert (= (and d!2267350 c!1356422) b!7297218))

(assert (= (and d!2267350 (not c!1356422)) b!7297219))

(assert (= (and d!2267350 res!2951443) b!7297220))

(assert (= (and b!7297220 res!2951442) b!7297221))

(declare-fun m!7969334 () Bool)

(assert (=> d!2267350 m!7969334))

(declare-fun m!7969336 () Bool)

(assert (=> d!2267350 m!7969336))

(assert (=> d!2267350 m!7969272))

(declare-fun m!7969338 () Bool)

(assert (=> b!7297220 m!7969338))

(declare-fun m!7969340 () Bool)

(assert (=> b!7297220 m!7969340))

(assert (=> b!7297220 m!7969278))

(declare-fun m!7969342 () Bool)

(assert (=> b!7297219 m!7969342))

(assert (=> b!7297085 d!2267350))

(declare-fun d!2267352 () Bool)

(declare-fun dynLambda!29010 (Int Context!15628) (Set Context!15628))

(assert (=> d!2267352 (= (flatMap!2969 lt!2598768 lambda!450745) (dynLambda!29010 lambda!450745 lt!2598761))))

(declare-fun lt!2598899 () Unit!164346)

(declare-fun choose!56557 ((Set Context!15628) Context!15628 Int) Unit!164346)

(assert (=> d!2267352 (= lt!2598899 (choose!56557 lt!2598768 lt!2598761 lambda!450745))))

(assert (=> d!2267352 (= lt!2598768 (set.insert lt!2598761 (as set.empty (Set Context!15628))))))

(assert (=> d!2267352 (= (lemmaFlatMapOnSingletonSet!2367 lt!2598768 lt!2598761 lambda!450745) lt!2598899)))

(declare-fun b_lambda!281453 () Bool)

(assert (=> (not b_lambda!281453) (not d!2267352)))

(declare-fun bs!1913203 () Bool)

(assert (= bs!1913203 d!2267352))

(assert (=> bs!1913203 m!7969128))

(declare-fun m!7969344 () Bool)

(assert (=> bs!1913203 m!7969344))

(declare-fun m!7969346 () Bool)

(assert (=> bs!1913203 m!7969346))

(assert (=> bs!1913203 m!7969130))

(assert (=> b!7297085 d!2267352))

(declare-fun b!7297222 () Bool)

(declare-fun e!4370591 () Bool)

(assert (=> b!7297222 (= e!4370591 (nullable!8051 (h!77389 (exprs!8314 lt!2598761))))))

(declare-fun b!7297223 () Bool)

(declare-fun e!4370589 () (Set Context!15628))

(declare-fun call!664974 () (Set Context!15628))

(assert (=> b!7297223 (= e!4370589 call!664974)))

(declare-fun bm!664969 () Bool)

(assert (=> bm!664969 (= call!664974 (derivationStepZipperDown!2780 (h!77389 (exprs!8314 lt!2598761)) (Context!15629 (t!385141 (exprs!8314 lt!2598761))) (h!77390 s!7854)))))

(declare-fun b!7297224 () Bool)

(declare-fun e!4370590 () (Set Context!15628))

(assert (=> b!7297224 (= e!4370590 e!4370589)))

(declare-fun c!1356423 () Bool)

(assert (=> b!7297224 (= c!1356423 (is-Cons!70941 (exprs!8314 lt!2598761)))))

(declare-fun b!7297225 () Bool)

(assert (=> b!7297225 (= e!4370590 (set.union call!664974 (derivationStepZipperUp!2624 (Context!15629 (t!385141 (exprs!8314 lt!2598761))) (h!77390 s!7854))))))

(declare-fun d!2267354 () Bool)

(declare-fun c!1356424 () Bool)

(assert (=> d!2267354 (= c!1356424 e!4370591)))

(declare-fun res!2951444 () Bool)

(assert (=> d!2267354 (=> (not res!2951444) (not e!4370591))))

(assert (=> d!2267354 (= res!2951444 (is-Cons!70941 (exprs!8314 lt!2598761)))))

(assert (=> d!2267354 (= (derivationStepZipperUp!2624 lt!2598761 (h!77390 s!7854)) e!4370590)))

(declare-fun b!7297226 () Bool)

(assert (=> b!7297226 (= e!4370589 (as set.empty (Set Context!15628)))))

(assert (= (and d!2267354 res!2951444) b!7297222))

(assert (= (and d!2267354 c!1356424) b!7297225))

(assert (= (and d!2267354 (not c!1356424)) b!7297224))

(assert (= (and b!7297224 c!1356423) b!7297223))

(assert (= (and b!7297224 (not c!1356423)) b!7297226))

(assert (= (or b!7297225 b!7297223) bm!664969))

(declare-fun m!7969348 () Bool)

(assert (=> b!7297222 m!7969348))

(declare-fun m!7969350 () Bool)

(assert (=> bm!664969 m!7969350))

(declare-fun m!7969352 () Bool)

(assert (=> b!7297225 m!7969352))

(assert (=> b!7297085 d!2267354))

(declare-fun d!2267356 () Bool)

(assert (=> d!2267356 (= (flatMap!2969 lt!2598768 lambda!450745) (choose!56556 lt!2598768 lambda!450745))))

(declare-fun bs!1913204 () Bool)

(assert (= bs!1913204 d!2267356))

(declare-fun m!7969354 () Bool)

(assert (=> bs!1913204 m!7969354))

(assert (=> b!7297085 d!2267356))

(declare-fun d!2267358 () Bool)

(assert (=> d!2267358 (= (flatMap!2969 lt!2598789 lambda!450745) (dynLambda!29010 lambda!450745 ct1!250))))

(declare-fun lt!2598900 () Unit!164346)

(assert (=> d!2267358 (= lt!2598900 (choose!56557 lt!2598789 ct1!250 lambda!450745))))

(assert (=> d!2267358 (= lt!2598789 (set.insert ct1!250 (as set.empty (Set Context!15628))))))

(assert (=> d!2267358 (= (lemmaFlatMapOnSingletonSet!2367 lt!2598789 ct1!250 lambda!450745) lt!2598900)))

(declare-fun b_lambda!281455 () Bool)

(assert (=> (not b_lambda!281455) (not d!2267358)))

(declare-fun bs!1913205 () Bool)

(assert (= bs!1913205 d!2267358))

(assert (=> bs!1913205 m!7969144))

(declare-fun m!7969356 () Bool)

(assert (=> bs!1913205 m!7969356))

(declare-fun m!7969358 () Bool)

(assert (=> bs!1913205 m!7969358))

(assert (=> bs!1913205 m!7969146))

(assert (=> b!7297085 d!2267358))

(assert (=> b!7297090 d!2267326))

(declare-fun d!2267360 () Bool)

(declare-fun c!1356425 () Bool)

(assert (=> d!2267360 (= c!1356425 (isEmpty!40814 s!7854))))

(declare-fun e!4370592 () Bool)

(assert (=> d!2267360 (= (matchZipper!3778 lt!2598782 s!7854) e!4370592)))

(declare-fun b!7297227 () Bool)

(assert (=> b!7297227 (= e!4370592 (nullableZipper!3064 lt!2598782))))

(declare-fun b!7297228 () Bool)

(assert (=> b!7297228 (= e!4370592 (matchZipper!3778 (derivationStepZipper!3607 lt!2598782 (head!15062 s!7854)) (tail!14597 s!7854)))))

(assert (= (and d!2267360 c!1356425) b!7297227))

(assert (= (and d!2267360 (not c!1356425)) b!7297228))

(assert (=> d!2267360 m!7969246))

(declare-fun m!7969360 () Bool)

(assert (=> b!7297227 m!7969360))

(assert (=> b!7297228 m!7969250))

(assert (=> b!7297228 m!7969250))

(declare-fun m!7969362 () Bool)

(assert (=> b!7297228 m!7969362))

(assert (=> b!7297228 m!7969254))

(assert (=> b!7297228 m!7969362))

(assert (=> b!7297228 m!7969254))

(declare-fun m!7969364 () Bool)

(assert (=> b!7297228 m!7969364))

(assert (=> b!7297090 d!2267360))

(declare-fun bs!1913206 () Bool)

(declare-fun d!2267362 () Bool)

(assert (= bs!1913206 (and d!2267362 b!7297085)))

(declare-fun lambda!450792 () Int)

(assert (=> bs!1913206 (= lambda!450792 lambda!450744)))

(declare-fun bs!1913207 () Bool)

(assert (= bs!1913207 (and d!2267362 d!2267320)))

(assert (=> bs!1913207 (= lambda!450792 lambda!450784)))

(declare-fun bs!1913208 () Bool)

(assert (= bs!1913208 (and d!2267362 d!2267322)))

(assert (=> bs!1913208 (= lambda!450792 lambda!450785)))

(declare-fun bs!1913209 () Bool)

(assert (= bs!1913209 (and d!2267362 d!2267342)))

(assert (=> bs!1913209 (= lambda!450792 lambda!450786)))

(assert (=> d!2267362 (matchZipper!3778 (set.insert (Context!15629 (++!16764 (exprs!8314 lt!2598786) (exprs!8314 ct2!346))) (as set.empty (Set Context!15628))) s!7854)))

(declare-fun lt!2598906 () Unit!164346)

(assert (=> d!2267362 (= lt!2598906 (lemmaConcatPreservesForall!1621 (exprs!8314 lt!2598786) (exprs!8314 ct2!346) lambda!450792))))

(declare-fun lt!2598905 () Unit!164346)

(declare-fun choose!56558 (Context!15628 Context!15628 List!71066) Unit!164346)

(assert (=> d!2267362 (= lt!2598905 (choose!56558 lt!2598786 ct2!346 s!7854))))

(assert (=> d!2267362 (matchZipper!3778 (set.insert ct2!346 (as set.empty (Set Context!15628))) s!7854)))

(assert (=> d!2267362 (= (lemmaPrependingNullableCtxStillMatches!57 lt!2598786 ct2!346 s!7854) lt!2598905)))

(declare-fun bs!1913210 () Bool)

(assert (= bs!1913210 d!2267362))

(declare-fun m!7969366 () Bool)

(assert (=> bs!1913210 m!7969366))

(assert (=> bs!1913210 m!7969112))

(assert (=> bs!1913210 m!7969112))

(assert (=> bs!1913210 m!7969114))

(declare-fun m!7969368 () Bool)

(assert (=> bs!1913210 m!7969368))

(declare-fun m!7969370 () Bool)

(assert (=> bs!1913210 m!7969370))

(assert (=> bs!1913210 m!7969368))

(declare-fun m!7969372 () Bool)

(assert (=> bs!1913210 m!7969372))

(declare-fun m!7969374 () Bool)

(assert (=> bs!1913210 m!7969374))

(assert (=> b!7297090 d!2267362))

(declare-fun d!2267364 () Bool)

(assert (=> d!2267364 (= (flatMap!2969 lt!2598782 lambda!450745) (choose!56556 lt!2598782 lambda!450745))))

(declare-fun bs!1913211 () Bool)

(assert (= bs!1913211 d!2267364))

(declare-fun m!7969376 () Bool)

(assert (=> bs!1913211 m!7969376))

(assert (=> b!7297090 d!2267364))

(assert (=> b!7297090 d!2267330))

(declare-fun d!2267366 () Bool)

(declare-fun c!1356426 () Bool)

(assert (=> d!2267366 (= c!1356426 (isEmpty!40814 (t!385142 s!7854)))))

(declare-fun e!4370593 () Bool)

(assert (=> d!2267366 (= (matchZipper!3778 lt!2598787 (t!385142 s!7854)) e!4370593)))

(declare-fun b!7297229 () Bool)

(assert (=> b!7297229 (= e!4370593 (nullableZipper!3064 lt!2598787))))

(declare-fun b!7297230 () Bool)

(assert (=> b!7297230 (= e!4370593 (matchZipper!3778 (derivationStepZipper!3607 lt!2598787 (head!15062 (t!385142 s!7854))) (tail!14597 (t!385142 s!7854))))))

(assert (= (and d!2267366 c!1356426) b!7297229))

(assert (= (and d!2267366 (not c!1356426)) b!7297230))

(assert (=> d!2267366 m!7969296))

(declare-fun m!7969378 () Bool)

(assert (=> b!7297229 m!7969378))

(assert (=> b!7297230 m!7969300))

(assert (=> b!7297230 m!7969300))

(declare-fun m!7969380 () Bool)

(assert (=> b!7297230 m!7969380))

(assert (=> b!7297230 m!7969304))

(assert (=> b!7297230 m!7969380))

(assert (=> b!7297230 m!7969304))

(declare-fun m!7969382 () Bool)

(assert (=> b!7297230 m!7969382))

(assert (=> b!7297090 d!2267366))

(declare-fun d!2267368 () Bool)

(assert (=> d!2267368 (= (flatMap!2969 lt!2598782 lambda!450745) (dynLambda!29010 lambda!450745 lt!2598779))))

(declare-fun lt!2598907 () Unit!164346)

(assert (=> d!2267368 (= lt!2598907 (choose!56557 lt!2598782 lt!2598779 lambda!450745))))

(assert (=> d!2267368 (= lt!2598782 (set.insert lt!2598779 (as set.empty (Set Context!15628))))))

(assert (=> d!2267368 (= (lemmaFlatMapOnSingletonSet!2367 lt!2598782 lt!2598779 lambda!450745) lt!2598907)))

(declare-fun b_lambda!281457 () Bool)

(assert (=> (not b_lambda!281457) (not d!2267368)))

(declare-fun bs!1913212 () Bool)

(assert (= bs!1913212 d!2267368))

(assert (=> bs!1913212 m!7969172))

(declare-fun m!7969384 () Bool)

(assert (=> bs!1913212 m!7969384))

(declare-fun m!7969386 () Bool)

(assert (=> bs!1913212 m!7969386))

(assert (=> bs!1913212 m!7969170))

(assert (=> b!7297090 d!2267368))

(declare-fun bs!1913213 () Bool)

(declare-fun d!2267370 () Bool)

(assert (= bs!1913213 (and d!2267370 d!2267342)))

(declare-fun lambda!450795 () Int)

(assert (=> bs!1913213 (not (= lambda!450795 lambda!450786))))

(declare-fun bs!1913214 () Bool)

(assert (= bs!1913214 (and d!2267370 d!2267322)))

(assert (=> bs!1913214 (not (= lambda!450795 lambda!450785))))

(declare-fun bs!1913215 () Bool)

(assert (= bs!1913215 (and d!2267370 d!2267320)))

(assert (=> bs!1913215 (not (= lambda!450795 lambda!450784))))

(declare-fun bs!1913216 () Bool)

(assert (= bs!1913216 (and d!2267370 b!7297085)))

(assert (=> bs!1913216 (not (= lambda!450795 lambda!450744))))

(declare-fun bs!1913217 () Bool)

(assert (= bs!1913217 (and d!2267370 d!2267362)))

(assert (=> bs!1913217 (not (= lambda!450795 lambda!450792))))

(assert (=> d!2267370 (= (nullableContext!364 ct1!250) (forall!17695 (exprs!8314 ct1!250) lambda!450795))))

(declare-fun bs!1913218 () Bool)

(assert (= bs!1913218 d!2267370))

(declare-fun m!7969388 () Bool)

(assert (=> bs!1913218 m!7969388))

(assert (=> b!7297083 d!2267370))

(declare-fun d!2267372 () Bool)

(declare-fun nullableFct!3185 (Regex!18874) Bool)

(assert (=> d!2267372 (= (nullable!8051 (h!77389 (exprs!8314 ct1!250))) (nullableFct!3185 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun bs!1913219 () Bool)

(assert (= bs!1913219 d!2267372))

(declare-fun m!7969390 () Bool)

(assert (=> bs!1913219 m!7969390))

(assert (=> b!7297089 d!2267372))

(assert (=> b!7297089 d!2267348))

(declare-fun d!2267374 () Bool)

(assert (=> d!2267374 (= (tail!14595 (exprs!8314 ct1!250)) (t!385141 (exprs!8314 ct1!250)))))

(assert (=> b!7297089 d!2267374))

(declare-fun b!7297231 () Bool)

(declare-fun c!1356428 () Bool)

(assert (=> b!7297231 (= c!1356428 (is-Star!18874 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun e!4370595 () (Set Context!15628))

(declare-fun e!4370597 () (Set Context!15628))

(assert (=> b!7297231 (= e!4370595 e!4370597)))

(declare-fun b!7297232 () Bool)

(declare-fun c!1356430 () Bool)

(declare-fun e!4370599 () Bool)

(assert (=> b!7297232 (= c!1356430 e!4370599)))

(declare-fun res!2951445 () Bool)

(assert (=> b!7297232 (=> (not res!2951445) (not e!4370599))))

(assert (=> b!7297232 (= res!2951445 (is-Concat!27719 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun e!4370596 () (Set Context!15628))

(declare-fun e!4370598 () (Set Context!15628))

(assert (=> b!7297232 (= e!4370596 e!4370598)))

(declare-fun b!7297233 () Bool)

(assert (=> b!7297233 (= e!4370598 e!4370595)))

(declare-fun c!1356431 () Bool)

(assert (=> b!7297233 (= c!1356431 (is-Concat!27719 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun bm!664970 () Bool)

(declare-fun call!664977 () (Set Context!15628))

(declare-fun call!664980 () (Set Context!15628))

(assert (=> bm!664970 (= call!664977 call!664980)))

(declare-fun b!7297234 () Bool)

(declare-fun call!664975 () (Set Context!15628))

(assert (=> b!7297234 (= e!4370596 (set.union call!664975 call!664980))))

(declare-fun b!7297235 () Bool)

(assert (=> b!7297235 (= e!4370599 (nullable!8051 (regOne!38260 (h!77389 (exprs!8314 ct1!250)))))))

(declare-fun b!7297236 () Bool)

(declare-fun e!4370594 () (Set Context!15628))

(assert (=> b!7297236 (= e!4370594 e!4370596)))

(declare-fun c!1356432 () Bool)

(assert (=> b!7297236 (= c!1356432 (is-Union!18874 (h!77389 (exprs!8314 ct1!250))))))

(declare-fun call!664979 () List!71065)

(declare-fun bm!664971 () Bool)

(assert (=> bm!664971 (= call!664979 ($colon$colon!3003 (exprs!8314 lt!2598786) (ite (or c!1356430 c!1356431) (regTwo!38260 (h!77389 (exprs!8314 ct1!250))) (h!77389 (exprs!8314 ct1!250)))))))

(declare-fun b!7297238 () Bool)

(declare-fun call!664976 () (Set Context!15628))

(assert (=> b!7297238 (= e!4370595 call!664976)))

(declare-fun call!664978 () List!71065)

(declare-fun bm!664972 () Bool)

(assert (=> bm!664972 (= call!664980 (derivationStepZipperDown!2780 (ite c!1356432 (regTwo!38261 (h!77389 (exprs!8314 ct1!250))) (ite c!1356430 (regTwo!38260 (h!77389 (exprs!8314 ct1!250))) (ite c!1356431 (regOne!38260 (h!77389 (exprs!8314 ct1!250))) (reg!19203 (h!77389 (exprs!8314 ct1!250)))))) (ite (or c!1356432 c!1356430) lt!2598786 (Context!15629 call!664978)) (h!77390 s!7854)))))

(declare-fun bm!664973 () Bool)

(assert (=> bm!664973 (= call!664976 call!664977)))

(declare-fun bm!664974 () Bool)

(assert (=> bm!664974 (= call!664978 call!664979)))

(declare-fun d!2267376 () Bool)

(declare-fun c!1356429 () Bool)

(assert (=> d!2267376 (= c!1356429 (and (is-ElementMatch!18874 (h!77389 (exprs!8314 ct1!250))) (= (c!1356381 (h!77389 (exprs!8314 ct1!250))) (h!77390 s!7854))))))

(assert (=> d!2267376 (= (derivationStepZipperDown!2780 (h!77389 (exprs!8314 ct1!250)) lt!2598786 (h!77390 s!7854)) e!4370594)))

(declare-fun b!7297237 () Bool)

(assert (=> b!7297237 (= e!4370597 (as set.empty (Set Context!15628)))))

(declare-fun bm!664975 () Bool)

(assert (=> bm!664975 (= call!664975 (derivationStepZipperDown!2780 (ite c!1356432 (regOne!38261 (h!77389 (exprs!8314 ct1!250))) (regOne!38260 (h!77389 (exprs!8314 ct1!250)))) (ite c!1356432 lt!2598786 (Context!15629 call!664979)) (h!77390 s!7854)))))

(declare-fun b!7297239 () Bool)

(assert (=> b!7297239 (= e!4370598 (set.union call!664975 call!664977))))

(declare-fun b!7297240 () Bool)

(assert (=> b!7297240 (= e!4370597 call!664976)))

(declare-fun b!7297241 () Bool)

(assert (=> b!7297241 (= e!4370594 (set.insert lt!2598786 (as set.empty (Set Context!15628))))))

(assert (= (and d!2267376 c!1356429) b!7297241))

(assert (= (and d!2267376 (not c!1356429)) b!7297236))

(assert (= (and b!7297236 c!1356432) b!7297234))

(assert (= (and b!7297236 (not c!1356432)) b!7297232))

(assert (= (and b!7297232 res!2951445) b!7297235))

(assert (= (and b!7297232 c!1356430) b!7297239))

(assert (= (and b!7297232 (not c!1356430)) b!7297233))

(assert (= (and b!7297233 c!1356431) b!7297238))

(assert (= (and b!7297233 (not c!1356431)) b!7297231))

(assert (= (and b!7297231 c!1356428) b!7297240))

(assert (= (and b!7297231 (not c!1356428)) b!7297237))

(assert (= (or b!7297238 b!7297240) bm!664974))

(assert (= (or b!7297238 b!7297240) bm!664973))

(assert (= (or b!7297239 bm!664974) bm!664971))

(assert (= (or b!7297239 bm!664973) bm!664970))

(assert (= (or b!7297234 b!7297239) bm!664975))

(assert (= (or b!7297234 bm!664970) bm!664972))

(assert (=> b!7297235 m!7969288))

(declare-fun m!7969392 () Bool)

(assert (=> bm!664971 m!7969392))

(declare-fun m!7969394 () Bool)

(assert (=> bm!664972 m!7969394))

(declare-fun m!7969396 () Bool)

(assert (=> bm!664975 m!7969396))

(declare-fun m!7969398 () Bool)

(assert (=> b!7297241 m!7969398))

(assert (=> b!7297094 d!2267376))

(declare-fun b!7297242 () Bool)

(declare-fun e!4370602 () Bool)

(assert (=> b!7297242 (= e!4370602 (nullable!8051 (h!77389 (exprs!8314 lt!2598786))))))

(declare-fun b!7297243 () Bool)

(declare-fun e!4370600 () (Set Context!15628))

(declare-fun call!664981 () (Set Context!15628))

(assert (=> b!7297243 (= e!4370600 call!664981)))

(declare-fun bm!664976 () Bool)

(assert (=> bm!664976 (= call!664981 (derivationStepZipperDown!2780 (h!77389 (exprs!8314 lt!2598786)) (Context!15629 (t!385141 (exprs!8314 lt!2598786))) (h!77390 s!7854)))))

(declare-fun b!7297244 () Bool)

(declare-fun e!4370601 () (Set Context!15628))

(assert (=> b!7297244 (= e!4370601 e!4370600)))

(declare-fun c!1356433 () Bool)

(assert (=> b!7297244 (= c!1356433 (is-Cons!70941 (exprs!8314 lt!2598786)))))

(declare-fun b!7297245 () Bool)

(assert (=> b!7297245 (= e!4370601 (set.union call!664981 (derivationStepZipperUp!2624 (Context!15629 (t!385141 (exprs!8314 lt!2598786))) (h!77390 s!7854))))))

(declare-fun d!2267378 () Bool)

(declare-fun c!1356434 () Bool)

(assert (=> d!2267378 (= c!1356434 e!4370602)))

(declare-fun res!2951446 () Bool)

(assert (=> d!2267378 (=> (not res!2951446) (not e!4370602))))

(assert (=> d!2267378 (= res!2951446 (is-Cons!70941 (exprs!8314 lt!2598786)))))

(assert (=> d!2267378 (= (derivationStepZipperUp!2624 lt!2598786 (h!77390 s!7854)) e!4370601)))

(declare-fun b!7297246 () Bool)

(assert (=> b!7297246 (= e!4370600 (as set.empty (Set Context!15628)))))

(assert (= (and d!2267378 res!2951446) b!7297242))

(assert (= (and d!2267378 c!1356434) b!7297245))

(assert (= (and d!2267378 (not c!1356434)) b!7297244))

(assert (= (and b!7297244 c!1356433) b!7297243))

(assert (= (and b!7297244 (not c!1356433)) b!7297246))

(assert (= (or b!7297245 b!7297243) bm!664976))

(declare-fun m!7969400 () Bool)

(assert (=> b!7297242 m!7969400))

(declare-fun m!7969402 () Bool)

(assert (=> bm!664976 m!7969402))

(declare-fun m!7969404 () Bool)

(assert (=> b!7297245 m!7969404))

(assert (=> b!7297094 d!2267378))

(declare-fun b!7297251 () Bool)

(declare-fun e!4370605 () Bool)

(declare-fun tp!2062535 () Bool)

(assert (=> b!7297251 (= e!4370605 (and tp_is_empty!47213 tp!2062535))))

(assert (=> b!7297093 (= tp!2062522 e!4370605)))

(assert (= (and b!7297093 (is-Cons!70942 (t!385142 s!7854))) b!7297251))

(declare-fun b!7297256 () Bool)

(declare-fun e!4370608 () Bool)

(declare-fun tp!2062540 () Bool)

(declare-fun tp!2062541 () Bool)

(assert (=> b!7297256 (= e!4370608 (and tp!2062540 tp!2062541))))

(assert (=> b!7297086 (= tp!2062521 e!4370608)))

(assert (= (and b!7297086 (is-Cons!70941 (exprs!8314 ct1!250))) b!7297256))

(declare-fun b!7297257 () Bool)

(declare-fun e!4370609 () Bool)

(declare-fun tp!2062542 () Bool)

(declare-fun tp!2062543 () Bool)

(assert (=> b!7297257 (= e!4370609 (and tp!2062542 tp!2062543))))

(assert (=> b!7297088 (= tp!2062523 e!4370609)))

(assert (= (and b!7297088 (is-Cons!70941 (exprs!8314 ct2!346))) b!7297257))

(declare-fun b_lambda!281459 () Bool)

(assert (= b_lambda!281457 (or b!7297085 b_lambda!281459)))

(declare-fun bs!1913220 () Bool)

(declare-fun d!2267380 () Bool)

(assert (= bs!1913220 (and d!2267380 b!7297085)))

(assert (=> bs!1913220 (= (dynLambda!29010 lambda!450745 lt!2598779) (derivationStepZipperUp!2624 lt!2598779 (h!77390 s!7854)))))

(assert (=> bs!1913220 m!7969158))

(assert (=> d!2267368 d!2267380))

(declare-fun b_lambda!281461 () Bool)

(assert (= b_lambda!281455 (or b!7297085 b_lambda!281461)))

(declare-fun bs!1913221 () Bool)

(declare-fun d!2267382 () Bool)

(assert (= bs!1913221 (and d!2267382 b!7297085)))

(assert (=> bs!1913221 (= (dynLambda!29010 lambda!450745 ct1!250) (derivationStepZipperUp!2624 ct1!250 (h!77390 s!7854)))))

(assert (=> bs!1913221 m!7969108))

(assert (=> d!2267358 d!2267382))

(declare-fun b_lambda!281463 () Bool)

(assert (= b_lambda!281453 (or b!7297085 b_lambda!281463)))

(declare-fun bs!1913222 () Bool)

(declare-fun d!2267384 () Bool)

(assert (= bs!1913222 (and d!2267384 b!7297085)))

(assert (=> bs!1913222 (= (dynLambda!29010 lambda!450745 lt!2598761) (derivationStepZipperUp!2624 lt!2598761 (h!77390 s!7854)))))

(assert (=> bs!1913222 m!7969142))

(assert (=> d!2267352 d!2267384))

(push 1)

(assert (not d!2267362))

(assert (not bm!664972))

(assert (not bs!1913222))

(assert tp_is_empty!47213)

(assert (not b!7297256))

(assert (not b!7297204))

(assert (not d!2267372))

(assert (not d!2267334))

(assert (not b!7297142))

(assert (not b!7297242))

(assert (not bm!664964))

(assert (not d!2267358))

(assert (not bm!664967))

(assert (not b!7297228))

(assert (not b!7297207))

(assert (not bm!664949))

(assert (not d!2267370))

(assert (not d!2267322))

(assert (not d!2267350))

(assert (not b!7297229))

(assert (not b!7297210))

(assert (not b!7297169))

(assert (not b!7297245))

(assert (not b!7297235))

(assert (not b!7297216))

(assert (not b!7297251))

(assert (not b!7297153))

(assert (not b!7297197))

(assert (not b!7297220))

(assert (not b!7297206))

(assert (not d!2267344))

(assert (not d!2267342))

(assert (not bm!664975))

(assert (not b_lambda!281461))

(assert (not d!2267318))

(assert (not d!2267320))

(assert (not d!2267352))

(assert (not b!7297166))

(assert (not b!7297213))

(assert (not d!2267340))

(assert (not d!2267366))

(assert (not b!7297227))

(assert (not bm!664976))

(assert (not d!2267356))

(assert (not d!2267338))

(assert (not d!2267336))

(assert (not bm!664971))

(assert (not b!7297154))

(assert (not d!2267328))

(assert (not d!2267360))

(assert (not bm!664963))

(assert (not b!7297219))

(assert (not bm!664968))

(assert (not b!7297222))

(assert (not b!7297230))

(assert (not d!2267368))

(assert (not bm!664969))

(assert (not b!7297205))

(assert (not b!7297225))

(assert (not b!7297257))

(assert (not b_lambda!281463))

(assert (not bs!1913221))

(assert (not d!2267364))

(assert (not b_lambda!281459))

(assert (not b!7297143))

(assert (not bs!1913220))

(assert (not d!2267346))

(assert (not d!2267326))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

