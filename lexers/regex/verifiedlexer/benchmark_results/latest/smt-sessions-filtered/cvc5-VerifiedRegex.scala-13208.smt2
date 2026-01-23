; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719766 () Bool)

(assert start!719766)

(declare-fun b!7376500 () Bool)

(declare-fun e!4415723 () Bool)

(declare-fun tp!2097567 () Bool)

(assert (=> b!7376500 (= e!4415723 tp!2097567)))

(declare-fun b!7376501 () Bool)

(declare-fun e!4415728 () Bool)

(declare-fun tp!2097570 () Bool)

(assert (=> b!7376501 (= e!4415728 tp!2097570)))

(declare-fun b!7376502 () Bool)

(declare-fun e!4415729 () Bool)

(declare-fun tp!2097572 () Bool)

(declare-fun tp!2097566 () Bool)

(assert (=> b!7376502 (= e!4415729 (and tp!2097572 tp!2097566))))

(declare-fun b!7376503 () Bool)

(declare-fun e!4415724 () Bool)

(declare-fun e!4415727 () Bool)

(assert (=> b!7376503 (= e!4415724 e!4415727)))

(declare-fun res!2975762 () Bool)

(assert (=> b!7376503 (=> (not res!2975762) (not e!4415727))))

(declare-datatypes ((C!38882 0))(
  ( (C!38883 (val!29801 Int)) )
))
(declare-datatypes ((Regex!19304 0))(
  ( (ElementMatch!19304 (c!1371036 C!38882)) (Concat!28149 (regOne!39120 Regex!19304) (regTwo!39120 Regex!19304)) (EmptyExpr!19304) (Star!19304 (reg!19633 Regex!19304)) (EmptyLang!19304) (Union!19304 (regOne!39121 Regex!19304) (regTwo!39121 Regex!19304)) )
))
(declare-fun r1!2370 () Regex!19304)

(declare-fun c!10362 () C!38882)

(assert (=> b!7376503 (= res!2975762 (and (or (not (is-ElementMatch!19304 r1!2370)) (not (= c!10362 (c!1371036 r1!2370)))) (not (is-Union!19304 r1!2370))))))

(declare-datatypes ((List!71800 0))(
  ( (Nil!71676) (Cons!71676 (h!78124 Regex!19304) (t!386279 List!71800)) )
))
(declare-datatypes ((Context!16488 0))(
  ( (Context!16489 (exprs!8744 List!71800)) )
))
(declare-fun lt!2616307 () (Set Context!16488))

(declare-fun ct1!282 () Context!16488)

(declare-fun ct2!378 () Context!16488)

(declare-fun derivationStepZipperDown!3130 (Regex!19304 Context!16488 C!38882) (Set Context!16488))

(declare-fun ++!17120 (List!71800 List!71800) List!71800)

(assert (=> b!7376503 (= lt!2616307 (derivationStepZipperDown!3130 r1!2370 (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165557 0))(
  ( (Unit!165558) )
))
(declare-fun lt!2616309 () Unit!165557)

(declare-fun lambda!458312 () Int)

(declare-fun lemmaConcatPreservesForall!1977 (List!71800 List!71800 Int) Unit!165557)

(assert (=> b!7376503 (= lt!2616309 (lemmaConcatPreservesForall!1977 (exprs!8744 ct1!282) (exprs!8744 ct2!378) lambda!458312))))

(declare-fun b!7376504 () Bool)

(declare-fun e!4415731 () Bool)

(declare-fun nullable!8380 (Regex!19304) Bool)

(assert (=> b!7376504 (= e!4415731 (not (nullable!8380 (regOne!39120 r1!2370))))))

(declare-fun b!7376506 () Bool)

(declare-fun res!2975759 () Bool)

(assert (=> b!7376506 (=> (not res!2975759) (not e!4415727))))

(assert (=> b!7376506 (= res!2975759 e!4415731)))

(declare-fun res!2975764 () Bool)

(assert (=> b!7376506 (=> res!2975764 e!4415731)))

(assert (=> b!7376506 (= res!2975764 (not (is-Concat!28149 r1!2370)))))

(declare-fun b!7376507 () Bool)

(declare-fun e!4415725 () Bool)

(declare-fun lt!2616304 () Context!16488)

(declare-fun inv!91601 (Context!16488) Bool)

(assert (=> b!7376507 (= e!4415725 (not (inv!91601 lt!2616304)))))

(declare-fun lt!2616306 () Unit!165557)

(declare-fun cWitness!61 () Context!16488)

(assert (=> b!7376507 (= lt!2616306 (lemmaConcatPreservesForall!1977 (exprs!8744 cWitness!61) (exprs!8744 ct2!378) lambda!458312))))

(declare-fun lt!2616308 () List!71800)

(assert (=> b!7376507 (set.member lt!2616304 (derivationStepZipperDown!3130 (regOne!39120 r1!2370) (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378))) c!10362))))

(assert (=> b!7376507 (= lt!2616304 (Context!16489 (++!17120 (exprs!8744 cWitness!61) (exprs!8744 ct2!378))))))

(declare-fun lt!2616312 () Unit!165557)

(assert (=> b!7376507 (= lt!2616312 (lemmaConcatPreservesForall!1977 lt!2616308 (exprs!8744 ct2!378) lambda!458312))))

(declare-fun lt!2616313 () Unit!165557)

(assert (=> b!7376507 (= lt!2616313 (lemmaConcatPreservesForall!1977 (exprs!8744 cWitness!61) (exprs!8744 ct2!378) lambda!458312))))

(declare-fun lt!2616311 () Context!16488)

(declare-fun lt!2616305 () Unit!165557)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!145 (Regex!19304 Context!16488 Context!16488 Context!16488 C!38882) Unit!165557)

