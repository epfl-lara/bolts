; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499030 () Bool)

(assert start!499030)

(declare-fun b!4818659 () Bool)

(declare-fun res!2050225 () Bool)

(declare-fun e!3010643 () Bool)

(assert (=> b!4818659 (=> (not res!2050225) (not e!3010643))))

(declare-datatypes ((V!16745 0))(
  ( (V!16746 (val!21505 Int)) )
))
(declare-datatypes ((K!16499 0))(
  ( (K!16500 (val!21506 Int)) )
))
(declare-datatypes ((tuple2!57946 0))(
  ( (tuple2!57947 (_1!32267 K!16499) (_2!32267 V!16745)) )
))
(declare-datatypes ((List!54955 0))(
  ( (Nil!54831) (Cons!54831 (h!61265 tuple2!57946) (t!362451 List!54955)) )
))
(declare-datatypes ((tuple2!57948 0))(
  ( (tuple2!57949 (_1!32268 (_ BitVec 64)) (_2!32268 List!54955)) )
))
(declare-datatypes ((List!54956 0))(
  ( (Nil!54832) (Cons!54832 (h!61266 tuple2!57948) (t!362452 List!54956)) )
))
(declare-datatypes ((ListLongMap!5871 0))(
  ( (ListLongMap!5872 (toList!7384 List!54956)) )
))
(declare-fun lt!1968335 () ListLongMap!5871)

(declare-datatypes ((Hashable!7204 0))(
  ( (HashableExt!7203 (__x!33479 Int)) )
))
(declare-fun hashF!1509 () Hashable!7204)

(declare-fun allKeysSameHashInMap!2520 (ListLongMap!5871 Hashable!7204) Bool)

(assert (=> b!4818659 (= res!2050225 (allKeysSameHashInMap!2520 lt!1968335 hashF!1509))))

(declare-fun b!4818661 () Bool)

(declare-fun e!3010640 () Bool)

(declare-fun tp!1362103 () Bool)

(assert (=> b!4818661 (= e!3010640 tp!1362103)))

(declare-fun b!4818662 () Bool)

(declare-fun res!2050222 () Bool)

(declare-fun e!3010642 () Bool)

(assert (=> b!4818662 (=> (not res!2050222) (not e!3010642))))

(declare-fun lm!2280 () ListLongMap!5871)

(assert (=> b!4818662 (= res!2050222 (allKeysSameHashInMap!2520 lm!2280 hashF!1509))))

(declare-fun b!4818663 () Bool)

(declare-fun res!2050226 () Bool)

(assert (=> b!4818663 (=> (not res!2050226) (not e!3010643))))

(declare-fun lt!1968336 () (_ BitVec 64))

(declare-fun contains!18658 (ListLongMap!5871 (_ BitVec 64)) Bool)

(assert (=> b!4818663 (= res!2050226 (not (contains!18658 lt!1968335 lt!1968336)))))

(declare-fun b!4818664 () Bool)

(assert (=> b!4818664 (= e!3010643 false)))

(declare-fun b!4818665 () Bool)

(declare-fun e!3010641 () Bool)

(assert (=> b!4818665 (= e!3010642 e!3010641)))

(declare-fun res!2050223 () Bool)

(assert (=> b!4818665 (=> (not res!2050223) (not e!3010641))))

(assert (=> b!4818665 (= res!2050223 (contains!18658 lm!2280 lt!1968336))))

(declare-fun key!5428 () K!16499)

(declare-fun hash!5282 (Hashable!7204 K!16499) (_ BitVec 64))

(assert (=> b!4818665 (= lt!1968336 (hash!5282 hashF!1509 key!5428))))

(declare-fun b!4818666 () Bool)

(declare-fun res!2050220 () Bool)

(assert (=> b!4818666 (=> (not res!2050220) (not e!3010641))))

(declare-fun containsKey!4264 (List!54955 K!16499) Bool)

(declare-fun apply!13291 (ListLongMap!5871 (_ BitVec 64)) List!54955)

(assert (=> b!4818666 (= res!2050220 (not (containsKey!4264 (apply!13291 lm!2280 lt!1968336) key!5428)))))

(declare-fun b!4818667 () Bool)

(assert (=> b!4818667 (= e!3010641 e!3010643)))

(declare-fun res!2050221 () Bool)

(assert (=> b!4818667 (=> (not res!2050221) (not e!3010643))))

(declare-fun lambda!235066 () Int)

(declare-fun forall!12518 (List!54956 Int) Bool)

(assert (=> b!4818667 (= res!2050221 (forall!12518 (toList!7384 lt!1968335) lambda!235066))))

(declare-fun tail!9358 (ListLongMap!5871) ListLongMap!5871)

(assert (=> b!4818667 (= lt!1968335 (tail!9358 lm!2280))))

(declare-fun res!2050224 () Bool)

(assert (=> start!499030 (=> (not res!2050224) (not e!3010642))))

(assert (=> start!499030 (= res!2050224 (forall!12518 (toList!7384 lm!2280) lambda!235066))))

(assert (=> start!499030 e!3010642))

(declare-fun inv!70399 (ListLongMap!5871) Bool)

(assert (=> start!499030 (and (inv!70399 lm!2280) e!3010640)))

(assert (=> start!499030 true))

(declare-fun tp_is_empty!34293 () Bool)

(assert (=> start!499030 tp_is_empty!34293))

(declare-fun b!4818660 () Bool)

(declare-fun res!2050227 () Bool)

(assert (=> b!4818660 (=> (not res!2050227) (not e!3010641))))

(get-info :version)

(assert (=> b!4818660 (= res!2050227 (and ((_ is Cons!54832) (toList!7384 lm!2280)) (= (_1!32268 (h!61266 (toList!7384 lm!2280))) lt!1968336)))))

(assert (= (and start!499030 res!2050224) b!4818662))

(assert (= (and b!4818662 res!2050222) b!4818665))

(assert (= (and b!4818665 res!2050223) b!4818666))

(assert (= (and b!4818666 res!2050220) b!4818660))

(assert (= (and b!4818660 res!2050227) b!4818667))

(assert (= (and b!4818667 res!2050221) b!4818659))

(assert (= (and b!4818659 res!2050225) b!4818663))

(assert (= (and b!4818663 res!2050226) b!4818664))

(assert (= start!499030 b!4818661))

(declare-fun m!5805558 () Bool)

(assert (=> start!499030 m!5805558))

(declare-fun m!5805560 () Bool)

(assert (=> start!499030 m!5805560))

(declare-fun m!5805562 () Bool)

(assert (=> b!4818663 m!5805562))

(declare-fun m!5805564 () Bool)

(assert (=> b!4818662 m!5805564))

(declare-fun m!5805566 () Bool)

(assert (=> b!4818666 m!5805566))

(assert (=> b!4818666 m!5805566))

(declare-fun m!5805568 () Bool)

(assert (=> b!4818666 m!5805568))

(declare-fun m!5805570 () Bool)

(assert (=> b!4818667 m!5805570))

(declare-fun m!5805572 () Bool)

(assert (=> b!4818667 m!5805572))

(declare-fun m!5805574 () Bool)

(assert (=> b!4818665 m!5805574))

(declare-fun m!5805576 () Bool)

(assert (=> b!4818665 m!5805576))

(declare-fun m!5805578 () Bool)

(assert (=> b!4818659 m!5805578))

(check-sat tp_is_empty!34293 (not b!4818666) (not b!4818665) (not b!4818659) (not b!4818667) (not b!4818661) (not b!4818662) (not start!499030) (not b!4818663))
(check-sat)
