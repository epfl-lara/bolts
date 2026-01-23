; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719410 () Bool)

(assert start!719410)

(declare-fun res!2974327 () Bool)

(declare-fun e!4412970 () Bool)

(assert (=> start!719410 (=> (not res!2974327) (not e!4412970))))

(declare-datatypes ((C!38834 0))(
  ( (C!38835 (val!29777 Int)) )
))
(declare-datatypes ((Regex!19280 0))(
  ( (ElementMatch!19280 (c!1369994 C!38834)) (Concat!28125 (regOne!39072 Regex!19280) (regTwo!39072 Regex!19280)) (EmptyExpr!19280) (Star!19280 (reg!19609 Regex!19280)) (EmptyLang!19280) (Union!19280 (regOne!39073 Regex!19280) (regTwo!39073 Regex!19280)) )
))
(declare-fun r1!2370 () Regex!19280)

(declare-fun validRegex!9876 (Regex!19280) Bool)

(assert (=> start!719410 (= res!2974327 (validRegex!9876 r1!2370))))

(assert (=> start!719410 e!4412970))

(declare-fun tp_is_empty!48805 () Bool)

(assert (=> start!719410 tp_is_empty!48805))

(declare-datatypes ((List!71776 0))(
  ( (Nil!71652) (Cons!71652 (h!78100 Regex!19280) (t!386239 List!71776)) )
))
(declare-datatypes ((Context!16440 0))(
  ( (Context!16441 (exprs!8720 List!71776)) )
))
(declare-fun cWitness!61 () Context!16440)

(declare-fun e!4412966 () Bool)

(declare-fun inv!91541 (Context!16440) Bool)

(assert (=> start!719410 (and (inv!91541 cWitness!61) e!4412966)))

(declare-fun ct1!282 () Context!16440)

(declare-fun e!4412972 () Bool)

(assert (=> start!719410 (and (inv!91541 ct1!282) e!4412972)))

(declare-fun e!4412968 () Bool)

(assert (=> start!719410 e!4412968))

(declare-fun ct2!378 () Context!16440)

(declare-fun e!4412965 () Bool)

(assert (=> start!719410 (and (inv!91541 ct2!378) e!4412965)))

(declare-fun b!7371416 () Bool)

(declare-fun tp!2095600 () Bool)

(assert (=> b!7371416 (= e!4412965 tp!2095600)))

(declare-fun b!7371417 () Bool)

(declare-fun res!2974332 () Bool)

(declare-fun e!4412971 () Bool)

(assert (=> b!7371417 (=> (not res!2974332) (not e!4412971))))

(declare-fun nullable!8356 (Regex!19280) Bool)

(assert (=> b!7371417 (= res!2974332 (nullable!8356 (regOne!39072 r1!2370)))))

(declare-fun b!7371418 () Bool)

(declare-fun tp!2095601 () Bool)

(declare-fun tp!2095598 () Bool)

(assert (=> b!7371418 (= e!4412968 (and tp!2095601 tp!2095598))))

(declare-fun b!7371419 () Bool)

(declare-fun tp!2095597 () Bool)

(declare-fun tp!2095603 () Bool)

(assert (=> b!7371419 (= e!4412968 (and tp!2095597 tp!2095603))))

(declare-fun b!7371420 () Bool)

(declare-fun tp!2095602 () Bool)

(assert (=> b!7371420 (= e!4412968 tp!2095602)))

(declare-fun b!7371421 () Bool)

(declare-fun tp!2095596 () Bool)

(assert (=> b!7371421 (= e!4412966 tp!2095596)))

(declare-fun b!7371422 () Bool)

(declare-fun e!4412967 () Bool)

(assert (=> b!7371422 (= e!4412971 e!4412967)))

(declare-fun res!2974330 () Bool)

(assert (=> b!7371422 (=> (not res!2974330) (not e!4412967))))

(declare-fun lt!2615655 () (Set Context!16440))

(declare-fun lt!2615654 () (Set Context!16440))

(declare-fun lt!2615657 () (Set Context!16440))

(assert (=> b!7371422 (= res!2974330 (and (= lt!2615654 (set.union lt!2615655 lt!2615657)) (not (set.member cWitness!61 lt!2615655)) (set.member cWitness!61 lt!2615657)))))

(declare-fun c!10362 () C!38834)

(declare-fun derivationStepZipperDown!3106 (Regex!19280 Context!16440 C!38834) (Set Context!16440))

(assert (=> b!7371422 (= lt!2615657 (derivationStepZipperDown!3106 (regTwo!39072 r1!2370) ct1!282 c!10362))))

(declare-fun $colon$colon!3262 (List!71776 Regex!19280) List!71776)

(assert (=> b!7371422 (= lt!2615655 (derivationStepZipperDown!3106 (regOne!39072 r1!2370) (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370))) c!10362))))

(declare-fun b!7371423 () Bool)

(declare-fun res!2974331 () Bool)

(assert (=> b!7371423 (=> (not res!2974331) (not e!4412971))))

(assert (=> b!7371423 (= res!2974331 (validRegex!9876 (regTwo!39072 r1!2370)))))

(declare-fun b!7371424 () Bool)

(declare-fun e!4412969 () Bool)

(assert (=> b!7371424 (= e!4412970 e!4412969)))

(declare-fun res!2974329 () Bool)

(assert (=> b!7371424 (=> (not res!2974329) (not e!4412969))))

(assert (=> b!7371424 (= res!2974329 (set.member cWitness!61 lt!2615654))))

(assert (=> b!7371424 (= lt!2615654 (derivationStepZipperDown!3106 r1!2370 ct1!282 c!10362))))

(declare-fun b!7371425 () Bool)

(declare-fun tp!2095599 () Bool)

(assert (=> b!7371425 (= e!4412972 tp!2095599)))

(declare-fun b!7371426 () Bool)

(assert (=> b!7371426 (= e!4412968 tp_is_empty!48805)))

(declare-fun b!7371427 () Bool)

(assert (=> b!7371427 (= e!4412969 e!4412971)))

(declare-fun res!2974328 () Bool)

(assert (=> b!7371427 (=> (not res!2974328) (not e!4412971))))

(assert (=> b!7371427 (= res!2974328 (and (or (not (is-ElementMatch!19280 r1!2370)) (not (= c!10362 (c!1369994 r1!2370)))) (not (is-Union!19280 r1!2370)) (is-Concat!28125 r1!2370)))))

(declare-fun lt!2615658 () (Set Context!16440))

(declare-fun ++!17096 (List!71776 List!71776) List!71776)

(assert (=> b!7371427 (= lt!2615658 (derivationStepZipperDown!3106 r1!2370 (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378))) c!10362))))

(declare-fun lambda!458042 () Int)

(declare-datatypes ((Unit!165509 0))(
  ( (Unit!165510) )
))
(declare-fun lt!2615656 () Unit!165509)

(declare-fun lemmaConcatPreservesForall!1953 (List!71776 List!71776 Int) Unit!165509)

(assert (=> b!7371427 (= lt!2615656 (lemmaConcatPreservesForall!1953 (exprs!8720 ct1!282) (exprs!8720 ct2!378) lambda!458042))))

(declare-fun b!7371428 () Bool)

(declare-fun regexDepth!440 (Regex!19280) Int)

(assert (=> b!7371428 (= e!4412967 (>= (regexDepth!440 (regTwo!39072 r1!2370)) (regexDepth!440 r1!2370)))))

(assert (= (and start!719410 res!2974327) b!7371424))

(assert (= (and b!7371424 res!2974329) b!7371427))

(assert (= (and b!7371427 res!2974328) b!7371417))

(assert (= (and b!7371417 res!2974332) b!7371423))

(assert (= (and b!7371423 res!2974331) b!7371422))

(assert (= (and b!7371422 res!2974330) b!7371428))

(assert (= start!719410 b!7371421))

(assert (= start!719410 b!7371425))

(assert (= (and start!719410 (is-ElementMatch!19280 r1!2370)) b!7371426))

(assert (= (and start!719410 (is-Concat!28125 r1!2370)) b!7371419))

(assert (= (and start!719410 (is-Star!19280 r1!2370)) b!7371420))

(assert (= (and start!719410 (is-Union!19280 r1!2370)) b!7371418))

(assert (= start!719410 b!7371416))

(declare-fun m!8025170 () Bool)

(assert (=> b!7371427 m!8025170))

(declare-fun m!8025172 () Bool)

(assert (=> b!7371427 m!8025172))

(declare-fun m!8025174 () Bool)

(assert (=> b!7371427 m!8025174))

(declare-fun m!8025176 () Bool)

(assert (=> b!7371422 m!8025176))

(declare-fun m!8025178 () Bool)

(assert (=> b!7371422 m!8025178))

(declare-fun m!8025180 () Bool)

(assert (=> b!7371422 m!8025180))

(declare-fun m!8025182 () Bool)

(assert (=> b!7371422 m!8025182))

(declare-fun m!8025184 () Bool)

(assert (=> b!7371422 m!8025184))

(declare-fun m!8025186 () Bool)

(assert (=> b!7371424 m!8025186))

(declare-fun m!8025188 () Bool)

(assert (=> b!7371424 m!8025188))

(declare-fun m!8025190 () Bool)

(assert (=> b!7371428 m!8025190))

(declare-fun m!8025192 () Bool)

(assert (=> b!7371428 m!8025192))

(declare-fun m!8025194 () Bool)

(assert (=> start!719410 m!8025194))

(declare-fun m!8025196 () Bool)

(assert (=> start!719410 m!8025196))

(declare-fun m!8025198 () Bool)

(assert (=> start!719410 m!8025198))

(declare-fun m!8025200 () Bool)

(assert (=> start!719410 m!8025200))

(declare-fun m!8025202 () Bool)

(assert (=> b!7371423 m!8025202))

(declare-fun m!8025204 () Bool)

(assert (=> b!7371417 m!8025204))

(push 1)

