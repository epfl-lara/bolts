; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733018 () Bool)

(assert start!733018)

(declare-fun b!7603918 () Bool)

(assert (=> b!7603918 true))

(assert (=> b!7603918 true))

(assert (=> b!7603918 true))

(declare-fun b!7603914 () Bool)

(declare-fun e!4523326 () Bool)

(declare-fun lambda!467894 () Int)

(declare-fun Exists!4406 (Int) Bool)

(assert (=> b!7603914 (= e!4523326 (Exists!4406 lambda!467894))))

(declare-fun b!7603915 () Bool)

(declare-fun e!4523324 () Bool)

(declare-fun tp!2217555 () Bool)

(declare-fun tp!2217553 () Bool)

(assert (=> b!7603915 (= e!4523324 (and tp!2217555 tp!2217553))))

(declare-fun b!7603916 () Bool)

(declare-fun e!4523325 () Bool)

(declare-fun tp_is_empty!50711 () Bool)

(declare-fun tp!2217559 () Bool)

(assert (=> b!7603916 (= e!4523325 (and tp_is_empty!50711 tp!2217559))))

(declare-fun b!7603917 () Bool)

(declare-fun tp!2217560 () Bool)

(declare-fun tp!2217551 () Bool)

(assert (=> b!7603917 (= e!4523324 (and tp!2217560 tp!2217551))))

(declare-fun res!3044673 () Bool)

(assert (=> b!7603918 (=> (not res!3044673) (not e!4523326))))

(assert (=> b!7603918 (= res!3044673 (not (Exists!4406 lambda!467894)))))

(declare-fun res!3044672 () Bool)

(assert (=> start!733018 (=> (not res!3044672) (not e!4523326))))

(declare-datatypes ((C!40682 0))(
  ( (C!40683 (val!30781 Int)) )
))
(declare-datatypes ((Regex!20178 0))(
  ( (ElementMatch!20178 (c!1402445 C!40682)) (Concat!29023 (regOne!40868 Regex!20178) (regTwo!40868 Regex!20178)) (EmptyExpr!20178) (Star!20178 (reg!20507 Regex!20178)) (EmptyLang!20178) (Union!20178 (regOne!40869 Regex!20178) (regTwo!40869 Regex!20178)) )
))
(declare-fun r1!3349 () Regex!20178)

(declare-fun validRegex!10606 (Regex!20178) Bool)

(assert (=> start!733018 (= res!3044672 (validRegex!10606 r1!3349))))

(assert (=> start!733018 e!4523326))

(declare-fun e!4523327 () Bool)

(assert (=> start!733018 e!4523327))

(assert (=> start!733018 e!4523324))

(assert (=> start!733018 e!4523325))

(declare-fun b!7603919 () Bool)

(declare-fun tp!2217554 () Bool)

(declare-fun tp!2217557 () Bool)

(assert (=> b!7603919 (= e!4523327 (and tp!2217554 tp!2217557))))

(declare-fun b!7603920 () Bool)

(assert (=> b!7603920 (= e!4523324 tp_is_empty!50711)))

(declare-fun b!7603921 () Bool)

(declare-fun tp!2217552 () Bool)

(declare-fun tp!2217558 () Bool)

(assert (=> b!7603921 (= e!4523327 (and tp!2217552 tp!2217558))))

(declare-fun b!7603922 () Bool)

(declare-fun tp!2217556 () Bool)

(assert (=> b!7603922 (= e!4523327 tp!2217556)))

(declare-fun b!7603923 () Bool)

(declare-fun tp!2217550 () Bool)

(assert (=> b!7603923 (= e!4523324 tp!2217550)))

(declare-fun b!7603924 () Bool)

(assert (=> b!7603924 (= e!4523327 tp_is_empty!50711)))

(declare-fun b!7603925 () Bool)

(declare-fun res!3044671 () Bool)

(assert (=> b!7603925 (=> (not res!3044671) (not e!4523326))))

(declare-fun r2!3249 () Regex!20178)

(assert (=> b!7603925 (= res!3044671 (validRegex!10606 r2!3249))))

(assert (= (and start!733018 res!3044672) b!7603925))

(assert (= (and b!7603925 res!3044671) b!7603918))

(assert (= (and b!7603918 res!3044673) b!7603914))

(assert (= (and start!733018 (is-ElementMatch!20178 r1!3349)) b!7603924))

(assert (= (and start!733018 (is-Concat!29023 r1!3349)) b!7603919))

(assert (= (and start!733018 (is-Star!20178 r1!3349)) b!7603922))

(assert (= (and start!733018 (is-Union!20178 r1!3349)) b!7603921))

(assert (= (and start!733018 (is-ElementMatch!20178 r2!3249)) b!7603920))

(assert (= (and start!733018 (is-Concat!29023 r2!3249)) b!7603917))

(assert (= (and start!733018 (is-Star!20178 r2!3249)) b!7603923))

(assert (= (and start!733018 (is-Union!20178 r2!3249)) b!7603915))

(declare-datatypes ((List!73061 0))(
  ( (Nil!72937) (Cons!72937 (h!79385 C!40682) (t!387796 List!73061)) )
))
(declare-fun s!10235 () List!73061)

(assert (= (and start!733018 (is-Cons!72937 s!10235)) b!7603916))

(declare-fun m!8145966 () Bool)

(assert (=> b!7603914 m!8145966))

(assert (=> b!7603918 m!8145966))

(declare-fun m!8145968 () Bool)

(assert (=> start!733018 m!8145968))

(declare-fun m!8145970 () Bool)

(assert (=> b!7603925 m!8145970))

(push 1)

(assert tp_is_empty!50711)

(assert (not b!7603914))

(assert (not b!7603925))

(assert (not b!7603919))

(assert (not b!7603918))

(assert (not start!733018))

(assert (not b!7603916))

(assert (not b!7603922))

(assert (not b!7603917))

(assert (not b!7603915))

(assert (not b!7603923))

(assert (not b!7603921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

