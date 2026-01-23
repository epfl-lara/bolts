; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242444 () Bool)

(assert start!242444)

(declare-fun b!2483680 () Bool)

(declare-fun b_free!72409 () Bool)

(declare-fun b_next!73113 () Bool)

(assert (=> b!2483680 (= b_free!72409 (not b_next!73113))))

(declare-fun tp!795086 () Bool)

(declare-fun b_and!188673 () Bool)

(assert (=> b!2483680 (= tp!795086 b_and!188673)))

(declare-fun b!2483677 () Bool)

(declare-fun b_free!72411 () Bool)

(declare-fun b_next!73115 () Bool)

(assert (=> b!2483677 (= b_free!72411 (not b_next!73115))))

(declare-fun tp!795082 () Bool)

(declare-fun b_and!188675 () Bool)

(assert (=> b!2483677 (= tp!795082 b_and!188675)))

(declare-fun b!2483676 () Bool)

(declare-fun e!1576798 () Bool)

(declare-fun e!1576801 () Bool)

(assert (=> b!2483676 (= e!1576798 e!1576801)))

(declare-fun e!1576803 () Bool)

(declare-fun e!1576802 () Bool)

(assert (=> b!2483677 (= e!1576803 (and e!1576802 tp!795082))))

(declare-fun b!2483678 () Bool)

(declare-fun res!1051281 () Bool)

(declare-fun e!1576796 () Bool)

(assert (=> b!2483678 (=> (not res!1051281) (not e!1576796))))

