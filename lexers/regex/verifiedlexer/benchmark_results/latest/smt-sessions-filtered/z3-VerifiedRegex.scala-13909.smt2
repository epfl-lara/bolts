; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!738920 () Bool)

(assert start!738920)

(declare-fun b!7750883 () Bool)

(declare-fun e!4594891 () Bool)

(declare-fun tp!2274060 () Bool)

(declare-fun tp!2274063 () Bool)

(assert (=> b!7750883 (= e!4594891 (and tp!2274060 tp!2274063))))

(declare-fun b!7750884 () Bool)

(declare-fun res!3090640 () Bool)

(declare-fun e!4594887 () Bool)

(assert (=> b!7750884 (=> (not res!3090640) (not e!4594887))))

(declare-datatypes ((C!41552 0))(
  ( (C!41553 (val!31216 Int)) )
))
(declare-datatypes ((Regex!20613 0))(
  ( (ElementMatch!20613 (c!1429514 C!41552)) (Concat!29458 (regOne!41738 Regex!20613) (regTwo!41738 Regex!20613)) (EmptyExpr!20613) (Star!20613 (reg!20942 Regex!20613)) (EmptyLang!20613) (Union!20613 (regOne!41739 Regex!20613) (regTwo!41739 Regex!20613)) )
))
(declare-fun lt!2669413 () Regex!20613)

(declare-datatypes ((List!73458 0))(
  ( (Nil!73334) (Cons!73334 (h!79782 C!41552) (t!388193 List!73458)) )
))
(declare-fun s2!3963 () List!73458)

(declare-fun matchR!10103 (Regex!20613 List!73458) Bool)

(assert (=> b!7750884 (= res!3090640 (matchR!10103 lt!2669413 s2!3963))))

(declare-fun b!7750885 () Bool)

(declare-fun e!4594890 () Bool)

(declare-fun tp_is_empty!51581 () Bool)

(declare-fun tp!2274059 () Bool)

(assert (=> b!7750885 (= e!4594890 (and tp_is_empty!51581 tp!2274059))))

(declare-fun b!7750886 () Bool)

(declare-fun res!3090638 () Bool)

(assert (=> b!7750886 (=> (not res!3090638) (not e!4594887))))

(declare-fun s1!4391 () List!73458)

(get-info :version)

(assert (=> b!7750886 (= res!3090638 ((_ is Cons!73334) s1!4391))))

(declare-fun b!7750887 () Bool)

(declare-fun e!4594888 () Bool)

(declare-fun tp!2274061 () Bool)

(assert (=> b!7750887 (= e!4594888 (and tp_is_empty!51581 tp!2274061))))

(declare-fun res!3090639 () Bool)

(assert (=> start!738920 (=> (not res!3090639) (not e!4594887))))

(declare-fun validRegex!11031 (Regex!20613) Bool)

(assert (=> start!738920 (= res!3090639 (validRegex!11031 lt!2669413))))

(declare-fun r!25892 () Regex!20613)

(assert (=> start!738920 (= lt!2669413 (Star!20613 r!25892))))

(assert (=> start!738920 e!4594887))

(assert (=> start!738920 e!4594891))

(assert (=> start!738920 e!4594888))

(assert (=> start!738920 e!4594890))

(declare-fun b!7750888 () Bool)

(declare-fun tp!2274058 () Bool)

(declare-fun tp!2274057 () Bool)

(assert (=> b!7750888 (= e!4594891 (and tp!2274058 tp!2274057))))

(declare-fun b!7750889 () Bool)

(declare-fun e!4594889 () Bool)

(assert (=> b!7750889 (= e!4594889 (not true))))

(declare-fun lt!2669410 () List!73458)

(declare-fun ++!17800 (List!73458 List!73458) List!73458)

(assert (=> b!7750889 (= lt!2669410 (++!17800 s1!4391 s2!3963))))

(declare-fun lt!2669411 () Regex!20613)

(assert (=> b!7750889 (matchR!10103 lt!2669411 (++!17800 (t!388193 s1!4391) s2!3963))))

(declare-fun lt!2669414 () Regex!20613)

(declare-datatypes ((Unit!168326 0))(
  ( (Unit!168327) )
))
(declare-fun lt!2669412 () Unit!168326)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!412 (Regex!20613 Regex!20613 List!73458 List!73458) Unit!168326)

