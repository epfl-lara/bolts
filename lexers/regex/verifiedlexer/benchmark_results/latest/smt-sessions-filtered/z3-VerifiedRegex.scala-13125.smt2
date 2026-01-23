; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!717332 () Bool)

(assert start!717332)

(declare-fun b!7345208 () Bool)

(declare-fun e!4398198 () Bool)

(declare-fun tp_is_empty!48523 () Bool)

(assert (=> b!7345208 (= e!4398198 tp_is_empty!48523)))

(declare-fun b!7345209 () Bool)

(declare-fun tp!2086043 () Bool)

(declare-fun tp!2086036 () Bool)

(assert (=> b!7345209 (= e!4398198 (and tp!2086043 tp!2086036))))

(declare-fun res!2966840 () Bool)

(declare-fun e!4398195 () Bool)

(assert (=> start!717332 (=> (not res!2966840) (not e!4398195))))

(declare-datatypes ((C!38552 0))(
  ( (C!38553 (val!29636 Int)) )
))
(declare-datatypes ((Regex!19139 0))(
  ( (ElementMatch!19139 (c!1364429 C!38552)) (Concat!27984 (regOne!38790 Regex!19139) (regTwo!38790 Regex!19139)) (EmptyExpr!19139) (Star!19139 (reg!19468 Regex!19139)) (EmptyLang!19139) (Union!19139 (regOne!38791 Regex!19139) (regTwo!38791 Regex!19139)) )
))
(declare-fun r1!2370 () Regex!19139)

(declare-fun validRegex!9735 (Regex!19139) Bool)

(assert (=> start!717332 (= res!2966840 (validRegex!9735 r1!2370))))

(assert (=> start!717332 e!4398195))

(assert (=> start!717332 tp_is_empty!48523))

(declare-datatypes ((List!71635 0))(
  ( (Nil!71511) (Cons!71511 (h!77959 Regex!19139) (t!386030 List!71635)) )
))
(declare-datatypes ((Context!16158 0))(
  ( (Context!16159 (exprs!8579 List!71635)) )
))
(declare-fun cWitness!61 () Context!16158)

(declare-fun e!4398191 () Bool)

(declare-fun inv!91187 (Context!16158) Bool)

(assert (=> start!717332 (and (inv!91187 cWitness!61) e!4398191)))

(declare-fun ct1!282 () Context!16158)

(declare-fun e!4398192 () Bool)

(assert (=> start!717332 (and (inv!91187 ct1!282) e!4398192)))

(assert (=> start!717332 e!4398198))

(declare-fun ct2!378 () Context!16158)

(declare-fun e!4398193 () Bool)

(assert (=> start!717332 (and (inv!91187 ct2!378) e!4398193)))

(declare-fun b!7345210 () Bool)

(declare-fun e!4398196 () Bool)

(declare-fun e!4398194 () Bool)

(assert (=> b!7345210 (= e!4398196 e!4398194)))

(declare-fun res!2966841 () Bool)

(assert (=> b!7345210 (=> (not res!2966841) (not e!4398194))))

(declare-fun c!10362 () C!38552)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2610980 () (InoxSet Context!16158))

(declare-fun lt!2610976 () (InoxSet Context!16158))

(declare-fun derivationStepZipperDown!2965 (Regex!19139 Context!16158 C!38552) (InoxSet Context!16158))