(declare-datatypes ((Hashable!3298 0))(
  ( (HashableExt!3297 (__x!19070 Int)) )
))
(declare-datatypes ((K!5555 0))(
  ( (K!5556 (val!8919 Int)) )
))
(declare-datatypes ((V!5757 0))(
  ( (V!5758 (val!8920 Int)) )
))
(declare-datatypes ((tuple2!28964 0))(
  ( (tuple2!28965 (_1!17024 K!5555) (_2!17024 V!5757)) )
))
(declare-datatypes ((List!29252 0))(
  ( (Nil!29152) (Cons!29152 (h!34559 tuple2!28964) (t!210921 List!29252)) )
))
(declare-datatypes ((array!12025 0))(
  ( (array!12026 (arr!5366 (Array (_ BitVec 32) List!29252)) (size!22785 (_ BitVec 32))) )
))
(declare-datatypes ((array!12027 0))(
  ( (array!12028 (arr!5367 (Array (_ BitVec 32) (_ BitVec 64))) (size!22786 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6776 0))(
  ( (LongMapFixedSize!6777 (defaultEntry!3762 Int) (mask!8571 (_ BitVec 32)) (extraKeys!3636 (_ BitVec 32)) (zeroValue!3646 List!29252) (minValue!3646 List!29252) (_size!6823 (_ BitVec 32)) (_keys!3685 array!12027) (_values!3668 array!12025) (_vacant!3449 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13369 0))(
  ( (Cell!13370 (v!31532 LongMapFixedSize!6776)) )
))
(declare-datatypes ((MutLongMap!3388 0))(
  ( (LongMap!3388 (underlying!6983 Cell!13369)) (MutLongMapExt!3387 (__x!19071 Int)) )
))
(declare-datatypes ((Cell!13371 0))(
  ( (Cell!13372 (v!31533 MutLongMap!3388)) )
))
(declare-datatypes ((MutableMap!3298 0))(
  ( (MutableMapExt!3297 (__x!19072 Int)) (HashMap!3298 (underlying!6984 Cell!13371) (hashF!5265 Hashable!3298) (_size!6824 (_ BitVec 32)) (defaultValue!3460 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3298)

(declare-fun valid!2594 (MutableMap!3298) Bool)

(assert (=> b!2483678 (= res!1051281 (valid!2594 thiss!42540))))

(declare-fun mapIsEmpty!15648 () Bool)

(declare-fun mapRes!15648 () Bool)

(assert (=> mapIsEmpty!15648 mapRes!15648))

(declare-fun mapNonEmpty!15648 () Bool)

(declare-fun tp!795083 () Bool)

(declare-fun tp!795081 () Bool)

(assert (=> mapNonEmpty!15648 (= mapRes!15648 (and tp!795083 tp!795081))))

(declare-fun mapValue!15648 () List!29252)

(declare-fun mapRest!15648 () (Array (_ BitVec 32) List!29252))

(declare-fun mapKey!15648 () (_ BitVec 32))

(assert (=> mapNonEmpty!15648 (= (arr!5366 (_values!3668 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) (store mapRest!15648 mapKey!15648 mapValue!15648))))

(declare-fun tp!795084 () Bool)

(declare-fun e!1576799 () Bool)

(declare-fun tp!795085 () Bool)

(declare-fun array_inv!3851 (array!12027) Bool)

(declare-fun array_inv!3852 (array!12025) Bool)

(assert (=> b!2483680 (= e!1576801 (and tp!795086 tp!795085 tp!795084 (array_inv!3851 (_keys!3685 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) (array_inv!3852 (_values!3668 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) e!1576799))))

(declare-fun b!2483681 () Bool)

(declare-fun e!1576800 () Bool)

(declare-fun lt!889797 () MutLongMap!3388)

(get-info :version)

(assert (=> b!2483681 (= e!1576802 (and e!1576800 ((_ is LongMap!3388) lt!889797)))))

(assert (=> b!2483681 (= lt!889797 (v!31533 (underlying!6984 thiss!42540)))))

(declare-fun b!2483682 () Bool)

(declare-fun tp!795087 () Bool)

(assert (=> b!2483682 (= e!1576799 (and tp!795087 mapRes!15648))))

(declare-fun condMapEmpty!15648 () Bool)

(declare-fun mapDefault!15648 () List!29252)

(assert (=> b!2483682 (= condMapEmpty!15648 (= (arr!5366 (_values!3668 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29252)) mapDefault!15648)))))

(declare-fun b!2483683 () Bool)

(declare-fun res!1051280 () Bool)

(assert (=> b!2483683 (=> (not res!1051280) (not e!1576796))))

(declare-fun key!2246 () K!5555)

(declare-fun contains!5150 (MutableMap!3298 K!5555) Bool)

(assert (=> b!2483683 (= res!1051280 (contains!5150 thiss!42540 key!2246))))

(declare-fun b!2483684 () Bool)

(assert (=> b!2483684 (= e!1576800 e!1576798)))

(declare-fun b!2483685 () Bool)

(declare-fun e!1576795 () Bool)

(assert (=> b!2483685 (= e!1576796 (not e!1576795))))

(declare-fun res!1051278 () Bool)

(assert (=> b!2483685 (=> res!1051278 e!1576795)))

(declare-datatypes ((tuple2!28966 0))(
  ( (tuple2!28967 (_1!17025 Bool) (_2!17025 MutLongMap!3388)) )
))
(declare-fun lt!889794 () tuple2!28966)

(assert (=> b!2483685 (= res!1051278 (not (_1!17025 lt!889794)))))

(declare-fun lt!889793 () List!29252)

(declare-fun noDuplicateKeys!94 (List!29252) Bool)

(assert (=> b!2483685 (noDuplicateKeys!94 lt!889793)))

(declare-datatypes ((Unit!42707 0))(
  ( (Unit!42708) )
))
(declare-fun lt!889792 () Unit!42707)

(declare-fun lt!889799 () List!29252)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!74 (List!29252 K!5555) Unit!42707)

(assert (=> b!2483685 (= lt!889792 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!74 lt!889799 key!2246))))

(declare-fun lt!889791 () Cell!13371)

(declare-datatypes ((tuple2!28968 0))(
  ( (tuple2!28969 (_1!17026 Unit!42707) (_2!17026 MutableMap!3298)) )
))
(declare-fun lt!889802 () tuple2!28968)

(declare-fun Unit!42709 () Unit!42707)

(declare-fun Unit!42710 () Unit!42707)

(assert (=> b!2483685 (= lt!889802 (ite (_1!17025 lt!889794) (tuple2!28969 Unit!42709 (HashMap!3298 lt!889791 (hashF!5265 thiss!42540) (bvsub (_size!6824 thiss!42540) #b00000000000000000000000000000001) (defaultValue!3460 thiss!42540))) (tuple2!28969 Unit!42710 (HashMap!3298 lt!889791 (hashF!5265 thiss!42540) (_size!6824 thiss!42540) (defaultValue!3460 thiss!42540)))))))

(assert (=> b!2483685 (= lt!889791 (Cell!13372 (_2!17025 lt!889794)))))

(declare-fun lt!889800 () (_ BitVec 64))

(declare-fun update!205 (MutLongMap!3388 (_ BitVec 64) List!29252) tuple2!28966)

(assert (=> b!2483685 (= lt!889794 (update!205 (v!31533 (underlying!6984 thiss!42540)) lt!889800 lt!889793))))

(declare-fun removePairForKey!86 (List!29252 K!5555) List!29252)

(assert (=> b!2483685 (= lt!889793 (removePairForKey!86 lt!889799 key!2246))))

(declare-datatypes ((ListMap!1097 0))(
  ( (ListMap!1098 (toList!1616 List!29252)) )
))
(declare-fun lt!889798 () ListMap!1097)

(declare-fun map!6250 (MutableMap!3298) ListMap!1097)

(assert (=> b!2483685 (= lt!889798 (map!6250 thiss!42540))))

(declare-fun lambda!94175 () Int)

(declare-fun lt!889795 () Unit!42707)

(declare-datatypes ((tuple2!28970 0))(
  ( (tuple2!28971 (_1!17027 (_ BitVec 64)) (_2!17027 List!29252)) )
))
(declare-datatypes ((List!29253 0))(
  ( (Nil!29153) (Cons!29153 (h!34560 tuple2!28970) (t!210922 List!29253)) )
))
(declare-datatypes ((ListLongMap!565 0))(
  ( (ListLongMap!566 (toList!1617 List!29253)) )
))
(declare-fun lt!889801 () ListLongMap!565)

(declare-fun forallContained!875 (List!29253 Int tuple2!28970) Unit!42707)

(assert (=> b!2483685 (= lt!889795 (forallContained!875 (toList!1617 lt!889801) lambda!94175 (tuple2!28971 lt!889800 lt!889799)))))

(declare-fun map!6251 (MutLongMap!3388) ListLongMap!565)

(assert (=> b!2483685 (= lt!889801 (map!6251 (v!31533 (underlying!6984 thiss!42540))))))

(declare-fun apply!6945 (MutLongMap!3388 (_ BitVec 64)) List!29252)

(assert (=> b!2483685 (= lt!889799 (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889800))))

(declare-fun hash!712 (Hashable!3298 K!5555) (_ BitVec 64))

(assert (=> b!2483685 (= lt!889800 (hash!712 (hashF!5265 thiss!42540) key!2246))))

(declare-fun res!1051279 () Bool)

(assert (=> start!242444 (=> (not res!1051279) (not e!1576796))))

(assert (=> start!242444 (= res!1051279 ((_ is HashMap!3298) thiss!42540))))

(assert (=> start!242444 e!1576796))

(assert (=> start!242444 e!1576803))

(declare-fun tp_is_empty!12315 () Bool)

(assert (=> start!242444 tp_is_empty!12315))

(declare-fun b!2483679 () Bool)

(assert (=> b!2483679 (= e!1576795 (noDuplicateKeys!94 lt!889799))))

(declare-fun allKeysSameHash!69 (List!29252 (_ BitVec 64) Hashable!3298) Bool)

(assert (=> b!2483679 (allKeysSameHash!69 lt!889799 lt!889800 (hashF!5265 (_2!17026 lt!889802)))))

(declare-fun lt!889796 () Unit!42707)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!62 (List!29253 (_ BitVec 64) List!29252 Hashable!3298) Unit!42707)

(assert (=> b!2483679 (= lt!889796 (lemmaInLongMapAllKeySameHashThenForTuple!62 (toList!1617 lt!889801) lt!889800 lt!889799 (hashF!5265 (_2!17026 lt!889802))))))

(assert (= (and start!242444 res!1051279) b!2483678))

(assert (= (and b!2483678 res!1051281) b!2483683))

(assert (= (and b!2483683 res!1051280) b!2483685))

(assert (= (and b!2483685 (not res!1051278)) b!2483679))

(assert (= (and b!2483682 condMapEmpty!15648) mapIsEmpty!15648))

(assert (= (and b!2483682 (not condMapEmpty!15648)) mapNonEmpty!15648))

(assert (= b!2483680 b!2483682))

(assert (= b!2483676 b!2483680))

(assert (= b!2483684 b!2483676))

(assert (= (and b!2483681 ((_ is LongMap!3388) (v!31533 (underlying!6984 thiss!42540)))) b!2483684))

(assert (= b!2483677 b!2483681))

(assert (= (and start!242444 ((_ is HashMap!3298) thiss!42540)) b!2483677))

(declare-fun m!2851529 () Bool)

(assert (=> b!2483679 m!2851529))

(declare-fun m!2851531 () Bool)

(assert (=> b!2483679 m!2851531))

(declare-fun m!2851533 () Bool)

(assert (=> b!2483679 m!2851533))

(declare-fun m!2851535 () Bool)

(assert (=> b!2483678 m!2851535))

(declare-fun m!2851537 () Bool)

(assert (=> b!2483685 m!2851537))

(declare-fun m!2851539 () Bool)

(assert (=> b!2483685 m!2851539))

(declare-fun m!2851541 () Bool)

(assert (=> b!2483685 m!2851541))

(declare-fun m!2851543 () Bool)

(assert (=> b!2483685 m!2851543))

(declare-fun m!2851545 () Bool)

(assert (=> b!2483685 m!2851545))

(declare-fun m!2851547 () Bool)

(assert (=> b!2483685 m!2851547))

(declare-fun m!2851549 () Bool)

(assert (=> b!2483685 m!2851549))

(declare-fun m!2851551 () Bool)

(assert (=> b!2483685 m!2851551))

(declare-fun m!2851553 () Bool)

(assert (=> b!2483685 m!2851553))

(declare-fun m!2851555 () Bool)

(assert (=> mapNonEmpty!15648 m!2851555))

(declare-fun m!2851557 () Bool)

(assert (=> b!2483680 m!2851557))

(declare-fun m!2851559 () Bool)

(assert (=> b!2483680 m!2851559))

(declare-fun m!2851561 () Bool)

(assert (=> b!2483683 m!2851561))

(check-sat (not b!2483682) (not b!2483683) (not b!2483680) (not b_next!73115) (not mapNonEmpty!15648) (not b!2483685) b_and!188673 b_and!188675 (not b!2483678) (not b_next!73113) tp_is_empty!12315 (not b!2483679))
(check-sat b_and!188675 b_and!188673 (not b_next!73113) (not b_next!73115))
(get-model)

(declare-fun bs!467642 () Bool)

(declare-fun b!2483715 () Bool)

(assert (= bs!467642 (and b!2483715 b!2483685)))

(declare-fun lambda!94178 () Int)

(assert (=> bs!467642 (= lambda!94178 lambda!94175)))

(declare-fun bm!152222 () Bool)

(declare-fun call!152231 () Bool)

(declare-datatypes ((Option!5762 0))(
  ( (None!5761) (Some!5761 (v!31538 tuple2!28964)) )
))
(declare-fun call!152229 () Option!5762)

(declare-fun isDefined!4584 (Option!5762) Bool)

(assert (=> bm!152222 (= call!152231 (isDefined!4584 call!152229))))

(declare-fun bm!152223 () Bool)

(declare-fun call!152230 () (_ BitVec 64))

(assert (=> bm!152223 (= call!152230 (hash!712 (hashF!5265 thiss!42540) key!2246))))

(declare-fun b!2483708 () Bool)

(assert (=> b!2483708 false))

(declare-fun lt!889859 () Unit!42707)

(declare-fun lt!889849 () Unit!42707)

(assert (=> b!2483708 (= lt!889859 lt!889849)))

(declare-fun lt!889860 () List!29253)

(declare-fun lt!889861 () (_ BitVec 64))

(declare-fun lt!889846 () List!29252)

(declare-fun contains!5151 (List!29253 tuple2!28970) Bool)

(assert (=> b!2483708 (contains!5151 lt!889860 (tuple2!28971 lt!889861 lt!889846))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!80 (List!29253 (_ BitVec 64) List!29252) Unit!42707)

(assert (=> b!2483708 (= lt!889849 (lemmaGetValueByKeyImpliesContainsTuple!80 lt!889860 lt!889861 lt!889846))))

(assert (=> b!2483708 (= lt!889846 (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889861))))

(assert (=> b!2483708 (= lt!889860 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))))))

(declare-fun lt!889862 () Unit!42707)

(declare-fun lt!889851 () Unit!42707)

(assert (=> b!2483708 (= lt!889862 lt!889851)))

(declare-fun lt!889845 () List!29253)

(declare-datatypes ((Option!5763 0))(
  ( (None!5762) (Some!5762 (v!31539 List!29252)) )
))
(declare-fun isDefined!4585 (Option!5763) Bool)

(declare-fun getValueByKey!144 (List!29253 (_ BitVec 64)) Option!5763)

(assert (=> b!2483708 (isDefined!4585 (getValueByKey!144 lt!889845 lt!889861))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!101 (List!29253 (_ BitVec 64)) Unit!42707)

(assert (=> b!2483708 (= lt!889851 (lemmaContainsKeyImpliesGetValueByKeyDefined!101 lt!889845 lt!889861))))

(assert (=> b!2483708 (= lt!889845 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))))))

(declare-fun lt!889858 () Unit!42707)

(declare-fun lt!889844 () Unit!42707)

(assert (=> b!2483708 (= lt!889858 lt!889844)))

(declare-fun lt!889857 () List!29253)

(declare-fun containsKey!146 (List!29253 (_ BitVec 64)) Bool)

(assert (=> b!2483708 (containsKey!146 lt!889857 lt!889861)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!76 (List!29253 (_ BitVec 64)) Unit!42707)

(assert (=> b!2483708 (= lt!889844 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!76 lt!889857 lt!889861))))

(assert (=> b!2483708 (= lt!889857 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))))))

(declare-fun e!1576821 () Unit!42707)

(declare-fun Unit!42711 () Unit!42707)

(assert (=> b!2483708 (= e!1576821 Unit!42711)))

(declare-fun b!2483709 () Bool)

(declare-fun Unit!42712 () Unit!42707)

(assert (=> b!2483709 (= e!1576821 Unit!42712)))

(declare-fun d!713203 () Bool)

(declare-fun lt!889850 () Bool)

(declare-fun contains!5152 (ListMap!1097 K!5555) Bool)

(assert (=> d!713203 (= lt!889850 (contains!5152 (map!6250 thiss!42540) key!2246))))

(declare-fun e!1576819 () Bool)

(assert (=> d!713203 (= lt!889850 e!1576819)))

(declare-fun res!1051289 () Bool)

(assert (=> d!713203 (=> (not res!1051289) (not e!1576819))))

(declare-fun contains!5153 (MutLongMap!3388 (_ BitVec 64)) Bool)

(assert (=> d!713203 (= res!1051289 (contains!5153 (v!31533 (underlying!6984 thiss!42540)) lt!889861))))

(declare-fun lt!889848 () Unit!42707)

(declare-fun e!1576824 () Unit!42707)

(assert (=> d!713203 (= lt!889848 e!1576824)))

(declare-fun c!394834 () Bool)

(declare-fun extractMap!180 (List!29253) ListMap!1097)

(assert (=> d!713203 (= c!394834 (contains!5152 (extractMap!180 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540))))) key!2246))))

(declare-fun lt!889843 () Unit!42707)

(declare-fun e!1576818 () Unit!42707)

(assert (=> d!713203 (= lt!889843 e!1576818)))

(declare-fun c!394833 () Bool)

(assert (=> d!713203 (= c!394833 (contains!5153 (v!31533 (underlying!6984 thiss!42540)) lt!889861))))

(assert (=> d!713203 (= lt!889861 (hash!712 (hashF!5265 thiss!42540) key!2246))))

(assert (=> d!713203 (valid!2594 thiss!42540)))

(assert (=> d!713203 (= (contains!5150 thiss!42540 key!2246) lt!889850)))

(declare-fun b!2483710 () Bool)

(declare-fun e!1576822 () Unit!42707)

(assert (=> b!2483710 (= e!1576824 e!1576822)))

(declare-fun res!1051290 () Bool)

(declare-fun call!152228 () Bool)

(assert (=> b!2483710 (= res!1051290 call!152228)))

(declare-fun e!1576820 () Bool)

(assert (=> b!2483710 (=> (not res!1051290) (not e!1576820))))

(declare-fun c!394832 () Bool)

(assert (=> b!2483710 (= c!394832 e!1576820)))

(declare-fun b!2483711 () Bool)

(declare-fun getPair!75 (List!29252 K!5555) Option!5762)

(assert (=> b!2483711 (= e!1576819 (isDefined!4584 (getPair!75 (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889861) key!2246)))))

(declare-fun b!2483712 () Bool)

(declare-fun Unit!42713 () Unit!42707)

(assert (=> b!2483712 (= e!1576818 Unit!42713)))

(declare-fun b!2483713 () Bool)

(declare-fun Unit!42714 () Unit!42707)

(assert (=> b!2483713 (= e!1576822 Unit!42714)))

(declare-fun b!2483714 () Bool)

(assert (=> b!2483714 false))

(declare-fun lt!889856 () Unit!42707)

(declare-fun lt!889853 () Unit!42707)

(assert (=> b!2483714 (= lt!889856 lt!889853)))

(declare-fun lt!889847 () ListLongMap!565)

(assert (=> b!2483714 (contains!5152 (extractMap!180 (toList!1617 lt!889847)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!75 (ListLongMap!565 K!5555 Hashable!3298) Unit!42707)

(assert (=> b!2483714 (= lt!889853 (lemmaInLongMapThenInGenericMap!75 lt!889847 key!2246 (hashF!5265 thiss!42540)))))

(declare-fun call!152232 () ListLongMap!565)

(assert (=> b!2483714 (= lt!889847 call!152232)))

(declare-fun Unit!42715 () Unit!42707)

(assert (=> b!2483714 (= e!1576822 Unit!42715)))

(declare-fun lt!889855 () ListLongMap!565)

(declare-fun call!152227 () List!29252)

(declare-fun bm!152224 () Bool)

(declare-fun apply!6946 (ListLongMap!565 (_ BitVec 64)) List!29252)

(assert (=> bm!152224 (= call!152227 (apply!6946 (ite c!394834 lt!889855 call!152232) call!152230))))

(declare-fun bm!152225 () Bool)

(assert (=> bm!152225 (= call!152229 (getPair!75 call!152227 key!2246))))

(assert (=> b!2483715 (= e!1576818 (forallContained!875 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))) lambda!94178 (tuple2!28971 lt!889861 (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889861))))))

(declare-fun c!394835 () Bool)

(assert (=> b!2483715 (= c!394835 (not (contains!5151 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))) (tuple2!28971 lt!889861 (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889861)))))))

