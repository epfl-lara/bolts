; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719098 () Bool)

(assert start!719098)

(declare-fun b!7366444 () Bool)

(declare-fun res!2973037 () Bool)

(declare-fun e!4410283 () Bool)

(assert (=> b!7366444 (=> (not res!2973037) (not e!4410283))))

(declare-datatypes ((C!38798 0))(
  ( (C!38799 (val!29759 Int)) )
))
(declare-datatypes ((Regex!19262 0))(
  ( (ElementMatch!19262 (c!1368920 C!38798)) (Concat!28107 (regOne!39036 Regex!19262) (regTwo!39036 Regex!19262)) (EmptyExpr!19262) (Star!19262 (reg!19591 Regex!19262)) (EmptyLang!19262) (Union!19262 (regOne!39037 Regex!19262) (regTwo!39037 Regex!19262)) )
))
(declare-fun r1!2370 () Regex!19262)

(declare-fun nullable!8338 (Regex!19262) Bool)

(assert (=> b!7366444 (= res!2973037 (nullable!8338 (regOne!39036 r1!2370)))))

(declare-fun b!7366445 () Bool)

(declare-fun e!4410285 () Bool)

(declare-fun tp!2093661 () Bool)

(assert (=> b!7366445 (= e!4410285 tp!2093661)))

(declare-fun b!7366446 () Bool)

(declare-fun e!4410286 () Bool)

(declare-fun tp!2093658 () Bool)

(assert (=> b!7366446 (= e!4410286 tp!2093658)))

(declare-fun b!7366448 () Bool)

(declare-fun e!4410287 () Bool)

(declare-fun tp!2093662 () Bool)

(declare-fun tp!2093664 () Bool)

(assert (=> b!7366448 (= e!4410287 (and tp!2093662 tp!2093664))))

(declare-fun b!7366449 () Bool)

(declare-fun e!4410288 () Bool)

(declare-fun tp!2093663 () Bool)

(assert (=> b!7366449 (= e!4410288 tp!2093663)))

(declare-fun b!7366450 () Bool)

(declare-fun res!2973041 () Bool)

(assert (=> b!7366450 (=> (not res!2973041) (not e!4410283))))

(declare-fun validRegex!9858 (Regex!19262) Bool)

(assert (=> b!7366450 (= res!2973041 (validRegex!9858 (regTwo!39036 r1!2370)))))

(declare-fun b!7366451 () Bool)

(declare-fun e!4410284 () Bool)

(assert (=> b!7366451 (= e!4410284 e!4410283)))

(declare-fun res!2973038 () Bool)

(assert (=> b!7366451 (=> (not res!2973038) (not e!4410283))))

(declare-fun c!10362 () C!38798)

(assert (=> b!7366451 (= res!2973038 (and (or (not (is-ElementMatch!19262 r1!2370)) (not (= c!10362 (c!1368920 r1!2370)))) (not (is-Union!19262 r1!2370)) (is-Concat!28107 r1!2370)))))

(declare-datatypes ((List!71758 0))(
  ( (Nil!71634) (Cons!71634 (h!78082 Regex!19262) (t!386207 List!71758)) )
))
(declare-datatypes ((Context!16404 0))(
  ( (Context!16405 (exprs!8702 List!71758)) )
))
(declare-fun lt!2615005 () (Set Context!16404))

(declare-fun ct1!282 () Context!16404)

(declare-fun ct2!378 () Context!16404)

(declare-fun derivationStepZipperDown!3088 (Regex!19262 Context!16404 C!38798) (Set Context!16404))

(declare-fun ++!17078 (List!71758 List!71758) List!71758)

(assert (=> b!7366451 (= lt!2615005 (derivationStepZipperDown!3088 r1!2370 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165473 0))(
  ( (Unit!165474) )
))
(declare-fun lt!2615004 () Unit!165473)

(declare-fun lambda!457806 () Int)

(declare-fun lemmaConcatPreservesForall!1935 (List!71758 List!71758 Int) Unit!165473)

(assert (=> b!7366451 (= lt!2615004 (lemmaConcatPreservesForall!1935 (exprs!8702 ct1!282) (exprs!8702 ct2!378) lambda!457806))))

(declare-fun res!2973039 () Bool)

(assert (=> start!719098 (=> (not res!2973039) (not e!4410284))))

(assert (=> start!719098 (= res!2973039 (validRegex!9858 r1!2370))))

(assert (=> start!719098 e!4410284))

(declare-fun tp_is_empty!48769 () Bool)

(assert (=> start!719098 tp_is_empty!48769))

(declare-fun cWitness!61 () Context!16404)

(declare-fun inv!91496 (Context!16404) Bool)

(assert (=> start!719098 (and (inv!91496 cWitness!61) e!4410286)))

(assert (=> start!719098 (and (inv!91496 ct1!282) e!4410288)))

(assert (=> start!719098 e!4410287))

(assert (=> start!719098 (and (inv!91496 ct2!378) e!4410285)))

(declare-fun b!7366447 () Bool)

(declare-fun $colon$colon!3244 (List!71758 Regex!19262) List!71758)

(assert (=> b!7366447 (= e!4410283 (not (inv!91496 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370))))))))

(declare-fun b!7366452 () Bool)

(declare-fun tp!2093660 () Bool)

(assert (=> b!7366452 (= e!4410287 tp!2093660)))

(declare-fun b!7366453 () Bool)

(declare-fun tp!2093659 () Bool)

(declare-fun tp!2093665 () Bool)

(assert (=> b!7366453 (= e!4410287 (and tp!2093659 tp!2093665))))

(declare-fun b!7366454 () Bool)

(assert (=> b!7366454 (= e!4410287 tp_is_empty!48769)))

(declare-fun b!7366455 () Bool)

(declare-fun res!2973040 () Bool)

(assert (=> b!7366455 (=> (not res!2973040) (not e!4410284))))

(assert (=> b!7366455 (= res!2973040 (set.member cWitness!61 (derivationStepZipperDown!3088 r1!2370 ct1!282 c!10362)))))

(assert (= (and start!719098 res!2973039) b!7366455))

(assert (= (and b!7366455 res!2973040) b!7366451))

(assert (= (and b!7366451 res!2973038) b!7366444))

(assert (= (and b!7366444 res!2973037) b!7366450))

(assert (= (and b!7366450 res!2973041) b!7366447))

(assert (= start!719098 b!7366446))

(assert (= start!719098 b!7366449))

(assert (= (and start!719098 (is-ElementMatch!19262 r1!2370)) b!7366454))

(assert (= (and start!719098 (is-Concat!28107 r1!2370)) b!7366448))

(assert (= (and start!719098 (is-Star!19262 r1!2370)) b!7366452))

(assert (= (and start!719098 (is-Union!19262 r1!2370)) b!7366453))

(assert (= start!719098 b!7366445))

(declare-fun m!8021898 () Bool)

(assert (=> start!719098 m!8021898))

(declare-fun m!8021900 () Bool)

(assert (=> start!719098 m!8021900))

(declare-fun m!8021902 () Bool)

(assert (=> start!719098 m!8021902))

(declare-fun m!8021904 () Bool)

(assert (=> start!719098 m!8021904))

(declare-fun m!8021906 () Bool)

(assert (=> b!7366444 m!8021906))

(declare-fun m!8021908 () Bool)

(assert (=> b!7366450 m!8021908))

(declare-fun m!8021910 () Bool)

(assert (=> b!7366451 m!8021910))

(declare-fun m!8021912 () Bool)

(assert (=> b!7366451 m!8021912))

(declare-fun m!8021914 () Bool)

(assert (=> b!7366451 m!8021914))

(declare-fun m!8021916 () Bool)

(assert (=> b!7366455 m!8021916))

(declare-fun m!8021918 () Bool)

(assert (=> b!7366455 m!8021918))

(declare-fun m!8021920 () Bool)

(assert (=> b!7366447 m!8021920))

(declare-fun m!8021922 () Bool)

(assert (=> b!7366447 m!8021922))

(push 1)

(assert (not b!7366450))

(assert tp_is_empty!48769)

(assert (not start!719098))

(assert (not b!7366449))

(assert (not b!7366451))

(assert (not b!7366455))

(assert (not b!7366447))

(assert (not b!7366452))

(assert (not b!7366446))

(assert (not b!7366453))

(assert (not b!7366448))

(assert (not b!7366444))

(assert (not b!7366445))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7366514 () Bool)

(declare-fun e!4410321 () (Set Context!16404))

(declare-fun call!675899 () (Set Context!16404))

(assert (=> b!7366514 (= e!4410321 call!675899)))

(declare-fun b!7366515 () Bool)

(declare-fun e!4410324 () (Set Context!16404))

(declare-fun call!675901 () (Set Context!16404))

(declare-fun call!675902 () (Set Context!16404))

(assert (=> b!7366515 (= e!4410324 (set.union call!675901 call!675902))))

(declare-fun b!7366516 () Bool)

(declare-fun e!4410319 () (Set Context!16404))

(assert (=> b!7366516 (= e!4410319 (set.insert (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (as set.empty (Set Context!16404))))))

(declare-fun bm!675893 () Bool)

(assert (=> bm!675893 (= call!675899 call!675902)))

(declare-fun b!7366517 () Bool)

(declare-fun e!4410320 () (Set Context!16404))

(declare-fun call!675898 () (Set Context!16404))

(assert (=> b!7366517 (= e!4410320 (set.union call!675898 call!675901))))

(declare-fun b!7366518 () Bool)

(declare-fun e!4410322 () (Set Context!16404))

(assert (=> b!7366518 (= e!4410322 (as set.empty (Set Context!16404)))))

(declare-fun bm!675894 () Bool)

(declare-fun call!675900 () List!71758)

(declare-fun call!675903 () List!71758)

(assert (=> bm!675894 (= call!675900 call!675903)))

(declare-fun b!7366519 () Bool)

(declare-fun c!1368934 () Bool)

(declare-fun e!4410323 () Bool)

(assert (=> b!7366519 (= c!1368934 e!4410323)))

(declare-fun res!2973059 () Bool)

(assert (=> b!7366519 (=> (not res!2973059) (not e!4410323))))

(assert (=> b!7366519 (= res!2973059 (is-Concat!28107 r1!2370))))

(assert (=> b!7366519 (= e!4410320 e!4410324)))

(declare-fun d!2282830 () Bool)

(declare-fun c!1368935 () Bool)

(assert (=> d!2282830 (= c!1368935 (and (is-ElementMatch!19262 r1!2370) (= (c!1368920 r1!2370) c!10362)))))

(assert (=> d!2282830 (= (derivationStepZipperDown!3088 r1!2370 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) c!10362) e!4410319)))

(declare-fun c!1368932 () Bool)

(declare-fun bm!675895 () Bool)

(assert (=> bm!675895 (= call!675901 (derivationStepZipperDown!3088 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)) (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903)) c!10362))))

(declare-fun b!7366520 () Bool)

(declare-fun c!1368933 () Bool)

(assert (=> b!7366520 (= c!1368933 (is-Star!19262 r1!2370))))

(assert (=> b!7366520 (= e!4410321 e!4410322)))

(declare-fun b!7366521 () Bool)

(assert (=> b!7366521 (= e!4410323 (nullable!8338 (regOne!39036 r1!2370)))))

(declare-fun bm!675896 () Bool)

(declare-fun c!1368936 () Bool)

(assert (=> bm!675896 (= call!675898 (derivationStepZipperDown!3088 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))) (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900)) c!10362))))

(declare-fun b!7366522 () Bool)

(assert (=> b!7366522 (= e!4410324 e!4410321)))

(assert (=> b!7366522 (= c!1368936 (is-Concat!28107 r1!2370))))

(declare-fun bm!675897 () Bool)

(assert (=> bm!675897 (= call!675902 call!675898)))

(declare-fun b!7366523 () Bool)

(assert (=> b!7366523 (= e!4410322 call!675899)))

(declare-fun bm!675898 () Bool)

(assert (=> bm!675898 (= call!675903 ($colon$colon!3244 (exprs!8702 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)))) (ite (or c!1368934 c!1368936) (regTwo!39036 r1!2370) r1!2370)))))

(declare-fun b!7366524 () Bool)

(assert (=> b!7366524 (= e!4410319 e!4410320)))

(assert (=> b!7366524 (= c!1368932 (is-Union!19262 r1!2370))))

(assert (= (and d!2282830 c!1368935) b!7366516))

(assert (= (and d!2282830 (not c!1368935)) b!7366524))

(assert (= (and b!7366524 c!1368932) b!7366517))

(assert (= (and b!7366524 (not c!1368932)) b!7366519))

(assert (= (and b!7366519 res!2973059) b!7366521))

(assert (= (and b!7366519 c!1368934) b!7366515))

(assert (= (and b!7366519 (not c!1368934)) b!7366522))

(assert (= (and b!7366522 c!1368936) b!7366514))

(assert (= (and b!7366522 (not c!1368936)) b!7366520))

(assert (= (and b!7366520 c!1368933) b!7366523))

(assert (= (and b!7366520 (not c!1368933)) b!7366518))

(assert (= (or b!7366514 b!7366523) bm!675894))

(assert (= (or b!7366514 b!7366523) bm!675893))

(assert (= (or b!7366515 bm!675893) bm!675897))

(assert (= (or b!7366515 bm!675894) bm!675898))

(assert (= (or b!7366517 b!7366515) bm!675895))

(assert (= (or b!7366517 bm!675897) bm!675896))

(declare-fun m!8021950 () Bool)

(assert (=> bm!675898 m!8021950))

(assert (=> b!7366521 m!8021906))

(declare-fun m!8021952 () Bool)

(assert (=> bm!675895 m!8021952))

(declare-fun m!8021954 () Bool)

(assert (=> bm!675896 m!8021954))

(declare-fun m!8021956 () Bool)

(assert (=> b!7366516 m!8021956))

(assert (=> b!7366451 d!2282830))

(declare-fun b!7366535 () Bool)

(declare-fun res!2973064 () Bool)

(declare-fun e!4410330 () Bool)

(assert (=> b!7366535 (=> (not res!2973064) (not e!4410330))))

(declare-fun lt!2615014 () List!71758)

(declare-fun size!42121 (List!71758) Int)

(assert (=> b!7366535 (= res!2973064 (= (size!42121 lt!2615014) (+ (size!42121 (exprs!8702 ct1!282)) (size!42121 (exprs!8702 ct2!378)))))))

(declare-fun b!7366533 () Bool)

(declare-fun e!4410329 () List!71758)

(assert (=> b!7366533 (= e!4410329 (exprs!8702 ct2!378))))

(declare-fun b!7366534 () Bool)

(assert (=> b!7366534 (= e!4410329 (Cons!71634 (h!78082 (exprs!8702 ct1!282)) (++!17078 (t!386207 (exprs!8702 ct1!282)) (exprs!8702 ct2!378))))))

(declare-fun d!2282832 () Bool)

(assert (=> d!2282832 e!4410330))

(declare-fun res!2973065 () Bool)

(assert (=> d!2282832 (=> (not res!2973065) (not e!4410330))))

(declare-fun content!15143 (List!71758) (Set Regex!19262))

(assert (=> d!2282832 (= res!2973065 (= (content!15143 lt!2615014) (set.union (content!15143 (exprs!8702 ct1!282)) (content!15143 (exprs!8702 ct2!378)))))))

(assert (=> d!2282832 (= lt!2615014 e!4410329)))

(declare-fun c!1368939 () Bool)

(assert (=> d!2282832 (= c!1368939 (is-Nil!71634 (exprs!8702 ct1!282)))))

(assert (=> d!2282832 (= (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)) lt!2615014)))

(declare-fun b!7366536 () Bool)

(assert (=> b!7366536 (= e!4410330 (or (not (= (exprs!8702 ct2!378) Nil!71634)) (= lt!2615014 (exprs!8702 ct1!282))))))

(assert (= (and d!2282832 c!1368939) b!7366533))

(assert (= (and d!2282832 (not c!1368939)) b!7366534))

(assert (= (and d!2282832 res!2973065) b!7366535))

(assert (= (and b!7366535 res!2973064) b!7366536))

(declare-fun m!8021958 () Bool)

(assert (=> b!7366535 m!8021958))

(declare-fun m!8021960 () Bool)

(assert (=> b!7366535 m!8021960))

(declare-fun m!8021962 () Bool)

(assert (=> b!7366535 m!8021962))

(declare-fun m!8021964 () Bool)

(assert (=> b!7366534 m!8021964))

(declare-fun m!8021966 () Bool)

(assert (=> d!2282832 m!8021966))

(declare-fun m!8021968 () Bool)

(assert (=> d!2282832 m!8021968))

(declare-fun m!8021970 () Bool)

(assert (=> d!2282832 m!8021970))

(assert (=> b!7366451 d!2282832))

(declare-fun d!2282836 () Bool)

(declare-fun forall!18068 (List!71758 Int) Bool)

(assert (=> d!2282836 (forall!18068 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)) lambda!457806)))

(declare-fun lt!2615017 () Unit!165473)

(declare-fun choose!57286 (List!71758 List!71758 Int) Unit!165473)

(assert (=> d!2282836 (= lt!2615017 (choose!57286 (exprs!8702 ct1!282) (exprs!8702 ct2!378) lambda!457806))))

(assert (=> d!2282836 (forall!18068 (exprs!8702 ct1!282) lambda!457806)))

(assert (=> d!2282836 (= (lemmaConcatPreservesForall!1935 (exprs!8702 ct1!282) (exprs!8702 ct2!378) lambda!457806) lt!2615017)))

(declare-fun bs!1920576 () Bool)

(assert (= bs!1920576 d!2282836))

(assert (=> bs!1920576 m!8021910))

(assert (=> bs!1920576 m!8021910))

(declare-fun m!8021972 () Bool)

(assert (=> bs!1920576 m!8021972))

(declare-fun m!8021974 () Bool)

(assert (=> bs!1920576 m!8021974))

(declare-fun m!8021976 () Bool)

(assert (=> bs!1920576 m!8021976))

(assert (=> b!7366451 d!2282836))

(declare-fun bs!1920577 () Bool)

(declare-fun d!2282838 () Bool)

(assert (= bs!1920577 (and d!2282838 b!7366451)))

(declare-fun lambda!457812 () Int)

(assert (=> bs!1920577 (= lambda!457812 lambda!457806)))

(assert (=> d!2282838 (= (inv!91496 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))) (forall!18068 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))) lambda!457812))))

(declare-fun bs!1920578 () Bool)

(assert (= bs!1920578 d!2282838))

(declare-fun m!8021978 () Bool)

(assert (=> bs!1920578 m!8021978))

(assert (=> b!7366447 d!2282838))

(declare-fun d!2282840 () Bool)

(assert (=> d!2282840 (= ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)) (Cons!71634 (regTwo!39036 r1!2370) (exprs!8702 ct1!282)))))

(assert (=> b!7366447 d!2282840))

(declare-fun bm!675911 () Bool)

(declare-fun call!675916 () Bool)

(declare-fun c!1368949 () Bool)