(assert (not b!7371424))

(assert (not b!7371419))

(assert (not b!7371420))

(assert (not b!7371428))

(assert (not b!7371416))

(assert (not b!7371418))

(assert (not b!7371427))

(assert (not b!7371422))

(assert (not b!7371417))

(assert tp_is_empty!48805)

(assert (not b!7371423))

(assert (not b!7371425))

(assert (not start!719410))

(assert (not b!7371421))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!677035 () Bool)

(declare-fun call!677040 () List!71776)

(declare-fun call!677042 () List!71776)

(assert (=> bm!677035 (= call!677040 call!677042)))

(declare-fun b!7371491 () Bool)

(declare-fun e!4413010 () Bool)

(assert (=> b!7371491 (= e!4413010 (nullable!8356 (regOne!39072 r1!2370)))))

(declare-fun b!7371492 () Bool)

(declare-fun e!4413012 () (Set Context!16440))

(declare-fun call!677044 () (Set Context!16440))

(declare-fun call!677045 () (Set Context!16440))

(assert (=> b!7371492 (= e!4413012 (set.union call!677044 call!677045))))

(declare-fun c!1370006 () Bool)

(declare-fun c!1370008 () Bool)

(declare-fun call!677043 () (Set Context!16440))

(declare-fun c!1370010 () Bool)

(declare-fun bm!677036 () Bool)

(assert (=> bm!677036 (= call!677043 (derivationStepZipperDown!3106 (ite c!1370008 (regTwo!39073 r1!2370) (ite c!1370010 (regTwo!39072 r1!2370) (ite c!1370006 (regOne!39072 r1!2370) (reg!19609 r1!2370)))) (ite (or c!1370008 c!1370010) ct1!282 (Context!16441 call!677040)) c!10362))))

(declare-fun bm!677037 () Bool)

(declare-fun call!677041 () (Set Context!16440))

(assert (=> bm!677037 (= call!677041 call!677045)))

(declare-fun b!7371493 () Bool)

(declare-fun e!4413009 () (Set Context!16440))

(assert (=> b!7371493 (= e!4413009 call!677041)))

(declare-fun b!7371494 () Bool)

(assert (=> b!7371494 (= e!4413009 (as set.empty (Set Context!16440)))))

(declare-fun b!7371495 () Bool)

(declare-fun e!4413013 () (Set Context!16440))

(assert (=> b!7371495 (= e!4413012 e!4413013)))

(assert (=> b!7371495 (= c!1370006 (is-Concat!28125 r1!2370))))

(declare-fun d!2283867 () Bool)

(declare-fun c!1370009 () Bool)

(assert (=> d!2283867 (= c!1370009 (and (is-ElementMatch!19280 r1!2370) (= (c!1369994 r1!2370) c!10362)))))

(declare-fun e!4413014 () (Set Context!16440))

(assert (=> d!2283867 (= (derivationStepZipperDown!3106 r1!2370 ct1!282 c!10362) e!4413014)))

(declare-fun b!7371490 () Bool)

(assert (=> b!7371490 (= c!1370010 e!4413010)))

(declare-fun res!2974353 () Bool)

(assert (=> b!7371490 (=> (not res!2974353) (not e!4413010))))

(assert (=> b!7371490 (= res!2974353 (is-Concat!28125 r1!2370))))

(declare-fun e!4413011 () (Set Context!16440))

(assert (=> b!7371490 (= e!4413011 e!4413012)))

(declare-fun b!7371496 () Bool)

(declare-fun c!1370007 () Bool)

(assert (=> b!7371496 (= c!1370007 (is-Star!19280 r1!2370))))

(assert (=> b!7371496 (= e!4413013 e!4413009)))

(declare-fun bm!677038 () Bool)

(assert (=> bm!677038 (= call!677045 call!677043)))

(declare-fun b!7371497 () Bool)

(assert (=> b!7371497 (= e!4413014 e!4413011)))

(assert (=> b!7371497 (= c!1370008 (is-Union!19280 r1!2370))))

(declare-fun b!7371498 () Bool)

(assert (=> b!7371498 (= e!4413014 (set.insert ct1!282 (as set.empty (Set Context!16440))))))

(declare-fun bm!677039 () Bool)

(assert (=> bm!677039 (= call!677042 ($colon$colon!3262 (exprs!8720 ct1!282) (ite (or c!1370010 c!1370006) (regTwo!39072 r1!2370) r1!2370)))))

(declare-fun bm!677040 () Bool)

(assert (=> bm!677040 (= call!677044 (derivationStepZipperDown!3106 (ite c!1370008 (regOne!39073 r1!2370) (regOne!39072 r1!2370)) (ite c!1370008 ct1!282 (Context!16441 call!677042)) c!10362))))

(declare-fun b!7371499 () Bool)

(assert (=> b!7371499 (= e!4413011 (set.union call!677044 call!677043))))

(declare-fun b!7371500 () Bool)

(assert (=> b!7371500 (= e!4413013 call!677041)))

(assert (= (and d!2283867 c!1370009) b!7371498))

(assert (= (and d!2283867 (not c!1370009)) b!7371497))

(assert (= (and b!7371497 c!1370008) b!7371499))

(assert (= (and b!7371497 (not c!1370008)) b!7371490))

(assert (= (and b!7371490 res!2974353) b!7371491))

(assert (= (and b!7371490 c!1370010) b!7371492))

(assert (= (and b!7371490 (not c!1370010)) b!7371495))

(assert (= (and b!7371495 c!1370006) b!7371500))

(assert (= (and b!7371495 (not c!1370006)) b!7371496))

(assert (= (and b!7371496 c!1370007) b!7371493))

(assert (= (and b!7371496 (not c!1370007)) b!7371494))

(assert (= (or b!7371500 b!7371493) bm!677035))

(assert (= (or b!7371500 b!7371493) bm!677037))

(assert (= (or b!7371492 bm!677037) bm!677038))

(assert (= (or b!7371492 bm!677035) bm!677039))

(assert (= (or b!7371499 bm!677038) bm!677036))

(assert (= (or b!7371499 b!7371492) bm!677040))

(declare-fun m!8025242 () Bool)

(assert (=> b!7371498 m!8025242))

(declare-fun m!8025244 () Bool)

(assert (=> bm!677040 m!8025244))

(assert (=> b!7371491 m!8025204))

(declare-fun m!8025246 () Bool)

(assert (=> bm!677036 m!8025246))

(declare-fun m!8025248 () Bool)

(assert (=> bm!677039 m!8025248))

(assert (=> b!7371424 d!2283867))

(declare-fun b!7371541 () Bool)

(declare-fun e!4413042 () Bool)

(declare-fun e!4413045 () Bool)

(assert (=> b!7371541 (= e!4413042 e!4413045)))

(declare-fun c!1370026 () Bool)

(assert (=> b!7371541 (= c!1370026 (is-Union!19280 r1!2370))))

(declare-fun b!7371542 () Bool)

(declare-fun e!4413046 () Bool)

(assert (=> b!7371542 (= e!4413042 e!4413046)))

(declare-fun res!2974368 () Bool)

(assert (=> b!7371542 (= res!2974368 (not (nullable!8356 (reg!19609 r1!2370))))))

(assert (=> b!7371542 (=> (not res!2974368) (not e!4413046))))

(declare-fun bm!677051 () Bool)

(declare-fun c!1370025 () Bool)

(declare-fun call!677058 () Bool)

(assert (=> bm!677051 (= call!677058 (validRegex!9876 (ite c!1370025 (reg!19609 r1!2370) (ite c!1370026 (regOne!39073 r1!2370) (regTwo!39072 r1!2370)))))))

(declare-fun b!7371543 () Bool)

(assert (=> b!7371543 (= e!4413046 call!677058)))

(declare-fun bm!677052 () Bool)

(declare-fun call!677057 () Bool)

(assert (=> bm!677052 (= call!677057 (validRegex!9876 (ite c!1370026 (regTwo!39073 r1!2370) (regOne!39072 r1!2370))))))

(declare-fun bm!677053 () Bool)

(declare-fun call!677056 () Bool)

(assert (=> bm!677053 (= call!677056 call!677058)))

(declare-fun b!7371545 () Bool)

(declare-fun e!4413044 () Bool)

(assert (=> b!7371545 (= e!4413044 e!4413042)))

(assert (=> b!7371545 (= c!1370025 (is-Star!19280 r1!2370))))

(declare-fun d!2283871 () Bool)

(declare-fun res!2974367 () Bool)

(assert (=> d!2283871 (=> res!2974367 e!4413044)))

(assert (=> d!2283871 (= res!2974367 (is-ElementMatch!19280 r1!2370))))

(assert (=> d!2283871 (= (validRegex!9876 r1!2370) e!4413044)))

(declare-fun b!7371544 () Bool)

(declare-fun res!2974369 () Bool)

(declare-fun e!4413041 () Bool)

(assert (=> b!7371544 (=> res!2974369 e!4413041)))

(assert (=> b!7371544 (= res!2974369 (not (is-Concat!28125 r1!2370)))))

(assert (=> b!7371544 (= e!4413045 e!4413041)))

(declare-fun b!7371546 () Bool)

(declare-fun res!2974370 () Bool)

(declare-fun e!4413047 () Bool)

(assert (=> b!7371546 (=> (not res!2974370) (not e!4413047))))

(assert (=> b!7371546 (= res!2974370 call!677056)))

(assert (=> b!7371546 (= e!4413045 e!4413047)))

(declare-fun b!7371547 () Bool)

(assert (=> b!7371547 (= e!4413047 call!677057)))

(declare-fun b!7371548 () Bool)

(declare-fun e!4413043 () Bool)

(assert (=> b!7371548 (= e!4413043 call!677056)))

(declare-fun b!7371549 () Bool)

(assert (=> b!7371549 (= e!4413041 e!4413043)))

(declare-fun res!2974366 () Bool)

