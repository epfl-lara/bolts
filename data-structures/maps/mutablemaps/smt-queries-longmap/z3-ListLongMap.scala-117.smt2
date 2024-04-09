; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2028 () Bool)

(assert start!2028)

(declare-fun b!13683 () Bool)

(assert (=> b!13683 true))

(declare-fun res!10739 () Bool)

(declare-fun e!8185 () Bool)

(assert (=> start!2028 (=> (not res!10739) (not e!8185))))

(declare-datatypes ((B!502 0))(
  ( (B!503 (val!349 Int)) )
))
(declare-datatypes ((tuple2!480 0))(
  ( (tuple2!481 (_1!240 (_ BitVec 64)) (_2!240 B!502)) )
))
(declare-datatypes ((List!399 0))(
  ( (Nil!396) (Cons!395 (h!961 tuple2!480) (t!2795 List!399)) )
))
(declare-fun l!522 () List!399)

(declare-fun isStrictlySorted!90 (List!399) Bool)

(assert (=> start!2028 (= res!10739 (isStrictlySorted!90 l!522))))

(assert (=> start!2028 e!8185))

(declare-fun e!8184 () Bool)

(assert (=> start!2028 e!8184))

(declare-fun tp_is_empty!681 () Bool)

(assert (=> start!2028 tp_is_empty!681))

(declare-fun b!13680 () Bool)

(declare-fun tp!2216 () Bool)

(assert (=> b!13680 (= e!8184 (and tp_is_empty!681 tp!2216))))

(declare-fun b!13681 () Bool)

(declare-fun res!10741 () Bool)

(assert (=> b!13681 (=> (not res!10741) (not e!8185))))

(declare-fun value!159 () B!502)

(get-info :version)

(assert (=> b!13681 (= res!10741 (and (or (not ((_ is Cons!395) l!522)) (not (= (_2!240 (h!961 l!522)) value!159))) (or (not ((_ is Cons!395) l!522)) (= (_2!240 (h!961 l!522)) value!159)) ((_ is Nil!396) l!522)))))

(declare-fun b!13682 () Bool)

(declare-fun res!10738 () Bool)

(assert (=> b!13682 (=> (not res!10738) (not e!8185))))

(declare-fun isEmpty!88 (List!399) Bool)

(assert (=> b!13682 (= res!10738 (not (isEmpty!88 l!522)))))

(declare-fun res!10740 () Bool)

(assert (=> b!13683 (=> (not res!10740) (not e!8185))))

(declare-fun lambda!101 () Int)

(declare-fun forall!81 (List!399 Int) Bool)

(assert (=> b!13683 (= res!10740 (forall!81 Nil!396 lambda!101))))

(declare-fun b!13684 () Bool)

(assert (=> b!13684 (= e!8185 false)))

(assert (= (and start!2028 res!10739) b!13681))

(assert (= (and b!13681 res!10741) b!13683))

(assert (= (and b!13683 res!10740) b!13682))

(assert (= (and b!13682 res!10738) b!13684))

(assert (= (and start!2028 ((_ is Cons!395) l!522)) b!13680))

(declare-fun m!9241 () Bool)

(assert (=> start!2028 m!9241))

(declare-fun m!9243 () Bool)

(assert (=> b!13682 m!9243))

(declare-fun m!9245 () Bool)

(assert (=> b!13683 m!9245))

(check-sat (not b!13683) (not b!13680) tp_is_empty!681 (not start!2028) (not b!13682))
(check-sat)
