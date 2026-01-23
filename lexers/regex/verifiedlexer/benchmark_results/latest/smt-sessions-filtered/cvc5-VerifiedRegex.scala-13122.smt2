; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717294 () Bool)

(assert start!717294)

(declare-fun b!7344682 () Bool)

(declare-fun e!4397901 () Bool)

(declare-fun tp!2085783 () Bool)

(assert (=> b!7344682 (= e!4397901 tp!2085783)))

(declare-fun b!7344683 () Bool)

(declare-fun e!4397905 () Bool)

(declare-fun tp!2085781 () Bool)

(assert (=> b!7344683 (= e!4397905 tp!2085781)))

(declare-fun b!7344684 () Bool)

(declare-fun res!2966670 () Bool)

(declare-fun e!4397902 () Bool)

(assert (=> b!7344684 (=> (not res!2966670) (not e!4397902))))

(declare-datatypes ((C!38538 0))(
  ( (C!38539 (val!29629 Int)) )
))
(declare-datatypes ((Regex!19132 0))(
  ( (ElementMatch!19132 (c!1364356 C!38538)) (Concat!27977 (regOne!38776 Regex!19132) (regTwo!38776 Regex!19132)) (EmptyExpr!19132) (Star!19132 (reg!19461 Regex!19132)) (EmptyLang!19132) (Union!19132 (regOne!38777 Regex!19132) (regTwo!38777 Regex!19132)) )
))
(declare-fun r1!2370 () Regex!19132)

(declare-fun nullable!8225 (Regex!19132) Bool)

(assert (=> b!7344684 (= res!2966670 (nullable!8225 (regOne!38776 r1!2370)))))

(declare-fun b!7344685 () Bool)

(declare-fun res!2966671 () Bool)

(assert (=> b!7344685 (=> (not res!2966671) (not e!4397902))))

(declare-fun validRegex!9728 (Regex!19132) Bool)

(assert (=> b!7344685 (= res!2966671 (validRegex!9728 (regTwo!38776 r1!2370)))))

(declare-fun b!7344686 () Bool)

(declare-fun e!4397904 () Bool)

(assert (=> b!7344686 (= e!4397904 e!4397902)))

(declare-fun res!2966667 () Bool)

(assert (=> b!7344686 (=> (not res!2966667) (not e!4397902))))

(declare-fun c!10362 () C!38538)

(assert (=> b!7344686 (= res!2966667 (and (or (not (is-ElementMatch!19132 r1!2370)) (not (= c!10362 (c!1364356 r1!2370)))) (not (is-Union!19132 r1!2370)) (is-Concat!27977 r1!2370)))))

(declare-datatypes ((List!71628 0))(
  ( (Nil!71504) (Cons!71504 (h!77952 Regex!19132) (t!386023 List!71628)) )
))
(declare-datatypes ((Context!16144 0))(
  ( (Context!16145 (exprs!8572 List!71628)) )
))
(declare-fun lt!2610878 () (Set Context!16144))

(declare-fun ct1!282 () Context!16144)

(declare-fun ct2!378 () Context!16144)

(declare-fun derivationStepZipperDown!2958 (Regex!19132 Context!16144 C!38538) (Set Context!16144))

(declare-fun ++!16950 (List!71628 List!71628) List!71628)

(assert (=> b!7344686 (= lt!2610878 (derivationStepZipperDown!2958 r1!2370 (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378))) c!10362))))

(declare-fun lambda!455986 () Int)

(declare-datatypes ((Unit!165217 0))(
  ( (Unit!165218) )
))
(declare-fun lt!2610879 () Unit!165217)

(declare-fun lemmaConcatPreservesForall!1807 (List!71628 List!71628 Int) Unit!165217)

(assert (=> b!7344686 (= lt!2610879 (lemmaConcatPreservesForall!1807 (exprs!8572 ct1!282) (exprs!8572 ct2!378) lambda!455986))))

(declare-fun b!7344687 () Bool)

(declare-fun e!4397906 () Bool)

(declare-fun tp!2085780 () Bool)

(assert (=> b!7344687 (= e!4397906 tp!2085780)))

(declare-fun b!7344689 () Bool)

(declare-fun e!4397903 () Bool)

(declare-fun tp!2085782 () Bool)

(declare-fun tp!2085778 () Bool)

(assert (=> b!7344689 (= e!4397903 (and tp!2085782 tp!2085778))))

(declare-fun b!7344690 () Bool)

(assert (=> b!7344690 (= e!4397902 (not (validRegex!9728 (regOne!38776 r1!2370))))))

(declare-fun b!7344691 () Bool)

(declare-fun tp!2085785 () Bool)

(assert (=> b!7344691 (= e!4397903 tp!2085785)))

(declare-fun b!7344692 () Bool)

(declare-fun tp!2085779 () Bool)

(declare-fun tp!2085784 () Bool)

(assert (=> b!7344692 (= e!4397903 (and tp!2085779 tp!2085784))))

(declare-fun b!7344693 () Bool)

(declare-fun res!2966669 () Bool)

(assert (=> b!7344693 (=> (not res!2966669) (not e!4397904))))

(declare-fun cWitness!61 () Context!16144)

(assert (=> b!7344693 (= res!2966669 (set.member cWitness!61 (derivationStepZipperDown!2958 r1!2370 ct1!282 c!10362)))))

(declare-fun res!2966668 () Bool)

(assert (=> start!717294 (=> (not res!2966668) (not e!4397904))))

(assert (=> start!717294 (= res!2966668 (validRegex!9728 r1!2370))))

(assert (=> start!717294 e!4397904))

(declare-fun tp_is_empty!48509 () Bool)

(assert (=> start!717294 tp_is_empty!48509))

(declare-fun inv!91171 (Context!16144) Bool)

(assert (=> start!717294 (and (inv!91171 cWitness!61) e!4397901)))

(assert (=> start!717294 (and (inv!91171 ct1!282) e!4397906)))

(assert (=> start!717294 e!4397903))

(assert (=> start!717294 (and (inv!91171 ct2!378) e!4397905)))

(declare-fun b!7344688 () Bool)

(assert (=> b!7344688 (= e!4397903 tp_is_empty!48509)))

(assert (= (and start!717294 res!2966668) b!7344693))

(assert (= (and b!7344693 res!2966669) b!7344686))

(assert (= (and b!7344686 res!2966667) b!7344684))

(assert (= (and b!7344684 res!2966670) b!7344685))

(assert (= (and b!7344685 res!2966671) b!7344690))

(assert (= start!717294 b!7344682))