(declare-fun lt!889852 () Unit!42707)

(assert (=> b!2483715 (= lt!889852 e!1576821)))

(declare-fun bm!152226 () Bool)

(assert (=> bm!152226 (= call!152232 (map!6251 (v!31533 (underlying!6984 thiss!42540))))))

(declare-fun bm!152227 () Bool)

(declare-fun contains!5154 (ListLongMap!565 (_ BitVec 64)) Bool)

(assert (=> bm!152227 (= call!152228 (contains!5154 (ite c!394834 lt!889855 call!152232) call!152230))))

(declare-fun b!2483716 () Bool)

(declare-fun e!1576823 () Bool)

(assert (=> b!2483716 (= e!1576823 call!152231)))

(declare-fun b!2483717 () Bool)

(declare-fun lt!889854 () Unit!42707)

(assert (=> b!2483717 (= e!1576824 lt!889854)))

(assert (=> b!2483717 (= lt!889855 call!152232)))

(declare-fun lemmaInGenericMapThenInLongMap!75 (ListLongMap!565 K!5555 Hashable!3298) Unit!42707)

(assert (=> b!2483717 (= lt!889854 (lemmaInGenericMapThenInLongMap!75 lt!889855 key!2246 (hashF!5265 thiss!42540)))))

(declare-fun res!1051288 () Bool)

