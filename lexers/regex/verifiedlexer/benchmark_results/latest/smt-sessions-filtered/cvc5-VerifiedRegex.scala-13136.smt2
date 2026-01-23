; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717734 () Bool)

(assert start!717734)

(declare-fun b!7349654 () Bool)

(declare-fun e!4400719 () Bool)

(declare-fun e!4400720 () Bool)

(assert (=> b!7349654 (= e!4400719 e!4400720)))

(declare-fun res!2968207 () Bool)

(assert (=> b!7349654 (=> (not res!2968207) (not e!4400720))))

(declare-datatypes ((C!38594 0))(
  ( (C!38595 (val!29657 Int)) )
))
(declare-datatypes ((Regex!19160 0))(
  ( (ElementMatch!19160 (c!1365422 C!38594)) (Concat!28005 (regOne!38832 Regex!19160) (regTwo!38832 Regex!19160)) (EmptyExpr!19160) (Star!19160 (reg!19489 Regex!19160)) (EmptyLang!19160) (Union!19160 (regOne!38833 Regex!19160) (regTwo!38833 Regex!19160)) )
))
(declare-datatypes ((List!71656 0))(
  ( (Nil!71532) (Cons!71532 (h!77980 Regex!19160) (t!386071 List!71656)) )
))
(declare-datatypes ((Context!16200 0))(
  ( (Context!16201 (exprs!8600 List!71656)) )
))
(declare-fun cWitness!61 () Context!16200)

(declare-fun lt!2611940 () (Set Context!16200))

(assert (=> b!7349654 (= res!2968207 (set.member cWitness!61 lt!2611940))))

(declare-fun r1!2370 () Regex!19160)

(declare-fun c!10362 () C!38594)

(declare-fun ct1!282 () Context!16200)

(declare-fun derivationStepZipperDown!2986 (Regex!19160 Context!16200 C!38594) (Set Context!16200))

(assert (=> b!7349654 (= lt!2611940 (derivationStepZipperDown!2986 r1!2370 ct1!282 c!10362))))

(declare-fun b!7349655 () Bool)

(declare-fun e!4400716 () Bool)

(declare-fun tp_is_empty!48565 () Bool)

(assert (=> b!7349655 (= e!4400716 tp_is_empty!48565)))

(declare-fun b!7349656 () Bool)

(declare-fun e!4400718 () Bool)

(declare-fun tp!2087443 () Bool)

(assert (=> b!7349656 (= e!4400718 tp!2087443)))

(declare-fun b!7349657 () Bool)

(declare-fun e!4400715 () Bool)

(declare-fun tp!2087445 () Bool)

(assert (=> b!7349657 (= e!4400715 tp!2087445)))

(declare-fun b!7349658 () Bool)

(declare-fun e!4400722 () Bool)

(assert (=> b!7349658 (= e!4400720 e!4400722)))

(declare-fun res!2968203 () Bool)

(assert (=> b!7349658 (=> (not res!2968203) (not e!4400722))))

(assert (=> b!7349658 (= res!2968203 (and (or (not (is-ElementMatch!19160 r1!2370)) (not (= c!10362 (c!1365422 r1!2370)))) (not (is-Union!19160 r1!2370)) (is-Concat!28005 r1!2370)))))

(declare-fun lt!2611941 () (Set Context!16200))

(declare-fun lt!2611942 () Context!16200)

(assert (=> b!7349658 (= lt!2611941 (derivationStepZipperDown!2986 r1!2370 lt!2611942 c!10362))))

(declare-fun ct2!378 () Context!16200)

(declare-fun ++!16978 (List!71656 List!71656) List!71656)

(assert (=> b!7349658 (= lt!2611942 (Context!16201 (++!16978 (exprs!8600 ct1!282) (exprs!8600 ct2!378))))))

(declare-datatypes ((Unit!165273 0))(
  ( (Unit!165274) )
))
(declare-fun lt!2611939 () Unit!165273)

(declare-fun lambda!456442 () Int)

(declare-fun lemmaConcatPreservesForall!1835 (List!71656 List!71656 Int) Unit!165273)

(assert (=> b!7349658 (= lt!2611939 (lemmaConcatPreservesForall!1835 (exprs!8600 ct1!282) (exprs!8600 ct2!378) lambda!456442))))

(declare-fun b!7349659 () Bool)

(declare-fun tp!2087447 () Bool)

(declare-fun tp!2087446 () Bool)

(assert (=> b!7349659 (= e!4400716 (and tp!2087447 tp!2087446))))

(declare-fun b!7349660 () Bool)

(declare-fun tp!2087440 () Bool)

(assert (=> b!7349660 (= e!4400716 tp!2087440)))

(declare-fun res!2968205 () Bool)

(assert (=> start!717734 (=> (not res!2968205) (not e!4400719))))

(declare-fun validRegex!9756 (Regex!19160) Bool)

(assert (=> start!717734 (= res!2968205 (validRegex!9756 r1!2370))))

(assert (=> start!717734 e!4400719))

(assert (=> start!717734 tp_is_empty!48565))

(declare-fun e!4400721 () Bool)

(declare-fun inv!91241 (Context!16200) Bool)

(assert (=> start!717734 (and (inv!91241 cWitness!61) e!4400721)))

(assert (=> start!717734 (and (inv!91241 ct1!282) e!4400715)))

(assert (=> start!717734 e!4400716))

(assert (=> start!717734 (and (inv!91241 ct2!378) e!4400718)))

(declare-fun b!7349661 () Bool)

(declare-fun tp!2087441 () Bool)

(declare-fun tp!2087444 () Bool)

(assert (=> b!7349661 (= e!4400716 (and tp!2087441 tp!2087444))))

(declare-fun b!7349662 () Bool)

(declare-fun e!4400717 () Bool)

(assert (=> b!7349662 (= e!4400722 e!4400717)))

(declare-fun res!2968208 () Bool)

(assert (=> b!7349662 (=> (not res!2968208) (not e!4400717))))

(declare-fun lt!2611946 () (Set Context!16200))