(assert (=> b!7371549 (=> (not res!2974366) (not e!4413043))))

(assert (=> b!7371549 (= res!2974366 call!677057)))

(assert (= (and d!2283871 (not res!2974367)) b!7371545))

(assert (= (and b!7371545 c!1370025) b!7371542))

(assert (= (and b!7371545 (not c!1370025)) b!7371541))

(assert (= (and b!7371542 res!2974368) b!7371543))

(assert (= (and b!7371541 c!1370026) b!7371546))

(assert (= (and b!7371541 (not c!1370026)) b!7371544))

(assert (= (and b!7371546 res!2974370) b!7371547))

(assert (= (and b!7371544 (not res!2974369)) b!7371549))

(assert (= (and b!7371549 res!2974366) b!7371548))

(assert (= (or b!7371546 b!7371548) bm!677053))

(assert (= (or b!7371547 b!7371549) bm!677052))

(assert (= (or b!7371543 bm!677053) bm!677051))

(declare-fun m!8025250 () Bool)

(assert (=> b!7371542 m!8025250))

(declare-fun m!8025252 () Bool)

(assert (=> bm!677051 m!8025252))

(declare-fun m!8025254 () Bool)

(assert (=> bm!677052 m!8025254))

(assert (=> start!719410 d!2283871))

(declare-fun bs!1920922 () Bool)

(declare-fun d!2283873 () Bool)

(assert (= bs!1920922 (and d!2283873 b!7371427)))

(declare-fun lambda!458048 () Int)

(assert (=> bs!1920922 (= lambda!458048 lambda!458042)))

(declare-fun forall!18082 (List!71776 Int) Bool)

(assert (=> d!2283873 (= (inv!91541 cWitness!61) (forall!18082 (exprs!8720 cWitness!61) lambda!458048))))

(declare-fun bs!1920923 () Bool)

(assert (= bs!1920923 d!2283873))

(declare-fun m!8025256 () Bool)

(assert (=> bs!1920923 m!8025256))

(assert (=> start!719410 d!2283873))

(declare-fun bs!1920924 () Bool)

(declare-fun d!2283875 () Bool)

(assert (= bs!1920924 (and d!2283875 b!7371427)))

(declare-fun lambda!458049 () Int)

(assert (=> bs!1920924 (= lambda!458049 lambda!458042)))

(declare-fun bs!1920925 () Bool)

(assert (= bs!1920925 (and d!2283875 d!2283873)))

(assert (=> bs!1920925 (= lambda!458049 lambda!458048)))

(assert (=> d!2283875 (= (inv!91541 ct1!282) (forall!18082 (exprs!8720 ct1!282) lambda!458049))))

(declare-fun bs!1920926 () Bool)

(assert (= bs!1920926 d!2283875))

(declare-fun m!8025258 () Bool)

(assert (=> bs!1920926 m!8025258))

(assert (=> start!719410 d!2283875))

(declare-fun bs!1920927 () Bool)

(declare-fun d!2283877 () Bool)

(assert (= bs!1920927 (and d!2283877 b!7371427)))

(declare-fun lambda!458050 () Int)

(assert (=> bs!1920927 (= lambda!458050 lambda!458042)))

(declare-fun bs!1920928 () Bool)

(assert (= bs!1920928 (and d!2283877 d!2283873)))

(assert (=> bs!1920928 (= lambda!458050 lambda!458048)))

(declare-fun bs!1920929 () Bool)

(assert (= bs!1920929 (and d!2283877 d!2283875)))

(assert (=> bs!1920929 (= lambda!458050 lambda!458049)))

(assert (=> d!2283877 (= (inv!91541 ct2!378) (forall!18082 (exprs!8720 ct2!378) lambda!458050))))

(declare-fun bs!1920930 () Bool)

(assert (= bs!1920930 d!2283877))

(declare-fun m!8025260 () Bool)

(assert (=> bs!1920930 m!8025260))

(assert (=> start!719410 d!2283877))

(declare-fun d!2283879 () Bool)

(declare-fun nullableFct!3341 (Regex!19280) Bool)

(assert (=> d!2283879 (= (nullable!8356 (regOne!39072 r1!2370)) (nullableFct!3341 (regOne!39072 r1!2370)))))

(declare-fun bs!1920931 () Bool)

(assert (= bs!1920931 d!2283879))

(declare-fun m!8025262 () Bool)

(assert (=> bs!1920931 m!8025262))

(assert (=> b!7371417 d!2283879))

(declare-fun bm!677060 () Bool)

(declare-fun call!677067 () List!71776)

(declare-fun call!677069 () List!71776)

(assert (=> bm!677060 (= call!677067 call!677069)))

(declare-fun b!7371551 () Bool)

(declare-fun e!4413049 () Bool)

(assert (=> b!7371551 (= e!4413049 (nullable!8356 (regOne!39072 (regTwo!39072 r1!2370))))))

(declare-fun b!7371552 () Bool)

(declare-fun e!4413051 () (Set Context!16440))

(declare-fun call!677071 () (Set Context!16440))

(declare-fun call!677072 () (Set Context!16440))

(assert (=> b!7371552 (= e!4413051 (set.union call!677071 call!677072))))

(declare-fun c!1370029 () Bool)

(declare-fun bm!677061 () Bool)

(declare-fun c!1370031 () Bool)

(declare-fun c!1370027 () Bool)

(declare-fun call!677070 () (Set Context!16440))

(assert (=> bm!677061 (= call!677070 (derivationStepZipperDown!3106 (ite c!1370029 (regTwo!39073 (regTwo!39072 r1!2370)) (ite c!1370031 (regTwo!39072 (regTwo!39072 r1!2370)) (ite c!1370027 (regOne!39072 (regTwo!39072 r1!2370)) (reg!19609 (regTwo!39072 r1!2370))))) (ite (or c!1370029 c!1370031) ct1!282 (Context!16441 call!677067)) c!10362))))

(declare-fun bm!677062 () Bool)

(declare-fun call!677068 () (Set Context!16440))

(assert (=> bm!677062 (= call!677068 call!677072)))

(declare-fun b!7371553 () Bool)

(declare-fun e!4413048 () (Set Context!16440))

(assert (=> b!7371553 (= e!4413048 call!677068)))

(declare-fun b!7371554 () Bool)

(assert (=> b!7371554 (= e!4413048 (as set.empty (Set Context!16440)))))

(declare-fun b!7371555 () Bool)

(declare-fun e!4413052 () (Set Context!16440))

(assert (=> b!7371555 (= e!4413051 e!4413052)))

(assert (=> b!7371555 (= c!1370027 (is-Concat!28125 (regTwo!39072 r1!2370)))))

(declare-fun d!2283881 () Bool)

(declare-fun c!1370030 () Bool)

(assert (=> d!2283881 (= c!1370030 (and (is-ElementMatch!19280 (regTwo!39072 r1!2370)) (= (c!1369994 (regTwo!39072 r1!2370)) c!10362)))))

(declare-fun e!4413053 () (Set Context!16440))

(assert (=> d!2283881 (= (derivationStepZipperDown!3106 (regTwo!39072 r1!2370) ct1!282 c!10362) e!4413053)))

(declare-fun b!7371550 () Bool)

(assert (=> b!7371550 (= c!1370031 e!4413049)))

(declare-fun res!2974371 () Bool)

(assert (=> b!7371550 (=> (not res!2974371) (not e!4413049))))

(assert (=> b!7371550 (= res!2974371 (is-Concat!28125 (regTwo!39072 r1!2370)))))

(declare-fun e!4413050 () (Set Context!16440))

(assert (=> b!7371550 (= e!4413050 e!4413051)))

(declare-fun b!7371556 () Bool)

(declare-fun c!1370028 () Bool)

(assert (=> b!7371556 (= c!1370028 (is-Star!19280 (regTwo!39072 r1!2370)))))

(assert (=> b!7371556 (= e!4413052 e!4413048)))

(declare-fun bm!677063 () Bool)

(assert (=> bm!677063 (= call!677072 call!677070)))

(declare-fun b!7371557 () Bool)

(assert (=> b!7371557 (= e!4413053 e!4413050)))

(assert (=> b!7371557 (= c!1370029 (is-Union!19280 (regTwo!39072 r1!2370)))))

(declare-fun b!7371558 () Bool)

(assert (=> b!7371558 (= e!4413053 (set.insert ct1!282 (as set.empty (Set Context!16440))))))

(declare-fun bm!677064 () Bool)

(assert (=> bm!677064 (= call!677069 ($colon$colon!3262 (exprs!8720 ct1!282) (ite (or c!1370031 c!1370027) (regTwo!39072 (regTwo!39072 r1!2370)) (regTwo!39072 r1!2370))))))

(declare-fun bm!677065 () Bool)

(assert (=> bm!677065 (= call!677071 (derivationStepZipperDown!3106 (ite c!1370029 (regOne!39073 (regTwo!39072 r1!2370)) (regOne!39072 (regTwo!39072 r1!2370))) (ite c!1370029 ct1!282 (Context!16441 call!677069)) c!10362))))

(declare-fun b!7371559 () Bool)

(assert (=> b!7371559 (= e!4413050 (set.union call!677071 call!677070))))

(declare-fun b!7371560 () Bool)

(assert (=> b!7371560 (= e!4413052 call!677068)))

(assert (= (and d!2283881 c!1370030) b!7371558))

(assert (= (and d!2283881 (not c!1370030)) b!7371557))

(assert (= (and b!7371557 c!1370029) b!7371559))

(assert (= (and b!7371557 (not c!1370029)) b!7371550))

(assert (= (and b!7371550 res!2974371) b!7371551))

(assert (= (and b!7371550 c!1370031) b!7371552))

(assert (= (and b!7371550 (not c!1370031)) b!7371555))

(assert (= (and b!7371555 c!1370027) b!7371560))

(assert (= (and b!7371555 (not c!1370027)) b!7371556))

(assert (= (and b!7371556 c!1370028) b!7371553))