(assert (=> b!2483717 (= res!1051288 call!152228)))

(assert (=> b!2483717 (=> (not res!1051288) (not e!1576823))))

(assert (=> b!2483717 e!1576823))

(declare-fun b!2483718 () Bool)

(assert (=> b!2483718 (= e!1576820 call!152231)))

(assert (= (and d!713203 c!394833) b!2483715))

(assert (= (and d!713203 (not c!394833)) b!2483712))

(assert (= (and b!2483715 c!394835) b!2483708))

(assert (= (and b!2483715 (not c!394835)) b!2483709))

(assert (= (and d!713203 c!394834) b!2483717))

(assert (= (and d!713203 (not c!394834)) b!2483710))

(assert (= (and b!2483717 res!1051288) b!2483716))

(assert (= (and b!2483710 res!1051290) b!2483718))

(assert (= (and b!2483710 c!394832) b!2483714))

(assert (= (and b!2483710 (not c!394832)) b!2483713))

(assert (= (or b!2483717 b!2483710 b!2483718 b!2483714) bm!152226))

(assert (= (or b!2483717 b!2483716 b!2483710 b!2483718) bm!152223))

(assert (= (or b!2483717 b!2483710) bm!152227))

(assert (= (or b!2483716 b!2483718) bm!152224))

(assert (= (or b!2483716 b!2483718) bm!152225))

(assert (= (or b!2483716 b!2483718) bm!152222))

(assert (= (and d!713203 res!1051289) b!2483711))

(declare-fun m!2851563 () Bool)

(assert (=> b!2483711 m!2851563))

(assert (=> b!2483711 m!2851563))

(declare-fun m!2851565 () Bool)

(assert (=> b!2483711 m!2851565))

(assert (=> b!2483711 m!2851565))

(declare-fun m!2851567 () Bool)

(assert (=> b!2483711 m!2851567))

(declare-fun m!2851569 () Bool)

(assert (=> bm!152225 m!2851569))

(declare-fun m!2851571 () Bool)

(assert (=> b!2483708 m!2851571))

(declare-fun m!2851573 () Bool)

(assert (=> b!2483708 m!2851573))

(declare-fun m!2851575 () Bool)

(assert (=> b!2483708 m!2851575))

(declare-fun m!2851577 () Bool)

(assert (=> b!2483708 m!2851577))

(assert (=> b!2483708 m!2851539))

(assert (=> b!2483708 m!2851563))

(declare-fun m!2851579 () Bool)

(assert (=> b!2483708 m!2851579))

(assert (=> b!2483708 m!2851575))

(declare-fun m!2851581 () Bool)

(assert (=> b!2483708 m!2851581))

(declare-fun m!2851583 () Bool)

(assert (=> b!2483708 m!2851583))

(assert (=> b!2483715 m!2851539))

(assert (=> b!2483715 m!2851563))

(declare-fun m!2851585 () Bool)

(assert (=> b!2483715 m!2851585))

(declare-fun m!2851587 () Bool)

(assert (=> b!2483715 m!2851587))

(declare-fun m!2851589 () Bool)

(assert (=> bm!152222 m!2851589))

(declare-fun m!2851591 () Bool)

(assert (=> b!2483714 m!2851591))

(assert (=> b!2483714 m!2851591))

(declare-fun m!2851593 () Bool)

(assert (=> b!2483714 m!2851593))

(declare-fun m!2851595 () Bool)

(assert (=> b!2483714 m!2851595))

(assert (=> d!713203 m!2851545))

(assert (=> d!713203 m!2851545))

(declare-fun m!2851597 () Bool)

(assert (=> d!713203 m!2851597))

(declare-fun m!2851599 () Bool)

(assert (=> d!713203 m!2851599))

(assert (=> d!713203 m!2851599))

(declare-fun m!2851601 () Bool)

(assert (=> d!713203 m!2851601))

(declare-fun m!2851603 () Bool)

(assert (=> d!713203 m!2851603))

(assert (=> d!713203 m!2851539))

(assert (=> d!713203 m!2851547))

(assert (=> d!713203 m!2851535))

(declare-fun m!2851605 () Bool)

(assert (=> b!2483717 m!2851605))

(assert (=> bm!152226 m!2851539))

(declare-fun m!2851607 () Bool)

(assert (=> bm!152224 m!2851607))

(assert (=> bm!152223 m!2851547))

(declare-fun m!2851609 () Bool)

(assert (=> bm!152227 m!2851609))

(assert (=> b!2483683 d!713203))

(declare-fun d!713205 () Bool)

(declare-fun res!1051295 () Bool)

(declare-fun e!1576829 () Bool)

(assert (=> d!713205 (=> res!1051295 e!1576829)))

(assert (=> d!713205 (= res!1051295 (not ((_ is Cons!29152) lt!889799)))))

(assert (=> d!713205 (= (noDuplicateKeys!94 lt!889799) e!1576829)))