(assert (=> b!7345210 (= res!2966841 (= lt!2610980 ((_ map or) lt!2610976 (derivationStepZipperDown!2965 (regTwo!38790 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2610981 () Context!16158)

(assert (=> b!7345210 (= lt!2610976 (derivationStepZipperDown!2965 (regOne!38790 r1!2370) lt!2610981 c!10362))))

(declare-fun lt!2610977 () List!71635)

(assert (=> b!7345210 (= lt!2610981 (Context!16159 lt!2610977))))

(declare-fun $colon$colon!3137 (List!71635 Regex!19139) List!71635)

(assert (=> b!7345210 (= lt!2610977 ($colon$colon!3137 (exprs!8579 ct1!282) (regTwo!38790 r1!2370)))))

(declare-fun b!7345211 () Bool)

(declare-fun res!2966844 () Bool)

(assert (=> b!7345211 (=> (not res!2966844) (not e!4398196))))

(assert (=> b!7345211 (= res!2966844 (validRegex!9735 (regTwo!38790 r1!2370)))))

(declare-fun b!7345212 () Bool)

(declare-fun tp!2086039 () Bool)

(declare-fun tp!2086040 () Bool)

(assert (=> b!7345212 (= e!4398198 (and tp!2086039 tp!2086040))))

(declare-fun b!7345213 () Bool)

(declare-fun res!2966845 () Bool)

(assert (=> b!7345213 (=> (not res!2966845) (not e!4398196))))

(declare-fun nullable!8230 (Regex!19139) Bool)

(assert (=> b!7345213 (= res!2966845 (nullable!8230 (regOne!38790 r1!2370)))))

(declare-fun b!7345214 () Bool)

(declare-fun tp!2086037 () Bool)

(assert (=> b!7345214 (= e!4398198 tp!2086037)))

(declare-fun b!7345215 () Bool)

(declare-fun res!2966846 () Bool)

(assert (=> b!7345215 (=> (not res!2966846) (not e!4398194))))

(assert (=> b!7345215 (= res!2966846 (select lt!2610976 cWitness!61))))

(declare-fun b!7345216 () Bool)

(declare-fun tp!2086038 () Bool)

(assert (=> b!7345216 (= e!4398192 tp!2086038)))

(declare-fun b!7345217 () Bool)

(declare-fun tp!2086042 () Bool)

(assert (=> b!7345217 (= e!4398193 tp!2086042)))

(declare-fun b!7345218 () Bool)

(declare-fun tp!2086041 () Bool)

(assert (=> b!7345218 (= e!4398191 tp!2086041)))

(declare-fun b!7345219 () Bool)

(declare-fun e!4398197 () Bool)

(assert (=> b!7345219 (= e!4398195 e!4398197)))

(declare-fun res!2966843 () Bool)

(assert (=> b!7345219 (=> (not res!2966843) (not e!4398197))))

(assert (=> b!7345219 (= res!2966843 (select lt!2610980 cWitness!61))))

(assert (=> b!7345219 (= lt!2610980 (derivationStepZipperDown!2965 r1!2370 ct1!282 c!10362))))

(declare-fun b!7345220 () Bool)

(declare-fun lambda!456029 () Int)

(declare-fun forall!17965 (List!71635 Int) Bool)

(assert (=> b!7345220 (= e!4398194 (not (forall!17965 (exprs!8579 cWitness!61) lambda!456029)))))

(declare-fun ++!16957 (List!71635 List!71635) List!71635)

(assert (=> b!7345220 (select (derivationStepZipperDown!2965 (regOne!38790 r1!2370) (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378))) c!10362) (Context!16159 (++!16957 (exprs!8579 cWitness!61) (exprs!8579 ct2!378))))))

(declare-datatypes ((Unit!165231 0))(
  ( (Unit!165232) )
))
(declare-fun lt!2610978 () Unit!165231)

(declare-fun lemmaConcatPreservesForall!1814 (List!71635 List!71635 Int) Unit!165231)

(assert (=> b!7345220 (= lt!2610978 (lemmaConcatPreservesForall!1814 lt!2610977 (exprs!8579 ct2!378) lambda!456029))))

(declare-fun lt!2610975 () Unit!165231)

(assert (=> b!7345220 (= lt!2610975 (lemmaConcatPreservesForall!1814 (exprs!8579 cWitness!61) (exprs!8579 ct2!378) lambda!456029))))

(declare-fun lt!2610974 () Unit!165231)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!66 (Regex!19139 Context!16158 Context!16158 Context!16158 C!38552) Unit!165231)

(assert (=> b!7345220 (= lt!2610974 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!66 (regOne!38790 r1!2370) lt!2610981 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7345221 () Bool)

(assert (=> b!7345221 (= e!4398197 e!4398196)))

(declare-fun res!2966842 () Bool)

(assert (=> b!7345221 (=> (not res!2966842) (not e!4398196))))

(get-info :version)

(assert (=> b!7345221 (= res!2966842 (and (or (not ((_ is ElementMatch!19139) r1!2370)) (not (= c!10362 (c!1364429 r1!2370)))) (not ((_ is Union!19139) r1!2370)) ((_ is Concat!27984) r1!2370)))))

(declare-fun lt!2610979 () (InoxSet Context!16158))

(assert (=> b!7345221 (= lt!2610979 (derivationStepZipperDown!2965 r1!2370 (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378))) c!10362))))

(declare-fun lt!2610973 () Unit!165231)

(assert (=> b!7345221 (= lt!2610973 (lemmaConcatPreservesForall!1814 (exprs!8579 ct1!282) (exprs!8579 ct2!378) lambda!456029))))

(assert (= (and start!717332 res!2966840) b!7345219))

(assert (= (and b!7345219 res!2966843) b!7345221))

(assert (= (and b!7345221 res!2966842) b!7345213))

(assert (= (and b!7345213 res!2966845) b!7345211))

(assert (= (and b!7345211 res!2966844) b!7345210))

(assert (= (and b!7345210 res!2966841) b!7345215))

(assert (= (and b!7345215 res!2966846) b!7345220))

(assert (= start!717332 b!7345218))

(assert (= start!717332 b!7345216))

(assert (= (and start!717332 ((_ is ElementMatch!19139) r1!2370)) b!7345208))

(assert (= (and start!717332 ((_ is Concat!27984) r1!2370)) b!7345212))

(assert (= (and start!717332 ((_ is Star!19139) r1!2370)) b!7345214))

(assert (= (and start!717332 ((_ is Union!19139) r1!2370)) b!7345209))

(assert (= start!717332 b!7345217))

(declare-fun m!8007688 () Bool)

(assert (=> b!7345215 m!8007688))

(declare-fun m!8007690 () Bool)

(assert (=> b!7345219 m!8007690))

(declare-fun m!8007692 () Bool)

(assert (=> b!7345219 m!8007692))

(declare-fun m!8007694 () Bool)

(assert (=> b!7345221 m!8007694))

(declare-fun m!8007696 () Bool)

(assert (=> b!7345221 m!8007696))

(declare-fun m!8007698 () Bool)

(assert (=> b!7345221 m!8007698))

(declare-fun m!8007700 () Bool)

(assert (=> b!7345210 m!8007700))

(declare-fun m!8007702 () Bool)

(assert (=> b!7345210 m!8007702))

(declare-fun m!8007704 () Bool)

(assert (=> b!7345210 m!8007704))

(declare-fun m!8007706 () Bool)

(assert (=> start!717332 m!8007706))

(declare-fun m!8007708 () Bool)

(assert (=> start!717332 m!8007708))

(declare-fun m!8007710 () Bool)

(assert (=> start!717332 m!8007710))

(declare-fun m!8007712 () Bool)

(assert (=> start!717332 m!8007712))

(declare-fun m!8007714 () Bool)

(assert (=> b!7345220 m!8007714))

(declare-fun m!8007716 () Bool)

(assert (=> b!7345220 m!8007716))

(declare-fun m!8007718 () Bool)

(assert (=> b!7345220 m!8007718))

(declare-fun m!8007720 () Bool)

(assert (=> b!7345220 m!8007720))

(declare-fun m!8007722 () Bool)

(assert (=> b!7345220 m!8007722))

(declare-fun m!8007724 () Bool)

(assert (=> b!7345220 m!8007724))

(declare-fun m!8007726 () Bool)

(assert (=> b!7345220 m!8007726))

(declare-fun m!8007728 () Bool)

(assert (=> b!7345220 m!8007728))

(declare-fun m!8007730 () Bool)

(assert (=> b!7345211 m!8007730))

(declare-fun m!8007732 () Bool)

(assert (=> b!7345213 m!8007732))

(check-sat (not b!7345210) (not b!7345212) (not b!7345209) (not b!7345220) (not b!7345219) (not b!7345214) (not b!7345213) (not b!7345216) (not b!7345218) (not b!7345217) (not start!717332) (not b!7345221) (not b!7345211) tp_is_empty!48523)
(check-sat)
(get-model)

(declare-fun d!2279452 () Bool)

(declare-fun e!4398203 () Bool)

(assert (=> d!2279452 e!4398203))

(declare-fun res!2966852 () Bool)

(assert (=> d!2279452 (=> (not res!2966852) (not e!4398203))))

(declare-fun lt!2610984 () List!71635)

(declare-fun content!15049 (List!71635) (InoxSet Regex!19139))

(assert (=> d!2279452 (= res!2966852 (= (content!15049 lt!2610984) ((_ map or) (content!15049 lt!2610977) (content!15049 (exprs!8579 ct2!378)))))))

(declare-fun e!4398204 () List!71635)

(assert (=> d!2279452 (= lt!2610984 e!4398204)))

(declare-fun c!1364432 () Bool)

(assert (=> d!2279452 (= c!1364432 ((_ is Nil!71511) lt!2610977))))

(assert (=> d!2279452 (= (++!16957 lt!2610977 (exprs!8579 ct2!378)) lt!2610984)))

(declare-fun b!7345233 () Bool)

(assert (=> b!7345233 (= e!4398203 (or (not (= (exprs!8579 ct2!378) Nil!71511)) (= lt!2610984 lt!2610977)))))

(declare-fun b!7345231 () Bool)

(assert (=> b!7345231 (= e!4398204 (Cons!71511 (h!77959 lt!2610977) (++!16957 (t!386030 lt!2610977) (exprs!8579 ct2!378))))))

(declare-fun b!7345230 () Bool)

(assert (=> b!7345230 (= e!4398204 (exprs!8579 ct2!378))))

(declare-fun b!7345232 () Bool)

(declare-fun res!2966851 () Bool)

(assert (=> b!7345232 (=> (not res!2966851) (not e!4398203))))

(declare-fun size!42028 (List!71635) Int)

(assert (=> b!7345232 (= res!2966851 (= (size!42028 lt!2610984) (+ (size!42028 lt!2610977) (size!42028 (exprs!8579 ct2!378)))))))

(assert (= (and d!2279452 c!1364432) b!7345230))

(assert (= (and d!2279452 (not c!1364432)) b!7345231))

(assert (= (and d!2279452 res!2966852) b!7345232))

(assert (= (and b!7345232 res!2966851) b!7345233))

(declare-fun m!8007734 () Bool)

(assert (=> d!2279452 m!8007734))

(declare-fun m!8007736 () Bool)

(assert (=> d!2279452 m!8007736))

(declare-fun m!8007738 () Bool)

(assert (=> d!2279452 m!8007738))

(declare-fun m!8007740 () Bool)

(assert (=> b!7345231 m!8007740))

(declare-fun m!8007742 () Bool)

(assert (=> b!7345232 m!8007742))

(declare-fun m!8007744 () Bool)

(assert (=> b!7345232 m!8007744))

(declare-fun m!8007746 () Bool)

(assert (=> b!7345232 m!8007746))

(assert (=> b!7345220 d!2279452))

(declare-fun d!2279454 () Bool)

(declare-fun e!4398205 () Bool)

(assert (=> d!2279454 e!4398205))

(declare-fun res!2966854 () Bool)

(assert (=> d!2279454 (=> (not res!2966854) (not e!4398205))))

(declare-fun lt!2610985 () List!71635)

(assert (=> d!2279454 (= res!2966854 (= (content!15049 lt!2610985) ((_ map or) (content!15049 (exprs!8579 cWitness!61)) (content!15049 (exprs!8579 ct2!378)))))))

(declare-fun e!4398206 () List!71635)

(assert (=> d!2279454 (= lt!2610985 e!4398206)))

(declare-fun c!1364433 () Bool)

(assert (=> d!2279454 (= c!1364433 ((_ is Nil!71511) (exprs!8579 cWitness!61)))))

(assert (=> d!2279454 (= (++!16957 (exprs!8579 cWitness!61) (exprs!8579 ct2!378)) lt!2610985)))

(declare-fun b!7345237 () Bool)

(assert (=> b!7345237 (= e!4398205 (or (not (= (exprs!8579 ct2!378) Nil!71511)) (= lt!2610985 (exprs!8579 cWitness!61))))))

(declare-fun b!7345235 () Bool)

(assert (=> b!7345235 (= e!4398206 (Cons!71511 (h!77959 (exprs!8579 cWitness!61)) (++!16957 (t!386030 (exprs!8579 cWitness!61)) (exprs!8579 ct2!378))))))

(declare-fun b!7345234 () Bool)

(assert (=> b!7345234 (= e!4398206 (exprs!8579 ct2!378))))

(declare-fun b!7345236 () Bool)

(declare-fun res!2966853 () Bool)

(assert (=> b!7345236 (=> (not res!2966853) (not e!4398205))))

(assert (=> b!7345236 (= res!2966853 (= (size!42028 lt!2610985) (+ (size!42028 (exprs!8579 cWitness!61)) (size!42028 (exprs!8579 ct2!378)))))))

(assert (= (and d!2279454 c!1364433) b!7345234))

(assert (= (and d!2279454 (not c!1364433)) b!7345235))

(assert (= (and d!2279454 res!2966854) b!7345236))

(assert (= (and b!7345236 res!2966853) b!7345237))

(declare-fun m!8007748 () Bool)

(assert (=> d!2279454 m!8007748))

(declare-fun m!8007750 () Bool)

(assert (=> d!2279454 m!8007750))

(assert (=> d!2279454 m!8007738))

(declare-fun m!8007752 () Bool)

(assert (=> b!7345235 m!8007752))

(declare-fun m!8007754 () Bool)

(assert (=> b!7345236 m!8007754))

(declare-fun m!8007756 () Bool)

(assert (=> b!7345236 m!8007756))

(assert (=> b!7345236 m!8007746))

(assert (=> b!7345220 d!2279454))

(declare-fun d!2279456 () Bool)

(declare-fun c!1364449 () Bool)

(assert (=> d!2279456 (= c!1364449 (and ((_ is ElementMatch!19139) (regOne!38790 r1!2370)) (= (c!1364429 (regOne!38790 r1!2370)) c!10362)))))

(declare-fun e!4398232 () (InoxSet Context!16158))

(assert (=> d!2279456 (= (derivationStepZipperDown!2965 (regOne!38790 r1!2370) (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378))) c!10362) e!4398232)))

(declare-fun b!7345278 () Bool)

(declare-fun e!4398236 () (InoxSet Context!16158))

(assert (=> b!7345278 (= e!4398236 ((as const (Array Context!16158 Bool)) false))))

(declare-fun b!7345279 () Bool)

(declare-fun call!671019 () (InoxSet Context!16158))

(assert (=> b!7345279 (= e!4398236 call!671019)))

(declare-fun b!7345280 () Bool)

(declare-fun e!4398235 () (InoxSet Context!16158))

(declare-fun call!671017 () (InoxSet Context!16158))

(declare-fun call!671016 () (InoxSet Context!16158))

(assert (=> b!7345280 (= e!4398235 ((_ map or) call!671017 call!671016))))

(declare-fun c!1364450 () Bool)

(declare-fun bm!671011 () Bool)

(declare-fun c!1364451 () Bool)

(declare-fun call!671021 () List!71635)

(assert (=> bm!671011 (= call!671021 ($colon$colon!3137 (exprs!8579 (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378)))) (ite (or c!1364451 c!1364450) (regTwo!38790 (regOne!38790 r1!2370)) (regOne!38790 r1!2370))))))

(declare-fun bm!671012 () Bool)

(declare-fun c!1364452 () Bool)

(declare-fun call!671018 () (InoxSet Context!16158))

(declare-fun call!671020 () List!71635)

(assert (=> bm!671012 (= call!671018 (derivationStepZipperDown!2965 (ite c!1364452 (regOne!38791 (regOne!38790 r1!2370)) (ite c!1364451 (regTwo!38790 (regOne!38790 r1!2370)) (ite c!1364450 (regOne!38790 (regOne!38790 r1!2370)) (reg!19468 (regOne!38790 r1!2370))))) (ite (or c!1364452 c!1364451) (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378))) (Context!16159 call!671020)) c!10362))))

(declare-fun b!7345281 () Bool)

(declare-fun e!4398234 () (InoxSet Context!16158))

(assert (=> b!7345281 (= e!4398234 call!671019)))

(declare-fun b!7345282 () Bool)

(declare-fun e!4398231 () (InoxSet Context!16158))

(assert (=> b!7345282 (= e!4398231 ((_ map or) call!671018 call!671017))))

(declare-fun bm!671013 () Bool)

(assert (=> bm!671013 (= call!671017 (derivationStepZipperDown!2965 (ite c!1364452 (regTwo!38791 (regOne!38790 r1!2370)) (regOne!38790 (regOne!38790 r1!2370))) (ite c!1364452 (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378))) (Context!16159 call!671021)) c!10362))))

(declare-fun b!7345283 () Bool)