(assert (=> bm!675911 (= call!675916 (validRegex!9858 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))

(declare-fun d!2282842 () Bool)

(declare-fun res!2973090 () Bool)

(declare-fun e!4410364 () Bool)

(assert (=> d!2282842 (=> res!2973090 e!4410364)))

(assert (=> d!2282842 (= res!2973090 (is-ElementMatch!19262 r1!2370))))

(assert (=> d!2282842 (= (validRegex!9858 r1!2370) e!4410364)))

(declare-fun b!7366573 () Bool)

(declare-fun res!2973087 () Bool)

(declare-fun e!4410363 () Bool)

(assert (=> b!7366573 (=> (not res!2973087) (not e!4410363))))

(assert (=> b!7366573 (= res!2973087 call!675916)))

(declare-fun e!4410359 () Bool)

(assert (=> b!7366573 (= e!4410359 e!4410363)))

(declare-fun call!675917 () Bool)

(declare-fun bm!675912 () Bool)

(declare-fun c!1368948 () Bool)

(assert (=> bm!675912 (= call!675917 (validRegex!9858 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun b!7366574 () Bool)

(declare-fun call!675918 () Bool)

(assert (=> b!7366574 (= e!4410363 call!675918)))

(declare-fun b!7366575 () Bool)

(declare-fun res!2973088 () Bool)

(declare-fun e!4410365 () Bool)

(assert (=> b!7366575 (=> res!2973088 e!4410365)))

(assert (=> b!7366575 (= res!2973088 (not (is-Concat!28107 r1!2370)))))

(assert (=> b!7366575 (= e!4410359 e!4410365)))

(declare-fun b!7366576 () Bool)

(declare-fun e!4410361 () Bool)

(declare-fun e!4410362 () Bool)

(assert (=> b!7366576 (= e!4410361 e!4410362)))

(declare-fun res!2973086 () Bool)

(assert (=> b!7366576 (= res!2973086 (not (nullable!8338 (reg!19591 r1!2370))))))

(assert (=> b!7366576 (=> (not res!2973086) (not e!4410362))))

(declare-fun bm!675913 () Bool)

(assert (=> bm!675913 (= call!675918 call!675917)))

(declare-fun b!7366577 () Bool)

(declare-fun e!4410360 () Bool)

(assert (=> b!7366577 (= e!4410365 e!4410360)))

(declare-fun res!2973089 () Bool)

(assert (=> b!7366577 (=> (not res!2973089) (not e!4410360))))

(assert (=> b!7366577 (= res!2973089 call!675918)))

(declare-fun b!7366578 () Bool)

(assert (=> b!7366578 (= e!4410361 e!4410359)))

(assert (=> b!7366578 (= c!1368949 (is-Union!19262 r1!2370))))

(declare-fun b!7366579 () Bool)

(assert (=> b!7366579 (= e!4410360 call!675916)))

(declare-fun b!7366580 () Bool)

(assert (=> b!7366580 (= e!4410362 call!675917)))

(declare-fun b!7366581 () Bool)

(assert (=> b!7366581 (= e!4410364 e!4410361)))

(assert (=> b!7366581 (= c!1368948 (is-Star!19262 r1!2370))))

(assert (= (and d!2282842 (not res!2973090)) b!7366581))

(assert (= (and b!7366581 c!1368948) b!7366576))

(assert (= (and b!7366581 (not c!1368948)) b!7366578))

(assert (= (and b!7366576 res!2973086) b!7366580))

(assert (= (and b!7366578 c!1368949) b!7366573))

(assert (= (and b!7366578 (not c!1368949)) b!7366575))

(assert (= (and b!7366573 res!2973087) b!7366574))

(assert (= (and b!7366575 (not res!2973088)) b!7366577))

(assert (= (and b!7366577 res!2973089) b!7366579))

(assert (= (or b!7366573 b!7366579) bm!675911))

(assert (= (or b!7366574 b!7366577) bm!675913))

(assert (= (or b!7366580 bm!675913) bm!675912))

(declare-fun m!8021980 () Bool)

(assert (=> bm!675911 m!8021980))

(declare-fun m!8021982 () Bool)

(assert (=> bm!675912 m!8021982))

(declare-fun m!8021984 () Bool)

(assert (=> b!7366576 m!8021984))

(assert (=> start!719098 d!2282842))

(declare-fun bs!1920579 () Bool)

(declare-fun d!2282844 () Bool)

(assert (= bs!1920579 (and d!2282844 b!7366451)))

(declare-fun lambda!457813 () Int)

(assert (=> bs!1920579 (= lambda!457813 lambda!457806)))

(declare-fun bs!1920580 () Bool)

(assert (= bs!1920580 (and d!2282844 d!2282838)))

(assert (=> bs!1920580 (= lambda!457813 lambda!457812)))

(assert (=> d!2282844 (= (inv!91496 cWitness!61) (forall!18068 (exprs!8702 cWitness!61) lambda!457813))))

(declare-fun bs!1920581 () Bool)

(assert (= bs!1920581 d!2282844))

(declare-fun m!8021986 () Bool)

(assert (=> bs!1920581 m!8021986))

(assert (=> start!719098 d!2282844))

(declare-fun bs!1920582 () Bool)

(declare-fun d!2282846 () Bool)

(assert (= bs!1920582 (and d!2282846 b!7366451)))

(declare-fun lambda!457814 () Int)

(assert (=> bs!1920582 (= lambda!457814 lambda!457806)))

(declare-fun bs!1920583 () Bool)

(assert (= bs!1920583 (and d!2282846 d!2282838)))

(assert (=> bs!1920583 (= lambda!457814 lambda!457812)))

(declare-fun bs!1920584 () Bool)

(assert (= bs!1920584 (and d!2282846 d!2282844)))

(assert (=> bs!1920584 (= lambda!457814 lambda!457813)))

(assert (=> d!2282846 (= (inv!91496 ct1!282) (forall!18068 (exprs!8702 ct1!282) lambda!457814))))

(declare-fun bs!1920585 () Bool)

(assert (= bs!1920585 d!2282846))

(declare-fun m!8021988 () Bool)

(assert (=> bs!1920585 m!8021988))

(assert (=> start!719098 d!2282846))

(declare-fun bs!1920586 () Bool)

(declare-fun d!2282848 () Bool)

(assert (= bs!1920586 (and d!2282848 b!7366451)))

(declare-fun lambda!457815 () Int)

(assert (=> bs!1920586 (= lambda!457815 lambda!457806)))

(declare-fun bs!1920587 () Bool)

(assert (= bs!1920587 (and d!2282848 d!2282838)))

(assert (=> bs!1920587 (= lambda!457815 lambda!457812)))

(declare-fun bs!1920588 () Bool)

(assert (= bs!1920588 (and d!2282848 d!2282844)))

(assert (=> bs!1920588 (= lambda!457815 lambda!457813)))

(declare-fun bs!1920589 () Bool)

(assert (= bs!1920589 (and d!2282848 d!2282846)))

(assert (=> bs!1920589 (= lambda!457815 lambda!457814)))

(assert (=> d!2282848 (= (inv!91496 ct2!378) (forall!18068 (exprs!8702 ct2!378) lambda!457815))))

(declare-fun bs!1920590 () Bool)

(assert (= bs!1920590 d!2282848))

(declare-fun m!8021990 () Bool)

(assert (=> bs!1920590 m!8021990))

(assert (=> start!719098 d!2282848))

(declare-fun d!2282850 () Bool)

(declare-fun nullableFct!3327 (Regex!19262) Bool)

(assert (=> d!2282850 (= (nullable!8338 (regOne!39036 r1!2370)) (nullableFct!3327 (regOne!39036 r1!2370)))))

(declare-fun bs!1920591 () Bool)

(assert (= bs!1920591 d!2282850))

(declare-fun m!8021998 () Bool)

(assert (=> bs!1920591 m!8021998))

(assert (=> b!7366444 d!2282850))

(declare-fun b!7366591 () Bool)

(declare-fun e!4410375 () (Set Context!16404))

(declare-fun call!675923 () (Set Context!16404))

(assert (=> b!7366591 (= e!4410375 call!675923)))

(declare-fun b!7366592 () Bool)

(declare-fun e!4410378 () (Set Context!16404))

(declare-fun call!675925 () (Set Context!16404))

(declare-fun call!675926 () (Set Context!16404))

(assert (=> b!7366592 (= e!4410378 (set.union call!675925 call!675926))))

(declare-fun b!7366593 () Bool)

(declare-fun e!4410373 () (Set Context!16404))

(assert (=> b!7366593 (= e!4410373 (set.insert ct1!282 (as set.empty (Set Context!16404))))))

(declare-fun bm!675917 () Bool)

(assert (=> bm!675917 (= call!675923 call!675926)))

(declare-fun b!7366594 () Bool)

(declare-fun e!4410374 () (Set Context!16404))

(declare-fun call!675922 () (Set Context!16404))

(assert (=> b!7366594 (= e!4410374 (set.union call!675922 call!675925))))

(declare-fun b!7366595 () Bool)

(declare-fun e!4410376 () (Set Context!16404))

(assert (=> b!7366595 (= e!4410376 (as set.empty (Set Context!16404)))))

(declare-fun bm!675918 () Bool)

(declare-fun call!675924 () List!71758)

(declare-fun call!675927 () List!71758)

(assert (=> bm!675918 (= call!675924 call!675927)))

(declare-fun b!7366596 () Bool)

(declare-fun c!1368954 () Bool)

(declare-fun e!4410377 () Bool)

(assert (=> b!7366596 (= c!1368954 e!4410377)))

(declare-fun res!2973096 () Bool)

(assert (=> b!7366596 (=> (not res!2973096) (not e!4410377))))

(assert (=> b!7366596 (= res!2973096 (is-Concat!28107 r1!2370))))

(assert (=> b!7366596 (= e!4410374 e!4410378)))

(declare-fun d!2282854 () Bool)

(declare-fun c!1368955 () Bool)

(assert (=> d!2282854 (= c!1368955 (and (is-ElementMatch!19262 r1!2370) (= (c!1368920 r1!2370) c!10362)))))

(assert (=> d!2282854 (= (derivationStepZipperDown!3088 r1!2370 ct1!282 c!10362) e!4410373)))

(declare-fun bm!675919 () Bool)

(declare-fun c!1368952 () Bool)

(assert (=> bm!675919 (= call!675925 (derivationStepZipperDown!3088 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)) (ite c!1368952 ct1!282 (Context!16405 call!675927)) c!10362))))

(declare-fun b!7366597 () Bool)

(declare-fun c!1368953 () Bool)

(assert (=> b!7366597 (= c!1368953 (is-Star!19262 r1!2370))))

(assert (=> b!7366597 (= e!4410375 e!4410376)))

(declare-fun b!7366598 () Bool)

(assert (=> b!7366598 (= e!4410377 (nullable!8338 (regOne!39036 r1!2370)))))

(declare-fun bm!675920 () Bool)

(declare-fun c!1368956 () Bool)

(assert (=> bm!675920 (= call!675922 (derivationStepZipperDown!3088 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))) (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924)) c!10362))))

(declare-fun b!7366599 () Bool)

(assert (=> b!7366599 (= e!4410378 e!4410375)))

(assert (=> b!7366599 (= c!1368956 (is-Concat!28107 r1!2370))))

(declare-fun bm!675921 () Bool)

(assert (=> bm!675921 (= call!675926 call!675922)))

(declare-fun b!7366600 () Bool)

(assert (=> b!7366600 (= e!4410376 call!675923)))

(declare-fun bm!675922 () Bool)

(assert (=> bm!675922 (= call!675927 ($colon$colon!3244 (exprs!8702 ct1!282) (ite (or c!1368954 c!1368956) (regTwo!39036 r1!2370) r1!2370)))))

(declare-fun b!7366601 () Bool)

(assert (=> b!7366601 (= e!4410373 e!4410374)))

(assert (=> b!7366601 (= c!1368952 (is-Union!19262 r1!2370))))

(assert (= (and d!2282854 c!1368955) b!7366593))

(assert (= (and d!2282854 (not c!1368955)) b!7366601))

(assert (= (and b!7366601 c!1368952) b!7366594))

(assert (= (and b!7366601 (not c!1368952)) b!7366596))

(assert (= (and b!7366596 res!2973096) b!7366598))

(assert (= (and b!7366596 c!1368954) b!7366592))

(assert (= (and b!7366596 (not c!1368954)) b!7366599))

(assert (= (and b!7366599 c!1368956) b!7366591))

(assert (= (and b!7366599 (not c!1368956)) b!7366597))

(assert (= (and b!7366597 c!1368953) b!7366600))

(assert (= (and b!7366597 (not c!1368953)) b!7366595))

(assert (= (or b!7366591 b!7366600) bm!675918))

(assert (= (or b!7366591 b!7366600) bm!675917))

(assert (= (or b!7366592 bm!675917) bm!675921))

(assert (= (or b!7366592 bm!675918) bm!675922))

(assert (= (or b!7366594 b!7366592) bm!675919))

(assert (= (or b!7366594 bm!675921) bm!675920))

(declare-fun m!8022000 () Bool)

(assert (=> bm!675922 m!8022000))

(assert (=> b!7366598 m!8021906))

(declare-fun m!8022002 () Bool)

(assert (=> bm!675919 m!8022002))

(declare-fun m!8022004 () Bool)

(assert (=> bm!675920 m!8022004))

(declare-fun m!8022006 () Bool)

(assert (=> b!7366593 m!8022006))

(assert (=> b!7366455 d!2282854))

(declare-fun bm!675923 () Bool)

(declare-fun call!675928 () Bool)

(declare-fun c!1368958 () Bool)

(assert (=> bm!675923 (= call!675928 (validRegex!9858 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))

(declare-fun d!2282856 () Bool)

(declare-fun res!2973101 () Bool)

(declare-fun e!4410384 () Bool)

(assert (=> d!2282856 (=> res!2973101 e!4410384)))

(assert (=> d!2282856 (= res!2973101 (is-ElementMatch!19262 (regTwo!39036 r1!2370)))))

(assert (=> d!2282856 (= (validRegex!9858 (regTwo!39036 r1!2370)) e!4410384)))

(declare-fun b!7366602 () Bool)

(declare-fun res!2973098 () Bool)

(declare-fun e!4410383 () Bool)

(assert (=> b!7366602 (=> (not res!2973098) (not e!4410383))))

(assert (=> b!7366602 (= res!2973098 call!675928)))

(declare-fun e!4410379 () Bool)

(assert (=> b!7366602 (= e!4410379 e!4410383)))

(declare-fun c!1368957 () Bool)

(declare-fun bm!675924 () Bool)

(declare-fun call!675929 () Bool)

(assert (=> bm!675924 (= call!675929 (validRegex!9858 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))

(declare-fun b!7366603 () Bool)

(declare-fun call!675930 () Bool)

(assert (=> b!7366603 (= e!4410383 call!675930)))

(declare-fun b!7366604 () Bool)

(declare-fun res!2973099 () Bool)

(declare-fun e!4410385 () Bool)

(assert (=> b!7366604 (=> res!2973099 e!4410385)))

(assert (=> b!7366604 (= res!2973099 (not (is-Concat!28107 (regTwo!39036 r1!2370))))))

(assert (=> b!7366604 (= e!4410379 e!4410385)))

(declare-fun b!7366605 () Bool)

(declare-fun e!4410381 () Bool)

(declare-fun e!4410382 () Bool)

(assert (=> b!7366605 (= e!4410381 e!4410382)))

(declare-fun res!2973097 () Bool)

(assert (=> b!7366605 (= res!2973097 (not (nullable!8338 (reg!19591 (regTwo!39036 r1!2370)))))))

(assert (=> b!7366605 (=> (not res!2973097) (not e!4410382))))

(declare-fun bm!675925 () Bool)

(assert (=> bm!675925 (= call!675930 call!675929)))

(declare-fun b!7366606 () Bool)

(declare-fun e!4410380 () Bool)

(assert (=> b!7366606 (= e!4410385 e!4410380)))

(declare-fun res!2973100 () Bool)

(assert (=> b!7366606 (=> (not res!2973100) (not e!4410380))))

(assert (=> b!7366606 (= res!2973100 call!675930)))

(declare-fun b!7366607 () Bool)

(assert (=> b!7366607 (= e!4410381 e!4410379)))

(assert (=> b!7366607 (= c!1368958 (is-Union!19262 (regTwo!39036 r1!2370)))))

(declare-fun b!7366608 () Bool)

(assert (=> b!7366608 (= e!4410380 call!675928)))

(declare-fun b!7366609 () Bool)

(assert (=> b!7366609 (= e!4410382 call!675929)))

(declare-fun b!7366610 () Bool)

(assert (=> b!7366610 (= e!4410384 e!4410381)))

(assert (=> b!7366610 (= c!1368957 (is-Star!19262 (regTwo!39036 r1!2370)))))

(assert (= (and d!2282856 (not res!2973101)) b!7366610))

(assert (= (and b!7366610 c!1368957) b!7366605))

(assert (= (and b!7366610 (not c!1368957)) b!7366607))

(assert (= (and b!7366605 res!2973097) b!7366609))

(assert (= (and b!7366607 c!1368958) b!7366602))

(assert (= (and b!7366607 (not c!1368958)) b!7366604))

(assert (= (and b!7366602 res!2973098) b!7366603))

(assert (= (and b!7366604 (not res!2973099)) b!7366606))

(assert (= (and b!7366606 res!2973100) b!7366608))

(assert (= (or b!7366602 b!7366608) bm!675923))

(assert (= (or b!7366603 b!7366606) bm!675925))

(assert (= (or b!7366609 bm!675925) bm!675924))

(declare-fun m!8022008 () Bool)

(assert (=> bm!675923 m!8022008))

(declare-fun m!8022010 () Bool)

(assert (=> bm!675924 m!8022010))

(declare-fun m!8022012 () Bool)

(assert (=> b!7366605 m!8022012))

(assert (=> b!7366450 d!2282856))

(declare-fun b!7366615 () Bool)

(declare-fun e!4410388 () Bool)

(declare-fun tp!2093694 () Bool)

(declare-fun tp!2093695 () Bool)

(assert (=> b!7366615 (= e!4410388 (and tp!2093694 tp!2093695))))

(assert (=> b!7366445 (= tp!2093661 e!4410388)))

(assert (= (and b!7366445 (is-Cons!71634 (exprs!8702 ct2!378))) b!7366615))

(declare-fun b!7366616 () Bool)

(declare-fun e!4410389 () Bool)

(declare-fun tp!2093696 () Bool)

(declare-fun tp!2093697 () Bool)

(assert (=> b!7366616 (= e!4410389 (and tp!2093696 tp!2093697))))

(assert (=> b!7366446 (= tp!2093658 e!4410389)))

(assert (= (and b!7366446 (is-Cons!71634 (exprs!8702 cWitness!61))) b!7366616))

(declare-fun b!7366629 () Bool)

(declare-fun e!4410392 () Bool)

(declare-fun tp!2093710 () Bool)

(assert (=> b!7366629 (= e!4410392 tp!2093710)))

(declare-fun b!7366630 () Bool)

(declare-fun tp!2093712 () Bool)

(declare-fun tp!2093709 () Bool)

(assert (=> b!7366630 (= e!4410392 (and tp!2093712 tp!2093709))))

(declare-fun b!7366627 () Bool)

(assert (=> b!7366627 (= e!4410392 tp_is_empty!48769)))

(declare-fun b!7366628 () Bool)

(declare-fun tp!2093711 () Bool)

(declare-fun tp!2093708 () Bool)

(assert (=> b!7366628 (= e!4410392 (and tp!2093711 tp!2093708))))

(assert (=> b!7366452 (= tp!2093660 e!4410392)))

(assert (= (and b!7366452 (is-ElementMatch!19262 (reg!19591 r1!2370))) b!7366627))

(assert (= (and b!7366452 (is-Concat!28107 (reg!19591 r1!2370))) b!7366628))

(assert (= (and b!7366452 (is-Star!19262 (reg!19591 r1!2370))) b!7366629))

(assert (= (and b!7366452 (is-Union!19262 (reg!19591 r1!2370))) b!7366630))

(declare-fun b!7366633 () Bool)

(declare-fun e!4410393 () Bool)

(declare-fun tp!2093715 () Bool)

(assert (=> b!7366633 (= e!4410393 tp!2093715)))

(declare-fun b!7366634 () Bool)

(declare-fun tp!2093717 () Bool)

(declare-fun tp!2093714 () Bool)

(assert (=> b!7366634 (= e!4410393 (and tp!2093717 tp!2093714))))

(declare-fun b!7366631 () Bool)

(assert (=> b!7366631 (= e!4410393 tp_is_empty!48769)))

(declare-fun b!7366632 () Bool)

(declare-fun tp!2093716 () Bool)

(declare-fun tp!2093713 () Bool)

(assert (=> b!7366632 (= e!4410393 (and tp!2093716 tp!2093713))))

(assert (=> b!7366453 (= tp!2093659 e!4410393)))

(assert (= (and b!7366453 (is-ElementMatch!19262 (regOne!39037 r1!2370))) b!7366631))

(assert (= (and b!7366453 (is-Concat!28107 (regOne!39037 r1!2370))) b!7366632))

(assert (= (and b!7366453 (is-Star!19262 (regOne!39037 r1!2370))) b!7366633))

(assert (= (and b!7366453 (is-Union!19262 (regOne!39037 r1!2370))) b!7366634))

(declare-fun b!7366637 () Bool)

(declare-fun e!4410394 () Bool)

(declare-fun tp!2093720 () Bool)

(assert (=> b!7366637 (= e!4410394 tp!2093720)))

(declare-fun b!7366638 () Bool)

(declare-fun tp!2093722 () Bool)

(declare-fun tp!2093719 () Bool)

(assert (=> b!7366638 (= e!4410394 (and tp!2093722 tp!2093719))))

(declare-fun b!7366635 () Bool)

(assert (=> b!7366635 (= e!4410394 tp_is_empty!48769)))

(declare-fun b!7366636 () Bool)

(declare-fun tp!2093721 () Bool)

(declare-fun tp!2093718 () Bool)

(assert (=> b!7366636 (= e!4410394 (and tp!2093721 tp!2093718))))

(assert (=> b!7366453 (= tp!2093665 e!4410394)))

(assert (= (and b!7366453 (is-ElementMatch!19262 (regTwo!39037 r1!2370))) b!7366635))

(assert (= (and b!7366453 (is-Concat!28107 (regTwo!39037 r1!2370))) b!7366636))

(assert (= (and b!7366453 (is-Star!19262 (regTwo!39037 r1!2370))) b!7366637))

(assert (= (and b!7366453 (is-Union!19262 (regTwo!39037 r1!2370))) b!7366638))

(declare-fun b!7366641 () Bool)

(declare-fun e!4410395 () Bool)

(declare-fun tp!2093725 () Bool)

(assert (=> b!7366641 (= e!4410395 tp!2093725)))

(declare-fun b!7366642 () Bool)

(declare-fun tp!2093727 () Bool)

(declare-fun tp!2093724 () Bool)

(assert (=> b!7366642 (= e!4410395 (and tp!2093727 tp!2093724))))

(declare-fun b!7366639 () Bool)

(assert (=> b!7366639 (= e!4410395 tp_is_empty!48769)))

(declare-fun b!7366640 () Bool)

(declare-fun tp!2093726 () Bool)

(declare-fun tp!2093723 () Bool)

(assert (=> b!7366640 (= e!4410395 (and tp!2093726 tp!2093723))))

(assert (=> b!7366448 (= tp!2093662 e!4410395)))

(assert (= (and b!7366448 (is-ElementMatch!19262 (regOne!39036 r1!2370))) b!7366639))

(assert (= (and b!7366448 (is-Concat!28107 (regOne!39036 r1!2370))) b!7366640))

(assert (= (and b!7366448 (is-Star!19262 (regOne!39036 r1!2370))) b!7366641))

(assert (= (and b!7366448 (is-Union!19262 (regOne!39036 r1!2370))) b!7366642))

(declare-fun b!7366645 () Bool)

(declare-fun e!4410396 () Bool)

(declare-fun tp!2093730 () Bool)

(assert (=> b!7366645 (= e!4410396 tp!2093730)))

(declare-fun b!7366646 () Bool)

(declare-fun tp!2093732 () Bool)

(declare-fun tp!2093729 () Bool)

(assert (=> b!7366646 (= e!4410396 (and tp!2093732 tp!2093729))))

(declare-fun b!7366643 () Bool)

(assert (=> b!7366643 (= e!4410396 tp_is_empty!48769)))

(declare-fun b!7366644 () Bool)

(declare-fun tp!2093731 () Bool)

(declare-fun tp!2093728 () Bool)

(assert (=> b!7366644 (= e!4410396 (and tp!2093731 tp!2093728))))

(assert (=> b!7366448 (= tp!2093664 e!4410396)))

(assert (= (and b!7366448 (is-ElementMatch!19262 (regTwo!39036 r1!2370))) b!7366643))

(assert (= (and b!7366448 (is-Concat!28107 (regTwo!39036 r1!2370))) b!7366644))

(assert (= (and b!7366448 (is-Star!19262 (regTwo!39036 r1!2370))) b!7366645))

(assert (= (and b!7366448 (is-Union!19262 (regTwo!39036 r1!2370))) b!7366646))

(declare-fun b!7366647 () Bool)

(declare-fun e!4410397 () Bool)

(declare-fun tp!2093733 () Bool)

(declare-fun tp!2093734 () Bool)

(assert (=> b!7366647 (= e!4410397 (and tp!2093733 tp!2093734))))

(assert (=> b!7366449 (= tp!2093663 e!4410397)))

(assert (= (and b!7366449 (is-Cons!71634 (exprs!8702 ct1!282))) b!7366647))

(push 1)

(assert (not d!2282836))

(assert (not b!7366644))

(assert (not bm!675911))

(assert (not b!7366521))

(assert (not b!7366637))

(assert (not bm!675896))

(assert (not b!7366642))

(assert (not b!7366598))

(assert (not b!7366535))

(assert tp_is_empty!48769)

(assert (not b!7366647))

(assert (not d!2282850))

(assert (not bm!675912))

(assert (not bm!675898))

(assert (not b!7366633))

(assert (not b!7366629))

(assert (not b!7366630))

(assert (not d!2282832))

(assert (not b!7366634))

(assert (not b!7366616))

(assert (not bm!675919))

(assert (not b!7366576))

(assert (not bm!675923))

(assert (not b!7366646))

(assert (not d!2282844))

(assert (not b!7366645))

(assert (not b!7366638))

(assert (not b!7366534))

(assert (not bm!675895))

(assert (not b!7366636))

(assert (not b!7366605))

(assert (not bm!675924))

(assert (not bm!675920))

(assert (not bm!675922))

(assert (not b!7366632))

(assert (not b!7366640))

(assert (not b!7366615))

(assert (not d!2282848))

(assert (not b!7366628))

(assert (not d!2282838))

(assert (not d!2282846))

(assert (not b!7366641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2282878 () Bool)

(declare-fun res!2973121 () Bool)

(declare-fun e!4410451 () Bool)

(assert (=> d!2282878 (=> res!2973121 e!4410451)))

(assert (=> d!2282878 (= res!2973121 (is-Nil!71634 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))))))

(assert (=> d!2282878 (= (forall!18068 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)) lambda!457806) e!4410451)))

(declare-fun b!7366754 () Bool)

(declare-fun e!4410452 () Bool)

(assert (=> b!7366754 (= e!4410451 e!4410452)))

(declare-fun res!2973122 () Bool)

(assert (=> b!7366754 (=> (not res!2973122) (not e!4410452))))

(declare-fun dynLambda!29520 (Int Regex!19262) Bool)

(assert (=> b!7366754 (= res!2973122 (dynLambda!29520 lambda!457806 (h!78082 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)))))))