(assert (= start!717294 b!7344687))

(assert (= (and start!717294 (is-ElementMatch!19132 r1!2370)) b!7344688))

(assert (= (and start!717294 (is-Concat!27977 r1!2370)) b!7344689))

(assert (= (and start!717294 (is-Star!19132 r1!2370)) b!7344691))

(assert (= (and start!717294 (is-Union!19132 r1!2370)) b!7344692))

(assert (= start!717294 b!7344683))

(declare-fun m!8007378 () Bool)

(assert (=> start!717294 m!8007378))

(declare-fun m!8007380 () Bool)

(assert (=> start!717294 m!8007380))

(declare-fun m!8007382 () Bool)

(assert (=> start!717294 m!8007382))

(declare-fun m!8007384 () Bool)

(assert (=> start!717294 m!8007384))

(declare-fun m!8007386 () Bool)

(assert (=> b!7344684 m!8007386))

(declare-fun m!8007388 () Bool)

(assert (=> b!7344686 m!8007388))

(declare-fun m!8007390 () Bool)

(assert (=> b!7344686 m!8007390))

(declare-fun m!8007392 () Bool)

(assert (=> b!7344686 m!8007392))

(declare-fun m!8007394 () Bool)

(assert (=> b!7344693 m!8007394))

(declare-fun m!8007396 () Bool)

(assert (=> b!7344693 m!8007396))

(declare-fun m!8007398 () Bool)

(assert (=> b!7344685 m!8007398))

(declare-fun m!8007400 () Bool)

(assert (=> b!7344690 m!8007400))

(push 1)

(assert (not b!7344687))

(assert (not b!7344690))

(assert (not start!717294))

(assert tp_is_empty!48509)

(assert (not b!7344691))

(assert (not b!7344693))

(assert (not b!7344689))

(assert (not b!7344685))

(assert (not b!7344683))

(assert (not b!7344684))

(assert (not b!7344682))

(assert (not b!7344686))