(assert (=> b!7345283 (= e!4398235 e!4398234)))

(assert (=> b!7345283 (= c!1364450 ((_ is Concat!27984) (regOne!38790 r1!2370)))))

(declare-fun b!7345284 () Bool)

(assert (=> b!7345284 (= e!4398232 (store ((as const (Array Context!16158 Bool)) false) (Context!16159 (++!16957 lt!2610977 (exprs!8579 ct2!378))) true))))

(declare-fun bm!671014 () Bool)

(assert (=> bm!671014 (= call!671019 call!671016)))

(declare-fun b!7345285 () Bool)

(declare-fun e!4398233 () Bool)

(assert (=> b!7345285 (= c!1364451 e!4398233)))

(declare-fun res!2966869 () Bool)

(assert (=> b!7345285 (=> (not res!2966869) (not e!4398233))))

(assert (=> b!7345285 (= res!2966869 ((_ is Concat!27984) (regOne!38790 r1!2370)))))

(assert (=> b!7345285 (= e!4398231 e!4398235)))

(declare-fun b!7345286 () Bool)

(assert (=> b!7345286 (= e!4398233 (nullable!8230 (regOne!38790 (regOne!38790 r1!2370))))))

(declare-fun b!7345287 () Bool)

(declare-fun c!1364448 () Bool)

(assert (=> b!7345287 (= c!1364448 ((_ is Star!19139) (regOne!38790 r1!2370)))))

(assert (=> b!7345287 (= e!4398234 e!4398236)))

(declare-fun bm!671015 () Bool)

(assert (=> bm!671015 (= call!671016 call!671018)))

(declare-fun b!7345288 () Bool)

(assert (=> b!7345288 (= e!4398232 e!4398231)))

(assert (=> b!7345288 (= c!1364452 ((_ is Union!19139) (regOne!38790 r1!2370)))))

(declare-fun bm!671016 () Bool)

(assert (=> bm!671016 (= call!671020 call!671021)))

(assert (= (and d!2279456 c!1364449) b!7345284))

(assert (= (and d!2279456 (not c!1364449)) b!7345288))

(assert (= (and b!7345288 c!1364452) b!7345282))

(assert (= (and b!7345288 (not c!1364452)) b!7345285))

(assert (= (and b!7345285 res!2966869) b!7345286))

(assert (= (and b!7345285 c!1364451) b!7345280))

(assert (= (and b!7345285 (not c!1364451)) b!7345283))

(assert (= (and b!7345283 c!1364450) b!7345281))

(assert (= (and b!7345283 (not c!1364450)) b!7345287))

(assert (= (and b!7345287 c!1364448) b!7345279))

(assert (= (and b!7345287 (not c!1364448)) b!7345278))

(assert (= (or b!7345281 b!7345279) bm!671016))

(assert (= (or b!7345281 b!7345279) bm!671014))

(assert (= (or b!7345280 bm!671014) bm!671015))

(assert (= (or b!7345280 bm!671016) bm!671011))

(assert (= (or b!7345282 b!7345280) bm!671013))

(assert (= (or b!7345282 bm!671015) bm!671012))

(declare-fun m!8007796 () Bool)

(assert (=> b!7345286 m!8007796))

(declare-fun m!8007798 () Bool)

(assert (=> bm!671012 m!8007798))

(declare-fun m!8007800 () Bool)

(assert (=> b!7345284 m!8007800))

(declare-fun m!8007802 () Bool)

(assert (=> bm!671013 m!8007802))

(declare-fun m!8007804 () Bool)

(assert (=> bm!671011 m!8007804))

(assert (=> b!7345220 d!2279456))

(declare-fun d!2279468 () Bool)

(assert (=> d!2279468 (forall!17965 (++!16957 lt!2610977 (exprs!8579 ct2!378)) lambda!456029)))

(declare-fun lt!2611003 () Unit!165231)

(declare-fun choose!57134 (List!71635 List!71635 Int) Unit!165231)

(assert (=> d!2279468 (= lt!2611003 (choose!57134 lt!2610977 (exprs!8579 ct2!378) lambda!456029))))

(assert (=> d!2279468 (forall!17965 lt!2610977 lambda!456029)))

(assert (=> d!2279468 (= (lemmaConcatPreservesForall!1814 lt!2610977 (exprs!8579 ct2!378) lambda!456029) lt!2611003)))

(declare-fun bs!1918785 () Bool)

(assert (= bs!1918785 d!2279468))

(assert (=> bs!1918785 m!8007714))

(assert (=> bs!1918785 m!8007714))

(declare-fun m!8007806 () Bool)

(assert (=> bs!1918785 m!8007806))

(declare-fun m!8007808 () Bool)

(assert (=> bs!1918785 m!8007808))

(declare-fun m!8007810 () Bool)

(assert (=> bs!1918785 m!8007810))

(assert (=> b!7345220 d!2279468))

(declare-fun bs!1918787 () Bool)

(declare-fun d!2279470 () Bool)

(assert (= bs!1918787 (and d!2279470 b!7345221)))

(declare-fun lambda!456039 () Int)

(assert (=> bs!1918787 (= lambda!456039 lambda!456029)))

(assert (=> d!2279470 (select (derivationStepZipperDown!2965 (regOne!38790 r1!2370) (Context!16159 (++!16957 (exprs!8579 lt!2610981) (exprs!8579 ct2!378))) c!10362) (Context!16159 (++!16957 (exprs!8579 cWitness!61) (exprs!8579 ct2!378))))))

(declare-fun lt!2611014 () Unit!165231)

(assert (=> d!2279470 (= lt!2611014 (lemmaConcatPreservesForall!1814 (exprs!8579 lt!2610981) (exprs!8579 ct2!378) lambda!456039))))

(declare-fun lt!2611013 () Unit!165231)

(assert (=> d!2279470 (= lt!2611013 (lemmaConcatPreservesForall!1814 (exprs!8579 cWitness!61) (exprs!8579 ct2!378) lambda!456039))))

(declare-fun lt!2611012 () Unit!165231)

(declare-fun choose!57135 (Regex!19139 Context!16158 Context!16158 Context!16158 C!38552) Unit!165231)

(assert (=> d!2279470 (= lt!2611012 (choose!57135 (regOne!38790 r1!2370) lt!2610981 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279470 (validRegex!9735 (regOne!38790 r1!2370))))

(assert (=> d!2279470 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!66 (regOne!38790 r1!2370) lt!2610981 ct2!378 cWitness!61 c!10362) lt!2611012)))

(declare-fun bs!1918788 () Bool)

(assert (= bs!1918788 d!2279470))

(assert (=> bs!1918788 m!8007722))

(declare-fun m!8007864 () Bool)

(assert (=> bs!1918788 m!8007864))

(declare-fun m!8007868 () Bool)

(assert (=> bs!1918788 m!8007868))

(declare-fun m!8007870 () Bool)

(assert (=> bs!1918788 m!8007870))

(declare-fun m!8007872 () Bool)

(assert (=> bs!1918788 m!8007872))

(declare-fun m!8007874 () Bool)

(assert (=> bs!1918788 m!8007874))

(declare-fun m!8007876 () Bool)

(assert (=> bs!1918788 m!8007876))

(declare-fun m!8007878 () Bool)

(assert (=> bs!1918788 m!8007878))

(assert (=> b!7345220 d!2279470))

(declare-fun d!2279488 () Bool)

(declare-fun res!2966902 () Bool)

(declare-fun e!4398307 () Bool)

(assert (=> d!2279488 (=> res!2966902 e!4398307)))

(assert (=> d!2279488 (= res!2966902 ((_ is Nil!71511) (exprs!8579 cWitness!61)))))

(assert (=> d!2279488 (= (forall!17965 (exprs!8579 cWitness!61) lambda!456029) e!4398307)))

(declare-fun b!7345399 () Bool)

(declare-fun e!4398308 () Bool)

(assert (=> b!7345399 (= e!4398307 e!4398308)))

(declare-fun res!2966903 () Bool)

(assert (=> b!7345399 (=> (not res!2966903) (not e!4398308))))

(declare-fun dynLambda!29470 (Int Regex!19139) Bool)

(assert (=> b!7345399 (= res!2966903 (dynLambda!29470 lambda!456029 (h!77959 (exprs!8579 cWitness!61))))))

(declare-fun b!7345400 () Bool)

(assert (=> b!7345400 (= e!4398308 (forall!17965 (t!386030 (exprs!8579 cWitness!61)) lambda!456029))))

(assert (= (and d!2279488 (not res!2966902)) b!7345399))

(assert (= (and b!7345399 res!2966903) b!7345400))

(declare-fun b_lambda!283981 () Bool)

(assert (=> (not b_lambda!283981) (not b!7345399)))

(declare-fun m!8007894 () Bool)

(assert (=> b!7345399 m!8007894))

(declare-fun m!8007896 () Bool)

(assert (=> b!7345400 m!8007896))

(assert (=> b!7345220 d!2279488))

(declare-fun d!2279500 () Bool)

(assert (=> d!2279500 (forall!17965 (++!16957 (exprs!8579 cWitness!61) (exprs!8579 ct2!378)) lambda!456029)))

(declare-fun lt!2611015 () Unit!165231)

(assert (=> d!2279500 (= lt!2611015 (choose!57134 (exprs!8579 cWitness!61) (exprs!8579 ct2!378) lambda!456029))))

(assert (=> d!2279500 (forall!17965 (exprs!8579 cWitness!61) lambda!456029)))

(assert (=> d!2279500 (= (lemmaConcatPreservesForall!1814 (exprs!8579 cWitness!61) (exprs!8579 ct2!378) lambda!456029) lt!2611015)))

(declare-fun bs!1918802 () Bool)

(assert (= bs!1918802 d!2279500))

(assert (=> bs!1918802 m!8007722))

(assert (=> bs!1918802 m!8007722))

(declare-fun m!8007902 () Bool)

(assert (=> bs!1918802 m!8007902))

(declare-fun m!8007904 () Bool)

(assert (=> bs!1918802 m!8007904))

(assert (=> bs!1918802 m!8007724))

(assert (=> b!7345220 d!2279500))

(declare-fun d!2279502 () Bool)

(declare-fun c!1364500 () Bool)

(assert (=> d!2279502 (= c!1364500 (and ((_ is ElementMatch!19139) (regTwo!38790 r1!2370)) (= (c!1364429 (regTwo!38790 r1!2370)) c!10362)))))

(declare-fun e!4398318 () (InoxSet Context!16158))

(assert (=> d!2279502 (= (derivationStepZipperDown!2965 (regTwo!38790 r1!2370) ct1!282 c!10362) e!4398318)))

