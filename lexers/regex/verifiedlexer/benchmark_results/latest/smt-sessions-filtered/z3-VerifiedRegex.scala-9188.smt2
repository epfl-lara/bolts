; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!489030 () Bool)

(assert start!489030)

(declare-fun b!4773545 () Bool)

(declare-fun res!2025128 () Bool)

(declare-fun e!2980045 () Bool)

(assert (=> b!4773545 (=> (not res!2025128) (not e!2980045))))

(declare-datatypes ((K!15229 0))(
  ( (K!15230 (val!20489 Int)) )
))
(declare-datatypes ((V!15475 0))(
  ( (V!15476 (val!20490 Int)) )
))
(declare-datatypes ((tuple2!55952 0))(
  ( (tuple2!55953 (_1!31270 K!15229) (_2!31270 V!15475)) )
))
(declare-datatypes ((List!53831 0))(
  ( (Nil!53707) (Cons!53707 (h!60121 tuple2!55952) (t!361281 List!53831)) )
))
(declare-datatypes ((tuple2!55954 0))(
  ( (tuple2!55955 (_1!31271 (_ BitVec 64)) (_2!31271 List!53831)) )
))
(declare-datatypes ((List!53832 0))(
  ( (Nil!53708) (Cons!53708 (h!60122 tuple2!55954) (t!361282 List!53832)) )
))
(declare-datatypes ((ListLongMap!4893 0))(
  ( (ListLongMap!4894 (toList!6479 List!53832)) )
))
(declare-fun lm!1309 () ListLongMap!4893)

(declare-datatypes ((Hashable!6696 0))(
  ( (HashableExt!6695 (__x!32719 Int)) )
))
(declare-fun hashF!980 () Hashable!6696)

(declare-fun allKeysSameHashInMap!2101 (ListLongMap!4893 Hashable!6696) Bool)

(assert (=> b!4773545 (= res!2025128 (allKeysSameHashInMap!2101 lm!1309 hashF!980))))

(declare-fun b!4773547 () Bool)

(declare-fun lambda!225885 () Int)

(declare-fun forall!11964 (List!53832 Int) Bool)

(assert (=> b!4773547 (= e!2980045 (not (forall!11964 (toList!6479 lm!1309) lambda!225885)))))

(declare-fun lt!1936217 () tuple2!55954)

(declare-datatypes ((Unit!138696 0))(
  ( (Unit!138697) )
))
(declare-fun lt!1936216 () Unit!138696)

(declare-fun forallContained!3937 (List!53832 Int tuple2!55954) Unit!138696)

(assert (=> b!4773547 (= lt!1936216 (forallContained!3937 (toList!6479 lm!1309) lambda!225885 lt!1936217))))

(declare-fun contains!17134 (List!53832 tuple2!55954) Bool)

(assert (=> b!4773547 (contains!17134 (toList!6479 lm!1309) lt!1936217)))

(declare-fun lt!1936221 () (_ BitVec 64))

(declare-fun lt!1936218 () List!53831)

(assert (=> b!4773547 (= lt!1936217 (tuple2!55955 lt!1936221 lt!1936218))))

(declare-fun lt!1936220 () Unit!138696)

(declare-fun lemmaGetValueImpliesTupleContained!499 (ListLongMap!4893 (_ BitVec 64) List!53831) Unit!138696)

(assert (=> b!4773547 (= lt!1936220 (lemmaGetValueImpliesTupleContained!499 lm!1309 lt!1936221 lt!1936218))))

(declare-fun apply!12759 (ListLongMap!4893 (_ BitVec 64)) List!53831)

(assert (=> b!4773547 (= lt!1936218 (apply!12759 lm!1309 lt!1936221))))

(declare-fun contains!17135 (ListLongMap!4893 (_ BitVec 64)) Bool)

(assert (=> b!4773547 (contains!17135 lm!1309 lt!1936221)))

(declare-fun key!2872 () K!15229)

(declare-fun hash!4671 (Hashable!6696 K!15229) (_ BitVec 64))

(assert (=> b!4773547 (= lt!1936221 (hash!4671 hashF!980 key!2872))))

(declare-fun lt!1936219 () Unit!138696)

(declare-fun lemmaInGenMapThenLongMapContainsHash!908 (ListLongMap!4893 K!15229 Hashable!6696) Unit!138696)

(assert (=> b!4773547 (= lt!1936219 (lemmaInGenMapThenLongMapContainsHash!908 lm!1309 key!2872 hashF!980))))

(declare-fun b!4773546 () Bool)

(declare-fun res!2025127 () Bool)

(assert (=> b!4773546 (=> (not res!2025127) (not e!2980045))))

(declare-datatypes ((ListMap!5959 0))(
  ( (ListMap!5960 (toList!6480 List!53831)) )
))
(declare-fun contains!17136 (ListMap!5959 K!15229) Bool)

(declare-fun extractMap!2231 (List!53832) ListMap!5959)

(assert (=> b!4773546 (= res!2025127 (contains!17136 (extractMap!2231 (toList!6479 lm!1309)) key!2872))))

(declare-fun b!4773548 () Bool)

(declare-fun e!2980046 () Bool)

(declare-fun tp!1356834 () Bool)

(assert (=> b!4773548 (= e!2980046 tp!1356834)))

(declare-fun res!2025126 () Bool)

(assert (=> start!489030 (=> (not res!2025126) (not e!2980045))))

(assert (=> start!489030 (= res!2025126 (forall!11964 (toList!6479 lm!1309) lambda!225885))))

(assert (=> start!489030 e!2980045))

(declare-fun inv!69255 (ListLongMap!4893) Bool)

(assert (=> start!489030 (and (inv!69255 lm!1309) e!2980046)))

(assert (=> start!489030 true))

(declare-fun tp_is_empty!32767 () Bool)

(assert (=> start!489030 tp_is_empty!32767))

(assert (= (and start!489030 res!2025126) b!4773545))

(assert (= (and b!4773545 res!2025128) b!4773546))

(assert (= (and b!4773546 res!2025127) b!4773547))

(assert (= start!489030 b!4773548))

(declare-fun m!5746904 () Bool)

(assert (=> b!4773545 m!5746904))

(declare-fun m!5746906 () Bool)

(assert (=> b!4773547 m!5746906))

(declare-fun m!5746908 () Bool)

(assert (=> b!4773547 m!5746908))

(declare-fun m!5746910 () Bool)

(assert (=> b!4773547 m!5746910))

(declare-fun m!5746912 () Bool)

(assert (=> b!4773547 m!5746912))

(declare-fun m!5746914 () Bool)

(assert (=> b!4773547 m!5746914))

(declare-fun m!5746916 () Bool)

(assert (=> b!4773547 m!5746916))

(declare-fun m!5746918 () Bool)

(assert (=> b!4773547 m!5746918))

(declare-fun m!5746920 () Bool)

(assert (=> b!4773547 m!5746920))

(declare-fun m!5746922 () Bool)

(assert (=> b!4773546 m!5746922))

(assert (=> b!4773546 m!5746922))

(declare-fun m!5746924 () Bool)

(assert (=> b!4773546 m!5746924))

(assert (=> start!489030 m!5746914))

(declare-fun m!5746926 () Bool)

(assert (=> start!489030 m!5746926))

(check-sat (not b!4773548) (not b!4773546) (not b!4773547) (not b!4773545) tp_is_empty!32767 (not start!489030))
(check-sat)
