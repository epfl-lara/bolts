; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484776 () Bool)

(assert start!484776)

(declare-fun b!4746761 () Bool)

(declare-fun res!2011987 () Bool)

(declare-fun e!2960828 () Bool)

(assert (=> b!4746761 (=> (not res!2011987) (not e!2960828))))

(declare-datatypes ((K!14345 0))(
  ( (K!14346 (val!19747 Int)) )
))
(declare-fun key!4653 () K!14345)

(declare-datatypes ((Hashable!6447 0))(
  ( (HashableExt!6446 (__x!32150 Int)) )
))
(declare-fun hashF!1323 () Hashable!6447)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4498 (Hashable!6447 K!14345) (_ BitVec 64))

(assert (=> b!4746761 (= res!2011987 (= (hash!4498 hashF!1323 key!4653) hash!405))))

(declare-fun b!4746762 () Bool)

(declare-fun res!2011983 () Bool)

(assert (=> b!4746762 (=> (not res!2011983) (not e!2960828))))

(declare-datatypes ((V!14591 0))(
  ( (V!14592 (val!19748 Int)) )
))
(declare-datatypes ((tuple2!54706 0))(
  ( (tuple2!54707 (_1!30647 K!14345) (_2!30647 V!14591)) )
))
(declare-datatypes ((List!53129 0))(
  ( (Nil!53005) (Cons!53005 (h!59400 tuple2!54706) (t!360437 List!53129)) )
))
(declare-fun newBucket!218 () List!53129)

(declare-fun allKeysSameHash!1904 (List!53129 (_ BitVec 64) Hashable!6447) Bool)

