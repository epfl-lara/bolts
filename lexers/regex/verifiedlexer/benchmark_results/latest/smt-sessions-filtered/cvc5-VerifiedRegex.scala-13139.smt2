; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717842 () Bool)

(assert start!717842)

(declare-fun b!7350892 () Bool)

(declare-fun e!4401414 () Bool)

(declare-fun tp!2087861 () Bool)

(declare-fun tp!2087858 () Bool)

(assert (=> b!7350892 (= e!4401414 (and tp!2087861 tp!2087858))))

(declare-fun b!7350893 () Bool)

(declare-fun tp!2087854 () Bool)

(declare-fun tp!2087859 () Bool)

(assert (=> b!7350893 (= e!4401414 (and tp!2087854 tp!2087859))))

(declare-fun b!7350894 () Bool)

(declare-fun e!4401412 () Bool)

(declare-datatypes ((C!38606 0))(
  ( (C!38607 (val!29663 Int)) )
))
(declare-datatypes ((Regex!19166 0))(
  ( (ElementMatch!19166 (c!1365686 C!38606)) (Concat!28011 (regOne!38844 Regex!19166) (regTwo!38844 Regex!19166)) (EmptyExpr!19166) (Star!19166 (reg!19495 Regex!19166)) (EmptyLang!19166) (Union!19166 (regOne!38845 Regex!19166) (regTwo!38845 Regex!19166)) )
))
(declare-fun r1!2370 () Regex!19166)

(declare-fun nullable!8257 (Regex!19166) Bool)

(assert (=> b!7350894 (= e!4401412 (not (nullable!8257 (regOne!38844 r1!2370))))))

(declare-fun b!7350895 () Bool)

(declare-fun e!4401415 () Bool)

(declare-fun tp!2087860 () Bool)

(assert (=> b!7350895 (= e!4401415 tp!2087860)))

(declare-fun b!7350897 () Bool)

(declare-fun e!4401418 () Bool)

(declare-fun tp!2087856 () Bool)

(assert (=> b!7350897 (= e!4401418 tp!2087856)))

(declare-fun b!7350898 () Bool)

(declare-fun tp!2087855 () Bool)

(assert (=> b!7350898 (= e!4401414 tp!2087855)))

(declare-fun b!7350899 () Bool)

(declare-fun res!2968585 () Bool)

(declare-fun e!4401417 () Bool)

(assert (=> b!7350899 (=> (not res!2968585) (not e!4401417))))

(declare-fun c!10362 () C!38606)

(declare-datatypes ((List!71662 0))(
  ( (Nil!71538) (Cons!71538 (h!77986 Regex!19166) (t!386081 List!71662)) )
))
(declare-datatypes ((Context!16212 0))(
  ( (Context!16213 (exprs!8606 List!71662)) )
))
(declare-fun lt!2612148 () (Set Context!16212))

(declare-fun ct1!282 () Context!16212)

(declare-fun derivationStepZipperDown!2992 (Regex!19166 Context!16212 C!38606) (Set Context!16212))

(declare-fun $colon$colon!3164 (List!71662 Regex!19166) List!71662)

(assert (=> b!7350899 (= res!2968585 (= lt!2612148 (derivationStepZipperDown!2992 (regOne!38844 r1!2370) (Context!16213 ($colon$colon!3164 (exprs!8606 ct1!282) (regTwo!38844 r1!2370))) c!10362)))))

(declare-fun b!7350900 () Bool)

(declare-fun tp_is_empty!48577 () Bool)

(assert (=> b!7350900 (= e!4401414 tp_is_empty!48577)))

(declare-fun b!7350901 () Bool)

(declare-fun e!4401416 () Bool)

(declare-fun e!4401411 () Bool)

(assert (=> b!7350901 (= e!4401416 e!4401411)))

(declare-fun res!2968587 () Bool)

(assert (=> b!7350901 (=> (not res!2968587) (not e!4401411))))

(declare-fun cWitness!61 () Context!16212)

(assert (=> b!7350901 (= res!2968587 (set.member cWitness!61 lt!2612148))))

(assert (=> b!7350901 (= lt!2612148 (derivationStepZipperDown!2992 r1!2370 ct1!282 c!10362))))

(declare-fun b!7350902 () Bool)

(declare-fun res!2968590 () Bool)

(assert (=> b!7350902 (=> (not res!2968590) (not e!4401417))))

(assert (=> b!7350902 (= res!2968590 e!4401412)))

(declare-fun res!2968584 () Bool)

(assert (=> b!7350902 (=> res!2968584 e!4401412)))

(assert (=> b!7350902 (= res!2968584 (not (is-Concat!28011 r1!2370)))))

(declare-fun b!7350903 () Bool)

(declare-fun res!2968589 () Bool)

(assert (=> b!7350903 (=> (not res!2968589) (not e!4401417))))

(declare-fun validRegex!9762 (Regex!19166) Bool)

(assert (=> b!7350903 (= res!2968589 (validRegex!9762 (regTwo!38844 r1!2370)))))

(declare-fun b!7350904 () Bool)

(assert (=> b!7350904 (= e!4401411 e!4401417)))

