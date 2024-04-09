; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2048 () Bool)

(assert start!2048)

(declare-fun b!13904 () Bool)

(assert (=> b!13904 true))

(declare-fun b!13901 () Bool)

(declare-fun e!8279 () Bool)

(declare-fun tp_is_empty!701 () Bool)

(declare-fun tp!2264 () Bool)

(assert (=> b!13901 (= e!8279 (and tp_is_empty!701 tp!2264))))

(declare-fun b!13902 () Bool)

(declare-fun e!8278 () Bool)

(declare-datatypes ((B!522 0))(
  ( (B!523 (val!359 Int)) )
))
(declare-datatypes ((tuple2!500 0))(
  ( (tuple2!501 (_1!250 (_ BitVec 64)) (_2!250 B!522)) )
))
(declare-datatypes ((List!409 0))(
  ( (Nil!406) (Cons!405 (h!971 tuple2!500) (t!2805 List!409)) )
))
(declare-fun l!522 () List!409)

(assert (=> b!13902 (= e!8278 (= l!522 Nil!406))))

(declare-fun b!13903 () Bool)

(declare-fun res!10894 () Bool)

(declare-fun e!8280 () Bool)

(assert (=> b!13903 (=> (not res!10894) (not e!8280))))

(declare-fun value!159 () B!522)

(assert (=> b!13903 (= res!10894 (and (or (not (is-Cons!405 l!522)) (not (= (_2!250 (h!971 l!522)) value!159))) (or (not (is-Cons!405 l!522)) (= (_2!250 (h!971 l!522)) value!159)) (not (is-Nil!406 l!522))))))

(declare-fun res!10895 () Bool)

(assert (=> b!13904 (=> (not res!10895) (not e!8278))))

(declare-fun lt!3552 () List!409)

(declare-fun lambda!131 () Int)

(declare-fun forall!91 (List!409 Int) Bool)

(assert (=> b!13904 (= res!10895 (forall!91 lt!3552 lambda!131))))

(declare-fun res!10896 () Bool)

(assert (=> start!2048 (=> (not res!10896) (not e!8280))))

(declare-fun isStrictlySorted!100 (List!409) Bool)

(assert (=> start!2048 (= res!10896 (isStrictlySorted!100 l!522))))

(assert (=> start!2048 e!8280))

(declare-fun e!8281 () Bool)

(assert (=> start!2048 e!8281))

(assert (=> start!2048 tp_is_empty!701))

(declare-fun b!13905 () Bool)

(assert (=> b!13905 (= e!8280 e!8278)))

(declare-fun res!10892 () Bool)

(assert (=> b!13905 (=> (not res!10892) (not e!8278))))

(assert (=> b!13905 (= res!10892 (isStrictlySorted!100 lt!3552))))

(declare-fun err!23 () List!409)

(assert (=> b!13905 (= lt!3552 err!23)))

(assert (=> b!13905 true))

(assert (=> b!13905 e!8279))

(declare-fun b!13906 () Bool)

(declare-fun res!10893 () Bool)

(assert (=> b!13906 (=> (not res!10893) (not e!8278))))

(declare-fun isEmpty!98 (List!409) Bool)

(assert (=> b!13906 (= res!10893 (not (isEmpty!98 lt!3552)))))

(declare-fun b!13907 () Bool)

(declare-fun tp!2263 () Bool)

(assert (=> b!13907 (= e!8281 (and tp_is_empty!701 tp!2263))))

(declare-fun b!13908 () Bool)

(declare-fun res!10897 () Bool)

(assert (=> b!13908 (=> (not res!10897) (not e!8278))))

(assert (=> b!13908 (= res!10897 (not (isEmpty!98 l!522)))))

(assert (= (and start!2048 res!10896) b!13903))

(assert (= (and b!13903 res!10894) b!13905))

(assert (= (and b!13905 (is-Cons!405 err!23)) b!13901))

(assert (= (and b!13905 res!10892) b!13904))

(assert (= (and b!13904 res!10895) b!13908))

(assert (= (and b!13908 res!10897) b!13906))

(assert (= (and b!13906 res!10893) b!13902))

(assert (= (and start!2048 (is-Cons!405 l!522)) b!13907))

(declare-fun m!9321 () Bool)

(assert (=> b!13905 m!9321))

(declare-fun m!9323 () Bool)

(assert (=> b!13906 m!9323))

(declare-fun m!9325 () Bool)

(assert (=> b!13904 m!9325))

(declare-fun m!9327 () Bool)

(assert (=> b!13908 m!9327))

(declare-fun m!9329 () Bool)

(assert (=> start!2048 m!9329))

(push 1)

(assert (not b!13905))

(assert (not b!13904))

(assert (not b!13901))

(assert (not b!13906))

(assert (not b!13908))

(assert (not b!13907))

(assert (not start!2048))

(assert tp_is_empty!701)

(check-sat)

(pop 1)