(declare-fun b!7366755 () Bool)

(assert (=> b!7366755 (= e!4410452 (forall!18068 (t!386207 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) lambda!457806))))

(assert (= (and d!2282878 (not res!2973121)) b!7366754))

(assert (= (and b!7366754 res!2973122) b!7366755))

(declare-fun b_lambda!284315 () Bool)

(assert (=> (not b_lambda!284315) (not b!7366754)))

(declare-fun m!8022066 () Bool)

(assert (=> b!7366754 m!8022066))

(declare-fun m!8022068 () Bool)

(assert (=> b!7366755 m!8022068))

(assert (=> d!2282836 d!2282878))

(assert (=> d!2282836 d!2282832))

(declare-fun d!2282880 () Bool)

(assert (=> d!2282880 (forall!18068 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)) lambda!457806)))

(assert (=> d!2282880 true))

(declare-fun _$78!924 () Unit!165473)

(assert (=> d!2282880 (= (choose!57286 (exprs!8702 ct1!282) (exprs!8702 ct2!378) lambda!457806) _$78!924)))

(declare-fun bs!1920608 () Bool)

(assert (= bs!1920608 d!2282880))

(assert (=> bs!1920608 m!8021910))

(assert (=> bs!1920608 m!8021910))

(assert (=> bs!1920608 m!8021972))

(assert (=> d!2282836 d!2282880))

(declare-fun d!2282882 () Bool)

(declare-fun res!2973123 () Bool)

(declare-fun e!4410453 () Bool)

(assert (=> d!2282882 (=> res!2973123 e!4410453)))

(assert (=> d!2282882 (= res!2973123 (is-Nil!71634 (exprs!8702 ct1!282)))))

(assert (=> d!2282882 (= (forall!18068 (exprs!8702 ct1!282) lambda!457806) e!4410453)))

(declare-fun b!7366756 () Bool)

(declare-fun e!4410454 () Bool)

(assert (=> b!7366756 (= e!4410453 e!4410454)))

(declare-fun res!2973124 () Bool)

(assert (=> b!7366756 (=> (not res!2973124) (not e!4410454))))

(assert (=> b!7366756 (= res!2973124 (dynLambda!29520 lambda!457806 (h!78082 (exprs!8702 ct1!282))))))

(declare-fun b!7366757 () Bool)

(assert (=> b!7366757 (= e!4410454 (forall!18068 (t!386207 (exprs!8702 ct1!282)) lambda!457806))))

(assert (= (and d!2282882 (not res!2973123)) b!7366756))

(assert (= (and b!7366756 res!2973124) b!7366757))

(declare-fun b_lambda!284317 () Bool)

(assert (=> (not b_lambda!284317) (not b!7366756)))

(declare-fun m!8022070 () Bool)

(assert (=> b!7366756 m!8022070))

(declare-fun m!8022072 () Bool)

(assert (=> b!7366757 m!8022072))

(assert (=> d!2282836 d!2282882))

(declare-fun bm!675953 () Bool)

(declare-fun c!1368985 () Bool)

(declare-fun call!675958 () Bool)

(assert (=> bm!675953 (= call!675958 (validRegex!9858 (ite c!1368985 (regOne!39037 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))) (regTwo!39036 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))))

(declare-fun d!2282884 () Bool)

(declare-fun res!2973129 () Bool)

(declare-fun e!4410460 () Bool)

(assert (=> d!2282884 (=> res!2973129 e!4410460)))

(assert (=> d!2282884 (= res!2973129 (is-ElementMatch!19262 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))

(assert (=> d!2282884 (= (validRegex!9858 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))) e!4410460)))

(declare-fun b!7366758 () Bool)

(declare-fun res!2973126 () Bool)

(declare-fun e!4410459 () Bool)

(assert (=> b!7366758 (=> (not res!2973126) (not e!4410459))))

(assert (=> b!7366758 (= res!2973126 call!675958)))

(declare-fun e!4410455 () Bool)

(assert (=> b!7366758 (= e!4410455 e!4410459)))

(declare-fun bm!675954 () Bool)

(declare-fun call!675959 () Bool)

(declare-fun c!1368984 () Bool)

(assert (=> bm!675954 (= call!675959 (validRegex!9858 (ite c!1368984 (reg!19591 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))) (ite c!1368985 (regTwo!39037 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))) (regOne!39036 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370))))))))))

(declare-fun b!7366759 () Bool)

(declare-fun call!675960 () Bool)

(assert (=> b!7366759 (= e!4410459 call!675960)))

(declare-fun b!7366760 () Bool)

(declare-fun res!2973127 () Bool)

(declare-fun e!4410461 () Bool)

(assert (=> b!7366760 (=> res!2973127 e!4410461)))

(assert (=> b!7366760 (= res!2973127 (not (is-Concat!28107 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370))))))))

(assert (=> b!7366760 (= e!4410455 e!4410461)))

(declare-fun b!7366761 () Bool)

(declare-fun e!4410457 () Bool)

(declare-fun e!4410458 () Bool)

(assert (=> b!7366761 (= e!4410457 e!4410458)))

(declare-fun res!2973125 () Bool)

(assert (=> b!7366761 (= res!2973125 (not (nullable!8338 (reg!19591 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))))

(assert (=> b!7366761 (=> (not res!2973125) (not e!4410458))))

(declare-fun bm!675955 () Bool)

(assert (=> bm!675955 (= call!675960 call!675959)))

(declare-fun b!7366762 () Bool)

(declare-fun e!4410456 () Bool)

(assert (=> b!7366762 (= e!4410461 e!4410456)))

(declare-fun res!2973128 () Bool)

(assert (=> b!7366762 (=> (not res!2973128) (not e!4410456))))

(assert (=> b!7366762 (= res!2973128 call!675960)))

(declare-fun b!7366763 () Bool)

(assert (=> b!7366763 (= e!4410457 e!4410455)))

(assert (=> b!7366763 (= c!1368985 (is-Union!19262 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))

(declare-fun b!7366764 () Bool)

(assert (=> b!7366764 (= e!4410456 call!675958)))

(declare-fun b!7366765 () Bool)

(assert (=> b!7366765 (= e!4410458 call!675959)))

(declare-fun b!7366766 () Bool)

(assert (=> b!7366766 (= e!4410460 e!4410457)))

(assert (=> b!7366766 (= c!1368984 (is-Star!19262 (ite c!1368958 (regOne!39037 (regTwo!39036 r1!2370)) (regTwo!39036 (regTwo!39036 r1!2370)))))))

(assert (= (and d!2282884 (not res!2973129)) b!7366766))

(assert (= (and b!7366766 c!1368984) b!7366761))

(assert (= (and b!7366766 (not c!1368984)) b!7366763))

(assert (= (and b!7366761 res!2973125) b!7366765))

(assert (= (and b!7366763 c!1368985) b!7366758))

(assert (= (and b!7366763 (not c!1368985)) b!7366760))

(assert (= (and b!7366758 res!2973126) b!7366759))

(assert (= (and b!7366760 (not res!2973127)) b!7366762))

(assert (= (and b!7366762 res!2973128) b!7366764))

(assert (= (or b!7366758 b!7366764) bm!675953))

(assert (= (or b!7366759 b!7366762) bm!675955))

(assert (= (or b!7366765 bm!675955) bm!675954))

(declare-fun m!8022074 () Bool)

(assert (=> bm!675953 m!8022074))

(declare-fun m!8022076 () Bool)

(assert (=> bm!675954 m!8022076))

(declare-fun m!8022078 () Bool)

(assert (=> b!7366761 m!8022078))

(assert (=> bm!675923 d!2282884))

(declare-fun d!2282886 () Bool)

(assert (=> d!2282886 (= (nullable!8338 (reg!19591 r1!2370)) (nullableFct!3327 (reg!19591 r1!2370)))))

(declare-fun bs!1920609 () Bool)

(assert (= bs!1920609 d!2282886))

(declare-fun m!8022080 () Bool)

(assert (=> bs!1920609 m!8022080))

(assert (=> b!7366576 d!2282886))

(declare-fun d!2282888 () Bool)

(declare-fun c!1368988 () Bool)

(assert (=> d!2282888 (= c!1368988 (is-Nil!71634 lt!2615014))))

(declare-fun e!4410464 () (Set Regex!19262))

(assert (=> d!2282888 (= (content!15143 lt!2615014) e!4410464)))

(declare-fun b!7366771 () Bool)

(assert (=> b!7366771 (= e!4410464 (as set.empty (Set Regex!19262)))))

(declare-fun b!7366772 () Bool)

(assert (=> b!7366772 (= e!4410464 (set.union (set.insert (h!78082 lt!2615014) (as set.empty (Set Regex!19262))) (content!15143 (t!386207 lt!2615014))))))

(assert (= (and d!2282888 c!1368988) b!7366771))

(assert (= (and d!2282888 (not c!1368988)) b!7366772))

(declare-fun m!8022082 () Bool)

(assert (=> b!7366772 m!8022082))

(declare-fun m!8022084 () Bool)

(assert (=> b!7366772 m!8022084))

(assert (=> d!2282832 d!2282888))

(declare-fun d!2282890 () Bool)

(declare-fun c!1368989 () Bool)

(assert (=> d!2282890 (= c!1368989 (is-Nil!71634 (exprs!8702 ct1!282)))))

(declare-fun e!4410465 () (Set Regex!19262))

(assert (=> d!2282890 (= (content!15143 (exprs!8702 ct1!282)) e!4410465)))

(declare-fun b!7366773 () Bool)

(assert (=> b!7366773 (= e!4410465 (as set.empty (Set Regex!19262)))))

(declare-fun b!7366774 () Bool)

(assert (=> b!7366774 (= e!4410465 (set.union (set.insert (h!78082 (exprs!8702 ct1!282)) (as set.empty (Set Regex!19262))) (content!15143 (t!386207 (exprs!8702 ct1!282)))))))

(assert (= (and d!2282890 c!1368989) b!7366773))

(assert (= (and d!2282890 (not c!1368989)) b!7366774))

(declare-fun m!8022086 () Bool)

(assert (=> b!7366774 m!8022086))

(declare-fun m!8022088 () Bool)

(assert (=> b!7366774 m!8022088))

(assert (=> d!2282832 d!2282890))

(declare-fun d!2282892 () Bool)

(declare-fun c!1368990 () Bool)

(assert (=> d!2282892 (= c!1368990 (is-Nil!71634 (exprs!8702 ct2!378)))))

(declare-fun e!4410466 () (Set Regex!19262))

(assert (=> d!2282892 (= (content!15143 (exprs!8702 ct2!378)) e!4410466)))

(declare-fun b!7366775 () Bool)

(assert (=> b!7366775 (= e!4410466 (as set.empty (Set Regex!19262)))))

(declare-fun b!7366776 () Bool)

(assert (=> b!7366776 (= e!4410466 (set.union (set.insert (h!78082 (exprs!8702 ct2!378)) (as set.empty (Set Regex!19262))) (content!15143 (t!386207 (exprs!8702 ct2!378)))))))

(assert (= (and d!2282892 c!1368990) b!7366775))

(assert (= (and d!2282892 (not c!1368990)) b!7366776))

(declare-fun m!8022090 () Bool)

(assert (=> b!7366776 m!8022090))

(declare-fun m!8022092 () Bool)

(assert (=> b!7366776 m!8022092))

(assert (=> d!2282832 d!2282892))

(declare-fun d!2282894 () Bool)

(declare-fun res!2973130 () Bool)

(declare-fun e!4410467 () Bool)

(assert (=> d!2282894 (=> res!2973130 e!4410467)))

(assert (=> d!2282894 (= res!2973130 (is-Nil!71634 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370))))))))

(assert (=> d!2282894 (= (forall!18068 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))) lambda!457812) e!4410467)))

(declare-fun b!7366777 () Bool)

(declare-fun e!4410468 () Bool)

(assert (=> b!7366777 (= e!4410467 e!4410468)))

(declare-fun res!2973131 () Bool)

(assert (=> b!7366777 (=> (not res!2973131) (not e!4410468))))

(assert (=> b!7366777 (= res!2973131 (dynLambda!29520 lambda!457812 (h!78082 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))))))))

(declare-fun b!7366778 () Bool)

(assert (=> b!7366778 (= e!4410468 (forall!18068 (t!386207 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370))))) lambda!457812))))

(assert (= (and d!2282894 (not res!2973130)) b!7366777))

(assert (= (and b!7366777 res!2973131) b!7366778))

(declare-fun b_lambda!284319 () Bool)

(assert (=> (not b_lambda!284319) (not b!7366777)))

(declare-fun m!8022094 () Bool)

(assert (=> b!7366777 m!8022094))

(declare-fun m!8022096 () Bool)

(assert (=> b!7366778 m!8022096))

(assert (=> d!2282838 d!2282894))

(declare-fun call!675961 () Bool)

(declare-fun c!1368992 () Bool)

(declare-fun bm!675956 () Bool)

