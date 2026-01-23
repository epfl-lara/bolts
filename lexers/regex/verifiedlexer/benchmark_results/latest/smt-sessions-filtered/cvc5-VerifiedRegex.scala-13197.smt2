; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719446 () Bool)

(assert start!719446)

(declare-fun b!7371934 () Bool)

(declare-fun e!4413258 () Bool)

(declare-fun tp_is_empty!48809 () Bool)

(assert (=> b!7371934 (= e!4413258 tp_is_empty!48809)))

(declare-fun b!7371935 () Bool)

(declare-fun tp!2095739 () Bool)

(declare-fun tp!2095737 () Bool)

(assert (=> b!7371935 (= e!4413258 (and tp!2095739 tp!2095737))))

(declare-fun b!7371936 () Bool)

(declare-fun e!4413264 () Bool)

(declare-datatypes ((C!38838 0))(
  ( (C!38839 (val!29779 Int)) )
))
(declare-datatypes ((Regex!19282 0))(
  ( (ElementMatch!19282 (c!1370134 C!38838)) (Concat!28127 (regOne!39076 Regex!19282) (regTwo!39076 Regex!19282)) (EmptyExpr!19282) (Star!19282 (reg!19611 Regex!19282)) (EmptyLang!19282) (Union!19282 (regOne!39077 Regex!19282) (regTwo!39077 Regex!19282)) )
))
(declare-datatypes ((List!71778 0))(
  ( (Nil!71654) (Cons!71654 (h!78102 Regex!19282) (t!386243 List!71778)) )
))
(declare-datatypes ((Context!16444 0))(
  ( (Context!16445 (exprs!8722 List!71778)) )
))
(declare-fun lt!2615717 () Context!16444)

(declare-fun inv!91546 (Context!16444) Bool)

(assert (=> b!7371936 (= e!4413264 (not (inv!91546 lt!2615717)))))

(declare-fun ct2!378 () Context!16444)

(declare-fun lambda!458064 () Int)

(declare-fun cWitness!61 () Context!16444)

(declare-datatypes ((Unit!165513 0))(
  ( (Unit!165514) )
))
(declare-fun lt!2615715 () Unit!165513)

(declare-fun lemmaConcatPreservesForall!1955 (List!71778 List!71778 Int) Unit!165513)

(assert (=> b!7371936 (= lt!2615715 (lemmaConcatPreservesForall!1955 (exprs!8722 cWitness!61) (exprs!8722 ct2!378) lambda!458064))))

(declare-fun r1!2370 () Regex!19282)

(declare-fun c!10362 () C!38838)

(declare-fun lt!2615716 () Context!16444)

(declare-fun derivationStepZipperDown!3108 (Regex!19282 Context!16444 C!38838) (Set Context!16444))

(assert (=> b!7371936 (set.member lt!2615717 (derivationStepZipperDown!3108 (regTwo!39076 r1!2370) lt!2615716 c!10362))))

(declare-fun ++!17098 (List!71778 List!71778) List!71778)

(assert (=> b!7371936 (= lt!2615717 (Context!16445 (++!17098 (exprs!8722 cWitness!61) (exprs!8722 ct2!378))))))

(declare-fun lt!2615718 () Unit!165513)

(declare-fun ct1!282 () Context!16444)

(assert (=> b!7371936 (= lt!2615718 (lemmaConcatPreservesForall!1955 (exprs!8722 ct1!282) (exprs!8722 ct2!378) lambda!458064))))

(declare-fun lt!2615723 () Unit!165513)

(assert (=> b!7371936 (= lt!2615723 (lemmaConcatPreservesForall!1955 (exprs!8722 cWitness!61) (exprs!8722 ct2!378) lambda!458064))))

(declare-fun lt!2615720 () Unit!165513)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!137 (Regex!19282 Context!16444 Context!16444 Context!16444 C!38838) Unit!165513)