(assert (=> b!7349662 (= res!2968208 (= lt!2611940 (set.union lt!2611946 (derivationStepZipperDown!2986 (regTwo!38832 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3158 (List!71656 Regex!19160) List!71656)

(assert (=> b!7349662 (= lt!2611946 (derivationStepZipperDown!2986 (regOne!38832 r1!2370) (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370))) c!10362))))

(declare-fun b!7349663 () Bool)

(declare-fun res!2968202 () Bool)

(assert (=> b!7349663 (=> (not res!2968202) (not e!4400722))))

(declare-fun nullable!8251 (Regex!19160) Bool)

(assert (=> b!7349663 (= res!2968202 (nullable!8251 (regOne!38832 r1!2370)))))

(declare-fun b!7349664 () Bool)

(declare-fun res!2968204 () Bool)

(assert (=> b!7349664 (=> (not res!2968204) (not e!4400717))))

(assert (=> b!7349664 (= res!2968204 (not (set.member cWitness!61 lt!2611946)))))

(declare-fun b!7349665 () Bool)

(declare-fun tp!2087442 () Bool)

(assert (=> b!7349665 (= e!4400721 tp!2087442)))

(declare-fun b!7349666 () Bool)

(declare-fun e!4400723 () Bool)

(declare-fun forall!17984 (List!71656 Int) Bool)

(assert (=> b!7349666 (= e!4400723 (forall!17984 (exprs!8600 ct1!282) lambda!456442))))

(declare-fun lt!2611944 () Unit!165273)

(assert (=> b!7349666 (= lt!2611944 (lemmaConcatPreservesForall!1835 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456442))))

(declare-fun b!7349667 () Bool)

(declare-fun res!2968206 () Bool)

(assert (=> b!7349667 (=> (not res!2968206) (not e!4400722))))

(assert (=> b!7349667 (= res!2968206 (validRegex!9756 (regTwo!38832 r1!2370)))))

(declare-fun b!7349668 () Bool)

(assert (=> b!7349668 (= e!4400717 (not e!4400723))))

(declare-fun res!2968201 () Bool)

(assert (=> b!7349668 (=> res!2968201 e!4400723)))

(declare-fun lt!2611947 () Context!16200)

(assert (=> b!7349668 (= res!2968201 (not (set.member lt!2611947 lt!2611941)))))

(declare-fun lt!2611948 () Unit!165273)

(assert (=> b!7349668 (= lt!2611948 (lemmaConcatPreservesForall!1835 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456442))))

(assert (=> b!7349668 (set.member lt!2611947 (derivationStepZipperDown!2986 (regTwo!38832 r1!2370) lt!2611942 c!10362))))

(assert (=> b!7349668 (= lt!2611947 (Context!16201 (++!16978 (exprs!8600 cWitness!61) (exprs!8600 ct2!378))))))

(declare-fun lt!2611943 () Unit!165273)

(assert (=> b!7349668 (= lt!2611943 (lemmaConcatPreservesForall!1835 (exprs!8600 ct1!282) (exprs!8600 ct2!378) lambda!456442))))

(declare-fun lt!2611945 () Unit!165273)

(assert (=> b!7349668 (= lt!2611945 (lemmaConcatPreservesForall!1835 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456442))))

(declare-fun lt!2611938 () Unit!165273)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!85 (Regex!19160 Context!16200 Context!16200 Context!16200 C!38594) Unit!165273)

(assert (=> b!7349668 (= lt!2611938 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!85 (regTwo!38832 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (= (and start!717734 res!2968205) b!7349654))

(assert (= (and b!7349654 res!2968207) b!7349658))

(assert (= (and b!7349658 res!2968203) b!7349663))

(assert (= (and b!7349663 res!2968202) b!7349667))

(assert (= (and b!7349667 res!2968206) b!7349662))

(assert (= (and b!7349662 res!2968208) b!7349664))

(assert (= (and b!7349664 res!2968204) b!7349668))

(assert (= (and b!7349668 (not res!2968201)) b!7349666))

(assert (= start!717734 b!7349665))

(assert (= start!717734 b!7349657))

(assert (= (and start!717734 (is-ElementMatch!19160 r1!2370)) b!7349655))

(assert (= (and start!717734 (is-Concat!28005 r1!2370)) b!7349661))

(assert (= (and start!717734 (is-Star!19160 r1!2370)) b!7349660))

(assert (= (and start!717734 (is-Union!19160 r1!2370)) b!7349659))

(assert (= start!717734 b!7349656))

(declare-fun m!8011154 () Bool)

(assert (=> start!717734 m!8011154))

(declare-fun m!8011156 () Bool)

(assert (=> start!717734 m!8011156))

(declare-fun m!8011158 () Bool)

(assert (=> start!717734 m!8011158))

(declare-fun m!8011160 () Bool)

(assert (=> start!717734 m!8011160))

(declare-fun m!8011162 () Bool)

(assert (=> b!7349666 m!8011162))

(declare-fun m!8011164 () Bool)

(assert (=> b!7349666 m!8011164))

(declare-fun m!8011166 () Bool)

(assert (=> b!7349662 m!8011166))

(declare-fun m!8011168 () Bool)

(assert (=> b!7349662 m!8011168))

(declare-fun m!8011170 () Bool)

(assert (=> b!7349662 m!8011170))

(assert (=> b!7349668 m!8011164))

(declare-fun m!8011172 () Bool)

(assert (=> b!7349668 m!8011172))

(declare-fun m!8011174 () Bool)

(assert (=> b!7349668 m!8011174))

(assert (=> b!7349668 m!8011164))

(declare-fun m!8011176 () Bool)

(assert (=> b!7349668 m!8011176))

(declare-fun m!8011178 () Bool)

(assert (=> b!7349668 m!8011178))

(declare-fun m!8011180 () Bool)

(assert (=> b!7349668 m!8011180))

(declare-fun m!8011182 () Bool)

(assert (=> b!7349668 m!8011182))

(declare-fun m!8011184 () Bool)

(assert (=> b!7349654 m!8011184))

(declare-fun m!8011186 () Bool)

(assert (=> b!7349654 m!8011186))

(declare-fun m!8011188 () Bool)

(assert (=> b!7349664 m!8011188))

(declare-fun m!8011190 () Bool)

(assert (=> b!7349667 m!8011190))

(declare-fun m!8011192 () Bool)

(assert (=> b!7349663 m!8011192))

(declare-fun m!8011194 () Bool)

(assert (=> b!7349658 m!8011194))

(declare-fun m!8011196 () Bool)

(assert (=> b!7349658 m!8011196))

(assert (=> b!7349658 m!8011176))

(push 1)

(assert (not b!7349656))

(assert (not b!7349661))

(assert (not b!7349665))

(assert tp_is_empty!48565)

(assert (not b!7349662))

(assert (not b!7349657))

(assert (not b!7349668))

(assert (not b!7349659))

(assert (not b!7349666))

(assert (not start!717734))

(assert (not b!7349654))

(assert (not b!7349663))

(assert (not b!7349667))

(assert (not b!7349660))

(assert (not b!7349658))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2280311 () Bool)

(declare-fun nullableFct!3288 (Regex!19160) Bool)

(assert (=> d!2280311 (= (nullable!8251 (regOne!38832 r1!2370)) (nullableFct!3288 (regOne!38832 r1!2370)))))

(declare-fun bs!1919186 () Bool)

(assert (= bs!1919186 d!2280311))

(declare-fun m!8011242 () Bool)

(assert (=> bs!1919186 m!8011242))

(assert (=> b!7349663 d!2280311))

(declare-fun d!2280313 () Bool)

(assert (=> d!2280313 (forall!17984 (++!16978 (exprs!8600 ct1!282) (exprs!8600 ct2!378)) lambda!456442)))

(declare-fun lt!2611984 () Unit!165273)

(declare-fun choose!57171 (List!71656 List!71656 Int) Unit!165273)

(assert (=> d!2280313 (= lt!2611984 (choose!57171 (exprs!8600 ct1!282) (exprs!8600 ct2!378) lambda!456442))))

(assert (=> d!2280313 (forall!17984 (exprs!8600 ct1!282) lambda!456442)))

(assert (=> d!2280313 (= (lemmaConcatPreservesForall!1835 (exprs!8600 ct1!282) (exprs!8600 ct2!378) lambda!456442) lt!2611984)))

(declare-fun bs!1919187 () Bool)

(assert (= bs!1919187 d!2280313))

(assert (=> bs!1919187 m!8011196))

(assert (=> bs!1919187 m!8011196))

(declare-fun m!8011244 () Bool)

(assert (=> bs!1919187 m!8011244))

(declare-fun m!8011246 () Bool)

(assert (=> bs!1919187 m!8011246))

(assert (=> bs!1919187 m!8011162))

(assert (=> b!7349668 d!2280313))

(declare-fun d!2280315 () Bool)

(declare-fun e!4400755 () Bool)

(assert (=> d!2280315 e!4400755))

(declare-fun res!2968237 () Bool)

(assert (=> d!2280315 (=> (not res!2968237) (not e!4400755))))

(declare-fun lt!2611987 () List!71656)

(declare-fun content!15068 (List!71656) (Set Regex!19160))

(assert (=> d!2280315 (= res!2968237 (= (content!15068 lt!2611987) (set.union (content!15068 (exprs!8600 cWitness!61)) (content!15068 (exprs!8600 ct2!378)))))))

(declare-fun e!4400756 () List!71656)

(assert (=> d!2280315 (= lt!2611987 e!4400756)))

(declare-fun c!1365426 () Bool)

(assert (=> d!2280315 (= c!1365426 (is-Nil!71532 (exprs!8600 cWitness!61)))))

(assert (=> d!2280315 (= (++!16978 (exprs!8600 cWitness!61) (exprs!8600 ct2!378)) lt!2611987)))

(declare-fun b!7349722 () Bool)

(assert (=> b!7349722 (= e!4400756 (exprs!8600 ct2!378))))

(declare-fun b!7349724 () Bool)

(declare-fun res!2968238 () Bool)

(assert (=> b!7349724 (=> (not res!2968238) (not e!4400755))))

(declare-fun size!42047 (List!71656) Int)

(assert (=> b!7349724 (= res!2968238 (= (size!42047 lt!2611987) (+ (size!42047 (exprs!8600 cWitness!61)) (size!42047 (exprs!8600 ct2!378)))))))

(declare-fun b!7349723 () Bool)

(assert (=> b!7349723 (= e!4400756 (Cons!71532 (h!77980 (exprs!8600 cWitness!61)) (++!16978 (t!386071 (exprs!8600 cWitness!61)) (exprs!8600 ct2!378))))))

(declare-fun b!7349725 () Bool)

(assert (=> b!7349725 (= e!4400755 (or (not (= (exprs!8600 ct2!378) Nil!71532)) (= lt!2611987 (exprs!8600 cWitness!61))))))

(assert (= (and d!2280315 c!1365426) b!7349722))

(assert (= (and d!2280315 (not c!1365426)) b!7349723))

(assert (= (and d!2280315 res!2968237) b!7349724))

(assert (= (and b!7349724 res!2968238) b!7349725))

(declare-fun m!8011248 () Bool)

(assert (=> d!2280315 m!8011248))

(declare-fun m!8011250 () Bool)

(assert (=> d!2280315 m!8011250))

(declare-fun m!8011252 () Bool)

(assert (=> d!2280315 m!8011252))

(declare-fun m!8011254 () Bool)

(assert (=> b!7349724 m!8011254))

(declare-fun m!8011256 () Bool)

(assert (=> b!7349724 m!8011256))

(declare-fun m!8011258 () Bool)

(assert (=> b!7349724 m!8011258))

(declare-fun m!8011260 () Bool)

(assert (=> b!7349723 m!8011260))

(assert (=> b!7349668 d!2280315))

(declare-fun d!2280317 () Bool)

(assert (=> d!2280317 (forall!17984 (++!16978 (exprs!8600 cWitness!61) (exprs!8600 ct2!378)) lambda!456442)))

(declare-fun lt!2611988 () Unit!165273)

(assert (=> d!2280317 (= lt!2611988 (choose!57171 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456442))))

(assert (=> d!2280317 (forall!17984 (exprs!8600 cWitness!61) lambda!456442)))

(assert (=> d!2280317 (= (lemmaConcatPreservesForall!1835 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456442) lt!2611988)))

(declare-fun bs!1919188 () Bool)

(assert (= bs!1919188 d!2280317))

(assert (=> bs!1919188 m!8011172))

(assert (=> bs!1919188 m!8011172))

(declare-fun m!8011262 () Bool)

(assert (=> bs!1919188 m!8011262))

(declare-fun m!8011264 () Bool)

(assert (=> bs!1919188 m!8011264))

(declare-fun m!8011266 () Bool)

(assert (=> bs!1919188 m!8011266))

(assert (=> b!7349668 d!2280317))

(declare-fun b!7349758 () Bool)

(declare-fun e!4400776 () (Set Context!16200))

(declare-fun call!672098 () (Set Context!16200))

(declare-fun call!672100 () (Set Context!16200))

(assert (=> b!7349758 (= e!4400776 (set.union call!672098 call!672100))))

(declare-fun b!7349760 () Bool)

(declare-fun c!1365445 () Bool)

(assert (=> b!7349760 (= c!1365445 (is-Star!19160 (regTwo!38832 r1!2370)))))

(declare-fun e!4400777 () (Set Context!16200))

(declare-fun e!4400773 () (Set Context!16200))

(assert (=> b!7349760 (= e!4400777 e!4400773)))

(declare-fun bm!672091 () Bool)

(declare-fun call!672097 () (Set Context!16200))

(assert (=> bm!672091 (= call!672097 call!672098)))

(declare-fun b!7349762 () Bool)

(declare-fun e!4400779 () Bool)

(assert (=> b!7349762 (= e!4400779 (nullable!8251 (regOne!38832 (regTwo!38832 r1!2370))))))

(declare-fun b!7349763 () Bool)

(declare-fun e!4400775 () (Set Context!16200))

(assert (=> b!7349763 (= e!4400775 (set.insert lt!2611942 (as set.empty (Set Context!16200))))))

(declare-fun bm!672093 () Bool)

(declare-fun call!672099 () List!71656)

(declare-fun call!672096 () List!71656)

(assert (=> bm!672093 (= call!672099 call!672096)))

(declare-fun b!7349764 () Bool)

(declare-fun c!1365442 () Bool)

(assert (=> b!7349764 (= c!1365442 e!4400779)))

(declare-fun res!2968241 () Bool)

(assert (=> b!7349764 (=> (not res!2968241) (not e!4400779))))

(assert (=> b!7349764 (= res!2968241 (is-Concat!28005 (regTwo!38832 r1!2370)))))

(declare-fun e!4400774 () (Set Context!16200))

(assert (=> b!7349764 (= e!4400776 e!4400774)))

(declare-fun b!7349765 () Bool)

(assert (=> b!7349765 (= e!4400774 (set.union call!672100 call!672097))))

(declare-fun bm!672094 () Bool)

(declare-fun c!1365441 () Bool)

(declare-fun c!1365444 () Bool)

(assert (=> bm!672094 (= call!672098 (derivationStepZipperDown!2986 (ite c!1365444 (regOne!38833 (regTwo!38832 r1!2370)) (ite c!1365442 (regTwo!38832 (regTwo!38832 r1!2370)) (ite c!1365441 (regOne!38832 (regTwo!38832 r1!2370)) (reg!19489 (regTwo!38832 r1!2370))))) (ite (or c!1365444 c!1365442) lt!2611942 (Context!16201 call!672099)) c!10362))))

(declare-fun b!7349766 () Bool)

(declare-fun call!672101 () (Set Context!16200))

(assert (=> b!7349766 (= e!4400773 call!672101)))

(declare-fun bm!672095 () Bool)

(assert (=> bm!672095 (= call!672100 (derivationStepZipperDown!2986 (ite c!1365444 (regTwo!38833 (regTwo!38832 r1!2370)) (regOne!38832 (regTwo!38832 r1!2370))) (ite c!1365444 lt!2611942 (Context!16201 call!672096)) c!10362))))

(declare-fun b!7349767 () Bool)

(assert (=> b!7349767 (= e!4400773 (as set.empty (Set Context!16200)))))

(declare-fun bm!672092 () Bool)

(assert (=> bm!672092 (= call!672101 call!672097)))

(declare-fun d!2280319 () Bool)

(declare-fun c!1365443 () Bool)

(assert (=> d!2280319 (= c!1365443 (and (is-ElementMatch!19160 (regTwo!38832 r1!2370)) (= (c!1365422 (regTwo!38832 r1!2370)) c!10362)))))

(assert (=> d!2280319 (= (derivationStepZipperDown!2986 (regTwo!38832 r1!2370) lt!2611942 c!10362) e!4400775)))

(declare-fun b!7349768 () Bool)

(assert (=> b!7349768 (= e!4400777 call!672101)))

(declare-fun b!7349769 () Bool)

(assert (=> b!7349769 (= e!4400775 e!4400776)))

(assert (=> b!7349769 (= c!1365444 (is-Union!19160 (regTwo!38832 r1!2370)))))

(declare-fun bm!672096 () Bool)

(assert (=> bm!672096 (= call!672096 ($colon$colon!3158 (exprs!8600 lt!2611942) (ite (or c!1365442 c!1365441) (regTwo!38832 (regTwo!38832 r1!2370)) (regTwo!38832 r1!2370))))))

(declare-fun b!7349770 () Bool)

(assert (=> b!7349770 (= e!4400774 e!4400777)))

(assert (=> b!7349770 (= c!1365441 (is-Concat!28005 (regTwo!38832 r1!2370)))))

(assert (= (and d!2280319 c!1365443) b!7349763))

(assert (= (and d!2280319 (not c!1365443)) b!7349769))

(assert (= (and b!7349769 c!1365444) b!7349758))

(assert (= (and b!7349769 (not c!1365444)) b!7349764))

(assert (= (and b!7349764 res!2968241) b!7349762))

(assert (= (and b!7349764 c!1365442) b!7349765))

(assert (= (and b!7349764 (not c!1365442)) b!7349770))

(assert (= (and b!7349770 c!1365441) b!7349768))

(assert (= (and b!7349770 (not c!1365441)) b!7349760))

(assert (= (and b!7349760 c!1365445) b!7349766))

(assert (= (and b!7349760 (not c!1365445)) b!7349767))

(assert (= (or b!7349768 b!7349766) bm!672093))

(assert (= (or b!7349768 b!7349766) bm!672092))

(assert (= (or b!7349765 bm!672092) bm!672091))

(assert (= (or b!7349765 bm!672093) bm!672096))

(assert (= (or b!7349758 b!7349765) bm!672095))

(assert (= (or b!7349758 bm!672091) bm!672094))

(declare-fun m!8011268 () Bool)

(assert (=> bm!672095 m!8011268))

(declare-fun m!8011270 () Bool)

(assert (=> b!7349762 m!8011270))

(declare-fun m!8011272 () Bool)

(assert (=> b!7349763 m!8011272))

(declare-fun m!8011274 () Bool)

(assert (=> bm!672094 m!8011274))

(declare-fun m!8011276 () Bool)

(assert (=> bm!672096 m!8011276))

(assert (=> b!7349668 d!2280319))

(declare-fun bs!1919189 () Bool)

(declare-fun d!2280323 () Bool)

(assert (= bs!1919189 (and d!2280323 b!7349658)))

(declare-fun lambda!456460 () Int)

(assert (=> bs!1919189 (= lambda!456460 lambda!456442)))

(assert (=> d!2280323 (set.member (Context!16201 (++!16978 (exprs!8600 cWitness!61) (exprs!8600 ct2!378))) (derivationStepZipperDown!2986 (regTwo!38832 r1!2370) (Context!16201 (++!16978 (exprs!8600 ct1!282) (exprs!8600 ct2!378))) c!10362))))

(declare-fun lt!2611997 () Unit!165273)

(assert (=> d!2280323 (= lt!2611997 (lemmaConcatPreservesForall!1835 (exprs!8600 ct1!282) (exprs!8600 ct2!378) lambda!456460))))

(declare-fun lt!2611996 () Unit!165273)

(assert (=> d!2280323 (= lt!2611996 (lemmaConcatPreservesForall!1835 (exprs!8600 cWitness!61) (exprs!8600 ct2!378) lambda!456460))))

(declare-fun lt!2611995 () Unit!165273)

(declare-fun choose!57172 (Regex!19160 Context!16200 Context!16200 Context!16200 C!38594) Unit!165273)

(assert (=> d!2280323 (= lt!2611995 (choose!57172 (regTwo!38832 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280323 (validRegex!9756 (regTwo!38832 r1!2370))))

(assert (=> d!2280323 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!85 (regTwo!38832 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2611995)))

(declare-fun bs!1919190 () Bool)

(assert (= bs!1919190 d!2280323))

(declare-fun m!8011278 () Bool)

(assert (=> bs!1919190 m!8011278))

(assert (=> bs!1919190 m!8011196))

(declare-fun m!8011280 () Bool)

(assert (=> bs!1919190 m!8011280))

(declare-fun m!8011282 () Bool)

(assert (=> bs!1919190 m!8011282))

(declare-fun m!8011284 () Bool)

(assert (=> bs!1919190 m!8011284))

(assert (=> bs!1919190 m!8011172))

(declare-fun m!8011286 () Bool)

(assert (=> bs!1919190 m!8011286))

(assert (=> bs!1919190 m!8011190))

(assert (=> b!7349668 d!2280323))

(declare-fun b!7349781 () Bool)

(declare-fun e!4400790 () (Set Context!16200))

(declare-fun call!672116 () (Set Context!16200))

(declare-fun call!672118 () (Set Context!16200))

(assert (=> b!7349781 (= e!4400790 (set.union call!672116 call!672118))))

(declare-fun b!7349782 () Bool)

(declare-fun c!1365457 () Bool)

(assert (=> b!7349782 (= c!1365457 (is-Star!19160 (regTwo!38832 r1!2370)))))

(declare-fun e!4400791 () (Set Context!16200))

(declare-fun e!4400787 () (Set Context!16200))

(assert (=> b!7349782 (= e!4400791 e!4400787)))

(declare-fun bm!672109 () Bool)

(declare-fun call!672115 () (Set Context!16200))

(assert (=> bm!672109 (= call!672115 call!672116)))

(declare-fun b!7349783 () Bool)

(declare-fun e!4400792 () Bool)

(assert (=> b!7349783 (= e!4400792 (nullable!8251 (regOne!38832 (regTwo!38832 r1!2370))))))

(declare-fun b!7349784 () Bool)

(declare-fun e!4400789 () (Set Context!16200))

(assert (=> b!7349784 (= e!4400789 (set.insert ct1!282 (as set.empty (Set Context!16200))))))

(declare-fun bm!672111 () Bool)

(declare-fun call!672117 () List!71656)

(declare-fun call!672114 () List!71656)

(assert (=> bm!672111 (= call!672117 call!672114)))

(declare-fun b!7349785 () Bool)

(declare-fun c!1365454 () Bool)

(assert (=> b!7349785 (= c!1365454 e!4400792)))

(declare-fun res!2968244 () Bool)

(assert (=> b!7349785 (=> (not res!2968244) (not e!4400792))))

(assert (=> b!7349785 (= res!2968244 (is-Concat!28005 (regTwo!38832 r1!2370)))))

(declare-fun e!4400788 () (Set Context!16200))

(assert (=> b!7349785 (= e!4400790 e!4400788)))

(declare-fun b!7349786 () Bool)

(assert (=> b!7349786 (= e!4400788 (set.union call!672118 call!672115))))

(declare-fun bm!672112 () Bool)

(declare-fun c!1365456 () Bool)

(declare-fun c!1365453 () Bool)

(assert (=> bm!672112 (= call!672116 (derivationStepZipperDown!2986 (ite c!1365456 (regOne!38833 (regTwo!38832 r1!2370)) (ite c!1365454 (regTwo!38832 (regTwo!38832 r1!2370)) (ite c!1365453 (regOne!38832 (regTwo!38832 r1!2370)) (reg!19489 (regTwo!38832 r1!2370))))) (ite (or c!1365456 c!1365454) ct1!282 (Context!16201 call!672117)) c!10362))))

(declare-fun b!7349787 () Bool)

(declare-fun call!672119 () (Set Context!16200))

(assert (=> b!7349787 (= e!4400787 call!672119)))

(declare-fun bm!672113 () Bool)

(assert (=> bm!672113 (= call!672118 (derivationStepZipperDown!2986 (ite c!1365456 (regTwo!38833 (regTwo!38832 r1!2370)) (regOne!38832 (regTwo!38832 r1!2370))) (ite c!1365456 ct1!282 (Context!16201 call!672114)) c!10362))))

(declare-fun b!7349788 () Bool)

(assert (=> b!7349788 (= e!4400787 (as set.empty (Set Context!16200)))))

(declare-fun bm!672110 () Bool)

(assert (=> bm!672110 (= call!672119 call!672115)))

(declare-fun d!2280325 () Bool)

(declare-fun c!1365455 () Bool)

(assert (=> d!2280325 (= c!1365455 (and (is-ElementMatch!19160 (regTwo!38832 r1!2370)) (= (c!1365422 (regTwo!38832 r1!2370)) c!10362)))))

(assert (=> d!2280325 (= (derivationStepZipperDown!2986 (regTwo!38832 r1!2370) ct1!282 c!10362) e!4400789)))

(declare-fun b!7349789 () Bool)

(assert (=> b!7349789 (= e!4400791 call!672119)))

(declare-fun b!7349790 () Bool)

(assert (=> b!7349790 (= e!4400789 e!4400790)))

(assert (=> b!7349790 (= c!1365456 (is-Union!19160 (regTwo!38832 r1!2370)))))

(declare-fun bm!672114 () Bool)

(assert (=> bm!672114 (= call!672114 ($colon$colon!3158 (exprs!8600 ct1!282) (ite (or c!1365454 c!1365453) (regTwo!38832 (regTwo!38832 r1!2370)) (regTwo!38832 r1!2370))))))

(declare-fun b!7349791 () Bool)

(assert (=> b!7349791 (= e!4400788 e!4400791)))

(assert (=> b!7349791 (= c!1365453 (is-Concat!28005 (regTwo!38832 r1!2370)))))

(assert (= (and d!2280325 c!1365455) b!7349784))

(assert (= (and d!2280325 (not c!1365455)) b!7349790))

(assert (= (and b!7349790 c!1365456) b!7349781))

(assert (= (and b!7349790 (not c!1365456)) b!7349785))

(assert (= (and b!7349785 res!2968244) b!7349783))

(assert (= (and b!7349785 c!1365454) b!7349786))

(assert (= (and b!7349785 (not c!1365454)) b!7349791))

(assert (= (and b!7349791 c!1365453) b!7349789))

(assert (= (and b!7349791 (not c!1365453)) b!7349782))

(assert (= (and b!7349782 c!1365457) b!7349787))

(assert (= (and b!7349782 (not c!1365457)) b!7349788))

(assert (= (or b!7349789 b!7349787) bm!672111))

(assert (= (or b!7349789 b!7349787) bm!672110))

(assert (= (or b!7349786 bm!672110) bm!672109))

(assert (= (or b!7349786 bm!672111) bm!672114))

(assert (= (or b!7349781 b!7349786) bm!672113))

(assert (= (or b!7349781 bm!672109) bm!672112))

(declare-fun m!8011288 () Bool)

(assert (=> bm!672113 m!8011288))

(assert (=> b!7349783 m!8011270))

(declare-fun m!8011290 () Bool)

(assert (=> b!7349784 m!8011290))

(declare-fun m!8011292 () Bool)

(assert (=> bm!672112 m!8011292))

(declare-fun m!8011294 () Bool)

(assert (=> bm!672114 m!8011294))

(assert (=> b!7349662 d!2280325))

(declare-fun b!7349792 () Bool)

(declare-fun e!4400796 () (Set Context!16200))

(declare-fun call!672122 () (Set Context!16200))

(declare-fun call!672124 () (Set Context!16200))

(assert (=> b!7349792 (= e!4400796 (set.union call!672122 call!672124))))

(declare-fun b!7349793 () Bool)

(declare-fun c!1365462 () Bool)

(assert (=> b!7349793 (= c!1365462 (is-Star!19160 (regOne!38832 r1!2370)))))

(declare-fun e!4400797 () (Set Context!16200))

(declare-fun e!4400793 () (Set Context!16200))

(assert (=> b!7349793 (= e!4400797 e!4400793)))

(declare-fun bm!672115 () Bool)

(declare-fun call!672121 () (Set Context!16200))

(assert (=> bm!672115 (= call!672121 call!672122)))

(declare-fun b!7349794 () Bool)

(declare-fun e!4400798 () Bool)

(assert (=> b!7349794 (= e!4400798 (nullable!8251 (regOne!38832 (regOne!38832 r1!2370))))))

(declare-fun b!7349795 () Bool)

(declare-fun e!4400795 () (Set Context!16200))

(assert (=> b!7349795 (= e!4400795 (set.insert (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370))) (as set.empty (Set Context!16200))))))

(declare-fun bm!672117 () Bool)

(declare-fun call!672123 () List!71656)

(declare-fun call!672120 () List!71656)

(assert (=> bm!672117 (= call!672123 call!672120)))

(declare-fun b!7349796 () Bool)

(declare-fun c!1365459 () Bool)

(assert (=> b!7349796 (= c!1365459 e!4400798)))

(declare-fun res!2968245 () Bool)

(assert (=> b!7349796 (=> (not res!2968245) (not e!4400798))))

(assert (=> b!7349796 (= res!2968245 (is-Concat!28005 (regOne!38832 r1!2370)))))

(declare-fun e!4400794 () (Set Context!16200))

(assert (=> b!7349796 (= e!4400796 e!4400794)))

(declare-fun b!7349797 () Bool)

(assert (=> b!7349797 (= e!4400794 (set.union call!672124 call!672121))))

(declare-fun bm!672118 () Bool)

(declare-fun c!1365461 () Bool)

(declare-fun c!1365458 () Bool)

(assert (=> bm!672118 (= call!672122 (derivationStepZipperDown!2986 (ite c!1365461 (regOne!38833 (regOne!38832 r1!2370)) (ite c!1365459 (regTwo!38832 (regOne!38832 r1!2370)) (ite c!1365458 (regOne!38832 (regOne!38832 r1!2370)) (reg!19489 (regOne!38832 r1!2370))))) (ite (or c!1365461 c!1365459) (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370))) (Context!16201 call!672123)) c!10362))))

(declare-fun b!7349798 () Bool)

(declare-fun call!672125 () (Set Context!16200))

(assert (=> b!7349798 (= e!4400793 call!672125)))

(declare-fun bm!672119 () Bool)

(assert (=> bm!672119 (= call!672124 (derivationStepZipperDown!2986 (ite c!1365461 (regTwo!38833 (regOne!38832 r1!2370)) (regOne!38832 (regOne!38832 r1!2370))) (ite c!1365461 (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370))) (Context!16201 call!672120)) c!10362))))

(declare-fun b!7349799 () Bool)

(assert (=> b!7349799 (= e!4400793 (as set.empty (Set Context!16200)))))

(declare-fun bm!672116 () Bool)

(assert (=> bm!672116 (= call!672125 call!672121)))

(declare-fun d!2280327 () Bool)

(declare-fun c!1365460 () Bool)

(assert (=> d!2280327 (= c!1365460 (and (is-ElementMatch!19160 (regOne!38832 r1!2370)) (= (c!1365422 (regOne!38832 r1!2370)) c!10362)))))

(assert (=> d!2280327 (= (derivationStepZipperDown!2986 (regOne!38832 r1!2370) (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370))) c!10362) e!4400795)))

