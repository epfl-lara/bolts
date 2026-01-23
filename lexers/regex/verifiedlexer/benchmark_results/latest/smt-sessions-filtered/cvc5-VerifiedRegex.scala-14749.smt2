; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759002 () Bool)

(assert start!759002)

(declare-fun res!3186900 () Bool)

(declare-fun e!4747817 () Bool)

(assert (=> start!759002 (=> (not res!3186900) (not e!4747817))))

(declare-datatypes ((K!22876 0))(
  ( (K!22877 (val!32973 Int)) )
))
(declare-datatypes ((V!23130 0))(
  ( (V!23131 (val!32974 Int)) )
))
(declare-datatypes ((tuple2!70938 0))(
  ( (tuple2!70939 (_1!38772 K!22876) (_2!38772 V!23130)) )
))
(declare-datatypes ((List!75717 0))(
  ( (Nil!75591) (Cons!75591 (h!82039 tuple2!70938) (t!391489 List!75717)) )
))
(declare-fun l!15222 () List!75717)

(declare-fun key!6986 () K!22876)

(declare-fun containsKey!4898 (List!75717 K!22876) Bool)

(assert (=> start!759002 (= res!3186900 (not (containsKey!4898 l!15222 key!6986)))))

(assert (=> start!759002 e!4747817))

(declare-fun e!4747818 () Bool)

(assert (=> start!759002 e!4747818))

(declare-fun tp_is_empty!54999 () Bool)

(assert (=> start!759002 tp_is_empty!54999))

(declare-fun b!8056762 () Bool)

(declare-fun ListPrimitiveSize!555 (List!75717) Int)

(assert (=> b!8056762 (= e!4747817 (< (ListPrimitiveSize!555 l!15222) 0))))

(declare-fun tp_is_empty!55001 () Bool)

(declare-fun b!8056763 () Bool)

(declare-fun tp!2413966 () Bool)

(assert (=> b!8056763 (= e!4747818 (and tp_is_empty!54999 tp_is_empty!55001 tp!2413966))))

(assert (= (and start!759002 res!3186900) b!8056762))

(assert (= (and start!759002 (is-Cons!75591 l!15222)) b!8056763))

(declare-fun m!8410094 () Bool)

(assert (=> start!759002 m!8410094))

(declare-fun m!8410096 () Bool)

(assert (=> b!8056762 m!8410096))

(push 1)

(assert tp_is_empty!55001)

(assert (not start!759002))

(assert (not b!8056762))

(assert (not b!8056763))

(assert tp_is_empty!54999)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2398726 () Bool)

(declare-fun lt!2730713 () Int)

(assert (=> d!2398726 (>= lt!2730713 0)))

(declare-fun e!4747827 () Int)

(assert (=> d!2398726 (= lt!2730713 e!4747827)))

(declare-fun c!1476658 () Bool)

(assert (=> d!2398726 (= c!1476658 (is-Nil!75591 l!15222))))

(assert (=> d!2398726 (= (ListPrimitiveSize!555 l!15222) lt!2730713)))

(declare-fun b!8056774 () Bool)

(assert (=> b!8056774 (= e!4747827 0)))

(declare-fun b!8056775 () Bool)

(assert (=> b!8056775 (= e!4747827 (+ 1 (ListPrimitiveSize!555 (t!391489 l!15222))))))

(assert (= (and d!2398726 c!1476658) b!8056774))

(assert (= (and d!2398726 (not c!1476658)) b!8056775))

(declare-fun m!8410102 () Bool)

(assert (=> b!8056775 m!8410102))

(assert (=> b!8056762 d!2398726))

(declare-fun d!2398730 () Bool)

(declare-fun res!3186908 () Bool)

(declare-fun e!4747832 () Bool)

(assert (=> d!2398730 (=> res!3186908 e!4747832)))

(assert (=> d!2398730 (= res!3186908 (and (is-Cons!75591 l!15222) (= (_1!38772 (h!82039 l!15222)) key!6986)))))

(assert (=> d!2398730 (= (containsKey!4898 l!15222 key!6986) e!4747832)))

(declare-fun b!8056780 () Bool)

(declare-fun e!4747833 () Bool)

(assert (=> b!8056780 (= e!4747832 e!4747833)))

(declare-fun res!3186909 () Bool)

(assert (=> b!8056780 (=> (not res!3186909) (not e!4747833))))

(assert (=> b!8056780 (= res!3186909 (is-Cons!75591 l!15222))))

(declare-fun b!8056781 () Bool)

(assert (=> b!8056781 (= e!4747833 (containsKey!4898 (t!391489 l!15222) key!6986))))

(assert (= (and d!2398730 (not res!3186908)) b!8056780))

(assert (= (and b!8056780 res!3186909) b!8056781))

(declare-fun m!8410104 () Bool)

(assert (=> b!8056781 m!8410104))

(assert (=> start!759002 d!2398730))

(declare-fun tp!2413972 () Bool)

(declare-fun b!8056786 () Bool)

(declare-fun e!4747836 () Bool)

(assert (=> b!8056786 (= e!4747836 (and tp_is_empty!54999 tp_is_empty!55001 tp!2413972))))

(assert (=> b!8056763 (= tp!2413966 e!4747836)))

(assert (= (and b!8056763 (is-Cons!75591 (t!391489 l!15222))) b!8056786))

(push 1)

(assert (not b!8056786))

(assert tp_is_empty!55001)

(assert (not b!8056781))

(assert (not b!8056775))

(assert tp_is_empty!54999)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