(declare-fun b!7345416 () Bool)

(declare-fun e!4398322 () (InoxSet Context!16158))

(assert (=> b!7345416 (= e!4398322 ((as const (Array Context!16158 Bool)) false))))

(declare-fun b!7345417 () Bool)

(declare-fun call!671079 () (InoxSet Context!16158))

(assert (=> b!7345417 (= e!4398322 call!671079)))

(declare-fun b!7345418 () Bool)

(declare-fun e!4398321 () (InoxSet Context!16158))

(declare-fun call!671077 () (InoxSet Context!16158))

(declare-fun call!671076 () (InoxSet Context!16158))

(assert (=> b!7345418 (= e!4398321 ((_ map or) call!671077 call!671076))))

(declare-fun bm!671071 () Bool)

(declare-fun c!1364502 () Bool)

(declare-fun c!1364501 () Bool)

(declare-fun call!671081 () List!71635)

(assert (=> bm!671071 (= call!671081 ($colon$colon!3137 (exprs!8579 ct1!282) (ite (or c!1364502 c!1364501) (regTwo!38790 (regTwo!38790 r1!2370)) (regTwo!38790 r1!2370))))))

(declare-fun call!671080 () List!71635)

(declare-fun c!1364503 () Bool)

(declare-fun call!671078 () (InoxSet Context!16158))

(declare-fun bm!671072 () Bool)

(assert (=> bm!671072 (= call!671078 (derivationStepZipperDown!2965 (ite c!1364503 (regOne!38791 (regTwo!38790 r1!2370)) (ite c!1364502 (regTwo!38790 (regTwo!38790 r1!2370)) (ite c!1364501 (regOne!38790 (regTwo!38790 r1!2370)) (reg!19468 (regTwo!38790 r1!2370))))) (ite (or c!1364503 c!1364502) ct1!282 (Context!16159 call!671080)) c!10362))))

(declare-fun b!7345419 () Bool)

(declare-fun e!4398320 () (InoxSet Context!16158))

(assert (=> b!7345419 (= e!4398320 call!671079)))

(declare-fun b!7345420 () Bool)

(declare-fun e!4398317 () (InoxSet Context!16158))

(assert (=> b!7345420 (= e!4398317 ((_ map or) call!671078 call!671077))))

(declare-fun bm!671073 () Bool)

(assert (=> bm!671073 (= call!671077 (derivationStepZipperDown!2965 (ite c!1364503 (regTwo!38791 (regTwo!38790 r1!2370)) (regOne!38790 (regTwo!38790 r1!2370))) (ite c!1364503 ct1!282 (Context!16159 call!671081)) c!10362))))

(declare-fun b!7345421 () Bool)

(assert (=> b!7345421 (= e!4398321 e!4398320)))

(assert (=> b!7345421 (= c!1364501 ((_ is Concat!27984) (regTwo!38790 r1!2370)))))

(declare-fun b!7345422 () Bool)

(assert (=> b!7345422 (= e!4398318 (store ((as const (Array Context!16158 Bool)) false) ct1!282 true))))

(declare-fun bm!671074 () Bool)

(assert (=> bm!671074 (= call!671079 call!671076)))

(declare-fun b!7345423 () Bool)

(declare-fun e!4398319 () Bool)

(assert (=> b!7345423 (= c!1364502 e!4398319)))

(declare-fun res!2966907 () Bool)

(assert (=> b!7345423 (=> (not res!2966907) (not e!4398319))))

(assert (=> b!7345423 (= res!2966907 ((_ is Concat!27984) (regTwo!38790 r1!2370)))))

(assert (=> b!7345423 (= e!4398317 e!4398321)))

(declare-fun b!7345424 () Bool)

(assert (=> b!7345424 (= e!4398319 (nullable!8230 (regOne!38790 (regTwo!38790 r1!2370))))))

(declare-fun b!7345425 () Bool)

(declare-fun c!1364499 () Bool)

(assert (=> b!7345425 (= c!1364499 ((_ is Star!19139) (regTwo!38790 r1!2370)))))

(assert (=> b!7345425 (= e!4398320 e!4398322)))

(declare-fun bm!671075 () Bool)

(assert (=> bm!671075 (= call!671076 call!671078)))

(declare-fun b!7345426 () Bool)

(assert (=> b!7345426 (= e!4398318 e!4398317)))

(assert (=> b!7345426 (= c!1364503 ((_ is Union!19139) (regTwo!38790 r1!2370)))))

(declare-fun bm!671076 () Bool)

(assert (=> bm!671076 (= call!671080 call!671081)))

(assert (= (and d!2279502 c!1364500) b!7345422))

(assert (= (and d!2279502 (not c!1364500)) b!7345426))

(assert (= (and b!7345426 c!1364503) b!7345420))

(assert (= (and b!7345426 (not c!1364503)) b!7345423))

(assert (= (and b!7345423 res!2966907) b!7345424))

(assert (= (and b!7345423 c!1364502) b!7345418))

(assert (= (and b!7345423 (not c!1364502)) b!7345421))

(assert (= (and b!7345421 c!1364501) b!7345419))

(assert (= (and b!7345421 (not c!1364501)) b!7345425))

(assert (= (and b!7345425 c!1364499) b!7345417))

(assert (= (and b!7345425 (not c!1364499)) b!7345416))

(assert (= (or b!7345419 b!7345417) bm!671076))

(assert (= (or b!7345419 b!7345417) bm!671074))

(assert (= (or b!7345418 bm!671074) bm!671075))

(assert (= (or b!7345418 bm!671076) bm!671071))

(assert (= (or b!7345420 b!7345418) bm!671073))

(assert (= (or b!7345420 bm!671075) bm!671072))

(declare-fun m!8007926 () Bool)

(assert (=> b!7345424 m!8007926))

(declare-fun m!8007928 () Bool)

(assert (=> bm!671072 m!8007928))

(declare-fun m!8007930 () Bool)

(assert (=> b!7345422 m!8007930))

(declare-fun m!8007932 () Bool)

(assert (=> bm!671073 m!8007932))

(declare-fun m!8007934 () Bool)

(assert (=> bm!671071 m!8007934))

(assert (=> b!7345210 d!2279502))

(declare-fun d!2279508 () Bool)

(declare-fun c!1364505 () Bool)

(assert (=> d!2279508 (= c!1364505 (and ((_ is ElementMatch!19139) (regOne!38790 r1!2370)) (= (c!1364429 (regOne!38790 r1!2370)) c!10362)))))

(declare-fun e!4398327 () (InoxSet Context!16158))

(assert (=> d!2279508 (= (derivationStepZipperDown!2965 (regOne!38790 r1!2370) lt!2610981 c!10362) e!4398327)))

(declare-fun b!7345442 () Bool)

(declare-fun e!4398332 () (InoxSet Context!16158))

(assert (=> b!7345442 (= e!4398332 ((as const (Array Context!16158 Bool)) false))))

(declare-fun b!7345444 () Bool)

(declare-fun call!671085 () (InoxSet Context!16158))

(assert (=> b!7345444 (= e!4398332 call!671085)))

(declare-fun b!7345446 () Bool)

(declare-fun e!4398330 () (InoxSet Context!16158))

(declare-fun call!671083 () (InoxSet Context!16158))

(declare-fun call!671082 () (InoxSet Context!16158))

(assert (=> b!7345446 (= e!4398330 ((_ map or) call!671083 call!671082))))

(declare-fun c!1364506 () Bool)

(declare-fun call!671087 () List!71635)

(declare-fun c!1364507 () Bool)

(declare-fun bm!671077 () Bool)

(assert (=> bm!671077 (= call!671087 ($colon$colon!3137 (exprs!8579 lt!2610981) (ite (or c!1364507 c!1364506) (regTwo!38790 (regOne!38790 r1!2370)) (regOne!38790 r1!2370))))))

(declare-fun c!1364508 () Bool)

(declare-fun bm!671078 () Bool)

(declare-fun call!671086 () List!71635)

(declare-fun call!671084 () (InoxSet Context!16158))

(assert (=> bm!671078 (= call!671084 (derivationStepZipperDown!2965 (ite c!1364508 (regOne!38791 (regOne!38790 r1!2370)) (ite c!1364507 (regTwo!38790 (regOne!38790 r1!2370)) (ite c!1364506 (regOne!38790 (regOne!38790 r1!2370)) (reg!19468 (regOne!38790 r1!2370))))) (ite (or c!1364508 c!1364507) lt!2610981 (Context!16159 call!671086)) c!10362))))

(declare-fun b!7345448 () Bool)

(declare-fun e!4398329 () (InoxSet Context!16158))

(assert (=> b!7345448 (= e!4398329 call!671085)))

(declare-fun b!7345449 () Bool)

(declare-fun e!4398326 () (InoxSet Context!16158))

(assert (=> b!7345449 (= e!4398326 ((_ map or) call!671084 call!671083))))

(declare-fun bm!671079 () Bool)

(assert (=> bm!671079 (= call!671083 (derivationStepZipperDown!2965 (ite c!1364508 (regTwo!38791 (regOne!38790 r1!2370)) (regOne!38790 (regOne!38790 r1!2370))) (ite c!1364508 lt!2610981 (Context!16159 call!671087)) c!10362))))

(declare-fun b!7345450 () Bool)

(assert (=> b!7345450 (= e!4398330 e!4398329)))

(assert (=> b!7345450 (= c!1364506 ((_ is Concat!27984) (regOne!38790 r1!2370)))))

(declare-fun b!7345451 () Bool)

(assert (=> b!7345451 (= e!4398327 (store ((as const (Array Context!16158 Bool)) false) lt!2610981 true))))

(declare-fun bm!671080 () Bool)

(assert (=> bm!671080 (= call!671085 call!671082)))

(declare-fun b!7345452 () Bool)

(declare-fun e!4398328 () Bool)

(assert (=> b!7345452 (= c!1364507 e!4398328)))

(declare-fun res!2966908 () Bool)

(assert (=> b!7345452 (=> (not res!2966908) (not e!4398328))))

(assert (=> b!7345452 (= res!2966908 ((_ is Concat!27984) (regOne!38790 r1!2370)))))

(assert (=> b!7345452 (= e!4398326 e!4398330)))

(declare-fun b!7345453 () Bool)

(assert (=> b!7345453 (= e!4398328 (nullable!8230 (regOne!38790 (regOne!38790 r1!2370))))))

(declare-fun b!7345454 () Bool)

(declare-fun c!1364504 () Bool)