(assert (=> b!7371936 (= lt!2615720 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!137 (regTwo!39076 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7371937 () Bool)

(declare-fun e!4413261 () Bool)

(assert (=> b!7371937 (= e!4413261 e!4413264)))

(declare-fun res!2974453 () Bool)

(assert (=> b!7371937 (=> (not res!2974453) (not e!4413264))))

(declare-fun lt!2615714 () (Set Context!16444))

(declare-fun lt!2615721 () (Set Context!16444))

(assert (=> b!7371937 (= res!2974453 (= lt!2615714 (set.union lt!2615721 (derivationStepZipperDown!3108 (regTwo!39076 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3264 (List!71778 Regex!19282) List!71778)

(assert (=> b!7371937 (= lt!2615721 (derivationStepZipperDown!3108 (regOne!39076 r1!2370) (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370))) c!10362))))

(declare-fun b!7371938 () Bool)

(declare-fun e!4413262 () Bool)

(declare-fun tp!2095735 () Bool)

(assert (=> b!7371938 (= e!4413262 tp!2095735)))

(declare-fun b!7371939 () Bool)

(declare-fun res!2974456 () Bool)

(assert (=> b!7371939 (=> (not res!2974456) (not e!4413261))))

(declare-fun validRegex!9878 (Regex!19282) Bool)

(assert (=> b!7371939 (= res!2974456 (validRegex!9878 (regTwo!39076 r1!2370)))))

(declare-fun b!7371940 () Bool)

(declare-fun e!4413260 () Bool)

(declare-fun e!4413257 () Bool)

(assert (=> b!7371940 (= e!4413260 e!4413257)))

(declare-fun res!2974454 () Bool)

(assert (=> b!7371940 (=> (not res!2974454) (not e!4413257))))

(assert (=> b!7371940 (= res!2974454 (set.member cWitness!61 lt!2615714))))

(assert (=> b!7371940 (= lt!2615714 (derivationStepZipperDown!3108 r1!2370 ct1!282 c!10362))))

(declare-fun b!7371941 () Bool)

(declare-fun res!2974458 () Bool)

(assert (=> b!7371941 (=> (not res!2974458) (not e!4413261))))

(declare-fun nullable!8358 (Regex!19282) Bool)

(assert (=> b!7371941 (= res!2974458 (nullable!8358 (regOne!39076 r1!2370)))))

(declare-fun b!7371942 () Bool)

(declare-fun tp!2095740 () Bool)

(declare-fun tp!2095741 () Bool)

(assert (=> b!7371942 (= e!4413258 (and tp!2095740 tp!2095741))))

(declare-fun b!7371943 () Bool)

(declare-fun tp!2095736 () Bool)

(assert (=> b!7371943 (= e!4413258 tp!2095736)))

(declare-fun res!2974459 () Bool)

(assert (=> start!719446 (=> (not res!2974459) (not e!4413260))))

(assert (=> start!719446 (= res!2974459 (validRegex!9878 r1!2370))))

(assert (=> start!719446 e!4413260))

(assert (=> start!719446 tp_is_empty!48809))

(declare-fun e!4413259 () Bool)

(assert (=> start!719446 (and (inv!91546 cWitness!61) e!4413259)))

(assert (=> start!719446 (and (inv!91546 ct1!282) e!4413262)))

(assert (=> start!719446 e!4413258))

(declare-fun e!4413263 () Bool)

(assert (=> start!719446 (and (inv!91546 ct2!378) e!4413263)))

(declare-fun b!7371944 () Bool)

(assert (=> b!7371944 (= e!4413257 e!4413261)))

(declare-fun res!2974457 () Bool)

(assert (=> b!7371944 (=> (not res!2974457) (not e!4413261))))

(assert (=> b!7371944 (= res!2974457 (and (or (not (is-ElementMatch!19282 r1!2370)) (not (= c!10362 (c!1370134 r1!2370)))) (not (is-Union!19282 r1!2370)) (is-Concat!28127 r1!2370)))))

(declare-fun lt!2615719 () (Set Context!16444))

(assert (=> b!7371944 (= lt!2615719 (derivationStepZipperDown!3108 r1!2370 lt!2615716 c!10362))))

(assert (=> b!7371944 (= lt!2615716 (Context!16445 (++!17098 (exprs!8722 ct1!282) (exprs!8722 ct2!378))))))

(declare-fun lt!2615722 () Unit!165513)

(assert (=> b!7371944 (= lt!2615722 (lemmaConcatPreservesForall!1955 (exprs!8722 ct1!282) (exprs!8722 ct2!378) lambda!458064))))

(declare-fun b!7371945 () Bool)

(declare-fun tp!2095734 () Bool)

(assert (=> b!7371945 (= e!4413259 tp!2095734)))

(declare-fun b!7371946 () Bool)

(declare-fun res!2974455 () Bool)

(assert (=> b!7371946 (=> (not res!2974455) (not e!4413264))))

(assert (=> b!7371946 (= res!2974455 (not (set.member cWitness!61 lt!2615721)))))

(declare-fun b!7371947 () Bool)

(declare-fun tp!2095738 () Bool)

(assert (=> b!7371947 (= e!4413263 tp!2095738)))

(assert (= (and start!719446 res!2974459) b!7371940))

(assert (= (and b!7371940 res!2974454) b!7371944))

(assert (= (and b!7371944 res!2974457) b!7371941))

(assert (= (and b!7371941 res!2974458) b!7371939))

(assert (= (and b!7371939 res!2974456) b!7371937))

(assert (= (and b!7371937 res!2974453) b!7371946))

(assert (= (and b!7371946 res!2974455) b!7371936))

(assert (= start!719446 b!7371945))

(assert (= start!719446 b!7371938))

(assert (= (and start!719446 (is-ElementMatch!19282 r1!2370)) b!7371934))

(assert (= (and start!719446 (is-Concat!28127 r1!2370)) b!7371942))

(assert (= (and start!719446 (is-Star!19282 r1!2370)) b!7371943))

(assert (= (and start!719446 (is-Union!19282 r1!2370)) b!7371935))

(assert (= start!719446 b!7371947))

(declare-fun m!8025430 () Bool)

(assert (=> b!7371944 m!8025430))

(declare-fun m!8025432 () Bool)

(assert (=> b!7371944 m!8025432))

(declare-fun m!8025434 () Bool)

(assert (=> b!7371944 m!8025434))

(declare-fun m!8025436 () Bool)

(assert (=> b!7371939 m!8025436))

(declare-fun m!8025438 () Bool)

(assert (=> start!719446 m!8025438))

(declare-fun m!8025440 () Bool)

(assert (=> start!719446 m!8025440))

(declare-fun m!8025442 () Bool)

(assert (=> start!719446 m!8025442))

(declare-fun m!8025444 () Bool)

(assert (=> start!719446 m!8025444))

(declare-fun m!8025446 () Bool)

(assert (=> b!7371937 m!8025446))

(declare-fun m!8025448 () Bool)

(assert (=> b!7371937 m!8025448))

(declare-fun m!8025450 () Bool)

(assert (=> b!7371937 m!8025450))

(declare-fun m!8025452 () Bool)

(assert (=> b!7371946 m!8025452))

(declare-fun m!8025454 () Bool)

(assert (=> b!7371936 m!8025454))

(declare-fun m!8025456 () Bool)

(assert (=> b!7371936 m!8025456))

(declare-fun m!8025458 () Bool)

(assert (=> b!7371936 m!8025458))

(assert (=> b!7371936 m!8025434))

(declare-fun m!8025460 () Bool)

(assert (=> b!7371936 m!8025460))

(declare-fun m!8025462 () Bool)

(assert (=> b!7371936 m!8025462))

(assert (=> b!7371936 m!8025458))

(declare-fun m!8025464 () Bool)

(assert (=> b!7371936 m!8025464))

(declare-fun m!8025466 () Bool)

(assert (=> b!7371941 m!8025466))

(declare-fun m!8025468 () Bool)

(assert (=> b!7371940 m!8025468))

(declare-fun m!8025470 () Bool)

(assert (=> b!7371940 m!8025470))

(push 1)

(assert (not b!7371937))

(assert (not b!7371935))

(assert tp_is_empty!48809)

(assert (not b!7371944))

(assert (not b!7371938))

(assert (not b!7371943))

(assert (not b!7371945))

(assert (not b!7371940))

(assert (not b!7371941))

(assert (not b!7371936))

(assert (not b!7371947))

(assert (not b!7371939))

(assert (not b!7371942))

(assert (not start!719446))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!677206 () (Set Context!16444))

(declare-fun call!677201 () List!71778)

(declare-fun c!1370155 () Bool)

(declare-fun c!1370154 () Bool)

(declare-fun c!1370153 () Bool)

(declare-fun bm!677196 () Bool)

(assert (=> bm!677196 (= call!677206 (derivationStepZipperDown!3108 (ite c!1370155 (regTwo!39077 (regTwo!39076 r1!2370)) (ite c!1370153 (regTwo!39076 (regTwo!39076 r1!2370)) (ite c!1370154 (regOne!39076 (regTwo!39076 r1!2370)) (reg!19611 (regTwo!39076 r1!2370))))) (ite (or c!1370155 c!1370153) ct1!282 (Context!16445 call!677201)) c!10362))))

(declare-fun b!7372039 () Bool)

(declare-fun e!4413325 () (Set Context!16444))

(declare-fun call!677204 () (Set Context!16444))

(assert (=> b!7372039 (= e!4413325 call!677204)))

(declare-fun b!7372040 () Bool)

(declare-fun e!4413327 () (Set Context!16444))

(assert (=> b!7372040 (= e!4413327 call!677204)))

(declare-fun b!7372041 () Bool)

(declare-fun e!4413322 () (Set Context!16444))

(declare-fun call!677205 () (Set Context!16444))

(assert (=> b!7372041 (= e!4413322 (set.union call!677205 call!677206))))

(declare-fun bm!677197 () Bool)

(declare-fun call!677203 () (Set Context!16444))

(assert (=> bm!677197 (= call!677204 call!677203)))

(declare-fun b!7372042 () Bool)

(declare-fun e!4413324 () Bool)

(assert (=> b!7372042 (= c!1370153 e!4413324)))

(declare-fun res!2974498 () Bool)

(assert (=> b!7372042 (=> (not res!2974498) (not e!4413324))))

(assert (=> b!7372042 (= res!2974498 (is-Concat!28127 (regTwo!39076 r1!2370)))))

(declare-fun e!4413326 () (Set Context!16444))

(assert (=> b!7372042 (= e!4413322 e!4413326)))

(declare-fun b!7372043 () Bool)

(declare-fun e!4413323 () (Set Context!16444))

(assert (=> b!7372043 (= e!4413323 (set.insert ct1!282 (as set.empty (Set Context!16444))))))

(declare-fun d!2283930 () Bool)

(declare-fun c!1370152 () Bool)

(assert (=> d!2283930 (= c!1370152 (and (is-ElementMatch!19282 (regTwo!39076 r1!2370)) (= (c!1370134 (regTwo!39076 r1!2370)) c!10362)))))

(assert (=> d!2283930 (= (derivationStepZipperDown!3108 (regTwo!39076 r1!2370) ct1!282 c!10362) e!4413323)))

(declare-fun b!7372044 () Bool)

(assert (=> b!7372044 (= e!4413327 (as set.empty (Set Context!16444)))))

(declare-fun b!7372045 () Bool)

(assert (=> b!7372045 (= e!4413323 e!4413322)))

(assert (=> b!7372045 (= c!1370155 (is-Union!19282 (regTwo!39076 r1!2370)))))

(declare-fun b!7372046 () Bool)

(assert (=> b!7372046 (= e!4413326 (set.union call!677205 call!677203))))

(declare-fun b!7372047 () Bool)

(assert (=> b!7372047 (= e!4413326 e!4413325)))

(assert (=> b!7372047 (= c!1370154 (is-Concat!28127 (regTwo!39076 r1!2370)))))

(declare-fun bm!677198 () Bool)

(assert (=> bm!677198 (= call!677203 call!677206)))

(declare-fun bm!677199 () Bool)

(declare-fun call!677202 () List!71778)

(assert (=> bm!677199 (= call!677201 call!677202)))

(declare-fun bm!677200 () Bool)

(assert (=> bm!677200 (= call!677202 ($colon$colon!3264 (exprs!8722 ct1!282) (ite (or c!1370153 c!1370154) (regTwo!39076 (regTwo!39076 r1!2370)) (regTwo!39076 r1!2370))))))

(declare-fun bm!677201 () Bool)

(assert (=> bm!677201 (= call!677205 (derivationStepZipperDown!3108 (ite c!1370155 (regOne!39077 (regTwo!39076 r1!2370)) (regOne!39076 (regTwo!39076 r1!2370))) (ite c!1370155 ct1!282 (Context!16445 call!677202)) c!10362))))

(declare-fun b!7372048 () Bool)

(assert (=> b!7372048 (= e!4413324 (nullable!8358 (regOne!39076 (regTwo!39076 r1!2370))))))

(declare-fun b!7372049 () Bool)

(declare-fun c!1370156 () Bool)

(assert (=> b!7372049 (= c!1370156 (is-Star!19282 (regTwo!39076 r1!2370)))))

(assert (=> b!7372049 (= e!4413325 e!4413327)))

(assert (= (and d!2283930 c!1370152) b!7372043))

(assert (= (and d!2283930 (not c!1370152)) b!7372045))

(assert (= (and b!7372045 c!1370155) b!7372041))

(assert (= (and b!7372045 (not c!1370155)) b!7372042))

(assert (= (and b!7372042 res!2974498) b!7372048))

(assert (= (and b!7372042 c!1370153) b!7372046))

(assert (= (and b!7372042 (not c!1370153)) b!7372047))

(assert (= (and b!7372047 c!1370154) b!7372039))

(assert (= (and b!7372047 (not c!1370154)) b!7372049))

(assert (= (and b!7372049 c!1370156) b!7372040))

(assert (= (and b!7372049 (not c!1370156)) b!7372044))

(assert (= (or b!7372039 b!7372040) bm!677199))

(assert (= (or b!7372039 b!7372040) bm!677197))

(assert (= (or b!7372046 bm!677197) bm!677198))

(assert (= (or b!7372046 bm!677199) bm!677200))

(assert (= (or b!7372041 bm!677198) bm!677196))

(assert (= (or b!7372041 b!7372046) bm!677201))

(declare-fun m!8025520 () Bool)

(assert (=> bm!677196 m!8025520))

(declare-fun m!8025522 () Bool)

(assert (=> b!7372043 m!8025522))

(declare-fun m!8025524 () Bool)

(assert (=> bm!677200 m!8025524))

(declare-fun m!8025526 () Bool)

(assert (=> bm!677201 m!8025526))

(declare-fun m!8025528 () Bool)

(assert (=> b!7372048 m!8025528))

(assert (=> b!7371937 d!2283930))

(declare-fun c!1370159 () Bool)

(declare-fun call!677212 () (Set Context!16444))

(declare-fun call!677207 () List!71778)

(declare-fun bm!677202 () Bool)

(declare-fun c!1370158 () Bool)

(declare-fun c!1370160 () Bool)

(assert (=> bm!677202 (= call!677212 (derivationStepZipperDown!3108 (ite c!1370160 (regTwo!39077 (regOne!39076 r1!2370)) (ite c!1370158 (regTwo!39076 (regOne!39076 r1!2370)) (ite c!1370159 (regOne!39076 (regOne!39076 r1!2370)) (reg!19611 (regOne!39076 r1!2370))))) (ite (or c!1370160 c!1370158) (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370))) (Context!16445 call!677207)) c!10362))))

(declare-fun b!7372052 () Bool)

(declare-fun e!4413331 () (Set Context!16444))

(declare-fun call!677210 () (Set Context!16444))

(assert (=> b!7372052 (= e!4413331 call!677210)))

(declare-fun b!7372053 () Bool)

(declare-fun e!4413333 () (Set Context!16444))

(assert (=> b!7372053 (= e!4413333 call!677210)))

(declare-fun b!7372054 () Bool)

(declare-fun e!4413328 () (Set Context!16444))

(declare-fun call!677211 () (Set Context!16444))

(assert (=> b!7372054 (= e!4413328 (set.union call!677211 call!677212))))

(declare-fun bm!677203 () Bool)

(declare-fun call!677209 () (Set Context!16444))

(assert (=> bm!677203 (= call!677210 call!677209)))

(declare-fun b!7372055 () Bool)

(declare-fun e!4413330 () Bool)

(assert (=> b!7372055 (= c!1370158 e!4413330)))

(declare-fun res!2974499 () Bool)

(assert (=> b!7372055 (=> (not res!2974499) (not e!4413330))))

(assert (=> b!7372055 (= res!2974499 (is-Concat!28127 (regOne!39076 r1!2370)))))

(declare-fun e!4413332 () (Set Context!16444))

(assert (=> b!7372055 (= e!4413328 e!4413332)))

(declare-fun b!7372056 () Bool)

(declare-fun e!4413329 () (Set Context!16444))

(assert (=> b!7372056 (= e!4413329 (set.insert (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370))) (as set.empty (Set Context!16444))))))

(declare-fun d!2283934 () Bool)

(declare-fun c!1370157 () Bool)

(assert (=> d!2283934 (= c!1370157 (and (is-ElementMatch!19282 (regOne!39076 r1!2370)) (= (c!1370134 (regOne!39076 r1!2370)) c!10362)))))

(assert (=> d!2283934 (= (derivationStepZipperDown!3108 (regOne!39076 r1!2370) (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370))) c!10362) e!4413329)))