(declare-fun b!2483723 () Bool)

(declare-fun e!1576830 () Bool)

(assert (=> b!2483723 (= e!1576829 e!1576830)))

(declare-fun res!1051296 () Bool)

(assert (=> b!2483723 (=> (not res!1051296) (not e!1576830))))

(declare-fun containsKey!147 (List!29252 K!5555) Bool)

(assert (=> b!2483723 (= res!1051296 (not (containsKey!147 (t!210921 lt!889799) (_1!17024 (h!34559 lt!889799)))))))

(declare-fun b!2483724 () Bool)

(assert (=> b!2483724 (= e!1576830 (noDuplicateKeys!94 (t!210921 lt!889799)))))

(assert (= (and d!713205 (not res!1051295)) b!2483723))

(assert (= (and b!2483723 res!1051296) b!2483724))

(declare-fun m!2851611 () Bool)

(assert (=> b!2483723 m!2851611))

(declare-fun m!2851613 () Bool)

(assert (=> b!2483724 m!2851613))

(assert (=> b!2483679 d!713205))

(declare-fun d!713207 () Bool)

(assert (=> d!713207 true))

(assert (=> d!713207 true))

(declare-fun lambda!94181 () Int)

(declare-fun forall!5980 (List!29252 Int) Bool)

(assert (=> d!713207 (= (allKeysSameHash!69 lt!889799 lt!889800 (hashF!5265 (_2!17026 lt!889802))) (forall!5980 lt!889799 lambda!94181))))

(declare-fun bs!467643 () Bool)

(assert (= bs!467643 d!713207))

(declare-fun m!2851615 () Bool)

(assert (=> bs!467643 m!2851615))

(assert (=> b!2483679 d!713207))

(declare-fun bs!467644 () Bool)

(declare-fun d!713209 () Bool)

(assert (= bs!467644 (and d!713209 b!2483685)))

(declare-fun lambda!94184 () Int)

(assert (=> bs!467644 (not (= lambda!94184 lambda!94175))))

(declare-fun bs!467645 () Bool)

(assert (= bs!467645 (and d!713209 b!2483715)))

(assert (=> bs!467645 (not (= lambda!94184 lambda!94178))))

(assert (=> d!713209 true))

(assert (=> d!713209 (allKeysSameHash!69 lt!889799 lt!889800 (hashF!5265 (_2!17026 lt!889802)))))

(declare-fun lt!889865 () Unit!42707)

(declare-fun choose!14660 (List!29253 (_ BitVec 64) List!29252 Hashable!3298) Unit!42707)

(assert (=> d!713209 (= lt!889865 (choose!14660 (toList!1617 lt!889801) lt!889800 lt!889799 (hashF!5265 (_2!17026 lt!889802))))))

(declare-fun forall!5981 (List!29253 Int) Bool)

(assert (=> d!713209 (forall!5981 (toList!1617 lt!889801) lambda!94184)))

(assert (=> d!713209 (= (lemmaInLongMapAllKeySameHashThenForTuple!62 (toList!1617 lt!889801) lt!889800 lt!889799 (hashF!5265 (_2!17026 lt!889802))) lt!889865)))

(declare-fun bs!467646 () Bool)

(assert (= bs!467646 d!713209))

(assert (=> bs!467646 m!2851531))

(declare-fun m!2851617 () Bool)

(assert (=> bs!467646 m!2851617))

(declare-fun m!2851619 () Bool)

(assert (=> bs!467646 m!2851619))

(assert (=> b!2483679 d!713209))

(declare-fun d!713211 () Bool)

(assert (=> d!713211 (= (array_inv!3851 (_keys!3685 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) (bvsge (size!22786 (_keys!3685 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483680 d!713211))

(declare-fun d!713213 () Bool)

(assert (=> d!713213 (= (array_inv!3852 (_values!3668 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) (bvsge (size!22785 (_values!3668 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2483680 d!713213))

(declare-fun d!713215 () Bool)

(declare-fun e!1576833 () Bool)

(assert (=> d!713215 e!1576833))

(declare-fun c!394838 () Bool)

(assert (=> d!713215 (= c!394838 (contains!5153 (v!31533 (underlying!6984 thiss!42540)) lt!889800))))

(declare-fun lt!889868 () List!29252)

(declare-fun apply!6947 (LongMapFixedSize!6776 (_ BitVec 64)) List!29252)

(assert (=> d!713215 (= lt!889868 (apply!6947 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))) lt!889800))))

(declare-fun valid!2595 (MutLongMap!3388) Bool)

(assert (=> d!713215 (valid!2595 (v!31533 (underlying!6984 thiss!42540)))))

(assert (=> d!713215 (= (apply!6945 (v!31533 (underlying!6984 thiss!42540)) lt!889800) lt!889868)))

(declare-fun b!2483735 () Bool)

(declare-fun get!8994 (Option!5763) List!29252)

(assert (=> b!2483735 (= e!1576833 (= lt!889868 (get!8994 (getValueByKey!144 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))) lt!889800))))))

(declare-fun b!2483736 () Bool)

(declare-fun dynLambda!12486 (Int (_ BitVec 64)) List!29252)

(assert (=> b!2483736 (= e!1576833 (= lt!889868 (dynLambda!12486 (defaultEntry!3762 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540))))) lt!889800)))))

(assert (=> b!2483736 ((_ is LongMap!3388) (v!31533 (underlying!6984 thiss!42540)))))

(assert (= (and d!713215 c!394838) b!2483735))

(assert (= (and d!713215 (not c!394838)) b!2483736))

(declare-fun b_lambda!76207 () Bool)

(assert (=> (not b_lambda!76207) (not b!2483736)))

(declare-fun t!210924 () Bool)

(declare-fun tb!140387 () Bool)

(assert (=> (and b!2483680 (= (defaultEntry!3762 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540))))) (defaultEntry!3762 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540)))))) t!210924) tb!140387))

(assert (=> b!2483736 t!210924))

(declare-fun result!173356 () Bool)

(declare-fun b_and!188677 () Bool)

(assert (= b_and!188673 (and (=> t!210924 result!173356) b_and!188677)))

(declare-fun m!2851621 () Bool)

(assert (=> d!713215 m!2851621))

(declare-fun m!2851623 () Bool)

(assert (=> d!713215 m!2851623))

(declare-fun m!2851625 () Bool)

(assert (=> d!713215 m!2851625))

(assert (=> b!2483735 m!2851539))

(declare-fun m!2851627 () Bool)

(assert (=> b!2483735 m!2851627))

(assert (=> b!2483735 m!2851627))

(declare-fun m!2851629 () Bool)

(assert (=> b!2483735 m!2851629))

(declare-fun m!2851631 () Bool)

(assert (=> b!2483736 m!2851631))

(assert (=> b!2483685 d!713215))

(declare-fun d!713217 () Bool)

(declare-fun hash!714 (Hashable!3298 K!5555) (_ BitVec 64))

(assert (=> d!713217 (= (hash!712 (hashF!5265 thiss!42540) key!2246) (hash!714 (hashF!5265 thiss!42540) key!2246))))

(declare-fun bs!467647 () Bool)

(assert (= bs!467647 d!713217))

(declare-fun m!2851633 () Bool)

(assert (=> bs!467647 m!2851633))

(assert (=> b!2483685 d!713217))

(declare-fun b!2483746 () Bool)

(declare-fun e!1576839 () List!29252)