(assert (not b!7344692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7344749 () Bool)

(declare-fun e!4397940 () Bool)

(declare-fun e!4397945 () Bool)

(assert (=> b!7344749 (= e!4397940 e!4397945)))

(declare-fun res!2966701 () Bool)

(assert (=> b!7344749 (= res!2966701 (not (nullable!8225 (reg!19461 r1!2370))))))

(assert (=> b!7344749 (=> (not res!2966701) (not e!4397945))))

(declare-fun b!7344750 () Bool)

(declare-fun call!670933 () Bool)

(assert (=> b!7344750 (= e!4397945 call!670933)))

(declare-fun b!7344751 () Bool)

(declare-fun res!2966698 () Bool)

(declare-fun e!4397939 () Bool)

(assert (=> b!7344751 (=> (not res!2966698) (not e!4397939))))

(declare-fun call!670934 () Bool)

(assert (=> b!7344751 (= res!2966698 call!670934)))

(declare-fun e!4397944 () Bool)

(assert (=> b!7344751 (= e!4397944 e!4397939)))

(declare-fun b!7344752 () Bool)

(declare-fun e!4397942 () Bool)

(assert (=> b!7344752 (= e!4397942 call!670934)))

(declare-fun b!7344753 () Bool)

(declare-fun e!4397943 () Bool)

(assert (=> b!7344753 (= e!4397943 e!4397942)))

(declare-fun res!2966697 () Bool)

(assert (=> b!7344753 (=> (not res!2966697) (not e!4397942))))

(declare-fun call!670932 () Bool)

(assert (=> b!7344753 (= res!2966697 call!670932)))

(declare-fun b!7344754 () Bool)

(declare-fun e!4397941 () Bool)

(assert (=> b!7344754 (= e!4397941 e!4397940)))

(declare-fun c!1364363 () Bool)

(assert (=> b!7344754 (= c!1364363 (is-Star!19132 r1!2370))))

(declare-fun b!7344755 () Bool)

(assert (=> b!7344755 (= e!4397939 call!670932)))

(declare-fun b!7344756 () Bool)

(assert (=> b!7344756 (= e!4397940 e!4397944)))

(declare-fun c!1364362 () Bool)

(assert (=> b!7344756 (= c!1364362 (is-Union!19132 r1!2370))))

(declare-fun bm!670927 () Bool)

(assert (=> bm!670927 (= call!670932 call!670933)))

(declare-fun b!7344748 () Bool)

(declare-fun res!2966699 () Bool)

(assert (=> b!7344748 (=> res!2966699 e!4397943)))

(assert (=> b!7344748 (= res!2966699 (not (is-Concat!27977 r1!2370)))))

(assert (=> b!7344748 (= e!4397944 e!4397943)))

(declare-fun d!2279405 () Bool)

(declare-fun res!2966700 () Bool)

(assert (=> d!2279405 (=> res!2966700 e!4397941)))

(assert (=> d!2279405 (= res!2966700 (is-ElementMatch!19132 r1!2370))))

(assert (=> d!2279405 (= (validRegex!9728 r1!2370) e!4397941)))

(declare-fun bm!670928 () Bool)

(assert (=> bm!670928 (= call!670934 (validRegex!9728 (ite c!1364362 (regOne!38777 r1!2370) (regTwo!38776 r1!2370))))))

(declare-fun bm!670929 () Bool)

(assert (=> bm!670929 (= call!670933 (validRegex!9728 (ite c!1364363 (reg!19461 r1!2370) (ite c!1364362 (regTwo!38777 r1!2370) (regOne!38776 r1!2370)))))))

(assert (= (and d!2279405 (not res!2966700)) b!7344754))

(assert (= (and b!7344754 c!1364363) b!7344749))

(assert (= (and b!7344754 (not c!1364363)) b!7344756))

(assert (= (and b!7344749 res!2966701) b!7344750))

(assert (= (and b!7344756 c!1364362) b!7344751))

(assert (= (and b!7344756 (not c!1364362)) b!7344748))

(assert (= (and b!7344751 res!2966698) b!7344755))

(assert (= (and b!7344748 (not res!2966699)) b!7344753))

(assert (= (and b!7344753 res!2966697) b!7344752))

(assert (= (or b!7344751 b!7344752) bm!670928))

(assert (= (or b!7344755 b!7344753) bm!670927))

(assert (= (or b!7344750 bm!670927) bm!670929))

(declare-fun m!8007426 () Bool)

(assert (=> b!7344749 m!8007426))

(declare-fun m!8007428 () Bool)

(assert (=> bm!670928 m!8007428))

(declare-fun m!8007430 () Bool)

(assert (=> bm!670929 m!8007430))

(assert (=> start!717294 d!2279405))

(declare-fun bs!1918755 () Bool)

(declare-fun d!2279409 () Bool)

(assert (= bs!1918755 (and d!2279409 b!7344686)))

(declare-fun lambda!455992 () Int)

(assert (=> bs!1918755 (= lambda!455992 lambda!455986)))

(declare-fun forall!17962 (List!71628 Int) Bool)

(assert (=> d!2279409 (= (inv!91171 cWitness!61) (forall!17962 (exprs!8572 cWitness!61) lambda!455992))))

(declare-fun bs!1918756 () Bool)

(assert (= bs!1918756 d!2279409))

(declare-fun m!8007434 () Bool)

(assert (=> bs!1918756 m!8007434))

(assert (=> start!717294 d!2279409))

(declare-fun bs!1918757 () Bool)

(declare-fun d!2279413 () Bool)

(assert (= bs!1918757 (and d!2279413 b!7344686)))

(declare-fun lambda!455993 () Int)

(assert (=> bs!1918757 (= lambda!455993 lambda!455986)))

(declare-fun bs!1918758 () Bool)

(assert (= bs!1918758 (and d!2279413 d!2279409)))

(assert (=> bs!1918758 (= lambda!455993 lambda!455992)))

(assert (=> d!2279413 (= (inv!91171 ct1!282) (forall!17962 (exprs!8572 ct1!282) lambda!455993))))

(declare-fun bs!1918759 () Bool)

(assert (= bs!1918759 d!2279413))

(declare-fun m!8007436 () Bool)

(assert (=> bs!1918759 m!8007436))

(assert (=> start!717294 d!2279413))

(declare-fun bs!1918760 () Bool)

(declare-fun d!2279415 () Bool)

(assert (= bs!1918760 (and d!2279415 b!7344686)))

(declare-fun lambda!455994 () Int)

(assert (=> bs!1918760 (= lambda!455994 lambda!455986)))

(declare-fun bs!1918761 () Bool)

(assert (= bs!1918761 (and d!2279415 d!2279409)))

(assert (=> bs!1918761 (= lambda!455994 lambda!455992)))

(declare-fun bs!1918762 () Bool)

(assert (= bs!1918762 (and d!2279415 d!2279413)))

(assert (=> bs!1918762 (= lambda!455994 lambda!455993)))

(assert (=> d!2279415 (= (inv!91171 ct2!378) (forall!17962 (exprs!8572 ct2!378) lambda!455994))))

(declare-fun bs!1918763 () Bool)

(assert (= bs!1918763 d!2279415))

(declare-fun m!8007438 () Bool)

(assert (=> bs!1918763 m!8007438))

(assert (=> start!717294 d!2279415))

(declare-fun b!7344758 () Bool)

(declare-fun e!4397947 () Bool)

(declare-fun e!4397952 () Bool)

(assert (=> b!7344758 (= e!4397947 e!4397952)))

(declare-fun res!2966706 () Bool)

(assert (=> b!7344758 (= res!2966706 (not (nullable!8225 (reg!19461 (regTwo!38776 r1!2370)))))))

(assert (=> b!7344758 (=> (not res!2966706) (not e!4397952))))

(declare-fun b!7344759 () Bool)

(declare-fun call!670936 () Bool)

(assert (=> b!7344759 (= e!4397952 call!670936)))

(declare-fun b!7344760 () Bool)

(declare-fun res!2966703 () Bool)

(declare-fun e!4397946 () Bool)

(assert (=> b!7344760 (=> (not res!2966703) (not e!4397946))))

(declare-fun call!670937 () Bool)

(assert (=> b!7344760 (= res!2966703 call!670937)))

(declare-fun e!4397951 () Bool)

(assert (=> b!7344760 (= e!4397951 e!4397946)))

(declare-fun b!7344761 () Bool)

(declare-fun e!4397949 () Bool)

(assert (=> b!7344761 (= e!4397949 call!670937)))

(declare-fun b!7344762 () Bool)

(declare-fun e!4397950 () Bool)

(assert (=> b!7344762 (= e!4397950 e!4397949)))

(declare-fun res!2966702 () Bool)

(assert (=> b!7344762 (=> (not res!2966702) (not e!4397949))))

(declare-fun call!670935 () Bool)

(assert (=> b!7344762 (= res!2966702 call!670935)))

(declare-fun b!7344763 () Bool)

(declare-fun e!4397948 () Bool)

(assert (=> b!7344763 (= e!4397948 e!4397947)))

(declare-fun c!1364365 () Bool)

(assert (=> b!7344763 (= c!1364365 (is-Star!19132 (regTwo!38776 r1!2370)))))

(declare-fun b!7344764 () Bool)

(assert (=> b!7344764 (= e!4397946 call!670935)))

(declare-fun b!7344765 () Bool)

(assert (=> b!7344765 (= e!4397947 e!4397951)))

(declare-fun c!1364364 () Bool)

(assert (=> b!7344765 (= c!1364364 (is-Union!19132 (regTwo!38776 r1!2370)))))

(declare-fun bm!670930 () Bool)

(assert (=> bm!670930 (= call!670935 call!670936)))

(declare-fun b!7344757 () Bool)

(declare-fun res!2966704 () Bool)

(assert (=> b!7344757 (=> res!2966704 e!4397950)))

(assert (=> b!7344757 (= res!2966704 (not (is-Concat!27977 (regTwo!38776 r1!2370))))))

(assert (=> b!7344757 (= e!4397951 e!4397950)))

(declare-fun d!2279417 () Bool)

(declare-fun res!2966705 () Bool)

(assert (=> d!2279417 (=> res!2966705 e!4397948)))

(assert (=> d!2279417 (= res!2966705 (is-ElementMatch!19132 (regTwo!38776 r1!2370)))))

(assert (=> d!2279417 (= (validRegex!9728 (regTwo!38776 r1!2370)) e!4397948)))

(declare-fun bm!670931 () Bool)

(assert (=> bm!670931 (= call!670937 (validRegex!9728 (ite c!1364364 (regOne!38777 (regTwo!38776 r1!2370)) (regTwo!38776 (regTwo!38776 r1!2370)))))))

(declare-fun bm!670932 () Bool)

(assert (=> bm!670932 (= call!670936 (validRegex!9728 (ite c!1364365 (reg!19461 (regTwo!38776 r1!2370)) (ite c!1364364 (regTwo!38777 (regTwo!38776 r1!2370)) (regOne!38776 (regTwo!38776 r1!2370))))))))

(assert (= (and d!2279417 (not res!2966705)) b!7344763))

(assert (= (and b!7344763 c!1364365) b!7344758))

(assert (= (and b!7344763 (not c!1364365)) b!7344765))

(assert (= (and b!7344758 res!2966706) b!7344759))

(assert (= (and b!7344765 c!1364364) b!7344760))

(assert (= (and b!7344765 (not c!1364364)) b!7344757))

(assert (= (and b!7344760 res!2966703) b!7344764))

(assert (= (and b!7344757 (not res!2966704)) b!7344762))

(assert (= (and b!7344762 res!2966702) b!7344761))

(assert (= (or b!7344760 b!7344761) bm!670931))

(assert (= (or b!7344764 b!7344762) bm!670930))

(assert (= (or b!7344759 bm!670930) bm!670932))

(declare-fun m!8007440 () Bool)

(assert (=> b!7344758 m!8007440))

(declare-fun m!8007442 () Bool)

(assert (=> bm!670931 m!8007442))

(declare-fun m!8007444 () Bool)

(assert (=> bm!670932 m!8007444))

(assert (=> b!7344685 d!2279417))

(declare-fun b!7344767 () Bool)

(declare-fun e!4397954 () Bool)

(declare-fun e!4397959 () Bool)

(assert (=> b!7344767 (= e!4397954 e!4397959)))

(declare-fun res!2966711 () Bool)

(assert (=> b!7344767 (= res!2966711 (not (nullable!8225 (reg!19461 (regOne!38776 r1!2370)))))))

(assert (=> b!7344767 (=> (not res!2966711) (not e!4397959))))

(declare-fun b!7344768 () Bool)

(declare-fun call!670939 () Bool)

(assert (=> b!7344768 (= e!4397959 call!670939)))

(declare-fun b!7344769 () Bool)

(declare-fun res!2966708 () Bool)

(declare-fun e!4397953 () Bool)

(assert (=> b!7344769 (=> (not res!2966708) (not e!4397953))))

(declare-fun call!670940 () Bool)

(assert (=> b!7344769 (= res!2966708 call!670940)))

(declare-fun e!4397958 () Bool)

(assert (=> b!7344769 (= e!4397958 e!4397953)))

(declare-fun b!7344770 () Bool)

(declare-fun e!4397956 () Bool)

(assert (=> b!7344770 (= e!4397956 call!670940)))

(declare-fun b!7344771 () Bool)

(declare-fun e!4397957 () Bool)

(assert (=> b!7344771 (= e!4397957 e!4397956)))

(declare-fun res!2966707 () Bool)

(assert (=> b!7344771 (=> (not res!2966707) (not e!4397956))))

(declare-fun call!670938 () Bool)

(assert (=> b!7344771 (= res!2966707 call!670938)))

(declare-fun b!7344772 () Bool)

(declare-fun e!4397955 () Bool)

(assert (=> b!7344772 (= e!4397955 e!4397954)))

(declare-fun c!1364367 () Bool)

(assert (=> b!7344772 (= c!1364367 (is-Star!19132 (regOne!38776 r1!2370)))))

(declare-fun b!7344773 () Bool)

(assert (=> b!7344773 (= e!4397953 call!670938)))

(declare-fun b!7344774 () Bool)

(assert (=> b!7344774 (= e!4397954 e!4397958)))

(declare-fun c!1364366 () Bool)

(assert (=> b!7344774 (= c!1364366 (is-Union!19132 (regOne!38776 r1!2370)))))

(declare-fun bm!670933 () Bool)

(assert (=> bm!670933 (= call!670938 call!670939)))

(declare-fun b!7344766 () Bool)

(declare-fun res!2966709 () Bool)

(assert (=> b!7344766 (=> res!2966709 e!4397957)))

(assert (=> b!7344766 (= res!2966709 (not (is-Concat!27977 (regOne!38776 r1!2370))))))

(assert (=> b!7344766 (= e!4397958 e!4397957)))

(declare-fun d!2279419 () Bool)

(declare-fun res!2966710 () Bool)

(assert (=> d!2279419 (=> res!2966710 e!4397955)))

(assert (=> d!2279419 (= res!2966710 (is-ElementMatch!19132 (regOne!38776 r1!2370)))))

(assert (=> d!2279419 (= (validRegex!9728 (regOne!38776 r1!2370)) e!4397955)))

(declare-fun bm!670934 () Bool)

(assert (=> bm!670934 (= call!670940 (validRegex!9728 (ite c!1364366 (regOne!38777 (regOne!38776 r1!2370)) (regTwo!38776 (regOne!38776 r1!2370)))))))

(declare-fun bm!670935 () Bool)

(assert (=> bm!670935 (= call!670939 (validRegex!9728 (ite c!1364367 (reg!19461 (regOne!38776 r1!2370)) (ite c!1364366 (regTwo!38777 (regOne!38776 r1!2370)) (regOne!38776 (regOne!38776 r1!2370))))))))

(assert (= (and d!2279419 (not res!2966710)) b!7344772))

(assert (= (and b!7344772 c!1364367) b!7344767))

(assert (= (and b!7344772 (not c!1364367)) b!7344774))

(assert (= (and b!7344767 res!2966711) b!7344768))

(assert (= (and b!7344774 c!1364366) b!7344769))

(assert (= (and b!7344774 (not c!1364366)) b!7344766))

(assert (= (and b!7344769 res!2966708) b!7344773))

(assert (= (and b!7344766 (not res!2966709)) b!7344771))

(assert (= (and b!7344771 res!2966707) b!7344770))

(assert (= (or b!7344769 b!7344770) bm!670934))

(assert (= (or b!7344773 b!7344771) bm!670933))

(assert (= (or b!7344768 bm!670933) bm!670935))

(declare-fun m!8007446 () Bool)

(assert (=> b!7344767 m!8007446))

(declare-fun m!8007448 () Bool)

(assert (=> bm!670934 m!8007448))

(declare-fun m!8007450 () Bool)

(assert (=> bm!670935 m!8007450))

(assert (=> b!7344690 d!2279419))

(declare-fun call!670964 () List!71628)

(declare-fun bm!670956 () Bool)

(declare-fun c!1364388 () Bool)

(declare-fun c!1364389 () Bool)

(declare-fun $colon$colon!3132 (List!71628 Regex!19132) List!71628)

(assert (=> bm!670956 (= call!670964 ($colon$colon!3132 (exprs!8572 (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378)))) (ite (or c!1364388 c!1364389) (regTwo!38776 r1!2370) r1!2370)))))