(declare-fun b!7372057 () Bool)

(assert (=> b!7372057 (= e!4413333 (as set.empty (Set Context!16444)))))

(declare-fun b!7372058 () Bool)

(assert (=> b!7372058 (= e!4413329 e!4413328)))

(assert (=> b!7372058 (= c!1370160 (is-Union!19282 (regOne!39076 r1!2370)))))

(declare-fun b!7372059 () Bool)

(assert (=> b!7372059 (= e!4413332 (set.union call!677211 call!677209))))

(declare-fun b!7372060 () Bool)

(assert (=> b!7372060 (= e!4413332 e!4413331)))

(assert (=> b!7372060 (= c!1370159 (is-Concat!28127 (regOne!39076 r1!2370)))))

(declare-fun bm!677204 () Bool)

(assert (=> bm!677204 (= call!677209 call!677212)))

(declare-fun bm!677205 () Bool)

(declare-fun call!677208 () List!71778)

(assert (=> bm!677205 (= call!677207 call!677208)))

(declare-fun bm!677206 () Bool)

(assert (=> bm!677206 (= call!677208 ($colon$colon!3264 (exprs!8722 (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370)))) (ite (or c!1370158 c!1370159) (regTwo!39076 (regOne!39076 r1!2370)) (regOne!39076 r1!2370))))))

(declare-fun bm!677207 () Bool)

(assert (=> bm!677207 (= call!677211 (derivationStepZipperDown!3108 (ite c!1370160 (regOne!39077 (regOne!39076 r1!2370)) (regOne!39076 (regOne!39076 r1!2370))) (ite c!1370160 (Context!16445 ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370))) (Context!16445 call!677208)) c!10362))))

(declare-fun b!7372061 () Bool)

(assert (=> b!7372061 (= e!4413330 (nullable!8358 (regOne!39076 (regOne!39076 r1!2370))))))

(declare-fun b!7372062 () Bool)

(declare-fun c!1370161 () Bool)

(assert (=> b!7372062 (= c!1370161 (is-Star!19282 (regOne!39076 r1!2370)))))

(assert (=> b!7372062 (= e!4413331 e!4413333)))

(assert (= (and d!2283934 c!1370157) b!7372056))

(assert (= (and d!2283934 (not c!1370157)) b!7372058))

(assert (= (and b!7372058 c!1370160) b!7372054))

(assert (= (and b!7372058 (not c!1370160)) b!7372055))

(assert (= (and b!7372055 res!2974499) b!7372061))

(assert (= (and b!7372055 c!1370158) b!7372059))

(assert (= (and b!7372055 (not c!1370158)) b!7372060))

(assert (= (and b!7372060 c!1370159) b!7372052))

(assert (= (and b!7372060 (not c!1370159)) b!7372062))

(assert (= (and b!7372062 c!1370161) b!7372053))

(assert (= (and b!7372062 (not c!1370161)) b!7372057))

(assert (= (or b!7372052 b!7372053) bm!677205))

(assert (= (or b!7372052 b!7372053) bm!677203))

(assert (= (or b!7372059 bm!677203) bm!677204))

(assert (= (or b!7372059 bm!677205) bm!677206))

(assert (= (or b!7372054 bm!677204) bm!677202))

(assert (= (or b!7372054 b!7372059) bm!677207))

(declare-fun m!8025530 () Bool)

(assert (=> bm!677202 m!8025530))

(declare-fun m!8025532 () Bool)

(assert (=> b!7372056 m!8025532))

(declare-fun m!8025534 () Bool)

(assert (=> bm!677206 m!8025534))

(declare-fun m!8025536 () Bool)

(assert (=> bm!677207 m!8025536))

(declare-fun m!8025538 () Bool)

(assert (=> b!7372061 m!8025538))

(assert (=> b!7371937 d!2283934))

(declare-fun d!2283936 () Bool)

(assert (=> d!2283936 (= ($colon$colon!3264 (exprs!8722 ct1!282) (regTwo!39076 r1!2370)) (Cons!71654 (regTwo!39076 r1!2370) (exprs!8722 ct1!282)))))

(assert (=> b!7371937 d!2283936))

(declare-fun b!7372101 () Bool)

(declare-fun e!4413364 () Bool)

(declare-fun e!4413363 () Bool)

(assert (=> b!7372101 (= e!4413364 e!4413363)))

(declare-fun c!1370177 () Bool)

(assert (=> b!7372101 (= c!1370177 (is-Star!19282 (regTwo!39076 r1!2370)))))

(declare-fun call!677229 () Bool)

(declare-fun bm!677224 () Bool)

(declare-fun c!1370176 () Bool)

(assert (=> bm!677224 (= call!677229 (validRegex!9878 (ite c!1370177 (reg!19611 (regTwo!39076 r1!2370)) (ite c!1370176 (regOne!39077 (regTwo!39076 r1!2370)) (regTwo!39076 (regTwo!39076 r1!2370))))))))

(declare-fun b!7372102 () Bool)

(declare-fun e!4413365 () Bool)

(assert (=> b!7372102 (= e!4413363 e!4413365)))

(declare-fun res!2974512 () Bool)

(assert (=> b!7372102 (= res!2974512 (not (nullable!8358 (reg!19611 (regTwo!39076 r1!2370)))))))

(assert (=> b!7372102 (=> (not res!2974512) (not e!4413365))))

(declare-fun b!7372103 () Bool)

(declare-fun e!4413362 () Bool)

(declare-fun call!677230 () Bool)

(assert (=> b!7372103 (= e!4413362 call!677230)))

(declare-fun b!7372104 () Bool)

(assert (=> b!7372104 (= e!4413365 call!677229)))

(declare-fun b!7372105 () Bool)

(declare-fun e!4413366 () Bool)

(assert (=> b!7372105 (= e!4413366 e!4413362)))

(declare-fun res!2974513 () Bool)

(assert (=> b!7372105 (=> (not res!2974513) (not e!4413362))))

(declare-fun call!677231 () Bool)

(assert (=> b!7372105 (= res!2974513 call!677231)))

(declare-fun bm!677225 () Bool)

(assert (=> bm!677225 (= call!677231 (validRegex!9878 (ite c!1370176 (regTwo!39077 (regTwo!39076 r1!2370)) (regOne!39076 (regTwo!39076 r1!2370)))))))

(declare-fun b!7372106 () Bool)

(declare-fun e!4413360 () Bool)

(assert (=> b!7372106 (= e!4413360 call!677231)))

(declare-fun b!7372107 () Bool)

(declare-fun res!2974514 () Bool)

(assert (=> b!7372107 (=> (not res!2974514) (not e!4413360))))

(assert (=> b!7372107 (= res!2974514 call!677230)))

(declare-fun e!4413361 () Bool)

(assert (=> b!7372107 (= e!4413361 e!4413360)))

(declare-fun b!7372108 () Bool)

(assert (=> b!7372108 (= e!4413363 e!4413361)))

(assert (=> b!7372108 (= c!1370176 (is-Union!19282 (regTwo!39076 r1!2370)))))

(declare-fun b!7372109 () Bool)

(declare-fun res!2974516 () Bool)

(assert (=> b!7372109 (=> res!2974516 e!4413366)))

(assert (=> b!7372109 (= res!2974516 (not (is-Concat!28127 (regTwo!39076 r1!2370))))))

(assert (=> b!7372109 (= e!4413361 e!4413366)))

(declare-fun bm!677226 () Bool)

(assert (=> bm!677226 (= call!677230 call!677229)))

(declare-fun d!2283938 () Bool)

(declare-fun res!2974515 () Bool)

(assert (=> d!2283938 (=> res!2974515 e!4413364)))

(assert (=> d!2283938 (= res!2974515 (is-ElementMatch!19282 (regTwo!39076 r1!2370)))))

(assert (=> d!2283938 (= (validRegex!9878 (regTwo!39076 r1!2370)) e!4413364)))

(assert (= (and d!2283938 (not res!2974515)) b!7372101))

(assert (= (and b!7372101 c!1370177) b!7372102))

(assert (= (and b!7372101 (not c!1370177)) b!7372108))

(assert (= (and b!7372102 res!2974512) b!7372104))

(assert (= (and b!7372108 c!1370176) b!7372107))

(assert (= (and b!7372108 (not c!1370176)) b!7372109))

