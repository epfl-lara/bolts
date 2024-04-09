; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2020 () Bool)

(assert start!2020)

(declare-fun b!13600 () Bool)

(assert (=> b!13600 true))

(declare-fun b!13598 () Bool)

(declare-fun e!8153 () Bool)

(declare-datatypes ((B!494 0))(
  ( (B!495 (val!345 Int)) )
))
(declare-datatypes ((tuple2!472 0))(
  ( (tuple2!473 (_1!236 (_ BitVec 64)) (_2!236 B!494)) )
))
(declare-datatypes ((List!395 0))(
  ( (Nil!392) (Cons!391 (h!957 tuple2!472) (t!2791 List!395)) )
))
(declare-fun l!522 () List!395)

(assert (=> b!13598 (= e!8153 (= l!522 Nil!392))))

(declare-fun b!13599 () Bool)

(declare-fun e!8154 () Bool)

(assert (=> b!13599 (= e!8154 e!8153)))

(declare-fun res!10677 () Bool)

(assert (=> b!13599 (=> (not res!10677) (not e!8153))))

(declare-fun lt!3528 () List!395)

(declare-fun isStrictlySorted!86 (List!395) Bool)

(assert (=> b!13599 (= res!10677 (isStrictlySorted!86 lt!3528))))

(declare-fun value!159 () B!494)

(declare-fun filterByValue!10 (List!395 B!494) List!395)

(assert (=> b!13599 (= lt!3528 (filterByValue!10 (t!2791 l!522) value!159))))

(declare-fun res!10679 () Bool)

(assert (=> b!13600 (=> (not res!10679) (not e!8153))))

(declare-fun lambda!89 () Int)

(declare-fun forall!77 (List!395 Int) Bool)

(assert (=> b!13600 (= res!10679 (forall!77 lt!3528 lambda!89))))

(declare-fun b!13601 () Bool)

(declare-fun res!10676 () Bool)

(assert (=> b!13601 (=> (not res!10676) (not e!8153))))

(declare-fun isEmpty!84 (List!395) Bool)

(assert (=> b!13601 (= res!10676 (not (isEmpty!84 l!522)))))

(declare-fun b!13602 () Bool)

(declare-fun res!10681 () Bool)

(assert (=> b!13602 (=> (not res!10681) (not e!8154))))

(assert (=> b!13602 (= res!10681 (and (not (= (_2!236 (h!957 l!522)) value!159)) (is-Cons!391 l!522)))))

(declare-fun res!10680 () Bool)

(assert (=> start!2020 (=> (not res!10680) (not e!8154))))

(assert (=> start!2020 (= res!10680 (isStrictlySorted!86 l!522))))

(assert (=> start!2020 e!8154))

(declare-fun e!8155 () Bool)

(assert (=> start!2020 e!8155))

(declare-fun tp_is_empty!673 () Bool)

(assert (=> start!2020 tp_is_empty!673))

(declare-fun b!13603 () Bool)

(declare-fun res!10678 () Bool)

(assert (=> b!13603 (=> (not res!10678) (not e!8153))))

(assert (=> b!13603 (= res!10678 (not (isEmpty!84 lt!3528)))))

(declare-fun b!13604 () Bool)

(declare-fun tp!2204 () Bool)

(assert (=> b!13604 (= e!8155 (and tp_is_empty!673 tp!2204))))

(assert (= (and start!2020 res!10680) b!13602))

(assert (= (and b!13602 res!10681) b!13599))

(assert (= (and b!13599 res!10677) b!13600))

(assert (= (and b!13600 res!10679) b!13601))

(assert (= (and b!13601 res!10676) b!13603))

(assert (= (and b!13603 res!10678) b!13598))

(assert (= (and start!2020 (is-Cons!391 l!522)) b!13604))

(declare-fun m!9199 () Bool)

(assert (=> b!13601 m!9199))

(declare-fun m!9201 () Bool)

(assert (=> b!13603 m!9201))

(declare-fun m!9203 () Bool)

(assert (=> b!13600 m!9203))

(declare-fun m!9205 () Bool)

(assert (=> start!2020 m!9205))

(declare-fun m!9207 () Bool)

(assert (=> b!13599 m!9207))

(declare-fun m!9209 () Bool)

(assert (=> b!13599 m!9209))

(push 1)