(declare-fun bm!670957 () Bool)

(declare-fun call!670966 () (Set Context!16144))

(declare-fun call!670961 () (Set Context!16144))

(assert (=> bm!670957 (= call!670966 call!670961)))

(declare-fun b!7344819 () Bool)

(declare-fun c!1364392 () Bool)

(assert (=> b!7344819 (= c!1364392 (is-Star!19132 r1!2370))))

(declare-fun e!4397989 () (Set Context!16144))

(declare-fun e!4397986 () (Set Context!16144))

(assert (=> b!7344819 (= e!4397989 e!4397986)))

(declare-fun b!7344820 () Bool)

(assert (=> b!7344820 (= e!4397986 (as set.empty (Set Context!16144)))))

(declare-fun b!7344821 () Bool)

(declare-fun e!4397987 () (Set Context!16144))

(declare-fun e!4397984 () (Set Context!16144))

(assert (=> b!7344821 (= e!4397987 e!4397984)))

(declare-fun c!1364391 () Bool)

(assert (=> b!7344821 (= c!1364391 (is-Union!19132 r1!2370))))

(declare-fun b!7344822 () Bool)

(declare-fun e!4397985 () Bool)

(assert (=> b!7344822 (= c!1364388 e!4397985)))

(declare-fun res!2966716 () Bool)