(assert (=> b!7376507 (= lt!2616305 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!145 (regOne!39120 r1!2370) lt!2616311 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7376508 () Bool)

(declare-fun e!4415730 () Bool)

(assert (=> b!7376508 (= e!4415730 e!4415724)))

(declare-fun res!2975760 () Bool)

(assert (=> b!7376508 (=> (not res!2975760) (not e!4415724))))

(declare-fun lt!2616310 () (Set Context!16488))

(assert (=> b!7376508 (= res!2975760 (set.member cWitness!61 lt!2616310))))

(assert (=> b!7376508 (= lt!2616310 (derivationStepZipperDown!3130 r1!2370 ct1!282 c!10362))))

(declare-fun b!7376509 () Bool)

(assert (=> b!7376509 (= e!4415727 e!4415725)))

(declare-fun res!2975761 () Bool)

(assert (=> b!7376509 (=> (not res!2975761) (not e!4415725))))

(assert (=> b!7376509 (= res!2975761 (= lt!2616310 (derivationStepZipperDown!3130 (regOne!39120 r1!2370) lt!2616311 c!10362)))))

(assert (=> b!7376509 (= lt!2616311 (Context!16489 lt!2616308))))

(declare-fun $colon$colon!3286 (List!71800 Regex!19304) List!71800)

(assert (=> b!7376509 (= lt!2616308 ($colon$colon!3286 (exprs!8744 ct1!282) (regTwo!39120 r1!2370)))))

(declare-fun b!7376510 () Bool)

(declare-fun tp!2097568 () Bool)

(declare-fun tp!2097569 () Bool)

(assert (=> b!7376510 (= e!4415729 (and tp!2097568 tp!2097569))))

(declare-fun b!7376511 () Bool)

(declare-fun tp!2097573 () Bool)

(assert (=> b!7376511 (= e!4415729 tp!2097573)))

(declare-fun b!7376512 () Bool)

(declare-fun res!2975758 () Bool)

(assert (=> b!7376512 (=> (not res!2975758) (not e!4415727))))

(assert (=> b!7376512 (= res!2975758 (is-Concat!28149 r1!2370))))

(declare-fun b!7376513 () Bool)

(declare-fun res!2975763 () Bool)

(assert (=> b!7376513 (=> (not res!2975763) (not e!4415727))))

(declare-fun validRegex!9900 (Regex!19304) Bool)

(assert (=> b!7376513 (= res!2975763 (validRegex!9900 (regTwo!39120 r1!2370)))))

(declare-fun b!7376514 () Bool)

(declare-fun tp_is_empty!48853 () Bool)

(assert (=> b!7376514 (= e!4415729 tp_is_empty!48853)))

(declare-fun b!7376505 () Bool)

(declare-fun e!4415726 () Bool)

(declare-fun tp!2097571 () Bool)

(assert (=> b!7376505 (= e!4415726 tp!2097571)))

(declare-fun res!2975757 () Bool)

(assert (=> start!719766 (=> (not res!2975757) (not e!4415730))))

(assert (=> start!719766 (= res!2975757 (validRegex!9900 r1!2370))))

(assert (=> start!719766 e!4415730))

(assert (=> start!719766 tp_is_empty!48853))

(assert (=> start!719766 (and (inv!91601 cWitness!61) e!4415723)))

(assert (=> start!719766 (and (inv!91601 ct1!282) e!4415726)))

(assert (=> start!719766 e!4415729))

(assert (=> start!719766 (and (inv!91601 ct2!378) e!4415728)))

(assert (= (and start!719766 res!2975757) b!7376508))

(assert (= (and b!7376508 res!2975760) b!7376503))

(assert (= (and b!7376503 res!2975762) b!7376506))

(assert (= (and b!7376506 (not res!2975764)) b!7376504))

(assert (= (and b!7376506 res!2975759) b!7376512))

(assert (= (and b!7376512 res!2975758) b!7376513))

(assert (= (and b!7376513 res!2975763) b!7376509))

(assert (= (and b!7376509 res!2975761) b!7376507))

(assert (= start!719766 b!7376500))

(assert (= start!719766 b!7376505))

(assert (= (and start!719766 (is-ElementMatch!19304 r1!2370)) b!7376514))

(assert (= (and start!719766 (is-Concat!28149 r1!2370)) b!7376510))

(assert (= (and start!719766 (is-Star!19304 r1!2370)) b!7376511))

(assert (= (and start!719766 (is-Union!19304 r1!2370)) b!7376502))

(assert (= start!719766 b!7376501))

(declare-fun m!8028058 () Bool)

(assert (=> b!7376513 m!8028058))

(declare-fun m!8028060 () Bool)

(assert (=> b!7376503 m!8028060))

(declare-fun m!8028062 () Bool)

(assert (=> b!7376503 m!8028062))

(declare-fun m!8028064 () Bool)

(assert (=> b!7376503 m!8028064))

(declare-fun m!8028066 () Bool)

(assert (=> b!7376509 m!8028066))

(declare-fun m!8028068 () Bool)

(assert (=> b!7376509 m!8028068))

(declare-fun m!8028070 () Bool)

(assert (=> start!719766 m!8028070))

(declare-fun m!8028072 () Bool)

(assert (=> start!719766 m!8028072))

(declare-fun m!8028074 () Bool)

(assert (=> start!719766 m!8028074))

(declare-fun m!8028076 () Bool)

(assert (=> start!719766 m!8028076))

(declare-fun m!8028078 () Bool)

(assert (=> b!7376504 m!8028078))

(declare-fun m!8028080 () Bool)

(assert (=> b!7376508 m!8028080))

(declare-fun m!8028082 () Bool)

(assert (=> b!7376508 m!8028082))

(declare-fun m!8028084 () Bool)

(assert (=> b!7376507 m!8028084))

(declare-fun m!8028086 () Bool)

(assert (=> b!7376507 m!8028086))

(declare-fun m!8028088 () Bool)

(assert (=> b!7376507 m!8028088))

(declare-fun m!8028090 () Bool)

(assert (=> b!7376507 m!8028090))

(declare-fun m!8028092 () Bool)

(assert (=> b!7376507 m!8028092))

(declare-fun m!8028094 () Bool)

(assert (=> b!7376507 m!8028094))

(declare-fun m!8028096 () Bool)

(assert (=> b!7376507 m!8028096))

(declare-fun m!8028098 () Bool)

(assert (=> b!7376507 m!8028098))

(assert (=> b!7376507 m!8028098))

(push 1)

(assert (not b!7376502))

(assert (not start!719766))

(assert (not b!7376505))

(assert (not b!7376500))

(assert tp_is_empty!48853)

(assert (not b!7376504))

(assert (not b!7376510))

(assert (not b!7376511))

(assert (not b!7376508))

(assert (not b!7376503))

(assert (not b!7376501))

(assert (not b!7376513))

(assert (not b!7376507))

(assert (not b!7376509))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7376596 () Bool)

(declare-fun e!4415784 () (Set Context!16488))

(declare-fun call!678176 () (Set Context!16488))

(assert (=> b!7376596 (= e!4415784 call!678176)))

(declare-fun b!7376597 () Bool)

(declare-fun e!4415779 () (Set Context!16488))

(declare-fun call!678172 () (Set Context!16488))

(declare-fun call!678177 () (Set Context!16488))

(assert (=> b!7376597 (= e!4415779 (set.union call!678172 call!678177))))

(declare-fun bm!678167 () Bool)

(declare-fun call!678175 () (Set Context!16488))

(assert (=> bm!678167 (= call!678175 call!678177)))

(declare-fun bm!678168 () Bool)

(assert (=> bm!678168 (= call!678176 call!678175)))

(declare-fun bm!678170 () Bool)

(declare-fun call!678173 () List!71800)

(declare-fun call!678174 () List!71800)

(assert (=> bm!678170 (= call!678173 call!678174)))

(declare-fun c!1371056 () Bool)

(declare-fun c!1371055 () Bool)

(declare-fun bm!678171 () Bool)

(declare-fun c!1371054 () Bool)

(assert (=> bm!678171 (= call!678177 (derivationStepZipperDown!3130 (ite c!1371055 (regTwo!39121 r1!2370) (ite c!1371054 (regTwo!39120 r1!2370) (ite c!1371056 (regOne!39120 r1!2370) (reg!19633 r1!2370)))) (ite (or c!1371055 c!1371054) ct1!282 (Context!16489 call!678173)) c!10362))))

(declare-fun b!7376598 () Bool)

(declare-fun e!4415786 () (Set Context!16488))

(assert (=> b!7376598 (= e!4415786 (as set.empty (Set Context!16488)))))

(declare-fun b!7376599 () Bool)

(declare-fun e!4415783 () (Set Context!16488))

(assert (=> b!7376599 (= e!4415783 (set.insert ct1!282 (as set.empty (Set Context!16488))))))

(declare-fun b!7376600 () Bool)

(declare-fun e!4415785 () (Set Context!16488))

(assert (=> b!7376600 (= e!4415785 e!4415784)))

(assert (=> b!7376600 (= c!1371056 (is-Concat!28149 r1!2370))))

(declare-fun b!7376601 () Bool)

(declare-fun e!4415782 () Bool)

(assert (=> b!7376601 (= e!4415782 (nullable!8380 (regOne!39120 r1!2370)))))

(declare-fun b!7376602 () Bool)

(assert (=> b!7376602 (= c!1371054 e!4415782)))

(declare-fun res!2975797 () Bool)

(assert (=> b!7376602 (=> (not res!2975797) (not e!4415782))))

(assert (=> b!7376602 (= res!2975797 (is-Concat!28149 r1!2370))))

(assert (=> b!7376602 (= e!4415779 e!4415785)))

(declare-fun d!2284683 () Bool)

(declare-fun c!1371052 () Bool)

(assert (=> d!2284683 (= c!1371052 (and (is-ElementMatch!19304 r1!2370) (= (c!1371036 r1!2370) c!10362)))))

(assert (=> d!2284683 (= (derivationStepZipperDown!3130 r1!2370 ct1!282 c!10362) e!4415783)))

(declare-fun bm!678169 () Bool)

(assert (=> bm!678169 (= call!678174 ($colon$colon!3286 (exprs!8744 ct1!282) (ite (or c!1371054 c!1371056) (regTwo!39120 r1!2370) r1!2370)))))

(declare-fun bm!678172 () Bool)

(assert (=> bm!678172 (= call!678172 (derivationStepZipperDown!3130 (ite c!1371055 (regOne!39121 r1!2370) (regOne!39120 r1!2370)) (ite c!1371055 ct1!282 (Context!16489 call!678174)) c!10362))))

(declare-fun b!7376603 () Bool)

(assert (=> b!7376603 (= e!4415786 call!678176)))

(declare-fun b!7376604 () Bool)

(assert (=> b!7376604 (= e!4415785 (set.union call!678172 call!678175))))

(declare-fun b!7376605 () Bool)

(assert (=> b!7376605 (= e!4415783 e!4415779)))

(assert (=> b!7376605 (= c!1371055 (is-Union!19304 r1!2370))))

(declare-fun b!7376606 () Bool)

(declare-fun c!1371053 () Bool)

(assert (=> b!7376606 (= c!1371053 (is-Star!19304 r1!2370))))

(assert (=> b!7376606 (= e!4415784 e!4415786)))

(assert (= (and d!2284683 c!1371052) b!7376599))

(assert (= (and d!2284683 (not c!1371052)) b!7376605))

(assert (= (and b!7376605 c!1371055) b!7376597))

(assert (= (and b!7376605 (not c!1371055)) b!7376602))

(assert (= (and b!7376602 res!2975797) b!7376601))

(assert (= (and b!7376602 c!1371054) b!7376604))

(assert (= (and b!7376602 (not c!1371054)) b!7376600))

(assert (= (and b!7376600 c!1371056) b!7376596))

(assert (= (and b!7376600 (not c!1371056)) b!7376606))

(assert (= (and b!7376606 c!1371053) b!7376603))

(assert (= (and b!7376606 (not c!1371053)) b!7376598))

(assert (= (or b!7376596 b!7376603) bm!678170))

(assert (= (or b!7376596 b!7376603) bm!678168))

(assert (= (or b!7376604 bm!678168) bm!678167))

(assert (= (or b!7376604 bm!678170) bm!678169))

(assert (= (or b!7376597 bm!678167) bm!678171))

(assert (= (or b!7376597 b!7376604) bm!678172))

(declare-fun m!8028142 () Bool)

(assert (=> b!7376599 m!8028142))

(declare-fun m!8028144 () Bool)

(assert (=> bm!678171 m!8028144))

(declare-fun m!8028146 () Bool)

(assert (=> bm!678172 m!8028146))

(declare-fun m!8028148 () Bool)

(assert (=> bm!678169 m!8028148))

(assert (=> b!7376601 m!8028078))

(assert (=> b!7376508 d!2284683))

(declare-fun b!7376611 () Bool)

(declare-fun e!4415794 () (Set Context!16488))

(declare-fun call!678186 () (Set Context!16488))

(assert (=> b!7376611 (= e!4415794 call!678186)))

(declare-fun b!7376612 () Bool)

(declare-fun e!4415791 () (Set Context!16488))

(declare-fun call!678182 () (Set Context!16488))

(declare-fun call!678187 () (Set Context!16488))

(assert (=> b!7376612 (= e!4415791 (set.union call!678182 call!678187))))

(declare-fun bm!678175 () Bool)

(declare-fun call!678185 () (Set Context!16488))

(assert (=> bm!678175 (= call!678185 call!678187)))

(declare-fun bm!678176 () Bool)

(assert (=> bm!678176 (= call!678186 call!678185)))

(declare-fun bm!678178 () Bool)

(declare-fun call!678183 () List!71800)

(declare-fun call!678184 () List!71800)

(assert (=> bm!678178 (= call!678183 call!678184)))

(declare-fun c!1371061 () Bool)

(declare-fun bm!678179 () Bool)

(declare-fun c!1371059 () Bool)

(declare-fun c!1371060 () Bool)

(assert (=> bm!678179 (= call!678187 (derivationStepZipperDown!3130 (ite c!1371060 (regTwo!39121 r1!2370) (ite c!1371059 (regTwo!39120 r1!2370) (ite c!1371061 (regOne!39120 r1!2370) (reg!19633 r1!2370)))) (ite (or c!1371060 c!1371059) (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378))) (Context!16489 call!678183)) c!10362))))