(assert (=> bm!675956 (= call!675961 (validRegex!9858 (ite c!1368992 (regOne!39037 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) (regTwo!39036 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))))

(declare-fun d!2282896 () Bool)

(declare-fun res!2973136 () Bool)

(declare-fun e!4410474 () Bool)

(assert (=> d!2282896 (=> res!2973136 e!4410474)))

(assert (=> d!2282896 (= res!2973136 (is-ElementMatch!19262 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(assert (=> d!2282896 (= (validRegex!9858 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) e!4410474)))

(declare-fun b!7366779 () Bool)

(declare-fun res!2973133 () Bool)

(declare-fun e!4410473 () Bool)

(assert (=> b!7366779 (=> (not res!2973133) (not e!4410473))))

(assert (=> b!7366779 (= res!2973133 call!675961)))

(declare-fun e!4410469 () Bool)

(assert (=> b!7366779 (= e!4410469 e!4410473)))

(declare-fun bm!675957 () Bool)

(declare-fun c!1368991 () Bool)

(declare-fun call!675962 () Bool)

(assert (=> bm!675957 (= call!675962 (validRegex!9858 (ite c!1368991 (reg!19591 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) (ite c!1368992 (regTwo!39037 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) (regOne!39036 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))))))

(declare-fun b!7366780 () Bool)

(declare-fun call!675963 () Bool)

(assert (=> b!7366780 (= e!4410473 call!675963)))

(declare-fun b!7366781 () Bool)

(declare-fun res!2973134 () Bool)

(declare-fun e!4410475 () Bool)

(assert (=> b!7366781 (=> res!2973134 e!4410475)))

(assert (=> b!7366781 (= res!2973134 (not (is-Concat!28107 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))))

(assert (=> b!7366781 (= e!4410469 e!4410475)))

(declare-fun b!7366782 () Bool)

(declare-fun e!4410471 () Bool)

(declare-fun e!4410472 () Bool)

(assert (=> b!7366782 (= e!4410471 e!4410472)))

(declare-fun res!2973132 () Bool)

(assert (=> b!7366782 (= res!2973132 (not (nullable!8338 (reg!19591 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))))

(assert (=> b!7366782 (=> (not res!2973132) (not e!4410472))))

(declare-fun bm!675958 () Bool)

(assert (=> bm!675958 (= call!675963 call!675962)))

(declare-fun b!7366783 () Bool)

(declare-fun e!4410470 () Bool)

(assert (=> b!7366783 (= e!4410475 e!4410470)))

(declare-fun res!2973135 () Bool)

(assert (=> b!7366783 (=> (not res!2973135) (not e!4410470))))

(assert (=> b!7366783 (= res!2973135 call!675963)))

(declare-fun b!7366784 () Bool)

(assert (=> b!7366784 (= e!4410471 e!4410469)))

(assert (=> b!7366784 (= c!1368992 (is-Union!19262 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun b!7366785 () Bool)

(assert (=> b!7366785 (= e!4410470 call!675961)))

(declare-fun b!7366786 () Bool)

(assert (=> b!7366786 (= e!4410472 call!675962)))

(declare-fun b!7366787 () Bool)

(assert (=> b!7366787 (= e!4410474 e!4410471)))

(assert (=> b!7366787 (= c!1368991 (is-Star!19262 (ite c!1368948 (reg!19591 r1!2370) (ite c!1368949 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(assert (= (and d!2282896 (not res!2973136)) b!7366787))

(assert (= (and b!7366787 c!1368991) b!7366782))

(assert (= (and b!7366787 (not c!1368991)) b!7366784))

(assert (= (and b!7366782 res!2973132) b!7366786))

(assert (= (and b!7366784 c!1368992) b!7366779))

(assert (= (and b!7366784 (not c!1368992)) b!7366781))

(assert (= (and b!7366779 res!2973133) b!7366780))

(assert (= (and b!7366781 (not res!2973134)) b!7366783))

(assert (= (and b!7366783 res!2973135) b!7366785))

(assert (= (or b!7366779 b!7366785) bm!675956))

(assert (= (or b!7366780 b!7366783) bm!675958))

(assert (= (or b!7366786 bm!675958) bm!675957))

(declare-fun m!8022098 () Bool)

(assert (=> bm!675956 m!8022098))

(declare-fun m!8022100 () Bool)

(assert (=> bm!675957 m!8022100))

(declare-fun m!8022102 () Bool)

(assert (=> b!7366782 m!8022102))

(assert (=> bm!675912 d!2282896))

(declare-fun d!2282898 () Bool)

(declare-fun res!2973137 () Bool)

(declare-fun e!4410476 () Bool)

(assert (=> d!2282898 (=> res!2973137 e!4410476)))

(assert (=> d!2282898 (= res!2973137 (is-Nil!71634 (exprs!8702 ct1!282)))))

(assert (=> d!2282898 (= (forall!18068 (exprs!8702 ct1!282) lambda!457814) e!4410476)))

(declare-fun b!7366788 () Bool)

(declare-fun e!4410477 () Bool)

(assert (=> b!7366788 (= e!4410476 e!4410477)))

(declare-fun res!2973138 () Bool)

(assert (=> b!7366788 (=> (not res!2973138) (not e!4410477))))

(assert (=> b!7366788 (= res!2973138 (dynLambda!29520 lambda!457814 (h!78082 (exprs!8702 ct1!282))))))

(declare-fun b!7366789 () Bool)

(assert (=> b!7366789 (= e!4410477 (forall!18068 (t!386207 (exprs!8702 ct1!282)) lambda!457814))))

(assert (= (and d!2282898 (not res!2973137)) b!7366788))

(assert (= (and b!7366788 res!2973138) b!7366789))

(declare-fun b_lambda!284321 () Bool)

(assert (=> (not b_lambda!284321) (not b!7366788)))

(declare-fun m!8022104 () Bool)

(assert (=> b!7366788 m!8022104))

(declare-fun m!8022106 () Bool)

(assert (=> b!7366789 m!8022106))

(assert (=> d!2282846 d!2282898))

(assert (=> b!7366598 d!2282850))

(declare-fun d!2282900 () Bool)

(assert (=> d!2282900 (= ($colon$colon!3244 (exprs!8702 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)))) (ite (or c!1368934 c!1368936) (regTwo!39036 r1!2370) r1!2370)) (Cons!71634 (ite (or c!1368934 c!1368936) (regTwo!39036 r1!2370) r1!2370) (exprs!8702 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))))))))

(assert (=> bm!675898 d!2282900))

(declare-fun b!7366790 () Bool)

(declare-fun e!4410480 () (Set Context!16404))

(declare-fun call!675965 () (Set Context!16404))

(assert (=> b!7366790 (= e!4410480 call!675965)))

(declare-fun b!7366791 () Bool)

(declare-fun e!4410483 () (Set Context!16404))

(declare-fun call!675967 () (Set Context!16404))

(declare-fun call!675968 () (Set Context!16404))

(assert (=> b!7366791 (= e!4410483 (set.union call!675967 call!675968))))

(declare-fun e!4410478 () (Set Context!16404))

(declare-fun b!7366792 () Bool)

(assert (=> b!7366792 (= e!4410478 (set.insert (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924)) (as set.empty (Set Context!16404))))))

(declare-fun bm!675959 () Bool)

(assert (=> bm!675959 (= call!675965 call!675968)))

(declare-fun b!7366793 () Bool)

(declare-fun e!4410479 () (Set Context!16404))

(declare-fun call!675964 () (Set Context!16404))

(assert (=> b!7366793 (= e!4410479 (set.union call!675964 call!675967))))

(declare-fun b!7366794 () Bool)

(declare-fun e!4410481 () (Set Context!16404))

(assert (=> b!7366794 (= e!4410481 (as set.empty (Set Context!16404)))))

(declare-fun bm!675960 () Bool)

(declare-fun call!675966 () List!71758)

(declare-fun call!675969 () List!71758)

(assert (=> bm!675960 (= call!675966 call!675969)))

(declare-fun b!7366795 () Bool)

(declare-fun c!1368995 () Bool)

(declare-fun e!4410482 () Bool)

(assert (=> b!7366795 (= c!1368995 e!4410482)))

(declare-fun res!2973139 () Bool)

(assert (=> b!7366795 (=> (not res!2973139) (not e!4410482))))

(assert (=> b!7366795 (= res!2973139 (is-Concat!28107 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (=> b!7366795 (= e!4410479 e!4410483)))

(declare-fun d!2282902 () Bool)

(declare-fun c!1368996 () Bool)

(assert (=> d!2282902 (= c!1368996 (and (is-ElementMatch!19262 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (= (c!1368920 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) c!10362)))))

(assert (=> d!2282902 (= (derivationStepZipperDown!3088 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))) (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924)) c!10362) e!4410478)))

(declare-fun c!1368993 () Bool)

(declare-fun bm!675961 () Bool)

(assert (=> bm!675961 (= call!675967 (derivationStepZipperDown!3088 (ite c!1368993 (regTwo!39037 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (regOne!39036 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))) (ite c!1368993 (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924)) (Context!16405 call!675969)) c!10362))))

(declare-fun c!1368994 () Bool)

(declare-fun b!7366796 () Bool)

(assert (=> b!7366796 (= c!1368994 (is-Star!19262 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (=> b!7366796 (= e!4410480 e!4410481)))

(declare-fun b!7366797 () Bool)

(assert (=> b!7366797 (= e!4410482 (nullable!8338 (regOne!39036 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))))

(declare-fun bm!675962 () Bool)

(declare-fun c!1368997 () Bool)

(assert (=> bm!675962 (= call!675964 (derivationStepZipperDown!3088 (ite c!1368993 (regOne!39037 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1368995 (regTwo!39036 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1368997 (regOne!39036 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (reg!19591 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))) (ite (or c!1368993 c!1368995) (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924)) (Context!16405 call!675966)) c!10362))))

(declare-fun b!7366798 () Bool)

(assert (=> b!7366798 (= e!4410483 e!4410480)))

(assert (=> b!7366798 (= c!1368997 (is-Concat!28107 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(declare-fun bm!675963 () Bool)

(assert (=> bm!675963 (= call!675968 call!675964)))

(declare-fun b!7366799 () Bool)

(assert (=> b!7366799 (= e!4410481 call!675965)))

(declare-fun bm!675964 () Bool)

(assert (=> bm!675964 (= call!675969 ($colon$colon!3244 (exprs!8702 (ite (or c!1368952 c!1368954) ct1!282 (Context!16405 call!675924))) (ite (or c!1368995 c!1368997) (regTwo!39036 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))))

(declare-fun b!7366800 () Bool)

(assert (=> b!7366800 (= e!4410478 e!4410479)))

(assert (=> b!7366800 (= c!1368993 (is-Union!19262 (ite c!1368952 (regOne!39037 r1!2370) (ite c!1368954 (regTwo!39036 r1!2370) (ite c!1368956 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (= (and d!2282902 c!1368996) b!7366792))

(assert (= (and d!2282902 (not c!1368996)) b!7366800))

(assert (= (and b!7366800 c!1368993) b!7366793))

(assert (= (and b!7366800 (not c!1368993)) b!7366795))

(assert (= (and b!7366795 res!2973139) b!7366797))

(assert (= (and b!7366795 c!1368995) b!7366791))

(assert (= (and b!7366795 (not c!1368995)) b!7366798))

(assert (= (and b!7366798 c!1368997) b!7366790))

(assert (= (and b!7366798 (not c!1368997)) b!7366796))

(assert (= (and b!7366796 c!1368994) b!7366799))

(assert (= (and b!7366796 (not c!1368994)) b!7366794))

(assert (= (or b!7366790 b!7366799) bm!675960))

(assert (= (or b!7366790 b!7366799) bm!675959))

(assert (= (or b!7366791 bm!675959) bm!675963))

(assert (= (or b!7366791 bm!675960) bm!675964))

(assert (= (or b!7366793 b!7366791) bm!675961))

(assert (= (or b!7366793 bm!675963) bm!675962))

(declare-fun m!8022108 () Bool)

(assert (=> bm!675964 m!8022108))

(declare-fun m!8022110 () Bool)

(assert (=> b!7366797 m!8022110))

(declare-fun m!8022112 () Bool)

(assert (=> bm!675961 m!8022112))

(declare-fun m!8022114 () Bool)

(assert (=> bm!675962 m!8022114))

(declare-fun m!8022116 () Bool)

(assert (=> b!7366792 m!8022116))

(assert (=> bm!675920 d!2282902))

(declare-fun b!7366801 () Bool)

(declare-fun e!4410486 () (Set Context!16404))

(declare-fun call!675971 () (Set Context!16404))

(assert (=> b!7366801 (= e!4410486 call!675971)))

(declare-fun b!7366802 () Bool)

(declare-fun e!4410489 () (Set Context!16404))

(declare-fun call!675973 () (Set Context!16404))

(declare-fun call!675974 () (Set Context!16404))

(assert (=> b!7366802 (= e!4410489 (set.union call!675973 call!675974))))

(declare-fun b!7366803 () Bool)

(declare-fun e!4410484 () (Set Context!16404))

(assert (=> b!7366803 (= e!4410484 (set.insert (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900)) (as set.empty (Set Context!16404))))))

(declare-fun bm!675965 () Bool)

(assert (=> bm!675965 (= call!675971 call!675974)))

(declare-fun b!7366804 () Bool)

(declare-fun e!4410485 () (Set Context!16404))

(declare-fun call!675970 () (Set Context!16404))

(assert (=> b!7366804 (= e!4410485 (set.union call!675970 call!675973))))

(declare-fun b!7366805 () Bool)

(declare-fun e!4410487 () (Set Context!16404))

(assert (=> b!7366805 (= e!4410487 (as set.empty (Set Context!16404)))))

(declare-fun bm!675966 () Bool)

(declare-fun call!675972 () List!71758)

(declare-fun call!675975 () List!71758)

(assert (=> bm!675966 (= call!675972 call!675975)))

(declare-fun b!7366806 () Bool)

(declare-fun c!1369000 () Bool)

(declare-fun e!4410488 () Bool)

(assert (=> b!7366806 (= c!1369000 e!4410488)))

(declare-fun res!2973140 () Bool)

(assert (=> b!7366806 (=> (not res!2973140) (not e!4410488))))

(assert (=> b!7366806 (= res!2973140 (is-Concat!28107 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (=> b!7366806 (= e!4410485 e!4410489)))

(declare-fun d!2282904 () Bool)

(declare-fun c!1369001 () Bool)

(assert (=> d!2282904 (= c!1369001 (and (is-ElementMatch!19262 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (= (c!1368920 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) c!10362)))))

(assert (=> d!2282904 (= (derivationStepZipperDown!3088 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))) (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900)) c!10362) e!4410484)))

(declare-fun bm!675967 () Bool)

(declare-fun c!1368998 () Bool)

(assert (=> bm!675967 (= call!675973 (derivationStepZipperDown!3088 (ite c!1368998 (regTwo!39037 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (regOne!39036 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))) (ite c!1368998 (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900)) (Context!16405 call!675975)) c!10362))))

(declare-fun c!1368999 () Bool)

(declare-fun b!7366807 () Bool)

(assert (=> b!7366807 (= c!1368999 (is-Star!19262 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (=> b!7366807 (= e!4410486 e!4410487)))

(declare-fun b!7366808 () Bool)

(assert (=> b!7366808 (= e!4410488 (nullable!8338 (regOne!39036 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))))

(declare-fun c!1369002 () Bool)

(declare-fun bm!675968 () Bool)

(assert (=> bm!675968 (= call!675970 (derivationStepZipperDown!3088 (ite c!1368998 (regOne!39037 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1369000 (regTwo!39036 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1369002 (regOne!39036 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (reg!19591 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))) (ite (or c!1368998 c!1369000) (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900)) (Context!16405 call!675972)) c!10362))))

(declare-fun b!7366809 () Bool)

(assert (=> b!7366809 (= e!4410489 e!4410486)))

(assert (=> b!7366809 (= c!1369002 (is-Concat!28107 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(declare-fun bm!675969 () Bool)

(assert (=> bm!675969 (= call!675974 call!675970)))

(declare-fun b!7366810 () Bool)

(assert (=> b!7366810 (= e!4410487 call!675971)))

(declare-fun bm!675970 () Bool)

(assert (=> bm!675970 (= call!675975 ($colon$colon!3244 (exprs!8702 (ite (or c!1368932 c!1368934) (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675900))) (ite (or c!1369000 c!1369002) (regTwo!39036 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))) (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370)))))))))

(declare-fun b!7366811 () Bool)

(assert (=> b!7366811 (= e!4410484 e!4410485)))

(assert (=> b!7366811 (= c!1368998 (is-Union!19262 (ite c!1368932 (regOne!39037 r1!2370) (ite c!1368934 (regTwo!39036 r1!2370) (ite c!1368936 (regOne!39036 r1!2370) (reg!19591 r1!2370))))))))

(assert (= (and d!2282904 c!1369001) b!7366803))

(assert (= (and d!2282904 (not c!1369001)) b!7366811))

(assert (= (and b!7366811 c!1368998) b!7366804))

(assert (= (and b!7366811 (not c!1368998)) b!7366806))

(assert (= (and b!7366806 res!2973140) b!7366808))

(assert (= (and b!7366806 c!1369000) b!7366802))

(assert (= (and b!7366806 (not c!1369000)) b!7366809))

(assert (= (and b!7366809 c!1369002) b!7366801))

(assert (= (and b!7366809 (not c!1369002)) b!7366807))

(assert (= (and b!7366807 c!1368999) b!7366810))

(assert (= (and b!7366807 (not c!1368999)) b!7366805))

(assert (= (or b!7366801 b!7366810) bm!675966))

(assert (= (or b!7366801 b!7366810) bm!675965))

(assert (= (or b!7366802 bm!675965) bm!675969))

(assert (= (or b!7366802 bm!675966) bm!675970))

(assert (= (or b!7366804 b!7366802) bm!675967))

(assert (= (or b!7366804 bm!675969) bm!675968))

(declare-fun m!8022118 () Bool)

(assert (=> bm!675970 m!8022118))

(declare-fun m!8022120 () Bool)

(assert (=> b!7366808 m!8022120))

(declare-fun m!8022122 () Bool)

(assert (=> bm!675967 m!8022122))

(declare-fun m!8022124 () Bool)

(assert (=> bm!675968 m!8022124))

(declare-fun m!8022126 () Bool)

(assert (=> b!7366803 m!8022126))

(assert (=> bm!675896 d!2282904))

(declare-fun call!675976 () Bool)

(declare-fun bm!675971 () Bool)

(declare-fun c!1369004 () Bool)

(assert (=> bm!675971 (= call!675976 (validRegex!9858 (ite c!1369004 (regOne!39037 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))) (regTwo!39036 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))))

(declare-fun d!2282906 () Bool)

(declare-fun res!2973145 () Bool)

(declare-fun e!4410495 () Bool)

(assert (=> d!2282906 (=> res!2973145 e!4410495)))

(assert (=> d!2282906 (= res!2973145 (is-ElementMatch!19262 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))

(assert (=> d!2282906 (= (validRegex!9858 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))) e!4410495)))

(declare-fun b!7366812 () Bool)

(declare-fun res!2973142 () Bool)

(declare-fun e!4410494 () Bool)

(assert (=> b!7366812 (=> (not res!2973142) (not e!4410494))))

(assert (=> b!7366812 (= res!2973142 call!675976)))

(declare-fun e!4410490 () Bool)

(assert (=> b!7366812 (= e!4410490 e!4410494)))

(declare-fun call!675977 () Bool)

(declare-fun c!1369003 () Bool)

(declare-fun bm!675972 () Bool)

(assert (=> bm!675972 (= call!675977 (validRegex!9858 (ite c!1369003 (reg!19591 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))) (ite c!1369004 (regTwo!39037 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))) (regOne!39036 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370)))))))))

(declare-fun b!7366813 () Bool)

(declare-fun call!675978 () Bool)

(assert (=> b!7366813 (= e!4410494 call!675978)))

(declare-fun b!7366814 () Bool)

(declare-fun res!2973143 () Bool)

(declare-fun e!4410496 () Bool)

(assert (=> b!7366814 (=> res!2973143 e!4410496)))

(assert (=> b!7366814 (= res!2973143 (not (is-Concat!28107 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370)))))))

(assert (=> b!7366814 (= e!4410490 e!4410496)))

(declare-fun b!7366815 () Bool)

(declare-fun e!4410492 () Bool)

(declare-fun e!4410493 () Bool)

(assert (=> b!7366815 (= e!4410492 e!4410493)))

(declare-fun res!2973141 () Bool)

(assert (=> b!7366815 (= res!2973141 (not (nullable!8338 (reg!19591 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))))

(assert (=> b!7366815 (=> (not res!2973141) (not e!4410493))))

(declare-fun bm!675973 () Bool)

(assert (=> bm!675973 (= call!675978 call!675977)))

(declare-fun b!7366816 () Bool)

(declare-fun e!4410491 () Bool)

(assert (=> b!7366816 (= e!4410496 e!4410491)))

(declare-fun res!2973144 () Bool)

(assert (=> b!7366816 (=> (not res!2973144) (not e!4410491))))

(assert (=> b!7366816 (= res!2973144 call!675978)))

(declare-fun b!7366817 () Bool)

(assert (=> b!7366817 (= e!4410492 e!4410490)))

(assert (=> b!7366817 (= c!1369004 (is-Union!19262 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))

(declare-fun b!7366818 () Bool)

(assert (=> b!7366818 (= e!4410491 call!675976)))

(declare-fun b!7366819 () Bool)

(assert (=> b!7366819 (= e!4410493 call!675977)))

(declare-fun b!7366820 () Bool)

(assert (=> b!7366820 (= e!4410495 e!4410492)))

(assert (=> b!7366820 (= c!1369003 (is-Star!19262 (ite c!1368949 (regOne!39037 r1!2370) (regTwo!39036 r1!2370))))))

(assert (= (and d!2282906 (not res!2973145)) b!7366820))

(assert (= (and b!7366820 c!1369003) b!7366815))

(assert (= (and b!7366820 (not c!1369003)) b!7366817))

(assert (= (and b!7366815 res!2973141) b!7366819))

(assert (= (and b!7366817 c!1369004) b!7366812))

(assert (= (and b!7366817 (not c!1369004)) b!7366814))

(assert (= (and b!7366812 res!2973142) b!7366813))

(assert (= (and b!7366814 (not res!2973143)) b!7366816))

(assert (= (and b!7366816 res!2973144) b!7366818))

(assert (= (or b!7366812 b!7366818) bm!675971))

(assert (= (or b!7366813 b!7366816) bm!675973))

(assert (= (or b!7366819 bm!675973) bm!675972))

(declare-fun m!8022128 () Bool)

(assert (=> bm!675971 m!8022128))

(declare-fun m!8022130 () Bool)

(assert (=> bm!675972 m!8022130))

(declare-fun m!8022132 () Bool)

(assert (=> b!7366815 m!8022132))

(assert (=> bm!675911 d!2282906))

(declare-fun bm!675978 () Bool)

(declare-fun call!675984 () Bool)

(declare-fun c!1369007 () Bool)

(assert (=> bm!675978 (= call!675984 (nullable!8338 (ite c!1369007 (regTwo!39037 (regOne!39036 r1!2370)) (regOne!39036 (regOne!39036 r1!2370)))))))

(declare-fun d!2282908 () Bool)

(declare-fun res!2973156 () Bool)

(declare-fun e!4410514 () Bool)

(assert (=> d!2282908 (=> res!2973156 e!4410514)))

(assert (=> d!2282908 (= res!2973156 (is-EmptyExpr!19262 (regOne!39036 r1!2370)))))

(assert (=> d!2282908 (= (nullableFct!3327 (regOne!39036 r1!2370)) e!4410514)))

(declare-fun b!7366835 () Bool)

(declare-fun e!4410510 () Bool)

(declare-fun e!4410513 () Bool)

(assert (=> b!7366835 (= e!4410510 e!4410513)))

(declare-fun res!2973158 () Bool)

(declare-fun call!675983 () Bool)

(assert (=> b!7366835 (= res!2973158 call!675983)))

(assert (=> b!7366835 (=> res!2973158 e!4410513)))

(declare-fun b!7366836 () Bool)

(declare-fun e!4410509 () Bool)

(declare-fun e!4410511 () Bool)

(assert (=> b!7366836 (= e!4410509 e!4410511)))

(declare-fun res!2973159 () Bool)

(assert (=> b!7366836 (=> res!2973159 e!4410511)))

(assert (=> b!7366836 (= res!2973159 (is-Star!19262 (regOne!39036 r1!2370)))))

(declare-fun b!7366837 () Bool)

(assert (=> b!7366837 (= e!4410513 call!675984)))

(declare-fun b!7366838 () Bool)

(declare-fun e!4410512 () Bool)

(assert (=> b!7366838 (= e!4410512 call!675983)))

(declare-fun b!7366839 () Bool)

(assert (=> b!7366839 (= e!4410514 e!4410509)))

(declare-fun res!2973157 () Bool)

(assert (=> b!7366839 (=> (not res!2973157) (not e!4410509))))

(assert (=> b!7366839 (= res!2973157 (and (not (is-EmptyLang!19262 (regOne!39036 r1!2370))) (not (is-ElementMatch!19262 (regOne!39036 r1!2370)))))))

(declare-fun bm!675979 () Bool)

(assert (=> bm!675979 (= call!675983 (nullable!8338 (ite c!1369007 (regOne!39037 (regOne!39036 r1!2370)) (regTwo!39036 (regOne!39036 r1!2370)))))))

(declare-fun b!7366840 () Bool)

(assert (=> b!7366840 (= e!4410511 e!4410510)))

(assert (=> b!7366840 (= c!1369007 (is-Union!19262 (regOne!39036 r1!2370)))))

(declare-fun b!7366841 () Bool)

(assert (=> b!7366841 (= e!4410510 e!4410512)))

(declare-fun res!2973160 () Bool)

(assert (=> b!7366841 (= res!2973160 call!675984)))

(assert (=> b!7366841 (=> (not res!2973160) (not e!4410512))))

(assert (= (and d!2282908 (not res!2973156)) b!7366839))

(assert (= (and b!7366839 res!2973157) b!7366836))

(assert (= (and b!7366836 (not res!2973159)) b!7366840))

(assert (= (and b!7366840 c!1369007) b!7366835))

(assert (= (and b!7366840 (not c!1369007)) b!7366841))

(assert (= (and b!7366835 (not res!2973158)) b!7366837))

(assert (= (and b!7366841 res!2973160) b!7366838))

(assert (= (or b!7366837 b!7366841) bm!675978))

(assert (= (or b!7366835 b!7366838) bm!675979))

(declare-fun m!8022134 () Bool)

(assert (=> bm!675978 m!8022134))

(declare-fun m!8022136 () Bool)

(assert (=> bm!675979 m!8022136))

(assert (=> d!2282850 d!2282908))

(declare-fun b!7366842 () Bool)

(declare-fun e!4410517 () (Set Context!16404))

(declare-fun call!675986 () (Set Context!16404))

(assert (=> b!7366842 (= e!4410517 call!675986)))

(declare-fun b!7366843 () Bool)

(declare-fun e!4410520 () (Set Context!16404))

(declare-fun call!675988 () (Set Context!16404))

(declare-fun call!675989 () (Set Context!16404))

(assert (=> b!7366843 (= e!4410520 (set.union call!675988 call!675989))))

(declare-fun e!4410515 () (Set Context!16404))

(declare-fun b!7366844 () Bool)

(assert (=> b!7366844 (= e!4410515 (set.insert (ite c!1368952 ct1!282 (Context!16405 call!675927)) (as set.empty (Set Context!16404))))))

(declare-fun bm!675980 () Bool)

(assert (=> bm!675980 (= call!675986 call!675989)))

(declare-fun b!7366845 () Bool)

(declare-fun e!4410516 () (Set Context!16404))

(declare-fun call!675985 () (Set Context!16404))

(assert (=> b!7366845 (= e!4410516 (set.union call!675985 call!675988))))

(declare-fun b!7366846 () Bool)

(declare-fun e!4410518 () (Set Context!16404))

(assert (=> b!7366846 (= e!4410518 (as set.empty (Set Context!16404)))))

(declare-fun bm!675981 () Bool)

(declare-fun call!675987 () List!71758)

(declare-fun call!675990 () List!71758)

(assert (=> bm!675981 (= call!675987 call!675990)))

(declare-fun b!7366847 () Bool)

(declare-fun c!1369010 () Bool)

(declare-fun e!4410519 () Bool)

(assert (=> b!7366847 (= c!1369010 e!4410519)))

(declare-fun res!2973161 () Bool)

(assert (=> b!7366847 (=> (not res!2973161) (not e!4410519))))

(assert (=> b!7366847 (= res!2973161 (is-Concat!28107 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (=> b!7366847 (= e!4410516 e!4410520)))

(declare-fun c!1369011 () Bool)

(declare-fun d!2282910 () Bool)

(assert (=> d!2282910 (= c!1369011 (and (is-ElementMatch!19262 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (= (c!1368920 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) c!10362)))))

(assert (=> d!2282910 (= (derivationStepZipperDown!3088 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)) (ite c!1368952 ct1!282 (Context!16405 call!675927)) c!10362) e!4410515)))

(declare-fun bm!675982 () Bool)

(declare-fun c!1369008 () Bool)

(assert (=> bm!675982 (= call!675988 (derivationStepZipperDown!3088 (ite c!1369008 (regTwo!39037 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (regOne!39036 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) (ite c!1369008 (ite c!1368952 ct1!282 (Context!16405 call!675927)) (Context!16405 call!675990)) c!10362))))

(declare-fun b!7366848 () Bool)

(declare-fun c!1369009 () Bool)

(assert (=> b!7366848 (= c!1369009 (is-Star!19262 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (=> b!7366848 (= e!4410517 e!4410518)))

(declare-fun b!7366849 () Bool)

(assert (=> b!7366849 (= e!4410519 (nullable!8338 (regOne!39036 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun c!1369012 () Bool)

(declare-fun bm!675983 () Bool)

(assert (=> bm!675983 (= call!675985 (derivationStepZipperDown!3088 (ite c!1369008 (regOne!39037 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1369010 (regTwo!39036 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1369012 (regOne!39036 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (reg!19591 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))) (ite (or c!1369008 c!1369010) (ite c!1368952 ct1!282 (Context!16405 call!675927)) (Context!16405 call!675987)) c!10362))))

(declare-fun b!7366850 () Bool)

(assert (=> b!7366850 (= e!4410520 e!4410517)))

(assert (=> b!7366850 (= c!1369012 (is-Concat!28107 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(declare-fun bm!675984 () Bool)

(assert (=> bm!675984 (= call!675989 call!675985)))

(declare-fun b!7366851 () Bool)

(assert (=> b!7366851 (= e!4410518 call!675986)))

(declare-fun bm!675985 () Bool)

(assert (=> bm!675985 (= call!675990 ($colon$colon!3244 (exprs!8702 (ite c!1368952 ct1!282 (Context!16405 call!675927))) (ite (or c!1369010 c!1369012) (regTwo!39036 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun b!7366852 () Bool)

(assert (=> b!7366852 (= e!4410515 e!4410516)))

(assert (=> b!7366852 (= c!1369008 (is-Union!19262 (ite c!1368952 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (= (and d!2282910 c!1369011) b!7366844))

(assert (= (and d!2282910 (not c!1369011)) b!7366852))

(assert (= (and b!7366852 c!1369008) b!7366845))

(assert (= (and b!7366852 (not c!1369008)) b!7366847))

(assert (= (and b!7366847 res!2973161) b!7366849))

(assert (= (and b!7366847 c!1369010) b!7366843))

(assert (= (and b!7366847 (not c!1369010)) b!7366850))

(assert (= (and b!7366850 c!1369012) b!7366842))

(assert (= (and b!7366850 (not c!1369012)) b!7366848))

(assert (= (and b!7366848 c!1369009) b!7366851))

(assert (= (and b!7366848 (not c!1369009)) b!7366846))

(assert (= (or b!7366842 b!7366851) bm!675981))

(assert (= (or b!7366842 b!7366851) bm!675980))

(assert (= (or b!7366843 bm!675980) bm!675984))

(assert (= (or b!7366843 bm!675981) bm!675985))

(assert (= (or b!7366845 b!7366843) bm!675982))

(assert (= (or b!7366845 bm!675984) bm!675983))

(declare-fun m!8022138 () Bool)

(assert (=> bm!675985 m!8022138))

(declare-fun m!8022140 () Bool)

(assert (=> b!7366849 m!8022140))

(declare-fun m!8022142 () Bool)

(assert (=> bm!675982 m!8022142))

(declare-fun m!8022144 () Bool)

(assert (=> bm!675983 m!8022144))

(declare-fun m!8022146 () Bool)

(assert (=> b!7366844 m!8022146))

(assert (=> bm!675919 d!2282910))

(declare-fun d!2282912 () Bool)

(declare-fun res!2973162 () Bool)

(declare-fun e!4410521 () Bool)

(assert (=> d!2282912 (=> res!2973162 e!4410521)))

(assert (=> d!2282912 (= res!2973162 (is-Nil!71634 (exprs!8702 ct2!378)))))

(assert (=> d!2282912 (= (forall!18068 (exprs!8702 ct2!378) lambda!457815) e!4410521)))

(declare-fun b!7366853 () Bool)

(declare-fun e!4410522 () Bool)

(assert (=> b!7366853 (= e!4410521 e!4410522)))

(declare-fun res!2973163 () Bool)

(assert (=> b!7366853 (=> (not res!2973163) (not e!4410522))))

(assert (=> b!7366853 (= res!2973163 (dynLambda!29520 lambda!457815 (h!78082 (exprs!8702 ct2!378))))))

(declare-fun b!7366854 () Bool)

(assert (=> b!7366854 (= e!4410522 (forall!18068 (t!386207 (exprs!8702 ct2!378)) lambda!457815))))

(assert (= (and d!2282912 (not res!2973162)) b!7366853))

(assert (= (and b!7366853 res!2973163) b!7366854))

(declare-fun b_lambda!284323 () Bool)

(assert (=> (not b_lambda!284323) (not b!7366853)))

(declare-fun m!8022148 () Bool)

(assert (=> b!7366853 m!8022148))

(declare-fun m!8022150 () Bool)

(assert (=> b!7366854 m!8022150))

(assert (=> d!2282848 d!2282912))

(declare-fun call!675991 () Bool)

(declare-fun bm!675986 () Bool)

(declare-fun c!1369014 () Bool)

(assert (=> bm!675986 (= call!675991 (validRegex!9858 (ite c!1369014 (regOne!39037 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))) (regTwo!39036 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))))

(declare-fun d!2282914 () Bool)

(declare-fun res!2973168 () Bool)

(declare-fun e!4410528 () Bool)

(assert (=> d!2282914 (=> res!2973168 e!4410528)))

(assert (=> d!2282914 (= res!2973168 (is-ElementMatch!19262 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))

(assert (=> d!2282914 (= (validRegex!9858 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))) e!4410528)))

(declare-fun b!7366855 () Bool)

(declare-fun res!2973165 () Bool)

(declare-fun e!4410527 () Bool)

(assert (=> b!7366855 (=> (not res!2973165) (not e!4410527))))

(assert (=> b!7366855 (= res!2973165 call!675991)))

(declare-fun e!4410523 () Bool)

(assert (=> b!7366855 (= e!4410523 e!4410527)))

(declare-fun c!1369013 () Bool)

(declare-fun call!675992 () Bool)

(declare-fun bm!675987 () Bool)

(assert (=> bm!675987 (= call!675992 (validRegex!9858 (ite c!1369013 (reg!19591 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))) (ite c!1369014 (regTwo!39037 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))) (regOne!39036 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370)))))))))))

(declare-fun b!7366856 () Bool)

(declare-fun call!675993 () Bool)

(assert (=> b!7366856 (= e!4410527 call!675993)))

(declare-fun b!7366857 () Bool)

(declare-fun res!2973166 () Bool)

(declare-fun e!4410529 () Bool)

(assert (=> b!7366857 (=> res!2973166 e!4410529)))

(assert (=> b!7366857 (= res!2973166 (not (is-Concat!28107 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370)))))))))

(assert (=> b!7366857 (= e!4410523 e!4410529)))

(declare-fun b!7366858 () Bool)

(declare-fun e!4410525 () Bool)

(declare-fun e!4410526 () Bool)

(assert (=> b!7366858 (= e!4410525 e!4410526)))

(declare-fun res!2973164 () Bool)

(assert (=> b!7366858 (= res!2973164 (not (nullable!8338 (reg!19591 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))))

(assert (=> b!7366858 (=> (not res!2973164) (not e!4410526))))

(declare-fun bm!675988 () Bool)

(assert (=> bm!675988 (= call!675993 call!675992)))

(declare-fun b!7366859 () Bool)

(declare-fun e!4410524 () Bool)

(assert (=> b!7366859 (= e!4410529 e!4410524)))

(declare-fun res!2973167 () Bool)

(assert (=> b!7366859 (=> (not res!2973167) (not e!4410524))))

(assert (=> b!7366859 (= res!2973167 call!675993)))

(declare-fun b!7366860 () Bool)

(assert (=> b!7366860 (= e!4410525 e!4410523)))

(assert (=> b!7366860 (= c!1369014 (is-Union!19262 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))

(declare-fun b!7366861 () Bool)

(assert (=> b!7366861 (= e!4410524 call!675991)))

(declare-fun b!7366862 () Bool)

(assert (=> b!7366862 (= e!4410526 call!675992)))

(declare-fun b!7366863 () Bool)

(assert (=> b!7366863 (= e!4410528 e!4410525)))

(assert (=> b!7366863 (= c!1369013 (is-Star!19262 (ite c!1368957 (reg!19591 (regTwo!39036 r1!2370)) (ite c!1368958 (regTwo!39037 (regTwo!39036 r1!2370)) (regOne!39036 (regTwo!39036 r1!2370))))))))

(assert (= (and d!2282914 (not res!2973168)) b!7366863))

(assert (= (and b!7366863 c!1369013) b!7366858))

(assert (= (and b!7366863 (not c!1369013)) b!7366860))

(assert (= (and b!7366858 res!2973164) b!7366862))

(assert (= (and b!7366860 c!1369014) b!7366855))

(assert (= (and b!7366860 (not c!1369014)) b!7366857))

(assert (= (and b!7366855 res!2973165) b!7366856))

(assert (= (and b!7366857 (not res!2973166)) b!7366859))

(assert (= (and b!7366859 res!2973167) b!7366861))

(assert (= (or b!7366855 b!7366861) bm!675986))

(assert (= (or b!7366856 b!7366859) bm!675988))

(assert (= (or b!7366862 bm!675988) bm!675987))

(declare-fun m!8022152 () Bool)

(assert (=> bm!675986 m!8022152))

(declare-fun m!8022154 () Bool)

(assert (=> bm!675987 m!8022154))

(declare-fun m!8022156 () Bool)

(assert (=> b!7366858 m!8022156))

(assert (=> bm!675924 d!2282914))

(declare-fun b!7366864 () Bool)

(declare-fun e!4410532 () (Set Context!16404))

(declare-fun call!675995 () (Set Context!16404))

(assert (=> b!7366864 (= e!4410532 call!675995)))

(declare-fun b!7366865 () Bool)

(declare-fun e!4410535 () (Set Context!16404))

(declare-fun call!675997 () (Set Context!16404))

(declare-fun call!675998 () (Set Context!16404))

(assert (=> b!7366865 (= e!4410535 (set.union call!675997 call!675998))))

(declare-fun b!7366866 () Bool)

(declare-fun e!4410530 () (Set Context!16404))

(assert (=> b!7366866 (= e!4410530 (set.insert (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903)) (as set.empty (Set Context!16404))))))

(declare-fun bm!675989 () Bool)

(assert (=> bm!675989 (= call!675995 call!675998)))

(declare-fun b!7366867 () Bool)

(declare-fun e!4410531 () (Set Context!16404))

(declare-fun call!675994 () (Set Context!16404))

(assert (=> b!7366867 (= e!4410531 (set.union call!675994 call!675997))))

(declare-fun b!7366868 () Bool)

(declare-fun e!4410533 () (Set Context!16404))

(assert (=> b!7366868 (= e!4410533 (as set.empty (Set Context!16404)))))

(declare-fun bm!675990 () Bool)

(declare-fun call!675996 () List!71758)

(declare-fun call!675999 () List!71758)

(assert (=> bm!675990 (= call!675996 call!675999)))

(declare-fun b!7366869 () Bool)

(declare-fun c!1369017 () Bool)

(declare-fun e!4410534 () Bool)

(assert (=> b!7366869 (= c!1369017 e!4410534)))

(declare-fun res!2973169 () Bool)

(assert (=> b!7366869 (=> (not res!2973169) (not e!4410534))))

(assert (=> b!7366869 (= res!2973169 (is-Concat!28107 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (=> b!7366869 (= e!4410531 e!4410535)))

(declare-fun c!1369018 () Bool)

(declare-fun d!2282916 () Bool)

(assert (=> d!2282916 (= c!1369018 (and (is-ElementMatch!19262 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (= (c!1368920 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) c!10362)))))

(assert (=> d!2282916 (= (derivationStepZipperDown!3088 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)) (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903)) c!10362) e!4410530)))

(declare-fun bm!675991 () Bool)

(declare-fun c!1369015 () Bool)

(assert (=> bm!675991 (= call!675997 (derivationStepZipperDown!3088 (ite c!1369015 (regTwo!39037 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (regOne!39036 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))) (ite c!1369015 (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903)) (Context!16405 call!675999)) c!10362))))

(declare-fun b!7366870 () Bool)

(declare-fun c!1369016 () Bool)

(assert (=> b!7366870 (= c!1369016 (is-Star!19262 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (=> b!7366870 (= e!4410532 e!4410533)))

(declare-fun b!7366871 () Bool)

(assert (=> b!7366871 (= e!4410534 (nullable!8338 (regOne!39036 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun c!1369019 () Bool)

(declare-fun bm!675992 () Bool)

(assert (=> bm!675992 (= call!675994 (derivationStepZipperDown!3088 (ite c!1369015 (regOne!39037 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1369017 (regTwo!39036 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1369019 (regOne!39036 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (reg!19591 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))) (ite (or c!1369015 c!1369017) (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903)) (Context!16405 call!675996)) c!10362))))

(declare-fun b!7366872 () Bool)

(assert (=> b!7366872 (= e!4410535 e!4410532)))

(assert (=> b!7366872 (= c!1369019 (is-Concat!28107 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(declare-fun bm!675993 () Bool)

(assert (=> bm!675993 (= call!675998 call!675994)))

(declare-fun b!7366873 () Bool)

(assert (=> b!7366873 (= e!4410533 call!675995)))

(declare-fun bm!675994 () Bool)

(assert (=> bm!675994 (= call!675999 ($colon$colon!3244 (exprs!8702 (ite c!1368932 (Context!16405 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378))) (Context!16405 call!675903))) (ite (or c!1369017 c!1369019) (regTwo!39036 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))) (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370)))))))

(declare-fun b!7366874 () Bool)

(assert (=> b!7366874 (= e!4410530 e!4410531)))

(assert (=> b!7366874 (= c!1369015 (is-Union!19262 (ite c!1368932 (regTwo!39037 r1!2370) (regOne!39036 r1!2370))))))

(assert (= (and d!2282916 c!1369018) b!7366866))

(assert (= (and d!2282916 (not c!1369018)) b!7366874))

(assert (= (and b!7366874 c!1369015) b!7366867))

(assert (= (and b!7366874 (not c!1369015)) b!7366869))

(assert (= (and b!7366869 res!2973169) b!7366871))

(assert (= (and b!7366869 c!1369017) b!7366865))

(assert (= (and b!7366869 (not c!1369017)) b!7366872))

(assert (= (and b!7366872 c!1369019) b!7366864))

(assert (= (and b!7366872 (not c!1369019)) b!7366870))

(assert (= (and b!7366870 c!1369016) b!7366873))

(assert (= (and b!7366870 (not c!1369016)) b!7366868))

(assert (= (or b!7366864 b!7366873) bm!675990))

(assert (= (or b!7366864 b!7366873) bm!675989))

(assert (= (or b!7366865 bm!675989) bm!675993))

(assert (= (or b!7366865 bm!675990) bm!675994))

(assert (= (or b!7366867 b!7366865) bm!675991))

(assert (= (or b!7366867 bm!675993) bm!675992))

(declare-fun m!8022158 () Bool)

(assert (=> bm!675994 m!8022158))

(declare-fun m!8022160 () Bool)

(assert (=> b!7366871 m!8022160))

(declare-fun m!8022162 () Bool)

(assert (=> bm!675991 m!8022162))

(declare-fun m!8022164 () Bool)

(assert (=> bm!675992 m!8022164))

(declare-fun m!8022166 () Bool)

(assert (=> b!7366866 m!8022166))

(assert (=> bm!675895 d!2282916))

(declare-fun b!7366877 () Bool)

(declare-fun res!2973170 () Bool)

(declare-fun e!4410537 () Bool)

(assert (=> b!7366877 (=> (not res!2973170) (not e!4410537))))

(declare-fun lt!2615024 () List!71758)

(assert (=> b!7366877 (= res!2973170 (= (size!42121 lt!2615024) (+ (size!42121 (t!386207 (exprs!8702 ct1!282))) (size!42121 (exprs!8702 ct2!378)))))))

(declare-fun b!7366875 () Bool)

(declare-fun e!4410536 () List!71758)

(assert (=> b!7366875 (= e!4410536 (exprs!8702 ct2!378))))

(declare-fun b!7366876 () Bool)

(assert (=> b!7366876 (= e!4410536 (Cons!71634 (h!78082 (t!386207 (exprs!8702 ct1!282))) (++!17078 (t!386207 (t!386207 (exprs!8702 ct1!282))) (exprs!8702 ct2!378))))))

(declare-fun d!2282918 () Bool)

(assert (=> d!2282918 e!4410537))

(declare-fun res!2973171 () Bool)

(assert (=> d!2282918 (=> (not res!2973171) (not e!4410537))))

(assert (=> d!2282918 (= res!2973171 (= (content!15143 lt!2615024) (set.union (content!15143 (t!386207 (exprs!8702 ct1!282))) (content!15143 (exprs!8702 ct2!378)))))))

(assert (=> d!2282918 (= lt!2615024 e!4410536)))

(declare-fun c!1369020 () Bool)

(assert (=> d!2282918 (= c!1369020 (is-Nil!71634 (t!386207 (exprs!8702 ct1!282))))))

(assert (=> d!2282918 (= (++!17078 (t!386207 (exprs!8702 ct1!282)) (exprs!8702 ct2!378)) lt!2615024)))

(declare-fun b!7366878 () Bool)

(assert (=> b!7366878 (= e!4410537 (or (not (= (exprs!8702 ct2!378) Nil!71634)) (= lt!2615024 (t!386207 (exprs!8702 ct1!282)))))))

(assert (= (and d!2282918 c!1369020) b!7366875))

(assert (= (and d!2282918 (not c!1369020)) b!7366876))

(assert (= (and d!2282918 res!2973171) b!7366877))

(assert (= (and b!7366877 res!2973170) b!7366878))

(declare-fun m!8022168 () Bool)

(assert (=> b!7366877 m!8022168))

(declare-fun m!8022170 () Bool)

(assert (=> b!7366877 m!8022170))

(assert (=> b!7366877 m!8021962))

(declare-fun m!8022172 () Bool)

(assert (=> b!7366876 m!8022172))

(declare-fun m!8022174 () Bool)

(assert (=> d!2282918 m!8022174))

(assert (=> d!2282918 m!8022088))

(assert (=> d!2282918 m!8021970))

(assert (=> b!7366534 d!2282918))

(declare-fun d!2282920 () Bool)

(assert (=> d!2282920 (= ($colon$colon!3244 (exprs!8702 ct1!282) (ite (or c!1368954 c!1368956) (regTwo!39036 r1!2370) r1!2370)) (Cons!71634 (ite (or c!1368954 c!1368956) (regTwo!39036 r1!2370) r1!2370) (exprs!8702 ct1!282)))))

(assert (=> bm!675922 d!2282920))

(declare-fun d!2282922 () Bool)

(declare-fun res!2973172 () Bool)

(declare-fun e!4410538 () Bool)

(assert (=> d!2282922 (=> res!2973172 e!4410538)))

(assert (=> d!2282922 (= res!2973172 (is-Nil!71634 (exprs!8702 cWitness!61)))))

(assert (=> d!2282922 (= (forall!18068 (exprs!8702 cWitness!61) lambda!457813) e!4410538)))

(declare-fun b!7366879 () Bool)

(declare-fun e!4410539 () Bool)

(assert (=> b!7366879 (= e!4410538 e!4410539)))

(declare-fun res!2973173 () Bool)

(assert (=> b!7366879 (=> (not res!2973173) (not e!4410539))))

(assert (=> b!7366879 (= res!2973173 (dynLambda!29520 lambda!457813 (h!78082 (exprs!8702 cWitness!61))))))

(declare-fun b!7366880 () Bool)

(assert (=> b!7366880 (= e!4410539 (forall!18068 (t!386207 (exprs!8702 cWitness!61)) lambda!457813))))

(assert (= (and d!2282922 (not res!2973172)) b!7366879))

(assert (= (and b!7366879 res!2973173) b!7366880))

(declare-fun b_lambda!284325 () Bool)

(assert (=> (not b_lambda!284325) (not b!7366879)))

(declare-fun m!8022176 () Bool)

(assert (=> b!7366879 m!8022176))

(declare-fun m!8022178 () Bool)

(assert (=> b!7366880 m!8022178))

(assert (=> d!2282844 d!2282922))

(declare-fun d!2282924 () Bool)

(declare-fun lt!2615027 () Int)

(assert (=> d!2282924 (>= lt!2615027 0)))

(declare-fun e!4410542 () Int)

(assert (=> d!2282924 (= lt!2615027 e!4410542)))

(declare-fun c!1369023 () Bool)

(assert (=> d!2282924 (= c!1369023 (is-Nil!71634 lt!2615014))))

(assert (=> d!2282924 (= (size!42121 lt!2615014) lt!2615027)))

(declare-fun b!7366885 () Bool)

(assert (=> b!7366885 (= e!4410542 0)))

(declare-fun b!7366886 () Bool)

(assert (=> b!7366886 (= e!4410542 (+ 1 (size!42121 (t!386207 lt!2615014))))))

(assert (= (and d!2282924 c!1369023) b!7366885))

(assert (= (and d!2282924 (not c!1369023)) b!7366886))

(declare-fun m!8022180 () Bool)

(assert (=> b!7366886 m!8022180))

(assert (=> b!7366535 d!2282924))

(declare-fun d!2282926 () Bool)

(declare-fun lt!2615028 () Int)

(assert (=> d!2282926 (>= lt!2615028 0)))

(declare-fun e!4410543 () Int)

(assert (=> d!2282926 (= lt!2615028 e!4410543)))

(declare-fun c!1369024 () Bool)

(assert (=> d!2282926 (= c!1369024 (is-Nil!71634 (exprs!8702 ct1!282)))))

(assert (=> d!2282926 (= (size!42121 (exprs!8702 ct1!282)) lt!2615028)))

(declare-fun b!7366887 () Bool)

(assert (=> b!7366887 (= e!4410543 0)))

(declare-fun b!7366888 () Bool)

(assert (=> b!7366888 (= e!4410543 (+ 1 (size!42121 (t!386207 (exprs!8702 ct1!282)))))))

(assert (= (and d!2282926 c!1369024) b!7366887))

(assert (= (and d!2282926 (not c!1369024)) b!7366888))

(assert (=> b!7366888 m!8022170))

(assert (=> b!7366535 d!2282926))

(declare-fun d!2282928 () Bool)

(declare-fun lt!2615029 () Int)

(assert (=> d!2282928 (>= lt!2615029 0)))

(declare-fun e!4410544 () Int)

(assert (=> d!2282928 (= lt!2615029 e!4410544)))

(declare-fun c!1369025 () Bool)

(assert (=> d!2282928 (= c!1369025 (is-Nil!71634 (exprs!8702 ct2!378)))))

(assert (=> d!2282928 (= (size!42121 (exprs!8702 ct2!378)) lt!2615029)))

(declare-fun b!7366889 () Bool)

(assert (=> b!7366889 (= e!4410544 0)))

(declare-fun b!7366890 () Bool)

(assert (=> b!7366890 (= e!4410544 (+ 1 (size!42121 (t!386207 (exprs!8702 ct2!378)))))))

(assert (= (and d!2282928 c!1369025) b!7366889))

(assert (= (and d!2282928 (not c!1369025)) b!7366890))

(declare-fun m!8022182 () Bool)

(assert (=> b!7366890 m!8022182))

(assert (=> b!7366535 d!2282928))

(declare-fun d!2282930 () Bool)

(assert (=> d!2282930 (= (nullable!8338 (reg!19591 (regTwo!39036 r1!2370))) (nullableFct!3327 (reg!19591 (regTwo!39036 r1!2370))))))

(declare-fun bs!1920610 () Bool)

(assert (= bs!1920610 d!2282930))

(declare-fun m!8022184 () Bool)

(assert (=> bs!1920610 m!8022184))

(assert (=> b!7366605 d!2282930))

(assert (=> b!7366521 d!2282850))

(declare-fun b!7366893 () Bool)

(declare-fun e!4410545 () Bool)

(declare-fun tp!2093782 () Bool)

(assert (=> b!7366893 (= e!4410545 tp!2093782)))

(declare-fun b!7366894 () Bool)

(declare-fun tp!2093784 () Bool)

(declare-fun tp!2093781 () Bool)

(assert (=> b!7366894 (= e!4410545 (and tp!2093784 tp!2093781))))

(declare-fun b!7366891 () Bool)

(assert (=> b!7366891 (= e!4410545 tp_is_empty!48769)))

(declare-fun b!7366892 () Bool)

(declare-fun tp!2093783 () Bool)

(declare-fun tp!2093780 () Bool)

(assert (=> b!7366892 (= e!4410545 (and tp!2093783 tp!2093780))))

(assert (=> b!7366638 (= tp!2093722 e!4410545)))

(assert (= (and b!7366638 (is-ElementMatch!19262 (regOne!39037 (regTwo!39037 r1!2370)))) b!7366891))

(assert (= (and b!7366638 (is-Concat!28107 (regOne!39037 (regTwo!39037 r1!2370)))) b!7366892))

(assert (= (and b!7366638 (is-Star!19262 (regOne!39037 (regTwo!39037 r1!2370)))) b!7366893))

(assert (= (and b!7366638 (is-Union!19262 (regOne!39037 (regTwo!39037 r1!2370)))) b!7366894))

(declare-fun b!7366897 () Bool)

(declare-fun e!4410546 () Bool)

(declare-fun tp!2093787 () Bool)

(assert (=> b!7366897 (= e!4410546 tp!2093787)))

(declare-fun b!7366898 () Bool)

(declare-fun tp!2093789 () Bool)

(declare-fun tp!2093786 () Bool)

(assert (=> b!7366898 (= e!4410546 (and tp!2093789 tp!2093786))))

(declare-fun b!7366895 () Bool)

(assert (=> b!7366895 (= e!4410546 tp_is_empty!48769)))

(declare-fun b!7366896 () Bool)

(declare-fun tp!2093788 () Bool)

(declare-fun tp!2093785 () Bool)

(assert (=> b!7366896 (= e!4410546 (and tp!2093788 tp!2093785))))

(assert (=> b!7366638 (= tp!2093719 e!4410546)))

(assert (= (and b!7366638 (is-ElementMatch!19262 (regTwo!39037 (regTwo!39037 r1!2370)))) b!7366895))

(assert (= (and b!7366638 (is-Concat!28107 (regTwo!39037 (regTwo!39037 r1!2370)))) b!7366896))

(assert (= (and b!7366638 (is-Star!19262 (regTwo!39037 (regTwo!39037 r1!2370)))) b!7366897))

(assert (= (and b!7366638 (is-Union!19262 (regTwo!39037 (regTwo!39037 r1!2370)))) b!7366898))

(declare-fun b!7366901 () Bool)

(declare-fun e!4410547 () Bool)

(declare-fun tp!2093792 () Bool)

(assert (=> b!7366901 (= e!4410547 tp!2093792)))

(declare-fun b!7366902 () Bool)

(declare-fun tp!2093794 () Bool)

(declare-fun tp!2093791 () Bool)

(assert (=> b!7366902 (= e!4410547 (and tp!2093794 tp!2093791))))

(declare-fun b!7366899 () Bool)

(assert (=> b!7366899 (= e!4410547 tp_is_empty!48769)))

(declare-fun b!7366900 () Bool)

(declare-fun tp!2093793 () Bool)

(declare-fun tp!2093790 () Bool)

(assert (=> b!7366900 (= e!4410547 (and tp!2093793 tp!2093790))))

(assert (=> b!7366633 (= tp!2093715 e!4410547)))

(assert (= (and b!7366633 (is-ElementMatch!19262 (reg!19591 (regOne!39037 r1!2370)))) b!7366899))

(assert (= (and b!7366633 (is-Concat!28107 (reg!19591 (regOne!39037 r1!2370)))) b!7366900))

(assert (= (and b!7366633 (is-Star!19262 (reg!19591 (regOne!39037 r1!2370)))) b!7366901))

(assert (= (and b!7366633 (is-Union!19262 (reg!19591 (regOne!39037 r1!2370)))) b!7366902))

(declare-fun b!7366905 () Bool)

(declare-fun e!4410548 () Bool)

(declare-fun tp!2093797 () Bool)

(assert (=> b!7366905 (= e!4410548 tp!2093797)))

(declare-fun b!7366906 () Bool)

(declare-fun tp!2093799 () Bool)

(declare-fun tp!2093796 () Bool)

(assert (=> b!7366906 (= e!4410548 (and tp!2093799 tp!2093796))))

(declare-fun b!7366903 () Bool)

(assert (=> b!7366903 (= e!4410548 tp_is_empty!48769)))

(declare-fun b!7366904 () Bool)

(declare-fun tp!2093798 () Bool)

(declare-fun tp!2093795 () Bool)

(assert (=> b!7366904 (= e!4410548 (and tp!2093798 tp!2093795))))

(assert (=> b!7366642 (= tp!2093727 e!4410548)))

(assert (= (and b!7366642 (is-ElementMatch!19262 (regOne!39037 (regOne!39036 r1!2370)))) b!7366903))

(assert (= (and b!7366642 (is-Concat!28107 (regOne!39037 (regOne!39036 r1!2370)))) b!7366904))

(assert (= (and b!7366642 (is-Star!19262 (regOne!39037 (regOne!39036 r1!2370)))) b!7366905))

(assert (= (and b!7366642 (is-Union!19262 (regOne!39037 (regOne!39036 r1!2370)))) b!7366906))

(declare-fun b!7366909 () Bool)

(declare-fun e!4410549 () Bool)

(declare-fun tp!2093802 () Bool)

(assert (=> b!7366909 (= e!4410549 tp!2093802)))

(declare-fun b!7366910 () Bool)

(declare-fun tp!2093804 () Bool)

(declare-fun tp!2093801 () Bool)

(assert (=> b!7366910 (= e!4410549 (and tp!2093804 tp!2093801))))

(declare-fun b!7366907 () Bool)

(assert (=> b!7366907 (= e!4410549 tp_is_empty!48769)))

(declare-fun b!7366908 () Bool)

(declare-fun tp!2093803 () Bool)

(declare-fun tp!2093800 () Bool)

(assert (=> b!7366908 (= e!4410549 (and tp!2093803 tp!2093800))))

(assert (=> b!7366642 (= tp!2093724 e!4410549)))

(assert (= (and b!7366642 (is-ElementMatch!19262 (regTwo!39037 (regOne!39036 r1!2370)))) b!7366907))

(assert (= (and b!7366642 (is-Concat!28107 (regTwo!39037 (regOne!39036 r1!2370)))) b!7366908))

(assert (= (and b!7366642 (is-Star!19262 (regTwo!39037 (regOne!39036 r1!2370)))) b!7366909))

(assert (= (and b!7366642 (is-Union!19262 (regTwo!39037 (regOne!39036 r1!2370)))) b!7366910))

(declare-fun b!7366913 () Bool)

(declare-fun e!4410550 () Bool)

(declare-fun tp!2093807 () Bool)

(assert (=> b!7366913 (= e!4410550 tp!2093807)))

(declare-fun b!7366914 () Bool)

(declare-fun tp!2093809 () Bool)

(declare-fun tp!2093806 () Bool)

(assert (=> b!7366914 (= e!4410550 (and tp!2093809 tp!2093806))))

(declare-fun b!7366911 () Bool)

(assert (=> b!7366911 (= e!4410550 tp_is_empty!48769)))

(declare-fun b!7366912 () Bool)

(declare-fun tp!2093808 () Bool)

(declare-fun tp!2093805 () Bool)

(assert (=> b!7366912 (= e!4410550 (and tp!2093808 tp!2093805))))

(assert (=> b!7366628 (= tp!2093711 e!4410550)))

(assert (= (and b!7366628 (is-ElementMatch!19262 (regOne!39036 (reg!19591 r1!2370)))) b!7366911))

(assert (= (and b!7366628 (is-Concat!28107 (regOne!39036 (reg!19591 r1!2370)))) b!7366912))

(assert (= (and b!7366628 (is-Star!19262 (regOne!39036 (reg!19591 r1!2370)))) b!7366913))

(assert (= (and b!7366628 (is-Union!19262 (regOne!39036 (reg!19591 r1!2370)))) b!7366914))

(declare-fun b!7366917 () Bool)

(declare-fun e!4410551 () Bool)

(declare-fun tp!2093812 () Bool)

(assert (=> b!7366917 (= e!4410551 tp!2093812)))

(declare-fun b!7366918 () Bool)

(declare-fun tp!2093814 () Bool)

(declare-fun tp!2093811 () Bool)

(assert (=> b!7366918 (= e!4410551 (and tp!2093814 tp!2093811))))

(declare-fun b!7366915 () Bool)

(assert (=> b!7366915 (= e!4410551 tp_is_empty!48769)))

(declare-fun b!7366916 () Bool)

(declare-fun tp!2093813 () Bool)

(declare-fun tp!2093810 () Bool)

(assert (=> b!7366916 (= e!4410551 (and tp!2093813 tp!2093810))))

(assert (=> b!7366628 (= tp!2093708 e!4410551)))

(assert (= (and b!7366628 (is-ElementMatch!19262 (regTwo!39036 (reg!19591 r1!2370)))) b!7366915))

(assert (= (and b!7366628 (is-Concat!28107 (regTwo!39036 (reg!19591 r1!2370)))) b!7366916))

(assert (= (and b!7366628 (is-Star!19262 (regTwo!39036 (reg!19591 r1!2370)))) b!7366917))

(assert (= (and b!7366628 (is-Union!19262 (regTwo!39036 (reg!19591 r1!2370)))) b!7366918))

(declare-fun b!7366921 () Bool)

(declare-fun e!4410552 () Bool)

(declare-fun tp!2093817 () Bool)

(assert (=> b!7366921 (= e!4410552 tp!2093817)))

(declare-fun b!7366922 () Bool)

(declare-fun tp!2093819 () Bool)

(declare-fun tp!2093816 () Bool)

(assert (=> b!7366922 (= e!4410552 (and tp!2093819 tp!2093816))))

(declare-fun b!7366919 () Bool)

(assert (=> b!7366919 (= e!4410552 tp_is_empty!48769)))

(declare-fun b!7366920 () Bool)

(declare-fun tp!2093818 () Bool)

(declare-fun tp!2093815 () Bool)

(assert (=> b!7366920 (= e!4410552 (and tp!2093818 tp!2093815))))

(assert (=> b!7366637 (= tp!2093720 e!4410552)))

(assert (= (and b!7366637 (is-ElementMatch!19262 (reg!19591 (regTwo!39037 r1!2370)))) b!7366919))

(assert (= (and b!7366637 (is-Concat!28107 (reg!19591 (regTwo!39037 r1!2370)))) b!7366920))

(assert (= (and b!7366637 (is-Star!19262 (reg!19591 (regTwo!39037 r1!2370)))) b!7366921))

(assert (= (and b!7366637 (is-Union!19262 (reg!19591 (regTwo!39037 r1!2370)))) b!7366922))

(declare-fun b!7366925 () Bool)

(declare-fun e!4410553 () Bool)

(declare-fun tp!2093822 () Bool)

(assert (=> b!7366925 (= e!4410553 tp!2093822)))

(declare-fun b!7366926 () Bool)

(declare-fun tp!2093824 () Bool)

(declare-fun tp!2093821 () Bool)

(assert (=> b!7366926 (= e!4410553 (and tp!2093824 tp!2093821))))

(declare-fun b!7366923 () Bool)

(assert (=> b!7366923 (= e!4410553 tp_is_empty!48769)))

(declare-fun b!7366924 () Bool)

(declare-fun tp!2093823 () Bool)

(declare-fun tp!2093820 () Bool)

(assert (=> b!7366924 (= e!4410553 (and tp!2093823 tp!2093820))))

(assert (=> b!7366646 (= tp!2093732 e!4410553)))

(assert (= (and b!7366646 (is-ElementMatch!19262 (regOne!39037 (regTwo!39036 r1!2370)))) b!7366923))

(assert (= (and b!7366646 (is-Concat!28107 (regOne!39037 (regTwo!39036 r1!2370)))) b!7366924))

(assert (= (and b!7366646 (is-Star!19262 (regOne!39037 (regTwo!39036 r1!2370)))) b!7366925))

(assert (= (and b!7366646 (is-Union!19262 (regOne!39037 (regTwo!39036 r1!2370)))) b!7366926))

(declare-fun b!7366929 () Bool)

(declare-fun e!4410554 () Bool)

(declare-fun tp!2093827 () Bool)

(assert (=> b!7366929 (= e!4410554 tp!2093827)))

(declare-fun b!7366930 () Bool)

(declare-fun tp!2093829 () Bool)

(declare-fun tp!2093826 () Bool)

(assert (=> b!7366930 (= e!4410554 (and tp!2093829 tp!2093826))))

(declare-fun b!7366927 () Bool)

(assert (=> b!7366927 (= e!4410554 tp_is_empty!48769)))

(declare-fun b!7366928 () Bool)

(declare-fun tp!2093828 () Bool)

(declare-fun tp!2093825 () Bool)

(assert (=> b!7366928 (= e!4410554 (and tp!2093828 tp!2093825))))

(assert (=> b!7366646 (= tp!2093729 e!4410554)))

(assert (= (and b!7366646 (is-ElementMatch!19262 (regTwo!39037 (regTwo!39036 r1!2370)))) b!7366927))

(assert (= (and b!7366646 (is-Concat!28107 (regTwo!39037 (regTwo!39036 r1!2370)))) b!7366928))

(assert (= (and b!7366646 (is-Star!19262 (regTwo!39037 (regTwo!39036 r1!2370)))) b!7366929))

(assert (= (and b!7366646 (is-Union!19262 (regTwo!39037 (regTwo!39036 r1!2370)))) b!7366930))

(declare-fun b!7366933 () Bool)

(declare-fun e!4410555 () Bool)

(declare-fun tp!2093832 () Bool)

(assert (=> b!7366933 (= e!4410555 tp!2093832)))

(declare-fun b!7366934 () Bool)

(declare-fun tp!2093834 () Bool)

(declare-fun tp!2093831 () Bool)

(assert (=> b!7366934 (= e!4410555 (and tp!2093834 tp!2093831))))

(declare-fun b!7366931 () Bool)

(assert (=> b!7366931 (= e!4410555 tp_is_empty!48769)))

(declare-fun b!7366932 () Bool)

(declare-fun tp!2093833 () Bool)

(declare-fun tp!2093830 () Bool)

(assert (=> b!7366932 (= e!4410555 (and tp!2093833 tp!2093830))))

(assert (=> b!7366632 (= tp!2093716 e!4410555)))

(assert (= (and b!7366632 (is-ElementMatch!19262 (regOne!39036 (regOne!39037 r1!2370)))) b!7366931))

(assert (= (and b!7366632 (is-Concat!28107 (regOne!39036 (regOne!39037 r1!2370)))) b!7366932))

(assert (= (and b!7366632 (is-Star!19262 (regOne!39036 (regOne!39037 r1!2370)))) b!7366933))

(assert (= (and b!7366632 (is-Union!19262 (regOne!39036 (regOne!39037 r1!2370)))) b!7366934))

(declare-fun b!7366937 () Bool)

(declare-fun e!4410556 () Bool)

(declare-fun tp!2093837 () Bool)

(assert (=> b!7366937 (= e!4410556 tp!2093837)))

(declare-fun b!7366938 () Bool)

(declare-fun tp!2093839 () Bool)

(declare-fun tp!2093836 () Bool)

(assert (=> b!7366938 (= e!4410556 (and tp!2093839 tp!2093836))))

(declare-fun b!7366935 () Bool)

(assert (=> b!7366935 (= e!4410556 tp_is_empty!48769)))

(declare-fun b!7366936 () Bool)

(declare-fun tp!2093838 () Bool)

(declare-fun tp!2093835 () Bool)

(assert (=> b!7366936 (= e!4410556 (and tp!2093838 tp!2093835))))

(assert (=> b!7366632 (= tp!2093713 e!4410556)))

(assert (= (and b!7366632 (is-ElementMatch!19262 (regTwo!39036 (regOne!39037 r1!2370)))) b!7366935))

(assert (= (and b!7366632 (is-Concat!28107 (regTwo!39036 (regOne!39037 r1!2370)))) b!7366936))

(assert (= (and b!7366632 (is-Star!19262 (regTwo!39036 (regOne!39037 r1!2370)))) b!7366937))

(assert (= (and b!7366632 (is-Union!19262 (regTwo!39036 (regOne!39037 r1!2370)))) b!7366938))

(declare-fun b!7366941 () Bool)

(declare-fun e!4410557 () Bool)

(declare-fun tp!2093842 () Bool)

(assert (=> b!7366941 (= e!4410557 tp!2093842)))

(declare-fun b!7366942 () Bool)

(declare-fun tp!2093844 () Bool)

(declare-fun tp!2093841 () Bool)

(assert (=> b!7366942 (= e!4410557 (and tp!2093844 tp!2093841))))

(declare-fun b!7366939 () Bool)

(assert (=> b!7366939 (= e!4410557 tp_is_empty!48769)))

(declare-fun b!7366940 () Bool)

(declare-fun tp!2093843 () Bool)

(declare-fun tp!2093840 () Bool)

(assert (=> b!7366940 (= e!4410557 (and tp!2093843 tp!2093840))))

(assert (=> b!7366641 (= tp!2093725 e!4410557)))

(assert (= (and b!7366641 (is-ElementMatch!19262 (reg!19591 (regOne!39036 r1!2370)))) b!7366939))

(assert (= (and b!7366641 (is-Concat!28107 (reg!19591 (regOne!39036 r1!2370)))) b!7366940))

(assert (= (and b!7366641 (is-Star!19262 (reg!19591 (regOne!39036 r1!2370)))) b!7366941))

(assert (= (and b!7366641 (is-Union!19262 (reg!19591 (regOne!39036 r1!2370)))) b!7366942))

(declare-fun b!7366945 () Bool)

(declare-fun e!4410558 () Bool)

(declare-fun tp!2093847 () Bool)

(assert (=> b!7366945 (= e!4410558 tp!2093847)))

(declare-fun b!7366946 () Bool)

(declare-fun tp!2093849 () Bool)

(declare-fun tp!2093846 () Bool)

(assert (=> b!7366946 (= e!4410558 (and tp!2093849 tp!2093846))))

(declare-fun b!7366943 () Bool)

(assert (=> b!7366943 (= e!4410558 tp_is_empty!48769)))

(declare-fun b!7366944 () Bool)

(declare-fun tp!2093848 () Bool)

(declare-fun tp!2093845 () Bool)

(assert (=> b!7366944 (= e!4410558 (and tp!2093848 tp!2093845))))

(assert (=> b!7366636 (= tp!2093721 e!4410558)))

(assert (= (and b!7366636 (is-ElementMatch!19262 (regOne!39036 (regTwo!39037 r1!2370)))) b!7366943))

(assert (= (and b!7366636 (is-Concat!28107 (regOne!39036 (regTwo!39037 r1!2370)))) b!7366944))

(assert (= (and b!7366636 (is-Star!19262 (regOne!39036 (regTwo!39037 r1!2370)))) b!7366945))

(assert (= (and b!7366636 (is-Union!19262 (regOne!39036 (regTwo!39037 r1!2370)))) b!7366946))

(declare-fun b!7366949 () Bool)

(declare-fun e!4410559 () Bool)

(declare-fun tp!2093852 () Bool)

(assert (=> b!7366949 (= e!4410559 tp!2093852)))

(declare-fun b!7366950 () Bool)

(declare-fun tp!2093854 () Bool)

(declare-fun tp!2093851 () Bool)

(assert (=> b!7366950 (= e!4410559 (and tp!2093854 tp!2093851))))

(declare-fun b!7366947 () Bool)

(assert (=> b!7366947 (= e!4410559 tp_is_empty!48769)))

(declare-fun b!7366948 () Bool)

(declare-fun tp!2093853 () Bool)

(declare-fun tp!2093850 () Bool)

(assert (=> b!7366948 (= e!4410559 (and tp!2093853 tp!2093850))))

(assert (=> b!7366636 (= tp!2093718 e!4410559)))

(assert (= (and b!7366636 (is-ElementMatch!19262 (regTwo!39036 (regTwo!39037 r1!2370)))) b!7366947))

(assert (= (and b!7366636 (is-Concat!28107 (regTwo!39036 (regTwo!39037 r1!2370)))) b!7366948))

(assert (= (and b!7366636 (is-Star!19262 (regTwo!39036 (regTwo!39037 r1!2370)))) b!7366949))

(assert (= (and b!7366636 (is-Union!19262 (regTwo!39036 (regTwo!39037 r1!2370)))) b!7366950))

(declare-fun b!7366953 () Bool)

(declare-fun e!4410560 () Bool)

(declare-fun tp!2093857 () Bool)

(assert (=> b!7366953 (= e!4410560 tp!2093857)))

(declare-fun b!7366954 () Bool)

(declare-fun tp!2093859 () Bool)

(declare-fun tp!2093856 () Bool)

(assert (=> b!7366954 (= e!4410560 (and tp!2093859 tp!2093856))))

(declare-fun b!7366951 () Bool)

(assert (=> b!7366951 (= e!4410560 tp_is_empty!48769)))

(declare-fun b!7366952 () Bool)

(declare-fun tp!2093858 () Bool)

(declare-fun tp!2093855 () Bool)

(assert (=> b!7366952 (= e!4410560 (and tp!2093858 tp!2093855))))

(assert (=> b!7366645 (= tp!2093730 e!4410560)))

(assert (= (and b!7366645 (is-ElementMatch!19262 (reg!19591 (regTwo!39036 r1!2370)))) b!7366951))

(assert (= (and b!7366645 (is-Concat!28107 (reg!19591 (regTwo!39036 r1!2370)))) b!7366952))

(assert (= (and b!7366645 (is-Star!19262 (reg!19591 (regTwo!39036 r1!2370)))) b!7366953))

(assert (= (and b!7366645 (is-Union!19262 (reg!19591 (regTwo!39036 r1!2370)))) b!7366954))

(declare-fun b!7366957 () Bool)

(declare-fun e!4410561 () Bool)

(declare-fun tp!2093862 () Bool)

(assert (=> b!7366957 (= e!4410561 tp!2093862)))

(declare-fun b!7366958 () Bool)

(declare-fun tp!2093864 () Bool)

(declare-fun tp!2093861 () Bool)

(assert (=> b!7366958 (= e!4410561 (and tp!2093864 tp!2093861))))

(declare-fun b!7366955 () Bool)

(assert (=> b!7366955 (= e!4410561 tp_is_empty!48769)))

(declare-fun b!7366956 () Bool)

(declare-fun tp!2093863 () Bool)

(declare-fun tp!2093860 () Bool)

(assert (=> b!7366956 (= e!4410561 (and tp!2093863 tp!2093860))))

(assert (=> b!7366647 (= tp!2093733 e!4410561)))

(assert (= (and b!7366647 (is-ElementMatch!19262 (h!78082 (exprs!8702 ct1!282)))) b!7366955))

(assert (= (and b!7366647 (is-Concat!28107 (h!78082 (exprs!8702 ct1!282)))) b!7366956))

(assert (= (and b!7366647 (is-Star!19262 (h!78082 (exprs!8702 ct1!282)))) b!7366957))

(assert (= (and b!7366647 (is-Union!19262 (h!78082 (exprs!8702 ct1!282)))) b!7366958))

(declare-fun b!7366959 () Bool)

(declare-fun e!4410562 () Bool)

(declare-fun tp!2093865 () Bool)

(declare-fun tp!2093866 () Bool)

(assert (=> b!7366959 (= e!4410562 (and tp!2093865 tp!2093866))))

(assert (=> b!7366647 (= tp!2093734 e!4410562)))

(assert (= (and b!7366647 (is-Cons!71634 (t!386207 (exprs!8702 ct1!282)))) b!7366959))

(declare-fun b!7366962 () Bool)

(declare-fun e!4410563 () Bool)

(declare-fun tp!2093869 () Bool)

(assert (=> b!7366962 (= e!4410563 tp!2093869)))

(declare-fun b!7366963 () Bool)

(declare-fun tp!2093871 () Bool)

(declare-fun tp!2093868 () Bool)

(assert (=> b!7366963 (= e!4410563 (and tp!2093871 tp!2093868))))

(declare-fun b!7366960 () Bool)

(assert (=> b!7366960 (= e!4410563 tp_is_empty!48769)))

(declare-fun b!7366961 () Bool)

(declare-fun tp!2093870 () Bool)

(declare-fun tp!2093867 () Bool)

(assert (=> b!7366961 (= e!4410563 (and tp!2093870 tp!2093867))))

(assert (=> b!7366630 (= tp!2093712 e!4410563)))

(assert (= (and b!7366630 (is-ElementMatch!19262 (regOne!39037 (reg!19591 r1!2370)))) b!7366960))

(assert (= (and b!7366630 (is-Concat!28107 (regOne!39037 (reg!19591 r1!2370)))) b!7366961))

(assert (= (and b!7366630 (is-Star!19262 (regOne!39037 (reg!19591 r1!2370)))) b!7366962))

(assert (= (and b!7366630 (is-Union!19262 (regOne!39037 (reg!19591 r1!2370)))) b!7366963))

(declare-fun b!7366966 () Bool)

(declare-fun e!4410564 () Bool)

(declare-fun tp!2093874 () Bool)

(assert (=> b!7366966 (= e!4410564 tp!2093874)))

(declare-fun b!7366967 () Bool)

(declare-fun tp!2093876 () Bool)

(declare-fun tp!2093873 () Bool)

(assert (=> b!7366967 (= e!4410564 (and tp!2093876 tp!2093873))))

(declare-fun b!7366964 () Bool)

(assert (=> b!7366964 (= e!4410564 tp_is_empty!48769)))

(declare-fun b!7366965 () Bool)

(declare-fun tp!2093875 () Bool)

(declare-fun tp!2093872 () Bool)

(assert (=> b!7366965 (= e!4410564 (and tp!2093875 tp!2093872))))

(assert (=> b!7366630 (= tp!2093709 e!4410564)))

(assert (= (and b!7366630 (is-ElementMatch!19262 (regTwo!39037 (reg!19591 r1!2370)))) b!7366964))

(assert (= (and b!7366630 (is-Concat!28107 (regTwo!39037 (reg!19591 r1!2370)))) b!7366965))

(assert (= (and b!7366630 (is-Star!19262 (regTwo!39037 (reg!19591 r1!2370)))) b!7366966))

(assert (= (and b!7366630 (is-Union!19262 (regTwo!39037 (reg!19591 r1!2370)))) b!7366967))

(declare-fun b!7366970 () Bool)

(declare-fun e!4410565 () Bool)

(declare-fun tp!2093879 () Bool)

(assert (=> b!7366970 (= e!4410565 tp!2093879)))

(declare-fun b!7366971 () Bool)

(declare-fun tp!2093881 () Bool)

(declare-fun tp!2093878 () Bool)

(assert (=> b!7366971 (= e!4410565 (and tp!2093881 tp!2093878))))

(declare-fun b!7366968 () Bool)

(assert (=> b!7366968 (= e!4410565 tp_is_empty!48769)))

(declare-fun b!7366969 () Bool)

(declare-fun tp!2093880 () Bool)

(declare-fun tp!2093877 () Bool)

(assert (=> b!7366969 (= e!4410565 (and tp!2093880 tp!2093877))))

(assert (=> b!7366634 (= tp!2093717 e!4410565)))

(assert (= (and b!7366634 (is-ElementMatch!19262 (regOne!39037 (regOne!39037 r1!2370)))) b!7366968))

(assert (= (and b!7366634 (is-Concat!28107 (regOne!39037 (regOne!39037 r1!2370)))) b!7366969))

(assert (= (and b!7366634 (is-Star!19262 (regOne!39037 (regOne!39037 r1!2370)))) b!7366970))

(assert (= (and b!7366634 (is-Union!19262 (regOne!39037 (regOne!39037 r1!2370)))) b!7366971))

(declare-fun b!7366974 () Bool)

(declare-fun e!4410566 () Bool)

(declare-fun tp!2093884 () Bool)

(assert (=> b!7366974 (= e!4410566 tp!2093884)))

(declare-fun b!7366975 () Bool)

(declare-fun tp!2093886 () Bool)

(declare-fun tp!2093883 () Bool)

(assert (=> b!7366975 (= e!4410566 (and tp!2093886 tp!2093883))))

(declare-fun b!7366972 () Bool)

(assert (=> b!7366972 (= e!4410566 tp_is_empty!48769)))

(declare-fun b!7366973 () Bool)

(declare-fun tp!2093885 () Bool)

(declare-fun tp!2093882 () Bool)

(assert (=> b!7366973 (= e!4410566 (and tp!2093885 tp!2093882))))

(assert (=> b!7366634 (= tp!2093714 e!4410566)))

(assert (= (and b!7366634 (is-ElementMatch!19262 (regTwo!39037 (regOne!39037 r1!2370)))) b!7366972))

(assert (= (and b!7366634 (is-Concat!28107 (regTwo!39037 (regOne!39037 r1!2370)))) b!7366973))

(assert (= (and b!7366634 (is-Star!19262 (regTwo!39037 (regOne!39037 r1!2370)))) b!7366974))

(assert (= (and b!7366634 (is-Union!19262 (regTwo!39037 (regOne!39037 r1!2370)))) b!7366975))

(declare-fun b!7366978 () Bool)

(declare-fun e!4410567 () Bool)

(declare-fun tp!2093889 () Bool)

(assert (=> b!7366978 (= e!4410567 tp!2093889)))

(declare-fun b!7366979 () Bool)

(declare-fun tp!2093891 () Bool)

(declare-fun tp!2093888 () Bool)

(assert (=> b!7366979 (= e!4410567 (and tp!2093891 tp!2093888))))

(declare-fun b!7366976 () Bool)

(assert (=> b!7366976 (= e!4410567 tp_is_empty!48769)))

(declare-fun b!7366977 () Bool)

(declare-fun tp!2093890 () Bool)

(declare-fun tp!2093887 () Bool)

(assert (=> b!7366977 (= e!4410567 (and tp!2093890 tp!2093887))))

(assert (=> b!7366629 (= tp!2093710 e!4410567)))

(assert (= (and b!7366629 (is-ElementMatch!19262 (reg!19591 (reg!19591 r1!2370)))) b!7366976))

(assert (= (and b!7366629 (is-Concat!28107 (reg!19591 (reg!19591 r1!2370)))) b!7366977))

(assert (= (and b!7366629 (is-Star!19262 (reg!19591 (reg!19591 r1!2370)))) b!7366978))

(assert (= (and b!7366629 (is-Union!19262 (reg!19591 (reg!19591 r1!2370)))) b!7366979))

(declare-fun b!7366982 () Bool)

(declare-fun e!4410568 () Bool)

(declare-fun tp!2093894 () Bool)

(assert (=> b!7366982 (= e!4410568 tp!2093894)))

(declare-fun b!7366983 () Bool)

(declare-fun tp!2093896 () Bool)

(declare-fun tp!2093893 () Bool)

(assert (=> b!7366983 (= e!4410568 (and tp!2093896 tp!2093893))))

(declare-fun b!7366980 () Bool)

(assert (=> b!7366980 (= e!4410568 tp_is_empty!48769)))

(declare-fun b!7366981 () Bool)

(declare-fun tp!2093895 () Bool)

(declare-fun tp!2093892 () Bool)

(assert (=> b!7366981 (= e!4410568 (and tp!2093895 tp!2093892))))

(assert (=> b!7366615 (= tp!2093694 e!4410568)))

(assert (= (and b!7366615 (is-ElementMatch!19262 (h!78082 (exprs!8702 ct2!378)))) b!7366980))

(assert (= (and b!7366615 (is-Concat!28107 (h!78082 (exprs!8702 ct2!378)))) b!7366981))

(assert (= (and b!7366615 (is-Star!19262 (h!78082 (exprs!8702 ct2!378)))) b!7366982))

(assert (= (and b!7366615 (is-Union!19262 (h!78082 (exprs!8702 ct2!378)))) b!7366983))

(declare-fun b!7366984 () Bool)

(declare-fun e!4410569 () Bool)

(declare-fun tp!2093897 () Bool)

(declare-fun tp!2093898 () Bool)

(assert (=> b!7366984 (= e!4410569 (and tp!2093897 tp!2093898))))

(assert (=> b!7366615 (= tp!2093695 e!4410569)))

(assert (= (and b!7366615 (is-Cons!71634 (t!386207 (exprs!8702 ct2!378)))) b!7366984))

(declare-fun b!7366987 () Bool)

(declare-fun e!4410570 () Bool)

(declare-fun tp!2093901 () Bool)

(assert (=> b!7366987 (= e!4410570 tp!2093901)))

(declare-fun b!7366988 () Bool)

(declare-fun tp!2093903 () Bool)

(declare-fun tp!2093900 () Bool)

(assert (=> b!7366988 (= e!4410570 (and tp!2093903 tp!2093900))))

(declare-fun b!7366985 () Bool)

(assert (=> b!7366985 (= e!4410570 tp_is_empty!48769)))

(declare-fun b!7366986 () Bool)

(declare-fun tp!2093902 () Bool)

(declare-fun tp!2093899 () Bool)

(assert (=> b!7366986 (= e!4410570 (and tp!2093902 tp!2093899))))

(assert (=> b!7366616 (= tp!2093696 e!4410570)))

(assert (= (and b!7366616 (is-ElementMatch!19262 (h!78082 (exprs!8702 cWitness!61)))) b!7366985))

(assert (= (and b!7366616 (is-Concat!28107 (h!78082 (exprs!8702 cWitness!61)))) b!7366986))

(assert (= (and b!7366616 (is-Star!19262 (h!78082 (exprs!8702 cWitness!61)))) b!7366987))

(assert (= (and b!7366616 (is-Union!19262 (h!78082 (exprs!8702 cWitness!61)))) b!7366988))

(declare-fun b!7366989 () Bool)

(declare-fun e!4410571 () Bool)

(declare-fun tp!2093904 () Bool)

(declare-fun tp!2093905 () Bool)

(assert (=> b!7366989 (= e!4410571 (and tp!2093904 tp!2093905))))

(assert (=> b!7366616 (= tp!2093697 e!4410571)))

(assert (= (and b!7366616 (is-Cons!71634 (t!386207 (exprs!8702 cWitness!61)))) b!7366989))

(declare-fun b!7366992 () Bool)

(declare-fun e!4410572 () Bool)

(declare-fun tp!2093908 () Bool)

(assert (=> b!7366992 (= e!4410572 tp!2093908)))

(declare-fun b!7366993 () Bool)

(declare-fun tp!2093910 () Bool)

(declare-fun tp!2093907 () Bool)

(assert (=> b!7366993 (= e!4410572 (and tp!2093910 tp!2093907))))

(declare-fun b!7366990 () Bool)

(assert (=> b!7366990 (= e!4410572 tp_is_empty!48769)))

(declare-fun b!7366991 () Bool)

(declare-fun tp!2093909 () Bool)

(declare-fun tp!2093906 () Bool)

(assert (=> b!7366991 (= e!4410572 (and tp!2093909 tp!2093906))))

(assert (=> b!7366640 (= tp!2093726 e!4410572)))

(assert (= (and b!7366640 (is-ElementMatch!19262 (regOne!39036 (regOne!39036 r1!2370)))) b!7366990))

(assert (= (and b!7366640 (is-Concat!28107 (regOne!39036 (regOne!39036 r1!2370)))) b!7366991))

(assert (= (and b!7366640 (is-Star!19262 (regOne!39036 (regOne!39036 r1!2370)))) b!7366992))

(assert (= (and b!7366640 (is-Union!19262 (regOne!39036 (regOne!39036 r1!2370)))) b!7366993))

(declare-fun b!7366996 () Bool)

(declare-fun e!4410573 () Bool)

(declare-fun tp!2093913 () Bool)

(assert (=> b!7366996 (= e!4410573 tp!2093913)))

(declare-fun b!7366997 () Bool)

(declare-fun tp!2093915 () Bool)

(declare-fun tp!2093912 () Bool)

(assert (=> b!7366997 (= e!4410573 (and tp!2093915 tp!2093912))))

(declare-fun b!7366994 () Bool)

(assert (=> b!7366994 (= e!4410573 tp_is_empty!48769)))

(declare-fun b!7366995 () Bool)

(declare-fun tp!2093914 () Bool)

(declare-fun tp!2093911 () Bool)

(assert (=> b!7366995 (= e!4410573 (and tp!2093914 tp!2093911))))

(assert (=> b!7366640 (= tp!2093723 e!4410573)))

(assert (= (and b!7366640 (is-ElementMatch!19262 (regTwo!39036 (regOne!39036 r1!2370)))) b!7366994))

(assert (= (and b!7366640 (is-Concat!28107 (regTwo!39036 (regOne!39036 r1!2370)))) b!7366995))

(assert (= (and b!7366640 (is-Star!19262 (regTwo!39036 (regOne!39036 r1!2370)))) b!7366996))

(assert (= (and b!7366640 (is-Union!19262 (regTwo!39036 (regOne!39036 r1!2370)))) b!7366997))

(declare-fun b!7367000 () Bool)

(declare-fun e!4410574 () Bool)

(declare-fun tp!2093918 () Bool)

(assert (=> b!7367000 (= e!4410574 tp!2093918)))

(declare-fun b!7367001 () Bool)

(declare-fun tp!2093920 () Bool)

(declare-fun tp!2093917 () Bool)

(assert (=> b!7367001 (= e!4410574 (and tp!2093920 tp!2093917))))

(declare-fun b!7366998 () Bool)

(assert (=> b!7366998 (= e!4410574 tp_is_empty!48769)))

(declare-fun b!7366999 () Bool)

(declare-fun tp!2093919 () Bool)

(declare-fun tp!2093916 () Bool)

(assert (=> b!7366999 (= e!4410574 (and tp!2093919 tp!2093916))))

(assert (=> b!7366644 (= tp!2093731 e!4410574)))

(assert (= (and b!7366644 (is-ElementMatch!19262 (regOne!39036 (regTwo!39036 r1!2370)))) b!7366998))

(assert (= (and b!7366644 (is-Concat!28107 (regOne!39036 (regTwo!39036 r1!2370)))) b!7366999))

(assert (= (and b!7366644 (is-Star!19262 (regOne!39036 (regTwo!39036 r1!2370)))) b!7367000))

(assert (= (and b!7366644 (is-Union!19262 (regOne!39036 (regTwo!39036 r1!2370)))) b!7367001))

(declare-fun b!7367004 () Bool)

(declare-fun e!4410575 () Bool)

(declare-fun tp!2093923 () Bool)

(assert (=> b!7367004 (= e!4410575 tp!2093923)))

(declare-fun b!7367005 () Bool)

(declare-fun tp!2093925 () Bool)

(declare-fun tp!2093922 () Bool)

(assert (=> b!7367005 (= e!4410575 (and tp!2093925 tp!2093922))))

(declare-fun b!7367002 () Bool)

(assert (=> b!7367002 (= e!4410575 tp_is_empty!48769)))

(declare-fun b!7367003 () Bool)

(declare-fun tp!2093924 () Bool)

(declare-fun tp!2093921 () Bool)

(assert (=> b!7367003 (= e!4410575 (and tp!2093924 tp!2093921))))

(assert (=> b!7366644 (= tp!2093728 e!4410575)))

(assert (= (and b!7366644 (is-ElementMatch!19262 (regTwo!39036 (regTwo!39036 r1!2370)))) b!7367002))

(assert (= (and b!7366644 (is-Concat!28107 (regTwo!39036 (regTwo!39036 r1!2370)))) b!7367003))

(assert (= (and b!7366644 (is-Star!19262 (regTwo!39036 (regTwo!39036 r1!2370)))) b!7367004))

(assert (= (and b!7366644 (is-Union!19262 (regTwo!39036 (regTwo!39036 r1!2370)))) b!7367005))

(declare-fun b_lambda!284327 () Bool)

(assert (= b_lambda!284317 (or b!7366451 b_lambda!284327)))

(declare-fun bs!1920611 () Bool)

(declare-fun d!2282932 () Bool)

(assert (= bs!1920611 (and d!2282932 b!7366451)))

(assert (=> bs!1920611 (= (dynLambda!29520 lambda!457806 (h!78082 (exprs!8702 ct1!282))) (validRegex!9858 (h!78082 (exprs!8702 ct1!282))))))

(declare-fun m!8022186 () Bool)

(assert (=> bs!1920611 m!8022186))

(assert (=> b!7366756 d!2282932))

(declare-fun b_lambda!284329 () Bool)

(assert (= b_lambda!284319 (or d!2282838 b_lambda!284329)))

(declare-fun bs!1920612 () Bool)

(declare-fun d!2282934 () Bool)

(assert (= bs!1920612 (and d!2282934 d!2282838)))

(assert (=> bs!1920612 (= (dynLambda!29520 lambda!457812 (h!78082 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))))) (validRegex!9858 (h!78082 (exprs!8702 (Context!16405 ($colon$colon!3244 (exprs!8702 ct1!282) (regTwo!39036 r1!2370)))))))))

(declare-fun m!8022188 () Bool)

(assert (=> bs!1920612 m!8022188))

(assert (=> b!7366777 d!2282934))

(declare-fun b_lambda!284331 () Bool)

(assert (= b_lambda!284315 (or b!7366451 b_lambda!284331)))

(declare-fun bs!1920613 () Bool)

(declare-fun d!2282936 () Bool)

(assert (= bs!1920613 (and d!2282936 b!7366451)))

(assert (=> bs!1920613 (= (dynLambda!29520 lambda!457806 (h!78082 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)))) (validRegex!9858 (h!78082 (++!17078 (exprs!8702 ct1!282) (exprs!8702 ct2!378)))))))

(declare-fun m!8022190 () Bool)

(assert (=> bs!1920613 m!8022190))

(assert (=> b!7366754 d!2282936))

(declare-fun b_lambda!284333 () Bool)

(assert (= b_lambda!284321 (or d!2282846 b_lambda!284333)))

(declare-fun bs!1920614 () Bool)

(declare-fun d!2282938 () Bool)

(assert (= bs!1920614 (and d!2282938 d!2282846)))

(assert (=> bs!1920614 (= (dynLambda!29520 lambda!457814 (h!78082 (exprs!8702 ct1!282))) (validRegex!9858 (h!78082 (exprs!8702 ct1!282))))))

(assert (=> bs!1920614 m!8022186))

(assert (=> b!7366788 d!2282938))

(declare-fun b_lambda!284335 () Bool)

(assert (= b_lambda!284325 (or d!2282844 b_lambda!284335)))

(declare-fun bs!1920615 () Bool)

(declare-fun d!2282940 () Bool)

(assert (= bs!1920615 (and d!2282940 d!2282844)))

(assert (=> bs!1920615 (= (dynLambda!29520 lambda!457813 (h!78082 (exprs!8702 cWitness!61))) (validRegex!9858 (h!78082 (exprs!8702 cWitness!61))))))

(declare-fun m!8022192 () Bool)

(assert (=> bs!1920615 m!8022192))

(assert (=> b!7366879 d!2282940))

(declare-fun b_lambda!284337 () Bool)

(assert (= b_lambda!284323 (or d!2282848 b_lambda!284337)))

(declare-fun bs!1920616 () Bool)

(declare-fun d!2282942 () Bool)

(assert (= bs!1920616 (and d!2282942 d!2282848)))

(assert (=> bs!1920616 (= (dynLambda!29520 lambda!457815 (h!78082 (exprs!8702 ct2!378))) (validRegex!9858 (h!78082 (exprs!8702 ct2!378))))))

(declare-fun m!8022194 () Bool)

(assert (=> bs!1920616 m!8022194))

(assert (=> b!7366853 d!2282942))

(push 1)

(assert (not b_lambda!284329))

(assert (not b!7366948))

(assert (not b!7366905))

(assert (not b!7366797))

(assert (not b_lambda!284335))

(assert (not b!7366901))

(assert (not b!7366871))

(assert (not b!7366953))

(assert (not b!7366926))

(assert (not b!7366815))

(assert (not b!7366928))

(assert (not b!7366929))

(assert (not b!7366981))

(assert (not b!7366774))

(assert (not b!7366973))

(assert (not bm!675962))

(assert (not b!7366890))

(assert (not b!7366892))

(assert (not b!7366933))

(assert (not b!7366970))

(assert (not b!7366877))

(assert (not b!7366996))

(assert (not b!7366984))

(assert (not b_lambda!284337))

(assert (not b!7367004))

(assert (not b!7366958))

(assert (not bs!1920611))

(assert (not b!7366997))

(assert (not b!7366986))

(assert (not b!7366778))

(assert (not b!7366902))

(assert (not d!2282880))

(assert (not bm!675979))

(assert (not b!7366914))

(assert (not bm!675954))

(assert (not bm!675991))

(assert (not d!2282918))

(assert (not b!7366920))

(assert (not b!7366959))

(assert (not b!7366900))

(assert (not bm!675964))

(assert (not b!7366967))

(assert (not b!7366930))

(assert (not b!7366934))

(assert (not bm!675992))

(assert (not b!7366999))

(assert (not b!7366993))

(assert (not b!7366858))

(assert (not b!7366983))

(assert tp_is_empty!48769)

(assert (not b!7366880))

(assert (not b!7366965))

(assert (not b!7366938))

(assert (not b!7366757))

(assert (not b!7366924))

(assert (not b!7366979))

(assert (not bs!1920614))

(assert (not b!7366922))

(assert (not b_lambda!284331))

(assert (not b!7366991))

(assert (not b!7366977))

(assert (not b!7366950))

(assert (not b!7366975))

(assert (not b!7366974))

(assert (not bm!675972))

(assert (not bm!675978))

(assert (not bs!1920613))

(assert (not b!7366910))

(assert (not b!7366942))

(assert (not b!7366782))

(assert (not b!7366904))

(assert (not b!7366936))

(assert (not b!7366849))

(assert (not b!7366761))

(assert (not b!7366893))

(assert (not d!2282930))

(assert (not b!7366898))

(assert (not b!7366876))

(assert (not b!7366909))

(assert (not b!7366988))

(assert (not bm!675970))

(assert (not b!7366963))

(assert (not b!7366969))

(assert (not bs!1920612))

(assert (not bm!675971))

(assert (not b!7366949))

(assert (not b!7366987))

(assert (not b!7366897))

(assert (not bs!1920615))

(assert (not b!7366916))

(assert (not b!7366937))

(assert (not bm!675968))

(assert (not b!7366956))

(assert (not bs!1920616))

(assert (not b_lambda!284333))

(assert (not bm!675953))

(assert (not b!7366966))

(assert (not b!7366946))

(assert (not b!7366940))

(assert (not b!7366954))

(assert (not b!7366944))

(assert (not bm!675982))

(assert (not b!7366906))

(assert (not b!7366918))

(assert (not b!7366982))

(assert (not bm!675983))

(assert (not bm!675967))

(assert (not b!7366896))

(assert (not b!7367003))

(assert (not b!7366925))

(assert (not bm!675956))

(assert (not d!2282886))

(assert (not b_lambda!284327))

(assert (not b!7366971))

(assert (not b!7366952))

(assert (not b!7366978))

(assert (not b!7366886))

(assert (not b!7366917))

(assert (not b!7366961))

(assert (not bm!675987))

(assert (not b!7366957))

(assert (not b!7366912))

(assert (not b!7366913))

(assert (not bm!675986))

(assert (not b!7366992))

(assert (not b!7367000))

(assert (not b!7366945))

(assert (not bm!675961))

(assert (not b!7366755))

(assert (not b!7366776))

(assert (not b!7367005))

(assert (not bm!675985))

(assert (not b!7366854))

(assert (not b!7366921))

(assert (not b!7366989))

(assert (not bm!675994))

(assert (not b!7366908))

(assert (not b!7366941))

(assert (not b!7366888))

(assert (not b!7367001))

(assert (not b!7366932))

(assert (not b!7366894))

(assert (not bm!675957))

(assert (not b!7366995))

(assert (not b!7366789))

(assert (not b!7366962))

(assert (not b!7366772))

(assert (not b!7366808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