(assert (= (and b!7371556 (not c!1370028)) b!7371554))

(assert (= (or b!7371560 b!7371553) bm!677060))

(assert (= (or b!7371560 b!7371553) bm!677062))

(assert (= (or b!7371552 bm!677062) bm!677063))

(assert (= (or b!7371552 bm!677060) bm!677064))

(assert (= (or b!7371559 bm!677063) bm!677061))

(assert (= (or b!7371559 b!7371552) bm!677065))

(assert (=> b!7371558 m!8025242))

(declare-fun m!8025264 () Bool)

(assert (=> bm!677065 m!8025264))

(declare-fun m!8025266 () Bool)

(assert (=> b!7371551 m!8025266))

(declare-fun m!8025268 () Bool)

(assert (=> bm!677061 m!8025268))

(declare-fun m!8025270 () Bool)

(assert (=> bm!677064 m!8025270))

(assert (=> b!7371422 d!2283881))

(declare-fun bm!677068 () Bool)

(declare-fun call!677073 () List!71776)

(declare-fun call!677075 () List!71776)

(assert (=> bm!677068 (= call!677073 call!677075)))

(declare-fun b!7371562 () Bool)

(declare-fun e!4413055 () Bool)

(assert (=> b!7371562 (= e!4413055 (nullable!8356 (regOne!39072 (regOne!39072 r1!2370))))))

(declare-fun b!7371563 () Bool)

(declare-fun e!4413057 () (Set Context!16440))

(declare-fun call!677077 () (Set Context!16440))

(declare-fun call!677078 () (Set Context!16440))

(assert (=> b!7371563 (= e!4413057 (set.union call!677077 call!677078))))

(declare-fun call!677076 () (Set Context!16440))

(declare-fun c!1370032 () Bool)

(declare-fun bm!677069 () Bool)

(declare-fun c!1370036 () Bool)

(declare-fun c!1370034 () Bool)

(assert (=> bm!677069 (= call!677076 (derivationStepZipperDown!3106 (ite c!1370034 (regTwo!39073 (regOne!39072 r1!2370)) (ite c!1370036 (regTwo!39072 (regOne!39072 r1!2370)) (ite c!1370032 (regOne!39072 (regOne!39072 r1!2370)) (reg!19609 (regOne!39072 r1!2370))))) (ite (or c!1370034 c!1370036) (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370))) (Context!16441 call!677073)) c!10362))))

(declare-fun bm!677070 () Bool)

(declare-fun call!677074 () (Set Context!16440))

(assert (=> bm!677070 (= call!677074 call!677078)))

(declare-fun b!7371564 () Bool)

(declare-fun e!4413054 () (Set Context!16440))

(assert (=> b!7371564 (= e!4413054 call!677074)))

(declare-fun b!7371565 () Bool)

(assert (=> b!7371565 (= e!4413054 (as set.empty (Set Context!16440)))))

(declare-fun b!7371566 () Bool)

(declare-fun e!4413058 () (Set Context!16440))

(assert (=> b!7371566 (= e!4413057 e!4413058)))

(assert (=> b!7371566 (= c!1370032 (is-Concat!28125 (regOne!39072 r1!2370)))))

(declare-fun d!2283883 () Bool)

(declare-fun c!1370035 () Bool)

(assert (=> d!2283883 (= c!1370035 (and (is-ElementMatch!19280 (regOne!39072 r1!2370)) (= (c!1369994 (regOne!39072 r1!2370)) c!10362)))))

(declare-fun e!4413059 () (Set Context!16440))

(assert (=> d!2283883 (= (derivationStepZipperDown!3106 (regOne!39072 r1!2370) (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370))) c!10362) e!4413059)))

(declare-fun b!7371561 () Bool)

(assert (=> b!7371561 (= c!1370036 e!4413055)))

(declare-fun res!2974372 () Bool)

(assert (=> b!7371561 (=> (not res!2974372) (not e!4413055))))

(assert (=> b!7371561 (= res!2974372 (is-Concat!28125 (regOne!39072 r1!2370)))))

(declare-fun e!4413056 () (Set Context!16440))

(assert (=> b!7371561 (= e!4413056 e!4413057)))

(declare-fun b!7371567 () Bool)

(declare-fun c!1370033 () Bool)

(assert (=> b!7371567 (= c!1370033 (is-Star!19280 (regOne!39072 r1!2370)))))

(assert (=> b!7371567 (= e!4413058 e!4413054)))

(declare-fun bm!677071 () Bool)

(assert (=> bm!677071 (= call!677078 call!677076)))

(declare-fun b!7371568 () Bool)

(assert (=> b!7371568 (= e!4413059 e!4413056)))

(assert (=> b!7371568 (= c!1370034 (is-Union!19280 (regOne!39072 r1!2370)))))

(declare-fun b!7371569 () Bool)

(assert (=> b!7371569 (= e!4413059 (set.insert (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370))) (as set.empty (Set Context!16440))))))

(declare-fun bm!677072 () Bool)

(assert (=> bm!677072 (= call!677075 ($colon$colon!3262 (exprs!8720 (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370)))) (ite (or c!1370036 c!1370032) (regTwo!39072 (regOne!39072 r1!2370)) (regOne!39072 r1!2370))))))

(declare-fun bm!677073 () Bool)

(assert (=> bm!677073 (= call!677077 (derivationStepZipperDown!3106 (ite c!1370034 (regOne!39073 (regOne!39072 r1!2370)) (regOne!39072 (regOne!39072 r1!2370))) (ite c!1370034 (Context!16441 ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370))) (Context!16441 call!677075)) c!10362))))

(declare-fun b!7371570 () Bool)

(assert (=> b!7371570 (= e!4413056 (set.union call!677077 call!677076))))

(declare-fun b!7371571 () Bool)

(assert (=> b!7371571 (= e!4413058 call!677074)))

(assert (= (and d!2283883 c!1370035) b!7371569))

(assert (= (and d!2283883 (not c!1370035)) b!7371568))

(assert (= (and b!7371568 c!1370034) b!7371570))

(assert (= (and b!7371568 (not c!1370034)) b!7371561))

(assert (= (and b!7371561 res!2974372) b!7371562))

(assert (= (and b!7371561 c!1370036) b!7371563))

(assert (= (and b!7371561 (not c!1370036)) b!7371566))

(assert (= (and b!7371566 c!1370032) b!7371571))

(assert (= (and b!7371566 (not c!1370032)) b!7371567))

(assert (= (and b!7371567 c!1370033) b!7371564))

(assert (= (and b!7371567 (not c!1370033)) b!7371565))

(assert (= (or b!7371571 b!7371564) bm!677068))

(assert (= (or b!7371571 b!7371564) bm!677070))

(assert (= (or b!7371563 bm!677070) bm!677071))

(assert (= (or b!7371563 bm!677068) bm!677072))

(assert (= (or b!7371570 bm!677071) bm!677069))

(assert (= (or b!7371570 b!7371563) bm!677073))

(declare-fun m!8025272 () Bool)

(assert (=> b!7371569 m!8025272))

(declare-fun m!8025274 () Bool)

(assert (=> bm!677073 m!8025274))

(declare-fun m!8025276 () Bool)

(assert (=> b!7371562 m!8025276))

(declare-fun m!8025278 () Bool)

(assert (=> bm!677069 m!8025278))

(declare-fun m!8025280 () Bool)

(assert (=> bm!677072 m!8025280))

(assert (=> b!7371422 d!2283883))

(declare-fun d!2283885 () Bool)

(assert (=> d!2283885 (= ($colon$colon!3262 (exprs!8720 ct1!282) (regTwo!39072 r1!2370)) (Cons!71652 (regTwo!39072 r1!2370) (exprs!8720 ct1!282)))))

(assert (=> b!7371422 d!2283885))

(declare-fun bm!677074 () Bool)

(declare-fun call!677079 () List!71776)

(declare-fun call!677081 () List!71776)

(assert (=> bm!677074 (= call!677079 call!677081)))

(declare-fun b!7371573 () Bool)

(declare-fun e!4413061 () Bool)

(assert (=> b!7371573 (= e!4413061 (nullable!8356 (regOne!39072 r1!2370)))))

(declare-fun b!7371574 () Bool)

(declare-fun e!4413063 () (Set Context!16440))

(declare-fun call!677083 () (Set Context!16440))

(declare-fun call!677084 () (Set Context!16440))

(assert (=> b!7371574 (= e!4413063 (set.union call!677083 call!677084))))

(declare-fun c!1370041 () Bool)

(declare-fun c!1370039 () Bool)

(declare-fun c!1370037 () Bool)

(declare-fun bm!677075 () Bool)

(declare-fun call!677082 () (Set Context!16440))

(assert (=> bm!677075 (= call!677082 (derivationStepZipperDown!3106 (ite c!1370039 (regTwo!39073 r1!2370) (ite c!1370041 (regTwo!39072 r1!2370) (ite c!1370037 (regOne!39072 r1!2370) (reg!19609 r1!2370)))) (ite (or c!1370039 c!1370041) (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378))) (Context!16441 call!677079)) c!10362))))

(declare-fun bm!677076 () Bool)

(declare-fun call!677080 () (Set Context!16440))

(assert (=> bm!677076 (= call!677080 call!677084)))

(declare-fun b!7371575 () Bool)

(declare-fun e!4413060 () (Set Context!16440))

(assert (=> b!7371575 (= e!4413060 call!677080)))

(declare-fun b!7371576 () Bool)

(assert (=> b!7371576 (= e!4413060 (as set.empty (Set Context!16440)))))

(declare-fun b!7371577 () Bool)

(declare-fun e!4413064 () (Set Context!16440))

(assert (=> b!7371577 (= e!4413063 e!4413064)))

(assert (=> b!7371577 (= c!1370037 (is-Concat!28125 r1!2370))))

(declare-fun d!2283887 () Bool)

(declare-fun c!1370040 () Bool)