(declare-fun b!7376613 () Bool)

(declare-fun e!4415796 () (Set Context!16488))

(assert (=> b!7376613 (= e!4415796 (as set.empty (Set Context!16488)))))

(declare-fun b!7376614 () Bool)

(declare-fun e!4415793 () (Set Context!16488))

(assert (=> b!7376614 (= e!4415793 (set.insert (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378))) (as set.empty (Set Context!16488))))))

(declare-fun b!7376615 () Bool)

(declare-fun e!4415795 () (Set Context!16488))

(assert (=> b!7376615 (= e!4415795 e!4415794)))

(assert (=> b!7376615 (= c!1371061 (is-Concat!28149 r1!2370))))

(declare-fun b!7376616 () Bool)

(declare-fun e!4415792 () Bool)

(assert (=> b!7376616 (= e!4415792 (nullable!8380 (regOne!39120 r1!2370)))))

(declare-fun b!7376617 () Bool)

(assert (=> b!7376617 (= c!1371059 e!4415792)))

(declare-fun res!2975802 () Bool)

(assert (=> b!7376617 (=> (not res!2975802) (not e!4415792))))

(assert (=> b!7376617 (= res!2975802 (is-Concat!28149 r1!2370))))

(assert (=> b!7376617 (= e!4415791 e!4415795)))

(declare-fun d!2284687 () Bool)

(declare-fun c!1371057 () Bool)

(assert (=> d!2284687 (= c!1371057 (and (is-ElementMatch!19304 r1!2370) (= (c!1371036 r1!2370) c!10362)))))

(assert (=> d!2284687 (= (derivationStepZipperDown!3130 r1!2370 (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378))) c!10362) e!4415793)))

(declare-fun bm!678177 () Bool)

(assert (=> bm!678177 (= call!678184 ($colon$colon!3286 (exprs!8744 (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378)))) (ite (or c!1371059 c!1371061) (regTwo!39120 r1!2370) r1!2370)))))

(declare-fun bm!678180 () Bool)

(assert (=> bm!678180 (= call!678182 (derivationStepZipperDown!3130 (ite c!1371060 (regOne!39121 r1!2370) (regOne!39120 r1!2370)) (ite c!1371060 (Context!16489 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378))) (Context!16489 call!678184)) c!10362))))

(declare-fun b!7376618 () Bool)

(assert (=> b!7376618 (= e!4415796 call!678186)))

(declare-fun b!7376619 () Bool)

(assert (=> b!7376619 (= e!4415795 (set.union call!678182 call!678185))))

(declare-fun b!7376620 () Bool)

(assert (=> b!7376620 (= e!4415793 e!4415791)))

(assert (=> b!7376620 (= c!1371060 (is-Union!19304 r1!2370))))

(declare-fun b!7376621 () Bool)

(declare-fun c!1371058 () Bool)

(assert (=> b!7376621 (= c!1371058 (is-Star!19304 r1!2370))))

(assert (=> b!7376621 (= e!4415794 e!4415796)))

(assert (= (and d!2284687 c!1371057) b!7376614))

(assert (= (and d!2284687 (not c!1371057)) b!7376620))

(assert (= (and b!7376620 c!1371060) b!7376612))

(assert (= (and b!7376620 (not c!1371060)) b!7376617))

(assert (= (and b!7376617 res!2975802) b!7376616))

(assert (= (and b!7376617 c!1371059) b!7376619))

(assert (= (and b!7376617 (not c!1371059)) b!7376615))

(assert (= (and b!7376615 c!1371061) b!7376611))

(assert (= (and b!7376615 (not c!1371061)) b!7376621))

(assert (= (and b!7376621 c!1371058) b!7376618))

(assert (= (and b!7376621 (not c!1371058)) b!7376613))

(assert (= (or b!7376611 b!7376618) bm!678178))

(assert (= (or b!7376611 b!7376618) bm!678176))

(assert (= (or b!7376619 bm!678176) bm!678175))

(assert (= (or b!7376619 bm!678178) bm!678177))

(assert (= (or b!7376612 bm!678175) bm!678179))

(assert (= (or b!7376612 b!7376619) bm!678180))

(declare-fun m!8028150 () Bool)

(assert (=> b!7376614 m!8028150))

(declare-fun m!8028152 () Bool)

(assert (=> bm!678179 m!8028152))

(declare-fun m!8028154 () Bool)

(assert (=> bm!678180 m!8028154))

(declare-fun m!8028156 () Bool)

(assert (=> bm!678177 m!8028156))

(assert (=> b!7376616 m!8028078))

(assert (=> b!7376503 d!2284687))

(declare-fun b!7376633 () Bool)

(declare-fun e!4415802 () Bool)

(declare-fun lt!2616346 () List!71800)

(assert (=> b!7376633 (= e!4415802 (or (not (= (exprs!8744 ct2!378) Nil!71676)) (= lt!2616346 (exprs!8744 ct1!282))))))

(declare-fun b!7376632 () Bool)

(declare-fun res!2975807 () Bool)

(assert (=> b!7376632 (=> (not res!2975807) (not e!4415802))))

(declare-fun size!42151 (List!71800) Int)

(assert (=> b!7376632 (= res!2975807 (= (size!42151 lt!2616346) (+ (size!42151 (exprs!8744 ct1!282)) (size!42151 (exprs!8744 ct2!378)))))))

(declare-fun b!7376630 () Bool)

(declare-fun e!4415801 () List!71800)

(assert (=> b!7376630 (= e!4415801 (exprs!8744 ct2!378))))

(declare-fun b!7376631 () Bool)

(assert (=> b!7376631 (= e!4415801 (Cons!71676 (h!78124 (exprs!8744 ct1!282)) (++!17120 (t!386279 (exprs!8744 ct1!282)) (exprs!8744 ct2!378))))))

(declare-fun d!2284689 () Bool)

(assert (=> d!2284689 e!4415802))

(declare-fun res!2975808 () Bool)

(assert (=> d!2284689 (=> (not res!2975808) (not e!4415802))))

(declare-fun content!15173 (List!71800) (Set Regex!19304))

(assert (=> d!2284689 (= res!2975808 (= (content!15173 lt!2616346) (set.union (content!15173 (exprs!8744 ct1!282)) (content!15173 (exprs!8744 ct2!378)))))))

(assert (=> d!2284689 (= lt!2616346 e!4415801)))

(declare-fun c!1371064 () Bool)

(assert (=> d!2284689 (= c!1371064 (is-Nil!71676 (exprs!8744 ct1!282)))))

(assert (=> d!2284689 (= (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378)) lt!2616346)))

(assert (= (and d!2284689 c!1371064) b!7376630))

(assert (= (and d!2284689 (not c!1371064)) b!7376631))

(assert (= (and d!2284689 res!2975808) b!7376632))

(assert (= (and b!7376632 res!2975807) b!7376633))

(declare-fun m!8028158 () Bool)

(assert (=> b!7376632 m!8028158))

(declare-fun m!8028160 () Bool)

(assert (=> b!7376632 m!8028160))

(declare-fun m!8028162 () Bool)

(assert (=> b!7376632 m!8028162))

(declare-fun m!8028164 () Bool)

(assert (=> b!7376631 m!8028164))

(declare-fun m!8028166 () Bool)

(assert (=> d!2284689 m!8028166))

(declare-fun m!8028168 () Bool)

(assert (=> d!2284689 m!8028168))

(declare-fun m!8028170 () Bool)

(assert (=> d!2284689 m!8028170))

(assert (=> b!7376503 d!2284689))

(declare-fun d!2284691 () Bool)

(declare-fun forall!18100 (List!71800 Int) Bool)

(assert (=> d!2284691 (forall!18100 (++!17120 (exprs!8744 ct1!282) (exprs!8744 ct2!378)) lambda!458312)))

(declare-fun lt!2616349 () Unit!165557)

(declare-fun choose!57327 (List!71800 List!71800 Int) Unit!165557)

(assert (=> d!2284691 (= lt!2616349 (choose!57327 (exprs!8744 ct1!282) (exprs!8744 ct2!378) lambda!458312))))

(assert (=> d!2284691 (forall!18100 (exprs!8744 ct1!282) lambda!458312)))

(assert (=> d!2284691 (= (lemmaConcatPreservesForall!1977 (exprs!8744 ct1!282) (exprs!8744 ct2!378) lambda!458312) lt!2616349)))

(declare-fun bs!1921262 () Bool)

(assert (= bs!1921262 d!2284691))

(assert (=> bs!1921262 m!8028060))

(assert (=> bs!1921262 m!8028060))

(declare-fun m!8028172 () Bool)

(assert (=> bs!1921262 m!8028172))

(declare-fun m!8028174 () Bool)

(assert (=> bs!1921262 m!8028174))

(declare-fun m!8028176 () Bool)