(assert (=> b!7750889 (= lt!2669412 (lemmaTwoRegexMatchThenConcatMatchesConcatString!412 lt!2669414 lt!2669413 (t!388193 s1!4391) s2!3963))))

(declare-fun b!7750890 () Bool)

(assert (=> b!7750890 (= e!4594887 e!4594889)))

(declare-fun res!3090636 () Bool)

(assert (=> b!7750890 (=> (not res!3090636) (not e!4594889))))

(declare-fun derivativeStep!6036 (Regex!20613 C!41552) Regex!20613)

(assert (=> b!7750890 (= res!3090636 (= (derivativeStep!6036 lt!2669413 (h!79782 s1!4391)) lt!2669411))))

(assert (=> b!7750890 (= lt!2669411 (Concat!29458 lt!2669414 lt!2669413))))

(assert (=> b!7750890 (= lt!2669414 (derivativeStep!6036 r!25892 (h!79782 s1!4391)))))

(declare-fun b!7750891 () Bool)

(declare-fun tp!2274062 () Bool)

(assert (=> b!7750891 (= e!4594891 tp!2274062)))

(declare-fun b!7750892 () Bool)

(declare-fun res!3090635 () Bool)

(assert (=> b!7750892 (=> (not res!3090635) (not e!4594889))))

(assert (=> b!7750892 (= res!3090635 (validRegex!11031 lt!2669414))))

(declare-fun b!7750893 () Bool)

(assert (=> b!7750893 (= e!4594891 tp_is_empty!51581)))

(declare-fun b!7750894 () Bool)

(declare-fun res!3090634 () Bool)

(assert (=> b!7750894 (=> (not res!3090634) (not e!4594889))))

(assert (=> b!7750894 (= res!3090634 (matchR!10103 lt!2669414 (t!388193 s1!4391)))))

(declare-fun b!7750895 () Bool)

(declare-fun res!3090637 () Bool)

(assert (=> b!7750895 (=> (not res!3090637) (not e!4594887))))

(assert (=> b!7750895 (= res!3090637 (matchR!10103 r!25892 s1!4391))))

(assert (= (and start!738920 res!3090639) b!7750895))

(assert (= (and b!7750895 res!3090637) b!7750884))

(assert (= (and b!7750884 res!3090640) b!7750886))

(assert (= (and b!7750886 res!3090638) b!7750890))

(assert (= (and b!7750890 res!3090636) b!7750892))

(assert (= (and b!7750892 res!3090635) b!7750894))

(assert (= (and b!7750894 res!3090634) b!7750889))

(assert (= (and start!738920 ((_ is ElementMatch!20613) r!25892)) b!7750893))

(assert (= (and start!738920 ((_ is Concat!29458) r!25892)) b!7750883))

(assert (= (and start!738920 ((_ is Star!20613) r!25892)) b!7750891))

(assert (= (and start!738920 ((_ is Union!20613) r!25892)) b!7750888))

(assert (= (and start!738920 ((_ is Cons!73334) s1!4391)) b!7750887))

(assert (= (and start!738920 ((_ is Cons!73334) s2!3963)) b!7750885))

(declare-fun m!8216624 () Bool)

(assert (=> b!7750889 m!8216624))

(declare-fun m!8216626 () Bool)

(assert (=> b!7750889 m!8216626))

(assert (=> b!7750889 m!8216626))

(declare-fun m!8216628 () Bool)

(assert (=> b!7750889 m!8216628))

(declare-fun m!8216630 () Bool)

(assert (=> b!7750889 m!8216630))

(declare-fun m!8216632 () Bool)

(assert (=> b!7750894 m!8216632))

(declare-fun m!8216634 () Bool)

(assert (=> b!7750892 m!8216634))

(declare-fun m!8216636 () Bool)

(assert (=> b!7750890 m!8216636))

(declare-fun m!8216638 () Bool)

(assert (=> b!7750890 m!8216638))

(declare-fun m!8216640 () Bool)

(assert (=> b!7750884 m!8216640))

(declare-fun m!8216642 () Bool)

(assert (=> start!738920 m!8216642))

(declare-fun m!8216644 () Bool)

(assert (=> b!7750895 m!8216644))

(check-sat (not b!7750883) (not b!7750894) tp_is_empty!51581 (not b!7750884) (not b!7750890) (not b!7750888) (not b!7750891) (not start!738920) (not b!7750889) (not b!7750892) (not b!7750885) (not b!7750895) (not b!7750887))
(check-sat)