(declare-fun b!7349800 () Bool)

(assert (=> b!7349800 (= e!4400797 call!672125)))

(declare-fun b!7349801 () Bool)

(assert (=> b!7349801 (= e!4400795 e!4400796)))

(assert (=> b!7349801 (= c!1365461 (is-Union!19160 (regOne!38832 r1!2370)))))

(declare-fun bm!672120 () Bool)

(assert (=> bm!672120 (= call!672120 ($colon$colon!3158 (exprs!8600 (Context!16201 ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370)))) (ite (or c!1365459 c!1365458) (regTwo!38832 (regOne!38832 r1!2370)) (regOne!38832 r1!2370))))))

(declare-fun b!7349802 () Bool)

(assert (=> b!7349802 (= e!4400794 e!4400797)))

(assert (=> b!7349802 (= c!1365458 (is-Concat!28005 (regOne!38832 r1!2370)))))

(assert (= (and d!2280327 c!1365460) b!7349795))

(assert (= (and d!2280327 (not c!1365460)) b!7349801))

(assert (= (and b!7349801 c!1365461) b!7349792))

(assert (= (and b!7349801 (not c!1365461)) b!7349796))

(assert (= (and b!7349796 res!2968245) b!7349794))

(assert (= (and b!7349796 c!1365459) b!7349797))