(assert (=> bs!1921262 m!8028176))

(assert (=> b!7376503 d!2284691))

(declare-fun b!7376661 () Bool)

(declare-fun e!4415824 () Bool)

(declare-fun call!678201 () Bool)

(assert (=> b!7376661 (= e!4415824 call!678201)))

(declare-fun b!7376662 () Bool)

(declare-fun e!4415825 () Bool)

(declare-fun e!4415826 () Bool)

(assert (=> b!7376662 (= e!4415825 e!4415826)))

(declare-fun c!1371071 () Bool)

(assert (=> b!7376662 (= c!1371071 (is-Union!19304 r1!2370))))

(declare-fun d!2284693 () Bool)

(declare-fun res!2975825 () Bool)

(declare-fun e!4415827 () Bool)

(assert (=> d!2284693 (=> res!2975825 e!4415827)))

(assert (=> d!2284693 (= res!2975825 (is-ElementMatch!19304 r1!2370))))

(assert (=> d!2284693 (= (validRegex!9900 r1!2370) e!4415827)))

(declare-fun bm!678194 () Bool)

(declare-fun call!678199 () Bool)

(assert (=> bm!678194 (= call!678201 call!678199)))

(declare-fun b!7376663 () Bool)

(assert (=> b!7376663 (= e!4415827 e!4415825)))

(declare-fun c!1371072 () Bool)

(assert (=> b!7376663 (= c!1371072 (is-Star!19304 r1!2370))))

(declare-fun b!7376664 () Bool)

(declare-fun e!4415829 () Bool)

(declare-fun e!4415830 () Bool)

(assert (=> b!7376664 (= e!4415829 e!4415830)))

(declare-fun res!2975824 () Bool)

(assert (=> b!7376664 (=> (not res!2975824) (not e!4415830))))

(assert (=> b!7376664 (= res!2975824 call!678201)))

(declare-fun b!7376665 () Bool)

(declare-fun res!2975827 () Bool)

(assert (=> b!7376665 (=> res!2975827 e!4415829)))

(assert (=> b!7376665 (= res!2975827 (not (is-Concat!28149 r1!2370)))))

(assert (=> b!7376665 (= e!4415826 e!4415829)))

(declare-fun b!7376666 () Bool)

(declare-fun e!4415828 () Bool)

(assert (=> b!7376666 (= e!4415825 e!4415828)))

(declare-fun res!2975828 () Bool)

(assert (=> b!7376666 (= res!2975828 (not (nullable!8380 (reg!19633 r1!2370))))))

(assert (=> b!7376666 (=> (not res!2975828) (not e!4415828))))

(declare-fun b!7376667 () Bool)

(declare-fun call!678200 () Bool)

(assert (=> b!7376667 (= e!4415830 call!678200)))

(declare-fun bm!678195 () Bool)

(assert (=> bm!678195 (= call!678199 (validRegex!9900 (ite c!1371072 (reg!19633 r1!2370) (ite c!1371071 (regTwo!39121 r1!2370) (regOne!39120 r1!2370)))))))

(declare-fun b!7376668 () Bool)

(declare-fun res!2975826 () Bool)

(assert (=> b!7376668 (=> (not res!2975826) (not e!4415824))))

(assert (=> b!7376668 (= res!2975826 call!678200)))

(assert (=> b!7376668 (= e!4415826 e!4415824)))

(declare-fun b!7376669 () Bool)

(assert (=> b!7376669 (= e!4415828 call!678199)))

(declare-fun bm!678196 () Bool)

(assert (=> bm!678196 (= call!678200 (validRegex!9900 (ite c!1371071 (regOne!39121 r1!2370) (regTwo!39120 r1!2370))))))

(assert (= (and d!2284693 (not res!2975825)) b!7376663))

(assert (= (and b!7376663 c!1371072) b!7376666))

(assert (= (and b!7376663 (not c!1371072)) b!7376662))

(assert (= (and b!7376666 res!2975828) b!7376669))

(assert (= (and b!7376662 c!1371071) b!7376668))

(assert (= (and b!7376662 (not c!1371071)) b!7376665))

(assert (= (and b!7376668 res!2975826) b!7376661))

(assert (= (and b!7376665 (not res!2975827)) b!7376664))

(assert (= (and b!7376664 res!2975824) b!7376667))

(assert (= (or b!7376668 b!7376667) bm!678196))

(assert (= (or b!7376661 b!7376664) bm!678194))

(assert (= (or b!7376669 bm!678194) bm!678195))

(declare-fun m!8028188 () Bool)

(assert (=> b!7376666 m!8028188))

(declare-fun m!8028190 () Bool)

(assert (=> bm!678195 m!8028190))

(declare-fun m!8028192 () Bool)

(assert (=> bm!678196 m!8028192))

(assert (=> start!719766 d!2284693))

(declare-fun bs!1921272 () Bool)

(declare-fun d!2284701 () Bool)

(assert (= bs!1921272 (and d!2284701 b!7376503)))

(declare-fun lambda!458329 () Int)

(assert (=> bs!1921272 (= lambda!458329 lambda!458312)))

(assert (=> d!2284701 (= (inv!91601 cWitness!61) (forall!18100 (exprs!8744 cWitness!61) lambda!458329))))

(declare-fun bs!1921273 () Bool)

(assert (= bs!1921273 d!2284701))

(declare-fun m!8028196 () Bool)

(assert (=> bs!1921273 m!8028196))

(assert (=> start!719766 d!2284701))

(declare-fun bs!1921274 () Bool)

(declare-fun d!2284705 () Bool)

(assert (= bs!1921274 (and d!2284705 b!7376503)))

(declare-fun lambda!458330 () Int)

(assert (=> bs!1921274 (= lambda!458330 lambda!458312)))

(declare-fun bs!1921275 () Bool)

(assert (= bs!1921275 (and d!2284705 d!2284701)))

(assert (=> bs!1921275 (= lambda!458330 lambda!458329)))

(assert (=> d!2284705 (= (inv!91601 ct1!282) (forall!18100 (exprs!8744 ct1!282) lambda!458330))))

(declare-fun bs!1921276 () Bool)

(assert (= bs!1921276 d!2284705))

(declare-fun m!8028198 () Bool)

(assert (=> bs!1921276 m!8028198))

(assert (=> start!719766 d!2284705))

(declare-fun bs!1921277 () Bool)

(declare-fun d!2284707 () Bool)

(assert (= bs!1921277 (and d!2284707 b!7376503)))

(declare-fun lambda!458331 () Int)

(assert (=> bs!1921277 (= lambda!458331 lambda!458312)))

(declare-fun bs!1921278 () Bool)

(assert (= bs!1921278 (and d!2284707 d!2284701)))

(assert (=> bs!1921278 (= lambda!458331 lambda!458329)))

(declare-fun bs!1921279 () Bool)

(assert (= bs!1921279 (and d!2284707 d!2284705)))

(assert (=> bs!1921279 (= lambda!458331 lambda!458330)))

(assert (=> d!2284707 (= (inv!91601 ct2!378) (forall!18100 (exprs!8744 ct2!378) lambda!458331))))

(declare-fun bs!1921280 () Bool)

(assert (= bs!1921280 d!2284707))

(declare-fun m!8028200 () Bool)

(assert (=> bs!1921280 m!8028200))

(assert (=> start!719766 d!2284707))

(declare-fun b!7376670 () Bool)

(declare-fun e!4415831 () Bool)

(declare-fun call!678204 () Bool)

(assert (=> b!7376670 (= e!4415831 call!678204)))

(declare-fun b!7376671 () Bool)

(declare-fun e!4415832 () Bool)

(declare-fun e!4415833 () Bool)

(assert (=> b!7376671 (= e!4415832 e!4415833)))

(declare-fun c!1371073 () Bool)

(assert (=> b!7376671 (= c!1371073 (is-Union!19304 (regTwo!39120 r1!2370)))))

(declare-fun d!2284709 () Bool)

(declare-fun res!2975830 () Bool)

(declare-fun e!4415834 () Bool)

(assert (=> d!2284709 (=> res!2975830 e!4415834)))

(assert (=> d!2284709 (= res!2975830 (is-ElementMatch!19304 (regTwo!39120 r1!2370)))))

(assert (=> d!2284709 (= (validRegex!9900 (regTwo!39120 r1!2370)) e!4415834)))

(declare-fun bm!678197 () Bool)

(declare-fun call!678202 () Bool)

(assert (=> bm!678197 (= call!678204 call!678202)))

(declare-fun b!7376672 () Bool)

(assert (=> b!7376672 (= e!4415834 e!4415832)))

(declare-fun c!1371074 () Bool)

(assert (=> b!7376672 (= c!1371074 (is-Star!19304 (regTwo!39120 r1!2370)))))

(declare-fun b!7376673 () Bool)

(declare-fun e!4415836 () Bool)

(declare-fun e!4415837 () Bool)

(assert (=> b!7376673 (= e!4415836 e!4415837)))

(declare-fun res!2975829 () Bool)

(assert (=> b!7376673 (=> (not res!2975829) (not e!4415837))))

(assert (=> b!7376673 (= res!2975829 call!678204)))

(declare-fun b!7376674 () Bool)

(declare-fun res!2975832 () Bool)

(assert (=> b!7376674 (=> res!2975832 e!4415836)))

(assert (=> b!7376674 (= res!2975832 (not (is-Concat!28149 (regTwo!39120 r1!2370))))))

(assert (=> b!7376674 (= e!4415833 e!4415836)))

(declare-fun b!7376675 () Bool)

(declare-fun e!4415835 () Bool)

(assert (=> b!7376675 (= e!4415832 e!4415835)))

