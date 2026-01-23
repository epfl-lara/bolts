; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733190 () Bool)

(assert start!733190)

(declare-fun b!7606844 () Bool)

(assert (=> b!7606844 true))

(assert (=> b!7606844 true))

(assert (=> b!7606844 true))

(declare-fun bs!1942755 () Bool)

(declare-fun b!7606848 () Bool)

(assert (= bs!1942755 (and b!7606848 b!7606844)))

(declare-fun lambda!468099 () Int)

(declare-fun lambda!468098 () Int)

(assert (=> bs!1942755 (not (= lambda!468099 lambda!468098))))

(assert (=> b!7606848 true))

(assert (=> b!7606848 true))

(assert (=> b!7606848 true))

(declare-fun res!3045902 () Bool)

(declare-fun e!4524706 () Bool)

(assert (=> b!7606844 (=> (not res!3045902) (not e!4524706))))

(declare-fun Exists!4418 (Int) Bool)

(assert (=> b!7606844 (= res!3045902 (not (Exists!4418 lambda!468098)))))

(declare-fun b!7606845 () Bool)

(declare-fun e!4524704 () Bool)

(declare-fun tp!2218580 () Bool)

(declare-fun tp!2218576 () Bool)

(assert (=> b!7606845 (= e!4524704 (and tp!2218580 tp!2218576))))

(declare-fun b!7606846 () Bool)

(declare-fun e!4524705 () Bool)

(declare-fun tp!2218585 () Bool)

(declare-fun tp!2218579 () Bool)

(assert (=> b!7606846 (= e!4524705 (and tp!2218585 tp!2218579))))

(declare-fun b!7606847 () Bool)

(declare-fun e!4524707 () Bool)

(declare-fun tp_is_empty!50735 () Bool)

(declare-fun tp!2218582 () Bool)

(assert (=> b!7606847 (= e!4524707 (and tp_is_empty!50735 tp!2218582))))

(declare-fun res!3045903 () Bool)

(assert (=> b!7606848 (=> (not res!3045903) (not e!4524706))))

(assert (=> b!7606848 (= res!3045903 (not (Exists!4418 lambda!468099)))))

(declare-fun b!7606849 () Bool)

(assert (=> b!7606849 (= e!4524706 (not (= (Exists!4418 lambda!468098) (Exists!4418 lambda!468099))))))

(declare-fun b!7606850 () Bool)

(declare-fun res!3045899 () Bool)

(assert (=> b!7606850 (=> (not res!3045899) (not e!4524706))))

(assert (=> b!7606850 (= res!3045899 (not (Exists!4418 lambda!468098)))))

(declare-fun res!3045900 () Bool)

(assert (=> start!733190 (=> (not res!3045900) (not e!4524706))))

(declare-datatypes ((C!40706 0))(
  ( (C!40707 (val!30793 Int)) )
))
(declare-datatypes ((Regex!20190 0))(
  ( (ElementMatch!20190 (c!1402847 C!40706)) (Concat!29035 (regOne!40892 Regex!20190) (regTwo!40892 Regex!20190)) (EmptyExpr!20190) (Star!20190 (reg!20519 Regex!20190)) (EmptyLang!20190) (Union!20190 (regOne!40893 Regex!20190) (regTwo!40893 Regex!20190)) )
))
(declare-fun r1!3349 () Regex!20190)

(declare-fun validRegex!10618 (Regex!20190) Bool)

(assert (=> start!733190 (= res!3045900 (validRegex!10618 r1!3349))))

(assert (=> start!733190 e!4524706))

(assert (=> start!733190 e!4524705))

(assert (=> start!733190 e!4524704))

(assert (=> start!733190 e!4524707))

(declare-fun b!7606851 () Bool)

(assert (=> b!7606851 (= e!4524704 tp_is_empty!50735)))

(declare-fun b!7606852 () Bool)

(declare-fun tp!2218583 () Bool)

(assert (=> b!7606852 (= e!4524704 tp!2218583)))

(declare-fun b!7606853 () Bool)

(declare-fun tp!2218577 () Bool)

(declare-fun tp!2218584 () Bool)

(assert (=> b!7606853 (= e!4524704 (and tp!2218577 tp!2218584))))

(declare-fun b!7606854 () Bool)

(assert (=> b!7606854 (= e!4524705 tp_is_empty!50735)))

(declare-fun b!7606855 () Bool)

(declare-fun tp!2218586 () Bool)

(assert (=> b!7606855 (= e!4524705 tp!2218586)))

(declare-fun b!7606856 () Bool)

(declare-fun tp!2218578 () Bool)

(declare-fun tp!2218581 () Bool)

(assert (=> b!7606856 (= e!4524705 (and tp!2218578 tp!2218581))))

(declare-fun b!7606857 () Bool)

(declare-fun res!3045901 () Bool)

(assert (=> b!7606857 (=> (not res!3045901) (not e!4524706))))

(declare-fun r2!3249 () Regex!20190)

(assert (=> b!7606857 (= res!3045901 (validRegex!10618 r2!3249))))

(assert (= (and start!733190 res!3045900) b!7606857))

(assert (= (and b!7606857 res!3045901) b!7606844))

(assert (= (and b!7606844 res!3045902) b!7606850))

(assert (= (and b!7606850 res!3045899) b!7606848))

(assert (= (and b!7606848 res!3045903) b!7606849))

(assert (= (and start!733190 (is-ElementMatch!20190 r1!3349)) b!7606854))

(assert (= (and start!733190 (is-Concat!29035 r1!3349)) b!7606856))

(assert (= (and start!733190 (is-Star!20190 r1!3349)) b!7606855))

(assert (= (and start!733190 (is-Union!20190 r1!3349)) b!7606846))

(assert (= (and start!733190 (is-ElementMatch!20190 r2!3249)) b!7606851))

(assert (= (and start!733190 (is-Concat!29035 r2!3249)) b!7606853))

(assert (= (and start!733190 (is-Star!20190 r2!3249)) b!7606852))

(assert (= (and start!733190 (is-Union!20190 r2!3249)) b!7606845))

(declare-datatypes ((List!73073 0))(
  ( (Nil!72949) (Cons!72949 (h!79397 C!40706) (t!387808 List!73073)) )
))
(declare-fun s!10235 () List!73073)

(assert (= (and start!733190 (is-Cons!72949 s!10235)) b!7606847))

(declare-fun m!8147094 () Bool)

(assert (=> b!7606848 m!8147094))

(declare-fun m!8147096 () Bool)

(assert (=> b!7606844 m!8147096))

(declare-fun m!8147098 () Bool)

(assert (=> start!733190 m!8147098))

(assert (=> b!7606850 m!8147096))

(assert (=> b!7606849 m!8147096))

(assert (=> b!7606849 m!8147094))

(declare-fun m!8147100 () Bool)

(assert (=> b!7606857 m!8147100))

(push 1)

(assert (not start!733190))

(assert (not b!7606844))

(assert (not b!7606845))

(assert (not b!7606852))

(assert (not b!7606848))

(assert (not b!7606850))

(assert (not b!7606855))

(assert tp_is_empty!50735)

(assert (not b!7606857))

(assert (not b!7606856))

(assert (not b!7606846))

(assert (not b!7606849))

(assert (not b!7606847))

(assert (not b!7606853))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