(assert (= (and b!7349796 (not c!1365459)) b!7349802))

(assert (= (and b!7349802 c!1365458) b!7349800))

(assert (= (and b!7349802 (not c!1365458)) b!7349793))

(assert (= (and b!7349793 c!1365462) b!7349798))

(assert (= (and b!7349793 (not c!1365462)) b!7349799))

(assert (= (or b!7349800 b!7349798) bm!672117))

(assert (= (or b!7349800 b!7349798) bm!672116))

(assert (= (or b!7349797 bm!672116) bm!672115))

(assert (= (or b!7349797 bm!672117) bm!672120))

(assert (= (or b!7349792 b!7349797) bm!672119))

(assert (= (or b!7349792 bm!672115) bm!672118))

(declare-fun m!8011296 () Bool)

(assert (=> bm!672119 m!8011296))

(declare-fun m!8011298 () Bool)

(assert (=> b!7349794 m!8011298))

(declare-fun m!8011300 () Bool)

(assert (=> b!7349795 m!8011300))

(declare-fun m!8011302 () Bool)

(assert (=> bm!672118 m!8011302))

(declare-fun m!8011304 () Bool)

(assert (=> bm!672120 m!8011304))

(assert (=> b!7349662 d!2280327))

(declare-fun d!2280329 () Bool)