(declare-fun res!2975833 () Bool)

(assert (=> b!7376675 (= res!2975833 (not (nullable!8380 (reg!19633 (regTwo!39120 r1!2370)))))))

(assert (=> b!7376675 (=> (not res!2975833) (not e!4415835))))

(declare-fun b!7376676 () Bool)

(declare-fun call!678203 () Bool)

(assert (=> b!7376676 (= e!4415837 call!678203)))

(declare-fun bm!678198 () Bool)

(assert (=> bm!678198 (= call!678202 (validRegex!9900 (ite c!1371074 (reg!19633 (regTwo!39120 r1!2370)) (ite c!1371073 (regTwo!39121 (regTwo!39120 r1!2370)) (regOne!39120 (regTwo!39120 r1!2370))))))))

(declare-fun b!7376677 () Bool)

(declare-fun res!2975831 () Bool)

(assert (=> b!7376677 (=> (not res!2975831) (not e!4415831))))

(assert (=> b!7376677 (= res!2975831 call!678203)))

(assert (=> b!7376677 (= e!4415833 e!4415831)))

(declare-fun b!7376678 () Bool)

(assert (=> b!7376678 (= e!4415835 call!678202)))

(declare-fun bm!678199 () Bool)

(assert (=> bm!678199 (= call!678203 (validRegex!9900 (ite c!1371073 (regOne!39121 (regTwo!39120 r1!2370)) (regTwo!39120 (regTwo!39120 r1!2370)))))))

(assert (= (and d!2284709 (not res!2975830)) b!7376672))

(assert (= (and b!7376672 c!1371074) b!7376675))

(assert (= (and b!7376672 (not c!1371074)) b!7376671))

(assert (= (and b!7376675 res!2975833) b!7376678))

(assert (= (and b!7376671 c!1371073) b!7376677))

(assert (= (and b!7376671 (not c!1371073)) b!7376674))

(assert (= (and b!7376677 res!2975831) b!7376670))

(assert (= (and b!7376674 (not res!2975832)) b!7376673))

(assert (= (and b!7376673 res!2975829) b!7376676))

(assert (= (or b!7376677 b!7376676) bm!678199))

(assert (= (or b!7376670 b!7376673) bm!678197))

(assert (= (or b!7376678 bm!678197) bm!678198))

(declare-fun m!8028202 () Bool)

(assert (=> b!7376675 m!8028202))

(declare-fun m!8028204 () Bool)

(assert (=> bm!678198 m!8028204))

(declare-fun m!8028206 () Bool)

(assert (=> bm!678199 m!8028206))

(assert (=> b!7376513 d!2284709))

(declare-fun lt!2616350 () List!71800)

(declare-fun b!7376682 () Bool)

(declare-fun e!4415839 () Bool)

(assert (=> b!7376682 (= e!4415839 (or (not (= (exprs!8744 ct2!378) Nil!71676)) (= lt!2616350 lt!2616308)))))

(declare-fun b!7376681 () Bool)

(declare-fun res!2975834 () Bool)

(assert (=> b!7376681 (=> (not res!2975834) (not e!4415839))))

(assert (=> b!7376681 (= res!2975834 (= (size!42151 lt!2616350) (+ (size!42151 lt!2616308) (size!42151 (exprs!8744 ct2!378)))))))

(declare-fun b!7376679 () Bool)

(declare-fun e!4415838 () List!71800)

(assert (=> b!7376679 (= e!4415838 (exprs!8744 ct2!378))))

(declare-fun b!7376680 () Bool)

(assert (=> b!7376680 (= e!4415838 (Cons!71676 (h!78124 lt!2616308) (++!17120 (t!386279 lt!2616308) (exprs!8744 ct2!378))))))

(declare-fun d!2284711 () Bool)

(assert (=> d!2284711 e!4415839))

(declare-fun res!2975835 () Bool)

(assert (=> d!2284711 (=> (not res!2975835) (not e!4415839))))

(assert (=> d!2284711 (= res!2975835 (= (content!15173 lt!2616350) (set.union (content!15173 lt!2616308) (content!15173 (exprs!8744 ct2!378)))))))

(assert (=> d!2284711 (= lt!2616350 e!4415838)))

(declare-fun c!1371075 () Bool)

(assert (=> d!2284711 (= c!1371075 (is-Nil!71676 lt!2616308))))

(assert (=> d!2284711 (= (++!17120 lt!2616308 (exprs!8744 ct2!378)) lt!2616350)))

(assert (= (and d!2284711 c!1371075) b!7376679))

(assert (= (and d!2284711 (not c!1371075)) b!7376680))

(assert (= (and d!2284711 res!2975835) b!7376681))

(assert (= (and b!7376681 res!2975834) b!7376682))

(declare-fun m!8028208 () Bool)

(assert (=> b!7376681 m!8028208))

(declare-fun m!8028210 () Bool)

(assert (=> b!7376681 m!8028210))

(assert (=> b!7376681 m!8028162))

(declare-fun m!8028212 () Bool)

(assert (=> b!7376680 m!8028212))

(declare-fun m!8028214 () Bool)

(assert (=> d!2284711 m!8028214))

(declare-fun m!8028216 () Bool)

(assert (=> d!2284711 m!8028216))

(assert (=> d!2284711 m!8028170))

(assert (=> b!7376507 d!2284711))

(declare-fun e!4415841 () Bool)

(declare-fun b!7376686 () Bool)

(declare-fun lt!2616351 () List!71800)

(assert (=> b!7376686 (= e!4415841 (or (not (= (exprs!8744 ct2!378) Nil!71676)) (= lt!2616351 (exprs!8744 cWitness!61))))))

(declare-fun b!7376685 () Bool)

(declare-fun res!2975836 () Bool)

(assert (=> b!7376685 (=> (not res!2975836) (not e!4415841))))

(assert (=> b!7376685 (= res!2975836 (= (size!42151 lt!2616351) (+ (size!42151 (exprs!8744 cWitness!61)) (size!42151 (exprs!8744 ct2!378)))))))

(declare-fun b!7376683 () Bool)

(declare-fun e!4415840 () List!71800)

(assert (=> b!7376683 (= e!4415840 (exprs!8744 ct2!378))))

(declare-fun b!7376684 () Bool)

(assert (=> b!7376684 (= e!4415840 (Cons!71676 (h!78124 (exprs!8744 cWitness!61)) (++!17120 (t!386279 (exprs!8744 cWitness!61)) (exprs!8744 ct2!378))))))

(declare-fun d!2284713 () Bool)

(assert (=> d!2284713 e!4415841))

(declare-fun res!2975837 () Bool)

(assert (=> d!2284713 (=> (not res!2975837) (not e!4415841))))

(assert (=> d!2284713 (= res!2975837 (= (content!15173 lt!2616351) (set.union (content!15173 (exprs!8744 cWitness!61)) (content!15173 (exprs!8744 ct2!378)))))))

(assert (=> d!2284713 (= lt!2616351 e!4415840)))

(declare-fun c!1371076 () Bool)

(assert (=> d!2284713 (= c!1371076 (is-Nil!71676 (exprs!8744 cWitness!61)))))

(assert (=> d!2284713 (= (++!17120 (exprs!8744 cWitness!61) (exprs!8744 ct2!378)) lt!2616351)))

(assert (= (and d!2284713 c!1371076) b!7376683))

(assert (= (and d!2284713 (not c!1371076)) b!7376684))

(assert (= (and d!2284713 res!2975837) b!7376685))

(assert (= (and b!7376685 res!2975836) b!7376686))

(declare-fun m!8028218 () Bool)

(assert (=> b!7376685 m!8028218))

(declare-fun m!8028220 () Bool)

(assert (=> b!7376685 m!8028220))

(assert (=> b!7376685 m!8028162))

(declare-fun m!8028222 () Bool)

(assert (=> b!7376684 m!8028222))

(declare-fun m!8028224 () Bool)

(assert (=> d!2284713 m!8028224))

(declare-fun m!8028226 () Bool)

(assert (=> d!2284713 m!8028226))

(assert (=> d!2284713 m!8028170))

(assert (=> b!7376507 d!2284713))

(declare-fun b!7376687 () Bool)

(declare-fun e!4415845 () (Set Context!16488))

(declare-fun call!678209 () (Set Context!16488))

(assert (=> b!7376687 (= e!4415845 call!678209)))

(declare-fun b!7376688 () Bool)

(declare-fun e!4415842 () (Set Context!16488))

(declare-fun call!678205 () (Set Context!16488))

(declare-fun call!678210 () (Set Context!16488))

(assert (=> b!7376688 (= e!4415842 (set.union call!678205 call!678210))))

(declare-fun bm!678200 () Bool)

(declare-fun call!678208 () (Set Context!16488))

(assert (=> bm!678200 (= call!678208 call!678210)))

(declare-fun bm!678201 () Bool)

(assert (=> bm!678201 (= call!678209 call!678208)))

(declare-fun bm!678203 () Bool)

(declare-fun call!678206 () List!71800)

(declare-fun call!678207 () List!71800)

(assert (=> bm!678203 (= call!678206 call!678207)))

(declare-fun c!1371081 () Bool)

(declare-fun bm!678204 () Bool)

(declare-fun c!1371080 () Bool)

(declare-fun c!1371079 () Bool)

(assert (=> bm!678204 (= call!678210 (derivationStepZipperDown!3130 (ite c!1371080 (regTwo!39121 (regOne!39120 r1!2370)) (ite c!1371079 (regTwo!39120 (regOne!39120 r1!2370)) (ite c!1371081 (regOne!39120 (regOne!39120 r1!2370)) (reg!19633 (regOne!39120 r1!2370))))) (ite (or c!1371080 c!1371079) (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378))) (Context!16489 call!678206)) c!10362))))

