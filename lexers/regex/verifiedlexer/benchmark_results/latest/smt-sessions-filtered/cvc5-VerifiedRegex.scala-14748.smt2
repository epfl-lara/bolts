; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!758998 () Bool)

(assert start!758998)

(declare-fun res!3186891 () Bool)

(declare-fun e!4747806 () Bool)

(assert (=> start!758998 (=> (not res!3186891) (not e!4747806))))

(declare-datatypes ((K!22871 0))(
  ( (K!22872 (val!32969 Int)) )
))
(declare-datatypes ((V!23125 0))(
  ( (V!23126 (val!32970 Int)) )
))
(declare-datatypes ((tuple2!70934 0))(
  ( (tuple2!70935 (_1!38770 K!22871) (_2!38770 V!23125)) )
))
(declare-datatypes ((List!75715 0))(
  ( (Nil!75589) (Cons!75589 (h!82037 tuple2!70934) (t!391487 List!75715)) )
))
(declare-fun l!15222 () List!75715)

(declare-fun key!6986 () K!22871)

(declare-fun containsKey!4896 (List!75715 K!22871) Bool)

(assert (=> start!758998 (= res!3186891 (not (containsKey!4896 l!15222 key!6986)))))

(assert (=> start!758998 e!4747806))

(declare-fun e!4747805 () Bool)

(assert (=> start!758998 e!4747805))

(declare-fun tp_is_empty!54991 () Bool)

(assert (=> start!758998 tp_is_empty!54991))

(declare-fun b!8056746 () Bool)

(declare-fun res!3186890 () Bool)

(assert (=> b!8056746 (=> (not res!3186890) (not e!4747806))))

(assert (=> b!8056746 (= res!3186890 (and (or (not (is-Cons!75589 l!15222)) (not (= (_1!38770 (h!82037 l!15222)) key!6986))) (is-Cons!75589 l!15222)))))

(declare-fun b!8056747 () Bool)

(assert (=> b!8056747 (= e!4747806 false)))

(declare-fun lt!2730707 () Bool)

(assert (=> b!8056747 (= lt!2730707 (containsKey!4896 (t!391487 l!15222) key!6986))))

(declare-fun tp_is_empty!54993 () Bool)

(declare-fun tp!2413960 () Bool)

(declare-fun b!8056748 () Bool)

(assert (=> b!8056748 (= e!4747805 (and tp_is_empty!54991 tp_is_empty!54993 tp!2413960))))

(assert (= (and start!758998 res!3186891) b!8056746))

(assert (= (and b!8056746 res!3186890) b!8056747))

(assert (= (and start!758998 (is-Cons!75589 l!15222)) b!8056748))

(declare-fun m!8410086 () Bool)

(assert (=> start!758998 m!8410086))

(declare-fun m!8410088 () Bool)

(assert (=> b!8056747 m!8410088))

(push 1)

(assert (not start!758998))

(assert tp_is_empty!54993)

(assert (not b!8056748))

(assert tp_is_empty!54991)

(assert (not b!8056747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

