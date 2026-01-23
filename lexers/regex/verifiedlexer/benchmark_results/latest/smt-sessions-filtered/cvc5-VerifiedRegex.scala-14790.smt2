; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759658 () Bool)

(assert start!759658)

(declare-fun res!3188769 () Bool)

(declare-fun e!4750000 () Bool)

(assert (=> start!759658 (=> (not res!3188769) (not e!4750000))))

(declare-datatypes ((B!4543 0))(
  ( (B!4544 (val!33137 Int)) )
))
(declare-datatypes ((K!23081 0))(
  ( (K!23082 (val!33138 Int)) )
))
(declare-datatypes ((tuple2!71102 0))(
  ( (tuple2!71103 (_1!38854 K!23081) (_2!38854 B!4543)) )
))
(declare-datatypes ((List!75820 0))(
  ( (Nil!75694) (Cons!75694 (h!82142 tuple2!71102) (t!391592 List!75820)) )
))
(declare-datatypes ((ListMap!7465 0))(
  ( (ListMap!7466 (toList!12007 List!75820)) )
))
(declare-fun thiss!41813 () ListMap!7465)

(declare-fun key!1573 () K!23081)

(declare-fun containsKey!4960 (List!75820 K!23081) Bool)

(assert (=> start!759658 (= res!3188769 (not (containsKey!4960 (toList!12007 thiss!41813) key!1573)))))

(assert (=> start!759658 e!4750000))

(declare-fun e!4749999 () Bool)

(declare-fun inv!97551 (ListMap!7465) Bool)

(assert (=> start!759658 (and (inv!97551 thiss!41813) e!4749999)))

(declare-fun tp_is_empty!55307 () Bool)

(assert (=> start!759658 tp_is_empty!55307))

(declare-fun b!8060101 () Bool)

(declare-fun res!3188768 () Bool)

(assert (=> b!8060101 (=> (not res!3188768) (not e!4750000))))

(declare-datatypes ((List!75821 0))(
  ( (Nil!75695) (Cons!75695 (h!82143 K!23081) (t!391593 List!75821)) )
))
(declare-fun contains!21349 (List!75821 K!23081) Bool)

(declare-fun keys!30982 (ListMap!7465) List!75821)

(assert (=> b!8060101 (= res!3188768 (contains!21349 (keys!30982 thiss!41813) key!1573))))

(declare-fun b!8060102 () Bool)

(assert (=> b!8060102 (= e!4750000 (not true))))

(assert (=> b!8060102 false))

(declare-datatypes ((Unit!172810 0))(
  ( (Unit!172811) )
))
(declare-fun lt!2733013 () Unit!172810)

(declare-fun lemmaInGetKeysListThenContainsKey!1277 (List!75820 K!23081) Unit!172810)

(assert (=> b!8060102 (= lt!2733013 (lemmaInGetKeysListThenContainsKey!1277 (toList!12007 thiss!41813) key!1573))))

(declare-fun b!8060103 () Bool)

(declare-fun tp!2414499 () Bool)

(assert (=> b!8060103 (= e!4749999 tp!2414499)))

(assert (= (and start!759658 res!3188769) b!8060101))

(assert (= (and b!8060101 res!3188768) b!8060102))

(assert (= start!759658 b!8060103))

(declare-fun m!8413208 () Bool)

(assert (=> start!759658 m!8413208))

(declare-fun m!8413210 () Bool)

(assert (=> start!759658 m!8413210))

(declare-fun m!8413212 () Bool)

(assert (=> b!8060101 m!8413212))

(assert (=> b!8060101 m!8413212))

(declare-fun m!8413214 () Bool)

(assert (=> b!8060101 m!8413214))

(declare-fun m!8413216 () Bool)

(assert (=> b!8060102 m!8413216))

(push 1)

(assert (not b!8060102))

(assert (not start!759658))

(assert tp_is_empty!55307)

(assert (not b!8060101))

(assert (not b!8060103))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