(assert (= (and b!7372107 res!2974514) b!7372106))

(assert (= (and b!7372109 (not res!2974516)) b!7372105))

(assert (= (and b!7372105 res!2974513) b!7372103))

(assert (= (or b!7372107 b!7372103) bm!677226))

(assert (= (or b!7372106 b!7372105) bm!677225))

(assert (= (or b!7372104 bm!677226) bm!677224))

(declare-fun m!8025540 () Bool)

(assert (=> bm!677224 m!8025540))

(declare-fun m!8025542 () Bool)

(assert (=> b!7372102 m!8025542))

(declare-fun m!8025544 () Bool)

(assert (=> bm!677225 m!8025544))

(assert (=> b!7371939 d!2283938))

(declare-fun b!7372110 () Bool)

(declare-fun e!4413371 () Bool)

(declare-fun e!4413370 () Bool)

(assert (=> b!7372110 (= e!4413371 e!4413370)))

(declare-fun c!1370179 () Bool)

(assert (=> b!7372110 (= c!1370179 (is-Star!19282 r1!2370))))

(declare-fun bm!677229 () Bool)

(declare-fun c!1370178 () Bool)

(declare-fun call!677234 () Bool)

(assert (=> bm!677229 (= call!677234 (validRegex!9878 (ite c!1370179 (reg!19611 r1!2370) (ite c!1370178 (regOne!39077 r1!2370) (regTwo!39076 r1!2370)))))))

(declare-fun b!7372111 () Bool)

(declare-fun e!4413372 () Bool)

(assert (=> b!7372111 (= e!4413370 e!4413372)))

(declare-fun res!2974517 () Bool)

(assert (=> b!7372111 (= res!2974517 (not (nullable!8358 (reg!19611 r1!2370))))))

(assert (=> b!7372111 (=> (not res!2974517) (not e!4413372))))

(declare-fun b!7372112 () Bool)

(declare-fun e!4413369 () Bool)

(declare-fun call!677235 () Bool)

(assert (=> b!7372112 (= e!4413369 call!677235)))

(declare-fun b!7372113 () Bool)

(assert (=> b!7372113 (= e!4413372 call!677234)))

(declare-fun b!7372114 () Bool)

(declare-fun e!4413373 () Bool)

(assert (=> b!7372114 (= e!4413373 e!4413369)))

(declare-fun res!2974518 () Bool)

(assert (=> b!7372114 (=> (not res!2974518) (not e!4413369))))

(declare-fun call!677236 () Bool)

(assert (=> b!7372114 (= res!2974518 call!677236)))

(declare-fun bm!677230 () Bool)

(assert (=> bm!677230 (= call!677236 (validRegex!9878 (ite c!1370178 (regTwo!39077 r1!2370) (regOne!39076 r1!2370))))))

(declare-fun b!7372115 () Bool)

(declare-fun e!4413367 () Bool)

(assert (=> b!7372115 (= e!4413367 call!677236)))

(declare-fun b!7372116 () Bool)

(declare-fun res!2974519 () Bool)

(assert (=> b!7372116 (=> (not res!2974519) (not e!4413367))))

(assert (=> b!7372116 (= res!2974519 call!677235)))

(declare-fun e!4413368 () Bool)

(assert (=> b!7372116 (= e!4413368 e!4413367)))

(declare-fun b!7372117 () Bool)

(assert (=> b!7372117 (= e!4413370 e!4413368)))

(assert (=> b!7372117 (= c!1370178 (is-Union!19282 r1!2370))))

(declare-fun b!7372118 () Bool)

(declare-fun res!2974521 () Bool)

(assert (=> b!7372118 (=> res!2974521 e!4413373)))

(assert (=> b!7372118 (= res!2974521 (not (is-Concat!28127 r1!2370)))))

(assert (=> b!7372118 (= e!4413368 e!4413373)))

(declare-fun bm!677231 () Bool)

(assert (=> bm!677231 (= call!677235 call!677234)))

(declare-fun d!2283940 () Bool)

(declare-fun res!2974520 () Bool)

(assert (=> d!2283940 (=> res!2974520 e!4413371)))

(assert (=> d!2283940 (= res!2974520 (is-ElementMatch!19282 r1!2370))))

(assert (=> d!2283940 (= (validRegex!9878 r1!2370) e!4413371)))

(assert (= (and d!2283940 (not res!2974520)) b!7372110))

(assert (= (and b!7372110 c!1370179) b!7372111))

(assert (= (and b!7372110 (not c!1370179)) b!7372117))

(assert (= (and b!7372111 res!2974517) b!7372113))

(assert (= (and b!7372117 c!1370178) b!7372116))

(assert (= (and b!7372117 (not c!1370178)) b!7372118))

(assert (= (and b!7372116 res!2974519) b!7372115))

(assert (= (and b!7372118 (not res!2974521)) b!7372114))

(assert (= (and b!7372114 res!2974518) b!7372112))

(assert (= (or b!7372116 b!7372112) bm!677231))

(assert (= (or b!7372115 b!7372114) bm!677230))

(assert (= (or b!7372113 bm!677231) bm!677229))

(declare-fun m!8025546 () Bool)

(assert (=> bm!677229 m!8025546))

(declare-fun m!8025548 () Bool)

(assert (=> b!7372111 m!8025548))

(declare-fun m!8025550 () Bool)

(assert (=> bm!677230 m!8025550))

(assert (=> start!719446 d!2283940))

(declare-fun bs!1920946 () Bool)

(declare-fun d!2283942 () Bool)

(assert (= bs!1920946 (and d!2283942 b!7371944)))

(declare-fun lambda!458076 () Int)

(assert (=> bs!1920946 (= lambda!458076 lambda!458064)))

(declare-fun forall!18084 (List!71778 Int) Bool)

(assert (=> d!2283942 (= (inv!91546 cWitness!61) (forall!18084 (exprs!8722 cWitness!61) lambda!458076))))

(declare-fun bs!1920947 () Bool)

(assert (= bs!1920947 d!2283942))

(declare-fun m!8025552 () Bool)

(assert (=> bs!1920947 m!8025552))

(assert (=> start!719446 d!2283942))

(declare-fun bs!1920948 () Bool)

(declare-fun d!2283944 () Bool)

(assert (= bs!1920948 (and d!2283944 b!7371944)))

(declare-fun lambda!458077 () Int)

(assert (=> bs!1920948 (= lambda!458077 lambda!458064)))

(declare-fun bs!1920949 () Bool)

(assert (= bs!1920949 (and d!2283944 d!2283942)))

(assert (=> bs!1920949 (= lambda!458077 lambda!458076)))

(assert (=> d!2283944 (= (inv!91546 ct1!282) (forall!18084 (exprs!8722 ct1!282) lambda!458077))))

(declare-fun bs!1920950 () Bool)

(assert (= bs!1920950 d!2283944))

(declare-fun m!8025554 () Bool)

(assert (=> bs!1920950 m!8025554))

(assert (=> start!719446 d!2283944))

(declare-fun bs!1920951 () Bool)

(declare-fun d!2283946 () Bool)

(assert (= bs!1920951 (and d!2283946 b!7371944)))

(declare-fun lambda!458078 () Int)

(assert (=> bs!1920951 (= lambda!458078 lambda!458064)))

(declare-fun bs!1920952 () Bool)

(assert (= bs!1920952 (and d!2283946 d!2283942)))

(assert (=> bs!1920952 (= lambda!458078 lambda!458076)))

(declare-fun bs!1920953 () Bool)

(assert (= bs!1920953 (and d!2283946 d!2283944)))

(assert (=> bs!1920953 (= lambda!458078 lambda!458077)))

(assert (=> d!2283946 (= (inv!91546 ct2!378) (forall!18084 (exprs!8722 ct2!378) lambda!458078))))

(declare-fun bs!1920954 () Bool)

(assert (= bs!1920954 d!2283946))

(declare-fun m!8025556 () Bool)

(assert (=> bs!1920954 m!8025556))

(assert (=> start!719446 d!2283946))

(declare-fun c!1370181 () Bool)

(declare-fun bm!677232 () Bool)

(declare-fun c!1370183 () Bool)

(declare-fun c!1370182 () Bool)

(declare-fun call!677237 () List!71778)

(declare-fun call!677242 () (Set Context!16444))

(assert (=> bm!677232 (= call!677242 (derivationStepZipperDown!3108 (ite c!1370183 (regTwo!39077 r1!2370) (ite c!1370181 (regTwo!39076 r1!2370) (ite c!1370182 (regOne!39076 r1!2370) (reg!19611 r1!2370)))) (ite (or c!1370183 c!1370181) lt!2615716 (Context!16445 call!677237)) c!10362))))

(declare-fun b!7372119 () Bool)

(declare-fun e!4413377 () (Set Context!16444))

(declare-fun call!677240 () (Set Context!16444))

(assert (=> b!7372119 (= e!4413377 call!677240)))

(declare-fun b!7372120 () Bool)

(declare-fun e!4413379 () (Set Context!16444))

(assert (=> b!7372120 (= e!4413379 call!677240)))

(declare-fun b!7372121 () Bool)

(declare-fun e!4413374 () (Set Context!16444))

(declare-fun call!677241 () (Set Context!16444))

(assert (=> b!7372121 (= e!4413374 (set.union call!677241 call!677242))))

(declare-fun bm!677233 () Bool)

(declare-fun call!677239 () (Set Context!16444))

(assert (=> bm!677233 (= call!677240 call!677239)))

(declare-fun b!7372122 () Bool)

(declare-fun e!4413376 () Bool)

(assert (=> b!7372122 (= c!1370181 e!4413376)))

(declare-fun res!2974522 () Bool)

(assert (=> b!7372122 (=> (not res!2974522) (not e!4413376))))

(assert (=> b!7372122 (= res!2974522 (is-Concat!28127 r1!2370))))

(declare-fun e!4413378 () (Set Context!16444))