(assert (=> d!2283887 (= c!1370040 (and (is-ElementMatch!19280 r1!2370) (= (c!1369994 r1!2370) c!10362)))))

(declare-fun e!4413065 () (Set Context!16440))

(assert (=> d!2283887 (= (derivationStepZipperDown!3106 r1!2370 (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378))) c!10362) e!4413065)))

(declare-fun b!7371572 () Bool)

(assert (=> b!7371572 (= c!1370041 e!4413061)))

(declare-fun res!2974373 () Bool)

(assert (=> b!7371572 (=> (not res!2974373) (not e!4413061))))

(assert (=> b!7371572 (= res!2974373 (is-Concat!28125 r1!2370))))

(declare-fun e!4413062 () (Set Context!16440))

(assert (=> b!7371572 (= e!4413062 e!4413063)))

(declare-fun b!7371578 () Bool)

(declare-fun c!1370038 () Bool)

(assert (=> b!7371578 (= c!1370038 (is-Star!19280 r1!2370))))

(assert (=> b!7371578 (= e!4413064 e!4413060)))

(declare-fun bm!677077 () Bool)

(assert (=> bm!677077 (= call!677084 call!677082)))

(declare-fun b!7371579 () Bool)

(assert (=> b!7371579 (= e!4413065 e!4413062)))

(assert (=> b!7371579 (= c!1370039 (is-Union!19280 r1!2370))))

(declare-fun b!7371580 () Bool)

(assert (=> b!7371580 (= e!4413065 (set.insert (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378))) (as set.empty (Set Context!16440))))))

(declare-fun bm!677078 () Bool)

(assert (=> bm!677078 (= call!677081 ($colon$colon!3262 (exprs!8720 (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378)))) (ite (or c!1370041 c!1370037) (regTwo!39072 r1!2370) r1!2370)))))

(declare-fun bm!677079 () Bool)

(assert (=> bm!677079 (= call!677083 (derivationStepZipperDown!3106 (ite c!1370039 (regOne!39073 r1!2370) (regOne!39072 r1!2370)) (ite c!1370039 (Context!16441 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378))) (Context!16441 call!677081)) c!10362))))

(declare-fun b!7371581 () Bool)

(assert (=> b!7371581 (= e!4413062 (set.union call!677083 call!677082))))

(declare-fun b!7371582 () Bool)

(assert (=> b!7371582 (= e!4413064 call!677080)))

(assert (= (and d!2283887 c!1370040) b!7371580))

(assert (= (and d!2283887 (not c!1370040)) b!7371579))

(assert (= (and b!7371579 c!1370039) b!7371581))

(assert (= (and b!7371579 (not c!1370039)) b!7371572))

(assert (= (and b!7371572 res!2974373) b!7371573))

(assert (= (and b!7371572 c!1370041) b!7371574))

(assert (= (and b!7371572 (not c!1370041)) b!7371577))

(assert (= (and b!7371577 c!1370037) b!7371582))

(assert (= (and b!7371577 (not c!1370037)) b!7371578))

(assert (= (and b!7371578 c!1370038) b!7371575))

(assert (= (and b!7371578 (not c!1370038)) b!7371576))

(assert (= (or b!7371582 b!7371575) bm!677074))

(assert (= (or b!7371582 b!7371575) bm!677076))

(assert (= (or b!7371574 bm!677076) bm!677077))

(assert (= (or b!7371574 bm!677074) bm!677078))

(assert (= (or b!7371581 bm!677077) bm!677075))

(assert (= (or b!7371581 b!7371574) bm!677079))

(declare-fun m!8025282 () Bool)

(assert (=> b!7371580 m!8025282))

(declare-fun m!8025284 () Bool)

(assert (=> bm!677079 m!8025284))

(assert (=> b!7371573 m!8025204))

(declare-fun m!8025286 () Bool)

(assert (=> bm!677075 m!8025286))

(declare-fun m!8025288 () Bool)

(assert (=> bm!677078 m!8025288))

(assert (=> b!7371427 d!2283887))

(declare-fun b!7371593 () Bool)

(declare-fun res!2974379 () Bool)

(declare-fun e!4413071 () Bool)

(assert (=> b!7371593 (=> (not res!2974379) (not e!4413071))))

(declare-fun lt!2615676 () List!71776)

(declare-fun size!42134 (List!71776) Int)

(assert (=> b!7371593 (= res!2974379 (= (size!42134 lt!2615676) (+ (size!42134 (exprs!8720 ct1!282)) (size!42134 (exprs!8720 ct2!378)))))))

(declare-fun b!7371594 () Bool)

(assert (=> b!7371594 (= e!4413071 (or (not (= (exprs!8720 ct2!378) Nil!71652)) (= lt!2615676 (exprs!8720 ct1!282))))))

(declare-fun b!7371592 () Bool)

(declare-fun e!4413070 () List!71776)

(assert (=> b!7371592 (= e!4413070 (Cons!71652 (h!78100 (exprs!8720 ct1!282)) (++!17096 (t!386239 (exprs!8720 ct1!282)) (exprs!8720 ct2!378))))))

(declare-fun b!7371591 () Bool)

(assert (=> b!7371591 (= e!4413070 (exprs!8720 ct2!378))))

(declare-fun d!2283889 () Bool)

(assert (=> d!2283889 e!4413071))

(declare-fun res!2974378 () Bool)

(assert (=> d!2283889 (=> (not res!2974378) (not e!4413071))))

(declare-fun content!15156 (List!71776) (Set Regex!19280))

(assert (=> d!2283889 (= res!2974378 (= (content!15156 lt!2615676) (set.union (content!15156 (exprs!8720 ct1!282)) (content!15156 (exprs!8720 ct2!378)))))))

(assert (=> d!2283889 (= lt!2615676 e!4413070)))

(declare-fun c!1370044 () Bool)

(assert (=> d!2283889 (= c!1370044 (is-Nil!71652 (exprs!8720 ct1!282)))))

(assert (=> d!2283889 (= (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378)) lt!2615676)))

(assert (= (and d!2283889 c!1370044) b!7371591))

(assert (= (and d!2283889 (not c!1370044)) b!7371592))

(assert (= (and d!2283889 res!2974378) b!7371593))

(assert (= (and b!7371593 res!2974379) b!7371594))

(declare-fun m!8025290 () Bool)

(assert (=> b!7371593 m!8025290))

(declare-fun m!8025292 () Bool)

(assert (=> b!7371593 m!8025292))

(declare-fun m!8025294 () Bool)

(assert (=> b!7371593 m!8025294))

(declare-fun m!8025296 () Bool)

(assert (=> b!7371592 m!8025296))

(declare-fun m!8025298 () Bool)

(assert (=> d!2283889 m!8025298))

(declare-fun m!8025300 () Bool)

(assert (=> d!2283889 m!8025300))

(declare-fun m!8025302 () Bool)

(assert (=> d!2283889 m!8025302))

(assert (=> b!7371427 d!2283889))

(declare-fun d!2283891 () Bool)

(assert (=> d!2283891 (forall!18082 (++!17096 (exprs!8720 ct1!282) (exprs!8720 ct2!378)) lambda!458042)))

(declare-fun lt!2615679 () Unit!165509)

(declare-fun choose!57305 (List!71776 List!71776 Int) Unit!165509)

(assert (=> d!2283891 (= lt!2615679 (choose!57305 (exprs!8720 ct1!282) (exprs!8720 ct2!378) lambda!458042))))

(assert (=> d!2283891 (forall!18082 (exprs!8720 ct1!282) lambda!458042)))

(assert (=> d!2283891 (= (lemmaConcatPreservesForall!1953 (exprs!8720 ct1!282) (exprs!8720 ct2!378) lambda!458042) lt!2615679)))

(declare-fun bs!1920932 () Bool)

(assert (= bs!1920932 d!2283891))

(assert (=> bs!1920932 m!8025170))

(assert (=> bs!1920932 m!8025170))

(declare-fun m!8025304 () Bool)

(assert (=> bs!1920932 m!8025304))

(declare-fun m!8025306 () Bool)

(assert (=> bs!1920932 m!8025306))

(declare-fun m!8025308 () Bool)

(assert (=> bs!1920932 m!8025308))

(assert (=> b!7371427 d!2283891))

(declare-fun b!7371606 () Bool)

(declare-fun e!4413079 () Bool)

(declare-fun e!4413082 () Bool)

(assert (=> b!7371606 (= e!4413079 e!4413082)))

(declare-fun c!1370051 () Bool)

(assert (=> b!7371606 (= c!1370051 (is-Union!19280 (regTwo!39072 r1!2370)))))

(declare-fun b!7371607 () Bool)

(declare-fun e!4413083 () Bool)

(assert (=> b!7371607 (= e!4413079 e!4413083)))

(declare-fun res!2974383 () Bool)

(assert (=> b!7371607 (= res!2974383 (not (nullable!8356 (reg!19609 (regTwo!39072 r1!2370)))))))

(assert (=> b!7371607 (=> (not res!2974383) (not e!4413083))))

(declare-fun bm!677086 () Bool)

(declare-fun c!1370050 () Bool)

(declare-fun call!677093 () Bool)

(assert (=> bm!677086 (= call!677093 (validRegex!9876 (ite c!1370050 (reg!19609 (regTwo!39072 r1!2370)) (ite c!1370051 (regOne!39073 (regTwo!39072 r1!2370)) (regTwo!39072 (regTwo!39072 r1!2370))))))))

(declare-fun b!7371608 () Bool)

(assert (=> b!7371608 (= e!4413083 call!677093)))

(declare-fun bm!677087 () Bool)

(declare-fun call!677092 () Bool)

(assert (=> bm!677087 (= call!677092 (validRegex!9876 (ite c!1370051 (regTwo!39073 (regTwo!39072 r1!2370)) (regOne!39072 (regTwo!39072 r1!2370)))))))

(declare-fun bm!677088 () Bool)

