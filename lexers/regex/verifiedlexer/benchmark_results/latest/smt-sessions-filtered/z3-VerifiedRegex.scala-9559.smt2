; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!503562 () Bool)

(assert start!503562)

(declare-fun b!4839678 () Bool)

(declare-fun e!3024593 () Bool)

(declare-fun tp!1363750 () Bool)

(assert (=> b!4839678 (= e!3024593 tp!1363750)))

(declare-fun b!4839679 () Bool)

(declare-fun res!2063039 () Bool)

(declare-fun e!3024592 () Bool)

(assert (=> b!4839679 (=> (not res!2063039) (not e!3024592))))

(declare-datatypes ((K!17084 0))(
  ( (K!17085 (val!21973 Int)) )
))
(declare-datatypes ((V!17330 0))(
  ( (V!17331 (val!21974 Int)) )
))
(declare-datatypes ((tuple2!58818 0))(
  ( (tuple2!58819 (_1!32703 K!17084) (_2!32703 V!17330)) )
))
(declare-datatypes ((List!55456 0))(
  ( (Nil!55332) (Cons!55332 (h!61767 tuple2!58818) (t!362952 List!55456)) )
))
(declare-datatypes ((tuple2!58820 0))(
  ( (tuple2!58821 (_1!32704 (_ BitVec 64)) (_2!32704 List!55456)) )
))
(declare-datatypes ((List!55457 0))(
  ( (Nil!55333) (Cons!55333 (h!61768 tuple2!58820) (t!362953 List!55457)) )
))
(declare-datatypes ((ListLongMap!6275 0))(
  ( (ListLongMap!6276 (toList!7734 List!55457)) )
))
(declare-fun lm!2671 () ListLongMap!6275)

(get-info :version)

(assert (=> b!4839679 (= res!2063039 (not ((_ is Cons!55333) (toList!7734 lm!2671))))))

(declare-fun res!2063044 () Bool)

(assert (=> start!503562 (=> (not res!2063044) (not e!3024592))))

(declare-fun lambda!240651 () Int)

(declare-fun forall!12825 (List!55457 Int) Bool)

(assert (=> start!503562 (= res!2063044 (forall!12825 (toList!7734 lm!2671) lambda!240651))))

(assert (=> start!503562 e!3024592))

(declare-fun inv!70984 (ListLongMap!6275) Bool)

(assert (=> start!503562 (and (inv!70984 lm!2671) e!3024593)))

(assert (=> start!503562 true))

(declare-fun tp_is_empty!34915 () Bool)

(assert (=> start!503562 tp_is_empty!34915))

(declare-fun b!4839680 () Bool)

(declare-fun res!2063043 () Bool)

(assert (=> b!4839680 (=> (not res!2063043) (not e!3024592))))

(declare-datatypes ((Hashable!7406 0))(
  ( (HashableExt!7405 (__x!33681 Int)) )
))
(declare-fun hashF!1662 () Hashable!7406)

(declare-fun allKeysSameHashInMap!2722 (ListLongMap!6275 Hashable!7406) Bool)

(assert (=> b!4839680 (= res!2063043 (allKeysSameHashInMap!2722 lm!2671 hashF!1662))))

(declare-fun b!4839681 () Bool)

(assert (=> b!4839681 (= e!3024592 (not (forall!12825 (toList!7734 lm!2671) lambda!240651)))))

(declare-fun b!4839682 () Bool)

(declare-fun e!3024594 () Bool)

(declare-fun key!6540 () K!17084)

(declare-fun containsKey!4570 (List!55456 K!17084) Bool)

(assert (=> b!4839682 (= e!3024594 (not (containsKey!4570 (_2!32704 (h!61768 (toList!7734 lm!2671))) key!6540)))))

(declare-fun b!4839683 () Bool)

(declare-fun res!2063040 () Bool)

(assert (=> b!4839683 (=> (not res!2063040) (not e!3024592))))

(assert (=> b!4839683 (= res!2063040 e!3024594)))

(declare-fun res!2063041 () Bool)

(assert (=> b!4839683 (=> res!2063041 e!3024594)))

(assert (=> b!4839683 (= res!2063041 (not ((_ is Cons!55333) (toList!7734 lm!2671))))))

(declare-fun b!4839684 () Bool)

(declare-fun res!2063042 () Bool)

(assert (=> b!4839684 (=> (not res!2063042) (not e!3024592))))

(declare-fun containsKeyBiggerList!690 (List!55457 K!17084) Bool)

(assert (=> b!4839684 (= res!2063042 (containsKeyBiggerList!690 (toList!7734 lm!2671) key!6540))))

(assert (= (and start!503562 res!2063044) b!4839680))

(assert (= (and b!4839680 res!2063043) b!4839684))

(assert (= (and b!4839684 res!2063042) b!4839683))

(assert (= (and b!4839683 (not res!2063041)) b!4839682))

(assert (= (and b!4839683 res!2063040) b!4839679))

(assert (= (and b!4839679 res!2063039) b!4839681))

(assert (= start!503562 b!4839678))

(declare-fun m!5835436 () Bool)

(assert (=> b!4839680 m!5835436))

(declare-fun m!5835438 () Bool)

(assert (=> start!503562 m!5835438))

(declare-fun m!5835440 () Bool)

(assert (=> start!503562 m!5835440))

(declare-fun m!5835442 () Bool)

(assert (=> b!4839684 m!5835442))

(declare-fun m!5835444 () Bool)

(assert (=> b!4839682 m!5835444))

(assert (=> b!4839681 m!5835438))

(check-sat (not b!4839680) (not b!4839681) tp_is_empty!34915 (not b!4839678) (not b!4839682) (not start!503562) (not b!4839684))
(check-sat)