(declare-fun b!7376689 () Bool)

(declare-fun e!4415847 () (Set Context!16488))

(assert (=> b!7376689 (= e!4415847 (as set.empty (Set Context!16488)))))

(declare-fun b!7376690 () Bool)

(declare-fun e!4415844 () (Set Context!16488))

(assert (=> b!7376690 (= e!4415844 (set.insert (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378))) (as set.empty (Set Context!16488))))))

(declare-fun b!7376691 () Bool)

(declare-fun e!4415846 () (Set Context!16488))

(assert (=> b!7376691 (= e!4415846 e!4415845)))

(assert (=> b!7376691 (= c!1371081 (is-Concat!28149 (regOne!39120 r1!2370)))))

(declare-fun b!7376692 () Bool)

(declare-fun e!4415843 () Bool)

(assert (=> b!7376692 (= e!4415843 (nullable!8380 (regOne!39120 (regOne!39120 r1!2370))))))

(declare-fun b!7376693 () Bool)

(assert (=> b!7376693 (= c!1371079 e!4415843)))

(declare-fun res!2975838 () Bool)

(assert (=> b!7376693 (=> (not res!2975838) (not e!4415843))))

(assert (=> b!7376693 (= res!2975838 (is-Concat!28149 (regOne!39120 r1!2370)))))

(assert (=> b!7376693 (= e!4415842 e!4415846)))

(declare-fun d!2284715 () Bool)

(declare-fun c!1371077 () Bool)

(assert (=> d!2284715 (= c!1371077 (and (is-ElementMatch!19304 (regOne!39120 r1!2370)) (= (c!1371036 (regOne!39120 r1!2370)) c!10362)))))

(assert (=> d!2284715 (= (derivationStepZipperDown!3130 (regOne!39120 r1!2370) (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378))) c!10362) e!4415844)))

(declare-fun bm!678202 () Bool)

(assert (=> bm!678202 (= call!678207 ($colon$colon!3286 (exprs!8744 (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378)))) (ite (or c!1371079 c!1371081) (regTwo!39120 (regOne!39120 r1!2370)) (regOne!39120 r1!2370))))))

(declare-fun bm!678205 () Bool)

(assert (=> bm!678205 (= call!678205 (derivationStepZipperDown!3130 (ite c!1371080 (regOne!39121 (regOne!39120 r1!2370)) (regOne!39120 (regOne!39120 r1!2370))) (ite c!1371080 (Context!16489 (++!17120 lt!2616308 (exprs!8744 ct2!378))) (Context!16489 call!678207)) c!10362))))

(declare-fun b!7376694 () Bool)

(assert (=> b!7376694 (= e!4415847 call!678209)))

(declare-fun b!7376695 () Bool)

(assert (=> b!7376695 (= e!4415846 (set.union call!678205 call!678208))))

(declare-fun b!7376696 () Bool)

(assert (=> b!7376696 (= e!4415844 e!4415842)))

(assert (=> b!7376696 (= c!1371080 (is-Union!19304 (regOne!39120 r1!2370)))))

(declare-fun b!7376697 () Bool)

(declare-fun c!1371078 () Bool)

(assert (=> b!7376697 (= c!1371078 (is-Star!19304 (regOne!39120 r1!2370)))))

(assert (=> b!7376697 (= e!4415845 e!4415847)))

(assert (= (and d!2284715 c!1371077) b!7376690))

(assert (= (and d!2284715 (not c!1371077)) b!7376696))

(assert (= (and b!7376696 c!1371080) b!7376688))

(assert (= (and b!7376696 (not c!1371080)) b!7376693))

(assert (= (and b!7376693 res!2975838) b!7376692))

(assert (= (and b!7376693 c!1371079) b!7376695))

(assert (= (and b!7376693 (not c!1371079)) b!7376691))

(assert (= (and b!7376691 c!1371081) b!7376687))

(assert (= (and b!7376691 (not c!1371081)) b!7376697))

(assert (= (and b!7376697 c!1371078) b!7376694))

(assert (= (and b!7376697 (not c!1371078)) b!7376689))

(assert (= (or b!7376687 b!7376694) bm!678203))

(assert (= (or b!7376687 b!7376694) bm!678201))

(assert (= (or b!7376695 bm!678201) bm!678200))

(assert (= (or b!7376695 bm!678203) bm!678202))

(assert (= (or b!7376688 bm!678200) bm!678204))

(assert (= (or b!7376688 b!7376695) bm!678205))

(declare-fun m!8028228 () Bool)

(assert (=> b!7376690 m!8028228))

(declare-fun m!8028230 () Bool)

(assert (=> bm!678204 m!8028230))

(declare-fun m!8028232 () Bool)

(assert (=> bm!678205 m!8028232))

(declare-fun m!8028234 () Bool)

(assert (=> bm!678202 m!8028234))

(declare-fun m!8028236 () Bool)

(assert (=> b!7376692 m!8028236))

(assert (=> b!7376507 d!2284715))

(declare-fun bs!1921281 () Bool)

(declare-fun d!2284717 () Bool)

(assert (= bs!1921281 (and d!2284717 b!7376503)))

(declare-fun lambda!458332 () Int)

(assert (=> bs!1921281 (= lambda!458332 lambda!458312)))

(declare-fun bs!1921282 () Bool)

(assert (= bs!1921282 (and d!2284717 d!2284701)))

(assert (=> bs!1921282 (= lambda!458332 lambda!458329)))

(declare-fun bs!1921283 () Bool)

(assert (= bs!1921283 (and d!2284717 d!2284705)))

(assert (=> bs!1921283 (= lambda!458332 lambda!458330)))

(declare-fun bs!1921284 () Bool)

(assert (= bs!1921284 (and d!2284717 d!2284707)))

(assert (=> bs!1921284 (= lambda!458332 lambda!458331)))

(assert (=> d!2284717 (= (inv!91601 lt!2616304) (forall!18100 (exprs!8744 lt!2616304) lambda!458332))))

(declare-fun bs!1921285 () Bool)

(assert (= bs!1921285 d!2284717))

(declare-fun m!8028238 () Bool)

(assert (=> bs!1921285 m!8028238))

(assert (=> b!7376507 d!2284717))

(declare-fun d!2284719 () Bool)

(assert (=> d!2284719 (forall!18100 (++!17120 lt!2616308 (exprs!8744 ct2!378)) lambda!458312)))

(declare-fun lt!2616352 () Unit!165557)

(assert (=> d!2284719 (= lt!2616352 (choose!57327 lt!2616308 (exprs!8744 ct2!378) lambda!458312))))

(assert (=> d!2284719 (forall!18100 lt!2616308 lambda!458312)))

(assert (=> d!2284719 (= (lemmaConcatPreservesForall!1977 lt!2616308 (exprs!8744 ct2!378) lambda!458312) lt!2616352)))

(declare-fun bs!1921286 () Bool)

(assert (= bs!1921286 d!2284719))

(assert (=> bs!1921286 m!8028094))

(assert (=> bs!1921286 m!8028094))

(declare-fun m!8028240 () Bool)

(assert (=> bs!1921286 m!8028240))

(declare-fun m!8028242 () Bool)

(assert (=> bs!1921286 m!8028242))

(declare-fun m!8028244 () Bool)

(assert (=> bs!1921286 m!8028244))

(assert (=> b!7376507 d!2284719))

(declare-fun bs!1921287 () Bool)

(declare-fun d!2284721 () Bool)

(assert (= bs!1921287 (and d!2284721 d!2284701)))

(declare-fun lambda!458337 () Int)

(assert (=> bs!1921287 (= lambda!458337 lambda!458329)))

(declare-fun bs!1921288 () Bool)

(assert (= bs!1921288 (and d!2284721 d!2284705)))

(assert (=> bs!1921288 (= lambda!458337 lambda!458330)))

(declare-fun bs!1921289 () Bool)

(assert (= bs!1921289 (and d!2284721 b!7376503)))

(assert (=> bs!1921289 (= lambda!458337 lambda!458312)))

(declare-fun bs!1921290 () Bool)

(assert (= bs!1921290 (and d!2284721 d!2284717)))

(assert (=> bs!1921290 (= lambda!458337 lambda!458332)))

(declare-fun bs!1921291 () Bool)

(assert (= bs!1921291 (and d!2284721 d!2284707)))

(assert (=> bs!1921291 (= lambda!458337 lambda!458331)))

(assert (=> d!2284721 (set.member (Context!16489 (++!17120 (exprs!8744 cWitness!61) (exprs!8744 ct2!378))) (derivationStepZipperDown!3130 (regOne!39120 r1!2370) (Context!16489 (++!17120 (exprs!8744 lt!2616311) (exprs!8744 ct2!378))) c!10362))))

(declare-fun lt!2616361 () Unit!165557)

(assert (=> d!2284721 (= lt!2616361 (lemmaConcatPreservesForall!1977 (exprs!8744 lt!2616311) (exprs!8744 ct2!378) lambda!458337))))

(declare-fun lt!2616360 () Unit!165557)

(assert (=> d!2284721 (= lt!2616360 (lemmaConcatPreservesForall!1977 (exprs!8744 cWitness!61) (exprs!8744 ct2!378) lambda!458337))))

(declare-fun lt!2616359 () Unit!165557)

(declare-fun choose!57328 (Regex!19304 Context!16488 Context!16488 Context!16488 C!38882) Unit!165557)

(assert (=> d!2284721 (= lt!2616359 (choose!57328 (regOne!39120 r1!2370) lt!2616311 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2284721 (validRegex!9900 (regOne!39120 r1!2370))))

(assert (=> d!2284721 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!145 (regOne!39120 r1!2370) lt!2616311 ct2!378 cWitness!61 c!10362) lt!2616359)))