(declare-fun e!1576838 () List!29252)

(assert (=> b!2483746 (= e!1576839 e!1576838)))

(declare-fun c!394843 () Bool)

(assert (=> b!2483746 (= c!394843 ((_ is Cons!29152) lt!889799))))

(declare-fun b!2483748 () Bool)

(assert (=> b!2483748 (= e!1576838 Nil!29152)))

(declare-fun b!2483745 () Bool)

(assert (=> b!2483745 (= e!1576839 (t!210921 lt!889799))))

(declare-fun d!713219 () Bool)

(declare-fun lt!889871 () List!29252)

(assert (=> d!713219 (not (containsKey!147 lt!889871 key!2246))))

(assert (=> d!713219 (= lt!889871 e!1576839)))

(declare-fun c!394844 () Bool)

(assert (=> d!713219 (= c!394844 (and ((_ is Cons!29152) lt!889799) (= (_1!17024 (h!34559 lt!889799)) key!2246)))))

(assert (=> d!713219 (noDuplicateKeys!94 lt!889799)))

(assert (=> d!713219 (= (removePairForKey!86 lt!889799 key!2246) lt!889871)))

(declare-fun b!2483747 () Bool)

(assert (=> b!2483747 (= e!1576838 (Cons!29152 (h!34559 lt!889799) (removePairForKey!86 (t!210921 lt!889799) key!2246)))))

(assert (= (and d!713219 c!394844) b!2483745))

(assert (= (and d!713219 (not c!394844)) b!2483746))

(assert (= (and b!2483746 c!394843) b!2483747))

(assert (= (and b!2483746 (not c!394843)) b!2483748))

(declare-fun m!2851635 () Bool)

(assert (=> d!713219 m!2851635))

(assert (=> d!713219 m!2851529))

(declare-fun m!2851637 () Bool)

(assert (=> b!2483747 m!2851637))

(assert (=> b!2483685 d!713219))

(declare-fun d!713221 () Bool)

(declare-fun res!1051297 () Bool)

(declare-fun e!1576840 () Bool)

(assert (=> d!713221 (=> res!1051297 e!1576840)))

(assert (=> d!713221 (= res!1051297 (not ((_ is Cons!29152) lt!889793)))))

(assert (=> d!713221 (= (noDuplicateKeys!94 lt!889793) e!1576840)))

(declare-fun b!2483749 () Bool)

(declare-fun e!1576841 () Bool)

(assert (=> b!2483749 (= e!1576840 e!1576841)))

(declare-fun res!1051298 () Bool)

(assert (=> b!2483749 (=> (not res!1051298) (not e!1576841))))

(assert (=> b!2483749 (= res!1051298 (not (containsKey!147 (t!210921 lt!889793) (_1!17024 (h!34559 lt!889793)))))))

(declare-fun b!2483750 () Bool)

(assert (=> b!2483750 (= e!1576841 (noDuplicateKeys!94 (t!210921 lt!889793)))))

(assert (= (and d!713221 (not res!1051297)) b!2483749))

(assert (= (and b!2483749 res!1051298) b!2483750))

(declare-fun m!2851639 () Bool)

(assert (=> b!2483749 m!2851639))

(declare-fun m!2851641 () Bool)

(assert (=> b!2483750 m!2851641))

(assert (=> b!2483685 d!713221))

(declare-fun d!713223 () Bool)

(declare-fun map!6252 (LongMapFixedSize!6776) ListLongMap!565)

(assert (=> d!713223 (= (map!6251 (v!31533 (underlying!6984 thiss!42540))) (map!6252 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540))))))))

(declare-fun bs!467648 () Bool)

(assert (= bs!467648 d!713223))

(declare-fun m!2851643 () Bool)

(assert (=> bs!467648 m!2851643))

(assert (=> b!2483685 d!713223))

(declare-fun d!713225 () Bool)

(declare-fun dynLambda!12487 (Int tuple2!28970) Bool)

(assert (=> d!713225 (dynLambda!12487 lambda!94175 (tuple2!28971 lt!889800 lt!889799))))

(declare-fun lt!889874 () Unit!42707)

(declare-fun choose!14661 (List!29253 Int tuple2!28970) Unit!42707)

(assert (=> d!713225 (= lt!889874 (choose!14661 (toList!1617 lt!889801) lambda!94175 (tuple2!28971 lt!889800 lt!889799)))))

(declare-fun e!1576844 () Bool)

(assert (=> d!713225 e!1576844))

(declare-fun res!1051301 () Bool)

(assert (=> d!713225 (=> (not res!1051301) (not e!1576844))))

(assert (=> d!713225 (= res!1051301 (forall!5981 (toList!1617 lt!889801) lambda!94175))))

(assert (=> d!713225 (= (forallContained!875 (toList!1617 lt!889801) lambda!94175 (tuple2!28971 lt!889800 lt!889799)) lt!889874)))

(declare-fun b!2483753 () Bool)

(assert (=> b!2483753 (= e!1576844 (contains!5151 (toList!1617 lt!889801) (tuple2!28971 lt!889800 lt!889799)))))

(assert (= (and d!713225 res!1051301) b!2483753))

(declare-fun b_lambda!76209 () Bool)

(assert (=> (not b_lambda!76209) (not d!713225)))

(declare-fun m!2851645 () Bool)

(assert (=> d!713225 m!2851645))

(declare-fun m!2851647 () Bool)

(assert (=> d!713225 m!2851647))

(declare-fun m!2851649 () Bool)

(assert (=> d!713225 m!2851649))

(declare-fun m!2851651 () Bool)

(assert (=> b!2483753 m!2851651))

(assert (=> b!2483685 d!713225))

(declare-fun bm!152232 () Bool)

(declare-fun call!152238 () ListLongMap!565)

(declare-fun lt!889884 () tuple2!28966)

(assert (=> bm!152232 (= call!152238 (map!6251 (_2!17025 lt!889884)))))

(declare-fun b!2483772 () Bool)

(declare-fun e!1576858 () Bool)

(declare-fun e!1576856 () Bool)

(assert (=> b!2483772 (= e!1576858 e!1576856)))

(declare-fun res!1051308 () Bool)

(assert (=> b!2483772 (= res!1051308 (contains!5154 call!152238 lt!889800))))

(assert (=> b!2483772 (=> (not res!1051308) (not e!1576856))))

(declare-fun b!2483773 () Bool)

(declare-fun res!1051310 () Bool)

(declare-fun e!1576857 () Bool)

(assert (=> b!2483773 (=> (not res!1051310) (not e!1576857))))

(assert (=> b!2483773 (= res!1051310 (valid!2595 (_2!17025 lt!889884)))))

(declare-fun b!2483774 () Bool)

(declare-fun call!152237 () ListLongMap!565)

(assert (=> b!2483774 (= e!1576858 (= call!152238 call!152237))))

(declare-fun b!2483775 () Bool)

(declare-fun e!1576859 () tuple2!28966)

(declare-datatypes ((tuple2!28972 0))(
  ( (tuple2!28973 (_1!17028 Bool) (_2!17028 LongMapFixedSize!6776)) )
))
(declare-fun lt!889883 () tuple2!28972)

(assert (=> b!2483775 (= e!1576859 (tuple2!28967 (_1!17028 lt!889883) (LongMap!3388 (Cell!13370 (_2!17028 lt!889883)))))))

(declare-fun lt!889885 () tuple2!28966)