(declare-fun call!677091 () Bool)

(assert (=> bm!677088 (= call!677091 call!677093)))

(declare-fun b!7371610 () Bool)

(declare-fun e!4413081 () Bool)

(assert (=> b!7371610 (= e!4413081 e!4413079)))

(assert (=> b!7371610 (= c!1370050 (is-Star!19280 (regTwo!39072 r1!2370)))))

(declare-fun d!2283893 () Bool)

(declare-fun res!2974382 () Bool)

(assert (=> d!2283893 (=> res!2974382 e!4413081)))

(assert (=> d!2283893 (= res!2974382 (is-ElementMatch!19280 (regTwo!39072 r1!2370)))))

(assert (=> d!2283893 (= (validRegex!9876 (regTwo!39072 r1!2370)) e!4413081)))

(declare-fun b!7371609 () Bool)

(declare-fun res!2974384 () Bool)

(declare-fun e!4413078 () Bool)

(assert (=> b!7371609 (=> res!2974384 e!4413078)))

(assert (=> b!7371609 (= res!2974384 (not (is-Concat!28125 (regTwo!39072 r1!2370))))))

(assert (=> b!7371609 (= e!4413082 e!4413078)))

(declare-fun b!7371611 () Bool)

(declare-fun res!2974385 () Bool)

(declare-fun e!4413084 () Bool)

(assert (=> b!7371611 (=> (not res!2974385) (not e!4413084))))

(assert (=> b!7371611 (= res!2974385 call!677091)))

(assert (=> b!7371611 (= e!4413082 e!4413084)))

(declare-fun b!7371612 () Bool)

(assert (=> b!7371612 (= e!4413084 call!677092)))

(declare-fun b!7371613 () Bool)

(declare-fun e!4413080 () Bool)

(assert (=> b!7371613 (= e!4413080 call!677091)))

(declare-fun b!7371614 () Bool)

(assert (=> b!7371614 (= e!4413078 e!4413080)))

(declare-fun res!2974381 () Bool)

(assert (=> b!7371614 (=> (not res!2974381) (not e!4413080))))

(assert (=> b!7371614 (= res!2974381 call!677092)))

(assert (= (and d!2283893 (not res!2974382)) b!7371610))

(assert (= (and b!7371610 c!1370050) b!7371607))

(assert (= (and b!7371610 (not c!1370050)) b!7371606))

(assert (= (and b!7371607 res!2974383) b!7371608))

(assert (= (and b!7371606 c!1370051) b!7371611))

(assert (= (and b!7371606 (not c!1370051)) b!7371609))

(assert (= (and b!7371611 res!2974385) b!7371612))

(assert (= (and b!7371609 (not res!2974384)) b!7371614))

(assert (= (and b!7371614 res!2974381) b!7371613))

(assert (= (or b!7371611 b!7371613) bm!677088))

(assert (= (or b!7371612 b!7371614) bm!677087))

(assert (= (or b!7371608 bm!677088) bm!677086))

(declare-fun m!8025310 () Bool)

(assert (=> b!7371607 m!8025310))

(declare-fun m!8025314 () Bool)

(assert (=> bm!677086 m!8025314))

(declare-fun m!8025316 () Bool)

(assert (=> bm!677087 m!8025316))

(assert (=> b!7371423 d!2283893))

(declare-fun bm!677113 () Bool)

(declare-fun call!677120 () Int)

(declare-fun c!1370078 () Bool)

(assert (=> bm!677113 (= call!677120 (regexDepth!440 (ite c!1370078 (regTwo!39073 (regTwo!39072 r1!2370)) (regOne!39072 (regTwo!39072 r1!2370)))))))

(declare-fun b!7371678 () Bool)

(declare-fun e!4413127 () Int)

(declare-fun call!677119 () Int)

(assert (=> b!7371678 (= e!4413127 (+ 1 call!677119))))

(declare-fun b!7371679 () Bool)

(declare-fun res!2974404 () Bool)

(declare-fun e!4413133 () Bool)

(assert (=> b!7371679 (=> (not res!2974404) (not e!4413133))))

(declare-fun lt!2615682 () Int)

(declare-fun call!677124 () Int)

(assert (=> b!7371679 (= res!2974404 (> lt!2615682 call!677124))))

(declare-fun e!4413126 () Bool)

(assert (=> b!7371679 (= e!4413126 e!4413133)))

(declare-fun b!7371680 () Bool)

(declare-fun e!4413129 () Bool)

(declare-fun e!4413130 () Bool)

(assert (=> b!7371680 (= e!4413129 e!4413130)))

(declare-fun c!1370080 () Bool)

(assert (=> b!7371680 (= c!1370080 (is-Union!19280 (regTwo!39072 r1!2370)))))

(declare-fun b!7371681 () Bool)

(declare-fun e!4413131 () Int)

(assert (=> b!7371681 (= e!4413127 e!4413131)))

(declare-fun c!1370075 () Bool)

(assert (=> b!7371681 (= c!1370075 (is-Concat!28125 (regTwo!39072 r1!2370)))))

(declare-fun b!7371682 () Bool)

(declare-fun e!4413125 () Int)

(declare-fun call!677118 () Int)

(assert (=> b!7371682 (= e!4413125 (+ 1 call!677118))))

(declare-fun b!7371683 () Bool)

(declare-fun c!1370077 () Bool)

(assert (=> b!7371683 (= c!1370077 (is-Star!19280 (regTwo!39072 r1!2370)))))

(declare-fun e!4413132 () Bool)

(assert (=> b!7371683 (= e!4413126 e!4413132)))

(declare-fun bm!677114 () Bool)

(declare-fun call!677123 () Int)

(assert (=> bm!677114 (= call!677123 call!677118)))

(declare-fun bm!677115 () Bool)

(declare-fun call!677121 () Int)

(assert (=> bm!677115 (= call!677124 call!677121)))

(declare-fun c!1370079 () Bool)

(declare-fun bm!677116 () Bool)

(assert (=> bm!677116 (= call!677118 (regexDepth!440 (ite c!1370079 (reg!19609 (regTwo!39072 r1!2370)) (ite c!1370078 (regOne!39073 (regTwo!39072 r1!2370)) (regTwo!39072 (regTwo!39072 r1!2370))))))))

(declare-fun bm!677117 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!677117 (= call!677119 (maxBigInt!0 (ite c!1370078 call!677123 call!677120) (ite c!1370078 call!677120 call!677123)))))

(declare-fun bm!677118 () Bool)

(declare-fun call!677122 () Int)

(assert (=> bm!677118 (= call!677122 (regexDepth!440 (ite c!1370080 (regTwo!39073 (regTwo!39072 r1!2370)) (regTwo!39072 (regTwo!39072 r1!2370)))))))

(declare-fun b!7371685 () Bool)

(assert (=> b!7371685 (= c!1370078 (is-Union!19280 (regTwo!39072 r1!2370)))))

(assert (=> b!7371685 (= e!4413125 e!4413127)))

(declare-fun b!7371686 () Bool)

(assert (=> b!7371686 (= e!4413133 (> lt!2615682 call!677122))))

(declare-fun b!7371687 () Bool)

(assert (=> b!7371687 (= e!4413130 e!4413126)))

(declare-fun c!1370081 () Bool)

(assert (=> b!7371687 (= c!1370081 (is-Concat!28125 (regTwo!39072 r1!2370)))))

(declare-fun b!7371688 () Bool)

(assert (=> b!7371688 (= e!4413132 (> lt!2615682 call!677124))))

(declare-fun b!7371689 () Bool)

(assert (=> b!7371689 (= e!4413131 1)))

(declare-fun b!7371690 () Bool)

(declare-fun e!4413134 () Bool)

(assert (=> b!7371690 (= e!4413134 (> lt!2615682 call!677122))))

(declare-fun b!7371691 () Bool)

(assert (=> b!7371691 (= e!4413130 e!4413134)))

(declare-fun res!2974403 () Bool)

(assert (=> b!7371691 (= res!2974403 (> lt!2615682 call!677121))))

(assert (=> b!7371691 (=> (not res!2974403) (not e!4413134))))

(declare-fun b!7371692 () Bool)

(assert (=> b!7371692 (= e!4413132 (= lt!2615682 1))))

(declare-fun b!7371693 () Bool)

(declare-fun e!4413128 () Int)

(assert (=> b!7371693 (= e!4413128 1)))

(declare-fun b!7371694 () Bool)

(assert (=> b!7371694 (= e!4413131 (+ 1 call!677119))))

(declare-fun bm!677119 () Bool)

(assert (=> bm!677119 (= call!677121 (regexDepth!440 (ite c!1370080 (regOne!39073 (regTwo!39072 r1!2370)) (ite c!1370081 (regOne!39072 (regTwo!39072 r1!2370)) (reg!19609 (regTwo!39072 r1!2370))))))))

(declare-fun d!2283895 () Bool)

(assert (=> d!2283895 e!4413129))

(declare-fun res!2974405 () Bool)

(assert (=> d!2283895 (=> (not res!2974405) (not e!4413129))))

(assert (=> d!2283895 (= res!2974405 (> lt!2615682 0))))

(assert (=> d!2283895 (= lt!2615682 e!4413128)))

(declare-fun c!1370076 () Bool)

(assert (=> d!2283895 (= c!1370076 (is-ElementMatch!19280 (regTwo!39072 r1!2370)))))

(assert (=> d!2283895 (= (regexDepth!440 (regTwo!39072 r1!2370)) lt!2615682)))

(declare-fun b!7371684 () Bool)

(assert (=> b!7371684 (= e!4413128 e!4413125)))

(assert (=> b!7371684 (= c!1370079 (is-Star!19280 (regTwo!39072 r1!2370)))))

(assert (= (and d!2283895 c!1370076) b!7371693))

(assert (= (and d!2283895 (not c!1370076)) b!7371684))

(assert (= (and b!7371684 c!1370079) b!7371682))