(declare-fun bs!1921292 () Bool)

(assert (= bs!1921292 d!2284721))

(declare-fun m!8028246 () Bool)

(assert (=> bs!1921292 m!8028246))

(declare-fun m!8028248 () Bool)

(assert (=> bs!1921292 m!8028248))

(declare-fun m!8028250 () Bool)

(assert (=> bs!1921292 m!8028250))

(declare-fun m!8028252 () Bool)

(assert (=> bs!1921292 m!8028252))

(declare-fun m!8028254 () Bool)

(assert (=> bs!1921292 m!8028254))

(assert (=> bs!1921292 m!8028092))

(declare-fun m!8028256 () Bool)

(assert (=> bs!1921292 m!8028256))

(declare-fun m!8028258 () Bool)

(assert (=> bs!1921292 m!8028258))

(assert (=> b!7376507 d!2284721))

(declare-fun d!2284723 () Bool)

(assert (=> d!2284723 (forall!18100 (++!17120 (exprs!8744 cWitness!61) (exprs!8744 ct2!378)) lambda!458312)))

(declare-fun lt!2616362 () Unit!165557)

(assert (=> d!2284723 (= lt!2616362 (choose!57327 (exprs!8744 cWitness!61) (exprs!8744 ct2!378) lambda!458312))))

(assert (=> d!2284723 (forall!18100 (exprs!8744 cWitness!61) lambda!458312)))

(assert (=> d!2284723 (= (lemmaConcatPreservesForall!1977 (exprs!8744 cWitness!61) (exprs!8744 ct2!378) lambda!458312) lt!2616362)))

(declare-fun bs!1921293 () Bool)

(assert (= bs!1921293 d!2284723))

(assert (=> bs!1921293 m!8028092))

(assert (=> bs!1921293 m!8028092))

(declare-fun m!8028260 () Bool)

(assert (=> bs!1921293 m!8028260))

(declare-fun m!8028262 () Bool)

(assert (=> bs!1921293 m!8028262))

(declare-fun m!8028264 () Bool)

(assert (=> bs!1921293 m!8028264))

(assert (=> b!7376507 d!2284723))

(declare-fun d!2284725 () Bool)

(declare-fun nullableFct!3357 (Regex!19304) Bool)

(assert (=> d!2284725 (= (nullable!8380 (regOne!39120 r1!2370)) (nullableFct!3357 (regOne!39120 r1!2370)))))

(declare-fun bs!1921294 () Bool)

(assert (= bs!1921294 d!2284725))

(declare-fun m!8028266 () Bool)

(assert (=> bs!1921294 m!8028266))

(assert (=> b!7376504 d!2284725))

(declare-fun b!7376720 () Bool)

(declare-fun e!4415863 () (Set Context!16488))

(declare-fun call!678227 () (Set Context!16488))

(assert (=> b!7376720 (= e!4415863 call!678227)))

(declare-fun b!7376721 () Bool)

(declare-fun e!4415860 () (Set Context!16488))

(declare-fun call!678223 () (Set Context!16488))

(declare-fun call!678228 () (Set Context!16488))

(assert (=> b!7376721 (= e!4415860 (set.union call!678223 call!678228))))

(declare-fun bm!678218 () Bool)

(declare-fun call!678226 () (Set Context!16488))

(assert (=> bm!678218 (= call!678226 call!678228)))

(declare-fun bm!678219 () Bool)

(assert (=> bm!678219 (= call!678227 call!678226)))

(declare-fun bm!678221 () Bool)

(declare-fun call!678224 () List!71800)

(declare-fun call!678225 () List!71800)

(assert (=> bm!678221 (= call!678224 call!678225)))

(declare-fun c!1371097 () Bool)

(declare-fun bm!678222 () Bool)

(declare-fun c!1371096 () Bool)

(declare-fun c!1371095 () Bool)

(assert (=> bm!678222 (= call!678228 (derivationStepZipperDown!3130 (ite c!1371096 (regTwo!39121 (regOne!39120 r1!2370)) (ite c!1371095 (regTwo!39120 (regOne!39120 r1!2370)) (ite c!1371097 (regOne!39120 (regOne!39120 r1!2370)) (reg!19633 (regOne!39120 r1!2370))))) (ite (or c!1371096 c!1371095) lt!2616311 (Context!16489 call!678224)) c!10362))))

(declare-fun b!7376722 () Bool)

(declare-fun e!4415865 () (Set Context!16488))

(assert (=> b!7376722 (= e!4415865 (as set.empty (Set Context!16488)))))

(declare-fun b!7376723 () Bool)

(declare-fun e!4415862 () (Set Context!16488))

(assert (=> b!7376723 (= e!4415862 (set.insert lt!2616311 (as set.empty (Set Context!16488))))))

(declare-fun b!7376724 () Bool)

(declare-fun e!4415864 () (Set Context!16488))

(assert (=> b!7376724 (= e!4415864 e!4415863)))

(assert (=> b!7376724 (= c!1371097 (is-Concat!28149 (regOne!39120 r1!2370)))))

(declare-fun b!7376725 () Bool)

(declare-fun e!4415861 () Bool)

(assert (=> b!7376725 (= e!4415861 (nullable!8380 (regOne!39120 (regOne!39120 r1!2370))))))

(declare-fun b!7376726 () Bool)

(assert (=> b!7376726 (= c!1371095 e!4415861)))

(declare-fun res!2975841 () Bool)

(assert (=> b!7376726 (=> (not res!2975841) (not e!4415861))))

(assert (=> b!7376726 (= res!2975841 (is-Concat!28149 (regOne!39120 r1!2370)))))

(assert (=> b!7376726 (= e!4415860 e!4415864)))

(declare-fun d!2284727 () Bool)

(declare-fun c!1371093 () Bool)

(assert (=> d!2284727 (= c!1371093 (and (is-ElementMatch!19304 (regOne!39120 r1!2370)) (= (c!1371036 (regOne!39120 r1!2370)) c!10362)))))

(assert (=> d!2284727 (= (derivationStepZipperDown!3130 (regOne!39120 r1!2370) lt!2616311 c!10362) e!4415862)))

(declare-fun bm!678220 () Bool)

(assert (=> bm!678220 (= call!678225 ($colon$colon!3286 (exprs!8744 lt!2616311) (ite (or c!1371095 c!1371097) (regTwo!39120 (regOne!39120 r1!2370)) (regOne!39120 r1!2370))))))

(declare-fun bm!678223 () Bool)

(assert (=> bm!678223 (= call!678223 (derivationStepZipperDown!3130 (ite c!1371096 (regOne!39121 (regOne!39120 r1!2370)) (regOne!39120 (regOne!39120 r1!2370))) (ite c!1371096 lt!2616311 (Context!16489 call!678225)) c!10362))))

(declare-fun b!7376727 () Bool)

(assert (=> b!7376727 (= e!4415865 call!678227)))

(declare-fun b!7376728 () Bool)

(assert (=> b!7376728 (= e!4415864 (set.union call!678223 call!678226))))

(declare-fun b!7376729 () Bool)

(assert (=> b!7376729 (= e!4415862 e!4415860)))

(assert (=> b!7376729 (= c!1371096 (is-Union!19304 (regOne!39120 r1!2370)))))

(declare-fun b!7376730 () Bool)

(declare-fun c!1371094 () Bool)

(assert (=> b!7376730 (= c!1371094 (is-Star!19304 (regOne!39120 r1!2370)))))

(assert (=> b!7376730 (= e!4415863 e!4415865)))

(assert (= (and d!2284727 c!1371093) b!7376723))

(assert (= (and d!2284727 (not c!1371093)) b!7376729))

(assert (= (and b!7376729 c!1371096) b!7376721))

(assert (= (and b!7376729 (not c!1371096)) b!7376726))

(assert (= (and b!7376726 res!2975841) b!7376725))

(assert (= (and b!7376726 c!1371095) b!7376728))

(assert (= (and b!7376726 (not c!1371095)) b!7376724))

(assert (= (and b!7376724 c!1371097) b!7376720))

(assert (= (and b!7376724 (not c!1371097)) b!7376730))

(assert (= (and b!7376730 c!1371094) b!7376727))

(assert (= (and b!7376730 (not c!1371094)) b!7376722))

(assert (= (or b!7376720 b!7376727) bm!678221))

(assert (= (or b!7376720 b!7376727) bm!678219))

(assert (= (or b!7376728 bm!678219) bm!678218))

(assert (= (or b!7376728 bm!678221) bm!678220))

(assert (= (or b!7376721 bm!678218) bm!678222))

(assert (= (or b!7376721 b!7376728) bm!678223))

(declare-fun m!8028268 () Bool)

(assert (=> b!7376723 m!8028268))

(declare-fun m!8028270 () Bool)

(assert (=> bm!678222 m!8028270))

(declare-fun m!8028272 () Bool)

(assert (=> bm!678223 m!8028272))

(declare-fun m!8028274 () Bool)

(assert (=> bm!678220 m!8028274))

(assert (=> b!7376725 m!8028236))

(assert (=> b!7376509 d!2284727))

(declare-fun d!2284729 () Bool)

(assert (=> d!2284729 (= ($colon$colon!3286 (exprs!8744 ct1!282) (regTwo!39120 r1!2370)) (Cons!71676 (regTwo!39120 r1!2370) (exprs!8744 ct1!282)))))

(assert (=> b!7376509 d!2284729))

(declare-fun b!7376743 () Bool)

(declare-fun e!4415868 () Bool)

(declare-fun tp!2097608 () Bool)

