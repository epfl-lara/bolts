; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503720 () Bool)

(assert start!503720)

(declare-fun b!4840403 () Bool)

(declare-fun e!3025045 () Bool)

(declare-fun tp!1363837 () Bool)

(assert (=> b!4840403 (= e!3025045 tp!1363837)))

(declare-fun b!4840404 () Bool)

(declare-fun res!2063513 () Bool)

(declare-fun e!3025044 () Bool)

(assert (=> b!4840404 (=> (not res!2063513) (not e!3025044))))

(declare-datatypes ((K!17117 0))(
  ( (K!17118 (val!21999 Int)) )
))
(declare-datatypes ((V!17363 0))(
  ( (V!17364 (val!22000 Int)) )
))
(declare-datatypes ((tuple2!58870 0))(
  ( (tuple2!58871 (_1!32729 K!17117) (_2!32729 V!17363)) )
))
(declare-datatypes ((List!55484 0))(
  ( (Nil!55360) (Cons!55360 (h!61795 tuple2!58870) (t!362980 List!55484)) )
))
(declare-datatypes ((tuple2!58872 0))(
  ( (tuple2!58873 (_1!32730 (_ BitVec 64)) (_2!32730 List!55484)) )
))
(declare-datatypes ((List!55485 0))(
  ( (Nil!55361) (Cons!55361 (h!61796 tuple2!58872) (t!362981 List!55485)) )
))
(declare-datatypes ((ListLongMap!6301 0))(
  ( (ListLongMap!6302 (toList!7753 List!55485)) )
))
(declare-fun lm!2671 () ListLongMap!6301)

(assert (=> b!4840404 (= res!2063513 (is-Cons!55361 (toList!7753 lm!2671)))))

(declare-fun b!4840405 () Bool)

(declare-fun res!2063514 () Bool)

(assert (=> b!4840405 (=> (not res!2063514) (not e!3025044))))

(declare-fun key!6540 () K!17117)

(declare-fun containsKeyBiggerList!703 (List!55485 K!17117) Bool)

(assert (=> b!4840405 (= res!2063514 (containsKeyBiggerList!703 (toList!7753 lm!2671) key!6540))))

(declare-fun res!2063511 () Bool)

(assert (=> start!503720 (=> (not res!2063511) (not e!3025044))))

(declare-fun lambda!240953 () Int)

(declare-fun forall!12843 (List!55485 Int) Bool)

(assert (=> start!503720 (= res!2063511 (forall!12843 (toList!7753 lm!2671) lambda!240953))))

(assert (=> start!503720 e!3025044))

(declare-fun inv!71018 (ListLongMap!6301) Bool)

(assert (=> start!503720 (and (inv!71018 lm!2671) e!3025045)))

(assert (=> start!503720 true))

(declare-fun tp_is_empty!34941 () Bool)

(assert (=> start!503720 tp_is_empty!34941))

(declare-fun b!4840406 () Bool)

(declare-fun res!2063515 () Bool)

(assert (=> b!4840406 (=> (not res!2063515) (not e!3025044))))

(declare-datatypes ((Hashable!7419 0))(
  ( (HashableExt!7418 (__x!33694 Int)) )
))
(declare-fun hashF!1662 () Hashable!7419)

(declare-fun allKeysSameHashInMap!2735 (ListLongMap!6301 Hashable!7419) Bool)

(assert (=> b!4840406 (= res!2063515 (allKeysSameHashInMap!2735 lm!2671 hashF!1662))))

(declare-fun b!4840407 () Bool)

(declare-fun res!2063512 () Bool)

(assert (=> b!4840407 (=> (not res!2063512) (not e!3025044))))

(declare-fun containsKey!4585 (List!55484 K!17117) Bool)

(assert (=> b!4840407 (= res!2063512 (containsKey!4585 (_2!32730 (h!61796 (toList!7753 lm!2671))) key!6540))))

(declare-fun b!4840408 () Bool)

(assert (=> b!4840408 (= e!3025044 false)))

(declare-fun lt!1984759 () V!17363)

(declare-fun getValue!187 (List!55485 K!17117) V!17363)

(assert (=> b!4840408 (= lt!1984759 (getValue!187 (toList!7753 lm!2671) key!6540))))

(assert (= (and start!503720 res!2063511) b!4840406))

(assert (= (and b!4840406 res!2063515) b!4840405))

(assert (= (and b!4840405 res!2063514) b!4840404))

(assert (= (and b!4840404 res!2063513) b!4840407))

(assert (= (and b!4840407 res!2063512) b!4840408))

(assert (= start!503720 b!4840403))

(declare-fun m!5836146 () Bool)

(assert (=> b!4840406 m!5836146))

(declare-fun m!5836148 () Bool)

(assert (=> start!503720 m!5836148))

(declare-fun m!5836150 () Bool)

(assert (=> start!503720 m!5836150))

(declare-fun m!5836152 () Bool)

(assert (=> b!4840408 m!5836152))

(declare-fun m!5836154 () Bool)

(assert (=> b!4840407 m!5836154))

(declare-fun m!5836156 () Bool)

(assert (=> b!4840405 m!5836156))

(push 1)

(assert (not b!4840408))

(assert (not b!4840407))

(assert (not start!503720))

(assert (not b!4840406))

(assert (not b!4840405))

(assert (not b!4840403))

(assert tp_is_empty!34941)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

