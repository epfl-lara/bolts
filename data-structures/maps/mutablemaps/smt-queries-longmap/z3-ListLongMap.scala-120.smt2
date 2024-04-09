; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2046 () Bool)

(assert start!2046)

(declare-fun b!13878 () Bool)

(assert (=> b!13878 true))

(declare-fun b!13875 () Bool)

(declare-fun e!8266 () Bool)

(declare-datatypes ((B!520 0))(
  ( (B!521 (val!358 Int)) )
))
(declare-datatypes ((tuple2!498 0))(
  ( (tuple2!499 (_1!249 (_ BitVec 64)) (_2!249 B!520)) )
))
(declare-datatypes ((List!408 0))(
  ( (Nil!405) (Cons!404 (h!970 tuple2!498) (t!2804 List!408)) )
))
(declare-fun l!522 () List!408)

(assert (=> b!13875 (= e!8266 (= l!522 Nil!405))))

(declare-fun b!13876 () Bool)

(declare-fun e!8268 () Bool)

(declare-fun tp_is_empty!699 () Bool)

(declare-fun tp!2257 () Bool)

(assert (=> b!13876 (= e!8268 (and tp_is_empty!699 tp!2257))))

(declare-fun res!10875 () Bool)

(declare-fun e!8269 () Bool)

(assert (=> start!2046 (=> (not res!10875) (not e!8269))))

(declare-fun isStrictlySorted!99 (List!408) Bool)

(assert (=> start!2046 (= res!10875 (isStrictlySorted!99 l!522))))

(assert (=> start!2046 e!8269))

(declare-fun e!8267 () Bool)

(assert (=> start!2046 e!8267))

(assert (=> start!2046 tp_is_empty!699))

(declare-fun b!13877 () Bool)

(declare-fun res!10874 () Bool)

(assert (=> b!13877 (=> (not res!10874) (not e!8269))))

(declare-fun value!159 () B!520)

(get-info :version)

(assert (=> b!13877 (= res!10874 (and (or (not ((_ is Cons!404) l!522)) (not (= (_2!249 (h!970 l!522)) value!159))) (or (not ((_ is Cons!404) l!522)) (= (_2!249 (h!970 l!522)) value!159)) (not ((_ is Nil!405) l!522))))))

(declare-fun res!10877 () Bool)

(assert (=> b!13878 (=> (not res!10877) (not e!8266))))

(declare-fun lt!3549 () List!408)

(declare-fun lambda!128 () Int)

(declare-fun forall!90 (List!408 Int) Bool)

(assert (=> b!13878 (= res!10877 (forall!90 lt!3549 lambda!128))))

(declare-fun b!13879 () Bool)

(declare-fun res!10879 () Bool)

(assert (=> b!13879 (=> (not res!10879) (not e!8266))))

(declare-fun isEmpty!97 (List!408) Bool)

(assert (=> b!13879 (= res!10879 (not (isEmpty!97 lt!3549)))))

(declare-fun b!13880 () Bool)

(declare-fun tp!2258 () Bool)

(assert (=> b!13880 (= e!8267 (and tp_is_empty!699 tp!2258))))

(declare-fun b!13881 () Bool)

(assert (=> b!13881 (= e!8269 e!8266)))

(declare-fun res!10878 () Bool)

(assert (=> b!13881 (=> (not res!10878) (not e!8266))))

(assert (=> b!13881 (= res!10878 (isStrictlySorted!99 lt!3549))))

(declare-fun err!19 () List!408)

(assert (=> b!13881 (= lt!3549 err!19)))

(assert (=> b!13881 true))

(assert (=> b!13881 e!8268))

(declare-fun b!13882 () Bool)

(declare-fun res!10876 () Bool)

(assert (=> b!13882 (=> (not res!10876) (not e!8266))))

(assert (=> b!13882 (= res!10876 (not (isEmpty!97 l!522)))))

(assert (= (and start!2046 res!10875) b!13877))

(assert (= (and b!13877 res!10874) b!13881))

(assert (= (and b!13881 ((_ is Cons!404) err!19)) b!13876))

(assert (= (and b!13881 res!10878) b!13878))

(assert (= (and b!13878 res!10877) b!13882))

(assert (= (and b!13882 res!10876) b!13879))

(assert (= (and b!13879 res!10879) b!13875))

(assert (= (and start!2046 ((_ is Cons!404) l!522)) b!13880))

(declare-fun m!9311 () Bool)

(assert (=> b!13879 m!9311))

(declare-fun m!9313 () Bool)

(assert (=> start!2046 m!9313))

(declare-fun m!9315 () Bool)

(assert (=> b!13882 m!9315))

(declare-fun m!9317 () Bool)

(assert (=> b!13878 m!9317))

(declare-fun m!9319 () Bool)

(assert (=> b!13881 m!9319))

(check-sat (not b!13880) tp_is_empty!699 (not b!13882) (not start!2046) (not b!13878) (not b!13881) (not b!13879) (not b!13876))
(check-sat)