(assert (=> b!7372122 (= e!4413374 e!4413378)))

(declare-fun b!7372123 () Bool)

(declare-fun e!4413375 () (Set Context!16444))

(assert (=> b!7372123 (= e!4413375 (set.insert lt!2615716 (as set.empty (Set Context!16444))))))

(declare-fun d!2283948 () Bool)

(declare-fun c!1370180 () Bool)

(assert (=> d!2283948 (= c!1370180 (and (is-ElementMatch!19282 r1!2370) (= (c!1370134 r1!2370) c!10362)))))

(assert (=> d!2283948 (= (derivationStepZipperDown!3108 r1!2370 lt!2615716 c!10362) e!4413375)))

(declare-fun b!7372124 () Bool)

(assert (=> b!7372124 (= e!4413379 (as set.empty (Set Context!16444)))))

(declare-fun b!7372125 () Bool)

(assert (=> b!7372125 (= e!4413375 e!4413374)))

(assert (=> b!7372125 (= c!1370183 (is-Union!19282 r1!2370))))

(declare-fun b!7372126 () Bool)

(assert (=> b!7372126 (= e!4413378 (set.union call!677241 call!677239))))

(declare-fun b!7372127 () Bool)

(assert (=> b!7372127 (= e!4413378 e!4413377)))

(assert (=> b!7372127 (= c!1370182 (is-Concat!28127 r1!2370))))

(declare-fun bm!677234 () Bool)

(assert (=> bm!677234 (= call!677239 call!677242)))

(declare-fun bm!677235 () Bool)

(declare-fun call!677238 () List!71778)

(assert (=> bm!677235 (= call!677237 call!677238)))

(declare-fun bm!677236 () Bool)

(assert (=> bm!677236 (= call!677238 ($colon$colon!3264 (exprs!8722 lt!2615716) (ite (or c!1370181 c!1370182) (regTwo!39076 r1!2370) r1!2370)))))

(declare-fun bm!677237 () Bool)

(assert (=> bm!677237 (= call!677241 (derivationStepZipperDown!3108 (ite c!1370183 (regOne!39077 r1!2370) (regOne!39076 r1!2370)) (ite c!1370183 lt!2615716 (Context!16445 call!677238)) c!10362))))

(declare-fun b!7372128 () Bool)

(assert (=> b!7372128 (= e!4413376 (nullable!8358 (regOne!39076 r1!2370)))))

(declare-fun b!7372129 () Bool)

(declare-fun c!1370184 () Bool)

(assert (=> b!7372129 (= c!1370184 (is-Star!19282 r1!2370))))

(assert (=> b!7372129 (= e!4413377 e!4413379)))

(assert (= (and d!2283948 c!1370180) b!7372123))

(assert (= (and d!2283948 (not c!1370180)) b!7372125))

(assert (= (and b!7372125 c!1370183) b!7372121))

(assert (= (and b!7372125 (not c!1370183)) b!7372122))

(assert (= (and b!7372122 res!2974522) b!7372128))

(assert (= (and b!7372122 c!1370181) b!7372126))

(assert (= (and b!7372122 (not c!1370181)) b!7372127))

(assert (= (and b!7372127 c!1370182) b!7372119))

(assert (= (and b!7372127 (not c!1370182)) b!7372129))

(assert (= (and b!7372129 c!1370184) b!7372120))

(assert (= (and b!7372129 (not c!1370184)) b!7372124))

(assert (= (or b!7372119 b!7372120) bm!677235))

(assert (= (or b!7372119 b!7372120) bm!677233))

(assert (= (or b!7372126 bm!677233) bm!677234))

(assert (= (or b!7372126 bm!677235) bm!677236))

(assert (= (or b!7372121 bm!677234) bm!677232))

(assert (= (or b!7372121 b!7372126) bm!677237))

(declare-fun m!8025558 () Bool)

(assert (=> bm!677232 m!8025558))

(declare-fun m!8025560 () Bool)

(assert (=> b!7372123 m!8025560))

(declare-fun m!8025562 () Bool)

(assert (=> bm!677236 m!8025562))

(declare-fun m!8025564 () Bool)

(assert (=> bm!677237 m!8025564))

(assert (=> b!7372128 m!8025466))

(assert (=> b!7371944 d!2283948))

(declare-fun d!2283950 () Bool)

(declare-fun e!4413384 () Bool)

(assert (=> d!2283950 e!4413384))

(declare-fun res!2974527 () Bool)

(assert (=> d!2283950 (=> (not res!2974527) (not e!4413384))))

(declare-fun lt!2615756 () List!71778)

(declare-fun content!15158 (List!71778) (Set Regex!19282))

(assert (=> d!2283950 (= res!2974527 (= (content!15158 lt!2615756) (set.union (content!15158 (exprs!8722 ct1!282)) (content!15158 (exprs!8722 ct2!378)))))))

(declare-fun e!4413385 () List!71778)

(assert (=> d!2283950 (= lt!2615756 e!4413385)))

(declare-fun c!1370187 () Bool)

(assert (=> d!2283950 (= c!1370187 (is-Nil!71654 (exprs!8722 ct1!282)))))

(assert (=> d!2283950 (= (++!17098 (exprs!8722 ct1!282) (exprs!8722 ct2!378)) lt!2615756)))

(declare-fun b!7372139 () Bool)

(assert (=> b!7372139 (= e!4413385 (Cons!71654 (h!78102 (exprs!8722 ct1!282)) (++!17098 (t!386243 (exprs!8722 ct1!282)) (exprs!8722 ct2!378))))))

(declare-fun b!7372140 () Bool)

(declare-fun res!2974528 () Bool)

(assert (=> b!7372140 (=> (not res!2974528) (not e!4413384))))

(declare-fun size!42136 (List!71778) Int)

(assert (=> b!7372140 (= res!2974528 (= (size!42136 lt!2615756) (+ (size!42136 (exprs!8722 ct1!282)) (size!42136 (exprs!8722 ct2!378)))))))

(declare-fun b!7372141 () Bool)

(assert (=> b!7372141 (= e!4413384 (or (not (= (exprs!8722 ct2!378) Nil!71654)) (= lt!2615756 (exprs!8722 ct1!282))))))

(declare-fun b!7372138 () Bool)

(assert (=> b!7372138 (= e!4413385 (exprs!8722 ct2!378))))

(assert (= (and d!2283950 c!1370187) b!7372138))

(assert (= (and d!2283950 (not c!1370187)) b!7372139))

(assert (= (and d!2283950 res!2974527) b!7372140))

(assert (= (and b!7372140 res!2974528) b!7372141))

(declare-fun m!8025566 () Bool)

(assert (=> d!2283950 m!8025566))

(declare-fun m!8025568 () Bool)

(assert (=> d!2283950 m!8025568))

(declare-fun m!8025570 () Bool)

(assert (=> d!2283950 m!8025570))

(declare-fun m!8025572 () Bool)

(assert (=> b!7372139 m!8025572))

(declare-fun m!8025574 () Bool)

(assert (=> b!7372140 m!8025574))

(declare-fun m!8025576 () Bool)

(assert (=> b!7372140 m!8025576))

(declare-fun m!8025578 () Bool)

(assert (=> b!7372140 m!8025578))

(assert (=> b!7371944 d!2283950))

(declare-fun d!2283952 () Bool)

(assert (=> d!2283952 (forall!18084 (++!17098 (exprs!8722 ct1!282) (exprs!8722 ct2!378)) lambda!458064)))

(declare-fun lt!2615759 () Unit!165513)

(declare-fun choose!57307 (List!71778 List!71778 Int) Unit!165513)

(assert (=> d!2283952 (= lt!2615759 (choose!57307 (exprs!8722 ct1!282) (exprs!8722 ct2!378) lambda!458064))))

(assert (=> d!2283952 (forall!18084 (exprs!8722 ct1!282) lambda!458064)))

(assert (=> d!2283952 (= (lemmaConcatPreservesForall!1955 (exprs!8722 ct1!282) (exprs!8722 ct2!378) lambda!458064) lt!2615759)))

(declare-fun bs!1920955 () Bool)

(assert (= bs!1920955 d!2283952))

(assert (=> bs!1920955 m!8025432))

(assert (=> bs!1920955 m!8025432))

(declare-fun m!8025584 () Bool)

(assert (=> bs!1920955 m!8025584))

(declare-fun m!8025586 () Bool)

(assert (=> bs!1920955 m!8025586))

(declare-fun m!8025588 () Bool)

(assert (=> bs!1920955 m!8025588))

(assert (=> b!7371944 d!2283952))

(declare-fun c!1370195 () Bool)

(declare-fun bm!677244 () Bool)

(declare-fun c!1370194 () Bool)

(declare-fun c!1370196 () Bool)

(declare-fun call!677249 () List!71778)

(declare-fun call!677254 () (Set Context!16444))

(assert (=> bm!677244 (= call!677254 (derivationStepZipperDown!3108 (ite c!1370196 (regTwo!39077 r1!2370) (ite c!1370194 (regTwo!39076 r1!2370) (ite c!1370195 (regOne!39076 r1!2370) (reg!19611 r1!2370)))) (ite (or c!1370196 c!1370194) ct1!282 (Context!16445 call!677249)) c!10362))))

(declare-fun b!7372153 () Bool)

(declare-fun e!4413395 () (Set Context!16444))

(declare-fun call!677252 () (Set Context!16444))

(assert (=> b!7372153 (= e!4413395 call!677252)))

(declare-fun b!7372154 () Bool)

(declare-fun e!4413397 () (Set Context!16444))

(assert (=> b!7372154 (= e!4413397 call!677252)))

(declare-fun b!7372155 () Bool)

(declare-fun e!4413392 () (Set Context!16444))

(declare-fun call!677253 () (Set Context!16444))

(assert (=> b!7372155 (= e!4413392 (set.union call!677253 call!677254))))

(declare-fun bm!677245 () Bool)

(declare-fun call!677251 () (Set Context!16444))