(assert (=> d!2280329 (= ($colon$colon!3158 (exprs!8600 ct1!282) (regTwo!38832 r1!2370)) (Cons!71532 (regTwo!38832 r1!2370) (exprs!8600 ct1!282)))))

(assert (=> b!7349662 d!2280329))

(declare-fun b!7349803 () Bool)

(declare-fun e!4400802 () (Set Context!16200))

(declare-fun call!672128 () (Set Context!16200))

(declare-fun call!672130 () (Set Context!16200))

(assert (=> b!7349803 (= e!4400802 (set.union call!672128 call!672130))))

(declare-fun b!7349804 () Bool)

(declare-fun c!1365467 () Bool)

(assert (=> b!7349804 (= c!1365467 (is-Star!19160 r1!2370))))

(declare-fun e!4400803 () (Set Context!16200))

(declare-fun e!4400799 () (Set Context!16200))

(assert (=> b!7349804 (= e!4400803 e!4400799)))

(declare-fun bm!672121 () Bool)

(declare-fun call!672127 () (Set Context!16200))

(assert (=> bm!672121 (= call!672127 call!672128)))

(declare-fun b!7349805 () Bool)

(declare-fun e!4400804 () Bool)

(assert (=> b!7349805 (= e!4400804 (nullable!8251 (regOne!38832 r1!2370)))))

(declare-fun b!7349806 () Bool)

(declare-fun e!4400801 () (Set Context!16200))

(assert (=> b!7349806 (= e!4400801 (set.insert lt!2611942 (as set.empty (Set Context!16200))))))

(declare-fun bm!672123 () Bool)

(declare-fun call!672129 () List!71656)

(declare-fun call!672126 () List!71656)

(assert (=> bm!672123 (= call!672129 call!672126)))

(declare-fun b!7349807 () Bool)

(declare-fun c!1365464 () Bool)

(assert (=> b!7349807 (= c!1365464 e!4400804)))

(declare-fun res!2968246 () Bool)

(assert (=> b!7349807 (=> (not res!2968246) (not e!4400804))))

(assert (=> b!7349807 (= res!2968246 (is-Concat!28005 r1!2370))))

(declare-fun e!4400800 () (Set Context!16200))

(assert (=> b!7349807 (= e!4400802 e!4400800)))

(declare-fun b!7349808 () Bool)

(assert (=> b!7349808 (= e!4400800 (set.union call!672130 call!672127))))

(declare-fun c!1365466 () Bool)

(declare-fun c!1365463 () Bool)

(declare-fun bm!672124 () Bool)

(assert (=> bm!672124 (= call!672128 (derivationStepZipperDown!2986 (ite c!1365466 (regOne!38833 r1!2370) (ite c!1365464 (regTwo!38832 r1!2370) (ite c!1365463 (regOne!38832 r1!2370) (reg!19489 r1!2370)))) (ite (or c!1365466 c!1365464) lt!2611942 (Context!16201 call!672129)) c!10362))))

(declare-fun b!7349809 () Bool)

(declare-fun call!672131 () (Set Context!16200))

(assert (=> b!7349809 (= e!4400799 call!672131)))

(declare-fun bm!672125 () Bool)

(assert (=> bm!672125 (= call!672130 (derivationStepZipperDown!2986 (ite c!1365466 (regTwo!38833 r1!2370) (regOne!38832 r1!2370)) (ite c!1365466 lt!2611942 (Context!16201 call!672126)) c!10362))))

(declare-fun b!7349810 () Bool)

(assert (=> b!7349810 (= e!4400799 (as set.empty (Set Context!16200)))))

(declare-fun bm!672122 () Bool)

(assert (=> bm!672122 (= call!672131 call!672127)))

(declare-fun d!2280331 () Bool)

(declare-fun c!1365465 () Bool)

(assert (=> d!2280331 (= c!1365465 (and (is-ElementMatch!19160 r1!2370) (= (c!1365422 r1!2370) c!10362)))))

(assert (=> d!2280331 (= (derivationStepZipperDown!2986 r1!2370 lt!2611942 c!10362) e!4400801)))

(declare-fun b!7349811 () Bool)

(assert (=> b!7349811 (= e!4400803 call!672131)))

(declare-fun b!7349812 () Bool)

(assert (=> b!7349812 (= e!4400801 e!4400802)))

(assert (=> b!7349812 (= c!1365466 (is-Union!19160 r1!2370))))

(declare-fun bm!672126 () Bool)

(assert (=> bm!672126 (= call!672126 ($colon$colon!3158 (exprs!8600 lt!2611942) (ite (or c!1365464 c!1365463) (regTwo!38832 r1!2370) r1!2370)))))

(declare-fun b!7349813 () Bool)

(assert (=> b!7349813 (= e!4400800 e!4400803)))

(assert (=> b!7349813 (= c!1365463 (is-Concat!28005 r1!2370))))

(assert (= (and d!2280331 c!1365465) b!7349806))

(assert (= (and d!2280331 (not c!1365465)) b!7349812))

(assert (= (and b!7349812 c!1365466) b!7349803))

(assert (= (and b!7349812 (not c!1365466)) b!7349807))

(assert (= (and b!7349807 res!2968246) b!7349805))

(assert (= (and b!7349807 c!1365464) b!7349808))

(assert (= (and b!7349807 (not c!1365464)) b!7349813))

(assert (= (and b!7349813 c!1365463) b!7349811))

(assert (= (and b!7349813 (not c!1365463)) b!7349804))

(assert (= (and b!7349804 c!1365467) b!7349809))

(assert (= (and b!7349804 (not c!1365467)) b!7349810))

(assert (= (or b!7349811 b!7349809) bm!672123))

(assert (= (or b!7349811 b!7349809) bm!672122))

(assert (= (or b!7349808 bm!672122) bm!672121))

(assert (= (or b!7349808 bm!672123) bm!672126))

(assert (= (or b!7349803 b!7349808) bm!672125))

(assert (= (or b!7349803 bm!672121) bm!672124))

(declare-fun m!8011306 () Bool)

(assert (=> bm!672125 m!8011306))

(assert (=> b!7349805 m!8011192))

(assert (=> b!7349806 m!8011272))

(declare-fun m!8011308 () Bool)

(assert (=> bm!672124 m!8011308))

(declare-fun m!8011310 () Bool)

(assert (=> bm!672126 m!8011310))

(assert (=> b!7349658 d!2280331))

(declare-fun d!2280333 () Bool)

(declare-fun e!4400805 () Bool)

(assert (=> d!2280333 e!4400805))

(declare-fun res!2968247 () Bool)

(assert (=> d!2280333 (=> (not res!2968247) (not e!4400805))))

(declare-fun lt!2611998 () List!71656)

(assert (=> d!2280333 (= res!2968247 (= (content!15068 lt!2611998) (set.union (content!15068 (exprs!8600 ct1!282)) (content!15068 (exprs!8600 ct2!378)))))))

(declare-fun e!4400806 () List!71656)

(assert (=> d!2280333 (= lt!2611998 e!4400806)))

(declare-fun c!1365468 () Bool)

(assert (=> d!2280333 (= c!1365468 (is-Nil!71532 (exprs!8600 ct1!282)))))

(assert (=> d!2280333 (= (++!16978 (exprs!8600 ct1!282) (exprs!8600 ct2!378)) lt!2611998)))

(declare-fun b!7349814 () Bool)

(assert (=> b!7349814 (= e!4400806 (exprs!8600 ct2!378))))

(declare-fun b!7349816 () Bool)

(declare-fun res!2968248 () Bool)

(assert (=> b!7349816 (=> (not res!2968248) (not e!4400805))))

(assert (=> b!7349816 (= res!2968248 (= (size!42047 lt!2611998) (+ (size!42047 (exprs!8600 ct1!282)) (size!42047 (exprs!8600 ct2!378)))))))

(declare-fun b!7349815 () Bool)

(assert (=> b!7349815 (= e!4400806 (Cons!71532 (h!77980 (exprs!8600 ct1!282)) (++!16978 (t!386071 (exprs!8600 ct1!282)) (exprs!8600 ct2!378))))))

(declare-fun b!7349817 () Bool)

(assert (=> b!7349817 (= e!4400805 (or (not (= (exprs!8600 ct2!378) Nil!71532)) (= lt!2611998 (exprs!8600 ct1!282))))))

(assert (= (and d!2280333 c!1365468) b!7349814))

(assert (= (and d!2280333 (not c!1365468)) b!7349815))

(assert (= (and d!2280333 res!2968247) b!7349816))

(assert (= (and b!7349816 res!2968248) b!7349817))

(declare-fun m!8011312 () Bool)

(assert (=> d!2280333 m!8011312))

(declare-fun m!8011314 () Bool)

(assert (=> d!2280333 m!8011314))

(assert (=> d!2280333 m!8011252))

(declare-fun m!8011316 () Bool)

(assert (=> b!7349816 m!8011316))

(declare-fun m!8011318 () Bool)

(assert (=> b!7349816 m!8011318))

(assert (=> b!7349816 m!8011258))

(declare-fun m!8011320 () Bool)

(assert (=> b!7349815 m!8011320))

(assert (=> b!7349658 d!2280333))

(assert (=> b!7349658 d!2280313))

(declare-fun b!7349818 () Bool)

(declare-fun e!4400810 () (Set Context!16200))

(declare-fun call!672134 () (Set Context!16200))

(declare-fun call!672136 () (Set Context!16200))

(assert (=> b!7349818 (= e!4400810 (set.union call!672134 call!672136))))

(declare-fun b!7349819 () Bool)

(declare-fun c!1365473 () Bool)

(assert (=> b!7349819 (= c!1365473 (is-Star!19160 r1!2370))))

(declare-fun e!4400811 () (Set Context!16200))

(declare-fun e!4400807 () (Set Context!16200))