(assert (=> b!4746762 (= res!2011983 (allKeysSameHash!1904 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4746763 () Bool)

(declare-fun res!2011990 () Bool)

(assert (=> b!4746763 (=> (not res!2011990) (not e!2960828))))

(declare-datatypes ((tuple2!54708 0))(
  ( (tuple2!54709 (_1!30648 (_ BitVec 64)) (_2!30648 List!53129)) )
))
(declare-datatypes ((List!53130 0))(
  ( (Nil!53006) (Cons!53006 (h!59401 tuple2!54708) (t!360438 List!53130)) )
))
(declare-datatypes ((ListLongMap!4575 0))(
  ( (ListLongMap!4576 (toList!6045 List!53130)) )
))
(declare-fun lm!2023 () ListLongMap!4575)

(declare-fun oldBucket!34 () List!53129)

(declare-fun head!10350 (List!53130) tuple2!54708)

(assert (=> b!4746763 (= res!2011990 (= (head!10350 (toList!6045 lm!2023)) (tuple2!54709 hash!405 oldBucket!34)))))

(declare-fun b!4746764 () Bool)

(declare-fun res!2011980 () Bool)

(declare-fun e!2960830 () Bool)

(assert (=> b!4746764 (=> (not res!2011980) (not e!2960830))))

(declare-fun removePairForKey!1673 (List!53129 K!14345) List!53129)

(assert (=> b!4746764 (= res!2011980 (= (removePairForKey!1673 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4746765 () Bool)

(declare-fun res!2011981 () Bool)

(assert (=> b!4746765 (=> (not res!2011981) (not e!2960830))))

(declare-fun noDuplicateKeys!2078 (List!53129) Bool)

(assert (=> b!4746765 (= res!2011981 (noDuplicateKeys!2078 newBucket!218))))

(declare-fun b!4746766 () Bool)

(declare-fun res!2011984 () Bool)

(assert (=> b!4746766 (=> (not res!2011984) (not e!2960828))))

(declare-fun allKeysSameHashInMap!1992 (ListLongMap!4575 Hashable!6447) Bool)

(assert (=> b!4746766 (= res!2011984 (allKeysSameHashInMap!1992 lm!2023 hashF!1323))))

(declare-fun b!4746767 () Bool)

(declare-fun res!2011988 () Bool)

(assert (=> b!4746767 (=> (not res!2011988) (not e!2960828))))

(get-info :version)

(assert (=> b!4746767 (= res!2011988 ((_ is Cons!53006) (toList!6045 lm!2023)))))

(declare-fun b!4746768 () Bool)

(assert (=> b!4746768 (= e!2960830 e!2960828)))

(declare-fun res!2011989 () Bool)

(assert (=> b!4746768 (=> (not res!2011989) (not e!2960828))))

(declare-datatypes ((ListMap!5409 0))(
  ( (ListMap!5410 (toList!6046 List!53129)) )
))
(declare-fun lt!1909105 () ListMap!5409)

(declare-fun contains!16432 (ListMap!5409 K!14345) Bool)

(assert (=> b!4746768 (= res!2011989 (contains!16432 lt!1909105 key!4653))))

(declare-fun extractMap!2104 (List!53130) ListMap!5409)

(assert (=> b!4746768 (= lt!1909105 (extractMap!2104 (toList!6045 lm!2023)))))

(declare-fun b!4746769 () Bool)

(declare-fun tp_is_empty!31605 () Bool)

(declare-fun e!2960827 () Bool)

(declare-fun tp!1349584 () Bool)

(declare-fun tp_is_empty!31607 () Bool)

(assert (=> b!4746769 (= e!2960827 (and tp_is_empty!31605 tp_is_empty!31607 tp!1349584))))

(declare-fun b!4746770 () Bool)

(assert (=> b!4746770 (= e!2960828 (not (or (and ((_ is Cons!53005) oldBucket!34) (= (_1!30647 (h!59400 oldBucket!34)) key!4653)) (and ((_ is Cons!53005) oldBucket!34) (not (= (_1!30647 (h!59400 oldBucket!34)) key!4653))) ((_ is Nil!53005) oldBucket!34))))))

(declare-fun e!2960826 () Bool)

(assert (=> b!4746770 e!2960826))

(declare-fun res!2011985 () Bool)

(assert (=> b!4746770 (=> (not res!2011985) (not e!2960826))))

(declare-fun tail!9159 (ListLongMap!4575) ListLongMap!4575)

(assert (=> b!4746770 (= res!2011985 (= (t!360438 (toList!6045 lm!2023)) (toList!6045 (tail!9159 lm!2023))))))

(declare-fun b!4746771 () Bool)

(declare-fun addToMapMapFromBucket!1508 (List!53129 ListMap!5409) ListMap!5409)

(assert (=> b!4746771 (= e!2960826 (= lt!1909105 (addToMapMapFromBucket!1508 (_2!30648 (h!59401 (toList!6045 lm!2023))) (extractMap!2104 (t!360438 (toList!6045 lm!2023))))))))

(declare-fun res!2011991 () Bool)

(assert (=> start!484776 (=> (not res!2011991) (not e!2960830))))

(declare-fun lambda!220452 () Int)

(declare-fun forall!11721 (List!53130 Int) Bool)

(assert (=> start!484776 (= res!2011991 (forall!11721 (toList!6045 lm!2023) lambda!220452))))

(assert (=> start!484776 e!2960830))

(declare-fun e!2960825 () Bool)

(declare-fun inv!68219 (ListLongMap!4575) Bool)

(assert (=> start!484776 (and (inv!68219 lm!2023) e!2960825)))

(assert (=> start!484776 tp_is_empty!31605))

(declare-fun e!2960829 () Bool)

(assert (=> start!484776 e!2960829))

(assert (=> start!484776 true))

(assert (=> start!484776 e!2960827))

(declare-fun b!4746772 () Bool)

(declare-fun tp!1349585 () Bool)

(assert (=> b!4746772 (= e!2960829 (and tp_is_empty!31605 tp_is_empty!31607 tp!1349585))))

(declare-fun b!4746773 () Bool)

(declare-fun res!2011982 () Bool)

(assert (=> b!4746773 (=> (not res!2011982) (not e!2960830))))

(assert (=> b!4746773 (= res!2011982 (noDuplicateKeys!2078 oldBucket!34))))

(declare-fun b!4746774 () Bool)

(declare-fun tp!1349583 () Bool)

(assert (=> b!4746774 (= e!2960825 tp!1349583)))

(declare-fun b!4746775 () Bool)

(declare-fun res!2011986 () Bool)

(assert (=> b!4746775 (=> (not res!2011986) (not e!2960830))))

(assert (=> b!4746775 (= res!2011986 (allKeysSameHash!1904 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!484776 res!2011991) b!4746773))

(assert (= (and b!4746773 res!2011982) b!4746765))

(assert (= (and b!4746765 res!2011981) b!4746764))

(assert (= (and b!4746764 res!2011980) b!4746775))

(assert (= (and b!4746775 res!2011986) b!4746768))

(assert (= (and b!4746768 res!2011989) b!4746761))

(assert (= (and b!4746761 res!2011987) b!4746762))

(assert (= (and b!4746762 res!2011983) b!4746766))

(assert (= (and b!4746766 res!2011984) b!4746763))

(assert (= (and b!4746763 res!2011990) b!4746767))

(assert (= (and b!4746767 res!2011988) b!4746770))

(assert (= (and b!4746770 res!2011985) b!4746771))

(assert (= start!484776 b!4746774))

(assert (= (and start!484776 ((_ is Cons!53005) oldBucket!34)) b!4746772))

(assert (= (and start!484776 ((_ is Cons!53005) newBucket!218)) b!4746769))

(declare-fun m!5704041 () Bool)

(assert (=> b!4746765 m!5704041))

(declare-fun m!5704043 () Bool)

(assert (=> b!4746770 m!5704043))

(declare-fun m!5704045 () Bool)

(assert (=> b!4746771 m!5704045))

(assert (=> b!4746771 m!5704045))

(declare-fun m!5704047 () Bool)

(assert (=> b!4746771 m!5704047))

(declare-fun m!5704049 () Bool)

(assert (=> b!4746766 m!5704049))

(declare-fun m!5704051 () Bool)

(assert (=> b!4746763 m!5704051))

(declare-fun m!5704053 () Bool)

(assert (=> b!4746764 m!5704053))

(declare-fun m!5704055 () Bool)

(assert (=> start!484776 m!5704055))

(declare-fun m!5704057 () Bool)

(assert (=> start!484776 m!5704057))

(declare-fun m!5704059 () Bool)

(assert (=> b!4746762 m!5704059))

(declare-fun m!5704061 () Bool)

(assert (=> b!4746761 m!5704061))

(declare-fun m!5704063 () Bool)

(assert (=> b!4746773 m!5704063))

(declare-fun m!5704065 () Bool)

(assert (=> b!4746768 m!5704065))

(declare-fun m!5704067 () Bool)

(assert (=> b!4746768 m!5704067))

(declare-fun m!5704069 () Bool)

(assert (=> b!4746775 m!5704069))

(check-sat (not b!4746763) (not b!4746761) (not b!4746765) tp_is_empty!31605 (not b!4746773) (not b!4746766) (not b!4746762) (not b!4746775) tp_is_empty!31607 (not b!4746769) (not b!4746771) (not b!4746772) (not b!4746774) (not b!4746770) (not start!484776) (not b!4746768) (not b!4746764))
(check-sat)