(assert (=> b!7344822 (=> (not res!2966716) (not e!4397985))))

(assert (=> b!7344822 (= res!2966716 (is-Concat!27977 r1!2370))))

(declare-fun e!4397988 () (Set Context!16144))

(assert (=> b!7344822 (= e!4397984 e!4397988)))

(declare-fun b!7344823 () Bool)

(assert (=> b!7344823 (= e!4397985 (nullable!8225 (regOne!38776 r1!2370)))))

(declare-fun b!7344824 () Bool)

(declare-fun call!670962 () (Set Context!16144))

(declare-fun call!670963 () (Set Context!16144))

(assert (=> b!7344824 (= e!4397984 (set.union call!670962 call!670963))))

(declare-fun b!7344825 () Bool)

(assert (=> b!7344825 (= e!4397988 (set.union call!670962 call!670961))))

(declare-fun b!7344826 () Bool)

(assert (=> b!7344826 (= e!4397987 (set.insert (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378))) (as set.empty (Set Context!16144))))))

(declare-fun bm!670958 () Bool)

(assert (=> bm!670958 (= call!670961 call!670963)))

(declare-fun b!7344827 () Bool)

(assert (=> b!7344827 (= e!4397988 e!4397989)))

(assert (=> b!7344827 (= c!1364389 (is-Concat!27977 r1!2370))))

(declare-fun b!7344828 () Bool)

(assert (=> b!7344828 (= e!4397989 call!670966)))

(declare-fun b!7344829 () Bool)

(assert (=> b!7344829 (= e!4397986 call!670966)))

(declare-fun bm!670960 () Bool)

(assert (=> bm!670960 (= call!670962 (derivationStepZipperDown!2958 (ite c!1364391 (regOne!38777 r1!2370) (regOne!38776 r1!2370)) (ite c!1364391 (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378))) (Context!16145 call!670964)) c!10362))))

(declare-fun bm!670961 () Bool)

(declare-fun call!670965 () List!71628)

(assert (=> bm!670961 (= call!670965 call!670964)))

(declare-fun d!2279421 () Bool)

(declare-fun c!1364390 () Bool)

(assert (=> d!2279421 (= c!1364390 (and (is-ElementMatch!19132 r1!2370) (= (c!1364356 r1!2370) c!10362)))))

(assert (=> d!2279421 (= (derivationStepZipperDown!2958 r1!2370 (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378))) c!10362) e!4397987)))

(declare-fun bm!670959 () Bool)

(assert (=> bm!670959 (= call!670963 (derivationStepZipperDown!2958 (ite c!1364391 (regTwo!38777 r1!2370) (ite c!1364388 (regTwo!38776 r1!2370) (ite c!1364389 (regOne!38776 r1!2370) (reg!19461 r1!2370)))) (ite (or c!1364391 c!1364388) (Context!16145 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378))) (Context!16145 call!670965)) c!10362))))

(assert (= (and d!2279421 c!1364390) b!7344826))

(assert (= (and d!2279421 (not c!1364390)) b!7344821))

(assert (= (and b!7344821 c!1364391) b!7344824))

(assert (= (and b!7344821 (not c!1364391)) b!7344822))

(assert (= (and b!7344822 res!2966716) b!7344823))

(assert (= (and b!7344822 c!1364388) b!7344825))

(assert (= (and b!7344822 (not c!1364388)) b!7344827))

(assert (= (and b!7344827 c!1364389) b!7344828))

(assert (= (and b!7344827 (not c!1364389)) b!7344819))

(assert (= (and b!7344819 c!1364392) b!7344829))

(assert (= (and b!7344819 (not c!1364392)) b!7344820))

(assert (= (or b!7344828 b!7344829) bm!670961))

(assert (= (or b!7344828 b!7344829) bm!670957))

(assert (= (or b!7344825 bm!670957) bm!670958))

(assert (= (or b!7344825 bm!670961) bm!670956))

(assert (= (or b!7344824 bm!670958) bm!670959))

(assert (= (or b!7344824 b!7344825) bm!670960))

(assert (=> b!7344823 m!8007386))

(declare-fun m!8007452 () Bool)

(assert (=> bm!670956 m!8007452))

(declare-fun m!8007454 () Bool)

(assert (=> bm!670959 m!8007454))

(declare-fun m!8007456 () Bool)

(assert (=> b!7344826 m!8007456))

(declare-fun m!8007458 () Bool)

(assert (=> bm!670960 m!8007458))

(assert (=> b!7344686 d!2279421))

(declare-fun e!4397994 () Bool)

(declare-fun b!7344841 () Bool)

(declare-fun lt!2610888 () List!71628)

(assert (=> b!7344841 (= e!4397994 (or (not (= (exprs!8572 ct2!378) Nil!71504)) (= lt!2610888 (exprs!8572 ct1!282))))))

(declare-fun d!2279423 () Bool)

(assert (=> d!2279423 e!4397994))

(declare-fun res!2966722 () Bool)

(assert (=> d!2279423 (=> (not res!2966722) (not e!4397994))))

(declare-fun content!15046 (List!71628) (Set Regex!19132))

(assert (=> d!2279423 (= res!2966722 (= (content!15046 lt!2610888) (set.union (content!15046 (exprs!8572 ct1!282)) (content!15046 (exprs!8572 ct2!378)))))))