(assert (=> b!7349819 (= e!4400811 e!4400807)))

(declare-fun bm!672127 () Bool)

(declare-fun call!672133 () (Set Context!16200))

(assert (=> bm!672127 (= call!672133 call!672134)))

(declare-fun b!7349820 () Bool)

(declare-fun e!4400812 () Bool)

(assert (=> b!7349820 (= e!4400812 (nullable!8251 (regOne!38832 r1!2370)))))

(declare-fun b!7349821 () Bool)

(declare-fun e!4400809 () (Set Context!16200))

(assert (=> b!7349821 (= e!4400809 (set.insert ct1!282 (as set.empty (Set Context!16200))))))

(declare-fun bm!672129 () Bool)

(declare-fun call!672135 () List!71656)

(declare-fun call!672132 () List!71656)

(assert (=> bm!672129 (= call!672135 call!672132)))

(declare-fun b!7349822 () Bool)

(declare-fun c!1365470 () Bool)

(assert (=> b!7349822 (= c!1365470 e!4400812)))

(declare-fun res!2968249 () Bool)

(assert (=> b!7349822 (=> (not res!2968249) (not e!4400812))))

(assert (=> b!7349822 (= res!2968249 (is-Concat!28005 r1!2370))))

(declare-fun e!4400808 () (Set Context!16200))

(assert (=> b!7349822 (= e!4400810 e!4400808)))

(declare-fun b!7349823 () Bool)

(assert (=> b!7349823 (= e!4400808 (set.union call!672136 call!672133))))

(declare-fun c!1365472 () Bool)

(declare-fun c!1365469 () Bool)

(declare-fun bm!672130 () Bool)

(assert (=> bm!672130 (= call!672134 (derivationStepZipperDown!2986 (ite c!1365472 (regOne!38833 r1!2370) (ite c!1365470 (regTwo!38832 r1!2370) (ite c!1365469 (regOne!38832 r1!2370) (reg!19489 r1!2370)))) (ite (or c!1365472 c!1365470) ct1!282 (Context!16201 call!672135)) c!10362))))

(declare-fun b!7349824 () Bool)

(declare-fun call!672137 () (Set Context!16200))

(assert (=> b!7349824 (= e!4400807 call!672137)))

(declare-fun bm!672131 () Bool)

(assert (=> bm!672131 (= call!672136 (derivationStepZipperDown!2986 (ite c!1365472 (regTwo!38833 r1!2370) (regOne!38832 r1!2370)) (ite c!1365472 ct1!282 (Context!16201 call!672132)) c!10362))))

(declare-fun b!7349825 () Bool)

(assert (=> b!7349825 (= e!4400807 (as set.empty (Set Context!16200)))))

(declare-fun bm!672128 () Bool)

(assert (=> bm!672128 (= call!672137 call!672133)))

(declare-fun d!2280335 () Bool)

(declare-fun c!1365471 () Bool)

(assert (=> d!2280335 (= c!1365471 (and (is-ElementMatch!19160 r1!2370) (= (c!1365422 r1!2370) c!10362)))))

(assert (=> d!2280335 (= (derivationStepZipperDown!2986 r1!2370 ct1!282 c!10362) e!4400809)))

(declare-fun b!7349826 () Bool)

(assert (=> b!7349826 (= e!4400811 call!672137)))

(declare-fun b!7349827 () Bool)

(assert (=> b!7349827 (= e!4400809 e!4400810)))

(assert (=> b!7349827 (= c!1365472 (is-Union!19160 r1!2370))))

(declare-fun bm!672132 () Bool)

(assert (=> bm!672132 (= call!672132 ($colon$colon!3158 (exprs!8600 ct1!282) (ite (or c!1365470 c!1365469) (regTwo!38832 r1!2370) r1!2370)))))

(declare-fun b!7349828 () Bool)

(assert (=> b!7349828 (= e!4400808 e!4400811)))

(assert (=> b!7349828 (= c!1365469 (is-Concat!28005 r1!2370))))

(assert (= (and d!2280335 c!1365471) b!7349821))

(assert (= (and d!2280335 (not c!1365471)) b!7349827))

(assert (= (and b!7349827 c!1365472) b!7349818))

(assert (= (and b!7349827 (not c!1365472)) b!7349822))

(assert (= (and b!7349822 res!2968249) b!7349820))

(assert (= (and b!7349822 c!1365470) b!7349823))

(assert (= (and b!7349822 (not c!1365470)) b!7349828))

(assert (= (and b!7349828 c!1365469) b!7349826))

(assert (= (and b!7349828 (not c!1365469)) b!7349819))

(assert (= (and b!7349819 c!1365473) b!7349824))

(assert (= (and b!7349819 (not c!1365473)) b!7349825))

(assert (= (or b!7349826 b!7349824) bm!672129))

(assert (= (or b!7349826 b!7349824) bm!672128))

(assert (= (or b!7349823 bm!672128) bm!672127))

(assert (= (or b!7349823 bm!672129) bm!672132))

(assert (= (or b!7349818 b!7349823) bm!672131))

(assert (= (or b!7349818 bm!672127) bm!672130))

(declare-fun m!8011322 () Bool)

(assert (=> bm!672131 m!8011322))

(assert (=> b!7349820 m!8011192))

(assert (=> b!7349821 m!8011290))

(declare-fun m!8011324 () Bool)

(assert (=> bm!672130 m!8011324))

(declare-fun m!8011326 () Bool)

(assert (=> bm!672132 m!8011326))

(assert (=> b!7349654 d!2280335))

(declare-fun call!672151 () Bool)

(declare-fun bm!672145 () Bool)

(declare-fun c!1365483 () Bool)

(declare-fun c!1365484 () Bool)

(assert (=> bm!672145 (= call!672151 (validRegex!9756 (ite c!1365483 (reg!19489 (regTwo!38832 r1!2370)) (ite c!1365484 (regOne!38833 (regTwo!38832 r1!2370)) (regTwo!38832 (regTwo!38832 r1!2370))))))))

(declare-fun b!7349858 () Bool)

(declare-fun res!2968265 () Bool)

(declare-fun e!4400835 () Bool)

(assert (=> b!7349858 (=> (not res!2968265) (not e!4400835))))

(declare-fun call!672150 () Bool)

(assert (=> b!7349858 (= res!2968265 call!672150)))

(declare-fun e!4400833 () Bool)

(assert (=> b!7349858 (= e!4400833 e!4400835)))

(declare-fun bm!672146 () Bool)

(declare-fun call!672152 () Bool)

(assert (=> bm!672146 (= call!672152 (validRegex!9756 (ite c!1365484 (regTwo!38833 (regTwo!38832 r1!2370)) (regOne!38832 (regTwo!38832 r1!2370)))))))

(declare-fun d!2280337 () Bool)

(declare-fun res!2968264 () Bool)

(declare-fun e!4400834 () Bool)

(assert (=> d!2280337 (=> res!2968264 e!4400834)))

(assert (=> d!2280337 (= res!2968264 (is-ElementMatch!19160 (regTwo!38832 r1!2370)))))

(assert (=> d!2280337 (= (validRegex!9756 (regTwo!38832 r1!2370)) e!4400834)))

(declare-fun bm!672147 () Bool)

(assert (=> bm!672147 (= call!672150 call!672151)))

(declare-fun b!7349859 () Bool)

(declare-fun res!2968263 () Bool)

(declare-fun e!4400837 () Bool)

(assert (=> b!7349859 (=> res!2968263 e!4400837)))

(assert (=> b!7349859 (= res!2968263 (not (is-Concat!28005 (regTwo!38832 r1!2370))))))

(assert (=> b!7349859 (= e!4400833 e!4400837)))

(declare-fun b!7349860 () Bool)

(assert (=> b!7349860 (= e!4400835 call!672152)))

(declare-fun b!7349861 () Bool)

(declare-fun e!4400836 () Bool)

(assert (=> b!7349861 (= e!4400836 e!4400833)))

(assert (=> b!7349861 (= c!1365484 (is-Union!19160 (regTwo!38832 r1!2370)))))

(declare-fun b!7349862 () Bool)

(declare-fun e!4400838 () Bool)

(assert (=> b!7349862 (= e!4400838 call!672150)))

(declare-fun b!7349863 () Bool)

(assert (=> b!7349863 (= e!4400837 e!4400838)))

(declare-fun res!2968262 () Bool)

(assert (=> b!7349863 (=> (not res!2968262) (not e!4400838))))

(assert (=> b!7349863 (= res!2968262 call!672152)))

(declare-fun b!7349864 () Bool)

(assert (=> b!7349864 (= e!4400834 e!4400836)))

(assert (=> b!7349864 (= c!1365483 (is-Star!19160 (regTwo!38832 r1!2370)))))

(declare-fun b!7349865 () Bool)

(declare-fun e!4400839 () Bool)

(assert (=> b!7349865 (= e!4400839 call!672151)))

(declare-fun b!7349866 () Bool)

(assert (=> b!7349866 (= e!4400836 e!4400839)))

(declare-fun res!2968261 () Bool)

(assert (=> b!7349866 (= res!2968261 (not (nullable!8251 (reg!19489 (regTwo!38832 r1!2370)))))))

(assert (=> b!7349866 (=> (not res!2968261) (not e!4400839))))

(assert (= (and d!2280337 (not res!2968264)) b!7349864))

(assert (= (and b!7349864 c!1365483) b!7349866))

(assert (= (and b!7349864 (not c!1365483)) b!7349861))

(assert (= (and b!7349866 res!2968261) b!7349865))

(assert (= (and b!7349861 c!1365484) b!7349858))

(assert (= (and b!7349861 (not c!1365484)) b!7349859))

(assert (= (and b!7349858 res!2968265) b!7349860))

(assert (= (and b!7349859 (not res!2968263)) b!7349863))

(assert (= (and b!7349863 res!2968262) b!7349862))

(assert (= (or b!7349858 b!7349862) bm!672147))

(assert (= (or b!7349860 b!7349863) bm!672146))

(assert (= (or b!7349865 bm!672147) bm!672145))

(declare-fun m!8011336 () Bool)