(assert (=> b!7345454 (= c!1364504 ((_ is Star!19139) (regOne!38790 r1!2370)))))

(assert (=> b!7345454 (= e!4398329 e!4398332)))

(declare-fun bm!671081 () Bool)

(assert (=> bm!671081 (= call!671082 call!671084)))

(declare-fun b!7345455 () Bool)

(assert (=> b!7345455 (= e!4398327 e!4398326)))

(assert (=> b!7345455 (= c!1364508 ((_ is Union!19139) (regOne!38790 r1!2370)))))

(declare-fun bm!671082 () Bool)

(assert (=> bm!671082 (= call!671086 call!671087)))

(assert (= (and d!2279508 c!1364505) b!7345451))

(assert (= (and d!2279508 (not c!1364505)) b!7345455))

(assert (= (and b!7345455 c!1364508) b!7345449))

(assert (= (and b!7345455 (not c!1364508)) b!7345452))

(assert (= (and b!7345452 res!2966908) b!7345453))

(assert (= (and b!7345452 c!1364507) b!7345446))

(assert (= (and b!7345452 (not c!1364507)) b!7345450))

(assert (= (and b!7345450 c!1364506) b!7345448))

(assert (= (and b!7345450 (not c!1364506)) b!7345454))

(assert (= (and b!7345454 c!1364504) b!7345444))

(assert (= (and b!7345454 (not c!1364504)) b!7345442))

(assert (= (or b!7345448 b!7345444) bm!671082))

(assert (= (or b!7345448 b!7345444) bm!671080))

(assert (= (or b!7345446 bm!671080) bm!671081))

(assert (= (or b!7345446 bm!671082) bm!671077))

(assert (= (or b!7345449 b!7345446) bm!671079))

(assert (= (or b!7345449 bm!671081) bm!671078))

(assert (=> b!7345453 m!8007796))

(declare-fun m!8007938 () Bool)

(assert (=> bm!671078 m!8007938))

(declare-fun m!8007940 () Bool)

(assert (=> b!7345451 m!8007940))

(declare-fun m!8007942 () Bool)

(assert (=> bm!671079 m!8007942))

(declare-fun m!8007944 () Bool)

(assert (=> bm!671077 m!8007944))

(assert (=> b!7345210 d!2279508))

(declare-fun d!2279512 () Bool)

(assert (=> d!2279512 (= ($colon$colon!3137 (exprs!8579 ct1!282) (regTwo!38790 r1!2370)) (Cons!71511 (regTwo!38790 r1!2370) (exprs!8579 ct1!282)))))

(assert (=> b!7345210 d!2279512))

(declare-fun b!7345493 () Bool)

(declare-fun e!4398361 () Bool)

(declare-fun call!671096 () Bool)

(assert (=> b!7345493 (= e!4398361 call!671096)))

(declare-fun bm!671089 () Bool)

(declare-fun call!671095 () Bool)

(declare-fun c!1364513 () Bool)

(assert (=> bm!671089 (= call!671095 (validRegex!9735 (ite c!1364513 (regOne!38791 r1!2370) (regTwo!38790 r1!2370))))))

(declare-fun b!7345494 () Bool)

(declare-fun e!4398357 () Bool)

(assert (=> b!7345494 (= e!4398357 call!671095)))

(declare-fun b!7345495 () Bool)

(declare-fun e!4398358 () Bool)

(declare-fun call!671094 () Bool)

(assert (=> b!7345495 (= e!4398358 call!671094)))

(declare-fun bm!671090 () Bool)

(assert (=> bm!671090 (= call!671096 call!671094)))

(declare-fun b!7345496 () Bool)

(declare-fun e!4398356 () Bool)

(declare-fun e!4398360 () Bool)

(assert (=> b!7345496 (= e!4398356 e!4398360)))

(declare-fun c!1364514 () Bool)

(assert (=> b!7345496 (= c!1364514 ((_ is Star!19139) r1!2370))))

(declare-fun d!2279514 () Bool)

(declare-fun res!2966919 () Bool)

(assert (=> d!2279514 (=> res!2966919 e!4398356)))

(assert (=> d!2279514 (= res!2966919 ((_ is ElementMatch!19139) r1!2370))))

(assert (=> d!2279514 (= (validRegex!9735 r1!2370) e!4398356)))

(declare-fun b!7345497 () Bool)

(declare-fun res!2966921 () Bool)

(assert (=> b!7345497 (=> (not res!2966921) (not e!4398361))))

(assert (=> b!7345497 (= res!2966921 call!671095)))

(declare-fun e!4398359 () Bool)

(assert (=> b!7345497 (= e!4398359 e!4398361)))

(declare-fun b!7345498 () Bool)

(declare-fun res!2966920 () Bool)

(declare-fun e!4398355 () Bool)

(assert (=> b!7345498 (=> res!2966920 e!4398355)))

(assert (=> b!7345498 (= res!2966920 (not ((_ is Concat!27984) r1!2370)))))

(assert (=> b!7345498 (= e!4398359 e!4398355)))

(declare-fun b!7345499 () Bool)

(assert (=> b!7345499 (= e!4398360 e!4398359)))

(assert (=> b!7345499 (= c!1364513 ((_ is Union!19139) r1!2370))))

(declare-fun bm!671091 () Bool)

(assert (=> bm!671091 (= call!671094 (validRegex!9735 (ite c!1364514 (reg!19468 r1!2370) (ite c!1364513 (regTwo!38791 r1!2370) (regOne!38790 r1!2370)))))))

(declare-fun b!7345500 () Bool)

(assert (=> b!7345500 (= e!4398355 e!4398357)))

(declare-fun res!2966922 () Bool)

(assert (=> b!7345500 (=> (not res!2966922) (not e!4398357))))

(assert (=> b!7345500 (= res!2966922 call!671096)))

(declare-fun b!7345501 () Bool)

(assert (=> b!7345501 (= e!4398360 e!4398358)))

(declare-fun res!2966923 () Bool)

(assert (=> b!7345501 (= res!2966923 (not (nullable!8230 (reg!19468 r1!2370))))))

(assert (=> b!7345501 (=> (not res!2966923) (not e!4398358))))

(assert (= (and d!2279514 (not res!2966919)) b!7345496))

(assert (= (and b!7345496 c!1364514) b!7345501))

(assert (= (and b!7345496 (not c!1364514)) b!7345499))

(assert (= (and b!7345501 res!2966923) b!7345495))

(assert (= (and b!7345499 c!1364513) b!7345497))

(assert (= (and b!7345499 (not c!1364513)) b!7345498))

(assert (= (and b!7345497 res!2966921) b!7345493))

(assert (= (and b!7345498 (not res!2966920)) b!7345500))

(assert (= (and b!7345500 res!2966922) b!7345494))

(assert (= (or b!7345497 b!7345494) bm!671089))

(assert (= (or b!7345493 b!7345500) bm!671090))

(assert (= (or b!7345495 bm!671090) bm!671091))

(declare-fun m!8007946 () Bool)

(assert (=> bm!671089 m!8007946))

(declare-fun m!8007948 () Bool)

(assert (=> bm!671091 m!8007948))

(declare-fun m!8007950 () Bool)

(assert (=> b!7345501 m!8007950))

(assert (=> start!717332 d!2279514))

(declare-fun bs!1918805 () Bool)

(declare-fun d!2279516 () Bool)

(assert (= bs!1918805 (and d!2279516 b!7345221)))

(declare-fun lambda!456047 () Int)

(assert (=> bs!1918805 (= lambda!456047 lambda!456029)))

(declare-fun bs!1918806 () Bool)

(assert (= bs!1918806 (and d!2279516 d!2279470)))

(assert (=> bs!1918806 (= lambda!456047 lambda!456039)))

(assert (=> d!2279516 (= (inv!91187 cWitness!61) (forall!17965 (exprs!8579 cWitness!61) lambda!456047))))

(declare-fun bs!1918807 () Bool)

(assert (= bs!1918807 d!2279516))

(declare-fun m!8007952 () Bool)

(assert (=> bs!1918807 m!8007952))

(assert (=> start!717332 d!2279516))

(declare-fun bs!1918808 () Bool)

(declare-fun d!2279518 () Bool)

(assert (= bs!1918808 (and d!2279518 b!7345221)))

(declare-fun lambda!456048 () Int)

(assert (=> bs!1918808 (= lambda!456048 lambda!456029)))

(declare-fun bs!1918809 () Bool)

(assert (= bs!1918809 (and d!2279518 d!2279470)))

(assert (=> bs!1918809 (= lambda!456048 lambda!456039)))

(declare-fun bs!1918810 () Bool)

(assert (= bs!1918810 (and d!2279518 d!2279516)))

(assert (=> bs!1918810 (= lambda!456048 lambda!456047)))

(assert (=> d!2279518 (= (inv!91187 ct1!282) (forall!17965 (exprs!8579 ct1!282) lambda!456048))))

(declare-fun bs!1918811 () Bool)

(assert (= bs!1918811 d!2279518))

(declare-fun m!8007954 () Bool)

(assert (=> bs!1918811 m!8007954))

(assert (=> start!717332 d!2279518))

(declare-fun bs!1918812 () Bool)

(declare-fun d!2279520 () Bool)

(assert (= bs!1918812 (and d!2279520 b!7345221)))

(declare-fun lambda!456049 () Int)

(assert (=> bs!1918812 (= lambda!456049 lambda!456029)))

(declare-fun bs!1918813 () Bool)

(assert (= bs!1918813 (and d!2279520 d!2279470)))

(assert (=> bs!1918813 (= lambda!456049 lambda!456039)))

(declare-fun bs!1918814 () Bool)

(assert (= bs!1918814 (and d!2279520 d!2279516)))

(assert (=> bs!1918814 (= lambda!456049 lambda!456047)))

(declare-fun bs!1918815 () Bool)

(assert (= bs!1918815 (and d!2279520 d!2279518)))

(assert (=> bs!1918815 (= lambda!456049 lambda!456048)))

(assert (=> d!2279520 (= (inv!91187 ct2!378) (forall!17965 (exprs!8579 ct2!378) lambda!456049))))

(declare-fun bs!1918816 () Bool)

(assert (= bs!1918816 d!2279520))

(declare-fun m!8007956 () Bool)

(assert (=> bs!1918816 m!8007956))

(assert (=> start!717332 d!2279520))

(declare-fun d!2279522 () Bool)

(declare-fun c!1364516 () Bool)

(assert (=> d!2279522 (= c!1364516 (and ((_ is ElementMatch!19139) r1!2370) (= (c!1364429 r1!2370) c!10362)))))