(declare-fun e!4397995 () List!71628)

(assert (=> d!2279423 (= lt!2610888 e!4397995)))

(declare-fun c!1364395 () Bool)

(assert (=> d!2279423 (= c!1364395 (is-Nil!71504 (exprs!8572 ct1!282)))))

(assert (=> d!2279423 (= (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378)) lt!2610888)))

(declare-fun b!7344838 () Bool)

(assert (=> b!7344838 (= e!4397995 (exprs!8572 ct2!378))))

(declare-fun b!7344840 () Bool)

(declare-fun res!2966721 () Bool)

(assert (=> b!7344840 (=> (not res!2966721) (not e!4397994))))

(declare-fun size!42025 (List!71628) Int)

(assert (=> b!7344840 (= res!2966721 (= (size!42025 lt!2610888) (+ (size!42025 (exprs!8572 ct1!282)) (size!42025 (exprs!8572 ct2!378)))))))

(declare-fun b!7344839 () Bool)

(assert (=> b!7344839 (= e!4397995 (Cons!71504 (h!77952 (exprs!8572 ct1!282)) (++!16950 (t!386023 (exprs!8572 ct1!282)) (exprs!8572 ct2!378))))))

(assert (= (and d!2279423 c!1364395) b!7344838))

(assert (= (and d!2279423 (not c!1364395)) b!7344839))

(assert (= (and d!2279423 res!2966722) b!7344840))

(assert (= (and b!7344840 res!2966721) b!7344841))

(declare-fun m!8007460 () Bool)

(assert (=> d!2279423 m!8007460))

(declare-fun m!8007462 () Bool)

(assert (=> d!2279423 m!8007462))

(declare-fun m!8007464 () Bool)

(assert (=> d!2279423 m!8007464))

(declare-fun m!8007466 () Bool)

(assert (=> b!7344840 m!8007466))

(declare-fun m!8007468 () Bool)

(assert (=> b!7344840 m!8007468))

(declare-fun m!8007470 () Bool)

(assert (=> b!7344840 m!8007470))

(declare-fun m!8007472 () Bool)

(assert (=> b!7344839 m!8007472))

(assert (=> b!7344686 d!2279423))

(declare-fun d!2279425 () Bool)

(assert (=> d!2279425 (forall!17962 (++!16950 (exprs!8572 ct1!282) (exprs!8572 ct2!378)) lambda!455986)))

(declare-fun lt!2610891 () Unit!165217)

(declare-fun choose!57130 (List!71628 List!71628 Int) Unit!165217)

(assert (=> d!2279425 (= lt!2610891 (choose!57130 (exprs!8572 ct1!282) (exprs!8572 ct2!378) lambda!455986))))

(assert (=> d!2279425 (forall!17962 (exprs!8572 ct1!282) lambda!455986)))

(assert (=> d!2279425 (= (lemmaConcatPreservesForall!1807 (exprs!8572 ct1!282) (exprs!8572 ct2!378) lambda!455986) lt!2610891)))

(declare-fun bs!1918764 () Bool)

(assert (= bs!1918764 d!2279425))

(assert (=> bs!1918764 m!8007388))

(assert (=> bs!1918764 m!8007388))

(declare-fun m!8007474 () Bool)

(assert (=> bs!1918764 m!8007474))

(declare-fun m!8007476 () Bool)

(assert (=> bs!1918764 m!8007476))

(declare-fun m!8007478 () Bool)

(assert (=> bs!1918764 m!8007478))

(assert (=> b!7344686 d!2279425))

(declare-fun call!670974 () List!71628)

(declare-fun c!1364396 () Bool)

(declare-fun c!1364397 () Bool)

(declare-fun bm!670966 () Bool)

(assert (=> bm!670966 (= call!670974 ($colon$colon!3132 (exprs!8572 ct1!282) (ite (or c!1364396 c!1364397) (regTwo!38776 r1!2370) r1!2370)))))

(declare-fun bm!670967 () Bool)

(declare-fun call!670976 () (Set Context!16144))

(declare-fun call!670971 () (Set Context!16144))

(assert (=> bm!670967 (= call!670976 call!670971)))

(declare-fun b!7344842 () Bool)

(declare-fun c!1364400 () Bool)

(assert (=> b!7344842 (= c!1364400 (is-Star!19132 r1!2370))))

(declare-fun e!4398001 () (Set Context!16144))

(declare-fun e!4397998 () (Set Context!16144))

(assert (=> b!7344842 (= e!4398001 e!4397998)))

(declare-fun b!7344843 () Bool)

(assert (=> b!7344843 (= e!4397998 (as set.empty (Set Context!16144)))))

(declare-fun b!7344844 () Bool)

(declare-fun e!4397999 () (Set Context!16144))

(declare-fun e!4397996 () (Set Context!16144))

(assert (=> b!7344844 (= e!4397999 e!4397996)))

(declare-fun c!1364399 () Bool)

(assert (=> b!7344844 (= c!1364399 (is-Union!19132 r1!2370))))

(declare-fun b!7344845 () Bool)

(declare-fun e!4397997 () Bool)

(assert (=> b!7344845 (= c!1364396 e!4397997)))

(declare-fun res!2966723 () Bool)

(assert (=> b!7344845 (=> (not res!2966723) (not e!4397997))))

(assert (=> b!7344845 (= res!2966723 (is-Concat!27977 r1!2370))))

(declare-fun e!4398000 () (Set Context!16144))

(assert (=> b!7344845 (= e!4397996 e!4398000)))

(declare-fun b!7344846 () Bool)

(assert (=> b!7344846 (= e!4397997 (nullable!8225 (regOne!38776 r1!2370)))))

(declare-fun b!7344847 () Bool)

(declare-fun call!670972 () (Set Context!16144))

(declare-fun call!670973 () (Set Context!16144))

(assert (=> b!7344847 (= e!4397996 (set.union call!670972 call!670973))))

(declare-fun b!7344848 () Bool)

(assert (=> b!7344848 (= e!4398000 (set.union call!670972 call!670971))))

(declare-fun b!7344849 () Bool)

(assert (=> b!7344849 (= e!4397999 (set.insert ct1!282 (as set.empty (Set Context!16144))))))

(declare-fun bm!670968 () Bool)

(assert (=> bm!670968 (= call!670971 call!670973)))

(declare-fun b!7344850 () Bool)

(assert (=> b!7344850 (= e!4398000 e!4398001)))

(assert (=> b!7344850 (= c!1364397 (is-Concat!27977 r1!2370))))

