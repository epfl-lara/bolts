; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!415618 () Bool)

(assert start!415618)

(declare-fun b!4319079 () Bool)

(declare-fun b_free!128931 () Bool)

(declare-fun b_next!129635 () Bool)

(assert (=> b!4319079 (= b_free!128931 (not b_next!129635))))

(declare-fun tp!1326656 () Bool)

(declare-fun b_and!340451 () Bool)

(assert (=> b!4319079 (= tp!1326656 b_and!340451)))

(declare-fun b!4319083 () Bool)

(declare-fun b_free!128933 () Bool)

(declare-fun b_next!129637 () Bool)

(assert (=> b!4319083 (= b_free!128933 (not b_next!129637))))

(declare-fun tp!1326662 () Bool)

(declare-fun b_and!340453 () Bool)

(assert (=> b!4319083 (= tp!1326662 b_and!340453)))

(declare-fun e!2687004 () Bool)

(declare-fun lt!1537608 () (_ BitVec 64))

(declare-datatypes ((K!9604 0))(
  ( (K!9605 (val!15941 Int)) )
))
(declare-datatypes ((V!9806 0))(
  ( (V!9807 (val!15942 Int)) )
))
(declare-datatypes ((tuple2!47120 0))(
  ( (tuple2!47121 (_1!26845 K!9604) (_2!26845 V!9806)) )
))
(declare-datatypes ((List!48481 0))(
  ( (Nil!48357) (Cons!48357 (h!53814 tuple2!47120) (t!355350 List!48481)) )
))
(declare-fun lt!1537611 () List!48481)

(declare-fun b!4319071 () Bool)

(declare-datatypes ((array!17186 0))(
  ( (array!17187 (arr!7671 (Array (_ BitVec 32) (_ BitVec 64))) (size!35710 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4659 0))(
  ( (HashableExt!4658 (__x!30254 Int)) )
))
(declare-datatypes ((array!17188 0))(
  ( (array!17189 (arr!7672 (Array (_ BitVec 32) List!48481)) (size!35711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9486 0))(
  ( (LongMapFixedSize!9487 (defaultEntry!5128 Int) (mask!13343 (_ BitVec 32)) (extraKeys!4992 (_ BitVec 32)) (zeroValue!5002 List!48481) (minValue!5002 List!48481) (_size!9529 (_ BitVec 32)) (_keys!5043 array!17186) (_values!5024 array!17188) (_vacant!4804 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18781 0))(
  ( (Cell!18782 (v!42702 LongMapFixedSize!9486)) )
))
(declare-datatypes ((MutLongMap!4743 0))(
  ( (LongMap!4743 (underlying!9715 Cell!18781)) (MutLongMapExt!4742 (__x!30255 Int)) )
))
(declare-datatypes ((Cell!18783 0))(
  ( (Cell!18784 (v!42703 MutLongMap!4743)) )
))
(declare-datatypes ((MutableMap!4649 0))(
  ( (MutableMapExt!4648 (__x!30256 Int)) (HashMap!4649 (underlying!9716 Cell!18783) (hashF!6889 Hashable!4659) (_size!9530 (_ BitVec 32)) (defaultValue!4820 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4649)

(declare-fun allKeysSameHash!235 (List!48481 (_ BitVec 64) Hashable!4659) Bool)

(assert (=> b!4319071 (= e!2687004 (not (allKeysSameHash!235 lt!1537611 lt!1537608 (hashF!6889 thiss!42308))))))

(declare-fun b!4319072 () Bool)

(declare-fun e!2687002 () Bool)

(declare-fun tp!1326657 () Bool)

(declare-fun mapRes!21145 () Bool)

(assert (=> b!4319072 (= e!2687002 (and tp!1326657 mapRes!21145))))

(declare-fun condMapEmpty!21145 () Bool)

(declare-fun mapDefault!21145 () List!48481)

(assert (=> b!4319072 (= condMapEmpty!21145 (= (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48481)) mapDefault!21145)))))

(declare-fun b!4319073 () Bool)

(declare-fun res!1770078 () Bool)

(assert (=> b!4319073 (=> (not res!1770078) (not e!2687004))))

(declare-datatypes ((tuple2!47122 0))(
  ( (tuple2!47123 (_1!26846 (_ BitVec 64)) (_2!26846 List!48481)) )
))
(declare-datatypes ((List!48482 0))(
  ( (Nil!48358) (Cons!48358 (h!53815 tuple2!47122) (t!355351 List!48482)) )
))
(declare-datatypes ((ListLongMap!1153 0))(
  ( (ListLongMap!1154 (toList!2537 List!48482)) )
))
(declare-fun lt!1537605 () ListLongMap!1153)

(declare-fun allKeysSameHashInMap!382 (ListLongMap!1153 Hashable!4659) Bool)

(assert (=> b!4319073 (= res!1770078 (allKeysSameHashInMap!382 lt!1537605 (hashF!6889 thiss!42308)))))

(declare-fun b!4319074 () Bool)

(declare-datatypes ((Unit!67649 0))(
  ( (Unit!67650) )
))
(declare-fun e!2686994 () Unit!67649)

(declare-fun Unit!67651 () Unit!67649)

(assert (=> b!4319074 (= e!2686994 Unit!67651)))

(declare-fun b!4319075 () Bool)

(declare-fun e!2686995 () Bool)

(declare-fun e!2687005 () Bool)

(assert (=> b!4319075 (= e!2686995 e!2687005)))

(declare-fun res!1770076 () Bool)

(assert (=> b!4319075 (=> (not res!1770076) (not e!2687005))))

(declare-datatypes ((tuple2!47124 0))(
  ( (tuple2!47125 (_1!26847 Bool) (_2!26847 MutLongMap!4743)) )
))
(declare-fun update!518 (MutLongMap!4743 (_ BitVec 64) List!48481) tuple2!47124)

(assert (=> b!4319075 (= res!1770076 (_1!26847 (update!518 (v!42703 (underlying!9716 thiss!42308)) lt!1537608 lt!1537611)))))

(declare-fun lt!1537603 () List!48481)

(declare-fun v!9179 () V!9806)

(declare-fun key!2048 () K!9604)

(assert (=> b!4319075 (= lt!1537611 (Cons!48357 (tuple2!47121 key!2048 v!9179) lt!1537603))))

(declare-fun e!2687006 () List!48481)

(assert (=> b!4319075 (= lt!1537603 e!2687006)))

(declare-fun c!734409 () Bool)

(declare-fun contains!10394 (MutLongMap!4743 (_ BitVec 64)) Bool)

(assert (=> b!4319075 (= c!734409 (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537608))))

(declare-fun hash!1154 (Hashable!4659 K!9604) (_ BitVec 64))

(assert (=> b!4319075 (= lt!1537608 (hash!1154 (hashF!6889 thiss!42308) key!2048))))

(declare-fun b!4319077 () Bool)

(declare-fun lt!1537604 () Unit!67649)

(assert (=> b!4319077 (= e!2686994 lt!1537604)))

(declare-fun lt!1537607 () Unit!67649)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!220 (List!48482 (_ BitVec 64) List!48481 Hashable!4659) Unit!67649)

(assert (=> b!4319077 (= lt!1537607 (lemmaInLongMapAllKeySameHashThenForTuple!220 (toList!2537 lt!1537605) lt!1537608 lt!1537603 (hashF!6889 thiss!42308)))))

(assert (=> b!4319077 (allKeysSameHash!235 lt!1537603 lt!1537608 (hashF!6889 thiss!42308))))

(declare-fun lemmaRemovePairForKeyPreservesHash!211 (List!48481 K!9604 (_ BitVec 64) Hashable!4659) Unit!67649)

(assert (=> b!4319077 (= lt!1537604 (lemmaRemovePairForKeyPreservesHash!211 lt!1537603 key!2048 lt!1537608 (hashF!6889 thiss!42308)))))

(declare-fun removePairForKey!258 (List!48481 K!9604) List!48481)

(assert (=> b!4319077 (allKeysSameHash!235 (removePairForKey!258 lt!1537603 key!2048) lt!1537608 (hashF!6889 thiss!42308))))

(declare-fun b!4319078 () Bool)

(declare-fun res!1770077 () Bool)

(assert (=> b!4319078 (=> (not res!1770077) (not e!2687004))))

(declare-fun noDuplicateKeys!259 (List!48481) Bool)

(assert (=> b!4319078 (= res!1770077 (noDuplicateKeys!259 lt!1537611))))

(declare-fun e!2686996 () Bool)

(declare-fun tp!1326658 () Bool)

(declare-fun tp!1326661 () Bool)

(declare-fun array_inv!5519 (array!17186) Bool)

(declare-fun array_inv!5520 (array!17188) Bool)

(assert (=> b!4319079 (= e!2686996 (and tp!1326656 tp!1326661 tp!1326658 (array_inv!5519 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (array_inv!5520 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) e!2687002))))

(declare-fun mapNonEmpty!21145 () Bool)

(declare-fun tp!1326660 () Bool)

(declare-fun tp!1326659 () Bool)

(assert (=> mapNonEmpty!21145 (= mapRes!21145 (and tp!1326660 tp!1326659))))

(declare-fun mapKey!21145 () (_ BitVec 32))

(declare-fun mapRest!21145 () (Array (_ BitVec 32) List!48481))

(declare-fun mapValue!21145 () List!48481)

(assert (=> mapNonEmpty!21145 (= (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (store mapRest!21145 mapKey!21145 mapValue!21145))))

(declare-fun b!4319080 () Bool)

(declare-fun e!2686999 () Bool)

(assert (=> b!4319080 (= e!2686999 e!2686996)))

(declare-fun b!4319081 () Bool)

(assert (=> b!4319081 (= e!2687005 e!2687004)))

(declare-fun res!1770075 () Bool)

(assert (=> b!4319081 (=> (not res!1770075) (not e!2687004))))

(declare-fun lambda!133648 () Int)

(declare-fun forall!8800 (List!48482 Int) Bool)

(assert (=> b!4319081 (= res!1770075 (forall!8800 (toList!2537 lt!1537605) lambda!133648))))

(declare-fun lt!1537610 () Unit!67649)

(assert (=> b!4319081 (= lt!1537610 e!2686994)))

(declare-fun c!734410 () Bool)

(declare-fun isEmpty!28108 (List!48481) Bool)

(assert (=> b!4319081 (= c!734410 (not (isEmpty!28108 lt!1537603)))))

(declare-fun b!4319082 () Bool)

(assert (=> b!4319082 (= e!2687006 Nil!48357)))

(declare-fun e!2687000 () Bool)

(declare-fun e!2686997 () Bool)

(assert (=> b!4319083 (= e!2687000 (and e!2686997 tp!1326662))))

(declare-fun b!4319084 () Bool)

(declare-fun e!2687003 () Bool)

(assert (=> b!4319084 (= e!2687003 e!2686999)))

(declare-fun res!1770074 () Bool)

(declare-fun e!2687001 () Bool)

(assert (=> start!415618 (=> (not res!1770074) (not e!2687001))))

(get-info :version)

(assert (=> start!415618 (= res!1770074 ((_ is HashMap!4649) thiss!42308))))

(assert (=> start!415618 e!2687001))

(assert (=> start!415618 e!2687000))

(declare-fun tp_is_empty!24069 () Bool)

(assert (=> start!415618 tp_is_empty!24069))

(declare-fun tp_is_empty!24071 () Bool)

(assert (=> start!415618 tp_is_empty!24071))

(declare-fun b!4319076 () Bool)

(declare-fun apply!11125 (MutLongMap!4743 (_ BitVec 64)) List!48481)

(assert (=> b!4319076 (= e!2687006 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537608))))

(declare-fun b!4319085 () Bool)

(declare-fun lt!1537606 () MutLongMap!4743)

(assert (=> b!4319085 (= e!2686997 (and e!2687003 ((_ is LongMap!4743) lt!1537606)))))

(assert (=> b!4319085 (= lt!1537606 (v!42703 (underlying!9716 thiss!42308)))))

(declare-fun b!4319086 () Bool)

(declare-fun res!1770073 () Bool)

(assert (=> b!4319086 (=> (not res!1770073) (not e!2687001))))

(declare-fun valid!3752 (MutableMap!4649) Bool)

(assert (=> b!4319086 (= res!1770073 (valid!3752 thiss!42308))))

(declare-fun mapIsEmpty!21145 () Bool)

(assert (=> mapIsEmpty!21145 mapRes!21145))

(declare-fun b!4319087 () Bool)

(assert (=> b!4319087 (= e!2687001 e!2686995)))

(declare-fun res!1770079 () Bool)

(assert (=> b!4319087 (=> (not res!1770079) (not e!2686995))))

(declare-fun contains!10395 (MutableMap!4649 K!9604) Bool)

(assert (=> b!4319087 (= res!1770079 (not (contains!10395 thiss!42308 key!2048)))))

(declare-fun map!10380 (MutLongMap!4743) ListLongMap!1153)

(assert (=> b!4319087 (= lt!1537605 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))

(declare-datatypes ((ListMap!1815 0))(
  ( (ListMap!1816 (toList!2538 List!48481)) )
))
(declare-fun lt!1537609 () ListMap!1815)

(declare-fun map!10381 (MutableMap!4649) ListMap!1815)

(assert (=> b!4319087 (= lt!1537609 (map!10381 thiss!42308))))

(assert (= (and start!415618 res!1770074) b!4319086))

(assert (= (and b!4319086 res!1770073) b!4319087))

(assert (= (and b!4319087 res!1770079) b!4319075))

(assert (= (and b!4319075 c!734409) b!4319076))

(assert (= (and b!4319075 (not c!734409)) b!4319082))

(assert (= (and b!4319075 res!1770076) b!4319081))

(assert (= (and b!4319081 c!734410) b!4319077))

(assert (= (and b!4319081 (not c!734410)) b!4319074))

(assert (= (and b!4319081 res!1770075) b!4319073))

(assert (= (and b!4319073 res!1770078) b!4319078))

(assert (= (and b!4319078 res!1770077) b!4319071))

(assert (= (and b!4319072 condMapEmpty!21145) mapIsEmpty!21145))

(assert (= (and b!4319072 (not condMapEmpty!21145)) mapNonEmpty!21145))

(assert (= b!4319079 b!4319072))

(assert (= b!4319080 b!4319079))

(assert (= b!4319084 b!4319080))

(assert (= (and b!4319085 ((_ is LongMap!4743) (v!42703 (underlying!9716 thiss!42308)))) b!4319084))

(assert (= b!4319083 b!4319085))

(assert (= (and start!415618 ((_ is HashMap!4649) thiss!42308)) b!4319083))

(declare-fun m!4912611 () Bool)

(assert (=> b!4319076 m!4912611))

(declare-fun m!4912613 () Bool)

(assert (=> b!4319077 m!4912613))

(declare-fun m!4912615 () Bool)

(assert (=> b!4319077 m!4912615))

(assert (=> b!4319077 m!4912613))

(declare-fun m!4912617 () Bool)

(assert (=> b!4319077 m!4912617))

(declare-fun m!4912619 () Bool)

(assert (=> b!4319077 m!4912619))

(declare-fun m!4912621 () Bool)

(assert (=> b!4319077 m!4912621))

(declare-fun m!4912623 () Bool)

(assert (=> mapNonEmpty!21145 m!4912623))

(declare-fun m!4912625 () Bool)

(assert (=> b!4319073 m!4912625))

(declare-fun m!4912627 () Bool)

(assert (=> b!4319078 m!4912627))

(declare-fun m!4912629 () Bool)

(assert (=> b!4319071 m!4912629))

(declare-fun m!4912631 () Bool)

(assert (=> b!4319087 m!4912631))

(declare-fun m!4912633 () Bool)

(assert (=> b!4319087 m!4912633))

(declare-fun m!4912635 () Bool)

(assert (=> b!4319087 m!4912635))

(declare-fun m!4912637 () Bool)

(assert (=> b!4319081 m!4912637))

(declare-fun m!4912639 () Bool)

(assert (=> b!4319081 m!4912639))

(declare-fun m!4912641 () Bool)

(assert (=> b!4319075 m!4912641))

(declare-fun m!4912643 () Bool)

(assert (=> b!4319075 m!4912643))

(declare-fun m!4912645 () Bool)

(assert (=> b!4319075 m!4912645))

(declare-fun m!4912647 () Bool)

(assert (=> b!4319079 m!4912647))

(declare-fun m!4912649 () Bool)

(assert (=> b!4319079 m!4912649))

(declare-fun m!4912651 () Bool)

(assert (=> b!4319086 m!4912651))

(check-sat (not b_next!129635) (not b_next!129637) tp_is_empty!24071 (not b!4319086) (not b!4319075) (not mapNonEmpty!21145) (not b!4319078) b_and!340451 (not b!4319081) (not b!4319079) tp_is_empty!24069 (not b!4319077) (not b!4319073) b_and!340453 (not b!4319076) (not b!4319087) (not b!4319071) (not b!4319072))
(check-sat b_and!340451 b_and!340453 (not b_next!129637) (not b_next!129635))
(get-model)

(declare-fun b!4319106 () Bool)

(declare-fun e!2687017 () tuple2!47124)

(declare-fun lt!1537622 () tuple2!47124)

(assert (=> b!4319106 (= e!2687017 (tuple2!47125 false (_2!26847 lt!1537622)))))

(declare-fun b!4319108 () Bool)

(declare-fun e!2687021 () tuple2!47124)

(declare-fun lt!1537620 () tuple2!47124)

(assert (=> b!4319108 (= e!2687021 (tuple2!47125 (_1!26847 lt!1537620) (_2!26847 lt!1537620)))))

(declare-fun repack!81 (MutLongMap!4743) tuple2!47124)

(assert (=> b!4319108 (= lt!1537620 (repack!81 (v!42703 (underlying!9716 thiss!42308))))))

(declare-fun b!4319109 () Bool)

(declare-fun e!2687018 () Bool)

(declare-fun call!299126 () ListLongMap!1153)

(declare-fun call!299125 () ListLongMap!1153)

(declare-fun +!322 (ListLongMap!1153 tuple2!47122) ListLongMap!1153)

(assert (=> b!4319109 (= e!2687018 (= call!299126 (+!322 call!299125 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun lt!1537623 () tuple2!47124)

(declare-fun bm!299120 () Bool)

(declare-fun c!734418 () Bool)

(assert (=> bm!299120 (= call!299126 (map!10380 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))))

(declare-fun b!4319110 () Bool)

(declare-datatypes ((tuple2!47126 0))(
  ( (tuple2!47127 (_1!26848 Bool) (_2!26848 LongMapFixedSize!9486)) )
))
(declare-fun lt!1537621 () tuple2!47126)

(assert (=> b!4319110 (= e!2687017 (tuple2!47125 (_1!26848 lt!1537621) (LongMap!4743 (Cell!18782 (_2!26848 lt!1537621)))))))

(declare-fun update!519 (LongMapFixedSize!9486 (_ BitVec 64) List!48481) tuple2!47126)

(assert (=> b!4319110 (= lt!1537621 (update!519 (v!42702 (underlying!9715 (_2!26847 lt!1537622))) lt!1537608 lt!1537611))))

(declare-fun b!4319111 () Bool)

(declare-fun e!2687019 () Bool)

(assert (=> b!4319111 (= e!2687019 (= call!299125 call!299126))))

(declare-fun b!4319112 () Bool)

(declare-fun e!2687020 () Bool)

(assert (=> b!4319112 (= e!2687020 e!2687019)))

(assert (=> b!4319112 (= c!734418 (_1!26847 lt!1537623))))

(declare-fun b!4319113 () Bool)

(declare-fun res!1770087 () Bool)

(assert (=> b!4319113 (=> (not res!1770087) (not e!2687020))))

(declare-fun valid!3753 (MutLongMap!4743) Bool)

(assert (=> b!4319113 (= res!1770087 (valid!3753 (_2!26847 lt!1537623)))))

(declare-fun d!1269840 () Bool)

(assert (=> d!1269840 e!2687020))

(declare-fun res!1770086 () Bool)

(assert (=> d!1269840 (=> (not res!1770086) (not e!2687020))))

(assert (=> d!1269840 (= res!1770086 ((_ is LongMap!4743) (_2!26847 lt!1537623)))))

(assert (=> d!1269840 (= lt!1537623 e!2687017)))

(declare-fun c!734417 () Bool)

(assert (=> d!1269840 (= c!734417 (_1!26847 lt!1537622))))

(assert (=> d!1269840 (= lt!1537622 e!2687021)))

(declare-fun c!734419 () Bool)

(declare-fun imbalanced!77 (MutLongMap!4743) Bool)

(assert (=> d!1269840 (= c!734419 (imbalanced!77 (v!42703 (underlying!9716 thiss!42308))))))

(assert (=> d!1269840 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269840 (= (update!518 (v!42703 (underlying!9716 thiss!42308)) lt!1537608 lt!1537611) lt!1537623)))

(declare-fun b!4319107 () Bool)

(assert (=> b!4319107 (= e!2687019 e!2687018)))

(declare-fun res!1770088 () Bool)

(declare-fun contains!10396 (ListLongMap!1153 (_ BitVec 64)) Bool)

(assert (=> b!4319107 (= res!1770088 (contains!10396 call!299126 lt!1537608))))

(assert (=> b!4319107 (=> (not res!1770088) (not e!2687018))))

(declare-fun b!4319114 () Bool)

(assert (=> b!4319114 (= e!2687021 (tuple2!47125 true (v!42703 (underlying!9716 thiss!42308))))))

(declare-fun bm!299121 () Bool)

(assert (=> bm!299121 (= call!299125 (map!10380 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))))

(assert (= (and d!1269840 c!734419) b!4319108))

(assert (= (and d!1269840 (not c!734419)) b!4319114))

(assert (= (and d!1269840 c!734417) b!4319110))

(assert (= (and d!1269840 (not c!734417)) b!4319106))

(assert (= (and d!1269840 res!1770086) b!4319113))

(assert (= (and b!4319113 res!1770087) b!4319112))

(assert (= (and b!4319112 c!734418) b!4319107))

(assert (= (and b!4319112 (not c!734418)) b!4319111))

(assert (= (and b!4319107 res!1770088) b!4319109))

(assert (= (or b!4319109 b!4319111) bm!299121))

(assert (= (or b!4319107 b!4319109 b!4319111) bm!299120))

(declare-fun m!4912653 () Bool)

(assert (=> d!1269840 m!4912653))

(declare-fun m!4912655 () Bool)

(assert (=> d!1269840 m!4912655))

(declare-fun m!4912657 () Bool)

(assert (=> b!4319108 m!4912657))

(declare-fun m!4912659 () Bool)

(assert (=> b!4319109 m!4912659))

(declare-fun m!4912661 () Bool)

(assert (=> b!4319110 m!4912661))

(declare-fun m!4912663 () Bool)

(assert (=> bm!299121 m!4912663))

(declare-fun m!4912665 () Bool)

(assert (=> b!4319107 m!4912665))

(declare-fun m!4912667 () Bool)

(assert (=> bm!299120 m!4912667))

(declare-fun m!4912669 () Bool)

(assert (=> b!4319113 m!4912669))

(assert (=> b!4319075 d!1269840))

(declare-fun d!1269842 () Bool)

(declare-fun lt!1537626 () Bool)

(assert (=> d!1269842 (= lt!1537626 (contains!10396 (map!10380 (v!42703 (underlying!9716 thiss!42308))) lt!1537608))))

(declare-fun contains!10397 (LongMapFixedSize!9486 (_ BitVec 64)) Bool)

(assert (=> d!1269842 (= lt!1537626 (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(assert (=> d!1269842 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269842 (= (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537608) lt!1537626)))

(declare-fun bs!606109 () Bool)

(assert (= bs!606109 d!1269842))

(assert (=> bs!606109 m!4912633))

(assert (=> bs!606109 m!4912633))

(declare-fun m!4912671 () Bool)

(assert (=> bs!606109 m!4912671))

(declare-fun m!4912673 () Bool)

(assert (=> bs!606109 m!4912673))

(assert (=> bs!606109 m!4912655))

(assert (=> b!4319075 d!1269842))

(declare-fun d!1269844 () Bool)

(declare-fun hash!1157 (Hashable!4659 K!9604) (_ BitVec 64))

(assert (=> d!1269844 (= (hash!1154 (hashF!6889 thiss!42308) key!2048) (hash!1157 (hashF!6889 thiss!42308) key!2048))))

(declare-fun bs!606110 () Bool)

(assert (= bs!606110 d!1269844))

(declare-fun m!4912675 () Bool)

(assert (=> bs!606110 m!4912675))

(assert (=> b!4319075 d!1269844))

(declare-fun d!1269846 () Bool)

(declare-fun res!1770093 () Bool)

(declare-fun e!2687026 () Bool)

(assert (=> d!1269846 (=> res!1770093 e!2687026)))

(assert (=> d!1269846 (= res!1770093 (not ((_ is Cons!48357) lt!1537611)))))

(assert (=> d!1269846 (= (noDuplicateKeys!259 lt!1537611) e!2687026)))

(declare-fun b!4319119 () Bool)

(declare-fun e!2687027 () Bool)

(assert (=> b!4319119 (= e!2687026 e!2687027)))

(declare-fun res!1770094 () Bool)

(assert (=> b!4319119 (=> (not res!1770094) (not e!2687027))))

(declare-fun containsKey!393 (List!48481 K!9604) Bool)

(assert (=> b!4319119 (= res!1770094 (not (containsKey!393 (t!355350 lt!1537611) (_1!26845 (h!53814 lt!1537611)))))))

(declare-fun b!4319120 () Bool)

(assert (=> b!4319120 (= e!2687027 (noDuplicateKeys!259 (t!355350 lt!1537611)))))

(assert (= (and d!1269846 (not res!1770093)) b!4319119))

(assert (= (and b!4319119 res!1770094) b!4319120))

(declare-fun m!4912677 () Bool)

(assert (=> b!4319119 m!4912677))

(declare-fun m!4912679 () Bool)

(assert (=> b!4319120 m!4912679))

(assert (=> b!4319078 d!1269846))

(declare-fun bs!606111 () Bool)

(declare-fun d!1269848 () Bool)

(assert (= bs!606111 (and d!1269848 b!4319081)))

(declare-fun lambda!133651 () Int)

(assert (=> bs!606111 (not (= lambda!133651 lambda!133648))))

(assert (=> d!1269848 true))

(assert (=> d!1269848 (= (allKeysSameHashInMap!382 lt!1537605 (hashF!6889 thiss!42308)) (forall!8800 (toList!2537 lt!1537605) lambda!133651))))

(declare-fun bs!606112 () Bool)

(assert (= bs!606112 d!1269848))

(declare-fun m!4912681 () Bool)

(assert (=> bs!606112 m!4912681))

(assert (=> b!4319073 d!1269848))

(declare-fun bs!606113 () Bool)

(declare-fun b!4319146 () Bool)

(assert (= bs!606113 (and b!4319146 b!4319081)))

(declare-fun lambda!133654 () Int)

(assert (=> bs!606113 (= lambda!133654 lambda!133648)))

(declare-fun bs!606114 () Bool)

(assert (= bs!606114 (and b!4319146 d!1269848)))

(assert (=> bs!606114 (not (= lambda!133654 lambda!133651))))

(declare-fun b!4319145 () Bool)

(declare-fun e!2687048 () Bool)

(declare-fun call!299141 () Bool)

(assert (=> b!4319145 (= e!2687048 call!299141)))

(declare-fun e!2687043 () Unit!67649)

(declare-fun lt!1537672 () (_ BitVec 64))

(declare-fun forallContained!1527 (List!48482 Int tuple2!47122) Unit!67649)

(assert (=> b!4319146 (= e!2687043 (forallContained!1527 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun c!734430 () Bool)

(declare-fun contains!10398 (List!48482 tuple2!47122) Bool)

(assert (=> b!4319146 (= c!734430 (not (contains!10398 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))))

(declare-fun lt!1537683 () Unit!67649)

(declare-fun e!2687042 () Unit!67649)

(assert (=> b!4319146 (= lt!1537683 e!2687042)))

(declare-fun bm!299134 () Bool)

(declare-datatypes ((Option!10293 0))(
  ( (None!10292) (Some!10292 (v!42708 tuple2!47120)) )
))
(declare-fun call!299144 () Option!10293)

(declare-fun call!299140 () List!48481)

(declare-fun getPair!159 (List!48481 K!9604) Option!10293)

(assert (=> bm!299134 (= call!299144 (getPair!159 call!299140 key!2048))))

(declare-fun b!4319147 () Bool)

(assert (=> b!4319147 false))

(declare-fun lt!1537681 () Unit!67649)

(declare-fun lt!1537670 () Unit!67649)

(assert (=> b!4319147 (= lt!1537681 lt!1537670)))

(declare-fun lt!1537669 () List!48482)

(declare-fun lt!1537673 () List!48481)

(assert (=> b!4319147 (contains!10398 lt!1537669 (tuple2!47123 lt!1537672 lt!1537673))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!171 (List!48482 (_ BitVec 64) List!48481) Unit!67649)

(assert (=> b!4319147 (= lt!1537670 (lemmaGetValueByKeyImpliesContainsTuple!171 lt!1537669 lt!1537672 lt!1537673))))

(assert (=> b!4319147 (= lt!1537673 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))

(assert (=> b!4319147 (= lt!1537669 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))

(declare-fun lt!1537686 () Unit!67649)

(declare-fun lt!1537677 () Unit!67649)

(assert (=> b!4319147 (= lt!1537686 lt!1537677)))

(declare-fun lt!1537685 () List!48482)

(declare-datatypes ((Option!10294 0))(
  ( (None!10293) (Some!10293 (v!42709 List!48481)) )
))
(declare-fun isDefined!7594 (Option!10294) Bool)

(declare-fun getValueByKey!293 (List!48482 (_ BitVec 64)) Option!10294)

(assert (=> b!4319147 (isDefined!7594 (getValueByKey!293 lt!1537685 lt!1537672))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!212 (List!48482 (_ BitVec 64)) Unit!67649)

(assert (=> b!4319147 (= lt!1537677 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 lt!1537685 lt!1537672))))

(assert (=> b!4319147 (= lt!1537685 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))

(declare-fun lt!1537678 () Unit!67649)

(declare-fun lt!1537680 () Unit!67649)

(assert (=> b!4319147 (= lt!1537678 lt!1537680)))

(declare-fun lt!1537671 () List!48482)

(declare-fun containsKey!394 (List!48482 (_ BitVec 64)) Bool)

(assert (=> b!4319147 (containsKey!394 lt!1537671 lt!1537672)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!160 (List!48482 (_ BitVec 64)) Unit!67649)

(assert (=> b!4319147 (= lt!1537680 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!160 lt!1537671 lt!1537672))))

(assert (=> b!4319147 (= lt!1537671 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))

(declare-fun Unit!67652 () Unit!67649)

(assert (=> b!4319147 (= e!2687042 Unit!67652)))

(declare-fun bm!299135 () Bool)

(declare-fun call!299143 () (_ BitVec 64))

(assert (=> bm!299135 (= call!299143 (hash!1154 (hashF!6889 thiss!42308) key!2048))))

(declare-fun d!1269850 () Bool)

(declare-fun lt!1537668 () Bool)

(declare-fun contains!10399 (ListMap!1815 K!9604) Bool)

(assert (=> d!1269850 (= lt!1537668 (contains!10399 (map!10381 thiss!42308) key!2048))))

(declare-fun e!2687046 () Bool)

(assert (=> d!1269850 (= lt!1537668 e!2687046)))

(declare-fun res!1770102 () Bool)

(assert (=> d!1269850 (=> (not res!1770102) (not e!2687046))))

(assert (=> d!1269850 (= res!1770102 (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))

(declare-fun lt!1537675 () Unit!67649)

(declare-fun e!2687045 () Unit!67649)

(assert (=> d!1269850 (= lt!1537675 e!2687045)))

(declare-fun c!734429 () Bool)

(declare-fun extractMap!365 (List!48482) ListMap!1815)

(assert (=> d!1269850 (= c!734429 (contains!10399 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) key!2048))))

(declare-fun lt!1537674 () Unit!67649)

(assert (=> d!1269850 (= lt!1537674 e!2687043)))

(declare-fun c!734428 () Bool)

(assert (=> d!1269850 (= c!734428 (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))

(assert (=> d!1269850 (= lt!1537672 (hash!1154 (hashF!6889 thiss!42308) key!2048))))

(assert (=> d!1269850 (valid!3752 thiss!42308)))

(assert (=> d!1269850 (= (contains!10395 thiss!42308 key!2048) lt!1537668)))

(declare-fun b!4319148 () Bool)

(declare-fun e!2687047 () Unit!67649)

(declare-fun Unit!67653 () Unit!67649)

(assert (=> b!4319148 (= e!2687047 Unit!67653)))

(declare-fun b!4319149 () Bool)

(declare-fun Unit!67654 () Unit!67649)

(assert (=> b!4319149 (= e!2687043 Unit!67654)))

(declare-fun bm!299136 () Bool)

(declare-fun isDefined!7595 (Option!10293) Bool)

(assert (=> bm!299136 (= call!299141 (isDefined!7595 call!299144))))

(declare-fun b!4319150 () Bool)

(declare-fun Unit!67655 () Unit!67649)

(assert (=> b!4319150 (= e!2687042 Unit!67655)))

(declare-fun call!299142 () ListLongMap!1153)

(declare-fun lt!1537676 () ListLongMap!1153)

(declare-fun bm!299137 () Bool)

(declare-fun apply!11126 (ListLongMap!1153 (_ BitVec 64)) List!48481)

(assert (=> bm!299137 (= call!299140 (apply!11126 (ite c!734429 lt!1537676 call!299142) call!299143))))

(declare-fun b!4319151 () Bool)

(assert (=> b!4319151 (= e!2687045 e!2687047)))

(declare-fun res!1770103 () Bool)

(declare-fun call!299139 () Bool)

(assert (=> b!4319151 (= res!1770103 call!299139)))

(assert (=> b!4319151 (=> (not res!1770103) (not e!2687048))))

(declare-fun c!734431 () Bool)

(assert (=> b!4319151 (= c!734431 e!2687048)))

(declare-fun bm!299138 () Bool)

(assert (=> bm!299138 (= call!299139 (contains!10396 (ite c!734429 lt!1537676 call!299142) call!299143))))

(declare-fun bm!299139 () Bool)

(assert (=> bm!299139 (= call!299142 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))

(declare-fun b!4319152 () Bool)

(assert (=> b!4319152 false))

(declare-fun lt!1537667 () Unit!67649)

(declare-fun lt!1537684 () Unit!67649)

(assert (=> b!4319152 (= lt!1537667 lt!1537684)))

(declare-fun lt!1537679 () ListLongMap!1153)

(assert (=> b!4319152 (contains!10399 (extractMap!365 (toList!2537 lt!1537679)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!159 (ListLongMap!1153 K!9604 Hashable!4659) Unit!67649)

(assert (=> b!4319152 (= lt!1537684 (lemmaInLongMapThenInGenericMap!159 lt!1537679 key!2048 (hashF!6889 thiss!42308)))))

(assert (=> b!4319152 (= lt!1537679 call!299142)))

(declare-fun Unit!67656 () Unit!67649)

(assert (=> b!4319152 (= e!2687047 Unit!67656)))

(declare-fun b!4319153 () Bool)

(declare-fun e!2687044 () Bool)

(assert (=> b!4319153 (= e!2687044 call!299141)))

(declare-fun b!4319154 () Bool)

(declare-fun lt!1537682 () Unit!67649)

(assert (=> b!4319154 (= e!2687045 lt!1537682)))

(assert (=> b!4319154 (= lt!1537676 call!299142)))

(declare-fun lemmaInGenericMapThenInLongMap!159 (ListLongMap!1153 K!9604 Hashable!4659) Unit!67649)

(assert (=> b!4319154 (= lt!1537682 (lemmaInGenericMapThenInLongMap!159 lt!1537676 key!2048 (hashF!6889 thiss!42308)))))

(declare-fun res!1770101 () Bool)

(assert (=> b!4319154 (= res!1770101 call!299139)))

(assert (=> b!4319154 (=> (not res!1770101) (not e!2687044))))

(assert (=> b!4319154 e!2687044))

(declare-fun b!4319155 () Bool)

(assert (=> b!4319155 (= e!2687046 (isDefined!7595 (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048)))))

(assert (= (and d!1269850 c!734428) b!4319146))

(assert (= (and d!1269850 (not c!734428)) b!4319149))

(assert (= (and b!4319146 c!734430) b!4319147))

(assert (= (and b!4319146 (not c!734430)) b!4319150))

(assert (= (and d!1269850 c!734429) b!4319154))

(assert (= (and d!1269850 (not c!734429)) b!4319151))

(assert (= (and b!4319154 res!1770101) b!4319153))

(assert (= (and b!4319151 res!1770103) b!4319145))

(assert (= (and b!4319151 c!734431) b!4319152))

(assert (= (and b!4319151 (not c!734431)) b!4319148))

(assert (= (or b!4319154 b!4319153 b!4319151 b!4319145) bm!299135))

(assert (= (or b!4319154 b!4319151 b!4319145 b!4319152) bm!299139))

(assert (= (or b!4319153 b!4319145) bm!299137))

(assert (= (or b!4319154 b!4319151) bm!299138))

(assert (= (or b!4319153 b!4319145) bm!299134))

(assert (= (or b!4319153 b!4319145) bm!299136))

(assert (= (and d!1269850 res!1770102) b!4319155))

(declare-fun m!4912683 () Bool)

(assert (=> b!4319154 m!4912683))

(declare-fun m!4912685 () Bool)

(assert (=> bm!299134 m!4912685))

(assert (=> bm!299135 m!4912645))

(declare-fun m!4912687 () Bool)

(assert (=> b!4319155 m!4912687))

(assert (=> b!4319155 m!4912687))

(declare-fun m!4912689 () Bool)

(assert (=> b!4319155 m!4912689))

(assert (=> b!4319155 m!4912689))

(declare-fun m!4912691 () Bool)

(assert (=> b!4319155 m!4912691))

(assert (=> bm!299139 m!4912633))

(declare-fun m!4912693 () Bool)

(assert (=> bm!299137 m!4912693))

(assert (=> d!1269850 m!4912635))

(assert (=> d!1269850 m!4912635))

(declare-fun m!4912695 () Bool)

(assert (=> d!1269850 m!4912695))

(declare-fun m!4912697 () Bool)

(assert (=> d!1269850 m!4912697))

(declare-fun m!4912699 () Bool)

(assert (=> d!1269850 m!4912699))

(assert (=> d!1269850 m!4912645))

(assert (=> d!1269850 m!4912651))

(assert (=> d!1269850 m!4912697))

(declare-fun m!4912701 () Bool)

(assert (=> d!1269850 m!4912701))

(assert (=> d!1269850 m!4912633))

(declare-fun m!4912703 () Bool)

(assert (=> bm!299138 m!4912703))

(declare-fun m!4912705 () Bool)

(assert (=> bm!299136 m!4912705))

(assert (=> b!4319146 m!4912633))

(assert (=> b!4319146 m!4912687))

(declare-fun m!4912707 () Bool)

(assert (=> b!4319146 m!4912707))

(declare-fun m!4912709 () Bool)

(assert (=> b!4319146 m!4912709))

(declare-fun m!4912711 () Bool)

(assert (=> b!4319147 m!4912711))

(declare-fun m!4912713 () Bool)

(assert (=> b!4319147 m!4912713))

(declare-fun m!4912715 () Bool)

(assert (=> b!4319147 m!4912715))

(declare-fun m!4912717 () Bool)

(assert (=> b!4319147 m!4912717))

(assert (=> b!4319147 m!4912633))

(declare-fun m!4912719 () Bool)

(assert (=> b!4319147 m!4912719))

(declare-fun m!4912721 () Bool)

(assert (=> b!4319147 m!4912721))

(assert (=> b!4319147 m!4912713))

(assert (=> b!4319147 m!4912687))

(declare-fun m!4912723 () Bool)

(assert (=> b!4319147 m!4912723))

(declare-fun m!4912725 () Bool)

(assert (=> b!4319152 m!4912725))

(assert (=> b!4319152 m!4912725))

(declare-fun m!4912727 () Bool)

(assert (=> b!4319152 m!4912727))

(declare-fun m!4912729 () Bool)

(assert (=> b!4319152 m!4912729))

(assert (=> b!4319087 d!1269850))

(declare-fun d!1269852 () Bool)

(declare-fun map!10382 (LongMapFixedSize!9486) ListLongMap!1153)

(assert (=> d!1269852 (= (map!10380 (v!42703 (underlying!9716 thiss!42308))) (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun bs!606115 () Bool)

(assert (= bs!606115 d!1269852))

(declare-fun m!4912731 () Bool)

(assert (=> bs!606115 m!4912731))

(assert (=> b!4319087 d!1269852))

(declare-fun d!1269854 () Bool)

(declare-fun lt!1537689 () ListMap!1815)

(declare-fun invariantList!598 (List!48481) Bool)

(assert (=> d!1269854 (invariantList!598 (toList!2538 lt!1537689))))

(assert (=> d!1269854 (= lt!1537689 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1269854 (valid!3752 thiss!42308)))

(assert (=> d!1269854 (= (map!10381 thiss!42308) lt!1537689)))

(declare-fun bs!606116 () Bool)

(assert (= bs!606116 d!1269854))

(declare-fun m!4912733 () Bool)

(assert (=> bs!606116 m!4912733))

(assert (=> bs!606116 m!4912633))

(assert (=> bs!606116 m!4912697))

(assert (=> bs!606116 m!4912651))

(assert (=> b!4319087 d!1269854))

(declare-fun d!1269856 () Bool)

(assert (=> d!1269856 (= (array_inv!5519 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsge (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4319079 d!1269856))

(declare-fun d!1269858 () Bool)

(assert (=> d!1269858 (= (array_inv!5520 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsge (size!35711 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4319079 d!1269858))

(declare-fun d!1269860 () Bool)

(declare-fun res!1770108 () Bool)

(declare-fun e!2687053 () Bool)

(assert (=> d!1269860 (=> res!1770108 e!2687053)))

(assert (=> d!1269860 (= res!1770108 ((_ is Nil!48358) (toList!2537 lt!1537605)))))

(assert (=> d!1269860 (= (forall!8800 (toList!2537 lt!1537605) lambda!133648) e!2687053)))

(declare-fun b!4319160 () Bool)

(declare-fun e!2687054 () Bool)

(assert (=> b!4319160 (= e!2687053 e!2687054)))

(declare-fun res!1770109 () Bool)

(assert (=> b!4319160 (=> (not res!1770109) (not e!2687054))))

(declare-fun dynLambda!20499 (Int tuple2!47122) Bool)

(assert (=> b!4319160 (= res!1770109 (dynLambda!20499 lambda!133648 (h!53815 (toList!2537 lt!1537605))))))

(declare-fun b!4319161 () Bool)

(assert (=> b!4319161 (= e!2687054 (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133648))))

(assert (= (and d!1269860 (not res!1770108)) b!4319160))

(assert (= (and b!4319160 res!1770109) b!4319161))

(declare-fun b_lambda!127063 () Bool)

(assert (=> (not b_lambda!127063) (not b!4319160)))

(declare-fun m!4912735 () Bool)

(assert (=> b!4319160 m!4912735))

(declare-fun m!4912737 () Bool)

(assert (=> b!4319161 m!4912737))

(assert (=> b!4319081 d!1269860))

(declare-fun d!1269862 () Bool)

(assert (=> d!1269862 (= (isEmpty!28108 lt!1537603) ((_ is Nil!48357) lt!1537603))))

(assert (=> b!4319081 d!1269862))

(declare-fun d!1269864 () Bool)

(assert (=> d!1269864 (allKeysSameHash!235 (removePairForKey!258 lt!1537603 key!2048) lt!1537608 (hashF!6889 thiss!42308))))

(declare-fun lt!1537692 () Unit!67649)

(declare-fun choose!26365 (List!48481 K!9604 (_ BitVec 64) Hashable!4659) Unit!67649)

(assert (=> d!1269864 (= lt!1537692 (choose!26365 lt!1537603 key!2048 lt!1537608 (hashF!6889 thiss!42308)))))

(assert (=> d!1269864 (noDuplicateKeys!259 lt!1537603)))

(assert (=> d!1269864 (= (lemmaRemovePairForKeyPreservesHash!211 lt!1537603 key!2048 lt!1537608 (hashF!6889 thiss!42308)) lt!1537692)))

(declare-fun bs!606117 () Bool)

(assert (= bs!606117 d!1269864))

(assert (=> bs!606117 m!4912613))

(assert (=> bs!606117 m!4912613))

(assert (=> bs!606117 m!4912615))

(declare-fun m!4912739 () Bool)

(assert (=> bs!606117 m!4912739))

(declare-fun m!4912741 () Bool)

(assert (=> bs!606117 m!4912741))

(assert (=> b!4319077 d!1269864))

(declare-fun bs!606118 () Bool)

(declare-fun d!1269866 () Bool)

(assert (= bs!606118 (and d!1269866 b!4319081)))

(declare-fun lambda!133657 () Int)

(assert (=> bs!606118 (not (= lambda!133657 lambda!133648))))

(declare-fun bs!606119 () Bool)

(assert (= bs!606119 (and d!1269866 d!1269848)))

(assert (=> bs!606119 (= lambda!133657 lambda!133651)))

(declare-fun bs!606120 () Bool)

(assert (= bs!606120 (and d!1269866 b!4319146)))

(assert (=> bs!606120 (not (= lambda!133657 lambda!133654))))

(assert (=> d!1269866 true))

(assert (=> d!1269866 (allKeysSameHash!235 lt!1537603 lt!1537608 (hashF!6889 thiss!42308))))

(declare-fun lt!1537695 () Unit!67649)

(declare-fun choose!26366 (List!48482 (_ BitVec 64) List!48481 Hashable!4659) Unit!67649)

(assert (=> d!1269866 (= lt!1537695 (choose!26366 (toList!2537 lt!1537605) lt!1537608 lt!1537603 (hashF!6889 thiss!42308)))))

(assert (=> d!1269866 (forall!8800 (toList!2537 lt!1537605) lambda!133657)))

(assert (=> d!1269866 (= (lemmaInLongMapAllKeySameHashThenForTuple!220 (toList!2537 lt!1537605) lt!1537608 lt!1537603 (hashF!6889 thiss!42308)) lt!1537695)))

(declare-fun bs!606121 () Bool)

(assert (= bs!606121 d!1269866))

(assert (=> bs!606121 m!4912621))

(declare-fun m!4912743 () Bool)

(assert (=> bs!606121 m!4912743))

(declare-fun m!4912745 () Bool)

(assert (=> bs!606121 m!4912745))

(assert (=> b!4319077 d!1269866))

(declare-fun b!4319171 () Bool)

(declare-fun e!2687059 () List!48481)

(declare-fun e!2687060 () List!48481)

(assert (=> b!4319171 (= e!2687059 e!2687060)))

(declare-fun c!734436 () Bool)

(assert (=> b!4319171 (= c!734436 ((_ is Cons!48357) lt!1537603))))

(declare-fun b!4319173 () Bool)

(assert (=> b!4319173 (= e!2687060 Nil!48357)))

(declare-fun b!4319172 () Bool)

(assert (=> b!4319172 (= e!2687060 (Cons!48357 (h!53814 lt!1537603) (removePairForKey!258 (t!355350 lt!1537603) key!2048)))))

(declare-fun b!4319170 () Bool)

(assert (=> b!4319170 (= e!2687059 (t!355350 lt!1537603))))

(declare-fun d!1269868 () Bool)

(declare-fun lt!1537698 () List!48481)

(assert (=> d!1269868 (not (containsKey!393 lt!1537698 key!2048))))

(assert (=> d!1269868 (= lt!1537698 e!2687059)))

(declare-fun c!734437 () Bool)

(assert (=> d!1269868 (= c!734437 (and ((_ is Cons!48357) lt!1537603) (= (_1!26845 (h!53814 lt!1537603)) key!2048)))))

(assert (=> d!1269868 (noDuplicateKeys!259 lt!1537603)))

(assert (=> d!1269868 (= (removePairForKey!258 lt!1537603 key!2048) lt!1537698)))

(assert (= (and d!1269868 c!734437) b!4319170))

(assert (= (and d!1269868 (not c!734437)) b!4319171))

(assert (= (and b!4319171 c!734436) b!4319172))

(assert (= (and b!4319171 (not c!734436)) b!4319173))

(declare-fun m!4912747 () Bool)

(assert (=> b!4319172 m!4912747))

(declare-fun m!4912749 () Bool)

(assert (=> d!1269868 m!4912749))

(assert (=> d!1269868 m!4912741))

(assert (=> b!4319077 d!1269868))

(declare-fun d!1269870 () Bool)

(assert (=> d!1269870 true))

(assert (=> d!1269870 true))

(declare-fun lambda!133660 () Int)

(declare-fun forall!8801 (List!48481 Int) Bool)

(assert (=> d!1269870 (= (allKeysSameHash!235 (removePairForKey!258 lt!1537603 key!2048) lt!1537608 (hashF!6889 thiss!42308)) (forall!8801 (removePairForKey!258 lt!1537603 key!2048) lambda!133660))))

(declare-fun bs!606122 () Bool)

(assert (= bs!606122 d!1269870))

(assert (=> bs!606122 m!4912613))

(declare-fun m!4912751 () Bool)

(assert (=> bs!606122 m!4912751))

(assert (=> b!4319077 d!1269870))

(declare-fun bs!606123 () Bool)

(declare-fun d!1269872 () Bool)

(assert (= bs!606123 (and d!1269872 d!1269870)))

(declare-fun lambda!133661 () Int)

(assert (=> bs!606123 (= lambda!133661 lambda!133660)))

(assert (=> d!1269872 true))

(assert (=> d!1269872 true))

(assert (=> d!1269872 (= (allKeysSameHash!235 lt!1537603 lt!1537608 (hashF!6889 thiss!42308)) (forall!8801 lt!1537603 lambda!133661))))

(declare-fun bs!606124 () Bool)

(assert (= bs!606124 d!1269872))

(declare-fun m!4912753 () Bool)

(assert (=> bs!606124 m!4912753))

(assert (=> b!4319077 d!1269872))

(declare-fun d!1269874 () Bool)

(declare-fun e!2687063 () Bool)

(assert (=> d!1269874 e!2687063))

(declare-fun c!734440 () Bool)

(assert (=> d!1269874 (= c!734440 (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537608))))

(declare-fun lt!1537701 () List!48481)

(declare-fun apply!11127 (LongMapFixedSize!9486 (_ BitVec 64)) List!48481)

(assert (=> d!1269874 (= lt!1537701 (apply!11127 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(assert (=> d!1269874 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269874 (= (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537608) lt!1537701)))

(declare-fun b!4319182 () Bool)

(declare-fun get!15666 (Option!10294) List!48481)

(assert (=> b!4319182 (= e!2687063 (= lt!1537701 (get!15666 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))))

(declare-fun b!4319183 () Bool)

(declare-fun dynLambda!20500 (Int (_ BitVec 64)) List!48481)

(assert (=> b!4319183 (= e!2687063 (= lt!1537701 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608)))))

(assert (=> b!4319183 ((_ is LongMap!4743) (v!42703 (underlying!9716 thiss!42308)))))

(assert (= (and d!1269874 c!734440) b!4319182))

(assert (= (and d!1269874 (not c!734440)) b!4319183))

(declare-fun b_lambda!127065 () Bool)

(assert (=> (not b_lambda!127065) (not b!4319183)))

(declare-fun t!355353 () Bool)

(declare-fun tb!257355 () Bool)

(assert (=> (and b!4319079 (= (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) t!355353) tb!257355))

(assert (=> b!4319183 t!355353))

(declare-fun result!314856 () Bool)

(declare-fun b_and!340455 () Bool)

(assert (= b_and!340451 (and (=> t!355353 result!314856) b_and!340455)))

(assert (=> d!1269874 m!4912643))

(declare-fun m!4912755 () Bool)

(assert (=> d!1269874 m!4912755))

(assert (=> d!1269874 m!4912655))

(assert (=> b!4319182 m!4912633))

(declare-fun m!4912757 () Bool)

(assert (=> b!4319182 m!4912757))

(assert (=> b!4319182 m!4912757))

(declare-fun m!4912759 () Bool)

(assert (=> b!4319182 m!4912759))

(declare-fun m!4912761 () Bool)

(assert (=> b!4319183 m!4912761))

(assert (=> b!4319076 d!1269874))

(declare-fun bs!606125 () Bool)

(declare-fun d!1269876 () Bool)

(assert (= bs!606125 (and d!1269876 d!1269870)))

(declare-fun lambda!133662 () Int)

(assert (=> bs!606125 (= lambda!133662 lambda!133660)))

(declare-fun bs!606126 () Bool)

(assert (= bs!606126 (and d!1269876 d!1269872)))

(assert (=> bs!606126 (= lambda!133662 lambda!133661)))

(assert (=> d!1269876 true))

(assert (=> d!1269876 true))

(assert (=> d!1269876 (= (allKeysSameHash!235 lt!1537611 lt!1537608 (hashF!6889 thiss!42308)) (forall!8801 lt!1537611 lambda!133662))))

(declare-fun bs!606127 () Bool)

(assert (= bs!606127 d!1269876))

(declare-fun m!4912763 () Bool)

(assert (=> bs!606127 m!4912763))

(assert (=> b!4319071 d!1269876))

(declare-fun bs!606128 () Bool)

(declare-fun b!4319188 () Bool)

(assert (= bs!606128 (and b!4319188 b!4319081)))

(declare-fun lambda!133665 () Int)

(assert (=> bs!606128 (= lambda!133665 lambda!133648)))

(declare-fun bs!606129 () Bool)

(assert (= bs!606129 (and b!4319188 d!1269848)))

(assert (=> bs!606129 (not (= lambda!133665 lambda!133651))))

(declare-fun bs!606130 () Bool)

(assert (= bs!606130 (and b!4319188 b!4319146)))

(assert (=> bs!606130 (= lambda!133665 lambda!133654)))

(declare-fun bs!606131 () Bool)

(assert (= bs!606131 (and b!4319188 d!1269866)))

(assert (=> bs!606131 (not (= lambda!133665 lambda!133657))))

(declare-fun d!1269878 () Bool)

(declare-fun res!1770114 () Bool)

(declare-fun e!2687066 () Bool)

(assert (=> d!1269878 (=> (not res!1770114) (not e!2687066))))

(assert (=> d!1269878 (= res!1770114 (valid!3753 (v!42703 (underlying!9716 thiss!42308))))))

(assert (=> d!1269878 (= (valid!3752 thiss!42308) e!2687066)))

(declare-fun res!1770115 () Bool)

(assert (=> b!4319188 (=> (not res!1770115) (not e!2687066))))

(assert (=> b!4319188 (= res!1770115 (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133665))))

(declare-fun b!4319189 () Bool)

(assert (=> b!4319189 (= e!2687066 (allKeysSameHashInMap!382 (map!10380 (v!42703 (underlying!9716 thiss!42308))) (hashF!6889 thiss!42308)))))

(assert (= (and d!1269878 res!1770114) b!4319188))

(assert (= (and b!4319188 res!1770115) b!4319189))

(assert (=> d!1269878 m!4912655))

(assert (=> b!4319188 m!4912633))

(declare-fun m!4912765 () Bool)

(assert (=> b!4319188 m!4912765))

(assert (=> b!4319189 m!4912633))

(assert (=> b!4319189 m!4912633))

(declare-fun m!4912767 () Bool)

(assert (=> b!4319189 m!4912767))

(assert (=> b!4319086 d!1269878))

(declare-fun mapIsEmpty!21148 () Bool)

(declare-fun mapRes!21148 () Bool)

(assert (=> mapIsEmpty!21148 mapRes!21148))

(declare-fun e!2687072 () Bool)

(declare-fun tp!1326670 () Bool)

(declare-fun b!4319197 () Bool)

(assert (=> b!4319197 (= e!2687072 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326670))))

(declare-fun condMapEmpty!21148 () Bool)

(declare-fun mapDefault!21148 () List!48481)

(assert (=> mapNonEmpty!21145 (= condMapEmpty!21148 (= mapRest!21145 ((as const (Array (_ BitVec 32) List!48481)) mapDefault!21148)))))

(assert (=> mapNonEmpty!21145 (= tp!1326660 (and e!2687072 mapRes!21148))))

(declare-fun mapNonEmpty!21148 () Bool)

(declare-fun tp!1326669 () Bool)

(declare-fun e!2687071 () Bool)

(assert (=> mapNonEmpty!21148 (= mapRes!21148 (and tp!1326669 e!2687071))))

(declare-fun mapRest!21148 () (Array (_ BitVec 32) List!48481))

(declare-fun mapKey!21148 () (_ BitVec 32))

(declare-fun mapValue!21148 () List!48481)

(assert (=> mapNonEmpty!21148 (= mapRest!21145 (store mapRest!21148 mapKey!21148 mapValue!21148))))

(declare-fun b!4319196 () Bool)

(declare-fun tp!1326671 () Bool)

(assert (=> b!4319196 (= e!2687071 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326671))))

(assert (= (and mapNonEmpty!21145 condMapEmpty!21148) mapIsEmpty!21148))

(assert (= (and mapNonEmpty!21145 (not condMapEmpty!21148)) mapNonEmpty!21148))

(assert (= (and mapNonEmpty!21148 ((_ is Cons!48357) mapValue!21148)) b!4319196))

(assert (= (and mapNonEmpty!21145 ((_ is Cons!48357) mapDefault!21148)) b!4319197))

(declare-fun m!4912769 () Bool)

(assert (=> mapNonEmpty!21148 m!4912769))

(declare-fun tp!1326674 () Bool)

(declare-fun b!4319202 () Bool)

(declare-fun e!2687075 () Bool)

(assert (=> b!4319202 (= e!2687075 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326674))))

(assert (=> mapNonEmpty!21145 (= tp!1326659 e!2687075)))

(assert (= (and mapNonEmpty!21145 ((_ is Cons!48357) mapValue!21145)) b!4319202))

(declare-fun b!4319203 () Bool)

(declare-fun tp!1326675 () Bool)

(declare-fun e!2687076 () Bool)

(assert (=> b!4319203 (= e!2687076 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326675))))

(assert (=> b!4319079 (= tp!1326661 e!2687076)))

(assert (= (and b!4319079 ((_ is Cons!48357) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) b!4319203))

(declare-fun b!4319204 () Bool)

(declare-fun tp!1326676 () Bool)

(declare-fun e!2687077 () Bool)

(assert (=> b!4319204 (= e!2687077 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326676))))

(assert (=> b!4319079 (= tp!1326658 e!2687077)))

(assert (= (and b!4319079 ((_ is Cons!48357) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) b!4319204))

(declare-fun b!4319205 () Bool)

(declare-fun tp!1326677 () Bool)

(declare-fun e!2687078 () Bool)

(assert (=> b!4319205 (= e!2687078 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326677))))

(assert (=> b!4319072 (= tp!1326657 e!2687078)))

(assert (= (and b!4319072 ((_ is Cons!48357) mapDefault!21145)) b!4319205))

(declare-fun b_lambda!127067 () Bool)

(assert (= b_lambda!127063 (or b!4319081 b_lambda!127067)))

(declare-fun bs!606132 () Bool)

(declare-fun d!1269880 () Bool)

(assert (= bs!606132 (and d!1269880 b!4319081)))

(assert (=> bs!606132 (= (dynLambda!20499 lambda!133648 (h!53815 (toList!2537 lt!1537605))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))))

(declare-fun m!4912771 () Bool)

(assert (=> bs!606132 m!4912771))

(assert (=> b!4319160 d!1269880))

(declare-fun b_lambda!127069 () Bool)

(assert (= b_lambda!127065 (or (and b!4319079 b_free!128931) b_lambda!127069)))

(check-sat (not bm!299135) (not bm!299136) (not b_lambda!127069) (not b!4319161) (not d!1269852) (not d!1269854) (not bm!299121) (not d!1269868) (not bs!606132) (not b_next!129635) (not b_lambda!127067) (not b!4319154) (not b!4319204) (not b!4319188) (not d!1269864) (not mapNonEmpty!21148) (not b!4319205) (not b!4319197) (not b!4319146) (not b!4319119) (not bm!299134) (not b!4319109) (not b_next!129637) (not bm!299139) (not b!4319202) (not b!4319107) tp_is_empty!24071 (not b!4319110) (not tb!257355) (not bm!299120) (not d!1269876) (not b!4319147) (not b!4319203) (not d!1269840) (not b!4319108) (not b!4319113) (not b!4319189) b_and!340455 (not d!1269878) (not d!1269844) (not b!4319196) (not b!4319172) (not d!1269848) (not d!1269874) tp_is_empty!24069 (not bm!299138) (not d!1269842) (not b!4319152) (not b!4319120) (not b!4319182) (not bm!299137) (not d!1269870) (not d!1269872) (not b!4319155) b_and!340453 (not d!1269850) (not d!1269866))
(check-sat b_and!340455 b_and!340453 (not b_next!129637) (not b_next!129635))
(get-model)

(declare-fun b!4319224 () Bool)

(declare-fun e!2687091 () Bool)

(declare-datatypes ((List!48483 0))(
  ( (Nil!48359) (Cons!48359 (h!53817 K!9604) (t!355356 List!48483)) )
))
(declare-fun contains!10400 (List!48483 K!9604) Bool)

(declare-fun keys!16162 (ListMap!1815) List!48483)

(assert (=> b!4319224 (= e!2687091 (contains!10400 (keys!16162 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(declare-fun b!4319225 () Bool)

(declare-fun e!2687094 () Unit!67649)

(declare-fun e!2687096 () Unit!67649)

(assert (=> b!4319225 (= e!2687094 e!2687096)))

(declare-fun c!734449 () Bool)

(declare-fun call!299147 () Bool)

(assert (=> b!4319225 (= c!734449 call!299147)))

(declare-fun b!4319226 () Bool)

(assert (=> b!4319226 false))

(declare-fun lt!1537718 () Unit!67649)

(declare-fun lt!1537720 () Unit!67649)

(assert (=> b!4319226 (= lt!1537718 lt!1537720)))

(declare-fun containsKey!395 (List!48481 K!9604) Bool)

(assert (=> b!4319226 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048)))

(declare-fun lemmaInGetKeysListThenContainsKey!52 (List!48481 K!9604) Unit!67649)

(assert (=> b!4319226 (= lt!1537720 (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(declare-fun Unit!67657 () Unit!67649)

(assert (=> b!4319226 (= e!2687096 Unit!67657)))

(declare-fun d!1269882 () Bool)

(declare-fun e!2687093 () Bool)

(assert (=> d!1269882 e!2687093))

(declare-fun res!1770124 () Bool)

(assert (=> d!1269882 (=> res!1770124 e!2687093)))

(declare-fun e!2687092 () Bool)

(assert (=> d!1269882 (= res!1770124 e!2687092)))

(declare-fun res!1770123 () Bool)

(assert (=> d!1269882 (=> (not res!1770123) (not e!2687092))))

(declare-fun lt!1537722 () Bool)

(assert (=> d!1269882 (= res!1770123 (not lt!1537722))))

(declare-fun lt!1537719 () Bool)

(assert (=> d!1269882 (= lt!1537722 lt!1537719)))

(declare-fun lt!1537723 () Unit!67649)

(assert (=> d!1269882 (= lt!1537723 e!2687094)))

(declare-fun c!734448 () Bool)

(assert (=> d!1269882 (= c!734448 lt!1537719)))

(assert (=> d!1269882 (= lt!1537719 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> d!1269882 (= (contains!10399 (extractMap!365 (toList!2537 lt!1537679)) key!2048) lt!1537722)))

(declare-fun b!4319227 () Bool)

(declare-fun e!2687095 () List!48483)

(declare-fun getKeysList!55 (List!48481) List!48483)

(assert (=> b!4319227 (= e!2687095 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))

(declare-fun b!4319228 () Bool)

(assert (=> b!4319228 (= e!2687093 e!2687091)))

(declare-fun res!1770122 () Bool)

(assert (=> b!4319228 (=> (not res!1770122) (not e!2687091))))

(declare-datatypes ((Option!10295 0))(
  ( (None!10294) (Some!10294 (v!42716 V!9806)) )
))
(declare-fun isDefined!7596 (Option!10295) Bool)

(declare-fun getValueByKey!294 (List!48481 K!9604) Option!10295)

(assert (=> b!4319228 (= res!1770122 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048)))))

(declare-fun b!4319229 () Bool)

(declare-fun lt!1537724 () Unit!67649)

(assert (=> b!4319229 (= e!2687094 lt!1537724)))

(declare-fun lt!1537725 () Unit!67649)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!213 (List!48481 K!9604) Unit!67649)

(assert (=> b!4319229 (= lt!1537725 (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> b!4319229 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(declare-fun lt!1537721 () Unit!67649)

(assert (=> b!4319229 (= lt!1537721 lt!1537725)))

(declare-fun lemmaInListThenGetKeysListContains!52 (List!48481 K!9604) Unit!67649)

(assert (=> b!4319229 (= lt!1537724 (lemmaInListThenGetKeysListContains!52 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> b!4319229 call!299147))

(declare-fun b!4319230 () Bool)

(assert (=> b!4319230 (= e!2687095 (keys!16162 (extractMap!365 (toList!2537 lt!1537679))))))

(declare-fun b!4319231 () Bool)

(assert (=> b!4319231 (= e!2687092 (not (contains!10400 (keys!16162 (extractMap!365 (toList!2537 lt!1537679))) key!2048)))))

(declare-fun bm!299142 () Bool)

(assert (=> bm!299142 (= call!299147 (contains!10400 e!2687095 key!2048))))

(declare-fun c!734447 () Bool)

(assert (=> bm!299142 (= c!734447 c!734448)))

(declare-fun b!4319232 () Bool)

(declare-fun Unit!67658 () Unit!67649)

(assert (=> b!4319232 (= e!2687096 Unit!67658)))

(assert (= (and d!1269882 c!734448) b!4319229))

(assert (= (and d!1269882 (not c!734448)) b!4319225))

(assert (= (and b!4319225 c!734449) b!4319226))

(assert (= (and b!4319225 (not c!734449)) b!4319232))

(assert (= (or b!4319229 b!4319225) bm!299142))

(assert (= (and bm!299142 c!734447) b!4319227))

(assert (= (and bm!299142 (not c!734447)) b!4319230))

(assert (= (and d!1269882 res!1770123) b!4319231))

(assert (= (and d!1269882 (not res!1770124)) b!4319228))

(assert (= (and b!4319228 res!1770122) b!4319224))

(declare-fun m!4912773 () Bool)

(assert (=> d!1269882 m!4912773))

(assert (=> b!4319230 m!4912725))

(declare-fun m!4912775 () Bool)

(assert (=> b!4319230 m!4912775))

(declare-fun m!4912777 () Bool)

(assert (=> b!4319229 m!4912777))

(declare-fun m!4912779 () Bool)

(assert (=> b!4319229 m!4912779))

(assert (=> b!4319229 m!4912779))

(declare-fun m!4912781 () Bool)

(assert (=> b!4319229 m!4912781))

(declare-fun m!4912783 () Bool)

(assert (=> b!4319229 m!4912783))

(assert (=> b!4319228 m!4912779))

(assert (=> b!4319228 m!4912779))

(assert (=> b!4319228 m!4912781))

(assert (=> b!4319231 m!4912725))

(assert (=> b!4319231 m!4912775))

(assert (=> b!4319231 m!4912775))

(declare-fun m!4912785 () Bool)

(assert (=> b!4319231 m!4912785))

(assert (=> b!4319224 m!4912725))

(assert (=> b!4319224 m!4912775))

(assert (=> b!4319224 m!4912775))

(assert (=> b!4319224 m!4912785))

(declare-fun m!4912787 () Bool)

(assert (=> b!4319227 m!4912787))

(assert (=> b!4319226 m!4912773))

(declare-fun m!4912789 () Bool)

(assert (=> b!4319226 m!4912789))

(declare-fun m!4912791 () Bool)

(assert (=> bm!299142 m!4912791))

(assert (=> b!4319152 d!1269882))

(declare-fun bs!606133 () Bool)

(declare-fun d!1269884 () Bool)

(assert (= bs!606133 (and d!1269884 b!4319146)))

(declare-fun lambda!133668 () Int)

(assert (=> bs!606133 (= lambda!133668 lambda!133654)))

(declare-fun bs!606134 () Bool)

(assert (= bs!606134 (and d!1269884 b!4319081)))

(assert (=> bs!606134 (= lambda!133668 lambda!133648)))

(declare-fun bs!606135 () Bool)

(assert (= bs!606135 (and d!1269884 d!1269848)))

(assert (=> bs!606135 (not (= lambda!133668 lambda!133651))))

(declare-fun bs!606136 () Bool)

(assert (= bs!606136 (and d!1269884 d!1269866)))

(assert (=> bs!606136 (not (= lambda!133668 lambda!133657))))

(declare-fun bs!606137 () Bool)

(assert (= bs!606137 (and d!1269884 b!4319188)))

(assert (=> bs!606137 (= lambda!133668 lambda!133665)))

(declare-fun lt!1537728 () ListMap!1815)

(assert (=> d!1269884 (invariantList!598 (toList!2538 lt!1537728))))

(declare-fun e!2687099 () ListMap!1815)

(assert (=> d!1269884 (= lt!1537728 e!2687099)))

(declare-fun c!734452 () Bool)

(assert (=> d!1269884 (= c!734452 ((_ is Cons!48358) (toList!2537 lt!1537679)))))

(assert (=> d!1269884 (forall!8800 (toList!2537 lt!1537679) lambda!133668)))

(assert (=> d!1269884 (= (extractMap!365 (toList!2537 lt!1537679)) lt!1537728)))

(declare-fun b!4319237 () Bool)

(declare-fun addToMapMapFromBucket!50 (List!48481 ListMap!1815) ListMap!1815)

(assert (=> b!4319237 (= e!2687099 (addToMapMapFromBucket!50 (_2!26846 (h!53815 (toList!2537 lt!1537679))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))))))

(declare-fun b!4319238 () Bool)

(assert (=> b!4319238 (= e!2687099 (ListMap!1816 Nil!48357))))

(assert (= (and d!1269884 c!734452) b!4319237))

(assert (= (and d!1269884 (not c!734452)) b!4319238))

(declare-fun m!4912793 () Bool)

(assert (=> d!1269884 m!4912793))

(declare-fun m!4912795 () Bool)

(assert (=> d!1269884 m!4912795))

(declare-fun m!4912797 () Bool)

(assert (=> b!4319237 m!4912797))

(assert (=> b!4319237 m!4912797))

(declare-fun m!4912799 () Bool)

(assert (=> b!4319237 m!4912799))

(assert (=> b!4319152 d!1269884))

(declare-fun bs!606138 () Bool)

(declare-fun d!1269886 () Bool)

(assert (= bs!606138 (and d!1269886 d!1269884)))

(declare-fun lambda!133671 () Int)

(assert (=> bs!606138 (= lambda!133671 lambda!133668)))

(declare-fun bs!606139 () Bool)

(assert (= bs!606139 (and d!1269886 b!4319146)))

(assert (=> bs!606139 (= lambda!133671 lambda!133654)))

(declare-fun bs!606140 () Bool)

(assert (= bs!606140 (and d!1269886 b!4319081)))

(assert (=> bs!606140 (= lambda!133671 lambda!133648)))

(declare-fun bs!606141 () Bool)

(assert (= bs!606141 (and d!1269886 d!1269848)))

(assert (=> bs!606141 (not (= lambda!133671 lambda!133651))))

(declare-fun bs!606142 () Bool)

(assert (= bs!606142 (and d!1269886 d!1269866)))

(assert (=> bs!606142 (not (= lambda!133671 lambda!133657))))

(declare-fun bs!606143 () Bool)

(assert (= bs!606143 (and d!1269886 b!4319188)))

(assert (=> bs!606143 (= lambda!133671 lambda!133665)))

(assert (=> d!1269886 (contains!10399 (extractMap!365 (toList!2537 lt!1537679)) key!2048)))

(declare-fun lt!1537731 () Unit!67649)

(declare-fun choose!26367 (ListLongMap!1153 K!9604 Hashable!4659) Unit!67649)

(assert (=> d!1269886 (= lt!1537731 (choose!26367 lt!1537679 key!2048 (hashF!6889 thiss!42308)))))

(assert (=> d!1269886 (forall!8800 (toList!2537 lt!1537679) lambda!133671)))

(assert (=> d!1269886 (= (lemmaInLongMapThenInGenericMap!159 lt!1537679 key!2048 (hashF!6889 thiss!42308)) lt!1537731)))

(declare-fun bs!606144 () Bool)

(assert (= bs!606144 d!1269886))

(assert (=> bs!606144 m!4912725))

(assert (=> bs!606144 m!4912725))

(assert (=> bs!606144 m!4912727))

(declare-fun m!4912801 () Bool)

(assert (=> bs!606144 m!4912801))

(declare-fun m!4912803 () Bool)

(assert (=> bs!606144 m!4912803))

(assert (=> b!4319152 d!1269886))

(declare-fun d!1269888 () Bool)

(declare-fun noDuplicatedKeys!102 (List!48481) Bool)

(assert (=> d!1269888 (= (invariantList!598 (toList!2538 lt!1537689)) (noDuplicatedKeys!102 (toList!2538 lt!1537689)))))

(declare-fun bs!606145 () Bool)

(assert (= bs!606145 d!1269888))

(declare-fun m!4912805 () Bool)

(assert (=> bs!606145 m!4912805))

(assert (=> d!1269854 d!1269888))

(declare-fun bs!606146 () Bool)

(declare-fun d!1269890 () Bool)

(assert (= bs!606146 (and d!1269890 d!1269884)))

(declare-fun lambda!133672 () Int)

(assert (=> bs!606146 (= lambda!133672 lambda!133668)))

(declare-fun bs!606147 () Bool)

(assert (= bs!606147 (and d!1269890 b!4319146)))

(assert (=> bs!606147 (= lambda!133672 lambda!133654)))

(declare-fun bs!606148 () Bool)

(assert (= bs!606148 (and d!1269890 b!4319081)))

(assert (=> bs!606148 (= lambda!133672 lambda!133648)))

(declare-fun bs!606149 () Bool)

(assert (= bs!606149 (and d!1269890 d!1269886)))

(assert (=> bs!606149 (= lambda!133672 lambda!133671)))

(declare-fun bs!606150 () Bool)

(assert (= bs!606150 (and d!1269890 d!1269848)))

(assert (=> bs!606150 (not (= lambda!133672 lambda!133651))))

(declare-fun bs!606151 () Bool)

(assert (= bs!606151 (and d!1269890 d!1269866)))

(assert (=> bs!606151 (not (= lambda!133672 lambda!133657))))

(declare-fun bs!606152 () Bool)

(assert (= bs!606152 (and d!1269890 b!4319188)))

(assert (=> bs!606152 (= lambda!133672 lambda!133665)))

(declare-fun lt!1537732 () ListMap!1815)

(assert (=> d!1269890 (invariantList!598 (toList!2538 lt!1537732))))

(declare-fun e!2687100 () ListMap!1815)

(assert (=> d!1269890 (= lt!1537732 e!2687100)))

(declare-fun c!734453 () Bool)

(assert (=> d!1269890 (= c!734453 ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1269890 (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133672)))

(assert (=> d!1269890 (= (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lt!1537732)))

(declare-fun b!4319239 () Bool)

(assert (=> b!4319239 (= e!2687100 (addToMapMapFromBucket!50 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319240 () Bool)

(assert (=> b!4319240 (= e!2687100 (ListMap!1816 Nil!48357))))

(assert (= (and d!1269890 c!734453) b!4319239))

(assert (= (and d!1269890 (not c!734453)) b!4319240))

(declare-fun m!4912807 () Bool)

(assert (=> d!1269890 m!4912807))

(declare-fun m!4912809 () Bool)

(assert (=> d!1269890 m!4912809))

(declare-fun m!4912811 () Bool)

(assert (=> b!4319239 m!4912811))

(assert (=> b!4319239 m!4912811))

(declare-fun m!4912813 () Bool)

(assert (=> b!4319239 m!4912813))

(assert (=> d!1269854 d!1269890))

(assert (=> d!1269854 d!1269852))

(assert (=> d!1269854 d!1269878))

(declare-fun d!1269892 () Bool)

(declare-fun res!1770129 () Bool)

(declare-fun e!2687105 () Bool)

(assert (=> d!1269892 (=> res!1770129 e!2687105)))

(assert (=> d!1269892 (= res!1770129 ((_ is Nil!48357) lt!1537611))))

(assert (=> d!1269892 (= (forall!8801 lt!1537611 lambda!133662) e!2687105)))

(declare-fun b!4319245 () Bool)

(declare-fun e!2687106 () Bool)

(assert (=> b!4319245 (= e!2687105 e!2687106)))

(declare-fun res!1770130 () Bool)

(assert (=> b!4319245 (=> (not res!1770130) (not e!2687106))))

(declare-fun dynLambda!20501 (Int tuple2!47120) Bool)

(assert (=> b!4319245 (= res!1770130 (dynLambda!20501 lambda!133662 (h!53814 lt!1537611)))))

(declare-fun b!4319246 () Bool)

(assert (=> b!4319246 (= e!2687106 (forall!8801 (t!355350 lt!1537611) lambda!133662))))

(assert (= (and d!1269892 (not res!1770129)) b!4319245))

(assert (= (and b!4319245 res!1770130) b!4319246))

(declare-fun b_lambda!127071 () Bool)

(assert (=> (not b_lambda!127071) (not b!4319245)))

(declare-fun m!4912815 () Bool)

(assert (=> b!4319245 m!4912815))

(declare-fun m!4912817 () Bool)

(assert (=> b!4319246 m!4912817))

(assert (=> d!1269876 d!1269892))

(declare-fun d!1269894 () Bool)

(declare-fun res!1770131 () Bool)

(declare-fun e!2687107 () Bool)

(assert (=> d!1269894 (=> res!1770131 e!2687107)))

(assert (=> d!1269894 (= res!1770131 ((_ is Nil!48358) (t!355351 (toList!2537 lt!1537605))))))

(assert (=> d!1269894 (= (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133648) e!2687107)))

(declare-fun b!4319247 () Bool)

(declare-fun e!2687108 () Bool)

(assert (=> b!4319247 (= e!2687107 e!2687108)))

(declare-fun res!1770132 () Bool)

(assert (=> b!4319247 (=> (not res!1770132) (not e!2687108))))

(assert (=> b!4319247 (= res!1770132 (dynLambda!20499 lambda!133648 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))

(declare-fun b!4319248 () Bool)

(assert (=> b!4319248 (= e!2687108 (forall!8800 (t!355351 (t!355351 (toList!2537 lt!1537605))) lambda!133648))))

(assert (= (and d!1269894 (not res!1770131)) b!4319247))

(assert (= (and b!4319247 res!1770132) b!4319248))

(declare-fun b_lambda!127073 () Bool)

(assert (=> (not b_lambda!127073) (not b!4319247)))

(declare-fun m!4912819 () Bool)

(assert (=> b!4319247 m!4912819))

(declare-fun m!4912821 () Bool)

(assert (=> b!4319248 m!4912821))

(assert (=> b!4319161 d!1269894))

(declare-fun bm!299191 () Bool)

(declare-fun call!299201 () Bool)

(declare-fun call!299209 () Bool)

(assert (=> bm!299191 (= call!299201 call!299209)))

(declare-fun b!4319325 () Bool)

(declare-fun e!2687164 () tuple2!47126)

(declare-fun e!2687154 () tuple2!47126)

(assert (=> b!4319325 (= e!2687164 e!2687154)))

(declare-fun c!734488 () Bool)

(declare-datatypes ((SeekEntryResult!20 0))(
  ( (Found!20 (index!1459 (_ BitVec 32))) (Undefined!20) (MissingZero!20 (index!1460 (_ BitVec 32))) (MissingVacant!20 (index!1461 (_ BitVec 32))) (Intermediate!20 (undefined!101 Bool) (index!1462 (_ BitVec 32)) (x!749645 (_ BitVec 32))) )
))
(declare-fun lt!1537803 () SeekEntryResult!20)

(assert (=> b!4319325 (= c!734488 ((_ is MissingZero!20) lt!1537803))))

(declare-fun b!4319326 () Bool)

(declare-fun e!2687162 () Bool)

(assert (=> b!4319326 (= e!2687162 (not call!299201))))

(declare-fun e!2687149 () Bool)

(declare-fun b!4319327 () Bool)

(declare-fun lt!1537789 () SeekEntryResult!20)

(assert (=> b!4319327 (= e!2687149 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537789)) lt!1537608))))

(declare-fun bm!299192 () Bool)

(declare-fun call!299214 () Bool)

(assert (=> bm!299192 (= call!299214 call!299209)))

(declare-fun bm!299193 () Bool)

(declare-fun call!299203 () ListLongMap!1153)

(declare-fun call!299202 () ListLongMap!1153)

(assert (=> bm!299193 (= call!299203 call!299202)))

(declare-fun b!4319328 () Bool)

(declare-fun c!734482 () Bool)

(assert (=> b!4319328 (= c!734482 ((_ is MissingVacant!20) lt!1537803))))

(declare-fun e!2687163 () tuple2!47126)

(assert (=> b!4319328 (= e!2687163 e!2687164)))

(declare-fun bm!299194 () Bool)

(declare-fun call!299210 () Unit!67649)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> bm!299194 (= call!299210 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319329 () Bool)

(declare-fun c!734478 () Bool)

(declare-fun lt!1537808 () SeekEntryResult!20)

(assert (=> b!4319329 (= c!734478 ((_ is MissingVacant!20) lt!1537808))))

(declare-fun e!2687161 () Bool)

(declare-fun e!2687168 () Bool)

(assert (=> b!4319329 (= e!2687161 e!2687168)))

(declare-fun call!299205 () Bool)

(declare-fun bm!299195 () Bool)

(declare-fun lt!1537810 () SeekEntryResult!20)

(declare-fun c!734489 () Bool)

(declare-fun lt!1537798 () SeekEntryResult!20)

(declare-fun c!734483 () Bool)

(declare-fun c!734480 () Bool)

(declare-fun c!734485 () Bool)

(declare-fun c!734486 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!299195 (= call!299205 (inRange!0 (ite c!734485 (ite c!734489 (index!1459 lt!1537810) (ite c!734483 (index!1460 lt!1537798) (index!1461 lt!1537798))) (ite c!734480 (index!1459 lt!1537789) (ite c!734486 (index!1460 lt!1537808) (index!1461 lt!1537808)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bm!299196 () Bool)

(declare-fun call!299197 () Bool)

(assert (=> bm!299196 (= call!299197 call!299205)))

(declare-fun b!4319330 () Bool)

(declare-fun lt!1537801 () Unit!67649)

(declare-fun lt!1537799 () Unit!67649)

(assert (=> b!4319330 (= lt!1537801 lt!1537799)))

(declare-fun call!299199 () ListLongMap!1153)

(assert (=> b!4319330 (= call!299203 call!299199)))

(declare-fun lt!1537792 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 List!48481 Int) Unit!67649)

(assert (=> b!4319330 (= lt!1537799 (lemmaChangeLongMinValueKeyThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537792 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4319330 (= lt!1537792 (bvor (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010))))

(declare-fun e!2687166 () tuple2!47126)

(assert (=> b!4319330 (= e!2687166 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (bvor (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_vacant!4804 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4319331 () Bool)

(declare-fun e!2687160 () Unit!67649)

(declare-fun Unit!67659 () Unit!67649)

(assert (=> b!4319331 (= e!2687160 Unit!67659)))

(declare-fun lt!1537813 () Unit!67649)

(declare-fun call!299198 () Unit!67649)

(assert (=> b!4319331 (= lt!1537813 call!299198)))

(declare-fun call!299213 () SeekEntryResult!20)

(assert (=> b!4319331 (= lt!1537810 call!299213)))

(declare-fun res!1770163 () Bool)

(assert (=> b!4319331 (= res!1770163 ((_ is Found!20) lt!1537810))))

(declare-fun e!2687158 () Bool)

(assert (=> b!4319331 (=> (not res!1770163) (not e!2687158))))

(assert (=> b!4319331 e!2687158))

(declare-fun lt!1537811 () Unit!67649)

(assert (=> b!4319331 (= lt!1537811 lt!1537813)))

(assert (=> b!4319331 false))

(declare-fun b!4319332 () Bool)

(declare-fun res!1770168 () Bool)

(assert (=> b!4319332 (=> (not res!1770168) (not e!2687162))))

(declare-fun call!299204 () Bool)

(assert (=> b!4319332 (= res!1770168 call!299204)))

(declare-fun e!2687150 () Bool)

(assert (=> b!4319332 (= e!2687150 e!2687162)))

(declare-fun b!4319333 () Bool)

(declare-fun c!734481 () Bool)

(assert (=> b!4319333 (= c!734481 ((_ is MissingVacant!20) lt!1537798))))

(declare-fun e!2687156 () Bool)

(assert (=> b!4319333 (= e!2687150 e!2687156)))

(declare-fun b!4319334 () Bool)

(declare-fun res!1770169 () Bool)

(assert (=> b!4319334 (= res!1770169 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1461 lt!1537808)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687157 () Bool)

(assert (=> b!4319334 (=> (not res!1770169) (not e!2687157))))

(declare-fun b!4319335 () Bool)

(declare-fun res!1770172 () Bool)

(assert (=> b!4319335 (= res!1770172 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1461 lt!1537798)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687159 () Bool)

(assert (=> b!4319335 (=> (not res!1770172) (not e!2687159))))

(declare-fun bm!299197 () Bool)

(declare-fun call!299215 () ListLongMap!1153)

(assert (=> bm!299197 (= call!299215 (map!10382 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(declare-fun b!4319336 () Bool)

(assert (=> b!4319336 (= e!2687157 (not call!299214))))

(declare-fun b!4319337 () Bool)

(assert (=> b!4319337 (= e!2687156 ((_ is Undefined!20) lt!1537798))))

(declare-fun b!4319338 () Bool)

(assert (=> b!4319338 (= e!2687159 (not call!299201))))

(declare-fun bm!299198 () Bool)

(declare-fun call!299219 () ListLongMap!1153)

(assert (=> bm!299198 (= call!299199 call!299219)))

(declare-fun lt!1537802 () array!17188)

(declare-fun bm!299199 () Bool)

(declare-fun call!299212 () ListLongMap!1153)

(declare-fun getCurrentListMap!23 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) Int) ListLongMap!1153)

(assert (=> bm!299199 (= call!299212 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319339 () Bool)

(declare-fun lt!1537797 () Unit!67649)

(declare-fun lt!1537794 () Unit!67649)

(assert (=> b!4319339 (= lt!1537797 lt!1537794)))

(declare-fun call!299216 () Bool)

(assert (=> b!4319339 call!299216))

(declare-fun lemmaValidKeyInArrayIsInListMap!13 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) Int) Unit!67649)

(assert (=> b!4319339 (= lt!1537794 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4319339 (= lt!1537802 (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun lt!1537791 () Unit!67649)

(declare-fun lt!1537807 () Unit!67649)

(assert (=> b!4319339 (= lt!1537791 lt!1537807)))

(declare-fun call!299207 () ListLongMap!1153)

(assert (=> b!4319339 (= call!299202 call!299207)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) (_ BitVec 64) List!48481 Int) Unit!67649)

(assert (=> b!4319339 (= lt!1537807 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) lt!1537608 lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1537806 () Unit!67649)

(declare-fun e!2687165 () Unit!67649)

(assert (=> b!4319339 (= lt!1537806 e!2687165)))

(assert (=> b!4319339 (= c!734480 (contains!10396 call!299219 lt!1537608))))

(assert (=> b!4319339 (= e!2687154 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (_vacant!4804 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun bm!299200 () Bool)

(declare-fun call!299196 () SeekEntryResult!20)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!17186 (_ BitVec 32)) SeekEntryResult!20)

(assert (=> bm!299200 (= call!299196 (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319340 () Bool)

(declare-fun res!1770162 () Bool)

(declare-fun e!2687167 () Bool)

(assert (=> b!4319340 (=> (not res!1770162) (not e!2687167))))

(assert (=> b!4319340 (= res!1770162 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1460 lt!1537808)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4319341 () Bool)

(declare-fun e!2687151 () Bool)

(declare-fun call!299218 () ListLongMap!1153)

(assert (=> b!4319341 (= e!2687151 (= call!299218 call!299215))))

(declare-fun b!4319342 () Bool)

(declare-fun lt!1537795 () tuple2!47126)

(declare-fun call!299208 () tuple2!47126)

(assert (=> b!4319342 (= lt!1537795 call!299208)))

(assert (=> b!4319342 (= e!2687154 (tuple2!47127 (_1!26848 lt!1537795) (_2!26848 lt!1537795)))))

(declare-fun b!4319343 () Bool)

(assert (=> b!4319343 (= e!2687158 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537810)) lt!1537608))))

(declare-fun bm!299201 () Bool)

(declare-fun lt!1537809 () tuple2!47126)

(assert (=> bm!299201 (= call!299218 (map!10382 (_2!26848 lt!1537809)))))

(declare-fun b!4319344 () Bool)

(declare-fun Unit!67660 () Unit!67649)

(assert (=> b!4319344 (= e!2687165 Unit!67660)))

(declare-fun lt!1537788 () Unit!67649)

(assert (=> b!4319344 (= lt!1537788 call!299210)))

(declare-fun call!299217 () SeekEntryResult!20)

(assert (=> b!4319344 (= lt!1537808 call!299217)))

(assert (=> b!4319344 (= c!734486 ((_ is MissingZero!20) lt!1537808))))

(assert (=> b!4319344 e!2687161))

(declare-fun lt!1537796 () Unit!67649)

(assert (=> b!4319344 (= lt!1537796 lt!1537788)))

(assert (=> b!4319344 false))

(declare-fun c!734479 () Bool)

(declare-fun lt!1537805 () (_ BitVec 32))

(declare-fun c!734484 () Bool)

(declare-fun bm!299202 () Bool)

(assert (=> bm!299202 (= call!299219 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319345 () Bool)

(declare-fun res!1770165 () Bool)

(assert (=> b!4319345 (=> (not res!1770165) (not e!2687162))))

(assert (=> b!4319345 (= res!1770165 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1460 lt!1537798)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4319346 () Bool)

(declare-fun e!2687155 () Bool)

(assert (=> b!4319346 (= e!2687151 e!2687155)))

(declare-fun res!1770164 () Bool)

(assert (=> b!4319346 (= res!1770164 (contains!10396 call!299218 lt!1537608))))

(assert (=> b!4319346 (=> (not res!1770164) (not e!2687155))))

(declare-fun bm!299203 () Bool)

(assert (=> bm!299203 (= call!299217 call!299196)))

(declare-fun bm!299204 () Bool)

(declare-fun updateHelperNewKey!10 (LongMapFixedSize!9486 (_ BitVec 64) List!48481 (_ BitVec 32)) tuple2!47126)

(assert (=> bm!299204 (= call!299208 (updateHelperNewKey!10 (v!42702 (underlying!9715 (_2!26847 lt!1537622))) lt!1537608 lt!1537611 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803))))))

(declare-fun b!4319347 () Bool)

(assert (=> b!4319347 (= e!2687156 e!2687159)))

(declare-fun res!1770173 () Bool)

(assert (=> b!4319347 (= res!1770173 call!299204)))

(assert (=> b!4319347 (=> (not res!1770173) (not e!2687159))))

(declare-fun b!4319348 () Bool)

(declare-fun lt!1537793 () Unit!67649)

(assert (=> b!4319348 (= lt!1537793 e!2687160)))

(assert (=> b!4319348 (= c!734489 call!299216)))

(assert (=> b!4319348 (= e!2687163 (tuple2!47127 false (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(declare-fun bm!299205 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> bm!299205 (= call!299198 (lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319349 () Bool)

(declare-fun e!2687153 () tuple2!47126)

(assert (=> b!4319349 (= e!2687153 e!2687163)))

(assert (=> b!4319349 (= lt!1537803 (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4319349 (= c!734485 ((_ is Undefined!20) lt!1537803))))

(declare-fun bm!299206 () Bool)

(declare-fun call!299211 () Bool)

(assert (=> bm!299206 (= call!299204 call!299211)))

(declare-fun b!4319350 () Bool)

(declare-fun lt!1537800 () Unit!67649)

(assert (=> b!4319350 (= e!2687165 lt!1537800)))

(assert (=> b!4319350 (= lt!1537800 call!299198)))

(assert (=> b!4319350 (= lt!1537789 call!299217)))

(declare-fun res!1770161 () Bool)

(assert (=> b!4319350 (= res!1770161 ((_ is Found!20) lt!1537789))))

(assert (=> b!4319350 (=> (not res!1770161) (not e!2687149))))

(assert (=> b!4319350 e!2687149))

(declare-fun b!4319351 () Bool)

(assert (=> b!4319351 (= e!2687168 e!2687157)))

(declare-fun res!1770166 () Bool)

(declare-fun call!299200 () Bool)

(assert (=> b!4319351 (= res!1770166 call!299200)))

(assert (=> b!4319351 (=> (not res!1770166) (not e!2687157))))

(declare-fun bm!299207 () Bool)

(assert (=> bm!299207 (= call!299207 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319352 () Bool)

(declare-fun lt!1537812 () Unit!67649)

(assert (=> b!4319352 (= e!2687160 lt!1537812)))

(assert (=> b!4319352 (= lt!1537812 call!299210)))

(assert (=> b!4319352 (= lt!1537798 call!299213)))

(assert (=> b!4319352 (= c!734483 ((_ is MissingZero!20) lt!1537798))))

(assert (=> b!4319352 e!2687150))

(declare-fun bm!299208 () Bool)

(assert (=> bm!299208 (= call!299216 (contains!10396 call!299212 (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803)))))))

(declare-fun bm!299209 () Bool)

(assert (=> bm!299209 (= call!299213 call!299196)))

(declare-fun call!299206 () ListLongMap!1153)

(declare-fun bm!299210 () Bool)

(assert (=> bm!299210 (= call!299202 (+!322 (ite c!734479 call!299206 call!299219) (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4319353 () Bool)

(assert (=> b!4319353 (= e!2687168 ((_ is Undefined!20) lt!1537808))))

(declare-fun b!4319354 () Bool)

(declare-fun e!2687152 () Bool)

(assert (=> b!4319354 (= e!2687152 e!2687151)))

(declare-fun c!734487 () Bool)

(assert (=> b!4319354 (= c!734487 (_1!26848 lt!1537809))))

(declare-fun b!4319355 () Bool)

(assert (=> b!4319355 (= e!2687167 (not call!299214))))

(declare-fun bm!299211 () Bool)

(assert (=> bm!299211 (= call!299206 call!299207)))

(declare-fun bm!299212 () Bool)

(assert (=> bm!299212 (= call!299200 call!299197)))

(declare-fun b!4319357 () Bool)

(assert (=> b!4319357 (= e!2687153 e!2687166)))

(assert (=> b!4319357 (= c!734484 (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4319356 () Bool)

(assert (=> b!4319356 (= e!2687155 (= call!299218 (+!322 call!299215 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun d!1269896 () Bool)

(assert (=> d!1269896 e!2687152))

(declare-fun res!1770167 () Bool)

(assert (=> d!1269896 (=> (not res!1770167) (not e!2687152))))

(declare-fun valid!3754 (LongMapFixedSize!9486) Bool)

(assert (=> d!1269896 (= res!1770167 (valid!3754 (_2!26848 lt!1537809)))))

(assert (=> d!1269896 (= lt!1537809 e!2687153)))

(assert (=> d!1269896 (= c!734479 (= lt!1537608 (bvneg lt!1537608)))))

(assert (=> d!1269896 (valid!3754 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))

(assert (=> d!1269896 (= (update!519 (v!42702 (underlying!9715 (_2!26847 lt!1537622))) lt!1537608 lt!1537611) lt!1537809)))

(declare-fun b!4319358 () Bool)

(declare-fun res!1770170 () Bool)

(assert (=> b!4319358 (= res!1770170 call!299211)))

(assert (=> b!4319358 (=> (not res!1770170) (not e!2687158))))

(declare-fun b!4319359 () Bool)

(declare-fun lt!1537787 () tuple2!47126)

(assert (=> b!4319359 (= e!2687164 (tuple2!47127 (_1!26848 lt!1537787) (_2!26848 lt!1537787)))))

(assert (=> b!4319359 (= lt!1537787 call!299208)))

(declare-fun b!4319360 () Bool)

(declare-fun lt!1537804 () Unit!67649)

(declare-fun lt!1537790 () Unit!67649)

(assert (=> b!4319360 (= lt!1537804 lt!1537790)))

(assert (=> b!4319360 (= call!299203 call!299199)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 List!48481 Int) Unit!67649)

(assert (=> b!4319360 (= lt!1537790 (lemmaChangeZeroKeyThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537805 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4319360 (= lt!1537805 (bvor (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001))))

(assert (=> b!4319360 (= e!2687166 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (bvor (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) lt!1537611 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_vacant!4804 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun bm!299213 () Bool)

(declare-fun arrayContainsKey!0 (array!17186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!299213 (= call!299209 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun bm!299214 () Bool)

(assert (=> bm!299214 (= call!299211 call!299205)))

(declare-fun b!4319361 () Bool)

(declare-fun res!1770171 () Bool)

(assert (=> b!4319361 (= res!1770171 call!299197)))

(assert (=> b!4319361 (=> (not res!1770171) (not e!2687149))))

(declare-fun b!4319362 () Bool)

(declare-fun res!1770174 () Bool)

(assert (=> b!4319362 (=> (not res!1770174) (not e!2687167))))

(assert (=> b!4319362 (= res!1770174 call!299200)))

(assert (=> b!4319362 (= e!2687161 e!2687167)))

(assert (= (and d!1269896 c!734479) b!4319357))

(assert (= (and d!1269896 (not c!734479)) b!4319349))

(assert (= (and b!4319357 c!734484) b!4319360))

(assert (= (and b!4319357 (not c!734484)) b!4319330))

(assert (= (or b!4319360 b!4319330) bm!299211))

(assert (= (or b!4319360 b!4319330) bm!299198))

(assert (= (or b!4319360 b!4319330) bm!299193))

(assert (= (and b!4319349 c!734485) b!4319348))

(assert (= (and b!4319349 (not c!734485)) b!4319328))

(assert (= (and b!4319348 c!734489) b!4319331))

(assert (= (and b!4319348 (not c!734489)) b!4319352))

(assert (= (and b!4319331 res!1770163) b!4319358))

(assert (= (and b!4319358 res!1770170) b!4319343))

(assert (= (and b!4319352 c!734483) b!4319332))

(assert (= (and b!4319352 (not c!734483)) b!4319333))

(assert (= (and b!4319332 res!1770168) b!4319345))

(assert (= (and b!4319345 res!1770165) b!4319326))

(assert (= (and b!4319333 c!734481) b!4319347))

(assert (= (and b!4319333 (not c!734481)) b!4319337))

(assert (= (and b!4319347 res!1770173) b!4319335))

(assert (= (and b!4319335 res!1770172) b!4319338))

(assert (= (or b!4319326 b!4319338) bm!299191))

(assert (= (or b!4319332 b!4319347) bm!299206))

(assert (= (or b!4319358 bm!299206) bm!299214))

(assert (= (or b!4319331 b!4319352) bm!299209))

(assert (= (and b!4319328 c!734482) b!4319359))

(assert (= (and b!4319328 (not c!734482)) b!4319325))

(assert (= (and b!4319325 c!734488) b!4319342))

(assert (= (and b!4319325 (not c!734488)) b!4319339))

(assert (= (and b!4319339 c!734480) b!4319350))

(assert (= (and b!4319339 (not c!734480)) b!4319344))

(assert (= (and b!4319350 res!1770161) b!4319361))

(assert (= (and b!4319361 res!1770171) b!4319327))

(assert (= (and b!4319344 c!734486) b!4319362))

(assert (= (and b!4319344 (not c!734486)) b!4319329))

(assert (= (and b!4319362 res!1770174) b!4319340))

(assert (= (and b!4319340 res!1770162) b!4319355))

(assert (= (and b!4319329 c!734478) b!4319351))

(assert (= (and b!4319329 (not c!734478)) b!4319353))

(assert (= (and b!4319351 res!1770166) b!4319334))

(assert (= (and b!4319334 res!1770169) b!4319336))

(assert (= (or b!4319355 b!4319336) bm!299192))

(assert (= (or b!4319362 b!4319351) bm!299212))

(assert (= (or b!4319361 bm!299212) bm!299196))

(assert (= (or b!4319350 b!4319344) bm!299203))

(assert (= (or b!4319359 b!4319342) bm!299204))

(assert (= (or b!4319331 b!4319350) bm!299205))

(assert (= (or bm!299214 bm!299196) bm!299195))

(assert (= (or bm!299209 bm!299203) bm!299200))

(assert (= (or b!4319348 b!4319339) bm!299199))

(assert (= (or bm!299191 bm!299192) bm!299213))

(assert (= (or b!4319352 b!4319344) bm!299194))

(assert (= (or b!4319348 b!4319339) bm!299208))

(assert (= (or bm!299211 b!4319339) bm!299207))

(assert (= (or bm!299198 b!4319339) bm!299202))

(assert (= (or bm!299193 b!4319339) bm!299210))

(assert (= (and d!1269896 res!1770167) b!4319354))

(assert (= (and b!4319354 c!734487) b!4319346))

(assert (= (and b!4319354 (not c!734487)) b!4319341))

(assert (= (and b!4319346 res!1770164) b!4319356))

(assert (= (or b!4319356 b!4319341) bm!299197))

(assert (= (or b!4319346 b!4319356 b!4319341) bm!299201))

(declare-fun m!4912823 () Bool)

(assert (=> b!4319339 m!4912823))

(declare-fun m!4912825 () Bool)

(assert (=> b!4319339 m!4912825))

(declare-fun m!4912827 () Bool)

(assert (=> b!4319339 m!4912827))

(declare-fun m!4912829 () Bool)

(assert (=> b!4319339 m!4912829))

(declare-fun m!4912831 () Bool)

(assert (=> b!4319327 m!4912831))

(declare-fun m!4912833 () Bool)

(assert (=> bm!299199 m!4912833))

(declare-fun m!4912835 () Bool)

(assert (=> b!4319360 m!4912835))

(declare-fun m!4912837 () Bool)

(assert (=> d!1269896 m!4912837))

(declare-fun m!4912839 () Bool)

(assert (=> d!1269896 m!4912839))

(declare-fun m!4912841 () Bool)

(assert (=> bm!299202 m!4912841))

(declare-fun m!4912843 () Bool)

(assert (=> b!4319343 m!4912843))

(declare-fun m!4912845 () Bool)

(assert (=> bm!299208 m!4912845))

(declare-fun m!4912847 () Bool)

(assert (=> bm!299208 m!4912847))

(declare-fun m!4912849 () Bool)

(assert (=> b!4319335 m!4912849))

(assert (=> bm!299207 m!4912825))

(declare-fun m!4912851 () Bool)

(assert (=> bm!299207 m!4912851))

(declare-fun m!4912853 () Bool)

(assert (=> bm!299197 m!4912853))

(declare-fun m!4912855 () Bool)

(assert (=> bm!299200 m!4912855))

(declare-fun m!4912857 () Bool)

(assert (=> bm!299194 m!4912857))

(declare-fun m!4912859 () Bool)

(assert (=> bm!299205 m!4912859))

(declare-fun m!4912861 () Bool)

(assert (=> bm!299195 m!4912861))

(declare-fun m!4912863 () Bool)

(assert (=> bm!299204 m!4912863))

(declare-fun m!4912865 () Bool)

(assert (=> b!4319345 m!4912865))

(declare-fun m!4912867 () Bool)

(assert (=> b!4319356 m!4912867))

(declare-fun m!4912869 () Bool)

(assert (=> bm!299213 m!4912869))

(declare-fun m!4912871 () Bool)

(assert (=> b!4319340 m!4912871))

(declare-fun m!4912873 () Bool)

(assert (=> bm!299210 m!4912873))

(declare-fun m!4912875 () Bool)

(assert (=> b!4319334 m!4912875))

(declare-fun m!4912877 () Bool)

(assert (=> b!4319330 m!4912877))

(declare-fun m!4912879 () Bool)

(assert (=> bm!299201 m!4912879))

(declare-fun m!4912881 () Bool)

(assert (=> b!4319346 m!4912881))

(assert (=> b!4319349 m!4912855))

(assert (=> b!4319110 d!1269896))

(declare-fun b!4319364 () Bool)

(declare-fun e!2687169 () List!48481)

(declare-fun e!2687170 () List!48481)

(assert (=> b!4319364 (= e!2687169 e!2687170)))

(declare-fun c!734490 () Bool)

(assert (=> b!4319364 (= c!734490 ((_ is Cons!48357) (t!355350 lt!1537603)))))

(declare-fun b!4319366 () Bool)

(assert (=> b!4319366 (= e!2687170 Nil!48357)))

(declare-fun b!4319365 () Bool)

(assert (=> b!4319365 (= e!2687170 (Cons!48357 (h!53814 (t!355350 lt!1537603)) (removePairForKey!258 (t!355350 (t!355350 lt!1537603)) key!2048)))))

(declare-fun b!4319363 () Bool)

(assert (=> b!4319363 (= e!2687169 (t!355350 (t!355350 lt!1537603)))))

(declare-fun d!1269898 () Bool)

(declare-fun lt!1537814 () List!48481)

(assert (=> d!1269898 (not (containsKey!393 lt!1537814 key!2048))))

(assert (=> d!1269898 (= lt!1537814 e!2687169)))

(declare-fun c!734491 () Bool)

(assert (=> d!1269898 (= c!734491 (and ((_ is Cons!48357) (t!355350 lt!1537603)) (= (_1!26845 (h!53814 (t!355350 lt!1537603))) key!2048)))))

(assert (=> d!1269898 (noDuplicateKeys!259 (t!355350 lt!1537603))))

(assert (=> d!1269898 (= (removePairForKey!258 (t!355350 lt!1537603) key!2048) lt!1537814)))

(assert (= (and d!1269898 c!734491) b!4319363))

(assert (= (and d!1269898 (not c!734491)) b!4319364))

(assert (= (and b!4319364 c!734490) b!4319365))

(assert (= (and b!4319364 (not c!734490)) b!4319366))

(declare-fun m!4912883 () Bool)

(assert (=> b!4319365 m!4912883))

(declare-fun m!4912885 () Bool)

(assert (=> d!1269898 m!4912885))

(declare-fun m!4912887 () Bool)

(assert (=> d!1269898 m!4912887))

(assert (=> b!4319172 d!1269898))

(declare-fun d!1269900 () Bool)

(assert (=> d!1269900 (= (imbalanced!77 (v!42703 (underlying!9716 thiss!42308))) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsgt (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1269840 d!1269900))

(declare-fun d!1269902 () Bool)

(assert (=> d!1269902 (= (valid!3753 (v!42703 (underlying!9716 thiss!42308))) (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun bs!606153 () Bool)

(assert (= bs!606153 d!1269902))

(declare-fun m!4912889 () Bool)

(assert (=> bs!606153 m!4912889))

(assert (=> d!1269840 d!1269902))

(assert (=> bm!299139 d!1269852))

(declare-fun d!1269904 () Bool)

(assert (=> d!1269904 (= (map!10380 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))) (map!10382 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bs!606154 () Bool)

(assert (= bs!606154 d!1269904))

(declare-fun m!4912891 () Bool)

(assert (=> bs!606154 m!4912891))

(assert (=> bm!299120 d!1269904))

(declare-fun d!1269906 () Bool)

(assert (=> d!1269906 (= (get!15666 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608)) (v!42709 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608)))))

(assert (=> b!4319182 d!1269906))

(declare-fun b!4319377 () Bool)

(declare-fun e!2687176 () Option!10294)

(assert (=> b!4319377 (= e!2687176 (getValueByKey!293 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(declare-fun b!4319375 () Bool)

(declare-fun e!2687175 () Option!10294)

(assert (=> b!4319375 (= e!2687175 (Some!10293 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319378 () Bool)

(assert (=> b!4319378 (= e!2687176 None!10293)))

(declare-fun d!1269908 () Bool)

(declare-fun c!734496 () Bool)

(assert (=> d!1269908 (= c!734496 (and ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (= (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)))))

(assert (=> d!1269908 (= (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608) e!2687175)))

(declare-fun b!4319376 () Bool)

(assert (=> b!4319376 (= e!2687175 e!2687176)))

(declare-fun c!734497 () Bool)

(assert (=> b!4319376 (= c!734497 (and ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (not (= (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))))

(assert (= (and d!1269908 c!734496) b!4319375))

(assert (= (and d!1269908 (not c!734496)) b!4319376))

(assert (= (and b!4319376 c!734497) b!4319377))

(assert (= (and b!4319376 (not c!734497)) b!4319378))

(declare-fun m!4912893 () Bool)

(assert (=> b!4319377 m!4912893))

(assert (=> b!4319182 d!1269908))

(assert (=> b!4319182 d!1269852))

(declare-fun bm!299223 () Bool)

(declare-fun call!299230 () LongMapFixedSize!9486)

(declare-fun lt!1537836 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!26 ((_ BitVec 32) Int) LongMapFixedSize!9486)

(assert (=> bm!299223 (= call!299230 (getNewLongMapFixedSize!26 lt!1537836 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299224 () Bool)

(declare-fun call!299231 () LongMapFixedSize!9486)

(assert (=> bm!299224 (= call!299231 call!299230)))

(declare-fun b!4319399 () Bool)

(declare-datatypes ((tuple3!5504 0))(
  ( (tuple3!5505 (_1!26849 Bool) (_2!26849 Cell!18781) (_3!3285 MutLongMap!4743)) )
))
(declare-fun e!2687190 () tuple3!5504)

(declare-fun lt!1537844 () tuple2!47126)

(assert (=> b!4319399 (= e!2687190 (ite (_1!26848 lt!1537844) (tuple3!5505 true (underlying!9715 (v!42703 (underlying!9716 thiss!42308))) (LongMap!4743 (Cell!18782 (_2!26848 lt!1537844)))) (tuple3!5505 false (Cell!18782 (_2!26848 lt!1537844)) (v!42703 (underlying!9716 thiss!42308)))))))

(declare-datatypes ((tuple2!47128 0))(
  ( (tuple2!47129 (_1!26850 Bool) (_2!26850 Cell!18781)) )
))
(declare-fun lt!1537839 () tuple2!47128)

(declare-fun repackFrom!12 (MutLongMap!4743 LongMapFixedSize!9486 (_ BitVec 32)) tuple2!47126)

(assert (=> b!4319399 (= lt!1537844 (repackFrom!12 (v!42703 (underlying!9716 thiss!42308)) (v!42702 (_2!26850 lt!1537839)) (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun b!4319400 () Bool)

(declare-fun c!734506 () Bool)

(assert (=> b!4319400 (= c!734506 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2687194 () tuple2!47128)

(declare-fun e!2687193 () tuple2!47128)

(assert (=> b!4319400 (= e!2687194 e!2687193)))

(declare-fun call!299229 () tuple2!47126)

(declare-fun lt!1537835 () tuple2!47126)

(declare-fun bm!299225 () Bool)

(declare-fun c!734508 () Bool)

(declare-fun c!734507 () Bool)

(assert (=> bm!299225 (= call!299229 (update!519 (ite c!734507 (_2!26848 lt!1537835) call!299231) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4319401 () Bool)

(declare-fun e!2687192 () Bool)

(declare-fun lt!1537838 () tuple2!47124)

(assert (=> b!4319401 (= e!2687192 (= (map!10380 (_2!26847 lt!1537838)) (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))

(declare-fun b!4319402 () Bool)

(declare-fun lt!1537837 () Cell!18781)

(assert (=> b!4319402 (= e!2687193 (tuple2!47129 true lt!1537837))))

(declare-fun b!4319404 () Bool)

(declare-fun e!2687191 () Bool)

(assert (=> b!4319404 (= e!2687191 e!2687192)))

(declare-fun res!1770180 () Bool)

(assert (=> b!4319404 (=> res!1770180 e!2687192)))

(assert (=> b!4319404 (= res!1770180 (= (_1!26847 lt!1537838) false))))

(declare-fun bm!299226 () Bool)

(declare-fun call!299228 () tuple2!47126)

(assert (=> bm!299226 (= call!299228 call!299229)))

(declare-fun b!4319405 () Bool)

(declare-fun e!2687189 () tuple2!47128)

(assert (=> b!4319405 (= e!2687189 e!2687194)))

(assert (=> b!4319405 (= c!734508 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4319406 () Bool)

(declare-fun lt!1537841 () tuple2!47126)

(assert (=> b!4319406 (= lt!1537841 call!299228)))

(assert (=> b!4319406 (= e!2687194 (tuple2!47129 (_1!26848 lt!1537841) (Cell!18782 (_2!26848 lt!1537841))))))

(declare-fun b!4319407 () Bool)

(assert (=> b!4319407 (= e!2687190 (tuple3!5505 false (_2!26850 lt!1537839) (v!42703 (underlying!9716 thiss!42308))))))

(declare-fun b!4319408 () Bool)

(declare-fun lt!1537842 () tuple2!47126)

(assert (=> b!4319408 (= e!2687189 (tuple2!47129 (and (_1!26848 lt!1537835) (_1!26848 lt!1537842)) (Cell!18782 (_2!26848 lt!1537842))))))

(assert (=> b!4319408 (= lt!1537835 (update!519 call!299230 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4319408 (= lt!1537842 call!299229)))

(declare-fun d!1269910 () Bool)

(assert (=> d!1269910 e!2687191))

(declare-fun res!1770179 () Bool)

(assert (=> d!1269910 (=> (not res!1770179) (not e!2687191))))

(assert (=> d!1269910 (= res!1770179 ((_ is LongMap!4743) (_2!26847 lt!1537838)))))

(declare-fun lt!1537843 () tuple3!5504)

(assert (=> d!1269910 (= lt!1537838 (tuple2!47125 (_1!26849 lt!1537843) (_3!3285 lt!1537843)))))

(assert (=> d!1269910 (= lt!1537843 e!2687190)))

(declare-fun c!734509 () Bool)

(assert (=> d!1269910 (= c!734509 (not (_1!26850 lt!1537839)))))

(assert (=> d!1269910 (= lt!1537839 e!2687189)))

(assert (=> d!1269910 (= c!734507 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1269910 (= lt!1537837 (Cell!18782 (getNewLongMapFixedSize!26 lt!1537836 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun computeNewMask!12 (MutLongMap!4743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1269910 (= lt!1537836 (computeNewMask!12 (v!42703 (underlying!9716 thiss!42308)) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1269910 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269910 (= (repack!81 (v!42703 (underlying!9716 thiss!42308))) lt!1537838)))

(declare-fun b!4319403 () Bool)

(declare-fun lt!1537840 () tuple2!47126)

(assert (=> b!4319403 (= e!2687193 (tuple2!47129 (_1!26848 lt!1537840) (Cell!18782 (_2!26848 lt!1537840))))))

(assert (=> b!4319403 (= lt!1537840 call!299228)))

(assert (= (and d!1269910 c!734507) b!4319408))

(assert (= (and d!1269910 (not c!734507)) b!4319405))

(assert (= (and b!4319405 c!734508) b!4319406))

(assert (= (and b!4319405 (not c!734508)) b!4319400))

(assert (= (and b!4319400 c!734506) b!4319403))

(assert (= (and b!4319400 (not c!734506)) b!4319402))

(assert (= (or b!4319406 b!4319403) bm!299224))

(assert (= (or b!4319406 b!4319403) bm!299226))

(assert (= (or b!4319408 bm!299224) bm!299223))

(assert (= (or b!4319408 bm!299226) bm!299225))

(assert (= (and d!1269910 c!734509) b!4319407))

(assert (= (and d!1269910 (not c!734509)) b!4319399))

(assert (= (and d!1269910 res!1770179) b!4319404))

(assert (= (and b!4319404 (not res!1770180)) b!4319401))

(declare-fun m!4912895 () Bool)

(assert (=> b!4319399 m!4912895))

(declare-fun m!4912897 () Bool)

(assert (=> d!1269910 m!4912897))

(declare-fun m!4912899 () Bool)

(assert (=> d!1269910 m!4912899))

(assert (=> d!1269910 m!4912655))

(assert (=> bm!299223 m!4912897))

(declare-fun m!4912901 () Bool)

(assert (=> b!4319408 m!4912901))

(declare-fun m!4912903 () Bool)

(assert (=> bm!299225 m!4912903))

(declare-fun m!4912905 () Bool)

(assert (=> b!4319401 m!4912905))

(assert (=> b!4319401 m!4912633))

(assert (=> b!4319108 d!1269910))

(declare-fun d!1269912 () Bool)

(declare-fun e!2687199 () Bool)

(assert (=> d!1269912 e!2687199))

(declare-fun res!1770183 () Bool)

(assert (=> d!1269912 (=> res!1770183 e!2687199)))

(declare-fun lt!1537854 () Bool)

(assert (=> d!1269912 (= res!1770183 (not lt!1537854))))

(declare-fun lt!1537853 () Bool)

(assert (=> d!1269912 (= lt!1537854 lt!1537853)))

(declare-fun lt!1537856 () Unit!67649)

(declare-fun e!2687200 () Unit!67649)

(assert (=> d!1269912 (= lt!1537856 e!2687200)))

(declare-fun c!734512 () Bool)

(assert (=> d!1269912 (= c!734512 lt!1537853)))

(assert (=> d!1269912 (= lt!1537853 (containsKey!394 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(assert (=> d!1269912 (= (contains!10396 (ite c!734429 lt!1537676 call!299142) call!299143) lt!1537854)))

(declare-fun b!4319415 () Bool)

(declare-fun lt!1537855 () Unit!67649)

(assert (=> b!4319415 (= e!2687200 lt!1537855)))

(assert (=> b!4319415 (= lt!1537855 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(assert (=> b!4319415 (isDefined!7594 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(declare-fun b!4319416 () Bool)

(declare-fun Unit!67661 () Unit!67649)

(assert (=> b!4319416 (= e!2687200 Unit!67661)))

(declare-fun b!4319417 () Bool)

(assert (=> b!4319417 (= e!2687199 (isDefined!7594 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143)))))

(assert (= (and d!1269912 c!734512) b!4319415))

(assert (= (and d!1269912 (not c!734512)) b!4319416))

(assert (= (and d!1269912 (not res!1770183)) b!4319417))

(declare-fun m!4912907 () Bool)

(assert (=> d!1269912 m!4912907))

(declare-fun m!4912909 () Bool)

(assert (=> b!4319415 m!4912909))

(declare-fun m!4912911 () Bool)

(assert (=> b!4319415 m!4912911))

(assert (=> b!4319415 m!4912911))

(declare-fun m!4912913 () Bool)

(assert (=> b!4319415 m!4912913))

(assert (=> b!4319417 m!4912911))

(assert (=> b!4319417 m!4912911))

(assert (=> b!4319417 m!4912913))

(assert (=> bm!299138 d!1269912))

(declare-fun d!1269914 () Bool)

(declare-fun res!1770184 () Bool)

(declare-fun e!2687201 () Bool)

(assert (=> d!1269914 (=> res!1770184 e!2687201)))

(assert (=> d!1269914 (= res!1770184 ((_ is Nil!48357) lt!1537603))))

(assert (=> d!1269914 (= (forall!8801 lt!1537603 lambda!133661) e!2687201)))

(declare-fun b!4319418 () Bool)

(declare-fun e!2687202 () Bool)

(assert (=> b!4319418 (= e!2687201 e!2687202)))

(declare-fun res!1770185 () Bool)

(assert (=> b!4319418 (=> (not res!1770185) (not e!2687202))))

(assert (=> b!4319418 (= res!1770185 (dynLambda!20501 lambda!133661 (h!53814 lt!1537603)))))

(declare-fun b!4319419 () Bool)

(assert (=> b!4319419 (= e!2687202 (forall!8801 (t!355350 lt!1537603) lambda!133661))))

(assert (= (and d!1269914 (not res!1770184)) b!4319418))

(assert (= (and b!4319418 res!1770185) b!4319419))

(declare-fun b_lambda!127075 () Bool)

(assert (=> (not b_lambda!127075) (not b!4319418)))

(declare-fun m!4912915 () Bool)

(assert (=> b!4319418 m!4912915))

(declare-fun m!4912917 () Bool)

(assert (=> b!4319419 m!4912917))

(assert (=> d!1269872 d!1269914))

(declare-fun d!1269916 () Bool)

(declare-fun e!2687205 () Bool)

(assert (=> d!1269916 e!2687205))

(declare-fun res!1770190 () Bool)

(assert (=> d!1269916 (=> (not res!1770190) (not e!2687205))))

(declare-fun lt!1537866 () ListLongMap!1153)

(assert (=> d!1269916 (= res!1770190 (contains!10396 lt!1537866 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun lt!1537868 () List!48482)

(assert (=> d!1269916 (= lt!1537866 (ListLongMap!1154 lt!1537868))))

(declare-fun lt!1537867 () Unit!67649)

(declare-fun lt!1537865 () Unit!67649)

(assert (=> d!1269916 (= lt!1537867 lt!1537865)))

(assert (=> d!1269916 (= (getValueByKey!293 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) (Some!10293 (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun lemmaContainsTupThenGetReturnValue!93 (List!48482 (_ BitVec 64) List!48481) Unit!67649)

(assert (=> d!1269916 (= lt!1537865 (lemmaContainsTupThenGetReturnValue!93 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun insertStrictlySorted!53 (List!48482 (_ BitVec 64) List!48481) List!48482)

(assert (=> d!1269916 (= lt!1537868 (insertStrictlySorted!53 (toList!2537 call!299125) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> d!1269916 (= (+!322 call!299125 (tuple2!47123 lt!1537608 lt!1537611)) lt!1537866)))

(declare-fun b!4319424 () Bool)

(declare-fun res!1770191 () Bool)

(assert (=> b!4319424 (=> (not res!1770191) (not e!2687205))))

(assert (=> b!4319424 (= res!1770191 (= (getValueByKey!293 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) (Some!10293 (_2!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun b!4319425 () Bool)

(assert (=> b!4319425 (= e!2687205 (contains!10398 (toList!2537 lt!1537866) (tuple2!47123 lt!1537608 lt!1537611)))))

(assert (= (and d!1269916 res!1770190) b!4319424))

(assert (= (and b!4319424 res!1770191) b!4319425))

(declare-fun m!4912919 () Bool)

(assert (=> d!1269916 m!4912919))

(declare-fun m!4912921 () Bool)

(assert (=> d!1269916 m!4912921))

(declare-fun m!4912923 () Bool)

(assert (=> d!1269916 m!4912923))

(declare-fun m!4912925 () Bool)

(assert (=> d!1269916 m!4912925))

(declare-fun m!4912927 () Bool)

(assert (=> b!4319424 m!4912927))

(declare-fun m!4912929 () Bool)

(assert (=> b!4319425 m!4912929))

(assert (=> b!4319109 d!1269916))

(declare-fun d!1269918 () Bool)

(assert (=> d!1269918 (= (apply!11126 (ite c!734429 lt!1537676 call!299142) call!299143) (get!15666 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143)))))

(declare-fun bs!606155 () Bool)

(assert (= bs!606155 d!1269918))

(assert (=> bs!606155 m!4912911))

(assert (=> bs!606155 m!4912911))

(declare-fun m!4912931 () Bool)

(assert (=> bs!606155 m!4912931))

(assert (=> bm!299137 d!1269918))

(declare-fun d!1269920 () Bool)

(declare-fun e!2687206 () Bool)

(assert (=> d!1269920 e!2687206))

(declare-fun res!1770192 () Bool)

(assert (=> d!1269920 (=> res!1770192 e!2687206)))

(declare-fun lt!1537870 () Bool)

(assert (=> d!1269920 (= res!1770192 (not lt!1537870))))

(declare-fun lt!1537869 () Bool)

(assert (=> d!1269920 (= lt!1537870 lt!1537869)))

(declare-fun lt!1537872 () Unit!67649)

(declare-fun e!2687207 () Unit!67649)

(assert (=> d!1269920 (= lt!1537872 e!2687207)))

(declare-fun c!734513 () Bool)

(assert (=> d!1269920 (= c!734513 lt!1537869)))

(assert (=> d!1269920 (= lt!1537869 (containsKey!394 (toList!2537 call!299126) lt!1537608))))

(assert (=> d!1269920 (= (contains!10396 call!299126 lt!1537608) lt!1537870)))

(declare-fun b!4319426 () Bool)

(declare-fun lt!1537871 () Unit!67649)

(assert (=> b!4319426 (= e!2687207 lt!1537871)))

(assert (=> b!4319426 (= lt!1537871 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299126) lt!1537608))))

(assert (=> b!4319426 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299126) lt!1537608))))

(declare-fun b!4319427 () Bool)

(declare-fun Unit!67662 () Unit!67649)

(assert (=> b!4319427 (= e!2687207 Unit!67662)))

(declare-fun b!4319428 () Bool)

(assert (=> b!4319428 (= e!2687206 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299126) lt!1537608)))))

(assert (= (and d!1269920 c!734513) b!4319426))

(assert (= (and d!1269920 (not c!734513)) b!4319427))

(assert (= (and d!1269920 (not res!1770192)) b!4319428))

(declare-fun m!4912933 () Bool)

(assert (=> d!1269920 m!4912933))

(declare-fun m!4912935 () Bool)

(assert (=> b!4319426 m!4912935))

(declare-fun m!4912937 () Bool)

(assert (=> b!4319426 m!4912937))

(assert (=> b!4319426 m!4912937))

(declare-fun m!4912939 () Bool)

(assert (=> b!4319426 m!4912939))

(assert (=> b!4319428 m!4912937))

(assert (=> b!4319428 m!4912937))

(assert (=> b!4319428 m!4912939))

(assert (=> b!4319107 d!1269920))

(declare-fun d!1269922 () Bool)

(declare-fun choose!26368 (Hashable!4659 K!9604) (_ BitVec 64))

(assert (=> d!1269922 (= (hash!1157 (hashF!6889 thiss!42308) key!2048) (choose!26368 (hashF!6889 thiss!42308) key!2048))))

(declare-fun bs!606156 () Bool)

(assert (= bs!606156 d!1269922))

(declare-fun m!4912941 () Bool)

(assert (=> bs!606156 m!4912941))

(assert (=> d!1269844 d!1269922))

(declare-fun d!1269924 () Bool)

(assert (=> d!1269924 (= (map!10380 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))) (map!10382 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))))))

(declare-fun bs!606157 () Bool)

(assert (= bs!606157 d!1269924))

(declare-fun m!4912943 () Bool)

(assert (=> bs!606157 m!4912943))

(assert (=> bm!299121 d!1269924))

(declare-fun d!1269926 () Bool)

(declare-fun res!1770193 () Bool)

(declare-fun e!2687208 () Bool)

(assert (=> d!1269926 (=> res!1770193 e!2687208)))

(assert (=> d!1269926 (= res!1770193 (not ((_ is Cons!48357) (t!355350 lt!1537611))))))

(assert (=> d!1269926 (= (noDuplicateKeys!259 (t!355350 lt!1537611)) e!2687208)))

(declare-fun b!4319429 () Bool)

(declare-fun e!2687209 () Bool)

(assert (=> b!4319429 (= e!2687208 e!2687209)))

(declare-fun res!1770194 () Bool)

(assert (=> b!4319429 (=> (not res!1770194) (not e!2687209))))

(assert (=> b!4319429 (= res!1770194 (not (containsKey!393 (t!355350 (t!355350 lt!1537611)) (_1!26845 (h!53814 (t!355350 lt!1537611))))))))

(declare-fun b!4319430 () Bool)

(assert (=> b!4319430 (= e!2687209 (noDuplicateKeys!259 (t!355350 (t!355350 lt!1537611))))))

(assert (= (and d!1269926 (not res!1770193)) b!4319429))

(assert (= (and b!4319429 res!1770194) b!4319430))

(declare-fun m!4912945 () Bool)

(assert (=> b!4319429 m!4912945))

(declare-fun m!4912947 () Bool)

(assert (=> b!4319430 m!4912947))

(assert (=> b!4319120 d!1269926))

(declare-fun d!1269928 () Bool)

(declare-fun e!2687210 () Bool)

(assert (=> d!1269928 e!2687210))

(declare-fun res!1770195 () Bool)

(assert (=> d!1269928 (=> res!1770195 e!2687210)))

(declare-fun lt!1537874 () Bool)

(assert (=> d!1269928 (= res!1770195 (not lt!1537874))))

(declare-fun lt!1537873 () Bool)

(assert (=> d!1269928 (= lt!1537874 lt!1537873)))

(declare-fun lt!1537876 () Unit!67649)

(declare-fun e!2687211 () Unit!67649)

(assert (=> d!1269928 (= lt!1537876 e!2687211)))

(declare-fun c!734514 () Bool)

(assert (=> d!1269928 (= c!734514 lt!1537873)))

(assert (=> d!1269928 (= lt!1537873 (containsKey!394 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(assert (=> d!1269928 (= (contains!10396 (map!10380 (v!42703 (underlying!9716 thiss!42308))) lt!1537608) lt!1537874)))

(declare-fun b!4319431 () Bool)

(declare-fun lt!1537875 () Unit!67649)

(assert (=> b!4319431 (= e!2687211 lt!1537875)))

(assert (=> b!4319431 (= lt!1537875 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(assert (=> b!4319431 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(declare-fun b!4319432 () Bool)

(declare-fun Unit!67663 () Unit!67649)

(assert (=> b!4319432 (= e!2687211 Unit!67663)))

(declare-fun b!4319433 () Bool)

(assert (=> b!4319433 (= e!2687210 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608)))))

(assert (= (and d!1269928 c!734514) b!4319431))

(assert (= (and d!1269928 (not c!734514)) b!4319432))

(assert (= (and d!1269928 (not res!1770195)) b!4319433))

(declare-fun m!4912949 () Bool)

(assert (=> d!1269928 m!4912949))

(declare-fun m!4912951 () Bool)

(assert (=> b!4319431 m!4912951))

(assert (=> b!4319431 m!4912757))

(assert (=> b!4319431 m!4912757))

(declare-fun m!4912953 () Bool)

(assert (=> b!4319431 m!4912953))

(assert (=> b!4319433 m!4912757))

(assert (=> b!4319433 m!4912757))

(assert (=> b!4319433 m!4912953))

(assert (=> d!1269842 d!1269928))

(assert (=> d!1269842 d!1269852))

(declare-fun b!4319454 () Bool)

(declare-fun e!2687225 () Unit!67649)

(declare-fun Unit!67664 () Unit!67649)

(assert (=> b!4319454 (= e!2687225 Unit!67664)))

(declare-fun b!4319455 () Bool)

(assert (=> b!4319455 false))

(declare-fun lt!1537913 () Unit!67649)

(declare-fun lt!1537911 () Unit!67649)

(assert (=> b!4319455 (= lt!1537913 lt!1537911)))

(declare-fun lt!1537909 () SeekEntryResult!20)

(declare-fun lt!1537921 () (_ BitVec 32))

(assert (=> b!4319455 (and ((_ is Found!20) lt!1537909) (= (index!1459 lt!1537909) lt!1537921))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!17186 (_ BitVec 32)) SeekEntryResult!20)

(assert (=> b!4319455 (= lt!1537909 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!17186 (_ BitVec 32)) Unit!67649)

(assert (=> b!4319455 (= lt!1537911 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1537608 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1537919 () Unit!67649)

(declare-fun lt!1537918 () Unit!67649)

(assert (=> b!4319455 (= lt!1537919 lt!1537918)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!17186 (_ BitVec 32)) Bool)

(assert (=> b!4319455 (arrayForallSeekEntryOrOpenFound!0 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!17186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> b!4319455 (= lt!1537918 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 lt!1537921))))

(declare-fun arrayScanForKey!0 (array!17186 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4319455 (= lt!1537921 (arrayScanForKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun lt!1537912 () Unit!67649)

(declare-fun lt!1537917 () Unit!67649)

(assert (=> b!4319455 (= lt!1537912 lt!1537917)))

(declare-fun e!2687226 () Bool)

(assert (=> b!4319455 e!2687226))

(declare-fun c!734528 () Bool)

(assert (=> b!4319455 (= c!734528 (and (not (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!16 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> b!4319455 (= lt!1537917 (lemmaKeyInListMapIsInArray!16 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun Unit!67665 () Unit!67649)

(assert (=> b!4319455 (= e!2687225 Unit!67665)))

(declare-fun lt!1537916 () SeekEntryResult!20)

(declare-fun call!299238 () Bool)

(declare-fun call!299239 () ListLongMap!1153)

(declare-fun c!734527 () Bool)

(declare-fun bm!299233 () Bool)

(assert (=> bm!299233 (= call!299238 (contains!10396 call!299239 (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608)))))

(declare-fun b!4319457 () Bool)

(declare-fun e!2687224 () Bool)

(assert (=> b!4319457 (= e!2687224 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4319458 () Bool)

(assert (=> b!4319458 (= e!2687226 (ite (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4319459 () Bool)

(assert (=> b!4319459 (= c!734527 ((_ is Found!20) lt!1537916))))

(assert (=> b!4319459 (= lt!1537916 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun e!2687223 () Bool)

(assert (=> b!4319459 (= e!2687224 e!2687223)))

(declare-fun b!4319460 () Bool)

(assert (=> b!4319460 (= e!2687223 true)))

(declare-fun lt!1537914 () Unit!67649)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!17186 (_ BitVec 64) (_ BitVec 32)) Unit!67649)

(assert (=> b!4319460 (= lt!1537914 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537916)))))

(declare-fun call!299240 () Bool)

(assert (=> b!4319460 call!299240))

(declare-fun lt!1537908 () Unit!67649)

(assert (=> b!4319460 (= lt!1537908 lt!1537914)))

(declare-fun lt!1537920 () Unit!67649)

(assert (=> b!4319460 (= lt!1537920 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537916) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4319460 call!299238))

(declare-fun lt!1537910 () Unit!67649)

(assert (=> b!4319460 (= lt!1537910 lt!1537920)))

(declare-fun b!4319461 () Bool)

(declare-fun e!2687222 () Bool)

(assert (=> b!4319461 (= e!2687222 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4319462 () Bool)

(assert (=> b!4319462 (= e!2687223 false)))

(declare-fun c!734526 () Bool)

(assert (=> b!4319462 (= c!734526 call!299238)))

(declare-fun lt!1537915 () Unit!67649)

(assert (=> b!4319462 (= lt!1537915 e!2687225)))

(declare-fun b!4319463 () Bool)

(assert (=> b!4319463 (= e!2687226 call!299240)))

(declare-fun bm!299234 () Bool)

(assert (=> bm!299234 (= call!299239 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299235 () Bool)

(assert (=> bm!299235 (= call!299240 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun b!4319456 () Bool)

(assert (=> b!4319456 (= e!2687222 e!2687224)))

(declare-fun c!734525 () Bool)

(assert (=> b!4319456 (= c!734525 (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1269930 () Bool)

(declare-fun lt!1537907 () Bool)

(assert (=> d!1269930 (= lt!1537907 (contains!10396 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(assert (=> d!1269930 (= lt!1537907 e!2687222)))

(declare-fun c!734529 () Bool)

(assert (=> d!1269930 (= c!734529 (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1269930 (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))

(assert (=> d!1269930 (= (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608) lt!1537907)))

(assert (= (and d!1269930 c!734529) b!4319461))

(assert (= (and d!1269930 (not c!734529)) b!4319456))

(assert (= (and b!4319456 c!734525) b!4319457))

(assert (= (and b!4319456 (not c!734525)) b!4319459))

(assert (= (and b!4319459 c!734527) b!4319460))

(assert (= (and b!4319459 (not c!734527)) b!4319462))

(assert (= (and b!4319462 c!734526) b!4319455))

(assert (= (and b!4319462 (not c!734526)) b!4319454))

(assert (= (and b!4319455 c!734528) b!4319463))

(assert (= (and b!4319455 (not c!734528)) b!4319458))

(assert (= (or b!4319460 b!4319463) bm!299235))

(assert (= (or b!4319460 b!4319462) bm!299234))

(assert (= (or b!4319460 b!4319462) bm!299233))

(assert (=> d!1269930 m!4912731))

(assert (=> d!1269930 m!4912731))

(declare-fun m!4912955 () Bool)

(assert (=> d!1269930 m!4912955))

(assert (=> d!1269930 m!4912889))

(declare-fun m!4912957 () Bool)

(assert (=> bm!299234 m!4912957))

(declare-fun m!4912959 () Bool)

(assert (=> bm!299233 m!4912959))

(declare-fun m!4912961 () Bool)

(assert (=> bm!299233 m!4912961))

(declare-fun m!4912963 () Bool)

(assert (=> b!4319460 m!4912963))

(declare-fun m!4912965 () Bool)

(assert (=> b!4319460 m!4912965))

(declare-fun m!4912967 () Bool)

(assert (=> b!4319455 m!4912967))

(declare-fun m!4912969 () Bool)

(assert (=> b!4319455 m!4912969))

(declare-fun m!4912971 () Bool)

(assert (=> b!4319455 m!4912971))

(declare-fun m!4912973 () Bool)

(assert (=> b!4319455 m!4912973))

(declare-fun m!4912975 () Bool)

(assert (=> b!4319455 m!4912975))

(declare-fun m!4912977 () Bool)

(assert (=> b!4319455 m!4912977))

(declare-fun m!4912979 () Bool)

(assert (=> bm!299235 m!4912979))

(assert (=> b!4319459 m!4912967))

(assert (=> d!1269842 d!1269930))

(assert (=> d!1269842 d!1269902))

(declare-fun d!1269932 () Bool)

(declare-fun res!1770200 () Bool)

(declare-fun e!2687231 () Bool)

(assert (=> d!1269932 (=> res!1770200 e!2687231)))

(assert (=> d!1269932 (= res!1770200 (and ((_ is Cons!48357) (t!355350 lt!1537611)) (= (_1!26845 (h!53814 (t!355350 lt!1537611))) (_1!26845 (h!53814 lt!1537611)))))))

(assert (=> d!1269932 (= (containsKey!393 (t!355350 lt!1537611) (_1!26845 (h!53814 lt!1537611))) e!2687231)))

(declare-fun b!4319468 () Bool)

(declare-fun e!2687232 () Bool)

(assert (=> b!4319468 (= e!2687231 e!2687232)))

(declare-fun res!1770201 () Bool)

(assert (=> b!4319468 (=> (not res!1770201) (not e!2687232))))

(assert (=> b!4319468 (= res!1770201 ((_ is Cons!48357) (t!355350 lt!1537611)))))

(declare-fun b!4319469 () Bool)

(assert (=> b!4319469 (= e!2687232 (containsKey!393 (t!355350 (t!355350 lt!1537611)) (_1!26845 (h!53814 lt!1537611))))))

(assert (= (and d!1269932 (not res!1770200)) b!4319468))

(assert (= (and b!4319468 res!1770201) b!4319469))

(declare-fun m!4912981 () Bool)

(assert (=> b!4319469 m!4912981))

(assert (=> b!4319119 d!1269932))

(declare-fun d!1269934 () Bool)

(declare-fun res!1770202 () Bool)

(declare-fun e!2687233 () Bool)

(assert (=> d!1269934 (=> res!1770202 e!2687233)))

(assert (=> d!1269934 (= res!1770202 ((_ is Nil!48357) (removePairForKey!258 lt!1537603 key!2048)))))

(assert (=> d!1269934 (= (forall!8801 (removePairForKey!258 lt!1537603 key!2048) lambda!133660) e!2687233)))

(declare-fun b!4319470 () Bool)

(declare-fun e!2687234 () Bool)

(assert (=> b!4319470 (= e!2687233 e!2687234)))

(declare-fun res!1770203 () Bool)

(assert (=> b!4319470 (=> (not res!1770203) (not e!2687234))))

(assert (=> b!4319470 (= res!1770203 (dynLambda!20501 lambda!133660 (h!53814 (removePairForKey!258 lt!1537603 key!2048))))))

(declare-fun b!4319471 () Bool)

(assert (=> b!4319471 (= e!2687234 (forall!8801 (t!355350 (removePairForKey!258 lt!1537603 key!2048)) lambda!133660))))

(assert (= (and d!1269934 (not res!1770202)) b!4319470))

(assert (= (and b!4319470 res!1770203) b!4319471))

(declare-fun b_lambda!127077 () Bool)

(assert (=> (not b_lambda!127077) (not b!4319470)))

(declare-fun m!4912983 () Bool)

(assert (=> b!4319470 m!4912983))

(declare-fun m!4912985 () Bool)

(assert (=> b!4319471 m!4912985))

(assert (=> d!1269870 d!1269934))

(declare-fun d!1269936 () Bool)

(declare-fun isEmpty!28109 (Option!10293) Bool)

(assert (=> d!1269936 (= (isDefined!7595 (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048)) (not (isEmpty!28109 (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048))))))

(declare-fun bs!606158 () Bool)

(assert (= bs!606158 d!1269936))

(assert (=> bs!606158 m!4912689))

(declare-fun m!4912987 () Bool)

(assert (=> bs!606158 m!4912987))

(assert (=> b!4319155 d!1269936))

(declare-fun e!2687246 () Bool)

(declare-fun b!4319488 () Bool)

(assert (=> b!4319488 (= e!2687246 (not (containsKey!393 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048)))))

(declare-fun b!4319489 () Bool)

(declare-fun e!2687249 () Option!10293)

(assert (=> b!4319489 (= e!2687249 None!10292)))

(declare-fun b!4319490 () Bool)

(assert (=> b!4319490 (= e!2687249 (getPair!159 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) key!2048))))

(declare-fun d!1269938 () Bool)

(declare-fun e!2687248 () Bool)

(assert (=> d!1269938 e!2687248))

(declare-fun res!1770215 () Bool)

(assert (=> d!1269938 (=> res!1770215 e!2687248)))

(assert (=> d!1269938 (= res!1770215 e!2687246)))

(declare-fun res!1770212 () Bool)

(assert (=> d!1269938 (=> (not res!1770212) (not e!2687246))))

(declare-fun lt!1537924 () Option!10293)

(assert (=> d!1269938 (= res!1770212 (isEmpty!28109 lt!1537924))))

(declare-fun e!2687247 () Option!10293)

(assert (=> d!1269938 (= lt!1537924 e!2687247)))

(declare-fun c!734535 () Bool)

(assert (=> d!1269938 (= c!734535 (and ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (= (_1!26845 (h!53814 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) key!2048)))))

(assert (=> d!1269938 (noDuplicateKeys!259 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))

(assert (=> d!1269938 (= (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048) lt!1537924)))

(declare-fun b!4319491 () Bool)

(declare-fun res!1770213 () Bool)

(declare-fun e!2687245 () Bool)

(assert (=> b!4319491 (=> (not res!1770213) (not e!2687245))))

(declare-fun get!15667 (Option!10293) tuple2!47120)

(assert (=> b!4319491 (= res!1770213 (= (_1!26845 (get!15667 lt!1537924)) key!2048))))

(declare-fun b!4319492 () Bool)

(assert (=> b!4319492 (= e!2687248 e!2687245)))

(declare-fun res!1770214 () Bool)

(assert (=> b!4319492 (=> (not res!1770214) (not e!2687245))))

(assert (=> b!4319492 (= res!1770214 (isDefined!7595 lt!1537924))))

(declare-fun b!4319493 () Bool)

(declare-fun contains!10401 (List!48481 tuple2!47120) Bool)

(assert (=> b!4319493 (= e!2687245 (contains!10401 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) (get!15667 lt!1537924)))))

(declare-fun b!4319494 () Bool)

(assert (=> b!4319494 (= e!2687247 e!2687249)))

(declare-fun c!734534 () Bool)

(assert (=> b!4319494 (= c!734534 ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(declare-fun b!4319495 () Bool)

(assert (=> b!4319495 (= e!2687247 (Some!10292 (h!53814 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (= (and d!1269938 c!734535) b!4319495))

(assert (= (and d!1269938 (not c!734535)) b!4319494))

(assert (= (and b!4319494 c!734534) b!4319490))

(assert (= (and b!4319494 (not c!734534)) b!4319489))

(assert (= (and d!1269938 res!1770212) b!4319488))

(assert (= (and d!1269938 (not res!1770215)) b!4319492))

(assert (= (and b!4319492 res!1770214) b!4319491))

(assert (= (and b!4319491 res!1770213) b!4319493))

(declare-fun m!4912989 () Bool)

(assert (=> b!4319490 m!4912989))

(assert (=> b!4319488 m!4912687))

(declare-fun m!4912991 () Bool)

(assert (=> b!4319488 m!4912991))

(declare-fun m!4912993 () Bool)

(assert (=> b!4319493 m!4912993))

(assert (=> b!4319493 m!4912687))

(assert (=> b!4319493 m!4912993))

(declare-fun m!4912995 () Bool)

(assert (=> b!4319493 m!4912995))

(declare-fun m!4912997 () Bool)

(assert (=> b!4319492 m!4912997))

(assert (=> b!4319491 m!4912993))

(declare-fun m!4912999 () Bool)

(assert (=> d!1269938 m!4912999))

(assert (=> d!1269938 m!4912687))

(declare-fun m!4913001 () Bool)

(assert (=> d!1269938 m!4913001))

(assert (=> b!4319155 d!1269938))

(declare-fun d!1269940 () Bool)

(declare-fun e!2687250 () Bool)

(assert (=> d!1269940 e!2687250))

(declare-fun c!734536 () Bool)

(assert (=> d!1269940 (= c!734536 (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))

(declare-fun lt!1537925 () List!48481)

(assert (=> d!1269940 (= lt!1537925 (apply!11127 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(assert (=> d!1269940 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269940 (= (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) lt!1537925)))

(declare-fun b!4319496 () Bool)

(assert (=> b!4319496 (= e!2687250 (= lt!1537925 (get!15666 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))))

(declare-fun b!4319497 () Bool)

(assert (=> b!4319497 (= e!2687250 (= lt!1537925 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672)))))

(assert (=> b!4319497 ((_ is LongMap!4743) (v!42703 (underlying!9716 thiss!42308)))))

(assert (= (and d!1269940 c!734536) b!4319496))

(assert (= (and d!1269940 (not c!734536)) b!4319497))

(declare-fun b_lambda!127079 () Bool)

(assert (=> (not b_lambda!127079) (not b!4319497)))

(declare-fun t!355355 () Bool)

(declare-fun tb!257357 () Bool)

(assert (=> (and b!4319079 (= (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) t!355355) tb!257357))

(assert (=> b!4319497 t!355355))

(declare-fun result!314862 () Bool)

(declare-fun b_and!340457 () Bool)

(assert (= b_and!340455 (and (=> t!355355 result!314862) b_and!340457)))

(assert (=> d!1269940 m!4912701))

(declare-fun m!4913003 () Bool)

(assert (=> d!1269940 m!4913003))

(assert (=> d!1269940 m!4912655))

(assert (=> b!4319496 m!4912633))

(declare-fun m!4913005 () Bool)

(assert (=> b!4319496 m!4913005))

(assert (=> b!4319496 m!4913005))

(declare-fun m!4913007 () Bool)

(assert (=> b!4319496 m!4913007))

(declare-fun m!4913009 () Bool)

(assert (=> b!4319497 m!4913009))

(assert (=> b!4319155 d!1269940))

(declare-fun d!1269942 () Bool)

(assert (=> d!1269942 (= (valid!3753 (_2!26847 lt!1537623)) (valid!3754 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))))))

(declare-fun bs!606159 () Bool)

(assert (= bs!606159 d!1269942))

(declare-fun m!4913011 () Bool)

(assert (=> bs!606159 m!4913011))

(assert (=> b!4319113 d!1269942))

(assert (=> d!1269874 d!1269842))

(declare-fun call!299251 () List!48481)

(declare-fun e!2687279 () Bool)

(declare-fun lt!1537952 () SeekEntryResult!20)

(declare-fun b!4319534 () Bool)

(assert (=> b!4319534 (= e!2687279 (= call!299251 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(declare-fun bm!299244 () Bool)

(declare-fun call!299252 () ListLongMap!1153)

(declare-fun call!299249 () ListLongMap!1153)

(declare-fun call!299250 () List!48481)

(declare-fun c!734554 () Bool)

(assert (=> bm!299244 (= call!299250 (apply!11126 (ite c!734554 call!299249 call!299252) lt!1537608))))

(declare-fun b!4319535 () Bool)

(declare-fun e!2687281 () Bool)

(declare-fun e!2687274 () Bool)

(assert (=> b!4319535 (= e!2687281 e!2687274)))

(declare-fun res!1770224 () Bool)

(assert (=> b!4319535 (= res!1770224 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4319535 (=> (not res!1770224) (not e!2687274))))

(declare-fun b!4319536 () Bool)

(declare-fun lt!1537957 () Unit!67649)

(declare-fun lt!1537955 () Unit!67649)

(assert (=> b!4319536 (= lt!1537957 lt!1537955)))

(assert (=> b!4319536 e!2687281))

(assert (=> b!4319536 (= c!734554 (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) (_ BitVec 32) Int) Unit!67649)

(assert (=> b!4319536 (= lt!1537955 (lemmaKeyInListMapThenSameValueInArray!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1537951 () Unit!67649)

(declare-fun lt!1537949 () Unit!67649)

(assert (=> b!4319536 (= lt!1537951 lt!1537949)))

(assert (=> b!4319536 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952)))))

(assert (=> b!4319536 (= lt!1537949 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1537948 () Unit!67649)

(declare-fun lt!1537956 () Unit!67649)

(assert (=> b!4319536 (= lt!1537948 lt!1537956)))

(assert (=> b!4319536 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000)))

(assert (=> b!4319536 (= lt!1537956 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952)))))

(declare-fun e!2687276 () List!48481)

(assert (=> b!4319536 (= e!2687276 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952)))))

(declare-fun d!1269944 () Bool)

(declare-fun e!2687278 () Bool)

(assert (=> d!1269944 e!2687278))

(declare-fun c!734555 () Bool)

(assert (=> d!1269944 (= c!734555 (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(declare-fun lt!1537953 () List!48481)

(declare-fun e!2687277 () List!48481)

(assert (=> d!1269944 (= lt!1537953 e!2687277)))

(declare-fun c!734556 () Bool)

(assert (=> d!1269944 (= c!734556 (= lt!1537608 (bvneg lt!1537608)))))

(assert (=> d!1269944 (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))

(assert (=> d!1269944 (= (apply!11127 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608) lt!1537953)))

(declare-fun b!4319537 () Bool)

(declare-fun e!2687275 () List!48481)

(assert (=> b!4319537 (= e!2687275 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(declare-fun b!4319538 () Bool)

(declare-fun c!734557 () Bool)

(assert (=> b!4319538 (= c!734557 (and (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2687282 () List!48481)

(assert (=> b!4319538 (= e!2687282 e!2687275)))

(declare-fun b!4319539 () Bool)

(assert (=> b!4319539 (= e!2687275 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun b!4319540 () Bool)

(declare-fun e!2687273 () Bool)

(declare-fun lt!1537950 () SeekEntryResult!20)

(assert (=> b!4319540 (= e!2687273 (inRange!0 (index!1459 lt!1537950) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319541 () Bool)

(assert (=> b!4319541 (= e!2687277 e!2687282)))

(declare-fun c!734552 () Bool)

(assert (=> b!4319541 (= c!734552 (and (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4319542 () Bool)

(assert (=> b!4319542 (= e!2687277 e!2687276)))

(assert (=> b!4319542 (= lt!1537952 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1537958 () Unit!67649)

(declare-fun lemmaSeekEntryGivesInRangeIndex!10 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64)) Unit!67649)

(assert (=> b!4319542 (= lt!1537958 (lemmaSeekEntryGivesInRangeIndex!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(assert (=> b!4319542 (= lt!1537950 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun res!1770226 () Bool)

(assert (=> b!4319542 (= res!1770226 (not ((_ is Found!20) lt!1537950)))))

(assert (=> b!4319542 (=> res!1770226 e!2687273)))

(assert (=> b!4319542 e!2687273))

(declare-fun lt!1537954 () Unit!67649)

(assert (=> b!4319542 (= lt!1537954 lt!1537958)))

(declare-fun c!734553 () Bool)

(assert (=> b!4319542 (= c!734553 ((_ is Found!20) lt!1537952))))

(declare-fun bm!299245 () Bool)

(assert (=> bm!299245 (= call!299249 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319543 () Bool)

(assert (=> b!4319543 (= e!2687274 (= call!299250 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319544 () Bool)

(declare-fun res!1770227 () Bool)

(declare-fun e!2687283 () Bool)

(assert (=> b!4319544 (=> (not res!1770227) (not e!2687283))))

(assert (=> b!4319544 (= res!1770227 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2687280 () Bool)

(assert (=> b!4319544 (= e!2687280 e!2687283)))

(declare-fun bm!299246 () Bool)

(assert (=> bm!299246 (= call!299252 call!299249)))

(declare-fun b!4319545 () Bool)

(assert (=> b!4319545 (= e!2687278 (= lt!1537953 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608)))))

(declare-fun b!4319546 () Bool)

(assert (=> b!4319546 (= e!2687281 e!2687280)))

(declare-fun c!734551 () Bool)

(assert (=> b!4319546 (= c!734551 (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4319547 () Bool)

(assert (=> b!4319547 (= e!2687278 (= lt!1537953 (get!15666 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))))

(declare-fun b!4319548 () Bool)

(declare-fun res!1770225 () Bool)

(assert (=> b!4319548 (=> (not res!1770225) (not e!2687279))))

(assert (=> b!4319548 (= res!1770225 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000))))

(assert (=> b!4319548 (= e!2687280 e!2687279)))

(declare-fun bm!299247 () Bool)

(assert (=> bm!299247 (= call!299251 call!299250)))

(declare-fun b!4319549 () Bool)

(assert (=> b!4319549 (= e!2687276 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(declare-fun b!4319550 () Bool)

(assert (=> b!4319550 (= e!2687283 (= call!299251 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319551 () Bool)

(assert (=> b!4319551 (= e!2687282 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (= (and d!1269944 c!734556) b!4319541))

(assert (= (and d!1269944 (not c!734556)) b!4319542))

(assert (= (and b!4319541 c!734552) b!4319551))

(assert (= (and b!4319541 (not c!734552)) b!4319538))

(assert (= (and b!4319538 c!734557) b!4319539))

(assert (= (and b!4319538 (not c!734557)) b!4319537))

(assert (= (and b!4319542 (not res!1770226)) b!4319540))

(assert (= (and b!4319542 c!734553) b!4319536))

(assert (= (and b!4319542 (not c!734553)) b!4319549))

(assert (= (and b!4319536 c!734554) b!4319535))

(assert (= (and b!4319536 (not c!734554)) b!4319546))

(assert (= (and b!4319535 res!1770224) b!4319543))

(assert (= (and b!4319546 c!734551) b!4319544))

(assert (= (and b!4319546 (not c!734551)) b!4319548))

(assert (= (and b!4319544 res!1770227) b!4319550))

(assert (= (and b!4319548 res!1770225) b!4319534))

(assert (= (or b!4319550 b!4319534) bm!299246))

(assert (= (or b!4319550 b!4319534) bm!299247))

(assert (= (or b!4319543 bm!299246) bm!299245))

(assert (= (or b!4319543 bm!299247) bm!299244))

(assert (= (and d!1269944 c!734555) b!4319547))

(assert (= (and d!1269944 (not c!734555)) b!4319545))

(declare-fun b_lambda!127081 () Bool)

(assert (=> (not b_lambda!127081) (not b!4319537)))

(assert (=> b!4319537 t!355353))

(declare-fun b_and!340459 () Bool)

(assert (= b_and!340457 (and (=> t!355353 result!314856) b_and!340459)))

(declare-fun b_lambda!127083 () Bool)

(assert (=> (not b_lambda!127083) (not b!4319545)))

(assert (=> b!4319545 t!355353))

(declare-fun b_and!340461 () Bool)

(assert (= b_and!340459 (and (=> t!355353 result!314856) b_and!340461)))

(declare-fun b_lambda!127085 () Bool)

(assert (=> (not b_lambda!127085) (not b!4319549)))

(assert (=> b!4319549 t!355353))

(declare-fun b_and!340463 () Bool)

(assert (= b_and!340461 (and (=> t!355353 result!314856) b_and!340463)))

(assert (=> d!1269944 m!4912673))

(assert (=> d!1269944 m!4912889))

(declare-fun m!4913013 () Bool)

(assert (=> bm!299244 m!4913013))

(assert (=> bm!299245 m!4912957))

(declare-fun m!4913015 () Bool)

(assert (=> b!4319534 m!4913015))

(assert (=> b!4319537 m!4912761))

(declare-fun m!4913017 () Bool)

(assert (=> b!4319536 m!4913017))

(assert (=> b!4319536 m!4912957))

(declare-fun m!4913019 () Bool)

(assert (=> b!4319536 m!4913019))

(declare-fun m!4913021 () Bool)

(assert (=> b!4319536 m!4913021))

(declare-fun m!4913023 () Bool)

(assert (=> b!4319536 m!4913023))

(assert (=> b!4319536 m!4913019))

(assert (=> b!4319536 m!4913015))

(declare-fun m!4913025 () Bool)

(assert (=> b!4319536 m!4913025))

(assert (=> b!4319536 m!4912957))

(assert (=> b!4319536 m!4912979))

(assert (=> b!4319545 m!4912761))

(declare-fun m!4913027 () Bool)

(assert (=> b!4319540 m!4913027))

(assert (=> b!4319548 m!4912979))

(assert (=> b!4319542 m!4912967))

(declare-fun m!4913029 () Bool)

(assert (=> b!4319542 m!4913029))

(assert (=> b!4319549 m!4912761))

(assert (=> b!4319547 m!4912731))

(declare-fun m!4913031 () Bool)

(assert (=> b!4319547 m!4913031))

(assert (=> b!4319547 m!4913031))

(declare-fun m!4913033 () Bool)

(assert (=> b!4319547 m!4913033))

(assert (=> d!1269874 d!1269944))

(assert (=> d!1269874 d!1269902))

(declare-fun bs!606160 () Bool)

(declare-fun d!1269946 () Bool)

(assert (= bs!606160 (and d!1269946 d!1269884)))

(declare-fun lambda!133675 () Int)

(assert (=> bs!606160 (= lambda!133675 lambda!133668)))

(declare-fun bs!606161 () Bool)

(assert (= bs!606161 (and d!1269946 b!4319146)))

(assert (=> bs!606161 (= lambda!133675 lambda!133654)))

(declare-fun bs!606162 () Bool)

(assert (= bs!606162 (and d!1269946 b!4319081)))

(assert (=> bs!606162 (= lambda!133675 lambda!133648)))

(declare-fun bs!606163 () Bool)

(assert (= bs!606163 (and d!1269946 d!1269886)))

(assert (=> bs!606163 (= lambda!133675 lambda!133671)))

(declare-fun bs!606164 () Bool)

(assert (= bs!606164 (and d!1269946 d!1269848)))

(assert (=> bs!606164 (not (= lambda!133675 lambda!133651))))

(declare-fun bs!606165 () Bool)

(assert (= bs!606165 (and d!1269946 d!1269890)))

(assert (=> bs!606165 (= lambda!133675 lambda!133672)))

(declare-fun bs!606166 () Bool)

(assert (= bs!606166 (and d!1269946 d!1269866)))

(assert (=> bs!606166 (not (= lambda!133675 lambda!133657))))

(declare-fun bs!606167 () Bool)

(assert (= bs!606167 (and d!1269946 b!4319188)))

(assert (=> bs!606167 (= lambda!133675 lambda!133665)))

(declare-fun e!2687286 () Bool)

(assert (=> d!1269946 e!2687286))

(declare-fun res!1770230 () Bool)

(assert (=> d!1269946 (=> (not res!1770230) (not e!2687286))))

(assert (=> d!1269946 (= res!1770230 (contains!10396 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(declare-fun lt!1537961 () Unit!67649)

(declare-fun choose!26369 (ListLongMap!1153 K!9604 Hashable!4659) Unit!67649)

(assert (=> d!1269946 (= lt!1537961 (choose!26369 lt!1537676 key!2048 (hashF!6889 thiss!42308)))))

(assert (=> d!1269946 (forall!8800 (toList!2537 lt!1537676) lambda!133675)))

(assert (=> d!1269946 (= (lemmaInGenericMapThenInLongMap!159 lt!1537676 key!2048 (hashF!6889 thiss!42308)) lt!1537961)))

(declare-fun b!4319554 () Bool)

(assert (=> b!4319554 (= e!2687286 (isDefined!7595 (getPair!159 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1269946 res!1770230) b!4319554))

(assert (=> d!1269946 m!4912645))

(assert (=> d!1269946 m!4912645))

(declare-fun m!4913035 () Bool)

(assert (=> d!1269946 m!4913035))

(declare-fun m!4913037 () Bool)

(assert (=> d!1269946 m!4913037))

(declare-fun m!4913039 () Bool)

(assert (=> d!1269946 m!4913039))

(assert (=> b!4319554 m!4912645))

(assert (=> b!4319554 m!4912645))

(declare-fun m!4913041 () Bool)

(assert (=> b!4319554 m!4913041))

(assert (=> b!4319554 m!4913041))

(declare-fun m!4913043 () Bool)

(assert (=> b!4319554 m!4913043))

(assert (=> b!4319554 m!4913043))

(declare-fun m!4913045 () Bool)

(assert (=> b!4319554 m!4913045))

(assert (=> b!4319154 d!1269946))

(declare-fun d!1269948 () Bool)

(declare-fun lt!1537964 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7567 (List!48482) (InoxSet tuple2!47122))

(assert (=> d!1269948 (= lt!1537964 (select (content!7567 lt!1537669) (tuple2!47123 lt!1537672 lt!1537673)))))

(declare-fun e!2687292 () Bool)

(assert (=> d!1269948 (= lt!1537964 e!2687292)))

(declare-fun res!1770236 () Bool)

(assert (=> d!1269948 (=> (not res!1770236) (not e!2687292))))

(assert (=> d!1269948 (= res!1770236 ((_ is Cons!48358) lt!1537669))))

(assert (=> d!1269948 (= (contains!10398 lt!1537669 (tuple2!47123 lt!1537672 lt!1537673)) lt!1537964)))

(declare-fun b!4319559 () Bool)

(declare-fun e!2687291 () Bool)

(assert (=> b!4319559 (= e!2687292 e!2687291)))

(declare-fun res!1770235 () Bool)

(assert (=> b!4319559 (=> res!1770235 e!2687291)))

(assert (=> b!4319559 (= res!1770235 (= (h!53815 lt!1537669) (tuple2!47123 lt!1537672 lt!1537673)))))

(declare-fun b!4319560 () Bool)

(assert (=> b!4319560 (= e!2687291 (contains!10398 (t!355351 lt!1537669) (tuple2!47123 lt!1537672 lt!1537673)))))

(assert (= (and d!1269948 res!1770236) b!4319559))

(assert (= (and b!4319559 (not res!1770235)) b!4319560))

(declare-fun m!4913047 () Bool)

(assert (=> d!1269948 m!4913047))

(declare-fun m!4913049 () Bool)

(assert (=> d!1269948 m!4913049))

(declare-fun m!4913051 () Bool)

(assert (=> b!4319560 m!4913051))

(assert (=> b!4319147 d!1269948))

(declare-fun d!1269950 () Bool)

(assert (=> d!1269950 (isDefined!7594 (getValueByKey!293 lt!1537685 lt!1537672))))

(declare-fun lt!1537967 () Unit!67649)

(declare-fun choose!26370 (List!48482 (_ BitVec 64)) Unit!67649)

(assert (=> d!1269950 (= lt!1537967 (choose!26370 lt!1537685 lt!1537672))))

(declare-fun e!2687295 () Bool)

(assert (=> d!1269950 e!2687295))

(declare-fun res!1770239 () Bool)

(assert (=> d!1269950 (=> (not res!1770239) (not e!2687295))))

(declare-fun isStrictlySorted!20 (List!48482) Bool)

(assert (=> d!1269950 (= res!1770239 (isStrictlySorted!20 lt!1537685))))

(assert (=> d!1269950 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!212 lt!1537685 lt!1537672) lt!1537967)))

(declare-fun b!4319563 () Bool)

(assert (=> b!4319563 (= e!2687295 (containsKey!394 lt!1537685 lt!1537672))))

(assert (= (and d!1269950 res!1770239) b!4319563))

(assert (=> d!1269950 m!4912713))

(assert (=> d!1269950 m!4912713))

(assert (=> d!1269950 m!4912715))

(declare-fun m!4913053 () Bool)

(assert (=> d!1269950 m!4913053))

(declare-fun m!4913055 () Bool)

(assert (=> d!1269950 m!4913055))

(declare-fun m!4913057 () Bool)

(assert (=> b!4319563 m!4913057))

(assert (=> b!4319147 d!1269950))

(declare-fun d!1269952 () Bool)

(assert (=> d!1269952 (containsKey!394 lt!1537671 lt!1537672)))

(declare-fun lt!1537970 () Unit!67649)

(declare-fun choose!26371 (List!48482 (_ BitVec 64)) Unit!67649)

(assert (=> d!1269952 (= lt!1537970 (choose!26371 lt!1537671 lt!1537672))))

(declare-fun e!2687298 () Bool)

(assert (=> d!1269952 e!2687298))

(declare-fun res!1770242 () Bool)

(assert (=> d!1269952 (=> (not res!1770242) (not e!2687298))))

(assert (=> d!1269952 (= res!1770242 (isStrictlySorted!20 lt!1537671))))

(assert (=> d!1269952 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!160 lt!1537671 lt!1537672) lt!1537970)))

(declare-fun b!4319566 () Bool)

(assert (=> b!4319566 (= e!2687298 (isDefined!7594 (getValueByKey!293 lt!1537671 lt!1537672)))))

(assert (= (and d!1269952 res!1770242) b!4319566))

(assert (=> d!1269952 m!4912723))

(declare-fun m!4913059 () Bool)

(assert (=> d!1269952 m!4913059))

(declare-fun m!4913061 () Bool)

(assert (=> d!1269952 m!4913061))

(declare-fun m!4913063 () Bool)

(assert (=> b!4319566 m!4913063))

(assert (=> b!4319566 m!4913063))

(declare-fun m!4913065 () Bool)

(assert (=> b!4319566 m!4913065))

(assert (=> b!4319147 d!1269952))

(assert (=> b!4319147 d!1269940))

(declare-fun b!4319569 () Bool)

(declare-fun e!2687300 () Option!10294)

(assert (=> b!4319569 (= e!2687300 (getValueByKey!293 (t!355351 lt!1537685) lt!1537672))))

(declare-fun b!4319567 () Bool)

(declare-fun e!2687299 () Option!10294)

(assert (=> b!4319567 (= e!2687299 (Some!10293 (_2!26846 (h!53815 lt!1537685))))))

(declare-fun b!4319570 () Bool)

(assert (=> b!4319570 (= e!2687300 None!10293)))

(declare-fun d!1269954 () Bool)

(declare-fun c!734558 () Bool)

(assert (=> d!1269954 (= c!734558 (and ((_ is Cons!48358) lt!1537685) (= (_1!26846 (h!53815 lt!1537685)) lt!1537672)))))

(assert (=> d!1269954 (= (getValueByKey!293 lt!1537685 lt!1537672) e!2687299)))

(declare-fun b!4319568 () Bool)

(assert (=> b!4319568 (= e!2687299 e!2687300)))

(declare-fun c!734559 () Bool)

(assert (=> b!4319568 (= c!734559 (and ((_ is Cons!48358) lt!1537685) (not (= (_1!26846 (h!53815 lt!1537685)) lt!1537672))))))

(assert (= (and d!1269954 c!734558) b!4319567))

(assert (= (and d!1269954 (not c!734558)) b!4319568))

(assert (= (and b!4319568 c!734559) b!4319569))

(assert (= (and b!4319568 (not c!734559)) b!4319570))

(declare-fun m!4913067 () Bool)

(assert (=> b!4319569 m!4913067))

(assert (=> b!4319147 d!1269954))

(declare-fun d!1269956 () Bool)

(assert (=> d!1269956 (contains!10398 lt!1537669 (tuple2!47123 lt!1537672 lt!1537673))))

(declare-fun lt!1537973 () Unit!67649)

(declare-fun choose!26372 (List!48482 (_ BitVec 64) List!48481) Unit!67649)

(assert (=> d!1269956 (= lt!1537973 (choose!26372 lt!1537669 lt!1537672 lt!1537673))))

(declare-fun e!2687303 () Bool)

(assert (=> d!1269956 e!2687303))

(declare-fun res!1770245 () Bool)

(assert (=> d!1269956 (=> (not res!1770245) (not e!2687303))))

(assert (=> d!1269956 (= res!1770245 (isStrictlySorted!20 lt!1537669))))

(assert (=> d!1269956 (= (lemmaGetValueByKeyImpliesContainsTuple!171 lt!1537669 lt!1537672 lt!1537673) lt!1537973)))

(declare-fun b!4319573 () Bool)

(assert (=> b!4319573 (= e!2687303 (= (getValueByKey!293 lt!1537669 lt!1537672) (Some!10293 lt!1537673)))))

(assert (= (and d!1269956 res!1770245) b!4319573))

(assert (=> d!1269956 m!4912711))

(declare-fun m!4913069 () Bool)

(assert (=> d!1269956 m!4913069))

(declare-fun m!4913071 () Bool)

(assert (=> d!1269956 m!4913071))

(declare-fun m!4913073 () Bool)

(assert (=> b!4319573 m!4913073))

(assert (=> b!4319147 d!1269956))

(declare-fun d!1269958 () Bool)

(declare-fun isEmpty!28110 (Option!10294) Bool)

(assert (=> d!1269958 (= (isDefined!7594 (getValueByKey!293 lt!1537685 lt!1537672)) (not (isEmpty!28110 (getValueByKey!293 lt!1537685 lt!1537672))))))

(declare-fun bs!606168 () Bool)

(assert (= bs!606168 d!1269958))

(assert (=> bs!606168 m!4912713))

(declare-fun m!4913075 () Bool)

(assert (=> bs!606168 m!4913075))

(assert (=> b!4319147 d!1269958))

(declare-fun d!1269960 () Bool)

(declare-fun res!1770250 () Bool)

(declare-fun e!2687308 () Bool)

(assert (=> d!1269960 (=> res!1770250 e!2687308)))

(assert (=> d!1269960 (= res!1770250 (and ((_ is Cons!48358) lt!1537671) (= (_1!26846 (h!53815 lt!1537671)) lt!1537672)))))

(assert (=> d!1269960 (= (containsKey!394 lt!1537671 lt!1537672) e!2687308)))

(declare-fun b!4319578 () Bool)

(declare-fun e!2687309 () Bool)

(assert (=> b!4319578 (= e!2687308 e!2687309)))

(declare-fun res!1770251 () Bool)

(assert (=> b!4319578 (=> (not res!1770251) (not e!2687309))))

(assert (=> b!4319578 (= res!1770251 (and (or (not ((_ is Cons!48358) lt!1537671)) (bvsle (_1!26846 (h!53815 lt!1537671)) lt!1537672)) ((_ is Cons!48358) lt!1537671) (bvslt (_1!26846 (h!53815 lt!1537671)) lt!1537672)))))

(declare-fun b!4319579 () Bool)

(assert (=> b!4319579 (= e!2687309 (containsKey!394 (t!355351 lt!1537671) lt!1537672))))

(assert (= (and d!1269960 (not res!1770250)) b!4319578))

(assert (= (and b!4319578 res!1770251) b!4319579))

(declare-fun m!4913077 () Bool)

(assert (=> b!4319579 m!4913077))

(assert (=> b!4319147 d!1269960))

(assert (=> b!4319147 d!1269852))

(declare-fun d!1269962 () Bool)

(declare-fun res!1770252 () Bool)

(declare-fun e!2687310 () Bool)

(assert (=> d!1269962 (=> res!1770252 e!2687310)))

(assert (=> d!1269962 (= res!1770252 ((_ is Nil!48358) (toList!2537 lt!1537605)))))

(assert (=> d!1269962 (= (forall!8800 (toList!2537 lt!1537605) lambda!133651) e!2687310)))

(declare-fun b!4319580 () Bool)

(declare-fun e!2687311 () Bool)

(assert (=> b!4319580 (= e!2687310 e!2687311)))

(declare-fun res!1770253 () Bool)

(assert (=> b!4319580 (=> (not res!1770253) (not e!2687311))))

(assert (=> b!4319580 (= res!1770253 (dynLambda!20499 lambda!133651 (h!53815 (toList!2537 lt!1537605))))))

(declare-fun b!4319581 () Bool)

(assert (=> b!4319581 (= e!2687311 (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133651))))

(assert (= (and d!1269962 (not res!1770252)) b!4319580))

(assert (= (and b!4319580 res!1770253) b!4319581))

(declare-fun b_lambda!127087 () Bool)

(assert (=> (not b_lambda!127087) (not b!4319580)))

(declare-fun m!4913079 () Bool)

(assert (=> b!4319580 m!4913079))

(declare-fun m!4913081 () Bool)

(assert (=> b!4319581 m!4913081))

(assert (=> d!1269848 d!1269962))

(declare-fun d!1269964 () Bool)

(assert (=> d!1269964 (dynLambda!20499 lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(declare-fun lt!1537976 () Unit!67649)

(declare-fun choose!26373 (List!48482 Int tuple2!47122) Unit!67649)

(assert (=> d!1269964 (= lt!1537976 (choose!26373 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun e!2687314 () Bool)

(assert (=> d!1269964 e!2687314))

(declare-fun res!1770256 () Bool)

(assert (=> d!1269964 (=> (not res!1770256) (not e!2687314))))

(assert (=> d!1269964 (= res!1770256 (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654))))

(assert (=> d!1269964 (= (forallContained!1527 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) lt!1537976)))

(declare-fun b!4319584 () Bool)

(assert (=> b!4319584 (= e!2687314 (contains!10398 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (= (and d!1269964 res!1770256) b!4319584))

(declare-fun b_lambda!127089 () Bool)

(assert (=> (not b_lambda!127089) (not d!1269964)))

(declare-fun m!4913083 () Bool)

(assert (=> d!1269964 m!4913083))

(declare-fun m!4913085 () Bool)

(assert (=> d!1269964 m!4913085))

(declare-fun m!4913087 () Bool)

(assert (=> d!1269964 m!4913087))

(assert (=> b!4319584 m!4912709))

(assert (=> b!4319146 d!1269964))

(assert (=> b!4319146 d!1269852))

(assert (=> b!4319146 d!1269940))

(declare-fun d!1269966 () Bool)

(declare-fun lt!1537977 () Bool)

(assert (=> d!1269966 (= lt!1537977 (select (content!7567 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun e!2687316 () Bool)

(assert (=> d!1269966 (= lt!1537977 e!2687316)))

(declare-fun res!1770258 () Bool)

(assert (=> d!1269966 (=> (not res!1770258) (not e!2687316))))

(assert (=> d!1269966 (= res!1770258 ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1269966 (= (contains!10398 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) lt!1537977)))

(declare-fun b!4319585 () Bool)

(declare-fun e!2687315 () Bool)

(assert (=> b!4319585 (= e!2687316 e!2687315)))

(declare-fun res!1770257 () Bool)

(assert (=> b!4319585 (=> res!1770257 e!2687315)))

(assert (=> b!4319585 (= res!1770257 (= (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun b!4319586 () Bool)

(assert (=> b!4319586 (= e!2687315 (contains!10398 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (= (and d!1269966 res!1770258) b!4319585))

(assert (= (and b!4319585 (not res!1770257)) b!4319586))

(declare-fun m!4913089 () Bool)

(assert (=> d!1269966 m!4913089))

(declare-fun m!4913091 () Bool)

(assert (=> d!1269966 m!4913091))

(declare-fun m!4913093 () Bool)

(assert (=> b!4319586 m!4913093))

(assert (=> b!4319146 d!1269966))

(declare-fun d!1269968 () Bool)

(declare-fun res!1770259 () Bool)

(declare-fun e!2687317 () Bool)

(assert (=> d!1269968 (=> res!1770259 e!2687317)))

(assert (=> d!1269968 (= res!1770259 (and ((_ is Cons!48357) lt!1537698) (= (_1!26845 (h!53814 lt!1537698)) key!2048)))))

(assert (=> d!1269968 (= (containsKey!393 lt!1537698 key!2048) e!2687317)))

(declare-fun b!4319587 () Bool)

(declare-fun e!2687318 () Bool)

(assert (=> b!4319587 (= e!2687317 e!2687318)))

(declare-fun res!1770260 () Bool)

(assert (=> b!4319587 (=> (not res!1770260) (not e!2687318))))

(assert (=> b!4319587 (= res!1770260 ((_ is Cons!48357) lt!1537698))))

(declare-fun b!4319588 () Bool)

(assert (=> b!4319588 (= e!2687318 (containsKey!393 (t!355350 lt!1537698) key!2048))))

(assert (= (and d!1269968 (not res!1770259)) b!4319587))

(assert (= (and b!4319587 res!1770260) b!4319588))

(declare-fun m!4913095 () Bool)

(assert (=> b!4319588 m!4913095))

(assert (=> d!1269868 d!1269968))

(declare-fun d!1269970 () Bool)

(declare-fun res!1770261 () Bool)

(declare-fun e!2687319 () Bool)

(assert (=> d!1269970 (=> res!1770261 e!2687319)))

(assert (=> d!1269970 (= res!1770261 (not ((_ is Cons!48357) lt!1537603)))))

(assert (=> d!1269970 (= (noDuplicateKeys!259 lt!1537603) e!2687319)))

(declare-fun b!4319589 () Bool)

(declare-fun e!2687320 () Bool)

(assert (=> b!4319589 (= e!2687319 e!2687320)))

(declare-fun res!1770262 () Bool)

(assert (=> b!4319589 (=> (not res!1770262) (not e!2687320))))

(assert (=> b!4319589 (= res!1770262 (not (containsKey!393 (t!355350 lt!1537603) (_1!26845 (h!53814 lt!1537603)))))))

(declare-fun b!4319590 () Bool)

(assert (=> b!4319590 (= e!2687320 (noDuplicateKeys!259 (t!355350 lt!1537603)))))

(assert (= (and d!1269970 (not res!1770261)) b!4319589))

(assert (= (and b!4319589 res!1770262) b!4319590))

(declare-fun m!4913097 () Bool)

(assert (=> b!4319589 m!4913097))

(assert (=> b!4319590 m!4912887))

(assert (=> d!1269868 d!1269970))

(declare-fun b!4319591 () Bool)

(declare-fun e!2687322 () Bool)

(assert (=> b!4319591 (= e!2687322 (not (containsKey!393 call!299140 key!2048)))))

(declare-fun b!4319592 () Bool)

(declare-fun e!2687325 () Option!10293)

(assert (=> b!4319592 (= e!2687325 None!10292)))

(declare-fun b!4319593 () Bool)

(assert (=> b!4319593 (= e!2687325 (getPair!159 (t!355350 call!299140) key!2048))))

(declare-fun d!1269972 () Bool)

(declare-fun e!2687324 () Bool)

(assert (=> d!1269972 e!2687324))

(declare-fun res!1770266 () Bool)

(assert (=> d!1269972 (=> res!1770266 e!2687324)))

(assert (=> d!1269972 (= res!1770266 e!2687322)))

(declare-fun res!1770263 () Bool)

(assert (=> d!1269972 (=> (not res!1770263) (not e!2687322))))

(declare-fun lt!1537978 () Option!10293)

(assert (=> d!1269972 (= res!1770263 (isEmpty!28109 lt!1537978))))

(declare-fun e!2687323 () Option!10293)

(assert (=> d!1269972 (= lt!1537978 e!2687323)))

(declare-fun c!734561 () Bool)

(assert (=> d!1269972 (= c!734561 (and ((_ is Cons!48357) call!299140) (= (_1!26845 (h!53814 call!299140)) key!2048)))))

(assert (=> d!1269972 (noDuplicateKeys!259 call!299140)))

(assert (=> d!1269972 (= (getPair!159 call!299140 key!2048) lt!1537978)))

(declare-fun b!4319594 () Bool)

(declare-fun res!1770264 () Bool)

(declare-fun e!2687321 () Bool)

(assert (=> b!4319594 (=> (not res!1770264) (not e!2687321))))

(assert (=> b!4319594 (= res!1770264 (= (_1!26845 (get!15667 lt!1537978)) key!2048))))

(declare-fun b!4319595 () Bool)

(assert (=> b!4319595 (= e!2687324 e!2687321)))

(declare-fun res!1770265 () Bool)

(assert (=> b!4319595 (=> (not res!1770265) (not e!2687321))))

(assert (=> b!4319595 (= res!1770265 (isDefined!7595 lt!1537978))))

(declare-fun b!4319596 () Bool)

(assert (=> b!4319596 (= e!2687321 (contains!10401 call!299140 (get!15667 lt!1537978)))))

(declare-fun b!4319597 () Bool)

(assert (=> b!4319597 (= e!2687323 e!2687325)))

(declare-fun c!734560 () Bool)

(assert (=> b!4319597 (= c!734560 ((_ is Cons!48357) call!299140))))

(declare-fun b!4319598 () Bool)

(assert (=> b!4319598 (= e!2687323 (Some!10292 (h!53814 call!299140)))))

(assert (= (and d!1269972 c!734561) b!4319598))

(assert (= (and d!1269972 (not c!734561)) b!4319597))

(assert (= (and b!4319597 c!734560) b!4319593))

(assert (= (and b!4319597 (not c!734560)) b!4319592))

(assert (= (and d!1269972 res!1770263) b!4319591))

(assert (= (and d!1269972 (not res!1770266)) b!4319595))

(assert (= (and b!4319595 res!1770265) b!4319594))

(assert (= (and b!4319594 res!1770264) b!4319596))

(declare-fun m!4913099 () Bool)

(assert (=> b!4319593 m!4913099))

(declare-fun m!4913101 () Bool)

(assert (=> b!4319591 m!4913101))

(declare-fun m!4913103 () Bool)

(assert (=> b!4319596 m!4913103))

(assert (=> b!4319596 m!4913103))

(declare-fun m!4913105 () Bool)

(assert (=> b!4319596 m!4913105))

(declare-fun m!4913107 () Bool)

(assert (=> b!4319595 m!4913107))

(assert (=> b!4319594 m!4913103))

(declare-fun m!4913109 () Bool)

(assert (=> d!1269972 m!4913109))

(declare-fun m!4913111 () Bool)

(assert (=> d!1269972 m!4913111))

(assert (=> bm!299134 d!1269972))

(assert (=> d!1269878 d!1269902))

(declare-fun d!1269974 () Bool)

(declare-fun res!1770267 () Bool)

(declare-fun e!2687326 () Bool)

(assert (=> d!1269974 (=> res!1770267 e!2687326)))

(assert (=> d!1269974 (= res!1770267 ((_ is Nil!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1269974 (= (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133665) e!2687326)))

(declare-fun b!4319599 () Bool)

(declare-fun e!2687327 () Bool)

(assert (=> b!4319599 (= e!2687326 e!2687327)))

(declare-fun res!1770268 () Bool)

(assert (=> b!4319599 (=> (not res!1770268) (not e!2687327))))

(assert (=> b!4319599 (= res!1770268 (dynLambda!20499 lambda!133665 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319600 () Bool)

(assert (=> b!4319600 (= e!2687327 (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133665))))

(assert (= (and d!1269974 (not res!1770267)) b!4319599))

(assert (= (and b!4319599 res!1770268) b!4319600))

(declare-fun b_lambda!127091 () Bool)

(assert (=> (not b_lambda!127091) (not b!4319599)))

(declare-fun m!4913113 () Bool)

(assert (=> b!4319599 m!4913113))

(declare-fun m!4913115 () Bool)

(assert (=> b!4319600 m!4913115))

(assert (=> b!4319188 d!1269974))

(assert (=> b!4319188 d!1269852))

(declare-fun bs!606169 () Bool)

(declare-fun d!1269976 () Bool)

(assert (= bs!606169 (and d!1269976 d!1269884)))

(declare-fun lambda!133676 () Int)

(assert (=> bs!606169 (not (= lambda!133676 lambda!133668))))

(declare-fun bs!606170 () Bool)

(assert (= bs!606170 (and d!1269976 b!4319146)))

(assert (=> bs!606170 (not (= lambda!133676 lambda!133654))))

(declare-fun bs!606171 () Bool)

(assert (= bs!606171 (and d!1269976 b!4319081)))

(assert (=> bs!606171 (not (= lambda!133676 lambda!133648))))

(declare-fun bs!606172 () Bool)

(assert (= bs!606172 (and d!1269976 d!1269886)))

(assert (=> bs!606172 (not (= lambda!133676 lambda!133671))))

(declare-fun bs!606173 () Bool)

(assert (= bs!606173 (and d!1269976 d!1269848)))

(assert (=> bs!606173 (= lambda!133676 lambda!133651)))

(declare-fun bs!606174 () Bool)

(assert (= bs!606174 (and d!1269976 d!1269946)))

(assert (=> bs!606174 (not (= lambda!133676 lambda!133675))))

(declare-fun bs!606175 () Bool)

(assert (= bs!606175 (and d!1269976 d!1269890)))

(assert (=> bs!606175 (not (= lambda!133676 lambda!133672))))

(declare-fun bs!606176 () Bool)

(assert (= bs!606176 (and d!1269976 d!1269866)))

(assert (=> bs!606176 (= lambda!133676 lambda!133657)))

(declare-fun bs!606177 () Bool)

(assert (= bs!606177 (and d!1269976 b!4319188)))

(assert (=> bs!606177 (not (= lambda!133676 lambda!133665))))

(assert (=> d!1269976 true))

(assert (=> d!1269976 (= (allKeysSameHashInMap!382 (map!10380 (v!42703 (underlying!9716 thiss!42308))) (hashF!6889 thiss!42308)) (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133676))))

(declare-fun bs!606178 () Bool)

(assert (= bs!606178 d!1269976))

(declare-fun m!4913117 () Bool)

(assert (=> bs!606178 m!4913117))

(assert (=> b!4319189 d!1269976))

(assert (=> b!4319189 d!1269852))

(assert (=> d!1269866 d!1269872))

(declare-fun d!1269978 () Bool)

(assert (=> d!1269978 (allKeysSameHash!235 lt!1537603 lt!1537608 (hashF!6889 thiss!42308))))

(assert (=> d!1269978 true))

(declare-fun _$19!983 () Unit!67649)

(assert (=> d!1269978 (= (choose!26366 (toList!2537 lt!1537605) lt!1537608 lt!1537603 (hashF!6889 thiss!42308)) _$19!983)))

(declare-fun bs!606179 () Bool)

(assert (= bs!606179 d!1269978))

(assert (=> bs!606179 m!4912621))

(assert (=> d!1269866 d!1269978))

(declare-fun d!1269980 () Bool)

(declare-fun res!1770269 () Bool)

(declare-fun e!2687328 () Bool)

(assert (=> d!1269980 (=> res!1770269 e!2687328)))

(assert (=> d!1269980 (= res!1770269 ((_ is Nil!48358) (toList!2537 lt!1537605)))))

(assert (=> d!1269980 (= (forall!8800 (toList!2537 lt!1537605) lambda!133657) e!2687328)))

(declare-fun b!4319601 () Bool)

(declare-fun e!2687329 () Bool)

(assert (=> b!4319601 (= e!2687328 e!2687329)))

(declare-fun res!1770270 () Bool)

(assert (=> b!4319601 (=> (not res!1770270) (not e!2687329))))

(assert (=> b!4319601 (= res!1770270 (dynLambda!20499 lambda!133657 (h!53815 (toList!2537 lt!1537605))))))

(declare-fun b!4319602 () Bool)

(assert (=> b!4319602 (= e!2687329 (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133657))))

(assert (= (and d!1269980 (not res!1770269)) b!4319601))

(assert (= (and b!4319601 res!1770270) b!4319602))

(declare-fun b_lambda!127093 () Bool)

(assert (=> (not b_lambda!127093) (not b!4319601)))

(declare-fun m!4913119 () Bool)

(assert (=> b!4319601 m!4913119))

(declare-fun m!4913121 () Bool)

(assert (=> b!4319602 m!4913121))

(assert (=> d!1269866 d!1269980))

(assert (=> d!1269850 d!1269844))

(declare-fun b!4319603 () Bool)

(declare-fun e!2687330 () Bool)

(assert (=> b!4319603 (= e!2687330 (contains!10400 (keys!16162 (map!10381 thiss!42308)) key!2048))))

(declare-fun b!4319604 () Bool)

(declare-fun e!2687333 () Unit!67649)

(declare-fun e!2687335 () Unit!67649)

(assert (=> b!4319604 (= e!2687333 e!2687335)))

(declare-fun c!734564 () Bool)

(declare-fun call!299253 () Bool)

(assert (=> b!4319604 (= c!734564 call!299253)))

(declare-fun b!4319605 () Bool)

(assert (=> b!4319605 false))

(declare-fun lt!1537979 () Unit!67649)

(declare-fun lt!1537981 () Unit!67649)

(assert (=> b!4319605 (= lt!1537979 lt!1537981)))

(assert (=> b!4319605 (containsKey!395 (toList!2538 (map!10381 thiss!42308)) key!2048)))

(assert (=> b!4319605 (= lt!1537981 (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(declare-fun Unit!67666 () Unit!67649)

(assert (=> b!4319605 (= e!2687335 Unit!67666)))

(declare-fun d!1269982 () Bool)

(declare-fun e!2687332 () Bool)

(assert (=> d!1269982 e!2687332))

(declare-fun res!1770273 () Bool)

(assert (=> d!1269982 (=> res!1770273 e!2687332)))

(declare-fun e!2687331 () Bool)

(assert (=> d!1269982 (= res!1770273 e!2687331)))

(declare-fun res!1770272 () Bool)

(assert (=> d!1269982 (=> (not res!1770272) (not e!2687331))))

(declare-fun lt!1537983 () Bool)

(assert (=> d!1269982 (= res!1770272 (not lt!1537983))))

(declare-fun lt!1537980 () Bool)

(assert (=> d!1269982 (= lt!1537983 lt!1537980)))

(declare-fun lt!1537984 () Unit!67649)

(assert (=> d!1269982 (= lt!1537984 e!2687333)))

(declare-fun c!734563 () Bool)

(assert (=> d!1269982 (= c!734563 lt!1537980)))

(assert (=> d!1269982 (= lt!1537980 (containsKey!395 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> d!1269982 (= (contains!10399 (map!10381 thiss!42308) key!2048) lt!1537983)))

(declare-fun b!4319606 () Bool)

(declare-fun e!2687334 () List!48483)

(assert (=> b!4319606 (= e!2687334 (getKeysList!55 (toList!2538 (map!10381 thiss!42308))))))

(declare-fun b!4319607 () Bool)

(assert (=> b!4319607 (= e!2687332 e!2687330)))

(declare-fun res!1770271 () Bool)

(assert (=> b!4319607 (=> (not res!1770271) (not e!2687330))))

(assert (=> b!4319607 (= res!1770271 (isDefined!7596 (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048)))))

(declare-fun b!4319608 () Bool)

(declare-fun lt!1537985 () Unit!67649)

(assert (=> b!4319608 (= e!2687333 lt!1537985)))

(declare-fun lt!1537986 () Unit!67649)

(assert (=> b!4319608 (= lt!1537986 (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> b!4319608 (isDefined!7596 (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(declare-fun lt!1537982 () Unit!67649)

(assert (=> b!4319608 (= lt!1537982 lt!1537986)))

(assert (=> b!4319608 (= lt!1537985 (lemmaInListThenGetKeysListContains!52 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> b!4319608 call!299253))

(declare-fun b!4319609 () Bool)

(assert (=> b!4319609 (= e!2687334 (keys!16162 (map!10381 thiss!42308)))))

(declare-fun b!4319610 () Bool)

(assert (=> b!4319610 (= e!2687331 (not (contains!10400 (keys!16162 (map!10381 thiss!42308)) key!2048)))))

(declare-fun bm!299248 () Bool)

(assert (=> bm!299248 (= call!299253 (contains!10400 e!2687334 key!2048))))

(declare-fun c!734562 () Bool)

(assert (=> bm!299248 (= c!734562 c!734563)))

(declare-fun b!4319611 () Bool)

(declare-fun Unit!67667 () Unit!67649)

(assert (=> b!4319611 (= e!2687335 Unit!67667)))

(assert (= (and d!1269982 c!734563) b!4319608))

(assert (= (and d!1269982 (not c!734563)) b!4319604))

(assert (= (and b!4319604 c!734564) b!4319605))

(assert (= (and b!4319604 (not c!734564)) b!4319611))

(assert (= (or b!4319608 b!4319604) bm!299248))

(assert (= (and bm!299248 c!734562) b!4319606))

(assert (= (and bm!299248 (not c!734562)) b!4319609))

(assert (= (and d!1269982 res!1770272) b!4319610))

(assert (= (and d!1269982 (not res!1770273)) b!4319607))

(assert (= (and b!4319607 res!1770271) b!4319603))

(declare-fun m!4913123 () Bool)

(assert (=> d!1269982 m!4913123))

(assert (=> b!4319609 m!4912635))

(declare-fun m!4913125 () Bool)

(assert (=> b!4319609 m!4913125))

(declare-fun m!4913127 () Bool)

(assert (=> b!4319608 m!4913127))

(declare-fun m!4913129 () Bool)

(assert (=> b!4319608 m!4913129))

(assert (=> b!4319608 m!4913129))

(declare-fun m!4913131 () Bool)

(assert (=> b!4319608 m!4913131))

(declare-fun m!4913133 () Bool)

(assert (=> b!4319608 m!4913133))

(assert (=> b!4319607 m!4913129))

(assert (=> b!4319607 m!4913129))

(assert (=> b!4319607 m!4913131))

(assert (=> b!4319610 m!4912635))

(assert (=> b!4319610 m!4913125))

(assert (=> b!4319610 m!4913125))

(declare-fun m!4913135 () Bool)

(assert (=> b!4319610 m!4913135))

(assert (=> b!4319603 m!4912635))

(assert (=> b!4319603 m!4913125))

(assert (=> b!4319603 m!4913125))

(assert (=> b!4319603 m!4913135))

(declare-fun m!4913137 () Bool)

(assert (=> b!4319606 m!4913137))

(assert (=> b!4319605 m!4913123))

(declare-fun m!4913139 () Bool)

(assert (=> b!4319605 m!4913139))

(declare-fun m!4913141 () Bool)

(assert (=> bm!299248 m!4913141))

(assert (=> d!1269850 d!1269982))

(declare-fun b!4319612 () Bool)

(declare-fun e!2687336 () Bool)

(assert (=> b!4319612 (= e!2687336 (contains!10400 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(declare-fun b!4319613 () Bool)

(declare-fun e!2687339 () Unit!67649)

(declare-fun e!2687341 () Unit!67649)

(assert (=> b!4319613 (= e!2687339 e!2687341)))

(declare-fun c!734567 () Bool)

(declare-fun call!299254 () Bool)

(assert (=> b!4319613 (= c!734567 call!299254)))

(declare-fun b!4319614 () Bool)

(assert (=> b!4319614 false))

(declare-fun lt!1537987 () Unit!67649)

(declare-fun lt!1537989 () Unit!67649)

(assert (=> b!4319614 (= lt!1537987 lt!1537989)))

(assert (=> b!4319614 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048)))

(assert (=> b!4319614 (= lt!1537989 (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(declare-fun Unit!67668 () Unit!67649)

(assert (=> b!4319614 (= e!2687341 Unit!67668)))

(declare-fun d!1269984 () Bool)

(declare-fun e!2687338 () Bool)

(assert (=> d!1269984 e!2687338))

(declare-fun res!1770276 () Bool)

(assert (=> d!1269984 (=> res!1770276 e!2687338)))

(declare-fun e!2687337 () Bool)

(assert (=> d!1269984 (= res!1770276 e!2687337)))

(declare-fun res!1770275 () Bool)

(assert (=> d!1269984 (=> (not res!1770275) (not e!2687337))))

(declare-fun lt!1537991 () Bool)

(assert (=> d!1269984 (= res!1770275 (not lt!1537991))))

(declare-fun lt!1537988 () Bool)

(assert (=> d!1269984 (= lt!1537991 lt!1537988)))

(declare-fun lt!1537992 () Unit!67649)

(assert (=> d!1269984 (= lt!1537992 e!2687339)))

(declare-fun c!734566 () Bool)

(assert (=> d!1269984 (= c!734566 lt!1537988)))

(assert (=> d!1269984 (= lt!1537988 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> d!1269984 (= (contains!10399 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) key!2048) lt!1537991)))

(declare-fun b!4319615 () Bool)

(declare-fun e!2687340 () List!48483)

(assert (=> b!4319615 (= e!2687340 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319616 () Bool)

(assert (=> b!4319616 (= e!2687338 e!2687336)))

(declare-fun res!1770274 () Bool)

(assert (=> b!4319616 (=> (not res!1770274) (not e!2687336))))

(assert (=> b!4319616 (= res!1770274 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048)))))

(declare-fun b!4319617 () Bool)

(declare-fun lt!1537993 () Unit!67649)

(assert (=> b!4319617 (= e!2687339 lt!1537993)))

(declare-fun lt!1537994 () Unit!67649)

(assert (=> b!4319617 (= lt!1537994 (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> b!4319617 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(declare-fun lt!1537990 () Unit!67649)

(assert (=> b!4319617 (= lt!1537990 lt!1537994)))

(assert (=> b!4319617 (= lt!1537993 (lemmaInListThenGetKeysListContains!52 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> b!4319617 call!299254))

(declare-fun b!4319618 () Bool)

(assert (=> b!4319618 (= e!2687340 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319619 () Bool)

(assert (=> b!4319619 (= e!2687337 (not (contains!10400 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048)))))

(declare-fun bm!299249 () Bool)

(assert (=> bm!299249 (= call!299254 (contains!10400 e!2687340 key!2048))))

(declare-fun c!734565 () Bool)

(assert (=> bm!299249 (= c!734565 c!734566)))

(declare-fun b!4319620 () Bool)

(declare-fun Unit!67669 () Unit!67649)

(assert (=> b!4319620 (= e!2687341 Unit!67669)))

(assert (= (and d!1269984 c!734566) b!4319617))

(assert (= (and d!1269984 (not c!734566)) b!4319613))

(assert (= (and b!4319613 c!734567) b!4319614))

(assert (= (and b!4319613 (not c!734567)) b!4319620))

(assert (= (or b!4319617 b!4319613) bm!299249))

(assert (= (and bm!299249 c!734565) b!4319615))

(assert (= (and bm!299249 (not c!734565)) b!4319618))

(assert (= (and d!1269984 res!1770275) b!4319619))

(assert (= (and d!1269984 (not res!1770276)) b!4319616))

(assert (= (and b!4319616 res!1770274) b!4319612))

(declare-fun m!4913143 () Bool)

(assert (=> d!1269984 m!4913143))

(assert (=> b!4319618 m!4912697))

(declare-fun m!4913145 () Bool)

(assert (=> b!4319618 m!4913145))

(declare-fun m!4913147 () Bool)

(assert (=> b!4319617 m!4913147))

(declare-fun m!4913149 () Bool)

(assert (=> b!4319617 m!4913149))

(assert (=> b!4319617 m!4913149))

(declare-fun m!4913151 () Bool)

(assert (=> b!4319617 m!4913151))

(declare-fun m!4913153 () Bool)

(assert (=> b!4319617 m!4913153))

(assert (=> b!4319616 m!4913149))

(assert (=> b!4319616 m!4913149))

(assert (=> b!4319616 m!4913151))

(assert (=> b!4319619 m!4912697))

(assert (=> b!4319619 m!4913145))

(assert (=> b!4319619 m!4913145))

(declare-fun m!4913155 () Bool)

(assert (=> b!4319619 m!4913155))

(assert (=> b!4319612 m!4912697))

(assert (=> b!4319612 m!4913145))

(assert (=> b!4319612 m!4913145))

(assert (=> b!4319612 m!4913155))

(declare-fun m!4913157 () Bool)

(assert (=> b!4319615 m!4913157))

(assert (=> b!4319614 m!4913143))

(declare-fun m!4913159 () Bool)

(assert (=> b!4319614 m!4913159))

(declare-fun m!4913161 () Bool)

(assert (=> bm!299249 m!4913161))

(assert (=> d!1269850 d!1269984))

(assert (=> d!1269850 d!1269878))

(declare-fun d!1269986 () Bool)

(declare-fun lt!1537995 () Bool)

(assert (=> d!1269986 (= lt!1537995 (contains!10396 (map!10380 (v!42703 (underlying!9716 thiss!42308))) lt!1537672))))

(assert (=> d!1269986 (= lt!1537995 (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(assert (=> d!1269986 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1269986 (= (contains!10394 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) lt!1537995)))

(declare-fun bs!606180 () Bool)

(assert (= bs!606180 d!1269986))

(assert (=> bs!606180 m!4912633))

(assert (=> bs!606180 m!4912633))

(declare-fun m!4913163 () Bool)

(assert (=> bs!606180 m!4913163))

(declare-fun m!4913165 () Bool)

(assert (=> bs!606180 m!4913165))

(assert (=> bs!606180 m!4912655))

(assert (=> d!1269850 d!1269986))

(assert (=> d!1269850 d!1269854))

(assert (=> d!1269850 d!1269890))

(assert (=> d!1269850 d!1269852))

(declare-fun d!1269988 () Bool)

(assert (=> d!1269988 (= (isDefined!7595 call!299144) (not (isEmpty!28109 call!299144)))))

(declare-fun bs!606181 () Bool)

(assert (= bs!606181 d!1269988))

(declare-fun m!4913167 () Bool)

(assert (=> bs!606181 m!4913167))

(assert (=> bm!299136 d!1269988))

(declare-fun d!1269990 () Bool)

(declare-fun res!1770277 () Bool)

(declare-fun e!2687342 () Bool)

(assert (=> d!1269990 (=> res!1770277 e!2687342)))

(assert (=> d!1269990 (= res!1770277 (not ((_ is Cons!48357) (_2!26846 (h!53815 (toList!2537 lt!1537605))))))))

(assert (=> d!1269990 (= (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537605)))) e!2687342)))

(declare-fun b!4319621 () Bool)

(declare-fun e!2687343 () Bool)

(assert (=> b!4319621 (= e!2687342 e!2687343)))

(declare-fun res!1770278 () Bool)

(assert (=> b!4319621 (=> (not res!1770278) (not e!2687343))))

(assert (=> b!4319621 (= res!1770278 (not (containsKey!393 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))) (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537605))))))))))

(declare-fun b!4319622 () Bool)

(assert (=> b!4319622 (= e!2687343 (noDuplicateKeys!259 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))))))

(assert (= (and d!1269990 (not res!1770277)) b!4319621))

(assert (= (and b!4319621 res!1770278) b!4319622))

(declare-fun m!4913169 () Bool)

(assert (=> b!4319621 m!4913169))

(declare-fun m!4913171 () Bool)

(assert (=> b!4319622 m!4913171))

(assert (=> bs!606132 d!1269990))

(declare-fun d!1269992 () Bool)

(assert (=> d!1269992 (= (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bs!606182 () Bool)

(assert (= bs!606182 d!1269992))

(assert (=> bs!606182 m!4912957))

(assert (=> d!1269852 d!1269992))

(assert (=> bm!299135 d!1269844))

(assert (=> d!1269864 d!1269870))

(assert (=> d!1269864 d!1269868))

(declare-fun d!1269994 () Bool)

(assert (=> d!1269994 (allKeysSameHash!235 (removePairForKey!258 lt!1537603 key!2048) lt!1537608 (hashF!6889 thiss!42308))))

(assert (=> d!1269994 true))

(declare-fun _$20!128 () Unit!67649)

(assert (=> d!1269994 (= (choose!26365 lt!1537603 key!2048 lt!1537608 (hashF!6889 thiss!42308)) _$20!128)))

(declare-fun bs!606183 () Bool)

(assert (= bs!606183 d!1269994))

(assert (=> bs!606183 m!4912613))

(assert (=> bs!606183 m!4912613))

(assert (=> bs!606183 m!4912615))

(assert (=> d!1269864 d!1269994))

(assert (=> d!1269864 d!1269970))

(declare-fun e!2687344 () Bool)

(declare-fun b!4319623 () Bool)

(declare-fun tp!1326678 () Bool)

(assert (=> b!4319623 (= e!2687344 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326678))))

(assert (=> b!4319197 (= tp!1326670 e!2687344)))

(assert (= (and b!4319197 ((_ is Cons!48357) (t!355350 mapDefault!21148))) b!4319623))

(declare-fun tp!1326679 () Bool)

(declare-fun e!2687345 () Bool)

(declare-fun b!4319624 () Bool)

(assert (=> b!4319624 (= e!2687345 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326679))))

(assert (=> b!4319204 (= tp!1326676 e!2687345)))

(assert (= (and b!4319204 ((_ is Cons!48357) (t!355350 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) b!4319624))

(declare-fun e!2687346 () Bool)

(declare-fun tp!1326680 () Bool)

(declare-fun b!4319625 () Bool)

(assert (=> b!4319625 (= e!2687346 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326680))))

(assert (=> b!4319202 (= tp!1326674 e!2687346)))

(assert (= (and b!4319202 ((_ is Cons!48357) (t!355350 mapValue!21145))) b!4319625))

(declare-fun mapIsEmpty!21149 () Bool)

(declare-fun mapRes!21149 () Bool)

(assert (=> mapIsEmpty!21149 mapRes!21149))

(declare-fun b!4319627 () Bool)

(declare-fun e!2687348 () Bool)

(declare-fun tp!1326682 () Bool)

(assert (=> b!4319627 (= e!2687348 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326682))))

(declare-fun condMapEmpty!21149 () Bool)

(declare-fun mapDefault!21149 () List!48481)

(assert (=> mapNonEmpty!21148 (= condMapEmpty!21149 (= mapRest!21148 ((as const (Array (_ BitVec 32) List!48481)) mapDefault!21149)))))

(assert (=> mapNonEmpty!21148 (= tp!1326669 (and e!2687348 mapRes!21149))))

(declare-fun mapNonEmpty!21149 () Bool)

(declare-fun tp!1326681 () Bool)

(declare-fun e!2687347 () Bool)

(assert (=> mapNonEmpty!21149 (= mapRes!21149 (and tp!1326681 e!2687347))))

(declare-fun mapRest!21149 () (Array (_ BitVec 32) List!48481))

(declare-fun mapValue!21149 () List!48481)

(declare-fun mapKey!21149 () (_ BitVec 32))

(assert (=> mapNonEmpty!21149 (= mapRest!21148 (store mapRest!21149 mapKey!21149 mapValue!21149))))

(declare-fun tp!1326683 () Bool)

(declare-fun b!4319626 () Bool)

(assert (=> b!4319626 (= e!2687347 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326683))))

(assert (= (and mapNonEmpty!21148 condMapEmpty!21149) mapIsEmpty!21149))

(assert (= (and mapNonEmpty!21148 (not condMapEmpty!21149)) mapNonEmpty!21149))

(assert (= (and mapNonEmpty!21149 ((_ is Cons!48357) mapValue!21149)) b!4319626))

(assert (= (and mapNonEmpty!21148 ((_ is Cons!48357) mapDefault!21149)) b!4319627))

(declare-fun m!4913173 () Bool)

(assert (=> mapNonEmpty!21149 m!4913173))

(declare-fun e!2687349 () Bool)

(declare-fun tp!1326684 () Bool)

(declare-fun b!4319628 () Bool)

(assert (=> b!4319628 (= e!2687349 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326684))))

(assert (=> tb!257355 (= result!314856 e!2687349)))

(assert (= (and tb!257355 ((_ is Cons!48357) (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))) b!4319628))

(declare-fun e!2687350 () Bool)

(declare-fun tp!1326685 () Bool)

(declare-fun b!4319629 () Bool)

(assert (=> b!4319629 (= e!2687350 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326685))))

(assert (=> b!4319205 (= tp!1326677 e!2687350)))

(assert (= (and b!4319205 ((_ is Cons!48357) (t!355350 mapDefault!21145))) b!4319629))

(declare-fun b!4319630 () Bool)

(declare-fun e!2687351 () Bool)

(declare-fun tp!1326686 () Bool)

(assert (=> b!4319630 (= e!2687351 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326686))))

(assert (=> b!4319196 (= tp!1326671 e!2687351)))

(assert (= (and b!4319196 ((_ is Cons!48357) (t!355350 mapValue!21148))) b!4319630))

(declare-fun tp!1326687 () Bool)

(declare-fun e!2687352 () Bool)

(declare-fun b!4319631 () Bool)

(assert (=> b!4319631 (= e!2687352 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326687))))

(assert (=> b!4319203 (= tp!1326675 e!2687352)))

(assert (= (and b!4319203 ((_ is Cons!48357) (t!355350 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) b!4319631))

(declare-fun b_lambda!127095 () Bool)

(assert (= b_lambda!127087 (or d!1269848 b_lambda!127095)))

(declare-fun bs!606184 () Bool)

(declare-fun d!1269996 () Bool)

(assert (= bs!606184 (and d!1269996 d!1269848)))

(assert (=> bs!606184 (= (dynLambda!20499 lambda!133651 (h!53815 (toList!2537 lt!1537605))) (allKeysSameHash!235 (_2!26846 (h!53815 (toList!2537 lt!1537605))) (_1!26846 (h!53815 (toList!2537 lt!1537605))) (hashF!6889 thiss!42308)))))

(declare-fun m!4913175 () Bool)

(assert (=> bs!606184 m!4913175))

(assert (=> b!4319580 d!1269996))

(declare-fun b_lambda!127097 () Bool)

(assert (= b_lambda!127079 (or (and b!4319079 b_free!128931) b_lambda!127097)))

(declare-fun b_lambda!127099 () Bool)

(assert (= b_lambda!127081 (or (and b!4319079 b_free!128931) b_lambda!127099)))

(declare-fun b_lambda!127101 () Bool)

(assert (= b_lambda!127075 (or d!1269872 b_lambda!127101)))

(declare-fun bs!606185 () Bool)

(declare-fun d!1269998 () Bool)

(assert (= bs!606185 (and d!1269998 d!1269872)))

(assert (=> bs!606185 (= (dynLambda!20501 lambda!133661 (h!53814 lt!1537603)) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537603))) lt!1537608))))

(declare-fun m!4913177 () Bool)

(assert (=> bs!606185 m!4913177))

(assert (=> b!4319418 d!1269998))

(declare-fun b_lambda!127103 () Bool)

(assert (= b_lambda!127083 (or (and b!4319079 b_free!128931) b_lambda!127103)))

(declare-fun b_lambda!127105 () Bool)

(assert (= b_lambda!127071 (or d!1269876 b_lambda!127105)))

(declare-fun bs!606186 () Bool)

(declare-fun d!1270000 () Bool)

(assert (= bs!606186 (and d!1270000 d!1269876)))

(assert (=> bs!606186 (= (dynLambda!20501 lambda!133662 (h!53814 lt!1537611)) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537611))) lt!1537608))))

(declare-fun m!4913179 () Bool)

(assert (=> bs!606186 m!4913179))

(assert (=> b!4319245 d!1270000))

(declare-fun b_lambda!127107 () Bool)

(assert (= b_lambda!127073 (or b!4319081 b_lambda!127107)))

(declare-fun bs!606187 () Bool)

(declare-fun d!1270002 () Bool)

(assert (= bs!606187 (and d!1270002 b!4319081)))

(assert (=> bs!606187 (= (dynLambda!20499 lambda!133648 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (noDuplicateKeys!259 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605))))))))

(declare-fun m!4913181 () Bool)

(assert (=> bs!606187 m!4913181))

(assert (=> b!4319247 d!1270002))

(declare-fun b_lambda!127109 () Bool)

(assert (= b_lambda!127089 (or b!4319146 b_lambda!127109)))

(declare-fun bs!606188 () Bool)

(declare-fun d!1270004 () Bool)

(assert (= bs!606188 (and d!1270004 b!4319146)))

(assert (=> bs!606188 (= (dynLambda!20499 lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) (noDuplicateKeys!259 (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))))

(declare-fun m!4913183 () Bool)

(assert (=> bs!606188 m!4913183))

(assert (=> d!1269964 d!1270004))

(declare-fun b_lambda!127111 () Bool)

(assert (= b_lambda!127093 (or d!1269866 b_lambda!127111)))

(declare-fun bs!606189 () Bool)

(declare-fun d!1270006 () Bool)

(assert (= bs!606189 (and d!1270006 d!1269866)))

(assert (=> bs!606189 (= (dynLambda!20499 lambda!133657 (h!53815 (toList!2537 lt!1537605))) (allKeysSameHash!235 (_2!26846 (h!53815 (toList!2537 lt!1537605))) (_1!26846 (h!53815 (toList!2537 lt!1537605))) (hashF!6889 thiss!42308)))))

(assert (=> bs!606189 m!4913175))

(assert (=> b!4319601 d!1270006))

(declare-fun b_lambda!127113 () Bool)

(assert (= b_lambda!127091 (or b!4319188 b_lambda!127113)))

(declare-fun bs!606190 () Bool)

(declare-fun d!1270008 () Bool)

(assert (= bs!606190 (and d!1270008 b!4319188)))

(assert (=> bs!606190 (= (dynLambda!20499 lambda!133665 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun m!4913185 () Bool)

(assert (=> bs!606190 m!4913185))

(assert (=> b!4319599 d!1270008))

(declare-fun b_lambda!127115 () Bool)

(assert (= b_lambda!127077 (or d!1269870 b_lambda!127115)))

(declare-fun bs!606191 () Bool)

(declare-fun d!1270010 () Bool)

(assert (= bs!606191 (and d!1270010 d!1269870)))

(assert (=> bs!606191 (= (dynLambda!20501 lambda!133660 (h!53814 (removePairForKey!258 lt!1537603 key!2048))) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (removePairForKey!258 lt!1537603 key!2048)))) lt!1537608))))

(declare-fun m!4913187 () Bool)

(assert (=> bs!606191 m!4913187))

(assert (=> b!4319470 d!1270010))

(declare-fun b_lambda!127117 () Bool)

(assert (= b_lambda!127085 (or (and b!4319079 b_free!128931) b_lambda!127117)))

(check-sat (not b!4319231) (not b_next!129635) (not bm!299195) (not b!4319548) (not b!4319377) (not bs!606184) (not b!4319627) (not b_lambda!127067) (not b!4319419) (not b!4319469) (not b!4319540) (not b!4319360) (not bm!299225) (not b!4319248) (not b!4319425) (not b!4319609) (not b!4319594) (not bm!299235) (not d!1269938) (not d!1269898) (not bm!299199) (not b!4319471) (not b!4319459) (not b!4319603) (not b!4319628) (not b_lambda!127099) (not b!4319590) (not b!4319415) (not b!4319228) (not b!4319227) (not b!4319496) (not b_lambda!127103) (not b!4319569) (not b!4319408) (not b!4319584) (not b!4319417) (not b!4319631) (not b!4319586) (not bm!299245) (not b!4319433) (not b!4319606) (not b!4319615) (not bm!299208) (not b_next!129637) (not d!1269986) (not b!4319608) (not b_lambda!127115) (not b_lambda!127095) (not d!1269984) (not d!1269948) tp_is_empty!24071 (not bm!299204) (not b!4319490) (not d!1269944) (not d!1269994) (not b!4319239) (not bm!299205) (not d!1269890) (not bm!299223) (not b!4319428) (not b!4319623) (not d!1269936) (not d!1269888) (not b!4319605) (not d!1269956) (not b!4319542) (not tb!257357) (not b!4319602) (not b!4319401) (not d!1269896) (not bs!606190) (not bm!299249) b_and!340463 (not b!4319614) (not bm!299202) (not b_lambda!127105) (not b!4319626) (not bm!299248) (not d!1269922) (not b!4319536) (not b!4319618) (not b!4319581) (not bm!299142) (not b!4319616) (not b!4319579) (not d!1269924) (not b!4319621) (not b!4319399) (not b!4319226) (not d!1269942) (not d!1269902) (not b!4319596) (not bm!299207) (not bm!299197) (not d!1269964) (not bs!606191) (not d!1269992) (not b_lambda!127107) (not d!1269958) (not b_lambda!127109) (not d!1269952) (not b_lambda!127111) (not bm!299234) (not b!4319607) (not bm!299210) (not b!4319593) (not b_lambda!127069) (not b!4319229) (not b!4319566) (not d!1269912) (not bm!299194) (not bm!299201) (not d!1269910) (not bs!606186) (not b_lambda!127097) (not bs!606187) (not d!1269916) (not d!1269946) (not b!4319630) (not d!1269950) (not b!4319617) (not b!4319488) (not d!1269928) (not mapNonEmpty!21149) (not b!4319624) (not bm!299244) (not d!1269884) (not b!4319554) (not b!4319560) (not b!4319563) (not b!4319588) (not d!1269886) (not bs!606185) (not b!4319356) (not b_lambda!127113) tp_is_empty!24069 (not b!4319629) (not b!4319230) (not b!4319612) (not b!4319460) (not b!4319246) (not b!4319491) (not d!1269978) (not b!4319493) (not d!1269976) (not b!4319547) (not d!1269972) (not b!4319619) (not d!1269918) (not d!1269988) (not b!4319595) (not b!4319625) (not b!4319610) (not d!1269882) (not b!4319600) (not bs!606188) (not b!4319591) (not b!4319430) (not b!4319237) (not d!1269982) (not b!4319429) (not b!4319330) (not b!4319622) (not b!4319346) (not b!4319365) (not b!4319339) (not b!4319573) (not b!4319455) (not b!4319431) (not b!4319426) (not b_lambda!127117) (not b!4319589) (not d!1269920) (not b!4319492) (not d!1269930) (not b!4319424) (not d!1269966) (not bm!299200) b_and!340453 (not bm!299213) (not bs!606189) (not b!4319349) (not d!1269904) (not b_lambda!127101) (not b!4319224) (not bm!299233) (not d!1269940))
(check-sat b_and!340463 b_and!340453 (not b_next!129637) (not b_next!129635))
(get-model)

(declare-fun d!1270012 () Bool)

(declare-fun res!1770279 () Bool)

(declare-fun e!2687353 () Bool)

(assert (=> d!1270012 (=> res!1770279 e!2687353)))

(assert (=> d!1270012 (= res!1770279 (not ((_ is Cons!48357) (t!355350 lt!1537603))))))

(assert (=> d!1270012 (= (noDuplicateKeys!259 (t!355350 lt!1537603)) e!2687353)))

(declare-fun b!4319632 () Bool)

(declare-fun e!2687354 () Bool)

(assert (=> b!4319632 (= e!2687353 e!2687354)))

(declare-fun res!1770280 () Bool)

(assert (=> b!4319632 (=> (not res!1770280) (not e!2687354))))

(assert (=> b!4319632 (= res!1770280 (not (containsKey!393 (t!355350 (t!355350 lt!1537603)) (_1!26845 (h!53814 (t!355350 lt!1537603))))))))

(declare-fun b!4319633 () Bool)

(assert (=> b!4319633 (= e!2687354 (noDuplicateKeys!259 (t!355350 (t!355350 lt!1537603))))))

(assert (= (and d!1270012 (not res!1770279)) b!4319632))

(assert (= (and b!4319632 res!1770280) b!4319633))

(declare-fun m!4913189 () Bool)

(assert (=> b!4319632 m!4913189))

(declare-fun m!4913191 () Bool)

(assert (=> b!4319633 m!4913191))

(assert (=> b!4319590 d!1270012))

(declare-fun d!1270014 () Bool)

(assert (=> d!1270014 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(declare-fun lt!1537996 () Unit!67649)

(assert (=> d!1270014 (= lt!1537996 (choose!26370 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(declare-fun e!2687355 () Bool)

(assert (=> d!1270014 e!2687355))

(declare-fun res!1770281 () Bool)

(assert (=> d!1270014 (=> (not res!1770281) (not e!2687355))))

(assert (=> d!1270014 (= res!1770281 (isStrictlySorted!20 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270014 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608) lt!1537996)))

(declare-fun b!4319634 () Bool)

(assert (=> b!4319634 (= e!2687355 (containsKey!394 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))

(assert (= (and d!1270014 res!1770281) b!4319634))

(assert (=> d!1270014 m!4912757))

(assert (=> d!1270014 m!4912757))

(assert (=> d!1270014 m!4912953))

(declare-fun m!4913193 () Bool)

(assert (=> d!1270014 m!4913193))

(declare-fun m!4913195 () Bool)

(assert (=> d!1270014 m!4913195))

(assert (=> b!4319634 m!4912949))

(assert (=> b!4319431 d!1270014))

(declare-fun d!1270016 () Bool)

(assert (=> d!1270016 (= (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608)) (not (isEmpty!28110 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608))))))

(declare-fun bs!606192 () Bool)

(assert (= bs!606192 d!1270016))

(assert (=> bs!606192 m!4912757))

(declare-fun m!4913197 () Bool)

(assert (=> bs!606192 m!4913197))

(assert (=> b!4319431 d!1270016))

(assert (=> b!4319431 d!1269908))

(declare-fun d!1270018 () Bool)

(assert (=> d!1270018 (= (isDefined!7595 lt!1537978) (not (isEmpty!28109 lt!1537978)))))

(declare-fun bs!606193 () Bool)

(assert (= bs!606193 d!1270018))

(assert (=> bs!606193 m!4913109))

(assert (=> b!4319595 d!1270018))

(declare-fun d!1270020 () Bool)

(assert (=> d!1270020 (= (map!10380 (_2!26847 lt!1537838)) (map!10382 (v!42702 (underlying!9715 (_2!26847 lt!1537838)))))))

(declare-fun bs!606194 () Bool)

(assert (= bs!606194 d!1270020))

(declare-fun m!4913199 () Bool)

(assert (=> bs!606194 m!4913199))

(assert (=> b!4319401 d!1270020))

(assert (=> b!4319401 d!1269852))

(declare-fun d!1270022 () Bool)

(assert (=> d!1270022 (= (+!322 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537805 lt!1537611 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1537999 () Unit!67649)

(declare-fun choose!26374 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 List!48481 Int) Unit!67649)

(assert (=> d!1270022 (= lt!1537999 (choose!26374 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537805 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!1270022 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270022 (= (lemmaChangeZeroKeyThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537805 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1537999)))

(declare-fun bs!606195 () Bool)

(assert (= bs!606195 d!1270022))

(declare-fun m!4913201 () Bool)

(assert (=> bs!606195 m!4913201))

(declare-fun m!4913203 () Bool)

(assert (=> bs!606195 m!4913203))

(declare-fun m!4913205 () Bool)

(assert (=> bs!606195 m!4913205))

(declare-fun m!4913207 () Bool)

(assert (=> bs!606195 m!4913207))

(assert (=> bs!606195 m!4913203))

(declare-fun m!4913209 () Bool)

(assert (=> bs!606195 m!4913209))

(assert (=> b!4319360 d!1270022))

(declare-fun d!1270024 () Bool)

(declare-fun res!1770286 () Bool)

(declare-fun e!2687360 () Bool)

(assert (=> d!1270024 (=> res!1770286 e!2687360)))

(assert (=> d!1270024 (= res!1770286 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) key!2048)))))

(assert (=> d!1270024 (= (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) e!2687360)))

(declare-fun b!4319639 () Bool)

(declare-fun e!2687361 () Bool)

(assert (=> b!4319639 (= e!2687360 e!2687361)))

(declare-fun res!1770287 () Bool)

(assert (=> b!4319639 (=> (not res!1770287) (not e!2687361))))

(assert (=> b!4319639 (= res!1770287 ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319640 () Bool)

(assert (=> b!4319640 (= e!2687361 (containsKey!395 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048))))

(assert (= (and d!1270024 (not res!1770286)) b!4319639))

(assert (= (and b!4319639 res!1770287) b!4319640))

(declare-fun m!4913211 () Bool)

(assert (=> b!4319640 m!4913211))

(assert (=> b!4319614 d!1270024))

(declare-fun d!1270026 () Bool)

(assert (=> d!1270026 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048)))

(declare-fun lt!1538002 () Unit!67649)

(declare-fun choose!26375 (List!48481 K!9604) Unit!67649)

(assert (=> d!1270026 (= lt!1538002 (choose!26375 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> d!1270026 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270026 (= (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) lt!1538002)))

(declare-fun bs!606196 () Bool)

(assert (= bs!606196 d!1270026))

(assert (=> bs!606196 m!4913143))

(declare-fun m!4913213 () Bool)

(assert (=> bs!606196 m!4913213))

(declare-fun m!4913215 () Bool)

(assert (=> bs!606196 m!4913215))

(assert (=> b!4319614 d!1270026))

(declare-fun bs!606197 () Bool)

(declare-fun b!4319654 () Bool)

(assert (= bs!606197 (and b!4319654 d!1269870)))

(declare-fun lambda!133705 () Int)

(assert (=> bs!606197 (not (= lambda!133705 lambda!133660))))

(declare-fun bs!606198 () Bool)

(assert (= bs!606198 (and b!4319654 d!1269872)))

(assert (=> bs!606198 (not (= lambda!133705 lambda!133661))))

(declare-fun bs!606199 () Bool)

(assert (= bs!606199 (and b!4319654 d!1269876)))

(assert (=> bs!606199 (not (= lambda!133705 lambda!133662))))

(assert (=> b!4319654 true))

(declare-fun bs!606200 () Bool)

(declare-fun b!4319652 () Bool)

(assert (= bs!606200 (and b!4319652 d!1269870)))

(declare-fun lambda!133706 () Int)

(assert (=> bs!606200 (not (= lambda!133706 lambda!133660))))

(declare-fun bs!606201 () Bool)

(assert (= bs!606201 (and b!4319652 d!1269872)))

(assert (=> bs!606201 (not (= lambda!133706 lambda!133661))))

(declare-fun bs!606202 () Bool)

(assert (= bs!606202 (and b!4319652 d!1269876)))

(assert (=> bs!606202 (not (= lambda!133706 lambda!133662))))

(declare-fun bs!606203 () Bool)

(assert (= bs!606203 (and b!4319652 b!4319654)))

(assert (=> bs!606203 (= lambda!133706 lambda!133705)))

(assert (=> b!4319652 true))

(declare-fun lt!1538047 () ListMap!1815)

(declare-fun lambda!133707 () Int)

(assert (=> bs!606203 (= (= lt!1538047 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133707 lambda!133705))))

(assert (=> bs!606200 (not (= lambda!133707 lambda!133660))))

(assert (=> bs!606201 (not (= lambda!133707 lambda!133661))))

(assert (=> b!4319652 (= (= lt!1538047 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133707 lambda!133706))))

(assert (=> bs!606202 (not (= lambda!133707 lambda!133662))))

(assert (=> b!4319652 true))

(declare-fun bs!606204 () Bool)

(declare-fun d!1270028 () Bool)

(assert (= bs!606204 (and d!1270028 b!4319654)))

(declare-fun lt!1538063 () ListMap!1815)

(declare-fun lambda!133708 () Int)

(assert (=> bs!606204 (= (= lt!1538063 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133708 lambda!133705))))

(declare-fun bs!606205 () Bool)

(assert (= bs!606205 (and d!1270028 d!1269870)))

(assert (=> bs!606205 (not (= lambda!133708 lambda!133660))))

(declare-fun bs!606206 () Bool)

(assert (= bs!606206 (and d!1270028 d!1269872)))

(assert (=> bs!606206 (not (= lambda!133708 lambda!133661))))

(declare-fun bs!606207 () Bool)

(assert (= bs!606207 (and d!1270028 b!4319652)))

(assert (=> bs!606207 (= (= lt!1538063 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133708 lambda!133706))))

(declare-fun bs!606208 () Bool)

(assert (= bs!606208 (and d!1270028 d!1269876)))

(assert (=> bs!606208 (not (= lambda!133708 lambda!133662))))

(assert (=> bs!606207 (= (= lt!1538063 lt!1538047) (= lambda!133708 lambda!133707))))

(assert (=> d!1270028 true))

(declare-fun b!4319651 () Bool)

(declare-fun e!2687369 () Bool)

(assert (=> b!4319651 (= e!2687369 (invariantList!598 (toList!2538 lt!1538063)))))

(declare-fun call!299262 () Bool)

(declare-fun c!734570 () Bool)

(declare-fun bm!299256 () Bool)

(assert (=> bm!299256 (= call!299262 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (ite c!734570 lambda!133705 lambda!133707)))))

(declare-fun e!2687370 () ListMap!1815)

(assert (=> b!4319652 (= e!2687370 lt!1538047)))

(declare-fun lt!1538045 () ListMap!1815)

(declare-fun +!323 (ListMap!1815 tuple2!47120) ListMap!1815)

(assert (=> b!4319652 (= lt!1538045 (+!323 (extractMap!365 (t!355351 (toList!2537 lt!1537679))) (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679))))))))

(assert (=> b!4319652 (= lt!1538047 (addToMapMapFromBucket!50 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537679)))) (+!323 (extractMap!365 (t!355351 (toList!2537 lt!1537679))) (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679)))))))))

(declare-fun lt!1538058 () Unit!67649)

(declare-fun call!299263 () Unit!67649)

(assert (=> b!4319652 (= lt!1538058 call!299263)))

(assert (=> b!4319652 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) lambda!133706)))

(declare-fun lt!1538055 () Unit!67649)

(assert (=> b!4319652 (= lt!1538055 lt!1538058)))

(assert (=> b!4319652 (forall!8801 (toList!2538 lt!1538045) lambda!133707)))

(declare-fun lt!1538051 () Unit!67649)

(declare-fun Unit!67670 () Unit!67649)

(assert (=> b!4319652 (= lt!1538051 Unit!67670)))

(assert (=> b!4319652 (forall!8801 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537679)))) lambda!133707)))

(declare-fun lt!1538048 () Unit!67649)

(declare-fun Unit!67671 () Unit!67649)

(assert (=> b!4319652 (= lt!1538048 Unit!67671)))

(declare-fun lt!1538062 () Unit!67649)

(declare-fun Unit!67672 () Unit!67649)

(assert (=> b!4319652 (= lt!1538062 Unit!67672)))

(declare-fun lt!1538057 () Unit!67649)

(declare-fun forallContained!1528 (List!48481 Int tuple2!47120) Unit!67649)

(assert (=> b!4319652 (= lt!1538057 (forallContained!1528 (toList!2538 lt!1538045) lambda!133707 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679))))))))

(assert (=> b!4319652 (contains!10399 lt!1538045 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679))))))))

(declare-fun lt!1538049 () Unit!67649)

(declare-fun Unit!67673 () Unit!67649)

(assert (=> b!4319652 (= lt!1538049 Unit!67673)))

(assert (=> b!4319652 (contains!10399 lt!1538047 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679))))))))

(declare-fun lt!1538056 () Unit!67649)

(declare-fun Unit!67674 () Unit!67649)

(assert (=> b!4319652 (= lt!1538056 Unit!67674)))

(assert (=> b!4319652 (forall!8801 (_2!26846 (h!53815 (toList!2537 lt!1537679))) lambda!133707)))

(declare-fun lt!1538053 () Unit!67649)

(declare-fun Unit!67675 () Unit!67649)

(assert (=> b!4319652 (= lt!1538053 Unit!67675)))

(assert (=> b!4319652 (forall!8801 (toList!2538 lt!1538045) lambda!133707)))

(declare-fun lt!1538050 () Unit!67649)

(declare-fun Unit!67676 () Unit!67649)

(assert (=> b!4319652 (= lt!1538050 Unit!67676)))

(declare-fun lt!1538060 () Unit!67649)

(declare-fun Unit!67677 () Unit!67649)

(assert (=> b!4319652 (= lt!1538060 Unit!67677)))

(declare-fun lt!1538046 () Unit!67649)

(declare-fun addForallContainsKeyThenBeforeAdding!4 (ListMap!1815 ListMap!1815 K!9604 V!9806) Unit!67649)

(assert (=> b!4319652 (= lt!1538046 (addForallContainsKeyThenBeforeAdding!4 (extractMap!365 (t!355351 (toList!2537 lt!1537679))) lt!1538047 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679))))) (_2!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537679)))))))))

(assert (=> b!4319652 call!299262))

(declare-fun lt!1538061 () Unit!67649)

(assert (=> b!4319652 (= lt!1538061 lt!1538046)))

(assert (=> b!4319652 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) lambda!133707)))

(declare-fun lt!1538052 () Unit!67649)

(declare-fun Unit!67678 () Unit!67649)

(assert (=> b!4319652 (= lt!1538052 Unit!67678)))

(declare-fun res!1770296 () Bool)

(declare-fun call!299261 () Bool)

(assert (=> b!4319652 (= res!1770296 call!299261)))

(declare-fun e!2687368 () Bool)

(assert (=> b!4319652 (=> (not res!1770296) (not e!2687368))))

(assert (=> b!4319652 e!2687368))

(declare-fun lt!1538059 () Unit!67649)

(declare-fun Unit!67679 () Unit!67649)

(assert (=> b!4319652 (= lt!1538059 Unit!67679)))

(declare-fun b!4319653 () Bool)

(declare-fun res!1770294 () Bool)

(assert (=> b!4319653 (=> (not res!1770294) (not e!2687369))))

(assert (=> b!4319653 (= res!1770294 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) lambda!133708))))

(assert (=> b!4319654 (= e!2687370 (extractMap!365 (t!355351 (toList!2537 lt!1537679))))))

(declare-fun lt!1538064 () Unit!67649)

(assert (=> b!4319654 (= lt!1538064 call!299263)))

(assert (=> b!4319654 call!299262))

(declare-fun lt!1538054 () Unit!67649)

(assert (=> b!4319654 (= lt!1538054 lt!1538064)))

(assert (=> b!4319654 call!299261))

(declare-fun lt!1538065 () Unit!67649)

(declare-fun Unit!67680 () Unit!67649)

(assert (=> b!4319654 (= lt!1538065 Unit!67680)))

(assert (=> d!1270028 e!2687369))

(declare-fun res!1770295 () Bool)

(assert (=> d!1270028 (=> (not res!1770295) (not e!2687369))))

(assert (=> d!1270028 (= res!1770295 (forall!8801 (_2!26846 (h!53815 (toList!2537 lt!1537679))) lambda!133708))))

(assert (=> d!1270028 (= lt!1538063 e!2687370)))

(assert (=> d!1270028 (= c!734570 ((_ is Nil!48357) (_2!26846 (h!53815 (toList!2537 lt!1537679)))))))

(assert (=> d!1270028 (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537679))))))

(assert (=> d!1270028 (= (addToMapMapFromBucket!50 (_2!26846 (h!53815 (toList!2537 lt!1537679))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) lt!1538063)))

(declare-fun bm!299257 () Bool)

(assert (=> bm!299257 (= call!299261 (forall!8801 (ite c!734570 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (_2!26846 (h!53815 (toList!2537 lt!1537679)))) (ite c!734570 lambda!133705 lambda!133707)))))

(declare-fun b!4319655 () Bool)

(assert (=> b!4319655 (= e!2687368 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) lambda!133707))))

(declare-fun bm!299258 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!4 (ListMap!1815) Unit!67649)

(assert (=> bm!299258 (= call!299263 (lemmaContainsAllItsOwnKeys!4 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))))))

(assert (= (and d!1270028 c!734570) b!4319654))

(assert (= (and d!1270028 (not c!734570)) b!4319652))

(assert (= (and b!4319652 res!1770296) b!4319655))

(assert (= (or b!4319654 b!4319652) bm!299258))

(assert (= (or b!4319654 b!4319652) bm!299257))

(assert (= (or b!4319654 b!4319652) bm!299256))

(assert (= (and d!1270028 res!1770295) b!4319653))

(assert (= (and b!4319653 res!1770294) b!4319651))

(assert (=> bm!299258 m!4912797))

(declare-fun m!4913217 () Bool)

(assert (=> bm!299258 m!4913217))

(declare-fun m!4913219 () Bool)

(assert (=> bm!299257 m!4913219))

(declare-fun m!4913221 () Bool)

(assert (=> d!1270028 m!4913221))

(declare-fun m!4913223 () Bool)

(assert (=> d!1270028 m!4913223))

(declare-fun m!4913225 () Bool)

(assert (=> b!4319651 m!4913225))

(declare-fun m!4913227 () Bool)

(assert (=> b!4319653 m!4913227))

(assert (=> b!4319652 m!4912797))

(declare-fun m!4913229 () Bool)

(assert (=> b!4319652 m!4913229))

(assert (=> b!4319652 m!4912797))

(declare-fun m!4913231 () Bool)

(assert (=> b!4319652 m!4913231))

(declare-fun m!4913233 () Bool)

(assert (=> b!4319652 m!4913233))

(declare-fun m!4913235 () Bool)

(assert (=> b!4319652 m!4913235))

(assert (=> b!4319652 m!4913233))

(declare-fun m!4913237 () Bool)

(assert (=> b!4319652 m!4913237))

(declare-fun m!4913239 () Bool)

(assert (=> b!4319652 m!4913239))

(declare-fun m!4913241 () Bool)

(assert (=> b!4319652 m!4913241))

(declare-fun m!4913243 () Bool)

(assert (=> b!4319652 m!4913243))

(assert (=> b!4319652 m!4913231))

(declare-fun m!4913245 () Bool)

(assert (=> b!4319652 m!4913245))

(declare-fun m!4913247 () Bool)

(assert (=> b!4319652 m!4913247))

(declare-fun m!4913249 () Bool)

(assert (=> b!4319652 m!4913249))

(declare-fun m!4913251 () Bool)

(assert (=> bm!299256 m!4913251))

(assert (=> b!4319655 m!4913241))

(assert (=> b!4319237 d!1270028))

(declare-fun bs!606209 () Bool)

(declare-fun d!1270030 () Bool)

(assert (= bs!606209 (and d!1270030 d!1269884)))

(declare-fun lambda!133709 () Int)

(assert (=> bs!606209 (= lambda!133709 lambda!133668)))

(declare-fun bs!606210 () Bool)

(assert (= bs!606210 (and d!1270030 b!4319146)))

(assert (=> bs!606210 (= lambda!133709 lambda!133654)))

(declare-fun bs!606211 () Bool)

(assert (= bs!606211 (and d!1270030 b!4319081)))

(assert (=> bs!606211 (= lambda!133709 lambda!133648)))

(declare-fun bs!606212 () Bool)

(assert (= bs!606212 (and d!1270030 d!1269886)))

(assert (=> bs!606212 (= lambda!133709 lambda!133671)))

(declare-fun bs!606213 () Bool)

(assert (= bs!606213 (and d!1270030 d!1269976)))

(assert (=> bs!606213 (not (= lambda!133709 lambda!133676))))

(declare-fun bs!606214 () Bool)

(assert (= bs!606214 (and d!1270030 d!1269848)))

(assert (=> bs!606214 (not (= lambda!133709 lambda!133651))))

(declare-fun bs!606215 () Bool)

(assert (= bs!606215 (and d!1270030 d!1269946)))

(assert (=> bs!606215 (= lambda!133709 lambda!133675)))

(declare-fun bs!606216 () Bool)

(assert (= bs!606216 (and d!1270030 d!1269890)))

(assert (=> bs!606216 (= lambda!133709 lambda!133672)))

(declare-fun bs!606217 () Bool)

(assert (= bs!606217 (and d!1270030 d!1269866)))

(assert (=> bs!606217 (not (= lambda!133709 lambda!133657))))

(declare-fun bs!606218 () Bool)

(assert (= bs!606218 (and d!1270030 b!4319188)))

(assert (=> bs!606218 (= lambda!133709 lambda!133665)))

(declare-fun lt!1538066 () ListMap!1815)

(assert (=> d!1270030 (invariantList!598 (toList!2538 lt!1538066))))

(declare-fun e!2687371 () ListMap!1815)

(assert (=> d!1270030 (= lt!1538066 e!2687371)))

(declare-fun c!734571 () Bool)

(assert (=> d!1270030 (= c!734571 ((_ is Cons!48358) (t!355351 (toList!2537 lt!1537679))))))

(assert (=> d!1270030 (forall!8800 (t!355351 (toList!2537 lt!1537679)) lambda!133709)))

(assert (=> d!1270030 (= (extractMap!365 (t!355351 (toList!2537 lt!1537679))) lt!1538066)))

(declare-fun b!4319658 () Bool)

(assert (=> b!4319658 (= e!2687371 (addToMapMapFromBucket!50 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537679)))) (extractMap!365 (t!355351 (t!355351 (toList!2537 lt!1537679))))))))

(declare-fun b!4319659 () Bool)

(assert (=> b!4319659 (= e!2687371 (ListMap!1816 Nil!48357))))

(assert (= (and d!1270030 c!734571) b!4319658))

(assert (= (and d!1270030 (not c!734571)) b!4319659))

(declare-fun m!4913253 () Bool)

(assert (=> d!1270030 m!4913253))

(declare-fun m!4913255 () Bool)

(assert (=> d!1270030 m!4913255))

(declare-fun m!4913257 () Bool)

(assert (=> b!4319658 m!4913257))

(assert (=> b!4319658 m!4913257))

(declare-fun m!4913259 () Bool)

(assert (=> b!4319658 m!4913259))

(assert (=> b!4319237 d!1270030))

(declare-fun d!1270032 () Bool)

(declare-fun lt!1538069 () Bool)

(declare-fun content!7568 (List!48483) (InoxSet K!9604))

(assert (=> d!1270032 (= lt!1538069 (select (content!7568 (keys!16162 (extractMap!365 (toList!2537 lt!1537679)))) key!2048))))

(declare-fun e!2687376 () Bool)

(assert (=> d!1270032 (= lt!1538069 e!2687376)))

(declare-fun res!1770302 () Bool)

(assert (=> d!1270032 (=> (not res!1770302) (not e!2687376))))

(assert (=> d!1270032 (= res!1770302 ((_ is Cons!48359) (keys!16162 (extractMap!365 (toList!2537 lt!1537679)))))))

(assert (=> d!1270032 (= (contains!10400 (keys!16162 (extractMap!365 (toList!2537 lt!1537679))) key!2048) lt!1538069)))

(declare-fun b!4319664 () Bool)

(declare-fun e!2687377 () Bool)

(assert (=> b!4319664 (= e!2687376 e!2687377)))

(declare-fun res!1770301 () Bool)

(assert (=> b!4319664 (=> res!1770301 e!2687377)))

(assert (=> b!4319664 (= res!1770301 (= (h!53817 (keys!16162 (extractMap!365 (toList!2537 lt!1537679)))) key!2048))))

(declare-fun b!4319665 () Bool)

(assert (=> b!4319665 (= e!2687377 (contains!10400 (t!355356 (keys!16162 (extractMap!365 (toList!2537 lt!1537679)))) key!2048))))

(assert (= (and d!1270032 res!1770302) b!4319664))

(assert (= (and b!4319664 (not res!1770301)) b!4319665))

(assert (=> d!1270032 m!4912775))

(declare-fun m!4913261 () Bool)

(assert (=> d!1270032 m!4913261))

(declare-fun m!4913263 () Bool)

(assert (=> d!1270032 m!4913263))

(declare-fun m!4913265 () Bool)

(assert (=> b!4319665 m!4913265))

(assert (=> b!4319231 d!1270032))

(declare-fun b!4319673 () Bool)

(assert (=> b!4319673 true))

(declare-fun d!1270034 () Bool)

(declare-fun e!2687380 () Bool)

(assert (=> d!1270034 e!2687380))

(declare-fun res!1770310 () Bool)

(assert (=> d!1270034 (=> (not res!1770310) (not e!2687380))))

(declare-fun lt!1538072 () List!48483)

(declare-fun noDuplicate!586 (List!48483) Bool)

(assert (=> d!1270034 (= res!1770310 (noDuplicate!586 lt!1538072))))

(assert (=> d!1270034 (= lt!1538072 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))

(assert (=> d!1270034 (= (keys!16162 (extractMap!365 (toList!2537 lt!1537679))) lt!1538072)))

(declare-fun b!4319672 () Bool)

(declare-fun res!1770311 () Bool)

(assert (=> b!4319672 (=> (not res!1770311) (not e!2687380))))

(declare-fun length!28 (List!48483) Int)

(declare-fun length!29 (List!48481) Int)

(assert (=> b!4319672 (= res!1770311 (= (length!28 lt!1538072) (length!29 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))))

(declare-fun res!1770309 () Bool)

(assert (=> b!4319673 (=> (not res!1770309) (not e!2687380))))

(declare-fun lambda!133714 () Int)

(declare-fun forall!8802 (List!48483 Int) Bool)

(assert (=> b!4319673 (= res!1770309 (forall!8802 lt!1538072 lambda!133714))))

(declare-fun lambda!133715 () Int)

(declare-fun b!4319674 () Bool)

(declare-fun map!10383 (List!48481 Int) List!48483)

(assert (=> b!4319674 (= e!2687380 (= (content!7568 lt!1538072) (content!7568 (map!10383 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) lambda!133715))))))

(assert (= (and d!1270034 res!1770310) b!4319672))

(assert (= (and b!4319672 res!1770311) b!4319673))

(assert (= (and b!4319673 res!1770309) b!4319674))

(declare-fun m!4913267 () Bool)

(assert (=> d!1270034 m!4913267))

(assert (=> d!1270034 m!4912787))

(declare-fun m!4913269 () Bool)

(assert (=> b!4319672 m!4913269))

(declare-fun m!4913271 () Bool)

(assert (=> b!4319672 m!4913271))

(declare-fun m!4913273 () Bool)

(assert (=> b!4319673 m!4913273))

(declare-fun m!4913275 () Bool)

(assert (=> b!4319674 m!4913275))

(declare-fun m!4913277 () Bool)

(assert (=> b!4319674 m!4913277))

(assert (=> b!4319674 m!4913277))

(declare-fun m!4913279 () Bool)

(assert (=> b!4319674 m!4913279))

(assert (=> b!4319231 d!1270034))

(declare-fun d!1270036 () Bool)

(assert (=> d!1270036 (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (removePairForKey!258 lt!1537603 key!2048)))) (hash!1157 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (removePairForKey!258 lt!1537603 key!2048)))))))

(declare-fun bs!606219 () Bool)

(assert (= bs!606219 d!1270036))

(declare-fun m!4913281 () Bool)

(assert (=> bs!606219 m!4913281))

(assert (=> bs!606191 d!1270036))

(declare-fun b!4319689 () Bool)

(declare-fun e!2687387 () SeekEntryResult!20)

(declare-fun lt!1538084 () SeekEntryResult!20)

(assert (=> b!4319689 (= e!2687387 (ite ((_ is MissingVacant!20) lt!1538084) (MissingZero!20 (index!1461 lt!1538084)) lt!1538084))))

(declare-fun lt!1538082 () SeekEntryResult!20)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17186 (_ BitVec 32)) SeekEntryResult!20)

(assert (=> b!4319689 (= lt!1538084 (seekKeyOrZeroReturnVacant!0 (x!749645 lt!1538082) (index!1462 lt!1538082) (index!1462 lt!1538082) lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319690 () Bool)

(declare-fun c!734579 () Bool)

(declare-fun lt!1538083 () (_ BitVec 64))

(assert (=> b!4319690 (= c!734579 (= lt!1538083 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687388 () SeekEntryResult!20)

(assert (=> b!4319690 (= e!2687388 e!2687387)))

(declare-fun b!4319691 () Bool)

(assert (=> b!4319691 (= e!2687388 (Found!20 (index!1462 lt!1538082)))))

(declare-fun b!4319692 () Bool)

(declare-fun e!2687389 () SeekEntryResult!20)

(assert (=> b!4319692 (= e!2687389 e!2687388)))

(assert (=> b!4319692 (= lt!1538083 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1462 lt!1538082)))))

(declare-fun c!734578 () Bool)

(assert (=> b!4319692 (= c!734578 (= lt!1538083 lt!1537608))))

(declare-fun b!4319693 () Bool)

(assert (=> b!4319693 (= e!2687387 (MissingZero!20 (index!1462 lt!1538082)))))

(declare-fun d!1270038 () Bool)

(declare-fun lt!1538081 () SeekEntryResult!20)

(assert (=> d!1270038 (and (or ((_ is MissingVacant!20) lt!1538081) (not ((_ is Found!20) lt!1538081)) (and (bvsge (index!1459 lt!1538081) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1538081) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))) (not ((_ is MissingVacant!20) lt!1538081)) (or (not ((_ is Found!20) lt!1538081)) (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1538081)) lt!1537608)))))

(assert (=> d!1270038 (= lt!1538081 e!2687389)))

(declare-fun c!734580 () Bool)

(assert (=> d!1270038 (= c!734580 (and ((_ is Intermediate!20) lt!1538082) (undefined!101 lt!1538082)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!17186 (_ BitVec 32)) SeekEntryResult!20)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1270038 (= lt!1538082 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!1537608 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270038 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270038 (= (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538081)))

(declare-fun b!4319694 () Bool)

(assert (=> b!4319694 (= e!2687389 Undefined!20)))

(assert (= (and d!1270038 c!734580) b!4319694))

(assert (= (and d!1270038 (not c!734580)) b!4319692))

(assert (= (and b!4319692 c!734578) b!4319691))

(assert (= (and b!4319692 (not c!734578)) b!4319690))

(assert (= (and b!4319690 c!734579) b!4319693))

(assert (= (and b!4319690 (not c!734579)) b!4319689))

(declare-fun m!4913283 () Bool)

(assert (=> b!4319689 m!4913283))

(declare-fun m!4913285 () Bool)

(assert (=> b!4319692 m!4913285))

(declare-fun m!4913287 () Bool)

(assert (=> d!1270038 m!4913287))

(declare-fun m!4913289 () Bool)

(assert (=> d!1270038 m!4913289))

(assert (=> d!1270038 m!4913289))

(declare-fun m!4913291 () Bool)

(assert (=> d!1270038 m!4913291))

(declare-fun m!4913293 () Bool)

(assert (=> d!1270038 m!4913293))

(assert (=> b!4319455 d!1270038))

(declare-fun d!1270040 () Bool)

(declare-fun e!2687392 () Bool)

(assert (=> d!1270040 e!2687392))

(declare-fun c!734583 () Bool)

(assert (=> d!1270040 (= c!734583 (and (not (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1538087 () Unit!67649)

(declare-fun choose!26376 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> d!1270040 (= lt!1538087 (choose!26376 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270040 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270040 (= (lemmaKeyInListMapIsInArray!16 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538087)))

(declare-fun b!4319699 () Bool)

(assert (=> b!4319699 (= e!2687392 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun b!4319700 () Bool)

(assert (=> b!4319700 (= e!2687392 (ite (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!1270040 c!734583) b!4319699))

(assert (= (and d!1270040 (not c!734583)) b!4319700))

(declare-fun m!4913295 () Bool)

(assert (=> d!1270040 m!4913295))

(assert (=> d!1270040 m!4913293))

(assert (=> b!4319699 m!4912979))

(assert (=> b!4319455 d!1270040))

(declare-fun d!1270042 () Bool)

(assert (=> d!1270042 (arrayForallSeekEntryOrOpenFound!0 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun lt!1538090 () Unit!67649)

(declare-fun choose!979 (array!17186 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> d!1270042 (= lt!1538090 (choose!979 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 lt!1537921))))

(assert (=> d!1270042 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270042 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 lt!1537921) lt!1538090)))

(declare-fun bs!606220 () Bool)

(assert (= bs!606220 d!1270042))

(assert (=> bs!606220 m!4912973))

(declare-fun m!4913297 () Bool)

(assert (=> bs!606220 m!4913297))

(assert (=> bs!606220 m!4913293))

(assert (=> b!4319455 d!1270042))

(declare-fun d!1270044 () Bool)

(declare-fun lt!1538093 () (_ BitVec 32))

(assert (=> d!1270044 (and (or (bvslt lt!1538093 #b00000000000000000000000000000000) (bvsge lt!1538093 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (and (bvsge lt!1538093 #b00000000000000000000000000000000) (bvslt lt!1538093 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))) (bvsge lt!1538093 #b00000000000000000000000000000000) (bvslt lt!1538093 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538093) lt!1537608))))

(declare-fun e!2687395 () (_ BitVec 32))

(assert (=> d!1270044 (= lt!1538093 e!2687395)))

(declare-fun c!734586 () Bool)

(assert (=> d!1270044 (= c!734586 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000) lt!1537608))))

(assert (=> d!1270044 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (bvslt (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b01111111111111111111111111111111))))

(assert (=> d!1270044 (= (arrayScanForKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000) lt!1538093)))

(declare-fun b!4319705 () Bool)

(assert (=> b!4319705 (= e!2687395 #b00000000000000000000000000000000)))

(declare-fun b!4319706 () Bool)

(assert (=> b!4319706 (= e!2687395 (arrayScanForKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270044 c!734586) b!4319705))

(assert (= (and d!1270044 (not c!734586)) b!4319706))

(declare-fun m!4913299 () Bool)

(assert (=> d!1270044 m!4913299))

(declare-fun m!4913301 () Bool)

(assert (=> d!1270044 m!4913301))

(declare-fun m!4913303 () Bool)

(assert (=> b!4319706 m!4913303))

(assert (=> b!4319455 d!1270044))

(declare-fun d!1270046 () Bool)

(declare-fun res!1770317 () Bool)

(declare-fun e!2687402 () Bool)

(assert (=> d!1270046 (=> res!1770317 e!2687402)))

(assert (=> d!1270046 (= res!1770317 (bvsge lt!1537921 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270046 (= (arrayForallSeekEntryOrOpenFound!0 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) e!2687402)))

(declare-fun b!4319715 () Bool)

(declare-fun e!2687404 () Bool)

(declare-fun call!299266 () Bool)

(assert (=> b!4319715 (= e!2687404 call!299266)))

(declare-fun bm!299261 () Bool)

(assert (=> bm!299261 (= call!299266 (arrayForallSeekEntryOrOpenFound!0 (bvadd lt!1537921 #b00000000000000000000000000000001) (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319716 () Bool)

(declare-fun e!2687403 () Bool)

(assert (=> b!4319716 (= e!2687403 call!299266)))

(declare-fun b!4319717 () Bool)

(assert (=> b!4319717 (= e!2687403 e!2687404)))

(declare-fun lt!1538101 () (_ BitVec 64))

(assert (=> b!4319717 (= lt!1538101 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537921))))

(declare-fun lt!1538102 () Unit!67649)

(assert (=> b!4319717 (= lt!1538102 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538101 lt!1537921))))

(assert (=> b!4319717 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538101 #b00000000000000000000000000000000)))

(declare-fun lt!1538100 () Unit!67649)

(assert (=> b!4319717 (= lt!1538100 lt!1538102)))

(declare-fun res!1770316 () Bool)

(assert (=> b!4319717 (= res!1770316 (= (seekEntryOrOpen!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537921) (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (Found!20 lt!1537921)))))

(assert (=> b!4319717 (=> (not res!1770316) (not e!2687404))))

(declare-fun b!4319718 () Bool)

(assert (=> b!4319718 (= e!2687402 e!2687403)))

(declare-fun c!734589 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!4319718 (= c!734589 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537921)))))

(assert (= (and d!1270046 (not res!1770317)) b!4319718))

(assert (= (and b!4319718 c!734589) b!4319717))

(assert (= (and b!4319718 (not c!734589)) b!4319716))

(assert (= (and b!4319717 res!1770316) b!4319715))

(assert (= (or b!4319715 b!4319716) bm!299261))

(declare-fun m!4913305 () Bool)

(assert (=> bm!299261 m!4913305))

(declare-fun m!4913307 () Bool)

(assert (=> b!4319717 m!4913307))

(declare-fun m!4913309 () Bool)

(assert (=> b!4319717 m!4913309))

(declare-fun m!4913311 () Bool)

(assert (=> b!4319717 m!4913311))

(assert (=> b!4319717 m!4913307))

(declare-fun m!4913313 () Bool)

(assert (=> b!4319717 m!4913313))

(assert (=> b!4319718 m!4913307))

(assert (=> b!4319718 m!4913307))

(declare-fun m!4913315 () Bool)

(assert (=> b!4319718 m!4913315))

(assert (=> b!4319455 d!1270046))

(declare-fun d!1270048 () Bool)

(declare-fun lt!1538108 () SeekEntryResult!20)

(assert (=> d!1270048 (and ((_ is Found!20) lt!1538108) (= (index!1459 lt!1538108) lt!1537921))))

(assert (=> d!1270048 (= lt!1538108 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538107 () Unit!67649)

(declare-fun choose!259 ((_ BitVec 64) (_ BitVec 32) array!17186 (_ BitVec 32)) Unit!67649)

(assert (=> d!1270048 (= lt!1538107 (choose!259 lt!1537608 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270048 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270048 (= (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1537608 lt!1537921 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538107)))

(declare-fun bs!606221 () Bool)

(assert (= bs!606221 d!1270048))

(assert (=> bs!606221 m!4912967))

(declare-fun m!4913317 () Bool)

(assert (=> bs!606221 m!4913317))

(assert (=> bs!606221 m!4913293))

(assert (=> b!4319455 d!1270048))

(assert (=> d!1269950 d!1269958))

(assert (=> d!1269950 d!1269954))

(declare-fun d!1270050 () Bool)

(assert (=> d!1270050 (isDefined!7594 (getValueByKey!293 lt!1537685 lt!1537672))))

(assert (=> d!1270050 true))

(declare-fun _$13!1430 () Unit!67649)

(assert (=> d!1270050 (= (choose!26370 lt!1537685 lt!1537672) _$13!1430)))

(declare-fun bs!606222 () Bool)

(assert (= bs!606222 d!1270050))

(assert (=> bs!606222 m!4912713))

(assert (=> bs!606222 m!4912713))

(assert (=> bs!606222 m!4912715))

(assert (=> d!1269950 d!1270050))

(declare-fun d!1270052 () Bool)

(declare-fun res!1770322 () Bool)

(declare-fun e!2687409 () Bool)

(assert (=> d!1270052 (=> res!1770322 e!2687409)))

(assert (=> d!1270052 (= res!1770322 (or ((_ is Nil!48358) lt!1537685) ((_ is Nil!48358) (t!355351 lt!1537685))))))

(assert (=> d!1270052 (= (isStrictlySorted!20 lt!1537685) e!2687409)))

(declare-fun b!4319723 () Bool)

(declare-fun e!2687410 () Bool)

(assert (=> b!4319723 (= e!2687409 e!2687410)))

(declare-fun res!1770323 () Bool)

(assert (=> b!4319723 (=> (not res!1770323) (not e!2687410))))

(assert (=> b!4319723 (= res!1770323 (bvslt (_1!26846 (h!53815 lt!1537685)) (_1!26846 (h!53815 (t!355351 lt!1537685)))))))

(declare-fun b!4319724 () Bool)

(assert (=> b!4319724 (= e!2687410 (isStrictlySorted!20 (t!355351 lt!1537685)))))

(assert (= (and d!1270052 (not res!1770322)) b!4319723))

(assert (= (and b!4319723 res!1770323) b!4319724))

(declare-fun m!4913319 () Bool)

(assert (=> b!4319724 m!4913319))

(assert (=> d!1269950 d!1270052))

(declare-fun d!1270054 () Bool)

(declare-fun res!1770324 () Bool)

(declare-fun e!2687411 () Bool)

(assert (=> d!1270054 (=> res!1770324 e!2687411)))

(assert (=> d!1270054 (= res!1770324 ((_ is Nil!48357) (t!355350 (removePairForKey!258 lt!1537603 key!2048))))))

(assert (=> d!1270054 (= (forall!8801 (t!355350 (removePairForKey!258 lt!1537603 key!2048)) lambda!133660) e!2687411)))

(declare-fun b!4319725 () Bool)

(declare-fun e!2687412 () Bool)

(assert (=> b!4319725 (= e!2687411 e!2687412)))

(declare-fun res!1770325 () Bool)

(assert (=> b!4319725 (=> (not res!1770325) (not e!2687412))))

(assert (=> b!4319725 (= res!1770325 (dynLambda!20501 lambda!133660 (h!53814 (t!355350 (removePairForKey!258 lt!1537603 key!2048)))))))

(declare-fun b!4319726 () Bool)

(assert (=> b!4319726 (= e!2687412 (forall!8801 (t!355350 (t!355350 (removePairForKey!258 lt!1537603 key!2048))) lambda!133660))))

(assert (= (and d!1270054 (not res!1770324)) b!4319725))

(assert (= (and b!4319725 res!1770325) b!4319726))

(declare-fun b_lambda!127119 () Bool)

(assert (=> (not b_lambda!127119) (not b!4319725)))

(declare-fun m!4913321 () Bool)

(assert (=> b!4319725 m!4913321))

(declare-fun m!4913323 () Bool)

(assert (=> b!4319726 m!4913323))

(assert (=> b!4319471 d!1270054))

(declare-fun bs!606223 () Bool)

(declare-fun b!4319728 () Bool)

(assert (= bs!606223 (and b!4319728 b!4319673)))

(declare-fun lambda!133716 () Int)

(assert (=> bs!606223 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133716 lambda!133714))))

(assert (=> b!4319728 true))

(declare-fun bs!606224 () Bool)

(declare-fun b!4319729 () Bool)

(assert (= bs!606224 (and b!4319729 b!4319674)))

(declare-fun lambda!133717 () Int)

(assert (=> bs!606224 (= lambda!133717 lambda!133715)))

(declare-fun d!1270056 () Bool)

(declare-fun e!2687413 () Bool)

(assert (=> d!1270056 e!2687413))

(declare-fun res!1770327 () Bool)

(assert (=> d!1270056 (=> (not res!1770327) (not e!2687413))))

(declare-fun lt!1538109 () List!48483)

(assert (=> d!1270056 (= res!1770327 (noDuplicate!586 lt!1538109))))

(assert (=> d!1270056 (= lt!1538109 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270056 (= (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538109)))

(declare-fun b!4319727 () Bool)

(declare-fun res!1770328 () Bool)

(assert (=> b!4319727 (=> (not res!1770328) (not e!2687413))))

(assert (=> b!4319727 (= res!1770328 (= (length!28 lt!1538109) (length!29 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun res!1770326 () Bool)

(assert (=> b!4319728 (=> (not res!1770326) (not e!2687413))))

(assert (=> b!4319728 (= res!1770326 (forall!8802 lt!1538109 lambda!133716))))

(assert (=> b!4319729 (= e!2687413 (= (content!7568 lt!1538109) (content!7568 (map!10383 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lambda!133717))))))

(assert (= (and d!1270056 res!1770327) b!4319727))

(assert (= (and b!4319727 res!1770328) b!4319728))

(assert (= (and b!4319728 res!1770326) b!4319729))

(declare-fun m!4913325 () Bool)

(assert (=> d!1270056 m!4913325))

(assert (=> d!1270056 m!4913157))

(declare-fun m!4913327 () Bool)

(assert (=> b!4319727 m!4913327))

(declare-fun m!4913329 () Bool)

(assert (=> b!4319727 m!4913329))

(declare-fun m!4913331 () Bool)

(assert (=> b!4319728 m!4913331))

(declare-fun m!4913333 () Bool)

(assert (=> b!4319729 m!4913333))

(declare-fun m!4913335 () Bool)

(assert (=> b!4319729 m!4913335))

(assert (=> b!4319729 m!4913335))

(declare-fun m!4913337 () Bool)

(assert (=> b!4319729 m!4913337))

(assert (=> b!4319618 d!1270056))

(declare-fun e!2687415 () Option!10294)

(declare-fun b!4319732 () Bool)

(assert (=> b!4319732 (= e!2687415 (getValueByKey!293 (t!355351 (toList!2537 lt!1537866)) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4319730 () Bool)

(declare-fun e!2687414 () Option!10294)

(assert (=> b!4319730 (= e!2687414 (Some!10293 (_2!26846 (h!53815 (toList!2537 lt!1537866)))))))

(declare-fun b!4319733 () Bool)

(assert (=> b!4319733 (= e!2687415 None!10293)))

(declare-fun d!1270058 () Bool)

(declare-fun c!734590 () Bool)

(assert (=> d!1270058 (= c!734590 (and ((_ is Cons!48358) (toList!2537 lt!1537866)) (= (_1!26846 (h!53815 (toList!2537 lt!1537866))) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270058 (= (getValueByKey!293 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) e!2687414)))

(declare-fun b!4319731 () Bool)

(assert (=> b!4319731 (= e!2687414 e!2687415)))

(declare-fun c!734591 () Bool)

(assert (=> b!4319731 (= c!734591 (and ((_ is Cons!48358) (toList!2537 lt!1537866)) (not (= (_1!26846 (h!53815 (toList!2537 lt!1537866))) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))))

(assert (= (and d!1270058 c!734590) b!4319730))

(assert (= (and d!1270058 (not c!734590)) b!4319731))

(assert (= (and b!4319731 c!734591) b!4319732))

(assert (= (and b!4319731 (not c!734591)) b!4319733))

(declare-fun m!4913339 () Bool)

(assert (=> b!4319732 m!4913339))

(assert (=> b!4319424 d!1270058))

(declare-fun d!1270060 () Bool)

(declare-fun res!1770329 () Bool)

(declare-fun e!2687416 () Bool)

(assert (=> d!1270060 (=> res!1770329 e!2687416)))

(assert (=> d!1270060 (= res!1770329 (not ((_ is Cons!48357) (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))))

(assert (=> d!1270060 (= (noDuplicateKeys!259 (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))) e!2687416)))

(declare-fun b!4319734 () Bool)

(declare-fun e!2687417 () Bool)

(assert (=> b!4319734 (= e!2687416 e!2687417)))

(declare-fun res!1770330 () Bool)

(assert (=> b!4319734 (=> (not res!1770330) (not e!2687417))))

(assert (=> b!4319734 (= res!1770330 (not (containsKey!393 (t!355350 (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))) (_1!26845 (h!53814 (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))))))

(declare-fun b!4319735 () Bool)

(assert (=> b!4319735 (= e!2687417 (noDuplicateKeys!259 (t!355350 (_2!26846 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))))

(assert (= (and d!1270060 (not res!1770329)) b!4319734))

(assert (= (and b!4319734 res!1770330) b!4319735))

(declare-fun m!4913341 () Bool)

(assert (=> b!4319734 m!4913341))

(declare-fun m!4913343 () Bool)

(assert (=> b!4319735 m!4913343))

(assert (=> bs!606188 d!1270060))

(declare-fun d!1270062 () Bool)

(declare-fun res!1770337 () Bool)

(declare-fun e!2687420 () Bool)

(assert (=> d!1270062 (=> (not res!1770337) (not e!2687420))))

(declare-fun simpleValid!8 (LongMapFixedSize!9486) Bool)

(assert (=> d!1270062 (= res!1770337 (simpleValid!8 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270062 (= (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) e!2687420)))

(declare-fun b!4319742 () Bool)

(declare-fun res!1770338 () Bool)

(assert (=> b!4319742 (=> (not res!1770338) (not e!2687420))))

(declare-fun arrayCountValidKeys!0 (array!17186 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!4319742 (= res!1770338 (= (arrayCountValidKeys!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319743 () Bool)

(declare-fun res!1770339 () Bool)

(assert (=> b!4319743 (=> (not res!1770339) (not e!2687420))))

(assert (=> b!4319743 (= res!1770339 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319744 () Bool)

(declare-datatypes ((List!48484 0))(
  ( (Nil!48360) (Cons!48360 (h!53818 (_ BitVec 64)) (t!355359 List!48484)) )
))
(declare-fun arrayNoDuplicates!0 (array!17186 (_ BitVec 32) List!48484) Bool)

(assert (=> b!4319744 (= e!2687420 (arrayNoDuplicates!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 Nil!48360))))

(assert (= (and d!1270062 res!1770337) b!4319742))

(assert (= (and b!4319742 res!1770338) b!4319743))

(assert (= (and b!4319743 res!1770339) b!4319744))

(declare-fun m!4913345 () Bool)

(assert (=> d!1270062 m!4913345))

(declare-fun m!4913347 () Bool)

(assert (=> b!4319742 m!4913347))

(declare-fun m!4913349 () Bool)

(assert (=> b!4319743 m!4913349))

(declare-fun m!4913351 () Bool)

(assert (=> b!4319744 m!4913351))

(assert (=> d!1269902 d!1270062))

(declare-fun d!1270064 () Bool)

(declare-fun res!1770340 () Bool)

(declare-fun e!2687421 () Bool)

(assert (=> d!1270064 (=> res!1770340 e!2687421)))

(assert (=> d!1270064 (= res!1770340 ((_ is Nil!48358) (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270064 (= (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133665) e!2687421)))

(declare-fun b!4319745 () Bool)

(declare-fun e!2687422 () Bool)

(assert (=> b!4319745 (= e!2687421 e!2687422)))

(declare-fun res!1770341 () Bool)

(assert (=> b!4319745 (=> (not res!1770341) (not e!2687422))))

(assert (=> b!4319745 (= res!1770341 (dynLambda!20499 lambda!133665 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319746 () Bool)

(assert (=> b!4319746 (= e!2687422 (forall!8800 (t!355351 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lambda!133665))))

(assert (= (and d!1270064 (not res!1770340)) b!4319745))

(assert (= (and b!4319745 res!1770341) b!4319746))

(declare-fun b_lambda!127121 () Bool)

(assert (=> (not b_lambda!127121) (not b!4319745)))

(declare-fun m!4913353 () Bool)

(assert (=> b!4319745 m!4913353))

(declare-fun m!4913355 () Bool)

(assert (=> b!4319746 m!4913355))

(assert (=> b!4319600 d!1270064))

(declare-fun d!1270066 () Bool)

(assert (=> d!1270066 (= (isEmpty!28109 lt!1537978) (not ((_ is Some!10292) lt!1537978)))))

(assert (=> d!1269972 d!1270066))

(declare-fun d!1270068 () Bool)

(declare-fun res!1770342 () Bool)

(declare-fun e!2687423 () Bool)

(assert (=> d!1270068 (=> res!1770342 e!2687423)))

(assert (=> d!1270068 (= res!1770342 (not ((_ is Cons!48357) call!299140)))))

(assert (=> d!1270068 (= (noDuplicateKeys!259 call!299140) e!2687423)))

(declare-fun b!4319747 () Bool)

(declare-fun e!2687424 () Bool)

(assert (=> b!4319747 (= e!2687423 e!2687424)))

(declare-fun res!1770343 () Bool)

(assert (=> b!4319747 (=> (not res!1770343) (not e!2687424))))

(assert (=> b!4319747 (= res!1770343 (not (containsKey!393 (t!355350 call!299140) (_1!26845 (h!53814 call!299140)))))))

(declare-fun b!4319748 () Bool)

(assert (=> b!4319748 (= e!2687424 (noDuplicateKeys!259 (t!355350 call!299140)))))

(assert (= (and d!1270068 (not res!1770342)) b!4319747))

(assert (= (and b!4319747 res!1770343) b!4319748))

(declare-fun m!4913357 () Bool)

(assert (=> b!4319747 m!4913357))

(declare-fun m!4913359 () Bool)

(assert (=> b!4319748 m!4913359))

(assert (=> d!1269972 d!1270068))

(assert (=> d!1269944 d!1269930))

(assert (=> d!1269944 d!1270062))

(declare-fun bs!606225 () Bool)

(declare-fun d!1270070 () Bool)

(assert (= bs!606225 (and d!1270070 b!4319654)))

(declare-fun lambda!133718 () Int)

(assert (=> bs!606225 (not (= lambda!133718 lambda!133705))))

(declare-fun bs!606226 () Bool)

(assert (= bs!606226 (and d!1270070 d!1269870)))

(assert (=> bs!606226 (= (= (_1!26846 (h!53815 (toList!2537 lt!1537605))) lt!1537608) (= lambda!133718 lambda!133660))))

(declare-fun bs!606227 () Bool)

(assert (= bs!606227 (and d!1270070 d!1269872)))

(assert (=> bs!606227 (= (= (_1!26846 (h!53815 (toList!2537 lt!1537605))) lt!1537608) (= lambda!133718 lambda!133661))))

(declare-fun bs!606228 () Bool)

(assert (= bs!606228 (and d!1270070 d!1270028)))

(assert (=> bs!606228 (not (= lambda!133718 lambda!133708))))

(declare-fun bs!606229 () Bool)

(assert (= bs!606229 (and d!1270070 b!4319652)))

(assert (=> bs!606229 (not (= lambda!133718 lambda!133706))))

(declare-fun bs!606230 () Bool)

(assert (= bs!606230 (and d!1270070 d!1269876)))

(assert (=> bs!606230 (= (= (_1!26846 (h!53815 (toList!2537 lt!1537605))) lt!1537608) (= lambda!133718 lambda!133662))))

(assert (=> bs!606229 (not (= lambda!133718 lambda!133707))))

(assert (=> d!1270070 true))

(assert (=> d!1270070 true))

(assert (=> d!1270070 (= (allKeysSameHash!235 (_2!26846 (h!53815 (toList!2537 lt!1537605))) (_1!26846 (h!53815 (toList!2537 lt!1537605))) (hashF!6889 thiss!42308)) (forall!8801 (_2!26846 (h!53815 (toList!2537 lt!1537605))) lambda!133718))))

(declare-fun bs!606231 () Bool)

(assert (= bs!606231 d!1270070))

(declare-fun m!4913361 () Bool)

(assert (=> bs!606231 m!4913361))

(assert (=> bs!606189 d!1270070))

(declare-fun d!1270072 () Bool)

(declare-fun res!1770344 () Bool)

(declare-fun e!2687425 () Bool)

(assert (=> d!1270072 (=> (not res!1770344) (not e!2687425))))

(assert (=> d!1270072 (= res!1770344 (simpleValid!8 (_2!26848 lt!1537809)))))

(assert (=> d!1270072 (= (valid!3754 (_2!26848 lt!1537809)) e!2687425)))

(declare-fun b!4319749 () Bool)

(declare-fun res!1770345 () Bool)

(assert (=> b!4319749 (=> (not res!1770345) (not e!2687425))))

(assert (=> b!4319749 (= res!1770345 (= (arrayCountValidKeys!0 (_keys!5043 (_2!26848 lt!1537809)) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (_2!26848 lt!1537809)))) (_size!9529 (_2!26848 lt!1537809))))))

(declare-fun b!4319750 () Bool)

(declare-fun res!1770346 () Bool)

(assert (=> b!4319750 (=> (not res!1770346) (not e!2687425))))

(assert (=> b!4319750 (= res!1770346 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5043 (_2!26848 lt!1537809)) (mask!13343 (_2!26848 lt!1537809))))))

(declare-fun b!4319751 () Bool)

(assert (=> b!4319751 (= e!2687425 (arrayNoDuplicates!0 (_keys!5043 (_2!26848 lt!1537809)) #b00000000000000000000000000000000 Nil!48360))))

(assert (= (and d!1270072 res!1770344) b!4319749))

(assert (= (and b!4319749 res!1770345) b!4319750))

(assert (= (and b!4319750 res!1770346) b!4319751))

(declare-fun m!4913363 () Bool)

(assert (=> d!1270072 m!4913363))

(declare-fun m!4913365 () Bool)

(assert (=> b!4319749 m!4913365))

(declare-fun m!4913367 () Bool)

(assert (=> b!4319750 m!4913367))

(declare-fun m!4913369 () Bool)

(assert (=> b!4319751 m!4913369))

(assert (=> d!1269896 d!1270072))

(declare-fun d!1270074 () Bool)

(declare-fun res!1770347 () Bool)

(declare-fun e!2687426 () Bool)

(assert (=> d!1270074 (=> (not res!1770347) (not e!2687426))))

(assert (=> d!1270074 (= res!1770347 (simpleValid!8 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270074 (= (valid!3754 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) e!2687426)))

(declare-fun b!4319752 () Bool)

(declare-fun res!1770348 () Bool)

(assert (=> b!4319752 (=> (not res!1770348) (not e!2687426))))

(assert (=> b!4319752 (= res!1770348 (= (arrayCountValidKeys!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319753 () Bool)

(declare-fun res!1770349 () Bool)

(assert (=> b!4319753 (=> (not res!1770349) (not e!2687426))))

(assert (=> b!4319753 (= res!1770349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319754 () Bool)

(assert (=> b!4319754 (= e!2687426 (arrayNoDuplicates!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 Nil!48360))))

(assert (= (and d!1270074 res!1770347) b!4319752))

(assert (= (and b!4319752 res!1770348) b!4319753))

(assert (= (and b!4319753 res!1770349) b!4319754))

(declare-fun m!4913371 () Bool)

(assert (=> d!1270074 m!4913371))

(declare-fun m!4913373 () Bool)

(assert (=> b!4319752 m!4913373))

(declare-fun m!4913375 () Bool)

(assert (=> b!4319753 m!4913375))

(declare-fun m!4913377 () Bool)

(assert (=> b!4319754 m!4913377))

(assert (=> d!1269896 d!1270074))

(declare-fun lt!1538110 () Bool)

(declare-fun d!1270076 () Bool)

(assert (=> d!1270076 (= lt!1538110 (select (content!7567 (t!355351 lt!1537669)) (tuple2!47123 lt!1537672 lt!1537673)))))

(declare-fun e!2687428 () Bool)

(assert (=> d!1270076 (= lt!1538110 e!2687428)))

(declare-fun res!1770351 () Bool)

(assert (=> d!1270076 (=> (not res!1770351) (not e!2687428))))

(assert (=> d!1270076 (= res!1770351 ((_ is Cons!48358) (t!355351 lt!1537669)))))

(assert (=> d!1270076 (= (contains!10398 (t!355351 lt!1537669) (tuple2!47123 lt!1537672 lt!1537673)) lt!1538110)))

(declare-fun b!4319755 () Bool)

(declare-fun e!2687427 () Bool)

(assert (=> b!4319755 (= e!2687428 e!2687427)))

(declare-fun res!1770350 () Bool)

(assert (=> b!4319755 (=> res!1770350 e!2687427)))

(assert (=> b!4319755 (= res!1770350 (= (h!53815 (t!355351 lt!1537669)) (tuple2!47123 lt!1537672 lt!1537673)))))

(declare-fun b!4319756 () Bool)

(assert (=> b!4319756 (= e!2687427 (contains!10398 (t!355351 (t!355351 lt!1537669)) (tuple2!47123 lt!1537672 lt!1537673)))))

(assert (= (and d!1270076 res!1770351) b!4319755))

(assert (= (and b!4319755 (not res!1770350)) b!4319756))

(declare-fun m!4913379 () Bool)

(assert (=> d!1270076 m!4913379))

(declare-fun m!4913381 () Bool)

(assert (=> d!1270076 m!4913381))

(declare-fun m!4913383 () Bool)

(assert (=> b!4319756 m!4913383))

(assert (=> b!4319560 d!1270076))

(declare-fun d!1270078 () Bool)

(declare-fun c!734594 () Bool)

(assert (=> d!1270078 (= c!734594 ((_ is Nil!48358) lt!1537669))))

(declare-fun e!2687431 () (InoxSet tuple2!47122))

(assert (=> d!1270078 (= (content!7567 lt!1537669) e!2687431)))

(declare-fun b!4319761 () Bool)

(assert (=> b!4319761 (= e!2687431 ((as const (Array tuple2!47122 Bool)) false))))

(declare-fun b!4319762 () Bool)

(assert (=> b!4319762 (= e!2687431 ((_ map or) (store ((as const (Array tuple2!47122 Bool)) false) (h!53815 lt!1537669) true) (content!7567 (t!355351 lt!1537669))))))

(assert (= (and d!1270078 c!734594) b!4319761))

(assert (= (and d!1270078 (not c!734594)) b!4319762))

(declare-fun m!4913385 () Bool)

(assert (=> b!4319762 m!4913385))

(assert (=> b!4319762 m!4913379))

(assert (=> d!1269948 d!1270078))

(assert (=> bs!606184 d!1270070))

(declare-fun d!1270080 () Bool)

(declare-fun res!1770356 () Bool)

(declare-fun e!2687436 () Bool)

(assert (=> d!1270080 (=> res!1770356 e!2687436)))

(assert (=> d!1270080 (= res!1770356 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000) lt!1537608))))

(assert (=> d!1270080 (= (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000) e!2687436)))

(declare-fun b!4319767 () Bool)

(declare-fun e!2687437 () Bool)

(assert (=> b!4319767 (= e!2687436 e!2687437)))

(declare-fun res!1770357 () Bool)

(assert (=> b!4319767 (=> (not res!1770357) (not e!2687437))))

(assert (=> b!4319767 (= res!1770357 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319768 () Bool)

(assert (=> b!4319768 (= e!2687437 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270080 (not res!1770356)) b!4319767))

(assert (= (and b!4319767 res!1770357) b!4319768))

(assert (=> d!1270080 m!4913301))

(declare-fun m!4913387 () Bool)

(assert (=> b!4319768 m!4913387))

(assert (=> b!4319548 d!1270080))

(declare-fun d!1270082 () Bool)

(assert (=> d!1270082 (= (invariantList!598 (toList!2538 lt!1537732)) (noDuplicatedKeys!102 (toList!2538 lt!1537732)))))

(declare-fun bs!606232 () Bool)

(assert (= bs!606232 d!1270082))

(declare-fun m!4913389 () Bool)

(assert (=> bs!606232 m!4913389))

(assert (=> d!1269890 d!1270082))

(declare-fun d!1270084 () Bool)

(declare-fun res!1770358 () Bool)

(declare-fun e!2687438 () Bool)

(assert (=> d!1270084 (=> res!1770358 e!2687438)))

(assert (=> d!1270084 (= res!1770358 ((_ is Nil!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270084 (= (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133672) e!2687438)))

(declare-fun b!4319769 () Bool)

(declare-fun e!2687439 () Bool)

(assert (=> b!4319769 (= e!2687438 e!2687439)))

(declare-fun res!1770359 () Bool)

(assert (=> b!4319769 (=> (not res!1770359) (not e!2687439))))

(assert (=> b!4319769 (= res!1770359 (dynLambda!20499 lambda!133672 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319770 () Bool)

(assert (=> b!4319770 (= e!2687439 (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133672))))

(assert (= (and d!1270084 (not res!1770358)) b!4319769))

(assert (= (and b!4319769 res!1770359) b!4319770))

(declare-fun b_lambda!127123 () Bool)

(assert (=> (not b_lambda!127123) (not b!4319769)))

(declare-fun m!4913391 () Bool)

(assert (=> b!4319769 m!4913391))

(declare-fun m!4913393 () Bool)

(assert (=> b!4319770 m!4913393))

(assert (=> d!1269890 d!1270084))

(declare-fun d!1270086 () Bool)

(declare-fun e!2687440 () Bool)

(assert (=> d!1270086 e!2687440))

(declare-fun res!1770360 () Bool)

(assert (=> d!1270086 (=> res!1770360 e!2687440)))

(declare-fun lt!1538112 () Bool)

(assert (=> d!1270086 (= res!1770360 (not lt!1538112))))

(declare-fun lt!1538111 () Bool)

(assert (=> d!1270086 (= lt!1538112 lt!1538111)))

(declare-fun lt!1538114 () Unit!67649)

(declare-fun e!2687441 () Unit!67649)

(assert (=> d!1270086 (= lt!1538114 e!2687441)))

(declare-fun c!734595 () Bool)

(assert (=> d!1270086 (= c!734595 lt!1538111)))

(assert (=> d!1270086 (= lt!1538111 (containsKey!394 (toList!2537 call!299212) (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803)))))))

(assert (=> d!1270086 (= (contains!10396 call!299212 (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803)))) lt!1538112)))

(declare-fun b!4319771 () Bool)

(declare-fun lt!1538113 () Unit!67649)

(assert (=> b!4319771 (= e!2687441 lt!1538113)))

(assert (=> b!4319771 (= lt!1538113 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299212) (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803)))))))

(assert (=> b!4319771 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299212) (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803)))))))

(declare-fun b!4319772 () Bool)

(declare-fun Unit!67681 () Unit!67649)

(assert (=> b!4319772 (= e!2687441 Unit!67681)))

(declare-fun b!4319773 () Bool)

(assert (=> b!4319773 (= e!2687440 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299212) (ite c!734485 lt!1537608 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803))))))))

(assert (= (and d!1270086 c!734595) b!4319771))

(assert (= (and d!1270086 (not c!734595)) b!4319772))

(assert (= (and d!1270086 (not res!1770360)) b!4319773))

(declare-fun m!4913395 () Bool)

(assert (=> d!1270086 m!4913395))

(declare-fun m!4913397 () Bool)

(assert (=> b!4319771 m!4913397))

(declare-fun m!4913399 () Bool)

(assert (=> b!4319771 m!4913399))

(assert (=> b!4319771 m!4913399))

(declare-fun m!4913401 () Bool)

(assert (=> b!4319771 m!4913401))

(assert (=> b!4319773 m!4913399))

(assert (=> b!4319773 m!4913399))

(assert (=> b!4319773 m!4913401))

(assert (=> bm!299208 d!1270086))

(declare-fun b!4319786 () Bool)

(declare-fun e!2687448 () SeekEntryResult!20)

(declare-fun lt!1538122 () SeekEntryResult!20)

(assert (=> b!4319786 (= e!2687448 (MissingZero!20 (index!1462 lt!1538122)))))

(declare-fun b!4319787 () Bool)

(declare-fun e!2687449 () SeekEntryResult!20)

(assert (=> b!4319787 (= e!2687449 (Found!20 (index!1462 lt!1538122)))))

(declare-fun b!4319789 () Bool)

(declare-fun c!734602 () Bool)

(declare-fun lt!1538121 () (_ BitVec 64))

(assert (=> b!4319789 (= c!734602 (= lt!1538121 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4319789 (= e!2687449 e!2687448)))

(declare-fun b!4319790 () Bool)

(declare-fun e!2687450 () SeekEntryResult!20)

(assert (=> b!4319790 (= e!2687450 e!2687449)))

(assert (=> b!4319790 (= lt!1538121 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1462 lt!1538122)))))

(declare-fun c!734604 () Bool)

(assert (=> b!4319790 (= c!734604 (= lt!1538121 lt!1537608))))

(declare-fun b!4319791 () Bool)

(assert (=> b!4319791 (= e!2687450 Undefined!20)))

(declare-fun b!4319788 () Bool)

(assert (=> b!4319788 (= e!2687448 (seekKeyOrZeroReturnVacant!0 (x!749645 lt!1538122) (index!1462 lt!1538122) (index!1462 lt!1538122) lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun d!1270088 () Bool)

(declare-fun lt!1538123 () SeekEntryResult!20)

(assert (=> d!1270088 (and (or ((_ is Undefined!20) lt!1538123) (not ((_ is Found!20) lt!1538123)) (and (bvsge (index!1459 lt!1538123) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1538123) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))) (or ((_ is Undefined!20) lt!1538123) ((_ is Found!20) lt!1538123) (not ((_ is MissingZero!20) lt!1538123)) (and (bvsge (index!1460 lt!1538123) #b00000000000000000000000000000000) (bvslt (index!1460 lt!1538123) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))) (or ((_ is Undefined!20) lt!1538123) ((_ is Found!20) lt!1538123) ((_ is MissingZero!20) lt!1538123) (not ((_ is MissingVacant!20) lt!1538123)) (and (bvsge (index!1461 lt!1538123) #b00000000000000000000000000000000) (bvslt (index!1461 lt!1538123) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))) (or ((_ is Undefined!20) lt!1538123) (ite ((_ is Found!20) lt!1538123) (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1538123)) lt!1537608) (ite ((_ is MissingZero!20) lt!1538123) (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1460 lt!1538123)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!20) lt!1538123) (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1461 lt!1538123)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!1270088 (= lt!1538123 e!2687450)))

(declare-fun c!734603 () Bool)

(assert (=> d!1270088 (= c!734603 (and ((_ is Intermediate!20) lt!1538122) (undefined!101 lt!1538122)))))

(assert (=> d!1270088 (= lt!1538122 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!1537608 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270088 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270088 (= (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538123)))

(assert (= (and d!1270088 c!734603) b!4319791))

(assert (= (and d!1270088 (not c!734603)) b!4319790))

(assert (= (and b!4319790 c!734604) b!4319787))

(assert (= (and b!4319790 (not c!734604)) b!4319789))

(assert (= (and b!4319789 c!734602) b!4319786))

(assert (= (and b!4319789 (not c!734602)) b!4319788))

(declare-fun m!4913403 () Bool)

(assert (=> b!4319790 m!4913403))

(declare-fun m!4913405 () Bool)

(assert (=> b!4319788 m!4913405))

(declare-fun m!4913407 () Bool)

(assert (=> d!1270088 m!4913407))

(declare-fun m!4913409 () Bool)

(assert (=> d!1270088 m!4913409))

(declare-fun m!4913411 () Bool)

(assert (=> d!1270088 m!4913411))

(assert (=> d!1270088 m!4913201))

(assert (=> d!1270088 m!4913407))

(declare-fun m!4913413 () Bool)

(assert (=> d!1270088 m!4913413))

(declare-fun m!4913415 () Bool)

(assert (=> d!1270088 m!4913415))

(assert (=> bm!299200 d!1270088))

(declare-fun d!1270090 () Bool)

(assert (=> d!1270090 (= (isDefined!7594 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143)) (not (isEmpty!28110 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))))

(declare-fun bs!606233 () Bool)

(assert (= bs!606233 d!1270090))

(assert (=> bs!606233 m!4912911))

(declare-fun m!4913417 () Bool)

(assert (=> bs!606233 m!4913417))

(assert (=> b!4319417 d!1270090))

(declare-fun b!4319794 () Bool)

(declare-fun e!2687452 () Option!10294)

(assert (=> b!4319794 (= e!2687452 (getValueByKey!293 (t!355351 (toList!2537 (ite c!734429 lt!1537676 call!299142))) call!299143))))

(declare-fun b!4319792 () Bool)

(declare-fun e!2687451 () Option!10294)

(assert (=> b!4319792 (= e!2687451 (Some!10293 (_2!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142))))))))

(declare-fun b!4319795 () Bool)

(assert (=> b!4319795 (= e!2687452 None!10293)))

(declare-fun c!734605 () Bool)

(declare-fun d!1270092 () Bool)

(assert (=> d!1270092 (= c!734605 (and ((_ is Cons!48358) (toList!2537 (ite c!734429 lt!1537676 call!299142))) (= (_1!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142)))) call!299143)))))

(assert (=> d!1270092 (= (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143) e!2687451)))

(declare-fun b!4319793 () Bool)

(assert (=> b!4319793 (= e!2687451 e!2687452)))

(declare-fun c!734606 () Bool)

(assert (=> b!4319793 (= c!734606 (and ((_ is Cons!48358) (toList!2537 (ite c!734429 lt!1537676 call!299142))) (not (= (_1!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142)))) call!299143))))))

(assert (= (and d!1270092 c!734605) b!4319792))

(assert (= (and d!1270092 (not c!734605)) b!4319793))

(assert (= (and b!4319793 c!734606) b!4319794))

(assert (= (and b!4319793 (not c!734606)) b!4319795))

(declare-fun m!4913419 () Bool)

(assert (=> b!4319794 m!4913419))

(assert (=> b!4319417 d!1270092))

(assert (=> d!1269886 d!1269882))

(assert (=> d!1269886 d!1269884))

(declare-fun d!1270094 () Bool)

(assert (=> d!1270094 (contains!10399 (extractMap!365 (toList!2537 lt!1537679)) key!2048)))

(assert (=> d!1270094 true))

(declare-fun _$6!601 () Unit!67649)

(assert (=> d!1270094 (= (choose!26367 lt!1537679 key!2048 (hashF!6889 thiss!42308)) _$6!601)))

(declare-fun bs!606234 () Bool)

(assert (= bs!606234 d!1270094))

(assert (=> bs!606234 m!4912725))

(assert (=> bs!606234 m!4912725))

(assert (=> bs!606234 m!4912727))

(assert (=> d!1269886 d!1270094))

(declare-fun d!1270096 () Bool)

(declare-fun res!1770361 () Bool)

(declare-fun e!2687453 () Bool)

(assert (=> d!1270096 (=> res!1770361 e!2687453)))

(assert (=> d!1270096 (= res!1770361 ((_ is Nil!48358) (toList!2537 lt!1537679)))))

(assert (=> d!1270096 (= (forall!8800 (toList!2537 lt!1537679) lambda!133671) e!2687453)))

(declare-fun b!4319796 () Bool)

(declare-fun e!2687454 () Bool)

(assert (=> b!4319796 (= e!2687453 e!2687454)))

(declare-fun res!1770362 () Bool)

(assert (=> b!4319796 (=> (not res!1770362) (not e!2687454))))

(assert (=> b!4319796 (= res!1770362 (dynLambda!20499 lambda!133671 (h!53815 (toList!2537 lt!1537679))))))

(declare-fun b!4319797 () Bool)

(assert (=> b!4319797 (= e!2687454 (forall!8800 (t!355351 (toList!2537 lt!1537679)) lambda!133671))))

(assert (= (and d!1270096 (not res!1770361)) b!4319796))

(assert (= (and b!4319796 res!1770362) b!4319797))

(declare-fun b_lambda!127125 () Bool)

(assert (=> (not b_lambda!127125) (not b!4319796)))

(declare-fun m!4913421 () Bool)

(assert (=> b!4319796 m!4913421))

(declare-fun m!4913423 () Bool)

(assert (=> b!4319797 m!4913423))

(assert (=> d!1269886 d!1270096))

(declare-fun d!1270098 () Bool)

(assert (=> d!1270098 (= (+!322 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537792 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538126 () Unit!67649)

(declare-fun choose!26377 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 List!48481 Int) Unit!67649)

(assert (=> d!1270098 (= lt!1538126 (choose!26377 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537792 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270098 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270098 (= (lemmaChangeLongMinValueKeyThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537792 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538126)))

(declare-fun bs!606235 () Bool)

(assert (= bs!606235 d!1270098))

(declare-fun m!4913425 () Bool)

(assert (=> bs!606235 m!4913425))

(assert (=> bs!606235 m!4913201))

(declare-fun m!4913427 () Bool)

(assert (=> bs!606235 m!4913427))

(assert (=> bs!606235 m!4913203))

(assert (=> bs!606235 m!4913203))

(declare-fun m!4913429 () Bool)

(assert (=> bs!606235 m!4913429))

(assert (=> b!4319330 d!1270098))

(declare-fun d!1270100 () Bool)

(assert (=> d!1270100 (= (get!15667 lt!1537924) (v!42708 lt!1537924))))

(assert (=> b!4319491 d!1270100))

(declare-fun d!1270102 () Bool)

(declare-fun res!1770363 () Bool)

(declare-fun e!2687455 () Bool)

(assert (=> d!1270102 (=> res!1770363 e!2687455)))

(assert (=> d!1270102 (= res!1770363 (and ((_ is Cons!48357) call!299140) (= (_1!26845 (h!53814 call!299140)) key!2048)))))

(assert (=> d!1270102 (= (containsKey!393 call!299140 key!2048) e!2687455)))

(declare-fun b!4319798 () Bool)

(declare-fun e!2687456 () Bool)

(assert (=> b!4319798 (= e!2687455 e!2687456)))

(declare-fun res!1770364 () Bool)

(assert (=> b!4319798 (=> (not res!1770364) (not e!2687456))))

(assert (=> b!4319798 (= res!1770364 ((_ is Cons!48357) call!299140))))

(declare-fun b!4319799 () Bool)

(assert (=> b!4319799 (= e!2687456 (containsKey!393 (t!355350 call!299140) key!2048))))

(assert (= (and d!1270102 (not res!1770363)) b!4319798))

(assert (= (and b!4319798 res!1770364) b!4319799))

(declare-fun m!4913431 () Bool)

(assert (=> b!4319799 m!4913431))

(assert (=> b!4319591 d!1270102))

(declare-fun d!1270104 () Bool)

(declare-fun e!2687457 () Bool)

(assert (=> d!1270104 e!2687457))

(declare-fun res!1770365 () Bool)

(assert (=> d!1270104 (=> (not res!1770365) (not e!2687457))))

(declare-fun lt!1538128 () ListLongMap!1153)

(assert (=> d!1270104 (= res!1770365 (contains!10396 lt!1538128 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun lt!1538130 () List!48482)

(assert (=> d!1270104 (= lt!1538128 (ListLongMap!1154 lt!1538130))))

(declare-fun lt!1538129 () Unit!67649)

(declare-fun lt!1538127 () Unit!67649)

(assert (=> d!1270104 (= lt!1538129 lt!1538127)))

(assert (=> d!1270104 (= (getValueByKey!293 lt!1538130 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) (Some!10293 (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> d!1270104 (= lt!1538127 (lemmaContainsTupThenGetReturnValue!93 lt!1538130 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> d!1270104 (= lt!1538130 (insertStrictlySorted!53 (toList!2537 call!299215) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> d!1270104 (= (+!322 call!299215 (tuple2!47123 lt!1537608 lt!1537611)) lt!1538128)))

(declare-fun b!4319800 () Bool)

(declare-fun res!1770366 () Bool)

(assert (=> b!4319800 (=> (not res!1770366) (not e!2687457))))

(assert (=> b!4319800 (= res!1770366 (= (getValueByKey!293 (toList!2537 lt!1538128) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) (Some!10293 (_2!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun b!4319801 () Bool)

(assert (=> b!4319801 (= e!2687457 (contains!10398 (toList!2537 lt!1538128) (tuple2!47123 lt!1537608 lt!1537611)))))

(assert (= (and d!1270104 res!1770365) b!4319800))

(assert (= (and b!4319800 res!1770366) b!4319801))

(declare-fun m!4913433 () Bool)

(assert (=> d!1270104 m!4913433))

(declare-fun m!4913435 () Bool)

(assert (=> d!1270104 m!4913435))

(declare-fun m!4913437 () Bool)

(assert (=> d!1270104 m!4913437))

(declare-fun m!4913439 () Bool)

(assert (=> d!1270104 m!4913439))

(declare-fun m!4913441 () Bool)

(assert (=> b!4319800 m!4913441))

(declare-fun m!4913443 () Bool)

(assert (=> b!4319801 m!4913443))

(assert (=> b!4319356 d!1270104))

(declare-fun b!4319818 () Bool)

(declare-fun e!2687467 () Bool)

(declare-fun e!2687468 () Bool)

(assert (=> b!4319818 (= e!2687467 e!2687468)))

(declare-fun res!1770375 () Bool)

(declare-fun call!299272 () Bool)

(assert (=> b!4319818 (= res!1770375 call!299272)))

(assert (=> b!4319818 (=> (not res!1770375) (not e!2687468))))

(declare-fun d!1270106 () Bool)

(assert (=> d!1270106 e!2687467))

(declare-fun c!734612 () Bool)

(declare-fun lt!1538135 () SeekEntryResult!20)

(assert (=> d!1270106 (= c!734612 ((_ is MissingZero!20) lt!1538135))))

(assert (=> d!1270106 (= lt!1538135 (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538136 () Unit!67649)

(declare-fun choose!26378 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> d!1270106 (= lt!1538136 (choose!26378 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270106 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270106 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538136)))

(declare-fun b!4319819 () Bool)

(declare-fun res!1770378 () Bool)

(declare-fun e!2687466 () Bool)

(assert (=> b!4319819 (=> (not res!1770378) (not e!2687466))))

(assert (=> b!4319819 (= res!1770378 call!299272)))

(declare-fun e!2687469 () Bool)

(assert (=> b!4319819 (= e!2687469 e!2687466)))

(declare-fun bm!299266 () Bool)

(declare-fun call!299271 () Bool)

(assert (=> bm!299266 (= call!299271 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun b!4319820 () Bool)

(assert (=> b!4319820 (= e!2687466 (not call!299271))))

(declare-fun b!4319821 () Bool)

(assert (=> b!4319821 (= e!2687469 ((_ is Undefined!20) lt!1538135))))

(declare-fun bm!299267 () Bool)

(assert (=> bm!299267 (= call!299272 (inRange!0 (ite c!734612 (index!1460 lt!1538135) (index!1461 lt!1538135)) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4319822 () Bool)

(assert (=> b!4319822 (and (bvsge (index!1460 lt!1538135) #b00000000000000000000000000000000) (bvslt (index!1460 lt!1538135) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun res!1770376 () Bool)

(assert (=> b!4319822 (= res!1770376 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1460 lt!1538135)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4319822 (=> (not res!1770376) (not e!2687468))))

(declare-fun b!4319823 () Bool)

(assert (=> b!4319823 (= e!2687468 (not call!299271))))

(declare-fun b!4319824 () Bool)

(declare-fun res!1770377 () Bool)

(assert (=> b!4319824 (=> (not res!1770377) (not e!2687466))))

(assert (=> b!4319824 (= res!1770377 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1461 lt!1538135)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4319824 (and (bvsge (index!1461 lt!1538135) #b00000000000000000000000000000000) (bvslt (index!1461 lt!1538135) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4319825 () Bool)

(assert (=> b!4319825 (= e!2687467 e!2687469)))

(declare-fun c!734611 () Bool)

(assert (=> b!4319825 (= c!734611 ((_ is MissingVacant!20) lt!1538135))))

(assert (= (and d!1270106 c!734612) b!4319818))

(assert (= (and d!1270106 (not c!734612)) b!4319825))

(assert (= (and b!4319818 res!1770375) b!4319822))

(assert (= (and b!4319822 res!1770376) b!4319823))

(assert (= (and b!4319825 c!734611) b!4319819))

(assert (= (and b!4319825 (not c!734611)) b!4319821))

(assert (= (and b!4319819 res!1770378) b!4319824))

(assert (= (and b!4319824 res!1770377) b!4319820))

(assert (= (or b!4319823 b!4319820) bm!299266))

(assert (= (or b!4319818 b!4319819) bm!299267))

(declare-fun m!4913445 () Bool)

(assert (=> bm!299267 m!4913445))

(declare-fun m!4913447 () Bool)

(assert (=> b!4319822 m!4913447))

(assert (=> d!1270106 m!4912855))

(declare-fun m!4913449 () Bool)

(assert (=> d!1270106 m!4913449))

(assert (=> d!1270106 m!4913201))

(declare-fun m!4913451 () Bool)

(assert (=> b!4319824 m!4913451))

(assert (=> bm!299266 m!4912869))

(assert (=> bm!299194 d!1270106))

(declare-fun bs!606236 () Bool)

(declare-fun b!4319829 () Bool)

(assert (= bs!606236 (and b!4319829 b!4319654)))

(declare-fun lambda!133719 () Int)

(assert (=> bs!606236 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133719 lambda!133705))))

(declare-fun bs!606237 () Bool)

(assert (= bs!606237 (and b!4319829 d!1269870)))

(assert (=> bs!606237 (not (= lambda!133719 lambda!133660))))

(declare-fun bs!606238 () Bool)

(assert (= bs!606238 (and b!4319829 d!1269872)))

(assert (=> bs!606238 (not (= lambda!133719 lambda!133661))))

(declare-fun bs!606239 () Bool)

(assert (= bs!606239 (and b!4319829 d!1270028)))

(assert (=> bs!606239 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538063) (= lambda!133719 lambda!133708))))

(declare-fun bs!606240 () Bool)

(assert (= bs!606240 (and b!4319829 b!4319652)))

(assert (=> bs!606240 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133719 lambda!133706))))

(declare-fun bs!606241 () Bool)

(assert (= bs!606241 (and b!4319829 d!1270070)))

(assert (=> bs!606241 (not (= lambda!133719 lambda!133718))))

(declare-fun bs!606242 () Bool)

(assert (= bs!606242 (and b!4319829 d!1269876)))

(assert (=> bs!606242 (not (= lambda!133719 lambda!133662))))

(assert (=> bs!606240 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538047) (= lambda!133719 lambda!133707))))

(assert (=> b!4319829 true))

(declare-fun bs!606243 () Bool)

(declare-fun b!4319827 () Bool)

(assert (= bs!606243 (and b!4319827 b!4319829)))

(declare-fun lambda!133720 () Int)

(assert (=> bs!606243 (= lambda!133720 lambda!133719)))

(declare-fun bs!606244 () Bool)

(assert (= bs!606244 (and b!4319827 b!4319654)))

(assert (=> bs!606244 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133720 lambda!133705))))

(declare-fun bs!606245 () Bool)

(assert (= bs!606245 (and b!4319827 d!1269870)))

(assert (=> bs!606245 (not (= lambda!133720 lambda!133660))))

(declare-fun bs!606246 () Bool)

(assert (= bs!606246 (and b!4319827 d!1269872)))

(assert (=> bs!606246 (not (= lambda!133720 lambda!133661))))

(declare-fun bs!606247 () Bool)

(assert (= bs!606247 (and b!4319827 d!1270028)))

(assert (=> bs!606247 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538063) (= lambda!133720 lambda!133708))))

(declare-fun bs!606248 () Bool)

(assert (= bs!606248 (and b!4319827 b!4319652)))

(assert (=> bs!606248 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133720 lambda!133706))))

(declare-fun bs!606249 () Bool)

(assert (= bs!606249 (and b!4319827 d!1270070)))

(assert (=> bs!606249 (not (= lambda!133720 lambda!133718))))

(declare-fun bs!606250 () Bool)

(assert (= bs!606250 (and b!4319827 d!1269876)))

(assert (=> bs!606250 (not (= lambda!133720 lambda!133662))))

(assert (=> bs!606248 (= (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538047) (= lambda!133720 lambda!133707))))

(assert (=> b!4319827 true))

(declare-fun lt!1538139 () ListMap!1815)

(declare-fun lambda!133721 () Int)

(assert (=> b!4319827 (= (= lt!1538139 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133721 lambda!133720))))

(assert (=> bs!606243 (= (= lt!1538139 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133721 lambda!133719))))

(assert (=> bs!606244 (= (= lt!1538139 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133721 lambda!133705))))

(assert (=> bs!606245 (not (= lambda!133721 lambda!133660))))

(assert (=> bs!606246 (not (= lambda!133721 lambda!133661))))

(assert (=> bs!606247 (= (= lt!1538139 lt!1538063) (= lambda!133721 lambda!133708))))

(assert (=> bs!606248 (= (= lt!1538139 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133721 lambda!133706))))

(assert (=> bs!606249 (not (= lambda!133721 lambda!133718))))

(assert (=> bs!606250 (not (= lambda!133721 lambda!133662))))

(assert (=> bs!606248 (= (= lt!1538139 lt!1538047) (= lambda!133721 lambda!133707))))

(assert (=> b!4319827 true))

(declare-fun bs!606251 () Bool)

(declare-fun d!1270108 () Bool)

(assert (= bs!606251 (and d!1270108 b!4319827)))

(declare-fun lambda!133722 () Int)

(declare-fun lt!1538155 () ListMap!1815)

(assert (=> bs!606251 (= (= lt!1538155 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133722 lambda!133720))))

(declare-fun bs!606252 () Bool)

(assert (= bs!606252 (and d!1270108 b!4319829)))

(assert (=> bs!606252 (= (= lt!1538155 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133722 lambda!133719))))

(declare-fun bs!606253 () Bool)

(assert (= bs!606253 (and d!1270108 b!4319654)))

(assert (=> bs!606253 (= (= lt!1538155 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133722 lambda!133705))))

(declare-fun bs!606254 () Bool)

(assert (= bs!606254 (and d!1270108 d!1269870)))

(assert (=> bs!606254 (not (= lambda!133722 lambda!133660))))

(declare-fun bs!606255 () Bool)

(assert (= bs!606255 (and d!1270108 d!1269872)))

(assert (=> bs!606255 (not (= lambda!133722 lambda!133661))))

(declare-fun bs!606256 () Bool)

(assert (= bs!606256 (and d!1270108 d!1270028)))

(assert (=> bs!606256 (= (= lt!1538155 lt!1538063) (= lambda!133722 lambda!133708))))

(declare-fun bs!606257 () Bool)

(assert (= bs!606257 (and d!1270108 b!4319652)))

(assert (=> bs!606257 (= (= lt!1538155 (extractMap!365 (t!355351 (toList!2537 lt!1537679)))) (= lambda!133722 lambda!133706))))

(declare-fun bs!606258 () Bool)

(assert (= bs!606258 (and d!1270108 d!1270070)))

(assert (=> bs!606258 (not (= lambda!133722 lambda!133718))))

(declare-fun bs!606259 () Bool)

(assert (= bs!606259 (and d!1270108 d!1269876)))

(assert (=> bs!606259 (not (= lambda!133722 lambda!133662))))

(assert (=> bs!606257 (= (= lt!1538155 lt!1538047) (= lambda!133722 lambda!133707))))

(assert (=> bs!606251 (= (= lt!1538155 lt!1538139) (= lambda!133722 lambda!133721))))

(assert (=> d!1270108 true))

(declare-fun b!4319826 () Bool)

(declare-fun e!2687471 () Bool)

(assert (=> b!4319826 (= e!2687471 (invariantList!598 (toList!2538 lt!1538155)))))

(declare-fun call!299274 () Bool)

(declare-fun bm!299268 () Bool)

(declare-fun c!734613 () Bool)

(assert (=> bm!299268 (= call!299274 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (ite c!734613 lambda!133719 lambda!133721)))))

(declare-fun e!2687472 () ListMap!1815)

(assert (=> b!4319827 (= e!2687472 lt!1538139)))

(declare-fun lt!1538137 () ListMap!1815)

(assert (=> b!4319827 (= lt!1538137 (+!323 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (=> b!4319827 (= lt!1538139 (addToMapMapFromBucket!50 (t!355350 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (+!323 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun lt!1538150 () Unit!67649)

(declare-fun call!299275 () Unit!67649)

(assert (=> b!4319827 (= lt!1538150 call!299275)))

(assert (=> b!4319827 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lambda!133720)))

(declare-fun lt!1538147 () Unit!67649)

(assert (=> b!4319827 (= lt!1538147 lt!1538150)))

(assert (=> b!4319827 (forall!8801 (toList!2538 lt!1538137) lambda!133721)))

(declare-fun lt!1538143 () Unit!67649)

(declare-fun Unit!67682 () Unit!67649)

(assert (=> b!4319827 (= lt!1538143 Unit!67682)))

(assert (=> b!4319827 (forall!8801 (t!355350 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lambda!133721)))

(declare-fun lt!1538140 () Unit!67649)

(declare-fun Unit!67683 () Unit!67649)

(assert (=> b!4319827 (= lt!1538140 Unit!67683)))

(declare-fun lt!1538154 () Unit!67649)

(declare-fun Unit!67684 () Unit!67649)

(assert (=> b!4319827 (= lt!1538154 Unit!67684)))

(declare-fun lt!1538149 () Unit!67649)

(assert (=> b!4319827 (= lt!1538149 (forallContained!1528 (toList!2538 lt!1538137) lambda!133721 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (=> b!4319827 (contains!10399 lt!1538137 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun lt!1538141 () Unit!67649)

(declare-fun Unit!67685 () Unit!67649)

(assert (=> b!4319827 (= lt!1538141 Unit!67685)))

(assert (=> b!4319827 (contains!10399 lt!1538139 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun lt!1538148 () Unit!67649)

(declare-fun Unit!67686 () Unit!67649)

(assert (=> b!4319827 (= lt!1538148 Unit!67686)))

(assert (=> b!4319827 (forall!8801 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lambda!133721)))

(declare-fun lt!1538145 () Unit!67649)

(declare-fun Unit!67687 () Unit!67649)

(assert (=> b!4319827 (= lt!1538145 Unit!67687)))

(assert (=> b!4319827 (forall!8801 (toList!2538 lt!1538137) lambda!133721)))

(declare-fun lt!1538142 () Unit!67649)

(declare-fun Unit!67688 () Unit!67649)

(assert (=> b!4319827 (= lt!1538142 Unit!67688)))

(declare-fun lt!1538152 () Unit!67649)

(declare-fun Unit!67689 () Unit!67649)

(assert (=> b!4319827 (= lt!1538152 Unit!67689)))

(declare-fun lt!1538138 () Unit!67649)

(assert (=> b!4319827 (= lt!1538138 (addForallContainsKeyThenBeforeAdding!4 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538139 (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (_2!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(assert (=> b!4319827 call!299274))

(declare-fun lt!1538153 () Unit!67649)

(assert (=> b!4319827 (= lt!1538153 lt!1538138)))

(assert (=> b!4319827 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lambda!133721)))

(declare-fun lt!1538144 () Unit!67649)

(declare-fun Unit!67690 () Unit!67649)

(assert (=> b!4319827 (= lt!1538144 Unit!67690)))

(declare-fun res!1770381 () Bool)

(declare-fun call!299273 () Bool)

(assert (=> b!4319827 (= res!1770381 call!299273)))

(declare-fun e!2687470 () Bool)

(assert (=> b!4319827 (=> (not res!1770381) (not e!2687470))))

(assert (=> b!4319827 e!2687470))

(declare-fun lt!1538151 () Unit!67649)

(declare-fun Unit!67691 () Unit!67649)

(assert (=> b!4319827 (= lt!1538151 Unit!67691)))

(declare-fun b!4319828 () Bool)

(declare-fun res!1770379 () Bool)

(assert (=> b!4319828 (=> (not res!1770379) (not e!2687471))))

(assert (=> b!4319828 (= res!1770379 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lambda!133722))))

(assert (=> b!4319829 (= e!2687472 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538156 () Unit!67649)

(assert (=> b!4319829 (= lt!1538156 call!299275)))

(assert (=> b!4319829 call!299274))

(declare-fun lt!1538146 () Unit!67649)

(assert (=> b!4319829 (= lt!1538146 lt!1538156)))

(assert (=> b!4319829 call!299273))

(declare-fun lt!1538157 () Unit!67649)

(declare-fun Unit!67692 () Unit!67649)

(assert (=> b!4319829 (= lt!1538157 Unit!67692)))

(assert (=> d!1270108 e!2687471))

(declare-fun res!1770380 () Bool)

(assert (=> d!1270108 (=> (not res!1770380) (not e!2687471))))

(assert (=> d!1270108 (= res!1770380 (forall!8801 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lambda!133722))))

(assert (=> d!1270108 (= lt!1538155 e!2687472)))

(assert (=> d!1270108 (= c!734613 ((_ is Nil!48357) (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270108 (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270108 (= (addToMapMapFromBucket!50 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538155)))

(declare-fun bm!299269 () Bool)

(assert (=> bm!299269 (= call!299273 (forall!8801 (ite c!734613 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (ite c!734613 lambda!133719 lambda!133721)))))

(declare-fun b!4319830 () Bool)

(assert (=> b!4319830 (= e!2687470 (forall!8801 (toList!2538 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lambda!133721))))

(declare-fun bm!299270 () Bool)

(assert (=> bm!299270 (= call!299275 (lemmaContainsAllItsOwnKeys!4 (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (= (and d!1270108 c!734613) b!4319829))

(assert (= (and d!1270108 (not c!734613)) b!4319827))

(assert (= (and b!4319827 res!1770381) b!4319830))

(assert (= (or b!4319829 b!4319827) bm!299270))

(assert (= (or b!4319829 b!4319827) bm!299269))

(assert (= (or b!4319829 b!4319827) bm!299268))

(assert (= (and d!1270108 res!1770380) b!4319828))

(assert (= (and b!4319828 res!1770379) b!4319826))

(assert (=> bm!299270 m!4912811))

(declare-fun m!4913453 () Bool)

(assert (=> bm!299270 m!4913453))

(declare-fun m!4913455 () Bool)

(assert (=> bm!299269 m!4913455))

(declare-fun m!4913457 () Bool)

(assert (=> d!1270108 m!4913457))

(assert (=> d!1270108 m!4913185))

(declare-fun m!4913459 () Bool)

(assert (=> b!4319826 m!4913459))

(declare-fun m!4913461 () Bool)

(assert (=> b!4319828 m!4913461))

(assert (=> b!4319827 m!4912811))

(declare-fun m!4913463 () Bool)

(assert (=> b!4319827 m!4913463))

(assert (=> b!4319827 m!4912811))

(declare-fun m!4913465 () Bool)

(assert (=> b!4319827 m!4913465))

(declare-fun m!4913467 () Bool)

(assert (=> b!4319827 m!4913467))

(declare-fun m!4913469 () Bool)

(assert (=> b!4319827 m!4913469))

(assert (=> b!4319827 m!4913467))

(declare-fun m!4913471 () Bool)

(assert (=> b!4319827 m!4913471))

(declare-fun m!4913473 () Bool)

(assert (=> b!4319827 m!4913473))

(declare-fun m!4913475 () Bool)

(assert (=> b!4319827 m!4913475))

(declare-fun m!4913477 () Bool)

(assert (=> b!4319827 m!4913477))

(assert (=> b!4319827 m!4913465))

(declare-fun m!4913479 () Bool)

(assert (=> b!4319827 m!4913479))

(declare-fun m!4913481 () Bool)

(assert (=> b!4319827 m!4913481))

(declare-fun m!4913483 () Bool)

(assert (=> b!4319827 m!4913483))

(declare-fun m!4913485 () Bool)

(assert (=> bm!299268 m!4913485))

(assert (=> b!4319830 m!4913475))

(assert (=> b!4319239 d!1270108))

(declare-fun bs!606260 () Bool)

(declare-fun d!1270110 () Bool)

(assert (= bs!606260 (and d!1270110 b!4319146)))

(declare-fun lambda!133723 () Int)

(assert (=> bs!606260 (= lambda!133723 lambda!133654)))

(declare-fun bs!606261 () Bool)

(assert (= bs!606261 (and d!1270110 b!4319081)))

(assert (=> bs!606261 (= lambda!133723 lambda!133648)))

(declare-fun bs!606262 () Bool)

(assert (= bs!606262 (and d!1270110 d!1269886)))

(assert (=> bs!606262 (= lambda!133723 lambda!133671)))

(declare-fun bs!606263 () Bool)

(assert (= bs!606263 (and d!1270110 d!1269976)))

(assert (=> bs!606263 (not (= lambda!133723 lambda!133676))))

(declare-fun bs!606264 () Bool)

(assert (= bs!606264 (and d!1270110 d!1269848)))

(assert (=> bs!606264 (not (= lambda!133723 lambda!133651))))

(declare-fun bs!606265 () Bool)

(assert (= bs!606265 (and d!1270110 d!1269946)))

(assert (=> bs!606265 (= lambda!133723 lambda!133675)))

(declare-fun bs!606266 () Bool)

(assert (= bs!606266 (and d!1270110 d!1269890)))

(assert (=> bs!606266 (= lambda!133723 lambda!133672)))

(declare-fun bs!606267 () Bool)

(assert (= bs!606267 (and d!1270110 d!1270030)))

(assert (=> bs!606267 (= lambda!133723 lambda!133709)))

(declare-fun bs!606268 () Bool)

(assert (= bs!606268 (and d!1270110 d!1269884)))

(assert (=> bs!606268 (= lambda!133723 lambda!133668)))

(declare-fun bs!606269 () Bool)

(assert (= bs!606269 (and d!1270110 d!1269866)))

(assert (=> bs!606269 (not (= lambda!133723 lambda!133657))))

(declare-fun bs!606270 () Bool)

(assert (= bs!606270 (and d!1270110 b!4319188)))

(assert (=> bs!606270 (= lambda!133723 lambda!133665)))

(declare-fun lt!1538158 () ListMap!1815)

(assert (=> d!1270110 (invariantList!598 (toList!2538 lt!1538158))))

(declare-fun e!2687473 () ListMap!1815)

(assert (=> d!1270110 (= lt!1538158 e!2687473)))

(declare-fun c!734614 () Bool)

(assert (=> d!1270110 (= c!734614 ((_ is Cons!48358) (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270110 (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133723)))

(assert (=> d!1270110 (= (extractMap!365 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538158)))

(declare-fun b!4319831 () Bool)

(assert (=> b!4319831 (= e!2687473 (addToMapMapFromBucket!50 (_2!26846 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (extractMap!365 (t!355351 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4319832 () Bool)

(assert (=> b!4319832 (= e!2687473 (ListMap!1816 Nil!48357))))

(assert (= (and d!1270110 c!734614) b!4319831))

(assert (= (and d!1270110 (not c!734614)) b!4319832))

(declare-fun m!4913487 () Bool)

(assert (=> d!1270110 m!4913487))

(declare-fun m!4913489 () Bool)

(assert (=> d!1270110 m!4913489))

(declare-fun m!4913491 () Bool)

(assert (=> b!4319831 m!4913491))

(assert (=> b!4319831 m!4913491))

(declare-fun m!4913493 () Bool)

(assert (=> b!4319831 m!4913493))

(assert (=> b!4319239 d!1270110))

(declare-fun bs!606271 () Bool)

(declare-fun b!4319854 () Bool)

(assert (= bs!606271 (and b!4319854 b!4319673)))

(declare-fun lambda!133732 () Int)

(assert (=> bs!606271 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133732 lambda!133714))))

(declare-fun bs!606272 () Bool)

(assert (= bs!606272 (and b!4319854 b!4319728)))

(assert (=> bs!606272 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133732 lambda!133716))))

(assert (=> b!4319854 true))

(declare-fun bs!606273 () Bool)

(declare-fun b!4319858 () Bool)

(assert (= bs!606273 (and b!4319858 b!4319673)))

(declare-fun lambda!133733 () Int)

(assert (=> bs!606273 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133733 lambda!133714))))

(declare-fun bs!606274 () Bool)

(assert (= bs!606274 (and b!4319858 b!4319728)))

(assert (=> bs!606274 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133733 lambda!133716))))

(declare-fun bs!606275 () Bool)

(assert (= bs!606275 (and b!4319858 b!4319854)))

(assert (=> bs!606275 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133733 lambda!133732))))

(assert (=> b!4319858 true))

(declare-fun bs!606276 () Bool)

(declare-fun b!4319851 () Bool)

(assert (= bs!606276 (and b!4319851 b!4319673)))

(declare-fun lambda!133734 () Int)

(assert (=> bs!606276 (= lambda!133734 lambda!133714)))

(declare-fun bs!606277 () Bool)

(assert (= bs!606277 (and b!4319851 b!4319728)))

(assert (=> bs!606277 (= (= (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133734 lambda!133716))))

(declare-fun bs!606278 () Bool)

(assert (= bs!606278 (and b!4319851 b!4319854)))

(assert (=> bs!606278 (= (= (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133734 lambda!133732))))

(declare-fun bs!606279 () Bool)

(assert (= bs!606279 (and b!4319851 b!4319858)))

(assert (=> bs!606279 (= (= (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133734 lambda!133733))))

(assert (=> b!4319851 true))

(declare-fun bs!606280 () Bool)

(declare-fun b!4319852 () Bool)

(assert (= bs!606280 (and b!4319852 b!4319674)))

(declare-fun lambda!133735 () Int)

(assert (=> bs!606280 (= lambda!133735 lambda!133715)))

(declare-fun bs!606281 () Bool)

(assert (= bs!606281 (and b!4319852 b!4319729)))

(assert (=> bs!606281 (= lambda!133735 lambda!133717)))

(declare-fun res!1770388 () Bool)

(declare-fun e!2687485 () Bool)

(assert (=> b!4319851 (=> (not res!1770388) (not e!2687485))))

(declare-fun lt!1538174 () List!48483)

(assert (=> b!4319851 (= res!1770388 (forall!8802 lt!1538174 lambda!133734))))

(assert (=> b!4319852 (= e!2687485 (= (content!7568 lt!1538174) (content!7568 (map!10383 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) lambda!133735))))))

(declare-fun b!4319853 () Bool)

(declare-fun e!2687484 () List!48483)

(assert (=> b!4319853 (= e!2687484 Nil!48359)))

(assert (=> b!4319854 false))

(declare-fun lt!1538178 () Unit!67649)

(declare-fun forallContained!1529 (List!48483 Int K!9604) Unit!67649)

(assert (=> b!4319854 (= lt!1538178 (forallContained!1529 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) lambda!133732 (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))))

(declare-fun e!2687483 () Unit!67649)

(declare-fun Unit!67693 () Unit!67649)

(assert (=> b!4319854 (= e!2687483 Unit!67693)))

(declare-fun b!4319855 () Bool)

(assert (=> b!4319855 false))

(declare-fun e!2687482 () Unit!67649)

(declare-fun Unit!67694 () Unit!67649)

(assert (=> b!4319855 (= e!2687482 Unit!67694)))

(declare-fun b!4319856 () Bool)

(declare-fun Unit!67695 () Unit!67649)

(assert (=> b!4319856 (= e!2687482 Unit!67695)))

(assert (=> b!4319858 (= e!2687484 (Cons!48359 (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))))

(declare-fun c!734622 () Bool)

(assert (=> b!4319858 (= c!734622 (containsKey!395 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))))

(declare-fun lt!1538179 () Unit!67649)

(assert (=> b!4319858 (= lt!1538179 e!2687482)))

(declare-fun c!734623 () Bool)

(assert (=> b!4319858 (= c!734623 (contains!10400 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))))

(declare-fun lt!1538177 () Unit!67649)

(assert (=> b!4319858 (= lt!1538177 e!2687483)))

(declare-fun lt!1538176 () List!48483)

(assert (=> b!4319858 (= lt!1538176 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))))

(declare-fun lt!1538175 () Unit!67649)

(declare-fun lemmaForallContainsAddHeadPreserves!8 (List!48481 List!48483 tuple2!47120) Unit!67649)

(assert (=> b!4319858 (= lt!1538175 (lemmaForallContainsAddHeadPreserves!8 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) lt!1538176 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))))

(assert (=> b!4319858 (forall!8802 lt!1538176 lambda!133733)))

(declare-fun lt!1538173 () Unit!67649)

(assert (=> b!4319858 (= lt!1538173 lt!1538175)))

(declare-fun b!4319859 () Bool)

(declare-fun res!1770389 () Bool)

(assert (=> b!4319859 (=> (not res!1770389) (not e!2687485))))

(assert (=> b!4319859 (= res!1770389 (= (length!28 lt!1538174) (length!29 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))))

(declare-fun d!1270112 () Bool)

(assert (=> d!1270112 e!2687485))

(declare-fun res!1770390 () Bool)

(assert (=> d!1270112 (=> (not res!1770390) (not e!2687485))))

(assert (=> d!1270112 (= res!1770390 (noDuplicate!586 lt!1538174))))

(assert (=> d!1270112 (= lt!1538174 e!2687484)))

(declare-fun c!734621 () Bool)

(assert (=> d!1270112 (= c!734621 ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))

(assert (=> d!1270112 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))

(assert (=> d!1270112 (= (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) lt!1538174)))

(declare-fun b!4319857 () Bool)

(declare-fun Unit!67696 () Unit!67649)

(assert (=> b!4319857 (= e!2687483 Unit!67696)))

(assert (= (and d!1270112 c!734621) b!4319858))

(assert (= (and d!1270112 (not c!734621)) b!4319853))

(assert (= (and b!4319858 c!734622) b!4319855))

(assert (= (and b!4319858 (not c!734622)) b!4319856))

(assert (= (and b!4319858 c!734623) b!4319854))

(assert (= (and b!4319858 (not c!734623)) b!4319857))

(assert (= (and d!1270112 res!1770390) b!4319859))

(assert (= (and b!4319859 res!1770389) b!4319851))

(assert (= (and b!4319851 res!1770388) b!4319852))

(declare-fun m!4913495 () Bool)

(assert (=> b!4319859 m!4913495))

(assert (=> b!4319859 m!4913271))

(declare-fun m!4913497 () Bool)

(assert (=> b!4319852 m!4913497))

(declare-fun m!4913499 () Bool)

(assert (=> b!4319852 m!4913499))

(assert (=> b!4319852 m!4913499))

(declare-fun m!4913501 () Bool)

(assert (=> b!4319852 m!4913501))

(declare-fun m!4913503 () Bool)

(assert (=> b!4319858 m!4913503))

(declare-fun m!4913505 () Bool)

(assert (=> b!4319858 m!4913505))

(declare-fun m!4913507 () Bool)

(assert (=> b!4319858 m!4913507))

(assert (=> b!4319858 m!4913505))

(declare-fun m!4913509 () Bool)

(assert (=> b!4319858 m!4913509))

(declare-fun m!4913511 () Bool)

(assert (=> b!4319858 m!4913511))

(declare-fun m!4913513 () Bool)

(assert (=> d!1270112 m!4913513))

(declare-fun m!4913515 () Bool)

(assert (=> d!1270112 m!4913515))

(assert (=> b!4319854 m!4913505))

(assert (=> b!4319854 m!4913505))

(declare-fun m!4913517 () Bool)

(assert (=> b!4319854 m!4913517))

(declare-fun m!4913519 () Bool)

(assert (=> b!4319851 m!4913519))

(assert (=> b!4319227 d!1270112))

(declare-fun d!1270114 () Bool)

(assert (=> d!1270114 (isDefined!7596 (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(declare-fun lt!1538182 () Unit!67649)

(declare-fun choose!26379 (List!48481 K!9604) Unit!67649)

(assert (=> d!1270114 (= lt!1538182 (choose!26379 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> d!1270114 (invariantList!598 (toList!2538 (map!10381 thiss!42308)))))

(assert (=> d!1270114 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (map!10381 thiss!42308)) key!2048) lt!1538182)))

(declare-fun bs!606282 () Bool)

(assert (= bs!606282 d!1270114))

(assert (=> bs!606282 m!4913129))

(assert (=> bs!606282 m!4913129))

(assert (=> bs!606282 m!4913131))

(declare-fun m!4913521 () Bool)

(assert (=> bs!606282 m!4913521))

(declare-fun m!4913523 () Bool)

(assert (=> bs!606282 m!4913523))

(assert (=> b!4319608 d!1270114))

(declare-fun d!1270116 () Bool)

(declare-fun isEmpty!28111 (Option!10295) Bool)

(assert (=> d!1270116 (= (isDefined!7596 (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048)) (not (isEmpty!28111 (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048))))))

(declare-fun bs!606283 () Bool)

(assert (= bs!606283 d!1270116))

(assert (=> bs!606283 m!4913129))

(declare-fun m!4913525 () Bool)

(assert (=> bs!606283 m!4913525))

(assert (=> b!4319608 d!1270116))

(declare-fun d!1270118 () Bool)

(declare-fun c!734628 () Bool)

(assert (=> d!1270118 (= c!734628 (and ((_ is Cons!48357) (toList!2538 (map!10381 thiss!42308))) (= (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308)))) key!2048)))))

(declare-fun e!2687490 () Option!10295)

(assert (=> d!1270118 (= (getValueByKey!294 (toList!2538 (map!10381 thiss!42308)) key!2048) e!2687490)))

(declare-fun b!4319871 () Bool)

(declare-fun e!2687491 () Option!10295)

(assert (=> b!4319871 (= e!2687490 e!2687491)))

(declare-fun c!734629 () Bool)

(assert (=> b!4319871 (= c!734629 (and ((_ is Cons!48357) (toList!2538 (map!10381 thiss!42308))) (not (= (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308)))) key!2048))))))

(declare-fun b!4319873 () Bool)

(assert (=> b!4319873 (= e!2687491 None!10294)))

(declare-fun b!4319870 () Bool)

(assert (=> b!4319870 (= e!2687490 (Some!10294 (_2!26845 (h!53814 (toList!2538 (map!10381 thiss!42308))))))))

(declare-fun b!4319872 () Bool)

(assert (=> b!4319872 (= e!2687491 (getValueByKey!294 (t!355350 (toList!2538 (map!10381 thiss!42308))) key!2048))))

(assert (= (and d!1270118 c!734628) b!4319870))

(assert (= (and d!1270118 (not c!734628)) b!4319871))

(assert (= (and b!4319871 c!734629) b!4319872))

(assert (= (and b!4319871 (not c!734629)) b!4319873))

(declare-fun m!4913527 () Bool)

(assert (=> b!4319872 m!4913527))

(assert (=> b!4319608 d!1270118))

(declare-fun d!1270120 () Bool)

(assert (=> d!1270120 (contains!10400 (getKeysList!55 (toList!2538 (map!10381 thiss!42308))) key!2048)))

(declare-fun lt!1538185 () Unit!67649)

(declare-fun choose!26380 (List!48481 K!9604) Unit!67649)

(assert (=> d!1270120 (= lt!1538185 (choose!26380 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> d!1270120 (invariantList!598 (toList!2538 (map!10381 thiss!42308)))))

(assert (=> d!1270120 (= (lemmaInListThenGetKeysListContains!52 (toList!2538 (map!10381 thiss!42308)) key!2048) lt!1538185)))

(declare-fun bs!606284 () Bool)

(assert (= bs!606284 d!1270120))

(assert (=> bs!606284 m!4913137))

(assert (=> bs!606284 m!4913137))

(declare-fun m!4913529 () Bool)

(assert (=> bs!606284 m!4913529))

(declare-fun m!4913531 () Bool)

(assert (=> bs!606284 m!4913531))

(assert (=> bs!606284 m!4913523))

(assert (=> b!4319608 d!1270120))

(declare-fun d!1270122 () Bool)

(declare-fun res!1770391 () Bool)

(declare-fun e!2687492 () Bool)

(assert (=> d!1270122 (=> res!1770391 e!2687492)))

(assert (=> d!1270122 (= res!1770391 (and ((_ is Cons!48358) (toList!2537 (ite c!734429 lt!1537676 call!299142))) (= (_1!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142)))) call!299143)))))

(assert (=> d!1270122 (= (containsKey!394 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143) e!2687492)))

(declare-fun b!4319874 () Bool)

(declare-fun e!2687493 () Bool)

(assert (=> b!4319874 (= e!2687492 e!2687493)))

(declare-fun res!1770392 () Bool)

(assert (=> b!4319874 (=> (not res!1770392) (not e!2687493))))

(assert (=> b!4319874 (= res!1770392 (and (or (not ((_ is Cons!48358) (toList!2537 (ite c!734429 lt!1537676 call!299142)))) (bvsle (_1!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142)))) call!299143)) ((_ is Cons!48358) (toList!2537 (ite c!734429 lt!1537676 call!299142))) (bvslt (_1!26846 (h!53815 (toList!2537 (ite c!734429 lt!1537676 call!299142)))) call!299143)))))

(declare-fun b!4319875 () Bool)

(assert (=> b!4319875 (= e!2687493 (containsKey!394 (t!355351 (toList!2537 (ite c!734429 lt!1537676 call!299142))) call!299143))))

(assert (= (and d!1270122 (not res!1770391)) b!4319874))

(assert (= (and b!4319874 res!1770392) b!4319875))

(declare-fun m!4913533 () Bool)

(assert (=> b!4319875 m!4913533))

(assert (=> d!1269912 d!1270122))

(declare-fun d!1270124 () Bool)

(declare-fun res!1770393 () Bool)

(declare-fun e!2687494 () Bool)

(assert (=> d!1270124 (=> res!1770393 e!2687494)))

(assert (=> d!1270124 (= res!1770393 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000) lt!1537608))))

(assert (=> d!1270124 (= (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000) e!2687494)))

(declare-fun b!4319876 () Bool)

(declare-fun e!2687495 () Bool)

(assert (=> b!4319876 (= e!2687494 e!2687495)))

(declare-fun res!1770394 () Bool)

(assert (=> b!4319876 (=> (not res!1770394) (not e!2687495))))

(assert (=> b!4319876 (= res!1770394 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4319877 () Bool)

(assert (=> b!4319877 (= e!2687495 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!1270124 (not res!1770393)) b!4319876))

(assert (= (and b!4319876 res!1770394) b!4319877))

(declare-fun m!4913535 () Bool)

(assert (=> d!1270124 m!4913535))

(declare-fun m!4913537 () Bool)

(assert (=> b!4319877 m!4913537))

(assert (=> bm!299213 d!1270124))

(declare-fun d!1270126 () Bool)

(declare-fun lt!1538188 () Bool)

(declare-fun content!7569 (List!48481) (InoxSet tuple2!47120))

(assert (=> d!1270126 (= lt!1538188 (select (content!7569 call!299140) (get!15667 lt!1537978)))))

(declare-fun e!2687501 () Bool)

(assert (=> d!1270126 (= lt!1538188 e!2687501)))

(declare-fun res!1770399 () Bool)

(assert (=> d!1270126 (=> (not res!1770399) (not e!2687501))))

(assert (=> d!1270126 (= res!1770399 ((_ is Cons!48357) call!299140))))

(assert (=> d!1270126 (= (contains!10401 call!299140 (get!15667 lt!1537978)) lt!1538188)))

(declare-fun b!4319882 () Bool)

(declare-fun e!2687500 () Bool)

(assert (=> b!4319882 (= e!2687501 e!2687500)))

(declare-fun res!1770400 () Bool)

(assert (=> b!4319882 (=> res!1770400 e!2687500)))

(assert (=> b!4319882 (= res!1770400 (= (h!53814 call!299140) (get!15667 lt!1537978)))))

(declare-fun b!4319883 () Bool)

(assert (=> b!4319883 (= e!2687500 (contains!10401 (t!355350 call!299140) (get!15667 lt!1537978)))))

(assert (= (and d!1270126 res!1770399) b!4319882))

(assert (= (and b!4319882 (not res!1770400)) b!4319883))

(declare-fun m!4913539 () Bool)

(assert (=> d!1270126 m!4913539))

(assert (=> d!1270126 m!4913103))

(declare-fun m!4913541 () Bool)

(assert (=> d!1270126 m!4913541))

(assert (=> b!4319883 m!4913103))

(declare-fun m!4913543 () Bool)

(assert (=> b!4319883 m!4913543))

(assert (=> b!4319596 d!1270126))

(declare-fun d!1270128 () Bool)

(assert (=> d!1270128 (= (get!15667 lt!1537978) (v!42708 lt!1537978))))

(assert (=> b!4319596 d!1270128))

(assert (=> b!4319542 d!1270038))

(declare-fun d!1270130 () Bool)

(declare-fun e!2687504 () Bool)

(assert (=> d!1270130 e!2687504))

(declare-fun res!1770403 () Bool)

(assert (=> d!1270130 (=> res!1770403 e!2687504)))

(declare-fun lt!1538194 () SeekEntryResult!20)

(assert (=> d!1270130 (= res!1770403 (not ((_ is Found!20) lt!1538194)))))

(assert (=> d!1270130 (= lt!1538194 (seekEntry!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538193 () Unit!67649)

(declare-fun choose!26381 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64)) Unit!67649)

(assert (=> d!1270130 (= lt!1538193 (choose!26381 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(assert (=> d!1270130 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270130 (= (lemmaSeekEntryGivesInRangeIndex!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608) lt!1538193)))

(declare-fun b!4319886 () Bool)

(assert (=> b!4319886 (= e!2687504 (inRange!0 (index!1459 lt!1538194) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (= (and d!1270130 (not res!1770403)) b!4319886))

(assert (=> d!1270130 m!4912967))

(declare-fun m!4913545 () Bool)

(assert (=> d!1270130 m!4913545))

(assert (=> d!1270130 m!4913293))

(declare-fun m!4913547 () Bool)

(assert (=> b!4319886 m!4913547))

(assert (=> b!4319542 d!1270130))

(declare-fun d!1270132 () Bool)

(declare-fun res!1770408 () Bool)

(declare-fun e!2687509 () Bool)

(assert (=> d!1270132 (=> res!1770408 e!2687509)))

(assert (=> d!1270132 (= res!1770408 (or ((_ is Nil!48357) (toList!2538 lt!1537689)) ((_ is Nil!48357) (t!355350 (toList!2538 lt!1537689)))))))

(assert (=> d!1270132 (= (noDuplicatedKeys!102 (toList!2538 lt!1537689)) e!2687509)))

(declare-fun b!4319891 () Bool)

(declare-fun e!2687510 () Bool)

(assert (=> b!4319891 (= e!2687509 e!2687510)))

(declare-fun res!1770409 () Bool)

(assert (=> b!4319891 (=> (not res!1770409) (not e!2687510))))

(assert (=> b!4319891 (= res!1770409 (not (containsKey!395 (t!355350 (toList!2538 lt!1537689)) (_1!26845 (h!53814 (toList!2538 lt!1537689))))))))

(declare-fun b!4319892 () Bool)

(assert (=> b!4319892 (= e!2687510 (noDuplicatedKeys!102 (t!355350 (toList!2538 lt!1537689))))))

(assert (= (and d!1270132 (not res!1770408)) b!4319891))

(assert (= (and b!4319891 res!1770409) b!4319892))

(declare-fun m!4913549 () Bool)

(assert (=> b!4319891 m!4913549))

(declare-fun m!4913551 () Bool)

(assert (=> b!4319892 m!4913551))

(assert (=> d!1269888 d!1270132))

(assert (=> b!4319584 d!1269966))

(declare-fun d!1270134 () Bool)

(declare-fun lt!1538195 () Bool)

(assert (=> d!1270134 (= lt!1538195 (select (content!7567 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun e!2687512 () Bool)

(assert (=> d!1270134 (= lt!1538195 e!2687512)))

(declare-fun res!1770411 () Bool)

(assert (=> d!1270134 (=> (not res!1770411) (not e!2687512))))

(assert (=> d!1270134 (= res!1770411 ((_ is Cons!48358) (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270134 (= (contains!10398 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) lt!1538195)))

(declare-fun b!4319893 () Bool)

(declare-fun e!2687511 () Bool)

(assert (=> b!4319893 (= e!2687512 e!2687511)))

(declare-fun res!1770410 () Bool)

(assert (=> b!4319893 (=> res!1770410 e!2687511)))

(assert (=> b!4319893 (= res!1770410 (= (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun b!4319894 () Bool)

(assert (=> b!4319894 (= e!2687511 (contains!10398 (t!355351 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (= (and d!1270134 res!1770411) b!4319893))

(assert (= (and b!4319893 (not res!1770410)) b!4319894))

(declare-fun m!4913553 () Bool)

(assert (=> d!1270134 m!4913553))

(declare-fun m!4913555 () Bool)

(assert (=> d!1270134 m!4913555))

(declare-fun m!4913557 () Bool)

(assert (=> b!4319894 m!4913557))

(assert (=> b!4319586 d!1270134))

(assert (=> d!1269994 d!1269870))

(assert (=> d!1269994 d!1269868))

(declare-fun d!1270136 () Bool)

(declare-fun e!2687513 () Bool)

(assert (=> d!1270136 e!2687513))

(declare-fun res!1770412 () Bool)

(assert (=> d!1270136 (=> res!1770412 e!2687513)))

(declare-fun lt!1538197 () Bool)

(assert (=> d!1270136 (= res!1770412 (not lt!1538197))))

(declare-fun lt!1538196 () Bool)

(assert (=> d!1270136 (= lt!1538197 lt!1538196)))

(declare-fun lt!1538199 () Unit!67649)

(declare-fun e!2687514 () Unit!67649)

(assert (=> d!1270136 (= lt!1538199 e!2687514)))

(declare-fun c!734630 () Bool)

(assert (=> d!1270136 (= c!734630 lt!1538196)))

(assert (=> d!1270136 (= lt!1538196 (containsKey!394 (toList!2537 call!299218) lt!1537608))))

(assert (=> d!1270136 (= (contains!10396 call!299218 lt!1537608) lt!1538197)))

(declare-fun b!4319895 () Bool)

(declare-fun lt!1538198 () Unit!67649)

(assert (=> b!4319895 (= e!2687514 lt!1538198)))

(assert (=> b!4319895 (= lt!1538198 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299218) lt!1537608))))

(assert (=> b!4319895 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299218) lt!1537608))))

(declare-fun b!4319896 () Bool)

(declare-fun Unit!67697 () Unit!67649)

(assert (=> b!4319896 (= e!2687514 Unit!67697)))

(declare-fun b!4319897 () Bool)

(assert (=> b!4319897 (= e!2687513 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299218) lt!1537608)))))

(assert (= (and d!1270136 c!734630) b!4319895))

(assert (= (and d!1270136 (not c!734630)) b!4319896))

(assert (= (and d!1270136 (not res!1770412)) b!4319897))

(declare-fun m!4913559 () Bool)

(assert (=> d!1270136 m!4913559))

(declare-fun m!4913561 () Bool)

(assert (=> b!4319895 m!4913561))

(declare-fun m!4913563 () Bool)

(assert (=> b!4319895 m!4913563))

(assert (=> b!4319895 m!4913563))

(declare-fun m!4913565 () Bool)

(assert (=> b!4319895 m!4913565))

(assert (=> b!4319897 m!4913563))

(assert (=> b!4319897 m!4913563))

(assert (=> b!4319897 m!4913565))

(assert (=> b!4319346 d!1270136))

(declare-fun d!1270138 () Bool)

(declare-fun res!1770413 () Bool)

(declare-fun e!2687515 () Bool)

(assert (=> d!1270138 (=> res!1770413 e!2687515)))

(assert (=> d!1270138 (= res!1770413 ((_ is Nil!48358) (t!355351 (toList!2537 lt!1537605))))))

(assert (=> d!1270138 (= (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133651) e!2687515)))

(declare-fun b!4319898 () Bool)

(declare-fun e!2687516 () Bool)

(assert (=> b!4319898 (= e!2687515 e!2687516)))

(declare-fun res!1770414 () Bool)

(assert (=> b!4319898 (=> (not res!1770414) (not e!2687516))))

(assert (=> b!4319898 (= res!1770414 (dynLambda!20499 lambda!133651 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))

(declare-fun b!4319899 () Bool)

(assert (=> b!4319899 (= e!2687516 (forall!8800 (t!355351 (t!355351 (toList!2537 lt!1537605))) lambda!133651))))

(assert (= (and d!1270138 (not res!1770413)) b!4319898))

(assert (= (and b!4319898 res!1770414) b!4319899))

(declare-fun b_lambda!127127 () Bool)

(assert (=> (not b_lambda!127127) (not b!4319898)))

(declare-fun m!4913567 () Bool)

(assert (=> b!4319898 m!4913567))

(declare-fun m!4913569 () Bool)

(assert (=> b!4319899 m!4913569))

(assert (=> b!4319581 d!1270138))

(declare-fun d!1270140 () Bool)

(assert (=> d!1270140 (= (isDefined!7595 lt!1537924) (not (isEmpty!28109 lt!1537924)))))

(declare-fun bs!606285 () Bool)

(assert (= bs!606285 d!1270140))

(assert (=> bs!606285 m!4912999))

(assert (=> b!4319492 d!1270140))

(assert (=> d!1269984 d!1270024))

(declare-fun d!1270142 () Bool)

(declare-fun lt!1538200 () Bool)

(assert (=> d!1270142 (= lt!1538200 (select (content!7568 e!2687095) key!2048))))

(declare-fun e!2687517 () Bool)

(assert (=> d!1270142 (= lt!1538200 e!2687517)))

(declare-fun res!1770416 () Bool)

(assert (=> d!1270142 (=> (not res!1770416) (not e!2687517))))

(assert (=> d!1270142 (= res!1770416 ((_ is Cons!48359) e!2687095))))

(assert (=> d!1270142 (= (contains!10400 e!2687095 key!2048) lt!1538200)))

(declare-fun b!4319900 () Bool)

(declare-fun e!2687518 () Bool)

(assert (=> b!4319900 (= e!2687517 e!2687518)))

(declare-fun res!1770415 () Bool)

(assert (=> b!4319900 (=> res!1770415 e!2687518)))

(assert (=> b!4319900 (= res!1770415 (= (h!53817 e!2687095) key!2048))))

(declare-fun b!4319901 () Bool)

(assert (=> b!4319901 (= e!2687518 (contains!10400 (t!355356 e!2687095) key!2048))))

(assert (= (and d!1270142 res!1770416) b!4319900))

(assert (= (and b!4319900 (not res!1770415)) b!4319901))

(declare-fun m!4913571 () Bool)

(assert (=> d!1270142 m!4913571))

(declare-fun m!4913573 () Bool)

(assert (=> d!1270142 m!4913573))

(declare-fun m!4913575 () Bool)

(assert (=> b!4319901 m!4913575))

(assert (=> bm!299142 d!1270142))

(declare-fun d!1270144 () Bool)

(assert (=> d!1270144 (= (isDefined!7594 (getValueByKey!293 (toList!2537 call!299126) lt!1537608)) (not (isEmpty!28110 (getValueByKey!293 (toList!2537 call!299126) lt!1537608))))))

(declare-fun bs!606286 () Bool)

(assert (= bs!606286 d!1270144))

(assert (=> bs!606286 m!4912937))

(declare-fun m!4913577 () Bool)

(assert (=> bs!606286 m!4913577))

(assert (=> b!4319428 d!1270144))

(declare-fun b!4319904 () Bool)

(declare-fun e!2687520 () Option!10294)

(assert (=> b!4319904 (= e!2687520 (getValueByKey!293 (t!355351 (toList!2537 call!299126)) lt!1537608))))

(declare-fun b!4319902 () Bool)

(declare-fun e!2687519 () Option!10294)

(assert (=> b!4319902 (= e!2687519 (Some!10293 (_2!26846 (h!53815 (toList!2537 call!299126)))))))

(declare-fun b!4319905 () Bool)

(assert (=> b!4319905 (= e!2687520 None!10293)))

(declare-fun d!1270146 () Bool)

(declare-fun c!734631 () Bool)

(assert (=> d!1270146 (= c!734631 (and ((_ is Cons!48358) (toList!2537 call!299126)) (= (_1!26846 (h!53815 (toList!2537 call!299126))) lt!1537608)))))

(assert (=> d!1270146 (= (getValueByKey!293 (toList!2537 call!299126) lt!1537608) e!2687519)))

(declare-fun b!4319903 () Bool)

(assert (=> b!4319903 (= e!2687519 e!2687520)))

(declare-fun c!734632 () Bool)

(assert (=> b!4319903 (= c!734632 (and ((_ is Cons!48358) (toList!2537 call!299126)) (not (= (_1!26846 (h!53815 (toList!2537 call!299126))) lt!1537608))))))

(assert (= (and d!1270146 c!734631) b!4319902))

(assert (= (and d!1270146 (not c!734631)) b!4319903))

(assert (= (and b!4319903 c!734632) b!4319904))

(assert (= (and b!4319903 (not c!734632)) b!4319905))

(declare-fun m!4913579 () Bool)

(assert (=> b!4319904 m!4913579))

(assert (=> b!4319428 d!1270146))

(declare-fun d!1270148 () Bool)

(declare-fun res!1770417 () Bool)

(declare-fun e!2687521 () Bool)

(assert (=> d!1270148 (=> res!1770417 e!2687521)))

(assert (=> d!1270148 (= res!1770417 (and ((_ is Cons!48357) (t!355350 (t!355350 lt!1537611))) (= (_1!26845 (h!53814 (t!355350 (t!355350 lt!1537611)))) (_1!26845 (h!53814 (t!355350 lt!1537611))))))))

(assert (=> d!1270148 (= (containsKey!393 (t!355350 (t!355350 lt!1537611)) (_1!26845 (h!53814 (t!355350 lt!1537611)))) e!2687521)))

(declare-fun b!4319906 () Bool)

(declare-fun e!2687522 () Bool)

(assert (=> b!4319906 (= e!2687521 e!2687522)))

(declare-fun res!1770418 () Bool)

(assert (=> b!4319906 (=> (not res!1770418) (not e!2687522))))

(assert (=> b!4319906 (= res!1770418 ((_ is Cons!48357) (t!355350 (t!355350 lt!1537611))))))

(declare-fun b!4319907 () Bool)

(assert (=> b!4319907 (= e!2687522 (containsKey!393 (t!355350 (t!355350 (t!355350 lt!1537611))) (_1!26845 (h!53814 (t!355350 lt!1537611)))))))

(assert (= (and d!1270148 (not res!1770417)) b!4319906))

(assert (= (and b!4319906 res!1770418) b!4319907))

(declare-fun m!4913581 () Bool)

(assert (=> b!4319907 m!4913581))

(assert (=> b!4319429 d!1270148))

(declare-fun d!1270150 () Bool)

(assert (=> d!1270150 (dynLambda!20499 lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(assert (=> d!1270150 true))

(declare-fun _$7!1414 () Unit!67649)

(assert (=> d!1270150 (= (choose!26373 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654 (tuple2!47123 lt!1537672 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) _$7!1414)))

(declare-fun b_lambda!127129 () Bool)

(assert (=> (not b_lambda!127129) (not d!1270150)))

(declare-fun bs!606287 () Bool)

(assert (= bs!606287 d!1270150))

(assert (=> bs!606287 m!4913083))

(assert (=> d!1269964 d!1270150))

(declare-fun d!1270152 () Bool)

(declare-fun res!1770419 () Bool)

(declare-fun e!2687523 () Bool)

(assert (=> d!1270152 (=> res!1770419 e!2687523)))

(assert (=> d!1270152 (= res!1770419 ((_ is Nil!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270152 (= (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133654) e!2687523)))

(declare-fun b!4319908 () Bool)

(declare-fun e!2687524 () Bool)

(assert (=> b!4319908 (= e!2687523 e!2687524)))

(declare-fun res!1770420 () Bool)

(assert (=> b!4319908 (=> (not res!1770420) (not e!2687524))))

(assert (=> b!4319908 (= res!1770420 (dynLambda!20499 lambda!133654 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319909 () Bool)

(assert (=> b!4319909 (= e!2687524 (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133654))))

(assert (= (and d!1270152 (not res!1770419)) b!4319908))

(assert (= (and b!4319908 res!1770420) b!4319909))

(declare-fun b_lambda!127131 () Bool)

(assert (=> (not b_lambda!127131) (not b!4319908)))

(declare-fun m!4913583 () Bool)

(assert (=> b!4319908 m!4913583))

(declare-fun m!4913585 () Bool)

(assert (=> b!4319909 m!4913585))

(assert (=> d!1269964 d!1270152))

(declare-fun d!1270154 () Bool)

(declare-fun res!1770421 () Bool)

(declare-fun e!2687525 () Bool)

(assert (=> d!1270154 (=> res!1770421 e!2687525)))

(assert (=> d!1270154 (= res!1770421 (and ((_ is Cons!48357) (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))) (= (_1!26845 (h!53814 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))) (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537605))))))))))

(assert (=> d!1270154 (= (containsKey!393 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))) (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))) e!2687525)))

(declare-fun b!4319910 () Bool)

(declare-fun e!2687526 () Bool)

(assert (=> b!4319910 (= e!2687525 e!2687526)))

(declare-fun res!1770422 () Bool)

(assert (=> b!4319910 (=> (not res!1770422) (not e!2687526))))

(assert (=> b!4319910 (= res!1770422 ((_ is Cons!48357) (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))))))

(declare-fun b!4319911 () Bool)

(assert (=> b!4319911 (= e!2687526 (containsKey!393 (t!355350 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))) (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))))))

(assert (= (and d!1270154 (not res!1770421)) b!4319910))

(assert (= (and b!4319910 res!1770422) b!4319911))

(declare-fun m!4913587 () Bool)

(assert (=> b!4319911 m!4913587))

(assert (=> b!4319621 d!1270154))

(declare-fun d!1270156 () Bool)

(declare-fun lt!1538201 () Bool)

(assert (=> d!1270156 (= lt!1538201 (select (content!7567 (toList!2537 lt!1537866)) (tuple2!47123 lt!1537608 lt!1537611)))))

(declare-fun e!2687528 () Bool)

(assert (=> d!1270156 (= lt!1538201 e!2687528)))

(declare-fun res!1770424 () Bool)

(assert (=> d!1270156 (=> (not res!1770424) (not e!2687528))))

(assert (=> d!1270156 (= res!1770424 ((_ is Cons!48358) (toList!2537 lt!1537866)))))

(assert (=> d!1270156 (= (contains!10398 (toList!2537 lt!1537866) (tuple2!47123 lt!1537608 lt!1537611)) lt!1538201)))

(declare-fun b!4319912 () Bool)

(declare-fun e!2687527 () Bool)

(assert (=> b!4319912 (= e!2687528 e!2687527)))

(declare-fun res!1770423 () Bool)

(assert (=> b!4319912 (=> res!1770423 e!2687527)))

(assert (=> b!4319912 (= res!1770423 (= (h!53815 (toList!2537 lt!1537866)) (tuple2!47123 lt!1537608 lt!1537611)))))

(declare-fun b!4319913 () Bool)

(assert (=> b!4319913 (= e!2687527 (contains!10398 (t!355351 (toList!2537 lt!1537866)) (tuple2!47123 lt!1537608 lt!1537611)))))

(assert (= (and d!1270156 res!1770424) b!4319912))

(assert (= (and b!4319912 (not res!1770423)) b!4319913))

(declare-fun m!4913589 () Bool)

(assert (=> d!1270156 m!4913589))

(declare-fun m!4913591 () Bool)

(assert (=> d!1270156 m!4913591))

(declare-fun m!4913593 () Bool)

(assert (=> b!4319913 m!4913593))

(assert (=> b!4319425 d!1270156))

(declare-fun d!1270158 () Bool)

(declare-fun lt!1538202 () Bool)

(assert (=> d!1270158 (= lt!1538202 (select (content!7568 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048))))

(declare-fun e!2687529 () Bool)

(assert (=> d!1270158 (= lt!1538202 e!2687529)))

(declare-fun res!1770426 () Bool)

(assert (=> d!1270158 (=> (not res!1770426) (not e!2687529))))

(assert (=> d!1270158 (= res!1770426 ((_ is Cons!48359) (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270158 (= (contains!10400 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) lt!1538202)))

(declare-fun b!4319914 () Bool)

(declare-fun e!2687530 () Bool)

(assert (=> b!4319914 (= e!2687529 e!2687530)))

(declare-fun res!1770425 () Bool)

(assert (=> b!4319914 (=> res!1770425 e!2687530)))

(assert (=> b!4319914 (= res!1770425 (= (h!53817 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048))))

(declare-fun b!4319915 () Bool)

(assert (=> b!4319915 (= e!2687530 (contains!10400 (t!355356 (keys!16162 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048))))

(assert (= (and d!1270158 res!1770426) b!4319914))

(assert (= (and b!4319914 (not res!1770425)) b!4319915))

(assert (=> d!1270158 m!4913145))

(declare-fun m!4913595 () Bool)

(assert (=> d!1270158 m!4913595))

(declare-fun m!4913597 () Bool)

(assert (=> d!1270158 m!4913597))

(declare-fun m!4913599 () Bool)

(assert (=> b!4319915 m!4913599))

(assert (=> b!4319619 d!1270158))

(assert (=> b!4319619 d!1270056))

(declare-fun bs!606288 () Bool)

(declare-fun b!4319919 () Bool)

(assert (= bs!606288 (and b!4319919 b!4319851)))

(declare-fun lambda!133736 () Int)

(assert (=> bs!606288 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133736 lambda!133734))))

(declare-fun bs!606289 () Bool)

(assert (= bs!606289 (and b!4319919 b!4319673)))

(assert (=> bs!606289 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133736 lambda!133714))))

(declare-fun bs!606290 () Bool)

(assert (= bs!606290 (and b!4319919 b!4319854)))

(assert (=> bs!606290 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133736 lambda!133732))))

(declare-fun bs!606291 () Bool)

(assert (= bs!606291 (and b!4319919 b!4319858)))

(assert (=> bs!606291 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133736 lambda!133733))))

(declare-fun bs!606292 () Bool)

(assert (= bs!606292 (and b!4319919 b!4319728)))

(assert (=> bs!606292 (= (= (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133736 lambda!133716))))

(assert (=> b!4319919 true))

(declare-fun bs!606293 () Bool)

(declare-fun b!4319923 () Bool)

(assert (= bs!606293 (and b!4319923 b!4319851)))

(declare-fun lambda!133737 () Int)

(assert (=> bs!606293 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133737 lambda!133734))))

(declare-fun bs!606294 () Bool)

(assert (= bs!606294 (and b!4319923 b!4319919)))

(assert (=> bs!606294 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133737 lambda!133736))))

(declare-fun bs!606295 () Bool)

(assert (= bs!606295 (and b!4319923 b!4319673)))

(assert (=> bs!606295 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133737 lambda!133714))))

(declare-fun bs!606296 () Bool)

(assert (= bs!606296 (and b!4319923 b!4319854)))

(assert (=> bs!606296 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133737 lambda!133732))))

(declare-fun bs!606297 () Bool)

(assert (= bs!606297 (and b!4319923 b!4319858)))

(assert (=> bs!606297 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133737 lambda!133733))))

(declare-fun bs!606298 () Bool)

(assert (= bs!606298 (and b!4319923 b!4319728)))

(assert (=> bs!606298 (= (= (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133737 lambda!133716))))

(assert (=> b!4319923 true))

(declare-fun bs!606299 () Bool)

(declare-fun b!4319916 () Bool)

(assert (= bs!606299 (and b!4319916 b!4319851)))

(declare-fun lambda!133738 () Int)

(assert (=> bs!606299 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133738 lambda!133734))))

(declare-fun bs!606300 () Bool)

(assert (= bs!606300 (and b!4319916 b!4319673)))

(assert (=> bs!606300 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133738 lambda!133714))))

(declare-fun bs!606301 () Bool)

(assert (= bs!606301 (and b!4319916 b!4319854)))

(assert (=> bs!606301 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133738 lambda!133732))))

(declare-fun bs!606302 () Bool)

(assert (= bs!606302 (and b!4319916 b!4319858)))

(assert (=> bs!606302 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133738 lambda!133733))))

(declare-fun bs!606303 () Bool)

(assert (= bs!606303 (and b!4319916 b!4319728)))

(assert (=> bs!606303 (= lambda!133738 lambda!133716)))

(declare-fun bs!606304 () Bool)

(assert (= bs!606304 (and b!4319916 b!4319919)))

(assert (=> bs!606304 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133738 lambda!133736))))

(declare-fun bs!606305 () Bool)

(assert (= bs!606305 (and b!4319916 b!4319923)))

(assert (=> bs!606305 (= (= (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))) (= lambda!133738 lambda!133737))))

(assert (=> b!4319916 true))

(declare-fun bs!606306 () Bool)

(declare-fun b!4319917 () Bool)

(assert (= bs!606306 (and b!4319917 b!4319674)))

(declare-fun lambda!133739 () Int)

(assert (=> bs!606306 (= lambda!133739 lambda!133715)))

(declare-fun bs!606307 () Bool)

(assert (= bs!606307 (and b!4319917 b!4319729)))

(assert (=> bs!606307 (= lambda!133739 lambda!133717)))

(declare-fun bs!606308 () Bool)

(assert (= bs!606308 (and b!4319917 b!4319852)))

(assert (=> bs!606308 (= lambda!133739 lambda!133735)))

(declare-fun res!1770427 () Bool)

(declare-fun e!2687534 () Bool)

(assert (=> b!4319916 (=> (not res!1770427) (not e!2687534))))

(declare-fun lt!1538204 () List!48483)

(assert (=> b!4319916 (= res!1770427 (forall!8802 lt!1538204 lambda!133738))))

(assert (=> b!4319917 (= e!2687534 (= (content!7568 lt!1538204) (content!7568 (map!10383 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lambda!133739))))))

(declare-fun b!4319918 () Bool)

(declare-fun e!2687533 () List!48483)

(assert (=> b!4319918 (= e!2687533 Nil!48359)))

(assert (=> b!4319919 false))

(declare-fun lt!1538208 () Unit!67649)

(assert (=> b!4319919 (= lt!1538208 (forallContained!1529 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) lambda!133736 (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun e!2687532 () Unit!67649)

(declare-fun Unit!67698 () Unit!67649)

(assert (=> b!4319919 (= e!2687532 Unit!67698)))

(declare-fun b!4319920 () Bool)

(assert (=> b!4319920 false))

(declare-fun e!2687531 () Unit!67649)

(declare-fun Unit!67699 () Unit!67649)

(assert (=> b!4319920 (= e!2687531 Unit!67699)))

(declare-fun b!4319921 () Bool)

(declare-fun Unit!67700 () Unit!67649)

(assert (=> b!4319921 (= e!2687531 Unit!67700)))

(assert (=> b!4319923 (= e!2687533 (Cons!48359 (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun c!734634 () Bool)

(assert (=> b!4319923 (= c!734634 (containsKey!395 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun lt!1538209 () Unit!67649)

(assert (=> b!4319923 (= lt!1538209 e!2687531)))

(declare-fun c!734635 () Bool)

(assert (=> b!4319923 (= c!734635 (contains!10400 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun lt!1538207 () Unit!67649)

(assert (=> b!4319923 (= lt!1538207 e!2687532)))

(declare-fun lt!1538206 () List!48483)

(assert (=> b!4319923 (= lt!1538206 (getKeysList!55 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun lt!1538205 () Unit!67649)

(assert (=> b!4319923 (= lt!1538205 (lemmaForallContainsAddHeadPreserves!8 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538206 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (=> b!4319923 (forall!8802 lt!1538206 lambda!133737)))

(declare-fun lt!1538203 () Unit!67649)

(assert (=> b!4319923 (= lt!1538203 lt!1538205)))

(declare-fun b!4319924 () Bool)

(declare-fun res!1770428 () Bool)

(assert (=> b!4319924 (=> (not res!1770428) (not e!2687534))))

(assert (=> b!4319924 (= res!1770428 (= (length!28 lt!1538204) (length!29 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun d!1270160 () Bool)

(assert (=> d!1270160 e!2687534))

(declare-fun res!1770429 () Bool)

(assert (=> d!1270160 (=> (not res!1770429) (not e!2687534))))

(assert (=> d!1270160 (= res!1770429 (noDuplicate!586 lt!1538204))))

(assert (=> d!1270160 (= lt!1538204 e!2687533)))

(declare-fun c!734633 () Bool)

(assert (=> d!1270160 (= c!734633 ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270160 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270160 (= (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538204)))

(declare-fun b!4319922 () Bool)

(declare-fun Unit!67701 () Unit!67649)

(assert (=> b!4319922 (= e!2687532 Unit!67701)))

(assert (= (and d!1270160 c!734633) b!4319923))

(assert (= (and d!1270160 (not c!734633)) b!4319918))

(assert (= (and b!4319923 c!734634) b!4319920))

(assert (= (and b!4319923 (not c!734634)) b!4319921))

(assert (= (and b!4319923 c!734635) b!4319919))

(assert (= (and b!4319923 (not c!734635)) b!4319922))

(assert (= (and d!1270160 res!1770429) b!4319924))

(assert (= (and b!4319924 res!1770428) b!4319916))

(assert (= (and b!4319916 res!1770427) b!4319917))

(declare-fun m!4913601 () Bool)

(assert (=> b!4319924 m!4913601))

(assert (=> b!4319924 m!4913329))

(declare-fun m!4913603 () Bool)

(assert (=> b!4319917 m!4913603))

(declare-fun m!4913605 () Bool)

(assert (=> b!4319917 m!4913605))

(assert (=> b!4319917 m!4913605))

(declare-fun m!4913607 () Bool)

(assert (=> b!4319917 m!4913607))

(declare-fun m!4913609 () Bool)

(assert (=> b!4319923 m!4913609))

(declare-fun m!4913611 () Bool)

(assert (=> b!4319923 m!4913611))

(declare-fun m!4913613 () Bool)

(assert (=> b!4319923 m!4913613))

(assert (=> b!4319923 m!4913611))

(declare-fun m!4913615 () Bool)

(assert (=> b!4319923 m!4913615))

(declare-fun m!4913617 () Bool)

(assert (=> b!4319923 m!4913617))

(declare-fun m!4913619 () Bool)

(assert (=> d!1270160 m!4913619))

(assert (=> d!1270160 m!4913215))

(assert (=> b!4319919 m!4913611))

(assert (=> b!4319919 m!4913611))

(declare-fun m!4913621 () Bool)

(assert (=> b!4319919 m!4913621))

(declare-fun m!4913623 () Bool)

(assert (=> b!4319916 m!4913623))

(assert (=> b!4319615 d!1270160))

(declare-fun d!1270162 () Bool)

(declare-fun res!1770430 () Bool)

(declare-fun e!2687535 () Bool)

(assert (=> d!1270162 (=> res!1770430 e!2687535)))

(assert (=> d!1270162 (= res!1770430 ((_ is Nil!48358) (t!355351 (t!355351 (toList!2537 lt!1537605)))))))

(assert (=> d!1270162 (= (forall!8800 (t!355351 (t!355351 (toList!2537 lt!1537605))) lambda!133648) e!2687535)))

(declare-fun b!4319925 () Bool)

(declare-fun e!2687536 () Bool)

(assert (=> b!4319925 (= e!2687535 e!2687536)))

(declare-fun res!1770431 () Bool)

(assert (=> b!4319925 (=> (not res!1770431) (not e!2687536))))

(assert (=> b!4319925 (= res!1770431 (dynLambda!20499 lambda!133648 (h!53815 (t!355351 (t!355351 (toList!2537 lt!1537605))))))))

(declare-fun b!4319926 () Bool)

(assert (=> b!4319926 (= e!2687536 (forall!8800 (t!355351 (t!355351 (t!355351 (toList!2537 lt!1537605)))) lambda!133648))))

(assert (= (and d!1270162 (not res!1770430)) b!4319925))

(assert (= (and b!4319925 res!1770431) b!4319926))

(declare-fun b_lambda!127133 () Bool)

(assert (=> (not b_lambda!127133) (not b!4319925)))

(declare-fun m!4913625 () Bool)

(assert (=> b!4319925 m!4913625))

(declare-fun m!4913627 () Bool)

(assert (=> b!4319926 m!4913627))

(assert (=> b!4319248 d!1270162))

(assert (=> b!4319459 d!1270038))

(declare-fun d!1270164 () Bool)

(declare-fun e!2687537 () Bool)

(assert (=> d!1270164 e!2687537))

(declare-fun res!1770432 () Bool)

(assert (=> d!1270164 (=> res!1770432 e!2687537)))

(declare-fun lt!1538211 () Bool)

(assert (=> d!1270164 (= res!1770432 (not lt!1538211))))

(declare-fun lt!1538210 () Bool)

(assert (=> d!1270164 (= lt!1538211 lt!1538210)))

(declare-fun lt!1538213 () Unit!67649)

(declare-fun e!2687538 () Unit!67649)

(assert (=> d!1270164 (= lt!1538213 e!2687538)))

(declare-fun c!734636 () Bool)

(assert (=> d!1270164 (= c!734636 lt!1538210)))

(assert (=> d!1270164 (= lt!1538210 (containsKey!394 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))

(assert (=> d!1270164 (= (contains!10396 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608) lt!1538211)))

(declare-fun b!4319927 () Bool)

(declare-fun lt!1538212 () Unit!67649)

(assert (=> b!4319927 (= e!2687538 lt!1538212)))

(assert (=> b!4319927 (= lt!1538212 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))

(assert (=> b!4319927 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))

(declare-fun b!4319928 () Bool)

(declare-fun Unit!67702 () Unit!67649)

(assert (=> b!4319928 (= e!2687538 Unit!67702)))

(declare-fun b!4319929 () Bool)

(assert (=> b!4319929 (= e!2687537 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)))))

(assert (= (and d!1270164 c!734636) b!4319927))

(assert (= (and d!1270164 (not c!734636)) b!4319928))

(assert (= (and d!1270164 (not res!1770432)) b!4319929))

(declare-fun m!4913629 () Bool)

(assert (=> d!1270164 m!4913629))

(declare-fun m!4913631 () Bool)

(assert (=> b!4319927 m!4913631))

(assert (=> b!4319927 m!4913031))

(assert (=> b!4319927 m!4913031))

(declare-fun m!4913633 () Bool)

(assert (=> b!4319927 m!4913633))

(assert (=> b!4319929 m!4913031))

(assert (=> b!4319929 m!4913031))

(assert (=> b!4319929 m!4913633))

(assert (=> d!1269930 d!1270164))

(assert (=> d!1269930 d!1269992))

(assert (=> d!1269930 d!1270062))

(assert (=> b!4319224 d!1270032))

(assert (=> b!4319224 d!1270034))

(declare-fun d!1270166 () Bool)

(declare-fun res!1770433 () Bool)

(declare-fun e!2687539 () Bool)

(assert (=> d!1270166 (=> res!1770433 e!2687539)))

(assert (=> d!1270166 (= res!1770433 (and ((_ is Cons!48357) (toList!2538 (map!10381 thiss!42308))) (= (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308)))) key!2048)))))

(assert (=> d!1270166 (= (containsKey!395 (toList!2538 (map!10381 thiss!42308)) key!2048) e!2687539)))

(declare-fun b!4319930 () Bool)

(declare-fun e!2687540 () Bool)

(assert (=> b!4319930 (= e!2687539 e!2687540)))

(declare-fun res!1770434 () Bool)

(assert (=> b!4319930 (=> (not res!1770434) (not e!2687540))))

(assert (=> b!4319930 (= res!1770434 ((_ is Cons!48357) (toList!2538 (map!10381 thiss!42308))))))

(declare-fun b!4319931 () Bool)

(assert (=> b!4319931 (= e!2687540 (containsKey!395 (t!355350 (toList!2538 (map!10381 thiss!42308))) key!2048))))

(assert (= (and d!1270166 (not res!1770433)) b!4319930))

(assert (= (and b!4319930 res!1770434) b!4319931))

(declare-fun m!4913635 () Bool)

(assert (=> b!4319931 m!4913635))

(assert (=> b!4319605 d!1270166))

(declare-fun d!1270168 () Bool)

(assert (=> d!1270168 (containsKey!395 (toList!2538 (map!10381 thiss!42308)) key!2048)))

(declare-fun lt!1538214 () Unit!67649)

(assert (=> d!1270168 (= lt!1538214 (choose!26375 (toList!2538 (map!10381 thiss!42308)) key!2048))))

(assert (=> d!1270168 (invariantList!598 (toList!2538 (map!10381 thiss!42308)))))

(assert (=> d!1270168 (= (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (map!10381 thiss!42308)) key!2048) lt!1538214)))

(declare-fun bs!606309 () Bool)

(assert (= bs!606309 d!1270168))

(assert (=> bs!606309 m!4913123))

(declare-fun m!4913637 () Bool)

(assert (=> bs!606309 m!4913637))

(assert (=> bs!606309 m!4913523))

(assert (=> b!4319605 d!1270168))

(declare-fun b!4319974 () Bool)

(declare-fun e!2687578 () ListLongMap!1153)

(declare-fun call!299296 () ListLongMap!1153)

(assert (=> b!4319974 (= e!2687578 call!299296)))

(declare-fun b!4319975 () Bool)

(declare-fun e!2687571 () Bool)

(declare-fun call!299293 () Bool)

(assert (=> b!4319975 (= e!2687571 (not call!299293))))

(declare-fun bm!299285 () Bool)

(declare-fun call!299294 () ListLongMap!1153)

(declare-fun call!299292 () ListLongMap!1153)

(assert (=> bm!299285 (= call!299294 call!299292)))

(declare-fun b!4319976 () Bool)

(declare-fun e!2687569 () ListLongMap!1153)

(assert (=> b!4319976 (= e!2687569 e!2687578)))

(declare-fun c!734654 () Bool)

(assert (=> b!4319976 (= c!734654 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!734652 () Bool)

(declare-fun call!299290 () ListLongMap!1153)

(declare-fun call!299295 () ListLongMap!1153)

(declare-fun bm!299286 () Bool)

(assert (=> bm!299286 (= call!299295 (+!322 (ite c!734652 call!299292 (ite c!734654 call!299294 call!299290)) (ite (or c!734652 c!734654) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4319977 () Bool)

(declare-fun e!2687570 () Unit!67649)

(declare-fun Unit!67703 () Unit!67649)

(assert (=> b!4319977 (= e!2687570 Unit!67703)))

(declare-fun bm!299287 () Bool)

(assert (=> bm!299287 (= call!299290 call!299294)))

(declare-fun b!4319979 () Bool)

(declare-fun e!2687574 () ListLongMap!1153)

(assert (=> b!4319979 (= e!2687574 call!299296)))

(declare-fun b!4319980 () Bool)

(declare-fun e!2687575 () Bool)

(assert (=> b!4319980 (= e!2687575 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000)))))

(declare-fun b!4319981 () Bool)

(declare-fun c!734650 () Bool)

(assert (=> b!4319981 (= c!734650 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4319981 (= e!2687578 e!2687574)))

(declare-fun b!4319982 () Bool)

(assert (=> b!4319982 (= e!2687569 (+!322 call!299295 (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319983 () Bool)

(declare-fun e!2687576 () Bool)

(declare-fun e!2687567 () Bool)

(assert (=> b!4319983 (= e!2687576 e!2687567)))

(declare-fun c!734651 () Bool)

(assert (=> b!4319983 (= c!734651 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4319984 () Bool)

(declare-fun e!2687579 () Bool)

(declare-fun lt!1538268 () ListLongMap!1153)

(assert (=> b!4319984 (= e!2687579 (= (apply!11126 lt!1538268 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000)) (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4319984 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35711 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> b!4319984 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319985 () Bool)

(declare-fun res!1770457 () Bool)

(assert (=> b!4319985 (=> (not res!1770457) (not e!2687576))))

(declare-fun e!2687572 () Bool)

(assert (=> b!4319985 (= res!1770457 e!2687572)))

(declare-fun res!1770458 () Bool)

(assert (=> b!4319985 (=> res!1770458 e!2687572)))

(assert (=> b!4319985 (= res!1770458 (not e!2687575))))

(declare-fun res!1770461 () Bool)

(assert (=> b!4319985 (=> (not res!1770461) (not e!2687575))))

(assert (=> b!4319985 (= res!1770461 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319986 () Bool)

(declare-fun e!2687577 () Bool)

(assert (=> b!4319986 (= e!2687577 (= (apply!11126 lt!1538268 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299288 () Bool)

(declare-fun call!299291 () Bool)

(assert (=> bm!299288 (= call!299291 (contains!10396 lt!1538268 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4319987 () Bool)

(assert (=> b!4319987 (= e!2687567 (not call!299291))))

(declare-fun b!4319988 () Bool)

(declare-fun res!1770454 () Bool)

(assert (=> b!4319988 (=> (not res!1770454) (not e!2687576))))

(assert (=> b!4319988 (= res!1770454 e!2687571)))

(declare-fun c!734649 () Bool)

(assert (=> b!4319988 (= c!734649 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4319989 () Bool)

(declare-fun e!2687568 () Bool)

(assert (=> b!4319989 (= e!2687568 (= (apply!11126 lt!1538268 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299289 () Bool)

(assert (=> bm!299289 (= call!299293 (contains!10396 lt!1538268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299290 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) Int) ListLongMap!1153)

(assert (=> bm!299290 (= call!299292 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4319990 () Bool)

(declare-fun e!2687573 () Bool)

(assert (=> b!4319990 (= e!2687573 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000)))))

(declare-fun b!4319991 () Bool)

(assert (=> b!4319991 (= e!2687572 e!2687579)))

(declare-fun res!1770455 () Bool)

(assert (=> b!4319991 (=> (not res!1770455) (not e!2687579))))

(assert (=> b!4319991 (= res!1770455 (contains!10396 lt!1538268 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000)))))

(assert (=> b!4319991 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4319992 () Bool)

(assert (=> b!4319992 (= e!2687567 e!2687568)))

(declare-fun res!1770456 () Bool)

(assert (=> b!4319992 (= res!1770456 call!299291)))

(assert (=> b!4319992 (=> (not res!1770456) (not e!2687568))))

(declare-fun bm!299291 () Bool)

(assert (=> bm!299291 (= call!299296 call!299295)))

(declare-fun b!4319993 () Bool)

(declare-fun lt!1538265 () Unit!67649)

(assert (=> b!4319993 (= e!2687570 lt!1538265)))

(declare-fun lt!1538275 () ListLongMap!1153)

(assert (=> b!4319993 (= lt!1538275 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538264 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538264 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538274 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538274 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538263 () Unit!67649)

(declare-fun addStillContains!2 (ListLongMap!1153 (_ BitVec 64) List!48481 (_ BitVec 64)) Unit!67649)

(assert (=> b!4319993 (= lt!1538263 (addStillContains!2 lt!1538275 lt!1538264 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538274))))

(assert (=> b!4319993 (contains!10396 (+!322 lt!1538275 (tuple2!47123 lt!1538264 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538274)))

(declare-fun lt!1538276 () Unit!67649)

(assert (=> b!4319993 (= lt!1538276 lt!1538263)))

(declare-fun lt!1538269 () ListLongMap!1153)

(assert (=> b!4319993 (= lt!1538269 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538271 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538271 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538261 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538261 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538262 () Unit!67649)

(declare-fun addApplyDifferent!2 (ListLongMap!1153 (_ BitVec 64) List!48481 (_ BitVec 64)) Unit!67649)

(assert (=> b!4319993 (= lt!1538262 (addApplyDifferent!2 lt!1538269 lt!1538271 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538261))))

(assert (=> b!4319993 (= (apply!11126 (+!322 lt!1538269 (tuple2!47123 lt!1538271 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538261) (apply!11126 lt!1538269 lt!1538261))))

(declare-fun lt!1538277 () Unit!67649)

(assert (=> b!4319993 (= lt!1538277 lt!1538262)))

(declare-fun lt!1538273 () ListLongMap!1153)

(assert (=> b!4319993 (= lt!1538273 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538280 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538280 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538267 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538267 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538259 () Unit!67649)

(assert (=> b!4319993 (= lt!1538259 (addApplyDifferent!2 lt!1538273 lt!1538280 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538267))))

(assert (=> b!4319993 (= (apply!11126 (+!322 lt!1538273 (tuple2!47123 lt!1538280 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538267) (apply!11126 lt!1538273 lt!1538267))))

(declare-fun lt!1538266 () Unit!67649)

(assert (=> b!4319993 (= lt!1538266 lt!1538259)))

(declare-fun lt!1538260 () ListLongMap!1153)

(assert (=> b!4319993 (= lt!1538260 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538270 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538270 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538272 () (_ BitVec 64))

(assert (=> b!4319993 (= lt!1538272 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4319993 (= lt!1538265 (addApplyDifferent!2 lt!1538260 lt!1538270 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538272))))

(assert (=> b!4319993 (= (apply!11126 (+!322 lt!1538260 (tuple2!47123 lt!1538270 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) lt!1538272) (apply!11126 lt!1538260 lt!1538272))))

(declare-fun b!4319994 () Bool)

(assert (=> b!4319994 (= e!2687571 e!2687577)))

(declare-fun res!1770460 () Bool)

(assert (=> b!4319994 (= res!1770460 call!299293)))

(assert (=> b!4319994 (=> (not res!1770460) (not e!2687577))))

(declare-fun d!1270170 () Bool)

(assert (=> d!1270170 e!2687576))

(declare-fun res!1770453 () Bool)

(assert (=> d!1270170 (=> (not res!1770453) (not e!2687576))))

(assert (=> d!1270170 (= res!1770453 (or (bvsge #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun lt!1538278 () ListLongMap!1153)

(assert (=> d!1270170 (= lt!1538268 lt!1538278)))

(declare-fun lt!1538279 () Unit!67649)

(assert (=> d!1270170 (= lt!1538279 e!2687570)))

(declare-fun c!734653 () Bool)

(assert (=> d!1270170 (= c!734653 e!2687573)))

(declare-fun res!1770459 () Bool)

(assert (=> d!1270170 (=> (not res!1770459) (not e!2687573))))

(assert (=> d!1270170 (= res!1770459 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270170 (= lt!1538278 e!2687569)))

(assert (=> d!1270170 (= c!734652 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270170 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270170 (= (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538268)))

(declare-fun b!4319978 () Bool)

(assert (=> b!4319978 (= e!2687574 call!299290)))

(assert (= (and d!1270170 c!734652) b!4319982))

(assert (= (and d!1270170 (not c!734652)) b!4319976))

(assert (= (and b!4319976 c!734654) b!4319974))

(assert (= (and b!4319976 (not c!734654)) b!4319981))

(assert (= (and b!4319981 c!734650) b!4319979))

(assert (= (and b!4319981 (not c!734650)) b!4319978))

(assert (= (or b!4319979 b!4319978) bm!299287))

(assert (= (or b!4319974 bm!299287) bm!299285))

(assert (= (or b!4319974 b!4319979) bm!299291))

(assert (= (or b!4319982 bm!299285) bm!299290))

(assert (= (or b!4319982 bm!299291) bm!299286))

(assert (= (and d!1270170 res!1770459) b!4319990))

(assert (= (and d!1270170 c!734653) b!4319993))

(assert (= (and d!1270170 (not c!734653)) b!4319977))

(assert (= (and d!1270170 res!1770453) b!4319985))

(assert (= (and b!4319985 res!1770461) b!4319980))

(assert (= (and b!4319985 (not res!1770458)) b!4319991))

(assert (= (and b!4319991 res!1770455) b!4319984))

(assert (= (and b!4319985 res!1770457) b!4319988))

(assert (= (and b!4319988 c!734649) b!4319994))

(assert (= (and b!4319988 (not c!734649)) b!4319975))

(assert (= (and b!4319994 res!1770460) b!4319986))

(assert (= (or b!4319994 b!4319975) bm!299289))

(assert (= (and b!4319988 res!1770454) b!4319983))

(assert (= (and b!4319983 c!734651) b!4319992))

(assert (= (and b!4319983 (not c!734651)) b!4319987))

(assert (= (and b!4319992 res!1770456) b!4319989))

(assert (= (or b!4319992 b!4319987) bm!299288))

(declare-fun m!4913639 () Bool)

(assert (=> bm!299288 m!4913639))

(assert (=> d!1270170 m!4913293))

(declare-fun m!4913641 () Bool)

(assert (=> b!4319989 m!4913641))

(assert (=> b!4319984 m!4913301))

(assert (=> b!4319984 m!4913301))

(declare-fun m!4913643 () Bool)

(assert (=> b!4319984 m!4913643))

(declare-fun m!4913645 () Bool)

(assert (=> b!4319984 m!4913645))

(declare-fun m!4913647 () Bool)

(assert (=> b!4319986 m!4913647))

(assert (=> b!4319980 m!4913301))

(assert (=> b!4319980 m!4913301))

(declare-fun m!4913649 () Bool)

(assert (=> b!4319980 m!4913649))

(declare-fun m!4913651 () Bool)

(assert (=> bm!299289 m!4913651))

(declare-fun m!4913653 () Bool)

(assert (=> bm!299290 m!4913653))

(assert (=> b!4319990 m!4913301))

(assert (=> b!4319990 m!4913301))

(assert (=> b!4319990 m!4913649))

(declare-fun m!4913655 () Bool)

(assert (=> b!4319993 m!4913655))

(declare-fun m!4913657 () Bool)

(assert (=> b!4319993 m!4913657))

(declare-fun m!4913659 () Bool)

(assert (=> b!4319993 m!4913659))

(declare-fun m!4913661 () Bool)

(assert (=> b!4319993 m!4913661))

(declare-fun m!4913663 () Bool)

(assert (=> b!4319993 m!4913663))

(declare-fun m!4913665 () Bool)

(assert (=> b!4319993 m!4913665))

(declare-fun m!4913667 () Bool)

(assert (=> b!4319993 m!4913667))

(declare-fun m!4913669 () Bool)

(assert (=> b!4319993 m!4913669))

(declare-fun m!4913671 () Bool)

(assert (=> b!4319993 m!4913671))

(declare-fun m!4913673 () Bool)

(assert (=> b!4319993 m!4913673))

(assert (=> b!4319993 m!4913653))

(declare-fun m!4913675 () Bool)

(assert (=> b!4319993 m!4913675))

(declare-fun m!4913677 () Bool)

(assert (=> b!4319993 m!4913677))

(declare-fun m!4913679 () Bool)

(assert (=> b!4319993 m!4913679))

(assert (=> b!4319993 m!4913659))

(declare-fun m!4913681 () Bool)

(assert (=> b!4319993 m!4913681))

(assert (=> b!4319993 m!4913671))

(declare-fun m!4913683 () Bool)

(assert (=> b!4319993 m!4913683))

(assert (=> b!4319993 m!4913667))

(assert (=> b!4319993 m!4913663))

(assert (=> b!4319993 m!4913301))

(assert (=> b!4319991 m!4913301))

(assert (=> b!4319991 m!4913301))

(declare-fun m!4913685 () Bool)

(assert (=> b!4319991 m!4913685))

(declare-fun m!4913687 () Bool)

(assert (=> bm!299286 m!4913687))

(declare-fun m!4913689 () Bool)

(assert (=> b!4319982 m!4913689))

(assert (=> bm!299234 d!1270170))

(declare-fun d!1270172 () Bool)

(declare-fun res!1770462 () Bool)

(declare-fun e!2687580 () Bool)

(assert (=> d!1270172 (=> res!1770462 e!2687580)))

(assert (=> d!1270172 (= res!1770462 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) key!2048)))))

(assert (=> d!1270172 (= (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048) e!2687580)))

(declare-fun b!4319995 () Bool)

(declare-fun e!2687581 () Bool)

(assert (=> b!4319995 (= e!2687580 e!2687581)))

(declare-fun res!1770463 () Bool)

(assert (=> b!4319995 (=> (not res!1770463) (not e!2687581))))

(assert (=> b!4319995 (= res!1770463 ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))

(declare-fun b!4319996 () Bool)

(assert (=> b!4319996 (= e!2687581 (containsKey!395 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) key!2048))))

(assert (= (and d!1270172 (not res!1770462)) b!4319995))

(assert (= (and b!4319995 res!1770463) b!4319996))

(declare-fun m!4913691 () Bool)

(assert (=> b!4319996 m!4913691))

(assert (=> d!1269882 d!1270172))

(declare-fun d!1270174 () Bool)

(assert (=> d!1270174 (= (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048)) (not (isEmpty!28111 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))))

(declare-fun bs!606310 () Bool)

(assert (= bs!606310 d!1270174))

(assert (=> bs!606310 m!4912779))

(declare-fun m!4913693 () Bool)

(assert (=> bs!606310 m!4913693))

(assert (=> b!4319228 d!1270174))

(declare-fun d!1270176 () Bool)

(declare-fun c!734655 () Bool)

(assert (=> d!1270176 (= c!734655 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) key!2048)))))

(declare-fun e!2687582 () Option!10295)

(assert (=> d!1270176 (= (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048) e!2687582)))

(declare-fun b!4319998 () Bool)

(declare-fun e!2687583 () Option!10295)

(assert (=> b!4319998 (= e!2687582 e!2687583)))

(declare-fun c!734656 () Bool)

(assert (=> b!4319998 (= c!734656 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (not (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) key!2048))))))

(declare-fun b!4320000 () Bool)

(assert (=> b!4320000 (= e!2687583 None!10294)))

(declare-fun b!4319997 () Bool)

(assert (=> b!4319997 (= e!2687582 (Some!10294 (_2!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))))))

(declare-fun b!4319999 () Bool)

(assert (=> b!4319999 (= e!2687583 (getValueByKey!294 (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) key!2048))))

(assert (= (and d!1270176 c!734655) b!4319997))

(assert (= (and d!1270176 (not c!734655)) b!4319998))

(assert (= (and b!4319998 c!734656) b!4319999))

(assert (= (and b!4319998 (not c!734656)) b!4320000))

(declare-fun m!4913695 () Bool)

(assert (=> b!4319999 m!4913695))

(assert (=> b!4319228 d!1270176))

(declare-fun bs!606311 () Bool)

(declare-fun b!4320002 () Bool)

(assert (= bs!606311 (and b!4320002 b!4319851)))

(declare-fun lambda!133740 () Int)

(assert (=> bs!606311 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133740 lambda!133734))))

(declare-fun bs!606312 () Bool)

(assert (= bs!606312 (and b!4320002 b!4319916)))

(assert (=> bs!606312 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133740 lambda!133738))))

(declare-fun bs!606313 () Bool)

(assert (= bs!606313 (and b!4320002 b!4319673)))

(assert (=> bs!606313 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133740 lambda!133714))))

(declare-fun bs!606314 () Bool)

(assert (= bs!606314 (and b!4320002 b!4319854)))

(assert (=> bs!606314 (= (= (toList!2538 (map!10381 thiss!42308)) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133740 lambda!133732))))

(declare-fun bs!606315 () Bool)

(assert (= bs!606315 (and b!4320002 b!4319858)))

(assert (=> bs!606315 (= (= (toList!2538 (map!10381 thiss!42308)) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133740 lambda!133733))))

(declare-fun bs!606316 () Bool)

(assert (= bs!606316 (and b!4320002 b!4319728)))

(assert (=> bs!606316 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133740 lambda!133716))))

(declare-fun bs!606317 () Bool)

(assert (= bs!606317 (and b!4320002 b!4319919)))

(assert (=> bs!606317 (= (= (toList!2538 (map!10381 thiss!42308)) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133740 lambda!133736))))

(declare-fun bs!606318 () Bool)

(assert (= bs!606318 (and b!4320002 b!4319923)))

(assert (=> bs!606318 (= (= (toList!2538 (map!10381 thiss!42308)) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))) (= lambda!133740 lambda!133737))))

(assert (=> b!4320002 true))

(declare-fun bs!606319 () Bool)

(declare-fun b!4320003 () Bool)

(assert (= bs!606319 (and b!4320003 b!4319674)))

(declare-fun lambda!133741 () Int)

(assert (=> bs!606319 (= lambda!133741 lambda!133715)))

(declare-fun bs!606320 () Bool)

(assert (= bs!606320 (and b!4320003 b!4319729)))

(assert (=> bs!606320 (= lambda!133741 lambda!133717)))

(declare-fun bs!606321 () Bool)

(assert (= bs!606321 (and b!4320003 b!4319852)))

(assert (=> bs!606321 (= lambda!133741 lambda!133735)))

(declare-fun bs!606322 () Bool)

(assert (= bs!606322 (and b!4320003 b!4319917)))

(assert (=> bs!606322 (= lambda!133741 lambda!133739)))

(declare-fun d!1270178 () Bool)

(declare-fun e!2687584 () Bool)

(assert (=> d!1270178 e!2687584))

(declare-fun res!1770465 () Bool)

(assert (=> d!1270178 (=> (not res!1770465) (not e!2687584))))

(declare-fun lt!1538281 () List!48483)

(assert (=> d!1270178 (= res!1770465 (noDuplicate!586 lt!1538281))))

(assert (=> d!1270178 (= lt!1538281 (getKeysList!55 (toList!2538 (map!10381 thiss!42308))))))

(assert (=> d!1270178 (= (keys!16162 (map!10381 thiss!42308)) lt!1538281)))

(declare-fun b!4320001 () Bool)

(declare-fun res!1770466 () Bool)

(assert (=> b!4320001 (=> (not res!1770466) (not e!2687584))))

(assert (=> b!4320001 (= res!1770466 (= (length!28 lt!1538281) (length!29 (toList!2538 (map!10381 thiss!42308)))))))

(declare-fun res!1770464 () Bool)

(assert (=> b!4320002 (=> (not res!1770464) (not e!2687584))))

(assert (=> b!4320002 (= res!1770464 (forall!8802 lt!1538281 lambda!133740))))

(assert (=> b!4320003 (= e!2687584 (= (content!7568 lt!1538281) (content!7568 (map!10383 (toList!2538 (map!10381 thiss!42308)) lambda!133741))))))

(assert (= (and d!1270178 res!1770465) b!4320001))

(assert (= (and b!4320001 res!1770466) b!4320002))

(assert (= (and b!4320002 res!1770464) b!4320003))

(declare-fun m!4913697 () Bool)

(assert (=> d!1270178 m!4913697))

(assert (=> d!1270178 m!4913137))

(declare-fun m!4913699 () Bool)

(assert (=> b!4320001 m!4913699))

(declare-fun m!4913701 () Bool)

(assert (=> b!4320001 m!4913701))

(declare-fun m!4913703 () Bool)

(assert (=> b!4320002 m!4913703))

(declare-fun m!4913705 () Bool)

(assert (=> b!4320003 m!4913705))

(declare-fun m!4913707 () Bool)

(assert (=> b!4320003 m!4913707))

(assert (=> b!4320003 m!4913707))

(declare-fun m!4913709 () Bool)

(assert (=> b!4320003 m!4913709))

(assert (=> b!4319609 d!1270178))

(declare-fun lt!1538363 () (_ BitVec 64))

(declare-fun c!734671 () Bool)

(declare-fun lt!1538354 () (_ BitVec 64))

(declare-fun lt!1538348 () ListLongMap!1153)

(declare-fun call!299323 () ListLongMap!1153)

(declare-fun bm!299318 () Bool)

(declare-fun lt!1538358 () ListLongMap!1153)

(declare-fun lt!1538377 () List!48481)

(assert (=> bm!299318 (= call!299323 (+!322 (ite c!734671 lt!1538358 lt!1538348) (ite c!734671 (tuple2!47123 lt!1538354 lt!1538377) (tuple2!47123 lt!1538363 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4320032 () Bool)

(declare-fun e!2687608 () Bool)

(assert (=> b!4320032 (= e!2687608 (ite (= lt!1538354 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1538356 () tuple2!47126)

(declare-fun c!734669 () Bool)

(declare-fun bm!299319 () Bool)

(declare-fun call!299331 () tuple2!47126)

(assert (=> bm!299319 (= call!299331 (repackFrom!12 (v!42703 (underlying!9716 thiss!42308)) (ite c!734669 (_2!26848 lt!1538356) (v!42702 (_2!26850 lt!1537839))) (bvsub (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun bm!299320 () Bool)

(declare-fun call!299333 () ListLongMap!1153)

(assert (=> bm!299320 (= call!299333 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (bvadd (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320033 () Bool)

(declare-fun e!2687604 () tuple2!47126)

(assert (=> b!4320033 (= e!2687604 (tuple2!47127 false (_2!26848 lt!1538356)))))

(declare-fun call!299328 () ListLongMap!1153)

(declare-fun lt!1538347 () (_ BitVec 64))

(declare-fun call!299325 () ListLongMap!1153)

(declare-fun call!299324 () ListLongMap!1153)

(declare-fun bm!299321 () Bool)

(assert (=> bm!299321 (= call!299328 (+!322 (ite c!734671 call!299324 call!299325) (ite c!734671 (tuple2!47123 lt!1538347 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1538354 lt!1538377))))))

(declare-fun b!4320034 () Bool)

(declare-fun e!2687606 () Bool)

(declare-fun lt!1538346 () tuple2!47126)

(assert (=> b!4320034 (= e!2687606 (= (map!10382 (_2!26848 lt!1538346)) (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4320034 ((_ is LongMap!4743) (v!42703 (underlying!9716 thiss!42308)))))

(declare-fun d!1270180 () Bool)

(declare-fun e!2687603 () Bool)

(assert (=> d!1270180 e!2687603))

(declare-fun res!1770471 () Bool)

(assert (=> d!1270180 (=> res!1770471 e!2687603)))

(assert (=> d!1270180 (= res!1770471 (not (_1!26848 lt!1538346)))))

(declare-fun e!2687602 () tuple2!47126)

(assert (=> d!1270180 (= lt!1538346 e!2687602)))

(assert (=> d!1270180 (= c!734669 (and (not (= lt!1538354 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1538354 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1538373 () ListLongMap!1153)

(assert (=> d!1270180 (= lt!1538373 (map!10382 (v!42702 (_2!26850 lt!1537839))))))

(assert (=> d!1270180 (= lt!1538377 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001)))))

(assert (=> d!1270180 (= lt!1538354 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001)))))

(assert (=> d!1270180 (valid!3753 (v!42703 (underlying!9716 thiss!42308)))))

(assert (=> d!1270180 (= (repackFrom!12 (v!42703 (underlying!9716 thiss!42308)) (v!42702 (_2!26850 lt!1537839)) (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001)) lt!1538346)))

(declare-fun b!4320035 () Bool)

(declare-fun e!2687605 () tuple2!47126)

(assert (=> b!4320035 (= e!2687605 (tuple2!47127 true (v!42702 (_2!26850 lt!1537839))))))

(declare-fun b!4320036 () Bool)

(declare-fun e!2687607 () tuple2!47126)

(assert (=> b!4320036 (= e!2687607 (tuple2!47127 true (_2!26848 lt!1538356)))))

(declare-fun lt!1538353 () ListLongMap!1153)

(assert (=> b!4320036 (= lt!1538353 call!299333)))

(declare-fun lt!1538350 () (_ BitVec 64))

(assert (=> b!4320036 (= lt!1538350 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538352 () Unit!67649)

(declare-fun call!299327 () Unit!67649)

(assert (=> b!4320036 (= lt!1538352 call!299327)))

(declare-fun call!299329 () ListLongMap!1153)

(assert (=> b!4320036 (= call!299329 call!299328)))

(declare-fun lt!1538364 () Unit!67649)

(assert (=> b!4320036 (= lt!1538364 lt!1538352)))

(declare-fun call!299330 () ListLongMap!1153)

(assert (=> b!4320036 (= lt!1538348 call!299330)))

(assert (=> b!4320036 (= lt!1538363 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538368 () Unit!67649)

(declare-fun call!299334 () Unit!67649)

(assert (=> b!4320036 (= lt!1538368 call!299334)))

(declare-fun call!299332 () ListLongMap!1153)

(declare-fun call!299335 () ListLongMap!1153)

(assert (=> b!4320036 (= call!299332 call!299335)))

(declare-fun lt!1538357 () Unit!67649)

(assert (=> b!4320036 (= lt!1538357 lt!1538368)))

(declare-fun b!4320037 () Bool)

(assert (=> b!4320037 (= c!734671 (bvsgt (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!4320037 (= e!2687604 e!2687607)))

(declare-fun b!4320038 () Bool)

(assert (=> b!4320038 false))

(declare-fun lt!1538365 () Unit!67649)

(declare-fun lt!1538376 () Unit!67649)

(assert (=> b!4320038 (= lt!1538365 lt!1538376)))

(declare-fun lt!1538371 () (_ BitVec 32))

(assert (=> b!4320038 (not (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538354 lt!1538371))))

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!17186 (_ BitVec 32) (_ BitVec 64) List!48484) Unit!67649)

(assert (=> b!4320038 (= lt!1538376 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538371 lt!1538354 (Cons!48360 lt!1538354 Nil!48360)))))

(assert (=> b!4320038 (= lt!1538371 (bvadd (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun lt!1538372 () Unit!67649)

(declare-fun lt!1538349 () Unit!67649)

(assert (=> b!4320038 (= lt!1538372 lt!1538349)))

(assert (=> b!4320038 (arrayNoDuplicates!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) Nil!48360)))

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!17186 (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> b!4320038 (= lt!1538349 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001)))))

(declare-fun lt!1538369 () Unit!67649)

(declare-fun lt!1538351 () Unit!67649)

(assert (=> b!4320038 (= lt!1538369 lt!1538351)))

(assert (=> b!4320038 e!2687608))

(declare-fun c!734672 () Bool)

(assert (=> b!4320038 (= c!734672 (and (not (= lt!1538354 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1538354 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!1538359 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!2 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) (_ BitVec 32) Int) Unit!67649)

(assert (=> b!4320038 (= lt!1538351 (lemmaListMapContainsThenArrayContainsFrom!2 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538354 lt!1538359 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4320038 (= lt!1538359 (bvadd (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001))))

(declare-fun e!2687601 () Unit!67649)

(declare-fun Unit!67704 () Unit!67649)

(assert (=> b!4320038 (= e!2687601 Unit!67704)))

(declare-fun lt!1538375 () (_ BitVec 64))

(declare-fun bm!299322 () Bool)

(declare-fun addCommutativeForDiffKeys!3 (ListLongMap!1153 (_ BitVec 64) List!48481 (_ BitVec 64) List!48481) Unit!67649)

(assert (=> bm!299322 (= call!299327 (addCommutativeForDiffKeys!3 (ite c!734671 lt!1538358 lt!1538353) lt!1538354 lt!1538377 (ite c!734671 lt!1538375 lt!1538350) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320039 () Bool)

(assert (=> b!4320039 (= e!2687602 e!2687604)))

(assert (=> b!4320039 (= lt!1538356 (update!519 (v!42702 (_2!26850 lt!1537839)) lt!1538354 lt!1538377))))

(declare-fun c!734673 () Bool)

(assert (=> b!4320039 (= c!734673 (contains!10396 lt!1538373 lt!1538354))))

(declare-fun lt!1538374 () Unit!67649)

(assert (=> b!4320039 (= lt!1538374 e!2687601)))

(declare-fun c!734670 () Bool)

(assert (=> b!4320039 (= c!734670 (_1!26848 lt!1538356))))

(declare-fun b!4320040 () Bool)

(declare-fun lt!1538360 () tuple2!47126)

(assert (=> b!4320040 (= e!2687607 (tuple2!47127 (_1!26848 lt!1538360) (_2!26848 lt!1538360)))))

(assert (=> b!4320040 (= lt!1538358 call!299333)))

(assert (=> b!4320040 (= lt!1538375 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538367 () Unit!67649)

(assert (=> b!4320040 (= lt!1538367 call!299327)))

(assert (=> b!4320040 (= call!299329 call!299330)))

(declare-fun lt!1538370 () Unit!67649)

(assert (=> b!4320040 (= lt!1538370 lt!1538367)))

(declare-fun lt!1538366 () ListLongMap!1153)

(assert (=> b!4320040 (= lt!1538366 call!299335)))

(assert (=> b!4320040 (= lt!1538347 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538362 () Unit!67649)

(assert (=> b!4320040 (= lt!1538362 call!299334)))

(assert (=> b!4320040 (= call!299328 call!299332)))

(declare-fun lt!1538355 () Unit!67649)

(assert (=> b!4320040 (= lt!1538355 lt!1538362)))

(assert (=> b!4320040 (= lt!1538360 call!299331)))

(declare-fun b!4320041 () Bool)

(assert (=> b!4320041 (= e!2687608 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1538354 lt!1538359))))

(declare-fun bm!299323 () Bool)

(assert (=> bm!299323 (= call!299334 (addCommutativeForDiffKeys!3 (ite c!734671 lt!1538366 lt!1538348) lt!1538354 lt!1538377 (ite c!734671 lt!1538347 lt!1538363) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320042 () Bool)

(declare-fun Unit!67705 () Unit!67649)

(assert (=> b!4320042 (= e!2687601 Unit!67705)))

(declare-fun bm!299324 () Bool)

(assert (=> bm!299324 (= call!299335 (+!322 (ite c!734671 call!299333 call!299323) (ite c!734671 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1538354 lt!1538377))))))

(declare-fun b!4320043 () Bool)

(assert (=> b!4320043 (= e!2687602 e!2687605)))

(declare-fun c!734674 () Bool)

(assert (=> b!4320043 (= c!734674 (bvsgt (bvsub (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!299325 () Bool)

(assert (=> bm!299325 (= call!299329 (+!322 (ite c!734671 call!299323 call!299324) (ite c!734671 (tuple2!47123 lt!1538375 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1538350 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun bm!299326 () Bool)

(assert (=> bm!299326 (= call!299324 (+!322 (ite c!734671 lt!1538366 lt!1538353) (tuple2!47123 lt!1538354 lt!1538377)))))

(declare-fun bm!299327 () Bool)

(declare-fun call!299326 () ListLongMap!1153)

(assert (=> bm!299327 (= call!299326 (+!322 (ite c!734671 lt!1538366 lt!1538348) (ite c!734671 (tuple2!47123 lt!1538347 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1538354 lt!1538377))))))

(declare-fun b!4320044 () Bool)

(declare-fun lt!1538361 () tuple2!47126)

(assert (=> b!4320044 (= lt!1538361 call!299331)))

(assert (=> b!4320044 (= e!2687605 (tuple2!47127 (_1!26848 lt!1538361) (_2!26848 lt!1538361)))))

(declare-fun bm!299328 () Bool)

(assert (=> bm!299328 (= call!299332 (+!322 call!299326 (ite c!734671 (tuple2!47123 lt!1538354 lt!1538377) (tuple2!47123 lt!1538363 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4320045 () Bool)

(assert (=> b!4320045 (= e!2687603 e!2687606)))

(declare-fun res!1770472 () Bool)

(assert (=> b!4320045 (=> (not res!1770472) (not e!2687606))))

(assert (=> b!4320045 (= res!1770472 (valid!3754 (_2!26848 lt!1538346)))))

(declare-fun bm!299329 () Bool)

(assert (=> bm!299329 (= call!299325 (+!322 (ite c!734671 lt!1538358 lt!1538353) (ite c!734671 (tuple2!47123 lt!1538375 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 lt!1538350 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun bm!299330 () Bool)

(assert (=> bm!299330 (= call!299330 (+!322 (ite c!734671 call!299325 call!299333) (ite c!734671 (tuple2!47123 lt!1538354 lt!1538377) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (= (and d!1270180 c!734669) b!4320039))

(assert (= (and d!1270180 (not c!734669)) b!4320043))

(assert (= (and b!4320039 c!734673) b!4320038))

(assert (= (and b!4320039 (not c!734673)) b!4320042))

(assert (= (and b!4320038 c!734672) b!4320041))

(assert (= (and b!4320038 (not c!734672)) b!4320032))

(assert (= (and b!4320039 c!734670) b!4320037))

(assert (= (and b!4320039 (not c!734670)) b!4320033))

(assert (= (and b!4320037 c!734671) b!4320040))

(assert (= (and b!4320037 (not c!734671)) b!4320036))

(assert (= (or b!4320040 b!4320036) bm!299327))

(assert (= (or b!4320040 b!4320036) bm!299329))

(assert (= (or b!4320040 b!4320036) bm!299326))

(assert (= (or b!4320040 b!4320036) bm!299323))

(assert (= (or b!4320040 b!4320036) bm!299320))

(assert (= (or b!4320040 b!4320036) bm!299322))

(assert (= (or b!4320040 b!4320036) bm!299318))

(assert (= (or b!4320040 b!4320036) bm!299321))

(assert (= (or b!4320040 b!4320036) bm!299324))

(assert (= (or b!4320040 b!4320036) bm!299330))

(assert (= (or b!4320040 b!4320036) bm!299325))

(assert (= (or b!4320040 b!4320036) bm!299328))

(assert (= (and b!4320043 c!734674) b!4320044))

(assert (= (and b!4320043 (not c!734674)) b!4320035))

(assert (= (or b!4320040 b!4320044) bm!299319))

(assert (= (and d!1270180 (not res!1770471)) b!4320045))

(assert (= (and b!4320045 res!1770472) b!4320034))

(declare-fun m!4913711 () Bool)

(assert (=> bm!299324 m!4913711))

(declare-fun m!4913713 () Bool)

(assert (=> bm!299323 m!4913713))

(declare-fun m!4913715 () Bool)

(assert (=> bm!299328 m!4913715))

(declare-fun m!4913717 () Bool)

(assert (=> b!4320045 m!4913717))

(declare-fun m!4913719 () Bool)

(assert (=> b!4320041 m!4913719))

(declare-fun m!4913721 () Bool)

(assert (=> bm!299319 m!4913721))

(declare-fun m!4913723 () Bool)

(assert (=> bm!299318 m!4913723))

(declare-fun m!4913725 () Bool)

(assert (=> bm!299322 m!4913725))

(declare-fun m!4913727 () Bool)

(assert (=> bm!299320 m!4913727))

(declare-fun m!4913729 () Bool)

(assert (=> bm!299321 m!4913729))

(declare-fun m!4913731 () Bool)

(assert (=> bm!299330 m!4913731))

(declare-fun m!4913733 () Bool)

(assert (=> b!4320038 m!4913733))

(declare-fun m!4913735 () Bool)

(assert (=> b!4320038 m!4913735))

(declare-fun m!4913737 () Bool)

(assert (=> b!4320038 m!4913737))

(declare-fun m!4913739 () Bool)

(assert (=> b!4320038 m!4913739))

(declare-fun m!4913741 () Bool)

(assert (=> b!4320038 m!4913741))

(declare-fun m!4913743 () Bool)

(assert (=> b!4320039 m!4913743))

(declare-fun m!4913745 () Bool)

(assert (=> b!4320039 m!4913745))

(declare-fun m!4913747 () Bool)

(assert (=> bm!299329 m!4913747))

(declare-fun m!4913749 () Bool)

(assert (=> b!4320034 m!4913749))

(assert (=> b!4320034 m!4912731))

(declare-fun m!4913751 () Bool)

(assert (=> bm!299326 m!4913751))

(declare-fun m!4913753 () Bool)

(assert (=> bm!299325 m!4913753))

(declare-fun m!4913755 () Bool)

(assert (=> bm!299327 m!4913755))

(declare-fun m!4913757 () Bool)

(assert (=> d!1270180 m!4913757))

(declare-fun m!4913759 () Bool)

(assert (=> d!1270180 m!4913759))

(declare-fun m!4913761 () Bool)

(assert (=> d!1270180 m!4913761))

(assert (=> d!1270180 m!4912655))

(assert (=> b!4319399 d!1270180))

(declare-fun d!1270182 () Bool)

(assert (=> d!1270182 (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537603))) (hash!1157 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537603))))))

(declare-fun bs!606323 () Bool)

(assert (= bs!606323 d!1270182))

(declare-fun m!4913763 () Bool)

(assert (=> bs!606323 m!4913763))

(assert (=> bs!606185 d!1270182))

(declare-fun d!1270184 () Bool)

(assert (=> d!1270184 (= (apply!11126 (ite c!734554 call!299249 call!299252) lt!1537608) (get!15666 (getValueByKey!293 (toList!2537 (ite c!734554 call!299249 call!299252)) lt!1537608)))))

(declare-fun bs!606324 () Bool)

(assert (= bs!606324 d!1270184))

(declare-fun m!4913765 () Bool)

(assert (=> bs!606324 m!4913765))

(assert (=> bs!606324 m!4913765))

(declare-fun m!4913767 () Bool)

(assert (=> bs!606324 m!4913767))

(assert (=> bm!299244 d!1270184))

(declare-fun d!1270186 () Bool)

(assert (=> d!1270186 (= (map!10382 (_2!26848 lt!1537809)) (getCurrentListMap!23 (_keys!5043 (_2!26848 lt!1537809)) (_values!5024 (_2!26848 lt!1537809)) (mask!13343 (_2!26848 lt!1537809)) (extraKeys!4992 (_2!26848 lt!1537809)) (zeroValue!5002 (_2!26848 lt!1537809)) (minValue!5002 (_2!26848 lt!1537809)) #b00000000000000000000000000000000 (defaultEntry!5128 (_2!26848 lt!1537809))))))

(declare-fun bs!606325 () Bool)

(assert (= bs!606325 d!1270186))

(declare-fun m!4913769 () Bool)

(assert (=> bs!606325 m!4913769))

(assert (=> bm!299201 d!1270186))

(declare-fun d!1270188 () Bool)

(declare-fun res!1770473 () Bool)

(declare-fun e!2687609 () Bool)

(assert (=> d!1270188 (=> res!1770473 e!2687609)))

(assert (=> d!1270188 (= res!1770473 (and ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (= (_1!26845 (h!53814 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) key!2048)))))

(assert (=> d!1270188 (= (containsKey!393 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048) e!2687609)))

(declare-fun b!4320046 () Bool)

(declare-fun e!2687610 () Bool)

(assert (=> b!4320046 (= e!2687609 e!2687610)))

(declare-fun res!1770474 () Bool)

(assert (=> b!4320046 (=> (not res!1770474) (not e!2687610))))

(assert (=> b!4320046 (= res!1770474 ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(declare-fun b!4320047 () Bool)

(assert (=> b!4320047 (= e!2687610 (containsKey!393 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) key!2048))))

(assert (= (and d!1270188 (not res!1770473)) b!4320046))

(assert (= (and b!4320046 res!1770474) b!4320047))

(declare-fun m!4913771 () Bool)

(assert (=> b!4320047 m!4913771))

(assert (=> b!4319488 d!1270188))

(declare-fun d!1270190 () Bool)

(declare-fun e!2687611 () Bool)

(assert (=> d!1270190 e!2687611))

(declare-fun res!1770475 () Bool)

(assert (=> d!1270190 (=> res!1770475 e!2687611)))

(declare-fun lt!1538379 () Bool)

(assert (=> d!1270190 (= res!1770475 (not lt!1538379))))

(declare-fun lt!1538378 () Bool)

(assert (=> d!1270190 (= lt!1538379 lt!1538378)))

(declare-fun lt!1538381 () Unit!67649)

(declare-fun e!2687612 () Unit!67649)

(assert (=> d!1270190 (= lt!1538381 e!2687612)))

(declare-fun c!734675 () Bool)

(assert (=> d!1270190 (= c!734675 lt!1538378)))

(assert (=> d!1270190 (= lt!1538378 (containsKey!394 (toList!2537 call!299239) (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608)))))

(assert (=> d!1270190 (= (contains!10396 call!299239 (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608)) lt!1538379)))

(declare-fun b!4320048 () Bool)

(declare-fun lt!1538380 () Unit!67649)

(assert (=> b!4320048 (= e!2687612 lt!1538380)))

(assert (=> b!4320048 (= lt!1538380 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299239) (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608)))))

(assert (=> b!4320048 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299239) (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608)))))

(declare-fun b!4320049 () Bool)

(declare-fun Unit!67706 () Unit!67649)

(assert (=> b!4320049 (= e!2687612 Unit!67706)))

(declare-fun b!4320050 () Bool)

(assert (=> b!4320050 (= e!2687611 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299239) (ite c!734527 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916)) lt!1537608))))))

(assert (= (and d!1270190 c!734675) b!4320048))

(assert (= (and d!1270190 (not c!734675)) b!4320049))

(assert (= (and d!1270190 (not res!1770475)) b!4320050))

(declare-fun m!4913773 () Bool)

(assert (=> d!1270190 m!4913773))

(declare-fun m!4913775 () Bool)

(assert (=> b!4320048 m!4913775))

(declare-fun m!4913777 () Bool)

(assert (=> b!4320048 m!4913777))

(assert (=> b!4320048 m!4913777))

(declare-fun m!4913779 () Bool)

(assert (=> b!4320048 m!4913779))

(assert (=> b!4320050 m!4913777))

(assert (=> b!4320050 m!4913777))

(assert (=> b!4320050 m!4913779))

(assert (=> bm!299233 d!1270190))

(declare-fun d!1270192 () Bool)

(assert (=> d!1270192 (= (get!15666 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143)) (v!42709 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143)))))

(assert (=> d!1269918 d!1270192))

(assert (=> d!1269918 d!1270092))

(declare-fun d!1270194 () Bool)

(declare-fun e!2687615 () Bool)

(assert (=> d!1270194 e!2687615))

(declare-fun res!1770480 () Bool)

(assert (=> d!1270194 (=> (not res!1770480) (not e!2687615))))

(declare-fun lt!1538387 () SeekEntryResult!20)

(assert (=> d!1270194 (= res!1770480 ((_ is Found!20) lt!1538387))))

(assert (=> d!1270194 (= lt!1538387 (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538386 () Unit!67649)

(declare-fun choose!26382 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) Int) Unit!67649)

(assert (=> d!1270194 (= lt!1538386 (choose!26382 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270194 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270194 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538386)))

(declare-fun b!4320055 () Bool)

(declare-fun res!1770481 () Bool)

(assert (=> b!4320055 (=> (not res!1770481) (not e!2687615))))

(assert (=> b!4320055 (= res!1770481 (inRange!0 (index!1459 lt!1538387) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320056 () Bool)

(assert (=> b!4320056 (= e!2687615 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1538387)) lt!1537608))))

(assert (=> b!4320056 (and (bvsge (index!1459 lt!1538387) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1538387) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (= (and d!1270194 res!1770480) b!4320055))

(assert (= (and b!4320055 res!1770481) b!4320056))

(assert (=> d!1270194 m!4912855))

(declare-fun m!4913781 () Bool)

(assert (=> d!1270194 m!4913781))

(assert (=> d!1270194 m!4913201))

(declare-fun m!4913783 () Bool)

(assert (=> b!4320055 m!4913783))

(declare-fun m!4913785 () Bool)

(assert (=> b!4320056 m!4913785))

(assert (=> bm!299205 d!1270194))

(declare-fun d!1270196 () Bool)

(assert (=> d!1270196 (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537611))) (hash!1157 (hashF!6889 thiss!42308) (_1!26845 (h!53814 lt!1537611))))))

(declare-fun bs!606326 () Bool)

(assert (= bs!606326 d!1270196))

(declare-fun m!4913787 () Bool)

(assert (=> bs!606326 m!4913787))

(assert (=> bs!606186 d!1270196))

(declare-fun b!4320057 () Bool)

(declare-fun e!2687617 () Bool)

(assert (=> b!4320057 (= e!2687617 (not (containsKey!393 (t!355350 call!299140) key!2048)))))

(declare-fun b!4320058 () Bool)

(declare-fun e!2687620 () Option!10293)

(assert (=> b!4320058 (= e!2687620 None!10292)))

(declare-fun b!4320059 () Bool)

(assert (=> b!4320059 (= e!2687620 (getPair!159 (t!355350 (t!355350 call!299140)) key!2048))))

(declare-fun d!1270198 () Bool)

(declare-fun e!2687619 () Bool)

(assert (=> d!1270198 e!2687619))

(declare-fun res!1770485 () Bool)

(assert (=> d!1270198 (=> res!1770485 e!2687619)))

(assert (=> d!1270198 (= res!1770485 e!2687617)))

(declare-fun res!1770482 () Bool)

(assert (=> d!1270198 (=> (not res!1770482) (not e!2687617))))

(declare-fun lt!1538388 () Option!10293)

(assert (=> d!1270198 (= res!1770482 (isEmpty!28109 lt!1538388))))

(declare-fun e!2687618 () Option!10293)

(assert (=> d!1270198 (= lt!1538388 e!2687618)))

(declare-fun c!734677 () Bool)

(assert (=> d!1270198 (= c!734677 (and ((_ is Cons!48357) (t!355350 call!299140)) (= (_1!26845 (h!53814 (t!355350 call!299140))) key!2048)))))

(assert (=> d!1270198 (noDuplicateKeys!259 (t!355350 call!299140))))

(assert (=> d!1270198 (= (getPair!159 (t!355350 call!299140) key!2048) lt!1538388)))

(declare-fun b!4320060 () Bool)

(declare-fun res!1770483 () Bool)

(declare-fun e!2687616 () Bool)

(assert (=> b!4320060 (=> (not res!1770483) (not e!2687616))))

(assert (=> b!4320060 (= res!1770483 (= (_1!26845 (get!15667 lt!1538388)) key!2048))))

(declare-fun b!4320061 () Bool)

(assert (=> b!4320061 (= e!2687619 e!2687616)))

(declare-fun res!1770484 () Bool)

(assert (=> b!4320061 (=> (not res!1770484) (not e!2687616))))

(assert (=> b!4320061 (= res!1770484 (isDefined!7595 lt!1538388))))

(declare-fun b!4320062 () Bool)

(assert (=> b!4320062 (= e!2687616 (contains!10401 (t!355350 call!299140) (get!15667 lt!1538388)))))

(declare-fun b!4320063 () Bool)

(assert (=> b!4320063 (= e!2687618 e!2687620)))

(declare-fun c!734676 () Bool)

(assert (=> b!4320063 (= c!734676 ((_ is Cons!48357) (t!355350 call!299140)))))

(declare-fun b!4320064 () Bool)

(assert (=> b!4320064 (= e!2687618 (Some!10292 (h!53814 (t!355350 call!299140))))))

(assert (= (and d!1270198 c!734677) b!4320064))

(assert (= (and d!1270198 (not c!734677)) b!4320063))

(assert (= (and b!4320063 c!734676) b!4320059))

(assert (= (and b!4320063 (not c!734676)) b!4320058))

(assert (= (and d!1270198 res!1770482) b!4320057))

(assert (= (and d!1270198 (not res!1770485)) b!4320061))

(assert (= (and b!4320061 res!1770484) b!4320060))

(assert (= (and b!4320060 res!1770483) b!4320062))

(declare-fun m!4913789 () Bool)

(assert (=> b!4320059 m!4913789))

(assert (=> b!4320057 m!4913431))

(declare-fun m!4913791 () Bool)

(assert (=> b!4320062 m!4913791))

(assert (=> b!4320062 m!4913791))

(declare-fun m!4913793 () Bool)

(assert (=> b!4320062 m!4913793))

(declare-fun m!4913795 () Bool)

(assert (=> b!4320061 m!4913795))

(assert (=> b!4320060 m!4913791))

(declare-fun m!4913797 () Bool)

(assert (=> d!1270198 m!4913797))

(assert (=> d!1270198 m!4913359))

(assert (=> b!4319593 d!1270198))

(declare-fun lt!1538389 () Bool)

(declare-fun d!1270200 () Bool)

(assert (=> d!1270200 (= lt!1538389 (select (content!7569 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (get!15667 lt!1537924)))))

(declare-fun e!2687622 () Bool)

(assert (=> d!1270200 (= lt!1538389 e!2687622)))

(declare-fun res!1770486 () Bool)

(assert (=> d!1270200 (=> (not res!1770486) (not e!2687622))))

(assert (=> d!1270200 (= res!1770486 ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(assert (=> d!1270200 (= (contains!10401 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) (get!15667 lt!1537924)) lt!1538389)))

(declare-fun b!4320065 () Bool)

(declare-fun e!2687621 () Bool)

(assert (=> b!4320065 (= e!2687622 e!2687621)))

(declare-fun res!1770487 () Bool)

(assert (=> b!4320065 (=> res!1770487 e!2687621)))

(assert (=> b!4320065 (= res!1770487 (= (h!53814 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (get!15667 lt!1537924)))))

(declare-fun b!4320066 () Bool)

(assert (=> b!4320066 (= e!2687621 (contains!10401 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (get!15667 lt!1537924)))))

(assert (= (and d!1270200 res!1770486) b!4320065))

(assert (= (and b!4320065 (not res!1770487)) b!4320066))

(assert (=> d!1270200 m!4912687))

(declare-fun m!4913799 () Bool)

(assert (=> d!1270200 m!4913799))

(assert (=> d!1270200 m!4912993))

(declare-fun m!4913801 () Bool)

(assert (=> d!1270200 m!4913801))

(assert (=> b!4320066 m!4912993))

(declare-fun m!4913803 () Bool)

(assert (=> b!4320066 m!4913803))

(assert (=> b!4319493 d!1270200))

(assert (=> b!4319493 d!1270100))

(assert (=> b!4319612 d!1270158))

(assert (=> b!4319612 d!1270056))

(assert (=> d!1269978 d!1269872))

(declare-fun d!1270202 () Bool)

(declare-fun res!1770488 () Bool)

(declare-fun e!2687623 () Bool)

(assert (=> d!1270202 (=> res!1770488 e!2687623)))

(assert (=> d!1270202 (= res!1770488 (not ((_ is Cons!48357) (t!355350 (t!355350 lt!1537611)))))))

(assert (=> d!1270202 (= (noDuplicateKeys!259 (t!355350 (t!355350 lt!1537611))) e!2687623)))

(declare-fun b!4320067 () Bool)

(declare-fun e!2687624 () Bool)

(assert (=> b!4320067 (= e!2687623 e!2687624)))

(declare-fun res!1770489 () Bool)

(assert (=> b!4320067 (=> (not res!1770489) (not e!2687624))))

(assert (=> b!4320067 (= res!1770489 (not (containsKey!393 (t!355350 (t!355350 (t!355350 lt!1537611))) (_1!26845 (h!53814 (t!355350 (t!355350 lt!1537611)))))))))

(declare-fun b!4320068 () Bool)

(assert (=> b!4320068 (= e!2687624 (noDuplicateKeys!259 (t!355350 (t!355350 (t!355350 lt!1537611)))))))

(assert (= (and d!1270202 (not res!1770488)) b!4320067))

(assert (= (and b!4320067 res!1770489) b!4320068))

(declare-fun m!4913805 () Bool)

(assert (=> b!4320067 m!4913805))

(declare-fun m!4913807 () Bool)

(assert (=> b!4320068 m!4913807))

(assert (=> b!4319430 d!1270202))

(declare-fun d!1270204 () Bool)

(declare-fun res!1770490 () Bool)

(declare-fun e!2687625 () Bool)

(assert (=> d!1270204 (=> res!1770490 e!2687625)))

(assert (=> d!1270204 (= res!1770490 (not ((_ is Cons!48357) (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))))))

(assert (=> d!1270204 (= (noDuplicateKeys!259 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))) e!2687625)))

(declare-fun b!4320069 () Bool)

(declare-fun e!2687626 () Bool)

(assert (=> b!4320069 (= e!2687625 e!2687626)))

(declare-fun res!1770491 () Bool)

(assert (=> b!4320069 (=> (not res!1770491) (not e!2687626))))

(assert (=> b!4320069 (= res!1770491 (not (containsKey!393 (t!355350 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605))))) (_1!26845 (h!53814 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))))))))

(declare-fun b!4320070 () Bool)

(assert (=> b!4320070 (= e!2687626 (noDuplicateKeys!259 (t!355350 (t!355350 (_2!26846 (h!53815 (toList!2537 lt!1537605)))))))))

(assert (= (and d!1270204 (not res!1770490)) b!4320069))

(assert (= (and b!4320069 res!1770491) b!4320070))

(declare-fun m!4913809 () Bool)

(assert (=> b!4320069 m!4913809))

(declare-fun m!4913811 () Bool)

(assert (=> b!4320070 m!4913811))

(assert (=> b!4319622 d!1270204))

(declare-fun d!1270206 () Bool)

(declare-fun lt!1538390 () Bool)

(assert (=> d!1270206 (= lt!1538390 (select (content!7568 e!2687340) key!2048))))

(declare-fun e!2687627 () Bool)

(assert (=> d!1270206 (= lt!1538390 e!2687627)))

(declare-fun res!1770493 () Bool)

(assert (=> d!1270206 (=> (not res!1770493) (not e!2687627))))

(assert (=> d!1270206 (= res!1770493 ((_ is Cons!48359) e!2687340))))

(assert (=> d!1270206 (= (contains!10400 e!2687340 key!2048) lt!1538390)))

(declare-fun b!4320071 () Bool)

(declare-fun e!2687628 () Bool)

(assert (=> b!4320071 (= e!2687627 e!2687628)))

(declare-fun res!1770492 () Bool)

(assert (=> b!4320071 (=> res!1770492 e!2687628)))

(assert (=> b!4320071 (= res!1770492 (= (h!53817 e!2687340) key!2048))))

(declare-fun b!4320072 () Bool)

(assert (=> b!4320072 (= e!2687628 (contains!10400 (t!355356 e!2687340) key!2048))))

(assert (= (and d!1270206 res!1770493) b!4320071))

(assert (= (and b!4320071 (not res!1770492)) b!4320072))

(declare-fun m!4913813 () Bool)

(assert (=> d!1270206 m!4913813))

(declare-fun m!4913815 () Bool)

(assert (=> d!1270206 m!4913815))

(declare-fun m!4913817 () Bool)

(assert (=> b!4320072 m!4913817))

(assert (=> bm!299249 d!1270206))

(assert (=> bm!299245 d!1270170))

(declare-fun d!1270208 () Bool)

(assert (=> d!1270208 (= (map!10382 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bs!606327 () Bool)

(assert (= bs!606327 d!1270208))

(assert (=> bs!606327 m!4913203))

(assert (=> bm!299197 d!1270208))

(declare-fun d!1270210 () Bool)

(assert (=> d!1270210 (= (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048)) (not (isEmpty!28111 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))))

(declare-fun bs!606328 () Bool)

(assert (= bs!606328 d!1270210))

(assert (=> bs!606328 m!4913149))

(declare-fun m!4913819 () Bool)

(assert (=> bs!606328 m!4913819))

(assert (=> b!4319616 d!1270210))

(declare-fun d!1270212 () Bool)

(declare-fun c!734678 () Bool)

(assert (=> d!1270212 (= c!734678 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) key!2048)))))

(declare-fun e!2687629 () Option!10295)

(assert (=> d!1270212 (= (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) e!2687629)))

(declare-fun b!4320074 () Bool)

(declare-fun e!2687630 () Option!10295)

(assert (=> b!4320074 (= e!2687629 e!2687630)))

(declare-fun c!734679 () Bool)

(assert (=> b!4320074 (= c!734679 (and ((_ is Cons!48357) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (not (= (_1!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) key!2048))))))

(declare-fun b!4320076 () Bool)

(assert (=> b!4320076 (= e!2687630 None!10294)))

(declare-fun b!4320073 () Bool)

(assert (=> b!4320073 (= e!2687629 (Some!10294 (_2!26845 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun b!4320075 () Bool)

(assert (=> b!4320075 (= e!2687630 (getValueByKey!294 (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048))))

(assert (= (and d!1270212 c!734678) b!4320073))

(assert (= (and d!1270212 (not c!734678)) b!4320074))

(assert (= (and b!4320074 c!734679) b!4320075))

(assert (= (and b!4320074 (not c!734679)) b!4320076))

(declare-fun m!4913821 () Bool)

(assert (=> b!4320075 m!4913821))

(assert (=> b!4319616 d!1270212))

(assert (=> b!4319433 d!1270016))

(assert (=> b!4319433 d!1269908))

(declare-fun d!1270214 () Bool)

(assert (=> d!1270214 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000)))

(declare-fun lt!1538393 () Unit!67649)

(declare-fun choose!683 (array!17186 (_ BitVec 64) (_ BitVec 32)) Unit!67649)

(assert (=> d!1270214 (= lt!1538393 (choose!683 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537916)))))

(assert (=> d!1270214 (bvsge (index!1459 lt!1537916) #b00000000000000000000000000000000)))

(assert (=> d!1270214 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537916)) lt!1538393)))

(declare-fun bs!606329 () Bool)

(assert (= bs!606329 d!1270214))

(assert (=> bs!606329 m!4912979))

(declare-fun m!4913823 () Bool)

(assert (=> bs!606329 m!4913823))

(assert (=> b!4319460 d!1270214))

(declare-fun d!1270216 () Bool)

(declare-fun e!2687633 () Bool)

(assert (=> d!1270216 e!2687633))

(declare-fun res!1770496 () Bool)

(assert (=> d!1270216 (=> (not res!1770496) (not e!2687633))))

(assert (=> d!1270216 (= res!1770496 (and (bvsge (index!1459 lt!1537916) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537916) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun lt!1538396 () Unit!67649)

(declare-fun choose!26383 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) Int) Unit!67649)

(assert (=> d!1270216 (= lt!1538396 (choose!26383 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537916) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270216 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270216 (= (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537916) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538396)))

(declare-fun b!4320079 () Bool)

(assert (=> b!4320079 (= e!2687633 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537916))))))

(assert (= (and d!1270216 res!1770496) b!4320079))

(declare-fun m!4913825 () Bool)

(assert (=> d!1270216 m!4913825))

(assert (=> d!1270216 m!4913293))

(assert (=> b!4320079 m!4912957))

(assert (=> b!4320079 m!4912959))

(assert (=> b!4320079 m!4912957))

(assert (=> b!4320079 m!4912959))

(declare-fun m!4913827 () Bool)

(assert (=> b!4320079 m!4913827))

(assert (=> b!4319460 d!1270216))

(declare-fun d!1270218 () Bool)

(declare-fun e!2687634 () Bool)

(assert (=> d!1270218 e!2687634))

(declare-fun res!1770497 () Bool)

(assert (=> d!1270218 (=> (not res!1770497) (not e!2687634))))

(declare-fun lt!1538398 () ListLongMap!1153)

(assert (=> d!1270218 (= res!1770497 (contains!10396 lt!1538398 (_1!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun lt!1538400 () List!48482)

(assert (=> d!1270218 (= lt!1538398 (ListLongMap!1154 lt!1538400))))

(declare-fun lt!1538399 () Unit!67649)

(declare-fun lt!1538397 () Unit!67649)

(assert (=> d!1270218 (= lt!1538399 lt!1538397)))

(assert (=> d!1270218 (= (getValueByKey!293 lt!1538400 (_1!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))) (Some!10293 (_2!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270218 (= lt!1538397 (lemmaContainsTupThenGetReturnValue!93 lt!1538400 (_1!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))) (_2!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270218 (= lt!1538400 (insertStrictlySorted!53 (toList!2537 (ite c!734479 call!299206 call!299219)) (_1!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))) (_2!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270218 (= (+!322 (ite c!734479 call!299206 call!299219) (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))) lt!1538398)))

(declare-fun b!4320080 () Bool)

(declare-fun res!1770498 () Bool)

(assert (=> b!4320080 (=> (not res!1770498) (not e!2687634))))

(assert (=> b!4320080 (= res!1770498 (= (getValueByKey!293 (toList!2537 lt!1538398) (_1!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611)))) (Some!10293 (_2!26846 (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))))))))

(declare-fun b!4320081 () Bool)

(assert (=> b!4320081 (= e!2687634 (contains!10398 (toList!2537 lt!1538398) (ite c!734479 (ite c!734484 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 lt!1537611) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 lt!1537611)) (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (= (and d!1270218 res!1770497) b!4320080))

(assert (= (and b!4320080 res!1770498) b!4320081))

(declare-fun m!4913829 () Bool)

(assert (=> d!1270218 m!4913829))

(declare-fun m!4913831 () Bool)

(assert (=> d!1270218 m!4913831))

(declare-fun m!4913833 () Bool)

(assert (=> d!1270218 m!4913833))

(declare-fun m!4913835 () Bool)

(assert (=> d!1270218 m!4913835))

(declare-fun m!4913837 () Bool)

(assert (=> b!4320080 m!4913837))

(declare-fun m!4913839 () Bool)

(assert (=> b!4320081 m!4913839))

(assert (=> bm!299210 d!1270218))

(declare-fun d!1270220 () Bool)

(declare-fun res!1770499 () Bool)

(declare-fun e!2687635 () Bool)

(assert (=> d!1270220 (=> res!1770499 e!2687635)))

(assert (=> d!1270220 (= res!1770499 (and ((_ is Cons!48357) (t!355350 lt!1537698)) (= (_1!26845 (h!53814 (t!355350 lt!1537698))) key!2048)))))

(assert (=> d!1270220 (= (containsKey!393 (t!355350 lt!1537698) key!2048) e!2687635)))

(declare-fun b!4320082 () Bool)

(declare-fun e!2687636 () Bool)

(assert (=> b!4320082 (= e!2687635 e!2687636)))

(declare-fun res!1770500 () Bool)

(assert (=> b!4320082 (=> (not res!1770500) (not e!2687636))))

(assert (=> b!4320082 (= res!1770500 ((_ is Cons!48357) (t!355350 lt!1537698)))))

(declare-fun b!4320083 () Bool)

(assert (=> b!4320083 (= e!2687636 (containsKey!393 (t!355350 (t!355350 lt!1537698)) key!2048))))

(assert (= (and d!1270220 (not res!1770499)) b!4320082))

(assert (= (and b!4320082 res!1770500) b!4320083))

(declare-fun m!4913841 () Bool)

(assert (=> b!4320083 m!4913841))

(assert (=> b!4319588 d!1270220))

(declare-fun d!1270222 () Bool)

(declare-fun c!734680 () Bool)

(assert (=> d!1270222 (= c!734680 ((_ is Nil!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun e!2687637 () (InoxSet tuple2!47122))

(assert (=> d!1270222 (= (content!7567 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) e!2687637)))

(declare-fun b!4320084 () Bool)

(assert (=> b!4320084 (= e!2687637 ((as const (Array tuple2!47122 Bool)) false))))

(declare-fun b!4320085 () Bool)

(assert (=> b!4320085 (= e!2687637 ((_ map or) (store ((as const (Array tuple2!47122 Bool)) false) (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) true) (content!7567 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (= (and d!1270222 c!734680) b!4320084))

(assert (= (and d!1270222 (not c!734680)) b!4320085))

(declare-fun m!4913843 () Bool)

(assert (=> b!4320085 m!4913843))

(assert (=> b!4320085 m!4913553))

(assert (=> d!1269966 d!1270222))

(declare-fun d!1270224 () Bool)

(assert (=> d!1270224 true))

(assert (=> d!1270224 true))

(declare-fun res!1770503 () (_ BitVec 64))

(assert (=> d!1270224 (= (choose!26368 (hashF!6889 thiss!42308) key!2048) res!1770503)))

(assert (=> d!1269922 d!1270224))

(declare-fun d!1270226 () Bool)

(declare-fun res!1770504 () Bool)

(declare-fun e!2687638 () Bool)

(assert (=> d!1270226 (=> res!1770504 e!2687638)))

(assert (=> d!1270226 (= res!1770504 (and ((_ is Cons!48358) (toList!2537 call!299126)) (= (_1!26846 (h!53815 (toList!2537 call!299126))) lt!1537608)))))

(assert (=> d!1270226 (= (containsKey!394 (toList!2537 call!299126) lt!1537608) e!2687638)))

(declare-fun b!4320086 () Bool)

(declare-fun e!2687639 () Bool)

(assert (=> b!4320086 (= e!2687638 e!2687639)))

(declare-fun res!1770505 () Bool)

(assert (=> b!4320086 (=> (not res!1770505) (not e!2687639))))

(assert (=> b!4320086 (= res!1770505 (and (or (not ((_ is Cons!48358) (toList!2537 call!299126))) (bvsle (_1!26846 (h!53815 (toList!2537 call!299126))) lt!1537608)) ((_ is Cons!48358) (toList!2537 call!299126)) (bvslt (_1!26846 (h!53815 (toList!2537 call!299126))) lt!1537608)))))

(declare-fun b!4320087 () Bool)

(assert (=> b!4320087 (= e!2687639 (containsKey!394 (t!355351 (toList!2537 call!299126)) lt!1537608))))

(assert (= (and d!1270226 (not res!1770504)) b!4320086))

(assert (= (and b!4320086 res!1770505) b!4320087))

(declare-fun m!4913845 () Bool)

(assert (=> b!4320087 m!4913845))

(assert (=> d!1269920 d!1270226))

(declare-fun b!4320089 () Bool)

(declare-fun e!2687640 () List!48481)

(declare-fun e!2687641 () List!48481)

(assert (=> b!4320089 (= e!2687640 e!2687641)))

(declare-fun c!734681 () Bool)

(assert (=> b!4320089 (= c!734681 ((_ is Cons!48357) (t!355350 (t!355350 lt!1537603))))))

(declare-fun b!4320091 () Bool)

(assert (=> b!4320091 (= e!2687641 Nil!48357)))

(declare-fun b!4320090 () Bool)

(assert (=> b!4320090 (= e!2687641 (Cons!48357 (h!53814 (t!355350 (t!355350 lt!1537603))) (removePairForKey!258 (t!355350 (t!355350 (t!355350 lt!1537603))) key!2048)))))

(declare-fun b!4320088 () Bool)

(assert (=> b!4320088 (= e!2687640 (t!355350 (t!355350 (t!355350 lt!1537603))))))

(declare-fun d!1270228 () Bool)

(declare-fun lt!1538401 () List!48481)

(assert (=> d!1270228 (not (containsKey!393 lt!1538401 key!2048))))

(assert (=> d!1270228 (= lt!1538401 e!2687640)))

(declare-fun c!734682 () Bool)

(assert (=> d!1270228 (= c!734682 (and ((_ is Cons!48357) (t!355350 (t!355350 lt!1537603))) (= (_1!26845 (h!53814 (t!355350 (t!355350 lt!1537603)))) key!2048)))))

(assert (=> d!1270228 (noDuplicateKeys!259 (t!355350 (t!355350 lt!1537603)))))

(assert (=> d!1270228 (= (removePairForKey!258 (t!355350 (t!355350 lt!1537603)) key!2048) lt!1538401)))

(assert (= (and d!1270228 c!734682) b!4320088))

(assert (= (and d!1270228 (not c!734682)) b!4320089))

(assert (= (and b!4320089 c!734681) b!4320090))

(assert (= (and b!4320089 (not c!734681)) b!4320091))

(declare-fun m!4913847 () Bool)

(assert (=> b!4320090 m!4913847))

(declare-fun m!4913849 () Bool)

(assert (=> d!1270228 m!4913849))

(assert (=> d!1270228 m!4913191))

(assert (=> b!4319365 d!1270228))

(assert (=> bm!299235 d!1270080))

(assert (=> d!1269982 d!1270166))

(declare-fun d!1270230 () Bool)

(assert (=> d!1270230 (= (inRange!0 (ite c!734485 (ite c!734489 (index!1459 lt!1537810) (ite c!734483 (index!1460 lt!1537798) (index!1461 lt!1537798))) (ite c!734480 (index!1459 lt!1537789) (ite c!734486 (index!1460 lt!1537808) (index!1461 lt!1537808)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (and (bvsge (ite c!734485 (ite c!734489 (index!1459 lt!1537810) (ite c!734483 (index!1460 lt!1537798) (index!1461 lt!1537798))) (ite c!734480 (index!1459 lt!1537789) (ite c!734486 (index!1460 lt!1537808) (index!1461 lt!1537808)))) #b00000000000000000000000000000000) (bvslt (ite c!734485 (ite c!734489 (index!1459 lt!1537810) (ite c!734483 (index!1460 lt!1537798) (index!1461 lt!1537798))) (ite c!734480 (index!1459 lt!1537789) (ite c!734486 (index!1460 lt!1537808) (index!1461 lt!1537808)))) (bvadd (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001))))))

(assert (=> bm!299195 d!1270230))

(declare-fun d!1270232 () Bool)

(declare-fun lt!1538402 () Bool)

(assert (=> d!1270232 (= lt!1538402 (select (content!7568 (keys!16162 (map!10381 thiss!42308))) key!2048))))

(declare-fun e!2687642 () Bool)

(assert (=> d!1270232 (= lt!1538402 e!2687642)))

(declare-fun res!1770507 () Bool)

(assert (=> d!1270232 (=> (not res!1770507) (not e!2687642))))

(assert (=> d!1270232 (= res!1770507 ((_ is Cons!48359) (keys!16162 (map!10381 thiss!42308))))))

(assert (=> d!1270232 (= (contains!10400 (keys!16162 (map!10381 thiss!42308)) key!2048) lt!1538402)))

(declare-fun b!4320092 () Bool)

(declare-fun e!2687643 () Bool)

(assert (=> b!4320092 (= e!2687642 e!2687643)))

(declare-fun res!1770506 () Bool)

(assert (=> b!4320092 (=> res!1770506 e!2687643)))

(assert (=> b!4320092 (= res!1770506 (= (h!53817 (keys!16162 (map!10381 thiss!42308))) key!2048))))

(declare-fun b!4320093 () Bool)

(assert (=> b!4320093 (= e!2687643 (contains!10400 (t!355356 (keys!16162 (map!10381 thiss!42308))) key!2048))))

(assert (= (and d!1270232 res!1770507) b!4320092))

(assert (= (and b!4320092 (not res!1770506)) b!4320093))

(assert (=> d!1270232 m!4913125))

(declare-fun m!4913851 () Bool)

(assert (=> d!1270232 m!4913851))

(declare-fun m!4913853 () Bool)

(assert (=> d!1270232 m!4913853))

(declare-fun m!4913855 () Bool)

(assert (=> b!4320093 m!4913855))

(assert (=> b!4319610 d!1270232))

(assert (=> b!4319610 d!1270178))

(declare-fun d!1270234 () Bool)

(declare-fun res!1770508 () Bool)

(declare-fun e!2687644 () Bool)

(assert (=> d!1270234 (=> res!1770508 e!2687644)))

(assert (=> d!1270234 (= res!1770508 (and ((_ is Cons!48357) (t!355350 (t!355350 lt!1537611))) (= (_1!26845 (h!53814 (t!355350 (t!355350 lt!1537611)))) (_1!26845 (h!53814 lt!1537611)))))))

(assert (=> d!1270234 (= (containsKey!393 (t!355350 (t!355350 lt!1537611)) (_1!26845 (h!53814 lt!1537611))) e!2687644)))

(declare-fun b!4320094 () Bool)

(declare-fun e!2687645 () Bool)

(assert (=> b!4320094 (= e!2687644 e!2687645)))

(declare-fun res!1770509 () Bool)

(assert (=> b!4320094 (=> (not res!1770509) (not e!2687645))))

(assert (=> b!4320094 (= res!1770509 ((_ is Cons!48357) (t!355350 (t!355350 lt!1537611))))))

(declare-fun b!4320095 () Bool)

(assert (=> b!4320095 (= e!2687645 (containsKey!393 (t!355350 (t!355350 (t!355350 lt!1537611))) (_1!26845 (h!53814 lt!1537611))))))

(assert (= (and d!1270234 (not res!1770508)) b!4320094))

(assert (= (and b!4320094 res!1770509) b!4320095))

(declare-fun m!4913857 () Bool)

(assert (=> b!4320095 m!4913857))

(assert (=> b!4319469 d!1270234))

(declare-fun d!1270236 () Bool)

(assert (=> d!1270236 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(declare-fun lt!1538403 () Unit!67649)

(assert (=> d!1270236 (= lt!1538403 (choose!26379 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> d!1270236 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))

(assert (=> d!1270236 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048) lt!1538403)))

(declare-fun bs!606330 () Bool)

(assert (= bs!606330 d!1270236))

(assert (=> bs!606330 m!4912779))

(assert (=> bs!606330 m!4912779))

(assert (=> bs!606330 m!4912781))

(declare-fun m!4913859 () Bool)

(assert (=> bs!606330 m!4913859))

(assert (=> bs!606330 m!4913515))

(assert (=> b!4319229 d!1270236))

(assert (=> b!4319229 d!1270174))

(assert (=> b!4319229 d!1270176))

(declare-fun d!1270238 () Bool)

(assert (=> d!1270238 (contains!10400 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) key!2048)))

(declare-fun lt!1538404 () Unit!67649)

(assert (=> d!1270238 (= lt!1538404 (choose!26380 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> d!1270238 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))

(assert (=> d!1270238 (= (lemmaInListThenGetKeysListContains!52 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048) lt!1538404)))

(declare-fun bs!606331 () Bool)

(assert (= bs!606331 d!1270238))

(assert (=> bs!606331 m!4912787))

(assert (=> bs!606331 m!4912787))

(declare-fun m!4913861 () Bool)

(assert (=> bs!606331 m!4913861))

(declare-fun m!4913863 () Bool)

(assert (=> bs!606331 m!4913863))

(assert (=> bs!606331 m!4913515))

(assert (=> b!4319229 d!1270238))

(declare-fun d!1270240 () Bool)

(assert (=> d!1270240 (= (isDefined!7594 (getValueByKey!293 lt!1537671 lt!1537672)) (not (isEmpty!28110 (getValueByKey!293 lt!1537671 lt!1537672))))))

(declare-fun bs!606332 () Bool)

(assert (= bs!606332 d!1270240))

(assert (=> bs!606332 m!4913063))

(declare-fun m!4913865 () Bool)

(assert (=> bs!606332 m!4913865))

(assert (=> b!4319566 d!1270240))

(declare-fun b!4320098 () Bool)

(declare-fun e!2687647 () Option!10294)

(assert (=> b!4320098 (= e!2687647 (getValueByKey!293 (t!355351 lt!1537671) lt!1537672))))

(declare-fun b!4320096 () Bool)

(declare-fun e!2687646 () Option!10294)

(assert (=> b!4320096 (= e!2687646 (Some!10293 (_2!26846 (h!53815 lt!1537671))))))

(declare-fun b!4320099 () Bool)

(assert (=> b!4320099 (= e!2687647 None!10293)))

(declare-fun d!1270242 () Bool)

(declare-fun c!734683 () Bool)

(assert (=> d!1270242 (= c!734683 (and ((_ is Cons!48358) lt!1537671) (= (_1!26846 (h!53815 lt!1537671)) lt!1537672)))))

(assert (=> d!1270242 (= (getValueByKey!293 lt!1537671 lt!1537672) e!2687646)))

(declare-fun b!4320097 () Bool)

(assert (=> b!4320097 (= e!2687646 e!2687647)))

(declare-fun c!734684 () Bool)

(assert (=> b!4320097 (= c!734684 (and ((_ is Cons!48358) lt!1537671) (not (= (_1!26846 (h!53815 lt!1537671)) lt!1537672))))))

(assert (= (and d!1270242 c!734683) b!4320096))

(assert (= (and d!1270242 (not c!734683)) b!4320097))

(assert (= (and b!4320097 c!734684) b!4320098))

(assert (= (and b!4320097 (not c!734684)) b!4320099))

(declare-fun m!4913867 () Bool)

(assert (=> b!4320098 m!4913867))

(assert (=> b!4319566 d!1270242))

(declare-fun bs!606333 () Bool)

(declare-fun b!4320103 () Bool)

(assert (= bs!606333 (and b!4320103 b!4319851)))

(declare-fun lambda!133742 () Int)

(assert (=> bs!606333 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133742 lambda!133734))))

(declare-fun bs!606334 () Bool)

(assert (= bs!606334 (and b!4320103 b!4320002)))

(assert (=> bs!606334 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (toList!2538 (map!10381 thiss!42308))) (= lambda!133742 lambda!133740))))

(declare-fun bs!606335 () Bool)

(assert (= bs!606335 (and b!4320103 b!4319916)))

(assert (=> bs!606335 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133742 lambda!133738))))

(declare-fun bs!606336 () Bool)

(assert (= bs!606336 (and b!4320103 b!4319673)))

(assert (=> bs!606336 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133742 lambda!133714))))

(declare-fun bs!606337 () Bool)

(assert (= bs!606337 (and b!4320103 b!4319854)))

(assert (=> bs!606337 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133742 lambda!133732))))

(declare-fun bs!606338 () Bool)

(assert (= bs!606338 (and b!4320103 b!4319858)))

(assert (=> bs!606338 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133742 lambda!133733))))

(declare-fun bs!606339 () Bool)

(assert (= bs!606339 (and b!4320103 b!4319728)))

(assert (=> bs!606339 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133742 lambda!133716))))

(declare-fun bs!606340 () Bool)

(assert (= bs!606340 (and b!4320103 b!4319919)))

(assert (=> bs!606340 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133742 lambda!133736))))

(declare-fun bs!606341 () Bool)

(assert (= bs!606341 (and b!4320103 b!4319923)))

(assert (=> bs!606341 (= (= (t!355350 (toList!2538 (map!10381 thiss!42308))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))) (= lambda!133742 lambda!133737))))

(assert (=> b!4320103 true))

(declare-fun bs!606342 () Bool)

(declare-fun b!4320107 () Bool)

(assert (= bs!606342 (and b!4320107 b!4320103)))

(declare-fun lambda!133743 () Int)

(assert (=> bs!606342 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (= lambda!133743 lambda!133742))))

(declare-fun bs!606343 () Bool)

(assert (= bs!606343 (and b!4320107 b!4319851)))

(assert (=> bs!606343 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133743 lambda!133734))))

(declare-fun bs!606344 () Bool)

(assert (= bs!606344 (and b!4320107 b!4320002)))

(assert (=> bs!606344 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (toList!2538 (map!10381 thiss!42308))) (= lambda!133743 lambda!133740))))

(declare-fun bs!606345 () Bool)

(assert (= bs!606345 (and b!4320107 b!4319916)))

(assert (=> bs!606345 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133743 lambda!133738))))

(declare-fun bs!606346 () Bool)

(assert (= bs!606346 (and b!4320107 b!4319673)))

(assert (=> bs!606346 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133743 lambda!133714))))

(declare-fun bs!606347 () Bool)

(assert (= bs!606347 (and b!4320107 b!4319854)))

(assert (=> bs!606347 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133743 lambda!133732))))

(declare-fun bs!606348 () Bool)

(assert (= bs!606348 (and b!4320107 b!4319858)))

(assert (=> bs!606348 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133743 lambda!133733))))

(declare-fun bs!606349 () Bool)

(assert (= bs!606349 (and b!4320107 b!4319728)))

(assert (=> bs!606349 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133743 lambda!133716))))

(declare-fun bs!606350 () Bool)

(assert (= bs!606350 (and b!4320107 b!4319919)))

(assert (=> bs!606350 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133743 lambda!133736))))

(declare-fun bs!606351 () Bool)

(assert (= bs!606351 (and b!4320107 b!4319923)))

(assert (=> bs!606351 (= (= (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))) (= lambda!133743 lambda!133737))))

(assert (=> b!4320107 true))

(declare-fun bs!606352 () Bool)

(declare-fun b!4320100 () Bool)

(assert (= bs!606352 (and b!4320100 b!4320103)))

(declare-fun lambda!133744 () Int)

(assert (=> bs!606352 (= (= (toList!2538 (map!10381 thiss!42308)) (t!355350 (toList!2538 (map!10381 thiss!42308)))) (= lambda!133744 lambda!133742))))

(declare-fun bs!606353 () Bool)

(assert (= bs!606353 (and b!4320100 b!4319851)))

(assert (=> bs!606353 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133744 lambda!133734))))

(declare-fun bs!606354 () Bool)

(assert (= bs!606354 (and b!4320100 b!4320002)))

(assert (=> bs!606354 (= lambda!133744 lambda!133740)))

(declare-fun bs!606355 () Bool)

(assert (= bs!606355 (and b!4320100 b!4319916)))

(assert (=> bs!606355 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133744 lambda!133738))))

(declare-fun bs!606356 () Bool)

(assert (= bs!606356 (and b!4320100 b!4320107)))

(assert (=> bs!606356 (= (= (toList!2538 (map!10381 thiss!42308)) (Cons!48357 (h!53814 (toList!2538 (map!10381 thiss!42308))) (t!355350 (toList!2538 (map!10381 thiss!42308))))) (= lambda!133744 lambda!133743))))

(declare-fun bs!606357 () Bool)

(assert (= bs!606357 (and b!4320100 b!4319673)))

(assert (=> bs!606357 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (= lambda!133744 lambda!133714))))

(declare-fun bs!606358 () Bool)

(assert (= bs!606358 (and b!4320100 b!4319854)))

(assert (=> bs!606358 (= (= (toList!2538 (map!10381 thiss!42308)) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))) (= lambda!133744 lambda!133732))))

(declare-fun bs!606359 () Bool)

(assert (= bs!606359 (and b!4320100 b!4319858)))

(assert (=> bs!606359 (= (= (toList!2538 (map!10381 thiss!42308)) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 lt!1537679)))))) (= lambda!133744 lambda!133733))))

(declare-fun bs!606360 () Bool)

(assert (= bs!606360 (and b!4320100 b!4319728)))

(assert (=> bs!606360 (= (= (toList!2538 (map!10381 thiss!42308)) (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (= lambda!133744 lambda!133716))))

(declare-fun bs!606361 () Bool)

(assert (= bs!606361 (and b!4320100 b!4319919)))

(assert (=> bs!606361 (= (= (toList!2538 (map!10381 thiss!42308)) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))) (= lambda!133744 lambda!133736))))

(declare-fun bs!606362 () Bool)

(assert (= bs!606362 (and b!4320100 b!4319923)))

(assert (=> bs!606362 (= (= (toList!2538 (map!10381 thiss!42308)) (Cons!48357 (h!53814 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (t!355350 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))) (= lambda!133744 lambda!133737))))

(assert (=> b!4320100 true))

(declare-fun bs!606363 () Bool)

(declare-fun b!4320101 () Bool)

(assert (= bs!606363 (and b!4320101 b!4319852)))

(declare-fun lambda!133745 () Int)

(assert (=> bs!606363 (= lambda!133745 lambda!133735)))

(declare-fun bs!606364 () Bool)

(assert (= bs!606364 (and b!4320101 b!4319917)))

(assert (=> bs!606364 (= lambda!133745 lambda!133739)))

(declare-fun bs!606365 () Bool)

(assert (= bs!606365 (and b!4320101 b!4319674)))

(assert (=> bs!606365 (= lambda!133745 lambda!133715)))

(declare-fun bs!606366 () Bool)

(assert (= bs!606366 (and b!4320101 b!4320003)))

(assert (=> bs!606366 (= lambda!133745 lambda!133741)))

(declare-fun bs!606367 () Bool)

(assert (= bs!606367 (and b!4320101 b!4319729)))

(assert (=> bs!606367 (= lambda!133745 lambda!133717)))

(declare-fun res!1770510 () Bool)

(declare-fun e!2687651 () Bool)

(assert (=> b!4320100 (=> (not res!1770510) (not e!2687651))))

(declare-fun lt!1538406 () List!48483)

(assert (=> b!4320100 (= res!1770510 (forall!8802 lt!1538406 lambda!133744))))

(assert (=> b!4320101 (= e!2687651 (= (content!7568 lt!1538406) (content!7568 (map!10383 (toList!2538 (map!10381 thiss!42308)) lambda!133745))))))

(declare-fun b!4320102 () Bool)

(declare-fun e!2687650 () List!48483)

(assert (=> b!4320102 (= e!2687650 Nil!48359)))

(assert (=> b!4320103 false))

(declare-fun lt!1538410 () Unit!67649)

(assert (=> b!4320103 (= lt!1538410 (forallContained!1529 (getKeysList!55 (t!355350 (toList!2538 (map!10381 thiss!42308)))) lambda!133742 (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308))))))))

(declare-fun e!2687649 () Unit!67649)

(declare-fun Unit!67707 () Unit!67649)

(assert (=> b!4320103 (= e!2687649 Unit!67707)))

(declare-fun b!4320104 () Bool)

(assert (=> b!4320104 false))

(declare-fun e!2687648 () Unit!67649)

(declare-fun Unit!67708 () Unit!67649)

(assert (=> b!4320104 (= e!2687648 Unit!67708)))

(declare-fun b!4320105 () Bool)

(declare-fun Unit!67709 () Unit!67649)

(assert (=> b!4320105 (= e!2687648 Unit!67709)))

(assert (=> b!4320107 (= e!2687650 (Cons!48359 (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308)))) (getKeysList!55 (t!355350 (toList!2538 (map!10381 thiss!42308))))))))

(declare-fun c!734686 () Bool)

(assert (=> b!4320107 (= c!734686 (containsKey!395 (t!355350 (toList!2538 (map!10381 thiss!42308))) (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308))))))))

(declare-fun lt!1538411 () Unit!67649)

(assert (=> b!4320107 (= lt!1538411 e!2687648)))

(declare-fun c!734687 () Bool)

(assert (=> b!4320107 (= c!734687 (contains!10400 (getKeysList!55 (t!355350 (toList!2538 (map!10381 thiss!42308)))) (_1!26845 (h!53814 (toList!2538 (map!10381 thiss!42308))))))))

(declare-fun lt!1538409 () Unit!67649)

(assert (=> b!4320107 (= lt!1538409 e!2687649)))

(declare-fun lt!1538408 () List!48483)

(assert (=> b!4320107 (= lt!1538408 (getKeysList!55 (t!355350 (toList!2538 (map!10381 thiss!42308)))))))

(declare-fun lt!1538407 () Unit!67649)

(assert (=> b!4320107 (= lt!1538407 (lemmaForallContainsAddHeadPreserves!8 (t!355350 (toList!2538 (map!10381 thiss!42308))) lt!1538408 (h!53814 (toList!2538 (map!10381 thiss!42308)))))))

(assert (=> b!4320107 (forall!8802 lt!1538408 lambda!133743)))

(declare-fun lt!1538405 () Unit!67649)

(assert (=> b!4320107 (= lt!1538405 lt!1538407)))

(declare-fun b!4320108 () Bool)

(declare-fun res!1770511 () Bool)

(assert (=> b!4320108 (=> (not res!1770511) (not e!2687651))))

(assert (=> b!4320108 (= res!1770511 (= (length!28 lt!1538406) (length!29 (toList!2538 (map!10381 thiss!42308)))))))

(declare-fun d!1270244 () Bool)

(assert (=> d!1270244 e!2687651))

(declare-fun res!1770512 () Bool)

(assert (=> d!1270244 (=> (not res!1770512) (not e!2687651))))

(assert (=> d!1270244 (= res!1770512 (noDuplicate!586 lt!1538406))))

(assert (=> d!1270244 (= lt!1538406 e!2687650)))

(declare-fun c!734685 () Bool)

(assert (=> d!1270244 (= c!734685 ((_ is Cons!48357) (toList!2538 (map!10381 thiss!42308))))))

(assert (=> d!1270244 (invariantList!598 (toList!2538 (map!10381 thiss!42308)))))

(assert (=> d!1270244 (= (getKeysList!55 (toList!2538 (map!10381 thiss!42308))) lt!1538406)))

(declare-fun b!4320106 () Bool)

(declare-fun Unit!67710 () Unit!67649)

(assert (=> b!4320106 (= e!2687649 Unit!67710)))

(assert (= (and d!1270244 c!734685) b!4320107))

(assert (= (and d!1270244 (not c!734685)) b!4320102))

(assert (= (and b!4320107 c!734686) b!4320104))

(assert (= (and b!4320107 (not c!734686)) b!4320105))

(assert (= (and b!4320107 c!734687) b!4320103))

(assert (= (and b!4320107 (not c!734687)) b!4320106))

(assert (= (and d!1270244 res!1770512) b!4320108))

(assert (= (and b!4320108 res!1770511) b!4320100))

(assert (= (and b!4320100 res!1770510) b!4320101))

(declare-fun m!4913869 () Bool)

(assert (=> b!4320108 m!4913869))

(assert (=> b!4320108 m!4913701))

(declare-fun m!4913871 () Bool)

(assert (=> b!4320101 m!4913871))

(declare-fun m!4913873 () Bool)

(assert (=> b!4320101 m!4913873))

(assert (=> b!4320101 m!4913873))

(declare-fun m!4913875 () Bool)

(assert (=> b!4320101 m!4913875))

(declare-fun m!4913877 () Bool)

(assert (=> b!4320107 m!4913877))

(declare-fun m!4913879 () Bool)

(assert (=> b!4320107 m!4913879))

(declare-fun m!4913881 () Bool)

(assert (=> b!4320107 m!4913881))

(assert (=> b!4320107 m!4913879))

(declare-fun m!4913883 () Bool)

(assert (=> b!4320107 m!4913883))

(declare-fun m!4913885 () Bool)

(assert (=> b!4320107 m!4913885))

(declare-fun m!4913887 () Bool)

(assert (=> d!1270244 m!4913887))

(assert (=> d!1270244 m!4913523))

(assert (=> b!4320103 m!4913879))

(assert (=> b!4320103 m!4913879))

(declare-fun m!4913889 () Bool)

(assert (=> b!4320103 m!4913889))

(declare-fun m!4913891 () Bool)

(assert (=> b!4320100 m!4913891))

(assert (=> b!4319606 d!1270244))

(declare-fun b!4320111 () Bool)

(declare-fun e!2687653 () Option!10294)

(assert (=> b!4320111 (= e!2687653 (getValueByKey!293 (t!355351 (t!355351 lt!1537685)) lt!1537672))))

(declare-fun b!4320109 () Bool)

(declare-fun e!2687652 () Option!10294)

(assert (=> b!4320109 (= e!2687652 (Some!10293 (_2!26846 (h!53815 (t!355351 lt!1537685)))))))

(declare-fun b!4320112 () Bool)

(assert (=> b!4320112 (= e!2687653 None!10293)))

(declare-fun d!1270246 () Bool)

(declare-fun c!734688 () Bool)

(assert (=> d!1270246 (= c!734688 (and ((_ is Cons!48358) (t!355351 lt!1537685)) (= (_1!26846 (h!53815 (t!355351 lt!1537685))) lt!1537672)))))

(assert (=> d!1270246 (= (getValueByKey!293 (t!355351 lt!1537685) lt!1537672) e!2687652)))

(declare-fun b!4320110 () Bool)

(assert (=> b!4320110 (= e!2687652 e!2687653)))

(declare-fun c!734689 () Bool)

(assert (=> b!4320110 (= c!734689 (and ((_ is Cons!48358) (t!355351 lt!1537685)) (not (= (_1!26846 (h!53815 (t!355351 lt!1537685))) lt!1537672))))))

(assert (= (and d!1270246 c!734688) b!4320109))

(assert (= (and d!1270246 (not c!734688)) b!4320110))

(assert (= (and b!4320110 c!734689) b!4320111))

(assert (= (and b!4320110 (not c!734689)) b!4320112))

(declare-fun m!4913893 () Bool)

(assert (=> b!4320111 m!4913893))

(assert (=> b!4319569 d!1270246))

(declare-fun d!1270248 () Bool)

(assert (=> d!1270248 (isDefined!7594 (getValueByKey!293 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(declare-fun lt!1538412 () Unit!67649)

(assert (=> d!1270248 (= lt!1538412 (choose!26370 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(declare-fun e!2687654 () Bool)

(assert (=> d!1270248 e!2687654))

(declare-fun res!1770513 () Bool)

(assert (=> d!1270248 (=> (not res!1770513) (not e!2687654))))

(assert (=> d!1270248 (= res!1770513 (isStrictlySorted!20 (toList!2537 (ite c!734429 lt!1537676 call!299142))))))

(assert (=> d!1270248 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143) lt!1538412)))

(declare-fun b!4320113 () Bool)

(assert (=> b!4320113 (= e!2687654 (containsKey!394 (toList!2537 (ite c!734429 lt!1537676 call!299142)) call!299143))))

(assert (= (and d!1270248 res!1770513) b!4320113))

(assert (=> d!1270248 m!4912911))

(assert (=> d!1270248 m!4912911))

(assert (=> d!1270248 m!4912913))

(declare-fun m!4913895 () Bool)

(assert (=> d!1270248 m!4913895))

(declare-fun m!4913897 () Bool)

(assert (=> d!1270248 m!4913897))

(assert (=> b!4320113 m!4912907))

(assert (=> b!4319415 d!1270248))

(assert (=> b!4319415 d!1270090))

(assert (=> b!4319415 d!1270092))

(declare-fun d!1270250 () Bool)

(assert (=> d!1270250 (= (isEmpty!28109 lt!1537924) (not ((_ is Some!10292) lt!1537924)))))

(assert (=> d!1269938 d!1270250))

(declare-fun d!1270252 () Bool)

(declare-fun res!1770514 () Bool)

(declare-fun e!2687655 () Bool)

(assert (=> d!1270252 (=> res!1770514 e!2687655)))

(assert (=> d!1270252 (= res!1770514 (not ((_ is Cons!48357) (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (=> d!1270252 (= (noDuplicateKeys!259 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) e!2687655)))

(declare-fun b!4320114 () Bool)

(declare-fun e!2687656 () Bool)

(assert (=> b!4320114 (= e!2687655 e!2687656)))

(declare-fun res!1770515 () Bool)

(assert (=> b!4320114 (=> (not res!1770515) (not e!2687656))))

(assert (=> b!4320114 (= res!1770515 (not (containsKey!393 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (_1!26845 (h!53814 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))))

(declare-fun b!4320115 () Bool)

(assert (=> b!4320115 (= e!2687656 (noDuplicateKeys!259 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(assert (= (and d!1270252 (not res!1770514)) b!4320114))

(assert (= (and b!4320114 res!1770515) b!4320115))

(declare-fun m!4913899 () Bool)

(assert (=> b!4320114 m!4913899))

(declare-fun m!4913901 () Bool)

(assert (=> b!4320115 m!4913901))

(assert (=> d!1269938 d!1270252))

(declare-fun d!1270254 () Bool)

(assert (=> d!1270254 (= (invariantList!598 (toList!2538 lt!1537728)) (noDuplicatedKeys!102 (toList!2538 lt!1537728)))))

(declare-fun bs!606368 () Bool)

(assert (= bs!606368 d!1270254))

(declare-fun m!4913903 () Bool)

(assert (=> bs!606368 m!4913903))

(assert (=> d!1269884 d!1270254))

(declare-fun d!1270256 () Bool)

(declare-fun res!1770516 () Bool)

(declare-fun e!2687657 () Bool)

(assert (=> d!1270256 (=> res!1770516 e!2687657)))

(assert (=> d!1270256 (= res!1770516 ((_ is Nil!48358) (toList!2537 lt!1537679)))))

(assert (=> d!1270256 (= (forall!8800 (toList!2537 lt!1537679) lambda!133668) e!2687657)))

(declare-fun b!4320116 () Bool)

(declare-fun e!2687658 () Bool)

(assert (=> b!4320116 (= e!2687657 e!2687658)))

(declare-fun res!1770517 () Bool)

(assert (=> b!4320116 (=> (not res!1770517) (not e!2687658))))

(assert (=> b!4320116 (= res!1770517 (dynLambda!20499 lambda!133668 (h!53815 (toList!2537 lt!1537679))))))

(declare-fun b!4320117 () Bool)

(assert (=> b!4320117 (= e!2687658 (forall!8800 (t!355351 (toList!2537 lt!1537679)) lambda!133668))))

(assert (= (and d!1270256 (not res!1770516)) b!4320116))

(assert (= (and b!4320116 res!1770517) b!4320117))

(declare-fun b_lambda!127135 () Bool)

(assert (=> (not b_lambda!127135) (not b!4320116)))

(declare-fun m!4913905 () Bool)

(assert (=> b!4320116 m!4913905))

(declare-fun m!4913907 () Bool)

(assert (=> b!4320117 m!4913907))

(assert (=> d!1269884 d!1270256))

(declare-fun d!1270258 () Bool)

(assert (=> d!1270258 (= (isEmpty!28110 (getValueByKey!293 lt!1537685 lt!1537672)) (not ((_ is Some!10293) (getValueByKey!293 lt!1537685 lt!1537672))))))

(assert (=> d!1269958 d!1270258))

(declare-fun d!1270260 () Bool)

(assert (=> d!1270260 (= (inRange!0 (index!1459 lt!1537950) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (and (bvsge (index!1459 lt!1537950) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537950) (bvadd (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001))))))

(assert (=> b!4319540 d!1270260))

(declare-fun d!1270262 () Bool)

(declare-fun res!1770518 () Bool)

(declare-fun e!2687659 () Bool)

(assert (=> d!1270262 (=> res!1770518 e!2687659)))

(assert (=> d!1270262 (= res!1770518 (and ((_ is Cons!48357) lt!1537814) (= (_1!26845 (h!53814 lt!1537814)) key!2048)))))

(assert (=> d!1270262 (= (containsKey!393 lt!1537814 key!2048) e!2687659)))

(declare-fun b!4320118 () Bool)

(declare-fun e!2687660 () Bool)

(assert (=> b!4320118 (= e!2687659 e!2687660)))

(declare-fun res!1770519 () Bool)

(assert (=> b!4320118 (=> (not res!1770519) (not e!2687660))))

(assert (=> b!4320118 (= res!1770519 ((_ is Cons!48357) lt!1537814))))

(declare-fun b!4320119 () Bool)

(assert (=> b!4320119 (= e!2687660 (containsKey!393 (t!355350 lt!1537814) key!2048))))

(assert (= (and d!1270262 (not res!1770518)) b!4320118))

(assert (= (and b!4320118 res!1770519) b!4320119))

(declare-fun m!4913909 () Bool)

(assert (=> b!4320119 m!4913909))

(assert (=> d!1269898 d!1270262))

(assert (=> d!1269898 d!1270012))

(declare-fun d!1270264 () Bool)

(declare-fun res!1770520 () Bool)

(declare-fun e!2687661 () Bool)

(assert (=> d!1270264 (=> res!1770520 e!2687661)))

(assert (=> d!1270264 (= res!1770520 (not ((_ is Cons!48357) (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))))

(assert (=> d!1270264 (= (noDuplicateKeys!259 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605))))) e!2687661)))

(declare-fun b!4320120 () Bool)

(declare-fun e!2687662 () Bool)

(assert (=> b!4320120 (= e!2687661 e!2687662)))

(declare-fun res!1770521 () Bool)

(assert (=> b!4320120 (=> (not res!1770521) (not e!2687662))))

(assert (=> b!4320120 (= res!1770521 (not (containsKey!393 (t!355350 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605))))) (_1!26845 (h!53814 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))))))

(declare-fun b!4320121 () Bool)

(assert (=> b!4320121 (= e!2687662 (noDuplicateKeys!259 (t!355350 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))))

(assert (= (and d!1270264 (not res!1770520)) b!4320120))

(assert (= (and b!4320120 res!1770521) b!4320121))

(declare-fun m!4913911 () Bool)

(assert (=> b!4320120 m!4913911))

(declare-fun m!4913913 () Bool)

(assert (=> b!4320121 m!4913913))

(assert (=> bs!606187 d!1270264))

(declare-fun d!1270266 () Bool)

(declare-fun res!1770522 () Bool)

(declare-fun e!2687663 () Bool)

(assert (=> d!1270266 (=> res!1770522 e!2687663)))

(assert (=> d!1270266 (= res!1770522 ((_ is Nil!48358) (t!355351 (toList!2537 lt!1537605))))))

(assert (=> d!1270266 (= (forall!8800 (t!355351 (toList!2537 lt!1537605)) lambda!133657) e!2687663)))

(declare-fun b!4320122 () Bool)

(declare-fun e!2687664 () Bool)

(assert (=> b!4320122 (= e!2687663 e!2687664)))

(declare-fun res!1770523 () Bool)

(assert (=> b!4320122 (=> (not res!1770523) (not e!2687664))))

(assert (=> b!4320122 (= res!1770523 (dynLambda!20499 lambda!133657 (h!53815 (t!355351 (toList!2537 lt!1537605)))))))

(declare-fun b!4320123 () Bool)

(assert (=> b!4320123 (= e!2687664 (forall!8800 (t!355351 (t!355351 (toList!2537 lt!1537605))) lambda!133657))))

(assert (= (and d!1270266 (not res!1770522)) b!4320122))

(assert (= (and b!4320122 res!1770523) b!4320123))

(declare-fun b_lambda!127137 () Bool)

(assert (=> (not b_lambda!127137) (not b!4320122)))

(declare-fun m!4913915 () Bool)

(assert (=> b!4320122 m!4913915))

(declare-fun m!4913917 () Bool)

(assert (=> b!4320123 m!4913917))

(assert (=> b!4319602 d!1270266))

(assert (=> d!1269952 d!1269960))

(declare-fun d!1270268 () Bool)

(assert (=> d!1270268 (containsKey!394 lt!1537671 lt!1537672)))

(assert (=> d!1270268 true))

(declare-fun _$12!1157 () Unit!67649)

(assert (=> d!1270268 (= (choose!26371 lt!1537671 lt!1537672) _$12!1157)))

(declare-fun bs!606369 () Bool)

(assert (= bs!606369 d!1270268))

(assert (=> bs!606369 m!4912723))

(assert (=> d!1269952 d!1270268))

(declare-fun d!1270270 () Bool)

(declare-fun res!1770524 () Bool)

(declare-fun e!2687665 () Bool)

(assert (=> d!1270270 (=> res!1770524 e!2687665)))

(assert (=> d!1270270 (= res!1770524 (or ((_ is Nil!48358) lt!1537671) ((_ is Nil!48358) (t!355351 lt!1537671))))))

(assert (=> d!1270270 (= (isStrictlySorted!20 lt!1537671) e!2687665)))

(declare-fun b!4320124 () Bool)

(declare-fun e!2687666 () Bool)

(assert (=> b!4320124 (= e!2687665 e!2687666)))

(declare-fun res!1770525 () Bool)

(assert (=> b!4320124 (=> (not res!1770525) (not e!2687666))))

(assert (=> b!4320124 (= res!1770525 (bvslt (_1!26846 (h!53815 lt!1537671)) (_1!26846 (h!53815 (t!355351 lt!1537671)))))))

(declare-fun b!4320125 () Bool)

(assert (=> b!4320125 (= e!2687666 (isStrictlySorted!20 (t!355351 lt!1537671)))))

(assert (= (and d!1270270 (not res!1770524)) b!4320124))

(assert (= (and b!4320124 res!1770525) b!4320125))

(declare-fun m!4913919 () Bool)

(assert (=> b!4320125 m!4913919))

(assert (=> d!1269952 d!1270270))

(declare-fun d!1270272 () Bool)

(declare-fun lt!1538413 () Bool)

(assert (=> d!1270272 (= lt!1538413 (select (content!7568 e!2687334) key!2048))))

(declare-fun e!2687667 () Bool)

(assert (=> d!1270272 (= lt!1538413 e!2687667)))

(declare-fun res!1770527 () Bool)

(assert (=> d!1270272 (=> (not res!1770527) (not e!2687667))))

(assert (=> d!1270272 (= res!1770527 ((_ is Cons!48359) e!2687334))))

(assert (=> d!1270272 (= (contains!10400 e!2687334 key!2048) lt!1538413)))

(declare-fun b!4320126 () Bool)

(declare-fun e!2687668 () Bool)

(assert (=> b!4320126 (= e!2687667 e!2687668)))

(declare-fun res!1770526 () Bool)

(assert (=> b!4320126 (=> res!1770526 e!2687668)))

(assert (=> b!4320126 (= res!1770526 (= (h!53817 e!2687334) key!2048))))

(declare-fun b!4320127 () Bool)

(assert (=> b!4320127 (= e!2687668 (contains!10400 (t!355356 e!2687334) key!2048))))

(assert (= (and d!1270272 res!1770527) b!4320126))

(assert (= (and b!4320126 (not res!1770526)) b!4320127))

(declare-fun m!4913921 () Bool)

(assert (=> d!1270272 m!4913921))

(declare-fun m!4913923 () Bool)

(assert (=> d!1270272 m!4913923))

(declare-fun m!4913925 () Bool)

(assert (=> b!4320127 m!4913925))

(assert (=> bm!299248 d!1270272))

(assert (=> d!1269956 d!1269948))

(declare-fun d!1270274 () Bool)

(assert (=> d!1270274 (contains!10398 lt!1537669 (tuple2!47123 lt!1537672 lt!1537673))))

(assert (=> d!1270274 true))

(declare-fun _$14!705 () Unit!67649)

(assert (=> d!1270274 (= (choose!26372 lt!1537669 lt!1537672 lt!1537673) _$14!705)))

(declare-fun bs!606370 () Bool)

(assert (= bs!606370 d!1270274))

(assert (=> bs!606370 m!4912711))

(assert (=> d!1269956 d!1270274))

(declare-fun d!1270276 () Bool)

(declare-fun res!1770528 () Bool)

(declare-fun e!2687669 () Bool)

(assert (=> d!1270276 (=> res!1770528 e!2687669)))

(assert (=> d!1270276 (= res!1770528 (or ((_ is Nil!48358) lt!1537669) ((_ is Nil!48358) (t!355351 lt!1537669))))))

(assert (=> d!1270276 (= (isStrictlySorted!20 lt!1537669) e!2687669)))

(declare-fun b!4320128 () Bool)

(declare-fun e!2687670 () Bool)

(assert (=> b!4320128 (= e!2687669 e!2687670)))

(declare-fun res!1770529 () Bool)

(assert (=> b!4320128 (=> (not res!1770529) (not e!2687670))))

(assert (=> b!4320128 (= res!1770529 (bvslt (_1!26846 (h!53815 lt!1537669)) (_1!26846 (h!53815 (t!355351 lt!1537669)))))))

(declare-fun b!4320129 () Bool)

(assert (=> b!4320129 (= e!2687670 (isStrictlySorted!20 (t!355351 lt!1537669)))))

(assert (= (and d!1270276 (not res!1770528)) b!4320128))

(assert (= (and b!4320128 res!1770529) b!4320129))

(declare-fun m!4913927 () Bool)

(assert (=> b!4320129 m!4913927))

(assert (=> d!1269956 d!1270276))

(declare-fun d!1270278 () Bool)

(declare-fun e!2687671 () Bool)

(assert (=> d!1270278 e!2687671))

(declare-fun res!1770530 () Bool)

(assert (=> d!1270278 (=> res!1770530 e!2687671)))

(declare-fun lt!1538415 () Bool)

(assert (=> d!1270278 (= res!1770530 (not lt!1538415))))

(declare-fun lt!1538414 () Bool)

(assert (=> d!1270278 (= lt!1538415 lt!1538414)))

(declare-fun lt!1538417 () Unit!67649)

(declare-fun e!2687672 () Unit!67649)

(assert (=> d!1270278 (= lt!1538417 e!2687672)))

(declare-fun c!734690 () Bool)

(assert (=> d!1270278 (= c!734690 lt!1538414)))

(assert (=> d!1270278 (= lt!1538414 (containsKey!394 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> d!1270278 (= (contains!10396 lt!1537866 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) lt!1538415)))

(declare-fun b!4320130 () Bool)

(declare-fun lt!1538416 () Unit!67649)

(assert (=> b!4320130 (= e!2687672 lt!1538416)))

(assert (=> b!4320130 (= lt!1538416 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(assert (=> b!4320130 (isDefined!7594 (getValueByKey!293 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4320131 () Bool)

(declare-fun Unit!67711 () Unit!67649)

(assert (=> b!4320131 (= e!2687672 Unit!67711)))

(declare-fun b!4320132 () Bool)

(assert (=> b!4320132 (= e!2687671 (isDefined!7594 (getValueByKey!293 (toList!2537 lt!1537866) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (= (and d!1270278 c!734690) b!4320130))

(assert (= (and d!1270278 (not c!734690)) b!4320131))

(assert (= (and d!1270278 (not res!1770530)) b!4320132))

(declare-fun m!4913929 () Bool)

(assert (=> d!1270278 m!4913929))

(declare-fun m!4913931 () Bool)

(assert (=> b!4320130 m!4913931))

(assert (=> b!4320130 m!4912927))

(assert (=> b!4320130 m!4912927))

(declare-fun m!4913933 () Bool)

(assert (=> b!4320130 m!4913933))

(assert (=> b!4320132 m!4912927))

(assert (=> b!4320132 m!4912927))

(assert (=> b!4320132 m!4913933))

(assert (=> d!1269916 d!1270278))

(declare-fun b!4320135 () Bool)

(declare-fun e!2687674 () Option!10294)

(assert (=> b!4320135 (= e!2687674 (getValueByKey!293 (t!355351 lt!1537868) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4320133 () Bool)

(declare-fun e!2687673 () Option!10294)

(assert (=> b!4320133 (= e!2687673 (Some!10293 (_2!26846 (h!53815 lt!1537868))))))

(declare-fun b!4320136 () Bool)

(assert (=> b!4320136 (= e!2687674 None!10293)))

(declare-fun c!734691 () Bool)

(declare-fun d!1270280 () Bool)

(assert (=> d!1270280 (= c!734691 (and ((_ is Cons!48358) lt!1537868) (= (_1!26846 (h!53815 lt!1537868)) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270280 (= (getValueByKey!293 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) e!2687673)))

(declare-fun b!4320134 () Bool)

(assert (=> b!4320134 (= e!2687673 e!2687674)))

(declare-fun c!734692 () Bool)

(assert (=> b!4320134 (= c!734692 (and ((_ is Cons!48358) lt!1537868) (not (= (_1!26846 (h!53815 lt!1537868)) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))))

(assert (= (and d!1270280 c!734691) b!4320133))

(assert (= (and d!1270280 (not c!734691)) b!4320134))

(assert (= (and b!4320134 c!734692) b!4320135))

(assert (= (and b!4320134 (not c!734692)) b!4320136))

(declare-fun m!4913935 () Bool)

(assert (=> b!4320135 m!4913935))

(assert (=> d!1269916 d!1270280))

(declare-fun d!1270282 () Bool)

(assert (=> d!1270282 (= (getValueByKey!293 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))) (Some!10293 (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun lt!1538420 () Unit!67649)

(declare-fun choose!26384 (List!48482 (_ BitVec 64) List!48481) Unit!67649)

(assert (=> d!1270282 (= lt!1538420 (choose!26384 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun e!2687677 () Bool)

(assert (=> d!1270282 e!2687677))

(declare-fun res!1770535 () Bool)

(assert (=> d!1270282 (=> (not res!1770535) (not e!2687677))))

(assert (=> d!1270282 (= res!1770535 (isStrictlySorted!20 lt!1537868))))

(assert (=> d!1270282 (= (lemmaContainsTupThenGetReturnValue!93 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))) lt!1538420)))

(declare-fun b!4320141 () Bool)

(declare-fun res!1770536 () Bool)

(assert (=> b!4320141 (=> (not res!1770536) (not e!2687677))))

(assert (=> b!4320141 (= res!1770536 (containsKey!394 lt!1537868 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4320142 () Bool)

(assert (=> b!4320142 (= e!2687677 (contains!10398 lt!1537868 (tuple2!47123 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (= (and d!1270282 res!1770535) b!4320141))

(assert (= (and b!4320141 res!1770536) b!4320142))

(assert (=> d!1270282 m!4912921))

(declare-fun m!4913937 () Bool)

(assert (=> d!1270282 m!4913937))

(declare-fun m!4913939 () Bool)

(assert (=> d!1270282 m!4913939))

(declare-fun m!4913941 () Bool)

(assert (=> b!4320141 m!4913941))

(declare-fun m!4913943 () Bool)

(assert (=> b!4320142 m!4913943))

(assert (=> d!1269916 d!1270282))

(declare-fun b!4320163 () Bool)

(declare-fun e!2687688 () List!48482)

(declare-fun e!2687689 () List!48482)

(assert (=> b!4320163 (= e!2687688 e!2687689)))

(declare-fun c!734703 () Bool)

(assert (=> b!4320163 (= c!734703 (and ((_ is Cons!48358) (toList!2537 call!299125)) (= (_1!26846 (h!53815 (toList!2537 call!299125))) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun c!734704 () Bool)

(declare-fun b!4320164 () Bool)

(assert (=> b!4320164 (= c!734704 (and ((_ is Cons!48358) (toList!2537 call!299125)) (bvsgt (_1!26846 (h!53815 (toList!2537 call!299125))) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun e!2687691 () List!48482)

(assert (=> b!4320164 (= e!2687689 e!2687691)))

(declare-fun b!4320165 () Bool)

(declare-fun call!299344 () List!48482)

(assert (=> b!4320165 (= e!2687691 call!299344)))

(declare-fun bm!299337 () Bool)

(declare-fun call!299343 () List!48482)

(assert (=> bm!299337 (= call!299344 call!299343)))

(declare-fun d!1270284 () Bool)

(declare-fun e!2687690 () Bool)

(assert (=> d!1270284 e!2687690))

(declare-fun res!1770541 () Bool)

(assert (=> d!1270284 (=> (not res!1770541) (not e!2687690))))

(declare-fun lt!1538423 () List!48482)

(assert (=> d!1270284 (= res!1770541 (isStrictlySorted!20 lt!1538423))))

(assert (=> d!1270284 (= lt!1538423 e!2687688)))

(declare-fun c!734701 () Bool)

(assert (=> d!1270284 (= c!734701 (and ((_ is Cons!48358) (toList!2537 call!299125)) (bvslt (_1!26846 (h!53815 (toList!2537 call!299125))) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(assert (=> d!1270284 (isStrictlySorted!20 (toList!2537 call!299125))))

(assert (=> d!1270284 (= (insertStrictlySorted!53 (toList!2537 call!299125) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))) lt!1538423)))

(declare-fun b!4320166 () Bool)

(assert (=> b!4320166 (= e!2687690 (contains!10398 lt!1538423 (tuple2!47123 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611)))))))

(declare-fun b!4320167 () Bool)

(assert (=> b!4320167 (= e!2687689 call!299343)))

(declare-fun b!4320168 () Bool)

(declare-fun call!299342 () List!48482)

(assert (=> b!4320168 (= e!2687688 call!299342)))

(declare-fun e!2687692 () List!48482)

(declare-fun b!4320169 () Bool)

(assert (=> b!4320169 (= e!2687692 (ite c!734703 (t!355351 (toList!2537 call!299125)) (ite c!734704 (Cons!48358 (h!53815 (toList!2537 call!299125)) (t!355351 (toList!2537 call!299125))) Nil!48358)))))

(declare-fun bm!299338 () Bool)

(declare-fun $colon$colon!660 (List!48482 tuple2!47122) List!48482)

(assert (=> bm!299338 (= call!299342 ($colon$colon!660 e!2687692 (ite c!734701 (h!53815 (toList!2537 call!299125)) (tuple2!47123 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))))

(declare-fun c!734702 () Bool)

(assert (=> bm!299338 (= c!734702 c!734701)))

(declare-fun b!4320170 () Bool)

(assert (=> b!4320170 (= e!2687692 (insertStrictlySorted!53 (t!355351 (toList!2537 call!299125)) (_1!26846 (tuple2!47123 lt!1537608 lt!1537611)) (_2!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4320171 () Bool)

(declare-fun res!1770542 () Bool)

(assert (=> b!4320171 (=> (not res!1770542) (not e!2687690))))

(assert (=> b!4320171 (= res!1770542 (containsKey!394 lt!1538423 (_1!26846 (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun b!4320172 () Bool)

(assert (=> b!4320172 (= e!2687691 call!299344)))

(declare-fun bm!299339 () Bool)

(assert (=> bm!299339 (= call!299343 call!299342)))

(assert (= (and d!1270284 c!734701) b!4320168))

(assert (= (and d!1270284 (not c!734701)) b!4320163))

(assert (= (and b!4320163 c!734703) b!4320167))

(assert (= (and b!4320163 (not c!734703)) b!4320164))

(assert (= (and b!4320164 c!734704) b!4320165))

(assert (= (and b!4320164 (not c!734704)) b!4320172))

(assert (= (or b!4320165 b!4320172) bm!299337))

(assert (= (or b!4320167 bm!299337) bm!299339))

(assert (= (or b!4320168 bm!299339) bm!299338))

(assert (= (and bm!299338 c!734702) b!4320170))

(assert (= (and bm!299338 (not c!734702)) b!4320169))

(assert (= (and d!1270284 res!1770541) b!4320171))

(assert (= (and b!4320171 res!1770542) b!4320166))

(declare-fun m!4913945 () Bool)

(assert (=> b!4320166 m!4913945))

(declare-fun m!4913947 () Bool)

(assert (=> d!1270284 m!4913947))

(declare-fun m!4913949 () Bool)

(assert (=> d!1270284 m!4913949))

(declare-fun m!4913951 () Bool)

(assert (=> bm!299338 m!4913951))

(declare-fun m!4913953 () Bool)

(assert (=> b!4320170 m!4913953))

(declare-fun m!4913955 () Bool)

(assert (=> b!4320171 m!4913955))

(assert (=> d!1269916 d!1270284))

(declare-fun bm!299348 () Bool)

(declare-fun call!299355 () Bool)

(assert (=> bm!299348 (= call!299355 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun bm!299349 () Bool)

(declare-fun call!299353 () SeekEntryResult!20)

(assert (=> bm!299349 (= call!299353 (seekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320208 () Bool)

(declare-fun c!734716 () Bool)

(declare-fun lt!1538498 () SeekEntryResult!20)

(assert (=> b!4320208 (= c!734716 ((_ is MissingVacant!20) lt!1538498))))

(declare-fun e!2687713 () Bool)

(declare-fun e!2687714 () Bool)

(assert (=> b!4320208 (= e!2687713 e!2687714)))

(declare-fun lt!1538487 () SeekEntryResult!20)

(declare-fun b!4320209 () Bool)

(declare-fun e!2687710 () Bool)

(assert (=> b!4320209 (= e!2687710 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1538487)) lt!1537608))))

(declare-fun b!4320210 () Bool)

(declare-fun res!1770569 () Bool)

(declare-fun e!2687712 () Bool)

(assert (=> b!4320210 (=> (not res!1770569) (not e!2687712))))

(declare-fun lt!1538491 () tuple2!47126)

(assert (=> b!4320210 (= res!1770569 (contains!10396 (map!10382 (_2!26848 lt!1538491)) lt!1537608))))

(declare-fun b!4320211 () Bool)

(assert (=> b!4320211 (= e!2687714 ((_ is Undefined!20) lt!1538498))))

(declare-fun b!4320212 () Bool)

(declare-fun e!2687715 () Bool)

(assert (=> b!4320212 (= e!2687715 (not call!299355))))

(declare-fun b!4320213 () Bool)

(declare-fun res!1770561 () Bool)

(assert (=> b!4320213 (=> (not res!1770561) (not e!2687715))))

(assert (=> b!4320213 (= res!1770561 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1460 lt!1538498)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320214 () Bool)

(declare-fun res!1770563 () Bool)

(declare-fun call!299356 () Bool)

(assert (=> b!4320214 (= res!1770563 call!299356)))

(assert (=> b!4320214 (=> (not res!1770563) (not e!2687710))))

(declare-fun b!4320215 () Bool)

(declare-fun e!2687716 () Bool)

(assert (=> b!4320215 (= e!2687716 (not call!299355))))

(declare-fun bm!299350 () Bool)

(declare-fun call!299354 () Bool)

(assert (=> bm!299350 (= call!299354 call!299356)))

(declare-fun b!4320207 () Bool)

(declare-fun e!2687711 () Unit!67649)

(declare-fun lt!1538497 () Unit!67649)

(assert (=> b!4320207 (= e!2687711 lt!1538497)))

(assert (=> b!4320207 (= lt!1538497 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4320207 (= lt!1538498 call!299353)))

(declare-fun c!734715 () Bool)

(assert (=> b!4320207 (= c!734715 ((_ is MissingZero!20) lt!1538498))))

(assert (=> b!4320207 e!2687713))

(declare-fun d!1270286 () Bool)

(assert (=> d!1270286 e!2687712))

(declare-fun res!1770564 () Bool)

(assert (=> d!1270286 (=> (not res!1770564) (not e!2687712))))

(assert (=> d!1270286 (= res!1770564 (_1!26848 lt!1538491))))

(assert (=> d!1270286 (= lt!1538491 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (bvadd (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (_vacant!4804 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun lt!1538494 () Unit!67649)

(declare-fun lt!1538502 () Unit!67649)

(assert (=> d!1270286 (= lt!1538494 lt!1538502)))

(declare-fun lt!1538512 () array!17186)

(declare-fun lt!1538503 () array!17188)

(assert (=> d!1270286 (contains!10396 (getCurrentListMap!23 lt!1538512 lt!1538503 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (select (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803))))))

(assert (=> d!1270286 (= lt!1538502 (lemmaValidKeyInArrayIsInListMap!13 lt!1538512 lt!1538503 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270286 (= lt!1538503 (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (=> d!1270286 (= lt!1538512 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun lt!1538513 () Unit!67649)

(declare-fun lt!1538504 () Unit!67649)

(assert (=> d!1270286 (= lt!1538513 lt!1538504)))

(declare-fun lt!1538495 () array!17186)

(assert (=> d!1270286 (= (arrayCountValidKeys!0 lt!1538495 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) (bvadd (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!17186 (_ BitVec 32)) Unit!67649)

(assert (=> d!1270286 (= lt!1538504 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!1538495 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803))))))

(assert (=> d!1270286 (= lt!1538495 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun lt!1538509 () Unit!67649)

(declare-fun lt!1538507 () Unit!67649)

(assert (=> d!1270286 (= lt!1538509 lt!1538507)))

(declare-fun lt!1538511 () array!17186)

(assert (=> d!1270286 (arrayContainsKey!0 lt!1538511 lt!1537608 #b00000000000000000000000000000000)))

(assert (=> d!1270286 (= lt!1538507 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!1538511 lt!1537608 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803))))))

(assert (=> d!1270286 (= lt!1538511 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun lt!1538508 () Unit!67649)

(declare-fun lt!1538493 () Unit!67649)

(assert (=> d!1270286 (= lt!1538508 lt!1538493)))

(assert (=> d!1270286 (= (+!322 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 lt!1537608 lt!1537611)) (getCurrentListMap!23 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!1 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) (_ BitVec 64) List!48481 Int) Unit!67649)

(assert (=> d!1270286 (= lt!1538493 (lemmaAddValidKeyToArrayThenAddPairToListMap!1 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608 lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538499 () Unit!67649)

(declare-fun lt!1538486 () Unit!67649)

(assert (=> d!1270286 (= lt!1538499 lt!1538486)))

(assert (=> d!1270286 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!17186 (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> d!1270286 (= lt!1538486 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 lt!1537608 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538485 () Unit!67649)

(declare-fun lt!1538506 () Unit!67649)

(assert (=> d!1270286 (= lt!1538485 lt!1538506)))

(assert (=> d!1270286 (= (arrayCountValidKeys!0 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (bvadd (arrayCountValidKeys!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) #b00000000000000000000000000000001))))

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!17186 (_ BitVec 32) (_ BitVec 64)) Unit!67649)

(assert (=> d!1270286 (= lt!1538506 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608))))

(declare-fun lt!1538500 () Unit!67649)

(declare-fun lt!1538501 () Unit!67649)

(assert (=> d!1270286 (= lt!1538500 lt!1538501)))

(declare-fun lt!1538496 () (_ BitVec 32))

(declare-fun lt!1538505 () List!48484)

(assert (=> d!1270286 (arrayNoDuplicates!0 (array!17187 (store (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1537608) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538496 lt!1538505)))

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!17186 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!48484) Unit!67649)

(assert (=> d!1270286 (= lt!1538501 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803)) lt!1538496 lt!1538505))))

(assert (=> d!1270286 (= lt!1538505 Nil!48360)))

(assert (=> d!1270286 (= lt!1538496 #b00000000000000000000000000000000)))

(declare-fun lt!1538492 () Unit!67649)

(declare-fun e!2687709 () Unit!67649)

(assert (=> d!1270286 (= lt!1538492 e!2687709)))

(declare-fun c!734713 () Bool)

(assert (=> d!1270286 (= c!734713 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000))))

(declare-fun lt!1538484 () Unit!67649)

(assert (=> d!1270286 (= lt!1538484 e!2687711)))

(declare-fun c!734714 () Bool)

(assert (=> d!1270286 (= c!734714 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1537608))))

(assert (=> d!1270286 (valid!3754 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))

(assert (=> d!1270286 (= (updateHelperNewKey!10 (v!42702 (underlying!9715 (_2!26847 lt!1537622))) lt!1537608 lt!1537611 (ite c!734482 (index!1461 lt!1537803) (index!1460 lt!1537803))) lt!1538491)))

(declare-fun b!4320216 () Bool)

(declare-fun Unit!67712 () Unit!67649)

(assert (=> b!4320216 (= e!2687711 Unit!67712)))

(declare-fun lt!1538490 () Unit!67649)

(assert (=> b!4320216 (= lt!1538490 (lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4320216 (= lt!1538487 call!299353)))

(declare-fun res!1770562 () Bool)

(assert (=> b!4320216 (= res!1770562 ((_ is Found!20) lt!1538487))))

(assert (=> b!4320216 (=> (not res!1770562) (not e!2687710))))

(assert (=> b!4320216 e!2687710))

(declare-fun lt!1538489 () Unit!67649)

(assert (=> b!4320216 (= lt!1538489 lt!1538490)))

(assert (=> b!4320216 false))

(declare-fun b!4320217 () Bool)

(assert (=> b!4320217 (= e!2687714 e!2687716)))

(declare-fun res!1770565 () Bool)

(assert (=> b!4320217 (= res!1770565 call!299354)))

(assert (=> b!4320217 (=> (not res!1770565) (not e!2687716))))

(declare-fun b!4320218 () Bool)

(declare-fun res!1770568 () Bool)

(assert (=> b!4320218 (= res!1770568 (= (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1461 lt!1538498)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4320218 (=> (not res!1770568) (not e!2687716))))

(declare-fun b!4320219 () Bool)

(declare-fun res!1770566 () Bool)

(assert (=> b!4320219 (=> (not res!1770566) (not e!2687715))))

(assert (=> b!4320219 (= res!1770566 call!299354)))

(assert (=> b!4320219 (= e!2687713 e!2687715)))

(declare-fun b!4320220 () Bool)

(assert (=> b!4320220 (= e!2687712 (= (map!10382 (_2!26848 lt!1538491)) (+!322 (map!10382 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (tuple2!47123 lt!1537608 lt!1537611))))))

(declare-fun bm!299351 () Bool)

(assert (=> bm!299351 (= call!299356 (inRange!0 (ite c!734714 (index!1459 lt!1538487) (ite c!734715 (index!1460 lt!1538498) (index!1461 lt!1538498))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320221 () Bool)

(declare-fun res!1770567 () Bool)

(assert (=> b!4320221 (=> (not res!1770567) (not e!2687712))))

(assert (=> b!4320221 (= res!1770567 (valid!3754 (_2!26848 lt!1538491)))))

(declare-fun b!4320222 () Bool)

(declare-fun Unit!67713 () Unit!67649)

(assert (=> b!4320222 (= e!2687709 Unit!67713)))

(declare-fun b!4320223 () Bool)

(declare-fun Unit!67714 () Unit!67649)

(assert (=> b!4320223 (= e!2687709 Unit!67714)))

(declare-fun lt!1538510 () Unit!67649)

(declare-fun lemmaArrayContainsKeyThenInListMap!1 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) (_ BitVec 32) Int) Unit!67649)

(assert (=> b!4320223 (= lt!1538510 (lemmaArrayContainsKeyThenInListMap!1 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537608 #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> b!4320223 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1537608)))

(declare-fun lt!1538488 () Unit!67649)

(assert (=> b!4320223 (= lt!1538488 lt!1538510)))

(assert (=> b!4320223 false))

(assert (= (and d!1270286 c!734714) b!4320216))

(assert (= (and d!1270286 (not c!734714)) b!4320207))

(assert (= (and b!4320216 res!1770562) b!4320214))

(assert (= (and b!4320214 res!1770563) b!4320209))

(assert (= (and b!4320207 c!734715) b!4320219))

(assert (= (and b!4320207 (not c!734715)) b!4320208))

(assert (= (and b!4320219 res!1770566) b!4320213))

(assert (= (and b!4320213 res!1770561) b!4320212))

(assert (= (and b!4320208 c!734716) b!4320217))

(assert (= (and b!4320208 (not c!734716)) b!4320211))

(assert (= (and b!4320217 res!1770565) b!4320218))

(assert (= (and b!4320218 res!1770568) b!4320215))

(assert (= (or b!4320212 b!4320215) bm!299348))

(assert (= (or b!4320219 b!4320217) bm!299350))

(assert (= (or b!4320214 bm!299350) bm!299351))

(assert (= (or b!4320216 b!4320207) bm!299349))

(assert (= (and d!1270286 c!734713) b!4320223))

(assert (= (and d!1270286 (not c!734713)) b!4320222))

(assert (= (and d!1270286 res!1770564) b!4320221))

(assert (= (and b!4320221 res!1770567) b!4320210))

(assert (= (and b!4320210 res!1770569) b!4320220))

(assert (=> b!4320216 m!4912859))

(declare-fun m!4913957 () Bool)

(assert (=> b!4320213 m!4913957))

(declare-fun m!4913959 () Bool)

(assert (=> b!4320223 m!4913959))

(assert (=> b!4320223 m!4913203))

(assert (=> b!4320223 m!4913203))

(declare-fun m!4913961 () Bool)

(assert (=> b!4320223 m!4913961))

(declare-fun m!4913963 () Bool)

(assert (=> b!4320218 m!4913963))

(assert (=> bm!299348 m!4912869))

(declare-fun m!4913965 () Bool)

(assert (=> b!4320210 m!4913965))

(assert (=> b!4320210 m!4913965))

(declare-fun m!4913967 () Bool)

(assert (=> b!4320210 m!4913967))

(declare-fun m!4913969 () Bool)

(assert (=> bm!299351 m!4913969))

(declare-fun m!4913971 () Bool)

(assert (=> b!4320209 m!4913971))

(assert (=> b!4320207 m!4912857))

(assert (=> b!4320220 m!4913965))

(assert (=> b!4320220 m!4912853))

(assert (=> b!4320220 m!4912853))

(declare-fun m!4913973 () Bool)

(assert (=> b!4320220 m!4913973))

(assert (=> bm!299349 m!4912855))

(declare-fun m!4913975 () Bool)

(assert (=> b!4320221 m!4913975))

(assert (=> d!1270286 m!4912869))

(declare-fun m!4913977 () Bool)

(assert (=> d!1270286 m!4913977))

(declare-fun m!4913979 () Bool)

(assert (=> d!1270286 m!4913979))

(declare-fun m!4913981 () Bool)

(assert (=> d!1270286 m!4913981))

(assert (=> d!1270286 m!4913203))

(declare-fun m!4913983 () Bool)

(assert (=> d!1270286 m!4913983))

(assert (=> d!1270286 m!4913373))

(declare-fun m!4913985 () Bool)

(assert (=> d!1270286 m!4913985))

(declare-fun m!4913987 () Bool)

(assert (=> d!1270286 m!4913987))

(declare-fun m!4913989 () Bool)

(assert (=> d!1270286 m!4913989))

(declare-fun m!4913991 () Bool)

(assert (=> d!1270286 m!4913991))

(declare-fun m!4913993 () Bool)

(assert (=> d!1270286 m!4913993))

(assert (=> d!1270286 m!4913203))

(assert (=> d!1270286 m!4913961))

(assert (=> d!1270286 m!4913203))

(declare-fun m!4913995 () Bool)

(assert (=> d!1270286 m!4913995))

(declare-fun m!4913997 () Bool)

(assert (=> d!1270286 m!4913997))

(declare-fun m!4913999 () Bool)

(assert (=> d!1270286 m!4913999))

(declare-fun m!4914001 () Bool)

(assert (=> d!1270286 m!4914001))

(assert (=> d!1270286 m!4913977))

(assert (=> d!1270286 m!4913991))

(declare-fun m!4914003 () Bool)

(assert (=> d!1270286 m!4914003))

(declare-fun m!4914005 () Bool)

(assert (=> d!1270286 m!4914005))

(declare-fun m!4914007 () Bool)

(assert (=> d!1270286 m!4914007))

(assert (=> d!1270286 m!4912839))

(declare-fun m!4914009 () Bool)

(assert (=> d!1270286 m!4914009))

(declare-fun m!4914011 () Bool)

(assert (=> d!1270286 m!4914011))

(declare-fun m!4914013 () Bool)

(assert (=> d!1270286 m!4914013))

(assert (=> bm!299204 d!1270286))

(declare-fun d!1270288 () Bool)

(assert (=> d!1270288 (= (get!15666 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672)) (v!42709 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672)))))

(assert (=> b!4319496 d!1270288))

(declare-fun b!4320226 () Bool)

(declare-fun e!2687718 () Option!10294)

(assert (=> b!4320226 (= e!2687718 (getValueByKey!293 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))))

(declare-fun b!4320224 () Bool)

(declare-fun e!2687717 () Option!10294)

(assert (=> b!4320224 (= e!2687717 (Some!10293 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun b!4320227 () Bool)

(assert (=> b!4320227 (= e!2687718 None!10293)))

(declare-fun d!1270290 () Bool)

(declare-fun c!734717 () Bool)

(assert (=> d!1270290 (= c!734717 (and ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (= (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537672)))))

(assert (=> d!1270290 (= (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672) e!2687717)))

(declare-fun b!4320225 () Bool)

(assert (=> b!4320225 (= e!2687717 e!2687718)))

(declare-fun c!734718 () Bool)

(assert (=> b!4320225 (= c!734718 (and ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (not (= (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537672))))))

(assert (= (and d!1270290 c!734717) b!4320224))

(assert (= (and d!1270290 (not c!734717)) b!4320225))

(assert (= (and b!4320225 c!734718) b!4320226))

(assert (= (and b!4320225 (not c!734718)) b!4320227))

(declare-fun m!4914015 () Bool)

(assert (=> b!4320226 m!4914015))

(assert (=> b!4319496 d!1270290))

(assert (=> b!4319496 d!1269852))

(assert (=> b!4319594 d!1270128))

(declare-fun bm!299352 () Bool)

(declare-fun call!299362 () Bool)

(declare-fun call!299370 () Bool)

(assert (=> bm!299352 (= call!299362 call!299370)))

(declare-fun b!4320228 () Bool)

(declare-fun e!2687734 () tuple2!47126)

(declare-fun e!2687724 () tuple2!47126)

(assert (=> b!4320228 (= e!2687734 e!2687724)))

(declare-fun c!734729 () Bool)

(declare-fun lt!1538530 () SeekEntryResult!20)

(assert (=> b!4320228 (= c!734729 ((_ is MissingZero!20) lt!1538530))))

(declare-fun b!4320229 () Bool)

(declare-fun e!2687732 () Bool)

(assert (=> b!4320229 (= e!2687732 (not call!299362))))

(declare-fun e!2687719 () Bool)

(declare-fun lt!1538516 () SeekEntryResult!20)

(declare-fun b!4320230 () Bool)

(assert (=> b!4320230 (= e!2687719 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538516)) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!299353 () Bool)

(declare-fun call!299375 () Bool)

(assert (=> bm!299353 (= call!299375 call!299370)))

(declare-fun bm!299354 () Bool)

(declare-fun call!299364 () ListLongMap!1153)

(declare-fun call!299363 () ListLongMap!1153)

(assert (=> bm!299354 (= call!299364 call!299363)))

(declare-fun b!4320231 () Bool)

(declare-fun c!734723 () Bool)

(assert (=> b!4320231 (= c!734723 ((_ is MissingVacant!20) lt!1538530))))

(declare-fun e!2687733 () tuple2!47126)

(assert (=> b!4320231 (= e!2687733 e!2687734)))

(declare-fun call!299371 () Unit!67649)

(declare-fun bm!299355 () Bool)

(assert (=> bm!299355 (= call!299371 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320232 () Bool)

(declare-fun c!734719 () Bool)

(declare-fun lt!1538535 () SeekEntryResult!20)

(assert (=> b!4320232 (= c!734719 ((_ is MissingVacant!20) lt!1538535))))

(declare-fun e!2687731 () Bool)

(declare-fun e!2687738 () Bool)

(assert (=> b!4320232 (= e!2687731 e!2687738)))

(declare-fun call!299366 () Bool)

(declare-fun lt!1538537 () SeekEntryResult!20)

(declare-fun c!734730 () Bool)

(declare-fun bm!299356 () Bool)

(declare-fun c!734721 () Bool)

(declare-fun c!734727 () Bool)

(declare-fun c!734726 () Bool)

(declare-fun lt!1538525 () SeekEntryResult!20)

(declare-fun c!734724 () Bool)

(assert (=> bm!299356 (= call!299366 (inRange!0 (ite c!734726 (ite c!734730 (index!1459 lt!1538537) (ite c!734724 (index!1460 lt!1538525) (index!1461 lt!1538525))) (ite c!734721 (index!1459 lt!1538516) (ite c!734727 (index!1460 lt!1538535) (index!1461 lt!1538535)))) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun bm!299357 () Bool)

(declare-fun call!299358 () Bool)

(assert (=> bm!299357 (= call!299358 call!299366)))

(declare-fun b!4320233 () Bool)

(declare-fun lt!1538528 () Unit!67649)

(declare-fun lt!1538526 () Unit!67649)

(assert (=> b!4320233 (= lt!1538528 lt!1538526)))

(declare-fun call!299360 () ListLongMap!1153)

(assert (=> b!4320233 (= call!299364 call!299360)))

(declare-fun lt!1538519 () (_ BitVec 32))

(assert (=> b!4320233 (= lt!1538526 (lemmaChangeLongMinValueKeyThenAddPairToListMap!10 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) lt!1538519 (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(assert (=> b!4320233 (= lt!1538519 (bvor (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000010))))

(declare-fun e!2687736 () tuple2!47126)

(assert (=> b!4320233 (= e!2687736 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (bvor (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000010) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (_size!9529 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_vacant!4804 (ite c!734507 (_2!26848 lt!1537835) call!299231)))))))

(declare-fun b!4320234 () Bool)

(declare-fun e!2687730 () Unit!67649)

(declare-fun Unit!67715 () Unit!67649)

(assert (=> b!4320234 (= e!2687730 Unit!67715)))

(declare-fun lt!1538540 () Unit!67649)

(declare-fun call!299359 () Unit!67649)

(assert (=> b!4320234 (= lt!1538540 call!299359)))

(declare-fun call!299374 () SeekEntryResult!20)

(assert (=> b!4320234 (= lt!1538537 call!299374)))

(declare-fun res!1770572 () Bool)

(assert (=> b!4320234 (= res!1770572 ((_ is Found!20) lt!1538537))))

(declare-fun e!2687728 () Bool)

(assert (=> b!4320234 (=> (not res!1770572) (not e!2687728))))

(assert (=> b!4320234 e!2687728))

(declare-fun lt!1538538 () Unit!67649)

(assert (=> b!4320234 (= lt!1538538 lt!1538540)))

(assert (=> b!4320234 false))

(declare-fun b!4320235 () Bool)

(declare-fun res!1770577 () Bool)

(assert (=> b!4320235 (=> (not res!1770577) (not e!2687732))))

(declare-fun call!299365 () Bool)

(assert (=> b!4320235 (= res!1770577 call!299365)))

(declare-fun e!2687720 () Bool)

(assert (=> b!4320235 (= e!2687720 e!2687732)))

(declare-fun b!4320236 () Bool)

(declare-fun c!734722 () Bool)

(assert (=> b!4320236 (= c!734722 ((_ is MissingVacant!20) lt!1538525))))

(declare-fun e!2687726 () Bool)

(assert (=> b!4320236 (= e!2687720 e!2687726)))

(declare-fun b!4320237 () Bool)

(declare-fun res!1770578 () Bool)

(assert (=> b!4320237 (= res!1770578 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1461 lt!1538535)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687727 () Bool)

(assert (=> b!4320237 (=> (not res!1770578) (not e!2687727))))

(declare-fun res!1770581 () Bool)

(declare-fun b!4320238 () Bool)

(assert (=> b!4320238 (= res!1770581 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1461 lt!1538525)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687729 () Bool)

(assert (=> b!4320238 (=> (not res!1770581) (not e!2687729))))

(declare-fun call!299376 () ListLongMap!1153)

(declare-fun bm!299358 () Bool)

(assert (=> bm!299358 (= call!299376 (map!10382 (ite c!734507 (_2!26848 lt!1537835) call!299231)))))

(declare-fun b!4320239 () Bool)

(assert (=> b!4320239 (= e!2687727 (not call!299375))))

(declare-fun b!4320240 () Bool)

(assert (=> b!4320240 (= e!2687726 ((_ is Undefined!20) lt!1538525))))

(declare-fun b!4320241 () Bool)

(assert (=> b!4320241 (= e!2687729 (not call!299362))))

(declare-fun bm!299359 () Bool)

(declare-fun call!299380 () ListLongMap!1153)

(assert (=> bm!299359 (= call!299360 call!299380)))

(declare-fun bm!299360 () Bool)

(declare-fun call!299373 () ListLongMap!1153)

(declare-fun lt!1538529 () array!17188)

(assert (=> bm!299360 (= call!299373 (getCurrentListMap!23 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734726 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) lt!1538529) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000000 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320242 () Bool)

(declare-fun lt!1538524 () Unit!67649)

(declare-fun lt!1538521 () Unit!67649)

(assert (=> b!4320242 (= lt!1538524 lt!1538521)))

(declare-fun call!299377 () Bool)

(assert (=> b!4320242 call!299377))

(assert (=> b!4320242 (= lt!1538521 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) lt!1538529 (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (index!1459 lt!1538530) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(assert (=> b!4320242 (= lt!1538529 (array!17189 (store (arr!7672 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538530) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) (size!35711 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)))))))

(declare-fun lt!1538518 () Unit!67649)

(declare-fun lt!1538534 () Unit!67649)

(assert (=> b!4320242 (= lt!1538518 lt!1538534)))

(declare-fun call!299368 () ListLongMap!1153)

(assert (=> b!4320242 (= call!299363 call!299368)))

(assert (=> b!4320242 (= lt!1538534 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!10 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (index!1459 lt!1538530) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun lt!1538533 () Unit!67649)

(declare-fun e!2687735 () Unit!67649)

(assert (=> b!4320242 (= lt!1538533 e!2687735)))

(assert (=> b!4320242 (= c!734721 (contains!10396 call!299380 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4320242 (= e!2687724 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_size!9529 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (array!17189 (store (arr!7672 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538530) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) (size!35711 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)))) (_vacant!4804 (ite c!734507 (_2!26848 lt!1537835) call!299231)))))))

(declare-fun call!299357 () SeekEntryResult!20)

(declare-fun bm!299361 () Bool)

(assert (=> bm!299361 (= call!299357 (seekEntryOrOpen!0 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320243 () Bool)

(declare-fun res!1770571 () Bool)

(declare-fun e!2687737 () Bool)

(assert (=> b!4320243 (=> (not res!1770571) (not e!2687737))))

(assert (=> b!4320243 (= res!1770571 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1460 lt!1538535)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320244 () Bool)

(declare-fun e!2687721 () Bool)

(declare-fun call!299379 () ListLongMap!1153)

(assert (=> b!4320244 (= e!2687721 (= call!299379 call!299376))))

(declare-fun b!4320245 () Bool)

(declare-fun lt!1538522 () tuple2!47126)

(declare-fun call!299369 () tuple2!47126)

(assert (=> b!4320245 (= lt!1538522 call!299369)))

(assert (=> b!4320245 (= e!2687724 (tuple2!47127 (_1!26848 lt!1538522) (_2!26848 lt!1538522)))))

(declare-fun b!4320246 () Bool)

(assert (=> b!4320246 (= e!2687728 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538537)) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!299362 () Bool)

(declare-fun lt!1538536 () tuple2!47126)

(assert (=> bm!299362 (= call!299379 (map!10382 (_2!26848 lt!1538536)))))

(declare-fun b!4320247 () Bool)

(declare-fun Unit!67716 () Unit!67649)

(assert (=> b!4320247 (= e!2687735 Unit!67716)))

(declare-fun lt!1538515 () Unit!67649)

(assert (=> b!4320247 (= lt!1538515 call!299371)))

(declare-fun call!299378 () SeekEntryResult!20)

(assert (=> b!4320247 (= lt!1538535 call!299378)))

(assert (=> b!4320247 (= c!734727 ((_ is MissingZero!20) lt!1538535))))

(assert (=> b!4320247 e!2687731))

(declare-fun lt!1538523 () Unit!67649)

(assert (=> b!4320247 (= lt!1538523 lt!1538515)))

(assert (=> b!4320247 false))

(declare-fun c!734725 () Bool)

(declare-fun bm!299363 () Bool)

(declare-fun c!734720 () Bool)

(declare-fun lt!1538532 () (_ BitVec 32))

(assert (=> bm!299363 (= call!299380 (getCurrentListMap!23 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734720 (ite c!734725 lt!1538532 lt!1538519) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (ite (and c!734720 c!734725) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (ite c!734720 (ite c!734725 (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231))) #b00000000000000000000000000000000 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320248 () Bool)

(declare-fun res!1770574 () Bool)

(assert (=> b!4320248 (=> (not res!1770574) (not e!2687732))))

(assert (=> b!4320248 (= res!1770574 (= (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1460 lt!1538525)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320249 () Bool)

(declare-fun e!2687725 () Bool)

(assert (=> b!4320249 (= e!2687721 e!2687725)))

(declare-fun res!1770573 () Bool)

(assert (=> b!4320249 (= res!1770573 (contains!10396 call!299379 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4320249 (=> (not res!1770573) (not e!2687725))))

(declare-fun bm!299364 () Bool)

(assert (=> bm!299364 (= call!299378 call!299357)))

(declare-fun bm!299365 () Bool)

(assert (=> bm!299365 (= call!299369 (updateHelperNewKey!10 (ite c!734507 (_2!26848 lt!1537835) call!299231) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (ite c!734723 (index!1461 lt!1538530) (index!1460 lt!1538530))))))

(declare-fun b!4320250 () Bool)

(assert (=> b!4320250 (= e!2687726 e!2687729)))

(declare-fun res!1770582 () Bool)

(assert (=> b!4320250 (= res!1770582 call!299365)))

(assert (=> b!4320250 (=> (not res!1770582) (not e!2687729))))

(declare-fun b!4320251 () Bool)

(declare-fun lt!1538520 () Unit!67649)

(assert (=> b!4320251 (= lt!1538520 e!2687730)))

(assert (=> b!4320251 (= c!734730 call!299377)))

(assert (=> b!4320251 (= e!2687733 (tuple2!47127 false (ite c!734507 (_2!26848 lt!1537835) call!299231)))))

(declare-fun bm!299366 () Bool)

(assert (=> bm!299366 (= call!299359 (lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320252 () Bool)

(declare-fun e!2687723 () tuple2!47126)

(assert (=> b!4320252 (= e!2687723 e!2687733)))

(assert (=> b!4320252 (= lt!1538530 (seekEntryOrOpen!0 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(assert (=> b!4320252 (= c!734726 ((_ is Undefined!20) lt!1538530))))

(declare-fun bm!299367 () Bool)

(declare-fun call!299372 () Bool)

(assert (=> bm!299367 (= call!299365 call!299372)))

(declare-fun b!4320253 () Bool)

(declare-fun lt!1538527 () Unit!67649)

(assert (=> b!4320253 (= e!2687735 lt!1538527)))

(assert (=> b!4320253 (= lt!1538527 call!299359)))

(assert (=> b!4320253 (= lt!1538516 call!299378)))

(declare-fun res!1770570 () Bool)

(assert (=> b!4320253 (= res!1770570 ((_ is Found!20) lt!1538516))))

(assert (=> b!4320253 (=> (not res!1770570) (not e!2687719))))

(assert (=> b!4320253 e!2687719))

(declare-fun b!4320254 () Bool)

(assert (=> b!4320254 (= e!2687738 e!2687727)))

(declare-fun res!1770575 () Bool)

(declare-fun call!299361 () Bool)

(assert (=> b!4320254 (= res!1770575 call!299361)))

(assert (=> b!4320254 (=> (not res!1770575) (not e!2687727))))

(declare-fun bm!299368 () Bool)

(assert (=> bm!299368 (= call!299368 (getCurrentListMap!23 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734720 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (array!17189 (store (arr!7672 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538530) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) (size!35711 (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231))))) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000000 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(declare-fun b!4320255 () Bool)

(declare-fun lt!1538539 () Unit!67649)

(assert (=> b!4320255 (= e!2687730 lt!1538539)))

(assert (=> b!4320255 (= lt!1538539 call!299371)))

(assert (=> b!4320255 (= lt!1538525 call!299374)))

(assert (=> b!4320255 (= c!734724 ((_ is MissingZero!20) lt!1538525))))

(assert (=> b!4320255 e!2687720))

(declare-fun bm!299369 () Bool)

(assert (=> bm!299369 (= call!299377 (contains!10396 call!299373 (ite c!734726 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (select (arr!7671 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231))) (index!1459 lt!1538530)))))))

(declare-fun bm!299370 () Bool)

(assert (=> bm!299370 (= call!299374 call!299357)))

(declare-fun call!299367 () ListLongMap!1153)

(declare-fun bm!299371 () Bool)

(assert (=> bm!299371 (= call!299363 (+!322 (ite c!734720 call!299367 call!299380) (ite c!734720 (ite c!734725 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))) (tuple2!47123 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))))

(declare-fun b!4320256 () Bool)

(assert (=> b!4320256 (= e!2687738 ((_ is Undefined!20) lt!1538535))))

(declare-fun b!4320257 () Bool)

(declare-fun e!2687722 () Bool)

(assert (=> b!4320257 (= e!2687722 e!2687721)))

(declare-fun c!734728 () Bool)

(assert (=> b!4320257 (= c!734728 (_1!26848 lt!1538536))))

(declare-fun b!4320258 () Bool)

(assert (=> b!4320258 (= e!2687737 (not call!299375))))

(declare-fun bm!299372 () Bool)

(assert (=> bm!299372 (= call!299367 call!299368)))

(declare-fun bm!299373 () Bool)

(assert (=> bm!299373 (= call!299361 call!299358)))

(declare-fun b!4320260 () Bool)

(assert (=> b!4320260 (= e!2687723 e!2687736)))

(assert (=> b!4320260 (= c!734725 (= (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320259 () Bool)

(assert (=> b!4320259 (= e!2687725 (= call!299379 (+!322 call!299376 (tuple2!47123 (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))))

(declare-fun d!1270292 () Bool)

(assert (=> d!1270292 e!2687722))

(declare-fun res!1770576 () Bool)

(assert (=> d!1270292 (=> (not res!1770576) (not e!2687722))))

(assert (=> d!1270292 (= res!1770576 (valid!3754 (_2!26848 lt!1538536)))))

(assert (=> d!1270292 (= lt!1538536 e!2687723)))

(assert (=> d!1270292 (= c!734720 (= (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (bvneg (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!1270292 (valid!3754 (ite c!734507 (_2!26848 lt!1537835) call!299231))))

(assert (=> d!1270292 (= (update!519 (ite c!734507 (_2!26848 lt!1537835) call!299231) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) lt!1538536)))

(declare-fun b!4320261 () Bool)

(declare-fun res!1770579 () Bool)

(assert (=> b!4320261 (= res!1770579 call!299372)))

(assert (=> b!4320261 (=> (not res!1770579) (not e!2687728))))

(declare-fun b!4320262 () Bool)

(declare-fun lt!1538514 () tuple2!47126)

(assert (=> b!4320262 (= e!2687734 (tuple2!47127 (_1!26848 lt!1538514) (_2!26848 lt!1538514)))))

(assert (=> b!4320262 (= lt!1538514 call!299369)))

(declare-fun b!4320263 () Bool)

(declare-fun lt!1538531 () Unit!67649)

(declare-fun lt!1538517 () Unit!67649)

(assert (=> b!4320263 (= lt!1538531 lt!1538517)))

(assert (=> b!4320263 (= call!299364 call!299360)))

(assert (=> b!4320263 (= lt!1538517 (lemmaChangeZeroKeyThenAddPairToListMap!10 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) lt!1538532 (zeroValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231))))))

(assert (=> b!4320263 (= lt!1538532 (bvor (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000001))))

(assert (=> b!4320263 (= e!2687736 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (mask!13343 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (bvor (extraKeys!4992 (ite c!734507 (_2!26848 lt!1537835) call!299231)) #b00000000000000000000000000000001) (ite c!734507 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734508 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (minValue!5002 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_size!9529 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_values!5024 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (_vacant!4804 (ite c!734507 (_2!26848 lt!1537835) call!299231)))))))

(declare-fun bm!299374 () Bool)

(assert (=> bm!299374 (= call!299370 (arrayContainsKey!0 (_keys!5043 (ite c!734507 (_2!26848 lt!1537835) call!299231)) (ite c!734507 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734508 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) #b00000000000000000000000000000000))))

(declare-fun bm!299375 () Bool)

(assert (=> bm!299375 (= call!299372 call!299366)))

(declare-fun b!4320264 () Bool)

(declare-fun res!1770580 () Bool)

(assert (=> b!4320264 (= res!1770580 call!299358)))

(assert (=> b!4320264 (=> (not res!1770580) (not e!2687719))))

(declare-fun b!4320265 () Bool)

(declare-fun res!1770583 () Bool)

(assert (=> b!4320265 (=> (not res!1770583) (not e!2687737))))

(assert (=> b!4320265 (= res!1770583 call!299361)))

(assert (=> b!4320265 (= e!2687731 e!2687737)))

(assert (= (and d!1270292 c!734720) b!4320260))

(assert (= (and d!1270292 (not c!734720)) b!4320252))

(assert (= (and b!4320260 c!734725) b!4320263))

(assert (= (and b!4320260 (not c!734725)) b!4320233))

(assert (= (or b!4320263 b!4320233) bm!299372))

(assert (= (or b!4320263 b!4320233) bm!299359))

(assert (= (or b!4320263 b!4320233) bm!299354))

(assert (= (and b!4320252 c!734726) b!4320251))

(assert (= (and b!4320252 (not c!734726)) b!4320231))

(assert (= (and b!4320251 c!734730) b!4320234))

(assert (= (and b!4320251 (not c!734730)) b!4320255))

(assert (= (and b!4320234 res!1770572) b!4320261))

(assert (= (and b!4320261 res!1770579) b!4320246))

(assert (= (and b!4320255 c!734724) b!4320235))

(assert (= (and b!4320255 (not c!734724)) b!4320236))

(assert (= (and b!4320235 res!1770577) b!4320248))

(assert (= (and b!4320248 res!1770574) b!4320229))

(assert (= (and b!4320236 c!734722) b!4320250))

(assert (= (and b!4320236 (not c!734722)) b!4320240))

(assert (= (and b!4320250 res!1770582) b!4320238))

(assert (= (and b!4320238 res!1770581) b!4320241))

(assert (= (or b!4320229 b!4320241) bm!299352))

(assert (= (or b!4320235 b!4320250) bm!299367))

(assert (= (or b!4320261 bm!299367) bm!299375))

(assert (= (or b!4320234 b!4320255) bm!299370))

(assert (= (and b!4320231 c!734723) b!4320262))

(assert (= (and b!4320231 (not c!734723)) b!4320228))

(assert (= (and b!4320228 c!734729) b!4320245))

(assert (= (and b!4320228 (not c!734729)) b!4320242))

(assert (= (and b!4320242 c!734721) b!4320253))

(assert (= (and b!4320242 (not c!734721)) b!4320247))

(assert (= (and b!4320253 res!1770570) b!4320264))

(assert (= (and b!4320264 res!1770580) b!4320230))

(assert (= (and b!4320247 c!734727) b!4320265))

(assert (= (and b!4320247 (not c!734727)) b!4320232))

(assert (= (and b!4320265 res!1770583) b!4320243))

(assert (= (and b!4320243 res!1770571) b!4320258))

(assert (= (and b!4320232 c!734719) b!4320254))

(assert (= (and b!4320232 (not c!734719)) b!4320256))

(assert (= (and b!4320254 res!1770575) b!4320237))

(assert (= (and b!4320237 res!1770578) b!4320239))

(assert (= (or b!4320258 b!4320239) bm!299353))

(assert (= (or b!4320265 b!4320254) bm!299373))

(assert (= (or b!4320264 bm!299373) bm!299357))

(assert (= (or b!4320253 b!4320247) bm!299364))

(assert (= (or b!4320262 b!4320245) bm!299365))

(assert (= (or b!4320234 b!4320253) bm!299366))

(assert (= (or bm!299375 bm!299357) bm!299356))

(assert (= (or bm!299370 bm!299364) bm!299361))

(assert (= (or b!4320251 b!4320242) bm!299360))

(assert (= (or bm!299352 bm!299353) bm!299374))

(assert (= (or b!4320255 b!4320247) bm!299355))

(assert (= (or b!4320251 b!4320242) bm!299369))

(assert (= (or bm!299372 b!4320242) bm!299368))

(assert (= (or bm!299359 b!4320242) bm!299363))

(assert (= (or bm!299354 b!4320242) bm!299371))

(assert (= (and d!1270292 res!1770576) b!4320257))

(assert (= (and b!4320257 c!734728) b!4320249))

(assert (= (and b!4320257 (not c!734728)) b!4320244))

(assert (= (and b!4320249 res!1770573) b!4320259))

(assert (= (or b!4320259 b!4320244) bm!299358))

(assert (= (or b!4320249 b!4320259 b!4320244) bm!299362))

(declare-fun m!4914017 () Bool)

(assert (=> b!4320242 m!4914017))

(declare-fun m!4914019 () Bool)

(assert (=> b!4320242 m!4914019))

(declare-fun m!4914021 () Bool)

(assert (=> b!4320242 m!4914021))

(declare-fun m!4914023 () Bool)

(assert (=> b!4320242 m!4914023))

(declare-fun m!4914025 () Bool)

(assert (=> b!4320230 m!4914025))

(declare-fun m!4914027 () Bool)

(assert (=> bm!299360 m!4914027))

(declare-fun m!4914029 () Bool)

(assert (=> b!4320263 m!4914029))

(declare-fun m!4914031 () Bool)

(assert (=> d!1270292 m!4914031))

(declare-fun m!4914033 () Bool)

(assert (=> d!1270292 m!4914033))

(declare-fun m!4914035 () Bool)

(assert (=> bm!299363 m!4914035))

(declare-fun m!4914037 () Bool)

(assert (=> b!4320246 m!4914037))

(declare-fun m!4914039 () Bool)

(assert (=> bm!299369 m!4914039))

(declare-fun m!4914041 () Bool)

(assert (=> bm!299369 m!4914041))

(declare-fun m!4914043 () Bool)

(assert (=> b!4320238 m!4914043))

(assert (=> bm!299368 m!4914019))

(declare-fun m!4914045 () Bool)

(assert (=> bm!299368 m!4914045))

(declare-fun m!4914047 () Bool)

(assert (=> bm!299358 m!4914047))

(declare-fun m!4914049 () Bool)

(assert (=> bm!299361 m!4914049))

(declare-fun m!4914051 () Bool)

(assert (=> bm!299355 m!4914051))

(declare-fun m!4914053 () Bool)

(assert (=> bm!299366 m!4914053))

(declare-fun m!4914055 () Bool)

(assert (=> bm!299356 m!4914055))

(declare-fun m!4914057 () Bool)

(assert (=> bm!299365 m!4914057))

(declare-fun m!4914059 () Bool)

(assert (=> b!4320248 m!4914059))

(declare-fun m!4914061 () Bool)

(assert (=> b!4320259 m!4914061))

(declare-fun m!4914063 () Bool)

(assert (=> bm!299374 m!4914063))

(declare-fun m!4914065 () Bool)

(assert (=> b!4320243 m!4914065))

(declare-fun m!4914067 () Bool)

(assert (=> bm!299371 m!4914067))

(declare-fun m!4914069 () Bool)

(assert (=> b!4320237 m!4914069))

(declare-fun m!4914071 () Bool)

(assert (=> b!4320233 m!4914071))

(declare-fun m!4914073 () Bool)

(assert (=> bm!299362 m!4914073))

(declare-fun m!4914075 () Bool)

(assert (=> b!4320249 m!4914075))

(assert (=> b!4320252 m!4914049))

(assert (=> bm!299225 d!1270292))

(declare-fun d!1270294 () Bool)

(declare-fun res!1770584 () Bool)

(declare-fun e!2687739 () Bool)

(assert (=> d!1270294 (=> (not res!1770584) (not e!2687739))))

(assert (=> d!1270294 (= res!1770584 (simpleValid!8 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))))))

(assert (=> d!1270294 (= (valid!3754 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))) e!2687739)))

(declare-fun b!4320266 () Bool)

(declare-fun res!1770585 () Bool)

(assert (=> b!4320266 (=> (not res!1770585) (not e!2687739))))

(assert (=> b!4320266 (= res!1770585 (= (arrayCountValidKeys!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))) #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))))) (_size!9529 (v!42702 (underlying!9715 (_2!26847 lt!1537623))))))))

(declare-fun b!4320267 () Bool)

(declare-fun res!1770586 () Bool)

(assert (=> b!4320267 (=> (not res!1770586) (not e!2687739))))

(assert (=> b!4320267 (= res!1770586 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537623))))))))

(declare-fun b!4320268 () Bool)

(assert (=> b!4320268 (= e!2687739 (arrayNoDuplicates!0 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537623)))) #b00000000000000000000000000000000 Nil!48360))))

(assert (= (and d!1270294 res!1770584) b!4320266))

(assert (= (and b!4320266 res!1770585) b!4320267))

(assert (= (and b!4320267 res!1770586) b!4320268))

(declare-fun m!4914077 () Bool)

(assert (=> d!1270294 m!4914077))

(declare-fun m!4914079 () Bool)

(assert (=> b!4320266 m!4914079))

(declare-fun m!4914081 () Bool)

(assert (=> b!4320267 m!4914081))

(declare-fun m!4914083 () Bool)

(assert (=> b!4320268 m!4914083))

(assert (=> d!1269942 d!1270294))

(declare-fun d!1270296 () Bool)

(declare-fun res!1770587 () Bool)

(declare-fun e!2687740 () Bool)

(assert (=> d!1270296 (=> res!1770587 e!2687740)))

(assert (=> d!1270296 (= res!1770587 (and ((_ is Cons!48357) (t!355350 lt!1537603)) (= (_1!26845 (h!53814 (t!355350 lt!1537603))) (_1!26845 (h!53814 lt!1537603)))))))

(assert (=> d!1270296 (= (containsKey!393 (t!355350 lt!1537603) (_1!26845 (h!53814 lt!1537603))) e!2687740)))

(declare-fun b!4320269 () Bool)

(declare-fun e!2687741 () Bool)

(assert (=> b!4320269 (= e!2687740 e!2687741)))

(declare-fun res!1770588 () Bool)

(assert (=> b!4320269 (=> (not res!1770588) (not e!2687741))))

(assert (=> b!4320269 (= res!1770588 ((_ is Cons!48357) (t!355350 lt!1537603)))))

(declare-fun b!4320270 () Bool)

(assert (=> b!4320270 (= e!2687741 (containsKey!393 (t!355350 (t!355350 lt!1537603)) (_1!26845 (h!53814 lt!1537603))))))

(assert (= (and d!1270296 (not res!1770587)) b!4320269))

(assert (= (and b!4320269 res!1770588) b!4320270))

(declare-fun m!4914085 () Bool)

(assert (=> b!4320270 m!4914085))

(assert (=> b!4319589 d!1270296))

(declare-fun b!4320271 () Bool)

(declare-fun e!2687753 () ListLongMap!1153)

(declare-fun call!299387 () ListLongMap!1153)

(assert (=> b!4320271 (= e!2687753 call!299387)))

(declare-fun b!4320272 () Bool)

(declare-fun e!2687746 () Bool)

(declare-fun call!299384 () Bool)

(assert (=> b!4320272 (= e!2687746 (not call!299384))))

(declare-fun bm!299376 () Bool)

(declare-fun call!299385 () ListLongMap!1153)

(declare-fun call!299383 () ListLongMap!1153)

(assert (=> bm!299376 (= call!299385 call!299383)))

(declare-fun b!4320273 () Bool)

(declare-fun e!2687744 () ListLongMap!1153)

(assert (=> b!4320273 (= e!2687744 e!2687753)))

(declare-fun c!734736 () Bool)

(assert (=> b!4320273 (= c!734736 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!734734 () Bool)

(declare-fun call!299381 () ListLongMap!1153)

(declare-fun bm!299377 () Bool)

(declare-fun call!299386 () ListLongMap!1153)

(assert (=> bm!299377 (= call!299386 (+!322 (ite c!734734 call!299383 (ite c!734736 call!299385 call!299381)) (ite (or c!734734 c!734736) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))

(declare-fun b!4320274 () Bool)

(declare-fun e!2687745 () Unit!67649)

(declare-fun Unit!67717 () Unit!67649)

(assert (=> b!4320274 (= e!2687745 Unit!67717)))

(declare-fun bm!299378 () Bool)

(assert (=> bm!299378 (= call!299381 call!299385)))

(declare-fun b!4320276 () Bool)

(declare-fun e!2687749 () ListLongMap!1153)

(assert (=> b!4320276 (= e!2687749 call!299387)))

(declare-fun b!4320277 () Bool)

(declare-fun e!2687750 () Bool)

(assert (=> b!4320277 (= e!2687750 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun b!4320278 () Bool)

(declare-fun c!734732 () Bool)

(assert (=> b!4320278 (= c!734732 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4320278 (= e!2687753 e!2687749)))

(declare-fun b!4320279 () Bool)

(assert (=> b!4320279 (= e!2687744 (+!322 call!299386 (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320280 () Bool)

(declare-fun e!2687751 () Bool)

(declare-fun e!2687742 () Bool)

(assert (=> b!4320280 (= e!2687751 e!2687742)))

(declare-fun c!734733 () Bool)

(assert (=> b!4320280 (= c!734733 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4320281 () Bool)

(declare-fun e!2687754 () Bool)

(declare-fun lt!1538550 () ListLongMap!1153)

(assert (=> b!4320281 (= e!2687754 (= (apply!11126 lt!1538550 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)) (select (arr!7672 (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))) #b00000000000000000000000000000000)))))

(assert (=> b!4320281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35711 (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))))

(assert (=> b!4320281 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320282 () Bool)

(declare-fun res!1770593 () Bool)

(assert (=> b!4320282 (=> (not res!1770593) (not e!2687751))))

(declare-fun e!2687747 () Bool)

(assert (=> b!4320282 (= res!1770593 e!2687747)))

(declare-fun res!1770594 () Bool)

(assert (=> b!4320282 (=> res!1770594 e!2687747)))

(assert (=> b!4320282 (= res!1770594 (not e!2687750))))

(declare-fun res!1770597 () Bool)

(assert (=> b!4320282 (=> (not res!1770597) (not e!2687750))))

(assert (=> b!4320282 (= res!1770597 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320283 () Bool)

(declare-fun e!2687752 () Bool)

(assert (=> b!4320283 (= e!2687752 (= (apply!11126 lt!1538550 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bm!299379 () Bool)

(declare-fun call!299382 () Bool)

(assert (=> bm!299379 (= call!299382 (contains!10396 lt!1538550 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320284 () Bool)

(assert (=> b!4320284 (= e!2687742 (not call!299382))))

(declare-fun b!4320285 () Bool)

(declare-fun res!1770590 () Bool)

(assert (=> b!4320285 (=> (not res!1770590) (not e!2687751))))

(assert (=> b!4320285 (= res!1770590 e!2687746)))

(declare-fun c!734731 () Bool)

(assert (=> b!4320285 (= c!734731 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4320286 () Bool)

(declare-fun e!2687743 () Bool)

(assert (=> b!4320286 (= e!2687743 (= (apply!11126 lt!1538550 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bm!299380 () Bool)

(assert (=> bm!299380 (= call!299384 (contains!10396 lt!1538550 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299381 () Bool)

(assert (=> bm!299381 (= call!299383 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320287 () Bool)

(declare-fun e!2687748 () Bool)

(assert (=> b!4320287 (= e!2687748 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun b!4320288 () Bool)

(assert (=> b!4320288 (= e!2687747 e!2687754)))

(declare-fun res!1770591 () Bool)

(assert (=> b!4320288 (=> (not res!1770591) (not e!2687754))))

(assert (=> b!4320288 (= res!1770591 (contains!10396 lt!1538550 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(assert (=> b!4320288 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320289 () Bool)

(assert (=> b!4320289 (= e!2687742 e!2687743)))

(declare-fun res!1770592 () Bool)

(assert (=> b!4320289 (= res!1770592 call!299382)))

(assert (=> b!4320289 (=> (not res!1770592) (not e!2687743))))

(declare-fun bm!299382 () Bool)

(assert (=> bm!299382 (= call!299387 call!299386)))

(declare-fun b!4320290 () Bool)

(declare-fun lt!1538547 () Unit!67649)

(assert (=> b!4320290 (= e!2687745 lt!1538547)))

(declare-fun lt!1538557 () ListLongMap!1153)

(assert (=> b!4320290 (= lt!1538557 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538546 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538546 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538556 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538556 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538545 () Unit!67649)

(assert (=> b!4320290 (= lt!1538545 (addStillContains!2 lt!1538557 lt!1538546 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538556))))

(assert (=> b!4320290 (contains!10396 (+!322 lt!1538557 (tuple2!47123 lt!1538546 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538556)))

(declare-fun lt!1538558 () Unit!67649)

(assert (=> b!4320290 (= lt!1538558 lt!1538545)))

(declare-fun lt!1538551 () ListLongMap!1153)

(assert (=> b!4320290 (= lt!1538551 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538553 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538553 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538543 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538543 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538544 () Unit!67649)

(assert (=> b!4320290 (= lt!1538544 (addApplyDifferent!2 lt!1538551 lt!1538553 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538543))))

(assert (=> b!4320290 (= (apply!11126 (+!322 lt!1538551 (tuple2!47123 lt!1538553 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538543) (apply!11126 lt!1538551 lt!1538543))))

(declare-fun lt!1538559 () Unit!67649)

(assert (=> b!4320290 (= lt!1538559 lt!1538544)))

(declare-fun lt!1538555 () ListLongMap!1153)

(assert (=> b!4320290 (= lt!1538555 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538562 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538562 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538549 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538549 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538541 () Unit!67649)

(assert (=> b!4320290 (= lt!1538541 (addApplyDifferent!2 lt!1538555 lt!1538562 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538549))))

(assert (=> b!4320290 (= (apply!11126 (+!322 lt!1538555 (tuple2!47123 lt!1538562 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538549) (apply!11126 lt!1538555 lt!1538549))))

(declare-fun lt!1538548 () Unit!67649)

(assert (=> b!4320290 (= lt!1538548 lt!1538541)))

(declare-fun lt!1538542 () ListLongMap!1153)

(assert (=> b!4320290 (= lt!1538542 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538552 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538552 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538554 () (_ BitVec 64))

(assert (=> b!4320290 (= lt!1538554 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(assert (=> b!4320290 (= lt!1538547 (addApplyDifferent!2 lt!1538542 lt!1538552 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538554))))

(assert (=> b!4320290 (= (apply!11126 (+!322 lt!1538542 (tuple2!47123 lt!1538552 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538554) (apply!11126 lt!1538542 lt!1538554))))

(declare-fun b!4320291 () Bool)

(assert (=> b!4320291 (= e!2687746 e!2687752)))

(declare-fun res!1770596 () Bool)

(assert (=> b!4320291 (= res!1770596 call!299384)))

(assert (=> b!4320291 (=> (not res!1770596) (not e!2687752))))

(declare-fun d!1270298 () Bool)

(assert (=> d!1270298 e!2687751))

(declare-fun res!1770589 () Bool)

(assert (=> d!1270298 (=> (not res!1770589) (not e!2687751))))

(assert (=> d!1270298 (= res!1770589 (or (bvsge #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))))

(declare-fun lt!1538560 () ListLongMap!1153)

(assert (=> d!1270298 (= lt!1538550 lt!1538560)))

(declare-fun lt!1538561 () Unit!67649)

(assert (=> d!1270298 (= lt!1538561 e!2687745)))

(declare-fun c!734735 () Bool)

(assert (=> d!1270298 (= c!734735 e!2687748)))

(declare-fun res!1770595 () Bool)

(assert (=> d!1270298 (=> (not res!1770595) (not e!2687748))))

(assert (=> d!1270298 (= res!1770595 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (=> d!1270298 (= lt!1538560 e!2687744)))

(assert (=> d!1270298 (= c!734734 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270298 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270298 (= (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538550)))

(declare-fun b!4320275 () Bool)

(assert (=> b!4320275 (= e!2687749 call!299381)))

(assert (= (and d!1270298 c!734734) b!4320279))

(assert (= (and d!1270298 (not c!734734)) b!4320273))

(assert (= (and b!4320273 c!734736) b!4320271))

(assert (= (and b!4320273 (not c!734736)) b!4320278))

(assert (= (and b!4320278 c!734732) b!4320276))

(assert (= (and b!4320278 (not c!734732)) b!4320275))

(assert (= (or b!4320276 b!4320275) bm!299378))

(assert (= (or b!4320271 bm!299378) bm!299376))

(assert (= (or b!4320271 b!4320276) bm!299382))

(assert (= (or b!4320279 bm!299376) bm!299381))

(assert (= (or b!4320279 bm!299382) bm!299377))

(assert (= (and d!1270298 res!1770595) b!4320287))

(assert (= (and d!1270298 c!734735) b!4320290))

(assert (= (and d!1270298 (not c!734735)) b!4320274))

(assert (= (and d!1270298 res!1770589) b!4320282))

(assert (= (and b!4320282 res!1770597) b!4320277))

(assert (= (and b!4320282 (not res!1770594)) b!4320288))

(assert (= (and b!4320288 res!1770591) b!4320281))

(assert (= (and b!4320282 res!1770593) b!4320285))

(assert (= (and b!4320285 c!734731) b!4320291))

(assert (= (and b!4320285 (not c!734731)) b!4320272))

(assert (= (and b!4320291 res!1770596) b!4320283))

(assert (= (or b!4320291 b!4320272) bm!299380))

(assert (= (and b!4320285 res!1770590) b!4320280))

(assert (= (and b!4320280 c!734733) b!4320289))

(assert (= (and b!4320280 (not c!734733)) b!4320284))

(assert (= (and b!4320289 res!1770592) b!4320286))

(assert (= (or b!4320289 b!4320284) bm!299379))

(declare-fun m!4914087 () Bool)

(assert (=> bm!299379 m!4914087))

(assert (=> d!1270298 m!4913201))

(declare-fun m!4914089 () Bool)

(assert (=> b!4320286 m!4914089))

(assert (=> b!4320281 m!4913535))

(assert (=> b!4320281 m!4913535))

(declare-fun m!4914091 () Bool)

(assert (=> b!4320281 m!4914091))

(declare-fun m!4914093 () Bool)

(assert (=> b!4320281 m!4914093))

(declare-fun m!4914095 () Bool)

(assert (=> b!4320283 m!4914095))

(assert (=> b!4320277 m!4913535))

(assert (=> b!4320277 m!4913535))

(declare-fun m!4914097 () Bool)

(assert (=> b!4320277 m!4914097))

(declare-fun m!4914099 () Bool)

(assert (=> bm!299380 m!4914099))

(declare-fun m!4914101 () Bool)

(assert (=> bm!299381 m!4914101))

(assert (=> b!4320287 m!4913535))

(assert (=> b!4320287 m!4913535))

(assert (=> b!4320287 m!4914097))

(declare-fun m!4914103 () Bool)

(assert (=> b!4320290 m!4914103))

(declare-fun m!4914105 () Bool)

(assert (=> b!4320290 m!4914105))

(declare-fun m!4914107 () Bool)

(assert (=> b!4320290 m!4914107))

(declare-fun m!4914109 () Bool)

(assert (=> b!4320290 m!4914109))

(declare-fun m!4914111 () Bool)

(assert (=> b!4320290 m!4914111))

(declare-fun m!4914113 () Bool)

(assert (=> b!4320290 m!4914113))

(declare-fun m!4914115 () Bool)

(assert (=> b!4320290 m!4914115))

(declare-fun m!4914117 () Bool)

(assert (=> b!4320290 m!4914117))

(declare-fun m!4914119 () Bool)

(assert (=> b!4320290 m!4914119))

(declare-fun m!4914121 () Bool)

(assert (=> b!4320290 m!4914121))

(assert (=> b!4320290 m!4914101))

(declare-fun m!4914123 () Bool)

(assert (=> b!4320290 m!4914123))

(declare-fun m!4914125 () Bool)

(assert (=> b!4320290 m!4914125))

(declare-fun m!4914127 () Bool)

(assert (=> b!4320290 m!4914127))

(assert (=> b!4320290 m!4914107))

(declare-fun m!4914129 () Bool)

(assert (=> b!4320290 m!4914129))

(assert (=> b!4320290 m!4914119))

(declare-fun m!4914131 () Bool)

(assert (=> b!4320290 m!4914131))

(assert (=> b!4320290 m!4914115))

(assert (=> b!4320290 m!4914111))

(assert (=> b!4320290 m!4913535))

(assert (=> b!4320288 m!4913535))

(assert (=> b!4320288 m!4913535))

(declare-fun m!4914133 () Bool)

(assert (=> b!4320288 m!4914133))

(declare-fun m!4914135 () Bool)

(assert (=> bm!299377 m!4914135))

(declare-fun m!4914137 () Bool)

(assert (=> b!4320279 m!4914137))

(assert (=> bm!299207 d!1270298))

(declare-fun b!4320292 () Bool)

(declare-fun e!2687766 () ListLongMap!1153)

(declare-fun call!299394 () ListLongMap!1153)

(assert (=> b!4320292 (= e!2687766 call!299394)))

(declare-fun b!4320293 () Bool)

(declare-fun e!2687759 () Bool)

(declare-fun call!299391 () Bool)

(assert (=> b!4320293 (= e!2687759 (not call!299391))))

(declare-fun bm!299383 () Bool)

(declare-fun call!299392 () ListLongMap!1153)

(declare-fun call!299390 () ListLongMap!1153)

(assert (=> bm!299383 (= call!299392 call!299390)))

(declare-fun b!4320294 () Bool)

(declare-fun e!2687757 () ListLongMap!1153)

(assert (=> b!4320294 (= e!2687757 e!2687766)))

(declare-fun c!734742 () Bool)

(assert (=> b!4320294 (= c!734742 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun c!734740 () Bool)

(declare-fun call!299388 () ListLongMap!1153)

(declare-fun bm!299384 () Bool)

(declare-fun call!299393 () ListLongMap!1153)

(assert (=> bm!299384 (= call!299393 (+!322 (ite c!734740 call!299390 (ite c!734742 call!299392 call!299388)) (ite (or c!734740 c!734742) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))

(declare-fun b!4320295 () Bool)

(declare-fun e!2687758 () Unit!67649)

(declare-fun Unit!67718 () Unit!67649)

(assert (=> b!4320295 (= e!2687758 Unit!67718)))

(declare-fun bm!299385 () Bool)

(assert (=> bm!299385 (= call!299388 call!299392)))

(declare-fun b!4320297 () Bool)

(declare-fun e!2687762 () ListLongMap!1153)

(assert (=> b!4320297 (= e!2687762 call!299394)))

(declare-fun b!4320298 () Bool)

(declare-fun e!2687763 () Bool)

(assert (=> b!4320298 (= e!2687763 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun b!4320299 () Bool)

(declare-fun c!734738 () Bool)

(assert (=> b!4320299 (= c!734738 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4320299 (= e!2687766 e!2687762)))

(declare-fun b!4320300 () Bool)

(assert (=> b!4320300 (= e!2687757 (+!322 call!299393 (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320301 () Bool)

(declare-fun e!2687764 () Bool)

(declare-fun e!2687755 () Bool)

(assert (=> b!4320301 (= e!2687764 e!2687755)))

(declare-fun c!734739 () Bool)

(assert (=> b!4320301 (= c!734739 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!1538572 () ListLongMap!1153)

(declare-fun e!2687767 () Bool)

(declare-fun b!4320302 () Bool)

(assert (=> b!4320302 (= e!2687767 (= (apply!11126 lt!1538572 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)) (select (arr!7672 (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802)) #b00000000000000000000000000000000)))))

(assert (=> b!4320302 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35711 (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802))))))

(assert (=> b!4320302 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320303 () Bool)

(declare-fun res!1770602 () Bool)

(assert (=> b!4320303 (=> (not res!1770602) (not e!2687764))))

(declare-fun e!2687760 () Bool)

(assert (=> b!4320303 (= res!1770602 e!2687760)))

(declare-fun res!1770603 () Bool)

(assert (=> b!4320303 (=> res!1770603 e!2687760)))

(assert (=> b!4320303 (= res!1770603 (not e!2687763))))

(declare-fun res!1770606 () Bool)

(assert (=> b!4320303 (=> (not res!1770606) (not e!2687763))))

(assert (=> b!4320303 (= res!1770606 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320304 () Bool)

(declare-fun e!2687765 () Bool)

(assert (=> b!4320304 (= e!2687765 (= (apply!11126 lt!1538572 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bm!299386 () Bool)

(declare-fun call!299389 () Bool)

(assert (=> bm!299386 (= call!299389 (contains!10396 lt!1538572 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320305 () Bool)

(assert (=> b!4320305 (= e!2687755 (not call!299389))))

(declare-fun b!4320306 () Bool)

(declare-fun res!1770599 () Bool)

(assert (=> b!4320306 (=> (not res!1770599) (not e!2687764))))

(assert (=> b!4320306 (= res!1770599 e!2687759)))

(declare-fun c!734737 () Bool)

(assert (=> b!4320306 (= c!734737 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4320307 () Bool)

(declare-fun e!2687756 () Bool)

(assert (=> b!4320307 (= e!2687756 (= (apply!11126 lt!1538572 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun bm!299387 () Bool)

(assert (=> bm!299387 (= call!299391 (contains!10396 lt!1538572 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299388 () Bool)

(assert (=> bm!299388 (= call!299390 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320308 () Bool)

(declare-fun e!2687761 () Bool)

(assert (=> b!4320308 (= e!2687761 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun b!4320309 () Bool)

(assert (=> b!4320309 (= e!2687760 e!2687767)))

(declare-fun res!1770600 () Bool)

(assert (=> b!4320309 (=> (not res!1770600) (not e!2687767))))

(assert (=> b!4320309 (= res!1770600 (contains!10396 lt!1538572 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(assert (=> b!4320309 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320310 () Bool)

(assert (=> b!4320310 (= e!2687755 e!2687756)))

(declare-fun res!1770601 () Bool)

(assert (=> b!4320310 (= res!1770601 call!299389)))

(assert (=> b!4320310 (=> (not res!1770601) (not e!2687756))))

(declare-fun bm!299389 () Bool)

(assert (=> bm!299389 (= call!299394 call!299393)))

(declare-fun b!4320311 () Bool)

(declare-fun lt!1538569 () Unit!67649)

(assert (=> b!4320311 (= e!2687758 lt!1538569)))

(declare-fun lt!1538579 () ListLongMap!1153)

(assert (=> b!4320311 (= lt!1538579 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538568 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538568 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538578 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538578 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538567 () Unit!67649)

(assert (=> b!4320311 (= lt!1538567 (addStillContains!2 lt!1538579 lt!1538568 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538578))))

(assert (=> b!4320311 (contains!10396 (+!322 lt!1538579 (tuple2!47123 lt!1538568 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538578)))

(declare-fun lt!1538580 () Unit!67649)

(assert (=> b!4320311 (= lt!1538580 lt!1538567)))

(declare-fun lt!1538573 () ListLongMap!1153)

(assert (=> b!4320311 (= lt!1538573 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538575 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538575 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538565 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538565 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538566 () Unit!67649)

(assert (=> b!4320311 (= lt!1538566 (addApplyDifferent!2 lt!1538573 lt!1538575 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538565))))

(assert (=> b!4320311 (= (apply!11126 (+!322 lt!1538573 (tuple2!47123 lt!1538575 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538565) (apply!11126 lt!1538573 lt!1538565))))

(declare-fun lt!1538581 () Unit!67649)

(assert (=> b!4320311 (= lt!1538581 lt!1538566)))

(declare-fun lt!1538577 () ListLongMap!1153)

(assert (=> b!4320311 (= lt!1538577 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538584 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538584 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538571 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538571 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538563 () Unit!67649)

(assert (=> b!4320311 (= lt!1538563 (addApplyDifferent!2 lt!1538577 lt!1538584 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538571))))

(assert (=> b!4320311 (= (apply!11126 (+!322 lt!1538577 (tuple2!47123 lt!1538584 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538571) (apply!11126 lt!1538577 lt!1538571))))

(declare-fun lt!1538570 () Unit!67649)

(assert (=> b!4320311 (= lt!1538570 lt!1538563)))

(declare-fun lt!1538564 () ListLongMap!1153)

(assert (=> b!4320311 (= lt!1538564 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538574 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538574 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538576 () (_ BitVec 64))

(assert (=> b!4320311 (= lt!1538576 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(assert (=> b!4320311 (= lt!1538569 (addApplyDifferent!2 lt!1538564 lt!1538574 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1538576))))

(assert (=> b!4320311 (= (apply!11126 (+!322 lt!1538564 (tuple2!47123 lt!1538574 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) lt!1538576) (apply!11126 lt!1538564 lt!1538576))))

(declare-fun b!4320312 () Bool)

(assert (=> b!4320312 (= e!2687759 e!2687765)))

(declare-fun res!1770605 () Bool)

(assert (=> b!4320312 (= res!1770605 call!299391)))

(assert (=> b!4320312 (=> (not res!1770605) (not e!2687765))))

(declare-fun d!1270300 () Bool)

(assert (=> d!1270300 e!2687764))

(declare-fun res!1770598 () Bool)

(assert (=> d!1270300 (=> (not res!1770598) (not e!2687764))))

(assert (=> d!1270300 (= res!1770598 (or (bvsge #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))))

(declare-fun lt!1538582 () ListLongMap!1153)

(assert (=> d!1270300 (= lt!1538572 lt!1538582)))

(declare-fun lt!1538583 () Unit!67649)

(assert (=> d!1270300 (= lt!1538583 e!2687758)))

(declare-fun c!734741 () Bool)

(assert (=> d!1270300 (= c!734741 e!2687761)))

(declare-fun res!1770604 () Bool)

(assert (=> d!1270300 (=> (not res!1770604) (not e!2687761))))

(assert (=> d!1270300 (= res!1770604 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (=> d!1270300 (= lt!1538582 e!2687757)))

(assert (=> d!1270300 (= c!734740 (and (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270300 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270300 (= (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734485 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538572)))

(declare-fun b!4320296 () Bool)

(assert (=> b!4320296 (= e!2687762 call!299388)))

(assert (= (and d!1270300 c!734740) b!4320300))

(assert (= (and d!1270300 (not c!734740)) b!4320294))

(assert (= (and b!4320294 c!734742) b!4320292))

(assert (= (and b!4320294 (not c!734742)) b!4320299))

(assert (= (and b!4320299 c!734738) b!4320297))

(assert (= (and b!4320299 (not c!734738)) b!4320296))

(assert (= (or b!4320297 b!4320296) bm!299385))

(assert (= (or b!4320292 bm!299385) bm!299383))

(assert (= (or b!4320292 b!4320297) bm!299389))

(assert (= (or b!4320300 bm!299383) bm!299388))

(assert (= (or b!4320300 bm!299389) bm!299384))

(assert (= (and d!1270300 res!1770604) b!4320308))

(assert (= (and d!1270300 c!734741) b!4320311))

(assert (= (and d!1270300 (not c!734741)) b!4320295))

(assert (= (and d!1270300 res!1770598) b!4320303))

(assert (= (and b!4320303 res!1770606) b!4320298))

(assert (= (and b!4320303 (not res!1770603)) b!4320309))

(assert (= (and b!4320309 res!1770600) b!4320302))

(assert (= (and b!4320303 res!1770602) b!4320306))

(assert (= (and b!4320306 c!734737) b!4320312))

(assert (= (and b!4320306 (not c!734737)) b!4320293))

(assert (= (and b!4320312 res!1770605) b!4320304))

(assert (= (or b!4320312 b!4320293) bm!299387))

(assert (= (and b!4320306 res!1770599) b!4320301))

(assert (= (and b!4320301 c!734739) b!4320310))

(assert (= (and b!4320301 (not c!734739)) b!4320305))

(assert (= (and b!4320310 res!1770601) b!4320307))

(assert (= (or b!4320310 b!4320305) bm!299386))

(declare-fun m!4914139 () Bool)

(assert (=> bm!299386 m!4914139))

(assert (=> d!1270300 m!4913201))

(declare-fun m!4914141 () Bool)

(assert (=> b!4320307 m!4914141))

(assert (=> b!4320302 m!4913535))

(assert (=> b!4320302 m!4913535))

(declare-fun m!4914143 () Bool)

(assert (=> b!4320302 m!4914143))

(declare-fun m!4914145 () Bool)

(assert (=> b!4320302 m!4914145))

(declare-fun m!4914147 () Bool)

(assert (=> b!4320304 m!4914147))

(assert (=> b!4320298 m!4913535))

(assert (=> b!4320298 m!4913535))

(assert (=> b!4320298 m!4914097))

(declare-fun m!4914149 () Bool)

(assert (=> bm!299387 m!4914149))

(declare-fun m!4914151 () Bool)

(assert (=> bm!299388 m!4914151))

(assert (=> b!4320308 m!4913535))

(assert (=> b!4320308 m!4913535))

(assert (=> b!4320308 m!4914097))

(declare-fun m!4914153 () Bool)

(assert (=> b!4320311 m!4914153))

(declare-fun m!4914155 () Bool)

(assert (=> b!4320311 m!4914155))

(declare-fun m!4914157 () Bool)

(assert (=> b!4320311 m!4914157))

(declare-fun m!4914159 () Bool)

(assert (=> b!4320311 m!4914159))

(declare-fun m!4914161 () Bool)

(assert (=> b!4320311 m!4914161))

(declare-fun m!4914163 () Bool)

(assert (=> b!4320311 m!4914163))

(declare-fun m!4914165 () Bool)

(assert (=> b!4320311 m!4914165))

(declare-fun m!4914167 () Bool)

(assert (=> b!4320311 m!4914167))

(declare-fun m!4914169 () Bool)

(assert (=> b!4320311 m!4914169))

(declare-fun m!4914171 () Bool)

(assert (=> b!4320311 m!4914171))

(assert (=> b!4320311 m!4914151))

(declare-fun m!4914173 () Bool)

(assert (=> b!4320311 m!4914173))

(declare-fun m!4914175 () Bool)

(assert (=> b!4320311 m!4914175))

(declare-fun m!4914177 () Bool)

(assert (=> b!4320311 m!4914177))

(assert (=> b!4320311 m!4914157))

(declare-fun m!4914179 () Bool)

(assert (=> b!4320311 m!4914179))

(assert (=> b!4320311 m!4914169))

(declare-fun m!4914181 () Bool)

(assert (=> b!4320311 m!4914181))

(assert (=> b!4320311 m!4914165))

(assert (=> b!4320311 m!4914161))

(assert (=> b!4320311 m!4913535))

(assert (=> b!4320309 m!4913535))

(assert (=> b!4320309 m!4913535))

(declare-fun m!4914183 () Bool)

(assert (=> b!4320309 m!4914183))

(declare-fun m!4914185 () Bool)

(assert (=> bm!299384 m!4914185))

(declare-fun m!4914187 () Bool)

(assert (=> b!4320300 m!4914187))

(assert (=> bm!299199 d!1270300))

(declare-fun d!1270302 () Bool)

(declare-fun e!2687768 () Bool)

(assert (=> d!1270302 e!2687768))

(declare-fun res!1770607 () Bool)

(assert (=> d!1270302 (=> res!1770607 e!2687768)))

(declare-fun lt!1538586 () Bool)

(assert (=> d!1270302 (= res!1770607 (not lt!1538586))))

(declare-fun lt!1538585 () Bool)

(assert (=> d!1270302 (= lt!1538586 lt!1538585)))

(declare-fun lt!1538588 () Unit!67649)

(declare-fun e!2687769 () Unit!67649)

(assert (=> d!1270302 (= lt!1538588 e!2687769)))

(declare-fun c!734743 () Bool)

(assert (=> d!1270302 (= c!734743 lt!1538585)))

(assert (=> d!1270302 (= lt!1538585 (containsKey!394 (toList!2537 lt!1537676) (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(assert (=> d!1270302 (= (contains!10396 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) lt!1538586)))

(declare-fun b!4320313 () Bool)

(declare-fun lt!1538587 () Unit!67649)

(assert (=> b!4320313 (= e!2687769 lt!1538587)))

(assert (=> b!4320313 (= lt!1538587 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 lt!1537676) (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(assert (=> b!4320313 (isDefined!7594 (getValueByKey!293 (toList!2537 lt!1537676) (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(declare-fun b!4320314 () Bool)

(declare-fun Unit!67719 () Unit!67649)

(assert (=> b!4320314 (= e!2687769 Unit!67719)))

(declare-fun b!4320315 () Bool)

(assert (=> b!4320315 (= e!2687768 (isDefined!7594 (getValueByKey!293 (toList!2537 lt!1537676) (hash!1154 (hashF!6889 thiss!42308) key!2048))))))

(assert (= (and d!1270302 c!734743) b!4320313))

(assert (= (and d!1270302 (not c!734743)) b!4320314))

(assert (= (and d!1270302 (not res!1770607)) b!4320315))

(assert (=> d!1270302 m!4912645))

(declare-fun m!4914189 () Bool)

(assert (=> d!1270302 m!4914189))

(assert (=> b!4320313 m!4912645))

(declare-fun m!4914191 () Bool)

(assert (=> b!4320313 m!4914191))

(assert (=> b!4320313 m!4912645))

(declare-fun m!4914193 () Bool)

(assert (=> b!4320313 m!4914193))

(assert (=> b!4320313 m!4914193))

(declare-fun m!4914195 () Bool)

(assert (=> b!4320313 m!4914195))

(assert (=> b!4320315 m!4912645))

(assert (=> b!4320315 m!4914193))

(assert (=> b!4320315 m!4914193))

(assert (=> b!4320315 m!4914195))

(assert (=> d!1269946 d!1270302))

(assert (=> d!1269946 d!1269844))

(declare-fun d!1270304 () Bool)

(declare-fun e!2687772 () Bool)

(assert (=> d!1270304 e!2687772))

(declare-fun res!1770610 () Bool)

(assert (=> d!1270304 (=> (not res!1770610) (not e!2687772))))

(assert (=> d!1270304 (= res!1770610 (contains!10396 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(assert (=> d!1270304 true))

(declare-fun _$5!160 () Unit!67649)

(assert (=> d!1270304 (= (choose!26369 lt!1537676 key!2048 (hashF!6889 thiss!42308)) _$5!160)))

(declare-fun b!4320318 () Bool)

(assert (=> b!4320318 (= e!2687772 (isDefined!7595 (getPair!159 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048)))))

(assert (= (and d!1270304 res!1770610) b!4320318))

(assert (=> d!1270304 m!4912645))

(assert (=> d!1270304 m!4912645))

(assert (=> d!1270304 m!4913035))

(assert (=> b!4320318 m!4912645))

(assert (=> b!4320318 m!4912645))

(assert (=> b!4320318 m!4913041))

(assert (=> b!4320318 m!4913041))

(assert (=> b!4320318 m!4913043))

(assert (=> b!4320318 m!4913043))

(assert (=> b!4320318 m!4913045))

(assert (=> d!1269946 d!1270304))

(declare-fun d!1270306 () Bool)

(declare-fun res!1770611 () Bool)

(declare-fun e!2687773 () Bool)

(assert (=> d!1270306 (=> res!1770611 e!2687773)))

(assert (=> d!1270306 (= res!1770611 ((_ is Nil!48358) (toList!2537 lt!1537676)))))

(assert (=> d!1270306 (= (forall!8800 (toList!2537 lt!1537676) lambda!133675) e!2687773)))

(declare-fun b!4320319 () Bool)

(declare-fun e!2687774 () Bool)

(assert (=> b!4320319 (= e!2687773 e!2687774)))

(declare-fun res!1770612 () Bool)

(assert (=> b!4320319 (=> (not res!1770612) (not e!2687774))))

(assert (=> b!4320319 (= res!1770612 (dynLambda!20499 lambda!133675 (h!53815 (toList!2537 lt!1537676))))))

(declare-fun b!4320320 () Bool)

(assert (=> b!4320320 (= e!2687774 (forall!8800 (t!355351 (toList!2537 lt!1537676)) lambda!133675))))

(assert (= (and d!1270306 (not res!1770611)) b!4320319))

(assert (= (and b!4320319 res!1770612) b!4320320))

(declare-fun b_lambda!127139 () Bool)

(assert (=> (not b_lambda!127139) (not b!4320319)))

(declare-fun m!4914197 () Bool)

(assert (=> b!4320319 m!4914197))

(declare-fun m!4914199 () Bool)

(assert (=> b!4320320 m!4914199))

(assert (=> d!1269946 d!1270306))

(declare-fun d!1270308 () Bool)

(assert (=> d!1270308 (= (isDefined!7595 (getPair!159 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048)) (not (isEmpty!28109 (getPair!159 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048))))))

(declare-fun bs!606371 () Bool)

(assert (= bs!606371 d!1270308))

(assert (=> bs!606371 m!4913043))

(declare-fun m!4914201 () Bool)

(assert (=> bs!606371 m!4914201))

(assert (=> b!4319554 d!1270308))

(declare-fun e!2687776 () Bool)

(declare-fun b!4320321 () Bool)

(assert (=> b!4320321 (= e!2687776 (not (containsKey!393 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048)))))

(declare-fun b!4320322 () Bool)

(declare-fun e!2687779 () Option!10293)

(assert (=> b!4320322 (= e!2687779 None!10292)))

(declare-fun b!4320323 () Bool)

(assert (=> b!4320323 (= e!2687779 (getPair!159 (t!355350 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048))) key!2048))))

(declare-fun d!1270310 () Bool)

(declare-fun e!2687778 () Bool)

(assert (=> d!1270310 e!2687778))

(declare-fun res!1770616 () Bool)

(assert (=> d!1270310 (=> res!1770616 e!2687778)))

(assert (=> d!1270310 (= res!1770616 e!2687776)))

(declare-fun res!1770613 () Bool)

(assert (=> d!1270310 (=> (not res!1770613) (not e!2687776))))

(declare-fun lt!1538589 () Option!10293)

(assert (=> d!1270310 (= res!1770613 (isEmpty!28109 lt!1538589))))

(declare-fun e!2687777 () Option!10293)

(assert (=> d!1270310 (= lt!1538589 e!2687777)))

(declare-fun c!734745 () Bool)

(assert (=> d!1270310 (= c!734745 (and ((_ is Cons!48357) (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048))) (= (_1!26845 (h!53814 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)))) key!2048)))))

(assert (=> d!1270310 (noDuplicateKeys!259 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)))))

(assert (=> d!1270310 (= (getPair!159 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) key!2048) lt!1538589)))

(declare-fun b!4320324 () Bool)

(declare-fun res!1770614 () Bool)

(declare-fun e!2687775 () Bool)

(assert (=> b!4320324 (=> (not res!1770614) (not e!2687775))))

(assert (=> b!4320324 (= res!1770614 (= (_1!26845 (get!15667 lt!1538589)) key!2048))))

(declare-fun b!4320325 () Bool)

(assert (=> b!4320325 (= e!2687778 e!2687775)))

(declare-fun res!1770615 () Bool)

(assert (=> b!4320325 (=> (not res!1770615) (not e!2687775))))

(assert (=> b!4320325 (= res!1770615 (isDefined!7595 lt!1538589))))

(declare-fun b!4320326 () Bool)

(assert (=> b!4320326 (= e!2687775 (contains!10401 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) (get!15667 lt!1538589)))))

(declare-fun b!4320327 () Bool)

(assert (=> b!4320327 (= e!2687777 e!2687779)))

(declare-fun c!734744 () Bool)

(assert (=> b!4320327 (= c!734744 ((_ is Cons!48357) (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048))))))

(declare-fun b!4320328 () Bool)

(assert (=> b!4320328 (= e!2687777 (Some!10292 (h!53814 (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)))))))

(assert (= (and d!1270310 c!734745) b!4320328))

(assert (= (and d!1270310 (not c!734745)) b!4320327))

(assert (= (and b!4320327 c!734744) b!4320323))

(assert (= (and b!4320327 (not c!734744)) b!4320322))

(assert (= (and d!1270310 res!1770613) b!4320321))

(assert (= (and d!1270310 (not res!1770616)) b!4320325))

(assert (= (and b!4320325 res!1770615) b!4320324))

(assert (= (and b!4320324 res!1770614) b!4320326))

(declare-fun m!4914203 () Bool)

(assert (=> b!4320323 m!4914203))

(assert (=> b!4320321 m!4913041))

(declare-fun m!4914205 () Bool)

(assert (=> b!4320321 m!4914205))

(declare-fun m!4914207 () Bool)

(assert (=> b!4320326 m!4914207))

(assert (=> b!4320326 m!4913041))

(assert (=> b!4320326 m!4914207))

(declare-fun m!4914209 () Bool)

(assert (=> b!4320326 m!4914209))

(declare-fun m!4914211 () Bool)

(assert (=> b!4320325 m!4914211))

(assert (=> b!4320324 m!4914207))

(declare-fun m!4914213 () Bool)

(assert (=> d!1270310 m!4914213))

(assert (=> d!1270310 m!4913041))

(declare-fun m!4914215 () Bool)

(assert (=> d!1270310 m!4914215))

(assert (=> b!4319554 d!1270310))

(declare-fun d!1270312 () Bool)

(assert (=> d!1270312 (= (apply!11126 lt!1537676 (hash!1154 (hashF!6889 thiss!42308) key!2048)) (get!15666 (getValueByKey!293 (toList!2537 lt!1537676) (hash!1154 (hashF!6889 thiss!42308) key!2048))))))

(declare-fun bs!606372 () Bool)

(assert (= bs!606372 d!1270312))

(assert (=> bs!606372 m!4912645))

(assert (=> bs!606372 m!4914193))

(assert (=> bs!606372 m!4914193))

(declare-fun m!4914217 () Bool)

(assert (=> bs!606372 m!4914217))

(assert (=> b!4319554 d!1270312))

(assert (=> b!4319554 d!1269844))

(assert (=> b!4319349 d!1270088))

(declare-fun b!4320331 () Bool)

(declare-fun e!2687781 () Option!10294)

(assert (=> b!4320331 (= e!2687781 (getValueByKey!293 (t!355351 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608))))

(declare-fun b!4320329 () Bool)

(declare-fun e!2687780 () Option!10294)

(assert (=> b!4320329 (= e!2687780 (Some!10293 (_2!26846 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4320332 () Bool)

(assert (=> b!4320332 (= e!2687781 None!10293)))

(declare-fun d!1270314 () Bool)

(declare-fun c!734746 () Bool)

(assert (=> d!1270314 (= c!734746 (and ((_ is Cons!48358) (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (= (_1!26846 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lt!1537608)))))

(assert (=> d!1270314 (= (getValueByKey!293 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608) e!2687780)))

(declare-fun b!4320330 () Bool)

(assert (=> b!4320330 (= e!2687780 e!2687781)))

(declare-fun c!734747 () Bool)

(assert (=> b!4320330 (= c!734747 (and ((_ is Cons!48358) (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (not (= (_1!26846 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) lt!1537608))))))

(assert (= (and d!1270314 c!734746) b!4320329))

(assert (= (and d!1270314 (not c!734746)) b!4320330))

(assert (= (and b!4320330 c!734747) b!4320331))

(assert (= (and b!4320330 (not c!734747)) b!4320332))

(declare-fun m!4914219 () Bool)

(assert (=> b!4320331 m!4914219))

(assert (=> b!4319377 d!1270314))

(declare-fun d!1270316 () Bool)

(assert (=> d!1270316 (isDefined!7596 (getValueByKey!294 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(declare-fun lt!1538590 () Unit!67649)

(assert (=> d!1270316 (= lt!1538590 (choose!26379 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> d!1270316 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270316 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!213 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) lt!1538590)))

(declare-fun bs!606373 () Bool)

(assert (= bs!606373 d!1270316))

(assert (=> bs!606373 m!4913149))

(assert (=> bs!606373 m!4913149))

(assert (=> bs!606373 m!4913151))

(declare-fun m!4914221 () Bool)

(assert (=> bs!606373 m!4914221))

(assert (=> bs!606373 m!4913215))

(assert (=> b!4319617 d!1270316))

(assert (=> b!4319617 d!1270210))

(assert (=> b!4319617 d!1270212))

(declare-fun d!1270318 () Bool)

(assert (=> d!1270318 (contains!10400 (getKeysList!55 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) key!2048)))

(declare-fun lt!1538591 () Unit!67649)

(assert (=> d!1270318 (= lt!1538591 (choose!26380 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048))))

(assert (=> d!1270318 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270318 (= (lemmaInListThenGetKeysListContains!52 (toList!2538 (extractMap!365 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) key!2048) lt!1538591)))

(declare-fun bs!606374 () Bool)

(assert (= bs!606374 d!1270318))

(assert (=> bs!606374 m!4913157))

(assert (=> bs!606374 m!4913157))

(declare-fun m!4914223 () Bool)

(assert (=> bs!606374 m!4914223))

(declare-fun m!4914225 () Bool)

(assert (=> bs!606374 m!4914225))

(assert (=> bs!606374 m!4913215))

(assert (=> b!4319617 d!1270318))

(assert (=> b!4319603 d!1270232))

(assert (=> b!4319603 d!1270178))

(declare-fun d!1270320 () Bool)

(assert (=> d!1270320 (= (map!10382 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (_values!5024 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (mask!13343 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (extraKeys!4992 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (zeroValue!5002 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) (minValue!5002 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308)))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (ite c!734418 (_2!26847 lt!1537623) (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun bs!606375 () Bool)

(assert (= bs!606375 d!1270320))

(declare-fun m!4914227 () Bool)

(assert (=> bs!606375 m!4914227))

(assert (=> d!1269904 d!1270320))

(declare-fun d!1270322 () Bool)

(declare-fun res!1770617 () Bool)

(declare-fun e!2687782 () Bool)

(assert (=> d!1270322 (=> res!1770617 e!2687782)))

(assert (=> d!1270322 (= res!1770617 ((_ is Nil!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270322 (= (forall!8800 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lambda!133676) e!2687782)))

(declare-fun b!4320333 () Bool)

(declare-fun e!2687783 () Bool)

(assert (=> b!4320333 (= e!2687782 e!2687783)))

(declare-fun res!1770618 () Bool)

(assert (=> b!4320333 (=> (not res!1770618) (not e!2687783))))

(assert (=> b!4320333 (= res!1770618 (dynLambda!20499 lambda!133676 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320334 () Bool)

(assert (=> b!4320334 (= e!2687783 (forall!8800 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lambda!133676))))

(assert (= (and d!1270322 (not res!1770617)) b!4320333))

(assert (= (and b!4320333 res!1770618) b!4320334))

(declare-fun b_lambda!127141 () Bool)

(assert (=> (not b_lambda!127141) (not b!4320333)))

(declare-fun m!4914229 () Bool)

(assert (=> b!4320333 m!4914229))

(declare-fun m!4914231 () Bool)

(assert (=> b!4320334 m!4914231))

(assert (=> d!1269976 d!1270322))

(declare-fun d!1270324 () Bool)

(declare-fun res!1770619 () Bool)

(declare-fun e!2687784 () Bool)

(assert (=> d!1270324 (=> res!1770619 e!2687784)))

(assert (=> d!1270324 (= res!1770619 ((_ is Nil!48357) (t!355350 lt!1537603)))))

(assert (=> d!1270324 (= (forall!8801 (t!355350 lt!1537603) lambda!133661) e!2687784)))

(declare-fun b!4320335 () Bool)

(declare-fun e!2687785 () Bool)

(assert (=> b!4320335 (= e!2687784 e!2687785)))

(declare-fun res!1770620 () Bool)

(assert (=> b!4320335 (=> (not res!1770620) (not e!2687785))))

(assert (=> b!4320335 (= res!1770620 (dynLambda!20501 lambda!133661 (h!53814 (t!355350 lt!1537603))))))

(declare-fun b!4320336 () Bool)

(assert (=> b!4320336 (= e!2687785 (forall!8801 (t!355350 (t!355350 lt!1537603)) lambda!133661))))

(assert (= (and d!1270324 (not res!1770619)) b!4320335))

(assert (= (and b!4320335 res!1770620) b!4320336))

(declare-fun b_lambda!127143 () Bool)

(assert (=> (not b_lambda!127143) (not b!4320335)))

(declare-fun m!4914233 () Bool)

(assert (=> b!4320335 m!4914233))

(declare-fun m!4914235 () Bool)

(assert (=> b!4320336 m!4914235))

(assert (=> b!4319419 d!1270324))

(assert (=> d!1269992 d!1270170))

(declare-fun d!1270326 () Bool)

(declare-fun res!1770621 () Bool)

(declare-fun e!2687786 () Bool)

(assert (=> d!1270326 (=> res!1770621 e!2687786)))

(assert (=> d!1270326 (= res!1770621 ((_ is Nil!48357) (t!355350 lt!1537611)))))

(assert (=> d!1270326 (= (forall!8801 (t!355350 lt!1537611) lambda!133662) e!2687786)))

(declare-fun b!4320337 () Bool)

(declare-fun e!2687787 () Bool)

(assert (=> b!4320337 (= e!2687786 e!2687787)))

(declare-fun res!1770622 () Bool)

(assert (=> b!4320337 (=> (not res!1770622) (not e!2687787))))

(assert (=> b!4320337 (= res!1770622 (dynLambda!20501 lambda!133662 (h!53814 (t!355350 lt!1537611))))))

(declare-fun b!4320338 () Bool)

(assert (=> b!4320338 (= e!2687787 (forall!8801 (t!355350 (t!355350 lt!1537611)) lambda!133662))))

(assert (= (and d!1270326 (not res!1770621)) b!4320337))

(assert (= (and b!4320337 res!1770622) b!4320338))

(declare-fun b_lambda!127145 () Bool)

(assert (=> (not b_lambda!127145) (not b!4320337)))

(declare-fun m!4914237 () Bool)

(assert (=> b!4320337 m!4914237))

(declare-fun m!4914239 () Bool)

(assert (=> b!4320338 m!4914239))

(assert (=> b!4319246 d!1270326))

(declare-fun d!1270328 () Bool)

(declare-fun e!2687788 () Bool)

(assert (=> d!1270328 e!2687788))

(declare-fun res!1770623 () Bool)

(assert (=> d!1270328 (=> (not res!1770623) (not e!2687788))))

(assert (=> d!1270328 (= res!1770623 (and (bvsge (index!1459 lt!1537803) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537803) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))

(declare-fun lt!1538592 () Unit!67649)

(assert (=> d!1270328 (= lt!1538592 (choose!26383 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270328 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270328 (= (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538592)))

(declare-fun b!4320339 () Bool)

(assert (=> b!4320339 (= e!2687788 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537802 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803))))))

(assert (= (and d!1270328 res!1770623) b!4320339))

(declare-fun m!4914241 () Bool)

(assert (=> d!1270328 m!4914241))

(assert (=> d!1270328 m!4913201))

(declare-fun m!4914243 () Bool)

(assert (=> b!4320339 m!4914243))

(assert (=> b!4320339 m!4912845))

(assert (=> b!4320339 m!4914243))

(assert (=> b!4320339 m!4912845))

(declare-fun m!4914245 () Bool)

(assert (=> b!4320339 m!4914245))

(assert (=> b!4319339 d!1270328))

(declare-fun d!1270330 () Bool)

(declare-fun e!2687791 () Bool)

(assert (=> d!1270330 e!2687791))

(declare-fun res!1770626 () Bool)

(assert (=> d!1270330 (=> (not res!1770626) (not e!2687791))))

(assert (=> d!1270330 (= res!1770626 (and (bvsge (index!1459 lt!1537803) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537803) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))

(declare-fun lt!1538595 () Unit!67649)

(declare-fun choose!26385 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 32) (_ BitVec 64) List!48481 Int) Unit!67649)

(assert (=> d!1270330 (= lt!1538595 (choose!26385 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) lt!1537608 lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(assert (=> d!1270330 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270330 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!10 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (index!1459 lt!1537803) lt!1537608 lt!1537611 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538595)))

(declare-fun b!4320342 () Bool)

(assert (=> b!4320342 (= e!2687791 (= (+!322 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (tuple2!47123 lt!1537608 lt!1537611)) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (array!17189 (store (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (index!1459 lt!1537803) lt!1537611) (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (= (and d!1270330 res!1770626) b!4320342))

(declare-fun m!4914247 () Bool)

(assert (=> d!1270330 m!4914247))

(assert (=> d!1270330 m!4913201))

(assert (=> b!4320342 m!4913203))

(assert (=> b!4320342 m!4913203))

(assert (=> b!4320342 m!4913983))

(assert (=> b!4320342 m!4912825))

(declare-fun m!4914249 () Bool)

(assert (=> b!4320342 m!4914249))

(assert (=> b!4319339 d!1270330))

(declare-fun d!1270332 () Bool)

(declare-fun e!2687792 () Bool)

(assert (=> d!1270332 e!2687792))

(declare-fun res!1770627 () Bool)

(assert (=> d!1270332 (=> res!1770627 e!2687792)))

(declare-fun lt!1538597 () Bool)

(assert (=> d!1270332 (= res!1770627 (not lt!1538597))))

(declare-fun lt!1538596 () Bool)

(assert (=> d!1270332 (= lt!1538597 lt!1538596)))

(declare-fun lt!1538599 () Unit!67649)

(declare-fun e!2687793 () Unit!67649)

(assert (=> d!1270332 (= lt!1538599 e!2687793)))

(declare-fun c!734748 () Bool)

(assert (=> d!1270332 (= c!734748 lt!1538596)))

(assert (=> d!1270332 (= lt!1538596 (containsKey!394 (toList!2537 call!299219) lt!1537608))))

(assert (=> d!1270332 (= (contains!10396 call!299219 lt!1537608) lt!1538597)))

(declare-fun b!4320343 () Bool)

(declare-fun lt!1538598 () Unit!67649)

(assert (=> b!4320343 (= e!2687793 lt!1538598)))

(assert (=> b!4320343 (= lt!1538598 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299219) lt!1537608))))

(assert (=> b!4320343 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299219) lt!1537608))))

(declare-fun b!4320344 () Bool)

(declare-fun Unit!67720 () Unit!67649)

(assert (=> b!4320344 (= e!2687793 Unit!67720)))

(declare-fun b!4320345 () Bool)

(assert (=> b!4320345 (= e!2687792 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299219) lt!1537608)))))

(assert (= (and d!1270332 c!734748) b!4320343))

(assert (= (and d!1270332 (not c!734748)) b!4320344))

(assert (= (and d!1270332 (not res!1770627)) b!4320345))

(declare-fun m!4914251 () Bool)

(assert (=> d!1270332 m!4914251))

(declare-fun m!4914253 () Bool)

(assert (=> b!4320343 m!4914253))

(declare-fun m!4914255 () Bool)

(assert (=> b!4320343 m!4914255))

(assert (=> b!4320343 m!4914255))

(declare-fun m!4914257 () Bool)

(assert (=> b!4320343 m!4914257))

(assert (=> b!4320345 m!4914255))

(assert (=> b!4320345 m!4914255))

(assert (=> b!4320345 m!4914257))

(assert (=> b!4319339 d!1270332))

(declare-fun bm!299390 () Bool)

(declare-fun call!299400 () Bool)

(declare-fun call!299408 () Bool)

(assert (=> bm!299390 (= call!299400 call!299408)))

(declare-fun b!4320346 () Bool)

(declare-fun e!2687809 () tuple2!47126)

(declare-fun e!2687799 () tuple2!47126)

(assert (=> b!4320346 (= e!2687809 e!2687799)))

(declare-fun c!734759 () Bool)

(declare-fun lt!1538616 () SeekEntryResult!20)

(assert (=> b!4320346 (= c!734759 ((_ is MissingZero!20) lt!1538616))))

(declare-fun b!4320347 () Bool)

(declare-fun e!2687807 () Bool)

(assert (=> b!4320347 (= e!2687807 (not call!299400))))

(declare-fun b!4320348 () Bool)

(declare-fun e!2687794 () Bool)

(declare-fun lt!1538602 () SeekEntryResult!20)

(assert (=> b!4320348 (= e!2687794 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1459 lt!1538602)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299391 () Bool)

(declare-fun call!299413 () Bool)

(assert (=> bm!299391 (= call!299413 call!299408)))

(declare-fun bm!299392 () Bool)

(declare-fun call!299402 () ListLongMap!1153)

(declare-fun call!299401 () ListLongMap!1153)

(assert (=> bm!299392 (= call!299402 call!299401)))

(declare-fun b!4320349 () Bool)

(declare-fun c!734753 () Bool)

(assert (=> b!4320349 (= c!734753 ((_ is MissingVacant!20) lt!1538616))))

(declare-fun e!2687808 () tuple2!47126)

(assert (=> b!4320349 (= e!2687808 e!2687809)))

(declare-fun bm!299393 () Bool)

(declare-fun call!299409 () Unit!67649)

(assert (=> bm!299393 (= call!299409 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!10 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5128 call!299230)))))

(declare-fun b!4320350 () Bool)

(declare-fun c!734749 () Bool)

(declare-fun lt!1538621 () SeekEntryResult!20)

(assert (=> b!4320350 (= c!734749 ((_ is MissingVacant!20) lt!1538621))))

(declare-fun e!2687806 () Bool)

(declare-fun e!2687813 () Bool)

(assert (=> b!4320350 (= e!2687806 e!2687813)))

(declare-fun call!299404 () Bool)

(declare-fun c!734751 () Bool)

(declare-fun lt!1538611 () SeekEntryResult!20)

(declare-fun bm!299394 () Bool)

(declare-fun lt!1538623 () SeekEntryResult!20)

(declare-fun c!734757 () Bool)

(declare-fun c!734754 () Bool)

(declare-fun c!734756 () Bool)

(declare-fun c!734760 () Bool)

(assert (=> bm!299394 (= call!299404 (inRange!0 (ite c!734756 (ite c!734760 (index!1459 lt!1538623) (ite c!734754 (index!1460 lt!1538611) (index!1461 lt!1538611))) (ite c!734751 (index!1459 lt!1538602) (ite c!734757 (index!1460 lt!1538621) (index!1461 lt!1538621)))) (mask!13343 call!299230)))))

(declare-fun bm!299395 () Bool)

(declare-fun call!299396 () Bool)

(assert (=> bm!299395 (= call!299396 call!299404)))

(declare-fun b!4320351 () Bool)

(declare-fun lt!1538614 () Unit!67649)

(declare-fun lt!1538612 () Unit!67649)

(assert (=> b!4320351 (= lt!1538614 lt!1538612)))

(declare-fun call!299398 () ListLongMap!1153)

(assert (=> b!4320351 (= call!299402 call!299398)))

(declare-fun lt!1538605 () (_ BitVec 32))

(assert (=> b!4320351 (= lt!1538612 (lemmaChangeLongMinValueKeyThenAddPairToListMap!10 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) lt!1538605 (zeroValue!5002 call!299230) (minValue!5002 call!299230) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (defaultEntry!5128 call!299230)))))

(assert (=> b!4320351 (= lt!1538605 (bvor (extraKeys!4992 call!299230) #b00000000000000000000000000000010))))

(declare-fun e!2687811 () tuple2!47126)

(assert (=> b!4320351 (= e!2687811 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 call!299230) (mask!13343 call!299230) (bvor (extraKeys!4992 call!299230) #b00000000000000000000000000000010) (zeroValue!5002 call!299230) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_size!9529 call!299230) (_keys!5043 call!299230) (_values!5024 call!299230) (_vacant!4804 call!299230))))))

(declare-fun b!4320352 () Bool)

(declare-fun e!2687805 () Unit!67649)

(declare-fun Unit!67721 () Unit!67649)

(assert (=> b!4320352 (= e!2687805 Unit!67721)))

(declare-fun lt!1538626 () Unit!67649)

(declare-fun call!299397 () Unit!67649)

(assert (=> b!4320352 (= lt!1538626 call!299397)))

(declare-fun call!299412 () SeekEntryResult!20)

(assert (=> b!4320352 (= lt!1538623 call!299412)))

(declare-fun res!1770630 () Bool)

(assert (=> b!4320352 (= res!1770630 ((_ is Found!20) lt!1538623))))

(declare-fun e!2687803 () Bool)

(assert (=> b!4320352 (=> (not res!1770630) (not e!2687803))))

(assert (=> b!4320352 e!2687803))

(declare-fun lt!1538624 () Unit!67649)

(assert (=> b!4320352 (= lt!1538624 lt!1538626)))

(assert (=> b!4320352 false))

(declare-fun b!4320353 () Bool)

(declare-fun res!1770635 () Bool)

(assert (=> b!4320353 (=> (not res!1770635) (not e!2687807))))

(declare-fun call!299403 () Bool)

(assert (=> b!4320353 (= res!1770635 call!299403)))

(declare-fun e!2687795 () Bool)

(assert (=> b!4320353 (= e!2687795 e!2687807)))

(declare-fun b!4320354 () Bool)

(declare-fun c!734752 () Bool)

(assert (=> b!4320354 (= c!734752 ((_ is MissingVacant!20) lt!1538611))))

(declare-fun e!2687801 () Bool)

(assert (=> b!4320354 (= e!2687795 e!2687801)))

(declare-fun b!4320355 () Bool)

(declare-fun res!1770636 () Bool)

(assert (=> b!4320355 (= res!1770636 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1461 lt!1538621)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687802 () Bool)

(assert (=> b!4320355 (=> (not res!1770636) (not e!2687802))))

(declare-fun b!4320356 () Bool)

(declare-fun res!1770639 () Bool)

(assert (=> b!4320356 (= res!1770639 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1461 lt!1538611)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!2687804 () Bool)

(assert (=> b!4320356 (=> (not res!1770639) (not e!2687804))))

(declare-fun bm!299396 () Bool)

(declare-fun call!299414 () ListLongMap!1153)

(assert (=> bm!299396 (= call!299414 (map!10382 call!299230))))

(declare-fun b!4320357 () Bool)

(assert (=> b!4320357 (= e!2687802 (not call!299413))))

(declare-fun b!4320358 () Bool)

(assert (=> b!4320358 (= e!2687801 ((_ is Undefined!20) lt!1538611))))

(declare-fun b!4320359 () Bool)

(assert (=> b!4320359 (= e!2687804 (not call!299400))))

(declare-fun bm!299397 () Bool)

(declare-fun call!299418 () ListLongMap!1153)

(assert (=> bm!299397 (= call!299398 call!299418)))

(declare-fun lt!1538615 () array!17188)

(declare-fun bm!299398 () Bool)

(declare-fun call!299411 () ListLongMap!1153)

(assert (=> bm!299398 (= call!299411 (getCurrentListMap!23 (_keys!5043 call!299230) (ite c!734756 (_values!5024 call!299230) lt!1538615) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) #b00000000000000000000000000000000 (defaultEntry!5128 call!299230)))))

(declare-fun b!4320360 () Bool)

(declare-fun lt!1538610 () Unit!67649)

(declare-fun lt!1538607 () Unit!67649)

(assert (=> b!4320360 (= lt!1538610 lt!1538607)))

(declare-fun call!299415 () Bool)

(assert (=> b!4320360 call!299415))

(assert (=> b!4320360 (= lt!1538607 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 call!299230) lt!1538615 (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) (index!1459 lt!1538616) (defaultEntry!5128 call!299230)))))

(assert (=> b!4320360 (= lt!1538615 (array!17189 (store (arr!7672 (_values!5024 call!299230)) (index!1459 lt!1538616) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (size!35711 (_values!5024 call!299230))))))

(declare-fun lt!1538604 () Unit!67649)

(declare-fun lt!1538620 () Unit!67649)

(assert (=> b!4320360 (= lt!1538604 lt!1538620)))

(declare-fun call!299406 () ListLongMap!1153)

(assert (=> b!4320360 (= call!299401 call!299406)))

(assert (=> b!4320360 (= lt!1538620 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!10 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) (index!1459 lt!1538616) #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (defaultEntry!5128 call!299230)))))

(declare-fun lt!1538619 () Unit!67649)

(declare-fun e!2687810 () Unit!67649)

(assert (=> b!4320360 (= lt!1538619 e!2687810)))

(assert (=> b!4320360 (= c!734751 (contains!10396 call!299418 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4320360 (= e!2687799 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) (_size!9529 call!299230) (_keys!5043 call!299230) (array!17189 (store (arr!7672 (_values!5024 call!299230)) (index!1459 lt!1538616) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (size!35711 (_values!5024 call!299230))) (_vacant!4804 call!299230))))))

(declare-fun bm!299399 () Bool)

(declare-fun call!299395 () SeekEntryResult!20)

(assert (=> bm!299399 (= call!299395 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5043 call!299230) (mask!13343 call!299230)))))

(declare-fun b!4320361 () Bool)

(declare-fun res!1770629 () Bool)

(declare-fun e!2687812 () Bool)

(assert (=> b!4320361 (=> (not res!1770629) (not e!2687812))))

(assert (=> b!4320361 (= res!1770629 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1460 lt!1538621)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320362 () Bool)

(declare-fun e!2687796 () Bool)

(declare-fun call!299417 () ListLongMap!1153)

(assert (=> b!4320362 (= e!2687796 (= call!299417 call!299414))))

(declare-fun b!4320363 () Bool)

(declare-fun lt!1538608 () tuple2!47126)

(declare-fun call!299407 () tuple2!47126)

(assert (=> b!4320363 (= lt!1538608 call!299407)))

(assert (=> b!4320363 (= e!2687799 (tuple2!47127 (_1!26848 lt!1538608) (_2!26848 lt!1538608)))))

(declare-fun b!4320364 () Bool)

(assert (=> b!4320364 (= e!2687803 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1459 lt!1538623)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299400 () Bool)

(declare-fun lt!1538622 () tuple2!47126)

(assert (=> bm!299400 (= call!299417 (map!10382 (_2!26848 lt!1538622)))))

(declare-fun b!4320365 () Bool)

(declare-fun Unit!67722 () Unit!67649)

(assert (=> b!4320365 (= e!2687810 Unit!67722)))

(declare-fun lt!1538601 () Unit!67649)

(assert (=> b!4320365 (= lt!1538601 call!299409)))

(declare-fun call!299416 () SeekEntryResult!20)

(assert (=> b!4320365 (= lt!1538621 call!299416)))

(assert (=> b!4320365 (= c!734757 ((_ is MissingZero!20) lt!1538621))))

(assert (=> b!4320365 e!2687806))

(declare-fun lt!1538609 () Unit!67649)

(assert (=> b!4320365 (= lt!1538609 lt!1538601)))

(assert (=> b!4320365 false))

(declare-fun c!734750 () Bool)

(declare-fun bm!299401 () Bool)

(declare-fun lt!1538618 () (_ BitVec 32))

(declare-fun c!734755 () Bool)

(assert (=> bm!299401 (= call!299418 (getCurrentListMap!23 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (ite c!734750 (ite c!734755 lt!1538618 lt!1538605) (extraKeys!4992 call!299230)) (ite (and c!734750 c!734755) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 call!299230)) (ite c!734750 (ite c!734755 (minValue!5002 call!299230) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (minValue!5002 call!299230)) #b00000000000000000000000000000000 (defaultEntry!5128 call!299230)))))

(declare-fun b!4320366 () Bool)

(declare-fun res!1770632 () Bool)

(assert (=> b!4320366 (=> (not res!1770632) (not e!2687807))))

(assert (=> b!4320366 (= res!1770632 (= (select (arr!7671 (_keys!5043 call!299230)) (index!1460 lt!1538611)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320367 () Bool)

(declare-fun e!2687800 () Bool)

(assert (=> b!4320367 (= e!2687796 e!2687800)))

(declare-fun res!1770631 () Bool)

(assert (=> b!4320367 (= res!1770631 (contains!10396 call!299417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4320367 (=> (not res!1770631) (not e!2687800))))

(declare-fun bm!299402 () Bool)

(assert (=> bm!299402 (= call!299416 call!299395)))

(declare-fun bm!299403 () Bool)

(assert (=> bm!299403 (= call!299407 (updateHelperNewKey!10 call!299230 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (ite c!734753 (index!1461 lt!1538616) (index!1460 lt!1538616))))))

(declare-fun b!4320368 () Bool)

(assert (=> b!4320368 (= e!2687801 e!2687804)))

(declare-fun res!1770640 () Bool)

(assert (=> b!4320368 (= res!1770640 call!299403)))

(assert (=> b!4320368 (=> (not res!1770640) (not e!2687804))))

(declare-fun b!4320369 () Bool)

(declare-fun lt!1538606 () Unit!67649)

(assert (=> b!4320369 (= lt!1538606 e!2687805)))

(assert (=> b!4320369 (= c!734760 call!299415)))

(assert (=> b!4320369 (= e!2687808 (tuple2!47127 false call!299230))))

(declare-fun bm!299404 () Bool)

(assert (=> bm!299404 (= call!299397 (lemmaInListMapThenSeekEntryOrOpenFindsIt!10 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) #b0000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!5128 call!299230)))))

(declare-fun b!4320370 () Bool)

(declare-fun e!2687798 () tuple2!47126)

(assert (=> b!4320370 (= e!2687798 e!2687808)))

(assert (=> b!4320370 (= lt!1538616 (seekEntryOrOpen!0 #b0000000000000000000000000000000000000000000000000000000000000000 (_keys!5043 call!299230) (mask!13343 call!299230)))))

(assert (=> b!4320370 (= c!734756 ((_ is Undefined!20) lt!1538616))))

(declare-fun bm!299405 () Bool)

(declare-fun call!299410 () Bool)

(assert (=> bm!299405 (= call!299403 call!299410)))

(declare-fun b!4320371 () Bool)

(declare-fun lt!1538613 () Unit!67649)

(assert (=> b!4320371 (= e!2687810 lt!1538613)))

(assert (=> b!4320371 (= lt!1538613 call!299397)))

(assert (=> b!4320371 (= lt!1538602 call!299416)))

(declare-fun res!1770628 () Bool)

(assert (=> b!4320371 (= res!1770628 ((_ is Found!20) lt!1538602))))

(assert (=> b!4320371 (=> (not res!1770628) (not e!2687794))))

(assert (=> b!4320371 e!2687794))

(declare-fun b!4320372 () Bool)

(assert (=> b!4320372 (= e!2687813 e!2687802)))

(declare-fun res!1770633 () Bool)

(declare-fun call!299399 () Bool)

(assert (=> b!4320372 (= res!1770633 call!299399)))

(assert (=> b!4320372 (=> (not res!1770633) (not e!2687802))))

(declare-fun bm!299406 () Bool)

(assert (=> bm!299406 (= call!299406 (getCurrentListMap!23 (_keys!5043 call!299230) (ite c!734750 (_values!5024 call!299230) (array!17189 (store (arr!7672 (_values!5024 call!299230)) (index!1459 lt!1538616) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (size!35711 (_values!5024 call!299230)))) (mask!13343 call!299230) (extraKeys!4992 call!299230) (zeroValue!5002 call!299230) (minValue!5002 call!299230) #b00000000000000000000000000000000 (defaultEntry!5128 call!299230)))))

(declare-fun b!4320373 () Bool)

(declare-fun lt!1538625 () Unit!67649)

(assert (=> b!4320373 (= e!2687805 lt!1538625)))

(assert (=> b!4320373 (= lt!1538625 call!299409)))

(assert (=> b!4320373 (= lt!1538611 call!299412)))

(assert (=> b!4320373 (= c!734754 ((_ is MissingZero!20) lt!1538611))))

(assert (=> b!4320373 e!2687795))

(declare-fun bm!299407 () Bool)

(assert (=> bm!299407 (= call!299415 (contains!10396 call!299411 (ite c!734756 #b0000000000000000000000000000000000000000000000000000000000000000 (select (arr!7671 (_keys!5043 call!299230)) (index!1459 lt!1538616)))))))

(declare-fun bm!299408 () Bool)

(assert (=> bm!299408 (= call!299412 call!299395)))

(declare-fun bm!299409 () Bool)

(declare-fun call!299405 () ListLongMap!1153)

(assert (=> bm!299409 (= call!299401 (+!322 (ite c!734750 call!299405 call!299418) (ite c!734750 (ite c!734755 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun b!4320374 () Bool)

(assert (=> b!4320374 (= e!2687813 ((_ is Undefined!20) lt!1538621))))

(declare-fun b!4320375 () Bool)

(declare-fun e!2687797 () Bool)

(assert (=> b!4320375 (= e!2687797 e!2687796)))

(declare-fun c!734758 () Bool)

(assert (=> b!4320375 (= c!734758 (_1!26848 lt!1538622))))

(declare-fun b!4320376 () Bool)

(assert (=> b!4320376 (= e!2687812 (not call!299413))))

(declare-fun bm!299410 () Bool)

(assert (=> bm!299410 (= call!299405 call!299406)))

(declare-fun bm!299411 () Bool)

(assert (=> bm!299411 (= call!299399 call!299396)))

(declare-fun b!4320378 () Bool)

(assert (=> b!4320378 (= e!2687798 e!2687811)))

(assert (=> b!4320378 (= c!734755 (= #b0000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320377 () Bool)

(assert (=> b!4320377 (= e!2687800 (= call!299417 (+!322 call!299414 (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun d!1270334 () Bool)

(assert (=> d!1270334 e!2687797))

(declare-fun res!1770634 () Bool)

(assert (=> d!1270334 (=> (not res!1770634) (not e!2687797))))

(assert (=> d!1270334 (= res!1770634 (valid!3754 (_2!26848 lt!1538622)))))

(assert (=> d!1270334 (= lt!1538622 e!2687798)))

(assert (=> d!1270334 (= c!734750 (= #b0000000000000000000000000000000000000000000000000000000000000000 (bvneg #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!1270334 (valid!3754 call!299230)))

(assert (=> d!1270334 (= (update!519 call!299230 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538622)))

(declare-fun b!4320379 () Bool)

(declare-fun res!1770637 () Bool)

(assert (=> b!4320379 (= res!1770637 call!299410)))

(assert (=> b!4320379 (=> (not res!1770637) (not e!2687803))))

(declare-fun b!4320380 () Bool)

(declare-fun lt!1538600 () tuple2!47126)

(assert (=> b!4320380 (= e!2687809 (tuple2!47127 (_1!26848 lt!1538600) (_2!26848 lt!1538600)))))

(assert (=> b!4320380 (= lt!1538600 call!299407)))

(declare-fun b!4320381 () Bool)

(declare-fun lt!1538617 () Unit!67649)

(declare-fun lt!1538603 () Unit!67649)

(assert (=> b!4320381 (= lt!1538617 lt!1538603)))

(assert (=> b!4320381 (= call!299402 call!299398)))

(assert (=> b!4320381 (= lt!1538603 (lemmaChangeZeroKeyThenAddPairToListMap!10 (_keys!5043 call!299230) (_values!5024 call!299230) (mask!13343 call!299230) (extraKeys!4992 call!299230) lt!1538618 (zeroValue!5002 call!299230) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 call!299230) (defaultEntry!5128 call!299230)))))

(assert (=> b!4320381 (= lt!1538618 (bvor (extraKeys!4992 call!299230) #b00000000000000000000000000000001))))

(assert (=> b!4320381 (= e!2687811 (tuple2!47127 true (LongMapFixedSize!9487 (defaultEntry!5128 call!299230) (mask!13343 call!299230) (bvor (extraKeys!4992 call!299230) #b00000000000000000000000000000001) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 call!299230) (_size!9529 call!299230) (_keys!5043 call!299230) (_values!5024 call!299230) (_vacant!4804 call!299230))))))

(declare-fun bm!299412 () Bool)

(assert (=> bm!299412 (= call!299408 (arrayContainsKey!0 (_keys!5043 call!299230) #b0000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun bm!299413 () Bool)

(assert (=> bm!299413 (= call!299410 call!299404)))

(declare-fun b!4320382 () Bool)

(declare-fun res!1770638 () Bool)

(assert (=> b!4320382 (= res!1770638 call!299396)))

(assert (=> b!4320382 (=> (not res!1770638) (not e!2687794))))

(declare-fun b!4320383 () Bool)

(declare-fun res!1770641 () Bool)

(assert (=> b!4320383 (=> (not res!1770641) (not e!2687812))))

(assert (=> b!4320383 (= res!1770641 call!299399)))

(assert (=> b!4320383 (= e!2687806 e!2687812)))

(assert (= (and d!1270334 c!734750) b!4320378))

(assert (= (and d!1270334 (not c!734750)) b!4320370))

(assert (= (and b!4320378 c!734755) b!4320381))

(assert (= (and b!4320378 (not c!734755)) b!4320351))

(assert (= (or b!4320381 b!4320351) bm!299410))

(assert (= (or b!4320381 b!4320351) bm!299397))

(assert (= (or b!4320381 b!4320351) bm!299392))

(assert (= (and b!4320370 c!734756) b!4320369))

(assert (= (and b!4320370 (not c!734756)) b!4320349))

(assert (= (and b!4320369 c!734760) b!4320352))

(assert (= (and b!4320369 (not c!734760)) b!4320373))

(assert (= (and b!4320352 res!1770630) b!4320379))

(assert (= (and b!4320379 res!1770637) b!4320364))

(assert (= (and b!4320373 c!734754) b!4320353))

(assert (= (and b!4320373 (not c!734754)) b!4320354))

(assert (= (and b!4320353 res!1770635) b!4320366))

(assert (= (and b!4320366 res!1770632) b!4320347))

(assert (= (and b!4320354 c!734752) b!4320368))

(assert (= (and b!4320354 (not c!734752)) b!4320358))

(assert (= (and b!4320368 res!1770640) b!4320356))

(assert (= (and b!4320356 res!1770639) b!4320359))

(assert (= (or b!4320347 b!4320359) bm!299390))

(assert (= (or b!4320353 b!4320368) bm!299405))

(assert (= (or b!4320379 bm!299405) bm!299413))

(assert (= (or b!4320352 b!4320373) bm!299408))

(assert (= (and b!4320349 c!734753) b!4320380))

(assert (= (and b!4320349 (not c!734753)) b!4320346))

(assert (= (and b!4320346 c!734759) b!4320363))

(assert (= (and b!4320346 (not c!734759)) b!4320360))

(assert (= (and b!4320360 c!734751) b!4320371))

(assert (= (and b!4320360 (not c!734751)) b!4320365))

(assert (= (and b!4320371 res!1770628) b!4320382))

(assert (= (and b!4320382 res!1770638) b!4320348))

(assert (= (and b!4320365 c!734757) b!4320383))

(assert (= (and b!4320365 (not c!734757)) b!4320350))

(assert (= (and b!4320383 res!1770641) b!4320361))

(assert (= (and b!4320361 res!1770629) b!4320376))

(assert (= (and b!4320350 c!734749) b!4320372))

(assert (= (and b!4320350 (not c!734749)) b!4320374))

(assert (= (and b!4320372 res!1770633) b!4320355))

(assert (= (and b!4320355 res!1770636) b!4320357))

(assert (= (or b!4320376 b!4320357) bm!299391))

(assert (= (or b!4320383 b!4320372) bm!299411))

(assert (= (or b!4320382 bm!299411) bm!299395))

(assert (= (or b!4320371 b!4320365) bm!299402))

(assert (= (or b!4320380 b!4320363) bm!299403))

(assert (= (or b!4320352 b!4320371) bm!299404))

(assert (= (or bm!299413 bm!299395) bm!299394))

(assert (= (or bm!299408 bm!299402) bm!299399))

(assert (= (or b!4320369 b!4320360) bm!299398))

(assert (= (or bm!299390 bm!299391) bm!299412))

(assert (= (or b!4320373 b!4320365) bm!299393))

(assert (= (or b!4320369 b!4320360) bm!299407))

(assert (= (or bm!299410 b!4320360) bm!299406))

(assert (= (or bm!299397 b!4320360) bm!299401))

(assert (= (or bm!299392 b!4320360) bm!299409))

(assert (= (and d!1270334 res!1770634) b!4320375))

(assert (= (and b!4320375 c!734758) b!4320367))

(assert (= (and b!4320375 (not c!734758)) b!4320362))

(assert (= (and b!4320367 res!1770631) b!4320377))

(assert (= (or b!4320377 b!4320362) bm!299396))

(assert (= (or b!4320367 b!4320377 b!4320362) bm!299400))

(declare-fun m!4914259 () Bool)

(assert (=> b!4320360 m!4914259))

(declare-fun m!4914261 () Bool)

(assert (=> b!4320360 m!4914261))

(declare-fun m!4914263 () Bool)

(assert (=> b!4320360 m!4914263))

(declare-fun m!4914265 () Bool)

(assert (=> b!4320360 m!4914265))

(declare-fun m!4914267 () Bool)

(assert (=> b!4320348 m!4914267))

(declare-fun m!4914269 () Bool)

(assert (=> bm!299398 m!4914269))

(declare-fun m!4914271 () Bool)

(assert (=> b!4320381 m!4914271))

(declare-fun m!4914273 () Bool)

(assert (=> d!1270334 m!4914273))

(declare-fun m!4914275 () Bool)

(assert (=> d!1270334 m!4914275))

(declare-fun m!4914277 () Bool)

(assert (=> bm!299401 m!4914277))

(declare-fun m!4914279 () Bool)

(assert (=> b!4320364 m!4914279))

(declare-fun m!4914281 () Bool)

(assert (=> bm!299407 m!4914281))

(declare-fun m!4914283 () Bool)

(assert (=> bm!299407 m!4914283))

(declare-fun m!4914285 () Bool)

(assert (=> b!4320356 m!4914285))

(assert (=> bm!299406 m!4914261))

(declare-fun m!4914287 () Bool)

(assert (=> bm!299406 m!4914287))

(declare-fun m!4914289 () Bool)

(assert (=> bm!299396 m!4914289))

(declare-fun m!4914291 () Bool)

(assert (=> bm!299399 m!4914291))

(declare-fun m!4914293 () Bool)

(assert (=> bm!299393 m!4914293))

(declare-fun m!4914295 () Bool)

(assert (=> bm!299404 m!4914295))

(declare-fun m!4914297 () Bool)

(assert (=> bm!299394 m!4914297))

(declare-fun m!4914299 () Bool)

(assert (=> bm!299403 m!4914299))

(declare-fun m!4914301 () Bool)

(assert (=> b!4320366 m!4914301))

(declare-fun m!4914303 () Bool)

(assert (=> b!4320377 m!4914303))

(declare-fun m!4914305 () Bool)

(assert (=> bm!299412 m!4914305))

(declare-fun m!4914307 () Bool)

(assert (=> b!4320361 m!4914307))

(declare-fun m!4914309 () Bool)

(assert (=> bm!299409 m!4914309))

(declare-fun m!4914311 () Bool)

(assert (=> b!4320355 m!4914311))

(declare-fun m!4914313 () Bool)

(assert (=> b!4320351 m!4914313))

(declare-fun m!4914315 () Bool)

(assert (=> bm!299400 m!4914315))

(declare-fun m!4914317 () Bool)

(assert (=> b!4320367 m!4914317))

(assert (=> b!4320370 m!4914291))

(assert (=> b!4319408 d!1270334))

(declare-fun b!4320396 () Bool)

(declare-fun e!2687821 () Bool)

(declare-fun lt!1538679 () array!17186)

(declare-fun lt!1538694 () tuple2!47122)

(assert (=> b!4320396 (= e!2687821 (arrayContainsKey!0 lt!1538679 (_1!26846 lt!1538694) #b00000000000000000000000000000000))))

(declare-fun b!4320397 () Bool)

(declare-fun res!1770647 () Bool)

(declare-fun e!2687822 () Bool)

(assert (=> b!4320397 (=> (not res!1770647) (not e!2687822))))

(declare-fun lt!1538684 () LongMapFixedSize!9486)

(assert (=> b!4320397 (= res!1770647 (= (mask!13343 lt!1538684) lt!1537836))))

(declare-fun d!1270336 () Bool)

(assert (=> d!1270336 e!2687822))

(declare-fun res!1770646 () Bool)

(assert (=> d!1270336 (=> (not res!1770646) (not e!2687822))))

(assert (=> d!1270336 (= res!1770646 (valid!3754 lt!1538684))))

(declare-fun lt!1538680 () LongMapFixedSize!9486)

(assert (=> d!1270336 (= lt!1538684 lt!1538680)))

(declare-fun lt!1538677 () Unit!67649)

(declare-fun e!2687820 () Unit!67649)

(assert (=> d!1270336 (= lt!1538677 e!2687820)))

(declare-fun c!734766 () Bool)

(assert (=> d!1270336 (= c!734766 (not (= (map!10382 lt!1538680) (ListLongMap!1154 Nil!48358))))))

(declare-fun lt!1538693 () Unit!67649)

(declare-fun lt!1538681 () Unit!67649)

(assert (=> d!1270336 (= lt!1538693 lt!1538681)))

(declare-fun lt!1538692 () array!17186)

(declare-fun lt!1538690 () (_ BitVec 32))

(declare-fun lt!1538685 () List!48484)

(assert (=> d!1270336 (arrayNoDuplicates!0 lt!1538692 lt!1538690 lt!1538685)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!17186 (_ BitVec 32) (_ BitVec 32) List!48484) Unit!67649)

(assert (=> d!1270336 (= lt!1538681 (lemmaArrayNoDuplicatesInAll0Array!0 lt!1538692 lt!1538690 (bvadd lt!1537836 #b00000000000000000000000000000001) lt!1538685))))

(assert (=> d!1270336 (= lt!1538685 Nil!48360)))

(assert (=> d!1270336 (= lt!1538690 #b00000000000000000000000000000000)))

(assert (=> d!1270336 (= lt!1538692 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)))))

(declare-fun lt!1538698 () Unit!67649)

(declare-fun lt!1538683 () Unit!67649)

(assert (=> d!1270336 (= lt!1538698 lt!1538683)))

(declare-fun lt!1538697 () (_ BitVec 32))

(declare-fun lt!1538687 () array!17186)

(assert (=> d!1270336 (arrayForallSeekEntryOrOpenFound!0 lt!1538697 lt!1538687 lt!1537836)))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!17186 (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> d!1270336 (= lt!1538683 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!1538687 lt!1537836 lt!1538697))))

(assert (=> d!1270336 (= lt!1538697 #b00000000000000000000000000000000)))

(assert (=> d!1270336 (= lt!1538687 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)))))

(declare-fun lt!1538688 () Unit!67649)

(declare-fun lt!1538695 () Unit!67649)

(assert (=> d!1270336 (= lt!1538688 lt!1538695)))

(declare-fun lt!1538675 () array!17186)

(declare-fun lt!1538689 () (_ BitVec 32))

(declare-fun lt!1538686 () (_ BitVec 32))

(assert (=> d!1270336 (= (arrayCountValidKeys!0 lt!1538675 lt!1538689 lt!1538686) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!17186 (_ BitVec 32) (_ BitVec 32)) Unit!67649)

(assert (=> d!1270336 (= lt!1538695 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!1538675 lt!1538689 lt!1538686))))

(assert (=> d!1270336 (= lt!1538686 (bvadd lt!1537836 #b00000000000000000000000000000001))))

(assert (=> d!1270336 (= lt!1538689 #b00000000000000000000000000000000)))

(assert (=> d!1270336 (= lt!1538675 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)))))

(declare-fun lt!1538678 () List!48481)

(assert (=> d!1270336 (= lt!1538680 (LongMapFixedSize!9487 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537836 #b00000000000000000000000000000000 lt!1538678 lt!1538678 #b00000000000000000000000000000000 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)) (array!17189 ((as const (Array (_ BitVec 32) List!48481)) lt!1538678) (bvadd lt!1537836 #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!1270336 (= lt!1538678 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1270336 (validMask!0 lt!1537836)))

(assert (=> d!1270336 (= (getNewLongMapFixedSize!26 lt!1537836 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538684)))

(declare-fun b!4320398 () Bool)

(declare-fun Unit!67723 () Unit!67649)

(assert (=> b!4320398 (= e!2687820 Unit!67723)))

(declare-fun head!9021 (List!48482) tuple2!47122)

(assert (=> b!4320398 (= lt!1538694 (head!9021 (toList!2537 (map!10382 lt!1538680))))))

(assert (=> b!4320398 (= lt!1538679 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)))))

(declare-fun lt!1538676 () (_ BitVec 32))

(assert (=> b!4320398 (= lt!1538676 #b00000000000000000000000000000000)))

(declare-fun lt!1538696 () Unit!67649)

(assert (=> b!4320398 (= lt!1538696 (lemmaKeyInListMapIsInArray!16 lt!1538679 (array!17189 ((as const (Array (_ BitVec 32) List!48481)) lt!1538678) (bvadd lt!1537836 #b00000000000000000000000000000001)) lt!1537836 lt!1538676 lt!1538678 lt!1538678 (_1!26846 lt!1538694) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun c!734765 () Bool)

(assert (=> b!4320398 (= c!734765 (and (not (= (_1!26846 lt!1538694) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!26846 lt!1538694) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4320398 e!2687821))

(declare-fun lt!1538691 () Unit!67649)

(assert (=> b!4320398 (= lt!1538691 lt!1538696)))

(declare-fun lt!1538682 () (_ BitVec 32))

(assert (=> b!4320398 (= lt!1538682 (arrayScanForKey!0 (array!17187 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd lt!1537836 #b00000000000000000000000000000001)) (_1!26846 lt!1538694) #b00000000000000000000000000000000))))

(assert (=> b!4320398 false))

(declare-fun b!4320399 () Bool)

(declare-fun Unit!67724 () Unit!67649)

(assert (=> b!4320399 (= e!2687820 Unit!67724)))

(declare-fun b!4320400 () Bool)

(assert (=> b!4320400 (= e!2687821 (ite (= (_1!26846 lt!1538694) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!1538676 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!1538676 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4320401 () Bool)

(assert (=> b!4320401 (= e!2687822 (= (map!10382 lt!1538684) (ListLongMap!1154 Nil!48358)))))

(assert (= (and d!1270336 c!734766) b!4320398))

(assert (= (and d!1270336 (not c!734766)) b!4320399))

(assert (= (and b!4320398 c!734765) b!4320396))

(assert (= (and b!4320398 (not c!734765)) b!4320400))

(assert (= (and d!1270336 res!1770646) b!4320397))

(assert (= (and b!4320397 res!1770647) b!4320401))

(declare-fun b_lambda!127147 () Bool)

(assert (=> (not b_lambda!127147) (not d!1270336)))

(declare-fun t!355358 () Bool)

(declare-fun tb!257359 () Bool)

(assert (=> (and b!4319079 (= (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) t!355358) tb!257359))

(assert (=> d!1270336 t!355358))

(declare-fun result!314864 () Bool)

(declare-fun b_and!340465 () Bool)

(assert (= b_and!340463 (and (=> t!355358 result!314864) b_and!340465)))

(declare-fun m!4914319 () Bool)

(assert (=> b!4320396 m!4914319))

(declare-fun m!4914321 () Bool)

(assert (=> d!1270336 m!4914321))

(declare-fun m!4914323 () Bool)

(assert (=> d!1270336 m!4914323))

(declare-fun m!4914325 () Bool)

(assert (=> d!1270336 m!4914325))

(declare-fun m!4914327 () Bool)

(assert (=> d!1270336 m!4914327))

(declare-fun m!4914329 () Bool)

(assert (=> d!1270336 m!4914329))

(declare-fun m!4914331 () Bool)

(assert (=> d!1270336 m!4914331))

(declare-fun m!4914333 () Bool)

(assert (=> d!1270336 m!4914333))

(declare-fun m!4914335 () Bool)

(assert (=> d!1270336 m!4914335))

(declare-fun m!4914337 () Bool)

(assert (=> d!1270336 m!4914337))

(declare-fun m!4914339 () Bool)

(assert (=> d!1270336 m!4914339))

(assert (=> b!4320398 m!4914339))

(declare-fun m!4914341 () Bool)

(assert (=> b!4320398 m!4914341))

(declare-fun m!4914343 () Bool)

(assert (=> b!4320398 m!4914343))

(declare-fun m!4914345 () Bool)

(assert (=> b!4320398 m!4914345))

(declare-fun m!4914347 () Bool)

(assert (=> b!4320401 m!4914347))

(assert (=> d!1269910 d!1270336))

(declare-fun d!1270338 () Bool)

(declare-fun e!2687828 () Bool)

(assert (=> d!1270338 e!2687828))

(declare-fun res!1770650 () Bool)

(assert (=> d!1270338 (=> (not res!1770650) (not e!2687828))))

(declare-fun lt!1538703 () (_ BitVec 32))

(assert (=> d!1270338 (= res!1770650 (validMask!0 lt!1538703))))

(declare-datatypes ((tuple2!47130 0))(
  ( (tuple2!47131 (_1!26851 Unit!67649) (_2!26851 (_ BitVec 32))) )
))
(declare-fun e!2687827 () tuple2!47130)

(assert (=> d!1270338 (= lt!1538703 (_2!26851 e!2687827))))

(declare-fun c!734769 () Bool)

(declare-fun lt!1538704 () tuple2!47130)

(assert (=> d!1270338 (= c!734769 (and (bvsgt (_2!26851 lt!1538704) #b00000000000000000000000000001000) (bvslt (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (bvlshr (_2!26851 lt!1538704) #b00000000000000000000000000000011))))))

(declare-fun Unit!67725 () Unit!67649)

(declare-fun Unit!67726 () Unit!67649)

(assert (=> d!1270338 (= lt!1538704 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (tuple2!47131 Unit!67725 (bvand (bvadd (bvshl (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!47131 Unit!67726 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> d!1270338 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270338 (= (computeNewMask!12 (v!42703 (underlying!9716 thiss!42308)) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538703)))

(declare-fun b!4320408 () Bool)

(declare-fun computeNewMaskWhile!2 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!47130)

(assert (=> b!4320408 (= e!2687827 (computeNewMaskWhile!2 (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_vacant!4804 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_2!26851 lt!1538704)))))

(declare-fun b!4320409 () Bool)

(declare-fun Unit!67727 () Unit!67649)

(assert (=> b!4320409 (= e!2687827 (tuple2!47131 Unit!67727 (_2!26851 lt!1538704)))))

(declare-fun b!4320410 () Bool)

(assert (=> b!4320410 (= e!2687828 (bvsle (_size!9529 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (bvadd lt!1538703 #b00000000000000000000000000000001)))))

(assert (= (and d!1270338 c!734769) b!4320408))

(assert (= (and d!1270338 (not c!734769)) b!4320409))

(assert (= (and d!1270338 res!1770650) b!4320410))

(declare-fun m!4914349 () Bool)

(assert (=> d!1270338 m!4914349))

(assert (=> d!1270338 m!4913293))

(declare-fun m!4914351 () Bool)

(assert (=> b!4320408 m!4914351))

(assert (=> d!1269910 d!1270338))

(assert (=> d!1269910 d!1269902))

(declare-fun d!1270340 () Bool)

(declare-fun res!1770651 () Bool)

(declare-fun e!2687829 () Bool)

(assert (=> d!1270340 (=> res!1770651 e!2687829)))

(assert (=> d!1270340 (= res!1770651 (and ((_ is Cons!48358) (t!355351 lt!1537671)) (= (_1!26846 (h!53815 (t!355351 lt!1537671))) lt!1537672)))))

(assert (=> d!1270340 (= (containsKey!394 (t!355351 lt!1537671) lt!1537672) e!2687829)))

(declare-fun b!4320411 () Bool)

(declare-fun e!2687830 () Bool)

(assert (=> b!4320411 (= e!2687829 e!2687830)))

(declare-fun res!1770652 () Bool)

(assert (=> b!4320411 (=> (not res!1770652) (not e!2687830))))

(assert (=> b!4320411 (= res!1770652 (and (or (not ((_ is Cons!48358) (t!355351 lt!1537671))) (bvsle (_1!26846 (h!53815 (t!355351 lt!1537671))) lt!1537672)) ((_ is Cons!48358) (t!355351 lt!1537671)) (bvslt (_1!26846 (h!53815 (t!355351 lt!1537671))) lt!1537672)))))

(declare-fun b!4320412 () Bool)

(assert (=> b!4320412 (= e!2687830 (containsKey!394 (t!355351 (t!355351 lt!1537671)) lt!1537672))))

(assert (= (and d!1270340 (not res!1770651)) b!4320411))

(assert (= (and b!4320411 res!1770652) b!4320412))

(declare-fun m!4914353 () Bool)

(assert (=> b!4320412 m!4914353))

(assert (=> b!4319579 d!1270340))

(declare-fun d!1270342 () Bool)

(declare-fun e!2687831 () Bool)

(assert (=> d!1270342 e!2687831))

(declare-fun res!1770653 () Bool)

(assert (=> d!1270342 (=> res!1770653 e!2687831)))

(declare-fun lt!1538706 () Bool)

(assert (=> d!1270342 (= res!1770653 (not lt!1538706))))

(declare-fun lt!1538705 () Bool)

(assert (=> d!1270342 (= lt!1538706 lt!1538705)))

(declare-fun lt!1538708 () Unit!67649)

(declare-fun e!2687832 () Unit!67649)

(assert (=> d!1270342 (= lt!1538708 e!2687832)))

(declare-fun c!734770 () Bool)

(assert (=> d!1270342 (= c!734770 lt!1538705)))

(assert (=> d!1270342 (= lt!1538705 (containsKey!394 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(assert (=> d!1270342 (= (contains!10396 (map!10380 (v!42703 (underlying!9716 thiss!42308))) lt!1537672) lt!1538706)))

(declare-fun b!4320413 () Bool)

(declare-fun lt!1538707 () Unit!67649)

(assert (=> b!4320413 (= e!2687832 lt!1538707)))

(assert (=> b!4320413 (= lt!1538707 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(assert (=> b!4320413 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(declare-fun b!4320414 () Bool)

(declare-fun Unit!67728 () Unit!67649)

(assert (=> b!4320414 (= e!2687832 Unit!67728)))

(declare-fun b!4320415 () Bool)

(assert (=> b!4320415 (= e!2687831 (isDefined!7594 (getValueByKey!293 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672)))))

(assert (= (and d!1270342 c!734770) b!4320413))

(assert (= (and d!1270342 (not c!734770)) b!4320414))

(assert (= (and d!1270342 (not res!1770653)) b!4320415))

(declare-fun m!4914355 () Bool)

(assert (=> d!1270342 m!4914355))

(declare-fun m!4914357 () Bool)

(assert (=> b!4320413 m!4914357))

(assert (=> b!4320413 m!4913005))

(assert (=> b!4320413 m!4913005))

(declare-fun m!4914359 () Bool)

(assert (=> b!4320413 m!4914359))

(assert (=> b!4320415 m!4913005))

(assert (=> b!4320415 m!4913005))

(assert (=> b!4320415 m!4914359))

(assert (=> d!1269986 d!1270342))

(assert (=> d!1269986 d!1269852))

(declare-fun b!4320416 () Bool)

(declare-fun e!2687836 () Unit!67649)

(declare-fun Unit!67729 () Unit!67649)

(assert (=> b!4320416 (= e!2687836 Unit!67729)))

(declare-fun b!4320417 () Bool)

(assert (=> b!4320417 false))

(declare-fun lt!1538715 () Unit!67649)

(declare-fun lt!1538713 () Unit!67649)

(assert (=> b!4320417 (= lt!1538715 lt!1538713)))

(declare-fun lt!1538711 () SeekEntryResult!20)

(declare-fun lt!1538723 () (_ BitVec 32))

(assert (=> b!4320417 (and ((_ is Found!20) lt!1538711) (= (index!1459 lt!1538711) lt!1538723))))

(assert (=> b!4320417 (= lt!1538711 (seekEntry!0 lt!1537672 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4320417 (= lt!1538713 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 lt!1537672 lt!1538723 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538721 () Unit!67649)

(declare-fun lt!1538720 () Unit!67649)

(assert (=> b!4320417 (= lt!1538721 lt!1538720)))

(assert (=> b!4320417 (arrayForallSeekEntryOrOpenFound!0 lt!1538723 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> b!4320417 (= lt!1538720 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 lt!1538723))))

(assert (=> b!4320417 (= lt!1538723 (arrayScanForKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 #b00000000000000000000000000000000))))

(declare-fun lt!1538714 () Unit!67649)

(declare-fun lt!1538719 () Unit!67649)

(assert (=> b!4320417 (= lt!1538714 lt!1538719)))

(declare-fun e!2687837 () Bool)

(assert (=> b!4320417 e!2687837))

(declare-fun c!734774 () Bool)

(assert (=> b!4320417 (= c!734774 (and (not (= lt!1537672 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!1537672 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!4320417 (= lt!1538719 (lemmaKeyInListMapIsInArray!16 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun Unit!67730 () Unit!67649)

(assert (=> b!4320417 (= e!2687836 Unit!67730)))

(declare-fun c!734773 () Bool)

(declare-fun call!299420 () ListLongMap!1153)

(declare-fun call!299419 () Bool)

(declare-fun lt!1538718 () SeekEntryResult!20)

(declare-fun bm!299414 () Bool)

(assert (=> bm!299414 (= call!299419 (contains!10396 call!299420 (ite c!734773 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1538718)) lt!1537672)))))

(declare-fun b!4320419 () Bool)

(declare-fun e!2687835 () Bool)

(assert (=> b!4320419 (= e!2687835 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4320420 () Bool)

(assert (=> b!4320420 (= e!2687837 (ite (= lt!1537672 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!4320421 () Bool)

(assert (=> b!4320421 (= c!734773 ((_ is Found!20) lt!1538718))))

(assert (=> b!4320421 (= lt!1538718 (seekEntry!0 lt!1537672 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun e!2687834 () Bool)

(assert (=> b!4320421 (= e!2687835 e!2687834)))

(declare-fun b!4320422 () Bool)

(assert (=> b!4320422 (= e!2687834 true)))

(declare-fun lt!1538716 () Unit!67649)

(assert (=> b!4320422 (= lt!1538716 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 (index!1459 lt!1538718)))))

(declare-fun call!299421 () Bool)

(assert (=> b!4320422 call!299421))

(declare-fun lt!1538710 () Unit!67649)

(assert (=> b!4320422 (= lt!1538710 lt!1538716)))

(declare-fun lt!1538722 () Unit!67649)

(assert (=> b!4320422 (= lt!1538722 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1538718) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> b!4320422 call!299419))

(declare-fun lt!1538712 () Unit!67649)

(assert (=> b!4320422 (= lt!1538712 lt!1538722)))

(declare-fun b!4320423 () Bool)

(declare-fun e!2687833 () Bool)

(assert (=> b!4320423 (= e!2687833 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4320424 () Bool)

(assert (=> b!4320424 (= e!2687834 false)))

(declare-fun c!734772 () Bool)

(assert (=> b!4320424 (= c!734772 call!299419)))

(declare-fun lt!1538717 () Unit!67649)

(assert (=> b!4320424 (= lt!1538717 e!2687836)))

(declare-fun b!4320425 () Bool)

(assert (=> b!4320425 (= e!2687837 call!299421)))

(declare-fun bm!299415 () Bool)

(assert (=> bm!299415 (= call!299420 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299416 () Bool)

(assert (=> bm!299416 (= call!299421 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 #b00000000000000000000000000000000))))

(declare-fun b!4320418 () Bool)

(assert (=> b!4320418 (= e!2687833 e!2687835)))

(declare-fun c!734771 () Bool)

(assert (=> b!4320418 (= c!734771 (= lt!1537672 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!1270344 () Bool)

(declare-fun lt!1538709 () Bool)

(assert (=> d!1270344 (= lt!1538709 (contains!10396 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))))

(assert (=> d!1270344 (= lt!1538709 e!2687833)))

(declare-fun c!734775 () Bool)

(assert (=> d!1270344 (= c!734775 (= lt!1537672 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!1270344 (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))

(assert (=> d!1270344 (= (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672) lt!1538709)))

(assert (= (and d!1270344 c!734775) b!4320423))

(assert (= (and d!1270344 (not c!734775)) b!4320418))

(assert (= (and b!4320418 c!734771) b!4320419))

(assert (= (and b!4320418 (not c!734771)) b!4320421))

(assert (= (and b!4320421 c!734773) b!4320422))

(assert (= (and b!4320421 (not c!734773)) b!4320424))

(assert (= (and b!4320424 c!734772) b!4320417))

(assert (= (and b!4320424 (not c!734772)) b!4320416))

(assert (= (and b!4320417 c!734774) b!4320425))

(assert (= (and b!4320417 (not c!734774)) b!4320420))

(assert (= (or b!4320422 b!4320425) bm!299416))

(assert (= (or b!4320422 b!4320424) bm!299415))

(assert (= (or b!4320422 b!4320424) bm!299414))

(assert (=> d!1270344 m!4912731))

(assert (=> d!1270344 m!4912731))

(declare-fun m!4914361 () Bool)

(assert (=> d!1270344 m!4914361))

(assert (=> d!1270344 m!4912889))

(assert (=> bm!299415 m!4912957))

(declare-fun m!4914363 () Bool)

(assert (=> bm!299414 m!4914363))

(declare-fun m!4914365 () Bool)

(assert (=> bm!299414 m!4914365))

(declare-fun m!4914367 () Bool)

(assert (=> b!4320422 m!4914367))

(declare-fun m!4914369 () Bool)

(assert (=> b!4320422 m!4914369))

(declare-fun m!4914371 () Bool)

(assert (=> b!4320417 m!4914371))

(declare-fun m!4914373 () Bool)

(assert (=> b!4320417 m!4914373))

(declare-fun m!4914375 () Bool)

(assert (=> b!4320417 m!4914375))

(declare-fun m!4914377 () Bool)

(assert (=> b!4320417 m!4914377))

(declare-fun m!4914379 () Bool)

(assert (=> b!4320417 m!4914379))

(declare-fun m!4914381 () Bool)

(assert (=> b!4320417 m!4914381))

(declare-fun m!4914383 () Bool)

(assert (=> bm!299416 m!4914383))

(assert (=> b!4320421 m!4914371))

(assert (=> d!1269986 d!1270344))

(assert (=> d!1269986 d!1269902))

(declare-fun d!1270346 () Bool)

(assert (=> d!1270346 (= (get!15666 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)) (v!42709 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)))))

(assert (=> b!4319547 d!1270346))

(declare-fun b!4320428 () Bool)

(declare-fun e!2687839 () Option!10294)

(assert (=> b!4320428 (= e!2687839 (getValueByKey!293 (t!355351 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) lt!1537608))))

(declare-fun b!4320426 () Bool)

(declare-fun e!2687838 () Option!10294)

(assert (=> b!4320426 (= e!2687838 (Some!10293 (_2!26846 (h!53815 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))))

(declare-fun b!4320429 () Bool)

(assert (=> b!4320429 (= e!2687839 None!10293)))

(declare-fun d!1270348 () Bool)

(declare-fun c!734776 () Bool)

(assert (=> d!1270348 (= c!734776 (and ((_ is Cons!48358) (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (= (_1!26846 (h!53815 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) lt!1537608)))))

(assert (=> d!1270348 (= (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608) e!2687838)))

(declare-fun b!4320427 () Bool)

(assert (=> b!4320427 (= e!2687838 e!2687839)))

(declare-fun c!734777 () Bool)

(assert (=> b!4320427 (= c!734777 (and ((_ is Cons!48358) (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (not (= (_1!26846 (h!53815 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))) lt!1537608))))))

(assert (= (and d!1270348 c!734776) b!4320426))

(assert (= (and d!1270348 (not c!734776)) b!4320427))

(assert (= (and b!4320427 c!734777) b!4320428))

(assert (= (and b!4320427 (not c!734777)) b!4320429))

(declare-fun m!4914385 () Bool)

(assert (=> b!4320428 m!4914385))

(assert (=> b!4319547 d!1270348))

(assert (=> b!4319547 d!1269992))

(declare-fun b!4320430 () Bool)

(declare-fun e!2687851 () ListLongMap!1153)

(declare-fun call!299428 () ListLongMap!1153)

(assert (=> b!4320430 (= e!2687851 call!299428)))

(declare-fun b!4320431 () Bool)

(declare-fun e!2687844 () Bool)

(declare-fun call!299425 () Bool)

(assert (=> b!4320431 (= e!2687844 (not call!299425))))

(declare-fun bm!299417 () Bool)

(declare-fun call!299426 () ListLongMap!1153)

(declare-fun call!299424 () ListLongMap!1153)

(assert (=> bm!299417 (= call!299426 call!299424)))

(declare-fun b!4320432 () Bool)

(declare-fun e!2687842 () ListLongMap!1153)

(assert (=> b!4320432 (= e!2687842 e!2687851)))

(declare-fun c!734783 () Bool)

(assert (=> b!4320432 (= c!734783 (and (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!299418 () Bool)

(declare-fun call!299427 () ListLongMap!1153)

(declare-fun c!734781 () Bool)

(declare-fun call!299422 () ListLongMap!1153)

(assert (=> bm!299418 (= call!299427 (+!322 (ite c!734781 call!299424 (ite c!734783 call!299426 call!299422)) (ite (or c!734781 c!734783) (tuple2!47123 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))))

(declare-fun b!4320433 () Bool)

(declare-fun e!2687843 () Unit!67649)

(declare-fun Unit!67731 () Unit!67649)

(assert (=> b!4320433 (= e!2687843 Unit!67731)))

(declare-fun bm!299419 () Bool)

(assert (=> bm!299419 (= call!299422 call!299426)))

(declare-fun b!4320435 () Bool)

(declare-fun e!2687847 () ListLongMap!1153)

(assert (=> b!4320435 (= e!2687847 call!299428)))

(declare-fun b!4320436 () Bool)

(declare-fun e!2687848 () Bool)

(assert (=> b!4320436 (= e!2687848 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun c!734779 () Bool)

(declare-fun b!4320437 () Bool)

(assert (=> b!4320437 (= c!734779 (and (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4320437 (= e!2687851 e!2687847)))

(declare-fun b!4320438 () Bool)

(assert (=> b!4320438 (= e!2687842 (+!322 call!299427 (tuple2!47123 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))))

(declare-fun b!4320439 () Bool)

(declare-fun e!2687849 () Bool)

(declare-fun e!2687840 () Bool)

(assert (=> b!4320439 (= e!2687849 e!2687840)))

(declare-fun c!734780 () Bool)

(assert (=> b!4320439 (= c!734780 (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4320440 () Bool)

(declare-fun e!2687852 () Bool)

(declare-fun lt!1538733 () ListLongMap!1153)

(assert (=> b!4320440 (= e!2687852 (= (apply!11126 lt!1538733 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)) (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(assert (=> b!4320440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35711 (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (=> b!4320440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320441 () Bool)

(declare-fun res!1770658 () Bool)

(assert (=> b!4320441 (=> (not res!1770658) (not e!2687849))))

(declare-fun e!2687845 () Bool)

(assert (=> b!4320441 (= res!1770658 e!2687845)))

(declare-fun res!1770659 () Bool)

(assert (=> b!4320441 (=> res!1770659 e!2687845)))

(assert (=> b!4320441 (= res!1770659 (not e!2687848))))

(declare-fun res!1770662 () Bool)

(assert (=> b!4320441 (=> (not res!1770662) (not e!2687848))))

(assert (=> b!4320441 (= res!1770662 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun e!2687850 () Bool)

(declare-fun b!4320442 () Bool)

(assert (=> b!4320442 (= e!2687850 (= (apply!11126 lt!1538733 #b0000000000000000000000000000000000000000000000000000000000000000) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun bm!299420 () Bool)

(declare-fun call!299423 () Bool)

(assert (=> bm!299420 (= call!299423 (contains!10396 lt!1538733 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320443 () Bool)

(assert (=> b!4320443 (= e!2687840 (not call!299423))))

(declare-fun b!4320444 () Bool)

(declare-fun res!1770655 () Bool)

(assert (=> b!4320444 (=> (not res!1770655) (not e!2687849))))

(assert (=> b!4320444 (= res!1770655 e!2687844)))

(declare-fun c!734778 () Bool)

(assert (=> b!4320444 (= c!734778 (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!4320445 () Bool)

(declare-fun e!2687841 () Bool)

(assert (=> b!4320445 (= e!2687841 (= (apply!11126 lt!1538733 #b1000000000000000000000000000000000000000000000000000000000000000) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun bm!299421 () Bool)

(assert (=> bm!299421 (= call!299425 (contains!10396 lt!1538733 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!299422 () Bool)

(assert (=> bm!299422 (= call!299424 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun b!4320446 () Bool)

(declare-fun e!2687846 () Bool)

(assert (=> b!4320446 (= e!2687846 (validKeyInArray!0 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(declare-fun b!4320447 () Bool)

(assert (=> b!4320447 (= e!2687845 e!2687852)))

(declare-fun res!1770656 () Bool)

(assert (=> b!4320447 (=> (not res!1770656) (not e!2687852))))

(assert (=> b!4320447 (= res!1770656 (contains!10396 lt!1538733 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000)))))

(assert (=> b!4320447 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(declare-fun b!4320448 () Bool)

(assert (=> b!4320448 (= e!2687840 e!2687841)))

(declare-fun res!1770657 () Bool)

(assert (=> b!4320448 (= res!1770657 call!299423)))

(assert (=> b!4320448 (=> (not res!1770657) (not e!2687841))))

(declare-fun bm!299423 () Bool)

(assert (=> bm!299423 (= call!299428 call!299427)))

(declare-fun b!4320449 () Bool)

(declare-fun lt!1538730 () Unit!67649)

(assert (=> b!4320449 (= e!2687843 lt!1538730)))

(declare-fun lt!1538740 () ListLongMap!1153)

(assert (=> b!4320449 (= lt!1538740 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538729 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538729 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538739 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538739 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538728 () Unit!67649)

(assert (=> b!4320449 (= lt!1538728 (addStillContains!2 lt!1538740 lt!1538729 (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538739))))

(assert (=> b!4320449 (contains!10396 (+!322 lt!1538740 (tuple2!47123 lt!1538729 (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) lt!1538739)))

(declare-fun lt!1538741 () Unit!67649)

(assert (=> b!4320449 (= lt!1538741 lt!1538728)))

(declare-fun lt!1538734 () ListLongMap!1153)

(assert (=> b!4320449 (= lt!1538734 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538736 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538736 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538726 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538726 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538727 () Unit!67649)

(assert (=> b!4320449 (= lt!1538727 (addApplyDifferent!2 lt!1538734 lt!1538736 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538726))))

(assert (=> b!4320449 (= (apply!11126 (+!322 lt!1538734 (tuple2!47123 lt!1538736 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) lt!1538726) (apply!11126 lt!1538734 lt!1538726))))

(declare-fun lt!1538742 () Unit!67649)

(assert (=> b!4320449 (= lt!1538742 lt!1538727)))

(declare-fun lt!1538738 () ListLongMap!1153)

(assert (=> b!4320449 (= lt!1538738 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538745 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538745 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538732 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538732 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(declare-fun lt!1538724 () Unit!67649)

(assert (=> b!4320449 (= lt!1538724 (addApplyDifferent!2 lt!1538738 lt!1538745 (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538732))))

(assert (=> b!4320449 (= (apply!11126 (+!322 lt!1538738 (tuple2!47123 lt!1538745 (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) lt!1538732) (apply!11126 lt!1538738 lt!1538732))))

(declare-fun lt!1538731 () Unit!67649)

(assert (=> b!4320449 (= lt!1538731 lt!1538724)))

(declare-fun lt!1538725 () ListLongMap!1153)

(assert (=> b!4320449 (= lt!1538725 (getCurrentListMapNoExtraKeys!2 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))))

(declare-fun lt!1538735 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538735 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!1538737 () (_ BitVec 64))

(assert (=> b!4320449 (= lt!1538737 (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000))))

(assert (=> b!4320449 (= lt!1538730 (addApplyDifferent!2 lt!1538725 lt!1538735 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538737))))

(assert (=> b!4320449 (= (apply!11126 (+!322 lt!1538725 (tuple2!47123 lt!1538735 (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))))) lt!1538737) (apply!11126 lt!1538725 lt!1538737))))

(declare-fun b!4320450 () Bool)

(assert (=> b!4320450 (= e!2687844 e!2687850)))

(declare-fun res!1770661 () Bool)

(assert (=> b!4320450 (= res!1770661 call!299425)))

(assert (=> b!4320450 (=> (not res!1770661) (not e!2687850))))

(declare-fun d!1270350 () Bool)

(assert (=> d!1270350 e!2687849))

(declare-fun res!1770654 () Bool)

(assert (=> d!1270350 (=> (not res!1770654) (not e!2687849))))

(assert (=> d!1270350 (= res!1770654 (or (bvsge #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))))

(declare-fun lt!1538743 () ListLongMap!1153)

(assert (=> d!1270350 (= lt!1538733 lt!1538743)))

(declare-fun lt!1538744 () Unit!67649)

(assert (=> d!1270350 (= lt!1538744 e!2687843)))

(declare-fun c!734782 () Bool)

(assert (=> d!1270350 (= c!734782 e!2687846)))

(declare-fun res!1770660 () Bool)

(assert (=> d!1270350 (=> (not res!1770660) (not e!2687846))))

(assert (=> d!1270350 (= res!1770660 (bvslt #b00000000000000000000000000000000 (size!35710 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))))

(assert (=> d!1270350 (= lt!1538743 e!2687842)))

(assert (=> d!1270350 (= c!734781 (and (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!1270350 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))))))

(assert (=> d!1270350 (= (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (_values!5024 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (mask!13343 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) (ite c!734479 (ite c!734484 lt!1537805 lt!1537792) (extraKeys!4992 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite (and c!734479 c!734484) lt!1537611 (zeroValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) (ite c!734479 (ite c!734484 (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622)))) lt!1537611) (minValue!5002 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (_2!26847 lt!1537622))))) lt!1538733)))

(declare-fun b!4320434 () Bool)

(assert (=> b!4320434 (= e!2687847 call!299422)))

(assert (= (and d!1270350 c!734781) b!4320438))

(assert (= (and d!1270350 (not c!734781)) b!4320432))

(assert (= (and b!4320432 c!734783) b!4320430))

(assert (= (and b!4320432 (not c!734783)) b!4320437))

(assert (= (and b!4320437 c!734779) b!4320435))

(assert (= (and b!4320437 (not c!734779)) b!4320434))

(assert (= (or b!4320435 b!4320434) bm!299419))

(assert (= (or b!4320430 bm!299419) bm!299417))

(assert (= (or b!4320430 b!4320435) bm!299423))

(assert (= (or b!4320438 bm!299417) bm!299422))

(assert (= (or b!4320438 bm!299423) bm!299418))

(assert (= (and d!1270350 res!1770660) b!4320446))

(assert (= (and d!1270350 c!734782) b!4320449))

(assert (= (and d!1270350 (not c!734782)) b!4320433))

(assert (= (and d!1270350 res!1770654) b!4320441))

(assert (= (and b!4320441 res!1770662) b!4320436))

(assert (= (and b!4320441 (not res!1770659)) b!4320447))

(assert (= (and b!4320447 res!1770656) b!4320440))

(assert (= (and b!4320441 res!1770658) b!4320444))

(assert (= (and b!4320444 c!734778) b!4320450))

(assert (= (and b!4320444 (not c!734778)) b!4320431))

(assert (= (and b!4320450 res!1770661) b!4320442))

(assert (= (or b!4320450 b!4320431) bm!299421))

(assert (= (and b!4320444 res!1770655) b!4320439))

(assert (= (and b!4320439 c!734780) b!4320448))

(assert (= (and b!4320439 (not c!734780)) b!4320443))

(assert (= (and b!4320448 res!1770657) b!4320445))

(assert (= (or b!4320448 b!4320443) bm!299420))

(declare-fun m!4914387 () Bool)

(assert (=> bm!299420 m!4914387))

(assert (=> d!1270350 m!4913201))

(declare-fun m!4914389 () Bool)

(assert (=> b!4320445 m!4914389))

(assert (=> b!4320440 m!4913535))

(assert (=> b!4320440 m!4913535))

(declare-fun m!4914391 () Bool)

(assert (=> b!4320440 m!4914391))

(declare-fun m!4914393 () Bool)

(assert (=> b!4320440 m!4914393))

(declare-fun m!4914395 () Bool)

(assert (=> b!4320442 m!4914395))

(assert (=> b!4320436 m!4913535))

(assert (=> b!4320436 m!4913535))

(assert (=> b!4320436 m!4914097))

(declare-fun m!4914397 () Bool)

(assert (=> bm!299421 m!4914397))

(declare-fun m!4914399 () Bool)

(assert (=> bm!299422 m!4914399))

(assert (=> b!4320446 m!4913535))

(assert (=> b!4320446 m!4913535))

(assert (=> b!4320446 m!4914097))

(declare-fun m!4914401 () Bool)

(assert (=> b!4320449 m!4914401))

(declare-fun m!4914403 () Bool)

(assert (=> b!4320449 m!4914403))

(declare-fun m!4914405 () Bool)

(assert (=> b!4320449 m!4914405))

(declare-fun m!4914407 () Bool)

(assert (=> b!4320449 m!4914407))

(declare-fun m!4914409 () Bool)

(assert (=> b!4320449 m!4914409))

(declare-fun m!4914411 () Bool)

(assert (=> b!4320449 m!4914411))

(declare-fun m!4914413 () Bool)

(assert (=> b!4320449 m!4914413))

(declare-fun m!4914415 () Bool)

(assert (=> b!4320449 m!4914415))

(declare-fun m!4914417 () Bool)

(assert (=> b!4320449 m!4914417))

(declare-fun m!4914419 () Bool)

(assert (=> b!4320449 m!4914419))

(assert (=> b!4320449 m!4914399))

(declare-fun m!4914421 () Bool)

(assert (=> b!4320449 m!4914421))

(declare-fun m!4914423 () Bool)

(assert (=> b!4320449 m!4914423))

(declare-fun m!4914425 () Bool)

(assert (=> b!4320449 m!4914425))

(assert (=> b!4320449 m!4914405))

(declare-fun m!4914427 () Bool)

(assert (=> b!4320449 m!4914427))

(assert (=> b!4320449 m!4914417))

(declare-fun m!4914429 () Bool)

(assert (=> b!4320449 m!4914429))

(assert (=> b!4320449 m!4914413))

(assert (=> b!4320449 m!4914409))

(assert (=> b!4320449 m!4913535))

(assert (=> b!4320447 m!4913535))

(assert (=> b!4320447 m!4913535))

(declare-fun m!4914431 () Bool)

(assert (=> b!4320447 m!4914431))

(declare-fun m!4914433 () Bool)

(assert (=> bm!299418 m!4914433))

(declare-fun m!4914435 () Bool)

(assert (=> b!4320438 m!4914435))

(assert (=> bm!299202 d!1270350))

(assert (=> d!1269940 d!1269986))

(declare-fun call!299431 () List!48481)

(declare-fun e!2687859 () Bool)

(declare-fun b!4320451 () Bool)

(declare-fun lt!1538750 () SeekEntryResult!20)

(assert (=> b!4320451 (= e!2687859 (= call!299431 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1538750))))))

(declare-fun call!299432 () ListLongMap!1153)

(declare-fun call!299429 () ListLongMap!1153)

(declare-fun bm!299424 () Bool)

(declare-fun c!734787 () Bool)

(declare-fun call!299430 () List!48481)

(assert (=> bm!299424 (= call!299430 (apply!11126 (ite c!734787 call!299429 call!299432) lt!1537672))))

(declare-fun b!4320452 () Bool)

(declare-fun e!2687861 () Bool)

(declare-fun e!2687854 () Bool)

(assert (=> b!4320452 (= e!2687861 e!2687854)))

(declare-fun res!1770663 () Bool)

(assert (=> b!4320452 (= res!1770663 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4320452 (=> (not res!1770663) (not e!2687854))))

(declare-fun b!4320453 () Bool)

(declare-fun lt!1538755 () Unit!67649)

(declare-fun lt!1538753 () Unit!67649)

(assert (=> b!4320453 (= lt!1538755 lt!1538753)))

(assert (=> b!4320453 e!2687861))

(assert (=> b!4320453 (= c!734787 (= lt!1537672 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!4320453 (= lt!1538753 (lemmaKeyInListMapThenSameValueInArray!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 (index!1459 lt!1538750) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538749 () Unit!67649)

(declare-fun lt!1538747 () Unit!67649)

(assert (=> b!4320453 (= lt!1538749 lt!1538747)))

(assert (=> b!4320453 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1538750)))))

(assert (=> b!4320453 (= lt!1538747 (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1538750) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538746 () Unit!67649)

(declare-fun lt!1538754 () Unit!67649)

(assert (=> b!4320453 (= lt!1538746 lt!1538754)))

(assert (=> b!4320453 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 #b00000000000000000000000000000000)))

(assert (=> b!4320453 (= lt!1538754 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 (index!1459 lt!1538750)))))

(declare-fun e!2687856 () List!48481)

(assert (=> b!4320453 (= e!2687856 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1538750)))))

(declare-fun d!1270352 () Bool)

(declare-fun e!2687858 () Bool)

(assert (=> d!1270352 e!2687858))

(declare-fun c!734788 () Bool)

(assert (=> d!1270352 (= c!734788 (contains!10397 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672))))

(declare-fun lt!1538751 () List!48481)

(declare-fun e!2687857 () List!48481)

(assert (=> d!1270352 (= lt!1538751 e!2687857)))

(declare-fun c!734789 () Bool)

(assert (=> d!1270352 (= c!734789 (= lt!1537672 (bvneg lt!1537672)))))

(assert (=> d!1270352 (valid!3754 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))

(assert (=> d!1270352 (= (apply!11127 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))) lt!1537672) lt!1538751)))

(declare-fun b!4320454 () Bool)

(declare-fun e!2687855 () List!48481)

(assert (=> b!4320454 (= e!2687855 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))))

(declare-fun b!4320455 () Bool)

(declare-fun c!734790 () Bool)

(assert (=> b!4320455 (= c!734790 (and (= lt!1537672 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun e!2687862 () List!48481)

(assert (=> b!4320455 (= e!2687862 e!2687855)))

(declare-fun b!4320456 () Bool)

(assert (=> b!4320456 (= e!2687855 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(declare-fun b!4320457 () Bool)

(declare-fun e!2687853 () Bool)

(declare-fun lt!1538748 () SeekEntryResult!20)

(assert (=> b!4320457 (= e!2687853 (inRange!0 (index!1459 lt!1538748) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320458 () Bool)

(assert (=> b!4320458 (= e!2687857 e!2687862)))

(declare-fun c!734785 () Bool)

(assert (=> b!4320458 (= c!734785 (and (= lt!1537672 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!4320459 () Bool)

(assert (=> b!4320459 (= e!2687857 e!2687856)))

(assert (=> b!4320459 (= lt!1538750 (seekEntry!0 lt!1537672 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun lt!1538756 () Unit!67649)

(assert (=> b!4320459 (= lt!1538756 (lemmaSeekEntryGivesInRangeIndex!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))))

(assert (=> b!4320459 (= lt!1538748 (seekEntry!0 lt!1537672 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun res!1770665 () Bool)

(assert (=> b!4320459 (= res!1770665 (not ((_ is Found!20) lt!1538748)))))

(assert (=> b!4320459 (=> res!1770665 e!2687853)))

(assert (=> b!4320459 e!2687853))

(declare-fun lt!1538752 () Unit!67649)

(assert (=> b!4320459 (= lt!1538752 lt!1538756)))

(declare-fun c!734786 () Bool)

(assert (=> b!4320459 (= c!734786 ((_ is Found!20) lt!1538750))))

(declare-fun bm!299425 () Bool)

(assert (=> bm!299425 (= call!299429 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320460 () Bool)

(assert (=> b!4320460 (= e!2687854 (= call!299430 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320461 () Bool)

(declare-fun res!1770666 () Bool)

(declare-fun e!2687863 () Bool)

(assert (=> b!4320461 (=> (not res!1770666) (not e!2687863))))

(assert (=> b!4320461 (= res!1770666 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2687860 () Bool)

(assert (=> b!4320461 (= e!2687860 e!2687863)))

(declare-fun bm!299426 () Bool)

(assert (=> bm!299426 (= call!299432 call!299429)))

(declare-fun b!4320462 () Bool)

(assert (=> b!4320462 (= e!2687858 (= lt!1538751 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672)))))

(declare-fun b!4320463 () Bool)

(assert (=> b!4320463 (= e!2687861 e!2687860)))

(declare-fun c!734784 () Bool)

(assert (=> b!4320463 (= c!734784 (= lt!1537672 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320464 () Bool)

(assert (=> b!4320464 (= e!2687858 (= lt!1538751 (get!15666 (getValueByKey!293 (toList!2537 (map!10382 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537672))))))

(declare-fun b!4320465 () Bool)

(declare-fun res!1770664 () Bool)

(assert (=> b!4320465 (=> (not res!1770664) (not e!2687859))))

(assert (=> b!4320465 (= res!1770664 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672 #b00000000000000000000000000000000))))

(assert (=> b!4320465 (= e!2687860 e!2687859)))

(declare-fun bm!299427 () Bool)

(assert (=> bm!299427 (= call!299431 call!299430)))

(declare-fun b!4320466 () Bool)

(assert (=> b!4320466 (= e!2687856 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))))

(declare-fun b!4320467 () Bool)

(assert (=> b!4320467 (= e!2687863 (= call!299431 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320468 () Bool)

(assert (=> b!4320468 (= e!2687862 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (= (and d!1270352 c!734789) b!4320458))

(assert (= (and d!1270352 (not c!734789)) b!4320459))

(assert (= (and b!4320458 c!734785) b!4320468))

(assert (= (and b!4320458 (not c!734785)) b!4320455))

(assert (= (and b!4320455 c!734790) b!4320456))

(assert (= (and b!4320455 (not c!734790)) b!4320454))

(assert (= (and b!4320459 (not res!1770665)) b!4320457))

(assert (= (and b!4320459 c!734786) b!4320453))

(assert (= (and b!4320459 (not c!734786)) b!4320466))

(assert (= (and b!4320453 c!734787) b!4320452))

(assert (= (and b!4320453 (not c!734787)) b!4320463))

(assert (= (and b!4320452 res!1770663) b!4320460))

(assert (= (and b!4320463 c!734784) b!4320461))

(assert (= (and b!4320463 (not c!734784)) b!4320465))

(assert (= (and b!4320461 res!1770666) b!4320467))

(assert (= (and b!4320465 res!1770664) b!4320451))

(assert (= (or b!4320467 b!4320451) bm!299426))

(assert (= (or b!4320467 b!4320451) bm!299427))

(assert (= (or b!4320460 bm!299426) bm!299425))

(assert (= (or b!4320460 bm!299427) bm!299424))

(assert (= (and d!1270352 c!734788) b!4320464))

(assert (= (and d!1270352 (not c!734788)) b!4320462))

(declare-fun b_lambda!127149 () Bool)

(assert (=> (not b_lambda!127149) (not b!4320454)))

(assert (=> b!4320454 t!355355))

(declare-fun b_and!340467 () Bool)

(assert (= b_and!340465 (and (=> t!355355 result!314862) b_and!340467)))

(declare-fun b_lambda!127151 () Bool)

(assert (=> (not b_lambda!127151) (not b!4320462)))

(assert (=> b!4320462 t!355355))

(declare-fun b_and!340469 () Bool)

(assert (= b_and!340467 (and (=> t!355355 result!314862) b_and!340469)))

(declare-fun b_lambda!127153 () Bool)

(assert (=> (not b_lambda!127153) (not b!4320466)))

(assert (=> b!4320466 t!355355))

(declare-fun b_and!340471 () Bool)

(assert (= b_and!340469 (and (=> t!355355 result!314862) b_and!340471)))

(assert (=> d!1270352 m!4913165))

(assert (=> d!1270352 m!4912889))

(declare-fun m!4914437 () Bool)

(assert (=> bm!299424 m!4914437))

(assert (=> bm!299425 m!4912957))

(declare-fun m!4914439 () Bool)

(assert (=> b!4320451 m!4914439))

(assert (=> b!4320454 m!4913009))

(declare-fun m!4914441 () Bool)

(assert (=> b!4320453 m!4914441))

(assert (=> b!4320453 m!4912957))

(declare-fun m!4914443 () Bool)

(assert (=> b!4320453 m!4914443))

(declare-fun m!4914445 () Bool)

(assert (=> b!4320453 m!4914445))

(declare-fun m!4914447 () Bool)

(assert (=> b!4320453 m!4914447))

(assert (=> b!4320453 m!4914443))

(assert (=> b!4320453 m!4914439))

(declare-fun m!4914449 () Bool)

(assert (=> b!4320453 m!4914449))

(assert (=> b!4320453 m!4912957))

(assert (=> b!4320453 m!4914383))

(assert (=> b!4320462 m!4913009))

(declare-fun m!4914451 () Bool)

(assert (=> b!4320457 m!4914451))

(assert (=> b!4320465 m!4914383))

(assert (=> b!4320459 m!4914371))

(declare-fun m!4914453 () Bool)

(assert (=> b!4320459 m!4914453))

(assert (=> b!4320466 m!4913009))

(assert (=> b!4320464 m!4912731))

(declare-fun m!4914455 () Bool)

(assert (=> b!4320464 m!4914455))

(assert (=> b!4320464 m!4914455))

(declare-fun m!4914457 () Bool)

(assert (=> b!4320464 m!4914457))

(assert (=> d!1269940 d!1270352))

(assert (=> d!1269940 d!1269902))

(declare-fun e!2687865 () Bool)

(declare-fun b!4320469 () Bool)

(assert (=> b!4320469 (= e!2687865 (not (containsKey!393 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) key!2048)))))

(declare-fun b!4320470 () Bool)

(declare-fun e!2687868 () Option!10293)

(assert (=> b!4320470 (= e!2687868 None!10292)))

(declare-fun b!4320471 () Bool)

(assert (=> b!4320471 (= e!2687868 (getPair!159 (t!355350 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) key!2048))))

(declare-fun d!1270354 () Bool)

(declare-fun e!2687867 () Bool)

(assert (=> d!1270354 e!2687867))

(declare-fun res!1770670 () Bool)

(assert (=> d!1270354 (=> res!1770670 e!2687867)))

(assert (=> d!1270354 (= res!1770670 e!2687865)))

(declare-fun res!1770667 () Bool)

(assert (=> d!1270354 (=> (not res!1770667) (not e!2687865))))

(declare-fun lt!1538757 () Option!10293)

(assert (=> d!1270354 (= res!1770667 (isEmpty!28109 lt!1538757))))

(declare-fun e!2687866 () Option!10293)

(assert (=> d!1270354 (= lt!1538757 e!2687866)))

(declare-fun c!734792 () Bool)

(assert (=> d!1270354 (= c!734792 (and ((_ is Cons!48357) (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))) (= (_1!26845 (h!53814 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))) key!2048)))))

(assert (=> d!1270354 (noDuplicateKeys!259 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))

(assert (=> d!1270354 (= (getPair!159 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) key!2048) lt!1538757)))

(declare-fun b!4320472 () Bool)

(declare-fun res!1770668 () Bool)

(declare-fun e!2687864 () Bool)

(assert (=> b!4320472 (=> (not res!1770668) (not e!2687864))))

(assert (=> b!4320472 (= res!1770668 (= (_1!26845 (get!15667 lt!1538757)) key!2048))))

(declare-fun b!4320473 () Bool)

(assert (=> b!4320473 (= e!2687867 e!2687864)))

(declare-fun res!1770669 () Bool)

(assert (=> b!4320473 (=> (not res!1770669) (not e!2687864))))

(assert (=> b!4320473 (= res!1770669 (isDefined!7595 lt!1538757))))

(declare-fun b!4320474 () Bool)

(assert (=> b!4320474 (= e!2687864 (contains!10401 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)) (get!15667 lt!1538757)))))

(declare-fun b!4320475 () Bool)

(assert (=> b!4320475 (= e!2687866 e!2687868)))

(declare-fun c!734791 () Bool)

(assert (=> b!4320475 (= c!734791 ((_ is Cons!48357) (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672))))))

(declare-fun b!4320476 () Bool)

(assert (=> b!4320476 (= e!2687866 (Some!10292 (h!53814 (t!355350 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672)))))))

(assert (= (and d!1270354 c!734792) b!4320476))

(assert (= (and d!1270354 (not c!734792)) b!4320475))

(assert (= (and b!4320475 c!734791) b!4320471))

(assert (= (and b!4320475 (not c!734791)) b!4320470))

(assert (= (and d!1270354 res!1770667) b!4320469))

(assert (= (and d!1270354 (not res!1770670)) b!4320473))

(assert (= (and b!4320473 res!1770669) b!4320472))

(assert (= (and b!4320472 res!1770668) b!4320474))

(declare-fun m!4914459 () Bool)

(assert (=> b!4320471 m!4914459))

(assert (=> b!4320469 m!4913771))

(declare-fun m!4914461 () Bool)

(assert (=> b!4320474 m!4914461))

(assert (=> b!4320474 m!4914461))

(declare-fun m!4914463 () Bool)

(assert (=> b!4320474 m!4914463))

(declare-fun m!4914465 () Bool)

(assert (=> b!4320473 m!4914465))

(assert (=> b!4320472 m!4914461))

(declare-fun m!4914467 () Bool)

(assert (=> d!1270354 m!4914467))

(assert (=> d!1270354 m!4913901))

(assert (=> b!4319490 d!1270354))

(assert (=> bm!299223 d!1270336))

(assert (=> b!4319230 d!1270034))

(declare-fun d!1270356 () Bool)

(assert (=> d!1270356 (isDefined!7594 (getValueByKey!293 (toList!2537 call!299126) lt!1537608))))

(declare-fun lt!1538758 () Unit!67649)

(assert (=> d!1270356 (= lt!1538758 (choose!26370 (toList!2537 call!299126) lt!1537608))))

(declare-fun e!2687869 () Bool)

(assert (=> d!1270356 e!2687869))

(declare-fun res!1770671 () Bool)

(assert (=> d!1270356 (=> (not res!1770671) (not e!2687869))))

(assert (=> d!1270356 (= res!1770671 (isStrictlySorted!20 (toList!2537 call!299126)))))

(assert (=> d!1270356 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 call!299126) lt!1537608) lt!1538758)))

(declare-fun b!4320477 () Bool)

(assert (=> b!4320477 (= e!2687869 (containsKey!394 (toList!2537 call!299126) lt!1537608))))

(assert (= (and d!1270356 res!1770671) b!4320477))

(assert (=> d!1270356 m!4912937))

(assert (=> d!1270356 m!4912937))

(assert (=> d!1270356 m!4912939))

(declare-fun m!4914469 () Bool)

(assert (=> d!1270356 m!4914469))

(declare-fun m!4914471 () Bool)

(assert (=> d!1270356 m!4914471))

(assert (=> b!4320477 m!4912933))

(assert (=> b!4319426 d!1270356))

(assert (=> b!4319426 d!1270144))

(assert (=> b!4319426 d!1270146))

(declare-fun d!1270358 () Bool)

(assert (=> d!1270358 (= (isEmpty!28109 call!299144) (not ((_ is Some!10292) call!299144)))))

(assert (=> d!1269988 d!1270358))

(declare-fun d!1270360 () Bool)

(assert (=> d!1270360 (= (map!10382 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (_values!5024 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (mask!13343 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (extraKeys!4992 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (zeroValue!5002 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) (minValue!5002 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (ite c!734418 (v!42703 (underlying!9716 thiss!42308)) (_2!26847 lt!1537623)))))))))

(declare-fun bs!606376 () Bool)

(assert (= bs!606376 d!1270360))

(declare-fun m!4914473 () Bool)

(assert (=> bs!606376 m!4914473))

(assert (=> d!1269924 d!1270360))

(declare-fun d!1270362 () Bool)

(declare-fun e!2687870 () Bool)

(assert (=> d!1270362 e!2687870))

(declare-fun res!1770672 () Bool)

(assert (=> d!1270362 (=> res!1770672 e!2687870)))

(declare-fun lt!1538760 () Bool)

(assert (=> d!1270362 (= res!1770672 (not lt!1538760))))

(declare-fun lt!1538759 () Bool)

(assert (=> d!1270362 (= lt!1538760 lt!1538759)))

(declare-fun lt!1538762 () Unit!67649)

(declare-fun e!2687871 () Unit!67649)

(assert (=> d!1270362 (= lt!1538762 e!2687871)))

(declare-fun c!734793 () Bool)

(assert (=> d!1270362 (= c!734793 lt!1538759)))

(assert (=> d!1270362 (= lt!1538759 (containsKey!394 (toList!2537 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(assert (=> d!1270362 (= (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))) lt!1538760)))

(declare-fun b!4320478 () Bool)

(declare-fun lt!1538761 () Unit!67649)

(assert (=> b!4320478 (= e!2687871 lt!1538761)))

(assert (=> b!4320478 (= lt!1538761 (lemmaContainsKeyImpliesGetValueByKeyDefined!212 (toList!2537 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(assert (=> b!4320478 (isDefined!7594 (getValueByKey!293 (toList!2537 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(declare-fun b!4320479 () Bool)

(declare-fun Unit!67732 () Unit!67649)

(assert (=> b!4320479 (= e!2687871 Unit!67732)))

(declare-fun b!4320480 () Bool)

(assert (=> b!4320480 (= e!2687870 (isDefined!7594 (getValueByKey!293 (toList!2537 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952)))))))

(assert (= (and d!1270362 c!734793) b!4320478))

(assert (= (and d!1270362 (not c!734793)) b!4320479))

(assert (= (and d!1270362 (not res!1770672)) b!4320480))

(assert (=> d!1270362 m!4913019))

(declare-fun m!4914475 () Bool)

(assert (=> d!1270362 m!4914475))

(assert (=> b!4320478 m!4913019))

(declare-fun m!4914477 () Bool)

(assert (=> b!4320478 m!4914477))

(assert (=> b!4320478 m!4913019))

(declare-fun m!4914479 () Bool)

(assert (=> b!4320478 m!4914479))

(assert (=> b!4320478 m!4914479))

(declare-fun m!4914481 () Bool)

(assert (=> b!4320478 m!4914481))

(assert (=> b!4320480 m!4913019))

(assert (=> b!4320480 m!4914479))

(assert (=> b!4320480 m!4914479))

(assert (=> b!4320480 m!4914481))

(assert (=> b!4319536 d!1270362))

(assert (=> b!4319536 d!1270170))

(declare-fun d!1270364 () Bool)

(assert (=> d!1270364 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000)))

(declare-fun lt!1538763 () Unit!67649)

(assert (=> d!1270364 (= lt!1538763 (choose!683 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952)))))

(assert (=> d!1270364 (bvsge (index!1459 lt!1537952) #b00000000000000000000000000000000)))

(assert (=> d!1270364 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952)) lt!1538763)))

(declare-fun bs!606377 () Bool)

(assert (= bs!606377 d!1270364))

(assert (=> bs!606377 m!4912979))

(declare-fun m!4914483 () Bool)

(assert (=> bs!606377 m!4914483))

(assert (=> b!4319536 d!1270364))

(assert (=> b!4319536 d!1270080))

(declare-fun d!1270366 () Bool)

(declare-fun e!2687872 () Bool)

(assert (=> d!1270366 e!2687872))

(declare-fun res!1770673 () Bool)

(assert (=> d!1270366 (=> (not res!1770673) (not e!2687872))))

(assert (=> d!1270366 (= res!1770673 (and (bvsge (index!1459 lt!1537952) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537952) (size!35710 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun lt!1538764 () Unit!67649)

(assert (=> d!1270366 (= lt!1538764 (choose!26383 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270366 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270366 (= (lemmaValidKeyInArrayIsInListMap!13 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538764)))

(declare-fun b!4320481 () Bool)

(assert (=> b!4320481 (= e!2687872 (contains!10396 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (select (arr!7671 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(assert (= (and d!1270366 res!1770673) b!4320481))

(declare-fun m!4914485 () Bool)

(assert (=> d!1270366 m!4914485))

(assert (=> d!1270366 m!4913293))

(assert (=> b!4320481 m!4912957))

(assert (=> b!4320481 m!4913019))

(assert (=> b!4320481 m!4912957))

(assert (=> b!4320481 m!4913019))

(assert (=> b!4320481 m!4913021))

(assert (=> b!4319536 d!1270366))

(declare-fun e!2687885 () Bool)

(declare-fun b!4320496 () Bool)

(declare-fun call!299444 () List!48481)

(assert (=> b!4320496 (= e!2687885 (= call!299444 (select (arr!7672 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) (index!1459 lt!1537952))))))

(assert (=> b!4320496 (and (bvsge (index!1459 lt!1537952) #b00000000000000000000000000000000) (bvslt (index!1459 lt!1537952) (size!35711 (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))))

(declare-fun d!1270368 () Bool)

(declare-fun e!2687886 () Bool)

(assert (=> d!1270368 e!2687886))

(declare-fun c!734799 () Bool)

(assert (=> d!1270368 (= c!734799 (= lt!1537608 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!1538767 () Unit!67649)

(declare-fun choose!26386 (array!17186 array!17188 (_ BitVec 32) (_ BitVec 32) List!48481 List!48481 (_ BitVec 64) (_ BitVec 32) Int) Unit!67649)

(assert (=> d!1270368 (= lt!1538767 (choose!26386 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(assert (=> d!1270368 (validMask!0 (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))

(assert (=> d!1270368 (= (lemmaKeyInListMapThenSameValueInArray!10 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 (index!1459 lt!1537952) (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))) lt!1538767)))

(declare-fun b!4320497 () Bool)

(declare-fun e!2687884 () Bool)

(assert (=> b!4320497 (= e!2687884 (= call!299444 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299436 () Bool)

(declare-fun call!299442 () ListLongMap!1153)

(declare-fun call!299441 () ListLongMap!1153)

(assert (=> bm!299436 (= call!299442 call!299441)))

(declare-fun b!4320498 () Bool)

(declare-fun res!1770682 () Bool)

(assert (=> b!4320498 (=> (not res!1770682) (not e!2687884))))

(assert (=> b!4320498 (= res!1770682 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!2687887 () Bool)

(assert (=> b!4320498 (= e!2687887 e!2687884)))

(declare-fun bm!299437 () Bool)

(assert (=> bm!299437 (= call!299441 (getCurrentListMap!23 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (_values!5024 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (mask!13343 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000000 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun b!4320499 () Bool)

(declare-fun res!1770681 () Bool)

(assert (=> b!4320499 (=> (not res!1770681) (not e!2687885))))

(assert (=> b!4320499 (= res!1770681 (arrayContainsKey!0 (_keys!5043 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608 #b00000000000000000000000000000000))))

(assert (=> b!4320499 (= e!2687887 e!2687885)))

(declare-fun call!299443 () List!48481)

(declare-fun bm!299438 () Bool)

(assert (=> bm!299438 (= call!299443 (apply!11126 (ite c!734799 call!299441 call!299442) lt!1537608))))

(declare-fun b!4320500 () Bool)

(declare-fun e!2687883 () Bool)

(assert (=> b!4320500 (= e!2687883 (= call!299443 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308)))))))))

(declare-fun bm!299439 () Bool)

(assert (=> bm!299439 (= call!299444 call!299443)))

(declare-fun b!4320501 () Bool)

(assert (=> b!4320501 (= e!2687886 e!2687887)))

(declare-fun c!734798 () Bool)

(assert (=> b!4320501 (= c!734798 (= lt!1537608 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!4320502 () Bool)

(assert (=> b!4320502 (= e!2687886 e!2687883)))

(declare-fun res!1770680 () Bool)

(assert (=> b!4320502 (= res!1770680 (not (= (bvand (extraKeys!4992 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!4320502 (=> (not res!1770680) (not e!2687883))))

(assert (= (and d!1270368 c!734799) b!4320502))

(assert (= (and d!1270368 (not c!734799)) b!4320501))

(assert (= (and b!4320502 res!1770680) b!4320500))

(assert (= (and b!4320501 c!734798) b!4320498))

(assert (= (and b!4320501 (not c!734798)) b!4320499))

(assert (= (and b!4320498 res!1770682) b!4320497))

(assert (= (and b!4320499 res!1770681) b!4320496))

(assert (= (or b!4320497 b!4320496) bm!299436))

(assert (= (or b!4320497 b!4320496) bm!299439))

(assert (= (or b!4320500 bm!299436) bm!299437))

(assert (= (or b!4320500 bm!299439) bm!299438))

(declare-fun m!4914487 () Bool)

(assert (=> d!1270368 m!4914487))

(assert (=> d!1270368 m!4913293))

(declare-fun m!4914489 () Bool)

(assert (=> bm!299438 m!4914489))

(assert (=> bm!299437 m!4912957))

(assert (=> b!4320496 m!4913015))

(assert (=> b!4320499 m!4912979))

(assert (=> b!4319536 d!1270368))

(assert (=> b!4319226 d!1270172))

(declare-fun d!1270370 () Bool)

(assert (=> d!1270370 (containsKey!395 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048)))

(declare-fun lt!1538768 () Unit!67649)

(assert (=> d!1270370 (= lt!1538768 (choose!26375 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048))))

(assert (=> d!1270370 (invariantList!598 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))))))

(assert (=> d!1270370 (= (lemmaInGetKeysListThenContainsKey!52 (toList!2538 (extractMap!365 (toList!2537 lt!1537679))) key!2048) lt!1538768)))

(declare-fun bs!606378 () Bool)

(assert (= bs!606378 d!1270370))

(assert (=> bs!606378 m!4912773))

(declare-fun m!4914491 () Bool)

(assert (=> bs!606378 m!4914491))

(assert (=> bs!606378 m!4913515))

(assert (=> b!4319226 d!1270370))

(declare-fun d!1270372 () Bool)

(assert (=> d!1270372 (= (isEmpty!28109 (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048)) (not ((_ is Some!10292) (getPair!159 (apply!11125 (v!42703 (underlying!9716 thiss!42308)) lt!1537672) key!2048))))))

(assert (=> d!1269936 d!1270372))

(declare-fun d!1270374 () Bool)

(declare-fun res!1770683 () Bool)

(declare-fun e!2687888 () Bool)

(assert (=> d!1270374 (=> res!1770683 e!2687888)))

(assert (=> d!1270374 (= res!1770683 (and ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (= (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)))))

(assert (=> d!1270374 (= (containsKey!394 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))) lt!1537608) e!2687888)))

(declare-fun b!4320503 () Bool)

(declare-fun e!2687889 () Bool)

(assert (=> b!4320503 (= e!2687888 e!2687889)))

(declare-fun res!1770684 () Bool)

(assert (=> b!4320503 (=> (not res!1770684) (not e!2687889))))

(assert (=> b!4320503 (= res!1770684 (and (or (not ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (bvsle (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)) ((_ is Cons!48358) (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) (bvslt (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) lt!1537608)))))

(declare-fun b!4320504 () Bool)

(assert (=> b!4320504 (= e!2687889 (containsKey!394 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608))))

(assert (= (and d!1270374 (not res!1770683)) b!4320503))

(assert (= (and b!4320503 res!1770684) b!4320504))

(declare-fun m!4914493 () Bool)

(assert (=> b!4320504 m!4914493))

(assert (=> d!1269928 d!1270374))

(declare-fun b!4320507 () Bool)

(declare-fun e!2687891 () Option!10294)

(assert (=> b!4320507 (= e!2687891 (getValueByKey!293 (t!355351 lt!1537669) lt!1537672))))

(declare-fun b!4320505 () Bool)

(declare-fun e!2687890 () Option!10294)

(assert (=> b!4320505 (= e!2687890 (Some!10293 (_2!26846 (h!53815 lt!1537669))))))

(declare-fun b!4320508 () Bool)

(assert (=> b!4320508 (= e!2687891 None!10293)))

(declare-fun d!1270376 () Bool)

(declare-fun c!734800 () Bool)

(assert (=> d!1270376 (= c!734800 (and ((_ is Cons!48358) lt!1537669) (= (_1!26846 (h!53815 lt!1537669)) lt!1537672)))))

(assert (=> d!1270376 (= (getValueByKey!293 lt!1537669 lt!1537672) e!2687890)))

(declare-fun b!4320506 () Bool)

(assert (=> b!4320506 (= e!2687890 e!2687891)))

(declare-fun c!734801 () Bool)

(assert (=> b!4320506 (= c!734801 (and ((_ is Cons!48358) lt!1537669) (not (= (_1!26846 (h!53815 lt!1537669)) lt!1537672))))))

(assert (= (and d!1270376 c!734800) b!4320505))

(assert (= (and d!1270376 (not c!734800)) b!4320506))

(assert (= (and b!4320506 c!734801) b!4320507))

(assert (= (and b!4320506 (not c!734801)) b!4320508))

(declare-fun m!4914495 () Bool)

(assert (=> b!4320507 m!4914495))

(assert (=> b!4319573 d!1270376))

(assert (=> b!4319607 d!1270116))

(assert (=> b!4319607 d!1270118))

(declare-fun d!1270378 () Bool)

(declare-fun res!1770685 () Bool)

(declare-fun e!2687892 () Bool)

(assert (=> d!1270378 (=> res!1770685 e!2687892)))

(assert (=> d!1270378 (= res!1770685 (and ((_ is Cons!48358) lt!1537685) (= (_1!26846 (h!53815 lt!1537685)) lt!1537672)))))

(assert (=> d!1270378 (= (containsKey!394 lt!1537685 lt!1537672) e!2687892)))

(declare-fun b!4320509 () Bool)

(declare-fun e!2687893 () Bool)

(assert (=> b!4320509 (= e!2687892 e!2687893)))

(declare-fun res!1770686 () Bool)

(assert (=> b!4320509 (=> (not res!1770686) (not e!2687893))))

(assert (=> b!4320509 (= res!1770686 (and (or (not ((_ is Cons!48358) lt!1537685)) (bvsle (_1!26846 (h!53815 lt!1537685)) lt!1537672)) ((_ is Cons!48358) lt!1537685) (bvslt (_1!26846 (h!53815 lt!1537685)) lt!1537672)))))

(declare-fun b!4320510 () Bool)

(assert (=> b!4320510 (= e!2687893 (containsKey!394 (t!355351 lt!1537685) lt!1537672))))

(assert (= (and d!1270378 (not res!1770685)) b!4320509))

(assert (= (and b!4320509 res!1770686) b!4320510))

(declare-fun m!4914497 () Bool)

(assert (=> b!4320510 m!4914497))

(assert (=> b!4319563 d!1270378))

(declare-fun d!1270380 () Bool)

(declare-fun res!1770687 () Bool)

(declare-fun e!2687894 () Bool)

(assert (=> d!1270380 (=> res!1770687 e!2687894)))

(assert (=> d!1270380 (= res!1770687 (not ((_ is Cons!48357) (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (=> d!1270380 (= (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) e!2687894)))

(declare-fun b!4320511 () Bool)

(declare-fun e!2687895 () Bool)

(assert (=> b!4320511 (= e!2687894 e!2687895)))

(declare-fun res!1770688 () Bool)

(assert (=> b!4320511 (=> (not res!1770688) (not e!2687895))))

(assert (=> b!4320511 (= res!1770688 (not (containsKey!393 (t!355350 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (_1!26845 (h!53814 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))))

(declare-fun b!4320512 () Bool)

(assert (=> b!4320512 (= e!2687895 (noDuplicateKeys!259 (t!355350 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(assert (= (and d!1270380 (not res!1770687)) b!4320511))

(assert (= (and b!4320511 res!1770688) b!4320512))

(declare-fun m!4914499 () Bool)

(assert (=> b!4320511 m!4914499))

(declare-fun m!4914501 () Bool)

(assert (=> b!4320512 m!4914501))

(assert (=> bs!606190 d!1270380))

(declare-fun e!2687896 () Bool)

(declare-fun b!4320513 () Bool)

(declare-fun tp!1326688 () Bool)

(assert (=> b!4320513 (= e!2687896 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326688))))

(assert (=> b!4319630 (= tp!1326686 e!2687896)))

(assert (= (and b!4319630 ((_ is Cons!48357) (t!355350 (t!355350 mapValue!21148)))) b!4320513))

(declare-fun b!4320514 () Bool)

(declare-fun tp!1326689 () Bool)

(declare-fun e!2687897 () Bool)

(assert (=> b!4320514 (= e!2687897 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326689))))

(assert (=> b!4319623 (= tp!1326678 e!2687897)))

(assert (= (and b!4319623 ((_ is Cons!48357) (t!355350 (t!355350 mapDefault!21148)))) b!4320514))

(declare-fun mapIsEmpty!21150 () Bool)

(declare-fun mapRes!21150 () Bool)

(assert (=> mapIsEmpty!21150 mapRes!21150))

(declare-fun tp!1326691 () Bool)

(declare-fun b!4320516 () Bool)

(declare-fun e!2687899 () Bool)

(assert (=> b!4320516 (= e!2687899 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326691))))

(declare-fun condMapEmpty!21150 () Bool)

(declare-fun mapDefault!21150 () List!48481)

(assert (=> mapNonEmpty!21149 (= condMapEmpty!21150 (= mapRest!21149 ((as const (Array (_ BitVec 32) List!48481)) mapDefault!21150)))))

(assert (=> mapNonEmpty!21149 (= tp!1326681 (and e!2687899 mapRes!21150))))

(declare-fun mapNonEmpty!21150 () Bool)

(declare-fun tp!1326690 () Bool)

(declare-fun e!2687898 () Bool)

(assert (=> mapNonEmpty!21150 (= mapRes!21150 (and tp!1326690 e!2687898))))

(declare-fun mapKey!21150 () (_ BitVec 32))

(declare-fun mapValue!21150 () List!48481)

(declare-fun mapRest!21150 () (Array (_ BitVec 32) List!48481))

(assert (=> mapNonEmpty!21150 (= mapRest!21149 (store mapRest!21150 mapKey!21150 mapValue!21150))))

(declare-fun b!4320515 () Bool)

(declare-fun tp!1326692 () Bool)

(assert (=> b!4320515 (= e!2687898 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326692))))

(assert (= (and mapNonEmpty!21149 condMapEmpty!21150) mapIsEmpty!21150))

(assert (= (and mapNonEmpty!21149 (not condMapEmpty!21150)) mapNonEmpty!21150))

(assert (= (and mapNonEmpty!21150 ((_ is Cons!48357) mapValue!21150)) b!4320515))

(assert (= (and mapNonEmpty!21149 ((_ is Cons!48357) mapDefault!21150)) b!4320516))

(declare-fun m!4914503 () Bool)

(assert (=> mapNonEmpty!21150 m!4914503))

(declare-fun b!4320517 () Bool)

(declare-fun tp!1326693 () Bool)

(declare-fun e!2687900 () Bool)

(assert (=> b!4320517 (= e!2687900 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326693))))

(assert (=> b!4319626 (= tp!1326683 e!2687900)))

(assert (= (and b!4319626 ((_ is Cons!48357) (t!355350 mapValue!21149))) b!4320517))

(declare-fun e!2687901 () Bool)

(declare-fun tp!1326694 () Bool)

(declare-fun b!4320518 () Bool)

(assert (=> b!4320518 (= e!2687901 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326694))))

(assert (=> b!4319627 (= tp!1326682 e!2687901)))

(assert (= (and b!4319627 ((_ is Cons!48357) (t!355350 mapDefault!21149))) b!4320518))

(declare-fun b!4320519 () Bool)

(declare-fun tp!1326695 () Bool)

(declare-fun e!2687902 () Bool)

(assert (=> b!4320519 (= e!2687902 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326695))))

(assert (=> tb!257357 (= result!314862 e!2687902)))

(assert (= (and tb!257357 ((_ is Cons!48357) (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537672))) b!4320519))

(declare-fun e!2687903 () Bool)

(declare-fun b!4320520 () Bool)

(declare-fun tp!1326696 () Bool)

(assert (=> b!4320520 (= e!2687903 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326696))))

(assert (=> b!4319625 (= tp!1326680 e!2687903)))

(assert (= (and b!4319625 ((_ is Cons!48357) (t!355350 (t!355350 mapValue!21145)))) b!4320520))

(declare-fun e!2687904 () Bool)

(declare-fun tp!1326697 () Bool)

(declare-fun b!4320521 () Bool)

(assert (=> b!4320521 (= e!2687904 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326697))))

(assert (=> b!4319629 (= tp!1326685 e!2687904)))

(assert (= (and b!4319629 ((_ is Cons!48357) (t!355350 (t!355350 mapDefault!21145)))) b!4320521))

(declare-fun tp!1326698 () Bool)

(declare-fun b!4320522 () Bool)

(declare-fun e!2687905 () Bool)

(assert (=> b!4320522 (= e!2687905 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326698))))

(assert (=> b!4319631 (= tp!1326687 e!2687905)))

(assert (= (and b!4319631 ((_ is Cons!48357) (t!355350 (t!355350 (zeroValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))) b!4320522))

(declare-fun b!4320523 () Bool)

(declare-fun tp!1326699 () Bool)

(declare-fun e!2687906 () Bool)

(assert (=> b!4320523 (= e!2687906 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326699))))

(assert (=> b!4319624 (= tp!1326679 e!2687906)))

(assert (= (and b!4319624 ((_ is Cons!48357) (t!355350 (t!355350 (minValue!5002 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))))))) b!4320523))

(declare-fun e!2687907 () Bool)

(declare-fun b!4320524 () Bool)

(declare-fun tp!1326700 () Bool)

(assert (=> b!4320524 (= e!2687907 (and tp_is_empty!24069 tp_is_empty!24071 tp!1326700))))

(assert (=> b!4319628 (= tp!1326684 e!2687907)))

(assert (= (and b!4319628 ((_ is Cons!48357) (t!355350 (dynLambda!20500 (defaultEntry!5128 (v!42702 (underlying!9715 (v!42703 (underlying!9716 thiss!42308))))) lt!1537608)))) b!4320524))

(declare-fun b_lambda!127155 () Bool)

(assert (= b_lambda!127141 (or d!1269976 b_lambda!127155)))

(declare-fun bs!606379 () Bool)

(declare-fun d!1270382 () Bool)

(assert (= bs!606379 (and d!1270382 d!1269976)))

(assert (=> bs!606379 (= (dynLambda!20499 lambda!133676 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (allKeysSameHash!235 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (_1!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (hashF!6889 thiss!42308)))))

(declare-fun m!4914505 () Bool)

(assert (=> bs!606379 m!4914505))

(assert (=> b!4320333 d!1270382))

(declare-fun b_lambda!127157 () Bool)

(assert (= b_lambda!127131 (or b!4319146 b_lambda!127157)))

(declare-fun bs!606380 () Bool)

(declare-fun d!1270384 () Bool)

(assert (= bs!606380 (and d!1270384 b!4319146)))

(assert (=> bs!606380 (= (dynLambda!20499 lambda!133654 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> bs!606380 m!4913185))

(assert (=> b!4319908 d!1270384))

(declare-fun b_lambda!127159 () Bool)

(assert (= b_lambda!127143 (or d!1269872 b_lambda!127159)))

(declare-fun bs!606381 () Bool)

(declare-fun d!1270386 () Bool)

(assert (= bs!606381 (and d!1270386 d!1269872)))

(assert (=> bs!606381 (= (dynLambda!20501 lambda!133661 (h!53814 (t!355350 lt!1537603))) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (t!355350 lt!1537603)))) lt!1537608))))

(declare-fun m!4914507 () Bool)

(assert (=> bs!606381 m!4914507))

(assert (=> b!4320335 d!1270386))

(declare-fun b_lambda!127161 () Bool)

(assert (= b_lambda!127137 (or d!1269866 b_lambda!127161)))

(declare-fun bs!606382 () Bool)

(declare-fun d!1270388 () Bool)

(assert (= bs!606382 (and d!1270388 d!1269866)))

(assert (=> bs!606382 (= (dynLambda!20499 lambda!133657 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (allKeysSameHash!235 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (_1!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (hashF!6889 thiss!42308)))))

(declare-fun m!4914509 () Bool)

(assert (=> bs!606382 m!4914509))

(assert (=> b!4320122 d!1270388))

(declare-fun b_lambda!127163 () Bool)

(assert (= b_lambda!127123 (or d!1269890 b_lambda!127163)))

(declare-fun bs!606383 () Bool)

(declare-fun d!1270390 () Bool)

(assert (= bs!606383 (and d!1270390 d!1269890)))

(assert (=> bs!606383 (= (dynLambda!20499 lambda!133672 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))))))

(assert (=> bs!606383 m!4913185))

(assert (=> b!4319769 d!1270390))

(declare-fun b_lambda!127165 () Bool)

(assert (= b_lambda!127153 (or (and b!4319079 b_free!128931) b_lambda!127165)))

(declare-fun b_lambda!127167 () Bool)

(assert (= b_lambda!127133 (or b!4319081 b_lambda!127167)))

(declare-fun bs!606384 () Bool)

(declare-fun d!1270392 () Bool)

(assert (= bs!606384 (and d!1270392 b!4319081)))

(assert (=> bs!606384 (= (dynLambda!20499 lambda!133648 (h!53815 (t!355351 (t!355351 (toList!2537 lt!1537605))))) (noDuplicateKeys!259 (_2!26846 (h!53815 (t!355351 (t!355351 (toList!2537 lt!1537605)))))))))

(declare-fun m!4914511 () Bool)

(assert (=> bs!606384 m!4914511))

(assert (=> b!4319925 d!1270392))

(declare-fun b_lambda!127169 () Bool)

(assert (= b_lambda!127151 (or (and b!4319079 b_free!128931) b_lambda!127169)))

(declare-fun b_lambda!127171 () Bool)

(assert (= b_lambda!127147 (or (and b!4319079 b_free!128931) b_lambda!127171)))

(declare-fun b_lambda!127173 () Bool)

(assert (= b_lambda!127119 (or d!1269870 b_lambda!127173)))

(declare-fun bs!606385 () Bool)

(declare-fun d!1270394 () Bool)

(assert (= bs!606385 (and d!1270394 d!1269870)))

(assert (=> bs!606385 (= (dynLambda!20501 lambda!133660 (h!53814 (t!355350 (removePairForKey!258 lt!1537603 key!2048)))) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (t!355350 (removePairForKey!258 lt!1537603 key!2048))))) lt!1537608))))

(declare-fun m!4914513 () Bool)

(assert (=> bs!606385 m!4914513))

(assert (=> b!4319725 d!1270394))

(declare-fun b_lambda!127175 () Bool)

(assert (= b_lambda!127127 (or d!1269848 b_lambda!127175)))

(declare-fun bs!606386 () Bool)

(declare-fun d!1270396 () Bool)

(assert (= bs!606386 (and d!1270396 d!1269848)))

(assert (=> bs!606386 (= (dynLambda!20499 lambda!133651 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (allKeysSameHash!235 (_2!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (_1!26846 (h!53815 (t!355351 (toList!2537 lt!1537605)))) (hashF!6889 thiss!42308)))))

(assert (=> bs!606386 m!4914509))

(assert (=> b!4319898 d!1270396))

(declare-fun b_lambda!127177 () Bool)

(assert (= b_lambda!127139 (or d!1269946 b_lambda!127177)))

(declare-fun bs!606387 () Bool)

(declare-fun d!1270398 () Bool)

(assert (= bs!606387 (and d!1270398 d!1269946)))

(assert (=> bs!606387 (= (dynLambda!20499 lambda!133675 (h!53815 (toList!2537 lt!1537676))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537676)))))))

(declare-fun m!4914515 () Bool)

(assert (=> bs!606387 m!4914515))

(assert (=> b!4320319 d!1270398))

(declare-fun b_lambda!127179 () Bool)

(assert (= b_lambda!127121 (or b!4319188 b_lambda!127179)))

(declare-fun bs!606388 () Bool)

(declare-fun d!1270400 () Bool)

(assert (= bs!606388 (and d!1270400 b!4319188)))

(assert (=> bs!606388 (= (dynLambda!20499 lambda!133665 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308))))))) (noDuplicateKeys!259 (_2!26846 (h!53815 (t!355351 (toList!2537 (map!10380 (v!42703 (underlying!9716 thiss!42308)))))))))))

(declare-fun m!4914517 () Bool)

(assert (=> bs!606388 m!4914517))

(assert (=> b!4319745 d!1270400))

(declare-fun b_lambda!127181 () Bool)

(assert (= b_lambda!127149 (or (and b!4319079 b_free!128931) b_lambda!127181)))

(declare-fun b_lambda!127183 () Bool)

(assert (= b_lambda!127125 (or d!1269886 b_lambda!127183)))

(declare-fun bs!606389 () Bool)

(declare-fun d!1270402 () Bool)

(assert (= bs!606389 (and d!1270402 d!1269886)))

(assert (=> bs!606389 (= (dynLambda!20499 lambda!133671 (h!53815 (toList!2537 lt!1537679))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537679)))))))

(assert (=> bs!606389 m!4913223))

(assert (=> b!4319796 d!1270402))

(declare-fun b_lambda!127185 () Bool)

(assert (= b_lambda!127129 (or b!4319146 b_lambda!127185)))

(assert (=> d!1270150 d!1270004))

(declare-fun b_lambda!127187 () Bool)

(assert (= b_lambda!127145 (or d!1269876 b_lambda!127187)))

(declare-fun bs!606390 () Bool)

(declare-fun d!1270404 () Bool)

(assert (= bs!606390 (and d!1270404 d!1269876)))

(assert (=> bs!606390 (= (dynLambda!20501 lambda!133662 (h!53814 (t!355350 lt!1537611))) (= (hash!1154 (hashF!6889 thiss!42308) (_1!26845 (h!53814 (t!355350 lt!1537611)))) lt!1537608))))

(declare-fun m!4914519 () Bool)

(assert (=> bs!606390 m!4914519))

(assert (=> b!4320337 d!1270404))

(declare-fun b_lambda!127189 () Bool)

(assert (= b_lambda!127135 (or d!1269884 b_lambda!127189)))

(declare-fun bs!606391 () Bool)

(declare-fun d!1270406 () Bool)

(assert (= bs!606391 (and d!1270406 d!1269884)))

(assert (=> bs!606391 (= (dynLambda!20499 lambda!133668 (h!53815 (toList!2537 lt!1537679))) (noDuplicateKeys!259 (_2!26846 (h!53815 (toList!2537 lt!1537679)))))))

(assert (=> bs!606391 m!4913223))

(assert (=> b!4320116 d!1270406))

(check-sat (not b!4320101) (not b!4319897) (not b!4320504) (not bm!299289) (not b_lambda!127067) (not bm!299369) (not b!4319996) (not b!4320281) (not b!4319718) (not b!4320334) (not d!1270040) (not b_next!129635) (not bm!299356) (not bm!299407) (not b!4320315) (not b!4320242) (not b!4320277) (not b!4319877) (not d!1270216) (not d!1270278) (not b!4319689) (not b!4319999) (not b!4320321) (not b_lambda!127175) (not bm!299422) (not b!4320062) (not b!4320370) (not b!4320472) (not bm!299358) (not b!4319827) (not bm!299386) (not b!4319699) (not b!4320259) (not b_lambda!127159) (not d!1270286) (not b!4320286) (not bs!606386) (not b!4319729) (not d!1270304) (not b!4319852) (not d!1270282) (not bm!299268) (not b!4320302) (not d!1270272) (not b!4320517) (not b!4320087) (not bs!606391) (not b!4320428) (not b!4319735) (not d!1270178) (not d!1270156) (not b!4320166) (not b!4320459) (not bm!299409) (not d!1270294) (not b!4320514) (not bm!299267) (not b!4320103) (not b!4320047) (not d!1270126) (not b_lambda!127099) (not b!4320377) (not b_lambda!127181) (not bs!606383) (not b!4320307) (not b!4320001) (not d!1270344) (not b_lambda!127185) (not bm!299406) (not b!4319732) (not d!1270018) (not d!1270316) (not d!1270072) (not b!4319828) (not b!4320326) (not b_lambda!127103) (not b_lambda!127189) (not bm!299416) (not b!4319706) (not d!1270208) (not b!4319754) (not bm!299371) (not b!4319917) (not b!4319768) (not b!4320351) (not d!1270104) (not d!1270028) (not bm!299366) (not b!4319749) (not b!4320436) (not b!4320067) (not b!4319753) (not b!4320210) (not d!1270022) (not d!1270200) (not bm!299349) (not d!1270206) (not b!4320412) (not d!1270338) (not b_lambda!127155) (not b!4319924) (not b_next!129637) (not bm!299400) (not b!4320438) (not d!1270098) (not bm!299261) (not bs!606388) (not b!4320449) (not bm!299396) (not d!1270158) (not b!4320308) (not bs!606385) (not b!4320343) (not d!1270082) (not d!1270196) (not b!4319651) (not bm!299328) (not b!4320283) (not b_lambda!127115) (not b_lambda!127177) (not b!4320478) (not b!4320512) (not d!1270248) (not d!1270130) (not b!4320090) (not b!4320068) (not b!4319747) (not bm!299394) (not b_lambda!127095) (not b!4320066) (not bm!299425) (not b!4320287) (not bm!299377) (not b!4319923) (not b!4319926) (not b!4319858) (not b!4320338) tp_is_empty!24071 (not d!1270120) (not b!4320093) (not bm!299351) (not b!4320083) (not b!4319634) (not bm!299290) (not b!4319734) (not bm!299323) (not bm!299321) (not d!1270144) (not b!4320220) (not b!4320114) (not bm!299288) (not bm!299362) (not b!4320233) (not b!4319748) (not b_lambda!127157) (not bm!299324) (not b!4320098) (not b!4319831) (not b!4319911) (not b!4320267) (not d!1270184) (not b_lambda!127179) (not d!1270086) (not bm!299319) (not b!4319756) (not b!4320249) (not b!4320309) (not bm!299318) (not bm!299401) (not d!1270308) (not b!4320519) (not bm!299326) (not bm!299327) (not b!4320367) (not b!4320360) (not d!1270364) (not d!1270016) (not b!4320523) (not b!4320263) (not b!4320521) (not bm!299403) (not b_lambda!127105) (not b!4320381) (not b!4320072) (not b!4320464) (not b!4319909) (not b!4320111) (not bm!299412) (not b!4320279) (not b!4319633) (not d!1270014) (not d!1270116) (not b!4320061) (not d!1270050) (not b!4319794) (not b!4320422) (not b!4319927) (not d!1270186) (not d!1270036) (not b!4320252) (not b!4319854) (not d!1270298) (not bm!299414) (not b!4319674) (not bm!299270) (not b!4320120) (not bm!299361) (not d!1270194) (not b!4319799) (not b!4320313) (not b!4320107) (not bm!299420) (not b!4319752) (not bm!299404) (not b!4320075) (not d!1270112) (not b!4320125) (not d!1270352) (not bm!299266) (not bm!299368) (not b!4320085) (not bm!299320) (not b!4320268) (not b!4319986) (not b!4320520) (not b!4319826) (not b!4319665) (not d!1270330) (not b!4320477) (not d!1270088) (not bm!299348) (not b!4319724) (not b!4320069) (not b!4319632) (not b!4320050) (not bm!299360) (not bm!299388) (not b!4320513) (not b_lambda!127107) (not b!4320457) (not b!4319907) (not d!1270228) (not b!4319773) (not d!1270362) (not b!4320121) (not d!1270300) (not b!4319673) (not bm!299256) (not d!1270284) (not b!4319640) (not b!4319904) (not b!4319751) (not b!4319717) (not bm!299365) (not bm!299438) (not d!1270336) (not b!4319980) (not d!1270356) (not b!4320524) (not b!4320142) (not b_lambda!127069) (not b_lambda!127161) (not b!4319872) (not b_lambda!127109) (not bm!299399) (not d!1270170) (not d!1270190) (not b_lambda!127111) (not b!4320290) (not bm!299355) (not bm!299257) (not b!4319895) (not b!4320408) (not b!4320510) (not b!4319929) (not bm!299286) (not bs!606384) (not b!4320445) (not d!1270350) (not bm!299330) (not d!1270218) (not d!1270032) (not b!4320471) (not b!4320398) (not d!1270160) (not d!1270034) (not b!4319901) (not d!1270320) (not b!4319750) (not b!4320480) (not d!1270090) (not bm!299398) (not bs!606389) (not b!4320070) (not b!4319727) (not b!4320474) (not b_lambda!127167) (not b!4319672) (not b!4319801) (not b!4320170) (not d!1270366) (not bs!606390) (not d!1270198) (not b_lambda!127097) (not b!4320041) (not b!4320511) (not bm!299384) (not b!4319919) (not b_lambda!127173) (not d!1270048) (not d!1270174) (not bm!299325) (not bs!606380) (not d!1270140) (not b!4319989) (not d!1270240) (not b!4319652) (not b!4320304) (not b!4320135) (not b!4320339) (not b!4320095) (not b!4320108) (not d!1270268) (not b!4320123) (not b!4320216) (not bm!299418) (not b!4320342) (not b!4319913) (not d!1270328) (not d!1270164) (not b!4320401) (not b!4320447) (not b!4320320) (not d!1270292) (not d!1270236) (not bm!299415) (not d!1270030) (not b!4319788) (not d!1270076) (not b_lambda!127113) (not b!4319982) tp_is_empty!24069 (not b_lambda!127183) (not b!4320115) (not b_lambda!127171) (not b!4320038) (not b!4319991) (not b!4319770) (not b!4320323) (not b!4319931) (not b!4320081) (not b!4320415) (not b!4320079) (not b!4320226) (not d!1270238) (not d!1270370) (not b!4319728) (not b!4319891) (not b!4319655) (not b!4320469) (not bm!299437) (not b!4320507) (not b!4319984) (not d!1270038) (not b!4319744) (not b!4320129) (not b_lambda!127169) (not b!4320481) (not bm!299338) (not d!1270134) (not bs!606382) (not d!1270302) (not d!1270094) (not b!4320421) (not b!4319875) (not b!4320270) (not b!4320221) (not b!4320207) (not b!4319742) (not b!4320080) (not d!1270074) (not bm!299393) (not d!1270368) (not b!4320119) (not bm!299387) (not b!4319743) (not b!4320442) (not tb!257359) (not d!1270110) (not d!1270168) (not b!4319916) (not b!4320003) (not bs!606379) (not b_lambda!127165) (not b!4320465) (not bm!299379) (not d!1270020) (not b!4319990) (not b!4320132) (not b!4320045) (not b!4320060) (not b!4320331) (not b!4319797) (not b!4320515) (not d!1270244) (not bm!299424) (not b!4320318) (not d!1270114) (not d!1270232) (not b!4319894) (not b!4320345) (not b!4320048) (not b!4319899) b_and!340471 (not b!4320300) (not bm!299363) (not d!1270062) (not b!4319726) (not d!1270182) (not b!4320100) (not b!4319762) (not b!4320298) (not b!4319883) (not mapNonEmpty!21150) (not bm!299269) (not b!4320311) (not b!4320413) (not b_lambda!127187) (not b!4320336) (not b!4320055) (not bm!299374) (not bm!299380) (not b!4319886) (not d!1270360) (not bm!299329) (not d!1270180) (not b!4320127) (not d!1270274) (not b!4320518) (not d!1270026) (not b_lambda!127163) (not b!4320288) (not b!4319771) (not d!1270070) (not b_lambda!127117) (not d!1270142) (not b!4320417) (not b!4319746) (not d!1270106) (not b!4319892) (not b!4320113) (not b!4320499) (not b!4320117) (not bm!299258) (not bs!606387) (not b!4319658) (not d!1270334) (not bs!606381) (not d!1270318) (not b!4320324) (not b!4319653) (not d!1270332) (not b!4320522) (not d!1270312) (not b!4320130) (not b!4320325) (not b!4320446) b_and!340453 (not bm!299421) (not d!1270210) (not d!1270056) (not b!4320223) (not bm!299381) (not b!4319859) (not b!4319830) (not b!4320473) (not b!4319993) (not d!1270254) (not b!4319915) (not b!4320057) (not b!4319851) (not b!4319800) (not b!4320516) (not b!4320396) (not b_lambda!127101) (not b!4320034) (not bm!299322) (not d!1270342) (not b!4320002) (not b!4320440) (not d!1270354) (not b!4320059) (not d!1270214) (not b!4320039) (not d!1270136) (not b!4320266) (not b!4320141) (not d!1270042) (not d!1270108) (not b!4320453) (not b!4320171) (not d!1270310))
(check-sat b_and!340471 b_and!340453 (not b_next!129637) (not b_next!129635))
