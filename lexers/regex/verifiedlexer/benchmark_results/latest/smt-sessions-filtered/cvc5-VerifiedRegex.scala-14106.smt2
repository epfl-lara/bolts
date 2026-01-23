; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742520 () Bool)

(assert start!742520)

(declare-fun b!7838988 () Bool)

(declare-fun e!4635065 () Bool)

(declare-fun tp_is_empty!52367 () Bool)

(declare-fun tp!2319587 () Bool)

(assert (=> b!7838988 (= e!4635065 (and tp_is_empty!52367 tp!2319587))))

(declare-fun b!7838989 () Bool)

(declare-fun e!4635064 () Bool)

(declare-fun tp!2319592 () Bool)

(declare-fun tp!2319590 () Bool)

(assert (=> b!7838989 (= e!4635064 (and tp!2319592 tp!2319590))))

(declare-fun res!3117806 () Bool)

(declare-fun e!4635062 () Bool)

(assert (=> start!742520 (=> (not res!3117806) (not e!4635062))))

(declare-datatypes ((C!42338 0))(
  ( (C!42339 (val!31609 Int)) )
))
(declare-datatypes ((Regex!21006 0))(
  ( (ElementMatch!21006 (c!1441387 C!42338)) (Concat!29851 (regOne!42524 Regex!21006) (regTwo!42524 Regex!21006)) (EmptyExpr!21006) (Star!21006 (reg!21335 Regex!21006)) (EmptyLang!21006) (Union!21006 (regOne!42525 Regex!21006) (regTwo!42525 Regex!21006)) )
))
(declare-fun r1!3326 () Regex!21006)

(declare-fun validRegex!11420 (Regex!21006) Bool)

(assert (=> start!742520 (= res!3117806 (validRegex!11420 r1!3326))))

(assert (=> start!742520 e!4635062))

(assert (=> start!742520 e!4635065))

(declare-fun e!4635063 () Bool)

(assert (=> start!742520 e!4635063))

(declare-fun e!4635060 () Bool)

(assert (=> start!742520 e!4635060))

(assert (=> start!742520 e!4635064))

(declare-fun e!4635066 () Bool)

(assert (=> start!742520 e!4635066))

(declare-fun b!7838990 () Bool)

(assert (=> b!7838990 (= e!4635062 false)))

(declare-datatypes ((List!73843 0))(
  ( (Nil!73719) (Cons!73719 (h!80167 C!42338) (t!388578 List!73843)) )
))
(declare-fun lt!2678277 () List!73843)

(declare-fun s1!2717 () List!73843)

(declare-fun s2!2463 () List!73843)

(declare-fun ++!18040 (List!73843 List!73843) List!73843)

(assert (=> b!7838990 (= lt!2678277 (++!18040 s1!2717 s2!2463))))

(declare-fun b!7838991 () Bool)

(declare-fun tp!2319597 () Bool)

(assert (=> b!7838991 (= e!4635066 (and tp_is_empty!52367 tp!2319597))))

(declare-fun b!7838992 () Bool)

(declare-fun tp!2319593 () Bool)

(assert (=> b!7838992 (= e!4635063 tp!2319593)))

(declare-fun b!7838993 () Bool)

(declare-fun res!3117804 () Bool)

(assert (=> b!7838993 (=> (not res!3117804) (not e!4635062))))

(assert (=> b!7838993 (= res!3117804 (not (is-Nil!73719 s2!2463)))))

(declare-fun b!7838994 () Bool)

(declare-fun e!4635061 () Bool)

(declare-fun r2!3226 () Regex!21006)

(declare-fun matchR!10462 (Regex!21006 List!73843) Bool)

(assert (=> b!7838994 (= e!4635061 (not (matchR!10462 r2!3226 s2!2463)))))

(declare-fun b!7838995 () Bool)

(declare-fun res!3117802 () Bool)

(assert (=> b!7838995 (=> (not res!3117802) (not e!4635062))))

(declare-fun s!10212 () List!73843)