(declare-fun update!206 (LongMapFixedSize!6776 (_ BitVec 64) List!29252) tuple2!28972)

(assert (=> b!2483775 (= lt!889883 (update!206 (v!31532 (underlying!6983 (_2!17025 lt!889885))) lt!889800 lt!889793))))

(declare-fun b!2483776 () Bool)

(assert (=> b!2483776 (= e!1576857 e!1576858)))

(declare-fun c!394851 () Bool)

(assert (=> b!2483776 (= c!394851 (_1!17025 lt!889884))))

(declare-fun b!2483777 () Bool)

(assert (=> b!2483777 (= e!1576859 (tuple2!28967 false (_2!17025 lt!889885)))))

(declare-fun bm!152233 () Bool)

(assert (=> bm!152233 (= call!152237 (map!6251 (v!31533 (underlying!6984 thiss!42540))))))

(declare-fun b!2483779 () Bool)

(declare-fun e!1576855 () tuple2!28966)

(declare-fun lt!889886 () tuple2!28966)

(assert (=> b!2483779 (= e!1576855 (tuple2!28967 (_1!17025 lt!889886) (_2!17025 lt!889886)))))

(declare-fun repack!23 (MutLongMap!3388) tuple2!28966)

(assert (=> b!2483779 (= lt!889886 (repack!23 (v!31533 (underlying!6984 thiss!42540))))))

(declare-fun b!2483780 () Bool)

(assert (=> b!2483780 (= e!1576855 (tuple2!28967 true (v!31533 (underlying!6984 thiss!42540))))))

(declare-fun d!713227 () Bool)

(assert (=> d!713227 e!1576857))

(declare-fun res!1051309 () Bool)

(assert (=> d!713227 (=> (not res!1051309) (not e!1576857))))

(assert (=> d!713227 (= res!1051309 ((_ is LongMap!3388) (_2!17025 lt!889884)))))

(assert (=> d!713227 (= lt!889884 e!1576859)))

(declare-fun c!394853 () Bool)

(assert (=> d!713227 (= c!394853 (_1!17025 lt!889885))))

(assert (=> d!713227 (= lt!889885 e!1576855)))

(declare-fun c!394852 () Bool)

(declare-fun imbalanced!19 (MutLongMap!3388) Bool)

(assert (=> d!713227 (= c!394852 (imbalanced!19 (v!31533 (underlying!6984 thiss!42540))))))

(assert (=> d!713227 (valid!2595 (v!31533 (underlying!6984 thiss!42540)))))

(assert (=> d!713227 (= (update!205 (v!31533 (underlying!6984 thiss!42540)) lt!889800 lt!889793) lt!889884)))

(declare-fun b!2483778 () Bool)

(declare-fun +!89 (ListLongMap!565 tuple2!28970) ListLongMap!565)

(assert (=> b!2483778 (= e!1576856 (= call!152238 (+!89 call!152237 (tuple2!28971 lt!889800 lt!889793))))))

(assert (= (and d!713227 c!394852) b!2483779))

(assert (= (and d!713227 (not c!394852)) b!2483780))

(assert (= (and d!713227 c!394853) b!2483775))

(assert (= (and d!713227 (not c!394853)) b!2483777))

(assert (= (and d!713227 res!1051309) b!2483773))

(assert (= (and b!2483773 res!1051310) b!2483776))

(assert (= (and b!2483776 c!394851) b!2483772))

(assert (= (and b!2483776 (not c!394851)) b!2483774))

(assert (= (and b!2483772 res!1051308) b!2483778))

(assert (= (or b!2483772 b!2483778 b!2483774) bm!152232))

(assert (= (or b!2483778 b!2483774) bm!152233))

(declare-fun m!2851653 () Bool)

(assert (=> b!2483775 m!2851653))

(declare-fun m!2851655 () Bool)

(assert (=> bm!152232 m!2851655))

(assert (=> bm!152233 m!2851539))

(declare-fun m!2851657 () Bool)

(assert (=> b!2483778 m!2851657))

(declare-fun m!2851659 () Bool)

(assert (=> b!2483779 m!2851659))

(declare-fun m!2851661 () Bool)

(assert (=> b!2483773 m!2851661))

(declare-fun m!2851663 () Bool)

(assert (=> d!713227 m!2851663))

(assert (=> d!713227 m!2851625))

(declare-fun m!2851665 () Bool)

(assert (=> b!2483772 m!2851665))

(assert (=> b!2483685 d!713227))

(declare-fun d!713229 () Bool)

(assert (=> d!713229 (noDuplicateKeys!94 (removePairForKey!86 lt!889799 key!2246))))

(declare-fun lt!889889 () Unit!42707)

(declare-fun choose!14662 (List!29252 K!5555) Unit!42707)

(assert (=> d!713229 (= lt!889889 (choose!14662 lt!889799 key!2246))))

(assert (=> d!713229 (noDuplicateKeys!94 lt!889799)))

(assert (=> d!713229 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!74 lt!889799 key!2246) lt!889889)))

(declare-fun bs!467649 () Bool)

(assert (= bs!467649 d!713229))

(assert (=> bs!467649 m!2851543))

(assert (=> bs!467649 m!2851543))

(declare-fun m!2851667 () Bool)

(assert (=> bs!467649 m!2851667))

(declare-fun m!2851669 () Bool)

(assert (=> bs!467649 m!2851669))

(assert (=> bs!467649 m!2851529))

(assert (=> b!2483685 d!713229))

(declare-fun d!713231 () Bool)

(declare-fun lt!889892 () ListMap!1097)

(declare-fun invariantList!414 (List!29252) Bool)

(assert (=> d!713231 (invariantList!414 (toList!1616 lt!889892))))

(assert (=> d!713231 (= lt!889892 (extractMap!180 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540))))))))

(assert (=> d!713231 (valid!2594 thiss!42540)))

(assert (=> d!713231 (= (map!6250 thiss!42540) lt!889892)))

(declare-fun bs!467650 () Bool)

(assert (= bs!467650 d!713231))

(declare-fun m!2851671 () Bool)

(assert (=> bs!467650 m!2851671))

(assert (=> bs!467650 m!2851539))

(assert (=> bs!467650 m!2851599))

(assert (=> bs!467650 m!2851535))

(assert (=> b!2483685 d!713231))

(declare-fun bs!467651 () Bool)

(declare-fun b!2483785 () Bool)

(assert (= bs!467651 (and b!2483785 b!2483685)))

(declare-fun lambda!94187 () Int)

(assert (=> bs!467651 (= lambda!94187 lambda!94175)))

(declare-fun bs!467652 () Bool)

(assert (= bs!467652 (and b!2483785 b!2483715)))

(assert (=> bs!467652 (= lambda!94187 lambda!94178)))

(declare-fun bs!467653 () Bool)

(assert (= bs!467653 (and b!2483785 d!713209)))

(assert (=> bs!467653 (not (= lambda!94187 lambda!94184))))

(declare-fun d!713233 () Bool)

(declare-fun res!1051315 () Bool)

(declare-fun e!1576862 () Bool)

(assert (=> d!713233 (=> (not res!1051315) (not e!1576862))))

(assert (=> d!713233 (= res!1051315 (valid!2595 (v!31533 (underlying!6984 thiss!42540))))))

(assert (=> d!713233 (= (valid!2594 thiss!42540) e!1576862)))

(declare-fun res!1051316 () Bool)

