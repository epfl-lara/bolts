; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!742496 () Bool)

(assert start!742496)

(declare-fun b!7838372 () Bool)

(declare-fun res!3117584 () Bool)

(declare-fun e!4634801 () Bool)

(assert (=> b!7838372 (=> (not res!3117584) (not e!4634801))))

(declare-datatypes ((C!42314 0))(
  ( (C!42315 (val!31597 Int)) )
))
(declare-datatypes ((Regex!20994 0))(
  ( (ElementMatch!20994 (c!1441375 C!42314)) (Concat!29839 (regOne!42500 Regex!20994) (regTwo!42500 Regex!20994)) (EmptyExpr!20994) (Star!20994 (reg!21323 Regex!20994)) (EmptyLang!20994) (Union!20994 (regOne!42501 Regex!20994) (regTwo!42501 Regex!20994)) )
))
(declare-fun r1!3326 () Regex!20994)

(declare-datatypes ((List!73831 0))(
  ( (Nil!73707) (Cons!73707 (h!80155 C!42314) (t!388566 List!73831)) )
))
(declare-fun s1!2717 () List!73831)

(declare-fun matchR!10450 (Regex!20994 List!73831) Bool)

(assert (=> b!7838372 (= res!3117584 (matchR!10450 r1!3326 s1!2717))))

(declare-fun b!7838373 () Bool)

(declare-fun e!4634800 () Bool)

(declare-fun tp!2319120 () Bool)

(declare-fun tp!2319130 () Bool)

(assert (=> b!7838373 (= e!4634800 (and tp!2319120 tp!2319130))))

(declare-fun b!7838374 () Bool)

(declare-fun e!4634803 () Bool)

(declare-fun tp!2319125 () Bool)

(assert (=> b!7838374 (= e!4634803 tp!2319125)))

(declare-fun b!7838375 () Bool)

(assert (=> b!7838375 (= e!4634801 false)))

(declare-fun lt!2678229 () Bool)

(declare-fun r2!3226 () Regex!20994)

(declare-fun s2!2463 () List!73831)

(assert (=> b!7838375 (= lt!2678229 (matchR!10450 r2!3226 s2!2463))))

(declare-fun b!7838376 () Bool)

(declare-fun res!3117581 () Bool)

(assert (=> b!7838376 (=> (not res!3117581) (not e!4634801))))

(declare-fun validRegex!11408 (Regex!20994) Bool)

(assert (=> b!7838376 (= res!3117581 (validRegex!11408 r2!3226))))

(declare-fun res!3117582 () Bool)

(assert (=> start!742496 (=> (not res!3117582) (not e!4634801))))

(assert (=> start!742496 (= res!3117582 (validRegex!11408 r1!3326))))

(assert (=> start!742496 e!4634801))

(declare-fun e!4634802 () Bool)

(assert (=> start!742496 e!4634802))

(assert (=> start!742496 e!4634803))

(declare-fun e!4634805 () Bool)

(assert (=> start!742496 e!4634805))

(assert (=> start!742496 e!4634800))

(declare-fun e!4634804 () Bool)

(assert (=> start!742496 e!4634804))

(declare-fun b!7838377 () Bool)

(declare-fun tp_is_empty!52343 () Bool)

(declare-fun tp!2319122 () Bool)

(assert (=> b!7838377 (= e!4634805 (and tp_is_empty!52343 tp!2319122))))

(declare-fun b!7838378 () Bool)

(declare-fun tp!2319123 () Bool)

(declare-fun tp!2319124 () Bool)

(assert (=> b!7838378 (= e!4634800 (and tp!2319123 tp!2319124))))

(declare-fun b!7838379 () Bool)

(declare-fun tp!2319126 () Bool)

(assert (=> b!7838379 (= e!4634804 (and tp_is_empty!52343 tp!2319126))))

(declare-fun b!7838380 () Bool)

(declare-fun tp!2319128 () Bool)

(declare-fun tp!2319118 () Bool)

(assert (=> b!7838380 (= e!4634803 (and tp!2319128 tp!2319118))))

(declare-fun b!7838381 () Bool)

(declare-fun tp!2319129 () Bool)

(assert (=> b!7838381 (= e!4634802 (and tp_is_empty!52343 tp!2319129))))

(declare-fun b!7838382 () Bool)

(declare-fun tp!2319127 () Bool)

(declare-fun tp!2319121 () Bool)

(assert (=> b!7838382 (= e!4634803 (and tp!2319127 tp!2319121))))

(declare-fun b!7838383 () Bool)

(declare-fun tp!2319119 () Bool)

(assert (=> b!7838383 (= e!4634800 tp!2319119)))

(declare-fun b!7838384 () Bool)

(assert (=> b!7838384 (= e!4634803 tp_is_empty!52343)))

(declare-fun b!7838385 () Bool)

(declare-fun res!3117583 () Bool)

(assert (=> b!7838385 (=> (not res!3117583) (not e!4634801))))

(declare-fun s!10212 () List!73831)

(declare-fun ++!18028 (List!73831 List!73831) List!73831)

(assert (=> b!7838385 (= res!3117583 (= (++!18028 s1!2717 s2!2463) s!10212))))

(declare-fun b!7838386 () Bool)

(assert (=> b!7838386 (= e!4634800 tp_is_empty!52343)))

(assert (= (and start!742496 res!3117582) b!7838376))

(assert (= (and b!7838376 res!3117581) b!7838385))

(assert (= (and b!7838385 res!3117583) b!7838372))

(assert (= (and b!7838372 res!3117584) b!7838375))

(assert (= (and start!742496 (is-Cons!73707 s1!2717)) b!7838381))

(assert (= (and start!742496 (is-ElementMatch!20994 r1!3326)) b!7838384))

(assert (= (and start!742496 (is-Concat!29839 r1!3326)) b!7838382))

(assert (= (and start!742496 (is-Star!20994 r1!3326)) b!7838374))

(assert (= (and start!742496 (is-Union!20994 r1!3326)) b!7838380))

(assert (= (and start!742496 (is-Cons!73707 s!10212)) b!7838377))

(assert (= (and start!742496 (is-ElementMatch!20994 r2!3226)) b!7838386))

(assert (= (and start!742496 (is-Concat!29839 r2!3226)) b!7838373))

(assert (= (and start!742496 (is-Star!20994 r2!3226)) b!7838383))

(assert (= (and start!742496 (is-Union!20994 r2!3226)) b!7838378))

(assert (= (and start!742496 (is-Cons!73707 s2!2463)) b!7838379))

(declare-fun m!8252618 () Bool)

(assert (=> b!7838372 m!8252618))

(declare-fun m!8252620 () Bool)

(assert (=> b!7838376 m!8252620))

(declare-fun m!8252622 () Bool)

(assert (=> b!7838385 m!8252622))

(declare-fun m!8252624 () Bool)

(assert (=> b!7838375 m!8252624))

(declare-fun m!8252626 () Bool)

(assert (=> start!742496 m!8252626))

(push 1)

(assert (not b!7838382))

(assert (not b!7838385))

(assert (not start!742496))

(assert (not b!7838378))

(assert tp_is_empty!52343)

(assert (not b!7838379))

(assert (not b!7838376))

(assert (not b!7838372))

(assert (not b!7838381))

(assert (not b!7838375))

(assert (not b!7838377))

(assert (not b!7838380))

(assert (not b!7838374))

(assert (not b!7838383))

(assert (not b!7838373))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