(assert (= (and b!7371684 (not c!1370079)) b!7371685))

(assert (= (and b!7371685 c!1370078) b!7371678))

(assert (= (and b!7371685 (not c!1370078)) b!7371681))

(assert (= (and b!7371681 c!1370075) b!7371694))

(assert (= (and b!7371681 (not c!1370075)) b!7371689))

(assert (= (or b!7371678 b!7371694) bm!677113))

(assert (= (or b!7371678 b!7371694) bm!677114))

(assert (= (or b!7371678 b!7371694) bm!677117))

(assert (= (or b!7371682 bm!677114) bm!677116))

(assert (= (and d!2283895 res!2974405) b!7371680))

(assert (= (and b!7371680 c!1370080) b!7371691))

(assert (= (and b!7371680 (not c!1370080)) b!7371687))

(assert (= (and b!7371691 res!2974403) b!7371690))

(assert (= (and b!7371687 c!1370081) b!7371679))

(assert (= (and b!7371687 (not c!1370081)) b!7371683))

(assert (= (and b!7371679 res!2974404) b!7371686))

(assert (= (and b!7371683 c!1370077) b!7371688))

(assert (= (and b!7371683 (not c!1370077)) b!7371692))

(assert (= (or b!7371679 b!7371688) bm!677115))

(assert (= (or b!7371690 b!7371686) bm!677118))

(assert (= (or b!7371691 bm!677115) bm!677119))

(declare-fun m!8025336 () Bool)

(assert (=> bm!677113 m!8025336))

(declare-fun m!8025338 () Bool)

(assert (=> bm!677118 m!8025338))

(declare-fun m!8025340 () Bool)

(assert (=> bm!677116 m!8025340))

(declare-fun m!8025342 () Bool)

(assert (=> bm!677119 m!8025342))

(declare-fun m!8025344 () Bool)

(assert (=> bm!677117 m!8025344))

(assert (=> b!7371428 d!2283895))

(declare-fun bm!677122 () Bool)

(declare-fun call!677129 () Int)

(declare-fun c!1370085 () Bool)

(assert (=> bm!677122 (= call!677129 (regexDepth!440 (ite c!1370085 (regTwo!39073 r1!2370) (regOne!39072 r1!2370))))))

(declare-fun b!7371695 () Bool)

(declare-fun e!4413137 () Int)

(declare-fun call!677128 () Int)

(assert (=> b!7371695 (= e!4413137 (+ 1 call!677128))))

(declare-fun b!7371696 () Bool)

(declare-fun res!2974407 () Bool)

(declare-fun e!4413143 () Bool)

(assert (=> b!7371696 (=> (not res!2974407) (not e!4413143))))

(declare-fun lt!2615683 () Int)

(declare-fun call!677133 () Int)

(assert (=> b!7371696 (= res!2974407 (> lt!2615683 call!677133))))

(declare-fun e!4413136 () Bool)

(assert (=> b!7371696 (= e!4413136 e!4413143)))

(declare-fun b!7371697 () Bool)

(declare-fun e!4413139 () Bool)

(declare-fun e!4413140 () Bool)

(assert (=> b!7371697 (= e!4413139 e!4413140)))

(declare-fun c!1370087 () Bool)

(assert (=> b!7371697 (= c!1370087 (is-Union!19280 r1!2370))))

(declare-fun b!7371698 () Bool)

(declare-fun e!4413141 () Int)

(assert (=> b!7371698 (= e!4413137 e!4413141)))

(declare-fun c!1370082 () Bool)

(assert (=> b!7371698 (= c!1370082 (is-Concat!28125 r1!2370))))

(declare-fun b!7371699 () Bool)

(declare-fun e!4413135 () Int)

(declare-fun call!677127 () Int)

(assert (=> b!7371699 (= e!4413135 (+ 1 call!677127))))

(declare-fun b!7371700 () Bool)

(declare-fun c!1370084 () Bool)

(assert (=> b!7371700 (= c!1370084 (is-Star!19280 r1!2370))))

(declare-fun e!4413142 () Bool)

(assert (=> b!7371700 (= e!4413136 e!4413142)))

(declare-fun bm!677123 () Bool)

(declare-fun call!677132 () Int)

(assert (=> bm!677123 (= call!677132 call!677127)))

(declare-fun bm!677124 () Bool)

(declare-fun call!677130 () Int)

(assert (=> bm!677124 (= call!677133 call!677130)))

(declare-fun c!1370086 () Bool)

(declare-fun bm!677125 () Bool)

(assert (=> bm!677125 (= call!677127 (regexDepth!440 (ite c!1370086 (reg!19609 r1!2370) (ite c!1370085 (regOne!39073 r1!2370) (regTwo!39072 r1!2370)))))))

(declare-fun bm!677126 () Bool)

(assert (=> bm!677126 (= call!677128 (maxBigInt!0 (ite c!1370085 call!677132 call!677129) (ite c!1370085 call!677129 call!677132)))))

(declare-fun bm!677127 () Bool)

(declare-fun call!677131 () Int)

(assert (=> bm!677127 (= call!677131 (regexDepth!440 (ite c!1370087 (regTwo!39073 r1!2370) (regTwo!39072 r1!2370))))))

(declare-fun b!7371702 () Bool)

(assert (=> b!7371702 (= c!1370085 (is-Union!19280 r1!2370))))

(assert (=> b!7371702 (= e!4413135 e!4413137)))

(declare-fun b!7371703 () Bool)

(assert (=> b!7371703 (= e!4413143 (> lt!2615683 call!677131))))

(declare-fun b!7371704 () Bool)

(assert (=> b!7371704 (= e!4413140 e!4413136)))

(declare-fun c!1370088 () Bool)

(assert (=> b!7371704 (= c!1370088 (is-Concat!28125 r1!2370))))

(declare-fun b!7371705 () Bool)

(assert (=> b!7371705 (= e!4413142 (> lt!2615683 call!677133))))

(declare-fun b!7371706 () Bool)

(assert (=> b!7371706 (= e!4413141 1)))

(declare-fun b!7371707 () Bool)

(declare-fun e!4413144 () Bool)

(assert (=> b!7371707 (= e!4413144 (> lt!2615683 call!677131))))

(declare-fun b!7371708 () Bool)

(assert (=> b!7371708 (= e!4413140 e!4413144)))

(declare-fun res!2974406 () Bool)

(assert (=> b!7371708 (= res!2974406 (> lt!2615683 call!677130))))

(assert (=> b!7371708 (=> (not res!2974406) (not e!4413144))))

(declare-fun b!7371709 () Bool)

(assert (=> b!7371709 (= e!4413142 (= lt!2615683 1))))

(declare-fun b!7371710 () Bool)

(declare-fun e!4413138 () Int)

(assert (=> b!7371710 (= e!4413138 1)))

(declare-fun b!7371711 () Bool)

(assert (=> b!7371711 (= e!4413141 (+ 1 call!677128))))

(declare-fun bm!677128 () Bool)

(assert (=> bm!677128 (= call!677130 (regexDepth!440 (ite c!1370087 (regOne!39073 r1!2370) (ite c!1370088 (regOne!39072 r1!2370) (reg!19609 r1!2370)))))))

(declare-fun d!2283903 () Bool)

(assert (=> d!2283903 e!4413139))

(declare-fun res!2974408 () Bool)

(assert (=> d!2283903 (=> (not res!2974408) (not e!4413139))))

(assert (=> d!2283903 (= res!2974408 (> lt!2615683 0))))

(assert (=> d!2283903 (= lt!2615683 e!4413138)))

(declare-fun c!1370083 () Bool)

(assert (=> d!2283903 (= c!1370083 (is-ElementMatch!19280 r1!2370))))

(assert (=> d!2283903 (= (regexDepth!440 r1!2370) lt!2615683)))

(declare-fun b!7371701 () Bool)

(assert (=> b!7371701 (= e!4413138 e!4413135)))

(assert (=> b!7371701 (= c!1370086 (is-Star!19280 r1!2370))))

(assert (= (and d!2283903 c!1370083) b!7371710))

(assert (= (and d!2283903 (not c!1370083)) b!7371701))

(assert (= (and b!7371701 c!1370086) b!7371699))

(assert (= (and b!7371701 (not c!1370086)) b!7371702))

(assert (= (and b!7371702 c!1370085) b!7371695))

(assert (= (and b!7371702 (not c!1370085)) b!7371698))

(assert (= (and b!7371698 c!1370082) b!7371711))

(assert (= (and b!7371698 (not c!1370082)) b!7371706))

(assert (= (or b!7371695 b!7371711) bm!677122))

(assert (= (or b!7371695 b!7371711) bm!677123))

(assert (= (or b!7371695 b!7371711) bm!677126))

(assert (= (or b!7371699 bm!677123) bm!677125))

(assert (= (and d!2283903 res!2974408) b!7371697))

(assert (= (and b!7371697 c!1370087) b!7371708))

(assert (= (and b!7371697 (not c!1370087)) b!7371704))

(assert (= (and b!7371708 res!2974406) b!7371707))

(assert (= (and b!7371704 c!1370088) b!7371696))

(assert (= (and b!7371704 (not c!1370088)) b!7371700))

(assert (= (and b!7371696 res!2974407) b!7371703))

(assert (= (and b!7371700 c!1370084) b!7371705))

(assert (= (and b!7371700 (not c!1370084)) b!7371709))

(assert (= (or b!7371696 b!7371705) bm!677124))

(assert (= (or b!7371707 b!7371703) bm!677127))

(assert (= (or b!7371708 bm!677124) bm!677128))

(declare-fun m!8025346 () Bool)

(assert (=> bm!677122 m!8025346))

(declare-fun m!8025348 () Bool)

(assert (=> bm!677127 m!8025348))

(declare-fun m!8025350 () Bool)

(assert (=> bm!677125 m!8025350))

(declare-fun m!8025352 () Bool)

(assert (=> bm!677128 m!8025352))