(declare-fun e!4398363 () (InoxSet Context!16158))

(assert (=> d!2279522 (= (derivationStepZipperDown!2965 r1!2370 (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378))) c!10362) e!4398363)))

(declare-fun b!7345502 () Bool)

(declare-fun e!4398367 () (InoxSet Context!16158))

(assert (=> b!7345502 (= e!4398367 ((as const (Array Context!16158 Bool)) false))))

(declare-fun b!7345503 () Bool)

(declare-fun call!671100 () (InoxSet Context!16158))

(assert (=> b!7345503 (= e!4398367 call!671100)))

(declare-fun b!7345504 () Bool)

(declare-fun e!4398366 () (InoxSet Context!16158))

(declare-fun call!671098 () (InoxSet Context!16158))

(declare-fun call!671097 () (InoxSet Context!16158))

(assert (=> b!7345504 (= e!4398366 ((_ map or) call!671098 call!671097))))

(declare-fun c!1364518 () Bool)

(declare-fun c!1364517 () Bool)

(declare-fun call!671102 () List!71635)

(declare-fun bm!671092 () Bool)

(assert (=> bm!671092 (= call!671102 ($colon$colon!3137 (exprs!8579 (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378)))) (ite (or c!1364518 c!1364517) (regTwo!38790 r1!2370) r1!2370)))))

(declare-fun call!671099 () (InoxSet Context!16158))

(declare-fun c!1364519 () Bool)

(declare-fun call!671101 () List!71635)

(declare-fun bm!671093 () Bool)

(assert (=> bm!671093 (= call!671099 (derivationStepZipperDown!2965 (ite c!1364519 (regOne!38791 r1!2370) (ite c!1364518 (regTwo!38790 r1!2370) (ite c!1364517 (regOne!38790 r1!2370) (reg!19468 r1!2370)))) (ite (or c!1364519 c!1364518) (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378))) (Context!16159 call!671101)) c!10362))))

(declare-fun b!7345505 () Bool)

(declare-fun e!4398365 () (InoxSet Context!16158))

(assert (=> b!7345505 (= e!4398365 call!671100)))

(declare-fun b!7345506 () Bool)

(declare-fun e!4398362 () (InoxSet Context!16158))

(assert (=> b!7345506 (= e!4398362 ((_ map or) call!671099 call!671098))))

(declare-fun bm!671094 () Bool)

(assert (=> bm!671094 (= call!671098 (derivationStepZipperDown!2965 (ite c!1364519 (regTwo!38791 r1!2370) (regOne!38790 r1!2370)) (ite c!1364519 (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378))) (Context!16159 call!671102)) c!10362))))

(declare-fun b!7345507 () Bool)

(assert (=> b!7345507 (= e!4398366 e!4398365)))

(assert (=> b!7345507 (= c!1364517 ((_ is Concat!27984) r1!2370))))

(declare-fun b!7345508 () Bool)

(assert (=> b!7345508 (= e!4398363 (store ((as const (Array Context!16158 Bool)) false) (Context!16159 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378))) true))))

(declare-fun bm!671095 () Bool)

(assert (=> bm!671095 (= call!671100 call!671097)))

(declare-fun b!7345509 () Bool)

(declare-fun e!4398364 () Bool)

(assert (=> b!7345509 (= c!1364518 e!4398364)))

(declare-fun res!2966924 () Bool)

(assert (=> b!7345509 (=> (not res!2966924) (not e!4398364))))

(assert (=> b!7345509 (= res!2966924 ((_ is Concat!27984) r1!2370))))

(assert (=> b!7345509 (= e!4398362 e!4398366)))

(declare-fun b!7345510 () Bool)

(assert (=> b!7345510 (= e!4398364 (nullable!8230 (regOne!38790 r1!2370)))))

(declare-fun b!7345511 () Bool)

(declare-fun c!1364515 () Bool)

(assert (=> b!7345511 (= c!1364515 ((_ is Star!19139) r1!2370))))

(assert (=> b!7345511 (= e!4398365 e!4398367)))

(declare-fun bm!671096 () Bool)

(assert (=> bm!671096 (= call!671097 call!671099)))

(declare-fun b!7345512 () Bool)

(assert (=> b!7345512 (= e!4398363 e!4398362)))

(assert (=> b!7345512 (= c!1364519 ((_ is Union!19139) r1!2370))))

(declare-fun bm!671097 () Bool)

(assert (=> bm!671097 (= call!671101 call!671102)))

(assert (= (and d!2279522 c!1364516) b!7345508))

(assert (= (and d!2279522 (not c!1364516)) b!7345512))

(assert (= (and b!7345512 c!1364519) b!7345506))

(assert (= (and b!7345512 (not c!1364519)) b!7345509))

(assert (= (and b!7345509 res!2966924) b!7345510))

(assert (= (and b!7345509 c!1364518) b!7345504))

(assert (= (and b!7345509 (not c!1364518)) b!7345507))

(assert (= (and b!7345507 c!1364517) b!7345505))

(assert (= (and b!7345507 (not c!1364517)) b!7345511))

(assert (= (and b!7345511 c!1364515) b!7345503))

(assert (= (and b!7345511 (not c!1364515)) b!7345502))

(assert (= (or b!7345505 b!7345503) bm!671097))

(assert (= (or b!7345505 b!7345503) bm!671095))

(assert (= (or b!7345504 bm!671095) bm!671096))

(assert (= (or b!7345504 bm!671097) bm!671092))

(assert (= (or b!7345506 b!7345504) bm!671094))

(assert (= (or b!7345506 bm!671096) bm!671093))

(assert (=> b!7345510 m!8007732))

(declare-fun m!8007958 () Bool)

(assert (=> bm!671093 m!8007958))

(declare-fun m!8007960 () Bool)

(assert (=> b!7345508 m!8007960))

(declare-fun m!8007962 () Bool)

(assert (=> bm!671094 m!8007962))

(declare-fun m!8007964 () Bool)

(assert (=> bm!671092 m!8007964))

(assert (=> b!7345221 d!2279522))

(declare-fun d!2279524 () Bool)

(declare-fun e!4398368 () Bool)

(assert (=> d!2279524 e!4398368))

(declare-fun res!2966926 () Bool)

(assert (=> d!2279524 (=> (not res!2966926) (not e!4398368))))

(declare-fun lt!2611018 () List!71635)

(assert (=> d!2279524 (= res!2966926 (= (content!15049 lt!2611018) ((_ map or) (content!15049 (exprs!8579 ct1!282)) (content!15049 (exprs!8579 ct2!378)))))))

(declare-fun e!4398369 () List!71635)

(assert (=> d!2279524 (= lt!2611018 e!4398369)))

(declare-fun c!1364520 () Bool)

(assert (=> d!2279524 (= c!1364520 ((_ is Nil!71511) (exprs!8579 ct1!282)))))

(assert (=> d!2279524 (= (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378)) lt!2611018)))

(declare-fun b!7345516 () Bool)

(assert (=> b!7345516 (= e!4398368 (or (not (= (exprs!8579 ct2!378) Nil!71511)) (= lt!2611018 (exprs!8579 ct1!282))))))

(declare-fun b!7345514 () Bool)

(assert (=> b!7345514 (= e!4398369 (Cons!71511 (h!77959 (exprs!8579 ct1!282)) (++!16957 (t!386030 (exprs!8579 ct1!282)) (exprs!8579 ct2!378))))))

(declare-fun b!7345513 () Bool)

(assert (=> b!7345513 (= e!4398369 (exprs!8579 ct2!378))))

(declare-fun b!7345515 () Bool)

(declare-fun res!2966925 () Bool)

(assert (=> b!7345515 (=> (not res!2966925) (not e!4398368))))

(assert (=> b!7345515 (= res!2966925 (= (size!42028 lt!2611018) (+ (size!42028 (exprs!8579 ct1!282)) (size!42028 (exprs!8579 ct2!378)))))))

(assert (= (and d!2279524 c!1364520) b!7345513))

(assert (= (and d!2279524 (not c!1364520)) b!7345514))

(assert (= (and d!2279524 res!2966926) b!7345515))

(assert (= (and b!7345515 res!2966925) b!7345516))

(declare-fun m!8007966 () Bool)

(assert (=> d!2279524 m!8007966))

(declare-fun m!8007968 () Bool)

(assert (=> d!2279524 m!8007968))

(assert (=> d!2279524 m!8007738))

(declare-fun m!8007970 () Bool)

(assert (=> b!7345514 m!8007970))

(declare-fun m!8007972 () Bool)

(assert (=> b!7345515 m!8007972))

(declare-fun m!8007974 () Bool)

(assert (=> b!7345515 m!8007974))

(assert (=> b!7345515 m!8007746))

(assert (=> b!7345221 d!2279524))

(declare-fun d!2279526 () Bool)

(assert (=> d!2279526 (forall!17965 (++!16957 (exprs!8579 ct1!282) (exprs!8579 ct2!378)) lambda!456029)))

(declare-fun lt!2611019 () Unit!165231)

(assert (=> d!2279526 (= lt!2611019 (choose!57134 (exprs!8579 ct1!282) (exprs!8579 ct2!378) lambda!456029))))

(assert (=> d!2279526 (forall!17965 (exprs!8579 ct1!282) lambda!456029)))

(assert (=> d!2279526 (= (lemmaConcatPreservesForall!1814 (exprs!8579 ct1!282) (exprs!8579 ct2!378) lambda!456029) lt!2611019)))

(declare-fun bs!1918817 () Bool)

(assert (= bs!1918817 d!2279526))

(assert (=> bs!1918817 m!8007694))

(assert (=> bs!1918817 m!8007694))

(declare-fun m!8007976 () Bool)

(assert (=> bs!1918817 m!8007976))

(declare-fun m!8007978 () Bool)

(assert (=> bs!1918817 m!8007978))

(declare-fun m!8007980 () Bool)

(assert (=> bs!1918817 m!8007980))

(assert (=> b!7345221 d!2279526))

(declare-fun b!7345517 () Bool)

(declare-fun e!4398376 () Bool)

(declare-fun call!671105 () Bool)

(assert (=> b!7345517 (= e!4398376 call!671105)))

(declare-fun bm!671098 () Bool)

(declare-fun call!671104 () Bool)

(declare-fun c!1364521 () Bool)

(assert (=> bm!671098 (= call!671104 (validRegex!9735 (ite c!1364521 (regOne!38791 (regTwo!38790 r1!2370)) (regTwo!38790 (regTwo!38790 r1!2370)))))))

(declare-fun b!7345518 () Bool)