(declare-fun res!2968586 () Bool)

(assert (=> b!7350904 (=> (not res!2968586) (not e!4401417))))

(assert (=> b!7350904 (= res!2968586 (and (or (not (is-ElementMatch!19166 r1!2370)) (not (= c!10362 (c!1365686 r1!2370)))) (not (is-Union!19166 r1!2370))))))

(declare-fun lt!2612147 () (Set Context!16212))

(declare-fun ct2!378 () Context!16212)

(declare-fun ++!16984 (List!71662 List!71662) List!71662)

(assert (=> b!7350904 (= lt!2612147 (derivationStepZipperDown!2992 r1!2370 (Context!16213 (++!16984 (exprs!8606 ct1!282) (exprs!8606 ct2!378))) c!10362))))

(declare-fun lambda!456540 () Int)

(declare-datatypes ((Unit!165285 0))(
  ( (Unit!165286) )
))
(declare-fun lt!2612146 () Unit!165285)

(declare-fun lemmaConcatPreservesForall!1841 (List!71662 List!71662 Int) Unit!165285)

(assert (=> b!7350904 (= lt!2612146 (lemmaConcatPreservesForall!1841 (exprs!8606 ct1!282) (exprs!8606 ct2!378) lambda!456540))))

(declare-fun b!7350905 () Bool)

(assert (=> b!7350905 (= e!4401417 false)))

(declare-fun b!7350906 () Bool)

(declare-fun res!2968583 () Bool)

(assert (=> b!7350906 (=> (not res!2968583) (not e!4401417))))

(assert (=> b!7350906 (= res!2968583 (is-Concat!28011 r1!2370))))

(declare-fun b!7350896 () Bool)

(declare-fun e!4401413 () Bool)

(declare-fun tp!2087857 () Bool)

(assert (=> b!7350896 (= e!4401413 tp!2087857)))

(declare-fun res!2968588 () Bool)

(assert (=> start!717842 (=> (not res!2968588) (not e!4401416))))

(assert (=> start!717842 (= res!2968588 (validRegex!9762 r1!2370))))

(assert (=> start!717842 e!4401416))

(assert (=> start!717842 tp_is_empty!48577))

(declare-fun inv!91256 (Context!16212) Bool)

(assert (=> start!717842 (and (inv!91256 cWitness!61) e!4401413)))

(assert (=> start!717842 (and (inv!91256 ct1!282) e!4401415)))

(assert (=> start!717842 e!4401414))

(assert (=> start!717842 (and (inv!91256 ct2!378) e!4401418)))

(assert (= (and start!717842 res!2968588) b!7350901))

(assert (= (and b!7350901 res!2968587) b!7350904))

(assert (= (and b!7350904 res!2968586) b!7350902))

(assert (= (and b!7350902 (not res!2968584)) b!7350894))

(assert (= (and b!7350902 res!2968590) b!7350906))

(assert (= (and b!7350906 res!2968583) b!7350903))

(assert (= (and b!7350903 res!2968589) b!7350899))

(assert (= (and b!7350899 res!2968585) b!7350905))

(assert (= start!717842 b!7350896))

(assert (= start!717842 b!7350895))

(assert (= (and start!717842 (is-ElementMatch!19166 r1!2370)) b!7350900))

(assert (= (and start!717842 (is-Concat!28011 r1!2370)) b!7350893))

(assert (= (and start!717842 (is-Star!19166 r1!2370)) b!7350898))

(assert (= (and start!717842 (is-Union!19166 r1!2370)) b!7350892))

(assert (= start!717842 b!7350897))

(declare-fun m!8011958 () Bool)

(assert (=> b!7350899 m!8011958))

(declare-fun m!8011960 () Bool)

(assert (=> b!7350899 m!8011960))

(declare-fun m!8011962 () Bool)

(assert (=> start!717842 m!8011962))

(declare-fun m!8011964 () Bool)

(assert (=> start!717842 m!8011964))

(declare-fun m!8011966 () Bool)

(assert (=> start!717842 m!8011966))

(declare-fun m!8011968 () Bool)

(assert (=> start!717842 m!8011968))

(declare-fun m!8011970 () Bool)

(assert (=> b!7350894 m!8011970))

(declare-fun m!8011972 () Bool)

(assert (=> b!7350903 m!8011972))

(declare-fun m!8011974 () Bool)

(assert (=> b!7350901 m!8011974))

(declare-fun m!8011976 () Bool)

(assert (=> b!7350901 m!8011976))

(declare-fun m!8011978 () Bool)

(assert (=> b!7350904 m!8011978))

(declare-fun m!8011980 () Bool)

(assert (=> b!7350904 m!8011980))

(declare-fun m!8011982 () Bool)

(assert (=> b!7350904 m!8011982))

(push 1)

(assert (not start!717842))

(assert (not b!7350898))

(assert (not b!7350892))

(assert (not b!7350899))

(assert (not b!7350895))

(assert tp_is_empty!48577)

(assert (not b!7350897))

(assert (not b!7350904))

(assert (not b!7350903))

(assert (not b!7350901))

(assert (not b!7350894))

(assert (not b!7350896))

(assert (not b!7350893))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