(assert (=> bm!672145 m!8011336))

(declare-fun m!8011338 () Bool)

(assert (=> bm!672146 m!8011338))

(declare-fun m!8011340 () Bool)

(assert (=> b!7349866 m!8011340))

(assert (=> b!7349667 d!2280337))

(declare-fun c!1365486 () Bool)

(declare-fun call!672154 () Bool)

(declare-fun c!1365485 () Bool)

(declare-fun bm!672148 () Bool)

(assert (=> bm!672148 (= call!672154 (validRegex!9756 (ite c!1365485 (reg!19489 r1!2370) (ite c!1365486 (regOne!38833 r1!2370) (regTwo!38832 r1!2370)))))))

(declare-fun b!7349867 () Bool)

(declare-fun res!2968270 () Bool)

(declare-fun e!4400842 () Bool)

(assert (=> b!7349867 (=> (not res!2968270) (not e!4400842))))

(declare-fun call!672153 () Bool)

(assert (=> b!7349867 (= res!2968270 call!672153)))

(declare-fun e!4400840 () Bool)

(assert (=> b!7349867 (= e!4400840 e!4400842)))

(declare-fun bm!672149 () Bool)

(declare-fun call!672155 () Bool)

(assert (=> bm!672149 (= call!672155 (validRegex!9756 (ite c!1365486 (regTwo!38833 r1!2370) (regOne!38832 r1!2370))))))

(declare-fun d!2280341 () Bool)

(declare-fun res!2968269 () Bool)

(declare-fun e!4400841 () Bool)

(assert (=> d!2280341 (=> res!2968269 e!4400841)))

(assert (=> d!2280341 (= res!2968269 (is-ElementMatch!19160 r1!2370))))

(assert (=> d!2280341 (= (validRegex!9756 r1!2370) e!4400841)))

(declare-fun bm!672150 () Bool)

(assert (=> bm!672150 (= call!672153 call!672154)))

(declare-fun b!7349868 () Bool)

(declare-fun res!2968268 () Bool)

(declare-fun e!4400844 () Bool)

(assert (=> b!7349868 (=> res!2968268 e!4400844)))

(assert (=> b!7349868 (= res!2968268 (not (is-Concat!28005 r1!2370)))))

(assert (=> b!7349868 (= e!4400840 e!4400844)))

(declare-fun b!7349869 () Bool)

(assert (=> b!7349869 (= e!4400842 call!672155)))

(declare-fun b!7349870 () Bool)

(declare-fun e!4400843 () Bool)

(assert (=> b!7349870 (= e!4400843 e!4400840)))

(assert (=> b!7349870 (= c!1365486 (is-Union!19160 r1!2370))))

(declare-fun b!7349871 () Bool)

(declare-fun e!4400845 () Bool)

(assert (=> b!7349871 (= e!4400845 call!672153)))

(declare-fun b!7349872 () Bool)

(assert (=> b!7349872 (= e!4400844 e!4400845)))

(declare-fun res!2968267 () Bool)

(assert (=> b!7349872 (=> (not res!2968267) (not e!4400845))))

(assert (=> b!7349872 (= res!2968267 call!672155)))

(declare-fun b!7349873 () Bool)

(assert (=> b!7349873 (= e!4400841 e!4400843)))

(assert (=> b!7349873 (= c!1365485 (is-Star!19160 r1!2370))))

(declare-fun b!7349874 () Bool)

(declare-fun e!4400846 () Bool)

(assert (=> b!7349874 (= e!4400846 call!672154)))

(declare-fun b!7349875 () Bool)

(assert (=> b!7349875 (= e!4400843 e!4400846)))

(declare-fun res!2968266 () Bool)

(assert (=> b!7349875 (= res!2968266 (not (nullable!8251 (reg!19489 r1!2370))))))

(assert (=> b!7349875 (=> (not res!2968266) (not e!4400846))))

(assert (= (and d!2280341 (not res!2968269)) b!7349873))

(assert (= (and b!7349873 c!1365485) b!7349875))

(assert (= (and b!7349873 (not c!1365485)) b!7349870))

(assert (= (and b!7349875 res!2968266) b!7349874))

(assert (= (and b!7349870 c!1365486) b!7349867))

(assert (= (and b!7349870 (not c!1365486)) b!7349868))

(assert (= (and b!7349867 res!2968270) b!7349869))

(assert (= (and b!7349868 (not res!2968268)) b!7349872))

(assert (= (and b!7349872 res!2968267) b!7349871))

(assert (= (or b!7349867 b!7349871) bm!672150))

(assert (= (or b!7349869 b!7349872) bm!672149))

(assert (= (or b!7349874 bm!672150) bm!672148))

(declare-fun m!8011342 () Bool)

(assert (=> bm!672148 m!8011342))

(declare-fun m!8011344 () Bool)

(assert (=> bm!672149 m!8011344))

(declare-fun m!8011346 () Bool)

(assert (=> b!7349875 m!8011346))

(assert (=> start!717734 d!2280341))

(declare-fun bs!1919191 () Bool)

(declare-fun d!2280343 () Bool)

(assert (= bs!1919191 (and d!2280343 b!7349658)))

(declare-fun lambda!456463 () Int)

(assert (=> bs!1919191 (= lambda!456463 lambda!456442)))

(declare-fun bs!1919192 () Bool)

(assert (= bs!1919192 (and d!2280343 d!2280323)))

(assert (=> bs!1919192 (= lambda!456463 lambda!456460)))

(assert (=> d!2280343 (= (inv!91241 cWitness!61) (forall!17984 (exprs!8600 cWitness!61) lambda!456463))))

(declare-fun bs!1919193 () Bool)

(assert (= bs!1919193 d!2280343))

(declare-fun m!8011348 () Bool)

(assert (=> bs!1919193 m!8011348))

(assert (=> start!717734 d!2280343))

(declare-fun bs!1919194 () Bool)

(declare-fun d!2280345 () Bool)

(assert (= bs!1919194 (and d!2280345 b!7349658)))

(declare-fun lambda!456464 () Int)

(assert (=> bs!1919194 (= lambda!456464 lambda!456442)))

(declare-fun bs!1919195 () Bool)

(assert (= bs!1919195 (and d!2280345 d!2280323)))

(assert (=> bs!1919195 (= lambda!456464 lambda!456460)))

(declare-fun bs!1919196 () Bool)

(assert (= bs!1919196 (and d!2280345 d!2280343)))

(assert (=> bs!1919196 (= lambda!456464 lambda!456463)))

(assert (=> d!2280345 (= (inv!91241 ct1!282) (forall!17984 (exprs!8600 ct1!282) lambda!456464))))

(declare-fun bs!1919197 () Bool)

(assert (= bs!1919197 d!2280345))

(declare-fun m!8011350 () Bool)

(assert (=> bs!1919197 m!8011350))

(assert (=> start!717734 d!2280345))

(declare-fun bs!1919198 () Bool)

(declare-fun d!2280347 () Bool)

(assert (= bs!1919198 (and d!2280347 b!7349658)))

(declare-fun lambda!456465 () Int)

(assert (=> bs!1919198 (= lambda!456465 lambda!456442)))

(declare-fun bs!1919199 () Bool)

(assert (= bs!1919199 (and d!2280347 d!2280323)))

(assert (=> bs!1919199 (= lambda!456465 lambda!456460)))

(declare-fun bs!1919200 () Bool)

(assert (= bs!1919200 (and d!2280347 d!2280343)))

(assert (=> bs!1919200 (= lambda!456465 lambda!456463)))

(declare-fun bs!1919201 () Bool)

(assert (= bs!1919201 (and d!2280347 d!2280345)))

(assert (=> bs!1919201 (= lambda!456465 lambda!456464)))

(assert (=> d!2280347 (= (inv!91241 ct2!378) (forall!17984 (exprs!8600 ct2!378) lambda!456465))))

(declare-fun bs!1919202 () Bool)

(assert (= bs!1919202 d!2280347))

(declare-fun m!8011352 () Bool)

(assert (=> bs!1919202 m!8011352))

(assert (=> start!717734 d!2280347))

(declare-fun d!2280349 () Bool)

(declare-fun res!2968281 () Bool)

(declare-fun e!4400857 () Bool)

(assert (=> d!2280349 (=> res!2968281 e!4400857)))

(assert (=> d!2280349 (= res!2968281 (is-Nil!71532 (exprs!8600 ct1!282)))))

(assert (=> d!2280349 (= (forall!17984 (exprs!8600 ct1!282) lambda!456442) e!4400857)))

(declare-fun b!7349886 () Bool)

(declare-fun e!4400858 () Bool)

(assert (=> b!7349886 (= e!4400857 e!4400858)))

(declare-fun res!2968282 () Bool)

(assert (=> b!7349886 (=> (not res!2968282) (not e!4400858))))

(declare-fun dynLambda!29490 (Int Regex!19160) Bool)

(assert (=> b!7349886 (= res!2968282 (dynLambda!29490 lambda!456442 (h!77980 (exprs!8600 ct1!282))))))

(declare-fun b!7349887 () Bool)

(assert (=> b!7349887 (= e!4400858 (forall!17984 (t!386071 (exprs!8600 ct1!282)) lambda!456442))))

(assert (= (and d!2280349 (not res!2968281)) b!7349886))

(assert (= (and b!7349886 res!2968282) b!7349887))

(declare-fun b_lambda!284101 () Bool)

(assert (=> (not b_lambda!284101) (not b!7349886)))

(declare-fun m!8011358 () Bool)

(assert (=> b!7349886 m!8011358))

(declare-fun m!8011360 () Bool)

(assert (=> b!7349887 m!8011360))

(assert (=> b!7349666 d!2280349))

(assert (=> b!7349666 d!2280317))

(declare-fun b!7349892 () Bool)

(declare-fun e!4400861 () Bool)

(declare-fun tp!2087476 () Bool)

(declare-fun tp!2087477 () Bool)

(assert (=> b!7349892 (= e!4400861 (and tp!2087476 tp!2087477))))

(assert (=> b!7349657 (= tp!2087445 e!4400861)))