(assert (=> bm!677245 (= call!677252 call!677251)))

(declare-fun b!7372156 () Bool)

(declare-fun e!4413394 () Bool)

(assert (=> b!7372156 (= c!1370194 e!4413394)))

(declare-fun res!2974530 () Bool)

(assert (=> b!7372156 (=> (not res!2974530) (not e!4413394))))

(assert (=> b!7372156 (= res!2974530 (is-Concat!28127 r1!2370))))

(declare-fun e!4413396 () (Set Context!16444))

(assert (=> b!7372156 (= e!4413392 e!4413396)))

(declare-fun b!7372157 () Bool)

(declare-fun e!4413393 () (Set Context!16444))

(assert (=> b!7372157 (= e!4413393 (set.insert ct1!282 (as set.empty (Set Context!16444))))))

(declare-fun d!2283954 () Bool)

(declare-fun c!1370193 () Bool)

(assert (=> d!2283954 (= c!1370193 (and (is-ElementMatch!19282 r1!2370) (= (c!1370134 r1!2370) c!10362)))))

(assert (=> d!2283954 (= (derivationStepZipperDown!3108 r1!2370 ct1!282 c!10362) e!4413393)))

(declare-fun b!7372158 () Bool)

(assert (=> b!7372158 (= e!4413397 (as set.empty (Set Context!16444)))))

(declare-fun b!7372159 () Bool)

(assert (=> b!7372159 (= e!4413393 e!4413392)))

(assert (=> b!7372159 (= c!1370196 (is-Union!19282 r1!2370))))

(declare-fun b!7372160 () Bool)

(assert (=> b!7372160 (= e!4413396 (set.union call!677253 call!677251))))

(declare-fun b!7372161 () Bool)

(assert (=> b!7372161 (= e!4413396 e!4413395)))

(assert (=> b!7372161 (= c!1370195 (is-Concat!28127 r1!2370))))

(declare-fun bm!677246 () Bool)

(assert (=> bm!677246 (= call!677251 call!677254)))

(declare-fun bm!677247 () Bool)

(declare-fun call!677250 () List!71778)

(assert (=> bm!677247 (= call!677249 call!677250)))

(declare-fun bm!677248 () Bool)

(assert (=> bm!677248 (= call!677250 ($colon$colon!3264 (exprs!8722 ct1!282) (ite (or c!1370194 c!1370195) (regTwo!39076 r1!2370) r1!2370)))))

(declare-fun bm!677249 () Bool)

(assert (=> bm!677249 (= call!677253 (derivationStepZipperDown!3108 (ite c!1370196 (regOne!39077 r1!2370) (regOne!39076 r1!2370)) (ite c!1370196 ct1!282 (Context!16445 call!677250)) c!10362))))

(declare-fun b!7372162 () Bool)

(assert (=> b!7372162 (= e!4413394 (nullable!8358 (regOne!39076 r1!2370)))))

(declare-fun b!7372163 () Bool)

(declare-fun c!1370197 () Bool)

(assert (=> b!7372163 (= c!1370197 (is-Star!19282 r1!2370))))

(assert (=> b!7372163 (= e!4413395 e!4413397)))

(assert (= (and d!2283954 c!1370193) b!7372157))

(assert (= (and d!2283954 (not c!1370193)) b!7372159))

(assert (= (and b!7372159 c!1370196) b!7372155))

(assert (= (and b!7372159 (not c!1370196)) b!7372156))

(assert (= (and b!7372156 res!2974530) b!7372162))

(assert (= (and b!7372156 c!1370194) b!7372160))

(assert (= (and b!7372156 (not c!1370194)) b!7372161))

(assert (= (and b!7372161 c!1370195) b!7372153))

(assert (= (and b!7372161 (not c!1370195)) b!7372163))

(assert (= (and b!7372163 c!1370197) b!7372154))

(assert (= (and b!7372163 (not c!1370197)) b!7372158))

(assert (= (or b!7372153 b!7372154) bm!677247))

(assert (= (or b!7372153 b!7372154) bm!677245))

(assert (= (or b!7372160 bm!677245) bm!677246))

(assert (= (or b!7372160 bm!677247) bm!677248))

(assert (= (or b!7372155 bm!677246) bm!677244))

(assert (= (or b!7372155 b!7372160) bm!677249))

(declare-fun m!8025594 () Bool)

(assert (=> bm!677244 m!8025594))

(assert (=> b!7372157 m!8025522))

(declare-fun m!8025596 () Bool)

(assert (=> bm!677248 m!8025596))

(declare-fun m!8025598 () Bool)

(assert (=> bm!677249 m!8025598))

(assert (=> b!7372162 m!8025466))

(assert (=> b!7371940 d!2283954))

(declare-fun d!2283958 () Bool)

(declare-fun nullableFct!3343 (Regex!19282) Bool)

(assert (=> d!2283958 (= (nullable!8358 (regOne!39076 r1!2370)) (nullableFct!3343 (regOne!39076 r1!2370)))))

(declare-fun bs!1920956 () Bool)

(assert (= bs!1920956 d!2283958))

(declare-fun m!8025600 () Bool)

(assert (=> bs!1920956 m!8025600))

(assert (=> b!7371941 d!2283958))

(declare-fun bs!1920957 () Bool)

(declare-fun d!2283960 () Bool)

(assert (= bs!1920957 (and d!2283960 b!7371944)))

(declare-fun lambda!458079 () Int)

(assert (=> bs!1920957 (= lambda!458079 lambda!458064)))

(declare-fun bs!1920958 () Bool)

(assert (= bs!1920958 (and d!2283960 d!2283942)))

(assert (=> bs!1920958 (= lambda!458079 lambda!458076)))

(declare-fun bs!1920959 () Bool)

(assert (= bs!1920959 (and d!2283960 d!2283944)))

(assert (=> bs!1920959 (= lambda!458079 lambda!458077)))

(declare-fun bs!1920960 () Bool)

(assert (= bs!1920960 (and d!2283960 d!2283946)))

(assert (=> bs!1920960 (= lambda!458079 lambda!458078)))

(assert (=> d!2283960 (= (inv!91546 lt!2615717) (forall!18084 (exprs!8722 lt!2615717) lambda!458079))))

(declare-fun bs!1920961 () Bool)

(assert (= bs!1920961 d!2283960))

(declare-fun m!8025602 () Bool)

(assert (=> bs!1920961 m!8025602))

(assert (=> b!7371936 d!2283960))

(declare-fun call!677260 () (Set Context!16444))

(declare-fun call!677255 () List!71778)

(declare-fun c!1370201 () Bool)

(declare-fun c!1370200 () Bool)

(declare-fun bm!677250 () Bool)

(declare-fun c!1370199 () Bool)

(assert (=> bm!677250 (= call!677260 (derivationStepZipperDown!3108 (ite c!1370201 (regTwo!39077 (regTwo!39076 r1!2370)) (ite c!1370199 (regTwo!39076 (regTwo!39076 r1!2370)) (ite c!1370200 (regOne!39076 (regTwo!39076 r1!2370)) (reg!19611 (regTwo!39076 r1!2370))))) (ite (or c!1370201 c!1370199) lt!2615716 (Context!16445 call!677255)) c!10362))))

(declare-fun b!7372164 () Bool)

(declare-fun e!4413401 () (Set Context!16444))

(declare-fun call!677258 () (Set Context!16444))

(assert (=> b!7372164 (= e!4413401 call!677258)))

(declare-fun b!7372165 () Bool)

(declare-fun e!4413403 () (Set Context!16444))

(assert (=> b!7372165 (= e!4413403 call!677258)))

(declare-fun b!7372166 () Bool)

(declare-fun e!4413398 () (Set Context!16444))

(declare-fun call!677259 () (Set Context!16444))

(assert (=> b!7372166 (= e!4413398 (set.union call!677259 call!677260))))

(declare-fun bm!677251 () Bool)

(declare-fun call!677257 () (Set Context!16444))

(assert (=> bm!677251 (= call!677258 call!677257)))

(declare-fun b!7372167 () Bool)

(declare-fun e!4413400 () Bool)

(assert (=> b!7372167 (= c!1370199 e!4413400)))

(declare-fun res!2974531 () Bool)

(assert (=> b!7372167 (=> (not res!2974531) (not e!4413400))))

(assert (=> b!7372167 (= res!2974531 (is-Concat!28127 (regTwo!39076 r1!2370)))))

(declare-fun e!4413402 () (Set Context!16444))

(assert (=> b!7372167 (= e!4413398 e!4413402)))

(declare-fun b!7372168 () Bool)

(declare-fun e!4413399 () (Set Context!16444))

(assert (=> b!7372168 (= e!4413399 (set.insert lt!2615716 (as set.empty (Set Context!16444))))))

(declare-fun d!2283962 () Bool)

(declare-fun c!1370198 () Bool)

(assert (=> d!2283962 (= c!1370198 (and (is-ElementMatch!19282 (regTwo!39076 r1!2370)) (= (c!1370134 (regTwo!39076 r1!2370)) c!10362)))))

(assert (=> d!2283962 (= (derivationStepZipperDown!3108 (regTwo!39076 r1!2370) lt!2615716 c!10362) e!4413399)))

(declare-fun b!7372169 () Bool)

(assert (=> b!7372169 (= e!4413403 (as set.empty (Set Context!16444)))))

(declare-fun b!7372170 () Bool)

(assert (=> b!7372170 (= e!4413399 e!4413398)))

(assert (=> b!7372170 (= c!1370201 (is-Union!19282 (regTwo!39076 r1!2370)))))

(declare-fun b!7372171 () Bool)

(assert (=> b!7372171 (= e!4413402 (set.union call!677259 call!677257))))

(declare-fun b!7372172 () Bool)

(assert (=> b!7372172 (= e!4413402 e!4413401)))

(assert (=> b!7372172 (= c!1370200 (is-Concat!28127 (regTwo!39076 r1!2370)))))