(declare-fun e!4398372 () Bool)

(assert (=> b!7345518 (= e!4398372 call!671104)))

(declare-fun b!7345519 () Bool)

(declare-fun e!4398373 () Bool)

(declare-fun call!671103 () Bool)

(assert (=> b!7345519 (= e!4398373 call!671103)))

(declare-fun bm!671099 () Bool)

(assert (=> bm!671099 (= call!671105 call!671103)))

(declare-fun b!7345520 () Bool)

(declare-fun e!4398371 () Bool)

(declare-fun e!4398375 () Bool)

(assert (=> b!7345520 (= e!4398371 e!4398375)))

(declare-fun c!1364522 () Bool)

(assert (=> b!7345520 (= c!1364522 ((_ is Star!19139) (regTwo!38790 r1!2370)))))

(declare-fun d!2279528 () Bool)

(declare-fun res!2966927 () Bool)

(assert (=> d!2279528 (=> res!2966927 e!4398371)))

(assert (=> d!2279528 (= res!2966927 ((_ is ElementMatch!19139) (regTwo!38790 r1!2370)))))

(assert (=> d!2279528 (= (validRegex!9735 (regTwo!38790 r1!2370)) e!4398371)))

(declare-fun b!7345521 () Bool)

(declare-fun res!2966929 () Bool)

(assert (=> b!7345521 (=> (not res!2966929) (not e!4398376))))

(assert (=> b!7345521 (= res!2966929 call!671104)))

(declare-fun e!4398374 () Bool)

(assert (=> b!7345521 (= e!4398374 e!4398376)))

(declare-fun b!7345522 () Bool)

(declare-fun res!2966928 () Bool)

(declare-fun e!4398370 () Bool)

(assert (=> b!7345522 (=> res!2966928 e!4398370)))

(assert (=> b!7345522 (= res!2966928 (not ((_ is Concat!27984) (regTwo!38790 r1!2370))))))

(assert (=> b!7345522 (= e!4398374 e!4398370)))

(declare-fun b!7345523 () Bool)

(assert (=> b!7345523 (= e!4398375 e!4398374)))

(assert (=> b!7345523 (= c!1364521 ((_ is Union!19139) (regTwo!38790 r1!2370)))))

(declare-fun bm!671100 () Bool)

(assert (=> bm!671100 (= call!671103 (validRegex!9735 (ite c!1364522 (reg!19468 (regTwo!38790 r1!2370)) (ite c!1364521 (regTwo!38791 (regTwo!38790 r1!2370)) (regOne!38790 (regTwo!38790 r1!2370))))))))

(declare-fun b!7345524 () Bool)

(assert (=> b!7345524 (= e!4398370 e!4398372)))

(declare-fun res!2966930 () Bool)

(assert (=> b!7345524 (=> (not res!2966930) (not e!4398372))))

(assert (=> b!7345524 (= res!2966930 call!671105)))

(declare-fun b!7345525 () Bool)

(assert (=> b!7345525 (= e!4398375 e!4398373)))

(declare-fun res!2966931 () Bool)

(assert (=> b!7345525 (= res!2966931 (not (nullable!8230 (reg!19468 (regTwo!38790 r1!2370)))))))

(assert (=> b!7345525 (=> (not res!2966931) (not e!4398373))))

(assert (= (and d!2279528 (not res!2966927)) b!7345520))

(assert (= (and b!7345520 c!1364522) b!7345525))

(assert (= (and b!7345520 (not c!1364522)) b!7345523))

(assert (= (and b!7345525 res!2966931) b!7345519))

(assert (= (and b!7345523 c!1364521) b!7345521))

(assert (= (and b!7345523 (not c!1364521)) b!7345522))

(assert (= (and b!7345521 res!2966929) b!7345517))

(assert (= (and b!7345522 (not res!2966928)) b!7345524))

(assert (= (and b!7345524 res!2966930) b!7345518))

(assert (= (or b!7345521 b!7345518) bm!671098))

(assert (= (or b!7345517 b!7345524) bm!671099))

(assert (= (or b!7345519 bm!671099) bm!671100))

(declare-fun m!8007982 () Bool)

(assert (=> bm!671098 m!8007982))

(declare-fun m!8007984 () Bool)

(assert (=> bm!671100 m!8007984))

(declare-fun m!8007986 () Bool)

(assert (=> b!7345525 m!8007986))

(assert (=> b!7345211 d!2279528))

(declare-fun d!2279530 () Bool)

(declare-fun nullableFct!3270 (Regex!19139) Bool)

(assert (=> d!2279530 (= (nullable!8230 (regOne!38790 r1!2370)) (nullableFct!3270 (regOne!38790 r1!2370)))))

(declare-fun bs!1918818 () Bool)

(assert (= bs!1918818 d!2279530))

(declare-fun m!8007988 () Bool)

(assert (=> bs!1918818 m!8007988))

(assert (=> b!7345213 d!2279530))

(declare-fun d!2279532 () Bool)

(declare-fun c!1364524 () Bool)

(assert (=> d!2279532 (= c!1364524 (and ((_ is ElementMatch!19139) r1!2370) (= (c!1364429 r1!2370) c!10362)))))

(declare-fun e!4398378 () (InoxSet Context!16158))

(assert (=> d!2279532 (= (derivationStepZipperDown!2965 r1!2370 ct1!282 c!10362) e!4398378)))

(declare-fun b!7345526 () Bool)

(declare-fun e!4398382 () (InoxSet Context!16158))

(assert (=> b!7345526 (= e!4398382 ((as const (Array Context!16158 Bool)) false))))

(declare-fun b!7345527 () Bool)

(declare-fun call!671109 () (InoxSet Context!16158))

(assert (=> b!7345527 (= e!4398382 call!671109)))

(declare-fun b!7345528 () Bool)

(declare-fun e!4398381 () (InoxSet Context!16158))

(declare-fun call!671107 () (InoxSet Context!16158))

(declare-fun call!671106 () (InoxSet Context!16158))

(assert (=> b!7345528 (= e!4398381 ((_ map or) call!671107 call!671106))))

(declare-fun bm!671101 () Bool)

(declare-fun call!671111 () List!71635)

(declare-fun c!1364525 () Bool)

(declare-fun c!1364526 () Bool)

(assert (=> bm!671101 (= call!671111 ($colon$colon!3137 (exprs!8579 ct1!282) (ite (or c!1364526 c!1364525) (regTwo!38790 r1!2370) r1!2370)))))

(declare-fun bm!671102 () Bool)

(declare-fun call!671110 () List!71635)

(declare-fun call!671108 () (InoxSet Context!16158))

(declare-fun c!1364527 () Bool)

(assert (=> bm!671102 (= call!671108 (derivationStepZipperDown!2965 (ite c!1364527 (regOne!38791 r1!2370) (ite c!1364526 (regTwo!38790 r1!2370) (ite c!1364525 (regOne!38790 r1!2370) (reg!19468 r1!2370)))) (ite (or c!1364527 c!1364526) ct1!282 (Context!16159 call!671110)) c!10362))))

(declare-fun b!7345529 () Bool)

(declare-fun e!4398380 () (InoxSet Context!16158))

(assert (=> b!7345529 (= e!4398380 call!671109)))

(declare-fun b!7345530 () Bool)

(declare-fun e!4398377 () (InoxSet Context!16158))

(assert (=> b!7345530 (= e!4398377 ((_ map or) call!671108 call!671107))))

(declare-fun bm!671103 () Bool)

(assert (=> bm!671103 (= call!671107 (derivationStepZipperDown!2965 (ite c!1364527 (regTwo!38791 r1!2370) (regOne!38790 r1!2370)) (ite c!1364527 ct1!282 (Context!16159 call!671111)) c!10362))))

(declare-fun b!7345531 () Bool)

(assert (=> b!7345531 (= e!4398381 e!4398380)))

(assert (=> b!7345531 (= c!1364525 ((_ is Concat!27984) r1!2370))))

(declare-fun b!7345532 () Bool)

(assert (=> b!7345532 (= e!4398378 (store ((as const (Array Context!16158 Bool)) false) ct1!282 true))))

(declare-fun bm!671104 () Bool)

(assert (=> bm!671104 (= call!671109 call!671106)))

(declare-fun b!7345533 () Bool)

(declare-fun e!4398379 () Bool)

(assert (=> b!7345533 (= c!1364526 e!4398379)))

(declare-fun res!2966932 () Bool)

(assert (=> b!7345533 (=> (not res!2966932) (not e!4398379))))

(assert (=> b!7345533 (= res!2966932 ((_ is Concat!27984) r1!2370))))

(assert (=> b!7345533 (= e!4398377 e!4398381)))

(declare-fun b!7345534 () Bool)

(assert (=> b!7345534 (= e!4398379 (nullable!8230 (regOne!38790 r1!2370)))))

(declare-fun b!7345535 () Bool)

(declare-fun c!1364523 () Bool)

(assert (=> b!7345535 (= c!1364523 ((_ is Star!19139) r1!2370))))

(assert (=> b!7345535 (= e!4398380 e!4398382)))

(declare-fun bm!671105 () Bool)

(assert (=> bm!671105 (= call!671106 call!671108)))

(declare-fun b!7345536 () Bool)

(assert (=> b!7345536 (= e!4398378 e!4398377)))

(assert (=> b!7345536 (= c!1364527 ((_ is Union!19139) r1!2370))))

(declare-fun bm!671106 () Bool)

(assert (=> bm!671106 (= call!671110 call!671111)))

(assert (= (and d!2279532 c!1364524) b!7345532))

(assert (= (and d!2279532 (not c!1364524)) b!7345536))

(assert (= (and b!7345536 c!1364527) b!7345530))

(assert (= (and b!7345536 (not c!1364527)) b!7345533))

(assert (= (and b!7345533 res!2966932) b!7345534))

(assert (= (and b!7345533 c!1364526) b!7345528))

(assert (= (and b!7345533 (not c!1364526)) b!7345531))

(assert (= (and b!7345531 c!1364525) b!7345529))

(assert (= (and b!7345531 (not c!1364525)) b!7345535))

(assert (= (and b!7345535 c!1364523) b!7345527))

(assert (= (and b!7345535 (not c!1364523)) b!7345526))

(assert (= (or b!7345529 b!7345527) bm!671106))

(assert (= (or b!7345529 b!7345527) bm!671104))

(assert (= (or b!7345528 bm!671104) bm!671105))

(assert (= (or b!7345528 bm!671106) bm!671101))

(assert (= (or b!7345530 b!7345528) bm!671103))

