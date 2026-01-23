; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719518 () Bool)

(assert start!719518)

(declare-fun b!7372768 () Bool)

(declare-fun e!4413717 () Bool)

(declare-fun e!4413720 () Bool)

(assert (=> b!7372768 (= e!4413717 (not e!4413720))))

(declare-fun res!2974686 () Bool)

(assert (=> b!7372768 (=> res!2974686 e!4413720)))

(declare-datatypes ((C!38846 0))(
  ( (C!38847 (val!29783 Int)) )
))
(declare-datatypes ((Regex!19286 0))(
  ( (ElementMatch!19286 (c!1370330 C!38846)) (Concat!28131 (regOne!39084 Regex!19286) (regTwo!39084 Regex!19286)) (EmptyExpr!19286) (Star!19286 (reg!19615 Regex!19286)) (EmptyLang!19286) (Union!19286 (regOne!39085 Regex!19286) (regTwo!39085 Regex!19286)) )
))
(declare-datatypes ((List!71782 0))(
  ( (Nil!71658) (Cons!71658 (h!78106 Regex!19286) (t!386251 List!71782)) )
))
(declare-datatypes ((Context!16452 0))(
  ( (Context!16453 (exprs!8726 List!71782)) )
))
(declare-fun lt!2615910 () Context!16452)

(declare-fun lt!2615912 () (Set Context!16452))

(assert (=> b!7372768 (= res!2974686 (not (set.member lt!2615910 lt!2615912)))))

(declare-fun ct2!378 () Context!16452)

(declare-fun lambda!458146 () Int)

(declare-fun cWitness!61 () Context!16452)

(declare-datatypes ((Unit!165521 0))(
  ( (Unit!165522) )
))
(declare-fun lt!2615908 () Unit!165521)

(declare-fun lemmaConcatPreservesForall!1959 (List!71782 List!71782 Int) Unit!165521)