(declare-fun bm!677252 () Bool)

(assert (=> bm!677252 (= call!677257 call!677260)))

(declare-fun bm!677253 () Bool)

(declare-fun call!677256 () List!71778)

(assert (=> bm!677253 (= call!677255 call!677256)))

(declare-fun bm!677254 () Bool)

(assert (=> bm!677254 (= call!677256 ($colon$colon!3264 (exprs!8722 lt!2615716) (ite (or c!1370199 c!1370200) (regTwo!39076 (regTwo!39076 r1!2370)) (regTwo!39076 r1!2370))))))

(declare-fun bm!677255 () Bool)

(assert (=> bm!677255 (= call!677259 (derivationStepZipperDown!3108 (ite c!1370201 (regOne!39077 (regTwo!39076 r1!2370)) (regOne!39076 (regTwo!39076 r1!2370))) (ite c!1370201 lt!2615716 (Context!16445 call!677256)) c!10362))))

(declare-fun b!7372173 () Bool)

(assert (=> b!7372173 (= e!4413400 (nullable!8358 (regOne!39076 (regTwo!39076 r1!2370))))))

(declare-fun b!7372174 () Bool)

(declare-fun c!1370202 () Bool)

(assert (=> b!7372174 (= c!1370202 (is-Star!19282 (regTwo!39076 r1!2370)))))

(assert (=> b!7372174 (= e!4413401 e!4413403)))

(assert (= (and d!2283962 c!1370198) b!7372168))

(assert (= (and d!2283962 (not c!1370198)) b!7372170))

(assert (= (and b!7372170 c!1370201) b!7372166))

(assert (= (and b!7372170 (not c!1370201)) b!7372167))

(assert (= (and b!7372167 res!2974531) b!7372173))

(assert (= (and b!7372167 c!1370199) b!7372171))

(assert (= (and b!7372167 (not c!1370199)) b!7372172))

(assert (= (and b!7372172 c!1370200) b!7372164))

(assert (= (and b!7372172 (not c!1370200)) b!7372174))

(assert (= (and b!7372174 c!1370202) b!7372165))

(assert (= (and b!7372174 (not c!1370202)) b!7372169))

(assert (= (or b!7372164 b!7372165) bm!677253))

(assert (= (or b!7372164 b!7372165) bm!677251))

(assert (= (or b!7372171 bm!677251) bm!677252))

(assert (= (or b!7372171 bm!677253) bm!677254))

(assert (= (or b!7372166 bm!677252) bm!677250))

(assert (= (or b!7372166 b!7372171) bm!677255))

(declare-fun m!8025604 () Bool)

(assert (=> bm!677250 m!8025604))

(assert (=> b!7372168 m!8025560))

(declare-fun m!8025606 () Bool)

(assert (=> bm!677254 m!8025606))

(declare-fun m!8025608 () Bool)

(assert (=> bm!677255 m!8025608))

(assert (=> b!7372173 m!8025528))

(assert (=> b!7371936 d!2283962))

(declare-fun d!2283964 () Bool)

(declare-fun e!4413404 () Bool)

(assert (=> d!2283964 e!4413404))

(declare-fun res!2974532 () Bool)

(assert (=> d!2283964 (=> (not res!2974532) (not e!4413404))))

(declare-fun lt!2615760 () List!71778)

(assert (=> d!2283964 (= res!2974532 (= (content!15158 lt!2615760) (set.union (content!15158 (exprs!8722 cWitness!61)) (content!15158 (exprs!8722 ct2!378)))))))

(declare-fun e!4413405 () List!71778)

(assert (=> d!2283964 (= lt!2615760 e!4413405)))

(declare-fun c!1370203 () Bool)

(assert (=> d!2283964 (= c!1370203 (is-Nil!71654 (exprs!8722 cWitness!61)))))

(assert (=> d!2283964 (= (++!17098 (exprs!8722 cWitness!61) (exprs!8722 ct2!378)) lt!2615760)))

(declare-fun b!7372176 () Bool)

(assert (=> b!7372176 (= e!4413405 (Cons!71654 (h!78102 (exprs!8722 cWitness!61)) (++!17098 (t!386243 (exprs!8722 cWitness!61)) (exprs!8722 ct2!378))))))

(declare-fun b!7372177 () Bool)

(declare-fun res!2974533 () Bool)

(assert (=> b!7372177 (=> (not res!2974533) (not e!4413404))))

(assert (=> b!7372177 (= res!2974533 (= (size!42136 lt!2615760) (+ (size!42136 (exprs!8722 cWitness!61)) (size!42136 (exprs!8722 ct2!378)))))))

(declare-fun b!7372178 () Bool)

(assert (=> b!7372178 (= e!4413404 (or (not (= (exprs!8722 ct2!378) Nil!71654)) (= lt!2615760 (exprs!8722 cWitness!61))))))

(declare-fun b!7372175 () Bool)

(assert (=> b!7372175 (= e!4413405 (exprs!8722 ct2!378))))

(assert (= (and d!2283964 c!1370203) b!7372175))

(assert (= (and d!2283964 (not c!1370203)) b!7372176))

(assert (= (and d!2283964 res!2974532) b!7372177))

(assert (= (and b!7372177 res!2974533) b!7372178))

(declare-fun m!8025610 () Bool)

(assert (=> d!2283964 m!8025610))

(declare-fun m!8025612 () Bool)

(assert (=> d!2283964 m!8025612))

(assert (=> d!2283964 m!8025570))

(declare-fun m!8025614 () Bool)

(assert (=> b!7372176 m!8025614))

(declare-fun m!8025616 () Bool)

(assert (=> b!7372177 m!8025616))

(declare-fun m!8025618 () Bool)

(assert (=> b!7372177 m!8025618))

(assert (=> b!7372177 m!8025578))

(assert (=> b!7371936 d!2283964))

(declare-fun d!2283966 () Bool)

(assert (=> d!2283966 (forall!18084 (++!17098 (exprs!8722 cWitness!61) (exprs!8722 ct2!378)) lambda!458064)))

(declare-fun lt!2615761 () Unit!165513)

(assert (=> d!2283966 (= lt!2615761 (choose!57307 (exprs!8722 cWitness!61) (exprs!8722 ct2!378) lambda!458064))))

(assert (=> d!2283966 (forall!18084 (exprs!8722 cWitness!61) lambda!458064)))

(assert (=> d!2283966 (= (lemmaConcatPreservesForall!1955 (exprs!8722 cWitness!61) (exprs!8722 ct2!378) lambda!458064) lt!2615761)))

(declare-fun bs!1920962 () Bool)

(assert (= bs!1920962 d!2283966))

(assert (=> bs!1920962 m!8025460))

(assert (=> bs!1920962 m!8025460))

(declare-fun m!8025620 () Bool)

(assert (=> bs!1920962 m!8025620))

(declare-fun m!8025622 () Bool)

(assert (=> bs!1920962 m!8025622))

(declare-fun m!8025624 () Bool)

(assert (=> bs!1920962 m!8025624))

(assert (=> b!7371936 d!2283966))

(declare-fun bs!1920963 () Bool)

(declare-fun d!2283968 () Bool)

(assert (= bs!1920963 (and d!2283968 d!2283942)))

(declare-fun lambda!458084 () Int)

(assert (=> bs!1920963 (= lambda!458084 lambda!458076)))

(declare-fun bs!1920964 () Bool)

(assert (= bs!1920964 (and d!2283968 d!2283960)))

(assert (=> bs!1920964 (= lambda!458084 lambda!458079)))

(declare-fun bs!1920965 () Bool)

(assert (= bs!1920965 (and d!2283968 d!2283946)))

(assert (=> bs!1920965 (= lambda!458084 lambda!458078)))

(declare-fun bs!1920966 () Bool)

(assert (= bs!1920966 (and d!2283968 d!2283944)))

(assert (=> bs!1920966 (= lambda!458084 lambda!458077)))

(declare-fun bs!1920967 () Bool)

(assert (= bs!1920967 (and d!2283968 b!7371944)))

(assert (=> bs!1920967 (= lambda!458084 lambda!458064)))

(assert (=> d!2283968 (set.member (Context!16445 (++!17098 (exprs!8722 cWitness!61) (exprs!8722 ct2!378))) (derivationStepZipperDown!3108 (regTwo!39076 r1!2370) (Context!16445 (++!17098 (exprs!8722 ct1!282) (exprs!8722 ct2!378))) c!10362))))

(declare-fun lt!2615773 () Unit!165513)

(assert (=> d!2283968 (= lt!2615773 (lemmaConcatPreservesForall!1955 (exprs!8722 ct1!282) (exprs!8722 ct2!378) lambda!458084))))

(declare-fun lt!2615772 () Unit!165513)

(assert (=> d!2283968 (= lt!2615772 (lemmaConcatPreservesForall!1955 (exprs!8722 cWitness!61) (exprs!8722 ct2!378) lambda!458084))))

(declare-fun lt!2615771 () Unit!165513)

(declare-fun choose!57309 (Regex!19282 Context!16444 Context!16444 Context!16444 C!38838) Unit!165513)