(assert (=> b!7376743 (= e!4415868 tp!2097608)))

(assert (=> b!7376502 (= tp!2097572 e!4415868)))

(declare-fun b!7376741 () Bool)

(assert (=> b!7376741 (= e!4415868 tp_is_empty!48853)))

(declare-fun b!7376744 () Bool)

(declare-fun tp!2097612 () Bool)

(declare-fun tp!2097609 () Bool)

(assert (=> b!7376744 (= e!4415868 (and tp!2097612 tp!2097609))))

(declare-fun b!7376742 () Bool)

(declare-fun tp!2097610 () Bool)

(declare-fun tp!2097611 () Bool)

(assert (=> b!7376742 (= e!4415868 (and tp!2097610 tp!2097611))))

(assert (= (and b!7376502 (is-ElementMatch!19304 (regOne!39121 r1!2370))) b!7376741))

(assert (= (and b!7376502 (is-Concat!28149 (regOne!39121 r1!2370))) b!7376742))

(assert (= (and b!7376502 (is-Star!19304 (regOne!39121 r1!2370))) b!7376743))

(assert (= (and b!7376502 (is-Union!19304 (regOne!39121 r1!2370))) b!7376744))

(declare-fun b!7376747 () Bool)

(declare-fun e!4415869 () Bool)

(declare-fun tp!2097613 () Bool)

(assert (=> b!7376747 (= e!4415869 tp!2097613)))

(assert (=> b!7376502 (= tp!2097566 e!4415869)))

(declare-fun b!7376745 () Bool)

(assert (=> b!7376745 (= e!4415869 tp_is_empty!48853)))

(declare-fun b!7376748 () Bool)

(declare-fun tp!2097617 () Bool)

(declare-fun tp!2097614 () Bool)

(assert (=> b!7376748 (= e!4415869 (and tp!2097617 tp!2097614))))

(declare-fun b!7376746 () Bool)

(declare-fun tp!2097615 () Bool)

(declare-fun tp!2097616 () Bool)

(assert (=> b!7376746 (= e!4415869 (and tp!2097615 tp!2097616))))

(assert (= (and b!7376502 (is-ElementMatch!19304 (regTwo!39121 r1!2370))) b!7376745))

(assert (= (and b!7376502 (is-Concat!28149 (regTwo!39121 r1!2370))) b!7376746))

(assert (= (and b!7376502 (is-Star!19304 (regTwo!39121 r1!2370))) b!7376747))

(assert (= (and b!7376502 (is-Union!19304 (regTwo!39121 r1!2370))) b!7376748))

(declare-fun b!7376753 () Bool)

(declare-fun e!4415872 () Bool)

(declare-fun tp!2097622 () Bool)

(declare-fun tp!2097623 () Bool)

(assert (=> b!7376753 (= e!4415872 (and tp!2097622 tp!2097623))))

(assert (=> b!7376501 (= tp!2097570 e!4415872)))

(assert (= (and b!7376501 (is-Cons!71676 (exprs!8744 ct2!378))) b!7376753))

(declare-fun b!7376754 () Bool)

(declare-fun e!4415873 () Bool)

(declare-fun tp!2097624 () Bool)

(declare-fun tp!2097625 () Bool)

(assert (=> b!7376754 (= e!4415873 (and tp!2097624 tp!2097625))))

(assert (=> b!7376500 (= tp!2097567 e!4415873)))

(assert (= (and b!7376500 (is-Cons!71676 (exprs!8744 cWitness!61))) b!7376754))

(declare-fun b!7376757 () Bool)

(declare-fun e!4415874 () Bool)

(declare-fun tp!2097626 () Bool)

(assert (=> b!7376757 (= e!4415874 tp!2097626)))

(assert (=> b!7376511 (= tp!2097573 e!4415874)))

(declare-fun b!7376755 () Bool)

(assert (=> b!7376755 (= e!4415874 tp_is_empty!48853)))

(declare-fun b!7376758 () Bool)

(declare-fun tp!2097630 () Bool)

(declare-fun tp!2097627 () Bool)

(assert (=> b!7376758 (= e!4415874 (and tp!2097630 tp!2097627))))

(declare-fun b!7376756 () Bool)

(declare-fun tp!2097628 () Bool)

(declare-fun tp!2097629 () Bool)

(assert (=> b!7376756 (= e!4415874 (and tp!2097628 tp!2097629))))

(assert (= (and b!7376511 (is-ElementMatch!19304 (reg!19633 r1!2370))) b!7376755))

(assert (= (and b!7376511 (is-Concat!28149 (reg!19633 r1!2370))) b!7376756))

(assert (= (and b!7376511 (is-Star!19304 (reg!19633 r1!2370))) b!7376757))

(assert (= (and b!7376511 (is-Union!19304 (reg!19633 r1!2370))) b!7376758))

(declare-fun b!7376761 () Bool)

(declare-fun e!4415875 () Bool)

(declare-fun tp!2097631 () Bool)

(assert (=> b!7376761 (= e!4415875 tp!2097631)))

(assert (=> b!7376510 (= tp!2097568 e!4415875)))

(declare-fun b!7376759 () Bool)

(assert (=> b!7376759 (= e!4415875 tp_is_empty!48853)))

(declare-fun b!7376762 () Bool)

(declare-fun tp!2097635 () Bool)

(declare-fun tp!2097632 () Bool)

(assert (=> b!7376762 (= e!4415875 (and tp!2097635 tp!2097632))))

(declare-fun b!7376760 () Bool)

(declare-fun tp!2097633 () Bool)

(declare-fun tp!2097634 () Bool)

(assert (=> b!7376760 (= e!4415875 (and tp!2097633 tp!2097634))))

(assert (= (and b!7376510 (is-ElementMatch!19304 (regOne!39120 r1!2370))) b!7376759))

(assert (= (and b!7376510 (is-Concat!28149 (regOne!39120 r1!2370))) b!7376760))

(assert (= (and b!7376510 (is-Star!19304 (regOne!39120 r1!2370))) b!7376761))

(assert (= (and b!7376510 (is-Union!19304 (regOne!39120 r1!2370))) b!7376762))

(declare-fun b!7376765 () Bool)

(declare-fun e!4415876 () Bool)

(declare-fun tp!2097636 () Bool)

(assert (=> b!7376765 (= e!4415876 tp!2097636)))

(assert (=> b!7376510 (= tp!2097569 e!4415876)))

(declare-fun b!7376763 () Bool)

(assert (=> b!7376763 (= e!4415876 tp_is_empty!48853)))

(declare-fun b!7376766 () Bool)

(declare-fun tp!2097640 () Bool)

(declare-fun tp!2097637 () Bool)

(assert (=> b!7376766 (= e!4415876 (and tp!2097640 tp!2097637))))

(declare-fun b!7376764 () Bool)

(declare-fun tp!2097638 () Bool)

(declare-fun tp!2097639 () Bool)

(assert (=> b!7376764 (= e!4415876 (and tp!2097638 tp!2097639))))

(assert (= (and b!7376510 (is-ElementMatch!19304 (regTwo!39120 r1!2370))) b!7376763))

(assert (= (and b!7376510 (is-Concat!28149 (regTwo!39120 r1!2370))) b!7376764))

(assert (= (and b!7376510 (is-Star!19304 (regTwo!39120 r1!2370))) b!7376765))

(assert (= (and b!7376510 (is-Union!19304 (regTwo!39120 r1!2370))) b!7376766))

(declare-fun b!7376767 () Bool)

(declare-fun e!4415877 () Bool)

(declare-fun tp!2097641 () Bool)

(declare-fun tp!2097642 () Bool)

(assert (=> b!7376767 (= e!4415877 (and tp!2097641 tp!2097642))))

(assert (=> b!7376505 (= tp!2097571 e!4415877)))

(assert (= (and b!7376505 (is-Cons!71676 (exprs!8744 ct1!282))) b!7376767))

(push 1)

(assert (not b!7376675))

(assert (not b!7376744))

(assert (not b!7376756))

(assert (not b!7376746))

(assert (not b!7376631))

(assert (not b!7376766))

(assert (not b!7376681))

(assert (not b!7376748))

(assert (not d!2284725))

(assert (not bm!678195))

(assert (not b!7376754))

(assert (not bm!678179))

(assert (not b!7376685))

(assert (not b!7376666))

(assert (not b!7376684))

(assert (not b!7376764))

(assert (not bm!678172))

(assert (not bm!678220))

(assert (not d!2284723))

(assert (not b!7376753))

(assert (not bm!678204))

(assert (not d!2284707))

(assert (not b!7376680))

(assert (not d!2284713))

(assert (not bm!678196))

(assert (not bm!678171))

(assert (not d!2284689))

(assert (not bm!678222))

(assert (not b!7376767))

(assert (not bm!678177))

(assert (not d!2284721))

(assert (not b!7376765))

(assert (not b!7376760))

(assert (not d!2284705))

(assert (not bm!678169))

(assert (not bm!678198))

(assert tp_is_empty!48853)

(assert (not bm!678199))

(assert (not d!2284711))

(assert (not b!7376601))

(assert (not bm!678223))

(assert (not d!2284691))

(assert (not b!7376692))

(assert (not b!7376743))

(assert (not b!7376747))

(assert (not d!2284719))

(assert (not b!7376762))

(assert (not bm!678180))

(assert (not bm!678205))

(assert (not b!7376725))

(assert (not b!7376616))

(assert (not b!7376757))

(assert (not d!2284717))

(assert (not bm!678202))

(assert (not d!2284701))

(assert (not b!7376632))

(assert (not b!7376758))

(assert (not b!7376761))

(assert (not b!7376742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