(assert (= (or b!7345530 bm!671105) bm!671102))

(assert (=> b!7345534 m!8007732))

(declare-fun m!8007990 () Bool)

(assert (=> bm!671102 m!8007990))

(assert (=> b!7345532 m!8007930))

(declare-fun m!8007992 () Bool)

(assert (=> bm!671103 m!8007992))

(declare-fun m!8007994 () Bool)

(assert (=> bm!671101 m!8007994))

(assert (=> b!7345219 d!2279532))

(declare-fun e!4398385 () Bool)

(assert (=> b!7345209 (= tp!2086043 e!4398385)))

(declare-fun b!7345547 () Bool)

(assert (=> b!7345547 (= e!4398385 tp_is_empty!48523)))

(declare-fun b!7345550 () Bool)

(declare-fun tp!2086100 () Bool)

(declare-fun tp!2086102 () Bool)

(assert (=> b!7345550 (= e!4398385 (and tp!2086100 tp!2086102))))

(declare-fun b!7345549 () Bool)

(declare-fun tp!2086101 () Bool)

(assert (=> b!7345549 (= e!4398385 tp!2086101)))

(declare-fun b!7345548 () Bool)

(declare-fun tp!2086103 () Bool)

(declare-fun tp!2086099 () Bool)

(assert (=> b!7345548 (= e!4398385 (and tp!2086103 tp!2086099))))

(assert (= (and b!7345209 ((_ is ElementMatch!19139) (regOne!38791 r1!2370))) b!7345547))

(assert (= (and b!7345209 ((_ is Concat!27984) (regOne!38791 r1!2370))) b!7345548))

(assert (= (and b!7345209 ((_ is Star!19139) (regOne!38791 r1!2370))) b!7345549))

(assert (= (and b!7345209 ((_ is Union!19139) (regOne!38791 r1!2370))) b!7345550))

(declare-fun e!4398386 () Bool)

(assert (=> b!7345209 (= tp!2086036 e!4398386)))

(declare-fun b!7345551 () Bool)

(assert (=> b!7345551 (= e!4398386 tp_is_empty!48523)))

(declare-fun b!7345554 () Bool)

(declare-fun tp!2086105 () Bool)

(declare-fun tp!2086107 () Bool)

(assert (=> b!7345554 (= e!4398386 (and tp!2086105 tp!2086107))))

(declare-fun b!7345553 () Bool)

(declare-fun tp!2086106 () Bool)

(assert (=> b!7345553 (= e!4398386 tp!2086106)))

(declare-fun b!7345552 () Bool)

(declare-fun tp!2086108 () Bool)

(declare-fun tp!2086104 () Bool)

(assert (=> b!7345552 (= e!4398386 (and tp!2086108 tp!2086104))))

(assert (= (and b!7345209 ((_ is ElementMatch!19139) (regTwo!38791 r1!2370))) b!7345551))

(assert (= (and b!7345209 ((_ is Concat!27984) (regTwo!38791 r1!2370))) b!7345552))

(assert (= (and b!7345209 ((_ is Star!19139) (regTwo!38791 r1!2370))) b!7345553))

(assert (= (and b!7345209 ((_ is Union!19139) (regTwo!38791 r1!2370))) b!7345554))

(declare-fun b!7345559 () Bool)

(declare-fun e!4398389 () Bool)

(declare-fun tp!2086113 () Bool)

(declare-fun tp!2086114 () Bool)

(assert (=> b!7345559 (= e!4398389 (and tp!2086113 tp!2086114))))

(assert (=> b!7345216 (= tp!2086038 e!4398389)))

(assert (= (and b!7345216 ((_ is Cons!71511) (exprs!8579 ct1!282))) b!7345559))

(declare-fun b!7345560 () Bool)

(declare-fun e!4398390 () Bool)

(declare-fun tp!2086115 () Bool)

(declare-fun tp!2086116 () Bool)

(assert (=> b!7345560 (= e!4398390 (and tp!2086115 tp!2086116))))

(assert (=> b!7345217 (= tp!2086042 e!4398390)))

(assert (= (and b!7345217 ((_ is Cons!71511) (exprs!8579 ct2!378))) b!7345560))

(declare-fun e!4398391 () Bool)

(assert (=> b!7345212 (= tp!2086039 e!4398391)))

(declare-fun b!7345561 () Bool)

(assert (=> b!7345561 (= e!4398391 tp_is_empty!48523)))

(declare-fun b!7345564 () Bool)

(declare-fun tp!2086118 () Bool)

(declare-fun tp!2086120 () Bool)

(assert (=> b!7345564 (= e!4398391 (and tp!2086118 tp!2086120))))

(declare-fun b!7345563 () Bool)

(declare-fun tp!2086119 () Bool)

(assert (=> b!7345563 (= e!4398391 tp!2086119)))

(declare-fun b!7345562 () Bool)

(declare-fun tp!2086121 () Bool)

(declare-fun tp!2086117 () Bool)

(assert (=> b!7345562 (= e!4398391 (and tp!2086121 tp!2086117))))

(assert (= (and b!7345212 ((_ is ElementMatch!19139) (regOne!38790 r1!2370))) b!7345561))

(assert (= (and b!7345212 ((_ is Concat!27984) (regOne!38790 r1!2370))) b!7345562))

(assert (= (and b!7345212 ((_ is Star!19139) (regOne!38790 r1!2370))) b!7345563))

(assert (= (and b!7345212 ((_ is Union!19139) (regOne!38790 r1!2370))) b!7345564))

(declare-fun e!4398392 () Bool)

(assert (=> b!7345212 (= tp!2086040 e!4398392)))

(declare-fun b!7345565 () Bool)

(assert (=> b!7345565 (= e!4398392 tp_is_empty!48523)))

(declare-fun b!7345568 () Bool)

(declare-fun tp!2086123 () Bool)

(declare-fun tp!2086125 () Bool)

(assert (=> b!7345568 (= e!4398392 (and tp!2086123 tp!2086125))))

(declare-fun b!7345567 () Bool)

(declare-fun tp!2086124 () Bool)

(assert (=> b!7345567 (= e!4398392 tp!2086124)))

(declare-fun b!7345566 () Bool)

(declare-fun tp!2086126 () Bool)

(declare-fun tp!2086122 () Bool)

(assert (=> b!7345566 (= e!4398392 (and tp!2086126 tp!2086122))))

(assert (= (and b!7345212 ((_ is ElementMatch!19139) (regTwo!38790 r1!2370))) b!7345565))

(assert (= (and b!7345212 ((_ is Concat!27984) (regTwo!38790 r1!2370))) b!7345566))

(assert (= (and b!7345212 ((_ is Star!19139) (regTwo!38790 r1!2370))) b!7345567))

(assert (= (and b!7345212 ((_ is Union!19139) (regTwo!38790 r1!2370))) b!7345568))

(declare-fun b!7345569 () Bool)

(declare-fun e!4398393 () Bool)

(declare-fun tp!2086127 () Bool)

(declare-fun tp!2086128 () Bool)

(assert (=> b!7345569 (= e!4398393 (and tp!2086127 tp!2086128))))

(assert (=> b!7345218 (= tp!2086041 e!4398393)))

(assert (= (and b!7345218 ((_ is Cons!71511) (exprs!8579 cWitness!61))) b!7345569))

(declare-fun e!4398394 () Bool)

(assert (=> b!7345214 (= tp!2086037 e!4398394)))

(declare-fun b!7345570 () Bool)

(assert (=> b!7345570 (= e!4398394 tp_is_empty!48523)))

(declare-fun b!7345573 () Bool)

(declare-fun tp!2086130 () Bool)

(declare-fun tp!2086132 () Bool)

(assert (=> b!7345573 (= e!4398394 (and tp!2086130 tp!2086132))))

(declare-fun b!7345572 () Bool)

(declare-fun tp!2086131 () Bool)

(assert (=> b!7345572 (= e!4398394 tp!2086131)))

(declare-fun b!7345571 () Bool)

(declare-fun tp!2086133 () Bool)

(declare-fun tp!2086129 () Bool)

(assert (=> b!7345571 (= e!4398394 (and tp!2086133 tp!2086129))))

(assert (= (and b!7345214 ((_ is ElementMatch!19139) (reg!19468 r1!2370))) b!7345570))

(assert (= (and b!7345214 ((_ is Concat!27984) (reg!19468 r1!2370))) b!7345571))

(assert (= (and b!7345214 ((_ is Star!19139) (reg!19468 r1!2370))) b!7345572))

(assert (= (and b!7345214 ((_ is Union!19139) (reg!19468 r1!2370))) b!7345573))

(declare-fun b_lambda!283985 () Bool)

(assert (= b_lambda!283981 (or b!7345221 b_lambda!283985)))

(declare-fun bs!1918819 () Bool)

(declare-fun d!2279534 () Bool)

(assert (= bs!1918819 (and d!2279534 b!7345221)))

(assert (=> bs!1918819 (= (dynLambda!29470 lambda!456029 (h!77959 (exprs!8579 cWitness!61))) (validRegex!9735 (h!77959 (exprs!8579 cWitness!61))))))

(declare-fun m!8007996 () Bool)

(assert (=> bs!1918819 m!8007996))

(assert (=> b!7345399 d!2279534))

(check-sat (not d!2279524) (not bm!671102) (not b!7345534) (not bm!671094) (not b!7345453) (not bm!671073) (not b!7345563) (not d!2279470) (not d!2279500) (not b!7345569) (not b!7345553) (not b!7345424) (not b!7345567) (not bm!671013) (not b!7345231) (not b!7345514) (not b!7345564) (not bm!671103) (not b!7345400) (not b!7345571) (not bm!671089) (not b!7345568) (not bm!671100) (not b!7345566) (not b!7345525) (not b!7345562) (not d!2279526) (not d!2279518) (not b!7345550) (not bm!671077) (not b!7345549) (not bm!671093) (not b!7345235) (not bm!671079) (not d!2279452) (not b!7345286) (not d!2279454) (not d!2279516) (not b!7345554) (not bm!671012) (not b!7345236) (not bm!671072) (not bm!671091) (not bm!671101) (not d!2279530) (not b!7345572) (not b!7345559) (not b_lambda!283985) (not d!2279520) tp_is_empty!48523 (not bm!671092) (not d!2279468) (not b!7345548) (not b!7345552) (not b!7345232) (not bs!1918819) (not b!7345510) (not bm!671098) (not b!7345515) (not bm!671011) (not b!7345501) (not bm!671078) (not b!7345573) (not bm!671071) (not b!7345560))
(check-sat)