(assert (=> b!7838995 (= res!3117802 (= (++!18040 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838996 () Bool)

(declare-fun tp!2319589 () Bool)

(assert (=> b!7838996 (= e!4635064 tp!2319589)))

(declare-fun b!7838997 () Bool)

(assert (=> b!7838997 (= e!4635063 tp_is_empty!52367)))

(declare-fun b!7838998 () Bool)

(declare-fun res!3117801 () Bool)

(assert (=> b!7838998 (=> (not res!3117801) (not e!4635062))))

(assert (=> b!7838998 (= res!3117801 e!4635061)))

(declare-fun res!3117805 () Bool)

(assert (=> b!7838998 (=> res!3117805 e!4635061)))

(assert (=> b!7838998 (= res!3117805 (not (matchR!10462 r1!3326 s1!2717)))))

(declare-fun b!7838999 () Bool)

(declare-fun tp!2319596 () Bool)

(declare-fun tp!2319586 () Bool)

(assert (=> b!7838999 (= e!4635063 (and tp!2319596 tp!2319586))))

(declare-fun b!7839000 () Bool)

(declare-fun tp!2319594 () Bool)

(declare-fun tp!2319591 () Bool)

(assert (=> b!7839000 (= e!4635064 (and tp!2319594 tp!2319591))))

(declare-fun b!7839001 () Bool)

(declare-fun tp!2319588 () Bool)

(declare-fun tp!2319598 () Bool)

(assert (=> b!7839001 (= e!4635063 (and tp!2319588 tp!2319598))))

(declare-fun b!7839002 () Bool)

(declare-fun res!3117803 () Bool)

(assert (=> b!7839002 (=> (not res!3117803) (not e!4635062))))

(assert (=> b!7839002 (= res!3117803 (validRegex!11420 r2!3226))))

(declare-fun b!7839003 () Bool)

(declare-fun tp!2319595 () Bool)

(assert (=> b!7839003 (= e!4635060 (and tp_is_empty!52367 tp!2319595))))

(declare-fun b!7839004 () Bool)

(assert (=> b!7839004 (= e!4635064 tp_is_empty!52367)))

(assert (= (and start!742520 res!3117806) b!7839002))

(assert (= (and b!7839002 res!3117803) b!7838995))

(assert (= (and b!7838995 res!3117802) b!7838998))

(assert (= (and b!7838998 (not res!3117805)) b!7838994))

(assert (= (and b!7838998 res!3117801) b!7838993))

(assert (= (and b!7838993 res!3117804) b!7838990))

(assert (= (and start!742520 (is-Cons!73719 s1!2717)) b!7838988))

(assert (= (and start!742520 (is-ElementMatch!21006 r1!3326)) b!7838997))

(assert (= (and start!742520 (is-Concat!29851 r1!3326)) b!7838999))

(assert (= (and start!742520 (is-Star!21006 r1!3326)) b!7838992))

(assert (= (and start!742520 (is-Union!21006 r1!3326)) b!7839001))

(assert (= (and start!742520 (is-Cons!73719 s!10212)) b!7839003))

(assert (= (and start!742520 (is-ElementMatch!21006 r2!3226)) b!7839004))

(assert (= (and start!742520 (is-Concat!29851 r2!3226)) b!7839000))

(assert (= (and start!742520 (is-Star!21006 r2!3226)) b!7838996))

(assert (= (and start!742520 (is-Union!21006 r2!3226)) b!7838989))

(assert (= (and start!742520 (is-Cons!73719 s2!2463)) b!7838991))

(declare-fun m!8252786 () Bool)

(assert (=> b!7838994 m!8252786))

(declare-fun m!8252788 () Bool)

(assert (=> b!7838998 m!8252788))

(declare-fun m!8252790 () Bool)

(assert (=> b!7839002 m!8252790))

(declare-fun m!8252792 () Bool)

(assert (=> b!7838990 m!8252792))

(assert (=> b!7838995 m!8252792))

(declare-fun m!8252794 () Bool)

(assert (=> start!742520 m!8252794))

(push 1)

(assert (not start!742520))

(assert (not b!7839002))

(assert (not b!7839000))

(assert (not b!7838988))

(assert (not b!7838994))

(assert (not b!7838990))

(assert tp_is_empty!52367)

(assert (not b!7838991))

(assert (not b!7838995))

(assert (not b!7838989))

(assert (not b!7838999))

(assert (not b!7838998))

(assert (not b!7839001))

(assert (not b!7839003))

(assert (not b!7838996))

(assert (not b!7838992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