(declare-fun m!8025354 () Bool)

(assert (=> bm!677126 m!8025354))

(assert (=> b!7371428 d!2283903))

(declare-fun b!7371716 () Bool)

(declare-fun e!4413147 () Bool)

(declare-fun tp!2095632 () Bool)

(declare-fun tp!2095633 () Bool)

(assert (=> b!7371716 (= e!4413147 (and tp!2095632 tp!2095633))))

(assert (=> b!7371425 (= tp!2095599 e!4413147)))

(assert (= (and b!7371425 (is-Cons!71652 (exprs!8720 ct1!282))) b!7371716))

(declare-fun b!7371728 () Bool)

(declare-fun e!4413150 () Bool)

(declare-fun tp!2095648 () Bool)

(declare-fun tp!2095644 () Bool)

(assert (=> b!7371728 (= e!4413150 (and tp!2095648 tp!2095644))))

(assert (=> b!7371419 (= tp!2095597 e!4413150)))

(declare-fun b!7371727 () Bool)

(assert (=> b!7371727 (= e!4413150 tp_is_empty!48805)))

(declare-fun b!7371729 () Bool)

(declare-fun tp!2095646 () Bool)

(assert (=> b!7371729 (= e!4413150 tp!2095646)))

(declare-fun b!7371730 () Bool)

(declare-fun tp!2095645 () Bool)

(declare-fun tp!2095647 () Bool)

(assert (=> b!7371730 (= e!4413150 (and tp!2095645 tp!2095647))))

(assert (= (and b!7371419 (is-ElementMatch!19280 (regOne!39072 r1!2370))) b!7371727))

(assert (= (and b!7371419 (is-Concat!28125 (regOne!39072 r1!2370))) b!7371728))

(assert (= (and b!7371419 (is-Star!19280 (regOne!39072 r1!2370))) b!7371729))

(assert (= (and b!7371419 (is-Union!19280 (regOne!39072 r1!2370))) b!7371730))

(declare-fun b!7371732 () Bool)

(declare-fun e!4413151 () Bool)

(declare-fun tp!2095653 () Bool)

(declare-fun tp!2095649 () Bool)

(assert (=> b!7371732 (= e!4413151 (and tp!2095653 tp!2095649))))

(assert (=> b!7371419 (= tp!2095603 e!4413151)))

(declare-fun b!7371731 () Bool)

(assert (=> b!7371731 (= e!4413151 tp_is_empty!48805)))

(declare-fun b!7371733 () Bool)

(declare-fun tp!2095651 () Bool)

(assert (=> b!7371733 (= e!4413151 tp!2095651)))

(declare-fun b!7371734 () Bool)

(declare-fun tp!2095650 () Bool)

(declare-fun tp!2095652 () Bool)

(assert (=> b!7371734 (= e!4413151 (and tp!2095650 tp!2095652))))

(assert (= (and b!7371419 (is-ElementMatch!19280 (regTwo!39072 r1!2370))) b!7371731))

(assert (= (and b!7371419 (is-Concat!28125 (regTwo!39072 r1!2370))) b!7371732))

(assert (= (and b!7371419 (is-Star!19280 (regTwo!39072 r1!2370))) b!7371733))

(assert (= (and b!7371419 (is-Union!19280 (regTwo!39072 r1!2370))) b!7371734))

(declare-fun b!7371735 () Bool)

(declare-fun e!4413152 () Bool)

(declare-fun tp!2095654 () Bool)

(declare-fun tp!2095655 () Bool)

(assert (=> b!7371735 (= e!4413152 (and tp!2095654 tp!2095655))))

(assert (=> b!7371421 (= tp!2095596 e!4413152)))

(assert (= (and b!7371421 (is-Cons!71652 (exprs!8720 cWitness!61))) b!7371735))

(declare-fun b!7371737 () Bool)

(declare-fun e!4413153 () Bool)

(declare-fun tp!2095660 () Bool)

(declare-fun tp!2095656 () Bool)

(assert (=> b!7371737 (= e!4413153 (and tp!2095660 tp!2095656))))

(assert (=> b!7371420 (= tp!2095602 e!4413153)))

(declare-fun b!7371736 () Bool)

(assert (=> b!7371736 (= e!4413153 tp_is_empty!48805)))

(declare-fun b!7371738 () Bool)

(declare-fun tp!2095658 () Bool)

(assert (=> b!7371738 (= e!4413153 tp!2095658)))

(declare-fun b!7371739 () Bool)

(declare-fun tp!2095657 () Bool)

(declare-fun tp!2095659 () Bool)

(assert (=> b!7371739 (= e!4413153 (and tp!2095657 tp!2095659))))

(assert (= (and b!7371420 (is-ElementMatch!19280 (reg!19609 r1!2370))) b!7371736))

(assert (= (and b!7371420 (is-Concat!28125 (reg!19609 r1!2370))) b!7371737))

(assert (= (and b!7371420 (is-Star!19280 (reg!19609 r1!2370))) b!7371738))

(assert (= (and b!7371420 (is-Union!19280 (reg!19609 r1!2370))) b!7371739))

(declare-fun b!7371740 () Bool)

(declare-fun e!4413154 () Bool)

(declare-fun tp!2095661 () Bool)

(declare-fun tp!2095662 () Bool)

(assert (=> b!7371740 (= e!4413154 (and tp!2095661 tp!2095662))))

(assert (=> b!7371416 (= tp!2095600 e!4413154)))

(assert (= (and b!7371416 (is-Cons!71652 (exprs!8720 ct2!378))) b!7371740))

(declare-fun b!7371742 () Bool)

(declare-fun e!4413155 () Bool)

(declare-fun tp!2095667 () Bool)

(declare-fun tp!2095663 () Bool)

(assert (=> b!7371742 (= e!4413155 (and tp!2095667 tp!2095663))))

(assert (=> b!7371418 (= tp!2095601 e!4413155)))

(declare-fun b!7371741 () Bool)

(assert (=> b!7371741 (= e!4413155 tp_is_empty!48805)))

(declare-fun b!7371743 () Bool)

(declare-fun tp!2095665 () Bool)

(assert (=> b!7371743 (= e!4413155 tp!2095665)))

(declare-fun b!7371744 () Bool)

(declare-fun tp!2095664 () Bool)

(declare-fun tp!2095666 () Bool)

(assert (=> b!7371744 (= e!4413155 (and tp!2095664 tp!2095666))))

(assert (= (and b!7371418 (is-ElementMatch!19280 (regOne!39073 r1!2370))) b!7371741))

(assert (= (and b!7371418 (is-Concat!28125 (regOne!39073 r1!2370))) b!7371742))

(assert (= (and b!7371418 (is-Star!19280 (regOne!39073 r1!2370))) b!7371743))

(assert (= (and b!7371418 (is-Union!19280 (regOne!39073 r1!2370))) b!7371744))

(declare-fun b!7371746 () Bool)

(declare-fun e!4413156 () Bool)

(declare-fun tp!2095672 () Bool)

(declare-fun tp!2095668 () Bool)

(assert (=> b!7371746 (= e!4413156 (and tp!2095672 tp!2095668))))

(assert (=> b!7371418 (= tp!2095598 e!4413156)))

(declare-fun b!7371745 () Bool)

(assert (=> b!7371745 (= e!4413156 tp_is_empty!48805)))

(declare-fun b!7371747 () Bool)

(declare-fun tp!2095670 () Bool)

(assert (=> b!7371747 (= e!4413156 tp!2095670)))

(declare-fun b!7371748 () Bool)

(declare-fun tp!2095669 () Bool)

(declare-fun tp!2095671 () Bool)

(assert (=> b!7371748 (= e!4413156 (and tp!2095669 tp!2095671))))

(assert (= (and b!7371418 (is-ElementMatch!19280 (regTwo!39073 r1!2370))) b!7371745))

(assert (= (and b!7371418 (is-Concat!28125 (regTwo!39073 r1!2370))) b!7371746))

(assert (= (and b!7371418 (is-Star!19280 (regTwo!39073 r1!2370))) b!7371747))

(assert (= (and b!7371418 (is-Union!19280 (regTwo!39073 r1!2370))) b!7371748))

(push 1)

(assert (not bm!677052))

(assert (not bm!677064))

(assert (not b!7371744))

(assert (not b!7371593))

(assert (not bm!677116))

(assert (not b!7371728))

(assert (not d!2283889))

(assert (not bm!677086))

(assert (not b!7371733))

(assert (not bm!677087))

(assert (not bm!677119))

(assert (not bm!677125))

(assert (not b!7371732))

(assert (not b!7371737))

(assert (not b!7371739))

(assert (not b!7371742))

(assert (not d!2283873))

(assert (not b!7371716))

(assert (not d!2283879))

(assert (not bm!677065))

(assert (not b!7371491))

(assert (not b!7371551))

(assert (not b!7371740))

(assert (not bm!677061))

(assert (not d!2283877))

(assert (not b!7371729))

(assert (not b!7371748))

(assert (not bm!677079))

(assert (not bm!677075))

(assert (not bm!677072))

(assert (not bm!677118))

(assert (not b!7371730))

(assert (not bm!677039))

(assert (not b!7371592))

(assert (not bm!677078))

(assert (not b!7371743))

(assert (not b!7371746))

(assert (not bm!677051))

(assert (not b!7371738))

(assert (not b!7371542))

(assert (not bm!677128))

(assert tp_is_empty!48805)

(assert (not b!7371573))

(assert (not bm!677122))

(assert (not bm!677040))

(assert (not b!7371735))

(assert (not bm!677036))

(assert (not b!7371734))

(assert (not bm!677127))

(assert (not bm!677113))

(assert (not b!7371562))

(assert (not bm!677069))

(assert (not d!2283875))

(assert (not b!7371747))

(assert (not d!2283891))

(assert (not bm!677073))

(assert (not bm!677126))

(assert (not b!7371607))

(assert (not bm!677117))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

