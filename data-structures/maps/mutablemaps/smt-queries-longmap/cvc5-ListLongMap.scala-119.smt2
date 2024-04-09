; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2038 () Bool)

(assert start!2038)

(declare-fun b!13773 () Bool)

(assert (=> b!13773 true))

(declare-fun b!13771 () Bool)

(declare-fun e!8219 () Bool)

(declare-datatypes ((B!512 0))(
  ( (B!513 (val!354 Int)) )
))
(declare-datatypes ((tuple2!490 0))(
  ( (tuple2!491 (_1!245 (_ BitVec 64)) (_2!245 B!512)) )
))
(declare-datatypes ((List!404 0))(
  ( (Nil!401) (Cons!400 (h!966 tuple2!490) (t!2800 List!404)) )
))
(declare-fun lt!3537 () List!404)

(assert (=> b!13771 (= e!8219 (= lt!3537 Nil!401))))

(declare-fun b!13772 () Bool)

(declare-fun res!10803 () Bool)

(assert (=> b!13772 (=> (not res!10803) (not e!8219))))

(declare-fun isEmpty!93 (List!404) Bool)

(assert (=> b!13772 (= res!10803 (not (isEmpty!93 lt!3537)))))

(declare-fun res!10807 () Bool)

(declare-fun e!8221 () Bool)

(assert (=> start!2038 (=> (not res!10807) (not e!8221))))

(declare-fun l!522 () List!404)

(declare-fun isStrictlySorted!95 (List!404) Bool)

(assert (=> start!2038 (= res!10807 (isStrictlySorted!95 l!522))))

(assert (=> start!2038 e!8221))

(declare-fun e!8218 () Bool)

(assert (=> start!2038 e!8218))

(declare-fun tp_is_empty!691 () Bool)

(assert (=> start!2038 tp_is_empty!691))

(declare-fun res!10806 () Bool)

(assert (=> b!13773 (=> (not res!10806) (not e!8219))))

(declare-fun lambda!116 () Int)

(declare-fun forall!86 (List!404 Int) Bool)

(assert (=> b!13773 (= res!10806 (forall!86 lt!3537 lambda!116))))

(declare-fun b!13774 () Bool)

(declare-fun e!8220 () Bool)

(declare-fun tp!2233 () Bool)

(assert (=> b!13774 (= e!8220 (and tp_is_empty!691 tp!2233))))

(declare-fun b!13775 () Bool)

(assert (=> b!13775 (= e!8221 e!8219)))

(declare-fun res!10805 () Bool)

(assert (=> b!13775 (=> (not res!10805) (not e!8219))))

(assert (=> b!13775 (= res!10805 (isStrictlySorted!95 lt!3537))))

(declare-fun err!3 () List!404)

(assert (=> b!13775 (= lt!3537 err!3)))

(assert (=> b!13775 true))

(assert (=> b!13775 e!8220))

(declare-fun b!13776 () Bool)

(declare-fun tp!2234 () Bool)

(assert (=> b!13776 (= e!8218 (and tp_is_empty!691 tp!2234))))

(declare-fun b!13777 () Bool)

(declare-fun res!10804 () Bool)

(assert (=> b!13777 (=> (not res!10804) (not e!8221))))

(declare-fun value!159 () B!512)

(assert (=> b!13777 (= res!10804 (and (or (not (is-Cons!400 l!522)) (not (= (_2!245 (h!966 l!522)) value!159))) (or (not (is-Cons!400 l!522)) (= (_2!245 (h!966 l!522)) value!159)) (not (is-Nil!401 l!522))))))

(declare-fun b!13778 () Bool)

(declare-fun res!10802 () Bool)

(assert (=> b!13778 (=> (not res!10802) (not e!8219))))

(assert (=> b!13778 (= res!10802 (not (isEmpty!93 l!522)))))

(assert (= (and start!2038 res!10807) b!13777))

(assert (= (and b!13777 res!10804) b!13775))

(assert (= (and b!13775 (is-Cons!400 err!3)) b!13774))

(assert (= (and b!13775 res!10805) b!13773))

(assert (= (and b!13773 res!10806) b!13778))

(assert (= (and b!13778 res!10802) b!13772))

(assert (= (and b!13772 res!10803) b!13771))

(assert (= (and start!2038 (is-Cons!400 l!522)) b!13776))

(declare-fun m!9271 () Bool)

(assert (=> b!13773 m!9271))

(declare-fun m!9273 () Bool)

(assert (=> b!13772 m!9273))

(declare-fun m!9275 () Bool)

(assert (=> start!2038 m!9275))

(declare-fun m!9277 () Bool)

(assert (=> b!13778 m!9277))

(declare-fun m!9279 () Bool)

(assert (=> b!13775 m!9279))

(push 1)

