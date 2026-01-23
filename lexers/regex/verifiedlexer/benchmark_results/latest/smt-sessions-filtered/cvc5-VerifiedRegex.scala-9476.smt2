; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!500982 () Bool)

(assert start!500982)

(declare-fun b!4826998 () Bool)

(declare-fun e!3016183 () Bool)

(declare-fun tp!1362657 () Bool)

(assert (=> b!4826998 (= e!3016183 tp!1362657)))

(declare-fun b!4826999 () Bool)

(declare-fun res!2055234 () Bool)

(declare-fun e!3016182 () Bool)

(assert (=> b!4826999 (=> (not res!2055234) (not e!3016182))))

(declare-datatypes ((V!16913 0))(
  ( (V!16914 (val!21639 Int)) )
))
(declare-datatypes ((K!16667 0))(
  ( (K!16668 (val!21640 Int)) )
))
(declare-datatypes ((tuple2!58214 0))(
  ( (tuple2!58215 (_1!32401 K!16667) (_2!32401 V!16913)) )
))
(declare-datatypes ((List!55110 0))(
  ( (Nil!54986) (Cons!54986 (h!61420 tuple2!58214) (t!362606 List!55110)) )
))
(declare-datatypes ((tuple2!58216 0))(
  ( (tuple2!58217 (_1!32402 (_ BitVec 64)) (_2!32402 List!55110)) )
))
(declare-datatypes ((List!55111 0))(
  ( (Nil!54987) (Cons!54987 (h!61421 tuple2!58216) (t!362607 List!55111)) )
))
(declare-datatypes ((ListLongMap!6005 0))(
  ( (ListLongMap!6006 (toList!7487 List!55111)) )
))
(declare-fun lm!2325 () ListLongMap!6005)

(declare-datatypes ((Hashable!7271 0))(
  ( (HashableExt!7270 (__x!33546 Int)) )
))
(declare-fun hashF!1543 () Hashable!7271)

(declare-fun allKeysSameHashInMap!2587 (ListLongMap!6005 Hashable!7271) Bool)

(assert (=> b!4826999 (= res!2055234 (allKeysSameHashInMap!2587 lm!2325 hashF!1543))))

(declare-fun b!4827000 () Bool)

(declare-fun res!2055236 () Bool)

(assert (=> b!4827000 (=> (not res!2055236) (not e!3016182))))

(assert (=> b!4827000 (= res!2055236 (is-Cons!54987 (toList!7487 lm!2325)))))

(declare-fun b!4827001 () Bool)

(assert (=> b!4827001 (= e!3016182 false)))

(declare-fun lt!1974043 () Bool)

(declare-fun noDuplicateKeys!2456 (List!55110) Bool)

(assert (=> b!4827001 (= lt!1974043 (noDuplicateKeys!2456 (_2!32402 (h!61421 (toList!7487 lm!2325)))))))

(declare-datatypes ((ListMap!6863 0))(
  ( (ListMap!6864 (toList!7488 List!55110)) )
))
(declare-fun lt!1974044 () ListMap!6863)

(declare-fun extractMap!2683 (List!55111) ListMap!6863)

(assert (=> b!4827001 (= lt!1974044 (extractMap!2683 (t!362607 (toList!7487 lm!2325))))))

(declare-fun res!2055237 () Bool)

(assert (=> start!500982 (=> (not res!2055237) (not e!3016182))))

(declare-fun lambda!237009 () Int)

(declare-fun forall!12621 (List!55111 Int) Bool)

(assert (=> start!500982 (= res!2055237 (forall!12621 (toList!7487 lm!2325) lambda!237009))))

(assert (=> start!500982 e!3016182))

(declare-fun inv!70568 (ListLongMap!6005) Bool)

(assert (=> start!500982 (and (inv!70568 lm!2325) e!3016183)))

(assert (=> start!500982 true))

(declare-fun tp_is_empty!34477 () Bool)

(assert (=> start!500982 tp_is_empty!34477))

(declare-fun b!4827002 () Bool)

(declare-fun res!2055235 () Bool)

(assert (=> b!4827002 (=> (not res!2055235) (not e!3016182))))

(declare-fun key!5594 () K!16667)

(declare-fun contains!18794 (ListLongMap!6005 (_ BitVec 64)) Bool)

(declare-fun hash!5414 (Hashable!7271 K!16667) (_ BitVec 64))

(assert (=> b!4827002 (= res!2055235 (not (contains!18794 lm!2325 (hash!5414 hashF!1543 key!5594))))))

(assert (= (and start!500982 res!2055237) b!4826999))

(assert (= (and b!4826999 res!2055234) b!4827002))

(assert (= (and b!4827002 res!2055235) b!4827000))

(assert (= (and b!4827000 res!2055236) b!4827001))

(assert (= start!500982 b!4826998))

(declare-fun m!5818150 () Bool)

(assert (=> b!4826999 m!5818150))

(declare-fun m!5818152 () Bool)

(assert (=> b!4827001 m!5818152))

(declare-fun m!5818154 () Bool)

(assert (=> b!4827001 m!5818154))

(declare-fun m!5818156 () Bool)

(assert (=> start!500982 m!5818156))

(declare-fun m!5818158 () Bool)

(assert (=> start!500982 m!5818158))

(declare-fun m!5818160 () Bool)

(assert (=> b!4827002 m!5818160))

(assert (=> b!4827002 m!5818160))

(declare-fun m!5818162 () Bool)

(assert (=> b!4827002 m!5818162))

(push 1)

(assert (not b!4827002))

(assert (not b!4826999))

(assert (not start!500982))

(assert tp_is_empty!34477)

(assert (not b!4827001))

(assert (not b!4826998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