(assert (=> b!2483785 (=> (not res!1051316) (not e!1576862))))

(assert (=> b!2483785 (= res!1051316 (forall!5981 (toList!1617 (map!6251 (v!31533 (underlying!6984 thiss!42540)))) lambda!94187))))

(declare-fun b!2483786 () Bool)

(declare-fun allKeysSameHashInMap!171 (ListLongMap!565 Hashable!3298) Bool)

(assert (=> b!2483786 (= e!1576862 (allKeysSameHashInMap!171 (map!6251 (v!31533 (underlying!6984 thiss!42540))) (hashF!5265 thiss!42540)))))

(assert (= (and d!713233 res!1051315) b!2483785))

(assert (= (and b!2483785 res!1051316) b!2483786))

(assert (=> d!713233 m!2851625))

(assert (=> b!2483785 m!2851539))

(declare-fun m!2851673 () Bool)

(assert (=> b!2483785 m!2851673))

(assert (=> b!2483786 m!2851539))

(assert (=> b!2483786 m!2851539))

(declare-fun m!2851675 () Bool)

(assert (=> b!2483786 m!2851675))

(assert (=> b!2483678 d!713233))

(declare-fun mapIsEmpty!15651 () Bool)

(declare-fun mapRes!15651 () Bool)

(assert (=> mapIsEmpty!15651 mapRes!15651))

(declare-fun e!1576867 () Bool)

(declare-fun tp_is_empty!12317 () Bool)

(declare-fun tp!795095 () Bool)

(declare-fun b!2483794 () Bool)

(assert (=> b!2483794 (= e!1576867 (and tp_is_empty!12315 tp_is_empty!12317 tp!795095))))

(declare-fun condMapEmpty!15651 () Bool)

(declare-fun mapDefault!15651 () List!29252)

(assert (=> mapNonEmpty!15648 (= condMapEmpty!15651 (= mapRest!15648 ((as const (Array (_ BitVec 32) List!29252)) mapDefault!15651)))))

(assert (=> mapNonEmpty!15648 (= tp!795083 (and e!1576867 mapRes!15651))))

(declare-fun mapNonEmpty!15651 () Bool)

(declare-fun tp!795094 () Bool)

(declare-fun e!1576868 () Bool)

(assert (=> mapNonEmpty!15651 (= mapRes!15651 (and tp!795094 e!1576868))))

(declare-fun mapKey!15651 () (_ BitVec 32))

(declare-fun mapValue!15651 () List!29252)

(declare-fun mapRest!15651 () (Array (_ BitVec 32) List!29252))

(assert (=> mapNonEmpty!15651 (= mapRest!15648 (store mapRest!15651 mapKey!15651 mapValue!15651))))

(declare-fun b!2483793 () Bool)

(declare-fun tp!795096 () Bool)

(assert (=> b!2483793 (= e!1576868 (and tp_is_empty!12315 tp_is_empty!12317 tp!795096))))

(assert (= (and mapNonEmpty!15648 condMapEmpty!15651) mapIsEmpty!15651))

(assert (= (and mapNonEmpty!15648 (not condMapEmpty!15651)) mapNonEmpty!15651))

(assert (= (and mapNonEmpty!15651 ((_ is Cons!29152) mapValue!15651)) b!2483793))

(assert (= (and mapNonEmpty!15648 ((_ is Cons!29152) mapDefault!15651)) b!2483794))

(declare-fun m!2851677 () Bool)

(assert (=> mapNonEmpty!15651 m!2851677))

(declare-fun tp!795099 () Bool)

(declare-fun e!1576871 () Bool)

(declare-fun b!2483799 () Bool)

(assert (=> b!2483799 (= e!1576871 (and tp_is_empty!12315 tp_is_empty!12317 tp!795099))))

(assert (=> mapNonEmpty!15648 (= tp!795081 e!1576871)))

(assert (= (and mapNonEmpty!15648 ((_ is Cons!29152) mapValue!15648)) b!2483799))

(declare-fun e!1576872 () Bool)

(declare-fun tp!795100 () Bool)

(declare-fun b!2483800 () Bool)

(assert (=> b!2483800 (= e!1576872 (and tp_is_empty!12315 tp_is_empty!12317 tp!795100))))

(assert (=> b!2483680 (= tp!795085 e!1576872)))

(assert (= (and b!2483680 ((_ is Cons!29152) (zeroValue!3646 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540))))))) b!2483800))

(declare-fun tp!795101 () Bool)

(declare-fun b!2483801 () Bool)

(declare-fun e!1576873 () Bool)

(assert (=> b!2483801 (= e!1576873 (and tp_is_empty!12315 tp_is_empty!12317 tp!795101))))

(assert (=> b!2483680 (= tp!795084 e!1576873)))

(assert (= (and b!2483680 ((_ is Cons!29152) (minValue!3646 (v!31532 (underlying!6983 (v!31533 (underlying!6984 thiss!42540))))))) b!2483801))

(declare-fun e!1576874 () Bool)

(declare-fun b!2483802 () Bool)

(declare-fun tp!795102 () Bool)

(assert (=> b!2483802 (= e!1576874 (and tp_is_empty!12315 tp_is_empty!12317 tp!795102))))

(assert (=> b!2483682 (= tp!795087 e!1576874)))

(assert (= (and b!2483682 ((_ is Cons!29152) mapDefault!15648)) b!2483802))

(declare-fun b_lambda!76211 () Bool)

(assert (= b_lambda!76207 (or (and b!2483680 b_free!72409) b_lambda!76211)))

(declare-fun b_lambda!76213 () Bool)

(assert (= b_lambda!76209 (or b!2483685 b_lambda!76213)))

(declare-fun bs!467654 () Bool)

(declare-fun d!713235 () Bool)

(assert (= bs!467654 (and d!713235 b!2483685)))

(assert (=> bs!467654 (= (dynLambda!12487 lambda!94175 (tuple2!28971 lt!889800 lt!889799)) (noDuplicateKeys!94 (_2!17027 (tuple2!28971 lt!889800 lt!889799))))))

(declare-fun m!2851679 () Bool)

(assert (=> bs!467654 m!2851679))

(assert (=> d!713225 d!713235))

(check-sat (not bs!467654) (not b!2483786) (not b!2483800) (not b!2483779) (not bm!152232) (not d!713225) (not b!2483735) (not b!2483772) (not b!2483717) (not b!2483801) (not d!713227) (not d!713217) (not d!713219) (not mapNonEmpty!15651) b_and!188677 (not d!713203) (not b!2483750) (not b!2483753) (not d!713231) (not d!713233) (not bm!152224) (not b!2483714) (not tb!140387) (not bm!152225) tp_is_empty!12317 (not bm!152233) (not d!713223) (not d!713209) (not bm!152227) (not b!2483711) (not b!2483723) tp_is_empty!12315 (not b!2483775) (not b!2483747) (not bm!152222) (not b_next!73115) (not b!2483708) (not b!2483715) (not bm!152223) (not b!2483799) (not d!713207) (not b!2483749) (not b!2483793) (not bm!152226) (not b!2483785) (not d!713229) b_and!188675 (not b!2483773) (not b_lambda!76211) (not d!713215) (not b!2483802) (not b!2483724) (not b_lambda!76213) (not b!2483778) (not b_next!73113) (not b!2483794))
(check-sat b_and!188675 b_and!188677 (not b_next!73113) (not b_next!73115))
