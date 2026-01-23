; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499758 () Bool)

(assert start!499758)

(declare-fun b!4821762 () Bool)

(declare-fun e!3012659 () Bool)

(assert (=> b!4821762 (= e!3012659 false)))

(declare-fun b!4821763 () Bool)

(declare-fun res!2052192 () Bool)

(assert (=> b!4821763 (=> (not res!2052192) (not e!3012659))))

(declare-datatypes ((K!16609 0))(
  ( (K!16610 (val!21593 Int)) )
))
(declare-fun key!5428 () K!16609)

(declare-fun lt!1970210 () (_ BitVec 64))

(declare-datatypes ((V!16855 0))(
  ( (V!16856 (val!21594 Int)) )
))
(declare-datatypes ((tuple2!58122 0))(
  ( (tuple2!58123 (_1!32355 K!16609) (_2!32355 V!16855)) )
))
(declare-datatypes ((List!55050 0))(
  ( (Nil!54926) (Cons!54926 (h!61360 tuple2!58122) (t!362546 List!55050)) )
))
(declare-datatypes ((tuple2!58124 0))(
  ( (tuple2!58125 (_1!32356 (_ BitVec 64)) (_2!32356 List!55050)) )
))
(declare-datatypes ((List!55051 0))(
  ( (Nil!54927) (Cons!54927 (h!61361 tuple2!58124) (t!362547 List!55051)) )
))
(declare-datatypes ((ListLongMap!5959 0))(
  ( (ListLongMap!5960 (toList!7448 List!55051)) )
))
(declare-fun lm!2280 () ListLongMap!5959)

(declare-fun containsKey!4330 (List!55050 K!16609) Bool)

(declare-fun apply!13335 (ListLongMap!5959 (_ BitVec 64)) List!55050)

(assert (=> b!4821763 (= res!2052192 (not (containsKey!4330 (apply!13335 lm!2280 lt!1970210) key!5428)))))

(declare-fun res!2052190 () Bool)

(declare-fun e!3012661 () Bool)

(assert (=> start!499758 (=> (not res!2052190) (not e!3012661))))

(declare-fun lambda!235714 () Int)

(declare-fun forall!12570 (List!55051 Int) Bool)

(assert (=> start!499758 (= res!2052190 (forall!12570 (toList!7448 lm!2280) lambda!235714))))

(assert (=> start!499758 e!3012661))

(declare-fun e!3012660 () Bool)

(declare-fun inv!70509 (ListLongMap!5959) Bool)

(assert (=> start!499758 (and (inv!70509 lm!2280) e!3012660)))

(assert (=> start!499758 true))

(declare-fun tp_is_empty!34399 () Bool)

(assert (=> start!499758 tp_is_empty!34399))

(declare-fun b!4821761 () Bool)

(declare-fun tp!1362388 () Bool)

(assert (=> b!4821761 (= e!3012660 tp!1362388)))

(declare-fun b!4821764 () Bool)

(assert (=> b!4821764 (= e!3012661 e!3012659)))

(declare-fun res!2052191 () Bool)

(assert (=> b!4821764 (=> (not res!2052191) (not e!3012659))))

(declare-fun contains!18731 (ListLongMap!5959 (_ BitVec 64)) Bool)

(assert (=> b!4821764 (= res!2052191 (contains!18731 lm!2280 lt!1970210))))

(declare-datatypes ((Hashable!7248 0))(
  ( (HashableExt!7247 (__x!33523 Int)) )
))
(declare-fun hashF!1509 () Hashable!7248)

(declare-fun hash!5347 (Hashable!7248 K!16609) (_ BitVec 64))

(assert (=> b!4821764 (= lt!1970210 (hash!5347 hashF!1509 key!5428))))

(declare-fun b!4821765 () Bool)

(declare-fun res!2052193 () Bool)

(assert (=> b!4821765 (=> (not res!2052193) (not e!3012661))))

(declare-fun allKeysSameHashInMap!2564 (ListLongMap!5959 Hashable!7248) Bool)

(assert (=> b!4821765 (= res!2052193 (allKeysSameHashInMap!2564 lm!2280 hashF!1509))))

(assert (= (and start!499758 res!2052190) b!4821765))

(assert (= (and b!4821765 res!2052193) b!4821764))

(assert (= (and b!4821764 res!2052191) b!4821763))

(assert (= (and b!4821763 res!2052192) b!4821762))

(assert (= start!499758 b!4821761))

(declare-fun m!5809938 () Bool)

(assert (=> b!4821763 m!5809938))

(assert (=> b!4821763 m!5809938))

(declare-fun m!5809940 () Bool)

(assert (=> b!4821763 m!5809940))

(declare-fun m!5809942 () Bool)

(assert (=> start!499758 m!5809942))

(declare-fun m!5809944 () Bool)

(assert (=> start!499758 m!5809944))

(declare-fun m!5809946 () Bool)

(assert (=> b!4821764 m!5809946))

(declare-fun m!5809948 () Bool)

(assert (=> b!4821764 m!5809948))

(declare-fun m!5809950 () Bool)

(assert (=> b!4821765 m!5809950))

(check-sat (not b!4821763) tp_is_empty!34399 (not b!4821765) (not start!499758) (not b!4821764) (not b!4821761))
(check-sat)
