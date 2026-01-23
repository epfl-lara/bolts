; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708016 () Bool)

(assert start!708016)

(declare-fun res!2944709 () Bool)

(declare-fun e!4355450 () Bool)

(assert (=> start!708016 (=> (not res!2944709) (not e!4355450))))

(declare-datatypes ((C!37754 0))(
  ( (C!37755 (val!28825 Int)) )
))
(declare-datatypes ((Regex!18740 0))(
  ( (ElementMatch!18740 (c!1351204 C!37754)) (Concat!27585 (regOne!37992 Regex!18740) (regTwo!37992 Regex!18740)) (EmptyExpr!18740) (Star!18740 (reg!19069 Regex!18740)) (EmptyLang!18740) (Union!18740 (regOne!37993 Regex!18740) (regTwo!37993 Regex!18740)) )
))
(declare-datatypes ((List!70795 0))(
  ( (Nil!70671) (Cons!70671 (h!77119 Regex!18740) (t!384861 List!70795)) )
))
(declare-datatypes ((Context!15360 0))(
  ( (Context!15361 (exprs!8180 List!70795)) )
))
(declare-fun ct2!346 () Context!15360)

(declare-datatypes ((List!70796 0))(
  ( (Nil!70672) (Cons!70672 (h!77120 C!37754) (t!384862 List!70796)) )
))
(declare-fun s!7854 () List!70796)

(declare-fun matchZipper!3644 ((Set Context!15360) List!70796) Bool)

(assert (=> start!708016 (= res!2944709 (matchZipper!3644 (set.insert ct2!346 (as set.empty (Set Context!15360))) s!7854))))

(assert (=> start!708016 e!4355450))

(declare-fun e!4355448 () Bool)

(declare-fun inv!89861 (Context!15360) Bool)

(assert (=> start!708016 (and (inv!89861 ct2!346) e!4355448)))

(declare-fun e!4355451 () Bool)

(assert (=> start!708016 e!4355451))

(declare-fun ct1!250 () Context!15360)

(declare-fun e!4355449 () Bool)

(assert (=> start!708016 (and (inv!89861 ct1!250) e!4355449)))

(declare-fun b!7263020 () Bool)

(declare-fun res!2944710 () Bool)

(assert (=> b!7263020 (=> (not res!2944710) (not e!4355450))))

(declare-fun nullableContext!230 (Context!15360) Bool)

(assert (=> b!7263020 (= res!2944710 (nullableContext!230 ct1!250))))

(declare-fun b!7263021 () Bool)

(declare-fun tp_is_empty!46945 () Bool)

(declare-fun tp!2039837 () Bool)

(assert (=> b!7263021 (= e!4355451 (and tp_is_empty!46945 tp!2039837))))

(declare-fun b!7263022 () Bool)

(declare-fun tp!2039836 () Bool)

(assert (=> b!7263022 (= e!4355449 tp!2039836)))

(declare-fun b!7263023 () Bool)

(assert (=> b!7263023 (= e!4355450 false)))

(declare-fun lt!2591426 () (Set Context!15360))

(declare-fun derivationStepZipperUp!2510 (Context!15360 C!37754) (Set Context!15360))

(declare-fun ++!16640 (List!70795 List!70795) List!70795)

(assert (=> b!7263023 (= lt!2591426 (derivationStepZipperUp!2510 (Context!15361 (++!16640 (exprs!8180 ct1!250) (exprs!8180 ct2!346))) (h!77120 s!7854)))))

(declare-fun lambda!446910 () Int)

(declare-datatypes ((Unit!164098 0))(
  ( (Unit!164099) )
))
(declare-fun lt!2591427 () Unit!164098)

(declare-fun lemmaConcatPreservesForall!1497 (List!70795 List!70795 Int) Unit!164098)

(assert (=> b!7263023 (= lt!2591427 (lemmaConcatPreservesForall!1497 (exprs!8180 ct1!250) (exprs!8180 ct2!346) lambda!446910))))

(declare-fun b!7263024 () Bool)

(declare-fun res!2944708 () Bool)

(assert (=> b!7263024 (=> (not res!2944708) (not e!4355450))))

(assert (=> b!7263024 (= res!2944708 (is-Cons!70672 s!7854))))

(declare-fun b!7263025 () Bool)

(declare-fun tp!2039835 () Bool)

(assert (=> b!7263025 (= e!4355448 tp!2039835)))

(assert (= (and start!708016 res!2944709) b!7263020))

(assert (= (and b!7263020 res!2944710) b!7263024))

(assert (= (and b!7263024 res!2944708) b!7263023))

(assert (= start!708016 b!7263025))

(assert (= (and start!708016 (is-Cons!70672 s!7854)) b!7263021))

(assert (= start!708016 b!7263022))

(declare-fun m!7947570 () Bool)

(assert (=> start!708016 m!7947570))

(assert (=> start!708016 m!7947570))

(declare-fun m!7947572 () Bool)

(assert (=> start!708016 m!7947572))

(declare-fun m!7947574 () Bool)

(assert (=> start!708016 m!7947574))

(declare-fun m!7947576 () Bool)

(assert (=> start!708016 m!7947576))

(declare-fun m!7947578 () Bool)

(assert (=> b!7263020 m!7947578))

(declare-fun m!7947580 () Bool)

(assert (=> b!7263023 m!7947580))

(declare-fun m!7947582 () Bool)

(assert (=> b!7263023 m!7947582))

(declare-fun m!7947584 () Bool)

(assert (=> b!7263023 m!7947584))

(push 1)

(assert (not b!7263025))

(assert (not b!7263023))

(assert (not start!708016))

(assert (not b!7263021))

(assert (not b!7263020))

(assert (not b!7263022))

(assert tp_is_empty!46945)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