(declare-fun b!7344851 () Bool)

(assert (=> b!7344851 (= e!4398001 call!670976)))

(declare-fun b!7344852 () Bool)

(assert (=> b!7344852 (= e!4397998 call!670976)))

(declare-fun bm!670970 () Bool)

(assert (=> bm!670970 (= call!670972 (derivationStepZipperDown!2958 (ite c!1364399 (regOne!38777 r1!2370) (regOne!38776 r1!2370)) (ite c!1364399 ct1!282 (Context!16145 call!670974)) c!10362))))

(declare-fun bm!670971 () Bool)

(declare-fun call!670975 () List!71628)

(assert (=> bm!670971 (= call!670975 call!670974)))

(declare-fun d!2279427 () Bool)

(declare-fun c!1364398 () Bool)

(assert (=> d!2279427 (= c!1364398 (and (is-ElementMatch!19132 r1!2370) (= (c!1364356 r1!2370) c!10362)))))

(assert (=> d!2279427 (= (derivationStepZipperDown!2958 r1!2370 ct1!282 c!10362) e!4397999)))

(declare-fun bm!670969 () Bool)

(assert (=> bm!670969 (= call!670973 (derivationStepZipperDown!2958 (ite c!1364399 (regTwo!38777 r1!2370) (ite c!1364396 (regTwo!38776 r1!2370) (ite c!1364397 (regOne!38776 r1!2370) (reg!19461 r1!2370)))) (ite (or c!1364399 c!1364396) ct1!282 (Context!16145 call!670975)) c!10362))))

(assert (= (and d!2279427 c!1364398) b!7344849))

(assert (= (and d!2279427 (not c!1364398)) b!7344844))

(assert (= (and b!7344844 c!1364399) b!7344847))

(assert (= (and b!7344844 (not c!1364399)) b!7344845))

(assert (= (and b!7344845 res!2966723) b!7344846))

(assert (= (and b!7344845 c!1364396) b!7344848))

(assert (= (and b!7344845 (not c!1364396)) b!7344850))

(assert (= (and b!7344850 c!1364397) b!7344851))

(assert (= (and b!7344850 (not c!1364397)) b!7344842))

(assert (= (and b!7344842 c!1364400) b!7344852))

(assert (= (and b!7344842 (not c!1364400)) b!7344843))

(assert (= (or b!7344851 b!7344852) bm!670971))

(assert (= (or b!7344851 b!7344852) bm!670967))

(assert (= (or b!7344848 bm!670967) bm!670968))

(assert (= (or b!7344848 bm!670971) bm!670966))

(assert (= (or b!7344847 bm!670968) bm!670969))

(assert (= (or b!7344847 b!7344848) bm!670970))

(assert (=> b!7344846 m!8007386))

(declare-fun m!8007480 () Bool)

(assert (=> bm!670966 m!8007480))

(declare-fun m!8007482 () Bool)

(assert (=> bm!670969 m!8007482))

(declare-fun m!8007484 () Bool)

(assert (=> b!7344849 m!8007484))

(declare-fun m!8007486 () Bool)

(assert (=> bm!670970 m!8007486))

(assert (=> b!7344693 d!2279427))

(declare-fun d!2279429 () Bool)

(declare-fun nullableFct!3268 (Regex!19132) Bool)

(assert (=> d!2279429 (= (nullable!8225 (regOne!38776 r1!2370)) (nullableFct!3268 (regOne!38776 r1!2370)))))

(declare-fun bs!1918765 () Bool)

(assert (= bs!1918765 d!2279429))

(declare-fun m!8007488 () Bool)

(assert (=> bs!1918765 m!8007488))

(assert (=> b!7344684 d!2279429))

(declare-fun e!4398004 () Bool)

(assert (=> b!7344691 (= tp!2085785 e!4398004)))

(declare-fun b!7344864 () Bool)

(declare-fun tp!2085820 () Bool)

(declare-fun tp!2085824 () Bool)

(assert (=> b!7344864 (= e!4398004 (and tp!2085820 tp!2085824))))

(declare-fun b!7344866 () Bool)

(declare-fun tp!2085822 () Bool)

(declare-fun tp!2085823 () Bool)

(assert (=> b!7344866 (= e!4398004 (and tp!2085822 tp!2085823))))

(declare-fun b!7344863 () Bool)

(assert (=> b!7344863 (= e!4398004 tp_is_empty!48509)))

(declare-fun b!7344865 () Bool)

(declare-fun tp!2085821 () Bool)

(assert (=> b!7344865 (= e!4398004 tp!2085821)))

(assert (= (and b!7344691 (is-ElementMatch!19132 (reg!19461 r1!2370))) b!7344863))

(assert (= (and b!7344691 (is-Concat!27977 (reg!19461 r1!2370))) b!7344864))

(assert (= (and b!7344691 (is-Star!19132 (reg!19461 r1!2370))) b!7344865))

(assert (= (and b!7344691 (is-Union!19132 (reg!19461 r1!2370))) b!7344866))

(declare-fun b!7344871 () Bool)

(declare-fun e!4398007 () Bool)

(declare-fun tp!2085829 () Bool)

(declare-fun tp!2085830 () Bool)

(assert (=> b!7344871 (= e!4398007 (and tp!2085829 tp!2085830))))

(assert (=> b!7344687 (= tp!2085780 e!4398007)))

(assert (= (and b!7344687 (is-Cons!71504 (exprs!8572 ct1!282))) b!7344871))

(declare-fun e!4398008 () Bool)

(assert (=> b!7344692 (= tp!2085779 e!4398008)))

(declare-fun b!7344873 () Bool)

(declare-fun tp!2085831 () Bool)

(declare-fun tp!2085835 () Bool)

(assert (=> b!7344873 (= e!4398008 (and tp!2085831 tp!2085835))))

(declare-fun b!7344875 () Bool)

(declare-fun tp!2085833 () Bool)

(declare-fun tp!2085834 () Bool)

(assert (=> b!7344875 (= e!4398008 (and tp!2085833 tp!2085834))))

(declare-fun b!7344872 () Bool)

(assert (=> b!7344872 (= e!4398008 tp_is_empty!48509)))

(declare-fun b!7344874 () Bool)

(declare-fun tp!2085832 () Bool)

(assert (=> b!7344874 (= e!4398008 tp!2085832)))

(assert (= (and b!7344692 (is-ElementMatch!19132 (regOne!38777 r1!2370))) b!7344872))

(assert (= (and b!7344692 (is-Concat!27977 (regOne!38777 r1!2370))) b!7344873))