(assert (= (and b!7349657 (is-Cons!71532 (exprs!8600 ct1!282))) b!7349892))

(declare-fun b!7349905 () Bool)

(declare-fun e!4400864 () Bool)

(declare-fun tp!2087490 () Bool)

(assert (=> b!7349905 (= e!4400864 tp!2087490)))

(declare-fun b!7349904 () Bool)

(declare-fun tp!2087491 () Bool)

(declare-fun tp!2087488 () Bool)

(assert (=> b!7349904 (= e!4400864 (and tp!2087491 tp!2087488))))

(declare-fun b!7349903 () Bool)

(assert (=> b!7349903 (= e!4400864 tp_is_empty!48565)))

(declare-fun b!7349906 () Bool)

(declare-fun tp!2087492 () Bool)

(declare-fun tp!2087489 () Bool)

(assert (=> b!7349906 (= e!4400864 (and tp!2087492 tp!2087489))))

(assert (=> b!7349659 (= tp!2087447 e!4400864)))

(assert (= (and b!7349659 (is-ElementMatch!19160 (regOne!38833 r1!2370))) b!7349903))

(assert (= (and b!7349659 (is-Concat!28005 (regOne!38833 r1!2370))) b!7349904))

(assert (= (and b!7349659 (is-Star!19160 (regOne!38833 r1!2370))) b!7349905))

(assert (= (and b!7349659 (is-Union!19160 (regOne!38833 r1!2370))) b!7349906))

(declare-fun b!7349909 () Bool)

(declare-fun e!4400865 () Bool)

(declare-fun tp!2087495 () Bool)

(assert (=> b!7349909 (= e!4400865 tp!2087495)))

(declare-fun b!7349908 () Bool)

(declare-fun tp!2087496 () Bool)

(declare-fun tp!2087493 () Bool)

(assert (=> b!7349908 (= e!4400865 (and tp!2087496 tp!2087493))))

(declare-fun b!7349907 () Bool)

(assert (=> b!7349907 (= e!4400865 tp_is_empty!48565)))

(declare-fun b!7349910 () Bool)

(declare-fun tp!2087497 () Bool)

(declare-fun tp!2087494 () Bool)

(assert (=> b!7349910 (= e!4400865 (and tp!2087497 tp!2087494))))

(assert (=> b!7349659 (= tp!2087446 e!4400865)))

(assert (= (and b!7349659 (is-ElementMatch!19160 (regTwo!38833 r1!2370))) b!7349907))

(assert (= (and b!7349659 (is-Concat!28005 (regTwo!38833 r1!2370))) b!7349908))

(assert (= (and b!7349659 (is-Star!19160 (regTwo!38833 r1!2370))) b!7349909))

(assert (= (and b!7349659 (is-Union!19160 (regTwo!38833 r1!2370))) b!7349910))

(declare-fun b!7349913 () Bool)

(declare-fun e!4400866 () Bool)

(declare-fun tp!2087500 () Bool)

(assert (=> b!7349913 (= e!4400866 tp!2087500)))

(declare-fun b!7349912 () Bool)

(declare-fun tp!2087501 () Bool)

(declare-fun tp!2087498 () Bool)

(assert (=> b!7349912 (= e!4400866 (and tp!2087501 tp!2087498))))

(declare-fun b!7349911 () Bool)

(assert (=> b!7349911 (= e!4400866 tp_is_empty!48565)))

(declare-fun b!7349914 () Bool)

(declare-fun tp!2087502 () Bool)

(declare-fun tp!2087499 () Bool)

(assert (=> b!7349914 (= e!4400866 (and tp!2087502 tp!2087499))))

(assert (=> b!7349660 (= tp!2087440 e!4400866)))

(assert (= (and b!7349660 (is-ElementMatch!19160 (reg!19489 r1!2370))) b!7349911))

(assert (= (and b!7349660 (is-Concat!28005 (reg!19489 r1!2370))) b!7349912))

(assert (= (and b!7349660 (is-Star!19160 (reg!19489 r1!2370))) b!7349913))

(assert (= (and b!7349660 (is-Union!19160 (reg!19489 r1!2370))) b!7349914))

(declare-fun b!7349915 () Bool)

(declare-fun e!4400867 () Bool)

(declare-fun tp!2087503 () Bool)

(declare-fun tp!2087504 () Bool)

(assert (=> b!7349915 (= e!4400867 (and tp!2087503 tp!2087504))))

(assert (=> b!7349665 (= tp!2087442 e!4400867)))

(assert (= (and b!7349665 (is-Cons!71532 (exprs!8600 cWitness!61))) b!7349915))

(declare-fun b!7349916 () Bool)

(declare-fun e!4400868 () Bool)

(declare-fun tp!2087505 () Bool)

(declare-fun tp!2087506 () Bool)

(assert (=> b!7349916 (= e!4400868 (and tp!2087505 tp!2087506))))

(assert (=> b!7349656 (= tp!2087443 e!4400868)))

(assert (= (and b!7349656 (is-Cons!71532 (exprs!8600 ct2!378))) b!7349916))

(declare-fun b!7349919 () Bool)

(declare-fun e!4400869 () Bool)

(declare-fun tp!2087509 () Bool)

(assert (=> b!7349919 (= e!4400869 tp!2087509)))

(declare-fun b!7349918 () Bool)

(declare-fun tp!2087510 () Bool)

(declare-fun tp!2087507 () Bool)

(assert (=> b!7349918 (= e!4400869 (and tp!2087510 tp!2087507))))

(declare-fun b!7349917 () Bool)

(assert (=> b!7349917 (= e!4400869 tp_is_empty!48565)))

(declare-fun b!7349920 () Bool)

(declare-fun tp!2087511 () Bool)

(declare-fun tp!2087508 () Bool)

(assert (=> b!7349920 (= e!4400869 (and tp!2087511 tp!2087508))))

(assert (=> b!7349661 (= tp!2087441 e!4400869)))

(assert (= (and b!7349661 (is-ElementMatch!19160 (regOne!38832 r1!2370))) b!7349917))

(assert (= (and b!7349661 (is-Concat!28005 (regOne!38832 r1!2370))) b!7349918))

(assert (= (and b!7349661 (is-Star!19160 (regOne!38832 r1!2370))) b!7349919))

(assert (= (and b!7349661 (is-Union!19160 (regOne!38832 r1!2370))) b!7349920))

(declare-fun b!7349923 () Bool)

(declare-fun e!4400870 () Bool)

(declare-fun tp!2087514 () Bool)

(assert (=> b!7349923 (= e!4400870 tp!2087514)))

(declare-fun b!7349922 () Bool)

(declare-fun tp!2087515 () Bool)

(declare-fun tp!2087512 () Bool)

(assert (=> b!7349922 (= e!4400870 (and tp!2087515 tp!2087512))))

(declare-fun b!7349921 () Bool)

(assert (=> b!7349921 (= e!4400870 tp_is_empty!48565)))

(declare-fun b!7349924 () Bool)

(declare-fun tp!2087516 () Bool)

(declare-fun tp!2087513 () Bool)

(assert (=> b!7349924 (= e!4400870 (and tp!2087516 tp!2087513))))

(assert (=> b!7349661 (= tp!2087444 e!4400870)))

(assert (= (and b!7349661 (is-ElementMatch!19160 (regTwo!38832 r1!2370))) b!7349921))

(assert (= (and b!7349661 (is-Concat!28005 (regTwo!38832 r1!2370))) b!7349922))

(assert (= (and b!7349661 (is-Star!19160 (regTwo!38832 r1!2370))) b!7349923))

(assert (= (and b!7349661 (is-Union!19160 (regTwo!38832 r1!2370))) b!7349924))

(declare-fun b_lambda!284103 () Bool)

(assert (= b_lambda!284101 (or b!7349658 b_lambda!284103)))

(declare-fun bs!1919203 () Bool)

(declare-fun d!2280353 () Bool)

(assert (= bs!1919203 (and d!2280353 b!7349658)))

(assert (=> bs!1919203 (= (dynLambda!29490 lambda!456442 (h!77980 (exprs!8600 ct1!282))) (validRegex!9756 (h!77980 (exprs!8600 ct1!282))))))

(declare-fun m!8011362 () Bool)

(assert (=> bs!1919203 m!8011362))

(assert (=> b!7349886 d!2280353))

(push 1)

(assert (not b!7349910))

(assert (not bm!672114))

(assert (not bm!672094))

(assert (not d!2280313))

(assert (not b!7349815))

(assert (not d!2280317))

(assert (not bm!672145))

(assert (not b!7349723))

(assert (not b!7349918))

(assert (not bm!672113))

(assert (not bm!672132))

(assert (not bs!1919203))

(assert (not b!7349783))

(assert (not b!7349905))

(assert (not b!7349915))

(assert (not b!7349816))

(assert (not b!7349875))

(assert (not b!7349916))

(assert (not b!7349914))

(assert (not bm!672148))

(assert (not b!7349805))

(assert tp_is_empty!48565)

(assert (not b!7349887))

(assert (not d!2280345))

(assert (not b_lambda!284103))

(assert (not bm!672124))

(assert (not bm!672096))

(assert (not bm!672130))

(assert (not d!2280311))

(assert (not b!7349919))

(assert (not d!2280347))

(assert (not bm!672119))

(assert (not b!7349920))

(assert (not bm!672149))

(assert (not bm!672118))

(assert (not bm!672120))

(assert (not bm!672112))

(assert (not bm!672146))

(assert (not bm!672125))

(assert (not d!2280333))

(assert (not b!7349892))

(assert (not b!7349866))

(assert (not b!7349820))

(assert (not d!2280323))

(assert (not bm!672126))

(assert (not b!7349922))

(assert (not b!7349909))

(assert (not b!7349923))

(assert (not b!7349794))

(assert (not b!7349912))

(assert (not bm!672131))

(assert (not b!7349762))

(assert (not b!7349924))

(assert (not b!7349906))

(assert (not b!7349913))

(assert (not b!7349904))

(assert (not b!7349908))

(assert (not d!2280343))

(assert (not b!7349724))

(assert (not bm!672095))

(assert (not d!2280315))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