(assert (=> d!2283968 (= lt!2615771 (choose!57309 (regTwo!39076 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2283968 (validRegex!9878 (regTwo!39076 r1!2370))))

(assert (=> d!2283968 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!137 (regTwo!39076 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2615771)))

(declare-fun bs!1920968 () Bool)

(assert (= bs!1920968 d!2283968))

(declare-fun m!8025640 () Bool)

(assert (=> bs!1920968 m!8025640))

(declare-fun m!8025642 () Bool)

(assert (=> bs!1920968 m!8025642))

(declare-fun m!8025644 () Bool)

(assert (=> bs!1920968 m!8025644))

(assert (=> bs!1920968 m!8025432))

(declare-fun m!8025646 () Bool)

(assert (=> bs!1920968 m!8025646))

(assert (=> bs!1920968 m!8025436))

(assert (=> bs!1920968 m!8025460))

(declare-fun m!8025648 () Bool)

(assert (=> bs!1920968 m!8025648))

(assert (=> b!7371936 d!2283968))

(assert (=> b!7371936 d!2283952))

(declare-fun b!7372203 () Bool)

(declare-fun e!4413414 () Bool)

(declare-fun tp!2095776 () Bool)

(assert (=> b!7372203 (= e!4413414 tp!2095776)))

(declare-fun b!7372204 () Bool)

(declare-fun tp!2095778 () Bool)

(declare-fun tp!2095777 () Bool)

(assert (=> b!7372204 (= e!4413414 (and tp!2095778 tp!2095777))))

(declare-fun b!7372202 () Bool)

(declare-fun tp!2095779 () Bool)

(declare-fun tp!2095780 () Bool)

(assert (=> b!7372202 (= e!4413414 (and tp!2095779 tp!2095780))))

(declare-fun b!7372201 () Bool)

(assert (=> b!7372201 (= e!4413414 tp_is_empty!48809)))

(assert (=> b!7371942 (= tp!2095740 e!4413414)))

(assert (= (and b!7371942 (is-ElementMatch!19282 (regOne!39076 r1!2370))) b!7372201))

(assert (= (and b!7371942 (is-Concat!28127 (regOne!39076 r1!2370))) b!7372202))

(assert (= (and b!7371942 (is-Star!19282 (regOne!39076 r1!2370))) b!7372203))

(assert (= (and b!7371942 (is-Union!19282 (regOne!39076 r1!2370))) b!7372204))

(declare-fun b!7372207 () Bool)

(declare-fun e!4413415 () Bool)

(declare-fun tp!2095781 () Bool)

(assert (=> b!7372207 (= e!4413415 tp!2095781)))

(declare-fun b!7372208 () Bool)

(declare-fun tp!2095783 () Bool)

(declare-fun tp!2095782 () Bool)

(assert (=> b!7372208 (= e!4413415 (and tp!2095783 tp!2095782))))

(declare-fun b!7372206 () Bool)

(declare-fun tp!2095784 () Bool)

(declare-fun tp!2095785 () Bool)

(assert (=> b!7372206 (= e!4413415 (and tp!2095784 tp!2095785))))

(declare-fun b!7372205 () Bool)

(assert (=> b!7372205 (= e!4413415 tp_is_empty!48809)))

(assert (=> b!7371942 (= tp!2095741 e!4413415)))

(assert (= (and b!7371942 (is-ElementMatch!19282 (regTwo!39076 r1!2370))) b!7372205))

(assert (= (and b!7371942 (is-Concat!28127 (regTwo!39076 r1!2370))) b!7372206))

(assert (= (and b!7371942 (is-Star!19282 (regTwo!39076 r1!2370))) b!7372207))

(assert (= (and b!7371942 (is-Union!19282 (regTwo!39076 r1!2370))) b!7372208))

(declare-fun b!7372211 () Bool)

(declare-fun e!4413416 () Bool)

(declare-fun tp!2095786 () Bool)

(assert (=> b!7372211 (= e!4413416 tp!2095786)))

(declare-fun b!7372212 () Bool)

(declare-fun tp!2095788 () Bool)

(declare-fun tp!2095787 () Bool)

(assert (=> b!7372212 (= e!4413416 (and tp!2095788 tp!2095787))))

(declare-fun b!7372210 () Bool)

(declare-fun tp!2095789 () Bool)

(declare-fun tp!2095790 () Bool)

(assert (=> b!7372210 (= e!4413416 (and tp!2095789 tp!2095790))))

(declare-fun b!7372209 () Bool)

(assert (=> b!7372209 (= e!4413416 tp_is_empty!48809)))

(assert (=> b!7371943 (= tp!2095736 e!4413416)))

(assert (= (and b!7371943 (is-ElementMatch!19282 (reg!19611 r1!2370))) b!7372209))

(assert (= (and b!7371943 (is-Concat!28127 (reg!19611 r1!2370))) b!7372210))

(assert (= (and b!7371943 (is-Star!19282 (reg!19611 r1!2370))) b!7372211))

(assert (= (and b!7371943 (is-Union!19282 (reg!19611 r1!2370))) b!7372212))

(declare-fun b!7372217 () Bool)

(declare-fun e!4413419 () Bool)

(declare-fun tp!2095795 () Bool)

(declare-fun tp!2095796 () Bool)

(assert (=> b!7372217 (= e!4413419 (and tp!2095795 tp!2095796))))

(assert (=> b!7371938 (= tp!2095735 e!4413419)))

(assert (= (and b!7371938 (is-Cons!71654 (exprs!8722 ct1!282))) b!7372217))

(declare-fun b!7372218 () Bool)

(declare-fun e!4413420 () Bool)

(declare-fun tp!2095797 () Bool)

(declare-fun tp!2095798 () Bool)

(assert (=> b!7372218 (= e!4413420 (and tp!2095797 tp!2095798))))

(assert (=> b!7371945 (= tp!2095734 e!4413420)))

(assert (= (and b!7371945 (is-Cons!71654 (exprs!8722 cWitness!61))) b!7372218))

(declare-fun b!7372221 () Bool)

(declare-fun e!4413421 () Bool)

(declare-fun tp!2095799 () Bool)

(assert (=> b!7372221 (= e!4413421 tp!2095799)))

(declare-fun b!7372222 () Bool)

(declare-fun tp!2095801 () Bool)

(declare-fun tp!2095800 () Bool)

(assert (=> b!7372222 (= e!4413421 (and tp!2095801 tp!2095800))))

(declare-fun b!7372220 () Bool)

(declare-fun tp!2095802 () Bool)

(declare-fun tp!2095803 () Bool)

(assert (=> b!7372220 (= e!4413421 (and tp!2095802 tp!2095803))))

(declare-fun b!7372219 () Bool)

(assert (=> b!7372219 (= e!4413421 tp_is_empty!48809)))

(assert (=> b!7371935 (= tp!2095739 e!4413421)))

(assert (= (and b!7371935 (is-ElementMatch!19282 (regOne!39077 r1!2370))) b!7372219))

(assert (= (and b!7371935 (is-Concat!28127 (regOne!39077 r1!2370))) b!7372220))

(assert (= (and b!7371935 (is-Star!19282 (regOne!39077 r1!2370))) b!7372221))

(assert (= (and b!7371935 (is-Union!19282 (regOne!39077 r1!2370))) b!7372222))

(declare-fun b!7372225 () Bool)

(declare-fun e!4413422 () Bool)

(declare-fun tp!2095804 () Bool)

(assert (=> b!7372225 (= e!4413422 tp!2095804)))

(declare-fun b!7372226 () Bool)

(declare-fun tp!2095806 () Bool)

(declare-fun tp!2095805 () Bool)

(assert (=> b!7372226 (= e!4413422 (and tp!2095806 tp!2095805))))

(declare-fun b!7372224 () Bool)

(declare-fun tp!2095807 () Bool)

(declare-fun tp!2095808 () Bool)

(assert (=> b!7372224 (= e!4413422 (and tp!2095807 tp!2095808))))

(declare-fun b!7372223 () Bool)

(assert (=> b!7372223 (= e!4413422 tp_is_empty!48809)))

(assert (=> b!7371935 (= tp!2095737 e!4413422)))

(assert (= (and b!7371935 (is-ElementMatch!19282 (regTwo!39077 r1!2370))) b!7372223))

(assert (= (and b!7371935 (is-Concat!28127 (regTwo!39077 r1!2370))) b!7372224))

(assert (= (and b!7371935 (is-Star!19282 (regTwo!39077 r1!2370))) b!7372225))

(assert (= (and b!7371935 (is-Union!19282 (regTwo!39077 r1!2370))) b!7372226))

(declare-fun b!7372227 () Bool)

(declare-fun e!4413423 () Bool)

(declare-fun tp!2095809 () Bool)

(declare-fun tp!2095810 () Bool)

(assert (=> b!7372227 (= e!4413423 (and tp!2095809 tp!2095810))))

(assert (=> b!7371947 (= tp!2095738 e!4413423)))

(assert (= (and b!7371947 (is-Cons!71654 (exprs!8722 ct2!378))) b!7372227))

(push 1)

(assert (not b!7372204))

(assert (not d!2283946))

(assert (not b!7372211))

(assert (not bm!677225))

(assert (not b!7372226))

(assert (not bm!677202))

(assert (not b!7372217))

(assert (not d!2283952))

(assert (not bm!677248))

(assert (not b!7372202))

(assert (not b!7372048))

(assert (not d!2283958))

(assert (not bm!677237))

(assert (not bm!677232))

(assert (not b!7372210))

(assert (not bm!677201))

(assert (not d!2283942))

(assert (not b!7372173))

(assert (not b!7372222))

(assert (not bm!677230))

(assert (not b!7372221))

(assert (not b!7372208))

(assert (not b!7372111))

(assert (not bm!677250))

(assert (not b!7372206))

(assert (not b!7372218))

(assert (not b!7372220))

(assert (not bm!677244))

(assert (not b!7372061))

(assert (not b!7372207))

(assert tp_is_empty!48809)

(assert (not bm!677229))

(assert (not bm!677224))

(assert (not d!2283960))

(assert (not bm!677236))

(assert (not b!7372128))

(assert (not d!2283968))

(assert (not b!7372224))

(assert (not d!2283966))

(assert (not d!2283944))

(assert (not b!7372227))

(assert (not b!7372177))

(assert (not b!7372176))

(assert (not b!7372140))

(assert (not b!7372212))

(assert (not bm!677249))

(assert (not bm!677206))

(assert (not b!7372203))

(assert (not bm!677255))

(assert (not bm!677254))

(assert (not b!7372102))

(assert (not bm!677196))

(assert (not b!7372139))

(assert (not b!7372225))

(assert (not d!2283964))

(assert (not b!7372162))

(assert (not d!2283950))

(assert (not bm!677200))

(assert (not bm!677207))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