(assert (= (and b!7344692 (is-Star!19132 (regOne!38777 r1!2370))) b!7344874))

(assert (= (and b!7344692 (is-Union!19132 (regOne!38777 r1!2370))) b!7344875))

(declare-fun e!4398015 () Bool)

(assert (=> b!7344692 (= tp!2085784 e!4398015)))

(declare-fun b!7344886 () Bool)

(declare-fun tp!2085836 () Bool)

(declare-fun tp!2085840 () Bool)

(assert (=> b!7344886 (= e!4398015 (and tp!2085836 tp!2085840))))

(declare-fun b!7344890 () Bool)

(declare-fun tp!2085838 () Bool)

(declare-fun tp!2085839 () Bool)

(assert (=> b!7344890 (= e!4398015 (and tp!2085838 tp!2085839))))

(declare-fun b!7344884 () Bool)

(assert (=> b!7344884 (= e!4398015 tp_is_empty!48509)))

(declare-fun b!7344888 () Bool)

(declare-fun tp!2085837 () Bool)

(assert (=> b!7344888 (= e!4398015 tp!2085837)))

(assert (= (and b!7344692 (is-ElementMatch!19132 (regTwo!38777 r1!2370))) b!7344884))

(assert (= (and b!7344692 (is-Concat!27977 (regTwo!38777 r1!2370))) b!7344886))

(assert (= (and b!7344692 (is-Star!19132 (regTwo!38777 r1!2370))) b!7344888))

(assert (= (and b!7344692 (is-Union!19132 (regTwo!38777 r1!2370))) b!7344890))

(declare-fun b!7344891 () Bool)

(declare-fun e!4398016 () Bool)

(declare-fun tp!2085841 () Bool)

(declare-fun tp!2085842 () Bool)

(assert (=> b!7344891 (= e!4398016 (and tp!2085841 tp!2085842))))

(assert (=> b!7344683 (= tp!2085781 e!4398016)))

(assert (= (and b!7344683 (is-Cons!71504 (exprs!8572 ct2!378))) b!7344891))

(declare-fun b!7344892 () Bool)

(declare-fun e!4398017 () Bool)

(declare-fun tp!2085843 () Bool)

(declare-fun tp!2085844 () Bool)

(assert (=> b!7344892 (= e!4398017 (and tp!2085843 tp!2085844))))

(assert (=> b!7344682 (= tp!2085783 e!4398017)))

(assert (= (and b!7344682 (is-Cons!71504 (exprs!8572 cWitness!61))) b!7344892))

(declare-fun e!4398018 () Bool)

(assert (=> b!7344689 (= tp!2085782 e!4398018)))

(declare-fun b!7344894 () Bool)

(declare-fun tp!2085845 () Bool)

(declare-fun tp!2085849 () Bool)

(assert (=> b!7344894 (= e!4398018 (and tp!2085845 tp!2085849))))

(declare-fun b!7344896 () Bool)

(declare-fun tp!2085847 () Bool)

(declare-fun tp!2085848 () Bool)

(assert (=> b!7344896 (= e!4398018 (and tp!2085847 tp!2085848))))

(declare-fun b!7344893 () Bool)

(assert (=> b!7344893 (= e!4398018 tp_is_empty!48509)))

(declare-fun b!7344895 () Bool)

(declare-fun tp!2085846 () Bool)

(assert (=> b!7344895 (= e!4398018 tp!2085846)))

(assert (= (and b!7344689 (is-ElementMatch!19132 (regOne!38776 r1!2370))) b!7344893))

(assert (= (and b!7344689 (is-Concat!27977 (regOne!38776 r1!2370))) b!7344894))

(assert (= (and b!7344689 (is-Star!19132 (regOne!38776 r1!2370))) b!7344895))

(assert (= (and b!7344689 (is-Union!19132 (regOne!38776 r1!2370))) b!7344896))

(declare-fun e!4398019 () Bool)

(assert (=> b!7344689 (= tp!2085778 e!4398019)))

(declare-fun b!7344898 () Bool)

(declare-fun tp!2085850 () Bool)

(declare-fun tp!2085854 () Bool)

(assert (=> b!7344898 (= e!4398019 (and tp!2085850 tp!2085854))))

(declare-fun b!7344900 () Bool)

(declare-fun tp!2085852 () Bool)

(declare-fun tp!2085853 () Bool)

(assert (=> b!7344900 (= e!4398019 (and tp!2085852 tp!2085853))))

(declare-fun b!7344897 () Bool)

(assert (=> b!7344897 (= e!4398019 tp_is_empty!48509)))

(declare-fun b!7344899 () Bool)

(declare-fun tp!2085851 () Bool)

(assert (=> b!7344899 (= e!4398019 tp!2085851)))

(assert (= (and b!7344689 (is-ElementMatch!19132 (regTwo!38776 r1!2370))) b!7344897))

(assert (= (and b!7344689 (is-Concat!27977 (regTwo!38776 r1!2370))) b!7344898))

(assert (= (and b!7344689 (is-Star!19132 (regTwo!38776 r1!2370))) b!7344899))

(assert (= (and b!7344689 (is-Union!19132 (regTwo!38776 r1!2370))) b!7344900))

(push 1)

(assert (not d!2279409))

(assert (not d!2279429))

(assert (not b!7344871))

(assert (not bm!670934))

(assert (not bm!670959))

(assert (not b!7344749))

(assert (not b!7344866))

(assert (not bm!670929))

(assert (not b!7344892))

(assert (not b!7344898))

(assert (not b!7344886))

(assert (not bm!670970))

(assert (not d!2279415))

(assert (not bm!670956))

(assert (not b!7344875))

(assert (not bm!670932))

(assert (not b!7344839))

(assert (not b!7344891))

(assert (not b!7344896))

(assert (not b!7344846))

(assert (not b!7344873))

(assert tp_is_empty!48509)

(assert (not d!2279425))

(assert (not b!7344865))

(assert (not b!7344767))

(assert (not d!2279413))

(assert (not b!7344894))

(assert (not b!7344758))

(assert (not b!7344895))

(assert (not b!7344874))

(assert (not b!7344899))

(assert (not bm!670931))

(assert (not b!7344840))

(assert (not b!7344900))

(assert (not bm!670935))

(assert (not d!2279423))

(assert (not bm!670966))

(assert (not bm!670928))

(assert (not b!7344864))

(assert (not bm!670960))

(assert (not bm!670969))

(assert (not b!7344823))

(assert (not b!7344888))

(assert (not b!7344890))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