(assert (=> b!7372768 (= lt!2615908 (lemmaConcatPreservesForall!1959 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun r1!2370 () Regex!19286)

(declare-fun lt!2615909 () Context!16452)

(declare-fun c!10362 () C!38846)

(declare-fun derivationStepZipperDown!3112 (Regex!19286 Context!16452 C!38846) (Set Context!16452))

(assert (=> b!7372768 (set.member lt!2615910 (derivationStepZipperDown!3112 (regTwo!39084 r1!2370) lt!2615909 c!10362))))

(declare-fun ++!17102 (List!71782 List!71782) List!71782)

(assert (=> b!7372768 (= lt!2615910 (Context!16453 (++!17102 (exprs!8726 cWitness!61) (exprs!8726 ct2!378))))))

(declare-fun lt!2615913 () Unit!165521)

(declare-fun ct1!282 () Context!16452)

(assert (=> b!7372768 (= lt!2615913 (lemmaConcatPreservesForall!1959 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun lt!2615916 () Unit!165521)

(assert (=> b!7372768 (= lt!2615916 (lemmaConcatPreservesForall!1959 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun lt!2615917 () Unit!165521)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!141 (Regex!19286 Context!16452 Context!16452 Context!16452 C!38846) Unit!165521)

(assert (=> b!7372768 (= lt!2615917 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!141 (regTwo!39084 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7372769 () Bool)

(declare-fun e!4413719 () Bool)

(declare-fun e!4413723 () Bool)

(assert (=> b!7372769 (= e!4413719 e!4413723)))

(declare-fun res!2974679 () Bool)

(assert (=> b!7372769 (=> (not res!2974679) (not e!4413723))))

(declare-fun lt!2615906 () (Set Context!16452))

(assert (=> b!7372769 (= res!2974679 (set.member cWitness!61 lt!2615906))))

(assert (=> b!7372769 (= lt!2615906 (derivationStepZipperDown!3112 r1!2370 ct1!282 c!10362))))

(declare-fun b!7372770 () Bool)

(declare-fun e!4413721 () Bool)

(assert (=> b!7372770 (= e!4413721 e!4413717)))

(declare-fun res!2974681 () Bool)

(assert (=> b!7372770 (=> (not res!2974681) (not e!4413717))))

(declare-fun lt!2615915 () (Set Context!16452))

(assert (=> b!7372770 (= res!2974681 (= lt!2615906 (set.union lt!2615915 (derivationStepZipperDown!3112 (regTwo!39084 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3268 (List!71782 Regex!19286) List!71782)

(assert (=> b!7372770 (= lt!2615915 (derivationStepZipperDown!3112 (regOne!39084 r1!2370) (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370))) c!10362))))

(declare-fun res!2974682 () Bool)

(assert (=> start!719518 (=> (not res!2974682) (not e!4413719))))

(declare-fun validRegex!9882 (Regex!19286) Bool)

(assert (=> start!719518 (= res!2974682 (validRegex!9882 r1!2370))))

(assert (=> start!719518 e!4413719))

(declare-fun tp_is_empty!48817 () Bool)

(assert (=> start!719518 tp_is_empty!48817))

(declare-fun e!4413715 () Bool)

(declare-fun inv!91556 (Context!16452) Bool)

(assert (=> start!719518 (and (inv!91556 cWitness!61) e!4413715)))

(declare-fun e!4413722 () Bool)

(assert (=> start!719518 (and (inv!91556 ct1!282) e!4413722)))

(declare-fun e!4413718 () Bool)

(assert (=> start!719518 e!4413718))

(declare-fun e!4413716 () Bool)

(assert (=> start!719518 (and (inv!91556 ct2!378) e!4413716)))

(declare-fun b!7372771 () Bool)

(declare-fun tp!2096011 () Bool)

(declare-fun tp!2096012 () Bool)

(assert (=> b!7372771 (= e!4413718 (and tp!2096011 tp!2096012))))

(declare-fun b!7372772 () Bool)

(declare-fun res!2974680 () Bool)

(assert (=> b!7372772 (=> (not res!2974680) (not e!4413717))))

(assert (=> b!7372772 (= res!2974680 (not (set.member cWitness!61 lt!2615915)))))

(declare-fun b!7372773 () Bool)

(declare-fun res!2974683 () Bool)

(assert (=> b!7372773 (=> (not res!2974683) (not e!4413721))))

(declare-fun nullable!8362 (Regex!19286) Bool)

(assert (=> b!7372773 (= res!2974683 (nullable!8362 (regOne!39084 r1!2370)))))

(declare-fun b!7372774 () Bool)

(declare-fun tp!2096014 () Bool)

(declare-fun tp!2096015 () Bool)

(assert (=> b!7372774 (= e!4413718 (and tp!2096014 tp!2096015))))

(declare-fun b!7372775 () Bool)

(declare-fun tp!2096013 () Bool)

(assert (=> b!7372775 (= e!4413722 tp!2096013)))

(declare-fun b!7372776 () Bool)

(assert (=> b!7372776 (= e!4413723 e!4413721)))

(declare-fun res!2974685 () Bool)

(assert (=> b!7372776 (=> (not res!2974685) (not e!4413721))))

(assert (=> b!7372776 (= res!2974685 (and (or (not (is-ElementMatch!19286 r1!2370)) (not (= c!10362 (c!1370330 r1!2370)))) (not (is-Union!19286 r1!2370)) (is-Concat!28131 r1!2370)))))

(assert (=> b!7372776 (= lt!2615912 (derivationStepZipperDown!3112 r1!2370 lt!2615909 c!10362))))

(assert (=> b!7372776 (= lt!2615909 (Context!16453 (++!17102 (exprs!8726 ct1!282) (exprs!8726 ct2!378))))))

(declare-fun lt!2615911 () Unit!165521)

(assert (=> b!7372776 (= lt!2615911 (lemmaConcatPreservesForall!1959 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun b!7372777 () Bool)

(assert (=> b!7372777 (= e!4413720 (inv!91556 lt!2615910))))

(declare-fun lt!2615914 () Unit!165521)

(assert (=> b!7372777 (= lt!2615914 (lemmaConcatPreservesForall!1959 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun lt!2615907 () Unit!165521)

(assert (=> b!7372777 (= lt!2615907 (lemmaConcatPreservesForall!1959 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458146))))

(declare-fun b!7372778 () Bool)

(declare-fun tp!2096017 () Bool)

(assert (=> b!7372778 (= e!4413716 tp!2096017)))

(declare-fun b!7372779 () Bool)

(declare-fun tp!2096016 () Bool)

(assert (=> b!7372779 (= e!4413715 tp!2096016)))

(declare-fun b!7372780 () Bool)

(declare-fun tp!2096010 () Bool)

(assert (=> b!7372780 (= e!4413718 tp!2096010)))

(declare-fun b!7372781 () Bool)

(declare-fun res!2974684 () Bool)

(assert (=> b!7372781 (=> (not res!2974684) (not e!4413721))))

(assert (=> b!7372781 (= res!2974684 (validRegex!9882 (regTwo!39084 r1!2370)))))

(declare-fun b!7372782 () Bool)

(assert (=> b!7372782 (= e!4413718 tp_is_empty!48817)))

(assert (= (and start!719518 res!2974682) b!7372769))

(assert (= (and b!7372769 res!2974679) b!7372776))

(assert (= (and b!7372776 res!2974685) b!7372773))

(assert (= (and b!7372773 res!2974683) b!7372781))

(assert (= (and b!7372781 res!2974684) b!7372770))

(assert (= (and b!7372770 res!2974681) b!7372772))

(assert (= (and b!7372772 res!2974680) b!7372768))

(assert (= (and b!7372768 (not res!2974686)) b!7372777))

(assert (= start!719518 b!7372779))

(assert (= start!719518 b!7372775))

(assert (= (and start!719518 (is-ElementMatch!19286 r1!2370)) b!7372782))

(assert (= (and start!719518 (is-Concat!28131 r1!2370)) b!7372774))

(assert (= (and start!719518 (is-Star!19286 r1!2370)) b!7372780))

(assert (= (and start!719518 (is-Union!19286 r1!2370)) b!7372771))

(assert (= start!719518 b!7372778))

(declare-fun m!8026026 () Bool)

(assert (=> b!7372773 m!8026026))

(declare-fun m!8026028 () Bool)

(assert (=> b!7372776 m!8026028))

(declare-fun m!8026030 () Bool)

(assert (=> b!7372776 m!8026030))

(declare-fun m!8026032 () Bool)

(assert (=> b!7372776 m!8026032))

(declare-fun m!8026034 () Bool)

(assert (=> b!7372777 m!8026034))

(assert (=> b!7372777 m!8026032))

(declare-fun m!8026036 () Bool)

(assert (=> b!7372777 m!8026036))

(declare-fun m!8026038 () Bool)

(assert (=> b!7372772 m!8026038))

(declare-fun m!8026040 () Bool)

(assert (=> b!7372770 m!8026040))

(declare-fun m!8026042 () Bool)

(assert (=> b!7372770 m!8026042))

(declare-fun m!8026044 () Bool)

(assert (=> b!7372770 m!8026044))

(declare-fun m!8026046 () Bool)

(assert (=> b!7372768 m!8026046))

(assert (=> b!7372768 m!8026036))

(declare-fun m!8026048 () Bool)

(assert (=> b!7372768 m!8026048))

(declare-fun m!8026050 () Bool)

(assert (=> b!7372768 m!8026050))

(declare-fun m!8026052 () Bool)

(assert (=> b!7372768 m!8026052))

(assert (=> b!7372768 m!8026036))

(declare-fun m!8026054 () Bool)

(assert (=> b!7372768 m!8026054))

(assert (=> b!7372768 m!8026032))

(declare-fun m!8026056 () Bool)

(assert (=> start!719518 m!8026056))

(declare-fun m!8026058 () Bool)

(assert (=> start!719518 m!8026058))

(declare-fun m!8026060 () Bool)

(assert (=> start!719518 m!8026060))

(declare-fun m!8026062 () Bool)

(assert (=> start!719518 m!8026062))

(declare-fun m!8026064 () Bool)

(assert (=> b!7372781 m!8026064))

(declare-fun m!8026066 () Bool)

(assert (=> b!7372769 m!8026066))

(declare-fun m!8026068 () Bool)

(assert (=> b!7372769 m!8026068))

(push 1)

(assert (not b!7372778))

(assert (not b!7372773))

(assert (not b!7372768))

(assert (not b!7372770))

(assert (not b!7372777))

(assert (not b!7372780))

(assert (not start!719518))

(assert (not b!7372776))

(assert (not b!7372771))

(assert (not b!7372769))

(assert (not b!7372779))

(assert (not b!7372774))

(assert (not b!7372781))

(assert (not b!7372775))

(assert tp_is_empty!48817)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!677412 () Bool)

(declare-fun call!677419 () (Set Context!16452))

(declare-fun call!677417 () (Set Context!16452))

(assert (=> bm!677412 (= call!677419 call!677417)))

(declare-fun b!7372877 () Bool)

(declare-fun e!4413788 () Bool)

(assert (=> b!7372877 (= e!4413788 (nullable!8362 (regOne!39084 r1!2370)))))

(declare-fun b!7372878 () Bool)

(declare-fun e!4413789 () (Set Context!16452))

(declare-fun e!4413784 () (Set Context!16452))

(assert (=> b!7372878 (= e!4413789 e!4413784)))

(declare-fun c!1370350 () Bool)

(assert (=> b!7372878 (= c!1370350 (is-Union!19286 r1!2370))))

(declare-fun b!7372879 () Bool)

(declare-fun e!4413787 () (Set Context!16452))

(assert (=> b!7372879 (= e!4413787 call!677419)))

(declare-fun d!2284078 () Bool)

(declare-fun c!1370351 () Bool)

(assert (=> d!2284078 (= c!1370351 (and (is-ElementMatch!19286 r1!2370) (= (c!1370330 r1!2370) c!10362)))))

(assert (=> d!2284078 (= (derivationStepZipperDown!3112 r1!2370 lt!2615909 c!10362) e!4413789)))

(declare-fun b!7372880 () Bool)

(assert (=> b!7372880 (= e!4413789 (set.insert lt!2615909 (as set.empty (Set Context!16452))))))

(declare-fun call!677420 () (Set Context!16452))

(declare-fun c!1370348 () Bool)

(declare-fun call!677421 () List!71782)

(declare-fun bm!677413 () Bool)

(declare-fun c!1370352 () Bool)

(assert (=> bm!677413 (= call!677420 (derivationStepZipperDown!3112 (ite c!1370350 (regTwo!39085 r1!2370) (ite c!1370348 (regTwo!39084 r1!2370) (ite c!1370352 (regOne!39084 r1!2370) (reg!19615 r1!2370)))) (ite (or c!1370350 c!1370348) lt!2615909 (Context!16453 call!677421)) c!10362))))

(declare-fun bm!677414 () Bool)

(declare-fun call!677418 () List!71782)

(assert (=> bm!677414 (= call!677421 call!677418)))

(declare-fun bm!677415 () Bool)

(assert (=> bm!677415 (= call!677417 call!677420)))

(declare-fun b!7372881 () Bool)

(assert (=> b!7372881 (= c!1370348 e!4413788)))

(declare-fun res!2974728 () Bool)

(assert (=> b!7372881 (=> (not res!2974728) (not e!4413788))))

(assert (=> b!7372881 (= res!2974728 (is-Concat!28131 r1!2370))))

(declare-fun e!4413786 () (Set Context!16452))

(assert (=> b!7372881 (= e!4413784 e!4413786)))

(declare-fun b!7372882 () Bool)

(declare-fun e!4413785 () (Set Context!16452))

(assert (=> b!7372882 (= e!4413785 call!677419)))

(declare-fun b!7372883 () Bool)

(assert (=> b!7372883 (= e!4413786 e!4413785)))

(assert (=> b!7372883 (= c!1370352 (is-Concat!28131 r1!2370))))

(declare-fun bm!677416 () Bool)

(assert (=> bm!677416 (= call!677418 ($colon$colon!3268 (exprs!8726 lt!2615909) (ite (or c!1370348 c!1370352) (regTwo!39084 r1!2370) r1!2370)))))

(declare-fun b!7372884 () Bool)

(declare-fun call!677422 () (Set Context!16452))

(assert (=> b!7372884 (= e!4413784 (set.union call!677422 call!677420))))

(declare-fun b!7372885 () Bool)

(declare-fun c!1370349 () Bool)

(assert (=> b!7372885 (= c!1370349 (is-Star!19286 r1!2370))))

(assert (=> b!7372885 (= e!4413785 e!4413787)))

(declare-fun b!7372886 () Bool)

(assert (=> b!7372886 (= e!4413787 (as set.empty (Set Context!16452)))))

(declare-fun b!7372887 () Bool)

(assert (=> b!7372887 (= e!4413786 (set.union call!677422 call!677417))))

(declare-fun bm!677417 () Bool)

(assert (=> bm!677417 (= call!677422 (derivationStepZipperDown!3112 (ite c!1370350 (regOne!39085 r1!2370) (regOne!39084 r1!2370)) (ite c!1370350 lt!2615909 (Context!16453 call!677418)) c!10362))))

(assert (= (and d!2284078 c!1370351) b!7372880))

(assert (= (and d!2284078 (not c!1370351)) b!7372878))

(assert (= (and b!7372878 c!1370350) b!7372884))

(assert (= (and b!7372878 (not c!1370350)) b!7372881))

(assert (= (and b!7372881 res!2974728) b!7372877))

(assert (= (and b!7372881 c!1370348) b!7372887))

(assert (= (and b!7372881 (not c!1370348)) b!7372883))

(assert (= (and b!7372883 c!1370352) b!7372882))

(assert (= (and b!7372883 (not c!1370352)) b!7372885))

(assert (= (and b!7372885 c!1370349) b!7372879))

(assert (= (and b!7372885 (not c!1370349)) b!7372886))

(assert (= (or b!7372882 b!7372879) bm!677414))

(assert (= (or b!7372882 b!7372879) bm!677412))

(assert (= (or b!7372887 bm!677412) bm!677415))

(assert (= (or b!7372887 bm!677414) bm!677416))

(assert (= (or b!7372884 bm!677415) bm!677413))

(assert (= (or b!7372884 b!7372887) bm!677417))

(declare-fun m!8026128 () Bool)

(assert (=> bm!677417 m!8026128))

(declare-fun m!8026130 () Bool)

(assert (=> bm!677416 m!8026130))

(declare-fun m!8026134 () Bool)

(assert (=> bm!677413 m!8026134))

(declare-fun m!8026136 () Bool)

(assert (=> b!7372880 m!8026136))

(assert (=> b!7372877 m!8026026))

(assert (=> b!7372776 d!2284078))

(declare-fun b!7372896 () Bool)

(declare-fun e!4413794 () List!71782)

(assert (=> b!7372896 (= e!4413794 (exprs!8726 ct2!378))))

(declare-fun b!7372897 () Bool)

(assert (=> b!7372897 (= e!4413794 (Cons!71658 (h!78106 (exprs!8726 ct1!282)) (++!17102 (t!386251 (exprs!8726 ct1!282)) (exprs!8726 ct2!378))))))

(declare-fun d!2284080 () Bool)

(declare-fun e!4413795 () Bool)

(assert (=> d!2284080 e!4413795))

(declare-fun res!2974733 () Bool)

(assert (=> d!2284080 (=> (not res!2974733) (not e!4413795))))

(declare-fun lt!2615960 () List!71782)

(declare-fun content!15162 (List!71782) (Set Regex!19286))

(assert (=> d!2284080 (= res!2974733 (= (content!15162 lt!2615960) (set.union (content!15162 (exprs!8726 ct1!282)) (content!15162 (exprs!8726 ct2!378)))))))

(assert (=> d!2284080 (= lt!2615960 e!4413794)))

(declare-fun c!1370355 () Bool)

(assert (=> d!2284080 (= c!1370355 (is-Nil!71658 (exprs!8726 ct1!282)))))

(assert (=> d!2284080 (= (++!17102 (exprs!8726 ct1!282) (exprs!8726 ct2!378)) lt!2615960)))

(declare-fun b!7372899 () Bool)

(assert (=> b!7372899 (= e!4413795 (or (not (= (exprs!8726 ct2!378) Nil!71658)) (= lt!2615960 (exprs!8726 ct1!282))))))

(declare-fun b!7372898 () Bool)

(declare-fun res!2974734 () Bool)

(assert (=> b!7372898 (=> (not res!2974734) (not e!4413795))))

(declare-fun size!42140 (List!71782) Int)

(assert (=> b!7372898 (= res!2974734 (= (size!42140 lt!2615960) (+ (size!42140 (exprs!8726 ct1!282)) (size!42140 (exprs!8726 ct2!378)))))))

(assert (= (and d!2284080 c!1370355) b!7372896))

(assert (= (and d!2284080 (not c!1370355)) b!7372897))

(assert (= (and d!2284080 res!2974733) b!7372898))

(assert (= (and b!7372898 res!2974734) b!7372899))

(declare-fun m!8026142 () Bool)

(assert (=> b!7372897 m!8026142))

(declare-fun m!8026144 () Bool)

(assert (=> d!2284080 m!8026144))

(declare-fun m!8026146 () Bool)

(assert (=> d!2284080 m!8026146))

(declare-fun m!8026148 () Bool)

(assert (=> d!2284080 m!8026148))

(declare-fun m!8026150 () Bool)

(assert (=> b!7372898 m!8026150))

(declare-fun m!8026152 () Bool)

(assert (=> b!7372898 m!8026152))

(declare-fun m!8026154 () Bool)

(assert (=> b!7372898 m!8026154))

(assert (=> b!7372776 d!2284080))

(declare-fun d!2284084 () Bool)

(declare-fun forall!18088 (List!71782 Int) Bool)

(assert (=> d!2284084 (forall!18088 (++!17102 (exprs!8726 ct1!282) (exprs!8726 ct2!378)) lambda!458146)))

(declare-fun lt!2615963 () Unit!165521)

(declare-fun choose!57314 (List!71782 List!71782 Int) Unit!165521)

(assert (=> d!2284084 (= lt!2615963 (choose!57314 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458146))))

(assert (=> d!2284084 (forall!18088 (exprs!8726 ct1!282) lambda!458146)))

(assert (=> d!2284084 (= (lemmaConcatPreservesForall!1959 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458146) lt!2615963)))

(declare-fun bs!1921034 () Bool)

(assert (= bs!1921034 d!2284084))

(assert (=> bs!1921034 m!8026030))

(assert (=> bs!1921034 m!8026030))

(declare-fun m!8026156 () Bool)

(assert (=> bs!1921034 m!8026156))

(declare-fun m!8026158 () Bool)

(assert (=> bs!1921034 m!8026158))

(declare-fun m!8026160 () Bool)

(assert (=> bs!1921034 m!8026160))

(assert (=> b!7372776 d!2284084))

(declare-fun bs!1921035 () Bool)

(declare-fun d!2284086 () Bool)

(assert (= bs!1921035 (and d!2284086 b!7372776)))

(declare-fun lambda!458165 () Int)

(assert (=> bs!1921035 (= lambda!458165 lambda!458146)))

(assert (=> d!2284086 (= (inv!91556 lt!2615910) (forall!18088 (exprs!8726 lt!2615910) lambda!458165))))

(declare-fun bs!1921036 () Bool)

(assert (= bs!1921036 d!2284086))

(declare-fun m!8026162 () Bool)

(assert (=> bs!1921036 m!8026162))

(assert (=> b!7372777 d!2284086))

(assert (=> b!7372777 d!2284084))

(declare-fun d!2284088 () Bool)

(assert (=> d!2284088 (forall!18088 (++!17102 (exprs!8726 cWitness!61) (exprs!8726 ct2!378)) lambda!458146)))

(declare-fun lt!2615964 () Unit!165521)

(assert (=> d!2284088 (= lt!2615964 (choose!57314 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458146))))

(assert (=> d!2284088 (forall!18088 (exprs!8726 cWitness!61) lambda!458146)))

(assert (=> d!2284088 (= (lemmaConcatPreservesForall!1959 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458146) lt!2615964)))

(declare-fun bs!1921037 () Bool)

(assert (= bs!1921037 d!2284088))

(assert (=> bs!1921037 m!8026048))

(assert (=> bs!1921037 m!8026048))

(declare-fun m!8026164 () Bool)

(assert (=> bs!1921037 m!8026164))

(declare-fun m!8026166 () Bool)

(assert (=> bs!1921037 m!8026166))

(declare-fun m!8026168 () Bool)

(assert (=> bs!1921037 m!8026168))

(assert (=> b!7372777 d!2284088))

(declare-fun b!7372940 () Bool)

(declare-fun e!4413823 () Bool)

(declare-fun call!677438 () Bool)

(assert (=> b!7372940 (= e!4413823 call!677438)))

(declare-fun b!7372941 () Bool)

(declare-fun res!2974747 () Bool)

(declare-fun e!4413824 () Bool)

(assert (=> b!7372941 (=> res!2974747 e!4413824)))

(assert (=> b!7372941 (= res!2974747 (not (is-Concat!28131 (regTwo!39084 r1!2370))))))

(declare-fun e!4413828 () Bool)

(assert (=> b!7372941 (= e!4413828 e!4413824)))

(declare-fun bm!677432 () Bool)

(declare-fun c!1370370 () Bool)

(assert (=> bm!677432 (= call!677438 (validRegex!9882 (ite c!1370370 (regOne!39085 (regTwo!39084 r1!2370)) (regTwo!39084 (regTwo!39084 r1!2370)))))))

(declare-fun d!2284090 () Bool)

(declare-fun res!2974751 () Bool)

(declare-fun e!4413822 () Bool)

(assert (=> d!2284090 (=> res!2974751 e!4413822)))

(assert (=> d!2284090 (= res!2974751 (is-ElementMatch!19286 (regTwo!39084 r1!2370)))))

(assert (=> d!2284090 (= (validRegex!9882 (regTwo!39084 r1!2370)) e!4413822)))

(declare-fun b!7372942 () Bool)

(declare-fun e!4413827 () Bool)

(declare-fun e!4413825 () Bool)

(assert (=> b!7372942 (= e!4413827 e!4413825)))

(declare-fun res!2974749 () Bool)

(assert (=> b!7372942 (= res!2974749 (not (nullable!8362 (reg!19615 (regTwo!39084 r1!2370)))))))

(assert (=> b!7372942 (=> (not res!2974749) (not e!4413825))))

(declare-fun call!677437 () Bool)

(declare-fun c!1370371 () Bool)

(declare-fun bm!677433 () Bool)

(assert (=> bm!677433 (= call!677437 (validRegex!9882 (ite c!1370371 (reg!19615 (regTwo!39084 r1!2370)) (ite c!1370370 (regTwo!39085 (regTwo!39084 r1!2370)) (regOne!39084 (regTwo!39084 r1!2370))))))))

(declare-fun b!7372943 () Bool)

(assert (=> b!7372943 (= e!4413824 e!4413823)))

(declare-fun res!2974750 () Bool)

(assert (=> b!7372943 (=> (not res!2974750) (not e!4413823))))

(declare-fun call!677439 () Bool)

(assert (=> b!7372943 (= res!2974750 call!677439)))

(declare-fun b!7372944 () Bool)

(declare-fun res!2974748 () Bool)

(declare-fun e!4413826 () Bool)

(assert (=> b!7372944 (=> (not res!2974748) (not e!4413826))))

(assert (=> b!7372944 (= res!2974748 call!677438)))

(assert (=> b!7372944 (= e!4413828 e!4413826)))

(declare-fun b!7372945 () Bool)

(assert (=> b!7372945 (= e!4413827 e!4413828)))

(assert (=> b!7372945 (= c!1370370 (is-Union!19286 (regTwo!39084 r1!2370)))))

(declare-fun b!7372946 () Bool)

(assert (=> b!7372946 (= e!4413825 call!677437)))

(declare-fun bm!677434 () Bool)

(assert (=> bm!677434 (= call!677439 call!677437)))

(declare-fun b!7372947 () Bool)

(assert (=> b!7372947 (= e!4413826 call!677439)))

(declare-fun b!7372948 () Bool)

(assert (=> b!7372948 (= e!4413822 e!4413827)))

(assert (=> b!7372948 (= c!1370371 (is-Star!19286 (regTwo!39084 r1!2370)))))

(assert (= (and d!2284090 (not res!2974751)) b!7372948))

(assert (= (and b!7372948 c!1370371) b!7372942))

(assert (= (and b!7372948 (not c!1370371)) b!7372945))

(assert (= (and b!7372942 res!2974749) b!7372946))

(assert (= (and b!7372945 c!1370370) b!7372944))

(assert (= (and b!7372945 (not c!1370370)) b!7372941))

(assert (= (and b!7372944 res!2974748) b!7372947))

(assert (= (and b!7372941 (not res!2974747)) b!7372943))

(assert (= (and b!7372943 res!2974750) b!7372940))

(assert (= (or b!7372944 b!7372940) bm!677432))

(assert (= (or b!7372947 b!7372943) bm!677434))

(assert (= (or b!7372946 bm!677434) bm!677433))

(declare-fun m!8026170 () Bool)

(assert (=> bm!677432 m!8026170))

(declare-fun m!8026172 () Bool)

(assert (=> b!7372942 m!8026172))

(declare-fun m!8026174 () Bool)

(assert (=> bm!677433 m!8026174))

(assert (=> b!7372781 d!2284090))

(declare-fun bm!677437 () Bool)

(declare-fun call!677444 () (Set Context!16452))

(declare-fun call!677442 () (Set Context!16452))

(assert (=> bm!677437 (= call!677444 call!677442)))

(declare-fun b!7372949 () Bool)

(declare-fun e!4413833 () Bool)

(assert (=> b!7372949 (= e!4413833 (nullable!8362 (regOne!39084 (regTwo!39084 r1!2370))))))

(declare-fun b!7372950 () Bool)

(declare-fun e!4413834 () (Set Context!16452))

(declare-fun e!4413829 () (Set Context!16452))

(assert (=> b!7372950 (= e!4413834 e!4413829)))

(declare-fun c!1370374 () Bool)

(assert (=> b!7372950 (= c!1370374 (is-Union!19286 (regTwo!39084 r1!2370)))))

(declare-fun b!7372951 () Bool)

(declare-fun e!4413832 () (Set Context!16452))

(assert (=> b!7372951 (= e!4413832 call!677444)))

(declare-fun d!2284092 () Bool)

(declare-fun c!1370375 () Bool)

(assert (=> d!2284092 (= c!1370375 (and (is-ElementMatch!19286 (regTwo!39084 r1!2370)) (= (c!1370330 (regTwo!39084 r1!2370)) c!10362)))))

(assert (=> d!2284092 (= (derivationStepZipperDown!3112 (regTwo!39084 r1!2370) ct1!282 c!10362) e!4413834)))

(declare-fun b!7372952 () Bool)

(assert (=> b!7372952 (= e!4413834 (set.insert ct1!282 (as set.empty (Set Context!16452))))))

(declare-fun bm!677438 () Bool)

(declare-fun c!1370376 () Bool)

(declare-fun call!677446 () List!71782)

(declare-fun call!677445 () (Set Context!16452))

(declare-fun c!1370372 () Bool)

(assert (=> bm!677438 (= call!677445 (derivationStepZipperDown!3112 (ite c!1370374 (regTwo!39085 (regTwo!39084 r1!2370)) (ite c!1370372 (regTwo!39084 (regTwo!39084 r1!2370)) (ite c!1370376 (regOne!39084 (regTwo!39084 r1!2370)) (reg!19615 (regTwo!39084 r1!2370))))) (ite (or c!1370374 c!1370372) ct1!282 (Context!16453 call!677446)) c!10362))))

(declare-fun bm!677439 () Bool)

(declare-fun call!677443 () List!71782)

(assert (=> bm!677439 (= call!677446 call!677443)))

(declare-fun bm!677440 () Bool)

(assert (=> bm!677440 (= call!677442 call!677445)))

(declare-fun b!7372953 () Bool)

(assert (=> b!7372953 (= c!1370372 e!4413833)))

(declare-fun res!2974752 () Bool)

(assert (=> b!7372953 (=> (not res!2974752) (not e!4413833))))

(assert (=> b!7372953 (= res!2974752 (is-Concat!28131 (regTwo!39084 r1!2370)))))

(declare-fun e!4413831 () (Set Context!16452))

(assert (=> b!7372953 (= e!4413829 e!4413831)))

(declare-fun b!7372954 () Bool)

(declare-fun e!4413830 () (Set Context!16452))

(assert (=> b!7372954 (= e!4413830 call!677444)))

(declare-fun b!7372955 () Bool)

(assert (=> b!7372955 (= e!4413831 e!4413830)))

(assert (=> b!7372955 (= c!1370376 (is-Concat!28131 (regTwo!39084 r1!2370)))))

(declare-fun bm!677441 () Bool)

(assert (=> bm!677441 (= call!677443 ($colon$colon!3268 (exprs!8726 ct1!282) (ite (or c!1370372 c!1370376) (regTwo!39084 (regTwo!39084 r1!2370)) (regTwo!39084 r1!2370))))))

(declare-fun b!7372956 () Bool)

(declare-fun call!677447 () (Set Context!16452))

(assert (=> b!7372956 (= e!4413829 (set.union call!677447 call!677445))))

(declare-fun b!7372957 () Bool)

(declare-fun c!1370373 () Bool)

(assert (=> b!7372957 (= c!1370373 (is-Star!19286 (regTwo!39084 r1!2370)))))

(assert (=> b!7372957 (= e!4413830 e!4413832)))

(declare-fun b!7372958 () Bool)

(assert (=> b!7372958 (= e!4413832 (as set.empty (Set Context!16452)))))

(declare-fun b!7372959 () Bool)

(assert (=> b!7372959 (= e!4413831 (set.union call!677447 call!677442))))

(declare-fun bm!677442 () Bool)

(assert (=> bm!677442 (= call!677447 (derivationStepZipperDown!3112 (ite c!1370374 (regOne!39085 (regTwo!39084 r1!2370)) (regOne!39084 (regTwo!39084 r1!2370))) (ite c!1370374 ct1!282 (Context!16453 call!677443)) c!10362))))

(assert (= (and d!2284092 c!1370375) b!7372952))

(assert (= (and d!2284092 (not c!1370375)) b!7372950))

(assert (= (and b!7372950 c!1370374) b!7372956))

(assert (= (and b!7372950 (not c!1370374)) b!7372953))

(assert (= (and b!7372953 res!2974752) b!7372949))

(assert (= (and b!7372953 c!1370372) b!7372959))

(assert (= (and b!7372953 (not c!1370372)) b!7372955))

(assert (= (and b!7372955 c!1370376) b!7372954))

(assert (= (and b!7372955 (not c!1370376)) b!7372957))

(assert (= (and b!7372957 c!1370373) b!7372951))

(assert (= (and b!7372957 (not c!1370373)) b!7372958))

(assert (= (or b!7372954 b!7372951) bm!677439))

(assert (= (or b!7372954 b!7372951) bm!677437))

(assert (= (or b!7372959 bm!677437) bm!677440))

(assert (= (or b!7372959 bm!677439) bm!677441))

(assert (= (or b!7372956 bm!677440) bm!677438))

(assert (= (or b!7372956 b!7372959) bm!677442))

(declare-fun m!8026176 () Bool)

(assert (=> bm!677442 m!8026176))

(declare-fun m!8026178 () Bool)

(assert (=> bm!677441 m!8026178))

(declare-fun m!8026180 () Bool)

(assert (=> bm!677438 m!8026180))

(declare-fun m!8026182 () Bool)

(assert (=> b!7372952 m!8026182))

(declare-fun m!8026184 () Bool)

(assert (=> b!7372949 m!8026184))

(assert (=> b!7372770 d!2284092))

(declare-fun bm!677445 () Bool)

(declare-fun call!677452 () (Set Context!16452))

(declare-fun call!677450 () (Set Context!16452))

(assert (=> bm!677445 (= call!677452 call!677450)))

(declare-fun b!7372960 () Bool)

(declare-fun e!4413839 () Bool)

(assert (=> b!7372960 (= e!4413839 (nullable!8362 (regOne!39084 (regOne!39084 r1!2370))))))

(declare-fun b!7372961 () Bool)

(declare-fun e!4413840 () (Set Context!16452))

(declare-fun e!4413835 () (Set Context!16452))

(assert (=> b!7372961 (= e!4413840 e!4413835)))

(declare-fun c!1370379 () Bool)

(assert (=> b!7372961 (= c!1370379 (is-Union!19286 (regOne!39084 r1!2370)))))

(declare-fun b!7372962 () Bool)

(declare-fun e!4413838 () (Set Context!16452))

(assert (=> b!7372962 (= e!4413838 call!677452)))

(declare-fun d!2284094 () Bool)

(declare-fun c!1370380 () Bool)

(assert (=> d!2284094 (= c!1370380 (and (is-ElementMatch!19286 (regOne!39084 r1!2370)) (= (c!1370330 (regOne!39084 r1!2370)) c!10362)))))

(assert (=> d!2284094 (= (derivationStepZipperDown!3112 (regOne!39084 r1!2370) (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370))) c!10362) e!4413840)))

(declare-fun b!7372963 () Bool)

(assert (=> b!7372963 (= e!4413840 (set.insert (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370))) (as set.empty (Set Context!16452))))))

(declare-fun call!677454 () List!71782)

(declare-fun call!677453 () (Set Context!16452))

(declare-fun c!1370381 () Bool)

(declare-fun c!1370377 () Bool)

(declare-fun bm!677446 () Bool)

(assert (=> bm!677446 (= call!677453 (derivationStepZipperDown!3112 (ite c!1370379 (regTwo!39085 (regOne!39084 r1!2370)) (ite c!1370377 (regTwo!39084 (regOne!39084 r1!2370)) (ite c!1370381 (regOne!39084 (regOne!39084 r1!2370)) (reg!19615 (regOne!39084 r1!2370))))) (ite (or c!1370379 c!1370377) (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370))) (Context!16453 call!677454)) c!10362))))

(declare-fun bm!677447 () Bool)

(declare-fun call!677451 () List!71782)

(assert (=> bm!677447 (= call!677454 call!677451)))

(declare-fun bm!677448 () Bool)

(assert (=> bm!677448 (= call!677450 call!677453)))

(declare-fun b!7372964 () Bool)

(assert (=> b!7372964 (= c!1370377 e!4413839)))

(declare-fun res!2974753 () Bool)

(assert (=> b!7372964 (=> (not res!2974753) (not e!4413839))))

(assert (=> b!7372964 (= res!2974753 (is-Concat!28131 (regOne!39084 r1!2370)))))

(declare-fun e!4413837 () (Set Context!16452))

(assert (=> b!7372964 (= e!4413835 e!4413837)))

(declare-fun b!7372965 () Bool)

(declare-fun e!4413836 () (Set Context!16452))

(assert (=> b!7372965 (= e!4413836 call!677452)))

(declare-fun b!7372966 () Bool)

(assert (=> b!7372966 (= e!4413837 e!4413836)))

(assert (=> b!7372966 (= c!1370381 (is-Concat!28131 (regOne!39084 r1!2370)))))

(declare-fun bm!677449 () Bool)

(assert (=> bm!677449 (= call!677451 ($colon$colon!3268 (exprs!8726 (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370)))) (ite (or c!1370377 c!1370381) (regTwo!39084 (regOne!39084 r1!2370)) (regOne!39084 r1!2370))))))

(declare-fun b!7372967 () Bool)

(declare-fun call!677455 () (Set Context!16452))

(assert (=> b!7372967 (= e!4413835 (set.union call!677455 call!677453))))

(declare-fun b!7372968 () Bool)

(declare-fun c!1370378 () Bool)

(assert (=> b!7372968 (= c!1370378 (is-Star!19286 (regOne!39084 r1!2370)))))

(assert (=> b!7372968 (= e!4413836 e!4413838)))

(declare-fun b!7372969 () Bool)

(assert (=> b!7372969 (= e!4413838 (as set.empty (Set Context!16452)))))

(declare-fun b!7372970 () Bool)

(assert (=> b!7372970 (= e!4413837 (set.union call!677455 call!677450))))

(declare-fun bm!677450 () Bool)

(assert (=> bm!677450 (= call!677455 (derivationStepZipperDown!3112 (ite c!1370379 (regOne!39085 (regOne!39084 r1!2370)) (regOne!39084 (regOne!39084 r1!2370))) (ite c!1370379 (Context!16453 ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370))) (Context!16453 call!677451)) c!10362))))

(assert (= (and d!2284094 c!1370380) b!7372963))

(assert (= (and d!2284094 (not c!1370380)) b!7372961))

(assert (= (and b!7372961 c!1370379) b!7372967))

(assert (= (and b!7372961 (not c!1370379)) b!7372964))

(assert (= (and b!7372964 res!2974753) b!7372960))

(assert (= (and b!7372964 c!1370377) b!7372970))

(assert (= (and b!7372964 (not c!1370377)) b!7372966))

(assert (= (and b!7372966 c!1370381) b!7372965))

(assert (= (and b!7372966 (not c!1370381)) b!7372968))

(assert (= (and b!7372968 c!1370378) b!7372962))

(assert (= (and b!7372968 (not c!1370378)) b!7372969))

(assert (= (or b!7372965 b!7372962) bm!677447))

(assert (= (or b!7372965 b!7372962) bm!677445))

(assert (= (or b!7372970 bm!677445) bm!677448))

(assert (= (or b!7372970 bm!677447) bm!677449))

(assert (= (or b!7372967 bm!677448) bm!677446))

(assert (= (or b!7372967 b!7372970) bm!677450))

(declare-fun m!8026186 () Bool)

(assert (=> bm!677450 m!8026186))

(declare-fun m!8026188 () Bool)

(assert (=> bm!677449 m!8026188))

(declare-fun m!8026190 () Bool)

(assert (=> bm!677446 m!8026190))

(declare-fun m!8026192 () Bool)

(assert (=> b!7372963 m!8026192))

(declare-fun m!8026194 () Bool)

(assert (=> b!7372960 m!8026194))

(assert (=> b!7372770 d!2284094))

(declare-fun d!2284096 () Bool)

(assert (=> d!2284096 (= ($colon$colon!3268 (exprs!8726 ct1!282) (regTwo!39084 r1!2370)) (Cons!71658 (regTwo!39084 r1!2370) (exprs!8726 ct1!282)))))

(assert (=> b!7372770 d!2284096))

(declare-fun bm!677451 () Bool)

(declare-fun call!677458 () (Set Context!16452))

(declare-fun call!677456 () (Set Context!16452))

(assert (=> bm!677451 (= call!677458 call!677456)))

(declare-fun b!7372971 () Bool)

(declare-fun e!4413845 () Bool)

(assert (=> b!7372971 (= e!4413845 (nullable!8362 (regOne!39084 (regTwo!39084 r1!2370))))))

(declare-fun b!7372972 () Bool)

(declare-fun e!4413846 () (Set Context!16452))

(declare-fun e!4413841 () (Set Context!16452))

(assert (=> b!7372972 (= e!4413846 e!4413841)))

(declare-fun c!1370384 () Bool)

(assert (=> b!7372972 (= c!1370384 (is-Union!19286 (regTwo!39084 r1!2370)))))

(declare-fun b!7372973 () Bool)

(declare-fun e!4413844 () (Set Context!16452))

(assert (=> b!7372973 (= e!4413844 call!677458)))

(declare-fun d!2284098 () Bool)

(declare-fun c!1370385 () Bool)

(assert (=> d!2284098 (= c!1370385 (and (is-ElementMatch!19286 (regTwo!39084 r1!2370)) (= (c!1370330 (regTwo!39084 r1!2370)) c!10362)))))

(assert (=> d!2284098 (= (derivationStepZipperDown!3112 (regTwo!39084 r1!2370) lt!2615909 c!10362) e!4413846)))

(declare-fun b!7372974 () Bool)

(assert (=> b!7372974 (= e!4413846 (set.insert lt!2615909 (as set.empty (Set Context!16452))))))

(declare-fun c!1370382 () Bool)

(declare-fun c!1370386 () Bool)

(declare-fun call!677460 () List!71782)

(declare-fun call!677459 () (Set Context!16452))

(declare-fun bm!677452 () Bool)

(assert (=> bm!677452 (= call!677459 (derivationStepZipperDown!3112 (ite c!1370384 (regTwo!39085 (regTwo!39084 r1!2370)) (ite c!1370382 (regTwo!39084 (regTwo!39084 r1!2370)) (ite c!1370386 (regOne!39084 (regTwo!39084 r1!2370)) (reg!19615 (regTwo!39084 r1!2370))))) (ite (or c!1370384 c!1370382) lt!2615909 (Context!16453 call!677460)) c!10362))))

(declare-fun bm!677453 () Bool)

(declare-fun call!677457 () List!71782)

(assert (=> bm!677453 (= call!677460 call!677457)))

(declare-fun bm!677454 () Bool)

(assert (=> bm!677454 (= call!677456 call!677459)))

(declare-fun b!7372975 () Bool)

(assert (=> b!7372975 (= c!1370382 e!4413845)))

(declare-fun res!2974754 () Bool)

(assert (=> b!7372975 (=> (not res!2974754) (not e!4413845))))

(assert (=> b!7372975 (= res!2974754 (is-Concat!28131 (regTwo!39084 r1!2370)))))

(declare-fun e!4413843 () (Set Context!16452))

(assert (=> b!7372975 (= e!4413841 e!4413843)))

(declare-fun b!7372976 () Bool)

(declare-fun e!4413842 () (Set Context!16452))

(assert (=> b!7372976 (= e!4413842 call!677458)))

(declare-fun b!7372977 () Bool)

(assert (=> b!7372977 (= e!4413843 e!4413842)))

(assert (=> b!7372977 (= c!1370386 (is-Concat!28131 (regTwo!39084 r1!2370)))))

(declare-fun bm!677455 () Bool)

(assert (=> bm!677455 (= call!677457 ($colon$colon!3268 (exprs!8726 lt!2615909) (ite (or c!1370382 c!1370386) (regTwo!39084 (regTwo!39084 r1!2370)) (regTwo!39084 r1!2370))))))

(declare-fun b!7372978 () Bool)

(declare-fun call!677461 () (Set Context!16452))

(assert (=> b!7372978 (= e!4413841 (set.union call!677461 call!677459))))

(declare-fun b!7372979 () Bool)

(declare-fun c!1370383 () Bool)

(assert (=> b!7372979 (= c!1370383 (is-Star!19286 (regTwo!39084 r1!2370)))))

(assert (=> b!7372979 (= e!4413842 e!4413844)))

(declare-fun b!7372980 () Bool)

(assert (=> b!7372980 (= e!4413844 (as set.empty (Set Context!16452)))))

(declare-fun b!7372981 () Bool)

(assert (=> b!7372981 (= e!4413843 (set.union call!677461 call!677456))))

(declare-fun bm!677456 () Bool)

(assert (=> bm!677456 (= call!677461 (derivationStepZipperDown!3112 (ite c!1370384 (regOne!39085 (regTwo!39084 r1!2370)) (regOne!39084 (regTwo!39084 r1!2370))) (ite c!1370384 lt!2615909 (Context!16453 call!677457)) c!10362))))

(assert (= (and d!2284098 c!1370385) b!7372974))

(assert (= (and d!2284098 (not c!1370385)) b!7372972))

(assert (= (and b!7372972 c!1370384) b!7372978))

(assert (= (and b!7372972 (not c!1370384)) b!7372975))

(assert (= (and b!7372975 res!2974754) b!7372971))

(assert (= (and b!7372975 c!1370382) b!7372981))

(assert (= (and b!7372975 (not c!1370382)) b!7372977))

(assert (= (and b!7372977 c!1370386) b!7372976))

(assert (= (and b!7372977 (not c!1370386)) b!7372979))

(assert (= (and b!7372979 c!1370383) b!7372973))

(assert (= (and b!7372979 (not c!1370383)) b!7372980))

(assert (= (or b!7372976 b!7372973) bm!677453))

(assert (= (or b!7372976 b!7372973) bm!677451))

(assert (= (or b!7372981 bm!677451) bm!677454))

(assert (= (or b!7372981 bm!677453) bm!677455))

(assert (= (or b!7372978 bm!677454) bm!677452))

(assert (= (or b!7372978 b!7372981) bm!677456))

(declare-fun m!8026196 () Bool)

(assert (=> bm!677456 m!8026196))

(declare-fun m!8026198 () Bool)

(assert (=> bm!677455 m!8026198))

(declare-fun m!8026200 () Bool)

(assert (=> bm!677452 m!8026200))

(assert (=> b!7372974 m!8026136))

(assert (=> b!7372971 m!8026184))

(assert (=> b!7372768 d!2284098))

(assert (=> b!7372768 d!2284084))

(declare-fun b!7372982 () Bool)

(declare-fun e!4413847 () List!71782)

(assert (=> b!7372982 (= e!4413847 (exprs!8726 ct2!378))))

(declare-fun b!7372983 () Bool)

(assert (=> b!7372983 (= e!4413847 (Cons!71658 (h!78106 (exprs!8726 cWitness!61)) (++!17102 (t!386251 (exprs!8726 cWitness!61)) (exprs!8726 ct2!378))))))

(declare-fun d!2284100 () Bool)

(declare-fun e!4413848 () Bool)

(assert (=> d!2284100 e!4413848))

(declare-fun res!2974755 () Bool)

(assert (=> d!2284100 (=> (not res!2974755) (not e!4413848))))

(declare-fun lt!2615965 () List!71782)

(assert (=> d!2284100 (= res!2974755 (= (content!15162 lt!2615965) (set.union (content!15162 (exprs!8726 cWitness!61)) (content!15162 (exprs!8726 ct2!378)))))))

(assert (=> d!2284100 (= lt!2615965 e!4413847)))

(declare-fun c!1370387 () Bool)

(assert (=> d!2284100 (= c!1370387 (is-Nil!71658 (exprs!8726 cWitness!61)))))

(assert (=> d!2284100 (= (++!17102 (exprs!8726 cWitness!61) (exprs!8726 ct2!378)) lt!2615965)))

(declare-fun b!7372985 () Bool)

(assert (=> b!7372985 (= e!4413848 (or (not (= (exprs!8726 ct2!378) Nil!71658)) (= lt!2615965 (exprs!8726 cWitness!61))))))

(declare-fun b!7372984 () Bool)

(declare-fun res!2974756 () Bool)

(assert (=> b!7372984 (=> (not res!2974756) (not e!4413848))))

(assert (=> b!7372984 (= res!2974756 (= (size!42140 lt!2615965) (+ (size!42140 (exprs!8726 cWitness!61)) (size!42140 (exprs!8726 ct2!378)))))))

(assert (= (and d!2284100 c!1370387) b!7372982))

(assert (= (and d!2284100 (not c!1370387)) b!7372983))

(assert (= (and d!2284100 res!2974755) b!7372984))

(assert (= (and b!7372984 res!2974756) b!7372985))

(declare-fun m!8026202 () Bool)

(assert (=> b!7372983 m!8026202))

(declare-fun m!8026204 () Bool)

(assert (=> d!2284100 m!8026204))

(declare-fun m!8026206 () Bool)

(assert (=> d!2284100 m!8026206))

(assert (=> d!2284100 m!8026148))

(declare-fun m!8026208 () Bool)

(assert (=> b!7372984 m!8026208))

(declare-fun m!8026210 () Bool)

(assert (=> b!7372984 m!8026210))

(assert (=> b!7372984 m!8026154))

(assert (=> b!7372768 d!2284100))

(assert (=> b!7372768 d!2284088))

(declare-fun bs!1921038 () Bool)

(declare-fun d!2284102 () Bool)

(assert (= bs!1921038 (and d!2284102 b!7372776)))

(declare-fun lambda!458170 () Int)

(assert (=> bs!1921038 (= lambda!458170 lambda!458146)))

(declare-fun bs!1921039 () Bool)

(assert (= bs!1921039 (and d!2284102 d!2284086)))

(assert (=> bs!1921039 (= lambda!458170 lambda!458165)))

(assert (=> d!2284102 (set.member (Context!16453 (++!17102 (exprs!8726 cWitness!61) (exprs!8726 ct2!378))) (derivationStepZipperDown!3112 (regTwo!39084 r1!2370) (Context!16453 (++!17102 (exprs!8726 ct1!282) (exprs!8726 ct2!378))) c!10362))))

(declare-fun lt!2615974 () Unit!165521)

(assert (=> d!2284102 (= lt!2615974 (lemmaConcatPreservesForall!1959 (exprs!8726 ct1!282) (exprs!8726 ct2!378) lambda!458170))))

(declare-fun lt!2615973 () Unit!165521)

(assert (=> d!2284102 (= lt!2615973 (lemmaConcatPreservesForall!1959 (exprs!8726 cWitness!61) (exprs!8726 ct2!378) lambda!458170))))

(declare-fun lt!2615972 () Unit!165521)

(declare-fun choose!57316 (Regex!19286 Context!16452 Context!16452 Context!16452 C!38846) Unit!165521)

(assert (=> d!2284102 (= lt!2615972 (choose!57316 (regTwo!39084 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2284102 (validRegex!9882 (regTwo!39084 r1!2370))))

(assert (=> d!2284102 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!141 (regTwo!39084 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2615972)))

(declare-fun bs!1921040 () Bool)

(assert (= bs!1921040 d!2284102))

(declare-fun m!8026218 () Bool)

(assert (=> bs!1921040 m!8026218))

(declare-fun m!8026220 () Bool)

(assert (=> bs!1921040 m!8026220))

(assert (=> bs!1921040 m!8026064))

(assert (=> bs!1921040 m!8026048))

(assert (=> bs!1921040 m!8026030))

(declare-fun m!8026222 () Bool)

(assert (=> bs!1921040 m!8026222))

(declare-fun m!8026224 () Bool)

(assert (=> bs!1921040 m!8026224))

(declare-fun m!8026228 () Bool)

(assert (=> bs!1921040 m!8026228))

(assert (=> b!7372768 d!2284102))

(declare-fun bm!677463 () Bool)

(declare-fun call!677470 () (Set Context!16452))

(declare-fun call!677468 () (Set Context!16452))

(assert (=> bm!677463 (= call!677470 call!677468)))

(declare-fun b!7372997 () Bool)

(declare-fun e!4413859 () Bool)

(assert (=> b!7372997 (= e!4413859 (nullable!8362 (regOne!39084 r1!2370)))))

(declare-fun b!7372998 () Bool)

(declare-fun e!4413860 () (Set Context!16452))

(declare-fun e!4413855 () (Set Context!16452))

(assert (=> b!7372998 (= e!4413860 e!4413855)))

(declare-fun c!1370396 () Bool)

(assert (=> b!7372998 (= c!1370396 (is-Union!19286 r1!2370))))

(declare-fun b!7372999 () Bool)

(declare-fun e!4413858 () (Set Context!16452))

(assert (=> b!7372999 (= e!4413858 call!677470)))

(declare-fun d!2284104 () Bool)

(declare-fun c!1370397 () Bool)

(assert (=> d!2284104 (= c!1370397 (and (is-ElementMatch!19286 r1!2370) (= (c!1370330 r1!2370) c!10362)))))

(assert (=> d!2284104 (= (derivationStepZipperDown!3112 r1!2370 ct1!282 c!10362) e!4413860)))

(declare-fun b!7373000 () Bool)

(assert (=> b!7373000 (= e!4413860 (set.insert ct1!282 (as set.empty (Set Context!16452))))))

(declare-fun call!677472 () List!71782)

(declare-fun call!677471 () (Set Context!16452))

(declare-fun bm!677464 () Bool)

(declare-fun c!1370394 () Bool)

(declare-fun c!1370398 () Bool)

(assert (=> bm!677464 (= call!677471 (derivationStepZipperDown!3112 (ite c!1370396 (regTwo!39085 r1!2370) (ite c!1370394 (regTwo!39084 r1!2370) (ite c!1370398 (regOne!39084 r1!2370) (reg!19615 r1!2370)))) (ite (or c!1370396 c!1370394) ct1!282 (Context!16453 call!677472)) c!10362))))

(declare-fun bm!677465 () Bool)

(declare-fun call!677469 () List!71782)

(assert (=> bm!677465 (= call!677472 call!677469)))

(declare-fun bm!677466 () Bool)

(assert (=> bm!677466 (= call!677468 call!677471)))

(declare-fun b!7373001 () Bool)

(assert (=> b!7373001 (= c!1370394 e!4413859)))

(declare-fun res!2974758 () Bool)

(assert (=> b!7373001 (=> (not res!2974758) (not e!4413859))))

(assert (=> b!7373001 (= res!2974758 (is-Concat!28131 r1!2370))))

(declare-fun e!4413857 () (Set Context!16452))

(assert (=> b!7373001 (= e!4413855 e!4413857)))

(declare-fun b!7373002 () Bool)

(declare-fun e!4413856 () (Set Context!16452))

(assert (=> b!7373002 (= e!4413856 call!677470)))

(declare-fun b!7373003 () Bool)

(assert (=> b!7373003 (= e!4413857 e!4413856)))

(assert (=> b!7373003 (= c!1370398 (is-Concat!28131 r1!2370))))

(declare-fun bm!677467 () Bool)

(assert (=> bm!677467 (= call!677469 ($colon$colon!3268 (exprs!8726 ct1!282) (ite (or c!1370394 c!1370398) (regTwo!39084 r1!2370) r1!2370)))))

(declare-fun b!7373004 () Bool)

(declare-fun call!677473 () (Set Context!16452))

(assert (=> b!7373004 (= e!4413855 (set.union call!677473 call!677471))))

(declare-fun b!7373005 () Bool)

(declare-fun c!1370395 () Bool)

(assert (=> b!7373005 (= c!1370395 (is-Star!19286 r1!2370))))

(assert (=> b!7373005 (= e!4413856 e!4413858)))

(declare-fun b!7373006 () Bool)

(assert (=> b!7373006 (= e!4413858 (as set.empty (Set Context!16452)))))

(declare-fun b!7373007 () Bool)

(assert (=> b!7373007 (= e!4413857 (set.union call!677473 call!677468))))

(declare-fun bm!677468 () Bool)

(assert (=> bm!677468 (= call!677473 (derivationStepZipperDown!3112 (ite c!1370396 (regOne!39085 r1!2370) (regOne!39084 r1!2370)) (ite c!1370396 ct1!282 (Context!16453 call!677469)) c!10362))))

(assert (= (and d!2284104 c!1370397) b!7373000))

(assert (= (and d!2284104 (not c!1370397)) b!7372998))

(assert (= (and b!7372998 c!1370396) b!7373004))

(assert (= (and b!7372998 (not c!1370396)) b!7373001))

(assert (= (and b!7373001 res!2974758) b!7372997))

(assert (= (and b!7373001 c!1370394) b!7373007))

(assert (= (and b!7373001 (not c!1370394)) b!7373003))

(assert (= (and b!7373003 c!1370398) b!7373002))

(assert (= (and b!7373003 (not c!1370398)) b!7373005))

(assert (= (and b!7373005 c!1370395) b!7372999))

(assert (= (and b!7373005 (not c!1370395)) b!7373006))

(assert (= (or b!7373002 b!7372999) bm!677465))

(assert (= (or b!7373002 b!7372999) bm!677463))

(assert (= (or b!7373007 bm!677463) bm!677466))

(assert (= (or b!7373007 bm!677465) bm!677467))

(assert (= (or b!7373004 bm!677466) bm!677464))

(assert (= (or b!7373004 b!7373007) bm!677468))

(declare-fun m!8026230 () Bool)

(assert (=> bm!677468 m!8026230))

(declare-fun m!8026232 () Bool)

(assert (=> bm!677467 m!8026232))

(declare-fun m!8026234 () Bool)

(assert (=> bm!677464 m!8026234))

(assert (=> b!7373000 m!8026182))

(assert (=> b!7372997 m!8026026))

(assert (=> b!7372769 d!2284104))

(declare-fun b!7373008 () Bool)

(declare-fun e!4413862 () Bool)

(declare-fun call!677475 () Bool)

(assert (=> b!7373008 (= e!4413862 call!677475)))

(declare-fun b!7373009 () Bool)

(declare-fun res!2974759 () Bool)

(declare-fun e!4413863 () Bool)

(assert (=> b!7373009 (=> res!2974759 e!4413863)))

(assert (=> b!7373009 (= res!2974759 (not (is-Concat!28131 r1!2370)))))

(declare-fun e!4413867 () Bool)

(assert (=> b!7373009 (= e!4413867 e!4413863)))

(declare-fun bm!677469 () Bool)

(declare-fun c!1370399 () Bool)

(assert (=> bm!677469 (= call!677475 (validRegex!9882 (ite c!1370399 (regOne!39085 r1!2370) (regTwo!39084 r1!2370))))))

(declare-fun d!2284108 () Bool)

(declare-fun res!2974763 () Bool)

(declare-fun e!4413861 () Bool)

(assert (=> d!2284108 (=> res!2974763 e!4413861)))

(assert (=> d!2284108 (= res!2974763 (is-ElementMatch!19286 r1!2370))))

(assert (=> d!2284108 (= (validRegex!9882 r1!2370) e!4413861)))

(declare-fun b!7373010 () Bool)

(declare-fun e!4413866 () Bool)

(declare-fun e!4413864 () Bool)

(assert (=> b!7373010 (= e!4413866 e!4413864)))

(declare-fun res!2974761 () Bool)

(assert (=> b!7373010 (= res!2974761 (not (nullable!8362 (reg!19615 r1!2370))))))

(assert (=> b!7373010 (=> (not res!2974761) (not e!4413864))))

(declare-fun call!677474 () Bool)

(declare-fun c!1370400 () Bool)

(declare-fun bm!677470 () Bool)

(assert (=> bm!677470 (= call!677474 (validRegex!9882 (ite c!1370400 (reg!19615 r1!2370) (ite c!1370399 (regTwo!39085 r1!2370) (regOne!39084 r1!2370)))))))

(declare-fun b!7373011 () Bool)

(assert (=> b!7373011 (= e!4413863 e!4413862)))

(declare-fun res!2974762 () Bool)

(assert (=> b!7373011 (=> (not res!2974762) (not e!4413862))))

(declare-fun call!677476 () Bool)

(assert (=> b!7373011 (= res!2974762 call!677476)))

(declare-fun b!7373012 () Bool)

(declare-fun res!2974760 () Bool)

(declare-fun e!4413865 () Bool)

(assert (=> b!7373012 (=> (not res!2974760) (not e!4413865))))

(assert (=> b!7373012 (= res!2974760 call!677475)))

(assert (=> b!7373012 (= e!4413867 e!4413865)))

(declare-fun b!7373013 () Bool)

(assert (=> b!7373013 (= e!4413866 e!4413867)))

(assert (=> b!7373013 (= c!1370399 (is-Union!19286 r1!2370))))

(declare-fun b!7373014 () Bool)

(assert (=> b!7373014 (= e!4413864 call!677474)))

(declare-fun bm!677471 () Bool)

(assert (=> bm!677471 (= call!677476 call!677474)))

(declare-fun b!7373015 () Bool)

(assert (=> b!7373015 (= e!4413865 call!677476)))

(declare-fun b!7373016 () Bool)

(assert (=> b!7373016 (= e!4413861 e!4413866)))

(assert (=> b!7373016 (= c!1370400 (is-Star!19286 r1!2370))))

(assert (= (and d!2284108 (not res!2974763)) b!7373016))

(assert (= (and b!7373016 c!1370400) b!7373010))

(assert (= (and b!7373016 (not c!1370400)) b!7373013))

(assert (= (and b!7373010 res!2974761) b!7373014))

(assert (= (and b!7373013 c!1370399) b!7373012))

(assert (= (and b!7373013 (not c!1370399)) b!7373009))

(assert (= (and b!7373012 res!2974760) b!7373015))

(assert (= (and b!7373009 (not res!2974759)) b!7373011))

(assert (= (and b!7373011 res!2974762) b!7373008))

(assert (= (or b!7373012 b!7373008) bm!677469))

(assert (= (or b!7373015 b!7373011) bm!677471))

(assert (= (or b!7373014 bm!677471) bm!677470))

(declare-fun m!8026236 () Bool)

(assert (=> bm!677469 m!8026236))

(declare-fun m!8026238 () Bool)

(assert (=> b!7373010 m!8026238))

(declare-fun m!8026240 () Bool)

(assert (=> bm!677470 m!8026240))

(assert (=> start!719518 d!2284108))

(declare-fun bs!1921041 () Bool)

(declare-fun d!2284110 () Bool)

(assert (= bs!1921041 (and d!2284110 b!7372776)))

(declare-fun lambda!458171 () Int)

(assert (=> bs!1921041 (= lambda!458171 lambda!458146)))

(declare-fun bs!1921042 () Bool)

(assert (= bs!1921042 (and d!2284110 d!2284086)))

(assert (=> bs!1921042 (= lambda!458171 lambda!458165)))

(declare-fun bs!1921043 () Bool)

(assert (= bs!1921043 (and d!2284110 d!2284102)))

(assert (=> bs!1921043 (= lambda!458171 lambda!458170)))

(assert (=> d!2284110 (= (inv!91556 cWitness!61) (forall!18088 (exprs!8726 cWitness!61) lambda!458171))))

(declare-fun bs!1921044 () Bool)

(assert (= bs!1921044 d!2284110))

(declare-fun m!8026242 () Bool)

(assert (=> bs!1921044 m!8026242))

(assert (=> start!719518 d!2284110))

(declare-fun bs!1921045 () Bool)

(declare-fun d!2284112 () Bool)

(assert (= bs!1921045 (and d!2284112 b!7372776)))

(declare-fun lambda!458172 () Int)

(assert (=> bs!1921045 (= lambda!458172 lambda!458146)))

(declare-fun bs!1921046 () Bool)

(assert (= bs!1921046 (and d!2284112 d!2284086)))

(assert (=> bs!1921046 (= lambda!458172 lambda!458165)))

(declare-fun bs!1921047 () Bool)

(assert (= bs!1921047 (and d!2284112 d!2284102)))

(assert (=> bs!1921047 (= lambda!458172 lambda!458170)))

(declare-fun bs!1921048 () Bool)

(assert (= bs!1921048 (and d!2284112 d!2284110)))

(assert (=> bs!1921048 (= lambda!458172 lambda!458171)))

(assert (=> d!2284112 (= (inv!91556 ct1!282) (forall!18088 (exprs!8726 ct1!282) lambda!458172))))

(declare-fun bs!1921049 () Bool)

(assert (= bs!1921049 d!2284112))

(declare-fun m!8026244 () Bool)

(assert (=> bs!1921049 m!8026244))

(assert (=> start!719518 d!2284112))

(declare-fun bs!1921050 () Bool)

(declare-fun d!2284114 () Bool)

(assert (= bs!1921050 (and d!2284114 d!2284102)))

(declare-fun lambda!458173 () Int)

(assert (=> bs!1921050 (= lambda!458173 lambda!458170)))

(declare-fun bs!1921051 () Bool)

(assert (= bs!1921051 (and d!2284114 d!2284110)))

(assert (=> bs!1921051 (= lambda!458173 lambda!458171)))

(declare-fun bs!1921052 () Bool)

(assert (= bs!1921052 (and d!2284114 d!2284086)))

(assert (=> bs!1921052 (= lambda!458173 lambda!458165)))

(declare-fun bs!1921053 () Bool)

(assert (= bs!1921053 (and d!2284114 b!7372776)))

(assert (=> bs!1921053 (= lambda!458173 lambda!458146)))

(declare-fun bs!1921054 () Bool)

(assert (= bs!1921054 (and d!2284114 d!2284112)))

(assert (=> bs!1921054 (= lambda!458173 lambda!458172)))

(assert (=> d!2284114 (= (inv!91556 ct2!378) (forall!18088 (exprs!8726 ct2!378) lambda!458173))))

(declare-fun bs!1921055 () Bool)

(assert (= bs!1921055 d!2284114))

(declare-fun m!8026246 () Bool)

(assert (=> bs!1921055 m!8026246))

(assert (=> start!719518 d!2284114))

(declare-fun d!2284116 () Bool)

(declare-fun nullableFct!3346 (Regex!19286) Bool)

(assert (=> d!2284116 (= (nullable!8362 (regOne!39084 r1!2370)) (nullableFct!3346 (regOne!39084 r1!2370)))))

(declare-fun bs!1921056 () Bool)

(assert (= bs!1921056 d!2284116))

(declare-fun m!8026248 () Bool)

(assert (=> bs!1921056 m!8026248))

(assert (=> b!7372773 d!2284116))

(declare-fun b!7373030 () Bool)

(declare-fun e!4413870 () Bool)

(declare-fun tp!2096052 () Bool)

(declare-fun tp!2096054 () Bool)

(assert (=> b!7373030 (= e!4413870 (and tp!2096052 tp!2096054))))

(declare-fun b!7373028 () Bool)

(declare-fun tp!2096055 () Bool)

(declare-fun tp!2096053 () Bool)

(assert (=> b!7373028 (= e!4413870 (and tp!2096055 tp!2096053))))

(declare-fun b!7373027 () Bool)

(assert (=> b!7373027 (= e!4413870 tp_is_empty!48817)))

(declare-fun b!7373029 () Bool)

(declare-fun tp!2096056 () Bool)

(assert (=> b!7373029 (= e!4413870 tp!2096056)))

(assert (=> b!7372771 (= tp!2096011 e!4413870)))

(assert (= (and b!7372771 (is-ElementMatch!19286 (regOne!39085 r1!2370))) b!7373027))

(assert (= (and b!7372771 (is-Concat!28131 (regOne!39085 r1!2370))) b!7373028))

(assert (= (and b!7372771 (is-Star!19286 (regOne!39085 r1!2370))) b!7373029))

(assert (= (and b!7372771 (is-Union!19286 (regOne!39085 r1!2370))) b!7373030))

(declare-fun b!7373034 () Bool)

(declare-fun e!4413871 () Bool)

(declare-fun tp!2096057 () Bool)

(declare-fun tp!2096059 () Bool)

(assert (=> b!7373034 (= e!4413871 (and tp!2096057 tp!2096059))))

(declare-fun b!7373032 () Bool)

(declare-fun tp!2096060 () Bool)

(declare-fun tp!2096058 () Bool)

(assert (=> b!7373032 (= e!4413871 (and tp!2096060 tp!2096058))))

(declare-fun b!7373031 () Bool)

(assert (=> b!7373031 (= e!4413871 tp_is_empty!48817)))

(declare-fun b!7373033 () Bool)

(declare-fun tp!2096061 () Bool)

(assert (=> b!7373033 (= e!4413871 tp!2096061)))

(assert (=> b!7372771 (= tp!2096012 e!4413871)))

(assert (= (and b!7372771 (is-ElementMatch!19286 (regTwo!39085 r1!2370))) b!7373031))

(assert (= (and b!7372771 (is-Concat!28131 (regTwo!39085 r1!2370))) b!7373032))

(assert (= (and b!7372771 (is-Star!19286 (regTwo!39085 r1!2370))) b!7373033))

(assert (= (and b!7372771 (is-Union!19286 (regTwo!39085 r1!2370))) b!7373034))

(declare-fun b!7373041 () Bool)

(declare-fun e!4413874 () Bool)

(declare-fun tp!2096066 () Bool)

(declare-fun tp!2096067 () Bool)

(assert (=> b!7373041 (= e!4413874 (and tp!2096066 tp!2096067))))

(assert (=> b!7372775 (= tp!2096013 e!4413874)))

(assert (= (and b!7372775 (is-Cons!71658 (exprs!8726 ct1!282))) b!7373041))

(declare-fun b!7373047 () Bool)

(declare-fun e!4413877 () Bool)

(declare-fun tp!2096068 () Bool)

(declare-fun tp!2096070 () Bool)

(assert (=> b!7373047 (= e!4413877 (and tp!2096068 tp!2096070))))

(declare-fun b!7373045 () Bool)

(declare-fun tp!2096071 () Bool)

(declare-fun tp!2096069 () Bool)

(assert (=> b!7373045 (= e!4413877 (and tp!2096071 tp!2096069))))

(declare-fun b!7373044 () Bool)

(assert (=> b!7373044 (= e!4413877 tp_is_empty!48817)))

(declare-fun b!7373046 () Bool)

(declare-fun tp!2096072 () Bool)

(assert (=> b!7373046 (= e!4413877 tp!2096072)))

(assert (=> b!7372780 (= tp!2096010 e!4413877)))

(assert (= (and b!7372780 (is-ElementMatch!19286 (reg!19615 r1!2370))) b!7373044))

(assert (= (and b!7372780 (is-Concat!28131 (reg!19615 r1!2370))) b!7373045))

(assert (= (and b!7372780 (is-Star!19286 (reg!19615 r1!2370))) b!7373046))

(assert (= (and b!7372780 (is-Union!19286 (reg!19615 r1!2370))) b!7373047))

(declare-fun b!7373048 () Bool)

(declare-fun e!4413878 () Bool)

(declare-fun tp!2096073 () Bool)

(declare-fun tp!2096074 () Bool)

(assert (=> b!7373048 (= e!4413878 (and tp!2096073 tp!2096074))))

(assert (=> b!7372779 (= tp!2096016 e!4413878)))

(assert (= (and b!7372779 (is-Cons!71658 (exprs!8726 cWitness!61))) b!7373048))

(declare-fun b!7373052 () Bool)

(declare-fun e!4413879 () Bool)

(declare-fun tp!2096075 () Bool)

(declare-fun tp!2096077 () Bool)

(assert (=> b!7373052 (= e!4413879 (and tp!2096075 tp!2096077))))

(declare-fun b!7373050 () Bool)

(declare-fun tp!2096078 () Bool)

(declare-fun tp!2096076 () Bool)

(assert (=> b!7373050 (= e!4413879 (and tp!2096078 tp!2096076))))

(declare-fun b!7373049 () Bool)

(assert (=> b!7373049 (= e!4413879 tp_is_empty!48817)))

(declare-fun b!7373051 () Bool)

(declare-fun tp!2096079 () Bool)

(assert (=> b!7373051 (= e!4413879 tp!2096079)))

(assert (=> b!7372774 (= tp!2096014 e!4413879)))

(assert (= (and b!7372774 (is-ElementMatch!19286 (regOne!39084 r1!2370))) b!7373049))

(assert (= (and b!7372774 (is-Concat!28131 (regOne!39084 r1!2370))) b!7373050))

(assert (= (and b!7372774 (is-Star!19286 (regOne!39084 r1!2370))) b!7373051))

(assert (= (and b!7372774 (is-Union!19286 (regOne!39084 r1!2370))) b!7373052))

(declare-fun b!7373056 () Bool)

(declare-fun e!4413880 () Bool)

(declare-fun tp!2096080 () Bool)

(declare-fun tp!2096082 () Bool)

(assert (=> b!7373056 (= e!4413880 (and tp!2096080 tp!2096082))))

(declare-fun b!7373054 () Bool)

(declare-fun tp!2096083 () Bool)

(declare-fun tp!2096081 () Bool)

(assert (=> b!7373054 (= e!4413880 (and tp!2096083 tp!2096081))))

(declare-fun b!7373053 () Bool)

(assert (=> b!7373053 (= e!4413880 tp_is_empty!48817)))

(declare-fun b!7373055 () Bool)

(declare-fun tp!2096084 () Bool)

(assert (=> b!7373055 (= e!4413880 tp!2096084)))

(assert (=> b!7372774 (= tp!2096015 e!4413880)))

(assert (= (and b!7372774 (is-ElementMatch!19286 (regTwo!39084 r1!2370))) b!7373053))

(assert (= (and b!7372774 (is-Concat!28131 (regTwo!39084 r1!2370))) b!7373054))

(assert (= (and b!7372774 (is-Star!19286 (regTwo!39084 r1!2370))) b!7373055))

(assert (= (and b!7372774 (is-Union!19286 (regTwo!39084 r1!2370))) b!7373056))

(declare-fun b!7373057 () Bool)

(declare-fun e!4413881 () Bool)

(declare-fun tp!2096085 () Bool)

(declare-fun tp!2096086 () Bool)

(assert (=> b!7373057 (= e!4413881 (and tp!2096085 tp!2096086))))

(assert (=> b!7372778 (= tp!2096017 e!4413881)))

(assert (= (and b!7372778 (is-Cons!71658 (exprs!8726 ct2!378))) b!7373057))

(push 1)

(assert (not bm!677433))

(assert (not d!2284110))

(assert (not bm!677416))

(assert (not b!7373034))

(assert (not b!7373030))

(assert (not bm!677413))

(assert (not b!7373010))

(assert (not bm!677438))

(assert (not b!7373045))

(assert (not bm!677456))

(assert (not bm!677449))

(assert (not b!7372960))

(assert (not b!7372984))

(assert (not b!7373046))

(assert (not d!2284100))

(assert (not b!7372898))

(assert (not d!2284088))

(assert (not d!2284102))

(assert (not b!7373054))

(assert (not bm!677452))

(assert (not b!7373055))

(assert (not b!7372983))

(assert tp_is_empty!48817)

(assert (not d!2284112))

(assert (not bm!677467))

(assert (not b!7372877))

(assert (not bm!677432))

(assert (not b!7372971))

(assert (not b!7373048))

(assert (not b!7373047))

(assert (not b!7373028))

(assert (not b!7372897))

(assert (not bm!677441))

(assert (not b!7373056))

(assert (not d!2284086))

(assert (not bm!677442))

(assert (not b!7372942))

(assert (not b!7373032))

(assert (not b!7372949))

(assert (not b!7372997))

(assert (not bm!677470))

(assert (not bm!677469))

(assert (not d!2284080))

(assert (not b!7373041))

(assert (not bm!677446))

(assert (not bm!677468))

(assert (not b!7373050))

(assert (not d!2284114))

(assert (not d!2284084))

(assert (not bm!677417))

(assert (not b!7373052))

(assert (not bm!677450))

(assert (not d!2284116))

(assert (not b!7373051))

(assert (not b!7373057))

(assert (not b!7373029))

(assert (not bm!677455))

(assert (not b!7373033))

(assert (not bm!677464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

